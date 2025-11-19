unint64_t sub_10002BD60(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t *a4)
{
  v5 = -1 << *(v4 + 32);
  v6 = a2 & ~v5;
  if ((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    sub_1000060C8(0, a3, a4);
    do
    {
      v8 = *(*(v4 + 48) + 8 * v6);
      v9 = static NSObject.== infix(_:_:)();

      if (v9)
      {
        break;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

void sub_10002BE58(void *a1, void **a2, uint64_t *a3)
{
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12 - 8);
  v16 = &v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v58 - v17;
  v19 = *a2;
  v20 = [v19 parentList];
  if (v20)
  {
    v62 = v3;
    v21 = v20;
    if ([v21 isDeleted])
    {

      if (qword_100936518 != -1)
      {
        swift_once();
      }

      v22 = type metadata accessor for Logger();
      sub_100006654(v22, qword_10094C3E8);
      v23 = v19;
      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v24, v25))
      {
        v61 = v25;
        v26 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        v63 = v59;
        v60 = v26;
        *v26 = 136315138;
        v27 = [v23 identifier];
        if (v27)
        {
          v28 = v27;
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          (*(v8 + 56))(v16, 0, 1, v7);
        }

        else
        {
          (*(v8 + 56))(v16, 1, 1, v7);
        }

        sub_100100FB4(v16, v18);
        if ((*(v8 + 48))(v18, 1, v7))
        {
          sub_1000050A4(v18, &unk_100939D90, "8\n\r");
          v42 = 0xE300000000000000;
          v43 = 7104878;
        }

        else
        {
          (*(v8 + 16))(v11, v18, v7);
          sub_1000050A4(v18, &unk_100939D90, "8\n\r");
          v44 = UUID.uuidString.getter();
          v42 = v45;
          (*(v8 + 8))(v11, v7);
          v43 = v44;
        }

        v46 = sub_10000668C(v43, v42, &v63);

        v47 = v60;
        *(v60 + 1) = v46;
        _os_log_impl(&_mh_execute_header, v24, v61, "REMCDList's parentList is unexpectedly deleted {identifier: %s}", v47, 0xCu);
        sub_10000607C(v59);
      }
    }

    else
    {
      v29 = [v21 remObjectID];
      v63 = 0;
      v64 = 0xE000000000000000;
      v65 = v29;
      _StringGuts.grow(_:)(47);

      v63 = 0xD00000000000002CLL;
      v64 = 0x80000001007FC270;
      v30 = [v21 objectID];

      v31 = [v30 description];
      v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v34 = v33;

      v35._countAndFlagsBits = v32;
      v35._object = v34;
      String.append(_:)(v35);

      v36._countAndFlagsBits = 125;
      v36._object = 0xE100000000000000;
      String.append(_:)(v36);
      sub_1000F5104(&unk_10093AF40, &unk_100795790);
      v37 = v62;
      Optional.tryUnwrap(_:file:line:)();
      if (v37)
      {

        return;
      }

      v38 = v66;
      v39 = sub_100353948(v66, *a3);
      if (v39)
      {
        v40 = v39;
      }

      else
      {
        v48 = sub_100027664(v21);
        v40 = v48;
        v49 = *a3;
        if ((*a3 & 0xC000000000000001) != 0)
        {
          if (v49 < 0)
          {
            v50 = *a3;
          }

          else
          {
            v50 = v49 & 0xFFFFFFFFFFFFFF8;
          }

          v51 = v48;
          v52 = v38;
          v53 = __CocoaDictionary.count.getter();
          if (__OFADD__(v53, 1))
          {
            __break(1u);
            return;
          }

          *a3 = sub_10021E744(v50, v53 + 1);
        }

        else
        {
          v54 = v48;
          v55 = v38;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v63 = *a3;
        sub_1002CA950(v40, v38, isUniquelyReferenced_nonNull_native);
        *a3 = v63;

        v39 = 0;
      }

      v41 = v39;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v57 = *((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }
  }
}

id sub_10002C4A8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 remObjectID];
  *a2 = result;
  return result;
}

unint64_t sub_10002C4E4(unint64_t a1, unint64_t *a2, uint64_t *a3)
{
  v4 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) == 0)
  {
    if (*(a1 + 16))
    {
      goto LABEL_3;
    }

LABEL_5:
    v5 = &_swiftEmptyDictionarySingleton;
    goto LABEL_6;
  }

  if (!__CocoaDictionary.count.getter())
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_1000F5104(&unk_100943D30, &unk_1007AAB90);
  v5 = static _DictionaryStorage.allocate(capacity:)();
LABEL_6:
  if (sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr) != &type metadata for String)
  {
    if (v4)
    {
      v6 = __CocoaDictionary.makeIterator()();
      v7 = 0;
      v8 = 0;
      v9 = 0;
      v10 = v6 | 0x8000000000000000;
    }

    else
    {
      v16 = -1 << *(a1 + 32);
      v8 = ~v16;
      v7 = a1 + 64;
      v17 = -v16;
      if (v17 < 64)
      {
        v18 = ~(-1 << v17);
      }

      else
      {
        v18 = -1;
      }

      v9 = v18 & *(a1 + 64);
      v10 = a1;
    }

    v19 = (v8 + 64) >> 6;
    v20 = (v5 + 8);

    v22 = 0;
    while (1)
    {
      if ((v10 & 0x8000000000000000) != 0)
      {
        v33 = __CocoaDictionary.Iterator.next()();
        if (!v33)
        {
          goto LABEL_59;
        }

        v35 = v34;
        *&v71[0] = v33;
        swift_dynamicCast();
        *&v70[0] = v35;
        sub_1000060C8(0, a2, a3);
        swift_dynamicCast();
        v31 = *&v72[0];
        v32 = *&v71[0];
        v25 = v22;
        v67 = v9;
        if (!*&v72[0])
        {
          goto LABEL_59;
        }
      }

      else
      {
        v24 = v9;
        v25 = v22;
        if (!v9)
        {
          v26 = v22;
          while (1)
          {
            v25 = v26 + 1;
            if (__OFADD__(v26, 1))
            {
              break;
            }

            if (v25 >= v19)
            {
              goto LABEL_59;
            }

            v24 = *(v7 + 8 * v25);
            ++v26;
            if (v24)
            {
              goto LABEL_24;
            }
          }

LABEL_60:
          __break(1u);
LABEL_61:
          __break(1u);
LABEL_62:
          __break(1u);
          goto LABEL_63;
        }

LABEL_24:
        v67 = (v24 - 1) & v24;
        v27 = (v25 << 9) | (8 * __clz(__rbit64(v24)));
        v28 = *(*(v10 + 48) + v27);
        v29 = v10;
        v30 = *(*(v10 + 56) + v27);
        v31 = v28;
        v32 = v30;
        v10 = v29;
        if (!v31)
        {
          goto LABEL_59;
        }
      }

      *&v70[0] = v32;
      sub_1000060C8(0, a2, a3);
      swift_dynamicCast();
      sub_100005EE0((v71 + 8), (v72 + 8));
      sub_100005EE0((v72 + 8), v71);
      result = NSObject._rawHashValue(seed:)(v5[5]);
      v36 = -1 << *(v5 + 32);
      v37 = result & ~v36;
      v38 = v37 >> 6;
      if (((-1 << v37) & ~*&v20[8 * (v37 >> 6)]) != 0)
      {
        v23 = __clz(__rbit64((-1 << v37) & ~*&v20[8 * (v37 >> 6)])) | v37 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v39 = 0;
        v40 = (63 - v36) >> 6;
        do
        {
          if (++v38 == v40 && (v39 & 1) != 0)
          {
            __break(1u);
            goto LABEL_60;
          }

          v41 = v38 == v40;
          if (v38 == v40)
          {
            v38 = 0;
          }

          v39 |= v41;
          v42 = *&v20[8 * v38];
        }

        while (v42 == -1);
        v23 = __clz(__rbit64(~v42)) + (v38 << 6);
      }

      *&v20[(v23 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v23;
      *(v5[6] + 8 * v23) = v31;
      result = sub_100005EE0(v71, (v5[7] + 32 * v23));
      ++v5[2];
      v22 = v25;
      v9 = v67;
    }
  }

  if (v4)
  {
    v11 = __CocoaDictionary.makeIterator()();
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = v11 | 0x8000000000000000;
  }

  else
  {
    v43 = -1 << *(a1 + 32);
    v13 = ~v43;
    v12 = a1 + 64;
    v44 = -v43;
    if (v44 < 64)
    {
      v45 = ~(-1 << v44);
    }

    else
    {
      v45 = -1;
    }

    v14 = v45 & *(a1 + 64);
    v15 = a1;
  }

  v46 = (v13 + 64) >> 6;

  v47 = 0;
  while (1)
  {
    if ((v15 & 0x8000000000000000) != 0)
    {
      v60 = __CocoaDictionary.Iterator.next()();
      if (!v60)
      {
        goto LABEL_59;
      }

      v62 = v61;
      *&v71[0] = v60;
      swift_dynamicCast();
      *&v70[0] = v62;
      sub_1000060C8(0, a2, a3);
      swift_dynamicCast();
      v58 = *&v72[0];
      v53 = v47;
      v55 = v14;
      if (!*&v72[0])
      {
        goto LABEL_59;
      }
    }

    else
    {
      v52 = v14;
      v53 = v47;
      if (!v14)
      {
        v54 = v47;
        while (1)
        {
          v53 = v54 + 1;
          if (__OFADD__(v54, 1))
          {
            goto LABEL_61;
          }

          if (v53 >= v46)
          {
            break;
          }

          v52 = *(v12 + 8 * v53);
          ++v54;
          if (v52)
          {
            goto LABEL_51;
          }
        }

LABEL_59:
        sub_10001B860();

        return v5;
      }

LABEL_51:
      v55 = (v52 - 1) & v52;
      v56 = (v53 << 9) | (8 * __clz(__rbit64(v52)));
      v57 = *(*(v15 + 56) + v56);
      v58 = *(*(v15 + 48) + v56);
      v59 = v57;
      if (!v58)
      {
        goto LABEL_59;
      }
    }

    sub_1000060C8(0, a2, a3);
    swift_dynamicCast();
    sub_100005EE0((v71 + 8), (v72 + 8));
    sub_100005EE0((v72 + 8), v70);
    sub_100005EE0(v70, v72);
    result = sub_10002B924(v58);
    if (v63)
    {
      v48 = v5[6];
      v49 = *(v48 + 8 * result);
      *(v48 + 8 * result) = v58;
      v50 = result;

      v51 = (v5[7] + 32 * v50);
      sub_10000607C(v51);
      result = sub_100005EE0(v72, v51);
      goto LABEL_44;
    }

    if (v5[2] >= v5[3])
    {
      goto LABEL_62;
    }

    *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v5[6] + 8 * result) = v58;
    result = sub_100005EE0(v72, (v5[7] + 32 * result));
    v64 = v5[2];
    v65 = __OFADD__(v64, 1);
    v66 = v64 + 1;
    if (v65)
    {
      break;
    }

    v5[2] = v66;
LABEL_44:
    v47 = v53;
    v14 = v55;
  }

LABEL_63:
  __break(1u);
  return result;
}

id sub_10002CB0C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_10:
    v12 = (v7 - 1) & v7;
    v13 = __clz(__rbit64(v7)) | (v8 << 6);
    v14 = *(*(v3 + 48) + 8 * v13);
    sub_100005EF0(*(v3 + 56) + 32 * v13, &v19);
    *&v22[0] = v14;
    sub_100005EE0(&v19, (v22 + 8));
    result = v14;
    v16 = *&v22[0];
    v11 = v8;
LABEL_11:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v6;
    v1[3] = v11;
    v1[4] = v12;
    if (v16)
    {
      v18 = v1[5];
      v17 = v1[6];
      v19 = v16;
      v20 = *(v22 + 8);
      v21 = *(&v22[1] + 8);
      v18(&v19);
      return sub_1000050A4(&v19, &qword_10093D5E8, &qword_10079B2B0);
    }

    else
    {
      *(a1 + 32) = 0;
      *a1 = 0u;
      *(a1 + 16) = 0u;
    }
  }

  else
  {
    v9 = (v6 + 64) >> 6;
    if (v9 <= v5 + 1)
    {
      v10 = v5 + 1;
    }

    else
    {
      v10 = (v6 + 64) >> 6;
    }

    v11 = v10 - 1;
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v8 >= v9)
      {
        v16 = 0;
        v12 = 0;
        memset(v22, 0, 40);
        goto LABEL_11;
      }

      v7 = *(v4 + 8 * v8);
      ++v5;
      if (v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

id sub_10002CCBC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  sub_100005EF0((a1 + 1), (a2 + 1));
  *a2 = v4;

  return v4;
}

uint64_t sub_10002CD0C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1000F5104(&unk_100943D30, &unk_1007AAB90);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = v3;
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
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = (*(v5 + 56) + 32 * v20);
      if (a2)
      {
        sub_100005EE0(v22, v33);
      }

      else
      {
        sub_100005EF0(v22, v33);
        v23 = v21;
      }

      result = NSObject._rawHashValue(seed:)(*(v8 + 40));
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      result = sub_100005EE0(v33, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v31 = 1 << *(v5 + 32);
      if (v31 >= 64)
      {
        bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v31;
      }

      *(v5 + 16) = 0;
    }

    v3 = v32;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

