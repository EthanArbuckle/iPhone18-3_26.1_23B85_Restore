uint64_t sub_1006A74BC(uint64_t a1, void (*a2)(void *__return_ptr, id *), uint64_t a3, char a4, uint64_t *a5)
{
  v44 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v38 = -1 << *(a1 + 32);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  while (v9)
  {
    v41 = a4;
    v14 = v11;
LABEL_14:
    v16 = (v14 << 9) | (8 * __clz(__rbit64(v9)));
    v17 = *(*(a1 + 56) + v16);
    v43[0] = *(*(a1 + 48) + v16);
    v43[1] = v17;
    v18 = v43[0];
    v19 = v17;
    a2(v42, v43);

    v21 = v42[0];
    v20 = v42[1];
    v22 = *v44;
    v24 = sub_100393C74(v42[0]);
    v25 = *(v22 + 16);
    v26 = (v23 & 1) == 0;
    v27 = v25 + v26;
    if (__OFADD__(v25, v26))
    {
      goto LABEL_25;
    }

    v28 = v23;
    if (*(v22 + 24) >= v27)
    {
      if ((v41 & 1) == 0)
      {
        sub_1003781B8();
      }
    }

    else
    {
      v29 = v44;
      sub_100372C2C(v27, v41 & 1);
      v30 = *v29;
      v31 = sub_100393C74(v21);
      if ((v28 & 1) != (v32 & 1))
      {
        goto LABEL_27;
      }

      v24 = v31;
    }

    v9 &= v9 - 1;
    v33 = *v44;
    if (v28)
    {

      v12 = v33[7];
      v13 = *(v12 + 8 * v24);
      *(v12 + 8 * v24) = v20;
    }

    else
    {
      v33[(v24 >> 6) + 8] |= 1 << v24;
      *(v33[6] + 8 * v24) = v21;
      *(v33[7] + 8 * v24) = v20;
      v34 = v33[2];
      v35 = __OFADD__(v34, 1);
      v36 = v34 + 1;
      if (v35)
      {
        goto LABEL_26;
      }

      v33[2] = v36;
    }

    a4 = 1;
    v11 = v14;
  }

  v15 = v11;
  while (1)
  {
    v14 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v14 >= v10)
    {
      sub_10001B860();
    }

    v9 = *(v6 + 8 * v14);
    ++v15;
    if (v9)
    {
      v41 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  sub_1000F5104(&unk_10094F300, &unk_100797FD0);
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

unint64_t sub_1006A772C(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    return sub_10038F0E4(_swiftEmptyArrayStorage);
  }

  sub_1006732C8(a1, 0, 1, 0);
  if (!v2)
  {
    v5 = v3;
    if (v3 >> 62)
    {
      goto LABEL_32;
    }

    v6 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
LABEL_33:
      v1 = _swiftEmptyDictionarySingleton;
LABEL_34:

      return v1;
    }

LABEL_7:
    v7 = 0;
    v1 = _swiftEmptyDictionarySingleton;
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v11 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          goto LABEL_28;
        }
      }

      else
      {
        if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_29;
        }

        v10 = *(v5 + 8 * v7 + 32);
        v11 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
LABEL_30:
          __break(1u);
LABEL_31:
          __break(1u);
LABEL_32:
          v6 = _CocoaArrayWrapper.endIndex.getter();
          if (!v6)
          {
            goto LABEL_33;
          }

          goto LABEL_7;
        }
      }

      v30 = 0;
      v12 = v10;
      v13 = [v12 remObjectIDWithError:&v30];
      if (!v13)
      {
        v29 = v30;

        _convertNSErrorToError(_:)();
        swift_willThrow();

        return v1;
      }

      v14 = v13;
      v15 = v30;

      v16 = v12;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v30 = v1;
      v18 = sub_100393C74(v14);
      v20 = v1[2];
      v21 = (v19 & 1) == 0;
      v22 = __OFADD__(v20, v21);
      v23 = v20 + v21;
      if (v22)
      {
        goto LABEL_30;
      }

      v24 = v19;
      if (v1[3] < v23)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_19;
      }

      v28 = v18;
      sub_1003747A4();
      v18 = v28;
      v1 = v30;
      if (v24)
      {
LABEL_8:
        v8 = v1[7];
        v9 = *(v8 + 8 * v18);
        *(v8 + 8 * v18) = v16;

        goto LABEL_9;
      }

LABEL_20:
      v1[(v18 >> 6) + 8] |= 1 << v18;
      *(v1[6] + 8 * v18) = v14;
      *(v1[7] + 8 * v18) = v16;

      v26 = v1[2];
      v22 = __OFADD__(v26, 1);
      v27 = v26 + 1;
      if (v22)
      {
        goto LABEL_31;
      }

      v1[2] = v27;
LABEL_9:
      ++v7;
      if (v11 == v6)
      {
        goto LABEL_34;
      }
    }

    sub_10036CAD0(v23, isUniquelyReferenced_nonNull_native);
    v18 = sub_100393C74(v14);
    if ((v24 & 1) != (v25 & 1))
    {
      sub_1000F5104(&qword_10093A920, &unk_100797F40);
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }

LABEL_19:
    v1 = v30;
    if (v24)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

  return v1;
}

uint64_t sub_1006A7A4C(uint64_t a1, void (*a2)(void *__return_ptr, id *), uint64_t a3, char a4, uint64_t *a5)
{
  v44 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v38 = -1 << *(a1 + 32);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  while (v9)
  {
    v41 = a4;
    v14 = v11;
LABEL_14:
    v16 = (v14 << 9) | (8 * __clz(__rbit64(v9)));
    v17 = *(*(a1 + 56) + v16);
    v43[0] = *(*(a1 + 48) + v16);
    v43[1] = v17;
    v18 = v43[0];
    v19 = v17;
    a2(v42, v43);

    v21 = v42[0];
    v20 = v42[1];
    v22 = *v44;
    v24 = sub_100393C74(v42[0]);
    v25 = *(v22 + 16);
    v26 = (v23 & 1) == 0;
    v27 = v25 + v26;
    if (__OFADD__(v25, v26))
    {
      goto LABEL_25;
    }

    v28 = v23;
    if (*(v22 + 24) >= v27)
    {
      if ((v41 & 1) == 0)
      {
        sub_1003747A4();
      }
    }

    else
    {
      v29 = v44;
      sub_10036CAD0(v27, v41 & 1);
      v30 = *v29;
      v31 = sub_100393C74(v21);
      if ((v28 & 1) != (v32 & 1))
      {
        goto LABEL_27;
      }

      v24 = v31;
    }

    v9 &= v9 - 1;
    v33 = *v44;
    if (v28)
    {

      v12 = v33[7];
      v13 = *(v12 + 8 * v24);
      *(v12 + 8 * v24) = v20;
    }

    else
    {
      v33[(v24 >> 6) + 8] |= 1 << v24;
      *(v33[6] + 8 * v24) = v21;
      *(v33[7] + 8 * v24) = v20;
      v34 = v33[2];
      v35 = __OFADD__(v34, 1);
      v36 = v34 + 1;
      if (v35)
      {
        goto LABEL_26;
      }

      v33[2] = v36;
    }

    a4 = 1;
    v11 = v14;
  }

  v15 = v11;
  while (1)
  {
    v14 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v14 >= v10)
    {
      sub_10001B860();
    }

    v9 = *(v6 + 8 * v14);
    ++v15;
    if (v9)
    {
      v41 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  sub_1000F5104(&qword_10093A920, &unk_100797F40);
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void *sub_1006A7CBC(void *a1, unsigned __int8 a2)
{
  if (a2 <= 2u)
  {
    if (!a2)
    {
      sub_1000F5104(&unk_100939D60, &unk_1007959E0);
      v6 = swift_allocObject();
      *(v6 + 1) = xmmword_1007953F0;
      v6[4] = [a1 accountID];
      return v6;
    }

    if (a2 == 1)
    {
      v4 = [a1 childListIDsToUndelete];
    }

    else
    {
      v4 = [a1 childSmartListIDsToUndelete];
    }

LABEL_19:
    v8 = v4;
    sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
    sub_10000CE28(&qword_1009391F0, &qword_1009391E0, REMObjectID_ptr);
    v9 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v6 = sub_100277EBC(v9);

    return v6;
  }

  if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v4 = [a1 reminderIDsToUndelete];
    }

    else
    {
      v4 = [a1 sectionIDsToUndelete];
    }

    goto LABEL_19;
  }

  if (a2 == 3)
  {
    v2 = &v12;
    v3 = [a1 parentAccountID];
    v13 = v3;
  }

  else
  {
    v2 = &v15;
    v3 = [a1 parentListID];
    v16 = v3;
  }

  v6 = _swiftEmptyArrayStorage;
  v14 = _swiftEmptyArrayStorage;
  if (v3)
  {
    v7 = v3;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v11 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v6 = v14;
  }

  sub_1000050A4((v2 + 32), &unk_10093AF40, &unk_100795790);
  return v6;
}

void sub_1006A7EF0(id a1, void *a2, unsigned __int8 a3, uint64_t a4)
{
  v6 = v5;
  v8 = *v4;
  if (a3 <= 2u)
  {
    if (a3)
    {
      if (a3 == 1)
      {
        j = v5;
        v22 = [a1 childListIDsToUndelete];
        sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
        sub_10000CE28(&qword_1009391F0, &qword_1009391E0, REMObjectID_ptr);
        v23 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

        if ((v23 & 0xC000000000000001) != 0)
        {
          __CocoaSet.makeIterator()();
          Set.Iterator.init(_cocoa:)();
          v23 = v247;
          v24 = v248;
          v25 = v249;
          v26 = v250;
          v27 = v251;
        }

        else
        {
          v26 = 0;
          v83 = -1 << *(v23 + 32);
          v24 = v23 + 56;
          v25 = ~v83;
          v84 = -v83;
          if (v84 < 64)
          {
            v85 = ~(-1 << v84);
          }

          else
          {
            v85 = -1;
          }

          v27 = v85 & *(v23 + 56);
        }

        v86 = (v25 + 64) >> 6;
        v87 = v5;
        v223 = v23;
        v227 = v24;
        while (1)
        {
          if (v23 < 0)
          {
            if (!__CocoaSet.Iterator.next()())
            {
              goto LABEL_161;
            }

            swift_dynamicCast();
            j = v267;
            i = v26;
            v91 = v27;
            if (!v267)
            {
              goto LABEL_161;
            }
          }

          else
          {
            v89 = v26;
            v90 = v27;
            for (i = v26; !v90; ++v89)
            {
              i = v89 + 1;
              if (__OFADD__(v89, 1))
              {
                __break(1u);
                goto LABEL_198;
              }

              if (i >= v86)
              {
                goto LABEL_161;
              }

              v90 = *(v24 + 8 * i);
            }

            v91 = (v90 - 1) & v90;
            j = *(*(v23 + 48) + ((i << 9) | (8 * __clz(__rbit64(v90)))));
            if (!j)
            {
LABEL_161:
              sub_10001B860();
              return;
            }
          }

          sub_100689A98(1u, j, a4, off_1008D41A8, &unk_100938880);
          if (v87)
          {
            sub_10001B860();

            return;
          }

          v233 = v91;
          v93 = v92;
          [v93 setParentList:a2];
          v94 = [v93 createResolutionTokenMapIfNecessary];
          if (qword_1009366C8 != -1)
          {
            swift_once();
          }

          v95 = qword_1009752A0;
          if (*(qword_1009752A0 + 16) && (v96 = sub_100005F4C(0x694C746E65726170, 0xEC00000044497473), (v97 & 1) != 0))
          {
            v98 = (*(v95 + 56) + 16 * v96);
            v100 = *v98;
            v99 = v98[1];
          }

          else
          {
            if (qword_100936128 != -1)
            {
              swift_once();
            }

            v101 = type metadata accessor for Logger();
            sub_100006654(v101, qword_100946C50);
            v102 = Logger.logObject.getter();
            v103 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v102, v103))
            {
              v104 = swift_slowAlloc();
              v105 = swift_slowAlloc();
              v267 = v105;
              *v104 = 136315138;
              *(v104 + 4) = sub_10000668C(0x694C746E65726170, 0xEC00000044497473, &v267);
              _os_log_impl(&_mh_execute_header, v102, v103, "Unknown ingestable key {key: %s}", v104, 0xCu);
              sub_10000607C(v105);
            }

            v87 = 0;
          }

          v88 = String._bridgeToObjectiveC()();

          [v94 updateForKey:v88];

          v26 = i;
          v24 = v227;
          v27 = v233;
          v23 = v223;
        }
      }

      v36 = v5;
      v37 = [a1 childSmartListIDsToUndelete];
      v38 = sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
      sub_10000CE28(&qword_1009391F0, &qword_1009391E0, REMObjectID_ptr);
      v220 = v38;
      v39 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

      if ((v39 & 0xC000000000000001) != 0)
      {
        v40 = __CocoaSet.count.getter();
      }

      else
      {
        v40 = *(v39 + 16);
      }

      if (!v40)
      {
        return;
      }

      v106 = [a1 childSmartListIDsToUndelete];
      v79 = v220;
      i = static Set._unconditionallyBridgeFromObjectiveC(_:)();

      if ((i & 0xC000000000000001) != 0)
      {
        __CocoaSet.makeIterator()();
        v82 = Set.Iterator.init(_cocoa:)();
        i = v252;
        v107 = v253;
        v108 = v254;
        v109 = v255;
        v110 = v256;
      }

      else
      {
        v109 = 0;
        v160 = -1 << *(i + 32);
        v107 = i + 56;
        v108 = ~v160;
        v161 = -v160;
        if (v161 < 64)
        {
          v162 = ~(-1 << v161);
        }

        else
        {
          v162 = -1;
        }

        v110 = v162 & *(i + 56);
      }

      v163 = (v108 + 64) >> 6;
      v164 = v5;
      v226 = i;
      v230 = v107;
      while (1)
      {
        if (i < 0)
        {
          if (!__CocoaSet.Iterator.next()())
          {
            goto LABEL_161;
          }

          swift_dynamicCast();
          v170 = v267;
          v168 = v109;
          v169 = v110;
          if (!v267)
          {
            goto LABEL_161;
          }
        }

        else
        {
          v166 = v109;
          v167 = v110;
          v168 = v109;
          if (!v110)
          {
            while (1)
            {
              v168 = v166 + 1;
              if (__OFADD__(v166, 1))
              {
                break;
              }

              if (v168 >= v163)
              {
                goto LABEL_161;
              }

              v167 = *(v107 + 8 * v168);
              ++v166;
              if (v167)
              {
                goto LABEL_147;
              }
            }

            __break(1u);
LABEL_202:
            v218 = v82;

            swift_bridgeObjectRelease_n();
            return;
          }

LABEL_147:
          v169 = (v167 - 1) & v167;
          v170 = *(*(i + 48) + ((v168 << 9) | (8 * __clz(__rbit64(v167)))));
          if (!v170)
          {
            goto LABEL_161;
          }
        }

        sub_100689A98(2u, v170, a4, off_1008D41E8, &unk_10093F770);
        if (v164)
        {
          sub_10001B860();

          return;
        }

        v236 = v169;
        v36 = v171;
        [v36 setParentList:a2];
        v172 = [v36 createResolutionTokenMapIfNecessary];
        if (qword_100935C70 != -1)
        {
          swift_once();
        }

        v173 = qword_100974C80;
        if (*(qword_100974C80 + 16) && (v174 = sub_100005F4C(0x694C746E65726170, 0xEC00000044497473), (v175 & 1) != 0))
        {
          v176 = (*(v173 + 56) + 16 * v174);
          v178 = *v176;
          v177 = v176[1];
        }

        else
        {
          if (qword_100936128 != -1)
          {
            swift_once();
          }

          v179 = type metadata accessor for Logger();
          sub_100006654(v179, qword_100946C50);
          v180 = Logger.logObject.getter();
          v181 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v180, v181))
          {
            v182 = swift_slowAlloc();
            v183 = swift_slowAlloc();
            v267 = v183;
            *v182 = 136315138;
            *(v182 + 4) = sub_10000668C(0x694C746E65726170, 0xEC00000044497473, &v267);
            _os_log_impl(&_mh_execute_header, v180, v181, "Unknown ingestable key {key: %s}", v182, 0xCu);
            sub_10000607C(v183);
            v79 = v220;
          }

          v164 = 0;
        }

        v165 = String._bridgeToObjectiveC()();

        [v172 updateForKey:v165];

        v109 = v168;
        v107 = v230;
        v110 = v236;
        i = v226;
      }
    }

    v34 = [a1 accountID];
    sub_100689A98(0, v34, a4, off_1008D4120, &qword_1009399F0);
    if (v5)
    {

      return;
    }

    v60 = v35;

    if (qword_1009366B0 != -1)
    {
      swift_once();
    }

    v61 = type metadata accessor for Logger();
    sub_100006654(v61, qword_10094EE30);
    i = v60;
    v62 = a2;
    v63 = Logger.logObject.getter();
    v64 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      v267 = swift_slowAlloc();
      *v65 = 136315394;
      v66 = [v62 remObjectID];
      sub_1000F5104(&unk_10093AF40, &unk_100795790);
      v67 = Optional.descriptionOrNil.getter();
      v241 = v62;
      v69 = v68;

      v70 = sub_10000668C(v67, v69, &v267);

      *(v65 + 4) = v70;
      *(v65 + 12) = 2080;
      v244 = [i remObjectID];
      v71 = Optional.descriptionOrNil.getter();
      v73 = v72;

      v74 = sub_10000668C(v71, v73, &v267);
      v62 = v241;

      *(v65 + 14) = v74;
      _os_log_impl(&_mh_execute_header, v63, v64, "Updating list.account {list: %s, account: %s}", v65, 0x16u);
      swift_arrayDestroy();
    }

    [v62 setAccount:i];
    v75 = [a1 unsavedReminderIDsForCategorization];
    if (!v75)
    {

      return;
    }

    v76 = v75;
    sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
    v77 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if ([a1 shouldCategorizeGroceryItems])
    {
      if ([v62 shouldCategorizeGroceryItems])
      {
        v78 = [v62 storeControllerManagedObjectContext];
        if (v78)
        {
          v79 = v78;
          v80 = [v62 remObjectID];
          if (v80)
          {
            v81 = v80;
            if (v77 >> 62)
            {
              if (_CocoaArrayWrapper.endIndex.getter())
              {
                goto LABEL_45;
              }
            }

            else if (*((v77 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
LABEL_45:
              sub_1000F5104(&unk_100939E10, &qword_1007970D0);
              v36 = v81;

              v82 = sub_100015620(v81, v77, 0, i, v79);
              goto LABEL_202;
            }
          }

          else
          {
          }
        }
      }

LABEL_205:

      return;
    }

    if (![a1 shouldAutoCategorizeItems])
    {
      goto LABEL_205;
    }

    if (![v62 shouldAutoCategorizeItems])
    {
      goto LABEL_208;
    }

    v184 = [v62 storeControllerManagedObjectContext];
    if (!v184)
    {
      goto LABEL_208;
    }

    j = v184;
    v185 = [v62 remObjectID];
    if (!v185)
    {
      goto LABEL_200;
    }

    v186 = v185;
    if (v77 >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_170;
      }
    }

    else if (*((v77 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_170:
      sub_1000F5104(&unk_100936F40, &unk_100791B30);

      v187 = v186;
      v219 = sub_10018F9D4(v187, v77, 0, i, j);

      swift_bridgeObjectRelease_n();
      return;
    }

    goto LABEL_208;
  }

  if (a3 - 3 < 2)
  {
    v10 = [a2 createResolutionTokenMapIfNecessary];
    v11 = [a1 resolutionTokenMap];
    if (!v11)
    {
      if (qword_1009366B0 != -1)
      {
        swift_once();
      }

      v46 = type metadata accessor for Logger();
      sub_100006654(v46, qword_10094EE30);
      v47 = a1;
      v48 = Logger.logObject.getter();
      v49 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        v267 = v52;
        *v50 = 138543618;
        v53 = [v47 objectID];
        *(v50 + 4) = v53;
        *v51 = v53;
        *(v50 + 12) = 2082;
        if (a3 == 4)
        {
          v54 = 0x694C746E65726170;
        }

        else
        {
          v54 = 0x6341746E65726170;
        }

        if (a3 == 4)
        {
          v55 = 0xEC00000044497473;
        }

        else
        {
          v55 = 0xEF4449746E756F63;
        }

        v56 = sub_10000668C(v54, v55, &v267);

        *(v50 + 14) = v56;
        _os_log_impl(&_mh_execute_header, v48, v49, "REMListStorageCDIngestor: establishRelationship(onStorage:into cdList:...) cannot proceed because storage.resolutionTokenMap is nil {objectID: %{public}@, key: %{public}s}", v50, 0x16u);
        sub_1000050A4(v51, &unk_100938E70, &unk_100797230);

        sub_10000607C(v52);
      }

      v57 = objc_opt_self();
      sub_1000060C8(0, &unk_10094F0C0, REMListStorage_ptr);
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v59 = String._bridgeToObjectiveC()();
      [v57 unexpectedNilPropertyWithClass:ObjCClassFromMetadata property:v59];

      swift_willThrow();
      return;
    }

    v12 = v11;
    sub_1000F5104(&qword_10094F5E0, &qword_1007A41E8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100791300;
    *(inited + 32) = a3;
    v14 = sub_1006963A0(v12, inited);
    swift_setDeallocating();
    sub_100693AB0(a3);
    v15 = String._bridgeToObjectiveC()();

    v16 = [v10 mergeWithMap:v14 forKey:v15];

    if (!v16)
    {

      return;
    }

    if (a3 == 3)
    {
      v17 = [a1 parentAccountID];
      if (!v17)
      {
        v20 = 0;
        goto LABEL_172;
      }

      v18 = v17;
      sub_100689A98(3u, v18, a4, off_1008D4120, &qword_1009399F0);
      if (!v5)
      {
        v20 = v19;

LABEL_172:
        if (qword_1009366B0 != -1)
        {
          swift_once();
        }

        v188 = type metadata accessor for Logger();
        sub_100006654(v188, qword_10094EE30);
        v189 = v20;
        v190 = a2;
        v191 = Logger.logObject.getter();
        v192 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v191, v192))
        {
          v231 = v192;
          loga = v191;
          v193 = swift_slowAlloc();
          v267 = swift_slowAlloc();
          *v193 = 136315394;
          v242 = v190;
          v245 = [v190 remObjectID];
          sub_1000F5104(&unk_10093AF40, &unk_100795790);
          v194 = Optional.descriptionOrNil.getter();
          v196 = v195;

          v197 = sub_10000668C(v194, v196, &v267);

          *(v193 + 4) = v197;
          *(v193 + 12) = 2080;
          if (v20)
          {
            v198 = [v189 remObjectID];
          }

          else
          {
            v198 = 0;
          }

          v210 = Optional.descriptionOrNil.getter();
          v212 = v211;

          v213 = sub_10000668C(v210, v212, &v267);

          *(v193 + 14) = v213;
          _os_log_impl(&_mh_execute_header, loga, v231, "Updating list.parentAccount {list: %s, account: %s}", v193, 0x16u);
          swift_arrayDestroy();

          v190 = v242;
        }

        else
        {
        }

        [v190 setParentAccount:v189];
LABEL_195:

        return;
      }

LABEL_133:

      return;
    }

    v158 = [a1 parentListID];
    if (v158)
    {
      v18 = v158;
      sub_100689A98(4u, v18, a4, off_1008D41A8, &unk_100938880);
      if (v5)
      {
        goto LABEL_133;
      }

      v199 = v159;
    }

    else
    {
      v199 = 0;
    }

    if (qword_1009366B0 != -1)
    {
      swift_once();
    }

    v200 = type metadata accessor for Logger();
    sub_100006654(v200, qword_10094EE30);
    v189 = v199;
    v201 = a2;
    v202 = Logger.logObject.getter();
    v203 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v202, v203))
    {
      v232 = v203;
      logb = v202;
      v204 = swift_slowAlloc();
      v267 = swift_slowAlloc();
      *v204 = 136315394;
      v243 = v201;
      v246 = [v201 remObjectID];
      sub_1000F5104(&unk_10093AF40, &unk_100795790);
      v205 = Optional.descriptionOrNil.getter();
      v207 = v206;

      v208 = sub_10000668C(v205, v207, &v267);

      *(v204 + 4) = v208;
      *(v204 + 12) = 2080;
      if (v199)
      {
        v209 = [v189 remObjectID];
      }

      else
      {
        v209 = 0;
      }

      v214 = Optional.descriptionOrNil.getter();
      v216 = v215;

      v217 = sub_10000668C(v214, v216, &v267);

      *(v204 + 14) = v217;
      _os_log_impl(&_mh_execute_header, logb, v232, "Updating list.parentList {list: %s, parentList: %s}", v204, 0x16u);
      swift_arrayDestroy();

      v201 = v243;
    }

    else
    {
    }

    [v201 setParentList:v189];
    goto LABEL_195;
  }

  if (a3 != 5)
  {
    v41 = [a1 sectionIDsToUndelete];
    sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
    sub_10000CE28(&qword_1009391F0, &qword_1009391E0, REMObjectID_ptr);
    v42 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    if ((v42 & 0xC000000000000001) != 0)
    {
      __CocoaSet.makeIterator()();
      Set.Iterator.init(_cocoa:)();
      v42 = v262;
      i = v263;
      v43 = v264;
      v44 = v265;
      v45 = v266;
    }

    else
    {
      v44 = 0;
      v135 = -1 << *(v42 + 32);
      i = v42 + 56;
      v136 = ~v135;
      v137 = -v135;
      if (v137 < 64)
      {
        v138 = ~(-1 << v137);
      }

      else
      {
        v138 = -1;
      }

      v45 = v138 & *(v42 + 56);
      v43 = v136;
    }

    v139 = (v43 + 64) >> 6;
    v222 = v139;
    v225 = i;
    v229 = v42;
    while (1)
    {
      if (v42 < 0)
      {
        if (!__CocoaSet.Iterator.next()())
        {
          goto LABEL_161;
        }

        swift_dynamicCast();
        v120 = v267;
        j = v44;
        v143 = v45;
        if (!v267)
        {
          goto LABEL_161;
        }
      }

      else
      {
        v141 = v44;
        v142 = v45;
        for (j = v44; !v142; ++v141)
        {
          j = v141 + 1;
          if (__OFADD__(v141, 1))
          {
            goto LABEL_199;
          }

          if (j >= v139)
          {
            goto LABEL_161;
          }

          v142 = *(i + 8 * j);
        }

        v143 = (v142 - 1) & v142;
        v120 = *(*(v42 + 48) + ((j << 9) | (8 * __clz(__rbit64(v142)))));
        if (!v120)
        {
          goto LABEL_161;
        }
      }

      sub_10068A364(6u, v120, a4);
      if (v6)
      {
LABEL_134:
        sub_10001B860();

        return;
      }

      v235 = v143;
      v145 = v144;
      [v145 setList:a2];
      v146 = [v145 createResolutionTokenMapIfNecessary];
      if (qword_100935F90 != -1)
      {
        swift_once();
      }

      v147 = qword_100974D70;
      if (*(qword_100974D70 + 16) && (v148 = sub_100005F4C(0x4449746E65726170, 0xE800000000000000), (v149 & 1) != 0))
      {
        v150 = (*(v147 + 56) + 16 * v148);
        v151 = *v150;
        v152 = v150[1];
      }

      else
      {
        if (qword_100936128 != -1)
        {
          swift_once();
        }

        v153 = type metadata accessor for Logger();
        sub_100006654(v153, qword_100946C50);
        v154 = Logger.logObject.getter();
        v155 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v154, v155))
        {
          v156 = swift_slowAlloc();
          v157 = swift_slowAlloc();
          v267 = v157;
          *v156 = 136315138;
          *(v156 + 4) = sub_10000668C(0x4449746E65726170, 0xE800000000000000, &v267);
          _os_log_impl(&_mh_execute_header, v154, v155, "Unknown ingestable key {key: %s}", v156, 0xCu);
          sub_10000607C(v157);
        }

        v6 = 0;
      }

      v140 = String._bridgeToObjectiveC()();

      [v146 updateForKey:v140];

      v44 = j;
      v42 = v229;
      v45 = v235;
      v139 = v222;
      i = v225;
    }
  }

  v28 = [a1 reminderIDsToUndelete];
  sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
  sub_10000CE28(&qword_1009391F0, &qword_1009391E0, REMObjectID_ptr);
  v29 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  if ((v29 & 0xC000000000000001) != 0)
  {
    __CocoaSet.makeIterator()();
    Set.Iterator.init(_cocoa:)();
    v29 = v257;
    i = v258;
    v31 = v259;
    v32 = v260;
    v33 = v261;
  }

  else
  {
    v32 = 0;
    v111 = -1 << *(v29 + 32);
    i = v29 + 56;
    v112 = ~v111;
    v113 = -v111;
    if (v113 < 64)
    {
      v114 = ~(-1 << v113);
    }

    else
    {
      v114 = -1;
    }

    v33 = v114 & *(v29 + 56);
    v31 = v112;
  }

  v115 = (v31 + 64) >> 6;
  v221 = v115;
  v224 = i;
  v228 = v29;
  while (v29 < 0)
  {
    if (!__CocoaSet.Iterator.next()())
    {
      goto LABEL_161;
    }

    swift_dynamicCast();
    v120 = v267;
    j = v32;
    v119 = v33;
    if (!v267)
    {
      goto LABEL_161;
    }

LABEL_94:
    sub_100689A98(5u, v120, a4, off_1008D41D0, &qword_100939EE0);
    if (v6)
    {
      goto LABEL_134;
    }

    v234 = v119;
    v122 = v121;
    [v122 setList:a2];
    v123 = [v122 createResolutionTokenMapIfNecessary];
    if (qword_100935E28 != -1)
    {
      swift_once();
    }

    v124 = qword_100974D20;
    if (*(qword_100974D20 + 16) && (v125 = sub_100005F4C(0x44497473696CLL, 0xE600000000000000), (v126 & 1) != 0))
    {
      v127 = (*(v124 + 56) + 16 * v125);
      v128 = *v127;
      v129 = v127[1];
    }

    else
    {
      if (qword_100936128 != -1)
      {
        swift_once();
      }

      v130 = type metadata accessor for Logger();
      sub_100006654(v130, qword_100946C50);
      v131 = Logger.logObject.getter();
      v132 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v131, v132))
      {
        v133 = swift_slowAlloc();
        v134 = swift_slowAlloc();
        v267 = v134;
        *v133 = 136315138;
        *(v133 + 4) = sub_10000668C(0x44497473696CLL, 0xE600000000000000, &v267);
        _os_log_impl(&_mh_execute_header, v131, v132, "Unknown ingestable key {key: %s}", v133, 0xCu);
        sub_10000607C(v134);
      }

      v6 = 0;
    }

    v116 = String._bridgeToObjectiveC()();

    [v123 updateForKey:v116];

    v32 = j;
    v29 = v228;
    v33 = v234;
    v115 = v221;
    i = v224;
  }

  v117 = v32;
  v118 = v33;
  j = v32;
  if (v33)
  {
LABEL_90:
    v119 = (v118 - 1) & v118;
    v120 = *(*(v29 + 48) + ((j << 9) | (8 * __clz(__rbit64(v118)))));
    if (!v120)
    {
      goto LABEL_161;
    }

    goto LABEL_94;
  }

  while (1)
  {
    j = v117 + 1;
    if (__OFADD__(v117, 1))
    {
      break;
    }

    if (j >= v115)
    {
      goto LABEL_161;
    }

    v118 = *(i + 8 * j);
    ++v117;
    if (v118)
    {
      goto LABEL_90;
    }
  }

