uint64_t sub_1003365B8(char *__dst, char *__src, char *a3, char *a4)
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
      if (*(*v6 + 64) < *(*v4 + 64))
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
      if (*(v21 + 64) < *(*v17 + 64))
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

void *sub_1003367BC(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v3 = _CocoaArrayWrapper.endIndex.getter();
  if (!v3)
  {
LABEL_7:

    return _swiftEmptyArrayStorage;
  }

  v4 = v3;
  v5 = sub_10036777C(v3, 0);
  sub_100336850((v5 + 4), v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_100336850(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_100336A18();
          for (i = 0; i != v6; ++i)
          {
            sub_10005DC58(&qword_100596C70, &qword_1004B1158);
            v9 = sub_100335C7C(v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for MulticastPeer(0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

BOOL sub_1003369D0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 56);
  v3 = *(a2 + 56);
  if (v2 == v3)
  {
    return *(a1 + 64) < *(a2 + 64);
  }

  else
  {
    return v2 < v3;
  }
}

unint64_t sub_100336A18()
{
  result = qword_100596C78;
  if (!qword_100596C78)
  {
    sub_10005DD04(&qword_100596C70, &qword_1004B1158);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100596C78);
  }

  return result;
}

uint64_t sub_100336A7C()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  return sub_1003346C0(*(v0 + 16));
}

void sub_100336A90(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  if (v3 <= 0x3F)
  {
    v16 = *(v2 - 8) + 64;
    v4 = type metadata accessor for DispatchTime();
    if (v5 <= 0x3F)
    {
      v17 = *(v4 - 8) + 64;
      v6 = *(a1 + 80);
      v7 = *(*(a1 + 88) + 8);
      swift_getAssociatedTypeWitness();
      swift_getAssociatedConformanceWitness();
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      if (v9 <= 0x3F)
      {
        v18 = *(AssociatedTypeWitness - 8) + 64;
        sub_10033DF30();
        if (v11 <= 0x3F)
        {
          v19 = *(v10 - 8) + 64;
          sub_100353CE0(319, &qword_100596D98, type metadata accessor for PriorityRadioConstraint);
          if (v13 <= 0x3F)
          {
            v20 = *(v12 - 8) + 64;
            sub_10033DF94();
            if (v15 <= 0x3F)
            {
              v21 = *(v14 - 8) + 64;
              swift_initClassMetadata2();
            }
          }
        }
      }
    }
  }
}

void *sub_100336D5C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100367868(0, v1, 0);
    v3 = (a1 + 32);
    do
    {
      v5 = *v3++;
      v4 = v5;
      v6 = static NANPMK.zero.getter();
      v8 = v7;
      sub_100017554(0, 0xF000000000000000);
      sub_10000AB0C(v6, v8);
      sub_10005D67C(0, 0xF000000000000000);
      sub_1000124C8(v6, v8);
      sub_100017554(0, 0xF000000000000000);

      v10 = _swiftEmptyArrayStorage[2];
      v9 = _swiftEmptyArrayStorage[3];
      if (v10 >= v9 >> 1)
      {
        sub_100367868((v9 > 1), v10 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v10 + 1;
      v11 = &_swiftEmptyArrayStorage[7 * v10];
      *(v11 + 32) = v4;
      v11[5] = v6;
      v11[6] = v8;
      *(v11 + 7) = xmmword_100483C50;
      v11[9] = 0;
      v11[10] = 0;
      --v1;
    }

    while (v1);
  }

  return _swiftEmptyArrayStorage;
}

void *sub_100336EA0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  result = sub_100367888(0, v1, 0);
  for (i = (a1 + 40); ; i += 2)
  {
    v6 = *(i - 1);
    v5 = *i;
    v7 = HIBYTE(*i) & 0xF;
    if ((*i & 0x2000000000000000) == 0)
    {
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    if (!v7)
    {
      break;
    }

    v9 = _swiftEmptyArrayStorage[2];
    v8 = _swiftEmptyArrayStorage[3];

    if (v9 >= v8 >> 1)
    {
      result = sub_100367888((v8 > 1), v9 + 1, 1);
    }

    _swiftEmptyArrayStorage[2] = v9 + 1;
    v10 = &_swiftEmptyArrayStorage[2 * v9];
    v10[4] = v6;
    v10[5] = v5;
    if (!--v1)
    {
      return _swiftEmptyArrayStorage;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100336F90(void (*a1)(uint64_t *__return_ptr, void *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  v6 = _swiftEmptyArrayStorage;
  if (!v5)
  {
    return v6;
  }

  v27 = _swiftEmptyArrayStorage;
  sub_100367868(0, v5, 0);
  v6 = _swiftEmptyArrayStorage;
  for (i = (a3 + 40); ; i += 2)
  {
    v10 = *i;
    v22[0] = *(i - 1);
    v22[1] = v10;

    a1(&v23, v22);
    if (v4)
    {
      break;
    }

    v4 = 0;

    v11 = v23;
    v12 = v24;
    v13 = v25;
    v14 = v26;
    v27 = v6;
    v16 = v6[2];
    v15 = v6[3];
    if (v16 >= v15 >> 1)
    {
      v20 = v25;
      v21 = v24;
      v19 = v26;
      sub_100367868((v15 > 1), v16 + 1, 1);
      v14 = v19;
      v13 = v20;
      v12 = v21;
      v6 = v27;
    }

    v6[2] = v16 + 1;
    v17 = &v6[7 * v16];
    *(v17 + 32) = v11;
    *(v17 + 5) = v12;
    *(v17 + 7) = v13;
    *(v17 + 9) = v14;
    if (!--v5)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

void sub_1003370E4(uint64_t a1)
{
  v1 = a1;
  v32 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = __CocoaSet.count.getter();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  if (v2)
  {
    v38 = _swiftEmptyArrayStorage;
    sub_100367828(0, v2 & ~(v2 >> 63), 0);
    v33 = _swiftEmptyArrayStorage;
    if (v32)
    {
      v3 = __CocoaSet.startIndex.getter();
    }

    else
    {
      v5 = -1 << *(v1 + 32);
      v3 = _HashTable.startBucket.getter();
      v4 = *(v1 + 36);
    }

    v35 = v3;
    v36 = v4;
    v37 = v32 != 0;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v6 = 0;
      v30 = v1 + 56;
      v29 = v1 + 64;
      v31 = v2;
      while (v6 < v2)
      {
        if (__OFADD__(v6++, 1))
        {
          goto LABEL_35;
        }

        v10 = v35;
        v9 = v36;
        v11 = v37;
        v12 = v1;
        sub_10036A344(v35, v36, v37, v1);
        v14 = v13;
        v15 = [v13 unsignedLongLongValue];

        v16 = v33;
        v38 = v33;
        v18 = v33[2];
        v17 = v33[3];
        if (v18 >= v17 >> 1)
        {
          sub_100367828((v17 > 1), v18 + 1, 1);
          v16 = v38;
        }

        v16[2] = v18 + 1;
        v16[v18 + 4] = v15;
        v33 = v16;
        if (v32)
        {
          if (!v11)
          {
            goto LABEL_40;
          }

          v1 = v12;
          if (__CocoaSet.Index.handleBitPattern.getter())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v2 = v31;
          sub_10005DC58(&qword_100599480, &qword_1004B17D0);
          v7 = Set.Index._asCocoa.modify();
          __CocoaSet.formIndex(after:isUnique:)();
          v7(v34, 0);
          if (v6 == v31)
          {
LABEL_32:
            sub_10002BEB8(v35, v36, v37);
            return;
          }
        }

        else
        {
          if (v11)
          {
            goto LABEL_41;
          }

          if ((v10 & 0x8000000000000000) != 0)
          {
            goto LABEL_36;
          }

          v1 = v12;
          v19 = 1 << *(v12 + 32);
          if (v10 >= v19)
          {
            goto LABEL_36;
          }

          v20 = v10 >> 6;
          v21 = *(v30 + 8 * (v10 >> 6));
          if (((v21 >> v10) & 1) == 0)
          {
            goto LABEL_37;
          }

          if (*(v12 + 36) != v9)
          {
            goto LABEL_38;
          }

          v22 = v21 & (-2 << (v10 & 0x3F));
          if (v22)
          {
            v19 = __clz(__rbit64(v22)) | v10 & 0x7FFFFFFFFFFFFFC0;
            v2 = v31;
          }

          else
          {
            v23 = v20 << 6;
            v24 = v20 + 1;
            v25 = (v29 + 8 * v20);
            v2 = v31;
            while (v24 < (v19 + 63) >> 6)
            {
              v27 = *v25++;
              v26 = v27;
              v23 += 64;
              ++v24;
              if (v27)
              {
                sub_10002BEB8(v10, v9, 0);
                v19 = __clz(__rbit64(v26)) + v23;
                goto LABEL_31;
              }
            }

            sub_10002BEB8(v10, v9, 0);
          }

LABEL_31:
          v28 = *(v1 + 36);
          v35 = v19;
          v36 = v28;
          v37 = 0;
          if (v6 == v2)
          {
            goto LABEL_32;
          }
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
  }
}

uint64_t sub_1003374A0(uint64_t *a1, void (*a2)(uint64_t, void, void))
{
  v4 = *v2;
  v5 = *a1;
  swift_beginAccess();
  v6 = *(v2 + v5);
  a2(255, *(v4 + 80), *(v4 + 88));

  swift_getWitnessTable();
  type metadata accessor for NANDiscoveryEngine.ServiceSession();
  v7 = Dictionary.count.getter();

  return v7;
}

uint64_t sub_100337594()
{
  v1 = *v0;
  v2 = qword_100596C90;
  swift_beginAccess();
  v3 = *(v0 + v2);
  v4 = *(v1 + 80);
  v5 = *(v1 + 88);
  _s17InitiatorInstanceCMa();

  swift_getWitnessTable();
  type metadata accessor for NANDiscoveryEngine.ServiceSession();
  sub_10020CB70();
  v6 = Dictionary.count.getter();

  return v6;
}

void *sub_100337688(uint64_t a1)
{
  v3 = *v1;
  v4 = qword_100596CA0;
  swift_beginAccess();
  v5 = *(v1 + v4);
  v6 = *(v3 + 80);
  v7 = *(v3 + 88);
  type metadata accessor for NANDiscoveryEngine.UnownedDeviceLink();
  sub_1002CAFC4();
  Dictionary.subscript.getter();
  v8 = v13;
  swift_endAccess();
  if (v13)
  {
    v9 = swift_unownedRetainStrong();
    sub_10036C960(v9);
  }

  else
  {
    type metadata accessor for NANDeviceLink();
    v10 = *(v1 + *(*v1 + 304));
    v11 = swift_unownedRetainStrong();
    v8 = sub_10037456C(v11, a1 & 0xFFFFFFFFFFFFLL);

    swift_unownedRetain();
    swift_beginAccess();
    type metadata accessor for Dictionary();
    Dictionary.subscript.setter();
    swift_endAccess();
  }

  return v8;
}

uint64_t sub_10033787C()
{
  v1 = *v0;
  v2 = qword_10059B9C8;
  swift_beginAccess();
  v3 = *(v0 + v2);
  v4 = *(v1 + 80);
  v5 = *(v1 + 88);
  _s17InitiatorInstanceCMa_0();
  _s17ResponderInstanceCMa_0();
  type metadata accessor for Either();
  sub_1002CAFC4();
  Dictionary.subscript.getter();
  if (v9 == 255)
  {
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    if (v9)
    {
      v6 = *(v8 + qword_10059BC60);
      sub_1002CB018(v8, v9);
      return v6;
    }

    sub_1002CB018(v8, v9);
  }

  return 0;
}

void sub_1003379B8(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = qword_10059B9C8;
  swift_beginAccess();
  v6 = *(v2 + v5);
  v7 = *(v4 + 80);
  v8 = *(v4 + 88);
  _s17InitiatorInstanceCMa_0();
  _s17ResponderInstanceCMa_0();
  type metadata accessor for Either();
  sub_1002CAFC4();
  Dictionary.subscript.getter();
  swift_endAccess();
  if (v24 == 255)
  {
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v25[0] = v18;
      *v17 = 136315138;
      v19 = WiFiAddress.description.getter(a1 & 0xFFFFFFFFFFFFLL);
      v21 = sub_100002320(v19, v20, v25);

      *(v17 + 4) = v21;
      _os_log_impl(&_mh_execute_header, v15, v16, "Unable to find pairing session for %s", v17, 0xCu);
      sub_100002A00(v18);
    }
  }

  else
  {
    sub_1002CB018(v23, v24);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v25[0] = v22;
      *v11 = 136315138;
      v12 = WiFiAddress.description.getter(a1 & 0xFFFFFFFFFFFFLL);
      v14 = sub_100002320(v12, v13, v25);

      *(v11 + 4) = v14;
      _os_log_impl(&_mh_execute_header, v9, v10, "Removing pairing session for %s", v11, 0xCu);
      sub_100002A00(v22);
    }

    swift_beginAccess();
    type metadata accessor for Dictionary();
    Dictionary.removeValue(forKey:)();
    swift_endAccess();
    sub_1002CB018(v23, v24);
  }
}

uint64_t sub_100337D4C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(*(sub_10005DC58(&unk_100596870, &unk_1004B0F60) - 8) + 64);
  __chkstk_darwin();
  v8 = &v24 - v7;
  v9 = type metadata accessor for NANInternetSharingStatistics.Requester();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin();
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9) == 1)
  {
    sub_100016290(a1, &unk_100596870, &unk_1004B0F60);
    v14 = *v2;
    v15 = sub_10007CD94(a2 & 0xFFFFFFFFFFFFFFLL);
    if (v16)
    {
      v17 = v15;
      v18 = *v3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v20 = *v3;
      v25 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_10046AA20();
        v20 = v25;
      }

      sub_10036D640(*(v20 + 56) + *(v10 + 72) * v17, v8, type metadata accessor for NANInternetSharingStatistics.Requester);
      sub_1004685B4(v17, v20);
      *v3 = v20;
      (*(v10 + 56))(v8, 0, 1, v9);
    }

    else
    {
      (*(v10 + 56))(v8, 1, 1, v9);
    }

    return sub_100016290(v8, &unk_100596870, &unk_1004B0F60);
  }

  else
  {
    sub_10036D640(a1, v13, type metadata accessor for NANInternetSharingStatistics.Requester);
    v21 = *v2;
    v22 = swift_isUniquelyReferenced_nonNull_native();
    v25 = *v2;
    result = sub_1003E16CC(v13, a2 & 0xFFFFFFFFFFFFFFLL, v22);
    *v2 = v25;
  }

  return result;
}

uint64_t sub_100337FA0(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = *(*(sub_10005DC58(&unk_100595C00, &qword_10048F790) - 8) + 64);
  __chkstk_darwin();
  v8 = &v24 - v7;
  v9 = type metadata accessor for NANAttribute(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin();
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9) == 1)
  {
    sub_100016290(a1, &unk_100595C00, &qword_10048F790);
    v14 = *v3;
    v15 = sub_1003E08F4(a2);
    if (v16)
    {
      v17 = v15;
      v18 = *v3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v20 = *v3;
      v25 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_10046BF70();
        v20 = v25;
      }

      sub_10036D640(*(v20 + 56) + *(v10 + 72) * v17, v8, type metadata accessor for NANAttribute);
      sub_100468A9C(v17, v20);
      *v3 = v20;
      (*(v10 + 56))(v8, 0, 1, v9);
    }

    else
    {
      (*(v10 + 56))(v8, 1, 1, v9);
    }

    return sub_100016290(v8, &unk_100595C00, &qword_10048F790);
  }

  else
  {
    sub_10036D640(a1, v13, type metadata accessor for NANAttribute);
    v21 = *v3;
    v22 = swift_isUniquelyReferenced_nonNull_native();
    v25 = *v3;
    result = sub_1003E1F6C(v13, a2, v22);
    *v3 = v25;
  }

  return result;
}

uint64_t sub_1003381F4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(*(sub_10005DC58(&qword_100597420, &qword_1004B16B8) - 8) + 64);
  __chkstk_darwin();
  v8 = &v24 - v7;
  v9 = type metadata accessor for NANPeer(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin();
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9) == 1)
  {
    sub_100016290(a1, &qword_100597420, &qword_1004B16B8);
    v14 = *v2;
    v15 = sub_100041DE8(a2 & 0xFFFFFFFFFFFFLL);
    if (v16)
    {
      v17 = v15;
      v18 = *v3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v20 = *v3;
      v25 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_10046C304();
        v20 = v25;
      }

      sub_10036D640(*(v20 + 56) + *(v10 + 72) * v17, v8, type metadata accessor for NANPeer);
      sub_100468C74(v17, v20);
      *v3 = v20;
      (*(v10 + 56))(v8, 0, 1, v9);
    }

    else
    {
      (*(v10 + 56))(v8, 1, 1, v9);
    }

    return sub_100016290(v8, &qword_100597420, &qword_1004B16B8);
  }

  else
  {
    sub_10036D640(a1, v13, type metadata accessor for NANPeer);
    v21 = *v2;
    v22 = swift_isUniquelyReferenced_nonNull_native();
    v25 = *v2;
    result = sub_1003E20C0(v13, a2 & 0xFFFFFFFFFFFFLL, v22);
    *v2 = v25;
  }

  return result;
}

uint64_t sub_100338448(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(*(sub_10005DC58(&unk_100597460, &qword_1004AFD18) - 8) + 64);
  __chkstk_darwin();
  v8 = &v24 - v7;
  v9 = type metadata accessor for NANPeer.Service.AuthenticationStatus(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin();
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9) == 1)
  {
    sub_100016290(a1, &unk_100597460, &qword_1004AFD18);
    v14 = *v2;
    v15 = sub_10007CD94(a2 & 0xFFFFFFFFFFFFFFLL);
    if (v16)
    {
      v17 = v15;
      v18 = *v3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v20 = *v3;
      v25 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_10046C560();
        v20 = v25;
      }

      sub_10036D640(*(v20 + 56) + *(v10 + 72) * v17, v8, type metadata accessor for NANPeer.Service.AuthenticationStatus);
      sub_100468C8C(v17, v20);
      *v3 = v20;
      (*(v10 + 56))(v8, 0, 1, v9);
    }

    else
    {
      (*(v10 + 56))(v8, 1, 1, v9);
    }

    return sub_100016290(v8, &unk_100597460, &qword_1004AFD18);
  }

  else
  {
    sub_10036D640(a1, v13, type metadata accessor for NANPeer.Service.AuthenticationStatus);
    v21 = *v2;
    v22 = swift_isUniquelyReferenced_nonNull_native();
    v25 = *v2;
    result = sub_1003E2264(v13, a2 & 0xFFFFFFFFFFFFFFLL, v22);
    *v2 = v25;
  }

  return result;
}

uint64_t sub_10033869C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(*(sub_10005DC58(qword_100597590, &qword_1004B1878) - 8) + 64);
  __chkstk_darwin();
  v8 = &v24 - v7;
  v9 = type metadata accessor for BrowseEndpoints(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin();
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9) == 1)
  {
    sub_100016290(a1, qword_100597590, &qword_1004B1878);
    v14 = *v3;
    v15 = sub_100085268(a2);
    if (v16)
    {
      v17 = v15;
      v18 = *v3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v20 = *v3;
      v25 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_10046DB78();
        v20 = v25;
      }

      sub_10036D640(*(v20 + 56) + *(v10 + 72) * v17, v8, type metadata accessor for BrowseEndpoints);
      sub_100469BC8(v17, v20);
      *v3 = v20;
      (*(v10 + 56))(v8, 0, 1, v9);
    }

    else
    {
      (*(v10 + 56))(v8, 1, 1, v9);
    }

    return sub_100016290(v8, qword_100597590, &qword_1004B1878);
  }

  else
  {
    sub_10036D640(a1, v13, type metadata accessor for BrowseEndpoints);
    v21 = *v3;
    v22 = swift_isUniquelyReferenced_nonNull_native();
    v25 = *v3;
    result = sub_1003E24E8(v13, a2, v22);
    *v3 = v25;
  }

  return result;
}

uint64_t sub_1003388F0(uint64_t a1, uint64_t a2)
{
  v5 = *(*(sub_10005DC58(&qword_100597588, &qword_1004B1870) - 8) + 64);
  __chkstk_darwin();
  v7 = &v17 - v6;
  v8 = *(*(type metadata accessor for ListenInBoundConnection(0) - 8) + 64);
  __chkstk_darwin();
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1) == 1)
  {
    sub_100016290(a1, &qword_100597588, &qword_1004B1870);
    sub_100420B28(a2, v7);
    v12 = type metadata accessor for UUID();
    (*(*(v12 - 8) + 8))(a2, v12);
    return sub_100016290(v7, &qword_100597588, &qword_1004B1870);
  }

  else
  {
    sub_10036D640(a1, v10, type metadata accessor for ListenInBoundConnection);
    v14 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v2;
    sub_1003E293C(v10, a2, isUniquelyReferenced_nonNull_native);
    v16 = type metadata accessor for UUID();
    result = (*(*(v16 - 8) + 8))(a2, v16);
    *v2 = v18;
  }

  return result;
}

uint64_t sub_100338B10(uint64_t a1, uint64_t a2)
{
  v5 = *(*(sub_10005DC58(&qword_100597580, &qword_1004B1868) - 8) + 64);
  __chkstk_darwin();
  v7 = &v17 - v6;
  v8 = *(*(type metadata accessor for ConnectedEndpoints(0) - 8) + 64);
  __chkstk_darwin();
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1) == 1)
  {
    sub_100016290(a1, &qword_100597580, &qword_1004B1868);
    sub_100420D90(a2, v7);
    v12 = type metadata accessor for UUID();
    (*(*(v12 - 8) + 8))(a2, v12);
    return sub_100016290(v7, &qword_100597580, &qword_1004B1868);
  }

  else
  {
    sub_10036D640(a1, v10, type metadata accessor for ConnectedEndpoints);
    v14 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v2;
    sub_1003E2B10(v10, a2, isUniquelyReferenced_nonNull_native);
    v16 = type metadata accessor for UUID();
    result = (*(*(v16 - 8) + 8))(a2, v16);
    *v2 = v18;
  }

  return result;
}

uint64_t sub_100338D30(uint64_t a1, uint64_t a2)
{
  v5 = *(*(sub_10005DC58(&qword_100597578, &qword_1004B1860) - 8) + 64);
  __chkstk_darwin();
  v7 = &v17 - v6;
  v8 = *(*(type metadata accessor for ConnectedSession(0) - 8) + 64);
  __chkstk_darwin();
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1) == 1)
  {
    sub_100016290(a1, &qword_100597578, &qword_1004B1860);
    sub_100420B7C(a2, v7);
    v12 = type metadata accessor for UUID();
    (*(*(v12 - 8) + 8))(a2, v12);
    return sub_100016290(v7, &qword_100597578, &qword_1004B1860);
  }

  else
  {
    sub_10036D640(a1, v10, type metadata accessor for ConnectedSession);
    v14 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v2;
    sub_1003E2CE4(v10, a2, isUniquelyReferenced_nonNull_native);
    v16 = type metadata accessor for UUID();
    result = (*(*(v16 - 8) + 8))(a2, v16);
    *v2 = v18;
  }

  return result;
}

uint64_t sub_100339090(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t), uint64_t (*a4)(uint64_t, uint64_t), void (*a5)(void))
{
  v6 = v5;
  if (a1)
  {
    v10 = *v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v5;
    result = a3(a1, a2, isUniquelyReferenced_nonNull_native);
    *v5 = v22;
  }

  else
  {
    v15 = *v5;
    result = sub_100085268(a2);
    if (v16)
    {
      v17 = result;
      v18 = *v6;
      v19 = swift_isUniquelyReferenced_nonNull_native();
      v20 = *v6;
      v23 = *v6;
      if (!v19)
      {
        a5();
        v20 = v23;
      }

      v21 = *(*(v20 + 56) + 8 * v17);

      result = a4(v17, v20);
      *v6 = v20;
    }
  }

  return result;
}

uint64_t sub_100339170(uint64_t a1)
{
  v5 = *(*v1 + 80);
  KeyPath = swift_getKeyPath();
  sub_100355F78(a1, KeyPath, 0);
}

__n128 sub_1003391F8(uint64_t a1)
{
  v3 = *v1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1003A7184(0, *(v3 + 2) + 1, 1, v3);
  }

  v5 = *(v3 + 2);
  v4 = *(v3 + 3);
  if (v5 >= v4 >> 1)
  {
    v3 = sub_1003A7184((v4 > 1), v5 + 1, 1, v3);
  }

  *(v3 + 2) = v5 + 1;
  v6 = &v3[56 * v5];
  result = *a1;
  v8 = *(a1 + 16);
  v9 = *(a1 + 32);
  *(v6 + 10) = *(a1 + 48);
  *(v6 + 3) = v8;
  *(v6 + 4) = v9;
  *(v6 + 2) = result;
  *v1 = v3;
  return result;
}

uint64_t sub_1003392B0@<X0>(void (*a1)(char *, char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v29 = a5;
  v30 = a2;
  v32 = a4;
  v31 = a1;
  v28 = *(a3 - 8);
  v10 = *(v28 + 64);
  v11 = __chkstk_darwin(a1);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 16);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v11);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v18);
  v24 = &v28 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v25 + 16))(v24, v6);
  v26 = 1;
  if ((*(v16 + 48))(v24, 1, v15) != 1)
  {
    (*(v16 + 32))(v20, v24, v15);
    v31(v20, v13);
    (*(v16 + 8))(v20, v15);
    if (v7)
    {
      return (*(v28 + 32))(v29, v13, a3);
    }

    v26 = 0;
  }

  return (*(*(v32 - 8) + 56))(a6, v26, 1);
}

uint64_t sub_100339558(uint64_t result, int a2)
{
  v3 = v2;
  v4 = *(result + 16);
  if (!v4)
  {
    return _swiftEmptyArrayStorage;
  }

  v6 = 0;
  v7 = result + 40;
  v8 = _swiftEmptyArrayStorage;
  v27 = result + 40;
  do
  {
    v9 = (v7 + 16 * v6);
    for (i = v6; ; ++i)
    {
      if (i >= v4)
      {
        __break(1u);
LABEL_19:
        __break(1u);
        return result;
      }

      v6 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_19;
      }

      v11 = *(v9 - 1);
      v12 = *v9;
      sub_10000AB0C(v11, *v9);
      sub_10000AB0C(v11, v12);
      v13 = NANPMK.init(pmk:)(v11, v12);
      if (v14 >> 60 != 15)
      {
        break;
      }

      result = sub_1000124C8(v11, v12);
      v9 += 2;
      if (v6 == v4)
      {
        return v8;
      }
    }

    v26 = a2;
    v15 = v3;
    v16 = v13;
    v17 = v14;
    sub_100017554(0, 0xF000000000000000);
    sub_10000AB0C(v16, v17);
    sub_10005D67C(0, 0xF000000000000000);
    v18 = v16;
    v19 = v16;
    v20 = v17;
    sub_1000124C8(v19, v17);
    sub_100017554(0, 0xF000000000000000);

    sub_1000124C8(v11, v12);
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1003A7184(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v22 = *(v8 + 2);
    v21 = *(v8 + 3);
    v3 = v15;
    if (v22 >= v21 >> 1)
    {
      result = sub_1003A7184((v21 > 1), v22 + 1, 1, v8);
      v24 = v20;
      v8 = result;
      v23 = v18;
    }

    else
    {
      v23 = v18;
      v24 = v20;
    }

    a2 = v26;
    v7 = v27;
    *(v8 + 2) = v22 + 1;
    v25 = &v8[56 * v22];
    v25[32] = v26;
    *(v25 + 5) = v23;
    *(v25 + 6) = v24;
    *(v25 + 56) = xmmword_100483C50;
    *(v25 + 9) = 0;
    *(v25 + 10) = 0;
  }

  while (v6 != v4);
  return v8;
}

void sub_10033975C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v6 = v5;
  v30 = a4;
  v31 = a5;
  v29 = a3;
  v9 = *v6;
  v10 = *(*(*v6 + 88) + 8);
  v11 = *(*v6 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(AssociatedTypeWitness - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin();
  v16 = &v29 - v15;
  v17 = *(v6 + *(v9 + 304));
  swift_unownedRetainStrong();
  v18 = *(*v17 + 96);
  swift_beginAccess();
  v19 = v17 + v18;
  v20 = a1;
  (*(v13 + 16))(v16, v19, AssociatedTypeWitness);

  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 240))(a1, a2 & 0xFFFFFFFFFFFFLL, AssociatedTypeWitness, AssociatedConformanceWitness);
  (*(v13 + 8))(v16, AssociatedTypeWitness);
  v22 = v31;

  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v32[0] = swift_slowAlloc();
    *v25 = 136315650;
    v26 = WiFiAddress.description.getter(v29 & 0xFFFFFFFFFFFFLL);
    v28 = sub_100002320(v26, v27, v32);

    *(v25 + 4) = v28;
    *(v25 + 12) = 256;
    *(v25 + 14) = v20;
    *(v25 + 15) = 2080;
    *(v25 + 17) = sub_100002320(v30, v22, v32);
    _os_log_impl(&_mh_execute_header, v23, v24, "Terminated datapath request from %s[%hhu] because %s", v25, 0x19u);
    swift_arrayDestroy();
  }
}

char *sub_100339C20(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = *(*v4 + 80);
  v12 = *(*v4 + 88);
  v13 = _s17ResponderInstanceCMa();
  v14 = *(v5 + *(v10 + 304));
  swift_unownedRetainStrong();
  sub_1002CB130(a1, v19);

  v15 = sub_1002CAE30(v14, v19, a2, a3, a4, 0);

  swift_unknownObjectWeakAssign();
  LOBYTE(a3) = *a1;
  LOWORD(a2) = *(a1 + 12);
  v16 = v15;
  WitnessTable = swift_getWitnessTable();
  LODWORD(a1) = *(a1 + 8);
  sub_10036B958(v16, 0);
  swift_beginAccess();
  v19[0] = v11;
  v19[1] = v13;
  v19[2] = v12;
  v19[3] = WitnessTable;
  type metadata accessor for NANDiscoveryEngine.ServiceSession();
  sub_10020CB70();
  type metadata accessor for Dictionary();
  Dictionary.subscript.setter();
  swift_endAccess();
  sub_10033B1B0();
  return v16;
}

uint64_t sub_100339E54()
{
  v1 = v0;
  v2 = *v0;
  v3 = *(*v0 + 88);
  v4 = *(v3 + 8);
  v5 = *(v2 + 80);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v37 = *(AssociatedTypeWitness - 8);
  v38 = AssociatedTypeWitness;
  v8 = *(v37 + 64);
  __chkstk_darwin();
  v10 = &v37 - v9;
  v11 = swift_checkMetadataState();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin();
  v15 = &v37 - v14;
  v16 = qword_100596C90;
  swift_beginAccess();
  v17 = *(v1 + v16);
  v18 = _s17InitiatorInstanceCMa();

  WitnessTable = swift_getWitnessTable();
  LOBYTE(v18) = sub_10034A334(v17, v5, v18, v3, WitnessTable);

  if (v18)
  {
    v21 = v1 + *(*v1 + 312);
    if (*v21)
    {
      return result;
    }

    v22 = 1;
  }

  else
  {
    v23 = qword_100596C98;
    swift_beginAccess();
    v24 = *(v1 + v23);
    v25 = _s17ResponderInstanceCMa();

    v26 = swift_getWitnessTable();
    v22 = sub_10034A334(v24, v5, v25, v3, v26);

    v21 = v1 + *(*v1 + 312);
    if ((v22 & 1) == *v21)
    {
      return result;
    }
  }

  v27 = v22 & 1;
  *v21 = v22 & 1;
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 67109120;
    *(v30 + 4) = v27;
    _os_log_impl(&_mh_execute_header, v28, v29, "NAN realtime mode has changed to %{BOOL}d", v30, 8u);
  }

  v31 = *(v1 + *(*v1 + 304));
  swift_unownedRetainStrong();
  v32 = *(v31 + *(*v31 + 504));

  [v32 setNANRealTimeEnabled:v27];

  swift_unownedRetainStrong();
  v33 = *(v31 + *(*v31 + 800));
  swift_unownedRetainStrong();

  v34 = sub_10047575C(&off_100572F08);
  sub_1003EED68(v27, v34);

  swift_unownedRetainStrong();
  (*(v12 + 16))(v15, v31 + *(*v31 + 112), v11);

  (*(AssociatedConformanceWitness + 152))(v11, AssociatedConformanceWitness);
  (*(v12 + 8))(v15, v11);
  v35 = v38;
  v36 = swift_getAssociatedConformanceWitness();
  (*(v36 + 8))(v27, v35, v36);
  return (*(v37 + 8))(v10, v35);
}