void sub_10002D468(unint64_t a1, void *a2, uint64_t a3)
{
  v7 = _s10PredicatesOMa_3();
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7);
  v11 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v52 - v12;
  if (a1)
  {
    v60[0] = 0;
    v14 = a1;
    v15 = [v14 remObjectIDWithError:v60];
    v16 = v60[0];
    if (!v15)
    {
      v28 = v60[0];

      _convertNSErrorToError(_:)();
      swift_willThrow();
      goto LABEL_28;
    }

    v55 = a2;
    v52 = a1;
    *v13 = v15;
    v17 = v15;
    swift_storeEnumTagMultiPayload();
    v18 = v16;
    v58 = v17;
    v19 = sub_10002DDAC();
    sub_1000F5104(&unk_100939D60, &unk_1007959E0);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_1007953F0;
    *(v20 + 32) = v14;
    v60[0] = v20;
    sub_1000F5104(&qword_10093F5C0, &qword_1007A1FB0);
    a1 = sub_1000060C8(0, &qword_10093F430, NSPersistentStore_ptr);
    sub_10000CB90(&qword_100946C40, &qword_10093F5C0, &qword_1007A1FB0);
    sub_1000254F4();
    v21 = Sequence.compactMapToSet<A>(_:)();
    v54 = v3;
    a2 = sub_10002595C(v21);

    sub_1000060C8(0, &unk_10093F770, off_1008D41E8);
    v22 = [objc_allocWithZone(NSFetchRequest) init];
    v23 = [swift_getObjCClassFromMetadata() entity];
    [v22 setEntity:v23];

    isa = Array._bridgeToObjectiveC()().super.isa;
    [v22 setAffectedStores:isa];

    [v22 setPredicate:v19];

    v11 = v13;
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    v25 = sub_10002DDAC();
    sub_1000060C8(0, &unk_10093F770, off_1008D41E8);
    v22 = [objc_allocWithZone(NSFetchRequest) init];
    v26 = [swift_getObjCClassFromMetadata() entity];
    [v22 setEntity:v26];

    v52 = 0;
    v54 = v3;
    v55 = a2;
    if (a3)
    {
      sub_1000060C8(0, &qword_10093F430, NSPersistentStore_ptr);
      v27.super.isa = Array._bridgeToObjectiveC()().super.isa;
    }

    else
    {
      v27.super.isa = 0;
    }

    [v22 setAffectedStores:{v27.super.isa, v52}];

    [v22 setPredicate:v25];
  }

  sub_100025374(v11, _s10PredicatesOMa_3);
  v29 = qword_100936770;
  v14 = v22;
  if (v29 != -1)
  {
LABEL_36:
    swift_once();
  }

  v30 = qword_1009752D8;
  if (qword_1009752D8 >> 62)
  {
    v49 = qword_1009752D8;
    v50 = _CocoaArrayWrapper.endIndex.getter();
    v30 = v49;
    v31 = v50;
  }

  else
  {
    v31 = *((qword_1009752D8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v53 = v14;
  if (!v31)
  {
LABEL_25:
    v43 = Array._bridgeToObjectiveC()().super.isa;

    [v14 setRelationshipKeyPathsForPrefetching:v43];

    if (qword_100936778 != -1)
    {
      swift_once();
    }

    sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
    v44 = Array._bridgeToObjectiveC()().super.isa;
    [v14 setSortDescriptors:v44];

    sub_1000060C8(0, &unk_10093F770, off_1008D41E8);
    v45 = v54;
    a2 = NSManagedObjectContext.fetch<A>(_:)();
    a1 = v45;

    if (!v45)
    {
      if (qword_100936098 == -1)
      {
LABEL_30:
        v46 = type metadata accessor for Logger();
        v47 = sub_100006654(v46, qword_100946390);
        v58 = &v52;
        v48 = __chkstk_darwin(v47);
        v60[0] = a2;
        __chkstk_darwin(v48);
        sub_1000F5104(&qword_1009405B0, &unk_1007B4EC0);
        sub_10000CB90(&qword_1009405B8, &qword_1009405B0, &unk_1007B4EC0);
        Sequence.map<A>(skippingError:_:)();
        if (a1)
        {
        }

        return;
      }

LABEL_39:
      swift_once();
      goto LABEL_30;
    }

LABEL_28:

    return;
  }

  v32 = v30;
  v61 = _swiftEmptyArrayStorage;
  sub_100026EF4(0, v31 & ~(v31 >> 63), 0);
  if (v31 < 0)
  {
    __break(1u);
    goto LABEL_39;
  }

  a1 = 0;
  v33 = v61;
  v34 = v32;
  v57 = v32;
  v58 = (v32 & 0xC000000000000001);
  v56 = v32 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    v35 = a1 + 1;
    if (__OFADD__(a1, 1))
    {
      __break(1u);
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

    if (v58)
    {
      v36 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (a1 >= *(v56 + 16))
      {
        goto LABEL_35;
      }

      v36 = *(v34 + 8 * a1 + 32);
    }

    v37 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
    if (!v38)
    {
      break;
    }

    v39 = v37;
    v40 = v38;

    v61 = v33;
    v14 = v33[2];
    v41 = v33[3];
    a2 = (v14 + 1);
    if (v14 >= v41 >> 1)
    {
      sub_100026EF4((v41 > 1), v14 + 1, 1);
      v33 = v61;
    }

    v33[2] = a2;
    v42 = &v33[2 * v14];
    v42[4] = v39;
    v42[5] = v40;
    ++a1;
    v34 = v57;
    if (v35 == v31)
    {
      v14 = v53;
      goto LABEL_25;
    }
  }

  v60[0] = 0;
  v60[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(46);
  v51._object = 0x80000001007EC120;
  v51._countAndFlagsBits = 0xD00000000000002CLL;
  String.append(_:)(v51);
  v59 = v36;
  sub_1000F5104(&qword_100946530, &qword_10079B260);
  _print_unlocked<A, B>(_:_:)();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_10002DDAC()
{
  v1 = type metadata accessor for UUID();
  v201 = *(v1 - 8);
  v2 = *(v201 + 64);
  __chkstk_darwin(v1);
  v4 = &v153[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v187 = type metadata accessor for REMStringMatchingStyle();
  v5 = *(v187 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v187);
  v185 = &v153[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v186 = &v153[-v9];
  v10 = type metadata accessor for REMSearchCriterion();
  v198 = *(v10 - 8);
  v11 = v198[8];
  v12 = __chkstk_darwin(v10);
  v196 = &v153[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = __chkstk_darwin(v12);
  v16 = &v153[-v15];
  v17 = __chkstk_darwin(v14);
  v200 = &v153[-v18];
  v19 = __chkstk_darwin(v17);
  v195 = &v153[-v20];
  __chkstk_darwin(v19);
  v193 = &v153[-v21];
  v22 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v203 = *(v22 - 8);
  v23 = *(v203 + 64);
  v24 = __chkstk_darwin(v22 - 8);
  v26 = &v153[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v24);
  v28 = &v153[-v27];
  v29 = _s10PredicatesOMa_3();
  v30 = *(*(v29 - 8) + 64);
  __chkstk_darwin(v29);
  v32 = &v153[-((v31 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v205 = _swiftEmptyArrayStorage;
  sub_10002FBFC(v0, v32);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 2u:
      v57 = *v32;
      v192 = *(*v32 + 16);
      if (!v192)
      {

LABEL_101:
        v34 = 0;
        goto LABEL_102;
      }

      v181 = v16;
      v202 = v1;
      v58 = 0;
      v175 = 0;
      v191 = enum case for REMSearchCriterion.itemTypes(_:);
      v183 = enum case for REMSearchCriterion.objectID(_:);
      v174 = (v5 + 8);
      v173 = (v5 + 32);
      v172 = (v5 + 16);
      v171 = (v5 + 88);
      v59 = (v201 + 56);
      *&v33 = 136315138;
      v180 = v33;
      v179 = xmmword_100791340;
      v178 = enum case for REMSearchCriterion.accountID(_:);
      v177 = enum case for REMSearchCriterion.listID(_:);
      v176 = enum case for REMSearchCriterion.textualField(_:);
      v170 = enum case for REMSearchCriterion.displayName(_:);
      v168 = enum case for REMSearchCriterion.isCompleted(_:);
      v166 = enum case for REMSearchCriterion.completionDate(_:);
      v164 = enum case for REMSearchCriterion.hasLocation(_:);
      v163 = enum case for REMSearchCriterion.location(_:);
      v162 = enum case for REMSearchCriterion.dueDate(_:);
      v161 = enum case for REMSearchCriterion.hasDueDate(_:);
      v160 = enum case for REMSearchCriterion.modifiedDate(_:);
      v159 = enum case for REMSearchCriterion.creationDate(_:);
      v158 = enum case for REMSearchCriterion.isRecurrent(_:);
      v157 = enum case for REMSearchCriterion.isFlagged(_:);
      v156 = enum case for REMSearchCriterion.spotlightItemIdentifier(_:);
      v155 = enum case for REMSearchCriterion.daCalendarItemUniqueIdentifier(_:);
      v154 = enum case for REMSearchCriterion.listType(_:);
      v169 = enum case for REMStringMatchingStyle.exact(_:);
      v167 = enum case for REMStringMatchingStyle.prefix(_:);
      v165 = enum case for REMStringMatchingStyle.word(_:);
      v190 = v198 + 11;
      v197 = (v198 + 1);
      v182 = (v198 + 12);
      v194 = v10;
      v61 = v195;
      v60 = v196;
      v34 = v200;
      v62 = v193;
      v199 = v198 + 2;
      v188 = v26;
      v189 = v57;
      v184 = (v201 + 56);
      break;
    case 3u:
      v53 = v1;
      v36 = *v32;
      v34 = REMSmartListTypeCustom;
      KeyPath = swift_getKeyPath();
      v55 = v34;
      sub_1000301CC(KeyPath);

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (v205[2] >= v205[3] >> 1)
      {
        v149 = v205[2];
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v37 = swift_getKeyPath();
      v56 = [v36 uuid];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      (*(v201 + 56))(v28, 0, 1, v53);
      goto LABEL_17;
    case 4u:
      v133 = *v32;
      v134 = v32[8];
      v34 = REMSmartListTypeCustom;
      v135 = swift_getKeyPath();
      v136 = v34;
      v137 = v1;
      v138 = [v133 uuid];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      (*(v201 + 56))(v28, 0, 1, v137);
      sub_1000301FC(v135, v28);

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (v205[2] >= v205[3] >> 1)
      {
        v151 = v205[2];
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      if ((v134 & 1) == 0)
      {
        swift_getKeyPath();
        (sub_1000301CC)();

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (v205[2] >= v205[3] >> 1)
        {
          v152 = v205[2];
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      }

      goto LABEL_102;
    case 5u:
      v43 = *v32;
      v44 = swift_getKeyPath();
      v45 = v1;
      v46 = [v43 uuid];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      (*(v201 + 56))(v28, 0, 1, v45);
      sub_1000301FC(v44, v28);

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (v205[2] >= v205[3] >> 1)
      {
        v146 = v205[2];
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v47 = swift_getKeyPath();
      v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      sub_10003AD58(v47, v48, v49);

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (v205[2] >= v205[3] >> 1)
      {
        v147 = v205[2];
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v50 = swift_getKeyPath();
      sub_10003AF38(v50);

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (v205[2] >= v205[3] >> 1)
      {
        v148 = v205[2];
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      goto LABEL_101;
    case 6u:
      v129 = v201;
      (*(v201 + 32))(v4, v32, v1);
      v34 = REMSmartListTypeCustom;
      v130 = v1;
      v131 = swift_getKeyPath();
      (*(v129 + 16))(v28, v4, v130);
      (*(v129 + 56))(v28, 0, 1, v130);
      v132 = v34;
      sub_1000301FC(v131, v28);

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (v205[2] >= v205[3] >> 1)
      {
        v150 = v205[2];
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      (*(v129 + 8))(v4, v130);
      goto LABEL_102;
    case 7u:
      v36 = *v32;
      v34 = REMSmartListTypeCustom;
      v37 = swift_getKeyPath();
      v38 = v34;
      v39 = v1;
      v40 = [v36 uuid];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      (*(v201 + 56))(v28, 0, 1, v39);
      goto LABEL_17;
    case 8u:
    case 9u:
    case 0xBu:
    case 0xCu:
      goto LABEL_2;
    case 0xAu:
      v34 = REMSmartListTypeCustom;
      v41 = swift_getKeyPath();
      v42 = v34;
      sub_10003AF38(v41);

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (v205[2] < v205[3] >> 1)
      {
        goto LABEL_5;
      }

      goto LABEL_111;
    default:
      v34 = *v32;
      v36 = *(v32 + 1);
      v37 = swift_getKeyPath();
      v51 = v34;
      v52 = [v36 uuid];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      (*(v201 + 56))(v28, 0, 1, v1);
LABEL_17:
      sub_1000301FC(v37, v28);

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (v205[2] >= v205[3] >> 1)
      {
        v145 = v205[2];
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      goto LABEL_102;
  }

  while (1)
  {
    if (v58 >= *(v57 + 16))
    {
      __break(1u);
      goto LABEL_109;
    }

    v64 = v198;
    v65 = v57 + ((*(v64 + 80) + 32) & ~*(v64 + 80));
    v66 = v198[9];
    v201 = v58;
    v67 = v65 + v66 * v58;
    v68 = v198[2];
    v68(v62, v67, v10);
    v68(v61, v62, v10);
    v69 = (v64[11])(v61, v10);
    if (v69 == v191)
    {
      (*v197)(v61, v10);
      goto LABEL_27;
    }

    if (v69 == v183)
    {
      break;
    }

    if (v69 == v178)
    {
      (*v197)(v61, v10);
LABEL_45:
      if (qword_100936768 != -1)
      {
        swift_once();
      }

      v90 = type metadata accessor for Logger();
      sub_100006654(v90, qword_100950B28);
      v68(v60, v62, v10);
      v91 = Logger.logObject.getter();
      v92 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v91, v92))
      {
        v93 = swift_slowAlloc();
        v94 = swift_slowAlloc();
        v204 = v94;
        *v93 = v180;
        v68(v181, v196, v10);
        v95 = String.init<A>(describing:)();
        v97 = v96;
        v98 = *v197;
        (*v197)(v196, v194);
        v99 = sub_10000668C(v95, v97, &v204);

        *(v93 + 4) = v99;
        _os_log_impl(&_mh_execute_header, v91, v92, "Dropping unsupported criterion for searching REMCDSmartList. {criterion: %s}", v93, 0xCu);
        sub_10000607C(v94);

        v61 = v195;
        v60 = v196;
        v100 = v200;

        v62 = v193;
        v98(v193, v194);
        v34 = v100;
        v10 = v194;
      }

      else
      {

        v103 = *v197;
        (*v197)(v60, v10);
        v62 = v193;
        v103(v193, v10);
      }

      v26 = v188;
      goto LABEL_23;
    }

    if (v69 == v177)
    {
      (*v182)(v61, v10);

      v101 = *(sub_1000F5104(&qword_100946020, &unk_1007A73E8) + 48);
      v102 = type metadata accessor for REMSearchCriterion.Inclusion();
      (*(*(v102 - 8) + 8))(v61 + v101, v102);
      goto LABEL_27;
    }

    if (v69 != v176)
    {
      if (v69 == v170)
      {
        (*v182)(v61, v10);
        v116 = *(v61 + 8);

        v117 = sub_1000F5104(&qword_100945098, qword_1007B11A0);
        (*v174)(v61 + *(v117 + 48), v187);
        goto LABEL_45;
      }

      if (v69 == v168)
      {
        goto LABEL_27;
      }

      if (v69 != v166)
      {
        if (v69 == v164)
        {
          goto LABEL_27;
        }

        if (v69 == v163)
        {
          (*v182)(v61, v10);
          v120 = *(v61 + 8);

          v121 = sub_1000F5104(&qword_100945098, qword_1007B11A0);
          (*v174)(v61 + *(v121 + 48), v187);
          goto LABEL_27;
        }

        if (v69 != v162)
        {
          if (v69 == v161)
          {
            goto LABEL_27;
          }

          if (v69 != v160 && v69 != v159)
          {
            if (v69 != v158 && v69 != v157)
            {
              if (v69 != v156 && v69 != v155 && v69 != v154)
              {
LABEL_112:
                _diagnoseUnexpectedEnumCase<A>(type:)();
                __break(1u);
                JUMPOUT(0x10002F924);
              }

              v10 = v194;
              v61 = v195;
              (*v197)(v195, v194);
              v60 = v196;
              v34 = v200;
              v62 = v193;
            }

            goto LABEL_27;
          }
        }
      }

      (*v182)(v61, v10);
      v119 = sub_1000F5104(&qword_100938C18, &qword_1007957A0);
      sub_1000050A4(v61 + *(v119 + 48), &unk_100938850, qword_100795AE0);
      sub_1000050A4(v61, &unk_100938850, qword_100795AE0);
LABEL_27:
      if (qword_100936768 != -1)
      {
        swift_once();
      }

      v70 = type metadata accessor for Logger();
      sub_100006654(v70, qword_100950B28);
      v68(v34, v62, v10);
      v71 = Logger.logObject.getter();
      v72 = v62;
      v73 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v71, v73))
      {
        v74 = swift_slowAlloc();
        v75 = swift_slowAlloc();
        v204 = v75;
        *v74 = v180;
        v68(v181, v200, v10);
        v76 = String.init<A>(describing:)();
        v78 = v77;
        v79 = *v197;
        (*v197)(v200, v194);
        v80 = sub_10000668C(v76, v78, &v204);

        *(v74 + 4) = v80;
        _os_log_impl(&_mh_execute_header, v71, v73, "Dropping unsupported criterion for searching REMCDSmartList. {criterion: %s}", v74, 0xCu);
        sub_10000607C(v75);

        v61 = v195;
        v60 = v196;
        v34 = v200;

        v79(v72, v194);
        v59 = v184;
        v10 = v194;
        v62 = v72;
        v26 = v188;
      }

      else
      {

        v63 = *v197;
        (*v197)(v34, v10);
        v63(v72, v10);
        v62 = v72;
        v26 = v188;
        v59 = v184;
      }

      goto LABEL_23;
    }

    (*v182)(v61, v10);
    v104 = v61;
    v105 = *v61;
    v106 = *(v104 + 8);
    v107 = v104 + *(sub_1000F5104(&qword_100945098, qword_1007B11A0) + 48);
    v109 = v186;
    v108 = v187;
    (*v173)(v186, v107, v187);
    v110 = v185;
    (*v172)(v185, v109, v108);
    v111 = (*v171)(v110, v108);
    if (v111 == v169)
    {
      sub_1000F5104(&unk_100938E80, &unk_1007959D0);
      v112 = swift_allocObject();
      *(v112 + 16) = v179;
      *(v112 + 56) = &type metadata for String;
      *(v112 + 32) = 1701667182;
      *(v112 + 40) = 0xE400000000000000;
      *(v112 + 88) = sub_1000F5104(&unk_100939E40, &qword_100791BD0);
      *(v112 + 64) = v105;
      *(v112 + 72) = v106;
      v113 = String._bridgeToObjectiveC()();
      isa = Array._bridgeToObjectiveC()().super.isa;

      v115 = [objc_opt_self() predicateWithFormat:v113 argumentArray:isa];

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (v205[2] >= v205[3] >> 1)
      {
        v127 = v205[2];
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      (*v174)(v186, v187);
      (*v197)(v62, v10);
    }

    else
    {
      if (v111 != v167 && v111 != v165)
      {
        goto LABEL_112;
      }

      v118 = swift_getKeyPath();
      sub_1003EB7F0(v118, v105, v106, 6);

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (v205[2] >= v205[3] >> 1)
      {
        v128 = v205[2];
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      (*v174)(v186, v187);
      v62 = v193;
      (*v197)(v193, v10);
    }

    v175 = 1;
LABEL_87:
    v61 = v195;
    v60 = v196;
    v34 = v200;
LABEL_23:
    v58 = v201 + 1;
    v57 = v189;
    if (v201 + 1 == v192)
    {

      if (v175)
      {
LABEL_2:
        v34 = REMSmartListTypeCustom;
        v35 = REMSmartListTypeCustom;
        goto LABEL_102;
      }

      goto LABEL_101;
    }
  }

  (*v182)(v61, v10);
  v81 = *v61;
  if (!(v81 >> 62))
  {
    v82 = *((v81 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v82)
    {
      goto LABEL_34;
    }

LABEL_83:

    v84 = _swiftEmptyArrayStorage;
LABEL_84:
    sub_1000F5104(&unk_100938E80, &unk_1007959D0);
    v122 = swift_allocObject();
    *(v122 + 16) = v179;
    *(v122 + 56) = &type metadata for String;
    *(v122 + 32) = 0x696669746E656469;
    *(v122 + 40) = 0xEA00000000007265;
    *(v122 + 88) = sub_1000F5104(&qword_100946088, &unk_1007A7690);
    *(v122 + 64) = v84;
    v123 = String._bridgeToObjectiveC()();
    v124 = Array._bridgeToObjectiveC()().super.isa;

    v125 = [objc_opt_self() predicateWithFormat:v123 argumentArray:v124];

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (v205[2] >= v205[3] >> 1)
    {
      v126 = v205[2];
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v62 = v193;
    (*v197)(v193, v10);
    goto LABEL_87;
  }

  v82 = _CocoaArrayWrapper.endIndex.getter();
  if (!v82)
  {
    goto LABEL_83;
  }

LABEL_34:
  v204 = _swiftEmptyArrayStorage;
  sub_100253218(0, v82 & ~(v82 >> 63), 0);
  if ((v82 & 0x8000000000000000) == 0)
  {
    v83 = 0;
    v84 = v204;
    do
    {
      if ((v81 & 0xC000000000000001) != 0)
      {
        v85 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v85 = *(v81 + v83 + 4);
      }

      v86 = v85;
      v87 = [v85 uuid];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      (*v59)(v26, 0, 1, v202);
      v204 = v84;
      v89 = v84[2];
      v88 = v84[3];
      if (v89 >= v88 >> 1)
      {
        sub_100253218(v88 > 1, v89 + 1, 1);
        v84 = v204;
      }

      ++v83;
      v84[2] = v89 + 1;
      sub_100100FB4(v26, v84 + ((*(v203 + 80) + 32) & ~*(v203 + 80)) + *(v203 + 72) * v89);
    }

    while (v82 != v83);

    v10 = v194;
    goto LABEL_84;
  }

  __break(1u);
LABEL_111:
  specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
LABEL_5:
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
LABEL_102:
  sub_10001035C(0);
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (v205[2] < v205[3] >> 1)
  {
    goto LABEL_103;
  }

LABEL_109:
  specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
LABEL_103:
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  if (v34)
  {
    v139 = swift_getKeyPath();
    v140 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_1000120BC(v139, v140, v141);

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (v205[2] >= v205[3] >> 1)
    {
      v144 = v205[2];
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  v142 = sub_10000C2B0(v205);

  return v142;
}

id sub_10002F998@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 parentAccount];
  *a2 = result;
  return result;
}

id sub_10002FA9C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 parentList];
  *a2 = result;
  return result;
}

id sub_10002FB9C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 account];
  *a2 = result;
  return result;
}

uint64_t sub_10002FBFC(uint64_t a1, uint64_t a2)
{
  v4 = _s10PredicatesOMa_3();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_BYTE *sub_10002FC60(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload == 6)
      {
        v15 = type metadata accessor for UUID();
        (*(*(v15 - 8) + 16))(a1, a2, v15);
        goto LABEL_16;
      }

      if (EnumCaseMultiPayload != 7)
      {
        goto LABEL_17;
      }
    }

    else if (EnumCaseMultiPayload == 4)
    {
      v13 = *a2;
      *a1 = *a2;
      a1[8] = a2[8];
      v14 = v13;
      goto LABEL_16;
    }

LABEL_12:
    v11 = *a2;
    *a1 = *a2;
    v12 = v11;
    goto LABEL_16;
  }

  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      *a1 = *a2;

      goto LABEL_16;
    }

    goto LABEL_12;
  }

  if (EnumCaseMultiPayload <= 1)
  {
    v7 = *a2;
    v8 = *(a2 + 1);
    *a1 = v7;
    *(a1 + 1) = v8;
    v9 = v7;
    v10 = v8;
LABEL_16:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

LABEL_17:
  v17 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v17);
}

void sub_100030178(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_100030280(uint64_t a1)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload <= 5)
    {
      goto LABEL_8;
    }

    if (EnumCaseMultiPayload != 6)
    {
      if (EnumCaseMultiPayload != 7)
      {
        return;
      }

      goto LABEL_8;
    }

    v5 = type metadata accessor for UUID();
    v6 = *(*(v5 - 8) + 8);

    v6(a1, v5);
  }

  else
  {
    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload > 1)
      {
        return;
      }

      v3 = *(a1 + 8);
      goto LABEL_9;
    }

    if (EnumCaseMultiPayload != 2)
    {
LABEL_8:
      v3 = *a1;
LABEL_9:

      return;
    }

    v4 = *a1;
  }
}

void *sub_1000303FC(unint64_t a1, void *a2)
{
  if (a1 >> 62)
  {
    goto LABEL_89;
  }

  v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  if (!v3)
  {
    return _swiftEmptyArrayStorage;
  }

  v4 = sub_100516DE8();
  if (v2)
  {
    return _swiftEmptyArrayStorage;
  }

  v5 = v4;
  v6 = [v4 smartListStorages];
  sub_1000060C8(0, &qword_10093A228, REMSmartListStorage_ptr);
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v68 = v5;
  v72 = v7 >> 62;
  v71 = v7 & 0xFFFFFFFFFFFFFF8;
  if (v7 >> 62)
  {
    v8 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = 0;
  v76 = v7 & 0xC000000000000001;
  v77 = v7;
  while (1)
  {
    if (v8 == v9)
    {
      v19 = 0;
      v75 = 0;
      if (!v72)
      {
        goto LABEL_82;
      }

LABEL_21:
      v20 = _CocoaArrayWrapper.endIndex.getter();
      if (!v20)
      {
        goto LABEL_83;
      }

      goto LABEL_22;
    }

    if (v76)
    {
      v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v9 >= *(v71 + 16))
      {
        goto LABEL_87;
      }

      v10 = *(v7 + 8 * v9 + 32);
    }

    v11 = v10;
    if (__OFADD__(v9, 1))
    {
      goto LABEL_86;
    }

    v12 = [v10 smartListType];
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;
    if (v13 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v15 == v16)
    {
      break;
    }

    v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

    ++v9;
    v7 = v77;
    if (v18)
    {
      goto LABEL_72;
    }
  }

LABEL_72:
  v57 = [v68 accountStorages];
  sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
  sub_1000060C8(0, &unk_10093F580, REMAccountStorage_ptr);
  sub_10018BA8C();
  v58 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if ((v58 & 0xC000000000000001) != 0)
  {
    if (v58 < 0)
    {
      v59 = v58;
    }

    else
    {
      v59 = v58 & 0xFFFFFFFFFFFFFF8;
    }

    v2 = 0;
    v75 = sub_100717A18(v59, a2);
  }

  else
  {
    v2 = 0;
    v75 = sub_100717888(v58, a2);
  }

  v70 = objc_opt_self();
  v60 = [v68 accountStorages];
  v61 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  sub_100277C98(v61);

  isa = Array._bridgeToObjectiveC()().super.isa;

  v63 = [v68 parentListStorages];
  sub_1000060C8(0, &unk_10094F0C0, REMListStorage_ptr);
  v64 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  sub_100277C70(v64);

  v65 = Array._bridgeToObjectiveC()().super.isa;

  v66 = [v70 listsFromAccountStorages:isa listStorages:v65 store:a2];

  if (v66)
  {
    sub_1000060C8(0, &qword_10093D5D0, REMList_ptr);
    v19 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v19 = 0;
  }

  v7 = v77;
  if (v72)
  {
    goto LABEL_21;
  }

LABEL_82:
  v20 = *(v71 + 16);
  if (!v20)
  {
LABEL_83:

    return _swiftEmptyArrayStorage;
  }

LABEL_22:
  result = specialized ContiguousArray.reserveCapacity(_:)();
  if ((v20 & 0x8000000000000000) == 0)
  {
    v22 = 0;
    v69 = v19;
    v67 = v19 & 0xC000000000000001;
    v73 = v20;
    while (1)
    {
      v24 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
LABEL_86:
        __break(1u);
LABEL_87:
        __break(1u);
LABEL_88:
        __break(1u);
LABEL_89:
        v3 = _CocoaArrayWrapper.endIndex.getter();
        goto LABEL_3;
      }

      if (v76)
      {
        v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v22 >= *(v71 + 16))
        {
          goto LABEL_88;
        }

        v25 = *(v7 + 8 * v22 + 32);
      }

      v26 = v25;
      v27 = [v25 remObjectID];
      v28 = [v26 smartListType];
      v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v31 = v30;
      if (v29 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v31 == v32)
      {

        if (!v75)
        {
          goto LABEL_53;
        }
      }

      else
      {
        v34 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v34 & 1) == 0 || !v75)
        {
          goto LABEL_53;
        }
      }

      if ((v75 & 0xC000000000000001) != 0)
      {
        v35 = v27;
        v36 = __CocoaDictionary.lookup(_:)();

        if (v36)
        {
          sub_1000060C8(0, &qword_100947958, REMAccount_ptr);
          swift_dynamicCast();
          v37 = v78;
          if (v78)
          {
            goto LABEL_47;
          }
        }
      }

      else if (*(v75 + 16))
      {
        v38 = sub_10002B924(v27);
        if (v39)
        {
          v37 = *(*(v75 + 56) + 8 * v38);
          if (v37)
          {
LABEL_47:
            v40 = [v26 parentListID];
            if (v40)
            {
              v41 = v40;
              if (v69)
              {
                if (v67)
                {
                  v42 = v40;
                  v43 = __CocoaDictionary.lookup(_:)();

                  if (v43)
                  {
                    sub_1000060C8(0, &qword_10093D5D0, REMList_ptr);
                    swift_dynamicCast();
                    v43 = v78;
                  }

                  v7 = v77;
                }

                else
                {
                  v7 = v77;
                  if (*(v69 + 16) && (v55 = sub_10002B924(v40), (v56 & 1) != 0))
                  {
                    v43 = *(*(v69 + 56) + 8 * v55);
                  }

                  else
                  {
                    v43 = 0;
                  }
                }
              }

              else
              {
                v43 = 0;
                v7 = v77;
              }

              v54 = v43;
            }

            else
            {
              v54 = 0;
              v7 = v77;
            }

            [objc_allocWithZone(type metadata accessor for REMSmartList_Codable()) initWithStore:a2 account:v37 parentList:v54 storage:v26];

            v27 = v54;
            goto LABEL_26;
          }
        }
      }

LABEL_53:
      v44 = [v26 smartListType];
      v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v47 = v46;
      if (v45 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v47 == v48)
      {

LABEL_57:
        if (qword_100936768 != -1)
        {
          swift_once();
        }

        v50 = type metadata accessor for Logger();
        sub_100006654(v50, qword_100950B28);
        v51 = Logger.logObject.getter();
        v52 = static os_log_type_t.fault.getter();
        if (os_log_type_enabled(v51, v52))
        {
          v53 = swift_slowAlloc();
          *v53 = 0;
          _os_log_impl(&_mh_execute_header, v51, v52, "expecting a valid REMAccount for a custom smart list", v53, 2u);
        }

        goto LABEL_25;
      }

      v49 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v49)
      {
        goto LABEL_57;
      }

LABEL_25:
      [objc_allocWithZone(type metadata accessor for REMSmartList_Codable()) initWithStore:a2 storage:v26];
      v7 = v77;
LABEL_26:

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v23 = _swiftEmptyArrayStorage[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      ++v22;
      if (v24 == v73)
      {

        return _swiftEmptyArrayStorage;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100030E2C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100030E90(unint64_t *a1, void (*a2)(uint64_t))
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

size_t sub_100030FA0(size_t a1, int64_t a2, char a3)
{
  result = sub_10001C184(a1, a2, a3, *v3, &qword_10093ED58, &unk_10079D4D0, &type metadata accessor for REMAccountsListDataView.Model.AccountChild);
  *v3 = result;
  return result;
}

uint64_t sub_100030FE4()
{

  return swift_deallocClassInstance();
}

uint64_t sub_100031020(unint64_t a1, void (*a2)(uint64_t, void, unint64_t))
{
  if (a1 >> 62)
  {
    v5 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = *v2;
  if (!(*v2 >> 62))
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v8 = __OFADD__(v7, v5);
    result = v7 + v5;
    if (!v8)
    {
      goto LABEL_5;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v6 < 0)
  {
    v16 = *v2;
  }

  v17 = _CocoaArrayWrapper.endIndex.getter();
  v8 = __OFADD__(v17, v5);
  result = v17 + v5;
  if (v8)
  {
    goto LABEL_15;
  }

LABEL_5:
  sub_1000122D0(result);
  v10 = *v2;
  v11 = *v2 & 0xFFFFFFFFFFFFFF8;
  a2(v11 + 8 * *(v11 + 0x10) + 32, (*(v11 + 0x18) >> 1) - *(v11 + 0x10), a1);
  v13 = v12;

  if (v13 < v5)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v13 < 1)
  {
LABEL_9:
    *v2 = v10;
    return result;
  }

  v14 = *(v11 + 16);
  v8 = __OFADD__(v14, v13);
  v15 = v14 + v13;
  if (!v8)
  {
    *(v11 + 16) = v15;
    goto LABEL_9;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_100031118(uint64_t result, uint64_t a2, unint64_t a3)
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
          sub_100011110(&qword_10093F718, &qword_10093F710, &qword_10079E008);
          for (i = 0; i != v6; ++i)
          {
            sub_1000F5104(&qword_10093F710, &qword_10079E008);
            v9 = sub_100011090(v13, i, a3);
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
        sub_1000060C8(0, &qword_10093F430, NSPersistentStore_ptr);
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

uint64_t sub_1000312B8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_1000F5104(&qword_100948BB8, &qword_1007ACBC8);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v31[-v6];
  v8 = _s5CacheVMa();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v31[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  ObjectType = swift_getObjectType();
  v14 = (*(a1 + 8))(ObjectType, a1);
  if (v15 >> 60 == 15)
  {
    if (qword_100936260 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_100006654(v16, qword_100948A78);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "REMAccountsListDataView.Invocation no cache", v19, 2u);
    }

    v20 = sub_1000F5104(&qword_100948BB0, &qword_1007ACBC0);
    v21 = *(*(v20 - 8) + 56);

    return v21(a2, 1, 1, v20);
  }

  else
  {
    v23 = v14;
    v24 = v15;
    v25 = type metadata accessor for PropertyListDecoder();
    v26 = *(v25 + 48);
    v27 = *(v25 + 52);
    swift_allocObject();
    PropertyListDecoder.init()();
    sub_100030E90(&qword_100948BC0, _s5CacheVMa);
    dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();

    sub_100031A14(v23, v24);
    (*(v9 + 56))(v7, 0, 1, v8);
    sub_100031AF4(v7, v12);
    v28 = sub_1000F5104(&qword_100948BB0, &qword_1007ACBC0);
    v29 = *(v28 + 48);
    v30 = type metadata accessor for REMAccountsListDataView.ReminderCounts();
    (*(*(v30 - 8) + 32))(a2, v12, v30);
    *(a2 + v29) = *&v12[*(v8 + 20)];
    return (*(*(v28 - 8) + 56))(a2, 0, 1, v28);
  }
}

uint64_t _s5CacheVMa()
{
  result = qword_100948C98;
  if (!qword_100948C98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100031820()
{
  v1 = [v0 accountsListCategorizedCountsCache];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

unint64_t sub_1000318A0()
{
  result = qword_100948CD8;
  if (!qword_100948CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100948CD8);
  }

  return result;
}

unint64_t sub_1000318F4()
{
  result = qword_1009396F0;
  if (!qword_1009396F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009396F0);
  }

  return result;
}

id sub_100031948()
{
  isa = Data._bridgeToObjectiveC()().super.isa;
  v5 = 0;
  v1 = [swift_getObjCClassFromMetadata() fetchResultTokenFromDataRepresentation:isa error:&v5];

  if (v1)
  {
    v2 = v5;
  }

  else
  {
    v3 = v5;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v1;
}

uint64_t sub_100031A14(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_10001BBA0(a1, a2);
  }

  return a1;
}

uint64_t sub_100031A3C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for REMAccountsListDataView.ReminderCounts();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_100031AF4(uint64_t a1, uint64_t a2)
{
  v4 = _s5CacheVMa();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100031B58(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1000F5104(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_100031BC0(unint64_t a1, void *a2, char a3, objc_class *a4)
{
  v39 = _s10PredicatesOMa_1();
  v9 = *(*(v39 - 1) + 64);
  __chkstk_darwin(v39);
  v11 = v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1;
  if (a3)
  {
    if (qword_100935BC8 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for MockInMemoryPreferredDefaultListStorage();
    v14 = &qword_100974C48;
    v15 = &off_1008E9C20;
  }

  else
  {
    if (qword_100935BC0 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for REMDaemonUserDefaultsPreferredListStorageAdapter();
    v14 = &qword_100974C40;
    v15 = &off_1008E9C58;
  }

  v16 = *v14;
  v38[3] = v13;
  v38[4] = v15;
  v38[0] = v16;

  if (a2 == 2)
  {
    v17 = 0;
  }

  else
  {
    v17 = a2;
  }

  v18 = a2 != 1 && a2 != 2;
  v19 = a2 != 1;
  if (a2 == 1)
  {
    v20 = 0;
  }

  else
  {
    v20 = v17;
  }

  sub_100033528(a2);
  v21 = sub_1000320EC(v12, a2 == 1, v19, 0, v38, a4);
  if (v4)
  {
    goto LABEL_21;
  }

  v36[2] = v12;
  v37 = v20;
  v19 = v21;
  if (!v18)
  {
    goto LABEL_21;
  }

  v22 = a4;
  v19 = sub_1001DFC3C(v37, 0, v21);

  if (v19 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_21;
    }
  }

  else if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_21:
    sub_10000607C(v38);
    sub_100034014(a2);
    return v19;
  }

  swift_storeEnumTagMultiPayload();
  v24 = sub_10001F6F4();
  sub_100025254(v11, _s10PredicatesOMa_1);
  v36[1] = sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100799D70;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = swift_getKeyPath();
  *(inited + 48) = swift_getKeyPath();
  v26 = qword_100936528;
  v39 = v24;
  if (v26 != -1)
  {
    swift_once();
  }

  v27 = sub_100405438(inited, qword_100975238, v22, v24);
  swift_setDeallocating();
  v28 = *(inited + 16);
  swift_arrayDestroy();
  v29 = v37;
  if (qword_100936520 != -1)
  {
    swift_once();
  }

  sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;
  [v27 setSortDescriptors:isa];

  sub_1000060C8(0, &unk_100938880, off_1008D41A8);
  v31 = NSManagedObjectContext.fetch<A>(_:)();

  v32 = v39;
  v33 = sub_1001DFC3C(v29, 1, v31);

  if (!(v33 >> 62))
  {
    if (*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_30;
    }

LABEL_35:
    sub_10000607C(v38);
    sub_100034014(a2);

    return v19;
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_35;
  }

LABEL_30:

  if ((v33 & 0xC000000000000001) != 0)
  {
    v34 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_33;
  }

  if (*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v34 = *(v33 + 32);
LABEL_33:
    v35 = v34;

    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_1007953F0;
    *(v19 + 32) = v35;
    sub_100034014(a2);
    sub_10000607C(v38);
    return v19;
  }

  __break(1u);
  return result;
}

void *sub_1000320EC(unint64_t a1, uint64_t a2, int a3, int a4, void *a5, objc_class *a6)
{
  v154 = a6;
  LODWORD(v149) = a3;
  v155 = a1;
  v9 = sub_1000F5104(&unk_1009441F0, &qword_100795760);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v145 = &v140 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v140 - v13;
  v15 = type metadata accessor for URL();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v150 = &v140 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = _s10PredicatesOMa_1();
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19);
  v22 = &v140 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v151 = v23;
  swift_storeEnumTagMultiPayload();
  v24 = sub_10001F6F4();
  sub_100025254(v22, _s10PredicatesOMa_1);
  v153 = a5;
  LODWORD(i) = a4;
  v147 = v16;
  if (a4)
  {
    v25 = v24;
    v26 = v24;
    v22 = v24;
    v27 = v6;
    goto LABEL_26;
  }

  v146 = v24;
  v148 = v6;
  v28 = a5[3];
  v29 = a5[4];
  sub_10000F61C(a5, v28);
  (*(v29 + 8))(v28, v29);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_1000050A4(v14, &unk_1009441F0, &qword_100795760);
    goto LABEL_14;
  }

  v30 = v150;
  (*(v16 + 32))(v150, v14, v15);
  v31 = v155;
  v32 = [v155 persistentStoreCoordinator];
  if (!v32 || (v34 = v32, URL._bridgeToObjectiveC()(v33), v36 = v35, v37 = [v34 managedObjectIDForURIRepresentation:v35], v34, v36, !v37))
  {
    (*(v16 + 8))(v30, v15);
LABEL_14:
    v45 = v153[3];
    v46 = v153[4];
    sub_10000F61C(v153, v45);
    v47 = (*(v46 + 32))(v45, v46);
    v27 = v148;
    if (v47)
    {
      v48 = v47;
      sub_1000F5104(&unk_100939D60, &unk_1007959E0);
      v49 = swift_allocObject();
      *(v49 + 16) = xmmword_1007953F0;
      *(v49 + 32) = v48;
      *v22 = v49;
      swift_storeEnumTagMultiPayload();
      v50 = v48;
      v51 = sub_10001F6F4();
      sub_100025254(v22, _s10PredicatesOMa_1);
      sub_1000F5104(&qword_10093C918, &unk_10079A3C0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100791340;
      v22 = v146;
      *(inited + 32) = v146;
      *(inited + 40) = v51;
      v53 = v51;
      v54 = v22;
      v26 = sub_100025060(inited);
    }

    else
    {
      v22 = v146;
      v55 = v146;
      v26 = v22;
    }

    goto LABEL_26;
  }

  swift_storeEnumTagMultiPayload();
  v144 = sub_10001F6F4();
  sub_100025254(v22, _s10PredicatesOMa_1);
  v143 = v37;
  if (v149)
  {
    v156 = 0;
    v38 = [v31 existingObjectWithID:v37 error:&v156];
    v39 = v156;
    v27 = v148;
    if (!v38)
    {
      v56 = v156;
      _convertNSErrorToError(_:)();

      swift_willThrow();

      v27 = 0;
      goto LABEL_25;
    }

    v26 = v38;
    objc_opt_self();
    v40 = swift_dynamicCastObjCClass();
    if (v40)
    {
      v141 = v40;
      v41 = v144;
      if (!v144)
      {
        v58 = qword_100935F50;
        v59 = v39;
        if (v58 == -1)
        {
          goto LABEL_22;
        }

        goto LABEL_116;
      }

      v42 = v39;
      v43 = v141;
      if ([v41 evaluateWithObject:v141])
      {
        sub_1000F5104(&unk_100939D60, &unk_1007959E0);
        v44 = v15;
        v15 = swift_allocObject();
        *(v15 + 16) = xmmword_1007953F0;
        *(v15 + 32) = v43;

        (*(v147 + 8))(v30, v44);
        return v15;
      }
    }

    else
    {
      v57 = v39;
    }

    goto LABEL_25;
  }

  v27 = v148;
  while (1)
  {
LABEL_25:
    sub_1000F5104(&unk_100939D60, &unk_1007959E0);
    v67 = swift_allocObject();
    *(v67 + 16) = xmmword_1007953F0;
    v68 = v143;
    *(v67 + 32) = v143;
    *v22 = v67;
    swift_storeEnumTagMultiPayload();
    v69 = v68;
    v70 = sub_10001F6F4();
    sub_100025254(v22, _s10PredicatesOMa_1);
    sub_1000F5104(&qword_10093C918, &unk_10079A3C0);
    v71 = swift_initStackObject();
    *(v71 + 16) = xmmword_100791340;
    v22 = v146;
    *(v71 + 32) = v146;
    *(v71 + 40) = v70;
    v72 = v70;
    v73 = v22;
    v26 = sub_100025060(v71);

    (*(v147 + 8))(v150, v15);
LABEL_26:
    v144 = sub_1000F5104(&unk_100939D60, &unk_1007959E0);
    v74 = swift_initStackObject();
    *(v74 + 16) = xmmword_100799D70;
    *(v74 + 32) = swift_getKeyPath();
    *(v74 + 40) = swift_getKeyPath();
    *(v74 + 48) = swift_getKeyPath();
    v75 = qword_100936528;
    v76 = v26;
    if (v75 != -1)
    {
LABEL_54:
      swift_once();
    }

    v77 = sub_100405438(v74, qword_100975238, v154, v26);

    swift_setDeallocating();
    v78 = *(v74 + 16);
    swift_arrayDestroy();
    if (qword_100936520 != -1)
    {
      swift_once();
    }

    sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;
    [v77 setSortDescriptors:isa];

    sub_1000060C8(0, &unk_100938880, off_1008D41A8);
    v80 = NSManagedObjectContext.fetch<A>(_:)();
    if (v27)
    {

      return v15;
    }

    if (i)
    {
      v15 = v80;

LABEL_124:
      return v15;
    }

    v81 = v80;
    if ((v149 & 1) == 0)
    {

      return v81;
    }

    v82 = v153[3];
    v83 = v153[4];
    sub_10000F61C(v153, v82);
    v84 = *(v83 + 32);
    v155 = v81;
    v85 = v84(v82, v83);
    v26 = v155;
    v74 = v155 >> 62;
    v148 = 0;
    v151 = v76;
    v154 = v77;
    i = v85;
    v142 = v15;
    if (!v85)
    {
      goto LABEL_67;
    }

    v156 = _swiftEmptyArrayStorage;
    if (v74)
    {
      v15 = _CocoaArrayWrapper.endIndex.getter();
      if (v15)
      {
LABEL_37:
        v150 = v74;
        v146 = v22;
        v22 = 0;
        v86 = v26 & 0xC000000000000001;
        v27 = v26 & 0xFFFFFFFFFFFFFF8;
        while (1)
        {
          if (v86)
          {
            v87 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v22 >= *(v27 + 16))
            {
              goto LABEL_53;
            }

            v87 = *(v26 + 8 * v22 + 32);
          }

          v74 = v87;
          v88 = v22 + 1;
          if (__OFADD__(v22, 1))
          {
            break;
          }

          v89 = [v87 remObjectID];
          if (v89)
          {
            v90 = v89;
            sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
            v91 = i;
            v92 = static NSObject.== infix(_:_:)();

            if (v92)
            {
              specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
              v93 = v156[2];
              specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
              specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              specialized ContiguousArray._endMutation()();
            }

            else
            {
            }

            v76 = v151;
            v26 = v155;
          }

          else
          {
          }

          ++v22;
          v77 = v154;
          if (v88 == v15)
          {
            v15 = v156;
            v27 = v148;
            v22 = v146;
            v74 = v150;
            goto LABEL_57;
          }
        }

        __break(1u);
LABEL_53:
        __break(1u);
        goto LABEL_54;
      }
    }

    else
    {
      v15 = *((v155 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v15)
      {
        goto LABEL_37;
      }
    }

    v15 = _swiftEmptyArrayStorage;
LABEL_57:

    if (*(v15 + 16) != 1)
    {
      goto LABEL_66;
    }

LABEL_60:

    if ((v15 & 0xC000000000000001) != 0)
    {
      v94 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_63:
      v95 = v94;
      v96 = [v94 objectID];
      v97 = [v96 URIRepresentation];

      v98 = v145;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      (*(v147 + 56))(v98, 0, 1, v142);
      v99 = v153[3];
      v100 = v153[4];
      sub_10000C9DC(v153, v99);
      (*(v100 + 16))(v98, v99, v100);

      v101 = &v157;
LABEL_123:

      goto LABEL_124;
    }

    if (*(v15 + 16))
    {
      v94 = *(v15 + 32);
      goto LABEL_63;
    }

    __break(1u);
LABEL_116:
    swift_once();
LABEL_22:
    v60 = type metadata accessor for Logger();
    sub_100006654(v60, qword_1009442B0);
    v61 = v26;
    v62 = Logger.logObject.getter();
    v63 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      *v64 = 138412290;
      v66 = v141;
      *(v64 + 4) = v141;
      *v65 = v66;
      v61 = v61;
      _os_log_impl(&_mh_execute_header, v62, v63, "Evaluating TypedPredicate with nil NSPredicate against object {object: %@}", v64, 0xCu);
      sub_1000050A4(v65, &unk_100938E70, &unk_100797230);

      v27 = v148;
    }
  }

  if (_CocoaArrayWrapper.endIndex.getter() == 1 && _CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_60;
  }

LABEL_66:

LABEL_67:
  if (v74)
  {
    goto LABEL_113;
  }

  for (i = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v102 = 0;
    v150 = (v26 & 0xC000000000000001);
    v149 = v26 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v150)
      {
        v104 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v102 >= *(v149 + 16))
        {
          goto LABEL_108;
        }

        v104 = *(v26 + 8 * v102 + 32);
      }

      v105 = v104;
      v106 = (v102 + 1);
      if (__OFADD__(v102, 1))
      {
        break;
      }

      v107 = [v104 name];
      if (v107)
      {
        v108 = v107;
        v109 = v22;
        v110 = [objc_opt_self() displayNameFromListName:v107 isPlaceholder:{objc_msgSend(v105, "isPlaceholder")}];

        v111 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v77 = v112;

        v113 = _REMGetLocalizedString();
        v114 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v116 = v115;

        if (v111 == v114 && v77 == v116)
        {

          v22 = v109;
LABEL_118:
          v122 = v153;
          v76 = v151;
          goto LABEL_119;
        }

        v103 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v22 = v109;
        v76 = v151;
        if (v103)
        {
          v122 = v153;
LABEL_119:

          v128 = v122[3];
          v129 = v122[4];
          sub_10000F61C(v122, v128);
          v130 = (*(v129 + 32))(v128, v129);
          if (v130)
          {
          }

          else
          {
            v131 = [v105 remObjectID];
            v132 = v122[3];
            v133 = v122[4];
            sub_10000C9DC(v122, v132);
            (*(v133 + 40))(v131, v132, v133);
            v134 = [v105 objectID];
            v135 = [v134 URIRepresentation];

            v136 = v145;
            static URL._unconditionallyBridgeFromObjectiveC(_:)();

            (*(v147 + 56))(v136, 0, 1, v142);
            v137 = v122[3];
            v138 = v122[4];
            sub_10000C9DC(v122, v137);
            (*(v138 + 16))(v136, v137, v138);
          }

          v15 = swift_allocObject();
          *(v15 + 16) = xmmword_1007953F0;
          *(v15 + 32) = v105;
          v101 = &v158;
          goto LABEL_123;
        }
      }

      ++v102;
      v26 = v155;
      if (v106 == i)
      {
        v77 = 0;
        v76 = &selRef_accountStatusWithCompletionHandler_;
        while (1)
        {
          if (v150)
          {
            v117 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v77 >= *(v149 + 16))
            {
              goto LABEL_110;
            }

            v117 = *(v26 + 8 * v77 + 32);
          }

          v105 = v117;
          v118 = (v77 + 1);
          if (__OFADD__(v77, 1))
          {
            goto LABEL_109;
          }

          v119 = [v117 account];
          if (v119)
          {
            v120 = v119;
            v121 = [v119 accountTypeHost];

            LOBYTE(v120) = [v121 isPrimaryCloudKit];
            v26 = v155;
            if (v120)
            {
              goto LABEL_118;
            }
          }

          ++v77;
          if (v118 == i)
          {
            v77 = 0;
            while (1)
            {
              if (v150)
              {
                v123 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                if (v77 >= *(v149 + 16))
                {
                  goto LABEL_112;
                }

                v123 = *(v26 + 8 * v77 + 32);
              }

              v105 = v123;
              v124 = (v77 + 1);
              if (__OFADD__(v77, 1))
              {
                goto LABEL_111;
              }

              v125 = [v123 account];
              if (v125)
              {
                v126 = v125;
                v127 = [v125 accountTypeHost];

                LOBYTE(v126) = [v127 isCloudKit];
                v26 = v155;
                if (v126)
                {
                  goto LABEL_118;
                }
              }

              ++v77;
              if (v124 == i)
              {
                if (v150)
                {
                  v105 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                  goto LABEL_118;
                }

                v122 = v153;
                v76 = v151;
                if (!*(v149 + 16))
                {
                  __break(1u);
                }

                v105 = *(v26 + 32);
                goto LABEL_119;
              }
            }
          }
        }
      }
    }

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
    ;
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_100033464(void *a1, int a2, void *a3, uint64_t a4, uint64_t a5, void *aBlock, int a7, uint64_t a8, void (*a9)(id, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v14 = _Block_copy(aBlock);
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  v16 = a3;
  v17 = a1;
  a9(v16, a4, a5, a8, v15);
}

id sub_100033528(id result)
{
  if (result - 1 >= 2)
  {
    return result;
  }

  return result;
}

uint64_t sub_10003358C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000335C8(void *a1, char a2, char a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = type metadata accessor for DispatchWorkItemFlags();
  v13 = *(v12 - 8);
  v51 = v12;
  v52 = v13;
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  v18 = *(v17 - 8);
  v53 = v17;
  v54 = v18;
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = &v46 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100935B50 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  sub_100006654(v22, qword_10093B458);
  v23 = a1;
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v50 = v23;
    v27 = v26;
    v28 = swift_slowAlloc();
    v49 = v21;
    v47 = a4;
    v29 = v28;
    aBlock[0] = v28;
    *v27 = 67109378;
    *(v27 + 4) = a2 & 1;
    *(v27 + 8) = 2082;
    v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v48 = v16;
    v32 = a2;
    v33 = a3;
    v34 = a5;
    v35 = v6;
    v36 = sub_10000668C(v30, v31, aBlock);
    v16 = v48;

    *(v27 + 10) = v36;
    v6 = v35;
    a5 = v34;
    a3 = v33;
    a2 = v32;
    _os_log_impl(&_mh_execute_header, v24, v25, "XPCSyncInterface.SyncCloudKit: Requested Trigger CloudKit sync {discretionary: %{BOOL}d, reason: %{public}s}", v27, 0x12u);
    sub_10000607C(v29);
    a4 = v47;
    v21 = v49;

    v23 = v50;
  }

  v37 = *&v6[OBJC_IVAR____TtC7remindd27RDXPCSyncInterfacePerformer_queue];
  v38 = swift_allocObject();
  *(v38 + 16) = v23;
  *(v38 + 24) = a4;
  *(v38 + 32) = a5;
  *(v38 + 40) = a2 & 1;
  *(v38 + 48) = v6;
  *(v38 + 56) = a3 & 1;
  aBlock[4] = sub_10003E968;
  aBlock[5] = v38;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100019200;
  aBlock[3] = &unk_1008E9130;
  v39 = _Block_copy(aBlock);
  v40 = v23;
  v41 = v39;
  v42 = v40;

  v43 = v6;
  static DispatchQoS.unspecified.getter();
  v55 = _swiftEmptyArrayStorage;
  sub_10000AB38();
  sub_1000F5104(&unk_100939E50, &unk_100791AD0);
  sub_10000AB90();
  v44 = v51;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v41);
  (*(v52 + 8))(v16, v44);
  (*(v54 + 8))(v21, v53);
}

uint64_t sub_1000339E4()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 57, 7);
}

uint64_t sub_100033A2C(uint64_t a1, uint64_t a2)
{
  sub_1000F5104(&unk_100938E80, &unk_1007959D0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100791340;

  v4 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
  if (v5)
  {
    v6 = v4;
    v7 = v5;

    *(v3 + 56) = &type metadata for String;
    *(v3 + 32) = v6;
    *(v3 + 40) = v7;
    *(v3 + 88) = sub_1000F5104(&unk_100939D90, "8\n\r");
    v8 = sub_1000103CC((v3 + 64));
    sub_100010364(a2, v8, &unk_100939D90, "8\n\r");
    v9 = String._bridgeToObjectiveC()();
    isa = Array._bridgeToObjectiveC()().super.isa;

    v11 = [objc_opt_self() predicateWithFormat:v9 argumentArray:isa];

    sub_1000050A4(a2, &unk_100939D90, "8\n\r");
    return v11;
  }

  else
  {
    _StringGuts.grow(_:)(46);
    v13._object = 0x80000001007EC120;
    v13._countAndFlagsBits = 0xD00000000000002CLL;
    String.append(_:)(v13);
    sub_1000F5104(&qword_10093F478, &unk_1007A76E0);
    _print_unlocked<A, B>(_:_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_100033C38()
{
  KeyPath = swift_getKeyPath();
  sub_100033D6C(KeyPath, 0);

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (_swiftEmptyArrayStorage[2] >= _swiftEmptyArrayStorage[3] >> 1)
  {
    v3 = _swiftEmptyArrayStorage[2];
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v1 = swift_getKeyPath();
  sub_100033F44(v1, 2);

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (_swiftEmptyArrayStorage[2] >= _swiftEmptyArrayStorage[3] >> 1)
  {
    v4 = _swiftEmptyArrayStorage[2];
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

  return sub_10000C2B0(_swiftEmptyArrayStorage);
}

uint64_t sub_100033D6C(uint64_t a1, uint64_t a2)
{
  sub_1000F5104(&unk_100938E80, &unk_1007959D0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100791340;

  v4 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
  if (v5)
  {
    v6 = v4;
    v7 = v5;

    *(v3 + 32) = v6;
    *(v3 + 40) = v7;
    *(v3 + 88) = &type metadata for Int;
    *(v3 + 56) = &type metadata for String;
    *(v3 + 64) = a2;
    v8 = String._bridgeToObjectiveC()();
    isa = Array._bridgeToObjectiveC()().super.isa;

    v10 = [objc_opt_self() predicateWithFormat:v8 argumentArray:isa];

    return v10;
  }

  else
  {
    _StringGuts.grow(_:)(46);
    v12._object = 0x80000001007EC120;
    v12._countAndFlagsBits = 0xD00000000000002CLL;
    String.append(_:)(v12);
    sub_1000F5104(&qword_10093F478, &unk_1007A76E0);
    _print_unlocked<A, B>(_:_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_100033F6C@<X0>(uint64_t a1@<X8>)
{
  v3 = [*(*v1 + 16) preferredDefaultListObjectIDUrl];
  if (v3)
  {
    v4 = v3;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = type metadata accessor for URL();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, 1, v6);
}

void sub_100034014(id a1)
{
  if (a1 - 1 >= 2)
  {
  }
}

uint64_t sub_1000340EC(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v43 = a3;
  v42 = a2;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v37[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for DispatchQoS();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v37[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_100935B50 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_100006654(v16, qword_10093B458);

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v41 = v15;
    v20 = v19;
    v39 = swift_slowAlloc();
    aBlock[0] = v39;
    *v20 = 136315138;
    v21 = Array.description.getter();
    v40 = a4;
    v23 = sub_10000668C(v21, v22, aBlock);
    v38 = v18;
    v24 = a1;
    v25 = v12;
    v26 = v10;
    v27 = v11;
    v28 = v6;
    v29 = v7;
    v30 = v23;
    a4 = v40;

    *(v20 + 4) = v30;
    v7 = v29;
    v6 = v28;
    v11 = v27;
    v10 = v26;
    v12 = v25;
    a1 = v24;
    _os_log_impl(&_mh_execute_header, v17, v38, "(daemon) Requested trigger DataAccess sync {accountIDs: %s}", v20, 0xCu);
    sub_10000607C(v39);

    v15 = v41;
  }

  v31 = v44;
  v32 = *&v44[OBJC_IVAR____TtC7remindd27RDXPCSyncInterfacePerformer_queue];
  v33 = swift_allocObject();
  *(v33 + 16) = v42 & 1;
  *(v33 + 24) = a1;
  *(v33 + 32) = v31;
  *(v33 + 40) = v43;
  *(v33 + 48) = a4;
  aBlock[4] = sub_10004010C;
  aBlock[5] = v33;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100019200;
  aBlock[3] = &unk_1008E8FA0;
  v34 = _Block_copy(aBlock);

  v35 = v31;

  static DispatchQoS.unspecified.getter();
  v45 = _swiftEmptyArrayStorage;
  sub_10000AB38();
  sub_1000F5104(&unk_100939E50, &unk_100791AD0);
  sub_10000AB90();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v34);
  (*(v7 + 8))(v10, v6);
  (*(v12 + 8))(v15, v11);
}

void *sub_10003450C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v11 = _swiftEmptyArrayStorage;
    sub_100010D04(0, v1, 0);
    v2 = _swiftEmptyArrayStorage;
    v4 = (a1 + 40);
    do
    {
      v8 = *(v4 - 1);
      v9 = *v4;

      swift_dynamicCast();
      v11 = v2;
      v6 = v2[2];
      v5 = v2[3];
      if (v6 >= v5 >> 1)
      {
        sub_100010D04((v5 > 1), v6 + 1, 1);
        v2 = v11;
      }

      v2[2] = v6 + 1;
      sub_100005EE0(&v10, &v2[4 * v6 + 4]);
      v4 += 2;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_100034664(uint64_t a1, char a2)
{
  if (!a2)
  {
    KeyPath = swift_getKeyPath();
    v8 = sub_100394808(a1);
    sub_100016EF8(KeyPath, v8, &qword_1009469C8, &qword_1007A92D8, &unk_1009440D0, qword_10079ABB0);
LABEL_6:

    goto LABEL_14;
  }

  if (a2 == 1)
  {
    v3 = swift_getKeyPath();
    v4 = sub_100394808(a1);
    v5 = sub_100016EF8(v3, v4, &qword_1009469C8, &qword_1007A92D8, &unk_1009440D0, qword_10079ABB0);

    if (v5)
    {
      v6 = [objc_opt_self() notPredicateWithSubpredicate:v5];
    }

    goto LABEL_14;
  }

  result = 0;
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      v30 = swift_getKeyPath();
      sub_1003EE38C(v30, 0);
    }

    else
    {
      if (a1 != 3)
      {
        return result;
      }

      v10 = swift_getKeyPath();
      sub_1003EE564(v10, 0);
    }

    goto LABEL_6;
  }

  if (!a1)
  {
    return result;
  }

  sub_1000F5104(&unk_10093AEB0, qword_100798560);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100791320;
  *(inited + 32) = sub_10029EB64(0x6761746873616824, 0xE800000000000000, 1);
  *(inited + 40) = sub_10029EB64(0xD000000000000011, 0x80000001007F8400, 1);
  sub_1000F5104(&unk_100938E80, &unk_1007959D0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_100791300;
  *(v12 + 56) = &type metadata for String;
  *(v12 + 32) = 0xD000000000000011;
  *(v12 + 40) = 0x80000001007F8400;
  v13 = String._bridgeToObjectiveC()();
  isa = Array._bridgeToObjectiveC()().super.isa;

  v15 = objc_opt_self();
  v16 = [v15 predicateWithFormat:v13 argumentArray:isa];

  *(inited + 48) = v16;
  v17 = sub_100025060(inited);
  if (!v17)
  {
    if (qword_100936108 != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    sub_100006654(v31, qword_1009469A0);
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&_mh_execute_header, v32, v33, "Failed to compute subQueryPredicate for REMCDHashtagLabel.Predicates.withConcealedHashtag", v34, 2u);
    }

    return sub_10000C2B0(_swiftEmptyArrayStorage);
  }

  v18 = v17;
  v19 = [v17 description];

  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;

  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_100791300;
  *(v23 + 56) = &type metadata for String;
  *(v23 + 32) = 0x7367617468736168;
  *(v23 + 40) = 0xE800000000000000;
  _StringGuts.grow(_:)(32);

  v24._countAndFlagsBits = v20;
  v24._object = v22;
  String.append(_:)(v24);

  v25._countAndFlagsBits = 0x746E756F63402E29;
  v25._object = 0xEB00000000203E20;
  String.append(_:)(v25);
  v26._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v26);

  v27 = String._bridgeToObjectiveC()();

  v28 = Array._bridgeToObjectiveC()().super.isa;

  v29 = [v15 predicateWithFormat:v27 argumentArray:v28];

LABEL_14:
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (_swiftEmptyArrayStorage[2] >= _swiftEmptyArrayStorage[3] >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  return sub_10000C2B0(_swiftEmptyArrayStorage);
}

uint64_t sub_100034C08(unint64_t a1)
{
  v2 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v91 = &v84 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v89 = &v84 - v6;
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  isa = v8[8].isa;
  v10 = __chkstk_darwin(v7);
  v12 = &v84 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v93 = &v84 - v14;
  v15 = __chkstk_darwin(v13);
  v100 = &v84 - v16;
  v105 = a1;
  if (a1 >> 62)
  {
    goto LABEL_49;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; v15 = v79)
  {
    v88 = v12;
    v103 = a1 & 0xC000000000000001;
    v97 = a1 & 0xFFFFFFFFFFFFFF8;
    v90 = v8 + 4;
    v98 = v8 + 7;
    v99 = v15;
    v85 = v8 + 6;
    v87 = v8 + 1;

    v18 = 0;
    v19 = &_swiftEmptyDictionarySingleton;
    *&v20 = 138543362;
    v86 = v20;
    v101 = a1;
    v102 = i;
    while (1)
    {
      if (v103)
      {
        v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v18 >= *(v97 + 16))
        {
          goto LABEL_47;
        }

        v15 = *(a1 + 8 * v18 + 32);
      }

      v23 = v15;
      v24 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      v25 = [v15 canonicalName];
      if (!v25)
      {
        if (qword_100936108 != -1)
        {
          swift_once();
        }

        v50 = type metadata accessor for Logger();
        sub_100006654(v50, qword_1009469A0);
        v12 = v23;
        v8 = Logger.logObject.getter();
        v51 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v8, v51))
        {
          v52 = swift_slowAlloc();
          v53 = swift_slowAlloc();
          *v52 = v86;
          v54 = [v12 objectID];
          *(v52 + 4) = v54;
          *v53 = v54;
          _os_log_impl(&_mh_execute_header, v8, v51, "Unexpected nil canonical name REMCDHashtagLabel from hashtagLabelNames(from:) {mid: %{public}@}", v52, 0xCu);
          sub_1000050A4(v53, &unk_100938E70, &unk_100797230);
        }

        else
        {
        }

        goto LABEL_6;
      }

      v26 = v25;
      v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = v28;

      if (v19[2].isa)
      {
        v29 = sub_100005F4C(v27, v12);
        if (v30)
        {
          v31 = *(v19[7].isa + v29);
          v32 = v23;
          v33 = [v32 firstOccurrenceCreationDate];
          v96 = v32;
          if (v33)
          {
            v34 = v93;
            v35 = v33;
            static Date._unconditionallyBridgeFromObjectiveC(_:)();

            v36 = v89;
            v37 = v90->isa;
            v38 = v34;
            v39 = v31;
            v40 = v99;
            (v90->isa)(v89, v38, v99);
            v94 = v98->isa;
            v94(v36, 0, 1, v40);
            v41 = v40;
            v31 = v39;
            v37(v100, v36, v41);
          }

          else
          {
            v58 = v99;
            v59 = v89;
            v94 = v98->isa;
            v94(v89, 1, 1, v99);
            static Date.distantFuture.getter();
            if ((v85->isa)(v59, 1, v58) != 1)
            {
              sub_1000050A4(v59, &unk_100938850, qword_100795AE0);
            }
          }

          v95 = v31;
          v60 = [v31 firstOccurrenceCreationDate];
          v92 = v27;
          if (v60)
          {
            v61 = v93;
            v62 = v60;
            static Date._unconditionallyBridgeFromObjectiveC(_:)();

            v63 = v91;
            v64 = v90->isa;
            v65 = v61;
            v66 = v99;
            (v90->isa)(v91, v65, v99);
            v94(v63, 0, 1, v66);
            v67 = v88;
            v64(v88, v63, v66);
          }

          else
          {
            v68 = v91;
            v66 = v99;
            v94(v91, 1, 1, v99);
            v67 = v88;
            static Date.distantFuture.getter();
            if ((v85->isa)(v68, 1, v66) != 1)
            {
              sub_1000050A4(v91, &unk_100938850, qword_100795AE0);
            }
          }

          v69 = v100;
          v8 = static Date.< infix(_:_:)();
          v70 = v87->isa;
          (v87->isa)(v67, v66);
          v70(v69, v66);
          if (v8)
          {
            v71 = v96;

            v72 = v95;
            v73 = v95;
            v74 = v71;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v104 = v19;
            v8 = &v104;
            sub_1002C72A0(v74, v92, v12, isUniquelyReferenced_nonNull_native);

            v19 = v104;
          }

          else
          {

            v72 = v95;
            v71 = v96;
            v73 = v96;
          }

          i = v102;
          v76 = sub_10042D064(v73, v105);
          if (v77)
          {
          }

          else
          {
            v8 = &v105;
          }

          goto LABEL_5;
        }
      }

      v42 = v23;
      v43 = swift_isUniquelyReferenced_nonNull_native();
      v104 = v19;
      v8 = v19;
      v15 = sub_100005F4C(v27, v12);
      v45 = v19[2].isa;
      v46 = (v44 & 1) == 0;
      v47 = __OFADD__(v45, v46);
      v48 = v45 + v46;
      if (v47)
      {
        goto LABEL_46;
      }

      a1 = v44;
      if (v19[3].isa >= v48)
      {
        if ((v43 & 1) == 0)
        {
          v8 = &v104;
          v78 = v15;
          sub_100373650();
          v15 = v78;
          i = v102;
          if ((a1 & 1) == 0)
          {
LABEL_27:
            v19 = v104;
            v104[(v15 >> 6) + 8].isa = (v104[(v15 >> 6) + 8].isa | (1 << v15));
            v55 = (v19[6].isa + 16 * v15);
            *v55 = v27;
            v55[1] = v12;
            *(v19[7].isa + v15) = v42;

            v56 = v19[2].isa;
            v47 = __OFADD__(v56, 1);
            v57 = (v56 + 1);
            if (v47)
            {
              goto LABEL_48;
            }

            v19[2].isa = v57;
            goto LABEL_5;
          }

          goto LABEL_4;
        }
      }

      else
      {
        sub_10036A8DC(v48, v43);
        v8 = v104;
        v15 = sub_100005F4C(v27, v12);
        if ((a1 & 1) != (v49 & 1))
        {
          result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          return result;
        }
      }

      i = v102;
      if ((a1 & 1) == 0)
      {
        goto LABEL_27;
      }

LABEL_4:
      v21 = v15;

      v19 = v104;
      v22 = v104[7].isa;
      v8 = *(v22 + v21);
      *(v22 + v21) = v42;

LABEL_5:
      a1 = v101;
LABEL_6:
      ++v18;
      if (v24 == i)
      {
        a1 = v105;
        goto LABEL_51;
      }
    }

    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    v79 = v15;
    i = _CocoaArrayWrapper.endIndex.getter();
  }

LABEL_51:
  if (qword_100936108 != -1)
  {
    swift_once();
  }

  v80 = type metadata accessor for Logger();
  v81 = sub_100006654(v80, qword_1009469A0);
  v104 = a1;
  *(&v84 - 2) = __chkstk_darwin(v81);
  sub_1000F5104(&qword_10093B2C8, &qword_100798908);
  sub_1000355A4();
  v82 = Sequence.map<A>(skippingError:_:)();

  return v82;
}

unint64_t sub_1000355A4()
{
  result = qword_10093B2D0;
  if (!qword_10093B2D0)
  {
    sub_1000F514C(&qword_10093B2C8, &qword_100798908);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093B2D0);
  }

  return result;
}

void sub_100035608(unint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v7 = v6;
  v104 = a4;
  v117 = a1;
  v105 = a6;
  v11 = sub_1000F5104(&qword_10093E168, &qword_10079C170);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v113 = &v89 - v13;
  v103 = type metadata accessor for REMHashtagLabelCollection();
  v102 = *(v103 - 8);
  v14 = *(v102 + 64);
  v15 = __chkstk_darwin(v103);
  v101 = &v89 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v106 = &v89 - v18;
  __chkstk_darwin(v17);
  v109 = &v89 - v19;
  v20 = _s10PredicatesOMa_3();
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20);
  v111 = &v89 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  Style = type metadata accessor for REMHashtagLabelDataView.HashtagLabelInFilterFetchStyle();
  v24 = *(Style - 8);
  v25 = *(v24 + 64);
  __chkstk_darwin(Style);
  v27 = &v89 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v24 + 16))(v27, a5, Style);
  v28 = (*(v24 + 88))(v27, Style);
  if (v28 == enum case for REMHashtagLabelDataView.HashtagLabelInFilterFetchStyle.cachedOrStore(_:))
  {
    if (sub_100036394(a2, a3))
    {
      v30 = v29;
      sub_1000060C8(0, &qword_100945FC0, NSObject_ptr);

      v31 = v30;
      static NSObject.== infix(_:_:)();

      REMHashtagLabelDataView.HashtagLabelsReferencedByCustomSmartListFiltersInvocation.Result.init(labels:isUpToDate:)();

      return;
    }

    goto LABEL_5;
  }

  if (v28 == enum case for REMHashtagLabelDataView.HashtagLabelInFilterFetchStyle.store(_:))
  {
LABEL_5:
    v98 = a2;
    v99 = a3;
    swift_storeEnumTagMultiPayload();
    v32 = sub_10002DDAC();
    sub_1000060C8(0, &unk_10093F770, off_1008D41E8);
    v33 = [objc_allocWithZone(NSFetchRequest) init];
    v34 = [swift_getObjCClassFromMetadata() entity];
    [v33 setEntity:v34];

    [v33 setAffectedStores:0];
    [v33 setPredicate:v32];

    if (qword_100936778 != -1)
    {
      goto LABEL_43;
    }

    while (1)
    {
      sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
      isa = Array._bridgeToObjectiveC()().super.isa;
      v107 = v33;
      [v33 setSortDescriptors:isa];

      sub_1000F5104(&unk_100939D60, &unk_1007959E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1007953F0;
      *(inited + 32) = swift_getKeyPath();
      v121 = _swiftEmptyArrayStorage;
      sub_100010D04(0, 1, 0);
      v37 = v121;
      v94 = v11;
      if ((inited & 0xC000000000000001) != 0)
      {
        v38 = v7;
        v39 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_45:
          v33 = _CocoaArrayWrapper.endIndex.getter();
          if (!v33)
          {
LABEL_46:

            v85 = v109;
            v86 = REMHashtagLabelCollection.labels.getter();
            v87 = REMFetchResultToken.codable.getter();
            sub_100584D84(v86, v87, v98, v99);

            REMHashtagLabelCollection.labels.getter();
            REMHashtagLabelDataView.HashtagLabelsReferencedByCustomSmartListFiltersInvocation.Result.init(labels:isUpToDate:)();

            (*(v102 + 8))(v85, v103);
            sub_10003AF64(v111);
            return;
          }

          goto LABEL_17;
        }

        v38 = v7;
        v39 = *(inited + 32);
      }

      v40 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
      if (!v41)
      {
        *&v119 = 0;
        *(&v119 + 1) = 0xE000000000000000;
        _StringGuts.grow(_:)(46);
        v88._object = 0x80000001007EC120;
        v88._countAndFlagsBits = 0xD00000000000002CLL;
        String.append(_:)(v88);
        v118 = v39;
        sub_1000F5104(&qword_100946530, &qword_10079B260);
        _print_unlocked<A, B>(_:_:)();
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
        break;
      }

      v42 = v40;
      v11 = v41;
      v120 = &type metadata for String;

      *&v119 = v42;
      *(&v119 + 1) = v11;
      v44 = v37[2];
      v43 = v37[3];
      if (v44 >= v43 >> 1)
      {
        sub_100010D04((v43 > 1), v44 + 1, 1);
        v37 = v121;
      }

      v37[2] = v44 + 1;
      sub_100005EE0(&v119, &v37[4 * v44 + 4]);
      swift_setDeallocating();
      v45 = *(inited + 16);
      swift_arrayDestroy();
      v46 = Array._bridgeToObjectiveC()().super.isa;

      v47 = v107;
      [v107 setPropertiesToFetch:v46];

      v48 = NSManagedObjectContext.fetch<A>(_:)();
      v7 = v38;
      if (v38)
      {
        sub_10003AF64(v111);

        return;
      }

      a3 = v48;
      REMHashtagLabelCollection.init()();
      if (a3 >> 62)
      {
        goto LABEL_45;
      }

      v33 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v33)
      {
        goto LABEL_46;
      }

LABEL_17:
      v50 = 0;
      v115 = a3 & 0xC000000000000001;
      v108 = a3 & 0xFFFFFFFFFFFFFF8;
      v97 = enum case for REMCustomSmartListFilterDescriptor.FilterHashtags.hashtags(_:);
      v90 = enum case for REMCustomSmartListFilterDescriptor.FilterHashtags.untagged(_:);
      v89 = enum case for REMCustomSmartListFilterDescriptor.FilterHashtags.any(_:);
      v96 = (v102 + 8);
      v95 = (v102 + 32);
      *&v49 = 136315138;
      v100 = v49;
      v112 = a3;
      v110 = v33;
      while (1)
      {
        if (v115)
        {
          v51 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v50 >= *(v108 + 16))
          {
            goto LABEL_42;
          }

          v51 = *(a3 + 8 * v50 + 32);
        }

        v52 = v51;
        v11 = v50 + 1;
        if (__OFADD__(v50, 1))
        {
          break;
        }

        v53 = [v51 filterData];
        if (v53)
        {
          v54 = v53;
          v55 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v57 = v56;

          type metadata accessor for REMCustomSmartListFilterDescriptor();
          sub_100029344(v55, v57);
          [v52 minimumSupportedVersion];
          v116 = v55;
          v117 = v57;
          v58 = REMCustomSmartListFilterDescriptor.__allocating_init(data:minimumSupportedVersion:)();
          if (v7)
          {
            if (qword_100936578 != -1)
            {
              swift_once();
            }

            v59 = type metadata accessor for Logger();
            sub_100006654(v59, qword_10094CAF0);
            swift_errorRetain();
            v60 = Logger.logObject.getter();
            v61 = static os_log_type_t.error.getter();

            if (os_log_type_enabled(v60, v61))
            {
              v62 = swift_slowAlloc();
              v63 = swift_slowAlloc();
              *&v119 = v63;
              *v62 = v100;
              swift_getErrorValue();
              v64 = Error.rem_errorDescription.getter();
              v66 = sub_10000668C(v64, v65, &v119);
              v114 = v7;
              v67 = v66;

              *(v62 + 4) = v67;
              _os_log_impl(&_mh_execute_header, v60, v61, "HashtagLabelsReferencedByCustomSmartListFiltersInvocation: failed to decode filter {error: %s}", v62, 0xCu);
              sub_10000607C(v63);
              v33 = v110;

              sub_10001BBA0(v116, v117);
            }

            else
            {
              sub_10001BBA0(v116, v117);
            }

            v7 = 0;
            a3 = v112;
            goto LABEL_19;
          }

          v68 = v58;
          v69 = v113;
          REMCustomSmartListFilterDescriptor.hashtags.getter();

          v70 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterHashtags();
          v71 = *(v70 - 8);
          if ((*(v71 + 48))(v69, 1, v70) == 1)
          {
LABEL_32:

            sub_10001BBA0(v116, v117);
LABEL_37:
            v33 = v110;
            goto LABEL_19;
          }

          v72 = (*(v71 + 88))(v69, v70);
          if (v72 == v97)
          {
            (*(v71 + 96))(v69, v70);
            v73 = *v69;
            v92 = v69[1];
            v93 = *(sub_1000F5104(&qword_10093E198, qword_10079C1A8) + 64);
            v74 = v101;
            REMHashtagLabelCollection.init(labels:)();
            REMHashtagLabelCollection.union(_:)();
            v114 = 0;
            v75 = *v96;
            v91 = v75;
            v76 = v103;
            v75(v74, v103);
            v77 = v109;
            v75(v109, v76);
            v78 = *v95;
            v79 = v77;
            v80 = v77;
            v81 = v106;
            (*v95)(v80, v106, v76);
            REMHashtagLabelCollection.init(labels:)();
            REMHashtagLabelCollection.union(_:)();

            sub_10001BBA0(v116, v117);
            v82 = v74;
            a3 = v112;
            v83 = v91;
            v91(v82, v76);
            v83(v79, v76);
            v78(v79, v81, v76);
            v7 = v114;
            v84 = type metadata accessor for REMCustomSmartListFilterDescriptor.Operation();
            (*(*(v84 - 8) + 8))(&v113[v93], v84);
            goto LABEL_37;
          }

          if (v72 == v90)
          {
            goto LABEL_32;
          }

          v33 = v110;
          if (v72 != v89)
          {
            goto LABEL_49;
          }

          sub_10001BBA0(v116, v117);
        }

LABEL_19:
        ++v50;
        if (v11 == v33)
        {
          goto LABEL_46;
        }
      }

      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      swift_once();
    }
  }

  _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
LABEL_49:
  _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
}

uint64_t sub_100036394(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v4 = (*(a2 + 8))(ObjectType, a2);
  v6 = v5;
  result = 0;
  if (v5 >> 60 != 15)
  {
    v8 = type metadata accessor for PropertyListDecoder();
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    swift_allocObject();
    PropertyListDecoder.init()();
    sub_100036664();
    dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();

    sub_100031A14(v4, v6);
    return v11;
  }

  return result;
}

uint64_t sub_1000365FC()
{
  v1 = [v0 hashtagLabelsInCustomSmartListFilterCache];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

unint64_t sub_100036664()
{
  result = qword_10094CBD0;
  if (!qword_10094CBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094CBD0);
  }

  return result;
}

uint64_t sub_1000366B8(uint64_t *a1)
{
  v2 = sub_1000F5104(&qword_10094CBF8, &unk_1007B22B0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v10 - v5;
  v7 = a1[4];
  sub_10000F61C(a1, a1[3]);
  sub_10003693C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  sub_1000F5104(&unk_10093B300, &unk_100797780);
  HIBYTE(v10) = 0;
  sub_100036990(&qword_10093EEF0);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v9 = v11;
  type metadata accessor for REMFetchResultToken_Codable();
  HIBYTE(v10) = 1;
  sub_1000369FC(&qword_10094CC08, &type metadata accessor for REMFetchResultToken_Codable);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v3 + 8))(v6, v2);
  sub_10000607C(a1);
  return v9;
}

uint64_t sub_100036910@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1000366B8(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

unint64_t sub_10003693C()
{
  result = qword_10094CC00;
  if (!qword_10094CC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094CC00);
  }

  return result;
}

uint64_t sub_100036990(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1000F514C(&unk_10093B300, &unk_100797780);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000369FC(unint64_t *a1, void (*a2)(uint64_t))
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

void *sub_100036A44(void *a1, void *a2, uint64_t a3, void *a4)
{
  v185 = a4;
  v176 = a2;
  v186 = a1;
  v5 = sub_1000F5104(&qword_100938C48, &qword_1007957D0);
  v173 = *(v5 - 8);
  v6 = *(v173 + 64);
  __chkstk_darwin(v5);
  v172 = &v167 - v7;
  v182 = type metadata accessor for REMManualOrdering.Predefined();
  v181 = *(v182 - 8);
  v8 = *(v181 + 64);
  __chkstk_darwin(v182);
  v180 = &v167 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for REMManualOrdering.ManualOrderingID();
  v179 = *(v10 - 8);
  v11 = *(v179 + 64);
  __chkstk_darwin(v10);
  v13 = &v167 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v192 = type metadata accessor for REMAccountsListDataView.Model.PinnedList();
  v188 = *(v192 - 1);
  v14 = v188[8];
  v15 = __chkstk_darwin(v192);
  v191 = (&v167 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = __chkstk_darwin(v15);
  v177 = (&v167 - v18);
  __chkstk_darwin(v17);
  v178 = (&v167 - v19);
  v174 = _s10PredicatesOMa_3();
  v20 = *(*(v174 - 8) + 64);
  __chkstk_darwin(v174);
  v175 = &v167 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v183 = _s10PredicatesOMa_1();
  v22 = *(*(v183 - 8) + 64);
  __chkstk_darwin(v183);
  v184 = &v167 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for REMAccountsListDataView.Model.Account();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  v27 = __chkstk_darwin(v24);
  v29 = &v167 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v31 = &v167 - v30;
  v32 = _swiftEmptyArrayStorage;
  if ((REMAccountsListDataView.FetchOptions.fetchOrderedPinnedLists.getter() & 1) == 0)
  {
    return v32;
  }

  v171 = a3;
  v33 = REMAccountsListDataView.FetchOptions.fetchAccounts.getter();
  v170 = v13;
  if (v33)
  {
    v168 = v5;
    v169 = v10;
    v34 = 0;
    v35 = *v185;
    v36 = *(*v185 + 16);
    v190 = v25 + 16;
    v189 = (v25 + 8);
    while (v36 != v34)
    {
      if (v34 >= *(v35 + 16))
      {
        __break(1u);
        goto LABEL_108;
      }

      (*(v25 + 16))(v31, v35 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v34++, v24);
      v37 = REMAccountsListDataView.Model.Account.account.getter();
      v38 = [v37 capabilities];

      LOBYTE(v37) = [v38 supportsPinnedLists];
      (*(v25 + 8))(v31, v24);
      if (v37)
      {
        goto LABEL_10;
      }
    }

    return _swiftEmptyArrayStorage;
  }

  v39 = sub_10003A1B8();
  if (!v39)
  {
    return _swiftEmptyArrayStorage;
  }

  v168 = v5;
  v169 = v10;

LABEL_10:
  if (REMAccountsListDataView.FetchOptions.fetchAccounts.getter())
  {
    v40 = *v185;
    v41 = _swiftEmptyArrayStorage;
    v198[0] = _swiftEmptyArrayStorage;
    v42 = *(v40 + 16);
    v31 = v187;
    if (!v42)
    {
      goto LABEL_17;
    }

    v43 = 0;
    v44 = (v25 + 8);
    do
    {
      if (v43 >= *(v40 + 16))
      {
        goto LABEL_109;
      }

      (*(v25 + 16))(v29, v40 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v43, v24);
      sub_100038638(v198);
      if (v31)
      {

        (*v44)(v29, v24);

        __break(1u);
        return result;
      }

      ++v43;
      (*v44)(v29, v24);
    }

    while (v42 != v43);
    while (1)
    {
      v41 = v198[0];
LABEL_17:
      v45 = v188;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v41 = sub_10003935C(v41);
      }

      v46 = v41[2];
      v47 = (*(v45 + 80) + 32) & ~*(v45 + 80);
      v185 = v41;
      v190 = v47;
      v198[0] = (v41 + v47);
      v198[1] = v46;
      sub_10003954C(v198);
      v187 = v31;
      v48 = static REMSmartListType.manualOrderablePredefinedSmartListTypes.getter();
      v49 = *(v48 + 16);
      if (!v49)
      {
        break;
      }

      v31 = 0;
      v189 = (v48 + 32);
      v50 = (v45 + 13);
      v51 = _swiftEmptyArrayStorage;
      v52 = v48;
      while (v31 < *(v48 + 16))
      {
        v53 = v189[v31];
        *v191 = v53;
        (*v50)();
        v54 = v53;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v51 = sub_100039334(0, v51[2] + 1, 1, v51);
        }

        v56 = v51[2];
        v55 = v51[3];
        if (v56 >= v55 >> 1)
        {
          v51 = sub_100039334(v55 > 1, v56 + 1, 1, v51);
        }

        ++v31;
        v51[2] = v56 + 1;
        (v188[4])(v51 + v190 + v188[9] * v56, v191, v192);
        v48 = v52;
        if (v49 == v31)
        {
          goto LABEL_36;
        }
      }

LABEL_108:
      __break(1u);
LABEL_109:
      __break(1u);
LABEL_110:
      v100 = _swiftEmptyArrayStorage;
LABEL_111:

      v159 = v190;
      if (v190 >> 62)
      {
        v166 = v190;
        v64 = _CocoaArrayWrapper.endIndex.getter();
        v159 = v166;
        if (v64)
        {
LABEL_113:
          v71 = 0;
          v189 = (v159 & 0xC000000000000001);
          v185 = (v159 & 0xFFFFFFFFFFFFFF8);
          LODWORD(v184) = enum case for REMAccountsListDataView.Model.PinnedList.customSmartList(_:);
          v99 = (v188 + 13);
          v101 = (v188 + 4);
          v97 = _swiftEmptyArrayStorage;
          while (1)
          {
            if (v189)
            {
              v160 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              v161 = (v71 + 1);
              if (__OFADD__(v71, 1))
              {
                goto LABEL_128;
              }
            }

            else
            {
              if (v71 >= v185[2])
              {
                goto LABEL_129;
              }

              v160 = *(v159 + 8 * v71 + 32);
              v161 = (v71 + 1);
              if (__OFADD__(v71, 1))
              {
                goto LABEL_128;
              }
            }

            v162 = v177;
            *v177 = v160;
            (*v99)(v162, v184, v192);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v97 = sub_100039334(0, v97[2] + 1, 1, v97);
            }

            v164 = v97[2];
            v163 = v97[3];
            if (v164 >= v163 >> 1)
            {
              v97 = sub_100039334(v163 > 1, v164 + 1, 1, v97);
            }

            v97[2] = v164 + 1;
            (v188[4])(v97 + ((*(v188 + 80) + 32) & ~*(v188 + 80)) + v188[9] * v164, v177, v192);
            ++v71;
            v31 = v187;
            v159 = v190;
            if (v161 == v64)
            {
              goto LABEL_139;
            }
          }
        }
      }

      else
      {
        v64 = *((v190 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v64)
        {
          goto LABEL_113;
        }
      }

      v97 = _swiftEmptyArrayStorage;
LABEL_139:

      v198[0] = v100;
      sub_100013504(v97);
    }

    v51 = _swiftEmptyArrayStorage;
LABEL_36:

    v198[0] = v51;
    sub_100013504(v185);
    v185 = v198[0];
    v65 = v181;
    v66 = v180;
    v67 = v182;
    (*(v181 + 104))(v180, enum case for REMManualOrdering.Predefined.pinned(_:), v182);
    v68 = v170;
    REMManualOrdering.Predefined.manualOrderingID.getter();
    (*(v65 + 8))(v66, v67);
    if (qword_1009367D8 != -1)
    {
      swift_once();
    }

    v69 = v186;
    v70 = sub_100013674(qword_1009752E8);
    if (!v70)
    {
      (*(v179 + 8))(v68, v169);
      return v185;
    }

    v71 = v70;
    v72 = [v70 remObjectID];
    if (!v72)
    {
      (*(v179 + 8))(v68, v169);

      return v185;
    }

    v73 = v72;
    v64 = type metadata accessor for REMCDManualSortHint();
    LOWORD(v31) = REMManualOrdering.ManualOrderingID.listType.getter();
    v74 = REMManualOrdering.ManualOrderingID.listID.getter();
    v192 = v75;
    if (qword_1009367E0 != -1)
    {
      swift_once();
    }

    v76 = qword_1009752F0;
    v191 = v73;
    v190 = qword_1009752F0;
    if (v31 == 1)
    {
      v77 = v192;

      v78._countAndFlagsBits = v74;
      v78._object = v77;
      v79 = REMSmartListType.init(stringValue:)(v78);
      if (v79)
      {
        v80 = v79;
        v81 = sub_100139BE4(v79, v73, v76);
        if (v81)
        {
          v82 = v81;
          v198[0] = 0;
          v83 = [v69 existingObjectWithID:v81 error:v198];
          if (v83)
          {
            v84 = v83;
            v85 = v198[0];

            v86 = swift_dynamicCastClass();
            if (v86)
            {
              v87 = v86;

              v88 = &selRef_persistentStoreForIdentifier_;
              v89 = v87;
              goto LABEL_90;
            }
          }

          else
          {
            v95 = v198[0];
            _convertNSErrorToError(_:)();

            swift_willThrow();

            v187 = 0;
          }

          v69 = v186;
          v73 = v191;
        }

        else
        {
        }
      }
    }

    v97 = v73;
    v107 = [v69 persistentStoreOfAccountWithAccountID:v97];
    if (v107)
    {
      v108 = v107;
      sub_1000F5104(&unk_100939D60, &unk_1007959E0);
      v109 = swift_allocObject();
      *(v109 + 16) = xmmword_1007953F0;
      *(v109 + 32) = v108;
    }

    else
    {
      v109 = 0;
    }

    v110 = sub_1000398EC(v31, v74, v192, v191);
    v101 = [objc_allocWithZone(NSFetchRequest) init];
    v111 = [swift_getObjCClassFromMetadata() entity];
    [v101 setEntity:v111];

    if (v109)
    {
      sub_1000060C8(0, &qword_10093F430, NSPersistentStore_ptr);
      v112.super.isa = Array._bridgeToObjectiveC()().super.isa;
    }

    else
    {
      v112.super.isa = 0;
    }

    [v101 setAffectedStores:v112.super.isa];

    [v101 setPredicate:v110];

    sub_1000F5104(&unk_100939D60, &unk_1007959E0);
    v99 = swift_allocObject();
    *(v99 + 1) = xmmword_1007953F0;
    if (qword_100935AA8 != -1)
    {
      goto LABEL_130;
    }

    goto LABEL_77;
  }

  v58 = v184;
  swift_storeEnumTagMultiPayload();
  v59 = sub_10001F6F4();
  sub_100025434(v58, _s10PredicatesOMa_1);
  v60 = v187;
  if (qword_100936528 != -1)
  {
    swift_once();
  }

  v61 = sub_100405438(0, qword_100975238, 0, v59);
  sub_1000060C8(0, &unk_100938880, off_1008D41A8);
  v32 = v186;
  v62 = v60;
  v63 = NSManagedObjectContext.fetch<A>(_:)();

  if (v62)
  {
    return v32;
  }

  v64 = sub_1000271D0(v63, v176);
  v31 = 0;

  v90 = v175;
  swift_storeEnumTagMultiPayload();
  v91 = sub_10002DDAC();
  sub_100025434(v90, _s10PredicatesOMa_3);
  sub_1000060C8(0, &unk_10093F770, off_1008D41E8);
  v92 = [objc_allocWithZone(NSFetchRequest) init];
  v93 = [swift_getObjCClassFromMetadata() entity];
  [v92 setEntity:v93];

  [v92 setAffectedStores:0];
  [v92 setPredicate:v91];
  v94 = NSManagedObjectContext.fetch<A>(_:)();

  v96 = sub_1000303FC(v94, v176);

  if (v64 >> 62)
  {
    v97 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v97 = *((v64 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v190 = v96;
  v187 = 0;
  if (!v97)
  {
    goto LABEL_110;
  }

  v71 = 0;
  v189 = (v64 & 0xC000000000000001);
  v185 = (v64 & 0xFFFFFFFFFFFFFF8);
  LODWORD(v184) = enum case for REMAccountsListDataView.Model.PinnedList.list(_:);
  v98 = (v188 + 13);
  v99 = (v188 + 4);
  v100 = _swiftEmptyArrayStorage;
  v101 = v64;
  while (v189)
  {
    v102 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v103 = (v71 + 1);
    if (__OFADD__(v71, 1))
    {
      goto LABEL_126;
    }

LABEL_59:
    v104 = v178;
    *v178 = v102;
    (*v98)(v104, v184, v192);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v100 = sub_100039334(0, v100[2] + 1, 1, v100);
    }

    v106 = v100[2];
    v105 = v100[3];
    if (v106 >= v105 >> 1)
    {
      v100 = sub_100039334(v105 > 1, v106 + 1, 1, v100);
    }

    v100[2] = v106 + 1;
    (v188[4])(v100 + ((*(v188 + 80) + 32) & ~*(v188 + 80)) + v188[9] * v106, v178, v192);
    ++v71;
    v31 = v187;
    v64 = v101;
    if (v103 == v97)
    {
      goto LABEL_111;
    }
  }

  if (v71 >= v185[2])
  {
    goto LABEL_127;
  }

  v102 = *(v64 + 8 * v71 + 32);
  v103 = (v71 + 1);
  if (!__OFADD__(v71, 1))
  {
    goto LABEL_59;
  }

LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  swift_once();
LABEL_77:
  v113 = qword_100974C08;
  *(v99 + 4) = qword_100974C08;
  sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
  v114 = v113;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v101 setSortDescriptors:isa];

  v116 = v187;
  v117 = NSManagedObjectContext.fetch<A>(_:)();
  v118 = v116;
  v68 = v170;
  if (v116)
  {

    (*(v179 + 8))(v68, v169);
    goto LABEL_97;
  }

  v187 = 0;
  v32 = v185;
  if (v117 >> 62)
  {
    v118 = v117;
    v165 = _CocoaArrayWrapper.endIndex.getter();
    v117 = v118;
    if (!v165)
    {
      goto LABEL_132;
    }

LABEL_81:
    if ((v117 & 0xC000000000000001) != 0)
    {
      v119 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((v117 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_135;
      }

      v119 = *(v117 + 32);
    }

    v189 = v119;

    if (v31 == 1)
    {
      v89 = v189;
      v120 = [v189 remObjectID];
      if (v120)
      {
        v121 = v120;
        v122 = [v89 objectID];
        v123 = type metadata accessor for RDPredefinedObjectKey();
        v124 = objc_allocWithZone(v123);
        *&v124[OBJC_IVAR____TtC7remindd21RDPredefinedObjectKey_accountID] = v97;
        *&v124[OBJC_IVAR____TtC7remindd21RDPredefinedObjectKey_objectID] = v121;
        v193.receiver = v124;
        v193.super_class = v123;
        v188 = v97;
        v186 = v121;
        v125 = objc_msgSendSuper2(&v193, "init");
        v126 = v173;
        v127 = v172;
        (*(v173 + 104))(v172, enum case for REMCache.ExecutionMode.asynchronously<A, B>(_:), v168);
        v128 = swift_allocObject();
        *(v128 + 16) = v122;
        *(v128 + 24) = v125;
        v129 = v122;
        v130 = v125;
        dispatch thunk of REMCache.performReadAndWrite(_:operations:)();

        v89 = v189;

        (*(v126 + 8))(v127, v168);
      }

      else
      {
      }

      v88 = &selRef_persistentStoreForIdentifier_;
    }

    else
    {

      v88 = &selRef_persistentStoreForIdentifier_;
      v89 = v189;
    }

LABEL_90:
    v64 = v68;
    v131 = [objc_opt_self() sharedConfiguration];
    v132 = [v131 manualSortHintLastAccessedUpdatePolicy];

    v133 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v135 = v134;

    v136._countAndFlagsBits = v133;
    v136._object = v135;
    v137 = _findStringSwitchCase(cases:string:)(&off_1008DD3F0, v136);

    if (v137 >= 3)
    {
      LOBYTE(v137) = 2;
    }

    v138 = [v89 v88[106]];
    v139 = v187;
    v101 = v191;
    if (v138)
    {
      v140 = v138;
      v141 = [v138 description];

      v142 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v144 = v143;
    }

    else
    {
      v144 = 0xE300000000000000;
      v142 = 7104878;
    }

    v145 = swift_allocObject();
    *(v145 + 16) = v142;
    *(v145 + 24) = v144;
    sub_1002D74D4(1, v137, sub_10013AF94, v145);

    sub_100226C14(v199);
    if (v139)
    {
      (*(v179 + 8))(v64, v169);

LABEL_97:
      if (qword_100936260 != -1)
      {
        swift_once();
      }

      v146 = type metadata accessor for Logger();
      sub_100006654(v146, qword_100948A78);
      swift_errorRetain();
      v147 = Logger.logObject.getter();
      v148 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v147, v148))
      {
        v149 = swift_slowAlloc();
        v150 = swift_slowAlloc();
        v198[0] = v150;
        *v149 = 136315138;
        swift_getErrorValue();
        v151 = Error.rem_errorDescription.getter();
        v153 = sub_10000668C(v151, v152, v198);

        *(v149 + 4) = v153;
        _os_log_impl(&_mh_execute_header, v147, v148, "Failed to fetch manual sort hint of pinned lists {error: %s}", v149, 0xCu);
        sub_10000607C(v150);
      }

      else
      {
      }

      return v185;
    }

    v189 = v89;
    v118 = v199[0];
    if (!v199[0])
    {
      (*(v179 + 8))(v64, v169);

      return v185;
    }

    v187 = v199[1];
    v188 = v199[2];
    v190 = v199[3];
    v192 = v199[4];
    v71 = v71;
    sub_1006B038C();
    v68 = v154;
    v155 = type metadata accessor for RDManualSortIDCache();
    v113 = v155;
    if (qword_100936508 == -1)
    {
LABEL_105:
      v156 = qword_10094C220;
      __chkstk_darwin(v155);
      *(&v167 - 4) = v113;
      *(&v167 - 3) = v68;
      *(&v167 - 2) = v156;
      OS_dispatch_queue.sync<A>(execute:)();
      v157 = v198[0];
      type metadata accessor for RDManualSortIDAdapter();
      swift_initStackObject();
      v158 = sub_100214ECC(v157, v68, 0);

      v32 = sub_1004BECC0(v118, v101, v158, v185);

      v194 = v187;
      sub_1000050A4(&v194, &qword_100939A08, &unk_100796A80);
      v195 = v188;
      sub_1000050A4(&v195, &unk_100945230, &qword_1007A2590);
      v196 = v190;
      sub_1000050A4(&v196, &qword_10093E9C0, qword_100794F90);
      v197 = v192;
      sub_1000050A4(&v197, &unk_100945240, &qword_1007A0A70);

      (*(v179 + 8))(v64, v169);
      return v32;
    }

LABEL_135:
    v155 = swift_once();
    goto LABEL_105;
  }

  if (*((v117 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_81;
  }

LABEL_132:

  (*(v179 + 8))(v68, v169);
  return v32;
}

uint64_t sub_1000385C0()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000385F8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100038638(void **a1)
{
  v2 = type metadata accessor for REMAccountsListDataView.Model.GroupChild();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v55[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for REMAccountsListDataView.Model.Group();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v61 = &v55[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for REMAccountsListDataView.Model.PinnedList();
  v89 = *(v11 - 8);
  v12 = *(v89 + 64);
  v13 = __chkstk_darwin(v11);
  v84 = &v55[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = __chkstk_darwin(v13);
  v83 = &v55[-v16];
  v17 = __chkstk_darwin(v15);
  v62 = &v55[-v18];
  __chkstk_darwin(v17);
  v71 = &v55[-v19];
  v70 = type metadata accessor for REMAccountsListDataView.Model.AccountChild();
  v72 = *(v70 - 8);
  v20 = *(v72 + 64);
  __chkstk_darwin(v70);
  v69 = &v55[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = sub_100038F98();
  v68 = *(v22 + 16);
  if (!v68)
  {
  }

  v23 = 0;
  v67 = v72 + 16;
  v66 = v72 + 88;
  v65 = enum case for REMAccountsListDataView.Model.AccountChild.list(_:);
  v60 = enum case for REMAccountsListDataView.Model.AccountChild.customSmartList(_:);
  v59 = enum case for REMAccountsListDataView.Model.AccountChild.group(_:);
  v64 = (v72 + 96);
  v58 = (v8 + 32);
  v79 = v3 + 88;
  v80 = v3 + 16;
  v78 = enum case for REMAccountsListDataView.Model.GroupChild.list(_:);
  v74 = enum case for REMAccountsListDataView.Model.GroupChild.customSmartList(_:);
  v77 = (v3 + 96);
  v75 = enum case for REMAccountsListDataView.Model.PinnedList.customSmartList(_:);
  v86 = v89 + 32;
  v87 = (v89 + 104);
  v56 = (v8 + 8);
  v76 = enum case for REMAccountsListDataView.Model.PinnedList.list(_:);
  v81 = v2;
  v82 = a1;
  v88 = v11;
  v57 = v7;
  v63 = v22;
  while (v23 < *(v22 + 16))
  {
    v27 = v72;
    v28 = v22 + ((*(v27 + 80) + 32) & ~*(v27 + 80));
    v29 = *(v72 + 72);
    v73 = v23;
    v31 = v69;
    v30 = v70;
    (*(v72 + 16))(v69, v28 + v29 * v23, v70);
    v32 = (*(v27 + 88))(v31, v30);
    if (v32 == v65)
    {
      (*v64)(v31, v30);
      v33 = *v31;
      *v71 = *v31;
      (*v87)();
      v34 = *a1;
      v35 = v33;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v34 = sub_100039334(0, v34[2] + 1, 1, v34);
      }

      v37 = v34[2];
      v36 = v34[3];
      if (v37 >= v36 >> 1)
      {
        v34 = sub_100039334(v36 > 1, v37 + 1, 1, v34);
      }

      v34[2] = v37 + 1;
      v24 = v34 + ((*(v89 + 80) + 32) & ~*(v89 + 80)) + *(v89 + 72) * v37;
      v25 = *(v89 + 32);
      v26 = v71;
LABEL_4:
      v25(v24, v26, v88);
      *a1 = v34;
      goto LABEL_5;
    }

    if (v32 == v60)
    {
      (*v64)(v31, v30);
      v38 = *v31;
      *v62 = *v31;
      (*v87)();
      v34 = *a1;
      v39 = v38;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v34 = sub_100039334(0, v34[2] + 1, 1, v34);
      }

      v41 = v34[2];
      v40 = v34[3];
      if (v41 >= v40 >> 1)
      {
        v34 = sub_100039334(v40 > 1, v41 + 1, 1, v34);
      }

      v34[2] = v41 + 1;
      v24 = v34 + ((*(v89 + 80) + 32) & ~*(v89 + 80)) + *(v89 + 72) * v41;
      v25 = *(v89 + 32);
      v26 = v62;
      goto LABEL_4;
    }

    if (v32 != v59)
    {
      goto LABEL_40;
    }

    (*v64)(v31, v30);
    (*v58)(v61, v31, v7);
    v42 = sub_10049FBEC();
    v85 = *(v42 + 16);
    if (v85)
    {
      v43 = 0;
      while (v43 < *(v42 + 16))
      {
        (*(v3 + 16))(v6, v42 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v43, v2);
        v45 = (*(v3 + 88))(v6, v2);
        if (v45 == v78)
        {
          (*v77)(v6, v2);
          v46 = *v6;
          *v83 = *v6;
          (*v87)();
          v47 = *a1;
          v48 = v46;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v47 = sub_100039334(0, v47[2] + 1, 1, v47);
          }

          v50 = v47[2];
          v49 = v47[3];
          v51 = v50 + 1;
          if (v50 >= v49 >> 1)
          {
            v47 = sub_100039334(v49 > 1, v50 + 1, 1, v47);
          }

          v44 = v83;
        }

        else
        {
          if (v45 != v74)
          {
            goto LABEL_39;
          }

          (*v77)(v6, v2);
          v52 = *v6;
          *v84 = *v6;
          (*v87)();
          v47 = *a1;
          v48 = v52;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v47 = sub_100039334(0, v47[2] + 1, 1, v47);
          }

          v50 = v47[2];
          v53 = v47[3];
          v51 = v50 + 1;
          if (v50 >= v53 >> 1)
          {
            v47 = sub_100039334(v53 > 1, v50 + 1, 1, v47);
          }

          v44 = v84;
        }

        ++v43;

        v47[2] = v51;
        (*(v89 + 32))(v47 + ((*(v89 + 80) + 32) & ~*(v89 + 80)) + *(v89 + 72) * v50, v44, v88);
        v2 = v81;
        a1 = v82;
        *v82 = v47;
        if (v85 == v43)
        {
          goto LABEL_35;
        }
      }

      __break(1u);
      break;
    }

LABEL_35:

    v7 = v57;
    (*v56)(v61, v57);
LABEL_5:
    v22 = v63;
    v23 = v73 + 1;
    if (v73 + 1 == v68)
    {
    }
  }

  __break(1u);
LABEL_39:
  _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
LABEL_40:
  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_100038F98()
{
  v0 = type metadata accessor for REMAccountsListDataView.Model.AccountChild();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v36 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v7 = (&v26 - v6);
  __chkstk_darwin(v5);
  v37 = &v26 - v8;
  v9 = REMAccountsListDataView.Model.Account.children.getter();
  v34 = *(v9 + 16);
  if (!v34)
  {
    v11 = _swiftEmptyArrayStorage;
LABEL_20:

    return v11;
  }

  v10 = 0;
  v31 = v1 + 88;
  v32 = v1 + 16;
  v30 = enum case for REMAccountsListDataView.Model.AccountChild.list(_:);
  v27 = enum case for REMAccountsListDataView.Model.AccountChild.customSmartList(_:);
  v26 = enum case for REMAccountsListDataView.Model.AccountChild.group(_:);
  v28 = (v1 + 8);
  v29 = (v1 + 96);
  v35 = (v1 + 32);
  v11 = _swiftEmptyArrayStorage;
  v33 = v9;
  while (v10 < *(v9 + 16))
  {
    v12 = (*(v1 + 80) + 32) & ~*(v1 + 80);
    v13 = *(v1 + 72);
    v14 = *(v1 + 16);
    v15 = v37;
    v14(v37, v9 + v12 + v13 * v10, v0);
    v14(v7, v15, v0);
    v16 = (*(v1 + 88))(v7, v0);
    if (v16 == v30)
    {
      (*v29)(v7, v0);
      v17 = *v7;
      v18 = [*v7 isPinned];

      if (v18)
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (v16 != v27)
      {
        if (v16 != v26)
        {
          goto LABEL_22;
        }

        (*v28)(v7, v0);
LABEL_14:
        v21 = *v35;
        (*v35)(v36, v37, v0);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v38 = v11;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_100030FA0(0, v11[2] + 1, 1);
          v11 = v38;
        }

        v24 = v11[2];
        v23 = v11[3];
        if (v24 >= v23 >> 1)
        {
          sub_100030FA0(v23 > 1, v24 + 1, 1);
          v11 = v38;
        }

        v11[2] = v24 + 1;
        v21(v11 + v12 + v24 * v13, v36, v0);
        goto LABEL_4;
      }

      (*v29)(v7, v0);
      v19 = *v7;
      v20 = [*v7 isPinned];

      if (v20)
      {
        goto LABEL_14;
      }
    }

    (*v28)(v37, v0);
LABEL_4:
    ++v10;
    v9 = v33;
    if (v34 == v10)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_22:
  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

size_t sub_100039370(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_1000F5104(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

Swift::Int sub_10003954C(uint64_t *a1)
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
        type metadata accessor for REMAccountsListDataView.Model.PinnedList();
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v6[2] = v5;
      }

      v7 = *(type metadata accessor for REMAccountsListDataView.Model.PinnedList() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1004A18B0(v8, v9, a1, v4);
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
    return sub_1004A0D6C(0, v2, 1, a1);
  }

  return result;
}

void sub_10003978C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000397AC(uint64_t a1, uint64_t a2)
{
  v3 = REMCacheContext.object(forKey:)();
  swift_beginAccess();
  v4 = *(a2 + 16);
  *(a2 + 16) = v3;
}

unint64_t sub_10003980C()
{
  result = qword_1009391E0;
  if (!qword_1009391E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1009391E0);
  }

  return result;
}

uint64_t sub_100039860(uint64_t a1)
{
  v2 = sub_1000F5104(&unk_100938E70, &unk_100797230);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000398EC(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v36[-v10];
  v12 = a1 >> 62;
  if ((a1 >> 62) > 1)
  {
    if (v12 == 2)
    {
      sub_1000F5104(&unk_100939E20, qword_100795830);
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_100791340;
      KeyPath = swift_getKeyPath();
      sub_100139FA0(a1, a2, a3, a4);
      v20 = sub_10003A018(KeyPath, a1);

      *(v13 + 32) = v20;
      v21 = swift_getKeyPath();
      v22 = sub_10003A02C(v21, a2, a3);

      *(v13 + 40) = v22;
    }

    else
    {
      sub_1000F5104(&unk_100939E20, qword_100795830);
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_100791300;
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100791340;
      v30 = swift_getKeyPath();
      v31 = sub_1003EDA7C(v30);

      *(inited + 32) = v31;
      v32 = swift_getKeyPath();
      v33 = sub_1003EDA7C(v32);

      *(inited + 40) = v33;
      *(v13 + 32) = sub_100025060(inited);
    }
  }

  else
  {
    if (v12)
    {
      sub_1000F5104(&unk_100939E20, qword_100795830);
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_100791320;
      v23 = swift_getKeyPath();

      v24 = sub_10003A018(v23, a1);

      *(v13 + 32) = v24;
      v25 = swift_getKeyPath();
      v17 = sub_1003EDA68(v25, a2, a3, 6);
    }

    else
    {
      sub_1000F5104(&unk_100939E20, qword_100795830);
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_100791320;
      v14 = swift_getKeyPath();

      v15 = sub_10003A018(v14, a1);

      *(v13 + 32) = v15;
      v16 = swift_getKeyPath();
      v17 = sub_10003A02C(v16, a2, a3);
    }

    *(v13 + 40) = v17;
    v18 = swift_getKeyPath();
    v26 = [a4 uuid];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v27 = type metadata accessor for UUID();
    (*(*(v27 - 8) + 56))(v11, 0, 1, v27);
    v28 = sub_10003A040(v18, v11);

    *(v13 + 48) = v28;
  }

  sub_1000F5104(&unk_100939E20, qword_100795830);
  v34 = swift_initStackObject();
  *(v34 + 16) = xmmword_100791300;
  *(v34 + 32) = sub_10001035C(0);
  v37 = v34;
  sub_10003A170(v13);
  return sub_10000C2B0(v37);
}

id sub_100039CE0@<X0>(id *a1@<X0>, _WORD *a2@<X8>)
{
  result = [*a1 listTypeRawValue];
  *a2 = result;
  return result;
}

id sub_100039DE8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 account];
  *a2 = result;
  return result;
}

uint64_t sub_100039E40(uint64_t a1, __int16 a2, uint64_t *a3, uint64_t *a4)
{
  sub_1000F5104(&unk_100938E80, &unk_1007959D0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100791340;

  v8 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
  if (v9)
  {
    v10 = v8;
    v11 = v9;

    *(v7 + 56) = &type metadata for String;
    *(v7 + 32) = v10;
    *(v7 + 40) = v11;
    *(v7 + 88) = &type metadata for Int16;
    *(v7 + 64) = a2;
    v12 = String._bridgeToObjectiveC()();
    isa = Array._bridgeToObjectiveC()().super.isa;

    v14 = [objc_opt_self() predicateWithFormat:v12 argumentArray:isa];

    return v14;
  }

  else
  {
    _StringGuts.grow(_:)(46);
    v16._object = 0x80000001007EC120;
    v16._countAndFlagsBits = 0xD00000000000002CLL;
    String.append(_:)(v16);
    sub_1000F5104(a3, a4);
    _print_unlocked<A, B>(_:_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_10003A064(uint64_t result, uint64_t *a2, uint64_t *a3)
{
  v4 = *(result + 16);
  v5 = *v3;
  v6 = *(*v3 + 16);
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = result;
  v10 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v6 + v4 <= *(v5 + 24) >> 1)
  {
    if (*(v9 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  v5 = result;
  if (!*(v9 + 16))
  {
LABEL_10:

    if (!v4)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  if ((*(v5 + 24) >> 1) - *(v5 + 16) < v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  sub_1000F5104(a2, a3);
  swift_arrayInitWithCopy();

  if (!v4)
  {
LABEL_11:
    *v3 = v5;
    return result;
  }

  v11 = *(v5 + 16);
  v12 = __OFADD__(v11, v4);
  v13 = v11 + v4;
  if (!v12)
  {
    *(v5 + 16) = v13;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

void **sub_10003A188(void **a1, void **a2)
{
  v3 = *a2;
  *a1 = *a2;
  v4 = v3;
  return a1;
}

uint64_t sub_10003A1B8()
{
  v1 = v0;
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &aBlock[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &aBlock[-1] - v8;
  Date.init()();
  v10 = [v0 storeController];
  if (v10)
  {
    v11 = v10;
    v12 = [v10 inMemoryPrimaryActiveCKAccountREMObjectID];
    if (qword_100935F40 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_100006654(v13, qword_100944290);
    (*(v3 + 16))(v7, v9, v2);
    static REMCDRecurrenceRule.shouldAttemptLocalObjectMerge()();
    static REMCDRecurrenceRule.shouldAttemptLocalObjectMerge()();
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 68157952;
      *(v16 + 4) = 4;
      *(v16 + 8) = 2048;
      Date.rem_elapsedInMilliseconds.getter();
      v18 = v17;
      v19 = *(v3 + 8);
      v19(v7, v2);
      *(v16 + 10) = v18;
      _os_log_impl(&_mh_execute_header, v14, v15, "primaryActiveCloudKitAccountREMObjectID: {elapsed: %.*f ms}", v16, 0x12u);

      v19(v9, v2);
    }

    else
    {

      v30 = *(v3 + 8);
      v30(v7, v2);
      v30(v9, v2);
    }

    return v12;
  }

  if (qword_100935F40 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  sub_100006654(v20, qword_100944290);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&_mh_execute_header, v21, v22, "primaryActiveCloudKitAccountREMObjectID: Cannot get the RDStoreController from RDStoreControllerManagedObjectContext. Fallback to call REMCDAccount._groundTruth_primaryActiveCloudKitAccountInContext(in:).", v23, 2u);
  }

  v33 = 0;
  v24 = swift_allocObject();
  *(v24 + 16) = &v33;
  *(v24 + 24) = v1;
  v25 = swift_allocObject();
  *(v25 + 16) = sub_1003AB824;
  *(v25 + 24) = v24;
  aBlock[4] = sub_1000529DC;
  aBlock[5] = v25;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000F160;
  aBlock[3] = &unk_1008EEFE8;
  v26 = _Block_copy(aBlock);
  v27 = v1;

  [v27 performBlockAndWait:v26];
  _Block_release(v26);
  (*(v3 + 8))(v9, v2);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    v12 = v33;

    return v12;
  }

  __break(1u);
  return result;
}

uint64_t sub_10003A638()
{

  return _swift_deallocObject(v0, 32, 7);
}

void sub_10003A680(void *a1, void *a2)
{
  v5 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v76 = &v71 - v7;
  v8 = _s10PredicatesOMa_3();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = (&v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v78 = a1;
  v12 = [a1 persistentStoreOfAccountWithAccountID:a2];
  if (v12)
  {
    v13 = v12;
    sub_1000F5104(&unk_100939D60, &unk_1007959E0);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1007953F0;
    *(v14 + 32) = v13;
  }

  else
  {
    v14 = 0;
  }

  *v11 = a2;
  swift_storeEnumTagMultiPayload();
  v15 = a2;
  v16 = sub_10002DDAC();
  sub_10003AF64(v11);
  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100796900;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = swift_getKeyPath();
  sub_1000060C8(0, &unk_10093F770, off_1008D41E8);
  v18 = [objc_allocWithZone(NSFetchRequest) init];
  v19 = [swift_getObjCClassFromMetadata() entity];
  v77 = v18;
  [v18 setEntity:v19];

  if (v14)
  {
    sub_1000060C8(0, &qword_10093F430, NSPersistentStore_ptr);
    v20.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v20.super.isa = 0;
  }

  v21 = v77;
  [v77 setAffectedStores:v20.super.isa];

  [v21 setPredicate:v16];
  v79 = &_swiftEmptySetSingleton;

  sub_10003AFC0(v22);

  sub_1002133B0(v79);

  isa = Array._bridgeToObjectiveC()().super.isa;

  [v21 setPropertiesToFetch:isa];

  swift_setDeallocating();
  v24 = *(inited + 16);
  swift_arrayDestroy();
  v25 = NSManagedObjectContext.fetch<A>(_:)();
  v26 = v2;
  if (v2)
  {

    return;
  }

  v27 = v25;
  v75 = sub_10003AFEC(_swiftEmptyArrayStorage);
  if (!(v27 >> 62))
  {
    v78 = v27 & 0xFFFFFFFFFFFFFF8;
    v28 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v74 = v16;
    if (v28)
    {
      goto LABEL_11;
    }

LABEL_40:

    return;
  }

LABEL_43:
  v78 = v27 & 0xFFFFFFFFFFFFFF8;
  v28 = _CocoaArrayWrapper.endIndex.getter();
  v74 = v16;
  if (!v28)
  {
    goto LABEL_40;
  }

LABEL_11:
  v29 = 0;
  v16 = (v27 & 0xC000000000000001);
  v73 = v26;
  while (2)
  {
    v26 = v29;
    while (1)
    {
      if (v16)
      {
        v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v26 >= *(v78 + 16))
        {
          goto LABEL_42;
        }

        v30 = *(v27 + 8 * v26 + 32);
      }

      v31 = v30;
      v29 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
LABEL_42:
        __break(1u);
        goto LABEL_43;
      }

      v32 = [v30 smartListType];
      if (v32)
      {
        v33 = v32;
        v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v36 = v35;

        v37._countAndFlagsBits = v34;
        v37._object = v36;
        v38 = REMSmartListType.init(stringValue:)(v37);
        if (v38)
        {
          break;
        }
      }

      ++v26;
      if (v29 == v28)
      {
        goto LABEL_40;
      }
    }

    v39 = v38;
    v40 = [v31 smartListType];
    if (v40 && (v41 = v40, v42 = static String._unconditionallyBridgeFromObjectiveC(_:)(), v44 = v43, v41, v45._countAndFlagsBits = v42, v45._object = v44, (v46 = REMSmartListType.init(stringValue:)(v45)) != 0))
    {
      v47 = v46;
      v48 = [v31 pinnedDate];
      if (v48)
      {
        v49 = v76;
        v50 = v48;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v51 = 0;
      }

      else
      {
        v51 = 1;
        v49 = v76;
      }

      v52 = type metadata accessor for Date();
      (*(*(v52 - 8) + 56))(v49, v51, 1, v52);
      sub_1000060C8(0, &qword_10093A230, REMSmartList_ptr);
      v71 = static REMSmartList.userDefinedVisibilityOfSmartList(with:pinnedDate:)();

      sub_1000050A4(v49, &unk_100938850, qword_100795AE0);
    }

    else
    {
      v71 = 0;
    }

    v53 = v39;
    v54 = v75;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v79 = v54;
    v72 = v53;
    v57 = sub_100393C70(v53);
    v58 = v54[2];
    v59 = (v56 & 1) == 0;
    v60 = v58 + v59;
    if (__OFADD__(v58, v59))
    {
      __break(1u);
LABEL_46:
      __break(1u);
      break;
    }

    v61 = v56;
    if (v54[3] >= v60)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_10037382C();
      }

      goto LABEL_35;
    }

    sub_10036AC00(v60, isUniquelyReferenced_nonNull_native);
    v62 = sub_100393C70(v72);
    if ((v61 & 1) == (v63 & 1))
    {
      v57 = v62;
LABEL_35:
      v64 = v79;
      v75 = v79;
      if (v61)
      {
        v65 = v72;
        *(v79[7] + 8 * v57) = v71;

        if (v29 != v28)
        {
          continue;
        }

        goto LABEL_40;
      }

      v79[(v57 >> 6) + 8] |= 1 << v57;
      v66 = v71;
      v67 = v72;
      *(v64[6] + 8 * v57) = v72;
      *(v64[7] + 8 * v57) = v66;

      v68 = v64[2];
      v69 = __OFADD__(v68, 1);
      v70 = v68 + 1;
      if (!v69)
      {
        v64[2] = v70;
        if (v29 != v28)
        {
          continue;
        }

        goto LABEL_40;
      }

      goto LABEL_46;
    }

    break;
  }

  type metadata accessor for REMSmartListType(0);
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

uint64_t sub_10003AD58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1000F5104(&unk_100938E80, &unk_1007959D0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100791340;

  v6 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
  if (v7)
  {
    v8 = v6;
    v9 = v7;

    *(v5 + 56) = &type metadata for String;
    *(v5 + 32) = v8;
    *(v5 + 40) = v9;
    *(v5 + 88) = sub_1000F5104(&unk_100939E40, &qword_100791BD0);
    *(v5 + 64) = a2;
    *(v5 + 72) = a3;
    v10 = String._bridgeToObjectiveC()();
    isa = Array._bridgeToObjectiveC()().super.isa;

    v12 = [objc_opt_self() predicateWithFormat:v10 argumentArray:isa];

    return v12;
  }

  else
  {
    _StringGuts.grow(_:)(46);
    v14._object = 0x80000001007EC120;
    v14._countAndFlagsBits = 0xD00000000000002CLL;
    String.append(_:)(v14);
    sub_1000F5104(&qword_100946530, &qword_10079B260);
    _print_unlocked<A, B>(_:_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_10003AF64(uint64_t a1)
{
  v2 = _s10PredicatesOMa_3();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10003AFEC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000F5104(&qword_100943D88, &unk_1007A4540);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = sub_100364088(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

uint64_t sub_10003B0D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F5104(&qword_100948B88, &unk_1007ACB98);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10003B148(uint64_t a1)
{
  v2 = type metadata accessor for REMAccountsListDataView.CachableProperty();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v17 - v8;
  v10 = *(a1 + 16);
  sub_1001A6868(&qword_100943D90, &type metadata accessor for REMAccountsListDataView.CachableProperty);
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
      v13(v7, v15, v2);
      sub_10037A43C(v9, v7);
      (*(v12 - 8))(v9, v2);
      v15 += v16;
      --v10;
    }

    while (v10);
    return v18;
  }

  return result;
}

unint64_t sub_10003B2E4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000F5104(&unk_100943D30, &unk_1007AAB90);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100010364(v4, &v11, &unk_100943D50, &qword_1007A4528);
      v5 = v11;
      result = sub_10002B924(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_100005EE0(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

uint64_t sub_10003B40C(uint64_t result, unint64_t a2, uint64_t a3)
{
  if (a3)
  {
    sub_10001BBA0(result, a2);
  }

  return result;
}

uint64_t sub_10003B59C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1000F5104(&unk_100942EC0, &qword_1007AAB60);
    v2 = static _DictionaryStorage.allocate(capacity:)();
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
    v14 = *(*(a1 + 48) + 8 * v13);
    sub_100005EF0(*(a1 + 56) + 32 * v13, v34 + 8);
    *&v34[0] = v14;
    v32[0] = v34[0];
    v32[1] = v34[1];
    v33 = v35;
    *&v31[0] = v14;
    sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
    v15 = v14;
    swift_dynamicCast();
    sub_100005EE0((v32 + 8), v26);
    v27 = v23;
    v28 = v24;
    v29 = v25;
    sub_100005EE0(v26, v30);
    v23 = v27;
    v24 = v28;
    v25 = v29;
    sub_100005EE0(v30, v31);
    result = AnyHashable._rawHashValue(seed:)(v2[5]);
    v16 = -1 << *(v2 + 32);
    v17 = result & ~v16;
    v18 = v17 >> 6;
    if (((-1 << v17) & ~*&v7[8 * (v17 >> 6)]) == 0)
    {
      v19 = 0;
      v20 = (63 - v16) >> 6;
      while (++v18 != v20 || (v19 & 1) == 0)
      {
        v21 = v18 == v20;
        if (v18 == v20)
        {
          v18 = 0;
        }

        v19 |= v21;
        v22 = *&v7[8 * v18];
        if (v22 != -1)
        {
          v10 = __clz(__rbit64(~v22)) + (v18 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v17) & ~*&v7[8 * (v17 >> 6)])) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *&v7[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v23;
    *(v11 + 16) = v24;
    *(v11 + 32) = v25;
    result = sub_100005EE0(v31, (v2[7] + 32 * v10));
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

unint64_t sub_10003B8F0(void *a1, unint64_t a2)
{
  v4 = v3;
  v5 = v2;
  v152 = a2;
  v153 = a1;
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  isa = v7[8].isa;
  __chkstk_darwin(v6);
  v130 = &v126 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000F5104(&unk_1009441F0, &qword_100795760);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v137 = &v126 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v136 = &v126 - v14;
  v145 = type metadata accessor for Date();
  v15 = *(v145 - 8);
  v16 = v15[8];
  __chkstk_darwin(v145);
  v144 = &v126 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = [v5 storeController];
  if (v18)
  {
    v135 = v6;
    v158 = _swiftEmptyArrayStorage;
    v163[0] = 0;
    v163[1] = 0;
    v129 = v18;
    v19 = [v18 validPersistentStores];
    v150 = sub_1000060C8(0, &qword_10093F430, NSPersistentStore_ptr);
    v20 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v20 >> 62)
    {
      goto LABEL_50;
    }

    for (i = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v22 = 0;
      v149 = v20 & 0xC000000000000001;
      v148 = v20 & 0xFFFFFFFFFFFFFF8;
      v138 = (v15 + 1);
      v132 = v7 + 7;
      v131 = v7 + 6;
      v128 = v7 + 2;
      v127 = v7 + 1;
      *(&v23 + 1) = 3;
      v147 = xmmword_1007953F0;
      *&v23 = 134218754;
      v134 = v23;
      v133 = v5;
      v146 = v20;
      v143 = i;
      while (1)
      {
        if (v149)
        {
          v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v22 >= *(v148 + 16))
          {
            goto LABEL_49;
          }

          v24 = *(v20 + 8 * v22 + 32);
        }

        v7 = v24;
        if (__OFADD__(v22, 1))
        {
          break;
        }

        v156 = v22 + 1;
        v25 = [v153 persistentHistoryTokens];
        sub_1000060C8(0, &qword_100939658, NSPersistentHistoryToken_ptr);
        v26 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
        v27 = [v7 identifier];
        if (!v27)
        {
          __break(1u);
LABEL_62:
          __break(1u);
        }

        v28 = v27;

        v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v31 = v30;

        v32 = *(v26 + 16);
        v155 = v22;
        if (v32)
        {
          v33 = sub_100005F4C(v29, v31);
          v35 = v34;

          if (v35)
          {
            v36 = *(*(v26 + 56) + 8 * v33);

            v37 = objc_opt_self();
            v157 = v36;
            v38 = [v37 fetchHistoryAfterToken:v36];
            goto LABEL_17;
          }
        }

        else
        {
        }

        v39 = objc_opt_self();
        v40 = v144;
        static Date.distantPast.getter();
        v41 = Date._bridgeToObjectiveC()().super.isa;
        (*v138)(v40, v145);
        v38 = [v39 fetchHistoryAfterDate:v41];

        v157 = 0;
LABEL_17:
        [v38 setResultType:5];
        sub_1000F5104(&unk_100939D60, &unk_1007959E0);
        v42 = swift_allocObject();
        *(v42 + 16) = v147;
        *(v42 + 32) = v7;
        v43 = v38;
        v44 = v7;
        v45 = Array._bridgeToObjectiveC()().super.isa;

        [v43 setAffectedStores:v45];

        v46 = sub_10003DCD4(v163, v152, v5);
        (v46)(v43);

        *&v161 = 0;
        v47 = [v5 executeRequest:v43 error:&v161];
        v48 = v161;
        if (!v47)
        {
          v99 = v161;

          _convertNSErrorToError(_:)();

          swift_willThrow();
          v100 = &v159;
LABEL_47:

          sub_10003E114(v163[0]);
          return v48;
        }

        v49 = v47;
        v162 = sub_1000060C8(0, &qword_100939EC0, NSPersistentStoreResult_ptr);
        *&v161 = v49;
        sub_1000060C8(0, &qword_100939660, NSPersistentHistoryResult_ptr);
        v50 = v48;
        v51 = v49;
        throwingCast<A>(_:as:failureMessage:)();
        if (v4)
        {

          sub_10003E114(v163[0]);

          sub_10000607C(&v161);
          return v48;
        }

        sub_10000607C(&v161);
        v52 = v160;
        v53 = [v160 result];
        v154 = v51;
        if (!v53)
        {
          v142 = v52;

          if (qword_100935AD0 != -1)
          {
            swift_once();
          }

          v101 = type metadata accessor for Logger();
          sub_100006654(v101, qword_100939640);
          v102 = v5;
          v103 = Logger.logObject.getter();
          v104 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v103, v104))
          {
            v105 = swift_slowAlloc();
            v106 = swift_slowAlloc();
            *v105 = 138412290;
            *(v105 + 4) = v102;
            *v106 = v102;
            v107 = v102;
            _os_log_impl(&_mh_execute_header, v103, v104, "Failed to get transaction from CoreData. No error. {invocation: %@}", v105, 0xCu);
            sub_1000050A4(v106, &unk_100938E70, &unk_100797230);
          }

          v108 = objc_opt_self();
          *&v161 = 0;
          *(&v161 + 1) = 0xE000000000000000;
          _StringGuts.grow(_:)(67);
          v109._object = 0x80000001007ECFC0;
          v109._countAndFlagsBits = 0xD000000000000040;
          String.append(_:)(v109);
          v110 = [v102 description];
          v111 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v113 = v112;

          v114._countAndFlagsBits = v111;
          v114._object = v113;
          String.append(_:)(v114);

          v115._countAndFlagsBits = 125;
          v115._object = 0xE100000000000000;
          String.append(_:)(v115);
          v48 = *(&v161 + 1);
          v116 = String._bridgeToObjectiveC()();

          [v108 internalErrorWithDebugDescription:v116];

          swift_willThrow();
          v100 = &v164;
          goto LABEL_47;
        }

        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
        sub_100005EE0(&v160, &v161);
        sub_1000F5104(&qword_100939668, &qword_100795F18);
        throwingCast<A>(_:as:failureMessage:)();
        v54 = v160;
        if (qword_100935AD0 != -1)
        {
          swift_once();
        }

        v55 = type metadata accessor for Logger();
        sub_100006654(v55, qword_100939640);
        v56 = v157;
        v57 = v44;
        swift_bridgeObjectRetain_n();
        v58 = v57;
        v7 = Logger.logObject.getter();
        v59 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v7, v59))
        {
          v140 = v59;
          v151 = v56;
          v60 = swift_slowAlloc();
          v61 = swift_slowAlloc();
          *&v160 = v61;
          *v60 = v134;
          v141 = v43;
          v139 = v61;
          if (v54 >> 62)
          {
            v62 = _CocoaArrayWrapper.endIndex.getter();
          }

          else
          {
            v62 = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v142 = v52;

          *(v60 + 4) = v62;

          *(v60 + 12) = 2080;
          v63 = [v58 identifier];

          if (!v63)
          {
            goto LABEL_62;
          }

          v64 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v66 = v65;

          v67 = sub_10000668C(v64, v66, &v160);

          *(v60 + 14) = v67;
          *(v60 + 22) = 2080;
          v68 = [v58 URL];
          if (v68)
          {
            v69 = v137;
            v70 = v68;
            static URL._unconditionallyBridgeFromObjectiveC(_:)();

            v71 = 0;
            v72 = v135;
          }

          else
          {
            v71 = 1;
            v72 = v135;
            v69 = v137;
          }

          v43 = v141;
          (v132->isa)(v69, v71, 1, v72);
          v73 = v136;
          sub_10003E8F8(v69, v136);
          v4 = 0;
          if ((v131->isa)(v73, 1, v72))
          {
            sub_1000050A4(v73, &unk_1009441F0, &qword_100795760);
            v74 = 0xE500000000000000;
            v75 = 0x296C696E28;
          }

          else
          {
            v76 = v130;
            (v128->isa)(v130, v73, v72);
            sub_1000050A4(v73, &unk_1009441F0, &qword_100795760);
            v77 = URL.absoluteString.getter();
            v78 = v72;
            v75 = v77;
            v74 = v79;
            (v127->isa)(v76, v78);
          }

          v5 = v133;
          v80 = sub_10000668C(v75, v74, &v160);

          *(v60 + 24) = v80;
          *(v60 + 32) = 2080;
          v159 = v157;
          sub_1000F5104(&qword_100939670, &qword_100795F20);
          v81 = Optional.descriptionOrNil.getter();
          v83 = sub_10000668C(v81, v82, &v160);

          *(v60 + 34) = v83;
          _os_log_impl(&_mh_execute_header, v7, v140, "Fetched transactions for store {transactions.count: %ld, store.identifier: %s, store.url: %s, historyToken: %s}", v60, 0x2Au);
          swift_arrayDestroy();

          v52 = v142;
          v56 = v151;
        }

        else
        {

          swift_bridgeObjectRelease_n();
        }

        v15 = &v158;
        sub_10003EEE8(v54);

        sub_10000607C(&v161);
        v22 = v155 + 1;
        v20 = v146;
        if (v156 == v143)
        {
          goto LABEL_51;
        }
      }

      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      ;
    }

LABEL_51:

    if (qword_100935AD0 != -1)
    {
      swift_once();
    }

    v117 = type metadata accessor for Logger();
    sub_100006654(v117, qword_100939640);
    v48 = v158;

    v118 = v153;
    v119 = Logger.logObject.getter();
    v120 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v119, v120))
    {
      v121 = swift_slowAlloc();
      v122 = swift_slowAlloc();
      *v121 = 134218242;
      if (v48 >> 62)
      {
        v123 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v123 = *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v121 + 4) = v123;

      *(v121 + 12) = 2112;
      *(v121 + 14) = v118;
      *v122 = v118;
      v124 = v118;
      _os_log_impl(&_mh_execute_header, v119, v120, "Fetched all transactions {allTransactions.count: %ld, sourceToken: %@}", v121, 0x16u);
      sub_1000050A4(v122, &unk_100938E70, &unk_100797230);
    }

    else
    {
    }

    sub_10003E114(v163[0]);
  }

  else
  {
    if (qword_100935AD0 != -1)
    {
      swift_once();
    }

    v84 = type metadata accessor for Logger();
    sub_100006654(v84, qword_100939640);
    v85 = v5;
    v86 = Logger.logObject.getter();
    v87 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v86, v87))
    {
      v88 = swift_slowAlloc();
      v89 = swift_slowAlloc();
      *v88 = 138412290;
      *(v88 + 4) = v85;
      *v89 = v85;
      v90 = v85;
      _os_log_impl(&_mh_execute_header, v86, v87, "Tried to fetch transactions from managedObjectContext without storeController {managedObjectContext: %@}", v88, 0xCu);
      sub_1000050A4(v89, &unk_100938E70, &unk_100797230);
    }

    v91 = objc_opt_self();
    *&v161 = 0;
    *(&v161 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(103);
    v92._countAndFlagsBits = 0xD000000000000065;
    v92._object = 0x80000001007ECF50;
    String.append(_:)(v92);
    v93 = [v85 description];
    v94 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v96 = v95;

    v97._countAndFlagsBits = v94;
    v97._object = v96;
    String.append(_:)(v97);

    v48 = *(&v161 + 1);
    v98 = String._bridgeToObjectiveC()();

    [v91 internalErrorWithDebugDescription:v98];

    swift_willThrow();
  }

  return v48;
}

unint64_t sub_10003CAE0(void *a1)
{
  result = sub_10003B8F0(a1, _swiftEmptyArrayStorage);
  if (!v1)
  {
    v3 = result;
    v137 = &_swiftEmptySetSingleton;
    v136[1] = &_swiftEmptySetSingleton;
    if (result >> 62)
    {
      goto LABEL_109;
    }

    v4 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
LABEL_4:
      v5 = 0;
      v129 = v3 & 0xC000000000000001;
      v124 = (v3 + 32);
      v125 = v3 & 0xFFFFFFFFFFFFFF8;
      v126 = v4;
      v127 = v3;
      while (1)
      {
        if (v129)
        {
          v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v5 >= *(v125 + 16))
          {
            goto LABEL_108;
          }

          v6 = v124[v5];
        }

        v130 = v6;
        if (__OFADD__(v5++, 1))
        {
          goto LABEL_107;
        }

        v8 = [v6 changes];
        if (!v8)
        {
          if (qword_100936260 != -1)
          {
            swift_once();
          }

          v113 = type metadata accessor for Logger();
          sub_100006654(v113, qword_100948A78);
          v114 = v130;
          v115 = Logger.logObject.getter();
          v116 = static os_log_type_t.info.getter();

          if (os_log_type_enabled(v115, v116))
          {
            v117 = swift_slowAlloc();
            v118 = swift_slowAlloc();
            *v117 = 138412290;
            *(v117 + 4) = v114;
            *v118 = v114;
            v119 = v114;
            _os_log_impl(&_mh_execute_header, v115, v116, "Skipping transaction because it contains no changes {transaction: %@}", v117, 0xCu);
            sub_1000050A4(v118, &unk_100938E70, &unk_100797230);
          }

          else
          {
          }

          goto LABEL_6;
        }

        v9 = v8;
        sub_1000060C8(0, &qword_10093F3C8, NSPersistentHistoryChange_ptr);
        v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        if (!(v10 >> 62))
        {
          v133 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v133)
          {
            break;
          }

          goto LABEL_103;
        }

        v133 = _CocoaArrayWrapper.endIndex.getter();
        if (v133)
        {
          break;
        }

LABEL_103:

LABEL_6:
        if (v5 == v4)
        {

          return v137;
        }
      }

      v128 = v5;
      v11 = 0;
      v135 = v10 & 0xC000000000000001;
      v131 = v10 & 0xFFFFFFFFFFFFFF8;
      v3 = &selRef_accountStatusWithCompletionHandler_;
      v134 = v10;
      v12 = v133;
      while (1)
      {
        if (v135)
        {
          v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v11 >= *(v131 + 16))
          {
            goto LABEL_106;
          }

          v13 = *(v10 + 8 * v11 + 32);
        }

        v14 = v13;
        v15 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          v4 = _CocoaArrayWrapper.endIndex.getter();
          if (!v4)
          {
            goto LABEL_110;
          }

          goto LABEL_4;
        }

        if ([v13 changeType] != 1)
        {
          if (qword_100936260 != -1)
          {
            swift_once();
          }

          v34 = type metadata accessor for Logger();
          sub_100006654(v34, qword_100948A78);
          v35 = v14;
          v36 = Logger.logObject.getter();
          v37 = static os_log_type_t.debug.getter();

          if (os_log_type_enabled(v36, v37))
          {
            v38 = swift_slowAlloc();
            v39 = swift_slowAlloc();
            *v38 = 138412290;
            *(v38 + 4) = v35;
            *v39 = v35;
            v40 = v35;
            _os_log_impl(&_mh_execute_header, v36, v37, "Skipping change because it's not update {change: %@}", v38, 0xCu);
            sub_1000050A4(v39, &unk_100938E70, &unk_100797230);

            v10 = v134;
          }

          else
          {
          }

          goto LABEL_17;
        }

        v16 = [v14 changedObjectID];
        v17 = [v16 *(v3 + 3160)];
        sub_1000060C8(0, &qword_1009399F0, off_1008D4120);
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v19 = v17;
        v20 = [ObjCClassFromMetadata *(v3 + 3160)];
        sub_1000060C8(0, &unk_100947240, NSEntityDescription_ptr);
        v21 = v3;
        v22 = static NSObject.== infix(_:_:)();

        if (v22)
        {
          break;
        }

        v132 = v16;
        sub_1000060C8(0, &unk_100938880, off_1008D41A8);
        v41 = swift_getObjCClassFromMetadata();
        v42 = v19;
        v43 = [v41 *(v21 + 3160)];
        v44 = static NSObject.== infix(_:_:)();

        v3 = v21;
        if ((v44 & 1) == 0)
        {
          sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
          v52 = [swift_getObjCClassFromMetadata() *(v21 + 3160)];
          v53 = static NSObject.== infix(_:_:)();

          v12 = v133;
          if ((v53 & 1) == 0)
          {
            if (qword_100936260 != -1)
            {
              swift_once();
            }

            v62 = type metadata accessor for Logger();
            sub_100006654(v62, qword_100948A78);
            v63 = v132;
            v64 = Logger.logObject.getter();
            v65 = static os_log_type_t.debug.getter();

            if (os_log_type_enabled(v64, v65))
            {
              v66 = swift_slowAlloc();
              v67 = swift_slowAlloc();
              *v66 = 138412290;
              *(v66 + 4) = v63;
              *v67 = v63;
              v68 = v63;
              _os_log_impl(&_mh_execute_header, v64, v65, "Skipping change unhandled type {objectID: %@}", v66, 0xCu);
              sub_1000050A4(v67, &unk_100938E70, &unk_100797230);
            }

            else
            {
            }

            goto LABEL_66;
          }

          v54 = sub_1005AFD38(v132);
          if (!v54)
          {
LABEL_55:

            goto LABEL_94;
          }

          v46 = v54;
          objc_opt_self();
          v55 = swift_dynamicCastObjCClass();
          if (v55)
          {
            v56 = v55;
            v57 = v46;
            v58 = [v56 list];
            if (!v58 || (v59 = v58, v60 = [v58 remObjectID], v59, !v60))
            {

              v10 = v134;
              if (qword_100936260 != -1)
              {
                swift_once();
              }

              v98 = type metadata accessor for Logger();
              sub_100006654(v98, qword_100948A78);
              v99 = v57;
              v100 = Logger.logObject.getter();
              v101 = static os_log_type_t.info.getter();

              v123 = v101;
              if (os_log_type_enabled(v100, v101))
              {
                v122 = v99;
                v102 = swift_slowAlloc();
                v120 = swift_slowAlloc();
                buf = v102;
                v136[0] = v120;
                *v102 = 136315138;
                v103 = [v56 remObjectID];
                if (v103)
                {
                  v104 = v103;
                  v105 = [v103 description];

                  v10 = v134;
                  v106 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v108 = v107;
                }

                else
                {
                  v108 = 0xE300000000000000;
                  v106 = 7104878;
                }

                v112 = sub_10000668C(v106, v108, v136);

                *(buf + 4) = v112;
                _os_log_impl(&_mh_execute_header, v100, v123, "Updated reminder has no list -- skipping {reminder: %s}", buf, 0xCu);
                sub_10000607C(v120);

                v3 = 0x100928000;
              }

              else
              {

                v3 = 0x100928000;
              }

              goto LABEL_17;
            }

            v61 = REMObjectID.codable.getter();
            sub_100379240(v136, v61);

LABEL_45:
            goto LABEL_66;
          }

          if (qword_100936260 != -1)
          {
            swift_once();
          }

          v109 = type metadata accessor for Logger();
          sub_100006654(v109, qword_100948A78);
          v110 = v132;
          v89 = Logger.logObject.getter();
          v111 = static os_log_type_t.fault.getter();

          if (!os_log_type_enabled(v89, v111))
          {

LABEL_93:
            v3 = 0x100928000;
            v12 = v133;
LABEL_94:
            v10 = v134;
            goto LABEL_17;
          }

          v91 = swift_slowAlloc();
          v92 = swift_slowAlloc();
          *v91 = 138412290;
          *(v91 + 4) = v110;
          *v92 = v110;
          v27 = v110;
          v93 = v111;
          v94 = v89;
          v95 = "Failed to cast managedObject to REMCDReminder {objectID: %@}";
          goto LABEL_88;
        }

        v45 = sub_1005AFD38(v132);
        v12 = v133;
        if (!v45)
        {
          goto LABEL_55;
        }

        v46 = v45;
        objc_opt_self();
        v47 = swift_dynamicCastObjCClass();
        v10 = v134;
        if (!v47)
        {
          if (qword_100936260 != -1)
          {
            swift_once();
          }

          v87 = type metadata accessor for Logger();
          sub_100006654(v87, qword_100948A78);
          v88 = v132;
          v89 = Logger.logObject.getter();
          v90 = static os_log_type_t.fault.getter();

          if (os_log_type_enabled(v89, v90))
          {
            v91 = swift_slowAlloc();
            v92 = swift_slowAlloc();
            *v91 = 138412290;
            *(v91 + 4) = v88;
            *v92 = v88;
            v27 = v88;
            v93 = v90;
            v94 = v89;
            v95 = "Failed to cast managedObject to REMCDList {objectID: %@}";
            goto LABEL_88;
          }

LABEL_77:

LABEL_90:
          v3 = 0x100928000;
          v12 = v133;
          goto LABEL_17;
        }

        v48 = v47;
        v46 = v46;
        v49 = [v48 remObjectID];
        if (!v49)
        {

          if (qword_100936260 != -1)
          {
            swift_once();
          }

          v96 = type metadata accessor for Logger();
          sub_100006654(v96, qword_100948A78);
          v88 = v132;
          v89 = Logger.logObject.getter();
          v97 = static os_log_type_t.error.getter();

          if (!os_log_type_enabled(v89, v97))
          {
            goto LABEL_77;
          }

          v91 = swift_slowAlloc();
          v92 = swift_slowAlloc();
          *v91 = 138412290;
          *(v91 + 4) = v88;
          *v92 = v88;
          v27 = v88;
          v93 = v97;
          v94 = v89;
          v95 = "Failed to get remObjectID from REMCDList {objectID: %@}";
LABEL_88:
          _os_log_impl(&_mh_execute_header, v94, v93, v95, v91, 0xCu);
          sub_1000050A4(v92, &unk_100938E70, &unk_100797230);

          v10 = v134;

LABEL_89:
          goto LABEL_90;
        }

        v50 = v49;
        v51 = REMObjectID.codable.getter();
        sub_100379240(v136, v51);

        v10 = v134;
LABEL_17:
        ++v11;
        if (v15 == v12)
        {

          v4 = v126;
          v3 = v127;
          v5 = v128;
          goto LABEL_6;
        }
      }

      v23 = sub_1005AFD38(v16);
      if (!v23)
      {

        goto LABEL_93;
      }

      v24 = v23;
      objc_opt_self();
      v25 = swift_dynamicCastObjCClass();
      v12 = v133;
      if (!v25)
      {
        if (qword_100936260 != -1)
        {
          swift_once();
        }

        v69 = type metadata accessor for Logger();
        sub_100006654(v69, qword_100948A78);
        v70 = v16;
        v71 = Logger.logObject.getter();
        v72 = static os_log_type_t.fault.getter();

        if (!os_log_type_enabled(v71, v72))
        {

          goto LABEL_93;
        }

        v73 = swift_slowAlloc();
        v74 = swift_slowAlloc();
        *v73 = 138412290;
        *(v73 + 4) = v70;
        *v74 = v70;
        v75 = v70;
        _os_log_impl(&_mh_execute_header, v71, v72, "Failed to cast managedObject to REMCDAccount {objectID: %@}", v73, 0xCu);
        sub_1000050A4(v74, &unk_100938E70, &unk_100797230);

        v10 = v134;

        goto LABEL_90;
      }

      v26 = v25;
      v27 = v24;
      v28 = [v26 remObjectID];
      if (v28)
      {
        v29 = v28;
        sub_1000F5104(&unk_100939D60, &unk_1007959E0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1007953F0;
        *(inited + 32) = swift_getKeyPath();
        v31 = sub_10049F918(inited);
        swift_setDeallocating();
        v32 = *(inited + 16);
        swift_arrayDestroy();
        if (v31)
        {
          v33 = REMObjectID.codable.getter();
          sub_100379240(v136, v33);

          goto LABEL_45;
        }

        if (qword_100936260 != -1)
        {
          swift_once();
        }

        v83 = type metadata accessor for Logger();
        sub_100006654(v83, qword_100948A78);
        v84 = Logger.logObject.getter();
        v85 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v84, v85))
        {
          v86 = swift_slowAlloc();
          *v86 = 0;
          _os_log_impl(&_mh_execute_header, v84, v85, "Ignoring account change because it didn't update the name", v86, 2u);
        }

LABEL_66:
        v3 = 0x100928000;
        goto LABEL_94;
      }

      if (qword_100936260 != -1)
      {
        swift_once();
      }

      v76 = type metadata accessor for Logger();
      sub_100006654(v76, qword_100948A78);
      v77 = v16;
      v78 = Logger.logObject.getter();
      v79 = static os_log_type_t.error.getter();

      if (!os_log_type_enabled(v78, v79))
      {

        goto LABEL_93;
      }

      v80 = swift_slowAlloc();
      v81 = swift_slowAlloc();
      *v80 = 138412290;
      *(v80 + 4) = v77;
      *v81 = v77;
      v82 = v77;
      _os_log_impl(&_mh_execute_header, v78, v79, "Failed to get remObjectID from REMCDAccount {objectID: %@}", v80, 0xCu);
      sub_1000050A4(v81, &unk_100938E70, &unk_100797230);

      v10 = v134;

      goto LABEL_89;
    }

LABEL_110:

    return &_swiftEmptySetSingleton;
  }

  return result;
}

Swift::Void (__swiftcall *sub_10003DCD4(uint64_t *a1, unint64_t a2, uint64_t a3))()
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = *a1;
    v6 = a1[1];
  }

  else
  {
    v5 = sub_10003DD80(a2, a3);
    v9 = v8;
    swift_beginAccess();
    v10 = *a1;
    v11 = a1[1];
    *a1 = v5;
    a1[1] = v9;

    sub_10003E114(v10);
  }

  sub_10003E124(v3);
  return v5;
}

Swift::Void (__swiftcall *sub_10003DD80(unint64_t a1, uint64_t a2))()
{
  if (a1 >> 62)
  {
    v23 = a1;
    v24 = _CocoaArrayWrapper.endIndex.getter();
    a1 = v23;
    v3 = REMCDList.cleanUpAfterLocalObjectMerge();
    if (!v24)
    {
      return v3;
    }
  }

  else
  {
    v3 = REMCDList.cleanUpAfterLocalObjectMerge();
    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v3;
    }
  }

  v4 = a1;
  v5 = [objc_opt_self() entityDescriptionWithContext:a2];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 propertiesByName];
    sub_1000060C8(0, &qword_100939678, NSPropertyDescription_ptr);
    v8 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    if (*(v8 + 16))
    {
      v9 = sub_100005F4C(0x456465676E616863, 0xED0000797469746ELL);
      if (v10)
      {
        v11 = *(*(v8 + 56) + 8 * v9);

        sub_1000060C8(0, &unk_100938890, NSPredicate_ptr);
        sub_1000F5104(&qword_100939EB0, &qword_1007989A0);
        v12 = swift_allocObject();
        *(v12 + 16) = xmmword_100791340;
        v13 = [v11 name];
        v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v16 = v15;

        *(v12 + 56) = &type metadata for String;
        *(v12 + 64) = sub_100006600();
        *(v12 + 32) = v14;
        *(v12 + 40) = v16;
        *(v12 + 96) = sub_1000F5104(&qword_100939680, &qword_100795F28);
        *(v12 + 104) = sub_10004285C();
        *(v12 + 72) = v4;

        v17 = NSPredicate.init(format:_:)();

        v18 = swift_allocObject();
        *(v18 + 16) = v6;
        *(v18 + 24) = v17;
        return sub_100042960;
      }
    }
  }

  if (qword_100935AD0 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  sub_100006654(v19, qword_100939640);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&_mh_execute_header, v20, v21, "NSManagedObjectContext#transactionsAndChanges: failed to get changedEntityPropertyDescription", v22, 2u);
  }

  return REMCDList.cleanUpAfterLocalObjectMerge();
}