LABEL_198:
  __break(1u);
LABEL_199:
  __break(1u);
LABEL_200:

LABEL_208:
}

void *sub_1006AA1E0(void *a1, uint64_t a2)
{
  v3 = [a1 remObjectID];
  v4 = v3;
  if (*(a2 + 16) && (v5 = sub_10002B924(v3), (v6 & 1) != 0))
  {
    v7 = *(*(a2 + 56) + 8 * v5);
  }

  else
  {

    v7 = 0;
  }

  v8 = sub_1005F5104(v7, &off_1008DFE60, sub_10036644C, &unk_10094F2B0, &qword_1007B4E70);

  return v8;
}

void *sub_1006AA2B0(void *a1, uint64_t a2)
{
  v3 = [a1 remObjectID];
  v4 = v3;
  if (*(a2 + 16) && (v5 = sub_10002B924(v3), (v6 & 1) != 0))
  {
    v7 = *(*(a2 + 56) + 8 * v5);
  }

  else
  {

    v7 = 0;
  }

  v8 = sub_1005F5104(v7, &off_1008E0058, sub_100366488, &unk_10094F350, &qword_1007B4F00);

  return v8;
}

uint64_t sub_1006AA380(void *a1, void *a2)
{
  v3 = v2;
  aBlock[4] = sub_1005E2234;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1005E2238;
  aBlock[3] = &unk_1008FA0F8;
  v6 = _Block_copy(aBlock);

  v7 = [a2 sortedArrayWithOptions:16 usingComparator:v6];
  _Block_release(v6);
  if (swift_isEscapingClosureAtFileLocation())
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v22 = a1;
  aBlock[7] = v2;
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  aBlock[0] = v8;
  sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
  sub_1000F5104(&qword_10093CB40, &qword_1007A4450);
  sub_10000CB48(&qword_1009418B0, &qword_10093CB40, &qword_1007A4450);
  v6 = Sequence.elements<A>(ofType:)();

  aBlock[0] = _swiftEmptyArrayStorage;
  v3 = v6 & 0xFFFFFFFFFFFFFF8;
  if (v6 >> 62)
  {
LABEL_21:
    v9 = _CocoaArrayWrapper.endIndex.getter();
    goto LABEL_4;
  }

  v9 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:
  v10 = 0;
  v11 = _swiftEmptyArrayStorage;
  while (v9 != v10)
  {
    if ((v6 & 0xC000000000000001) != 0)
    {
      v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v10 >= *(v3 + 16))
      {
        goto LABEL_19;
      }

      v12 = *(v6 + 8 * v10 + 32);
    }

    v13 = v12;
    v14 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    v15 = [v12 remObjectID];

    ++v10;
    if (v15)
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v16 = *((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v11 = aBlock[0];
      v10 = v14;
    }
  }

  sub_100270964(v11);

  v17 = objc_allocWithZone(NSOrderedSet);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v19 = [v17 initWithArray:isa];

  v20 = [v22 isEqual:v19];
  if (v20)
  {
    v22;
  }

  return v20 ^ 1;
}

void sub_1006AA6EC()
{
  v152 = type metadata accessor for UUID();
  v149 = *(v152 - 8);
  v0 = *(v149 + 64);
  __chkstk_darwin(v152);
  v151 = &v148 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v157 = (&v148 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v5);
  v153 = &v148 - v6;
  *&v162 = type metadata accessor for Date();
  v160 = *(v162 - 8);
  v7 = *(v160 + 64);
  __chkstk_darwin(v162);
  v156 = &v148 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v161 = (&v148 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v12);
  v14 = &v148 - v13;
  v15 = type metadata accessor for NSFastEnumerationIterator();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v148 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v172 = _swiftEmptyArrayStorage;
  v173 = _swiftEmptyArrayStorage;
  NSOrderedSet.makeIterator()();
  sub_1006ABE80(&qword_10093F7A0, &type metadata accessor for NSFastEnumerationIterator);
  dispatch thunk of IteratorProtocol.next()();
  if (v171)
  {
    v165 = _swiftEmptyArrayStorage;
    do
    {
      sub_100005EE0(&v170, &v168);
      sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
      if ((swift_dynamicCast() & 1) != 0 && v169)
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v172 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v172 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v167 = *((v172 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v165 = v172;
      }

      dispatch thunk of IteratorProtocol.next()();
    }

    while (v171);
  }

  else
  {
    v165 = _swiftEmptyArrayStorage;
  }

  (*(v16 + 8))(v19, v15);
  v20 = v165;
  v150 = v165 >> 62;
  if (v165 >> 62)
  {
    goto LABEL_189;
  }

  v166 = v165 & 0xFFFFFFFFFFFFFF8;
  v21 = *((v165 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v22 = v21;
  while (2)
  {
    v23 = 0;
    v167 = v20 & 0xC000000000000001;
    v163 = v20 + 4;
    v164 = v22;
    v24 = v22 - v21;
    v25 = -1;
    while (1)
    {
      v26 = v21 + v23;
      if (!(v21 + v23))
      {
        break;
      }

      v27 = v26 - 1;
      if (__OFSUB__(v26, 1))
      {
        __break(1u);
LABEL_177:
        __break(1u);
LABEL_178:
        __break(1u);
LABEL_179:
        __break(1u);
LABEL_180:
        __break(1u);
LABEL_181:
        __break(1u);
LABEL_182:
        __break(1u);
LABEL_183:
        __break(1u);
LABEL_184:
        __break(1u);
LABEL_185:
        __break(1u);
        goto LABEL_186;
      }

      if (v167)
      {
        v28 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if ((v27 & 0x8000000000000000) != 0)
        {
          goto LABEL_177;
        }

        if (v27 >= *(v166 + 16))
        {
          goto LABEL_178;
        }

        v28 = v163[v27];
      }

      v29 = v28;
      v30 = [v28 displayOrder];
      v31 = [v29 icsDisplayOrder];

      v32 = v31 > 0 || v30 >= v25;
      if (v32)
      {
        v34 = v164;
        v24 = v164 + v23;
        goto LABEL_22;
      }

      v33 = v164 + v23--;
      v25 = v30;
      if (__OFSUB__(v33, 1))
      {
        goto LABEL_179;
      }
    }

    v34 = v164;
LABEL_22:
    v35 = v157;
    if (v24 >= v34)
    {
      goto LABEL_30;
    }

    if (v167)
    {
      goto LABEL_196;
    }

    if ((v24 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_198:
      __break(1u);
LABEL_199:
      __break(1u);
LABEL_200:
      __break(1u);
LABEL_201:
      __break(1u);
LABEL_202:
      __break(1u);
LABEL_203:
      __break(1u);
      return;
    }

    if (v24 >= *(v166 + 16))
    {
      goto LABEL_198;
    }

    for (i = v163[v24]; ; i = specialized _ArrayBuffer._getElementSlowPath(_:)())
    {
      v37 = i;
      v38 = [i displayOrder];

      if (v38)
      {
        if (v167)
        {
          v39 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if ((v24 & 0x8000000000000000) != 0)
          {
            goto LABEL_201;
          }

          if (v24 >= *(v166 + 16))
          {
            goto LABEL_202;
          }

          v39 = v163[v24];
        }

        v57 = v39;
        v58 = [v39 displayOrder];

        v56 = v58 - 1;
        if (!v58)
        {
          goto LABEL_199;
        }
      }

      else
      {
LABEL_30:
        if (v21)
        {
          v24 = 0;
          v40 = 0;
          v159 = (v160 + 56);
          v41 = (v160 + 48);
          v155 = (v160 + 16);
          v154 = (v160 + 8);
          v20 = v162;
          v42 = v161;
          v158 = v14;
          v160 = v21;
          v35 = qword_100795AE0;
          while (1)
          {
            if (v167)
            {
              v43 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v24 >= *(v166 + 16))
              {
                goto LABEL_181;
              }

              v43 = *(v165 + 8 * v24 + 32);
            }

            v44 = v43;
            v45 = v24 + 1;
            if (__OFADD__(v24, 1))
            {
              goto LABEL_180;
            }

            v46 = [v43 creationDate];
            if (v46)
            {
              v47 = v46;
              static Date._unconditionallyBridgeFromObjectiveC(_:)();

              v42 = v161;
              v20 = v162;
              v48 = 0;
            }

            else
            {
              v48 = 1;
            }

            (*v159)(v42, v48, 1, v20);
            v49 = v14;
            v50 = v14;
            v14 = &unk_100938850;
            sub_100031B58(v42, v49, &unk_100938850, qword_100795AE0);
            if ((*v41)(v50, 1, v20))
            {
              sub_1000050A4(v50, &unk_100938850, qword_100795AE0);

              v51 = 0.0;
            }

            else
            {
              v52 = v156;
              (*v155)(v156, v50, v20);
              sub_1000050A4(v50, &unk_100938850, qword_100795AE0);
              Date.timeIntervalSince1970.getter();
              v20 = v162;
              v54 = v53;
              v55 = v52;
              v42 = v161;
              (v154->isa)(v55, v162);

              v51 = 1.84467441e19;
              if (v54 <= 1.84467441e19)
              {
                v51 = v54;
              }

              if (v54 <= 0.0)
              {
                v51 = 0.0;
              }
            }

            v21 = v160;
            if ((*&v51 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
            {
              goto LABEL_182;
            }

            if (v51 <= -1.0)
            {
              goto LABEL_183;
            }

            if (v51 >= 1.84467441e19)
            {
              goto LABEL_184;
            }

            if (v40 <= v51)
            {
              v40 = v51;
            }

            ++v24;
            v14 = v158;
            if (v45 == v160)
            {
              goto LABEL_60;
            }
          }
        }

        v40 = 0;
LABEL_60:
        v32 = __CFADD__(v40, 1);
        v56 = (v40 + 1);
        if (v32)
        {
          goto LABEL_191;
        }

        v24 = v164;
        v35 = v157;
      }

      if (qword_1009366B0 != -1)
      {
        swift_once();
      }

      v59 = type metadata accessor for Logger();
      v60 = sub_100006654(v59, qword_10094EE30);

      *&v162 = v60;
      v61 = Logger.logObject.getter();
      v62 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v61, v62))
      {
        break;
      }

      if (!v21)
      {
        goto LABEL_134;
      }

LABEL_72:
      if (v167)
      {
        goto LABEL_192;
      }

      if (*(v166 + 16))
      {
        v65 = *v163;
        goto LABEL_75;
      }

      __break(1u);
LABEL_194:
      __break(1u);
LABEL_195:
      __break(1u);
LABEL_196:
      ;
    }

    v63 = swift_slowAlloc();
    *v63 = 134218496;
    if (v150)
    {
      v64 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v64 = *(v166 + 16);
    }

    *(v63 + 4) = v64;

    *(v63 + 12) = 2048;
    *(v63 + 14) = v24;
    *(v63 + 22) = 2048;
    *(v63 + 24) = v56;
    _os_log_impl(&_mh_execute_header, v61, v62, "Going to back propagate ordering changes to CD reminders {remindersCount: %ld, startIndexToKeepUntouched: %ld, maxDisplayOrder: %lu}", v63, 0x20u);

    if (v21)
    {
      goto LABEL_72;
    }

LABEL_134:
    v67 = 0;
    v68 = v164;
    if ((v24 & 0x8000000000000000) != 0)
    {
LABEL_135:
      __break(1u);
LABEL_136:

      v101 = Logger.logObject.getter();
      v102 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v101, v102))
      {
        v103 = swift_slowAlloc();
        *v103 = 0;
        v104 = "backPropagateOrderingChangesToICSDisplayOrder: Failed to obtain an managedObjextContext from a changed reminder";
LABEL_138:
        _os_log_impl(&_mh_execute_header, v101, v102, v104, v103, 2u);
      }

      goto LABEL_139;
    }

    while (2)
    {
      v69 = _swiftEmptyArrayStorage;
      if (!v24)
      {
        v95 = _swiftEmptyArrayStorage;
        goto LABEL_127;
      }

      v21 = v68 - 1;
      if (__OFSUB__(v68, 1))
      {
        goto LABEL_194;
      }

      if (!v167 && v24 > *(v166 + 16))
      {
        goto LABEL_195;
      }

      v163 = v56;
      v70 = 0;
      v20 = 0;
      v71 = _swiftEmptyArrayStorage;
      while (2)
      {
        v14 = v70 + 1;
        if (!v167)
        {
          v56 = (v165 + 8 * v70);
          v72 = *(v56 + 4);
          if (v70 >= v21)
          {
            goto LABEL_92;
          }

          if ((v14 & 0x8000000000000000) != 0)
          {
            goto LABEL_187;
          }

          if (v14 >= *(v166 + 16))
          {
            goto LABEL_188;
          }

          v73 = *(v56 + 5);
LABEL_90:
          v56 = v73;
          v74 = [v73 displayOrder];

          if (v20 >= v67)
          {
            goto LABEL_94;
          }

LABEL_93:
          if (v67 >= v74)
          {
            goto LABEL_94;
          }

          goto LABEL_81;
        }

        v56 = v165;
        v72 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        if (v70 < v21)
        {
          v73 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          goto LABEL_90;
        }

LABEL_92:
        v74 = -1;
        if (v20 < v67)
        {
          goto LABEL_93;
        }

LABEL_94:
        v32 = __CFADD__(v20, 1);
        v20 = (v20 + 1);
        if (v32)
        {
          goto LABEL_185;
        }

        if (v20 == v67)
        {
LABEL_81:

          v20 = v67;
          goto LABEL_82;
        }

        v75 = v72;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v71 = sub_100367E80(0, v71[2] + 1, 1, v71);
        }

        v77 = v71[2];
        v76 = v71[3];
        if (v77 >= v76 >> 1)
        {
          v71 = sub_100367E80((v76 > 1), v77 + 1, 1, v71);
        }

        v71[2] = v77 + 1;
        v78 = &v71[3 * v77];
        v78[4] = v75;
        v78[5] = v67;
        v78[6] = v20;
        v56 = [v75 objectID];
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v173 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v173 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v79 = *((v173 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v69 = v173;
LABEL_82:
        v67 = v74;
        v70 = v14;
        if (v24 != v14)
        {
          continue;
        }

        break;
      }

      v80 = v163;
      if (v163 < v20)
      {
        v81 = Logger.logObject.getter();
        v82 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v81, v82))
        {
          v56 = swift_slowAlloc();
          *v56 = 134218240;
          *(v56 + 4) = v80;
          *(v56 + 6) = 2048;
          *(v56 + 14) = v20;
          _os_log_impl(&_mh_execute_header, v81, v82, "Back propagating ordering changes: display order has gone too large in first try. Going to reset from 1 {maxDisplayOrder: %lu, largestDisplayOrder: %lu}", v56, 0x16u);
        }

        v173 = _swiftEmptyArrayStorage;
        v83 = v164;
        if (!v167 && v24 > *(v166 + 16))
        {
          goto LABEL_203;
        }

        v84 = 0;
        v69 = _swiftEmptyArrayStorage;
        v71 = _swiftEmptyArrayStorage;
        v85 = v165;
        do
        {
          while (1)
          {
            v86 = v167 ? specialized _ArrayBuffer._getElementSlowPath(_:)() : *(v85 + 8 * v84 + 32);
            v87 = v86;
            v84 = v84 + 1;
            v88 = [v86 displayOrder];
            if (v84 != v88)
            {
              break;
            }

            if (v24 == v84)
            {
              goto LABEL_124;
            }
          }

          v89 = v88;
          v90 = v87;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v71 = sub_100367E80(0, v71[2] + 1, 1, v71);
          }

          v92 = v71[2];
          v91 = v71[3];
          if (v92 >= v91 >> 1)
          {
            v71 = sub_100367E80((v91 > 1), v92 + 1, 1, v71);
          }

          v71[2] = v92 + 1;
          v93 = &v71[3 * v92];
          v93[4] = v90;
          v93[5] = v89;
          v93[6] = v84;
          v56 = [v90 objectID];
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v173 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v173 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v94 = *((v173 & 0xFFFFFFFFFFFFFF8) + 0x10);
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

          v69 = v173;
        }

        while (v24 != v84);
LABEL_124:
        if (v83 < v24)
        {
          goto LABEL_200;
        }

        if (v24 == v83)
        {
          break;
        }

        v14 = 24;
        v95 = v71;
        v35 = v157;
        while (2)
        {
          if (v167)
          {
            v105 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_145:
            v106 = v105;
            v107 = [v105 displayOrder];
            if (v107 > v24)
            {

              goto LABEL_127;
            }

            v108 = v107;
            v109 = v106;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v95 = sub_100367E80(0, v95[2] + 1, 1, v95);
            }

            v111 = v95[2];
            v110 = v95[3];
            if (v111 >= v110 >> 1)
            {
              v95 = sub_100367E80((v110 > 1), v111 + 1, 1, v95);
            }

            ++v24;
            v95[2] = v111 + 1;
            v112 = &v95[3 * v111];
            v112[4] = v109;
            v112[5] = v108;
            v112[6] = v24;
            v56 = [v109 objectID];
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((v173 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v173 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v113 = *((v173 & 0xFFFFFFFFFFFFFF8) + 0x10);
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

            v69 = v173;
            if (v83 == v24)
            {
              goto LABEL_127;
            }

            continue;
          }

          break;
        }

        if (v24 < *(v166 + 16))
        {
          v105 = *(v85 + 8 * v24 + 32);
          goto LABEL_145;
        }

        __break(1u);
LABEL_191:
        __break(1u);
LABEL_192:
        v65 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_75:
        v66 = v65;
        v67 = [v65 displayOrder];

        v68 = v164;
        if ((v24 & 0x8000000000000000) != 0)
        {
          goto LABEL_135;
        }

        continue;
      }

      break;
    }

    v95 = v71;
    v35 = v157;
LABEL_127:

    if (!v95[2])
    {

      v101 = Logger.logObject.getter();
      v102 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v101, v102))
      {
        v103 = swift_slowAlloc();
        *v103 = 0;
        v104 = "Produced empty change logs when trying to back propagated ordering changes to CD reminders, maybe a bug or should shortcut earlier.";
        goto LABEL_138;
      }

LABEL_139:

      return;
    }

    v96 = [v95[4] managedObjectContext];
    if (!v96)
    {
      goto LABEL_136;
    }

    v97 = v96;
    sub_1000060C8(0, &unk_100938890, NSPredicate_ptr);
    v167 = sub_1000F5104(&qword_100939EB0, &qword_1007989A0);
    v98 = swift_allocObject();
    *(v98 + 16) = xmmword_100791300;
    *(v98 + 56) = sub_1000F5104(&qword_100937028, &qword_100791C10);
    *(v98 + 64) = sub_10000CB48(&unk_10094F0D0, &qword_100937028, &qword_100791C10);
    *(v98 + 32) = v69;
    v99 = NSPredicate.init(format:_:)();
    sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
    v14 = [objc_allocWithZone(NSFetchRequest) init];
    v100 = [swift_getObjCClassFromMetadata() entity];
    [v14 setEntity:v100];

    [v14 setAffectedStores:0];
    [v14 setPredicate:v99];
    NSManagedObjectContext.fetch<A>(_:)();

    v114 = v95[2];
    if (v114)
    {
      v115 = v95 + 6;
      do
      {
        v116 = *(v115 - 2);
        v117 = *v115;
        v115 += 3;
        [v116 setDisplayOrder:v117];
        --v114;
      }

      while (v114);
    }

    v118 = Logger.logObject.getter();
    v119 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v118, v119))
    {
      LODWORD(v158) = v119;
      v159 = v97;
      v120 = swift_slowAlloc();
      v155 = swift_slowAlloc();
      *&v170 = v155;
      v156 = v120;
      *v120 = 136315138;
      v121 = v95[2];
      if (v121)
      {
        v154 = v118;
        *&v168 = _swiftEmptyArrayStorage;
        sub_100253B24(0, v121, 0);
        v122 = 0;
        v123 = v168;
        v163 = (v149 + 48);
        v164 = (v149 + 56);
        v161 = (v149 + 16);
        v160 = v149 + 8;
        v124 = v95 + 6;
        v20 = &unk_100939D90;
        v162 = xmmword_100791340;
        v125 = v152;
        v165 = v121;
        v166 = v95;
        while (v122 < v95[2])
        {
          v126 = *(v124 - 1);
          v127 = *v124;
          v128 = [*(v124 - 2) identifier];
          if (v128)
          {
            v129 = v128;
            static UUID._unconditionallyBridgeFromObjectiveC(_:)();

            v130 = 0;
          }

          else
          {
            v130 = 1;
          }

          (*v164)(v35, v130, 1, v125);
          v131 = v153;
          sub_100031B58(v35, v153, &unk_100939D90, "8\n\r");
          if ((*v163)(v131, 1, v125))
          {
            sub_1000050A4(v131, &unk_100939D90, "8\n\r");
            v132 = 0;
            v133 = 0;
          }

          else
          {
            v134 = v151;
            (*v161)(v151, v131, v125);
            sub_1000050A4(v131, &unk_100939D90, "8\n\r");
            v135 = UUID.uuidString.getter();
            v125 = v152;
            v132 = v135;
            v133 = v136;
            (*v160)(v134, v152);
          }

          v137 = swift_allocObject();
          *(v137 + 16) = v162;
          *(v137 + 56) = &type metadata for UInt;
          *(v137 + 64) = &protocol witness table for UInt;
          *(v137 + 72) = v127;
          *(v137 + 32) = v126;
          *(v137 + 96) = &type metadata for UInt;
          *(v137 + 104) = &protocol witness table for UInt;
          v14 = String.init(format:_:)();
          v139 = v138;
          *&v168 = v123;
          v141 = *(v123 + 16);
          v140 = *(v123 + 24);
          if (v141 >= v140 >> 1)
          {
            sub_100253B24((v140 > 1), v141 + 1, 1);
            v125 = v152;
            v123 = v168;
          }

          v122 = (v122 + 1);
          *(v123 + 16) = v141 + 1;
          v142 = (v123 + 32 * v141);
          v142[4] = v132;
          v142[5] = v133;
          v142[6] = v14;
          v142[7] = v139;
          v124 += 3;
          v95 = v166;
          v35 = v157;
          v20 = &unk_100939D90;
          if (v165 == v122)
          {

            v118 = v154;
            goto LABEL_174;
          }
        }

LABEL_186:
        __break(1u);
LABEL_187:
        __break(1u);
LABEL_188:
        __break(1u);
LABEL_189:
        v166 = v20 & 0xFFFFFFFFFFFFFF8;
        v22 = _CocoaArrayWrapper.endIndex.getter();
        v21 = _CocoaArrayWrapper.endIndex.getter();
        continue;
      }

LABEL_174:
      sub_1000F5104(&qword_10093ECC8, &qword_1007B4CD0);
      v143 = Array.description.getter();
      v145 = v144;

      v146 = sub_10000668C(v143, v145, &v170);

      v147 = v156;
      *(v156 + 4) = v146;
      _os_log_impl(&_mh_execute_header, v118, v158, "Back propagated ordering changes to CD reminders - {changes: %s}", v147, 0xCu);
      sub_10000607C(v155);
    }

    else
    {
    }

    break;
  }
}