void *sub_10033A38C(uint64_t a1, char a2, char a3, uint64_t a4)
{
  LOWORD(v27) = a1;
  BYTE2(v27) = BYTE2(a1);
  BYTE3(v27) = BYTE3(a1);
  BYTE4(v27) = BYTE4(a1);
  BYTE5(v27) = BYTE5(a1);
  v6 = *v4;
  v7 = qword_10059B9C8;
  swift_beginAccess();
  v8 = *(v4 + v7);
  v9 = *(v6 + 80);
  v10 = *(v6 + 88);
  _s17InitiatorInstanceCMa_0();
  _s17ResponderInstanceCMa_0();
  type metadata accessor for Either();
  sub_1002CAFC4();
  Dictionary.subscript.getter();
  if (v30 == 255)
  {
    swift_endAccess();
    v12 = qword_100596C88;
    swift_beginAccess();
    v13 = *(v4 + v12);
    v26[0] = v9;
    v26[1] = _s8InstanceCMa_0();
    v26[2] = v10;
    v26[3] = swift_getWitnessTable();
    type metadata accessor for NANDiscoveryEngine.ServiceSession();
    Dictionary.subscript.getter();
    v14 = v27;
    if (v27)
    {
      v15 = v27;
      swift_endAccess();
      sub_100058BA4(v27);
      v16 = &v15[qword_10059B890];
      swift_beginAccess();
      v18 = *(v16 + 1);
      v17 = *(v16 + 2);

      v14 = NANServiceName.description.getter(v18, v17);
      v20 = v19;
    }

    else
    {
      swift_endAccess();
      v20 = 0xE000000000000000;
    }

    v21 = *(v4 + *(*v4 + 304));
    swift_unownedRetainStrong();
    sub_100012400(a4, v26, &qword_1005968A0, &unk_100499050);
    v11 = sub_1004405F4(v21, a1 & 0xFFFFFFFFFFFFLL, a2, v14, v20, a3, a4, 1, 0, 0);

    v27 = v11;
    LOBYTE(v28) = 1;
    swift_beginAccess();
    type metadata accessor for Dictionary();
    swift_retain_n();
    Dictionary.subscript.setter();
    swift_endAccess();
  }

  else
  {
    v11 = v29;
    swift_endAccess();
  }

  return v11;
}

uint64_t sub_10033A730(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    for (j = 0; ; ++j)
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (j >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v6 = *(a2 + 8 * j + 32);
      }

      v7 = v6;
      v8 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v9 = NANAttribute.PairingBootstrapping.Method.init(apiValue:advertise:)([v6 integerValue], 0, 1);

      if ((v9 & 0x10000) != 0)
      {
        v10 = 0;
      }

      else
      {
        v10 = v9;
      }

      a1 = v10 | a1;
      if (v8 == i)
      {
        return a1;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  return a1;
}

void sub_10033A838(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *v3;
  v7 = qword_100596C88;
  swift_beginAccess();
  v8 = *(v3 + v7);
  v9 = *(v6 + 80);
  v10 = *(v6 + 88);
  _s8InstanceCMa_0();
  swift_getWitnessTable();
  type metadata accessor for NANDiscoveryEngine.ServiceSession();
  Dictionary.subscript.getter();
  if (v14)
  {
    v11 = v14;
    swift_endAccess();
    sub_100058BA4(v14);
    sub_1002F9804(a3, a2 & 0xFFFFFFFFFFFFLL);
  }

  else
  {
    swift_endAccess();
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "Did not find a service to notify multicast receiver error", v13, 2u);
    }
  }
}

void sub_10033A9F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *v4;
  v9 = qword_100596C88;
  swift_beginAccess();
  v10 = *(v4 + v9);
  v11 = *(v8 + 80);
  v12 = *(v8 + 88);
  _s8InstanceCMa_0();
  swift_getWitnessTable();
  type metadata accessor for NANDiscoveryEngine.ServiceSession();
  Dictionary.subscript.getter();
  if (v16)
  {
    v13 = v16;
    swift_endAccess();
    sub_100058BA4(v16);
    sub_1002F9888(a3, a4, a2 & 0xFFFFFFFFFFFFLL);
  }

  else
  {
    swift_endAccess();
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "Did not find a service to notify receiving data blob", v15, 2u);
    }
  }
}

uint64_t sub_10033ABB0()
{
  v1 = *v0;
  v7[5] = sub_10033C204();
  v7[2] = *(v1 + 80);
  v7[3] = *(v1 + 88);
  type metadata accessor for NANDeviceLink();
  v2 = type metadata accessor for Array();
  WitnessTable = swift_getWitnessTable();
  v5 = sub_10002B84C(sub_10036D618, v7, v2, &type metadata for WiFiAddress, &type metadata for Never, WitnessTable, &protocol witness table for Never, v4);

  return v5;
}

uint64_t sub_10033ACA4(uint64_t a1)
{
  v3 = *v1;
  v4 = qword_100596C90;
  swift_beginAccess();
  v5 = *(v1 + v4);
  v6 = *(v3 + 80);
  v7 = *(v3 + 88);
  v8 = _s17InitiatorInstanceCMa();

  WitnessTable = swift_getWitnessTable();
  LOBYTE(v8) = sub_100349A14(v5, a1 & 0xFFFFFFFFFFFFLL, v6, v8, v7, WitnessTable);

  if (v8)
  {
    v10 = 1;
  }

  else
  {
    v11 = qword_100596C98;
    swift_beginAccess();
    v12 = *(v1 + v11);
    v13 = _s17ResponderInstanceCMa();

    v14 = swift_getWitnessTable();
    v10 = sub_100349A14(v12, a1 & 0xFFFFFFFFFFFFLL, v6, v13, v7, v14);
  }

  return v10 & 1;
}

void *sub_10033AE2C(void *result, void *a2)
{
  if (result)
  {
    v7 = result;
    v3 = a2[2];
    v4 = a2[3];
    v5 = a2[4];
    v6 = a2[5];
    return sub_10033AE70(&v7, v2);
  }

  return result;
}

uint64_t sub_10033AE70(id *a1, uint64_t a2)
{
  v3 = *a1;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(a2 + 8) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a2 + 8) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v5 = *((*(a2 + 8) & 0xFFFFFFFFFFFFFF8) + 0x10);
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  return specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
}

void sub_10033AF04(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  if (a2 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v4 = 0;
    v21 = v2 & 0xFFFFFFFFFFFFFF8;
    v22 = v2 & 0xC000000000000001;
    v5 = &unk_1004818C0;
    v20 = v2;
    while (1)
    {
      if (v22)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v4 >= *(v21 + 16))
        {
          goto LABEL_14;
        }

        v7 = *(v2 + 8 * v4 + 32);
      }

      v8 = v7;
      v9 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      memset(v26, 0, sizeof(v26));
      v10 = *&v7[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_connection];
      sub_100012400(v26, v24, &qword_10058BA80, v5);
      v11 = v25;
      if (v25)
      {
        sub_100029B34(v24, v25);
        v23 = &v20;
        v12 = i;
        v13 = *(v11 - 8);
        v14 = *(v13 + 64);
        __chkstk_darwin();
        v16 = v10;
        v17 = v5;
        v18 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v13 + 16))(v18);
        v6 = _bridgeAnythingToObjectiveC<A>(_:)();
        v19 = v18;
        v5 = v17;
        v10 = v16;
        (*(v13 + 8))(v19, v11);
        i = v12;
        v2 = v20;
        sub_100002A00(v24);
      }

      else
      {
        v6 = 0;
      }

      [v10 setExportedObject:{v6, v20}];
      swift_unknownObjectRelease();
      sub_100016290(v26, &qword_10058BA80, v5);

      ++v4;
      if (v9 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }
}

uint64_t sub_10033B19C(void *a1)
{
  v3 = *v1;
  v2 = v1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  v7 = a1[5];
  return sub_10033B15C();
}

uint64_t sub_10033B1B0()
{
  v1 = v0;
  v2 = *v0;
  v49 = type metadata accessor for DispatchTime();
  v48 = *(v49 - 8);
  v3 = *(v48 + 64);
  __chkstk_darwin();
  v47 = v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + v2[38]);
  swift_unownedRetainStrong();
  v50 = sub_100019F94();

  swift_unownedRetainStrong();
  v6 = sub_10040CAE8();

  v7 = qword_100596C88;
  swift_beginAccess();
  v8 = *(v6 + v7);

  v54 = v8;
  v51 = v2[10];
  v9 = v51;
  v52 = v2[11];
  v10 = v52;
  v11 = _s8InstanceCMa_0();
  WitnessTable = swift_getWitnessTable();
  v55 = v9;
  v56 = v11;
  v57 = v10;
  v58 = WitnessTable;
  type metadata accessor for NANDiscoveryEngine.ServiceSession();
  type metadata accessor for Dictionary();
  swift_getWitnessTable();
  LOBYTE(v11) = Sequence.contains(where:)();

  if (v11)
  {
    v13 = 1;
  }

  else
  {
    swift_unownedRetainStrong();
    v14 = sub_10040CAE8();

    v15 = qword_100596C80;
    swift_beginAccess();
    v16 = *(v14 + v15);

    v53 = v16;
    __chkstk_darwin();
    v46[-2] = v9;
    v46[-1] = v10;
    v17 = _s8InstanceCMa();
    v18 = swift_getWitnessTable();
    v55 = v9;
    v56 = v17;
    v57 = v10;
    v58 = v18;
    type metadata accessor for NANDiscoveryEngine.ServiceSession();
    type metadata accessor for Dictionary();
    swift_getWitnessTable();
    v13 = Sequence.contains(where:)();
  }

  v19 = qword_100596C90;
  swift_beginAccess();
  v20 = *(v1 + v19);
  v21 = _s17InitiatorInstanceCMa();

  v22 = swift_getWitnessTable();
  v55 = v9;
  v56 = v21;
  v57 = v10;
  v58 = v22;
  type metadata accessor for NANDiscoveryEngine.ServiceSession();
  sub_10020CB70();
  v23 = Dictionary.isEmpty.getter();

  if (v23)
  {
    v24 = qword_100596C98;
    swift_beginAccess();
    v25 = *(v1 + v24);
    v26 = _s17ResponderInstanceCMa();

    v27 = swift_getWitnessTable();
    v55 = v9;
    v56 = v26;
    v57 = v10;
    v58 = v27;
    type metadata accessor for NANDiscoveryEngine.ServiceSession();
    v28 = Dictionary.isEmpty.getter();

    if (!(v13 & 1 | ((v28 & 1) == 0)))
    {
      v29 = qword_100596CA0;
      swift_beginAccess();
      v30 = *(v1 + v29);
      type metadata accessor for NANDiscoveryEngine.UnownedDeviceLink();
      sub_1002CAFC4();
      v46[0] = 0;
      v31 = NANBitmap.Channel.operatingClass.getter(v30);
      v46[1] = v46;
      v55 = v31;
      __chkstk_darwin();
      v46[-2] = v9;
      v46[-1] = v10;
      type metadata accessor for Dictionary.Values();

      swift_getWitnessTable();
      Sequence.forEach(_:)();

      swift_beginAccess();
      type metadata accessor for Dictionary();
      Dictionary.removeAll(keepingCapacity:)(0);
      swift_endAccess();
    }
  }

  swift_unownedRetainStrong();
  v32 = sub_10033BA90() > 0;
  sub_10040E940(v32);

  v33 = *(v1 + qword_100596CF0);
  sub_100344084();
  sub_1003448A8();
  sub_1003452CC();
  sub_10033D51C();
  sub_100339E54();
  sub_10034BFA8();
  sub_10034D228();
  v34 = *(v1 + qword_100596D00);
  sub_1003544B0();
  sub_1003547A0();
  swift_unownedRetainStrong();
  v35 = sub_100019F94();

  if (v50)
  {
    v36 = 0x64656C62616E65;
  }

  else
  {
    v36 = 0x64656C6261736964;
  }

  if (v50)
  {
    v37 = 0xE700000000000000;
  }

  else
  {
    v37 = 0xE800000000000000;
  }

  if (v35)
  {
    v38 = 0x64656C62616E65;
  }

  else
  {
    v38 = 0x64656C6261736964;
  }

  if (v35)
  {
    v39 = 0xE700000000000000;
  }

  else
  {
    v39 = 0xE800000000000000;
  }

  if (v36 == v38 && v37 == v39)
  {
  }

  else
  {
    v41 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v41 & 1) == 0)
    {
      v42 = *NANDiscoveryWindowIndex.first.unsafeMutableAddressor();
      v43 = *(v1 + qword_100596CA8);
      *(v1 + qword_100596CA8) = v42;
      sub_10033C370(v43);
      type metadata accessor for P2PTimer();
      v44 = v47;
      variable initialization expression of AWDLPeer.lastUpdated();
      v45 = qword_100596CD0;
      swift_beginAccess();
      (*(v48 + 40))(v1 + v45, v44, v49);
      return swift_endAccess();
    }
  }

  return result;
}

uint64_t (*sub_10033B994(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_10033B9F8;
}

uint64_t sub_10033B9F8(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);
    return sub_10033B1B0();
  }

  return result;
}

uint64_t sub_10033BA38(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  v5 = *(v2 + v4);
  *(v2 + v4) = a1;

  return sub_10033B1B0();
}

uint64_t sub_10033BA90()
{
  v1 = *v0;
  v2 = qword_100596C80;
  swift_beginAccess();
  v3 = *(v0 + v2);
  v4 = *(v1 + 80);
  v5 = *(v1 + 88);
  _s8InstanceCMa();

  swift_getWitnessTable();
  type metadata accessor for NANDiscoveryEngine.ServiceSession();
  v6 = Dictionary.count.getter();

  v7 = qword_100596C88;
  swift_beginAccess();
  v8 = *(v0 + v7);
  _s8InstanceCMa_0();

  swift_getWitnessTable();
  type metadata accessor for NANDiscoveryEngine.ServiceSession();
  v9 = Dictionary.count.getter();

  v11 = v6 + v9;
  if (__OFADD__(v6, v9))
  {
    __break(1u);
    goto LABEL_6;
  }

  v12 = qword_100596C90;
  swift_beginAccess();
  v13 = *(v0 + v12);
  _s17InitiatorInstanceCMa();

  swift_getWitnessTable();
  type metadata accessor for NANDiscoveryEngine.ServiceSession();
  sub_10020CB70();
  v14 = Dictionary.count.getter();

  v15 = __OFADD__(v11, v14);
  v16 = v11 + v14;
  if (v15)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v17 = qword_100596C98;
  swift_beginAccess();
  v18 = *(v0 + v17);
  _s17ResponderInstanceCMa();

  swift_getWitnessTable();
  type metadata accessor for NANDiscoveryEngine.ServiceSession();
  v19 = Dictionary.count.getter();

  result = v16 + v19;
  if (__OFADD__(v16, v19))
  {
LABEL_7:
    __break(1u);
  }

  return result;
}

uint64_t sub_10033BD70(void *a1)
{
  v1 = *a1 + qword_10059BAE8;
  swift_beginAccess();
  v2 = type metadata accessor for NANSubscribe.Configuration();
  if (*(v1 + *(v2 + 88)) > 1u)
  {
    *(v1 + *(v2 + 88));
  }

  else if (*(v1 + *(v2 + 88)))
  {
    v3 = 1;
LABEL_10:

    return v3 & 1;
  }

  v4 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v4 & 1) == 0)
  {
    if (*(v1 + *(v2 + 88)) == 2)
    {
      v3 = 1;
    }

    else
    {
      v3 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    goto LABEL_10;
  }

  v3 = 1;
  return v3 & 1;
}

uint64_t sub_10033BF54()
{
  v1 = v0;
  v2 = *v0;
  v3 = qword_100596C80;
  swift_beginAccess();
  v4 = *(v1 + v3);
  v5 = *(v2 + 80);
  v6 = *(v2 + 88);
  v13 = _s8InstanceCMa();
  v14 = v6;
  WitnessTable = swift_getWitnessTable();
  type metadata accessor for NANDiscoveryEngine.ServiceSession();
  v12 = NANBitmap.Channel.operatingClass.getter(v4);
  v11[4] = v5;
  v11[5] = v6;
  type metadata accessor for Dictionary.Values();

  swift_getWitnessTable();
  LOBYTE(v2) = Sequence.contains(where:)();

  if (v2)
  {
    v7 = 1;
  }

  else
  {
    v8 = qword_100596C88;
    swift_beginAccess();
    v9 = *(v1 + v8);
    v13 = _s8InstanceCMa_0();
    v14 = v6;
    WitnessTable = swift_getWitnessTable();
    type metadata accessor for NANDiscoveryEngine.ServiceSession();
    v11[1] = v11;
    v12 = NANBitmap.Channel.operatingClass.getter(v9);
    __chkstk_darwin();
    type metadata accessor for Dictionary.Values();

    swift_getWitnessTable();
    v7 = Sequence.contains(where:)();
  }

  return v7 & 1;
}

uint64_t sub_10033C204()
{
  v1 = *v0;
  v2 = qword_100596CA0;
  swift_beginAccess();
  v3 = *(v0 + v2);
  v4 = *(v1 + 80);
  v5 = *(v1 + 88);
  type metadata accessor for NANDiscoveryEngine.UnownedDeviceLink();
  sub_1002CAFC4();
  v12[6] = NANBitmap.Channel.operatingClass.getter(v3);
  v12[2] = v4;
  v12[3] = v5;
  v6 = type metadata accessor for Dictionary.Values();
  v7 = type metadata accessor for NANDeviceLink();

  WitnessTable = swift_getWitnessTable();
  v10 = sub_10002B84C(sub_10036D5EC, v12, v6, v7, &type metadata for Never, WitnessTable, &protocol witness table for Never, v9);

  return v10;
}

void sub_10033C370(uint64_t a1)
{
  v2 = v1;
  v50 = a1;
  v3 = *v1;
  v4 = type metadata accessor for DispatchTimeInterval();
  v48 = *(v4 - 8);
  v5 = v48[8];
  __chkstk_darwin();
  v49 = (&v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v8 = (&v47 - v7);
  __chkstk_darwin();
  v51 = (&v47 - v9);
  v10 = v3[11];
  v11 = *(v10 + 8);
  v12 = v3[10];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = *(AssociatedTypeWitness - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin();
  v17 = &v47 - v16;
  v18 = *(v2 + v3[38]);
  swift_unownedRetainStrong();
  v19 = sub_100019F94();

  if (v19)
  {
    swift_unownedRetainStrong();
    v20 = *(*v18 + 96);
    swift_beginAccess();
    (*(v14 + 16))(v17, v18 + v20, AssociatedTypeWitness);

    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v22 = (*(AssociatedConformanceWitness + 512))(AssociatedTypeWitness, AssociatedConformanceWitness);
    (*(v14 + 8))(v17, AssociatedTypeWitness);
    if ((v22 & 1) == 0)
    {
      v23 = qword_100596CA8;
      if (*(v2 + qword_100596CA8) != v50 || !*(v2 + qword_100596CB0))
      {
        v24 = *(v2 + qword_100596CF8);
        sub_10034ABD0();
        v25 = *(v2 + qword_100596D00);
        sub_1003544B0();
        v26 = *(v2 + v23);
        if (v26 == 15)
        {
          v27 = 0;
        }

        else
        {
          v27 = v26 + 1;
          if (__OFADD__(v26, 1))
          {
            goto LABEL_17;
          }
        }

        v29 = *NANTimeUnit.discoveryWindowInterval.unsafeMutableAddressor();
        if (v29 >> 54)
        {
          __break(1u);
        }

        else
        {
          v50 = v27;
          v30 = v29 << 10;
          if ((v30 & 0x8000000000000000) == 0)
          {
            *v8 = v30;
            v31 = v48;
            v32 = v48[13];
            v32(v8, enum case for DispatchTimeInterval.microseconds(_:), v4);
            v33 = v32;
            v47 = v32;
            v34 = v49;
            *v49 = 12;
            v35 = enum case for DispatchTimeInterval.milliseconds(_:);
            v33(v34, enum case for DispatchTimeInterval.milliseconds(_:), v4);
            static DispatchTimeInterval.+ infix(_:_:)(v34, v51);
            v36 = v31[1];
            v36(v34, v4);
            v36(v8, v4);
            v48 = *OS_dispatch_queue.nan.unsafeMutableAddressor();
            *v8 = 2;
            v37 = v47;
            v47(v8, v35, v4);
            v38 = swift_allocObject();
            swift_weakInit();
            v39 = swift_allocObject();
            v39[2] = v12;
            v39[3] = v10;
            v40 = v50;
            v39[4] = v38;
            v39[5] = v40;
            v37(v34, enum case for DispatchTimeInterval.never(_:), v4);
            v41 = type metadata accessor for P2PTimer();
            v42 = *(v41 + 48);
            v43 = *(v41 + 52);
            swift_allocObject();
            v44 = v48;
            v45 = P2PTimer.init(deadlineAfter:on:repeating:leeway:_:)(v51, v44, v34, v8, sub_10036AAFC, v39);
            v46 = *(v2 + qword_100596CB0);
            *(v2 + qword_100596CB0) = v45;

            return;
          }
        }

        __break(1u);
LABEL_17:
        __break(1u);
      }
    }
  }

  else
  {
    v28 = *(v2 + qword_100596CB0);
    *(v2 + qword_100596CB0) = 0;
  }
}

uint64_t sub_10033C88C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10033C8EC(a2);
  }

  return result;
}

uint64_t sub_10033C8EC(uint64_t a1)
{
  if (*(v1 + qword_100596CA8) != a1)
  {
    v3 = v1;
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 134217984;
      *(v6 + 4) = a1;
      _os_log_impl(&_mh_execute_header, v4, v5, "Missed DW start event for DW index: %ld", v6, 0xCu);
    }

    v1 = v3;
  }

  v7 = *(v1 + qword_100596CA8);
  *(v1 + qword_100596CA8) = a1;

  return sub_10033C370(v7);
}

uint64_t sub_10033C9D8(uint64_t a1)
{
  v16 = a1;
  v2 = *v1;
  v3 = *(*(sub_10005DC58(&qword_100597428, &unk_1004B16C0) - 8) + 64);
  __chkstk_darwin();
  v5 = &v16 - v4;
  v6 = v2[31];
  v7 = v2[32];
  swift_beginAccess();
  sub_100012400(v1 + v7, v5, &qword_100597428, &unk_1004B16C0);
  v8 = *(v2[11] + 8);
  v9 = v2[10];
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = sub_10005DC58(&qword_100596D90, &qword_1004B11E8);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v13 = sub_10036CA8C();
  v14 = sub_10000CADC(&unk_100597440, &qword_100596D90, &qword_1004B11E8);
  RadioResourceControls.update<A>(from:to:)(v16, v5, AssociatedTypeWitness, v11, AssociatedConformanceWitness, &off_100576220, v13, v14);
  return sub_100016290(v5, &qword_100597428, &unk_1004B16C0);
}

uint64_t sub_10033CC18(uint64_t a1)
{
  v3 = *(*(sub_10005DC58(&qword_100597428, &unk_1004B16C0) - 8) + 64);
  __chkstk_darwin();
  v5 = &v8[-v4];
  v6 = *(*v1 + 256);
  swift_beginAccess();
  sub_100012400(v1 + v6, v5, &qword_100597428, &unk_1004B16C0);
  swift_beginAccess();
  sub_10036D434(a1, v1 + v6, &qword_100597428, &unk_1004B16C0);
  swift_endAccess();
  sub_10033C9D8(v5);
  sub_100016290(a1, &qword_100597428, &unk_1004B16C0);
  return sub_100016290(v5, &qword_100597428, &unk_1004B16C0);
}

uint64_t sub_10033CD38(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*(sub_10005DC58(&unk_100597390, &unk_1004B1680) - 8) + 64);
  __chkstk_darwin();
  v6 = &v17 - v5;
  v7 = v3[31];
  v8 = v3[33];
  swift_beginAccess();
  sub_100012400(v1 + v8, v6, &unk_100597390, &unk_1004B1680);
  v9 = *(v3[11] + 8);
  v10 = v3[10];
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = type metadata accessor for PriorityRadioConstraint();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v14 = sub_10036D49C(&qword_1005973A0, type metadata accessor for PriorityRadioConstraint);
  v15 = sub_10036D49C(&qword_1005973A8, type metadata accessor for PriorityRadioConstraint);
  RadioResourceControls.update<A>(from:to:)(a1, v6, AssociatedTypeWitness, v12, AssociatedConformanceWitness, &off_100576230, v14, v15);
  return sub_100016290(v6, &unk_100597390, &unk_1004B1680);
}

uint64_t sub_10033CF90(uint64_t a1)
{
  v3 = *(*(sub_10005DC58(&unk_100597390, &unk_1004B1680) - 8) + 64);
  __chkstk_darwin();
  v5 = &v8[-v4];
  v6 = *(*v1 + 264);
  swift_beginAccess();
  sub_100012400(v1 + v6, v5, &unk_100597390, &unk_1004B1680);
  swift_beginAccess();
  sub_10036D434(a1, v1 + v6, &unk_100597390, &unk_1004B1680);
  swift_endAccess();
  sub_10033CD38(v5);
  sub_100016290(a1, &unk_100597390, &unk_1004B1680);
  return sub_100016290(v5, &unk_100597390, &unk_1004B1680);
}

uint64_t sub_10033D0B0(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = *(*(sub_10005DC58(&qword_1005973B8, &qword_1004B1698) - 8) + 64);
  __chkstk_darwin();
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = &v22 - v8;
  v22 = v4[31];
  sub_100012400(a1, &v22 - v8, &qword_1005973B0, &qword_1004B1690);
  v10 = sub_10005DC58(&qword_1005973B0, &qword_1004B1690);
  v11 = *(*(v10 - 8) + 56);
  v11(v9, 0, 1, v10);
  v12 = v2 + *(*v2 + 272);
  swift_beginAccess();
  sub_100012400(v12, v7, &qword_1005973B0, &qword_1004B1690);
  v11(v7, 0, 1, v10);
  v13 = *(v4[11] + 8);
  v14 = v4[10];
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v17 = sub_10036C644();
  v18 = sub_10000CADC(&qword_1005973D8, &qword_1005973B0, &qword_1004B1690);
  RadioResourceControls.update<A>(from:to:)(v9, v7, AssociatedTypeWitness, v10, AssociatedConformanceWitness, &off_100576220, v17, v18);
  sub_100016290(v7, &qword_1005973B8, &qword_1004B1698);
  sub_100016290(v9, &qword_1005973B8, &qword_1004B1698);
  v19 = *(v2 + *(*v2 + 304));
  swift_unownedRetainStrong();
  v20 = *(v19 + *(*v19 + 800));
  swift_unownedRetainStrong();

  sub_1003F0580(*(v12 + *(v10 + 36)));
}

uint64_t sub_10033D3FC(uint64_t a1)
{
  v3 = *(*(sub_10005DC58(&qword_1005973B0, &qword_1004B1690) - 8) + 64);
  __chkstk_darwin();
  v5 = &v8[-v4];
  v6 = *(*v1 + 272);
  swift_beginAccess();
  sub_100012400(v1 + v6, v5, &qword_1005973B0, &qword_1004B1690);
  swift_beginAccess();
  sub_10036D434(a1, v1 + v6, &qword_1005973B0, &qword_1004B1690);
  swift_endAccess();
  sub_10033D0B0(v5);
  sub_100016290(a1, &qword_1005973B0, &qword_1004B1690);
  return sub_100016290(v5, &qword_1005973B0, &qword_1004B1690);
}

uint64_t sub_10033D51C()
{
  v1 = v0;
  v2 = *v0;
  v3 = *(*(sub_10005DC58(&unk_100597390, &unk_1004B1680) - 8) + 64);
  __chkstk_darwin();
  v5 = v52 - v4;
  v6 = NANAttribute.DataCluster.empty.unsafeMutableAddressor();
  v57 = *v6;
  v56 = *v6;
  v7 = qword_100596C88;
  swift_beginAccess();
  v8 = *(v1 + v7);
  sub_1002785A4(&v57, &v53);
  v9 = *(v2 + 80);
  v10 = *(v2 + 88);
  v11 = _s8InstanceCMa_0();

  WitnessTable = swift_getWitnessTable();
  *&v53 = v9;
  *(&v53 + 1) = v11;
  v54 = v10;
  v55 = WitnessTable;
  type metadata accessor for NANDiscoveryEngine.ServiceSession();
  LOBYTE(v10) = Dictionary.isEmpty.getter();

  if ((v10 & 1) != 0 && sub_100349C0C() < 1)
  {
    v39 = type metadata accessor for PriorityRadioConstraint();
    (*(*(v39 - 8) + 56))(v5, 1, 1, v39);
  }

  else
  {
    v13 = *(v1 + *(*v1 + 304));
    swift_unownedRetainStrong();
    v14 = sub_10002AF00();

    if ((v14 & 0xFF00000000) == 0x300000000 || (static Channel.isValid(channel:on:with:)(v14, HIDWORD(v14), v14 >> 40) & 1) == 0)
    {
      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&_mh_execute_header, v23, v24, "Setting default NAN NDC to 2.4GHz", v25, 2u);
      }

      sub_10005DC58(&qword_100598790, &qword_1004ABAE0);
      v26 = swift_allocObject();
      *(v26 + 16) = xmmword_100480F40;
      v27 = *NANMapID.primary.unsafeMutableAddressor();
      v28 = TimeBitmap.Slot.OO.unsafeMutableAddressor();
      v29 = static TimeBitmap.repeatingPerDW(_:_:_:_:)(2, *v28, *v28, *v28);
      v32 = TimeBitmap.nanBitmap.getter(v29, v30, v31);
      *(v26 + 32) = v27;
      *(v26 + 40) = v32;
      *(v26 + 48) = v33;
      *(v26 + 56) = v34;
      sub_10027A12C(&v57);
      *(&v56 + 1) = v26;
      v35 = TimeBitmap.primaryDiscoveryWindow.unsafeMutableAddressor();
      v53 = *v35;
      v54 = v35[2];
      UUID.init()();
      v36 = type metadata accessor for PriorityRadioConstraint();
      v37 = v36;
      v5[v36[5]] = 5;
      v38 = &v5[v36[6]];
      *v38 = 0;
      v38[8] = 2;
    }

    else
    {
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&_mh_execute_header, v15, v16, "Setting default NAN NDC to 5GHz", v17, 2u);
      }

      sub_10005DC58(&qword_100598790, &qword_1004ABAE0);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_100480F40;
      swift_unownedRetainStrong();
      v19 = WiFiInterface.capabilities.getter();

      v20 = *WiFiDriverCapabilities.supportsSimultaneousDualBand.unsafeMutableAddressor();
      v52[1] = v19;
      *&v53 = v20;
      sub_1000C2A14();

      v21 = dispatch thunk of SetAlgebra.isSuperset(of:)();

      if (v21)
      {
        v22 = NANMapID.secondary.unsafeMutableAddressor();
      }

      else
      {
        v22 = NANMapID.primary.unsafeMutableAddressor();
      }

      v40 = *v22;
      v41 = TimeBitmap.Slot.OO.unsafeMutableAddressor();
      v42 = static TimeBitmap.repeatingPerDW(_:_:_:_:)(*v41, 2, *v41, *v41);
      v45 = TimeBitmap.nanBitmap.getter(v42, v43, v44);
      *(v18 + 32) = v40;
      *(v18 + 40) = v45;
      *(v18 + 48) = v46;
      *(v18 + 56) = v47;
      sub_10027A12C(&v57);
      *(&v56 + 1) = v18;
      v48 = TimeBitmap.secondaryDiscoveryWindow.unsafeMutableAddressor();
      v53 = *v48;
      v54 = v48[2];
      UUID.init()();
      v36 = type metadata accessor for PriorityRadioConstraint();
      v37 = v36;
      v5[v36[5]] = 5;
      v49 = &v5[v36[6]];
      *v49 = 1;
      v49[8] = 2;
    }

    v50 = &v5[v36[7]];
    *v50 = v53;
    *(v50 + 2) = v54;
    (*(*(v36 - 1) + 56))(v5, 0, 1, v37);
  }

  sub_10033CF90(v5);
  sub_10035132C(v1, &v56);
  v53 = v56;
  return sub_10027A12C(&v53);
}

char *sub_10033DA6C()
{
  v1 = v0;
  v2 = *v0;
  v3 = qword_100596CB8;
  v4 = *&v0[qword_100596CB8];
  *&v0[qword_100596CB8] = 0;

  sub_10033C204();
  v33 = *(v2 + 80);
  v5 = *(v2 + 88);
  type metadata accessor for NANDeviceLink();
  type metadata accessor for Array();
  swift_getWitnessTable();
  Sequence.forEach(_:)();

  v6 = qword_10059B9C0;
  v7 = type metadata accessor for Logger();
  (*(*(v7 - 8) + 8))(&v1[v6], v7);
  v8 = *&v1[qword_100596C80];

  v9 = *&v1[qword_100596C88];

  v10 = *&v1[qword_100596C90];

  v11 = *&v1[qword_100596C98];

  v12 = *&v1[qword_10059B9C8];

  v13 = *&v1[qword_100596CA0];

  v14 = *&v1[qword_100596CB0];

  v15 = *&v1[v3];

  v16 = *&v1[qword_100596CC0];

  v17 = qword_100596CC8;
  v18 = type metadata accessor for DispatchTime();
  v19 = *(*(v18 - 8) + 8);
  v19(&v1[v17], v18);
  v19(&v1[qword_100596CD0], v18);
  v19(&v1[qword_100596CD8], v18);
  v20 = *&v1[qword_100596CE0];
  v21 = *&v1[qword_100596CE0 + 8];

  v22 = *&v1[qword_100596CE8];
  v23 = *&v1[qword_100596CE8 + 8];

  v24 = *&v1[qword_100596CF0];

  v25 = *&v1[qword_100596CF8];

  v26 = *&v1[qword_100596D00];

  v27 = *(*v1 + 248);
  v28 = *(v5 + 8);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(&v1[v27], AssociatedTypeWitness);
  sub_100016290(&v1[*(*v1 + 256)], &qword_100597428, &unk_1004B16C0);
  sub_100016290(&v1[*(*v1 + 264)], &unk_100597390, &unk_1004B1680);
  sub_100016290(&v1[*(*v1 + 272)], &qword_1005973B0, &qword_1004B1690);

  v30 = *&v1[*(*v1 + 296)];

  v31 = *&v1[*(*v1 + 304)];
  swift_unownedRelease();
  return v1;
}

