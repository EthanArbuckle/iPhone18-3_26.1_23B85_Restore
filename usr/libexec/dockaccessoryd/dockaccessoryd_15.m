void *sub_1001CC618(unint64_t a1, uint64_t (*a2)(uint64_t, void), void (*a3)(uint64_t, uint64_t, unint64_t))
{
  if (!(a1 >> 62))
  {
    return (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v7 = _CocoaArrayWrapper.endIndex.getter();
  if (!v7)
  {
LABEL_7:

    return &_swiftEmptyArrayStorage;
  }

  v8 = v7;
  v9 = a2(v7, 0);
  a3(v9 + 32, v8, a1);
  v11 = v10;

  result = v9;
  if (v11 != v8)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_1001CC6BC(uint64_t result, uint64_t a2, unint64_t a3)
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
          sub_1000E4D54(&qword_1002ABF90, &qword_1002ABF88, &qword_10023F790);
          for (i = 0; i != v6; ++i)
          {
            sub_100095274(&qword_1002ABF88, &qword_10023F790);
            v9 = sub_1001CCA04(v13, i, a3);
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
        type metadata accessor for DKPersonTrackerState();
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

uint64_t sub_1001CC860(uint64_t result, uint64_t a2, unint64_t a3)
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
          sub_1000E4D54(&qword_1002ABF80, &qword_1002ABF78, &qword_10023F788);
          for (i = 0; i != v6; ++i)
          {
            sub_100095274(&qword_1002ABF78, &qword_10023F788);
            v9 = sub_1001CCA84(v13, i, a3);
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
        type metadata accessor for TrackedSubjectInternal();
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

uint64_t (*sub_1001CCA04(uint64_t (*result)(uint64_t *), unint64_t a2, uint64_t a3))(uint64_t *)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);

LABEL_5:
    *v3 = v5;
    return sub_1001CF398;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_1001CCA84(uint64_t (*result)(uint64_t *a1), unint64_t a2, uint64_t a3))(uint64_t *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);

LABEL_5:
    *v3 = v5;
    return sub_1001CCB04;
  }

  __break(1u);
  return result;
}

uint64_t sub_1001CCB0C(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_1001CCC00;

  return v6(v2 + 32);
}

uint64_t sub_1001CCC00()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v6 = *v0;

  *v3 = *(v1 + 32);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_1001CCD14(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v52 = a2;
  v61 = a4;
  v53 = a1;
  v60 = sub_100095274(&qword_1002ABEF8, &qword_10023F728);
  v5 = *(*(v60 - 8) + 64);
  v6 = __chkstk_darwin(v60);
  v8 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v68 = &v51 - v9;
  v67 = type metadata accessor for UUID();
  v10 = *(*(v67 - 8) + 64);
  result = __chkstk_darwin(v67);
  v66 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = 0;
  v63 = v8;
  v64 = a3;
  v15 = *(a3 + 64);
  v56 = a3 + 64;
  v16 = 1 << *(a3 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & v15;
  v54 = 0;
  v55 = (v16 + 63) >> 6;
  v58 = v12 + 16;
  v59 = v12;
  v62 = (v12 + 8);
  while (v18)
  {
    v21 = __clz(__rbit64(v18));
    v65 = (v18 - 1) & v18;
LABEL_12:
    v24 = v21 | (v14 << 6);
    v25 = v64;
    v26 = *(v59 + 16);
    v28 = v66;
    v27 = v67;
    v26(v66, v64[6] + *(v59 + 72) * v24, v67);
    v29 = v25[7];
    v57 = v24;
    v30 = (v29 + 16 * v24);
    v31 = *v30;
    v32 = v30[1];
    v33 = v68;
    v26(v68, v28, v27);
    v34 = v60;
    v35 = (v33 + *(v60 + 48));
    *v35 = v31;
    v35[1] = v32;
    sub_1000B5150(v33, v8, &qword_1002ABEF8, &qword_10023F728);
    v36 = &v8[*(v34 + 48)];
    v38 = *v36;
    v37 = *(v36 + 1);
    swift_bridgeObjectRetain_n();
    v39 = [v61 uniqueIDOverride];
    if (v39)
    {
      v40 = v39;
      v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v43 = v42;

      if (v38 == v41 && v37 == v43)
      {

        sub_100095C84(v68, &qword_1002ABEF8, &qword_10023F728);
        v8 = v63;
        v19 = *v62;
        v20 = v67;
        (*v62)(v63, v67);

        result = (v19)(v66, v20);
        v18 = v65;
      }

      else
      {
        v45 = _stringCompareWithSmolCheck(_:_:expecting:)();

        sub_100095C84(v68, &qword_1002ABEF8, &qword_10023F728);
        v8 = v63;
        v46 = *v62;
        v47 = v67;
        (*v62)(v63, v67);

        result = (v46)(v66, v47);
        v18 = v65;
        if ((v45 & 1) == 0)
        {
          goto LABEL_20;
        }
      }
    }

    else
    {

      sub_100095C84(v68, &qword_1002ABEF8, &qword_10023F728);
      v8 = v63;
      v48 = *v62;
      v49 = v67;
      (*v62)(v63, v67);

      result = (v48)(v66, v49);
      v18 = v65;
LABEL_20:
      *(v53 + ((v57 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v57;
      if (__OFADD__(v54++, 1))
      {
        __break(1u);
        return sub_1001CA7BC(v53, v52, v54, v64);
      }
    }
  }

  v22 = v14;
  while (1)
  {
    v14 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v14 >= v55)
    {
      return sub_1001CA7BC(v53, v52, v54, v64);
    }

    v23 = *(v56 + 8 * v14);
    ++v22;
    if (v23)
    {
      v21 = __clz(__rbit64(v23));
      v65 = (v23 - 1) & v23;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1001CD178(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;
  v7 = 8 * v6;
  v8 = a2;
  v9 = v8;
  if (v5 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v13 = swift_slowAlloc();
      v14 = v9;
      v11 = sub_1001CA12C(v13, v6, a1, v14);

      return v11;
    }
  }

  __chkstk_darwin(v8);
  bzero(&v15 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), 8 * v6);
  v10 = v9;
  v11 = sub_1001CCD14((&v15 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0)), v6, a1, v10);

  if (v2)
  {
    swift_willThrow();
  }

  return v11;
}

uint64_t sub_1001CD324(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v38 = a2;
  v48 = a4;
  v39 = a1;
  v47 = sub_100095274(&qword_1002ABEF8, &qword_10023F728);
  v7 = *(*(v47 - 8) + 64);
  __chkstk_darwin(v47);
  v9 = &v37 - v8;
  v10 = type metadata accessor for UUID();
  v11 = *(*(v10 - 8) + 64);
  result = __chkstk_darwin(v10);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = 0;
  v49 = a3;
  v17 = *(a3 + 64);
  v40 = 0;
  v41 = a3 + 64;
  v18 = 1 << *(a3 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & v17;
  v21 = (v18 + 63) >> 6;
  v44 = v13 + 16;
  v45 = v13;
  v43 = (v13 + 8);
  v46 = a5;
  while (v20)
  {
    v22 = __clz(__rbit64(v20));
    v50 = (v20 - 1) & v20;
LABEL_12:
    v25 = v22 | (v16 << 6);
    v26 = v49;
    v27 = *(v45 + 16);
    v27(v15, v49[6] + *(v45 + 72) * v25, v10);
    v28 = v26[7];
    v42 = v25;
    v29 = (v28 + 16 * v25);
    v31 = *v29;
    v30 = v29[1];
    v27(v9, v15, v10);
    v32 = v48;
    v33 = &v9[*(v47 + 48)];
    *v33 = v31;
    *(v33 + 1) = v30;
    if (v31 == v32 && v30 == v46)
    {

      sub_100095C84(v9, &qword_1002ABEF8, &qword_10023F728);
      result = (*v43)(v15, v10);
      v20 = v50;
    }

    else
    {
      v35 = _stringCompareWithSmolCheck(_:_:expecting:)();

      sub_100095C84(v9, &qword_1002ABEF8, &qword_10023F728);
      result = (*v43)(v15, v10);
      v20 = v50;
      if ((v35 & 1) == 0)
      {
        *(v39 + ((v42 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v42;
        if (__OFADD__(v40++, 1))
        {
          __break(1u);
          return sub_1001CA7BC(v39, v38, v40, v49);
        }
      }
    }
  }

  v23 = v16;
  while (1)
  {
    v16 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v16 >= v21)
    {
      return sub_1001CA7BC(v39, v38, v40, v49);
    }

    v24 = *(v41 + 8 * v16);
    ++v23;
    if (v24)
    {
      v22 = __clz(__rbit64(v24));
      v50 = (v24 - 1) & v24;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1001CD650(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a1 + 32);
  v8 = v7 & 0x3F;
  v9 = ((1 << v7) + 63) >> 6;
  v10 = 8 * v9;
  v11 = swift_bridgeObjectRetain_n();
  if (v8 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v14 = swift_slowAlloc();

      v12 = sub_1001CA1C4(v14, v9, a1, a2, a3);

      swift_bridgeObjectRelease_n();
      return v12;
    }
  }

  __chkstk_darwin(v11);
  bzero(&v15 - ((v10 + 15) & 0x3FFFFFFFFFFFFFF0), v10);

  v12 = sub_1001CD324((&v15 - ((v10 + 15) & 0x3FFFFFFFFFFFFFF0)), v9, a1, a2, a3);

  if (v3)
  {
    swift_willThrow();
  }

  swift_bridgeObjectRelease_n();
  return v12;
}

uint64_t sub_1001CD81C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100095274(&qword_1002ABEF8, &qword_10023F728);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001CD8BC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1001CD8FC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1000A139C;

  return sub_1001C7FA8(a1, v4, v5, v6);
}

void sub_1001CD9B0(uint64_t a1, unint64_t a2, double a3, double a4, double a5, double a6, uint64_t a7, uint64_t a8, unint64_t a9)
{
  if (qword_1002A6780 != -1)
  {
    goto LABEL_48;
  }

LABEL_2:
  v14 = qword_1002B1CF0;
  v57 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
  v15 = *(qword_1002B1CF0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

  os_unfair_lock_lock(v15 + 4);

  v16 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__notifyTrackerConfigClients;
  swift_beginAccess();
  v58 = v14;
  v17 = *(v14 + v16);
  v18 = v17 + 64;
  v19 = 1 << *(v17 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & *(v17 + 64);
  v22 = (v19 + 63) >> 6;

  v23 = 0;
  v59 = 0;
  v63 = v17;
LABEL_5:
  if (v21)
  {
    goto LABEL_10;
  }

  while (1)
  {
    v24 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      swift_once();
      goto LABEL_2;
    }

    if (v24 >= v22)
    {
      break;
    }

    v21 = *(v18 + 8 * v24);
    ++v23;
    if (v21)
    {
      v23 = v24;
LABEL_10:
      v25 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
      v26 = v25 | (v23 << 6);
      v27 = (*(v17 + 48) + 16 * v26);
      v28 = *(*(v17 + 56) + 8 * v26);
      v29 = *v27 == a1 && v27[1] == a2;
      if (v29 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        if (v28 >> 62)
        {
          v30 = _CocoaArrayWrapper.endIndex.getter();
          if (v30)
          {
            goto LABEL_19;
          }
        }

        else
        {
          v30 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v30)
          {
LABEL_19:

            v31 = 0;
            v61 = v30;
            v62 = a1;
            while (1)
            {
              if ((v28 & 0xC000000000000001) != 0)
              {
                v32 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                if (v31 >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_47;
                }

                v32 = *(v28 + 8 * v31 + 32);
              }

              v33 = v32;
              v34 = v31 + 1;
              if (__OFADD__(v31, 1))
              {
                goto LABEL_46;
              }

              v35 = [v32 remoteObjectProxy];
              _bridgeAnyObjectToAny(_:)();
              swift_unknownObjectRelease();
              sub_100095274(&qword_1002A9310, &qword_10023DE70);
              if ((swift_dynamicCast() & 1) == 0)
              {
                break;
              }

              v36 = v66;
              if (!v66)
              {
                goto LABEL_34;
              }

              v37 = qword_1002A6790;
              swift_unknownObjectRetain();
              if (v37 != -1)
              {
                swift_once();
              }

              v38 = type metadata accessor for Logger();
              sub_100093DE8(v38, qword_1002ABE48);

              oslog = Logger.logObject.getter();
              v39 = static os_log_type_t.default.getter();

              v53 = v39;
              if (os_log_type_enabled(oslog, v39))
              {
                v40 = swift_slowAlloc();
                v64 = swift_slowAlloc();
                *v40 = 136315394;
                *(v40 + 4) = sub_1000952D4(a8, a9, &v64);
                *(v40 + 12) = 2080;
                *v65 = a3;
                *&v65[1] = a4;
                *&v65[2] = a5;
                *&v65[3] = a6;
                type metadata accessor for CGRect(0);
                v41 = String.init<A>(describing:)();
                v52 = sub_1000952D4(v41, v42, &v64);

                *(v40 + 14) = v52;
                _os_log_impl(&_mh_execute_header, oslog, v53, "Notifying client that %s just set subject ROI to %s", v40, 0x16u);
                swift_arrayDestroy();
              }

              [v36 setRectOfInterestEventWithRect:{a3, a4, a5, a6}];
              swift_unknownObjectRelease();

              if (__OFADD__(v59++, 1))
              {
                __break(1u);
                return;
              }

              swift_unknownObjectRelease();
              v31 = v34;
LABEL_35:
              a1 = v62;
              v29 = v34 == v61;
              v17 = v63;
              if (v29)
              {

                goto LABEL_5;
              }
            }

            v66 = 0;
LABEL_34:

            swift_unknownObjectRelease();
            ++v31;
            goto LABEL_35;
          }
        }
      }

      goto LABEL_5;
    }
  }

  v44 = *(v58 + v57);

  os_unfair_lock_unlock(v44 + 4);

  if (!v59)
  {
    if (qword_1002A6790 != -1)
    {
      swift_once();
    }

    v45 = type metadata accessor for Logger();
    sub_100093DE8(v45, qword_1002ABE48);

    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v65[0] = v49;
      *v48 = 136315138;
      *(v48 + 4) = sub_1000952D4(a1, a2, v65);
      _os_log_impl(&_mh_execute_header, v46, v47, "No clients registered for config changes on %s", v48, 0xCu);
      sub_100095808(v49);
    }

    v50 = type metadata accessor for DockKitIDSMessagingError();
    sub_1001CF2C4(&qword_1002A8EE0, &type metadata accessor for DockKitIDSMessagingError);
    swift_allocError();
    (*(*(v50 - 8) + 104))(v51, enum case for DockKitIDSMessagingError.unrecognizedClient(_:), v50);
    swift_willThrow();
  }
}

uint64_t sub_1001CE048()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1001CE08C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1001CE0A4()
{
  v1 = type metadata accessor for TrajectoryCommand();
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

uint64_t sub_1001CE170(uint64_t a1)
{
  v4 = *(type metadata accessor for TrajectoryCommand() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10009862C;

  return sub_1001C8FBC(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_1001CE27C(void *a1, void *a2, void (*a3)(uint64_t *))
{
  if (qword_1002A6780 != -1)
  {
    goto LABEL_43;
  }

LABEL_2:
  v4 = qword_1002B1CF0;
  v36 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
  v5 = *(qword_1002B1CF0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

  os_unfair_lock_lock(v5 + 4);

  v6 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__notifyTrackerConfigClients;
  swift_beginAccess();
  v37 = v4;
  v7 = *(v4 + v6);
  v8 = v7 + 64;
  v9 = 1 << *(v7 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(v7 + 64);
  v12 = (v9 + 63) >> 6;

  v13 = 0;
  v39 = 0;
  v40 = v7;
  v41 = a1;
LABEL_5:
  v14 = a2;
LABEL_6:
  if (v11)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      swift_once();
      goto LABEL_2;
    }

    if (v15 >= v12)
    {
      break;
    }

    v11 = *(v8 + 8 * v15);
    ++v13;
    if (v11)
    {
      v13 = v15;
LABEL_11:
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v17 = v16 | (v13 << 6);
      v18 = (*(v7 + 48) + 16 * v17);
      v19 = *(*(v7 + 56) + 8 * v17);
      v20 = *v18 == a1 && v18[1] == a2;
      if (v20 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        if (v19 >> 62)
        {
          v21 = _CocoaArrayWrapper.endIndex.getter();
          if (v21)
          {
            goto LABEL_20;
          }
        }

        else
        {
          v21 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v21)
          {
LABEL_20:

            v14 = 0;
            while (1)
            {
              if ((v19 & 0xC000000000000001) != 0)
              {
                v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                if (v14 >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_42;
                }

                v22 = *(v19 + 8 * v14 + 32);
              }

              a1 = v22;
              v23 = v14 + 1;
              if (__OFADD__(v14, 1))
              {
                goto LABEL_41;
              }

              v24 = [v22 remoteObjectProxy];
              _bridgeAnyObjectToAny(_:)();
              swift_unknownObjectRelease();
              sub_100095274(&qword_1002A9310, &qword_10023DE70);
              if ((swift_dynamicCast() & 1) == 0)
              {
                break;
              }

              if (!v43)
              {
                goto LABEL_22;
              }

              v42[0] = v43;
              swift_unknownObjectRetain();
              a3(v42);

              swift_unknownObjectRelease();
              if (__OFADD__(v39, 1))
              {
                __break(1u);
                goto LABEL_45;
              }

              ++v39;
LABEL_23:
              swift_unknownObjectRelease();
              ++v14;
              v7 = v40;
              a1 = v41;
              if (v23 == v21)
              {

                goto LABEL_5;
              }
            }

            v43 = 0;
LABEL_22:

            goto LABEL_23;
          }
        }
      }

      goto LABEL_6;
    }
  }

  v25 = *(v37 + v36);

  os_unfair_lock_unlock(v25 + 4);

  if (!v39)
  {
    if (qword_1002A6790 != -1)
    {
LABEL_45:
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    sub_100093DE8(v27, qword_1002ABE48);

    v28 = Logger.logObject.getter();
    v29 = v14;
    v30 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v28, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v42[0] = v32;
      *v31 = 136315138;
      *(v31 + 4) = sub_1000952D4(a1, v29, v42);
      _os_log_impl(&_mh_execute_header, v28, v30, "No clients registered for config changes on %s", v31, 0xCu);
      sub_100095808(v32);
    }

    v33 = type metadata accessor for DockKitIDSMessagingError();
    sub_1001CF2C4(&qword_1002A8EE0, &type metadata accessor for DockKitIDSMessagingError);
    swift_allocError();
    (*(*(v33 - 8) + 104))(v34, enum case for DockKitIDSMessagingError.unrecognizedClient(_:), v33);
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1001CE760()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1001CE798(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000A139C;

  return sub_1001C9810(a1, v5);
}

unint64_t sub_1001CE850()
{
  result = qword_1002ABF28;
  if (!qword_1002ABF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002ABF28);
  }

  return result;
}

void sub_1001CE8A4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  if (qword_1002A6780 != -1)
  {
    goto LABEL_48;
  }

LABEL_2:
  v7 = qword_1002B1CF0;
  v51 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
  v8 = *(qword_1002B1CF0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

  os_unfair_lock_lock(v8 + 4);

  v9 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__notifyTrackerConfigClients;
  swift_beginAccess();
  v52 = v7;
  v10 = *(v7 + v9);
  v11 = v10 + 64;
  v12 = 1 << *(v10 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(v10 + 64);
  v15 = (v12 + 63) >> 6;

  v16 = 0;
  v53 = 0;
  v57 = v10;
LABEL_5:
  if (v14)
  {
    goto LABEL_10;
  }

  while (1)
  {
    v17 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      swift_once();
      goto LABEL_2;
    }

    if (v17 >= v15)
    {
      break;
    }

    v14 = *(v11 + 8 * v17);
    ++v16;
    if (v14)
    {
      v16 = v17;
LABEL_10:
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
      v19 = v18 | (v16 << 6);
      v20 = (*(v10 + 48) + 16 * v19);
      v21 = *(*(v10 + 56) + 8 * v19);
      v22 = *v20 == a1 && v20[1] == a2;
      if (v22 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        if (v21 >> 62)
        {
          v23 = _CocoaArrayWrapper.endIndex.getter();
          if (v23)
          {
            goto LABEL_19;
          }
        }

        else
        {
          v23 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v23)
          {
LABEL_19:

            v24 = 0;
            v55 = v23;
            v56 = a1;
            while (1)
            {
              if ((v21 & 0xC000000000000001) != 0)
              {
                v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                if (v24 >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_47;
                }

                v25 = *(v21 + 8 * v24 + 32);
              }

              v26 = v25;
              v27 = v24 + 1;
              if (__OFADD__(v24, 1))
              {
                goto LABEL_46;
              }

              v28 = [v25 remoteObjectProxy];
              _bridgeAnyObjectToAny(_:)();
              swift_unknownObjectRelease();
              sub_100095274(&qword_1002A9310, &qword_10023DE70);
              if ((swift_dynamicCast() & 1) == 0)
              {
                break;
              }

              v29 = v59;
              if (!v59)
              {
                goto LABEL_34;
              }

              v30 = qword_1002A6790;
              swift_unknownObjectRetain();
              if (v30 != -1)
              {
                swift_once();
              }

              v31 = type metadata accessor for Logger();
              sub_100093DE8(v31, qword_1002ABE48);

              oslog = Logger.logObject.getter();
              v32 = static os_log_type_t.default.getter();

              v46 = v32;
              if (os_log_type_enabled(oslog, v32))
              {
                v33 = swift_slowAlloc();
                v58[0] = swift_slowAlloc();
                *v33 = 136315394;
                *(v33 + 4) = sub_1000952D4(a4, a5, v58);
                *(v33 + 12) = 2080;
                v34 = DockFramingMode.description.getter();
                v45 = sub_1000952D4(v34, v35, v58);

                *(v33 + 14) = v45;
                _os_log_impl(&_mh_execute_header, oslog, v46, "Notifying client that %s just set framing mode to %s", v33, 0x16u);
                swift_arrayDestroy();
              }

              [v29 setFramingModeEventWithMode:a6];
              swift_unknownObjectRelease();

              if (__OFADD__(v53++, 1))
              {
                __break(1u);
                return;
              }

              swift_unknownObjectRelease();
              v24 = v27;
LABEL_35:
              a1 = v56;
              v22 = v27 == v55;
              v10 = v57;
              if (v22)
              {

                goto LABEL_5;
              }
            }

            v59 = 0;
LABEL_34:

            swift_unknownObjectRelease();
            ++v24;
            goto LABEL_35;
          }
        }
      }

      goto LABEL_5;
    }
  }

  v37 = *(v52 + v51);

  os_unfair_lock_unlock(v37 + 4);

  if (!v53)
  {
    if (qword_1002A6790 != -1)
    {
      swift_once();
    }

    v38 = type metadata accessor for Logger();
    sub_100093DE8(v38, qword_1002ABE48);

    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v58[0] = v42;
      *v41 = 136315138;
      *(v41 + 4) = sub_1000952D4(a1, a2, v58);
      _os_log_impl(&_mh_execute_header, v39, v40, "No clients registered for config changes on %s", v41, 0xCu);
      sub_100095808(v42);
    }

    v43 = type metadata accessor for DockKitIDSMessagingError();
    sub_1001CF2C4(&qword_1002A8EE0, &type metadata accessor for DockKitIDSMessagingError);
    swift_allocError();
    (*(*(v43 - 8) + 104))(v44, enum case for DockKitIDSMessagingError.unrecognizedClient(_:), v43);
    swift_willThrow();
  }
}

uint64_t sub_1001CEF04()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1001CEF3C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10009862C;

  return sub_1001C9450(a1, v4, v5, v6);
}

unint64_t sub_1001CEFF0()
{
  result = qword_1002ABF48;
  if (!qword_1002ABF48)
  {
    sub_10009589C(&qword_1002ABF40, &qword_10023F778);
    sub_1001CF2C4(&qword_1002ABF50, &type metadata accessor for DockKitBoundingBox);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002ABF48);
  }

  return result;
}

uint64_t sub_1001CF0A4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void sub_1001CF0F8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_1001B96E4();
}

uint64_t sub_1001CF164(uint64_t a1)
{
  v3 = *(v1 + 24);

  return _swift_deallocObject(v1, a1, 7);
}

uint64_t sub_1001CF20C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000A139C;

  return sub_1001CCB0C(a1, v5);
}

uint64_t sub_1001CF2C4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1001CF30C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1001CF3B8(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

uint64_t *DeviceLockMonitor.shared.unsafeMutableAddressor()
{
  if (qword_1002A6798 != -1)
  {
    swift_once();
  }

  return &static DeviceLockMonitor.shared;
}

uint64_t LockState.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 0x64656B636F6C6E75;
  }

  if (a1 == 1)
  {
    return 0x64656B636F6CLL;
  }

  return 0x6E776F6E6B6E75;
}

uint64_t sub_1001CF4B4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE600000000000000;
  v4 = 0x64656B636F6CLL;
  if (v2 != 1)
  {
    v4 = 0x6E776F6E6B6E75;
    v3 = 0xE700000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x64656B636F6C6E75;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  v7 = 0xE600000000000000;
  v8 = 0x64656B636F6CLL;
  if (*a2 != 1)
  {
    v8 = 0x6E776F6E6B6E75;
    v7 = 0xE700000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x64656B636F6C6E75;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE800000000000000;
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

Swift::Int sub_1001CF5B0()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1001CF650()
{
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int sub_1001CF6DC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1001CF778@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s14dockaccessoryd9LockStateO8rawValueACSgSS_tcfC_0(*a1);
  *a2 = result;
  return result;
}

void sub_1001CF7A8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x64656B636F6CLL;
  if (v2 != 1)
  {
    v5 = 0x6E776F6E6B6E75;
    v4 = 0xE700000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x64656B636F6C6E75;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1001CF804()
{
  v0 = type metadata accessor for DeviceLockMonitor();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_1001CF8A0();
  static DeviceLockMonitor.shared = result;
  return result;
}

uint64_t static DeviceLockMonitor.shared.getter()
{
  if (qword_1002A6798 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1001CF8A0()
{
  v1 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v14 = *(v1 - 8);
  v15 = v1;
  v2 = *(v14 + 64);
  __chkstk_darwin(v1);
  v13 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OS_dispatch_queue.Attributes();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  Logger.init(subsystem:category:)();
  v8 = OBJC_IVAR____TtC14dockaccessoryd17DeviceLockMonitor_lock;
  sub_100095274(&unk_1002A7370, &qword_10023AB30);
  v9 = swift_allocObject();
  *(v0 + v8) = v9;
  *(v0 + OBJC_IVAR____TtC14dockaccessoryd17DeviceLockMonitor_notifyToken) = -1;
  *(v0 + OBJC_IVAR____TtC14dockaccessoryd17DeviceLockMonitor_springboardToken) = -1;
  *(v9 + 16) = 0;
  *(v0 + OBJC_IVAR____TtC14dockaccessoryd17DeviceLockMonitor_coverSheetNotifyToken) = -1;
  *(v0 + OBJC_IVAR____TtC14dockaccessoryd17DeviceLockMonitor_lockState) = 2;
  *(v0 + OBJC_IVAR____TtC14dockaccessoryd17DeviceLockMonitor_lockStateDelegates) = &_swiftEmptyArrayStorage;
  v12 = OBJC_IVAR____TtC14dockaccessoryd17DeviceLockMonitor_delegateQueue;
  sub_1000B3420();
  static DispatchQoS.unspecified.getter();
  v16 = &_swiftEmptyArrayStorage;
  sub_1000EFFD8(&qword_1002A7110, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100095274(&unk_1002A6830, &unk_10023AB20);
  sub_100095BDC(&qword_1002A7120, &unk_1002A6830, &unk_10023AB20);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v14 + 104))(v13, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v15);
  *(v0 + v12) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  return v0;
}

Swift::Void __swiftcall DeviceLockMonitor.beginMonitoring()()
{
  v1 = *(v0 + OBJC_IVAR____TtC14dockaccessoryd17DeviceLockMonitor_lock);
  os_unfair_lock_lock(v1 + 4);
  sub_1001D0CD0();
  os_unfair_lock_unlock(v1 + 4);
  os_unfair_lock_lock(v1 + 4);
  sub_1001D0F68();
  os_unfair_lock_unlock(v1 + 4);
}

void sub_1001CFC5C(uint64_t a1)
{
  v3 = type metadata accessor for DispatchQoS.QoSClass();
  v4 = *(v3 - 8);
  v5 = v4[8];
  __chkstk_darwin(v3);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC14dockaccessoryd17DeviceLockMonitor_notifyToken;
  swift_beginAccess();
  if (*(a1 + v8) == -1)
  {
    v33 = v1;
    v9 = sub_1000B3420();
    v10 = v4[13];
    v30 = enum case for DispatchQoS.QoSClass.default(_:);
    v31 = v4 + 13;
    v29 = v10;
    v10(v7);
    v32 = v9;
    v11 = static OS_dispatch_queue.global(qos:)();
    v28 = v4[1];
    v28(v7, v3);
    v12 = swift_allocObject();
    swift_weakInit();
    v38 = sub_1001D0F38;
    v39 = v12;
    aBlock = _NSConcreteStackBlock;
    v35 = 1107296256;
    v36 = sub_1001CF3B8;
    v37 = &unk_10027AE70;
    v13 = _Block_copy(&aBlock);

    v14 = String.utf8CString.getter();
    swift_beginAccess();
    v15 = notify_register_dispatch((v14 + 32), (a1 + v8), v11, v13);
    swift_endAccess();

    _Block_release(v13);

    if (v15 || *(a1 + v8) == -1)
    {
      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v16, v17))
      {
LABEL_6:

        return;
      }

      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      aBlock = v19;
      *v18 = 136315138;
      *(v18 + 4) = sub_1000952D4(0xD000000000000011, 0x8000000100234F40, &aBlock);
      v20 = "%s - Error registering for keybag notifications";
    }

    else
    {
      v29(v7, v30, v3);
      v21 = static OS_dispatch_queue.global(qos:)();
      v28(v7, v3);
      v22 = swift_allocObject();
      swift_weakInit();
      v38 = sub_1001D0F38;
      v39 = v22;
      aBlock = _NSConcreteStackBlock;
      v35 = 1107296256;
      v36 = sub_1001CF3B8;
      v37 = &unk_10027AE98;
      v23 = _Block_copy(&aBlock);

      v24 = String.utf8CString.getter();
      v25 = OBJC_IVAR____TtC14dockaccessoryd17DeviceLockMonitor_springboardToken;
      swift_beginAccess();
      v26 = notify_register_dispatch((v24 + 32), (a1 + v25), v21, v23);
      swift_endAccess();

      _Block_release(v23);

      if (v26 || *(a1 + v25) == -1)
      {
        v16 = Logger.logObject.getter();
        v17 = static os_log_type_t.error.getter();
        if (!os_log_type_enabled(v16, v17))
        {
          goto LABEL_6;
        }

        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        aBlock = v19;
        *v18 = 136315138;
        *(v18 + 4) = sub_1000952D4(0xD000000000000011, 0x8000000100234F40, &aBlock);
        v20 = "%s - Error registering for springboard notifications";
      }

      else
      {
        v16 = Logger.logObject.getter();
        v17 = static os_log_type_t.default.getter();
        if (!os_log_type_enabled(v16, v17))
        {
          goto LABEL_6;
        }

        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        aBlock = v19;
        *v18 = 136315138;
        *(v18 + 4) = sub_1000952D4(0xD000000000000011, 0x8000000100234F40, &aBlock);
        v20 = "%s - Registered for lock state notifications";
      }
    }

    _os_log_impl(&_mh_execute_header, v16, v17, v20, v18, 0xCu);
    sub_100095808(v19);

    goto LABEL_6;
  }
}

uint64_t sub_1001D0220()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = *(result + OBJC_IVAR____TtC14dockaccessoryd17DeviceLockMonitor_lock);
    __chkstk_darwin(result);
    os_unfair_lock_lock(v1 + 4);
    sub_1001D0F68();
    os_unfair_lock_unlock(v1 + 4);
  }

  return result;
}

uint64_t sub_1001D02E4(uint64_t a1, uint64_t a2)
{
  if (qword_1002A6798 != -1)
  {
    swift_once();
  }

  v4 = static DeviceLockMonitor.shared;
  v5 = OBJC_IVAR____TtC14dockaccessoryd17DeviceLockMonitor_lockStateDelegates;
  swift_beginAccess();
  v6 = *(v4 + v5);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v4 + v5) = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = sub_10010350C(0, v6[2] + 1, 1, v6);
    *(v4 + v5) = v6;
  }

  v9 = v6[2];
  v8 = v6[3];
  if (v9 >= v8 >> 1)
  {
    v6 = sub_10010350C((v8 > 1), v9 + 1, 1, v6);
  }

  v6[2] = v9 + 1;
  v10 = &v6[2 * v9];
  v10[4] = a1;
  v10[5] = a2;
  *(v4 + v5) = v6;
  swift_endAccess();
  return swift_unknownObjectRetain();
}

void sub_1001D040C(uint64_t a1)
{
  v3 = 0x64656B636F6C6E75;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  *&v56 = *(v4 - 8);
  v5 = *(v56 + 64);
  __chkstk_darwin(v4);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v49 = *(v8 - 8);
  v9 = *(v49 + 64);
  __chkstk_darwin(v8);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MKBGetDeviceLockState();
  v13 = SBSGetScreenLockStatus();
  v16 = v12 != 3 && v12 != 0 || v13 != 0;
  v17 = *(a1 + OBJC_IVAR____TtC14dockaccessoryd17DeviceLockMonitor_lockState);
  v55 = v8;
  v46 = v11;
  v54 = v7;
  v18 = v4;
  if (v17)
  {
    if (v17 != 1)
    {
      v45 = OBJC_IVAR____TtC14dockaccessoryd17DeviceLockMonitor_lockState;
      v24 = a1;
      v23 = v16;
      goto LABEL_25;
    }

    v19 = 0xE600000000000000;
    v20 = 0x64656B636F6CLL;
  }

  else
  {
    v20 = 0x64656B636F6C6E75;
    v19 = 0xE800000000000000;
  }

  if (v16)
  {
    v21 = 0x64656B636F6CLL;
  }

  else
  {
    v21 = 0x64656B636F6C6E75;
  }

  if (v16)
  {
    v22 = 0xE600000000000000;
  }

  else
  {
    v22 = 0xE800000000000000;
  }

  if (v20 == v21 && v19 == v22)
  {

    return;
  }

  v23 = v16;
  v45 = OBJC_IVAR____TtC14dockaccessoryd17DeviceLockMonitor_lockState;
  v24 = a1;
LABEL_25:
  v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v25 & 1) == 0)
  {
    v44 = v1;
    v26 = v24;
    *(v24 + v45) = v23;
    v27 = OBJC_IVAR____TtC14dockaccessoryd17DeviceLockMonitor_lockStateDelegates;
    swift_beginAccess();
    v53 = *(v24 + v27);
    v28 = *(v53 + 16);
    if (v28)
    {
      v43 = v24;
      v29 = *(v24 + OBJC_IVAR____TtC14dockaccessoryd17DeviceLockMonitor_delegateQueue);
      v51 = v59;
      v52 = v29;
      v49 += 8;
      v50 = (v56 + 8);

      v30 = 32;
      v48 = v18;
      v31 = v46;
      v47 = v23;
      do
      {
        v32 = swift_allocObject();
        v56 = *(v53 + v30);
        *(v32 + 16) = v56;
        *(v32 + 32) = v47;
        v59[2] = sub_1001D0EDC;
        v59[3] = v32;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        v59[0] = sub_100147FC8;
        v59[1] = &unk_10027AE20;
        v33 = _Block_copy(aBlock);
        swift_unknownObjectRetain_n();
        static DispatchQoS.unspecified.getter();
        v57 = &_swiftEmptyArrayStorage;
        sub_1000EFFD8(&qword_1002A7150, &type metadata accessor for DispatchWorkItemFlags);
        sub_100095274(&unk_1002A6B60, qword_10023AE10);
        sub_100095BDC(&qword_1002A7160, &unk_1002A6B60, qword_10023AE10);
        v34 = v54;
        v35 = v48;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v33);
        swift_unknownObjectRelease();
        (*v50)(v34, v35);
        (*v49)(v31, v55);

        v30 += 16;
        --v28;
      }

      while (v28);

      v3 = 0x64656B636F6C6E75;
      v26 = v43;
    }

    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      aBlock[0] = v39;
      *v38 = 136315138;
      if (*(v26 + v45))
      {
        if (*(v26 + v45) == 1)
        {
          v3 = 0x64656B636F6CLL;
          v40 = 0xE600000000000000;
        }

        else
        {
          v40 = 0xE700000000000000;
          v3 = 0x6E776F6E6B6E75;
        }
      }

      else
      {
        v40 = 0xE800000000000000;
      }

      v41 = sub_1000952D4(v3, v40, aBlock);

      *(v38 + 4) = v41;
      _os_log_impl(&_mh_execute_header, v36, v37, "Updated lock state: %s", v38, 0xCu);
      sub_100095808(v39);
    }
  }
}

