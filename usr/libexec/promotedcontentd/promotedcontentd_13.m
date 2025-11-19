uint64_t DevicePipelinesModule.deinit()
{
  swift_unknownObjectRelease();

  return v0;
}

uint64_t DevicePipelinesModule.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void *sub_10025DC08(void *a1, uint64_t a2)
{
  v3 = v2;
  v3[3] = a2;
  v3[4] = a1;
  sub_1003983A8();
  swift_unknownObjectRetain();
  v6 = a1;
  if (sub_100398368())
  {
    v7 = type metadata accessor for OnDeviceAttributionCoordinatorProvider();
    swift_allocObject();
    swift_unknownObjectRetain();
    v8 = sub_100251AF4(v6, a2);
    v3[6] = v8;
    v21[3] = v7;
    v21[4] = &off_10047AED0;
    v21[0] = v8;
    v9 = type metadata accessor for OnDeviceAttributionObjCBridge();
    v10 = objc_allocWithZone(v9);
    v11 = sub_1001F54B4(v21, v7);
    __chkstk_darwin(v11);
    v13 = (&v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v14 + 16))(v13);
    v15 = *v13;
    v20[3] = v7;
    v20[4] = &off_10047AED0;
    v20[0] = v15;
    sub_100003554(v20, v10 + OBJC_IVAR___APOnDeviceAttributionObjCBridge_coordinatorProvider);
    v19.receiver = v10;
    v19.super_class = v9;

    v16 = objc_msgSendSuper2(&v19, "init");
    sub_100003894(v20);
    sub_100003894(v21);
    v17 = v3[6];
  }

  else
  {
    v17 = 0;
    v16 = 0;
    v3[6] = 0;
  }

  v3[2] = v16;
  type metadata accessor for OdcaMessageQueue();
  swift_allocObject();

  swift_unknownObjectRetain();
  v3[5] = sub_100277510(v6, a2, v17);
  if (qword_1004D6140 != -1)
  {
    swift_once();
  }

  if (qword_1004D6138 != -1)
  {
    swift_once();
  }

  swift_weakAssign();
  return v3;
}

_UNKNOWN **sub_10025DEC0()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 16);
  }

  else
  {
    v2 = objc_opt_self();
    sub_100004218(0, &qword_1004D7E48);
    v3 = [v2 configurationForClass:swift_getObjCClassFromMetadata()];
    objc_opt_self();
    v4 = swift_dynamicCastObjCClass();
    if (v4 && (v5 = [v4 reengagementSources]) != 0)
    {
      v6 = v5;
      v1 = sub_100399198();
    }

    else
    {
      v1 = &off_100479E60;
    }

    swift_unknownObjectRelease();
    *(v0 + 16) = v1;
  }

  return v1;
}

_UNKNOWN **sub_10025DFC4()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 24);
  }

  else
  {
    v1 = sub_10025F1EC();
    *(v0 + 24) = v1;
  }

  return v1;
}

char *sub_10025E020()
{
  if (*(v0 + 32))
  {
    v1 = *(v0 + 32);
  }

  else
  {
    v1 = sub_10025F2F0();
    *(v0 + 32) = v1;
  }

  return v1;
}

uint64_t sub_10025E07C()
{
  v0 = sub_10025DFC4();
  v1 = sub_1003988F8();
  v2 = sub_100398938();
  v3 = sub_100398928();
  v4 = sub_100398948();
  v5 = (v0 + 4);
  v6 = v0[2] + 1;
  while (--v6)
  {
    v7 = v5 + 8;
    v8 = *v5;
    v5 += 8;
    if (v8 == v1)
    {
      v10 = *(v7 - 3);
      v9 = *(v7 - 2);
      v11 = *(v7 - 1);
      v12 = *(v10 + 16);
      v13 = (v10 + 32);
      while (v12)
      {
        v14 = *v13++;
        --v12;
        if (v14 == v2)
        {
          v15 = *(v9 + 16);
          v16 = (v9 + 32);
          while (v15)
          {
            v17 = *v16++;
            --v15;
            if (v17 == v3)
            {
              v18 = *(v11 + 16);
              v19 = (v11 + 32);
              while (v18)
              {
                v20 = *v19++;
                --v18;
                if (v20 == v4)
                {

                  return 1;
                }
              }

              goto LABEL_14;
            }
          }

          goto LABEL_14;
        }
      }

      break;
    }
  }

LABEL_14:

  return 0;
}

uint64_t sub_10025E178()
{

  return swift_deallocClassInstance();
}

Swift::Int sub_10025E1F4()
{
  v1 = *v0;
  sub_100399B58();
  sub_100399B78(v1 + 1);
  return sub_100399B88();
}

Swift::Int sub_10025E26C()
{
  v1 = *v0;
  sub_100399B58();
  sub_100399B78(v1 + 1);
  return sub_100399B88();
}

