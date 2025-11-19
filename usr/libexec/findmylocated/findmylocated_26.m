uint64_t sub_100290AF0(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = type metadata accessor for MessagingCapability();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_100009518(&qword_1005B0B48, &type metadata accessor for MessagingCapability);
  v36 = a2;
  v13 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_100009518(&qword_1005B0B50, &type metadata accessor for MessagingCapability);
      v23 = dispatch thunk of static Equatable.== infix(_:_:)();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_100290DD0(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_100290DD0(uint64_t a1, unint64_t a2, char a3)
{
  v34 = a1;
  v6 = type metadata accessor for MessagingCapability();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v31 = v3;
  v32 = v7;
  if (v12 <= v11)
  {
    v13 = v11 + 1;
    if (a3)
    {
      sub_1002915BC(v13);
    }

    else
    {
      sub_1002912A0(v13);
    }

    v14 = *v3;
    v15 = *(*v3 + 40);
    sub_100009518(&qword_1005B0B48, &type metadata accessor for MessagingCapability);
    v16 = dispatch thunk of Hashable._rawHashValue(seed:)();
    v17 = v14 + 56;
    v33 = v14;
    v18 = -1 << *(v14 + 32);
    a2 = v16 & ~v18;
    if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v19 = ~v18;
      v22 = *(v7 + 16);
      v21 = v7 + 16;
      v20 = v22;
      v23 = *(v21 + 56);
      do
      {
        v20(v10, *(v33 + 48) + v23 * a2, v6);
        sub_100009518(&qword_1005B0B50, &type metadata accessor for MessagingCapability);
        v24 = dispatch thunk of static Equatable.== infix(_:_:)();
        (*(v21 - 8))(v10, v6);
        if (v24)
        {
          goto LABEL_14;
        }

        a2 = (a2 + 1) & v19;
      }

      while (((*(v17 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

  else if ((a3 & 1) == 0)
  {
    sub_100291068();
  }

  v25 = v32;
  v26 = *v31;
  *(v26 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v25 + 32))(*(v26 + 48) + *(v25 + 72) * a2, v34, v6);
  v28 = *(v26 + 16);
  v29 = __OFADD__(v28, 1);
  v30 = v28 + 1;
  if (!v29)
  {
    *(v26 + 16) = v30;
    return result;
  }

  __break(1u);
LABEL_14:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void *sub_100291068()
{
  v1 = v0;
  v2 = type metadata accessor for MessagingCapability();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10004B564(&qword_1005B0B40, &qword_1004D26C8);
  v7 = *v0;
  v8 = static _SetStorage.copy(original:)();
  v9 = v8;
  if (*(v7 + 16))
  {
    v23 = v1;
    result = (v8 + 56);
    v11 = v7 + 56;
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v11 + 8 * v12)
    {
      result = memmove(result, (v7 + 56), 8 * v12);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v7 + 56);
    v17 = (v14 + 63) >> 6;
    v24 = v3 + 32;
    for (i = v3 + 16; v16; result = (*(v3 + 32))(*(v9 + 48) + v21, v6, v2))
    {
      v18 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_14:
      v21 = *(v3 + 72) * (v18 | (v13 << 6));
      (*(v3 + 16))(v6, *(v7 + 48) + v21, v2);
    }

    v19 = v13;
    while (1)
    {
      v13 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v13 >= v17)
      {

        v1 = v23;
        goto LABEL_18;
      }

      v20 = *(v11 + 8 * v13);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v9;
  }

  return result;
}

uint64_t sub_1002912A0(uint64_t a1)
{
  v2 = v1;
  v37 = type metadata accessor for MessagingCapability();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  sub_10004B564(&qword_1005B0B40, &qword_1004D26C8);
  v10 = static _SetStorage.resize(original:capacity:move:)();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v36 + 72);
      (*(v36 + 16))(v7, *(result + 48) + v23 * (v20 | (v12 << 6)), v37);
      v24 = *(v10 + 40);
      sub_100009518(&qword_1005B0B48, &type metadata accessor for MessagingCapability);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v25 = -1 << *(v10 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v18 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v18 + 8 * v27);
          if (v31 != -1)
          {
            v19 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v33)(*(v10 + 48) + v19 * v23, v7, v37);
      ++*(v10 + 16);
      result = v34;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v2 = v32;
        goto LABEL_28;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
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
    *v2 = v10;
  }

  return result;
}

uint64_t sub_1002915BC(uint64_t a1)
{
  v2 = v1;
  v41 = type metadata accessor for MessagingCapability();
  v4 = *(v41 - 8);
  v5 = v4[8];
  __chkstk_darwin(v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  sub_10004B564(&qword_1005B0B40, &qword_1004D26C8);
  result = static _SetStorage.resize(original:capacity:move:)();
  v10 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v36 = v7;
    v11 = 0;
    v12 = (v7 + 56);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 56);
    v16 = (v13 + 63) >> 6;
    v39 = v4 + 4;
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v7 + 48) + v4[9] * (v19 | (v11 << 6));
      v23 = v4[4];
      v37 = v4[9];
      v38 = v23;
      v23(v40, v22, v41);
      v24 = v10;
      v25 = *(v10 + 40);
      sub_100009518(&qword_1005B0B48, &type metadata accessor for MessagingCapability);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v10 = v24;
      v26 = -1 << *(v24 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = v38(*(v24 + 48) + v18 * v37, v40, v41);
      ++*(v24 + 16);
      v7 = v36;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      bzero(v12, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
  }

  *v2 = v10;
  return result;
}

uint64_t sub_100291918(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
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

  return _swift_task_switch(sub_100291A18, 0, 0);
}

uint64_t sub_100291A18()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[7];
  v6 = type metadata accessor for ContinuousClock();
  v7 = sub_100009518(&qword_1005B0BC8, &type metadata accessor for ContinuousClock);
  dispatch thunk of Clock.now.getter();
  sub_100009518(&qword_1005AFFD0, &type metadata accessor for ContinuousClock.Instant);
  dispatch thunk of InstantProtocol.advanced(by:)();
  v8 = *(v4 + 8);
  v0[12] = v8;
  v0[13] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v1, v3);
  v9 = async function pointer to dispatch thunk of Clock.sleep(until:tolerance:)[1];
  v10 = swift_task_alloc();
  v0[14] = v10;
  *v10 = v0;
  v10[1] = sub_100291BA8;
  v11 = v0[11];
  v12 = v0[7];

  return dispatch thunk of Clock.sleep(until:tolerance:)(v11, v0 + 2, v6, v7);
}

uint64_t sub_100291BA8()
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

    return _swift_task_switch(sub_100291D64, 0, 0);
  }

  else
  {
    v9 = v7[10];
    v8 = v7[11];

    v10 = v7[1];

    return v10();
  }
}

uint64_t sub_100291D64()
{
  v2 = v0[10];
  v1 = v0[11];

  v3 = v0[1];
  v4 = v0[15];

  return v3();
}

uint64_t sub_100291DD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22[3] = &type metadata for IDSMessageValidityMetric;
  v22[4] = &off_10058C380;
  v22[0] = a1;
  v22[1] = a2;
  v22[2] = a3;

  if ((static SystemInfo.underTest.getter() & 1) == 0)
  {
    v3 = String._bridgeToObjectiveC()();
    sub_100011004(v22, v21);
    v4 = swift_allocObject();
    sub_100010BD4(v21, v4 + 16);
    v19 = sub_100293A74;
    v20 = v4;
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 1107296256;
    v17[2] = sub_1000119E4;
    v18 = &unk_100597D78;
    v5 = _Block_copy(v17);

    v6 = AnalyticsSendEventLazy();
    _Block_release(v5);

    if (!v6)
    {
      if (qword_1005A7E80 != -1)
      {
        swift_once();
      }

      v7 = type metadata accessor for Logger();
      sub_10000A6F0(v7, qword_1005DFA50);
      sub_100011004(v22, v17);
      v8 = Logger.logObject.getter();
      v9 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        *&v21[0] = v11;
        *v10 = 136446210;
        v12 = sub_100011AEC(v17, v18);
        v13 = *v12;
        v14 = v12[1];

        sub_100004984(v17);
        v15 = sub_10000D01C(v13, v14, v21);

        *(v10 + 4) = v15;
        _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s is not enabled in the current config", v10, 0xCu);
        sub_100004984(v11);
      }

      else
      {

        sub_100004984(v17);
      }
    }
  }

  return sub_100004984(v22);
}

_OWORD *sub_10029205C(char a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  LOBYTE(v24) = a1;
  v25 = &type metadata for Bool;
  v9 = *a5;
  v11 = sub_1000110D8(a2, a3);
  v12 = v9[2];
  v13 = (v10 & 1) == 0;
  v14 = v12 + v13;
  if (__OFADD__(v12, v13))
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = v9[3];
  if (v16 >= v14 && (a4 & 1) != 0)
  {
LABEL_7:
    v17 = *a5;
    if (v15)
    {
LABEL_8:
      v18 = (v17[7] + 32 * v11);
      sub_100004984(v18);
      return sub_10004B064(&v24, v18);
    }

    goto LABEL_11;
  }

  if (v16 >= v14 && (a4 & 1) == 0)
  {
    sub_10020304C();
    goto LABEL_7;
  }

  sub_10022D0EC(v14, a4 & 1);
  v20 = *a5;
  v21 = sub_1000110D8(a2, a3);
  if ((v15 & 1) != (v22 & 1))
  {
LABEL_14:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v11 = v21;
  v17 = *a5;
  if (v15)
  {
    goto LABEL_8;
  }

LABEL_11:
  v23 = sub_1000BAF2C(&v24, &type metadata for Bool);
  sub_1002921B4(v11, a2, a3, *v23, v17);

  return sub_100004984(&v24);
}

_OWORD *sub_1002921B4(unint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  LOBYTE(v11) = a4;
  v12 = &type metadata for Bool;
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_10004B064(&v11, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

id sub_100292238(uint64_t a1)
{
  v2 = type metadata accessor for LocalizationUtility.Table();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SecureLocationsStewiePublishReminderNotification(0);
  v8 = v7 - 8;
  v9 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1002939A8(a1, v11, type metadata accessor for SecureLocationsStewiePublishReminderNotification);
  v12 = [objc_allocWithZone(UNMutableNotificationContent) init];
  [v12 setDefaultActionURL:0];
  v13 = [objc_opt_self() defaultCriticalSound];
  [v12 setSound:v13];

  v14 = &v11[*(v8 + 28)];
  LocalUserNotificationCategory.rawValue.getter();
  v15 = String._bridgeToObjectiveC()();

  [v12 setCategoryIdentifier:v15];

  (*(v3 + 104))(v6, enum case for LocalizationUtility.Table.default(_:), v2);
  static LocalizationUtility.localizedString(key:table:)();
  (*(v3 + 8))(v6, v2);
  v16 = String._bridgeToObjectiveC()();

  [v12 setTitle:v16];

  sub_10011DAA4();
  v17 = String._bridgeToObjectiveC()();

  [v12 setBody:v17];

  [v12 setInterruptionLevel:2];
  v18 = sub_100207B7C(_swiftEmptyArrayStorage);
  v27 = &type metadata for Bool;
  LOBYTE(v26) = 1;
  sub_10004B064(&v26, v24);
  LOBYTE(v17) = swift_isUniquelyReferenced_nonNull_native();
  v23 = v18;
  v19 = sub_1000BAF2C(v24, v25);
  sub_10029205C(*v19, 0xD000000000000023, 0x80000001004E6670, v17, &v23);
  sub_100004984(v24);
  sub_10028F11C(v23);

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v12 setUserInfo:isa];

  sub_100293A10(v11, type metadata accessor for SecureLocationsStewiePublishReminderNotification);
  [v12 setShouldIgnoreDoNotDisturb:0];
  return v12;
}

id sub_1002925EC(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v7 = a2(0);
  v8 = (v7 - 8);
  v9 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v11 = &v27 - v10;
  sub_1002939A8(a1, &v27 - v10, a3);
  v12 = [objc_allocWithZone(UNMutableNotificationContent) init];
  [v12 setDefaultActionURL:0];
  v13 = [objc_opt_self() defaultSound];
  [v12 setSound:v13];

  LocalUserNotificationCategory.rawValue.getter();
  v14 = String._bridgeToObjectiveC()();

  [v12 setCategoryIdentifier:v14];

  v15 = &v11[v8[10]];
  v16 = *v15;
  v17 = *(v15 + 1);
  v18 = String._bridgeToObjectiveC()();
  [v12 setTitle:v18];

  v19 = &v11[v8[11]];
  v20 = *v19;
  v21 = *(v19 + 1);
  v22 = String._bridgeToObjectiveC()();
  [v12 setBody:v22];

  [v12 setInterruptionLevel:2];
  v23 = *&v11[v8[12]];
  v32 = &type metadata for Bool;
  LOBYTE(v31) = 1;
  sub_10004B064(&v31, v29);

  LOBYTE(v22) = swift_isUniquelyReferenced_nonNull_native();
  v28 = v23;
  v24 = sub_1000BAF2C(v29, v30);
  sub_10029205C(*v24, 0xD000000000000023, 0x80000001004E6670, v22, &v28);
  sub_100004984(v29);
  sub_10028F11C(v28);

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v12 setUserInfo:isa];

  sub_100293A10(v11, a4);
  [v12 setShouldIgnoreDoNotDisturb:0];
  return v12;
}

id sub_100292884(uint64_t a1)
{
  v2 = type metadata accessor for LocalizationUtility.Table();
  v3 = *(v2 - 8);
  v4 = v3[8];
  __chkstk_darwin(v2);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10004B564(&qword_1005A9DB8, &unk_1004CC1D0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v35 - v9;
  v11 = type metadata accessor for LocationSharingReminderNotification();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1002939A8(a1, v14, type metadata accessor for LocationSharingReminderNotification);
  v15 = [objc_allocWithZone(UNMutableNotificationContent) init];
  URL.init(string:)();
  v16 = type metadata accessor for URL();
  v17 = *(v16 - 8);
  v19 = 0;
  if ((*(v17 + 48))(v10, 1, v16) != 1)
  {
    URL._bridgeToObjectiveC()(v18);
    v19 = v20;
    (*(v17 + 8))(v10, v16);
  }

  [v15 setDefaultActionURL:v19];

  v21 = [objc_opt_self() defaultCriticalSound];
  [v15 setSound:v21];

  v37 = v11;
  v22 = &v14[*(v11 + 20)];
  LocalUserNotificationCategory.rawValue.getter();
  v23 = String._bridgeToObjectiveC()();

  [v15 setCategoryIdentifier:v23];

  v24 = enum case for LocalizationUtility.Table.default(_:);
  v36 = v14;
  v25 = v3[13];
  v25(v6, enum case for LocalizationUtility.Table.default(_:), v2);
  static LocalizationUtility.localizedString(key:table:)();
  v26 = v3[1];
  v26(v6, v2);
  v27 = String._bridgeToObjectiveC()();

  [v15 setTitle:v27];

  v25(v6, v24, v2);
  static LocalizationUtility.localizedString(key:table:)();
  v26(v6, v2);
  v28 = String._bridgeToObjectiveC()();

  [v15 setBody:v28];

  [v15 setInterruptionLevel:2];
  v29 = v36;
  v30 = *&v36[*(v37 + 28)];
  v42 = &type metadata for Bool;
  LOBYTE(v41) = 1;
  sub_10004B064(&v41, v39);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v38 = v30;
  v32 = sub_1000BAF2C(v39, v40);
  sub_10029205C(*v32, 0xD000000000000023, 0x80000001004E6670, isUniquelyReferenced_nonNull_native, &v38);
  sub_100004984(v39);
  sub_10028F11C(v38);

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v15 setUserInfo:isa];

  sub_100293A10(v29, type metadata accessor for LocationSharingReminderNotification);
  [v15 setShouldIgnoreDoNotDisturb:0];
  return v15;
}

id sub_100292D94(uint64_t a1)
{
  v2 = type metadata accessor for Handle();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for RedStripeNotification();
  v8 = v7 - 8;
  v9 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1002939A8(a1, v11, type metadata accessor for RedStripeNotification);
  v12 = [objc_allocWithZone(UNMutableNotificationContent) init];
  [v12 setDefaultActionURL:0];
  v13 = [objc_opt_self() defaultCriticalSound];
  [v12 setSound:v13];

  v14 = &v11[*(v8 + 28)];
  LocalUserNotificationCategory.rawValue.getter();
  v15 = String._bridgeToObjectiveC()();

  [v12 setCategoryIdentifier:v15];

  sub_1004563C8();
  v16 = String._bridgeToObjectiveC()();

  [v12 setTitle:v16];

  sub_100456778();
  v17 = String._bridgeToObjectiveC()();

  [v12 setBody:v17];

  [v12 setInterruptionLevel:2];
  sub_10004B564(&qword_1005B0BC0, &qword_1004D2868);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004C1900;
  *(inited + 32) = static LocalUserNotificationConstants.HandleIdentifier.getter();
  *(inited + 40) = v19;
  v20 = &v11[*(v8 + 40)];
  Friend.handle.getter();
  v21 = Handle.identifier.getter();
  v23 = v22;
  (*(v3 + 8))(v6, v2);
  *(inited + 72) = &type metadata for String;
  *(inited + 48) = v21;
  *(inited + 56) = v23;
  v24 = sub_100207B7C(inited);
  swift_setDeallocating();
  sub_100002CE0(inited + 32, &qword_1005B0088, &qword_1004D38F0);
  v33 = &type metadata for Bool;
  LOBYTE(v32) = 1;
  sub_10004B064(&v32, v30);
  LOBYTE(v2) = swift_isUniquelyReferenced_nonNull_native();
  v29 = v24;
  v25 = sub_1000BAF2C(v30, v31);
  sub_10029205C(*v25, 0xD000000000000023, 0x80000001004E6670, v2, &v29);
  sub_100004984(v30);
  sub_10028F11C(v29);

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v12 setUserInfo:isa];

  sub_100293A10(v11, type metadata accessor for RedStripeNotification);
  [v12 setShouldIgnoreDoNotDisturb:1];
  return v12;
}

uint64_t sub_100293190(uint64_t a1)
{
  v2 = type metadata accessor for MessagingCapability();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v17 - v8;
  v10 = *(a1 + 16);
  sub_100009518(&qword_1005B0B48, &type metadata accessor for MessagingCapability);
  result = Set.init(minimumCapacity:)();
  v18 = result;
  if (v10)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v9, v15, v2);
      sub_100290AF0(v7, v9);
      (*(v12 - 8))(v7, v2);
      v15 += v16;
      --v10;
    }

    while (v10);
    return v18;
  }

  return result;
}

uint64_t sub_10029333C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10007C4DC;

  return sub_10007A554(a1, v1);
}

uint64_t sub_1002933D4(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for Fence.TriggerID() - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1[5];
  v11 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_100003690;

  return sub_10028A184(a1, v7, v8, v9, v10, v1 + v6);
}

