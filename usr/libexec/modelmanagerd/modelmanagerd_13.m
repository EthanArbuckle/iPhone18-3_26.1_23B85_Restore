uint64_t sub_100127364()
{
  sub_100001EF4();
  v3 = v2;
  sub_100004B40();
  *v4 = v3;
  v6 = *(v5 + 72);
  v7 = *v1;
  sub_100002B9C();
  *v8 = v7;

  if (v0)
  {
    v9 = v3[7];

    v10 = *(v7 + 8);

    return v10();
  }

  else
  {
    v12 = swift_task_alloc();
    v3[10] = v12;
    *v12 = v7;
    v12[1] = sub_1001274C8;
    v13 = v3[2];

    return sub_1001268AC();
  }
}

uint64_t sub_1001274C8()
{
  sub_100002BAC();
  sub_100001EF4();
  v2 = *(v1 + 80);
  v3 = *(v1 + 56);
  v4 = *v0;
  sub_100002B9C();
  *v5 = v4;

  sub_100001F00();

  return v6();
}

uint64_t sub_1001275C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v8 = type metadata accessor for ContinuousClock();
  v6[5] = v8;
  v9 = *(v8 - 8);
  v6[6] = v9;
  v10 = *(v9 + 64) + 15;
  v6[7] = swift_task_alloc();

  return _swift_task_switch(sub_100127690, a6, 0);
}

uint64_t sub_100127690()
{
  sub_100002BAC();
  v1 = v0[7];
  static Clock<>.continuous.getter();
  v2 = swift_task_alloc();
  v0[8] = v2;
  *v2 = v0;
  v2[1] = sub_10012774C;
  v3 = v0[7];
  v5 = v0[2];
  v4 = v0[3];

  return sub_1001542B4();
}

uint64_t sub_10012774C()
{
  sub_100003884();
  v2 = *v1;
  sub_100004B40();
  *v4 = v3;
  v5 = v2[8];
  v6 = v2[7];
  v7 = v2[6];
  v8 = v2[5];
  *v4 = *v1;
  *(v3 + 72) = v0;

  (*(v7 + 8))(v6, v8);
  v9 = v2[4];
  if (v0)
  {
    v10 = sub_100127968;
  }

  else
  {
    v10 = sub_1001278C8;
  }

  return _swift_task_switch(v10, v9, 0);
}

uint64_t sub_1001278C8()
{
  sub_100002BAC();
  *(*(v0 + 32) + OBJC_IVAR____TtC13modelmanagerd15TimeoutExecutor_hitTimeout) = 1;
  v1 = swift_task_alloc();
  *(v0 + 80) = v1;
  *v1 = v0;
  v1[1] = sub_100127F28;
  v2 = *(v0 + 32);

  return sub_1001268AC();
}

uint64_t sub_100127968()
{
  sub_100002BAC();
  v1 = *(v0 + 56);

  sub_100001F00();
  v3 = *(v0 + 72);

  return v2();
}

uint64_t sub_1001279C4()
{
  sub_100127E50(v0 + OBJC_IVAR____TtC13modelmanagerd15TimeoutExecutor_continuation);
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t type metadata accessor for TimeoutExecutor()
{
  result = qword_1001BD658;
  if (!qword_1001BD658)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100127A58()
{
  sub_100127AFC();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_100127AFC()
{
  if (!qword_1001BD668)
  {
    sub_10006A614(&qword_1001B9CE0, &qword_100170F90);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1001BD668);
    }
  }
}

unint64_t sub_100127B60()
{
  result = qword_1001BD740;
  if (!qword_1001BD740)
  {
    type metadata accessor for TimeoutExecutor();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001BD740);
  }

  return result;
}