uint64_t sub_10003E0D4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10003E114(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10003E124(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

void sub_10003E138(void *a1, void (*a2)(id), void *a3, char a4, char *a5, char a6)
{
  v11 = a1;
  v12 = _sSo24ICCloudContextSyncReasona7reminddE03xpcc9InterfacecD0ABSgSo010REMXPCSyncgcD0a_tcfC_0(v11);
  if (!v12)
  {
    if (qword_100935B50 != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    sub_100006654(v30, qword_10093B458);
    v31 = v11;
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v61 = v35;
      *v34 = 136315138;
      v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v38 = sub_10000668C(v36, v37, &v61);

      *(v34 + 4) = v38;
      _os_log_impl(&_mh_execute_header, v32, v33, "XPCSyncInterface.SyncCloudKit: Unsupported sync reason - %s", v34, 0xCu);
      sub_10000607C(v35);
    }

    v39 = objc_opt_self();
    v61 = 0;
    v62 = 0xE000000000000000;
    _StringGuts.grow(_:)(28);

    v61 = 0xD00000000000001ALL;
    v62 = 0x80000001007EF8C0;
    v40._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
    String.append(_:)(v40);

    v41 = String._bridgeToObjectiveC()();

    v42 = [v39 internalErrorWithDebugDescription:v41];

    v60 = v42;
    a2(v42);
    goto LABEL_13;
  }

  v13 = v12;
  v14 = swift_allocObject();
  *(v14 + 16) = a4 & 1;
  *(v14 + 24) = v11;
  *(v14 + 32) = a5;
  *(v14 + 40) = a2;
  *(v14 + 48) = a3;
  *(v14 + 56) = v13;
  if (a6)
  {
    v15 = qword_100935B50;
    v16 = v11;
    v17 = a5;
    swift_retain_n();
    v18 = v13;
    v19 = v16;
    v20 = v17;
    v60 = v18;
    if (v15 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_100006654(v21, qword_10093B458);
    v22 = v19;
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v56 = a2;
      v25 = swift_slowAlloc();
      v58 = a3;
      v26 = swift_slowAlloc();
      v61 = v26;
      *v25 = 67109378;
      *(v25 + 4) = a4 & 1;
      *(v25 + 8) = 2082;
      v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v29 = sub_10000668C(v27, v28, &v61);

      *(v25 + 10) = v29;
      _os_log_impl(&_mh_execute_header, v23, v24, "XPCSyncInterface.SyncCloudKit: Bypassed throttler and run sync now {discretionary: %{BOOL}d, reason: %{public}s}", v25, 0x12u);
      sub_10000607C(v26);
      a3 = v58;

      a2 = v56;
    }

    sub_10003FA04(a4 & 1, v22, v20, a2, a3, v60);

    goto LABEL_13;
  }

  if ((a4 & 1) == 0)
  {
    v59 = *&a5[OBJC_IVAR____TtC7remindd27RDXPCSyncInterfacePerformer_cloudKitThrottler];
    v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v49 = v48;
    v50 = a2;
    v51 = v11;
    v52 = a5;
    swift_retain_n();
    v53 = v13;
    v54 = v51;
    v55 = v52;
    v60 = v53;

    sub_10003F0A0(v57, v49, v59, 0, v54, v55, v50, a3, v60);

LABEL_13:

    return;
  }

  v43 = *&a5[OBJC_IVAR____TtC7remindd27RDXPCSyncInterfacePerformer_discretionaryCloudKitThrottler];
  v44 = a5;
  v45 = v11;

  v46 = v44;
  v47 = v13;
  sub_1004C3438(0, 0, v43, v46, sub_1001C68A4, v14, v47);
}

uint64_t sub_10003E8A8()
{
  v1 = *(v0 + 48);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10003E8F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F5104(&unk_1009441F0, &qword_100795760);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

__CFString *_sSo24ICCloudContextSyncReasona7reminddE03xpcc9InterfacecD0ABSgSo010REMXPCSyncgcD0a_tcfC_0(void *a1)
{
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;
  if (v2 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v4 == v5)
  {
    v8 = &ICCloudContextSyncReasonSyncInterface_AppDelegate;
LABEL_8:

    goto LABEL_9;
  }

  v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v7)
  {
    v8 = &ICCloudContextSyncReasonSyncInterface_AppDelegate;
LABEL_9:
    v9 = *v8;

    return v9;
  }

  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;
  if (v11 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v13 == v14)
  {
    v8 = &ICCloudContextSyncReasonSyncInterface_DebugMenu;
    goto LABEL_8;
  }

  v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v16)
  {
    v8 = &ICCloudContextSyncReasonSyncInterface_DebugMenu;
    goto LABEL_9;
  }

  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;
  if (v17 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v19 == v20)
  {
    v8 = &ICCloudContextSyncReasonSyncInterface_RemindtoolCloudKitDeleteAll;
    goto LABEL_8;
  }

  v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v21)
  {
    v8 = &ICCloudContextSyncReasonSyncInterface_RemindtoolCloudKitDeleteAll;
    goto LABEL_9;
  }

  v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v24 = v23;
  if (v22 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v24 == v25)
  {
    v8 = &ICCloudContextSyncReasonSyncInterface_RemindtoolCloudKitRestart;
    goto LABEL_8;
  }

  v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v26)
  {
    v8 = &ICCloudContextSyncReasonSyncInterface_RemindtoolCloudKitRestart;
    goto LABEL_9;
  }

  v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v29 = v28;
  if (v27 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v29 == v30)
  {
    v8 = &ICCloudContextSyncReasonSyncInterface_RemindtoolCloudKitSync;
    goto LABEL_8;
  }

  v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v31)
  {
    v8 = &ICCloudContextSyncReasonSyncInterface_RemindtoolCloudKitSync;
    goto LABEL_9;
  }

  v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v34 = v33;
  if (v32 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v34 == v35)
  {
    v8 = &ICCloudContextSyncReasonSyncInterface_SignificantTimeChange;
    goto LABEL_8;
  }

  v36 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v36)
  {
    v8 = &ICCloudContextSyncReasonSyncInterface_SignificantTimeChange;
    goto LABEL_9;
  }

  v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v39 = v38;
  if (v37 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v39 == v40)
  {
    v8 = &ICCloudContextSyncReasonSyncInterface_UpdateAccounts;
    goto LABEL_8;
  }

  v41 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v41)
  {
    v8 = &ICCloudContextSyncReasonSyncInterface_UpdateAccounts;
    goto LABEL_9;
  }

  v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v44 = v43;
  if (v42 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v44 == v45)
  {
    v8 = &ICCloudContextSyncReasonSyncInterface_FamilyChecklistCloudKitSync;
    goto LABEL_8;
  }

  v46 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v46)
  {
    v8 = &ICCloudContextSyncReasonSyncInterface_FamilyChecklistCloudKitSync;
    goto LABEL_9;
  }

  if (qword_100936410 != -1)
  {
    swift_once();
  }

  v47 = type metadata accessor for Logger();
  sub_100006654(v47, qword_100974F78);
  v48 = a1;
  v49 = Logger.logObject.getter();
  v50 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v56 = v52;
    *v51 = 136315138;
    v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v55 = sub_10000668C(v53, v54, &v56);

    *(v51 + 4) = v55;
    _os_log_impl(&_mh_execute_header, v49, v50, "Cannot convert to ICCloudContextSyncReason from unknown REMXPCSyncInterfaceSyncReason: %s", v51, 0xCu);
    sub_10000607C(v52);
  }

  else
  {
  }

  return 0;
}