uint64_t sub_10029350C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100293574(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for Fence.ID() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for Fence.TriggerPosition() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(sub_10004B564(&qword_1005A9148, &qword_1004D2370) - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = *(v1 + 16);
  v14 = *(v1 + ((*(v11 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8));
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_10000368C;

  return sub_10027C878(a1, v13, v1 + v6, v1 + v9, v1 + v12);
}

uint64_t sub_100293760()
{
  v1 = type metadata accessor for Fence.ID();
  v2 = *(v1 - 8);
  v18 = *(v2 + 80);
  v3 = (v18 + 24) & ~v18;
  v4 = *(v2 + 64);
  v5 = type metadata accessor for Fence.TriggerPosition();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (v3 + v4 + v7) & ~v7;
  v9 = *(v6 + 64);
  v10 = *(sub_10004B564(&qword_1005A9148, &qword_1004D2370) - 8);
  v11 = *(v10 + 80);
  v12 = (v8 + v9 + v11) & ~v11;
  v17 = *(v10 + 64);
  v13 = *(v0 + 16);

  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v8, v5);
  v14 = type metadata accessor for Fence.AcceptanceStatus();
  v15 = *(v14 - 8);
  if (!(*(v15 + 48))(v0 + v12, 1, v14))
  {
    (*(v15 + 8))(v0 + v12, v14);
  }

  return _swift_deallocObject(v0, ((v17 + v12 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v18 | v7 | v11 | 7);
}

uint64_t sub_1002939A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100293A10(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100293A88()
{
  v1[14] = v0;
  v1[15] = *v0;
  v2 = *(*(sub_10004B564(&qword_1005A9690, &qword_1004C2A00) - 8) + 64) + 15;
  v1[16] = swift_task_alloc();
  v3 = swift_task_alloc();
  v1[17] = v3;
  *v3 = v1;
  v3[1] = sub_100293B78;

  return sub_100296618();
}

uint64_t sub_100293B78()
{
  v1 = *v0;
  v2 = *(*v0 + 136);
  v6 = *v0;

  v3 = async function pointer to daemon.getter[1];
  v4 = swift_task_alloc();
  *(v1 + 144) = v4;
  *v4 = v6;
  v4[1] = sub_100293CA4;

  return daemon.getter();
}

uint64_t sub_100293CA4(uint64_t a1)
{
  v3 = *(*v1 + 144);
  v7 = *v1;
  *(*v1 + 152) = a1;

  type metadata accessor for Daemon();
  sub_1002AB19C(&qword_1005AB4E0, &type metadata accessor for Daemon);
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100293DFC, v5, v4);
}

uint64_t sub_100293DFC()
{
  v1 = v0[19];
  v2 = v0[14];
  v0[20] = Daemon.xpcAlarmEventHandler.getter();

  return _swift_task_switch(sub_100293E74, v2, 0);
}

uint64_t sub_100293E74()
{
  v1 = v0[20];
  if (v1)
  {
    v2 = v0[15];
    v3 = v0[16];
    v4 = v0[14];
    v5 = type metadata accessor for TaskPriority();
    v6 = *(*(v5 - 8) + 56);
    v6(v3, 1, 1, v5);
    v7 = swift_allocObject();
    swift_weakInit();
    v8 = swift_allocObject();
    v8[2] = 0;
    v8[3] = 0;
    v8[4] = v7;
    v8[5] = v1;
    v8[6] = v2;

    v9 = sub_1001D7F30(0, 0, v3, &unk_1004D28E8, v8);
    v10 = *(v4 + OBJC_IVAR____TtC13findmylocated12FenceService_xpcAlarmHandlerTask);
    *(v4 + OBJC_IVAR____TtC13findmylocated12FenceService_xpcAlarmHandlerTask) = v9;

    v6(v3, 1, 1, v5);
    v11 = swift_allocObject();
    swift_weakInit();
    v12 = swift_allocObject();
    v12[2] = 0;
    v12[3] = 0;
    v12[4] = v11;
    v13 = sub_1001D7F30(0, 0, v3, &unk_1004D28F8, v12);
    v14 = *(v4 + OBJC_IVAR____TtC13findmylocated12FenceService_darwinSignificantTimeChangeTask);
    *(v4 + OBJC_IVAR____TtC13findmylocated12FenceService_darwinSignificantTimeChangeTask) = v13;

    v15 = [objc_opt_self() defaultCenter];
    v0[21] = v15;
    v16 = swift_allocObject();
    swift_weakInit();
    v0[6] = sub_1002AA984;
    v0[7] = v16;
    v0[2] = _NSConcreteStackBlock;
    v0[3] = 1107296256;
    v0[4] = sub_100493660;
    v0[5] = &unk_100597E40;
    v17 = _Block_copy(v0 + 2);
    v18 = v0[7];

    v19 = [v15 addObserverForName:NSSystemClockDidChangeNotification object:0 queue:0 usingBlock:v17];
    _Block_release(v17);
    v20 = *(v4 + OBJC_IVAR____TtC13findmylocated12FenceService_systemClockDidChangeObserver);
    *(v4 + OBJC_IVAR____TtC13findmylocated12FenceService_systemClockDidChangeObserver) = v19;
    swift_unknownObjectRelease();
    v21 = swift_allocObject();
    swift_weakInit();
    v0[12] = sub_1002AA9BC;
    v0[13] = v21;
    v0[8] = _NSConcreteStackBlock;
    v0[9] = 1107296256;
    v0[10] = sub_100493660;
    v0[11] = &unk_100597E68;
    v22 = _Block_copy(v0 + 8);
    v23 = v0[13];

    v24 = [v15 addObserverForName:NSSystemTimeZoneDidChangeNotification object:0 queue:0 usingBlock:v22];
    _Block_release(v22);
    v25 = *(v4 + OBJC_IVAR____TtC13findmylocated12FenceService_systemTimeZoneDidChangeObserver);
    *(v4 + OBJC_IVAR____TtC13findmylocated12FenceService_systemTimeZoneDidChangeObserver) = v24;
    swift_unknownObjectRelease();
    sub_10002B3C0(0, 3, 0);
    v27 = _swiftEmptyArrayStorage[2];
    v26 = _swiftEmptyArrayStorage[3];
    v28 = v26 >> 1;
    v29 = v27 + 1;
    if (v26 >> 1 <= v27)
    {
      sub_10002B3C0((v26 > 1), v27 + 1, 1);
      v26 = _swiftEmptyArrayStorage[3];
      v28 = v26 >> 1;
    }

    _swiftEmptyArrayStorage[2] = v29;
    v30 = &_swiftEmptyArrayStorage[2 * v27];
    v30[4] = 0xD000000000000031;
    v30[5] = 0x80000001004DE440;
    v31 = v27 + 2;
    if (v28 <= v29)
    {
      sub_10002B3C0((v26 > 1), v31, 1);
    }

    _swiftEmptyArrayStorage[2] = v31;
    v32 = &_swiftEmptyArrayStorage[2 * v29];
    v32[4] = 0xD00000000000002FLL;
    v32[5] = 0x80000001004DE480;
    v34 = _swiftEmptyArrayStorage[2];
    v33 = _swiftEmptyArrayStorage[3];
    if (v34 >= v33 >> 1)
    {
      sub_10002B3C0((v33 > 1), v34 + 1, 1);
    }

    v0[22] = _swiftEmptyArrayStorage;
    _swiftEmptyArrayStorage[2] = v34 + 1;
    v35 = &_swiftEmptyArrayStorage[2 * v34];
    v35[4] = 0xD00000000000002ELL;
    v35[5] = 0x80000001004DE4B0;
    v36 = *(&async function pointer to dispatch thunk of XPCAlarmEventHandler.addEventsToProcess(with:) + 1);
    v45 = (&async function pointer to dispatch thunk of XPCAlarmEventHandler.addEventsToProcess(with:) + async function pointer to dispatch thunk of XPCAlarmEventHandler.addEventsToProcess(with:));
    v37 = swift_task_alloc();
    v0[23] = v37;
    *v37 = v0;
    v37[1] = sub_1002944DC;

    return v45(_swiftEmptyArrayStorage);
  }

  else
  {
    if (qword_1005A80E8 != -1)
    {
      swift_once();
    }

    v39 = type metadata accessor for Logger();
    sub_10000A6F0(v39, qword_1005DFF88);
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&_mh_execute_header, v40, v41, "Missing XPC alarm event handler", v42, 2u);
    }

    v43 = v0[16];

    v44 = v0[1];

    return v44();
  }
}

uint64_t sub_1002944DC()
{
  v1 = *(*v0 + 184);
  v2 = *(*v0 + 176);
  v3 = *(*v0 + 112);
  v5 = *v0;

  return _swift_task_switch(sub_100294608, v3, 0);
}

uint64_t sub_100294608()
{
  v1 = *(v0 + 160);

  v2 = *(v0 + 128);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100294678()
{
  v1 = *(*v0 + 352);
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 80);
  v4 = *(*v0 + 72);
  v5 = *(*v0 + 32);
  v7 = *v0;

  (*(v3 + 8))(v2, v4);

  return _swift_task_switch(sub_1002947E4, v5, 0);
}

uint64_t sub_1002947E4()
{
  v2 = v0[42];
  v1 = v0[43];
  v3 = v0[41];
  v4 = v0[37];
  v5 = v0[29];
  v1(v0[32], v5);
  v1(v4, v5);
  sub_100002CE0(v3, &unk_1005AE5B0, &qword_1004C32F0);
  v7 = v0[40];
  v6 = v0[41];
  v8 = v0[38];
  v9 = v0[39];
  v11 = v0[36];
  v10 = v0[37];
  v13 = v0[34];
  v12 = v0[35];
  v15 = v0[32];
  v14 = v0[33];
  v18 = v0[31];
  v19 = v0[28];
  v20 = v0[27];
  v21 = v0[24];
  v22 = v0[23];
  v23 = v0[20];
  v24 = v0[17];
  v25 = v0[14];
  v26 = v0[11];
  v27 = v0[8];
  v28 = v0[7];

  v16 = v0[1];

  return v16();
}

uint64_t sub_10029499C()
{
  v1 = *(*v0 + 560);
  v2 = *(*v0 + 56);
  v4 = *v0;

  return _swift_task_switch(sub_100294AAC, v2, 0);
}

uint64_t sub_100294AAC()
{
  v253 = v0;
  v1 = *(v0 + 552);
  v2 = *(v0 + 544);
  v3 = *(v0 + 344);
  v4 = *(v0 + 312);
  v5 = *(v0 + 320) + 8;
  (*(v0 + 536))(*(v0 + 416), *(v0 + 352));
  v1(v3, v4);
  while (1)
  {
    v6 = *(v0 + 528) + 1;
    if (v6 == *(v0 + 504))
    {
      break;
    }

    *(v0 + 528) = v6;
    v7 = *(v0 + 596);
    v9 = *(v0 + 296);
    v8 = *(v0 + 304);
    v10 = *(v0 + 280);
    v11 = *(v0 + 288);
    v12 = *(v0 + 320) + 16;
    (*(v0 + 520))(*(v0 + 344), *(v0 + 48) + ((*(v0 + 592) + 32) & ~*(v0 + 592)) + *(v0 + 512) * v6, *(v0 + 312));
    Fence.acceptanceStatus.getter();
    (*(v11 + 104))(v9, v7, v10);
    v13 = static Fence.AcceptanceStatus.== infix(_:_:)();
    v14 = *(v11 + 8);
    v14(v9, v10);
    v14(v8, v10);
    if ((v13 & 1) == 0)
    {
      goto LABEL_2;
    }

    v15 = *(v0 + 600);
    v16 = *(v0 + 344);
    v18 = *(v0 + 264);
    v17 = *(v0 + 272);
    v19 = *(v0 + 248);
    v20 = *(v0 + 256);
    Fence.findee.getter();
    (*(v20 + 104))(v18, v15, v19);
    LOBYTE(v16) = static Fence.Participant.== infix(_:_:)();
    v21 = *(v20 + 8);
    v21(v18, v19);
    v21(v17, v19);
    if (v16)
    {
      v22 = *(v0 + 608);
      v23 = *(v0 + 604);
      v24 = *(v0 + 344);
      v26 = *(v0 + 200);
      v25 = *(v0 + 208);
      v27 = *(v0 + 192);
      Fence.variant.getter();
      v28 = (*(v26 + 88))(v25, v27);
      if (v28 == v23 || v28 == v22)
      {
        v44 = *(v0 + 200);
        v43 = *(v0 + 208);
        v45 = *(v0 + 192);
        (*(*(v0 + 320) + 8))(*(v0 + 344), *(v0 + 312));
        (*(v44 + 8))(v43, v45);
      }

      else
      {
        if (v28 != *(v0 + 612))
        {
          return _assertionFailure(_:_:file:line:flags:)();
        }

        v214 = *(v0 + 616);
        v239 = *(v0 + 424);
        v245 = *(v0 + 416);
        v211 = *(v0 + 408);
        v29 = *(v0 + 360);
        v233 = *(v0 + 352);
        v209 = *(v0 + 344);
        v31 = *(v0 + 232);
        v30 = *(v0 + 240);
        v32 = *(v0 + 216);
        v33 = *(v0 + 224);
        v34 = *(v0 + 208);
        v205 = *(v0 + 184);
        v220 = *(v0 + 176);
        v226 = *(v0 + 168);
        v35 = *(v0 + 152);
        v36 = *(v0 + 160);
        v207 = *(v0 + 144);
        (*(*(v0 + 200) + 96))(v34, *(v0 + 192));
        v217 = v30;
        (*(v33 + 32))(v30, v34, v32);
        (*(v33 + 16))(v31, v30, v32);
        Fence.Schedule.Matcher.init(schedule:)();
        v37 = v211;
        Fence.updatedAt.getter();
        (*(v35 + 104))(v36, v214, v207);
        Fence.Schedule.Matcher.nextStartDate(from:direction:)();
        (*(v35 + 8))(v36, v207);
        v38 = *(v29 + 8);
        *(v0 + 536) = v38;
        *(v0 + 544) = (v29 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v212 = v38;
        v38(v37, v233);
        (*(v220 + 8))(v205, v226);
        (*(v33 + 8))(v217, v32);
        sub_1002AB19C(&qword_1005B0BF0, &type metadata accessor for Date);
        if (dispatch thunk of static Comparable.< infix(_:_:)())
        {
          if (qword_1005A80E8 != -1)
          {
            swift_once();
          }

          v140 = *(v0 + 520);
          v141 = *(v0 + 416);
          v251 = *(v0 + 392);
          v143 = *(v0 + 352);
          v142 = *(v0 + 360);
          v145 = *(v0 + 336);
          v144 = *(v0 + 344);
          v146 = *(v0 + 312);
          v147 = type metadata accessor for Logger();
          sub_10000A6F0(v147, qword_1005DFF88);
          v140(v145, v144, v146);
          (*(v142 + 16))(v251, v141, v143);
          v148 = Logger.logObject.getter();
          v149 = static os_log_type_t.default.getter();
          v150 = os_log_type_enabled(v148, v149);
          v151 = *(v0 + 392);
          v152 = *(v0 + 352);
          v153 = *(v0 + 336);
          v155 = *(v0 + 312);
          v154 = *(v0 + 320);
          if (v150)
          {
            v238 = *(v0 + 352);
            v224 = *(v0 + 312);
            v157 = *(v0 + 128);
            v156 = *(v0 + 136);
            v158 = *(v0 + 120);
            v244 = v148;
            v159 = swift_slowAlloc();
            v252 = swift_slowAlloc();
            *v159 = 136446466;
            v231 = v149;
            Fence.id.getter();
            sub_1002AB19C(&qword_1005AE800, &type metadata accessor for Fence.ID);
            v160 = dispatch thunk of CustomStringConvertible.description.getter();
            v162 = v161;
            (*(v157 + 8))(v156, v158);
            v163 = *(v154 + 8);
            v163(v153, v224);
            v164 = sub_10000D01C(v160, v162, &v252);

            *(v159 + 4) = v164;
            *(v159 + 12) = 2082;
            v165 = Date.localISO8601.getter();
            v167 = v166;
            v212(v151, v238);
            v168 = sub_10000D01C(v165, v167, &v252);

            *(v159 + 14) = v168;
            _os_log_impl(&_mh_execute_header, v244, v231, "Invite date for %{public}s is in the past (%{public}s). Triggering the fence invitation.", v159, 0x16u);
            swift_arrayDestroy();
          }

          else
          {

            v212(v151, v152);
            v163 = *(v154 + 8);
            v163(v153, v155);
          }

          *(v0 + 552) = v163;
          v194 = swift_task_alloc();
          *(v0 + 560) = v194;
          *v194 = v0;
          v194[1] = sub_10029499C;
          v195 = *(v0 + 424);
          v196 = *(v0 + 344);
          v197 = *(v0 + 56);

          return sub_1002A9B6C(v196, v195);
        }

        v39 = *(v0 + 456);
        v40 = *(v0 + 352);
        v41 = *(v0 + 360);
        sub_100005F04(*(v0 + 464), v39, &unk_1005AE5B0, &qword_1004C32F0);
        v42 = *(v41 + 48);
        if (v42(v39, 1, v40) == 1)
        {
          sub_100002CE0(*(v0 + 456), &unk_1005AE5B0, &qword_1004C32F0);
        }

        else
        {
          v46 = *(v0 + 416);
          v47 = *(v0 + 400);
          v48 = *(v0 + 352);
          v49 = *(*(v0 + 360) + 32);
          v49(v47, *(v0 + 456), v48);
          LOBYTE(v46) = static Date.< infix(_:_:)();
          v212(v47, v48);
          if (v46)
          {
            v240 = *(v0 + 488);
            v246 = *(v0 + 496);
            v221 = *(v0 + 480);
            v218 = *(v0 + 472);
            v50 = *(v0 + 464);
            v51 = *(v0 + 432);
            v52 = *(v0 + 416);
            v53 = *(v0 + 352);
            v54 = *(v0 + 320);
            v227 = *(v0 + 312);
            v234 = *(v0 + 344);
            sub_100002CE0(v50, &unk_1005AE5B0, &qword_1004C32F0);
            v49(v50, v52, v53);
            v218(v50, 0, 1, v53);
            sub_100002CE0(v51, &qword_1005B09D0, &unk_1004D2380);
            (*(v54 + 32))(v51, v234, v227);
            v55 = v51;
            v56 = v227;
            goto LABEL_17;
          }
        }

        v57 = *(v0 + 448);
        v58 = *(v0 + 352);
        sub_100005F04(*(v0 + 464), v57, &unk_1005AE5B0, &qword_1004C32F0);
        if (v42(v57, 1, v58) == 1)
        {
          v240 = *(v0 + 488);
          v247 = *(v0 + 496);
          v59 = *(v0 + 472);
          v60 = *(v0 + 464);
          v61 = *(v0 + 448);
          v62 = *(v0 + 432);
          v63 = *(v0 + 416);
          v64 = *(v0 + 352);
          v65 = *(v0 + 360);
          v228 = *(v0 + 480);
          v235 = *(v0 + 344);
          v66 = *(v0 + 312);
          v67 = *(v0 + 320);
          sub_100002CE0(v60, &unk_1005AE5B0, &qword_1004C32F0);
          sub_100002CE0(v61, &unk_1005AE5B0, &qword_1004C32F0);
          (*(v65 + 32))(v60, v63, v64);
          v59(v60, 0, 1, v64);
          sub_100002CE0(v62, &qword_1005B09D0, &unk_1004D2380);
          (*(v67 + 32))(v62, v235, v66);
          v55 = v62;
          v56 = v66;
LABEL_17:
          v240(v55, 0, 1, v56);
        }

        else
        {
          v68 = *(v0 + 448);
          v69 = *(v0 + 344);
          v70 = *(v0 + 312);
          v71 = *(v0 + 320);
          v212(*(v0 + 416), *(v0 + 352));
          (*(v71 + 8))(v69, v70);
          sub_100002CE0(v68, &unk_1005AE5B0, &qword_1004C32F0);
        }
      }
    }

    else
    {
LABEL_2:
      (*(*(v0 + 320) + 8))(*(v0 + 344), *(v0 + 312));
    }
  }

  v72 = *(v0 + 440);
  v73 = *(v0 + 352);
  v74 = *(v0 + 360);
  sub_100005F04(*(v0 + 464), v72, &unk_1005AE5B0, &qword_1004C32F0);
  v75 = (*(v74 + 48))(v72, 1, v73);
  v76 = *(v0 + 440);
  if (v75 == 1)
  {
    sub_100002CE0(*(v0 + 440), &unk_1005AE5B0, &qword_1004C32F0);
    if (qword_1005A80E8 != -1)
    {
      swift_once();
    }

    v77 = type metadata accessor for Logger();
    sub_10000A6F0(v77, qword_1005DFF88);
    v78 = Logger.logObject.getter();
    v79 = static os_log_type_t.debug.getter();
    v80 = os_log_type_enabled(v78, v79);
    v81 = *(v0 + 464);
    v83 = *(v0 + 424);
    v82 = *(v0 + 432);
    v84 = *(v0 + 352);
    v85 = *(v0 + 360);
    if (v80)
    {
      v86 = swift_slowAlloc();
      *v86 = 0;
      _os_log_impl(&_mh_execute_header, v78, v79, "No fence to set invite timer for", v86, 2u);
    }

    (*(v85 + 8))(v83, v84);
    sub_100002CE0(v81, &unk_1005AE5B0, &qword_1004C32F0);
    v87 = v82;
    goto LABEL_25;
  }

  v100 = *(v0 + 408);
  v101 = *(v0 + 352);
  v102 = *(v0 + 360);
  (*(v102 + 32))(*(v0 + 384), *(v0 + 440), v101);
  static Date.distantFuture.getter();
  sub_1002AB19C(&qword_1005AE5D0, &type metadata accessor for Date);
  v103 = dispatch thunk of static Equatable.== infix(_:_:)();
  v104 = *(v102 + 8);
  *(v0 + 568) = v104;
  *(v0 + 576) = (v102 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v104(v100, v101);
  if (v103)
  {
    if (qword_1005A80E8 != -1)
    {
      swift_once();
    }

    v105 = *(v0 + 384);
    v107 = *(v0 + 360);
    v106 = *(v0 + 368);
    v108 = *(v0 + 352);
    v109 = type metadata accessor for Logger();
    sub_10000A6F0(v109, qword_1005DFF88);
    (*(v107 + 16))(v106, v105, v108);
    v110 = Logger.logObject.getter();
    v111 = static os_log_type_t.error.getter();
    v112 = os_log_type_enabled(v110, v111);
    v113 = *(v0 + 464);
    v115 = *(v0 + 424);
    v114 = *(v0 + 432);
    v249 = *(v0 + 384);
    v116 = *(v0 + 368);
    v117 = *(v0 + 352);
    if (v112)
    {
      v223 = v111;
      v118 = swift_slowAlloc();
      v242 = v114;
      v119 = swift_slowAlloc();
      v252 = v119;
      *v118 = 136315138;
      v230 = v115;
      v237 = v113;
      v120 = Date.localISO8601.getter();
      v122 = v121;
      v104(v116, v117);
      v123 = sub_10000D01C(v120, v122, &v252);

      *(v118 + 4) = v123;
      _os_log_impl(&_mh_execute_header, v110, v223, "Invalid invite timer date: %s", v118, 0xCu);
      sub_100004984(v119);

      v104(v249, v117);
      v104(v230, v117);
      sub_100002CE0(v237, &unk_1005AE5B0, &qword_1004C32F0);
      v87 = v242;
    }

    else
    {

      v104(v116, v117);
      v104(v249, v117);
      v104(v115, v117);
      sub_100002CE0(v113, &unk_1005AE5B0, &qword_1004C32F0);
      v87 = v114;
    }

LABEL_25:
    sub_100002CE0(v87, &qword_1005B09D0, &unk_1004D2380);
    v89 = *(v0 + 456);
    v88 = *(v0 + 464);
    v91 = *(v0 + 440);
    v90 = *(v0 + 448);
    v93 = *(v0 + 424);
    v92 = *(v0 + 432);
    v95 = *(v0 + 408);
    v94 = *(v0 + 416);
    v96 = *(v0 + 392);
    v97 = *(v0 + 400);
    v198 = *(v0 + 384);
    v199 = *(v0 + 376);
    v200 = *(v0 + 368);
    v201 = *(v0 + 344);
    v202 = *(v0 + 336);
    v203 = *(v0 + 328);
    v204 = *(v0 + 304);
    v206 = *(v0 + 296);
    v208 = *(v0 + 272);
    v210 = *(v0 + 264);
    v213 = *(v0 + 240);
    v215 = *(v0 + 232);
    v216 = *(v0 + 208);
    v219 = *(v0 + 184);
    v222 = *(v0 + 160);
    v229 = *(v0 + 136);
    v236 = *(v0 + 112);
    v241 = *(v0 + 88);
    v248 = *(v0 + 80);

    v98 = *(v0 + 8);

    return v98();
  }

  else
  {
    if (qword_1005A80E8 != -1)
    {
      swift_once();
    }

    v124 = *(v0 + 376);
    v125 = *(v0 + 384);
    v126 = *(v0 + 352);
    v127 = *(v0 + 360);
    v128 = type metadata accessor for Logger();
    sub_10000A6F0(v128, qword_1005DFF88);
    v129 = *(v127 + 16);
    v129(v124, v125, v126);
    v130 = Logger.logObject.getter();
    v131 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v130, v131))
    {
      v243 = v129;
      v250 = v104;
      v132 = *(v0 + 432);
      v133 = *(v0 + 312);
      v134 = *(v0 + 320);
      v135 = swift_slowAlloc();
      v252 = swift_slowAlloc();
      *v135 = 136446466;
      swift_beginAccess();
      if ((*(v134 + 48))(v132, 1, v133))
      {
        v136 = 0xE300000000000000;
        v137 = 7104878;
      }

      else
      {
        v170 = *(v0 + 320);
        v169 = *(v0 + 328);
        v171 = *(v0 + 312);
        v172 = *(v0 + 128);
        v173 = *(v0 + 136);
        v225 = v171;
        v232 = *(v0 + 120);
        (*(v170 + 16))(v169, *(v0 + 432));
        Fence.id.getter();
        (*(v170 + 8))(v169, v225);
        v174 = Fence.ID.uuidString.getter();
        v136 = v175;
        (*(v172 + 8))(v173, v232);
        v137 = v174;
      }

      v176 = *(v0 + 376);
      v177 = *(v0 + 352);
      v178 = sub_10000D01C(v137, v136, &v252);

      *(v135 + 4) = v178;
      *(v135 + 12) = 2082;
      v179 = Date.localISO8601.getter();
      v181 = v180;
      v250(v176, v177);
      v182 = sub_10000D01C(v179, v181, &v252);

      *(v135 + 14) = v182;
      _os_log_impl(&_mh_execute_header, v130, v131, "Setting invite timer for fence %{public}s at %{public}s", v135, 0x16u);
      swift_arrayDestroy();

      v129 = v243;
    }

    else
    {
      v138 = *(v0 + 376);
      v139 = *(v0 + 352);

      v104(v138, v139);
    }

    v183 = *(v0 + 80);
    v184 = *(v0 + 88);
    v185 = *(v0 + 64);
    v186 = *(v0 + 72);
    v129(*(v0 + 408), *(v0 + 384), *(v0 + 352));
    sub_10004B564(&qword_1005B0BD0, &qword_1004D28B0);
    v187 = *(v186 + 72);
    v188 = (*(v186 + 80) + 32) & ~*(v186 + 80);
    v189 = swift_allocObject();
    *(v189 + 16) = xmmword_1004C1900;
    static XPCAlarm.Criteria.Options.userVisible.getter();
    *(v0 + 40) = v189;
    sub_1002AB19C(&qword_1005B0BD8, &type metadata accessor for XPCAlarm.Criteria.Options);
    sub_10004B564(&qword_1005B0BE0, &qword_1004D28B8);
    sub_10001DF0C(&qword_1005B0BE8, &qword_1005B0BE0, &qword_1004D28B8);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    XPCAlarm.Criteria.init(date:options:)();
    v190 = async function pointer to XPCAlarm.init(identifier:criteria:)[1];
    v191 = swift_task_alloc();
    *(v0 + 584) = v191;
    *v191 = v0;
    v191[1] = sub_100295F68;
    v192 = *(v0 + 112);
    v193 = *(v0 + 88);

    return XPCAlarm.init(identifier:criteria:)(v192, 0xD00000000000002FLL, 0x80000001004DE480, v193);
  }
}

uint64_t sub_100295F68()
{
  v1 = *(*v0 + 584);
  v2 = *(*v0 + 112);
  v3 = *(*v0 + 104);
  v4 = *(*v0 + 96);
  v5 = *(*v0 + 56);
  v7 = *v0;

  (*(v3 + 8))(v2, v4);

  return _swift_task_switch(sub_1002960D4, v5, 0);
}

uint64_t sub_1002960D4()
{
  v1 = v0[72];
  v2 = v0[71];
  v3 = v0[58];
  v5 = v0[53];
  v4 = v0[54];
  v6 = v0[44];
  v2(v0[48], v6);
  v2(v5, v6);
  sub_100002CE0(v3, &unk_1005AE5B0, &qword_1004C32F0);
  sub_100002CE0(v4, &qword_1005B09D0, &unk_1004D2380);
  v8 = v0[57];
  v7 = v0[58];
  v10 = v0[55];
  v9 = v0[56];
  v12 = v0[53];
  v11 = v0[54];
  v14 = v0[51];
  v13 = v0[52];
  v15 = v0[49];
  v16 = v0[50];
  v19 = v0[48];
  v20 = v0[47];
  v21 = v0[46];
  v22 = v0[43];
  v23 = v0[42];
  v24 = v0[41];
  v25 = v0[38];
  v26 = v0[37];
  v27 = v0[34];
  v28 = v0[33];
  v29 = v0[30];
  v30 = v0[29];
  v31 = v0[26];
  v32 = v0[23];
  v33 = v0[20];
  v34 = v0[17];
  v35 = v0[14];
  v36 = v0[11];
  v37 = v0[10];

  v17 = v0[1];

  return v17();
}

uint64_t sub_1002962FC(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xD00000000000002ELL;
  v3 = *a1;
  v4 = "enceScheduleTimer";
  if (v3 == 1)
  {
    v5 = 0xD00000000000002FLL;
  }

  else
  {
    v5 = 0xD00000000000002ELL;
  }

  if (v3 == 1)
  {
    v6 = "enceScheduleTimer";
  }

  else
  {
    v6 = ".findmylocated.FenceInviteTimer";
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xD000000000000031;
  }

  if (v3)
  {
    v8 = v6;
  }

  else
  {
    v8 = "com.apple.mobileme.fmf3";
  }

  if (*a2 == 1)
  {
    v2 = 0xD00000000000002FLL;
  }

  else
  {
    v4 = ".findmylocated.FenceInviteTimer";
  }

  if (*a2)
  {
    v9 = v2;
  }

  else
  {
    v9 = 0xD000000000000031;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = "com.apple.mobileme.fmf3";
  }

  if (v7 == v9 && (v8 | 0x8000000000000000) == (v10 | 0x8000000000000000))
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

unint64_t sub_1002963D0@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1002AB350(*a1);
  *a2 = result;
  return result;
}

void sub_100296400(unint64_t *a1@<X8>)
{
  v2 = 0xD00000000000002ELL;
  v3 = "enceScheduleTimer";
  if (*v1 == 1)
  {
    v2 = 0xD00000000000002FLL;
  }

  else
  {
    v3 = ".findmylocated.FenceInviteTimer";
  }

  if (*v1)
  {
    v4 = v3;
  }

  else
  {
    v2 = 0xD000000000000031;
    v4 = "com.apple.mobileme.fmf3";
  }

  *a1 = v2;
  a1[1] = v4 | 0x8000000000000000;
}

Swift::Int sub_100296468()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100296500()
{
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int sub_100296584()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100296638()
{
  v1 = *(v0 + 16);
  static XPCAlarm.unregister(identifier:)();
  static XPCAlarm.unregister(identifier:)();
  static XPCAlarm.unregister(identifier:)();
  v2 = OBJC_IVAR____TtC13findmylocated12FenceService_significantTimeChangeDebounceTask;
  if (*(v1 + OBJC_IVAR____TtC13findmylocated12FenceService_significantTimeChangeDebounceTask))
  {
    v3 = *(v1 + OBJC_IVAR____TtC13findmylocated12FenceService_significantTimeChangeDebounceTask);

    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    Task.cancel()();

    v4 = *(v1 + v2);
  }

  v5 = *(v0 + 16);
  *(v1 + v2) = 0;

  v6 = OBJC_IVAR____TtC13findmylocated12FenceService_darwinSignificantTimeChangeTask;
  if (*(v5 + OBJC_IVAR____TtC13findmylocated12FenceService_darwinSignificantTimeChangeTask))
  {
    v7 = *(v5 + OBJC_IVAR____TtC13findmylocated12FenceService_darwinSignificantTimeChangeTask);

    Task.cancel()();

    v8 = *(v5 + v6);
  }

  v9 = *(v0 + 16);
  *(v5 + v6) = 0;

  v10 = OBJC_IVAR____TtC13findmylocated12FenceService_xpcAlarmHandlerTask;
  if (*(v9 + OBJC_IVAR____TtC13findmylocated12FenceService_xpcAlarmHandlerTask))
  {
    v11 = *(v9 + OBJC_IVAR____TtC13findmylocated12FenceService_xpcAlarmHandlerTask);

    Task.cancel()();

    v12 = *(v9 + v10);
  }

  v13 = *(v0 + 16);
  *(v9 + v10) = 0;

  v14 = [objc_opt_self() defaultCenter];
  v15 = v14;
  v16 = OBJC_IVAR____TtC13findmylocated12FenceService_systemClockDidChangeObserver;
  if (*(v13 + OBJC_IVAR____TtC13findmylocated12FenceService_systemClockDidChangeObserver))
  {
    [v14 removeObserver:?];
    v17 = *(v13 + v16);
    *(v13 + v16) = 0;
    swift_unknownObjectRelease();
  }

  v18 = *(v0 + 16);
  v19 = OBJC_IVAR____TtC13findmylocated12FenceService_systemTimeZoneDidChangeObserver;
  v20 = *(v18 + OBJC_IVAR____TtC13findmylocated12FenceService_systemTimeZoneDidChangeObserver);
  if (v20)
  {
    v21 = *(v18 + OBJC_IVAR____TtC13findmylocated12FenceService_systemTimeZoneDidChangeObserver);
    swift_unknownObjectRetain();
    [v15 removeObserver:v20];

    swift_unknownObjectRelease();
    v22 = *(v18 + v19);
    *(v18 + v19) = 0;
    swift_unknownObjectRelease();
  }

  else
  {
  }

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_1002968B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return _swift_task_switch(sub_1002968D8, 0, 0);
}

uint64_t sub_1002968D8()
{
  if (qword_1005A80E8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000A6F0(v1, qword_1005DFF88);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Creating XPC alarm streams", v4, 2u);
  }

  v5 = *(v0 + 32);
  v10 = *(v0 + 16);

  v6 = swift_task_alloc();
  *(v0 + 40) = v6;
  *(v6 + 16) = v10;
  *(v6 + 32) = v5;
  v7 = async function pointer to withDiscardingTaskGroup<A>(returning:isolation:body:)[1];
  v8 = swift_task_alloc();
  *(v0 + 48) = v8;
  *v8 = v0;
  v8[1] = sub_100296A7C;

  return withDiscardingTaskGroup<A>(returning:isolation:body:)();
}

uint64_t sub_100296A7C()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 40);
  v4 = *v0;

  return _swift_task_switch(sub_1000161BC, 0, 0);
}

uint64_t sub_100296B94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[27] = a4;
  v5[28] = a5;
  v5[25] = a2;
  v5[26] = a3;
  v6 = *(*(sub_10004B564(&qword_1005A9690, &qword_1004C2A00) - 8) + 64) + 15;
  v5[29] = swift_task_alloc();
  v5[30] = swift_task_alloc();

  return _swift_task_switch(sub_100296C40, 0, 0);
}

uint64_t sub_100296C40()
{
  v1 = *(v0 + 208);
  sub_10004B564(&qword_1005B0BF8, &qword_1004D2948);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004C0BD0;
  v3 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();
  v4 = swift_allocObject();
  *(v4 + 16) = &unk_1004D2958;
  *(v4 + 24) = v3;
  *(inited + 32) = 0;
  *(inited + 40) = &unk_1004D2968;
  *(inited + 48) = v4;
  v5 = swift_allocObject();
  swift_weakLoadStrong();
  swift_weakInit();
  v6 = swift_allocObject();
  *(v6 + 16) = &unk_1004D2978;
  *(v6 + 24) = v5;
  *(inited + 56) = 1;
  *(inited + 64) = &unk_1004D2980;
  *(inited + 72) = v6;
  v7 = swift_allocObject();

  swift_weakLoadStrong();

  swift_weakInit();

  v8 = swift_allocObject();
  *(v8 + 16) = &unk_1004D2990;
  *(v8 + 24) = v7;
  *(inited + 80) = 2;
  *(inited + 88) = &unk_1004D2998;
  *(inited + 96) = v8;

  v9 = sub_100209D30(inited);
  swift_setDeallocating();
  sub_10004B564(&qword_1005B0C00, &qword_1004D29A0);
  result = swift_arrayDestroy();
  v11 = 0;
  v12 = v9 + 64;
  v13 = -1;
  v41 = v9 + 64;
  v42 = v9;
  v14 = -1 << *(v9 + 32);
  if (-v14 < 64)
  {
    v13 = ~(-1 << -v14);
  }

  v15 = v13 & *(v9 + 64);
  v16 = (63 - v14) >> 6;
  v40 = v16;
  while (v15)
  {
LABEL_11:
    v20 = *(v0 + 240);
    v21 = *(v0 + 216);
    v44 = *(v0 + 224);
    v45 = *(v0 + 232);
    v22 = __clz(__rbit64(v15)) | (v11 << 6);
    v23 = *(v42 + 56);
    v43 = *(*(v42 + 48) + v22);
    v24 = swift_allocObject();
    *(v24 + 16) = *(v23 + 16 * v22);
    v25 = type metadata accessor for TaskPriority();
    v26 = *(v25 - 8);
    (*(v26 + 56))(v20, 1, 1, v25);
    v27 = swift_allocObject();
    *(v27 + 16) = 0;
    v28 = (v27 + 16);
    *(v27 + 24) = 0;
    *(v27 + 32) = v21;
    *(v27 + 40) = v43;
    *(v27 + 48) = &unk_1004D29B0;
    *(v27 + 56) = v24;
    *(v27 + 64) = v44;
    sub_100005F04(v20, v45, &qword_1005A9690, &qword_1004C2A00);
    LODWORD(v20) = (*(v26 + 48))(v45, 1, v25);

    v29 = *(v0 + 232);
    if (v20 == 1)
    {
      sub_100002CE0(*(v0 + 232), &qword_1005A9690, &qword_1004C2A00);
    }

    else
    {
      TaskPriority.rawValue.getter();
      (*(v26 + 8))(v29, v25);
    }

    if (*v28)
    {
      v30 = *(v27 + 24);
      v31 = *v28;
      swift_getObjectType();
      swift_unknownObjectRetain();
      v32 = dispatch thunk of Actor.unownedExecutor.getter();
      v34 = v33;
      swift_unknownObjectRelease();
    }

    else
    {
      v32 = 0;
      v34 = 0;
    }

    v35 = **(v0 + 200);
    v36 = swift_allocObject();
    *(v36 + 16) = &unk_1004D29C0;
    *(v36 + 24) = v27;

    if (v34 | v32)
    {
      v17 = v0 + 120;
      *(v0 + 120) = 0;
      *(v0 + 128) = 0;
      *(v0 + 136) = v32;
      *(v0 + 144) = v34;
    }

    else
    {
      v17 = 0;
    }

    v18 = *(v0 + 240);
    v15 &= v15 - 1;
    *(v0 + 176) = 1;
    *(v0 + 184) = v17;
    *(v0 + 192) = v35;
    swift_task_create();

    result = sub_100002CE0(v18, &qword_1005A9690, &qword_1004C2A00);
    v16 = v40;
    v12 = v41;
  }

  while (1)
  {
    v19 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
      return result;
    }

    if (v19 >= v16)
    {
      break;
    }

    v15 = *(v12 + 8 * v19);
    ++v11;
    if (v15)
    {
      v11 = v19;
      goto LABEL_11;
    }
  }

  v38 = *(v0 + 232);
  v37 = *(v0 + 240);

  v39 = *(v0 + 8);

  return v39();
}

uint64_t sub_100297240()
{
  v1 = v0[5];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[6] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[7] = v3;
    *v3 = v0;
    v3[1] = sub_100297328;

    return sub_100297464();
  }

  else
  {
    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_100297328()
{
  v2 = *(*v1 + 56);
  v3 = *v1;
  v3[8] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1002AB3A4, 0, 0);
  }

  else
  {
    v4 = v3[6];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_100297464()
{
  v1[2] = v0;
  v2 = type metadata accessor for Fence.TriggerID();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  v5 = type metadata accessor for Fence.TriggerPosition();
  v1[7] = v5;
  v6 = *(v5 - 8);
  v1[8] = v6;
  v7 = *(v6 + 64) + 15;
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v8 = type metadata accessor for Fence.ID();
  v1[12] = v8;
  v9 = *(v8 - 8);
  v1[13] = v9;
  v10 = *(v9 + 64) + 15;
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v11 = sub_10004B564(&qword_1005B0B98, &qword_1004D27F0);
  v1[18] = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v13 = type metadata accessor for FenceTriggerRecord();
  v1[21] = v13;
  v14 = *(v13 - 8);
  v1[22] = v14;
  v15 = *(v14 + 64) + 15;
  v1[23] = swift_task_alloc();
  v16 = *(*(sub_10004B564(&qword_1005B0BB0, &qword_1004D2830) - 8) + 64) + 15;
  v1[24] = swift_task_alloc();
  v17 = type metadata accessor for DateInterval();
  v1[25] = v17;
  v18 = *(v17 - 8);
  v1[26] = v18;
  v19 = *(v18 + 64) + 15;
  v1[27] = swift_task_alloc();
  v20 = type metadata accessor for Fence.Schedule.Matcher();
  v1[28] = v20;
  v21 = *(v20 - 8);
  v1[29] = v21;
  v22 = *(v21 + 64) + 15;
  v1[30] = swift_task_alloc();
  v23 = *(*(sub_10004B564(&unk_1005AE5B0, &qword_1004C32F0) - 8) + 64) + 15;
  v1[31] = swift_task_alloc();
  v24 = type metadata accessor for Fence.Participant();
  v1[32] = v24;
  v25 = *(v24 - 8);
  v1[33] = v25;
  v26 = *(v25 + 64) + 15;
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  v27 = type metadata accessor for Fence.AcceptanceStatus();
  v1[36] = v27;
  v28 = *(v27 - 8);
  v1[37] = v28;
  v29 = *(v28 + 64) + 15;
  v1[38] = swift_task_alloc();
  v1[39] = swift_task_alloc();
  v30 = type metadata accessor for Fence.Variant();
  v1[40] = v30;
  v31 = *(v30 - 8);
  v1[41] = v31;
  v32 = *(v31 + 64) + 15;
  v1[42] = swift_task_alloc();
  v33 = type metadata accessor for Fence.Schedule();
  v1[43] = v33;
  v34 = *(v33 - 8);
  v1[44] = v34;
  v35 = *(v34 + 64) + 15;
  v1[45] = swift_task_alloc();
  v1[46] = swift_task_alloc();
  v36 = type metadata accessor for Fence();
  v1[47] = v36;
  v37 = *(v36 - 8);
  v1[48] = v37;
  v38 = *(v37 + 64) + 15;
  v1[49] = swift_task_alloc();
  v1[50] = swift_task_alloc();
  v1[51] = swift_task_alloc();
  v1[52] = swift_task_alloc();
  v1[53] = swift_task_alloc();
  v1[54] = swift_task_alloc();
  v39 = type metadata accessor for Date();
  v1[55] = v39;
  v40 = *(v39 - 8);
  v1[56] = v40;
  v41 = *(v40 + 64) + 15;
  v1[57] = swift_task_alloc();
  v1[58] = swift_task_alloc();
  v1[59] = swift_task_alloc();
  v1[60] = swift_task_alloc();
  v1[61] = swift_task_alloc();
  v1[62] = swift_task_alloc();

  return _swift_task_switch(sub_100297AB4, v0, 0);
}

uint64_t sub_100297AB4()
{
  if (qword_1005A80E8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[63] = sub_10000A6F0(v1, qword_1005DFF88);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Scheduler timer fired", v4, 2u);
  }

  v5 = v0[62];

  static Date.now.getter();
  v6 = async function pointer to daemon.getter[1];
  v7 = swift_task_alloc();
  v0[64] = v7;
  *v7 = v0;
  v7[1] = sub_100297C10;

  return daemon.getter();
}

uint64_t sub_100297C10(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 512);
  v12 = *v1;
  v3[65] = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  v3[66] = v6;
  v7 = type metadata accessor for Daemon();
  v3[67] = v7;
  v8 = type metadata accessor for DataManager(0);
  v3[68] = v8;
  v9 = sub_1002AB19C(&unk_1005AFA50, &type metadata accessor for Daemon);
  v3[69] = v9;
  v10 = sub_1002AB19C(&qword_1005A90D0, type metadata accessor for DataManager);
  v3[70] = v10;
  *v6 = v12;
  v6[1] = sub_100297E04;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100297E04(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 528);
  v6 = *v2;
  *(*v2 + 568) = v1;

  if (v1)
  {
    v7 = v4[2];

    return _swift_task_switch(sub_100298A24, v7, 0);
  }

  else
  {
    v8 = v4[65];

    v4[72] = a1;
    v9 = swift_task_alloc();
    v4[73] = v9;
    *v9 = v6;
    v9[1] = sub_100297F90;

    return sub_100006424();
  }
}

uint64_t sub_100297F90(uint64_t a1)
{
  v2 = *(*v1 + 584);
  v3 = *(*v1 + 16);
  v5 = *v1;
  *(*v1 + 592) = a1;

  return _swift_task_switch(sub_1002980A8, v3, 0);
}