uint64_t sub_1006ABE80(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1006ABFBC()
{
  result = qword_10094F148;
  if (!qword_10094F148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094F148);
  }

  return result;
}

void *sub_1006ACAFC(void *a1, uint64_t a2)
{
  v3 = [a1 remObjectID];
  v4 = v3;
  if (*(a2 + 16) && (v5 = sub_10002B924(v3), (v6 & 1) != 0))
  {
    v7 = *(*(a2 + 56) + 8 * v5);
  }

  else
  {

    v7 = 0;
  }

  v8 = sub_1005F42B8(v7, &off_1008DF688, sub_1003663E8, &qword_10094F640, &qword_1007B5130);

  return v8;
}

void sub_1006ACBCC(unint64_t a1, unint64_t a2)
{
  v4 = v2;
  v5 = a2;
  v8 = *(a2 + 16);
  v7 = *(a2 + 24);
  if (qword_100936008 != -1)
  {
    goto LABEL_68;
  }

LABEL_2:
  v9 = type metadata accessor for Logger();
  sub_100006654(v9, qword_100945730);

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.info.getter();

  v12 = os_log_type_enabled(v10, v11);
  v76 = v5;
  v84 = a1;
  v71 = v4;
  v74 = a1 >> 62;
  if (v12)
  {
    v5 = swift_slowAlloc();
    v78[0] = swift_slowAlloc();
    *v5 = 136446978;
    *(v5 + 4) = sub_10000668C(0x7661537265746661, 0xEF6E6F6974634165, v78);
    *(v5 + 12) = 2048;
    v77 = v8;
    if (!(a1 >> 62))
    {
      v13 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_5;
    }

    goto LABEL_71;
  }

  while (1)
  {
    v7 = v74 ? _CocoaArrayWrapper.endIndex.getter() : *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v19 = _swiftEmptyArrayStorage;
    if (!v7)
    {
      break;
    }

    v78[0] = _swiftEmptyArrayStorage;
    v10 = v78;
    specialized ContiguousArray.reserveCapacity(_:)();
    if ((v7 & 0x8000000000000000) == 0)
    {
      v4 = 0;
      v5 = a1 & 0xC000000000000001;
      v77 = a1 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        v20 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          break;
        }

        if (v5)
        {
          v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v4 >= *(v77 + 16))
          {
            goto LABEL_66;
          }

          v21 = *(a1 + 8 * v4 + 32);
        }

        v22 = v21;
        v8 = sub_1005E45B0([v21 remObjectID]);

        if (v3)
        {

          return;
        }

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v23 = *(v78[0] + 16);
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        a1 = v84;
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        ++v4;
        if (v20 == v7)
        {
          v19 = v78[0];
          v5 = v76;
          goto LABEL_20;
        }
      }

      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      __break(1u);
LABEL_68:
      swift_once();
      goto LABEL_2;
    }

    __break(1u);
LABEL_71:
    v13 = _CocoaArrayWrapper.endIndex.getter();
LABEL_5:
    *(v5 + 14) = v13;

    *(v5 + 22) = 2082;
    type metadata accessor for REMCDSavedAttachment();
    v14 = [swift_getObjCClassFromMetadata() description];
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v16;

    v17 = v15;
    a1 = v84;
    v18 = sub_10000668C(v17, v8, v78);

    *(v5 + 24) = v18;
    *(v5 + 32) = 2082;
    *(v5 + 34) = sub_10000668C(v77, v7, v78);
    _os_log_impl(&_mh_execute_header, v10, v11, "[%{public}s] Processing changed ingestables {count: %ld, CDType: %{public}s, accountIdentifier: %{public}s}", v5, 0x2Au);
    swift_arrayDestroy();

    v5 = v76;
  }

LABEL_20:
  v24 = sub_10065E91C(v19, v5);

  if (!v3)
  {
    if (v74)
    {
      v4 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v70 = v24;
    swift_beginAccess();
    swift_beginAccess();
    if (v4)
    {
      v25 = 0;
      v73 = a1 & 0xFFFFFFFFFFFFFF8;
      v75 = a1 & 0xC000000000000001;
      v72 = v4;
      while (1)
      {
        if (v75)
        {
          v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v27 = v25 + 1;
          if (__OFADD__(v25, 1))
          {
            goto LABEL_62;
          }
        }

        else
        {
          if (v25 >= *(v73 + 16))
          {
            goto LABEL_67;
          }

          v26 = *(a1 + 8 * v25 + 32);
          v27 = v25 + 1;
          if (__OFADD__(v25, 1))
          {
LABEL_62:
            __break(1u);
            goto LABEL_63;
          }
        }

        v28 = v26;
        v7 = sub_1005E45B0([v28 remObjectID]);
        v77 = v27;

        v29 = *(v5 + 48);
        if ((v29 & 0xC000000000000001) != 0)
        {
          if (v29 < 0)
          {
            v8 = *(v5 + 48);
          }

          else
          {
            v8 = (v29 & 0xFFFFFFFFFFFFFF8);
          }

          v30 = v7;

          v31 = __CocoaDictionary.lookup(_:)();
          if (!v31)
          {
            goto LABEL_48;
          }

          v79 = v31;
          sub_1000060C8(0, &qword_1009388B0, NSManagedObject_ptr);
          swift_dynamicCast();
          v8 = v78[0];
        }

        else
        {
          if (!*(v29 + 16))
          {
            goto LABEL_49;
          }

          v30 = v7;

          v32 = sub_10002B924(v30);
          if ((v33 & 1) == 0)
          {
LABEL_48:

LABEL_49:
            v7 = v7;
            v40 = Logger.logObject.getter();
            v41 = static os_log_type_t.info.getter();

            if (os_log_type_enabled(v40, v41))
            {
              v8 = swift_slowAlloc();
              v42 = swift_slowAlloc();
              *v8 = 138543362;
              *(v8 + 4) = v7;
              *v42 = v7;
              v7 = v7;
              _os_log_impl(&_mh_execute_header, v40, v41, "Skipping afterSaveAction() since this ingestable is immutable and is not a new insertion {objectID: %{public}@}", v8, 0xCu);
              sub_1000050A4(v42, &unk_100938E70, &unk_100797230);
              v5 = v76;
            }

            else
            {
            }

            goto LABEL_29;
          }

          v8 = *(*(v29 + 56) + 8 * v32);
        }

        if (!v8)
        {
          goto LABEL_49;
        }

        if (!*(v70 + 16) || (v34 = sub_100393C74(v7), (v35 & 1) == 0))
        {
          v43 = v7;
          v7 = v71;

          v44 = Logger.logObject.getter();
          v45 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v44, v45))
          {
            v46 = swift_slowAlloc();
            v79 = swift_slowAlloc();
            *v46 = 136446466;
            v47 = *(v71 + 40);
            v80 = *(v71 + 24);
            v81[0] = v47;
            *(v81 + 14) = *(v71 + 54);
            sub_100009DAC(&v80, v78);
            v68 = v45;
            v48 = sub_1000063E8();
            v50 = v49;
            sub_1005812D4(&v80);
            v51 = sub_10000668C(v48, v50, &v79);

            *(v46 + 4) = v51;
            *(v46 + 12) = 2080;
            v52 = [v43 description];
            v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v7 = v53;

            v54 = sub_10000668C(v8, v7, &v79);

            *(v46 + 14) = v54;
            _os_log_impl(&_mh_execute_header, v44, v68, "Tried to perform after-save action with non-existent target object -- bail {author: %{public}s, cdObjectID: %s}", v46, 0x16u);
            swift_arrayDestroy();
          }

          else
          {
          }

          v5 = v76;
          goto LABEL_29;
        }

        v36 = *(*(v70 + 56) + 8 * v34);
        v69 = v36;
        if (!*(*(v5 + 56) + 16))
        {
          break;
        }

        v8 = v7;
        v37 = v36;

        sub_10002B924(v8);
        v39 = v38;

        if ((v39 & 1) == 0)
        {
          goto LABEL_56;
        }

        v5 = v76;
LABEL_29:
        v4 = v72;
        ++v25;
        a1 = v84;
        if (v77 == v72)
        {
          goto LABEL_63;
        }
      }

      v55 = v36;
LABEL_56:
      v8 = v7;

      v7 = Logger.logObject.getter();
      v56 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v7, v56))
      {
        v57 = swift_slowAlloc();
        v79 = swift_slowAlloc();
        *v57 = 136446466;
        v58 = *(v71 + 40);
        v82 = *(v71 + 24);
        v83[0] = v58;
        *(v83 + 14) = *(v71 + 54);
        sub_100009DAC(&v82, v78);
        v59 = sub_1000063E8();
        v61 = v60;
        sub_1005812D4(&v82);
        v62 = sub_10000668C(v59, v61, &v79);

        *(v57 + 4) = v62;
        *(v57 + 12) = 2080;
        v63 = [v8 description];
        v64 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v67 = v8;
        v8 = v65;

        v66 = sub_10000668C(v64, v8, &v79);

        *(v57 + 14) = v66;
        _os_log_impl(&_mh_execute_header, v7, v56, "Could not find the changed keys & values to perform after-save action -- bail {author: %{public}s, cdObjectID: %s}", v57, 0x16u);
        swift_arrayDestroy();
      }

      else
      {
      }

      v5 = v76;
      goto LABEL_29;
    }

LABEL_63:
  }
}

id sub_1006AD658@<X0>(void **a1@<X0>, void **a2@<X8>)
{
  v2 = *a1;
  *a2 = *a1;
  a2[1] = &off_1008E46A0;
  return v2;
}

void sub_1006AD894(unint64_t a1, uint64_t a2, unint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t (*a6)(unint64_t))
{
  v8 = v6;
  v9 = a2;
  v12 = *(a2 + 16);
  v11 = *(a2 + 24);
  if (qword_100936008 != -1)
  {
    goto LABEL_69;
  }

LABEL_2:
  v13 = type metadata accessor for Logger();
  sub_100006654(v13, qword_100945730);

  v14 = Logger.logObject.getter();
  LOBYTE(v15) = static os_log_type_t.info.getter();

  v16 = os_log_type_enabled(v14, v15);
  v17 = a1 >> 62;
  v78 = v9;
  v88 = a1;
  v76 = a1 >> 62;
  v74 = v8;
  if (v16)
  {
    v79 = v12;
    v12 = swift_slowAlloc();
    v82[0] = swift_slowAlloc();
    *v12 = 136446978;
    *(v12 + 4) = sub_10000668C(0x7661537265746661, 0xEF6E6F6974634165, v82);
    *(v12 + 6) = 2048;
    if (!v17)
    {
      v18 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_5;
    }

    goto LABEL_72;
  }

  v11 = v8;
  while (1)
  {
    v15 = v17 ? _CocoaArrayWrapper.endIndex.getter() : *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v8 = _swiftEmptyArrayStorage;
    if (!v15)
    {
      break;
    }

    v82[0] = _swiftEmptyArrayStorage;
    v14 = v82;
    specialized ContiguousArray.reserveCapacity(_:)();
    if ((v15 & 0x8000000000000000) == 0)
    {
      v11 = 0;
      v12 = (a1 & 0xC000000000000001);
      v79 = a1 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        a1 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        if (v12)
        {
          v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v11 >= *(v79 + 16))
          {
            goto LABEL_67;
          }

          v24 = *(v88 + 8 * v11 + 32);
        }

        v25 = v24;
        v8 = sub_1005E3810([v24 remObjectID], a3, a4);

        if (v7)
        {

          return;
        }

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v9 = *(v82[0] + 16);
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        ++v11;
        if (a1 == v15)
        {
          v8 = v82[0];
          v26 = a5;
          v9 = v78;
          v17 = v76;
          goto LABEL_21;
        }
      }

      __break(1u);
LABEL_67:
      __break(1u);
LABEL_68:
      __break(1u);
LABEL_69:
      swift_once();
      goto LABEL_2;
    }

    __break(1u);
LABEL_72:
    v18 = _CocoaArrayWrapper.endIndex.getter();
LABEL_5:
    *(v12 + 14) = v18;

    *(v12 + 11) = 2082;
    sub_1000060C8(0, a3, a4);
    v19 = [swift_getObjCClassFromMetadata() description];
    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v21;

    v23 = sub_10000668C(v20, v22, v82);
    a1 = v88;

    *(v12 + 3) = v23;
    *(v12 + 16) = 2082;
    *(v12 + 34) = sub_10000668C(v79, v11, v82);
    _os_log_impl(&_mh_execute_header, v14, v15, "[%{public}s] Processing changed ingestables {count: %ld, CDType: %{public}s, accountIdentifier: %{public}s}", v12, 0x2Au);
    swift_arrayDestroy();

    v11 = v74;
    v9 = v78;
    v17 = v76;
  }

  v26 = a5;
LABEL_21:
  v27 = v26(v8, v9);

  if (!v7)
  {
    v28 = v88;
    if (v17)
    {
      v29 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v29 = *((v88 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v72 = v27;
    swift_beginAccess();
    swift_beginAccess();
    if (v29)
    {
      v11 = 0;
      a5 = v28 & 0xFFFFFFFFFFFFFF8;
      v77 = v28 & 0xC000000000000001;
      do
      {
        if (v77)
        {
          v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v31 = v11 + 1;
          if (__OFADD__(v11, 1))
          {
            goto LABEL_63;
          }
        }

        else
        {
          if (v11 >= *(a5 + 16))
          {
            goto LABEL_68;
          }

          v30 = *(v28 + 8 * v11 + 32);
          v31 = v11 + 1;
          if (__OFADD__(v11, 1))
          {
LABEL_63:
            __break(1u);
            break;
          }
        }

        v32 = v30;
        a1 = sub_1005E3810([v32 remObjectID], a3, a4);
        v79 = v31;

        v33 = *(v9 + 48);
        if ((v33 & 0xC000000000000001) != 0)
        {
          if (v33 < 0)
          {
            v8 = *(v9 + 48);
          }

          else
          {
            v8 = v33 & 0xFFFFFFFFFFFFFF8;
          }

          v34 = a1;

          v35 = __CocoaDictionary.lookup(_:)();
          if (!v35)
          {
            goto LABEL_46;
          }

          v83 = v35;
          sub_1000060C8(0, &qword_1009388B0, NSManagedObject_ptr);
          swift_dynamicCast();
          v8 = v82[0];
        }

        else
        {
          if (!*(v33 + 16))
          {
            goto LABEL_47;
          }

          v34 = a1;

          v36 = sub_10002B924(v34);
          if ((v37 & 1) == 0)
          {
LABEL_46:

LABEL_47:
            v12 = a1;
            v42 = Logger.logObject.getter();
            a1 = static os_log_type_t.info.getter();

            if (!os_log_type_enabled(v42, a1))
            {

LABEL_54:
              goto LABEL_55;
            }

            v8 = swift_slowAlloc();
            v43 = swift_slowAlloc();
            *v8 = 138543362;
            *(v8 + 4) = v12;
            *v43 = v12;
            v12 = v12;
            _os_log_impl(&_mh_execute_header, v42, a1, "Skipping afterSaveAction() since this ingestable is immutable and is not a new insertion {objectID: %{public}@}", v8, 0xCu);
            sub_1000050A4(v43, &unk_100938E70, &unk_100797230);

LABEL_53:
            goto LABEL_54;
          }

          v8 = *(*(v33 + 56) + 8 * v36);
        }

        if (!v8)
        {
          goto LABEL_47;
        }

        if (!*(v72 + 16) || (v38 = a6(a1), (v39 & 1) == 0))
        {
          v44 = a1;
          v8 = v74;

          v12 = Logger.logObject.getter();
          v45 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v12, v45))
          {
            a1 = swift_slowAlloc();
            v83 = swift_slowAlloc();
            *a1 = 136446466;
            v46 = *(v74 + 40);
            v84 = *(v74 + 24);
            v85[0] = v46;
            *(v85 + 14) = *(v74 + 54);
            sub_100009DAC(&v84, v82);
            v69 = v45;
            v47 = sub_1000063E8();
            v49 = v48;
            sub_1005812D4(&v84);
            v50 = sub_10000668C(v47, v49, &v83);

            *(a1 + 4) = v50;
            *(a1 + 12) = 2080;
            v51 = [v44 description];
            v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v67 = v44;
            v53 = v52;

            v54 = sub_10000668C(v8, v53, &v83);

            *(a1 + 14) = v54;
            _os_log_impl(&_mh_execute_header, v12, v69, "Tried to perform after-save action with non-existent target object -- bail {author: %{public}s, cdObjectID: %s}", a1, 0x16u);
            swift_arrayDestroy();

            goto LABEL_54;
          }

          goto LABEL_53;
        }

        v40 = *(*(v72 + 56) + 8 * v38);
        if (!*(*(v78 + 56) + 16))
        {
          v55 = v40;
LABEL_58:
          v12 = a1;
          v8 = v74;

          a1 = Logger.logObject.getter();
          v56 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(a1, v56))
          {
            v71 = v12;
            v12 = swift_slowAlloc();
            v83 = swift_slowAlloc();
            *v12 = 136446466;
            v57 = *(v74 + 40);
            v86 = *(v74 + 24);
            v87[0] = v57;
            *(v87 + 14) = *(v74 + 54);
            sub_100009DAC(&v86, v82);
            v66 = v56;
            v58 = sub_1000063E8();
            v60 = v59;
            sub_1005812D4(&v86);
            v61 = sub_10000668C(v58, v60, &v83);

            *(v12 + 4) = v61;
            *(v12 + 6) = 2080;
            v62 = [v71 description];
            v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v68 = v40;
            v64 = v63;

            v65 = sub_10000668C(v8, v64, &v83);

            *(v12 + 14) = v65;
            _os_log_impl(&_mh_execute_header, a1, v66, "Could not find the changed keys & values to perform after-save action -- bail {author: %{public}s, cdObjectID: %s}", v12, 0x16u);
            swift_arrayDestroy();
          }

          else
          {
          }

          goto LABEL_55;
        }

        v12 = a1;
        v70 = v40;

        sub_10002B924(v12);
        v8 = v41;

        if ((v8 & 1) == 0)
        {
          goto LABEL_58;
        }

LABEL_55:
        v9 = v78;
        v28 = v88;
        ++v11;
      }

      while (v79 != v29);
    }
  }
}

void sub_1006AE350(unint64_t a1, uint64_t a2, unint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t (*a6)(unint64_t))
{
  v8 = v6;
  v9 = a2;
  v12 = *(a2 + 16);
  v11 = *(a2 + 24);
  if (qword_100936008 != -1)
  {
    goto LABEL_72;
  }

LABEL_2:
  v13 = type metadata accessor for Logger();
  sub_100006654(v13, qword_100945730);

  v14 = Logger.logObject.getter();
  LOBYTE(v15) = static os_log_type_t.info.getter();

  v16 = os_log_type_enabled(v14, v15);
  v17 = a1 >> 62;
  v79 = v9;
  v89 = a1;
  v77 = a1 >> 62;
  v75 = v8;
  if (v16)
  {
    v80 = v12;
    v12 = swift_slowAlloc();
    v83[0] = swift_slowAlloc();
    *v12 = 136446978;
    *(v12 + 4) = sub_10000668C(0x7661537265746661, 0xEF6E6F6974634165, v83);
    *(v12 + 6) = 2048;
    if (!v17)
    {
      v18 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_5;
    }

    goto LABEL_75;
  }

  v11 = v8;
  while (1)
  {
    v15 = v17 ? _CocoaArrayWrapper.endIndex.getter() : *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v8 = _swiftEmptyArrayStorage;
    if (!v15)
    {
      break;
    }

    v83[0] = _swiftEmptyArrayStorage;
    v14 = v83;
    specialized ContiguousArray.reserveCapacity(_:)();
    if ((v15 & 0x8000000000000000) == 0)
    {
      v11 = 0;
      v12 = (a1 & 0xC000000000000001);
      v80 = a1 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        a1 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        if (v12)
        {
          v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v11 >= *(v80 + 16))
          {
            goto LABEL_70;
          }

          v24 = *(v89 + 8 * v11 + 32);
        }

        v25 = v24;
        v8 = sub_1005E3810([v24 remObjectID], a3, a4);

        if (v7)
        {

          return;
        }

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v9 = *(v83[0] + 16);
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        ++v11;
        if (a1 == v15)
        {
          v8 = v83[0];
          v26 = a5;
          v9 = v79;
          v17 = v77;
          goto LABEL_21;
        }
      }

      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
LABEL_72:
      swift_once();
      goto LABEL_2;
    }

    __break(1u);
LABEL_75:
    v18 = _CocoaArrayWrapper.endIndex.getter();
LABEL_5:
    *(v12 + 14) = v18;

    *(v12 + 11) = 2082;
    sub_1000060C8(0, a3, a4);
    v19 = [swift_getObjCClassFromMetadata() description];
    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v21;

    v23 = sub_10000668C(v20, v22, v83);
    a1 = v89;

    *(v12 + 3) = v23;
    *(v12 + 16) = 2082;
    *(v12 + 34) = sub_10000668C(v80, v11, v83);
    _os_log_impl(&_mh_execute_header, v14, v15, "[%{public}s] Processing changed ingestables {count: %ld, CDType: %{public}s, accountIdentifier: %{public}s}", v12, 0x2Au);
    swift_arrayDestroy();

    v11 = v75;
    v9 = v79;
    v17 = v77;
  }

  v26 = a5;