uint64_t sub_10033DEC0()
{
  sub_10033DA6C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void sub_10033DF30()
{
  if (!qword_100596D88)
  {
    sub_10005DD04(&qword_100596D90, &qword_1004B11E8);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100596D88);
    }
  }
}

void sub_10033DF94()
{
  if (!qword_100596DA0)
  {
    sub_10005DD04(&qword_100596DA8, &qword_1004B11F0);
    sub_10033E004();
    v0 = type metadata accessor for RadioConstraint();
    if (!v1)
    {
      atomic_store(v0, &qword_100596DA0);
    }
  }
}

unint64_t sub_10033E004()
{
  result = qword_100596DB0;
  if (!qword_100596DB0)
  {
    sub_10005DD04(&qword_100596DA8, &qword_1004B11F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100596DB0);
  }

  return result;
}

uint64_t sub_10033E080()
{
  result = type metadata accessor for DispatchTime();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_10033E130(uint64_t a1)
{
  v775 = a1;
  v771 = *v1;
  v2 = v771;
  v3 = type metadata accessor for DispatchTime();
  v766 = *(v3 - 8);
  v767 = v3;
  v4 = *(v766 + 64);
  __chkstk_darwin();
  v765 = &v714 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v772 = *(v2 + 11);
  v6 = *(v772 + 8);
  v774 = v1;
  v7 = *(v2 + 10);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v755 = *(AssociatedTypeWitness - 8);
  v756 = AssociatedTypeWitness;
  v9 = *(v755 + 8);
  __chkstk_darwin();
  v754 = &v714 - v10;
  v773 = v7;
  v11 = swift_getAssociatedTypeWitness();
  v769 = *(v11 - 8);
  v770 = v11;
  v12 = *(v769 + 64);
  __chkstk_darwin();
  v764 = &v714 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v768 = &v714 - v14;
  v15 = *(*(sub_10005DC58(&qword_10058F4D0, &qword_100491AB0) - 8) + 64);
  __chkstk_darwin();
  v736 = &v714 - v16;
  v17 = *(*(type metadata accessor for NANIdentityKey(0) - 8) + 64);
  __chkstk_darwin();
  v748 = &v714 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v745 = sub_10005DC58(&unk_100597500, &unk_1004939B0);
  v741 = *(v745 - 8);
  v19 = *(v741 + 64);
  __chkstk_darwin();
  v746 = &v714 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v747 = &v714 - v21;
  __chkstk_darwin();
  v743 = &v714 - v22;
  v23 = swift_checkMetadataState();
  v758 = *(v23 - 8);
  v759 = v23;
  v24 = *(v758 + 64);
  __chkstk_darwin();
  v757 = &v714 - v25;
  v26 = *(*(sub_10005DC58(&unk_1005985B0, &unk_1004939A0) - 8) + 64);
  __chkstk_darwin();
  v742 = &v714 - v27;
  v739 = sub_10005DC58(&qword_10058BAC0, &qword_100480E08);
  v28 = *(*(v739 - 8) + 64);
  __chkstk_darwin();
  v738 = &v714 - v29;
  v749 = type metadata accessor for UUID();
  v744 = *(v749 - 8);
  v30 = *(v744 + 64);
  __chkstk_darwin();
  v737 = &v714 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v740 = &v714 - v32;
  v33 = *(*(sub_10005DC58(&unk_100595C00, &qword_10048F790) - 8) + 64);
  __chkstk_darwin();
  v753 = &v714 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v750 = (&v714 - v35);
  __chkstk_darwin();
  v752 = &v714 - v36;
  __chkstk_darwin();
  v751 = &v714 - v37;
  v763 = type metadata accessor for NANPeer(0);
  v38 = *(*(v763 - 8) + 64);
  __chkstk_darwin();
  v735 = &v714 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v762 = &v714 - v40;
  __chkstk_darwin();
  v761 = &v714 - v41;
  v42 = *(*(type metadata accessor for DriverEvent(0) - 8) + 64);
  __chkstk_darwin();
  v44 = &v714 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v46 = &v714 - v45;
  __chkstk_darwin();
  v48 = &v714 - v47;
  __chkstk_darwin();
  v50 = &v714 - v49;
  v51 = type metadata accessor for DispatchPredicate();
  v52 = *(v51 - 8);
  v53 = *(v52 + 64);
  __chkstk_darwin();
  v55 = (&v714 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0));
  v56 = OS_dispatch_queue.nan.unsafeMutableAddressor();
  v57 = *v56;
  *v55 = *v56;
  (*(v52 + 104))(v55, enum case for DispatchPredicate.onQueue(_:), v51);
  v58 = v57;
  LOBYTE(v57) = _dispatchPreconditionTest(_:)();
  (*(v52 + 8))(v55, v51);
  if (v57)
  {
    v59 = v775;
    sub_10036D334(v775, v50, type metadata accessor for DriverEvent);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v61 = v50;
    if (EnumCaseMultiPayload != 6)
    {
      if (EnumCaseMultiPayload != 4)
      {
        if (!EnumCaseMultiPayload)
        {
          sub_10036D334(v50, v48, type metadata accessor for DriverEvent);
          memcpy(v788, v48, 0x16AuLL);
          memcpy(v789, v48, 0x16AuLL);
          switch(sub_100185198(v789))
          {
            case 2u:
              v62 = NANBitmap.Channel.operatingClass.getter(v789);
              v63 = v59;
              v64 = *v62;
              v770 = *(v62 + 4);
              v65 = qword_100596C80;
              v66 = *(v62 + 2);
              LODWORD(v771) = *(v62 + 1);
              v67 = v774;
              swift_beginAccess();
              v68 = *(v67 + v65);
              LOBYTE(v792) = v64;
              v70 = v772;
              v69 = v773;
              v71 = _s8InstanceCMa();
              WitnessTable = swift_getWitnessTable();
              *&v787[0] = v69;
              *(&v787[0] + 1) = v71;
              *&v787[1] = v70;
              *(&v787[1] + 1) = WitnessTable;
              type metadata accessor for NANDiscoveryEngine.ServiceSession();
              Dictionary.subscript.getter();
              v73 = v787[0];
              swift_endAccess();
              sub_100343820(v73, *(&v73 + 1), v67, v63, v71, WitnessTable);
              sub_100058BA4(v73);
              v74 = *(v67 + *(*v67 + 304));
              swift_unownedRetainStrong();
              v75 = v66 | (v770 << 16);
              v76 = v761;
              sub_10040CD68(v75, v761);
              v77 = v76 + *(v763 + 104);
              v78 = sub_10040D118(v787, v771);
              v80 = v79;
              v81 = type metadata accessor for NANPeer.Service(0);
              if (!(*(*(v81 - 8) + 48))(v80, 1, v81))
              {
                v82 = *(v80 + 120);
                v83 = *(v80 + 128);
                v84 = *(v80 + 136);
                *(v80 + 128) = 0;
                *(v80 + 136) = 0;
                *(v80 + 120) = 0;
                v85 = *(v80 + 144);
                *(v80 + 144) = -1;
                sub_1002E9A28(v82, v83, v84, v85);
              }

              (v78)(v787, 0);
              sub_10040E430(v76, v75);
              sub_1001854F8(v788);
              goto LABEL_14;
            case 3u:
              v771 = v50;
              v165 = NANBitmap.Channel.operatingClass.getter(v789);
              v166 = v59;
              v167 = *v165;
              v168 = *(v165 + 4);
              v169 = qword_100596C88;
              v170 = *(v165 + 2);
              LODWORD(v770) = *(v165 + 1);
              v171 = v774;
              swift_beginAccess();
              v172 = *(v171 + v169);
              LOBYTE(v792) = v167;
              v173 = v772;
              v174 = v773;
              v175 = _s8InstanceCMa_0();
              v176 = swift_getWitnessTable();
              *&v787[0] = v174;
              *(&v787[0] + 1) = v175;
              *&v787[1] = v173;
              *(&v787[1] + 1) = v176;
              type metadata accessor for NANDiscoveryEngine.ServiceSession();
              Dictionary.subscript.getter();
              v177 = v787[0];
              swift_endAccess();
              sub_100343820(v177, *(&v177 + 1), v171, v166, v175, v176);
              sub_100058BA4(v177);
              v178 = *(v171 + *(*v171 + 304));
              swift_unownedRetainStrong();
              v179 = v762;
              sub_10040CD68(v170 | (v168 << 16), v762);
              v180 = v179 + *(v763 + 104);
              v181 = sub_10040D118(v787, v770);
              v183 = v182;
              v184 = type metadata accessor for NANPeer.Service(0);
              if (!(*(*(v184 - 8) + 48))(v183, 1, v184))
              {
                v185 = *(v183 + 120);
                v186 = *(v183 + 128);
                v187 = *(v183 + 136);
                *(v183 + 128) = 0;
                *(v183 + 136) = 0;
                *(v183 + 120) = 0;
                v188 = *(v183 + 144);
                *(v183 + 144) = -1;
                sub_1002E9A28(v185, v186, v187, v188);
              }

              (v181)(v787, 0);
              sub_10040E430(v179, v170 | (v168 << 16));
              sub_1001854F8(v788);
              goto LABEL_79;
            case 4u:
            case 8u:
              v237 = NANBitmap.Channel.operatingClass.getter(v789);
              v163 = *v237 | (*(v237 + 2) << 16) | (*(v237 + 3) << 24);
              goto LABEL_36;
            case 5u:
              v771 = v50;
              v206 = NANBitmap.Channel.operatingClass.getter(v789);
              v207 = *v206;
              v759 = v206[1];
              v765 = v206[2];
              v764 = v206[3];
              v766 = v206[4];
              v767 = v206[5];
              v768 = v206[6];
              v769 = v206[7];
              v208 = v206[8];
              v209 = v206[9];
              v210 = v206[10];
              v211 = v206[11];
              v212 = v206[12];
              v213 = v206[13];
              v758 = *(v206 + 2);
              v214 = qword_100596C98;
              v215 = v774;
              swift_beginAccess();
              v216 = *(v215 + v214);
              v770 = v207;
              LOBYTE(v791[0]) = v207;
              v762 = v209;
              v763 = v208;
              BYTE1(v791[0]) = v208;
              BYTE2(v791[0]) = v209;
              AssociatedConformanceWitness = v211;
              v761 = v210;
              BYTE3(v791[0]) = v210;
              BYTE4(v791[0]) = v211;
              BYTE5(v791[0]) = v212;
              BYTE6(v791[0]) = v213;
              v217 = v772;
              v218 = v773;
              v219 = _s17ResponderInstanceCMa();
              v220 = swift_getWitnessTable();
              *&v787[0] = v218;
              *(&v787[0] + 1) = v219;
              *&v787[1] = v217;
              *(&v787[1] + 1) = v220;
              type metadata accessor for NANDiscoveryEngine.ServiceSession();
              sub_10020CB70();
              Dictionary.subscript.getter();
              v221 = v792;
              if (v792)
              {
                v222 = *(&v792 + 1);
                swift_endAccess();
                sub_1001854F8(v788);
                v223 = v221;

                v224 = v774;
                sub_100343820(v221, v222, v774, v775, v219, v220);
                sub_100058BA4(v221);
LABEL_88:

                v370 = *(v224 + qword_100596CF0);
                sub_100344084();
                sub_1003448A8();
                sub_10033D51C();
                goto LABEL_117;
              }

              v756 = v213;
              v757 = v212;
              swift_endAccess();
              v362 = qword_100596C88;
              v363 = v774;
              swift_beginAccess();
              v364 = *(v363 + v362);
              v365 = v759;
              LOBYTE(v791[0]) = v759;
              v366 = _s8InstanceCMa_0();
              v367 = swift_getWitnessTable();
              *&v787[0] = v218;
              *(&v787[0] + 1) = v366;
              *&v787[1] = v217;
              *(&v787[1] + 1) = v367;
              type metadata accessor for NANDiscoveryEngine.ServiceSession();
              Dictionary.subscript.getter();
              v368 = v792;
              if (v792)
              {
                v369 = *(&v792 + 1);
                swift_endAccess();
                v223 = v368;

                sub_100343820(v368, v369, v363, v775, v366, v367);
                sub_100058BA4(v368);
                sub_1003454C0(v770 | (v365 << 8) | (v765 << 16) | (v764 << 24) | (v766 << 32) | (v767 << 40) | (v768 << 48) | (v769 << 56), v763 | (v762 << 8) | (v761 << 16) | (AssociatedConformanceWitness << 24) | (v757 << 32) | (v756 << 40));
                v224 = v363;
                sub_1001854F8(v788);
                goto LABEL_88;
              }

              swift_endAccess();
              *&v787[0] = 0;
              *(&v787[0] + 1) = 0xE000000000000000;
              _StringGuts.grow(_:)(18);

              *&v787[0] = 0xD000000000000010;
              *(&v787[0] + 1) = 0x80000001004BFF80;
              LOBYTE(v794) = v365;
              v415._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
              String.append(_:)(v415);

              sub_10033975C(v770, v763 | (v762 << 8) | (v761 << 16) | (AssociatedConformanceWitness << 24) | (v757 << 32) | (v756 << 40), v765 | (v764 << 8) | (v766 << 16) | (v767 << 24) | (v768 << 32) | (v769 << 40), *&v787[0], *(&v787[0] + 1));

              goto LABEL_116;
            case 6u:
              v162 = NANBitmap.Channel.operatingClass.getter(v789);
              sub_1001854F8(v788);
              v163 = *v162 | (v162[2] << 8) | (v162[3] << 16) | (*(v162 + 1) << 24);
LABEL_36:
              sub_100343A1C(v163, v774, v59);
              return sub_10036D24C(v61, type metadata accessor for DriverEvent);
            case 7u:
              v189 = NANBitmap.Channel.operatingClass.getter(v789);
              v190 = *v189;
              v191 = v189[2];
              v192 = v59;
              v193 = v189[3];
              v194 = *(v189 + 1);
              sub_1001854F8(v788);
              sub_100343A1C(v190 | (v191 << 8) | (v193 << 16) | (v194 << 24), v774, v192);
              return sub_10036D24C(v61, type metadata accessor for DriverEvent);
            case 9u:
              v238 = NANBitmap.Channel.operatingClass.getter(v789);
              v239 = *v238;
              v240 = v238[1];
              v241 = v238[2];
              v242 = v238[3];
              v243 = v238[4];
              v244 = v238[5];
              v245 = *(v238 + 1);
              v246 = v238[6] << 48;
              v238[7];
              v247 = v238[16];
              v248 = v774;
              sub_100345B68();
              sub_100343A1C(v239 | (v240 << 8) | (v241 << 16) | (v242 << 24) | (v243 << 32) | (v244 << 40) | v246, v248, v775);
              return sub_10036D24C(v61, type metadata accessor for DriverEvent);
            case 0xAu:
              v771 = v50;
              v301 = NANBitmap.Channel.operatingClass.getter(v789);
              v302 = *v301;
              v303 = v301[8];
              v304 = v301[9];
              v305 = v301[10];
              v306 = v301[11];
              v765 = v301[12];
              v307 = v301[13];
              v308 = qword_100596C90;
              v309 = v774;
              swift_beginAccess();
              v310 = *(v309 + v308);
              v769 = v303;
              v770 = v302;
              LOBYTE(v791[0]) = v302;
              BYTE1(v791[0]) = v303;
              v767 = v305;
              v768 = v304;
              BYTE2(v791[0]) = v304;
              BYTE3(v791[0]) = v305;
              v766 = v306;
              BYTE4(v791[0]) = v306;
              v311 = v765;
              BYTE5(v791[0]) = v765;
              BYTE6(v791[0]) = v307;
              v312 = v772;
              v313 = v773;
              v314 = _s17InitiatorInstanceCMa();
              v315 = swift_getWitnessTable();
              *&v787[0] = v313;
              *(&v787[0] + 1) = v314;
              *&v787[1] = v312;
              *(&v787[1] + 1) = v315;
              type metadata accessor for NANDiscoveryEngine.ServiceSession();
              sub_10020CB70();
              Dictionary.subscript.getter();
              v316 = v792;
              swift_endAccess();
              if (v316)
              {
                v317 = v307;
                v318 = v311;
                v320 = v766;
                v319 = v767;
                v322 = v768;
                v321 = v769;
                v323 = v770;
                v324 = v316;
              }

              else
              {
                v371 = qword_100596C98;
                v372 = v774;
                swift_beginAccess();
                v373 = *(v372 + v371);
                LOBYTE(v791[0]) = v770;
                BYTE1(v791[0]) = v769;
                BYTE2(v791[0]) = v768;
                BYTE3(v791[0]) = v767;
                BYTE4(v791[0]) = v766;
                BYTE5(v791[0]) = v311;
                BYTE6(v791[0]) = v307;
                v374 = _s17ResponderInstanceCMa();
                v375 = swift_getWitnessTable();
                *&v787[0] = v313;
                *(&v787[0] + 1) = v374;
                *&v787[1] = v312;
                *(&v787[1] + 1) = v375;
                type metadata accessor for NANDiscoveryEngine.ServiceSession();
                Dictionary.subscript.getter();
                v376 = v792;
                swift_endAccess();
                if (!v376)
                {
                  v775 = *(v301 + 1);
                  v773 = *(v301 + 1);
                  *&v787[0] = 0;
                  *(&v787[0] + 1) = 0xE000000000000000;
                  _StringGuts.grow(_:)(19);

                  *&v787[0] = 0xD000000000000011;
                  *(&v787[0] + 1) = 0x80000001004BFF60;
                  v417 = v769;
                  v416 = v770;
                  v418 = v767;
                  v419 = v768;
                  v420 = v311;
                  v421 = v766;
                  v422._countAndFlagsBits = NANPeerServiceIdentifier.description.getter(v770 | (v769 << 8) | (v768 << 16) | (v767 << 24) | (v766 << 32) | (v420 << 40) | (v307 << 48));
                  String.append(_:)(v422);

                  sub_10033975C(v416, (v418 << 16) | (v419 << 8) | (v421 << 24) | (v420 << 32) | (v307 << 40) | v417, v773 | (v775 << 16), *&v787[0], *(&v787[0] + 1));

                  goto LABEL_117;
                }

                v317 = v307;
                v318 = v311;
                v320 = v766;
                v319 = v767;
                v322 = v768;
                v321 = v769;
                v323 = v770;
                v324 = v376;
              }

              sub_100058BA4(v324);
              sub_100343A1C(v323 | (v321 << 8) | (v322 << 16) | (v319 << 24) | (v320 << 32) | (v318 << 40) | (v317 << 48), v774, v775);
              goto LABEL_117;
            case 0xBu:
              v294 = *NANBitmap.Channel.operatingClass.getter(v789);
              v295 = qword_100596C80;
              v157 = v774;
              swift_beginAccess();
              v296 = *(v157 + v295);
              LOBYTE(v792) = v294;
              v159 = v772;
              v160 = v773;
              v161 = _s8InstanceCMa();
              goto LABEL_55;
            case 0xCu:
              v155 = *NANBitmap.Channel.operatingClass.getter(v789);
              v156 = qword_100596C88;
              v157 = v774;
              swift_beginAccess();
              v158 = *(v157 + v156);
              LOBYTE(v792) = v155;
              v159 = v772;
              v160 = v773;
              v161 = _s8InstanceCMa_0();
LABEL_55:
              v297 = v59;
              v298 = swift_getWitnessTable();
              *&v787[0] = v160;
              *(&v787[0] + 1) = v161;
              *&v787[1] = v159;
              *(&v787[1] + 1) = v298;
              type metadata accessor for NANDiscoveryEngine.ServiceSession();
              Dictionary.subscript.getter();
              v299 = v787[0];
              swift_endAccess();
              sub_100343820(v299, *(&v299 + 1), v157, v297, v161, v298);
              sub_100058BA4(v299);
              v300 = *(v157 + *(*v157 + 296));
              sub_10036EEBC(v297);
              return sub_10036D24C(v61, type metadata accessor for DriverEvent);
            case 0xDu:
              v195 = *NANBitmap.Channel.operatingClass.getter(v789);
              v196 = qword_100596C80;
              v197 = v774;
              swift_beginAccess();
              v198 = *(v197 + v196);
              LOBYTE(v791[0]) = v195;
              v200 = v772;
              v199 = v773;
              v201 = _s8InstanceCMa();
              v202 = swift_getWitnessTable();
              *&v787[0] = v199;
              *(&v787[0] + 1) = v201;
              *&v787[1] = v200;
              *(&v787[1] + 1) = v202;
              type metadata accessor for NANDiscoveryEngine.ServiceSession();
              Dictionary.subscript.getter();
              v203 = v792;
              if (v792)
              {
                v204 = *(&v792 + 1);
                swift_endAccess();
                sub_1001854F8(v788);
                v205 = v203;

                sub_100343820(v203, v204, v197, v775, v201, v202);
                sub_100058BA4(v203);
              }

              else
              {
                swift_endAccess();
                sub_1001854F8(v788);
              }

              v354 = qword_100596C88;
              swift_beginAccess();
              v355 = *(v197 + v354);
              LOBYTE(v791[0]) = v195;
              v356 = v773;
              v357 = _s8InstanceCMa_0();
              v358 = swift_getWitnessTable();
              *&v787[0] = v356;
              *(&v787[0] + 1) = v357;
              *&v787[1] = v200;
              *(&v787[1] + 1) = v358;
              type metadata accessor for NANDiscoveryEngine.ServiceSession();
              Dictionary.subscript.getter();
              v359 = v792;
              if (v792)
              {
                v360 = *(&v792 + 1);
                swift_endAccess();
                v361 = v359;

                sub_100343820(v359, v360, v197, v775, v357, v358);
                sub_100058BA4(v359);
              }

              else
              {
                swift_endAccess();
              }

              return sub_10036D24C(v61, type metadata accessor for DriverEvent);
            case 0xEu:
              NANBitmap.Channel.operatingClass.getter(v789);
              v164 = *(v774 + *(*v774 + 296));
              sub_10036EEBC(v59);
              return sub_10036D24C(v61, type metadata accessor for DriverEvent);
            case 0x10u:
              v139 = NANBitmap.Channel.operatingClass.getter(v789);
              v141 = *(v139 + 2);
              v140 = *(v139 + 3);
              v143 = *(v139 + 4);
              v142 = *(v139 + 5);
              v144 = *(v139 + 48);
              if (v144 > 1)
              {
                if (v144 != 2)
                {
                  v391 = Logger.logObject.getter();
                  v392 = static os_log_type_t.error.getter();
                  if (os_log_type_enabled(v391, v392))
                  {
                    v393 = swift_slowAlloc();
                    *v393 = 0;
                    _os_log_impl(&_mh_execute_header, v391, v392, "Unable to handle received out of band frame because the frame type (unparsed) is unsupported", v393, 2u);
                  }

                  v146 = Logger.logObject.getter();
                  v394 = static os_log_type_t.info.getter();
                  if (!os_log_type_enabled(v146, v394))
                  {
                    goto LABEL_101;
                  }

                  v395 = swift_slowAlloc();
                  *v395 = 16777472;
                  v395[4] = byte_1004B18AA[v141];
                  _os_log_impl(&_mh_execute_header, v146, v394, "Unparsed: %hhu", v395, 5u);
LABEL_100:

LABEL_101:

LABEL_111:
                  sub_1001854F8(v788);
                  return sub_10036D24C(v61, type metadata accessor for DriverEvent);
                }

                v350 = *(v139 + 1);
                v351 = *(v139 + 5);
                v352 = *v139;
                memcpy(v787, v788, 0x16AuLL);
                v353 = NANBitmap.Channel.operatingClass.getter(v787);
                sub_10018526C(v353, &v794);
                sub_100345DD4(v141, v140, v143, v351, (v352 | (v350 << 16)));
LABEL_110:
                sub_1001854F8(v788);
                goto LABEL_111;
              }

              v775 = *(v139 + 2);
              if (!v144)
              {
                memcpy(v787, v788, 0x16AuLL);
                v145 = NANBitmap.Channel.operatingClass.getter(v787);
                sub_10018526C(v145, &v794);
                v146 = Logger.logObject.getter();
                v147 = static os_log_type_t.error.getter();
                if (os_log_type_enabled(v146, v147))
                {
                  v148 = swift_slowAlloc();
                  v149 = swift_slowAlloc();
                  v150 = v143;
                  v151 = v149;
                  *&v792 = v149;
                  *v148 = 136315138;
                  *&v794 = v775;
                  DWORD2(v794) = v140;
                  *&v795 = v150;
                  v152 = String.init<A>(describing:)();
                  v154 = sub_100002320(v152, v153, &v792);

                  *(v148 + 4) = v154;
                  _os_log_impl(&_mh_execute_header, v146, v147, "Unable to handle received out of band frame because the frame type %s is unsupported", v148, 0xCu);
                  sub_100002A00(v151);

                  goto LABEL_100;
                }

                goto LABEL_110;
              }

              v377 = *v139;
              v378 = *(v139 + 1);
              v770 = *(v139 + 2);
              v771 = v61;
              v379 = *(v139 + 3);
              v380 = *(v139 + 4);
              v381 = *(v139 + 5);
              v382 = (v774 + qword_10059B9C8);
              swift_beginAccess();
              v764 = v382;
              v765 = v377;
              v383 = *v382;
              LOBYTE(v792) = v377;
              v766 = v380;
              v767 = v378;
              BYTE1(v792) = v378;
              BYTE2(v792) = v770;
              BYTE3(v792) = v379;
              BYTE4(v792) = v380;
              v768 = v381;
              v769 = v140;
              BYTE5(v792) = v381;
              sub_100143FBC(v775, v140, v143, v142);
              v51 = v143;
              _s17InitiatorInstanceCMa_0();
              v46 = v142;
              v384 = _s17ResponderInstanceCMa_0();
              v385 = type metadata accessor for Either();
              v55 = sub_1002CAFC4();
              Dictionary.subscript.getter();
              v386 = BYTE8(v794);
              if (BYTE8(v794) != 255)
              {
                v387 = v794;
                swift_endAccess();
                v388 = Logger.logObject.getter();
                v389 = static os_log_type_t.error.getter();
                if (os_log_type_enabled(v388, v389))
                {
                  v390 = swift_slowAlloc();
                  *v390 = 0;
                  _os_log_impl(&_mh_execute_header, v388, v389, "pairing auth: Existing pairing instance found ", v390, 2u);
                }

                sub_100428B7C(v775, v769, v51, v46, v387, v386 & 1);
                sub_1001854F8(v788);
                sub_1001854F8(v788);
                sub_1002CB018(v387, v386);
                goto LABEL_117;
              }

              v756 = v384;
              v761 = v385;
              v762 = v379;
              swift_endAccess();
              if (((v51 & 0x1000000000000000) != 0) | (2 * v46))
              {
                goto LABEL_113;
              }

              goto LABEL_120;
            case 0x11u:
              v771 = v50;
              v249 = NANBitmap.Channel.operatingClass.getter(v789);
              v250 = *v249;
              v251 = qword_100596CA8;
              if (*(v774 + qword_100596CA8) != *v249)
              {
                v775 = *(v249 + 16);
                v252 = *(v249 + 29);
                v253 = *(v249 + 28);
                v254 = *(v249 + 24);
                v255 = *(v774 + *(*v774 + 304));
                swift_unownedRetainStrong();
                v256 = sub_100019B10();
                v257 = v774;
                v258 = v256;

                if (static InfraAssociationStartEvent.__derived_struct_equals(_:_:)((v252 << 40) | (v253 << 32) | v254, v258 & 0xFFFFFFFFFFFFLL))
                {
                  v259 = *(v257 + qword_100596CA8);
                  *(v257 + qword_100596CA8) = v250;
                  sub_10033C370(v259);
                  v260 = v774;
                  swift_unownedRetainStrong();
                  v261 = *(v255 + *(*v255 + 696));

                  if (v261 != 5 && (*(v260 + v251) & 1) == 0)
                  {
                    swift_retain_n();
                    v262 = Logger.logObject.getter();
                    v263 = static os_log_type_t.default.getter();
                    if (os_log_type_enabled(v262, v263))
                    {
                      v264 = swift_slowAlloc();
                      v773 = swift_slowAlloc();
                      *&v787[0] = v773;
                      *v264 = 136315906;
                      v265 = NANDiscoveryWindowIndex.description.getter(*(v774 + v251));
                      v267 = sub_100002320(v265, v266, v787);

                      *(v264 + 4) = v267;
                      *(v264 + 12) = 2080;
                      swift_unownedRetainStrong();
                      v268 = WiFiInterface.macAddress.getter();

                      v269 = WiFiAddress.description.getter(v268 & 0xFFFFFFFFFFFFLL);
                      v271 = v270;

                      v272 = sub_100002320(v269, v271, v787);

                      *(v264 + 14) = v272;
                      *(v264 + 22) = 2080;
                      switch(v261)
                      {
                        case 2:
                          v273 = 0xE900000000000063;
                          v274 = 0x6974616D6F747541;
                          break;
                        case 3:
                          v273 = 0xED00007265747361;
                          v274 = 0x4D20726F68636E41;
                          break;
                        case 4:
                          v273 = 0xE600000000000000;
                          v274 = 0x72657473614DLL;
                          break;
                        default:
                          if (v261)
                          {
                            v273 = 0xEF636E7953207265;
                            v274 = 0x7473614D206E6F4ELL;
                          }

                          else
                          {
                            v273 = 0x80000001004B9D70;
                            v274 = 0xD000000000000013;
                          }

                          break;
                      }

                      v460 = v775;
                      v461 = sub_100002320(v274, v273, v787);

                      *(v264 + 24) = v461;
                      *(v264 + 32) = 2080;
                      v462 = NANTimeSynchronizationFunction.description.getter(v460);
                      v464 = sub_100002320(v462, v463, v787);

                      *(v264 + 34) = v464;
                      _os_log_impl(&_mh_execute_header, v262, v263, "DWStart: DW%s Self MAC: %s, Role %s TSF: %s", v264, 0x2Au);
                      swift_arrayDestroy();
                    }

                    else
                    {
                    }
                  }
                }
              }

              goto LABEL_117;
            case 0x14u:
              v275 = *NANBitmap.Channel.operatingClass.getter(v789);
              v276 = *(v774 + *(*v774 + 304));
              swift_unownedRetainStrong();
              v277 = *(*v276 + 96);
              swift_beginAccess();
              v279 = v768;
              v278 = v769;
              v280 = v770;
              (*(v769 + 16))(v768, v276 + v277, v770);

              v281 = swift_getAssociatedConformanceWitness();
              LOBYTE(v277) = (*(v281 + 512))(v280, v281);
              (v278[1])(v279, v280);
              if ((v277 & 1) == 0)
              {
                goto LABEL_111;
              }

              swift_unownedRetainStrong();
              v282 = *(v275 + 16);
              if (v282)
              {
                v774 = v276;
                v771 = v61;
                *&v794 = _swiftEmptyArrayStorage;
                v775 = v275;
                sub_100367908(0, v282, 0);
                v283 = v775;
                v284 = 0;
                v285 = v794;
                v286 = *(v794 + 16);
                v287 = v286;
                do
                {
                  v288 = *(v283 + v284 + 32);
                  v289 = *(v283 + v284 + 36);
                  v290 = *(v283 + v284 + 37);
                  *&v794 = v285;
                  v291 = v285[3];
                  v292 = v286 + 1;
                  if (v286 >= v291 >> 1)
                  {
                    sub_100367908((v291 > 1), v286 + 1, 1);
                    v283 = v775;
                    v285 = v794;
                  }

                  v285[2] = v292;
                  v293 = &v285[v287 + v284 / 8];
                  *(v293 + 8) = v288;
                  *(v293 + 36) = v289;
                  *(v293 + 37) = v290;
                  *(v293 + 38) = 2;
                  v284 += 8;
                  v286 = v292;
                  --v282;
                }

                while (v282);
                sub_1001854F8(v788);
                v61 = v771;
                v276 = v774;
              }

              else
              {
                sub_1001854F8(v788);
                v285 = _swiftEmptyArrayStorage;
              }

              if (v285[2])
              {
                sub_10005DC58(&qword_100595318, &qword_1004AF220);
                v396 = static _DictionaryStorage.allocate(capacity:)();
              }

              else
              {
                v396 = &_swiftEmptyDictionarySingleton;
              }

              *&v794 = v396;
              sub_10036C0A8(v285, 1, &v794);

              sub_10040E580(v794);

              swift_unownedRetainStrong();
              v397 = sub_10040E5FC();

              v398 = sub_100367BB4(v397, sub_1003682B0, sub_1003682B0);

              v399 = *(v398 + 16);

              LODWORD(v775) = v399 == 1;
              swift_unownedRetainStrong();
              v400 = sub_10040E5FC();

              v401 = sub_100367BB4(v400, sub_1003681C4, sub_1003681C4);

              v402 = *(v401 + 16);

              swift_unownedRetainStrong();
              v403 = sub_10040E5FC();

              v404 = sub_100367BB4(v403, sub_1003680D4, sub_1003680D4);

              v405 = *(v404 + 16);

              swift_unownedRetainStrong();
              v406 = sub_10040E5FC();

              v407 = sub_100367BB4(v406, sub_100367F9C, sub_100367F9C);

              v408 = *(v407 + 16);

              swift_unownedRetainStrong();
              v409 = v757;
              v410 = v758;
              v411 = v759;
              (*(v758 + 16))(v757, v276 + *(*v276 + 112), v759);

              v412 = v754;
              (*(AssociatedConformanceWitness + 152))(v411, AssociatedConformanceWitness);
              (*(v410 + 8))(v409, v411);
              v413 = v756;
              v414 = swift_getAssociatedConformanceWitness();
              (*(v414 + 16))(v775, v402, v405, v408, v413, v414);
              (*(v755 + 1))(v412, v413);
              return sub_10036D24C(v61, type metadata accessor for DriverEvent);
            case 0x16u:
              v771 = v50;
              v325 = NANBitmap.Channel.operatingClass.getter(v789);
              v787[4] = v325[4];
              v787[5] = v325[5];
              v787[6] = v325[6];
              v787[7] = v325[7];
              v787[0] = *v325;
              v787[1] = v325[1];
              v787[2] = v325[2];
              v787[3] = v325[3];
              v326 = qword_100596C88;
              v327 = v774;
              swift_beginAccess();
              v328 = *(v327 + v326);
              v329 = v328 + 64;
              v330 = 1 << *(v328 + 32);
              v331 = -1;
              if (v330 < 64)
              {
                v331 = ~(-1 << v330);
              }

              v332 = v331 & *(v328 + 64);
              v333 = (v330 + 63) >> 6;

              v334 = 0;
              v775 = v328;
              while (2)
              {
                if (v332)
                {
                  goto LABEL_66;
                }

LABEL_62:
                v335 = v334 + 1;
                if (!__OFADD__(v334, 1))
                {
                  if (v335 < v333)
                  {
                    v332 = *(v329 + 8 * v335);
                    ++v334;
                    if (v332)
                    {
                      v334 = v335;
LABEL_66:
                      v336 = __clz(__rbit64(v332));
                      v332 &= v332 - 1;
                      v337 = *(v328 + 56) + ((v334 << 10) | (16 * v336));
                      if (*(*v337 + qword_10059B8B0))
                      {
                        v338 = *(v337 + 8);
                        v50 = *v337;

                        sub_10031AC04(v787);

                        v328 = v775;
                      }

                      continue;
                    }

                    goto LABEL_62;
                  }

                  v339 = qword_100596C80;
                  swift_beginAccess();
                  v340 = *(v327 + v339);
                  v50 = (v340 + 64);
                  v341 = 1 << *(v340 + 32);
                  v342 = -1;
                  if (v341 < 64)
                  {
                    v342 = ~(-1 << v341);
                  }

                  v343 = v342 & *(v340 + 64);
                  v344 = (v341 + 63) >> 6;

                  v332 = 0;
                  while (1)
                  {
                    if (!v343)
                    {
                      do
                      {
                        v345 = v332 + 1;
                        if (__OFADD__(v332, 1))
                        {
                          goto LABEL_125;
                        }

                        if (v345 >= v344)
                        {
                          sub_1001854F8(v788);
                          goto LABEL_79;
                        }

                        v343 = *&v50[8 * v345];
                        ++v332;
                      }

                      while (!v343);
                      v332 = v345;
                    }

                    v346 = __clz(__rbit64(v343));
                    v343 &= v343 - 1;
                    v347 = *(v340 + 56) + ((v332 << 10) | (16 * v346));
                    if (*(*v347 + qword_10059BAF8))
                    {
                      v348 = *(v347 + 8);
                      v349 = *v347;

                      sub_10042587C(v787);
                    }
                  }
                }

                break;
              }

              __break(1u);
LABEL_125:
              __break(1u);
              goto LABEL_126;
            default:
              sub_1001854F8(v788);
              break;
          }
        }

LABEL_32:
        v225 = v44;
        sub_10036D334(v59, v44, type metadata accessor for DriverEvent);
        v226 = Logger.logObject.getter();
        v227 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v226, v227))
        {
          v228 = swift_slowAlloc();
          v789[0] = swift_slowAlloc();
          *v228 = 136315394;
          v229 = _typeName(_:qualified:)();
          v231 = sub_100002320(v229, v230, v789);

          *(v228 + 4) = v231;
          *(v228 + 12) = 2080;
          v233 = DriverEvent.shortDescription.getter(v232);
          v235 = v234;
          sub_10036D24C(v225, type metadata accessor for DriverEvent);
          v236 = sub_100002320(v233, v235, v789);

          *(v228 + 14) = v236;
          _os_log_impl(&_mh_execute_header, v226, v227, "%s unable to handle event: %s", v228, 0x16u);
          swift_arrayDestroy();
        }

        else
        {

          sub_10036D24C(v44, type metadata accessor for DriverEvent);
        }

        return sub_10036D24C(v61, type metadata accessor for DriverEvent);
      }

      sub_10036D334(v50, v46, type metadata accessor for DriverEvent);
      v86 = *v46;
      if (v86 != 2)
      {
        if (v86 == 1)
        {
          v94 = qword_100596C80;
          v95 = v774;
          swift_beginAccess();
          v96 = *(v95 + v94);
          v97 = v773;
          v98 = v772;
          v99 = _s8InstanceCMa();
          v100 = swift_getWitnessTable();
          v789[0] = v97;
          v789[1] = v99;
          v789[2] = v98;
          v789[3] = v100;
          type metadata accessor for NANDiscoveryEngine.ServiceSession();
          v101 = NANBitmap.Channel.operatingClass.getter(v96);
          v771 = v61;
          v789[0] = v101;
          __chkstk_darwin();
          type metadata accessor for Dictionary.Values();

          v763 = &protocol conformance descriptor for [A : B].Values;
          swift_getWitnessTable();
          v102 = v95;
          Sequence.forEach(_:)();

          v103 = qword_100596C88;
          swift_beginAccess();
          v104 = *(v102 + v103);
          v105 = v772;
          v106 = v773;
          v107 = _s8InstanceCMa_0();
          v108 = swift_getWitnessTable();
          v789[0] = v106;
          v789[1] = v107;
          v789[2] = v105;
          v789[3] = v108;
          type metadata accessor for NANDiscoveryEngine.ServiceSession();
          v109 = NANBitmap.Channel.operatingClass.getter(v104);
          v762 = &v714;
          v789[0] = v109;
          __chkstk_darwin();
          v110 = v775;
          type metadata accessor for Dictionary.Values();

          swift_getWitnessTable();
          Sequence.forEach(_:)();

          v111 = *(v102 + *(*v102 + 296));
          sub_10036EEBC(v110);
          v762 = type metadata accessor for NANAttribute.CustomDeviceInformation(0);
          v763 = swift_allocBox();
          v113 = v112;
          v114 = *(v102 + *(*v102 + 304));
          swift_unownedRetainStrong();
          v115 = *(*v114 + 96);
          swift_beginAccess();
          v116 = v769;
          v117 = v770;
          AssociatedConformanceWitness = *(v769 + 16);
          v118 = v114 + v115;
          v119 = v768;
          (AssociatedConformanceWitness)(v768, v118, v770);

          v120 = swift_getAssociatedConformanceWitness();
          LODWORD(v761) = (*(v120 + 32))(v117, v120);
          v121 = v116[1];
          v121(v119, v117);
          swift_unownedRetainStrong();
          v122 = *(*v114 + 96);
          swift_beginAccess();
          v123 = v114 + v122;
          v124 = v764;
          (AssociatedConformanceWitness)(v764, v123, v117);

          LOBYTE(v120) = (*(v120 + 24))(v117, v120);
          v121(v124, v117);
          LODWORD(v116) = *NANAttribute.CustomDeviceInformation.Flags.triggeredWatchdogReset.unsafeMutableAddressor();
          NANAttribute.CustomDeviceInformation.CustomAttributes.init()(v113 + *(v762 + 28));
          *v113 = v761;
          *(v113 + 1) = v120;
          *(v113 + 4) = v116;
          v125 = swift_allocObject();
          *(v125 + 16) = &_swiftEmptySetSingleton;
          v126 = qword_100596C90;
          swift_beginAccess();
          v127 = *(v102 + v126);
          v128 = _s17InitiatorInstanceCMa();

          v129 = swift_getWitnessTable();
          v130 = v763;
          v131 = v775;
          sub_1003487A8(v127, v125, v763, v102, v775, v128, v129);

          v132 = qword_100596C98;
          swift_beginAccess();
          v133 = *(v102 + v132);
          v61 = v771;
          v134 = _s17ResponderInstanceCMa();

          v135 = swift_getWitnessTable();
          sub_1003487A8(v133, v125, v130, v102, v131, v134, v135);

          swift_unownedRetainStrong();
          sub_10040E6EC(sub_1003491A8, 0);

          type metadata accessor for P2PTimer();
          v136 = v765;
          variable initialization expression of AWDLPeer.lastUpdated();
          v137 = qword_100596CC8;
          swift_beginAccess();
          (*(v766 + 40))(v102 + v137, v136, v767);
          swift_endAccess();
          v138 = *(v102 + qword_100596CF0);
          sub_100344084();
          sub_1003448A8();
          sub_10033D51C();

LABEL_14:

          return sub_10036D24C(v61, type metadata accessor for DriverEvent);
        }

        if (*v46)
        {
          goto LABEL_32;
        }
      }
    }

    v87 = qword_100596C88;
    v88 = v774;
    swift_beginAccess();
    v89 = *(v88 + v87);
    v90 = v773;
    v91 = v772;
    v92 = _s8InstanceCMa_0();
    v93 = swift_getWitnessTable();
    v789[0] = v90;
    v789[1] = v92;
    v789[2] = v91;
    v789[3] = v93;
    type metadata accessor for NANDiscoveryEngine.ServiceSession();
    v789[0] = NANBitmap.Channel.operatingClass.getter(v89);
    __chkstk_darwin();
    type metadata accessor for Dictionary.Values();

    swift_getWitnessTable();
    Sequence.forEach(_:)();

    return sub_10036D24C(v61, type metadata accessor for DriverEvent);
  }

  __break(1u);