uint64_t sub_1002980A8()
{
  v122 = v0;
  v1 = *(v0 + 592);
  v2 = *(v0 + 576);

  v3 = *(v1 + 16);
  *(v0 + 600) = v3;
  if (!v3)
  {
LABEL_24:
    v102 = *(v0 + 592);

    v103 = swift_task_alloc();
    *(v0 + 816) = v103;
    *v103 = v0;
    v103[1] = sub_10029D0C8;
    v104 = *(v0 + 16);

    return sub_1002A9688();
  }

  v4 = 0;
  *(v0 + 888) = *(*(v0 + 384) + 80);
  *(v0 + 892) = enum case for Fence.Variant.scheduled(_:);
  *(v0 + 896) = enum case for Fence.AcceptanceStatus.accepted(_:);
  *(v0 + 900) = enum case for Fence.Participant.me(_:);
  *(v0 + 904) = enum case for Fence.TriggerPosition.inside(_:);
  *(v0 + 908) = enum case for Fence.TriggerPosition.outside(_:);
  *(v0 + 912) = enum case for Fence.TriggerPosition.undetermined(_:);
  while (1)
  {
    *(v0 + 608) = v4;
    v5 = *(v0 + 592);
    if (v4 >= *(v5 + 16))
    {
      __break(1u);
      return daemon.getter();
    }

    v6 = *(v0 + 892);
    v7 = *(v0 + 432);
    v8 = *(v0 + 376);
    v9 = *(v0 + 384);
    v11 = *(v0 + 328);
    v10 = *(v0 + 336);
    v12 = *(v0 + 320);
    v13 = *(v9 + 16);
    v9 += 16;
    v14 = v5 + ((*(v0 + 888) + 32) & ~*(v0 + 888)) + *(v9 + 56) * v4;
    *(v0 + 616) = v13;
    *(v0 + 624) = v9 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v13(v7, v14, v8);
    Fence.variant.getter();
    if ((*(v11 + 88))(v10, v12) == v6)
    {
      break;
    }

    v36 = *(v0 + 432);
    v37 = *(v0 + 376);
    v38 = *(v0 + 384);
    v40 = *(v0 + 328);
    v39 = *(v0 + 336);
    v41 = *(v0 + 320);
LABEL_14:
    (*(v38 + 8))(v36, v37);
    (*(v40 + 8))(v39, v41);
LABEL_15:
    v4 = *(v0 + 608) + 1;
    if (v4 == *(v0 + 600))
    {
      goto LABEL_24;
    }
  }

  loga = *(v0 + 896);
  v15 = *(v0 + 432);
  v16 = *(v0 + 368);
  v17 = *(v0 + 344);
  v18 = *(v0 + 352);
  v19 = *(v0 + 336);
  v20 = *(v0 + 312);
  v21 = *(v0 + 296);
  v22 = *(v0 + 304);
  v23 = *(v0 + 288);
  (*(*(v0 + 328) + 96))(v19, *(v0 + 320));
  (*(v18 + 32))(v16, v19, v17);
  Fence.acceptanceStatus.getter();
  (*(v21 + 104))(v22, loga, v23);
  LOBYTE(v15) = static Fence.AcceptanceStatus.== infix(_:_:)();
  v24 = *(v21 + 8);
  v24(v22, v23);
  v24(v20, v23);
  if ((v15 & 1) == 0)
  {
    goto LABEL_13;
  }

  v25 = *(v0 + 900);
  v26 = *(v0 + 432);
  v28 = *(v0 + 272);
  v27 = *(v0 + 280);
  v29 = *(v0 + 256);
  v30 = *(v0 + 264);
  Fence.finder.getter();
  (*(v30 + 104))(v28, v25, v29);
  LOBYTE(v26) = static Fence.Participant.== infix(_:_:)();
  v31 = *(v30 + 8);
  v31(v28, v29);
  v31(v27, v29);
  if ((v26 & 1) == 0)
  {
LABEL_13:
    v39 = *(v0 + 432);
    v41 = *(v0 + 376);
    v40 = *(v0 + 384);
    v36 = *(v0 + 368);
    v37 = *(v0 + 344);
    v38 = *(v0 + 352);
    goto LABEL_14;
  }

  v32 = *(v0 + 440);
  v33 = *(v0 + 448);
  v34 = *(v0 + 432);
  v35 = *(v0 + 248);
  Fence.muteEndDate.getter();
  if ((*(v33 + 48))(v35, 1, v32) != 1)
  {
    v42 = *(v0 + 488);
    v43 = *(v0 + 440);
    v44 = *(v0 + 448);
    (*(v44 + 32))(v42, *(v0 + 248), v43);
    sub_1002AB19C(&qword_1005B0BF0, &type metadata accessor for Date);
    v45 = dispatch thunk of static Comparable.< infix(_:_:)();
    (*(v44 + 8))(v42, v43);
    if (v45)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

  sub_100002CE0(*(v0 + 248), &unk_1005AE5B0, &qword_1004C32F0);
LABEL_11:
  v46 = *(v0 + 496);
  v48 = *(v0 + 472);
  v47 = *(v0 + 480);
  v111 = *(v0 + 464);
  v114 = *(v0 + 456);
  logb = *(v0 + 504);
  v50 = *(v0 + 440);
  v49 = *(v0 + 448);
  v52 = *(v0 + 232);
  v51 = *(v0 + 240);
  v53 = *(v0 + 224);
  v109 = *(*(v0 + 352) + 16);
  v109(*(v0 + 360), *(v0 + 368), *(v0 + 344));
  Fence.Schedule.Matcher.init(schedule:)();
  Fence.Schedule.Matcher.previousStartDate(from:)();
  v54 = *(v52 + 8);
  v54(v51, v53);
  v55 = *(v49 + 16);
  v55(v48, v47, v50);
  v55(v111, v46, v50);
  v55(v114, v47, v50);
  v56 = Logger.logObject.getter();
  v57 = static os_log_type_t.default.getter();
  v58 = os_log_type_enabled(v56, v57);
  v60 = *(v0 + 464);
  v59 = *(v0 + 472);
  v62 = *(v0 + 448);
  v61 = *(v0 + 456);
  v63 = *(v0 + 440);
  if (v58)
  {
    logc = v56;
    v64 = swift_slowAlloc();
    v115 = swift_slowAlloc();
    v121 = v115;
    *v64 = 136446466;
    v108 = v60;
    v65 = v54;
    v66 = Date.localISO8601.getter();
    v112 = v57;
    v68 = v67;
    v69 = *(v62 + 8);
    (v69)(v59, v63);
    v70 = v66;
    v54 = v65;
    v71 = sub_10000D01C(v70, v68, &v121);

    *(v64 + 4) = v71;
    *(v64 + 12) = 2050;
    Date.timeIntervalSince(_:)();
    v73 = v72;
    (v69)(v61, v63);
    (v69)(v108, v63);
    *(v64 + 14) = v73;
    _os_log_impl(&_mh_execute_header, logc, v112, "schedulerTimerFired: startDate: %{public}s timeDelta: %{public}f", v64, 0x16u);
    sub_100004984(v115);
  }

  else
  {

    v69 = *(v62 + 8);
    (v69)(v61, v63);
    (v69)(v60, v63);
    (v69)(v59, v63);
  }

  *(v0 + 632) = v69;
  v74 = *(v0 + 496);
  v75 = *(v0 + 480);
  Date.timeIntervalSince(_:)();
  v76 = *(v0 + 480);
  if (v77 > 300.0)
  {
    v78 = *(v0 + 432);
    v79 = *(v0 + 376);
    v80 = *(v0 + 384);
    v81 = *(v0 + 368);
    v82 = *(v0 + 344);
    v83 = *(v0 + 352);
    v84 = *(v0 + 448) + 8;
    (v69)(*(v0 + 480), *(v0 + 440));
    (*(v83 + 8))(v81, v82);
    (*(v80 + 8))(v78, v79);
    goto LABEL_15;
  }

  v85 = *(v0 + 240);
  v86 = *(v0 + 224);
  v87 = *(v0 + 200);
  v88 = *(v0 + 208);
  v89 = *(v0 + 192);
  v109(*(v0 + 360), *(v0 + 368), *(v0 + 344));
  Fence.Schedule.Matcher.init(schedule:)();
  Fence.Schedule.Matcher.interval(containingDate:)();
  v54(v85, v86);
  if ((*(v88 + 48))(v89, 1, v87) == 1)
  {
    log = v69;
    v90 = *(v0 + 504);
    sub_100002CE0(*(v0 + 192), &qword_1005B0BB0, &qword_1004D2830);
    v91 = Logger.logObject.getter();
    v92 = static os_log_type_t.error.getter();
    v93 = os_log_type_enabled(v91, v92);
    v94 = *(v0 + 480);
    v95 = *(v0 + 440);
    v96 = *(v0 + 376);
    v97 = *(v0 + 384);
    v113 = v96;
    v116 = *(v0 + 432);
    v98 = *(v0 + 368);
    v100 = *(v0 + 344);
    v99 = *(v0 + 352);
    if (v93)
    {
      v110 = *(v0 + 448) + 8;
      v101 = swift_slowAlloc();
      *v101 = 0;
      _os_log_impl(&_mh_execute_header, v91, v92, "No valid interval for startDate", v101, 2u);
    }

    (log)(v94, v95);
    (*(v99 + 8))(v98, v100);
    (*(v97 + 8))(v116, v113);
    goto LABEL_15;
  }

  (*(*(v0 + 208) + 32))(*(v0 + 216), *(v0 + 192), *(v0 + 200));
  v106 = async function pointer to daemon.getter[1];
  v107 = swift_task_alloc();
  *(v0 + 640) = v107;
  *v107 = v0;
  v107[1] = sub_100298C64;

  return daemon.getter();
}

uint64_t sub_100298A24()
{
  v1 = v0[65];
  v2 = v0[62];
  v3 = v0[55];
  v4 = v0[56];

  (*(v4 + 8))(v2, v3);
  v42 = v0[71];
  v6 = v0[61];
  v5 = v0[62];
  v8 = v0[59];
  v7 = v0[60];
  v10 = v0[57];
  v9 = v0[58];
  v12 = v0[53];
  v11 = v0[54];
  v14 = v0[51];
  v13 = v0[52];
  v17 = v0[50];
  v18 = v0[49];
  v19 = v0[46];
  v20 = v0[45];
  v21 = v0[42];
  v22 = v0[39];
  v23 = v0[38];
  v24 = v0[35];
  v25 = v0[34];
  v26 = v0[31];
  v27 = v0[30];
  v28 = v0[27];
  v29 = v0[24];
  v30 = v0[23];
  v31 = v0[20];
  v32 = v0[19];
  v33 = v0[17];
  v34 = v0[16];
  v35 = v0[15];
  v36 = v0[14];
  v37 = v0[11];
  v38 = v0[10];
  v39 = v0[9];
  v40 = v0[6];
  v41 = v0[5];

  v15 = v0[1];

  return v15();
}

uint64_t sub_100298C64(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 640);
  v5 = *v1;
  v3[81] = a1;

  v6 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v7 = swift_task_alloc();
  v3[82] = v7;
  v8 = type metadata accessor for LocalStorageService();
  v9 = sub_1002AB19C(&qword_1005AAB88, type metadata accessor for LocalStorageService);
  *v7 = v5;
  v7[1] = sub_100298E18;
  v10 = v3[69];
  v11 = v3[67];

  return ActorServiceDaemon.getService<A>()(v11, v8, v10, v9);
}

uint64_t sub_100298E18(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 656);
  v6 = *v2;
  v4[83] = a1;
  v4[84] = v1;

  v7 = v3[81];
  if (v1)
  {
    v8 = v4[74];
    v9 = v4[2];

    v10 = sub_10029DC68;
  }

  else
  {
    v9 = v4[2];

    v10 = sub_100298F74;
  }

  return _swift_task_switch(v10, v9, 0);
}

uint64_t sub_100298F74()
{
  v1 = v0[83];
  v2 = v0[54];
  v3 = v0[17];
  Fence.id.getter();

  return _swift_task_switch(sub_100298FE4, v1, 0);
}

uint64_t sub_100298FE4()
{
  v1 = v0[83];
  v2 = v0[17];
  v3 = sub_1002AB19C(&qword_1005AAB90, type metadata accessor for LocalStorageService);
  v4 = swift_task_alloc();
  v0[85] = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v5 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v6 = swift_task_alloc();
  v0[86] = v6;
  *v6 = v0;
  v6[1] = sub_100299114;
  v7 = v0[20];
  v8 = v0[18];

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v7, v1, v3, 0xD000000000000011, 0x80000001004E6620, sub_100293188, v4, v8);
}

uint64_t sub_100299114()
{
  v2 = *v1;
  v3 = *(*v1 + 688);
  v16 = *v1;
  *(*v1 + 696) = v0;

  if (v0)
  {
    v4 = v2[85];
    v5 = v2[83];
    v6 = v2[74];

    v7 = sub_100299FAC;
    v8 = v5;
  }

  else
  {
    v9 = v2[85];
    v10 = v2[17];
    v11 = v2[12];
    v12 = v2[13];
    v13 = v2[2];

    v14 = *(v12 + 8);
    v2[88] = v14;
    v2[89] = (v12 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v14(v10, v11);
    v7 = sub_100299294;
    v8 = v13;
  }

  return _swift_task_switch(v7, v8, 0);
}

uint64_t sub_100299294()
{
  v177 = v0;
  v1 = *(v0 + 168);
  v2 = *(v0 + 176);
  v3 = *(v0 + 160);
  v4 = *(v2 + 48);
  *(v0 + 720) = v4;
  *(v0 + 728) = (v2 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v4(v3, 1, v1) != 1)
  {
    v23 = *(v0 + 432);
    v24 = *(v0 + 128);
    sub_1002AB1E4(v3, *(v0 + 184));
    Fence.id.getter();
    v25 = swift_task_alloc();
    *(v0 + 736) = v25;
    *v25 = v0;
    v25[1] = sub_10029A2EC;
    v26 = *(v0 + 664);
    v27 = *(v0 + 216);
    v28 = *(v0 + 152);
    v29 = *(v0 + 128);

    return sub_100306C9C(v28, v29, v27);
  }

  v5 = *(v0 + 624);
  v6 = *(v0 + 616);
  v7 = *(v0 + 504);
  v8 = *(v0 + 432);
  v9 = *(v0 + 400);
  v10 = *(v0 + 376);
  sub_100002CE0(v3, &qword_1005B0B98, &qword_1004D27F0);
  v6(v9, v8, v10);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v143 = *(v0 + 704);
    v144 = *(v0 + 712);
    v149 = *(v0 + 664);
    v165 = *(v0 + 632);
    v160 = *(v0 + 480);
    v155 = *(v0 + 440);
    v170 = *(v0 + 432);
    v13 = *(v0 + 400);
    v141 = *(v0 + 384);
    v142 = *(v0 + 376);
    v157 = *(v0 + 368);
    v150 = *(v0 + 352);
    v152 = *(v0 + 344);
    v145 = *(v0 + 208);
    v146 = *(v0 + 200);
    v147 = *(v0 + 216);
    v14 = *(v0 + 120);
    v148 = *(v0 + 448) + 8;
    v15 = *(v0 + 96);
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v176 = v17;
    *v16 = 136446210;
    Fence.id.getter();
    sub_1002AB19C(&qword_1005AE800, &type metadata accessor for Fence.ID);
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    v20 = v19;
    v143(v14, v15);
    v21 = *(v141 + 8);
    v21(v13, v142);
    v22 = sub_10000D01C(v18, v20, &v176);

    *(v16 + 4) = v22;
    _os_log_impl(&_mh_execute_header, v11, v12, "Not triggering fence (no previousTrigger): %{public}s", v16, 0xCu);
    sub_100004984(v17);

    (*(v145 + 8))(v147, v146);
    v165(v160, v155);
    (*(v150 + 8))(v157, v152);
    v21(v170, v142);
  }

  else
  {
    v31 = *(v0 + 664);
    v166 = *(v0 + 632);
    v161 = *(v0 + 480);
    v32 = *(v0 + 448);
    v156 = *(v0 + 440);
    v171 = *(v0 + 432);
    v33 = *(v0 + 400);
    v35 = *(v0 + 376);
    v34 = *(v0 + 384);
    v158 = *(v0 + 368);
    v36 = *(v0 + 352);
    v153 = *(v0 + 344);
    v37 = v11;
    v38 = *(v0 + 208);
    v39 = *(v0 + 216);
    v40 = *(v0 + 200);

    v41 = *(v34 + 8);
    v41(v33, v35);
    (*(v38 + 8))(v39, v40);
    v166(v161, v156);
    (*(v36 + 8))(v158, v153);
    v41(v171, v35);
  }

  v42 = *(v0 + 608) + 1;
  if (v42 == *(v0 + 600))
  {
LABEL_9:
    v43 = *(v0 + 592);

    v44 = swift_task_alloc();
    *(v0 + 816) = v44;
    *v44 = v0;
    v44[1] = sub_10029D0C8;
    v45 = *(v0 + 16);

    return sub_1002A9688();
  }

  while (1)
  {
    *(v0 + 608) = v42;
    v46 = *(v0 + 592);
    if (v42 >= *(v46 + 16))
    {
      __break(1u);
      return daemon.getter();
    }

    v47 = *(v0 + 892);
    v48 = *(v0 + 432);
    v49 = *(v0 + 376);
    v50 = *(v0 + 384);
    v52 = *(v0 + 328);
    v51 = *(v0 + 336);
    v53 = *(v0 + 320);
    v54 = *(v50 + 16);
    v50 += 16;
    v55 = v46 + ((*(v0 + 888) + 32) & ~*(v0 + 888)) + *(v50 + 56) * v42;
    *(v0 + 616) = v54;
    *(v0 + 624) = v50 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v54(v48, v55, v49);
    Fence.variant.getter();
    if ((*(v52 + 88))(v51, v53) == v47)
    {
      break;
    }

    v77 = *(v0 + 432);
    v78 = *(v0 + 376);
    v79 = *(v0 + 384);
    v81 = *(v0 + 328);
    v80 = *(v0 + 336);
    v82 = *(v0 + 320);
LABEL_23:
    (*(v79 + 8))(v77, v78);
    (*(v81 + 8))(v80, v82);
LABEL_24:
    v42 = *(v0 + 608) + 1;
    if (v42 == *(v0 + 600))
    {
      goto LABEL_9;
    }
  }

  v172 = *(v0 + 896);
  v56 = *(v0 + 432);
  v57 = *(v0 + 368);
  v59 = *(v0 + 344);
  v58 = *(v0 + 352);
  v60 = *(v0 + 336);
  v61 = *(v0 + 312);
  v62 = *(v0 + 296);
  v63 = *(v0 + 304);
  v64 = *(v0 + 288);
  (*(*(v0 + 328) + 96))(v60, *(v0 + 320));
  (*(v58 + 32))(v57, v60, v59);
  Fence.acceptanceStatus.getter();
  (*(v62 + 104))(v63, v172, v64);
  LOBYTE(v56) = static Fence.AcceptanceStatus.== infix(_:_:)();
  v65 = *(v62 + 8);
  v65(v63, v64);
  v65(v61, v64);
  if ((v56 & 1) == 0)
  {
    goto LABEL_22;
  }

  v66 = *(v0 + 900);
  v67 = *(v0 + 432);
  v69 = *(v0 + 272);
  v68 = *(v0 + 280);
  v71 = *(v0 + 256);
  v70 = *(v0 + 264);
  Fence.finder.getter();
  (*(v70 + 104))(v69, v66, v71);
  LOBYTE(v67) = static Fence.Participant.== infix(_:_:)();
  v72 = *(v70 + 8);
  v72(v69, v71);
  v72(v68, v71);
  if ((v67 & 1) == 0)
  {
LABEL_22:
    v80 = *(v0 + 432);
    v82 = *(v0 + 376);
    v81 = *(v0 + 384);
    v77 = *(v0 + 368);
    v78 = *(v0 + 344);
    v79 = *(v0 + 352);
    goto LABEL_23;
  }

  v73 = *(v0 + 440);
  v74 = *(v0 + 448);
  v75 = *(v0 + 432);
  v76 = *(v0 + 248);
  Fence.muteEndDate.getter();
  if ((*(v74 + 48))(v76, 1, v73) != 1)
  {
    v83 = *(v0 + 488);
    v84 = *(v0 + 440);
    v85 = *(v0 + 448);
    (*(v85 + 32))(v83, *(v0 + 248), v84);
    sub_1002AB19C(&qword_1005B0BF0, &type metadata accessor for Date);
    v86 = dispatch thunk of static Comparable.< infix(_:_:)();
    (*(v85 + 8))(v83, v84);
    if (v86)
    {
      goto LABEL_20;
    }

    goto LABEL_22;
  }

  sub_100002CE0(*(v0 + 248), &unk_1005AE5B0, &qword_1004C32F0);
LABEL_20:
  v87 = *(v0 + 496);
  v173 = *(v0 + 504);
  v89 = *(v0 + 472);
  v88 = *(v0 + 480);
  v162 = *(v0 + 464);
  v167 = *(v0 + 456);
  v91 = *(v0 + 440);
  v90 = *(v0 + 448);
  v93 = *(v0 + 232);
  v92 = *(v0 + 240);
  v94 = *(v0 + 224);
  v154 = *(*(v0 + 352) + 16);
  v154(*(v0 + 360), *(v0 + 368), *(v0 + 344));
  Fence.Schedule.Matcher.init(schedule:)();
  Fence.Schedule.Matcher.previousStartDate(from:)();
  v151 = *(v93 + 8);
  v151(v92, v94);
  v95 = *(v90 + 16);
  v95(v89, v88, v91);
  v95(v162, v87, v91);
  v95(v167, v88, v91);
  v96 = Logger.logObject.getter();
  v97 = static os_log_type_t.default.getter();
  v98 = os_log_type_enabled(v96, v97);
  v100 = *(v0 + 464);
  v99 = *(v0 + 472);
  v102 = *(v0 + 448);
  v101 = *(v0 + 456);
  v103 = *(v0 + 440);
  if (v98)
  {
    v168 = v97;
    v104 = swift_slowAlloc();
    v174 = swift_slowAlloc();
    v176 = v174;
    *v104 = 136446466;
    v163 = v100;
    v105 = Date.localISO8601.getter();
    v107 = v106;
    v108 = *(v102 + 8);
    v108(v99, v103);
    v109 = sub_10000D01C(v105, v107, &v176);

    *(v104 + 4) = v109;
    *(v104 + 12) = 2050;
    Date.timeIntervalSince(_:)();
    v111 = v110;
    v108(v101, v103);
    v108(v163, v103);
    *(v104 + 14) = v111;
    _os_log_impl(&_mh_execute_header, v96, v168, "schedulerTimerFired: startDate: %{public}s timeDelta: %{public}f", v104, 0x16u);
    sub_100004984(v174);
  }

  else
  {

    v108 = *(v102 + 8);
    v108(v101, v103);
    v108(v100, v103);
    v108(v99, v103);
  }

  *(v0 + 632) = v108;
  v112 = *(v0 + 496);
  v113 = *(v0 + 480);
  Date.timeIntervalSince(_:)();
  v114 = *(v0 + 480);
  if (v115 > 300.0)
  {
    v116 = *(v0 + 432);
    v117 = *(v0 + 376);
    v118 = *(v0 + 384);
    v119 = *(v0 + 368);
    v120 = *(v0 + 344);
    v121 = *(v0 + 352);
    v122 = *(v0 + 448) + 8;
    v108(*(v0 + 480), *(v0 + 440));
    (*(v121 + 8))(v119, v120);
    (*(v118 + 8))(v116, v117);
    goto LABEL_24;
  }

  v123 = *(v0 + 240);
  v124 = *(v0 + 224);
  v125 = *(v0 + 200);
  v126 = *(v0 + 208);
  v127 = *(v0 + 192);
  v154(*(v0 + 360), *(v0 + 368), *(v0 + 344));
  Fence.Schedule.Matcher.init(schedule:)();
  Fence.Schedule.Matcher.interval(containingDate:)();
  v151(v123, v124);
  if ((*(v126 + 48))(v127, 1, v125) == 1)
  {
    v175 = v108;
    v128 = *(v0 + 504);
    sub_100002CE0(*(v0 + 192), &qword_1005B0BB0, &qword_1004D2830);
    v129 = Logger.logObject.getter();
    v130 = static os_log_type_t.error.getter();
    v131 = os_log_type_enabled(v129, v130);
    v132 = *(v0 + 480);
    v133 = *(v0 + 440);
    v169 = *(v0 + 432);
    v134 = *(v0 + 384);
    v164 = *(v0 + 376);
    v135 = *(v0 + 368);
    v137 = *(v0 + 344);
    v136 = *(v0 + 352);
    if (v131)
    {
      v159 = *(v0 + 448) + 8;
      v138 = swift_slowAlloc();
      *v138 = 0;
      _os_log_impl(&_mh_execute_header, v129, v130, "No valid interval for startDate", v138, 2u);
    }

    v175(v132, v133);
    (*(v136 + 8))(v135, v137);
    (*(v134 + 8))(v169, v164);
    goto LABEL_24;
  }

  (*(*(v0 + 208) + 32))(*(v0 + 216), *(v0 + 192), *(v0 + 200));
  v139 = async function pointer to daemon.getter[1];
  v140 = swift_task_alloc();
  *(v0 + 640) = v140;
  *v140 = v0;
  v140[1] = sub_100298C64;

  return daemon.getter();
}

uint64_t sub_100299FAC()
{
  v1 = v0[2];
  (*(v0[13] + 8))(v0[17], v0[12]);

  return _swift_task_switch(sub_10029A028, v1, 0);
}

uint64_t sub_10029A028()
{
  v1 = v0[83];
  v2 = v0[79];
  v3 = v0[55];
  v4 = v0[56];
  v50 = v0[54];
  v52 = v0[62];
  v5 = v0[48];
  v48 = v0[47];
  v44 = v0[60];
  v46 = v0[46];
  v7 = v0[43];
  v6 = v0[44];
  v8 = v0[26];
  v9 = v0[27];
  v10 = v0[25];

  (*(v8 + 8))(v9, v10);
  v2(v44, v3);
  (*(v6 + 8))(v46, v7);
  (*(v5 + 8))(v50, v48);
  v2(v52, v3);
  v53 = v0[87];
  v12 = v0[61];
  v11 = v0[62];
  v14 = v0[59];
  v13 = v0[60];
  v16 = v0[57];
  v15 = v0[58];
  v18 = v0[53];
  v17 = v0[54];
  v20 = v0[51];
  v19 = v0[52];
  v23 = v0[50];
  v24 = v0[49];
  v25 = v0[46];
  v26 = v0[45];
  v27 = v0[42];
  v28 = v0[39];
  v29 = v0[38];
  v30 = v0[35];
  v31 = v0[34];
  v32 = v0[31];
  v33 = v0[30];
  v34 = v0[27];
  v35 = v0[24];
  v36 = v0[23];
  v37 = v0[20];
  v38 = v0[19];
  v39 = v0[17];
  v40 = v0[16];
  v41 = v0[15];
  v42 = v0[14];
  v43 = v0[11];
  v45 = v0[10];
  v47 = v0[9];
  v49 = v0[6];
  v51 = v0[5];

  v21 = v0[1];

  return v21();
}

uint64_t sub_10029A2EC()
{
  v2 = *v1;
  v3 = *(*v1 + 736);
  v4 = *v1;
  v2[93] = v0;

  v5 = v2[89];
  v6 = v2[88];
  if (v0)
  {
    v7 = v2[74];
    v8 = v2[16];
    v9 = v2[12];
    v10 = v2[2];
    v6(v8, v9);

    v11 = sub_10029DF18;
    v12 = v10;
  }

  else
  {
    v13 = v2[2];
    v6(v2[16], v2[12]);
    v11 = sub_10029A468;
    v12 = v13;
  }

  return _swift_task_switch(v11, v12, 0);
}

uint64_t sub_10029A468()
{
  v279 = v0;
  v1 = *(v0 + 728);
  v2 = *(v0 + 152);
  v3 = (*(v0 + 720))(v2, 1, *(v0 + 168));
  sub_100002CE0(v2, &qword_1005B0B98, &qword_1004D27F0);
  if (v3 == 1)
  {
    v4 = *(v0 + 904);
    v5 = *(v0 + 88);
    v6 = *(v0 + 56);
    v7 = *(v0 + 64);
    (*(v7 + 16))(v5, *(v0 + 184) + *(*(v0 + 168) + 24), v6);
    v8 = (*(v7 + 88))(v5, v6);
    if (v8 == v4)
    {
      v9 = *(v0 + 904);
      v10 = *(v0 + 480);
      v11 = *(v0 + 432);
      v12 = *(v0 + 120);
      v14 = *(v0 + 80);
      v13 = *(v0 + 88);
      v15 = *(v0 + 56);
      v16 = *(v0 + 64);
      v268 = *(v0 + 48);
      (*(v16 + 96))(v13, v15);
      *(v0 + 752) = *v13;
      v17 = sub_1002A953C();
      *(v0 + 760) = v17;
      Fence.id.getter();
      *v14 = v17;
      (*(v16 + 104))(v14, v9, v15);
      v18 = v17;
      Fence.TriggerID.init()();
      v19 = swift_task_alloc();
      *(v0 + 768) = v19;
      *v19 = v0;
      v19[1] = sub_10029B8A8;
      v20 = *(v0 + 120);
      v21 = *(v0 + 80);
      v22 = *(v0 + 48);
      v23 = *(v0 + 16);

      return sub_100289330(v20, v21, v22);
    }

    if (v8 == *(v0 + 908))
    {
      v39 = *(v0 + 624);
      v40 = *(v0 + 616);
      v41 = *(v0 + 504);
      v42 = *(v0 + 480);
      v43 = *(v0 + 432);
      v44 = *(v0 + 416);
      v45 = *(v0 + 376);
      v46 = *(v0 + 88);
      (*(*(v0 + 64) + 96))(v46, *(v0 + 56));
      *(v0 + 776) = *v46;
      v47 = sub_1002A953C();
      *(v0 + 784) = v47;
      v40(v44, v43, v45);
      v48 = Logger.logObject.getter();
      v49 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v48, v49))
      {
        v247 = *(v0 + 704);
        v253 = *(v0 + 712);
        v242 = *(v0 + 416);
        v50 = *(v0 + 384);
        v261 = *(v0 + 376);
        v51 = *(v0 + 120);
        v52 = *(v0 + 96);
        v53 = swift_slowAlloc();
        v270 = swift_slowAlloc();
        v278[0] = v270;
        *v53 = 136446210;
        Fence.id.getter();
        sub_1002AB19C(&qword_1005AE800, &type metadata accessor for Fence.ID);
        v54 = dispatch thunk of CustomStringConvertible.description.getter();
        v55 = v47;
        v57 = v56;
        v247(v51, v52);
        v58 = *(v50 + 8);
        v58(v242, v261);
        v59 = sub_10000D01C(v54, v57, v278);
        v47 = v55;

        *(v53 + 4) = v59;
        _os_log_impl(&_mh_execute_header, v48, v49, "Schedule Timer about to trigger fence: %{public}s", v53, 0xCu);
        sub_100004984(v270);
      }

      else
      {
        v182 = *(v0 + 416);
        v184 = *(v0 + 376);
        v183 = *(v0 + 384);

        v58 = *(v183 + 8);
        v58(v182, v184);
      }

      *(v0 + 792) = v58;
      v185 = *(v0 + 908);
      v186 = *(v0 + 432);
      v187 = *(v0 + 112);
      v188 = *(v0 + 64);
      v189 = *(v0 + 72);
      v190 = *(v0 + 56);
      v191 = *(v0 + 40);
      Fence.id.getter();
      Fence.TriggerID.init()();
      *v189 = v47;
      (*(v188 + 104))(v189, v185, v190);
      v192 = v47;
      v193 = swift_task_alloc();
      *(v0 + 800) = v193;
      *v193 = v0;
      v193[1] = sub_10029C4A4;
      v194 = *(v0 + 112);
      v195 = *(v0 + 72);
      v196 = *(v0 + 40);
      v197 = *(v0 + 16);

      return sub_100274D00(v194, v196, v195);
    }

    if (v8 != *(v0 + 912))
    {
      return _assertionFailure(_:_:file:line:flags:)();
    }

    v168 = *(v0 + 624);
    v169 = *(v0 + 504);
    (*(v0 + 616))(*(v0 + 408), *(v0 + 432), *(v0 + 376));
    v170 = Logger.logObject.getter();
    v171 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v170, v171))
    {
      v216 = *(v0 + 704);
      v218 = *(v0 + 712);
      v230 = *(v0 + 664);
      v258 = *(v0 + 480);
      v266 = *(v0 + 632);
      v244 = *(v0 + 440);
      v276 = *(v0 + 432);
      v172 = *(v0 + 408);
      v212 = *(v0 + 384);
      v214 = *(v0 + 376);
      v250 = *(v0 + 368);
      v234 = *(v0 + 352);
      v239 = *(v0 + 344);
      v224 = *(v0 + 200);
      v226 = *(v0 + 216);
      v220 = *(v0 + 184);
      v222 = *(v0 + 208);
      v173 = *(v0 + 120);
      v228 = *(v0 + 448) + 8;
      v174 = *(v0 + 96);
      v175 = swift_slowAlloc();
      v176 = swift_slowAlloc();
      v278[0] = v176;
      *v175 = 136446210;
      Fence.id.getter();
      sub_1002AB19C(&qword_1005AE800, &type metadata accessor for Fence.ID);
      v177 = dispatch thunk of CustomStringConvertible.description.getter();
      v179 = v178;
      v216(v173, v174);
      v180 = *(v212 + 8);
      v180(v172, v214);
      v181 = sub_10000D01C(v177, v179, v278);

      *(v175 + 4) = v181;
      _os_log_impl(&_mh_execute_header, v170, v171, "TriggerPosition is .undetermined for fence: %{public}s", v175, 0xCu);
      sub_100004984(v176);

      sub_1002AB248(v220);
      (*(v222 + 8))(v226, v224);
      v266(v258, v244);
      (*(v234 + 8))(v250, v239);
      v180(v276, v214);
    }

    else
    {
      v198 = *(v0 + 664);
      v259 = *(v0 + 480);
      v267 = *(v0 + 632);
      v199 = *(v0 + 448);
      v245 = *(v0 + 440);
      v277 = *(v0 + 432);
      v200 = *(v0 + 408);
      v201 = *(v0 + 376);
      v202 = *(v0 + 384);
      v251 = *(v0 + 368);
      v203 = v170;
      v204 = *(v0 + 352);
      v205 = *(v0 + 208);
      v235 = *(v0 + 216);
      v240 = *(v0 + 344);
      v206 = *(v0 + 200);
      v207 = *(v0 + 184);

      v208 = *(v202 + 8);
      v208(v200, v201);
      sub_1002AB248(v207);
      (*(v205 + 8))(v235, v206);
      v267(v259, v245);
      (*(v204 + 8))(v251, v240);
      v208(v277, v201);
    }

    (*(*(v0 + 64) + 8))(*(v0 + 88), *(v0 + 56));
  }

  else
  {
    v25 = *(v0 + 624);
    v26 = *(v0 + 504);
    (*(v0 + 616))(*(v0 + 424), *(v0 + 432), *(v0 + 376));
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v215 = *(v0 + 704);
      v217 = *(v0 + 712);
      v229 = *(v0 + 664);
      v252 = *(v0 + 480);
      v260 = *(v0 + 632);
      v241 = *(v0 + 440);
      v29 = *(v0 + 424);
      v269 = *(v0 + 432);
      v211 = *(v0 + 384);
      v213 = *(v0 + 376);
      v246 = *(v0 + 368);
      v231 = *(v0 + 352);
      v236 = *(v0 + 344);
      v223 = *(v0 + 200);
      v225 = *(v0 + 216);
      v219 = *(v0 + 184);
      v221 = *(v0 + 208);
      v30 = *(v0 + 120);
      v227 = *(v0 + 448) + 8;
      v31 = *(v0 + 96);
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v278[0] = v33;
      *v32 = 136446210;
      Fence.id.getter();
      sub_1002AB19C(&qword_1005AE800, &type metadata accessor for Fence.ID);
      v34 = dispatch thunk of CustomStringConvertible.description.getter();
      v36 = v35;
      v215(v30, v31);
      v37 = *(v211 + 8);
      v37(v29, v213);
      v38 = sub_10000D01C(v34, v36, v278);

      *(v32 + 4) = v38;
      _os_log_impl(&_mh_execute_header, v27, v28, "Not triggering fence (fence already triggered in current scheduleInterval): %{public}s", v32, 0xCu);
      sub_100004984(v33);

      sub_1002AB248(v219);
      (*(v221 + 8))(v225, v223);
      v260(v252, v241);
      (*(v231 + 8))(v246, v236);
      v37(v269, v213);
    }

    else
    {
      v60 = *(v0 + 664);
      v254 = *(v0 + 480);
      v262 = *(v0 + 632);
      v61 = *(v0 + 448);
      v243 = *(v0 + 440);
      v62 = *(v0 + 424);
      v271 = *(v0 + 432);
      v63 = *(v0 + 376);
      v64 = *(v0 + 384);
      v248 = *(v0 + 368);
      v65 = v27;
      v66 = *(v0 + 352);
      v67 = *(v0 + 208);
      v232 = *(v0 + 216);
      v237 = *(v0 + 344);
      v68 = *(v0 + 200);
      v69 = *(v0 + 184);

      v70 = *(v64 + 8);
      v70(v62, v63);
      sub_1002AB248(v69);
      (*(v67 + 8))(v232, v68);
      v262(v254, v243);
      (*(v66 + 8))(v248, v237);
      v70(v271, v63);
    }
  }

  v71 = *(v0 + 608) + 1;
  if (v71 == *(v0 + 600))
  {
LABEL_13:
    v72 = *(v0 + 592);

    v73 = swift_task_alloc();
    *(v0 + 816) = v73;
    *v73 = v0;
    v73[1] = sub_10029D0C8;
    v74 = *(v0 + 16);

    return sub_1002A9688();
  }

  while (1)
  {
    *(v0 + 608) = v71;
    v75 = *(v0 + 592);
    if (v71 >= *(v75 + 16))
    {
      __break(1u);
      return daemon.getter();
    }

    v76 = *(v0 + 892);
    v77 = *(v0 + 432);
    v78 = *(v0 + 376);
    v79 = *(v0 + 384);
    v81 = *(v0 + 328);
    v80 = *(v0 + 336);
    v82 = *(v0 + 320);
    v83 = *(v79 + 16);
    v79 += 16;
    v84 = v75 + ((*(v0 + 888) + 32) & ~*(v0 + 888)) + *(v79 + 56) * v71;
    *(v0 + 616) = v83;
    *(v0 + 624) = v79 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v83(v77, v84, v78);
    Fence.variant.getter();
    if ((*(v81 + 88))(v80, v82) == v76)
    {
      break;
    }

    v106 = *(v0 + 432);
    v107 = *(v0 + 376);
    v108 = *(v0 + 384);
    v110 = *(v0 + 328);
    v109 = *(v0 + 336);
    v111 = *(v0 + 320);
LABEL_27:
    (*(v108 + 8))(v106, v107);
    (*(v110 + 8))(v109, v111);
LABEL_28:
    v71 = *(v0 + 608) + 1;
    if (v71 == *(v0 + 600))
    {
      goto LABEL_13;
    }
  }

  v272 = *(v0 + 896);
  v85 = *(v0 + 432);
  v86 = *(v0 + 368);
  v88 = *(v0 + 344);
  v87 = *(v0 + 352);
  v89 = *(v0 + 336);
  v90 = *(v0 + 312);
  v91 = *(v0 + 296);
  v92 = *(v0 + 304);
  v93 = *(v0 + 288);
  (*(*(v0 + 328) + 96))(v89, *(v0 + 320));
  (*(v87 + 32))(v86, v89, v88);
  Fence.acceptanceStatus.getter();
  (*(v91 + 104))(v92, v272, v93);
  LOBYTE(v85) = static Fence.AcceptanceStatus.== infix(_:_:)();
  v94 = *(v91 + 8);
  v94(v92, v93);
  v94(v90, v93);
  if ((v85 & 1) == 0)
  {
    goto LABEL_26;
  }

  v95 = *(v0 + 900);
  v96 = *(v0 + 432);
  v98 = *(v0 + 272);
  v97 = *(v0 + 280);
  v100 = *(v0 + 256);
  v99 = *(v0 + 264);
  Fence.finder.getter();
  (*(v99 + 104))(v98, v95, v100);
  LOBYTE(v96) = static Fence.Participant.== infix(_:_:)();
  v101 = *(v99 + 8);
  v101(v98, v100);
  v101(v97, v100);
  if ((v96 & 1) == 0)
  {
LABEL_26:
    v109 = *(v0 + 432);
    v111 = *(v0 + 376);
    v110 = *(v0 + 384);
    v106 = *(v0 + 368);
    v107 = *(v0 + 344);
    v108 = *(v0 + 352);
    goto LABEL_27;
  }

  v102 = *(v0 + 440);
  v103 = *(v0 + 448);
  v104 = *(v0 + 432);
  v105 = *(v0 + 248);
  Fence.muteEndDate.getter();
  if ((*(v103 + 48))(v105, 1, v102) != 1)
  {
    v112 = *(v0 + 488);
    v113 = *(v0 + 440);
    v114 = *(v0 + 448);
    (*(v114 + 32))(v112, *(v0 + 248), v113);
    sub_1002AB19C(&qword_1005B0BF0, &type metadata accessor for Date);
    v115 = dispatch thunk of static Comparable.< infix(_:_:)();
    (*(v114 + 8))(v112, v113);
    if (v115)
    {
      goto LABEL_24;
    }

    goto LABEL_26;
  }

  sub_100002CE0(*(v0 + 248), &unk_1005AE5B0, &qword_1004C32F0);