uint64_t sub_10003EF00(uint64_t result, uint64_t a2, unint64_t a3)
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
          sub_100011110(&unk_10093F6E0, &qword_100939668, &qword_100795F18);
          for (i = 0; i != v6; ++i)
          {
            sub_1000F5104(&qword_100939668, &qword_100795F18);
            v9 = sub_100011090(v13, i, a3);
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
        sub_1000060C8(0, &unk_10093F6D0, NSPersistentHistoryTransaction_ptr);
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

void sub_10003F0A0(uint64_t a1, void *a2, char *a3, int a4, void *a5, void *a6, void (*a7)(id), void *a8, void *a9)
{
  v69 = a7;
  v73 = a5;
  v74 = a6;
  LODWORD(v68) = a4;
  v72 = a2;
  v67 = a1;
  v75 = a9;
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  v13 = v12[8];
  __chkstk_darwin(v11);
  v15 = (&v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = type metadata accessor for DispatchPredicate();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = (&v64 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = *(a3 + 6);
  *v20 = v21;
  (*(v17 + 104))(v20, enum case for DispatchPredicate.onQueue(_:), v16);
  v71 = v73;
  v73 = v74;
  v74 = a8;

  v75 = v75;
  v22 = v21;
  LOBYTE(a8) = _dispatchPreconditionTest(_:)();
  (*(v17 + 8))(v20, v16);
  if ((a8 & 1) == 0)
  {
    __break(1u);
    goto LABEL_31;
  }

  v23 = OBJC_IVAR____TtC7remindd11RDThrottler_throttleResetDate;
  swift_beginAccess();
  v21 = v12 + 2;
  v24 = v12[2];
  v24(v15, &a3[v23], v11);
  v25 = Date.isInThePast.getter();
  v28 = v12[1];
  v26 = v12 + 1;
  v27 = v28;
  v28(v15, v11);
  if (v25)
  {
    sub_10003F81C();
    v29 = OBJC_IVAR____TtC7remindd11RDThrottler_currentIntervalAllowedOperationsCount;
    v30 = *&a3[OBJC_IVAR____TtC7remindd11RDThrottler_currentIntervalAllowedOperationsCount];
    goto LABEL_5;
  }

  v29 = OBJC_IVAR____TtC7remindd11RDThrottler_currentIntervalAllowedOperationsCount;
  v30 = *&a3[OBJC_IVAR____TtC7remindd11RDThrottler_currentIntervalAllowedOperationsCount];
  if (v30)
  {
LABEL_5:
    v31 = v30 != 0;
    v32 = v30 - 1;
    v20 = v72;
    if (v31)
    {
      v21 = v75;
      *&a3[v29] = v32;
      if (qword_1009362E0 == -1)
      {
LABEL_8:
        v33 = type metadata accessor for Logger();
        sub_100006654(v33, qword_10094A058);

        v34 = Logger.logObject.getter();
        v35 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v34, v35))
        {
          v36 = swift_slowAlloc();
          v76 = swift_slowAlloc();
          *v36 = 136446466;
          *(v36 + 4) = sub_10000668C(*(a3 + 4), *(a3 + 5), &v76);
          *(v36 + 12) = 2082;
          if (v20)
          {
            v37 = v67;
          }

          else
          {
            v37 = 7104878;
          }

          if (v20)
          {
            v38 = v20;
          }

          else
          {
            v38 = 0xE300000000000000;
          }

          v39 = sub_10000668C(v37, v38, &v76);

          *(v36 + 14) = v39;
          _os_log_impl(&_mh_execute_header, v34, v35, "Throttler allows and is going to run operation {identifier: %{public}s, op: %{public}s}", v36, 0x16u);
          swift_arrayDestroy();
          v40 = v71;
        }

        else
        {

          v40 = v71;
        }

        v41 = v73;
        sub_10003FA04(v68 & 1, v40, v73, v69, v74, v21);

        return;
      }

LABEL_32:
      swift_once();
      goto LABEL_8;
    }

LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v66 = v24;
  v69 = v15;
  v70 = v26;
  if (qword_1009362E0 != -1)
  {
    swift_once();
  }

  v42 = type metadata accessor for Logger();
  sub_100006654(v42, qword_10094A058);
  v43 = v72;

  v44 = a3;
  swift_retain_n();
  static REMCDRecurrenceRule.shouldAttemptLocalObjectMerge()();
  static REMCDRecurrenceRule.shouldAttemptLocalObjectMerge()();

  v45 = Logger.logObject.getter();
  v46 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    v76 = v68;
    *v47 = 136447234;
    *(v47 + 4) = sub_10000668C(*(v44 + 4), *(v44 + 5), &v76);
    v65 = v45;
    *(v47 + 12) = 2082;
    if (v43)
    {
      v48 = v67;
    }

    else
    {
      v48 = 7104878;
    }

    LODWORD(v67) = v46;
    if (v43)
    {
      v49 = v43;
    }

    else
    {
      v49 = 0xE300000000000000;
    }

    v50 = sub_10000668C(v48, v49, &v76);

    *(v47 + 14) = v50;
    *(v47 + 22) = 1040;
    *(v47 + 24) = 4;
    *(v47 + 28) = 2048;
    v51 = v69;
    v52 = v66;
    v66(v69, &v44[v23], v11);
    Date.timeIntervalSinceNow.getter();
    v54 = v53;
    v27(v51, v11);
    v64 = v44;
    *(v47 + 30) = v54;
    *(v47 + 38) = 2082;
    v52(v51, &v44[v23], v11);
    v55 = Date.description.getter();
    v57 = v56;
    v27(v51, v11);
    v58 = sub_10000668C(v55, v57, &v76);

    *(v47 + 40) = v58;
    v59 = v65;
    _os_log_impl(&_mh_execute_header, v65, v67, "Throttler denied operation {identifier: %{public}s, op: %{public}s, remainingTimeInterval: %.*f, throttleResetDate: %{public}s}", v47, 0x30u);
    swift_arrayDestroy();

    v60 = v66;
    v44 = v64;
  }

  else
  {

    v51 = v69;
    v60 = v66;
  }

  v61 = objc_opt_self();
  v60(v51, &v44[v23], v11);
  Date.timeIntervalSinceNow.getter();
  v63 = v62;
  v27(v51, v11);
  [v61 throttledErrorWithRemainingTimeInterval:v63];
  swift_willThrow();
}

uint64_t sub_10003F81C()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = (&v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(v0 + 48);
  *v10 = v11;
  (*(v7 + 104))(v10, enum case for DispatchPredicate.onQueue(_:), v6);
  v12 = v11;
  LOBYTE(v11) = _dispatchPreconditionTest(_:)();
  result = (*(v7 + 8))(v10, v6);
  if (v11)
  {
    *(v0 + OBJC_IVAR____TtC7remindd11RDThrottler_currentIntervalAllowedOperationsCount) = 1;
    Date.init(timeIntervalSinceNow:)();
    v14 = OBJC_IVAR____TtC7remindd11RDThrottler_throttleResetDate;
    swift_beginAccess();
    (*(v2 + 40))(v0 + v14, v5, v1);
    return swift_endAccess();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10003FA04(char a1, void *a2, uint64_t a3, void (*a4)(id), uint64_t a5, uint64_t a6)
{
  if (qword_100935B50 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_100006654(v12, qword_10093B458);
  v13 = a2;
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  v35 = a1;
  if (os_log_type_enabled(v14, v15))
  {
    v34 = a5;
    v16 = swift_slowAlloc();
    v33 = a6;
    v17 = swift_slowAlloc();
    aBlock[0] = v17;
    *v16 = 67109378;
    *(v16 + 4) = a1 & 1;
    *(v16 + 8) = 2082;
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = sub_10000668C(v18, v19, aBlock);

    *(v16 + 10) = v20;
    _os_log_impl(&_mh_execute_header, v14, v15, "XPCSyncInterface.SyncCloudKit: Trigger CloudKit sync {discretionary: %{BOOL}d, reason: %{public}s}", v16, 0x12u);
    sub_10000607C(v17);
    a6 = v33;

    a5 = v34;
  }

  v21 = [*(a3 + OBJC_IVAR____TtC7remindd27RDXPCSyncInterfacePerformer_storeController) cloudContext];
  if (v21)
  {
    v22 = v21;
    v23 = swift_allocObject();
    v24 = v35 & 1;
    *(v23 + 16) = v24;
    *(v23 + 24) = v13;
    *(v23 + 32) = a4;
    *(v23 + 40) = a5;
    aBlock[4] = sub_1000429D4;
    aBlock[5] = v23;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100042968;
    aBlock[3] = &unk_1008E91A8;
    v25 = _Block_copy(aBlock);
    v26 = v13;

    [v22 syncWithReason:a6 discretionary:v24 completionHandler:v25];
    _Block_release(v25);
  }

  else
  {
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v27, v28, "XPCSyncInterface.SyncCloudKit: CloudContext is nil -- can't sync to cloudKit", v29, 2u);
    }

    v30 = objc_opt_self();
    v31 = String._bridgeToObjectiveC()();
    v32 = [v30 internalErrorWithDebugDescription:v31];

    v36 = v32;
    a4(v32);
  }
}

uint64_t sub_10003FDAC()
{
  v1 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

void sub_10003FDF4(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = _convertErrorToNSError(_:)();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

uint64_t sub_10003FE74(char a1, uint64_t a2, char *a3, void (*a4)(void), uint64_t a5)
{
  if (a1)
  {
    if (qword_100935B50 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_100006654(v9, qword_10093B458);

    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v21 = v13;
      *v12 = 136315138;
      v14 = Array.description.getter();
      v16 = sub_10000668C(v14, v15, &v21);

      *(v12 + 4) = v16;
      _os_log_impl(&_mh_execute_header, v10, v11, "(daemon) Trigger DataAccess sync {accountIDs: %s}", v12, 0xCu);
      sub_10000607C(v13);
    }

    v21 = a2;
    v22 = 0u;
    memset(v23, 0, sizeof(v23));
    v17 = *&a3[OBJC_IVAR____TtC7remindd27RDXPCSyncInterfacePerformer_dataAccessRequestsWriter];

    sub_10004F728(&v21);
    a4(0);
  }

  else
  {
    v19 = *&a3[OBJC_IVAR____TtC7remindd27RDXPCSyncInterfacePerformer_dataAccessThrottler];

    v20 = a3;

    sub_10004011C(0, 0, v19, a2, v20, a4, a5);
  }
}

uint64_t sub_10004011C(uint64_t a1, unint64_t a2, char *a3, uint64_t a4, NSObject *a5, void (*a6)(void), uint64_t a7)
{
  v66 = a7;
  v64 = a5;
  v65 = a6;
  v68 = a4;
  v63 = a1;
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  v11 = v10[8];
  __chkstk_darwin(v9);
  v13 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchPredicate();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = (&v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = *(a3 + 6);
  *v18 = v19;
  (*(v15 + 104))(v18, enum case for DispatchPredicate.onQueue(_:), v14);
  v20 = v19;
  LOBYTE(v19) = _dispatchPreconditionTest(_:)();
  (*(v15 + 8))(v18, v14);
  if ((v19 & 1) == 0)
  {
    __break(1u);
    goto LABEL_31;
  }

  v21 = OBJC_IVAR____TtC7remindd11RDThrottler_throttleResetDate;
  swift_beginAccess();
  v62 = v10[2];
  v62(v13, &a3[v21], v9);
  v22 = Date.isInThePast.getter();
  v23 = v10[1];
  v23(v13, v9);
  if (v22)
  {
    sub_10003F81C();
    v24 = OBJC_IVAR____TtC7remindd11RDThrottler_currentIntervalAllowedOperationsCount;
    v25 = *&a3[OBJC_IVAR____TtC7remindd11RDThrottler_currentIntervalAllowedOperationsCount];
    goto LABEL_5;
  }

  v24 = OBJC_IVAR____TtC7remindd11RDThrottler_currentIntervalAllowedOperationsCount;
  v25 = *&a3[OBJC_IVAR____TtC7remindd11RDThrottler_currentIntervalAllowedOperationsCount];
  if (v25)
  {
LABEL_5:
    v26 = v25 != 0;
    v27 = v25 - 1;
    if (v26)
    {
      *&a3[v24] = v27;
      if (qword_1009362E0 == -1)
      {
LABEL_8:
        v28 = type metadata accessor for Logger();
        sub_100006654(v28, qword_10094A058);

        v29 = Logger.logObject.getter();
        v30 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v29, v30))
        {
          v31 = swift_slowAlloc();
          v69 = swift_slowAlloc();
          *v31 = 136446466;
          *(v31 + 4) = sub_10000668C(*(a3 + 4), *(a3 + 5), &v69);
          *(v31 + 12) = 2082;
          if (a2)
          {
            v32 = v63;
          }

          else
          {
            v32 = 7104878;
          }

          if (a2)
          {
            v33 = a2;
          }

          else
          {
            v33 = 0xE300000000000000;
          }

          v34 = sub_10000668C(v32, v33, &v69);

          *(v31 + 14) = v34;
          _os_log_impl(&_mh_execute_header, v29, v30, "Throttler allows and is going to run operation {identifier: %{public}s, op: %{public}s}", v31, 0x16u);
          swift_arrayDestroy();
        }

        sub_10004F55C(v68, v64, v65);
      }

LABEL_32:
      swift_once();
      goto LABEL_8;
    }

LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v61 = v23;
  if (qword_1009362E0 != -1)
  {
    swift_once();
  }

  v36 = type metadata accessor for Logger();
  sub_100006654(v36, qword_10094A058);

  swift_retain_n();
  static REMCDRecurrenceRule.shouldAttemptLocalObjectMerge()();
  static REMCDRecurrenceRule.shouldAttemptLocalObjectMerge()();

  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.error.getter();

  LODWORD(v67) = v38;
  v39 = v38;
  v40 = v37;
  if (os_log_type_enabled(v37, v39))
  {
    v41 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    v69 = v65;
    *v41 = 136447234;
    *(v41 + 4) = sub_10000668C(*(a3 + 4), *(a3 + 5), &v69);
    *(v41 + 12) = 2082;
    if (a2)
    {
      v42 = v63;
    }

    else
    {
      v42 = 7104878;
    }

    v64 = v40;
    if (a2)
    {
      v43 = a2;
    }

    else
    {
      v43 = 0xE300000000000000;
    }

    v44 = sub_10000668C(v42, v43, &v69);

    v66 = v41;
    *(v41 + 14) = v44;
    *(v41 + 22) = 1040;
    *(v41 + 24) = 4;
    *(v41 + 28) = 2048;
    v45 = v62;
    v62(v13, &a3[v21], v9);
    Date.timeIntervalSinceNow.getter();
    v47 = v46;
    v48 = v61;
    v61(v13, v9);
    v49 = v66;
    *(v66 + 30) = v47;
    *(v49 + 38) = 2082;
    v45(v13, &a3[v21], v9);
    v50 = Date.description.getter();
    v52 = v51;
    v48(v13, v9);
    v53 = sub_10000668C(v50, v52, &v69);

    v54 = v66;
    *(v66 + 40) = v53;
    v55 = v64;
    _os_log_impl(&_mh_execute_header, v64, v67, "Throttler denied operation {identifier: %{public}s, op: %{public}s, remainingTimeInterval: %.*f, throttleResetDate: %{public}s}", v54, 0x30u);
    swift_arrayDestroy();
    v56 = v62;

    v57 = v61;
  }

  else
  {

    v57 = v61;
    v56 = v62;
  }

  v58 = objc_opt_self();
  v56(v13, &a3[v21], v9);
  Date.timeIntervalSinceNow.getter();
  v60 = v59;
  v57(v13, v9);
  [v58 throttledErrorWithRemainingTimeInterval:v60];
  swift_willThrow();
}

uint64_t sub_10004080C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100040854()
{
  v1 = *(sub_1000F5104(&unk_10093F420, &unk_100797AE0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 104) & ~v2;
  v4 = *(v1 + 64);
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(v0 + 16);

  v10 = *(v0 + 56);

  v11 = *(v0 + 80);

  v12 = *(v0 + 96);

  v13 = type metadata accessor for Locale();
  v14 = *(v13 - 8);
  if (!(*(v14 + 48))(v0 + v3, 1, v13))
  {
    (*(v14 + 8))(v0 + v3, v13);
  }

  v15 = v2 | v7;
  v16 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = (v16 + 15) & 0xFFFFFFFFFFFFFFF8;
  v18 = (v17 + 15) & 0xFFFFFFFFFFFFFFF8;
  v19 = (v18 + 15) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v7 + v19 + 8) & ~v7;
  v21 = *(v0 + v16);

  v22 = *(v0 + v17);

  v23 = *(v0 + v18);

  v24 = *(v0 + v19);

  (*(v6 + 8))(v0 + v20, v5);

  return _swift_deallocObject(v0, v20 + v8, v15 | 7);
}

uint64_t sub_100040A74(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
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

uint64_t sub_100040B40(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

uint64_t sub_100040C04(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

NSObject *sub_100040E24(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v98 = a6;
  v92 = a3;
  v93 = a2;
  v94 = a1;
  v81 = type metadata accessor for REMRemindersInCalendarDataView.RemindersInCalendarResult.RemindersResult.IncrementalResult();
  v80 = *(v81 - 8);
  v9 = *(v80 + 64);
  __chkstk_darwin(v81);
  v11 = &v80 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = _s10PredicatesOMa(0);
  v12 = *(*(v82 - 8) + 64);
  __chkstk_darwin(v82);
  v83 = &v80 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = type metadata accessor for REMRemindersInCalendarDataView.RemindersInCalendarResult.RemindersResult();
  v86 = *(v87 - 8);
  v14 = *(v86 + 64);
  v15 = __chkstk_darwin(v87);
  v84 = &v80 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v85 = (&v80 - v17);
  v18 = type metadata accessor for REMRemindersInCalendarDataView.Invocation.Result();
  v88 = *(v18 - 8);
  v19 = *(v88 + 64);
  __chkstk_darwin(v18);
  v21 = &v80 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = type metadata accessor for REMRemindersInCalendarDataView.Invocation.Parameters();
  v95 = *(v101 - 8);
  v22 = *(v95 + 64);
  v23 = __chkstk_darwin(v101);
  v25 = &v80 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v96 = &v80 - v26;
  v27 = type metadata accessor for CodingUserInfoKey();
  v28 = *(*(v27 - 8) + 64);
  __chkstk_darwin(v27 - 8);
  v30 = &v80 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for PropertyListDecoder();
  v32 = *(v31 + 48);
  v33 = *(v31 + 52);
  swift_allocObject();
  v102 = PropertyListDecoder.init()();
  v89 = v18;
  v90 = v21;
  v91 = v11;
  if (!a7)
  {
    sub_10003B2E4(_swiftEmptyArrayStorage);
  }

  v34 = type metadata accessor for REMStoreObjectsContainer();
  v35 = *(v34 + 48);
  v36 = *(v34 + 52);
  swift_allocObject();

  v37 = a4;
  v38 = REMStoreObjectsContainer.init(store:storages:)();
  static CodingUserInfoKey.remStoragesContainer.getter();
  v106 = v34;
  v105 = v38;
  v100 = v38;

  v39 = dispatch thunk of PropertyListDecoder.userInfo.modify();
  sub_10000E350(&v105, v30);
  v39(&ObjectType, 0);
  sub_10000F85C(&qword_100950968, &type metadata accessor for REMRemindersInCalendarDataView.Invocation.Parameters);
  v40 = v101;
  v41 = v99;
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  if (v41)
  {
    if (qword_100936760 != -1)
    {
      swift_once();
    }

    v42 = type metadata accessor for Logger();
    sub_100006654(v42, qword_100950598);
    swift_errorRetain();
    v43 = v97;
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v105 = swift_slowAlloc();
      *v46 = 136315394;
      swift_getErrorValue();
      v47 = Error.rem_errorDescription.getter();
      v49 = sub_10000668C(v47, v48, &v105);

      *(v46 + 4) = v49;
      *(v46 + 12) = 2080;
      ObjectType = swift_getObjectType();
      sub_1000F5104(&qword_100950970, &qword_1007B6880);
      v50 = String.init<A>(describing:)();
      v52 = sub_10000668C(v50, v51, &v105);

      *(v46 + 14) = v52;
      _os_log_impl(&_mh_execute_header, v44, v45, "Failed to decode the parameters of RDSwiftInvocable {error: %s, invocation: %s}", v46, 0x16u);
      swift_arrayDestroy();
    }

    swift_willThrow();
  }

  else
  {
    (*(v95 + 32))(v96, v25, v40);
    type metadata accessor for RDXPCStorePerformer();
    throwingCast<A>(_:as:failureMessage:)();
    v54 = v93;
    v55 = sub_100041B1C(v93, v92);
    v57 = v55;
    if (v55)
    {
      v58 = v91;
      v59 = v54;
      v60 = v56;
      sub_100041EBC(v59, v57, v91);
      v99 = v60;
      v62 = v85;
      (*(v80 + 32))(v85, v58, v81);
      v63 = &enum case for REMRemindersInCalendarDataView.RemindersInCalendarResult.RemindersResult.incremental(_:);
    }

    else
    {
      v99 = v56;
      v61 = v83;
      swift_storeEnumTagMultiPayload();
      v64 = sub_1000437C4(v54);
      sub_100715370(v61, _s10PredicatesOMa);
      v65 = v85;
      *v85 = v64;
      v62 = v65;
      v63 = &enum case for REMRemindersInCalendarDataView.RemindersInCalendarResult.RemindersResult.reload(_:);
    }

    v66 = v86;
    v67 = v62;
    v68 = v62;
    v69 = v87;
    (*(v86 + 104))(v67, *v63, v87);
    (*(v66 + 16))(v84, v68, v69);
    v70 = v90;
    REMRemindersInCalendarDataView.Invocation.Result.init(remindersResult:predicateVersion:)();
    sub_100051FA4(v57, v99);
    (*(v66 + 8))(v68, v69);
    v71 = type metadata accessor for PropertyListEncoder();
    v72 = *(v71 + 48);
    v73 = *(v71 + 52);
    swift_allocObject();
    PropertyListEncoder.init()();
    sub_10003B2E4(_swiftEmptyArrayStorage);
    v74 = *(v34 + 48);
    v75 = *(v34 + 52);
    swift_allocObject();
    v76 = v37;
    v77 = REMStoreObjectsContainer.init(store:storages:)();
    static CodingUserInfoKey.remStoragesContainer.getter();
    v106 = v34;
    v105 = v77;

    v78 = dispatch thunk of PropertyListEncoder.userInfo.modify();
    sub_10000E350(&v105, v30);
    v78(&ObjectType, 0);
    sub_10000F85C(&qword_100950978, &type metadata accessor for REMRemindersInCalendarDataView.Invocation.Result);
    v79 = v89;
    v44 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    dispatch thunk of REMStoreObjectsContainer.storages.getter();

    (*(v88 + 8))(v70, v79);
    (*(v95 + 8))(v96, v101);
  }

  return v44;
}

void *sub_100041B1C(void *a1, void *a2)
{
  v5 = [v2 fetchResultTokenToDiffAgainst];
  if (!v5)
  {
    if (qword_100935FB8 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_100006654(v18, qword_100944F38);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "RemindersInCalendarInvocation: missing fetchResultTokenToDiffAgainst, will use reload mode", v21, 2u);
    }

    return 0;
  }

  v6 = v5;
  Predicate = REMRemindersInCalendarDataView.Invocation.Parameters.lastFetchPredicateVersion.getter();
  if (v8)
  {
    if (qword_100935FB8 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_100006654(v9, qword_100944F38);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v10, v11))
    {
      goto LABEL_21;
    }

    v12 = swift_slowAlloc();
    *v12 = 0;
    v13 = "RemindersInCalendarInvocation: missing lastFetchPredicateVersion, will use reload mode";
    goto LABEL_7;
  }

  if (Predicate != 2)
  {
    v23 = Predicate;
    if (qword_100935FB8 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_100006654(v24, qword_100944F38);
    v10 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v10, v25))
    {
      goto LABEL_21;
    }

    v26 = swift_slowAlloc();
    *v26 = 134349312;
    *(v26 + 4) = v23;
    *(v26 + 12) = 2050;
    *(v26 + 14) = 2;
    v13 = "RemindersInCalendarInvocation: lastFetchPredicateVersion(%{public}ld) does not equal currentPredicateVersion(%{public}ld), will use reload mode";
    v14 = v25;
    v15 = v10;
    v16 = v26;
    v17 = 22;
    goto LABEL_20;
  }

  if (![a1 canAccessAllPersistentStoresReferencedByFetchResultToken:v6])
  {
    if (qword_100935FB8 != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    sub_100006654(v28, qword_100944F38);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v10, v11))
    {
      goto LABEL_21;
    }

    v12 = swift_slowAlloc();
    *v12 = 0;
    v13 = "RemindersInCalendarInvocation: one or more persistent stores are no longer accessible since last fetch, will use reload mode";
LABEL_7:
    v14 = v11;
    v15 = v10;
    v16 = v12;
    v17 = 2;
LABEL_20:
    _os_log_impl(&_mh_execute_header, v15, v14, v13, v16, v17);

LABEL_21:

    return 0;
  }

  v22 = a2;
  return v6;
}

void sub_100041EBC(uint64_t a1@<X0>, void *a2@<X2>, uint64_t a3@<X8>)
{
  v51 = a3;
  v6 = _s10PredicatesOMa(0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10004232C(a2, v52);
  if (!v3)
  {
    v46 = v9;
    v49 = 0;
    if (qword_100935FB8 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_100006654(v10, qword_100944F38);
    v11 = v52[0];
    v12 = v52[2];
    v13 = v52[3];
    v14 = v52[4];

    v15 = v13;
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    v50 = v14;

    v45 = v17;
    v18 = os_log_type_enabled(v16, v17);
    v47 = v15;
    v48 = v12;
    if (v18)
    {
      v19 = swift_slowAlloc();
      v43 = v6;
      v20 = v19;
      v21 = swift_slowAlloc();
      v44 = a1;
      v42 = v21;
      v53 = v21;
      *v20 = 136315138;

      v22 = sub_100042F60();
      v41 = v16;
      v24 = v23;

      v25 = sub_10000668C(v22, v24, &v53);

      *(v20 + 4) = v25;
      v26 = v41;
      _os_log_impl(&_mh_execute_header, v41, v45, "RemindersInCalendarInvocation: fetched diff for incremental mode {diff: %s}", v20, 0xCu);
      sub_10000607C(v42);
      a1 = v44;
    }

    else
    {
    }

    sub_1000434E8(v27, v11);
    v29 = v28;
    v30 = sub_1000436E4(v28);
    v31 = v30;
    v32 = v46;
    if ((v30 & 0x8000000000000000) != 0 || (v30 & 0x4000000000000000) != 0)
    {
      sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
      v33 = _bridgeCocoaArray<A>(_:)();
    }

    else
    {

      dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
      sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
      v33 = v31;
    }

    *v32 = v33;
    swift_storeEnumTagMultiPayload();
    v34 = v49;
    v35 = sub_1000437C4(a1);
    if (v34)
    {
      sub_1000513B4(v32);
    }

    else
    {
      v36 = sub_100051088(v35, v29);

      sub_1000434E8(v37, v36);
      v49 = v38;
      v39 = v47;

      sub_1000434E8(v40, v39);

      REMRemindersInCalendarDataView.RemindersInCalendarResult.RemindersResult.IncrementalResult.init(matchedReminderIDs:removedReminderIDs:updatedListIDs:)();
      sub_1000513B4(v32);
    }
  }
}

void sub_10004232C(void *a1@<X1>, void *a2@<X8>)
{
  sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
  v5 = [swift_getObjCClassFromMetadata() entity];
  sub_1000060C8(0, &unk_100938880, off_1008D41A8);
  v6 = [swift_getObjCClassFromMetadata() entity];
  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100796900;
  *(v7 + 32) = v5;
  *(v7 + 40) = v6;
  v8 = v5;
  v9 = v6;
  v10 = sub_10003B8F0(a1, v7);
  if (v2)
  {

    return;
  }

  v11 = v10;
  v37 = v8;

  sub_100042CBC(&v43);
  v12 = v43;
  v13 = v44;
  v14 = v45;
  v15 = v46;
  v16 = v47;
  v48 = v43;
  v41 = v45;
  v42 = v44;
  v39 = v47;
  v40 = v46;
  v33 = v11;
  if (v11 >> 62)
  {
    goto LABEL_48;
  }

  for (i = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v15 = 0;
    v14 = i;
    v13 = v33;
    v31 = a2;
    v36 = v9;
    while (1)
    {
      while (1)
      {
        if ((v33 & 0xC000000000000001) != 0)
        {
          v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v15 >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_47;
          }

          v17 = *(v33 + 32 + 8 * v15);
        }

        v16 = v17;
        if (__OFADD__(v15++, 1))
        {
          __break(1u);
          goto LABEL_46;
        }

        v19 = [v17 changes];
        if (v19)
        {
          break;
        }

        if (v15 == v14)
        {
          goto LABEL_44;
        }
      }

      v12 = v19;
      v34 = v16;
      v35 = v15;
      sub_1000060C8(0, &qword_10093F3C8, NSPersistentHistoryChange_ptr);
      v15 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (!(v15 >> 62))
      {
        v20 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v20)
        {
          break;
        }

        goto LABEL_42;
      }

      v20 = _CocoaArrayWrapper.endIndex.getter();
      if (v20)
      {
        break;
      }

LABEL_42:

LABEL_43:
      v15 = v35;
      if (v35 == v14)
      {
LABEL_44:

        v12 = v48;
        v14 = v41;
        v13 = v42;
        v16 = v39;
        v15 = v40;
        goto LABEL_50;
      }
    }

    v9 = &selRef_accountStatusWithCompletionHandler_;
    sub_1000060C8(0, &unk_100947240, NSEntityDescription_ptr);
    if (v20 >= 1)
    {
      v21 = 0;
      while (1)
      {
        if ((v15 & 0xC000000000000001) != 0)
        {
          v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v22 = *(v15 + 8 * v21 + 32);
        }

        v12 = v22;
        v23 = [v22 changedObjectID];
        v24 = [v23 entity];

        v16 = v24;
        LOBYTE(v23) = static NSObject.== infix(_:_:)();

        if (v23)
        {

          v25 = [v12 changeType];
          if (v25)
          {
            if (v25 == 2)
            {
              v26 = sub_1003C6CC4(v12);
              if (v26)
              {
                goto LABEL_39;
              }
            }

            else if (v25 == 1)
            {
              v26 = sub_1003C6A34(v12);
              if (v26)
              {
                goto LABEL_39;
              }
            }
          }

          else
          {
            v26 = sub_1003C6A34(v12);
            if (v26)
            {
              goto LABEL_39;
            }
          }
        }

        else
        {
          v27 = static NSObject.== infix(_:_:)();

          if (v27)
          {
            v28 = [v12 changeType];
            if (v28)
            {
              if (v28 == 2)
              {
                v26 = sub_1003C6CC4(v12);
                if (v26)
                {
                  goto LABEL_39;
                }
              }

              else if (v28 == 1)
              {
                v26 = sub_1003C6A34(v12);
                if (v26)
                {
LABEL_39:
                  v16 = v26;
                  v29 = REMObjectID.codable.getter();
                  sub_100379240(&v38, v29);
                  v30 = v38;

                  goto LABEL_18;
                }
              }
            }
          }
        }

LABEL_18:
        if (v20 == ++v21)
        {

          a2 = v31;
          v14 = i;
          v9 = v36;
          v13 = v33;
          goto LABEL_43;
        }
      }
    }

LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    ;
  }

LABEL_50:

  *a2 = v12;
  a2[1] = v13;
  a2[2] = v14;
  a2[3] = v15;
  a2[4] = v16;
}