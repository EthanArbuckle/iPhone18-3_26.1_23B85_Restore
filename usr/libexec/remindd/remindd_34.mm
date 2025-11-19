uint64_t sub_1003550EC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD00000000000001BLL;
  v3 = "REMCDTemplateOperationQueueItem";
  v4 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v6 = 0xD00000000000002DLL;
    }

    else
    {
      v6 = 0xD000000000000030;
    }

    if (v4)
    {
      v5 = "butesAutoTrainer";
    }

    else
    {
      v5 = "REMCDTemplateOperationQueueItem";
    }
  }

  else if (a1 == 2)
  {
    v5 = "d.ICCloudConfigurationUpdater";
    v6 = 0xD000000000000034;
  }

  else if (a1 == 3)
  {
    v5 = "atchUpSyncController";
    v6 = 0xD000000000000031;
  }

  else
  {
    v5 = "ActivityScheduler";
    v6 = 0xD00000000000001BLL;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v2 = 0xD00000000000002DLL;
    }

    else
    {
      v2 = 0xD000000000000030;
    }

    if (a2)
    {
      v3 = "butesAutoTrainer";
    }
  }

  else if (a2 == 2)
  {
    v3 = "d.ICCloudConfigurationUpdater";
    v2 = 0xD000000000000034;
  }

  else if (a2 == 3)
  {
    v3 = "atchUpSyncController";
    v2 = 0xD000000000000031;
  }

  else
  {
    v3 = "ActivityScheduler";
  }

  if (v6 == v2 && (v5 | 0x8000000000000000) == (v3 | 0x8000000000000000))
  {
    v7 = 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v7 & 1;
}

uint64_t sub_10035525C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x72656767697274;
    }

    else
    {
      v3 = 0x44497463656A626FLL;
    }

    if (v2)
    {
      v4 = 0xE700000000000000;
    }

    else
    {
      v4 = 0xE800000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0xD000000000000010;
    v4 = 0x80000001007E9F10;
  }

  else
  {
    if (a1 == 3)
    {
      v3 = 0x4449556D72616C61;
    }

    else
    {
      v3 = 0xD000000000000010;
    }

    if (v2 == 3)
    {
      v4 = 0xE800000000000000;
    }

    else
    {
      v4 = 0x80000001007E9F30;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x72656767697274;
    }

    else
    {
      v9 = 0x44497463656A626FLL;
    }

    if (a2)
    {
      v8 = 0xE700000000000000;
    }

    else
    {
      v8 = 0xE800000000000000;
    }

    if (v3 != v9)
    {
      goto LABEL_37;
    }
  }

  else
  {
    v5 = 0x4449556D72616C61;
    v6 = 0x80000001007E9F30;
    if (a2 == 3)
    {
      v6 = 0xE800000000000000;
    }

    else
    {
      v5 = 0xD000000000000010;
    }

    if (a2 == 2)
    {
      v7 = 0xD000000000000010;
    }

    else
    {
      v7 = v5;
    }

    if (a2 == 2)
    {
      v8 = 0x80000001007E9F10;
    }

    else
    {
      v8 = v6;
    }

    if (v3 != v7)
    {
      goto LABEL_37;
    }
  }

  if (v4 != v8)
  {
LABEL_37:
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_38;
  }

  v10 = 1;
LABEL_38:

  return v10 & 1;
}

uint64_t sub_1003553F0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEC00000065746144;
  v3 = 0x6E6F697461657263;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x6163696E6F6E6163;
    }

    else
    {
      v5 = 1953720684;
    }

    if (v4 == 2)
    {
      v6 = 0xED0000656D614E6CLL;
    }

    else
    {
      v6 = 0xE400000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x4E79616C70736964;
    }

    else
    {
      v5 = 0x6E6F697461657263;
    }

    if (v4)
    {
      v6 = 0xEB00000000656D61;
    }

    else
    {
      v6 = 0xEC00000065746144;
    }
  }

  v7 = 0x6163696E6F6E6163;
  v8 = 0xED0000656D614E6CLL;
  if (a2 != 2)
  {
    v7 = 1953720684;
    v8 = 0xE400000000000000;
  }

  if (a2)
  {
    v3 = 0x4E79616C70736964;
    v2 = 0xEB00000000656D61;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

uint64_t sub_100355550(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD000000000000012;
  v3 = "alarm.reminder.completed";
  v4 = a1;
  if (a1 <= 2u)
  {
    v11 = "inderIdentifiers";
    v12 = 0xD000000000000033;
    if (a1 != 1)
    {
      v12 = 0xD000000000000019;
      v11 = "dReminderIdentifier";
    }

    if (a1)
    {
      v9 = v12;
    }

    else
    {
      v9 = 0xD000000000000020;
    }

    if (v4)
    {
      v10 = v11;
    }

    else
    {
      v10 = "alarm.reminder.completed";
    }
  }

  else
  {
    v5 = "sectionIdentifiers";
    v6 = 0xD000000000000016;
    if (a1 == 5)
    {
      v6 = 0xD000000000000013;
    }

    else
    {
      v5 = "sectionByIdentifier";
    }

    v7 = "savedReminderByIdentifier";
    v8 = 0xD00000000000002CLL;
    if (a1 != 3)
    {
      v8 = 0xD000000000000012;
      v7 = "ntsBySavedReminderIdentifier";
    }

    if (a1 <= 4u)
    {
      v9 = v8;
    }

    else
    {
      v9 = v6;
    }

    if (v4 <= 4)
    {
      v10 = v7;
    }

    else
    {
      v10 = v5;
    }
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v3 = "inderIdentifiers";
        v2 = 0xD000000000000033;
      }

      else
      {
        v3 = "dReminderIdentifier";
        v2 = 0xD000000000000019;
      }
    }

    else
    {
      v2 = 0xD000000000000020;
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v3 = "sectionIdentifiers";
      v2 = 0xD000000000000013;
    }

    else
    {
      v3 = "sectionByIdentifier";
      v2 = 0xD000000000000016;
    }
  }

  else if (a2 == 3)
  {
    v3 = "savedReminderByIdentifier";
    v2 = 0xD00000000000002CLL;
  }

  else
  {
    v3 = "ntsBySavedReminderIdentifier";
  }

  if (v9 == v2 && (v10 | 0x8000000000000000) == (v3 | 0x8000000000000000))
  {
    v13 = 1;
  }

  else
  {
    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v13 & 1;
}

void sub_100355720(uint64_t a1, void **a2)
{
  v4 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v12 - v6;
  sub_100010364(a1, &v12 - v6, &unk_100939D90, "8\n\r");
  v8 = *a2;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  isa = 0;
  if ((*(v10 + 48))(v7, 1, v9) != 1)
  {
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v10 + 8))(v7, v9);
  }

  [v8 setIdentifier:isa];
}