LABEL_24:
  v116 = *(v0 + 496);
  v118 = *(v0 + 472);
  v117 = *(v0 + 480);
  v255 = *(v0 + 464);
  v263 = *(v0 + 456);
  v273 = *(v0 + 504);
  v120 = *(v0 + 440);
  v119 = *(v0 + 448);
  v122 = *(v0 + 232);
  v121 = *(v0 + 240);
  v123 = *(v0 + 224);
  v238 = *(*(v0 + 352) + 16);
  v238(*(v0 + 360), *(v0 + 368), *(v0 + 344));
  Fence.Schedule.Matcher.init(schedule:)();
  Fence.Schedule.Matcher.previousStartDate(from:)();
  v233 = *(v122 + 8);
  v233(v121, v123);
  v124 = *(v119 + 16);
  v124(v118, v117, v120);
  v124(v255, v116, v120);
  v124(v263, v117, v120);
  v125 = Logger.logObject.getter();
  v126 = static os_log_type_t.default.getter();
  v127 = os_log_type_enabled(v125, v126);
  v129 = *(v0 + 464);
  v128 = *(v0 + 472);
  v131 = *(v0 + 448);
  v130 = *(v0 + 456);
  v132 = *(v0 + 440);
  if (v127)
  {
    v264 = v126;
    v133 = swift_slowAlloc();
    v274 = swift_slowAlloc();
    v278[0] = v274;
    *v133 = 136446466;
    v256 = v129;
    v134 = Date.localISO8601.getter();
    v136 = v135;
    v137 = *(v131 + 8);
    v137(v128, v132);
    v138 = sub_10000D01C(v134, v136, v278);

    *(v133 + 4) = v138;
    *(v133 + 12) = 2050;
    Date.timeIntervalSince(_:)();
    v140 = v139;
    v137(v130, v132);
    v137(v256, v132);
    *(v133 + 14) = v140;
    _os_log_impl(&_mh_execute_header, v125, v264, "schedulerTimerFired: startDate: %{public}s timeDelta: %{public}f", v133, 0x16u);
    sub_100004984(v274);
  }

  else
  {

    v137 = *(v131 + 8);
    v137(v130, v132);
    v137(v129, v132);
    v137(v128, v132);
  }

  *(v0 + 632) = v137;
  v141 = *(v0 + 496);
  v142 = *(v0 + 480);
  Date.timeIntervalSince(_:)();
  v143 = *(v0 + 480);
  if (v144 > 300.0)
  {
    v145 = *(v0 + 432);
    v146 = *(v0 + 376);
    v147 = *(v0 + 384);
    v148 = *(v0 + 368);
    v149 = *(v0 + 344);
    v150 = *(v0 + 352);
    v151 = *(v0 + 448) + 8;
    v137(*(v0 + 480), *(v0 + 440));
    (*(v150 + 8))(v148, v149);
    (*(v147 + 8))(v145, v146);
    goto LABEL_28;
  }

  v152 = *(v0 + 240);
  v153 = *(v0 + 224);
  v154 = *(v0 + 200);
  v155 = *(v0 + 208);
  v156 = *(v0 + 192);
  v238(*(v0 + 360), *(v0 + 368), *(v0 + 344));
  Fence.Schedule.Matcher.init(schedule:)();
  Fence.Schedule.Matcher.interval(containingDate:)();
  v233(v152, v153);
  if ((*(v155 + 48))(v156, 1, v154) == 1)
  {
    v275 = v137;
    v157 = *(v0 + 504);
    sub_100002CE0(*(v0 + 192), &qword_1005B0BB0, &qword_1004D2830);
    v158 = Logger.logObject.getter();
    v159 = static os_log_type_t.error.getter();
    v160 = os_log_type_enabled(v158, v159);
    v161 = *(v0 + 480);
    v162 = *(v0 + 440);
    v163 = *(v0 + 384);
    v257 = *(v0 + 376);
    v265 = *(v0 + 432);
    v164 = *(v0 + 368);
    v166 = *(v0 + 344);
    v165 = *(v0 + 352);
    if (v160)
    {
      v249 = *(v0 + 448) + 8;
      v167 = swift_slowAlloc();
      *v167 = 0;
      _os_log_impl(&_mh_execute_header, v158, v159, "No valid interval for startDate", v167, 2u);
    }

    v275(v161, v162);
    (*(v165 + 8))(v164, v166);
    (*(v163 + 8))(v265, v257);
    goto LABEL_28;
  }

  (*(*(v0 + 208) + 32))(*(v0 + 216), *(v0 + 192), *(v0 + 200));
  v209 = async function pointer to daemon.getter[1];
  v210 = swift_task_alloc();
  *(v0 + 640) = v210;
  *v210 = v0;
  v210[1] = sub_100298C64;

  return daemon.getter();
}

uint64_t sub_10029B8A8()
{
  v1 = *(*v0 + 768);
  v13 = *(*v0 + 712);
  v12 = *(*v0 + 704);
  v2 = *(*v0 + 120);
  v3 = *(*v0 + 96);
  v4 = *(*v0 + 80);
  v5 = *(*v0 + 64);
  v6 = *(*v0 + 56);
  v7 = *(*v0 + 48);
  v8 = *(*v0 + 32);
  v9 = *(*v0 + 24);
  v10 = *(*v0 + 16);
  v14 = *v0;

  (*(v8 + 8))(v7, v9);
  (*(v5 + 8))(v4, v6);
  v12(v2, v3);

  return _swift_task_switch(sub_10029BAE8, v10, 0);
}

uint64_t sub_10029BAE8()
{
  v132 = v0;
  v1 = *(v0 + 760);
  v2 = *(v0 + 664);
  v3 = *(v0 + 448);
  v111 = *(v0 + 440);
  v126 = *(v0 + 432);
  v4 = *(v0 + 384);
  v118 = *(v0 + 632);
  v122 = *(v0 + 376);
  v115 = *(v0 + 480);
  v116 = *(v0 + 368);
  v5 = *(v0 + 352);
  v113 = *(v0 + 344);
  v6 = *(v0 + 208);
  v7 = *(v0 + 216);
  v8 = *(v0 + 200);
  v9 = *(v0 + 184);

  sub_1002AB248(v9);
  (*(v6 + 8))(v7, v8);
  v118(v115, v111);
  (*(v5 + 8))(v116, v113);
  (*(v4 + 8))(v126, v122);
  v10 = *(v0 + 608) + 1;
  if (v10 == *(v0 + 600))
  {
LABEL_2:
    v11 = *(v0 + 592);

    v12 = swift_task_alloc();
    *(v0 + 816) = v12;
    *v12 = v0;
    v12[1] = sub_10029D0C8;
    v13 = *(v0 + 16);

    return sub_1002A9688();
  }

  while (1)
  {
    *(v0 + 608) = v10;
    v15 = *(v0 + 592);
    if (v10 >= *(v15 + 16))
    {
      __break(1u);
      return daemon.getter();
    }

    v16 = *(v0 + 892);
    v17 = *(v0 + 432);
    v18 = *(v0 + 376);
    v19 = *(v0 + 384);
    v21 = *(v0 + 328);
    v20 = *(v0 + 336);
    v22 = *(v0 + 320);
    v23 = *(v19 + 16);
    v19 += 16;
    v24 = v15 + ((*(v0 + 888) + 32) & ~*(v0 + 888)) + *(v19 + 56) * v10;
    *(v0 + 616) = v23;
    *(v0 + 624) = v19 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v23(v17, v24, v18);
    Fence.variant.getter();
    if ((*(v21 + 88))(v20, v22) == v16)
    {
      break;
    }

    v46 = *(v0 + 432);
    v47 = *(v0 + 376);
    v48 = *(v0 + 384);
    v50 = *(v0 + 328);
    v49 = *(v0 + 336);
    v51 = *(v0 + 320);
LABEL_16:
    (*(v48 + 8))(v46, v47);
    (*(v50 + 8))(v49, v51);
LABEL_17:
    v10 = *(v0 + 608) + 1;
    if (v10 == *(v0 + 600))
    {
      goto LABEL_2;
    }
  }

  v127 = *(v0 + 896);
  v25 = *(v0 + 432);
  v26 = *(v0 + 368);
  v28 = *(v0 + 344);
  v27 = *(v0 + 352);
  v29 = *(v0 + 336);
  v30 = *(v0 + 312);
  v31 = *(v0 + 296);
  v32 = *(v0 + 304);
  v33 = *(v0 + 288);
  (*(*(v0 + 328) + 96))(v29, *(v0 + 320));
  (*(v27 + 32))(v26, v29, v28);
  Fence.acceptanceStatus.getter();
  (*(v31 + 104))(v32, v127, v33);
  LOBYTE(v25) = static Fence.AcceptanceStatus.== infix(_:_:)();
  v34 = *(v31 + 8);
  v34(v32, v33);
  v34(v30, v33);
  if ((v25 & 1) == 0)
  {
    goto LABEL_15;
  }

  v35 = *(v0 + 900);
  v36 = *(v0 + 432);
  v38 = *(v0 + 272);
  v37 = *(v0 + 280);
  v40 = *(v0 + 256);
  v39 = *(v0 + 264);
  Fence.finder.getter();
  (*(v39 + 104))(v38, v35, v40);
  LOBYTE(v36) = static Fence.Participant.== infix(_:_:)();
  v41 = *(v39 + 8);
  v41(v38, v40);
  v41(v37, v40);
  if ((v36 & 1) == 0)
  {
LABEL_15:
    v49 = *(v0 + 432);
    v51 = *(v0 + 376);
    v50 = *(v0 + 384);
    v46 = *(v0 + 368);
    v47 = *(v0 + 344);
    v48 = *(v0 + 352);
    goto LABEL_16;
  }

  v42 = *(v0 + 440);
  v43 = *(v0 + 448);
  v44 = *(v0 + 432);
  v45 = *(v0 + 248);
  Fence.muteEndDate.getter();
  if ((*(v43 + 48))(v45, 1, v42) != 1)
  {
    v52 = *(v0 + 488);
    v53 = *(v0 + 440);
    v54 = *(v0 + 448);
    (*(v54 + 32))(v52, *(v0 + 248), v53);
    sub_1002AB19C(&qword_1005B0BF0, &type metadata accessor for Date);
    v55 = dispatch thunk of static Comparable.< infix(_:_:)();
    (*(v54 + 8))(v52, v53);
    if (v55)
    {
      goto LABEL_13;
    }

    goto LABEL_15;
  }

  sub_100002CE0(*(v0 + 248), &unk_1005AE5B0, &qword_1004C32F0);
LABEL_13:
  v56 = *(v0 + 496);
  v58 = *(v0 + 472);
  v57 = *(v0 + 480);
  v119 = *(v0 + 464);
  v123 = *(v0 + 456);
  v128 = *(v0 + 504);
  v60 = *(v0 + 440);
  v59 = *(v0 + 448);
  v62 = *(v0 + 232);
  v61 = *(v0 + 240);
  v63 = *(v0 + 224);
  v114 = *(*(v0 + 352) + 16);
  v114(*(v0 + 360), *(v0 + 368), *(v0 + 344));
  Fence.Schedule.Matcher.init(schedule:)();
  Fence.Schedule.Matcher.previousStartDate(from:)();
  v112 = *(v62 + 8);
  v112(v61, v63);
  v64 = *(v59 + 16);
  v64(v58, v57, v60);
  v64(v119, v56, v60);
  v64(v123, v57, v60);
  v65 = Logger.logObject.getter();
  v66 = static os_log_type_t.default.getter();
  v67 = os_log_type_enabled(v65, v66);
  v69 = *(v0 + 464);
  v68 = *(v0 + 472);
  v71 = *(v0 + 448);
  v70 = *(v0 + 456);
  v72 = *(v0 + 440);
  if (v67)
  {
    v124 = v66;
    v73 = swift_slowAlloc();
    v129 = swift_slowAlloc();
    v131 = v129;
    *v73 = 136446466;
    v120 = v69;
    v74 = Date.localISO8601.getter();
    v76 = v75;
    v77 = *(v71 + 8);
    v77(v68, v72);
    v78 = sub_10000D01C(v74, v76, &v131);

    *(v73 + 4) = v78;
    *(v73 + 12) = 2050;
    Date.timeIntervalSince(_:)();
    v80 = v79;
    v77(v70, v72);
    v77(v120, v72);
    *(v73 + 14) = v80;
    _os_log_impl(&_mh_execute_header, v65, v124, "schedulerTimerFired: startDate: %{public}s timeDelta: %{public}f", v73, 0x16u);
    sub_100004984(v129);
  }

  else
  {

    v77 = *(v71 + 8);
    v77(v70, v72);
    v77(v69, v72);
    v77(v68, v72);
  }

  *(v0 + 632) = v77;
  v81 = *(v0 + 496);
  v82 = *(v0 + 480);
  Date.timeIntervalSince(_:)();
  v83 = *(v0 + 480);
  if (v84 > 300.0)
  {
    v85 = *(v0 + 432);
    v86 = *(v0 + 376);
    v87 = *(v0 + 384);
    v88 = *(v0 + 368);
    v89 = *(v0 + 344);
    v90 = *(v0 + 352);
    v91 = *(v0 + 448) + 8;
    v77(*(v0 + 480), *(v0 + 440));
    (*(v90 + 8))(v88, v89);
    (*(v87 + 8))(v85, v86);
    goto LABEL_17;
  }

  v92 = *(v0 + 240);
  v93 = *(v0 + 224);
  v94 = *(v0 + 200);
  v95 = *(v0 + 208);
  v96 = *(v0 + 192);
  v114(*(v0 + 360), *(v0 + 368), *(v0 + 344));
  Fence.Schedule.Matcher.init(schedule:)();
  Fence.Schedule.Matcher.interval(containingDate:)();
  v112(v92, v93);
  if ((*(v95 + 48))(v96, 1, v94) == 1)
  {
    v130 = v77;
    v97 = *(v0 + 504);
    sub_100002CE0(*(v0 + 192), &qword_1005B0BB0, &qword_1004D2830);
    v98 = Logger.logObject.getter();
    v99 = static os_log_type_t.error.getter();
    v100 = os_log_type_enabled(v98, v99);
    v101 = *(v0 + 480);
    v102 = *(v0 + 440);
    v103 = *(v0 + 376);
    v104 = *(v0 + 384);
    v121 = v103;
    v125 = *(v0 + 432);
    v105 = *(v0 + 368);
    v107 = *(v0 + 344);
    v106 = *(v0 + 352);
    if (v100)
    {
      v117 = *(v0 + 448) + 8;
      v108 = swift_slowAlloc();
      *v108 = 0;
      _os_log_impl(&_mh_execute_header, v98, v99, "No valid interval for startDate", v108, 2u);
    }

    v130(v101, v102);
    (*(v106 + 8))(v105, v107);
    (*(v104 + 8))(v125, v121);
    goto LABEL_17;
  }

  (*(*(v0 + 208) + 32))(*(v0 + 216), *(v0 + 192), *(v0 + 200));
  v109 = async function pointer to daemon.getter[1];
  v110 = swift_task_alloc();
  *(v0 + 640) = v110;
  *v110 = v0;
  v110[1] = sub_100298C64;

  return daemon.getter();
}

uint64_t sub_10029C4A4()
{
  v2 = *v1;
  v3 = *(*v1 + 800);
  v17 = *(*v1 + 712);
  v16 = *(*v1 + 704);
  v15 = *(*v1 + 112);
  v14 = *(*v1 + 96);
  v4 = *(*v1 + 72);
  v5 = *(*v1 + 64);
  v6 = *(*v1 + 56);
  v7 = *(*v1 + 40);
  v8 = *(*v1 + 32);
  v9 = *(*v1 + 24);
  v10 = *v1;
  *(*v1 + 808) = v0;

  (*(v5 + 8))(v4, v6);
  (*(v8 + 8))(v7, v9);
  v16(v15, v14);
  v11 = *(v2 + 16);
  if (v0)
  {
    v12 = sub_10029E1EC;
  }

  else
  {
    v12 = sub_10029C700;
  }

  return _swift_task_switch(v12, v11, 0);
}

uint64_t sub_10029C700()
{
  v133 = v0;
  v1 = *(v0 + 784);
  v2 = *(v0 + 664);
  v114 = *(v0 + 480);
  v3 = *(v0 + 448);
  v111 = *(v0 + 440);
  v123 = *(v0 + 432);
  v127 = *(v0 + 792);
  v4 = *(v0 + 384);
  v117 = *(v0 + 632);
  v119 = *(v0 + 376);
  v116 = *(v0 + 368);
  v5 = *(v0 + 352);
  v112 = *(v0 + 344);
  v6 = *(v0 + 208);
  v7 = *(v0 + 216);
  v8 = *(v0 + 200);
  v9 = *(v0 + 184);

  sub_1002AB248(v9);
  (*(v6 + 8))(v7, v8);
  v117(v114, v111);
  (*(v5 + 8))(v116, v112);
  v127(v123, v119);
  v10 = *(v0 + 608) + 1;
  if (v10 == *(v0 + 600))
  {
LABEL_2:
    v11 = *(v0 + 592);

    v12 = swift_task_alloc();
    *(v0 + 816) = v12;
    *v12 = v0;
    v12[1] = sub_10029D0C8;
    v13 = *(v0 + 16);

    return sub_1002A9688();
  }

  while (1)
  {
    *(v0 + 608) = v10;
    v15 = *(v0 + 592);
    if (v10 >= *(v15 + 16))
    {
      __break(1u);
      return daemon.getter();
    }

    v16 = *(v0 + 892);
    v17 = *(v0 + 432);
    v18 = *(v0 + 376);
    v19 = *(v0 + 384);
    v21 = *(v0 + 328);
    v20 = *(v0 + 336);
    v22 = *(v0 + 320);
    v23 = *(v19 + 16);
    v19 += 16;
    v24 = v15 + ((*(v0 + 888) + 32) & ~*(v0 + 888)) + *(v19 + 56) * v10;
    *(v0 + 616) = v23;
    *(v0 + 624) = v19 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v23(v17, v24, v18);
    Fence.variant.getter();
    if ((*(v21 + 88))(v20, v22) == v16)
    {
      break;
    }

    v46 = *(v0 + 432);
    v47 = *(v0 + 376);
    v48 = *(v0 + 384);
    v50 = *(v0 + 328);
    v49 = *(v0 + 336);
    v51 = *(v0 + 320);
LABEL_16:
    (*(v48 + 8))(v46, v47);
    (*(v50 + 8))(v49, v51);
LABEL_17:
    v10 = *(v0 + 608) + 1;
    if (v10 == *(v0 + 600))
    {
      goto LABEL_2;
    }
  }

  v128 = *(v0 + 896);
  v25 = *(v0 + 432);
  v26 = *(v0 + 368);
  v28 = *(v0 + 344);
  v27 = *(v0 + 352);
  v29 = *(v0 + 336);
  v30 = *(v0 + 312);
  v31 = *(v0 + 296);
  v32 = *(v0 + 304);
  v33 = *(v0 + 288);
  (*(*(v0 + 328) + 96))(v29, *(v0 + 320));
  (*(v27 + 32))(v26, v29, v28);
  Fence.acceptanceStatus.getter();
  (*(v31 + 104))(v32, v128, v33);
  LOBYTE(v25) = static Fence.AcceptanceStatus.== infix(_:_:)();
  v34 = *(v31 + 8);
  v34(v32, v33);
  v34(v30, v33);
  if ((v25 & 1) == 0)
  {
    goto LABEL_15;
  }

  v35 = *(v0 + 900);
  v36 = *(v0 + 432);
  v38 = *(v0 + 272);
  v37 = *(v0 + 280);
  v40 = *(v0 + 256);
  v39 = *(v0 + 264);
  Fence.finder.getter();
  (*(v39 + 104))(v38, v35, v40);
  LOBYTE(v36) = static Fence.Participant.== infix(_:_:)();
  v41 = *(v39 + 8);
  v41(v38, v40);
  v41(v37, v40);
  if ((v36 & 1) == 0)
  {
LABEL_15:
    v49 = *(v0 + 432);
    v51 = *(v0 + 376);
    v50 = *(v0 + 384);
    v46 = *(v0 + 368);
    v47 = *(v0 + 344);
    v48 = *(v0 + 352);
    goto LABEL_16;
  }

  v42 = *(v0 + 440);
  v43 = *(v0 + 448);
  v44 = *(v0 + 432);
  v45 = *(v0 + 248);
  Fence.muteEndDate.getter();
  if ((*(v43 + 48))(v45, 1, v42) != 1)
  {
    v52 = *(v0 + 488);
    v53 = *(v0 + 440);
    v54 = *(v0 + 448);
    (*(v54 + 32))(v52, *(v0 + 248), v53);
    sub_1002AB19C(&qword_1005B0BF0, &type metadata accessor for Date);
    v55 = dispatch thunk of static Comparable.< infix(_:_:)();
    (*(v54 + 8))(v52, v53);
    if (v55)
    {
      goto LABEL_13;
    }

    goto LABEL_15;
  }

  sub_100002CE0(*(v0 + 248), &unk_1005AE5B0, &qword_1004C32F0);
LABEL_13:
  v56 = *(v0 + 496);
  v58 = *(v0 + 472);
  v57 = *(v0 + 480);
  v120 = *(v0 + 464);
  v124 = *(v0 + 456);
  v129 = *(v0 + 504);
  v60 = *(v0 + 440);
  v59 = *(v0 + 448);
  v62 = *(v0 + 232);
  v61 = *(v0 + 240);
  v63 = *(v0 + 224);
  v115 = *(*(v0 + 352) + 16);
  v115(*(v0 + 360), *(v0 + 368), *(v0 + 344));
  Fence.Schedule.Matcher.init(schedule:)();
  Fence.Schedule.Matcher.previousStartDate(from:)();
  v113 = *(v62 + 8);
  v113(v61, v63);
  v64 = *(v59 + 16);
  v64(v58, v57, v60);
  v64(v120, v56, v60);
  v64(v124, v57, v60);
  v65 = Logger.logObject.getter();
  v66 = static os_log_type_t.default.getter();
  v67 = os_log_type_enabled(v65, v66);
  v69 = *(v0 + 464);
  v68 = *(v0 + 472);
  v71 = *(v0 + 448);
  v70 = *(v0 + 456);
  v72 = *(v0 + 440);
  if (v67)
  {
    v125 = v66;
    v73 = swift_slowAlloc();
    v130 = swift_slowAlloc();
    v132 = v130;
    *v73 = 136446466;
    v121 = v69;
    v74 = Date.localISO8601.getter();
    v76 = v75;
    v77 = *(v71 + 8);
    v77(v68, v72);
    v78 = sub_10000D01C(v74, v76, &v132);

    *(v73 + 4) = v78;
    *(v73 + 12) = 2050;
    Date.timeIntervalSince(_:)();
    v80 = v79;
    v77(v70, v72);
    v77(v121, v72);
    *(v73 + 14) = v80;
    _os_log_impl(&_mh_execute_header, v65, v125, "schedulerTimerFired: startDate: %{public}s timeDelta: %{public}f", v73, 0x16u);
    sub_100004984(v130);
  }

  else
  {

    v77 = *(v71 + 8);
    v77(v70, v72);
    v77(v69, v72);
    v77(v68, v72);
  }

  *(v0 + 632) = v77;
  v81 = *(v0 + 496);
  v82 = *(v0 + 480);
  Date.timeIntervalSince(_:)();
  v83 = *(v0 + 480);
  if (v84 > 300.0)
  {
    v85 = *(v0 + 432);
    v86 = *(v0 + 376);
    v87 = *(v0 + 384);
    v88 = *(v0 + 368);
    v89 = *(v0 + 344);
    v90 = *(v0 + 352);
    v91 = *(v0 + 448) + 8;
    v77(*(v0 + 480), *(v0 + 440));
    (*(v90 + 8))(v88, v89);
    (*(v87 + 8))(v85, v86);
    goto LABEL_17;
  }

  v92 = *(v0 + 240);
  v93 = *(v0 + 224);
  v94 = *(v0 + 200);
  v95 = *(v0 + 208);
  v96 = *(v0 + 192);
  v115(*(v0 + 360), *(v0 + 368), *(v0 + 344));
  Fence.Schedule.Matcher.init(schedule:)();
  Fence.Schedule.Matcher.interval(containingDate:)();
  v113(v92, v93);
  if ((*(v95 + 48))(v96, 1, v94) == 1)
  {
    v131 = v77;
    v97 = *(v0 + 504);
    sub_100002CE0(*(v0 + 192), &qword_1005B0BB0, &qword_1004D2830);
    v98 = Logger.logObject.getter();
    v99 = static os_log_type_t.error.getter();
    v100 = os_log_type_enabled(v98, v99);
    v101 = *(v0 + 480);
    v102 = *(v0 + 440);
    v103 = *(v0 + 376);
    v104 = *(v0 + 384);
    v122 = v103;
    v126 = *(v0 + 432);
    v105 = *(v0 + 368);
    v107 = *(v0 + 344);
    v106 = *(v0 + 352);
    if (v100)
    {
      v118 = *(v0 + 448) + 8;
      v108 = swift_slowAlloc();
      *v108 = 0;
      _os_log_impl(&_mh_execute_header, v98, v99, "No valid interval for startDate", v108, 2u);
    }

    v131(v101, v102);
    (*(v106 + 8))(v105, v107);
    (*(v104 + 8))(v126, v122);
    goto LABEL_17;
  }

  (*(*(v0 + 208) + 32))(*(v0 + 216), *(v0 + 192), *(v0 + 200));
  v109 = async function pointer to daemon.getter[1];
  v110 = swift_task_alloc();
  *(v0 + 640) = v110;
  *v110 = v0;
  v110[1] = sub_100298C64;

  return daemon.getter();
}

uint64_t sub_10029D0C8()
{
  v1 = *v0;
  v2 = *(*v0 + 816);
  v6 = *v0;

  v3 = async function pointer to daemon.getter[1];
  v4 = swift_task_alloc();
  *(v1 + 824) = v4;
  *v4 = v6;
  v4[1] = sub_10029D1F4;

  return daemon.getter();
}

uint64_t sub_10029D1F4(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 824);
  v5 = *v1;
  v3[104] = a1;

  v6 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v7 = swift_task_alloc();
  v3[105] = v7;
  *v7 = v5;
  v7[1] = sub_10029D380;
  v8 = v3[70];
  v9 = v3[69];
  v10 = v3[68];
  v11 = v3[67];

  return ActorServiceDaemon.getService<A>()(v11, v10, v9, v8);
}

uint64_t sub_10029D380(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 840);
  v6 = *v2;
  *(*v2 + 848) = v1;

  if (v1)
  {
    v7 = v4[2];

    return _swift_task_switch(sub_10029DA28, v7, 0);
  }

  else
  {
    v8 = v4[104];

    v4[107] = a1;
    v9 = swift_task_alloc();
    v4[108] = v9;
    *v9 = v6;
    v9[1] = sub_10029D50C;

    return sub_100006424();
  }
}

uint64_t sub_10029D50C(uint64_t a1)
{
  v2 = *(*v1 + 864);
  v3 = *(*v1 + 16);
  v5 = *v1;
  *(*v1 + 872) = a1;

  return _swift_task_switch(sub_10029D624, v3, 0);
}

uint64_t sub_10029D624()
{
  v1 = v0[107];

  v2 = swift_task_alloc();
  v0[110] = v2;
  *v2 = v0;
  v2[1] = sub_10029D6C4;
  v3 = v0[109];
  v4 = v0[2];

  return sub_1000121BC(v3);
}

uint64_t sub_10029D6C4()
{
  v1 = *(*v0 + 880);
  v2 = *(*v0 + 872);
  v3 = *(*v0 + 16);
  v5 = *v0;

  return _swift_task_switch(sub_10029D7F0, v3, 0);
}

uint64_t sub_10029D7F0()
{
  v1 = v0[61];
  v3 = v0[59];
  v2 = v0[60];
  v4 = v0[57];
  v5 = v0[58];
  v7 = v0[53];
  v6 = v0[54];
  v8 = v0[52];
  v11 = v0[51];
  v12 = v0[50];
  v13 = v0[49];
  v14 = v0[46];
  v15 = v0[45];
  v16 = v0[42];
  v17 = v0[39];
  v18 = v0[38];
  v19 = v0[35];
  v20 = v0[34];
  v21 = v0[31];
  v22 = v0[30];
  v23 = v0[27];
  v24 = v0[24];
  v25 = v0[23];
  v26 = v0[20];
  v27 = v0[19];
  v28 = v0[17];
  v29 = v0[16];
  v30 = v0[15];
  v31 = v0[14];
  v32 = v0[11];
  v33 = v0[10];
  v34 = v0[9];
  v35 = v0[6];
  v36 = v0[5];
  (*(v0[56] + 8))(v0[62], v0[55]);

  v9 = v0[1];

  return v9();
}