LABEL_120:
  v50 = v51;
  v734 = v55;
  v754 = v46;
  *&v792 = v775;
  memcpy(v787, v788, 0x16AuLL);
  v427 = NANBitmap.Channel.operatingClass.getter(v787);
  sub_10018526C(v427, &v794);
  v428 = sub_10005DC58(&unk_100597510, &qword_100495350);
  v332 = sub_10000CADC(&qword_10059A6E0, &unk_100597510, &qword_100495350);
  v429 = Collection<>.nanIE.getter(v428, v332);
  if (!v429)
  {
LABEL_126:
    sub_1001854F8(v788);
    v437 = 0;
LABEL_154:
    v436 = v752;
    v435 = v753;
    goto LABEL_155;
  }

  v430 = v429;
  v755 = v51;
  sub_1001854F8(v788);
  v431 = v751;
  Array<A>.retrieve(attribute:)(34, v430, v751);

  v432 = type metadata accessor for NANAttribute(0);
  v433 = *(v432 - 8);
  v434 = (*(v433 + 48))(v431, 1, v432);
  v436 = v752;
  v435 = v753;
  if (v434 != 1)
  {
    if (swift_getEnumCaseMultiPayload() != 30)
    {
      sub_10036D24C(v431, type metadata accessor for NANAttribute);
      goto LABEL_146;
    }

    v733 = v433;
    v438 = *(v431 + 8);
    if (*(v438 + 16) == 1)
    {
      v439 = *(v438 + 32);
      v440 = *(v438 + 33);

      v441 = qword_100596C88;
      v442 = v774;
      swift_beginAccess();
      v443 = *(v442 + v441);
      LODWORD(v731) = v440;
      v790 = v440;
      v444 = v772;
      v445 = v773;
      v446 = _s8InstanceCMa_0();
      v447 = swift_getWitnessTable();
      *&v794 = v445;
      *(&v794 + 1) = v446;
      *&v795 = v444;
      *(&v795 + 1) = v447;
      type metadata accessor for NANDiscoveryEngine.ServiceSession();
      Dictionary.subscript.getter();
      v448 = v791[0];
      if (v791[0])
      {
        v449 = v791[0];
        swift_endAccess();
        sub_100058BA4(v448);
        v732 = v449;
        v450 = &v449[qword_10059B890];
        swift_beginAccess();
        v730 = type metadata accessor for NANPublish.Configuration();
        v451 = v450;
        LODWORD(v450) = *&v450[*(v730 + 100)];
        v728 = NANAttribute.PairingBootstrapping.Method.bootstrapHandshakeSkipped.unsafeMutableAddressor();
        if ((*v728 & ~v450) == 0)
        {
          v452 = *&v451[*(v730 + 84) + 16];
          v453 = *(v452 + 16);

          v454 = 0;
          v751 = 0;
          v455 = _swiftEmptyArrayStorage;
          v729 = 32;
LABEL_132:
          v456 = v729 + 56 * v454;
          while (v453 != v454)
          {
            if (v454 >= *(v452 + 16))
            {
              __break(1u);
LABEL_353:
              __break(1u);
LABEL_354:
              __break(1u);
LABEL_355:
              __break(1u);
LABEL_356:
              __break(1u);
LABEL_357:
              __break(1u);
LABEL_358:
              __break(1u);
LABEL_359:
              __break(1u);
LABEL_360:
              __break(1u);
LABEL_361:
              __break(1u);
LABEL_362:
              __break(1u);
LABEL_363:
              __break(1u);
LABEL_364:
              __break(1u);
LABEL_365:
              __break(1u);
LABEL_366:
              __break(1u);
LABEL_367:
              __break(1u);
LABEL_368:
              __break(1u);
LABEL_369:
              __break(1u);
LABEL_370:
              __break(1u);

              v713 = *(v452 + 48);

              __break(1u);
              return result;
            }

            ++v454;
            v457 = *(v452 + v456);
            v456 += 56;
            if (v457 == v439)
            {
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v455 = sub_1003A79E0(0, *(v455 + 2) + 1, 1, v455);
              }

              v459 = *(v455 + 2);
              v458 = *(v455 + 3);
              v727 = v459 + 1;
              if (v459 >= v458 >> 1)
              {
                v455 = sub_1003A79E0((v458 > 1), v727, 1, v455);
              }

              *(v455 + 2) = v727;
              v455[v459 + 32] = v439;
              goto LABEL_132;
            }
          }

          v782 = v455;
          v595 = sub_10005DC58(&unk_100597490, &qword_1004B17B0);
          v596 = sub_10000CADC(&qword_100595C30, &unk_100597490, &qword_1004B17B0);
          v597 = Collection<>.strongestSupportedPairingKeySuite.getter(v595, v596);
          if (v597 != 8)
          {
            v619 = v597;

            v620 = *(v451 + 1);
            v621 = *(v451 + 2);

            v622 = NANServiceName.description.getter(v620, v621);
            v772 = v623;
            v773 = v622;

            v624 = *(v774 + *(*v774 + 304));
            swift_unownedRetainStrong();
            v800 = 0;
            v798 = 0u;
            v799 = 0u;
            v796 = 0u;
            v797 = 0u;
            v794 = 0u;
            v795 = 0u;
            v626 = *&v732[qword_10059B8C8];
            v625 = *&v732[qword_10059B8C8 + 8];
            v627 = (v770 << 16) | (v767 << 8) | (v762 << 24) | (v766 << 32) | (v768 << 40);

            v629 = v765;
            v630 = sub_1004405F4(v624, v627 | v765, v731, v773, v772, v619, &v794, 0, v626, v628);

            v631 = sub_1002EBB84();
            v774 = v630;
            v632 = *(v630 + qword_10059BC80);
            *(v630 + qword_10059BC80) = v631;
            swift_unknownObjectRelease();
            v773 = *v451;
            *&v792 = -60;
            v633 = sub_100086E78();
            v634 = RSSI.init<A>(_:)(&v792, &type metadata for Int, v633);
            sub_10005DC58(&unk_100597530, &qword_100482F50);
            v635 = *(v733 + 72);
            v636 = (*(v733 + 80) + 32) & ~*(v733 + 80);
            v637 = swift_allocObject();
            v637[1] = xmmword_100480F40;
            v638 = (v637 + v636);
            v639 = v728;
            static NANAttribute.PairingBootstrapping.request(dialogToken:method:)(0, *v728, &v792);
            v640 = v793[0];
            *v638 = v792;
            v638[1] = v640;
            *(v638 + 26) = *(v793 + 10);
            swift_storeEnumTagMultiPayload();
            LOWORD(v791[0]) = v773;
            BYTE2(v791[0]) = v629;
            LOBYTE(v638) = v767;
            BYTE3(v791[0]) = v767;
            BYTE4(v791[0]) = v770;
            BYTE5(v791[0]) = v762;
            BYTE6(v791[0]) = v766;
            HIBYTE(v791[0]) = v768;
            v791[1] = v634;
            v791[2] = v637;
            v641 = v451[*(v730 + 104)];
            v642 = v451[*(v730 + 124)];
            v643 = v770;
            v644 = v762;
            v645 = v766;
            v646 = v768;
            v647 = v637;
            v648 = v774;
            sub_1004356C8((v629 << 16) | (v767 << 24) | (v770 << 32) | (v762 << 40) | (v766 << 48) | (v768 << 56) | v773, v634, v647, *v639, v641, 1, v642 & 1);
            sub_1003011F8(v791);
            v785 = v648;
            v786 = 1;
            v776 = v629;
            v777 = v638;
            v778 = v643;
            v779 = v644;
            v780 = v645;
            v781 = v646;
            swift_beginAccess();
            type metadata accessor for Dictionary();

            Dictionary.subscript.setter();
            swift_endAccess();
            sub_100438ED8(v775, v769, v755, v754);
            sub_1001854F8(v788);
            sub_1001854F8(v788);

            goto LABEL_79;
          }

          v437 = v751;
          goto LABEL_153;
        }
      }

      else
      {
        swift_endAccess();
      }
    }

    else
    {
    }

    v437 = 0;
LABEL_153:
    v50 = v755;
    goto LABEL_154;
  }

  sub_100016290(v431, &unk_100595C00, &qword_10048F790);
LABEL_146:
  v437 = 0;
  v50 = v755;
LABEL_155:
  v465 = v775;
  *&v794 = v775;
  sub_100185558(v788, v787);
  v466 = sub_10005DC58(&unk_100597510, &qword_100495350);
  v467 = Collection<>.nanIE.getter(v466, v332);
  if (!v467)
  {
    sub_1001854F8(v788);
    goto LABEL_166;
  }

  v468 = v467;
  sub_1001854F8(v788);

  Array<A>.retrieve(attribute:)(34, v468, v436);

  v469 = type metadata accessor for NANAttribute(0);
  v470 = *(*(v469 - 8) + 48);
  if (v470(v436, 1, v469) == 1)
  {

    sub_100016290(v436, &unk_100595C00, &qword_10048F790);
    v465 = v775;
LABEL_166:
    *&v794 = v465;
    sub_100185558(v788, v787);
    v473 = sub_10005DC58(&unk_100597510, &qword_100495350);
    v474 = Collection<>.nanIE.getter(v473, v332);
    if (!v474)
    {
      sub_1001854F8(v788);
      goto LABEL_113;
    }

    v475 = v474;
    sub_1001854F8(v788);
    Array<A>.retrieve(attribute:)(34, v475, v435);

    v476 = type metadata accessor for NANAttribute(0);
    if ((*(*(v476 - 8) + 48))(v435, 1, v476) == 1)
    {
      sub_100016290(v435, &unk_100595C00, &qword_10048F790);
LABEL_113:
      v423 = Logger.logObject.getter();
      v424 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v423, v424))
      {
        v425 = swift_slowAlloc();
        *v425 = 0;
        _os_log_impl(&_mh_execute_header, v423, v424, "pairing auth: Unable to handle received authentication frame because no pairing session was found or could be formed", v425, 2u);
      }

      sub_1001854F8(v788);
LABEL_116:
      sub_1001854F8(v788);
      goto LABEL_117;
    }

    if (swift_getEnumCaseMultiPayload() != 30)
    {
      sub_10036D24C(v435, type metadata accessor for NANAttribute);
      goto LABEL_113;
    }

    v755 = v50;
    v751 = v437;
    v477 = *(v435 + 8);
    if (*(v477 + 16) != 1)
    {

      goto LABEL_113;
    }

    v478 = *(v477 + 32);
    v479 = *(v477 + 33);

    v480 = qword_100596C88;
    v481 = v774;
    swift_beginAccess();
    v482 = *(v481 + v480);
    LODWORD(v763) = v479;
    LOBYTE(v783) = v479;
    v483 = v772;
    v484 = v773;
    v485 = _s8InstanceCMa_0();
    v486 = swift_getWitnessTable();
    *&v787[0] = v484;
    *(&v787[0] + 1) = v485;
    *&v787[1] = v483;
    *(&v787[1] + 1) = v486;
    type metadata accessor for NANDiscoveryEngine.ServiceSession();
    Dictionary.subscript.getter();
    v487 = v792;
    if (!v792)
    {
      swift_endAccess();
      goto LABEL_113;
    }

    v488 = v792;
    swift_endAccess();
    sub_100058BA4(v487);
    v50 = v488;
    v489 = &v488[qword_10059B890];
    swift_beginAccess();
    v490 = *&v489[*(type metadata accessor for NANPublish.Configuration() + 84) + 16];
    v491 = *(v490 + 16);

    v492 = 0;
    v493 = _swiftEmptyArrayStorage;
    v773 = 32;
LABEL_174:
    v494 = v773 + 56 * v492;
    while (v491 != v492)
    {
      if (v492 >= *(v490 + 16))
      {
        __break(1u);
        goto LABEL_349;
      }

      ++v492;
      v495 = *(v490 + v494);
      v494 += 56;
      if (v495 == v478)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v493 = sub_1003A79E0(0, *(v493 + 16) + 1, 1, v493);
        }

        v497 = *(v493 + 16);
        v496 = *(v493 + 24);
        v772 = v497 + 1;
        if (v497 >= v496 >> 1)
        {
          v493 = sub_1003A79E0((v496 > 1), v772, 1, v493);
        }

        *(v493 + 16) = v772;
        *(v493 + v497 + 32) = v478;
        goto LABEL_174;
      }
    }

    *&v787[0] = v493;
    v498 = sub_10005DC58(&unk_100597490, &qword_1004B17B0);
    v499 = sub_10000CADC(&qword_100595C30, &unk_100597490, &qword_1004B17B0);
    LODWORD(v773) = Collection<>.strongestSupportedPairingKeySuite.getter(v498, v499);
    if (v773 == 8)
    {

      goto LABEL_113;
    }

    sub_1001854F8(v788);

    v598 = Logger.logObject.getter();
    v599 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v598, v599))
    {
      v600 = swift_slowAlloc();
      *v600 = 0;
      _os_log_impl(&_mh_execute_header, v598, v599, "pairing auth: No existing or cached pairing session was found, forming a new responder instance", v600, 2u);
    }

    v601 = *(v489 + 1);
    v602 = *(v489 + 2);

    v603 = NANServiceName.description.getter(v601, v602);
    v772 = v604;

    v605 = *(v774 + *(*v774 + 304));
    swift_unownedRetainStrong();
    memset(v787, 0, 104);
    AssociatedConformanceWitness = v50;
    v607 = *&v50[qword_10059B8C8];
    v606 = *&v50[qword_10059B8C8 + 8];
    v608 = v765;
    v609 = v766;
    v610 = v767;
    v611 = v770;
    v612 = v762;
    v613 = v765 | (v767 << 8) | (v770 << 16) | (v762 << 24) | (v766 << 32) | (v768 << 40);

    v615 = sub_1004405F4(v605, v613, v763, v603, v772, v773, v787, 0, v607, v614);

    v616 = AssociatedConformanceWitness;
    v617 = sub_1002EBB84();
    v618 = *(v615 + qword_10059BC80);
    *(v615 + qword_10059BC80) = v617;
    swift_unknownObjectRelease();
    v783 = v615;
    v784 = 1;
    LOBYTE(v785) = v608;
    BYTE1(v785) = v610;
    BYTE2(v785) = v611;
    BYTE3(v785) = v612;
    BYTE4(v785) = v609;
    BYTE5(v785) = v768;
    swift_beginAccess();
    type metadata accessor for Dictionary();

    Dictionary.subscript.setter();
    swift_endAccess();
    sub_100438ED8(v775, v769, v755, v754);
    sub_1001854F8(v788);

LABEL_79:

    goto LABEL_117;
  }

  if (swift_getEnumCaseMultiPayload() != 30)
  {

    sub_10036D24C(v436, type metadata accessor for NANAttribute);
    v465 = v775;
    goto LABEL_166;
  }

  v755 = v332;
  v751 = v437;
  v471 = *(v436 + 8);
  if (*(v471 + 16) != 1)
  {

    goto LABEL_165;
  }

  LODWORD(v752) = *(v471 + 32);
  LODWORD(v727) = *(v471 + 33);

  v472 = v750;
  Array<A>.retrieve(attribute:)(43, v468, v750);

  if (v470(v472, 1, v469) == 1)
  {
    sub_100016290(v750, &unk_100595C00, &qword_10048F790);
    goto LABEL_165;
  }

  if (swift_getEnumCaseMultiPayload() != 38)
  {
    sub_10036D24C(v750, type metadata accessor for NANAttribute);
    goto LABEL_165;
  }

  v501 = *v750;
  v500 = v750[1];
  v503 = v750[2];
  v502 = v750[3];
  v504 = *(v774 + *(*v774 + 304));
  swift_unownedRetainStrong();
  v506 = v757;
  v505 = v758;
  v507 = v759;
  (*(v758 + 16))(v757, v504 + *(*v504 + 112), v759);
  v715 = v504;

  v452 = (*(AssociatedConformanceWitness + 128))(v507);
  (*(v505 + 8))(v506, v507);
  v508 = LongTermPairingKeyStore.getPairedPeersWithIDs()();

  v509 = 1 << *(v508 + 32);
  v511 = v508 + 64;
  v510 = *(v508 + 64);
  v723 = (v509 + 63) >> 6;
  if (v509 < 64)
  {
    v512 = ~(-1 << v509);
  }

  else
  {
    v512 = -1;
  }

  v513 = v512 & v510;
  v728 = (v744 + 16);
  v729 = v765 | (v767 << 8) | (v770 << 16) | (v762 << 24) | (v766 << 32) | (v768 << 40);
  if (v501)
  {
    v514 = 0;
  }

  else
  {
    v514 = v500 == 0xC000000000000000;
  }

  v515 = !v514;
  v724 = v515;
  v757 = v500 >> 62;
  v750 = v501;
  v516 = __OFSUB__(HIDWORD(v501), v501);
  v719 = v516;
  v718 = HIDWORD(v501) - v501;
  v733 = v500;
  v722 = BYTE6(v500);
  if (v503)
  {
    v517 = 0;
  }

  else
  {
    v517 = v502 == 0xC000000000000000;
  }

  v518 = !v517;
  v721 = v518;
  v725 = v502;
  v726 = v503;
  v519 = __OFSUB__(HIDWORD(v503), v503);
  v717 = v519;
  v716 = HIDWORD(v503) - v503;
  v720 = BYTE6(v502);
  v730 = v744 + 8;
  v731 = v502 >> 62;
  v732 = v508;

  v520 = 0;
  if (!v513)
  {
LABEL_210:
    while (1)
    {
      v521 = v520 + 1;
      if (__OFADD__(v520, 1))
      {
        goto LABEL_353;
      }

      if (v521 >= v723)
      {

        (*(v741 + 56))(v742, 1, 1, v745);
        goto LABEL_327;
      }

      v513 = *(v511 + 8 * v521);
      ++v520;
      if (v513)
      {
        v520 = v521;
        goto LABEL_214;
      }
    }
  }

  while (1)
  {
LABEL_214:
    v522 = __clz(__rbit64(v513)) | (v520 << 6);
    v523 = v732;
    v524 = v743;
    (*(v744 + 16))(v743, *(v732 + 6) + *(v744 + 72) * v522, v749);
    v525 = *(v523 + 7);
    v526 = v525 + *(*(type metadata accessor for NANPairedDeviceSharedAssociation(0) - 8) + 72) * v522;
    v527 = v745;
    sub_10036D334(v526, v524 + *(v745 + 48), type metadata accessor for NANPairedDeviceSharedAssociation);
    v528 = v747;
    sub_10001CEA8(v524, v747, &unk_100597500, &unk_1004939B0);
    v529 = v746;
    sub_100012400(v528, v746, &unk_100597500, &unk_1004939B0);
    v530 = *(v527 + 48);
    v531 = v748;
    sub_10036D334(v529 + v530, v748, type metadata accessor for NANIdentityKey);
    sub_10036D24C(v529 + v530, type metadata accessor for NANPairedDeviceSharedAssociation);
    v452 = v531;
    v532 = NANIdentityKey.generateIdentityResolutionAttribute(for:with:using:)(v729, v750, v733);
    v758 = v533;
    v759 = v532;
    v493 = v534;
    AssociatedConformanceWitness = v535;
    v536 = v535 >> 62;
    if (v535 >> 62 == 3)
    {
      if (v759)
      {
        v537 = 0;
      }

      else
      {
        v537 = AssociatedConformanceWitness == 0xC000000000000000;
      }

      v539 = !v537 || v757 < 3;
      if (((v539 | v724) & 1) == 0)
      {
        goto LABEL_265;
      }

LABEL_233:
      v540 = 0;
      goto LABEL_236;
    }

    if (v536 > 1)
    {
      if (v536 != 2)
      {
        goto LABEL_233;
      }

      v542 = *(v759 + 16);
      v541 = *(v759 + 24);
      v543 = __OFSUB__(v541, v542);
      v540 = v541 - v542;
      if (v543)
      {
        goto LABEL_360;
      }
    }

    else if (v536)
    {
      LODWORD(v540) = HIDWORD(v759) - v759;
      if (__OFSUB__(HIDWORD(v759), v759))
      {
        goto LABEL_359;
      }

      v540 = v540;
    }

    else
    {
      v540 = BYTE6(AssociatedConformanceWitness);
    }

LABEL_236:
    if (v757 > 1)
    {
      if (v757 != 2)
      {
        if (v540)
        {
          goto LABEL_297;
        }

        goto LABEL_265;
      }

      v546 = v750[2];
      v545 = v750[3];
      v543 = __OFSUB__(v545, v546);
      v544 = v545 - v546;
      if (v543)
      {
        goto LABEL_356;
      }
    }

    else
    {
      v544 = v722;
      if (v757)
      {
        v544 = v718;
        if (v719)
        {
          goto LABEL_355;
        }
      }
    }

    if (v540 != v544)
    {
      goto LABEL_297;
    }

    if (v540 < 1)
    {
      goto LABEL_265;
    }

    if (v536 > 1)
    {
      if (v536 != 2)
      {
        *(v787 + 6) = 0;
        *&v787[0] = 0;
        v560 = v750;
        v452 = v733;
        sub_10000AB0C(v750, v733);
        v561 = v751;
        sub_100031E04(v787, v560, v452, &v794);
        v751 = v561;
        v550 = v560;
        v551 = v452;
LABEL_261:
        sub_1000124C8(v550, v551);
        if ((v794 & 1) == 0)
        {
          goto LABEL_297;
        }

        goto LABEL_265;
      }

      v553 = *(v759 + 16);
      v552 = *(v759 + 24);
      sub_10000AB0C(v750, v733);
      v452 = AssociatedConformanceWitness & 0x3FFFFFFFFFFFFFFFLL;
      v554 = __DataStorage._bytes.getter();
      if (v554)
      {
        v452 = AssociatedConformanceWitness & 0x3FFFFFFFFFFFFFFFLL;
        v555 = __DataStorage._offset.getter();
        if (__OFSUB__(v553, v555))
        {
          goto LABEL_369;
        }

        v554 += v553 - v555;
      }

      if (__OFSUB__(v552, v553))
      {
        goto LABEL_366;
      }
    }

    else
    {
      if (!v536)
      {
        *&v787[0] = v759;
        DWORD2(v787[0]) = AssociatedConformanceWitness;
        WORD6(v787[0]) = WORD2(AssociatedConformanceWitness);
        v452 = v787 + BYTE6(AssociatedConformanceWitness);
        v547 = v750;
        v548 = v733;
        sub_10000AB0C(v750, v733);
        v549 = v751;
        sub_100031E04(v787, v547, v548, &v794);
        v751 = v549;
        v550 = v547;
        v551 = v548;
        goto LABEL_261;
      }

      v556 = v759;
      if (v759 >> 32 < v759)
      {
        goto LABEL_365;
      }

      sub_10000AB0C(v750, v733);
      v557 = __DataStorage._bytes.getter();
      if (v557)
      {
        v558 = v557;
        v452 = AssociatedConformanceWitness & 0x3FFFFFFFFFFFFFFFLL;
        v559 = __DataStorage._offset.getter();
        if (__OFSUB__(v556, v559))
        {
          goto LABEL_370;
        }

        v554 = v556 - v559 + v558;
      }

      else
      {
        v554 = 0;
      }
    }

    __DataStorage._length.getter();
    v562 = v554;
    v564 = v750;
    v563 = v751;
    v452 = v733;
    sub_100031E04(v562, v750, v733, v787);
    v751 = v563;
    sub_1000124C8(v564, v452);
    if ((v787[0] & 1) == 0)
    {
      goto LABEL_297;
    }

LABEL_265:
    v565 = v493 >> 62;
    if (v493 >> 62 == 3)
    {
      if (v758)
      {
        v566 = 0;
      }

      else
      {
        v566 = v493 == 0xC000000000000000;
      }

      v568 = !v566 || v731 < 3;
      if (((v568 | v721) & 1) == 0)
      {
        sub_1000124C8(v759, AssociatedConformanceWitness);
        v710 = 0;
        v711 = 0xC000000000000000;
        goto LABEL_350;
      }

LABEL_284:
      v569 = 0;
      goto LABEL_285;
    }

    if (v565 > 1)
    {
      if (v565 != 2)
      {
        goto LABEL_284;
      }

      v571 = *(v758 + 16);
      v570 = *(v758 + 24);
      v543 = __OFSUB__(v570, v571);
      v569 = v570 - v571;
      if (v543)
      {
        goto LABEL_361;
      }
    }

    else if (v565)
    {
      LODWORD(v569) = HIDWORD(v758) - v758;
      if (__OFSUB__(HIDWORD(v758), v758))
      {
        goto LABEL_362;
      }

      v569 = v569;
    }

    else
    {
      v569 = BYTE6(v493);
    }

LABEL_285:
    if (v731 > 1)
    {
      break;
    }

    v572 = v720;
    if (v731)
    {
      v572 = v716;
      if (v717)
      {
        goto LABEL_357;
      }
    }

LABEL_291:
    if (v569 != v572)
    {
      goto LABEL_297;
    }

    if (v569 < 1)
    {
      goto LABEL_349;
    }

    if (v565 > 1)
    {
      if (v565 != 2)
      {
        *(v787 + 6) = 0;
        *&v787[0] = 0;
        v588 = v725;
        v589 = v726;
        sub_10000AB0C(v726, v725);
        v590 = v751;
        sub_100031E04(v787, v589, v588, &v794);
        v751 = v590;
        sub_1000124C8(v589, v588);
        sub_1000124C8(v759, AssociatedConformanceWitness);
        v579 = v758;
        goto LABEL_314;
      }

      v581 = *(v758 + 16);
      v580 = *(v758 + 24);
      sub_10000AB0C(v726, v725);
      v452 = v493 & 0x3FFFFFFFFFFFFFFFLL;
      v582 = __DataStorage._bytes.getter();
      if (v582)
      {
        v452 = v493 & 0x3FFFFFFFFFFFFFFFLL;
        v583 = __DataStorage._offset.getter();
        if (__OFSUB__(v581, v583))
        {
          goto LABEL_367;
        }

        v582 += v581 - v583;
      }

      if (__OFSUB__(v580, v581))
      {
        goto LABEL_364;
      }
    }

    else
    {
      if (!v565)
      {
        v575 = v758;
        *&v787[0] = v758;
        WORD4(v787[0]) = v493;
        BYTE10(v787[0]) = BYTE2(v493);
        BYTE11(v787[0]) = BYTE3(v493);
        BYTE12(v787[0]) = BYTE4(v493);
        BYTE13(v787[0]) = BYTE5(v493);
        v576 = v725;
        v577 = v726;
        sub_10000AB0C(v726, v725);
        v578 = v751;
        sub_100031E04(v787, v577, v576, &v794);
        v751 = v578;
        sub_1000124C8(v577, v576);
        sub_1000124C8(v759, AssociatedConformanceWitness);
        v579 = v575;
LABEL_314:
        sub_1000124C8(v579, v493);
        v452 = v794;
        goto LABEL_317;
      }

      v584 = v758;
      if (v758 >> 32 < v758)
      {
        goto LABEL_363;
      }

      sub_10000AB0C(v726, v725);
      v585 = __DataStorage._bytes.getter();
      if (v585)
      {
        v586 = v585;
        v452 = v493 & 0x3FFFFFFFFFFFFFFFLL;
        v587 = __DataStorage._offset.getter();
        if (__OFSUB__(v584, v587))
        {
          goto LABEL_368;
        }

        v582 = v584 - v587 + v586;
      }

      else
      {
        v582 = 0;
      }
    }

    __DataStorage._length.getter();
    v591 = v582;
    v592 = v725;
    v593 = v726;
    v594 = v751;
    sub_100031E04(v591, v726, v725, v787);
    v751 = v594;
    sub_1000124C8(v593, v592);
    sub_1000124C8(v759, AssociatedConformanceWitness);
    sub_1000124C8(v758, v493);
    v452 = LOBYTE(v787[0]);
LABEL_317:
    sub_10036D24C(v748, type metadata accessor for NANIdentityKey);
    (*v730)(v746, v749);
    if (v452)
    {
      goto LABEL_351;
    }

LABEL_298:
    v513 &= v513 - 1;
    sub_100016290(v747, &unk_100597500, &unk_1004939B0);
    if (!v513)
    {
      goto LABEL_210;
    }
  }

  if (v731 == 2)
  {
    v574 = *(v726 + 16);
    v573 = *(v726 + 24);
    v543 = __OFSUB__(v573, v574);
    v572 = v573 - v574;
    if (v543)
    {
      goto LABEL_358;
    }

    goto LABEL_291;
  }

  if (v569)
  {
LABEL_297:
    sub_1000124C8(v759, AssociatedConformanceWitness);
    sub_1000124C8(v758, v493);
    sub_10036D24C(v748, type metadata accessor for NANIdentityKey);
    (*v730)(v746, v749);
    goto LABEL_298;
  }