uint64_t sub_10035585C(uint64_t result)
{
  v1 = result;
  if ((result & 0xC000000000000001) != 0)
  {
    __CocoaSet.makeIterator()();
    sub_1000F5104(&unk_100939F10, &qword_100797F30);
    result = Set.Iterator.init(_cocoa:)();
    v1 = v14[1];
    v2 = v14[2];
    v3 = v14[3];
    v4 = v14[4];
    v5 = v14[5];
  }

  else
  {
    v4 = 0;
    v6 = -1 << *(result + 32);
    v2 = result + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(result + 56);
  }

  if (v1 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v9 = v4;
    v10 = v5;
    v11 = v4;
    if (!v5)
    {
      break;
    }

LABEL_12:
    v12 = (v10 - 1) & v10;
    v13 = *(*(v1 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v10)))));

    if (!v13)
    {
      return sub_10001B860();
    }

    while (1)
    {
      sub_100378ACC(v14, v13);

      v4 = v11;
      v5 = v12;
      if ((v1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (__CocoaSet.Iterator.next()())
      {
        sub_1000F5104(&unk_100939F10, &qword_100797F30);
        swift_dynamicCast();
        v13 = v14[0];
        v11 = v4;
        v12 = v5;
        if (v14[0])
        {
          continue;
        }
      }

      return sub_10001B860();
    }
  }

  while (1)
  {
    v11 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v11 >= ((v3 + 64) >> 6))
    {
      return sub_10001B860();
    }

    v10 = *(v2 + 8 * v11);
    ++v9;
    if (v10)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100355A34(uint64_t a1)
{
  PredicateType = type metadata accessor for REMCustomSmartListFilterDescriptor.PostFetchPredicateType();
  v3 = *(PredicateType - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(PredicateType);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = v24 - v9;
  result = __chkstk_darwin(v8);
  v13 = v24 - v12;
  v14 = 0;
  v25 = a1;
  v17 = *(a1 + 56);
  v16 = a1 + 56;
  v15 = v17;
  v18 = 1 << *(v16 - 24);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & v15;
  v21 = (v18 + 63) >> 6;
  v24[1] = v3 + 32;
  v24[2] = v3 + 16;
  v24[0] = v3 + 8;
  if ((v19 & v15) != 0)
  {
    do
    {
      v22 = v14;
LABEL_9:
      v23 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
      (*(v3 + 16))(v13, *(v25 + 48) + *(v3 + 72) * (v23 | (v22 << 6)), PredicateType);
      (*(v3 + 32))(v7, v13, PredicateType);
      sub_100379BD8(v10, v7);
      result = (*(v3 + 8))(v10, PredicateType);
    }

    while (v20);
  }

  while (1)
  {
    v22 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v22 >= v21)
    {
    }

    v20 = *(v16 + 8 * v22);
    ++v14;
    if (v20)
    {
      v14 = v22;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void sub_100355C8C(unint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    __CocoaSet.makeIterator()();
    sub_1000060C8(0, &qword_100938DE0, NSNumber_ptr);
    sub_10000CDE4(&qword_100944230, &qword_100938DE0, NSNumber_ptr);
    Set.Iterator.init(_cocoa:)();
    v1 = v14[1];
    v2 = v14[2];
    v3 = v14[3];
    v4 = v14[4];
    v5 = v14[5];
  }

  else
  {
    v4 = 0;
    v6 = -1 << *(a1 + 32);
    v2 = (a1 + 56);
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = (v8 & *(a1 + 56));
  }

  if ((v1 & 0x8000000000000000) != 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v9 = v4;
    v10 = v5;
    v11 = v4;
    if (!v5)
    {
      break;
    }

LABEL_12:
    v12 = (v10 - 1) & v10;
    v13 = *(*(v1 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v10)))));
    if (!v13)
    {
LABEL_18:
      sub_10001B860();
      return;
    }

    while (1)
    {
      sub_10037B150(v14, v13);

      v4 = v11;
      v5 = v12;
      if ((v1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (__CocoaSet.Iterator.next()())
      {
        sub_1000060C8(0, &qword_100938DE0, NSNumber_ptr);
        swift_dynamicCast();
        v13 = v14[0];
        v11 = v4;
        v12 = v5;
        if (v14[0])
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v11 = (v9 + 1);
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v11 >= ((v3 + 64) >> 6))
    {
      goto LABEL_18;
    }

    v10 = v2[v11];
    ++v9;
    if (v10)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

void sub_100355EE0(unint64_t a1, void (*a2)(void), unint64_t *a3, void (*a4)(uint64_t), void (*a5)(id *))
{
  v6 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    __CocoaSet.makeIterator()();
    a2(0);
    sub_1003932B0(a3, a4);
    Set.Iterator.init(_cocoa:)();
    v6 = v23[1];
    v10 = v23[2];
    v11 = v23[3];
    v12 = v23[4];
    v13 = v23[5];
  }

  else
  {
    v12 = 0;
    v14 = -1 << *(a1 + 32);
    v10 = (a1 + 56);
    v11 = ~v14;
    v15 = -v14;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v13 = (v16 & *(a1 + 56));
  }

  v17 = (v11 + 64) >> 6;
  if ((v6 & 0x8000000000000000) != 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v18 = v12;
    v19 = v13;
    v20 = v12;
    if (!v13)
    {
      break;
    }

LABEL_12:
    v21 = (v19 - 1) & v19;
    if (!*(*(v6 + 48) + ((v20 << 9) | (8 * __clz(__rbit64(v19))))))
    {
LABEL_18:
      sub_10001B860();
      return;
    }

    while (1)
    {
      a5(v23);

      v12 = v20;
      v13 = v21;
      if ((v6 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (__CocoaSet.Iterator.next()())
      {
        a2(0);
        swift_dynamicCast();
        v20 = v12;
        v21 = v13;
        if (v23[0])
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v20 = (v18 + 1);
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v20 >= v17)
    {
      goto LABEL_18;
    }

    v19 = v10[v20];
    ++v18;
    if (v19)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

void sub_1003560E4(uint64_t a1)
{
  v2 = 0;
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      sub_10037DADC(&v10, *(*(a1 + 56) + ((v8 << 9) | (8 * v9))));

      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

void sub_1003561D4(uint64_t a1)
{
  v2 = 0;
  v3 = a1 + 56;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      sub_1000236C4(v10, *(*(a1 + 48) + ((v8 << 10) | (16 * v9))), *(v8 + 8));

      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

void sub_1003562D4(uint64_t a1)
{
  v2 = type metadata accessor for RDPermanentlyHiddenReminder();
  v20 = *(v2 - 8);
  v3 = *(v20 + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v19 - v7;
  __chkstk_darwin(v9);
  v11 = &v19 - v10;
  v12 = 0;
  v13 = 1 << *(a1 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(a1 + 56);
  v16 = (v13 + 63) >> 6;
  while (v15)
  {
    v17 = v12;
LABEL_9:
    v18 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
    sub_1003938B4(*(a1 + 48) + *(v20 + 72) * (v18 | (v17 << 6)), v11, type metadata accessor for RDPermanentlyHiddenReminder);
    sub_10039391C(v11, v5, type metadata accessor for RDPermanentlyHiddenReminder);
    sub_10037E7F4(v8, v5);
    sub_1001A3AF4(v8);
  }

  while (1)
  {
    v17 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v17 >= v16)
    {

      return;
    }

    v15 = *(a1 + 56 + 8 * v17);
    ++v12;
    if (v15)
    {
      v12 = v17;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_1003564A8(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v10 = (*(v1 + 48) + ((v8 << 10) | (16 * v9)));
      v11 = *v10;
      v12 = v10[1];

      sub_100378434(&v13, v11, v12);

      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

uint64_t sub_1003565AC()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_100942E20);
  v1 = sub_100006654(v0, qword_100942E20);
  if (qword_100936430 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100974FD8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

unint64_t sub_10035667C(char a1)
{
  result = 0x70756F72477349;
  switch(a1)
  {
    case 1:
      result = 0x726F6C6F43;
      break;
    case 2:
      result = 0xD00000000000001DLL;
      break;
    case 3:
      result = 0xD00000000000001FLL;
      break;
    case 4:
      result = 0x4C797265636F7247;
      break;
    case 5:
      return result;
    case 6:
      result = 0xD000000000000012;
      break;
    case 7:
      result = 0xD000000000000026;
      break;
    case 8:
      result = 0xD000000000000028;
      break;
    case 9:
      result = 0xD000000000000022;
      break;
    case 10:
      result = 1701667150;
      break;
    case 11:
      result = 0xD000000000000011;
      break;
    case 12:
      result = 0x694C746E65726150;
      break;
    case 13:
      result = 0x614464656E6E6950;
      break;
    case 14:
      result = 0xD00000000000001CLL;
      break;
    case 15:
      result = 0xD000000000000021;
      break;
    case 16:
      result = 0x7265646E696D6552;
      break;
    case 17:
      result = 0xD000000000000010;
      break;
    case 18:
      result = 0xD000000000000018;
      break;
    case 19:
      result = 0xD00000000000001CLL;
      break;
    case 20:
      result = 0xD000000000000019;
      break;
    case 21:
      result = 0x53676E6974726F53;
      break;
    default:
      result = 0x626D456567646142;
      break;
  }

  return result;
}

unint64_t sub_10035692C(char a1)
{
  result = 0x626D456567646162;
  switch(a1)
  {
    case 1:
      result = 0x726F6C6F63;
      break;
    case 2:
    case 8:
      result = 0xD000000000000028;
      break;
    case 3:
      result = 0xD00000000000002ALL;
      break;
    case 4:
      result = 0x4C797265636F7267;
      break;
    case 5:
      result = 0x70756F72477369;
      break;
    case 6:
      result = 0xD000000000000012;
      break;
    case 7:
      result = 0xD000000000000026;
      break;
    case 9:
      result = 0xD000000000000022;
      break;
    case 10:
      result = 1701667182;
      break;
    case 11:
      result = 0x6341746E65726170;
      break;
    case 12:
      result = 0x694C746E65726170;
      break;
    case 13:
      result = 0x614464656E6E6970;
      break;
    case 14:
      result = 0xD00000000000001CLL;
      break;
    case 15:
      result = 0xD000000000000021;
      break;
    case 16:
      result = 0x7265646E696D6572;
      break;
    case 17:
      result = 0xD000000000000010;
      break;
    case 18:
      result = 0xD000000000000018;
      break;
    case 19:
      result = 0xD00000000000001CLL;
      break;
    case 20:
      result = 0xD000000000000019;
      break;
    case 21:
      result = 0x53676E6974726F73;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100356BCC(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_10035692C(*a1);
  v5 = v4;
  if (v3 == sub_10035692C(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_100356C54()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_10035692C(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100356CB8()
{
  sub_10035692C(*v0);
  String.hash(into:)();
}

Swift::Int sub_100356D0C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_10035692C(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100356D6C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_100392D78();
  *a2 = result;
  return result;
}

unint64_t sub_100356D9C@<X0>(unint64_t *a1@<X8>)
{
  result = sub_10035692C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t static REMCDList.existingCloudObject(for:accountID:managedObjectContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = String._bridgeToObjectiveC()();
  v7 = [objc_opt_self() objectWithRecordID:a1 accountID:v6 context:a4];

  if (v7)
  {
    result = swift_dynamicCastUnknownClass();
    if (result)
    {
      return result;
    }
  }

  return 0;
}

id sub_100356F4C(void *a1)
{
  result = [a1 ic_isOwnedByCurrentUser];
  if ((result & 1) == 0)
  {
    sub_100357028();
    v4 = [a1 zoneID];
    v5 = [v4 ownerName];

    if (!v5)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v5 = String._bridgeToObjectiveC()();
    }

    [v1 updateSharedObjectOwnerName:v5];

    return [v1 setSharingStatus:2];
  }

  return result;
}

void sub_100357028()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v11 = __chkstk_darwin(v10).n128_u64[0];
  v13 = &v32 - v12;
  v14 = [v0 account];
  if (v14)
  {
    v15 = v14;
    sub_1000F5104(&unk_100939D60, &unk_1007959E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1007953F0;
    *(inited + 32) = v0;
    v17 = v0;
    sub_100719450(inited, 0);

    swift_setDeallocating();
    v18 = *(inited + 16);
    swift_arrayDestroy();
  }

  else
  {
    if (qword_100935F30 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_100006654(v19, qword_100942E20);
    v20 = v0;
    v33 = Logger.logObject.getter();
    v21 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v33, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v34 = v23;
      *v22 = 136446210;
      v24 = [v20 identifier];
      if (v24)
      {
        v25 = v24;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        (*(v2 + 56))(v9, 0, 1, v1);
      }

      else
      {
        (*(v2 + 56))(v9, 1, 1, v1);
      }

      sub_100031B58(v9, v13, &unk_100939D90, "8\n\r");
      if ((*(v2 + 48))(v13, 1, v1))
      {
        sub_1000050A4(v13, &unk_100939D90, "8\n\r");
        v27 = 0xE700000000000000;
        v28 = 0x6E776F6E6B6E75;
      }

      else
      {
        (*(v2 + 16))(v5, v13, v1);
        sub_1000050A4(v13, &unk_100939D90, "8\n\r");
        v29 = UUID.uuidString.getter();
        v27 = v30;
        (*(v2 + 8))(v5, v1);
        v28 = v29;
      }

      v31 = sub_10000668C(v28, v27, &v34);

      *(v22 + 4) = v31;
      _os_log_impl(&_mh_execute_header, v33, v21, "Tried to update listIDsMergableOrdering after fetching share / undeleting list but list has no parent account {listID: %{public}s}", v22, 0xCu);
      sub_10000607C(v23);
    }

    else
    {
      v26 = v33;
    }
  }
}

id static REMCDList.newCloudObject(for:account:managedObjectContext:)(void *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v8 = [a1 recordID];
  v9 = [v8 recordName];

  if (!v9)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = String._bridgeToObjectiveC()();
  }

  v10 = [swift_getObjCClassFromMetadata() newObjectWithCKRecordName:v9 context:a3 account:a2];

  if (v10)
  {
    v11 = [a2 ckIdentifier];
    if (v11)
    {
      v12 = v11;
      [v10 mergeDataFromRecord:a1 accountID:v11];

      v13 = v10;
      [v13 setCkServerRecord:a1];
      [v13 setInCloud:1];

      [v13 updateParentReferenceIfNecessary];
      v14 = [a1 recordID];
      sub_100356F4C(v14);
    }

    else
    {
      if (qword_100935F30 != -1)
      {
        swift_once();
      }

      v15 = type metadata accessor for Logger();
      sub_100006654(v15, qword_100942E20);
      v16 = a2;
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v32 = v4;
        *v19 = 136446466;
        swift_getMetatypeMetadata();
        v20 = String.init<A>(describing:)();
        v22 = sub_10000668C(v20, v21, &v31);

        *(v19 + 4) = v22;
        *(v19 + 12) = 2082;
        v23 = [v16 remObjectID];
        if (v23)
        {
          v24 = v23;
          v25 = [v23 description];

          v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v28 = v27;
        }

        else
        {
          v28 = 0xE300000000000000;
          v26 = 7104878;
        }

        v29 = sub_10000668C(v26, v28, &v31);

        *(v19 + 14) = v29;
        _os_log_impl(&_mh_execute_header, v17, v18, "newCloudObject: %{public}s with account: %{public}s having nil ckIdentifier", v19, 0x16u);
        swift_arrayDestroy();
      }

      return 0;
    }
  }

  return v10;
}

uint64_t static REMCDList.newPlaceholderObject(for:account:context:)(void *a1, uint64_t a2, uint64_t a3)
{
  v9.receiver = swift_getObjCClassFromMetadata();
  v9.super_class = &OBJC_METACLASS___REMCDList;
  v6 = objc_msgSendSuper2(&v9, "newPlaceholderObjectForRecordID:account:context:", a1, a2, a3);
  if (v6)
  {
    v7 = v6;
    sub_100356F4C(a1);
    return v7;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall REMCDList.objectWasDeletedFromCloudByAnotherDevice()()
{
  if (([v0 isOwnedByCurrentUser] & 1) == 0)
  {
    [v0 updateSharedObjectOwnerName:0];
  }

  v1.receiver = v0;
  v1.super_class = REMCDList;
  objc_msgSendSuper2(&v1, "objectWasDeletedFromCloudByAnotherDevice");
}

Swift::String __swiftcall REMCDList.recordType()()
{
  v0 = 1953720652;
  v1 = 0xE400000000000000;
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

void sub_100357A8C(uint64_t a1, char a2)
{
  if ((a2 & 1) != 0 || (sub_100357C54() & 1) == 0)
  {
    sub_1000F5104(&unk_100939D60, &unk_1007959E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100796900;
    *(inited + 32) = swift_getKeyPath();
    *(inited + 40) = swift_getKeyPath();
    sub_1003EEC48(v2);
    swift_setDeallocating();
    v4 = *(inited + 16);
    swift_arrayDestroy();
    v5 = String._bridgeToObjectiveC()();
    v6 = [v2 mutableOrderedSetValueForKey:v5];

    if (v6)
    {
      sub_1000FE93C(v6, 0);
    }

    else
    {
      if (qword_100935F30 != -1)
      {
        swift_once();
      }

      v7 = type metadata accessor for Logger();
      sub_100006654(v7, qword_100942E20);
      v6 = Logger.logObject.getter();
      v8 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v6, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 0;
        _os_log_impl(&_mh_execute_header, v6, v8, "Not sorting child reminders because REMCDList.mutableOrderedSetValue(forKey: reminders) is nil", v9, 2u);
      }
    }
  }
}

uint64_t sub_100357C54()
{
  v1 = [v0 managedObjectContext];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (v3 && (v4 = v3, (v5 = [v0 recordID]) != 0))
  {
    v6 = v5;
    if ([v4 containerShouldSortChildrenAfterFetchingWithRecordID:v5])
    {
      if (qword_100935F30 != -1)
      {
        swift_once();
      }

      v7 = type metadata accessor for Logger();
      sub_100006654(v7, qword_100942E20);
      v8 = v6;
      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        *v11 = 138543362;
        *(v11 + 4) = v8;
        *v12 = v6;
        v13 = v8;
        _os_log_impl(&_mh_execute_header, v9, v10, "Sorting children (reminders and/or sections) deferred {listRecordID: %{public}@}", v11, 0xCu);
        sub_1000050A4(v12, &unk_100938E70, &unk_100797230);

        v8 = v9;
        v9 = v13;
      }

      v14 = 1;
      v6 = v9;
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

void sub_100357E44()
{
  if ((sub_100357C54() & 1) == 0)
  {
    v1 = [v0 reminderIDsMergeableOrdering];
    if (v1)
    {
      v2 = v1;
      v3 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v5 = v4;

      v6 = objc_opt_self();
      isa = Data._bridgeToObjectiveC()().super.isa;
      v34 = 0;
      v8 = [v6 reminderIDsMergeableOrderingFromReminderIDUUIDStringsJSONData:isa error:&v34];

      if (v8)
      {
        v9 = qword_100935F30;
        v10 = v34;
        if (v9 != -1)
        {
          swift_once();
        }

        v11 = type metadata accessor for Logger();
        sub_100006654(v11, qword_100942E20);
        v12 = v0;
        v13 = Logger.logObject.getter();
        v14 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v13, v14))
        {
          v33 = v5;
          v15 = swift_slowAlloc();
          v16 = swift_slowAlloc();
          v34 = v16;
          *v15 = 136315138;
          v17 = [v12 remObjectID];
          if (v17)
          {
            v18 = v17;
            v19 = [v17 description];

            v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v22 = v21;
          }

          else
          {
            v22 = 0xE300000000000000;
            v20 = 7104878;
          }

          v32 = sub_10000668C(v20, v22, &v34);

          *(v15 + 4) = v32;
          _os_log_impl(&_mh_execute_header, v13, v14, "REMCDList+CloudKit.sortChildReminders(): deserialized reminderIDsMergeableOrdering from data {remObjID: %s}", v15, 0xCu);
          sub_10000607C(v16);

          v5 = v33;
        }

        else
        {
        }

        sub_100357A8C(v8, 1);

        sub_10001BBA0(v3, v5);
      }

      else
      {
        v23 = v34;
        _convertNSErrorToError(_:)();

        swift_willThrow();
        sub_10001BBA0(v3, v5);
        if (qword_100935F30 != -1)
        {
          swift_once();
        }

        v24 = type metadata accessor for Logger();
        sub_100006654(v24, qword_100942E20);
        swift_errorRetain();
        v25 = Logger.logObject.getter();
        v26 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v25, v26))
        {
          v27 = swift_slowAlloc();
          v28 = swift_slowAlloc();
          v34 = v28;
          *v27 = 136315138;
          swift_getErrorValue();
          v29 = Error.localizedDescription.getter();
          v31 = sub_10000668C(v29, v30, &v34);

          *(v27 + 4) = v31;
          _os_log_impl(&_mh_execute_header, v25, v26, "Error decoding reminder IDs ordered set and thus not able to sort child reminders {error : %s}", v27, 0xCu);
          sub_10000607C(v28);
        }

        else
        {
        }
      }
    }
  }
}

void sub_100358264()
{
  v1 = v0;
  if ((sub_100357C54() & 1) == 0)
  {
    v2 = [v0 remObjectID];
    if (v2)
    {
      v34 = v2;
      v3 = [v0 storeControllerManagedObjectContext];
      if (v3)
      {
        v4 = v3;
        v5 = qword_1009365B0;
        v6 = v34;
        if (v5 != -1)
        {
          swift_once();
        }

        v7 = sub_100596AB8(v34, 0);
        type metadata accessor for REMCDListSection();
        v8 = [objc_allocWithZone(NSFetchRequest) init];
        v9 = [swift_getObjCClassFromMetadata() entity];
        [v8 setEntity:v9];

        [v8 setAffectedStores:0];
        [v8 setPredicate:v7];

        [v8 setPropertiesToFetch:0];
        [v8 setRelationshipKeyPathsForPrefetching:0];
        sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
        isa = Array._bridgeToObjectiveC()().super.isa;
        [v8 setSortDescriptors:isa];

        v11 = NSManagedObjectContext.fetch<A>(_:)();
        v12 = [v1 sectionIDsOrderingAsData];
        if (v12)
        {
          v13 = v12;
          v14 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v16 = v15;

          sub_1000060C8(0, &qword_10093C660, REMOrderedIdentifierMap_ptr);
          static REMJSONRepresentable.fromJSONData(_:)();
          sub_10001BBA0(v14, v16);
          v17 = REMOrderedIdentifierMap.reorder<A>(objects:)();
          v35 = v36;

          if (qword_100935F30 != -1)
          {
            swift_once();
          }

          v18 = type metadata accessor for Logger();
          sub_100006654(v18, qword_100942E20);
          v19 = v1;
          v20 = Logger.logObject.getter();
          v21 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v20, v21))
          {
            v22 = swift_slowAlloc();
            v33 = swift_slowAlloc();
            v36 = v33;
            *v22 = 136315138;
            v23 = [v19 remObjectID];
            if (v23)
            {
              v24 = v23;
              v25 = [v23 description];

              v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v28 = v27;
            }

            else
            {
              v26 = 7104878;
              v28 = 0xE300000000000000;
            }

            v32 = sub_10000668C(v26, v28, &v36);

            *(v22 + 4) = v32;
            _os_log_impl(&_mh_execute_header, v20, v21, "REMCDList+CloudKit#sortChildSections(): Sorted child sections {cdList: %s}", v22, 0xCu);
            sub_10000607C(v33);
          }
        }

        else
        {
          v17 = v11;
        }

        sub_100271240(v17);

        v29 = objc_allocWithZone(NSMutableOrderedSet);
        v30 = Array._bridgeToObjectiveC()().super.isa;

        v31 = [v29 initWithArray:v30];

        [v1 setSections:v31];
      }

      else
      {
      }
    }
  }
}

Swift::Void __swiftcall REMCDList.sortChildrenObjects()()
{
  sub_100357E44();

  sub_100358264();
}

Swift::Void __swiftcall REMCDList.mergeData(from:accountID:)(CKRecord from, Swift::String accountID)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v6 = String._bridgeToObjectiveC()();
  v18.receiver = v3;
  v18.super_class = REMCDList;
  objc_msgSendSuper2(&v18, "mergeDataFromRecord:accountID:", from.super.isa, v6);

  v7 = [(objc_class *)from.super.isa recordID];
  v8 = [v7 recordName];

  if (!v8)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = String._bridgeToObjectiveC()();
  }

  v9 = [v3 ckIdentifierFromRecordName:v8];

  if (!v9)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = String._bridgeToObjectiveC()();
  }

  [v3 setCkIdentifier:v9];

  sub_1000060C8(0, &qword_10093A360, CKRecord_ptr);
  CKRecordKeyValueSetting.subscript.getter();
  v10 = v17 & 1;
  if ([v3 isGroup] != v10)
  {
    [v3 setIsGroup:v10];
  }

  v17 = 0;
  v11 = [v3 mergeDataRevertedLocallyMarkedForDeletion];
  v12 = [v3 mergeDataRefusedToMergeMarkedForDeletion];
  v13 = v3;
  v14 = from.super.isa;
  sub_1004D6E50(v14, v11, v12, v13, v13, v14, &v17, ObjectType);
  if ([v13 mergeDataRevertedLocallyMarkedForDeletion])
  {
    sub_100357028();
  }

  if (v17 == 1)
  {
    v15 = [v13 parentAccount];
    if (v15)
    {
      v16 = v15;
      if (([v15 ckNeedsInitialFetchFromCloud] & 1) == 0)
      {
        sub_100719350();
      }
    }
  }
}

void sub_100358E3C(unsigned __int8 *a1, NSObject *a2, uint64_t *a3, _BYTE *a4, uint64_t a5)
{
  v404 = a5;
  v414 = a4;
  v418 = a3;
  v417 = a2;
  v411 = 0;
  v6 = type metadata accessor for REMFeatureFlags();
  v408 = *(v6 - 8);
  v7 = *(v408 + 64);
  __chkstk_darwin(v6);
  v9 = &v398 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v399 = &v398 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v398 - v14;
  __chkstk_darwin(v16);
  v18 = &v398 - v17;
  v415 = type metadata accessor for UUID();
  v416 = *(v415 - 8);
  v19 = *(v416 + 64);
  __chkstk_darwin(v415);
  v398 = &v398 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v398 - v22;
  __chkstk_darwin(v24);
  v402 = &v398 - v25;
  v410 = sub_1000F5104(&unk_10093A3D0, &qword_100795770);
  v26 = *(*(v410 - 8) + 64);
  __chkstk_darwin(v410);
  v406 = &v398 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v405 = &v398 - v29;
  v30 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v31 = *(*(v30 - 8) + 64);
  __chkstk_darwin(v30 - 8);
  v33 = &v398 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v401 = &v398 - v35;
  __chkstk_darwin(v36);
  v403 = &v398 - v37;
  __chkstk_darwin(v38);
  v407 = &v398 - v39;
  __chkstk_darwin(v40);
  v42 = &v398 - v41;
  __chkstk_darwin(v43);
  v413 = &v398 - v44;
  __chkstk_darwin(v45);
  v400 = &v398 - v46;
  __chkstk_darwin(v47);
  v49 = &v398 - v48;
  __chkstk_darwin(v50);
  v409 = &v398 - v51;
  __chkstk_darwin(v52);
  v54 = &v398 - v53;
  __chkstk_darwin(v55);
  v412 = &v398 - v56;
  v57 = *a1;
  sub_10035667C(v57);
  switch(v57)
  {
    case 1:
      v129 = CKRecord.subscript.getter();

      v94 = v417;
      if (v129)
      {
        v420 = v129;
        sub_1000F5104(&qword_100938860, &unk_1007A4830);
        if (swift_dynamicCast())
        {
          v128 = sub_10013E558(v419, *(&v419 + 1));

          if (v128)
          {
            v130 = "setColor:";
            goto LABEL_282;
          }
        }
      }

      [v94 setColor:0];
      return;
    case 2:
    case 5:
    case 7:
    case 15:
    case 16:
    case 17:

      goto LABEL_164;
    case 3:
      v117 = [v418 encryptedValues];
      v118 = String._bridgeToObjectiveC()();

      v119 = [v117 objectForKeyedSubscript:v118];
      swift_unknownObjectRelease();

      if (v119)
      {
        v420 = v119;
        sub_1000F5104(&qword_100938860, &unk_1007A4830);
        v120 = swift_dynamicCast();
        if (v120)
        {
          v121 = v419;
        }

        else
        {
          v121 = 0;
        }

        if (v120)
        {
          v122 = *(&v419 + 1);
        }

        else
        {
          v122 = 0;
        }
      }

      else
      {
        v121 = 0;
        v122 = 0;
      }

      v159 = v417;
      v160 = [v417 autoCategorizationLocalCorrectionsChecksum];
      if (v160)
      {
        v161 = v160;
        v162 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v164 = v163;

        if (v122)
        {
          if (v162 == v121 && v122 == v164)
          {
            goto LABEL_94;
          }

          v256 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v256)
          {
            goto LABEL_164;
          }
        }

        else
        {
        }
      }

      else if (!v122)
      {
        return;
      }

      v225 = [v159 autoCategorizationLocalCorrectionsChecksum];
      v257 = [v159 autoCategorizationLocalCorrectionsAsData];
      if (v257)
      {
        v258 = v257;
        v228 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v230 = v259;
      }

      else
      {
        v228 = 0;
        v230 = 0xF000000000000000;
      }

      v260 = [v159 autoCategorizationLocalCorrectionsAsData];
      v261 = &selRef_isEmpty;
      v262 = &selRef_setPublicLinkLastModifiedDate_;
      if (v260)
      {
        v416 = v230;
        v263 = v225;
        v417 = v228;
        v264 = v260;
        v265 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v267 = v266;

        sub_1000060C8(0, &unk_1009440B0, REMTextMemberships_ptr);
        v268 = v411;
        static REMJSONRepresentable.fromJSONData(_:)();
        if (v268)
        {
          sub_10001BBA0(v265, v267);

          v225 = v263;
          goto LABEL_217;
        }

        v411 = 0;
        sub_10001BBA0(v265, v267);
        v269 = v419;
        v228 = v417;
        v225 = v263;
        v230 = v416;
        v262 = &selRef_setPublicLinkLastModifiedDate_;
        v261 = &selRef_isEmpty;
      }

      else
      {
        v269 = 0;
      }

      if (v122)
      {
        v298 = String._bridgeToObjectiveC()();
      }

      else
      {
        v298 = 0;
      }

      [v159 v261[172]];

      v322 = sub_1004E183C();
      if (v323 >> 60 == 15)
      {
        isa = 0;
      }

      else
      {
        v325 = v322;
        v326 = v323;
        isa = Data._bridgeToObjectiveC()().super.isa;
        sub_100031A14(v325, v326);
      }

      [v159 v262[214]];

      if (!v269)
      {
        goto LABEL_222;
      }

      v304 = v269;
      v327 = v411;
      sub_10035C3B4(v304);
      if (!v327)
      {
        goto LABEL_224;
      }

      v416 = v230;
      v417 = v228;

LABEL_217:
      if (qword_100935F30 != -1)
      {
        swift_once();
      }

      v328 = type metadata accessor for Logger();
      sub_100006654(v328, qword_100942E20);
      v329 = v159;
      swift_errorRetain();
      v330 = Logger.logObject.getter();
      v331 = static os_log_type_t.error.getter();

      v332 = os_log_type_enabled(v330, v331);
      v311 = v416;
      if (v332)
      {
        v418 = v225;
        v333 = swift_slowAlloc();
        *&v419 = swift_slowAlloc();
        *v333 = 136446722;
        v334 = sub_1001424F8();
        v336 = sub_10000668C(v334, v335, &v419);

        *(v333 + 4) = v336;
        *(v333 + 12) = 2082;
        v337 = [v329 remObjectID];
        if (v337)
        {
          v338 = v337;
          v339 = [v337 description];

          v340 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v342 = v341;
        }

        else
        {
          v340 = 7104878;
          v342 = 0xE300000000000000;
        }

        v372 = sub_10000668C(v340, v342, &v419);

        *(v333 + 14) = v372;
        *(v333 + 22) = 2082;
        swift_getErrorValue();
        v373 = Error.rem_errorDescription.getter();
        v375 = sub_10000668C(v373, v374, &v419);

        *(v333 + 24) = v375;
        _os_log_impl(&_mh_execute_header, v330, v331, "%{public}s#mergeData(from record: CKRecord, accountID:): Failed to update 'groceryLocalCorrections'. {objectID: %{public}s, error: %{public}s}", v333, 0x20u);
        swift_arrayDestroy();

        v225 = v418;
      }

      else
      {
      }

      [v329 setAutoCategorizationLocalCorrectionsChecksum:v225];

      v370 = v417;
      if (v311 >> 60 == 15)
      {
        v371 = 0;
      }

      else
      {
        sub_100029344(v417, v311);
        v371 = Data._bridgeToObjectiveC()().super.isa;
        sub_100031A14(v370, v311);
      }

      [v329 setAutoCategorizationLocalCorrectionsAsData:v371];
      goto LABEL_275;
    case 4:
      v123 = [v418 encryptedValues];
      swift_getObjectType();
      CKRecordKeyValueSetting.subscript.getter();
      swift_unknownObjectRelease();

      if (*(&v419 + 1))
      {
        v124 = String._bridgeToObjectiveC()();
      }

      else
      {
        v124 = 0;
      }

      v165 = v417;
      [v417 setGroceryLocaleID:v124];

      v166 = [v165 groceryLocaleID];
      if (!v166)
      {
        return;
      }

      if (([v165 markedForDeletion]& 1) != 0)
      {
        return;
      }

      v167 = [v165 storeControllerManagedObjectContext];
      if (!v167)
      {
        return;
      }

      v128 = v167;
      v168 = [v165 parentAccount];
      if (!v168)
      {
        v363 = [v165 storeControllerManagedObjectContext];
        if (!v363)
        {
          goto LABEL_285;
        }

        v364 = v363;
        if (qword_1009367D8 != -1)
        {
          swift_once();
        }

        v168 = sub_100013674(qword_1009752E8);

        if (!v168)
        {
          goto LABEL_285;
        }
      }

      sub_1000F5104(&unk_100939E10, &qword_1007970D0);
      v169 = v411;
      v170 = sub_100015620(0, 0, 128, v168, v128);
      if (v169)
      {
        if (qword_100935F30 != -1)
        {
          swift_once();
        }

        v171 = type metadata accessor for Logger();
        sub_100006654(v171, qword_100942E20);
        v172 = v165;
        swift_errorRetain();
        v173 = Logger.logObject.getter();
        v174 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v173, v174))
        {
          v175 = swift_slowAlloc();
          *&v419 = swift_slowAlloc();
          *v175 = 136446722;
          v176 = sub_1001424F8();
          v178 = sub_10000668C(v176, v177, &v419);

          *(v175 + 4) = v178;
          *(v175 + 12) = 2082;
          v179 = [v172 remObjectID];
          if (v179)
          {
            v180 = v179;
            v181 = [v179 description];

            v182 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v184 = v183;
          }

          else
          {
            v182 = 7104878;
            v184 = 0xE300000000000000;
          }

          v394 = sub_10000668C(v182, v184, &v419);

          *(v175 + 14) = v394;
          *(v175 + 22) = 2082;
          swift_getErrorValue();
          v395 = Error.rem_errorDescription.getter();
          v397 = sub_10000668C(v395, v396, &v419);

          *(v175 + 24) = v397;
          _os_log_impl(&_mh_execute_header, v173, v174, "%{public}s#mergeData(from record: CKRecord, accountID:): Failed to insert grocery operation queue item for downloading grocery assets from Trial. {objectID: %{public}s, error: %{public}s}", v175, 0x20u);
          swift_arrayDestroy();
        }

        else
        {
        }
      }

      else
      {
        v381 = v170;
      }

      return;
    case 6:
      sub_1000060C8(0, &qword_10093A360, CKRecord_ptr);
      v147 = type metadata accessor for Date();
      CKRecordKeyValueSetting.subscript.getter();

      v148 = *(v147 - 8);
      v141 = 0;
      if ((*(v148 + 48))(v18, 1, v147) != 1)
      {
        v141 = Date._bridgeToObjectiveC()().super.isa;
        (*(v148 + 8))(v18, v147);
      }

      [v417 setLastUserAccessDate:v141];
      goto LABEL_71;
    case 8:
      v84 = [v418 encryptedValues];
      v85 = String._bridgeToObjectiveC()();

      v86 = [v84 objectForKeyedSubscript:v85];
      swift_unknownObjectRelease();

      if (v86)
      {
        v420 = v86;
        sub_1000F5104(&qword_100938860, &unk_1007A4830);
        v87 = swift_dynamicCast();
        if (v87)
        {
          v88 = v419;
        }

        else
        {
          v88 = 0;
        }

        if (v87)
        {
          v89 = *(&v419 + 1);
        }

        else
        {
          v89 = 0;
        }
      }

      else
      {
        v88 = 0;
        v89 = 0;
      }

      v151 = v417;
      v152 = [v417 membershipsOfRemindersInSectionsChecksum];
      if (v152)
      {
        v153 = v152;
        v154 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v156 = v155;

        if (v89)
        {
          if (v154 == v88 && v89 == v156)
          {
LABEL_94:

            return;
          }

          v157 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v157)
          {
LABEL_164:

            return;
          }
        }

        else
        {
        }
      }

      else if (!v89)
      {
        return;
      }

      v225 = [v151 membershipsOfRemindersInSectionsChecksum];
      v226 = [v151 membershipsOfRemindersInSectionsAsData];
      if (v226)
      {
        v227 = v226;
        v228 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v230 = v229;
      }

      else
      {
        v228 = 0;
        v230 = 0xF000000000000000;
      }

      v246 = [v151 membershipsOfRemindersInSectionsAsData];
      v247 = &selRef_setPublicLinkLastModifiedDate_;
      v248 = &selRef_setPublicLinkLastModifiedDate_;
      if (v246)
      {
        v416 = v230;
        v249 = v225;
        v417 = v228;
        v250 = v246;
        v251 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v253 = v252;

        sub_1000060C8(0, &qword_1009440A0, REMMemberships_ptr);
        v254 = v411;
        static REMJSONRepresentable.fromJSONData(_:)();
        if (v254)
        {
          sub_10001BBA0(v251, v253);

          v225 = v249;
          goto LABEL_204;
        }

        v411 = 0;
        sub_10001BBA0(v251, v253);
        v255 = v419;
        v228 = v417;
        v225 = v249;
        v230 = v416;
        v248 = &selRef_setPublicLinkLastModifiedDate_;
        v247 = &selRef_setPublicLinkLastModifiedDate_;
      }

      else
      {
        v255 = 0;
      }

      if (v89)
      {
        v297 = String._bridgeToObjectiveC()();
      }

      else
      {
        v297 = 0;
      }

      [v151 v247[215]];

      v299 = sub_1004E183C();
      if (v300 >> 60 == 15)
      {
        v301 = 0;
      }

      else
      {
        v302 = v299;
        v303 = v300;
        v301 = Data._bridgeToObjectiveC()().super.isa;
        sub_100031A14(v302, v303);
      }

      [v151 v248[216]];

      if (!v255)
      {
LABEL_222:

        sub_100031A14(v228, v230);
        return;
      }

      v304 = v255;
      v305 = v411;
      sub_1005EBF7C(v304);
      if (!v305)
      {
LABEL_224:

        sub_100031A14(v228, v230);
        return;
      }

      v416 = v230;
      v417 = v228;

LABEL_204:
      if (qword_100935F30 != -1)
      {
        swift_once();
      }

      v306 = type metadata accessor for Logger();
      sub_100006654(v306, qword_100942E20);
      v307 = v151;
      swift_errorRetain();
      v308 = Logger.logObject.getter();
      v309 = static os_log_type_t.error.getter();

      v310 = os_log_type_enabled(v308, v309);
      v311 = v416;
      if (v310)
      {
        v418 = v225;
        v312 = swift_slowAlloc();
        *&v419 = swift_slowAlloc();
        *v312 = 136446722;
        v313 = sub_1001424F8();
        v315 = sub_10000668C(v313, v314, &v419);

        *(v312 + 4) = v315;
        *(v312 + 12) = 2082;
        v316 = [v307 remObjectID];
        if (v316)
        {
          v317 = v316;
          v318 = [v316 description];

          v319 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v321 = v320;
        }

        else
        {
          v319 = 7104878;
          v321 = 0xE300000000000000;
        }

        v366 = sub_10000668C(v319, v321, &v419);

        *(v312 + 14) = v366;
        *(v312 + 22) = 2082;
        swift_getErrorValue();
        v367 = Error.rem_errorDescription.getter();
        v369 = sub_10000668C(v367, v368, &v419);

        *(v312 + 24) = v369;
        _os_log_impl(&_mh_execute_header, v308, v309, "%{public}s#mergeData(from record: CKRecord, accountID:): Failed to update 'membershipsOfRemindersInSections'. {objectID: %{public}s, error: %{public}s}", v312, 0x20u);
        swift_arrayDestroy();

        v225 = v418;
      }

      else
      {
      }

      [v307 setMembershipsOfRemindersInSectionsChecksum:v225];

      v370 = v417;
      if (v311 >> 60 == 15)
      {
        v371 = 0;
      }

      else
      {
        sub_100029344(v417, v311);
        v371 = Data._bridgeToObjectiveC()().super.isa;
        sub_100031A14(v370, v311);
      }

      [v307 setMembershipsOfRemindersInSectionsAsData:v371];
LABEL_275:
      sub_100031A14(v370, v311);

      return;
    case 9:
      v90 = v418;
      v91 = [v418 encryptedValues];
      v92 = String._bridgeToObjectiveC()();

      v93 = [v91 objectForKeyedSubscript:v92];
      swift_unknownObjectRelease();

      v94 = v417;
      v95 = v415;
      v96 = v416;
      if (!v93)
      {
        goto LABEL_29;
      }

      v420 = v93;
      sub_1000F5104(&qword_100938860, &unk_1007A4830);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_29;
      }

      UUID.init(uuidString:)();

      if ((*(v96 + 48))(v33, 1, v95) == 1)
      {
        sub_1000050A4(v33, &unk_100939D90, "8\n\r");
LABEL_29:
        [v94 setMostRecentTargetTemplateIdentifier:0];
      }

      else
      {
        (*(v96 + 32))(v23, v33, v95);
        v292 = UUID._bridgeToObjectiveC()().super.isa;
        [v94 setMostRecentTargetTemplateIdentifier:v292];

        (*(v96 + 8))(v23, v95);
      }

      v97 = [v94 sharingStatus];
      if (v97 < 2)
      {
        v210 = [v90 recordID];
        v211 = [v210 ic_isOwnedByCurrentUser];

        if (!v211)
        {
          return;
        }

        v212 = [v94 mostRecentTargetTemplateIdentifier];
        if (v212)
        {
          v213 = v398;
          v214 = v212;
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          v128 = UUID._bridgeToObjectiveC()().super.isa;
          (*(v96 + 8))(v213, v95);
        }

        else
        {
          v128 = 0;
        }

        v130 = "setMostRecentTargetTemplateIdentifierByCurrentUser:";
LABEL_282:
        v204 = v94;
LABEL_283:
        v380 = v128;
        goto LABEL_284;
      }

      v64 = v97;
      if (v97 - 3 < 2)
      {
        return;
      }

      if (v97 == 2)
      {
        if (qword_100935F30 != -1)
        {
          swift_once();
        }

        v98 = type metadata accessor for Logger();
        sub_100006654(v98, qword_100942E20);
        v99 = v94;
        v100 = Logger.logObject.getter();
        v101 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v100, v101))
        {
          v102 = swift_slowAlloc();
          v103 = swift_slowAlloc();
          v420 = v103;
          *v102 = 136446210;
          v104 = [v99 ckIdentifier];
          if (v104)
          {
            v105 = v104;
            v106 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v108 = v107;
          }

          else
          {
            v106 = 0;
            v108 = 0;
          }

          *&v419 = v106;
          *(&v419 + 1) = v108;
          sub_1000F5104(&unk_100939E40, &qword_100791BD0);
          v388 = Optional.descriptionOrNil.getter();
          v390 = v389;

          v391 = sub_10000668C(v388, v390, &v420);

          *(v102 + 4) = v391;
          _os_log_impl(&_mh_execute_header, v100, v101, "REMCDList.mergeData(from record:accountID:) will insert pending post-save action '.notify_SharedToMeListMostRecentTargetTemplateIdentifierByCurrentUserDidBecomeStale' {ckIdentifier: %{public}s}", v102, 0xCu);
          sub_10000607C(v103);
        }

        v392 = [v99 storeControllerManagedObjectContext];
        if (v392)
        {
          v128 = v392;
          v393 = [v392 pendingPostSaveActions];
          v130 = "setPendingPostSaveActions:";
          v380 = v393 | 4;
          goto LABEL_300;
        }

        return;
      }

      if (qword_100935F30 != -1)
      {
        swift_once();
      }

      v276 = type metadata accessor for Logger();
      sub_100006654(v276, qword_100942E20);
      v274 = v94;
      v128 = Logger.logObject.getter();
      v275 = static os_log_type_t.fault.getter();

      if (!os_log_type_enabled(v128, v275))
      {
        goto LABEL_285;
      }

      goto LABEL_181;
    case 10:
      v142 = [v418 encryptedValues];
      swift_getObjectType();
      CKRecordKeyValueSetting.subscript.getter();

      swift_unknownObjectRelease();
      if (*(&v419 + 1))
      {
        v128 = String._bridgeToObjectiveC()();
      }

      else
      {
        v128 = 0;
      }

      v204 = v417;
      v130 = "setName:";
      goto LABEL_283;
    case 11:
      v76 = v417;
      v77 = [v417 parentAccount];
      if (v77)
      {
        v78 = v77;
        v79 = [v77 identifier];

        v80 = v415;
        v81 = v414;
        v82 = v416;
        if (v79)
        {
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          v83 = *(v82 + 56);
          v83(v54, 0, 1, v80);
        }

        else
        {
          v83 = *(v416 + 56);
          v83(v54, 1, 1, v415);
        }

        sub_100031B58(v54, v412, &unk_100939D90, "8\n\r");
        v150 = v81;
      }

      else
      {
        v83 = *(v416 + 56);
        v80 = v415;
        v83(v412, 1, 1, v415);
        v150 = v414;
      }

      sub_1000060C8(0, &qword_10093A360, CKRecord_ptr);
      CKRecordKeyValueSetting.subscript.getter();

      v215 = v409;
      if (v419 == 2)
      {
        v216 = 0;
        v217 = v412;
      }

      else
      {
        v217 = v412;
        if (v419)
        {
          v216 = [v76 account];
        }

        else
        {
          v216 = 0;
        }
      }

      [v76 setParentAccount:v216];

      if (*v150 == 1)
      {
        v218 = &unk_100939D90;
        v219 = "8\n\r";
        v220 = v217;
LABEL_233:
        sub_1000050A4(v220, v218, v219);
        v346 = 1;
        goto LABEL_234;
      }

      v221 = [v76 parentAccount];
      if (v221)
      {
        v222 = v221;
        v223 = [v221 identifier];

        if (v223)
        {
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          v224 = 0;
        }

        else
        {
          v224 = 1;
        }

        v271 = v410;
        v270 = v416;
        v83(v49, v224, 1, v80);
        sub_100031B58(v49, v215, &unk_100939D90, "8\n\r");
      }

      else
      {
        v270 = v416;
        v83(v215, 1, 1, v80);
        v271 = v410;
      }

      v343 = *(v271 + 48);
      v344 = v405;
      sub_100010364(v215, v405, &unk_100939D90, "8\n\r");
      sub_100010364(v217, v344 + v343, &unk_100939D90, "8\n\r");
      v345 = *(v270 + 48);
      if (v345(v344, 1, v80) == 1)
      {
        sub_1000050A4(v215, &unk_100939D90, "8\n\r");
        sub_1000050A4(v217, &unk_100939D90, "8\n\r");
        if (v345(v344 + v343, 1, v80) == 1)
        {
          sub_1000050A4(v344, &unk_100939D90, "8\n\r");
          v346 = 0;
          goto LABEL_234;
        }

        goto LABEL_232;
      }

      v347 = v400;
      sub_100010364(v344, v400, &unk_100939D90, "8\n\r");
      if (v345(v344 + v343, 1, v80) == 1)
      {
        sub_1000050A4(v215, &unk_100939D90, "8\n\r");
        sub_1000050A4(v217, &unk_100939D90, "8\n\r");
        (*(v416 + 8))(v347, v80);
LABEL_232:
        v218 = &unk_10093A3D0;
        v219 = &qword_100795770;
        v220 = v344;
        goto LABEL_233;
      }

      v348 = v416;
      v349 = v344 + v343;
      v350 = v402;
      (*(v416 + 32))(v402, v349, v80);
      sub_1003932B0(&qword_10093A3E0, &type metadata accessor for UUID);
      LODWORD(v418) = dispatch thunk of static Equatable.== infix(_:_:)();
      v351 = *(v348 + 8);
      v351(v350, v80);
      sub_1000050A4(v215, &unk_100939D90, "8\n\r");
      sub_1000050A4(v217, &unk_100939D90, "8\n\r");
      v351(v347, v80);
      sub_1000050A4(v344, &unk_100939D90, "8\n\r");
      v346 = v418 ^ 1;
LABEL_234:
      *v150 = v346 & 1;
      return;
    case 12:
      v109 = v417;
      v110 = [v417 parentList];
      if (v110)
      {
        v111 = v110;
        v112 = [v110 identifier];

        v113 = v415;
        v114 = v414;
        v115 = v416;
        if (v112)
        {
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          v116 = *(v115 + 56);
          v116(v42, 0, 1, v113);
        }

        else
        {
          v116 = *(v416 + 56);
          v116(v42, 1, 1, v415);
        }

        v158 = v418;
        sub_100031B58(v42, v413, &unk_100939D90, "8\n\r");
      }

      else
      {
        v115 = v416;
        v116 = *(v416 + 56);
        v113 = v415;
        v116(v413, 1, 1, v415);
        v158 = v418;
        v114 = v414;
      }

      if (([v158 ic_isOwnedByCurrentUser] & 1) != 0 || (v231 = objc_msgSend(v158, "share")) == 0)
      {
        v234 = CKRecord.subscript.getter();

        if (v234)
        {
          objc_opt_self();
          v235 = swift_dynamicCastObjCClass();
          v233 = v413;
          if (!v235)
          {
            swift_unknownObjectRelease();
          }
        }

        else
        {
          v235 = 0;
          v233 = v413;
        }

        v232 = sub_1004D6EF0(v235, v109);

        [v109 setParentList:v232];
      }

      else
      {
        v232 = v231;

        v233 = v413;
      }

      if (*v114 == 1)
      {
        v236 = &unk_100939D90;
        v237 = "8\n\r";
        v238 = v233;
LABEL_244:
        sub_1000050A4(v238, v236, v237);
        v355 = 1;
        goto LABEL_245;
      }

      v239 = [v109 parentList];
      if (v239)
      {
        v240 = v239;
        v241 = [v239 identifier];

        v242 = v406;
        if (v241)
        {
          v243 = v403;
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          v244 = 0;
          v245 = v410;
        }

        else
        {
          v244 = 1;
          v245 = v410;
          v243 = v403;
        }

        v116(v243, v244, 1, v113);
        v272 = v407;
        sub_100031B58(v243, v407, &unk_100939D90, "8\n\r");
      }

      else
      {
        v272 = v407;
        v116(v407, 1, 1, v113);
        v245 = v410;
        v242 = v406;
      }

      v352 = *(v245 + 48);
      sub_100010364(v272, v242, &unk_100939D90, "8\n\r");
      sub_100010364(v233, v242 + v352, &unk_100939D90, "8\n\r");
      v353 = *(v115 + 48);
      if (v353(v242, 1, v113) == 1)
      {
        sub_1000050A4(v272, &unk_100939D90, "8\n\r");
        sub_1000050A4(v233, &unk_100939D90, "8\n\r");
        v354 = v353(v242 + v352, 1, v113);
        v114 = v414;
        if (v354 == 1)
        {
          sub_1000050A4(v242, &unk_100939D90, "8\n\r");
          v355 = 0;
          goto LABEL_245;
        }

        goto LABEL_243;
      }

      v356 = v401;
      sub_100010364(v242, v401, &unk_100939D90, "8\n\r");
      if (v353(v242 + v352, 1, v113) == 1)
      {
        sub_1000050A4(v407, &unk_100939D90, "8\n\r");
        sub_1000050A4(v233, &unk_100939D90, "8\n\r");
        (*(v115 + 8))(v356, v113);
        v114 = v414;
LABEL_243:
        v236 = &unk_10093A3D0;
        v237 = &qword_100795770;
        v238 = v242;
        goto LABEL_244;
      }

      v357 = v242 + v352;
      v358 = v402;
      (*(v115 + 32))(v402, v357, v113);
      sub_1003932B0(&qword_10093A3E0, &type metadata accessor for UUID);
      v359 = v356;
      v360 = dispatch thunk of static Equatable.== infix(_:_:)();
      v361 = *(v115 + 8);
      v361(v358, v113);
      sub_1000050A4(v407, &unk_100939D90, "8\n\r");
      sub_1000050A4(v233, &unk_100939D90, "8\n\r");
      v361(v359, v113);
      sub_1000050A4(v242, &unk_100939D90, "8\n\r");
      v355 = v360 ^ 1;
      v114 = v414;
LABEL_245:
      *v114 = v355 & 1;
      return;
    case 13:
      sub_1000060C8(0, &qword_10093A360, CKRecord_ptr);
      v58 = type metadata accessor for Date();
      v59 = v418;
      CKRecordKeyValueSetting.subscript.getter();

      v60 = *(v58 - 8);
      v61 = 0;
      if ((*(v60 + 48))(v15, 1, v58) != 1)
      {
        v61 = Date._bridgeToObjectiveC()().super.isa;
        (*(v60 + 8))(v15, v58);
      }

      v62 = v417;
      [v417 setPinnedDate:v61];

      v63 = [v62 sharingStatus];
      if (v63 < 2)
      {
        v205 = [v59 recordID];
        v206 = [v205 ic_isOwnedByCurrentUser];

        if (v206)
        {
          v207 = [v62 pinnedDate];
          if (v207)
          {
            v208 = v399;
            static Date._unconditionallyBridgeFromObjectiveC(_:)();

            v209 = 0;
          }

          else
          {
            v209 = 1;
            v208 = v399;
          }

          (*(v60 + 56))(v208, v209, 1, v58);
          sub_1000050A4(v208, &unk_100938850, qword_100795AE0);
          [v62 setIsPinnedByCurrentUser:v207 != 0];
        }
      }

      else
      {
        v64 = v63;
        if (v63 - 3 < 2)
        {
          return;
        }

        if (v63 != 2)
        {
          if (qword_100935F30 != -1)
          {
            swift_once();
          }

          v273 = type metadata accessor for Logger();
          sub_100006654(v273, qword_100942E20);
          v274 = v62;
          v128 = Logger.logObject.getter();
          v275 = static os_log_type_t.fault.getter();

          if (os_log_type_enabled(v128, v275))
          {
LABEL_181:
            v277 = v64;
            v278 = swift_slowAlloc();
            v279 = swift_slowAlloc();
            v420 = v279;
            *v278 = 136446466;
            v280 = [v274 ckIdentifier];
            if (v280)
            {
              v281 = v280;
              v282 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v284 = v283;
            }

            else
            {
              v282 = 0;
              v284 = 0;
            }

            *&v419 = v282;
            *(&v419 + 1) = v284;
            sub_1000F5104(&unk_100939E40, &qword_100791BD0);
            v376 = Optional.descriptionOrNil.getter();
            v378 = v377;

            v379 = sub_10000668C(v376, v378, &v420);

            *(v278 + 4) = v379;
            *(v278 + 12) = 2050;
            *(v278 + 14) = v277;
            _os_log_impl(&_mh_execute_header, v128, v275, "REMCDList.mergeData(from record:accountID:) Unhandled sharingStatus {ckIdentifier: %{public}s, sharingStatus.rawValue: %{public}ld}", v278, 0x16u);
            sub_10000607C(v279);
          }

          goto LABEL_285;
        }

        if (qword_100935F30 != -1)
        {
          swift_once();
        }

        v65 = type metadata accessor for Logger();
        sub_100006654(v65, qword_100942E20);
        v66 = v62;
        v67 = Logger.logObject.getter();
        v68 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v67, v68))
        {
          v69 = swift_slowAlloc();
          v70 = swift_slowAlloc();
          v420 = v70;
          *v69 = 136446210;
          v71 = [v66 ckIdentifier];
          if (v71)
          {
            v72 = v71;
            v73 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v75 = v74;
          }

          else
          {
            v73 = 0;
            v75 = 0;
          }

          *&v419 = v73;
          *(&v419 + 1) = v75;
          sub_1000F5104(&unk_100939E40, &qword_100791BD0);
          v382 = Optional.descriptionOrNil.getter();
          v384 = v383;

          v385 = sub_10000668C(v382, v384, &v420);

          *(v69 + 4) = v385;
          _os_log_impl(&_mh_execute_header, v67, v68, "REMCDList.mergeData(from record:accountID:) will insert pending post-save action '.notify_SharedToMeListPinnedStateDidBecomeStale' {ckIdentifier: %{public}s}", v69, 0xCu);
          sub_10000607C(v70);
        }

        v386 = [v66 storeControllerManagedObjectContext];
        if (v386)
        {
          v128 = v386;
          v387 = [v386 pendingPostSaveActions];
          v130 = "setPendingPostSaveActions:";
          v380 = v387 | 2;
LABEL_300:
          v204 = v128;
LABEL_284:
          [v204 v130];
LABEL_285:

          return;
        }
      }

      return;
    case 14:

      v125 = v418;
      v126 = CKRecord.subscript.getter();

      if (v126)
      {
        swift_unknownObjectRelease();
        v127 = v417;
LABEL_110:
        sub_1004DD52C(v125, 0xD000000000000021, 0, &v419);
        v186 = *(&v419 + 1);
        if (*(&v419 + 1) >> 60 == 15)
        {
          return;
        }

        v187 = v419;
        v188 = sub_1004D6FC8();

        if (v188)
        {
          v189 = objc_allocWithZone(REMCRMergeableOrderedSet);
          v190 = v188;
          sub_1001CB4B8(v187, v186);
          v191 = v411;
          v192 = sub_1002F937C(v190);
          if (v191)
          {
            sub_100031A14(v187, v186);

            if (qword_100935F30 != -1)
            {
              swift_once();
            }

            v193 = type metadata accessor for Logger();
            sub_100006654(v193, qword_100942E20);
            v194 = v127;
            swift_errorRetain();
            v195 = Logger.logObject.getter();
            v196 = static os_log_type_t.error.getter();

            if (os_log_type_enabled(v195, v196))
            {
              v197 = swift_slowAlloc();
              v198 = swift_slowAlloc();
              v418 = swift_slowAlloc();
              *&v419 = v418;
              *v197 = 136315394;
              swift_getErrorValue();
              v417 = v195;
              v199 = Error.localizedDescription.getter();
              v201 = sub_10000668C(v199, v200, &v419);

              *(v197 + 4) = v201;
              *(v197 + 12) = 2112;
              *(v197 + 14) = v194;
              *v198 = v194;
              v202 = v194;
              v203 = v417;
              _os_log_impl(&_mh_execute_header, v417, v196, "Failed to decode mergeable ordered set for reminder IDS {error: %s, cdList: %@}", v197, 0x16u);
              sub_1000050A4(v198, &unk_100938E70, &unk_100797230);

              sub_10000607C(v418);

              sub_100031A14(v187, v186);
            }

            else
            {

              sub_100031A14(v187, v186);
            }

            return;
          }

          v362 = v192;
          sub_100031A14(v187, v186);

          v418 = [v362 orderedSet];
          sub_100357A8C(v418, 0);

          sub_100031A14(v187, v186);
          goto LABEL_260;
        }

        if (qword_100935F30 != -1)
        {
          swift_once();
        }

        v285 = type metadata accessor for Logger();
        sub_100006654(v285, qword_100942E20);
        v286 = v127;
        v418 = Logger.logObject.getter();
        v287 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v418, v287))
        {
          v288 = swift_slowAlloc();
          v289 = swift_slowAlloc();
          *v288 = 138412290;
          *(v288 + 4) = v286;
          *v289 = v286;
          v290 = v286;
          _os_log_impl(&_mh_execute_header, v418, v287, "Failed to create replicaIDSource when decoding mergeable ordered set for reminder IDS {cdList: %@}", v288, 0xCu);
          sub_1000050A4(v289, &unk_100938E70, &unk_100797230);
        }

        v291 = v187;
LABEL_259:
        sub_100031A14(v291, v186);
LABEL_260:
        v365 = v418;

        return;
      }

      v185 = CKRecord.subscript.getter();
      v127 = v417;
      if (v185)
      {
        swift_unknownObjectRelease();
        goto LABEL_110;
      }

      v418 = sub_1003928FC(v125, 0x7265646E696D6552, 0xEB00000000734449, 0xD000000000000010, 0x80000001007F5DC0);
      v295 = v293;
      v186 = v294;
      if (v294 >> 60 == 15)
      {
        v296 = 0;
      }

      else
      {
        sub_100029344(v293, v294);
        v296 = Data._bridgeToObjectiveC()().super.isa;
        sub_100031A14(v295, v186);
      }

      [v127 setReminderIDsMergeableOrdering:v296];

      if (v418)
      {
        sub_100357A8C(v418, 0);
        v291 = v295;
        goto LABEL_259;
      }

      sub_100031A14(v295, v186);
      return;
    case 18:

      v143 = sub_1004E183C();
      v145 = v144;

      if (v145 >> 60 == 15)
      {
        v146 = 0;
      }

      else
      {
        v146 = Data._bridgeToObjectiveC()().super.isa;
        sub_100031A14(v143, v145);
      }

      [v417 setSectionIDsOrderingAsData:v146];

      sub_100358264();
      return;
    case 19:
      v149 = [v418 encryptedValues];
      swift_getObjectType();
      CKRecordKeyValueSetting.subscript.getter();

      swift_unknownObjectRelease();
      v137 = v419;
      v138 = "setShouldCategorizeGroceryItems:";
      goto LABEL_73;
    case 20:
      v131 = v408;
      v132 = *(v408 + 104);
      v132(v9, enum case for REMFeatureFlags.autoCategorize(_:), v6);
      v133 = REMFeatureFlags.isEnabled.getter();
      v134 = *(v131 + 8);
      v134(v9, v6);
      if ((v133 & 1) == 0)
      {
        goto LABEL_164;
      }

      v132(v9, enum case for REMFeatureFlags.autoCategorizeCloudKit(_:), v6);
      v135 = REMFeatureFlags.isEnabled.getter();
      v134(v9, v6);
      if ((v135 & 1) == 0)
      {
        goto LABEL_164;
      }

      v136 = [v418 encryptedValues];
      swift_getObjectType();
      CKRecordKeyValueSetting.subscript.getter();

      swift_unknownObjectRelease();
      v137 = v419;
      v138 = "setShouldAutoCategorizeItems:";
LABEL_73:
      [v417 v138];
      return;
    case 21:
      v139 = CKRecord.subscript.getter();

      v140 = v417;
      if (!v139)
      {
        return;
      }

      v420 = v139;
      sub_1000F5104(&qword_100938860, &unk_1007A4830);
      if ((swift_dynamicCast() & 1) == 0)
      {
        return;
      }

      v141 = String._bridgeToObjectiveC()();

      [v140 setSortingStyle:v141];
LABEL_71:

      return;
    default:
      sub_1000060C8(0, &qword_10093A360, CKRecord_ptr);
      CKRecordKeyValueSetting.subscript.getter();

      if (*(&v419 + 1))
      {
        v128 = String._bridgeToObjectiveC()();
      }

      else
      {
        v128 = 0;
      }

      v204 = v417;
      v130 = "setBadgeEmblem:";
      goto LABEL_283;
  }
}

void sub_10035C3B4(void *a1)
{
  v3 = v1;
  v5 = [v1 autoCategorizationLocalCorrectionsAsData];
  if (!v5)
  {
LABEL_12:
    v25 = a1;
    v24 = 0;
    goto LABEL_13;
  }

  v6 = v5;
  v7 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  sub_1000060C8(0, &unk_1009440B0, REMTextMemberships_ptr);
  static REMJSONRepresentable.fromJSONData(_:)();
  if (v2)
  {
    sub_10001BBA0(v7, v9);
    if (qword_100936198 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_100006654(v10, qword_100947770);
    v11 = v3;
    swift_errorRetain();
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *v14 = 136446722;
      sub_1000060C8(0, &unk_100938880, off_1008D41A8);
      sub_1000F5104(&unk_10094F1B0, &qword_1007A4840);
      v15 = String.init<A>(describing:)();
      v17 = sub_10000668C(v15, v16, &v31);

      *(v14 + 4) = v17;
      *(v14 + 12) = 2082;
      v18 = [v11 remObjectID];
      if (v18)
      {
        v19 = v18;
        v20 = [v18 description];

        v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v23 = v22;
      }

      else
      {
        v23 = 0xE300000000000000;
        v21 = 7104878;
      }

      v26 = sub_10000668C(v21, v23, &v31);

      *(v14 + 14) = v26;
      *(v14 + 22) = 2082;
      swift_getErrorValue();
      v27 = Error.rem_errorDescription.getter();
      v29 = sub_10000668C(v27, v28, &v31);

      *(v14 + 24) = v29;
      _os_log_impl(&_mh_execute_header, v12, v13, "%{public}s#mergeGroceryLocalCorrections(_:): Failed to deserialize 'groceryLocalCorrectionsAsData' due to unexpected error. It will be overwritten. {objectID: %{public}s, error: %{public}s}", v14, 0x20u);
      swift_arrayDestroy();
    }

    else
    {
    }

    goto LABEL_12;
  }

  sub_10001BBA0(v7, v9);
  v24 = v31;
  v25 = [v31 mergingWith:a1];
LABEL_13:
  v30 = v25;
  sub_10032DB64(v25, 1);
}

CKRecord_optional __swiftcall REMCDList.newlyCreatedRecord()()
{
  v1 = v0;
  v202 = type metadata accessor for REMFeatureFlags();
  v2 = *(v202 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v202);
  v5 = &v188 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for String.Encoding();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v188 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for UUID();
  v200 = *(v11 - 8);
  v201 = v11;
  v12 = *(v200 + 64);
  __chkstk_darwin(v11);
  v191 = &v188 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v198 = &v188 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v199 = &v188 - v18;
  v19 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v22 = &v188 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v197 = &v188 - v24;
  __chkstk_darwin(v25);
  v27 = &v188 - v26;
  *&v29 = __chkstk_darwin(v28).n128_u64[0];
  v31 = &v188 - v30;
  v209.receiver = v1;
  v209.super_class = REMCDList;
  v33 = objc_msgSendSuper2(&v209, "newlyCreatedRecord", v29);
  if (!v33)
  {
    goto LABEL_82;
  }

  v194 = v10;
  v190 = v6;
  v195 = v5;
  v34 = [v1 isGroup];
  *(&v207 + 1) = &type metadata for Bool;
  v208 = &protocol witness table for Bool;
  LOBYTE(v206) = v34;
  v204 = sub_1000060C8(0, &qword_10093A360, CKRecord_ptr);
  CKRecordKeyValueSetting.subscript.setter();
  v35 = [v1 isOwnedByCurrentUser];
  v203 = v1;
  v189 = v7;
  v193 = v22;
  if (v35)
  {
    v36 = [v1 parentAccount];
    v37 = v36;
    if (v36)
    {
    }

    *(&v207 + 1) = &type metadata for Bool;
    v208 = &protocol witness table for Bool;
    LOBYTE(v206) = v37 != 0;
    CKRecordKeyValueSetting.subscript.setter();
    v38 = [v1 parentList];
    if (v38 && (v39 = v38, v40 = [v38 recordID], v39, v40))
    {
      v41 = [v33 recordID];
      v42 = [v41 zoneID];

      v43 = [v40 zoneID];
      v44 = [v42 isEqual:v43];

      if (v44)
      {
        v1 = v203;
        v45 = [v203 cloudKitReferenceWithRecordIDAndValidateAction:v40];
      }

      else
      {

        v45 = 0;
        v1 = v203;
      }
    }

    else
    {
      v45 = 0;
    }

    v46 = v45;
    CKRecord.subscript.setter();
  }

  v196 = v2;
  v47 = [v33 encryptedValues];
  v48 = [v1 name];
  if (v48)
  {
    v49 = v48;
    v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v52 = v51;

    v53 = &protocol witness table for String;
    v54 = &type metadata for String;
  }

  else
  {
    v50 = 0;
    v52 = 0;
    v54 = 0;
    v53 = 0;
    *&v207 = 0;
  }

  *&v206 = v50;
  *(&v206 + 1) = v52;
  *(&v207 + 1) = v54;
  v208 = v53;
  swift_getObjectType();
  CKRecordKeyValueSetting.subscript.setter();
  swift_unknownObjectRelease();
  v55 = v203;
  v56 = [v203 color];
  if (v56)
  {
    v57 = v56;
    v58 = sub_1001E1818();
    if (v59)
    {
      v60 = &protocol witness table for String;
      v61 = &type metadata for String;
    }

    else
    {
      v58 = 0;
      v61 = 0;
      v60 = 0;
      *&v207 = 0;
    }

    *&v206 = v58;
    *(&v206 + 1) = v59;
    *(&v207 + 1) = v61;
    v208 = v60;
    CKRecordKeyValueSetting.subscript.setter();
  }

  else
  {
    CKRecord.subscript.setter();
  }

  v62 = [v55 lastUserAccessDate];
  if (v62)
  {
    v63 = v62;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v64 = 0;
  }

  else
  {
    v64 = 1;
  }

  v65 = type metadata accessor for Date();
  v66 = *(v65 - 8);
  v192 = *(v66 + 56);
  v192(v27, v64, 1, v65);
  sub_100031B58(v27, v31, &unk_100938850, qword_100795AE0);
  v67 = *(v66 + 48);
  if (v67(v31, 1, v65) == 1)
  {
    sub_1000050A4(v31, &unk_100938850, qword_100795AE0);
    v206 = 0u;
    v207 = 0u;
    v208 = 0;
  }

  else
  {
    *(&v207 + 1) = v65;
    v208 = &protocol witness table for Date;
    v68 = sub_1000103CC(&v206);
    (*(v66 + 32))(v68, v31, v65);
  }

  CKRecordKeyValueSetting.subscript.setter();
  v69 = [v55 badgeEmblem];
  if (v69)
  {
    v70 = v69;
    v71 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v73 = v72;

    v55 = v203;
    v74 = &protocol witness table for String;
    v75 = &type metadata for String;
  }

  else
  {
    v71 = 0;
    v73 = 0;
    v75 = 0;
    v74 = 0;
    *&v207 = 0;
  }

  *&v206 = v71;
  *(&v206 + 1) = v73;
  *(&v207 + 1) = v75;
  v208 = v74;
  CKRecordKeyValueSetting.subscript.setter();
  v76 = [v55 sortingStyle];
  if (v76)
  {
    v77 = v76;
    v78 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v80 = v79;

    v55 = v203;
    v81 = &protocol witness table for String;
    v82 = &type metadata for String;
  }

  else
  {
    v78 = 0;
    v80 = 0;
    v82 = 0;
    v81 = 0;
    *&v207 = 0;
  }

  *&v206 = v78;
  *(&v206 + 1) = v80;
  *(&v207 + 1) = v82;
  v208 = v81;
  CKRecordKeyValueSetting.subscript.setter();
  v83 = [v55 pinnedDate];
  if (v83)
  {
    v84 = v193;
    v85 = v83;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v86 = 0;
  }

  else
  {
    v86 = 1;
    v84 = v193;
  }

  v192(v84, v86, 1, v65);
  v87 = v197;
  sub_100031B58(v84, v197, &unk_100938850, qword_100795AE0);
  if (v67(v87, 1, v65) == 1)
  {
    sub_1000050A4(v87, &unk_100938850, qword_100795AE0);
    v206 = 0u;
    v207 = 0u;
    v208 = 0;
  }

  else
  {
    *(&v207 + 1) = v65;
    v208 = &protocol witness table for Date;
    v88 = sub_1000103CC(&v206);
    (*(v66 + 32))(v88, v87, v65);
  }

  v89 = v194;
  v91 = v200;
  v90 = v201;
  v92 = v198;
  CKRecordKeyValueSetting.subscript.setter();
  [v33 encryptedValues];
  v93 = [v55 mostRecentTargetTemplateIdentifier];
  if (v93)
  {
    v94 = v93;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v95 = 0;
  }

  else
  {
    v95 = 1;
  }

  (*(v91 + 56))(v92, v95, 1, v90);
  v96 = v199;
  sub_100031B58(v92, v199, &unk_100939D90, "8\n\r");
  if ((*(v91 + 48))(v96, 1, v90))
  {
    sub_1000050A4(v96, &unk_100939D90, "8\n\r");
    v97 = 0;
    v98 = 0;
    v99 = 0;
    v100 = 0;
    *&v207 = 0;
  }

  else
  {
    v101 = v191;
    (*(v91 + 16))(v191, v96, v90);
    sub_1000050A4(v96, &unk_100939D90, "8\n\r");
    v99 = UUID.uuidString.getter();
    v100 = v102;
    (*(v91 + 8))(v101, v90);
    v98 = &protocol witness table for String;
    v97 = &type metadata for String;
  }

  *(&v207 + 1) = v97;
  v208 = v98;
  *&v206 = v99;
  *(&v206 + 1) = v100;
  swift_getObjectType();
  CKRecordKeyValueSetting.subscript.setter();
  swift_unknownObjectRelease();
  CKRecord.subscript.setter();
  CKRecord.subscript.setter();
  v103 = [v55 reminderIDsMergeableOrdering];
  if (!v103)
  {
    goto LABEL_57;
  }

  v104 = v103;
  v105 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v107 = v106;

  static String.Encoding.utf8.getter();
  v108 = String.init(data:encoding:)();
  v110 = v109;
  sub_10001BBA0(v105, v107);
  if (!v110)
  {
    v55 = v203;
LABEL_57:
    CKRecord.subscript.setter();
    v208 = 0;
    v206 = 0u;
    v207 = 0u;
    goto LABEL_59;
  }

  v111 = String.count.getter();
  v112 = [objc_opt_self() sharedConfiguration];
  v113 = [v112 maxInlineAssetSizeBytes];

  if (v111 >= 1 && v113 < v111)
  {
    static String.Encoding.utf8.getter();
    v114 = String.data(using:allowLossyConversion:)();
    v116 = v115;
    (*(v189 + 8))(v89, v190);
    if (v116 >> 60 == 15)
    {
      if (qword_100936300 != -1)
      {
        swift_once();
      }

      v117 = type metadata accessor for Logger();
      sub_100006654(v117, qword_10094A590);

      v118 = Logger.logObject.getter();
      v119 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v118, v119))
      {
        v120 = swift_slowAlloc();
        v121 = swift_slowAlloc();
        v205 = v121;
        *&v206 = v108;
        *v120 = 136315138;
        *(&v206 + 1) = v110;

        v122 = String.init<A>(describing:)();
        v124 = sub_10000668C(v122, v123, &v205);

        *(v120 + 4) = v124;
        _os_log_impl(&_mh_execute_header, v118, v119, "Can't create data from object and not able to save it as asset {object: %s}", v120, 0xCu);
        sub_10000607C(v121);
      }

      v55 = v203;
      CKRecord.subscript.setter();
    }

    else
    {
      v185 = objc_opt_self();
      isa = Data._bridgeToObjectiveC()().super.isa;
      v187 = [v185 assetForData:isa];

      CKRecord.subscript.setter();
      sub_100031A14(v114, v116);
      v55 = v203;
    }

    CKRecord.subscript.setter();
    goto LABEL_60;
  }

  CKRecord.subscript.setter();
  *(&v207 + 1) = &type metadata for String;
  v208 = &protocol witness table for String;
  *&v206 = v108;
  *(&v206 + 1) = v110;
  v55 = v203;
LABEL_59:

  CKRecordKeyValueSetting.subscript.setter();
LABEL_60:

  v125 = v202;
  v126 = [v55 sectionIDsOrderingAsData];
  if (v126)
  {
    v127 = v126;
    v128 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v130 = v129;

    v131 = objc_opt_self();
    sub_100029344(v128, v130);
    v132 = Data._bridgeToObjectiveC()().super.isa;
    v133 = [v131 assetForData:v132];

    CKRecord.subscript.setter();
    sub_10001BBA0(v128, v130);
    sub_10001BBA0(v128, v130);
  }

  else
  {
    CKRecord.subscript.setter();
  }

  v134 = [v55 membershipsOfRemindersInSectionsAsData];
  if (v134)
  {
    v135 = v134;
    v136 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v138 = v137;

    v139 = objc_opt_self();
    sub_100029344(v136, v138);
    v140 = Data._bridgeToObjectiveC()().super.isa;
    v141 = [v139 assetForData:v140];

    CKRecord.subscript.setter();
    sub_10001BBA0(v136, v138);
    sub_10001BBA0(v136, v138);
  }

  else
  {
    CKRecord.subscript.setter();
  }

  v142 = [v33 encryptedValues];
  v143 = [v55 membershipsOfRemindersInSectionsChecksum];
  if (v143)
  {
    v144 = v143;
    v145 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v147 = v146;

    v148 = &protocol witness table for String;
    v149 = &type metadata for String;
  }

  else
  {
    v145 = 0;
    v147 = 0;
    v149 = 0;
    v148 = 0;
    *&v207 = 0;
  }

  *&v206 = v145;
  *(&v206 + 1) = v147;
  *(&v207 + 1) = v149;
  v208 = v148;
  swift_getObjectType();
  CKRecordKeyValueSetting.subscript.setter();
  swift_unknownObjectRelease();
  v150 = [v33 encryptedValues];
  swift_getObjectType();
  v151 = [v55 shouldCategorizeGroceryItems];
  *(&v207 + 1) = &type metadata for Bool;
  v208 = &protocol witness table for Bool;
  LOBYTE(v206) = v151;
  CKRecordKeyValueSetting.subscript.setter();
  swift_unknownObjectRelease();
  v152 = [v33 encryptedValues];
  v153 = [v55 groceryLocaleID];
  if (v153)
  {
    v154 = v153;
    v155 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v157 = v156;

    v158 = &protocol witness table for String;
    v159 = &type metadata for String;
  }

  else
  {
    v155 = 0;
    v157 = 0;
    v159 = 0;
    v158 = 0;
    *&v207 = 0;
  }

  *&v206 = v155;
  *(&v206 + 1) = v157;
  *(&v207 + 1) = v159;
  v208 = v158;
  swift_getObjectType();
  CKRecordKeyValueSetting.subscript.setter();
  swift_unknownObjectRelease();
  v161 = v195;
  v160 = v196;
  v162 = *(v196 + 104);
  v162(v195, enum case for REMFeatureFlags.autoCategorize(_:), v125);
  v163 = REMFeatureFlags.isEnabled.getter();
  v164 = *(v160 + 8);
  v164(v161, v125);
  if (v163)
  {
    v162(v161, enum case for REMFeatureFlags.autoCategorizeCloudKit(_:), v125);
    v165 = REMFeatureFlags.isEnabled.getter();
    v164(v161, v125);
    if (v165)
    {
      v166 = [v33 encryptedValues];
      swift_getObjectType();
      v167 = [v55 shouldAutoCategorizeItems];
      *(&v207 + 1) = &type metadata for Bool;
      v208 = &protocol witness table for Bool;
      LOBYTE(v206) = v167;
      CKRecordKeyValueSetting.subscript.setter();
      swift_unknownObjectRelease();
    }
  }

  v168 = [v55 autoCategorizationLocalCorrectionsAsData];
  if (v168)
  {
    v169 = v168;
    v170 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v172 = v171;

    v173 = objc_opt_self();
    sub_100029344(v170, v172);
    v174 = Data._bridgeToObjectiveC()().super.isa;
    v175 = [v173 assetForData:v174];

    CKRecord.subscript.setter();
    sub_10001BBA0(v170, v172);
    sub_10001BBA0(v170, v172);
  }

  else
  {
    CKRecord.subscript.setter();
  }

  v176 = [v33 encryptedValues];
  v177 = [v55 autoCategorizationLocalCorrectionsChecksum];
  if (v177)
  {
    v178 = v177;
    v179 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v181 = v180;

    v182 = &protocol witness table for String;
    v183 = &type metadata for String;
  }

  else
  {
    v179 = 0;
    v181 = 0;
    v183 = 0;
    v182 = 0;
    *&v207 = 0;
  }

  *&v206 = v179;
  *(&v206 + 1) = v181;
  *(&v207 + 1) = v183;
  v208 = v182;
  swift_getObjectType();
  CKRecordKeyValueSetting.subscript.setter();
  swift_unknownObjectRelease();
LABEL_82:
  v184 = v33;
  result.value.super.isa = v184;
  result.is_nil = v32;
  return result;
}

Swift::String __swiftcall REMCDList.shareTitle()()
{
  v1 = [v0 name];
  if (!v1)
  {
    v9.receiver = v0;
    v9.super_class = REMCDList;
    v1 = objc_msgSendSuper2(&v9, "shareTitle");
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  v6 = v3;
  v7 = v5;
  result._object = v7;
  result._countAndFlagsBits = v6;
  return result;
}

Swift::String __swiftcall REMCDList.shareType()()
{
  v0 = 0x80000001007F5E60;
  v1 = 0xD000000000000018;
  result._object = v0;
  result._countAndFlagsBits = v1;
  return result;
}

Swift::Void __swiftcall REMCDList.update(with:)(CKShare_optional with)
{
  isa = with.value.super.super.isa;
  v252 = type metadata accessor for UUID();
  *&v274 = *(v252 - 8);
  v3 = *(v274 + 64);
  __chkstk_darwin(v252);
  v247 = v242 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v244 = type metadata accessor for PersonNameComponents();
  v273._rawValue = *(v244 - 8);
  v5 = *(v273._rawValue + 8);
  __chkstk_darwin(v244);
  v267 = v242 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v249 = v242 - v9;
  if (qword_100935F30 == -1)
  {
    goto LABEL_2;
  }

  while (1)
  {
    swift_once();
LABEL_2:
    v10 = type metadata accessor for Logger();
    v11 = sub_100006654(v10, qword_100942E20);
    v12 = isa;
    v13 = v1;
    v242[1] = v11;
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v280 = v18;
      *v16 = 138412546;
      *(v16 + 4) = v13;
      *v17 = v13;
      *(v16 + 12) = 2080;
      v279[0] = isa;
      v19 = v13;
      sub_1000F5104(&unk_100942E40, qword_1007A3880);
      v20 = Optional.descriptionOrNil.getter();
      v22 = sub_10000668C(v20, v21, &v280);

      *(v16 + 14) = v22;
      _os_log_impl(&_mh_execute_header, v14, v15, "Update list's sharing information and sharees with new CKShare {list: %@, share: %s}", v16, 0x16u);
      sub_1000050A4(v17, &unk_100938E70, &unk_100797230);

      sub_10000607C(v18);
    }

    v250 = [v13 managedObjectContext];
    if (!v250)
    {
      v28 = v13;
      v29 = v12;
      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v280 = v34;
        *v32 = 138412546;
        *(v32 + 4) = v28;
        *v33 = v28;
        *(v32 + 12) = 2080;
        v279[0] = isa;
        v35 = v28;
        sub_1000F5104(&unk_100942E40, qword_1007A3880);
        v36 = Optional.descriptionOrNil.getter();
        v38 = sub_10000668C(v36, v37, &v280);

        *(v32 + 14) = v38;
        _os_log_impl(&_mh_execute_header, v30, v31, "Failed to update REMCDList with CKShare: managed object context is nil {list: %@, CKShare: %s}", v32, 0x16u);
        sub_1000050A4(v33, &unk_100938E70, &unk_100797230);

        sub_10000607C(v34);
      }

      return;
    }

    if (!isa)
    {
      v39 = Logger.logObject.getter();
      v40 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        *v41 = 0;
        _os_log_impl(&_mh_execute_header, v39, v40, "Share stopped, clear sharing information and sharees", v41, 2u);
      }

      [v13 setSharingStatus:0];
      [v13 setSharedOwnerIdentifier:0];
      v42 = [v13 sharees];
      if (!v42)
      {
        goto LABEL_190;
      }

      v43 = v42;
      sub_1000060C8(0, &qword_100942E50, off_1008D41E0);
      sub_10000CDE4(&qword_100939840, &qword_100942E50, off_1008D41E0);
      v44 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

      v45 = Logger.logObject.getter();
      v46 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        *v47 = 134217984;
        if ((v44 & 0xC000000000000001) != 0)
        {
          v48 = __CocoaSet.count.getter();
        }

        else
        {
          v48 = *(v44 + 16);
        }

        *(v47 + 4) = v48;

        _os_log_impl(&_mh_execute_header, v45, v46, "Removing sharees {count: %ld}", v47, 0xCu);
      }

      else
      {
      }

      if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
      {
        sub_1003919B4(_swiftEmptyArrayStorage, &qword_10093A868, &qword_100797DE8, &qword_100942E50, off_1008D41E0);
        v1 = v239;
      }

      else
      {
        v1 = _swiftEmptySetSingleton;
      }

      v204 = Set._bridgeToObjectiveC()().super.isa;

      [v13 setSharees:v204];

      if ((v44 & 0xC000000000000001) != 0)
      {
        __CocoaSet.makeIterator()();
        Set.Iterator.init(_cocoa:)();
        v44 = v280;
        v205 = v281;
        v206 = v282;
        v207 = v283;
        isa = v284;
      }

      else
      {
        v207 = 0;
        v208 = -1 << *(v44 + 32);
        v205 = v44 + 56;
        v206 = ~v208;
        v209 = -v208;
        if (v209 < 64)
        {
          v210 = ~(-1 << v209);
        }

        else
        {
          v210 = -1;
        }

        isa = (v210 & *(v44 + 56));
      }

      *&v274 = v206;
      v211 = (v206 + 64) >> 6;
      if ((v44 & 0x8000000000000000) == 0)
      {
        goto LABEL_182;
      }

LABEL_179:
      v212 = __CocoaSet.Iterator.next()();
      if (v212)
      {
        v278 = v212;
        swift_dynamicCast();
        v1 = v279[0];
        v213 = v207;
        v214 = isa;
        if (v279[0])
        {
          while (1)
          {
            [v250 deleteObject:v1];

            v207 = v213;
            isa = v214;
            if (v44 < 0)
            {
              goto LABEL_179;
            }

LABEL_182:
            v215 = v207;
            v216 = isa;
            v213 = v207;
            if (!isa)
            {
              break;
            }

LABEL_186:
            v214 = (v216 - 1) & v216;
            v1 = *(*(v44 + 48) + ((v213 << 9) | (8 * __clz(__rbit64(v216)))));
            if (!v1)
            {
              goto LABEL_189;
            }
          }

          while (1)
          {
            v213 = v215 + 1;
            if (__OFADD__(v215, 1))
            {
              goto LABEL_206;
            }

            if (v213 >= v211)
            {
              break;
            }

            v216 = *(v205 + 8 * v213);
            ++v215;
            if (v216)
            {
              goto LABEL_186;
            }
          }
        }
      }

LABEL_189:
      sub_10001B860();
      goto LABEL_190;
    }

    v23 = v12;
    v24 = [v23 owner];
    v266 = v23;
    v25 = [v23 currentUserParticipant];
    v26 = v25;
    v251 = v13;
    if (!v24)
    {
      if (!v25)
      {
LABEL_20:
        v49 = 1;
LABEL_32:
        [v13 setSharingStatus:v49];
        v63 = v13;
        goto LABEL_33;
      }

      goto LABEL_22;
    }

    if (!v25)
    {
      v26 = v24;
LABEL_22:

      goto LABEL_23;
    }

    sub_1000060C8(0, &qword_100942E60, CKShareParticipant_ptr);
    v27 = static NSObject.== infix(_:_:)();

    if (v27)
    {
      goto LABEL_20;
    }

LABEL_23:
    v50 = [v266 currentUserParticipant];
    if (!v50)
    {
      v49 = 0;
      goto LABEL_32;
    }

    v51 = v50;
    v52 = [v50 acceptanceStatus];

    if (v52 == 1)
    {
      v49 = 3;
    }

    else
    {
      v49 = 0;
    }

    if (v52 != 2)
    {
      goto LABEL_32;
    }

    [v13 setSharingStatus:2];
    v53 = v13;
    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v279[0] = v57;
      *v56 = 136446210;
      v58 = [v53 ckIdentifier];
      if (v58)
      {
        v59 = v58;
        v60 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v62 = v61;
      }

      else
      {
        v60 = 0;
        v62 = 0;
      }

      v280 = v60;
      v281 = v62;
      sub_1000F5104(&unk_100939E40, &qword_100791BD0);
      v217 = Optional.descriptionOrNil.getter();
      v219 = v218;

      v220 = sub_10000668C(v217, v219, v279);

      *(v56 + 4) = v220;
      _os_log_impl(&_mh_execute_header, v54, v55, "REMCDList.update(with share: CKShare?) will insert pending post-save action '.notify_SharedToMeListPinnedStateDidBecomeStale' {ckIdentifier: %{public}s}", v56, 0xCu);
      sub_10000607C(v57);
    }

    else
    {
    }

    v221 = [v53 storeControllerManagedObjectContext];
    if (v221)
    {
      v222 = v221;
      [v221 setPendingPostSaveActions:{objc_msgSend(v221, "pendingPostSaveActions") | 2}];
    }

    v223 = v53;
    v224 = Logger.logObject.getter();
    v225 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v224, v225))
    {
      v226 = swift_slowAlloc();
      v227 = swift_slowAlloc();
      v279[0] = v227;
      *v226 = 136446210;
      v228 = [v223 ckIdentifier];
      if (v228)
      {
        v229 = v228;
        v230 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v232 = v231;
      }

      else
      {
        v230 = 0;
        v232 = 0;
      }

      v280 = v230;
      v281 = v232;
      sub_1000F5104(&unk_100939E40, &qword_100791BD0);
      v233 = Optional.descriptionOrNil.getter();
      v235 = v234;

      v236 = sub_10000668C(v233, v235, v279);

      *(v226 + 4) = v236;
      _os_log_impl(&_mh_execute_header, v224, v225, "REMCDList.update(with share: CKShare?) will insert pending post-save action '.notify_SharedToMeListMostRecentTargetTemplateIdentifierByCurrentUserDidBecomeStale' {ckIdentifier: %{public}s}", v226, 0xCu);
      sub_10000607C(v227);
    }

    else
    {
    }

    v237 = [v223 storeControllerManagedObjectContext];
    v63 = v251;
    if (v237)
    {
      v238 = v237;
      [v237 setPendingPostSaveActions:{objc_msgSend(v237, "pendingPostSaveActions") | 4}];
    }