uint64_t sub_10029DA28()
{
  v1 = v0[104];
  v2 = v0[62];
  v3 = v0[55];
  v4 = v0[56];

  (*(v4 + 8))(v2, v3);
  v42 = v0[106];
  v6 = v0[61];
  v5 = v0[62];
  v8 = v0[59];
  v7 = v0[60];
  v10 = v0[57];
  v9 = v0[58];
  v12 = v0[53];
  v11 = v0[54];
  v14 = v0[51];
  v13 = v0[52];
  v17 = v0[50];
  v18 = v0[49];
  v19 = v0[46];
  v20 = v0[45];
  v21 = v0[42];
  v22 = v0[39];
  v23 = v0[38];
  v24 = v0[35];
  v25 = v0[34];
  v26 = v0[31];
  v27 = v0[30];
  v28 = v0[27];
  v29 = v0[24];
  v30 = v0[23];
  v31 = v0[20];
  v32 = v0[19];
  v33 = v0[17];
  v34 = v0[16];
  v35 = v0[15];
  v36 = v0[14];
  v37 = v0[11];
  v38 = v0[10];
  v39 = v0[9];
  v40 = v0[6];
  v41 = v0[5];

  v15 = v0[1];

  return v15();
}

uint64_t sub_10029DC68()
{
  v1 = v0[79];
  v2 = v0[60];
  v3 = v0[55];
  v46 = v0[54];
  v48 = v0[62];
  v4 = v0[47];
  v5 = v0[48];
  v6 = v0[46];
  v8 = v0[43];
  v7 = v0[44];
  v9 = v0[56] + 8;
  (*(v0[26] + 8))(v0[27], v0[25]);
  v1(v2, v3);
  (*(v7 + 8))(v6, v8);
  (*(v5 + 8))(v46, v4);
  v1(v48, v3);
  v49 = v0[84];
  v11 = v0[61];
  v10 = v0[62];
  v13 = v0[59];
  v12 = v0[60];
  v15 = v0[57];
  v14 = v0[58];
  v17 = v0[53];
  v16 = v0[54];
  v19 = v0[51];
  v18 = v0[52];
  v22 = v0[50];
  v23 = v0[49];
  v24 = v0[46];
  v25 = v0[45];
  v26 = v0[42];
  v27 = v0[39];
  v28 = v0[38];
  v29 = v0[35];
  v30 = v0[34];
  v31 = v0[31];
  v32 = v0[30];
  v33 = v0[27];
  v34 = v0[24];
  v35 = v0[23];
  v36 = v0[20];
  v37 = v0[19];
  v38 = v0[17];
  v39 = v0[16];
  v40 = v0[15];
  v41 = v0[14];
  v42 = v0[11];
  v43 = v0[10];
  v44 = v0[9];
  v45 = v0[6];
  v47 = v0[5];

  v20 = v0[1];

  return v20();
}

uint64_t sub_10029DF18()
{
  v1 = v0[83];
  v2 = v0[79];
  v3 = v0[55];
  v4 = v0[56];
  v51 = v0[54];
  v53 = v0[62];
  v5 = v0[48];
  v49 = v0[47];
  v45 = v0[60];
  v47 = v0[46];
  v6 = v0[44];
  v43 = v0[43];
  v7 = v0[26];
  v8 = v0[27];
  v9 = v0[25];
  v10 = v0[23];

  sub_1002AB248(v10);
  (*(v7 + 8))(v8, v9);
  v2(v45, v3);
  (*(v6 + 8))(v47, v43);
  (*(v5 + 8))(v51, v49);
  v2(v53, v3);
  v54 = v0[93];
  v12 = v0[61];
  v11 = v0[62];
  v14 = v0[59];
  v13 = v0[60];
  v16 = v0[57];
  v15 = v0[58];
  v18 = v0[53];
  v17 = v0[54];
  v20 = v0[51];
  v19 = v0[52];
  v23 = v0[50];
  v24 = v0[49];
  v25 = v0[46];
  v26 = v0[45];
  v27 = v0[42];
  v28 = v0[39];
  v29 = v0[38];
  v30 = v0[35];
  v31 = v0[34];
  v32 = v0[31];
  v33 = v0[30];
  v34 = v0[27];
  v35 = v0[24];
  v36 = v0[23];
  v37 = v0[20];
  v38 = v0[19];
  v39 = v0[17];
  v40 = v0[16];
  v41 = v0[15];
  v42 = v0[14];
  v44 = v0[11];
  v46 = v0[10];
  v48 = v0[9];
  v50 = v0[6];
  v52 = v0[5];

  v21 = v0[1];

  return v21();
}

uint64_t sub_10029E1EC()
{
  v172 = v0;
  v1 = *(v0 + 808);
  v2 = *(v0 + 624);
  v3 = *(v0 + 504);
  (*(v0 + 616))(*(v0 + 392), *(v0 + 432), *(v0 + 376));
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v158 = v4;
  v6 = os_log_type_enabled(v4, v5);
  v156 = *(v0 + 808);
  v162 = *(v0 + 784);
  v166 = *(v0 + 792);
  if (v6)
  {
    v130 = *(v0 + 704);
    v131 = *(v0 + 712);
    v134 = *(v0 + 664);
    v132 = *(v0 + 776);
    v147 = *(v0 + 480);
    v150 = *(v0 + 632);
    v143 = *(v0 + 440);
    v153 = *(v0 + 432);
    type = v5;
    v7 = *(v0 + 392);
    v128 = *(v0 + 376);
    v145 = *(v0 + 368);
    v139 = *(v0 + 352);
    v141 = *(v0 + 344);
    v135 = *(v0 + 208);
    v136 = *(v0 + 200);
    v137 = *(v0 + 216);
    v133 = *(v0 + 184);
    v8 = *(v0 + 120);
    v138 = *(v0 + 448) + 8;
    v9 = *(v0 + 384) + 8;
    v10 = *(v0 + 96);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v171[0] = v13;
    *v11 = 136446466;
    Fence.id.getter();
    sub_1002AB19C(&qword_1005AE800, &type metadata accessor for Fence.ID);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    v130(v8, v10);
    v166(v7, v128);
    v17 = sub_10000D01C(v14, v16, v171);

    *(v11 + 4) = v17;
    *(v11 + 12) = 2114;
    swift_errorRetain();
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 14) = v18;
    *v12 = v18;
    _os_log_impl(&_mh_execute_header, v158, type, "Failed to trigger fence %{public}s, error: %{public}@", v11, 0x16u);
    sub_100002CE0(v12, &qword_1005A9670, &unk_1004C2480);

    sub_100004984(v13);

    sub_1002AB248(v133);
    (*(v135 + 8))(v137, v136);
    v150(v147, v143);
    (*(v139 + 8))(v145, v141);
    v166(v153, v128);
  }

  else
  {
    v19 = *(v0 + 664);
    v148 = *(v0 + 480);
    v151 = *(v0 + 632);
    v20 = *(v0 + 448);
    v144 = *(v0 + 440);
    v154 = *(v0 + 432);
    v22 = *(v0 + 384);
    v21 = *(v0 + 392);
    v23 = *(v0 + 376);
    v146 = *(v0 + 368);
    v24 = *(v0 + 352);
    v25 = *(v0 + 208);
    v140 = *(v0 + 216);
    v142 = *(v0 + 344);
    v26 = *(v0 + 200);
    v27 = *(v0 + 184);

    v166(v21, v23);
    sub_1002AB248(v27);
    (*(v25 + 8))(v140, v26);
    v151(v148, v144);
    (*(v24 + 8))(v146, v142);
    v166(v154, v23);
  }

  v28 = *(v0 + 608) + 1;
  if (v28 == *(v0 + 600))
  {
LABEL_5:
    v29 = *(v0 + 592);

    v30 = swift_task_alloc();
    *(v0 + 816) = v30;
    *v30 = v0;
    v30[1] = sub_10029D0C8;
    v31 = *(v0 + 16);

    return sub_1002A9688();
  }

  while (1)
  {
    *(v0 + 608) = v28;
    v33 = *(v0 + 592);
    if (v28 >= *(v33 + 16))
    {
      __break(1u);
      return daemon.getter();
    }

    v34 = *(v0 + 892);
    v35 = *(v0 + 432);
    v36 = *(v0 + 376);
    v37 = *(v0 + 384);
    v39 = *(v0 + 328);
    v38 = *(v0 + 336);
    v40 = *(v0 + 320);
    v41 = *(v37 + 16);
    v37 += 16;
    v42 = v33 + ((*(v0 + 888) + 32) & ~*(v0 + 888)) + *(v37 + 56) * v28;
    *(v0 + 616) = v41;
    *(v0 + 624) = v37 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v41(v35, v42, v36);
    Fence.variant.getter();
    if ((*(v39 + 88))(v38, v40) == v34)
    {
      break;
    }

    v64 = *(v0 + 432);
    v65 = *(v0 + 376);
    v66 = *(v0 + 384);
    v68 = *(v0 + 328);
    v67 = *(v0 + 336);
    v69 = *(v0 + 320);
LABEL_19:
    (*(v66 + 8))(v64, v65);
    (*(v68 + 8))(v67, v69);
LABEL_20:
    v28 = *(v0 + 608) + 1;
    if (v28 == *(v0 + 600))
    {
      goto LABEL_5;
    }
  }

  v167 = *(v0 + 896);
  v43 = *(v0 + 432);
  v44 = *(v0 + 368);
  v46 = *(v0 + 344);
  v45 = *(v0 + 352);
  v47 = *(v0 + 336);
  v48 = *(v0 + 312);
  v49 = *(v0 + 296);
  v50 = *(v0 + 304);
  v51 = *(v0 + 288);
  (*(*(v0 + 328) + 96))(v47, *(v0 + 320));
  (*(v45 + 32))(v44, v47, v46);
  Fence.acceptanceStatus.getter();
  (*(v49 + 104))(v50, v167, v51);
  LOBYTE(v43) = static Fence.AcceptanceStatus.== infix(_:_:)();
  v52 = *(v49 + 8);
  v52(v50, v51);
  v52(v48, v51);
  if ((v43 & 1) == 0)
  {
    goto LABEL_18;
  }

  v53 = *(v0 + 900);
  v54 = *(v0 + 432);
  v56 = *(v0 + 272);
  v55 = *(v0 + 280);
  v58 = *(v0 + 256);
  v57 = *(v0 + 264);
  Fence.finder.getter();
  (*(v57 + 104))(v56, v53, v58);
  LOBYTE(v54) = static Fence.Participant.== infix(_:_:)();
  v59 = *(v57 + 8);
  v59(v56, v58);
  v59(v55, v58);
  if ((v54 & 1) == 0)
  {
LABEL_18:
    v67 = *(v0 + 432);
    v69 = *(v0 + 376);
    v68 = *(v0 + 384);
    v64 = *(v0 + 368);
    v65 = *(v0 + 344);
    v66 = *(v0 + 352);
    goto LABEL_19;
  }

  v60 = *(v0 + 440);
  v61 = *(v0 + 448);
  v62 = *(v0 + 432);
  v63 = *(v0 + 248);
  Fence.muteEndDate.getter();
  if ((*(v61 + 48))(v63, 1, v60) != 1)
  {
    v70 = *(v0 + 488);
    v71 = *(v0 + 440);
    v72 = *(v0 + 448);
    (*(v72 + 32))(v70, *(v0 + 248), v71);
    sub_1002AB19C(&qword_1005B0BF0, &type metadata accessor for Date);
    v73 = dispatch thunk of static Comparable.< infix(_:_:)();
    (*(v72 + 8))(v70, v71);
    if (v73)
    {
      goto LABEL_16;
    }

    goto LABEL_18;
  }

  sub_100002CE0(*(v0 + 248), &unk_1005AE5B0, &qword_1004C32F0);
LABEL_16:
  v74 = *(v0 + 496);
  v76 = *(v0 + 472);
  v75 = *(v0 + 480);
  v159 = *(v0 + 464);
  v163 = *(v0 + 456);
  v168 = *(v0 + 504);
  v78 = *(v0 + 440);
  v77 = *(v0 + 448);
  v80 = *(v0 + 232);
  v79 = *(v0 + 240);
  v81 = *(v0 + 224);
  v155 = (*(v0 + 352) + 16);
  v152 = *v155;
  (*v155)(*(v0 + 360), *(v0 + 368), *(v0 + 344));
  Fence.Schedule.Matcher.init(schedule:)();
  Fence.Schedule.Matcher.previousStartDate(from:)();
  v149 = *(v80 + 8);
  v149(v79, v81);
  v82 = *(v77 + 16);
  v82(v76, v75, v78);
  v82(v159, v74, v78);
  v82(v163, v75, v78);
  v83 = Logger.logObject.getter();
  v84 = static os_log_type_t.default.getter();
  v85 = os_log_type_enabled(v83, v84);
  v87 = *(v0 + 464);
  v86 = *(v0 + 472);
  v89 = *(v0 + 448);
  v88 = *(v0 + 456);
  v90 = *(v0 + 440);
  if (v85)
  {
    v164 = v84;
    v91 = swift_slowAlloc();
    v169 = swift_slowAlloc();
    v171[0] = v169;
    *v91 = 136446466;
    v160 = v87;
    v92 = Date.localISO8601.getter();
    v94 = v93;
    v95 = *(v89 + 8);
    v95(v86, v90);
    v96 = sub_10000D01C(v92, v94, v171);

    *(v91 + 4) = v96;
    *(v91 + 12) = 2050;
    Date.timeIntervalSince(_:)();
    v98 = v97;
    v95(v88, v90);
    v95(v160, v90);
    *(v91 + 14) = v98;
    _os_log_impl(&_mh_execute_header, v83, v164, "schedulerTimerFired: startDate: %{public}s timeDelta: %{public}f", v91, 0x16u);
    sub_100004984(v169);
  }

  else
  {

    v95 = *(v89 + 8);
    v95(v88, v90);
    v95(v87, v90);
    v95(v86, v90);
  }

  *(v0 + 632) = v95;
  v99 = *(v0 + 496);
  v100 = *(v0 + 480);
  Date.timeIntervalSince(_:)();
  v101 = *(v0 + 480);
  if (v102 > 300.0)
  {
    v103 = *(v0 + 432);
    v104 = *(v0 + 376);
    v105 = *(v0 + 384);
    v106 = *(v0 + 368);
    v107 = *(v0 + 344);
    v108 = *(v0 + 352);
    v109 = *(v0 + 448) + 8;
    v95(*(v0 + 480), *(v0 + 440));
    (*(v108 + 8))(v106, v107);
    (*(v105 + 8))(v103, v104);
    goto LABEL_20;
  }

  v110 = *(v0 + 240);
  v111 = *(v0 + 224);
  v112 = *(v0 + 200);
  v113 = *(v0 + 208);
  v114 = *(v0 + 192);
  v152(*(v0 + 360), *(v0 + 368), *(v0 + 344));
  Fence.Schedule.Matcher.init(schedule:)();
  Fence.Schedule.Matcher.interval(containingDate:)();
  v149(v110, v111);
  if ((*(v113 + 48))(v114, 1, v112) == 1)
  {
    v170 = v95;
    v115 = *(v0 + 504);
    sub_100002CE0(*(v0 + 192), &qword_1005B0BB0, &qword_1004D2830);
    v116 = Logger.logObject.getter();
    v117 = static os_log_type_t.error.getter();
    v118 = os_log_type_enabled(v116, v117);
    v119 = *(v0 + 480);
    v120 = *(v0 + 440);
    v121 = *(v0 + 384);
    v161 = *(v0 + 376);
    v165 = *(v0 + 432);
    v122 = *(v0 + 368);
    v124 = *(v0 + 344);
    v123 = *(v0 + 352);
    if (v118)
    {
      v157 = *(v0 + 448) + 8;
      v125 = swift_slowAlloc();
      *v125 = 0;
      _os_log_impl(&_mh_execute_header, v116, v117, "No valid interval for startDate", v125, 2u);
    }

    v170(v119, v120);
    (*(v123 + 8))(v122, v124);
    (*(v121 + 8))(v165, v161);
    goto LABEL_20;
  }

  (*(*(v0 + 208) + 32))(*(v0 + 216), *(v0 + 192), *(v0 + 200));
  v126 = async function pointer to daemon.getter[1];
  v127 = swift_task_alloc();
  *(v0 + 640) = v127;
  *v127 = v0;
  v127[1] = sub_100298C64;

  return daemon.getter();
}

uint64_t sub_10029EECC(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100003690;

  return v6();
}

uint64_t sub_10029EFD4()
{
  v1 = v0[5];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[6] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[7] = v3;
    *v3 = v0;
    v3[1] = sub_10029F0BC;

    return sub_10029F25C();
  }

  else
  {
    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_10029F0BC()
{
  v2 = *(*v1 + 56);
  v3 = *v1;
  v3[8] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10029F1F8, 0, 0);
  }

  else
  {
    v4 = v3[6];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_10029F1F8()
{
  v1 = v0[6];

  v2 = v0[1];
  v3 = v0[8];

  return v2();
}

uint64_t sub_10029F25C()
{
  v1[2] = v0;
  v2 = type metadata accessor for Fence.Participant();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  v5 = type metadata accessor for Fence.AcceptanceStatus();
  v1[7] = v5;
  v6 = *(v5 - 8);
  v1[8] = v6;
  v7 = *(v6 + 64) + 15;
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v8 = type metadata accessor for Calendar.SearchDirection();
  v1[11] = v8;
  v9 = *(v8 - 8);
  v1[12] = v9;
  v10 = *(v9 + 64) + 15;
  v1[13] = swift_task_alloc();
  v11 = type metadata accessor for Fence.Schedule.Matcher();
  v1[14] = v11;
  v12 = *(v11 - 8);
  v1[15] = v12;
  v13 = *(v12 + 64) + 15;
  v1[16] = swift_task_alloc();
  v14 = type metadata accessor for Fence.Variant();
  v1[17] = v14;
  v15 = *(v14 - 8);
  v1[18] = v15;
  v16 = *(v15 + 64) + 15;
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v17 = type metadata accessor for Fence.Schedule();
  v1[21] = v17;
  v18 = *(v17 - 8);
  v1[22] = v18;
  v19 = *(v18 + 64) + 15;
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v20 = type metadata accessor for Fence();
  v1[26] = v20;
  v21 = *(v20 - 8);
  v1[27] = v21;
  v22 = *(v21 + 64) + 15;
  v1[28] = swift_task_alloc();
  v23 = type metadata accessor for Date();
  v1[29] = v23;
  v24 = *(v23 - 8);
  v1[30] = v24;
  v25 = *(v24 + 64) + 15;
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();

  return _swift_task_switch(sub_10029F600, v0, 0);
}

uint64_t sub_10029F600()
{
  if (qword_1005A80E8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000A6F0(v1, qword_1005DFF88);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Invite timer fired", v4, 2u);
  }

  v5 = *(v0 + 272);

  static Date.now.getter();
  v6 = async function pointer to daemon.getter[1];
  v7 = swift_task_alloc();
  *(v0 + 280) = v7;
  *v7 = v0;
  v7[1] = sub_10029F758;

  return daemon.getter();
}

uint64_t sub_10029F758(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 280);
  v12 = *v1;
  v3[36] = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  v3[37] = v6;
  v7 = type metadata accessor for Daemon();
  v3[38] = v7;
  v8 = type metadata accessor for DataManager(0);
  v3[39] = v8;
  v9 = sub_1002AB19C(&unk_1005AFA50, &type metadata accessor for Daemon);
  v3[40] = v9;
  v10 = sub_1002AB19C(&qword_1005A90D0, type metadata accessor for DataManager);
  v3[41] = v10;
  *v6 = v12;
  v6[1] = sub_10029F94C;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_10029F94C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 296);
  v6 = *v2;
  *(*v2 + 336) = v1;

  if (v1)
  {
    v7 = v4[2];

    return _swift_task_switch(sub_1002A03A0, v7, 0);
  }

  else
  {
    v8 = v4[36];

    v4[43] = a1;
    v9 = swift_task_alloc();
    v4[44] = v9;
    *v9 = v6;
    v9[1] = sub_10029FAD8;

    return sub_100006424();
  }
}

uint64_t sub_10029FAD8(uint64_t a1)
{
  v2 = *(*v1 + 352);
  v3 = *(*v1 + 16);
  v5 = *v1;
  *(*v1 + 360) = a1;

  return _swift_task_switch(sub_10029FBF0, v3, 0);
}