LABEL_21:
  v27 = v26(v8, v9);

  if (!v7)
  {
    v28 = v89;
    if (v17)
    {
      v29 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v29 = *((v89 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v73 = v27;
    swift_beginAccess();
    swift_beginAccess();
    if (v29)
    {
      v11 = 0;
      a5 = v28 & 0xFFFFFFFFFFFFFF8;
      v78 = v28 & 0xC000000000000001;
      do
      {
        if (v78)
        {
          v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v31 = v11 + 1;
          if (__OFADD__(v11, 1))
          {
            goto LABEL_66;
          }
        }

        else
        {
          if (v11 >= *(a5 + 16))
          {
            goto LABEL_71;
          }

          v30 = *(v28 + 8 * v11 + 32);
          v31 = v11 + 1;
          if (__OFADD__(v11, 1))
          {
LABEL_66:
            __break(1u);
            break;
          }
        }

        v32 = v30;
        a1 = sub_1005E3810([v32 remObjectID], a3, a4);
        v80 = v31;

        v33 = *(v9 + 48);
        if ((v33 & 0xC000000000000001) != 0)
        {
          if (v33 < 0)
          {
            v8 = *(v9 + 48);
          }

          else
          {
            v8 = (v33 & 0xFFFFFFFFFFFFFF8);
          }

          v34 = a1;

          v35 = __CocoaDictionary.lookup(_:)();
          if (!v35)
          {
            goto LABEL_46;
          }

          v84 = v35;
          sub_1000060C8(0, &qword_1009388B0, NSManagedObject_ptr);
          swift_dynamicCast();
          v8 = v83[0];
        }

        else
        {
          if (!*(v33 + 16))
          {
            goto LABEL_47;
          }

          v34 = a1;

          v36 = sub_10002B924(v34);
          if ((v37 & 1) == 0)
          {
LABEL_46:

LABEL_47:
            v12 = a1;
            v43 = Logger.logObject.getter();
            a1 = static os_log_type_t.info.getter();

            if (!os_log_type_enabled(v43, a1))
            {

LABEL_54:
              goto LABEL_55;
            }

            v8 = swift_slowAlloc();
            v44 = swift_slowAlloc();
            *v8 = 138543362;
            *(v8 + 4) = v12;
            *v44 = v12;
            v12 = v12;
            _os_log_impl(&_mh_execute_header, v43, a1, "Skipping afterSaveAction() since this ingestable is immutable and is not a new insertion {objectID: %{public}@}", v8, 0xCu);
            sub_1000050A4(v44, &unk_100938E70, &unk_100797230);

LABEL_53:
            goto LABEL_54;
          }

          v8 = *(*(v33 + 56) + 8 * v36);
        }

        if (!v8)
        {
          goto LABEL_47;
        }

        if (!*(v73 + 16) || (v38 = a6(a1), (v39 & 1) == 0))
        {
          v45 = a1;
          v8 = v75;

          v12 = Logger.logObject.getter();
          v46 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v12, v46))
          {
            a1 = swift_slowAlloc();
            v84 = swift_slowAlloc();
            *a1 = 136446466;
            v47 = *(v75 + 5);
            v85 = *(v75 + 3);
            v86[0] = v47;
            *(v86 + 14) = *(v75 + 54);
            sub_100009DAC(&v85, v83);
            v71 = v46;
            v48 = sub_1000063E8();
            v50 = v49;
            sub_1005812D4(&v85);
            v51 = sub_10000668C(v48, v50, &v84);

            *(a1 + 4) = v51;
            *(a1 + 12) = 2080;
            v52 = [v45 description];
            v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v69 = v45;
            v54 = v53;

            v55 = sub_10000668C(v8, v54, &v84);

            *(a1 + 14) = v55;
            _os_log_impl(&_mh_execute_header, v12, v71, "Tried to perform after-save action with non-existent target object -- bail {author: %{public}s, cdObjectID: %s}", a1, 0x16u);
            swift_arrayDestroy();

            goto LABEL_54;
          }

          goto LABEL_53;
        }

        v40 = *(*(v73 + 56) + 8 * v38);
        v9 = v79;
        v72 = v40;
        if (!*(*(v79 + 56) + 16))
        {
          v56 = v40;
LABEL_60:
          v12 = a1;
          v8 = v75;

          a1 = Logger.logObject.getter();
          v57 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(a1, v57))
          {
            v58 = v12;
            v70 = v12;
            v12 = swift_slowAlloc();
            v84 = swift_slowAlloc();
            *v12 = 136446466;
            v59 = *(v75 + 5);
            v87 = *(v75 + 3);
            v88[0] = v59;
            *(v88 + 14) = *(v75 + 54);
            sub_100009DAC(&v87, v83);
            v68 = v57;
            v60 = sub_1000063E8();
            v62 = v61;
            sub_1005812D4(&v87);
            v63 = sub_10000668C(v60, v62, &v84);

            *(v12 + 4) = v63;
            *(v12 + 6) = 2080;
            v64 = [v58 description];
            v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v66 = v65;

            v67 = sub_10000668C(v8, v66, &v84);

            *(v12 + 14) = v67;
            _os_log_impl(&_mh_execute_header, a1, v68, "Could not find the changed keys & values to perform after-save action -- bail {author: %{public}s, cdObjectID: %s}", v12, 0x16u);
            swift_arrayDestroy();

            v9 = v79;
          }

          else
          {
          }

          goto LABEL_56;
        }

        v12 = a1;
        v8 = v40;

        sub_10002B924(v12);
        v42 = v41;

        if ((v42 & 1) == 0)
        {

          v9 = v79;
          goto LABEL_60;
        }

LABEL_55:
        v9 = v79;
LABEL_56:
        v28 = v89;
        ++v11;
      }

      while (v80 != v29);
    }
  }
}

id sub_1006AEE1C@<X0>(void **a1@<X0>, void **a2@<X8>)
{
  v2 = *a1;
  *a2 = *a1;
  a2[1] = &off_1008E4790;
  return v2;
}

id sub_1006AEF24@<X0>(void **a1@<X0>, void **a2@<X8>)
{
  v2 = *a1;
  *a2 = *a1;
  a2[1] = &off_1008E47B8;
  return v2;
}

id sub_1006AF018@<X0>(void **a1@<X0>, void **a2@<X8>)
{
  v2 = *a1;
  *a2 = *a1;
  a2[1] = &off_1008E47E0;
  return v2;
}

id sub_1006AF10C@<X0>(void **a1@<X0>, void **a2@<X8>)
{
  v2 = *a1;
  *a2 = *a1;
  a2[1] = &off_1008E4808;
  return v2;
}

id sub_1006AF200@<X0>(void **a1@<X0>, void **a2@<X8>)
{
  v2 = *a1;
  *a2 = *a1;
  a2[1] = &off_1008E4830;
  return v2;
}

id sub_1006AF308@<X0>(void **a1@<X0>, void **a2@<X8>)
{
  v2 = *a1;
  *a2 = *a1;
  a2[1] = &off_1008E46C8;
  return v2;
}

id sub_1006AF410@<X0>(void **a1@<X0>, void **a2@<X8>)
{
  v2 = *a1;
  *a2 = *a1;
  a2[1] = &off_1008E4858;
  return v2;
}

void *sub_1006AF588(void *a1, uint64_t a2)
{
  v3 = [a1 remObjectID];
  v4 = v3;
  if (*(a2 + 16) && (v5 = sub_10002B924(v3), (v6 & 1) != 0))
  {
    v7 = *(*(a2 + 56) + 8 * v5);
  }

  else
  {

    v7 = 0;
  }

  v8 = sub_1005F4B38(v7, &off_1008DF1C0, sub_1003663AC, &qword_10094F5D8, &unk_1007B50F0);

  return v8;
}

uint64_t sub_1006AF85C@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t *a3@<X8>)
{
  result = a2(*a1);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

id sub_1006AF958@<X0>(void **a1@<X0>, void **a2@<X8>)
{
  v2 = *a1;
  *a2 = *a1;
  a2[1] = &off_1008E4768;
  return v2;
}

id sub_1006AFA4C@<X0>(void **a1@<X0>, void **a2@<X8>)
{
  v2 = *a1;
  *a2 = *a1;
  a2[1] = &off_1008E4740;
  return v2;
}

id sub_1006AFB40@<X0>(void **a1@<X0>, void **a2@<X8>)
{
  v2 = *a1;
  *a2 = *a1;
  a2[1] = &off_1008E4718;
  return v2;
}

id sub_1006AFC34@<X0>(void **a1@<X0>, void **a2@<X8>)
{
  v2 = *a1;
  *a2 = *a1;
  a2[1] = &off_1008E46F0;
  return v2;
}

uint64_t sub_1006AFC88()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  v5 = v0[6];

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1006AFD60()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t getEnumTagSinglePayload for REMListStorageCDIngestor.ValueKey(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xD7)
  {
    goto LABEL_17;
  }

  if (a2 + 41 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 41) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 41;
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

      return (*a1 | (v4 << 8)) - 41;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 41;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x2A;
  v8 = v6 - 42;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for REMListStorageCDIngestor.ValueKey(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 41 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 41) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xD7)
  {
    v4 = 0;
  }

  if (a2 > 0xD6)
  {
    v5 = ((a2 - 215) >> 8) + 1;
    *result = a2 + 41;
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
    *result = a2 + 41;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1006AFFF4()
{
  result = qword_10094F868;
  if (!qword_10094F868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094F868);
  }

  return result;
}

unint64_t sub_1006B0090()
{
  result = qword_10094F880;
  if (!qword_10094F880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094F880);
  }

  return result;
}

unint64_t sub_1006B012C()
{
  result = qword_10094F898;
  if (!qword_10094F898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094F898);
  }

  return result;
}

unint64_t sub_1006B01C8()
{
  result = qword_10094F8B0;
  if (!qword_10094F8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094F8B0);
  }

  return result;
}

double sub_1006B038C()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v23 - v12;
  v14 = [v1 identifier];
  if (v14)
  {
    v15 = v14;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v3 + 56))(v11, 0, 1, v2);
  }

  else
  {
    (*(v3 + 56))(v11, 1, 1, v2);
  }

  sub_100100FB4(v11, v13);
  if ((*(v3 + 48))(v13, 1, v2))
  {
    sub_1000050A4(v13, &unk_100939D90, "8\n\r");
    v16 = 0;
    v17 = 0;
  }

  else
  {
    (*(v3 + 16))(v6, v13, v2);
    sub_1000050A4(v13, &unk_100939D90, "8\n\r");
    v16 = UUID.uuidString.getter();
    v17 = v18;
    (*(v3 + 8))(v6, v2);
  }

  v19 = [v1 accountTypeHost];
  sub_10059EB10(v24);
  type metadata accessor for RDManualSortIDPersistenceHost();
  v20 = swift_allocObject();
  *(v20 + 16) = v16;
  *(v20 + 24) = v17;
  *(v20 + 32) = v19;
  result = *v24;
  v22 = v24[1];
  *(v20 + 40) = v24[0];
  *(v20 + 56) = v22;
  *(v20 + 72) = v25;
  return result;
}

uint64_t sub_1006B0620()
{
  v1 = *(v0 + 24);

  sub_1000050A4(v0 + 40, &qword_100947E90, &qword_10079B250);

  return swift_deallocClassInstance();
}

Swift::Int sub_1006B069C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (*(v1 + 24))
  {
    v2 = *(v1 + 16);
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return Hasher._finalize()();
}

void sub_1006B0718()
{
  if (*(*v0 + 24))
  {
    v1 = *(*v0 + 16);
    Hasher._combine(_:)(1u);

    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

Swift::Int sub_1006B0794()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (*(v1 + 24))
  {
    v2 = *(v1 + 16);
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return Hasher._finalize()();
}

uint64_t sub_1006B080C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(*a1 + 24);
  v5 = *(v3 + 24);
  result = (v4 | v5) == 0;
  if (v4)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    if (*(v2 + 16) == *(v3 + 16) && v4 == v5)
    {
      return 1;
    }

    else
    {
      return _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  return result;
}

unint64_t sub_1006B085C()
{
  result = qword_10094F970;
  if (!qword_10094F970)
  {
    type metadata accessor for RDManualSortIDPersistenceHost();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094F970);
  }

  return result;
}

uint64_t sub_1006B08B0(void *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  *(v4 + 24) = a1;
  v5 = objc_allocWithZone(REMAccountTypeHost);
  v6 = a1;
  v7 = [v5 initWithType:a2];
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1006B10D8;
  *(v8 + 24) = v4;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_1006B10E0;
  *(v9 + 24) = v8;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1006B10D8;
  *(v10 + 24) = v4;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_1006B1584;
  *(v11 + 24) = v10;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_1006B10D8;
  *(v12 + 24) = v4;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_1006B1584;
  *(v13 + 24) = v12;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_1006B10D8;
  *(v14 + 24) = v4;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_1006B1584;
  *(v15 + 24) = v14;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_1006B10D8;
  *(v16 + 24) = v4;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_1006B1584;
  *(v17 + 24) = v16;
  *(swift_allocObject() + 16) = v6;
  swift_retain_n();
  v18 = v6;
  REMAccountTypeHost.switchByAccountType<A>(primaryCloudKitBlock:nonPrimaryCloudKitBlock:calDavBlock:exchangeBlock:localBlock:localInternalBlock:anyCloudKitBlock:anyCloudAccountBlock:)();

  return v20 & 1;
}

uint64_t sub_1006B0C2C(uint64_t a1)
{
  v1 = [objc_allocWithZone(REMAccountCapabilities) initWithAccountType:a1];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;
  if (v2 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v4 == v5)
  {
    goto LABEL_14;
  }

  v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v7)
  {
LABEL_6:

    return 1;
  }

  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  if (v8 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v10 == v11)
  {
    goto LABEL_14;
  }

  v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v13)
  {
    goto LABEL_6;
  }

  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;
  if (v14 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v16 == v17)
  {
    goto LABEL_14;
  }

  v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v19)
  {
    goto LABEL_6;
  }

  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;
  if (v20 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v22 == v23)
  {
LABEL_14:

    return 1;
  }

  v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v24)
  {
    goto LABEL_6;
  }

  v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v27 = v26;
  if (v25 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v27 == v28)
  {

LABEL_24:
    v30 = [v1 supportsFlagged];
    goto LABEL_25;
  }

  v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v29)
  {
    goto LABEL_24;
  }

  v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v34 = v33;
  if (v32 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v34 == v35)
  {

LABEL_30:
    v30 = [v1 supportsAssignments];
    goto LABEL_25;
  }

  v36 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v36)
  {
    goto LABEL_30;
  }

  v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v39 = v38;
  if (v37 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v39 == v40)
  {

    return 0;
  }

  else
  {
    v41 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v41 & 1) == 0)
    {
      v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v44 = v43;
      if (v42 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v44 == v45)
      {
      }

      else
      {
        v46 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v46 & 1) == 0)
        {
          v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v49 = v48;
          if (v47 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v49 == v50)
          {
          }

          else
          {
            v51 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if ((v51 & 1) == 0)
            {
              goto LABEL_6;
            }
          }

          v30 = [v1 supportsHashtags];
          goto LABEL_25;
        }
      }

      v30 = [v1 supportsCustomSmartLists];
LABEL_25:
      v31 = v30;

      return v31;
    }

    return 0;
  }
}

uint64_t sub_1006B10E0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1() & 1;
}

uint64_t sub_1006B112C@<X0>(_BYTE *a1@<X8>)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  result = v4();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1006B1160@<X0>(char *a1@<X8>)
{
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;
  if (v2 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v4 == v5)
  {
    goto LABEL_13;
  }

  v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v7)
  {
    goto LABEL_14;
  }

  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  if (v9 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v11 == v12)
  {
    goto LABEL_13;
  }

  v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v14)
  {
    goto LABEL_14;
  }

  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;
  if (v15 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v17 == v18)
  {
    goto LABEL_13;
  }

  v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v20)
  {
    goto LABEL_14;
  }

  v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = v22;
  if (v21 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v23 == v24)
  {
    goto LABEL_13;
  }

  v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v25)
  {
    goto LABEL_14;
  }

  v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v28 = v27;
  if (v26 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v28 == v29)
  {
    goto LABEL_13;
  }

  v30 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v30)
  {
    goto LABEL_14;
  }

  v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v33 = v32;
  if (v31 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v33 == v34)
  {
    goto LABEL_13;
  }

  v35 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v35)
  {
    goto LABEL_14;
  }

  v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v38 = v37;
  if (v36 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v38 == v39)
  {
    goto LABEL_13;
  }

  v40 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v40)
  {
    goto LABEL_14;
  }

  v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v43 = v42;
  if (v41 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v43 == v44)
  {
LABEL_13:

    goto LABEL_14;
  }

  v45 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v45 & 1) == 0)
  {
    v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v48 = v47;
    if (v46 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v48 == v49)
    {

      v19 = 1;
      goto LABEL_15;
    }

    v50 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v50)
    {
      v19 = 1;
      goto LABEL_15;
    }
  }

LABEL_14:
  v19 = 0;
LABEL_15:
  *a1 = v19;
  return result;
}

uint64_t sub_1006B159C()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_10094F978);
  v1 = sub_100006654(v0, qword_10094F978);
  if (qword_100936498 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100975110);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1006B1664(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(a1);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v8 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(AssociatedTypeWitness);
  v15 = &v18 - v14;
  (*(v4 + 16))(v7, a1, a2, v13);
  dispatch thunk of Sequence.makeIterator()();
  swift_getAssociatedConformanceWitness();
  while (1)
  {
    dispatch thunk of IteratorProtocol.next()();
    v16 = v19;
    if (!v19)
    {
      break;
    }

    sub_1006B184C(v19);
  }

  return (*(v11 + 8))(v15, AssociatedTypeWitness);
}

id sub_1006B184C(void *a1)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v80 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v80 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v13 = __chkstk_darwin(v12).n128_u64[0];
  v15 = &v80 - v14;
  v16 = [a1 ckIdentifier];
  v86 = a1;
  v87 = v1;
  if (v16)
  {
    v17 = v16;
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;

    v96 = v18;
    v97 = v20;
    v21 = sub_1006B20F0(v18, v20);
    v23 = v21;
    if (v21 >> 62)
    {
      goto LABEL_43;
    }

    for (i = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v25 = 0;
      v85 = v23 & 0xC000000000000001;
      v82 = v23 & 0xFFFFFFFFFFFFFF8;
      v81 = v23 + 32;
      *&v22 = 136446722;
      v90 = v22;
      v84 = v23;
      v83 = i;
      while (1)
      {
        if (v85)
        {
          v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v25 >= *(v82 + 16))
          {
            goto LABEL_42;
          }

          v26 = *(v81 + 8 * v25);
        }

        v98 = v26;
        v27 = __OFADD__(v25, 1);
        v28 = v25 + 1;
        if (v27)
        {
          break;
        }

        v88 = v28;
        v89 = sub_1006B247C(v98, v96, v97);
        v29 = v89[2];
        if (v29)
        {
          v95 = *(v87 + 16);
          v30 = (v89 + 4);
          v94 = type metadata accessor for RDSharedInlineTagAutoConvertStoreHandler.ReminderFieldConverter();
          while (1)
          {
            v31 = *v30;
            v32 = v94;
            v33 = objc_allocWithZone(v94);
            v34 = v97;
            v35 = v98;
            *&v33[OBJC_IVAR____TtCC7remindd40RDSharedInlineTagAutoConvertStoreHandler22ReminderFieldConverter_reminder] = v98;
            v33[OBJC_IVAR____TtCC7remindd40RDSharedInlineTagAutoConvertStoreHandler22ReminderFieldConverter_field] = v31;
            v37 = v95;
            v36 = v96;
            *&v33[OBJC_IVAR____TtCC7remindd40RDSharedInlineTagAutoConvertStoreHandler22ReminderFieldConverter_storeObjectContext] = v95;
            v38 = &v33[OBJC_IVAR____TtCC7remindd40RDSharedInlineTagAutoConvertStoreHandler22ReminderFieldConverter_onlySpecificCanonicalName];
            *v38 = v36;
            v38[1] = v34;
            v39 = objc_allocWithZone(RDPersistentStoreLookupForREMCDObject);
            v40 = v35;

            v41 = v37;
            v42 = [v39 init:v40];
            *&v33[OBJC_IVAR____TtCC7remindd40RDSharedInlineTagAutoConvertStoreHandler22ReminderFieldConverter_persistentStoreLookup] = v42;
            v103.receiver = v33;
            v103.super_class = v32;
            v43 = objc_msgSendSuper2(&v103, "init");

            v45 = sub_1001B5774();
            v47 = v46;
            v48 = v44;
            v49 = v44;
            if (!(v44 >> 6))
            {
              goto LABEL_18;
            }

            if (v44 >> 6 == 1)
            {
              break;
            }

LABEL_14:
            ++v30;
            if (!--v29)
            {
              goto LABEL_5;
            }
          }

          v49 = v44 & 0x3F;
LABEL_18:
          v93 = v49;
          v99 = v43;
          if (qword_1009366D0 != -1)
          {
            swift_once();
          }

          v50 = type metadata accessor for Logger();
          sub_100006654(v50, qword_10094F978);
          v51 = v40;
          sub_1001E8F50(v45, v47, v48);
          v52 = Logger.logObject.getter();
          v53 = static os_log_type_t.error.getter();

          sub_1001E8F6C(v45, v47, v48);
          if (os_log_type_enabled(v52, v53))
          {
            v92 = v53;
            v54 = swift_slowAlloc();
            v91 = swift_slowAlloc();
            v102 = v91;
            *v54 = v90;
            if (v31)
            {
              v55 = 0x7365746F6ELL;
            }

            else
            {
              v55 = 0x656C746974;
            }

            v56 = sub_10000668C(v55, 0xE500000000000000, &v102);

            *(v54 + 4) = v56;
            *(v54 + 12) = 2082;
            v57 = [v51 remObjectID];
            if (v57)
            {
              v58 = v57;
              v59 = [v57 description];

              v60 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v62 = v61;
            }

            else
            {
              v62 = 0xE300000000000000;
              v60 = 7104878;
            }

            v63 = sub_10000668C(v60, v62, &v102);

            *(v54 + 14) = v63;
            *(v54 + 22) = 2082;
            v100[0] = v45;
            v100[1] = v47;
            v101 = v93;
            sub_1001E8F88();
            v64 = Error.rem_errorDescription.getter();
            v66 = sub_10000668C(v64, v65, &v102);

            *(v54 + 24) = v66;
            sub_1001E8F6C(v45, v47, v48);
            _os_log_impl(&_mh_execute_header, v52, v92, "#️⃣ RDUserInitiatedHashtagLabelApprovalTagAutoConvertRunner: Error autoConverting %{public}s on reminder[%{public}s] {error: %{public}s}", v54, 0x20u);
            swift_arrayDestroy();
          }

          else
          {

            sub_1001E8F6C(v45, v47, v48);
          }

          goto LABEL_14;
        }

LABEL_5:

        v1 = v87;
        v25 = v88;
        a1 = v86;
        v23 = v84;
        if (v88 == v83)
        {
          goto LABEL_44;
        }
      }

      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      ;
    }

LABEL_44:
  }

  else
  {
    if (qword_1009366D0 != -1)
    {
      swift_once();
    }

    v67 = type metadata accessor for Logger();
    sub_100006654(v67, qword_10094F978);
    v68 = a1;
    v69 = Logger.logObject.getter();
    v70 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      v99 = swift_slowAlloc();
      v100[0] = v99;
      *v71 = 136446210;
      v72 = [v68 uuidForChangeTracking];
      if (v72)
      {
        v73 = v72;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        (*(v4 + 56))(v11, 0, 1, v3);
      }

      else
      {
        (*(v4 + 56))(v11, 1, 1, v3);
      }

      sub_100100FB4(v11, v15);
      if ((*(v4 + 48))(v15, 1, v3))
      {
        sub_1000050A4(v15, &unk_100939D90, "8\n\r");
        v74 = 0xE90000000000003ELL;
        v75 = 0x646975752D6F6E3CLL;
      }

      else
      {
        (*(v4 + 16))(v7, v15, v3);
        sub_1000050A4(v15, &unk_100939D90, "8\n\r");
        v76 = UUID.uuidString.getter();
        v74 = v77;
        (*(v4 + 8))(v7, v3);
        v75 = v76;
      }

      v78 = sub_10000668C(v75, v74, v100);

      *(v71 + 4) = v78;
      _os_log_impl(&_mh_execute_header, v69, v70, "#️⃣ RDUserInitiatedHashtagLabelApprovalTagAutoConvertRunner: activity[%{public}s] has nil ckIdentifier. Deleting without further action", v71, 0xCu);
      sub_10000607C(v99);

      a1 = v86;
    }

    else
    {
    }

    v1 = v87;
  }

  return [*(v1 + 16) deleteObject:a1];
}

uint64_t sub_1006B20F0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = _s10PredicatesOMa(0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v9 = a1;
  *(v9 + 1) = a2;
  v9[16] = 1;
  swift_storeEnumTagMultiPayload();

  v10 = sub_100043AA8();
  sub_1000513B4(v9);
  sub_100345DB0();
  v11 = [objc_allocWithZone(NSFetchRequest) init];
  v12 = [swift_getObjCClassFromMetadata() entity];
  [v11 setEntity:v12];

  [v11 setAffectedStores:0];
  [v11 setPredicate:v10];

  v13 = *(v3 + 16);
  v14 = NSManagedObjectContext.fetch<A>(_:)();

  return v14;
}

uint64_t sub_1006B23FC()
{

  return swift_deallocClassInstance();
}

void *sub_1006B247C(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000F5104(&unk_10093F420, &unk_100797AE0);
  v7 = *(*(v6 - 8) + 64);
  *&v8 = __chkstk_darwin(v6 - 8).n128_u64[0];
  v10 = &v37 - v9;
  v11 = [a1 title];
  if (v11)
  {
    v12 = v11;
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    v40 = v13;
    v41 = v15;
    static Locale.current.getter();
    v16 = type metadata accessor for Locale();
    (*(*(v16 - 8) + 56))(v10, 0, 1, v16);
    sub_10013BCF4();
    v17 = StringProtocol.foldedStringForWriting(locale:)();
    v19 = v18;
    sub_1000050A4(v10, &unk_10093F420, &unk_100797AE0);

    v40 = v17;
    v41 = v19;
    v38 = a2;
    v39 = a3;
    LOBYTE(v17) = StringProtocol.contains<A>(_:)();

    v20 = _swiftEmptyArrayStorage;
    if (v17)
    {
      v42 = _swiftEmptyArrayStorage;
      sub_1002537E0(0, 1, 1);
      v20 = v42;
      v22 = v42[2];
      v21 = v42[3];
      if (v22 >= v21 >> 1)
      {
        sub_1002537E0((v21 > 1), v22 + 1, 1);
        v20 = v42;
      }

      v20[2] = v22 + 1;
      *(v20 + v22 + 32) = 0;
    }
  }

  else
  {
    v20 = _swiftEmptyArrayStorage;
  }

  v23 = [a1 notes];
  if (v23)
  {
    v24 = v23;
    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = v26;

    v40 = v25;
    v41 = v27;
    static Locale.current.getter();
    v28 = type metadata accessor for Locale();
    (*(*(v28 - 8) + 56))(v10, 0, 1, v28);
    sub_10013BCF4();
    v29 = StringProtocol.foldedStringForWriting(locale:)();
    v31 = v30;
    sub_1000050A4(v10, &unk_10093F420, &unk_100797AE0);

    v40 = v29;
    v41 = v31;
    v38 = a2;
    v39 = a3;
    v32 = StringProtocol.contains<A>(_:)();

    if (v32)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v42 = v20;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1002537E0(0, v20[2] + 1, 1);
        v20 = v42;
      }

      v35 = v20[2];
      v34 = v20[3];
      if (v35 >= v34 >> 1)
      {
        sub_1002537E0((v34 > 1), v35 + 1, 1);
        v20 = v42;
      }

      v20[2] = v35 + 1;
      *(v20 + v35 + 32) = 1;
    }
  }

  return v20;
}