LABEL_33:
    v278 = sub_1003909A8(_swiftEmptyArrayStorage, &unk_100944090, &unk_1007A4820);
    v277 = _swiftEmptySetSingleton;
    v64 = [v63 sharees];
    if (!v64)
    {
      goto LABEL_66;
    }

    v1 = v64;
    v65 = sub_1000060C8(0, &qword_100942E50, off_1008D41E0);
    sub_10000CDE4(&qword_100939840, &qword_100942E50, off_1008D41E0);
    v66 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v270 = v65;
    if ((v66 & 0xC000000000000001) != 0)
    {
      __CocoaSet.makeIterator()();
      Set.Iterator.init(_cocoa:)();
      v66 = v279[0];
      v67 = v279[1];
      v68 = v279[2];
      isa = v279[3];
      v69 = v279[4];
    }

    else
    {
      isa = 0;
      v70 = -1 << *(v66 + 32);
      v67 = (v66 + 56);
      v68 = ~v70;
      v71 = -v70;
      v72 = v71 < 64 ? ~(-1 << v71) : -1;
      v69 = v72 & *(v66 + 56);
    }

    v269 = v68;
    v73 = (v68 + 64) >> 6;
    v271 = v66;
    v272 = v67;
    if (v66 < 0)
    {
      break;
    }

    while (1)
    {
      while (1)
      {
        v78 = isa;
        v79 = v69;
        v76 = isa;
        if (!v69)
        {
          while (1)
          {
            v76 = (v78 + 1);
            if (__OFADD__(v78, 1))
            {
              break;
            }

            if (v76 >= v73)
            {
              goto LABEL_65;
            }

            v79 = *(v67 + v76);
            ++v78;
            if (v79)
            {
              goto LABEL_47;
            }
          }

LABEL_204:
          __break(1u);
          goto LABEL_205;
        }

LABEL_47:
        v77 = (v79 - 1) & v79;
        v75 = *(*(v66 + 48) + ((v76 << 9) | (8 * __clz(__rbit64(v79)))));
LABEL_48:
        if (!v75)
        {
          goto LABEL_65;
        }

        v80 = [v75 ckIdentifier];
        if (v80)
        {
          break;
        }

        v1 = &v277;
        sub_10037DADC(&v280, v75);

        isa = v76;
        v69 = v77;
        if (v66 < 0)
        {
          goto LABEL_41;
        }
      }

      v81 = v80;
      v82 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v84 = v83;

      v85 = v75;
      v1 = v278;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v280 = v1;
      v88 = sub_100005F4C(v82, v84);
      v89 = *(v1 + 16);
      v90 = (v87 & 1) == 0;
      v91 = v89 + v90;
      if (__OFADD__(v89, v90))
      {
        break;
      }

      v92 = v87;
      if (*(v1 + 24) >= v91)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v95 = v280;
          if ((v87 & 1) == 0)
          {
            goto LABEL_54;
          }
        }

        else
        {
          v1 = &v280;
          sub_1003778E0(&unk_100944090, &unk_1007A4820);
          v95 = v280;
          if ((v92 & 1) == 0)
          {
            goto LABEL_54;
          }
        }
      }

      else
      {
        sub_100372224(v91, isUniquelyReferenced_nonNull_native, &unk_100944090, &unk_1007A4820);
        v1 = v280;
        v93 = sub_100005F4C(v82, v84);
        if ((v92 & 1) != (v94 & 1))
        {
          goto LABEL_218;
        }

        v88 = v93;
        v95 = v280;
        if ((v92 & 1) == 0)
        {
LABEL_54:
          v95[(v88 >> 6) + 8] |= 1 << v88;
          v96 = (v95[6] + 16 * v88);
          *v96 = v82;
          v96[1] = v84;
          *(v95[7] + 8 * v88) = v85;
          v97 = v95[2];
          v98 = __OFADD__(v97, 1);
          v99 = v97 + 1;
          if (v98)
          {
            goto LABEL_210;
          }

          v95[2] = v99;
          goto LABEL_61;
        }
      }

      v100 = v95[7];
      v1 = *(v100 + 8 * v88);
      *(v100 + 8 * v88) = v85;

      v85 = v1;