uint64_t sub_1001D0A2C(uint64_t a1, uint64_t a2, char a3)
{
  *(a1 + OBJC_IVAR____TtC14dockaccessoryd28SecureTrackingSessionManager_lockState) = a3;
  if (a3 == 1)
  {

    v3 = 6;
  }

  else
  {
    v4 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v4)
    {
      v3 = 6;
    }

    else
    {
      v3 = 0;
    }
  }

  return sub_1000EC468(v3);
}

uint64_t DeviceLockMonitor.deinit()
{
  v1 = OBJC_IVAR____TtC14dockaccessoryd17DeviceLockMonitor_logger;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC14dockaccessoryd17DeviceLockMonitor_lock);

  v4 = *(v0 + OBJC_IVAR____TtC14dockaccessoryd17DeviceLockMonitor_lockStateDelegates);

  return v0;
}

uint64_t DeviceLockMonitor.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC14dockaccessoryd17DeviceLockMonitor_logger;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC14dockaccessoryd17DeviceLockMonitor_lock);

  v4 = *(v0 + OBJC_IVAR____TtC14dockaccessoryd17DeviceLockMonitor_lockStateDelegates);

  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

unint64_t _s14dockaccessoryd9LockStateO8rawValueACSgSS_tcfC_0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100275008, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1001D0CD0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

unint64_t sub_1001D0D18()
{
  result = qword_1002ABFB0;
  if (!qword_1002ABFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002ABFB0);
  }

  return result;
}

uint64_t type metadata accessor for DeviceLockMonitor()
{
  result = qword_1002AC000;
  if (!qword_1002AC000)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001D0DD0()
{
  result = type metadata accessor for Logger();
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

uint64_t sub_1001D0EA4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 33, 7);
}

uint64_t sub_1001D0EE8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1001D0F00()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1001D0F80(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for Data.Iterator();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = __chkstk_darwin(v4);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v10 != 2)
    {
      goto LABEL_27;
    }

    v12 = *(a1 + 16);
    v11 = *(a1 + 24);
    v13 = __OFSUB__(v11, v12);
    v14 = v11 - v12;
    if (!v13)
    {
      if (v14 != 6)
      {
        goto LABEL_27;
      }

      goto LABEL_11;
    }

    __break(1u);
    goto LABEL_30;
  }

  if (!v10)
  {
    if (BYTE6(a2) != 6)
    {
      goto LABEL_27;
    }

    goto LABEL_11;
  }

  if (__OFSUB__(HIDWORD(a1), a1))
  {
LABEL_30:
    __break(1u);
    return result;
  }

  if (HIDWORD(a1) - a1 != 6)
  {
    goto LABEL_27;
  }

LABEL_11:
  v15 = result;
  sub_1000A0CD8(a1, a2);
  if (Data._Representation.subscript.getter() < 0xC0u)
  {
    sub_1000A0D2C(a1, a2);
    goto LABEL_27;
  }

  if (v10 == 2)
  {
    v16 = *(a1 + 16);
  }

  Data.Iterator.init(_:at:)();
  v17 = Data.Iterator.next()();
  v18 = (*&v17 & 0x100) == 0;
  v19 = 0;
  if ((*&v17 & 0x100) != 0)
  {
    goto LABEL_25;
  }

  v20 = 0;
  while (1)
  {
    if (!v17.value)
    {
      goto LABEL_18;
    }

    if (v17.value == 255)
    {
      break;
    }

LABEL_17:
    v19 = 1;
LABEL_18:
    v17 = Data.Iterator.next()();
    v20 = 1;
    if ((*&v17 & 0x100) != 0)
    {
      goto LABEL_25;
    }
  }

  while (1)
  {
    v21 = Data.Iterator.next()();
    if ((*&v21 & 0x100) != 0)
    {
      break;
    }

    if (v21.value != 255)
    {
      goto LABEL_17;
    }
  }

  v19 = 1;
  v18 = v20;
LABEL_25:
  (*(v5 + 8))(v9, v15);
  if ((v19 & 1) == 0 || !v18)
  {
LABEL_27:
    sub_1000A0D2C(a1, a2);
    return 0;
  }

  return a1;
}

uint64_t sub_1001D1198()
{
  v1 = *(v0 + 14);

  v2 = *(v0 + 15);

  v3 = *(v0 + 16);

  v4 = OBJC_IVAR____TtC14dockaccessoryd19RotationRateStorage_logger;
  v5 = type metadata accessor for Logger();
  (*(*(v5 - 8) + 8))(&v0[v4], v5);
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t type metadata accessor for RotationRateStorage()
{
  result = qword_1002AC180;
  if (!qword_1002AC180)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001D127C()
{
  result = type metadata accessor for Logger();
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

uint64_t sub_1001D133C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 56))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1001D135C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
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

  *(result + 56) = v3;
  return result;
}

uint64_t sub_1001D1410()
{
  v1[5] = v0;
  v2 = type metadata accessor for Logger();
  v1[6] = v2;
  v3 = *(v2 - 8);
  v1[7] = v3;
  v4 = *(v3 + 64) + 15;
  v1[8] = swift_task_alloc();

  return (_swift_task_switch)(sub_1001D14D0, 0, 0);
}

uint64_t sub_1001D14D0()
{
  (*(v0[7] + 16))(v0[8], v0[5] + OBJC_IVAR____TtC14dockaccessoryd27AccessoryDescriptionSession_logger, v0[6]);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Shutting down", v3, 2u);
  }

  v5 = v0[7];
  v4 = v0[8];
  v7 = v0[5];
  v6 = v0[6];

  (*(v5 + 8))(v4, v6);
  v8 = *(v7 + 32);
  v0[9] = v8;
  if (v8)
  {
    v8;
    v9 = swift_task_alloc();
    v0[10] = v9;
    *v9 = v0;
    v9[1] = sub_1001D1734;

    return sub_1000FADB4();
  }

  else
  {
    v11 = v0[5];
    v11[4] = 0;
    swift_beginAccess();
    v12 = v11[13];
    v13 = v11[14];
    *(v11 + 13) = xmmword_10023C1B0;
    sub_1000A452C(v12, v13);
    if (v11[5])
    {
      v14 = v0[5];
      v15 = type metadata accessor for Errors();
      sub_1000A5514();
      v16 = swift_allocError();
      *v17 = 0;
      v17[1] = 0xE000000000000000;
      (*(*(v15 - 8) + 104))(v17, enum case for Errors.OperationCancelled(_:), v15);
      sub_1001D29D8(v16);
    }

    v18 = v0[8];

    v19 = v0[1];

    return v19();
  }
}

uint64_t sub_1001D1734()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 72);
  v4 = *v0;

  return (_swift_task_switch)(sub_1001D1848, 0, 0);
}

uint64_t sub_1001D1848()
{
  v1 = v0[5];
  v2 = v1[4];
  v1[4] = 0;

  swift_beginAccess();
  v3 = v1[13];
  v4 = v1[14];
  *(v1 + 13) = xmmword_10023C1B0;
  sub_1000A452C(v3, v4);
  if (v1[5])
  {
    v5 = v0[5];
    v6 = type metadata accessor for Errors();
    sub_1000A5514();
    v7 = swift_allocError();
    *v8 = 0;
    v8[1] = 0xE000000000000000;
    (*(*(v6 - 8) + 104))(v8, enum case for Errors.OperationCancelled(_:), v6);
    sub_1001D29D8(v7);
  }

  v9 = v0[8];

  v10 = v0[1];

  return v10();
}

uint64_t sub_1001D1990()
{
  v1 = *(v0 + 176);
  Strong = swift_weakLoadStrong();
  *(v0 + 184) = Strong;
  if (!Strong)
  {
    v33 = type metadata accessor for Errors();
    sub_1000A5514();
    swift_allocError();
    *v34 = 0xD000000000000010;
    v34[1] = 0x8000000100230B70;
    (*(*(v33 - 8) + 104))(v34, enum case for Errors.AccessoryServerNil(_:), v33);
    swift_willThrow();
    goto LABEL_10;
  }

  v3 = Strong;
  v4 = *(Strong + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_dataStreamController);
  if (!v4 || ([v4 canAcceptBulkSendListeners] & 1) == 0)
  {
    v5 = *(v3 + 40);
    OS_dispatch_queue.sync<A>(execute:)();

    if (*(v0 + 208) == 1)
    {
      v6 = type metadata accessor for Errors();
      sub_1000A5514();
      swift_allocError();
      v8 = v7;
      _StringGuts.grow(_:)(53);
      v9._countAndFlagsBits = 0xD000000000000033;
      v9._object = 0x8000000100233980;
      String.append(_:)(v9);
      v10 = *(v3 + 24);
      v11 = [v10 description];
      v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = v13;

      v15._countAndFlagsBits = v12;
      v15._object = v14;
      String.append(_:)(v15);

      *v8 = 0;
      v8[1] = 0xE000000000000000;
      (*(*(v6 - 8) + 104))(v8, enum case for Errors.OperationNotSupported(_:), v6);
      swift_willThrow();

LABEL_10:
      v35 = *(v0 + 8);

      return v35();
    }
  }

  v16 = *(v0 + 176);
  v17 = v16[3];
  sub_100095274(&qword_1002AA4D8, &unk_10023FAE0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10023C170;
  *(inited + 32) = 0x79616C6564;
  *(inited + 72) = &type metadata for Int;
  *(inited + 40) = 0xE500000000000000;
  *(inited + 48) = 0;

  v39 = v17;
  v38 = sub_1001F2468(inited);
  swift_setDeallocating();
  sub_100095C84(inited + 32, &qword_1002AA4E0, &qword_10023EE00);
  v19 = v16[8];
  v37 = v16[7];
  v20 = type metadata accessor for AccessoryDataStreamAdapter();
  v21 = objc_allocWithZone(v20);
  swift_weakInit();
  v22 = &v21[OBJC_IVAR____TtC14dockaccessoryd26AccessoryDataStreamAdapter_delegate];
  *(v22 + 4) = 0;
  *v22 = 0u;
  *(v22 + 1) = 0u;
  *&v21[OBJC_IVAR____TtC14dockaccessoryd26AccessoryDataStreamAdapter_currentBulkSendSession] = 0;
  v23 = &v21[OBJC_IVAR____TtC14dockaccessoryd26AccessoryDataStreamAdapter_pendingOpenSessionCallback];
  *v23 = 0;
  v23[1] = 0;
  v21[OBJC_IVAR____TtC14dockaccessoryd26AccessoryDataStreamAdapter_transportReady] = 0;
  v21[OBJC_IVAR____TtC14dockaccessoryd26AccessoryDataStreamAdapter_didBulkSendFail] = 0;
  v21[OBJC_IVAR____TtC14dockaccessoryd26AccessoryDataStreamAdapter_didBulkSendComplete] = 0;

  Logger.init(subsystem:category:)();
  swift_weakAssign();
  *&v21[OBJC_IVAR____TtC14dockaccessoryd26AccessoryDataStreamAdapter_workQueue] = v39;
  *&v21[OBJC_IVAR____TtC14dockaccessoryd26AccessoryDataStreamAdapter_metadata] = v38;
  v24 = &v21[OBJC_IVAR____TtC14dockaccessoryd26AccessoryDataStreamAdapter_fileType];
  *v24 = 0xD000000000000015;
  v24[1] = 0x80000001002350A0;
  v25 = &v21[OBJC_IVAR____TtC14dockaccessoryd26AccessoryDataStreamAdapter_reason];
  *v25 = v37;
  v25[1] = v19;
  *(v0 + 160) = v21;
  *(v0 + 168) = v20;
  v26 = objc_msgSendSuper2((v0 + 160), "init");

  v27 = v16[4];
  v16[4] = v26;
  v28 = v26;

  *(v0 + 120) = type metadata accessor for AccessoryDescriptionSession();
  *(v0 + 128) = &off_10027AFC8;
  *(v0 + 96) = v16;
  v29 = OBJC_IVAR____TtC14dockaccessoryd26AccessoryDataStreamAdapter_delegate;
  swift_beginAccess();

  sub_10016F118(v0 + 96, v28 + v29);
  swift_endAccess();

  v30 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v31 = swift_task_alloc();
  *(v0 + 192) = v31;
  *v31 = v0;
  v31[1] = sub_1001D1F44;
  v32 = *(v0 + 176);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v31, 0, 0, 0x292870757465735FLL, 0xE800000000000000, sub_1001D3828, v32, &type metadata for () + 8);
}