uint64_t sub_100127BC8()
{
  v2 = v1;
  v3 = *(sub_100065020(&qword_1001B9CE0, &qword_100170F90) - 8);
  v4 = (*(v3 + 64) + ((*(v3 + 80) + 40) & ~*(v3 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  v6 = v0[2];
  v7 = v0[3];
  v8 = v0[4];
  v9 = (v0 + v4);
  v10 = *v9;
  v11 = v9[1];
  v13 = *(v0 + v5);
  v12 = *(v0 + v5 + 8);
  v14 = swift_task_alloc();
  *(v2 + 16) = v14;
  *v14 = v2;
  v14[1] = sub_10006F558;
  sub_1000038D8();

  return sub_100126FF8(v15, v16, v17, v18, v19, v10, v11, v13);
}

uint64_t sub_100127D28()
{
  sub_100003884();
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_10006FA64;
  sub_1000038D8();

  return sub_1001275C8(v8, v9, v10, v11, v5, v6);
}

uint64_t sub_100127DE0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100065020(&qword_1001BD748, &qword_100173E90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100127E50(uint64_t a1)
{
  v2 = sub_100065020(&qword_1001BD748, &qword_100173E90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100127EB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100065020(&qword_1001BD748, &qword_100173E90);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_100127F2C()
{
  sub_10000A274();
  v1 = v0;
  v3 = v2;
  v39 = v4;
  v37 = v5;
  v6 = &qword_1001B9458;
  v40 = sub_100065020(&qword_1001B9458, &qword_100174250);
  v7 = sub_100002C00(v40);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  sub_100009C24();
  v43 = v10;
  sub_100002F1C();
  __chkstk_darwin(v11);
  sub_1000DB284();
  v38 = v12;
  v14 = v3 + 64;
  v13 = *(v3 + 64);
  v15 = 1 << *(v3 + 32);
  sub_10000D160();
  if (v20 != v21)
  {
    v18 = ~v19;
  }

  v22 = v18 & v16;
  v23 = (v17 + 63) >> 6;
  v41 = v3;

  v24 = 0;
  if (v22)
  {
    while (1)
    {
      v25 = v6;
      v42 = v1;
      v26 = v24;
LABEL_10:
      v27 = __clz(__rbit64(v22)) | (v26 << 6);
      v28 = *(v41 + 56);
      v29 = (*(v41 + 48) + 16 * v27);
      v30 = *v29;
      v31 = v29[1];
      v32 = type metadata accessor for Policy();
      sub_100002C00(v32);
      (*(v33 + 16))(&v38[*(v40 + 48)], v28 + *(v33 + 72) * v27);
      *v38 = v30;
      *(v38 + 1) = v31;
      v6 = v25;
      sub_10002F6B4(v38, v43, v25, &qword_100174250);

      v34 = v39(v43);
      v1 = v42;
      if (v42)
      {
        sub_10000ED84(v43, &qword_1001B9458);

        goto LABEL_16;
      }

      if (v34)
      {
        break;
      }

      v22 &= v22 - 1;
      sub_10000ED84(v43, v25);
      v24 = v26;
      if (!v22)
      {
        goto LABEL_6;
      }
    }

    sub_10002F6B4(v43, v37, &qword_1001B9458, &qword_100174250);
    v35 = v37;
    v36 = 0;
LABEL_15:
    sub_100009BFC(v35, v36, 1, v40);
LABEL_16:
    sub_100005874();
  }

  else
  {
LABEL_6:
    while (1)
    {
      v26 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v26 >= v23)
      {

        v35 = v37;
        v36 = 1;
        goto LABEL_15;
      }

      v22 = *(v14 + 8 * v26);
      ++v24;
      if (v22)
      {
        v25 = v6;
        v42 = v1;
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1001281F8@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v4 = v3;
  v33 = a1;
  v28 = a3;
  v38 = type metadata accessor for CustomAssetConfiguration();
  v6 = *(*(v38 - 8) + 64);
  v7 = __chkstk_darwin(v38);
  v37 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v31 = &v28 - v10;
  v32 = v9;
  v11 = a2 + 64;
  v12 = 1 << *(a2 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(a2 + 64);
  v15 = (v12 + 63) >> 6;
  v34 = v9 + 32;
  v35 = a2;
  v29 = (v9 + 8);
  v30 = v9 + 16;

  v17 = 0;
  if (v14)
  {
    while (1)
    {
      v36 = v4;
      v18 = v17;
LABEL_9:
      v20 = v31;
      v19 = v32;
      v21 = v38;
      (*(v32 + 16))(v31, *(v35 + 56) + *(v32 + 72) * (__clz(__rbit64(v14)) | (v18 << 6)), v38);
      v22 = *(v19 + 32);
      v23 = v37;
      v22(v37, v20, v21);
      v24 = v36;
      v25 = v33(v23);
      v4 = v24;
      if (v24)
      {
        (*v29)(v37, v38);
      }

      if (v25)
      {
        break;
      }

      v14 &= v14 - 1;
      result = (*v29)(v37, v38);
      v17 = v18;
      if (!v14)
      {
        goto LABEL_5;
      }
    }

    v27 = v28;
    v22(v28, v37, v38);
    v26 = 0;
    return sub_100009BFC(v27, v26, 1, v38);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v18 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v18 >= v15)
      {

        v26 = 1;
        v27 = v28;
        return sub_100009BFC(v27, v26, 1, v38);
      }

      v14 = *(v11 + 8 * v18);
      ++v17;
      if (v14)
      {
        v36 = v4;
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_1001284A4()
{
  sub_10000A274();
  v1 = sub_1000494E8();
  v2 = type metadata accessor for ModelCatalogAsset(v1);
  v3 = sub_100002F44(v2);
  v51 = v4;
  v6 = *(v5 + 64);
  __chkstk_darwin(v3);
  sub_100002B8C();
  v50 = (v8 - v7);
  v49 = type metadata accessor for AppleIntelligenceAsset();
  v9 = sub_100002BDC(v49);
  v11 = v10;
  v13 = *(v12 + 64);
  __chkstk_darwin(v9);
  sub_100002B8C();
  v16 = v15 - v14;
  v17 = *(v0 + 16);
  if (v17)
  {
    v47 = v16;
    sub_100016FE0();
    v18 = sub_10001E724(v0);
    v21 = v11;
    v22 = v18;
    v23 = 0;
    v53 = v0 + 56;
    v48 = v21;
    v44 = v0 + 64;
    v45 = v17;
    v24 = v0;
    v46 = v0;
    if ((v18 & 0x8000000000000000) == 0)
    {
      while (v22 < 1 << *(v24 + 32))
      {
        v25 = v22 >> 6;
        if ((*(v53 + 8 * (v22 >> 6)) & (1 << v22)) == 0)
        {
          goto LABEL_24;
        }

        if (*(v24 + 36) != v19)
        {
          goto LABEL_25;
        }

        v26 = v20;
        v52 = v19;
        v27 = *(v24 + 48);
        v28 = *(v51 + 72);
        sub_1000128DC();
        sub_10005CAA8(v29, v50);
        v30 = *v50;
        v31 = v50[1];

        sub_100004CBC();
        AppleIntelligenceAsset.init(assetIdentifier:version:)();
        sub_100009CDC();
        sub_10000D300();
        v32 = _swiftEmptyArrayStorage[2];
        if (v32 >= _swiftEmptyArrayStorage[3] >> 1)
        {
          sub_100016FE0();
        }

        _swiftEmptyArrayStorage[2] = v32 + 1;
        v33 = *(v48 + 80);
        sub_10000657C();
        (*(v35 + 32))(_swiftEmptyArrayStorage + v34 + *(v35 + 72) * v32, v47);
        if (v26)
        {
          goto LABEL_29;
        }

        v24 = v46;
        v36 = 1 << *(v46 + 32);
        if (v22 >= v36)
        {
          goto LABEL_26;
        }

        v37 = *(v53 + 8 * v25);
        if ((v37 & (1 << v22)) == 0)
        {
          goto LABEL_27;
        }

        if (*(v46 + 36) != v52)
        {
          goto LABEL_28;
        }

        v38 = v37 & (-2 << (v22 & 0x3F));
        if (v38)
        {
          v36 = __clz(__rbit64(v38)) | v22 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v39 = v25 << 6;
          v40 = v25 + 1;
          v41 = (v44 + 8 * v25);
          while (v40 < (v36 + 63) >> 6)
          {
            v43 = *v41++;
            v42 = v43;
            v39 += 64;
            ++v40;
            if (v43)
            {
              sub_100016E94(v22, v52, 0);
              v36 = __clz(__rbit64(v42)) + v39;
              goto LABEL_19;
            }
          }

          sub_100016E94(v22, v52, 0);
        }

LABEL_19:
        if (++v23 == v45)
        {
          goto LABEL_22;
        }

        v20 = 0;
        v19 = *(v46 + 36);
        v22 = v36;
        if (v36 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }

  else
  {
LABEL_22:
    sub_100005874();
  }
}

void *sub_10012880C(uint64_t a1)
{
  v3 = sub_100065020(&qword_1001B8F48, &qword_10016FB30);
  v4 = *(v3 - 8);
  v42 = v3;
  v43 = v4;
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v34 - v6;
  v41 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v8 = __CocoaSet.count.getter();
  }

  else
  {
    v8 = *(a1 + 16);
  }

  result = _swiftEmptyArrayStorage;
  if (v8)
  {
    v50 = _swiftEmptyArrayStorage;
    sub_100070A50();
    v44 = v50;
    result = sub_10003DDD4(a1);
    v46 = result;
    v47 = v11;
    LOBYTE(v48) = v12 & 1;
    if ((v8 & 0x8000000000000000) == 0)
    {
      v13 = 0;
      v39 = v8;
      v40 = v43 + 32;
      if (a1 < 0)
      {
        v14 = a1;
      }

      else
      {
        v14 = a1 & 0xFFFFFFFFFFFFFF8;
      }

      v37 = a1 + 56;
      v38 = v14;
      v35 = v1;
      v36 = a1 + 64;
      while (!__OFADD__(v13++, 1))
      {
        v16 = v46;
        v17 = v47;
        v18 = v48;
        sub_10003E06C(v46, v47, v48, a1, type metadata accessor for DaemonRequest, sub_10005C330, sub_10005C434, v10, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45[0], v45[1], v45[2], v45[3], v46, v47, v48, v49, v50, v51, v52);
        RequestMetadata.id.getter();

        v19 = v44;
        v50 = v44;
        v20 = v44[2];
        if (v20 >= v44[3] >> 1)
        {
          sub_100070A50();
          v19 = v50;
        }

        v19[2] = v20 + 1;
        v21 = (*(v43 + 80) + 32) & ~*(v43 + 80);
        v44 = v19;
        result = (*(v43 + 32))(v19 + v21 + *(v43 + 72) * v20, v7, v42);
        if (v41)
        {
          if (!v18)
          {
            goto LABEL_39;
          }

          if (__CocoaSet.Index.handleBitPattern.getter())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v26 = v39;
          sub_100065020(&qword_1001BC480, &qword_100172C58);
          v27 = Set.Index._asCocoa.modify();
          __CocoaSet.formIndex(after:isUnique:)();
          result = v27(v45, 0);
        }

        else
        {
          if (v18)
          {
            goto LABEL_40;
          }

          if ((v16 & 0x8000000000000000) != 0)
          {
            goto LABEL_35;
          }

          v22 = 1 << *(a1 + 32);
          if (v16 >= v22)
          {
            goto LABEL_35;
          }

          v23 = v16 >> 6;
          v24 = *(v37 + 8 * (v16 >> 6));
          if (((v24 >> v16) & 1) == 0)
          {
            goto LABEL_36;
          }

          if (*(a1 + 36) != v17)
          {
            goto LABEL_37;
          }

          v25 = v24 & (-2 << (v16 & 0x3F));
          if (v25)
          {
            v22 = __clz(__rbit64(v25)) | v16 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v28 = v23 << 6;
            v29 = v23 + 1;
            v30 = (v36 + 8 * v23);
            while (v29 < (v22 + 63) >> 6)
            {
              v32 = *v30++;
              v31 = v32;
              v28 += 64;
              ++v29;
              if (v32)
              {
                result = sub_100016E94(v16, v17, 0);
                v22 = __clz(__rbit64(v31)) + v28;
                goto LABEL_30;
              }
            }

            result = sub_100016E94(v16, v17, 0);
          }

LABEL_30:
          v33 = *(a1 + 36);
          v46 = v22;
          v47 = v33;
          LOBYTE(v48) = 0;
          v26 = v39;
        }

        if (v13 == v26)
        {
          sub_100016E94(v46, v47, v48);
          return v44;
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
    }

    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
  }

  return result;
}

uint64_t sub_100128C08(uint64_t (*a1)(char *), char a2, uint64_t a3)
{
  v25 = a1;
  v26 = type metadata accessor for CustomAssetConfiguration();
  v6 = *(*(v26 - 8) + 64);
  __chkstk_darwin(v26);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a3 + 64;
  v11 = 1 << *(a3 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a3 + 64);
  v14 = (v11 + 63) >> 6;
  v23 = v7 + 16;
  v24 = v7;
  v22 = (v7 + 8);
  v27 = a3;

  v16 = 0;
  while (v13)
  {
    v17 = v26;
LABEL_11:
    (*(v24 + 16))(v9, *(v27 + 56) + *(v24 + 72) * (__clz(__rbit64(v13)) | (v16 << 6)), v17);
    v19 = v25(v9);
    if (v3)
    {
      (*v22)(v9, v17);

      return a2 & 1;
    }

    v20 = v19;
    v13 &= v13 - 1;
    result = (*v22)(v9, v17);
    if (v20)
    {
      a2 = 1;
LABEL_15:

      return a2 & 1;
    }
  }

  v17 = v26;
  while (1)
  {
    v18 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v18 >= v14)
    {
      a2 = 0;
      goto LABEL_15;
    }

    v13 = *(v10 + 8 * v18);
    ++v16;
    if (v13)
    {
      v16 = v18;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

BOOL sub_100128E20(uint64_t (*a1)(uint64_t *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = (a4 + 32);
  do
  {
    v8 = v6;
    if (v6-- == 0)
    {
      break;
    }

    v13 = *v7;

    v10 = a1(&v13);
    if (v4)
    {

      return v8 != 0;
    }

    v11 = v10;

    ++v7;
  }

  while ((v11 & 1) == 0);
  return v8 != 0;
}

void sub_100128ED0()
{
  sub_1000055B0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = sub_100007B78();
  v8 = sub_100065020(v6, v7);
  sub_100002F04(v8);
  v10 = *(v9 + 64);
  sub_100004B1C();
  __chkstk_darwin(v11);
  v13 = v27 - v12;
  sub_10001E72C(v3, v27 - v12, &qword_1001BB050, &qword_10016F6E0);
  type metadata accessor for TaskPriority();
  v14 = sub_1000125DC();
  v15 = sub_10000C6C0(v14, 1, &qword_1001BB050);

  if (v15 == 1)
  {
    sub_10000ED84(v13, &qword_1001BB050);
  }

  else
  {
    TaskPriority.rawValue.getter();
    sub_100006098(&qword_1001BB050);
    v17 = *(v16 + 8);
    v18 = sub_100005E8C();
    v19(v18);
  }

  v21 = *(v1 + 16);
  v20 = *(v1 + 24);
  swift_unknownObjectRetain();

  if (v21)
  {
    swift_getObjectType();
    v22 = dispatch thunk of Actor.unownedExecutor.getter();
    v24 = v23;
    swift_unknownObjectRelease();
    if (v5)
    {
LABEL_6:
      sub_100005FEC();
      v25 = String.utf8CString.getter() + 32;

      if (v24 | v22)
      {
        v28[0] = 0;
        v28[1] = 0;
        v26 = v28;
        v28[2] = v22;
        v28[3] = v24;
      }

      else
      {
        v26 = 0;
      }

      v27[1] = 7;
      v27[2] = v26;
      v27[3] = v25;
      sub_1000133D8();
      swift_task_create();

      sub_10000ED84(v3, &qword_1001BB050);

      goto LABEL_14;
    }
  }

  else
  {
    v22 = 0;
    v24 = 0;
    if (v5)
    {
      goto LABEL_6;
    }
  }

  sub_10000ED84(v3, &qword_1001BB050);
  if (v24 | v22)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v22;
    v28[7] = v24;
  }

  sub_1000133D8();
  swift_task_create();
LABEL_14:
  sub_100002EEC();
}

uint64_t sub_10012912C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2[1];
  v11[2] = *v2;
  v11[3] = v4;
  v11[4] = a1;
  v5 = sub_1001418B8(sub_10014AF7C, v11, v4);
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    sub_1001445EC(v5, v6);
    v8 = 0;
  }

  v9 = type metadata accessor for UUID();
  return sub_100009BFC(a2, v8, 1, v9);
}

uint64_t sub_1001291C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return sub_100004B70(sub_1001291E0, 0);
}

uint64_t sub_1001291E0()
{
  sub_100002BAC();
  v0 = swift_task_alloc();
  sub_100032CF8(v0);
  v1 = async function pointer to withTaskGroup<A, B>(of:returning:isolation:body:)[1];
  v2 = swift_task_alloc();
  v3 = sub_10000AC24(v2);
  *v3 = v4;
  v3[1] = sub_10012929C;
  sub_1000194B4();

  return withTaskGroup<A, B>(of:returning:isolation:body:)();
}

uint64_t sub_10012929C()
{
  sub_100002BAC();
  sub_100001EF4();
  v2 = *(v1 + 48);
  v3 = *(v1 + 40);
  v4 = *v0;
  sub_100002B9C();
  *v5 = v4;

  v6 = sub_100003000();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_10012939C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[18] = a4;
  v5[19] = a5;
  v5[16] = a2;
  v5[17] = a3;
  v6 = *(*(sub_100065020(&qword_1001BB050, &qword_10016F6E0) - 8) + 64) + 15;
  v5[20] = swift_task_alloc();
  v5[21] = swift_task_alloc();

  return _swift_task_switch(sub_100129448, 0, 0);
}

uint64_t sub_1001297D4(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 16) = a6;
  v10 = (a4 + *a4);
  v7 = a4[1];
  v8 = swift_task_alloc();
  *(v6 + 24) = v8;
  *v8 = v6;
  v8[1] = sub_1001298CC;

  return v10(v6 + 16);
}

uint64_t sub_1001298CC()
{
  sub_100002BAC();
  sub_100001EF4();
  v2 = *(v1 + 24);
  v3 = *v0;
  sub_100002B9C();
  *v4 = v3;

  v5 = sub_100003000();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_1001299B0()
{
  v0 = type metadata accessor for Logger();
  sub_100065A60(v0, qword_1001BD750);
  sub_10000641C(v0, qword_1001BD750);
  subsystemName.getter();
  return Logger.init(subsystem:category:)();
}

void *sub_100129A24()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];

  v6 = v0[10];

  return v0;
}

uint64_t sub_100129A80()
{
  sub_100129A24();

  return _swift_deallocClassInstance(v0, 88, 7);
}

uint64_t sub_100129AB4()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = _swiftEmptyArrayStorage;
  sub_100148910(_swiftEmptyArrayStorage);
  *(v0 + 40) = v1;
  *(v0 + 48) = v2;
  *(v0 + 56) = v3;
  *(v0 + 64) = 0;
  *(v0 + 68) = 1;
  *(v0 + 72) = 0;
  *(v0 + 80) = _swiftEmptyArrayStorage;
  return v0;
}

uint64_t sub_100129B08()
{
  sub_100002BAC();
  v1[10] = v2;
  v1[11] = v0;
  v1[8] = v3;
  v1[9] = v4;
  v5 = sub_100065020(&qword_1001B8F48, &qword_10016FB30);
  v1[12] = v5;
  sub_100002F44(v5);
  v1[13] = v6;
  v8 = *(v7 + 64);
  v1[14] = sub_10000F0C0();
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v9 = sub_100002C10();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_100129BD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void (*a10)(uint64_t, uint64_t), uint64_t a11, void (*a12)(uint64_t), uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_1000133FC();
  v21 = v18[16];
  v22 = v18[11];
  v91 = v18[8];
  v23 = v91 + OBJC_IVAR____TtC13modelmanagerd13DaemonRequest_metadata;
  RequestMetadata.id.getter();
  v24 = (v22 + OBJC_IVAR____TtC13modelmanagerd14RequestManager_inputStreamRequests);
  sub_1000125C0();
  swift_beginAccess();
  v25 = sub_10000598C();
  v25[2] = v20;
  v25[3] = v19;
  v25[4] = v21;

  sub_10002B158();
  sub_1000440DC();
  v29 = sub_100141808(v26, v27, v28);
  v31 = v30;

  v32 = v18[16];
  if (v31)
  {
    v33 = v18[12];
    v34 = v18[13];

    v35 = *(v34 + 8);
    v36 = sub_10005FA98();
    v35(v36);
    if (qword_1001B8AB8 != -1)
    {
      sub_100005344();
      swift_once();
    }

    v37 = v18[8];
    v38 = type metadata accessor for Logger();
    sub_10000641C(v38, qword_1001BD750);
    sub_10000D0E8();

    v39 = Logger.logObject.getter();
    static os_log_type_t.fault.getter();
    sub_1000089B8();
    if (sub_10000A384())
    {
      v40 = v18[14];
      v41 = v18[12];
      sub_10000A05C();
      swift_slowAlloc();
      a12 = v35;
      a14 = sub_100003890();
      *v37 = 136315138;
      RequestMetadata.id.getter();
      sub_100005070();
      sub_1000082D4(v42, v43, v44);
      v45 = sub_1000156D8();
      v46 = sub_100007B78();
      v35(v46);
      v47 = sub_100004CB0();
      sub_100004A3C(v47, v48, v49);
      sub_100005974();

      *(v37 + 4) = v45;
      sub_100035348(&_mh_execute_header, v50, v51, "addingPending: %s missing from inputStreamRequests");
      sub_100002068();
      sub_100002BD0();
    }

    v53 = v18[15];
    v52 = v18[16];
    v54 = v18[14];
    v55 = type metadata accessor for ModelManagerError();
    sub_100002E68();
    sub_10005FAF0(v56, v57);
    sub_100006194();
    sub_100007894();
    swift_allocError();
    sub_100006098(v55);
    (*(v58 + 104))();
    swift_willThrow();

    sub_100001F00();
  }

  else
  {
    v59 = v18[15];
    v60 = v18[13];
    v90 = v18[12];
    sub_100143420(v29, v23);

    v61 = v90;
    a10 = *(v60 + 8);
    a11 = v60 + 8;
    a10(v32, v61);
    RequestMetadata.id.getter();
    v63 = *v24;
    v62 = v24[1];
    v64 = v24[2];
    v65 = swift_task_alloc();
    v65[2] = v63;
    v65[3] = v62;
    v65[4] = v59;

    v66 = sub_100005F04();
    sub_100141808(v66, v67, v62);
    LOBYTE(v59) = v68;

    if (v59)
    {
      __break(1u);
      return result;
    }

    v70 = v18[15];
    a12 = v18[16];
    v91 = v18[14];
    v71 = v18[12];
    v73 = v18[9];
    v72 = v18[10];
    v74 = v18[8];
    v75 = sub_100003D88();
    v77 = sub_100143420(v75, v76);

    a10(v70, v71);
    sub_100002EE0();
    v78 = swift_allocObject();
    *(v78 + 16) = v73;
    *(v78 + 24) = v72;
    sub_100002D24();
    swift_beginAccess();

    sub_10013F9E8(sub_1001400B4);
    v79 = *(*(v77 + 80) + 16);
    sub_10013FA84(v79, sub_1001400B4);
    v80 = *(v77 + 80);
    *(v80 + 16) = v79 + 1;
    v81 = (v80 + 24 * v79);
    v81[4] = v74;
    v81[5] = &unk_100174230;
    v81[6] = v78;
    *(v77 + 80) = v80;
    swift_endAccess();

    sub_100002F54();
  }

  sub_1000037A0();

  return v83(v82, v83, v84, v85, v86, v87, v88, v89, a9, a10, a11, a12, v91, a14, a15, a16, a17, a18);
}

uint64_t sub_10012A0B4(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v10 = (a4 + *a4);
  v7 = a4[1];
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_10006FA64;

  return v10(a2, a3);
}

BOOL sub_10012A1B4(uint64_t a1)
{
  v3 = (v1 + OBJC_IVAR____TtC13modelmanagerd14RequestManager_inputStreamRequests);
  sub_100004CBC();
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v13[2] = v4;
  v13[3] = v5;
  v13[4] = a1;

  v7 = sub_100141808(sub_10014AFA8, v13, v5);
  if (v8)
  {

    return 0;
  }

  else
  {
    v10 = sub_100143420(v7, v6);

    sub_100004CBC();
    swift_beginAccess();
    v11 = *(v10 + 80);

    v12 = *(v11 + 16);

    return v12 != 0;
  }
}

uint64_t sub_10012A2CC()
{
  sub_100002BAC();
  v1[11] = v2;
  v1[12] = v0;
  v3 = sub_100065020(&qword_1001B8F48, &qword_10016FB30);
  v1[13] = v3;
  sub_100002F44(v3);
  v1[14] = v4;
  v6 = *(v5 + 64);
  v1[15] = sub_10000F0C0();
  v1[16] = swift_task_alloc();
  v7 = sub_100002C10();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_10012A388(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_10000385C();
  sub_100003284();
  v16 = v14[11];
  v17 = (v14[12] + OBJC_IVAR____TtC13modelmanagerd14RequestManager_inputStreamRequests);
  sub_100009E10();
  swift_beginAccess();
  v19 = *v17;
  v18 = v17[1];
  v20 = v17[2];
  v21 = swift_task_alloc();
  *(sub_10014B1BC(v21) + 32) = v16;

  v22 = sub_10000640C();
  sub_100141808(v22, v23, v24);
  sub_100007BE4();
  if (v15)
  {

    if (qword_1001B8AB8 != -1)
    {
      sub_100005344();
      swift_once();
    }

    v26 = v14[14];
    v25 = v14[15];
    v27 = v14[13];
    v28 = v14[11];
    v29 = type metadata accessor for Logger();
    sub_10000641C(v29, qword_1001BD750);
    sub_1000251CC();
    v30 = sub_100007660();
    v31(v30);
    v32 = Logger.logObject.getter();
    static os_log_type_t.fault.getter();
    sub_100006390();
    v34 = os_log_type_enabled(v32, v33);
    v36 = v14[14];
    v35 = v14[15];
    v37 = v14[13];
    if (v34)
    {
      sub_10000A05C();
      swift_slowAlloc();
      sub_100003890();
      sub_1000265BC();
      *v18 = 136315138;
      sub_100005070();
      sub_1000082D4(v38, v39, v40);
      sub_100042FBC();
      v41 = sub_10000C778();
      v42(v41);
      v43 = sub_10000CD1C();
      sub_100004A3C(v43, v44, v45);
      sub_100005974();

      *(v18 + 4) = v35;
      v48 = "processPendingRequest: %s missing from inputStreamRequests";
LABEL_16:
      sub_100035348(&_mh_execute_header, v46, v47, v48);
      sub_100002068();
      sub_100002BD0();

LABEL_18:
      v110 = v14[15];
      v111 = v14[16];
      v112 = type metadata accessor for ModelManagerError();
      sub_100002E68();
      sub_10005FAF0(v113, v114);
      sub_100006194();
      sub_100007894();
      swift_allocError();
      sub_100006098(v112);
      (*(v115 + 104))();
      swift_willThrow();

      sub_100001F00();
      sub_100003540();

      return v117(v116, v117, v118, v119, v120, v121, v122, v123, a9, a10, a11, a12, a13, a14);
    }

    goto LABEL_17;
  }

  v49 = v14[11];
  v50 = sub_10005FA98();
  sub_100143420(v50, v51);

  v53 = *v17;
  v52 = v17[1];
  v54 = v17[2];
  v55 = swift_task_alloc();
  *(sub_10014B1BC(v55) + 32) = v49;

  v56 = sub_10000640C();
  sub_100141808(v56, v57, v58);
  result = sub_100007BE4();
  if (v49)
  {
    __break(1u);
    goto LABEL_22;
  }

  v60 = sub_10005FA98();
  v62 = sub_100143420(v60, v61);

  sub_100004CBC();
  swift_beginAccess();
  v63 = *(v62 + 80);

  v64 = *(v63 + 16);

  if (!v64)
  {
    if (qword_1001B8AB8 != -1)
    {
      sub_100005344();
      swift_once();
    }

    v88 = v14[16];
    v89 = v14[13];
    v90 = v14[14];
    v91 = v14[11];
    v92 = type metadata accessor for Logger();
    sub_10000641C(v92, qword_1001BD750);
    sub_1000251CC();
    v93 = sub_100007660();
    v94(v93);
    v32 = Logger.logObject.getter();
    static os_log_type_t.fault.getter();
    sub_100006390();
    v96 = os_log_type_enabled(v32, v95);
    v97 = v14[16];
    v98 = v14[13];
    v36 = v14[14];
    if (v96)
    {
      sub_10000A05C();
      swift_slowAlloc();
      sub_100003890();
      sub_1000265BC();
      MEMORY[0] = 136315138;
      sub_100005070();
      sub_1000082D4(v99, v100, v101);
      sub_100042FBC();
      v102 = sub_10000C778();
      v103(v102);
      v104 = sub_10000CD1C();
      sub_100004A3C(v104, v105, v106);
      sub_100005974();

      MEMORY[4] = v97;
      v48 = "processPendingRequest: %s has no pending requests";
      goto LABEL_16;
    }

LABEL_17:

    v107 = *(v36 + 8);
    v108 = sub_100005E8C();
    v109(v108);
    goto LABEL_18;
  }

  v65 = v14[11];
  v67 = *v17;
  v66 = v17[1];
  v68 = v17[2];
  v69 = swift_task_alloc();
  v69[2] = v67;
  v69[3] = v66;
  v69[4] = v65;

  v70 = sub_100005F04();
  sub_100141808(v70, v71, v66);
  v73 = v72;

  if (v73)
  {
LABEL_22:
    __break(1u);
    return result;
  }

  v74 = v14[15];
  v75 = v14[16];
  sub_1000118CC();

  sub_100002D24();
  swift_beginAccess();
  sub_10012A944();
  sub_10001351C();
  v77 = v76;
  swift_endAccess();

  sub_100002EE0();
  v78 = swift_allocObject();
  *(v78 + 16) = v66;
  *(v78 + 24) = v77;

  v79 = v14[1];
  sub_100003540();

  return v84(v80, v81, v82, v83, v84, v85, v86, v87, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_10012A944()
{
  v1 = *v0;
  if (*(*v0 + 16))
  {
    v2 = v1[4];
    v3 = v1[5];
    v4 = v1[6];

    sub_10014A764(0, 1);
    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10012A9A8(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_10006FA64;

  return v7();
}

void sub_10012AAA8(uint64_t a1)
{
  v3 = (v1 + OBJC_IVAR____TtC13modelmanagerd14RequestManager_pendingForegroundGroups);
  sub_100004CBC();
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  v30[1] = a1;

  sub_1000440DC();
  sub_100060948(v6, v7, v8);
  v10 = v9;

  if (v10)
  {
    v11 = (v1 + OBJC_IVAR____TtC13modelmanagerd14RequestManager_pendingBackgroundGroups);
    sub_100009E10();
    v12 = swift_beginAccess();
    v14 = *v11;
    v13 = v11[1];
    v30[0] = a1;
    __chkstk_darwin(v12);
    sub_100061B00();
    *(v15 - 32) = v14;
    *(v15 - 24) = v13;
    *(v15 - 16) = v30;

    v16 = sub_100005F04();
    sub_100060948(v16, v17, v13);
    v19 = v18;

    if (v19)
    {
      if (qword_1001B8AB8 != -1)
      {
        sub_100005344();
        swift_once();
      }

      v20 = type metadata accessor for Logger();
      sub_100002FD0(v20, qword_1001BD750);
      v21 = Logger.logObject.getter();
      static os_log_type_t.fault.getter();
      v22 = sub_10000A82C();
      if (os_log_type_enabled(v22, v23))
      {
        sub_1000057F8();
        v24 = swift_slowAlloc();
        sub_10000A240(v24);
        sub_100035D10();
        _os_log_impl(v25, v26, v27, v28, v29, 2u);
        sub_100002BD0();
      }
    }
  }
}

uint64_t sub_10012AC70(uint64_t a1)
{
  v3 = (v1 + OBJC_IVAR____TtC13modelmanagerd14RequestManager_pendingForegroundGroups);
  sub_100004CBC();
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  v35 = a1;
  v31 = v4;
  v32 = v5;
  v33 = &v35;

  sub_100060948(sub_10014AFC0, v30, v5);
  v7 = v6;

  if ((v7 & 1) == 0)
  {
    goto LABEL_8;
  }

  v8 = (v1 + OBJC_IVAR____TtC13modelmanagerd14RequestManager_pendingBackgroundGroups);
  sub_100004CBC();
  v9 = swift_beginAccess();
  v10 = *v8;
  v11 = v8[1];
  v34 = a1;
  __chkstk_darwin(v9);
  sub_10001854C();
  *(v12 - 32) = v10;
  *(v12 - 24) = v11;
  *(v12 - 16) = &v34;

  v13 = sub_100026BB0();
  sub_100060948(v13, v14, v11);
  v16 = v15;

  if (v16)
  {
    if (qword_1001B8AB8 != -1)
    {
      sub_100005344();
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_10000641C(v17, qword_1001BD750);
    v18 = Logger.logObject.getter();
    static os_log_type_t.fault.getter();
    v19 = sub_10000A82C();
    if (os_log_type_enabled(v19, v20))
    {
      sub_1000057F8();
      *swift_slowAlloc() = 0;
      sub_10014B478(&_mh_execute_header, v21, v22, "findGroupInPendingAndRemove couldn't find pending group with assets");
      sub_100002BD0();
    }

    v23 = type metadata accessor for ModelManagerError();
    sub_100002E68();
    sub_10005FAF0(v24, v25);
    sub_10000EF40();
    v26 = swift_allocError();
    sub_100011D90(v26, v27);
    sub_100006098(v23);
    (*(v28 + 104))();
    return swift_willThrow();
  }

  else
  {
LABEL_8:
    sub_100002D24();
    swift_beginAccess();
    sub_100060B3C(a1);
    swift_endAccess();
  }
}

void sub_10012AF30()
{
  v1 = (v0 + OBJC_IVAR____TtC13modelmanagerd14RequestManager_activeGroups);
  sub_100009E10();
  swift_beginAccess();
  v2 = *v1;
  v3 = v1[1];
  v4 = *(v3 + 16);

  for (i = 0; ; i = v6)
  {
    if (v4 == i)
    {

      return;
    }

    if (i >= *(v3 + 16))
    {
      break;
    }

    v6 = i + 1;
    v7 = *(*(v3 + 8 * i + 32) + OBJC_IVAR____TtCC13modelmanagerd14RequestManager14ExecutionGroup_assets);

    sub_100078D90();
  }

  __break(1u);
}

void sub_10012B000()
{
  sub_1000055B0();
  v70 = v0;
  v2 = v1;
  v3 = sub_10002A104();
  v4 = type metadata accessor for ModelCatalogAsset(v3);
  v5 = sub_100002BDC(v4);
  v72 = v6;
  v73 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v5);
  sub_100002B8C();
  v11 = v10 - v9;
  v12 = type metadata accessor for AssetCost();
  v13 = sub_100002BDC(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v13);
  v20 = v68 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v18);
  v23 = v68 - v22;
  v24 = __chkstk_darwin(v21);
  v26 = v68 - v25;
  __chkstk_darwin(v24);
  sub_1000DB284();
  v71 = v27;
  v68[1] = v2;
  v28 = *(v2 + OBJC_IVAR____TtCC13modelmanagerd14RequestManager14ExecutionGroup_assets);

  sub_100078D90();
  v30 = v29;
  AssetCost.init(onDeviceMemory:)();
  v32 = *(v15 + 16);
  v31 = v15 + 16;
  v69 = v26;
  v74 = v12;
  v32(v23, v26, v12);
  v33 = *(v30 + 56);
  v34 = 1 << *(v30 + 32);
  sub_10000D160();
  if (v39 != v40)
  {
    v37 = ~v38;
  }

  v41 = v37 & v35;
  v42 = (v36 + 63) >> 6;
  v75 = (v31 - 8);
  v43 = (v31 + 16);

  v44 = 0;
  if (v41)
  {
    goto LABEL_10;
  }

  while (1)
  {
    v45 = v44 + 1;
    if (__OFADD__(v44, 1))
    {
      __break(1u);
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    if (v45 >= v42)
    {
      break;
    }

    v41 = *(v30 + 56 + 8 * v45);
    ++v44;
    if (v41)
    {
      v44 = v45;
      do
      {
LABEL_10:
        v41 &= v41 - 1;
        v46 = *(v30 + 48);
        v47 = *(v72 + 72);
        sub_1000128DC();
        sub_10005CAA8(v48, v11);
        v49 = v11 + *(v73 + 8);
        static AssetCost.+ infix(_:_:)();
        sub_100009CDC();
        sub_10000D300();
        (*v75)(v23, v74);
        v50 = *v43;
        v51 = sub_10000CD1C();
        v52(v51);
      }

      while (v41);
      continue;
    }
  }

  v20 = v74;
  v53 = *v75;
  (*v75)(v69, v74);

  v41 = v71;
  (*v43)(v71, v23, v20);

  v54 = AssetCost.onDeviceMemory.getter();
  v55 = v70;
  if (v54 <= v70)
  {
    v53(v41, v20);
    goto LABEL_20;
  }

  v56 = AssetCost.onDeviceMemory.getter();
  v30 = v56 - v55;
  if (v56 < v55)
  {
    goto LABEL_22;
  }

  v73 = v53;
  if (qword_1001B8AB8 == -1)
  {
    goto LABEL_16;
  }

LABEL_23:
  sub_100005344();
  swift_once();
LABEL_16:
  v57 = type metadata accessor for Logger();
  sub_100002FD0(v57, qword_1001BD750);

  v58 = Logger.logObject.getter();
  v59 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v58, v59))
  {
    sub_100002F10();
    v60 = swift_slowAlloc();
    sub_1000033D0();
    v61 = swift_slowAlloc();
    v76 = v61;
    *v60 = 136315394;
    v62 = sub_10005F1EC();
    v64 = v20;
    v65 = sub_100004A3C(v62, v63, &v76);

    *(v60 + 4) = v65;
    *(v60 + 12) = 2048;
    *(v60 + 14) = v30;
    _os_log_impl(&_mh_execute_header, v58, v59, "Deferring %s: would go over budget by %lluKB", v60, 0x16u);
    sub_10005D588(v61);
    sub_100002BD0();

    sub_100002BD0();

    v66 = v71;
    v67 = v64;
  }

  else
  {

    v66 = v41;
    v67 = v20;
  }

  v73(v66, v67);
LABEL_20:
  sub_100002EEC();
}

uint64_t sub_10012B4C0()
{
  sub_100002BAC();
  v1 = (v0[5] + OBJC_IVAR____TtC13modelmanagerd14RequestManager_activeGroups);
  sub_1000125C0();
  swift_beginAccess();
  v2 = v1[1];
  v0[6] = v2;
  v3 = *(v2 + 16);
  v0[7] = v3;
  if (v3)
  {
    v0[8] = *v1;
    v0[9] = 0;
    v4 = *(v2 + 16);

    if (v4)
    {
      v0[10] = *(v2 + 32);

      v6 = swift_task_alloc();
      v7 = sub_100019298(v6);
      *v7 = v8;
      v9 = sub_100013778(v7);

      return sub_10006CD0C(v9);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    sub_100001F00();

    return v10();
  }

  return result;
}

uint64_t sub_10012B5D0()
{
  sub_100002BAC();
  sub_100001EF4();
  v2 = *(v1 + 88);
  v3 = *(v1 + 40);
  v4 = *v0;
  sub_100002B9C();
  *v5 = v4;

  v6 = sub_100002C10();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_10012B6C8()
{
  sub_100002BAC();
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[7];

  if (v2 + 1 == v3)
  {
    v5 = v0[8];
    v6 = v0[6];

    sub_100001F00();

    return v7();
  }

  else
  {
    v8 = v0[9] + 1;
    v0[9] = v8;
    v9 = v0[6];
    if (v8 >= *(v9 + 16))
    {
      __break(1u);
    }

    else
    {
      v0[10] = *(v9 + 8 * v8 + 32);

      v10 = swift_task_alloc();
      v11 = sub_100019298(v10);
      *v11 = v12;
      v13 = sub_100013778(v11);

      return sub_10006CD0C(v13);
    }
  }

  return result;
}

uint64_t sub_10012B7D8(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = v1;
  return sub_100004B70(sub_10012B7F4, v1);
}

uint64_t sub_10012B7F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_100026B98();
  sub_1000033DC();
  v13 = v12[6];
  sub_10012BCC4();
  v14 = v13 + OBJC_IVAR____TtC13modelmanagerd14RequestManager_activeGroups;
  sub_100009E10();
  swift_beginAccess();
  v15 = *(v14 + 8);
  v16 = sub_10000E8DC(v15);
  v17 = v15 & 0xC000000000000001;

  for (i = 0; v16 != i; ++i)
  {
    sub_100022F0C(i, v17 == 0, v15);
    if (v17)
    {
      v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v19 = *(v15 + 8 * i + 32);
    }

    v12[7] = v19;
    if (__OFADD__(i, 1))
    {
      __break(1u);
      goto LABEL_23;
    }

    if (sub_10006C8D4())
    {

      if (qword_1001B8AB8 != -1)
      {
        sub_100005344();
        swift_once();
      }

      sub_10014B1E0();
      v41 = type metadata accessor for Logger();
      sub_100002FD0(v41, qword_1001BD750);

      v42 = Logger.logObject.getter();
      static os_log_type_t.default.getter();
      sub_10014B230();

      if (sub_10001E6D8())
      {
        v43 = v12[5];
        sub_100002F10();
        v44 = swift_slowAlloc();
        sub_100011828();
        swift_slowAlloc();
        sub_100003DF0();
        *v44 = 136315394;
        v45 = sub_10005F1EC();
        sub_10000CB58(v45, v46, v47);
        sub_100012918();
        sub_1000166E4();
        sub_10005F1EC();
        v48 = sub_100005AD8();
        sub_10001E638(v48);
        sub_10000C6E8();
        *(v44 + 14) = v19;
        sub_100018928();
        _os_log_impl(v49, v50, v51, v52, v53, 0x16u);
        sub_1000133D8();
        swift_arrayDestroy();
        sub_100007C2C();

        sub_100002BD0();
      }

      v54 = swift_task_alloc();
      v12[8] = v54;
      *v54 = v12;
      v54[1] = sub_10012BB74;
      sub_1000031B8(v12[6]);
      sub_100001FBC();

      return sub_10006CD0C(v55);
    }
  }

  if (qword_1001B8AB8 == -1)
  {
    goto LABEL_10;
  }

LABEL_23:
  sub_100005344();
  swift_once();
LABEL_10:
  v20 = type metadata accessor for Logger();
  sub_100002FD0(v20, qword_1001BD750);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.fault.getter();
  if (sub_100002F80(v22))
  {
    sub_1000057F8();
    v23 = swift_slowAlloc();
    sub_10000A240(v23);
    sub_1000059D8(&_mh_execute_header, v24, v25, "We can't acquire assets for foreground group but there are no nonzero cost active groups");
    sub_100002BD0();
  }

  v26 = type metadata accessor for ModelManagerError();
  sub_100002E68();
  sub_10005FAF0(v27, v28);
  sub_10000EF40();
  v29 = swift_allocError();
  sub_100011D90(v29, v30);
  sub_100006098(v26);
  (*(v31 + 104))();
  swift_willThrow();
  sub_100001F00();
  sub_100001FBC();

  return v33(v32, v33, v34, v35, v36, v37, v38, v39, a9, a10, a11, a12);
}

uint64_t sub_10012BB74()
{
  sub_100002BAC();
  sub_100001EF4();
  v2 = *(v1 + 64);
  v3 = *(v1 + 48);
  v4 = *v0;
  sub_100002B9C();
  *v5 = v4;

  v6 = sub_100002C10();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_10012BC6C()
{
  sub_100002BAC();
  v1 = *(v0 + 56);

  sub_100002F54();

  return v2();
}

uint64_t sub_10012BCC4()
{
  v1 = (v0 + OBJC_IVAR____TtC13modelmanagerd14RequestManager_pendingForegroundGroups);
  sub_1000125C0();
  swift_beginAccess();
  v2 = *v1;
  v3 = v1[1];
  v4 = (v0 + OBJC_IVAR____TtC13modelmanagerd14RequestManager_activeGroups);
  sub_1000125C0();
  swift_beginAccess();
  v5 = *v4;
  v6 = v4[1];

  sub_10000CD38();
  sub_10013D8C8();
  sub_10005D934();

  if (!sub_1000453F0(v4))
  {
    sub_10013ED10();
  }
}

uint64_t sub_10012BD9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = a2;
  v9 = *(a2 + 16);
  if (v9 || *(a4 + 16))
  {
    sub_10012C094(sub_10014AFE4, v5, a1, a2);
    v11 = v10;
    v12 = *(v10 + 16);
    if (v12)
    {
      v13 = 0;
      v14 = OBJC_IVAR____TtC13modelmanagerd14RequestManager_foregroundOvercommitBudget;
      while (v12 != v13)
      {
        if (v13 >= *(v11 + 16))
        {
          __break(1u);
LABEL_24:
          __break(1u);
          goto LABEL_25;
        }

        v8 = *(v11 + 8 * v13 + 32);
        type metadata accessor for RequestManager();

        sub_10012AF30();
        if (__CFADD__(a5, *(v5 + v14)))
        {
          goto LABEL_24;
        }

        sub_10012B000();
        v16 = v15;

        if (v16)
        {
          goto LABEL_17;
        }

        ++v13;
      }

      goto LABEL_16;
    }

    v17 = (v8 + 32);
    if (v9)
    {
      while (1)
      {
        v8 = *v17;
        type metadata accessor for RequestManager();

        sub_10012AF30();
        sub_10012B000();
        v19 = v18;

        if (v19)
        {
          break;
        }

        ++v17;
        if (!--v9)
        {
          goto LABEL_13;
        }
      }
    }

    else
    {
LABEL_13:
      v20 = *(a4 + 16);
      v21 = (a4 + 32);
      if (!v20)
      {
LABEL_16:

        return 0;
      }

      while (1)
      {
        v8 = *v21;
        type metadata accessor for RequestManager();

        sub_10012AF30();
        sub_10012B000();
        v23 = v22;

        if (v23)
        {
          break;
        }

        ++v21;
        if (!--v20)
        {
          goto LABEL_16;
        }
      }
    }

LABEL_17:

    return v8;
  }

  if (qword_1001B8AB8 != -1)
  {
LABEL_25:
    sub_100005344();
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  sub_10000641C(v25, qword_1001BD750);
  v26 = Logger.logObject.getter();
  static os_log_type_t.fault.getter();
  v27 = sub_10000A82C();
  if (os_log_type_enabled(v27, v28))
  {
    sub_1000057F8();
    *swift_slowAlloc() = 0;
    sub_10014B478(&_mh_execute_header, v29, v30, "In determineNextGroupToAcquire but all pending groups are empty");
    sub_100002BD0();
  }

  v31 = type metadata accessor for ModelManagerError();
  sub_100002E68();
  sub_10005FAF0(v32, v33);
  sub_10000EF40();
  v34 = swift_allocError();
  sub_100011D90(v34, v35);
  sub_100006098(v31);
  (*(v36 + 104))();
  swift_willThrow();
  return v8;
}

uint64_t sub_10012C094(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 + 16);
  result = static _UnsafeBitSet._withTemporaryBitSet(wordCount:run:)();
  if (v4)
  {
    return sub_10002CBE0(0, 0);
  }

  __break(1u);
  return result;
}

void sub_10012C13C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC13modelmanagerd14RequestManager_nextExecutionGroupToAcquire;
  if (!*(v1 + OBJC_IVAR____TtC13modelmanagerd14RequestManager_nextExecutionGroupToAcquire))
  {
    v5 = (v1 + OBJC_IVAR____TtC13modelmanagerd14RequestManager_pendingForegroundGroups);
    sub_100004CBC();
    swift_beginAccess();
    v7 = *v5;
    v6 = v5[1];
    v8 = (v1 + OBJC_IVAR____TtC13modelmanagerd14RequestManager_pendingBackgroundGroups);
    sub_100004CBC();
    swift_beginAccess();
    v10 = *v8;
    v9 = v8[1];

    v12 = sub_10012BD9C(v7, v6, v11, v9, a1);

    if (!v2)
    {
      v13 = *(v1 + v3);
      *(v1 + v3) = v12;

      if (v12)
      {
        if (qword_1001B8AB8 != -1)
        {
          sub_100005344();
          swift_once();
        }

        v14 = type metadata accessor for Logger();
        sub_10000641C(v14, qword_1001BD750);
        sub_10014B3BC();

        v15 = Logger.logObject.getter();
        v16 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v15, v16))
        {
          sub_10000A05C();
          v17 = swift_slowAlloc();
          sub_1000033D0();
          v22 = swift_slowAlloc();
          *v17 = 136315138;

          v18 = sub_10005F1EC();

          v19 = sub_100004CB0();
          sub_100004A3C(v19, v20, v21);
          sub_100005974();

          *(v17 + 4) = v18;
          _os_log_impl(&_mh_execute_header, v15, v16, "Next exection group: %s", v17, 0xCu);
          sub_10005D588(v22);
          sub_100002BD0();

          sub_100007C2C();
        }

        else
        {
        }
      }
    }
  }
}

uint64_t sub_10012C37C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_100004B70(sub_10012C398, v1);
}

uint64_t sub_10012C398()
{
  sub_100002BAC();
  v1 = v0[3];
  v2 = OBJC_IVAR____TtC13modelmanagerd14RequestManager_nextExecutionGroupToAcquire;
  v3 = OBJC_IVAR____TtC13modelmanagerd14RequestManager_assetManager;
  v0[4] = OBJC_IVAR____TtC13modelmanagerd14RequestManager_nextExecutionGroupToAcquire;
  v0[5] = v3;
  v4 = *(v1 + v2);
  v0[6] = 0;
  if (v4)
  {
    sub_100002F54();

    return v5();
  }

  else
  {
    v7 = sub_100042FD4(v1);
    v8 = sub_100018478(v7);

    return _swift_task_switch(v8, v9, v10);
  }
}

uint64_t sub_10012C434()
{
  sub_100002BAC();
  v1 = *(v0 + 24);
  v2 = **(v0 + 56);
  *(v0 + 64) = sub_10003EC04();
  v3 = sub_100005F04();

  return _swift_task_switch(v3, v4, 0);
}

uint64_t sub_10012C4A0()
{
  sub_100001ED0();
  v1 = v0[6];
  v2 = v0[3];
  sub_10012C13C(v0[8]);
  if (v1)
  {
    sub_100001F00();
LABEL_5:

    return v3();
  }

  if (*(v0[3] + v0[4]))
  {
    v0[6] = 0;
    sub_100002F54();
    goto LABEL_5;
  }

  v5 = swift_task_alloc();
  v0[9] = v5;
  *v5 = v0;
  v5[1] = sub_10012C594;
  v6 = v0[3];
  v7 = sub_1000031B8(v0[2]);

  return sub_10012B7D8(v7);
}

uint64_t sub_10012C594()
{
  sub_100001ED0();
  sub_100001EF4();
  v3 = v2;
  sub_100004B40();
  *v4 = v3;
  v6 = *(v5 + 72);
  v7 = *v1;
  sub_100002B9C();
  *v8 = v7;
  *(v3 + 80) = v0;

  if (v0)
  {
    sub_10000778C();

    return v9();
  }

  else
  {
    v11 = *(v3 + 24);
    sub_10000E700();

    return _swift_task_switch(v12, v13, v14);
  }
}

uint64_t sub_10012C6B8()
{
  sub_100002BAC();
  v1 = v0[3];
  v2 = *(v1 + v0[4]);
  v0[6] = v0[10];
  if (v2)
  {
    sub_100002F54();

    return v3();
  }

  else
  {
    v5 = v0[5];
    v6 = sub_100042FD4(v1);
    v7 = sub_100018478(v6);

    return _swift_task_switch(v7, v8, v9);
  }
}

uint64_t sub_10012C748(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = v1;
  return sub_100004B70(sub_10012C764, v1);
}

uint64_t sub_10012C764(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_100026B98();
  sub_1000033DC();
  v13 = v12[6];
  sub_10012AAA8(v12[5]);
  v14 = OBJC_IVAR____TtC13modelmanagerd14RequestManager_nextExecutionGroupToAcquire;
  v15 = OBJC_IVAR____TtCC13modelmanagerd14RequestManager14ExecutionGroup_uuid;
  v12[7] = OBJC_IVAR____TtC13modelmanagerd14RequestManager_nextExecutionGroupToAcquire;
  v12[8] = v15;
  v12[9] = 0;
  v16 = v12[6];
  if (!*(v16 + v14))
  {
    goto LABEL_20;
  }

  v17 = v12[5];
  v18 = *(v16 + v14);

  static UUID.== infix(_:_:)();
  sub_100009540();

  if (v15)
  {
    sub_10014B350();
    if (v17)
    {
      sub_100026B28();
      v19 = v12[8];
      v20 = v12[5];

      static UUID.== infix(_:_:)();
      sub_10001E4A8();

      if (v19)
      {
        if (qword_1001B8AB8 != -1)
        {
          sub_100005344();
          swift_once();
        }

        v21 = type metadata accessor for Logger();
        sub_100002FD0(v21, qword_1001BD750);
        v22 = Logger.logObject.getter();
        static os_log_type_t.info.getter();
        sub_100006390();
        if (os_log_type_enabled(v22, v23))
        {
          sub_1000057F8();
          v24 = swift_slowAlloc();
          sub_10000BF10(v24);
          sub_100009DDC(&_mh_execute_header, v25, v26, "Cleaning up nextExecutionGroupToAcquire");
          sub_100002BD0();
        }

        v27 = v12[6];
        v19 = v12[7];

        sub_100057680();
      }

      sub_10014B350();
      if (v19)
      {
      }

      else
      {
        swift_willThrow();
      }

      sub_100001F00();
    }

    else
    {
      v52 = v12[6];
      v51 = v12[7];
      v53 = v12[5];
      sub_100002D24();
      swift_beginAccess();
      sub_100140E60(v53);
      swift_endAccess();
      sub_100057680();
      sub_100002F54();
    }

    sub_100001FBC();

    return v55(v54, v55, v56, v57, v58, v59, v60, v61, a9, a10, a11, a12);
  }

  sub_1000559AC();
  if (v15)
  {
    v28 = qword_1001B8AB8;

    if (v28 != -1)
    {
      sub_100005344();
      swift_once();
    }

    sub_10014B1E0();
    v29 = type metadata accessor for Logger();
    sub_100002FD0(v29, qword_1001BD750);

    v30 = Logger.logObject.getter();
    static os_log_type_t.default.getter();
    sub_10014B230();

    if (sub_10001E6D8())
    {
      v31 = v12[5];
      sub_100002F10();
      v32 = swift_slowAlloc();
      sub_100011828();
      swift_slowAlloc();
      sub_100003DF0();
      *v32 = 136315394;
      v33 = sub_10005F1EC();
      sub_10000CB58(v33, v34, v35);
      sub_100012918();
      sub_1000166E4();
      sub_10005F1EC();
      v36 = sub_100005AD8();
      sub_10001E638(v36);
      sub_10000C6E8();
      *(v32 + 14) = v15;
      sub_100018928();
      _os_log_impl(v37, v38, v39, v40, v41, 0x16u);
      sub_1000133D8();
      swift_arrayDestroy();
      sub_100007C2C();

      sub_100002BD0();
    }

    v42 = swift_task_alloc();
    v43 = sub_100019298(v42);
    *v43 = v44;
    sub_10000F224(v43);
    sub_100001FBC();

    return sub_10006CA4C(v45);
  }

  else
  {
LABEL_20:
    v48 = swift_task_alloc();
    v12[12] = v48;
    *v48 = v12;
    sub_100018720(v48);
    sub_100001FBC();

    return sub_10012C37C(v49);
  }
}

uint64_t sub_10012CAE4()
{
  sub_100002BAC();
  sub_100001EF4();
  v2 = *(v1 + 88);
  v3 = *(v1 + 48);
  v4 = *v0;
  sub_100002B9C();
  *v5 = v4;

  v6 = sub_100002C10();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_10012CBDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_100026B98();
  sub_1000033DC();
  v15 = v13[10];

  v16 = v13[9];
  if (static Task<>.isCancelled.getter())
  {
    if (qword_1001B8AB8 != -1)
    {
      sub_100005344();
      swift_once();
    }

    v17 = v13[5];
    v18 = type metadata accessor for Logger();
    sub_10000641C(v18, qword_1001BD750);
    sub_10000D0E8();

    v19 = Logger.logObject.getter();
    static os_log_type_t.default.getter();
    sub_1000089B8();
    if (sub_10000A384())
    {
      v20 = v13[5];
      sub_10000A05C();
      swift_slowAlloc();
      sub_100003890();
      sub_1000265BC();
      *v17 = 136315138;
      v21 = sub_10005F1EC();
      sub_10000CB58(v21, v22, v23);
      sub_1000125DC();

      *(v17 + 4) = v14;
      sub_100035348(&_mh_execute_header, v24, v25, "%s cancelled while waiting for turn.");
      sub_100002068();
      sub_100002BD0();
    }

    v26 = type metadata accessor for ModelManagerError();
    sub_100002E68();
    sub_10005FAF0(v27, v28);
    sub_10000EF40();
    v29 = swift_allocError();
    sub_100011D90(v29, v30);
    sub_100006098(v26);
    (*(v31 + 104))();
    v16 = v19;
    swift_willThrow();
    goto LABEL_7;
  }

  v13[9] = v16;
  sub_100026B28();
  if (!v12)
  {
    goto LABEL_33;
  }

  v39 = v13[8];
  sub_100053C58();
  static UUID.== infix(_:_:)();
  sub_100009540();

  if (v39)
  {
    v26 = v13[6];
    sub_10012AC70(v13[5]);
    if (!v16)
    {
      v41 = v13[6];
      v40 = v13[7];
      v42 = v13[5];
      sub_100002D24();
      swift_beginAccess();
      sub_100140E60(v42);
      swift_endAccess();
      sub_100057680();
      sub_100002F54();
LABEL_22:
      sub_100001FBC();

      return v44(v43, v44, v45, v46, v47, v48, v49, v50, a9, a10, a11, a12);
    }

LABEL_7:
    sub_100026B28();
    if (v26)
    {
      v16 = v13[8];
      sub_100053C58();
      static UUID.== infix(_:_:)();
      sub_10001E4A8();

      if (v16)
      {
        if (qword_1001B8AB8 != -1)
        {
          sub_100005344();
          swift_once();
        }

        v32 = type metadata accessor for Logger();
        sub_100002FD0(v32, qword_1001BD750);
        v33 = Logger.logObject.getter();
        static os_log_type_t.info.getter();
        sub_100006390();
        if (os_log_type_enabled(v33, v34))
        {
          sub_1000057F8();
          v35 = swift_slowAlloc();
          sub_10000BF10(v35);
          sub_100009DDC(&_mh_execute_header, v36, v37, "Cleaning up nextExecutionGroupToAcquire");
          sub_100002BD0();
        }

        v38 = v13[6];
        v16 = v13[7];

        sub_100057680();
      }
    }

    sub_10014B350();
    if (v16)
    {
    }

    else
    {
      swift_willThrow();
    }

    sub_100001F00();
    goto LABEL_22;
  }

  sub_1000559AC();
  if (v39)
  {
    v52 = qword_1001B8AB8;

    if (v52 != -1)
    {
      sub_100005344();
      swift_once();
    }

    sub_10014B1E0();
    v53 = type metadata accessor for Logger();
    sub_100002FD0(v53, qword_1001BD750);

    v54 = Logger.logObject.getter();
    static os_log_type_t.default.getter();
    sub_10014B230();

    if (sub_10001E6D8())
    {
      v55 = v13[5];
      sub_100002F10();
      v56 = swift_slowAlloc();
      sub_100011828();
      swift_slowAlloc();
      sub_100003DF0();
      *v56 = 136315394;
      v57 = sub_10005F1EC();
      sub_10000CB58(v57, v58, v59);
      sub_100012918();
      sub_1000166E4();
      sub_10005F1EC();
      v60 = sub_100005AD8();
      sub_10001E638(v60);
      sub_10000C6E8();
      *(v56 + 14) = v39;
      sub_100018928();
      _os_log_impl(v61, v62, v63, v64, v65, 0x16u);
      sub_1000133D8();
      swift_arrayDestroy();
      sub_100007C2C();

      sub_100002BD0();
    }

    v66 = swift_task_alloc();
    v67 = sub_100019298(v66);
    *v67 = v68;
    sub_10000F224();
    sub_100001FBC();

    return sub_10006CA4C(v69);
  }

  else
  {
LABEL_33:
    v71 = swift_task_alloc();
    v13[12] = v71;
    *v71 = v13;
    sub_100018720(v71);
    sub_100001FBC();

    return sub_10012C37C(v72);
  }
}

uint64_t sub_10012D078()
{
  sub_100001ED0();
  sub_10000D554();
  sub_100004B40();
  *v4 = v3;
  v5 = *(v1 + 96);
  *v4 = *v2;
  *(v3 + 104) = v0;

  sub_10000A9E0();
  v7 = *(v6 + 48);
  sub_10000E700();

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_10012D18C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_100026B98();
  sub_1000033DC();
  v15 = v13[13];
  if (static Task<>.isCancelled.getter())
  {
    if (qword_1001B8AB8 != -1)
    {
      sub_100005344();
      swift_once();
    }

    v16 = v13[5];
    v17 = type metadata accessor for Logger();
    sub_10000641C(v17, qword_1001BD750);
    sub_10000D0E8();

    v18 = Logger.logObject.getter();
    static os_log_type_t.default.getter();
    sub_1000089B8();
    if (sub_10000A384())
    {
      v19 = v13[5];
      sub_10000A05C();
      swift_slowAlloc();
      sub_100003890();
      sub_1000265BC();
      *v16 = 136315138;
      v20 = sub_10005F1EC();
      sub_10000CB58(v20, v21, v22);
      sub_1000125DC();

      *(v16 + 4) = v14;
      sub_100035348(&_mh_execute_header, v23, v24, "%s cancelled while waiting for turn.");
      sub_100002068();
      sub_100002BD0();
    }

    v25 = type metadata accessor for ModelManagerError();
    sub_100002E68();
    sub_10005FAF0(v26, v27);
    sub_10000EF40();
    v28 = swift_allocError();
    sub_100011D90(v28, v29);
    sub_100006098(v25);
    (*(v30 + 104))();
    v15 = v18;
    swift_willThrow();
    goto LABEL_7;
  }

  v13[9] = v15;
  sub_100026B28();
  if (!v12)
  {
    goto LABEL_33;
  }

  v38 = v13[8];
  sub_100053C58();
  static UUID.== infix(_:_:)();
  sub_100009540();

  if (v38)
  {
    v25 = v13[6];
    sub_10012AC70(v13[5]);
    if (!v15)
    {
      v40 = v13[6];
      v39 = v13[7];
      v41 = v13[5];
      sub_100002D24();
      swift_beginAccess();
      sub_100140E60(v41);
      swift_endAccess();
      sub_100057680();
      sub_100002F54();
LABEL_22:
      sub_100001FBC();

      return v43(v42, v43, v44, v45, v46, v47, v48, v49, a9, a10, a11, a12);
    }

LABEL_7:
    sub_100026B28();
    if (v25)
    {
      v15 = v13[8];
      sub_100053C58();
      static UUID.== infix(_:_:)();
      sub_10001E4A8();

      if (v15)
      {
        if (qword_1001B8AB8 != -1)
        {
          sub_100005344();
          swift_once();
        }

        v31 = type metadata accessor for Logger();
        sub_100002FD0(v31, qword_1001BD750);
        v32 = Logger.logObject.getter();
        static os_log_type_t.info.getter();
        sub_100006390();
        if (os_log_type_enabled(v32, v33))
        {
          sub_1000057F8();
          v34 = swift_slowAlloc();
          sub_10000BF10(v34);
          sub_100009DDC(&_mh_execute_header, v35, v36, "Cleaning up nextExecutionGroupToAcquire");
          sub_100002BD0();
        }

        v37 = v13[6];
        v15 = v13[7];

        sub_100057680();
      }
    }

    sub_10014B350();
    if (v15)
    {
    }

    else
    {
      swift_willThrow();
    }

    sub_100001F00();
    goto LABEL_22;
  }

  sub_1000559AC();
  if (v38)
  {
    v51 = qword_1001B8AB8;

    if (v51 != -1)
    {
      sub_100005344();
      swift_once();
    }

    sub_10014B1E0();
    v52 = type metadata accessor for Logger();
    sub_100002FD0(v52, qword_1001BD750);

    v53 = Logger.logObject.getter();
    static os_log_type_t.default.getter();
    sub_10014B230();

    if (sub_10001E6D8())
    {
      v54 = v13[5];
      sub_100002F10();
      v55 = swift_slowAlloc();
      sub_100011828();
      swift_slowAlloc();
      sub_100003DF0();
      *v55 = 136315394;
      v56 = sub_10005F1EC();
      sub_10000CB58(v56, v57, v58);
      sub_100012918();
      sub_1000166E4();
      sub_10005F1EC();
      v59 = sub_100005AD8();
      sub_10001E638(v59);
      sub_10000C6E8();
      *(v55 + 14) = v38;
      sub_100018928();
      _os_log_impl(v60, v61, v62, v63, v64, 0x16u);
      sub_1000133D8();
      swift_arrayDestroy();
      sub_100007C2C();

      sub_100002BD0();
    }

    v65 = swift_task_alloc();
    v66 = sub_100019298(v65);
    *v66 = v67;
    sub_10000F224();
    sub_100001FBC();

    return sub_10006CA4C(v68);
  }

  else
  {
LABEL_33:
    v70 = swift_task_alloc();
    v13[12] = v70;
    *v70 = v13;
    sub_100018720();
    sub_100001FBC();

    return sub_10012C37C(v71);
  }
}

uint64_t sub_10012D620()
{
  sub_10000639C();
  sub_100003884();
  v3 = v2[13];
  sub_100026B28();
  if (v0)
  {
    v1 = v2[8];
    v4 = v2[5];

    static UUID.== infix(_:_:)();
    sub_10001E4A8();

    if (v1)
    {
      if (qword_1001B8AB8 != -1)
      {
        sub_100005344();
        swift_once();
      }

      v5 = type metadata accessor for Logger();
      sub_100002FD0(v5, qword_1001BD750);
      v6 = Logger.logObject.getter();
      static os_log_type_t.info.getter();
      sub_100006390();
      if (os_log_type_enabled(v6, v7))
      {
        sub_1000057F8();
        v8 = swift_slowAlloc();
        sub_10000BF10(v8);
        sub_100009DDC(&_mh_execute_header, v9, v10, "Cleaning up nextExecutionGroupToAcquire");
        sub_100002BD0();
      }

      v11 = v2[6];
      v1 = v2[7];

      sub_100057680();
    }
  }

  sub_10014B350();
  if (v1)
  {
  }

  else
  {
    swift_willThrow();
  }

  sub_100001F00();
  sub_100003D20();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19);
}

uint64_t sub_10012D768()
{
  sub_100002BAC();
  v1[10] = v2;
  v1[11] = v0;
  v1[9] = v3;
  v4 = sub_100065020(&qword_1001BB3F8, &qword_100171D50);
  sub_100002F04(v4);
  v6 = *(v5 + 64);
  v1[12] = sub_100002C58();
  v7 = type metadata accessor for InferenceProviderRequestConfiguration();
  v1[13] = v7;
  sub_100002F44(v7);
  v1[14] = v8;
  v10 = *(v9 + 64);
  v1[15] = sub_100002C58();
  v11 = sub_100065020(&qword_1001B94F0, &unk_100172060);
  v1[16] = v11;
  sub_100002F44(v11);
  v1[17] = v12;
  v14 = *(v13 + 64);
  v1[18] = sub_100002C58();
  v15 = type metadata accessor for RequestPriority();
  v1[19] = v15;
  sub_100002F44(v15);
  v1[20] = v16;
  v18 = *(v17 + 64);
  v1[21] = sub_100002C58();
  v19 = type metadata accessor for DaemonRequest.ManagerOwnedState(0);
  sub_100002F04(v19);
  v21 = *(v20 + 64);
  v1[22] = sub_100002C58();
  v22 = sub_100065020(&qword_1001B8F48, &qword_10016FB30);
  v1[23] = v22;
  sub_100002F44(v22);
  v1[24] = v23;
  v25 = *(v24 + 64);
  v1[25] = sub_100002C58();
  v26 = sub_100065020(&qword_1001B94D0, &unk_100171E80);
  v1[26] = v26;
  sub_100002F44(v26);
  v1[27] = v27;
  v29 = *(v28 + 64);
  v1[28] = sub_100002C58();
  v30 = sub_100002C10();

  return _swift_task_switch(v30, v31, v32);
}

uint64_t sub_10012D9B0()
{
  sub_100005B0C();
  sub_10001A5C4();
  v1 = v0[28];
  v2 = v0[22];
  v22 = v0[25];
  v23 = v0[21];
  v3 = v0[14];
  v4 = v0[15];
  v24 = v0[18];
  v25 = v0[13];
  v27 = v0[12];
  v5 = v0[10];
  v6 = v0[9];
  v26 = sub_100042FD4(v0[11]);
  v29 = *(v6 + OBJC_IVAR____TtCC13modelmanagerd14RequestManager14ExecutionGroup_assets);
  v28 = *(v6 + OBJC_IVAR____TtCC13modelmanagerd14RequestManager14ExecutionGroup_runtimeAssets);
  v0[8] = v6;
  _s14ExecutionGroupCMa();
  sub_10000CC20();
  sub_10005FAF0(v7, v8);

  sub_10000CD1C();
  UUIDIdentifier.init(_:)();
  RequestMetadata.id.getter();
  v9 = OBJC_IVAR____TtC13modelmanagerd13DaemonRequest_unsafeManagerOwnedState;
  sub_100004CBC();
  swift_beginAccess();
  sub_100005DD8();
  sub_10005CAA8(v5 + v9, v2);
  InferenceProviderRequestConfiguration.requestPriority.getter();
  sub_1000115C8();
  sub_10000D300();
  RequestMetadata.sessionID.getter();
  (*(v3 + 16))(v4, v5 + v9, v25);
  InferenceProviderRequestConfiguration.auditToken.getter();
  v10 = *(v3 + 8);
  v11 = sub_10014B3C8();
  v12(v11);
  v13 = *v26;
  v14 = swift_task_alloc();
  v0[29] = v14;
  *v14 = v0;
  v14[1] = sub_10012DBC8;
  v15 = v0[28];
  v16 = v0[25];
  v17 = v0[21];
  v18 = v0[18];
  v19 = v0[12];
  sub_1000135DC();

  return sub_1000C70B0();
}

uint64_t sub_10012DBC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_1000133FC();
  v20 = *v19;
  v21 = *v19;
  sub_100002B9C();
  *v22 = v21;
  v23 = v20[29];
  v24 = *v19;
  *v22 = *v19;
  v21[30] = v18;

  sub_10014B368();
  v26 = *(v25 + 224);
  v27 = v20[27];
  v73 = v20[26];
  sub_10014B368();
  v72 = *(v28 + 200);
  sub_10014B368();
  v30 = *(v29 + 192);
  v31 = v20[23];
  if (v18)
  {
    v69 = v26;
    v33 = v21[20];
    v32 = v21[21];
    v35 = v21[18];
    v34 = v21[19];
    v37 = v21[16];
    v36 = v21[17];
    v39 = v21 + 11;
    v38 = v21[11];
    sub_10000ED84(v39[1], &qword_1001BB3F8);
    (*(v36 + 8))(v35, v37);
    v40 = *(v33 + 8);
    v41 = sub_100011A70();
    v42(v41);
    (*(v30 + 8))(v72, v31);
    (*(v27 + 8))(v69, v73);
    sub_1000037A0();

    return _swift_task_switch(v43, v44, v45);
  }

  else
  {
    v68 = v21[21];
    v70 = v21[22];
    v47 = v21[20];
    v67 = v21[19];
    v49 = v21[17];
    v48 = v21[18];
    v50 = v21[16];
    v71 = v21[15];
    sub_10000ED84(v21[12], &qword_1001BB3F8);
    v51 = *(v49 + 8);
    v52 = sub_1000DB38C();
    v53(v52);
    (*(v47 + 8))(v68, v67);
    v54 = *(v30 + 8);
    v55 = sub_100036724();
    v56(v55);
    (*(v27 + 8))(v26, v73);

    v57 = v24[1];
    sub_1000037A0();

    return v59(v58, v59, v60, v61, v62, v63, v64, v65, a9, v67, v68, v70, v71, v72, v73, a16, a17, a18);
  }
}

uint64_t sub_10012DECC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_10000385C();
  sub_100003284();
  v15 = v14[30];
  v16 = v14[28];
  v17 = v14[25];
  v19 = v14[21];
  v18 = v14[22];
  v20 = v14[18];
  v21 = v14[11];
  v33 = v14[15];
  v34 = v14[12];
  v22 = v14[9];
  sub_100002D24();
  swift_beginAccess();
  sub_100060B3C(v22);
  swift_endAccess();

  swift_willThrow();

  sub_100001F00();
  v23 = v14[30];
  sub_100003540();

  return v25(v24, v25, v26, v27, v28, v29, v30, v31, v33, v34, a11, a12, a13, a14);
}

uint64_t sub_10012DFC0()
{
  sub_100002BAC();
  v1[14] = v2;
  v1[15] = v0;
  v1[12] = v3;
  v1[13] = v4;
  v1[11] = v5;
  v6 = type metadata accessor for RequestPriority();
  v1[16] = v6;
  sub_100002F44(v6);
  v1[17] = v7;
  v9 = *(v8 + 64);
  v1[18] = sub_10000F0C0();
  v1[19] = swift_task_alloc();
  v10 = type metadata accessor for DaemonRequest.ManagerOwnedState(0);
  sub_100002F04(v10);
  v12 = *(v11 + 64);
  v1[20] = sub_100002C58();
  v13 = type metadata accessor for InferenceProviderDescriptor();
  sub_100002F04(v13);
  v15 = *(v14 + 64);
  v1[21] = sub_100002C58();
  v16 = sub_100002C10();

  return _swift_task_switch(v16, v17, v18);
}

uint64_t sub_10012E0B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_100005B0C();
  sub_10001A5C4();
  v21 = v20[15];
  v22 = v20[12];
  v66 = v20[13];
  v67 = v20[14];
  v62 = v22;
  v63 = v20[21];
  v23 = v20[11];
  v24 = v23[3];
  sub_100002EE0();
  v65 = swift_allocObject();
  *(v65 + 16) = v21;
  *(v65 + 24) = v23;
  sub_100002EE0();
  v25 = swift_allocObject();
  *(v25 + 16) = v21;
  *(v25 + 24) = v23;
  v64 = v21;
  v26 = v23[7];
  v27 = v23[8];
  sub_100003370(v23 + 4, v26);
  v61 = *(v27 + 8);
  swift_retain_n();
  swift_retain_n();

  v61(v26, v27);
  v28 = _s14ExecutionGroupCMa();
  v29 = *(v28 + 48);
  v30 = *(v28 + 52);
  swift_allocObject();
  v31 = sub_10006BC30(v22, v24, &unk_1001741A0, v65, &unk_1001741B0, v25, v63);
  v20[22] = v31;
  v20[23] = sub_10006CFF8(v21, v23, v66, v67);
  v33 = v20[19];
  v32 = v20[20];
  v35 = v20[17];
  v34 = v20[18];
  v36 = v20[16];
  v37 = v20[11];
  v38 = OBJC_IVAR____TtC13modelmanagerd13DaemonRequest_unsafeManagerOwnedState;
  sub_100004CBC();
  swift_beginAccess();
  sub_100005DD8();
  sub_10005CAA8(v37 + v38, v32);
  InferenceProviderRequestConfiguration.requestPriority.getter();
  sub_1000115C8();
  sub_10000D300();
  (*(v35 + 104))(v34, enum case for RequestPriority.foreground(_:), v36);
  v39 = sub_10002EAE0();
  LOBYTE(v32) = sub_100116BA4(v39, v40);
  v41 = *(v35 + 8);
  v42 = sub_100053C38();
  v41(v42);
  v43 = sub_1000125D0();
  v41(v43);
  v44 = v20[15];
  v45 = &OBJC_IVAR____TtC13modelmanagerd14RequestManager_pendingForegroundGroups;
  if ((v32 & 1) == 0)
  {
    v45 = &OBJC_IVAR____TtC13modelmanagerd14RequestManager_pendingBackgroundGroups;
  }

  v46 = *v45;
  sub_100002D24();
  swift_beginAccess();
  sub_100140E60(v31);
  swift_endAccess();
  v47 = v20[15];
  sub_100003CA4();
  sub_10005FAF0(v48, v49);
  v50 = async function pointer to withTaskCancellationHandler<A>(operation:onCancel:isolation:)[1];
  v51 = swift_task_alloc();
  v20[24] = v51;
  *v51 = v20;
  v51[1] = sub_10005D184;
  sub_1000135DC();

  return withTaskCancellationHandler<A>(operation:onCancel:isolation:)(v52, v53, v54, v55, v56, v57, v58, v59, a9, v61, v62, v63, v64, v65, v66, v67, a17, a18, a19, a20);
}

uint64_t sub_10012E458()
{
  sub_100001ED0();
  v1 = v0[22];
  v2 = v0[23];

  v3 = v0[25];
  v5 = v0[20];
  v4 = v0[21];
  v7 = v0[18];
  v6 = v0[19];

  sub_100001F00();

  return v8();
}

uint64_t sub_10012E4E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v5 = swift_task_alloc();
  v3[5] = v5;
  *v5 = v3;
  v5[1] = sub_10012E588;

  return sub_10012C748(a1);
}

uint64_t sub_10012E588()
{
  sub_100001ED0();
  sub_100001EF4();
  v3 = v2;
  sub_100004B40();
  *v4 = v3;
  v6 = *(v5 + 40);
  v7 = *v1;
  sub_100002B9C();
  *v8 = v7;

  if (v0)
  {
    sub_10000778C();

    return v9();
  }

  else
  {
    v11 = swift_task_alloc();
    v3[6] = v11;
    *v11 = v7;
    v11[1] = sub_10012E6DC;
    v13 = v3[3];
    v12 = v3[4];
    sub_1000031B8(v3[2]);

    return sub_10012D768();
  }
}

uint64_t sub_10012E6DC()
{
  sub_100002BAC();
  sub_100001EF4();
  v2 = *(v1 + 48);
  v3 = *v0;
  sub_100002B9C();
  *v4 = v3;

  sub_100001F00();

  return v5();
}

uint64_t sub_10012E7BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v19 = async function pointer to Task.value.getter[1];
  v20 = swift_task_alloc();
  *(v16 + 16) = v20;
  v21 = sub_100065020(&qword_1001B8F60, &unk_100171260);
  *v20 = v16;
  v20[1] = sub_10006F558;

  return Task.value.getter(a1, a2, &type metadata for () + 8, v21, &protocol self-conformance witness table for Error, v22, v23, v24, a9, a10, a11, a12, a13, a14, a15, a16);
}

void sub_10012E894()
{
  sub_100065020(&qword_1001B8F60, &unk_100171260);

  Task.cancel()();
}

void sub_10012E8F4()
{
  sub_1000055B0();
  v1 = v0;
  v3 = v2;
  v64 = v4;
  v65 = type metadata accessor for DaemonRequest.ManagerOwnedState(0);
  v5 = sub_100002C00(v65);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  sub_100002B8C();
  v10 = v9 - v8;
  v11 = sub_100065020(&qword_1001B9D00, &qword_100171E00);
  sub_100002F04(v11);
  v13 = *(v12 + 64);
  sub_100004B1C();
  __chkstk_darwin(v14);
  v16 = &v61 - v15;
  v17 = type metadata accessor for CustomAssetConfiguration();
  v18 = sub_100002BDC(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  __chkstk_darwin(v18);
  sub_100002B8C();
  v63 = v24 - v23;
  v25 = type metadata accessor for InferenceProviderDescriptor();
  v26 = sub_100002BDC(v25);
  v28 = v27;
  v30 = *(v29 + 64);
  __chkstk_darwin(v26);
  sub_100002B8C();
  v33 = v32 - v31;
  v34 = *(v1 + OBJC_IVAR____TtCC13modelmanagerd14RequestManager14ExecutionGroup_assets);
  sub_1000755A4();
  if ((v35 & 1) == 0)
  {
    goto LABEL_14;
  }

  v61 = v20;
  v62 = v17;
  v36 = v1;
  v38 = *(v3 + 24);
  v37 = *(v3 + 32);
  v39 = sub_100004CB0();
  sub_100003370(v39, v40);
  v41 = *(v37 + 8);
  v42 = sub_100005974();
  v43 = v37;
  v44 = v36;
  v45(v42, v43);
  v46 = static InferenceProviderDescriptor.== infix(_:_:)();
  (*(v28 + 8))(v33, v25);
  if ((v46 & 1) == 0)
  {
    goto LABEL_14;
  }

  sub_10001E72C(v64, v16, &qword_1001B9D00, &qword_100171E00);
  v47 = v62;
  if (sub_10000C6C0(v16, 1, v62) != 1)
  {
    v48 = v61;
    v49 = v63;
    v50 = (*(v61 + 32))(v63, v16, v47);
    v51 = *(v44 + OBJC_IVAR____TtCC13modelmanagerd14RequestManager14ExecutionGroup_runtimeAssets);
    __chkstk_darwin(v50);
    *(&v61 - 2) = v49;

    v52 = sub_100026BB0();
    sub_100128C08(v52, v53, v51);
    sub_10001E4A8();

    (*(v48 + 8))(v49, v47);
LABEL_14:
    sub_100002EEC();
    return;
  }

  sub_10000ED84(v16, &qword_1001B9D00);
  v54 = (v36 + OBJC_IVAR____TtCC13modelmanagerd14RequestManager14ExecutionGroup_unsafeManagerOwnedState);
  sub_100009E10();
  swift_beginAccess();
  v55 = v54[1];
  v67 = *v54;
  v68 = v55;
  v69 = *(v54 + 4);
  v70 = *(&v67 + 1);
  v71 = v55;
  v72[0] = v69;
  sub_10001E72C(&v70, v66, &qword_1001BC468, &qword_100172C40);
  sub_10001E72C(&v71, v66, &qword_1001BC468, &qword_100172C40);
  v56 = &unk_100172C48;
  sub_10001E72C(&v71 + 8, v66, &qword_1001BC470, &unk_100172C48);
  sub_10001E72C(v72, v66, &qword_1001B8F40, &unk_10016FB20);
  v57 = sub_10006CF3C();
  sub_10000ED84(&v70, &qword_1001BC468);
  sub_10000ED84(&v71, &qword_1001BC468);
  sub_10000ED84(&v71 + 8, &qword_1001BC470);
  sub_10000ED84(v72, &qword_1001B8F40);
  v58 = sub_10000E8DC(v57);
  v59 = 0;
  while (1)
  {
    if (v58 == v59)
    {
LABEL_15:

      goto LABEL_14;
    }

    if ((v57 & 0xC000000000000001) != 0)
    {
      sub_100003D88();
      v56 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v59 >= *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_17;
      }

      sub_10014B2AC();
    }

    if (__OFADD__(v59, 1))
    {
      break;
    }

    v60 = OBJC_IVAR____TtC13modelmanagerd13DaemonRequest_unsafeManagerOwnedState;
    sub_100004CBC();
    swift_beginAccess();
    sub_100005DD8();
    sub_10005CAA8(v56 + v60, v10);

    LOBYTE(v60) = *(v10 + *(v65 + 24));
    sub_1000115C8();
    sub_10000D300();
    ++v59;
    if ((v60 & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
}

uint64_t sub_10012EDE0()
{
  sub_100002BAC();
  v1[13] = v2;
  v1[14] = v0;
  v1[11] = v3;
  v1[12] = v4;
  v5 = sub_100065020(&qword_1001B9D00, &qword_100171E00);
  sub_100002F04(v5);
  v7 = *(v6 + 64);
  v1[15] = sub_100002C58();
  v8 = type metadata accessor for ModelCatalogAsset(0);
  v1[16] = v8;
  sub_100002F44(v8);
  v1[17] = v9;
  v11 = *(v10 + 64);
  v1[18] = sub_10000F0C0();
  v1[19] = swift_task_alloc();
  v12 = sub_100065020(&qword_1001B9C60, &qword_1001706B8);
  v1[20] = v12;
  sub_100002F04(v12);
  v14 = *(v13 + 64);
  v1[21] = sub_10000F0C0();
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v15 = type metadata accessor for InferenceProviderDescriptor();
  v1[24] = v15;
  sub_100002F44(v15);
  v1[25] = v16;
  v18 = *(v17 + 64);
  v1[26] = sub_100002C58();
  v19 = sub_100002C10();

  return _swift_task_switch(v19, v20, v21);
}

uint64_t sub_10012EF54()
{
  v120 = v0;
  if (qword_1001B8AB8 != -1)
  {
    goto LABEL_50;
  }

  while (1)
  {
    v1 = v0[12];
    v2 = v0[13];
    v3 = v0[11];
    v4 = type metadata accessor for Logger();
    sub_10000641C(v4, qword_1001BD750);
    sub_100007130(v2, (v0 + 2));

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();

    v102 = v6;
    v117 = v0;
    if (!os_log_type_enabled(v5, v6))
    {

      sub_10005D588(v0 + 2);
      goto LABEL_25;
    }

    log = v5;
    v7 = v0[16];
    v8 = v0[11];
    v9 = v0[12];
    sub_1000033D0();
    v10 = swift_slowAlloc();
    v118 = swift_slowAlloc();
    *v10 = 136315650;
    sub_10005FAF0(&qword_1001B9450, type metadata accessor for ModelCatalogAsset);
    sub_1000062B0();
    v11 = Set.description.getter();
    v13 = sub_100004A3C(v11, v12, &v118);

    *(v10 + 4) = v13;
    v100 = v10;
    *(v10 + 12) = 2080;
    v14 = *(v9 + 16);
    v15 = _swiftEmptyArrayStorage;
    if (!v14)
    {
      break;
    }

    v109 = v0[21];
    v110 = v0[22];
    v108 = v0[20];
    v16 = v0[12];
    v119 = _swiftEmptyArrayStorage;
    sub_10002045C(0, v14, 0);
    v15 = v119;
    v19 = sub_100149E34(v16);
    v20 = 0;
    v21 = v16 + 64;
    v104 = v17;
    v105 = v14;
    v103 = v16 + 72;
    v106 = v16 + 64;
    v107 = v16;
    while ((v19 & 0x8000000000000000) == 0 && v19 < 1 << *(v16 + 32))
    {
      if ((*(v21 + 8 * (v19 >> 6)) & (1 << v19)) == 0)
      {
        goto LABEL_45;
      }

      if (*(v16 + 36) != v17)
      {
        goto LABEL_46;
      }

      v114 = v19 >> 6;
      v112 = v20;
      v113 = v17;
      v111 = v18;
      v23 = v0[22];
      v22 = v0[23];
      v24 = *(v108 + 48);
      v25 = v0[21];
      v26 = *(v16 + 56);
      v27 = (*(v16 + 48) + 16 * v19);
      v28 = v27[1];
      v115 = *v27;
      v29 = type metadata accessor for CustomAssetConfiguration();
      sub_100002BDC(v29);
      v116 = v15;
      v31 = v30;
      (*(v30 + 16))(v22 + v24, v26 + *(v32 + 72) * v19, v29);
      *v23 = v115;
      *(v110 + 8) = v28;
      (*(v31 + 32))(&v23[*(v108 + 48)], v22 + v24, v29);
      sub_10001E72C(v23, v25, &qword_1001B9C60, &qword_1001706B8);
      v33 = *(v109 + 8);

      v0 = *(v108 + 48);
      v34 = CustomAssetConfiguration.identifier.getter();
      v36 = v35;
      sub_10000ED84(v23, &qword_1001B9C60);
      (*(v31 + 8))(v0 + v25, v29);
      v15 = v116;
      v119 = v116;
      v38 = v116[2];
      v37 = v116[3];
      if (v38 >= v37 >> 1)
      {
        sub_10002045C((v37 > 1), v38 + 1, 1);
        v15 = v119;
      }

      v15[2] = v38 + 1;
      v39 = &v15[2 * v38];
      v39[4] = v34;
      v39[5] = v36;
      v16 = v107;
      v40 = 1 << *(v107 + 32);
      if (v19 >= v40)
      {
        goto LABEL_47;
      }

      v21 = v106;
      v41 = *(v106 + 8 * v114);
      if ((v41 & (1 << v19)) == 0)
      {
        goto LABEL_48;
      }

      if (*(v107 + 36) != v113)
      {
        goto LABEL_49;
      }

      v42 = v41 & (-2 << (v19 & 0x3F));
      if (v42)
      {
        v40 = __clz(__rbit64(v42)) | v19 & 0x7FFFFFFFFFFFFFC0;
        v0 = v117;
      }

      else
      {
        v43 = v114 << 6;
        v44 = (v103 + 8 * v114);
        v45 = v114 + 1;
        v0 = v117;
        while (v45 < (v40 + 63) >> 6)
        {
          v47 = *v44++;
          v46 = v47;
          v43 += 64;
          ++v45;
          if (v47)
          {
            sub_100016E94(v19, v113, v111 & 1);
            v40 = __clz(__rbit64(v46)) + v43;
            goto LABEL_21;
          }
        }

        sub_100016E94(v19, v113, v111 & 1);
      }

LABEL_21:
      v18 = 0;
      v20 = v112 + 1;
      v19 = v40;
      v17 = v104;
      if (v112 + 1 == v105)
      {
        goto LABEL_24;
      }
    }

LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    sub_100005344();
    swift_once();
  }

LABEL_24:
  v49 = v0[25];
  v48 = v0[26];
  v50 = v0[24];
  v0[10] = v15;
  v51 = sub_100005E98();
  sub_100065020(v51, v52);
  sub_1000082D4(&qword_1001B9F30, &qword_1001B9F28, &qword_100174190);
  BidirectionalCollection<>.joined(separator:)();
  sub_10001351C();

  v53 = sub_100005E98();
  sub_100004A3C(v53, v54, v55);
  sub_10000D0E8();

  *(v100 + 14) = v117 + 10;
  *(v100 + 22) = 2080;
  v56 = v117[6];
  sub_100003370(v117 + 2, v117[5]);
  v57 = *(v56 + 8);
  v58 = sub_10000D0E8();
  v0 = v117;
  v59(v58, v56);
  sub_1000079A4();
  sub_10005FAF0(v60, v61);
  dispatch thunk of CustomStringConvertible.description.getter();
  sub_10001351C();
  v62 = *(v49 + 8);
  v63 = sub_1000060A4();
  v64(v63);
  sub_10005D588(v117 + 2);
  v65 = sub_100005E98();
  sub_100004A3C(v65, v66, v67);
  sub_10000D0E8();

  *(v100 + 24) = v48;
  _os_log_impl(&_mh_execute_header, log, v102, "in checkForAbort for %s, runtime assets %s and connection %s", v100, 0x20u);
  swift_arrayDestroy();
  sub_100002BD0();

  sub_100002BD0();

LABEL_25:
  v68 = v0[14];
  v69 = v0[11];
  v70 = *(v69 + 32);
  *(v0 + 264) = v70;
  v71 = 1 << v70;
  if (v71 < 64)
  {
    v72 = ~(-1 << v71);
  }

  else
  {
    v72 = -1;
  }

  v73 = v72 & *(v69 + 56);
  v74 = OBJC_IVAR____TtC13modelmanagerd14RequestManager_assetManager;
  v0[27] = OBJC_IVAR____TtC13modelmanagerd14RequestManager_activeGroups;
  v0[28] = v74;

  sub_100004CBC();
  swift_beginAccess();
  v75 = 0;
  v76 = 0;
  if (v73)
  {
    while (1)
    {
      v77 = v0[11];
LABEL_34:
      v0[29] = v73;
      v0[30] = v76;
      v79 = v0[18];
      v80 = v0[19];
      v81 = v117[15];
      v82 = v117[14];
      v83 = v117[13];
      v84 = v117[12];
      v85 = (v82 + v0[27]);
      v86 = *(v77 + 48) + *(v0[17] + 72) * (__clz(__rbit64(v73)) | (v76 << 6));
      sub_1000128DC();
      sub_10005CAA8(v87, v80);
      sub_10001961C();
      v88 = swift_task_alloc();
      sub_100018D54(v88);

      v89 = *v85;
      v90 = v85[1];
      v91 = swift_task_alloc();
      v91[2] = v82;
      v91[3] = v79;
      v91[4] = v81;
      v91[5] = v83;
      v0 = v117;

      LOBYTE(v79) = sub_100004CFC();
      v117[31] = v75;

      if ((v79 & 1) == 0)
      {
        break;
      }

      v92 = v117[18];
      sub_10000ED84(v117[15], &qword_1001B9D00);
      sub_100009CDC();
      sub_10000D300();
      v76 = v117[30];
      v75 = v117[31];
      v73 = (v117[29] - 1) & v117[29];
      if (!v73)
      {
        goto LABEL_30;
      }
    }

    v95 = (v117[14] + v117[28]);
    v96 = sub_100003370(v95, v95[3]);
    v97 = sub_1000134AC(v96);

    return _swift_task_switch(v97, v98, v99);
  }

  else
  {
    while (1)
    {
LABEL_30:
      v78 = v76 + 1;
      if (__OFADD__(v76, 1))
      {
        __break(1u);
        goto LABEL_44;
      }

      if (v78 >= (((1 << *(v0 + 264)) + 63) >> 6))
      {
        break;
      }

      v77 = v0[11];
      v73 = *(v77 + 8 * v78 + 56);
      ++v76;
      if (v73)
      {
        v76 = v78;
        goto LABEL_34;
      }
    }

    sub_100012124();

    sub_100001F00();

    return v93();
  }
}

uint64_t sub_10012F81C()
{
  sub_100002BAC();
  v1 = *(v0 + 112);
  v2 = **(v0 + 256);
  sub_1000C99A4(*(v0 + 144), *(v0 + 120), *(v0 + 104));
  v3 = sub_100005F04();

  return _swift_task_switch(v3, v4, 0);
}

uint64_t sub_10012F88C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_100005F88();
  sub_1000033DC();
  while (1)
  {
    v13 = *(v12 + 144);
    sub_10000ED84(*(v12 + 120), &qword_1001B9D00);
    sub_100009CDC();
    v14 = sub_10000D300();
    v17 = *(v12 + 240);
    v18 = *(v12 + 248);
    v19 = (*(v12 + 232) - 1) & *(v12 + 232);
    if (!v19)
    {
      break;
    }

    v20 = *(v12 + 88);
LABEL_8:
    *(v12 + 232) = v19;
    *(v12 + 240) = v17;
    v22 = *(v12 + 144);
    v23 = *(v12 + 152);
    v24 = *(v12 + 112);
    v25 = *(v12 + 120);
    v27 = *(v12 + 96);
    v26 = *(v12 + 104);
    v28 = (v24 + *(v12 + 216));
    v29 = *(v20 + 48);
    v30 = *(*(v12 + 136) + 72);
    sub_1000128DC();
    sub_10005CAA8(v31, v23);
    sub_10001961C();
    v32 = swift_task_alloc();
    sub_100018D54(v32);

    v33 = *v28;
    v34 = v28[1];
    v35 = swift_task_alloc();
    v35[2] = v24;
    v35[3] = v22;
    v35[4] = v25;
    v35[5] = v26;

    LOBYTE(v22) = sub_100004CFC();
    *(v12 + 248) = v18;

    if ((v22 & 1) == 0)
    {
      v36 = (*(v12 + 112) + *(v12 + 224));
      v37 = sub_100003370(v36, v36[3]);
      sub_1000134AC(v37);
      sub_1000062BC();

      return _swift_task_switch(v14, v15, v16);
    }
  }

  while (1)
  {
    v21 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      __break(1u);
      return _swift_task_switch(v14, v15, v16);
    }

    if (v21 >= (((1 << *(v12 + 264)) + 63) >> 6))
    {
      break;
    }

    v20 = *(v12 + 88);
    v19 = *(v20 + 8 * v21 + 56);
    ++v17;
    if (v19)
    {
      v17 = v21;
      goto LABEL_8;
    }
  }

  sub_100012124();

  sub_100001F00();
  sub_1000062BC();

  return v40(v39, v40, v41, v42, v43, v44, v45, v46, a9, a10, a11, a12);
}

uint64_t sub_10012FA84(uint64_t a1, void *a2)
{
  if (CustomAssetConfiguration.templateID.getter() == *a2 && v3 == a2[1])
  {
    v5 = 1;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v5 & 1;
}

uint64_t sub_10012FAF4()
{
  sub_100002BAC();
  sub_100001EF4();
  v2 = *(v1 + 256);
  v3 = *(v1 + 192);
  v4 = *v0;
  sub_100002B9C();
  *v5 = v4;

  v6 = sub_100002C10();

  return _swift_task_switch(v6, v7, v8);
}

void sub_10012FBEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_100005F88();
  sub_1000033DC();
  v14 = *(v12 + 248);
LABEL_2:

  v15 = &unk_100172C48;
  v16 = &qword_1001B8F40;
  v17 = sub_10002B138();
  if (v18)
  {
    v49 = *(v12 + 232);
    v50 = *(v12 + 216);

    v51 = *(v12 + 208);

    sub_100001F00();
    sub_1000062BC();

    v53(v52, v53, v54, v55, v56, v57, v58, v59, a9, a10, a11, a12);
  }

  else
  {
    *(v12 + 240) = v17;
    v19 = sub_100143420(v17, *(v12 + 216));
    *(v12 + 248) = v19;
    a9 = v19;
    v20 = v19 + OBJC_IVAR____TtCC13modelmanagerd14RequestManager14ExecutionGroup_unsafeManagerOwnedState;
    sub_100009E10();
    swift_beginAccess();
    v21 = *v20;
    v22 = *(v20 + 16);
    *(v12 + 48) = *(v20 + 32);
    *(v12 + 16) = v21;
    *(v12 + 32) = v22;
    v23 = vextq_s8(*(v12 + 24), *(v12 + 24), 8uLL);
    *(v12 + 128) = vextq_s8(*(v12 + 40), *(v12 + 40), 8uLL);
    *(v12 + 144) = v23;
    sub_100036E68();
    sub_10001E72C(v24, v25, v26, v27);
    sub_100036E68();
    sub_10001E72C(v28, v29, v30, v31);
    sub_10000CD38();
    sub_10001E72C(v32, v33, v34, v35);
    sub_100042D18();
    v36 = sub_10006CF3C();
    sub_10000C750();
    sub_10000ED84(v37, v38);
    sub_10000C750();
    sub_10000ED84(v39, v40);
    sub_100006570();
    sub_10000ED84(v41, v42);
    sub_10000ED84(v12 + 128, &qword_1001B8F40);
    sub_10000E8DC(v36);
    sub_10014B428();
    while (v13 != v15)
    {
      if (&unk_100172C40)
      {
        sub_100003D88();
        v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v15 >= qword_1001BC480)
        {
          goto LABEL_19;
        }

        sub_10014B2AC();
      }

      if (__OFADD__(v15, 1))
      {
        __break(1u);
LABEL_19:
        __break(1u);
        return;
      }

      v43 = *(v12 + 200);
      v44 = *(v12 + 208);
      v45 = OBJC_IVAR____TtC13modelmanagerd13DaemonRequest_unsafeManagerOwnedState;
      sub_100004CBC();
      swift_beginAccess();
      sub_100005DD8();
      sub_10005CAA8(v16 + v45, v44);
      LOBYTE(v43) = *(v44 + *(v43 + 24));
      sub_1000115C8();
      sub_10000D300();

      ++v15;
      if ((v43 & 1) == 0)
      {

        goto LABEL_2;
      }
    }

    v46 = swift_task_alloc();
    *(v12 + 256) = v46;
    *v46 = v12;
    v46[1] = sub_10012FAF4;
    sub_1000031B8(*(v12 + 192));
    sub_1000062BC();

    sub_10006CD0C(v47);
  }
}

uint64_t sub_10012FE90()
{
  sub_100002BAC();
  v1[11] = v2;
  v1[12] = v0;
  v1[9] = v3;
  v1[10] = v4;
  v1[7] = v5;
  v1[8] = v6;
  v1[5] = v7;
  v1[6] = v8;
  v9 = type metadata accessor for InferenceProviderDescriptor();
  v1[13] = v9;
  sub_100002F44(v9);
  v1[14] = v10;
  v12 = *(v11 + 64);
  v1[15] = sub_100002C58();
  v13 = sub_100002C10();

  return _swift_task_switch(v13, v14, v15);
}

uint64_t sub_10012FF40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_10000385C();
  sub_100003284();
  v17 = v16[5];
  v18 = v16[6];
  v19 = sub_10000E8DC(v17);
  v27 = v19;
  v28 = 0;
  v29 = v17 & 0xC000000000000001;
  v30 = v17 + 32;
  v31 = &OBJC_IVAR____TtCC13modelmanagerd14RequestManager14ExecutionGroup_assets;
  v32 = &OBJC_IVAR____TtCC13modelmanagerd14RequestManager14ExecutionGroup_runtimeAssets;
  v72 = v17;
  while (1)
  {
    if (v27 == v28)
    {
      goto LABEL_17;
    }

    if (v29)
    {
      v45 = v16[5];
      v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v33 = v19;
    }

    else
    {
      if (v28 >= *(v17 + 16))
      {
        goto LABEL_24;
      }

      v33 = *(v30 + 8 * v28);
    }

    v16[16] = v33;
    if (__OFADD__(v28, 1))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      return Task.value.getter(v19, v20, v21, v22, v23, v24, v25, v26, a9, v72, a11, a12, a13, a14, a15, a16);
    }

    v34 = v16[7];
    v35 = *(v33 + *v31);
    sub_10007BB54();
    if (v36 & 1) != 0 && (sub_10013041C(*(v33 + *v32), *(v18 + 24)))
    {
      v37 = v27;
      v38 = v30;
      v39 = v29;
      v40 = v31;
      v41 = v18;
      v42 = v32;
      v43 = OBJC_IVAR____TtCC13modelmanagerd14RequestManager14ExecutionGroup_unsafeManagerOwnedState;
      sub_100004CBC();
      swift_beginAccess();
      v44 = *(v33 + v43);
      v32 = v42;
      v18 = v41;
      v31 = v40;
      v29 = v39;
      v30 = v38;
      v27 = v37;
      v17 = v72;
      if (v44 <= 2)
      {
        break;
      }
    }

    ++v28;
  }

  v47 = v16[14];
  v46 = v16[15];
  v48 = v16[13];
  v49 = v16[6];
  v50 = v49[7];
  v51 = v49[8];
  sub_100003370(v49 + 4, v50);
  (*(v51 + 8))(v50, v51);
  v52 = static InferenceProviderDescriptor.== infix(_:_:)();
  v53 = *(v47 + 8);
  v54 = sub_100003754();
  v55(v54);
  if (v52)
  {
    v56 = v16[10];
    if (v56)
    {
      v57 = v16[11];

      v56(v33);
      v58 = sub_10000D01C();
      sub_100016484(v58);
    }

    v16[17] = sub_10006CFF8(v16[12], v16[6], v16[8], v16[9]);
    v69 = async function pointer to Task.value.getter[1];
    v70 = swift_task_alloc();
    v16[18] = v70;
    sub_100065020(&qword_1001B8F60, &unk_100171260);
    sub_1000060CC();
    *v70 = v71;
    v70[1] = sub_100130228;
    sub_100019260();
    sub_100003540();

    return Task.value.getter(v19, v20, v21, v22, v23, v24, v25, v26, a9, v72, a11, a12, a13, a14, a15, a16);
  }

LABEL_17:
  v59 = v16[15];

  sub_10001E5F0();
  sub_100003540();

  return v62(v60, v61, v62, v63, v64, v65, v66, v67, a9, v72, a11, a12, a13, a14);
}

uint64_t sub_100130228()
{
  sub_100001ED0();
  sub_10000D554();
  sub_100004B40();
  *v4 = v3;
  v5 = *(v1 + 144);
  *v4 = *v2;
  *(v3 + 152) = v0;

  sub_10000A9E0();
  v7 = *(v6 + 96);
  sub_10000E700();

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_10013033C()
{
  sub_100002BAC();
  v2 = v0[16];
  v1 = v0[17];

  v3 = v0[15];

  v4 = v0[1];

  return v4(1);
}

uint64_t sub_1001303B0()
{
  sub_100002BAC();
  v2 = v0[16];
  v1 = v0[17];

  v3 = v0[19];
  v4 = v0[15];

  v5 = sub_10001E5F0();

  return v6(v5);
}

uint64_t sub_10013041C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CustomAssetConfiguration();
  v61 = *(v4 - 8);
  v5 = *(v61 + 64);
  v6 = __chkstk_darwin(v4);
  v8 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v60 = &v50 - v9;
  v10 = sub_100065020(&qword_1001BDBF0, &unk_100174180);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10 - 8);
  result = __chkstk_darwin(v12);
  v56 = a2;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(v56 + 16))
  {
    return 0;
  }

  v54 = (&v50 - v14);
  v55 = v15;
  v53 = v8;
  v16 = 0;
  v51 = a1;
  v17 = *(a1 + 64);
  v50 = a1 + 64;
  v18 = 1 << *(a1 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & v17;
  v21 = (v18 + 63) >> 6;
  v57 = v61 + 16;
  v58 = (v61 + 32);
  v52 = (v61 + 8);
  while (1)
  {
    v22 = v55;
    if (!v20)
    {
      break;
    }

    v59 = (v20 - 1) & v20;
    v23 = __clz(__rbit64(v20)) | (v16 << 6);
LABEL_12:
    v26 = (*(v51 + 48) + 16 * v23);
    v27 = *v26;
    v28 = v26[1];
    v30 = v60;
    v29 = v61;
    (*(v61 + 16))(v60, *(v51 + 56) + *(v61 + 72) * v23, v4);
    v31 = sub_100065020(&qword_1001B9C60, &qword_1001706B8);
    v32 = *(v31 + 48);
    *v22 = v27;
    *(v22 + 1) = v28;
    (*(v29 + 32))(&v22[v32], v30, v4);
    sub_100009BFC(v22, 0, 1, v31);

LABEL_13:
    v33 = v54;
    sub_10002F6B4(v22, v54, &qword_1001BDBF0, &unk_100174180);
    v34 = sub_100065020(&qword_1001B9C60, &qword_1001706B8);
    v35 = sub_10000C6C0(v33, 1, v34);
    v36 = v35 == 1;
    if (v35 == 1)
    {
      return v36;
    }

    v37 = *(v34 + 48);
    v39 = *v33;
    v38 = v33[1];
    v40 = v56;
    v41 = v53;
    (*v58)(v53, v33 + v37, v4);
    v42 = sub_1000236F4(v39, v38);
    v44 = v43;

    if ((v44 & 1) == 0)
    {
      (*v52)(v41, v4);
      return 0;
    }

    v46 = v60;
    v45 = v61;
    (*(v61 + 16))(v60, *(v40 + 56) + *(v61 + 72) * v42, v4);
    sub_10005FAF0(&qword_1001BB458, &type metadata accessor for CustomAssetConfiguration);
    v47 = dispatch thunk of static Equatable.== infix(_:_:)();
    v48 = *(v45 + 8);
    v48(v46, v4);
    result = (v48)(v41, v4);
    v20 = v59;
    if ((v47 & 1) == 0)
    {
      return v36;
    }
  }

  while (1)
  {
    v24 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v24 >= v21)
    {
      v49 = sub_100065020(&qword_1001B9C60, &qword_1001706B8);
      sub_100009BFC(v22, 1, 1, v49);
      v59 = 0;
      goto LABEL_13;
    }

    v25 = *(v50 + 8 * v24);
    ++v16;
    if (v25)
    {
      v59 = (v25 - 1) & v25;
      v23 = __clz(__rbit64(v25)) | (v24 << 6);
      v16 = v24;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1001308AC()
{
  sub_100002BAC();
  v1[16] = v2;
  v1[17] = v0;
  v1[14] = v3;
  v1[15] = v4;
  v5 = type metadata accessor for RequestPriority();
  v1[18] = v5;
  sub_100002F44(v5);
  v1[19] = v6;
  v8 = *(v7 + 64);
  v1[20] = sub_10000F0C0();
  v1[21] = swift_task_alloc();
  v9 = type metadata accessor for DaemonRequest.ManagerOwnedState(0);
  sub_100002F04(v9);
  v11 = *(v10 + 64);
  v1[22] = sub_100002C58();
  v12 = sub_100065020(&qword_1001B8F48, &qword_10016FB30);
  v1[23] = v12;
  sub_100002F44(v12);
  v1[24] = v13;
  v15 = *(v14 + 64);
  v1[25] = sub_100002C58();
  v16 = sub_100002C10();

  return _swift_task_switch(v16, v17, v18);
}

uint64_t sub_1001309D8()
{
  sub_100001ED0();
  v0[26] = *(v0[14] + 16);
  if (qword_1001B8AB8 != -1)
  {
    sub_100005344();
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[27] = sub_10000641C(v1, qword_1001BD750);
  v2 = Logger.logObject.getter();
  static os_log_type_t.info.getter();
  sub_100006390();
  if (os_log_type_enabled(v2, v3))
  {
    sub_1000057F8();
    v4 = swift_slowAlloc();
    sub_10000BF10(v4);
    sub_100009DDC(&_mh_execute_header, v5, v6, "Entering enqueueRequestAndWait");
    sub_100002BD0();
  }

  v7 = v0[17];

  v8 = OBJC_IVAR____TtC13modelmanagerd14RequestManager_pendingForegroundGroups;
  v0[28] = OBJC_IVAR____TtC13modelmanagerd14RequestManager_pendingForegroundGroups;
  v9 = (v7 + v8);
  sub_100009E10();
  swift_beginAccess();
  v0[29] = *v9;
  v0[30] = v9[1];

  v10 = swift_task_alloc();
  v0[31] = v10;
  *v10 = v0;
  v10[1] = sub_100130B58;
  v11 = v0[16];
  v12 = v0[17];
  v13 = v0[14];
  v14 = v0[15];

  return sub_10012FE90();
}

uint64_t sub_100130B58()
{
  sub_10000639C();
  sub_100003884();
  v3 = v2;
  sub_100001EF4();
  v5 = v4;
  sub_100004B40();
  *v6 = v5;
  v8 = v7[31];
  v9 = v7[30];
  v10 = v7[29];
  v11 = *v1;
  sub_100002B9C();
  *v12 = v11;

  if (v0)
  {
    v13 = *(v5 + 200);
    v15 = *(v5 + 168);
    v14 = *(v5 + 176);
    v16 = *(v5 + 160);

    sub_100001F00();
    sub_100003D20();

    return v18(v17, v18, v19, v20, v21, v22, v23, v24);
  }

  else
  {
    v26 = *(v5 + 136);
    *(v5 + 320) = v3 & 1;
    sub_10000A30C();
    sub_100003D20();

    return _swift_task_switch(v27, v28, v29);
  }
}

uint64_t sub_100130CE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_100005F88();
  sub_1000033DC();
  if (*(v13 + 320) == 1)
  {
    sub_100027ED4();
    v15 = Logger.logObject.getter();
    static os_log_type_t.default.getter();
    sub_1000089B8();
    if (sub_10000A384())
    {
      sub_10002A148();
      sub_100003890();
      sub_10001D338();
      *v14 = 136315138;
      sub_10004AC80();
      sub_100005070();
      sub_1000082D4(v16, v17, v18);
      sub_1000156D8();
      v19 = sub_10000592C();
      v20(v19);
      v21 = sub_100004CB0();
      sub_100004A3C(v21, v22, v23);
      sub_100005974();

      *(v14 + 4) = v12;
      sub_100035348(&_mh_execute_header, v24, v25, "Added request %s to existing pending foreground group");
      sub_100002068();
      sub_100002BD0();
    }

    sub_10014B2C8();

    sub_100002F54();
    sub_1000062BC();

    return v27(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, a12);
  }

  else
  {
    v35 = *(v13 + 136);
    v36 = *(v13 + 112);
    v37 = (v35 + OBJC_IVAR____TtC13modelmanagerd14RequestManager_pendingBackgroundGroups);
    sub_100009E10();
    swift_beginAccess();
    *(v13 + 256) = *v37;
    *(v13 + 264) = v37[1];
    sub_100002EE0();
    v38 = swift_allocObject();
    *(v13 + 272) = v38;
    *(v38 + 16) = v36;
    *(v38 + 24) = v35;

    v39 = swift_task_alloc();
    *(v13 + 280) = v39;
    *v39 = v13;
    sub_10001294C(v39);
    sub_1000062BC();

    return sub_10012FE90();
  }
}

uint64_t sub_100130F0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1000094B0();
  sub_10000636C();
  v13 = v12;
  sub_100001EF4();
  v15 = v14;
  sub_100004B40();
  *v16 = v15;
  v18 = v17[35];
  v19 = v17[34];
  v20 = v17[33];
  v21 = v17[32];
  v22 = *v11;
  sub_100002B9C();
  *v23 = v22;

  if (v10)
  {
    v24 = *(v15 + 200);
    v25 = *(v15 + 168);
    v26 = *(v15 + 176);
    v27 = *(v15 + 160);

    v28 = *(v22 + 8);
    sub_100006378();

    return v30(v29, v30, v31, v32, v33, v34, v35, v36, a9, a10);
  }

  else
  {
    v38 = *(v15 + 136);
    *(v15 + 321) = v13 & 1;
    sub_10003DDC8();
    sub_100006378();

    return _swift_task_switch(v39, v40, v41);
  }
}

uint64_t sub_1001310BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_100005F88();
  sub_1000033DC();
  if (*(v13 + 321) == 1)
  {
    sub_100027ED4();
    v15 = Logger.logObject.getter();
    static os_log_type_t.default.getter();
    sub_1000089B8();
    if (sub_10000A384())
    {
      sub_10002A148();
      sub_100003890();
      sub_10001D338();
      *v14 = 136315138;
      sub_10004AC80();
      sub_100005070();
      sub_1000082D4(v16, v17, v18);
      sub_1000156D8();
      v19 = sub_10000592C();
      v20(v19);
      v21 = sub_100004CB0();
      sub_100004A3C(v21, v22, v23);
      sub_100005974();

      *(v14 + 4) = v12;
      sub_100035348(&_mh_execute_header, v24, v25, "Added request %s to existing pending background group");
      sub_100002068();
      sub_100002BD0();
    }

    sub_10014B2C8();

    sub_100002F54();
    sub_1000062BC();

    return v27(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, a12);
  }

  else
  {
    v35 = *(v13 + 168);
    v36 = *(v13 + 176);
    v38 = *(v13 + 152);
    v37 = *(v13 + 160);
    v39 = *(v13 + 144);
    v40 = *(v13 + 112);
    v41 = OBJC_IVAR____TtC13modelmanagerd13DaemonRequest_unsafeManagerOwnedState;
    sub_100004CBC();
    swift_beginAccess();
    sub_100005DD8();
    sub_10005CAA8(v40 + v41, v36);
    InferenceProviderRequestConfiguration.requestPriority.getter();
    sub_1000115C8();
    sub_10000D300();
    (*(v38 + 104))(v37, enum case for RequestPriority.foreground(_:), v39);
    v42 = sub_100116BA4(v35, v37);
    v43 = *(v38 + 8);
    v43(v37, v39);
    v44 = sub_1000060A4();
    (v43)(v44);
    v45 = *(v13 + 136);
    if ((v42 & 1) != 0 || !*(*(v45 + *(v13 + 224) + 8) + 16))
    {
      v63 = (v45 + OBJC_IVAR____TtC13modelmanagerd14RequestManager_activeGroups);
      sub_100009E10();
      swift_beginAccess();
      *(v13 + 288) = *v63;
      *(v13 + 296) = v63[1];

      v64 = swift_task_alloc();
      *(v13 + 304) = v64;
      *v64 = v13;
      sub_10001294C(v64);
      sub_1000062BC();

      return sub_10012FE90();
    }

    else
    {
      sub_100027ED4();
      v46 = Logger.logObject.getter();
      static os_log_type_t.default.getter();
      sub_1000089B8();
      if (sub_10000A384())
      {
        sub_10002A148();
        sub_100003890();
        sub_10001D338();
        *v37 = 136315138;
        sub_10004AC80();
        sub_100005070();
        sub_1000082D4(v47, v48, v49);
        sub_1000156D8();
        v50 = sub_10000592C();
        v51(v50);
        v52 = sub_100004CB0();
        sub_100004A3C(v52, v53, v54);
        sub_100005974();

        *(v37 + 4) = v42;
        sub_100035348(&_mh_execute_header, v55, v56, "Creating new execution group for request %s");
        sub_100002068();
        sub_100002BD0();
      }

      v57 = swift_task_alloc();
      *(v13 + 312) = v57;
      *v57 = v13;
      v57[1] = sub_10005D328;
      v58 = *(v13 + 208);
      v59 = *(v13 + 128);
      v60 = *(v13 + 136);
      v61 = *(v13 + 120);
      sub_1000031B8(*(v13 + 112));
      sub_1000062BC();

      return sub_10012DFC0();
    }
  }
}

uint64_t sub_100131498()
{
  sub_10000639C();
  sub_100003884();
  v3 = v2;
  sub_100001EF4();
  v5 = v4;
  sub_100004B40();
  *v6 = v5;
  v8 = v7[38];
  v9 = v7[37];
  v10 = v7[36];
  v11 = *v1;
  sub_100002B9C();
  *v12 = v11;

  if (v0)
  {
    v13 = *(v5 + 200);
    v15 = *(v5 + 168);
    v14 = *(v5 + 176);
    v16 = *(v5 + 160);

    sub_100001F00();
    sub_100003D20();

    return v18(v17, v18, v19, v20, v21, v22, v23, v24);
  }

  else
  {
    v26 = *(v5 + 136);
    *(v5 + 322) = v3 & 1;
    sub_10000A30C();
    sub_100003D20();

    return _swift_task_switch(v27, v28, v29);
  }
}

uint64_t sub_100131620(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_100005F88();
  sub_1000033DC();
  v15 = *(v13 + 322);
  sub_100027ED4();
  v16 = Logger.logObject.getter();
  static os_log_type_t.default.getter();
  sub_1000089B8();
  v17 = sub_10000A384();
  if (v15 == 1)
  {
    if (v17)
    {
      sub_10002A148();
      sub_100003890();
      sub_10001D338();
      *v14 = 136315138;
      sub_10004AC80();
      sub_100005070();
      sub_1000082D4(v18, v19, v20);
      sub_1000156D8();
      v21 = sub_10000592C();
      v22(v21);
      v23 = sub_100004CB0();
      sub_100004A3C(v23, v24, v25);
      sub_100005974();

      *(v14 + 4) = v12;
      sub_100035348(&_mh_execute_header, v26, v27, "Added request %s to existing active group");
      sub_100002068();
      sub_100002BD0();
    }

    sub_10014B2C8();

    sub_100002F54();
    sub_1000062BC();

    return v29(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11, a12);
  }

  else
  {
    if (v17)
    {
      sub_10002A148();
      sub_100003890();
      sub_10001D338();
      *v14 = 136315138;
      sub_10004AC80();
      sub_100005070();
      sub_1000082D4(v37, v38, v39);
      sub_1000156D8();
      v40 = sub_10000592C();
      v41(v40);
      v42 = sub_100004CB0();
      sub_100004A3C(v42, v43, v44);
      sub_100005974();

      *(v14 + 4) = v12;
      sub_100035348(&_mh_execute_header, v45, v46, "Creating new execution group for request %s");
      sub_100002068();
      sub_100002BD0();
    }

    v47 = swift_task_alloc();
    *(v13 + 312) = v47;
    *v47 = v13;
    v47[1] = sub_10005D328;
    v48 = *(v13 + 208);
    v49 = *(v13 + 128);
    v50 = *(v13 + 136);
    v51 = *(v13 + 120);
    sub_1000031B8(*(v13 + 112));
    sub_1000062BC();

    return sub_10012DFC0();
  }
}

uint64_t sub_10013186C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RequestPriority();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v19[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v11 = &v19[-v10];
  v12 = type metadata accessor for DaemonRequest.ManagerOwnedState(0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v19[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = OBJC_IVAR____TtC13modelmanagerd13DaemonRequest_unsafeManagerOwnedState;
  swift_beginAccess();
  sub_10005CAA8(a2 + v16, v15);
  InferenceProviderRequestConfiguration.requestPriority.getter();
  sub_10000D300();
  (*(v5 + 104))(v9, enum case for RequestPriority.foreground(_:), v4);
  LOBYTE(a2) = sub_100116BA4(v11, v9);
  v17 = *(v5 + 8);
  v17(v9, v4);
  result = (v17)(v11, v4);
  if (a2)
  {
    swift_beginAccess();
    sub_100060B3C(a1);
    swift_endAccess();

    swift_beginAccess();
    sub_100140E60(a1);
    return swift_endAccess();
  }

  return result;
}

void sub_100131AD4()
{
  sub_10000A274();
  v2 = v0;
  v4 = v3;
  v5 = sub_100065020(&qword_1001B8F48, &qword_10016FB30);
  sub_100002BDC(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  sub_100004B1C();
  __chkstk_darwin(v10);
  v12 = &v62 - v11;
  v13 = _s6PolicyVMa();
  v14 = sub_100002C00(v13);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  sub_100002B8C();
  v19 = v18 - v17;
  v20 = OBJC_IVAR____TtC13modelmanagerd13DaemonRequest_unsafeManagerOwnedState;
  sub_100002D24();
  swift_beginAccess();
  sub_100131FC0(v4 + v20, v4);
  swift_endAccess();
  if (!v1)
  {
    v65 = v7;
    v21 = v2 + OBJC_IVAR____TtC13modelmanagerd14RequestManager_currentPolicy;
    sub_100009E10();
    swift_beginAccess();
    sub_10000A748();
    v66 = v21;
    v22 = sub_1000037BC();
    sub_10005CAA8(v22, v23);
    v24 = sub_100007B78();
    LOBYTE(v21) = sub_1000E1170(v24, v25);
    sub_100008534();
    sub_10000D300();
    if (v21)
    {
      if (qword_1001B8AB8 != -1)
      {
        sub_100005344();
        swift_once();
      }

      v26 = type metadata accessor for Logger();
      sub_10000641C(v26, qword_1001BD750);
      sub_100019498();

      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v27, v28))
      {
        sub_100002F10();
        v29 = swift_slowAlloc();
        sub_100011828();
        v64 = swift_slowAlloc();
        *v29 = 136315394;
        v63 = v28;
        RequestMetadata.id.getter();
        sub_100005070();
        sub_1000082D4(v30, v31, v32);
        v33 = dispatch thunk of CustomStringConvertible.description.getter();
        (*(v65 + 8))(v12, v5);
        v34 = sub_100005E8C();
        sub_100004A3C(v34, v35, v36);
        sub_100019498();

        *(v29 + 4) = v33;
        *(v29 + 12) = 2080;
        sub_10000A748();
        v37 = v66;
        sub_10005CAA8(v66, v19);
        v62 = v13;
        v67 = *(v19 + *(v13 + 28));

        v38 = sub_100004CB0();
        sub_100065020(v38, v39);
        sub_10000E8B4();
        sub_1000082D4(v40, v41, &qword_100171DF0);
        sub_1000E17B4();
        v42 = Sequence<>.joined(separator:)();
        v44 = v43;

        v67 = v42;
        v68 = v44;

        v45._countAndFlagsBits = 10272;
        v45._object = 0xE200000000000000;
        String.append(_:)(v45);

        v46 = v67;
        v47 = v68;
        v48 = RequestPriority.rawValue.getter();
        v50 = v49;
        v67 = v46;
        v68 = v47;

        v51._countAndFlagsBits = v48;
        v51._object = v50;
        String.append(_:)(v51);

        v52._countAndFlagsBits = 41;
        v52._object = 0xE100000000000000;
        String.append(_:)(v52);

        v53 = v67;
        sub_100008534();
        sub_10000D300();
        v54 = sub_100005E8C();
        sub_100004A3C(v54, v55, v56);
        sub_100019498();

        *(v29 + 14) = v53;
        _os_log_impl(&_mh_execute_header, v27, v63, "Request %s denied due to policy %s", v29, 0x16u);
        swift_arrayDestroy();
        v13 = v62;
        sub_100002BD0();

        sub_100002BD0();
      }

      else
      {

        v37 = v66;
      }

      v57 = type metadata accessor for ModelManagerError();
      sub_100002E68();
      sub_10005FAF0(v58, v59);
      sub_10000EF40();
      swift_allocError();
      *v60 = *(v37 + *(v13 + 28));
      sub_100006098(v57);
      (*(v61 + 104))();
      swift_willThrow();
    }
  }

  sub_100005874();
}

uint64_t sub_100131FC0(uint64_t a1, uint64_t a2)
{
  v47 = a2;
  v49 = type metadata accessor for RequestCancellationReason();
  v46 = *(v49 - 8);
  v3 = *(v46 + 64);
  __chkstk_darwin(v49);
  v45 = &v40[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_100065020(&qword_1001B9C80, &unk_1001726D0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v50 = &v40[-v7];
  v8 = type metadata accessor for ModelManagerError();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v40[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = sub_100065020(&qword_1001B8F48, &qword_10016FB30);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v40[-v16];
  result = type metadata accessor for DaemonRequest.ManagerOwnedState(0);
  v19 = *(result + 24);
  v48 = a1;
  if (*(a1 + v19) == 1)
  {
    v20 = result;
    v44 = v12;
    if (qword_1001B8AB8 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_10000641C(v21, qword_1001BD750);

    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v43 = v9;
      v25 = v24;
      v42 = swift_slowAlloc();
      v51 = v42;
      *v25 = 136315138;
      v41 = v23;
      RequestMetadata.id.getter();
      sub_1000082D4(&qword_1001B8F58, &qword_1001B8F48, &qword_10016FB30);
      v26 = dispatch thunk of CustomStringConvertible.description.getter();
      v28 = v27;
      (*(v14 + 8))(v17, v13);
      v29 = sub_100004A3C(v26, v28, &v51);

      *(v25 + 4) = v29;
      _os_log_impl(&_mh_execute_header, v22, v41, "Request %s cancelled before executing", v25, 0xCu);
      sub_10005D588(v42);

      v9 = v43;
    }

    v30 = *(v20 + 28);
    v32 = v48;
    v31 = v49;
    v33 = sub_10000C6C0(v48 + v30, 1, v49);
    v34 = v44;
    v35 = v50;
    if (v33)
    {
      sub_100009BFC(v50, 1, 1, v8);
    }

    else
    {
      v36 = v46;
      v37 = v32 + v30;
      v38 = v45;
      (*(v46 + 16))(v45, v37, v31);
      RequestCancellationReason.errorValue.getter();
      (*(v36 + 8))(v38, v31);
      if (sub_10000C6C0(v35, 1, v8) != 1)
      {
        (*(v9 + 32))(v34, v35, v8);
LABEL_12:
        sub_10005FAF0(&qword_1001B8F50, &type metadata accessor for ModelManagerError);
        swift_allocError();
        (*(v9 + 16))(v39, v34, v8);
        swift_willThrow();
        return (*(v9 + 8))(v34, v8);
      }
    }

    (*(v9 + 104))(v34, enum case for ModelManagerError.operationCancelled(_:), v8);
    if (sub_10000C6C0(v35, 1, v8) != 1)
    {
      sub_10000ED84(v35, &qword_1001B9C80);
    }

    goto LABEL_12;
  }

  return result;
}

uint64_t sub_100132548()
{
  sub_100002BAC();
  v1[5] = v2;
  v1[6] = v0;
  v3 = sub_100065020(&qword_1001BB050, &qword_10016F6E0);
  sub_100002F04(v3);
  v5 = *(v4 + 64);
  v1[7] = sub_100002C58();
  v6 = type metadata accessor for RequestPriority();
  v1[8] = v6;
  sub_100002F44(v6);
  v1[9] = v7;
  v9 = *(v8 + 64);
  v1[10] = sub_100002C58();
  v10 = type metadata accessor for DaemonRequest.ManagerOwnedState(0);
  sub_100002F04(v10);
  v12 = *(v11 + 64);
  v1[11] = sub_100002C58();
  v13 = sub_100065020(&qword_1001B8F48, &qword_10016FB30);
  v1[12] = v13;
  sub_100002F44(v13);
  v1[13] = v14;
  v16 = *(v15 + 64);
  v1[14] = sub_100002C58();
  v17 = sub_100002C10();

  return _swift_task_switch(v17, v18, v19);
}

uint64_t sub_100132690()
{
  sub_1000033DC();
  if (qword_1001B8AB8 != -1)
  {
    sub_100005344();
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100002FD0(v2, qword_1001BD750);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  if (sub_100002F80(v4))
  {
    sub_1000057F8();
    v5 = swift_slowAlloc();
    sub_10000A240(v5);
    sub_1000059D8(&_mh_execute_header, v6, v7, "RequestManager holdAssets called");
    sub_100002BD0();
  }

  v8 = v1[14];
  v10 = v1[10];
  v9 = v1[11];
  v11 = v1[5];

  sub_100053BB4();
  RequestMetadata.id.getter();
  v12 = OBJC_IVAR____TtC13modelmanagerd13DaemonRequest_unsafeManagerOwnedState;
  sub_100004CBC();
  swift_beginAccess();
  sub_100005DD8();
  sub_10005CAA8(v11 + v12, v9);
  InferenceProviderRequestConfiguration.requestPriority.getter();
  sub_1000115C8();
  sub_10000D300();
  v13 = *(v0 + 88);
  sub_100004B94();
  v22 = (v14 + *v14);
  v16 = *(v15 + 4);
  v17 = swift_task_alloc();
  v18 = sub_10000D03C(v17);
  *v18 = v19;
  v18[1] = sub_10013289C;
  v20 = v1[10];
  sub_1000031B8(v1[14]);
  sub_100036E68();

  return v22();
}

uint64_t sub_10013289C()
{
  sub_1000094B0();
  sub_10000636C();
  v2 = *v1;
  v3 = *v1;
  sub_100002B9C();
  *v4 = v3;
  v5 = v2[15];
  v6 = *v1;
  *v4 = *v1;
  v3[16] = v0;

  v7 = v2[14];
  v8 = v2[13];
  v9 = v2[12];
  v10 = v2[10];
  v11 = v2[9];
  v12 = v2[8];
  if (v0)
  {
    v13 = v3[6];
    (*(v11 + 8))(v10, v12);
    v14 = *(v8 + 8);
    v15 = sub_1000071D0();
    v16(v15);
    sub_10003DDC8();
    sub_1000071A8();
    sub_100006378();

    return _swift_task_switch(v17, v18, v19);
  }

  else
  {
    (*(v11 + 8))(v10, v12);
    v21 = *(v8 + 8);
    v22 = sub_1000071D0();
    v23(v22);
    v24 = swift_task_alloc();
    v3[17] = v24;
    *v24 = v6;
    v24[1] = sub_100132ADC;
    v25 = v3[6];
    sub_1000031B8(v3[5]);
    sub_100006378();

    return sub_1001308AC();
  }
}

uint64_t sub_100132ADC()
{
  sub_100001ED0();
  sub_10000D554();
  sub_100004B40();
  *v4 = v3;
  v5 = *(v1 + 136);
  *v4 = *v2;
  *(v3 + 144) = v0;

  sub_10000A9E0();
  v7 = *(v6 + 48);
  sub_10000E700();

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_100132BF0()
{
  sub_10001881C();
  sub_100003884();
  v2 = v0[14];
  v3 = v0[10];
  v4 = v0[11];
  v5 = v0[7];
  sub_10014B1E0();
  v6 = type metadata accessor for TaskPriority();
  sub_100007098(v6);
  sub_100005640();
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v1;

  sub_100003E60();
  sub_1000652FC();

  sub_100002F54();
  sub_100007BB8();

  return v9(v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_100132CC4()
{
  sub_100001ED0();
  v1 = v0[16];
  v2 = v0[14];
  v4 = v0[10];
  v3 = v0[11];
  v5 = v0[7];

  sub_100001F00();

  return v6();
}

uint64_t sub_100132D48()
{
  sub_100001ED0();
  v1 = v0[7];
  v2 = v0[5];
  v3 = type metadata accessor for TaskPriority();
  sub_100007098(v3);
  sub_100005640();
  v4 = swift_allocObject();
  v4[2] = 0;
  v4[3] = 0;
  v4[4] = v2;

  sub_100003E60();
  sub_1000652FC();

  v5 = v0[18];
  v6 = v0[14];
  v8 = v0[10];
  v7 = v0[11];
  v9 = v0[7];

  sub_100001F00();

  return v10();
}

uint64_t sub_100132E24()
{
  v1 = type metadata accessor for ContinuousClock.Instant();
  v0[7] = v1;
  v2 = *(v1 - 8);
  v0[8] = v2;
  v3 = *(v2 + 64) + 15;
  v0[9] = swift_task_alloc();
  v0[10] = swift_task_alloc();
  v4 = type metadata accessor for ContinuousClock();
  v0[11] = v4;
  v5 = *(v4 - 8);
  v0[12] = v5;
  v6 = *(v5 + 64) + 15;
  v0[13] = swift_task_alloc();

  return _swift_task_switch(sub_100132F48, 0, 0);
}

uint64_t sub_100132F48()
{
  sub_100005F88();
  sub_1000033DC();
  sub_100053120();
  sub_10000D0AC(xmmword_1001723E0);
  sub_100018E38();
  sub_10005FAF0(v2, v3);
  sub_100048664();
  dispatch thunk of Clock.now.getter();
  sub_10003F884();
  sub_10005FAF0(v4, v5);
  sub_1000359EC();
  v0[14] = *(v1 + 8);
  v0[15] = (v1 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6 = sub_1000071D0();
  v7(v6);
  v8 = async function pointer to dispatch thunk of Clock.sleep(until:tolerance:)[1];
  v9 = swift_task_alloc();
  v0[16] = v9;
  *v9 = v0;
  v9[1] = sub_100133078;
  v10 = v0[13];
  v11 = v0[11];
  sub_1000031B8(v0[10]);
  sub_1000062BC();

  return dispatch thunk of Clock.sleep(until:tolerance:)(v12, v13, v14, v15);
}

uint64_t sub_100133078()
{
  sub_100001ED0();
  sub_100001EF4();
  v3 = v2;
  sub_100004B40();
  *v4 = v3;
  v6 = *(v5 + 128);
  v7 = *v1;
  sub_100002B9C();
  *v8 = v7;
  *(v3 + 136) = v0;

  v9 = *(v3 + 120);
  if (v0)
  {
    (*(v3 + 112))(*(v3 + 80), *(v3 + 56));
    v10 = sub_1001331B4;
  }

  else
  {
    v12 = *(v3 + 96);
    v11 = *(v3 + 104);
    v13 = *(v3 + 88);
    (*(v3 + 112))(*(v3 + 80), *(v3 + 56));
    v14 = *(v12 + 8);
    v15 = sub_100007660();
    v16(v15);
    v10 = sub_100132F48;
  }

  return _swift_task_switch(v10, 0, 0);
}

uint64_t sub_1001331B4()
{
  sub_100001ED0();
  v1 = v0[10];
  v2 = v0[9];
  (*(v0[12] + 8))(v0[13], v0[11]);

  sub_100001F00();
  v4 = v0[17];

  return v3();
}

uint64_t sub_100133248()
{
  sub_100002BAC();
  v1[4] = v2;
  v1[5] = v0;
  v1[2] = v3;
  v1[3] = v4;
  v5 = type metadata accessor for InferenceProviderDescriptor();
  v1[6] = v5;
  sub_100002F44(v5);
  v1[7] = v6;
  v8 = *(v7 + 64);
  v1[8] = sub_100002C58();
  v9 = sub_100065020(&qword_1001B9C88, &qword_1001706E0);
  sub_100002F04(v9);
  v11 = *(v10 + 64);
  v1[9] = sub_100002C58();
  v12 = sub_100065020(&qword_1001B8F48, &qword_10016FB30);
  v1[10] = v12;
  sub_100002F44(v12);
  v1[11] = v13;
  v15 = *(v14 + 64);
  v1[12] = sub_100002C58();
  v16 = sub_100002C10();

  return _swift_task_switch(v16, v17, v18);
}

uint64_t sub_100133374(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_100026B98();
  sub_1000033DC();
  v13 = v12[12];
  v14 = v12[5];
  v15 = v12[2];
  sub_100138790();
  v16 = v15[8];
  sub_100003370(v15 + 4, v15[7]);
  RequestMetadata.id.getter();
  v17 = *(v16 + 64);
  sub_100004B94();
  v31 = v18 + *v18;
  v20 = *(v19 + 4);
  v21 = swift_task_alloc();
  v12[13] = v21;
  *v21 = v12;
  v21[1] = sub_1001334B8;
  sub_10000A9C8(v12[12]);
  sub_100001FBC();

  return v25(v22, v23, v24, v25, v26, v27, v28, v29, a9, v16 + 64, v31, a12);
}

uint64_t sub_1001334B8()
{
  sub_10001881C();
  sub_100003884();
  sub_10000D554();
  sub_100004B40();
  *v4 = v3;
  v5 = v1[13];
  v6 = v1[12];
  v7 = v1[11];
  v8 = v1[10];
  *v4 = *v2;
  *(v3 + 112) = v0;

  v9 = *(v7 + 8);
  v10 = sub_1000071D0();
  v11(v10);
  sub_10000A9E0();
  v13 = *(v12 + 40);
  sub_10000E700();
  sub_100007BB8();

  return _swift_task_switch(v14, v15, v16);
}

uint64_t sub_10013361C()
{
  sub_10000636C();
  v1 = v0[8];
  v2 = v0[9];
  v4 = v0[2];
  v3 = v0[3];
  v5 = type metadata accessor for InferenceProviderRequestResult();
  sub_100007098(v5);
  v6 = v4[8];
  sub_100003370(v4 + 4, v4[7]);
  v7 = *(v6 + 8);
  v8 = sub_10000D0E8();
  v9(v8, v6);
  v18 = (v3 + *v3);
  v10 = v3[1];
  v11 = swift_task_alloc();
  v12 = sub_10000D03C(v11);
  *v12 = v13;
  v12[1] = sub_100133758;
  v14 = v0[8];
  v15 = v0[4];
  v16 = sub_1000031B8(v0[9]);

  return v18(v16);
}

uint64_t sub_100133758()
{
  sub_10000639C();
  sub_100003884();
  sub_100001EF4();
  v2 = v1[15];
  v3 = v1[12];
  v4 = v1[9];
  v5 = v1[8];
  v6 = v1[7];
  v7 = v1[6];
  v8 = *v0;
  sub_100002B9C();
  *v9 = v8;

  v10 = *(v6 + 8);
  v11 = sub_100003754();
  v12(v11);
  sub_10000ED84(v4, &qword_1001B9C88);

  sub_100002F54();
  sub_100003D20();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20);
}

uint64_t sub_1001338E8()
{
  sub_100002BAC();
  v1 = v0[12];
  v2 = v0[8];
  v3 = v0[9];

  sub_100001F00();
  v5 = v0[14];

  return v4();
}

void sub_100133958()
{
  sub_1000055B0();
  i = v0;
  v2 = v1;
  v4 = v3;
  v5 = sub_100065020(&qword_1001BA5F0, &qword_100171290);
  v6 = sub_100002F04(v5);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  sub_100009C24();
  v261 = v9;
  sub_100002F1C();
  __chkstk_darwin(v10);
  v12 = &v254 - v11;
  v13 = type metadata accessor for ClientData();
  v14 = sub_100002BDC(v13);
  v260 = v15;
  v17 = *(v16 + 64);
  __chkstk_darwin(v14);
  sub_100002B8C();
  v271 = (v19 - v18);
  v20 = sub_100065020(&qword_1001B8F48, &qword_10016FB30);
  v21 = sub_100002BDC(v20);
  v23 = v22;
  v25 = *(v24 + 64);
  __chkstk_darwin(v21);
  sub_100009C24();
  v265 = v26;
  sub_100002F1C();
  __chkstk_darwin(v27);
  v29 = (&v254 - v28);
  v30 = OBJC_IVAR____TtC13modelmanagerd13DaemonRequest_metadata;
  RequestMetadata.id.getter();
  v31 = (v2 + v30);
  LODWORD(v270) = RequestMetadata.subrequestID.getter();
  if (qword_1001B8AB8 != -1)
  {
    goto LABEL_56;
  }

  while (1)
  {
    v268 = v23;
    v32 = type metadata accessor for Logger();
    sub_100002FD0(v32, qword_1001BD750);

    v267 = v31;
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.default.getter();

    v35 = os_log_type_enabled(v33, v34);
    v273 = v29;
    v266 = v12;
    v262 = v4;
    v263 = v30;
    if (v35)
    {
      v36 = swift_slowAlloc();
      sub_1000033D0();
      v37 = swift_slowAlloc();
      v276 = v37;
      *v36 = 136315394;
      v30 = v265;
      RequestMetadata.id.getter();
      sub_100005070();
      sub_1000082D4(v38, v39, v40);
      dispatch thunk of CustomStringConvertible.description.getter();
      sub_10001E5E0();
      v42 = *(*(v41 - 256) + 8);
      v43 = sub_10002EAE0();
      v44(v43);
      v45 = sub_100011A70();
      sub_100004A3C(v45, v46, v47);
      sub_10014B3BC();

      *(v36 + 4) = v30;
      *(v36 + 12) = 1024;
      *(v36 + 14) = v270;
      _os_log_impl(&_mh_execute_header, v33, v34, "Starting shouldCreateNextInputStreamSubrequest %s %u", v36, 0x12u);
      sub_10005D588(v37);
      sub_100002BD0();

      v29 = v273;
      sub_100002BD0();
    }

    v48 = (i + OBJC_IVAR____TtC13modelmanagerd14RequestManager_inputStreamRequests);
    sub_100004CBC();
    v49 = swift_beginAccess();
    v50 = *v48;
    v51 = v48[1];
    v52 = v48[2];
    __chkstk_darwin(v49);
    sub_10001854C();
    *(v53 - 32) = v50;
    *(v53 - 24) = v51;
    *(v53 - 16) = v29;

    sub_100026BB0();
    sub_1000440DC();
    v57 = sub_100141808(v54, v55, v56);
    v12 = &loc_10016F000;
    v269 = v20;
    v272 = v13;
    if (v58)
    {

      v59 = sub_10004AE58();
      v52 = static os_log_type_t.default.getter();

      v60 = os_log_type_enabled(v59, v52);
      v259 = v2;
      if (v60)
      {
        sub_10000A05C();
        swift_slowAlloc();
        v61 = sub_100003890();
        v275 = v61;
        sub_10004A78C(4.8149e-34);
        v63 = *(v62 - 256);
        RequestMetadata.id.getter();
        sub_100005070();
        sub_1000082D4(v64, v65, v66);
        dispatch thunk of CustomStringConvertible.description.getter();
        sub_10001E5E0();
        v68 = *(v67 - 256);
        v68[1](v63, v269);
        v69 = sub_100011A70();
        sub_100004A3C(v69, v70, v71);
        sub_10014B3BC();

        *(v51 + 4) = v63;
        sub_100005EB0(&_mh_execute_header, v59, v52, "Creating new inputStreamRequests entry for %s");
        sub_10005D588(v61);
        v20 = v269;
        sub_100002BD0();

        sub_100002BD0();
      }

      else
      {

        v68 = v268;
        v63 = v265;
      }

      v12 = v63;
      (v68[2])(v63, v273, v20);
      type metadata accessor for RequestManager.InputStreamRequestInfo();
      swift_allocObject();
      sub_100129AB4();
      sub_100002D24();
      swift_beginAccess();
      v72 = sub_100011A70();
      sub_100134FE0(v72, v73);
      swift_endAccess();
      v29 = v68;
      v2 = v259;
    }

    else
    {
      sub_100143420(v57, v52);

      sub_100016724();
    }

    sub_10000E75C();
    __chkstk_darwin(v74);
    sub_10014B134();

    v75 = sub_100141808(sub_10014AFA8, v52, v51);
    if (v76)
    {

      v77 = sub_10004AE58();
      static os_log_type_t.fault.getter();
      v78 = sub_10000A82C();
      if (os_log_type_enabled(v78, v79))
      {
        sub_1000057F8();
        v80 = swift_slowAlloc();
        sub_10000A240(v80);
        sub_100035D10();
        _os_log_impl(v81, v82, v83, v84, v85, 2u);
        sub_100002BD0();
      }

      v29[1](v273, v269);
      goto LABEL_53;
    }

    v257 = sub_100143420(v75, v12);

    sub_10000E75C();
    __chkstk_darwin(v86);
    sub_10014B134();

    v87 = sub_100141808(sub_10014AFA8, v52, v51);
    if (v88)
    {
      goto LABEL_65;
    }

    v89 = sub_100143420(v87, v12);

    v90 = *(v89 + 72);
    v91 = __CFADD__(v90, 1);
    v92 = v90 + 1;
    v93 = v269;
    v94 = v272;
    if (v91)
    {
      break;
    }

    *(v89 + 72) = v92;

    if (*(v257 + 16) != v270)
    {
      v119 = sub_10004AE58();
      static os_log_type_t.default.getter();
      v120 = sub_10000A82C();
      if (os_log_type_enabled(v120, v121))
      {
        v122 = swift_slowAlloc();
        *v122 = 67109120;
        v122[1] = v270;
        sub_100035D10();
        _os_log_impl(v123, v124, v125, v126, v127, 8u);
        sub_100002BD0();
      }

      v128 = *v48;
      v129 = v48[1];
      sub_100032348();
      __chkstk_darwin(v130);
      sub_10001854C();
      *(v131 - 32) = v128;
      *(v131 - 24) = v129;
      v132 = v273;
      *(v131 - 16) = v273;

      v133 = sub_100026BB0();
      v135 = sub_100141808(v133, v134, v129);
      if (v136)
      {
        goto LABEL_66;
      }

      sub_100143420(v135, v12);

      v137 = v261;
      (*(v260 + 16))(v261, v262, v94);
      sub_100009BFC(v137, 0, 1, v94);
      sub_100002D24();
      swift_beginAccess();
      sub_10013522C(v137, v270);
      swift_endAccess();

      v29[1](v132, v269);
LABEL_53:
      sub_100002EEC();
      return;
    }

    v13 = v2;
    v95 = *(v257 + 24);
    v96 = v95 == 0;
    v256 = v95 == 0;
    i = v30;
    if (v95)
    {

      v97 = v95;
      v98 = sub_10004AE58();
      v99 = static os_log_type_t.default.getter();

      v100 = os_log_type_enabled(v98, v99);
      v270 = v97;
      if (v100)
      {
        sub_100002F10();
        v101 = swift_slowAlloc();
        LODWORD(v261) = v99;
        v102 = v101;
        sub_100011828();
        *&v258 = swift_slowAlloc();
        v275 = v258;
        *v102 = 136315394;
        v255 = v98;
        v103 = v265;
        RequestMetadata.id.getter();
        sub_100005070();
        sub_1000082D4(v104, v105, v106);
        sub_1000DAE34();
        v107 = dispatch thunk of CustomStringConvertible.description.getter();
        v29 = v97;
        v97 = v108;
        v109 = v93;
        v110 = v268[1];
        v110(v103, v109);
        v111 = sub_100005E98();
        sub_100004A3C(v111, v112, v113);
        sub_10000D0E8();

        *(v102 + 4) = v107;
        *(v102 + 12) = 2080;
        RequestMetadata.id.getter();
        dispatch thunk of CustomStringConvertible.description.getter();
        v12 = v114;
        v115 = v109;
        v13 = v272;
        v110(v103, v115);
        v116 = sub_100011A70();
        sub_100004A3C(v116, v117, v118);
        sub_10005D934();

        *(v102 + 14) = v103;
        v96 = v255;
        _os_log_impl(&_mh_execute_header, v255, v261, "Concatenating clientdata from %s to %s", v102, 0x16u);
        v98 = v258;
        swift_arrayDestroy();
        sub_100016724();
        sub_100002BD0();

        sub_100002BD0();
      }

      else
      {

        v13 = v272;
      }

      sub_10000E75C();
      __chkstk_darwin(v171);
      sub_100061B00();
      *(v172 - 32) = v98;
      *(v172 - 24) = v97;
      sub_10005B664(v172);

      v173 = sub_100005F04();
      v30 = i;
      v175 = sub_100141808(v173, v174, v97);
      if (v176)
      {
        goto LABEL_68;
      }

      sub_100143420(v175, v12);
      sub_10005D934();

      sub_100002D24();
      swift_beginAccess();
      sub_10014B004();
      sub_10013F9E8(v177);
      sub_10014B248();
      sub_10014B15C();
      v179 = *(v178 + 16);
      v178 += 16;
      v23 = *(v178 + 64);
      v263 = *(v178 + 56);
      v180 = v262;
      v262 = v179;
      v179(v96 + 32 + ((v23 + 32) & ~v23) + v263 * v97, v180, v13);
      *(v96 + 32) = v96 + 32;
      swift_endAccess();
    }

    else
    {

      v138 = sub_10004AE58();
      v139 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v138, v139))
      {
        sub_10000A05C();
        swift_slowAlloc();
        v140 = v93;
        v141 = sub_100003890();
        v275 = v141;
        sub_10004A78C(4.8149e-34);
        v143 = *(v142 - 256);
        RequestMetadata.id.getter();
        sub_100005070();
        sub_1000082D4(v144, v145, v146);
        dispatch thunk of CustomStringConvertible.description.getter();
        sub_10001E5E0();
        v148 = v140;
        v29 = v268;
        (*(*(v147 - 256) + 8))(v143, v148);
        v149 = sub_100011A70();
        sub_100004A3C(v149, v150, v151);
        sub_10005D934();

        *(v51 + 4) = v143;
        sub_100005EB0(&_mh_execute_header, v138, v139, "Adding new request for %s");
        sub_10005D588(v141);
        sub_100007C2C();

        sub_100002BD0();
      }

      v152 = *v48;
      v153 = v48[1];
      sub_100032348();
      __chkstk_darwin(v154);
      sub_10001854C();
      *(v155 - 32) = v152;
      *(v155 - 24) = v153;
      v156 = v273;
      *(v155 - 16) = v273;

      v157 = sub_100026BB0();
      v30 = i;
      v159 = sub_100141808(v157, v158, v153);
      if (v160)
      {
        goto LABEL_69;
      }

      v161 = sub_100143420(v159, v12);

      v162 = *(v161 + 24);
      *(v161 + 24) = v13;

      v163 = *v48;
      v164 = v48[1];
      sub_100032348();
      __chkstk_darwin(v165);
      *(&v254 - 4) = v163;
      *(&v254 - 3) = v164;
      *(&v254 - 2) = v156;

      v166 = sub_100141808(sub_10014AFA8, (&v254 - 6), v164);
      if (v167)
      {
        goto LABEL_70;
      }

      sub_100143420(v166, v12);
      sub_10014B3BC();

      sub_100065020(&qword_1001B90B8, &qword_10016FD30);
      v168 = v260;
      v23 = *(v260 + 80);
      v263 = *(v260 + 72);
      v169 = swift_allocObject();
      *(v169 + 16) = xmmword_10016FF40;
      v170 = v262;
      v262 = *(v168 + 16);
      v262(v169 + ((v23 + 32) & ~v23), v170, v272);
      swift_beginAccess();
      v12 = *(&v254 - 2);
      *(&v254 - 2) = v169;
    }

    v181 = *v48;
    v182 = v48[1];
    sub_100032348();
    __chkstk_darwin(v183);
    *(&v254 - 4) = v181;
    *(&v254 - 3) = v182;
    *(&v254 - 2) = v273;

    v184 = sub_100141808(sub_10014AFA8, (&v254 - 6), v182);
    if (v185)
    {
      goto LABEL_67;
    }

    v4 = sub_100143420(v184, v12);

    v186 = *(v4 + 16);
    v187 = __OFADD__(v186, 1);
    v188 = v186 + 1;
    v20 = v269;
    if (v187)
    {
      goto LABEL_58;
    }

    *(v4 + 16) = v188;

    v189 = v257;
    sub_100004CBC();
    swift_beginAccess();
    v2 = *(v189 + 48);
    v274 = v2;
    swift_retain_n();
    v31 = &v274;
    sub_100147318(sub_100135688, 0);
    if (v30)
    {
      goto LABEL_71;
    }

    v265 = *(v274 + 16);
    v261 = v260 + 16;
    v259 = (v260 + 8);
    sub_10000657C();
    v260 = v192;
    *&v193 = 67109120;
    v258 = v193;
    for (i = v190; ; v190 = i)
    {
      if (v265 == v191)
      {
LABEL_52:

        v29[1](v273, v20);
        goto LABEL_53;
      }

      if (v191 >= *(v190 + 16))
      {
        break;
      }

      v270 = v191;
      v194 = *(v190 + 4 * v191 + 32);
      v195 = *v48;
      v196 = v48[1];
      v197 = v48[2];
      __chkstk_darwin(v190);
      sub_100061B00();
      *(v198 - 32) = v195;
      *(v198 - 24) = v196;
      sub_10005B664(v198);

      v199 = sub_100005F04();
      v201 = sub_100141808(v199, v200, v196);
      if (v202)
      {
        goto LABEL_59;
      }

      v203 = sub_100143420(v201, v197);

      v204 = *(v203 + 16);

      if (v204 != v194)
      {
        goto LABEL_52;
      }

      v205 = sub_10004AE58();
      v206 = static os_log_type_t.default.getter();
      if (sub_100002F80(v206))
      {
        v207 = swift_slowAlloc();
        *v207 = v258;
        *(v207 + 4) = v194;
        _os_log_impl(&_mh_execute_header, v205, v203, "Processing queued request %u", v207, 8u);
        sub_100002BD0();
      }

      v208 = *v48;
      v209 = v48[1];
      v210 = v48[2];
      __chkstk_darwin(v211);
      sub_100061B00();
      *(v212 - 32) = v208;
      *(v212 - 24) = v209;
      sub_10005B664(v212);

      v213 = sub_100005F04();
      v215 = sub_100141808(v213, v214, v209);
      if (v216)
      {
        goto LABEL_63;
      }

      v217 = sub_100143420(v215, v210);
      sub_100004CBC();
      swift_beginAccess();
      v218 = v217[5];
      v219 = v217[6];
      v220 = v217[7];

      v221 = sub_100140EF4(v194, v218, v219);
      if (v222)
      {
        goto LABEL_60;
      }

      v223 = v221;

      v29 = v271;
      sub_100021800(v223, v220, &type metadata accessor for ClientData, v271);

      sub_10000E75C();
      __chkstk_darwin(v224);
      sub_100061B00();
      *(v225 - 32) = v208;
      *(v225 - 24) = v218;
      v226 = v273;
      *(v225 - 16) = v273;

      v227 = sub_100005F04();
      v229 = sub_100141808(v227, v228, v218);
      if (v230)
      {
        goto LABEL_61;
      }

      sub_100143420(v229, v220);
      sub_10005D934();

      sub_100002D24();
      swift_beginAccess();
      sub_10014B004();
      sub_10013F9E8(v231);
      sub_10014B248();
      sub_10014B15C();
      v262(v223 + 32 + v232 + v263 * v218, v29, v272);
      *(v223 + 32) = v223 + 32;
      swift_endAccess();

      v31 = *v48;
      v234 = v48[1];
      v4 = v48[2];
      __chkstk_darwin(v233);
      sub_100061B00();
      *(v235 - 32) = v31;
      *(v235 - 24) = v234;
      *(v235 - 16) = v226;

      v236 = sub_100005F04();
      sub_100141808(v236, v237, v234);
      v20 = v269;
      sub_100016724();
      if (v239)
      {
        goto LABEL_62;
      }

      v240 = sub_100143420(v238, v4);

      sub_100002D24();
      swift_beginAccess();
      v241 = sub_100140EF4(v194, *(v240 + 40), *(v240 + 48));
      if (v243)
      {
        v244 = 1;
        v13 = v272;
        v12 = v266;
      }

      else
      {
        v245 = v241;
        sub_100144258(v241, v242);
        v31 = (v240 + 56);
        v12 = v266;
        sub_100144970(v245, sub_1001472DC, &type metadata accessor for ClientData, sub_1000708E4);
        v244 = 0;
        v13 = v272;
      }

      sub_100009BFC(v12, v244, 1, v13);
      sub_10000ED84(v12, &qword_1001BA5F0);
      swift_endAccess();

      v23 = &v254;
      sub_10000E75C();
      __chkstk_darwin(v246);
      sub_100061B00();
      *(v247 - 32) = v31;
      *(v247 - 24) = v4;
      sub_10005B664(v247);

      v248 = sub_100005F04();
      v250 = sub_100141808(v248, v249, v4);
      if (v251)
      {
        goto LABEL_64;
      }

      v2 = v250;
      (*v259)(v271, v13);
      sub_100143420(v2, v12);
      sub_10005D934();

      v252 = *(v2 + 16);
      v187 = __OFADD__(v252, 1);
      v253 = v252 + 1;
      if (v187)
      {
        goto LABEL_55;
      }

      *(v2 + 16) = v253;

      v191 = v270 + 1;
    }

    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    sub_100005344();
    swift_once();
  }

  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
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
}

uint64_t sub_100134FE0(uint64_t a1, uint64_t a2)
{
  v5 = sub_100065020(&qword_1001B8F48, &qword_10016FB30);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v23[-v8];
  v10 = v2[1];
  v24 = *v2;
  v25 = v10;
  v26 = a2;
  v11 = sub_100141808(sub_10014AFA8, v23, v10);
  if (v13)
  {
    if (a1)
    {
      sub_100140F44(a2, v12);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v14 = *(v2[2] + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    return (*(v6 + 8))(a2, v5);
  }

  else
  {
    v16 = v11;
    if (a1)
    {
      v18 = v2 + 2;
      v17 = v2[2];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v18 = v17;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v17 = sub_100064034(v17);
        *v18 = v17;
      }

      result = (*(v6 + 8))(a2, v5);
      if ((v16 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v16 < *(v17 + 16))
      {
        v20 = v17 + 8 * v16;
        v21 = *(v20 + 32);
        *(v20 + 32) = a1;

        return specialized ContiguousArray._endMutation()();
      }

      __break(1u);
    }

    else
    {
      sub_100144424(v11, v12, v9);
      v22 = *(v6 + 8);
      v22(v9, v5);
      sub_100060BAC(v16, sub_10014AFE0, sub_100060E68);

      return v22(a2, v5);
    }
  }

  return result;
}

uint64_t sub_10013522C(uint64_t a1, int a2)
{
  v5 = type metadata accessor for ClientData();
  v51 = *(v5 - 8);
  v6 = *(v51 + 64);
  v7 = __chkstk_darwin(v5);
  v50 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v49 = &v47 - v10;
  v11 = __chkstk_darwin(v9);
  v13 = &v47 - v12;
  __chkstk_darwin(v11);
  v48 = &v47 - v14;
  v15 = sub_100065020(&qword_1001BDBD8, &qword_100174148);
  v16 = v15 - 8;
  v17 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15);
  v19 = &v47 - v18;
  v20 = a2;
  v21 = sub_100140EF4(a2, *v2, v2[1]);
  LOBYTE(a2) = v22;
  v24 = v23;
  v25 = *(v16 + 56);
  v52 = a1;
  sub_10001E72C(a1, &v19[v25], &qword_1001BA5F0, &qword_100171290);
  v26 = v5;
  v27 = sub_10000C6C0(&v19[v25], 1, v5);
  if (a2)
  {
    if (v27 == 1)
    {
      return sub_10000ED84(v52, &qword_1001BA5F0);
    }

    else
    {
      v29 = v51;
      v30 = &v19[v25];
      v31 = v49;
      v32 = v26;
      v48 = *(v51 + 32);
      (v48)(v49, v30, v26);
      sub_100141688(v20, v24);
      v33 = v50;
      (*(v29 + 16))(v50, v31, v32);
      v36 = v2[2];
      v34 = v2 + 2;
      v35 = v36;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v34 = v35;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v38 = *(v35 + 16);
        sub_100070F08();
        v35 = *v34;
      }

      v39 = *(v35 + 16);
      if (v39 >= *(v35 + 24) >> 1)
      {
        sub_100070F08();
      }

      sub_10000ED84(v52, &qword_1001BA5F0);
      (*(v29 + 8))(v31, v32);
      v40 = *v34;
      *(v40 + 16) = v39 + 1;
      result = (v48)(v40 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v39, v33, v32);
      *v34 = v40;
    }
  }

  else
  {
    if (v27 == 1)
    {
      sub_100144258(v21, v24);
      sub_100144970(v21, sub_1001472DC, &type metadata accessor for ClientData, sub_1000708E4);
      sub_10000ED84(v52, &qword_1001BA5F0);
      return (*(v51 + 8))(v13, v5);
    }

    v41 = v51;
    v42 = &v19[v25];
    v43 = v48;
    (*(v51 + 32))(v48, v42, v26);
    v44 = v2[2];
    v45 = swift_isUniquelyReferenced_nonNull_native();
    if ((v45 & 1) == 0)
    {
      sub_1001472DC(v44);
      v44 = v46;
    }

    result = sub_10000ED84(v52, &qword_1001BA5F0);
    if ((v21 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v21 < *(v44 + 16))
    {
      result = (*(v41 + 40))(v44 + ((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * v21, v43, v26);
      v2[2] = v44;
      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10013569C(uint64_t a1)
{
  v3 = sub_100065020(&qword_1001B8F48, &qword_10016FB30);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v13[-v6];
  v8 = v1[1];
  v14 = *v1;
  v15 = v8;
  v16 = a1;
  v10 = sub_100141808(sub_10014AFA8, v13, v8);
  result = 0;
  if ((v12 & 1) == 0)
  {
    sub_100144424(v10, v9, v7);
    (*(v4 + 8))(v7, v3);
    return sub_100060BAC(v10, sub_10014AFE0, sub_100060E68);
  }

  return result;
}

uint64_t sub_1001357E8()
{
  sub_100002BAC();
  v1[11] = v2;
  v1[12] = v0;
  v1[9] = v3;
  v1[10] = v4;
  v1[8] = v5;
  v6 = type metadata accessor for DaemonRequest.ManagerOwnedState(0);
  v1[13] = v6;
  sub_100002F04(v6);
  v8 = *(v7 + 64);
  v1[14] = sub_100002C58();
  v9 = sub_100065020(&qword_1001BB050, &qword_10016F6E0);
  sub_100002F04(v9);
  v11 = *(v10 + 64);
  v1[15] = sub_100002C58();
  v12 = sub_100065020(&qword_1001B8F48, &qword_10016FB30);
  v1[16] = v12;
  sub_100002F44(v12);
  v1[17] = v13;
  v15 = *(v14 + 64);
  v1[18] = sub_100002C58();
  v16 = type metadata accessor for TaskPriority();
  v1[19] = v16;
  sub_100002F44(v16);
  v1[20] = v17;
  v19 = *(v18 + 64);
  v1[21] = sub_100002C58();
  v20 = sub_100002C10();

  return _swift_task_switch(v20, v21, v22);
}

uint64_t sub_10013593C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_100005B0C();
  sub_10001A5C4();
  v11 = v9[12];
  v12 = v9[8];
  sub_100131AD4();
  if (qword_1001B8AB8 != -1)
  {
    sub_100005344();
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_100002FD0(v13, qword_1001BD750);
  v14 = Logger.logObject.getter();
  static os_log_type_t.info.getter();
  sub_100006390();
  if (os_log_type_enabled(v14, v15))
  {
    v17 = v9[20];
    v16 = v9[21];
    v18 = v9[19];
    sub_10000A05C();
    swift_slowAlloc();
    sub_100003890();
    *v10 = 136315138;
    static Task<>.currentPriority.getter();
    sub_10005FAF0(&qword_1001BDBC8, &type metadata accessor for TaskPriority);
    sub_100042FBC();
    v19 = sub_10000C778();
    v20(v19);
    v21 = sub_10000CD1C();
    sub_100004A3C(v21, v22, v23);
    sub_100005974();

    *(v10 + 4) = v16;
    sub_100035348(&_mh_execute_header, v24, v25, "executeRequest executing (Priority: %s)");
    sub_100002068();
    sub_100002BD0();
  }

  v26 = v9[18];
  v28 = v9[16];
  v27 = v9[17];
  v29 = v9[14];
  v63 = v9[15];
  v64 = v9[19];
  v30 = v9[12];
  v66 = v9[11];
  v67 = v9[13];
  v65 = v9[10];
  v31 = v9[8];
  v32 = v9[9];
  _StringGuts.grow(_:)(23);

  RequestMetadata.id.getter();
  sub_100005070();
  sub_1000082D4(v33, v34, v35);
  v36._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v36);

  (*(v27 + 8))(v26, v28);
  v37._countAndFlagsBits = 0x676E696E6E755220;
  v37._object = 0xED00006B73615420;
  String.append(_:)(v37);
  sub_100003978();
  sub_100009BFC(v38, v39, v40, v41);
  sub_100003CA4();
  v44 = sub_10005FAF0(v42, v43);
  v45 = swift_allocObject();
  v45[2] = v30;
  v45[3] = v44;
  v45[4] = v30;
  v45[5] = v31;
  v45[6] = v32;
  v45[7] = v65;
  v45[8] = v66;

  swift_retain_n();

  sub_100004CB0();
  sub_100128ED0();
  v47 = v46;
  v9[22] = v46;
  v48 = OBJC_IVAR____TtC13modelmanagerd13DaemonRequest_unsafeManagerOwnedState;
  sub_100004CBC();
  swift_beginAccess();
  sub_100005DD8();
  sub_10005CAA8(v31 + v48, v29);
  v49 = *(v67 + 20);
  v50 = *(v29 + v49);

  *(v29 + v49) = v47;
  sub_100002D24();
  swift_beginAccess();
  sub_10005CB00(v29, v31 + v48);
  swift_endAccess();
  v51 = async function pointer to Task.value.getter[1];
  v52 = swift_task_alloc();
  v9[23] = v52;
  sub_100065020(&qword_1001B8F60, &unk_100171260);
  sub_1000060CC();
  *v52 = v53;
  v52[1] = sub_10005C80C;
  sub_100019260();
  sub_1000135DC();

  return Task.value.getter(v54, v55, v56, v57, v58, v59, v60, v61, a9, v63, v64, v65, v66, v67, 0x2074736575716552, 0xE800000000000000);
}

uint64_t sub_100135D8C()
{
  sub_100001ED0();
  v1 = v0[22];
  v2 = v0[12];
  sub_10005C920(v0[8]);

  v3 = v0[24];
  v4 = v0[21];
  v5 = v0[18];
  v7 = v0[14];
  v6 = v0[15];

  sub_100001F00();

  return v8();
}

uint64_t sub_100135E28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a7;
  v8[7] = a8;
  v8[4] = a5;
  v8[5] = a6;
  v8[2] = a1;
  v8[3] = a4;
  return _swift_task_switch(sub_100135E50, a4, 0);
}

uint64_t sub_100135E50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_100001ED0();
  v22 = *(v20 + 32);
  v21 = *(v20 + 40);
  v23 = *(v20 + 24);
  v24 = swift_task_alloc();
  *(v20 + 64) = v24;
  v25 = *(v20 + 48);
  *(v24 + 16) = v23;
  *(v24 + 24) = v22;
  *(v24 + 32) = v21;
  *(v24 + 40) = v25;
  v26 = swift_task_alloc();
  *(v20 + 72) = v26;
  *(v26 + 16) = v22;
  *(v26 + 24) = v23;
  sub_100003CA4();
  v29 = sub_10005FAF0(v27, v28);
  v30 = async function pointer to withTaskCancellationHandler<A>(operation:onCancel:isolation:)[1];
  v31 = swift_task_alloc();
  *(v20 + 80) = v31;
  *v31 = v20;
  v31[1] = sub_10005C6E8;
  v32 = *(v20 + 16);

  return withTaskCancellationHandler<A>(operation:onCancel:isolation:)(v32, &unk_100174110, v24, sub_10014A3B8, v26, v23, v29, &type metadata for () + 8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_100135F94()
{
  sub_100002BAC();
  v2 = v0[8];
  v1 = v0[9];

  sub_100001F00();
  v4 = v0[11];

  return v3();
}

uint64_t sub_100135FF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[22] = a5;
  v6[23] = a6;
  v6[20] = a3;
  v6[21] = a4;
  v6[19] = a2;
  v8 = type metadata accessor for ModelManagerError();
  v6[24] = v8;
  v9 = *(v8 - 8);
  v6[25] = v9;
  v10 = *(v9 + 64) + 15;
  v6[26] = swift_task_alloc();
  v11 = type metadata accessor for InferenceError();
  v6[27] = v11;
  v12 = *(v11 - 8);
  v6[28] = v12;
  v13 = *(v12 + 64) + 15;
  v6[29] = swift_task_alloc();
  v14 = type metadata accessor for InferenceError.Context();
  v6[30] = v14;
  v15 = *(v14 - 8);
  v6[31] = v15;
  v16 = *(v15 + 64) + 15;
  v6[32] = swift_task_alloc();
  v17 = sub_100065020(&qword_1001B8F48, &qword_10016FB30);
  v6[33] = v17;
  v18 = *(v17 - 8);
  v6[34] = v18;
  v19 = *(v18 + 64) + 15;
  v6[35] = swift_task_alloc();
  v20 = type metadata accessor for ClientData();
  v6[36] = v20;
  v21 = *(v20 - 8);
  v6[37] = v21;
  v22 = *(v21 + 64) + 15;
  v6[38] = swift_task_alloc();
  v23 = type metadata accessor for InferenceProviderRequestConfiguration();
  v6[39] = v23;
  v24 = *(v23 - 8);
  v6[40] = v24;
  v25 = *(v24 + 64) + 15;
  v6[41] = swift_task_alloc();
  v6[42] = swift_task_alloc();
  v26 = type metadata accessor for InferenceProviderRequestResult();
  v6[43] = v26;
  v27 = *(v26 - 8);
  v6[44] = v27;
  v28 = *(v27 + 64) + 15;
  v6[45] = swift_task_alloc();
  v6[46] = swift_task_alloc();
  v29 = type metadata accessor for InferenceMonitor.Event();
  v6[47] = v29;
  v30 = *(v29 - 8);
  v6[48] = v30;
  v31 = *(v30 + 64) + 15;
  v6[49] = swift_task_alloc();

  return _swift_task_switch(sub_10013636C, a2, 0);
}

uint64_t sub_100136CC0()
{
  sub_100003884();
  v2 = *v1;
  v3 = *v1;
  sub_100002B9C();
  *v4 = v3;
  v5 = v2[51];
  v6 = *v1;
  *v4 = *v1;
  v3[52] = v0;

  v7 = v2[42];
  v8 = v2[40];
  v9 = v2[39];
  if (v0)
  {
    v10 = v3[19];
    (*(v8 + 8))(v7, v9);
    sub_10003DDC8();
    sub_1000071A8();

    return _swift_task_switch(v11, v12, v13);
  }

  else
  {
    v14 = v3[22];
    (*(v8 + 8))(v7, v9);
    sub_100005358();
    v21 = v15;
    v16 = *(v14 + 4);
    v17 = swift_task_alloc();
    v3[53] = v17;
    *v17 = v6;
    v17[1] = sub_100136EC0;
    v18 = v3[23];
    v19 = sub_1000031B8(v3[46]);

    return v21(v19);
  }
}

uint64_t sub_100136EC0()
{
  sub_100002BAC();
  sub_100001EF4();
  v2 = *(v1 + 424);
  v3 = *(v1 + 152);
  v4 = *v0;
  sub_100002B9C();
  *v5 = v4;

  v6 = sub_100002C10();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_100136FB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_10000385C();
  sub_100003284();
  v16 = v14[50];
  v17 = v14[20];
  (*(v14[44] + 8))(v14[46], v14[43]);
  if (RequestMetadata.isStream.getter())
  {
    sub_10004AE14();
    sub_10014B2E4();

    sub_10003328C();
    sub_100005070();
    sub_1000082D4(v18, v19, v20);
    v21._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v21);

    v22 = *(v15 + 8);
    v23 = sub_100003754();
    v24(v23);
    v14[57] = a11;
    sub_100003CA4();
    sub_10005FAF0(v25, v26);
    v27 = async function pointer to static _OSTransaction.named<A>(_:closure:isolation:)[1];
    v28 = swift_task_alloc();
    v14[58] = v28;
    *v28 = v14;
    sub_100012BF8(v28);
    sub_100011DF4();
    sub_100003540();

    return static _OSTransaction.named<A>(_:closure:isolation:)(v29, v30, v31, v32, v33, v34, v35, v36, a9, a10, a11, a12, a13, a14);
  }

  else
  {
    v37 = v14[49];
    sub_1000065AC();
    sub_1000494CC();

    sub_100002F54();
    sub_100003540();

    return v39(v38, v39, v40, v41, v42, v43, v44, v45, a9, a10, a11, a12, a13, a14);
  }
}

uint64_t sub_100137198()
{
  sub_100001ED0();
  sub_100001EF4();
  v3 = v2;
  sub_100004B40();
  *v4 = v3;
  v6 = *(v5 + 464);
  v7 = *v1;
  sub_100002B9C();
  *v8 = v7;

  if (v0)
  {
  }

  else
  {
    v10 = *(v3 + 456);
    v11 = *(v3 + 152);

    sub_1000071A8();

    return _swift_task_switch(v12, v13, v14);
  }
}

uint64_t sub_1001372BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_100005F88();
  sub_1000033DC();
  v13 = *(v12 + 392);
  sub_1000065AC();
  sub_1000494CC();

  sub_100002F54();
  sub_1000062BC();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10, a11, a12);
}

uint64_t sub_100137370()
{
  sub_100001ED0();
  v2 = *v1;
  v3 = *(*v1 + 480);
  v4 = *v1;
  sub_100002B9C();
  *v5 = v4;

  v6 = *(v2 + 152);
  if (v0)
  {

    v7 = sub_10014B000;
  }

  else
  {
    v7 = sub_10013749C;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_10013749C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_100007B84();
  sub_100005EA4();
  v17 = *(v16 + 472);
  v18 = *(v16 + 488);
  v20 = *(v16 + 248);
  v19 = *(v16 + 256);
  v21 = *(v16 + 240);
  v22 = *(v16 + 216);
  v23 = *(v16 + 224);
  v37 = *(v16 + 152);
  v38 = *(v16 + 160);
  sub_10005FAF0(&qword_1001BAA28, &type metadata accessor for InferenceError);
  sub_100007894();
  v39 = swift_allocError();
  v25 = v24;
  v17(v24, v19, v21);
  (*(v23 + 104))(v25, v18, v22);
  swift_willThrow();
  sub_10005C054(v37, v38);
  v26 = *(v16 + 392);
  sub_1000065AC();
  v27 = *(v16 + 208);

  sub_100001F00();
  sub_100003D04();

  return v29(v28, v29, v30, v31, v32, v33, v34, v35, a9, v37, v38, v39, a13, a14, a15, a16);
}

uint64_t sub_100137600(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_10000385C();
  sub_100003284();
  v19 = *(v16 + 416);
  sub_10014B0E4();
  v20 = sub_100065020(&qword_1001B8F60, &unk_100171260);
  sub_100002CBC();
  if (sub_100060B20())
  {
    v21 = sub_10005D760();
    (*(v22 + 88))(v21);
    sub_1000365B8();
    if (v23)
    {
      sub_100049480();
      v24 = *(v18 + 96);
      v25 = sub_100007B78();
      v26(v25);
      v19 = enum case for InferenceError.notLoaded(_:)[4];
      v27 = sub_10002EAE0();
      v19(v27);
      v15 = v14;
      goto LABEL_10;
    }

    v28 = sub_10005D760();
    (*(v29 + 8))(v28);
  }

  sub_10014B26C();
  *(v18 - 48) = v19;
  swift_errorRetain();
  sub_100048664();
  if (!sub_100060B20())
  {
LABEL_18:
    v63 = *(v16 + 160);
    v64 = *(v16 + 144);

    v65 = OBJC_IVAR____TtC13modelmanagerd13DaemonRequest_unsafeManagerOwnedState;
    sub_100002D24();
    swift_beginAccess();
    sub_100138098(v63 + v65);
    v67 = *(v16 + 152);
    v66 = *(v16 + 160);
    swift_endAccess();
    swift_willThrow();
    v68 = sub_10014B3C8();
    sub_10005C054(v68, v69);
    v70 = *(v16 + 392);
    sub_1000065AC();
    v81 = *(v16 + 208);

    sub_100001F00();
    sub_100003540();

    return v72(v71, v72, v73, v74, v75, v76, v77, v78, a9, v81, a11, a12, a13, a14);
  }

  v30 = sub_10014B450();
  if (v31(v30) != enum case for ModelManagerError.inferenceError(_:) || (v32 = sub_100045E6C(), v33(v32), v35 = *(v18 + 88), v34 = v18 + 88, v35(v20, v17), sub_1000365B8(), !v23))
  {
    v61 = sub_10014B388();
    v62(v61);
    goto LABEL_18;
  }

  sub_10014B10C();
  v36 = *(v34 + 96);
  v37 = sub_10014B41C();
  v38(v37);
  v39 = sub_10014B3A8();
  v19(v39);
LABEL_10:
  v40 = *v15;

  *(v16 + 472) = v19;
  *(v16 + 488) = v17;
  if (qword_1001B8AB8 != -1)
  {
    sub_100005344();
    swift_once();
  }

  v41 = type metadata accessor for Logger();
  sub_100002FD0(v41, qword_1001BD750);
  v42 = Logger.logObject.getter();
  v43 = static os_log_type_t.fault.getter();
  if (sub_100002F80(v43))
  {
    sub_1000057F8();
    v44 = swift_slowAlloc();
    sub_10000A240(v44);
    sub_1000059D8(&_mh_execute_header, v45, v46, "InferenceProvider assets are de-synced with MM, terminating the inference provider to self-heal");
    sub_100002BD0();
  }

  v47 = *(v16 + 160);

  sub_100037EB4();
  v79 = sub_100035D60();
  sub_100004B94();
  v80 = v48 + *v48;
  v50 = *(v49 + 4);
  v51 = swift_task_alloc();
  *(v16 + 480) = v51;
  *v51 = v16;
  sub_10000EF70(v51);
  sub_100003540();

  return v56(v52, v53, v54, v55, v56, v57, v58, v59, v79, v80, a11, a12, a13, a14);
}

uint64_t sub_1001379B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_10000385C();
  sub_100003284();
  v19 = *(v16 + 440);
  sub_10014B0E4();
  v20 = sub_100065020(&qword_1001B8F60, &unk_100171260);
  sub_100002CBC();
  if (sub_100060B20())
  {
    v21 = sub_10005D760();
    (*(v22 + 88))(v21);
    sub_1000365B8();
    if (v23)
    {
      sub_100049480();
      v24 = *(v18 + 96);
      v25 = sub_100007B78();
      v26(v25);
      v19 = enum case for InferenceError.notLoaded(_:)[4];
      v27 = sub_10002EAE0();
      v19(v27);
      v15 = v14;
      goto LABEL_10;
    }

    v28 = sub_10005D760();
    (*(v29 + 8))(v28);
  }

  sub_10014B26C();
  *(v18 - 48) = v19;
  swift_errorRetain();
  sub_100048664();
  if (!sub_100060B20())
  {
LABEL_18:
    v63 = *(v16 + 160);
    v64 = *(v16 + 144);

    v65 = OBJC_IVAR____TtC13modelmanagerd13DaemonRequest_unsafeManagerOwnedState;
    sub_100002D24();
    swift_beginAccess();
    sub_100138098(v63 + v65);
    v67 = *(v16 + 152);
    v66 = *(v16 + 160);
    swift_endAccess();
    swift_willThrow();
    v68 = sub_10014B3C8();
    sub_10005C054(v68, v69);
    v70 = *(v16 + 392);
    sub_1000065AC();
    v81 = *(v16 + 208);

    sub_100001F00();
    sub_100003540();

    return v72(v71, v72, v73, v74, v75, v76, v77, v78, a9, v81, a11, a12, a13, a14);
  }

  v30 = sub_10014B450();
  if (v31(v30) != enum case for ModelManagerError.inferenceError(_:) || (v32 = sub_100045E6C(), v33(v32), v35 = *(v18 + 88), v34 = v18 + 88, v35(v20, v17), sub_1000365B8(), !v23))
  {
    v61 = sub_10014B388();
    v62(v61);
    goto LABEL_18;
  }

  sub_10014B10C();
  v36 = *(v34 + 96);
  v37 = sub_10014B41C();
  v38(v37);
  v39 = sub_10014B3A8();
  v19(v39);
LABEL_10:
  v40 = *v15;

  *(v16 + 472) = v19;
  *(v16 + 488) = v17;
  if (qword_1001B8AB8 != -1)
  {
    sub_100005344();
    swift_once();
  }

  v41 = type metadata accessor for Logger();
  sub_100002FD0(v41, qword_1001BD750);
  v42 = Logger.logObject.getter();
  v43 = static os_log_type_t.fault.getter();
  if (sub_100002F80(v43))
  {
    sub_1000057F8();
    v44 = swift_slowAlloc();
    sub_10000A240(v44);
    sub_1000059D8(&_mh_execute_header, v45, v46, "InferenceProvider assets are de-synced with MM, terminating the inference provider to self-heal");
    sub_100002BD0();
  }

  v47 = *(v16 + 160);

  sub_100037EB4();
  v79 = sub_100035D60();
  sub_100004B94();
  v80 = v48 + *v48;
  v50 = *(v49 + 4);
  v51 = swift_task_alloc();
  *(v16 + 480) = v51;
  *v51 = v16;
  sub_10000EF70(v51);
  sub_100003540();

  return v56(v52, v53, v54, v55, v56, v57, v58, v59, v79, v80, a11, a12, a13, a14);
}

uint64_t sub_100137D70(uint64_t a1, uint64_t a2)
{
  v2[2] = a2;
  v3 = type metadata accessor for RequestKey();
  v2[3] = v3;
  v4 = *(v3 - 8);
  v2[4] = v4;
  v5 = *(v4 + 64) + 15;
  v2[5] = swift_task_alloc();

  return _swift_task_switch(sub_100137E30, 0, 0);
}

uint64_t sub_100137E30()
{
  sub_10000636C();
  v2 = *(v0 + 40);
  v3 = *(v0 + 16);
  sub_100008110();
  sub_100045430();
  RequestMetadata.requestKey.getter();
  v4 = *(v1 + 128);
  sub_100004B94();
  v13 = (v5 + *v5);
  v7 = *(v6 + 4);
  v8 = swift_task_alloc();
  v9 = sub_10000AC24(v8);
  *v9 = v10;
  v9[1] = sub_100137F58;
  v11 = sub_10000A9C8(*(v0 + 40));

  return v13(v11);
}

uint64_t sub_100137F58()
{
  sub_100001ED0();
  sub_100001EF4();
  v2 = v1[6];
  v3 = v1[5];
  v4 = v1[4];
  v5 = v1[3];
  v6 = *v0;
  sub_100002B9C();
  *v7 = v6;

  v8 = *(v4 + 8);
  v9 = sub_100001F70();
  v10(v9);

  sub_100002F54();

  return v11();
}

uint64_t sub_100138098(uint64_t a1)
{
  v2 = type metadata accessor for RequestCancellationReason();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100065020(&qword_1001B9C80, &unk_1001726D0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v20 - v9;
  v11 = type metadata accessor for ModelManagerError();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = type metadata accessor for DaemonRequest.ManagerOwnedState(0);
  if (*(a1 + *(result + 24)) == 1)
  {
    v21 = v12;
    v17 = *(result + 28);
    if (sub_10000C6C0(a1 + v17, 1, v2))
    {
      sub_100009BFC(v10, 1, 1, v11);
    }

    else
    {
      (*(v3 + 16))(v6, a1 + v17, v2);
      RequestCancellationReason.errorValue.getter();
      (*(v3 + 8))(v6, v2);
      if (sub_10000C6C0(v10, 1, v11) != 1)
      {
        v18 = v21;
        (*(v21 + 32))(v15, v10, v11);
        sub_10005FAF0(&qword_1001B8F50, &type metadata accessor for ModelManagerError);
        swift_allocError();
        (*(v18 + 16))(v19, v15, v11);
        swift_willThrow();
        return (*(v18 + 8))(v15, v11);
      }
    }

    return sub_10000ED84(v10, &qword_1001B9C80);
  }

  return result;
}

uint64_t sub_100138394(uint64_t a1, uint64_t a2)
{
  v4 = sub_100065020(&qword_1001BB050, &qword_10016F6E0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v12 - v6;
  type metadata accessor for _OSActivity();
  swift_initStackObject();
  v8 = sub_10001B160("Request cancelled", 17, 2);
  v9 = type metadata accessor for TaskPriority();
  sub_100009BFC(v7, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = a1;
  v10[5] = a2;

  sub_1000652FC();

  swift_beginAccess();
  os_activity_scope_leave((v8 + 3));
  swift_endAccess();
}

uint64_t sub_100138518(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_100065020(&qword_1001B8F48, &qword_10016FB30);
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  v8 = *(v7 + 64) + 15;
  v5[6] = swift_task_alloc();

  return _swift_task_switch(sub_1001385E4, 0, 0);
}

uint64_t sub_1001385E4()
{
  sub_100005F88();
  sub_1000033DC();
  if (qword_1001B8AB8 != -1)
  {
    sub_100005344();
    swift_once();
  }

  v1 = v0[2];
  v2 = type metadata accessor for Logger();
  sub_10000641C(v2, qword_1001BD750);
  sub_10000D0E8();

  v3 = Logger.logObject.getter();
  static os_log_type_t.info.getter();
  sub_1000089B8();
  if (sub_10000A384())
  {
    v5 = v0[5];
    v4 = v0[6];
    v6 = v0[4];
    v7 = v0[2];
    sub_10000A05C();
    swift_slowAlloc();
    sub_100003890();
    sub_10001D338();
    *v1 = 136315138;
    sub_10004AC80();
    sub_100005070();
    sub_1000082D4(v8, v9, v10);
    sub_1000156D8();
    v11 = sub_10000592C();
    v12(v11);
    v13 = sub_100004CB0();
    sub_100004A3C(v13, v14, v15);
    sub_100005974();

    *(v1 + 4) = v7;
    sub_100035348(&_mh_execute_header, v16, v17, "InferenceProvider cancel for Request %s");
    sub_100002068();
    sub_100002BD0();
  }

  v18 = v0[2];
  v20 = *(v18 + 16);
  v19 = *(v18 + 24);
  v21 = swift_task_alloc();
  v0[7] = v21;
  *v21 = v0;
  v21[1] = sub_10001C820;
  v22 = v0[3];
  sub_100002CBC();
  sub_1000062BC();

  return sub_10012EDE0();
}

void sub_100138790()
{
  sub_1000055B0();
  v1 = v0;
  v3 = v2;
  v4 = sub_100065020(&qword_1001B8F48, &qword_10016FB30);
  v5 = sub_100002BDC(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v5);
  v12 = v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = v29 - v13;
  v31 = v3;
  RequestMetadata.id.getter();
  v15 = (v1 + OBJC_IVAR____TtC13modelmanagerd14RequestManager_inputStreamRequests);
  sub_100004CBC();
  swift_beginAccess();
  v16 = v15[1];
  v17 = v15[2];
  v32[2] = *v15;
  v32[3] = v16;
  v32[4] = v14;

  v18 = sub_100141808(sub_10014AFA8, v32, v16);
  if (v19)
  {

    (*(v7 + 8))(v14, v4);
LABEL_6:
    sub_100002EEC();
    return;
  }

  sub_100143420(v18, v17);

  v20 = *(v7 + 8);
  v29[1] = v7 + 8;
  v30 = v4;
  v20(v14, v4);

  v21 = RequestMetadata.id.getter();
  v22 = *v15;
  v23 = v15[1];
  v24 = v15[2];
  __chkstk_darwin(v21);
  v29[-4] = v22;
  v29[-3] = v23;
  v29[-2] = v12;

  v25 = sub_100141808(sub_10014AFA8, &v29[-6], v23);
  if ((v26 & 1) == 0)
  {
    v27 = sub_100143420(v25, v24);

    v20(v12, v30);
    v28 = RequestMetadata.subrequestID.getter();
    if (v28)
    {
      *(v27 + 64) = v28 - 1;
      *(v27 + 68) = 0;

      goto LABEL_6;
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_100138A3C()
{
  sub_100002BAC();
  v1[11] = v2;
  v1[12] = v0;
  v3 = sub_100065020(&qword_1001B8F48, &qword_10016FB30);
  v1[13] = v3;
  sub_100002F44(v3);
  v1[14] = v4;
  v6 = *(v5 + 64);
  v1[15] = sub_10000F0C0();
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v7 = sub_100002C10();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_100138B04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24)
{
  sub_100007B84();
  a23 = v29;
  a24 = v30;
  sub_100005EA4();
  a22 = v24;
  v31 = v24[17];
  v32 = v24[12];
  v33 = v24[11] + OBJC_IVAR____TtC13modelmanagerd13DaemonRequest_metadata;
  RequestMetadata.id.getter();
  sub_1000125C0();
  swift_beginAccess();
  v34 = sub_10000598C();
  *(sub_10014B1BC(v34) + 32) = v31;

  v35 = sub_10000640C();
  sub_100141808(v35, v36, v37);
  sub_100007BE4();
  if (v28)
  {
  }

  else
  {
    sub_1000118CC();

    if (*(v27 + 68) != 1 && *(v27 + 64) < *(v27 + 72))
    {
      v38 = v24[17];
      sub_100002D24();
      swift_beginAccess();
      sub_10013569C(v38);
      swift_endAccess();

      if (qword_1001B8AB8 != -1)
      {
        sub_100005344();
        swift_once();
      }

      v39 = v24[16];
      v40 = v24[17];
      v41 = v24[13];
      v42 = v24[14];
      v43 = type metadata accessor for Logger();
      sub_10000641C(v43, qword_1001BD750);
      sub_1000251CC();
      v44 = sub_1000062B0();
      v45(v44);
      v46 = Logger.logObject.getter();
      v47 = static os_log_type_t.default.getter();
      v48 = os_log_type_enabled(v46, v47);
      v49 = v24[16];
      v50 = v24[17];
      v51 = v24[13];
      v52 = v24[14];
      if (v48)
      {
        sub_10000A05C();
        a11 = v50;
        v53 = swift_slowAlloc();
        sub_1000033D0();
        a10 = swift_slowAlloc();
        a12 = a10;
        *v53 = 136315138;
        sub_100005070();
        sub_1000082D4(v54, v55, v56);
        v57 = dispatch thunk of CustomStringConvertible.description.getter();
        HIDWORD(a9) = v47;
        v59 = v58;
        v60 = *(v52 + 8);
        v61 = sub_100036724();
        v60(v61);
        v62 = sub_100004A3C(v57, v59, &a12);

        *(v53 + 4) = v62;
        _os_log_impl(&_mh_execute_header, v46, BYTE4(a9), "Removing %s from inputStreamRequests dictionary", v53, 0xCu);
        sub_10014B518();
        sub_100002BD0();

        sub_100002BD0();

        (v60)(a11, v51);
      }

      else
      {

        v124 = *(v52 + 8);
        v125 = sub_100036724();
        v124(v125);
        (v124)(v50, v51);
      }

      goto LABEL_23;
    }
  }

  v63 = v24[17];
  v64 = sub_10000598C();
  *(sub_10014B1BC(v64) + 32) = v63;

  v65 = sub_10000640C();
  sub_100141808(v65, v66, v67);
  sub_100007BE4();
  if (v28)
  {

LABEL_16:
    if (qword_1001B8AB8 != -1)
    {
      sub_100005344();
      swift_once();
    }

    v92 = v24[17];
    v94 = v24[14];
    v93 = v24[15];
    v95 = v24[13];
    v96 = type metadata accessor for Logger();
    sub_10000641C(v96, qword_1001BD750);
    sub_1000251CC();
    v97 = sub_1000062B0();
    v98(v97);
    v99 = Logger.logObject.getter();
    v100 = static os_log_type_t.default.getter();
    v101 = os_log_type_enabled(v99, v100);
    v103 = v24[14];
    v102 = v24[15];
    v104 = v24[13];
    if (v101)
    {
      sub_10000A05C();
      swift_slowAlloc();
      a11 = sub_100003890();
      a12 = a11;
      *v25 = 136315138;
      sub_100005070();
      sub_1000082D4(v105, v106, v107);
      v108 = sub_100042FBC();
      v110 = v109;
      v111 = *(v103 + 8);
      LODWORD(a10) = v100;
      v112 = sub_100005E8C();
      v111(v112);
      v113 = sub_100004A3C(v108, v110, &a12);

      *(v25 + 4) = v113;
      sub_100005EB0(&_mh_execute_header, v99, v100, "Incorrect Input streaming request state for group %s");
      sub_10014B518();
      sub_100002BD0();

      sub_100002BD0();
    }

    else
    {

      v111 = *(v103 + 8);
      v114 = sub_100005E8C();
      v111(v114);
    }

    v116 = v24[16];
    v115 = v24[17];
    v117 = v24[15];
    v118 = v24[13];
    v119 = type metadata accessor for ModelManagerError();
    sub_100002E68();
    sub_10005FAF0(v120, v121);
    sub_100006194();
    sub_100007894();
    swift_allocError();
    sub_100006098(v119);
    (*(v122 + 104))();
    swift_willThrow();
    v123 = sub_1000071D0();
    v111(v123);

    sub_100001F00();
    goto LABEL_24;
  }

  sub_1000118CC();

  v25 = *(v63 + 24);

  if (!v25)
  {
    goto LABEL_16;
  }

  v68 = v24[11];
  type metadata accessor for DaemonRequest(0);
  LOBYTE(v68) = sub_10005C434();

  if ((v68 & 1) == 0)
  {
    goto LABEL_16;
  }

  v69 = v24[17];
  v70 = sub_10000598C();
  *(sub_10014B1BC(v70) + 32) = v69;

  v71 = sub_10000640C();
  sub_100141808(v71, v72, v73);
  result = sub_100007BE4();
  if (v28)
  {
    __break(1u);
    goto LABEL_28;
  }

  v75 = v24[17];
  sub_1000118CC();

  v76 = *(v69 + 24);
  *(v69 + 24) = 0;

  v77 = sub_10000598C();
  v77[2] = v26;
  v77[3] = v25;
  v77[4] = v75;

  v78 = sub_10002B158();
  sub_100141808(v78, v79, v25);
  v81 = v80;

  if (v81)
  {
LABEL_28:
    __break(1u);
    return result;
  }

  v82 = v24[17];
  v83 = v24[13];
  v84 = v24[14];
  v85 = sub_1000062B0();
  v87 = sub_100143420(v85, v86);

  v88 = *(v84 + 8);
  v89 = sub_10002EAE0();
  v90(v89);
  swift_beginAccess();
  v91 = *(v87 + 32);
  *(v87 + 32) = _swiftEmptyArrayStorage;

LABEL_23:
  v127 = v24[16];
  v126 = v24[17];
  v128 = v24[15];

  sub_100002F54();
LABEL_24:
  sub_100003D04();

  return v130(v129, v130, v131, v132, v133, v134, v135, v136, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_100139284()
{
  sub_100002BAC();
  v1[20] = v2;
  v1[21] = v0;
  v1[18] = v3;
  v1[19] = v4;
  v5 = sub_100065020(&qword_1001BB050, &qword_10016F6E0);
  sub_100002F04(v5);
  v7 = *(v6 + 64);
  v1[22] = sub_100002C58();
  v8 = sub_100065020(&qword_1001B9058, &qword_10016FCC8);
  sub_100002F44(v8);
  v1[23] = v9;
  v1[24] = *(v10 + 64);
  v1[25] = sub_10000F0C0();
  v1[26] = swift_task_alloc();
  v11 = type metadata accessor for InferenceProviderDescriptor();
  v1[27] = v11;
  sub_100002F44(v11);
  v1[28] = v12;
  v14 = *(v13 + 64);
  v1[29] = sub_100002C58();
  v15 = sub_100065020(&qword_1001B94F0, &unk_100172060);
  v1[30] = v15;
  sub_100002F44(v15);
  v1[31] = v16;
  v18 = *(v17 + 64);
  v1[32] = sub_100002C58();
  v19 = type metadata accessor for RequestPriority();
  v1[33] = v19;
  sub_100002F44(v19);
  v1[34] = v20;
  v22 = *(v21 + 64);
  v1[35] = sub_100002C58();
  v23 = type metadata accessor for DaemonRequest.ManagerOwnedState(0);
  sub_100002F04(v23);
  v25 = *(v24 + 64);
  v1[36] = sub_100002C58();
  v26 = sub_100065020(&qword_1001B8F48, &qword_10016FB30);
  v1[37] = v26;
  sub_100002F44(v26);
  v1[38] = v27;
  v29 = *(v28 + 64);
  v1[39] = sub_10000F0C0();
  v1[40] = swift_task_alloc();
  v30 = type metadata accessor for InferenceProviderRequestConfiguration();
  v1[41] = v30;
  sub_100002F44(v30);
  v1[42] = v31;
  v33 = *(v32 + 64);
  v1[43] = sub_10000F0C0();
  v1[44] = swift_task_alloc();
  v34 = sub_100065020(&qword_1001BB3F8, &qword_100171D50);
  sub_100002F04(v34);
  v36 = *(v35 + 64);
  v1[45] = sub_100002C58();
  v37 = sub_100002C10();

  return _swift_task_switch(v37, v38, v39);
}

uint64_t sub_10013956C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_100007B84();
  sub_100005EA4();
  if (qword_1001B8AB8 != -1)
  {
    sub_100005344();
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  *(v17 + 368) = sub_10000641C(v19, qword_1001BD750);
  v20 = Logger.logObject.getter();
  static os_log_type_t.info.getter();
  sub_100006390();
  if (os_log_type_enabled(v20, v21))
  {
    sub_1000057F8();
    v22 = swift_slowAlloc();
    sub_10000BF10(v22);
    _os_log_impl(&_mh_execute_header, v20, v16, "executeRequest requested", v18, 2u);
    sub_100002BD0();
  }

  v23 = *(v17 + 168);
  v24 = *(v17 + 144);

  sub_100131AD4();
  *(v17 + 376) = 0;
  v34 = *(v17 + 168);
  v35 = *(v17 + 144);
  v36 = sub_10014F3A8();
  if (v36)
  {
    v37 = *(v17 + 352);
    v38 = *(v17 + 360);
    v39 = *(v17 + 328);
    v40 = *(v17 + 336);
    v41 = *(v17 + 144);
    v42 = OBJC_IVAR____TtC13modelmanagerd13DaemonRequest_unsafeManagerOwnedState;
    sub_100004CBC();
    swift_beginAccess();
    (*(v40 + 16))(v37, v41 + v42, v39);
    InferenceProviderRequestConfiguration.auditToken.getter();
    v43 = *(v40 + 8);
    v44 = sub_100007660();
    v45(v44);
    v46 = type metadata accessor for AuditToken();
    v47 = sub_10000C6C0(v38, 1, v46);
    v48 = *(v17 + 360);
    if (v47 == 1)
    {
      sub_10000ED84(*(v17 + 360), &qword_1001BB3F8);
      v49 = Logger.logObject.getter();
      v50 = static os_log_type_t.fault.getter();
      if (sub_100002F80(v50))
      {
        sub_1000057F8();
        v51 = swift_slowAlloc();
        sub_10000A240(v51);
        sub_1000059D8(&_mh_execute_header, v52, v53, "Request executed with no audit token");
        sub_100002BD0();
      }

      v54 = type metadata accessor for ModelManagerError();
      sub_100002E68();
      sub_10005FAF0(v55, v56);
      sub_100007894();
      swift_allocError();
      sub_100006098(v54);
      (*(v57 + 104))();
      swift_willThrow();
      sub_1000076F4();
      sub_10014B4F8();

      sub_100001F00();
      sub_100003D04();

      return v26(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10, a11, a12, a13, a14, a15, a16);
    }

    else
    {
      v76 = *(v17 + 168);
      *(v17 + 552) = AuditToken.processIdentifier.getter();
      sub_100006098(v46);
      v78 = *(v77 + 8);
      v79 = sub_100007660();
      v80(v79);
      *(v17 + 384) = *(v76 + OBJC_IVAR____TtC13modelmanagerd14RequestManager_rateLimiter);
      sub_10000A30C();
      sub_100003D04();

      return _swift_task_switch(v81, v82, v83);
    }
  }

  else
  {
    v58 = *(v17 + 320);
    v60 = *(v17 + 280);
    v59 = *(v17 + 288);
    v61 = *(v17 + 144);
    sub_100053BB4();
    *(v17 + 392) = OBJC_IVAR____TtC13modelmanagerd13DaemonRequest_metadata;
    RequestMetadata.id.getter();
    v62 = OBJC_IVAR____TtC13modelmanagerd13DaemonRequest_unsafeManagerOwnedState;
    *(v17 + 400) = OBJC_IVAR____TtC13modelmanagerd13DaemonRequest_unsafeManagerOwnedState;
    sub_100004CBC();
    swift_beginAccess();
    sub_100005DD8();
    sub_10005CAA8(v61 + v62, v59);
    InferenceProviderRequestConfiguration.requestPriority.getter();
    sub_1000115C8();
    sub_10000D300();
    sub_100004B94();
    v85 = v63 + *v63;
    v65 = *(v64 + 4);
    v66 = swift_task_alloc();
    *(v17 + 408) = v66;
    *v66 = v17;
    v66[1] = sub_100139CF0;
    v67 = *(v17 + 280);
    sub_1000031B8(*(v17 + 320));
    sub_100036E68();
    sub_100003D04();

    return v72(v68, v69, v70, v71, v72, v73, v74, v75, a9, a10, 88, v85, a13, a14, a15, a16);
  }
}

uint64_t sub_100139A3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_100007B84();
  sub_100005EA4();
  v18 = *(v16 + 376);
  v17 = *(v16 + 384);
  sub_10014B868(*(v16 + 552));
  if (v18)
  {
    v20 = *(v16 + 352);
    v19 = *(v16 + 360);
    v21 = *(v16 + 344);
    v23 = *(v16 + 312);
    v22 = *(v16 + 320);
    v25 = *(v16 + 280);
    v24 = *(v16 + 288);
    v26 = *(v16 + 256);
    v27 = *(v16 + 232);
    sub_10014B4F8();

    sub_100001F00();
    sub_100003D04();

    return v29(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11, a12, a13, a14, a15, a16);
  }

  else
  {
    v37 = *(v16 + 168);
    sub_10000A30C();
    sub_100003D04();

    return _swift_task_switch(v38, v39, v40);
  }
}

uint64_t sub_100139B54()
{
  sub_1000033DC();
  v2 = v1[40];
  v4 = v1[35];
  v3 = v1[36];
  v5 = v1[18];
  sub_100053BB4();
  v1[49] = OBJC_IVAR____TtC13modelmanagerd13DaemonRequest_metadata;
  RequestMetadata.id.getter();
  v6 = OBJC_IVAR____TtC13modelmanagerd13DaemonRequest_unsafeManagerOwnedState;
  v1[50] = OBJC_IVAR____TtC13modelmanagerd13DaemonRequest_unsafeManagerOwnedState;
  sub_100004CBC();
  swift_beginAccess();
  sub_100005DD8();
  sub_10005CAA8(v5 + v6, v3);
  InferenceProviderRequestConfiguration.requestPriority.getter();
  sub_1000115C8();
  sub_10000D300();
  v7 = *(v0 + 88);
  sub_100004B94();
  v14 = (v8 + *v8);
  v10 = *(v9 + 4);
  v11 = swift_task_alloc();
  v1[51] = v11;
  *v11 = v1;
  v11[1] = sub_100139CF0;
  v12 = v1[35];
  sub_1000031B8(v1[40]);
  sub_100036E68();

  return v14();
}

uint64_t sub_100139CF0()
{
  sub_1000094B0();
  sub_10000636C();
  v2 = *v1;
  v3 = *v1;
  sub_100002B9C();
  *v4 = v3;
  v5 = v2[51];
  *v4 = *v1;
  v3[52] = v0;

  v6 = v2[40];
  v7 = v2[38];
  v8 = v2[37];
  v9 = v2[35];
  v10 = v2[34];
  v11 = v2[33];
  v12 = v2[21];
  (*(v10 + 8))(v9, v11);
  v15 = *(v7 + 8);
  v14 = v7 + 8;
  v13 = v15;
  if (!v0)
  {
    v3[53] = v13;
    v3[54] = v14 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  }

  v13(v6, v8);
  sub_100006378();

  return _swift_task_switch(v16, v17, v18);
}

uint64_t sub_100139ED4()
{
  v48 = *(v0 + 424);
  v49 = *(v0 + 432);
  v52 = *(v0 + 416);
  v1 = *(v0 + 392);
  v2 = *(v0 + 336);
  v3 = *(v0 + 344);
  v4 = *(v0 + 328);
  v40 = *(v0 + 312);
  v38 = *(v0 + 256);
  v45 = *(v0 + 240);
  v47 = *(v0 + 296);
  v5 = *(v0 + 224);
  v36 = *(v0 + 400);
  v37 = *(v0 + 232);
  v42 = *(v0 + 216);
  v43 = *(v0 + 248);
  v51 = *(v0 + 208);
  v53 = *(v0 + 200);
  v54 = *(v0 + 184);
  v57 = *(v0 + 160);
  v58 = *(v0 + 168);
  v6 = *(v0 + 144);
  v55 = *(v0 + 192);
  v56 = *(v0 + 152);
  sub_100007130(v58 + OBJC_IVAR____TtC13modelmanagerd14RequestManager_telemetryManager, v0 + 16);
  v39 = *(v0 + 48);
  sub_100003370((v0 + 16), *(v0 + 40));
  RequestMetadata.id.getter();
  RequestMetadata.sessionID.getter();
  RequestMetadata.loggingIdentifier.getter();
  (*(v2 + 16))(v3, &v6[v36], v4);
  InferenceProviderRequestConfiguration.useCaseIdentifier.getter();
  (*(v2 + 8))(v3, v4);
  v7 = *(v6 + 8);
  sub_100003370(v6 + 4, *(v6 + 7));
  v8 = *(v7 + 8);
  v9 = sub_10000D0E8();
  v10(v9, v7);
  InferenceProviderDescriptor.id.getter();
  v11 = *(v5 + 8);
  *(v0 + 440) = v11;
  *(v0 + 448) = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v11(v37, v42);
  RequestMetadata.isStream.getter();
  RequestMetadata.isInference.getter();
  v12 = *(v39 + 24);
  v13 = sub_100002CBC();
  v50 = v14(v13);
  *(v0 + 456) = v50;

  (*(v43 + 8))(v38, v45);
  v48(v40, v47);
  v15 = OBJC_IVAR____TtC13modelmanagerd14RequestManager_reportingProvider;
  *(v0 + 464) = OBJC_IVAR____TtC13modelmanagerd14RequestManager_reportingProvider;
  v44 = *(v58 + v15 + 24);
  v41 = *(v58 + v15 + 32);
  sub_100003370((v58 + v15), v44);
  RequestMetadata.id.getter();
  v46 = type metadata accessor for UUID();
  *(v0 + 472) = v46;
  sub_100002BDC(v46);
  v17 = v16;
  *(v0 + 480) = *(v18 + 64);
  v19 = sub_100002C58();
  UUIDIdentifier.uuid.getter();
  v48(v40, v47);
  v20 = sub_100065020(&qword_1001B9060, &unk_10016FCD0);
  sub_100002F04(v20);
  *(v0 + 488) = *(v21 + 64);
  v22 = sub_100002C58();
  RequestMetadata.loggingIdentifier.getter();
  UUID.init(uuidString:)();

  v23 = RequestMetadata.useCaseID.getter();
  v25 = v24;
  *(v0 + 496) = *(v6 + 2);
  sub_1001284A4();
  (*(v41 + 8))(v19, v22, 1, v23, v25, v26, v44);

  sub_10000ED84(v22, &qword_1001B9060);
  v27 = *(v17 + 8);
  *(v0 + 504) = v27;
  *(v0 + 512) = (v17 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v27(v19, v46);

  sub_100065020(&qword_1001BDBC0, &qword_1001740C0);
  v28 = swift_allocObject();
  *(v0 + 520) = v28;
  *(v28 + 20) = 0;
  *(v28 + 16) = 0;
  sub_100007130(v0 + 16, v0 + 56);
  sub_10001E72C(v51, v53, &qword_1001B9058, &qword_10016FCC8);
  v29 = (*(v54 + 80) + 80) & ~*(v54 + 80);
  v30 = (v55 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
  v31 = swift_allocObject();
  *(v0 + 528) = v31;
  sub_100004A04((v0 + 56), (v31 + 2));
  v31[7] = v6;
  v31[8] = v50;
  v31[9] = v58;
  sub_10002F6B4(v53, v31 + v29, &qword_1001B9058, &qword_10016FCC8);
  *(v31 + v30) = v28;
  v32 = (v31 + ((v30 + 15) & 0xFFFFFFFFFFFFFFF8));
  *v32 = v56;
  v32[1] = v57;

  v33 = swift_task_alloc();
  *(v0 + 536) = v33;
  *v33 = v0;
  v33[1] = sub_10005D478;
  v34 = *(v0 + 168);
  sub_1000031B8(*(v0 + 144));

  return sub_1001308AC();
}

uint64_t sub_10013A494(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_100007B84();
  sub_100005EA4();
  v17 = v16[52];
  v18 = v16[46];
  swift_errorRetain();
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = v16[52];
    sub_10000A05C();
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v22 = 138412290;
    swift_errorRetain();
    v24 = _swift_stdlib_bridgeErrorToNSError();
    *(v22 + 4) = v24;
    *v23 = v24;
    sub_100005EB0(&_mh_execute_header, v19, v20, "Calling back request unable to add connection with %@");
    sub_10000ED84(v23, &qword_1001B8F68);
    sub_100002BD0();

    sub_100002BD0();
  }

  v25 = v16[52];

  swift_willThrow();
  v26 = v16[52];
  sub_1000076F4();
  v27 = v16[26];
  v38 = v16[25];
  v39 = v16[22];
  v40 = v28;

  sub_100001F00();
  sub_100003D04();

  return v30(v29, v30, v31, v32, v33, v34, v35, v36, a9, v38, v39, v40, a13, a14, a15, a16);
}

uint64_t sub_10013A638()
{
  v1 = v0[66];
  v2 = v0[65];

  os_unfair_lock_lock((v2 + 20));
  v3 = *(v2 + 16);
  os_unfair_lock_unlock((v2 + 20));
  if ((v3 & 1) == 0)
  {
    v4 = v0[68];
    v54 = v0[63];
    v56 = v0[64];
    v51 = v0[62];
    v52 = v0[59];
    v49 = v0[57];
    v48 = v0[56];
    v46 = v0[55];
    v43 = v0[54];
    v42 = v0[53];
    v5 = v0[49];
    v6 = v0[39];
    v41 = v0[37];
    v7 = v0[29];
    v39 = v0[27];
    v50 = v0[26];
    v8 = v0[18];
    v45 = v0[61] + 15;
    v44 = v0[60] + 15;
    v9 = (v0[21] + v0[58]);
    v40 = v0[5];
    v38 = v0[6];
    sub_100003370(v0 + 2, v40);
    RequestMetadata.id.getter();
    v10 = v8[8];
    sub_100003370(v8 + 4, v8[7]);
    v11 = *(v10 + 8);
    swift_errorRetain();
    v12 = sub_100002CBC();
    v11(v12);
    v13 = InferenceProviderDescriptor.id.getter();
    v15 = v14;
    v46(v7, v39);
    (*(v38 + 32))(v6, v49, v4, v13, v15, v40);

    v42(v6, v41);
    v47 = v9[4];
    sub_100003370(v9, v9[3]);
    RequestMetadata.id.getter();
    v16 = swift_task_alloc();
    UUIDIdentifier.uuid.getter();
    v42(v6, v41);
    v17 = swift_task_alloc();
    RequestMetadata.loggingIdentifier.getter();
    UUID.init(uuidString:)();

    sub_100065020(&qword_1001B9CA0, &qword_100170718);
    sub_100005B00();
    v18 = type metadata accessor for ModelManagerError();
    sub_100002F44(v18);
    v20 = *(v19 + 72);
    v22 = (*(v21 + 80) + 32) & ~*(v21 + 80);
    *(swift_allocObject() + 16) = xmmword_10016FF40;
    swift_errorRetain();
    ModelManagerError.init(wrapping:)();
    RequestMetadata.useCaseID.getter();
    sub_10001351C();
    sub_1001284A4();
    v23 = *(v47 + 16);
    v24 = sub_100007B78();
    v25(v24);

    sub_10000ED84(v17, &qword_1001B9060);
    v54(v16, v52);
  }

  v26 = v0[68];
  v27 = v0[65];
  v28 = v0[57];
  v29 = v0[26];
  v30 = v0[22];
  v31 = v0[18];
  swift_willThrow();

  sub_10000ED84(v29, &qword_1001B9058);
  sub_10005D588(v0 + 2);
  v32 = type metadata accessor for TaskPriority();
  sub_100007098(v32);
  sub_100005640();
  v33 = swift_allocObject();
  v33[2] = 0;
  v33[3] = 0;
  v33[4] = v31;

  sub_100003E60();
  sub_1000652FC();

  v34 = v0[68];
  sub_1000076F4();
  v35 = v0[26];
  v53 = v0[25];
  v55 = v0[22];

  sub_100001F00();

  return v36();
}

uint64_t sub_10013AB08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[14] = a7;
  v8[15] = a8;
  v8[12] = a5;
  v8[13] = a6;
  v8[10] = a3;
  v8[11] = a4;
  v8[8] = a1;
  v8[9] = a2;
  v10 = type metadata accessor for InferenceProviderDescriptor();
  v8[16] = v10;
  v11 = *(v10 - 8);
  v8[17] = v11;
  v12 = *(v11 + 64) + 15;
  v8[18] = swift_task_alloc();
  v13 = sub_100065020(&qword_1001B8F48, &qword_10016FB30);
  v8[19] = v13;
  v14 = *(v13 - 8);
  v8[20] = v14;
  v15 = *(v14 + 64) + 15;
  v8[21] = swift_task_alloc();
  v8[22] = swift_task_alloc();

  return _swift_task_switch(sub_10013AC4C, a4, 0);
}

uint64_t sub_10013AC4C()
{
  v1 = v0[22];
  v2 = v0[20];
  v4 = v0[17];
  v3 = v0[18];
  v61 = v0[19];
  v62 = v0[16];
  v68 = v0[12];
  v69 = v0[13];
  v65 = v0[10];
  v66 = v0[11];
  v5 = v0[8];
  v6 = v0[9];
  v7 = v5[4];
  v64 = v5[3];
  sub_100003370(v5, v64);
  v70 = OBJC_IVAR____TtC13modelmanagerd13DaemonRequest_metadata;
  RequestMetadata.id.getter();
  v8 = v6[8];
  sub_100003370(v6 + 4, v6[7]);
  v9 = *(v8 + 8);
  v10 = sub_100019498();
  v11(v10, v8);
  InferenceProviderDescriptor.id.getter();
  sub_10001351C();
  (*(v4 + 8))(v3, v62);
  (*(v7 + 32))(v1, v65, 0, v3, v8, v64, v7);

  v12 = *(v2 + 8);
  v12(v1, v61);
  v63 = *(v66 + OBJC_IVAR____TtC13modelmanagerd14RequestManager_reportingProvider + 32);
  sub_100003370((v66 + OBJC_IVAR____TtC13modelmanagerd14RequestManager_reportingProvider), *(v66 + OBJC_IVAR____TtC13modelmanagerd14RequestManager_reportingProvider + 24));
  RequestMetadata.id.getter();
  v67 = type metadata accessor for UUID();
  sub_100002BDC(v67);
  v26 = v13;
  v15 = *(v14 + 64);
  v16 = sub_100002C58();
  UUIDIdentifier.uuid.getter();
  v17 = sub_1000125D0();
  v60 = v12;
  (v12)(v17);
  v18 = sub_100065020(&qword_1001B9060, &unk_10016FCD0);
  sub_100002F04(v18);
  v20 = *(v19 + 64);
  v21 = sub_100002C58();
  RequestMetadata.loggingIdentifier.getter();
  UUID.init(uuidString:)();

  RequestMetadata.useCaseID.getter();
  sub_10001351C();
  v22 = v6[2];
  sub_1001284A4();
  v23 = *(v63 + 16);
  v24 = sub_10005FA98();
  v25(v24);

  sub_10000ED84(v21, &qword_1001B9060);
  v27 = *(v26 + 8);
  LOBYTE(v26) = v26 + 8;
  v27(v16, v67);

  os_unfair_lock_lock((v69 + 20));
  *(v69 + 16) = 1;
  os_unfair_lock_unlock((v69 + 20));
  if (RequestMetadata.isInputStream.getter())
  {
    if (qword_1001B8AB8 != -1)
    {
      sub_100005344();
      swift_once();
    }

    v28 = v0[9];
    v29 = type metadata accessor for Logger();
    sub_100002FD0(v29, qword_1001BD750);

    v30 = Logger.logObject.getter();
    static os_log_type_t.default.getter();
    sub_10014B230();
    if (os_log_type_enabled(v30, v70))
    {
      v31 = v0[22];
      v26 = v0[19];
      sub_10000A05C();
      v32 = swift_slowAlloc();
      sub_1000033D0();
      v16 = swift_slowAlloc();
      *v32 = 136315138;
      RequestMetadata.id.getter();
      sub_100005070();
      sub_1000082D4(v33, v34, v35);
      dispatch thunk of CustomStringConvertible.description.getter();
      v36 = sub_10000CD1C();
      v60(v36);
      v37 = sub_1000037BC();
      v40 = sub_100004A3C(v37, v38, v39);

      *(v32 + 4) = v40;
      _os_log_impl(&_mh_execute_header, v30, v70, "Resetting currentRequest for input streaming group %s", v32, 0xCu);
      sub_10005D588(v16);
      sub_100007C2C();

      sub_100002BD0();
    }

    v41 = v0[21];
    v42 = v0[11];
    RequestMetadata.id.getter();
    v43 = (v42 + OBJC_IVAR____TtC13modelmanagerd14RequestManager_inputStreamRequests);
    sub_100009E10();
    swift_beginAccess();
    v45 = *v43;
    v44 = v43[1];
    v46 = v43[2];
    v47 = swift_task_alloc();
    v47[2] = v45;
    v47[3] = v44;
    v47[4] = v41;

    sub_100141808(sub_10014A248, v47, v44);
    sub_100007BE4();
    v48 = v0[21];
    v49 = v0[19];
    if (v26)
    {

      v50 = sub_1000125D0();
      v60(v50);
      v51 = 0;
    }

    else
    {
      sub_1000118CC();

      v57 = sub_1000125D0();
      v60(v57);
      sub_100004CBC();
      swift_beginAccess();
      v51 = v16[4];
    }

    v0[23] = v51;
    v58 = swift_task_alloc();
    v0[24] = v58;
    *v58 = v0;
    v58[1] = sub_10013B2C0;
    v59 = v0[11];
    sub_1000031B8(v0[9]);

    return sub_100138A3C();
  }

  else
  {
    v0[25] = 0;
    v52 = swift_task_alloc();
    v0[26] = v52;
    *v52 = v0;
    sub_1000464FC(v52);
    v53 = v0[14];
    v54 = v0[15];
    v55 = v0[11];
    sub_1000031B8(v0[9]);

    return sub_1001357E8();
  }
}

uint64_t sub_10013B2C0()
{
  sub_100001ED0();
  sub_100001EF4();
  v3 = v2;
  sub_100004B40();
  *v4 = v3;
  v6 = *(v5 + 192);
  v7 = *v1;
  sub_100002B9C();
  *v8 = v7;

  if (v0)
  {
    v10 = v3[22];
    v9 = v3[23];
    v11 = v3[21];
    v12 = v3[18];

    sub_10000778C();

    return v13();
  }

  else
  {
    v3[25] = v3[23];
    v15 = swift_task_alloc();
    v3[26] = v15;
    *v15 = v7;
    sub_1000464FC(v15);
    v16 = v3[14];
    v17 = v3[15];
    v18 = v3[11];
    sub_1000031B8(v3[9]);

    return sub_1001357E8();
  }
}

uint64_t sub_10013B434()
{
  sub_100001ED0();
  v1 = v0[27];
  v2 = v0[25];
  v4 = v0[21];
  v3 = v0[22];
  v5 = v0[18];

  sub_100001F00();

  return v6();
}

uint64_t sub_10013B4B8()
{
  sub_100002BAC();
  v1[13] = v2;
  v1[14] = v0;
  v3 = _s6PolicyVMa();
  v1[15] = v3;
  sub_100002F04(v3);
  v5 = *(v4 + 64);
  v1[16] = sub_10000F0C0();
  v1[17] = swift_task_alloc();
  v6 = sub_100002C10();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_10013B540()
{
  sub_100007B84();
  sub_100005EA4();
  if (qword_1001B8AB8 != -1)
  {
    sub_100005344();
    swift_once();
  }

  v2 = v0[17];
  v3 = v0[13];
  v4 = type metadata accessor for Logger();
  v5 = sub_10000641C(v4, qword_1001BD750);
  v0[18] = v5;
  sub_10000A748();
  v6 = sub_1000062B0();
  sub_10005CAA8(v6, v7);
  v8 = Logger.logObject.getter();
  static os_log_type_t.default.getter();
  v9 = sub_10000A82C();
  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[17];
  if (v11)
  {
    v13 = v0[15];
    v14 = v0[16];
    sub_10000A05C();
    swift_slowAlloc();
    sub_100003890();
    *v1 = 136315138;
    sub_10000A748();
    v15 = sub_100007B78();
    sub_10005CAA8(v15, v16);
    v0[12] = *(v14 + *(v13 + 28));

    v17 = sub_1000037BC();
    sub_100065020(v17, v18);
    sub_10000E8B4();
    sub_1000082D4(v19, v20, &qword_100171DF0);
    sub_1000E17B4();
    Sequence<>.joined(separator:)();

    v21._countAndFlagsBits = 10272;
    v21._object = 0xE200000000000000;
    String.append(_:)(v21);

    v22 = RequestPriority.rawValue.getter();
    v24 = v23;

    v25._countAndFlagsBits = v22;
    v25._object = v24;
    String.append(_:)(v25);

    v26._countAndFlagsBits = 41;
    v26._object = 0xE100000000000000;
    String.append(_:)(v26);

    sub_10000D300();
    sub_10000D300();
    v27 = sub_100036724();
    v30 = sub_100004A3C(v27, v28, v29);

    *(v1 + 4) = v30;
    sub_100005EB0(&_mh_execute_header, v8, v5, "Processing policy change, new policy: %s");
    sub_10014B518();
    sub_100002BD0();

    sub_100002BD0();
  }

  else
  {

    sub_100008534();
    sub_10000D300();
  }

  v32 = v0[14];
  v31 = v0[15];
  v33 = v0[13];
  v34 = OBJC_IVAR____TtC13modelmanagerd14RequestManager_currentPolicy;
  v0[19] = OBJC_IVAR____TtC13modelmanagerd14RequestManager_currentPolicy;
  v35 = v32 + v34;
  sub_100002D24();
  swift_beginAccess();
  v36 = sub_100001F70();
  sub_100149530(v36, v37);
  swift_endAccess();
  v0[20] = *(v32 + OBJC_IVAR____TtC13modelmanagerd14RequestManager_rateLimiter);
  v0[21] = *(v35 + *(v31 + 24));
  v0[22] = *(v35 + *(v31 + 20));
  sub_10000A30C();
  sub_100003D04();

  return _swift_task_switch(v38, v39, v40);
}

uint64_t sub_10013B848()
{
  sub_100002BAC();
  v1 = *(v0 + 160);
  v2 = *(v0 + 112);
  sub_10014B67C(*(v0 + 168), *(v0 + 176));
  v3 = sub_100005F04();

  return _swift_task_switch(v3, v4, 0);
}

uint64_t sub_10013B8B0()
{
  v30 = v0;
  v1 = &_swiftEmptySetSingleton;
  v0[11] = &_swiftEmptySetSingleton;
  v2 = (v0[14] + OBJC_IVAR____TtC13modelmanagerd14RequestManager_activeGroups);
  sub_100004CBC();
  swift_beginAccess();
  v3 = v2[1];
  v27 = *(v3 + 16);
  if (!v27)
  {
LABEL_23:
    v0[23] = v1;
    v21 = v0[14];

    v22 = swift_task_alloc();
    v0[24] = v22;
    *v22 = v0;
    v22[1] = sub_10013BC2C;
    v23 = v0[14];

    return sub_100035C34(v1, &unk_100174060, v23);
  }

  v26 = v3 + 32;
  v24 = *v2;

  v5 = 0;
  v25 = v3;
  while (v5 < *(v3 + 16))
  {
    v6 = (*(v26 + 8 * v5) + OBJC_IVAR____TtCC13modelmanagerd14RequestManager14ExecutionGroup_unsafeManagerOwnedState);
    sub_100004CBC();
    swift_beginAccess();
    v7 = *(v6[4] + 16);
    if (v7)
    {
      v9 = v6[2];
      v8 = v6[3];
      v10 = v6[1];
      sub_100065020(&dword_1001BA4A8, &qword_100171010);
      v11 = sub_10014B308();
      j__malloc_size(v11);
      sub_1000316D4();
      *(v11 + 16) = v7;
      *(v11 + 24) = v12;
      sub_10002F720();
      sub_1001495F4();
      v28 = v13;

      swift_bridgeObjectRetain_n();

      result = sub_100007F18();
      if (v28 != v7)
      {
        goto LABEL_27;
      }

      if (v11 < 0)
      {
        goto LABEL_21;
      }
    }

    else
    {

      v11 = _swiftEmptyArrayStorage;
      if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0)
      {
        goto LABEL_21;
      }
    }

    if ((v11 & 0x4000000000000000) == 0)
    {
      v14 = *(v11 + 16);
      if (!v14)
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

LABEL_21:
    result = _CocoaArrayWrapper.endIndex.getter();
    v14 = result;
    if (!result)
    {
      goto LABEL_19;
    }

LABEL_11:
    if (v14 < 1)
    {
      goto LABEL_28;
    }

    for (i = 0; i != v14; ++i)
    {
      if ((v11 & 0xC000000000000001) != 0)
      {
        v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v16 = *(v11 + 8 * i + 32);
      }

      v17 = v0[19];
      v18 = v0[16];
      v19 = v0[14];
      sub_10000A748();
      sub_10005CAA8(v19 + v20, v18);
      LOBYTE(v19) = sub_1000E1170(v16, v19);
      sub_100008534();
      sub_10000D300();
      if (v19)
      {
        sub_10007D34C(&v29, v16);
      }
    }

LABEL_19:

    ++v5;

    v3 = v25;
    if (v5 == v27)
    {

      v1 = v0[11];
      goto LABEL_23;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_10013BC2C()
{
  sub_100001ED0();
  sub_100001EF4();
  v2 = v1;
  sub_100004B40();
  *v3 = v2;
  v5 = v4[24];
  v6 = v4[23];
  v7 = v4[14];
  v8 = *v0;
  sub_100002B9C();
  *v9 = v8;

  v10 = swift_task_alloc();
  *(v2 + 200) = v10;
  *v10 = v8;
  v10[1] = sub_10013BD80;
  v11 = *(v2 + 112);

  return sub_100036100();
}

uint64_t sub_10013BD80()
{
  sub_100002BAC();
  sub_100001EF4();
  v2 = *(v1 + 200);
  v3 = *(v1 + 112);
  v4 = *v0;
  sub_100002B9C();
  *v5 = v4;

  v6 = sub_100002C10();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_10013BE78()
{
  sub_100001ED0();
  v1 = v0[18];
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (sub_100002F80(v3))
  {
    sub_1000057F8();
    v4 = swift_slowAlloc();
    sub_10000A240(v4);
    sub_1000059D8(&_mh_execute_header, v5, v6, "Completed policy change");
    sub_100002BD0();
  }

  v8 = v0[16];
  v7 = v0[17];

  sub_100001F00();

  return v9();
}

uint64_t sub_10013BF2C(uint64_t *a1, uint64_t a2)
{
  v2[5] = a2;
  v4 = _s6PolicyVMa();
  v2[6] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v2[7] = swift_task_alloc();
  v6 = type metadata accessor for RequestCancellationReason();
  v2[8] = v6;
  v7 = *(v6 - 8);
  v2[9] = v7;
  v8 = *(v7 + 64) + 15;
  v2[10] = swift_task_alloc();
  v9 = sub_100065020(&qword_1001B8F48, &qword_10016FB30);
  v2[11] = v9;
  v10 = *(v9 - 8);
  v2[12] = v10;
  v11 = *(v10 + 64) + 15;
  v12 = swift_task_alloc();
  v13 = *a1;
  v2[13] = v12;
  v2[14] = v13;

  return _swift_task_switch(sub_10013C08C, 0, 0);
}

uint64_t sub_10013C08C()
{
  sub_100005F88();
  sub_1000033DC();
  if (qword_1001B8AB8 != -1)
  {
    sub_100005344();
    swift_once();
  }

  v1 = v0[14];
  v2 = type metadata accessor for Logger();
  sub_10000641C(v2, qword_1001BD750);
  sub_10000D0E8();

  v3 = Logger.logObject.getter();
  static os_log_type_t.default.getter();
  sub_1000089B8();
  if (sub_10000A384())
  {
    v5 = v0[13];
    v4 = v0[14];
    v6 = v0[11];
    v7 = v0[12];
    sub_10000A05C();
    swift_slowAlloc();
    sub_100003890();
    sub_10001D338();
    *v1 = 136315138;
    sub_10004AC80();
    sub_100005070();
    sub_1000082D4(v8, v9, v10);
    sub_1000156D8();
    v11 = sub_10000592C();
    v12(v11);
    v13 = sub_100004CB0();
    sub_100004A3C(v13, v14, v15);
    sub_100005974();

    *(v1 + 4) = v4;
    sub_100035348(&_mh_execute_header, v16, v17, "Cancelling request %s due to policy change");
    sub_100002068();
    sub_100002BD0();
  }

  v18 = v0[5];
  sub_10000A30C();
  sub_1000062BC();

  return _swift_task_switch(v19, v20, v21);
}

uint64_t sub_10013C1F0()
{
  sub_100001ED0();
  v1 = *(v0 + 56);
  v2 = *(v0 + 40);
  v3 = OBJC_IVAR____TtC13modelmanagerd14RequestManager_currentPolicy;
  sub_100004CBC();
  swift_beginAccess();
  sub_10000A748();
  sub_10005CAA8(v2 + v3, v1);
  v4 = sub_100003000();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_10013C27C()
{
  sub_10000639C();
  sub_100003884();
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  v4 = *(v0[7] + *(v0[6] + 28));

  sub_100008534();
  sub_10000D300();
  *v1 = v4;
  (*(v2 + 104))(v1, enum case for RequestCancellationReason.specificPolicyChange(_:), v3);
  v5 = swift_task_alloc();
  v6 = sub_10000D03C(v5);
  *v6 = v7;
  v6[1] = sub_10013C364;
  v8 = v0[10];
  v9 = v0[5];
  sub_1000031B8(v0[14]);
  sub_100003D20();

  return sub_10013C4DC();
}

uint64_t sub_10013C364()
{
  sub_10000639C();
  sub_100003884();
  sub_100001EF4();
  v2 = v1[15];
  v3 = v1[13];
  v4 = v1[10];
  v5 = v1[9];
  v6 = v1[8];
  v7 = v1[7];
  v8 = *v0;
  sub_100002B9C();
  *v9 = v8;

  v10 = *(v5 + 8);
  v11 = sub_1000060A4();
  v12(v11);

  sub_100001F00();
  sub_100003D20();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20);
}

uint64_t sub_10013C4DC()
{
  sub_100002BAC();
  v1[9] = v2;
  v1[10] = v0;
  v1[8] = v3;
  v4 = type metadata accessor for RequestKey();
  v1[11] = v4;
  sub_100002F44(v4);
  v1[12] = v5;
  v7 = *(v6 + 64);
  v1[13] = sub_100002C58();
  v8 = sub_100065020(&qword_1001B8F48, &qword_10016FB30);
  v1[14] = v8;
  sub_100002F44(v8);
  v1[15] = v9;
  v11 = *(v10 + 64);
  v1[16] = sub_100002C58();
  v12 = type metadata accessor for RequestCancellationReason();
  v1[17] = v12;
  sub_100002F44(v12);
  v1[18] = v13;
  v15 = *(v14 + 64);
  v1[19] = sub_10000F0C0();
  v1[20] = swift_task_alloc();
  v16 = sub_100002C10();

  return _swift_task_switch(v16, v17, v18);
}

uint64_t sub_10013C634(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, os_log_t log, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28)
{
  sub_100005B0C();
  a27 = v29;
  a28 = v30;
  sub_10001A5C4();
  a26 = v28;
  v31 = v28[8];
  v32 = OBJC_IVAR____TtC13modelmanagerd13DaemonRequest_unsafeManagerOwnedState;
  v28[21] = OBJC_IVAR____TtC13modelmanagerd13DaemonRequest_unsafeManagerOwnedState;
  v33 = v31 + v32;
  sub_1000125C0();
  swift_beginAccess();
  v34 = type metadata accessor for DaemonRequest.ManagerOwnedState(0);
  v28[22] = v34;
  if (*(v33 + *(v34 + 24)))
  {
    v36 = v28[18];
    v35 = v28[19];
    v37 = v28[17];
    v38 = v28[9];
    v39 = sub_10014B3F4();
    v40(v39);
    sub_10000D01C();
    LOBYTE(v38) = static RequestCancellationReason.== infix(_:_:)();
    v41 = sub_100003308();
    v42(v41);
    v43 = v28[8];
    if (v38)
    {
      v44 = v28[13];
      sub_100008110();
      sub_100045430();
      RequestMetadata.requestKey.getter();
      v45 = *(v36 + 112);
      sub_100004B94();
      v135 = v46 + *v46;
      v48 = *(v47 + 4);
      v49 = swift_task_alloc();
      v28[26] = v49;
      *v49 = v28;
      v49[1] = sub_10013D1C8;
      sub_10000A9C8(v28[13]);
      sub_1000135DC();

      return v53(v50, v51, v52, v53, v54, v55, v56, v57, a9, a10, a11, a12, a13, log, v36 + 112, v135, a17, a18, a19, a20);
    }

    else
    {
      v92 = v43 + v28[21];
      sub_100025ADC(v28[22]);
      if (v43)
      {
        v93 = async function pointer to Task.value.getter[1];

        v94 = swift_task_alloc();
        v28[28] = v94;
        sub_100065020(&qword_1001B8F60, &unk_100171260);
        sub_1000060CC();
        *v94 = v95;
        sub_100018A90();
        sub_100019260();
        sub_1000135DC();

        return Task.value.getter(v96, v97, v98, v99, v100, v101, v102, v103, a9, a10, a11, a12, a13, log, a15, a16);
      }

      else
      {
        sub_10014B074();

        sub_100001F00();
        sub_1000135DC();

        return v128(v127, v128, v129, v130, v131, v132, v133, v134, a9, a10, a11, a12, a13, log, a15, a16, a17, a18, a19, a20);
      }
    }
  }

  else
  {
    v59 = v34;
    if (qword_1001B8AB8 != -1)
    {
      sub_100005344();
      swift_once();
    }

    v60 = v28[20];
    v61 = v28[17];
    v62 = v28[18];
    v64 = v28[8];
    v63 = v28[9];
    v65 = type metadata accessor for Logger();
    v28[23] = sub_10000641C(v65, qword_1001BD750);
    v66 = *(v62 + 16);
    v67 = sub_100036724();
    v136 = v68;
    (v68)(v67);

    v69 = Logger.logObject.getter();
    v70 = static os_log_type_t.default.getter();

    v71 = os_log_type_enabled(v69, v70);
    v72 = v28[20];
    v73 = v28[17];
    v74 = v28[18];
    if (v71)
    {
      a11 = v28[17];
      log = v69;
      v76 = v28[15];
      v75 = v28[16];
      HIDWORD(a13) = v70;
      v77 = v28[14];
      v78 = v28[8];
      sub_100002F10();
      a10 = v72;
      v79 = swift_slowAlloc();
      sub_100011828();
      a12 = swift_slowAlloc();
      a17 = a12;
      *v79 = 136315394;
      RequestMetadata.id.getter();
      sub_100005070();
      sub_1000082D4(v80, v81, v82);
      dispatch thunk of CustomStringConvertible.description.getter();
      sub_10001351C();
      (*(v76 + 8))(v75, v77);
      v83 = sub_100005E98();
      sub_100004A3C(v83, v84, v85);
      sub_10000D0E8();

      *(v79 + 4) = v75;
      *(v79 + 12) = 2080;
      sub_10005FAF0(&qword_1001BDBB8, &type metadata accessor for RequestCancellationReason);
      v86 = dispatch thunk of CustomStringConvertible.description.getter();
      v88 = v87;
      v89 = *(v74 + 8);
      v90 = sub_100036724();
      v91(v90);
      sub_100004A3C(v86, v88, &a17);
      sub_10000D0E8();

      *(v79 + 14) = a10;
      _os_log_impl(&_mh_execute_header, log, BYTE4(a13), "Cancelling request %s due to %s", v79, 0x16u);
      swift_arrayDestroy();
      sub_100002BD0();

      sub_100007C2C();
    }

    else
    {

      v104 = *(v74 + 8);
      v105 = sub_100007B78();
      v106(v105);
    }

    v107 = v28[17];
    v108 = v28[13];
    v110 = v28[8];
    v109 = v28[9];
    sub_100002D24();
    swift_beginAccess();
    *(v33 + *(v59 + 24)) = 1;
    v111 = *(v59 + 28);
    sub_10000ED84(v33 + v111, &unk_1001BDBB0);
    v136(v33 + v111, v109, v107);
    sub_100009BFC(v33 + v111, 0, 1, v107);
    swift_endAccess();
    v112 = v110[8];
    sub_100003370(v110 + 4, v110[7]);
    v28[24] = OBJC_IVAR____TtC13modelmanagerd13DaemonRequest_metadata;
    RequestMetadata.requestKey.getter();
    v113 = *(v112 + 104);
    sub_100004B94();
    v137 = v114 + *v114;
    v116 = *(v115 + 4);
    v117 = swift_task_alloc();
    v28[25] = v117;
    *v117 = v28;
    v117[1] = sub_10013CCBC;
    v118 = v28[9];
    sub_1000031B8(v28[13]);
    sub_100036E68();
    sub_1000135DC();

    return v123(v119, v120, v121, v122, v123, v124, v125, v126, a9, a10, a11, a12, a13, log, v112 + 104, v137, a17, a18, a19, a20);
  }
}

uint64_t sub_10013CCBC()
{
  sub_100001ED0();
  sub_100001EF4();
  v2 = v1[25];
  v3 = v1[13];
  v4 = v1[12];
  v5 = v1[11];
  v6 = v1[10];
  v7 = *v0;
  sub_100002B9C();
  *v8 = v7;

  v9 = sub_100003308();
  v10(v9);
  v11 = sub_100026BB0();

  return _swift_task_switch(v11, v12, 0);
}

uint64_t sub_10013CE0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_10000385C();
  sub_100003284();
  if (*(v16[8] + v16[21] + *(v16[22] + 20)))
  {
    v17 = v16[23];
    v18 = v16[8];

    v19 = Logger.logObject.getter();
    static os_log_type_t.info.getter();
    sub_10014B230();
    if (sub_10001E6D8())
    {
      v20 = v16[24];
      v22 = v16[15];
      v21 = v16[16];
      v23 = v16[14];
      v24 = v16[8];
      sub_10000A05C();
      v25 = swift_slowAlloc();
      sub_1000033D0();
      a10 = swift_slowAlloc();
      a11 = a10;
      *v25 = 136315138;
      RequestMetadata.id.getter();
      sub_100005070();
      sub_1000082D4(v26, v27, v28);
      dispatch thunk of CustomStringConvertible.description.getter();
      v29 = *(v22 + 8);
      v30 = sub_10014B41C();
      v31(v30);
      v32 = sub_1000037BC();
      v35 = sub_100004A3C(v32, v33, v34);

      *(v25 + 4) = v35;
      sub_100018928();
      _os_log_impl(v36, v37, v38, v39, v40, 0xCu);
      sub_10014B518();
      sub_100002BD0();

      sub_100002BD0();
    }

    sub_100065020(&qword_1001B8F60, &unk_100171260);
    Task.cancel()();
  }

  v42 = v16[18];
  v41 = v16[19];
  v43 = v16[17];
  v44 = v16[9];
  v45 = sub_10014B3F4();
  v46(v45);
  sub_10000D01C();
  LOBYTE(v44) = static RequestCancellationReason.== infix(_:_:)();
  v47 = sub_100003308();
  v48(v47);
  v49 = v16[8];
  if (v44)
  {
    v50 = v16[13];
    sub_100008110();
    sub_100045430();
    RequestMetadata.requestKey.getter();
    v51 = *(v42 + 112);
    sub_100004B94();
    v85 = v52 + *v52;
    v54 = *(v53 + 4);
    v55 = swift_task_alloc();
    v16[26] = v55;
    *v55 = v16;
    v55[1] = sub_10013D1C8;
    sub_10000A9C8(v16[13]);
    sub_100003540();

    return v59(v56, v57, v58, v59, v60, v61, v62, v63, v42 + 112, v85, a11, a12, a13, a14);
  }

  else
  {
    v65 = v49 + v16[21];
    sub_100025ADC(v16[22]);
    if (v49)
    {
      v66 = async function pointer to Task.value.getter[1];

      v67 = swift_task_alloc();
      v16[28] = v67;
      sub_100065020(&qword_1001B8F60, &unk_100171260);
      sub_1000060CC();
      *v67 = v68;
      sub_100018A90();
      sub_100003540();

      return Task.value.getter(v69, v70, v71, v72, v73, v74, v75, v76, a9, a10, a11, a12, a13, a14, a15, a16);
    }

    else
    {
      sub_10014B074();

      sub_100001F00();
      sub_100003540();

      return v78(v77, v78, v79, v80, v81, v82, v83, v84, a9, a10, a11, a12, a13, a14);
    }
  }
}