LABEL_61:

      v278 = v95;
      isa = v76;
      v69 = v77;
      v66 = v271;
      v67 = v272;
      if ((v271 & 0x8000000000000000) != 0)
      {
        goto LABEL_41;
      }
    }

    __break(1u);
LABEL_210:
    __break(1u);
LABEL_211:
    isa = _CocoaArrayWrapper.endIndex.getter();
    if (isa)
    {
      goto LABEL_68;
    }

LABEL_144:

    isa = v278;

    v1 = &v277;
    sub_1003560E4(v189);
    v190 = v277;
    if ((v277 & 0xC000000000000001) != 0)
    {
      if (__CocoaSet.count.getter())
      {
        v1 = __CocoaSet.makeIterator()();
        sub_1000060C8(0, &qword_100942E50, off_1008D41E0);
        sub_10000CDE4(&qword_100939840, &qword_100942E50, off_1008D41E0);
        Set.Iterator.init(_cocoa:)();
        v190 = v280;
        v191 = v281;
        v192 = v282;
        v193 = v283;
        v194 = v284;
        goto LABEL_152;
      }

LABEL_164:

LABEL_165:

LABEL_190:
      return;
    }

    if (!*(v277 + 16))
    {
      goto LABEL_164;
    }

    v193 = 0;
    v195 = -1 << *(v277 + 32);
    v191 = (v277 + 56);
    v192 = ~v195;
    v196 = -v195;
    if (v196 < 64)
    {
      v197 = ~(-1 << v196);
    }

    else
    {
      v197 = -1;
    }

    v194 = v197 & *(v277 + 56);