LABEL_349:
  sub_1000124C8(v759, AssociatedConformanceWitness);
  v710 = v758;
  v711 = v493;
LABEL_350:
  sub_1000124C8(v710, v711);
  sub_10036D24C(v748, type metadata accessor for NANIdentityKey);
  (*v730)(v746, v749);
LABEL_351:

  v712 = v742;
  sub_10001CEA8(v747, v742, &unk_100597500, &unk_1004939B0);
  (*(v741 + 56))(v712, 0, 1, v745);
LABEL_327:

  if ((*(v741 + 48))(v742, 1, v745) == 1)
  {
    sub_1000124C8(v750, v733);
    sub_1000124C8(v726, v725);
    sub_100016290(v742, &unk_1005985B0, &unk_1004939A0);
    goto LABEL_165;
  }

  v649 = *(v745 + 48);
  v651 = v738;
  v650 = v739;
  v652 = *(v739 + 48);
  v653 = *(v744 + 32);
  v654 = v742;
  v655 = v749;
  v653(v738, v742, v749);
  sub_10036D640(v654 + v649, &v651[v652], type metadata accessor for NANPairedDeviceSharedAssociation);
  v656 = *(v650 + 48);
  v653(v740, v651, v655);
  sub_10036D24C(&v651[v656], type metadata accessor for NANPairedDeviceSharedAssociation);
  v657 = qword_100596C88;
  v658 = v774;
  swift_beginAccess();
  v659 = *(v658 + v657);
  LOBYTE(v791[0]) = v727;
  v660 = v772;
  v661 = v773;
  v662 = _s8InstanceCMa_0();
  v663 = swift_getWitnessTable();
  *&v787[0] = v661;
  *(&v787[0] + 1) = v662;
  *&v787[1] = v660;
  *(&v787[1] + 1) = v663;
  type metadata accessor for NANDiscoveryEngine.ServiceSession();
  Dictionary.subscript.getter();
  v664 = v792;
  if (!v792)
  {
    swift_endAccess();
    sub_1000124C8(v750, v733);
    sub_1000124C8(v726, v725);
    (*v730)(v740, v749);
LABEL_165:
    v437 = v751;
    v465 = v775;
    v435 = v753;
    v332 = v755;
    goto LABEL_166;
  }

  v665 = v792;
  swift_endAccess();
  sub_100058BA4(v664);
  AssociatedConformanceWitness = v665;
  v666 = v665 + qword_10059B890;
  swift_beginAccess();
  v667 = *(type metadata accessor for NANPublish.Configuration() + 84);
  v759 = v666;
  v452 = *(v666 + v667 + 16);
  v668 = *(v452 + 16);

  v669 = 0;
  v670 = _swiftEmptyArrayStorage;
LABEL_332:
  v671 = 56 * v669 + 32;
  while (v668 != v669)
  {
    if (v669 >= *(v452 + 16))
    {
      goto LABEL_354;
    }

    ++v669;
    v672 = *(v452 + v671);
    v671 += 56;
    if (v672 == v752)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v670 = sub_1003A79E0(0, *(v670 + 2) + 1, 1, v670);
      }

      v674 = *(v670 + 2);
      v673 = *(v670 + 3);
      if (v674 >= v673 >> 1)
      {
        v670 = sub_1003A79E0((v673 > 1), v674 + 1, 1, v670);
      }

      *(v670 + 2) = v674 + 1;
      v670[v674 + 32] = v752;
      goto LABEL_332;
    }
  }

  *&v787[0] = v670;
  v675 = sub_10005DC58(&unk_100597490, &qword_1004B17B0);
  v676 = sub_10000CADC(&qword_100595C30, &unk_100597490, &qword_1004B17B0);
  LODWORD(v758) = Collection<>.strongestSupportedPairingKeySuite.getter(v675, v676);
  if (v758 == 8)
  {
    (*v730)(v740, v749);
    sub_1000124C8(v750, v733);
    sub_1000124C8(v726, v725);

    goto LABEL_165;
  }

  swift_unownedRetainStrong();
  v677 = v744;
  v773 = *(v744 + 16);
  v678 = v736;
  v679 = v740;
  v680 = v749;
  (v773)(v736, v740, v749);
  (*(v677 + 56))(v678, 0, 1, v680);
  v681 = v735;
  v682 = v729;
  sub_10040CD68(v729, v735);
  sub_10036C8F0(v678, v681 + *(v763 + 88));
  sub_10040E430(v681, v682);

  (v773)(v737, v679, v680);
  v683 = Logger.logObject.getter();
  v684 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v683, v684))
  {
    v685 = swift_slowAlloc();
    v686 = swift_slowAlloc();
    *&v787[0] = v686;
    *v685 = 136315138;
    sub_10036D49C(&qword_100597520, &type metadata accessor for UUID);
    v687 = v737;
    v688 = v749;
    v689 = dispatch thunk of CustomStringConvertible.description.getter();
    v691 = v690;
    v692 = *v730;
    v774 = (v730 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
    v693 = v687;
    v694 = v692;
    v692(v693, v688);
    v695 = sub_100002320(v689, v691, v787);

    *(v685 + 4) = v695;
    _os_log_impl(&_mh_execute_header, v683, v684, "pairing auth: Cached paired peer UUID:%s was found, forming a new responder instance", v685, 0xCu);
    sub_100002A00(v686);
  }

  else
  {

    v696 = *v730;
    v774 = (v730 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
    v694 = v696;
    v696(v737, v749);
  }

  v697 = *(v759 + 8);
  v698 = *(v759 + 16);

  v699 = NANServiceName.description.getter(v697, v698);
  v701 = v700;

  v702 = v715;
  swift_unownedRetainStrong();
  memset(v787, 0, 104);
  v703 = AssociatedConformanceWitness;
  v705 = *(AssociatedConformanceWitness + qword_10059B8C8);
  v704 = *(AssociatedConformanceWitness + qword_10059B8C8 + 8);

  v707 = sub_1004405F4(v702, v729, v727, v699, v701, v758, v787, 0, v705, v706);

  v708 = sub_1002EBB84();
  v709 = *(v707 + qword_10059BC80);
  *(v707 + qword_10059BC80) = v708;
  swift_unknownObjectRelease();
  *&v792 = v707;
  BYTE8(v792) = 1;
  LOBYTE(v783) = v765;
  BYTE1(v783) = v767;
  BYTE2(v783) = v770;
  BYTE3(v783) = v762;
  BYTE4(v783) = v766;
  BYTE5(v783) = v768;
  swift_beginAccess();
  type metadata accessor for Dictionary();

  Dictionary.subscript.setter();
  swift_endAccess();
  sub_100438ED8(v775, v769, v50, v754);

  sub_1000124C8(v750, v733);
  sub_1000124C8(v726, v725);

  sub_1001854F8(v788);
  sub_1001854F8(v788);
  v694(v740, v749);
LABEL_117:
  v61 = v771;
  return sub_10036D24C(v61, type metadata accessor for DriverEvent);
}

void sub_100343820(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *(*(type metadata accessor for DriverEvent(0) - 8) + 64);
  __chkstk_darwin();
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    (*(a6 + 88))(a4, a5, a6);
  }

  else
  {
    sub_10036D334(a4, v12, type metadata accessor for DriverEvent);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v22 = v16;
      *v15 = 136315138;
      v17 = DriverEvent.description.getter();
      v19 = v18;
      sub_10036D24C(v12, type metadata accessor for DriverEvent);
      v20 = sub_100002320(v17, v19, &v22);

      *(v15 + 4) = v20;
      _os_log_impl(&_mh_execute_header, v13, v14, "Did not find a service to handle %s", v15, 0xCu);
      sub_100002A00(v16);
    }

    else
    {

      sub_10036D24C(v12, type metadata accessor for DriverEvent);
    }
  }
}

void sub_100343A1C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v59 = a3;
  v62 = a1;
  v50 = a1 >> 8;
  v51 = a1 >> 16;
  v63 = BYTE2(a1);
  v52 = a1 >> 24;
  v53 = HIDWORD(a1);
  v64 = BYTE3(a1);
  v65 = BYTE4(a1);
  v54 = a1 >> 40;
  v55 = HIWORD(a1);
  v66 = BYTE5(a1);
  v67 = BYTE6(a1);
  v5 = *a2;
  v58 = type metadata accessor for DriverEvent(0);
  v6 = *(*(v58 - 8) + 64);
  __chkstk_darwin();
  v56 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v57 = &v48 - v8;
  __chkstk_darwin();
  v10 = &v48 - v9;
  v11 = qword_100596C90;
  swift_beginAccess();
  v12 = *(a2 + v11);
  v13 = *(v5 + 80);
  v14 = *(v5 + 88);
  v15 = _s17InitiatorInstanceCMa();
  WitnessTable = swift_getWitnessTable();
  v61[0] = v13;
  v61[1] = v15;
  v61[2] = v14;
  v61[3] = WitnessTable;
  type metadata accessor for NANDiscoveryEngine.ServiceSession();
  sub_10020CB70();
  Dictionary.subscript.getter();
  v17 = v68;
  if (v68)
  {
    v18 = v69;
    swift_endAccess();
    v19 = v17;

    v20 = v17;
    v21 = v18;
    v22 = a2;
    v23 = v59;
    v24 = v59;
  }

  else
  {
    v49 = v10;
    v25 = v59;
    swift_endAccess();
    v26 = qword_100596C98;
    swift_beginAccess();
    v27 = *(a2 + v26);
    LOBYTE(v62) = a1;
    HIBYTE(v62) = v50;
    v63 = v51;
    v64 = v52;
    v65 = v53;
    v66 = v54;
    v67 = v55;
    v15 = _s17ResponderInstanceCMa();
    WitnessTable = swift_getWitnessTable();
    v61[0] = v13;
    v61[1] = v15;
    v61[2] = v14;
    v61[3] = WitnessTable;
    type metadata accessor for NANDiscoveryEngine.ServiceSession();
    Dictionary.subscript.getter();
    v17 = v68;
    if (!v68)
    {
      swift_endAccess();
      v36 = v25;
      v37 = v49;
      sub_10036D334(v36, v49, type metadata accessor for DriverEvent);
      v38 = Logger.logObject.getter();
      v39 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v38, v39))
      {

        v33 = v37;
        goto LABEL_12;
      }

      v40 = swift_slowAlloc();
      v61[0] = swift_slowAlloc();
      *v40 = 136315394;
      v41 = NANPeerServiceIdentifier.description.getter(a1 & 0xFFFFFFFFFFFFFFLL);
      v43 = sub_100002320(v41, v42, v61);

      *(v40 + 4) = v43;
      *(v40 + 12) = 2080;
      v44 = DriverEvent.description.getter();
      v46 = v45;
      sub_10036D24C(v37, type metadata accessor for DriverEvent);
      v47 = sub_100002320(v44, v46, v61);

      *(v40 + 14) = v47;
      _os_log_impl(&_mh_execute_header, v38, v39, "Did not find a datapath[%s] to handle %s", v40, 0x16u);
      swift_arrayDestroy();

      return;
    }

    v28 = v69;
    swift_endAccess();
    v19 = v17;

    v20 = v17;
    v21 = v28;
    v22 = a2;
    v23 = v25;
    v24 = v25;
  }

  sub_100343820(v20, v21, v22, v24, v15, WitnessTable);
  sub_100058BA4(v17);

  v29 = *(a2 + qword_100596CF0);
  sub_100344084();
  sub_1003448A8();
  sub_10033D51C();
  v30 = v57;
  sub_10036D334(v23, v57, type metadata accessor for DriverEvent);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_10036D24C(v30, type metadata accessor for DriverEvent);
  }

  else
  {
    memcpy(v60, v30, 0x16AuLL);
    memcpy(v61, v30, 0x16AuLL);
    if (sub_100185198(v61) == 8)
    {
      NANBitmap.Channel.operatingClass.getter(v61);
      v31 = *(a2 + *(*a2 + 296));
      sub_10036EEBC(v23);
      sub_100339E54();
LABEL_15:
      sub_1003452CC();
      v35 = *(a2 + qword_100596D00);
      sub_1003544B0();
      sub_1003547A0();
      return;
    }

    sub_1001854F8(v60);
  }

  v32 = v56;
  sub_10036D334(v23, v56, type metadata accessor for DriverEvent);
  if (swift_getEnumCaseMultiPayload())
  {
    v33 = v32;
LABEL_12:
    sub_10036D24C(v33, type metadata accessor for DriverEvent);
    return;
  }

  memcpy(v60, v32, 0x16AuLL);
  memcpy(v61, v32, 0x16AuLL);
  if (sub_100185198(v61) == 9)
  {
    NANBitmap.Channel.operatingClass.getter(v61);
    v34 = *(a2 + qword_100596CF8);
    sub_10034ABD0();
    goto LABEL_15;
  }

  sub_1001854F8(v60);
}

uint64_t sub_100344084()
{
  v1 = v0;
  v2 = *v0;
  v3 = type metadata accessor for DispatchTimeInterval();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v7 = &v49[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v9 = &v49[-v8];
  __chkstk_darwin();
  v11 = &v49[-v10];
  __chkstk_darwin();
  v13 = &v49[-v12];
  v14 = *(v0 + qword_100596DC8);
  swift_unownedRetainStrong();
  v15 = sub_100019F94();

  if (v15)
  {
  }

  else
  {
    v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v16 & 1) == 0)
    {
      v27 = *(v1 + 16);
      *(v1 + 16) = 0;

      return sub_100352334(v27);
    }
  }

  v53 = v9;
  swift_unownedRetainStrong();
  sub_10040CAE8();

  v17 = sub_10033BF54();

  if (v17)
  {
    LODWORD(result) = *(v1 + 16);
    if (result != 4)
    {
LABEL_8:
      v22 = 4;
LABEL_9:
      *(v1 + 16) = v22;
      return sub_100352334(result);
    }

    v51 = v2;
    v52 = v7;
    sub_100352A28();
    *v11 = 20;
    v19 = enum case for DispatchTimeInterval.seconds(_:);
    (*(v4 + 104))(v11, enum case for DispatchTimeInterval.seconds(_:), v3);
    v20 = static DispatchTimeInterval.< infix(_:_:)();
    v21 = *(v4 + 8);
    v21(v11, v3);
    v21(v13, v3);
    if (v20)
    {
      LOBYTE(result) = *(v1 + 16);
      goto LABEL_8;
    }
  }

  else
  {
    v51 = v2;
    v52 = v7;
    v19 = enum case for DispatchTimeInterval.seconds(_:);
  }

  v54 = v1;
  swift_unownedRetainStrong();
  sub_10040ED24();

  *v11 = 5;
  v23 = *(v4 + 104);
  v23(v11, v19, v3);
  v24 = static DispatchTimeInterval.< infix(_:_:)();
  v25 = *(v4 + 8);
  v25(v11, v3);
  v25(v13, v3);
  if (v24)
  {
    goto LABEL_13;
  }

  swift_unownedRetainStrong();
  sub_10040E9C0(v13);

  *v11 = 5;
  v23(v11, v19, v3);
  v26 = static DispatchTimeInterval.< infix(_:_:)();
  v25(v11, v3);
  v25(v13, v3);
  if (v26)
  {
LABEL_13:
    LOBYTE(result) = *(v54 + 16);
    *(v54 + 16) = 3;
    return sub_100352334(result);
  }

  v50 = v19;
  v28 = v23;
  v1 = v54;
  if (*(v54 + 16) == 1)
  {
    sub_100352A28();
    *v11 = 8;
    v28(v11, v50, v3);
    v29 = static DispatchTimeInterval.< infix(_:_:)();
    v25(v11, v3);
    v25(v13, v3);
    if (v29)
    {
      LOBYTE(result) = *(v1 + 16);
      v22 = 2;
      goto LABEL_9;
    }
  }

  sub_100352A28();
  v30 = *(v1 + 16);
  if (v30 <= 1)
  {
    if (*(v1 + 16))
    {
      v31 = 8;
    }

    else
    {
      v31 = 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  else if (v30 == 2)
  {
    v31 = 1;
  }

  else if (v30 == 3)
  {
    v31 = 5;
  }

  else
  {
    v31 = 20;
  }

  v32 = v52;
  *v52 = v31;
  v28(v32, v50, v3);
  v33 = v53;
  v34 = static DispatchTimeInterval.< infix(_:_:)();
  v25(v32, v3);
  v25(v33, v3);
  result = *(v1 + 16);
  if (result == 4)
  {
    if (!v34)
    {
      swift_unownedRetainStrong();
      v35 = sub_10040CAE8();

      v36 = qword_100596C80;
      swift_beginAccess();
      v37 = *(v35 + v36);
      v38 = *(v51 + 80);
      v39 = *(v51 + 88);
      v40 = _s8InstanceCMa();
      WitnessTable = swift_getWitnessTable();
      v55 = v38;
      v56 = v40;
      v57 = v39;
      v58 = WitnessTable;
      type metadata accessor for NANDiscoveryEngine.ServiceSession();
      v42 = NANBitmap.Channel.operatingClass.getter(v37);

      v52 = v49;
      v55 = v42;
      __chkstk_darwin();
      *&v49[-16] = v38;
      *&v49[-8] = v39;
      type metadata accessor for Dictionary.Values();
      v53 = &protocol conformance descriptor for [A : B].Values;
      swift_getWitnessTable();
      Sequence.forEach(_:)();

      swift_unownedRetainStrong();
      v43 = sub_10040CAE8();

      v44 = qword_100596C88;
      swift_beginAccess();
      v45 = *(v43 + v44);
      v46 = _s8InstanceCMa_0();
      v47 = swift_getWitnessTable();
      v55 = v38;
      v56 = v46;
      v57 = v39;
      v58 = v47;
      type metadata accessor for NANDiscoveryEngine.ServiceSession();
      v48 = NANBitmap.Channel.operatingClass.getter(v45);

      v52 = v49;
      v55 = v48;
      __chkstk_darwin();
      *&v49[-16] = v38;
      *&v49[-8] = v39;
      type metadata accessor for Dictionary.Values();
      swift_getWitnessTable();
      Sequence.forEach(_:)();

      LOBYTE(result) = *(v1 + 16);
LABEL_35:
      v22 = 1;
      goto LABEL_9;
    }
  }

  else if (!v34)
  {
    goto LABEL_35;
  }

  return result;
}

uint64_t sub_1003448A8()
{
  v1 = v0;
  v2 = *v0;
  v68 = type metadata accessor for DispatchTimeInterval();
  v70 = *(v68 - 8);
  v3 = *(v70 + 64);
  __chkstk_darwin();
  v5 = v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v61 = v60 - v6;
  v66 = sub_10005DC58(&unk_1005973E0, &qword_10048D650);
  v7 = *(*(v66 - 8) + 64);
  __chkstk_darwin();
  v67 = v60 - v8;
  v9 = *(*(sub_10005DC58(&unk_10059B170, &unk_1004B4D70) - 8) + 64);
  __chkstk_darwin();
  v11 = v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v64 = v60 - v12;
  __chkstk_darwin();
  v71 = v60 - v13;
  __chkstk_darwin();
  v72 = (v60 - v14);
  v15 = qword_100596C90;
  swift_beginAccess();
  v65 = v15;
  v16 = *(v1 + v15);
  v17 = *(v2 + 80);
  v18 = *(v2 + 88);
  v19 = _s17InitiatorInstanceCMa();
  WitnessTable = swift_getWitnessTable();
  v75 = v17;
  v76 = v19;
  v77 = v18;
  v78 = WitnessTable;
  type metadata accessor for NANDiscoveryEngine.ServiceSession();
  sub_10020CB70();
  v75 = NANBitmap.Channel.operatingClass.getter(v16);
  v73 = v17;
  v74 = v18;
  type metadata accessor for Dictionary.Values();

  swift_getWitnessTable();
  LOBYTE(v19) = Sequence.contains(where:)();

  v62 = v5;
  v63 = v11;
  v69 = 0;
  if (v19)
  {
    v21 = 1;
  }

  else
  {
    v22 = qword_100596C98;
    swift_beginAccess();
    v23 = *(v1 + v22);
    v24 = _s17ResponderInstanceCMa();
    v25 = swift_getWitnessTable();
    v75 = v17;
    v76 = v24;
    v77 = v18;
    v78 = v25;
    type metadata accessor for NANDiscoveryEngine.ServiceSession();
    v26 = NANBitmap.Channel.operatingClass.getter(v23);
    v60[1] = v60;
    v75 = v26;
    __chkstk_darwin();
    v60[-2] = v17;
    v60[-1] = v18;
    type metadata accessor for Dictionary.Values();

    swift_getWitnessTable();
    v27 = v69;
    v21 = Sequence.contains(where:)();
    v69 = v27;
  }

  v28 = *(v1 + v65);

  v29 = Dictionary.isEmpty.getter();

  v30 = v72;
  if ((v29 & 1) == 0)
  {
    goto LABEL_7;
  }

  v31 = qword_100596C98;
  swift_beginAccess();
  v32 = *(v1 + v31);
  v33 = _s17ResponderInstanceCMa();

  v34 = swift_getWitnessTable();
  v75 = v17;
  v76 = v33;
  v77 = v18;
  v78 = v34;
  type metadata accessor for NANDiscoveryEngine.ServiceSession();
  LOBYTE(v33) = Dictionary.isEmpty.getter();

  if (v33)
  {
    v35 = v70;
    v36 = *(v70 + 56);
    v37 = v68;
    v36(v30, 1, 1, v68);
  }

  else
  {
LABEL_7:
    v35 = v70;
    v38 = (v70 + 104);
    v39 = (v70 + 56);
    if (v21)
    {
      v40 = 1;
    }

    else
    {
      v40 = 3;
    }

    *v30 = v40;
    v37 = v68;
    (*v38)(v30, enum case for DispatchTimeInterval.seconds(_:), v68);
    v36 = *v39;
    (*v39)(v30, 0, 1, v37);
  }

  v41 = v71;
  v42 = qword_100596CC0;
  v43 = *(v1 + qword_100596CC0);
  if (v43)
  {
    (*(v35 + 16))(v71, v43 + OBJC_IVAR____TtC7CoreP2P8P2PTimer_repeatingInterval, v37);
    v44 = 0;
  }

  else
  {
    v44 = 1;
  }

  v36(v41, v44, 1, v37);
  v45 = *(v66 + 48);
  v46 = v67;
  sub_100012400(v30, v67, &unk_10059B170, &unk_1004B4D70);
  sub_100012400(v41, v46 + v45, &unk_10059B170, &unk_1004B4D70);
  v47 = v41;
  v48 = *(v35 + 48);
  if (v48(v46, 1, v37) != 1)
  {
    v49 = v64;
    sub_100012400(v46, v64, &unk_10059B170, &unk_1004B4D70);
    if (v48(v46 + v45, 1, v37) != 1)
    {
      v57 = v46 + v45;
      v58 = v61;
      (*(v35 + 32))(v61, v57, v37);
      sub_10036D49C(&qword_1005973F0, &type metadata accessor for DispatchTimeInterval);
      LODWORD(v68) = dispatch thunk of static Equatable.== infix(_:_:)();
      v59 = *(v35 + 8);
      v59(v58, v37);
      sub_100016290(v71, &unk_10059B170, &unk_1004B4D70);
      v59(v64, v37);
      v30 = v72;
      sub_100016290(v46, &unk_10059B170, &unk_1004B4D70);
      if (v68)
      {
        return sub_100016290(v30, &unk_10059B170, &unk_1004B4D70);
      }

LABEL_20:
      v50 = v63;
      sub_100012400(v30, v63, &unk_10059B170, &unk_1004B4D70);
      if (v48(v50, 1, v37) == 1)
      {
        sub_100016290(v30, &unk_10059B170, &unk_1004B4D70);
        v51 = 0;
      }

      else
      {
        v52 = v70;
        v53 = v62;
        (*(v70 + 32))(v62, v50, v37);
        v54 = v69;
        sub_10034EA78(v53, v1, &v75);
        if (v54)
        {
          result = (*(v52 + 8))(v53, v37);
          __break(1u);
          return result;
        }

        (*(v52 + 8))(v53, v37);
        sub_100016290(v72, &unk_10059B170, &unk_1004B4D70);
        v51 = v75;
      }

      v55 = *(v1 + v42);
      *(v1 + v42) = v51;
    }

    sub_100016290(v71, &unk_10059B170, &unk_1004B4D70);
    (*(v35 + 8))(v49, v37);
LABEL_19:
    sub_100016290(v46, &unk_1005973E0, &qword_10048D650);
    goto LABEL_20;
  }

  sub_100016290(v47, &unk_10059B170, &unk_1004B4D70);
  if (v48(v46 + v45, 1, v37) != 1)
  {
    goto LABEL_19;
  }

  sub_100016290(v46, &unk_10059B170, &unk_1004B4D70);
  return sub_100016290(v30, &unk_10059B170, &unk_1004B4D70);
}

void sub_1003452CC()
{
  v1 = v0;
  v2 = sub_10005DC58(&qword_1005973B0, &qword_1004B1690);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin();
  v5 = &v12 - v4;
  if (sub_10034A0AC() < 1)
  {
    v8 = *(sub_10033ABB0() + 16);

    if (v8)
    {
      v7 = 4;
    }

    else
    {
      v7 = 6;
    }

    v6 = v1 + *(*v1 + 272);
    swift_beginAccess();
  }

  else
  {
    v6 = v0 + *(*v0 + 272);
    swift_beginAccess();
    v7 = 5;
  }

  sub_100012400(v6, v5, &qword_1005973B0, &qword_1004B1690);
  v5[*(v2 + 36)] = v7;
  sub_10033D3FC(v5);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 134217984;
    *(v11 + 4) = sub_10034A0AC();

    _os_log_impl(&_mh_execute_header, v9, v10, "realtimeDatapathCount %ld", v11, 0xCu);
  }

  else
  {
  }
}

void sub_1003454C0(unint64_t a1, unint64_t a2)
{
  v3 = v2;
  v53 = a2;
  v57 = a1;
  v4 = *v2;
  v5 = v4[11];
  v6 = *(v5 + 8);
  v7 = v4[10];
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v8 = type metadata accessor for Preferences();
  v55 = *(v8 - 8);
  v56 = v8;
  v9 = *(v55 + 64);
  __chkstk_darwin();
  v54 = &v52 - v10;
  swift_getAssociatedTypeWitness();
  v52 = v5;
  v11 = *(swift_getAssociatedConformanceWitness() + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(AssociatedTypeWitness - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin();
  v16 = &v52 - v15;
  v17 = *(v3 + v4[38]);
  swift_unownedRetainStrong();
  v18 = *(v17 + *(*v17 + 800));
  swift_unownedRetainStrong();

  (*(*v18 + 168))(v19);

  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v21 = (*(AssociatedConformanceWitness + 8))(AssociatedTypeWitness, AssociatedConformanceWitness);
  (*(v13 + 8))(v16, AssociatedTypeWitness);
  v58[0] = *WiFiDriverCapabilities.supportsDynamicSDB.unsafeMutableAddressor();
  v67 = v21;
  sub_1000C2A14();

  LOBYTE(v18) = dispatch thunk of SetAlgebra.isSuperset(of:)();

  if ((v18 & 1) == 0)
  {
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v48, v49))
    {
LABEL_11:

      return;
    }

    v50 = swift_slowAlloc();
    *v50 = 0;
    v51 = "dynamicSDBSwitch is disabled because device cap doesn't support dynamicSDB'";
LABEL_10:
    _os_log_impl(&_mh_execute_header, v48, v49, v51, v50, 2u);

    goto LABEL_11;
  }

  v22 = v57;
  if ((sub_10034E8A0(v57 >> 8, v3) & 1) == 0)
  {
    return;
  }

  swift_unownedRetainStrong();
  v23 = v54;
  WiFiInterface.preferences.getter();

  v24 = v56;
  v25 = Preferences.dynamicSDBSwitch.getter(v56);
  (*(v55 + 8))(v23, v24);
  if ((v25 & 1) == 0)
  {
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v48, v49))
    {
      goto LABEL_11;
    }

    v50 = swift_slowAlloc();
    *v50 = 0;
    v51 = "dynamicSDBSwitch is disabled. To enable dynamicSDBSwitch, set 'wifip2p Preferences dynamicSDBSwitch=true'";
    goto LABEL_10;
  }

  v26 = v53;
  v27 = v53 >> 40;
  v28 = v22;
  v29 = HIDWORD(v53);
  v30 = v53 >> 24;
  v31 = v53 >> 16;
  v32 = qword_100596C98;
  v33 = v53 >> 8;
  swift_beginAccess();
  v34 = *(v3 + v32);
  v59 = v28;
  v60 = v26;
  v61 = v33;
  v62 = v31;
  v63 = v30;
  v64 = v29;
  v65 = v27;
  v35 = v52;
  v36 = _s17ResponderInstanceCMa();
  WitnessTable = swift_getWitnessTable();
  v58[0] = v7;
  v58[1] = v36;
  v58[2] = v35;
  v58[3] = WitnessTable;
  type metadata accessor for NANDiscoveryEngine.ServiceSession();
  sub_10020CB70();
  Dictionary.subscript.getter();
  v38 = v66;
  if (v66)
  {
    v39 = v66;
    swift_endAccess();
    sub_100058BA4(v38);
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v58[0] = v43;
      *v42 = 16777730;
      *(v42 + 4) = v57;
      *(v42 + 5) = 2080;
      v44 = WiFiAddress.description.getter(v26 & 0xFFFFFFFFFFFFLL);
      v46 = sub_100002320(v44, v45, v58);

      *(v42 + 7) = v46;
      _os_log_impl(&_mh_execute_header, v40, v41, "dynamicSDBSwitch for responder %hhu peerAddress %s", v42, 0xFu);
      sub_100002A00(v43);
    }

    v47 = v39;
    sub_1002BF508(1);
  }

  else
  {
    swift_endAccess();
  }
}