unint64_t sub_1006B2804(void **a1)
{
  v2 = *a1;
  result = sub_10046D62C(*a1);
  if (!v1)
  {
    return sub_10046DCC8(v2);
  }

  return result;
}

void sub_1006B2870(void *a1, void *a2)
{
  sub_1000F5104(&qword_10094FA80, &qword_1007B57E0);
  v5 = String.init<A>(describing:)();
  sub_100728FE4(a1, v5, v6, a2);

  if (!v2)
  {
    v7 = [objc_opt_self() daemonUserDefaults];
    [v7 deletePreferredDefaultListObjectIDUrl];
  }
}

uint64_t sub_1006B2944(void *a1, void *a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  sub_1000F5104(a4, a5);
  v7 = String.init<A>(describing:)();
  sub_100728FE4(a1, v7, v8, a2);
}

id sub_1006B2A38(uint64_t a1)
{
  sub_1000F5104(&qword_10094FA58, &qword_1007B57C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007B57B0;
  *(inited + 32) = 0xD00000000000001ELL;
  *(inited + 40) = 0x80000001007FE830;
  *(inited + 48) = sub_1006B27E8;
  *(inited + 56) = 0;
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_1006B30D8;
  *(v4 + 24) = v3;
  *(inited + 64) = 0xD00000000000001DLL;
  *(inited + 72) = 0x80000001007FE850;
  *(inited + 80) = sub_1006B310C;
  *(inited + 88) = v4;
  *(inited + 96) = 0xD000000000000028;
  *(inited + 104) = 0x80000001007FE870;
  *(inited + 112) = sub_1006B2804;
  *(inited + 120) = 0;
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1006B3138;
  *(v6 + 24) = v5;
  *(inited + 128) = 0xD000000000000027;
  *(inited + 136) = 0x80000001007FE8A0;
  *(inited + 144) = sub_1006B3208;
  *(inited + 152) = v6;
  *(inited + 160) = 0xD000000000000039;
  *(inited + 168) = 0x80000001007FE8D0;
  *(inited + 176) = sub_1006B2838;
  *(inited + 184) = 0;
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1006B3154;
  *(v8 + 24) = v7;
  *(inited + 192) = 0xD000000000000038;
  *(inited + 200) = 0x80000001007FE910;
  *(inited + 208) = sub_1006B3208;
  *(inited + 216) = v8;
  *(inited + 224) = 0xD00000000000002CLL;
  *(inited + 232) = 0x80000001007FE950;
  *(inited + 240) = sub_1006B2854;
  *(inited + 248) = 0;
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1006B3188;
  *(v10 + 24) = v9;
  *(inited + 256) = 0x415F3532303276;
  *(inited + 264) = 0xE700000000000000;
  *(inited + 272) = sub_1006B3208;
  *(inited + 280) = v10;
  swift_bridgeObjectRetain_n();
  v32 = sub_100390BB4(inited);
  swift_setDeallocating();
  sub_1000F5104(&qword_10094FA60, &qword_1007B57C8);
  swift_arrayDestroy();
  sub_1006B31BC();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v31 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v34 = _swiftEmptyArrayStorage;
  sub_100026EF4(0, 17, 0);
  v12 = 0x80000001007FE950;
  v13 = 0x80000001007FE910;
  v14 = 0x80000001007FE8D0;
  v15 = 0x61656C65525F3376;
  v16 = 0;
  v17 = _swiftEmptyArrayStorage;
  do
  {
    v18 = 0x80000001007FE830;
    v19 = 0xD00000000000001ELL;
    switch(*(&off_1008E4190 + v16 + 32))
    {
      case 1:
        v18 = 0xE200000000000000;
        v19 = 12918;
        break;
      case 2:
        v18 = 0xE200000000000000;
        v19 = 13174;
        break;
      case 3:
        v19 = v15;
        v18 = 0xEF313230325F6573;
        break;
      case 4:
        v19 = v15 + 256;
        v18 = 0xEF323230325F6573;
        break;
      case 5:
        break;
      case 6:
        v19 = 0xD00000000000001DLL;
        v18 = 0x80000001007FE850;
        break;
      case 7:
        v18 = 0xE200000000000000;
        v19 = 14198;
        break;
      case 8:
        v18 = 0xE700000000000000;
        v19 = 0x435F3232303276;
        break;
      case 9:
        v18 = 0xE700000000000000;
        v19 = 0x415F3332303276;
        break;
      case 0xA:
        v19 = 0xD000000000000028;
        v18 = 0x80000001007FE870;
        break;
      case 0xB:
        v19 = 0xD000000000000027;
        v18 = 0x80000001007FE8A0;
        break;
      case 0xC:
        v19 = 0x696D5F3432303276;
        v18 = 0xEC00000041726F6ELL;
        break;
      case 0xD:
        v19 = 0xD000000000000039;
        v18 = v14;
        break;
      case 0xE:
        v19 = 0xD000000000000038;
        v18 = v13;
        break;
      case 0xF:
        v19 = 0xD00000000000002CLL;
        v18 = v12;
        break;
      case 0x10:
        v18 = 0xE700000000000000;
        v19 = 0x415F3532303276;
        break;
      default:
        v19 = 0;
        v18 = 0xE000000000000000;
        break;
    }

    v34 = v17;
    v21 = v17[2];
    v20 = v17[3];
    if (v21 >= v20 >> 1)
    {
      v28 = v12;
      v29 = v13;
      v23 = v15;
      v30 = v14;
      sub_100026EF4((v20 > 1), v21 + 1, 1);
      v12 = v28;
      v13 = v29;
      v14 = v30;
      v15 = v23;
      v17 = v34;
    }

    ++v16;
    v17[2] = v21 + 1;
    v22 = &v17[2 * v21];
    v22[4] = v19;
    v22[5] = v18;
  }

  while (v16 != 17);
  v24 = type metadata accessor for RDStagedLightweightCoreDataMigrationCoordinator();
  v25 = objc_allocWithZone(v24);
  *&v25[OBJC_IVAR____TtC7remindd47RDStagedLightweightCoreDataMigrationCoordinator_loadedManagedObjectModelByVersionIdentifier] = _swiftEmptyDictionarySingleton;
  v26 = &v25[OBJC_IVAR____TtC7remindd47RDStagedLightweightCoreDataMigrationCoordinator_modelName];
  strcpy(&v25[OBJC_IVAR____TtC7remindd47RDStagedLightweightCoreDataMigrationCoordinator_modelName], "ReminderData");
  v26[13] = 0;
  *(v26 + 7) = -5120;
  *&v25[OBJC_IVAR____TtC7remindd47RDStagedLightweightCoreDataMigrationCoordinator_bundle] = v31;
  *&v25[OBJC_IVAR____TtC7remindd47RDStagedLightweightCoreDataMigrationCoordinator_allModelVersionIdentifiers] = v17;
  *&v25[OBJC_IVAR____TtC7remindd47RDStagedLightweightCoreDataMigrationCoordinator_postMigrationDataUpdateByModelVersionIdentifier] = v32;
  v33.receiver = v25;
  v33.super_class = v24;
  return objc_msgSendSuper2(&v33, "init");
}

uint64_t sub_1006B310C(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

unint64_t sub_1006B31BC()
{
  result = qword_10094FA68;
  if (!qword_10094FA68)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10094FA68);
  }

  return result;
}

uint64_t sub_1006B3298()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_10094FA90);
  v1 = sub_100006654(v0, qword_10094FA90);
  if (qword_100936468 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100975080);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_1006B3360()
{
  result = [objc_opt_self() operationQueue];
  qword_10094FAA8 = result;
  return result;
}

unint64_t sub_1006B339C()
{
  _StringGuts.grow(_:)(31);

  String.append(_:)(*(v0 + qword_10094FAC8));
  v1._countAndFlagsBits = 0x746973796261622ELL;
  v1._object = 0xEB00000000726574;
  String.append(_:)(v1);
  return 0xD000000000000012;
}

id sub_1006B343C(void *a1)
{
  v1 = a1;
  sub_1006B339C();

  v2 = String._bridgeToObjectiveC()();

  return v2;
}

void sub_1006B34A4(void *a1, uint64_t a2)
{
  v11 = 0;
  v3 = [a1 existingObjectWithID:a2 error:&v11];
  v4 = v11;
  if (v3)
  {
    v5 = v3;
    type metadata accessor for REMCDOperationQueueItem();
    v6 = swift_dynamicCastClass();
    v7 = v4;
    if (v6)
    {
      [v6 setIsCompleted:1];
      v11 = 0;
      if ([a1 save:&v11])
      {
        v8 = v11;
      }

      else
      {
        v10 = v11;
        _convertNSErrorToError(_:)();

        swift_willThrow();
      }
    }
  }

  else
  {
    v9 = v11;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }
}

void sub_1006B35E0(void *a1)
{
  v1 = *((swift_isaMask & *a1) + 0x50);
  v2 = *((swift_isaMask & *a1) + 0x58);
  sub_1006B36DC();
}

uint64_t sub_1006B3620(uint64_t a1)
{
  v2 = *(a1 + qword_10094FAC8 + 8);

  v3 = *(a1 + qword_10094FAD0 + 8);

  v4 = *(a1 + qword_10094FAD8);

  v5 = *(a1 + qword_10094FAE0);

  return swift_unknownObjectRelease();
}

uint64_t sub_1006B370C(uint64_t a1, void *a2, int a3, void *a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  LODWORD(v60) = a3;
  v13 = type metadata accessor for DispatchWorkItemFlags();
  v65 = *(v13 - 8);
  v66 = v13;
  v14 = *(v65 + 64);
  __chkstk_darwin(v13);
  v62 = &v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS();
  v63 = *(v16 - 8);
  v64 = v16;
  v17 = *(v63 + 64);
  __chkstk_darwin(v16);
  v61 = &v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1009366E8 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  sub_100006654(v19, qword_10094FB70);

  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = a5;
    v24 = swift_slowAlloc();
    aBlock = v24;
    *v22 = 136446210;
    *(v22 + 4) = sub_10000668C(a1, a2, &aBlock);
    _os_log_impl(&_mh_execute_header, v20, v21, "RDAccountUtils: Updating account {accountID: %{public}s}", v22, 0xCu);
    sub_10000607C(v24);
    a5 = v23;
  }

  v25 = swift_allocObject();
  v25[2] = a4;
  v25[3] = a5;
  v25[4] = a6;
  v26 = objc_opt_self();

  v27 = a4;
  v28 = [v26 sharedInstance];
  v29 = [v28 accountStore];

  v30 = String._bridgeToObjectiveC()();
  v31 = [v29 accountWithIdentifier:v30];

  if (!v31)
  {
    v38 = objc_opt_self();
    aBlock = 0;
    v69 = 0xE000000000000000;
    _StringGuts.grow(_:)(66);
    v60 = v27;
    v39._object = 0x80000001007FECD0;
    v39._countAndFlagsBits = 0xD000000000000040;
    String.append(_:)(v39);
    v40._countAndFlagsBits = a1;
    v40._object = a2;
    String.append(_:)(v40);
    v41 = String._bridgeToObjectiveC()();

    v42 = [v38 internalErrorWithDebugDescription:v41];

    v43 = swift_allocObject();
    *(v43 + 16) = a5;
    *(v43 + 24) = a6;
    *(v43 + 32) = 0;
    *(v43 + 40) = v42;
    v72 = sub_1006D47E0;
    v73 = v43;
    aBlock = _NSConcreteStackBlock;
    v69 = 1107296256;
    v70 = sub_100019200;
    v71 = &unk_1008FBDB0;
    v44 = _Block_copy(&aBlock);

    v45 = v42;
    v46 = v61;
    static DispatchQoS.unspecified.getter();
    v67 = _swiftEmptyArrayStorage;
    sub_100054694(&qword_100936E90, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000F5104(&unk_100939E50, &unk_100791AD0);
    sub_10000CB48(&qword_100936EA0, &unk_100939E50, &unk_100791AD0);
    v47 = v62;
    v48 = v66;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();

    _Block_release(v44);

    (*(v65 + 8))(v47, v48);
LABEL_12:
    (*(v63 + 8))(v46, v64);
  }

  v32 = sub_1006B9764();
  if (!v32)
  {
    v49 = objc_opt_self();
    aBlock = 0;
    v69 = 0xE000000000000000;
    _StringGuts.grow(_:)(70);
    v60 = v27;
    v50._countAndFlagsBits = 0xD000000000000044;
    v50._object = 0x80000001007FED20;
    String.append(_:)(v50);
    v51._countAndFlagsBits = a1;
    v51._object = a2;
    String.append(_:)(v51);
    v52 = String._bridgeToObjectiveC()();

    v53 = [v49 internalErrorWithDebugDescription:v52];

    v54 = swift_allocObject();
    *(v54 + 16) = a5;
    *(v54 + 24) = a6;
    *(v54 + 32) = 0;
    *(v54 + 40) = v53;
    v72 = sub_1006D5480;
    v73 = v54;
    aBlock = _NSConcreteStackBlock;
    v69 = 1107296256;
    v70 = sub_100019200;
    v71 = &unk_1008FBE00;
    v55 = _Block_copy(&aBlock);

    v59 = v53;
    v46 = v61;
    static DispatchQoS.unspecified.getter();
    v67 = _swiftEmptyArrayStorage;
    sub_100054694(&qword_100936E90, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000F5104(&unk_100939E50, &unk_100791AD0);
    sub_10000CB48(&qword_100936EA0, &unk_100939E50, &unk_100791AD0);
    v56 = v62;
    v57 = v66;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();

    _Block_release(v55);

    (*(v65 + 8))(v56, v57);
    goto LABEL_12;
  }

  v33 = v32;
  v34 = swift_allocObject();
  v34[2] = v7;
  v34[3] = v31;
  v34[4] = v33;
  v34[5] = sub_1006D4790;
  v34[6] = v25;

  v35 = v31;
  v36 = v33;

  sub_1006C0C18(v60 & 1, sub_1006D47E4, v34);
}

uint64_t sub_1006B3F80(char a1, id a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v37 = *(v10 - 8);
  v11 = *(v37 + 64);
  __chkstk_darwin(v10);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchQoS();
  v35 = *(v14 - 8);
  v36 = v14;
  v15 = *(v35 + 64);
  __chkstk_darwin(v14);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1009366E8 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  sub_100006654(v18, qword_10094FB70);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v34 = a2;
    *v21 = 0;
    _os_log_impl(&_mh_execute_header, v19, v20, "RDAccountUtils: Updating system accounts", v21, 2u);
    a2 = v34;
  }

  v22 = swift_allocObject();
  v22[2] = a2;
  v22[3] = a3;
  v22[4] = a4;

  a2;
  v23 = sub_1006B9764();
  if (v23)
  {
    v24 = v23;
    v25 = swift_allocObject();
    *(v25 + 16) = v5;
    *(v25 + 24) = v24;
    *(v25 + 32) = sub_1006D48FC;
    *(v25 + 40) = v22;
    *(v25 + 48) = a1 & 1;

    v26 = v24;

    sub_1006C0C18(1, sub_1006D49A0, v25);
  }

  else
  {
    v28 = objc_opt_self();
    v29 = String._bridgeToObjectiveC()();
    v30 = [v28 internalErrorWithDebugDescription:v29];

    v31 = swift_allocObject();
    *(v31 + 16) = a3;
    *(v31 + 24) = a4;
    *(v31 + 32) = 0;
    *(v31 + 40) = v30;
    aBlock[4] = sub_1006D5480;
    aBlock[5] = v31;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100019200;
    aBlock[3] = &unk_1008FC170;
    v32 = _Block_copy(aBlock);

    v34 = v30;
    static DispatchQoS.unspecified.getter();
    v38 = _swiftEmptyArrayStorage;
    sub_100054694(&qword_100936E90, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000F5104(&unk_100939E50, &unk_100791AD0);
    sub_10000CB48(&qword_100936EA0, &unk_100939E50, &unk_100791AD0);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v32);

    (*(v37 + 8))(v13, v10);
    (*(v35 + 8))(v17, v36);
  }
}

void sub_1006B44B4(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (qword_1009366E8 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100006654(v8, qword_10094FB70);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "RDAccountUtils: Remove orphaned accounts", v11, 2u);
  }

  v12 = swift_allocObject();
  v12[2] = a1;
  v12[3] = a2;
  v12[4] = a3;

  v13 = a1;
  v14 = sub_1006B9764();
  if (v14)
  {
    v15 = v14;
    v16 = swift_allocObject();
    v16[2] = v4;
    v16[3] = v15;
    v16[4] = sub_1006D198C;
    v16[5] = v12;

    v17 = v15;

    sub_1006C0C18(1, sub_1006D1998, v16);
  }

  else
  {
    v18 = objc_opt_self();
    v19 = String._bridgeToObjectiveC()();
    v20 = [v18 internalErrorWithDebugDescription:v19];

    sub_1006BD5EC(0, v20, v13, a2, a3);
  }
}

void sub_1006B4720(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (qword_1009366E8 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_100006654(v9, qword_10094FB70);

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v44 = v13;
    *v12 = 136446210;
    *(v12 + 4) = sub_10000668C(a1, a2, &v44);
    _os_log_impl(&_mh_execute_header, v10, v11, "RDAccountUtils: requestToMergeLocalDataIntoSyncData {acAccountIdentifier: %{public}s}", v12, 0xCu);
    sub_10000607C(v13);
  }

  v14 = sub_1006B9764();
  if (v14)
  {
    v42 = v14;
    v15 = [objc_opt_self() sharedInstance];
    v16 = [v15 accountStore];

    v17 = String._bridgeToObjectiveC()();
    v18 = [v16 accountWithIdentifier:v17];

    if (!v18)
    {
LABEL_17:

      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v44 = v32;
        *v31 = 136446210;
        *(v31 + 4) = sub_10000668C(a1, a2, &v44);
        _os_log_impl(&_mh_execute_header, v29, v30, "RDAccountUtils: requestToMergeLocalDataIntoSyncData: Could not find an Apple ACAccount for {acAccountIdentifier: %{public}s}", v31, 0xCu);
        sub_10000607C(v32);

        return;
      }

      goto LABEL_20;
    }

    v19 = [v18 accountType];
    if (!v19)
    {
      __break(1u);
      return;
    }

    v20 = v19;
    v21 = [v19 identifier];

    if (v21)
    {
      v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v24 = v23;

      v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      if (v24)
      {
        if (v22 == v25 && v24 == v26)
        {

LABEL_24:

          v34 = Logger.logObject.getter();
          v35 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v34, v35))
          {
            v36 = swift_slowAlloc();
            v41 = v16;
            v37 = a4;
            v38 = a5;
            v39 = swift_slowAlloc();
            v44 = v39;
            *v36 = 136446210;
            *(v36 + 4) = sub_10000668C(a1, a2, &v44);
            _os_log_impl(&_mh_execute_header, v34, v35, "RDAccountUtils: requestToMergeLocalDataIntoSyncData: icloud account store already exists, move local data now {acAccountIdentifier: %{public}s}", v36, 0xCu);
            sub_10000607C(v39);
            a5 = v38;
            a4 = v37;
            v16 = v41;
          }

          type metadata accessor for RDAccountUtils.LocalDataToICloudMover();
          *(swift_initStackObject() + 16) = v42;
          v40 = v42;
          sub_1006BECA8(v18);

          sub_1006BF200(0, a3, a4, a5, &unk_1008FB9D8, sub_1006D195C, &unk_1008FB9F0);
          return;
        }

        v33 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v33)
        {
          goto LABEL_24;
        }

        goto LABEL_16;
      }
    }

    else
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

LABEL_16:

    goto LABEL_17;
  }

  v27 = objc_opt_self();
  v28 = String._bridgeToObjectiveC()();
  v42 = [v27 internalErrorWithDebugDescription:v28];

  sub_1006BF200(v42, a3, a4, a5, &unk_1008FB9D8, sub_1006D195C, &unk_1008FB9F0);
LABEL_20:
}

void sub_1006B5338(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1006B9764();
  if (v6)
  {
    v7 = v6;
    v43 = a1;
    v8 = [objc_opt_self() localAccountID];
    v45[0] = 0;
    v9 = [v7 fetchAccountWithObjectID:v8 error:v45];

    v10 = v45[0];
    if (v9)
    {
      type metadata accessor for RDAccountDataMover();
      swift_initStackObject();
      v11 = v10;
      v12 = v7;
      v13 = sub_1004ED328(v12);
      sub_1004EEEE8(v9);
      if (qword_1009366E8 != -1)
      {
        swift_once();
      }

      v31 = type metadata accessor for Logger();
      sub_100006654(v31, qword_10094FB70);

      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v45[0] = v35;
        *v34 = 136446210;
        v36 = *(v13 + 48);
        v37 = *(v13 + 56);
        v38 = sub_1004ED21C();
        v40 = a2;
        v41 = a3;
        v42 = sub_10000668C(v38, v39, v45);

        *(v34 + 4) = v42;
        a3 = v41;
        a2 = v40;
        _os_log_impl(&_mh_execute_header, v32, v33, "RDAccountUtils: requestToDeleteLocalData: Local account emptied {stats: %{public}s}.", v34, 0xCu);
        sub_10000607C(v35);
      }

      else
      {
      }

      sub_1006BF200(0, v43, a2, a3, &unk_1008FB988, sub_1006D5528, &unk_1008FB9A0);
    }

    else
    {
      v16 = v45[0];
      _convertNSErrorToError(_:)();

      swift_willThrow();
      if (qword_1009366E8 != -1)
      {
        swift_once();
      }

      v17 = type metadata accessor for Logger();
      sub_100006654(v17, qword_10094FB70);
      swift_errorRetain();
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v45[0] = v21;
        *v20 = 136446210;
        swift_getErrorValue();
        v22 = Error.localizedDescription.getter();
        v24 = sub_10000668C(v22, v23, v45);

        *(v20 + 4) = v24;
        _os_log_impl(&_mh_execute_header, v18, v19, "RDAccountUtils: requestToDeleteLocalData: Error occurred when trying to delete local data {error: %{public}s}", v20, 0xCu);
        sub_10000607C(v21);
      }

      v25 = objc_opt_self();
      v45[0] = 0;
      v45[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(59);
      v26._object = 0x80000001007FEB10;
      v26._countAndFlagsBits = 0xD000000000000038;
      String.append(_:)(v26);
      swift_getErrorValue();
      v27._countAndFlagsBits = Error.localizedDescription.getter();
      String.append(_:)(v27);

      v28._countAndFlagsBits = 125;
      v28._object = 0xE100000000000000;
      String.append(_:)(v28);
      v29 = String._bridgeToObjectiveC()();

      v30 = [v25 internalErrorWithDebugDescription:v29];

      sub_1006BF200(v30, v43, a2, a3, &unk_1008FB988, sub_1006D5528, &unk_1008FB9A0);
    }
  }

  else
  {
    v14 = objc_opt_self();
    v15 = String._bridgeToObjectiveC()();
    v44 = [v14 internalErrorWithDebugDescription:v15];

    sub_1006BF200(v44, a1, a2, a3, &unk_1008FB988, sub_1006D5528, &unk_1008FB9A0);
  }
}

uint64_t sub_1006B593C()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_10094FB70);
  v1 = sub_100006654(v0, qword_10094FB70);
  if (qword_100936470 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100975098);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1006B5A04(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = "didChooseToMigrate";
  }

  else
  {
    v2 = "artList";
  }

  v3 = v2 | 0x8000000000000000;
  if (*a2)
  {
    v4 = "didChooseToMigrate";
  }

  else
  {
    v4 = "artList";
  }

  if (v3 == (v4 | 0x8000000000000000))
  {
    v5 = 1;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v5 & 1;
}

Swift::Int sub_1006B5AA8()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1006B5B20()
{
  *v0;
  String.hash(into:)();
}

Swift::Int sub_1006B5B84()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1006B5BF8@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_1008E42A0, *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_1006B5C58(void *a1@<X8>)
{
  if (*v1)
  {
    v2 = "didChooseToMigrate";
  }

  else
  {
    v2 = "artList";
  }

  *a1 = 0xD000000000000012;
  a1[1] = v2 | 0x8000000000000000;
}

uint64_t sub_1006B5C90()
{
  sub_1000F5104(&qword_10094FE50, &qword_1007B5978);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100792CE0;
  *(inited + 32) = _auto_REMAccountTypeForPrimaryCloudKit();
  *(inited + 40) = xmmword_1007B58D0;
  *(inited + 56) = 4;
  v1 = sub_100393778(inited);
  result = swift_setDeallocating();
  off_10094FB88 = v1;
  return result;
}