LABEL_152:
    *&v274 = v192;
    v198 = (v192 + 64) >> 6;
    if ((v190 & 0x8000000000000000) != 0)
    {
LABEL_153:
      v199 = __CocoaSet.Iterator.next()();
      if (v199)
      {
        v275 = v199;
        sub_1000060C8(0, &qword_100942E50, off_1008D41E0);
        swift_dynamicCast();
        v1 = v276;
        v200 = v193;
        v201 = v194;
        if (v276)
        {
          goto LABEL_161;
        }
      }

LABEL_163:
      sub_10001B860();
      goto LABEL_165;
    }

    while (1)
    {
      v202 = v193;
      v203 = v194;
      v200 = v193;
      if (!v194)
      {
        break;
      }

LABEL_160:
      v201 = (v203 - 1) & v203;
      v1 = *(*(v190 + 48) + ((v200 << 9) | (8 * __clz(__rbit64(v203)))));
      if (!v1)
      {
        goto LABEL_163;
      }

LABEL_161:
      [v250 deleteObject:v1];

      v193 = v200;
      v194 = v201;
      if ((v190 & 0x8000000000000000) != 0)
      {
        goto LABEL_153;
      }
    }

    while (1)
    {
      v200 = v202 + 1;
      if (__OFADD__(v202, 1))
      {
        break;
      }

      if (v200 >= v198)
      {
        goto LABEL_163;
      }

      v203 = v191[v200];
      ++v202;
      if (v203)
      {
        goto LABEL_160;
      }
    }