uint64_t sub_1001D1F44()
{
  v2 = *(*v1 + 192);
  v5 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    v3 = sub_1001D20BC;
  }

  else
  {
    v3 = sub_1001D2058;
  }

  return (_swift_task_switch)(v3, 0, 0);
}

uint64_t sub_1001D2058()
{
  v1 = *(v0 + 184);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1001D20BC()
{
  v1 = v0[23];

  v2 = v0[25];
  v3 = v0[1];

  return v3();
}

void sub_1001D2120(uint64_t a1, uint64_t a2)
{
  v4 = sub_100095274(&qword_1002A9F70, &qword_10023EB70);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v14 - v7;
  v9 = *(a2 + 32);
  if (v9)
  {
    (*(v5 + 16))(v8, a1, v4);
    v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v11 = (v6 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
    v12 = swift_allocObject();
    (*(v5 + 32))(v12 + v10, v8, v4);
    *(v12 + v11) = a2;
    v13 = v9;

    sub_1000FB4C0(sub_1001D38D8, v12);
  }
}

uint64_t sub_1001D22C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v15[1] = a2;
    swift_errorRetain();
    sub_100095274(&qword_1002A9F70, &qword_10023EB70);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    (*(v7 + 16))(v10, a4 + OBJC_IVAR____TtC14dockaccessoryd27AccessoryDescriptionSession_logger, v6);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "Accessory Description data stream was setup successfully", v14, 2u);
    }

    (*(v7 + 8))(v10, v6);
    *(a4 + 96) = 1;
    *(a4 + 88) = 1;
    sub_100095274(&qword_1002A9F70, &qword_10023EB70);
    return CheckedContinuation.resume(returning:)();
  }
}

void sub_1001D2490(uint64_t a1, uint64_t a2)
{
  if (!*(v2 + 32))
  {
    v8 = type metadata accessor for Errors();
    sub_1000A5514();
    swift_allocError();
    v10 = v9;
    v11 = 0x80000001002338B0;
    v12 = 0xD000000000000017;
LABEL_7:
    *v9 = v12;
    v9[1] = v11;
    (*(*(v8 - 8) + 104))(v10, enum case for Errors.NotFound(_:), v8);
    goto LABEL_8;
  }

  if ((*(v2 + 96) & 1) == 0)
  {
    v8 = type metadata accessor for Errors();
    sub_1000A5514();
    swift_allocError();
    v10 = v9;
    v11 = 0x80000001002338D0;
    v12 = 0xD00000000000001FLL;
    goto LABEL_7;
  }

  if (*(v2 + 40))
  {
    v3 = type metadata accessor for Errors();
    sub_1000A5514();
    v4 = swift_allocError();
    *v5 = 0xD000000000000031;
    v5[1] = 0x8000000100235060;
    v6 = *(*(v3 - 8) + 104);
    v6(v5, enum case for Errors.OperationInProgress(_:), v3);
    sub_1001D29D8(v4);

    swift_allocError();
    *v7 = 0xD000000000000031;
    v7[1] = 0x8000000100235060;
    v6(v7, enum case for Errors.NotFound(_:), v3);
LABEL_8:
    swift_willThrow();
    return;
  }

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  v13 = *(v2 + 24);

  v14 = v13;
  sub_100095274(&qword_1002A7168, &qword_10023C3C0);
  OS_dispatch_queue.sync<A>(execute:)();
}

unint64_t sub_1001D26FC(void *a1)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v29[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v8 = v1[10];
  result = [a1 length];
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_17;
  }

  v10 = (v8 + result);
  if (__CFADD__(v8, result))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v11 = v1[9];
  if (v11 < v10)
  {
    (*(v4 + 16))(v7, v1 + OBJC_IVAR____TtC14dockaccessoryd27AccessoryDescriptionSession_logger, v3);
    v22 = v1;

    v23 = a1;
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v28 = v10;
      v27 = v26;
      *v26 = 134218496;
      *(v26 + 4) = v22[10];
      *(v26 + 12) = 2048;
      *(v26 + 14) = [v23 length];

      *(v27 + 22) = 2048;
      *(v27 + 24) = v22[9];

      _os_log_impl(&_mh_execute_header, v24, v25, "Accessory Description exceeded max size (written: %llu, new data: %ld, max: %llu", v27, 0x20u);
      v10 = v28;
    }

    else
    {

      v24 = v23;
    }

    (*(v4 + 8))(v7, v3);
    return v11 >= v10;
  }

  result = [a1 length];
  if ((result & 0x8000000000000000) != 0)
  {
    goto LABEL_18;
  }

  v12 = v1[10];
  v13 = __CFADD__(v12, result);
  v14 = (v12 + result);
  if (!v13)
  {
    v1[10] = v14;
    swift_beginAccess();
    v15 = v1[14];
    if (v15 >> 60 == 15)
    {
      v16 = v1[13];
      *(v1 + 13) = xmmword_10023BF90;
      sub_1000A452C(v16, v15);
    }

    v17 = sub_1001D13C0();
    if (*(v18 + 8) >> 60 != 15)
    {
      v19 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v21 = v20;
      Data.append(_:)();
      sub_1000A0D2C(v19, v21);
    }

    (v17)(v29, 0);
    return v11 >= v10;
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_1001D29D8(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, v2 + OBJC_IVAR____TtC14dockaccessoryd27AccessoryDescriptionSession_logger, v4);
  swift_errorRetain();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    if (a1)
    {
      swift_errorRetain();
      v13 = _swift_stdlib_bridgeErrorToNSError();
      v14 = v13;
    }

    else
    {
      v13 = 0;
      v14 = 0;
    }

    *(v11 + 4) = v13;
    *v12 = v14;
    _os_log_impl(&_mh_execute_header, v9, v10, "Calling completion handler with error: %@", v11, 0xCu);
    sub_100095C84(v12, &unk_1002A6F60, &unk_10023C4E0);
  }

  result = (*(v5 + 8))(v8, v4);
  v16 = *(v2 + 40);
  if (v16)
  {
    v17 = *(v2 + 48);
    *(v2 + 40) = 0;
    *(v2 + 48) = 0;
    v16(a1, 0, 0xF000000000000000);
    return sub_1000BAA84(v16);
  }

  return result;
}

uint64_t sub_1001D2BF4()
{
  swift_weakDestroy();

  v1 = *(v0 + 48);
  sub_1000BAA84(*(v0 + 40));
  v2 = *(v0 + 64);

  sub_1000A452C(*(v0 + 104), *(v0 + 112));
  v3 = OBJC_IVAR____TtC14dockaccessoryd27AccessoryDescriptionSession_logger;
  v4 = type metadata accessor for Logger();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AccessoryDescriptionSession()
{
  result = qword_1002AC348;
  if (!qword_1002AC348)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001D2D14()
{
  result = type metadata accessor for Logger();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_1001D2E70(uint64_t a1, uint64_t a2)
{
  swift_weakInit();
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  *(v2 + 48) = 0;
  *(v2 + 56) = 0xD000000000000018;
  *(v2 + 64) = 0x80000001002350C0;
  *(v2 + 72) = 5242880;
  *(v2 + 80) = 0;
  *(v2 + 88) = 0;
  *(v2 + 96) = 0;
  *(v2 + 104) = xmmword_10023C1B0;
  Logger.init(subsystem:category:)();
  swift_weakAssign();
  *(v2 + 24) = a2;
  return v2;
}

uint64_t sub_1001D2F34()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1 + OBJC_IVAR____TtC14dockaccessoryd27AccessoryDescriptionSession_logger, v2);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v12 = *(Strong + 24);

      v13 = v12;
    }

    else
    {
      v12 = 0;
      v13 = 0;
    }

    *(v9 + 4) = v12;
    *v10 = v13;
    _os_log_impl(&_mh_execute_header, v7, v8, "Failed to read data for accessory: %@", v9, 0xCu);
    sub_100095C84(v10, &unk_1002A6F60, &unk_10023C4E0);
  }

  result = (*(v3 + 8))(v6, v2);
  if (*(v1 + 40))
  {
    v15 = type metadata accessor for Errors();
    sub_1000A5514();
    v16 = swift_allocError();
    *v17 = 0x722064656C696166;
    v17[1] = 0xEB00000000646165;
    (*(*(v15 - 8) + 104))(v17, enum case for Errors.CommunicationFailure(_:), v15);
    sub_1001D29D8(v16);
  }

  return result;
}

uint64_t sub_1001D31C8(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = v23 - v10;
  if (*(a1 + 16) && (v12 = sub_10016D4D0(1635017060, 0xE400000000000000), (v13 & 1) != 0) && (sub_100095B34(*(a1 + 56) + 32 * v12, v24), sub_1001D37DC(), (swift_dynamicCast() & 1) != 0))
  {
    v14 = v23[1];
    (*(v5 + 16))(v11, v2 + OBJC_IVAR____TtC14dockaccessoryd27AccessoryDescriptionSession_logger, v4);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "Data frame received", v17, 2u);
    }

    (*(v5 + 8))(v11, v4);
    v18 = sub_1001D26FC(v14);
  }

  else
  {
    (*(v5 + 16))(v9, v2 + OBJC_IVAR____TtC14dockaccessoryd27AccessoryDescriptionSession_logger, v4);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "No data present in frame", v21, 2u);
    }

    (*(v5 + 8))(v9, v4);
    v18 = 0;
  }

  return v18 & 1;
}

uint64_t sub_1001D3480()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v28 - v8;
  v10 = (v1 + 5);
  if (v1[5])
  {
    (*(v3 + 16))(v7, v1 + OBJC_IVAR____TtC14dockaccessoryd27AccessoryDescriptionSession_logger, v2);
  }

  else
  {
    v30 = v7;
    v11 = *(v3 + 16);
    v11(&v28 - v8, v1 + OBJC_IVAR____TtC14dockaccessoryd27AccessoryDescriptionSession_logger, v2);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v29 = v2;
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "Data read completed but no completion handler", v14, 2u);
      v2 = v29;
    }

    (*(v3 + 8))(v9, v2);
    v7 = v30;
    v11(v30, v1 + OBJC_IVAR____TtC14dockaccessoryd27AccessoryDescriptionSession_logger, v2);
  }

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v30 = v7;
    v17 = v2;
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v18 = 138412290;
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v21 = *(Strong + 24);

      v22 = v21;
    }

    else
    {
      v21 = 0;
      v22 = 0;
    }

    *(v18 + 4) = v21;
    *v19 = v22;
    _os_log_impl(&_mh_execute_header, v15, v16, "Data read completed for accessory: %@", v18, 0xCu);
    sub_100095C84(v19, &unk_1002A6F60, &unk_10023C4E0);

    v2 = v17;
    v7 = v30;
  }

  result = (*(v3 + 8))(v7, v2);
  v24 = *v10;
  if (*v10)
  {
    v25 = v1[6];
    *v10 = 0;
    v1[6] = 0;
    swift_beginAccess();
    v27 = v1[13];
    v26 = v1[14];
    sub_1000B4F20(v27, v26);
    v24(0, v27, v26);
    sub_1000A452C(v27, v26);
    return sub_1000BAA84(v24);
  }

  return result;
}

unint64_t sub_1001D37DC()
{
  result = qword_1002A9270;
  if (!qword_1002A9270)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1002A9270);
  }

  return result;
}

uint64_t sub_1001D3830()
{
  v1 = sub_100095274(&qword_1002A9F70, &qword_10023EB70);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_1001D38D8(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_100095274(&qword_1002A9F70, &qword_10023EB70) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1001D22C0(a1, a2, v2 + v6, v7);
}

uint64_t sub_1001D3994(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t *sub_1001D3A4C()
{
  v1 = *v0;
  if ((*(v0 + 20) & 1) == 0)
  {
    notify_cancel(*(v0 + 4));
  }

  v2 = v0[4];

  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 104));
  v3 = *(v0 + *(*v0 + 112) + 8);

  v4 = *(v0 + *(*v0 + 120) + 8);

  return v0;
}

uint64_t sub_1001D3B30()
{
  sub_1001D3A4C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

dockaccessoryd::AlertType_optional __swiftcall AlertType.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v1.value = dockaccessoryd_AlertType_SecureTracking;
  }

  else
  {
    v1.value = dockaccessoryd_AlertType_unknownDefault;
  }

  if (rawValue)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_1001D3BC4()
{
  result = qword_1002AC5D0;
  if (!qword_1002AC5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AC5D0);
  }

  return result;
}

void *sub_1001D3C18@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

char *sub_1001D3C48()
{
  v0 = type metadata accessor for UUID();
  v39 = *(v0 - 8);
  v40 = v0;
  v1 = *(v39 + 64);
  __chkstk_darwin(v0);
  v38 = &v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v3 = *(v37 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v37);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for OS_dispatch_queue.Attributes();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v9 = type metadata accessor for DispatchQoS();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  Logger.init(subsystem:category:)();
  v35 = OBJC_IVAR____TtC14dockaccessoryd19VirtualEventService_workQueue;
  v34 = sub_1000B3420();
  static DispatchQoS.unspecified.getter();
  v41[0] = _swiftEmptyArrayStorage;
  sub_1000C6F40();
  sub_100095274(&unk_1002A6830, &unk_10023AB20);
  sub_1000C6F98();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v3 + 104))(v6, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v37);
  v11 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v12 = v36;
  *&v36[v35] = v11;
  *&v12[OBJC_IVAR____TtC14dockaccessoryd19VirtualEventService_eventService] = 0;
  sub_100095274(&qword_1002AA4D8, &unk_10023FAE0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10023FB80;
  *(inited + 32) = 0x726F70736E617254;
  *(inited + 40) = 0xE900000000000074;
  *(inited + 48) = 0x6C617574726956;
  *(inited + 56) = 0xE700000000000000;
  *(inited + 72) = &type metadata for String;
  *(inited + 80) = 0xD00000000000001ALL;
  *(inited + 88) = 0x80000001002351D0;
  *(inited + 96) = 1;
  *(inited + 120) = &type metadata for Bool;
  *(inited + 128) = 0xD000000000000016;
  *(inited + 136) = 0x80000001002351F0;
  v14 = v38;
  UUID.init()();
  v15 = UUID.uuidString.getter();
  v17 = v16;
  (*(v39 + 8))(v14, v40);
  *(inited + 144) = v15;
  *(inited + 152) = v17;
  *(inited + 168) = &type metadata for String;
  *(inited + 176) = 0xD000000000000010;
  *(inited + 184) = 0x800000010022E680;
  *(inited + 192) = 65280;
  *(inited + 216) = &type metadata for Int;
  strcpy((inited + 224), "PrimaryUsage");
  *(inited + 237) = 0;
  *(inited + 238) = -5120;
  *(inited + 240) = 1;
  *(inited + 264) = &type metadata for Int;
  *(inited + 272) = 0x6E492D746C697542;
  *(inited + 280) = 0xE800000000000000;
  *(inited + 288) = 1;
  *(inited + 312) = &type metadata for Int;
  *(inited + 320) = 0x4449726F646E6556;
  *(inited + 328) = 0xE800000000000000;
  *(inited + 336) = 65280;
  *(inited + 360) = &type metadata for Int;
  *(inited + 368) = 0x49746375646F7250;
  *(inited + 376) = 0xE900000000000044;
  *(inited + 384) = 65280;
  *(inited + 408) = &type metadata for Int;
  strcpy((inited + 416), "ReportInterval");
  *(inited + 431) = -18;
  *(inited + 432) = 0;
  *(inited + 456) = &type metadata for Int;
  *(inited + 464) = 0xD000000000000010;
  *(inited + 472) = 0x8000000100235210;
  v18 = sub_1001F3BCC(&off_100275070);
  sub_100095274(&qword_1002AC670, &qword_10023EC08);
  swift_arrayDestroy();
  *(inited + 504) = sub_100095274(&qword_1002AC678, &unk_10023FC80);
  *(inited + 480) = v18;
  v19 = sub_1001F2468(inited);
  swift_setDeallocating();
  sub_100095274(&qword_1002AA4E0, &qword_10023EE00);
  swift_arrayDestroy();
  *&v12[OBJC_IVAR____TtC14dockaccessoryd19VirtualEventService_properties] = v19;
  v20 = type metadata accessor for VirtualEventService();
  v42.receiver = v12;
  v42.super_class = v20;
  v21 = objc_msgSendSuper2(&v42, "init");
  v22 = [objc_allocWithZone(HIDVirtualEventService) init];
  v23 = OBJC_IVAR____TtC14dockaccessoryd19VirtualEventService_eventService;
  v24 = *&v21[OBJC_IVAR____TtC14dockaccessoryd19VirtualEventService_eventService];
  *&v21[OBJC_IVAR____TtC14dockaccessoryd19VirtualEventService_eventService] = v22;

  v25 = *&v21[v23];
  if (v25)
  {
    [v25 setDelegate:v21];
    v26 = *&v21[v23];
    if (v26)
    {
      v27 = swift_allocObject();
      *(v27 + 16) = v21;
      v41[4] = sub_1001D4D60;
      v41[5] = v27;
      v41[0] = _NSConcreteStackBlock;
      v41[1] = 1107296256;
      v41[2] = sub_100147FC8;
      v41[3] = &unk_10027B180;
      v28 = _Block_copy(v41);
      v29 = v26;
      v30 = v21;

      [v29 setCancelHandler:v28];
      _Block_release(v28);

      v31 = *&v21[v23];
      if (v31)
      {
        [v31 setDispatchQueue:*&v30[OBJC_IVAR____TtC14dockaccessoryd19VirtualEventService_workQueue]];
        v32 = *&v21[v23];
        if (v32)
        {
          [v32 activate];
        }
      }
    }
  }

  return v21;
}

uint64_t sub_1001D4304(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1 + OBJC_IVAR____TtC14dockaccessoryd19VirtualEventService_logger, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "event service cancelled", v9, 2u);
  }

  return (*(v3 + 8))(v6, v2);
}