uint64_t sub_10029FBF0()
{
  v1 = *(v0 + 360);
  v2 = *(v0 + 344);

  v3 = *(v1 + 16);
  *(v0 + 368) = v3;
  if (v3)
  {
    v4 = 0;
    *(v0 + 488) = enum case for Fence.Variant.oneTime(_:);
    *(v0 + 492) = enum case for Fence.Variant.recurring(_:);
    *(v0 + 496) = enum case for Fence.Variant.scheduled(_:);
    *(v0 + 500) = enum case for Calendar.SearchDirection.forward(_:);
    *(v0 + 504) = enum case for Fence.AcceptanceStatus.pendingHidden(_:);
    *(v0 + 508) = enum case for Fence.Participant.me(_:);
    while (1)
    {
      *(v0 + 376) = v4;
      v8 = *(v0 + 360);
      if (v4 >= *(v8 + 16))
      {
        __break(1u);
        return daemon.getter();
      }

      v9 = *(v0 + 492);
      v10 = *(v0 + 488);
      v11 = *(v0 + 160);
      v12 = *(v0 + 136);
      v13 = *(v0 + 144);
      (*(*(v0 + 216) + 16))(*(v0 + 224), v8 + ((*(*(v0 + 216) + 80) + 32) & ~*(*(v0 + 216) + 80)) + *(*(v0 + 216) + 72) * v4, *(v0 + 208));
      Fence.variant.getter();
      v14 = *(v13 + 88);
      v15 = v14(v11, v12);
      if (v15 != v10 && v15 != v9)
      {
        break;
      }

      v5 = *(v0 + 160);
      v6 = *(v0 + 136);
      v7 = *(v0 + 144);
      (*(*(v0 + 216) + 8))(*(v0 + 224), *(v0 + 208));
      (*(v7 + 8))(v5, v6);
LABEL_4:
      if (++v4 == *(v0 + 368))
      {
        goto LABEL_22;
      }
    }

    if (v15 != *(v0 + 496))
    {
      return _assertionFailure(_:_:file:line:flags:)();
    }

    v81 = v4;
    v80 = v14;
    v86 = *(v0 + 500);
    v91 = *(v0 + 264);
    v92 = *(v0 + 272);
    v94 = *(v0 + 256);
    v85 = *(v0 + 248);
    v88 = *(v0 + 240);
    v90 = *(v0 + 232);
    v84 = *(v0 + 224);
    v17 = *(v0 + 192);
    v18 = *(v0 + 200);
    v19 = *(v0 + 168);
    v20 = *(v0 + 176);
    v21 = *(v0 + 160);
    v22 = *(v0 + 120);
    v23 = *(v0 + 128);
    v24 = *(v0 + 104);
    v89 = *(v0 + 112);
    v25 = *(v0 + 96);
    v83 = *(v0 + 88);
    v79 = *(*(v0 + 144) + 96);
    v79(v21, *(v0 + 136));
    v87 = v18;
    v78 = v20[4];
    v78(v18, v21, v19);
    v77 = v20[2];
    v77(v17, v18, v19);
    v82 = v23;
    Fence.Schedule.Matcher.init(schedule:)();
    Fence.updatedAt.getter();
    (*(v25 + 104))(v24, v86, v83);
    Fence.Schedule.Matcher.nextStartDate(from:direction:)();
    (*(v25 + 8))(v24, v83);
    v26 = *(v88 + 8);
    *(v0 + 384) = v26;
    *(v0 + 392) = (v88 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v26(v85, v90);
    v27 = *(v22 + 8);
    v27(v82, v89);
    v28 = v20[1];
    *(v0 + 400) = v28;
    *(v0 + 408) = (v20 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v29 = v28;
    v28(v87, v19);
    (*(v88 + 32))(v91, v94, v90);
    if (static Date.< infix(_:_:)())
    {
      v93 = v27;
      v95 = v26;
      v30 = *(v0 + 504);
      v31 = *(v0 + 224);
      v33 = *(v0 + 72);
      v32 = *(v0 + 80);
      v34 = *(v0 + 56);
      v35 = *(v0 + 64);
      Fence.acceptanceStatus.getter();
      (*(v35 + 104))(v33, v30, v34);
      LOBYTE(v31) = static Fence.AcceptanceStatus.== infix(_:_:)();
      v36 = *(v35 + 8);
      v36(v33, v34);
      v36(v32, v34);
      if (v31)
      {
        v37 = *(v0 + 508);
        v38 = *(v0 + 224);
        v40 = *(v0 + 40);
        v39 = *(v0 + 48);
        v41 = *(v0 + 24);
        v42 = *(v0 + 32);
        Fence.findee.getter();
        (*(v42 + 104))(v40, v37, v41);
        LOBYTE(v38) = static Fence.Participant.== infix(_:_:)();
        v43 = *(v42 + 8);
        v43(v40, v41);
        v43(v39, v41);
        if (v38)
        {
          v44 = *(v0 + 496);
          v45 = *(v0 + 224);
          v46 = *(v0 + 152);
          v47 = *(v0 + 136);
          Fence.variant.getter();
          if (v80(v46, v47) == v44)
          {
            v48 = *(v0 + 272);
            v50 = *(v0 + 184);
            v49 = *(v0 + 192);
            v51 = *(v0 + 168);
            v52 = *(v0 + 152);
            v53 = *(v0 + 128);
            v54 = *(v0 + 112);
            v79(v52, *(v0 + 136));
            v78(v50, v52, v51);
            v77(v49, v50, v51);
            Fence.Schedule.Matcher.init(schedule:)();
            LOBYTE(v49) = Fence.Schedule.Matcher.doesMatchSchedule(_:)();
            v93(v53, v54);
            if (v49)
            {
              v73 = swift_task_alloc();
              *(v0 + 416) = v73;
              *v73 = v0;
              v73[1] = sub_1002A0504;
              v74 = *(v0 + 272);
              v75 = *(v0 + 224);
              v76 = *(v0 + 16);

              return sub_1002A9B6C(v75, v74);
            }

            v55 = *(v0 + 264);
            v57 = *(v0 + 224);
            v56 = *(v0 + 232);
            v58 = *(v0 + 208);
            v59 = *(v0 + 216);
            v29(*(v0 + 184), *(v0 + 168));
            v95(v55, v56);
            (*(v59 + 8))(v57, v58);
          }

          else
          {
            v63 = *(v0 + 224);
            v64 = *(v0 + 208);
            v65 = *(v0 + 216);
            v67 = *(v0 + 144);
            v66 = *(v0 + 152);
            v68 = *(v0 + 136);
            v95(*(v0 + 264), *(v0 + 232));
            (*(v65 + 8))(v63, v64);
            (*(v67 + 8))(v66, v68);
          }

          goto LABEL_20;
        }
      }

      v60 = *(v0 + 224);
      v61 = *(v0 + 208);
      v62 = *(v0 + 216);
      v95(*(v0 + 264), *(v0 + 232));
    }

    else
    {
      v60 = *(v0 + 224);
      v61 = *(v0 + 208);
      v62 = *(v0 + 216);
      v26(*(v0 + 264), *(v0 + 232));
    }

    (*(v62 + 8))(v60, v61);
LABEL_20:
    v4 = v81;
    goto LABEL_4;
  }

LABEL_22:
  v69 = *(v0 + 360);

  v70 = async function pointer to daemon.getter[1];
  v71 = swift_task_alloc();
  *(v0 + 424) = v71;
  *v71 = v0;
  v71[1] = sub_1002A0DA0;

  return daemon.getter();
}

uint64_t sub_1002A03A0()
{
  v22 = v0[42];
  v1 = v0[36];
  v3 = v0[33];
  v2 = v0[34];
  v4 = v0[31];
  v5 = v0[32];
  v6 = v0[29];
  v7 = v0[30];
  v8 = v0[28];
  v10 = v0[24];
  v9 = v0[25];
  v13 = v0[23];
  v14 = v0[20];
  v15 = v0[19];
  v16 = v0[16];
  v17 = v0[13];
  v18 = v0[10];
  v19 = v0[9];
  v20 = v0[6];
  v21 = v0[5];

  (*(v7 + 8))(v2, v6);

  v11 = v0[1];

  return v11();
}

uint64_t sub_1002A0504()
{
  v1 = *(*v0 + 416);
  v2 = *(*v0 + 16);
  v4 = *v0;

  return _swift_task_switch(sub_1002A0614, v2, 0);
}

uint64_t sub_1002A0614()
{
  v1 = *(v0 + 408);
  v3 = *(v0 + 384);
  v2 = *(v0 + 392);
  v4 = *(v0 + 368);
  v5 = *(v0 + 264);
  v7 = *(v0 + 224);
  v6 = *(v0 + 232);
  v8 = *(v0 + 208);
  v9 = *(v0 + 216);
  v10 = *(v0 + 376) + 1;
  (*(v0 + 400))(*(v0 + 184), *(v0 + 168));
  v3(v5, v6);
  (*(v9 + 8))(v7, v8);
  if (v10 != v4)
  {
    v14 = *(v0 + 376) + 1;
    while (1)
    {
      *(v0 + 376) = v14;
      v18 = *(v0 + 360);
      if (v14 >= *(v18 + 16))
      {
        __break(1u);
        return daemon.getter();
      }

      v19 = *(v0 + 492);
      v20 = *(v0 + 488);
      v21 = *(v0 + 160);
      v22 = *(v0 + 136);
      v23 = *(v0 + 144);
      (*(*(v0 + 216) + 16))(*(v0 + 224), v18 + ((*(*(v0 + 216) + 80) + 32) & ~*(*(v0 + 216) + 80)) + *(*(v0 + 216) + 72) * v14, *(v0 + 208));
      Fence.variant.getter();
      v24 = *(v23 + 88);
      v25 = v24(v21, v22);
      if (v25 != v20 && v25 != v19)
      {
        break;
      }

      v15 = *(v0 + 160);
      v16 = *(v0 + 136);
      v17 = *(v0 + 144);
      (*(*(v0 + 216) + 8))(*(v0 + 224), *(v0 + 208));
      (*(v17 + 8))(v15, v16);
LABEL_7:
      if (++v14 == *(v0 + 368))
      {
        goto LABEL_2;
      }
    }

    if (v25 != *(v0 + 496))
    {
      return _assertionFailure(_:_:file:line:flags:)();
    }

    v87 = v14;
    v86 = v24;
    v92 = *(v0 + 500);
    v97 = *(v0 + 264);
    v98 = *(v0 + 272);
    v100 = *(v0 + 256);
    v91 = *(v0 + 248);
    v94 = *(v0 + 240);
    v96 = *(v0 + 232);
    v90 = *(v0 + 224);
    v27 = *(v0 + 192);
    v28 = *(v0 + 200);
    v29 = *(v0 + 168);
    v30 = *(v0 + 176);
    v31 = *(v0 + 160);
    v32 = *(v0 + 120);
    v33 = *(v0 + 128);
    v34 = *(v0 + 104);
    v95 = *(v0 + 112);
    v35 = *(v0 + 96);
    v89 = *(v0 + 88);
    v85 = *(*(v0 + 144) + 96);
    v85(v31, *(v0 + 136));
    v93 = v29;
    v84 = v30[4];
    v84(v28, v31, v29);
    v83 = v30[2];
    v83(v27, v28, v29);
    v88 = v33;
    Fence.Schedule.Matcher.init(schedule:)();
    Fence.updatedAt.getter();
    (*(v35 + 104))(v34, v92, v89);
    Fence.Schedule.Matcher.nextStartDate(from:direction:)();
    (*(v35 + 8))(v34, v89);
    v36 = *(v94 + 8);
    *(v0 + 384) = v36;
    *(v0 + 392) = (v94 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v36(v91, v96);
    v37 = *(v32 + 8);
    v37(v88, v95);
    v38 = v30[1];
    *(v0 + 400) = v38;
    *(v0 + 408) = (v30 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v38(v28, v93);
    (*(v94 + 32))(v97, v100, v96);
    if (static Date.< infix(_:_:)())
    {
      v99 = v37;
      v101 = v36;
      v39 = *(v0 + 504);
      v40 = *(v0 + 224);
      v42 = *(v0 + 72);
      v41 = *(v0 + 80);
      v43 = *(v0 + 56);
      v44 = *(v0 + 64);
      Fence.acceptanceStatus.getter();
      (*(v44 + 104))(v42, v39, v43);
      LOBYTE(v40) = static Fence.AcceptanceStatus.== infix(_:_:)();
      v45 = *(v44 + 8);
      v45(v42, v43);
      v45(v41, v43);
      if (v40)
      {
        v46 = *(v0 + 508);
        v47 = *(v0 + 224);
        v49 = *(v0 + 40);
        v48 = *(v0 + 48);
        v50 = *(v0 + 24);
        v51 = *(v0 + 32);
        Fence.findee.getter();
        (*(v51 + 104))(v49, v46, v50);
        LOBYTE(v47) = static Fence.Participant.== infix(_:_:)();
        v52 = *(v51 + 8);
        v52(v49, v50);
        v52(v48, v50);
        if (v47)
        {
          v53 = *(v0 + 496);
          v54 = *(v0 + 224);
          v55 = *(v0 + 152);
          v56 = *(v0 + 136);
          Fence.variant.getter();
          if (v86(v55, v56) == v53)
          {
            v57 = *(v0 + 272);
            v59 = *(v0 + 184);
            v58 = *(v0 + 192);
            v60 = *(v0 + 168);
            v61 = *(v0 + 152);
            v62 = *(v0 + 128);
            v63 = *(v0 + 112);
            v85(v61, *(v0 + 136));
            v84(v59, v61, v60);
            v83(v58, v59, v60);
            Fence.Schedule.Matcher.init(schedule:)();
            LOBYTE(v58) = Fence.Schedule.Matcher.doesMatchSchedule(_:)();
            v99(v62, v63);
            if (v58)
            {
              v79 = swift_task_alloc();
              *(v0 + 416) = v79;
              *v79 = v0;
              v79[1] = sub_1002A0504;
              v80 = *(v0 + 272);
              v81 = *(v0 + 224);
              v82 = *(v0 + 16);

              return sub_1002A9B6C(v81, v80);
            }

            v64 = *(v0 + 264);
            v66 = *(v0 + 224);
            v65 = *(v0 + 232);
            v67 = *(v0 + 208);
            v68 = *(v0 + 216);
            v38(*(v0 + 184), *(v0 + 168));
            v101(v64, v65);
            (*(v68 + 8))(v66, v67);
          }

          else
          {
            v72 = *(v0 + 224);
            v73 = *(v0 + 208);
            v74 = *(v0 + 216);
            v76 = *(v0 + 144);
            v75 = *(v0 + 152);
            v77 = *(v0 + 136);
            v101(*(v0 + 264), *(v0 + 232));
            (*(v74 + 8))(v72, v73);
            (*(v76 + 8))(v75, v77);
          }

          goto LABEL_23;
        }
      }

      v69 = *(v0 + 224);
      v70 = *(v0 + 208);
      v71 = *(v0 + 216);
      v101(*(v0 + 264), *(v0 + 232));
    }

    else
    {
      v69 = *(v0 + 224);
      v70 = *(v0 + 208);
      v71 = *(v0 + 216);
      v36(*(v0 + 264), *(v0 + 232));
    }

    (*(v71 + 8))(v69, v70);
LABEL_23:
    v14 = v87;
    goto LABEL_7;
  }

LABEL_2:
  v11 = *(v0 + 360);

  v12 = async function pointer to daemon.getter[1];
  v13 = swift_task_alloc();
  *(v0 + 424) = v13;
  *v13 = v0;
  v13[1] = sub_1002A0DA0;

  return daemon.getter();
}

uint64_t sub_1002A0DA0(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 424);
  v5 = *v1;
  v3[54] = a1;

  v6 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v7 = swift_task_alloc();
  v3[55] = v7;
  *v7 = v5;
  v7[1] = sub_1002A0F2C;
  v8 = v3[41];
  v9 = v3[40];
  v10 = v3[39];
  v11 = v3[38];

  return ActorServiceDaemon.getService<A>()(v11, v10, v9, v8);
}

uint64_t sub_1002A0F2C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 440);
  v6 = *v2;
  *(*v2 + 448) = v1;

  if (v1)
  {
    v7 = v4[2];

    return _swift_task_switch(sub_1002A14E8, v7, 0);
  }

  else
  {
    v8 = v4[54];

    v4[57] = a1;
    v9 = swift_task_alloc();
    v4[58] = v9;
    *v9 = v6;
    v9[1] = sub_1002A10B8;

    return sub_100006424();
  }
}

uint64_t sub_1002A10B8(uint64_t a1)
{
  v2 = *(*v1 + 464);
  v3 = *(*v1 + 16);
  v5 = *v1;
  *(*v1 + 472) = a1;

  return _swift_task_switch(sub_1002A11D0, v3, 0);
}

uint64_t sub_1002A11D0()
{
  v1 = v0[57];

  v2 = swift_task_alloc();
  v0[60] = v2;
  *v2 = v0;
  v2[1] = sub_1002A1270;
  v3 = v0[59];
  v4 = v0[2];

  return sub_100013670(v3);
}

uint64_t sub_1002A1270()
{
  v1 = *(*v0 + 480);
  v2 = *(*v0 + 472);
  v3 = *(*v0 + 16);
  v5 = *v0;

  return _swift_task_switch(sub_1002A139C, v3, 0);
}

uint64_t sub_1002A139C()
{
  v1 = v0[33];
  v3 = v0[31];
  v2 = v0[32];
  v4 = v0[28];
  v5 = v0[24];
  v6 = v0[25];
  v7 = v0[23];
  v8 = v0[20];
  v11 = v0[19];
  v12 = v0[16];
  v13 = v0[13];
  v14 = v0[10];
  v15 = v0[9];
  v16 = v0[6];
  v17 = v0[5];
  (*(v0[30] + 8))(v0[34], v0[29]);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1002A14E8()
{
  v22 = v0[56];
  v1 = v0[54];
  v3 = v0[33];
  v2 = v0[34];
  v4 = v0[31];
  v5 = v0[32];
  v6 = v0[29];
  v7 = v0[30];
  v8 = v0[28];
  v10 = v0[24];
  v9 = v0[25];
  v13 = v0[23];
  v14 = v0[20];
  v15 = v0[19];
  v16 = v0[16];
  v17 = v0[13];
  v18 = v0[10];
  v19 = v0[9];
  v20 = v0[6];
  v21 = v0[5];

  (*(v7 + 8))(v2, v6);

  v11 = v0[1];

  return v11();
}

uint64_t sub_1002A166C()
{
  v1 = v0[5];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[6] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[7] = v3;
    *v3 = v0;
    v3[1] = sub_100297328;

    return sub_1002A1754();
  }

  else
  {
    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_1002A1754()
{
  v1[2] = v0;
  v2 = type metadata accessor for Fence.TriggerPosition();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v5 = type metadata accessor for Fence.TriggerID();
  v1[6] = v5;
  v6 = *(v5 - 8);
  v1[7] = v6;
  v7 = *(v6 + 64) + 15;
  v1[8] = swift_task_alloc();
  v8 = type metadata accessor for Fence.ID();
  v1[9] = v8;
  v9 = *(v8 - 8);
  v1[10] = v9;
  v10 = *(v9 + 64) + 15;
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v11 = *(*(sub_10004B564(&qword_1005B0B98, &qword_1004D27F0) - 8) + 64) + 15;
  v1[14] = swift_task_alloc();
  v12 = *(*(sub_10004B564(&qword_1005B0BB0, &qword_1004D2830) - 8) + 64) + 15;
  v1[15] = swift_task_alloc();
  v13 = type metadata accessor for DateInterval();
  v1[16] = v13;
  v14 = *(v13 - 8);
  v1[17] = v14;
  v15 = *(v14 + 64) + 15;
  v1[18] = swift_task_alloc();
  v16 = type metadata accessor for Fence.Schedule.Matcher();
  v1[19] = v16;
  v17 = *(v16 - 8);
  v1[20] = v17;
  v18 = *(v17 + 64) + 15;
  v1[21] = swift_task_alloc();
  v19 = *(*(sub_10004B564(&unk_1005AE5B0, &qword_1004C32F0) - 8) + 64) + 15;
  v1[22] = swift_task_alloc();
  v20 = type metadata accessor for Fence.Participant();
  v1[23] = v20;
  v21 = *(v20 - 8);
  v1[24] = v21;
  v22 = *(v21 + 64) + 15;
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v23 = type metadata accessor for Fence.AcceptanceStatus();
  v1[27] = v23;
  v24 = *(v23 - 8);
  v1[28] = v24;
  v25 = *(v24 + 64) + 15;
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  v26 = type metadata accessor for Fence.Variant();
  v1[31] = v26;
  v27 = *(v26 - 8);
  v1[32] = v27;
  v28 = *(v27 + 64) + 15;
  v1[33] = swift_task_alloc();
  v29 = type metadata accessor for Fence.Schedule();
  v1[34] = v29;
  v30 = *(v29 - 8);
  v1[35] = v30;
  v31 = *(v30 + 64) + 15;
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();
  v32 = type metadata accessor for Fence();
  v1[38] = v32;
  v33 = *(v32 - 8);
  v1[39] = v33;
  v34 = *(v33 + 64) + 15;
  v1[40] = swift_task_alloc();
  v1[41] = swift_task_alloc();
  v1[42] = swift_task_alloc();
  v1[43] = swift_task_alloc();
  v35 = type metadata accessor for Date();
  v1[44] = v35;
  v36 = *(v35 - 8);
  v1[45] = v36;
  v37 = *(v36 + 64) + 15;
  v1[46] = swift_task_alloc();
  v1[47] = swift_task_alloc();
  v1[48] = swift_task_alloc();
  v1[49] = swift_task_alloc();
  v1[50] = swift_task_alloc();
  v1[51] = swift_task_alloc();

  return _swift_task_switch(sub_1002A1CF0, v0, 0);
}

uint64_t sub_1002A1CF0()
{
  if (qword_1005A80E8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[52] = sub_10000A6F0(v1, qword_1005DFF88);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Schedule Grace Timer fired", v4, 2u);
  }

  v5 = v0[51];

  static Date.now.getter();
  v6 = async function pointer to daemon.getter[1];
  v7 = swift_task_alloc();
  v0[53] = v7;
  *v7 = v0;
  v7[1] = sub_1002A1E4C;

  return daemon.getter();
}

uint64_t sub_1002A1E4C(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 424);
  v12 = *v1;
  v3[54] = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  v3[55] = v6;
  v7 = type metadata accessor for Daemon();
  v3[56] = v7;
  v8 = type metadata accessor for DataManager(0);
  v9 = sub_1002AB19C(&unk_1005AFA50, &type metadata accessor for Daemon);
  v3[57] = v9;
  v10 = sub_1002AB19C(&qword_1005A90D0, type metadata accessor for DataManager);
  *v6 = v12;
  v6[1] = sub_1002A202C;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_1002A202C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 440);
  v6 = *v2;
  *(*v2 + 464) = v1;

  if (v1)
  {
    v7 = v4[2];

    return _swift_task_switch(sub_1002A2ED8, v7, 0);
  }

  else
  {
    v8 = v4[54];

    v4[59] = a1;
    v9 = swift_task_alloc();
    v4[60] = v9;
    *v9 = v6;
    v9[1] = sub_1002A21B8;

    return sub_100006424();
  }
}

uint64_t sub_1002A21B8(uint64_t a1)
{
  v2 = *(*v1 + 480);
  v3 = *(*v1 + 16);
  v5 = *v1;
  *(*v1 + 488) = a1;

  return _swift_task_switch(sub_1002A22D0, v3, 0);
}

uint64_t sub_1002A22D0()
{
  v164 = v0;
  v1 = *(v0 + 488);
  v2 = *(v0 + 472);

  v3 = *(v1 + 16);
  *(v0 + 496) = v3;
  if (!v3)
  {
LABEL_24:
    v109 = *(v0 + 488);
    v111 = *(v0 + 400);
    v110 = *(v0 + 408);
    v113 = *(v0 + 384);
    v112 = *(v0 + 392);
    v115 = *(v0 + 368);
    v114 = *(v0 + 376);
    v117 = *(v0 + 352);
    v116 = *(v0 + 360);
    v118 = *(v0 + 344);
    v123 = *(v0 + 336);
    v124 = *(v0 + 328);
    v125 = *(v0 + 320);
    v126 = *(v0 + 296);
    v127 = *(v0 + 288);
    v128 = *(v0 + 264);
    loga = *(v0 + 240);
    v132 = *(v0 + 232);
    bufa = *(v0 + 208);
    v135 = *(v0 + 200);
    v136 = *(v0 + 176);
    v139 = *(v0 + 168);
    v141 = *(v0 + 144);
    v142 = *(v0 + 120);
    v144 = *(v0 + 112);
    v148 = *(v0 + 104);
    v152 = *(v0 + 96);
    v155 = *(v0 + 88);
    v157 = *(v0 + 64);
    v162 = *(v0 + 40);

    (*(v116 + 8))(v110, v117);

    v119 = *(v0 + 8);

    return v119();
  }

  v4 = 0;
  *(v0 + 648) = *(*(v0 + 312) + 80);
  *(v0 + 652) = enum case for Fence.Variant.scheduled(_:);
  *(v0 + 656) = enum case for Fence.AcceptanceStatus.accepted(_:);
  *(v0 + 660) = enum case for Fence.Participant.me(_:);
  *(v0 + 664) = enum case for Fence.TriggerPosition.undetermined(_:);
  while (1)
  {
    *(v0 + 504) = v4;
    v5 = *(v0 + 488);
    if (v4 >= *(v5 + 16))
    {
      __break(1u);
      return daemon.getter();
    }

    v6 = *(v0 + 652);
    v7 = *(v0 + 344);
    v8 = *(v0 + 304);
    v9 = *(v0 + 312);
    v11 = *(v0 + 256);
    v10 = *(v0 + 264);
    v12 = *(v0 + 248);
    v14 = *(v9 + 16);
    v9 += 16;
    v13 = v14;
    v15 = v5 + ((*(v0 + 648) + 32) & ~*(v0 + 648)) + *(v9 + 56) * v4;
    *(v0 + 512) = v14;
    *(v0 + 520) = v9 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v14(v7, v15, v8);
    Fence.variant.getter();
    if ((*(v11 + 88))(v10, v12) == v6)
    {
      break;
    }

    v37 = *(v0 + 344);
    v38 = *(v0 + 304);
    v39 = *(v0 + 312);
    v41 = *(v0 + 256);
    v40 = *(v0 + 264);
    v42 = *(v0 + 248);
LABEL_14:
    (*(v39 + 8))(v37, v38);
    (*(v41 + 8))(v40, v42);
LABEL_15:
    v4 = *(v0 + 504) + 1;
    if (v4 == *(v0 + 496))
    {
      goto LABEL_24;
    }
  }

  v153 = v13;
  v158 = *(v0 + 656);
  v16 = *(v0 + 344);
  v17 = *(v0 + 296);
  v18 = *(v0 + 272);
  v19 = *(v0 + 280);
  v20 = *(v0 + 264);
  v21 = *(v0 + 240);
  v22 = *(v0 + 224);
  v23 = *(v0 + 232);
  v24 = *(v0 + 216);
  (*(*(v0 + 256) + 96))(v20, *(v0 + 248));
  (*(v19 + 32))(v17, v20, v18);
  Fence.acceptanceStatus.getter();
  (*(v22 + 104))(v23, v158, v24);
  LOBYTE(v16) = static Fence.AcceptanceStatus.== infix(_:_:)();
  v25 = *(v22 + 8);
  v25(v23, v24);
  v25(v21, v24);
  if ((v16 & 1) == 0)
  {
    goto LABEL_13;
  }

  v26 = *(v0 + 660);
  v27 = *(v0 + 344);
  v29 = *(v0 + 200);
  v28 = *(v0 + 208);
  v30 = *(v0 + 184);
  v31 = *(v0 + 192);
  Fence.finder.getter();
  (*(v31 + 104))(v29, v26, v30);
  LOBYTE(v27) = static Fence.Participant.== infix(_:_:)();
  v32 = *(v31 + 8);
  v32(v29, v30);
  v32(v28, v30);
  if ((v27 & 1) == 0)
  {
LABEL_13:
    v40 = *(v0 + 344);
    v42 = *(v0 + 304);
    v41 = *(v0 + 312);
    v37 = *(v0 + 296);
    v38 = *(v0 + 272);
    v39 = *(v0 + 280);
    goto LABEL_14;
  }

  v33 = *(v0 + 352);
  v34 = *(v0 + 360);
  v35 = *(v0 + 344);
  v36 = *(v0 + 176);
  Fence.muteEndDate.getter();
  if ((*(v34 + 48))(v36, 1, v33) != 1)
  {
    v43 = *(v0 + 400);
    v44 = *(v0 + 352);
    v45 = *(v0 + 360);
    (*(v45 + 32))(v43, *(v0 + 176), v44);
    sub_1002AB19C(&qword_1005B0BF0, &type metadata accessor for Date);
    v46 = dispatch thunk of static Comparable.< infix(_:_:)();
    (*(v45 + 8))(v43, v44);
    if (v46)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

  sub_100002CE0(*(v0 + 176), &unk_1005AE5B0, &qword_1004C32F0);
LABEL_11:
  v47 = *(v0 + 408);
  v159 = *(v0 + 416);
  v49 = *(v0 + 384);
  v48 = *(v0 + 392);
  v145 = *(v0 + 376);
  v149 = *(v0 + 368);
  v51 = *(v0 + 352);
  v50 = *(v0 + 360);
  v53 = *(v0 + 160);
  v52 = *(v0 + 168);
  v54 = *(v0 + 152);
  v140 = *(*(v0 + 280) + 16);
  v140(*(v0 + 288), *(v0 + 296), *(v0 + 272));
  Fence.Schedule.Matcher.init(schedule:)();
  Fence.Schedule.Matcher.previousEndDate(from:)();
  v137 = *(v53 + 8);
  v137(v52, v54);
  v55 = *(v50 + 16);
  *(v0 + 528) = v55;
  *(v0 + 536) = (v50 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v55(v49, v48, v51);
  v55(v145, v47, v51);
  v55(v149, v48, v51);
  v56 = Logger.logObject.getter();
  v57 = static os_log_type_t.default.getter();
  v58 = os_log_type_enabled(v56, v57);
  v60 = *(v0 + 376);
  v59 = *(v0 + 384);
  v61 = *(v0 + 360);
  v62 = *(v0 + 368);
  v63 = *(v0 + 352);
  if (v58)
  {
    v146 = *(v0 + 376);
    v64 = swift_slowAlloc();
    v160 = swift_slowAlloc();
    v163[0] = v160;
    *v64 = 136446466;
    v150 = v57;
    v65 = Date.localISO8601.getter();
    v67 = v66;
    v68 = *(v61 + 8);
    v68(v59, v63);
    v69 = sub_10000D01C(v65, v67, v163);

    *(v64 + 4) = v69;
    *(v64 + 12) = 2050;
    Date.timeIntervalSince(_:)();
    v71 = v70;
    v68(v62, v63);
    v68(v146, v63);
    *(v64 + 14) = v71;
    _os_log_impl(&_mh_execute_header, v56, v150, "scheduleGraceTimerFired: endDate: %{public}s timeDelta: %{public}f", v64, 0x16u);
    sub_100004984(v160);
  }

  else
  {

    v68 = *(v61 + 8);
    v68(v62, v63);
    v68(v60, v63);
    v68(v59, v63);
  }

  *(v0 + 544) = v68;
  v72 = *(v0 + 408);
  v73 = *(v0 + 392);
  Date.timeIntervalSince(_:)();
  v74 = *(v0 + 392);
  if (v75 > 300.0)
  {
    v76 = *(v0 + 344);
    v77 = *(v0 + 304);
    v78 = *(v0 + 312);
    v79 = *(v0 + 296);
    v80 = *(v0 + 272);
    v81 = *(v0 + 280);
    v82 = *(v0 + 360) + 8;
    v68(*(v0 + 392), *(v0 + 352));
    (*(v81 + 8))(v79, v80);
    (*(v78 + 8))(v76, v77);
    goto LABEL_15;
  }

  v83 = *(v0 + 168);
  v84 = *(v0 + 152);
  v85 = *(v0 + 128);
  v86 = *(v0 + 136);
  v87 = *(v0 + 120);
  v140(*(v0 + 288), *(v0 + 296), *(v0 + 272));
  Fence.Schedule.Matcher.init(schedule:)();
  Fence.Schedule.Matcher.interval(containingDate:)();
  v137(v83, v84);
  if ((*(v86 + 48))(v87, 1, v85) == 1)
  {
    v88 = *(v0 + 416);
    v89 = *(v0 + 344);
    v90 = *(v0 + 328);
    v91 = *(v0 + 304);
    sub_100002CE0(*(v0 + 120), &qword_1005B0BB0, &qword_1004D2830);
    v153(v90, v89, v91);
    v92 = Logger.logObject.getter();
    v151 = static os_log_type_t.error.getter();
    v93 = os_log_type_enabled(v92, v151);
    v94 = *(v0 + 360);
    v156 = *(v0 + 352);
    v161 = *(v0 + 392);
    v95 = *(v0 + 344);
    v96 = *(v0 + 328);
    v98 = *(v0 + 304);
    v97 = *(v0 + 312);
    v99 = *(v0 + 296);
    v100 = *(v0 + 280);
    v154 = *(v0 + 272);
    if (v93)
    {
      v147 = *(v0 + 344);
      v101 = *(v0 + 96);
      v143 = *(v0 + 296);
      v102 = *(v0 + 80);
      v131 = *(v0 + 72);
      buf = swift_slowAlloc();
      v138 = swift_slowAlloc();
      v163[0] = v138;
      *buf = 136446210;
      Fence.id.getter();
      sub_1002AB19C(&qword_1005AE800, &type metadata accessor for Fence.ID);
      v103 = dispatch thunk of CustomStringConvertible.description.getter();
      log = v92;
      v105 = v104;
      (*(v102 + 8))(v101, v131);
      v106 = *(v97 + 8);
      v106(v96, v98);
      v107 = sub_10000D01C(v103, v105, v163);

      *(buf + 4) = v107;
      _os_log_impl(&_mh_execute_header, log, v151, "No valid interval for endDate, fence id: %{public}s", buf, 0xCu);
      sub_100004984(v138);

      v68(v161, v156);
      (*(v100 + 8))(v143, v154);
      v106(v147, v98);
    }

    else
    {

      v108 = *(v97 + 8);
      v108(v96, v98);
      v68(v161, v156);
      (*(v100 + 8))(v99, v154);
      v108(v95, v98);
    }

    goto LABEL_15;
  }

  (*(*(v0 + 136) + 32))(*(v0 + 144), *(v0 + 120), *(v0 + 128));
  v121 = async function pointer to daemon.getter[1];
  v122 = swift_task_alloc();
  *(v0 + 552) = v122;
  *v122 = v0;
  v122[1] = sub_1002A30BC;

  return daemon.getter();
}

uint64_t sub_1002A2ED8()
{
  v1 = v0[54];
  v2 = v0[51];
  v3 = v0[44];
  v4 = v0[45];

  (*(v4 + 8))(v2, v3);
  v34 = v0[58];
  v6 = v0[50];
  v5 = v0[51];
  v8 = v0[48];
  v7 = v0[49];
  v10 = v0[46];
  v9 = v0[47];
  v12 = v0[42];
  v11 = v0[43];
  v14 = v0[40];
  v13 = v0[41];
  v17 = v0[37];
  v18 = v0[36];
  v19 = v0[33];
  v20 = v0[30];
  v21 = v0[29];
  v22 = v0[26];
  v23 = v0[25];
  v24 = v0[22];
  v25 = v0[21];
  v26 = v0[18];
  v27 = v0[15];
  v28 = v0[14];
  v29 = v0[13];
  v30 = v0[12];
  v31 = v0[11];
  v32 = v0[8];
  v33 = v0[5];

  v15 = v0[1];

  return v15();
}

uint64_t sub_1002A30BC(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 552);
  v5 = *v1;
  v3[70] = a1;

  v6 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v7 = swift_task_alloc();
  v3[71] = v7;
  v8 = type metadata accessor for LocalStorageService();
  v9 = sub_1002AB19C(&qword_1005AAB88, type metadata accessor for LocalStorageService);
  *v7 = v5;
  v7[1] = sub_1002A3270;
  v10 = v3[57];
  v11 = v3[56];

  return ActorServiceDaemon.getService<A>()(v11, v8, v10, v9);
}

uint64_t sub_1002A3270(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 568);
  v6 = *v2;
  v4[72] = a1;
  v4[73] = v1;

  v7 = v3[70];
  if (v1)
  {
    v8 = v4[61];
    v9 = v4[2];

    v10 = sub_1002A53D8;
  }

  else
  {
    v9 = v4[2];

    v10 = sub_1002A33CC;
  }

  return _swift_task_switch(v10, v9, 0);
}

uint64_t sub_1002A33CC()
{
  v1 = v0[43];
  v2 = v0[13];
  Fence.id.getter();
  v3 = swift_task_alloc();
  v0[74] = v3;
  *v3 = v0;
  v3[1] = sub_1002A3474;
  v4 = v0[72];
  v5 = v0[18];
  v7 = v0[13];
  v6 = v0[14];

  return sub_100306C9C(v6, v7, v5);
}

uint64_t sub_1002A3474()
{
  v2 = *v1;
  v3 = *(*v1 + 592);
  v17 = *v1;
  *(*v1 + 600) = v0;

  if (v0)
  {
    v4 = v2[61];
    v5 = v2[13];
    v6 = v2[9];
    v7 = v2[10];
    v8 = v2[2];
    (*(v7 + 8))(v5, v6);

    v9 = sub_1002A562C;
    v10 = v8;
  }

  else
  {
    v11 = v2[13];
    v12 = v2[9];
    v13 = v2[10];
    v14 = v2[2];
    v15 = *(v13 + 8);
    v2[76] = v15;
    v2[77] = (v13 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v15(v11, v12);
    v9 = sub_1002A35E4;
    v10 = v14;
  }

  return _swift_task_switch(v9, v10, 0);
}

uint64_t sub_1002A35E4()
{
  v214 = v0;
  v1 = *(v0 + 112);
  v2 = type metadata accessor for FenceTriggerRecord();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    v3 = *(v0 + 520);
    v4 = *(v0 + 416);
    (*(v0 + 512))(*(v0 + 336), *(v0 + 344), *(v0 + 304));
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v196 = *(v0 + 608);
      v201 = *(v0 + 616);
      v190 = *(v0 + 336);
      v7 = *(v0 + 312);
      v205 = *(v0 + 304);
      v8 = *(v0 + 96);
      v9 = *(v0 + 72);
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v213[0] = v11;
      *v10 = 136446210;
      Fence.id.getter();
      sub_1002AB19C(&qword_1005AE800, &type metadata accessor for Fence.ID);
      v12 = dispatch thunk of CustomStringConvertible.description.getter();
      v14 = v13;
      v196(v8, v9);
      v15 = *(v7 + 8);
      v15(v190, v205);
      v16 = sub_10000D01C(v12, v14, v213);

      *(v10 + 4) = v16;
      _os_log_impl(&_mh_execute_header, v5, v6, "Schedule Grace Timer about to trigger fence: %{public}s", v10, 0xCu);
      sub_100004984(v11);
    }

    else
    {
      v39 = *(v0 + 336);
      v40 = *(v0 + 304);
      v41 = *(v0 + 312);

      v15 = *(v41 + 8);
      v15(v39, v40);
    }

    *(v0 + 624) = v15;
    v42 = *(v0 + 536);
    v43 = *(v0 + 528);
    v208 = *(v0 + 664);
    v44 = *(v0 + 392);
    v45 = *(v0 + 344);
    v46 = *(v0 + 352);
    v47 = *(v0 + 88);
    v48 = *(v0 + 64);
    v49 = *(v0 + 32);
    v50 = *(v0 + 40);
    v51 = *(v0 + 24);
    Fence.id.getter();
    Fence.TriggerID.init()();
    v43(v50, v44, v46);
    (*(v49 + 104))(v50, v208, v51);
    v52 = swift_task_alloc();
    *(v0 + 632) = v52;
    *v52 = v0;
    v52[1] = sub_1002A4518;
    v53 = *(v0 + 88);
    v54 = *(v0 + 64);
    v55 = *(v0 + 40);
    v56 = *(v0 + 16);

    return sub_100274D00(v53, v54, v55);
  }

  v17 = *(v0 + 576);
  v18 = *(v0 + 352);
  v19 = *(v0 + 360);
  v206 = *(v0 + 344);
  v20 = *(v0 + 312);
  v197 = *(v0 + 544);
  v202 = *(v0 + 304);
  v185 = *(v0 + 392);
  v191 = *(v0 + 296);
  v22 = *(v0 + 272);
  v21 = *(v0 + 280);
  v23 = *(v0 + 136);
  v24 = *(v0 + 144);
  v25 = *(v0 + 128);

  (*(v23 + 8))(v24, v25);
  v197(v185, v18);
  (*(v21 + 8))(v191, v22);
  (*(v20 + 8))(v206, v202);
  sub_100002CE0(v1, &qword_1005B0B98, &qword_1004D27F0);
  v26 = *(v0 + 504) + 1;
  if (v26 == *(v0 + 496))
  {
LABEL_5:
    v27 = *(v0 + 488);
    v29 = *(v0 + 400);
    v28 = *(v0 + 408);
    v31 = *(v0 + 384);
    v30 = *(v0 + 392);
    v33 = *(v0 + 368);
    v32 = *(v0 + 376);
    v35 = *(v0 + 352);
    v34 = *(v0 + 360);
    v36 = *(v0 + 344);
    v163 = *(v0 + 336);
    v164 = *(v0 + 328);
    v165 = *(v0 + 320);
    v166 = *(v0 + 296);
    v167 = *(v0 + 288);
    v168 = *(v0 + 264);
    log = *(v0 + 240);
    v171 = *(v0 + 232);
    buf = *(v0 + 208);
    v175 = *(v0 + 200);
    v176 = *(v0 + 176);
    v177 = *(v0 + 168);
    v180 = *(v0 + 144);
    v182 = *(v0 + 120);
    v183 = *(v0 + 112);
    v186 = *(v0 + 104);
    v192 = *(v0 + 96);
    v198 = *(v0 + 88);
    v203 = *(v0 + 64);
    v207 = *(v0 + 40);

    (*(v34 + 8))(v28, v35);

    v37 = *(v0 + 8);

    return v37();
  }

  while (1)
  {
    *(v0 + 504) = v26;
    v57 = *(v0 + 488);
    if (v26 >= *(v57 + 16))
    {
      __break(1u);
      return daemon.getter();
    }

    v58 = *(v0 + 652);
    v59 = *(v0 + 344);
    v60 = *(v0 + 304);
    v61 = *(v0 + 312);
    v63 = *(v0 + 256);
    v62 = *(v0 + 264);
    v64 = *(v0 + 248);
    v66 = *(v61 + 16);
    v61 += 16;
    v65 = v66;
    v67 = v57 + ((*(v0 + 648) + 32) & ~*(v0 + 648)) + *(v61 + 56) * v26;
    *(v0 + 512) = v66;
    *(v0 + 520) = v61 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v66(v59, v67, v60);
    Fence.variant.getter();
    if ((*(v63 + 88))(v62, v64) == v58)
    {
      break;
    }

    v89 = *(v0 + 344);
    v90 = *(v0 + 304);
    v91 = *(v0 + 312);
    v93 = *(v0 + 256);
    v92 = *(v0 + 264);
    v94 = *(v0 + 248);
LABEL_23:
    (*(v91 + 8))(v89, v90);
    (*(v93 + 8))(v92, v94);
LABEL_24:
    v26 = *(v0 + 504) + 1;
    if (v26 == *(v0 + 496))
    {
      goto LABEL_5;
    }
  }

  v199 = v65;
  v209 = *(v0 + 656);
  v68 = *(v0 + 344);
  v69 = *(v0 + 296);
  v70 = *(v0 + 272);
  v71 = *(v0 + 280);
  v72 = *(v0 + 264);
  v73 = *(v0 + 240);
  v74 = *(v0 + 224);
  v75 = *(v0 + 232);
  v76 = *(v0 + 216);
  (*(*(v0 + 256) + 96))(v72, *(v0 + 248));
  (*(v71 + 32))(v69, v72, v70);
  Fence.acceptanceStatus.getter();
  (*(v74 + 104))(v75, v209, v76);
  LOBYTE(v68) = static Fence.AcceptanceStatus.== infix(_:_:)();
  v77 = *(v74 + 8);
  v77(v75, v76);
  v77(v73, v76);
  if ((v68 & 1) == 0)
  {
    goto LABEL_22;
  }

  v78 = *(v0 + 660);
  v79 = *(v0 + 344);
  v81 = *(v0 + 200);
  v80 = *(v0 + 208);
  v82 = *(v0 + 184);
  v83 = *(v0 + 192);
  Fence.finder.getter();
  (*(v83 + 104))(v81, v78, v82);
  LOBYTE(v79) = static Fence.Participant.== infix(_:_:)();
  v84 = *(v83 + 8);
  v84(v81, v82);
  v84(v80, v82);
  if ((v79 & 1) == 0)
  {
LABEL_22:
    v92 = *(v0 + 344);
    v94 = *(v0 + 304);
    v93 = *(v0 + 312);
    v89 = *(v0 + 296);
    v90 = *(v0 + 272);
    v91 = *(v0 + 280);
    goto LABEL_23;
  }

  v85 = *(v0 + 352);
  v86 = *(v0 + 360);
  v87 = *(v0 + 344);
  v88 = *(v0 + 176);
  Fence.muteEndDate.getter();
  if ((*(v86 + 48))(v88, 1, v85) != 1)
  {
    v95 = *(v0 + 400);
    v96 = *(v0 + 352);
    v97 = *(v0 + 360);
    (*(v97 + 32))(v95, *(v0 + 176), v96);
    sub_1002AB19C(&qword_1005B0BF0, &type metadata accessor for Date);
    v98 = dispatch thunk of static Comparable.< infix(_:_:)();
    (*(v97 + 8))(v95, v96);
    if (v98)
    {
      goto LABEL_20;
    }

    goto LABEL_22;
  }

  sub_100002CE0(*(v0 + 176), &unk_1005AE5B0, &qword_1004C32F0);
LABEL_20:
  v99 = *(v0 + 408);
  v210 = *(v0 + 416);
  v101 = *(v0 + 384);
  v100 = *(v0 + 392);
  v187 = *(v0 + 376);
  v193 = *(v0 + 368);
  v103 = *(v0 + 352);
  v102 = *(v0 + 360);
  v105 = *(v0 + 160);
  v104 = *(v0 + 168);
  v106 = *(v0 + 152);
  v181 = *(*(v0 + 280) + 16);
  v181(*(v0 + 288), *(v0 + 296), *(v0 + 272));
  Fence.Schedule.Matcher.init(schedule:)();
  Fence.Schedule.Matcher.previousEndDate(from:)();
  v178 = *(v105 + 8);
  v178(v104, v106);
  v107 = *(v102 + 16);
  *(v0 + 528) = v107;
  *(v0 + 536) = (v102 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v107(v101, v100, v103);
  v107(v187, v99, v103);
  v107(v193, v100, v103);
  v108 = Logger.logObject.getter();
  v109 = static os_log_type_t.default.getter();
  v110 = os_log_type_enabled(v108, v109);
  v112 = *(v0 + 376);
  v111 = *(v0 + 384);
  v113 = *(v0 + 360);
  v114 = *(v0 + 368);
  v115 = *(v0 + 352);
  if (v110)
  {
    v188 = *(v0 + 376);
    v116 = swift_slowAlloc();
    v211 = swift_slowAlloc();
    v213[0] = v211;
    *v116 = 136446466;
    v194 = v109;
    v117 = Date.localISO8601.getter();
    v119 = v118;
    v120 = *(v113 + 8);
    v120(v111, v115);
    v121 = sub_10000D01C(v117, v119, v213);

    *(v116 + 4) = v121;
    *(v116 + 12) = 2050;
    Date.timeIntervalSince(_:)();
    v123 = v122;
    v120(v114, v115);
    v120(v188, v115);
    *(v116 + 14) = v123;
    _os_log_impl(&_mh_execute_header, v108, v194, "scheduleGraceTimerFired: endDate: %{public}s timeDelta: %{public}f", v116, 0x16u);
    sub_100004984(v211);
  }

  else
  {

    v120 = *(v113 + 8);
    v120(v114, v115);
    v120(v112, v115);
    v120(v111, v115);
  }

  *(v0 + 544) = v120;
  v124 = *(v0 + 408);
  v125 = *(v0 + 392);
  Date.timeIntervalSince(_:)();
  v126 = *(v0 + 392);
  if (v127 > 300.0)
  {
    v128 = *(v0 + 344);
    v129 = *(v0 + 304);
    v130 = *(v0 + 312);
    v131 = *(v0 + 296);
    v132 = *(v0 + 272);
    v133 = *(v0 + 280);
    v134 = *(v0 + 360) + 8;
    v120(*(v0 + 392), *(v0 + 352));
    (*(v133 + 8))(v131, v132);
    (*(v130 + 8))(v128, v129);
    goto LABEL_24;
  }

  v135 = *(v0 + 168);
  v136 = *(v0 + 152);
  v137 = *(v0 + 128);
  v138 = *(v0 + 136);
  v139 = *(v0 + 120);
  v181(*(v0 + 288), *(v0 + 296), *(v0 + 272));
  Fence.Schedule.Matcher.init(schedule:)();
  Fence.Schedule.Matcher.interval(containingDate:)();
  v178(v135, v136);
  if ((*(v138 + 48))(v139, 1, v137) == 1)
  {
    v140 = *(v0 + 416);
    v141 = *(v0 + 344);
    v142 = *(v0 + 328);
    v143 = *(v0 + 304);
    sub_100002CE0(*(v0 + 120), &qword_1005B0BB0, &qword_1004D2830);
    v199(v142, v141, v143);
    v144 = Logger.logObject.getter();
    v195 = static os_log_type_t.error.getter();
    v145 = os_log_type_enabled(v144, v195);
    v146 = *(v0 + 360);
    v204 = *(v0 + 352);
    v212 = *(v0 + 392);
    v147 = *(v0 + 344);
    v148 = *(v0 + 328);
    v150 = *(v0 + 304);
    v149 = *(v0 + 312);
    v151 = *(v0 + 296);
    v152 = *(v0 + 280);
    v200 = *(v0 + 272);
    if (v145)
    {
      v189 = *(v0 + 344);
      v153 = *(v0 + 96);
      v184 = *(v0 + 296);
      v154 = *(v0 + 80);
      v172 = *(v0 + 72);
      bufa = swift_slowAlloc();
      v179 = swift_slowAlloc();
      v213[0] = v179;
      *bufa = 136446210;
      Fence.id.getter();
      sub_1002AB19C(&qword_1005AE800, &type metadata accessor for Fence.ID);
      v155 = dispatch thunk of CustomStringConvertible.description.getter();
      loga = v144;
      v157 = v156;
      (*(v154 + 8))(v153, v172);
      v158 = *(v149 + 8);
      v158(v148, v150);
      v159 = sub_10000D01C(v155, v157, v213);

      *(bufa + 4) = v159;
      _os_log_impl(&_mh_execute_header, loga, v195, "No valid interval for endDate, fence id: %{public}s", bufa, 0xCu);
      sub_100004984(v179);

      v120(v212, v204);
      (*(v152 + 8))(v184, v200);
      v158(v189, v150);
    }

    else
    {

      v160 = *(v149 + 8);
      v160(v148, v150);
      v120(v212, v204);
      (*(v152 + 8))(v151, v200);
      v160(v147, v150);
    }

    goto LABEL_24;
  }

  (*(*(v0 + 136) + 32))(*(v0 + 144), *(v0 + 120), *(v0 + 128));
  v161 = async function pointer to daemon.getter[1];
  v162 = swift_task_alloc();
  *(v0 + 552) = v162;
  *v162 = v0;
  v162[1] = sub_1002A30BC;

  return daemon.getter();
}

uint64_t sub_1002A4518()
{
  v2 = *v1;
  v3 = *(*v1 + 632);
  v17 = *(*v1 + 616);
  v16 = *(*v1 + 608);
  v15 = *(*v1 + 88);
  v14 = *(*v1 + 72);
  v4 = *(*v1 + 64);
  v5 = *(*v1 + 56);
  v6 = *(*v1 + 48);
  v7 = *(*v1 + 40);
  v8 = *(*v1 + 32);
  v9 = *(*v1 + 24);
  v10 = *v1;
  *(*v1 + 640) = v0;

  (*(v8 + 8))(v7, v9);
  (*(v5 + 8))(v4, v6);
  v16(v15, v14);
  v11 = *(v2 + 16);
  if (v0)
  {
    v12 = sub_1002A5898;
  }

  else
  {
    v12 = sub_1002A4774;
  }

  return _swift_task_switch(v12, v11, 0);
}

uint64_t sub_1002A4774()
{
  v176 = v0;
  v1 = *(v0 + 576);
  v2 = *(v0 + 392);
  v3 = *(v0 + 352);
  v4 = *(v0 + 360);
  v166 = *(v0 + 344);
  v169 = *(v0 + 624);
  v5 = *(v0 + 312);
  v157 = *(v0 + 544);
  v162 = *(v0 + 304);
  v152 = *(v0 + 296);
  v6 = *(v0 + 272);
  v7 = *(v0 + 280);
  v8 = *(v0 + 136);
  v9 = *(v0 + 144);
  v10 = *(v0 + 128);

  (*(v8 + 8))(v9, v10);
  v157(v2, v3);
  (*(v7 + 8))(v152, v6);
  v169(v166, v162);
  sub_100002CE0(*(v0 + 112), &qword_1005B0B98, &qword_1004D27F0);
  v11 = *(v0 + 504) + 1;
  if (v11 == *(v0 + 496))
  {
LABEL_2:
    v12 = *(v0 + 488);
    v14 = *(v0 + 400);
    v13 = *(v0 + 408);
    v16 = *(v0 + 384);
    v15 = *(v0 + 392);
    v18 = *(v0 + 368);
    v17 = *(v0 + 376);
    v20 = *(v0 + 352);
    v19 = *(v0 + 360);
    v21 = *(v0 + 344);
    v130 = *(v0 + 336);
    v131 = *(v0 + 328);
    v132 = *(v0 + 320);
    v133 = *(v0 + 296);
    v134 = *(v0 + 288);
    v135 = *(v0 + 264);
    log = *(v0 + 240);
    v138 = *(v0 + 232);
    buf = *(v0 + 208);
    v142 = *(v0 + 200);
    v143 = *(v0 + 176);
    v144 = *(v0 + 168);
    v147 = *(v0 + 144);
    v149 = *(v0 + 120);
    v150 = *(v0 + 112);
    v153 = *(v0 + 104);
    v158 = *(v0 + 96);
    v163 = *(v0 + 88);
    v167 = *(v0 + 64);
    v170 = *(v0 + 40);

    (*(v19 + 8))(v13, v20);

    v22 = *(v0 + 8);

    return v22();
  }

  while (1)
  {
    *(v0 + 504) = v11;
    v24 = *(v0 + 488);
    if (v11 >= *(v24 + 16))
    {
      __break(1u);
      return daemon.getter();
    }

    v25 = *(v0 + 652);
    v26 = *(v0 + 344);
    v27 = *(v0 + 304);
    v28 = *(v0 + 312);
    v30 = *(v0 + 256);
    v29 = *(v0 + 264);
    v31 = *(v0 + 248);
    v33 = *(v28 + 16);
    v28 += 16;
    v32 = v33;
    v34 = v24 + ((*(v0 + 648) + 32) & ~*(v0 + 648)) + *(v28 + 56) * v11;
    *(v0 + 512) = v33;
    *(v0 + 520) = v28 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v33(v26, v34, v27);
    Fence.variant.getter();
    if ((*(v30 + 88))(v29, v31) == v25)
    {
      break;
    }

    v56 = *(v0 + 344);
    v57 = *(v0 + 304);
    v58 = *(v0 + 312);
    v60 = *(v0 + 256);
    v59 = *(v0 + 264);
    v61 = *(v0 + 248);
LABEL_16:
    (*(v58 + 8))(v56, v57);
    (*(v60 + 8))(v59, v61);
LABEL_17:
    v11 = *(v0 + 504) + 1;
    if (v11 == *(v0 + 496))
    {
      goto LABEL_2;
    }
  }

  v164 = v32;
  v171 = *(v0 + 656);
  v35 = *(v0 + 344);
  v36 = *(v0 + 296);
  v37 = *(v0 + 272);
  v38 = *(v0 + 280);
  v39 = *(v0 + 264);
  v40 = *(v0 + 240);
  v41 = *(v0 + 224);
  v42 = *(v0 + 232);
  v43 = *(v0 + 216);
  (*(*(v0 + 256) + 96))(v39, *(v0 + 248));
  (*(v38 + 32))(v36, v39, v37);
  Fence.acceptanceStatus.getter();
  (*(v41 + 104))(v42, v171, v43);
  LOBYTE(v35) = static Fence.AcceptanceStatus.== infix(_:_:)();
  v44 = *(v41 + 8);
  v44(v42, v43);
  v44(v40, v43);
  if ((v35 & 1) == 0)
  {
    goto LABEL_15;
  }

  v45 = *(v0 + 660);
  v46 = *(v0 + 344);
  v48 = *(v0 + 200);
  v47 = *(v0 + 208);
  v49 = *(v0 + 184);
  v50 = *(v0 + 192);
  Fence.finder.getter();
  (*(v50 + 104))(v48, v45, v49);
  LOBYTE(v46) = static Fence.Participant.== infix(_:_:)();
  v51 = *(v50 + 8);
  v51(v48, v49);
  v51(v47, v49);
  if ((v46 & 1) == 0)
  {
LABEL_15:
    v59 = *(v0 + 344);
    v61 = *(v0 + 304);
    v60 = *(v0 + 312);
    v56 = *(v0 + 296);
    v57 = *(v0 + 272);
    v58 = *(v0 + 280);
    goto LABEL_16;
  }

  v52 = *(v0 + 352);
  v53 = *(v0 + 360);
  v54 = *(v0 + 344);
  v55 = *(v0 + 176);
  Fence.muteEndDate.getter();
  if ((*(v53 + 48))(v55, 1, v52) != 1)
  {
    v62 = *(v0 + 400);
    v63 = *(v0 + 352);
    v64 = *(v0 + 360);
    (*(v64 + 32))(v62, *(v0 + 176), v63);
    sub_1002AB19C(&qword_1005B0BF0, &type metadata accessor for Date);
    v65 = dispatch thunk of static Comparable.< infix(_:_:)();
    (*(v64 + 8))(v62, v63);
    if (v65)
    {
      goto LABEL_13;
    }

    goto LABEL_15;
  }

  sub_100002CE0(*(v0 + 176), &unk_1005AE5B0, &qword_1004C32F0);
LABEL_13:
  v66 = *(v0 + 408);
  v172 = *(v0 + 416);
  v68 = *(v0 + 384);
  v67 = *(v0 + 392);
  v154 = *(v0 + 376);
  v159 = *(v0 + 368);
  v70 = *(v0 + 352);
  v69 = *(v0 + 360);
  v72 = *(v0 + 160);
  v71 = *(v0 + 168);
  v73 = *(v0 + 152);
  v148 = *(*(v0 + 280) + 16);
  v148(*(v0 + 288), *(v0 + 296), *(v0 + 272));
  Fence.Schedule.Matcher.init(schedule:)();
  Fence.Schedule.Matcher.previousEndDate(from:)();
  v145 = *(v72 + 8);
  v145(v71, v73);
  v74 = *(v69 + 16);
  *(v0 + 528) = v74;
  *(v0 + 536) = (v69 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v74(v68, v67, v70);
  v74(v154, v66, v70);
  v74(v159, v67, v70);
  v75 = Logger.logObject.getter();
  v76 = static os_log_type_t.default.getter();
  v77 = os_log_type_enabled(v75, v76);
  v79 = *(v0 + 376);
  v78 = *(v0 + 384);
  v80 = *(v0 + 360);
  v81 = *(v0 + 368);
  v82 = *(v0 + 352);
  if (v77)
  {
    v155 = *(v0 + 376);
    v83 = swift_slowAlloc();
    v173 = swift_slowAlloc();
    v175[0] = v173;
    *v83 = 136446466;
    v160 = v76;
    v84 = Date.localISO8601.getter();
    v86 = v85;
    v87 = *(v80 + 8);
    v87(v78, v82);
    v88 = sub_10000D01C(v84, v86, v175);

    *(v83 + 4) = v88;
    *(v83 + 12) = 2050;
    Date.timeIntervalSince(_:)();
    v90 = v89;
    v87(v81, v82);
    v87(v155, v82);
    *(v83 + 14) = v90;
    _os_log_impl(&_mh_execute_header, v75, v160, "scheduleGraceTimerFired: endDate: %{public}s timeDelta: %{public}f", v83, 0x16u);
    sub_100004984(v173);
  }

  else
  {

    v87 = *(v80 + 8);
    v87(v81, v82);
    v87(v79, v82);
    v87(v78, v82);
  }

  *(v0 + 544) = v87;
  v91 = *(v0 + 408);
  v92 = *(v0 + 392);
  Date.timeIntervalSince(_:)();
  v93 = *(v0 + 392);
  if (v94 > 300.0)
  {
    v95 = *(v0 + 344);
    v96 = *(v0 + 304);
    v97 = *(v0 + 312);
    v98 = *(v0 + 296);
    v99 = *(v0 + 272);
    v100 = *(v0 + 280);
    v101 = *(v0 + 360) + 8;
    v87(*(v0 + 392), *(v0 + 352));
    (*(v100 + 8))(v98, v99);
    (*(v97 + 8))(v95, v96);
    goto LABEL_17;
  }

  v102 = *(v0 + 168);
  v103 = *(v0 + 152);
  v104 = *(v0 + 128);
  v105 = *(v0 + 136);
  v106 = *(v0 + 120);
  v148(*(v0 + 288), *(v0 + 296), *(v0 + 272));
  Fence.Schedule.Matcher.init(schedule:)();
  Fence.Schedule.Matcher.interval(containingDate:)();
  v145(v102, v103);
  if ((*(v105 + 48))(v106, 1, v104) == 1)
  {
    v107 = *(v0 + 416);
    v108 = *(v0 + 344);
    v109 = *(v0 + 328);
    v110 = *(v0 + 304);
    sub_100002CE0(*(v0 + 120), &qword_1005B0BB0, &qword_1004D2830);
    v164(v109, v108, v110);
    v111 = Logger.logObject.getter();
    v161 = static os_log_type_t.error.getter();
    v112 = os_log_type_enabled(v111, v161);
    v113 = *(v0 + 360);
    v168 = *(v0 + 352);
    v174 = *(v0 + 392);
    v114 = *(v0 + 344);
    v115 = *(v0 + 328);
    v117 = *(v0 + 304);
    v116 = *(v0 + 312);
    v118 = *(v0 + 296);
    v119 = *(v0 + 280);
    v165 = *(v0 + 272);
    if (v112)
    {
      v156 = *(v0 + 344);
      v120 = *(v0 + 96);
      v151 = *(v0 + 296);
      v121 = *(v0 + 80);
      v139 = *(v0 + 72);
      bufa = swift_slowAlloc();
      v146 = swift_slowAlloc();
      v175[0] = v146;
      *bufa = 136446210;
      Fence.id.getter();
      sub_1002AB19C(&qword_1005AE800, &type metadata accessor for Fence.ID);
      v122 = dispatch thunk of CustomStringConvertible.description.getter();
      loga = v111;
      v124 = v123;
      (*(v121 + 8))(v120, v139);
      v125 = *(v116 + 8);
      v125(v115, v117);
      v126 = sub_10000D01C(v122, v124, v175);

      *(bufa + 4) = v126;
      _os_log_impl(&_mh_execute_header, loga, v161, "No valid interval for endDate, fence id: %{public}s", bufa, 0xCu);
      sub_100004984(v146);

      v87(v174, v168);
      (*(v119 + 8))(v151, v165);
      v125(v156, v117);
    }

    else
    {

      v127 = *(v116 + 8);
      v127(v115, v117);
      v87(v174, v168);
      (*(v119 + 8))(v118, v165);
      v127(v114, v117);
    }

    goto LABEL_17;
  }

  (*(*(v0 + 136) + 32))(*(v0 + 144), *(v0 + 120), *(v0 + 128));
  v128 = async function pointer to daemon.getter[1];
  v129 = swift_task_alloc();
  *(v0 + 552) = v129;
  *v129 = v0;
  v129[1] = sub_1002A30BC;

  return daemon.getter();
}

uint64_t sub_1002A53D8()
{
  v1 = v0[68];
  v2 = v0[49];
  v3 = v0[44];
  v38 = v0[43];
  v40 = v0[51];
  v4 = v0[38];
  v5 = v0[39];
  v6 = v0[37];
  v8 = v0[34];
  v7 = v0[35];
  v9 = v0[45] + 8;
  (*(v0[17] + 8))(v0[18], v0[16]);
  v1(v2, v3);
  (*(v7 + 8))(v6, v8);
  (*(v5 + 8))(v38, v4);
  v1(v40, v3);
  v41 = v0[73];
  v11 = v0[50];
  v10 = v0[51];
  v13 = v0[48];
  v12 = v0[49];
  v15 = v0[46];
  v14 = v0[47];
  v17 = v0[42];
  v16 = v0[43];
  v19 = v0[40];
  v18 = v0[41];
  v22 = v0[37];
  v23 = v0[36];
  v24 = v0[33];
  v25 = v0[30];
  v26 = v0[29];
  v27 = v0[26];
  v28 = v0[25];
  v29 = v0[22];
  v30 = v0[21];
  v31 = v0[18];
  v32 = v0[15];
  v33 = v0[14];
  v34 = v0[13];
  v35 = v0[12];
  v36 = v0[11];
  v37 = v0[8];
  v39 = v0[5];

  v20 = v0[1];

  return v20();
}

uint64_t sub_1002A562C()
{
  v1 = v0[72];
  v2 = v0[68];
  v44 = v0[51];
  v36 = v0[49];
  v3 = v0[44];
  v4 = v0[45];
  v5 = v0[39];
  v40 = v0[38];
  v42 = v0[43];
  v38 = v0[37];
  v7 = v0[34];
  v6 = v0[35];
  v8 = v0[17];
  v9 = v0[18];
  v10 = v0[16];

  (*(v8 + 8))(v9, v10);
  v2(v36, v3);
  (*(v6 + 8))(v38, v7);
  (*(v5 + 8))(v42, v40);
  v2(v44, v3);
  v45 = v0[75];
  v12 = v0[50];
  v11 = v0[51];
  v14 = v0[48];
  v13 = v0[49];
  v16 = v0[46];
  v15 = v0[47];
  v18 = v0[42];
  v17 = v0[43];
  v20 = v0[40];
  v19 = v0[41];
  v23 = v0[37];
  v24 = v0[36];
  v25 = v0[33];
  v26 = v0[30];
  v27 = v0[29];
  v28 = v0[26];
  v29 = v0[25];
  v30 = v0[22];
  v31 = v0[21];
  v32 = v0[18];
  v33 = v0[15];
  v34 = v0[14];
  v35 = v0[13];
  v37 = v0[12];
  v39 = v0[11];
  v41 = v0[8];
  v43 = v0[5];

  v21 = v0[1];

  return v21();
}

uint64_t sub_1002A5898()
{
  v213 = v0;
  v1 = *(v0 + 640);
  v2 = *(v0 + 520);
  v3 = *(v0 + 416);
  (*(v0 + 512))(*(v0 + 320), *(v0 + 344), *(v0 + 304));
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v206 = v4;
  v6 = os_log_type_enabled(v4, v5);
  v203 = *(v0 + 640);
  v7 = *(v0 + 624);
  if (v6)
  {
    v152 = *(v0 + 608);
    v154 = *(v0 + 616);
    v161 = *(v0 + 576);
    v186 = *(v0 + 392);
    v192 = *(v0 + 544);
    v179 = *(v0 + 352);
    v198 = *(v0 + 344);
    v8 = *(v0 + 320);
    v148 = *(v0 + 304);
    v182 = *(v0 + 296);
    v171 = *(v0 + 280);
    v175 = *(v0 + 272);
    log = *(v0 + 136);
    buf = *(v0 + 128);
    v167 = *(v0 + 144);
    v9 = *(v0 + 96);
    v169 = *(v0 + 360) + 8;
    v156 = v5;
    v10 = *(v0 + 312) + 8;
    v11 = *(v0 + 72);
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v150 = swift_slowAlloc();
    v212[0] = v150;
    *v12 = 136446466;
    Fence.id.getter();
    sub_1002AB19C(&qword_1005AE800, &type metadata accessor for Fence.ID);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    v152(v9, v11);
    v7(v8, v148);
    v17 = sub_10000D01C(v14, v16, v212);

    *(v12 + 4) = v17;
    *(v12 + 12) = 2114;
    swift_errorRetain();
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 14) = v18;
    *v13 = v18;
    _os_log_impl(&_mh_execute_header, v206, v156, "Failed to trigger fence %{public}s, error: %{public}@", v12, 0x16u);
    sub_100002CE0(v13, &qword_1005A9670, &unk_1004C2480);

    sub_100004984(v150);

    (log[1].isa)(v167, buf);
    v192(v186, v179);
    (*(v171 + 8))(v182, v175);
    v7(v198, v148);
  }

  else
  {
    v19 = *(v0 + 576);
    v187 = *(v0 + 392);
    v193 = *(v0 + 544);
    v20 = *(v0 + 360);
    v180 = *(v0 + 352);
    v199 = *(v0 + 344);
    v21 = *(v0 + 312);
    v22 = *(v0 + 320);
    v23 = *(v0 + 304);
    v183 = *(v0 + 296);
    v24 = *(v0 + 280);
    v176 = *(v0 + 272);
    v25 = *(v0 + 136);
    v26 = *(v0 + 144);
    v27 = *(v0 + 128);

    v7(v22, v23);
    (*(v25 + 8))(v26, v27);
    v193(v187, v180);
    (*(v24 + 8))(v183, v176);
    v7(v199, v23);
  }

  sub_100002CE0(*(v0 + 112), &qword_1005B0B98, &qword_1004D27F0);
  v28 = *(v0 + 504) + 1;
  if (v28 == *(v0 + 496))
  {
LABEL_5:
    v29 = *(v0 + 488);
    v31 = *(v0 + 400);
    v30 = *(v0 + 408);
    v33 = *(v0 + 384);
    v32 = *(v0 + 392);
    v35 = *(v0 + 368);
    v34 = *(v0 + 376);
    v37 = *(v0 + 352);
    v36 = *(v0 + 360);
    v38 = *(v0 + 344);
    v147 = *(v0 + 336);
    v149 = *(v0 + 328);
    v151 = *(v0 + 320);
    v153 = *(v0 + 296);
    v155 = *(v0 + 288);
    v157 = *(v0 + 264);
    loga = *(v0 + 240);
    v162 = *(v0 + 232);
    bufa = *(v0 + 208);
    v168 = *(v0 + 200);
    v170 = *(v0 + 176);
    v172 = *(v0 + 168);
    v177 = *(v0 + 144);
    v181 = *(v0 + 120);
    v184 = *(v0 + 112);
    v188 = *(v0 + 104);
    v194 = *(v0 + 96);
    v200 = *(v0 + 88);
    v204 = *(v0 + 64);
    v207 = *(v0 + 40);

    (*(v36 + 8))(v30, v37);

    v39 = *(v0 + 8);

    return v39();
  }

  while (1)
  {
    *(v0 + 504) = v28;
    v41 = *(v0 + 488);
    if (v28 >= *(v41 + 16))
    {
      __break(1u);
      return daemon.getter();
    }

    v42 = *(v0 + 652);
    v43 = *(v0 + 344);
    v44 = *(v0 + 304);
    v45 = *(v0 + 312);
    v47 = *(v0 + 256);
    v46 = *(v0 + 264);
    v48 = *(v0 + 248);
    v50 = *(v45 + 16);
    v45 += 16;
    v49 = v50;
    v51 = v41 + ((*(v0 + 648) + 32) & ~*(v0 + 648)) + *(v45 + 56) * v28;
    *(v0 + 512) = v50;
    *(v0 + 520) = v45 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v50(v43, v51, v44);
    Fence.variant.getter();
    if ((*(v47 + 88))(v46, v48) == v42)
    {
      break;
    }

    v73 = *(v0 + 344);
    v74 = *(v0 + 304);
    v75 = *(v0 + 312);
    v77 = *(v0 + 256);
    v76 = *(v0 + 264);
    v78 = *(v0 + 248);
LABEL_19:
    (*(v75 + 8))(v73, v74);
    (*(v77 + 8))(v76, v78);
LABEL_20:
    v28 = *(v0 + 504) + 1;
    if (v28 == *(v0 + 496))
    {
      goto LABEL_5;
    }
  }

  v201 = v49;
  v208 = *(v0 + 656);
  v52 = *(v0 + 344);
  v53 = *(v0 + 296);
  v54 = *(v0 + 272);
  v55 = *(v0 + 280);
  v56 = *(v0 + 264);
  v57 = *(v0 + 240);
  v58 = *(v0 + 224);
  v59 = *(v0 + 232);
  v60 = *(v0 + 216);
  (*(*(v0 + 256) + 96))(v56, *(v0 + 248));
  (*(v55 + 32))(v53, v56, v54);
  Fence.acceptanceStatus.getter();
  (*(v58 + 104))(v59, v208, v60);
  LOBYTE(v52) = static Fence.AcceptanceStatus.== infix(_:_:)();
  v61 = *(v58 + 8);
  v61(v59, v60);
  v61(v57, v60);
  if ((v52 & 1) == 0)
  {
    goto LABEL_18;
  }

  v62 = *(v0 + 660);
  v63 = *(v0 + 344);
  v65 = *(v0 + 200);
  v64 = *(v0 + 208);
  v66 = *(v0 + 184);
  v67 = *(v0 + 192);
  Fence.finder.getter();
  (*(v67 + 104))(v65, v62, v66);
  LOBYTE(v63) = static Fence.Participant.== infix(_:_:)();
  v68 = *(v67 + 8);
  v68(v65, v66);
  v68(v64, v66);
  if ((v63 & 1) == 0)
  {
LABEL_18:
    v76 = *(v0 + 344);
    v78 = *(v0 + 304);
    v77 = *(v0 + 312);
    v73 = *(v0 + 296);
    v74 = *(v0 + 272);
    v75 = *(v0 + 280);
    goto LABEL_19;
  }

  v69 = *(v0 + 352);
  v70 = *(v0 + 360);
  v71 = *(v0 + 344);
  v72 = *(v0 + 176);
  Fence.muteEndDate.getter();
  if ((*(v70 + 48))(v72, 1, v69) != 1)
  {
    v79 = *(v0 + 400);
    v80 = *(v0 + 352);
    v81 = *(v0 + 360);
    (*(v81 + 32))(v79, *(v0 + 176), v80);
    sub_1002AB19C(&qword_1005B0BF0, &type metadata accessor for Date);
    v82 = dispatch thunk of static Comparable.< infix(_:_:)();
    (*(v81 + 8))(v79, v80);
    if (v82)
    {
      goto LABEL_16;
    }

    goto LABEL_18;
  }

  sub_100002CE0(*(v0 + 176), &unk_1005AE5B0, &qword_1004C32F0);
LABEL_16:
  v83 = *(v0 + 408);
  v209 = *(v0 + 416);
  v85 = *(v0 + 384);
  v84 = *(v0 + 392);
  v189 = *(v0 + 376);
  v195 = *(v0 + 368);
  v87 = *(v0 + 352);
  v86 = *(v0 + 360);
  v89 = *(v0 + 160);
  v88 = *(v0 + 168);
  v90 = *(v0 + 152);
  v178 = *(*(v0 + 280) + 16);
  v178(*(v0 + 288), *(v0 + 296), *(v0 + 272));
  Fence.Schedule.Matcher.init(schedule:)();
  Fence.Schedule.Matcher.previousEndDate(from:)();
  v173 = *(v89 + 8);
  v173(v88, v90);
  v91 = *(v86 + 16);
  *(v0 + 528) = v91;
  *(v0 + 536) = (v86 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v91(v85, v84, v87);
  v91(v189, v83, v87);
  v91(v195, v84, v87);
  v92 = Logger.logObject.getter();
  v93 = static os_log_type_t.default.getter();
  v94 = os_log_type_enabled(v92, v93);
  v96 = *(v0 + 376);
  v95 = *(v0 + 384);
  v97 = *(v0 + 360);
  v98 = *(v0 + 368);
  v99 = *(v0 + 352);
  if (v94)
  {
    v190 = *(v0 + 376);
    v100 = swift_slowAlloc();
    v210 = swift_slowAlloc();
    v212[0] = v210;
    *v100 = 136446466;
    v196 = v93;
    v101 = Date.localISO8601.getter();
    v103 = v102;
    v104 = *(v97 + 8);
    v104(v95, v99);
    v105 = sub_10000D01C(v101, v103, v212);

    *(v100 + 4) = v105;
    *(v100 + 12) = 2050;
    Date.timeIntervalSince(_:)();
    v107 = v106;
    v104(v98, v99);
    v104(v190, v99);
    *(v100 + 14) = v107;
    _os_log_impl(&_mh_execute_header, v92, v196, "scheduleGraceTimerFired: endDate: %{public}s timeDelta: %{public}f", v100, 0x16u);
    sub_100004984(v210);
  }

  else
  {

    v104 = *(v97 + 8);
    v104(v98, v99);
    v104(v96, v99);
    v104(v95, v99);
  }

  *(v0 + 544) = v104;
  v108 = *(v0 + 408);
  v109 = *(v0 + 392);
  Date.timeIntervalSince(_:)();
  v110 = *(v0 + 392);
  if (v111 > 300.0)
  {
    v112 = *(v0 + 344);
    v113 = *(v0 + 304);
    v114 = *(v0 + 312);
    v115 = *(v0 + 296);
    v116 = *(v0 + 272);
    v117 = *(v0 + 280);
    v118 = *(v0 + 360) + 8;
    v104(*(v0 + 392), *(v0 + 352));
    (*(v117 + 8))(v115, v116);
    (*(v114 + 8))(v112, v113);
    goto LABEL_20;
  }

  v119 = *(v0 + 168);
  v120 = *(v0 + 152);
  v121 = *(v0 + 128);
  v122 = *(v0 + 136);
  v123 = *(v0 + 120);
  v178(*(v0 + 288), *(v0 + 296), *(v0 + 272));
  Fence.Schedule.Matcher.init(schedule:)();
  Fence.Schedule.Matcher.interval(containingDate:)();
  v173(v119, v120);
  if ((*(v122 + 48))(v123, 1, v121) == 1)
  {
    v124 = *(v0 + 416);
    v125 = *(v0 + 344);
    v126 = *(v0 + 328);
    v127 = *(v0 + 304);
    sub_100002CE0(*(v0 + 120), &qword_1005B0BB0, &qword_1004D2830);
    v201(v126, v125, v127);
    v128 = Logger.logObject.getter();
    v197 = static os_log_type_t.error.getter();
    v129 = os_log_type_enabled(v128, v197);
    v130 = *(v0 + 360);
    v205 = *(v0 + 352);
    v211 = *(v0 + 392);
    v131 = *(v0 + 344);
    v132 = *(v0 + 328);
    v134 = *(v0 + 304);
    v133 = *(v0 + 312);
    v135 = *(v0 + 296);
    v136 = *(v0 + 280);
    v202 = *(v0 + 272);
    if (v129)
    {
      v191 = *(v0 + 344);
      v137 = *(v0 + 96);
      v185 = *(v0 + 296);
      v138 = *(v0 + 80);
      v163 = *(v0 + 72);
      bufb = swift_slowAlloc();
      v174 = swift_slowAlloc();
      v212[0] = v174;
      *bufb = 136446210;
      Fence.id.getter();
      sub_1002AB19C(&qword_1005AE800, &type metadata accessor for Fence.ID);
      v139 = dispatch thunk of CustomStringConvertible.description.getter();
      logb = v128;
      v141 = v140;
      (*(v138 + 8))(v137, v163);
      v142 = *(v133 + 8);
      v142(v132, v134);
      v143 = sub_10000D01C(v139, v141, v212);

      *(bufb + 4) = v143;
      _os_log_impl(&_mh_execute_header, logb, v197, "No valid interval for endDate, fence id: %{public}s", bufb, 0xCu);
      sub_100004984(v174);

      v104(v211, v205);
      (*(v136 + 8))(v185, v202);
      v142(v191, v134);
    }

    else
    {

      v144 = *(v133 + 8);
      v144(v132, v134);
      v104(v211, v205);
      (*(v136 + 8))(v135, v202);
      v144(v131, v134);
    }

    goto LABEL_20;
  }

  (*(*(v0 + 136) + 32))(*(v0 + 144), *(v0 + 120), *(v0 + 128));
  v145 = async function pointer to daemon.getter[1];
  v146 = swift_task_alloc();
  *(v0 + 552) = v146;
  *v146 = v0;
  v146[1] = sub_1002A30BC;

  return daemon.getter();
}

uint64_t sub_1002A67EC(int *a1)
{
  v5 = (a1 + *a1);
  v2 = a1[1];
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10000368C;

  return v5();
}

uint64_t sub_1002A68D4(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 32) = a5;
  *(v6 + 40) = a6;
  *(v6 + 160) = a4;
  v8 = sub_10004B564(&unk_1005AB4F0, &unk_1004C5460);
  *(v6 + 48) = v8;
  v9 = *(v8 - 8);
  *(v6 + 56) = v9;
  v10 = *(v9 + 64) + 15;
  *(v6 + 64) = swift_task_alloc();
  v11 = sub_10004B564(&qword_1005AB4E8, &qword_1004C5458);
  *(v6 + 72) = v11;
  v12 = *(v11 - 8);
  *(v6 + 80) = v12;
  v13 = *(v12 + 64) + 15;
  v14 = swift_task_alloc();
  *(v6 + 88) = v14;
  v15 = a4;
  if (a4)
  {
    if (a4 == 1)
    {
      v16 = 0xD00000000000002FLL;
    }

    else
    {
      v16 = 0xD00000000000002ELL;
    }

    if (v15 == 1)
    {
      v17 = "enceScheduleTimer";
    }

    else
    {
      v17 = ".findmylocated.FenceInviteTimer";
    }
  }

  else
  {
    v16 = 0xD000000000000031;
    v17 = "com.apple.mobileme.fmf3";
  }

  *(v6 + 96) = v17;
  v18 = *(&async function pointer to dispatch thunk of XPCAlarmEventHandler.asyncStream(name:) + 1);
  v21 = (&async function pointer to dispatch thunk of XPCAlarmEventHandler.asyncStream(name:) + async function pointer to dispatch thunk of XPCAlarmEventHandler.asyncStream(name:));
  v19 = swift_task_alloc();
  *(v6 + 104) = v19;
  *v19 = v6;
  v19[1] = sub_1002A6AC0;

  return v21(v14, v16, v17 | 0x8000000000000000);
}

uint64_t sub_1002A6AC0()
{
  v1 = *(*v0 + 104);
  v2 = *(*v0 + 96);
  v4 = *v0;

  return _swift_task_switch(sub_1002A6BD8, 0, 0);
}

uint64_t sub_1002A6BD8()
{
  v21 = v0;
  if (qword_1005A80E8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 112) = sub_10000A6F0(v1, qword_1005DFF88);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 160);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v20 = v6;
    *v5 = 136446210;
    v7 = "enceScheduleTimer";
    if (v4 == 1)
    {
      v8 = 0xD00000000000002FLL;
    }

    else
    {
      v8 = 0xD00000000000002ELL;
    }

    if (v4 != 1)
    {
      v7 = ".findmylocated.FenceInviteTimer";
    }

    if (v4)
    {
      v9 = v8;
    }

    else
    {
      v9 = 0xD000000000000031;
    }

    if (v4)
    {
      v10 = v7;
    }

    else
    {
      v10 = "com.apple.mobileme.fmf3";
    }

    v11 = sub_10000D01C(v9, v10 | 0x8000000000000000, &v20);

    *(v5 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v2, v3, "XPC event stream created for %{public}s", v5, 0xCu);
    sub_100004984(v6);
  }

  v12 = *(v0 + 88);
  v14 = *(v0 + 64);
  v13 = *(v0 + 72);
  AsyncStream.makeAsyncIterator()();
  v15 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v16 = swift_task_alloc();
  *(v0 + 120) = v16;
  *v16 = v0;
  v16[1] = sub_1002A6DF8;
  v17 = *(v0 + 64);
  v18 = *(v0 + 48);

  return AsyncStream.Iterator.next(isolation:)(v0 + 16, 0, 0, v18);
}