uint64_t sub_10025E2B0@<X0>(int *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10025F540(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_10025E2EC(unsigned __int8 a1)
{
  v2 = v1;
  v4 = sub_1003986D8();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v20[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_100398968();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v20[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v5 + 16))(v7, v2, v4);
  if ((*(v5 + 88))(v7, v4) != enum case for ConversionSignal.appStoreInstallationSignal(_:))
  {
    return (*(v5 + 8))(v7, v4);
  }

  (*(v5 + 96))(v7, v4);
  (*(v9 + 32))(v11, v7, v8);
  v12 = sub_100398918();
  if ((v12 & 0x100000000) == 0)
  {
    v13 = v12;
    sub_1001E27A8(&unk_1004DB000);
    inited = swift_initStackObject();
    *(inited + 32) = 0x656D6F6374754FLL;
    *(inited + 16) = xmmword_1003EB210;
    *(inited + 40) = 0xE700000000000000;
    *(inited + 48) = [objc_allocWithZone(NSNumber) initWithInt:a1 + 1];
    *(inited + 56) = 0x79546C616E676953;
    *(inited + 64) = 0xEA00000000006570;
    *(inited + 72) = [objc_allocWithZone(NSNumber) initWithInt:v13];
    v15 = sub_10025F0F0(inited, &qword_1004DAFF0);
    swift_setDeallocating();
    sub_1001E27A8(&unk_1004D7E60);
    swift_arrayDestroy();
    v16 = objc_opt_self();
    v17 = sub_100398F28();
    sub_10025EB3C(v15);

    sub_100004218(0, &qword_1004D5DC0);
    isa = sub_100398E48().super.isa;

    [v16 sendEvent:v17 customPayload:isa];
  }

  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_10025E688()
{
  v1 = v0;
  v2 = sub_100398968();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1003986D8();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9, v1, v6);
  v10 = (*(v7 + 88))(v9, v6);
  if (v10 == enum case for ConversionSignal.appStoreInstallationSignal(_:))
  {
    (*(v7 + 96))(v9, v6);
    (*(v3 + 32))(v5, v9, v2);
    v11 = sub_100398918();
    (*(v3 + 8))(v5, v2);
    if ((v11 & 0x100000000) != 0)
    {
      return 404;
    }

    v12 = v11 - 1;
    if (v12 > 3)
    {
      return 404;
    }

    else
    {
      return qword_1003EE390[v12];
    }
  }

  else
  {
    v14 = v10;
    v15 = enum case for ConversionSignal.standaloneAppOpenSignal(_:);
    (*(v7 + 8))(v9, v6);
    if (v14 == v15)
    {
      return 3;
    }

    else
    {
      return 404;
    }
  }
}

unint64_t sub_10025E8D0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1001E27A8(&unk_1004D5DE0);
    v2 = sub_100399828();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
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
        v13 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v14 = v13 | (v12 << 6);
        v15 = (*(a1 + 48) + 16 * v14);
        v17 = *v15;
        v16 = v15[1];
        v18 = *(*(a1 + 56) + 8 * v14);
        sub_100004218(0, &qword_1004D5DC0);

        v19 = v18;
        swift_dynamicCast();
        sub_10021243C(&v25, v27);
        sub_10021243C(v27, v28);
        sub_10021243C(v28, &v26);
        result = sub_1001EC1DC(v17, v16);
        if (v20)
        {
          v9 = (v2[6] + 16 * result);
          *v9 = v17;
          v9[1] = v16;
          v10 = result;

          v11 = (v2[7] + 32 * v10);
          sub_100003894(v11);
          result = sub_10021243C(&v26, v11);
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
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v21 = (v2[6] + 16 * result);
          *v21 = v17;
          v21[1] = v16;
          result = sub_10021243C(&v26, (v2[7] + 32 * result));
          v22 = v2[2];
          v23 = __OFADD__(v22, 1);
          v24 = v22 + 1;
          if (v23)
          {
            goto LABEL_21;
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
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

void sub_10025EB3C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1001E27A8(&unk_1004D7E70);
    v2 = sub_100399828();
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

  v7 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v12 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v7;
    if (v5)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v14 = v13 | (v12 << 6);
        v15 = (*(a1 + 48) + 16 * v14);
        v17 = *v15;
        v16 = v15[1];
        v18 = *(*(a1 + 56) + 8 * v14);

        v19 = v18;
        v20 = sub_1001EC1DC(v17, v16);
        if (v21)
        {
          v8 = (v2[6] + 16 * v20);
          *v8 = v17;
          v8[1] = v16;
          v9 = v20;

          v10 = v2[7];
          v11 = *(v10 + 8 * v9);
          *(v10 + 8 * v9) = v19;

          v7 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v20;
          v22 = (v2[6] + 16 * v20);
          *v22 = v17;
          v22[1] = v16;
          *(v2[7] + 8 * v20) = v19;
          v23 = v2[2];
          v24 = __OFADD__(v23, 1);
          v25 = v23 + 1;
          if (v24)
          {
            goto LABEL_21;
          }

          v2[2] = v25;
          v7 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v12 = v7;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
}

uint64_t sub_10025ED1C(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

unint64_t sub_10025EDC8(uint64_t a1)
{
  v2 = sub_1001E27A8(&unk_1004D7EA0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_1001E27A8(&qword_1004D68F8);
    v7 = sub_100399828();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_10000ADB4(v9, v5, &unk_1004D7EA0);
      v11 = *v5;
      v12 = v5[1];
      result = sub_1001EC1DC(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = sub_100397748();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v15, v5 + v8, v18);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_10025EFB4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1001E27A8(&unk_1004D7E80);
    v3 = sub_100399828();
    v4 = a1 + 32;

    while (1)
    {
      sub_10000ADB4(v4, v13, &unk_1004D7E90);
      result = sub_10023DBC4(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_10021243C(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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

unint64_t sub_10025F0F0(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    sub_1001E27A8(a2);
    v4 = sub_100399828();

    for (i = (a1 + 48); ; i += 3)
    {
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      v9 = v8;
      result = sub_1001EC1DC(v6, v7);
      if (v11)
      {
        break;
      }

      *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v4[6] + 16 * result);
      *v12 = v6;
      v12[1] = v7;
      *(v4[7] + 8 * result) = v9;
      v13 = v4[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v4[2] = v15;
      if (!--v2)
      {

        return v4;
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

_UNKNOWN **sub_10025F1EC()
{
  v0 = objc_opt_self();
  sub_100004218(0, &qword_1004D7E48);
  v1 = [v0 configurationForClass:swift_getObjCClassFromMetadata()];
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2 && (v3 = [v2 installSignals]) != 0)
  {
    v4 = v3;
    sub_1001E27A8(&unk_1004D6930);
    v5 = sub_100399198();

    v6 = sub_1002819A4(v5);
    swift_unknownObjectRelease();

    return v6;
  }

  else
  {
    swift_unknownObjectRelease();
    return &off_100479DE0;
  }
}

char *sub_10025F2F0()
{
  v0 = objc_opt_self();
  sub_100004218(0, &qword_1004D7E48);
  v1 = [v0 configurationForClass:swift_getObjCClassFromMetadata()];
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (!v2 || (v3 = [v2 incorporateJourneyMetrics]) == 0)
  {
    swift_unknownObjectRelease();
    sub_1001E27A8(&qword_1004D41E0);
    v9 = swift_allocObject();
    *(v9 + 1) = xmmword_1003EB210;
    *(v9 + 2) = xmmword_1003ED150;
    return v9;
  }

  v4 = v3;
  sub_100004218(0, &qword_1004D43F0);
  v5 = sub_100399198();

  if (!(v5 >> 62))
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

  v6 = sub_1003997F8();
  if (!v6)
  {
LABEL_16:
    swift_unknownObjectRelease();

    return _swiftEmptyArrayStorage;
  }

LABEL_5:
  result = sub_100211EA4(0, v6 & ~(v6 >> 63), 0);
  if ((v6 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = _swiftEmptyArrayStorage;
    do
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v10 = sub_100399708();
      }

      else
      {
        v10 = *(v5 + 8 * v8 + 32);
      }

      v11 = v10;
      v12 = [v10 integerValue];

      v14 = _swiftEmptyArrayStorage[2];
      v13 = _swiftEmptyArrayStorage[3];
      if (v14 >= v13 >> 1)
      {
        sub_100211EA4((v13 > 1), v14 + 1, 1);
      }

      ++v8;
      _swiftEmptyArrayStorage[2] = v14 + 1;
      _swiftEmptyArrayStorage[v14 + 4] = v12;
    }

    while (v6 != v8);

    swift_unknownObjectRelease();
    return v9;
  }

  __break(1u);
  return result;
}

uint64_t sub_10025F540(int a1)
{
  if ((a1 - 1) >= 0xC)
  {
    return 12;
  }

  else
  {
    return (a1 - 1);
  }
}

uint64_t sub_10025F554(uint64_t a1)
{
  v2 = sub_100398898();
  v54 = *(v2 - 8);
  v55 = v2;
  v3 = __chkstk_darwin(v2);
  v52 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v6 = &v49 - v5;
  v7 = sub_100398968();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v49 - v12;
  v14 = sub_1003986D8();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v50 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = &v49 - v18;
  v51 = sub_1001E27A8(&qword_1004D6878);
  v53 = a1;
  sub_100397B18();
  v20 = (*(v15 + 88))(v19, v14);
  if (v20 == enum case for ConversionSignal.appStoreInstallationSignal(_:))
  {
    (*(v15 + 96))(v19, v14);
    (*(v8 + 32))(v13, v19, v7);
    if (sub_10025E07C())
    {
      (*(v8 + 8))(v13, v7);
      return 1;
    }

    v27 = sub_1003993D8();
    sub_100004218(0, &qword_1004D5D30);
    v28 = sub_1003995A8();
    (*(v8 + 16))(v11, v13, v7);
    if (os_log_type_enabled(v28, v27))
    {
      v29 = swift_slowAlloc();
      v54 = v29;
      v55 = swift_slowAlloc();
      v56[0] = v55;
      *v29 = 136315138;
      v49 = sub_100398908();
      v31 = v30;
      v32 = *(v8 + 8);
      LODWORD(v52) = v27;
      v32(v11, v7);
      v33 = sub_100005700(v49, v31, v56);

      v34 = v54;
      *(v54 + 1) = v33;
      _os_log_impl(&_mh_execute_header, v28, v52, "Ignore %s", v34, 0xCu);
      sub_100003894(v55);
    }

    else
    {

      v32 = *(v8 + 8);
      v32(v11, v7);
    }

    v46 = v50;
    sub_100397B18();
    sub_10025E2EC(2u);
    (*(v15 + 8))(v46, v14);
    v32(v13, v7);
  }

  else
  {
    if (v20 != enum case for ConversionSignal.standaloneAppOpenSignal(_:))
    {
      result = sub_1003997E8();
      __break(1u);
      return result;
    }

    (*(v15 + 96))(v19, v14);
    v22 = v54;
    v21 = v55;
    (*(v54 + 4))(v6, v19, v55);
    v23 = sub_10025DEC0();
    v56[0] = sub_100398878();
    v56[1] = v24;
    __chkstk_darwin(v56[0]);
    v48 = v56;
    v25 = sub_10025ED1C(sub_100260A34, (&v49 - 4), v23);

    if (v25)
    {
      v22[1](v6, v21);
      return 1;
    }

    v35 = sub_1003993D8();
    sub_100004218(0, &qword_1004D5D30);
    v36 = sub_1003995A8();
    v37 = v52;
    (v22[2])(v52, v6, v21);
    if (os_log_type_enabled(v36, v35))
    {
      v38 = swift_slowAlloc();
      LODWORD(v53) = v35;
      v39 = v38;
      v40 = swift_slowAlloc();
      v56[0] = v40;
      *v39 = 136315138;
      v41 = sub_100398868();
      v43 = v42;
      v44 = v22[1];
      v44(v37, v21);
      v45 = sub_100005700(v41, v43, v56);

      *(v39 + 4) = v45;
      _os_log_impl(&_mh_execute_header, v36, v53, "Ignore %s", v39, 0xCu);
      sub_100003894(v40);

      v44(v6, v21);
    }

    else
    {

      v47 = v22[1];
      v47(v37, v21);
      v47(v6, v21);
    }
  }

  return 0;
}

uint64_t sub_10025FD00(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *, uint64_t), uint64_t a5)
{
  v87 = a5;
  v102 = a4;
  v99 = a2;
  v100 = a3;
  v6 = type metadata accessor for SignpostInterval();
  v96 = *(v6 - 8);
  v7 = __chkstk_darwin(v6 - 8);
  v97 = v8;
  v98 = &v84 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v104 = &v84 - v9;
  v92 = sub_100398BD8();
  v91 = *(v92 - 8);
  __chkstk_darwin(v92);
  v84 = &v84 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100398C18();
  v93 = *(v11 - 8);
  v94 = v11;
  __chkstk_darwin(v11);
  v101 = &v84 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1001E27A8(&qword_1004D7E40);
  v14 = __chkstk_darwin(v13 - 8);
  v16 = &v84 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v90 = &v84 - v17;
  v88 = type metadata accessor for ConversionSignposts();
  v18 = __chkstk_darwin(v88);
  v95 = &v84 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v103 = &v84 - v20;
  v105 = sub_1003986D8();
  v21 = *(v105 - 8);
  v22 = __chkstk_darwin(v105);
  v85 = &v84 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v25 = &v84 - v24;
  v26 = sub_1001E27A8(&qword_1004D6878);
  v27 = *(v26 - 8);
  __chkstk_darwin(v26);
  v29 = &v84 - v28;
  v30 = sub_1003993F8();
  sub_100004218(0, &qword_1004D5D30);
  v31 = sub_1003995A8();
  (*(v27 + 16))(v29, a1, v26);
  v32 = os_log_type_enabled(v31, v30);
  v106 = a1;
  v107 = v26;
  v89 = v16;
  if (v32)
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v108[0] = v34;
    *v33 = 136446210;
    sub_100397B18();
    v35 = sub_1003986A8();
    v37 = v36;
    (*(v21 + 8))(v25, v105);
    (*(v27 + 8))(v29, v107);
    v38 = sub_100005700(v35, v37, v108);

    *(v33 + 4) = v38;
    _os_log_impl(&_mh_execute_header, v31, v30, "Delivered conversion signal %{public}s", v33, 0xCu);
    sub_100003894(v34);
  }

  else
  {

    (*(v27 + 8))(v29, v26);
  }

  v39 = v102;

  sub_100397B18();
  v40 = sub_100398678();
  v42 = v41;
  v43 = *(v21 + 8);
  v86 = v25;
  v44 = v105;
  v43(v25, v105);
  v45 = sub_10025E020();
  v46 = type metadata accessor for DatabaseActionStoreDataProvider();
  v47 = swift_allocObject();
  v47[2] = v39;
  v47[3] = v40;
  v47[4] = v42;
  v47[5] = v45;
  v48 = v85;
  sub_100397B18();
  v49 = sub_100398688();
  LOBYTE(v45) = v50;
  v102 = v43;
  v43(v48, v44);
  v51 = (v21 + 8);
  v52 = v101;
  if (v45)
  {
    v87 = mach_continuous_time();
  }

  else
  {
    v87 = v49;
  }

  v53 = v92;
  v54 = v90;
  v55 = v91;
  (*(v91 + 56))(v90, 1, 1, v92);
  v56 = APPerfLogForCategory();
  sub_100398BF8();
  v57 = v89;
  sub_10000ADB4(v54, v89, &qword_1004D7E40);
  v58 = (*(v55 + 48))(v57, 1, v53);
  v59 = v86;
  if (v58 == 1)
  {
    sub_1002607FC(v57);
    sub_100398C08();
    v60 = v103;
    v44 = v105;
    sub_100398BA8();
    sub_1002607FC(v54);
  }

  else
  {
    sub_1002607FC(v54);
    v61 = *(v55 + 32);
    v62 = v84;
    v61(v84, v57, v53);
    v63 = v53;
    v60 = v103;
    v61((v103 + *(v88 + 20)), v62, v63);
    v52 = v101;
  }

  (*(v93 + 32))(v60, v52, v94);
  sub_100397B18();
  v64 = sub_10025E688();
  v101 = v51;
  v102(v59, v44);
  sub_1002395D8(v64, v87, v104);
  v65 = objc_opt_self();
  sub_100004218(0, &qword_1004D7E48);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();

  v67 = [v65 configurationForClass:ObjCClassFromMetadata];
  objc_opt_self();
  v68 = swift_dynamicCastObjCClass();
  if (!v68)
  {
    swift_unknownObjectRelease();
  }

  v69 = v95;
  sub_100260864(v60, v95, type metadata accessor for ConversionSignposts);
  v108[3] = v46;
  v108[4] = &off_10047C340;
  v108[0] = v47;
  type metadata accessor for ConversionProcessor();
  v70 = swift_allocObject();
  v71 = sub_1001F54B4(v108, v46);
  __chkstk_darwin(v71);
  v73 = (&v84 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v74 + 16))(v73);
  v75 = *v73;
  v70[5] = v46;
  v70[6] = &off_10047C340;
  v70[2] = v75;
  v70[7] = v68;
  sub_1002608CC(v69, v70 + OBJC_IVAR____TtC11Attribution19ConversionProcessor_conversionSignposts, type metadata accessor for ConversionSignposts);
  sub_100003894(v108);
  sub_100397B18();
  v76 = v104;
  v77 = v98;
  sub_100260864(v104, v98, type metadata accessor for SignpostInterval);
  v78 = (*(v96 + 80) + 16) & ~*(v96 + 80);
  v79 = (v97 + v78 + 7) & 0xFFFFFFFFFFFFFFF8;
  v80 = swift_allocObject();
  sub_1002608CC(v77, v80 + v78, type metadata accessor for SignpostInterval);
  v81 = (v80 + v79);
  v82 = v100;
  *v81 = v99;
  v81[1] = v82;

  sub_100271D68(v59, sub_100260934, v80);

  v102(v59, v105);
  sub_1002609D4(v76, type metadata accessor for SignpostInterval);
  return sub_1002609D4(v103, type metadata accessor for ConversionSignposts);
}

uint64_t sub_1002607FC(uint64_t a1)
{
  v2 = sub_1001E27A8(&qword_1004D7E40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100260864(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1002608CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100260934()
{
  v1 = *(type metadata accessor for SignpostInterval() - 8);
  v2 = *(v0 + ((*(v1 + 64) + ((*(v1 + 80) + 16) & ~*(v1 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  v3 = sub_10027C30C();
  return v2(v3);
}

uint64_t sub_1002609D4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100260A34(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_1003999B8() & 1;
  }
}

uint64_t getEnumTagSinglePayload for ConversionMetricResult(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ConversionMetricResult(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_100260BE0()
{
  result = qword_1004D7EB0;
  if (!qword_1004D7EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004D7EB0);
  }

  return result;
}

uint64_t sub_100260C34@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v66 = a3;
  v5 = sub_100398B58();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v68 = v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1001E27A8(&qword_1004D8640);
  v9 = __chkstk_darwin(v8 - 8);
  v63 = v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v69 = v60 - v12;
  __chkstk_darwin(v11);
  v14 = (v60 - v13);
  v76 = *(a2 + 16);
  if (!v76)
  {

    v55 = _swiftEmptyDictionarySingleton;
    if (_swiftEmptyDictionarySingleton[2])
    {
      goto LABEL_37;
    }

    goto LABEL_39;
  }

  v73 = 0;
  v74 = 0;
  v15 = 0;
  v16 = 0;
  v64 = (v6 + 32);
  v65 = (v6 + 48);
  v60[1] = v6 + 40;
  v61 = v60 - v13;
  v67 = v6;
  v62 = (v6 + 56);
  v17 = 0;
  v18 = (a2 + 40);
  v71 = v5;
  v72 = _swiftEmptyDictionarySingleton;
  do
  {
    if (v16 >= *(a2 + 16))
    {
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      result = sub_100399A98();
      __break(1u);
      return result;
    }

    v19 = *(v18 - 1);
    v20 = *v18;
    v21 = v19 == 0x6973736572706D69 && v20 == 0xEC00000064496E6FLL;
    if (v21 || (sub_1003999B8() & 1) != 0)
    {

      sub_1000035B8(a1, a1[3]);
      v17 = sub_100397B98();
      v15 = v22;
      goto LABEL_15;
    }

    v75 = v17;
    if (v19 == 0x61646174654D6461 && v20 == 0xEA00000000006174 || (sub_1003999B8() & 1) != 0)
    {

      sub_1000035B8(a1, a1[3]);
      v73 = sub_100397B98();
      v74 = v23;
LABEL_14:
      v17 = v75;
      goto LABEL_15;
    }

    v70 = v15;
    sub_1000035B8(a1, a1[3]);

    v24 = v69;
    v5 = v71;
    sub_10024E888(v16);
    v25 = v24;
    if ((*v65)(v24, 1, v5) == 1)
    {
      sub_10026132C(v24);
      v26 = v72;
      v27 = sub_1001EC1DC(v19, v20);
      v29 = v28;

      if (v29)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v77 = v26;
        v31 = v26;
        v15 = v70;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_10023CBD0();
          v31 = v77;
        }

        v32 = v63;
        (*(v67 + 32))(v63, *(v31 + 56) + *(v67 + 72) * v27, v5);
        v72 = v31;
        sub_10023C264(v27, v31);
        v33 = 0;
      }

      else
      {
        v33 = 1;
        v32 = v63;
        v15 = v70;
      }

      (*v62)(v32, v33, 1, v5);
      sub_10026132C(v32);
      goto LABEL_14;
    }

    v34 = *v64;
    (*v64)(v68, v25, v5);
    v35 = v72;
    v36 = swift_isUniquelyReferenced_nonNull_native();
    v77 = v35;
    v38 = sub_1001EC1DC(v19, v20);
    v39 = v35[2];
    v40 = (v37 & 1) == 0;
    v41 = v39 + v40;
    if (__OFADD__(v39, v40))
    {
      goto LABEL_43;
    }

    v60[0] = v34;
    if (v35[3] < v41)
    {
      v42 = v37;
      sub_10023B554(v41, v36);
      v43 = sub_1001EC1DC(v19, v20);
      v45 = v44 & 1;
      v37 = v42;
      v46 = v42 & 1;
      v15 = v70;
      if (v46 != v45)
      {
        goto LABEL_45;
      }

      v38 = v43;
      goto LABEL_27;
    }

    v17 = v75;
    v15 = v70;
    if ((v36 & 1) == 0)
    {
      v54 = v37;
      sub_10023CBD0();
      v37 = v54;
LABEL_27:
      v17 = v75;
    }

    if (v37)
    {

      v72 = v77;
      v47 = v77[7] + *(v67 + 72) * v38;
      v5 = v71;
      (*(v67 + 40))(v47, v68, v71);
    }

    else
    {
      v48 = v77;
      v77[(v38 >> 6) + 8] |= 1 << v38;
      v49 = (v48[6] + 16 * v38);
      *v49 = v19;
      v49[1] = v20;
      v50 = v48[7] + *(v67 + 72) * v38;
      v5 = v71;
      (v60[0])(v50, v68, v71);
      v51 = v48[2];
      v52 = __OFADD__(v51, 1);
      v53 = v51 + 1;
      if (v52)
      {
        goto LABEL_44;
      }

      v72 = v48;
      v48[2] = v53;
    }

LABEL_15:
    if (v16 == 0x7FFFFFFF)
    {
      goto LABEL_42;
    }

    ++v16;
    v18 += 2;
  }

  while (v76 != v16);

  v6 = v67;
  v14 = v61;
  v55 = v72;
  if (!v72[2])
  {
LABEL_39:

    v56 = 1;
    goto LABEL_40;
  }

LABEL_37:
  *v14 = v55;
  (*(v6 + 104))(v14, enum case for APJSValue.dictionary(_:), v5);
  v56 = 0;
LABEL_40:
  (*(v6 + 56))(v14, v56, 1, v5);
  v57 = v66;
  sub_100398798();
  v58 = sub_1003987C8();
  (*(*(v58 - 8) + 56))(v57, 0, 1, v58);
  return sub_100003894(a1);
}

uint64_t sub_10026132C(uint64_t a1)
{
  v2 = sub_1001E27A8(&qword_1004D8640);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10026143C()
{
  result = sub_1003981B8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1002614B0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100261500(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_100261554(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_10026156C(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t sub_10026159C()
{
  if (*v0)
  {
    return 0x69746375646F7270;
  }

  else
  {
    return 0x6D706F6C65766564;
  }
}

uint64_t sub_1002615E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6D706F6C65766564 && a2 == 0xEB00000000746E65;
  if (v6 || (sub_1003999B8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x69746375646F7270 && a2 == 0xEA00000000006E6FLL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1003999B8();

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

uint64_t sub_1002616CC(uint64_t a1)
{
  v2 = sub_100263354();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100261708(uint64_t a1)
{
  v2 = sub_100263354();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100261744(uint64_t a1)
{
  v2 = sub_100263450();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100261780(uint64_t a1)
{
  v2 = sub_100263450();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1002617D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7465737361 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1003999B8();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_100261854(uint64_t a1)
{
  v2 = sub_1002633A8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100261890(uint64_t a1)
{
  v2 = sub_1002633A8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1002618CC(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (v3)
  {
    if (v4)
    {
      if (*a1 != *a2 || v3 != v4)
      {
        return sub_1003999B8();
      }

      return 1;
    }

    return 0;
  }

  return !v4;
}

uint64_t sub_100261910(void *a1, uint64_t a2, uint64_t a3)
{
  v21 = a3;
  v19 = a2;
  v4 = sub_1001E27A8(&qword_1004D8020);
  v20 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v16 - v5;
  v7 = sub_1001E27A8(&qword_1004D8028);
  v17 = *(v7 - 8);
  v18 = v7;
  __chkstk_darwin(v7);
  v9 = &v16 - v8;
  v10 = sub_1001E27A8(&qword_1004D8030);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v16 - v12;
  sub_1000035B8(a1, a1[3]);
  sub_100263354();
  v14 = v21;
  sub_100399BF8();
  if (v14)
  {
    LOBYTE(v22) = 1;
    sub_1002633A8();
    sub_100399908();
    v22 = v19;
    v23 = v14;
    sub_1002634A4();
    sub_100399978();
    (*(v20 + 8))(v6, v4);
  }

  else
  {
    LOBYTE(v22) = 0;
    sub_100263450();
    sub_100399908();
    (*(v17 + 8))(v9, v18);
  }

  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_100261C1C(void *a1)
{
  v3 = v1;
  v5 = sub_1001E27A8(&qword_1004D8060);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10[-v7];
  sub_1000035B8(a1, a1[3]);
  sub_1002634F8();
  sub_100399BF8();
  v11 = *v3;
  v10[15] = 0;
  sub_1002635E8();
  sub_100399978();
  if (!v2)
  {
    type metadata accessor for AppSpecifier(0);
    LOBYTE(v11) = 1;
    sub_1003981B8();
    sub_1002635A0(&qword_1004D8070, &type metadata accessor for BundleID);
    sub_100399978();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100261DEC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v25 = sub_1003981B8();
  v22 = *(v25 - 8);
  __chkstk_darwin(v25);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1001E27A8(&qword_1004D8040);
  v24 = *(v26 - 8);
  __chkstk_darwin(v26);
  v7 = &v19 - v6;
  v8 = type metadata accessor for AppSpecifier(0);
  __chkstk_darwin(v8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000035B8(a1, a1[3]);
  sub_1002634F8();
  sub_100399BC8();
  if (v2)
  {
    return sub_100003894(a1);
  }

  v20 = v8;
  v21 = v5;
  v11 = v10;
  v13 = v24;
  v12 = v25;
  v29 = 0;
  sub_10026354C();
  v14 = v26;
  sub_1003998D8();
  v15 = v28;
  v16 = v11;
  *v11 = v27;
  v11[1] = v15;
  v19 = v15;
  LOBYTE(v27) = 1;
  sub_1002635A0(&qword_1004D8058, &type metadata accessor for BundleID);
  v17 = v21;
  sub_1003998D8();
  (*(v13 + 8))(v7, v14);
  (*(v22 + 32))(v16 + *(v20 + 20), v17, v12);
  sub_100263690(v16, v23, type metadata accessor for AppSpecifier);
  sub_100003894(a1);
  return sub_1002636F8(v16, type metadata accessor for AppSpecifier);
}

uint64_t sub_10026213C(void *a1)
{
  v3 = v1;
  v5 = sub_1001E27A8(&qword_1004D8088);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11[-v7];
  sub_1000035B8(a1, a1[3]);
  sub_10026363C();
  sub_100399BF8();
  v9 = v3[1];
  v12 = *v3;
  v13 = v9;
  v11[15] = 0;
  sub_1002634A4();
  sub_100399978();
  if (!v2)
  {
    type metadata accessor for ProductionAppSpecifier(0);
    LOBYTE(v12) = 1;
    sub_1003981B8();
    sub_1002635A0(&qword_1004D8070, &type metadata accessor for BundleID);
    sub_100399978();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_10026230C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v25 = sub_1003981B8();
  v22 = *(v25 - 8);
  __chkstk_darwin(v25);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1001E27A8(&qword_1004D8078);
  v24 = *(v26 - 8);
  __chkstk_darwin(v26);
  v7 = &v19 - v6;
  v8 = type metadata accessor for ProductionAppSpecifier(0);
  __chkstk_darwin(v8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000035B8(a1, a1[3]);
  sub_10026363C();
  sub_100399BC8();
  if (v2)
  {
    return sub_100003894(a1);
  }

  v20 = v8;
  v21 = v5;
  v11 = v10;
  v13 = v24;
  v12 = v25;
  v29 = 0;
  sub_1002633FC();
  v14 = v26;
  sub_1003998D8();
  v15 = v28;
  v16 = v11;
  *v11 = v27;
  v11[1] = v15;
  v19 = v15;
  LOBYTE(v27) = 1;
  sub_1002635A0(&qword_1004D8058, &type metadata accessor for BundleID);
  v17 = v21;
  sub_1003998D8();
  (*(v13 + 8))(v7, v14);
  (*(v22 + 32))(v16 + *(v20 + 20), v17, v12);
  sub_100263690(v16, v23, type metadata accessor for ProductionAppSpecifier);
  sub_100003894(a1);
  return sub_1002636F8(v16, type metadata accessor for ProductionAppSpecifier);
}

uint64_t sub_10026265C()
{
  if (*v0)
  {
    return 0x656C646E7562;
  }

  else
  {
    return 0x6962616C69617661;
  }
}

uint64_t sub_10026269C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6962616C69617661 && a2 == 0xEC0000007974696CLL;
  if (v6 || (sub_1003999B8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x656C646E7562 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1003999B8();

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

uint64_t sub_100262778(uint64_t a1)
{
  v2 = sub_1002634F8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1002627B4(uint64_t a1)
{
  v2 = sub_1002634F8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1002627F0(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (v3)
  {
    if (v4)
    {
      v5 = *a1 == *a2 && v3 == v4;
      if (v5 || (sub_1003999B8() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

    return 0;
  }

  if (v4)
  {
    return 0;
  }

LABEL_8:

  return sub_100398188();
}

void *sub_100262894@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_100262E98(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_10026290C()
{
  if (*v0)
  {
    return 0x656C646E7562;
  }

  else
  {
    return 0x7465737361;
  }
}

uint64_t sub_100262940@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7465737361 && a2 == 0xE500000000000000;
  if (v6 || (sub_1003999B8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x656C646E7562 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1003999B8();

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

uint64_t sub_100262A14(uint64_t a1)
{
  v2 = sub_10026363C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100262A50(uint64_t a1)
{
  v2 = sub_10026363C();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_100262A8C()
{
  sub_100399B58();
  sub_100399018();
  sub_1003981B8();
  sub_1002635A0(&qword_1004D8090, &type metadata accessor for BundleID);
  sub_100398EC8();
  return sub_100399B88();
}

uint64_t sub_100262B34()
{
  sub_100399018();
  sub_1003981B8();
  sub_1002635A0(&qword_1004D8090, &type metadata accessor for BundleID);
  return sub_100398EC8();
}

Swift::Int sub_100262BC0()
{
  sub_100399B58();
  sub_100399018();
  sub_1003981B8();
  sub_1002635A0(&qword_1004D8090, &type metadata accessor for BundleID);
  sub_100398EC8();
  return sub_100399B88();
}

uint64_t sub_100262C64(void *a1, void *a2)
{
  v2 = *a1 == *a2 && a1[1] == a2[1];
  if (!v2 && (sub_1003999B8() & 1) == 0)
  {
    return 0;
  }

  return sub_100398188();
}

uint64_t sub_100262D60()
{
  v1._countAndFlagsBits = 40;
  v1._object = 0xE100000000000000;
  sub_100399068(v1);
  sub_1003997C8();
  v2._countAndFlagsBits = 8236;
  v2._object = 0xE200000000000000;
  sub_100399068(v2);
  sub_1003981B8();
  sub_1003997C8();
  v3._countAndFlagsBits = 41;
  v3._object = 0xE100000000000000;
  sub_100399068(v3);
  return 0;
}

uint64_t sub_100262E30()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 3;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100262E64()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 2;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_100262E98(void *a1)
{
  v25 = sub_1001E27A8(&qword_1004D7FE8);
  v27 = *(v25 - 8);
  __chkstk_darwin(v25);
  v3 = &v25 - v2;
  v4 = sub_1001E27A8(&qword_1004D7FF0);
  v26 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v25 - v5;
  v7 = sub_1001E27A8(&qword_1004D7FF8);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v25 - v9;
  v11 = a1[3];
  v30 = a1;
  v12 = sub_1000035B8(a1, v11);
  sub_100263354();
  v13 = v28;
  sub_100399BC8();
  if (!v13)
  {
    v28 = v8;
    v14 = sub_1003998F8();
    v15 = v7;
    if (*(v14 + 16) == 1)
    {
      if (*(v14 + 32))
      {
        LOBYTE(v29) = 1;
        sub_1002633A8();
        v16 = v3;
        sub_100399858();
        v17 = v28;
        sub_1002633FC();
        v24 = v25;
        sub_1003998D8();
        (*(v27 + 8))(v16, v24);
        (*(v17 + 8))(v10, v15);
        swift_unknownObjectRelease();
        v12 = v29;
      }

      else
      {
        LOBYTE(v29) = 0;
        sub_100263450();
        v21 = v10;
        sub_100399858();
        v22 = v28;
        (*(v26 + 8))(v6, v4);
        (*(v22 + 8))(v21, v7);
        swift_unknownObjectRelease();
        v12 = 0;
      }
    }

    else
    {
      v18 = sub_100399738();
      swift_allocError();
      v20 = v19;
      sub_1001E27A8(&qword_1004D63C0);
      *v20 = &type metadata for AppSpecifier.Availability;
      v12 = v10;
      sub_100399868();
      sub_100399728();
      (*(*(v18 - 8) + 104))(v20, enum case for DecodingError.typeMismatch(_:), v18);
      swift_willThrow();
      (*(v28 + 8))(v10, v7);
      swift_unknownObjectRelease();
    }
  }

  sub_100003894(v30);
  return v12;
}

unint64_t sub_100263354()
{
  result = qword_1004D8000;
  if (!qword_1004D8000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004D8000);
  }

  return result;
}

unint64_t sub_1002633A8()
{
  result = qword_1004D8008;
  if (!qword_1004D8008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004D8008);
  }

  return result;
}

unint64_t sub_1002633FC()
{
  result = qword_1004D8010;
  if (!qword_1004D8010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004D8010);
  }

  return result;
}

unint64_t sub_100263450()
{
  result = qword_1004D8018;
  if (!qword_1004D8018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004D8018);
  }

  return result;
}

unint64_t sub_1002634A4()
{
  result = qword_1004D8038;
  if (!qword_1004D8038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004D8038);
  }

  return result;
}

unint64_t sub_1002634F8()
{
  result = qword_1004D8048;
  if (!qword_1004D8048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004D8048);
  }

  return result;
}

unint64_t sub_10026354C()
{
  result = qword_1004D8050;
  if (!qword_1004D8050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004D8050);
  }

  return result;
}

uint64_t sub_1002635A0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1002635E8()
{
  result = qword_1004D8068;
  if (!qword_1004D8068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004D8068);
  }

  return result;
}

unint64_t sub_10026363C()
{
  result = qword_1004D8080;
  if (!qword_1004D8080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004D8080);
  }

  return result;
}

uint64_t sub_100263690(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1002636F8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1002637AC()
{
  result = qword_1004D8098;
  if (!qword_1004D8098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004D8098);
  }

  return result;
}

unint64_t sub_100263804()
{
  result = qword_1004D80A0;
  if (!qword_1004D80A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004D80A0);
  }

  return result;
}

unint64_t sub_10026385C()
{
  result = qword_1004D80A8;
  if (!qword_1004D80A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004D80A8);
  }

  return result;
}

unint64_t sub_1002638B4()
{
  result = qword_1004D80B0;
  if (!qword_1004D80B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004D80B0);
  }

  return result;
}

unint64_t sub_10026390C()
{
  result = qword_1004D80B8;
  if (!qword_1004D80B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004D80B8);
  }

  return result;
}

unint64_t sub_100263964()
{
  result = qword_1004D80C0;
  if (!qword_1004D80C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004D80C0);
  }

  return result;
}

unint64_t sub_1002639BC()
{
  result = qword_1004D80C8;
  if (!qword_1004D80C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004D80C8);
  }

  return result;
}

unint64_t sub_100263A14()
{
  result = qword_1004D80D0;
  if (!qword_1004D80D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004D80D0);
  }

  return result;
}

unint64_t sub_100263A6C()
{
  result = qword_1004D80D8;
  if (!qword_1004D80D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004D80D8);
  }

  return result;
}

unint64_t sub_100263AC4()
{
  result = qword_1004D80E0;
  if (!qword_1004D80E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004D80E0);
  }

  return result;
}

unint64_t sub_100263B1C()
{
  result = qword_1004D80E8;
  if (!qword_1004D80E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004D80E8);
  }

  return result;
}

unint64_t sub_100263B74()
{
  result = qword_1004D80F0;
  if (!qword_1004D80F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004D80F0);
  }

  return result;
}

unint64_t sub_100263BCC()
{
  result = qword_1004D80F8;
  if (!qword_1004D80F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004D80F8);
  }

  return result;
}

unint64_t sub_100263C24()
{
  result = qword_1004D8100;
  if (!qword_1004D8100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004D8100);
  }

  return result;
}

uint64_t sub_100263C7C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_100263CC4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_100263DF8(uint64_t a1)
{
  sub_100397438(__stack_chk_guard);
  v3 = v2;
  v12 = 0;
  v4 = [swift_getObjCClassFromMetadata() metadataForBundleContainerURL:v2 error:&v12];

  v5 = v12;
  if (v4)
  {
    v6 = sub_1003974E8();
    v7 = *(*(v6 - 8) + 8);
    v8 = v5;
    v7(a1, v6);
  }

  else
  {
    v9 = v12;
    sub_1003973E8();

    swift_willThrow();
    v10 = sub_1003974E8();
    (*(*(v10 - 8) + 8))(a1, v10);
  }

  return v4;
}

id ItunesAppMetaData.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ItunesAppMetaData();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_100264018(uint64_t a1, uint64_t a2, char a3)
{
  v5 = sub_100398F28();

  v10 = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:&v10];

  if (v6)
  {
    v7 = v10;
  }

  else
  {
    v8 = v10;
    sub_1003973E8();

    swift_willThrow();
  }

  return v6;
}

char *sub_1002640F4(char *a1)
{
  if ([objc_opt_self() isAppleInternalInstall] && (v1 = objc_msgSend(objc_opt_self(), "processInfo"), v2 = objc_msgSend(v1, "isRunningTests"), v1, (v2 & 1) == 0) && (v3 = objc_msgSend(objc_allocWithZone(NSUserDefaults), "initWithSuiteName:", APDefaultsBundleID)) != 0)
  {
    v4 = v3;
    v5 = sub_100398F28();
    v6 = [v4 objectForKey:v5];

    if (v6)
    {
      sub_100399648();
      swift_unknownObjectRelease();
    }

    else
    {
      v42 = 0u;
      v43 = 0u;
    }

    v44 = v42;
    v45 = v43;
    if (*(&v43 + 1))
    {
      v8 = swift_dynamicCast();
      if (v8)
      {
        v9 = v40;
      }

      else
      {
        v9 = 0;
      }

      v10 = v8 ^ 1;
    }

    else
    {
      sub_1001ED244(&v44, &qword_1004D5D40);
      v9 = 0;
      v10 = 1;
    }

    v11 = sub_100398F28();
    v12 = [v4 objectForKey:v11];

    if (v12)
    {
      sub_100399648();
      swift_unknownObjectRelease();
    }

    else
    {
      v42 = 0u;
      v43 = 0u;
    }

    v44 = v42;
    v45 = v43;
    if (*(&v43 + 1))
    {
      if (swift_dynamicCast())
      {
        v13 = v40;
      }

      else
      {
        v13 = 2;
      }
    }

    else
    {
      sub_1001ED244(&v44, &qword_1004D5D40);
      v13 = 2;
    }

    v14 = sub_100398F28();
    v15 = [v4 objectForKey:v14];

    if (v15)
    {
      sub_100399648();
      swift_unknownObjectRelease();
    }

    else
    {
      v42 = 0u;
      v43 = 0u;
    }

    v44 = v42;
    v45 = v43;
    if (*(&v43 + 1))
    {
      if (swift_dynamicCast())
      {
        v16 = v40;
      }

      else
      {
        v16 = 2;
      }
    }

    else
    {
      sub_1001ED244(&v44, &qword_1004D5D40);
      v16 = 2;
    }

    if (v13 == 2)
    {
      v17 = v10;
    }

    else
    {
      v17 = 0;
    }

    if (v17 == 1 && v16 == 2)
    {
      v18 = a1;
    }

    else
    {
      v19 = a1[OBJC_IVAR___APItunesAppMetaData_installedByAppStore];
      v20 = a1[OBJC_IVAR___APItunesAppMetaData_testApp];
      if (v10)
      {
        v21 = *&a1[OBJC_IVAR___APItunesAppMetaData_adamId];
        v22 = v21;
      }

      else
      {
        v21 = [objc_allocWithZone(NSNumber) initWithInteger:v9];
        v23 = sub_1003993F8();
        sub_100004218(0, &qword_1004D5D30);
        v24 = sub_1003995A8();
        if (os_log_type_enabled(v24, v23))
        {
          v25 = swift_slowAlloc();
          *v25 = 134349056;
          *(v25 + 4) = v9;
          _os_log_impl(&_mh_execute_header, v24, v23, "Overriding itunesMetaData adamId: %{public}ld", v25, 0xCu);
        }
      }

      if (v13 != 2)
      {
        sub_1003993F8();
        sub_100004218(0, &qword_1004D5D30);
        v26 = sub_1003995A8();
        sub_1001E27A8(&qword_1004D5860);
        v27 = swift_allocObject();
        *(v27 + 16) = xmmword_1003C9930;
        v28 = sub_100206BA0();
        v29 = 0x65736C6166;
        if (v13)
        {
          v29 = 1702195828;
        }

        v30 = 0xE500000000000000;
        *(v27 + 56) = &type metadata for String;
        *(v27 + 64) = v28;
        if (v13)
        {
          v30 = 0xE400000000000000;
        }

        *(v27 + 32) = v29;
        *(v27 + 40) = v30;
        sub_100398B98();

        v20 = v13;
      }

      if (v16 != 2)
      {
        sub_1003993F8();
        sub_100004218(0, &qword_1004D5D30);
        v31 = sub_1003995A8();
        sub_1001E27A8(&qword_1004D5860);
        v32 = swift_allocObject();
        *(v32 + 16) = xmmword_1003C9930;
        v33 = sub_100206BA0();
        v34 = 0x65736C6166;
        if (v16)
        {
          v34 = 1702195828;
        }

        v35 = 0xE500000000000000;
        *(v32 + 56) = &type metadata for String;
        *(v32 + 64) = v33;
        if (v16)
        {
          v35 = 0xE400000000000000;
        }

        *(v32 + 32) = v34;
        *(v32 + 40) = v35;
        sub_100398B98();

        v19 = v16;
      }

      v36 = type metadata accessor for ItunesAppMetaData();
      v37 = objc_allocWithZone(v36);
      *&v37[OBJC_IVAR___APItunesAppMetaData_adamId] = v21;
      v37[OBJC_IVAR___APItunesAppMetaData_installedByAppStore] = v19 & 1;
      v37[OBJC_IVAR___APItunesAppMetaData_testApp] = v20 & 1;
      v41.receiver = v37;
      v41.super_class = v36;
      v38 = v21;
      v18 = objc_msgSendSuper2(&v41, "init");
    }

    return v18;
  }

  else
  {

    return a1;
  }
}

NSObject *sub_100264804(void *a1)
{
  v3 = sub_1003974E8();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v20 - v8;
  v10 = [a1 bundleContainerURL];
  if (v10)
  {
    v11 = v10;
    sub_100397478();

    sub_100004218(0, &qword_1004D8150);
    (*(v4 + 16))(v7, v9, v3);
    v12 = sub_100263DF8(v7);
    if (v1)
    {
      v13 = sub_1003993E8();
      sub_100004218(0, &qword_1004D5D30);
      v14 = sub_1003995A8();
      if (os_log_type_enabled(v14, v13))
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        *v15 = 138543362;
        swift_errorRetain();
        v17 = _swift_stdlib_bridgeErrorToNSError();
        *(v15 + 4) = v17;
        *v16 = v17;
        _os_log_impl(&_mh_execute_header, v14, v13, "Failed to load Store Metadata. %{public}@", v15, 0xCu);
        sub_1001ED244(v16, &qword_1004D8610);
      }

      swift_willThrow();
      (*(v4 + 8))(v9, v3);
    }

    else
    {
      v18 = v12;
      v14 = [v12 itemID];

      (*(v4 + 8))(v9, v3);
    }
  }

  else
  {
    sub_1003993E8();
    sub_100004218(0, &qword_1004D5D30);
    v14 = sub_1003995A8();
    sub_100398B98();

    sub_100264E28();
    swift_allocError();
    swift_willThrow();
  }

  return v14;
}

char *sub_100264B8C(uint64_t a1, uint64_t a2)
{
  objc_allocWithZone(LSApplicationRecord);

  v5 = sub_100264018(a1, a2, 0);
  if (!v2)
  {
    v10 = v5;
    v11 = [v5 iTunesMetadata];
    v12 = [v11 distributorInfo];

    v13 = [v12 distributorID];
    if (!v13)
    {
      v20 = 0;
      v21 = 0;
      v18 = 1;
LABEL_19:
      v24 = type metadata accessor for ItunesAppMetaData();
      v25 = objc_allocWithZone(v24);
      *&v25[OBJC_IVAR___APItunesAppMetaData_adamId] = v21;
      v25[OBJC_IVAR___APItunesAppMetaData_installedByAppStore] = v20;
      v25[OBJC_IVAR___APItunesAppMetaData_testApp] = v18 & 1;
      v28.receiver = v25;
      v28.super_class = v24;
      v26 = objc_msgSendSuper2(&v28, "init");
      v9 = sub_1002640F4(v26);

      return v9;
    }

    v14 = sub_100398F58();
    v16 = v15;

    if (v14 == 0xD000000000000014 && 0x800000010042F900 == v16)
    {
      v18 = 1;
    }

    else
    {
      v18 = sub_1003999B8();
      if (v14 == 0xD000000000000012 && 0x800000010042DFD0 == v16)
      {

LABEL_17:
        v21 = sub_100264804(v10);
        v23 = v21;
        v20 = 1;
        goto LABEL_19;
      }
    }

    v22 = sub_1003999B8();

    if ((v22 & 1) == 0)
    {
      v20 = 0;
      v21 = 0;
      goto LABEL_19;
    }

    goto LABEL_17;
  }

  v6 = type metadata accessor for ItunesAppMetaData();
  v7 = objc_allocWithZone(v6);
  *&v7[OBJC_IVAR___APItunesAppMetaData_adamId] = 0;
  v7[OBJC_IVAR___APItunesAppMetaData_installedByAppStore] = 0;
  v7[OBJC_IVAR___APItunesAppMetaData_testApp] = 1;
  v29.receiver = v7;
  v29.super_class = v6;
  v8 = objc_msgSendSuper2(&v29, "init");
  v9 = sub_1002640F4(v8);

  return v9;
}

unint64_t sub_100264E28()
{
  result = qword_1004D8148;
  if (!qword_1004D8148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004D8148);
  }

  return result;
}

unint64_t sub_100264E90()
{
  result = qword_1004D8158;
  if (!qword_1004D8158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004D8158);
  }

  return result;
}

id sub_100264F44(uint64_t a1)
{
  result = [objc_opt_self() isAppleInternalInstall];
  if (result)
  {
    if (qword_1004D6138 != -1)
    {
      swift_once();
    }

    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v4 = *(Strong + 32);

      sub_100206B54();
      sub_1003995A8();
      sub_100397D38();
      swift_allocObject();
      v5 = sub_100397D28();
    }

    else
    {
      v5 = 0;
    }

    v6 = sub_100240180(v5);
    if (v7)
    {
      v8 = v6;
      v9 = v7;
      sub_1001E27A8(&unk_1004D5A30);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1003EB210;
      *(inited + 32) = 0x726F7272457061;
      *(inited + 40) = 0xE700000000000000;
      v27 = a1;
      sub_1001E27A8(&qword_1004D8288);
      v11 = sub_1003995D8();
      *(inited + 72) = &type metadata for String;
      *(inited + 48) = v11;
      *(inited + 56) = v12;
      *(inited + 80) = sub_100398F58();
      *(inited + 88) = v13;
      sub_1001E27A8(&unk_1004DCD10);
      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_1003C9930;
      *(v14 + 32) = v8;
      *(v14 + 40) = v9;
      *(inited + 120) = sub_1001E27A8(&unk_1004D9A20);
      *(inited + 96) = v14;

      v15 = sub_1002142A8(inited);
      swift_setDeallocating();
      sub_1001E27A8(&unk_1004D5DD0);
      swift_arrayDestroy();
      v16 = sub_1003993D8();
      sub_100206B54();
      v17 = sub_1003995A8();
      if (os_log_type_enabled(v17, v16))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v27 = v19;
        *v18 = 136315138;
        v20 = sub_100005700(v8, v9, &v27);

        *(v18 + 4) = v20;
        _os_log_impl(&_mh_execute_header, v17, v16, "Captured debug data into %s", v18, 0xCu);
        sub_100003894(v19);
      }

      else
      {
      }
    }

    else
    {
      sub_1001E27A8(&unk_1004D5A30);
      v21 = swift_initStackObject();
      *(v21 + 16) = xmmword_1003C9930;
      *(v21 + 32) = 0x726F7272457061;
      *(v21 + 40) = 0xE700000000000000;
      v27 = a1;
      sub_1001E27A8(&qword_1004D8288);
      v22 = sub_1003995D8();
      *(v21 + 72) = &type metadata for String;
      *(v21 + 48) = v22;
      *(v21 + 56) = v23;
      v15 = sub_1002142A8(v21);
      swift_setDeallocating();
      sub_100266884(v21 + 32);
    }

    v24 = sub_100398F28();
    sub_10021324C(v15);

    isa = sub_100398E48().super.isa;

    v26 = sub_100398F28();
    CreateDiagnosticReport();
  }

  return result;
}

uint64_t sub_1002653E0(void *a1)
{
  v3 = v1;
  v5 = sub_1001E27A8(&qword_1004D8270);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11[-v7];
  sub_1000035B8(a1, a1[3]);
  sub_1002666E4();
  sub_100399BF8();
  v11[15] = 0;
  type metadata accessor for SignedAttributionPayloadDTO(0);
  sub_1002667EC(&qword_1004D8278);
  sub_100399978();
  if (!v2)
  {
    v9 = type metadata accessor for AttributionDeliveryWorkerTask(0);
    v11[14] = 1;
    sub_100399988();
    v11[13] = *(v3 + *(v9 + 24));
    v11[12] = 2;
    sub_100266830();
    sub_100399948();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1002655CC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v4 = type metadata accessor for SignedAttributionPayloadDTO(0);
  __chkstk_darwin(v4);
  v19 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1001E27A8(&qword_1004D8250);
  v17 = *(v6 - 8);
  v18 = v6;
  __chkstk_darwin(v6);
  v8 = &v16 - v7;
  v9 = type metadata accessor for AttributionDeliveryWorkerTask(0);
  __chkstk_darwin(v9);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000035B8(a1, a1[3]);
  sub_1002666E4();
  sub_100399BC8();
  if (v2)
  {
    return sub_100003894(a1);
  }

  v12 = v17;
  v13 = v11;
  v23 = 0;
  sub_1002667EC(&qword_1004D8260);
  v14 = v18;
  sub_1003998D8();
  sub_1002668EC(v19, v13, type metadata accessor for SignedAttributionPayloadDTO);
  v22 = 1;
  *(v13 + *(v9 + 20)) = sub_1003998E8();
  v20 = 2;
  sub_100266738();
  sub_1003998A8();
  (*(v12 + 8))(v8, v14);
  *(v13 + *(v9 + 24)) = v21;
  sub_100266A00(v13, v16, type metadata accessor for AttributionDeliveryWorkerTask);
  sub_100003894(a1);
  return sub_10026678C(v13, type metadata accessor for AttributionDeliveryWorkerTask);
}

uint64_t sub_100265924()
{
  v1 = 0x74736F706E676973;
  if (*v0 != 1)
  {
    v1 = 0x656D656761676E65;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x64616F6C796170;
  }
}

uint64_t sub_100265988@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100266A68(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1002659B0(uint64_t a1)
{
  v2 = sub_1002666E4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1002659EC(uint64_t a1)
{
  v2 = sub_1002666E4();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_100265A74(uint64_t a1)
{
  v2 = sub_100397A48();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v3 + 16))(v5, a1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 == enum case for WorkerError.failedToDeserializeTask(_:))
  {
    (*(v3 + 96))(v5, v2);
    v7 = *v5;
    v8 = sub_1003993E8();
    sub_100206B54();
    v9 = sub_1003995A8();
    if (os_log_type_enabled(v9, v8))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v22 = v7;
      v23 = v11;
      *v10 = 136446210;
      sub_1001E27A8(&qword_1004D8288);
      v12 = sub_1003995D8();
      v14 = sub_100005700(v12, v13, &v23);

      *(v10 + 4) = v14;
      _os_log_impl(&_mh_execute_header, v9, v8, "Attribution Delivery: Failed to deserialize task. %{public}s", v10, 0xCu);
      sub_100003894(v11);
    }

    _s11Attribution15DiagnosticErrorC010diagnosticC09errorTypeyAA0bcF0O_tFZ_0(7);
    sub_100264F44(v7);
  }

  else
  {
    v15 = v6;
    v16 = enum case for WorkerError.failedToSerializeTask(_:);
    sub_1003993E8();
    sub_100206B54();
    v17 = sub_1003995A8();
    sub_100398B98();

    if (v15 == v16)
    {
      v18 = sub_100398F28();
      v19 = sub_100398F28();
      CreateDiagnosticReport();

      _s11Attribution15DiagnosticErrorC010diagnosticC09errorTypeyAA0bcF0O_tFZ_0(15);
    }

    else
    {
      v20 = sub_100398F28();
      v21 = sub_100398F28();
      CreateDiagnosticReport();

      _s11Attribution15DiagnosticErrorC010diagnosticC09errorTypeyAA0bcF0O_tFZ_0(21);
      (*(v3 + 8))(v5, v2);
    }
  }
}

void sub_100265E60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v42 = a2;
  v43 = a5;
  v41 = a4;
  v7 = type metadata accessor for AttributionDeliveryWorkerTask(0);
  v40 = *(v7 - 8);
  v8 = *(v40 + 64);
  __chkstk_darwin(v7 - 8);
  v9 = sub_100397748();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1003993D8();
  sub_100206B54();
  v13 = sub_1003995A8();
  sub_100398B98();

  v14 = [objc_opt_self() sharedAPNetworkClient];
  v44 = [v14 temporarySessionForDaemon];

  v15 = [objc_opt_self() apDefaultSharedFormatter];
  sub_100397738();
  isa = sub_100397688().super.isa;
  (*(v10 + 8))(v12, v9);
  v17 = [v15 stringFromDate:isa];

  if (!v17)
  {
    sub_100398F58();
    v17 = sub_100398F28();
  }

  v39 = v17;
  sub_100266A00(a1, &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AttributionDeliveryWorkerTask);
  v18 = (*(v40 + 80) + 16) & ~*(v40 + 80);
  v19 = swift_allocObject();
  sub_1002668EC(&v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18, type metadata accessor for AttributionDeliveryWorkerTask);
  v20 = (v19 + ((v8 + v18 + 7) & 0xFFFFFFFFFFFFFFF8));
  v21 = v43;
  *v20 = v41;
  v20[1] = v21;
  v22 = swift_allocObject();
  v22[2] = v42;
  v22[3] = a3;
  v22[4] = sub_100266954;
  v22[5] = v19;
  type metadata accessor for SignedAttributionPayloadDTO(0);
  v23 = *(a1 + 8);
  v24 = *(a1 + 16);
  v25 = objc_allocWithZone(APHTTPRequest);

  sub_1001EF9F4(v23, v24);

  sub_100397438(v26);
  v28 = v27;
  v29 = sub_100398E48().super.isa;
  v30 = sub_100397538().super.isa;
  sub_1001EFA90(v23, v24);
  aBlock[4] = sub_1002669F4;
  aBlock[5] = v22;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100284FEC;
  aBlock[3] = &unk_10047BC78;
  v31 = _Block_copy(aBlock);

  v32 = [v25 initWithURL:v28 HTTPMethod:2 HTTPHeaders:v29 HTTPBody:v30 serviceName:0 completionHandler:v31];
  _Block_release(v31);

  v33 = sub_100398F28();
  v34 = sub_100398F28();
  [v32 setRequestHeader:v33 withValue:v34];

  v35 = sub_100398F28();
  v36 = v39;
  [v32 setRequestHeader:v35 withValue:v39];

  sub_100254FDC(v32);
  sub_100255240(v32);
  v37 = v44;
  v38 = [v44 sendRequest:v32];
}

uint64_t sub_1002663EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v6 = sub_1003979F8();
  __chkstk_darwin(v6);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + *(type metadata accessor for AttributionDeliveryWorkerTask(0) + 24)))
  {
    sub_100266A00(a1, v8, &type metadata accessor for WorkResult);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v9 = *v8;
      if (v9)
      {
        v10 = 0;
      }

      else
      {
        v10 = 5607;
      }

      v11 = [objc_allocWithZone(type metadata accessor for ODAttributionAnalytics()) init];
      sub_10027D344(v10, v9);
    }

    else
    {
      sub_10026678C(v8, &type metadata accessor for WorkResult);
    }
  }

  return a3(a1);
}

uint64_t sub_100266528(uint64_t a1)
{
  swift_allocObject();
  sub_100003554(a1, v4);
  v2 = sub_100398148();
  sub_100003894(a1);
  return v2;
}

uint64_t sub_100266588()
{
  sub_100398168();

  return swift_deallocClassInstance();
}

void sub_100266608()
{
  type metadata accessor for SignedAttributionPayloadDTO(319);
  if (v0 <= 0x3F)
  {
    sub_100266694();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100266694()
{
  if (!qword_1004D8218)
  {
    v0 = sub_1003995E8();
    if (!v1)
    {
      atomic_store(v0, &qword_1004D8218);
    }
  }
}

unint64_t sub_1002666E4()
{
  result = qword_1004D8258;
  if (!qword_1004D8258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004D8258);
  }

  return result;
}

unint64_t sub_100266738()
{
  result = qword_1004D8268;
  if (!qword_1004D8268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004D8268);
  }

  return result;
}

uint64_t sub_10026678C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1002667EC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SignedAttributionPayloadDTO(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100266830()
{
  result = qword_1004D8280;
  if (!qword_1004D8280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004D8280);
  }

  return result;
}

uint64_t sub_100266884(uint64_t a1)
{
  v2 = sub_1001E27A8(&unk_1004D5DD0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1002668EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100266954(uint64_t a1)
{
  v3 = *(type metadata accessor for AttributionDeliveryWorkerTask(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1002663EC(a1, v1 + v4, v5);
}

uint64_t sub_100266A00(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100266A68(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64616F6C796170 && a2 == 0xE700000000000000;
  if (v4 || (sub_1003999B8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74736F706E676973 && a2 == 0xEA00000000004449 || (sub_1003999B8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656D656761676E65 && a2 == 0xEA0000000000746ELL)
  {

    return 2;
  }

  else
  {
    v6 = sub_1003999B8();

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

unint64_t sub_100266BA4()
{
  result = qword_1004D8290;
  if (!qword_1004D8290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004D8290);
  }

  return result;
}

unint64_t sub_100266BFC()
{
  result = qword_1004D8298;
  if (!qword_1004D8298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004D8298);
  }

  return result;
}

unint64_t sub_100266C54()
{
  result = qword_1004D82A0;
  if (!qword_1004D82A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004D82A0);
  }

  return result;
}

uint64_t AttributionTokenProvider.getTokenGroup(telemetry:completion:)(void *a1, void (*a2)(__int128 *), uint64_t a3)
{
  v4 = v3;
  v51 = a2;
  v7 = type metadata accessor for TokenSignpostInterval(0);
  v47 = *(v7 - 8);
  v8 = __chkstk_darwin(v7 - 8);
  v48 = v9;
  v49 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v41 - v10;
  v12 = type metadata accessor for AttributionSignposts(0);
  __chkstk_darwin(v12 - 8);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[3];
  v16 = a1[4];
  sub_1000035B8(a1, v15);
  (*(v16 + 8))(v15, v16);
  AttributionSignposts.generateToken()(v11);
  v50 = [*(v4 + 56) isReady];
  sub_1000035B8((v4 + 16), *(v4 + 40));
  sub_100397CF8();
  v31 = *(&v60 + 1);
  if (*(&v60 + 1))
  {
    v45 = v11;
    v46 = v59;
    v42 = v60;
    v43 = v61;
    *&v44 = v4;
    sub_1000035B8((v4 + 16), *(v4 + 40));
    sub_1001E27A8(&unk_1004DCD00);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_1003C9930;
    v33 = v46;
    v34 = sub_100397548(0);
    *(v32 + 56) = &type metadata for String;
    *(v32 + 64) = &protocol witness table for String;
    *(v32 + 32) = v34;
    *(v32 + 40) = v35;
    v36 = sub_100397CD8();

    if (v36)
    {
      sub_1001EF9F4(v33, *(&v33 + 1));
      sub_1001EF9F4(v33, *(&v33 + 1));
      sub_1001EF9F4(v33, *(&v33 + 1));
      v37 = *(&v43 + 1);

      v39 = v42;
      v38 = v43;
      sub_10026945C(v33, *(&v33 + 1), v42, v31);
      v40 = 0;
      LOBYTE(v59) = 0;
      v67 = v46;
      v66 = v46;
      LOBYTE(v68) = 0;
      *(&v68 + 1) = v39;
      *v69 = v31;
      *&v69[8] = v46;
      v69[24] = 1;
      *&v70 = v38;
      *(&v70 + 1) = v37;
      v71 = 0;
    }

    else
    {
      sub_10026945C(v33, *(&v33 + 1), v42, v31);
      v40 = 1;
      LOBYTE(v59) = 1;
      LOBYTE(v66) = 1;
      v71 = 1;
    }

    v11 = v45;
  }

  else
  {
    v40 = 1;
    LOBYTE(v59) = 1;
    LOBYTE(v66) = 0;
    v71 = 1;
  }

  v17 = sub_10024D8E8();
  if ((v18 & 1) == 0)
  {
    v19 = v17;
    DWORD2(v43) = sub_1003993D8();
    sub_100206B54();
    v45 = "";
    *&v46 = a3;
    v20 = sub_1003995A8();
    sub_1001E27A8(&qword_1004D5860);
    v21 = swift_allocObject();
    v44 = xmmword_1003C9930;
    *(v21 + 16) = xmmword_1003C9930;
    *(v21 + 56) = &type metadata for Int;
    *(v21 + 64) = &protocol witness table for Int;
    *(v21 + 32) = v19;
    sub_100398B98();

    [objc_opt_self() sleepForTimeInterval:v19];
    sub_1003993D8();
    a3 = v46;
    v22 = sub_1003995A8();
    v23 = swift_allocObject();
    *(v23 + 16) = v44;
    *(v23 + 56) = &type metadata for Int;
    *(v23 + 64) = &protocol witness table for Int;
    *(v23 + 32) = v19;
    sub_100398B98();

    v55 = v68;
    v56 = *v69;
    v57 = *&v69[16];
    v58 = v70;
    v53 = v66;
    v54 = v67;
    if ((v71 & 1) == 0)
    {
      goto LABEL_4;
    }

LABEL_6:
    v24 = v49;
    sub_10026922C(v11, v49);
    v25 = (*(v47 + 80) + 16) & ~*(v47 + 80);
    v26 = v25 + v48;
    v27 = (v25 + v48) & 0xFFFFFFFFFFFFFFF8;
    v28 = swift_allocObject();
    sub_100269290(v24, v28 + v25);
    *(v28 + v26) = v50;
    v29 = v28 + v27;
    *(v29 + 8) = v51;
    *(v29 + 16) = a3;

    sub_1002686FC(sub_1002692F4);

    goto LABEL_7;
  }

  v55 = v68;
  v56 = *v69;
  v57 = *&v69[16];
  v58 = v70;
  v53 = v66;
  v54 = v67;
  if (v40)
  {
    goto LABEL_6;
  }

LABEL_4:
  sub_100279F1C(1, v50);
  v62 = v56;
  v63 = v57;
  v64 = v58;
  v59 = v53;
  v60 = v54;
  v61 = v55;
  v52 = 0;
  v65 = 0;
  v51(&v59);
  sub_1002693F4(&v66);
LABEL_7:
  sub_100269394(v11, type metadata accessor for TokenSignpostInterval);
  return sub_100269394(v14, type metadata accessor for AttributionSignposts);
}

uint64_t sub_100267384(uint64_t a1, uint64_t a2, int a3, uint64_t (*a4)(char *))
{
  sub_100279F1C(0, a3);
  if (*(a1 + 96))
  {
    v8 = 1;
    v14 = 1;
  }

  else
  {
    v6 = *a1;
    v11 = *(a1 + 33);
    v12 = *(a1 + 49);
    *v13 = *(a1 + 65);
    *&v13[15] = *(a1 + 80);
    v9 = *(a1 + 1);
    v10 = *(a1 + 17);
    v8 = v6;
    v14 = 0;
  }

  return a4(&v8);
}

uint64_t sub_100267458()
{
  v1 = *(v0 + 256);
  sub_1003993D8();
  *(v0 + 264) = sub_100206B54();
  v2 = sub_1003995A8();
  sub_100398B98();

  sub_1000035B8((v1 + 16), *(v1 + 40));
  v3 = sub_100397CF8();
  if (*(v0 + 152))
  {
    v4 = 0;
    goto LABEL_4;
  }

  v4 = *(v0 + 144);
  if (v4 <= 4)
  {
LABEL_4:
    v5 = __OFSUB__(5, v4);
    v6 = 5 - v4;
    *(v0 + 272) = v6;
    if (v5)
    {
      __break(1u);
    }

    else if ((v6 & 0x8000000000000000) == 0)
    {
      v18 = *(*(v0 + 256) + 56);
      *(v0 + 280) = v18;
      *(v0 + 288) = 0;
      sub_1002898B0(v0 + 144);
      v7 = *(v0 + 144);
      v8 = *(v0 + 152);
      *(v0 + 312) = v7;
      *(v0 + 320) = v8;
      v9 = *(v0 + 160);
      v10 = *(v0 + 168);
      v11 = *(v0 + 176);
      *(v0 + 328) = v9;
      *(v0 + 336) = v10;
      v12 = *(v0 + 184);
      *(v0 + 344) = v11;
      *(v0 + 352) = v12;
      sub_1001EF9F4(v7, v8);
      sub_1001EF9F4(v9, v10);
      sub_1001EF9F4(v11, v12);
      sub_1001EFA90(v9, v10);
      sub_1001EFA90(v7, v8);
      isa = sub_100397538().super.isa;
      *(v0 + 360) = isa;
      sub_1001EFA90(v11, v12);
      *(v0 + 16) = v0;
      *(v0 + 56) = v0 + 232;
      *(v0 + 24) = sub_100267790;
      v14 = swift_continuation_init();
      v15 = sub_1001E27A8(&qword_1004D82B0);
      *(v0 + 368) = v15;
      *(v0 + 200) = v15;
      *(v0 + 144) = _NSConcreteStackBlock;
      *(v0 + 152) = 1107296256;
      *(v0 + 160) = sub_100268614;
      *(v0 + 168) = &unk_10047BD58;
      *(v0 + 176) = v14;
      [v18 signatureForData:isa completion:v0 + 144];
      v3 = v0 + 16;

      return _swift_continuation_await(v3);
    }

    __break(1u);
    return _swift_continuation_await(v3);
  }

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_100267790()
{
  v1 = *(*v0 + 48);
  *(*v0 + 376) = v1;
  if (v1)
  {
    v2 = sub_100267F48;
  }

  else
  {
    v2 = sub_1002678A0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002678A0()
{
  v1 = *(v0 + 360);
  v11 = *(v0 + 368);
  v3 = *(v0 + 344);
  v2 = *(v0 + 352);
  v5 = *(v0 + 328);
  v4 = *(v0 + 336);
  v7 = *(v0 + 312);
  v6 = *(v0 + 320);
  v12 = *(v0 + 280);
  *(v0 + 384) = *(v0 + 232);

  sub_1001EF9F4(v7, v6);
  sub_1001EF9F4(v5, v4);
  sub_1001EF9F4(v3, v2);
  sub_1001EFA90(v3, v2);
  sub_1001EFA90(v7, v6);
  isa = sub_100397538().super.isa;
  *(v0 + 400) = isa;
  sub_1001EFA90(v5, v4);
  *(v0 + 80) = v0;
  *(v0 + 120) = v0 + 232;
  *(v0 + 88) = sub_100267A40;
  v9 = swift_continuation_init();
  *(v0 + 200) = v11;
  *(v0 + 144) = _NSConcreteStackBlock;
  *(v0 + 152) = 1107296256;
  *(v0 + 160) = sub_100268614;
  *(v0 + 168) = &unk_10047BD80;
  *(v0 + 176) = v9;
  [v12 signatureForData:isa completion:?];

  return _swift_continuation_await(v0 + 80);
}

uint64_t sub_100267A40()
{
  v1 = *(*v0 + 112);
  *(*v0 + 408) = v1;
  if (v1)
  {
    v2 = sub_1002682AC;
  }

  else
  {
    v2 = sub_100267B50;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100267B50()
{
  v1 = v0;
  v3 = *(v0 + 232);
  v2 = v0 + 232;
  v35 = *(v2 + 152);
  v36 = *(v2 + 160);
  v5 = *(v2 + 112);
  v4 = *(v2 + 120);
  v6 = *(v2 + 96);
  v7 = *(v2 + 104);
  v8 = *(v2 + 80);
  v9 = *(v2 + 88);
  v33 = v9;
  v30 = *(v2 + 24);
  v10 = *(v2 + 8);

  sub_1001EF9F4(v8, v9);
  v34 = v6;
  sub_1001EF9F4(v6, v7);
  sub_1001EF9F4(v5, v4);
  sub_1001EFA90(v5, v4);
  sub_1001EFA90(v6, v7);
  v32 = sub_100397548(0);
  v12 = v11;
  v31 = sub_100397548(0);
  v14 = v13;
  sub_1000035B8((v30 + 16), *(v30 + 40));
  sub_1001E27A8(&unk_1004DCD00);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1003C9260;

  v16 = sub_100397548(0);
  *(v15 + 56) = &type metadata for String;
  *(v15 + 64) = &protocol witness table for String;
  *(v15 + 32) = v16;
  *(v15 + 40) = v17;
  *(v15 + 96) = &type metadata for String;
  *(v15 + 104) = &protocol witness table for String;
  *(v15 + 72) = v32;
  *(v15 + 80) = v12;
  *(v15 + 136) = &type metadata for String;
  *(v15 + 144) = &protocol witness table for String;
  *(v15 + 112) = v31;
  *(v15 + 120) = v14;
  sub_100397CD8();

  sub_1001EFA90(v8, v33);
  sub_1001EFA90(v34, v7);
  sub_1001EFA90(v5, v4);
  sub_1001EFA90(v8, v33);

  sub_1001EFA90(v3, v10);
  sub_1001EFA90(v35, v36);
  v18 = *(v2 + 56) + 1;
  if (v18 == *(v2 + 40))
  {
    v19 = *(v1 + 8);

    return v19();
  }

  else
  {
    *(v1 + 296) = *(v1 + 384);
    *(v1 + 288) = v18;
    v37 = *(v1 + 280);
    sub_1002898B0(v1 + 144);
    v21 = *(v1 + 144);
    v22 = *(v1 + 152);
    *(v1 + 312) = v21;
    *(v1 + 320) = v22;
    v23 = *(v1 + 160);
    v24 = *(v1 + 168);
    v25 = *(v1 + 176);
    *(v1 + 328) = v23;
    *(v1 + 336) = v24;
    v26 = *(v1 + 184);
    *(v1 + 344) = v25;
    *(v1 + 352) = v26;
    sub_1001EF9F4(v21, v22);
    sub_1001EF9F4(v23, v24);
    sub_1001EF9F4(v25, v26);
    sub_1001EFA90(v23, v24);
    sub_1001EFA90(v21, v22);
    isa = sub_100397538().super.isa;
    *(v1 + 360) = isa;
    sub_1001EFA90(v25, v26);
    *(v1 + 16) = v1;
    *(v1 + 56) = v2;
    *(v1 + 24) = sub_100267790;
    v28 = swift_continuation_init();
    v29 = sub_1001E27A8(&qword_1004D82B0);
    *(v1 + 368) = v29;
    *(v1 + 200) = v29;
    *(v1 + 144) = _NSConcreteStackBlock;
    *(v1 + 152) = 1107296256;
    *(v1 + 160) = sub_100268614;
    *(v1 + 168) = &unk_10047BD58;
    *(v1 + 176) = v28;
    [v37 signatureForData:isa completion:v1 + 144];

    return _swift_continuation_await(v1 + 16);
  }
}

uint64_t sub_100267F48()
{
  v1 = v0[45];
  swift_willThrow();

  v2 = v0[47];
  v23 = v0[37];
  v24 = v0[38];
  v26 = v0[43];
  v27 = v0[44];
  v3 = v0[41];
  v25 = v0[42];
  v4 = v0[39];
  v5 = v0[40];
  sub_1003993E8();
  v6 = sub_1003995A8();
  sub_1001E27A8(&qword_1004D5860);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1003C9930;
  swift_getErrorValue();
  v8 = sub_100399AC8();
  v10 = v9;
  *(v7 + 56) = &type metadata for String;
  *(v7 + 64) = sub_100206BA0();
  *(v7 + 32) = v8;
  *(v7 + 40) = v10;
  sub_100398B98();
  sub_1001EFA90(v4, v5);
  sub_1001EFA90(v3, v25);
  sub_1001EFA90(v26, v27);

  if (!v2)
  {
    sub_1001EFA90(v23, v24);
  }

  v11 = v0[36] + 1;
  if (v11 == v0[34])
  {
    v12 = v0[1];

    return v12();
  }

  else
  {
    v0[37] = v23;
    v0[38] = v24;
    v0[36] = v11;
    v28 = v0[35];
    sub_1002898B0((v0 + 18));
    v14 = v0[18];
    v15 = v0[19];
    v0[39] = v14;
    v0[40] = v15;
    v16 = v0[20];
    v17 = v0[21];
    v18 = v0[22];
    v0[41] = v16;
    v0[42] = v17;
    v19 = v0[23];
    v0[43] = v18;
    v0[44] = v19;
    sub_1001EF9F4(v14, v15);
    sub_1001EF9F4(v16, v17);
    sub_1001EF9F4(v18, v19);
    sub_1001EFA90(v16, v17);
    sub_1001EFA90(v14, v15);
    isa = sub_100397538().super.isa;
    v0[45] = isa;
    sub_1001EFA90(v18, v19);
    v0[2] = v0;
    v0[7] = v0 + 29;
    v0[3] = sub_100267790;
    v21 = swift_continuation_init();
    v22 = sub_1001E27A8(&qword_1004D82B0);
    v0[46] = v22;
    v0[25] = v22;
    v0[18] = _NSConcreteStackBlock;
    v0[19] = 1107296256;
    v0[20] = sub_100268614;
    v0[21] = &unk_10047BD58;
    v0[22] = v21;
    [v28 signatureForData:isa completion:v0 + 18];

    return _swift_continuation_await(v0 + 2);
  }
}

uint64_t sub_1002682AC()
{
  v1 = v0[50];
  swift_willThrow();

  v22 = v0[48];
  v23 = v0[49];
  v26 = v0[44];
  v27 = v0[47];
  v2 = v0[41];
  v24 = v0[42];
  v25 = v0[43];
  v3 = v0[39];
  v4 = v0[40];
  sub_1003993E8();
  v5 = sub_1003995A8();
  sub_1001E27A8(&qword_1004D5860);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1003C9930;
  swift_getErrorValue();
  v7 = sub_100399AC8();
  v9 = v8;
  *(v6 + 56) = &type metadata for String;
  *(v6 + 64) = sub_100206BA0();
  *(v6 + 32) = v7;
  *(v6 + 40) = v9;
  sub_100398B98();
  sub_1001EFA90(v3, v4);
  sub_1001EFA90(v2, v24);
  sub_1001EFA90(v25, v26);

  if (!v27)
  {
    sub_1001EFA90(v22, v23);
  }

  v10 = v0[36] + 1;
  if (v10 == v0[34])
  {
    v11 = v0[1];

    return v11();
  }

  else
  {
    v0[37] = v22;
    v0[38] = v23;
    v0[36] = v10;
    v28 = v0[35];
    sub_1002898B0((v0 + 18));
    v13 = v0[18];
    v14 = v0[19];
    v0[39] = v13;
    v0[40] = v14;
    v15 = v0[20];
    v16 = v0[21];
    v17 = v0[22];
    v0[41] = v15;
    v0[42] = v16;
    v18 = v0[23];
    v0[43] = v17;
    v0[44] = v18;
    sub_1001EF9F4(v13, v14);
    sub_1001EF9F4(v15, v16);
    sub_1001EF9F4(v17, v18);
    sub_1001EFA90(v15, v16);
    sub_1001EFA90(v13, v14);
    isa = sub_100397538().super.isa;
    v0[45] = isa;
    sub_1001EFA90(v17, v18);
    v0[2] = v0;
    v0[7] = v0 + 29;
    v0[3] = sub_100267790;
    v20 = swift_continuation_init();
    v21 = sub_1001E27A8(&qword_1004D82B0);
    v0[46] = v21;
    v0[25] = v21;
    v0[18] = _NSConcreteStackBlock;
    v0[19] = 1107296256;
    v0[20] = sub_100268614;
    v0[21] = &unk_10047BD58;
    v0[22] = v20;
    [v28 signatureForData:isa completion:v0 + 18];

    return _swift_continuation_await(v0 + 2);
  }
}

uint64_t sub_100268614(uint64_t a1, void *a2, void *a3)
{
  v5 = *sub_1000035B8((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_1001E27A8(&qword_1004D4818);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return _swift_continuation_throwingResumeWithError(v5, v6);
  }

  else
  {
    v9 = a2;
    v10 = sub_100397558();
    v12 = v11;

    v13 = *(*(v5 + 64) + 40);
    *v13 = v10;
    v13[1] = v12;

    return _swift_continuation_throwingResume(v5);
  }
}

uint64_t sub_1002686FC(void (*a1)(_BYTE *))
{
  v2 = v1;
  sub_1002898B0(v64);
  v58 = *v64;
  v3 = *&v64[16];
  v4 = *&v64[32];
  if (sub_10024DA5C())
  {
    sub_1003993D8();
    sub_100206B54();
    v5 = sub_1003995A8();
    sub_100398B98();

    sub_100269534();
    swift_allocError();
    *v6 = 0;
    goto LABEL_7;
  }

  v7 = *(v1 + 56);
  sub_1001EF9F4(v58, *(&v58 + 1));
  sub_1001EF9F4(v3, *(&v3 + 1));
  sub_1001EF9F4(v4, *(&v4 + 1));
  sub_1001EFA90(v3, *(&v3 + 1));
  sub_1001EFA90(v58, *(&v58 + 1));
  isa = sub_100397538().super.isa;
  sub_1001EFA90(v4, *(&v4 + 1));
  *v64 = 0;
  v9 = [v7 signatureForData:isa error:v64];

  v10 = *v64;
  if (!v9)
  {
    v33 = v10;
    sub_1003973E8();

LABEL_7:
    swift_willThrow();
    v56 = 0;
    if (*(v2 + 64))
    {
      goto LABEL_8;
    }

LABEL_11:
    sub_1003993E8();
    sub_100206B54();
    v45 = sub_1003995A8();
    sub_1001E27A8(&qword_1004D5860);
    v46 = swift_allocObject();
    *(v46 + 16) = xmmword_1003C9930;
    swift_getErrorValue();
    v47 = sub_100399AC8();
    v49 = v48;
    *(v46 + 56) = &type metadata for String;
    *(v46 + 64) = sub_100206BA0();
    *(v46 + 32) = v47;
    *(v46 + 40) = v49;
    sub_100398B98();

    *&v64[33] = v62;
    *&v64[49] = *v63;
    *&v64[65] = *&v63[16];
    *&v64[80] = *&v63[31];
    *&v64[1] = v60;
    v59[0] = 1;
    v64[0] = 1;
    *&v64[17] = v61;
    v65 = 1;
    a1(v64);

    sub_1001EFA90(v58, *(&v58 + 1));
    sub_1001EFA90(v3, *(&v3 + 1));
    result = sub_1001EFA90(v4, *(&v4 + 1));
    if ((v56 & 1) == 0)
    {
      return result;
    }

    goto LABEL_12;
  }

  v11 = sub_100397558();
  v53 = v12;
  v54 = v11;

  sub_1001EF9F4(v58, *(&v58 + 1));
  sub_1001EF9F4(v3, *(&v3 + 1));
  sub_1001EF9F4(v4, *(&v4 + 1));
  sub_1001EFA90(v4, *(&v4 + 1));
  sub_1001EFA90(v58, *(&v58 + 1));
  v13 = sub_100397538().super.isa;
  sub_1001EFA90(v3, *(&v3 + 1));
  *v64 = 0;
  v14 = [v7 signatureForData:v13 error:v64];

  if (v14)
  {
    v15 = *v64;
    v16 = sub_100397558();
    v18 = v17;

    sub_1001EF9F4(v58, *(&v58 + 1));
    sub_1001EF9F4(v3, *(&v3 + 1));
    sub_1001EF9F4(v4, *(&v4 + 1));
    sub_1001EFA90(v4, *(&v4 + 1));
    sub_1001EFA90(v3, *(&v3 + 1));
    v60 = v3;
    *&v64[24] = &type metadata for Data;
    *&v64[32] = &protocol witness table for Data;
    v55 = v16;
    *v64 = v16;
    *&v64[8] = v18;
    v19 = v18;
    v52 = v18;
    v20 = sub_1000035B8(v64, &type metadata for Data);
    v21 = *v20;
    v22 = v20[1];
    sub_1001EF9F4(v3, *(&v3 + 1));
    sub_1001EF9F4(v16, v19);
    sub_10025984C(v21, v22);
    sub_100003894(v64);
    v23 = sub_100397548(0);
    v50 = v24;
    v51 = v23;
    sub_1001EFA90(v3, *(&v3 + 1));
    sub_1001EF9F4(v58, *(&v58 + 1));
    sub_1001EF9F4(v3, *(&v3 + 1));
    sub_1001EF9F4(v4, *(&v4 + 1));
    sub_1001EFA90(v4, *(&v4 + 1));
    sub_1001EFA90(v3, *(&v3 + 1));
    v60 = v4;
    *&v64[24] = &type metadata for Data;
    *&v64[32] = &protocol witness table for Data;
    *v64 = v54;
    *&v64[8] = v53;
    v25 = sub_1000035B8(v64, &type metadata for Data);
    v26 = *v25;
    v27 = v25[1];
    sub_1001EF9F4(v4, *(&v4 + 1));
    sub_1001EF9F4(v54, v53);
    sub_10025984C(v26, v27);
    sub_100003894(v64);
    v28 = sub_100397548(0);
    v30 = v29;
    sub_1001EFA90(v4, *(&v4 + 1));
    sub_1001EF9F4(v58, *(&v58 + 1));
    sub_1001EF9F4(v3, *(&v3 + 1));
    sub_1001EF9F4(v4, *(&v4 + 1));
    sub_1001EFA90(v4, *(&v4 + 1));
    sub_1001EFA90(v3, *(&v3 + 1));
    v60 = v58;
    v61 = v58;
    LOBYTE(v62) = 0;
    *(&v62 + 1) = v28;
    *v63 = v30;
    *&v63[8] = v58;
    v63[24] = 1;
    *&v63[32] = v51;
    *&v63[40] = v50;
    *&v64[32] = v62;
    *&v64[48] = *v63;
    *&v64[64] = *&v63[16];
    *&v64[80] = *&v63[32];
    *v64 = v58;
    *&v64[16] = v58;
    v65 = 0;
    sub_100245FC8(&v60, v59);
    a1(v64);
    sub_100245D8C(&v60);
    sub_100245D8C(&v60);
    sub_1001EFA90(v58, *(&v58 + 1));
    sub_1001EFA90(v3, *(&v3 + 1));
    sub_1001EFA90(v4, *(&v4 + 1));
    sub_1001EFA90(v55, v52);
    v31 = v54;
    v32 = v53;
    return sub_1001EFA90(v31, v32);
  }

  v44 = *v64;
  sub_1003973E8();

  swift_willThrow();
  v56 = 1;
  if ((*(v2 + 64) & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_8:
  sub_1003993E8();
  sub_100206B54();
  v34 = sub_1003995A8();
  sub_1001E27A8(&qword_1004D5860);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_1003C9930;
  swift_getErrorValue();
  v36 = sub_100399AC8();
  v38 = v37;
  *(v35 + 56) = &type metadata for String;
  *(v35 + 64) = sub_100206BA0();
  *(v35 + 32) = v36;
  *(v35 + 40) = v38;
  sub_100398B98();

  sub_1001EF9F4(v58, *(&v58 + 1));
  sub_1001EF9F4(v3, *(&v3 + 1));
  sub_1001EF9F4(v4, *(&v4 + 1));
  sub_1001EFA90(v4, *(&v4 + 1));
  sub_1001EFA90(v3, *(&v3 + 1));
  sub_1001EF9F4(v58, *(&v58 + 1));
  sub_1001EF9F4(v3, *(&v3 + 1));
  sub_1001EF9F4(v4, *(&v4 + 1));
  sub_1001EFA90(v4, *(&v4 + 1));
  sub_1001EFA90(v3, *(&v3 + 1));
  sub_1001EF9F4(v58, *(&v58 + 1));
  sub_1001EF9F4(v3, *(&v3 + 1));
  sub_1001EF9F4(v4, *(&v4 + 1));
  sub_1001EFA90(v4, *(&v4 + 1));
  sub_1001EFA90(v3, *(&v3 + 1));
  v60 = v58;
  v61 = v58;
  LOBYTE(v62) = 0;
  *(&v62 + 1) = 0x4F64555354355556;
  *v63 = 0xEC0000003D515552;
  *&v63[8] = v58;
  v63[24] = 1;
  strcpy(&v63[32], "VU5TSUdORUQ=");
  v63[45] = 0;
  *&v63[46] = -5120;
  v39 = objc_allocWithZone(type metadata accessor for ODAttributionAnalytics());
  sub_1001EF9F4(v58, *(&v58 + 1));

  sub_1001EF9F4(v58, *(&v58 + 1));

  v40 = [v39 init];
  sub_10024BCE8();
  v41 = swift_allocError();
  *v42 = 5600;
  sub_10027CFC0(v41);

  *&v64[32] = v62;
  *&v64[48] = *v63;
  *&v64[64] = *&v63[16];
  *&v64[80] = *&v63[32];
  *v64 = v60;
  *&v64[16] = v61;
  v65 = 0;
  sub_100245FC8(&v60, v59);
  a1(v64);

  sub_1001EFA90(v58, *(&v58 + 1));
  sub_1001EFA90(v3, *(&v3 + 1));
  sub_1001EFA90(v4, *(&v4 + 1));
  sub_100245D8C(&v60);
  sub_100245D8C(&v60);
  sub_1001EFA90(v58, *(&v58 + 1));

  sub_1001EFA90(v58, *(&v58 + 1));

  if (v56)
  {
LABEL_12:
    v32 = v53;
    v31 = v54;
    return sub_1001EFA90(v31, v32);
  }

  return result;
}

uint64_t AttributionTokenProvider.deinit()
{
  sub_100003894(v0 + 16);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t AttributionTokenProvider.__deallocating_deinit()
{
  sub_100003894(v0 + 16);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_100269180()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100005C50;

  return AttributionTokenProvider.refillTokenGroups()();
}

uint64_t sub_10026922C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TokenSignpostInterval(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100269290(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TokenSignpostInterval(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002692F4(uint64_t a1)
{
  v3 = *(type metadata accessor for TokenSignpostInterval(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = *(v1 + v5);
  v7 = *(v1 + (v5 & 0xFFFFFFFFFFFFFFF8) + 8);

  return sub_100267384(a1, v1 + v4, v6, v7);
}

uint64_t sub_100269394(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1002693F4(uint64_t a1)
{
  v2 = sub_1001E27A8(&qword_1004D82A8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10026945C(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    sub_1001EFA90(result, a2);
  }

  return result;
}

unint64_t sub_1002694E0()
{
  result = qword_1004D8388;
  if (!qword_1004D8388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004D8388);
  }

  return result;
}

unint64_t sub_100269534()
{
  result = qword_1004D8390;
  if (!qword_1004D8390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004D8390);
  }

  return result;
}

unint64_t sub_10026959C()
{
  result = qword_1004D8398;
  if (!qword_1004D8398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004D8398);
  }

  return result;
}

unint64_t sub_100269608(uint64_t a1, unint64_t a2)
{
  v2 = 48;
  if (a2)
  {
    v2 = a1;
    result = a2;
  }

  else
  {
    result = 0xE100000000000000;
  }

  v4 = HIBYTE(result) & 0xF;
  v5 = v2 & 0xFFFFFFFFFFFFLL;
  if ((result & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(result) & 0xF;
  }

  else
  {
    v6 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6)
  {

    return 0;
  }

  if ((result & 0x1000000000000000) != 0)
  {
    v10 = sub_100246BA8(v2, result, 10);
    v26 = v25;

    if ((v26 & 1) == 0)
    {
      return v10;
    }

    return 0;
  }

  if ((result & 0x2000000000000000) == 0)
  {
    if ((v2 & 0x1000000000000000) != 0)
    {
      v7 = ((result & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v27 = result;
      v7 = sub_100399768();
      result = v27;
    }

    v8 = *v7;
    if (v8 == 43)
    {
      if (v5 >= 1)
      {
        v16 = v5 - 1;
        if (v5 != 1)
        {
          v10 = 0;
          if (!v7)
          {
            goto LABEL_67;
          }

          v17 = v7 + 1;
          while (1)
          {
            v18 = *v17 - 48;
            if (v18 > 9)
            {
              break;
            }

            if (!is_mul_ok(v10, 0xAuLL))
            {
              break;
            }

            v13 = __CFADD__(10 * v10, v18);
            v10 = 10 * v10 + v18;
            if (v13)
            {
              break;
            }

            ++v17;
            if (!--v16)
            {
              goto LABEL_65;
            }
          }
        }

        goto LABEL_66;
      }

      goto LABEL_76;
    }

    if (v8 == 45)
    {
      if (v5 >= 1)
      {
        v9 = v5 - 1;
        if (v5 != 1)
        {
          v10 = 0;
          if (!v7)
          {
            goto LABEL_67;
          }

          v11 = v7 + 1;
          while (1)
          {
            v12 = *v11 - 48;
            if (v12 > 9)
            {
              break;
            }

            if (!is_mul_ok(v10, 0xAuLL))
            {
              break;
            }

            v13 = 10 * v10 >= v12;
            v10 = 10 * v10 - v12;
            if (!v13)
            {
              break;
            }

            ++v11;
            if (!--v9)
            {
              goto LABEL_65;
            }
          }
        }

        goto LABEL_66;
      }

      __break(1u);
      goto LABEL_75;
    }

    if (v5)
    {
      v10 = 0;
      if (!v7)
      {
        goto LABEL_67;
      }

      while (1)
      {
        v21 = *v7 - 48;
        if (v21 > 9)
        {
          break;
        }

        if (!is_mul_ok(v10, 0xAuLL))
        {
          break;
        }

        v13 = __CFADD__(10 * v10, v21);
        v10 = 10 * v10 + v21;
        if (v13)
        {
          break;
        }

        ++v7;
        if (!--v5)
        {
          goto LABEL_65;
        }
      }
    }

    goto LABEL_66;
  }

  v28[0] = v2;
  v28[1] = result & 0xFFFFFFFFFFFFFFLL;
  if (v2 != 43)
  {
    if (v2 == 45)
    {
      if (!v4)
      {
LABEL_75:
        __break(1u);
LABEL_76:
        __break(1u);
        goto LABEL_77;
      }

      v7 = (v4 - 1);
      if (v4 != 1)
      {
        v10 = 0;
        v14 = v28 + 1;
        while (1)
        {
          v15 = *v14 - 48;
          if (v15 > 9)
          {
            break;
          }

          if (!is_mul_ok(v10, 0xAuLL))
          {
            break;
          }

          v13 = 10 * v10 >= v15;
          v10 = 10 * v10 - v15;
          if (!v13)
          {
            break;
          }

          ++v14;
          if (!--v7)
          {
            goto LABEL_67;
          }
        }
      }
    }

    else if (v4)
    {
      v10 = 0;
      v22 = v28;
      while (1)
      {
        v23 = *v22 - 48;
        if (v23 > 9)
        {
          break;
        }

        if (!is_mul_ok(v10, 0xAuLL))
        {
          break;
        }

        v13 = __CFADD__(10 * v10, v23);
        v10 = 10 * v10 + v23;
        if (v13)
        {
          break;
        }

        ++v22;
        if (!--v4)
        {
LABEL_65:
          LOBYTE(v7) = 0;
          goto LABEL_67;
        }
      }
    }

LABEL_66:
    v10 = 0;
    LOBYTE(v7) = 1;
LABEL_67:
    v29 = v7;
    v24 = v7;

    if ((v24 & 1) == 0)
    {
      return v10;
    }

    return 0;
  }

  if (v4)
  {
    v7 = (v4 - 1);
    if (v4 != 1)
    {
      v10 = 0;
      v19 = v28 + 1;
      while (1)
      {
        v20 = *v19 - 48;
        if (v20 > 9)
        {
          break;
        }

        if (!is_mul_ok(v10, 0xAuLL))
        {
          break;
        }

        v13 = __CFADD__(10 * v10, v20);
        v10 = 10 * v10 + v20;
        if (v13)
        {
          break;
        }

        ++v19;
        if (!--v7)
        {
          goto LABEL_67;
        }
      }
    }

    goto LABEL_66;
  }

LABEL_77:
  __break(1u);
  return result;
}

uint64_t sub_100269924(void *a1, uint64_t a2, void *a3)
{
  if (!a1)
  {
    sub_1003993E8();
    sub_100004218(0, &qword_1004D5D30);
    v16 = sub_1003995A8();
    sub_100398B98();

    v17 = sub_100398F28();
    v18 = sub_100398F28();
    CreateDiagnosticReport();

    [a3 uploadFailedWithStatusCode:-1 retryCount:a2];
    return 0;
  }

  v5 = a1;
  v6 = [v5 responseStatusCode];
  v7 = [v5 responseError];
  if (v7)
  {
    v8 = v7;
    sub_100399408();
    sub_100004218(0, &qword_1004D5D30);
    v9 = sub_1003995A8();
    v10 = 2;
    sub_100398B98();

    sub_1003993E8();
    v11 = sub_1003995A8();
    sub_1001E27A8(&qword_1004D5860);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1003C9930;
    swift_getErrorValue();
    v13 = sub_100399AC8();
    v15 = v14;
    *(v12 + 56) = &type metadata for String;
    *(v12 + 64) = sub_100206BA0();
    *(v12 + 32) = v13;
    *(v12 + 40) = v15;
    sub_100398B98();

    return v10;
  }

  if (v6 == 204)
  {
    sub_100399408();
    sub_100004218(0, &qword_1004D5D30);
    v19 = sub_1003995A8();
    sub_100398B98();

    sub_1003993C8();
    v20 = sub_1003995A8();
    sub_1001E27A8(&qword_1004D5860);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_1003C9930;
    v22 = [v5 responseStatusCode];
    *(v21 + 56) = &type metadata for Int;
    *(v21 + 64) = &protocol witness table for Int;
    *(v21 + 32) = v22;
    sub_100398B98();

    [a3 uploadSucceededWithRetryCount:a2];

    return 1;
  }

  if ((v6 - 400) <= 0x63)
  {
    sub_100399408();
    sub_100004218(0, &qword_1004D5D30);
    v24 = sub_1003995A8();
    sub_100398B98();

    v25 = sub_100398F28();
    v26 = sub_100398F28();
    CreateDiagnosticReport();

    sub_1003993E8();
    v27 = sub_1003995A8();
    sub_1001E27A8(&qword_1004D5860);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_1003C9930;
    v29 = [v5 responseStatusCode];
    *(v28 + 56) = &type metadata for Int;
    *(v28 + 64) = &protocol witness table for Int;
    *(v28 + 32) = v29;
    sub_100398B98();

    [a3 uploadFailedWithStatusCode:objc_msgSend(v5 retryCount:{"responseStatusCode"), a2}];

    return 0;
  }

  sub_100399408();
  sub_100004218(0, &qword_1004D5D30);
  v30 = sub_1003995A8();
  v10 = 2;
  sub_100398B98();

  if ((v6 - 500) > 0x63)
  {
    sub_1003993E8();
    v36 = sub_1003995A8();
    sub_1001E27A8(&qword_1004D5860);
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_1003C9930;
    v38 = [v5 responseStatusCode];
    *(v37 + 56) = &type metadata for Int;
    *(v37 + 64) = &protocol witness table for Int;
    *(v37 + 32) = v38;
    sub_100398B98();

    v39 = sub_100398F28();
    v40 = sub_100398F28();
    CreateDiagnosticReport();
  }

  else
  {
    v31 = sub_100398F28();
    v32 = sub_100398F28();
    CreateDiagnosticReport();

    sub_1003993E8();
    v33 = sub_1003995A8();
    sub_1001E27A8(&qword_1004D5860);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_1003C9930;
    v35 = [v5 responseStatusCode];
    *(v34 + 56) = &type metadata for Int;
    *(v34 + 64) = &protocol witness table for Int;
    *(v34 + 32) = v35;
    sub_100398B98();
  }

  return v10;
}

uint64_t sub_10026A1D4(unint64_t a1)
{
  v2 = objc_opt_self();
  sub_100004218(0, &qword_1004D83A0);
  [v2 configurationForClass:swift_getObjCClassFromMetadata()];
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (!v3)
  {
    swift_unknownObjectRelease();
    v11 = &off_100479EA0;
    goto LABEL_24;
  }

  v4 = v3;
  v5 = [v3 uploadBackoffSchedule];
  if (v5)
  {
    v6 = v5;
    sub_100004218(0, &qword_1004D43F0);
    v7 = sub_100399198();

    if (v7 >> 62)
    {
      v8 = sub_1003997F8();
      if (v8)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v8)
      {
LABEL_5:
        result = sub_1002373D4(0, v8 & ~(v8 >> 63), 0);
        if (v8 < 0)
        {
          goto LABEL_37;
        }

        v10 = 0;
        v11 = _swiftEmptyArrayStorage;
        do
        {
          if ((v7 & 0xC000000000000001) != 0)
          {
            v12 = sub_100399708();
          }

          else
          {
            v12 = *(v7 + 8 * v10 + 32);
          }

          v13 = v12;
          [v12 doubleValue];
          v15 = v14;

          v17 = _swiftEmptyArrayStorage[2];
          v16 = _swiftEmptyArrayStorage[3];
          if (v17 >= v16 >> 1)
          {
            sub_1002373D4((v16 > 1), v17 + 1, 1);
          }

          ++v10;
          _swiftEmptyArrayStorage[2] = v17 + 1;
          _swiftEmptyArrayStorage[v17 + 4] = v15;
        }

        while (v8 != v10);

        goto LABEL_18;
      }
    }

    v11 = _swiftEmptyArrayStorage;
  }

  else
  {
    v11 = &off_100479EA0;
  }

LABEL_18:
  v18 = [v4 holdTransactionLimit];
  if (v18)
  {
    v19 = v18;
    [v18 doubleValue];
    if (v20 > 0.0)
    {
      [v19 doubleValue];
      swift_unknownObjectRelease();

      v21 = v11[2];
      if (!v21)
      {
        goto LABEL_28;
      }

      goto LABEL_25;
    }
  }

  swift_unknownObjectRelease();
LABEL_24:
  v21 = v11[2];
  if (!v21)
  {
LABEL_28:

    return 0;
  }

LABEL_25:
  if (v21 <= a1)
  {
    goto LABEL_28;
  }

  v22 = a1 + 1;
  if (a1 + 1 > 3)
  {
    v23 = v22 & 0xFFFFFFFFFFFFFFFCLL;
    v25 = (v11 + 6);
    v24 = 0.0;
    v26 = v22 & 0xFFFFFFFFFFFFFFFCLL;
    do
    {
      v24 = v24 + *(v25 - 2) + *(v25 - 1) + *v25 + v25[1];
      v25 += 4;
      v26 -= 4;
    }

    while (v26);
    if (v22 == v23)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v23 = 0;
    v24 = 0.0;
  }

  v27 = a1 - v23 + 1;
  v28 = &v11[v23 + 4];
  do
  {
    v29 = *v28++;
    v24 = v24 + v29;
    --v27;
  }

  while (v27);
LABEL_34:
  result = sub_100399998();
  if (v11[2] > a1)
  {
    v30 = result;

    return v30;
  }

  __break(1u);
LABEL_37:
  __break(1u);
  return result;
}

uint64_t sub_10026A578(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v8 + 240) = v23;
  *(v8 + 248) = v24;
  *(v8 + 1088) = a7;
  *(v8 + 224) = a6;
  *(v8 + 232) = a8;
  *(v8 + 208) = a4;
  *(v8 + 216) = a5;
  *(v8 + 256) = sub_1001E27A8(&unk_1004D70E0);
  *(v8 + 264) = swift_task_alloc();
  *(v8 + 272) = swift_task_alloc();
  v9 = type metadata accessor for AttributionCandidate(0);
  *(v8 + 280) = v9;
  *(v8 + 288) = *(v9 - 8);
  *(v8 + 296) = swift_task_alloc();
  sub_1001E27A8(&qword_1004D84C0);
  *(v8 + 304) = swift_task_alloc();
  *(v8 + 312) = type metadata accessor for ComputedAttributions(0);
  *(v8 + 320) = swift_task_alloc();
  v10 = sub_100398AF8();
  *(v8 + 328) = v10;
  *(v8 + 336) = *(v10 - 8);
  *(v8 + 344) = swift_task_alloc();
  *(v8 + 352) = swift_task_alloc();
  v11 = sub_1003989A8();
  *(v8 + 360) = v11;
  *(v8 + 368) = *(v11 - 8);
  *(v8 + 376) = swift_task_alloc();
  v12 = sub_100398988();
  *(v8 + 384) = v12;
  *(v8 + 392) = *(v12 - 8);
  *(v8 + 400) = swift_task_alloc();
  *(v8 + 408) = swift_task_alloc();
  v13 = sub_100398848();
  *(v8 + 416) = v13;
  *(v8 + 424) = *(v13 - 8);
  *(v8 + 432) = swift_task_alloc();
  sub_1001E27A8(&qword_1004D84C8);
  *(v8 + 440) = swift_task_alloc();
  *(v8 + 448) = swift_task_alloc();
  *(v8 + 456) = swift_task_alloc();
  v14 = sub_100398828();
  *(v8 + 464) = v14;
  *(v8 + 472) = *(v14 - 8);
  *(v8 + 480) = swift_task_alloc();
  *(v8 + 488) = swift_task_alloc();
  *(v8 + 496) = swift_task_alloc();
  *(v8 + 504) = swift_task_alloc();
  v15 = sub_100398628();
  *(v8 + 512) = v15;
  *(v8 + 520) = *(v15 - 8);
  *(v8 + 528) = swift_task_alloc();
  *(v8 + 536) = swift_task_alloc();
  *(v8 + 544) = swift_task_alloc();
  v16 = sub_100398768();
  *(v8 + 552) = v16;
  *(v8 + 560) = *(v16 - 8);
  *(v8 + 568) = swift_task_alloc();
  *(v8 + 576) = swift_task_alloc();
  *(v8 + 584) = swift_task_alloc();
  *(v8 + 592) = swift_task_alloc();
  *(v8 + 600) = swift_task_alloc();
  *(v8 + 608) = swift_task_alloc();
  v17 = sub_100397748();
  *(v8 + 616) = v17;
  *(v8 + 624) = *(v17 - 8);
  *(v8 + 632) = swift_task_alloc();
  *(v8 + 640) = swift_task_alloc();
  *(v8 + 648) = swift_task_alloc();
  *(v8 + 656) = swift_task_alloc();
  *(v8 + 664) = swift_task_alloc();
  v18 = sub_1003988E8();
  *(v8 + 672) = v18;
  *(v8 + 680) = *(v18 - 8);
  *(v8 + 688) = swift_task_alloc();
  type metadata accessor for SignpostInterval();
  *(v8 + 696) = swift_task_alloc();
  *(v8 + 704) = swift_task_alloc();
  *(v8 + 712) = swift_task_alloc();
  *(v8 + 720) = swift_task_alloc();
  v19 = sub_1003988C8();
  *(v8 + 728) = v19;
  *(v8 + 736) = *(v19 - 8);
  *(v8 + 744) = swift_task_alloc();
  *(v8 + 752) = swift_task_alloc();
  *(v8 + 760) = swift_task_alloc();
  *(v8 + 768) = type metadata accessor for AttributionSignposts(0);
  *(v8 + 776) = swift_task_alloc();
  v20 = sub_100398728();
  *(v8 + 784) = v20;
  *(v8 + 792) = *(v20 - 8);
  *(v8 + 800) = swift_task_alloc();
  *(v8 + 808) = swift_task_alloc();
  *(v8 + 816) = swift_task_alloc();
  *(v8 + 824) = swift_task_alloc();

  return _swift_task_switch(sub_10026ACBC, 0, 0);
}

uint64_t sub_10026ACBC()
{
  v59 = v0;
  v1 = sub_1003993C8();
  *(v0 + 832) = sub_100004218(0, &qword_1004D5D30);
  v2 = sub_1003995A8();
  if (os_log_type_enabled(v2, v1))
  {
    v3 = *(v0 + 824);
    v4 = *(v0 + 792);
    v5 = *(v0 + 784);
    v6 = *(v0 + 208);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v58 = v8;
    *v7 = 136315138;
    (*(v4 + 16))(v3, v6 + OBJC_IVAR____TtC11Attribution19JetEngineAttributor_config, v5);
    v9 = sub_100398FC8();
    v11 = sub_100005700(v9, v10, &v58);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v2, v1, "Using config parameters %s", v7, 0xCu);
    sub_100003894(v8);
  }

  v12 = *(v0 + 792);
  v45 = *(v0 + 784);
  v46 = *(v0 + 816);
  v57 = *(v0 + 768);
  v42 = *(v0 + 720);
  v13 = *(v0 + 664);
  v14 = *(v0 + 624);
  v44 = *(v0 + 616);
  v50 = *(v0 + 608);
  v51 = *(v0 + 688);
  v49 = *(v0 + 600);
  v15 = *(v0 + 560);
  v48 = *(v0 + 552);
  v52 = *(v0 + 544);
  v53 = *(v0 + 680);
  v54 = *(v0 + 520);
  v55 = *(v0 + 672);
  v56 = *(v0 + 512);
  v47 = *(v0 + 1088);
  v16 = *(v0 + 224);
  v41 = *(v0 + 232);
  v17 = *(v0 + 216);
  v43 = *(v0 + 208);
  v19 = v17[3];
  v18 = v17[4];
  sub_1000035B8(v17, v19);
  (*(v18 + 8))(v19, v18);
  AttributionSignposts.preMatch()(v42);
  v20 = *(v14 + 16);
  *(v0 + 840) = v20;
  *(v0 + 848) = (v14 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v20(v13, v41, v44);
  v21 = OBJC_IVAR____TtC11Attribution19JetEngineAttributor_config;
  *(v0 + 856) = OBJC_IVAR____TtC11Attribution19JetEngineAttributor_config;
  v22 = *(v12 + 16);
  *(v0 + 864) = v22;
  *(v0 + 872) = (v12 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v22(v46, &v43[v21], v45);
  v23 = *v16;
  *(v0 + 880) = *v16;
  v24 = v16[1];
  *(v0 + 888) = v24;
  *(v0 + 112) = v23;
  *(v0 + 120) = v24;

  sub_1003990F8();
  *(v0 + 1080) = *(type metadata accessor for ProductionAppSpecifier(0) + 20);
  sub_1003981A8();
  v25 = *(v15 + 104);
  v26 = &enum case for AttributionCallType.open(_:);
  *(v0 + 896) = v25;
  if ((v47 & 1) == 0)
  {
    v26 = &enum case for AttributionCallType.install(_:);
  }

  v25(v49, *v26, v48);
  v27 = *(v15 + 32);
  *(v0 + 904) = v27;
  *(v0 + 912) = (v15 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v27(v50, v49, v48);
  v28 = &v43[OBJC_IVAR____TtC11Attribution19JetEngineAttributor_accountToken];
  *(v0 + 920) = *&v43[OBJC_IVAR____TtC11Attribution19JetEngineAttributor_accountToken];
  *(v0 + 928) = *(v28 + 1);

  sub_1003988D8();
  sub_1003993D8();
  v29 = sub_1003995A8();
  sub_100398B98();

  v30 = *(v43 + 5);
  v31 = *(v43 + 6);
  sub_1000035B8(v43 + 2, v30);
  (*(v53 + 16))(v52, v51, v55);
  v32 = enum case for IntentMessage.attributionPreMatch(_:);
  v33 = *(v54 + 104);
  *(v0 + 936) = v33;
  *(v0 + 944) = (v54 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v33(v52, v32, v56);
  *(v0 + 952) = sub_100398708();
  *(v0 + 1084) = *(v57 + 20);
  v34 = sub_1003986E8();
  *(v0 + 960) = v34;
  v35 = swift_task_alloc();
  *(v0 + 968) = v35;
  v36 = sub_1002717C8(&qword_1004D84D0, &type metadata accessor for AttributionPreMatchIntent.ReturnType);
  *v35 = v0;
  v35[1] = sub_10026B280;
  v37 = *(v0 + 744);
  v38 = *(v0 + 728);
  v39 = *(v0 + 544);

  return dispatch thunk of JetServiceRequesting.dispatch<A>(message:options:)(v37, v39, v34, v38, v36, v30, v31);
}

uint64_t sub_10026B280()
{
  v2 = *v1;
  v2[122] = v0;

  v3 = v2[68];
  v4 = v2[65];
  v5 = v2[64];
  v8 = *(v4 + 8);
  v6 = v4 + 8;
  v7 = v8;
  if (v0)
  {
    v7(v3, v5);

    v9 = sub_10026C0FC;
  }

  else
  {
    v2[123] = v7;
    v2[124] = v6 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v7(v3, v5);

    v9 = sub_10026B430;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_10026B430()
{
  v94 = v0;
  (*(*(v0 + 736) + 32))(*(v0 + 752), *(v0 + 744), *(v0 + 728));
  v1 = sub_1003993D8();
  v2 = sub_1003995A8();
  if (os_log_type_enabled(v2, v1))
  {
    v3 = *(v0 + 688);
    v4 = *(v0 + 680);
    v5 = *(v0 + 672);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v92 = v7;
    *v6 = 136446210;
    swift_beginAccess();
    sub_1002717C8(&qword_1004D84F0, &type metadata accessor for AttributionPreMatchIntent.ReturnType);
    v8 = sub_100399998();
    v10 = sub_100005700(v8, v9, &v92);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v2, v1, "prematch response %{public}s", v6, 0xCu);
    sub_100003894(v7);

    (*(v4 + 8))(v3, v5);
  }

  else
  {
    v11 = *(v0 + 688);
    v12 = *(v0 + 680);
    v13 = *(v0 + 672);

    (*(v12 + 8))(v11, v13);
  }

  v14 = *(v0 + 976);
  v15 = *(v0 + 760);
  v16 = *(v0 + 752);
  v17 = *(v0 + 736);
  v18 = *(v0 + 728);
  v19 = *(v0 + 720);
  swift_beginAccess();
  (*(v17 + 16))(v15, v16, v18);
  v20 = *(v17 + 8);
  *(v0 + 1000) = v20;
  *(v0 + 1008) = (v17 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v20(v16, v18);
  sub_10027C30C();
  sub_100270468(v19, type metadata accessor for SignpostInterval);
  v21 = sub_1003988B8();
  v22 = sub_10026EC74(v21);
  v23 = *(v0 + 760);
  if (!v14)
  {
    v40 = v22;

    sub_1003988A8();
    swift_getKeyPath();
    v41 = v40[2];

    v49 = v40;
    if (v41)
    {
      v50 = 0;
      v51 = _swiftEmptyArrayStorage;
      while (v50 < v49[2])
      {
        *(v0 + 184) = v49[v50 + 4];

        swift_getAtKeyPath();

        v52 = *(v0 + 192);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          isUniquelyReferenced_nonNull_native = sub_1001E3A58(0, v51[2] + 1, 1, v51);
          v51 = isUniquelyReferenced_nonNull_native;
        }

        v54 = v51[2];
        v53 = v51[3];
        if (v54 >= v53 >> 1)
        {
          isUniquelyReferenced_nonNull_native = sub_1001E3A58((v53 > 1), v54 + 1, 1, v51);
          v51 = isUniquelyReferenced_nonNull_native;
        }

        ++v50;
        v51[2] = v54 + 1;
        v51[v54 + 4] = v52;
        if (v41 == v50)
        {
          goto LABEL_20;
        }
      }

      __break(1u);
    }

    else
    {
      v51 = _swiftEmptyArrayStorage;
LABEL_20:

      v55 = v51[2];
      if (!v55)
      {
        v56 = 0;
LABEL_26:
        v91 = *(v0 + 936);
        v86 = *(v0 + 904);
        v84 = *(v0 + 896);
        v78 = *(v0 + 888);
        v76 = *(v0 + 880);
        v75 = *(v0 + 864);
        v72 = *(v0 + 840);
        v60 = *(v0 + 808);
        v73 = *(v0 + 784);
        v74 = *(v0 + 856);
        v61 = *(v0 + 712);
        v62 = *(v0 + 656);
        v71 = *(v0 + 616);
        v81 = *(v0 + 592);
        v79 = *(v0 + 552);
        v80 = *(v0 + 584);
        v89 = *(v0 + 536);
        v90 = *(v0 + 512);
        v82 = *(v0 + 448);
        v83 = *(v0 + 456);
        v85 = *(v0 + 432);
        v87 = *(v0 + 424);
        v88 = *(v0 + 416);
        v77 = *(v0 + 1088);
        v63 = *(v0 + 232);
        v64 = *(v0 + 208);

        sub_1002701FC(v56);
        AttributionSignposts.match(_:)(v56, v61);
        sub_1003993D8();
        v65 = sub_1003995A8();
        sub_100398B98();

        v72(v62, v63, v71);
        v75(v60, &v64[v74], v73);
        *(v0 + 144) = v76;
        *(v0 + 152) = v78;

        sub_1003990F8();
        sub_1003981A8();
        v66 = &enum case for AttributionCallType.open(_:);
        if ((v77 & 1) == 0)
        {
          v66 = &enum case for AttributionCallType.install(_:);
        }

        v84(v80, *v66, v79);
        v86(v81, v80, v79);
        sub_10000ADB4(v83, v82, &qword_1004D84C8);

        sub_100398838();
        v67 = *(v64 + 5);
        v68 = *(v64 + 6);
        sub_1000035B8(v64 + 2, v67);
        (*(v87 + 16))(v89, v85, v88);
        v91(v89, enum case for IntentMessage.attributionMatch(_:), v90);
        v69 = sub_1003986E8();
        *(v0 + 1016) = v69;
        v70 = swift_task_alloc();
        *(v0 + 1024) = v70;
        v46 = sub_1002717C8(&qword_1004D84D8, &type metadata accessor for AttributionMatchIntent.ReturnType);
        *v70 = v0;
        v70[1] = sub_10026C654;
        v43 = *(v0 + 536);
        isUniquelyReferenced_nonNull_native = *(v0 + 488);
        v45 = *(v0 + 464);
        v44 = v69;
        v47 = v67;
        v48 = v68;

        return dispatch thunk of JetServiceRequesting.dispatch<A>(message:options:)(isUniquelyReferenced_nonNull_native, v43, v44, v45, v46, v47, v48);
      }

      v56 = 0;
      v57 = v51 + 4;
      while (1)
      {
        v58 = *v57++;
        v59 = __OFADD__(v56, v58);
        v56 += v58;
        if (v59)
        {
          break;
        }

        if (!--v55)
        {
          goto LABEL_26;
        }
      }
    }

    __break(1u);
    return dispatch thunk of JetServiceRequesting.dispatch<A>(message:options:)(isUniquelyReferenced_nonNull_native, v43, v44, v45, v46, v47, v48);
  }

  v24 = *(v0 + 728);

  v20(v23, v24);
  sub_100270468(*(v0 + 776), type metadata accessor for AttributionSignposts);
  v25 = sub_1003993E8();
  v26 = sub_1003995A8();
  if (os_log_type_enabled(v26, v25))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v27 = 138543362;
    swift_errorRetain();
    v29 = _swift_stdlib_bridgeErrorToNSError();
    *(v27 + 4) = v29;
    *v28 = v29;
    _os_log_impl(&_mh_execute_header, v26, v25, "Caught error in business logic %{public}@", v27, 0xCu);
    sub_1001ED244(v28, &qword_1004D8610);
  }

  v31 = *(v0 + 312);
  v30 = *(v0 + 320);
  v32 = *(v0 + 240);

  v92 = 0;
  v93 = 0xE000000000000000;
  sub_1003996F8(33);
  v33 = v93;
  *(v0 + 128) = v92;
  *(v0 + 136) = v33;
  v96._countAndFlagsBits = 0xD00000000000001FLL;
  v96._object = 0x800000010042FFB0;
  sub_100399068(v96);
  *(v0 + 176) = v14;
  sub_1001E27A8(&qword_1004D4818);
  sub_1003997C8();
  v34 = sub_100398F28();

  v35 = sub_100398F28();
  CreateDiagnosticReport();

  sub_100397738();
  *(v30 + *(v31 + 20)) = _swiftEmptyArrayStorage;
  sub_10024BCE8();
  v36 = swift_allocError();
  *v37 = 5601;
  v32(v30, v36);

  sub_100270468(v30, type metadata accessor for ComputedAttributions);

  v38 = *(v0 + 8);

  return v38();
}

uint64_t sub_10026C0FC()
{
  v1 = v0[90];
  (*(v0[85] + 8))(v0[86], v0[84]);
  sub_10027C30C();
  sub_100270468(v1, type metadata accessor for SignpostInterval);
  v2 = v0[122];
  sub_100270468(v0[97], type metadata accessor for AttributionSignposts);
  v3 = sub_1003993E8();
  v4 = sub_1003995A8();
  if (os_log_type_enabled(v4, v3))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138543362;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&_mh_execute_header, v4, v3, "Caught error in business logic %{public}@", v5, 0xCu);
    sub_1001ED244(v6, &qword_1004D8610);
  }

  v9 = v0[39];
  v8 = v0[40];
  v10 = v0[30];

  sub_1003996F8(33);
  v0[16] = 0;
  v0[17] = 0xE000000000000000;
  v18._countAndFlagsBits = 0xD00000000000001FLL;
  v18._object = 0x800000010042FFB0;
  sub_100399068(v18);
  v0[22] = v2;
  sub_1001E27A8(&qword_1004D4818);
  sub_1003997C8();
  v11 = sub_100398F28();

  v12 = sub_100398F28();
  CreateDiagnosticReport();

  sub_100397738();
  *(v8 + *(v9 + 20)) = _swiftEmptyArrayStorage;
  sub_10024BCE8();
  v13 = swift_allocError();
  *v14 = 5601;
  v10(v8, v13);

  sub_100270468(v8, type metadata accessor for ComputedAttributions);

  v15 = v0[1];

  return v15();
}

uint64_t sub_10026C654()
{
  v2 = *v1;
  *(*v1 + 1032) = v0;

  (*(v2 + 984))(*(v2 + 536), *(v2 + 512));

  if (v0)
  {
    v3 = sub_10026D908;
  }

  else
  {
    v3 = sub_10026C7E0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10026C7E0()
{
  v145 = v0;
  (*(*(v0 + 472) + 32))(*(v0 + 496), *(v0 + 488), *(v0 + 464));
  v1 = sub_1003993D8();
  v2 = sub_1003995A8();
  if (os_log_type_enabled(v2, v1))
  {
    v3 = *(v0 + 496);
    v4 = *(v0 + 472);
    v5 = *(v0 + 480);
    v6 = *(v0 + 464);
    v7 = *(v0 + 424);
    v141 = *(v0 + 432);
    v136 = *(v0 + 416);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v143 = v9;
    *v8 = 136315138;
    swift_beginAccess();
    (*(v4 + 16))(v5, v3, v6);
    v10 = sub_100398FB8();
    v12 = sub_100005700(v10, v11, &v143);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v2, v1, "%s", v8, 0xCu);
    sub_100003894(v9);

    (*(v7 + 8))(v141, v136);
  }

  else
  {
    v14 = *(v0 + 424);
    v13 = *(v0 + 432);
    v15 = *(v0 + 416);

    (*(v14 + 8))(v13, v15);
  }

  v16 = *(v0 + 712);
  v18 = *(v0 + 496);
  v17 = *(v0 + 504);
  v19 = *(v0 + 464);
  v20 = *(v0 + 472);
  v21 = *(v0 + 456);
  swift_beginAccess();
  (*(v20 + 16))(v17, v18, v19);
  v22 = *(v20 + 8);
  *(v0 + 1040) = v22;
  *(v0 + 1048) = (v20 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v22(v18, v19);
  sub_10027C30C();
  sub_100270468(v16, type metadata accessor for SignpostInterval);
  sub_1001ED244(v21, &qword_1004D84C8);
  v142 = v22;
  if (sub_1003987D8())
  {
    v23 = *(v0 + 1032);
    v25 = *(v0 + 224);
    v24 = *(v0 + 232);
    v26 = sub_1003987E8();
    v27 = sub_1003987F8();
    sub_1002704C8(v25, v24, v26, v27);
    v137 = v23;
    if (v23)
    {
      v28 = *(v0 + 1000);
      v29 = *(v0 + 760);
      v30 = *(v0 + 728);
      v31 = *(v0 + 504);
      v32 = *(v0 + 464);

      v142(v31, v32);
      v28(v29, v30);
      sub_100270468(*(v0 + 776), type metadata accessor for AttributionSignposts);
      v33 = sub_1003993E8();
      v34 = sub_1003995A8();
      if (os_log_type_enabled(v34, v33))
      {
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        *v35 = 138543362;
        swift_errorRetain();
        v37 = _swift_stdlib_bridgeErrorToNSError();
        *(v35 + 4) = v37;
        *v36 = v37;
        _os_log_impl(&_mh_execute_header, v34, v33, "Caught error in business logic %{public}@", v35, 0xCu);
        sub_1001ED244(v36, &qword_1004D8610);
      }

      v39 = *(v0 + 312);
      v38 = *(v0 + 320);
      v40 = *(v0 + 240);

      v143 = 0;
      v144 = 0xE000000000000000;
      sub_1003996F8(33);
      v41 = v144;
      *(v0 + 128) = v143;
      *(v0 + 136) = v41;
      v147._countAndFlagsBits = 0xD00000000000001FLL;
      v147._object = 0x800000010042FFB0;
      sub_100399068(v147);
      *(v0 + 176) = v137;
      sub_1001E27A8(&qword_1004D4818);
      sub_1003997C8();
      v42 = sub_100398F28();

      v43 = sub_100398F28();
      CreateDiagnosticReport();

      sub_100397738();
      *(v38 + *(v39 + 20)) = _swiftEmptyArrayStorage;
      sub_10024BCE8();
      v44 = swift_allocError();
      *v45 = 5601;
      v40(v38, v44);

      v46 = type metadata accessor for ComputedAttributions;
      v47 = v38;
      goto LABEL_13;
    }

    v134 = *(v0 + 936);
    v119 = *(v0 + 904);
    v117 = *(v0 + 896);
    v99 = *(v0 + 880);
    v100 = *(v0 + 888);
    v98 = *(v0 + 864);
    v97 = *(v0 + 856);
    v94 = *(v0 + 840);
    v95 = *(v0 + 800);
    v96 = *(v0 + 784);
    v83 = *(v0 + 704);
    v92 = *(v0 + 648);
    v93 = *(v0 + 616);
    v111 = *(v0 + 576);
    v106 = *(v0 + 552);
    v108 = *(v0 + 568);
    v128 = *(v0 + 528);
    v131 = *(v0 + 512);
    v103 = *(v0 + 440);
    v113 = *(v0 + 448);
    v115 = *(v0 + 376);
    v122 = *(v0 + 368);
    v125 = *(v0 + 360);
    v101 = *(v0 + 1088);
    v84 = *(v0 + 232);
    v85 = *(v0 + 208);

    sub_100398808();
    AttributionSignposts.postMatch()(v83);
    sub_1003993D8();
    v86 = sub_1003995A8();
    sub_100398B98();

    v94(v92, v84, v93);
    v98(v95, &v85[v97], v96);
    *(v0 + 160) = v99;
    *(v0 + 168) = v100;

    sub_1003990F8();
    sub_1003981A8();
    v87 = &enum case for AttributionCallType.open(_:);
    if ((v101 & 1) == 0)
    {
      v87 = &enum case for AttributionCallType.install(_:);
    }

    v117(v108, *v87, v106);
    v119(v111, v108, v106);
    sub_10000ADB4(v103, v113, &qword_1004D84C8);
    sub_100398998();
    v88 = *(v85 + 5);
    v89 = *(v85 + 6);
    sub_1000035B8(v85 + 2, v88);
    (*(v122 + 16))(v128, v115, v125);
    v134(v128, enum case for IntentMessage.attributionPostMatch(_:), v131);
    v90 = sub_1003986E8();
    *(v0 + 1056) = v90;
    v91 = swift_task_alloc();
    *(v0 + 1064) = v91;
    v62 = sub_1002717C8(&qword_1004D84E8, &type metadata accessor for AttributionPostMatchIntent.ReturnType);
    *v91 = v0;
    v91[1] = sub_10026DE94;
    v59 = *(v0 + 528);
    v58 = *(v0 + 400);
    v61 = *(v0 + 384);
    v60 = v90;
    v63 = v88;
    v64 = v89;

    return dispatch thunk of JetServiceRequesting.dispatch<A>(message:options:)(v58, v59, v60, v61, v62, v63, v64);
  }

  v48 = *(v0 + 328);
  v49 = *(v0 + 336);
  v50 = *(v0 + 304);
  sub_100398818();
  if ((*(v49 + 48))(v50, 1, v48) == 1)
  {
    v132 = *(v0 + 1000);
    v138 = *(v0 + 776);
    v126 = *(v0 + 728);
    v129 = *(v0 + 760);
    v123 = *(v0 + 504);
    v51 = *(v0 + 464);
    v53 = *(v0 + 312);
    v52 = *(v0 + 320);
    v54 = *(v0 + 240);
    sub_1001ED244(*(v0 + 304), &qword_1004D84C0);
    sub_1003993E8();
    v55 = sub_1003995A8();
    sub_100398B98();

    sub_100397738();
    *(v52 + *(v53 + 20)) = _swiftEmptyArrayStorage;
    sub_10024BCE8();
    v56 = swift_allocError();
    *v57 = 5602;
    v54(v52, v56);

    sub_100270468(v52, type metadata accessor for ComputedAttributions);
    v142(v123, v51);
    v132(v129, v126);
    v46 = type metadata accessor for AttributionSignposts;
    v47 = v138;
  }

  else
  {
    (*(*(v0 + 336) + 32))(*(v0 + 344), *(v0 + 304), *(v0 + 328));
    sub_100398AE8();
    sub_100398AC8();
    sub_1002717C8(&qword_1004D62C8, &type metadata accessor for Date);
    v58 = sub_100398EF8();
    if ((v58 & 1) == 0)
    {
      __break(1u);
      return dispatch thunk of JetServiceRequesting.dispatch<A>(message:options:)(v58, v59, v60, v61, v62, v63, v64);
    }

    v135 = *(v0 + 1000);
    v114 = *(v0 + 888);
    v109 = *(v0 + 1080);
    v110 = *(v0 + 880);
    v139 = *(v0 + 776);
    v130 = *(v0 + 728);
    v133 = *(v0 + 760);
    v65 = *(v0 + 632);
    v66 = *(v0 + 624);
    v67 = *(v0 + 616);
    v124 = *(v0 + 464);
    v127 = *(v0 + 504);
    v104 = *(v0 + 344);
    v120 = *(v0 + 336);
    v121 = *(v0 + 328);
    v107 = *(v0 + 320);
    v118 = *(v0 + 312);
    v140 = *(v0 + 296);
    v112 = *(v0 + 288);
    v68 = *(v0 + 272);
    v102 = *(v0 + 280);
    v70 = *(v0 + 256);
    v69 = *(v0 + 264);
    v116 = *(v0 + 240);
    v105 = *(v0 + 224);
    v71 = *(v66 + 32);
    v71(v68, *(v0 + 640), v67);
    v71(v68 + *(v70 + 48), v65, v67);
    sub_10000ADB4(v68, v69, &unk_1004D70E0);
    v72 = *(v70 + 48);
    v71(v140, v69, v67);
    v73 = *(v66 + 8);
    v73(v69 + v72, v67);
    sub_100270394(v68, v69);
    v74 = *(v70 + 48);
    v75 = sub_1001E27A8(&qword_1004D6250);
    v71(v140 + *(v75 + 36), v69 + v74, v67);
    v73(v69, v67);
    *(v0 + 200) = sub_10026F370();
    sub_1001E27A8(&qword_1004D5D38);
    sub_100397A08();
    type metadata accessor for AttributionCandidate.Provenance(0);
    swift_storeEnumTagMultiPayload();
    v76 = (v140 + *(v102 + 24));
    v77 = *(type metadata accessor for AppSpecifier(0) + 20);
    v78 = sub_1003981B8();
    (*(*(v78 - 8) + 16))(&v76[v77], v105 + v109, v78);
    *v76 = v110;
    *(v76 + 1) = v114;

    sub_100397738();
    sub_1001E27A8(&qword_1004D84E0);
    v79 = (*(v112 + 80) + 32) & ~*(v112 + 80);
    v80 = swift_allocObject();
    *(v80 + 16) = xmmword_1003C9930;
    sub_100270404(v140, v80 + v79);
    *(v107 + *(v118 + 20)) = v80;
    v116(v107, 0);
    sub_100270468(v107, type metadata accessor for ComputedAttributions);
    sub_100270468(v140, type metadata accessor for AttributionCandidate);
    (*(v120 + 8))(v104, v121);
    v142(v127, v124);
    v135(v133, v130);
    v46 = type metadata accessor for AttributionSignposts;
    v47 = v139;
  }

LABEL_13:
  sub_100270468(v47, v46);

  v81 = *(v0 + 8);

  return v81();
}

uint64_t sub_10026D908()
{
  v1 = v0[125];
  v2 = v0[95];
  v3 = v0[91];
  v4 = v0[89];
  v5 = v0[57];
  (*(v0[53] + 8))(v0[54], v0[52]);
  sub_10027C30C();
  sub_100270468(v4, type metadata accessor for SignpostInterval);
  sub_1001ED244(v5, &qword_1004D84C8);
  v1(v2, v3);
  v6 = v0[129];
  sub_100270468(v0[97], type metadata accessor for AttributionSignposts);
  v7 = sub_1003993E8();
  v8 = sub_1003995A8();
  if (os_log_type_enabled(v8, v7))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138543362;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v11;
    *v10 = v11;
    _os_log_impl(&_mh_execute_header, v8, v7, "Caught error in business logic %{public}@", v9, 0xCu);
    sub_1001ED244(v10, &qword_1004D8610);
  }

  v13 = v0[39];
  v12 = v0[40];
  v14 = v0[30];

  sub_1003996F8(33);
  v0[16] = 0;
  v0[17] = 0xE000000000000000;
  v22._countAndFlagsBits = 0xD00000000000001FLL;
  v22._object = 0x800000010042FFB0;
  sub_100399068(v22);
  v0[22] = v6;
  sub_1001E27A8(&qword_1004D4818);
  sub_1003997C8();
  v15 = sub_100398F28();

  v16 = sub_100398F28();
  CreateDiagnosticReport();

  sub_100397738();
  *(v12 + *(v13 + 20)) = _swiftEmptyArrayStorage;
  sub_10024BCE8();
  v17 = swift_allocError();
  *v18 = 5601;
  v14(v12, v17);

  sub_100270468(v12, type metadata accessor for ComputedAttributions);

  v19 = v0[1];

  return v19();
}

uint64_t sub_10026DE94()
{
  v2 = *v1;
  *(*v1 + 1072) = v0;

  (*(v2 + 984))(*(v2 + 528), *(v2 + 512));

  if (v0)
  {
    v3 = sub_10026E6C4;
  }

  else
  {
    v3 = sub_10026E020;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10026E020()
{
  v47 = v0;
  v1 = v0[88];
  v42 = v0[87];
  v40 = v0[55];
  v2 = v0[46];
  v38 = v0[47];
  v3 = v0[45];
  (*(v0[49] + 32))(v0[51], v0[50], v0[48]);
  sub_1003993D8();
  v4 = sub_1003995A8();
  v5 = _swiftEmptyArrayStorage;
  sub_100398B98();

  (*(v2 + 8))(v38, v3);
  sub_10027C30C();
  sub_100270468(v1, type metadata accessor for SignpostInterval);
  sub_1001ED244(v40, &qword_1004D84C8);
  v6 = sub_100398978();
  AttributionSignposts.processPostMatch()(v42);
  v46[0] = _swiftEmptyArrayStorage;
  sub_1003993D8();
  v7 = sub_1003995A8();
  sub_100398B98();

  v8 = *(v6 + 16);
  if (!v8)
  {
    goto LABEL_11;
  }

  v9 = v0[42];
  v11 = *(v9 + 16);
  v9 += 16;
  v10 = v11;
  v44 = (v9 - 8);
  v12 = v0[134];
  v13 = v0[44];
  v14 = v0[28];
  v15 = (*(v9 + 64) + 32) & ~*(v9 + 64);
  v16 = *(v9 + 56);
  v11(v13, v6 + v15, v0[41]);
  sub_10026F8B4(v13, v14, v46);
  if (v12)
  {
    v17 = v0[44];
    v18 = v0[41];

    v19 = *v44;

    return v19(v17, v18);
  }

  v43 = v16;
  v21 = *v44;
  result = (*v44)(v0[44], v0[41]);
  if (v8 == 1)
  {
LABEL_10:
    v5 = v46[0];
LABEL_11:
    v39 = v0[130];
    v41 = v0[125];
    v45 = v0[97];
    v36 = v0[91];
    v37 = v0[95];
    v26 = v0[87];
    v34 = v0[58];
    v35 = v0[63];
    v33 = v0[51];
    v27 = v0[48];
    v28 = v0[49];
    v30 = v0[39];
    v29 = v0[40];
    v31 = v0[30];

    sub_10027C30C();
    sub_100270468(v26, type metadata accessor for SignpostInterval);
    sub_100397738();
    *(v29 + *(v30 + 20)) = v5;
    v31(v29, 0);
    sub_100270468(v29, type metadata accessor for ComputedAttributions);
    (*(v28 + 8))(v33, v27);
    v39(v35, v34);
    v41(v37, v36);
    sub_100270468(v45, type metadata accessor for AttributionSignposts);

    v32 = v0[1];

    return v32();
  }

  v22 = v6 + v43 + v15;
  v23 = 1;
  while (v23 < *(v6 + 16))
  {
    v24 = v0[44];
    v25 = v0[28];
    v10(v24, v22, v0[41]);
    sub_10026F8B4(v24, v25, v46);
    ++v23;
    result = v21(v0[44], v0[41]);
    v22 += v43;
    if (v8 == v23)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10026E6C4()
{
  v1 = v0[130];
  v2 = v0[125];
  v3 = v0[95];
  v4 = v0[91];
  v5 = v0[88];
  v6 = v0[63];
  v7 = v0[58];
  v8 = v0[55];
  (*(v0[46] + 8))(v0[47], v0[45]);
  sub_10027C30C();
  sub_100270468(v5, type metadata accessor for SignpostInterval);
  sub_1001ED244(v8, &qword_1004D84C8);
  v1(v6, v7);
  v2(v3, v4);
  v9 = v0[134];
  sub_100270468(v0[97], type metadata accessor for AttributionSignposts);
  v10 = sub_1003993E8();
  v11 = sub_1003995A8();
  if (os_log_type_enabled(v11, v10))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138543362;
    swift_errorRetain();
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 4) = v14;
    *v13 = v14;
    _os_log_impl(&_mh_execute_header, v11, v10, "Caught error in business logic %{public}@", v12, 0xCu);
    sub_1001ED244(v13, &qword_1004D8610);
  }

  v16 = v0[39];
  v15 = v0[40];
  v17 = v0[30];

  sub_1003996F8(33);
  v0[16] = 0;
  v0[17] = 0xE000000000000000;
  v25._countAndFlagsBits = 0xD00000000000001FLL;
  v25._object = 0x800000010042FFB0;
  sub_100399068(v25);
  v0[22] = v9;
  sub_1001E27A8(&qword_1004D4818);
  sub_1003997C8();
  v18 = sub_100398F28();

  v19 = sub_100398F28();
  CreateDiagnosticReport();

  sub_100397738();
  *(v15 + *(v16 + 20)) = _swiftEmptyArrayStorage;
  sub_10024BCE8();
  v20 = swift_allocError();
  *v21 = 5601;
  v17(v15, v20);

  sub_100270468(v15, type metadata accessor for ComputedAttributions);

  v22 = v0[1];

  return v22();
}

void *sub_10026EC74(uint64_t a1)
{
  v3 = type metadata accessor for SignpostInterval();
  __chkstk_darwin(v3 - 8);
  v38 = v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  AttributionSignposts.processPreMatch()(v38);
  sub_1003993D8();
  v5 = sub_100004218(0, &qword_1004D5D30);
  v37[1] = "";
  v37[3] = "$_supportedInstallSignals";
  v37[2] = v5;
  v6 = sub_1003995A8();
  v7 = _swiftEmptyArrayStorage;
  sub_100398B98();

  v8 = *(a1 + 16);
  if (v8)
  {
    v9 = (a1 + 40);
    while (1)
    {
      v11 = *(v9 - 1);
      v10 = *v9;
      sub_1000035B8((v39 + 56), *(v39 + 80));
      sub_100398748();

      sub_100397D08();
      if (v1)
      {
        break;
      }

      sub_100004A68(&v40, v41);
      v12 = sub_1000035B8(v41, v41[3]);
      __chkstk_darwin(v12);
      (*(v14 + 16))(v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
      v15 = sub_100399208();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_10028122C(0, v7[2] + 1, 1, v7);
      }

      v17 = v7[2];
      v16 = v7[3];
      if (v17 >= v16 >> 1)
      {
        v7 = sub_10028122C((v16 > 1), v17 + 1, 1, v7);
      }

      v7[2] = v17 + 1;
      v7[v17 + 4] = v15;
      sub_100003894(v41);
      v9 += 2;
      if (!--v8)
      {
        goto LABEL_9;
      }
    }

    v26 = sub_1003993E8();
    v27 = sub_1003995A8();
    if (os_log_type_enabled(v27, v26))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *v28 = 138543362;
      swift_errorRetain();
      v30 = _swift_stdlib_bridgeErrorToNSError();
      *(v28 + 4) = v30;
      *v29 = v30;
      _os_log_impl(&_mh_execute_header, v27, v26, "failed to query metrics from DB %{public}@", v28, 0xCu);
      sub_1001ED244(v29, &qword_1004D8610);
    }

    *&v40 = 0;
    *(&v40 + 1) = 0xE000000000000000;
    sub_1003996F8(34);
    v42._countAndFlagsBits = 0xD000000000000020;
    v42._object = 0x800000010042FF70;
    sub_100399068(v42);
    v41[7] = v1;
    sub_1001E27A8(&qword_1004D4818);
    sub_1003997C8();
    v31 = sub_100398F28();

    sub_1001E27A8(&qword_1004D7920);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1003C9930;
    *&v40 = 0x7972657571;
    *(&v40 + 1) = 0xE500000000000000;
    sub_1003996A8();
    *(inited + 96) = &type metadata for String;
    *(inited + 72) = v11;
    *(inited + 80) = v10;
    sub_10025EFB4(inited);
    swift_setDeallocating();
    sub_1001ED244(inited + 32, &unk_1004D7E90);
    isa = sub_100398E48().super.isa;

    v34 = sub_100398F28();
    CreateDiagnosticReport();

    swift_willThrow();
  }

  else
  {
LABEL_9:
    v18 = sub_1003993D8();
    v19 = sub_1003995A8();
    if (os_log_type_enabled(v19, v18))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v41[0] = v21;
      *v20 = 136315138;

      sub_1001E27A8(&qword_1004D84B8);
      v22 = sub_1003991A8();
      v24 = v23;

      v25 = sub_100005700(v22, v24, v41);

      *(v20 + 4) = v25;
      _os_log_impl(&_mh_execute_header, v19, v18, "found events %s", v20, 0xCu);
      sub_100003894(v21);
    }
  }

  v35 = v38;
  sub_10027C30C();
  sub_100270468(v35, type metadata accessor for SignpostInterval);
  return v7;
}

unint64_t sub_10026F370()
{
  v0 = sub_100398FA8();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100398AD8();
  sub_100398F98();
  v4 = sub_100398F68();
  v6 = v5;

  (*(v1 + 8))(v3, v0);
  if (v6 >> 60 == 15)
  {
    v7 = sub_100398F28();
    v8 = sub_100398F28();
    CreateDiagnosticReport();

    sub_1003993E8();
    sub_100004218(0, &qword_1004D5D30);
    v9 = sub_1003995A8();
    sub_100398B98();

    return sub_1002142A8(_swiftEmptyArrayStorage);
  }

  v10 = objc_opt_self();
  isa = sub_100397538().super.isa;
  v28[0] = 0;
  v12 = [v10 JSONObjectWithData:isa options:0 error:v28];

  if (!v12)
  {
    v15 = v28[0];
    sub_1003973E8();

    swift_willThrow();
    sub_1001DDE50(v4, v6);
    v16 = sub_1003993E8();
    sub_100004218(0, &qword_1004D5D30);
    v17 = sub_1003995A8();
    if (os_log_type_enabled(v17, v16))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v28[0] = v19;
      *v18 = 136315138;
      swift_getErrorValue();
      v20 = sub_100399AC8();
      v22 = sub_100005700(v20, v21, v28);

      *(v18 + 4) = v22;
      _os_log_impl(&_mh_execute_header, v17, v16, "Error serializing the candidate properties to json dictionary %s", v18, 0xCu);
      sub_100003894(v19);
    }

    else
    {
    }

    return sub_1002142A8(_swiftEmptyArrayStorage);
  }

  v13 = v28[0];
  sub_100399648();
  swift_unknownObjectRelease();
  sub_1001E27A8(&qword_1004D5D38);
  if (swift_dynamicCast())
  {
    sub_1001DDE50(v4, v6);
    return v27[1];
  }

  else
  {
    v23 = sub_100398F28();
    v24 = sub_100398F28();
    CreateDiagnosticReport();

    sub_1003993E8();
    sub_100004218(0, &qword_1004D5D30);
    v25 = sub_1003995A8();
    sub_100398B98();

    v26 = sub_1002142A8(_swiftEmptyArrayStorage);
    sub_1001DDE50(v4, v6);
    return v26;
  }
}

uint64_t sub_10026F8B4(uint64_t a1, char *a2, uint64_t *a3)
{
  v57 = a2;
  v58 = a3;
  v52 = sub_1001E27A8(&unk_1004D70E0);
  v4 = __chkstk_darwin(v52);
  v53 = v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v51 = v49 - v6;
  v54 = type metadata accessor for AttributionCandidate(0);
  v59 = *(v54 - 8);
  v7 = __chkstk_darwin(v54);
  v56 = (v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v7);
  v55 = v49 - v9;
  v10 = sub_100397748();
  v11 = *(v10 - 1);
  v12 = __chkstk_darwin(v10);
  v63 = v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = v49 - v14;
  v61 = 0;
  v62 = 0xE000000000000000;
  sub_1003996F8(122);
  v64._countAndFlagsBits = 0xD00000000000001BLL;
  v64._object = 0x8000000100430060;
  sub_100399068(v64);
  v65._countAndFlagsBits = sub_100398AD8();
  sub_100399068(v65);

  v66._countAndFlagsBits = 0xD00000000000001ELL;
  v66._object = 0x8000000100430080;
  sub_100399068(v66);
  sub_100398AE8();
  v60 = &type metadata accessor for Date;
  sub_1002717C8(&qword_1004D5AC0, &type metadata accessor for Date);
  v67._countAndFlagsBits = sub_100399998();
  sub_100399068(v67);

  v50 = v11;
  v17 = *(v11 + 8);
  v16 = (v11 + 8);
  v17(v15, v10);
  v68._countAndFlagsBits = 0xD00000000000001CLL;
  v68._object = 0x80000001004300A0;
  sub_100399068(v68);
  sub_100398AC8();
  v69._countAndFlagsBits = sub_100399998();
  sub_100399068(v69);

  v49[0] = v17;
  v17(v15, v10);
  v70._countAndFlagsBits = 0xD00000000000001DLL;
  v70._object = 0x80000001004300C0;
  sub_100399068(v70);
  v18 = sub_100398AB8();
  v19 = (v18 & 1) == 0;
  if (v18)
  {
    v20._countAndFlagsBits = 1702195828;
  }

  else
  {
    v20._countAndFlagsBits = 0x65736C6166;
  }

  if (v19)
  {
    v21 = 0xE500000000000000;
  }

  else
  {
    v21 = 0xE400000000000000;
  }

  v20._object = v21;
  sub_100399068(v20);

  v23 = v61;
  v22 = v62;
  sub_1003993D8();
  sub_100004218(0, &qword_1004D5D30);
  v24 = sub_1003995A8();
  sub_1001E27A8(&qword_1004D5860);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1003C9930;
  *(v25 + 56) = &type metadata for String;
  *(v25 + 64) = sub_100206BA0();
  *(v25 + 32) = v23;
  *(v25 + 40) = v22;
  v26 = v63;
  sub_100398B98();

  sub_100398AE8();
  v49[1] = a1;
  sub_100398AC8();
  sub_1002717C8(&qword_1004D62C8, v60);
  if (sub_100398EF8())
  {
    v27 = *(v50 + 32);
    v60 = v16;
    v28 = v51;
    v27(v51, v15, v10);
    v29 = v52;
    v27((v28 + *(v52 + 48)), v26, v10);
    v30 = v53;
    sub_10000ADB4(v28, v53, &unk_1004D70E0);
    v31 = *(v29 + 48);
    v15 = v55;
    v27(v55, v30, v10);
    v32 = v49[0];
    (v49[0])(v30 + v31, v10);
    sub_100270394(v28, v30);
    v33 = *(v29 + 48);
    v34 = sub_1001E27A8(&qword_1004D6250);
    v27(&v15[*(v34 + 36)], (v30 + v33), v10);
    v32(v30, v10);
    v35 = v54;
    v61 = sub_10026F370();
    sub_1001E27A8(&qword_1004D5D38);
    sub_100397A08();
    type metadata accessor for AttributionCandidate.Provenance(0);
    swift_storeEnumTagMultiPayload();
    v36 = v57;
    v37 = *v57;
    v38 = *(v57 + 1);
    v39 = *(type metadata accessor for ProductionAppSpecifier(0) + 20);
    v40 = &v15[*(v35 + 24)];
    v41 = *(type metadata accessor for AppSpecifier(0) + 20);
    v42 = sub_1003981B8();
    (*(*(v42 - 8) + 16))(&v40[v41], &v36[v39], v42);
    *v40 = v37;
    *(v40 + 1) = v38;
    v16 = v56;
    sub_100270404(v15, v56);
    v10 = v58;
    v26 = *v58;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v10 = v26;
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_9;
    }
  }

  else
  {
    __break(1u);
  }

  v26 = sub_100281388(0, *(v26 + 2) + 1, 1, v26);
  *v10 = v26;
LABEL_9:
  v44 = v59;
  v46 = *(v26 + 2);
  v45 = *(v26 + 3);
  if (v46 >= v45 >> 1)
  {
    *v10 = sub_100281388(v45 > 1, v46 + 1, 1, v26);
  }

  sub_100270468(v15, type metadata accessor for AttributionCandidate);
  v47 = *v10;
  *(v47 + 16) = v46 + 1;
  return sub_100271810(v16, v47 + ((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v44 + 72) * v46);
}

uint64_t sub_100270044()
{
  sub_100003894(v0 + 16);
  sub_100003894(v0 + 56);
  v1 = OBJC_IVAR____TtC11Attribution19JetEngineAttributor_config;
  v2 = sub_100398728();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for JetEngineAttributor()
{
  result = qword_1004D83D0;
  if (!qword_1004D83D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100270158()
{
  result = sub_100398728();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_1002701FC(uint64_t a1)
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
    *(inited + 32) = 0x73746E657665;
    *(inited + 40) = 0xE600000000000000;
    *(inited + 48) = [objc_allocWithZone(NSNumber) initWithInteger:a1];
    sub_1002143B8(inited);
    swift_setDeallocating();
    sub_1001ED244(inited + 32, &qword_1004D5A28);
    sub_100004218(0, &qword_1004D5DC0);
    isa = sub_100398E48().super.isa;

    [v4 sendEvent:v5 customPayload:isa];
  }
}

uint64_t sub_100270394(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001E27A8(&unk_1004D70E0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100270404(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttributionCandidate(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100270468(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1002704C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v131 = sub_1003989C8();
  v121 = *(v131 - 8);
  v6 = __chkstk_darwin(v131);
  v130 = &v95 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v129 = &v95 - v8;
  v9 = sub_100398858();
  __chkstk_darwin(v9 - 8);
  v117 = &v95 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100398778();
  __chkstk_darwin(v11 - 8);
  v116 = &v95 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100397748();
  __chkstk_darwin(v13 - 8);
  v115 = &v95 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = sub_100398B48();
  v120 = *(v128 - 8);
  v15 = __chkstk_darwin(v128);
  v114 = &v95 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v127 = &v95 - v17;
  *&v134 = sub_1003987C8();
  v122 = *(v134 - 8);
  v18 = __chkstk_darwin(v134);
  v113 = &v95 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v133 = &v95 - v20;
  v21 = type metadata accessor for SignpostInterval();
  __chkstk_darwin(v21 - 8);
  v102 = &v95 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  AttributionSignposts.processMatch()(v102);
  v138 = _swiftEmptyArrayStorage;
  sub_1003993D8();
  v23 = sub_100004218(0, &qword_1004D5D30);
  v24 = sub_1003995A8();
  v25 = a3;
  sub_100398B98();

  v26 = *(a3 + 16);
  v118 = a4;
  v27 = *(a4 + 16);
  if (v26 == v27)
  {
    v98 = "";
    v99 = v23;
    v100 = "$_supportedInstallSignals";
    swift_beginAccess();
    if (v26)
    {
      v29 = 0;
      v30 = 0;
      v31 = v25 + 32;
      v126 = v122 + 16;
      v108 = v120 + 16;
      v107 = (v121 + 16);
      v105 = (v120 + 8);
      v106 = v121 + 8;
      v109 = (v122 + 8);
      v104 = v121 + 32;
      v32 = _swiftEmptyArrayStorage;
      *&v28 = 136315138;
      v95 = v28;
      v132 = _swiftEmptyArrayStorage;
      v112 = v26;
      v96 = v25 + 32;
      do
      {
        v125 = v32;
        v119 = v29;
        v33 = (v31 + 16 * v29);
        v34 = *v33;
        v35 = v33[1];
        sub_1000035B8((v101 + 56), *(v101 + 80));

        v97._countAndFlagsBits = v34;
        v36 = v103;
        sub_100397D08();
        v103 = v36;
        if (v36)
        {

          v82 = sub_1003993E8();
          v83 = sub_1003995A8();
          v84 = os_log_type_enabled(v83, v82);
          v67 = v102;
          if (v84)
          {
            v85 = swift_slowAlloc();
            v86 = swift_slowAlloc();
            *v85 = 138543362;
            swift_errorRetain();
            v87 = _swift_stdlib_bridgeErrorToNSError();
            *(v85 + 4) = v87;
            *v86 = v87;
            _os_log_impl(&_mh_execute_header, v83, v82, "failed to query metrics from DB %{public}@", v85, 0xCu);
            sub_1001ED244(v86, &qword_1004D8610);
          }

          *&v136[0] = 0;
          *(&v136[0] + 1) = 0xE000000000000000;
          sub_1003996F8(34);
          v139._countAndFlagsBits = 0xD000000000000020;
          v139._object = 0x800000010042FF70;
          sub_100399068(v139);
          v135 = v103;
          sub_1001E27A8(&qword_1004D4818);
          sub_1003997C8();
          v88 = sub_100398F28();

          sub_1001E27A8(&qword_1004D7920);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_1003C9930;
          *&v136[0] = 0x7972657571;
          *(&v136[0] + 1) = 0xE500000000000000;
          sub_1003996A8();
          *(inited + 96) = &type metadata for String;
          *(inited + 72) = v97._countAndFlagsBits;
          *(inited + 80) = v35;
          sub_10025EFB4(inited);
          swift_setDeallocating();
          sub_1001ED244(inited + 32, &unk_1004D7E90);
          isa = sub_100398E48().super.isa;

          v91 = sub_100398F28();
          CreateDiagnosticReport();

          swift_willThrow();
          if (v30)
          {
            sub_100003894(v137);
          }

          goto LABEL_38;
        }

        if (v30)
        {
          sub_100003894(v137);
        }

        sub_100004A68(v136, v137);
        v37 = sub_1000035B8(v137, v137[3]);
        __chkstk_darwin(v37);
        (*(v39 + 16))(&v95 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0));
        v40 = v134;
        v41 = sub_100399208();
        v138 = v41;

        v42 = sub_1003993D8();
        v43 = sub_1003995A8();
        if (os_log_type_enabled(v43, v42))
        {
          v44 = swift_slowAlloc();
          v45 = swift_slowAlloc();
          *&v136[0] = v45;
          *v44 = v95;

          v46 = sub_1003991A8();
          v48 = v47;

          v49 = sub_100005700(v46, v48, v136);

          *(v44 + 4) = v49;
          v40 = v134;
          _os_log_impl(&_mh_execute_header, v43, v42, "found ad %s", v44, 0xCu);
          sub_100003894(v45);
        }

        v50 = v133;
        v97._object = v35;
        v51 = *(v41 + 16);

        v110 = v51;
        if (v51)
        {
          v53 = 0;
          v54 = v132;
          v111 = v41;
          while (v53 < *(v41 + 16))
          {
            v55 = v41 + ((*(v122 + 80) + 32) & ~*(v122 + 80));
            v56 = *(v122 + 72);
            v125 = v53;
            v57 = *(v122 + 16);
            v57(v50, v55 + v56 * v53, v40);
            sub_1003987A8();
            if (!v58)
            {

              sub_1003993E8();
              v76 = sub_1003995A8();
              sub_100398B98();

              *&v136[0] = 0;
              *(&v136[0] + 1) = 0xE000000000000000;
              sub_1003996F8(35);

              *&v136[0] = 0xD000000000000021;
              *(&v136[0] + 1) = 0x80000001004301D0;
              sub_100399068(v97);

              v77 = v136[0];
              sub_100271874();
              swift_allocError();
              *v78 = 5101;
              *(v78 + 8) = v77;
              swift_willThrow();
              (*v109)(v50, v40);
              sub_100003894(v137);
LABEL_30:

              v67 = v102;
              goto LABEL_39;
            }

            result = sub_100398788();
            if (!v59)
            {

              sub_1003993E8();
              v79 = sub_1003995A8();
              sub_100398B98();

              *&v136[0] = 0;
              *(&v136[0] + 1) = 0xE000000000000000;
              sub_1003996F8(31);

              *&v136[0] = 0xD00000000000001DLL;
              *(&v136[0] + 1) = 0x8000000100430220;
              sub_100399068(v97);

              v80 = v136[0];
              sub_100271874();
              swift_allocError();
              *v81 = 5102;
              *(v81 + 8) = v80;
              swift_willThrow();
              (*v109)(v133, v134);
              sub_100003894(v137);
              goto LABEL_30;
            }

            if (v119 >= v112)
            {
              goto LABEL_41;
            }

            v123 = result;
            v124 = v57;
            v60 = v120;

            sub_100398B38();
            v132 = v54;
            sub_100398B28();
            sub_100398B18();
            v61 = v127;
            v54 = v132;
            sub_100398B08();
            (*(v60 + 16))(v114, v61, v128);
            v124(v113, v133, v134);
            v62 = v129;
            sub_1003989B8();
            (*v107)(v130, v62, v131);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v54 = sub_100281360(0, v54[2] + 1, 1, v54);
            }

            v64 = v54[2];
            v63 = v54[3];
            v50 = v133;
            v40 = v134;
            if (v64 >= v63 >> 1)
            {
              v54 = sub_100281360(v63 > 1, v64 + 1, 1, v54);
            }

            v53 = v125 + 1;
            v65 = v121;
            v66 = v131;
            (*(v121 + 8))(v129, v131);
            (*v105)(v127, v128);
            (*v109)(v50, v40);
            v54[2] = v64 + 1;
            result = (*(v65 + 32))(v54 + ((*(v65 + 80) + 32) & ~*(v65 + 80)) + *(v65 + 72) * v64, v130, v66);
            v41 = v111;
            if (v110 == v53)
            {
              goto LABEL_22;
            }
          }

          __break(1u);
LABEL_41:
          __break(1u);
          return result;
        }

        v54 = v132;
LABEL_22:
        v132 = v54;
        v29 = v119 + 1;

        v30 = 1;
        v32 = v41;
        v26 = v112;
        v31 = v96;
      }

      while (v29 != v112);
      v67 = v102;
      if (v132[2] != v112)
      {
        goto LABEL_36;
      }

      sub_100003894(v137);
      v68 = v132;
      goto LABEL_27;
    }

    v68 = _swiftEmptyArrayStorage;
    v67 = v102;
    if (!_swiftEmptyArrayStorage[2])
    {
LABEL_27:

      sub_10027C30C();
      sub_100270468(v67, type metadata accessor for SignpostInterval);
      return v68;
    }

LABEL_36:

    sub_1003993E8();
    v92 = sub_1003995A8();
    sub_1001E27A8(&qword_1004D5860);
    v93 = swift_allocObject();
    *(v93 + 16) = xmmword_1003EB210;
    *(v93 + 56) = &type metadata for Int;
    *(v93 + 64) = &protocol witness table for Int;
    *(v93 + 32) = v26;
    *(v93 + 96) = &type metadata for Int;
    *(v93 + 104) = &protocol witness table for Int;
    *(v93 + 72) = v26;
    sub_100398B98();

    sub_100271874();
    swift_allocError();
    *v94 = xmmword_1003EF0B0;
    *(v94 + 16) = 0x8000000100430180;
    swift_willThrow();
    if (v26)
    {
      sub_100003894(v137);
    }

LABEL_38:
  }

  else
  {
    sub_1003993E8();
    v69 = sub_1003995A8();
    sub_1001E27A8(&qword_1004D5860);
    v70 = swift_allocObject();
    v134 = xmmword_1003EB210;
    *(v70 + 16) = xmmword_1003EB210;
    *(v70 + 56) = &type metadata for Int;
    *(v70 + 64) = &protocol witness table for Int;
    *(v70 + 32) = v26;
    *(v70 + 96) = &type metadata for Int;
    *(v70 + 104) = &protocol witness table for Int;
    *(v70 + 72) = v27;
    sub_100398B98();

    v71 = sub_100398F28();
    sub_1001E27A8(&qword_1004D7920);
    v72 = swift_initStackObject();
    *(v72 + 16) = v134;
    *&v136[0] = 0x7972657571;
    *(&v136[0] + 1) = 0xE500000000000000;
    sub_1003996A8();
    *(v72 + 96) = &type metadata for Int;
    *(v72 + 72) = v26;
    *&v136[0] = 0x74616469646E6163;
    *(&v136[0] + 1) = 0xEA00000000007365;
    sub_1003996A8();
    *(v72 + 168) = &type metadata for Int;
    *(v72 + 144) = v27;
    sub_10025EFB4(v72);
    swift_setDeallocating();
    sub_1001E27A8(&unk_1004D7E90);
    swift_arrayDestroy();
    v73 = sub_100398E48().super.isa;

    v74 = sub_100398F28();
    CreateDiagnosticReport();

    sub_100271874();
    swift_allocError();
    *v75 = xmmword_1003EF0A0;
    *(v75 + 16) = 0x8000000100430180;
    swift_willThrow();
    v67 = v102;
  }

LABEL_39:
  sub_10027C30C();
  return sub_100270468(v67, type metadata accessor for SignpostInterval);
}

uint64_t sub_1002717C8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100271810(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttributionCandidate(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_100271874()
{
  result = qword_1004D84F8;
  if (!qword_1004D84F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004D84F8);
  }

  return result;
}

uint64_t sub_1002718C8()
{
  v0 = sub_100398FA8();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100398F98();
  v4 = sub_100398F68();
  v6 = v5;
  (*(v1 + 8))(v3, v0);
  if (v6 >> 60 == 15)
  {
    sub_1003993E8();
    sub_100004218(0, &qword_1004D5D30);
    v7 = sub_1003995A8();
    sub_100398B98();
  }

  else
  {
    v8 = objc_opt_self();
    isa = sub_100397538().super.isa;
    v23[0] = 0;
    v10 = [v8 JSONObjectWithData:isa options:0 error:v23];

    if (v10)
    {
      v11 = v23[0];
      sub_100399648();
      swift_unknownObjectRelease();
      sub_1001E27A8(&qword_1004D5E00);
      if (swift_dynamicCast())
      {
        sub_1001DDE50(v4, v6);
        return v22[1];
      }

      sub_1003993E8();
      sub_100004218(0, &qword_1004D5D30);
      v21 = sub_1003995A8();
      sub_100398B98();

      sub_1001DDE50(v4, v6);
    }

    else
    {
      v13 = v23[0];
      sub_1003973E8();

      swift_willThrow();
      v14 = sub_1003993E8();
      sub_100004218(0, &qword_1004D5D30);
      v15 = sub_1003995A8();
      if (os_log_type_enabled(v15, v14))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v23[0] = v17;
        *v16 = 136446210;
        swift_getErrorValue();
        v18 = sub_100399AC8();
        v20 = sub_100005700(v18, v19, v23);

        *(v16 + 4) = v20;
        _os_log_impl(&_mh_execute_header, v15, v14, "Can't deserialize conversion metric: %{public}s.", v16, 0xCu);
        sub_100003894(v17);

        sub_1001DDE50(v4, v6);
      }

      else
      {
        sub_1001DDE50(v4, v6);
      }
    }
  }

  return 0;
}

uint64_t sub_100271D68(char *a1, void (*a2)(uint64_t), uint64_t a3)
{
  v4 = v3;
  v21 = a3;
  v7 = sub_100397748();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100398BD8();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v4 + OBJC_IVAR____TtC11Attribution19ConversionProcessor_conversionSignposts;
  v16 = type metadata accessor for ConversionSignposts();
  (*(v12 + 16))(v14, v15 + *(v16 + 20), v11);
  sub_100397DF8();
  swift_allocObject();
  sub_100397DE8();
  sub_1003983A8();
  sub_100398358();
  sub_1003985B8();
  swift_allocObject();

  v17 = sub_1003985A8();
  type metadata accessor for OnDeviceConversionTransmitter();
  v18 = swift_allocObject();
  sub_100397738();
  sub_100275748(a1, v17, v18, v10, a2, v21, v4);

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_100271FC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a8;
  v8[7] = v10;
  v8[4] = a6;
  v8[5] = a7;
  v8[2] = a4;
  v8[3] = a5;
  return _swift_task_switch(sub_100271FF0, 0, 0);
}

uint64_t sub_100271FF0()
{
  v1 = *sub_1000035B8(*(v0 + 40), *(*(v0 + 40) + 24));
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  *v2 = v0;
  v2[1] = sub_1002720B0;
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  v5 = *(v0 + 16);

  return sub_1002761B0(v4, v3, v1, v5);
}

uint64_t sub_1002720B0()
{

  return _swift_task_switch(sub_1002721AC, 0, 0);
}

uint64_t sub_1002721AC()
{
  (*(v0 + 48))();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100272210(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_100398628();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v6 = sub_1003989E8();
  v4[9] = v6;
  v4[10] = *(v6 - 8);
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  v7 = sub_100398668();
  v4[14] = v7;
  v4[15] = *(v7 - 8);
  v4[16] = swift_task_alloc();
  v8 = sub_100398A08();
  v4[17] = v8;
  v4[18] = *(v8 - 8);
  v4[19] = swift_task_alloc();
  type metadata accessor for SignpostInterval();
  v4[20] = swift_task_alloc();

  return _swift_task_switch(sub_10027242C, 0, 0);
}

uint64_t sub_10027242C()
{
  v1 = v0[19];
  v2 = v0[18];
  v4 = v0[15];
  v3 = v0[16];
  v5 = v0[14];
  v6 = v0[7];
  v18 = v0[8];
  v19 = v0[17];
  v20 = v0[6];
  v8 = v0[3];
  v7 = v0[4];
  sub_100239A5C(v0[20]);
  (*(v4 + 16))(v3, v8, v5);
  sub_1003989F8();
  v9 = v7[3];
  v10 = v7[4];
  sub_1000035B8(v7, v9);
  (*(v2 + 16))(v18, v1, v19);
  (*(v6 + 104))(v18, enum case for IntentMessage.conversionMatchingStep1(_:), v20);
  sub_100398708();
  type metadata accessor for ConversionSignposts();
  v11 = sub_1003986E8();
  v0[21] = v11;
  v12 = swift_task_alloc();
  v0[22] = v12;
  v13 = sub_10027717C(&unk_1004D8630, &type metadata accessor for ConversionMatchingStep1Intent.ReturnType);
  *v12 = v0;
  v12[1] = sub_10027260C;
  v14 = v0[12];
  v15 = v0[8];
  v16 = v0[9];

  return dispatch thunk of JetServiceRequesting.dispatch<A>(message:options:)(v14, v15, v11, v16, v13, v9, v10);
}

uint64_t sub_10027260C()
{
  v2 = *v1;
  *(*v1 + 184) = v0;

  (*(v2[7] + 8))(v2[8], v2[6]);

  if (v0)
  {
    v3 = sub_100272A94;
  }

  else
  {
    v3 = sub_100272790;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100272790()
{
  v28 = v0;
  v1 = v0[13];
  v3 = v0[10];
  v2 = v0[11];
  v4 = v0[9];
  v26 = *(v3 + 32);
  v26(v1, v0[12], v4);
  v5 = sub_1003993D8();
  sub_100004218(0, &qword_1004D5D30);
  v6 = sub_1003995A8();
  (*(v3 + 16))(v2, v1, v4);
  v25 = v5;
  v7 = os_log_type_enabled(v6, v5);
  v9 = v0[18];
  v8 = v0[19];
  v10 = v0[17];
  v12 = v0[10];
  v11 = v0[11];
  v13 = v0[9];
  if (v7)
  {
    v14 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v27 = v22;
    *v14 = 136380675;
    sub_1003989D8();
    v23 = v10;
    v24 = v8;
    v15 = sub_1003991A8();
    v17 = v16;

    (*(v12 + 8))(v11, v13);
    v18 = sub_100005700(v15, v17, &v27);

    *(v14 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v6, v25, "Completed step 1. Got the query: %{private}s", v14, 0xCu);
    sub_100003894(v22);

    (*(v9 + 8))(v24, v23);
  }

  else
  {

    (*(v12 + 8))(v11, v13);
    (*(v9 + 8))(v8, v10);
  }

  v19 = v0[20];
  v26(v0[2], v0[13], v0[9]);
  sub_10027C30C();
  sub_1002609D4(v19, type metadata accessor for SignpostInterval);

  v20 = v0[1];

  return v20();
}

uint64_t sub_100272A94()
{
  v1 = sub_1003993E8();
  sub_100004218(0, &qword_1004D5D30);
  v2 = sub_1003995A8();
  if (os_log_type_enabled(v2, v1))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138543362;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v2, v1, "Step 1 failed: %{public}@", v3, 0xCu);
    sub_1001ED244(v4, &qword_1004D8610);
  }

  v7 = v0[19];
  v6 = v0[20];
  v8 = v0[17];
  v9 = v0[18];

  sub_1002756F4();
  swift_allocError();
  *v10 = 3;
  swift_willThrow();

  (*(v9 + 8))(v7, v8);
  sub_10027C30C();
  sub_1002609D4(v6, type metadata accessor for SignpostInterval);

  v11 = v0[1];

  return v11();
}

uint64_t sub_100272CF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[10] = a4;
  v5[11] = v4;
  v5[8] = a2;
  v5[9] = a3;
  v5[7] = a1;
  v6 = sub_100398628();
  v5[12] = v6;
  v5[13] = *(v6 - 8);
  v5[14] = swift_task_alloc();
  v7 = sub_100398A38();
  v5[15] = v7;
  v5[16] = *(v7 - 8);
  v5[17] = swift_task_alloc();
  v8 = sub_100398668();
  v5[18] = v8;
  v5[19] = *(v8 - 8);
  v5[20] = swift_task_alloc();
  v9 = sub_100398A58();
  v5[21] = v9;
  v5[22] = *(v9 - 8);
  v5[23] = swift_task_alloc();
  type metadata accessor for SignpostInterval();
  v5[24] = swift_task_alloc();

  return _swift_task_switch(sub_100272EF8, 0, 0);
}

uint64_t sub_100272EF8()
{
  sub_100239A6C(v0[24]);
  v1 = *(sub_1003989D8() + 16);

  if (v1)
  {
    v40 = v0[11];
    v2 = sub_1003989D8();
    v38 = *(v2 + 16);
    if (v38)
    {
      v9 = 0;
      v36 = v0[11];
      v10 = v2 + 40;
      v11 = _swiftEmptyArrayStorage;
      v37 = v2;
      while (v9 < *(v2 + 16))
      {

        v12 = objc_autoreleasePoolPush();
        sub_1000035B8((v40 + 16), *(v36 + 40));
        sub_100398748();
        sub_100397D08();

        v42 = v12;
        v13 = v0[5];
        sub_1000035B8(v0 + 2, v13);
        v14 = v11;
        v15 = *(v13 - 8);
        swift_task_alloc();
        (*(v15 + 16))();
        v11 = v14;
        v16 = sub_100399208();

        sub_100003894((v0 + 2));
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v11 = sub_10028122C(0, v14[2] + 1, 1, v14);
        }

        v18 = v11[2];
        v17 = v11[3];
        v19 = v42;
        if (v18 >= v17 >> 1)
        {
          v11 = sub_10028122C((v17 > 1), v18 + 1, 1, v11);
          v19 = v42;
        }

        ++v9;
        v11[2] = v18 + 1;
        v11[v18 + 4] = v16;
        objc_autoreleasePoolPop(v19);
        v10 += 16;
        v2 = v37;
        if (v38 == v9)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
    }

    else
    {
      v11 = _swiftEmptyArrayStorage;
LABEL_13:
      v0[25] = v11;
      v23 = v0[22];
      v22 = v0[23];
      v24 = v0[20];
      v26 = v0[18];
      v25 = v0[19];
      v27 = v0[13];
      v39 = v0[14];
      v41 = v0[21];
      v43 = v0[12];
      v29 = v0[8];
      v28 = v0[9];

      (*(v25 + 16))(v24, v29, v26);

      sub_100398A48();
      v30 = v28[3];
      v31 = v28[4];
      sub_1000035B8(v28, v30);
      (*(v23 + 16))(v39, v22, v41);
      (*(v27 + 104))(v39, enum case for IntentMessage.conversionMatchingStep2(_:), v43);
      sub_100398708();
      type metadata accessor for ConversionSignposts();
      v32 = sub_1003986E8();
      v0[26] = v32;
      v33 = swift_task_alloc();
      v0[27] = v33;
      v6 = sub_10027717C(&qword_1004D8628, &type metadata accessor for ConversionMatchingStep2Intent.ReturnType);
      *v33 = v0;
      v33[1] = sub_1002735EC;
      v2 = v0[17];
      v3 = v0[14];
      v5 = v0[15];
      v4 = v32;
      v7 = v30;
      v8 = v31;
    }

    return dispatch thunk of JetServiceRequesting.dispatch<A>(message:options:)(v2, v3, v4, v5, v6, v7, v8);
  }

  else
  {
    sub_1003993E8();
    sub_100004218(0, &qword_1004D5D30);
    v20 = sub_1003995A8();
    sub_100398B98();

    sub_1002756F4();
    swift_allocError();
    *v21 = 4;
    swift_willThrow();
    sub_10027C30C();
    sub_1002609D4(v0[24], type metadata accessor for SignpostInterval);

    v34 = v0[1];

    return v34();
  }
}

uint64_t sub_1002735EC()
{
  v2 = *v1;
  *(*v1 + 224) = v0;

  (*(v2[13] + 8))(v2[14], v2[12]);

  if (v0)
  {
    v3 = sub_100273888;
  }

  else
  {
    v3 = sub_100273770;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100273770()
{
  v1 = v0[24];
  v3 = v0[16];
  v2 = v0[17];
  v4 = v0[15];
  v5 = v0[7];
  (*(v0[22] + 8))(v0[23], v0[21]);
  (*(v3 + 32))(v5, v2, v4);

  sub_10027C30C();
  sub_1002609D4(v1, type metadata accessor for SignpostInterval);

  v6 = v0[1];

  return v6();
}

uint64_t sub_100273888()
{
  v1 = sub_1003993E8();
  sub_100004218(0, &qword_1004D5D30);
  v2 = sub_1003995A8();
  if (os_log_type_enabled(v2, v1))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138543362;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v2, v1, "Step 2 failed: %{public}@", v3, 0xCu);
    sub_1001ED244(v4, &qword_1004D8610);
  }

  v7 = v0[22];
  v6 = v0[23];
  v8 = v0[21];

  sub_1002756F4();
  swift_allocError();
  *v9 = 6;
  swift_willThrow();

  (*(v7 + 8))(v6, v8);

  sub_10027C30C();
  sub_1002609D4(v0[24], type metadata accessor for SignpostInterval);

  v10 = v0[1];

  return v10();
}

uint64_t sub_100273AD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[19] = a3;
  v4[20] = v3;
  v4[17] = a1;
  v4[18] = a2;
  v5 = sub_1003986D8();
  v4[21] = v5;
  v4[22] = *(v5 - 8);
  v4[23] = swift_task_alloc();
  v6 = sub_100398628();
  v4[24] = v6;
  v4[25] = *(v6 - 8);
  v4[26] = swift_task_alloc();
  v7 = sub_100398A88();
  v4[27] = v7;
  v4[28] = *(v7 - 8);
  v4[29] = swift_task_alloc();
  v4[30] = swift_task_alloc();
  v8 = sub_100398668();
  v4[31] = v8;
  v4[32] = *(v8 - 8);
  v4[33] = swift_task_alloc();
  v4[34] = swift_task_alloc();
  v4[35] = swift_task_alloc();
  v9 = sub_100398AA8();
  v4[36] = v9;
  v4[37] = *(v9 - 8);
  v4[38] = swift_task_alloc();
  sub_1001E27A8(&unk_1004D85F8);
  v4[39] = swift_task_alloc();
  v10 = sub_1003987C8();
  v4[40] = v10;
  v4[41] = *(v10 - 8);
  v4[42] = swift_task_alloc();
  v4[43] = swift_task_alloc();
  v4[44] = swift_task_alloc();
  type metadata accessor for SignpostInterval();
  v4[45] = swift_task_alloc();

  return _swift_task_switch(sub_100273E08, 0, 0);
}

uint64_t sub_100273E08()
{
  v81 = v0;
  sub_100239A7C(*(v0 + 360));
  sub_100398A18();
  if (v1)
  {
    sub_100398A28();
    if (v2)
    {
      v3 = *(v0 + 160);
      sub_1003993D8();
      *(v0 + 368) = sub_100004218(0, &qword_1004D5D30);
      v4 = sub_1003995A8();
      sub_100398B98();

      sub_1000035B8((v3 + 16), *(v3 + 40));
      sub_100397D08();
      v24 = *(v0 + 328);
      v74 = *(v0 + 312);
      v76 = *(v0 + 320);

      sub_100004A68((v0 + 56), v0 + 16);
      v25 = *(v0 + 40);
      sub_1000035B8((v0 + 16), v25);
      v26 = *(v25 - 8);
      swift_task_alloc();
      (*(v26 + 16))();
      *(v0 + 120) = swift_getAssociatedTypeWitness();
      *(v0 + 128) = swift_getAssociatedConformanceWitness();
      sub_1001E6B7C((v0 + 96));
      sub_100399118();

      sub_1001F54B4(v0 + 96, *(v0 + 120));
      sub_100399618();
      if ((*(v24 + 48))(v74, 1, v76) == 1)
      {
        v27 = *(v0 + 312);

        sub_1001ED244(v27, &unk_1004D85F8);
        sub_1003993E8();
        v28 = sub_1003995A8();
        sub_100398B98();

        sub_1002756F4();
        swift_allocError();
        *v29 = 7;
        swift_willThrow();
        sub_100003894(v0 + 16);
        sub_100003894(v0 + 96);
        sub_10027C30C();
        sub_1002609D4(*(v0 + 360), type metadata accessor for SignpostInterval);

        v30 = *(v0 + 8);

        return v30();
      }

      else
      {
        v32 = *(v0 + 344);
        v31 = *(v0 + 352);
        v34 = *(v0 + 320);
        v33 = *(v0 + 328);
        (*(v33 + 32))(v31, *(v0 + 312), v34);
        v35 = sub_1003993D8();
        v36 = sub_1003995A8();
        v75 = *(v33 + 16);
        v75(v32, v31, v34);
        v72 = v35;
        v37 = v35;
        v38 = v36;
        v39 = os_log_type_enabled(v36, v37);
        v40 = *(v0 + 344);
        v42 = *(v0 + 320);
        v41 = *(v0 + 328);
        if (v39)
        {
          v43 = swift_slowAlloc();
          v44 = swift_slowAlloc();
          v80[0] = v44;
          *v43 = 136315138;
          v45 = sub_1003987B8();
          v47 = v46;
          v48 = *(v41 + 8);
          v48(v40, v42);
          v49 = sub_100005700(v45, v47, v80);

          *(v43 + 4) = v49;
          _os_log_impl(&_mh_execute_header, v38, v72, "Step 2 Ad: %s", v43, 0xCu);
          sub_100003894(v44);
        }

        else
        {

          v48 = *(v41 + 8);
          v48(v40, v42);
        }

        *(v0 + 376) = v48;
        v50 = *(v0 + 352);
        v51 = *(v0 + 336);
        v52 = *(v0 + 320);
        v53 = *(v0 + 296);
        v54 = *(v0 + 304);
        v55 = *(v0 + 280);
        v56 = *(v0 + 248);
        v57 = *(v0 + 256);
        v58 = *(v0 + 200);
        v59 = *(v0 + 208);
        v71 = *(v0 + 288);
        v73 = *(v0 + 192);
        v60 = *(v0 + 136);
        v61 = *(v0 + 144);
        v62 = *(v57 + 16);
        *(v0 + 384) = v62;
        *(v0 + 392) = (v57 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
        v62(v55, v60, v56);
        v75(v51, v50, v52);
        sub_100398A98();
        v63 = v61[3];
        v64 = v61[4];
        sub_1000035B8(v61, v63);
        (*(v53 + 16))(v59, v54, v71);
        (*(v58 + 104))(v59, enum case for IntentMessage.conversionMatchingStep3(_:), v73);
        sub_100398708();
        type metadata accessor for ConversionSignposts();
        v65 = sub_1003986E8();
        *(v0 + 400) = v65;
        v66 = swift_task_alloc();
        *(v0 + 408) = v66;
        v67 = sub_10027717C(&unk_1004D8618, &type metadata accessor for ConversionMatchingStep3Intent.ReturnType);
        *v66 = v0;
        v66[1] = sub_1002749D4;
        v68 = *(v0 + 232);
        v69 = *(v0 + 208);
        v70 = *(v0 + 216);

        return dispatch thunk of JetServiceRequesting.dispatch<A>(message:options:)(v68, v69, v65, v70, v67, v63, v64);
      }
    }
  }

  v6 = *(v0 + 256);
  v5 = *(v0 + 264);
  v7 = *(v0 + 248);
  v8 = *(v0 + 136);
  v9 = sub_1003993F8();
  sub_100004218(0, &qword_1004D5D30);
  v10 = sub_1003995A8();
  (*(v6 + 16))(v5, v8, v7);
  v79 = v9;
  v11 = os_log_type_enabled(v10, v9);
  v12 = *(v0 + 256);
  v13 = *(v0 + 264);
  v14 = *(v0 + 248);
  if (v11)
  {
    v15 = *(v0 + 176);
    v16 = *(v0 + 184);
    v77 = *(v0 + 168);
    v17 = swift_slowAlloc();
    v78 = swift_slowAlloc();
    v80[0] = v78;
    *v17 = 136446210;
    sub_100398648();
    v18 = sub_100398698();
    v20 = v19;
    (*(v15 + 8))(v16, v77);
    (*(v12 + 8))(v13, v14);
    v21 = sub_100005700(v18, v20, v80);

    *(v17 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v10, v79, "No conversion for: %{public}s", v17, 0xCu);
    sub_100003894(v78);
  }

  else
  {

    (*(v12 + 8))(v13, v14);
  }

  sub_10027C30C();
  sub_1002609D4(*(v0 + 360), type metadata accessor for SignpostInterval);

  v22 = *(v0 + 8);

  return v22(0, 0, 0, 0);
}

uint64_t sub_1002749D4()
{
  v2 = *v1;
  *(*v1 + 416) = v0;

  (*(v2[25] + 8))(v2[26], v2[24]);

  if (v0)
  {
    v3 = sub_1002752B4;
  }

  else
  {
    v3 = sub_100274B58;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100274B58()
{
  v66 = v0;
  (*(v0[28] + 32))(v0[30], v0[29], v0[27]);
  sub_1003993D8();
  v1 = sub_1003995A8();
  sub_100398B98();

  sub_100398A78();
  if (!v2)
  {
    goto LABEL_7;
  }

  v3 = sub_100398A68();
  if (!v4)
  {

LABEL_7:
    v57 = v0[44];
    v60 = v0[47];
    v54 = v0[40];
    v28 = v0[37];
    v49 = v0[36];
    v51 = v0[38];
    v29 = v0[30];
    v30 = v0[27];
    v31 = v0[28];
    sub_1003993E8();
    v32 = sub_1003995A8();
    sub_100398B98();

    sub_1002756F4();
    swift_allocError();
    v34 = 9;
    goto LABEL_8;
  }

  v5 = v3;
  v6 = v4;
  v7 = sub_1002718C8();

  if (v7)
  {
    v59 = v6;
    v62 = v7;
    v63 = v5;
    v8 = v0[48];
    v9 = v0[34];
    v10 = v0[31];
    v11 = v0[17];
    v12 = sub_1003993F8();
    v13 = sub_1003995A8();
    v8(v9, v11, v10);
    v56 = v12;
    v14 = os_log_type_enabled(v13, v12);
    v15 = v0[34];
    v16 = v0[31];
    v17 = v0[32];
    if (v14)
    {
      v18 = v0[22];
      v19 = v0[23];
      v20 = v0[21];
      v21 = swift_slowAlloc();
      v65[0] = swift_slowAlloc();
      *v21 = 136446466;
      log = v13;
      sub_100398648();
      v22 = sub_100398698();
      v24 = v23;
      (*(v18 + 8))(v19, v20);
      (*(v17 + 8))(v15, v16);
      v25 = sub_100005700(v22, v24, v65);

      *(v21 + 4) = v25;
      *(v21 + 12) = 2082;
      v26 = v59;
      *(v21 + 14) = sub_100005700(v63, v59, v65);
      _os_log_impl(&_mh_execute_header, log, v56, "Completed conversion matching for: %{public}s. The winning impressionId: %{public}s.", v21, 0x16u);
      swift_arrayDestroy();

      v27 = v63;
    }

    else
    {

      (*(v17 + 8))(v15, v16);
      v27 = v63;
      v26 = v59;
    }

    v52 = v0[47];
    v48 = v0[40];
    v50 = v0[44];
    v38 = v0[37];
    v39 = v0[38];
    v40 = v0[36];
    v41 = v0[30];
    v42 = v0[27];
    v43 = v0[28];
    v64 = sub_100276E18(v62, v27, v26);
    v58 = v45;
    v61 = v44;
    v55 = v46;

    (*(v43 + 8))(v41, v42);
    (*(v38 + 8))(v39, v40);
    v52(v50, v48);
    sub_100003894((v0 + 2));
    sub_100003894((v0 + 12));
    sub_10027C30C();
    sub_1002609D4(v0[45], type metadata accessor for SignpostInterval);

    v47 = v0[1];

    return v47(v64, v61, v58, v55);
  }

  v57 = v0[44];
  v60 = v0[47];
  v54 = v0[40];
  v28 = v0[37];
  v49 = v0[36];
  v51 = v0[38];
  v29 = v0[30];
  v30 = v0[27];
  v31 = v0[28];

  sub_1003993E8();
  v37 = sub_1003995A8();
  sub_100398B98();

  sub_1002756F4();
  swift_allocError();
  v34 = 10;
LABEL_8:
  *v33 = v34;
  swift_willThrow();
  (*(v31 + 8))(v29, v30);
  (*(v28 + 8))(v51, v49);
  v60(v57, v54);
  sub_100003894((v0 + 2));
  sub_100003894((v0 + 12));
  sub_10027C30C();
  sub_1002609D4(v0[45], type metadata accessor for SignpostInterval);

  v35 = v0[1];

  return v35();
}

uint64_t sub_1002752B4()
{
  v1 = sub_1003993E8();
  v2 = sub_1003995A8();
  if (os_log_type_enabled(v2, v1))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138543362;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v2, v1, "Step 3 failed: %{public}@", v3, 0xCu);
    sub_1001ED244(v4, &qword_1004D8610);
  }

  v6 = v0[47];
  v7 = v0[44];
  v8 = v0[40];
  v9 = v0[37];
  v10 = v0[38];
  v11 = v0[36];

  sub_1002756F4();
  swift_allocError();
  *v12 = 8;
  swift_willThrow();

  (*(v9 + 8))(v10, v11);
  v6(v7, v8);
  sub_100003894((v0 + 2));
  sub_100003894((v0 + 12));
  sub_10027C30C();
  sub_1002609D4(v0[45], type metadata accessor for SignpostInterval);

  v13 = v0[1];

  return v13();
}

uint64_t sub_100275574()
{
  sub_100003894(v0 + 16);

  sub_1002609D4(v0 + OBJC_IVAR____TtC11Attribution19ConversionProcessor_conversionSignposts, type metadata accessor for ConversionSignposts);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ConversionProcessor()
{
  result = qword_1004D8530;
  if (!qword_1004D8530)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100275650()
{
  result = type metadata accessor for ConversionSignposts();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_1002756F4()
{
  result = qword_1004D8608;
  if (!qword_1004D8608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004D8608);
  }

  return result;
}

uint64_t sub_100275748(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t), uint64_t a6, uint64_t a7)
{
  v96 = a6;
  v95 = a5;
  v87 = a4;
  v11 = sub_1001E27A8(&qword_1004D70F0);
  __chkstk_darwin(v11 - 8);
  v93 = &v79 - v12;
  v13 = sub_100397748();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v83 = &v79 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_100398668();
  v90 = *(v91 - 8);
  v16 = __chkstk_darwin(v91);
  v88 = &v79 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = v17;
  __chkstk_darwin(v16);
  v89 = &v79 - v18;
  v19 = sub_1001E27A8(&qword_1004D8640);
  v20 = __chkstk_darwin(v19 - 8);
  v82 = &v79 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v92 = &v79 - v22;
  v97 = sub_1003986D8();
  v23 = *(v97 - 8);
  v24 = __chkstk_darwin(v97);
  v81 = &v79 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v80 = &v79 - v27;
  __chkstk_darwin(v26);
  v29 = &v79 - v28;
  v30 = sub_1001E27A8(&qword_1004D4CE0);
  __chkstk_darwin(v30 - 8);
  v32 = &v79 - v31;
  v101[3] = sub_1003985B8();
  v101[4] = &protocol witness table for JetServiceRequester;
  v101[0] = a2;
  v100[3] = type metadata accessor for OnDeviceConversionTransmitter();
  v100[4] = &off_10047C178;
  v100[0] = a3;

  v33 = a1;
  v34 = sub_1003986B8();
  v36 = v35;
  v37 = *(a7 + 40);
  v94 = a7;
  sub_1000035B8((a7 + 16), v37);
  v84 = v14;
  v38 = *(v14 + 56);
  v85 = v13;
  v38(v32, 1, 1, v13);
  LOBYTE(v34) = sub_100280684(v34, v36, v32);

  sub_1001ED244(v32, &qword_1004D4CE0);
  v39 = sub_1003993F8();
  sub_100004218(0, &qword_1004D5D30);
  v40 = sub_1003995A8();
  v41 = *(v23 + 16);
  if (v34)
  {
    v80 = v33;
    v41(v29, v33, v97);
    if (os_log_type_enabled(v40, v39))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      *&v99[0] = v43;
      *v42 = 136315138;
      v44 = sub_100398698();
      v46 = v45;
      v47 = v29;
      v48 = v97;
      (*(v23 + 8))(v47, v97);
      v49 = sub_100005700(v44, v46, v99);

      *(v42 + 4) = v49;
      _os_log_impl(&_mh_execute_header, v40, v39, "Found actions for %s. Started matching.", v42, 0xCu);
      sub_100003894(v43);
    }

    else
    {

      v59 = v29;
      v48 = v97;
      (*(v23 + 8))(v59, v97);
    }

    v60 = *(v94 + 56);
    v61 = v80;
    if (v60 && (v62 = [v60 dictionary]) != 0)
    {
      v63 = v62;
      sub_100004218(0, &qword_1004D5DC0);
      sub_100398E68();

      v64 = v92;
      sub_100398EA8();
    }

    else
    {
      v65 = sub_100398B58();
      v64 = v92;
      (*(*(v65 - 8) + 56))(v92, 1, 1, v65);
    }

    sub_10000ADB4(v64, v82, &qword_1004D8640);
    v41(v81, v61, v48);
    (*(v84 + 16))(v83, v87, v85);
    v66 = v89;
    sub_100398658();
    v67 = sub_100399268();
    (*(*(v67 - 8) + 56))(v93, 1, 1, v67);
    v68 = v90;
    v69 = v88;
    v70 = v91;
    (*(v90 + 16))(v88, v66, v91);
    sub_100003554(v101, v99);
    sub_100003554(v100, v98);
    v71 = (*(v68 + 80) + 40) & ~*(v68 + 80);
    v72 = (v86 + v71 + 7) & 0xFFFFFFFFFFFFFFF8;
    v73 = (v72 + 47) & 0xFFFFFFFFFFFFFFF8;
    v74 = swift_allocObject();
    *(v74 + 2) = 0;
    *(v74 + 3) = 0;
    *(v74 + 4) = v94;
    (*(v68 + 32))(&v74[v71], v69, v70);
    sub_100004A68(v99, &v74[v72]);
    sub_100004A68(v98, &v74[v73]);
    v75 = &v74[(v73 + 47) & 0xFFFFFFFFFFFFFFF8];
    v76 = v96;
    *v75 = v95;
    *(v75 + 1) = v76;

    sub_1001F0F40(0, 0, v93, &unk_1003EF230, v74);

    (*(v68 + 8))(v66, v70);
    sub_1001ED244(v92, &qword_1004D8640);
  }

  else
  {
    v50 = v80;
    v51 = v97;
    v41(v80, v33, v97);
    if (os_log_type_enabled(v40, v39))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      *&v99[0] = v53;
      *v52 = 136315138;
      v54 = v50;
      v55 = sub_1003986A8();
      v57 = v56;
      (*(v23 + 8))(v54, v51);
      v58 = sub_100005700(v55, v57, v99);

      *(v52 + 4) = v58;
      _os_log_impl(&_mh_execute_header, v40, v39, "No stored actions for %s, aborting.", v52, 0xCu);
      sub_100003894(v53);
    }

    else
    {

      (*(v23 + 8))(v50, v51);
    }

    v77 = sub_10025E2EC(1u);
    v95(v77);
  }

  sub_100003894(v101);
  return sub_100003894(v100);
}

uint64_t sub_1002761B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  v7 = sub_1003986D8();
  v4[7] = v7;
  v4[8] = *(v7 - 8);
  v4[9] = swift_task_alloc();
  v8 = sub_100398A38();
  v4[10] = v8;
  v4[11] = *(v8 - 8);
  v4[12] = swift_task_alloc();
  v9 = sub_1003989E8();
  v4[13] = v9;
  v4[14] = *(v9 - 8);
  v10 = swift_task_alloc();
  v4[15] = v10;

  v11 = swift_task_alloc();
  v4[16] = v11;
  *v11 = v4;
  v11[1] = sub_100276398;

  return sub_100272210(v10, a1, a2);
}

uint64_t sub_100276398()
{
  v2 = *v1;
  v2[17] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10027668C, 0, 0);
  }

  else
  {
    v3 = swift_task_alloc();
    v2[18] = v3;
    *v3 = v2;
    v3[1] = sub_100276514;
    v4 = v2[15];
    v5 = v2[12];
    v6 = v2[3];
    v7 = v2[4];

    return sub_100272CF0(v5, v6, v7, v4);
  }
}

uint64_t sub_100276514()
{
  v2 = *v1;
  v2[19] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100276918, 0, 0);
  }

  else
  {
    v3 = swift_task_alloc();
    v2[20] = v3;
    *v3 = v2;
    v3[1] = sub_1002767FC;
    v4 = v2[12];
    v5 = v2[4];
    v6 = v2[3];

    return sub_100273AD8(v6, v5, v4);
  }
}

uint64_t sub_10027668C()
{
  *(v0 + 16) = *(v0 + 136);
  swift_errorRetain();
  sub_1001E27A8(&qword_1004D4818);
  v1 = swift_dynamicCast();
  v3 = *(v0 + 64);
  v2 = *(v0 + 72);
  v4 = *(v0 + 56);
  if (v1)
  {

    v5 = *(v0 + 208);
    sub_100398648();
    sub_10025E2EC(v5);
    (*(v3 + 8))(v2, v4);
  }

  else
  {

    sub_100398648();
    sub_10025E2EC(2u);

    (*(v3 + 8))(v2, v4);
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1002767FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *v5;
  v6[21] = a1;
  v6[22] = a2;
  v6[23] = a3;
  v6[24] = a4;
  v6[25] = v4;

  if (v4)
  {
    v7 = sub_100276C74;
  }

  else
  {
    v7 = sub_100276AA0;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100276918()
{
  (*(*(v0 + 112) + 8))(*(v0 + 120), *(v0 + 104));
  *(v0 + 16) = *(v0 + 152);
  swift_errorRetain();
  sub_1001E27A8(&qword_1004D4818);
  v1 = swift_dynamicCast();
  v3 = *(v0 + 64);
  v2 = *(v0 + 72);
  v4 = *(v0 + 56);
  if (v1)
  {

    v5 = *(v0 + 208);
    sub_100398648();
    sub_10025E2EC(v5);
    (*(v3 + 8))(v2, v4);
  }

  else
  {

    sub_100398648();
    sub_10025E2EC(2u);

    (*(v3 + 8))(v2, v4);
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_100276AA0()
{
  v1 = (*(v0 + 112) + 8);
  v2 = *(v0 + 88);
  if (*(v0 + 176))
  {
    v3 = *(v0 + 64);
    v4 = sub_10027C5D4(*(v0 + 168), *(v0 + 176), *(v0 + 184), *(v0 + 192));

    sub_100398648();
    v5 = (v3 + 8);
    v6 = (v2 + 8);
    v7 = *(v0 + 96);
    v19 = *(v0 + 104);
    v20 = *(v0 + 120);
    v8 = *(v0 + 72);
    v9 = *(v0 + 80);
    v10 = *(v0 + 56);
    if (v4)
    {
      v11 = 0;
    }

    else
    {
      v11 = 11;
    }

    sub_10025E2EC(v11);
    (*v5)(v8, v10);
    (*v6)(v7, v9);
  }

  else
  {
    v12 = *(v0 + 96);
    v19 = *(v0 + 104);
    v20 = *(v0 + 120);
    v14 = *(v0 + 72);
    v13 = *(v0 + 80);
    v16 = *(v0 + 56);
    v15 = *(v0 + 64);
    sub_100398648();
    sub_10025E2EC(1u);
    (*(v15 + 8))(v14, v16);
    (*(v2 + 8))(v12, v13);
  }

  (*v1)(v20, v19);

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_100276C74()
{
  v2 = *(v0 + 112);
  v1 = *(v0 + 120);
  v3 = *(v0 + 104);
  (*(*(v0 + 88) + 8))(*(v0 + 96), *(v0 + 80));
  (*(v2 + 8))(v1, v3);
  *(v0 + 16) = *(v0 + 200);
  swift_errorRetain();
  sub_1001E27A8(&qword_1004D4818);
  v4 = swift_dynamicCast();
  v6 = *(v0 + 64);
  v5 = *(v0 + 72);
  v7 = *(v0 + 56);
  if (v4)
  {

    v8 = *(v0 + 208);
    sub_100398648();
    sub_10025E2EC(v8);
    (*(v6 + 8))(v5, v7);
  }

  else
  {

    sub_100398648();
    sub_10025E2EC(2u);

    (*(v6 + 8))(v5, v7);
  }

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_100276E18(uint64_t a1, uint64_t a2, uint64_t a3)
{

  v5 = sub_1001EC30C(_swiftEmptyArrayStorage);
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 64);
  v9 = (v6 + 63) >> 6;

  v10 = 0;
  v41 = a1;
  if (!v8)
  {
    while (1)
    {
LABEL_6:
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v11 >= v9)
      {
        break;
      }

      v8 = *(a1 + 64 + 8 * v11);
      ++v10;
      if (v8)
      {
        v10 = v11;
        goto LABEL_10;
      }
    }

    if (!v5[2])
    {
    }

    return a2;
  }

  while (1)
  {
LABEL_10:
    while (1)
    {
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      v13 = (*(a1 + 48) + 16 * (v12 | (v10 << 6)));
      v15 = *v13;
      v14 = v13[1];

      swift_unknownObjectRetain();
      v43._countAndFlagsBits = 24415;
      v43._object = 0xE200000000000000;
      if (sub_1003990D8(v43))
      {
        v16 = swift_dynamicCastObjCProtocolConditional();
        if (v16)
        {
          break;
        }
      }

      swift_unknownObjectRelease();
      if (!v8)
      {
        goto LABEL_6;
      }
    }

    v36 = a3;
    v39 = v16;
    swift_unknownObjectRetain();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v42 = v5;
    v17 = sub_1001EC1DC(v15, v14);
    v19 = v5[2];
    v20 = (v18 & 1) == 0;
    v21 = __OFADD__(v19, v20);
    v22 = v19 + v20;
    if (v21)
    {
      break;
    }

    if (v5[3] >= v22)
    {
      v26 = v39;
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v18)
        {
          goto LABEL_19;
        }
      }

      else
      {
        v27 = v17;
        v38 = v18;
        sub_10023CFF8();
        v17 = v27;
        v26 = v39;
        v5 = v42;
        if (v38)
        {
          goto LABEL_19;
        }
      }
    }

    else
    {
      v23 = v18;
      sub_10023BBC0(v22, isUniquelyReferenced_nonNull_native);
      v17 = sub_1001EC1DC(v15, v14);
      if ((v23 & 1) != (v24 & 1))
      {
        goto LABEL_35;
      }

      v25 = v23;
      v26 = v39;
      v5 = v42;
      if (v25)
      {
LABEL_19:
        *(v5[7] + 8 * v17) = v26;
        swift_unknownObjectRelease();
        goto LABEL_23;
      }
    }

    v5[(v17 >> 6) + 8] |= 1 << v17;
    v28 = (v5[6] + 16 * v17);
    *v28 = v15;
    v28[1] = v14;
    *(v5[7] + 8 * v17) = v26;
    v29 = v5[2];
    v21 = __OFADD__(v29, 1);
    v30 = v29 + 1;
    if (v21)
    {
      goto LABEL_34;
    }

    v5[2] = v30;

LABEL_23:
    v31 = sub_1001EC1DC(v15, v14);
    v33 = v32;

    if (v33)
    {
      v34 = v41;
      if (!swift_isUniquelyReferenced_nonNull_native())
      {
        sub_10020D00C();
        v34 = v41;
      }

      swift_unknownObjectRelease();
      v41 = v34;
      sub_1001F734C(v31, v34);
    }

    swift_unknownObjectRelease();
    a3 = v36;
    if (!v8)
    {
      goto LABEL_6;
    }
  }

LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  result = sub_100399A98();
  __break(1u);
  return result;
}

uint64_t sub_10027717C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1002771C4(uint64_t a1)
{
  v3 = *(sub_100398668() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 47) & 0xFFFFFFFFFFFFFFF8;
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = *(v1 + ((v6 + 47) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_100005C50;

  return sub_100271FC0(a1, v7, v8, v9, v1 + v4, v1 + v5, v1 + v6, v10);
}

uint64_t sub_100277324(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1001F3474;

  return sub_1001F2BE4(a1, v4);
}

void sub_1002773EC(void *a1)
{
  sub_100397AF8();
  sub_10027856C((v1 + 4), v6);
  if (!*(&v6[0] + 1))
  {
    sub_1001ED244(v6, &qword_1004D8728);
    v3 = v1[13];
    if (!v3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v7 = v6[0];
  v8 = v6[1];
  v9 = v6[2];
  v10 = v6[3];
  sub_100278630();
  sub_100397AC8();
  sub_100278684(&v7);
  v3 = v1[13];
  if (v3)
  {
LABEL_3:
    v5 = v1[14];
    v4 = v1[15];
    *&v7 = v1[12];
    *(&v7 + 1) = v3;
    *&v8 = v5;
    *(&v8 + 1) = v4;
    sub_1002785DC();

    sub_100397AC8();
  }

LABEL_4:
  sub_100277AA4(a1);
}

uint64_t sub_100277510(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v30 = a1;
  v31 = a3;
  v35 = a2;
  v34 = sub_100399468();
  v5 = *(v34 - 8);
  __chkstk_darwin(v34);
  v7 = v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100399438();
  __chkstk_darwin(v8);
  v9 = sub_100398DD8();
  __chkstk_darwin(v9 - 8);
  v10 = sub_100004218(0, &qword_1004D5D30);
  v29[2] = &OBJC_IVAR____TtC11Attribution16OdcaMessageQueue_messageQueue;
  v32 = "";
  v33 = v10;
  *(v3 + 24) = sub_1003995A8();
  v11 = sub_100004218(0, &qword_1004D40C0);
  v29[0] = "Installation Conversion Signal";
  v29[1] = v11;
  sub_100398DC8();
  v36 = _swiftEmptyArrayStorage;
  sub_1002786D8(&qword_1004D40C8, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_1001E27A8(&qword_1004D40D0);
  sub_1001E6C28(&qword_1004D40D8, &qword_1004D40D0);
  sub_100399658();
  (*(v5 + 104))(v7, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v34);
  v34 = sub_100399488();
  v12 = *(v3 + 24);
  sub_1001E27A8(&qword_1004D8740);
  swift_allocObject();
  v13 = v30;
  v14 = v12;
  v36 = sub_100397E38();
  sub_1001E27A8(&qword_1004D8748);
  swift_allocObject();
  v15 = v31;
  sub_1001E6C28(&qword_1004D8750, &qword_1004D8740);

  v16 = sub_100397EE8();
  if (v15)
  {
    v17 = type metadata accessor for OnDeviceAttributionCoordinatorProvider();
    type metadata accessor for OdcaAttributionListenerConfig();
    v18 = swift_allocObject();
    *(v18 + 16) = 0;
    *(v4 + 32) = 0x7475626972747461;
    v19 = &off_10047AED0;
    v20 = 0xEB000000006E6F69;
    v21 = v15;
  }

  else
  {
    v20 = 0;
    v21 = 0;
    v17 = 0;
    v19 = 0;
    v18 = 0;
    *(v4 + 32) = 0;
    *(v4 + 56) = 0;
    *(v4 + 64) = 0;
  }

  *(v4 + 40) = v20;
  *(v4 + 48) = v21;
  *(v4 + 72) = v17;
  *(v4 + 80) = v19;
  *(v4 + 88) = v18;
  v22 = v13;

  sub_1003995A8();
  sub_100397D38();
  swift_allocObject();
  v23 = sub_100397D28();
  type metadata accessor for OdcaConversionConfig();
  v24 = swift_allocObject();
  v24[3] = 0;
  v24[4] = 0;
  v24[2] = 0;
  *(v4 + 96) = xmmword_1003EF2C0;
  *(v4 + 112) = v23;
  *(v4 + 120) = v24;
  v25 = *(v4 + 24);
  v36 = v16;
  sub_1001E27A8(&qword_1004D8758);
  swift_allocObject();
  sub_1001E6C28(&qword_1004D8760, &qword_1004D8748);

  v26 = v25;
  v27 = sub_100397AB8();

  swift_unknownObjectRelease();
  *(v4 + 16) = v27;
  return v4;
}

void sub_100277AA4(void *a1)
{
  v2 = swift_allocObject();
  swift_weakInit();
  v10 = sub_100278514;
  v11 = v2;
  v6 = _NSConcreteStackBlock;
  v7 = 1107296256;
  v8 = sub_1000067D0;
  v9 = &unk_10047BFD0;
  v3 = _Block_copy(&v6);

  [a1 registerHandlerForPurpose:-9000 closure:v3];
  _Block_release(v3);
  v4 = swift_allocObject();
  swift_weakInit();
  v10 = sub_100006D98;
  v11 = v4;
  v6 = _NSConcreteStackBlock;
  v7 = 1107296256;
  v8 = sub_1000067D0;
  v9 = &unk_10047BFF8;
  v5 = _Block_copy(&v6);

  [a1 registerHandlerForPurpose:100 closure:v5];
  _Block_release(v5);
}

uint64_t sub_100277C38(void *a1)
{
  v2 = sub_1001E27A8(&qword_1004D6878);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v61 = v55 - v4;
  v5 = sub_1003986D8();
  v60 = *(v5 - 8);
  v6 = __chkstk_darwin(v5);
  v59 = v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = v55 - v8;
  v10 = sub_1001E27A8(&qword_1004D8720);
  __chkstk_darwin(v10 - 8);
  v12 = v55 - v11;
  v13 = sub_100398968();
  v62 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v17 = result;
    if ([a1 metric] != 9100)
    {
      v23 = sub_1003993D8();
      v24 = *(v17 + 24);
      if (os_log_type_enabled(v24, v23))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v63 = v26;
        *v25 = 136315138;
        if ([a1 respondsToSelector:"debugDescription"])
        {
          v27 = [a1 debugDescription];
          v28 = sub_100398F58();
          v30 = v29;

          v31 = v28;
        }

        else
        {
          v31 = 7104878;
          v30 = 0xE300000000000000;
        }

        v47 = sub_100005700(v31, v30, &v63);

        *(v25 + 4) = v47;
        _os_log_impl(&_mh_execute_header, v24, v23, "Unexpected metric %s was received.", v25, 0xCu);
        sub_100003894(v26);
      }
    }

    v56 = v3;
    v57 = v2;
    v58 = a1;
    v18 = [objc_msgSend(objc_opt_self() "privateUserAccount")];
    swift_unknownObjectRelease();
    v19 = sub_100398F58();
    v21 = v20;

    if (v19 == sub_100398F58() && v21 == v22)
    {
    }

    else
    {
      v32 = sub_1003999B8();

      if ((v32 & 1) == 0)
      {
        goto LABEL_11;
      }
    }

    _s11Attribution15DiagnosticErrorC010diagnosticC09errorTypeyAA0bcF0O_tFZ_0(500);
LABEL_11:
    sub_10023E140(v58, v19, v21, v12);

    v33 = v62;
    if ((*(v62 + 48))(v12, 1, v13) == 1)
    {
      v34 = 7104878;
      sub_1001ED244(v12, &qword_1004D8720);
      v35 = sub_1003993E8();
      v36 = *(v17 + 24);
      if (os_log_type_enabled(v36, v35))
      {
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        v63 = v38;
        *v37 = 136315138;
        v39 = v58;
        if ([v58 respondsToSelector:"debugDescription"])
        {
          v40 = [v39 debugDescription];
          v41 = sub_100398F58();
          v43 = v42;

          v44 = v41;
        }

        else
        {
          v43 = 0xE300000000000000;
          v44 = 7104878;
        }

        v48 = sub_100005700(v44, v43, &v63);

        *(v37 + 4) = v48;
        _os_log_impl(&_mh_execute_header, v36, v35, "Unsupported metric %s", v37, 0xCu);
        sub_100003894(v38);
      }

      v63 = 0;
      v64 = 0xE000000000000000;
      sub_1003996F8(21);

      v63 = 0xD000000000000013;
      v64 = 0x8000000100430620;
      v49 = v58;
      if ([v58 respondsToSelector:"debugDescription"])
      {
        v50 = [v49 debugDescription];
        v34 = sub_100398F58();
        v52 = v51;
      }

      else
      {
        v52 = 0xE300000000000000;
      }

      v65._countAndFlagsBits = v34;
      v65._object = v52;
      sub_100399068(v65);

      v53 = sub_100398F28();

      v54 = sub_100398F28();
      CreateDiagnosticReport();

      _s11Attribution15DiagnosticErrorC010diagnosticC09errorTypeyAA0bcF0O_tFZ_0(22);
    }

    else
    {
      (*(v33 + 32))(v15, v12, v13);
      (*(v33 + 16))(v9, v15, v13);
      v45 = v60;
      (*(v60 + 104))(v9, enum case for ConversionSignal.appStoreInstallationSignal(_:), v5);
      v55[1] = v17;
      v58 = *(v17 + 16);
      (*(v45 + 16))(v59, v9, v5);
      sub_1002786D8(&qword_1004D6860, &type metadata accessor for ConversionSignal);
      sub_1002786D8(&unk_1004D6868, &type metadata accessor for ConversionSignal);
      v46 = v61;
      sub_100397B08();
      sub_100397AD8();
      (*(v56 + 8))(v46, v57);
      (*(v45 + 8))(v9, v5);
      (*(v33 + 8))(v15, v13);
    }
  }

  return result;
}

uint64_t sub_10027848C()
{

  sub_1001ED244(v0 + 32, &qword_1004D8728);
  sub_10027851C(*(v0 + 96), *(v0 + 104));

  return swift_deallocClassInstance();
}

uint64_t sub_10027851C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_10027856C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001E27A8(&qword_1004D8728);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1002785DC()
{
  result = qword_1004D8730;
  if (!qword_1004D8730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004D8730);
  }

  return result;
}

unint64_t sub_100278630()
{
  result = qword_1004D8738;
  if (!qword_1004D8738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004D8738);
  }

  return result;
}

uint64_t sub_1002786D8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100278728(uint64_t a1, unsigned int a2)
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