void sub_1006B5D18(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, void (*a5)(uint64_t, void), uint64_t a6, void *a7)
{
  if (qword_1009366E8 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_100006654(v12, qword_10094FB70);

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *&aBlock = v16;
    *v15 = 136446210;
    *(v15 + 4) = sub_10000668C(a3, a4, &aBlock);
    _os_log_impl(&_mh_execute_header, v13, v14, "Received migration state from user record {accountID: %{public}s}", v15, 0xCu);
    sub_10000607C(v16);
  }

  v17 = objc_opt_self();
  v18 = [v17 sharedInstance];
  v41 = [v18 accountStore];

  v19 = String._bridgeToObjectiveC()();
  v20 = [v41 accountWithIdentifier:v19];

  if (v20)
  {

    v38 = a6;
    if (a1)
    {
      sub_1000060C8(0, &qword_10093A360, CKRecord_ptr);
      v21 = a1;
      CKRecordKeyValueSetting.subscript.getter();
      HIDWORD(v39) = aBlock;
      CKRecordKeyValueSetting.subscript.getter();

      LOBYTE(v39) = aBlock;
    }

    else
    {

      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        *&aBlock = v25;
        *v24 = 136446210;
        *(v24 + 4) = sub_10000668C(a3, a4, &aBlock);
        _os_log_impl(&_mh_execute_header, v22, v23, "Failed to fetch user record. Let's assume the account is not migrated {accountID: %{public}s}", v24, 0xCu);
        sub_10000607C(v25);
      }

      v39 = 0;
    }

    LOBYTE(aBlock) = 0;
    v26 = [a7 objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
    swift_unknownObjectRelease();
    if (v26)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v47 = 0u;
      v48 = 0u;
    }

    aBlock = v47;
    v44 = v48;
    if (*(&v48 + 1))
    {
      sub_1000060C8(0, &qword_100938DE0, NSNumber_ptr);
      if (swift_dynamicCast())
      {
        v27 = v42;
      }

      else
      {
        v27 = 0;
      }
    }

    else
    {
      sub_1000050A4(&aBlock, &qword_100939ED0, &qword_100791B10);
      v27 = 0;
    }

    LOBYTE(v47) = 1;
    v28 = [a7 objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
    swift_unknownObjectRelease();
    if (v28)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v47 = 0u;
      v48 = 0u;
    }

    aBlock = v47;
    v44 = v48;
    if (*(&v48 + 1))
    {
      sub_1000060C8(0, &qword_100938DE0, NSNumber_ptr);
      if (swift_dynamicCast())
      {
        v29 = v42;
      }

      else
      {
        v29 = 0;
      }

      if (v27 && v29)
      {
        if (((HIDWORD(v39) ^ [v27 BOOLValue]) & 1) == 0 && (v39 & 1) == objc_msgSend(v29, "BOOLValue"))
        {
          a5(1, 0);

          return;
        }

        v29 = v42;
      }
    }

    else
    {
      sub_1000050A4(&aBlock, &qword_100939ED0, &qword_100791B10);
      v29 = 0;
    }

    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *&aBlock = v33;
      *v32 = 136446210;
      *(v32 + 4) = sub_10000668C(a3, a4, &aBlock);
      _os_log_impl(&_mh_execute_header, v30, v31, "Cache migration state in ACAccount object {accountID: %{public}s}", v32, 0xCu);
      sub_10000607C(v33);
    }

    v34 = [v17 sharedInstance];
    v35 = swift_allocObject();
    v35[2] = a3;
    v35[3] = a4;
    v35[4] = a7;
    v35[5] = a5;
    v35[6] = v38;
    v45 = sub_1006D18CC;
    v46 = v35;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v44 = sub_100007688;
    *(&v44 + 1) = &unk_1008FB8D8;
    v36 = _Block_copy(&aBlock);

    v37 = a7;

    [v34 saveDidChooseToMigrate:BYTE4(v39) & 1 didFinishMigration:v39 & 1 toACAccount:v37 inStore:v41 completionHandler:v36];

    _Block_release(v36);
  }

  else
  {
    a5(0, 0);
  }
}

uint64_t sub_1006B64BC(char a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5, uint64_t (*a6)(void, uint64_t))
{
  if (a1)
  {
    if (qword_1009366E8 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_100006654(v10, qword_10094FB70);

    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v31 = v14;
      *v13 = 136446210;
      *(v13 + 4) = sub_10000668C(a3, a4, &v31);
      _os_log_impl(&_mh_execute_header, v11, v12, "Migration state cache saved {accountID: %{public}s}", v13, 0xCu);
      sub_10000607C(v14);
    }
  }

  else
  {
    if (qword_1009366E8 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_100006654(v16, qword_10094FB70);
    v17 = a5;
    swift_errorRetain();
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v31 = v22;
      *v20 = 138412546;
      *(v20 + 4) = v17;
      *v21 = v17;
      *(v20 + 12) = 2080;
      if (a2)
      {
        swift_getErrorValue();
        v23 = v17;
        v24 = Error.localizedDescription.getter();
        v26 = v25;
      }

      else
      {
        v27 = v17;
        v26 = 0xE300000000000000;
        v24 = 7104878;
      }

      v28 = sub_10000668C(v24, v26, &v31);

      *(v20 + 14) = v28;
      _os_log_impl(&_mh_execute_header, v18, v19, "Error updating migration flags for ACAccount {acAccount: %@, error: %s}", v20, 0x16u);
      sub_1000050A4(v21, &unk_100938E70, &unk_100797230);

      sub_10000607C(v22);
    }
  }

  return a6(a1 & 1, a2);
}

uint64_t sub_1006B6820(uint64_t a1, uint64_t (*a2)(void, void, void), uint64_t a3, char a4, char a5)
{
  if (a1)
  {
    if (qword_1009366E8 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_100006654(v9, qword_10094FB70);
    swift_errorRetain();
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v26 = v25;
      *v12 = 136315138;
      swift_getErrorValue();
      v13 = Error.localizedDescription.getter();
      v15 = a2;
      v16 = sub_10000668C(v13, v14, &v26);

      *(v12 + 4) = v16;
      a2 = v15;
      _os_log_impl(&_mh_execute_header, v10, v11, "UpdateAccountsWithAccountInfos: Error saving context after adding account {error: %s}", v12, 0xCu);
      sub_10000607C(v25);
    }

    v17 = a4 & 1;
    v18 = a5 & 1;
    v19 = a1;
  }

  else
  {
    if (qword_1009366E8 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_100006654(v20, qword_10094FB70);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "UpdateAccountsWithAccountInfos: Account object changes saved", v23, 2u);
    }

    v17 = a4 & 1;
    v18 = a5 & 1;
    v19 = 0;
  }

  return a2(v17, v18, v19);
}

void sub_1006B6A9C(void *a1, id a2, unsigned __int8 a3, char a4, void (*a5)(void, void, void *, void), uint64_t a6)
{
  v11 = [a1 displayAccount];
  if (!v11)
  {
    v11 = a1;
  }

  v12 = &selRef_hack_willSaveHandled;
  v13 = [v11 identifier];
  if (!v13)
  {
    __break(1u);
    goto LABEL_175;
  }

  v6 = v13;
  v256 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  v16 = [v11 accountType];
  if (!v16)
  {
LABEL_175:
    __break(1u);
    goto LABEL_176;
  }

  v17 = v16;
  v6 = [v16 identifier];

  if (!v6)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
LABEL_12:

    if (([v11 isEnabledForDataclass:ACAccountDataclassReminders] & 1) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_13;
  }

  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v19;

  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!v12)
  {
    goto LABEL_12;
  }

  if (v18 == v20 && v12 == v21)
  {

    if (([v11 isEnabledForDataclass:ACAccountDataclassReminders] & 1) == 0)
    {
LABEL_24:
      if (qword_1009366E8 != -1)
      {
        swift_once();
      }

      v37 = type metadata accessor for Logger();
      sub_100006654(v37, qword_10094FB70);
      v38 = a1;
      a2 = v11;

      v7 = Logger.logObject.getter();
      v39 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v7, v39))
      {

        swift_bridgeObjectRelease_n();
        goto LABEL_32;
      }

      v40 = swift_slowAlloc();
      *&aBlock = swift_slowAlloc();
      *v40 = 136446722;
      v41 = [v38 identifier];

      if (v41)
      {
        v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v12 = v43;

        v44 = sub_10000668C(v42, v12, &aBlock);

        *(v40 + 4) = v44;
        *(v40 + 12) = 2082;
        v6 = sub_10000668C(v256, v15, &aBlock);

        *(v40 + 14) = v6;
        *(v40 + 22) = 2082;
        v45 = [a2 accountType];
        if (v45)
        {
          v8 = v45;
          v46 = [v45 identifier];

          if (v46)
          {
            v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v49 = v48;

            v50 = sub_10000668C(v47, v49, &aBlock);

            *(v40 + 24) = v50;
            _os_log_impl(&_mh_execute_header, v7, v39, "UpdateAccountWithACAccount: ACAccount type is not supported or reminders dataclass is not enabled {accountID: %{public}s, displayAccountID: %{public}s, accountType: %{public}s}", v40, 0x20u);
            swift_arrayDestroy();

LABEL_32:

            a5(0, 0, _swiftEmptyArrayStorage, 0);

            return;
          }

          goto LABEL_178;
        }

LABEL_177:

        __break(1u);
LABEL_178:
        __break(1u);
        goto LABEL_179;
      }

LABEL_176:

      __break(1u);
      goto LABEL_177;
    }

LABEL_23:
    v36 = 1;
    goto LABEL_36;
  }

  v35 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (([v11 isEnabledForDataclass:ACAccountDataclassReminders] & 1) == 0)
  {
    goto LABEL_24;
  }

  if (v35)
  {
    goto LABEL_23;
  }

LABEL_13:
  if ([a1 accountPropertyForKey:REMDA_kCalDAVMobileAccountDelegatePrincipalPath])
  {

    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_1000050A4(&aBlock, &qword_100939ED0, &qword_100791B10);
    if (qword_1009366E8 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_100006654(v22, qword_10094FB70);
    v23 = a1;
    v8 = v11;
    v7 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v12))
    {
      v24 = swift_slowAlloc();
      *&aBlock = swift_slowAlloc();
      *v24 = 136446466;
      v6 = [v23 identifier];

      if (!v6)
      {
LABEL_180:

        __break(1u);
        goto LABEL_181;
      }

      v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v27 = v26;

      v6 = sub_10000668C(v25, v27, &aBlock);

      *(v24 + 4) = v6;
      *(v24 + 12) = 2082;
      v28 = [v8 accountType];
      if (!v28)
      {
LABEL_181:

        __break(1u);
        goto LABEL_182;
      }

      v29 = v28;
      v30 = [v28 identifier];

      if (!v30)
      {
LABEL_182:
        __break(1u);
        goto LABEL_183;
      }

      v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v33 = v32;

      v34 = sub_10000668C(v31, v33, &aBlock);

      *(v24 + 14) = v34;
      _os_log_impl(&_mh_execute_header, v7, v12, "UpdateAccountWithACAccount: Skip handling CalDAV delegate account {accountID: %{public}s, displayAccountType: %{public}s}", v24, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    a5(0, 0, _swiftEmptyArrayStorage, 0);
    return;
  }

  aBlock = 0u;
  v261 = 0u;
  sub_1000050A4(&aBlock, &qword_100939ED0, &qword_100791B10);
  v36 = 0;
LABEL_36:
  v247 = v7;
  if (qword_1009366E8 != -1)
  {
    swift_once();
  }

  v51 = type metadata accessor for Logger();
  v7 = sub_100006654(v51, qword_10094FB70);
  v8 = v15;

  v52 = Logger.logObject.getter();
  v53 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v52, v53))
  {
    v6 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    *&aBlock = v54;
    *v6 = 136446210;
    *(v6 + 1) = sub_10000668C(v256, v15, &aBlock);
    _os_log_impl(&_mh_execute_header, v52, v53, "UpdateAccountWithACAccount: Try to update account object {accountID: %{public}s}", v6, 0xCu);
    sub_10000607C(v54);
  }

  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  v55 = [v11 rem_isEligibleForCloudKitReminders];
  if (!v36)
  {
    v58 = [v11 accountType];
    if (!v58)
    {
LABEL_179:
      __break(1u);
      goto LABEL_180;
    }

    v59 = v58;
    v60 = sub_1006C3788(v58);
    v62 = v61;

    v63 = v15;
    if (v62)
    {
      v6 = v11;
      v7 = Logger.logObject.getter();
      v64 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v7, v64))
      {
        v245 = v12;
        v65 = swift_slowAlloc();
        v66 = swift_slowAlloc();
        *&aBlock = v66;
        *v65 = 136446210;
        v67 = [v6 accountType];
        if (!v67)
        {
LABEL_183:

          __break(1u);
          goto LABEL_184;
        }

        v12 = v67;
        v68 = [v67 identifier];

        if (!v68)
        {
LABEL_184:
          __break(1u);
          goto LABEL_185;
        }

        v69 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v71 = v70;

        v72 = sub_10000668C(v69, v71, &aBlock);

        *(v65 + 4) = v72;
        _os_log_impl(&_mh_execute_header, v7, v64, "UpdateAccountWithACAccount: Can't figure out REMAccountType for ACAccountType {acAccountType: %{public}s}", v65, 0xCu);
        sub_10000607C(v66);

        v73 = _swiftEmptyArrayStorage;
        goto LABEL_161;
      }
    }

    else
    {

      v93 = Logger.logObject.getter();
      v94 = static os_log_type_t.default.getter();

      v250 = v60;
      if (os_log_type_enabled(v93, v94))
      {
        v95 = swift_slowAlloc();
        *&aBlock = swift_slowAlloc();
        *v95 = 136446466;
        *(v95 + 4) = sub_10000668C(v256, v15, &aBlock);
        *(v95 + 12) = 2082;
        v96 = REMAccountType.loggableDescription.getter();
        v98 = v12;
        v99 = sub_10000668C(v96, v97, &aBlock);

        *(v95 + 14) = v99;
        v12 = v98;
        _os_log_impl(&_mh_execute_header, v93, v94, "UpdateAccountWithACAccount: Will process non-Apple account {displayAccountID: %{public}s, accountType: %{public}s}", v95, 0x16u);
        swift_arrayDestroy();
      }

      v100 = sub_1006C3CF4(v11);
      if (v101)
      {
        v102 = v100;
        v103 = v101;
        v104 = v11;

        v105 = Logger.logObject.getter();
        v106 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v105, v106))
        {
          v107 = v102;
          v108 = swift_slowAlloc();
          v246 = v12;
          v109 = swift_slowAlloc();
          v110 = swift_slowAlloc();
          *&aBlock = v110;
          *v108 = 136446466;
          *(v108 + 4) = sub_10000668C(v107, v103, &aBlock);
          *(v108 + 12) = 2114;
          v111 = [v104 identifier];
          *(v108 + 14) = v111;
          *v109 = v111;
          _os_log_impl(&_mh_execute_header, v105, v106, "UpdateAccountWithACAccount: Resolved non-Apple account identifier enabled for Reminders from displayACAccount: {resolved: %{public}s, displayACAccount: %{public}@}.", v108, 0x16u);
          sub_1000050A4(v109, &unk_100938E70, &unk_100797230);
          v12 = v246;

          sub_10000607C(v110);

          v102 = v107;
        }

        v112 = [objc_opt_self() accountDescriptionWithACAccount:v104];
        if (v112)
        {
          v113 = v112;
          v114 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v116 = v115;
        }

        else
        {
          v114 = 0;
          v116 = 0xE000000000000000;
        }

        v73 = sub_1003685B8(0, 1, 1, _swiftEmptyArrayStorage);
        v156 = *(v73 + 2);
        v155 = *(v73 + 3);
        if (v156 >= v155 >> 1)
        {
          v73 = sub_1003685B8((v155 > 1), v156 + 1, 1, v73);
        }

        *(v73 + 2) = v156 + 1;
        v157 = &v73[48 * v156];
        *(v157 + 4) = v102;
        *(v157 + 5) = v103;
        *(v157 + 6) = v114;
        *(v157 + 7) = v116;
        *(v157 + 8) = v250;
        *(v157 + 18) = 33685505;
        v157[76] = 2;
        goto LABEL_162;
      }
    }

LABEL_67:
    v73 = _swiftEmptyArrayStorage;
LABEL_162:

    sub_1006CFF18(v221, a2, v12, v256, v63, v73, a5, a6);

    swift_bridgeObjectRelease_n();

    swift_bridgeObjectRelease_n();
    return;
  }

  if ((v55 & 1) == 0)
  {
    v63 = v15;

    v74 = Logger.logObject.getter();
    v75 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      v77 = v12;
      v78 = swift_slowAlloc();
      *&aBlock = v78;
      *v76 = 136446210;
      *(v76 + 4) = sub_10000668C(v256, v15, &aBlock);
      _os_log_impl(&_mh_execute_header, v74, v75, "UpdateAccountWithACAccount: Got an Apple ID, not eligible for CloudKit reminders. Will only process iCloud CalDAV account for it {accountID: %{public}s}", v76, 0xCu);
      sub_10000607C(v78);
      v12 = v77;
    }

    v79 = sub_1006BFC1C(v11);
    if (v80)
    {
      v81 = v79;
      v82 = v80;

      v83 = Logger.logObject.getter();
      v84 = static os_log_type_t.default.getter();

      v85 = v12;
      if (os_log_type_enabled(v83, v84))
      {
        v86 = swift_slowAlloc();
        v87 = swift_slowAlloc();
        *&aBlock = v87;
        *v86 = 136446210;
        *(v86 + 4) = sub_10000668C(v81, v82, &aBlock);
        _os_log_impl(&_mh_execute_header, v83, v84, "UpdateAccountWithACAccount: AppleAccount {accountID: %{public}s} is ineligible for CloudKit Reminders, will process it as iCloud CalDAV", v86, 0xCu);
        sub_10000607C(v87);
      }

      v88 = [objc_opt_self() accountDescriptionWithACAccount:v11];
      if (v88)
      {
        v89 = v88;
        v90 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v92 = v91;
      }

      else
      {
        v90 = 0;
        v92 = 0;
      }

      if (v92)
      {
        v151 = v92;
      }

      else
      {
        v90 = 0x64756F6C4369;
        v151 = 0xE600000000000000;
      }

      v73 = sub_1003685B8(0, 1, 1, _swiftEmptyArrayStorage);
      v153 = *(v73 + 2);
      v152 = *(v73 + 3);
      if (v153 >= v152 >> 1)
      {
        v73 = sub_1003685B8((v152 > 1), v153 + 1, 1, v73);
      }

      *(v73 + 2) = v153 + 1;
      v154 = &v73[48 * v153];
      *(v154 + 4) = v81;
      *(v154 + 5) = v82;
      *(v154 + 6) = v90;
      *(v154 + 7) = v151;
      *(v154 + 8) = 3;
      *(v154 + 18) = 33685505;
      v154[76] = 2;
      v12 = v85;
      goto LABEL_162;
    }

    goto LABEL_67;
  }

  v245 = v12;
  *&v264 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(&v264 + 1) = v56;
  v57 = [v11 objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();
  if (v57)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v264 = 0u;
    v265 = 0u;
  }

  aBlock = v264;
  v261 = v265;
  if (*(&v265 + 1))
  {
    sub_1000060C8(0, &qword_100938DE0, NSNumber_ptr);
    if (swift_dynamicCast())
    {
      a3 = [v259 BOOLValue];

      goto LABEL_83;
    }
  }

  else
  {
    sub_1000050A4(&aBlock, &qword_100939ED0, &qword_100791B10);
  }

  if (a3 != 2)
  {
LABEL_83:
    *&aBlock = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(&aBlock + 1) = v139;
    v140 = [v11 objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
    swift_unknownObjectRelease();
    v63 = v15;
    if (v140)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v264 = 0u;
      v265 = 0u;
    }

    aBlock = v264;
    v261 = v265;
    if (*(&v265 + 1))
    {
      sub_1000060C8(0, &qword_100938DE0, NSNumber_ptr);
      if (swift_dynamicCast())
      {
        v141 = v259;
      }

      else
      {
        v141 = 0;
      }

      if (a3)
      {
LABEL_91:
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v131 = Strong;
          v143 = sub_1006BF940(v256, v15);
          if (v143)
          {
            v144 = v143;
            sub_10031C72C(v143, v131);
            v146 = v145;

            LODWORD(v144) = *(v146 + 88);

            v252 = v144 ^ 1;
            goto LABEL_96;
          }

          v222 = Logger.logObject.getter();
          v223 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v222, v223))
          {
            v224 = swift_slowAlloc();
            v225 = swift_slowAlloc();
            *&aBlock = v225;
            *v224 = 136315138;
            v226 = sub_10000668C(v256, v15, &aBlock);
            v125 = v141;
            v227 = v226;

            *(v224 + 4) = v227;
            _os_log_impl(&_mh_execute_header, v222, v223, "Display ACAccount ID is not an UUID {displayACAccountID: %s}", v224, 0xCu);
            sub_10000607C(v225);

LABEL_165:
            return;
          }
        }

        else
        {

          v167 = Logger.logObject.getter();
          v168 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v167, v168))
          {
            v169 = swift_slowAlloc();
            *v169 = 0;
            _os_log_impl(&_mh_execute_header, v167, v168, "Store controller missing for checking whether migration has failed", v169, 2u);
          }
        }

        goto LABEL_173;
      }
    }

    else
    {
      sub_1000050A4(&aBlock, &qword_100939ED0, &qword_100791B10);
      v141 = 0;
      if (a3)
      {
        goto LABEL_91;
      }
    }

    v252 = 0;
LABEL_96:
    if (v141 && (v252 & [v141 BOOLValue] & 1) != 0)
    {
      *(v12 + 16) = 1;

      v147 = Logger.logObject.getter();
      v148 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v147, v148))
      {
        v149 = swift_slowAlloc();
        v150 = swift_slowAlloc();
        *&aBlock = v150;
        *v149 = 136446210;
        *(v149 + 4) = sub_10000668C(v256, v15, &aBlock);
        _os_log_impl(&_mh_execute_header, v147, v148, "UpdateAccountWithACAccount: setting shouldMigrateInactivatedICloudCalDavData to true {displayAccountID: %{public}s}", v149, 0xCu);
        sub_10000607C(v150);
      }
    }

    if ([v11 aa_isAccountClass:AAAccountClassPrimary])
    {
      v244 = _auto_REMAccountTypeForPrimaryCloudKit();
    }

    else
    {
      v244 = 6;
    }

    v158 = v141;

    v159 = Logger.logObject.getter();
    v160 = static os_log_type_t.default.getter();
    v248 = v158;

    if (os_log_type_enabled(v159, v160))
    {
      v161 = v141;
      v162 = swift_slowAlloc();
      *&aBlock = swift_slowAlloc();
      *v162 = 136447234;
      *(v162 + 4) = sub_10000668C(v256, v63, &aBlock);
      *(v162 + 12) = 2082;
      v163 = REMAccountType.loggableDescription.getter();
      v165 = sub_10000668C(v163, v164, &aBlock);

      *(v162 + 14) = v165;
      *(v162 + 22) = 1024;
      *(v162 + 24) = a3 & 1;
      *(v162 + 28) = 1024;
      *(v162 + 30) = v252 & 1;
      *(v162 + 34) = 2082;
      if (v161)
      {
        v166 = [v158 BOOLValue];
      }

      else
      {
        v166 = 2;
      }

      LOBYTE(v264) = v166;
      sub_1000F5104(&qword_100939340, &qword_1007A3950);
      v188 = String.init<A>(describing:)();
      v190 = sub_10000668C(v188, v189, &aBlock);

      *(v162 + 36) = v190;
      _os_log_impl(&_mh_execute_header, v159, v160, "UpdateAccountWithACAccount: Will process CloudKit account {accountID: %{public}s, type: %{public}s, didChooseToMigrate: %{BOOL}d, shouldShowCloudKitAccount: %{BOOL}d, didFinishMigration: %{public}s}", v162, 0x2Cu);
      swift_arrayDestroy();

      v141 = v161;
    }

    else
    {
    }

    v243 = objc_opt_self();
    v191 = [v243 accountDescriptionWithACAccount:v11];
    if (v191)
    {
      v192 = v191;
      v193 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v195 = v194;
    }

    else
    {
      v193 = 0;
      v195 = 0;
    }

    if (v141)
    {
      v196 = [v248 BOOLValue];
    }

    else
    {
      v196 = 2;
    }

    v242 = a3;
    v197 = [v11 aa_isAccountClass:AAAccountClassBasic];
    if (v195)
    {
      v198 = v193;
    }

    else
    {
      v198 = 0x64756F6C4369;
    }

    if (v195)
    {
      v199 = v195;
    }

    else
    {
      v199 = 0xE600000000000000;
    }

    v73 = sub_1003685B8(0, 1, 1, _swiftEmptyArrayStorage);
    v201 = *(v73 + 2);
    v200 = *(v73 + 3);
    if (v201 >= v200 >> 1)
    {
      v73 = sub_1003685B8((v200 > 1), v201 + 1, 1, v73);
    }

    *(v73 + 2) = v201 + 1;
    v202 = &v73[48 * v201];
    *(v202 + 4) = v256;
    *(v202 + 5) = v63;
    *(v202 + 6) = v198;
    *(v202 + 7) = v199;
    *(v202 + 8) = v244;
    v202[72] = v252 & 1;
    v202[73] = 0;
    v202[74] = a3 & 1;
    v202[75] = v196;
    v202[76] = v197;
    v203 = sub_1006BFC1C(v11);
    if (v204)
    {
      v205 = v203;
      v206 = v204;

      v207 = Logger.logObject.getter();
      v208 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v207, v208))
      {
        v209 = swift_slowAlloc();
        v210 = swift_slowAlloc();
        *&aBlock = v210;
        *v209 = 136446466;
        *(v209 + 4) = sub_10000668C(v205, v206, &aBlock);
        *(v209 + 12) = 1024;
        *(v209 + 14) = v242 & 1;
        _os_log_impl(&_mh_execute_header, v207, v208, "UpdateAccountWithACAccount: Will process iCloud CalDAV account {accountID: %{public}s, didChooseToMigrate: %{BOOL}d}", v209, 0x12u);
        sub_10000607C(v210);
      }

      v211 = [v243 accountDescriptionWithACAccount:v11];
      if (v211)
      {
        v212 = v211;
        v213 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v215 = v214;
      }

      else
      {
        v213 = 0;
        v215 = 0;
      }

      if (v215)
      {
        v216 = v213;
      }

      else
      {
        v216 = 0x64756F6C4369;
      }

      if (v215)
      {
        v217 = v215;
      }

      else
      {
        v217 = 0xE600000000000000;
      }

      v219 = *(v73 + 2);
      v218 = *(v73 + 3);
      if (v219 >= v218 >> 1)
      {
        v73 = sub_1003685B8((v218 > 1), v219 + 1, 1, v73);
      }

      *(v73 + 2) = v219 + 1;
      v220 = &v73[48 * v219];
      *(v220 + 4) = v205;
      *(v220 + 5) = v206;
      *(v220 + 6) = v216;
      *(v220 + 7) = v217;
      *(v220 + 8) = 3;
      v220[72] = (v252 & 1) == 0;
      *(v220 + 73) = 33686016;
    }

    else
    {
    }