void sub_100345B68()
{
  v1 = *v0;
  v2 = qword_100596C98;
  swift_beginAccess();
  v3 = *(v0 + v2);
  v4 = *(v1 + 80);
  v5 = *(v1 + 88);
  _s17ResponderInstanceCMa();
  swift_getWitnessTable();
  type metadata accessor for NANDiscoveryEngine.ServiceSession();
  sub_10020CB70();
  Dictionary.subscript.getter();
  if (v14)
  {
    v6 = v14;
    swift_endAccess();
    sub_100058BA4(v14);
    if (*(v6 + qword_10059B850))
    {
      v7 = v6;
      v8 = Logger.logObject.getter();
      v9 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        *v10 = 138412290;
        *(v10 + 4) = v7;
        *v11 = v14;
        v12 = v7;
        _os_log_impl(&_mh_execute_header, v8, v9, "nan dapapath terminated with %@ dynamicSDBSwitch back to normal", v10, 0xCu);
        sub_100016290(v11, &qword_10058B780, &qword_100480AC0);
      }

      v13 = v7;
      sub_1002BF508(0);
    }

    else
    {
    }
  }

  else
  {
    swift_endAccess();
  }
}

void sub_100345DD4(int a1, NSObject *a2, unint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t a1))
{
  v350 = a3;
  v351 = a5;
  v352 = a2;
  v328 = a1;
  v6 = *v5;
  v7 = *(*(sub_10005DC58(&unk_100597330, &unk_100481FA0) - 8) + 64);
  __chkstk_darwin();
  v338 = &v307 - v8;
  v344 = type metadata accessor for UUID();
  v346 = *(v344 - 8);
  v9 = *(v346 + 64);
  __chkstk_darwin();
  v329 = &v307 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v331 = &v307 - v11;
  v335 = sub_10005DC58(&qword_10058FF00, &qword_1004939D0);
  v12 = *(*(v335 - 8) + 64);
  __chkstk_darwin();
  v336 = &v307 - v13;
  v14 = *(*(sub_10005DC58(&qword_10058F4D0, &qword_100491AB0) - 8) + 64);
  __chkstk_darwin();
  v327 = &v307 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v339 = &v307 - v16;
  __chkstk_darwin();
  v333 = &v307 - v17;
  __chkstk_darwin();
  v332 = &v307 - v18;
  __chkstk_darwin();
  v337 = &v307 - v19;
  __chkstk_darwin();
  v345 = &v307 - v20;
  v347 = type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes(0);
  v21 = *(*(v347 - 1) + 64);
  __chkstk_darwin();
  v340 = &v307 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v342 = *(v6 + 88);
  v23 = *(v342 + 8);
  v348 = *(v6 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v343 = *(AssociatedTypeWitness - 8);
  v24 = *(v343 + 64);
  __chkstk_darwin();
  v330 = &v307 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v334 = &v307 - v26;
  __chkstk_darwin();
  v28 = &v307 - v27;
  v29 = type metadata accessor for NANPeer(0);
  v30 = *(*(v29 - 8) + 64);
  __chkstk_darwin();
  v32 = &v307 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v349 = *(type metadata accessor for NANAttribute(0) - 8);
  v33 = *(v349 + 64);
  __chkstk_darwin();
  v35 = &v307 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v37 = (&v307 - v36);
  v38 = *(*(type metadata accessor for NANAttribute.CustomDeviceInformation(0) - 8) + 64);
  __chkstk_darwin();
  __chkstk_darwin();
  __chkstk_darwin();
  __chkstk_darwin();
  __chkstk_darwin();
  __chkstk_darwin();
  __chkstk_darwin();
  __chkstk_darwin();
  v40 = &v307 - v39;
  __chkstk_darwin();
  __chkstk_darwin();
  __chkstk_darwin();
  __chkstk_darwin();
  v42 = &v307 - v41;
  __chkstk_darwin();
  v44 = &v307 - v43;
  v45 = __chkstk_darwin();
  if ((v352 & 0xC0000000) != 0)
  {
    v352 = Logger.logObject.getter();
    v57 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v352, v57))
    {
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v354 = v59;
      *v58 = 136315138;
      v60 = WiFiAddress.description.getter(v351 & 0xFFFFFFFFFFFFLL);
      v62 = sub_100002320(v60, v61, &v354);

      *(v58 + 4) = v62;
      _os_log_impl(&_mh_execute_header, v352, v57, "Failed to parse the action frame contents from %s as a vendor specific NAN action frame", v58, 0xCu);
      sub_100002A00(v59);
    }

    else
    {
      v86 = v352;
    }

    return;
  }

  v325 = v35;
  v321 = v44;
  v323 = v28;
  v322 = v40;
  v326 = v29;
  v324 = v32;
  v63 = v350;
  if (!*(v350 + 16))
  {
    goto LABEL_22;
  }

  v317 = v52;
  v313 = v51;
  v312 = v50;
  v310 = v49;
  v316 = v48;
  v314 = v47;
  v311 = v46;
  v319 = v56;
  v309 = v55;
  v315 = v54;
  v352 = (&v307 - v53);
  v320 = v45;
  v64 = (*(v349 + 80) + 32) & ~*(v349 + 80);
  sub_10036D334(v350 + v64, v37, type metadata accessor for NANAttribute);
  if (swift_getEnumCaseMultiPayload() == 41)
  {
    v65 = *(v37 + 2);
    v67 = *(v37 + 1);
    v66 = *(v37 + 2);
    v68 = *v37;
    v69 = OUI.apple.unsafeMutableAddressor();
    v70 = static OUI.== infix(_:_:)(v68 | (v65 << 16), *v69 | (*(v69 + 2) << 16));
    v71 = v343;
    if (v70)
    {
      v72 = v67;
      v350 = v66;
      v73 = *(*v5 + 304);
      v318 = v5;
      v74 = *(v5 + v73);
      swift_unownedRetainStrong();
      v75 = v324;
      sub_10040CD68(v351 & 0xFFFFFFFFFFFFLL, v324);

      LODWORD(v349) = sub_1002E172C();
      sub_10036D24C(v75, type metadata accessor for NANPeer);
      swift_unownedRetainStrong();
      v76 = *(*v74 + 96);
      swift_beginAccess();
      v77 = v74 + v76;
      v78 = v323;
      v79 = AssociatedTypeWitness;
      v325 = *(v71 + 16);
      v325(v323, v77, AssociatedTypeWitness);

      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v308 = *(AssociatedConformanceWitness + 32);
      v81 = v308(v79, AssociatedConformanceWitness);
      v323 = *(v71 + 8);
      v323(v78, v79);
      if (v81 < 4u)
      {
        v82 = 0;
        v83 = v340;
LABEL_9:
        v321 = AssociatedConformanceWitness;
        LODWORD(v340) = v82;
        type metadata accessor for BinaryDecoder();
        v84 = v350;
        sub_10000AB0C(v72, v350);
        sub_10036D49C(&qword_10058CFB8, type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes);
        v85 = v83;
        static BinaryDecoder.decode<A>(_:data:)(v347, v72, v84, v347);
        sub_1000124C8(v72, v84);
        v349 = 0;
        v141 = *v83;
        *v85 = 0;
        swift_unownedRetainStrong();
        v142 = *(*v74 + 96);
        swift_beginAccess();
        v143 = v74 + v142;
        v144 = v334;
        v325(v334, v143, v79);

        v145 = v308(v79, v321);
        sub_1000124C8(v72, v84);
        v323(v144, v79);
        v146 = v352;
        sub_10036D640(v85, v352 + *(v320 + 7), type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes);
        v147 = v146;
        LOBYTE(v146->isa) = v145;
        BYTE1(v146->isa) = 0;
        HIDWORD(v146->isa) = v141;
        v148 = v349;
LABEL_87:
        v5 = v318;
        v89 = v326;
        goto LABEL_17;
      }

      v83 = v340;
      if ((v81 & 0xFC) == 4)
      {
        v82 = (v81 & 3) != 0;
        if ((v349 & v82) == 0)
        {
          goto LABEL_9;
        }
      }

      else if ((v349 & 1) == 0)
      {
        v82 = 1;
        goto LABEL_9;
      }

      type metadata accessor for BinaryDecoder();
      v149 = v350;
      sub_10000AB0C(v72, v350);
      sub_10036D49C(&qword_100597550, type metadata accessor for NANAttribute.CustomDeviceInformation);
      v150 = v321;
      v148 = 0;
      static BinaryDecoder.decode<A>(_:data:)(v320, v72, v149, v320);
      sub_1000124C8(v72, v149);
      sub_1000124C8(v72, v149);
      v213 = v150;
      v214 = v352;
      sub_10036D640(v213, v352, type metadata accessor for NANAttribute.CustomDeviceInformation);
      v147 = v214;
      goto LABEL_87;
    }

    sub_1000124C8(v67, v66);
  }

  else
  {
    sub_10036D24C(v37, type metadata accessor for NANAttribute);
  }

  v87 = v325;
  sub_10036D334(v63 + v64, v325, type metadata accessor for NANAttribute);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v89 = v326;
  if (EnumCaseMultiPayload != 40)
  {
    sub_10036D24C(v87, type metadata accessor for NANAttribute);
LABEL_22:
    v104 = Logger.logObject.getter();
    v105 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v104, v105))
    {
      v106 = swift_slowAlloc();
      v107 = swift_slowAlloc();
      v354 = v107;
      *v106 = 136315138;
      v108 = WiFiAddress.description.getter(v351 & 0xFFFFFFFFFFFFLL);
      v110 = sub_100002320(v108, v109, &v354);

      *(v106 + 4) = v110;
      _os_log_impl(&_mh_execute_header, v104, v105, "Failed to parse the action frame attributes from %s as a vendor specific NAN action frame", v106, 0xCu);
      sub_100002A00(v107);
    }

    return;
  }

  sub_10036D640(v87, v42, type metadata accessor for NANAttribute.CustomDeviceInformation);
  v90 = v352;
  sub_10036D640(v42, v352, type metadata accessor for NANAttribute.CustomDeviceInformation);
  v147 = v90;
  v148 = 0;
LABEL_17:
  isa_high = HIDWORD(v147->isa);
  v92 = NANAttribute.CustomDeviceInformation.Flags.triggeredWatchdogReset.unsafeMutableAddressor();
  v93 = v344;
  v94 = v345;
  v95 = v346;
  if ((*v92 & ~isa_high) == 0)
  {
    v96 = *(*v5 + 304);
    v318 = v5;
    v97 = *(v5 + v96);
    swift_unownedRetainStrong();
    v98 = v324;
    sub_10040CD68(v351 & 0xFFFFFFFFFFFFLL, v324);

    sub_100012400(v98 + *(v89 + 124), v94, &qword_10058F4D0, &qword_100491AB0);
    sub_10036D24C(v98, type metadata accessor for NANPeer);
    v99 = *(v95 + 48);
    v100 = v99(v94, 1, v93);
    v350 = v99;
    if (v100 == 1)
    {
      v101 = 0;
LABEL_20:
      v102 = v318;
      v103 = v338;
LABEL_59:
      v152 = *(v102 + qword_100596CF8);
      type metadata accessor for P2PTimer();
      variable initialization expression of AWDLPeer.lastUpdated();
      v153 = type metadata accessor for DispatchTime();
      (*(*(v153 - 8) + 56))(v103, 0, 1, v153);
      sub_100349238(v103);
      v154 = v319;
      sub_10036D334(v352, v319, type metadata accessor for NANAttribute.CustomDeviceInformation);
      v155 = Logger.logObject.getter();
      v156 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v155, v156))
      {
        v157 = swift_slowAlloc();
        v354 = swift_slowAlloc();
        *v157 = 136315394;
        v158 = WiFiAddress.description.getter(v351 & 0xFFFFFFFFFFFFLL);
        v160 = sub_100002320(v158, v159, &v354);

        *(v157 + 4) = v160;
        *(v157 + 12) = 2080;
        LODWORD(v349) = v101;
        if (v101)
        {
          v161 = 0xE800000000000000;
          v162 = 0x676E69686374616DLL;
          v163 = v342;
          v164 = v348;
          v165 = v319;
        }

        else
        {
          v165 = v319;
          v166 = v314;
          sub_10036D334(v319, v314, type metadata accessor for NANAttribute.CustomDeviceInformation);
          v167 = v166 + *(v320 + 7);
          v168 = v333;
          sub_100012400(v167 + v347[10], v333, &qword_10058F4D0, &qword_100491AB0);
          sub_10036D24C(v167, type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes);
          v169 = (v350)(v168, 1, v344);
          sub_100016290(v168, &qword_10058F4D0, &qword_100491AB0);
          if (v169 == 1)
          {
            v162 = 0x676E697373696DLL;
          }

          else
          {
            v162 = 0x686374616D73696DLL;
          }

          if (v169 == 1)
          {
            v161 = 0xE700000000000000;
          }

          else
          {
            v161 = 0xEB00000000676E69;
          }

          v163 = v342;
          v164 = v348;
        }

        sub_10036D24C(v165, type metadata accessor for NANAttribute.CustomDeviceInformation);
        v170 = sub_100002320(v162, v161, &v354);

        *(v157 + 14) = v170;
        _os_log_impl(&_mh_execute_header, v155, v156, "Received SOS watchdog recovery from %s with %s UUID", v157, 0x16u);
        swift_arrayDestroy();

        v93 = v344;
        v95 = v346;
        LOBYTE(v101) = v349;
      }

      else
      {

        sub_10036D24C(v154, type metadata accessor for NANAttribute.CustomDeviceInformation);
        v163 = v342;
        v164 = v348;
      }

      swift_unownedRetainStrong();
      v171 = v339;
      (*(v95 + 56))(v339, 1, 1, v93);
      v172 = v351;
      v173 = v324;
      sub_10040CD68(v351 & 0xFFFFFFFFFFFFLL, v324);
      sub_10036C8F0(v171, v173 + *(v326 + 124));
      sub_10040E430(v173, v172 & 0xFFFFFFFFFFFFLL);

      v174 = qword_100596C90;
      v175 = v318;
      swift_beginAccess();
      v176 = *(v175 + v174);
      v177 = _s17InitiatorInstanceCMa();

      WitnessTable = swift_getWitnessTable();
      sub_10034934C(v176, v172 & 0xFFFFFFFFFFFFLL, v101 & 1, v164, v177, v163, WitnessTable);

      v179 = qword_100596C98;
      swift_beginAccess();
      v180 = *(v175 + v179);
      v181 = _s17ResponderInstanceCMa();

      v182 = swift_getWitnessTable();
      sub_10034934C(v180, v172 & 0xFFFFFFFFFFFFLL, v101 & 1, v164, v181, v163, v182);

      sub_1003448A8();
      sub_10033D51C();
      sub_100016290(v345, &qword_10058F4D0, &qword_100491AB0);
      goto LABEL_72;
    }

    v122 = v317;
    sub_10036D334(v352, v317, type metadata accessor for NANAttribute.CustomDeviceInformation);
    v123 = v122 + *(v320 + 7);
    v124 = v93;
    v125 = v337;
    sub_100012400(v123 + v347[10], v337, &qword_10058F4D0, &qword_100491AB0);
    sub_10036D24C(v123, type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes);
    v126 = *(v335 + 48);
    v127 = v336;
    sub_100012400(v125, v336, &qword_10058F4D0, &qword_100491AB0);
    sub_100012400(v94, v127 + v126, &qword_10058F4D0, &qword_100491AB0);
    if (v99(v127, 1, v124) == 1)
    {
      sub_100016290(v125, &qword_10058F4D0, &qword_100491AB0);
      v128 = v99((v127 + v126), 1, v124);
      v102 = v318;
      v103 = v338;
      v93 = v124;
      v95 = v346;
      if (v128 == 1)
      {
        sub_100016290(v127, &qword_10058F4D0, &qword_100491AB0);
        v101 = 1;
        goto LABEL_59;
      }
    }

    else
    {
      v151 = v332;
      sub_100012400(v127, v332, &qword_10058F4D0, &qword_100491AB0);
      v93 = v124;
      if (v99((v127 + v126), 1, v124) != 1)
      {
        v95 = v346;
        v209 = v127 + v126;
        v210 = v331;
        (*(v346 + 32))(v331, v209, v93);
        sub_10036D49C(&qword_100597540, &type metadata accessor for UUID);
        v211 = dispatch thunk of static Equatable.== infix(_:_:)();
        v212 = *(v95 + 8);
        v212(v210, v93);
        sub_100016290(v337, &qword_10058F4D0, &qword_100491AB0);
        v212(v151, v93);
        v101 = v211;
        sub_100016290(v127, &qword_10058F4D0, &qword_100491AB0);
        goto LABEL_20;
      }

      sub_100016290(v337, &qword_10058F4D0, &qword_100491AB0);
      v95 = v346;
      (*(v346 + 8))(v151, v93);
      v102 = v318;
      v103 = v338;
    }

    sub_100016290(v127, &qword_10058FF00, &qword_1004939D0);
    v101 = 0;
    goto LABEL_59;
  }

  v349 = v148;
  v111 = NANAttribute.CustomDeviceInformation.Flags.linkConditionFeedbackRequest.unsafeMutableAddressor();
  v112 = v347;
  if ((*v111 & ~isa_high) == 0)
  {
    v113 = qword_100596C80;
    swift_beginAccess();
    v114 = *(v5 + v113);
    v115 = 1 << *(v114 + 32);
    v116 = -1;
    if (v115 < 64)
    {
      v116 = ~(-1 << v115);
    }

    v112 = v116 & *(v114 + 64);
    v117 = (v115 + 63) >> 6;

    v95 = 0;
    v93 = &qword_10059BAF8;
    while (v112)
    {
LABEL_34:
      v119 = __clz(__rbit64(v112));
      v112 &= v112 - 1;
      v120 = *(v114 + 56) + ((v95 << 10) | (16 * v119));
      v5 = *(*v120 + qword_10059BAF8);
      if (v5)
      {
        v121 = *(v120 + 8);
        v94 = *v120;

        sub_100424F8C(v351 & 0xFFFFFFFFFFFFLL);
      }
    }

    while (1)
    {
      v118 = v95 + 1;
      if (__OFADD__(v95, 1))
      {
        break;
      }

      if (v118 >= v117)
      {
        goto LABEL_113;
      }

      v112 = *(v114 + 64 + 8 * v118);
      ++v95;
      if (v112)
      {
        v95 = v118;
        goto LABEL_34;
      }
    }

    __break(1u);
LABEL_117:
    __break(1u);
    goto LABEL_118;
  }

  v129 = v352;
  v130 = v322;
  sub_10036D334(v352, v322, type metadata accessor for NANAttribute.CustomDeviceInformation);
  v131 = v130 + *(v320 + 7);
  v132 = *(v131 + *(v112 + 52));

  sub_10036D24C(v131, type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes);
  if (v132)
  {

    v133 = qword_100596C88;
    swift_beginAccess();
    v134 = *(v5 + v133);
    v135 = 1 << *(v134 + 32);
    v136 = -1;
    if (v135 < 64)
    {
      v136 = ~(-1 << v135);
    }

    v112 = v136 & *(v134 + 64);
    v117 = (v135 + 63) >> 6;

    v95 = 0;
    v93 = &qword_10059B8B0;
    while (v112)
    {
LABEL_51:
      v138 = __clz(__rbit64(v112));
      v112 &= v112 - 1;
      v139 = *(v134 + 56) + ((v95 << 10) | (16 * v138));
      v5 = *(*v139 + qword_10059B8B0);
      if (v5)
      {
        v140 = *(v139 + 8);
        v94 = *v139;

        sub_100318C0C(v351 & 0xFFFFFFFFFFFFLL, v352);
      }
    }

    while (1)
    {
      v137 = v95 + 1;
      if (__OFADD__(v95, 1))
      {
        goto LABEL_117;
      }

      if (v137 >= v117)
      {
        goto LABEL_113;
      }

      v112 = *(v134 + 64 + 8 * v137);
      ++v95;
      if (v112)
      {
        v95 = v137;
        goto LABEL_51;
      }
    }
  }

  v183 = v313;
  sub_10036D334(v129, v313, type metadata accessor for NANAttribute.CustomDeviceInformation);
  v184 = v183 + *(v320 + 7);
  v185 = *(v184 + *(v112 + 56));

  sub_10036D24C(v184, type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes);
  if (v185)
  {

    v186 = qword_100596C80;
    swift_beginAccess();
    v187 = *(v5 + v186);
    v190 = *(v187 + 64);
    v189 = v187 + 64;
    v188 = v190;
    v191 = 1 << *(*(v5 + v186) + 32);
    v192 = -1;
    if (v191 < 64)
    {
      v192 = ~(-1 << v191);
    }

    v193 = v192 & v188;
    v194 = (v191 + 63) >> 6;

    v196 = 0;
    v197 = v316;
    v348 = v195;
    while (v193)
    {
LABEL_82:
      v199 = __clz(__rbit64(v193));
      v193 &= v193 - 1;
      v200 = *(v195 + 56) + ((v196 << 10) | (16 * v199));
      v201 = *v200;
      if (*(*v200 + qword_10059BAF8))
      {
        v202 = *(v200 + 8);
        v203 = v197;
        sub_10036D334(v352, v197, type metadata accessor for NANAttribute.CustomDeviceInformation);
        v350 = v203 + *(v320 + 7);
        v204 = (v350 + v347[14]);
        v205 = *v204;
        v206 = v204[1];
        v207 = v204[2];

        v208 = v201;

        sub_10036D24C(v350, type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes);
        if (!v205)
        {
          goto LABEL_129;
        }

        sub_1004252D0(v351 & 0xFFFFFFFFFFFFLL, v205, v206, v207);

        v197 = v316;
        v195 = v348;
      }
    }

    while (1)
    {
      v198 = v196 + 1;
      if (__OFADD__(v196, 1))
      {
        break;
      }

      if (v198 >= v194)
      {
        goto LABEL_113;
      }

      v193 = *(v189 + 8 * v198);
      ++v196;
      if (v193)
      {
        v196 = v198;
        goto LABEL_82;
      }
    }

    __break(1u);
  }

  else
  {
    v215 = v312;
    sub_10036D334(v129, v312, type metadata accessor for NANAttribute.CustomDeviceInformation);
    v216 = v215 + *(v320 + 7);
    v217 = (v216 + *(v112 + 60));
    v218 = *v217;
    v219 = v217[1];
    sub_10005D67C(*v217, v219);
    sub_10036D24C(v216, type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes);
    if (v219 >> 60 == 15)
    {
      v220 = v315;
      sub_10036D334(v129, v315, type metadata accessor for NANAttribute.CustomDeviceInformation);
      v221 = v220 + *(v320 + 7);
      v222 = *(v221 + *(v112 + 44));

      sub_10036D24C(v221, type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes);
      v223 = *(v222 + 16);

      if (!v223)
      {
        v269 = Logger.logObject.getter();
        v270 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v269, v270))
        {
          v271 = swift_slowAlloc();
          v272 = swift_slowAlloc();
          v354 = v272;
          *v271 = 136315138;
          v273 = WiFiAddress.description.getter(v351 & 0xFFFFFFFFFFFFLL);
          v275 = sub_100002320(v273, v274, &v354);

          *(v271 + 4) = v275;
          _os_log_impl(&_mh_execute_header, v269, v270, "No keep alive datapath identifers provided skipping update from %s", v271, 0xCu);
          sub_100002A00(v272);
        }

        goto LABEL_123;
      }

      v318 = v5;
      v5 = v339;
      v224 = v349;
      v225 = v315;
      v117 = v329;
      if (((1 << v328) & 0x6E) != 0)
      {
LABEL_120:
        v351 = type metadata accessor for NANAttribute.CustomDeviceInformation;
        v279 = v352;
        v280 = v225;
        sub_10036D334(v352, v225, type metadata accessor for NANAttribute.CustomDeviceInformation);
        v281 = v320;
        v282 = v280 + *(v320 + 7);
        v283 = *(v282 + *(v112 + 44));

        sub_10036D24C(v282, type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes);
        v284 = sub_100475AE8(v283);

        __chkstk_darwin();
        v285 = v318;
        *(&v307 - 2) = v318;
        *(&v307 - 1) = v279;
        sub_1004483BC(sub_10036D39C, (&v307 - 4), v284);

        v286 = *(v285 + *(*v285 + 304));
        swift_unownedRetainStrong();
        v287 = *(*v286 + 96);
        swift_beginAccess();
        v288 = v343;
        v289 = v286 + v287;
        v290 = v330;
        v291 = AssociatedTypeWitness;
        (*(v343 + 16))(v330, v289, AssociatedTypeWitness);

        v292 = v311;
        sub_10036D334(v279, v311, v351);
        v293 = v292 + *(v281 + 7);
        v294 = *(v293 + *(v112 + 44));

        sub_10036D24C(v293, type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes);
        v295 = swift_getAssociatedConformanceWitness();
        (*(v295 + 504))(v294, v291, v295);
        if (!v224)
        {
          (*(v288 + 8))(v290, v291);

          goto LABEL_72;
        }

        (*(v288 + 8))(v290, v291);

        v296 = v309;
        sub_10036D334(v279, v309, type metadata accessor for NANAttribute.CustomDeviceInformation);
        v269 = Logger.logObject.getter();
        v297 = static os_log_type_t.error.getter();
        if (!os_log_type_enabled(v269, v297))
        {

          sub_10036D24C(v296, type metadata accessor for NANAttribute.CustomDeviceInformation);
          goto LABEL_72;
        }

        v298 = swift_slowAlloc();
        v299 = swift_slowAlloc();
        v353 = v299;
        *v298 = 136315138;
        v300 = v315;
        sub_10036D334(v296, v315, type metadata accessor for NANAttribute.CustomDeviceInformation);
        v301 = v300 + *(v320 + 7);
        v302 = *(v301 + *(v112 + 44));

        sub_10036D24C(v301, type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes);
        v303 = Array.description.getter();
        v305 = v304;

        sub_10036D24C(v296, type metadata accessor for NANAttribute.CustomDeviceInformation);
        v306 = sub_100002320(v303, v305, &v353);

        *(v298 + 4) = v306;
        _os_log_impl(&_mh_execute_header, v269, v297, "Failed to notify driver of datapath identifiers received in keep alive: %s", v298, 0xCu);
        sub_100002A00(v299);

LABEL_123:

LABEL_72:
        sub_10036D24C(v352, type metadata accessor for NANAttribute.CustomDeviceInformation);
        return;
      }

      v226 = v310;
      sub_10036D334(v352, v310, type metadata accessor for NANAttribute.CustomDeviceInformation);
      v227 = v226 + *(v320 + 7);
      v94 = v327;
      sub_100012400(v227 + *(v112 + 40), v327, &qword_10058F4D0, &qword_100491AB0);
      sub_10036D24C(v227, type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes);
      if ((*(v95 + 48))(v94, 1, v93) == 1)
      {
        sub_100016290(v94, &qword_10058F4D0, &qword_100491AB0);
LABEL_119:
        v225 = v315;
        goto LABEL_120;
      }

LABEL_118:
      (*(v95 + 32))(v117, v94, v93);
      v276 = *(v318 + *(*v318 + 304));
      swift_unownedRetainStrong();
      (*(v95 + 16))(v5, v117, v93);
      (*(v95 + 56))(v5, 0, 1, v93);
      v277 = v351;
      v278 = v324;
      sub_10040CD68(v351 & 0xFFFFFFFFFFFFLL, v324);
      sub_10036C8F0(v5, v278 + *(v326 + 124));
      sub_10040E430(v278, v277 & 0xFFFFFFFFFFFFLL);
      v224 = v349;

      (*(v95 + 8))(v117, v93);
      goto LABEL_119;
    }

    sub_100017554(v218, v219);
    v228 = qword_100596C80;
    swift_beginAccess();
    v229 = *(v5 + v228);
    v232 = *(v229 + 64);
    v231 = v229 + 64;
    v230 = v232;
    v233 = 1 << *(*(v5 + v228) + 32);
    v234 = -1;
    if (v233 < 64)
    {
      v234 = ~(-1 << v233);
    }

    v235 = v234 & v230;
    v236 = (v233 + 63) >> 6;
    v350 = *(v5 + v228);

    v237 = 0;
    v318 = v5;
    while (v235)
    {
LABEL_101:
      v239 = __clz(__rbit64(v235));
      v235 &= v235 - 1;
      v240 = *(v350 + 56) + ((v237 << 10) | (16 * v239));
      v241 = *v240;
      if (*(*v240 + qword_10059BAF8))
      {
        v242 = *(v240 + 8);
        v243 = v315;
        sub_10036D334(v352, v315, type metadata accessor for NANAttribute.CustomDeviceInformation);
        v244 = v243 + *(v320 + 7);
        v245 = (v244 + v347[15]);
        v246 = *v245;
        v247 = v245[1];
        v248 = v241;

        sub_10005D67C(v246, v247);
        sub_10036D24C(v244, type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes);
        v249 = v246;
        sub_100426FEC(v351 & 0xFFFFFFFFFFFFLL, v246, v247);
        v5 = v318;

        sub_100017554(v249, v247);
      }
    }

    while (1)
    {
      v238 = v237 + 1;
      if (__OFADD__(v237, 1))
      {
        break;
      }

      if (v238 >= v236)
      {

        v250 = qword_100596C88;
        swift_beginAccess();
        v251 = *(v5 + v250);
        v252 = v251 + 64;
        v253 = 1 << *(v251 + 32);
        v254 = -1;
        if (v253 < 64)
        {
          v254 = ~(-1 << v253);
        }

        v255 = v254 & *(v251 + 64);
        v256 = (v253 + 63) >> 6;

        v257 = 0;
        v350 = v251;
        while (v255)
        {
LABEL_111:
          v259 = __clz(__rbit64(v255));
          v255 &= v255 - 1;
          v260 = *(v251 + 56) + ((v257 << 10) | (16 * v259));
          v261 = *v260;
          if (*(*v260 + qword_10059B8B0))
          {
            v262 = *(v260 + 8);
            v263 = v315;
            sub_10036D334(v352, v315, type metadata accessor for NANAttribute.CustomDeviceInformation);
            v264 = v263 + *(v320 + 7);
            v265 = (v264 + v347[15]);
            v266 = *v265;
            v267 = v265[1];
            v268 = v261;

            sub_10005D67C(v266, v267);
            sub_10036D24C(v264, type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes);
            sub_10031C6BC(v351 & 0xFFFFFFFFFFFFLL, v266, v267);
            v251 = v350;

            sub_100017554(v266, v267);
          }
        }

        while (1)
        {
          v258 = v257 + 1;
          if (__OFADD__(v257, 1))
          {
            goto LABEL_128;
          }

          if (v258 >= v256)
          {
LABEL_113:

            goto LABEL_72;
          }

          v255 = *(v252 + 8 * v258);
          ++v257;
          if (v255)
          {
            v257 = v258;
            goto LABEL_111;
          }
        }
      }

      v235 = *(v231 + 8 * v238);
      ++v237;
      if (v235)
      {
        v237 = v238;
        goto LABEL_101;
      }
    }
  }

  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
}

void sub_1003486F8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void, void, void))
{
  v6 = *a1;
  v7 = a1[1];
  v8 = a4(0, *(*a2 + 80), *(*a2 + 88));
  WitnessTable = swift_getWitnessTable();
  sub_100343820(v6, v7, a2, a3, v8, WitnessTable);
}

uint64_t sub_1003487A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = *a4;
  type metadata accessor for NANAttribute.CustomDeviceInformation(0);
  swift_projectBox();
  v11 = *(v9 + 80);
  v12 = *(v9 + 88);
  v13 = *(a7 + 8);
  type metadata accessor for NANDiscoveryEngine.ServiceSession();
  sub_10020CB70();
  NANBitmap.Channel.operatingClass.getter(a1);
  type metadata accessor for Dictionary.Values();

  swift_getWitnessTable();
  Sequence.forEach(_:)();
}