LABEL_205:
    __break(1u);
LABEL_206:
    __break(1u);
LABEL_207:
    __break(1u);
  }

LABEL_41:
  v74 = __CocoaSet.Iterator.next()();
  if (v74)
  {
    v276 = v74;
    swift_dynamicCast();
    v75 = v280;
    v76 = isa;
    v77 = v69;
    goto LABEL_48;
  }

LABEL_65:
  sub_10001B860();
LABEL_66:
  v265 = [objc_allocWithZone(CNContactStore) init];
  v101 = [v266 participants];
  sub_1000060C8(0, &qword_100942E60, CKShareParticipant_ptr);
  v85 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v85 >> 62)
  {
    goto LABEL_211;
  }

  isa = *((v85 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!isa)
  {
    goto LABEL_144;
  }

LABEL_68:
  v1 = 0;
  v264 = v85 & 0xC000000000000001;
  v246 = v85 & 0xFFFFFFFFFFFFFF8;
  v245 = (v274 + 48);
  v248 = (v274 + 8);
  v243 = (v273._rawValue + 8);
  v261 = CNContactGivenNameKey;
  v260 = CNContactMiddleNameKey;
  v259 = CNContactFamilyNameKey;
  v258 = CNContactNamePrefixKey;
  v257 = CNContactNameSuffixKey;
  v256 = CNContactNicknameKey;
  v255 = CNContactPhoneNumbersKey;
  v254 = CNContactEmailAddressesKey;
  v253 = xmmword_1007A3870;
  v274 = xmmword_100791300;
  v263 = v85;
  v262 = isa;
  while (2)
  {
    if (v264)
    {
      v102 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v1 >= *(v246 + 16))
      {
        goto LABEL_207;
      }

      v102 = *(v85 + 8 * v1 + 32);
    }

    v103 = v102;
    if (__OFADD__(v1, 1))
    {
      __break(1u);
      goto LABEL_204;
    }

    v268 = v1;
    v104 = CKShareParticipant.participantID.getter();
    v106 = v105;
    v107 = sub_1003537F0(v104, v105, v278);
    v271 = v1 + 1;
    v272 = v103;
    v270 = v106;
    if (v107)
    {
      v269 = v107;
      v108 = sub_100369860(v104, v106);
    }

    else
    {
      sub_1000060C8(0, &qword_100942E50, off_1008D41E0);
      v109 = [swift_getObjCClassFromMetadata() entity];
      v110 = objc_allocWithZone(REMCDSharee);
      v111 = [v110 initWithEntity:v109 insertIntoManagedObjectContext:v250];

      v108 = v111;
      CKShareParticipant.participantID.getter();
      v112 = String._bridgeToObjectiveC()();

      [v108 setCkIdentifier:v112];

      CKShareParticipant.participantID.getter();
      v113 = v249;
      UUID.init(uuidString:)();

      v114 = 0;
      if ((*v245)(v113, 1, v252) != 1)
      {
        v115 = v249;
        v114 = UUID._bridgeToObjectiveC()().super.isa;
        (*v248)(v115, v252);
      }

      [v108 setIdentifier:v114];

      v116 = v251;
      v117 = [v251 account];
      [v108 setAccount:v117];

      [v116 addShareesObject:v108];
      v269 = v108;
    }

    sub_1000F5104(&unk_100939D60, &unk_1007959E0);
    v118 = swift_allocObject();
    *(v118 + 16) = v253;
    v119 = v261;
    v120 = v260;
    *(v118 + 32) = v261;
    *(v118 + 40) = v120;
    v121 = v259;
    v122 = v258;
    *(v118 + 48) = v259;
    *(v118 + 56) = v122;
    v123 = v257;
    v124 = v256;
    *(v118 + 64) = v257;
    *(v118 + 72) = v124;
    v125 = v254;
    v273._rawValue = v118;
    *(v118 + 80) = CNContactPhoneNumbersKey;
    *(v118 + 88) = v125;
    sub_1000F5104(&qword_100942E70, &qword_10079D348);
    v126 = swift_allocObject();
    *(v126 + 16) = v274;
    v127 = v119;
    v128 = v120;
    v129 = v121;
    v130 = v122;
    v131 = v123;
    v132 = v124;
    v133 = CNContactPhoneNumbersKey;
    v134 = v125;
    v135 = v272;
    v136 = [v272 userIdentity];
    v137 = [v136 lookupInfo];

    if (v137)
    {
      v138 = [v137 emailAddress];

      if (v138)
      {
        v139 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v141 = v140;
      }

      else
      {
        v139 = 0;
        v141 = 0;
      }

      v142 = v269;
      *(v126 + 32) = v139;
      *(v126 + 40) = v141;
    }

    else
    {
      *(v126 + 32) = 0;
      *(v126 + 40) = 0;
      v142 = v269;
    }

    v143 = swift_allocObject();
    *(v143 + 16) = v274;
    v144 = [v135 userIdentity];
    v145 = [v144 lookupInfo];

    if (v145)
    {
      v146 = [v145 phoneNumber];

      if (v146)
      {
        v147 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v149 = v148;
      }

      else
      {
        v147 = 0;
        v149 = 0;
      }

      *(v143 + 32) = v147;
      *(v143 + 40) = v149;
    }

    else
    {
      *(v143 + 32) = 0;
      *(v143 + 40) = 0;
    }

    v150 = CNContactStore.contactFrom(emailAddresses:phoneNumbers:keysToFetch:)(v126, v143, v273);

    if (v150)
    {
      v151 = [v150 givenName];
      if (!v151)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v151 = String._bridgeToObjectiveC()();
      }

      [v142 setFirstName:v151];

      v152 = [v150 middleName];
      if (!v152)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v152 = String._bridgeToObjectiveC()();
      }

      [v142 setMiddleName:v152];

      v153 = [v150 familyName];
      if (!v153)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v153 = String._bridgeToObjectiveC()();
      }

      [v142 setLastName:v153];

      v154 = [v150 namePrefix];
      if (!v154)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v154 = String._bridgeToObjectiveC()();
      }

      [v142 setNamePrefix:v154];

      v155 = [v150 nameSuffix];
      if (!v155)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v155 = String._bridgeToObjectiveC()();
      }

      [v142 setNameSuffix:v155];

      v156 = [v150 nickname];
      if (!v156)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v156 = String._bridgeToObjectiveC()();
      }

      [v142 setNickname:v156];
    }

    else
    {
      v157 = [v135 userIdentity];
      v158 = [v157 nameComponents];

      if (v158)
      {
        static PersonNameComponents._unconditionallyBridgeFromObjectiveC(_:)();

        PersonNameComponents.givenName.getter();
        if (v159)
        {
          v160 = String._bridgeToObjectiveC()();
        }

        else
        {
          v160 = 0;
        }

        [v142 setFirstName:v160];

        PersonNameComponents.middleName.getter();
        if (v161)
        {
          v162 = String._bridgeToObjectiveC()();
        }

        else
        {
          v162 = 0;
        }

        [v142 setMiddleName:v162];

        PersonNameComponents.familyName.getter();
        if (v163)
        {
          v164 = String._bridgeToObjectiveC()();
        }

        else
        {
          v164 = 0;
        }

        [v142 setLastName:v164];

        PersonNameComponents.namePrefix.getter();
        if (v165)
        {
          v166 = String._bridgeToObjectiveC()();
        }

        else
        {
          v166 = 0;
        }

        [v142 setNamePrefix:v166];

        PersonNameComponents.nameSuffix.getter();
        if (v167)
        {
          v168 = String._bridgeToObjectiveC()();
        }

        else
        {
          v168 = 0;
        }

        [v142 setNameSuffix:v168];

        PersonNameComponents.nickname.getter();
        if (v169)
        {
          v170 = String._bridgeToObjectiveC()();
        }

        else
        {
          v170 = 0;
        }

        [v142 setNickname:v170];

        (*v243)(v267, v244);
      }
    }

    v171 = [v135 userIdentity];
    v172 = [v171 lookupInfo];

    if (v172)
    {
      v173 = [v172 emailAddress];

      if (v173)
      {
        v174 = [v173 rem_addingMailto];
        goto LABEL_133;
      }
    }

    v175 = [v135 userIdentity];
    v176 = [v175 lookupInfo];

    if (v176 && (v173 = [v176 phoneNumber], v176, v173))
    {
      v174 = [v173 rem_addingTel];
LABEL_133:
      v177 = v174;

      if (!v177)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v177 = String._bridgeToObjectiveC()();
      }

      [v142 setAddress:v177];

      v178 = v142;
    }

    else
    {
      [v142 setAddress:0];
    }

    v179 = [v135 permission];
    if (v179 >= 4)
    {
      sub_1001F67C8(_swiftEmptyArrayStorage);
      sub_1001F67C8(_swiftEmptyArrayStorage);
      v240 = "unknown permission";
      v241 = 18;
      goto LABEL_217;
    }

    [v142 setAccessLevel:(0x2000100000000uLL >> (16 * v179)) & 3];
    v180 = [v135 acceptanceStatus];
    if (v180 < 4)
    {
      v181 = 0x3000100050004uLL >> (16 * v180);

      [v142 setStatus:v181 & 7];

      sub_1000060C8(0, &qword_100945FC0, NSObject_ptr);
      v182 = [v266 owner];
      v183 = static NSObject.== infix(_:_:)();

      if (v183)
      {
        v184 = [v142 remObjectID];
        v85 = v263;
        if (v184)
        {
          v185 = v184;
          v186 = [v184 uuid];

          v187 = v247;
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          v188.super.isa = UUID._bridgeToObjectiveC()().super.isa;
          (*v248)(v187, v252);
        }

        else
        {
          v188.super.isa = 0;
        }

        [v251 setSharedOwnerIdentifier:v188.super.isa];

        isa = v262;
        if (v271 == v262)
        {
          goto LABEL_144;
        }
      }

      else
      {

        isa = v262;
        v85 = v263;
        if (v271 == v262)
        {
          goto LABEL_144;
        }
      }

      v1 = v268 + 1;
      continue;
    }

    break;
  }

  sub_1001F67C8(_swiftEmptyArrayStorage);
  sub_1001F67C8(_swiftEmptyArrayStorage);
  v240 = "unknown acceptanceStatus";
  v241 = 24;