LABEL_161:
    v12 = v245;
    goto LABEL_162;
  }

  v117 = swift_unknownObjectWeakLoadStrong();
  v118 = a4;
  v119 = v15;
  if (v117)
  {
    v120 = v117;
    if ([v117 hasPassedBuddyAndSystemDataMigrator])
    {

      if (a4)
      {
        v121 = swift_allocObject();
        *(v121 + 16) = v256;
        *(v121 + 24) = v15;
        *(v121 + 32) = v247;
        *(v121 + 40) = v11;
        *(v121 + 48) = a2;
        *(v121 + 56) = 1;
        *(v121 + 64) = a5;
        *(v121 + 72) = a6;
        v122 = v11;
        swift_bridgeObjectRetain_n();
        swift_retain_n();
        v123 = a2;
        swift_retain_n();
        v12 = v122;
        v7 = v123;
        v124 = [v12 identifier];
        if (!v124)
        {
LABEL_185:

          __break(1u);
          return;
        }

        v125 = v124;
        v126 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v128 = v127;
        v129 = swift_unknownObjectWeakLoadStrong();
        v255 = v7;
        if (v129)
        {
          v130 = v129;
          v131 = [v129 cloudContext];

          if (v131)
          {

            v132 = Logger.logObject.getter();
            v133 = static os_log_type_t.default.getter();

            if (os_log_type_enabled(v132, v133))
            {
              v134 = swift_slowAlloc();
              v251 = v12;
              v135 = swift_slowAlloc();
              *&aBlock = v135;
              *v134 = 136446210;
              *(v134 + 4) = sub_10000668C(v126, v128, &aBlock);
              _os_log_impl(&_mh_execute_header, v132, v133, "Fetch migration state from user record {accountID: %{public}s}", v134, 0xCu);
              sub_10000607C(v135);
              v12 = v251;
            }

            v136 = swift_allocObject();
            v136[2] = v126;
            v136[3] = v128;
            v136[4] = sub_1006D18C4;
            v136[5] = v121;
            v136[6] = v12;
            v262 = sub_1006D18C8;
            v263 = v136;
            *&aBlock = _NSConcreteStackBlock;
            *(&aBlock + 1) = 1107296256;
            *&v261 = sub_10016AC08;
            *(&v261 + 1) = &unk_1008FB888;
            v137 = _Block_copy(&aBlock);
            v138 = v12;

            [v131 fetchUserRecordWithAccountID:v125 completionHandler:v137];
            _Block_release(v137);

            swift_bridgeObjectRelease_n();

            goto LABEL_165;
          }
        }

        v253 = v12;

        v228 = Logger.logObject.getter();
        v229 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v228, v229))
        {
          v230 = swift_slowAlloc();
          v231 = swift_slowAlloc();
          *&aBlock = v231;
          *v230 = 136446210;
          v232 = sub_10000668C(v126, v128, &aBlock);

          *(v230 + 4) = v232;
          _os_log_impl(&_mh_execute_header, v228, v229, "Missing cloud context for fetching migration state {accountID: %{public}s}", v230, 0xCu);
          sub_10000607C(v231);
        }

        else
        {
        }

        v233 = objc_opt_self();
        v234 = String._bridgeToObjectiveC()();
        v235 = [v233 internalErrorWithDebugDescription:v234];

        v141 = v235;
        v236 = Logger.logObject.getter();
        v237 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v236, v237))
        {
          v238 = swift_slowAlloc();
          *&aBlock = swift_slowAlloc();
          *v238 = 136315394;
          swift_getErrorValue();
          v239 = Error.localizedDescription.getter();
          v241 = sub_10000668C(v239, v240, &aBlock);

          *(v238 + 4) = v241;
          *(v238 + 12) = 2082;
          *(v238 + 14) = sub_10000668C(v256, v119, &aBlock);
          _os_log_impl(&_mh_execute_header, v236, v237, "UpdateAccountWithACAccount: Failed to fetch migration status. Assume the account is un-migrated {error: %s, accountID: %{public}s}", v238, 0x16u);
          swift_arrayDestroy();
        }

        sub_1006B6A9C(v253, v255, 0, 1, a5, a6);

        swift_bridgeObjectRelease_n();

LABEL_173:

        return;
      }
    }

    else
    {

      v170 = Logger.logObject.getter();
      v171 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v170, v171))
      {
        v172 = swift_slowAlloc();
        v173 = swift_slowAlloc();
        *&aBlock = v173;
        *v172 = 136446210;
        *(v172 + 4) = sub_10000668C(v256, v15, &aBlock);
        _os_log_impl(&_mh_execute_header, v170, v171, "UpdateAccountWithACAccount: hasPassedBuddyAndSystemDataMigrator != true, setting shouldFetchMigrationState to false {accountID: %{public}s}", v172, 0xCu);
        sub_10000607C(v173);
        v118 = a4;
      }
    }
  }

  v174 = Logger.logObject.getter();
  v175 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v174, v175))
  {
    v176 = swift_slowAlloc();
    v177 = swift_slowAlloc();
    *&aBlock = v177;
    *v176 = 136446210;
    v178 = v118;
    v179 = sub_10000668C(v256, v15, &aBlock);

    *(v176 + 4) = v179;
    v118 = v178;
    _os_log_impl(&_mh_execute_header, v174, v175, "UpdateAccountWithACAccount: Will not fetch migration state {accountID: %{public}s}", v176, 0xCu);
    sub_10000607C(v177);
  }

  else
  {
  }

  v180 = objc_opt_self();
  v181 = [v180 sharedInstance];
  v182 = [v181 accountStore];

  v183 = [v180 sharedInstance];
  v184 = swift_allocObject();
  *(v184 + 16) = v11;
  *(v184 + 24) = v247;
  *(v184 + 32) = a2;
  *(v184 + 40) = v118 & 1;
  *(v184 + 48) = a5;
  *(v184 + 56) = a6;
  v262 = sub_1006D18C0;
  v263 = v184;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v261 = sub_100007688;
  *(&v261 + 1) = &unk_1008FB810;
  v185 = _Block_copy(&aBlock);
  v186 = v11;

  v187 = a2;

  [v183 saveDidChooseToMigrate:0 didFinishMigration:0 toACAccount:v186 inStore:v182 completionHandler:v185];

  _Block_release(v185);
}

void sub_1006B8DBC(char a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, void *a6, void *a7, char a8, void (*a9)(void, void, void *, void), uint64_t a10)
{
  v10 = a8;
  v11 = a7;
  v12 = a6;
  v16 = a9;
  v15 = a10;
  if (a1)
  {
    if (qword_1009366E8 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_100006654(v19, qword_10094FB70);

    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = a3;
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v37 = v24;
      *v23 = 136446210;
      *(v23 + 4) = sub_10000668C(v22, a4, &v37);
      _os_log_impl(&_mh_execute_header, v20, v21, "UpdateAccountWithACAccount: Migration state fetched {accountID: %{public}s}", v23, 0xCu);
      sub_10000607C(v24);
    }

    v10 = a8;
    v12 = a6;
    v15 = a10;
    v16 = a9;
  }

  else
  {
    if (qword_1009366E8 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_100006654(v26, qword_10094FB70);

    swift_errorRetain();
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v27, v28))
    {
      v34 = v10;
      v29 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      *v29 = 136315394;
      if (a2)
      {
        swift_getErrorValue();
        v30 = Error.localizedDescription.getter();
        v32 = v31;
      }

      else
      {
        v32 = 0xE300000000000000;
        v30 = 7104878;
      }

      v33 = sub_10000668C(v30, v32, &v37);

      *(v29 + 4) = v33;
      *(v29 + 12) = 2082;
      *(v29 + 14) = sub_10000668C(a3, a4, &v37);
      _os_log_impl(&_mh_execute_header, v27, v28, "UpdateAccountWithACAccount: Failed to fetch migration status. Assume the account is un-migrated {error: %s, accountID: %{public}s}", v29, 0x16u);
      swift_arrayDestroy();

      v11 = a7;
      v10 = v34;
    }

    else
    {

      v11 = a7;
    }
  }

  sub_1006B6A9C(v12, v11, 0, v10 & 1, v16, v15);
}

void sub_1006B9110(char a1, uint64_t a2, void *a3, uint64_t a4, void *a5, char a6, void (*a7)(void, void, void *, void), uint64_t a8)
{
  if ((a1 & 1) == 0)
  {
    if (qword_1009366E8 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_100006654(v14, qword_10094FB70);
    v15 = a3;
    swift_errorRetain();
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v28 = v17;
      log = v16;
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v30 = v27;
      *v18 = 138543618;
      *(v18 + 4) = v15;
      v26 = v19;
      *v19 = v15;
      *(v18 + 12) = 2080;
      if (a2)
      {
        swift_getErrorValue();
        v20 = v15;
        v21 = Error.localizedDescription.getter();
        v23 = v22;
      }

      else
      {
        v24 = v15;
        v23 = 0xE300000000000000;
        v21 = 7104878;
      }

      v25 = sub_10000668C(v21, v23, &v30);

      *(v18 + 14) = v25;
      _os_log_impl(&_mh_execute_header, log, v28, "UpdateAccountWithACAccount: Error updating migration flags for ACAccount {acAccount: %{public}@, error: %s}", v18, 0x16u);
      sub_1000050A4(v26, &unk_100938E70, &unk_100797230);

      sub_10000607C(v27);
    }

    else
    {
    }
  }

  sub_1006B6A9C(a3, a5, 0, a6 & 1, a7, a8);
}

uint64_t sub_1006B9394(char a1, char a2, uint64_t a3, uint64_t a4, Swift::Int a5, unint64_t a6, uint64_t a7, void (*a8)(void, void, void, void))
{
  v13 = a2;
  v14 = a1;
  if ((a1 & 1) == 0 && (a2 & 1) == 0)
  {
    goto LABEL_16;
  }

  swift_beginAccess();
  if (*(a4 + 16) != 1)
  {
    goto LABEL_16;
  }

  v16 = a5;
  v45 = v14;
  v17 = objc_opt_self();
  v18 = [v17 daemonUserDefaults];
  v19 = [v18 acAccountIdentifiersToMigrateInactivatedCalDavData];

  if (v19)
  {
    v20 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v20 = _swiftEmptyArrayStorage;
  }

  v21 = sub_1001A5660(v20);

  v48 = v21;

  sub_100378434(&v47, v16, a6);

  v22 = [v17 daemonUserDefaults];
  v23 = v48;
  v24 = *(v48 + 16);
  if (!v24)
  {
    goto LABEL_10;
  }

  v25 = sub_1003689CC(*(v48 + 16), 0);
  v26 = sub_1002791DC(&v47, v25 + 4, v24, v23);
  sub_10001B860();
  if (v26 != v24)
  {
    __break(1u);
LABEL_10:
  }

  isa = Array._bridgeToObjectiveC()().super.isa;

  [v22 setAcAccountIdentifiersToMigrateInactivatedCalDavData:isa];

  if (qword_1009366E8 != -1)
  {
    swift_once();
  }

  v28 = type metadata accessor for Logger();
  sub_100006654(v28, qword_10094FB70);

  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v47 = v32;
    *v31 = 136446210;
    *(v31 + 4) = sub_10000668C(v16, a6, &v47);
    _os_log_impl(&_mh_execute_header, v29, v30, "UpdateAccountWithACAccount: inserting to daemonUserDefaults.acAccountIdentifiersToMigrateInactivatedCalDavData {displayAccountID: %{public}s}", v31, 0xCu);
    sub_10000607C(v32);
  }

  v14 = v45;
LABEL_16:
  v33 = *(a7 + 16);
  v34 = _swiftEmptyArrayStorage;
  if (v33)
  {
    v46 = v14;
    v43 = v13;
    v44 = a3;
    v35 = a8;
    v47 = _swiftEmptyArrayStorage;
    sub_100026EF4(0, v33, 0);
    v34 = v47;
    v36 = (a7 + 40);
    do
    {
      v37 = *(v36 - 1);
      v38 = *v36;
      v47 = v34;
      v40 = v34[2];
      v39 = v34[3];

      if (v40 >= v39 >> 1)
      {
        sub_100026EF4((v39 > 1), v40 + 1, 1);
        v34 = v47;
      }

      v34[2] = v40 + 1;
      v41 = &v34[2 * v40];
      v41[4] = v37;
      v41[5] = v38;
      v36 += 6;
      --v33;
    }

    while (v33);
    a8 = v35;
    a3 = v44;
    v13 = v43;
    v14 = v46;
  }

  a8(v14 & 1, v13 & 1, v34, a3);
}

id sub_1006B9764()
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    v1 = *(v0 + 24);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v3 = Strong;
      v4 = [Strong supportsAccountUtils];

      if (v4)
      {
        v5 = type metadata accessor for RDDaemonController();
        v22 = xmmword_1007B58E0;
        v24 = 0;
        *&v25 = 0;
        v23 = 0;
        *(&v25 + 6) = 0;
        v6 = *(v0 + 40);
        ObjectType = swift_getObjectType();
        v8 = v6;
        v9 = swift_unknownObjectRetain();
        v10 = sub_1005564D4(v9, &v22, v6, v5, ObjectType, v1);
        v11 = objc_allocWithZone(REMStore);
        v12 = [v11 initWithDaemonController:{v10, v22, v23, v24, v25, *(&v25 + 1)}];
        swift_unknownObjectRelease();

        return v12;
      }
    }

    if (qword_1009366E8 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_100006654(v14, qword_10094FB70);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "Failed to create store because storeController does not support accountUtils", v17, 2u);
    }

    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_1009366E8 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_100006654(v18, qword_10094FB70);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "Failed to create store because the XPC daemon is gone", v21, 2u);
    }
  }

  return 0;
}

void sub_1006B99DC(void **a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v23 = 0;
  v24 = 0xE000000000000000;
  _StringGuts.grow(_:)(35);

  v23 = 0x203A656D616E3CLL;
  v24 = 0xE700000000000000;
  v10 = [v9 name];
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  v14._countAndFlagsBits = v11;
  v14._object = v13;
  String.append(_:)(v14);

  v15._countAndFlagsBits = 0x6E756F636361202CLL;
  v15._object = 0xED0000203A444974;
  String.append(_:)(v15);
  v16 = [v9 objectID];
  v17 = [v16 uuid];

  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100054694(&qword_10093F2A0, &type metadata accessor for UUID);
  v18._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v18);

  (*(v5 + 8))(v8, v4);
  v19._countAndFlagsBits = 0x203A65707974202CLL;
  v19._object = 0xE800000000000000;
  String.append(_:)(v19);
  v25 = [v9 type];
  v20._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v20);

  v21._countAndFlagsBits = 62;
  v21._object = 0xE100000000000000;
  String.append(_:)(v21);
  v22 = v24;
  *a2 = v23;
  a2[1] = v22;
}

uint64_t sub_1006B9C6C(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  if (qword_1009366E8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100006654(v4, qword_10094FB70);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Orphaned accounts removed", v7, 2u);
  }

  return a2(1, a1);
}

void sub_1006B9D6C(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for DispatchQoS();
  isa = v27[-1].isa;
  v12 = *(isa + 8);
  __chkstk_darwin(v27);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    v26 = v7;
    if (qword_100935D18 != -1)
    {
      swift_once();
    }

    v25 = qword_100974CB0;
    v17 = swift_allocObject();
    v17[2] = a1;
    v17[3] = v16;
    v17[4] = a2;
    v17[5] = a3;
    aBlock[4] = sub_1006C0C0C;
    aBlock[5] = v17;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100019200;
    aBlock[3] = &unk_1008FB798;
    v18 = _Block_copy(aBlock);
    v19 = a1;
    v20 = v16;

    static DispatchQoS.unspecified.getter();
    v28 = _swiftEmptyArrayStorage;
    sub_100054694(&qword_100936E90, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000F5104(&unk_100939E50, &unk_100791AD0);
    sub_10000CB48(&qword_100936EA0, &unk_100939E50, &unk_100791AD0);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v18);

    (*(v26 + 8))(v10, v6);
    (*(isa + 1))(v14, v27);
  }

  else
  {
    if (qword_1009366E8 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_100006654(v21, qword_10094FB70);
    v27 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v27, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v27, v22, "RDAccountUtils: _initializeAllAccounts: Missing store controller.", v23, 2u);
    }

    v24 = v27;
  }
}

uint64_t sub_1006BA188(void *a1, void *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (qword_1009366E8 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100006654(v6, qword_10094FB70);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "RDAccountUtils: _initializeAllAccounts: Calling RDAccountInitializer.initializeAllAccounts()", v9, 2u);
  }

  v10 = [objc_opt_self() sharedInstance];
  v11 = [objc_opt_self() daemonUserDefaults];
  v12 = type metadata accessor for RDAccountInitializer();
  v13 = objc_allocWithZone(v12);
  *&v13[OBJC_IVAR____TtC7remindd20RDAccountInitializer_store] = a1;
  *&v13[OBJC_IVAR____TtC7remindd20RDAccountInitializer_storeController] = a2;
  *&v13[OBJC_IVAR____TtC7remindd20RDAccountInitializer_appleAccountUtilities] = v10;
  *&v13[OBJC_IVAR____TtC7remindd20RDAccountInitializer_userDefaults] = v11;
  v23.receiver = v13;
  v23.super_class = v12;
  v14 = a1;
  v15 = a2;
  v16 = objc_msgSendSuper2(&v23, "init");
  sub_100455ED0();

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v17, v18, "RDAccountUtils: _initializeAllAccounts: RDAccountInitializer.initializeAllAccounts() finished, calling completion.", v19, 2u);
  }

  return a3(v20, v21);
}

void sub_1006BA3CC()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    if (qword_1009366E8 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100006654(v7, qword_10094FB70);
    oslog = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v8, "RDAccountUtils: Missing store controller, can't start ICCC.", v9, 2u);
    }

    goto LABEL_12;
  }

  v1 = Strong;
  v2 = [Strong cloudContext];
  if (v2)
  {
    oslog = v2;
    [v2 setDisabled:0];
    if (qword_1009366E8 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_100006654(v3, qword_10094FB70);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "RDAccountUtils: Enabled ICCC", v6, 2u);
    }

LABEL_12:
    v10 = oslog;
    goto LABEL_18;
  }

  if (qword_1009366E8 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_100006654(v11, qword_10094FB70);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "RDAccountUtils: Missing ICCC, can't start ICCC.", v14, 2u);
  }

  v10 = v1;
LABEL_18:
}

void sub_1006BA670(uint64_t a1, uint64_t a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    v5 = [Strong cloudContext];
    if (v5)
    {
      v6 = v5;
      [v5 setDisabled:1];
      v7 = swift_allocObject();
      *(v7 + 16) = a1;
      *(v7 + 24) = a2;
      aBlock[4] = sub_1006C0C04;
      aBlock[5] = v7;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100019200;
      aBlock[3] = &unk_1008FB748;
      v8 = _Block_copy(aBlock);

      [v6 cancelEverythingWithCompletionHandler:v8];
      _Block_release(v8);

      return;
    }

    if (qword_1009366E8 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_100006654(v12, qword_10094FB70);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "RDAccountUtils: Missing ICCC, can't stop ICCC.", v15, 2u);
    }
  }

  else
  {
    if (qword_1009366E8 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_100006654(v9, qword_10094FB70);
    v16 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v16, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v16, v10, "RDAccountUtils: Missing store controller, can't stop ICCC.", v11, 2u);
    }
  }
}

uint64_t sub_1006BA928(uint64_t (*a1)(void))
{
  if (qword_1009366E8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100006654(v2, qword_10094FB70);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "RDAccountUtils: Disabled ICCC", v5, 2u);
  }

  return a1();
}

void sub_1006BAA1C(uint64_t a1)
{
  v2 = [objc_opt_self() sharedManager];
  [v2 enableMonitoringAgentsWithToken:a1];
}

uint64_t sub_1006BAA8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v21 = *(v6 - 8);
  v7 = *(v21 + 64);
  __chkstk_darwin(v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for DispatchQoS();
  v10 = *(v20 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v20);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = [objc_opt_self() sharedManager];
  v14 = [v19 disableMonitoringAgents];
  swift_beginAccess();
  *(a1 + 16) = v14;
  *(a1 + 24) = 0;
  if (qword_100935D18 != -1)
  {
    swift_once();
  }

  v15 = swift_allocObject();
  v15[2] = a2;
  v15[3] = a3;
  v15[4] = a1;
  aBlock[4] = sub_1006D19E4;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100019200;
  aBlock[3] = &unk_1008FBB58;
  v16 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v22 = _swiftEmptyArrayStorage;
  sub_100054694(&qword_100936E90, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000F5104(&unk_100939E50, &unk_100791AD0);
  sub_10000CB48(&qword_100936EA0, &unk_100939E50, &unk_100791AD0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);

  (*(v21 + 8))(v9, v6);
  (*(v10 + 8))(v13, v20);
}

uint64_t sub_1006BADFC()
{
  sub_1000536E0(v0 + 16);
  swift_unknownObjectWeakDestroy();

  return swift_deallocClassInstance();
}

uint64_t sub_1006BAE68(char a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, char a8, uint64_t a9, uint64_t a10)
{
  v17 = swift_allocObject();
  *(v17 + 16) = a5;
  *(v17 + 24) = a7;
  *(v17 + 32) = a8 & 1;
  *(v17 + 40) = a9;
  *(v17 + 48) = a10;
  *(v17 + 56) = a1;
  *(v17 + 57) = a2;
  *(v17 + 64) = a4;

  swift_errorRetain();
  sub_1006B9D6C(a6, sub_1006D5484, v17);
}

uint64_t sub_1006BAF48(char a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v26 = a5;
  v27 = a8;
  v30 = a4;
  v28 = a9;
  v13 = type metadata accessor for DispatchWorkItemFlags();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for DispatchQoS();
  v18 = *(v29 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v29);
  v21 = &v26 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = swift_allocObject();
  v23 = v27;
  *(v22 + 16) = v26;
  *(v22 + 24) = a6;
  *(v22 + 32) = a1;
  *(v22 + 33) = a2;
  *(v22 + 40) = a3;
  aBlock[4] = v23;
  aBlock[5] = v22;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100019200;
  aBlock[3] = v28;
  v24 = _Block_copy(aBlock);

  swift_errorRetain();
  static DispatchQoS.unspecified.getter();
  v31 = _swiftEmptyArrayStorage;
  sub_100054694(&qword_100936E90, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000F5104(&unk_100939E50, &unk_100791AD0);
  sub_10000CB48(&qword_100936EA0, &unk_100939E50, &unk_100791AD0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v24);
  (*(v14 + 8))(v17, v13);
  (*(v18 + 8))(v21, v29);
}

uint64_t sub_1006BB230(uint64_t a1, char a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, char a7)
{
  v14 = swift_allocObject();
  *(v14 + 16) = a3;
  *(v14 + 24) = a4;
  *(v14 + 32) = a1;
  *(v14 + 40) = a2 & 1;
  *(v14 + 48) = a5;
  *(v14 + 56) = a6;
  *(v14 + 64) = a7;

  v15 = a4;

  sub_1006BA670(sub_1006D49B4, v14);
}

uint64_t sub_1006BB2F8(uint64_t a1, void *a2, NSObject *a3, NSObject *a4, unint64_t a5, uint64_t a6, int a7)
{
  v66 = a7;
  v13 = type metadata accessor for DispatchWorkItemFlags();
  v65 = *(v13 - 8);
  v14 = *(v65 + 64);
  __chkstk_darwin(v13);
  v63 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = type metadata accessor for DispatchQoS();
  v62 = *(v64 - 8);
  v16 = *(v62 + 64);
  __chkstk_darwin(v64);
  v61 = &v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  v20 = swift_allocObject();
  *(v20 + 16) = a1;
  *(v20 + 24) = a2;
  *(v20 + 32) = v18;
  *(v20 + 40) = v19;
  v68 = a3;
  *(v20 + 48) = a3;
  v21 = a4;
  *(v20 + 56) = a4 & 1;
  v22 = a5;
  *(v20 + 64) = a5;
  *(v20 + 72) = a6;
  v23 = objc_opt_self();

  v69 = a2;
  v70 = a1;

  v71 = v19;

  v72 = v18;

  v24 = [v23 sharedInstance];
  v25 = [v24 accountStore];

  v26 = [v25 aa_accountsEnabledForDataclass:kAccountDataclassReminders];
  if (v26)
  {
    v27 = v26;
    v59 = v13;
    v60 = v20;
    sub_1000060C8(0, &qword_100947960, ACAccount_ptr);
    v22 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v68 = dispatch_group_create();
    v67 = swift_allocObject();
    *(v67 + 16) = 0;
    v58 = v25;
    if (v22 >> 62)
    {
      v28 = _CocoaArrayWrapper.endIndex.getter();
      if (v28)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v28 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v28)
      {
LABEL_4:
        if (v28 >= 1)
        {
          v29 = 0;
          v30 = &selRef_attachmentRepresentationAndReturnError_;
          v31 = v67;
          do
          {
            if ((v22 & 0xC000000000000001) != 0)
            {
              v32 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              v32 = *(v22 + 8 * v29 + 32);
            }

            v33 = v32;
            if ([v32 v30[271]])
            {
              v34 = v68;
              dispatch_group_enter(v68);
              v35 = v71;

              v36 = v72;

              v37 = v28;
              v38 = v33;
              v39 = v34;
              sub_1006C8E98(v38, v69, 2u, v66 & 1, v70, v38, v31, v36, v35, v39);

              v30 = &selRef_attachmentRepresentationAndReturnError_;

              v28 = v37;
            }

            ++v29;
          }

          while (v28 != v29);
          goto LABEL_19;
        }

        __break(1u);
        goto LABEL_23;
      }
    }

LABEL_19:

    if (qword_100935D30 != -1)
    {
      swift_once();
    }

    v70 = qword_100974CC8;
    v51 = swift_allocObject();
    v51[2] = v67;
    v51[3] = sub_1006D49CC;
    v51[4] = v60;
    aBlock[4] = sub_1006D4A04;
    aBlock[5] = v51;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100019200;
    aBlock[3] = &unk_1008FC260;
    v52 = _Block_copy(aBlock);

    v53 = v61;
    static DispatchQoS.unspecified.getter();
    v73 = _swiftEmptyArrayStorage;
    sub_100054694(&qword_100936E90, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000F5104(&unk_100939E50, &unk_100791AD0);
    sub_10000CB48(&qword_100936EA0, &unk_100939E50, &unk_100791AD0);
    v54 = v63;
    v55 = v59;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v56 = v68;
    OS_dispatch_group.notify(qos:flags:queue:execute:)();
    _Block_release(v52);

    (*(v65 + 8))(v54, v55);
    (*(v62 + 8))(v53, v64);
  }

  v19 = a6;
  a6 = v22;
  LOBYTE(v22) = v21;
  v21 = v68;
  if (qword_1009366E8 != -1)
  {
LABEL_23:
    swift_once();
  }

  v40 = v25;
  v41 = type metadata accessor for Logger();
  sub_100006654(v41, qword_10094FB70);
  v42 = Logger.logObject.getter();
  v43 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    *v44 = 0;
    _os_log_impl(&_mh_execute_header, v42, v43, "RDAccountUtils: No reminders accounts is found", v44, 2u);
  }

  v45 = v69;
  v46 = v70;

  v47 = v19;
  v48 = v71;

  v49 = v72;

  sub_1006D1A54(v45, v49, v48, 0, v46, v45, v21, v22 & 1, a6, v47);
}

uint64_t sub_1006BBAC0(uint64_t a1, unint64_t a2, void *a3, unint64_t a4, uint64_t a5, unint64_t a6, char a7, uint64_t a8, unint64_t a9)
{

  swift_errorRetain();

  v17 = a3;

  sub_1006D1A54(v17, a4, a5, a1, a2, v17, a6, a7 & 1, a8, a9);
}

uint64_t sub_1006BBBB8(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, char a9, uint64_t a10, uint64_t a11)
{
  v19 = a11;
  swift_beginAccess();
  v20 = *(a3 + 16) | a1;
  swift_beginAccess();
  *(a3 + 16) = v20 & 1;
  swift_beginAccess();
  v21 = *(a4 + 16) | a1;
  swift_beginAccess();
  *(a4 + 16) = v21 & 1;
  v22 = swift_allocObject();
  v23 = v22;
  *(v22 + 16) = a2;
  if (!a5)
  {
    goto LABEL_6;
  }

  if (!a2)
  {
    *(v22 + 16) = a5;
LABEL_6:
    swift_errorRetain();
    goto LABEL_7;
  }

  v31 = objc_opt_self();
  sub_1000F5104(&qword_10094FE58, &unk_1007B5980);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_100791340;
  *(v24 + 32) = a5;
  *(v24 + 40) = a2;
  swift_errorRetain();
  swift_errorRetain();
  swift_errorRetain();
  swift_errorRetain();
  swift_errorRetain();
  sub_1000F5104(&unk_1009399E0, &qword_100795D00);
  v25 = a8;
  v26 = a7;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v28 = [v31 errorFromErrors:isa];

  a7 = v26;
  a8 = v25;
  v19 = a11;
  *(v23 + 16) = v28;

LABEL_7:
  v29 = swift_allocObject();
  *(v29 + 16) = a6;
  *(v29 + 24) = a8;
  *(v29 + 32) = a9 & 1;
  *(v29 + 40) = a3;
  *(v29 + 48) = a4;
  *(v29 + 56) = v23;
  *(v29 + 64) = a10;
  *(v29 + 72) = v19;

  sub_1006B9D6C(a7, sub_1006D548C, v29);
}

uint64_t sub_1006BBE58(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(void, void, void))
{
  sub_1006BA3CC();
  if (a3)
  {
    if (qword_1009366E8 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_100006654(v13, qword_10094FB70);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "Failed to restart DA monitoring agents", v16, 2u);
    }
  }

  else
  {
    sub_1006D4308(a2);
  }

  if (qword_1009366E8 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_100006654(v17, qword_10094FB70);

  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = a7;
    v22 = swift_slowAlloc();
    v31 = v22;
    *v20 = 67109634;
    swift_beginAccess();
    *(v20 + 4) = *(a4 + 16);

    *(v20 + 8) = 1024;
    swift_beginAccess();
    *(v20 + 10) = *(a5 + 16);

    *(v20 + 14) = 2080;
    swift_beginAccess();
    v30 = *(a6 + 16);
    swift_errorRetain();
    sub_1000F5104(&qword_10093B608, &unk_1007B20D0);
    v23 = String.init<A>(describing:)();
    v25 = sub_10000668C(v23, v24, &v31);

    *(v20 + 16) = v25;
    _os_log_impl(&_mh_execute_header, v18, v19, "RDAccountUtils: Completed updating system accounts, calling updateAccountsAndFetchMigrationState completion {didAddOrRemoveAccounts: %{BOOL}d, didUpdateAccounts: %{BOOL}d, error: %s}", v20, 0x18u);
    sub_10000607C(v22);
    a7 = v21;
  }

  else
  {
  }

  swift_beginAccess();
  v26 = *(a4 + 16);
  swift_beginAccess();
  v27 = *(a5 + 16);
  swift_beginAccess();
  v28 = *(a6 + 16);
  swift_errorRetain();
  a7(v26, v27, v28);
}