id sub_1001D4480()
{
  v1 = *&v0[OBJC_IVAR____TtC14dockaccessoryd19VirtualEventService_eventService];
  *&v0[OBJC_IVAR____TtC14dockaccessoryd19VirtualEventService_eventService] = 0;

  v3.receiver = v0;
  v3.super_class = type metadata accessor for VirtualEventService();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t type metadata accessor for VirtualEventService()
{
  result = qword_1002AC660;
  if (!qword_1002AC660)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_1001D46A4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v5 = *(v3 + OBJC_IVAR____TtC14dockaccessoryd19VirtualEventService_properties);
  if (!*(v5 + 16))
  {
    goto LABEL_7;
  }

  v8 = sub_10016D4D0(a1, a2);
  if ((v9 & 1) == 0)
  {

LABEL_7:
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
    return result;
  }

  sub_100095B34(*(v5 + 56) + 32 * v8, a3);

  return result;
}

uint64_t sub_1001D4A24()
{
  result = type metadata accessor for Logger();
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

uint64_t sub_1001D4AD8(uint64_t a1)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, v1 + OBJC_IVAR____TtC14dockaccessoryd19VirtualEventService_logger, v3);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v16 = v11;
    *v10 = 136315138;
    if (a1 == 10)
    {
      v12 = 0x746172656D756E65;
    }

    else
    {
      v12 = 0x74616E696D726574;
    }

    v13 = sub_1000952D4(v12, 0xEA00000000006465, &v16);

    *(v10 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v8, v9, "notification:, %s", v10, 0xCu);
    sub_100095808(v11);
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_1001D4CC0(uint64_t a1)
{
  v2 = sub_100095274(&qword_1002A9210, &unk_10023BE70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1001D4D28()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1001D4D68(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1001D4D84()
{
  result = qword_1002AC680;
  if (!qword_1002AC680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AC680);
  }

  return result;
}

uint64_t sub_1001D4DE8()
{
  swift_beginAccess();
  v1 = v0[5];
  if (v1)
  {
    [v1 invalidate];
  }

  return swift_deallocClassInstance();
}

id sub_1001D4E80()
{
  result = [objc_allocWithZone(type metadata accessor for BTLink()) init];
  qword_1002B1EB8 = result;
  return result;
}

char *sub_1001D4EB4()
{
  v1 = v0;
  v2 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v39 = *(v2 - 8);
  v40 = v2;
  v3 = *(v39 + 64);
  __chkstk_darwin(v2);
  v38 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OS_dispatch_queue.Attributes();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v37 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  Logger.init(subsystem:category:)();
  *&v0[OBJC_IVAR____TtC14dockaccessoryd6BTLink_manager] = 0;
  *&v0[OBJC_IVAR____TtC14dockaccessoryd6BTLink_powerOnActions] = _swiftEmptyArrayStorage;
  *&v0[OBJC_IVAR____TtC14dockaccessoryd6BTLink_device] = 0;
  v0[OBJC_IVAR____TtC14dockaccessoryd6BTLink_mode] = 0;
  *&v0[OBJC_IVAR____TtC14dockaccessoryd6BTLink_btScan] = 0;
  v10 = &v0[OBJC_IVAR____TtC14dockaccessoryd6BTLink_filter];
  *v10 = 0u;
  *(v10 + 1) = 0u;
  *(v10 + 4) = 0;
  v11 = &v0[OBJC_IVAR____TtC14dockaccessoryd6BTLink_match];
  *v11 = 0;
  *(v11 + 1) = 0;
  v0[OBJC_IVAR____TtC14dockaccessoryd6BTLink_shouldScan] = 0;
  v12 = OBJC_IVAR____TtC14dockaccessoryd6BTLink_connectionTxn;
  v13 = type metadata accessor for Transaction();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  v16 = swift_allocObject();
  *(v16 + 48) = 0;
  *(v16 + 24) = 0;
  *(v16 + 32) = 0;
  *(v16 + 16) = 0;
  swift_unknownObjectWeakInit();
  *(v16 + 80) = 0;
  *(v16 + 88) = 1;
  Logger.init(subsystem:category:)();
  *(v16 + 64) = 0xD000000000000026;
  *(v16 + 72) = 0x80000001002353B0;
  *(v16 + 48) = 0;
  *(v16 + 56) = 0x402E000000000000;
  swift_unknownObjectWeakAssign();
  *&v0[v12] = v16;
  v0[OBJC_IVAR____TtC14dockaccessoryd6BTLink_enableOnPowerOn] = 0;
  v17 = OBJC_IVAR____TtC14dockaccessoryd6BTLink_queue;
  sub_1000B3420();
  static DispatchQoS.unspecified.getter();
  *&v41[0] = _swiftEmptyArrayStorage;
  sub_1000EFFD8(&qword_1002A7110, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100095274(&unk_1002A6830, &unk_10023AB20);
  sub_100095BDC(&qword_1002A7120, &unk_1002A6830, &unk_10023AB20);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v39 + 104))(v38, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v40);
  *&v0[v17] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v18 = &v0[OBJC_IVAR____TtC14dockaccessoryd6BTLink_delegate];
  *(v18 + 4) = 0;
  *v18 = 0u;
  *(v18 + 1) = 0u;
  v19 = OBJC_IVAR____TtC14dockaccessoryd6BTLink__discoveredLock;
  sub_100095274(&unk_1002A7370, &qword_10023AB30);
  v20 = swift_allocObject();
  *(v20 + 16) = 0;
  *&v1[v19] = v20;
  v21 = OBJC_IVAR____TtC14dockaccessoryd6BTLink__discoveredDevices;
  *&v1[v21] = sub_1001F3DD8(_swiftEmptyArrayStorage);
  v22 = type metadata accessor for BTLink();
  v43.receiver = v1;
  v43.super_class = v22;
  v23 = objc_msgSendSuper2(&v43, "init");
  v24 = OBJC_IVAR____TtC14dockaccessoryd6BTLink_queue;
  v25 = *&v23[OBJC_IVAR____TtC14dockaccessoryd6BTLink_queue];
  v26 = objc_allocWithZone(CBCentralManager);
  v27 = v23;
  v28 = [v26 initWithDelegate:v27 queue:v25];
  v29 = *&v23[v24];
  type metadata accessor for BTScanEngine();
  memset(v41, 0, sizeof(v41));
  v42 = 0;
  swift_allocObject();
  v30 = v28;
  v31 = v29;
  v32 = sub_1000F6788(v30, v31, v41);

  v33 = *&v27[OBJC_IVAR____TtC14dockaccessoryd6BTLink_btScan];
  *&v27[OBJC_IVAR____TtC14dockaccessoryd6BTLink_btScan] = v32;

  v34 = *&v27[OBJC_IVAR____TtC14dockaccessoryd6BTLink_manager];
  *&v27[OBJC_IVAR____TtC14dockaccessoryd6BTLink_manager] = v30;

  v35 = *&v27[OBJC_IVAR____TtC14dockaccessoryd6BTLink_connectionTxn];

  *(v35 + 48) = &off_10027B2C8;
  swift_unknownObjectWeakAssign();

  return v27;
}

uint64_t sub_1001D5444(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v21 = *(v5 - 8);
  v6 = *(v21 + 64);
  __chkstk_darwin(v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for DispatchQoS();
  v9 = *(v20 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v20);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *&v2[OBJC_IVAR____TtC14dockaccessoryd6BTLink_queue];
  v14 = swift_allocObject();
  v14[2] = v2;
  v14[3] = a1;
  v14[4] = a2;
  aBlock[4] = sub_1001DA414;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100147FC8;
  aBlock[3] = &unk_10027B358;
  v15 = _Block_copy(aBlock);
  v16 = v13;
  v17 = v2;

  static DispatchQoS.unspecified.getter();
  v22 = &_swiftEmptyArrayStorage;
  sub_1000EFFD8(&qword_1002A7150, &type metadata accessor for DispatchWorkItemFlags);
  sub_100095274(&unk_1002A6B60, qword_10023AE10);
  sub_100095BDC(&qword_1002A7160, &unk_1002A6B60, qword_10023AE10);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v15);

  (*(v21 + 8))(v8, v5);
  (*(v9 + 8))(v12, v20);
}

void sub_1001D5720(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v6 = OBJC_IVAR____TtC14dockaccessoryd6BTLink_manager;
  v7 = *(a1 + OBJC_IVAR____TtC14dockaccessoryd6BTLink_manager);
  if (v7 && [v7 state] == 5)
  {
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "Central already powered on, performing action immediately.", v10, 2u);
    }

    v11 = *(a1 + v6);
    if (v11)
    {
      v22 = v11;
      a2();
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "Queueing power on action...", v14, 2u);
    }

    v15 = swift_allocObject();
    *(v15 + 16) = a2;
    *(v15 + 24) = a3;
    v16 = OBJC_IVAR____TtC14dockaccessoryd6BTLink_powerOnActions;
    swift_beginAccess();
    v17 = *(a1 + v16);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a1 + v16) = v17;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v17 = sub_1001030F0(0, v17[2] + 1, 1, v17);
      *(a1 + v16) = v17;
    }

    v20 = v17[2];
    v19 = v17[3];
    if (v20 >= v19 >> 1)
    {
      v17 = sub_1001030F0((v19 > 1), v20 + 1, 1, v17);
    }

    v17[2] = v20 + 1;
    v21 = &v17[2 * v20];
    v21[4] = sub_1001DA458;
    v21[5] = v15;
    *(a1 + v16) = v17;
    swift_endAccess();
  }
}

uint64_t sub_1001D59A0(uint64_t a1, void *a2)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v22 = *(v5 - 8);
  v6 = *(v22 + 64);
  __chkstk_darwin(v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for DispatchQoS();
  v9 = *(v21 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v21);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *&v2[OBJC_IVAR____TtC14dockaccessoryd6BTLink_queue];
  v14 = swift_allocObject();
  v14[2] = v2;
  v14[3] = a1;
  v14[4] = a2;
  aBlock[4] = sub_1001DA39C;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100147FC8;
  aBlock[3] = &unk_10027B308;
  v15 = _Block_copy(aBlock);
  v16 = v13;
  v17 = v2;
  v18 = a2;
  static DispatchQoS.unspecified.getter();
  v23 = _swiftEmptyArrayStorage;
  sub_1000EFFD8(&qword_1002A7150, &type metadata accessor for DispatchWorkItemFlags);
  sub_100095274(&unk_1002A6B60, qword_10023AE10);
  sub_100095BDC(&qword_1002A7160, &unk_1002A6B60, qword_10023AE10);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v15);

  (*(v22 + 8))(v8, v5);
  (*(v9 + 8))(v12, v21);
}

uint64_t sub_1001D5C78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_100095274(&unk_1002A9C20, &qword_10023D210);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v17 - v10;
  v12 = OBJC_IVAR____TtC14dockaccessoryd6BTLink__discoveredLock;
  v13 = *(v4 + OBJC_IVAR____TtC14dockaccessoryd6BTLink__discoveredLock);

  os_unfair_lock_lock(v13 + 4);

  sub_1000E40C4(a3, v11);
  v14 = type metadata accessor for BTDiscoveredDevice();
  (*(*(v14 - 8) + 56))(v11, 0, 1, v14);
  swift_beginAccess();

  sub_1001DA8BC(v11, a1, a2);
  swift_endAccess();
  v15 = *(v4 + v12);

  os_unfair_lock_unlock(v15 + 4);
}

uint64_t sub_1001D5DDC()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC14dockaccessoryd6BTLink__discoveredLock;
  v3 = *(v0 + OBJC_IVAR____TtC14dockaccessoryd6BTLink__discoveredLock);

  os_unfair_lock_lock(v3 + 4);

  v4 = OBJC_IVAR____TtC14dockaccessoryd6BTLink__discoveredDevices;
  swift_beginAccess();
  v5 = *(v1 + v4);
  v6 = *(v5 + 16);
  if (v6)
  {
    v16 = v2;
    v7 = sub_1001E3CAC(v6, 0);
    v8 = *(sub_100095274(&qword_1002A98D0, &unk_10023FFF0) - 8);
    v9 = sub_1001F128C(&v17, v7 + ((*(v8 + 80) + 32) & ~*(v8 + 80)), v6, v5);
    swift_bridgeObjectRetain_n();
    sub_1000C7084();
    if (v9 != v6)
    {
      __break(1u);

      __break(1u);
      result = swift_unexpectedError();
      __break(1u);
      return result;
    }

    v2 = v16;
  }

  else
  {

    v7 = _swiftEmptyArrayStorage;
  }

  v17 = v7;
  sub_1001D7CB0(&v17);

  v10 = sub_1001D628C(v17);

  if (v10[2])
  {
    sub_100095274(&unk_1002AC9E0, &qword_10023F7B8);
    v11 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v11 = &_swiftEmptyDictionarySingleton;
  }

  v17 = v11;

  sub_1001D9BA4(v12, 1, &v17);

  v13 = v17;
  v14 = *(v1 + v2);

  os_unfair_lock_unlock(v14 + 4);

  return v13;
}

BOOL sub_1001D601C(uint64_t a1, uint64_t a2)
{
  v34 = a2;
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  v5 = v4[8];
  v6 = __chkstk_darwin(v3);
  v33 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v31 - v8;
  v10 = sub_100095274(&qword_1002A98D0, &unk_10023FFF0);
  v11 = v10 - 8;
  v12 = *(*(v10 - 8) + 64);
  v13 = __chkstk_darwin(v10);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v31 - v16;
  sub_1000B5150(a1, &v31 - v16, &qword_1002A98D0, &unk_10023FFF0);
  v18 = *(v17 + 1);

  v19 = &v17[*(v11 + 56)];
  v20 = type metadata accessor for BTDiscoveredDevice();
  v21 = *(v20 + 28);
  v32 = v4[2];
  v32(v9, v19 + v21, v3);
  sub_1000E4128(v19);
  Date.timeIntervalSince1970.getter();
  v23 = v22;
  v24 = v4[1];
  v24(v9, v3);
  sub_1000B5150(v34, v15, &qword_1002A98D0, &unk_10023FFF0);
  v25 = *(v15 + 1);

  v26 = &v15[*(v11 + 56)];
  v27 = v33;
  v32(v33, v26 + *(v20 + 28), v3);
  sub_1000E4128(v26);
  Date.timeIntervalSince1970.getter();
  v29 = v28;
  v24(v27, v3);
  return v29 < v23;
}

void *sub_1001D628C(uint64_t a1)
{
  v18 = sub_100095274(&qword_1002A98D0, &unk_10023FFF0);
  v2 = *(v18 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v18);
  v5 = &v18 - v4;
  v6 = sub_100095274(&qword_1002AC7F0, &qword_100240000);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v18 - v9;
  v11 = *(a1 + 16);
  v12 = _swiftEmptyArrayStorage;
  if (v11)
  {
    v19 = _swiftEmptyArrayStorage;
    sub_1001D71C8(0, v11, 0);
    v12 = v19;
    v13 = a1 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v14 = *(v2 + 72);
    do
    {
      sub_1000B5150(v13, v5, &qword_1002A98D0, &unk_10023FFF0);
      swift_dynamicCast();
      v19 = v12;
      v16 = v12[2];
      v15 = v12[3];
      if (v16 >= v15 >> 1)
      {
        sub_1001D71C8(v15 > 1, v16 + 1, 1);
        v12 = v19;
      }

      v12[2] = v16 + 1;
      sub_1001DA2F4(v10, v12 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v16, &qword_1002AC7F0, &qword_100240000);
      v13 += v14;
      --v11;
    }

    while (v11);
  }

  return v12;
}

void sub_1001D64C4(void *a1, uint64_t a2, uint64_t a3, char *a4)
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2)
  {
    v23 = OBJC_IVAR____TtC14dockaccessoryd8BTDevice_peripheral;
    if (!*&a4[OBJC_IVAR____TtC14dockaccessoryd8BTDevice_peripheral])
    {
      v37 = a4;
      v48 = Logger.logObject.getter();
      v38 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v48, v38))
      {
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        v49 = v40;
        *v39 = 136315138;
        v41 = sub_10013EE04();
        v43 = sub_1000952D4(v41, v42, &v49);

        *(v39 + 4) = v43;
        _os_log_impl(&_mh_execute_header, v48, v38, "Unable to connect to %s: Peripheral is nil", v39, 0xCu);
        sub_100095808(v40);
        goto LABEL_4;
      }

      goto LABEL_11;
    }

    v48 = v11;
    v24 = *(a3 + OBJC_IVAR____TtC14dockaccessoryd6BTLink_device);
    *(a3 + OBJC_IVAR____TtC14dockaccessoryd6BTLink_device) = a4;
    v25 = a4;

    *(a3 + OBJC_IVAR____TtC14dockaccessoryd6BTLink_mode) = 2;
    v26 = *(a3 + OBJC_IVAR____TtC14dockaccessoryd6BTLink_connectionTxn);

    sub_100105518();

    v27 = v25;
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v49 = v47;
      *v30 = 136315138;
      v31 = *&a4[v23];
      if (!v31)
      {
        goto LABEL_19;
      }

      v32 = v31;

      v33 = [v32 identifier];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v34 = UUID.uuidString.getter();
      v27 = v35;
      (*(v9 + 8))(v13, v48);
      v36 = sub_1000952D4(v34, v27, &v49);

      *(v30 + 4) = v36;
      _os_log_impl(&_mh_execute_header, v28, v29, "Connecting peripheral %s", v30, 0xCu);
      sub_100095808(v47);
    }

    else
    {
    }

    v45 = *&a4[v23];
    if (v45)
    {
      [a1 connectPeripheral:v45 options:0];
      return;
    }

    __break(1u);
LABEL_19:

    __break(1u);
    return;
  }

  v14 = a4;
  swift_errorRetain();
  v48 = Logger.logObject.getter();
  v15 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v48, v15))
  {
    v16 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    *v16 = 136315394;
    v17 = sub_10013EE04();
    v19 = sub_1000952D4(v17, v18, &v49);

    *(v16 + 4) = v19;
    *(v16 + 12) = 2080;
    swift_getErrorValue();
    v20 = Error.localizedDescription.getter();
    v22 = sub_1000952D4(v20, v21, &v49);

    *(v16 + 14) = v22;
    _os_log_impl(&_mh_execute_header, v48, v15, "Unable to connect to %s: %s", v16, 0x16u);
    swift_arrayDestroy();
LABEL_4:

    return;
  }

LABEL_11:
  v44 = v48;
}

void sub_1001D699C(void *a1, uint64_t a2, uint64_t a3, NSObject *a4)
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v14 = a4;
    swift_errorRetain();
    v47 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v47, v15))
    {
      v16 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      *v16 = 136315394;
      if (a4)
      {
        v17 = sub_10013EE04();
        v19 = v18;
      }

      else
      {
        v19 = 0xE600000000000000;
        v17 = 0x656369766564;
      }

      v36 = sub_1000952D4(v17, v19, &v48);

      *(v16 + 4) = v36;
      *(v16 + 12) = 2080;
      swift_getErrorValue();
      v37 = Error.localizedDescription.getter();
      v39 = sub_1000952D4(v37, v38, &v48);

      *(v16 + 14) = v39;
      _os_log_impl(&_mh_execute_header, v47, v15, "Unable to disconnect %s: %s", v16, 0x16u);
      swift_arrayDestroy();

      goto LABEL_16;
    }

    goto LABEL_21;
  }

  v20 = a4;
  if (!a4)
  {
    v21 = *(a3 + OBJC_IVAR____TtC14dockaccessoryd6BTLink_device);
    if (!v21)
    {
      v47 = 0;
      goto LABEL_18;
    }

    v22 = v11;
    v47 = *(a3 + OBJC_IVAR____TtC14dockaccessoryd6BTLink_device);
    v23 = v21;
    v20 = v47;
    v11 = v22;
  }

  v24 = *(&v20->isa + OBJC_IVAR____TtC14dockaccessoryd8BTDevice_peripheral);
  v47 = v20;
  if (v24)
  {
    v46 = v11;
    v25 = a4;
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v48 = v29;
      *v28 = 136315138;
      v30 = *(&v47->isa + OBJC_IVAR____TtC14dockaccessoryd8BTDevice_peripheral);
      if (!v30)
      {
LABEL_25:
        __break(1u);
        return;
      }

      v31 = [v30 identifier];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v32 = UUID.uuidString.getter();
      v34 = v33;
      (*(v9 + 8))(v13, v46);
      v35 = sub_1000952D4(v32, v34, &v48);

      *(v28 + 4) = v35;
      _os_log_impl(&_mh_execute_header, v26, v27, "Disconnecting peripheral %s", v28, 0xCu);
      sub_100095808(v29);
    }

    if (*(&v47->isa + OBJC_IVAR____TtC14dockaccessoryd8BTDevice_peripheral))
    {
      [a1 cancelPeripheralConnection:?];
LABEL_16:

      return;
    }

    __break(1u);
    goto LABEL_25;
  }

LABEL_18:
  v40 = a4;
  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    *v43 = 0;
    _os_log_impl(&_mh_execute_header, v41, v42, "Unable to disconnect: Invalid BT peripheral", v43, 2u);
  }

LABEL_21:
  v44 = v47;
}

id sub_1001D6E1C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BTLink();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for BTLink()
{
  result = qword_1002AC7D8;
  if (!qword_1002AC7D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001D6FE8()
{
  result = type metadata accessor for Logger();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    return swift_updateClassMetadata2();
  }

  return result;
}

unint64_t sub_1001D70F0()
{
  result = qword_1002AC7E8;
  if (!qword_1002AC7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AC7E8);
  }

  return result;
}