void sub_10034890C(uint64_t *a1, uint64_t *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v77 = a5;
  v72 = a3;
  v12 = *a4;
  v70 = type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes(0);
  v13 = *(*(v70 - 8) + 64);
  __chkstk_darwin();
  v68 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v69 = &v61 - v15;
  v71 = type metadata accessor for NANAttribute.CustomDeviceInformation(0);
  v16 = *(*(v71 - 8) + 64);
  __chkstk_darwin();
  v62 = &v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = *(v12 + 88);
  v18 = *(v65 + 8);
  v78 = a4;
  v64 = *(v12 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v66 = *(AssociatedTypeWitness - 8);
  v19 = *(v66 + 64);
  __chkstk_darwin();
  v63 = &v61 - v20;
  v21 = *(*(sub_10005DC58(&qword_10058F4D0, &qword_100491AB0) - 8) + 64);
  __chkstk_darwin();
  v23 = &v61 - v22;
  v24 = type metadata accessor for NANPeer(0);
  v25 = *(*(v24 - 8) + 64);
  __chkstk_darwin();
  v27 = &v61 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v29 = &v61 - v28;
  v30 = *a1;
  v74 = a1[1];
  v31 = (*(a7 + 24))(a6, a7);
  v76 = a7;
  v73 = v30;
  if (!sub_10036DCD0(a6, a7))
  {
    goto LABEL_4;
  }

  v61 = a6;
  swift_beginAccess();
  v32 = *a2;

  v33 = sub_100447BC4(v31 & 0xFFFFFFFFFFFFLL, v32);

  if (v33)
  {
    a6 = v61;
LABEL_4:
    v34 = v78;
    goto LABEL_15;
  }

  swift_beginAccess();
  sub_10046F438(v79, v31 & 0xFFFFFFFFFFFFLL);
  swift_endAccess();
  v34 = v78;
  v35 = *(v78 + *(*v78 + 304));
  swift_unownedRetainStrong();
  sub_10040CD68(v31 & 0xFFFFFFFFFFFFLL, v29);

  sub_100012400(&v29[*(v24 + 120)], v23, &qword_10058F4D0, &qword_100491AB0);
  sub_10036D24C(v29, type metadata accessor for NANPeer);
  v36 = v72;
  swift_beginAccess();
  v37 = v71;
  sub_10036C8F0(v23, v36 + *(v71 + 28) + *(v70 + 40));
  swift_unownedRetainStrong();
  v70 = v31;
  sub_10040CD68(v31 & 0xFFFFFFFFFFFFLL, v27);

  v38 = sub_1002E172C();
  sub_10036D24C(v27, type metadata accessor for NANPeer);
  if (!v38)
  {
    goto LABEL_7;
  }

  swift_unownedRetainStrong();
  v39 = *(*v35 + 96);
  swift_beginAccess();
  v40 = v66;
  v41 = v63;
  v42 = AssociatedTypeWitness;
  (*(v66 + 16))(v63, v35 + v39, AssociatedTypeWitness);

  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  LODWORD(v39) = (*(AssociatedConformanceWitness + 32))(v42, AssociatedConformanceWitness);
  (*(v40 + 8))(v41, v42);
  if (v39 >= 5)
  {
    swift_beginAccess();
    v49 = v62;
    sub_10036D334(v36, v62, type metadata accessor for NANAttribute.CustomDeviceInformation);
    v46 = NANActionFrame.init(customDeviceInformation:)(v49);
    v48 = v50;
  }

  else
  {
LABEL_7:
    swift_beginAccess();
    v44 = v69;
    sub_10036D334(v36 + *(v37 + 28), v69, type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes);
    *v44 = *(v36 + 4);
    v45 = v68;
    sub_10036D334(v44, v68, type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes);
    v46 = NANActionFrame.init(customAttributes:)(v45);
    v48 = v47;
    sub_10036D24C(v44, type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes);
  }

  v51 = v75;
  swift_unownedRetainStrong();
  sub_10040DD50();

  v80[0] = 0;
  v80[1] = v46;
  v80[2] = v48;
  v80[3] = 0;
  v81 = 2;
  sub_1003A8260(v80, v70 & 0xFFFFFFFFFFFFLL, 1, 0, 0, 0, 1, 3, 3000, NANBitmap.Channel.operatingClass.getter, 0);
  if (v51)
  {
    sub_100048C4C(v46);

    swift_errorRetain();
    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v82 = v56;
      *v54 = 136315394;
      v57 = WiFiAddress.description.getter(v70 & 0xFFFFFFFFFFFFLL);
      v59 = sub_100002320(v57, v58, &v82);

      *(v54 + 4) = v59;
      v34 = v78;
      *(v54 + 12) = 2112;
      swift_errorRetain();
      v60 = _swift_stdlib_bridgeErrorToNSError();
      *(v54 + 14) = v60;
      *v55 = v60;
      _os_log_impl(&_mh_execute_header, v52, v53, "Failed to transmit SOS watchdog recovery to %s because %@", v54, 0x16u);
      sub_100016290(v55, &qword_10058B780, &qword_100480AC0);

      sub_100002A00(v56);
    }

    else
    {
    }
  }

  else
  {
    sub_100048C4C(v46);
  }

  a6 = v61;
LABEL_15:
  sub_100343820(v73, v74, v34, v77, a6, *(v76 + 8));
}

uint64_t sub_1003491A8(uint64_t a1)
{
  v2 = *(type metadata accessor for NANPeer(0) + 120);
  sub_100016290(a1 + v2, &qword_10058F4D0, &qword_100491AB0);
  v3 = type metadata accessor for UUID();
  v4 = *(*(v3 - 8) + 56);

  return v4(a1 + v2, 1, 1, v3);
}

uint64_t sub_100349238(uint64_t a1)
{
  v3 = *(*(sub_10005DC58(&unk_100597330, &unk_100481FA0) - 8) + 64);
  __chkstk_darwin();
  v5 = &v8[-v4];
  v6 = qword_100596E50;
  swift_beginAccess();
  sub_100012400(v1 + v6, v5, &unk_100597330, &unk_100481FA0);
  swift_beginAccess();
  sub_10036D434(a1, v1 + v6, &unk_100597330, &unk_100481FA0);
  swift_endAccess();
  sub_1003530B8(v5);
  sub_100016290(a1, &unk_100597330, &unk_100481FA0);
  return sub_100016290(v5, &unk_100597330, &unk_100481FA0);
}

uint64_t sub_10034934C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = *(a7 + 8);
  type metadata accessor for NANDiscoveryEngine.ServiceSession();
  sub_10020CB70();
  NANBitmap.Channel.operatingClass.getter(a1);
  type metadata accessor for Dictionary.Values();

  swift_getWitnessTable();
  Sequence.filter(_:)();
  type metadata accessor for Array();
  swift_getWitnessTable();
  Sequence.forEach(_:)();
}

uint64_t sub_100349510(uint64_t *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = *a1;
  v12 = (*(a7 + 24))(a5, a7);
  if (static NANClusterChangeEvent.__derived_struct_equals(_:_:)(v12 & 0xFFFFFFFFFFFFLL, a2 & 0xFFFFFFFFFFFFLL))
  {
    v13 = !sub_10036DCD0(a5, a7) | a3;
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

void sub_1003495A4(unsigned __int8 *a1, void *a2)
{
  v3 = *a2;
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v27 = a1[4];
  v8 = a1[5];
  v9 = a1[6];
  v10 = qword_100596C90;
  swift_beginAccess();
  v28 = *(a2 + v10);
  v34 = v4;
  v35 = v5;
  v25 = v7;
  v26 = v6;
  v36 = v6;
  v11 = v9;
  v12 = a2;
  v37 = v7;
  v38 = v27;
  v39 = v8;
  v40 = v11;
  v13 = *(v3 + 80);
  v14 = *(v3 + 88);
  v29 = v13;
  v30 = _s17InitiatorInstanceCMa();
  v31 = v14;
  WitnessTable = swift_getWitnessTable();
  type metadata accessor for NANDiscoveryEngine.ServiceSession();
  sub_10020CB70();
  Dictionary.subscript.getter();
  if (v33)
  {
    v15 = v33;
    swift_endAccess();
    sub_100058BA4(v33);
    sub_10032CD0C();
  }

  else
  {
    swift_endAccess();
    v16 = qword_100596C98;
    swift_beginAccess();
    v17 = *(v12 + v16);
    v34 = v4;
    v35 = v5;
    v36 = v26;
    v37 = v7;
    v38 = v27;
    v39 = v8;
    v40 = v11;
    v29 = v13;
    v30 = _s17ResponderInstanceCMa();
    v31 = v14;
    WitnessTable = swift_getWitnessTable();
    type metadata accessor for NANDiscoveryEngine.ServiceSession();
    Dictionary.subscript.getter();
    swift_endAccess();
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v29 = v21;
      *v20 = 136315138;
      v22 = NANPeerServiceIdentifier.description.getter(v4 | (v5 << 8) | (v26 << 16) | (v25 << 24) | (v27 << 32) | (v8 << 40) | (v11 << 48));
      v24 = sub_100002320(v22, v23, &v29);

      *(v20 + 4) = v24;
      _os_log_impl(&_mh_execute_header, v18, v19, "Received a keep alive for a datapath: %s, but datapath not found", v20, 0xCu);
      sub_100002A00(v21);
    }
  }
}

uint64_t sub_100349934(uint64_t a1)
{
  v2 = *v1;
  v6 = *(a1 + qword_10059BA28);
  v7 = *(a1 + qword_10059BA28 + 4);
  swift_beginAccess();
  v3 = *(v2 + 80);
  v4 = *(v2 + 88);
  type metadata accessor for NANDiscoveryEngine.UnownedDeviceLink();
  sub_1002CAFC4();
  type metadata accessor for Dictionary();
  Dictionary.removeValue(forKey:)();
  swift_endAccess();
  return sub_10036C960(v8);
}

uint64_t sub_100349A14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *(a6 + 8);
  type metadata accessor for NANDiscoveryEngine.ServiceSession();
  sub_10020CB70();
  NANBitmap.Channel.operatingClass.getter(a1);
  type metadata accessor for Dictionary.Values();

  swift_getWitnessTable();
  v7 = Sequence.contains(where:)();

  return v7 & 1;
}

uint64_t sub_100349B74(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *a1;
  v10 = (*(a6 + 24))(a4, a6);
  if (static NANClusterChangeEvent.__derived_struct_equals(_:_:)(v10 & 0xFFFFFFFFFFFFLL, a2 & 0xFFFFFFFFFFFFLL))
  {
    return (*(a6 + 40))(a4, a6) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100349C0C()
{
  v1 = *v0;
  v2 = qword_100596C90;
  swift_beginAccess();
  v3 = *(v0 + v2);
  v4 = *(v1 + 80);
  v5 = *(v1 + 88);
  _s17InitiatorInstanceCMa();

  swift_getWitnessTable();
  type metadata accessor for NANDiscoveryEngine.ServiceSession();
  sub_10020CB70();
  v6 = Dictionary.count.getter();

  v7 = qword_100596C98;
  swift_beginAccess();
  v8 = *(v0 + v7);
  _s17ResponderInstanceCMa();

  swift_getWitnessTable();
  type metadata accessor for NANDiscoveryEngine.ServiceSession();
  v9 = Dictionary.count.getter();

  result = v6 + v9;
  if (__OFADD__(v6, v9))
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100349DAC()
{
  v1 = *v0;
  v2 = qword_100596CA0;
  swift_beginAccess();
  v3 = *(v0 + v2);
  v4 = *(v1 + 80);
  v5 = *(v1 + 88);
  type metadata accessor for NANDiscoveryEngine.UnownedDeviceLink();
  sub_1002CAFC4();
  Dictionary.subscript.getter();
  if (v7)
  {
    swift_unownedRetain();
    swift_endAccess();
    sub_10036C960(v7);
    swift_unownedRetainStrong();
    swift_unownedRelease();
  }

  else
  {
    swift_endAccess();
  }

  return v7;
}

uint64_t sub_100349E9C()
{
  v1 = *v0;
  v2 = qword_100596C80;
  swift_beginAccess();
  v3 = *(v0 + v2);
  v4 = *(v1 + 80);
  v5 = *(v1 + 88);
  _s8InstanceCMa();
  swift_getWitnessTable();
  type metadata accessor for NANDiscoveryEngine.ServiceSession();
  Dictionary.subscript.getter();
  if (v11)
  {
    v6 = v11;
    swift_endAccess();
    sub_100058BA4(v11);
    v7 = v6[qword_10059BAF0];
  }

  else
  {
    swift_endAccess();
    v8 = qword_100596C88;
    swift_beginAccess();
    v9 = *(v0 + v8);
    _s8InstanceCMa_0();
    swift_getWitnessTable();
    type metadata accessor for NANDiscoveryEngine.ServiceSession();
    Dictionary.subscript.getter();
    v7 = 0;
    swift_endAccess();
  }

  return v7;
}

uint64_t sub_10034A0AC()
{
  v1 = *v0;
  v2 = qword_100596C90;
  swift_beginAccess();
  v3 = *(v0 + v2);
  v4 = *(v1 + 80);
  v5 = *(v1 + 88);
  v6 = _s17InitiatorInstanceCMa();

  WitnessTable = swift_getWitnessTable();
  v8 = sub_10034A210(v3, v4, v6, v5, WitnessTable);

  v9 = qword_100596C98;
  swift_beginAccess();
  v10 = *(v0 + v9);
  v11 = _s17ResponderInstanceCMa();

  v12 = swift_getWitnessTable();
  v13 = sub_10034A210(v10, v4, v11, v5, v12);

  result = v8 + v13;
  if (__OFADD__(v8, v13))
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10034A210(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a5 + 8);
  type metadata accessor for NANDiscoveryEngine.ServiceSession();
  sub_10020CB70();
  NANBitmap.Channel.operatingClass.getter(a1);
  type metadata accessor for Dictionary.Values();

  swift_getWitnessTable();
  Sequence.filter(_:)();
  v6 = Array.count.getter();

  return v6;
}

uint64_t sub_10034A334(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a5 + 8);
  type metadata accessor for NANDiscoveryEngine.ServiceSession();
  sub_10020CB70();
  NANBitmap.Channel.operatingClass.getter(a1);
  type metadata accessor for Dictionary.Values();

  swift_getWitnessTable();
  v6 = Sequence.contains(where:)();

  return v6 & 1;
}

void sub_10034A4D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *v3;
  v7 = qword_100596C80;
  swift_beginAccess();
  v8 = *(v3 + v7);
  v9 = *(v6 + 80);
  v10 = *(v6 + 88);
  _s8InstanceCMa();
  swift_getWitnessTable();
  type metadata accessor for NANDiscoveryEngine.ServiceSession();
  Dictionary.subscript.getter();
  if (v14)
  {
    v11 = v14;
    swift_endAccess();
    sub_100058BA4(v14);
    sub_100390FDC(a3, a2 & 0xFFFFFFFFFFFFLL);
  }

  else
  {
    swift_endAccess();
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "Did not find a service to notify multicast sender error", v13, 2u);
    }
  }
}

void sub_10034A68C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *v4;
  v9 = qword_100596C80;
  swift_beginAccess();
  v10 = *(v4 + v9);
  v11 = *(v8 + 80);
  v12 = *(v8 + 88);
  _s8InstanceCMa();
  swift_getWitnessTable();
  type metadata accessor for NANDiscoveryEngine.ServiceSession();
  Dictionary.subscript.getter();
  if (v16)
  {
    v13 = v16;
    swift_endAccess();
    sub_100058BA4(v16);
    sub_10039106C(a3, a4, a2 & 0xFFFFFFFFFFFFLL);
  }

  else
  {
    swift_endAccess();
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "Did not find a service to notify receiving data blob", v15, 2u);
    }
  }
}

void sub_10034A84C(unint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v40 = a2;
  v7 = *v3;
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin();
  v12 = (&v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = OS_dispatch_queue.nan.unsafeMutableAddressor();
  v14 = *v13;
  *v12 = *v13;
  (*(v9 + 104))(v12, enum case for DispatchPredicate.onQueue(_:), v8);
  v15 = v14;
  v16 = _dispatchPreconditionTest(_:)();
  (*(v9 + 8))(v12, v8);
  if (v16)
  {
    v39 = a3;
    v17 = HIWORD(a1);
    v18 = a1 >> 40;
    v19 = HIDWORD(a1);
    v20 = a1 >> 24;
    v21 = qword_100596C90;
    swift_beginAccess();
    v36 = *(v4 + v21);
    v37 = a1 >> 8;
    v45 = a1;
    v38 = a1 >> 16;
    v46 = BYTE2(a1);
    v47 = BYTE3(a1);
    v48 = BYTE4(a1);
    v49 = BYTE5(a1);
    v50 = BYTE6(a1);
    v22 = *(v7 + 80);
    v23 = *(v7 + 88);
    v24 = _s17InitiatorInstanceCMa();
    WitnessTable = swift_getWitnessTable();
    v41 = v22;
    v42 = v24;
    v43 = v23;
    v44 = WitnessTable;
    type metadata accessor for NANDiscoveryEngine.ServiceSession();
    v36 = sub_10020CB70();
    Dictionary.subscript.getter();
    v26 = v51;
    if (v51)
    {
      v27 = v51;
      v35 = a1 >> 24;
      v17 = v27;
      swift_endAccess();
      sub_100058BA4(v26);
      v28 = v39;
      sub_10032C348(v40, v39);

      LOBYTE(v17) = BYTE6(a1);
      LOBYTE(v18) = BYTE5(a1);
      LOBYTE(v19) = BYTE4(a1);
      LOBYTE(v20) = v35;
    }

    else
    {
      swift_endAccess();
      v28 = v39;
    }

    v29 = qword_100596C98;
    swift_beginAccess();
    v30 = *(v4 + v29);
    LOBYTE(v45) = a1;
    HIBYTE(v45) = v37;
    v46 = v38;
    v47 = v20;
    v48 = v19;
    v49 = v18;
    v50 = v17;
    v31 = _s17ResponderInstanceCMa();
    v32 = swift_getWitnessTable();
    v41 = v22;
    v42 = v31;
    v43 = v23;
    v44 = v32;
    type metadata accessor for NANDiscoveryEngine.ServiceSession();
    Dictionary.subscript.getter();
    v33 = v51;
    if (v51)
    {
      v34 = v51;
      swift_endAccess();
      sub_100058BA4(v33);
      sub_1002C938C(v40, v28);
    }

    else
    {
      swift_endAccess();
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10034ABD0()
{
  v1 = *v0;
  v2 = type metadata accessor for DispatchTimeInterval();
  v123 = *(v2 - 8);
  v3 = *(v123 + 8);
  __chkstk_darwin();
  v121 = &v116 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v120 = &v116 - v5;
  __chkstk_darwin();
  v122 = &v116 - v6;
  __chkstk_darwin();
  v118 = (&v116 - v7);
  __chkstk_darwin();
  v9 = (&v116 - v8);
  v10 = *(*(sub_10005DC58(&unk_100597330, &unk_100481FA0) - 8) + 64);
  __chkstk_darwin();
  v12 = &v116 - v11;
  v13 = type metadata accessor for DispatchTime();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin();
  v17 = &v116 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v117 = &v116 - v18;
  v19 = *(v1 + 88);
  v124 = *(v1 + 80);
  v127 = v19;
  v126 = type metadata accessor for NANDiscoveryEngine.BeaconScheduler.Reason();
  v138 = Array.init()();
  v119 = *NANTimeUnit.defaultDiscoveryBeaconPeriod.unsafeMutableAddressor();
  v125 = v0;
  v20 = *(v0 + qword_100596E60);
  swift_unownedRetainStrong();
  v21 = sub_10040CAE8();

  v22 = *(v21 + qword_100596CF0);

  v23 = *(v22 + 16);

  if (v23 > 1)
  {
    v24 = v124;
    if (v23 != 2)
    {
      if (v23 != 3)
      {
        v25 = 260;
        goto LABEL_11;
      }

      v119 = *NANTimeUnit.initialDiscoveryBeaconPeriod.unsafeMutableAddressor();
    }

    v25 = 256;
LABEL_11:
    LOWORD(v133) = v25;
    type metadata accessor for Array();
    Array.append(_:)();
LABEL_12:
    v27 = qword_100596E50;
    v28 = v125;
    swift_beginAccess();
    sub_100012400(v28 + v27, v12, &unk_100597330, &unk_100481FA0);
    v29 = v14;
    if ((*(v14 + 48))(v12, 1, v13) == 1)
    {
      sub_100016290(v12, &unk_100597330, &unk_100481FA0);
      v30 = v127;
    }

    else
    {
      v31 = *(v14 + 32);
      v32 = v117;
      v31(v117, v12, v13);
      type metadata accessor for P2PTimer();
      variable initialization expression of AWDLPeer.lastUpdated();
      DispatchTime.distance(to:)();
      v33 = *(v29 + 8);
      v116 = v29 + 8;
      v33(v17, v13);
      v34 = v118;
      *v118 = 2;
      v35 = v123;
      (*(v123 + 13))(v34, enum case for DispatchTimeInterval.seconds(_:), v2);
      v36 = static DispatchTimeInterval.< infix(_:_:)();
      v37 = *(v35 + 1);
      v37(v34, v2);
      v37(v9, v2);
      if (v36)
      {
        LOWORD(v133) = 257;
        type metadata accessor for Array();
        Array.append(_:)();
      }

      v33(v32, v13);
      v30 = v127;
      v24 = v124;
    }

    swift_unownedRetainStrong();
    v38 = sub_10040CAE8();

    v39 = qword_100596C90;
    swift_beginAccess();
    v40 = *(v38 + v39);

    v41 = _s17InitiatorInstanceCMa();
    WitnessTable = swift_getWitnessTable();
    v43 = v24;
    v44 = v120;
    sub_100353404(v40, v43, v41, v30, WitnessTable, v120);

    swift_unownedRetainStrong();
    v45 = sub_10040CAE8();

    v46 = qword_100596C98;
    swift_beginAccess();
    v47 = *(v45 + v46);

    v48 = _s17ResponderInstanceCMa();
    v49 = swift_getWitnessTable();
    v50 = v121;
    v51 = v43;
    sub_100353404(v47, v43, v48, v30, v49, v121);

    v52 = static DispatchTimeInterval.< infix(_:_:)();
    v53 = v123;
    v54 = *(v123 + 1);
    v55 = !v52;
    if (v52)
    {
      v56 = v44;
    }

    else
    {
      v56 = v50;
    }

    if (v55)
    {
      v57 = v44;
    }

    else
    {
      v57 = v50;
    }

    v54(v56, v2);
    v58 = v122;
    (*(v53 + 4))(v122, v57, v2);
    *v9 = 256;
    (*(v53 + 13))(v9, enum case for DispatchTimeInterval.milliseconds(_:), v2);
    v59 = static DispatchTimeInterval.< infix(_:_:)();
    v54(v9, v2);
    v54(v58, v2);
    if (v59)
    {
      LOWORD(v133) = 259;
      type metadata accessor for Array();
      Array.append(_:)();
    }

    swift_unownedRetainStrong();
    sub_10040CAE8();

    v60 = sub_10034A0AC();

    v61 = v51;
    if (v60 >= 1)
    {
      swift_unownedRetainStrong();
      v62 = sub_10040CAE8();

      v63 = *(v62 + qword_100596CA8);

      if (v63 <= 6 && ((1 << v63) & 0x66) != 0)
      {
        LOWORD(v133) = 258;
        type metadata accessor for Array();
        Array.append(_:)();
      }

      else if ((v63 & 0xFFFFFFFFFFFFFFFELL) == 0xA)
      {
        if (*(v125 + qword_100596E58 + 1) == 1)
        {
          v64 = sub_10036A224(8);
        }

        else
        {
          v64 = *(v125 + qword_100596E58);
        }

        LOWORD(v133) = v64;
        type metadata accessor for Array();
        Array.append(_:)();
        v65 = 0;
LABEL_30:
        v66 = v125 + qword_100596E58;
        *v66 = v64;
        v66[1] = v65;
        swift_unownedRetainStrong();
        v67 = *(v20 + *(*v20 + 696));

        if ((v67 - 2) < 3 || v67 == 5)
        {

          v68 = _swiftEmptyArrayStorage;
        }

        else
        {
          swift_unownedRetainStrong();
          v82 = WiFiInterface.capabilities.getter();

          *&v133 = *WiFiDriverCapabilities.supportsSimultaneousDualBand.unsafeMutableAddressor();
          *&v136 = v82;
          sub_1000C2A14();

          v83 = dispatch thunk of SetAlgebra.isSuperset(of:)();

          v84 = v138;
          *&v128 = v138;

          v85 = TimeBitmap.zero.unsafeMutableAddressor();
          v134 = *(v85 + 2);
          v123 = v85;
          v133 = *v85;
          v131 = v133;
          v132 = v134;
          __chkstk_darwin();
          v86 = v127;
          *(&v116 - 4) = v51;
          *(&v116 - 3) = v86;
          LODWORD(v125) = v83;
          *(&v116 - 16) = v83 & 1;
          v87 = type metadata accessor for Array();
          v88 = swift_getWitnessTable();
          v126 = v87;
          v122 = v88;
          Sequence.reduce<A>(into:_:)();

          v89 = v136;
          v90 = v137;
          v91 = *NANMapID.primary.unsafeMutableAddressor();
          v92 = TimeBitmap.nanBitmap.getter(v89, *(&v89 + 1), v90);
          v94 = v93;
          v96 = v95;
          v68 = sub_1003A77C8(0, 1, 1, _swiftEmptyArrayStorage);
          v98 = *(v68 + 2);
          v97 = *(v68 + 3);
          if (v98 >= v97 >> 1)
          {
            v68 = sub_1003A77C8((v97 > 1), v98 + 1, 1, v68);
          }

          *(v68 + 2) = v98 + 1;
          v99 = &v68[32 * v98];
          v99[32] = v91;
          *(v99 + 20) = v92;
          *(v99 + 6) = v94;
          *(v99 + 7) = v96;
          swift_unownedRetainStrong();
          v100 = sub_10002AF00();

          if ((v100 & 0xFF00000000) == 0x300000000)
          {

            v61 = v124;
          }

          else
          {
            v101 = static Channel.isValid(channel:on:with:)(v100, HIDWORD(v100), v100 >> 40);
            v61 = v124;
            if (v101 & 1) != 0 && (v125)
            {
              v130 = v84;
              v136 = *v123;
              v137 = *(v123 + 2);
              v128 = v136;
              v129 = v137;
              __chkstk_darwin();
              *(&v116 - 2) = v61;
              *(&v116 - 1) = v102;
              Sequence.reduce<A>(into:_:)();

              v103 = v131;
              v104 = v132;
              v105 = *NANMapID.secondary.unsafeMutableAddressor();
              v106 = TimeBitmap.nanBitmap.getter(v103, *(&v103 + 1), v104);
              v110 = *(v68 + 2);
              v109 = *(v68 + 3);
              if (v110 >= v109 >> 1)
              {
                v112 = v106;
                v113 = v107;
                v114 = v108;
                v115 = sub_1003A77C8((v109 > 1), v110 + 1, 1, v68);
                v108 = v114;
                v61 = v124;
                v107 = v113;
                v68 = v115;
                v106 = v112;
              }

              *(v68 + 2) = v110 + 1;
              v111 = &v68[32 * v110];
              v111[32] = v105;
              *(v111 + 20) = v106;
              *(v111 + 6) = v107;
              *(v111 + 7) = v108;
            }

            else
            {
            }
          }

          v119 = *NANTimeUnit.zero.unsafeMutableAddressor();
        }

        swift_unownedRetainStrong();
        v69 = sub_10040CAE8();

        v70 = qword_100596C88;
        swift_beginAccess();
        v71 = *(v69 + v70);

        *&v131 = v71;
        __chkstk_darwin();
        v72 = v127;
        *(&v116 - 2) = v61;
        *(&v116 - 1) = v72;
        v73 = _s8InstanceCMa_0();
        v74 = swift_getWitnessTable();
        *&v133 = v61;
        *(&v133 + 1) = v73;
        v134 = v72;
        v135 = v74;
        type metadata accessor for NANDiscoveryEngine.ServiceSession();
        type metadata accessor for Dictionary();
        swift_getWitnessTable();
        LOBYTE(v73) = Sequence.contains(where:)();

        if (v73)
        {

          v75 = NANTimeUnit.multicastSenderDiscoveryBeaconPeriod.unsafeMutableAddressor();
        }

        else
        {
          swift_unownedRetainStrong();
          v76 = sub_10040CAE8();

          v77 = qword_100596C80;
          swift_beginAccess();
          v78 = *(v76 + v77);

          *&v128 = v78;
          __chkstk_darwin();
          *(&v116 - 2) = v61;
          *(&v116 - 1) = v72;
          v79 = _s8InstanceCMa();
          v80 = swift_getWitnessTable();
          *&v133 = v61;
          *(&v133 + 1) = v79;
          v134 = v72;
          v135 = v80;
          type metadata accessor for NANDiscoveryEngine.ServiceSession();
          type metadata accessor for Dictionary();
          swift_getWitnessTable();
          LOBYTE(v79) = Sequence.contains(where:)();

          if ((v79 & 1) == 0)
          {
            v81 = v119;
            goto LABEL_39;
          }

          v75 = NANTimeUnit.multicastReceiverDiscoveryBeaconPeriod.unsafeMutableAddressor();
        }

        v81 = *v75;
        v68 = _swiftEmptyArrayStorage;
LABEL_39:
        swift_unownedRetainStrong();
        sub_10040EE98(v81, v68);
      }
    }

    v64 = 0;
    v65 = 1;
    goto LABEL_30;
  }

  v24 = v124;
  if (v23)
  {
    goto LABEL_12;
  }

  swift_unownedRetainStrong();
  sub_10040EE98(0, 0);
}

uint64_t sub_10034BBD4()
{
  v1 = *v0;
  v2 = qword_100596C90;
  swift_beginAccess();
  v3 = *(v0 + v2);
  v4 = *(v1 + 80);
  v5 = *(v1 + 88);
  _s17InitiatorInstanceCMa();

  swift_getWitnessTable();
  type metadata accessor for NANDiscoveryEngine.ServiceSession();
  sub_10020CB70();
  Dictionary.filter(_:)();
  type metadata accessor for Dictionary();
  swift_getWitnessTable();
  Sequence.forEach(_:)();
}

BOOL sub_10034BD9C(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *a2 + *((swift_isaMask & **a2) + 0x68);
  swift_beginAccess();
  return static NANClusterChangeEvent.__derived_struct_equals(_:_:)(*(v4 + 25) | (*(v4 + 27) << 16), a3 & 0xFFFFFFFFFFFFLL);
}

uint64_t sub_10034BE44(uint64_t a1, const char *a2)
{
  v4 = v2;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, a2, v8, 2u);
  }

  v9 = *(v4 + *(*v4 + 304));
  swift_unownedRetainStrong();
  sub_10040CAE8();

  sub_1003379B8(a1 & 0xFFFFFFFFFFFFLL);
}

BOOL sub_10034BF40(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (!*(v1 + qword_10059B8B0))
  {
    return 0;
  }

  v2 = *(v1 + qword_10059B8B0);

  v3 = sub_10031A0E8();

  return v3;
}

uint64_t sub_10034BFA8()
{
  v1 = v0;
  v2 = *v0;
  v3 = type metadata accessor for NANAttribute(0);
  v4 = *(v3 - 8);
  v5 = v4[8];
  __chkstk_darwin();
  v122 = (&v120 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v129 = type metadata accessor for DispatchTime();
  v127 = *(v129 - 8);
  v7 = *(v127 + 64);
  __chkstk_darwin();
  v125 = &v120 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v123 = &v120 - v9;
  v130 = type metadata accessor for DispatchTimeInterval();
  v128 = *(v130 - 8);
  v10 = *(v128 + 64);
  __chkstk_darwin();
  v126 = (&v120 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v124 = &v120 - v12;
  v13 = *(*(sub_10005DC58(&unk_100595C00, &qword_10048F790) - 8) + 64);
  __chkstk_darwin();
  v121 = (&v120 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v132 = &v120 - v15;
  __chkstk_darwin();
  v135 = &v120 - v16;
  v17 = *(*(sub_10005DC58(&unk_100595C50, &unk_1004AFD20) - 8) + 64);
  __chkstk_darwin();
  v134 = &v120 - v18;
  v19 = qword_100596C88;
  swift_beginAccess();
  v137 = v19;
  v20 = *&v1[v19];
  v21 = *(v2 + 80);
  v22 = *(v2 + 88);
  v23 = _s8InstanceCMa_0();
  WitnessTable = swift_getWitnessTable();
  *&v149 = v21;
  *(&v149 + 1) = v23;
  *v150 = v22;
  *&v150[8] = WitnessTable;
  v27 = type metadata accessor for NANDiscoveryEngine.ServiceSession();
  *&v149 = NANBitmap.Channel.operatingClass.getter(v20);
  LOWORD(v146) = 0;
  v139 = v21;
  v142 = v21;
  v138 = v22;
  v143 = v22;
  v136 = v27;
  v25 = type metadata accessor for Dictionary.Values();

  v26 = swift_getWitnessTable();
  Sequence.reduce<A>(into:_:)();

  LOWORD(v27) = v147;
  LODWORD(v27) = (*NANAttribute.PairingBootstrapping.Method.validAdvertiseMethods.unsafeMutableAddressor() & v27);
  if (!v27 && (sub_10033BF54() & 1) == 0)
  {

    v94 = Logger.logObject.getter();
    v95 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v94, v95))
    {
      v96 = swift_slowAlloc();
      *v96 = 67109120;
      *(v96 + 4) = sub_10033BF54() & 1;

      _os_log_impl(&_mh_execute_header, v94, v95, "Removing pairing attributes, hasPairingCachingServices %{BOOL}d", v96, 8u);
    }

    else
    {
    }

    v117 = *&v1[*(*v1 + 304)];
    swift_unownedRetainStrong();
    swift_unownedRetainStrong();
    v118 = sub_100422D18();

    v119 = sub_100367A54(v118);

    sub_10040ECA8(v119);
  }

  v133 = v26;
  result = sub_10033BF54();
  v29 = &unk_10059B000;
  v141 = v3;
  v140 = v27;
  if (result)
  {
    v131 = v4;
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&_mh_execute_header, v30, v31, "Adding NIRA", v32, 2u);
    }

    v120 = v25;

    v33 = *&v1[*(*v1 + 304)];
    swift_unownedRetainStrong();
    sub_10005DC58(&unk_100597340, &unk_1004B1640);
    v34 = sub_10005DC58(&qword_1005952A8, &qword_1004AF1A8);
    v35 = *(*(v34 - 8) + 72);
    v36 = (*(*(v34 - 8) + 80) + 32) & ~*(*(v34 - 8) + 80);
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_100480F40;
    v38 = v37 + v36;
    *(v37 + v36) = 43;
    swift_unownedRetainStrong();
    v39 = *(*v33 + 768);
    swift_beginAccess();
    v40 = v134;
    sub_100012400(v33 + v39, v134, &unk_100595C50, &unk_1004AFD20);

    v41 = type metadata accessor for NANIdentityKey(0);
    result = (*(*(v41 - 8) + 48))(v40, 1, v41);
    if (result == 1)
    {
      __break(1u);
      return result;
    }

    v42 = (v38 + *(v34 + 48));
    swift_unownedRetainStrong();
    v43 = WiFiInterface.macAddress.getter();

    v44 = NANIdentityKey.generateIdentityResolutionAttribute(for:)(v43 & 0xFFFFFFFFFFFFLL);
    v45 = v40;
    v47 = v46;
    v49 = v48;
    v51 = v50;
    sub_10036D24C(v45, type metadata accessor for NANIdentityKey);
    *v42 = v44;
    v42[1] = v47;
    v42[2] = v49;
    v42[3] = v51;
    swift_storeEnumTagMultiPayload();
    v52 = sub_1002DE9CC(v37);
    swift_setDeallocating();
    sub_100016290(v38, &qword_1005952A8, &qword_1004AF1A8);
    swift_deallocClassInstance();
    v53 = v33 + *(*v33 + 656);
    swift_beginAccess();
    v27 = sub_10005DC58(&qword_100597358, &qword_1004B1650);
    v54 = *(v53 + *(v27 + 40));

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v147 = v54;
    sub_10036BAF4(v52, sub_10036A2C0, 0, isUniquelyReferenced_nonNull_native, &v147);

    MutableDriverProperty.wrappedValue.setter(&v147, v27);
    swift_endAccess();

    v4 = v131;
    LOWORD(v27) = v140;
    v29 = &unk_10059B000;
  }

  if (v27)
  {
    *&v149 = NANBitmap.Channel.operatingClass.getter(*&v137[v1]);
    __chkstk_darwin();
    v56 = v138;
    *(&v120 - 2) = v139;
    *(&v120 - 1) = v56;

    LODWORD(v57) = Sequence.contains(where:)();

    v58 = *&v1[*(*v1 + 304)];
    swift_unownedRetainStrong();
    v59 = sub_100422D18();

    if (*(v59 + 16) && (v60 = sub_1003E08F4(43), (v61 & 1) != 0))
    {
      v62 = v4[9];
      v63 = v135;
      sub_10036D334(*(v59 + 56) + v62 * v60, v135, type metadata accessor for NANAttribute);

      v64 = v4[7];
      v65 = v4 + 7;
      v66 = v141;
      v131 = v65;
      (v64)(v63, 0, 1, v141);
      sub_100016290(v63, &unk_100595C00, &qword_10048F790);
      swift_unownedRetainStrong();
      v67 = sub_100422D18();

      if (*(v67 + 16))
      {
        v68 = sub_1003E08F4(44);
        if (v69)
        {
          v70 = *(v67 + 56);
          v138 = v62;
          v71 = v132;
          sub_10036D334(v70 + v68 * v62, v132, type metadata accessor for NANAttribute);

          v137 = v64;
          (v64)(v71, 0, 1, v66);
          sub_100016290(v71, &unk_100595C00, &qword_10048F790);
          type metadata accessor for P2PTimer();
          v72 = v123;
          variable initialization expression of AWDLPeer.lastUpdated();
          v73 = v127;
          v74 = *(v127 + 16);
          v75 = v125;
          LODWORD(v139) = v57;
          v76 = v129;
          v74(v125, &v1[qword_100596CD8], v129);
          v77 = v124;
          DispatchTime.distance(to:)();
          v78 = *(v73 + 8);
          v78(v75, v76);
          v78(v72, v76);
          v79 = v126;
          *v126 = 900;
          v80 = v128;
          v57 = v130;
          (*(v128 + 104))(v79, enum case for DispatchTimeInterval.seconds(_:), v130);
          LOBYTE(v78) = static DispatchTimeInterval.< infix(_:_:)();
          v81 = *(v80 + 8);
          v81(v79, v57);
          v82 = v57;
          LOBYTE(v57) = v139;
          v81(v77, v82);
          v29 = &unk_10059B000;
          if ((v78 & 1) == 0)
          {
            swift_unownedRetainStrong();
            v83 = sub_100422D18();

            if (!*(v83 + 16))
            {
            }

            v84 = sub_1003E08F4(44);
            if ((v85 & 1) == 0)
            {
            }

            v86 = v122;
            sub_10036D334(*(v83 + 56) + v84 * v138, v122, type metadata accessor for NANAttribute);

            if (swift_getEnumCaseMultiPayload() != 39)
            {
              return sub_10036D24C(v86, type metadata accessor for NANAttribute);
            }

            *&v148[10] = *(v86 + 26);
            v87 = v86[1];
            v147 = *v86;
            *v148 = v87;
            v88 = v140;
            if (*&v148[24] != v140)
            {
              swift_unownedRetainStrong();
              static NANAttribute.PairingBootstrapping.advertising(methods:)(v88, &v149);
              v89 = *v150;
              v90 = v121;
              *v121 = v149;
              *(v90 + 16) = v89;
              *(v90 + 26) = *&v150[10];
              swift_storeEnumTagMultiPayload();
              (v137)(v90, 0, 1, v66);
              v91 = v58 + *(*v58 + 656);
              swift_beginAccess();
              v92 = sub_10005DC58(&qword_100597358, &qword_1004B1650);
              v145 = *(v91 + *(v92 + 40));

              sub_100337FA0(v90, 44);
              v144 = v145;
              MutableDriverProperty.wrappedValue.setter(&v144, v92);
              swift_endAccess();
            }

            return sub_1001440B0(&v147);
          }

          goto LABEL_25;
        }
      }

      v93 = v132;
      (v64)(v132, 1, 1, v66);
    }

    else
    {

      v93 = v135;
      (v4[7])(v135, 1, 1, v141);
    }

    sub_100016290(v93, &unk_100595C00, &qword_10048F790);
LABEL_25:
    v97 = &v1[v29[312]];
    v98 = Logger.logObject.getter();
    v99 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v98, v99))
    {
      v100 = swift_slowAlloc();
      *v100 = 0;
      _os_log_impl(&_mh_execute_header, v98, v99, "Adding DCEA and NPBA attributes", v100, 2u);
    }

    swift_unownedRetainStrong();
    sub_10005DC58(&unk_100597340, &unk_1004B1640);
    v101 = sub_10005DC58(&qword_1005952A8, &qword_1004AF1A8);
    v102 = *(*(v101 - 8) + 72);
    v103 = (*(*(v101 - 8) + 80) + 32) & ~*(*(v101 - 8) + 80);
    v104 = swift_allocObject();
    *(v104 + 16) = xmmword_100483520;
    v105 = (v104 + v103);
    *v105 = 42;
    v106 = *NANAttribute.DeviceCapabilityExtension.pairingSetupEnabled.unsafeMutableAddressor();

    if (v57)
    {
      v107 = *NANAttribute.DeviceCapabilityExtension.pairingCachingEnabled.unsafeMutableAddressor();
    }

    else
    {
      v108 = sub_10036B9B4(_swiftEmptyArrayStorage);
    }

    v109 = *(v101 + 48);
    *&v149 = v106;
    *&v147 = v108;
    sub_10027B614();
    dispatch thunk of SetAlgebra.formUnion(_:)();
    *&v105[v109] = v149;
    swift_storeEnumTagMultiPayload();
    v110 = &v105[v102 + *(v101 + 48)];
    v105[v102] = 44;
    static NANAttribute.PairingBootstrapping.advertising(methods:)(v140, &v149);
    v111 = *v150;
    *v110 = v149;
    v110[1] = v111;
    *(v110 + 26) = *&v150[10];
    swift_storeEnumTagMultiPayload();
    v112 = sub_1002DE9CC(v104);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v113 = v58 + *(*v58 + 656);
    swift_beginAccess();
    v114 = sub_10005DC58(&qword_100597358, &qword_1004B1650);
    v115 = *(v113 + *(v114 + 40));

    v116 = swift_isUniquelyReferenced_nonNull_native();
    v146 = v115;
    sub_10036BAF4(v112, sub_10036A2C0, 0, v116, &v146);

    MutableDriverProperty.wrappedValue.setter(&v146, v114);
    swift_endAccess();
  }

  return result;
}