void sub_1006BC1D4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, char a6, NSObject *a7)
{
  if (a1)
  {
    swift_beginAccess();
    if (!*(a2 + 16))
    {
      swift_beginAccess();
      *(a2 + 16) = a1;
      swift_errorRetain();
    }
  }

  swift_beginAccess();
  v14 = *(a3 + 16) | a4;
  swift_beginAccess();
  *(a3 + 16) = v14 & 1;
  swift_beginAccess();
  v15 = *(a5 + 16) | a6;
  swift_beginAccess();
  *(a5 + 16) = v15 & 1;
  dispatch_group_leave(a7);
}

uint64_t sub_1006BC2E4(uint64_t a1, void (*a2)(uint64_t))
{
  swift_beginAccess();
  if (*(a1 + 16))
  {
    v4 = *(a1 + 16);
    swift_errorRetain();
    if (qword_1009366E8 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_100006654(v5, qword_10094FB70);
    swift_errorRetain();
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v15 = v9;
      *v8 = 136315138;
      swift_getErrorValue();
      v10 = Error.localizedDescription.getter();
      v12 = sub_10000668C(v10, v11, &v15);

      *(v8 + 4) = v12;
      _os_log_impl(&_mh_execute_header, v6, v7, "RDAccountUtils: Failed to update some or all of the system accounts {error: %s}", v8, 0xCu);
      sub_10000607C(v9);
    }

    else
    {
    }
  }

  swift_beginAccess();
  v13 = *(a1 + 16);
  swift_errorRetain();
  a2(v13);
}

void sub_1006BC500(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = v74 - v6;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = v74 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = v74 - v14;
  v16 = sub_1006B9764();
  if (!v16)
  {
    v21 = objc_opt_self();
    v22 = String._bridgeToObjectiveC()();
    v20 = [v21 internalErrorWithDebugDescription:v22];

    swift_willThrow();
    goto LABEL_5;
  }

  v17 = v16;
  v81 = 0;
  v18 = [v16 fetchDefaultListWithError:&v81];
  v19 = v18;
  if (v81)
  {
    v20 = v81;

    swift_willThrow();
LABEL_5:
    if (qword_1009366E8 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_100006654(v23, qword_10094FB70);
    swift_errorRetain();
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v81 = v27;
      *v26 = 136315138;
      v80 = v20;
      swift_errorRetain();
      sub_1000F5104(&unk_1009399E0, &qword_100795D00);
      v28 = String.init<A>(describing:)();
      v30 = sub_10000668C(v28, v29, &v81);

      *(v26 + 4) = v30;
      _os_log_impl(&_mh_execute_header, v24, v25, "Can't migrate default list ID {error: %s}", v26, 0xCu);
      sub_10000607C(v27);
    }

    else
    {
    }

    return;
  }

  if (!v18)
  {
LABEL_27:

    return;
  }

  v79 = v13;
  v31 = [v18 account];
  v32 = v9;
  v33 = [v31 objectID];

  v34 = [v33 uuid];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v35 = UUID.uuidString.getter();
  v37 = v36;
  v78 = v32;
  v39 = *(v32 + 8);
  v38 = v32 + 8;
  v77 = v39;
  v39(v15, v8);
  if (v35 == a1 && v37 == a2)
  {

    goto LABEL_15;
  }

  v40 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v40 & 1) == 0)
  {

    goto LABEL_27;
  }

LABEL_15:
  v41 = [v19 externalIdentifier];
  v42 = v19;
  if (!v41)
  {
    v61 = objc_opt_self();
    v62 = String._bridgeToObjectiveC()();
    v20 = [v61 internalErrorWithDebugDescription:v62];

    swift_willThrow();
    goto LABEL_5;
  }

  v74[1] = v38;
  v75 = v19;
  v76 = v17;
  v43 = v41;
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v44 = sub_1006C1AFC(1);
  v46 = v45;

  v47 = v46;
  v48 = v79;
  while (1)
  {
    if ((v47 ^ v44) < 0x4000)
    {
      v63 = objc_opt_self();
      v81 = 0;
      v82 = 0xE000000000000000;
      _StringGuts.grow(_:)(91);
      v64._countAndFlagsBits = 0xD000000000000058;
      v64._object = 0x80000001007FEE90;
      String.append(_:)(v64);
      v65 = static String._fromSubstring(_:)();
      v67 = v66;

      v68._countAndFlagsBits = v65;
      v68._object = v67;
      String.append(_:)(v68);

      v69._countAndFlagsBits = 125;
      v69._object = 0xE100000000000000;
      String.append(_:)(v69);
      v59 = String._bridgeToObjectiveC()();

      v60 = [v63 internalErrorWithDebugDescription:v59];
      goto LABEL_29;
    }

    v47 = Substring.index(before:)();
    if (Substring.subscript.getter() == 47 && v50 == 0xE100000000000000)
    {
      break;
    }

    v49 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v49)
    {
      goto LABEL_22;
    }
  }

LABEL_22:
  if (v46 >> 14 < Substring.index(_:offsetBy:)() >> 14)
  {
    __break(1u);
  }

  Substring.subscript.getter();
  static String._fromSubstring(_:)();

  UUID.init(uuidString:)();

  v51 = v78;
  if ((*(v78 + 48))(v7, 1, v8) == 1)
  {
    sub_1000050A4(v7, &unk_100939D90, "8\n\r");
    v52 = objc_opt_self();
    v81 = 0;
    v82 = 0xE000000000000000;
    _StringGuts.grow(_:)(90);
    v53._countAndFlagsBits = 0xD000000000000057;
    v53._object = 0x80000001007FEE30;
    String.append(_:)(v53);
    v54 = static String._fromSubstring(_:)();
    v56 = v55;

    v57._countAndFlagsBits = v54;
    v57._object = v56;
    String.append(_:)(v57);

    v58._countAndFlagsBits = 125;
    v58._object = 0xE100000000000000;
    String.append(_:)(v58);
    v59 = String._bridgeToObjectiveC()();

    v60 = [v52 internalErrorWithDebugDescription:v59];
LABEL_29:
    v20 = v60;

    swift_willThrow();
    goto LABEL_5;
  }

  (*(v51 + 32))(v48, v7, v8);
  v70 = [objc_opt_self() daemonUserDefaults];
  v71 = objc_opt_self();
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v73 = [v71 objectIDWithUUID:isa];

  [v70 setPreferredDefaultListID:v73];
  v77(v48, v8);
}

void sub_1006BCDEC(char a1, uint64_t a2, void *a3, char a4, uint64_t a5, void (*a6)(id), uint64_t a7)
{
  if ((a1 & 1) == 0)
  {
    if (qword_1009366E8 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_100006654(v13, qword_10094FB70);
    v36 = a3;
    v14 = a3;
    swift_errorRetain();
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v35 = a5;
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v37 = v19;
      *v17 = 138412546;
      *(v17 + 4) = v14;
      v34 = v18;
      *v18 = v14;
      *(v17 + 12) = 2080;
      if (a2)
      {
        swift_getErrorValue();
        v20 = v14;
        v21 = Error.localizedDescription.getter();
        v23 = v22;
      }

      else
      {
        v24 = v14;
        v23 = 0xE300000000000000;
        v21 = 7104878;
      }

      v25 = sub_10000668C(v21, v23, &v37);

      *(v17 + 14) = v25;
      _os_log_impl(&_mh_execute_header, v15, v16, "RDAccountUtils: Error updating migration flags for ACAccount {acAccount: %@, error: %s}", v17, 0x16u);
      sub_1000050A4(v34, &unk_100938E70, &unk_100797230);

      sub_10000607C(v19);

      a5 = v35;
    }

    else
    {
    }

    a3 = v36;
  }

  if (a4)
  {
    v26 = sub_1006B9764();
    if (v26)
    {
      v27 = v26;
      v28 = swift_allocObject();
      v28[2] = a5;
      v28[3] = a3;
      v28[4] = v27;
      v28[5] = a6;
      v28[6] = a7;
      v29 = a3;

      v30 = v27;

      sub_1006C0C18(1, sub_1006D4C84, v28);
    }

    else
    {
      v31 = objc_opt_self();
      v32 = String._bridgeToObjectiveC()();
      v33 = [v31 internalErrorWithDebugDescription:v32];

      a6(v33);
    }
  }

  else
  {
    a6(0);
  }
}

uint64_t sub_1006BD148(uint64_t a1, char a2, uint64_t a3, void *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v16 = swift_allocObject();
  *(v16 + 16) = a3;
  *(v16 + 24) = a4;
  *(v16 + 32) = a5;
  *(v16 + 40) = a1;
  *(v16 + 48) = a2 & 1;
  *(v16 + 56) = a6;
  *(v16 + 64) = a7;

  v17 = a4;
  v18 = a5;

  sub_1006BA670(a9, v16);
}

uint64_t sub_1006BD208(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8, void (*a9)(uint64_t, id, uint64_t, uint64_t, uint64_t, uint64_t, id, uint64_t, char, uint64_t, uint64_t))
{
  v16 = a5 & 1;

  v17 = a3;

  v19 = v16;
  a9(a2, v17, 2, a8, a1, a1, v17, a4, v19, a6, a7);
}

uint64_t sub_1006BD2D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, char a8, uint64_t a9, uint64_t a10)
{
  v15 = swift_allocObject();
  *(v15 + 16) = a5;
  *(v15 + 24) = a7;
  *(v15 + 32) = a8 & 1;
  *(v15 + 40) = a9;
  *(v15 + 48) = a10;
  *(v15 + 56) = a4;

  swift_errorRetain();
  sub_1006B9D6C(a6, sub_1006D5490, v15);
}

void sub_1006BD39C(char a1, uint64_t a2, uint64_t a3, dispatch_group_t group)
{
  if ((a1 & 1) == 0)
  {
    if (qword_1009366E8 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100006654(v7, qword_10094FB70);
    swift_errorRetain();
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v16 = v11;
      *v10 = 136315138;
      if (a2)
      {
        swift_getErrorValue();
        v12 = Error.localizedDescription.getter();
        v14 = v13;
      }

      else
      {
        v14 = 0xE300000000000000;
        v12 = 7104878;
      }

      v15 = sub_10000668C(v12, v14, &v16);

      *(v10 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v8, v9, "Error saving ACAccount {error: %s}", v10, 0xCu);
      sub_10000607C(v11);
    }
  }

  if (a2)
  {
    swift_beginAccess();
    if (!*(a3 + 16))
    {
      swift_beginAccess();
      *(a3 + 16) = a2;
      swift_errorRetain();
    }
  }

  dispatch_group_leave(group);
}

uint64_t sub_1006BD580(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v5 = *(a3 + 16);
  swift_errorRetain();
  a1(v5);
}

uint64_t sub_1006BD5EC(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v23 = a3;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for DispatchQoS();
  v14 = *(v22 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v22);
  v17 = &v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = swift_allocObject();
  *(v18 + 16) = a4;
  *(v18 + 24) = a5;
  *(v18 + 32) = a1;
  *(v18 + 40) = a2;
  aBlock[4] = sub_1006D475C;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100019200;
  aBlock[3] = &unk_1008FBD38;
  v19 = _Block_copy(aBlock);

  swift_errorRetain();
  static DispatchQoS.unspecified.getter();
  v24 = _swiftEmptyArrayStorage;
  sub_100054694(&qword_100936E90, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000F5104(&unk_100939E50, &unk_100791AD0);
  sub_10000CB48(&qword_100936EA0, &unk_100939E50, &unk_100791AD0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v19);
  (*(v10 + 8))(v13, v9);
  (*(v14 + 8))(v17, v22);
}

uint64_t sub_1006BD8D4(uint64_t a1, char a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  *(v12 + 16) = a3;
  *(v12 + 24) = a4;
  *(v12 + 32) = a1;
  *(v12 + 40) = a2 & 1;
  *(v12 + 48) = a5;
  *(v12 + 56) = a6;

  v13 = a4;

  sub_1006BA670(sub_1006D1A40, v12);
}

uint64_t sub_1006BD994(char **a1, void *a2, uint64_t *a3, char a4, uint64_t *a5, void *a6)
{

  v12 = a2;

  sub_1006D30BC(v12, a1, v12, a3, a4 & 1, a5, a6);
}

uint64_t sub_1006BDA2C(char a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  v16 = swift_allocObject();
  *(v16 + 16) = a3;
  *(v16 + 24) = a5;
  *(v16 + 32) = a6 & 1;
  *(v16 + 40) = a7;
  *(v16 + 48) = a8;
  *(v16 + 56) = a1;
  *(v16 + 64) = a2;

  swift_errorRetain();
  sub_1006B9D6C(a4, sub_1006D547C, v16);
}

void sub_1006BDB08(void *a1, int a2)
{
  v4 = a1;
  v5 = *(v2 + 16);
  v6 = sub_1006BFECC(a1, v5);
  if (!v6)
  {
    goto LABEL_14;
  }

  v7 = v6;
  v8 = [v6 accountTypeHost];
  v9 = [v8 isCloudKit];

  if (!v9)
  {

LABEL_14:
    sub_1006C06E8();
    swift_allocError();
    swift_willThrow();
    return;
  }

  if (![v7 didChooseToMigrate])
  {
    sub_1006C073C();
LABEL_17:
    swift_allocError();
    swift_willThrow();
LABEL_18:

    return;
  }

  v10 = sub_1006C0790(v4, v5);
  if (!v10)
  {
    sub_1006C0BB0();
    goto LABEL_17;
  }

  v11 = v10;
  v12 = REMAccount.isConsideredEmpty()();
  if (v13)
  {
LABEL_11:

LABEL_12:
    return;
  }

  if (v12)
  {
    if (qword_1009366E8 == -1)
    {
LABEL_8:
      v14 = type metadata accessor for Logger();
      sub_100006654(v14, qword_10094FB70);
      v15 = v11;
      v16 = v4;
      v11 = Logger.logObject.getter();
      v17 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v11, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        *v18 = 138543618;
        v20 = [v15 objectID];
        *(v18 + 4) = v20;
        *v19 = v20;
        *(v18 + 12) = 2114;
        v21 = [v16 identifier];
        *(v18 + 14) = v21;
        v19[1] = v21;
        _os_log_impl(&_mh_execute_header, v11, v17, "RDAccountUtils.InactivatedICloudCalDavDataMover: Found an inactivated iCloud CalDAV account but it is empty, we're done {remObjectID: %{public}@, acAccountIdentifier: %{public}@}", v18, 0x16u);
        sub_1000F5104(&unk_100938E70, &unk_100797230);
        swift_arrayDestroy();
      }

      goto LABEL_11;
    }

LABEL_58:
    swift_once();
    goto LABEL_8;
  }

  v92 = 0;
  if (qword_1009366E8 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  v23 = sub_100006654(v22, qword_10094FB70);
  v24 = v11;
  v25 = v4;
  v84[5] = v23;
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();
  v86 = v25;

  v87 = v24;
  v85 = a2;
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *v28 = 138543618;
    v30 = [v87 objectID];
    *(v28 + 4) = v30;
    *v29 = v30;
    *(v28 + 12) = 2114;
    v31 = [v86 identifier];
    *(v28 + 14) = v31;
    v29[1] = v31;
    _os_log_impl(&_mh_execute_header, v26, v27, "RDAccountUtils.InactivatedICloudCalDavDataMover: Found an inactivated non-empy iCloud CalDAV account, now going to perform data move... {remObjectID: %{public}@, acAccountIdentifier: %{public}@}", v28, 0x16u);
    sub_1000F5104(&unk_100938E70, &unk_100797230);
    swift_arrayDestroy();
    v24 = v87;
  }

  v95[0] = 0;
  v32 = [v24 fetchListsWithError:v95];
  v11 = v95[0];
  if (!v32)
  {
    v49 = v95[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
    goto LABEL_18;
  }

  v4 = v32;
  sub_1000060C8(0, &qword_10093D5D0, REMList_ptr);
  v33 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v34 = v11;

  v35 = v33;
  v94 = _swiftEmptyArrayStorage;
  if (v33 >> 62)
  {
    v36 = _CocoaArrayWrapper.endIndex.getter();
    v35 = v33;
  }

  else
  {
    v36 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v36)
  {
    v37 = 0;
    v90 = v35 & 0xFFFFFFFFFFFFFF8;
    v91 = v35 & 0xC000000000000001;
    v88 = v36;
    v89 = v35;
    while (1)
    {
      if (v91)
      {
        v39 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v37 >= *(v90 + 16))
        {
          goto LABEL_55;
        }

        v39 = *(v35 + 8 * v37 + 32);
      }

      v4 = v39;
      v40 = v37 + 1;
      if (__OFADD__(v37, 1))
      {
        break;
      }

      v41 = [v39 name];
      v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v44 = v43;

      v95[0] = v42;
      v95[1] = v44;
      __chkstk_darwin(v45);
      v84[2] = v95;
      v46 = v92;
      LOBYTE(v41) = sub_100040A74(sub_100040B20, v84, &off_1008DC8D0);
      v92 = v46;

      if (v41 & 1) != 0 || (v47 = [v4 name], static String._unconditionallyBridgeFromObjectiveC(_:)(), v47, v48._countAndFlagsBits = 0x8FB8EFA09AE220, v48._object = 0xA700000000000000, v11 = String.hasSuffix(_:)(v48), , (v11))
      {
        v11 = &v94;
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v38 = v94[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      else
      {
      }

      ++v37;
      v35 = v89;
      if (v40 == v88)
      {
        v11 = v94;
        goto LABEL_41;
      }
    }

    __break(1u);
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v11 = _swiftEmptyArrayStorage;
LABEL_41:

  v95[0] = _swiftEmptyArrayStorage;
  if (v11 < 0 || (v11 & 0x4000000000000000) != 0)
  {
    v50 = _CocoaArrayWrapper.endIndex.getter();
    if (v50)
    {
LABEL_44:
      v51 = 0;
      v4 = _swiftEmptyArrayStorage;
      while (1)
      {
        if ((v11 & 0xC000000000000001) != 0)
        {
          v52 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v51 >= *(v11 + 16))
          {
            goto LABEL_57;
          }

          v52 = *(v11 + 8 * v51 + 32);
        }

        v53 = v52;
        v54 = v51 + 1;
        if (__OFADD__(v51, 1))
        {
          break;
        }

        v94 = v52;
        v55 = v92;
        sub_1006BE63C(v95, &v94, &v93);
        v92 = v55;
        if (v55)
        {

          return;
        }

        v4 = v93;
        v95[0] = v93;
        ++v51;
        if (v54 == v50)
        {
          goto LABEL_62;
        }
      }

LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
      goto LABEL_58;
    }
  }

  else
  {
    v50 = *(v11 + 16);
    if (v50)
    {
      goto LABEL_44;
    }
  }

  v4 = _swiftEmptyArrayStorage;
LABEL_62:

  type metadata accessor for RDAccountDataMover();
  swift_initStackObject();
  v56 = sub_1004ED328(v5);
  v57 = *(v56 + 72);
  *(v56 + 72) = v4;

  if (v85)
  {
    *(v56 + 80) = 1;
  }

  v58 = v87;
  v59 = v92;
  sub_1004ED390(v87, v7);
  if (!v59)
  {
    v60 = v86;
    v61 = v7;

    v62 = Logger.logObject.getter();
    v63 = static os_log_type_t.default.getter();

    v64 = os_log_type_enabled(v62, v63);
    v92 = v61;
    if (v64)
    {
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v95[0] = v67;
      *v65 = 138543874;
      v68 = [v61 objectID];
      *(v65 + 4) = v68;
      *v66 = v68;
      *(v65 + 12) = 2114;
      v69 = [v60 identifier];
      *(v65 + 14) = v69;
      v66[1] = v69;
      *(v65 + 22) = 2082;
      v70 = *(v56 + 48);
      v71 = *(v56 + 56);
      v72 = sub_1004ED21C();
      v74 = sub_10000668C(v72, v73, v95);

      *(v65 + 24) = v74;
      _os_log_impl(&_mh_execute_header, v62, v63, "RDAccountUtils.InactivatedICloudCalDavDataMover: Completed moving data from the inactivated iCloud CalDAV account to CloudKit {ckAccount: %{public}@, acAccountIdentifier: %{public}@, stats: %{public}s}", v65, 0x20u);
      sub_1000F5104(&unk_100938E70, &unk_100797230);
      swift_arrayDestroy();
      v58 = v87;

      sub_10000607C(v67);
    }

    sub_1004EEEE8(v58);

    v11 = Logger.logObject.getter();
    v75 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v11, v75))
    {
      v76 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      v95[0] = v77;
      *v76 = 136446210;
      v78 = *(v56 + 48);
      v79 = *(v56 + 56);
      v80 = sub_1004ED21C();
      v82 = v58;
      v83 = sub_10000668C(v80, v81, v95);

      *(v76 + 4) = v83;
      _os_log_impl(&_mh_execute_header, v11, v75, "RDAccountUtils.InactivatedICloudCalDavDataMover: The inactivated CalDAV account is now emptied after the data move {stats: %{public}s}.", v76, 0xCu);
      sub_10000607C(v77);
    }

    else
    {
    }

    goto LABEL_12;
  }
}