char *sub_1001D7148(char *a1, int64_t a2, char a3)
{
  result = sub_1001D728C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1001D7168(void *a1, int64_t a2, char a3)
{
  result = sub_1001D7390(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1001D7188(char *a1, int64_t a2, char a3)
{
  result = sub_1001D74B8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1001D71A8(char *a1, int64_t a2, char a3)
{
  result = sub_1001D75BC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1001D71C8(size_t a1, int64_t a2, char a3)
{
  result = sub_1001D76C8(a1, a2, a3, *v3, &qword_1002AC7F8, &qword_10023FE98, &qword_1002AC7F0, &qword_100240000);
  *v3 = result;
  return result;
}

char *sub_1001D7208(char *a1, int64_t a2, char a3)
{
  result = sub_1001D78B0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1001D7228(char *a1, int64_t a2, char a3)
{
  result = sub_1001D79D0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1001D7248(size_t a1, int64_t a2, char a3)
{
  result = sub_1001D7AD4(a1, a2, a3, *v3, &qword_1002A89C8, &qword_10023D920, &type metadata accessor for DockKitBoundingBox);
  *v3 = result;
  return result;
}

char *sub_1001D728C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100095274(&qword_1002A89B8, &qword_10023D910);
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

void *sub_1001D7390(void *result, int64_t a2, char a3, void *a4)
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
    sub_100095274(&unk_1002AC800, &qword_10023FEA8);
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
    type metadata accessor for ObjectType(0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1001D74B8(char *result, int64_t a2, char a3, char *a4)
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
    sub_100095274(&qword_1002A8998, &qword_10023D8F0);
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

char *sub_1001D75BC(char *result, int64_t a2, char a3, char *a4)
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
    sub_100095274(&unk_1002A8ED0, &qword_10023DBC0);
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

size_t sub_1001D76C8(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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
LABEL_30:
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

  if (!v15)
  {
    v19 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100095274(a5, a6);
  v16 = *(sub_100095274(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = j__malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v18 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(sub_100095274(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

char *sub_1001D78B0(char *result, int64_t a2, char a3, char *a4)
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
    sub_100095274(&qword_1002A89D0, &qword_10023D928);
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

char *sub_1001D79D0(char *result, int64_t a2, char a3, char *a4)
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
    sub_100095274(&qword_1002A89C0, &qword_10023D918);
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

size_t sub_1001D7AD4(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

  sub_100095274(a5, a6);
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

Swift::Int sub_1001D7CB0(void **a1)
{
  v2 = *(sub_100095274(&qword_1002A98D0, &unk_10023FFF0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1001DA108(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_1001D7D64(v6);
  *a1 = v3;
  return result;
}

Swift::Int sub_1001D7D64(uint64_t *a1)
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
        sub_100095274(&qword_1002A98D0, &unk_10023FFF0);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v6[2] = v5;
      }

      v7 = *(sub_100095274(&qword_1002A98D0, &unk_10023FFF0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1001D8348(v8, v9, a1, v4);
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
    return sub_1001D7EA8(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1001D7EA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v71 = type metadata accessor for Date();
  v8 = *(v71 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v71);
  v70 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v69 = &v54 - v12;
  v13 = sub_100095274(&qword_1002A98D0, &unk_10023FFF0);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13);
  v63 = &v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v68 = &v54 - v18;
  v19 = __chkstk_darwin(v17);
  v67 = &v54 - v20;
  v21 = __chkstk_darwin(v19);
  v66 = &v54 - v22;
  result = __chkstk_darwin(v21);
  v75 = &v54 - v25;
  v56 = a2;
  if (a3 != a2)
  {
    v26 = *a4;
    v27 = *(v24 + 72);
    v64 = (v8 + 8);
    v65 = (v8 + 16);
    v28 = v26 + v27 * (a3 - 1);
    v61 = -v27;
    v62 = v26;
    v29 = a1 - a3;
    v55 = v27;
    v30 = v26 + v27 * a3;
    v74 = v13;
LABEL_5:
    v59 = v28;
    v60 = a3;
    v57 = v30;
    v58 = v29;
    v72 = v29;
    v31 = v28;
    while (1)
    {
      v32 = v75;
      sub_1000B5150(v30, v75, &qword_1002A98D0, &unk_10023FFF0);
      v33 = v66;
      sub_1000B5150(v31, v66, &qword_1002A98D0, &unk_10023FFF0);
      v34 = v32;
      v35 = v67;
      sub_1000B5150(v34, v67, &qword_1002A98D0, &unk_10023FFF0);
      v36 = *(v35 + 8);

      v37 = v35 + *(v13 + 48);
      v38 = type metadata accessor for BTDiscoveredDevice();
      v39 = *(v38 + 28);
      v73 = *v65;
      v40 = v69;
      v41 = v71;
      v73(v69, v37 + v39, v71);
      sub_1000E4128(v37);
      Date.timeIntervalSince1970.getter();
      v43 = v42;
      v44 = *v64;
      (*v64)(v40, v41);
      v45 = v68;
      sub_1000B5150(v33, v68, &qword_1002A98D0, &unk_10023FFF0);
      v46 = *(v45 + 8);

      v47 = v45 + *(v74 + 48);
      v48 = v47 + *(v38 + 28);
      v49 = v70;
      v73(v70, v48, v41);
      sub_1000E4128(v47);
      Date.timeIntervalSince1970.getter();
      v51 = v50;
      v44(v49, v41);
      v13 = v74;
      sub_100095C84(v33, &qword_1002A98D0, &unk_10023FFF0);
      result = sub_100095C84(v75, &qword_1002A98D0, &unk_10023FFF0);
      if (v51 >= v43)
      {
LABEL_4:
        a3 = v60 + 1;
        v28 = v59 + v55;
        v29 = v58 - 1;
        v30 = v57 + v55;
        if (v60 + 1 == v56)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v62)
      {
        break;
      }

      v52 = v63;
      sub_1001DA2F4(v30, v63, &qword_1002A98D0, &unk_10023FFF0);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_1001DA2F4(v52, v31, &qword_1002A98D0, &unk_10023FFF0);
      v31 += v61;
      v30 += v61;
      if (__CFADD__(v72++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1001D8348(unint64_t *a1, uint64_t a2, int64_t a3, unint64_t a4)
{
  v158 = a1;
  v179 = type metadata accessor for Date();
  v6 = *(v179 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v179);
  v178 = &v154 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v177 = &v154 - v10;
  v183 = sub_100095274(&qword_1002A98D0, &unk_10023FFF0);
  v167 = *(v183 - 8);
  v11 = *(v167 + 64);
  v12 = __chkstk_darwin(v183);
  v161 = &v154 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v172 = &v154 - v15;
  v16 = __chkstk_darwin(v14);
  v176 = &v154 - v17;
  v18 = __chkstk_darwin(v16);
  v175 = &v154 - v19;
  v20 = __chkstk_darwin(v18);
  v184 = &v154 - v21;
  v22 = __chkstk_darwin(v20);
  v182 = &v154 - v23;
  v24 = __chkstk_darwin(v22);
  v155 = &v154 - v25;
  result = __chkstk_darwin(v24);
  v154 = &v154 - v27;
  v28 = *(a3 + 8);
  v162 = a3;
  if (v28 < 1)
  {
    v30 = _swiftEmptyArrayStorage;
LABEL_98:
    a4 = *v158;
    if (!*v158)
    {
      goto LABEL_138;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      goto LABEL_132;
    }

    goto LABEL_100;
  }

  v157 = a4;
  v29 = 0;
  v173 = (v6 + 8);
  v174 = (v6 + 16);
  v30 = _swiftEmptyArrayStorage;
  v31 = &unk_10023FFF0;
LABEL_4:
  v32 = v29;
  v159 = v29;
  if (v29 + 1 >= v28)
  {
    v43 = v29 + 1;
    v64 = v157;
  }

  else
  {
    v168 = v28;
    v33 = v29;
    a4 = *a3;
    v34 = *(v167 + 72);
    v35 = *a3 + v34 * (v29 + 1);
    v36 = v31;
    v37 = v154;
    sub_1000B5150(v35, v154, &qword_1002A98D0, v36);
    v38 = v155;
    sub_1000B5150(a4 + v34 * v33, v155, &qword_1002A98D0, v36);
    v39 = v169;
    LODWORD(v170) = sub_1001D601C(v37, v38);
    v169 = v39;
    if (v39)
    {
      sub_100095C84(v38, &qword_1002A98D0, &unk_10023FFF0);
      sub_100095C84(v37, &qword_1002A98D0, &unk_10023FFF0);
    }

    v156 = v30;
    sub_100095C84(v38, &qword_1002A98D0, v36);
    result = sub_100095C84(v37, &qword_1002A98D0, v36);
    v40 = v33 + 2;
    v41 = a4 + v34 * v40;
    v31 = v36;
    v42 = v34;
    v171 = v34;
    while (1)
    {
      v43 = v168;
      if (v168 == v40)
      {
        break;
      }

      v44 = v182;
      sub_1000B5150(v41, v182, &qword_1002A98D0, v31);
      v181 = v35;
      v45 = v35;
      v46 = v184;
      sub_1000B5150(v45, v184, &qword_1002A98D0, v31);
      v47 = v44;
      v48 = v175;
      sub_1000B5150(v47, v175, &qword_1002A98D0, v31);
      v49 = *(v48 + 8);

      v50 = v48 + *(v183 + 48);
      v51 = type metadata accessor for BTDiscoveredDevice();
      v52 = *(v51 + 28);
      v180 = *v174;
      v53 = v177;
      v54 = v179;
      (v180)(v177, v50 + v52, v179);
      sub_1000E4128(v50);
      Date.timeIntervalSince1970.getter();
      v56 = v55;
      v30 = *v173;
      (*v173)(v53, v54);
      v57 = v176;
      sub_1000B5150(v46, v176, &qword_1002A98D0, &unk_10023FFF0);
      v58 = *(v57 + 8);

      v59 = v57 + *(v183 + 48);
      v60 = v59 + *(v51 + 28);
      a4 = v178;
      (v180)(v178, v60, v54);
      sub_1000E4128(v59);
      Date.timeIntervalSince1970.getter();
      v62 = v61;
      v63 = v54;
      v31 = &unk_10023FFF0;
      (v30)(a4, v63);
      sub_100095C84(v46, &qword_1002A98D0, &unk_10023FFF0);
      result = sub_100095C84(v182, &qword_1002A98D0, &unk_10023FFF0);
      v42 = v171;
      ++v40;
      v41 += v171;
      v35 = &v181[v171];
      if (((v170 ^ (v62 >= v56)) & 1) == 0)
      {
        v43 = v40 - 1;
        break;
      }
    }

    v64 = v157;
    a3 = v162;
    v32 = v159;
    if ((v170 & 1) == 0)
    {
      goto LABEL_24;
    }

    if (v43 < v159)
    {
      goto LABEL_131;
    }

    if (v159 < v43)
    {
      v65 = v43;
      a4 = v42 * (v43 - 1);
      v66 = v43 * v42;
      v168 = v43;
      v67 = v159;
      v68 = v159 * v42;
      do
      {
        if (v67 != --v65)
        {
          v69 = *v162;
          if (!*v162)
          {
            goto LABEL_135;
          }

          sub_1001DA2F4(v69 + v68, v161, &qword_1002A98D0, v31);
          if (v68 < a4 || v69 + v68 >= v69 + v66)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v68 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          result = sub_1001DA2F4(v161, v69 + a4, &qword_1002A98D0, v31);
          v42 = v171;
        }

        ++v67;
        a4 -= v42;
        v66 -= v42;
        v68 += v42;
      }

      while (v67 < v65);
      v64 = v157;
      v30 = v156;
      a3 = v162;
      v32 = v159;
      v43 = v168;
    }

    else
    {
LABEL_24:
      v30 = v156;
    }
  }

  v70 = *(a3 + 8);
  if (v43 >= v70)
  {
    goto LABEL_35;
  }

  if (__OFSUB__(v43, v32))
  {
    goto LABEL_128;
  }

  if (v43 - v32 >= v64)
  {
LABEL_35:
    a4 = v43;
    if (v43 < v32)
    {
      goto LABEL_127;
    }

    goto LABEL_36;
  }

  if (__OFADD__(v32, v64))
  {
    goto LABEL_129;
  }

  if (v32 + v64 >= v70)
  {
    a4 = *(a3 + 8);
  }

  else
  {
    a4 = v32 + v64;
  }

  if (a4 < v32)
  {
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
LABEL_132:
    result = sub_1001D99BC(v30);
    v30 = result;
LABEL_100:
    v185 = v30;
    v148 = *(v30 + 2);
    if (v148 >= 2)
    {
      while (1)
      {
        v149 = *a3;
        if (!*a3)
        {
          goto LABEL_136;
        }

        a3 = v148 - 1;
        v150 = *&v30[16 * v148];
        v151 = *&v30[16 * v148 + 24];
        v152 = v169;
        sub_1001D90C0(v149 + *(v167 + 72) * v150, v149 + *(v167 + 72) * *&v30[16 * v148 + 16], v149 + *(v167 + 72) * v151, a4);
        v169 = v152;
        if (v152)
        {
        }

        if (v151 < v150)
        {
          goto LABEL_125;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v30 = sub_1001D99BC(v30);
        }

        if (v148 - 2 >= *(v30 + 2))
        {
          goto LABEL_126;
        }

        v153 = &v30[16 * v148];
        *v153 = v150;
        *(v153 + 1) = v151;
        v185 = v30;
        result = sub_1001D9930(a3);
        v30 = v185;
        v148 = *(v185 + 2);
        a3 = v162;
        if (v148 <= 1)
        {
        }
      }
    }
  }

  if (v43 == a4)
  {
    goto LABEL_35;
  }

  v156 = v30;
  v120 = *a3;
  v121 = *(v167 + 72);
  v122 = *a3 + v121 * (v43 - 1);
  v170 = -v121;
  v171 = v120;
  v123 = (v32 - v43);
  v160 = v121;
  v124 = v120 + v43 * v121;
  v125 = v183;
  v163 = a4;
LABEL_89:
  v168 = v43;
  v164 = v124;
  v165 = v123;
  v126 = v123;
  v166 = v122;
  while (1)
  {
    v180 = v126;
    v127 = v182;
    sub_1000B5150(v124, v182, &qword_1002A98D0, v31);
    sub_1000B5150(v122, v184, &qword_1002A98D0, v31);
    v128 = v127;
    v129 = v175;
    sub_1000B5150(v128, v175, &qword_1002A98D0, v31);
    v130 = *(v129 + 8);

    v131 = v129 + *(v125 + 48);
    v132 = type metadata accessor for BTDiscoveredDevice();
    v133 = *(v132 + 28);
    v181 = *v174;
    v134 = v177;
    v135 = v179;
    (v181)(v177, v131 + v133, v179);
    sub_1000E4128(v131);
    Date.timeIntervalSince1970.getter();
    v137 = v136;
    v138 = *v173;
    (*v173)(v134, v135);
    v139 = v176;
    sub_1000B5150(v184, v176, &qword_1002A98D0, &unk_10023FFF0);
    v140 = *(v139 + 8);

    v141 = v139 + *(v183 + 48);
    v142 = v178;
    (v181)(v178, v141 + *(v132 + 28), v135);
    sub_1000E4128(v141);
    Date.timeIntervalSince1970.getter();
    v144 = v143;
    (v138)(v142, v135);
    v31 = &unk_10023FFF0;
    sub_100095C84(v184, &qword_1002A98D0, &unk_10023FFF0);
    result = sub_100095C84(v182, &qword_1002A98D0, &unk_10023FFF0);
    if (v144 >= v137)
    {
      v125 = v183;
LABEL_88:
      v43 = v168 + 1;
      v122 = v166 + v160;
      v123 = v165 - 1;
      v124 = v164 + v160;
      a4 = v163;
      if (v168 + 1 != v163)
      {
        goto LABEL_89;
      }

      a3 = v162;
      v30 = v156;
      if (v163 < v159)
      {
        goto LABEL_127;
      }

LABEL_36:
      result = swift_isUniquelyReferenced_nonNull_native();
      v163 = a4;
      if ((result & 1) == 0)
      {
        result = sub_100102974(0, *(v30 + 2) + 1, 1, v30);
        v30 = result;
      }

      a4 = *(v30 + 2);
      v71 = *(v30 + 3);
      v72 = a4 + 1;
      if (a4 >= v71 >> 1)
      {
        result = sub_100102974((v71 > 1), a4 + 1, 1, v30);
        v30 = result;
      }

      *(v30 + 2) = v72;
      v73 = &v30[16 * a4];
      v74 = v163;
      *(v73 + 4) = v159;
      *(v73 + 5) = v74;
      if (!*v158)
      {
        goto LABEL_137;
      }

      if (a4)
      {
        v75 = *v158;
        while (1)
        {
          v76 = v72 - 1;
          if (v72 >= 4)
          {
            break;
          }

          if (v72 == 3)
          {
            v77 = *(v30 + 4);
            v78 = *(v30 + 5);
            v87 = __OFSUB__(v78, v77);
            v79 = v78 - v77;
            v80 = v87;
LABEL_56:
            if (v80)
            {
              goto LABEL_116;
            }

            v93 = &v30[16 * v72];
            v95 = *v93;
            v94 = *(v93 + 1);
            v96 = __OFSUB__(v94, v95);
            v97 = v94 - v95;
            v98 = v96;
            if (v96)
            {
              goto LABEL_119;
            }

            v99 = &v30[16 * v76 + 32];
            v101 = *v99;
            v100 = *(v99 + 1);
            v87 = __OFSUB__(v100, v101);
            v102 = v100 - v101;
            if (v87)
            {
              goto LABEL_122;
            }

            if (__OFADD__(v97, v102))
            {
              goto LABEL_123;
            }

            if (v97 + v102 >= v79)
            {
              if (v79 < v102)
              {
                v76 = v72 - 2;
              }

              goto LABEL_77;
            }

            goto LABEL_70;
          }

          v103 = &v30[16 * v72];
          v105 = *v103;
          v104 = *(v103 + 1);
          v87 = __OFSUB__(v104, v105);
          v97 = v104 - v105;
          v98 = v87;
LABEL_70:
          if (v98)
          {
            goto LABEL_118;
          }

          v106 = &v30[16 * v76];
          v108 = *(v106 + 4);
          v107 = *(v106 + 5);
          v87 = __OFSUB__(v107, v108);
          v109 = v107 - v108;
          if (v87)
          {
            goto LABEL_121;
          }

          if (v109 < v97)
          {
            goto LABEL_3;
          }

LABEL_77:
          a4 = v76 - 1;
          if (v76 - 1 >= v72)
          {
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
LABEL_128:
            __break(1u);
LABEL_129:
            __break(1u);
            goto LABEL_130;
          }

          v114 = *a3;
          if (!*a3)
          {
            goto LABEL_134;
          }

          v115 = a3;
          v116 = *&v30[16 * a4 + 32];
          v117 = v76;
          a3 = *&v30[16 * v76 + 40];
          v118 = v169;
          sub_1001D90C0(v114 + *(v167 + 72) * v116, v114 + *(v167 + 72) * *&v30[16 * v76 + 32], v114 + *(v167 + 72) * a3, v75);
          v169 = v118;
          if (v118)
          {
          }

          if (a3 < v116)
          {
            goto LABEL_112;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v30 = sub_1001D99BC(v30);
          }

          if (a4 >= *(v30 + 2))
          {
            goto LABEL_113;
          }

          v119 = &v30[16 * a4];
          *(v119 + 4) = v116;
          *(v119 + 5) = a3;
          v185 = v30;
          result = sub_1001D9930(v117);
          v30 = v185;
          v72 = *(v185 + 2);
          a3 = v115;
          if (v72 <= 1)
          {
            goto LABEL_3;
          }
        }

        v81 = &v30[16 * v72 + 32];
        v82 = *(v81 - 64);
        v83 = *(v81 - 56);
        v87 = __OFSUB__(v83, v82);
        v84 = v83 - v82;
        if (v87)
        {
          goto LABEL_114;
        }

        v86 = *(v81 - 48);
        v85 = *(v81 - 40);
        v87 = __OFSUB__(v85, v86);
        v79 = v85 - v86;
        v80 = v87;
        if (v87)
        {
          goto LABEL_115;
        }

        v88 = &v30[16 * v72];
        v90 = *v88;
        v89 = *(v88 + 1);
        v87 = __OFSUB__(v89, v90);
        v91 = v89 - v90;
        if (v87)
        {
          goto LABEL_117;
        }

        v87 = __OFADD__(v79, v91);
        v92 = v79 + v91;
        if (v87)
        {
          goto LABEL_120;
        }

        if (v92 >= v84)
        {
          v110 = &v30[16 * v76 + 32];
          v112 = *v110;
          v111 = *(v110 + 1);
          v87 = __OFSUB__(v111, v112);
          v113 = v111 - v112;
          if (v87)
          {
            goto LABEL_124;
          }

          if (v79 < v113)
          {
            v76 = v72 - 2;
          }

          goto LABEL_77;
        }

        goto LABEL_56;
      }

LABEL_3:
      v28 = *(a3 + 8);
      v29 = v163;
      if (v163 >= v28)
      {
        goto LABEL_98;
      }

      goto LABEL_4;
    }

    v145 = v180;
    if (!v171)
    {
      break;
    }

    v146 = v172;
    sub_1001DA2F4(v124, v172, &qword_1002A98D0, &unk_10023FFF0);
    v125 = v183;
    swift_arrayInitWithTakeFrontToBack();
    sub_1001DA2F4(v146, v122, &qword_1002A98D0, &unk_10023FFF0);
    v122 += v170;
    v124 += v170;
    v147 = __CFADD__(v145, 1);
    v126 = v145 + 1;
    if (v147)
    {
      goto LABEL_88;
    }
  }

  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
  return result;
}

uint64_t sub_1001D90C0(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v95 = type metadata accessor for Date();
  v8 = *(v95 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v95);
  v94 = &v80 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v93 = &v80 - v12;
  v100 = sub_100095274(&qword_1002A98D0, &unk_10023FFF0);
  v13 = *(*(v100 - 8) + 64);
  v14 = __chkstk_darwin(v100);
  v92 = &v80 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v91 = &v80 - v17;
  v18 = __chkstk_darwin(v16);
  v90 = &v80 - v19;
  result = __chkstk_darwin(v18);
  v101 = &v80 - v21;
  v23 = *(v22 + 72);
  if (!v23)
  {
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v23 == -1)
  {
    goto LABEL_59;
  }

  v24 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v23 == -1)
  {
    goto LABEL_60;
  }

  v25 = (a2 - a1) / v23;
  v104 = a1;
  v103 = a4;
  if (v25 >= v24 / v23)
  {
    v27 = v24 / v23 * v23;
    if (a4 < a2 || a2 + v27 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v53 = a4 + v27;
    if (v27 >= 1)
    {
      v54 = -v23;
      v84 = (v8 + 16);
      v83 = (v8 + 8);
      v55 = a4 + v27;
      v97 = a4;
      v98 = a1;
      v85 = -v23;
      do
      {
        v81 = v53;
        v56 = a2 + v54;
        v99 = a2 + v54;
        v86 = a2;
        while (1)
        {
          if (a2 <= a1)
          {
            v104 = a2;
            v102 = v81;
            goto LABEL_57;
          }

          v82 = v53;
          v96 = a3 + v54;
          v58 = v55 + v54;
          v87 = (v55 + v54);
          v59 = v101;
          v89 = a3;
          sub_1000B5150(v58, v101, &qword_1002A98D0, &unk_10023FFF0);
          v60 = v90;
          sub_1000B5150(v56, v90, &qword_1002A98D0, &unk_10023FFF0);
          v61 = v91;
          sub_1000B5150(v59, v91, &qword_1002A98D0, &unk_10023FFF0);
          v62 = *(v61 + 8);

          v63 = v100;
          v64 = v61 + *(v100 + 48);
          v65 = type metadata accessor for BTDiscoveredDevice();
          v66 = *(v65 + 28);
          v88 = *v84;
          v67 = v93;
          v68 = v95;
          v88(v93, v64 + v66, v95);
          sub_1000E4128(v64);
          Date.timeIntervalSince1970.getter();
          v70 = v69;
          v71 = *v83;
          (*v83)(v67, v68);
          v72 = v92;
          sub_1000B5150(v60, v92, &qword_1002A98D0, &unk_10023FFF0);
          v73 = *(v72 + 8);

          v74 = v72 + *(v63 + 48);
          v75 = v74 + *(v65 + 28);
          v76 = v94;
          v88(v94, v75, v68);
          sub_1000E4128(v74);
          Date.timeIntervalSince1970.getter();
          v78 = v77;
          v71(v76, v68);
          sub_100095C84(v60, &qword_1002A98D0, &unk_10023FFF0);
          sub_100095C84(v101, &qword_1002A98D0, &unk_10023FFF0);
          if (v78 < v70)
          {
            break;
          }

          v79 = v87;
          v53 = v87;
          a3 = v96;
          if (v89 < v55 || v96 >= v55)
          {
            swift_arrayInitWithTakeFrontToBack();
            a1 = v98;
            v56 = v99;
          }

          else
          {
            a1 = v98;
            v56 = v99;
            if (v89 != v55)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v55 = v53;
          v57 = v79 > v97;
          v54 = v85;
          a2 = v86;
          if (!v57)
          {
            goto LABEL_55;
          }
        }

        a3 = v96;
        if (v89 < v86 || v96 >= v86)
        {
          a2 = v99;
          swift_arrayInitWithTakeFrontToBack();
          a1 = v98;
          v53 = v82;
          v54 = v85;
        }

        else
        {
          a1 = v98;
          a2 = v99;
          v53 = v82;
          v54 = v85;
          if (v89 != v86)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v55 > v97);
    }

LABEL_55:
    v104 = a2;
    v102 = v53;
  }

  else
  {
    v26 = v25 * v23;
    if (a4 < a1 || a1 + v26 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v89 = (a4 + v26);
    v102 = a4 + v26;
    if (v26 >= 1 && a2 < a3)
    {
      v86 = (v8 + 8);
      v87 = (v8 + 16);
      v96 = a3;
      v88 = v23;
      do
      {
        v97 = a4;
        v98 = a1;
        v99 = a2;
        v29 = v101;
        sub_1000B5150(a2, v101, &qword_1002A98D0, &unk_10023FFF0);
        v30 = v90;
        sub_1000B5150(a4, v90, &qword_1002A98D0, &unk_10023FFF0);
        v31 = v29;
        v32 = v91;
        sub_1000B5150(v31, v91, &qword_1002A98D0, &unk_10023FFF0);
        v33 = *(v32 + 8);

        v34 = v100;
        v35 = v32 + *(v100 + 48);
        v36 = type metadata accessor for BTDiscoveredDevice();
        v37 = *v87;
        v38 = v93;
        v39 = v95;
        (*v87)(v93, v35 + *(v36 + 28), v95);
        sub_1000E4128(v35);
        Date.timeIntervalSince1970.getter();
        v41 = v40;
        v42 = *v86;
        (*v86)(v38, v39);
        v43 = v92;
        sub_1000B5150(v30, v92, &qword_1002A98D0, &unk_10023FFF0);
        v44 = *(v43 + 8);

        v45 = v43 + *(v34 + 48);
        v46 = v45 + *(v36 + 28);
        v47 = v94;
        v37(v94, v46, v39);
        sub_1000E4128(v45);
        Date.timeIntervalSince1970.getter();
        v49 = v48;
        v42(v47, v39);
        sub_100095C84(v30, &qword_1002A98D0, &unk_10023FFF0);
        sub_100095C84(v101, &qword_1002A98D0, &unk_10023FFF0);
        if (v49 >= v41)
        {
          v51 = v98;
          a2 = v99;
          v50 = v88;
          a4 = v88 + v97;
          if (v98 < v97 || v98 >= a4)
          {
            swift_arrayInitWithTakeFrontToBack();
            v52 = v96;
          }

          else
          {
            v52 = v96;
            if (v98 != v97)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v103 = a4;
        }

        else
        {
          v50 = v88;
          v51 = v98;
          a2 = v88 + v99;
          a4 = v97;
          if (v98 < v99 || v98 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
            v52 = v96;
          }

          else
          {
            v52 = v96;
            if (v98 != v99)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }
        }

        a1 = v50 + v51;
        v104 = a1;
      }

      while (a4 < v89 && a2 < v52);
    }
  }

LABEL_57:
  sub_1001D9AB4(&v104, &v103, &v102);
  return 1;
}

uint64_t sub_1001D9930(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1001D99BC(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_1001D99D0(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = type metadata accessor for BTDiscoveredDevice();
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_1001D9AB4(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = sub_100095274(&qword_1002A98D0, &unk_10023FFF0);
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_1001D9BA4(uint64_t a1, char a2, void *a3)
{
  v7 = type metadata accessor for BTDiscoveredDevice();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7 - 8);
  v11 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100095274(&qword_1002AC7F0, &qword_100240000);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12);
  v17 = (&v61 - v16);
  v67 = *(a1 + 16);
  if (!v67)
  {
  }

  v63 = v3;
  v64 = v8;
  v18 = a2;
  v19 = *(v14 + 48);
  v20 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v66 = *(v15 + 72);
  v68 = a1;
  v62 = v20;
  sub_1000B5150(a1 + v20, &v61 - v16, &qword_1002AC7F0, &qword_100240000);
  v21 = v17[1];
  v71 = *v17;
  v22 = v71;
  v72 = v21;
  v65 = v19;
  sub_1000E45C8(v17 + v19, v11);
  v23 = *a3;
  v25 = sub_10016D4D0(v22, v21);
  v26 = v23[2];
  v27 = (v24 & 1) == 0;
  v28 = v26 + v27;
  if (__OFADD__(v26, v27))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v29 = v24;
  if (v23[3] >= v28)
  {
    if (v18)
    {
      if ((v24 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    else
    {
      sub_1001EF078();
      if ((v29 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_10;
  }

  sub_1001E7A44(v28, v18 & 1);
  v30 = *a3;
  v31 = sub_10016D4D0(v22, v21);
  if ((v29 & 1) == (v32 & 1))
  {
    v25 = v31;
    if ((v29 & 1) == 0)
    {
LABEL_13:
      v35 = *a3;
      *(*a3 + 8 * (v25 >> 6) + 64) |= 1 << v25;
      v36 = (v35[6] + 16 * v25);
      *v36 = v22;
      v36[1] = v21;
      v37 = v35[7];
      v64 = *(v64 + 72);
      sub_1000E45C8(v11, v37 + v64 * v25);
      v38 = v35[2];
      v39 = __OFADD__(v38, 1);
      v40 = v38 + 1;
      if (!v39)
      {
        v35[2] = v40;
        v41 = v68;
        if (v67 != 1)
        {
          v42 = v68 + v66 + v62;
          v43 = 1;
          while (v43 < *(v41 + 16))
          {
            sub_1000B5150(v42, v17, &qword_1002AC7F0, &qword_100240000);
            v44 = v17[1];
            v71 = *v17;
            v45 = v71;
            v72 = v44;
            sub_1000E45C8(v17 + v65, v11);
            v46 = *a3;
            v47 = sub_10016D4D0(v45, v44);
            v49 = v46[2];
            v50 = (v48 & 1) == 0;
            v39 = __OFADD__(v49, v50);
            v51 = v49 + v50;
            if (v39)
            {
              goto LABEL_24;
            }

            v52 = v48;
            if (v46[3] < v51)
            {
              sub_1001E7A44(v51, 1);
              v53 = *a3;
              v47 = sub_10016D4D0(v45, v44);
              if ((v52 & 1) != (v54 & 1))
              {
                goto LABEL_27;
              }
            }

            if (v52)
            {
              goto LABEL_10;
            }

            v55 = *a3;
            *(*a3 + 8 * (v47 >> 6) + 64) |= 1 << v47;
            v56 = (v55[6] + 16 * v47);
            *v56 = v45;
            v56[1] = v44;
            sub_1000E45C8(v11, v55[7] + v64 * v47);
            v57 = v55[2];
            v39 = __OFADD__(v57, 1);
            v58 = v57 + 1;
            if (v39)
            {
              goto LABEL_25;
            }

            ++v43;
            v55[2] = v58;
            v42 += v66;
            v41 = v68;
            if (v67 == v43)
            {
            }
          }

          goto LABEL_26;
        }
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

LABEL_10:
    v33 = swift_allocError();
    swift_willThrow();
    v73 = v33;
    swift_errorRetain();
    sub_100095274(&qword_1002A7268, &unk_10023C680);
    if ((swift_dynamicCast() & 1) == 0)
    {

      sub_1000E4128(v11);
    }

    goto LABEL_28;
  }

LABEL_27:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
LABEL_28:
  v69 = 0;
  v70 = 0xE000000000000000;
  _StringGuts.grow(_:)(30);
  v59._object = 0x8000000100235390;
  v59._countAndFlagsBits = 0xD00000000000001BLL;
  String.append(_:)(v59);
  _print_unlocked<A, B>(_:_:)();
  v60._countAndFlagsBits = 39;
  v60._object = 0xE100000000000000;
  String.append(_:)(v60);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void sub_1001DA164()
{
  v1 = v0;
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Connection timeout occured!", v4, 2u);
  }

  v5 = *(v1 + OBJC_IVAR____TtC14dockaccessoryd6BTLink_device);
  if (v5 && *(v5 + OBJC_IVAR____TtC14dockaccessoryd8BTDevice_peripheral))
  {
    [*(v1 + OBJC_IVAR____TtC14dockaccessoryd6BTLink_manager) cancelPeripheralConnection:?];
    *(v1 + OBJC_IVAR____TtC14dockaccessoryd6BTLink_mode) = 0;
  }

  else
  {
    oslog = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v6, "No peripheral to disconnect.", v7, 2u);
    }
  }
}

uint64_t sub_1001DA2F4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100095274(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_1001DA35C()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1001DA3BC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1001DA3D4()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1001DA420()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1001DA458(void *a1, void *a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return v3(*a1, *a2);
}

uint64_t sub_1001DA494(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_1000FEA30(a1, v10);
    v6 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v3;
    sub_1001EB278(v10, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v9;
  }

  else
  {
    sub_100095C84(a1, &qword_1002A9210, &unk_10023BE70);
    sub_1001E48B4(a2, a3, v10);

    return sub_100095C84(v10, &qword_1002A9210, &unk_10023BE70);
  }

  return result;
}

uint64_t sub_1001DA564(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a2)
  {
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v4;
    sub_1001EB3C8(a1, a2, a3, a4, isUniquelyReferenced_nonNull_native);

    *v4 = v21;
  }

  else
  {
    v13 = *v4;
    v14 = sub_10016D4D0(a3, a4);
    LOBYTE(v13) = v15;

    if (v13)
    {
      v16 = *v5;
      v17 = swift_isUniquelyReferenced_nonNull_native();
      v18 = *v5;
      v22 = *v5;
      if (!v17)
      {
        sub_1001EDD74();
        v18 = v22;
      }

      v19 = *(*(v18 + 48) + 16 * v14 + 8);

      v20 = *(*(v18 + 56) + 16 * v14 + 8);

      result = sub_1001E9EE0(v14, v18);
      *v5 = v18;
    }
  }

  return result;
}

uint64_t sub_1001DA66C(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = sub_100095274(&unk_1002AC8D0, &qword_10023F088);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v25 - v8;
  v10 = type metadata accessor for DKAPIUsageMetric();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1, v10) == 1)
  {
    sub_100095C84(a1, &unk_1002AC8D0, &qword_10023F088);
    v15 = *v3;
    v16 = sub_10016D898(a2);
    if (v17)
    {
      v18 = v16;
      v19 = *v3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v21 = *v3;
      v26 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1001EE604();
        v21 = v26;
      }

      (*(v11 + 32))(v9, *(v21 + 56) + *(v11 + 72) * v18, v10);
      sub_1001EA6B8(v18, v21);
      *v3 = v21;
      (*(v11 + 56))(v9, 0, 1, v10);
    }

    else
    {
      (*(v11 + 56))(v9, 1, 1, v10);
    }

    return sub_100095C84(v9, &unk_1002AC8D0, &qword_10023F088);
  }

  else
  {
    (*(v11 + 32))(v14, a1, v10);
    v22 = *v3;
    v23 = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v3;
    result = sub_1001EBCC4(v14, a2, v23);
    *v3 = v26;
  }

  return result;
}

uint64_t sub_1001DA8BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_100095274(&unk_1002A9C20, &qword_10023D210);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v19 - v9;
  v11 = type metadata accessor for BTDiscoveredDevice();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v15 + 48))(a1, 1) == 1)
  {
    sub_100095C84(a1, &unk_1002A9C20, &qword_10023D210);
    sub_1001E4E78(a2, a3, v10);

    return sub_100095C84(v10, &unk_1002A9C20, &qword_10023D210);
  }

  else
  {
    sub_1000E45C8(a1, v14);
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;
    sub_1001EC1D4(v14, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v20;
  }

  return result;
}

uint64_t sub_1001DAA7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    v8 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v3;
    sub_1001EC338(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v19;
  }

  else
  {
    v11 = *v3;
    v12 = sub_10016D4D0(a2, a3);
    LOBYTE(v11) = v13;

    if (v11)
    {
      v14 = *v4;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v4;
      v20 = *v4;
      if (!v15)
      {
        sub_1001EF2A8();
        v16 = v20;
      }

      v17 = *(*(v16 + 48) + 16 * v12 + 8);

      v18 = *(*(v16 + 56) + 8 * v12);

      result = sub_1001F7A34(v12, v16);
      *v4 = v16;
    }
  }

  return result;
}

void sub_1001DAB74(uint64_t a1, int a2)
{
  v3 = v2;
  if (a1)
  {
    v6 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v2;
    sub_1001EC648(a1, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v15;
  }

  else
  {
    v8 = *v2;
    v9 = sub_10016D548(a2);
    if (v10)
    {
      v11 = v9;
      v12 = *v3;
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v3;
      v16 = *v3;
      if (!v13)
      {
        sub_1001EE1AC();
        v14 = v16;
      }

      sub_1001EA3D0(v11, v14);
      *v3 = v14;
    }
  }
}

uint64_t sub_1001DAC34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    v8 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;
    sub_1001ECFE0(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v18;
  }

  else
  {
    v11 = *v3;
    v12 = sub_10016D4D0(a2, a3);
    LOBYTE(v11) = v13;

    if (v11)
    {
      v14 = *v4;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v4;
      v19 = *v4;
      if (!v15)
      {
        sub_1001EFDD0();
        v16 = v19;
      }

      v17 = *(*(v16 + 48) + 16 * v12 + 8);

      result = sub_1001F7A34(v12, v16);
      *v4 = v16;
    }
  }

  return result;
}

uint64_t sub_1001DAD2C(uint64_t a1, uint64_t a2)
{
  v5 = sub_100095274(&qword_1002ABF98, &unk_10023FF20);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v19 - v7;
  v9 = type metadata accessor for DockKitIDSInfo();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9) == 1)
  {
    sub_100095C84(a1, &qword_1002ABF98, &unk_10023FF20);
    sub_1001E552C(a2, v8);
    v14 = type metadata accessor for UUID();
    (*(*(v14 - 8) + 8))(a2, v14);
    return sub_100095C84(v8, &qword_1002ABF98, &unk_10023FF20);
  }

  else
  {
    (*(v10 + 32))(v13, a1, v9);
    v16 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    sub_1001ED48C(v13, a2, isUniquelyReferenced_nonNull_native);
    v18 = type metadata accessor for UUID();
    result = (*(*(v18 - 8) + 8))(a2, v18);
    *v2 = v20;
  }

  return result;
}

uint64_t sub_1001DAF74(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100095274(&qword_1002AC8E8, &qword_10023FF48);
    v1 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v1 = &_swiftEmptyDictionarySingleton;
  }

  v2 = 1 << *(a1 + 32);
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  else
  {
    v3 = -1;
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;
  v6 = (v1 + 8);

  v8 = 0;
  while (v4)
  {
LABEL_15:
    v11 = (v8 << 9) | (8 * __clz(__rbit64(v4)));
    v12 = *(*(a1 + 48) + v11);
    v25 = *(*(a1 + 56) + v11);
    v13 = v12;
    swift_dynamicCast();
    sub_1000FEA30((v26 + 8), v24);
    sub_1000FEA30(v24, v26);
    v14 = v1[5];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    Hasher.init(_seed:)();
    String.hash(into:)();
    v15 = Hasher._finalize()();

    v16 = -1 << *(v1 + 32);
    v17 = v15 & ~v16;
    v18 = v17 >> 6;
    if (((-1 << v17) & ~*&v6[8 * (v17 >> 6)]) == 0)
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
        v22 = *&v6[8 * v18];
        if (v22 != -1)
        {
          v9 = __clz(__rbit64(~v22)) + (v18 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v9 = __clz(__rbit64((-1 << v17) & ~*&v6[8 * (v17 >> 6)])) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    *&v6[(v9 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v9;
    v4 &= v4 - 1;
    *(v1[6] + 8 * v9) = v13;
    result = sub_1000FEA30(v26, (v1[7] + 32 * v9));
    ++v1[2];
  }

  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v10 >= v5)
    {

      return v1;
    }

    v4 = *(a1 + 64 + 8 * v10);
    ++v8;
    if (v4)
    {
      v8 = v10;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1001DB210(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100095274(&qword_1002AC8C0, &unk_100240060);
    v1 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v1 = &_swiftEmptyDictionarySingleton;
  }

  v2 = 1 << *(a1 + 32);
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  else
  {
    v3 = -1;
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;
  v6 = (v1 + 8);

  v8 = 0;
  while (v4)
  {
LABEL_15:
    v11 = (v8 << 9) | (8 * __clz(__rbit64(v4)));
    v12 = *(*(a1 + 48) + v11);
    v25 = *(*(a1 + 56) + v11);
    v13 = v12;

    sub_100095274(&qword_1002AC8C8, &qword_10023FF30);
    swift_dynamicCast();
    sub_1000FEA30((v26 + 8), v24);
    sub_1000FEA30(v24, v26);
    v14 = v1[5];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    Hasher.init(_seed:)();
    String.hash(into:)();
    v15 = Hasher._finalize()();

    v16 = -1 << *(v1 + 32);
    v17 = v15 & ~v16;
    v18 = v17 >> 6;
    if (((-1 << v17) & ~*&v6[8 * (v17 >> 6)]) == 0)
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
        v22 = *&v6[8 * v18];
        if (v22 != -1)
        {
          v9 = __clz(__rbit64(~v22)) + (v18 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v9 = __clz(__rbit64((-1 << v17) & ~*&v6[8 * (v17 >> 6)])) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    *&v6[(v9 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v9;
    v4 &= v4 - 1;
    *(v1[6] + 8 * v9) = v13;
    result = sub_1000FEA30(v26, (v1[7] + 32 * v9));
    ++v1[2];
  }

  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v10 >= v5)
    {

      return v1;
    }

    v4 = *(a1 + 64 + 8 * v10);
    ++v8;
    if (v4)
    {
      v8 = v10;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

unint64_t sub_1001DB4C4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100095274(&qword_1002AC898, &qword_10023FEF8);
    v2 = static _DictionaryStorage.allocate(capacity:)();
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
    v14 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v14 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v14);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v15 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v16 = v15 | (v14 << 6);
        v17 = (*(a1 + 48) + 16 * v16);
        v19 = *v17;
        v18 = v17[1];
        v25 = *(*(a1 + 56) + 8 * v16);

        sub_100095274(&qword_1002AC8A0, &qword_10023FF00);
        sub_100095274(&qword_1002AC8A8, &unk_10023FF08);
        swift_dynamicCast();
        result = sub_10016D4D0(v19, v18);
        if (v20)
        {
          v9 = (v2[6] + 16 * result);
          v10 = v9[1];
          *v9 = v19;
          v9[1] = v18;
          v11 = result;

          v12 = v2[7];
          v13 = *(v12 + 8 * v11);
          *(v12 + 8 * v11) = v26;

          v8 = v14;
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
          *v21 = v19;
          v21[1] = v18;
          *(v2[7] + 8 * result) = v26;
          v22 = v2[2];
          v23 = __OFADD__(v22, 1);
          v24 = v22 + 1;
          if (v23)
          {
            goto LABEL_21;
          }

          v2[2] = v24;
          v8 = v14;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v14 = v8;
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

uint64_t sub_1001DB748()
{
  v0 = type metadata accessor for Logger();
  sub_100093D84(v0, qword_1002AC810);
  sub_100093DE8(v0, qword_1002AC810);
  return Logger.init(subsystem:category:)();
}

id sub_1001DB7C8()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v30 = v1;
  v31 = v2;
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v29 = v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v5 = *(v28 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v28);
  v8 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for OS_dispatch_queue.Attributes();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v11 = type metadata accessor for DispatchQoS();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v27 = OBJC_IVAR____TtC14dockaccessoryd9dockDebug_logger;
  Logger.init(subsystem:category:)();
  v26 = OBJC_IVAR____TtC14dockaccessoryd9dockDebug_clientQueue;
  v13 = sub_100095B94(0, &qword_1002A6820, OS_dispatch_queue_ptr);
  v25[1] = "oryd20DebugServiceDelegate";
  v25[2] = v13;
  static DispatchQoS.unspecified.getter();
  v33 = _swiftEmptyArrayStorage;
  sub_1001E2DC4(&qword_1002A7110, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100095274(&unk_1002A6830, &unk_10023AB20);
  v14 = v0;
  sub_1000E4D54(&qword_1002A7120, &unk_1002A6830, &unk_10023AB20);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v5 + 104))(v8, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v28);
  v16 = v29;
  v15 = v30;
  v17 = v31;
  v18 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v19 = v27;
  *&v0[v26] = v18;
  (*(v17 + 16))(v16, &v0[v19], v15);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&_mh_execute_header, v20, v21, "debug interface open", v22, 2u);
  }

  (*(v17 + 8))(v16, v15);
  v23 = type metadata accessor for dockDebug();
  v32.receiver = v14;
  v32.super_class = v23;
  return objc_msgSendSuper2(&v32, "init");
}

void sub_1001DBD78(void *a1, int a2, void *aBlock, void (*a4)(void))
{
  v6 = _Block_copy(aBlock);
  _Block_copy(v6);
  v7 = a1;
  a4();
  _Block_release(v6);
  _Block_release(v6);
}

uint64_t sub_1001DBE0C(char **a1, uint64_t a2, SEL *a3)
{
  v24 = a2;
  v25 = a3;
  if (qword_1002A6780 != -1)
  {
LABEL_20:
    swift_once();
  }

  v3 = qword_1002B1CF0;
  sub_1001F1BBC(_swiftEmptyArrayStorage);

  v4 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__clientLock;
  v5 = *(v3 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__clientLock);

  os_unfair_lock_lock(v5 + 4);

  v6 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__notifyDebugClients;
  swift_beginAccess();
  v7 = *(v3 + v6);
  v8 = *(v3 + v4);

  os_unfair_lock_unlock(v8 + 4);

  v9 = 1 << *(v7 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(v7 + 64);
  v12 = (v9 + 63) >> 6;

  v13 = 0;
LABEL_5:
  if (v11)
  {
    goto LABEL_10;
  }

  while (1)
  {
LABEL_6:
    v14 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
      goto LABEL_20;
    }

    if (v14 >= v12)
    {
      break;
    }

    v11 = *(v7 + 64 + 8 * v14);
    ++v13;
    if (v11)
    {
      v13 = v14;
LABEL_10:
      while (1)
      {
        v15 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
        v16 = v15 | (v13 << 6);
        v27 = *(*(v7 + 48) + 4 * v16);
        v17 = *(*(v7 + 56) + 8 * v16);
        v18 = [v17 remoteObjectProxy];
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
        sub_100095274(&unk_1002AC8B0, &qword_10023FF18);
        if (swift_dynamicCast())
        {
          break;
        }

        if (!v11)
        {
          goto LABEL_6;
        }
      }

      v19 = *a1;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *a1 = v19;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v19 = sub_100102DE4(0, *(v19 + 2) + 1, 1, v19);
        *a1 = v19;
      }

      v22 = *(v19 + 2);
      v21 = *(v19 + 3);
      if (v22 >= v21 >> 1)
      {
        v19 = sub_100102DE4((v21 > 1), v22 + 1, 1, v19);
        *a1 = v19;
      }

      *(v19 + 2) = v22 + 1;
      *&v19[4 * v22 + 32] = v27;
      [v28 *v25];
      swift_unknownObjectRelease();

      goto LABEL_5;
    }
  }
}

void sub_1001DC0E8(void *a1, int a2, void *a3, void *aBlock, void (*a5)(id, id, void *))
{
  v8 = _Block_copy(aBlock);
  _Block_copy(v8);
  v9 = a3;
  v10 = a1;
  a5(v9, v10, v8);
  _Block_release(v8);
  _Block_release(v8);
}

uint64_t sub_1001DC194(char **a1, char a2, SEL *a3)
{
  if (qword_1002A6780 != -1)
  {
LABEL_20:
    swift_once();
  }

  v3 = qword_1002B1CF0;
  sub_1001F1BBC(_swiftEmptyArrayStorage);

  v4 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__clientLock;
  v5 = *(v3 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__clientLock);

  os_unfair_lock_lock(v5 + 4);

  v6 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__notifyDebugClients;
  swift_beginAccess();
  v7 = *(v3 + v6);
  v8 = *(v3 + v4);

  os_unfair_lock_unlock(v8 + 4);

  v9 = 1 << *(v7 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(v7 + 64);
  v12 = (v9 + 63) >> 6;

  v13 = 0;
LABEL_5:
  if (v11)
  {
    goto LABEL_10;
  }

  while (1)
  {
LABEL_6:
    v14 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
      goto LABEL_20;
    }

    if (v14 >= v12)
    {
      break;
    }

    v11 = *(v7 + 64 + 8 * v14);
    ++v13;
    if (v11)
    {
      v13 = v14;
LABEL_10:
      while (1)
      {
        v15 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
        v16 = v15 | (v13 << 6);
        v27 = *(*(v7 + 48) + 4 * v16);
        v17 = *(*(v7 + 56) + 8 * v16);
        v18 = [v17 remoteObjectProxy];
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
        sub_100095274(&unk_1002AC8B0, &qword_10023FF18);
        if (swift_dynamicCast())
        {
          break;
        }

        if (!v11)
        {
          goto LABEL_6;
        }
      }

      v19 = *a1;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *a1 = v19;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v19 = sub_100102DE4(0, *(v19 + 2) + 1, 1, v19);
        *a1 = v19;
      }

      v22 = *(v19 + 2);
      v21 = *(v19 + 3);
      if (v22 >= v21 >> 1)
      {
        v19 = sub_100102DE4((v21 > 1), v22 + 1, 1, v19);
        *a1 = v19;
      }

      *(v19 + 2) = v22 + 1;
      *&v19[4 * v22 + 32] = v27;
      [v28 *a3];
      swift_unknownObjectRelease();

      goto LABEL_5;
    }
  }
}

void sub_1001DC478(void *a1, int a2, uint64_t a3, void *aBlock, void (*a5)(uint64_t, id, void *))
{
  v8 = _Block_copy(aBlock);
  _Block_copy(v8);
  v9 = a1;
  a5(a3, v9, v8);
  _Block_release(v8);
  _Block_release(v8);
}

void sub_1001DC5E8(void *a1, int a2, void *aBlock, void (*a4)(void *))
{
  v6 = _Block_copy(aBlock);
  _Block_copy(v6);
  v7 = a1;
  a4(v6);
  _Block_release(v6);
  _Block_release(v6);
}

uint64_t type metadata accessor for dockDebug()
{
  result = qword_1002AC850;
  if (!qword_1002AC850)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001DD454(int a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v28 = a1;
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1002A67A8 != -1)
  {
    swift_once();
  }

  v13 = sub_100093DE8(v8, qword_1002AC810);
  (*(v9 + 16))(v12, v13, v8);

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v29[0] = v17;
    v29[1] = a2;
    *v16 = 67109378;
    *(v16 + 4) = v28;
    *(v16 + 8) = 2080;
    v29[2] = a3;

    sub_100095274(&unk_1002A6F20, &unk_10023C660);
    v18 = String.init<A>(describing:)();
    v20 = sub_1000952D4(v18, v19, v29);

    *(v16 + 10) = v20;
    _os_log_impl(&_mh_execute_header, v14, v15, a5, v16, 0x12u);
    sub_100095808(v17);
  }

  (*(v9 + 8))(v12, v8);
  if (qword_1002A6780 != -1)
  {
    swift_once();
  }

  v21 = qword_1002B1CF0;
  v22 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
  v23 = *(qword_1002B1CF0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

  os_unfair_lock_lock(v23 + 4);

  swift_beginAccess();
  v24 = sub_1001E4BFC(v28);
  swift_endAccess();

  v25 = *(v21 + v22);

  os_unfair_lock_unlock(v25 + 4);
}

id sub_1001DD808(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_1001DE700(void *a1)
{
  v92 = type metadata accessor for UUID();
  v2 = *(v92 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v92);
  v91 = &v79 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v90 = &v79 - v6;
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(v7 + 24) = 0xE000000000000000;
  v8 = [a1 services];
  if (!v8)
  {
LABEL_86:
    __break(1u);
  }

  v9 = v8;
  sub_100095B94(0, &qword_1002A7010, off_100271C78);
  v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v80 = v7;
  v84 = v10;
  v79 = v7 + 16;
  if (v10 >> 62)
  {
LABEL_83:
    v11 = _CocoaArrayWrapper.endIndex.getter();
    if (v11)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11)
    {
LABEL_4:
      v12 = 0;
      v86 = 0;
      v96 = v84 & 0xFFFFFFFFFFFFFF8;
      v97 = v84 & 0xC000000000000001;
      v95 = v84 + 32;
      v88 = (v2 + 8);
      v85 = v11;
      do
      {
        if (v97)
        {
          v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v12 >= *(v96 + 16))
          {
            goto LABEL_77;
          }

          v13 = *(v95 + 8 * v12);
        }

        v14 = v13;
        v15 = __OFADD__(v12++, 1);
        if (v15)
        {
          __break(1u);
LABEL_77:
          __break(1u);
LABEL_78:
          __break(1u);
LABEL_79:
          __break(1u);
LABEL_80:
          __break(1u);
LABEL_81:
          __break(1u);
LABEL_82:
          __break(1u);
          goto LABEL_83;
        }

        v16 = [v13 type];
        if (!v16)
        {
          __break(1u);
          goto LABEL_86;
        }

        v17 = v16;
        v18 = [objc_opt_self() UUIDWithString:v16];

        v19 = [v18 data];
        v20 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v22 = v21;

        sub_1001A36A0(12, v20, v22, v100);
        v24 = v100[0];
        v23 = v100[1];
        v25 = sub_100095274(&unk_1002A7B10, &unk_10023F3A0);
        *(&v102 + 1) = v25;
        v103 = sub_1000E4D54(&qword_1002A9C30, &unk_1002A7B10, &unk_10023F3A0);
        *&v101 = &off_100274C58;
        v26 = sub_1000A09E0(&v101, v25);
        v27 = *v26;
        v28 = *(*v26 + 16);
        if (v28)
        {
          if (v28 <= 0xE)
          {
            memset(__dst, 0, sizeof(__dst));
            v99 = v28;
            memcpy(__dst, (v27 + 32), v28);
            v34 = *__dst;
            v2 = v87 & 0xF00000000000000 | *&__dst[8] | ((*&__dst[12] | (v99 << 16)) << 32);
            v87 = v2;
          }

          else
          {
            v29 = type metadata accessor for __DataStorage();
            v30 = *(v29 + 48);
            v31 = *(v29 + 52);
            swift_allocObject();
            v32 = __DataStorage.init(bytes:length:)();
            v33 = v32;
            if (v28 >= 0x7FFFFFFF)
            {
              type metadata accessor for Data.RangeReference();
              v34 = swift_allocObject();
              *(v34 + 16) = 0;
              *(v34 + 24) = v28;
              v2 = v33 | 0x8000000000000000;
            }

            else
            {
              v34 = v28 << 32;
              v2 = v32 | 0x4000000000000000;
            }
          }
        }

        else
        {
          v34 = 0;
          v2 = 0xC000000000000000;
        }

        sub_100095808(&v101);
        v35 = v23 >> 62;
        v36 = v2 >> 62;
        if (v23 >> 62 == 3)
        {
          v37 = 0;
          if (!v24 && v23 == 0xC000000000000000 && v2 >> 62 == 3)
          {
            v37 = 0;
            if (!v34 && v2 == 0xC000000000000000)
            {
              v38 = 0;
              v39 = 0xC000000000000000;
              goto LABEL_49;
            }
          }
        }

        else if (v35)
        {
          if (v35 == 1)
          {
            LODWORD(v37) = HIDWORD(v24) - v24;
            if (__OFSUB__(HIDWORD(v24), v24))
            {
              goto LABEL_82;
            }

            v37 = v37;
          }

          else
          {
            v41 = *(v24 + 16);
            v40 = *(v24 + 24);
            v15 = __OFSUB__(v40, v41);
            v37 = v40 - v41;
            if (v15)
            {
              goto LABEL_81;
            }
          }
        }

        else
        {
          v37 = BYTE6(v23);
        }

        if (v36 > 1)
        {
          if (v36 != 2)
          {
            if (v37)
            {
              sub_1000A0D2C(v24, v23);

              continue;
            }

LABEL_48:
            sub_1000A0D2C(v34, v2);
            v38 = v24;
            v39 = v23;
LABEL_49:
            sub_1000A0D2C(v38, v39);
            goto LABEL_50;
          }

          v43 = *(v34 + 16);
          v42 = *(v34 + 24);
          v15 = __OFSUB__(v42, v43);
          v44 = v42 - v43;
          if (v15)
          {
            goto LABEL_79;
          }

          if (v37 != v44)
          {
            goto LABEL_5;
          }
        }

        else if (v36)
        {
          if (__OFSUB__(HIDWORD(v34), v34))
          {
            goto LABEL_80;
          }

          if (v37 != HIDWORD(v34) - v34)
          {
LABEL_5:
            sub_1000A0D2C(v34, v2);
            sub_1000A0D2C(v24, v23);
LABEL_6:

            continue;
          }
        }

        else if (v37 != BYTE6(v2))
        {
          goto LABEL_5;
        }

        if (v37 < 1)
        {
          goto LABEL_48;
        }

        sub_1000A0CD8(v34, v2);
        v45 = v86;
        v46 = sub_1001AC714(v24, v23, v34, v2);
        v86 = v45;
        sub_1000A0D2C(v34, v2);
        sub_1000A0D2C(v24, v23);
        if ((v46 & 1) == 0)
        {

          v11 = v85;
          continue;
        }

        v11 = v85;
LABEL_50:
        if (sub_10013C30C() < 0x300 || sub_10013C30C() > 0x320)
        {
          goto LABEL_6;
        }

        v94 = v18;
        if (qword_1002A6780 != -1)
        {
          swift_once();
        }

        v47 = qword_1002B1CF0;
        v48 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
        v49 = *(qword_1002B1CF0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

        os_unfair_lock_lock(v49 + 4);

        v50 = *(v47 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_connected);
        v2 = *(v47 + v48);
        v51 = v50;

        os_unfair_lock_unlock((v2 + 16));

        if (v50)
        {
          v52 = *(v47 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_manager);
          v83 = v51;
          v93 = dispatch thunk of DockCoreAccessory.info.getter();
          v81 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem;
          v53 = *&v52[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem];
          OS_dispatch_semaphore.wait()();

          v54 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessories;
          swift_beginAccess();
          v82 = v52;
          v55 = *&v52[v54];
          v2 = *(v55 + 16);

          v89 = v2;
          if (v2)
          {
            v56 = 0;
            v57 = v55 + 32;
            while (1)
            {
              if (v56 >= *(v55 + 16))
              {
                goto LABEL_78;
              }

              v58 = v14;
              sub_1000A097C(v57, v100);
              v59 = *(*sub_1000A09E0(v100, v100[3]) + 24);
              v60 = v90;
              DockCoreInfo.identifier.getter();

              v61 = v91;
              DockCoreInfo.identifier.getter();
              LOBYTE(v59) = static UUID.== infix(_:_:)();
              v62 = *v88;
              v63 = v61;
              v64 = v92;
              (*v88)(v63, v92);
              v62(v60, v64);
              if (v59)
              {
                break;
              }

              ++v56;
              sub_100095808(v100);
              v57 += 40;
              v14 = v58;
              v2 = v94;
              if (v89 == v56)
              {
                goto LABEL_64;
              }
            }

            v2 = v82;
            v67 = *&v82[v81];
            OS_dispatch_semaphore.signal()();

            sub_1000A097C(v100, &v101);
            sub_100095808(v100);
            v11 = v85;
            if (*(&v102 + 1))
            {
              v2 = sub_100095274(&unk_1002A7A90, &unk_10023C960);
              type metadata accessor for DaemonAccessory();
              if (swift_dynamicCast())
              {
                v2 = v100[0];
                sub_100095274(&qword_1002AC8E0, &qword_10023FF38);
                v68 = swift_allocBox();
                v70 = v69;
                v71 = type metadata accessor for ComponentType();
                (*(*(v71 - 8) + 56))(v70, 1, 1, v71);
                if (qword_1002A6758 != -1)
                {
                  swift_once();
                }

                v72 = qword_1002B1C70;
                v73 = v80;

                v74 = v94;
                sub_1001AD874(v72, v94, v2, v73, v68);

                if (qword_1002A6760 != -1)
                {
                  swift_once();
                }

                v75 = qword_1002B1C78;

                sub_1001AD8E8(v75, v74, v2, v73, v68);
              }

              else
              {
              }

              continue;
            }
          }

          else
          {
            v2 = v94;
LABEL_64:

            v65 = v82;
            v66 = *&v82[v81];
            OS_dispatch_semaphore.signal()();

            v103 = 0;
            v101 = 0u;
            v102 = 0u;
            v11 = v85;
          }

          sub_100095C84(&v101, &unk_1002A6F40, &unk_10023BE90);
        }

        else
        {

          v11 = v85;
        }
      }

      while (v12 != v11);
    }
  }

  swift_beginAccess();
  v76 = *(v80 + 16);
  v77 = *(v80 + 24);

  return v76;
}

void sub_1001DF270()
{
  v0 = type metadata accessor for UUID();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v5 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v58 - v6;
  if (qword_1002A6780 != -1)
  {
    goto LABEL_23;
  }

  while (1)
  {
    v8 = qword_1002B1CF0;
    v9 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
    v10 = *(qword_1002B1CF0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

    os_unfair_lock_lock(v10 + 4);

    v11 = *(v8 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_connected);
    v12 = *(v8 + v9);
    v13 = v11;

    os_unfair_lock_unlock(v12 + 4);

    if (!v11)
    {
      return;
    }

    v14 = *(v8 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_manager);
    v58 = v13;
    v61 = dispatch thunk of DockCoreAccessory.info.getter();
    v59 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem;
    v15 = *&v14[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem];
    OS_dispatch_semaphore.wait()();

    v16 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessories;
    swift_beginAccess();
    v60 = v14;
    v17 = *&v14[v16];
    v18 = *(v17 + 16);

    if (!v18)
    {
      break;
    }

    v19 = 0;
    v20 = v1;
    v1 = v17 + 32;
    v21 = (v20 + 8);
    while (v19 < *(v17 + 16))
    {
      sub_1000A097C(v1, &v62);
      v22 = *(*sub_1000A09E0(&v62, v63) + 24);
      DockCoreInfo.identifier.getter();

      DockCoreInfo.identifier.getter();
      LOBYTE(v22) = static UUID.== infix(_:_:)();
      v23 = *v21;
      (*v21)(v5, v0);
      v23(v7, v0);
      if (v22)
      {

        v24 = v60;
        v26 = *&v60[v59];
        OS_dispatch_semaphore.signal()();

        sub_1000A097C(&v62, &v64);
        sub_100095808(&v62._countAndFlagsBits);
        goto LABEL_10;
      }

      ++v19;
      sub_100095808(&v62._countAndFlagsBits);
      v1 += 40;
      if (v18 == v19)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_23:
    swift_once();
  }

LABEL_8:

  v24 = v60;
  v25 = *&v60[v59];
  OS_dispatch_semaphore.signal()();

  v66 = 0;
  v64 = 0u;
  v65 = 0u;
LABEL_10:

  v27 = v58;
  if (!*(&v65 + 1))
  {

    sub_100095C84(&v64, &unk_1002A6F40, &unk_10023BE90);
    return;
  }

  sub_100095274(&unk_1002A7A90, &unk_10023C960);
  type metadata accessor for DaemonAccessory();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_20:

    return;
  }

  countAndFlagsBits = v62._countAndFlagsBits;
  v29 = *(v62._countAndFlagsBits + 32);
  if (!v29 || (objc_opt_self(), (v30 = swift_dynamicCastObjCClass()) == 0))
  {

    goto LABEL_20;
  }

  v31 = v30;
  v32 = *(countAndFlagsBits + 24);
  v33 = v29;
  v34 = [v32 description];
  v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v37 = v36;

  *&v64 = v35;
  *(&v64 + 1) = v37;
  v38._countAndFlagsBits = 10;
  v38._object = 0xE100000000000000;
  String.append(_:)(v38);
  v62._countAndFlagsBits = 0;
  v62._object = 0xE000000000000000;
  v39 = v33;
  v40 = [v31 primaryAccessory];
  if (v40)
  {
    v41 = v40;
    v42 = [v40 description];

    v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v45 = v44;

    v46._countAndFlagsBits = v43;
    v46._object = v45;
    String.append(_:)(v46);

    String.append(_:)(v62);

    v47 = [v31 primaryAccessory];
    if (v47)
    {
      v48 = v47;
      v49 = sub_1001DD864();
      v51 = v50;

      v52._countAndFlagsBits = v49;
      v52._object = v51;
      String.append(_:)(v52);

      v53 = [v31 primaryAccessory];

      if (v53)
      {
        v54 = sub_1001DE700(v53);
        v56 = v55;

        v57._countAndFlagsBits = v54;
        v57._object = v56;
        String.append(_:)(v57);

        return;
      }

      goto LABEL_26;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_26:
  __break(1u);
}

uint64_t sub_1001DF7DC(int a1, char **a2)
{
  if (!*(*a2 + 2) || (sub_10016D4D0(0x6F69746175746361, 0xE90000000000006ELL), v5 = *a2, (v6 & 1) == 0))
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v22 = *a2;
    *a2 = 0x8000000000000000;
    sub_1001ED6A4(_swiftEmptyArrayStorage, 0x6F69746175746361, 0xE90000000000006ELL, isUniquelyReferenced_nonNull_native);
    *a2 = v22;
  }

  v23 = &type metadata for Int32;
  LODWORD(v22) = a1;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v9 = *a2;
  v21 = *a2;
  *a2 = 0x8000000000000000;
  v11 = sub_10016D4D0(0x6F69746175746361, 0xE90000000000006ELL);
  v12 = *(v9 + 2);
  v13 = (v10 & 1) == 0;
  v14 = v12 + v13;
  if (__OFADD__(v12, v13))
  {
    __break(1u);
LABEL_16:
    v9 = sub_100103664(0, *(v9 + 2) + 1, 1, v9);
    goto LABEL_12;
  }

  v15 = v10;
  if (*(v9 + 3) >= v14)
  {
    if (v8)
    {
      if ((v10 & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    else
    {
      sub_1001F02A0();
      if ((v15 & 1) == 0)
      {
        goto LABEL_18;
      }
    }
  }

  else
  {
    sub_1001E97E0(v14, v8);
    v16 = sub_10016D4D0(0x6F69746175746361, 0xE90000000000006ELL);
    if ((v15 & 1) != (v17 & 1))
    {
LABEL_19:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }

    v11 = v16;
    if ((v15 & 1) == 0)
    {
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }
  }

  v2 = v21;
  v9 = *(*(v21 + 7) + 8 * v11);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_12:
  v19 = *(v9 + 2);
  v18 = *(v9 + 3);
  if (v19 >= v18 >> 1)
  {
    v9 = sub_100103664((v18 > 1), v19 + 1, 1, v9);
  }

  *(v9 + 2) = v19 + 1;
  result = sub_1000FEA30(&v22, &v9[32 * v19 + 32]);
  *(*(v2 + 7) + 8 * v11) = v9;
  *a2 = v2;
  return result;
}

void sub_1001DF9E0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v122 = a2;
  v123 = a4;
  v125 = a3;
  v5 = type metadata accessor for Logger();
  v121 = *(v5 - 8);
  v6 = *(v121 + 64);
  v7 = __chkstk_darwin(v5);
  v112 = &v104 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v111 = &v104 - v10;
  __chkstk_darwin(v9);
  v124 = &v104 - v11;
  v12 = sub_100095274(&unk_1002A6F30, &unk_10023C4D0);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12 - 8);
  v120 = &v104 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v115 = &v104 - v17;
  v18 = __chkstk_darwin(v16);
  v20 = &v104 - v19;
  v21 = __chkstk_darwin(v18);
  v23 = &v104 - v22;
  v24 = __chkstk_darwin(v21);
  v26 = &v104 - v25;
  __chkstk_darwin(v24);
  v28 = &v104 - v27;
  v29 = type metadata accessor for Errors();
  v30 = *(v29 - 8);
  v31 = *(v30 + 56);
  v31(v28, 1, 1, v29);
  if (!a1)
  {
    sub_100095C84(v28, &unk_1002A6F30, &unk_10023C4D0);
    *v26 = 0xD000000000000012;
    *(v26 + 1) = 0x800000010022F110;
    (*(v30 + 104))(v26, enum case for Errors.NotFound(_:), v29);
    v31(v26, 0, 1, v29);
    sub_1000A089C(v26, v28);
    sub_1000B5150(v28, v23, &unk_1002A6F30, &unk_10023C4D0);
    if ((*(v30 + 48))(v23, 1, v29) == 1)
    {
      sub_100095C84(v23, &unk_1002A6F30, &unk_10023C4D0);
      v50 = 0;
    }

    else
    {
      sub_100095B94(0, &qword_1002A92B0, NSError_ptr);
      swift_dynamicCast();
      v50 = v126[0];
    }

    (*(v123 + 16))(v123, 0, v50);
    goto LABEL_27;
  }

  v113 = v31;
  v114 = v30 + 56;
  v116 = v30;
  v117 = v29;
  v32 = v121;
  v33 = *(v121 + 16);
  v107 = OBJC_IVAR____TtC14dockaccessoryd9dockDebug_logger;
  v108 = v33;
  v34 = a1;
  v109 = v121 + 16;
  v110 = v20;
  v33(v124, v125 + OBJC_IVAR____TtC14dockaccessoryd9dockDebug_logger, v5);
  v35 = a1;
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.default.getter();
  v38 = os_log_type_enabled(v36, v37);
  v39 = v5;
  v118 = v28;
  v119 = v35;
  v106 = v34;
  if (v38)
  {
    v40 = swift_slowAlloc();
    v41 = v32;
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v105 = v39;
    v44 = v43;
    v126[0] = v43;
    *v40 = 138412546;
    *(v40 + 4) = v35;
    *v42 = v34;
    *(v40 + 12) = 2080;
    v45 = v35;
    v46 = DockState.description.getter();
    v48 = sub_1000952D4(v46, v47, v126);

    *(v40 + 14) = v48;
    _os_log_impl(&_mh_execute_header, v36, v37, "Setting %@ state to d=%s", v40, 0x16u);
    sub_100095C84(v42, &unk_1002A6F60, &unk_10023C4E0);

    sub_100095808(v44);
    v39 = v105;

    v49 = v41;
  }

  else
  {

    v49 = v32;
  }

  v51 = *(v49 + 8);
  v51(v124, v39);
  v52 = v125;
  if (qword_1002A6780 != -1)
  {
    swift_once();
  }

  v53 = *(qword_1002B1CF0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_docked);
  v54 = v119;
  if (v53)
  {
    sub_100095B94(0, &qword_1002A7270, NSObject_ptr);
    v55 = v39;
    v56 = v53;
    v57 = dispatch thunk of DockCoreAccessory.info.getter();
    static NSObject.== infix(_:_:)();

    v39 = v55;
  }

  v58 = sub_1001884E4();
  if (!v58)
  {
LABEL_21:
    v28 = v118;
    sub_100095C84(v118, &unk_1002A6F30, &unk_10023C4D0);
    *v26 = 0xD000000000000013;
    *(v26 + 1) = 0x8000000100231F30;
    v72 = v116;
    v71 = v117;
    (*(v116 + 104))(v26, enum case for Errors.NotFound(_:), v117);
    v113(v26, 0, 1, v71);
    sub_1000A089C(v26, v28);
    v73 = v120;
    sub_1000B5150(v28, v120, &unk_1002A6F30, &unk_10023C4D0);
    if ((*(v72 + 48))(v73, 1, v71) == 1)
    {
      sub_100095C84(v73, &unk_1002A6F30, &unk_10023C4D0);
      v50 = 0;
    }

    else
    {
      sub_100095B94(0, &qword_1002A92B0, NSError_ptr);
      swift_dynamicCast();
      v50 = v126[0];
    }

    (*(v123 + 16))(v123, 0, v50);

LABEL_27:
    v74 = v28;
LABEL_28:
    sub_100095C84(v74, &unk_1002A6F30, &unk_10023C4D0);
    return;
  }

  v59 = v58;
  if ((sub_100198D24() & 1) == 0)
  {

    goto LABEL_21;
  }

  type metadata accessor for DockCoreManager();
  if ((static DockCoreManager.debugAllowed.getter() & 1) == 0 || (DockCoreInfo.type.getter(), v60 = DockCoreAccessoryType.rawValue.getter(), v60 != DockCoreAccessoryType.rawValue.getter()))
  {
    v75 = v118;
    v76 = v115;
    sub_1000B5150(v118, v115, &unk_1002A6F30, &unk_10023C4D0);
    if ((*(v116 + 48))(v76, 1, v117) == 1)
    {
      sub_100095C84(v76, &unk_1002A6F30, &unk_10023C4D0);
      v77 = 0;
    }

    else
    {
      sub_100095B94(0, &qword_1002A92B0, NSError_ptr);
      swift_dynamicCast();
      v77 = v126[0];
    }

    (*(v123 + 16))(v123, 1, v77);

    v78 = dispatch thunk of DockCoreAccessory.info.getter();
    sub_100118354(v78);

    v74 = v75;
    goto LABEL_28;
  }

  v61 = DockState.rawValue.getter();
  v62 = DockState.rawValue.getter();
  v124 = v59;
  if (v61 == v62 && (v63 = DockState.rawValue.getter(), v63 != DockState.rawValue.getter()))
  {
    v79 = v111;
    v80 = v39;
    v108(v111, v52 + v107, v39);
    v81 = Logger.logObject.getter();
    v82 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v81, v82))
    {
      v83 = swift_slowAlloc();
      *v83 = 0;
      _os_log_impl(&_mh_execute_header, v81, v82, "Mock device - not scanning, immediately marking as connected", v83, 2u);
    }

    v51(v79, v80);
    v84 = v54;
    sub_100189054(v106);
    v66 = 0;
  }

  else
  {
    v64 = DockState.rawValue.getter();
    if (v64 != DockState.rawValue.getter() || (v65 = DockState.rawValue.getter(), v65 == DockState.rawValue.getter()))
    {
      v66 = 0;
      v67 = v117;
      v68 = v118;
      v69 = v123;
      v70 = v116;
      goto LABEL_41;
    }

    v85 = v112;
    v108(v112, v52 + v107, v39);
    v86 = v39;
    v87 = v59;
    v88 = Logger.logObject.getter();
    v89 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v88, v89))
    {
      v90 = swift_slowAlloc();
      v91 = swift_slowAlloc();
      v105 = v86;
      v92 = v91;
      v126[0] = v91;
      *v90 = 136315138;
      v93 = dispatch thunk of DockCoreAccessory.info.getter();
      v94 = DockCoreInfo.name.getter();
      v96 = v95;

      v97 = sub_1000952D4(v94, v96, v126);

      *(v90 + 4) = v97;
      _os_log_impl(&_mh_execute_header, v88, v89, "Tearing down debug accessory for %s", v90, 0xCu);
      sub_100095808(v92);

      v54 = v119;

      v98 = v112;
      v99 = v105;
    }

    else
    {

      v98 = v85;
      v99 = v86;
    }

    v51(v98, v99);
    sub_100189054(0);
    v84 = dispatch thunk of DockCoreAccessory.info.getter();
    sub_100197D90();
    v66 = 1;
  }

  v67 = v117;
  v68 = v118;
  v69 = v123;
  v70 = v116;

LABEL_41:
  v100 = v110;
  sub_1000B5150(v68, v110, &unk_1002A6F30, &unk_10023C4D0);
  if ((*(v70 + 48))(v100, 1, v67) == 1)
  {
    sub_100095C84(v100, &unk_1002A6F30, &unk_10023C4D0);
    v101 = 0;
  }

  else
  {
    sub_100095B94(0, &qword_1002A92B0, NSError_ptr);
    swift_dynamicCast();
    v101 = v126[0];
  }

  (*(v69 + 16))(v69, 1, v101);

  if (v66)
  {
    v102 = v124;
    v103 = dispatch thunk of DockCoreAccessory.info.getter();
    sub_100118354(v103);

    v74 = v68;
    goto LABEL_28;
  }

  sub_100095C84(v68, &unk_1002A6F30, &unk_10023C4D0);
}

void sub_1001E0674(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Errors();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = (&v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (!a1)
  {
    *v10 = 0xD000000000000012;
    v10[1] = 0x800000010022F110;
    (*(v7 + 104))(v10, enum case for Errors.NotFound(_:), v6);
    sub_1001E2DC4(&qword_1002A6F50, &type metadata accessor for Errors);
    swift_allocError();
    (*(v7 + 16))(v23, v10, v6);
    v24 = _convertErrorToNSError(_:)();
    (*(a3 + 16))(a3, 0, v24);

    (*(v7 + 8))(v10, v6);

    return;
  }

  v11 = a1;
  v12 = AccessorySystemEvent.header.getter();
  type metadata accessor for AccessorySystemEvent();
  v13 = &unk_1002B1000;
  if (v12 == static AccessorySystemEvent.kHeaderCameraShutter.getter())
  {
    v14 = AccessorySystemEvent.payload.getter();
    if (v14 == static AccessorySystemEvent.kHeaderEventRelease.getter())
    {
      if (qword_1002A6780 != -1)
      {
        swift_once();
      }

      v15 = qword_1002B1CF0;
      v37 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
      v16 = *(qword_1002B1CF0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

      os_unfair_lock_lock(v16 + 4);

      v17 = *(v15 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_foregroundAppIDs);
      v18 = *(v17 + 16);
      if (v18)
      {
        v35 = v11;
        v36 = a3;
        v13 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_dockKitApps;

        swift_beginAccess();
        v11 = 0;
        v19 = (v17 + 40);
        while (v11 < *(v17 + 16))
        {
          if (*(*(v13 + v15) + 16))
          {
            v21 = *(v19 - 1);
            v20 = *v19;

            sub_10016D4D0(v21, v20);
            a3 = v22;

            if (a3)
            {

              v11 = v35;
              a3 = v36;
              v13 = &unk_1002B1000;
              goto LABEL_17;
            }
          }

          ++v11;
          v19 += 2;
          if (v18 == v11)
          {

            v11 = v35;
            a3 = v36;
            v13 = &unk_1002B1000;
            goto LABEL_15;
          }
        }

        __break(1u);
        goto LABEL_24;
      }

LABEL_15:
      v25 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_dockKitApps;
      swift_beginAccess();
      v26 = *(v15 + v25);

      v27 = cameracaptureIdentifier.getter();
      if (*(v26 + 16))
      {
        sub_10016D4D0(v27, v28);
        v30 = v29;

        if (v30)
        {
LABEL_17:
          v31 = *(v15 + v37);

          os_unfair_lock_unlock(v31 + 4);

          goto LABEL_18;
        }
      }

      else
      {
      }

      v33 = *(v15 + v37);

      os_unfair_lock_unlock(v33 + 4);

      sub_100187818();
      goto LABEL_20;
    }
  }

LABEL_18:
  if (qword_1002A6780 != -1)
  {
LABEL_24:
    swift_once();
  }

  v32 = *(*(v13[414] + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_manager) + OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_server);
  sub_1001688C0(v11, a2);

LABEL_20:
  (*(a3 + 16))(a3, 1, 0);
}

void sub_1001E0AFC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Errors();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = (&v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v37 - v15;
  v17 = [objc_opt_self() currentConnection];
  if (v17)
  {
    v18 = v17;
    v19 = [v17 processIdentifier];
    (*(v10 + 16))(v16, a1 + OBJC_IVAR____TtC14dockaccessoryd9dockDebug_logger, v9);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 67109120;
      *(v22 + 4) = v19;
      _os_log_impl(&_mh_execute_header, v20, v21, "Client %d registering for debug notifications", v22, 8u);
    }

    (*(v10 + 8))(v16, v9);
    if (qword_1002A6780 != -1)
    {
      swift_once();
    }

    v23 = qword_1002B1CF0;
    v24 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
    v25 = *(qword_1002B1CF0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);
    v26 = v18;

    os_unfair_lock_lock(v25 + 4);

    v27 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__notifyDebugClients;
    swift_beginAccess();
    v28 = v26;
    v29 = *(v23 + v27);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v37 = *(v23 + v27);
    *(v23 + v27) = 0x8000000000000000;
    sub_1001EC648(v28, v19, isUniquelyReferenced_nonNull_native);
    *(v23 + v27) = v37;
    swift_endAccess();
    v31 = *(v23 + v24);

    os_unfair_lock_unlock(v31 + 4);

    (*(a2 + 16))(a2, 1, 0);
  }

  else
  {
    (*(v10 + 16))(v14, a1 + OBJC_IVAR____TtC14dockaccessoryd9dockDebug_logger, v9);
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&_mh_execute_header, v32, v33, "Failed fetching current NSXPCConnection, cannot construct client", v34, 2u);
    }

    (*(v10 + 8))(v14, v9);
    *v8 = 0xD000000000000029;
    v8[1] = 0x800000010022F170;
    (*(v5 + 104))(v8, enum case for Errors.XPCNil(_:), v4);
    sub_1001E2DC4(&qword_1002A6F50, &type metadata accessor for Errors);
    swift_allocError();
    (*(v5 + 16))(v35, v8, v4);
    v36 = _convertErrorToNSError(_:)();
    (*(a2 + 16))(a2, 0, v36);

    (*(v5 + 8))(v8, v4);
  }
}

void sub_1001E0FFC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Errors();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = (&v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v33 - v15;
  v17 = [objc_opt_self() currentConnection];
  if (v17)
  {
    v18 = v17;
    v19 = [v17 processIdentifier];
    (*(v10 + 16))(v16, a1 + OBJC_IVAR____TtC14dockaccessoryd9dockDebug_logger, v9);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 67109120;
      *(v22 + 4) = v19;
      _os_log_impl(&_mh_execute_header, v20, v21, "Client %d de-registering for debug notifications", v22, 8u);
    }

    (*(v10 + 8))(v16, v9);
    if (qword_1002A6780 != -1)
    {
      swift_once();
    }

    v23 = qword_1002B1CF0;
    v24 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
    v25 = *(qword_1002B1CF0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

    os_unfair_lock_lock(v25 + 4);

    swift_beginAccess();
    v26 = sub_1001E4BFC(v19);
    swift_endAccess();

    v27 = *(v23 + v24);

    os_unfair_lock_unlock(v27 + 4);

    (*(a2 + 16))(a2, 1, 0);
  }

  else
  {
    (*(v10 + 16))(v14, a1 + OBJC_IVAR____TtC14dockaccessoryd9dockDebug_logger, v9);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v28, v29, "Failed fetching current NSXPCConnection, cannot construct client", v30, 2u);
    }

    (*(v10 + 8))(v14, v9);
    *v8 = 0xD000000000000029;
    v8[1] = 0x800000010022F170;
    (*(v5 + 104))(v8, enum case for Errors.XPCNil(_:), v4);
    sub_1001E2DC4(&qword_1002A6F50, &type metadata accessor for Errors);
    swift_allocError();
    (*(v5 + 16))(v31, v8, v4);
    v32 = _convertErrorToNSError(_:)();
    (*(a2 + 16))(a2, 0, v32);

    (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_1001E14C8(void *a1, uint64_t a2, uint64_t a3)
{
  v14 = _swiftEmptyArrayStorage;
  v5 = *(a2 + OBJC_IVAR____TtC14dockaccessoryd9dockDebug_clientQueue);
  v6 = swift_allocObject();
  *(v6 + 16) = &v14;
  *(v6 + 24) = a1;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1001E2DA0;
  *(v7 + 24) = v6;
  aBlock[4] = sub_1001E2EE4;
  aBlock[5] = v7;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001DB720;
  aBlock[3] = &unk_10027B628;
  v8 = _Block_copy(aBlock);
  v9 = v5;
  v10 = a1;

  dispatch_sync(v9, v8);

  _Block_release(v8);
  LOBYTE(a1) = swift_isEscapingClosureAtFileLocation();

  if (a1)
  {
    __break(1u);
  }

  else
  {

    isa = Array._bridgeToObjectiveC()().super.isa;
    (*(a3 + 16))(a3, isa, 0);
  }

  return result;
}

uint64_t sub_1001E1694(void *a1, uint64_t a2, uint64_t a3)
{
  v14 = _swiftEmptyArrayStorage;
  v5 = *(a2 + OBJC_IVAR____TtC14dockaccessoryd9dockDebug_clientQueue);
  v6 = swift_allocObject();
  *(v6 + 16) = &v14;
  *(v6 + 24) = a1;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1001E2D7C;
  *(v7 + 24) = v6;
  aBlock[4] = sub_1001E2EE4;
  aBlock[5] = v7;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001DB720;
  aBlock[3] = &unk_10027B5B0;
  v8 = _Block_copy(aBlock);
  v9 = v5;
  v10 = a1;

  dispatch_sync(v9, v8);

  _Block_release(v8);
  LOBYTE(a1) = swift_isEscapingClosureAtFileLocation();

  if (a1)
  {
    __break(1u);
  }

  else
  {

    isa = Array._bridgeToObjectiveC()().super.isa;
    (*(a3 + 16))(a3, isa, 0);
  }

  return result;
}

uint64_t sub_1001E1860(char a1, uint64_t a2, uint64_t a3)
{
  v13 = _swiftEmptyArrayStorage;
  v5 = *(a2 + OBJC_IVAR____TtC14dockaccessoryd9dockDebug_clientQueue);
  v6 = swift_allocObject();
  *(v6 + 16) = &v13;
  *(v6 + 24) = a1;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1001E2D1C;
  *(v7 + 24) = v6;
  aBlock[4] = sub_1001E2EE4;
  aBlock[5] = v7;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001DB720;
  aBlock[3] = &unk_10027B538;
  v8 = _Block_copy(aBlock);
  v9 = v5;

  dispatch_sync(v9, v8);

  _Block_release(v8);
  LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

  if (v8)
  {
    __break(1u);
  }

  else
  {

    isa = Array._bridgeToObjectiveC()().super.isa;
    (*(a3 + 16))(a3, isa, 0);
  }

  return result;
}

uint64_t sub_1001E1A24(char a1, uint64_t a2, uint64_t a3)
{
  v13 = _swiftEmptyArrayStorage;
  v5 = *(a2 + OBJC_IVAR____TtC14dockaccessoryd9dockDebug_clientQueue);
  v6 = swift_allocObject();
  *(v6 + 16) = &v13;
  *(v6 + 24) = a1;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1001E2CBC;
  *(v7 + 24) = v6;
  aBlock[4] = sub_1001E2CF4;
  aBlock[5] = v7;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001DB720;
  aBlock[3] = &unk_10027B4C0;
  v8 = _Block_copy(aBlock);
  v9 = v5;

  dispatch_sync(v9, v8);

  _Block_release(v8);
  LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

  if (v8)
  {
    __break(1u);
  }

  else
  {

    isa = Array._bridgeToObjectiveC()().super.isa;
    (*(a3 + 16))(a3, isa, 0);
  }

  return result;
}

void sub_1001E1BE8(void (**a1)(void, void, void))
{
  v78 = sub_1001F3FAC(_swiftEmptyArrayStorage);
  if (qword_1002A6780 != -1)
  {
    goto LABEL_57;
  }

  while (1)
  {
    v1 = qword_1002B1CF0;
    sub_1001946C0(qword_1002B1CF0, &v78);
    sub_1001F1BBC(_swiftEmptyArrayStorage);

    v2 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__clientLock;
    v3 = *(v1 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__clientLock);

    os_unfair_lock_lock(v3 + 4);

    v4 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__notifyDebugClients;
    swift_beginAccess();
    v5 = *(v1 + v4);
    v70 = v2;
    v71 = v1;
    v6 = *(v1 + v2);

    os_unfair_lock_unlock(v6 + 4);

    v7 = 0;
    v9 = v5 + 64;
    v8 = *(v5 + 64);
    v72 = v5;
    v10 = 1 << *(v5 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & v8;
    v13 = (v10 + 63) >> 6;
    if ((v11 & v8) != 0)
    {
      break;
    }

LABEL_5:
    while (1)
    {
      v14 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      if (v14 >= v13)
      {
        goto LABEL_27;
      }

      v12 = *(v9 + 8 * v14);
      ++v7;
      if (v12)
      {
        v7 = v14;
        goto LABEL_9;
      }
    }

    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    swift_once();
  }

  while (1)
  {
LABEL_9:
    v15 = __clz(__rbit64(v12)) | (v7 << 6);
    v16 = *(*(v72 + 48) + 4 * v15);
    v17 = v78;
    v18 = *(v78 + 2);
    v19 = *(*(v72 + 56) + 8 * v15);
    if (!v18 || (sub_10016D4D0(0x6775626564, 0xE500000000000000), (v20 & 1) == 0))
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v76 = v17;
      sub_1001ED6A4(_swiftEmptyArrayStorage, 0x6775626564, 0xE500000000000000, isUniquelyReferenced_nonNull_native);
      v17 = v76;
      v78 = v76;
    }

    v77 = &type metadata for Int32;
    LODWORD(v76) = v16;
    v22 = v19;
    v23 = swift_isUniquelyReferenced_nonNull_native();
    v75 = v17;
    v25 = sub_10016D4D0(0x6775626564, 0xE500000000000000);
    v26 = *(v17 + 2);
    v27 = (v24 & 1) == 0;
    v28 = v26 + v27;
    if (__OFADD__(v26, v27))
    {
      goto LABEL_55;
    }

    v29 = v24;
    if (*(v17 + 3) < v28)
    {
      break;
    }

    if (v23)
    {
      if ((v24 & 1) == 0)
      {
        goto LABEL_26;
      }
    }

    else
    {
      sub_1001F02A0();
      if ((v29 & 1) == 0)
      {
LABEL_26:
        __break(1u);
LABEL_27:

        sub_1001F1BBC(_swiftEmptyArrayStorage);

        v35 = *(v71 + v70);

        os_unfair_lock_lock(v35 + 4);

        v36 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__notifySensorClients;
        swift_beginAccess();
        v37 = *(v71 + v36);
        v38 = *(v71 + v70);

        os_unfair_lock_unlock(v38 + 4);

        v39 = 0;
        v41 = v37 + 64;
        v40 = *(v37 + 64);
        v73 = v37;
        v42 = 1 << *(v37 + 32);
        v43 = -1;
        if (v42 < 64)
        {
          v43 = ~(-1 << v42);
        }

        v44 = v43 & v40;
        v45 = (v42 + 63) >> 6;
        if ((v43 & v40) == 0)
        {
LABEL_30:
          while (1)
          {
            v46 = v39 + 1;
            if (__OFADD__(v39, 1))
            {
              goto LABEL_54;
            }

            if (v46 >= v45)
            {
              goto LABEL_52;
            }

            v44 = *(v41 + 8 * v46);
            ++v39;
            if (v44)
            {
              v39 = v46;
              goto LABEL_34;
            }
          }
        }

        while (1)
        {
LABEL_34:
          v47 = __clz(__rbit64(v44)) | (v39 << 6);
          v48 = *(*(v73 + 48) + 4 * v47);
          v49 = v78;
          v50 = *(v78 + 2);
          v51 = *(*(v73 + 56) + 8 * v47);
          if (!v50 || (sub_10016D4D0(0x73726F736E6573, 0xE700000000000000), (v52 & 1) == 0))
          {
            v53 = swift_isUniquelyReferenced_nonNull_native();
            *&v76 = v49;
            sub_1001ED6A4(_swiftEmptyArrayStorage, 0x73726F736E6573, 0xE700000000000000, v53);
            v49 = v76;
            v78 = v76;
          }

          v77 = &type metadata for Int32;
          LODWORD(v76) = v48;
          v54 = v51;
          v55 = swift_isUniquelyReferenced_nonNull_native();
          v74 = v49;
          v57 = sub_10016D4D0(0x73726F736E6573, 0xE700000000000000);
          v58 = *(v49 + 2);
          v59 = (v56 & 1) == 0;
          v60 = v58 + v59;
          if (__OFADD__(v58, v59))
          {
            goto LABEL_56;
          }

          v61 = v56;
          if (*(v49 + 3) >= v60)
          {
            if (v55)
            {
              if ((v56 & 1) == 0)
              {
                goto LABEL_51;
              }
            }

            else
            {
              sub_1001F02A0();
              if ((v61 & 1) == 0)
              {
                goto LABEL_51;
              }
            }
          }

          else
          {
            sub_1001E97E0(v60, v55);
            v62 = sub_10016D4D0(0x73726F736E6573, 0xE700000000000000);
            if ((v61 & 1) != (v63 & 1))
            {
              goto LABEL_58;
            }

            v57 = v62;
            if ((v61 & 1) == 0)
            {
LABEL_51:
              __break(1u);
LABEL_52:

              sub_1001DB4C4(v78);
              v67 = objc_allocWithZone(type metadata accessor for ClientDictionary());
              v68 = ClientDictionary.init(dictionary:)();
              (a1)[2](a1, v68, 0);

              return;
            }
          }

          v64 = *(*(v49 + 7) + 8 * v57);

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v64 = sub_100103664(0, *(v64 + 2) + 1, 1, v64);
          }

          v66 = *(v64 + 2);
          v65 = *(v64 + 3);
          if (v66 >= v65 >> 1)
          {
            v64 = sub_100103664((v65 > 1), v66 + 1, 1, v64);
          }

          v44 &= v44 - 1;
          *(v64 + 2) = v66 + 1;
          sub_1000FEA30(&v76, &v64[32 * v66 + 32]);
          *(*(v74 + 7) + 8 * v57) = v64;

          v78 = v74;
          if (!v44)
          {
            goto LABEL_30;
          }
        }
      }
    }

LABEL_19:
    v32 = *(*(v17 + 7) + 8 * v25);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v32 = sub_100103664(0, *(v32 + 2) + 1, 1, v32);
    }

    v34 = *(v32 + 2);
    v33 = *(v32 + 3);
    if (v34 >= v33 >> 1)
    {
      v32 = sub_100103664((v33 > 1), v34 + 1, 1, v32);
    }

    v12 &= v12 - 1;
    *(v32 + 2) = v34 + 1;
    sub_1000FEA30(&v76, &v32[32 * v34 + 32]);
    *(*(v75 + 7) + 8 * v25) = v32;

    v78 = v75;
    if (!v12)
    {
      goto LABEL_5;
    }
  }

  sub_1001E97E0(v28, v23);
  v30 = sub_10016D4D0(0x6775626564, 0xE500000000000000);
  if ((v29 & 1) == (v31 & 1))
  {
    v25 = v30;
    if ((v29 & 1) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_19;
  }

LABEL_58:
  _Block_release(a1);
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void sub_1001E227C(uint64_t a1)
{
  sub_100095274(&unk_1002AC888, &qword_10023FEE8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10023AAC0;
  strcpy((inited + 32), "dockaccessoryd");
  v4 = qword_1002B1970;
  v3 = *algn_1002B1978;
  *(inited + 47) = -18;
  *(inited + 48) = v4;
  *(inited + 56) = v3;
  strcpy((inited + 64), "dockkit-core");
  *(inited + 77) = 0;
  *(inited + 78) = -5120;
  *(inited + 80) = 0x302E303233;
  *(inited + 88) = 0xE500000000000000;

  sub_1001F29A8(inited);
  swift_setDeallocating();
  sub_100095274(&unk_1002A9C60, &qword_10023FEF0);
  swift_arrayDestroy();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  (*(a1 + 16))(a1, isa, 0);
}

void sub_1001E23C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1 + OBJC_IVAR____TtC14dockaccessoryd9dockDebug_logger, v4);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "Got here! Do the migration", v11, 2u);
  }

  (*(v5 + 8))(v8, v4);
  if (qword_1002A6780 != -1)
  {
    swift_once();
  }

  v12 = sub_1000FF338();
  (*(a2 + 16))(a2, v12 == 0, v12);
}

uint64_t sub_1001E258C(void *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [a1 processIdentifier];
  v8 = String._bridgeToObjectiveC()();
  v9 = [a1 valueForEntitlement:v8];

  if (v9)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v52 = 0u;
    v53 = 0u;
  }

  aBlock = v52;
  v49 = v53;
  if (*(&v53 + 1))
  {
    v10 = swift_dynamicCast();
    if (v10)
    {
      v11 = v46;
    }

    else
    {
      v11 = 0;
    }

    if (v10)
    {
      v12 = v47;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    sub_100095C84(&aBlock, &qword_1002A9210, &unk_10023BE70);
    v11 = 0;
    v12 = 0;
  }

  if (qword_1002A6780 != -1)
  {
    swift_once();
  }

  v42 = sub_10019B91C(a1);
  v14 = v13;
  if (qword_1002A67A8 != -1)
  {
    swift_once();
  }

  v15 = sub_100093DE8(v2, qword_1002AC810);
  (*(v3 + 16))(v6, v15, v2);

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  v43 = v6;
  v18 = v17;

  v19 = os_log_type_enabled(v16, v18);
  v45 = v7;
  v44 = v11;
  if (v19)
  {
    v20 = swift_slowAlloc();
    v41 = v3;
    v21 = v20;
    *&v52 = swift_slowAlloc();
    *v21 = 67109634;
    *(v21 + 4) = v7;
    *(v21 + 8) = 2080;
    *&aBlock = v11;
    *(&aBlock + 1) = v12;

    sub_100095274(&unk_1002A6F20, &unk_10023C660);
    v40 = v2;
    v22 = String.init<A>(describing:)();
    v24 = sub_1000952D4(v22, v23, &v52);

    *(v21 + 10) = v24;
    *(v21 + 18) = 2080;
    *&aBlock = v42;
    *(&aBlock + 1) = v14;
    v25 = String.init<A>(describing:)();
    v27 = sub_1000952D4(v25, v26, &v52);

    *(v21 + 20) = v27;
    _os_log_impl(&_mh_execute_header, v16, v18, "new connection from pid %d, appID entitlement %s, appID %s", v21, 0x1Cu);
    swift_arrayDestroy();

    (*(v41 + 8))(v43, v40);
  }

  else
  {

    (*(v3 + 8))(v43, v2);
  }

  v28 = objc_opt_self();
  v43 = [v28 interfaceWithProtocol:&OBJC_PROTOCOL____TtP11DockKitCore23DockDaemonDebugProtocol_];
  v29 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v30 = swift_allocObject();
  v31 = v45;
  *(v30 + 16) = v45;
  v32 = v44;
  *(v30 + 24) = v44;
  *(v30 + 32) = v12;
  *(v30 + 40) = v29;
  v50 = sub_1001E2C3C;
  v51 = v30;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v49 = sub_100147FC8;
  *(&v49 + 1) = &unk_10027B3F8;
  v33 = _Block_copy(&aBlock);

  [a1 setInvalidationHandler:v33];
  _Block_release(v33);
  v34 = swift_allocObject();
  *(v34 + 16) = v31;
  *(v34 + 24) = v32;
  *(v34 + 32) = v12;
  *(v34 + 40) = v29;
  v50 = sub_1001E2C80;
  v51 = v34;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v49 = sub_100147FC8;
  *(&v49 + 1) = &unk_10027B448;
  v35 = _Block_copy(&aBlock);

  [a1 setInterruptionHandler:v35];
  _Block_release(v35);
  v36 = v43;
  [a1 setExportedInterface:v43];
  v37 = [v28 interfaceWithProtocol:&OBJC_PROTOCOL____TtP11DockKitCore23DockClientDebugProtocol_];
  [a1 setRemoteObjectInterface:v37];
  v38 = [objc_allocWithZone(type metadata accessor for dockDebug()) init];
  [a1 setExportedObject:v38];
  [a1 resume];

  return 1;
}

uint64_t sub_1001E2C00()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1001E2C68(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}