void sub_10034D228()
{
  v1 = v0;
  v2 = *v0;
  v167 = type metadata accessor for NANAttribute(0);
  v165 = *(v167 - 8);
  v3 = *(v165 + 64);
  __chkstk_darwin();
  v5 = &v145 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v147 = &v145 - v6;
  v154 = type metadata accessor for DispatchTime();
  v152 = *(v154 - 8);
  v7 = *(v152 + 64);
  __chkstk_darwin();
  v150 = &v145 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v148 = &v145 - v9;
  v155 = type metadata accessor for DispatchTimeInterval();
  v153 = *(v155 - 8);
  v10 = *(v153 + 64);
  __chkstk_darwin();
  v151 = &v145 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v149 = &v145 - v12;
  v13 = *(*(sub_10005DC58(&unk_100595C00, &qword_10048F790) - 8) + 64);
  __chkstk_darwin();
  v146 = (&v145 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v156 = &v145 - v15;
  __chkstk_darwin();
  v158 = &v145 - v16;
  v17 = *(*(sub_10005DC58(&unk_100595C50, &unk_1004AFD20) - 8) + 64);
  __chkstk_darwin();
  v157 = &v145 - v18;
  v19 = qword_100596C88;
  swift_beginAccess();
  v20 = *(v1 + v19);
  v29 = *(v2 + 80);
  v21 = *(v2 + 88);
  v22 = _s8InstanceCMa_0();
  WitnessTable = swift_getWitnessTable();
  *&v176 = v29;
  *(&v176 + 1) = v22;
  *v177 = v21;
  *&v177[8] = WitnessTable;
  v24 = type metadata accessor for NANDiscoveryEngine.ServiceSession();
  *&v176 = NANBitmap.Channel.operatingClass.getter(v20);
  LOWORD(v173) = 0;
  v163 = v29;
  v169 = v29;
  v162 = v21;
  v170 = v21;
  v159 = v24;
  v25 = type metadata accessor for Dictionary.Values();

  v26 = swift_getWitnessTable();
  v161 = v25;
  v160 = v26;
  v27 = 0;
  Sequence.reduce<A>(into:_:)();

  LODWORD(v22) = v174;
  v28 = *NANAttribute.PairingBootstrapping.Method.validAdvertiseMethods.unsafeMutableAddressor();
  LODWORD(v29) = v28 & v22;
  if ((v28 & v22) != 0)
  {
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 33554688;
      *(v32 + 4) = v29;
      _os_log_impl(&_mh_execute_header, v30, v31, "ExistingAdvertiseMethod %hu", v32, 6u);
    }
  }

  else if ((sub_10033BF54() & 1) == 0)
  {

    v99 = Logger.logObject.getter();
    v100 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v99, v100))
    {
      v101 = swift_slowAlloc();
      *v101 = 67109120;
      *(v101 + 4) = sub_10033BF54() & 1;

      _os_log_impl(&_mh_execute_header, v99, v100, "PairingCustomAttributes: Removing pairing attributes, hasPairingCachingServices %{BOOL}d", v101, 8u);
    }

    else
    {
    }

    v142 = *(v1 + *(*v1 + 304));
    swift_unownedRetainStrong();
    swift_unownedRetainStrong();
    v143 = sub_100422D84();

    v144 = sub_100367A54(v143);

    sub_10040EC2C(v144);

    return;
  }

  v33 = sub_10033BF54();
  v166 = v1;
  v164 = v29;
  if (v33)
  {
    v168 = 0;
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&_mh_execute_header, v34, v35, "PairingCustomAttributes: Adding NIRA", v36, 2u);
    }

    v37 = *(v1 + *(*v1 + 304));
    swift_unownedRetainStrong();
    sub_10005DC58(&unk_100597340, &unk_1004B1640);
    v38 = sub_10005DC58(&qword_1005952A8, &qword_1004AF1A8);
    v39 = *(*(v38 - 8) + 72);
    v40 = (*(*(v38 - 8) + 80) + 32) & ~*(*(v38 - 8) + 80);
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_100480F40;
    v42 = v41 + v40;
    *(v41 + v40) = 43;
    swift_unownedRetainStrong();
    v43 = *(*v37 + 768);
    swift_beginAccess();
    v44 = v37 + v43;
    v45 = v157;
    sub_100012400(v44, v157, &unk_100595C50, &unk_1004AFD20);

    v46 = type metadata accessor for NANIdentityKey(0);
    if ((*(*(v46 - 8) + 48))(v45, 1, v46) == 1)
    {
LABEL_55:
      __break(1u);
LABEL_56:

      __break(1u);
      return;
    }

    v47 = (v42 + *(v38 + 48));
    swift_unownedRetainStrong();
    v48 = WiFiInterface.macAddress.getter();

    v49 = NANIdentityKey.generateIdentityResolutionAttribute(for:)(v48 & 0xFFFFFFFFFFFFLL);
    v51 = v50;
    v53 = v52;
    v54 = v45;
    v56 = v55;
    sub_10036D24C(v54, type metadata accessor for NANIdentityKey);
    *v47 = v49;
    v47[1] = v51;
    v47[2] = v53;
    v47[3] = v56;
    swift_storeEnumTagMultiPayload();
    v57 = sub_1002DE9CC(v41);
    swift_setDeallocating();
    sub_100016290(v42, &qword_1005952A8, &qword_1004AF1A8);
    swift_deallocClassInstance();
    v58 = v37 + *(*v37 + 672);
    swift_beginAccess();
    v29 = sub_10005DC58(&qword_100597358, &qword_1004B1650);
    v59 = *(v58 + *(v29 + 40));

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v174 = v59;
    v27 = v168;
    sub_10036BAF4(v57, sub_10036A2C0, 0, isUniquelyReferenced_nonNull_native, &v174);

    MutableDriverProperty.wrappedValue.setter(&v174, v29);
    swift_endAccess();

    v1 = v166;
    LOWORD(v29) = v164;
  }

  v168 = v27;
  if (!v29)
  {
    goto LABEL_34;
  }

  *&v176 = NANBitmap.Channel.operatingClass.getter(*(v1 + v19));
  __chkstk_darwin();
  v61 = v162;
  *(&v145 - 2) = v163;
  *(&v145 - 1) = v61;

  v62 = v168;
  LODWORD(v63) = Sequence.contains(where:)();

  v64 = *(v1 + *(*v1 + 304));
  swift_unownedRetainStrong();
  v65 = sub_100422D84();

  v66 = *(v65 + 16);
  v168 = v62;
  if (!v66 || (v67 = sub_1003E08F4(43), (v68 & 1) == 0))
  {

    v98 = v158;
    (*(v165 + 56))(v158, 1, 1, v167);
LABEL_27:
    sub_100016290(v98, &unk_100595C00, &qword_10048F790);
    goto LABEL_28;
  }

  v69 = *(v65 + 56);
  v70 = v165;
  v162 = *(v165 + 72);
  v71 = v158;
  sub_10036D334(v69 + v162 * v67, v158, type metadata accessor for NANAttribute);

  v72 = v70 + 56;
  v163 = *(v70 + 56);
  v163(v71, 0, 1, v167);
  sub_100016290(v71, &unk_100595C00, &qword_10048F790);
  swift_unownedRetainStrong();
  v73 = sub_100422D84();

  if (!*(v73 + 16) || (v74 = sub_1003E08F4(44), (v75 & 1) == 0))
  {

    v98 = v156;
    v163(v156, 1, 1, v167);
    goto LABEL_27;
  }

  v76 = v156;
  sub_10036D334(*(v73 + 56) + v74 * v162, v156, type metadata accessor for NANAttribute);

  v160 = v72;
  v163(v76, 0, 1, v167);
  sub_100016290(v76, &unk_100595C00, &qword_10048F790);
  type metadata accessor for P2PTimer();
  v77 = v148;
  variable initialization expression of AWDLPeer.lastUpdated();
  v78 = v152;
  v79 = *(v152 + 16);
  v80 = v150;
  LODWORD(v161) = v63;
  v63 = v154;
  v79(v150, v1 + qword_100596CD8, v154);
  v81 = v149;
  DispatchTime.distance(to:)();
  v82 = *(v78 + 8);
  v82(v80, v63);
  v82(v77, v63);
  v83 = v151;
  *v151 = 900;
  v84 = v153;
  v85 = v155;
  (*(v153 + 104))(v83, enum case for DispatchTimeInterval.seconds(_:), v155);
  LOBYTE(v82) = static DispatchTimeInterval.< infix(_:_:)();
  v86 = *(v84 + 8);
  v86(v83, v85);
  v86(v81, v85);
  LOBYTE(v63) = v161;
  if (v82)
  {
LABEL_28:
    v102 = Logger.logObject.getter();
    v103 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v102, v103))
    {
      v104 = swift_slowAlloc();
      *v104 = 0;
      _os_log_impl(&_mh_execute_header, v102, v103, "PairingCustomAttributes: Adding DCEA and NPBA attributes", v104, 2u);
    }

    swift_unownedRetainStrong();
    sub_10005DC58(&unk_100597340, &unk_1004B1640);
    v105 = sub_10005DC58(&qword_1005952A8, &qword_1004AF1A8);
    v106 = *(*(v105 - 8) + 72);
    v107 = (*(*(v105 - 8) + 80) + 32) & ~*(*(v105 - 8) + 80);
    v108 = swift_allocObject();
    *(v108 + 16) = xmmword_100483520;
    v109 = v108 + v107;
    *(v108 + v107) = 42;
    v110 = *NANAttribute.DeviceCapabilityExtension.pairingSetupEnabled.unsafeMutableAddressor();

    if (v63)
    {
      v111 = *NANAttribute.DeviceCapabilityExtension.pairingCachingEnabled.unsafeMutableAddressor();
    }

    else
    {
      v112 = sub_10036B9B4(_swiftEmptyArrayStorage);
    }

    v113 = *(v105 + 48);
    *&v176 = v110;
    *&v174 = v112;
    sub_10027B614();
    dispatch thunk of SetAlgebra.formUnion(_:)();
    *(v109 + v113) = v176;
    swift_storeEnumTagMultiPayload();
    v114 = (v109 + v106 + *(v105 + 48));
    *(v109 + v106) = 44;
    static NANAttribute.PairingBootstrapping.advertising(methods:)(v164, &v176);
    v115 = *v177;
    *v114 = v176;
    v114[1] = v115;
    *(v114 + 26) = *&v177[10];
    swift_storeEnumTagMultiPayload();
    v116 = sub_1002DE9CC(v108);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v117 = v64 + *(*v64 + 672);
    swift_beginAccess();
    v118 = sub_10005DC58(&qword_100597358, &qword_1004B1650);
    v119 = *(v117 + *(v118 + 40));

    v120 = swift_isUniquelyReferenced_nonNull_native();
    v173 = v119;
    v121 = v168;
    sub_10036BAF4(v116, sub_10036A2C0, 0, v120, &v173);
    v168 = v121;

    MutableDriverProperty.wrappedValue.setter(&v173, v118);
    swift_endAccess();

    v1 = v166;
    goto LABEL_34;
  }

  swift_unownedRetainStrong();
  v87 = sub_100422D84();

  if (*(v87 + 16) && (v88 = sub_1003E08F4(44), (v89 & 1) != 0))
  {
    v90 = v147;
    sub_10036D334(*(v87 + 56) + v88 * v162, v147, type metadata accessor for NANAttribute);

    if (swift_getEnumCaseMultiPayload() != 39)
    {
      goto LABEL_53;
    }

    *&v175[10] = *(v90 + 26);
    v91 = *(v90 + 16);
    v174 = *v90;
    *v175 = v91;
    v92 = v164;
    if (*&v175[24] != v164)
    {
      swift_unownedRetainStrong();
      static NANAttribute.PairingBootstrapping.advertising(methods:)(v92, &v176);
      v93 = *v177;
      v94 = v146;
      *v146 = v176;
      *(v94 + 16) = v93;
      *(v94 + 26) = *&v177[10];
      v95 = v167;
      swift_storeEnumTagMultiPayload();
      v163(v94, 0, 1, v95);
      v96 = v64 + *(*v64 + 672);
      swift_beginAccess();
      v97 = sub_10005DC58(&qword_100597358, &qword_1004B1650);
      v172 = *(v96 + *(v97 + 40));

      sub_100337FA0(v94, 44);
      v171 = v172;
      MutableDriverProperty.wrappedValue.setter(&v171, v97);
      swift_endAccess();
    }

    sub_1001440B0(&v174);
  }

  else
  {
  }

  while (1)
  {
LABEL_34:
    v122 = *(v1 + *(*v1 + 304));
    swift_unownedRetainStrong();
    v123 = sub_100422D84();

    v124 = *(v123 + 16);
    if (v124)
    {
      v125 = sub_100367708(*(v123 + 16), 0);
      v126 = sub_100315CCC(&v174, v125 + 32, v124, v123);

      sub_1000E290C();
      if (v126 != v124)
      {
        __break(1u);
        goto LABEL_55;
      }
    }

    else
    {
      v125 = _swiftEmptyArrayStorage;
    }

    *&v174 = v125;
    v127 = v168;
    sub_100369940(&v174);
    if (v127)
    {
      goto LABEL_56;
    }

    v128 = v174;
    v1 = *(v174 + 16);
    v129 = v166;
    if (!v1)
    {
      break;
    }

    *&v174 = _swiftEmptyArrayStorage;
    sub_1000C0850(0, v1, 0);
    v130 = 0;
    v90 = v174;
    v131 = v165;
    while (v130 < *(v128 + 16))
    {
      LOBYTE(v173) = *(v128 + v130 + 32);
      sub_100351250(&v173, v129, v5);
      *&v174 = v90;
      v133 = *(v90 + 16);
      v132 = *(v90 + 24);
      if (v133 >= v132 >> 1)
      {
        sub_1000C0850(v132 > 1, v133 + 1, 1);
        v131 = v165;
        v90 = v174;
      }

      ++v130;
      *(v90 + 16) = v133 + 1;
      sub_10036D640(v5, v90 + ((*(v131 + 80) + 32) & ~*(v131 + 80)) + *(v131 + 72) * v133, type metadata accessor for NANAttribute);
      if (v1 == v130)
      {
        goto LABEL_45;
      }
    }

    __break(1u);
LABEL_53:
    sub_10036D24C(v90, type metadata accessor for NANAttribute);
  }

LABEL_45:

  v134 = Logger.logObject.getter();
  v135 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v134, v135))
  {
    v136 = swift_slowAlloc();
    v137 = swift_slowAlloc();
    *&v174 = v137;
    *v136 = 136315138;
    v138 = Array.description.getter();
    v140 = v139;

    v141 = sub_100002320(v138, v140, &v174);

    *(v136 + 4) = v141;
    _os_log_impl(&_mh_execute_header, v134, v135, "GetPairingAttributes: %s", v136, 0xCu);
    sub_100002A00(v137);
  }

  else
  {
  }
}

uint64_t sub_10034E8A0(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = qword_100596C88;
  swift_beginAccess();
  v5 = *(a2 + v4);
  v6 = *(v3 + 88);
  v12 = *(v3 + 80);
  _s8InstanceCMa_0();
  swift_getWitnessTable();
  type metadata accessor for NANDiscoveryEngine.ServiceSession();
  Dictionary.subscript.getter();
  v7 = v13;
  if (v13)
  {
    v8 = v13;
    swift_endAccess();
    sub_100058BA4(v13);
    v9 = &v8[qword_10059B890];
    swift_beginAccess();
    v10 = type metadata accessor for NANPublish.Configuration();
    if (v9[*(v10 + 84) + 2] && v9[*(v10 + 84) + 2] != 1)
    {

      v7 = 1;
    }

    else
    {
      v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  else
  {
    swift_endAccess();
  }

  return v7 & 1;
}

uint64_t sub_10034EA78@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v24 = a3;
  v23 = *a2;
  v4 = type metadata accessor for DispatchTimeInterval();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v8 = (&v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v10 = &v21 - v9;
  __chkstk_darwin();
  v12 = &v21 - v11;
  v13 = *(v5 + 16);
  v13(&v21 - v11, a1, v4);
  v22 = *OS_dispatch_queue.nan.unsafeMutableAddressor();
  v13(v10, a1, v4);
  v14 = swift_allocObject();
  swift_weakInit();
  v15 = swift_allocObject();
  v16 = v23;
  v15[2] = *(v23 + 80);
  v15[3] = *(v16 + 88);
  v15[4] = v14;
  *v8 = 100;
  (*(v5 + 104))(v8, enum case for DispatchTimeInterval.milliseconds(_:), v4);
  v17 = type metadata accessor for P2PTimer();
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();
  result = P2PTimer.init(deadlineAfter:on:repeating:leeway:_:)(v12, v22, v10, v8, sub_10036C800, v15);
  *v24 = result;
  return result;
}

uint64_t sub_10034ECC8()
{
  v1 = v0;
  v2 = *v0;
  v100 = sub_10005DC58(&qword_1005973F8, &unk_1004B16A0);
  v3 = *(*(v100 - 8) + 64);
  __chkstk_darwin();
  v101 = (&v81 - v4);
  v5 = v2[11];
  v6 = *(v5 + 8);
  v96 = v2[10];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v93 = *(AssociatedTypeWitness - 8);
  v7 = *(v93 + 64);
  __chkstk_darwin();
  v92 = &v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v91 = &v81 - v9;
  v95 = type metadata accessor for NANAttribute.CustomDeviceInformation(0);
  v10 = *(*(v95 - 8) + 64);
  __chkstk_darwin();
  v98 = &v81 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = type metadata accessor for DispatchTime();
  v12 = *(v99 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin();
  v90 = &v81 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v97 = &v81 - v15;
  v16 = type metadata accessor for DispatchTimeInterval();
  v17 = *(v16 - 8);
  v18 = v17[8];
  __chkstk_darwin();
  v20 = &v81 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v22 = &v81 - v21;
  v23 = *(v1 + v2[38]);
  swift_unownedRetainStrong();
  LOBYTE(v2) = sub_10040E40C();

  if ((v2 & 1) == 0)
  {
    swift_unownedRetainStrong();
    sub_10040E9C0(v22);

    *v20 = 3;
    v25 = v17[13];
    LODWORD(v85) = enum case for DispatchTimeInterval.seconds(_:);
    v86 = v17 + 13;
    v84 = v25;
    v25(v20);
    v26 = static DispatchTimeInterval.< infix(_:_:)();
    v27 = v17[1];
    v27(v20, v16);
    v87 = v27;
    result = (v27)(v22, v16);
    if (!v26)
    {
      v28 = type metadata accessor for P2PTimer();
      v88 = v5;
      v29 = v97;
      v81 = v28;
      variable initialization expression of AWDLPeer.lastUpdated();
      v30 = qword_100596CC8;
      swift_beginAccess();
      v31 = *(v12 + 16);
      v89 = v1;
      v82 = v30;
      v32 = v1 + v30;
      v33 = v90;
      v34 = v12;
      v35 = v99;
      v31(v90, v32, v99);
      DispatchTime.distance(to:)();
      v83 = v34;
      v36 = *(v34 + 8);
      v36(v33, v35);
      v36(v29, v35);
      *v20 = 5;
      v84(v20, v85, v16);
      LODWORD(v36) = static DispatchTimeInterval.< infix(_:_:)();
      v37 = v87;
      v87(v20, v16);
      v37(v22, v16);
      LODWORD(v87) = v36;
      LODWORD(v86) = v36 ^ 1;
      v38 = swift_allocObject();
      v90 = v38;
      *(v38 + 16) = &_swiftEmptyDictionarySingleton;
      v85 = v38 + 16;
      swift_unownedRetainStrong();
      v39 = *(*v23 + 96);
      swift_beginAccess();
      v40 = v93;
      v41 = *(v93 + 16);
      v42 = v91;
      v43 = AssociatedTypeWitness;
      v41(v91, v23 + v39, AssociatedTypeWitness);

      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v45 = (*(AssociatedConformanceWitness + 32))(v43, AssociatedConformanceWitness);
      v46 = *(v40 + 8);
      v46(v42, v43);
      swift_unownedRetainStrong();
      v47 = *(*v23 + 96);
      swift_beginAccess();
      v48 = v23 + v47;
      v49 = v92;
      v41(v92, v48, v43);

      v50 = (*(AssociatedConformanceWitness + 24))(v43, AssociatedConformanceWitness);
      v46(v49, v43);
      swift_unownedRetainStrong();
      v51 = WiFiInterface.capabilities.getter();

      v103 = *WiFiDriverCapabilities.supportsSimultaneousDualBand.unsafeMutableAddressor();
      v102 = v51;
      sub_1000C2A14();

      LOBYTE(v49) = dispatch thunk of SetAlgebra.isSuperset(of:)();

      if (v49)
      {
        v52 = 0;
      }

      else
      {
        v52 = *NANAttribute.CustomDeviceInformation.Flags.doesNotSupportSimultaneousDualBand.unsafeMutableAddressor();
      }

      v53 = v98;
      NANAttribute.CustomDeviceInformation.CustomAttributes.init()(v98 + *(v95 + 28));
      *v53 = v45;
      *(v53 + 1) = v50;
      *(v53 + 4) = v52;
      v54 = qword_100596C90;
      v55 = v89;
      swift_beginAccess();
      v56 = *(v55 + v54);
      v57 = _s17InitiatorInstanceCMa();

      WitnessTable = swift_getWitnessTable();
      v59 = v86;
      v60 = v90;
      sub_10034F810(v56, v86 & 1, v90, v53, v55, v57, WitnessTable);

      v61 = qword_100596C98;
      swift_beginAccess();
      v62 = *(v55 + v61);
      v63 = v55;
      v64 = _s17ResponderInstanceCMa();

      v65 = swift_getWitnessTable();
      sub_10034F810(v62, v59 & 1, v60, v53, v55, v64, v65);

      if (v87)
      {
        sub_10036D24C(v53, type metadata accessor for NANAttribute.CustomDeviceInformation);
      }

      else
      {
        v66 = v85;
        swift_beginAccess();
        v67 = *v66 + 64;
        v68 = 1 << *(*v66 + 32);
        v69 = -1;
        if (v68 < 64)
        {
          v69 = ~(-1 << v68);
        }

        v70 = v69 & *(*v66 + 64);
        v71 = (v68 + 63) >> 6;
        v96 = *v66;
        swift_bridgeObjectRetain_n();
        for (i = 0; v70; i = v73)
        {
          v73 = i;
LABEL_15:
          v74 = __clz(__rbit64(v70)) | (v73 << 6);
          v75 = *(v96 + 56);
          v76 = *(v96 + 48) + 6 * v74;
          v77 = *(v76 + 4);
          v78 = v75 + *(*(sub_10005DC58(&qword_100597400, &unk_1004B4D20) - 8) + 72) * v74;
          LODWORD(v74) = *v76;
          v55 = v101;
          sub_100012400(v78, v101 + *(v100 + 48), &qword_100597400, &unk_1004B4D20);
          *v55 = v74;
          v55[2] = v77;
          v63 = v89;
          sub_100350AA8(v55, v89);
          v70 &= v70 - 1;
          sub_100016290(v55, &qword_1005973F8, &unk_1004B16A0);
        }

        while (1)
        {
          v73 = i + 1;
          if (__OFADD__(i, 1))
          {
            break;
          }

          if (v73 >= v71)
          {

            v79 = v97;
            variable initialization expression of AWDLPeer.lastUpdated();
            sub_10036D24C(v98, type metadata accessor for NANAttribute.CustomDeviceInformation);
            v80 = v82;
            swift_beginAccess();
            (*(v83 + 40))(v63 + v80, v79, v99);
            swift_endAccess();
          }

          v70 = *(v67 + 8 * v73);
          ++i;
          if (v70)
          {
            goto LABEL_15;
          }
        }

        __break(1u);

        result = sub_100016290(v55, &qword_1005973F8, &unk_1004B16A0);
        __break(1u);
      }
    }
  }

  return result;
}