uint64_t sub_1002A6DF8()
{
  v1 = *(*v0 + 120);
  v3 = *v0;

  return _swift_task_switch(sub_1002A6EF4, 0, 0);
}

uint64_t sub_1002A6EF4()
{
  v38 = v0;
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  *(v0 + 128) = v2;
  *(v0 + 136) = v1;
  if (!v1)
  {
    (*(*(v0 + 56) + 8))(*(v0 + 64), *(v0 + 48));
    goto LABEL_5;
  }

  if (static Task<>.isCancelled.getter())
  {
    (*(*(v0 + 56) + 8))(*(v0 + 64), *(v0 + 48));

LABEL_5:
    v3 = *(v0 + 112);
    v4 = static Task<>.isCancelled.getter();
    if (v4)
    {
      v5 = 0x656C6C65636E6163;
    }

    else
    {
      v5 = 0x63206D6165727473;
    }

    if (v4)
    {
      v6 = 0xE900000000000064;
    }

    else
    {
      v6 = 0xED00006465736F6CLL;
    }

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = *(v0 + 160);
      v10 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      *v10 = 136446466;
      v11 = "enceScheduleTimer";
      if (v9 == 1)
      {
        v12 = 0xD00000000000002FLL;
      }

      else
      {
        v12 = 0xD00000000000002ELL;
      }

      if (v9 != 1)
      {
        v11 = ".findmylocated.FenceInviteTimer";
      }

      if (v9)
      {
        v13 = v12;
      }

      else
      {
        v13 = 0xD000000000000031;
      }

      if (v9)
      {
        v14 = v11;
      }

      else
      {
        v14 = "com.apple.mobileme.fmf3";
      }

      v15 = *(v0 + 80);
      v34 = *(v0 + 72);
      v35 = *(v0 + 88);
      v16 = sub_10000D01C(v13, v14 | 0x8000000000000000, &v37);

      *(v10 + 4) = v16;
      *(v10 + 12) = 2082;
      v17 = sub_10000D01C(v5, v6, &v37);

      *(v10 + 14) = v17;
      _os_log_impl(&_mh_execute_header, v7, v8, "XPC alarm event handler ended for %{public}s: %{public}s", v10, 0x16u);
      swift_arrayDestroy();

      (*(v15 + 8))(v35, v34);
    }

    else
    {
      v19 = *(v0 + 80);
      v18 = *(v0 + 88);
      v20 = *(v0 + 72);

      (*(v19 + 8))(v18, v20);
    }

    v21 = *(v0 + 88);
    v22 = *(v0 + 64);

    v23 = *(v0 + 8);

    return v23();
  }

  v25 = *(v0 + 112);

  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v37 = v29;
    *v28 = 136446210;
    *(v28 + 4) = sub_10000D01C(v2, v1, &v37);
    _os_log_impl(&_mh_execute_header, v26, v27, "XPC alarm fired for %{public}s", v28, 0xCu);
    sub_100004984(v29);
  }

  *(v0 + 160);
  v30 = *(v0 + 32);
  static XPCAlarm.unregister(identifier:)();

  v36 = (v30 + *v30);
  v31 = v30[1];
  v32 = swift_task_alloc();
  *(v0 + 144) = v32;
  *v32 = v0;
  v32[1] = sub_1002A73B4;
  v33 = *(v0 + 40);

  return v36();
}