LABEL_217:
  sub_10054573C(v240, v241, 2);
  __break(1u);
LABEL_218:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void __swiftcall REMCDList.existingLocalObjectToMerge(with:)(REMCDObject_optional *__return_ptr retstr, NSPredicate_optional *with)
{
  v3 = v2;
  v5 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v80 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v10 = __chkstk_darwin(v9).n128_u64[0];
  v12 = &v80 - v11;
  v13 = [v3 managedObjectContext];
  if (!v13)
  {
    return;
  }

  v14 = v13;
  if ([v3 isConcealed])
  {
    if (qword_100935F30 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_100006654(v15, qword_100942E20);
    v16 = v3;
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      *v19 = 136446466;
      v20 = [v16 remObjectID];
      if (v20)
      {
        v21 = v20;
        v22 = [v20 description];

        v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v25 = v24;
      }

      else
      {
        v23 = 7104878;
        v25 = 0xE300000000000000;
      }

      v36 = sub_10000668C(v23, v25, &v83);

      *(v19 + 4) = v36;
      *(v19 + 12) = 2082;
      v38 = sub_1004D7318(v37);
      v40 = sub_10000668C(v38, v39, &v83);

      *(v19 + 14) = v40;
      _os_log_impl(&_mh_execute_header, v17, v18, "MERGE.LOCAL: ...Should not attempt to find existing local object for this concealed list, race condition? {self: %{public}s %{public}s}", v19, 0x16u);
      swift_arrayDestroy();
    }

    goto LABEL_17;
  }

  if (([v3 isGroup] & 1) != 0 || (objc_msgSend(v3, "isShared") & 1) != 0 || (v26 = objc_msgSend(v3, "name")) == 0)
  {
LABEL_17:

    return;
  }

  v27 = v26;
  v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v30 = v29;

  v83 = _swiftEmptyArrayStorage;
  KeyPath = swift_getKeyPath();
  v32 = [v3 account];
  if (v32)
  {
    v33 = v32;
    v34 = [v32 identifier];

    if (v34)
    {
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v35 = type metadata accessor for UUID();
      (*(*(v35 - 8) + 56))(v8, 0, 1, v35);
    }

    else
    {
      v42 = type metadata accessor for UUID();
      (*(*(v42 - 8) + 56))(v8, 1, 1, v42);
    }

    sub_100031B58(v8, v12, &unk_100939D90, "8\n\r");
  }

  else
  {
    v41 = type metadata accessor for UUID();
    (*(*(v41 - 8) + 56))(v12, 1, 1, v41);
  }

  sub_1000234B0(KeyPath, v12, &unk_100939D90, "8\n\r", &qword_10093F478, &unk_1007A76E0);

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (v83[2] >= v83[3] >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v43 = swift_getKeyPath();
  sub_100393084(v43, v28, v30, 6);

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (v83[2] >= v83[3] >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  sub_1000185BC();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (v83[2] >= v83[3] >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v44 = v83;
  v82 = _swiftEmptyArrayStorage;
  sub_1000060C8(0, &unk_100938890, NSPredicate_ptr);
  v45 = NSPredicate.init(format:_:)();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v82 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v82 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v77 = *((v82 & 0xFFFFFFFFFFFFFF8) + 0x10);
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v46 = sub_100010634(v44);
  if (v46)
  {
    v47 = v46;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v82 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v82 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v78 = *((v82 & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  if (with)
  {
    v48 = with;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v82 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v82 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v79 = *((v82 & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  v49 = objc_allocWithZone(NSCompoundPredicate);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v51 = [v49 initWithType:1 subpredicates:isa];

  swift_getObjectType();
  v52 = [swift_getObjCClassFromMetadata() ic_objectsMatchingPredicate:v51 context:v14];
  sub_1000060C8(0, &qword_1009388B0, NSManagedObject_ptr);
  v53 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v53 >> 62))
  {
    if (*((v53 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_40;
    }

LABEL_56:

    return;
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_56;
  }

LABEL_40:
  if ((v53 & 0xC000000000000001) != 0)
  {
    v54 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_43:
    v52 = v54;

    objc_opt_self();
    v55 = swift_dynamicCastObjCClass();
    if (!v55)
    {

      return;
    }

    v80 = v55;
    if (qword_100935F30 == -1)
    {
      goto LABEL_45;
    }

    goto LABEL_59;
  }

  if (*((v53 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v54 = *(v53 + 32);
    goto LABEL_43;
  }

  __break(1u);
LABEL_59:
  swift_once();
LABEL_45:
  v56 = type metadata accessor for Logger();
  sub_100006654(v56, qword_100942E20);
  v57 = v3;
  v58 = v52;
  v59 = Logger.logObject.getter();
  v60 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v59, v60))
  {
    v61 = swift_slowAlloc();
    v81 = swift_slowAlloc();
    *v61 = 136446466;
    v62 = &selRef_persistentStoreForIdentifier_;
    v63 = [v57 remObjectID];
    if (v63)
    {
      v64 = v63;
      v65 = [v63 description];

      v66 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v68 = v67;

      v62 = &selRef_persistentStoreForIdentifier_;
    }

    else
    {
      v68 = 0xE300000000000000;
      v66 = 7104878;
    }

    v69 = sub_10000668C(v66, v68, &v81);

    *(v61 + 4) = v69;
    *(v61 + 12) = 2082;
    v70 = [v80 v62[106]];
    if (v70)
    {
      v71 = v70;
      v72 = [v70 description];

      v73 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v75 = v74;
    }

    else
    {
      v75 = 0xE300000000000000;
      v73 = 7104878;
    }

    v76 = sub_10000668C(v73, v75, &v81);

    *(v61 + 14) = v76;
    _os_log_impl(&_mh_execute_header, v59, v60, "MERGE.LOCAL: ...REMCDList.existingLocalObjectToMerge found a matching local REMCDList! {self: %{public}s, matched: %{public}s}", v61, 0x16u);
    swift_arrayDestroy();
  }
}

void sub_10036332C(void **a1, uint64_t a2, void *a3, uint64_t a4)
{
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v120 = &v113 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v113 - v14;
  *&v17 = __chkstk_darwin(v16).n128_u64[0];
  v121 = &v113 - v18;
  v19 = *a1;
  v20 = [v19 existingLocalObjectToMergeWithPredicate:{a2, v17}];
  if (v20)
  {
    v21 = v20;
    v116 = v15;
    v117 = a4;
    v118 = v10;
    v119 = v9;
    if (qword_100935F30 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    v23 = sub_100006654(v22, qword_100942E20);
    v24 = v19;
    v25 = v21;
    v26 = a3;
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.info.getter();

    v29 = os_log_type_enabled(v27, v28);
    v122 = v4;
    if (v29)
    {
      v115 = v28;
      v114 = v23;
      v30 = swift_slowAlloc();
      v113 = swift_slowAlloc();
      v123 = v113;
      *v30 = 136446722;
      v31 = [v24 remObjectID];
      if (v31)
      {
        v32 = v31;
        v33 = [v31 description];

        v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v36 = v35;

        v37 = &selRef_persistentStoreForIdentifier_;
      }

      else
      {
        v37 = &selRef_persistentStoreForIdentifier_;
        v36 = 0xE300000000000000;
        v34 = 7104878;
      }

      v50 = sub_10000668C(v34, v36, &v123);

      *(v30 + 4) = v50;
      *(v30 + 12) = 2082;
      v51 = [v25 v37[106]];
      if (v51)
      {
        v52 = v51;
        v53 = [v51 description];

        v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v56 = v55;

        v37 = &selRef_persistentStoreForIdentifier_;
      }

      else
      {
        v56 = 0xE300000000000000;
        v54 = 7104878;
      }

      v57 = sub_10000668C(v54, v56, &v123);

      *(v30 + 14) = v57;
      *(v30 + 22) = 2082;
      v58 = [v26 v37[106]];
      if (v58)
      {
        v59 = v58;
        v60 = [v58 description];

        v61 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v63 = v62;
      }

      else
      {
        v63 = 0xE300000000000000;
        v61 = 7104878;
      }

      v64 = sub_10000668C(v61, v63, &v123);

      *(v30 + 24) = v64;
      _os_log_impl(&_mh_execute_header, v27, v115, "MERGE.LOCAL: ...BEFORE merging local reminder to cloud reminder {cloud: %{public}s, local: %{public}s, list: %{public}s}", v30, 0x20u);
      swift_arrayDestroy();
    }

    else
    {
    }

    v65 = [v24 mergeWithLocalObject:v25];
    v66 = v24;
    v67 = v25;
    v68 = v26;
    v69 = Logger.logObject.getter();
    v70 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      v114 = swift_slowAlloc();
      v123 = v114;
      *v71 = 136446978;
      v115 = v65;
      if (v65)
      {
        v72 = 1702195828;
      }

      else
      {
        v72 = 0x65736C6166;
      }

      if (v65)
      {
        v73 = 0xE400000000000000;
      }

      else
      {
        v73 = 0xE500000000000000;
      }

      v74 = sub_10000668C(v72, v73, &v123);

      *(v71 + 4) = v74;
      *(v71 + 12) = 2082;
      v75 = &selRef_persistentStoreForIdentifier_;
      v76 = [v66 remObjectID];
      if (v76)
      {
        v77 = v76;
        v78 = [v76 description];

        v79 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v81 = v80;

        v75 = &selRef_persistentStoreForIdentifier_;
      }

      else
      {
        v81 = 0xE300000000000000;
        v79 = 7104878;
      }

      v82 = sub_10000668C(v79, v81, &v123);

      *(v71 + 14) = v82;
      *(v71 + 22) = 2082;
      v83 = [v67 v75[106]];
      if (v83)
      {
        v84 = v83;
        v85 = [v83 description];

        v86 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v88 = v87;
      }

      else
      {
        v88 = 0xE300000000000000;
        v86 = 7104878;
      }

      v89 = sub_10000668C(v86, v88, &v123);

      *(v71 + 24) = v89;
      *(v71 + 32) = 2082;
      v90 = [v68 remObjectID];
      if (v90)
      {
        v91 = v90;
        v92 = [v90 description];

        v93 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v95 = v94;
      }

      else
      {
        v95 = 0xE300000000000000;
        v93 = 7104878;
      }

      v96 = sub_10000668C(v93, v95, &v123);

      *(v71 + 34) = v96;
      _os_log_impl(&_mh_execute_header, v69, v70, "MERGE.LOCAL: ...AFTER merging local reminder to cloud reminder (success: %{public}s, cloud: %{public}s, local: %{public}s, list: %{public}s}", v71, 0x2Au);
      swift_arrayDestroy();

      if (v115)
      {
LABEL_41:
        v97 = [v67 identifier];
        if (v97)
        {
          v98 = v121;
          v99 = v97;
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          v101 = v118;
          v100 = v119;
          v102 = v120;
          (*(v118 + 16))(v120, v98, v119);
          v103 = v116;
          sub_1003794C4(v116, v102);

          v104 = *(v101 + 8);
          v104(v103, v100);
          v104(v98, v100);
          return;
        }
      }
    }

    else
    {

      if (v65)
      {
        goto LABEL_41;
      }
    }

    return;
  }

  if (qword_100935F30 != -1)
  {
    swift_once();
  }

  v38 = type metadata accessor for Logger();
  sub_100006654(v38, qword_100942E20);
  v39 = v19;
  v40 = a3;
  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v41, v42))
  {
    v122 = v4;
    v43 = swift_slowAlloc();
    v123 = swift_slowAlloc();
    *v43 = 136446466;
    v44 = [v39 remObjectID];
    if (v44)
    {
      v45 = v44;
      v46 = [v44 description];

      v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v49 = v48;
    }

    else
    {
      v49 = 0xE300000000000000;
      v47 = 7104878;
    }

    v105 = sub_10000668C(v47, v49, &v123);

    *(v43 + 4) = v105;
    *(v43 + 12) = 2082;
    v106 = [v40 remObjectID];
    if (v106)
    {
      v107 = v106;
      v108 = [v106 description];

      v109 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v111 = v110;
    }

    else
    {
      v111 = 0xE300000000000000;
      v109 = 7104878;
    }

    v112 = sub_10000668C(v109, v111, &v123);

    *(v43 + 14) = v112;
    _os_log_impl(&_mh_execute_header, v41, v42, "MERGE.LOCAL: ...no matching local reminder found for cloud reminder {reminder: %{public}s, list: %{public}s}", v43, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }
}

void *REMCDList.objectsToBeDeletedBeforeThisObject()()
{
  v1 = [v0 reminders];
  if (v1)
  {
    sub_100272574(v1);
  }

  v2 = [v0 childLists];
  if (v2)
  {
    sub_100272574(v2);
  }

  v3 = [v0 childSmartLists];
  if (v3)
  {
    sub_100272574(v3);
  }

  return _swiftEmptyArrayStorage;
}

Swift::Void __swiftcall REMCDList.restoreParentReferenceAfterUnmarkingForDeletion()()
{
  v1 = [v0 account];
  [v0 setParentAccount:v1];
}

unint64_t sub_100363F20(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  type metadata accessor for UUID();
  sub_1003932B0(&qword_10093B410, &type metadata accessor for UUID);
  v5 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return sub_100365444(a1, v5, &type metadata accessor for UUID, &qword_10093A3E0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
}

unint64_t sub_100363FF4(uint64_t a1)
{
  v2 = v1;
  v4 = NSObject._rawHashValue(seed:)(*(v2 + 40));
  return sub_10002BD60(a1, v4, &qword_100943230, NSManagedObjectID_ptr);
}

unint64_t sub_100364044(uint64_t a1)
{
  v2 = v1;
  v4 = NSObject._rawHashValue(seed:)(*(v2 + 40));

  return sub_100364A10(a1, v4);
}

unint64_t sub_100364088(uint64_t a1)
{
  v3 = *(v1 + 40);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_100365340(a1, v4);
}

unint64_t sub_100364118(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  v4 = Hasher._finalize()();

  return sub_100364AD4(a1, v4);
}

unint64_t sub_100364198(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  Hasher.init(_seed:)();
  if (a2)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v6 = Hasher._finalize()();

  return sub_100364B44(a1, a2, v6);
}

unint64_t sub_100364240(void *a1, unint64_t *a2, uint64_t *a3)
{
  v7 = *(v3 + 40);
  Hasher.init(_seed:)();
  if (a1)
  {
    Hasher._combine(_:)(1u);
    v8 = a1;
    NSObject.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v9 = Hasher._finalize()();
  return sub_100364C10(a1, v9, a2, a3);
}

unint64_t sub_1003642E4(Swift::UInt a1, Swift::UInt a2)
{
  v5 = *(v2 + 40);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  Hasher._combine(_:)(a2);
  v6 = Hasher._finalize()();

  return sub_100364D0C(a1, a2, v6);
}

unint64_t sub_100364364(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = static Hasher._hash(seed:_:)();

  return sub_100364D84(a1, v4);
}

unint64_t sub_1003643A8(uint64_t a1)
{
  v2 = v1;
  v4 = NSObject._rawHashValue(seed:)(*(v2 + 40));
  return sub_10002BD60(a1, v4, &qword_10093D5D0, REMList_ptr);
}

unint64_t sub_1003643F8(uint64_t a1)
{
  v2 = v1;
  v4 = NSObject._rawHashValue(seed:)(*(v2 + 40));
  return sub_10002BD60(a1, v4, &unk_10093F5F0, REMAssignment_ptr);
}

unint64_t sub_100364448(uint64_t a1)
{
  v2 = v1;
  v4 = NSObject._rawHashValue(seed:)(*(v2 + 40));
  return sub_10002BD60(a1, v4, &qword_100938DE0, NSNumber_ptr);
}

unint64_t sub_100364498(uint64_t a1)
{
  v2 = v1;
  v4 = NSObject._rawHashValue(seed:)(*(v2 + 40));
  return sub_10002BD60(a1, v4, &qword_100945FC0, NSObject_ptr);
}

unint64_t sub_1003644E8(uint64_t a1)
{
  v2 = v1;
  v4 = NSObject._rawHashValue(seed:)(*(v2 + 40));
  return sub_10002BD60(a1, v4, &qword_10093B2C0, off_1008D4198);
}

unint64_t sub_100364538(uint64_t a1)
{
  v2 = v1;
  v4 = NSObject._rawHashValue(seed:)(*(v2 + 40));
  return sub_10002BD60(a1, v4, &unk_100938CD0, CKRecordID_ptr);
}

unint64_t sub_100364588(uint64_t a1)
{
  v2 = v1;
  v4 = NSObject._rawHashValue(seed:)(*(v2 + 40));
  return sub_10002BD60(a1, v4, &unk_10093C970, REMContactRepresentation_ptr);
}

unint64_t sub_1003645D8(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v16 - v11;
  v13 = *(v2 + 40);
  Hasher.init(_seed:)();
  sub_100010364(a1, v12, &unk_100939D90, "8\n\r");
  if ((*(v5 + 48))(v12, 1, v4) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v5 + 32))(v8, v12, v4);
    Hasher._combine(_:)(1u);
    sub_1003932B0(&qword_10093B410, &type metadata accessor for UUID);
    dispatch thunk of Hashable.hash(into:)();
    (*(v5 + 8))(v8, v4);
  }

  v14 = Hasher._finalize()();
  return sub_100364EC4(a1, v14);
}

unint64_t sub_1003647E8(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  type metadata accessor for REMSuggestedAttributesHarvester.CachedSuggestionType();
  sub_1003932B0(&qword_100943F00, &type metadata accessor for REMSuggestedAttributesHarvester.CachedSuggestionType);
  v5 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return sub_100365444(a1, v5, &type metadata accessor for REMSuggestedAttributesHarvester.CachedSuggestionType, &qword_100943F08, &type metadata accessor for REMSuggestedAttributesHarvester.CachedSuggestionType, &protocol conformance descriptor for REMSuggestedAttributesHarvester.CachedSuggestionType);
}

unint64_t sub_1003648BC(double a1)
{
  v3 = *(v1 + 40);
  v4 = static Hasher._hash(seed:_:)();

  return sub_1003655E4(v4, a1);
}

unint64_t sub_100364908(uint64_t a1)
{
  v3 = *(v1 + 40);
  Hasher.init(_seed:)();
  if (*(a1 + 24))
  {
    v4 = *(a1 + 16);
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v5 = Hasher._finalize()();

  return sub_10036564C(a1, v5);
}

unint64_t sub_1003649A8(uint64_t a1)
{
  v3 = *(v1 + 40);
  Hasher.init(_seed:)();
  NSObject.hash(into:)();
  v4 = Hasher._finalize()();
  return sub_100364DF0(a1, v4);
}

unint64_t sub_100364A10(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for REMObjectID_Codable();
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = static NSObject.== infix(_:_:)();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_100364AD4(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_100364B44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3 + 64;
  v5 = -1 << *(v3 + 32);
  v6 = a3 & ~v5;
  if ((*(v3 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v9 = ~v5;
    v10 = *(v3 + 48);
    do
    {
      v11 = (v10 + 16 * v6);
      v12 = v11[1];
      if (v12)
      {
        if (a2)
        {
          v13 = *v11 == a1 && v12 == a2;
          if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            return v6;
          }
        }
      }

      else if (!a2)
      {
        return v6;
      }

      v6 = (v6 + 1) & v9;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

unint64_t sub_100364C10(void *a1, uint64_t a2, unint64_t *a3, uint64_t *a4)
{
  v5 = v4 + 64;
  v6 = -1 << *(v4 + 32);
  v7 = a2 & ~v6;
  if ((*(v4 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v10 = v4;
    v12 = ~v6;
    do
    {
      v13 = *(*(v10 + 48) + 8 * v7);
      if (v13)
      {
        if (a1)
        {
          sub_1000060C8(0, a3, a4);
          v14 = v13;
          v15 = a1;
          v16 = static NSObject.== infix(_:_:)();

          if (v16)
          {
            return v7;
          }
        }
      }

      else if (!a1)
      {
        return v7;
      }

      v7 = (v7 + 1) & v12;
    }

    while (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  return v7;
}

unint64_t sub_100364D0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = -1 << *(v3 + 32);
  result = a3 & ~v5;
  if ((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v7 = ~v5;
    do
    {
      v8 = (*(v3 + 48) + 16 * result);
      v10 = *v8;
      v9 = v8[1];
      if (v10 == a1 && v9 == a2)
      {
        break;
      }

      result = (result + 1) & v7;
    }

    while (((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_100364D84(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_100364DF0(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_1000060C8(0, &qword_100945FC0, NSObject_ptr);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = static NSObject.== infix(_:_:)();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_100364EC4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v41 = a1;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v33 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_1000F5104(&unk_10093A3D0, &qword_100795770);
  v9 = *(*(v40 - 8) + 64);
  __chkstk_darwin(v40);
  v11 = &v31 - v10;
  v12 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  __chkstk_darwin(v14);
  v18 = &v31 - v17;
  v42 = v3;
  v19 = -1 << *(v3 + 32);
  v20 = a2 & ~v19;
  v39 = v3 + 64;
  if ((*(v3 + 64 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20))
  {
    v21 = ~v19;
    v22 = (v6 + 48);
    v23 = *(v15 + 72);
    v37 = v16;
    v38 = v23;
    v31 = (v6 + 48);
    v32 = (v6 + 32);
    v35 = (v6 + 8);
    v36 = ~v19;
    while (1)
    {
      sub_100010364(*(v42 + 48) + v38 * v20, v18, &unk_100939D90, "8\n\r");
      v24 = *(v40 + 48);
      sub_100010364(v18, v11, &unk_100939D90, "8\n\r");
      sub_100010364(v41, &v11[v24], &unk_100939D90, "8\n\r");
      v25 = *v22;
      if ((*v22)(v11, 1, v5) == 1)
      {
        break;
      }

      v26 = v37;
      sub_100010364(v11, v37, &unk_100939D90, "8\n\r");
      if (v25(&v11[v24], 1, v5) == 1)
      {
        sub_1000050A4(v18, &unk_100939D90, "8\n\r");
        (*v35)(v26, v5);
        v21 = v36;
LABEL_4:
        sub_1000050A4(v11, &unk_10093A3D0, &qword_100795770);
        goto LABEL_5;
      }

      v27 = &v11[v24];
      v28 = v33;
      (*v32)(v33, v27, v5);
      sub_1003932B0(&qword_10093A3E0, &type metadata accessor for UUID);
      v34 = dispatch thunk of static Equatable.== infix(_:_:)();
      v29 = *v35;
      (*v35)(v28, v5);
      sub_1000050A4(v18, &unk_100939D90, "8\n\r");
      v29(v26, v5);
      v22 = v31;
      sub_1000050A4(v11, &unk_100939D90, "8\n\r");
      v21 = v36;
      if (v34)
      {
        return v20;
      }

LABEL_5:
      v20 = (v20 + 1) & v21;
      if (((*(v39 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
      {
        return v20;
      }
    }

    sub_1000050A4(v18, &unk_100939D90, "8\n\r");
    if (v25(&v11[v24], 1, v5) == 1)
    {
      sub_1000050A4(v11, &unk_100939D90, "8\n\r");
      return v20;
    }

    goto LABEL_4;
  }

  return v20;
}

unint64_t sub_100365340(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v9 = v8;
      if (v7 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v9 == v10)
      {
        break;
      }

      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_100365444(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t), uint64_t a6)
{
  v25 = a5;
  v26 = a6;
  v24 = a4;
  v22[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v22 - v11;
  v23 = v6;
  v13 = -1 << *(v6 + 32);
  v14 = a2 & ~v13;
  v22[0] = v6 + 64;
  if ((*(v6 + 64 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v18 = *(v9 + 16);
    v17 = v9 + 16;
    v16 = v18;
    v19 = *(v17 + 56);
    do
    {
      v16(v12, *(v23 + 48) + v19 * v14, v8);
      sub_1003932B0(v24, v25);
      v20 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v17 - 8))(v12, v8);
      if (v20)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
    }

    while (((*(v22[0] + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) != 0);
  }

  return v14;
}

unint64_t sub_1003655E4(uint64_t a1, double a2)
{
  v3 = -1 << *(v2 + 32);
  result = a1 & ~v3;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v5 = ~v3;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a2)
      {
        break;
      }

      result = (result + 1) & v5;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_10036564C(uint64_t a1, uint64_t a2)
{
  v3 = v2 + 64;
  v4 = -1 << *(v2 + 32);
  v5 = a2 & ~v4;
  if ((*(v2 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = ~v4;
    v8 = *(a1 + 16);
    v7 = *(a1 + 24);
    v9 = *(v2 + 48);
    do
    {
      v10 = *(v9 + 8 * v5);
      v11 = *(v10 + 24);
      if (v11)
      {
        if (v7)
        {
          v12 = *(v10 + 16) == v8 && v11 == v7;
          if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            return v5;
          }
        }
      }

      else if (!v7)
      {
        return v5;
      }

      v5 = (v5 + 1) & v6;
    }

    while (((*(v3 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

char *sub_100365788(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000F5104(&unk_100936FD0, &unk_100795D40);
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

char *sub_1003658F0(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000F5104(&unk_100938E80, &unk_1007959D0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100365CC4(void *result, int64_t a2, char a3, void *a4)
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
    sub_1000F5104(&qword_100943E50, &unk_1007A12F0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1000F5104(&qword_100943E58, &qword_1007A45F0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100365E90(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000F5104(&qword_1009436B8, &qword_1007A3FC8);
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

char *sub_100365FA8(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000F5104(&qword_1009436A8, &qword_1007A3FB8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 144);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[144 * v8])
    {
      memmove(v12, v13, 144 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1003660E4(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    sub_1000F5104(a5, a6);
    v12 = swift_allocObject();
    v13 = j__malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 25;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 3);
  }

  else
  {
    v12 = _swiftEmptyArrayStorage;
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[8 * v10])
    {
      memmove(v15, v16, 8 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 8 * v10);
  }

  return v12;
}

void *sub_1003661E0(void *result, int64_t a2, char a3, void *a4)
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
    sub_1000F5104(&qword_100944108, &qword_1007A4870);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1000F5104(&unk_100944110, &unk_1007A4878);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1003664C4(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    sub_1000F5104(a5, a6);
    v12 = swift_allocObject();
    v13 = j__malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * v13 - 64;
  }

  else
  {
    v12 = _swiftEmptyArrayStorage;
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[v10])
    {
      memmove(v14, v15, v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, v10);
  }

  return v12;
}

void *sub_1003669BC(void *result, int64_t a2, char a3, void *a4)
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
    sub_1000F5104(&qword_10093EE58, &unk_10079E1F0);
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
    type metadata accessor for NLTagScheme(0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100366AE4(void *result, int64_t a2, char a3, void *a4)
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
    sub_1000F5104(&qword_10093EE20, &qword_10079D5D0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1000F5104(&qword_1009440E0, &qword_10079D5D8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100366C18(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000F5104(&unk_100944070, qword_1007A47A0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

char *sub_100366D1C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000F5104(&qword_10093F7B0, &unk_10079D600);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100366E3C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000F5104(&qword_10093ED18, &qword_10079D458);
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

void *sub_100366F78(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    sub_1000F5104(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 40);
  }

  else
  {
    v16 = _swiftEmptyArrayStorage;
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[5 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 40 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1000F5104(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_1003670C0(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000F5104(&qword_1009439C8, &qword_1007A4278);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1003671E0(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000F5104(&qword_100943A00, &qword_1007A4290);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100367338(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    sub_1000F5104(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 25;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 3);
  }

  else
  {
    v16 = _swiftEmptyArrayStorage;
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 8 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1000F5104(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

void *sub_1003674B8(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    sub_1000F5104(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 24);
  }

  else
  {
    v16 = _swiftEmptyArrayStorage;
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[3 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 24 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1000F5104(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

void *sub_100367600(void *result, int64_t a2, char a3, void *a4)
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
    sub_1000F5104(&qword_1009439F0, &qword_1007A4280);
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
    sub_1000F5104(&qword_1009439F8, &qword_1007A4288);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1003679FC(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000F5104(&qword_10094A3A0, &qword_1007A46E8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100367B18(void *result, int64_t a2, char a3, void *a4)
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
    sub_1000F5104(&qword_100943988, &qword_1007A4238);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1000F5104(&qword_100943990, &qword_1007A4240);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100367C4C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000F5104(&qword_100942F60, &qword_1007A39F0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100367EEC(void *result, int64_t a2, char a3, void *a4)
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
    sub_1000F5104(&qword_100943118, &qword_1007A3B38);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1000F5104(&unk_100943120, &qword_1007A3B40);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100368094(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    sub_1000F5104(a5, a6);
    v12 = swift_allocObject();
    v13 = j__malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 17;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 4);
  }

  else
  {
    v12 = _swiftEmptyArrayStorage;
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[16 * v10])
    {
      memmove(v15, v16, 16 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 16 * v10);
  }

  return v12;
}

void *sub_1003681B4(void *result, int64_t a2, char a3, void *a4)
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
    sub_1000F5104(&qword_10093EDD0, &qword_10079D568);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1000F5104(&unk_100943F50, &unk_10079D570);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100368334(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    sub_1000F5104(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 17;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 4);
  }

  else
  {
    v16 = _swiftEmptyArrayStorage;
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[2 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 16 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1000F5104(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_1003684B8(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000F5104(&unk_100943168, &unk_1007A3B88);
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
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  v15 = 16 * v8;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[v15])
    {
      memmove(v13, v14, v15);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v15);
  }

  return v10;
}

char *sub_1003685B8(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000F5104(&qword_1009431F0, &qword_1007A3BF0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100368A58(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a2 <= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (!v4)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_1000F5104(a3, a4);
  v6 = swift_allocObject();
  v7 = j__malloc_size(v6);
  result = v6;
  v9 = ((v7 - 32) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v6[2] = a1;
  v6[3] = 2 * ((v9 >> 2) + (v9 >> 63));
  return result;
}

void *sub_100368AF4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a2 <= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (!v4)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_1000F5104(a3, a4);
  v6 = swift_allocObject();
  v7 = j__malloc_size(v6);
  result = v6;
  v10 = v7 - 32;
  v9 = v7 < 32;
  v11 = v7 - 17;
  if (!v9)
  {
    v11 = v10;
  }

  v6[2] = a1;
  v6[3] = 2 * (v11 >> 4);
  return result;
}

void *sub_100368D14(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_1000F5104(a3, a4);
  v8 = *(a5(0) - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  result = j__malloc_size(v11);
  if (v9)
  {
    if ((result - v10) != 0x8000000000000000 || v9 != -1)
    {
      v11[2] = a1;
      v11[3] = 2 * ((result - v10) / v9);
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_100368E9C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a2 <= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (!v4)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_1000F5104(a3, a4);
  v6 = swift_allocObject();
  v7 = j__malloc_size(v6);
  result = v6;
  v10 = v7 - 32;
  v9 = v7 < 32;
  v11 = v7 - 25;
  if (!v9)
  {
    v11 = v10;
  }

  v6[2] = a1;
  v6[3] = 2 * (v11 >> 3);
  return result;
}

uint64_t sub_100368F18(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *v2;
  v5 = sub_100005F4C(a1, a2);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = v5;
  v8 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v3;
  v16 = *v3;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_100373664();
    v10 = v16;
  }

  v11 = *(*(v10 + 48) + 16 * v7 + 8);

  v12 = (*(v10 + 56) + 16 * v7);
  v13 = *v12;
  v14 = v12[1];
  sub_1003328B8(v7, v10);
  *v3 = v10;
  return v13;
}

double sub_100369004@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_10000F660(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v15 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_100373FC4();
      v11 = v15;
    }

    v12 = *(v11 + 48);
    v13 = type metadata accessor for CodingUserInfoKey();
    (*(*(v13 - 8) + 8))(v12 + *(*(v13 - 8) + 72) * v8, v13);
    sub_100005EE0((*(v11 + 56) + 32 * v8), a2);
    sub_100332A68(v8, v11);
    *v3 = v11;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

double sub_1003690E0@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_10001B0D8(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v13 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_100374298();
      v11 = v13;
    }

    sub_10001B2CC(*(v11 + 48) + 40 * v8);
    sub_100005EE0((*(v11 + 56) + 32 * v8), a2);
    sub_100332D1C(v8, v11);
    *v3 = v11;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_100369184(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *v2;
  v5 = sub_100005F4C(a1, a2);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = v5;
  v8 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v3;
  v14 = *v3;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_100377A50(&qword_100942FD8, &qword_1007A3A58);
    v10 = v14;
  }

  v11 = *(*(v10 + 48) + 16 * v7 + 8);

  v12 = *(*(v10 + 56) + 8 * v7);
  sub_100337828(v7, v10);
  *v3 = v10;
  return v12;
}

uint64_t sub_10036922C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_100363F20(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v23 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1003744A0();
      v11 = v23;
    }

    v12 = *(v11 + 48);
    v13 = type metadata accessor for UUID();
    v14 = *(v13 - 8);
    v22 = v14;
    v15 = *(v14 + 72) * v8;
    (*(v14 + 8))(v12 + v15, v13);
    (*(v22 + 32))(a2, *(v11 + 56) + v15, v13);
    sub_100332EC0(v8, v11);
    *v3 = v11;
    v16 = *(v22 + 56);
    v17 = a2;
    v18 = 0;
    v19 = v13;
  }

  else
  {
    v20 = type metadata accessor for UUID();
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a2;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

double sub_1003693C4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_100005F4C(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v15 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_100374FD8();
      v12 = v15;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    sub_100005EE0((*(v12 + 56) + 32 * v9), a3);
    sub_1003331C0(v9, v12);
    *v4 = v12;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_1003694A4(void *a1, void (*a2)(uint64_t, uint64_t *), unint64_t a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = v5;
  v8 = *v5;
  if ((*v5 & 0xC000000000000001) == 0)
  {
    v15 = a3;
    v14 = a4;
    v19 = *v5;
    v20 = sub_10002B924(a1);
    if (v21)
    {
      v8 = v20;
      v22 = *v7;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v24 = *v7;
      v26 = *v7;
      if (isUniquelyReferenced_nonNull_native)
      {
LABEL_10:

        v18 = *(v24[7] + 8 * v8);
        a2(v8, v24);
        *v7 = v24;
        return v18;
      }

LABEL_14:
      sub_1003751E0(v15, v14);
      v24 = v26;
      goto LABEL_10;
    }

    return 0;
  }

  if (v8 < 0)
  {
    v10 = *v5;
  }

  else
  {
    v10 = v8 & 0xFFFFFFFFFFFFFF8;
  }

  v11 = a1;
  v12 = __CocoaDictionary.lookup(_:)();

  if (!v12)
  {
    return 0;
  }

  swift_unknownObjectRelease();

  v13 = __CocoaDictionary.count.getter();
  v14 = a5(v10, v13);

  v15 = sub_10002B924(v11);
  v17 = v16;

  if ((v17 & 1) == 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v18 = *(v14[7] + 8 * v15);
  a2(v15, v14);

  *v7 = v14;
  return v18;
}

uint64_t sub_100369620@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_100005F4C(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v23 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_100375A44(&type metadata accessor for Date, &qword_100943548, &qword_1007A3EC8);
      v12 = v23;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    v14 = *(v12 + 56);
    v15 = type metadata accessor for Date();
    v22 = *(v15 - 8);
    (*(v22 + 32))(a3, v14 + *(v22 + 72) * v9, v15);
    sub_100333370(v9, v12);
    *v4 = v12;
    v16 = *(v22 + 56);
    v17 = a3;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = type metadata accessor for Date();
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a3;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

double sub_1003697B4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_100005F4C(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v15 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_100375CE0();
      v12 = v15;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    sub_100054B6C((*(v12 + 56) + 40 * v9), a3);
    sub_10033355C(v9, v12);
    *v4 = v12;
  }

  else
  {
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t sub_100369860(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *v2;
  v5 = sub_100005F4C(a1, a2);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = v5;
  v8 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v3;
  v14 = *v3;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_1003778E0(&unk_100944090, &unk_1007A4820);
    v10 = v14;
  }

  v11 = *(*(v10 + 48) + 16 * v7 + 8);

  v12 = *(*(v10 + 56) + 8 * v7);
  sub_100337828(v7, v10);
  *v3 = v10;
  return v12;
}

uint64_t sub_100369908(void *a1)
{
  v2 = v1;
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) == 0)
  {
    v13 = *v1;
    v14 = sub_10002B924(a1);
    if (v15)
    {
      v3 = v14;
      v16 = *v2;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v8 = *v2;
      v19 = *v2;
      if (isUniquelyReferenced_nonNull_native)
      {
LABEL_10:

        v12 = *(*(v8 + 56) + 8 * v3);
        sub_10033782C(v3, v8);
        goto LABEL_11;
      }

LABEL_15:
      sub_100377FDC(&qword_10093D5F8, &unk_1007A45A0);
      v8 = v19;
      goto LABEL_10;
    }

    return 0;
  }

  if (v3 < 0)
  {
    v4 = *v1;
  }

  else
  {
    v4 = v3 & 0xFFFFFFFFFFFFFF8;
  }

  v5 = a1;
  v6 = __CocoaDictionary.lookup(_:)();

  if (!v6)
  {
    return 0;
  }

  swift_unknownObjectRelease();

  v7 = __CocoaDictionary.count.getter();
  v8 = sub_10021E048(v4, v7);

  v9 = sub_10002B924(v5);
  v11 = v10;

  if ((v11 & 1) == 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v12 = *(*(v8 + 56) + 8 * v9);
  sub_10033782C(v9, v8);

LABEL_11:
  *v2 = v8;
  return v12;
}

double sub_100369A64@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_100363F20(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v15 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_100376A4C();
      v11 = v15;
    }

    v12 = *(v11 + 48);
    v13 = type metadata accessor for UUID();
    (*(*(v13 - 8) + 8))(v12 + *(*(v13 - 8) + 72) * v8, v13);
    sub_100054B6C((*(v11 + 56) + 40 * v8), a2);
    sub_100333BC4(v8, v11);
    *v3 = v11;
  }

  else
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}