uint64_t sub_1002A73B4()
{
  v2 = *(*v1 + 144);
  v3 = *v1;
  v3[19] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1002A7540, 0, 0);
  }

  else
  {
    v4 = v3[17];

    v5 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
    v6 = swift_task_alloc();
    v3[15] = v6;
    *v6 = v3;
    v6[1] = sub_1002A6DF8;
    v7 = v3[8];
    v8 = v3[6];

    return AsyncStream.Iterator.next(isolation:)(v3 + 2, 0, 0, v8);
  }
}

uint64_t sub_1002A7540()
{
  v21 = v0;
  v1 = v0[19];
  v2 = v0[17];
  v3 = v0[14];

  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[19];
  v8 = v0[17];
  if (v6)
  {
    v9 = v0[16];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v20 = v12;
    *v10 = 136446466;
    v13 = sub_10000D01C(v9, v8, &v20);

    *(v10 + 4) = v13;
    *(v10 + 12) = 2114;
    swift_errorRetain();
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v14;
    *v11 = v14;
    _os_log_impl(&_mh_execute_header, v4, v5, "XPC alarm event handler for %{public}s failed with %{public}@", v10, 0x16u);
    sub_100002CE0(v11, &qword_1005A9670, &unk_1004C2480);

    sub_100004984(v12);
  }

  else
  {
  }

  v15 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v16 = swift_task_alloc();
  v0[15] = v16;
  *v16 = v0;
  v16[1] = sub_1002A6DF8;
  v17 = v0[8];
  v18 = v0[6];

  return AsyncStream.Iterator.next(isolation:)(v0 + 2, 0, 0, v18);
}

uint64_t sub_1002A7778(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a4;
  v5 = *(*(sub_10004B564(&qword_1005A9690, &qword_1004C2A00) - 8) + 64) + 15;
  v4[10] = swift_task_alloc();
  v4[11] = swift_task_alloc();
  v6 = type metadata accessor for ContinuousClock.Instant();
  v4[12] = v6;
  v7 = *(v6 - 8);
  v4[13] = v7;
  v4[14] = *(v7 + 64);
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  v8 = *(*(sub_10004B564(&qword_1005AACD0, &unk_1004C4750) - 8) + 64) + 15;
  v4[17] = swift_task_alloc();
  v9 = sub_10004B564(&qword_1005AACE0, &qword_1004C4760);
  v4[18] = v9;
  v10 = *(v9 - 8);
  v4[19] = v10;
  v11 = *(v10 + 64) + 15;
  v4[20] = swift_task_alloc();
  v12 = sub_10004B564(&qword_1005AACD8, &qword_1004D8900);
  v4[21] = v12;
  v13 = *(v12 - 8);
  v4[22] = v13;
  v14 = *(v13 + 64) + 15;
  v4[23] = swift_task_alloc();
  v15 = async function pointer to daemon.getter[1];
  v16 = swift_task_alloc();
  v4[24] = v16;
  *v16 = v4;
  v16[1] = sub_1002A79C8;

  return daemon.getter();
}

uint64_t sub_1002A79C8(uint64_t a1)
{
  v3 = *(*v1 + 192);
  v7 = *v1;
  *(*v1 + 200) = a1;

  type metadata accessor for Daemon();
  sub_1002AB19C(&qword_1005AB4E0, &type metadata accessor for Daemon);
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1002A7B20, v5, v4);
}

uint64_t sub_1002A7B20()
{
  v1 = *(v0 + 200);
  *(v0 + 208) = Daemon.darwinNotificationHandler.getter();

  type metadata accessor for DarwinNotificationHandler();
  sub_1002AB19C(&qword_1005AACE8, &type metadata accessor for DarwinNotificationHandler);
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1002A7BF8, v3, v2);
}

uint64_t sub_1002A7BF8()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 184);
  dispatch thunk of DarwinNotificationHandler.asyncStream(name:)();

  return _swift_task_switch(sub_1002A7C84, 0, 0);
}

uint64_t sub_1002A7C84()
{
  v1 = v0[23];
  v3 = v0[20];
  v2 = v0[21];
  v4 = v0[9];
  AsyncStream.makeAsyncIterator()();
  swift_beginAccess();
  v5 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v6 = swift_task_alloc();
  v0[27] = v6;
  *v6 = v0;
  v6[1] = sub_1002A7D4C;
  v7 = v0[20];
  v8 = v0[17];
  v9 = v0[18];

  return AsyncStream.Iterator.next(isolation:)(v8, 0, 0, v9);
}

uint64_t sub_1002A7D4C()
{
  v1 = *(*v0 + 216);
  v3 = *v0;

  return _swift_task_switch(sub_1002A7E48, 0, 0);
}

uint64_t sub_1002A7E48()
{
  v1 = v0[17];
  v2 = type metadata accessor for DarwinNotification();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    v4 = v0[22];
    v3 = v0[23];
    v5 = v0[21];
    v7 = v0[15];
    v6 = v0[16];
    v9 = v0[10];
    v8 = v0[11];
    (*(v0[19] + 8))(v0[20], v0[18]);
    (*(v4 + 8))(v3, v5);

    v10 = v0[1];

    return v10();
  }

  else
  {
    v12 = v0[9];
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v14 = Strong;
      v15 = v0[15];
      v16 = v0[16];
      v17 = v0[13];
      v18 = v0[11];
      v19 = v0[12];
      v38 = v0[14];
      v39 = v0[10];
      static ContinuousClock.now.getter();
      ContinuousClock.Instant.advanced(by:)();
      v40 = *(v17 + 8);
      v40(v15, v19);
      v20 = type metadata accessor for TaskPriority();
      v21 = *(v20 - 8);
      (*(v21 + 56))(v18, 1, 1, v20);
      (*(v17 + 16))(v15, v16, v19);
      v22 = (*(v17 + 80) + 40) & ~*(v17 + 80);
      v23 = swift_allocObject();
      *(v23 + 2) = 0;
      *(v23 + 3) = 0;
      *(v23 + 4) = v14;
      (*(v17 + 32))(&v23[v22], v15, v19);
      sub_100005F04(v18, v39, &qword_1005A9690, &qword_1004C2A00);
      LODWORD(v14) = (*(v21 + 48))(v39, 1, v20);

      v24 = v0[10];
      if (v14 == 1)
      {
        sub_100002CE0(v0[10], &qword_1005A9690, &qword_1004C2A00);
      }

      else
      {
        TaskPriority.rawValue.getter();
        (*(v21 + 8))(v24, v20);
      }

      v26 = *(v23 + 2);
      v25 = *(v23 + 3);
      swift_unknownObjectRetain();

      if (v26)
      {
        swift_getObjectType();
        v27 = dispatch thunk of Actor.unownedExecutor.getter();
        v29 = v28;
        swift_unknownObjectRelease();
      }

      else
      {
        v27 = 0;
        v29 = 0;
      }

      sub_100002CE0(v0[11], &qword_1005A9690, &qword_1004C2A00);
      v30 = swift_allocObject();
      *(v30 + 16) = &unk_1004D2930;
      *(v30 + 24) = v23;
      if (v29 | v27)
      {
        v0[2] = 0;
        v0[3] = 0;
        v0[4] = v27;
        v0[5] = v29;
      }

      v31 = v0[16];
      v32 = v0[12];
      swift_task_create();

      v40(v31, v32);
    }

    sub_100002CE0(v0[17], &qword_1005AACD0, &unk_1004C4750);
    v33 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
    v34 = swift_task_alloc();
    v0[27] = v34;
    *v34 = v0;
    v34[1] = sub_1002A7D4C;
    v35 = v0[20];
    v36 = v0[17];
    v37 = v0[18];

    return AsyncStream.Iterator.next(isolation:)(v36, 0, 0, v37);
  }
}

uint64_t sub_1002A8300(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_10004B564(&qword_1005A9690, &qword_1004C2A00);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v22 - v7;
  v9 = type metadata accessor for ContinuousClock.Instant();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v13 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v22 - v14;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v17 = result;
    static ContinuousClock.now.getter();
    ContinuousClock.Instant.advanced(by:)();
    v24 = *(v10 + 8);
    v24(v13, v9);
    v18 = type metadata accessor for TaskPriority();
    (*(*(v18 - 8) + 56))(v8, 1, 1, v18);
    (*(v10 + 16))(v13, v15, v9);
    v19 = *(v10 + 80);
    v23 = a4;
    v20 = (v19 + 40) & ~v19;
    v21 = swift_allocObject();
    *(v21 + 2) = 0;
    *(v21 + 3) = 0;
    *(v21 + 4) = v17;
    (*(v10 + 32))(&v21[v20], v13, v9);

    sub_1001D7F30(0, 0, v8, v23, v21);

    return (v24)(v15, v9);
  }

  return result;
}

uint64_t sub_1002A858C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_100003690;

  return sub_1002A8628(a5);
}

uint64_t sub_1002A8628(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  v3 = type metadata accessor for ContinuousClock.Instant();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v2[7] = *(v4 + 64);
  v2[8] = swift_task_alloc();
  v5 = *(*(sub_10004B564(&qword_1005A9690, &qword_1004C2A00) - 8) + 64) + 15;
  v2[9] = swift_task_alloc();

  return _swift_task_switch(sub_1002A8750, v1, 0);
}

uint64_t sub_1002A8750()
{
  v1 = v0[3];
  v19 = OBJC_IVAR____TtC13findmylocated12FenceService_significantTimeChangeDebounceTask;
  v20 = v1;
  if (*(v1 + OBJC_IVAR____TtC13findmylocated12FenceService_significantTimeChangeDebounceTask))
  {
    v2 = *(v1 + OBJC_IVAR____TtC13findmylocated12FenceService_significantTimeChangeDebounceTask);

    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    Task.cancel()();

    v1 = v0[3];
  }

  v4 = v0[8];
  v3 = v0[9];
  v6 = v0[6];
  v5 = v0[7];
  v7 = v0[5];
  v18 = v0[4];
  v8 = v0[2];
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v3, 1, 1, v9);
  (*(v6 + 16))(v4, v8, v7);
  v10 = sub_1002AB19C(&qword_1005AF4A8, type metadata accessor for FenceService);
  v11 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v12 = (v5 + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = swift_allocObject();
  *(v13 + 16) = v1;
  *(v13 + 24) = v10;
  (*(v6 + 32))(v13 + v11, v4, v7);
  *(v13 + v12) = v1;
  *(v13 + ((v12 + 15) & 0xFFFFFFFFFFFFFFF8)) = v18;
  swift_retain_n();
  v14 = sub_10020D620(0, 0, v3, &unk_1004D2920, v13);
  v15 = *(v20 + v19);
  *(v20 + v19) = v14;

  v16 = v0[1];

  return v16();
}

uint64_t sub_1002A8998(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v7 = type metadata accessor for ContinuousClock();
  v5[7] = v7;
  v8 = *(v7 - 8);
  v5[8] = v8;
  v9 = *(v8 + 64) + 15;
  v5[9] = swift_task_alloc();

  return _swift_task_switch(sub_1002A8A5C, a5, 0);
}

uint64_t sub_1002A8A5C()
{
  v1 = *(v0 + 72);
  *(v0 + 24) = 0;
  *(v0 + 16) = 0;
  *(v0 + 32) = 1;
  static Clock<>.continuous.getter();
  v2 = async function pointer to static Task<>.sleep<A>(until:tolerance:clock:)[1];
  v3 = swift_task_alloc();
  *(v0 + 80) = v3;
  v4 = sub_1002AB19C(&qword_1005B0BC8, &type metadata accessor for ContinuousClock);
  *v3 = v0;
  v3[1] = sub_1002A8B54;
  v5 = *(v0 + 72);
  v6 = *(v0 + 56);
  v7 = *(v0 + 40);

  return static Task<>.sleep<A>(until:tolerance:clock:)(v7, v0 + 16, v5, v6, v4);
}

uint64_t sub_1002A8B54()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 72);
  v5 = *(*v1 + 64);
  v6 = *(*v1 + 56);
  v10 = *v1;
  *(*v1 + 88) = v0;

  (*(v5 + 8))(v4, v6);
  v7 = *(v2 + 48);
  if (v0)
  {
    v8 = sub_1002A94D8;
  }

  else
  {
    v8 = sub_1002A8CD0;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_1002A8CD0()
{
  if (qword_1005A80E8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000A6F0(v1, qword_1005DFF88);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Significant time change", v4, 2u);
  }

  v5 = async function pointer to daemon.getter[1];
  v6 = swift_task_alloc();
  *(v0 + 96) = v6;
  *v6 = v0;
  v6[1] = sub_1002A8E1C;

  return daemon.getter();
}

uint64_t sub_1002A8E1C(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 96);
  v12 = *v1;
  *(v3 + 104) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 112) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for DataManager(0);
  v9 = sub_1002AB19C(&unk_1005AFA50, &type metadata accessor for Daemon);
  v10 = sub_1002AB19C(&qword_1005A90D0, type metadata accessor for DataManager);
  *v6 = v12;
  v6[1] = sub_1002A8FF8;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_1002A8FF8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 112);
  v6 = *v2;
  *(*v2 + 120) = v1;

  if (v1)
  {
    v7 = v4[6];

    return _swift_task_switch(sub_1002A946C, v7, 0);
  }

  else
  {
    v8 = v4[13];

    v4[16] = a1;
    v9 = swift_task_alloc();
    v4[17] = v9;
    *v9 = v6;
    v9[1] = sub_1002A9184;

    return sub_100006424();
  }
}

uint64_t sub_1002A9184(uint64_t a1)
{
  v2 = *(*v1 + 136);
  v3 = *(*v1 + 48);
  v5 = *v1;
  *(*v1 + 144) = a1;

  return _swift_task_switch(sub_1002A929C, v3, 0);
}

uint64_t sub_1002A929C()
{
  v1 = v0[16];

  v2 = swift_task_alloc();
  v0[19] = v2;
  *v2 = v0;
  v2[1] = sub_1002A933C;
  v3 = v0[18];
  v4 = v0[6];

  return sub_1000121BC(v3);
}

uint64_t sub_1002A933C()
{
  v1 = *(*v0 + 152);
  v2 = *(*v0 + 144);
  v3 = *(*v0 + 72);
  v6 = *v0;

  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_1002A946C()
{
  v1 = v0[13];

  v2 = v0[15];
  v3 = v0[9];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1002A94D8()
{
  v1 = v0[11];
  v2 = v0[9];

  v3 = v0[1];

  return v3();
}

id sub_1002A953C()
{
  [v0 coordinate];
  v22 = v1;
  v3 = v2;
  [v0 altitude];
  v5 = v4;
  [v0 horizontalAccuracy];
  v7 = v6;
  [v0 verticalAccuracy];
  v9 = v8;
  [v0 course];
  v11 = v10;
  [v0 courseAccuracy];
  v13 = v12;
  [v0 speed];
  v15 = v14;
  [v0 speedAccuracy];
  v17 = v16;
  v18 = objc_allocWithZone(CLLocation);
  isa = Date._bridgeToObjectiveC()().super.isa;
  v20 = [v18 initWithCoordinate:isa altitude:v22 horizontalAccuracy:v3 verticalAccuracy:v5 course:v7 courseAccuracy:v9 speed:v11 speedAccuracy:v13 timestamp:{v15, v17}];

  return v20;
}

uint64_t sub_1002A9688()
{
  v1[2] = v0;
  v2 = *(*(type metadata accessor for XPCAlarm.Criteria.Options() - 8) + 64) + 15;
  v1[3] = swift_task_alloc();
  v3 = *(*(type metadata accessor for XPCAlarm.Criteria() - 8) + 64) + 15;
  v1[4] = swift_task_alloc();
  v4 = type metadata accessor for XPCAlarm();
  v1[5] = v4;
  v5 = *(v4 - 8);
  v1[6] = v5;
  v6 = *(v5 + 64) + 15;
  v1[7] = swift_task_alloc();
  v7 = type metadata accessor for Date();
  v1[8] = v7;
  v8 = *(v7 - 8);
  v1[9] = v8;
  v9 = *(v8 + 64) + 15;
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();

  return _swift_task_switch(sub_1002A9808, v0, 0);
}

uint64_t sub_1002A9808()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v6 = v0[3];
  v5 = v0[4];
  static Date.now.getter();
  Date.addingTimeInterval(_:)();
  v7 = *(v4 + 8);
  v0[12] = v7;
  v0[13] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v7(v2, v3);
  (*(v4 + 16))(v2, v1, v3);
  static XPCAlarm.Criteria.Options.userVisible.getter();
  XPCAlarm.Criteria.init(date:options:)();
  v8 = async function pointer to XPCAlarm.init(identifier:criteria:)[1];
  v9 = swift_task_alloc();
  v0[14] = v9;
  *v9 = v0;
  v9[1] = sub_1002A9958;
  v10 = v0[7];
  v11 = v0[4];

  return XPCAlarm.init(identifier:criteria:)(v10, 0xD00000000000002ELL, 0x80000001004DE4B0, v11);
}

uint64_t sub_1002A9958()
{
  v1 = *(*v0 + 112);
  v2 = *(*v0 + 56);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 40);
  v5 = *(*v0 + 16);
  v7 = *v0;

  (*(v3 + 8))(v2, v4);

  return _swift_task_switch(sub_1002A9AC4, v5, 0);
}

uint64_t sub_1002A9AC4()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 80);
  v3 = *(v0 + 56);
  v5 = *(v0 + 24);
  v4 = *(v0 + 32);
  (*(v0 + 96))(*(v0 + 88), *(v0 + 64));

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1002A9B6C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = *v2;
  v4 = type metadata accessor for Fence();
  v3[6] = v4;
  v5 = *(v4 - 8);
  v3[7] = v5;
  v6 = *(v5 + 64) + 15;
  v3[8] = swift_task_alloc();
  v7 = *(sub_10004B564(&qword_1005A9148, &qword_1004D2370) - 8);
  v3[9] = v7;
  v3[10] = *(v7 + 64);
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v8 = type metadata accessor for Fence.TriggerPosition();
  v3[13] = v8;
  v9 = *(v8 - 8);
  v3[14] = v9;
  v3[15] = *(v9 + 64);
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v10 = type metadata accessor for Fence.ID();
  v3[18] = v10;
  v11 = *(v10 - 8);
  v3[19] = v11;
  v3[20] = *(v11 + 64);
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  v12 = sub_10004B564(&qword_1005B09C8, &qword_1004D2378);
  v3[23] = v12;
  v13 = *(*(v12 - 8) + 64) + 15;
  v3[24] = swift_task_alloc();

  return _swift_task_switch(sub_1002A9DEC, v2, 0);
}

uint64_t sub_1002A9DEC()
{
  v1 = v0[21];
  v23 = v0[22];
  v30 = v0[20];
  v33 = v0[19];
  v2 = v0[17];
  v24 = v0[18];
  v25 = v0[16];
  v29 = v0[15];
  v4 = v0[13];
  v3 = v0[14];
  v5 = v0[12];
  v28 = v0[10];
  v26 = v0[11];
  v27 = v0[9];
  v6 = v0[4];
  v32 = v0[5];
  v7 = v0[2];
  v8 = v0[3];
  Fence.id.getter();
  v9 = type metadata accessor for Date();
  (*(*(v9 - 8) + 16))(v2, v8, v9);
  (*(v3 + 104))(v2, enum case for Fence.TriggerPosition.undetermined(_:), v4);
  v10 = enum case for Fence.AcceptanceStatus.pendingHidden(_:);
  v11 = type metadata accessor for Fence.AcceptanceStatus();
  v12 = *(v11 - 8);
  (*(v12 + 104))(v5, v10, v11);
  (*(v12 + 56))(v5, 0, 1, v11);
  v31 = *(v6 + OBJC_IVAR____TtC13findmylocated12FenceService_triggerWorkItemQueue);
  v22 = swift_allocObject();
  swift_weakInit();
  (*(v33 + 16))(v1, v23, v24);
  (*(v3 + 16))(v25, v2, v4);
  sub_100005F04(v5, v26, &qword_1005A9148, &qword_1004D2370);
  v13 = (*(v33 + 80) + 24) & ~*(v33 + 80);
  v14 = (v30 + *(v3 + 80) + v13) & ~*(v3 + 80);
  v15 = (v29 + *(v27 + 80) + v14) & ~*(v27 + 80);
  v16 = swift_allocObject();
  v0[25] = v16;
  *(v16 + 16) = v22;
  (*(v33 + 32))(v16 + v13, v1, v24);
  (*(v3 + 32))(v16 + v14, v25, v4);
  sub_1002AA798(v26, v16 + v15);
  *(v16 + ((v28 + v15 + 7) & 0xFFFFFFFFFFFFFFF8)) = v32;
  v17 = *(&async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult<A>(_:) + 1);
  v34 = (&async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult<A>(_:) + async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult<A>(_:));
  v18 = swift_task_alloc();
  v0[26] = v18;
  *v18 = v0;
  v18[1] = sub_1002AA164;
  v20 = v0[23];
  v19 = v0[24];

  return v34(v19, &unk_1004D2878, v16, v20);
}

uint64_t sub_1002AA164()
{
  v2 = *v1;
  v3 = *(*v1 + 208);
  v4 = *(*v1 + 200);
  v17 = *v1;
  *(*v1 + 216) = v0;

  if (v0)
  {
    v5 = v2[4];
    v6 = sub_1002AA3EC;
  }

  else
  {
    v7 = v2[24];
    v8 = v2[22];
    v9 = v2[18];
    v10 = v2[19];
    v11 = v2[17];
    v12 = v2[13];
    v13 = v2[14];
    v14 = v2[12];
    v15 = v2[4];
    sub_100002CE0(v14, &qword_1005A9148, &qword_1004D2370);
    (*(v13 + 8))(v11, v12);
    (*(v10 + 8))(v8, v9);
    sub_100002CE0(v7, &qword_1005B09C8, &qword_1004D2378);
    v6 = sub_1002AA32C;
    v5 = v15;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1002AA32C()
{
  v1 = v0[24];
  v2 = v0[21];
  v3 = v0[22];
  v5 = v0[16];
  v4 = v0[17];
  v7 = v0[11];
  v6 = v0[12];
  v8 = v0[8];

  v9 = v0[1];

  return v9();
}

uint64_t sub_1002AA3EC()
{
  v47 = v0;
  v1 = v0[22];
  v2 = v0[18];
  v3 = v0[19];
  v4 = v0[17];
  v5 = v0[13];
  v6 = v0[14];
  sub_100002CE0(v0[12], &qword_1005A9148, &qword_1004D2370);
  (*(v6 + 8))(v4, v5);
  v7 = *(v3 + 8);
  v7(v1, v2);
  if (qword_1005A80E8 != -1)
  {
    swift_once();
  }

  v8 = v0[27];
  v10 = v0[7];
  v9 = v0[8];
  v11 = v0[6];
  v12 = v0[2];
  v13 = type metadata accessor for Logger();
  sub_10000A6F0(v13, qword_1005DFF88);
  (*(v10 + 16))(v9, v12, v11);
  swift_errorRetain();
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = v0[21];
    v17 = v0[18];
    v42 = v15;
    v18 = v0[7];
    v19 = v0[8];
    v41 = v0[6];
    v44 = v0[27];
    v20 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v46 = v45;
    *v20 = 136446466;
    Fence.id.getter();
    sub_1002AB19C(&qword_1005AE800, &type metadata accessor for Fence.ID);
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    v22 = v7;
    v24 = v23;
    v22(v16, v17);
    (*(v18 + 8))(v19, v41);
    v25 = sub_10000D01C(v21, v24, &v46);

    *(v20 + 4) = v25;
    *(v20 + 12) = 2114;
    swift_errorRetain();
    v26 = _swift_stdlib_bridgeErrorToNSError();
    *(v20 + 14) = v26;
    *v43 = v26;
    _os_log_impl(&_mh_execute_header, v14, v42, "Failed to make fence %{public}s pending: %{public}@", v20, 0x16u);
    sub_100002CE0(v43, &qword_1005A9670, &unk_1004C2480);

    sub_100004984(v45);
  }

  else
  {
    v28 = v0[7];
    v27 = v0[8];
    v29 = v0[6];
    v30 = v0[27];

    (*(v28 + 8))(v27, v29);
  }

  v31 = v0[24];
  v32 = v0[21];
  v33 = v0[22];
  v35 = v0[16];
  v34 = v0[17];
  v37 = v0[11];
  v36 = v0[12];
  v38 = v0[8];

  v39 = v0[1];

  return v39();
}

uint64_t sub_1002AA798(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004B564(&qword_1005A9148, &qword_1004D2370);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002AA808(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10000368C;

  return sub_1002968B4(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1002AA8D0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100003690;

  return sub_1002A7778(a1, v4, v5, v6);
}

uint64_t sub_1002AA9F4(uint64_t a1)
{
  v4 = *(type metadata accessor for ContinuousClock.Instant() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10000368C;

  return sub_1002A858C(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_1002AAAEC(uint64_t a1)
{
  v4 = *(type metadata accessor for ContinuousClock.Instant() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = *(v1 + v6);
  v10 = *(v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_10000368C;

  return sub_1002A8998(a1, v7, v8, v1 + v5, v9);
}

uint64_t sub_1002AAC24()
{
  v1 = type metadata accessor for ContinuousClock.Instant();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1002AACF0(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_10000368C;

  return sub_100296B94(a1, a2, v6, v7, v8);
}

uint64_t sub_1002AADB4()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_10000368C;

  return sub_100297220(v0);
}

uint64_t sub_1002AAE44(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000368C;

  return sub_10029EECC(a1, v5);
}

uint64_t sub_1002AAEFC()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_10000368C;

  return sub_10029EFB4(v0);
}

uint64_t sub_1002AAF8C()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_10000368C;

  return sub_1002A164C(v0);
}

uint64_t sub_1002AB01C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10000368C;

  return sub_1002A67EC(v2);
}

uint64_t sub_1002AB0C8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 48);
  v6 = *(v0 + 56);
  v7 = *(v0 + 64);
  v8 = *(v0 + 40);
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_10000368C;

  return sub_1002A68D4(v2, v3, v4, v8, v5, v6);
}

uint64_t sub_1002AB19C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1002AB1E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FenceTriggerRecord();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002AB248(uint64_t a1)
{
  v2 = type metadata accessor for FenceTriggerRecord();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1002AB2B8()
{
  result = qword_1005B0C08;
  if (!qword_1005B0C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B0C08);
  }

  return result;
}

unint64_t sub_1002AB350(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10058BBF0, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1002AB3A8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1002BCFC0(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1002AB3D4(uint64_t a1)
{
  v2 = sub_1002BCF04();

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_1002AB410(uint64_t a1)
{
  v2 = sub_1002BCF04();

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_1002AB44C()
{
  v0 = type metadata accessor for Logger();
  sub_10004F154(v0, qword_1005DFFE8);
  sub_10000A6F0(v0, qword_1005DFFE8);
  return Logger.init(subsystem:category:)();
}