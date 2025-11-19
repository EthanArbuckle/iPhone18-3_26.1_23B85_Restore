void sub_100042DC4()
{
  sub_1000055B0();
  v28 = v1;
  v2 = sub_1000071D0();
  v4 = sub_100065020(v2, v3);
  sub_100002BDC(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  sub_100004B1C();
  __chkstk_darwin(v9);
  sub_10014B090();
  sub_1000081B4();
  sub_100006570();
  sub_1000082D4(v10, v11, v12);
  sub_100012484();
  dispatch thunk of Hashable._rawHashValue(seed:)();
  v13 = *(v0 + 32);
  sub_100011E24();
  v15 = v6 + 8;
  while (1)
  {
    sub_10014B174(v14);
    if ((v16 & 1) == 0)
    {
      v21 = 1;
      v15 = v28;
      goto LABEL_9;
    }

    v17 = sub_100013870();
    v18(v17);
    sub_1000039B4();
    sub_1000082D4(&qword_1001B9508, &qword_1001B94F0, &unk_100172060);
    sub_100025DE0();
    dispatch thunk of static Equatable.== infix(_:_:)();
    v19 = sub_10014B374();
    v20(v19);
    if (v4)
    {
      break;
    }

    v14 = v0 + 1;
  }

  v22 = *v27;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v24 = *v27;
  v29 = *v27;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_100042F98();
    v24 = v29;
  }

  v25 = sub_10014B030(v24);
  v26(v25);
  sub_100046888();
  v21 = 0;
  *v27 = v29;
LABEL_9:
  sub_100009BFC(v15, v21, 1, v4);
  sub_100002EEC();
}

uint64_t sub_100042FBC()
{

  return dispatch thunk of CustomStringConvertible.description.getter();
}

void *sub_100042FD4@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 + v1 + 24);

  return sub_100003370((a1 + v1), v3);
}

uint64_t sub_100042FEC()
{
  sub_100002BAC();
  *(v1 + 56) = v0;
  *(v1 + 160) = v2;
  v3 = type metadata accessor for AssetCost();
  *(v1 + 64) = v3;
  sub_100002F44(v3);
  *(v1 + 72) = v4;
  v6 = *(v5 + 64);
  *(v1 + 80) = sub_100002C58();
  v7 = type metadata accessor for AssetPolicy();
  *(v1 + 88) = v7;
  sub_100002F44(v7);
  *(v1 + 96) = v8;
  v10 = *(v9 + 64);
  *(v1 + 104) = sub_100002C58();
  v11 = sub_100002C10();

  return _swift_task_switch(v11, v12, v13);
}

void sub_1000430E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_10000385C();
  sub_100003284();
  v16 = *(v14 + 96);
  v15 = *(v14 + 104);
  v17 = *(v14 + 88);
  v18 = *(v14 + 56);
  v19 = OBJC_IVAR____TtC13modelmanagerd29InferenceProviderAssetManager_policy;
  sub_100004CBC();
  swift_beginAccess();
  (*(v16 + 16))(v15, v18 + v19, v17);
  v20 = *(v16 + 88);
  v21 = sub_100001F70();
  v23 = v22(v21);
  if (v23 == enum case for AssetPolicy.standard(_:))
  {
    if (*(v14 + 160))
    {
      v24 = *(v14 + 104);
      v25 = *(v14 + 80);

      sub_100001F00();
      sub_100003540();

      v27(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, a12, a13, a14);
    }

    else
    {
      v37 = *(v14 + 72);
      v38 = *(v14 + 80);
      v40 = *(v14 + 56);
      v39 = *(v14 + 64);
      sub_100046B5C();
      v41 = AssetCost.onDeviceMemory.getter();
      v42 = *(v37 + 8);
      v43 = sub_100003754();
      v44(v43);
      v45 = sub_10003EC04();
      v46 = sub_10004351C();
      v47 = *(v14 + 56);
      if (v46 && v45 >= v41)
      {
        sub_100043844();
        v48 = *(v14 + 56);
        sub_100043D74();
        v49 = swift_task_alloc();
        *(v14 + 152) = v49;
        *v49 = v14;
        sub_1000DAC80(v49);
        sub_100003540();

        sub_1000440E8();
      }

      else
      {
        v51 = _swiftEmptyArrayStorage;
        *(v14 + 40) = _swiftEmptyArrayStorage;
        *(v14 + 48) = _swiftEmptyArrayStorage;
        v52 = sub_1000C1374();
        v53 = sub_10000E8DC(v52);
        if (v53)
        {
          v54 = v53;
          v65 = v41;
          if (v53 < 1)
          {
            __break(1u);
            return;
          }

          v55 = 0;
          v56 = _swiftEmptyArrayStorage;
          do
          {
            if ((v52 & 0xC000000000000001) != 0)
            {
              v57 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              v57 = *(v52 + 8 * v55 + 32);
            }

            if (*(v57 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_dynamicModeAllowed) == 1)
            {

              specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
              v58 = *((*(v14 + 40) & 0xFFFFFFFFFFFFFF8) + 0x18);
              if (*((*(v14 + 40) & 0xFFFFFFFFFFFFFF8) + 0x10) >= v58 >> 1)
              {
                sub_1000127D4(v58);
                specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
              }

              sub_10000CD1C();
              specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

              v56 = *(v14 + 40);
            }

            else if (*(v57 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_isCacheable) == 1 && v45 >= v65)
            {
            }

            else
            {

              specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
              v60 = *((*(v14 + 48) & 0xFFFFFFFFFFFFFF8) + 0x18);
              if (*((*(v14 + 48) & 0xFFFFFFFFFFFFFF8) + 0x10) >= v60 >> 1)
              {
                sub_1000127D4(v60);
                specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
              }

              sub_100005980();
              specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

              v51 = *(v14 + 48);
            }

            ++v55;
          }

          while (v54 != v55);
        }

        else
        {
          v56 = _swiftEmptyArrayStorage;
        }

        *(v14 + 120) = v51;
        *(v14 + 128) = v56;

        v61 = swift_task_alloc();
        *(v14 + 136) = v61;
        *v61 = v14;
        v61[1] = sub_1000CCDD4;
        v62 = *(v14 + 56);
        sub_100003540();

        sub_1000CD7D8(v63);
      }
    }
  }

  else if (v23 == enum case for AssetPolicy.unloadCached(_:))
  {
    v34 = swift_task_alloc();
    *(v14 + 112) = v34;
    *v34 = v14;
    v34[1] = sub_1000CCCDC;
    v35 = *(v14 + 56);
    sub_100003540();

    sub_1000CD0BC();
  }

  else
  {
    _assertionFailure(_:_:file:line:flags:)();
    sub_100003540();
  }
}

BOOL sub_10004351C()
{
  v1 = type metadata accessor for AssetPolicy();
  v2 = sub_100002BDC(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v2);
  sub_100002B8C();
  v9 = v8 - v7;
  v10 = v0 + OBJC_IVAR____TtC13modelmanagerd29InferenceProviderAssetManager_policy;
  sub_100004BA0();
  (*(v4 + 16))(v9, v10, v1);
  v11 = sub_100043638();
  (*(v4 + 8))(v9, v1);
  return (v11 & 1) != 0 && *(v10 + *(_s6PolicyVMa_0() + 28)) > 0.0;
}

uint64_t sub_100043638()
{
  v1 = v0;
  v2 = type metadata accessor for AssetPolicy();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = &v22 - v9;
  __chkstk_darwin(v8);
  v12 = &v22 - v11;
  v13 = enum case for AssetPolicy.unloadCached(_:);
  (*(v3 + 104))(&v22 - v11, enum case for AssetPolicy.unloadCached(_:), v2);
  v14 = *(v3 + 16);
  v14(v10, v1, v2);
  v15 = *(v3 + 88);
  v16 = v15(v10, v2);
  v17 = 0;
  v18 = enum case for AssetPolicy.standard(_:);
  if (v16 != enum case for AssetPolicy.standard(_:))
  {
    if (v16 != v13)
    {
      goto LABEL_9;
    }

    v17 = 1;
  }

  v23 = v17;
  v14(v7, v12, v2);
  v19 = v15(v7, v2);
  if (v19 == v18)
  {
    v20 = 0;
LABEL_8:
    (*(v3 + 8))(v12, v2);
    return v23 < v20;
  }

  if (v19 == v13)
  {
    v20 = 1;
    goto LABEL_8;
  }

LABEL_9:
  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_100043844()
{
  v1 = v0;
  v2 = sub_100065020(&qword_1001BB050, &qword_10016F6E0);
  v3 = sub_100002F04(v2);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  result = sub_10004351C();
  if (result)
  {
    v7 = OBJC_IVAR____TtC13modelmanagerd29InferenceProviderAssetManager_delayedAssetTransitionTask;
    if (!*(v0 + OBJC_IVAR____TtC13modelmanagerd29InferenceProviderAssetManager_delayedAssetTransitionTask))
    {
      result = sub_10003DC64();
      if (result)
      {
        if (qword_1001B8A78 != -1)
        {
          sub_10000877C();
        }

        v8 = type metadata accessor for Logger();
        sub_100002FD0(v8, qword_1001BCD78);

        v9 = Logger.logObject.getter();
        v10 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v9, v10))
        {
          v11 = sub_100007698();
          *v11 = 134217984;
          v12 = v1 + OBJC_IVAR____TtC13modelmanagerd29InferenceProviderAssetManager_policy;
          sub_100004BA0();
          *(v11 + 4) = *(v12 + *(_s6PolicyVMa_0() + 28));
          _os_log_impl(&_mh_execute_header, v9, v10, "Starting task to transition assets after %f seconds", v11, 0xCu);
          sub_100002BB8();
        }

        type metadata accessor for TaskPriority();
        sub_100003978();
        sub_100009BFC(v13, v14, v15, v16);
        v17 = swift_allocObject();
        swift_weakInit();
        v18 = swift_allocObject();
        v18[2] = 0;
        v18[3] = 0;
        v18[4] = v17;
        sub_1000652FC();
        v19 = *(v1 + v7);
        *(v1 + v7) = v20;
      }
    }
  }

  return result;
}

uint64_t sub_100043A6C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100043AA4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100043AE4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v28 = a2;
  v29 = a3;
  v4 = type metadata accessor for InferenceProviderAsset.ManagerOwnedState(0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState + v8;
  swift_beginAccess();
  v26 = v13;
  v14 = sub_10001938C(v13, v7);
  __chkstk_darwin(v14);
  v16 = *(v4 + 32);
  v15 = *(v4 + 36);
  v27 = v4;
  v17 = &v7[v15];
  v18 = &v7[v16];
  sub_10002B0EC();
  if (dispatch thunk of static Comparable.>= infix(_:_:)())
  {
    v19 = v18;
  }

  else
  {
    v19 = v17;
  }

  (*(v10 + 16))(v12, v19, v9);
  sub_1000193F0(v7);
  v20 = v28 + OBJC_IVAR____TtC13modelmanagerd29InferenceProviderAssetManager_policy;
  swift_beginAccess();
  v21 = *(v20 + *(_s6PolicyVMa_0() + 28));
  static Date.+ infix(_:_:)();
  v22 = *(v10 + 8);
  v22(v12, v9);
  v23 = dispatch thunk of static Comparable.>= infix(_:_:)();
  v22(v12, v9);
  if (v23)
  {
    v24 = 1;
  }

  else
  {
    v24 = v26[*(v27 + 24)] ^ 1;
  }

  return v24 & 1;
}

uint64_t sub_100043D74()
{
  v1 = v0;
  v2 = sub_100065020(&qword_1001BB050, &qword_10016F6E0);
  v3 = sub_100002F04(v2);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v6 = type metadata accessor for AssetPolicy();
  v7 = sub_100002BDC(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  __chkstk_darwin(v7);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v1 + OBJC_IVAR____TtC13modelmanagerd29InferenceProviderAssetManager_policy;
  sub_100004BA0();
  (*(v9 + 16))(v13, v14, v6);
  v15 = sub_100043638();
  result = (*(v9 + 8))(v13, v6);
  if (v15)
  {
    result = _s6PolicyVMa_0();
    if (*(v14 + *(result + 24)) > 0.0)
    {
      v17 = OBJC_IVAR____TtC13modelmanagerd29InferenceProviderAssetManager_purgeInactiveAssetsTask;
      if (!*(OBJC_IVAR____TtC13modelmanagerd29InferenceProviderAssetManager_purgeInactiveAssetsTask + v1))
      {
        v18 = result;
        result = sub_10011CDC8();
        if (result)
        {
          if (qword_1001B8A88 != -1)
          {
            sub_100011558();
          }

          v19 = type metadata accessor for Logger();
          sub_10000641C(v19, qword_1001BD218);
          sub_100003170();

          v20 = Logger.logObject.getter();
          v21 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v20, v21))
          {
            v22 = sub_100007698();
            *v22 = 134217984;
            *(v22 + 4) = *(v14 + *(v18 + 24));
            _os_log_impl(&_mh_execute_header, v20, v21, "Starting task to purge inactive assets after %f seconds", v22, 0xCu);
            sub_100012684();
          }

          type metadata accessor for TaskPriority();
          sub_100003978();
          sub_100009BFC(v23, v24, v25, v26);
          v27 = swift_allocObject();
          swift_weakInit();
          v28 = swift_allocObject();
          v28[2] = 0;
          v28[3] = 0;
          v28[4] = v27;
          sub_1000652FC();
          v29 = *&v17[v1];
          *&v17[v1] = v30;
        }
      }
    }
  }

  return result;
}

uint64_t sub_100044054()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10004408C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000440CC()
{
  result = v0[29];
  v2 = v0[26];
  v3 = *(v0[27] + 8);
  return result;
}

uint64_t sub_1000440E8()
{
  sub_100002BAC();
  *(v1 + 16) = v0;
  v2 = sub_100065020(&qword_1001BB050, &qword_10016F6E0);
  sub_100002F04(v2);
  v4 = *(v3 + 64);
  *(v1 + 24) = sub_100002C58();
  v5 = sub_100002C10();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_10004416C()
{
  sub_100003884();
  v1 = *(v0 + 16);
  if (sub_100019684())
  {
    v2 = *(v0 + 16);
    v3 = OBJC_IVAR____TtC13modelmanagerd29InferenceProviderAssetManager_assetVersionChangeUnloadTask;
    if (!*(v2 + OBJC_IVAR____TtC13modelmanagerd29InferenceProviderAssetManager_assetVersionChangeUnloadTask))
    {
      v4 = *(v0 + 16);
      if (sub_1000E7B78())
      {
        if (qword_1001B8950 != -1)
        {
          sub_1000051D8();
          swift_once();
        }

        v5 = type metadata accessor for Logger();
        sub_100002FD0(v5, qword_1001BBA68);
        v6 = Logger.logObject.getter();
        v7 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v6, v7))
        {
          v8 = sub_100007648();
          sub_10000BF10(v8);
          sub_100013624(&_mh_execute_header, v6, v7, "Starting task to unload assets due to pending version change");
          sub_100002BD0();
        }

        v10 = *(v0 + 16);
        v9 = *(v0 + 24);

        type metadata accessor for TaskPriority();
        sub_100003978();
        sub_100009BFC(v11, v12, v13, v14);
        v15 = swift_allocObject();
        swift_weakInit();
        v16 = swift_allocObject();
        v16[2] = 0;
        v16[3] = 0;
        v16[4] = v15;
        sub_1000652FC();
        v17 = *(v2 + v3);
        *(v2 + v3) = v18;
      }
    }
  }

  v19 = *(v0 + 24);

  sub_100001F00();

  return v20();
}

uint64_t sub_100044334()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10004436C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000443AC()
{
  sub_100002BAC();
  sub_100001EF4();
  v2 = *(v1 + 152);
  v3 = *(v1 + 56);
  v4 = *v0;
  sub_100002B9C();
  *v5 = v4;

  v6 = sub_100002C10();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_1000444A4()
{
  sub_100002BAC();
  v1 = *(v0 + 104);
  v2 = *(v0 + 80);

  sub_100001F00();

  return v3();
}

uint64_t sub_10004450C()
{
  sub_100002BAC();
  sub_100001EF4();
  v2 = *(v1 + 120);
  v3 = *(v1 + 48);
  v4 = *v0;
  sub_100002B9C();
  *v5 = v4;

  v6 = sub_100002C10();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_100044604(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[19] = a4;
  v5 = type metadata accessor for ContinuousClock();
  v4[20] = v5;
  v6 = *(v5 - 8);
  v4[21] = v6;
  v7 = *(v6 + 64) + 15;
  v4[22] = swift_task_alloc();
  v8 = type metadata accessor for ContinuousClock.Instant();
  v4[23] = v8;
  v9 = *(v8 - 8);
  v4[24] = v9;
  v10 = *(v9 + 64) + 15;
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();

  return _swift_task_switch(sub_1000448A8, 0, 0);
}

uint64_t sub_100044758(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_10000385C();
  sub_100003284();
  v16 = sub_1000DB0B0();
  v17(v16);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  v20 = sub_1000038BC(v19);
  v21 = v14[14];
  v23 = v14[8];
  v22 = v14[9];
  v24 = v14[7];
  if (v20)
  {
    sub_10000A05C();
    swift_slowAlloc();
    a10 = v21;
    sub_10000A45C();
    swift_slowAlloc();
    sub_10003EAA0();
    *v21 = 136315138;
    sub_1000281BC(&qword_1001B9C68, &qword_1001B94F0, &unk_100172060);
    sub_100042FBC();
    v25 = sub_1000DABA4();
    (v21)(v25);
    v26 = sub_10000CD1C();
    sub_100004A3C(v26, v27, v28);
    sub_100005974();

    *(v21 + 4) = v22;
    sub_1000033FC();
    _os_log_impl(v29, v30, v31, v32, v33, 0xCu);
    sub_100003324(v15);
    sub_1000039CC();

    sub_10000BFCC();
  }

  else
  {

    v34 = sub_100011BF0();
    (v21)(v34);
  }

  v36 = v14[9];
  v35 = v14[10];

  sub_100001F00();
  sub_100003540();

  return v38(v37, v38, v39, v40, v41, v42, v43, v44, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1000448A8()
{
  sub_100003884();
  v1 = *(v0 + 152);
  type metadata accessor for _OSActivity();
  *(v0 + 216) = swift_initStackObject();
  *(v0 + 224) = sub_10001B160("Transition Assets", 17, 2);
  sub_100004BA0();
  v2 = *(v0 + 152);
  v3 = type metadata accessor for Date();
  *(v0 + 232) = v3;
  sub_100002BDC(v3);
  *(v0 + 240) = v4;
  *(v0 + 248) = *(v5 + 64);
  *(v0 + 256) = sub_100002C58();
  v6 = sub_100065020(&qword_1001BBA80, &qword_100172440);
  sub_100002F04(v6);
  v8 = *(v7 + 64);
  *(v0 + 264) = sub_100002C58();
  Strong = swift_weakLoadStrong();
  *(v0 + 272) = Strong;
  if (Strong)
  {
    v10 = swift_task_alloc();
    *(v0 + 280) = v10;
    *v10 = v0;
    sub_100011538(v10);
    sub_100004CC8();

    return sub_100010CFC();
  }

  else
  {
    sub_100003978();
    sub_100009BFC(v13, v14, v15, v3);
    sub_10002C278(*(v0 + 264), &qword_1001BBA80, &qword_100172440);
    v16 = *(v0 + 264);

    *(v0 + 145) = 1;
    v17 = *(v0 + 256);

    if (qword_1001B8A78 != -1)
    {
      sub_10000877C();
    }

    v18 = type metadata accessor for Logger();
    sub_100002FD0(v18, qword_1001BCD78);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();
    if (sub_100002F80(v20))
    {
      v21 = sub_100007648();
      sub_10000A240(v21);
      sub_100003DD0();
      _os_log_impl(v22, v23, v24, v25, v26, 2u);
      sub_100002F64();
    }

    v27 = *(v0 + 152);

    sub_100004C24();
    v28 = swift_weakLoadStrong();
    *(v0 + 336) = v28;
    if (!v28)
    {
      sub_100005CE0();
      os_activity_scope_leave((v19 + 24));
      swift_endAccess();

      sub_100001F00();
      sub_100004CC8();

      __asm { BRAA            X1, X16 }
    }

    sub_100004CC8();

    return _swift_task_switch(v29, v30, v31);
  }
}

uint64_t sub_100044BD4()
{
  sub_100001ED0();
  sub_100001EF4();
  v2 = v1[17];
  v3 = v1[10];
  v4 = v1[8];
  v5 = v1[7];
  v6 = v1[6];
  v7 = *v0;
  sub_100002B9C();
  *v8 = v7;

  v9 = *(v4 + 8);
  v10 = sub_100001F70();
  v11(v10);
  v12 = sub_100003DE0();

  return _swift_task_switch(v12, v13, v14);
}

uint64_t sub_100044D24()
{
  sub_100001ED0();
  v2 = v0[13];
  v1 = v0[14];
  v4 = v0[9];
  v3 = v0[10];

  sub_100002F54();

  return v5();
}

uint64_t sub_100044DA0()
{
  sub_10000639C();
  sub_100003884();
  sub_100001EF4();
  sub_100003744();
  *v3 = v2;
  v5 = v4[13];
  v6 = v4[12];
  v7 = v4[7];
  v8 = v4[6];
  v9 = v4[5];
  v10 = *v1;
  sub_100002B9C();
  *v11 = v10;
  *(v12 + 112) = v0;

  v13 = *(v8 + 8);
  v14 = sub_100003754();
  v15(v14);

  sub_1000059F8();
  sub_100003D20();

  return _swift_task_switch(v16, v17, v18);
}

uint64_t sub_100044F0C()
{
  sub_100001ED0();
  v1 = v0[11];
  v3 = v0[7];
  v2 = v0[8];
  v4 = v0[2];
  ModelXPCRequest.CancelSessionRequest.Response.init()();
  sub_100065020(&qword_1001BE640, &qword_1001755B0);
  sub_100018E50();

  sub_100002F54();

  return v5();
}

uint64_t sub_100044FA8()
{
  sub_100001ED0();
  sub_100001EF4();
  v2 = v1[18];
  v3 = v1[10];
  v4 = v1[9];
  v5 = v1[8];
  v6 = v1[7];
  v7 = *v0;
  sub_100002B9C();
  *v8 = v7;

  v9 = *(v4 + 8);
  v10 = sub_100001F70();
  v11(v10);
  v12 = sub_100003DE0();

  return _swift_task_switch(v12, v13, v14);
}

uint64_t sub_1000450F8()
{
  sub_100001ED0();
  sub_100001EF4();
  v2 = v1[12];
  v3 = v1[9];
  v4 = v1[8];
  v5 = v1[7];
  v6 = v1[6];
  v7 = *v0;
  sub_100002B9C();
  *v8 = v7;

  v9 = *(v4 + 8);
  v10 = sub_100001F70();
  v11(v10);
  v12 = sub_100003DE0();

  return _swift_task_switch(v12, v13, v14);
}

uint64_t sub_100045248()
{
  sub_10000639C();
  sub_100003884();
  v1 = v0[11];

  v3 = v0[9];
  v2 = v0[10];
  v5 = v0[5];
  v4 = v0[6];
  v6 = v4[42];
  sub_100003370(v4 + 38, v4[41]);
  v7 = sub_100005E60();
  v8(v7);

  sub_100001F00();
  sub_100003D20();

  return v10(v9, v10, v11, v12, v13, v14, v15, v16);
}

uint64_t sub_100045350()
{
  sub_100001ED0();
  v1 = v0[10];
  v2 = v0[7];
  v3 = v0[2];
  ModelXPCRequest.DeleteSessionRequest.Response.init()();
  sub_100065020(&qword_1001BE650, &qword_1001755F0);
  sub_100006194();
  swift_storeEnumTagMultiPayload();

  sub_100002F54();

  return v4();
}

BOOL sub_1000453F0(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    v1 = __CocoaSet.count.getter();
  }

  else
  {
    v1 = *(a1 + 16);
  }

  return v1 == 0;
}

uint64_t sub_10004543C(void (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  result = sub_10000E8DC(a3);
  v7 = result;
  while (v7)
  {
    if (__OFSUB__(v7--, 1))
    {
      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      __break(1u);
      return result;
    }

    if ((a3 & 0xC000000000000001) != 0)
    {
      v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if ((v7 & 0x8000000000000000) != 0)
      {
        goto LABEL_13;
      }

      if (v7 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_14;
      }

      v9 = *(a3 + 32 + 8 * v7);
    }

    v10 = v9;
    a1(&v10);

    if (v3)
    {
      return result;
    }
  }

  return result;
}

uint64_t sub_100045518()
{
  v1 = sub_100065020(&qword_1001BB408, &unk_100171DC0);
  v2 = sub_100002F04(v1);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v5 = type metadata accessor for InferenceProviderAsset.ManagerOwnedState(0);
  v6 = v0 + *(v5 + 44);
  sub_100042DC4();
  v7 = sub_100065020(&qword_1001B94F0, &unk_100172060);
  result = sub_100015684(v7);
  if (v6 != 1)
  {
    v9 = type metadata accessor for Date();
    v10 = sub_100002BDC(v9);
    v12 = *(v11 + 64);
    __chkstk_darwin(v10);
    sub_100002B8C();
    static Date.now.getter();
    v13 = sub_10000A0B0(*(v5 + 36));
    return v14(v13);
  }

  return result;
}

uint64_t sub_100045694(float a1, uint64_t a2, ...)
{
  va_start(va, a2);
  *v4 = a1;

  return sub_100004A3C(v3, v2, va);
}

uint64_t sub_1000456B4()
{
  *(v0 + *(v1 + 24)) = 0;

  return swift_beginAccess();
}

uint64_t sub_1000456E8()
{
  v4 = *(v0 + 392);
  v2 = *(v0 + 368);

  return Date.timeIntervalSince(_:)();
}

uint64_t sub_100045708(uint64_t a1)
{

  return sub_10002CC20(v1, a1);
}

uint64_t sub_100045740()
{
  v1 = **(v0 - 160);
  result = *(v0 - 192);
  v3 = *(v0 - 120);
  return result;
}

uint64_t sub_10004575C()
{
  v2 = *(v0 + 88);
  v3 = *(v0 + 40);
}

uint64_t sub_10004578C()
{

  return sub_1001484C4(v0, 0, sub_100142578);
}

uint64_t sub_1000457CC()
{
  sub_100001ED0();
  v3 = v2;
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_10006F558;

  return sub_100044604(v3, v4, v5, v6);
}

void sub_10004587C()
{
  sub_1000055B0();
  sub_1000031F8(v1, v2, v3);
  v4 = sub_100065020(&qword_1001B94F0, &unk_100172060);
  sub_100002BDC(v4);
  v6 = *(v5 + 64);
  sub_100004B1C();
  __chkstk_darwin(v7);
  sub_100008290();
  sub_100008458(OBJC_IVAR____TtC13modelmanagerd19TelemetrySignposter_removeSessionPostString);
  v9 = sub_10000890C(v8);
  v10(v9);
  sub_100018380();
  v11 = sub_100013554();
  v14 = sub_100009C8C(v11, v12, v13);
  sub_100016484(v14);
  v15 = OSSignposter.logHandle.getter();
  v16 = type metadata accessor for OSSignpostID();
  v17 = sub_100002BDC(v16);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  sub_100002B8C();
  sub_10000AA34();
  v61 = static os_signpost_type_t.end.getter();
  if ((OS_os_log.signpostsEnabled.getter() & 1) == 0)
  {
    goto LABEL_5;
  }

  v60 = v16;
  if ((v0 & 1) == 0)
  {
    if (!v62)
    {
      __break(1u);
LABEL_5:

      v20 = sub_100019CA0();
      v21(v20, v16);
      v22 = sub_10000A28C();
      v23(v22);
LABEL_16:
      sub_100002EEC();
      return;
    }

LABEL_10:
    v27 = type metadata accessor for OSSignpostError();
    v58 = &v58;
    v28 = sub_100002BDC(v27);
    v30 = v29;
    v32 = *(v31 + 64);
    __chkstk_darwin(v28);
    sub_100002B8C();
    sub_100004BF4();

    checkForErrorAndConsumeState(state:)();

    v33 = sub_100012DEC();
    v34(v33);
    if (&enum case for OSSignpostError.doubleEnd(_:) && (sub_100003468(&enum case for OSSignpostError.doubleEnd(_:)), v25))
    {
      v35 = 0;
      v59 = "[Error] Interval already ended";
    }

    else
    {
      v36 = v30[1];
      ++v30;
      v36(v16, v27);
      v59 = "sessionIdentifier: %{public, signpost.description=attribute,public}s\nresult: %{public, signpost.description=attribute,public}ld";
      v35 = 2;
    }

    v37 = sub_1000060F4();
    v38 = sub_1000031E0();
    v39 = sub_100012AB8(v38);
    sub_100004A3C(v39, v40, &v63);
    sub_100061AE8();
    *(v37 + 4) = v35;
    v41 = sub_10000A28C();
    v42(v41);
    *(v37 + 12) = 2050;
    v43 = type metadata accessor for GenerativeFunctionsInstrumentationMetadata.ModelManagerSessionEvent.SessionEventResult();
    v44 = sub_100002BDC(v43);
    v46 = v45;
    v48 = *(v47 + 64);
    __chkstk_darwin(v44);
    sub_1000086BC();
    sub_10000A7DC();
    v49 = GenerativeFunctionsInstrumentationMetadata.ModelManagerSessionEvent.SessionEventResult.rawValue.getter();
    v50 = *(v46 + 8);
    v51 = sub_100001F70();
    v52(v51);
    *(v37 + 14) = v49;
    v53 = OSSignpostID.rawValue.getter();
    sub_10000F160(&_mh_execute_header, v54, v55, v53);
    sub_100003324(v30);
    sub_100002BB8();
    sub_100002BB8();

    v56 = sub_100019CA0();
    v57(v56, v60);
    goto LABEL_16;
  }

  sub_10000A46C();
  if (v24)
  {
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  sub_100011408();
  if (!v25)
  {
    sub_100005704();
    if (!(!v25 & v26))
    {
      sub_10001382C();
      goto LABEL_10;
    }

    goto LABEL_18;
  }

LABEL_19:
  __break(1u);
}

uint64_t sub_100045C30()
{
  sub_100001ED0();
  sub_100001EF4();
  v2 = v1[12];
  v3 = v1[11];
  v4 = v1[7];
  v5 = v1[6];
  v6 = v1[5];
  v7 = *v0;
  sub_100002B9C();
  *v8 = v7;

  v9 = *(v5 + 8);
  v10 = sub_1000060A4();
  v11(v10);
  v12 = sub_100003000();

  return _swift_task_switch(v12, v13, v14);
}

uint64_t sub_100045D88()
{
  sub_100003884();
  sub_100009DFC();
  v0 = swift_task_alloc();
  v1 = sub_100004B00(v0);
  *v1 = v2;
  v3 = sub_10000A2E0(v1);

  return sub_100045E1C(v3, v4, v5, v6, v7);
}

uint64_t sub_100045E1C(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  *(v5 + 16) = a5;
  *(v5 + 32) = a4;
  return _swift_task_switch(sub_1000470FC, a5, 0);
}

uint64_t sub_100045E4C()
{
  *(v1 + 4) = v0;
  *(v1 + 12) = 2112;

  return swift_errorRetain();
}

uint64_t sub_100045E6C()
{
  v1 = v0[28];
  v2 = v0[27];
  v3 = v0[24];
  v4 = *(v0[25] + 96);
  return v0[26];
}

uint64_t sub_100045E88()
{
  sub_1000094B0();
  sub_10000636C();
  sub_100001EF4();
  sub_100003744();
  *v3 = v2;
  v5 = v4[24];
  v6 = v4[23];
  v7 = v4[18];
  v8 = v4[17];
  v9 = v4[9];
  v10 = v4[7];
  v11 = v4[6];
  v12 = *v1;
  sub_100002B9C();
  *v13 = v12;
  *(v14 + 200) = v0;

  sub_10000ECD8(v11, &qword_1001B9CD0, &qword_100170778);
  v15 = sub_100003754();
  v8(v15);
  sub_1000059F8();
  sub_100006378();

  return _swift_task_switch(v16, v17, v18);
}

uint64_t sub_100046028(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_10000385C();
  a21 = v23;
  a22 = v24;
  sub_100003284();
  a20 = v22;
  v25 = *(v22 + 168);
  v26 = *(v22 + 152);
  (*(v22 + 160))(*(v22 + 112), *(v22 + 128), *(v22 + 88));
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.info.getter();
  v29 = sub_1000038BC(v28);
  v30 = *(v22 + 176);
  v31 = *(v22 + 112);
  v32 = *(v22 + 88);
  v33 = *(v22 + 96);
  if (v29)
  {
    sub_100007698();
    v34 = sub_100003890();
    a11 = v34;
    *v30 = 136315138;
    sub_100005070();
    sub_1000082D4(v35, v36, v37);
    v38 = dispatch thunk of CustomStringConvertible.description.getter();
    v40 = v39;
    v41 = sub_100005E8C();
    (v30)(v41);
    sub_100004A3C(v38, v40, &a11);
    sub_100012E8C();
    *(v30 + 4) = v31;
    sub_1000033FC();
    _os_log_impl(v42, v43, v44, v45, v46, 0xCu);
    sub_100003324(v34);
    sub_100004B78();
    sub_10000706C();
  }

  else
  {

    v47 = sub_100005E8C();
    (v30)(v47);
  }

  v48 = *(v22 + 168);
  v49 = *(v22 + 176);
  v50 = *(v22 + 120);
  v51 = *(v22 + 112);
  v52 = *(v22 + 80);
  v53 = *(v22 + 72);
  v65 = v53;
  v66 = *(v22 + 48);
  v54 = *(v22 + 16);
  (*(v22 + 160))(*(v22 + 104), *(v22 + 128), *(v22 + 88));
  ModelXPCRequest.CreateSessionRequest.Response.init(sessionID:)();
  v55 = sub_100036724();
  v49(v55);
  sub_100065020(&qword_1001BE658, &unk_100175610);
  swift_storeEnumTagMultiPayload();

  sub_100002F54();
  sub_100003540();

  return v57(v56, v57, v58, v59, v60, v61, v62, v63, v65, v66, a11, a12, a13, a14);
}

uint64_t EventReporterWrapper.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return _swift_deallocClassInstance(v0, 24, 7);
}

uint64_t sub_100046278()
{
  sub_100002BAC();
  sub_100001EF4();
  sub_100003744();
  *v3 = v2;
  v5 = *(v4 + 128);
  v6 = *v1;
  sub_100002B9C();
  *v7 = v6;
  *(v8 + 136) = v0;

  if (v0)
  {
    sub_1000059F8();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    sub_100001F00();

    return v12();
  }
}

uint64_t sub_10004638C()
{
  sub_100002BAC();
  sub_100001EF4();
  sub_100003744();
  *v3 = v2;
  v5 = *(v4 + 88);
  v6 = *v1;
  sub_100002B9C();
  *v7 = v6;
  *(v8 + 96) = v0;

  sub_1000059F8();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_100046488()
{
  v4 = *(v2 + 32);
  result = *(v1 + 48) + v0;
  v6 = *(v3 - 96);
  return result;
}

uint64_t sub_1000464A4()
{
}

uint64_t sub_1000464C0()
{
}

uint64_t sub_1000464D8()
{
  v3 = *(v0 + 8 * v1 + 32);

  return swift_task_alloc();
}

uint64_t sub_10004651C()
{
  v2 = v0[38];
  v3 = v0[13];
  v4 = v0[20];

  return sub_100009BFC(v4, 1, 1, v2);
}

uint64_t sub_10004655C(uint64_t a1)
{

  return sub_10000C6C0(v1 + v2, 1, a1);
}

void sub_10004657C()
{
  sub_10000A274();
  v1 = v0;
  v2 = sub_100065020(&qword_1001B94D0, &unk_100171E80);
  v3 = sub_100002BDC(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3);
  sub_1000DB2B0();
  v8 = type metadata accessor for InferenceProviderAsset.ManagerOwnedState(0);
  v9 = sub_100002F04(v8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  sub_100002B8C();
  v14 = v13 - v12;
  v15 = *v1;
  v16 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState;
  sub_100004CBC();
  swift_beginAccess();
  sub_100005C78();
  sub_1000192DC(v16 + v15, v14);
  sub_10006002C();
  sub_100002D24();
  swift_beginAccess();
  sub_10003DA78(v14, v16 + v15);
  swift_endAccess();
  if (qword_1001B8930 != -1)
  {
    sub_100005154();
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_10000641C(v17, qword_1001BB110);
  v18 = *(v5 + 16);
  v19 = sub_1000071D0();
  v20(v19);

  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v21, v22))
  {
    sub_100002F10();
    v23 = swift_slowAlloc();
    sub_100011828();
    swift_slowAlloc();
    *v23 = 136315394;

    v24 = sub_100027434();

    v25 = sub_100001F70();
    sub_100004A3C(v25, v26, v27);
    sub_100003170();

    *(v23 + 4) = v24;
    *(v23 + 12) = 2080;
    sub_1000281BC(&qword_1001BB468, &qword_1001B94D0, &unk_100171E80);
    v28 = dispatch thunk of CustomStringConvertible.description.getter();
    v29 = *(v5 + 8);
    v30 = sub_10004EF18();
    v31(v30);
    v32 = sub_1000062B0();
    sub_100004A3C(v32, v33, v34);
    sub_100009540();

    *(v23 + 14) = v28;
    _os_log_impl(&_mh_execute_header, v21, v22, "Marked asset %s not in use by execution group %s", v23, 0x16u);
    swift_arrayDestroy();
    sub_100002BD0();

    sub_100005864();
  }

  else
  {

    v35 = *(v5 + 8);
    v36 = sub_10004EF18();
    v37(v36);
  }

  sub_100005874();
}

void sub_100046888()
{
  sub_1000055B0();
  v46 = v1;
  v47 = v2;
  v4 = v3;
  v45 = v5;
  v6 = sub_100065020(v5, v1);
  sub_100002BDC(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  sub_100004B1C();
  __chkstk_darwin(v11);
  v13 = &v41 - v12;
  v14 = *v0;
  v15 = *v0 + 56;
  v16 = -1 << *(*v0 + 32);
  v17 = (v4 + 1) & ~v16;
  if (((1 << v17) & *(v15 + 8 * (v17 >> 6))) != 0)
  {
    v18 = ~v16;
    v19 = *v0;

    v20 = _HashTable.previousHole(before:)();
    if ((*(v15 + 8 * (v17 >> 6)) & (1 << v17)) != 0)
    {
      v43 = (v20 + 1) & v18;
      v42 = *(v8 + 16);
      v48 = *(v8 + 72);
      v44 = v8 + 16;
      v21 = (v8 + 8);
      v22 = v14;
      v23 = v18;
      while (1)
      {
        v24 = v15;
        v25 = v48 * v17;
        v26 = v23;
        v42(v13, *(v22 + 48) + v48 * v17, v6);
        v27 = v22;
        v28 = *(v22 + 40);
        sub_1000081B4();
        sub_1000082D4(v47, v45, v46);
        sub_100012484();
        v29 = dispatch thunk of Hashable._rawHashValue(seed:)();
        (*v21)(v13, v6);
        v23 = v26;
        v30 = v29 & v26;
        if (v4 >= v43)
        {
          if (v30 < v43 || v4 < v30)
          {
LABEL_20:
            v22 = v27;
            goto LABEL_24;
          }
        }

        else if (v30 < v43 && v4 < v30)
        {
          goto LABEL_20;
        }

        v22 = v27;
        v32 = *(v27 + 48);
        v33 = v48 * v4;
        v34 = v32 + v48 * v4;
        v35 = v32 + v25 + v48;
        if (v48 * v4 < v25 || v34 >= v35)
        {
          swift_arrayInitWithTakeFrontToBack();
LABEL_23:
          v23 = v26;
          v4 = v17;
          goto LABEL_24;
        }

        v4 = v17;
        if (v33 != v25)
        {
          swift_arrayInitWithTakeBackToFront();
          goto LABEL_23;
        }

LABEL_24:
        v17 = (v17 + 1) & v23;
        v15 = v24;
        if (((*(v24 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
        {

          goto LABEL_28;
        }
      }
    }

    v22 = v14;
LABEL_28:
    *(v15 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v4) - 1;
  }

  else
  {
    *(v15 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v4) - 1;
    v22 = v14;
  }

  v38 = *(v22 + 16);
  v39 = __OFSUB__(v38, 1);
  v40 = v38 - 1;
  if (v39)
  {
    __break(1u);
  }

  else
  {
    *(v22 + 16) = v40;
    ++*(v22 + 36);
    sub_100002EEC();
  }
}

uint64_t sub_100046B5C()
{
  if (sub_10000E8DC(_swiftEmptyArrayStorage))
  {
    sub_10004AC98(_swiftEmptyArrayStorage);
  }

  sub_10003E244();
}

uint64_t sub_100046BDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10001446C();
  sub_10000636C();
  sub_10004575C();
  v13 = Logger.logObject.getter();
  static os_log_type_t.default.getter();
  sub_100019920();

  if (sub_10000A384())
  {
    v14 = *(v10 + 40);
    sub_10000A05C();
    v15 = swift_slowAlloc();
    sub_1000033D0();
    swift_slowAlloc();
    sub_1000265BC();
    *v15 = 136315138;
    v16 = sub_10001AFF8();
    sub_10000CB58(v16, v17, v18);
    sub_100007BA0();
    *(v15 + 4) = v12;
    sub_1000033FC();
    _os_log_impl(v19, v20, v21, v22, v23, 0xCu);
    sub_100003324(v11);
    sub_1000039CC();

    sub_100002BD0();
  }

  v24 = *(v10 + 80);

  sub_100001F00();
  sub_100003770();

  return v26(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10);
}

uint64_t sub_100046CD0()
{
  v1 = OBJC_IVAR____TtC13modelmanagerd13DaemonSession_metadata;
  v2 = type metadata accessor for Session.Metadata();
  sub_100002C00(v2);
  (*(v3 + 8))(v0 + v1);
  v4 = OBJC_IVAR____TtC13modelmanagerd13DaemonSession_auditToken;
  v5 = type metadata accessor for AuditToken();
  sub_100002C00(v5);
  (*(v6 + 8))(v0 + v4);
  sub_100003324((v0 + OBJC_IVAR____TtC13modelmanagerd13DaemonSession_modelCatalog));
  v7 = *(v0 + OBJC_IVAR____TtC13modelmanagerd13DaemonSession_requestManager);

  sub_100003324((v0 + OBJC_IVAR____TtC13modelmanagerd13DaemonSession_sysctl));
  v8 = *(v0 + OBJC_IVAR____TtC13modelmanagerd13DaemonSession_unsafeManagerOwnedState + 8);

  v9 = *(v0 + OBJC_IVAR____TtC13modelmanagerd13DaemonSession__lazyState);

  return v0;
}

uint64_t sub_100046DB4()
{
  sub_100046CD0();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t sub_100046E0C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  GenerativeFunctionsInstrumentationEvent.eventType.setter();
  v7 = sub_100065020(&qword_1001BD078, &qword_100173950);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v23[-v9];
  v11 = enum case for GenerativeFunctionsInstrumentationEvent.Subtype.end(_:);
  v12 = type metadata accessor for GenerativeFunctionsInstrumentationEvent.Subtype();
  (*(*(v12 - 8) + 104))(v10, v11, v12);
  sub_100009BFC(v10, 0, 1, v12);
  GenerativeFunctionsInstrumentationEvent.subtype.setter();
  v13 = type metadata accessor for GenerativeFunctionsInstrumentationEvent.Identifiers();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v26 = a2;
  static Buildable.with(_:)();
  GenerativeFunctionsInstrumentationEvent.identifiers.setter();
  v15 = sub_100065020(&qword_1001BD090, &qword_100173970);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v23[-v17];
  type metadata accessor for GenerativeFunctionsInstrumentationMetadata.ModelManagerSessionEvent();
  v19 = swift_allocBox();
  v24 = a3;
  v25 = a4 & 1;
  static Buildable.with(_:)();
  *v18 = v19;
  v20 = enum case for GenerativeFunctionsInstrumentationMetadata.modelManagerSessionEvent(_:);
  v21 = type metadata accessor for GenerativeFunctionsInstrumentationMetadata();
  (*(*(v21 - 8) + 104))(v18, v20, v21);
  sub_100009BFC(v18, 0, 1, v21);
  return GenerativeFunctionsInstrumentationEvent.metadata.setter();
}

uint64_t sub_1000470FC()
{
  sub_100001ED0();
  if (qword_1001B8968 != -1)
  {
    sub_100005224();
  }

  v1 = type metadata accessor for Logger();
  sub_100002FD0(v1, qword_1001BBF20);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (sub_100002F80(v3))
  {
    v4 = *(v0 + 32);
    v5 = sub_100003788();
    sub_10000A300(v5, 1.5047e-36);
    sub_100002DA4(&_mh_execute_header, v6, v7, "No longer monitoring: %d");
    sub_100002F64();
  }

  v8 = swift_task_alloc();
  *(v0 + 24) = v8;
  *v8 = v0;
  v8[1] = sub_1000486E8;
  v9 = *(v0 + 16);

  return sub_10000EAAC();
}

uint64_t sub_10004720C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_100007B84();
  a23 = v26;
  a24 = v27;
  sub_100005EA4();
  a22 = v24;
  v29 = *(v24 + 400);
  v28 = *(v24 + 408);
  v30 = *(v24 + 224);
  v31 = type metadata accessor for Date();
  *(v24 + 416) = v31;
  sub_100002BDC(v31);
  v33 = v32;
  *(v24 + 424) = v32;
  v35 = *(v34 + 64) + 15;
  v36 = swift_task_alloc();
  v37 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState;
  *(v24 + 432) = v36;
  *(v24 + 440) = v37;
  v38 = &v37[v30];
  sub_100004BA0();
  (*(v33 + 16))(v36, &v38[*(v29 + 32)], v31);
  v39 = swift_task_alloc();
  static Date.now.getter();
  v40 = sub_1000062B0();
  sub_10001938C(v40, v41);
  (*(v33 + 40))(v28 + *(v29 + 32), v39, v31);
  sub_100002D24();
  swift_beginAccess();
  v42 = sub_100001F70();
  sub_10003DA78(v42, v43);
  swift_endAccess();

  sub_1000480AC(&v38[*(v29 + 60)], v24 + 16);
  v44 = *(v24 + 48);
  sub_100003370((v24 + 16), *(v24 + 40));
  v45 = sub_10000C9D8();
  v46(v45);
  if (v31)
  {
    sub_100003324((v24 + 16));
    *(v24 + 472) = v31;
    v47 = *(v24 + 432);
    v48 = *(v24 + 440);
    v49 = *(v24 + 416);
    v50 = *(v24 + 424);
    sub_10000CC88();
    v51 = sub_100010C80();
    v52(v51);
    sub_100002D24();
    swift_beginAccess();
    sub_10003DA78(v44, v25 + v48);
    swift_endAccess();
    if (qword_1001B8938 != -1)
    {
      sub_100005C90();
      swift_once();
    }

    v53 = *(v24 + 224);
    v54 = type metadata accessor for Logger();
    *(v24 + 480) = sub_10000641C(v54, qword_1001BB478);

    swift_errorRetain();
    v55 = Logger.logObject.getter();
    static os_log_type_t.default.getter();

    if (sub_100019C50())
    {
      v56 = *(v24 + 360);
      v57 = *(v24 + 368);
      v92 = *(v24 + 352);
      v58 = *(v24 + 224);
      sub_1000033D0();
      v59 = swift_slowAlloc();
      v93 = sub_100003788();
      a12 = sub_1000080A4();
      *v59 = 136315650;
      type metadata accessor for InferenceProviderAssetDescriptor();
      sub_100005168();
      sub_100011B5C(v60, v61);
      v62 = sub_100013430();
      v64 = v63;
      sub_100004A3C(v62, v63, &a12);
      sub_100013E7C();

      sub_100006534();
      v65 = (v58 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection);
      v67 = *(v58 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection + 24);
      v66 = *(v58 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection + 32);
      sub_100003370(v65, v67);
      sub_100003048();
      v68(v67, v66);
      sub_10000866C();
      sub_100011B5C(v69, v70);
      sub_100003E14();
      dispatch thunk of CustomStringConvertible.description.getter();
      v71 = sub_10000F148();
      v72(v71);
      sub_100004A3C(v64, v66, &a12);
      sub_100019498();

      sub_100011DD8();
      swift_errorRetain();
      v73 = _swift_stdlib_bridgeErrorToNSError();
      *(v59 + 24) = v73;
      *v93 = v73;
      sub_10003DD68();
      _os_log_impl(v74, v75, v76, v77, v59, 0x20u);
      sub_10000ECD8(v93, &qword_1001B8F68, &qword_10016FB80);
      sub_100002BD0();

      sub_10000BEE8();
      sub_100002BD0();

      sub_100002BD0();
    }

    v78 = swift_task_alloc();
    *(v24 + 488) = v78;
    *v78 = v24;
    sub_100007E40(v78);
    sub_100003D04();

    return sub_100041158(v79, v80);
  }

  else
  {
    v83 = *(v24 + 524);
    sub_100003324((v24 + 16));
    v84 = swift_task_alloc();
    *(v24 + 448) = v84;
    *v84 = v24;
    v84[1] = sub_100055D8C;
    v85 = *(v24 + 264);
    v86 = *(v24 + 272);
    v87 = *(v24 + 248);
    v88 = *(v24 + 256);
    v89 = *(v24 + 240);
    v90 = *(v24 + 224);
    sub_1000031B8(*(v24 + 232));
    sub_100003D04();

    return sub_10004A7A4();
  }
}

uint64_t sub_1000476C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t *a20, uint64_t a21, uint64_t a22)
{
  sub_10000385C();
  a21 = v23;
  a22 = v24;
  sub_100003284();
  a20 = v22;
  if (qword_1001B8938 != -1)
  {
    sub_100005C90();
    swift_once();
  }

  v25 = v22[16];
  v26 = type metadata accessor for Logger();
  v22[40] = sub_10000641C(v26, qword_1001BB478);

  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.default.getter();

  v29 = &unk_1001BE000;
  if (os_log_type_enabled(v27, v28))
  {
    v30 = v22[39];
    v31 = v22[16];
    v32 = sub_1000267F8();
    a11 = sub_1000080A4();
    *v32 = 136315394;
    InferenceProviderAssetDescriptor.customAssetConfiguration.getter();
    v33 = type metadata accessor for CustomAssetConfiguration();
    v34 = sub_10000C6C0(v30, 1, v33);
    v35 = v22[39];
    if (v34 == 1)
    {
      sub_10000ECD8(v22[39], &qword_1001B9D00, &qword_100171E00);
      v36 = InferenceProviderAssetDescriptor.identifier.getter();
      v38 = v37;
    }

    else
    {
      v39 = v22[39];
      v36 = CustomAssetConfiguration.identifier.getter();
      v38 = v40;
      sub_100006098(v33);
      (*(v41 + 8))(v35, v33);
    }

    v42 = v22[37];
    v43 = v22[38];
    v44 = v22[36];
    v45 = v22[16];
    v46 = sub_100004A3C(v36, v38, &a11);

    *(v32 + 4) = v46;
    *(v32 + 12) = 2080;
    v47 = (v45 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection);
    v48 = *(v45 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection + 24);
    v49 = *(v45 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection + 32);
    sub_100013D6C(v47, v48);
    v50 = sub_100005974();
    v51(v50, v49);
    sub_10000866C();
    sub_100011B5C(v52, v53);
    sub_1000035E8();
    v54 = dispatch thunk of CustomStringConvertible.description.getter();
    v56 = v55;
    (*(v42 + 8))(v43, v44);
    sub_100004A3C(v54, v56, &a11);
    sub_100005974();

    *(v32 + 14) = v54;
    v29 = &unk_1001BE000;
    _os_log_impl(&_mh_execute_header, v27, v28, "Loading asset %s into %s", v32, 0x16u);
    swift_arrayDestroy();
    sub_100002BD0();

    sub_100002BD0();
  }

  v57 = v22[16];
  v58 = v29[261];
  v22[41] = v58;
  v59 = *(v57 + v58 + 32);
  sub_100003370((v57 + v58), *(v57 + v58 + 24));
  v60 = sub_100001F0C();
  v61 = *(v60 + 120);
  v75 = v60 + 120;
  sub_100004B94();
  v76 = v62 + *v62;
  v64 = *(v63 + 4);
  v65 = swift_task_alloc();
  v22[42] = v65;
  *v65 = v22;
  v65[1] = sub_10004AA68;
  sub_1000031B8(v22[16]);
  sub_100003540();

  return v70(v66, v67, v68, v69, v70, v71, v72, v73, v75, v76, a11, a12, a13, a14);
}

uint64_t sub_100047A80()
{
  sub_100002BAC();
  *(v1 + 410) = v2;
  *(v1 + 409) = v3;
  *(v1 + 144) = v4;
  *(v1 + 152) = v0;
  *(v1 + 128) = v5;
  *(v1 + 136) = v6;
  *(v1 + 408) = v7;
  *(v1 + 112) = v8;
  *(v1 + 120) = v9;
  v10 = sub_100065020(&qword_1001BB3F8, &qword_100171D50);
  sub_100002F44(v10);
  *(v1 + 160) = v11;
  *(v1 + 168) = *(v12 + 64);
  *(v1 + 176) = sub_100002C58();
  v13 = sub_100065020(&qword_1001BB408, &unk_100171DC0);
  sub_100002F44(v13);
  *(v1 + 184) = v14;
  *(v1 + 192) = *(v15 + 64);
  *(v1 + 200) = sub_100002C58();
  v16 = sub_100065020(&qword_1001BB410, &unk_100172340);
  sub_100002F44(v16);
  *(v1 + 208) = v17;
  *(v1 + 216) = *(v18 + 64);
  *(v1 + 224) = sub_100002C58();
  State = type metadata accessor for LoadState();
  *(v1 + 232) = State;
  sub_100002F44(State);
  *(v1 + 240) = v20;
  v22 = *(v21 + 64);
  *(v1 + 248) = sub_10000F0C0();
  *(v1 + 256) = swift_task_alloc();
  v23 = type metadata accessor for AssetCost();
  *(v1 + 264) = v23;
  sub_100002F44(v23);
  *(v1 + 272) = v24;
  v26 = *(v25 + 64);
  *(v1 + 280) = sub_100002C58();
  v27 = sub_100002C10();

  return _swift_task_switch(v27, v28, v29);
}

uint64_t sub_100047CA4()
{
  sub_10000636C();
  v1 = v0[12];
  v3 = v0[7];
  v2 = v0[8];
  v4 = v0[5];
  v5 = v0[6];
  *(v1 + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + 8) = v5;
  swift_unknownObjectWeakAssign();
  ObjectType = swift_getObjectType();
  v7 = v1 + *(v2 + 20);
  (*(v5 + 8))(ObjectType, v5);
  v8 = OBJC_IVAR____TtC13modelmanagerd36InferenceProviderExtensionConnection_terminationHandlers;
  sub_10000BF7C();
  v9 = *(v3 + v8);

  sub_1000062B0();
  sub_100049620();
  LOBYTE(v2) = v10;

  v12 = v0[11];
  v11 = v0[12];
  if (v2)
  {
    sub_10004A728(v0[12], type metadata accessor for InferenceProviderExtensionConnection.TerminationHandlerWrapper);

    sub_100001F00();

    return v13();
  }

  else
  {
    v16 = v0[9];
    v15 = v0[10];
    v17 = v0[7];
    sub_10000EE2C();
    sub_1000060A4();
    sub_100056B00();
    v18 = (*(v16 + 80) + 24) & ~*(v16 + 80);
    v19 = swift_allocObject();
    v0[13] = v19;
    *(v19 + 16) = v17;
    sub_1000B1604(v12, v19 + v18);
    v20 = _s20ModelManagerServices9WorkQueueV15runBlockAndWait11description10isolatedTo7performqd__SS_xYiqd__yYaqd_0_YKctYaqd_0_YKs8SendableRd__s5ErrorRd_0_r0_lFTu[1];

    v21 = swift_task_alloc();
    v0[14] = v21;
    sub_100065020(&qword_1001BA490, &qword_100171000);
    *v21 = v0;
    v21[1] = sub_1000A4518;
    v22 = v0[7];
    sub_100006378();

    return __s20ModelManagerServices9WorkQueueV15runBlockAndWait11description10isolatedTo7performqd__SS_xYiqd__yYaqd_0_YKctYaqd_0_YKs8SendableRd__s5ErrorRd_0_r0_lF(v23, v24, v25);
  }
}

uint64_t sub_100047F08()
{
  v1 = (type metadata accessor for InferenceProviderExtensionConnection.TerminationHandlerWrapper(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + 16);

  swift_unknownObjectWeakDestroy();
  v6 = v1[7];
  v7 = type metadata accessor for UUID();
  sub_100002C00(v7);
  (*(v8 + 8))(v0 + v3 + v6);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100047FF0()
{
  sub_100002BAC();
  v1[6] = v2;
  v1[7] = v0;
  v1[5] = v3;
  v4 = type metadata accessor for InferenceProviderExtensionConnection.TerminationHandlerWrapper(0);
  v1[8] = v4;
  sub_100002F44(v4);
  v1[9] = v5;
  v1[10] = *(v6 + 64);
  v1[11] = sub_10000F0C0();
  v1[12] = swift_task_alloc();
  v7 = sub_100002C10();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_1000480AC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100048110(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v8 + 272) = v30;
  *(v8 + 256) = v29;
  *(v8 + 524) = a7;
  *(v8 + 240) = a6;
  *(v8 + 248) = a8;
  *(v8 + 224) = a4;
  *(v8 + 232) = a5;
  v10 = type metadata accessor for ModelManagerError();
  *(v8 + 280) = v10;
  v11 = *(v10 - 8);
  *(v8 + 288) = v11;
  v12 = *(v11 + 64) + 15;
  *(v8 + 296) = swift_task_alloc();
  v13 = type metadata accessor for InferenceError();
  *(v8 + 304) = v13;
  v14 = *(v13 - 8);
  *(v8 + 312) = v14;
  v15 = *(v14 + 64) + 15;
  *(v8 + 320) = swift_task_alloc();
  v16 = type metadata accessor for InferenceError.Context();
  *(v8 + 328) = v16;
  v17 = *(v16 - 8);
  *(v8 + 336) = v17;
  v18 = *(v17 + 64) + 15;
  *(v8 + 344) = swift_task_alloc();
  v19 = type metadata accessor for InferenceProviderDescriptor();
  *(v8 + 352) = v19;
  v20 = *(v19 - 8);
  *(v8 + 360) = v20;
  v21 = *(v20 + 64) + 15;
  *(v8 + 368) = swift_task_alloc();
  State = type metadata accessor for LoadState();
  *(v8 + 376) = State;
  v23 = *(State - 8);
  *(v8 + 384) = v23;
  v24 = *(v23 + 64) + 15;
  *(v8 + 392) = swift_task_alloc();
  v25 = type metadata accessor for InferenceProviderAsset.ManagerOwnedState(0);
  *(v8 + 400) = v25;
  v26 = *(*(v25 - 8) + 64) + 15;
  *(v8 + 408) = swift_task_alloc();

  return _swift_task_switch(sub_10004720C, a5, 0);
}

uint64_t sub_100048390()
{
  sub_100003284();
  v37 = v1;
  v2 = sub_100065020(&qword_1001BB410, &unk_100172340);
  sub_100002F44(v2);
  v4 = (*(v3 + 80) + 57) & ~*(v3 + 80);
  v6 = *(v5 + 64);
  v7 = sub_100065020(&qword_1001BB408, &unk_100171DC0);
  sub_100002F44(v7);
  v9 = (v4 + v6 + *(v8 + 80)) & ~*(v8 + 80);
  v11 = *(v10 + 64);
  State = type metadata accessor for LoadState();
  sub_100002F44(State);
  v14 = (v9 + v11 + *(v13 + 80)) & ~*(v13 + 80);
  v16 = *(v15 + 64);
  v17 = sub_100065020(&qword_1001BB3F8, &qword_100171D50);
  sub_100002F04(v17);
  v19 = *(v18 + 80);
  v20 = *(v0 + 16);
  v21 = *(v0 + 24);
  v22 = *(v0 + 32);
  v23 = *(v0 + 40);
  v24 = *(v0 + 48);
  v25 = *(v0 + 56);
  v26 = swift_task_alloc();
  *(v37 + 16) = v26;
  *v26 = v37;
  v26[1] = sub_10006F558;
  sub_1000038D8();
  sub_100003540();

  return sub_100048110(v27, v28, v29, v30, v31, v32, v33, v34);
}

uint64_t sub_1000485D0()
{
  v2 = *(v0 + 40);

  return Hasher.init(_seed:)();
}

uint64_t sub_1000485EC()
{
  v3 = v0[6];
  sub_100003370(v0 + 2, v0[5]);

  return RequestMetadata.id.getter();
}

uint64_t sub_100048628()
{

  return swift_allocObject();
}

void sub_100048670()
{
  *(v0 + 112) = 0;
  *(v0 + 120) = 0;
  *(v0 + 128) = 1;
  *(v0 + 144) = 0;
  *(v0 + 152) = 0;
  *(v0 + 136) = 0;
  *(v0 + 157) = 0;
}

uint64_t sub_1000486A0()
{

  return dispatch thunk of RawRepresentable.rawValue.getter();
}

uint64_t sub_1000486B8()
{
  v2 = *(v0 + 304);
}

uint64_t sub_1000486D0(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = *(v2 + 88);
  return v2 + 16;
}

uint64_t sub_1000486EC()
{
  sub_100002BAC();
  *(v1 + 248) = v2;
  *(v1 + 256) = v0;
  *(v1 + 525) = v3;
  *(v1 + 524) = v4;
  *(v1 + 240) = v5;
  v6 = type metadata accessor for InferenceProviderAsset.ManagerOwnedState(0);
  *(v1 + 264) = v6;
  sub_100002F04(v6);
  v8 = *(v7 + 64);
  *(v1 + 272) = sub_10000F0C0();
  *(v1 + 280) = swift_task_alloc();
  State = type metadata accessor for LoadState();
  *(v1 + 288) = State;
  sub_100002F44(State);
  *(v1 + 296) = v10;
  v12 = *(v11 + 64);
  *(v1 + 304) = sub_10000F0C0();
  *(v1 + 312) = swift_task_alloc();
  *(v1 + 320) = swift_task_alloc();
  *(v1 + 328) = swift_task_alloc();
  v13 = sub_100002C10();

  return _swift_task_switch(v13, v14, v15);
}

uint64_t sub_100049480()
{
  v3 = v0[31];
  v2 = v0[32];
  v5 = v0[29];
  v4 = v0[30];
  v6 = v0[27];
  v7 = v0[28];
}

uint64_t sub_1000494A4(uint64_t a1)
{
  v2[11] = a1;
  v2[12] = *(v3 + 16);
  v2[13] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  return v1;
}

uint64_t sub_1000494CC()
{
  v5 = v0[26];
  v2 = v0[19];
  v3 = v0[20];

  return sub_10005C054(v2, v3);
}

uint64_t sub_1000494F4()
{

  return dispatch thunk of CustomStringConvertible.description.getter();
}

uint64_t sub_10004950C()
{
  sub_100001ED0();
  sub_10000D554();
  sub_100004B40();
  *v4 = v3;
  v5 = *(v1 + 392);
  v6 = *v2;
  sub_100003744();
  *v7 = v6;
  *(v9 + 400) = v8;
  *(v9 + 408) = v0;

  sub_10000A9E0();
  v11 = *(v10 + 208);
  sub_10000E700();

  return _swift_task_switch(v12, v13, v14);
}

void sub_100049620()
{
  sub_1000055B0();
  v1 = sub_10000C1A0();
  v2 = type metadata accessor for InferenceProviderExtensionConnection.TerminationHandlerWrapper(v1);
  v3 = sub_100002BDC(v2);
  v17 = v4;
  v6 = *(v5 + 64);
  __chkstk_darwin(v3);
  sub_100002B8C();
  if (v0[2])
  {
    v7 = v0[5];
    Hasher.init(_seed:)();
    v8 = *(v2 + 20);
    UUID.hash(into:)();
    Hasher._finalize()();
    sub_100012A00();
    v11 = ~v10;
    do
    {
      v12 = v9 & v11;
      if (((1 << (v9 & v11)) & *(v0 + (((v9 & v11) >> 3) & 0xFFFFFFFFFFFFFF8) + 56)) == 0)
      {
        break;
      }

      v13 = v0[6];
      v14 = *(v17 + 72);
      sub_100005B9C();
      sub_10000931C();
      v15 = *(v2 + 20);
      v16 = static UUID.== infix(_:_:)();
      sub_100005618();
      sub_10000D2AC();
      v9 = v12 + 1;
    }

    while ((v16 & 1) == 0);
  }

  sub_100002EEC();
}

uint64_t sub_100049768(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_10000385C();
  sub_100003284();
  v22 = sub_10000E8DC(v16[52]);
  v16[55] = v22;
  if (v22)
  {
    v23 = v16[52] & 0xC000000000000001;
    sub_100022A7C(0);
    if (v23)
    {
      v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v24 = *(v16[52] + 32);
    }

    v16[56] = v24;
    v16[57] = 1;
    sub_1000332B8();
    sub_100065020(&qword_1001B8F48, &qword_10016FB30);
    v25 = sub_10000BF00();
    sub_100009BFC(v25, v26, v27, v28);
    v21(v17, v20, v14);
    sub_100031654();
    sub_100009BFC(v29, v30, v31, v32);
    v33 = type metadata accessor for AuditToken();
    sub_100002C00(v33);
    v35 = *(v34 + 16);
    sub_1000DB290();
    v36();
    sub_10004A780();
    sub_100031654();
    sub_100009BFC(v37, v38, v39, v40);
    v41 = swift_task_alloc();
    v16[58] = v41;
    *v41 = v16;
    sub_100005B28(v41);
    sub_100003540();

    return sub_100047A80();
  }

  else
  {
    sub_10004D094();
    v19(v14, v17, v15);
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.default.getter();
    v46 = sub_1000038BC(v45);
    v47 = v16[48];
    v48 = v16[41];
    v49 = v16[37];
    v50 = v16[38];
    if (v46)
    {
      sub_10000A05C();
      swift_slowAlloc();
      sub_10000A45C();
      swift_slowAlloc();
      sub_10003EAA0();
      *v47 = 136315138;
      sub_1000281BC(&qword_1001B9C68, &qword_1001B94F0, &unk_100172060);
      sub_100042FBC();
      v51 = sub_1000DABA4();
      (v47)(v51);
      v52 = sub_10000CD1C();
      sub_100004A3C(v52, v53, v54);
      sub_100005974();

      *(v47 + 4) = v48;
      sub_1000033FC();
      _os_log_impl(v55, v56, v57, v58, v59, 0xCu);
      sub_100003324(v18);
      sub_1000039CC();

      sub_10000BFCC();
    }

    else
    {

      v60 = sub_100011BF0();
      (v47)(v60);
    }

    v61 = v16[26];
    sub_100043D74();
    v62 = v16[10];
    v63 = v16[11];
    sub_100010BB8(v16 + 7);
    v78 = sub_1000DB334();
    sub_100004B94();
    v79 = v64 + *v64;
    v66 = *(v65 + 4);
    v67 = swift_task_alloc();
    v68 = sub_100050FE4(v67);
    *v68 = v69;
    sub_1000185FC(v68);
    sub_100003540();

    return v73(v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, a11, a12, a13, a14);
  }
}

uint64_t sub_100049A6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  State = type metadata accessor for LoadState();
  v9 = *(State - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(State);
  v57 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for InferenceProviderAsset.ManagerOwnedState(0);
  v12 = *(*(v51 - 8) + 64);
  __chkstk_darwin(v51);
  v59 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v13) = *(a1 + 32);
  v14 = v13 & 0x3F;
  v15 = ((1 << v13) + 63) >> 6;
  v16 = 8 * v15;

  if (v14 > 0xD)
  {
    goto LABEL_34;
  }

  while (2)
  {
    v49 = a3;
    v50 = a2;
    v45 = v4;
    v43 = &v43;
    __chkstk_darwin(v17);
    v44 = v15;
    v46 = &v43 - ((v16 + 15) & 0x3FFFFFFFFFFFFFF0);
    sub_100011624(0, v15, v46);
    v47 = 0;
    v22 = 0;
    a3 = a1 + 56;
    v23 = 1 << *(a1 + 32);
    v24 = -1;
    if (v23 < 64)
    {
      v24 = ~(-1 << v23);
    }

    v25 = v24 & *(a1 + 56);
    v4 = (v23 + 63) >> 6;
    HIDWORD(v54) = enum case for LoadState.loaded(_:);
    v53 = (v9 + 104);
    v55 = a1;
    v56 = (v9 + 8);
    v15 = v57;
    v16 = v59;
    while (v25)
    {
      v26 = __clz(__rbit64(v25));
      v58 = (v25 - 1) & v25;
LABEL_12:
      v29 = v26 | (v22 << 6);
      v30 = *(a1 + 48);
      v52 = v29;
      a2 = *(v30 + 8 * v29);
      v31 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState;
      swift_beginAccess();
      sub_1000192DC(v31 + a2, v16);
      (*v53)(v15, HIDWORD(v54), State);
      sub_100011B14(&dword_1001BA628, &type metadata accessor for LoadState);

      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      if (v62 == v60 && v63 == v61)
      {

LABEL_19:
        v34 = v59 + *(v51 + 20);
        dispatch thunk of RawRepresentable.rawValue.getter();
        v15 = v57;
        dispatch thunk of RawRepresentable.rawValue.getter();
        v9 = v61;
        if (v62 == v60 && v63 == v61)
        {

          (*v56)(v15, State);
          sub_100019338();
        }

        else
        {
          HIDWORD(v48) = _stringCompareWithSmolCheck(_:_:expecting:)();

          (*v56)(v15, State);
          sub_100019338();
          if ((v48 & 0x100000000) == 0)
          {
            goto LABEL_24;
          }
        }

        a1 = v55;
        v25 = v58;
        v16 = v59;
      }

      else
      {
        v33 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v33)
        {
          goto LABEL_19;
        }

        v15 = v57;
        (*v56)();
        sub_100019338();
LABEL_24:
        v9 = sub_10002D88C(a2);

        a1 = v55;
        v25 = v58;
        v16 = v59;
        if (v9)
        {
          *(v46 + ((v52 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v52;
          if (__OFADD__(v47++, 1))
          {
            __break(1u);
          }
        }
      }
    }

    v27 = v22;
    while (1)
    {
      v22 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      if (v22 >= v4)
      {
        sub_1000120FC(v46, v44, v47, a1, v18, v19, v20, v21, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64);
        v38 = v37;

        goto LABEL_31;
      }

      v28 = *(a3 + 8 * v22);
      ++v27;
      if (v28)
      {
        v26 = __clz(__rbit64(v28));
        v58 = (v28 - 1) & v28;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_34:

    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v40 = swift_slowAlloc();

  v41 = v4;
  sub_1000D8910(v40, v15);
  v38 = v42;

  if (v41)
  {
  }

  else
  {

LABEL_31:
  }

  return v38;
}

uint64_t sub_10004A128()
{
  v1 = *(v0 + 256);
  v2 = *(v0 + 264);
  sub_10001E72C(*(v0 + 96), v1, &qword_1001BB410, &unk_100172340);
  v3 = sub_10000C6C0(v1, 1, v2);
  v4 = *(v0 + 280);
  if (v3 == 1)
  {
    v6 = *(v0 + 256);
    v5 = *(v0 + 264);
    type metadata accessor for RequestMetadata();
    UUIDIdentifier.init()();
    if (sub_10000C1F0(v6) != 1)
    {
      sub_10000ECD8(*(v0 + 256), &qword_1001BB410, &unk_100172340);
    }
  }

  else
  {
    (*(*(v0 + 272) + 32))(*(v0 + 280), *(v0 + 256), *(v0 + 264));
  }

  v64 = *(v0 + 320);
  v8 = *(v0 + 296);
  v7 = *(v0 + 304);
  v57 = *(v0 + 288);
  v63 = *(v0 + 280);
  v9 = *(v0 + 248);
  v10 = *(v0 + 232);
  v58 = *(v0 + 224);
  v11 = *(v0 + 128);
  v60 = *(v0 + 120);
  v62 = *(v0 + 112);
  v59 = *(v0 + 96);
  v56 = *(v0 + 416);
  v61 = *(v0 + 88);
  v12 = (v11 + *(v0 + 328));
  v13 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_telemetryManager;
  *(v0 + 344) = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_telemetryManager;
  v54 = *(v11 + v13 + 32);
  v55 = *(v11 + v13 + 24);
  sub_100003370((v11 + v13), v55);
  v14 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_descriptor;
  *(v0 + 352) = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_descriptor;
  v15 = InferenceProviderAssetDescriptor.modelCatalogIdentifier.getter();
  v52 = v16;
  v53 = v15;
  v65 = v14;
  v17 = InferenceProviderAssetDescriptor.version.getter();
  v50 = v18;
  v51 = v17;
  v67 = enum case for LoadState.loaded(_:);
  v66 = *(v10 + 104);
  v66(v9);
  v19 = v12[4];
  sub_100003370(v12, v12[3]);
  v20 = *(v19 + 8);
  v21 = sub_100019498();
  v22(v21, v19);
  v23 = InferenceProviderDescriptor.id.getter();
  v25 = v24;
  v26 = *(v8 + 8);
  *(v0 + 360) = v26;
  *(v0 + 368) = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v26(v7, v57);
  *(v0 + 376) = (*(v54 + 40))(v63, v53, v52, v51, v50, v62, v9, v61, v56 & 1, v23, v25, v59, *(&v59 + 1), v60, v55, v54);

  v27 = *(v10 + 8);
  *(v0 + 384) = v27;
  *(v0 + 392) = (v10 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v27(v9, v58);

  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    sub_1000033D0();
    v69 = swift_slowAlloc();
    sub_1000195F8(4.8149e-34);
    sub_100005168();
    sub_100011B5C(v31, v32);
    v33 = dispatch thunk of CustomStringConvertible.description.getter();
    v35 = sub_10001127C(v33, v34);

    *(v30 + 4) = v35;
    _os_log_impl(&_mh_execute_header, v28, v29, "loadIn executing on %s", v30, 0xCu);
    sub_100003324(v69);
    sub_100002BD0();

    sub_1000039CC();
  }

  v36 = *(v0 + 240);
  v37 = *(v0 + 224);
  v38 = (*(v0 + 128) + *(v0 + 328));
  v39 = v38[3];
  v40 = v38[4];
  sub_100003370(v38, v39);
  (v66)(v36, v67, v37);
  v41 = *(v40 + 40);
  sub_100004B94();
  v68 = (v42 + *v42);
  v44 = *(v43 + 4);
  v45 = swift_task_alloc();
  *(v0 + 400) = v45;
  *v45 = v0;
  v45[1] = sub_10005548C;
  v46 = *(v0 + 280);
  v47 = *(v0 + 240);
  v48 = *(v0 + 112);

  return v68(v11 + v65, v47, v48, v46, v39, v40);
}

uint64_t sub_10004A618()
{
  sub_100002BAC();
  sub_100001EF4();
  v3 = v2;
  sub_100004B40();
  *v4 = v3;
  v6 = *(v5 + 424);
  v7 = *v1;
  sub_100002B9C();
  *v8 = v7;
  v3[54] = v0;

  if (v0)
  {
    v9 = v3[52];
    v10 = v3[26];

    v11 = sub_1000C4FF0;
    v12 = v10;
  }

  else
  {
    v12 = v3[26];
    v11 = sub_100049768;
  }

  return _swift_task_switch(v11, v12, 0);
}

uint64_t sub_10004A728(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_100002C00(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_10004A7A4()
{
  sub_100002BAC();
  v3 = v2;
  *(v1 + 120) = v4;
  *(v1 + 128) = v0;
  *(v1 + 104) = v5;
  *(v1 + 112) = v6;
  *(v1 + 88) = v7;
  *(v1 + 96) = v8;
  *(v1 + 416) = v9;
  *(v1 + 80) = v2;
  v10 = type metadata accessor for AssetCost();
  *(v1 + 136) = v10;
  sub_100002F44(v10);
  *(v1 + 144) = v11;
  v13 = *(v12 + 64);
  *(v1 + 152) = sub_100002C58();
  v14 = type metadata accessor for ModelManagerError();
  *(v1 + 160) = v14;
  sub_100002F44(v14);
  *(v1 + 168) = v15;
  v17 = *(v16 + 64);
  *(v1 + 176) = sub_10000BF98();
  *(v1 + 184) = swift_task_alloc();
  v18 = type metadata accessor for InferenceError();
  *(v1 + 192) = v18;
  sub_100002F44(v18);
  *(v1 + 200) = v19;
  v21 = *(v20 + 64);
  *(v1 + 208) = sub_10000BF98();
  *(v1 + 216) = swift_task_alloc();
  State = type metadata accessor for LoadState();
  *(v1 + 224) = State;
  sub_100002F44(State);
  *(v1 + 232) = v23;
  v25 = *(v24 + 64);
  *(v1 + 240) = sub_10000BF98();
  *(v1 + 248) = swift_task_alloc();
  v26 = sub_100065020(&qword_1001BB410, &unk_100172340);
  sub_100002F04(v26);
  v28 = *(v27 + 64);
  *(v1 + 256) = sub_100002C58();
  v29 = sub_100065020(&qword_1001B8F48, &qword_10016FB30);
  *(v1 + 264) = v29;
  sub_100002F44(v29);
  *(v1 + 272) = v30;
  v32 = *(v31 + 64);
  *(v1 + 280) = sub_100002C58();
  v33 = type metadata accessor for InferenceProviderDescriptor();
  *(v1 + 288) = v33;
  sub_100002F44(v33);
  *(v1 + 296) = v34;
  v36 = *(v35 + 64);
  *(v1 + 304) = sub_100002C58();
  v37 = sub_100065020(&qword_1001B9D00, &qword_100171E00);
  sub_100002F04(v37);
  v39 = *(v38 + 64);
  *(v1 + 312) = sub_100002C58();

  return _swift_task_switch(sub_1000476C0, v3, 0);
}

uint64_t sub_10004AA68()
{
  sub_100002BAC();
  sub_100001EF4();
  v2 = *(v1 + 336);
  v3 = *(v1 + 80);
  v4 = *v0;
  sub_100002B9C();
  *v5 = v4;

  v6 = sub_100002C10();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_10004AB60@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_connectionTerminationIdentifier;
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_10004ABD8()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10006FA64;

  return sub_100047FF0();
}

uint64_t sub_10004AC80()
{

  return RequestMetadata.id.getter();
}

void sub_10004AC98(unint64_t a1)
{
  if (sub_10000E8DC(a1))
  {
    sub_100065020(&qword_1001B8C10, &qword_10016F818);
    sub_1000055A4();
    v2 = v5;
    v6 = static _SetStorage.allocate(capacity:)();
  }

  else
  {
    v6 = &_swiftEmptySetSingleton;
  }

  v18 = sub_10001297C(a1);
  if (v18)
  {
    sub_1000199B4();
    while (1)
    {
      v7 = sub_100009D48();
      sub_100022A7C(v7);
      if (v2)
      {
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v8 = *(v17 + 8 * v3);
      }

      v9 = __OFADD__(v3++, 1);
      if (v9)
      {
        break;
      }

      v10 = v6[5];
      Hasher.init(_seed:)();
      sub_10001214C();
      v2 = &v19;
      Hasher._finalize()();
      v11 = *(v6 + 32);
      sub_100011E24();
      while (1)
      {
        sub_10001898C(v12);
        if (v14)
        {
          break;
        }

        type metadata accessor for InferenceProviderAsset(0);
        v15 = sub_100061A8C();
        v2 = sub_100019CE4(v15, v8);

        if (v2)
        {

          goto LABEL_17;
        }

        v12 = v1 + 1;
      }

      sub_10000A84C(v13);
      if (v9)
      {
        goto LABEL_20;
      }

      v6[2] = v16;
LABEL_17:
      if (v3 == v18)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {
LABEL_18:
  }
}

uint64_t sub_10004AE14()
{
  v2 = v0[50];
  v4 = v0[34];
  v3 = v0[35];
  v5 = v0[33];
  v6 = v0[20];

  return type metadata accessor for _OSTransaction();
}

uint64_t sub_10004AE58()
{
  v2 = *(v0 - 272);

  return Logger.logObject.getter();
}

uint64_t sub_10004AE70()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10006FA64;

  return sub_10004AF18();
}

uint64_t sub_10004AF18()
{
  sub_100002BAC();
  v1[7] = v2;
  v1[8] = v0;
  v1[6] = v3;
  v4 = sub_100065020(&qword_1001BB050, &qword_10016F6E0);
  sub_100002F04(v4);
  v6 = *(v5 + 64);
  v1[9] = sub_100002C58();
  v7 = type metadata accessor for ModelManagerError();
  v1[10] = v7;
  sub_100002F44(v7);
  v1[11] = v8;
  v10 = *(v9 + 64);
  v1[12] = sub_10000BF98();
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v11 = sub_100065020(&qword_1001B94F0, &unk_100172060);
  v1[16] = v11;
  sub_100002F44(v11);
  v1[17] = v12;
  v14 = *(v13 + 64);
  v1[18] = sub_10000BF98();
  v1[19] = swift_task_alloc();
  v15 = type metadata accessor for ModelXPCRequest.PrewarmSession();
  v1[20] = v15;
  sub_100002F44(v15);
  v1[21] = v16;
  v1[22] = *(v17 + 64);
  v1[23] = sub_10000BF98();
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v18 = sub_100003000();

  return _swift_task_switch(v18, v19, v20);
}

uint64_t sub_10004B0E0()
{
  sub_100007B84();
  if (qword_1001B8AE0 != -1)
  {
    sub_10000881C();
  }

  v1 = v0[25];
  v2 = v0[20];
  v3 = v0[21];
  v4 = v0[8];
  v5 = type metadata accessor for Logger();
  v6 = sub_10000641C(v5, qword_1001BE400);
  v0[26] = v6;
  v0[27] = *(v3 + 16);
  v0[28] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7 = sub_10000CC04();
  v8(v7);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.info.getter();
  v11 = sub_1000038BC(v10);
  v12 = v0[25];
  v13 = v0[20];
  v14 = v0[21];
  if (v11)
  {
    v15 = v0[19];
    v16 = v0[16];
    v17 = v0[17];
    sub_100007698();
    sub_100003890();
    sub_100003E74(4.8149e-34);
    ModelXPCRequest.PrewarmSession.sessionID.getter();
    sub_100005070();
    sub_1000082D4(v18, v19, v20);
    sub_100003E14();
    dispatch thunk of CustomStringConvertible.description.getter();
    (*(v17 + 8))(v15, v16);
    v21 = *(v14 + 8);
    v21(v12, v13);
    v22 = sub_100007660();
    v25 = sub_100004A3C(v22, v23, v24);

    *(v6 + 4) = v25;
    sub_10000EEC0(&_mh_execute_header, "XPC Handling prewarmSession for client session %s", v4);
    sub_100003A7C();
    sub_10000706C();
  }

  else
  {

    v21 = *(v14 + 8);
    v21(v12, v13);
  }

  v0[29] = v21;
  sub_100002EC0(v0[7]);
  v0[30] = *(v26 + 128);
  sub_10000ECC0();
  sub_10000209C();
  sub_100003D04();

  return _swift_task_switch(v27, v28, v29);
}

uint64_t sub_10004B2D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void (*a12)(uint64_t, uint64_t), uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  sub_1000133FC();
  a25 = v27;
  a26 = v28;
  sub_10000C72C();
  a24 = v26;
  v29 = *(v26 + 248);
  v30 = *(v26 + 64);
  v31 = swift_task_alloc();
  *(v31 + 16) = v30;
  v32 = sub_100018BC4(sub_10004B724, v31, v29);
  *(v26 + 256) = v32;
  *(v26 + 264) = 0;

  if (v32)
  {
    sub_100002EC0(*(v26 + 56));
    v34 = *(v33 + 128);
    v35 = OBJC_IVAR____TtC13modelmanagerd13DaemonSession_metadata;
    *(v26 + 272) = v34;
    *(v26 + 280) = v35;
    *(v26 + 288) = OBJC_IVAR____TtC13modelmanagerd13DaemonSession_auditToken;
    sub_10000ECC0();
    sub_10000209C();
    sub_1000037A0();

    return _swift_task_switch(v36, v37, v38);
  }

  else
  {
    v40 = *(v26 + 224);
    v41 = *(v26 + 208);
    (*(v26 + 216))(*(v26 + 192), *(v26 + 64), *(v26 + 160));
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.fault.getter();
    v44 = sub_10000320C(v43);
    v45 = *(v26 + 232);
    v46 = *(v26 + 192);
    v47 = *(v26 + 160);
    v48 = *(v26 + 168);
    if (v44)
    {
      v49 = *(v26 + 152);
      a12 = *(v26 + 232);
      v51 = *(v26 + 128);
      v50 = *(v26 + 136);
      sub_100007698();
      a10 = v47;
      a14 = sub_100003890();
      sub_100003658(4.8149e-34);
      ModelXPCRequest.PrewarmSession.sessionID.getter();
      sub_100005070();
      sub_1000082D4(v52, v53, v54);
      sub_100003E14();
      v55 = dispatch thunk of CustomStringConvertible.description.getter();
      v57 = v56;
      v58 = sub_100036E74();
      v59(v58);
      a12(v46, v47);
      sub_100004A3C(v55, v57, &a14);
      sub_10001AFBC();
      *(v47 + 4) = v55;
      sub_10000EEC0(&_mh_execute_header, "Trying to prewarm session %s but it's not found in SessionManager", BYTE4(a11));
      sub_100003A7C();
      sub_10000706C();
    }

    else
    {

      v45(v46, v47);
    }

    v60 = *(v26 + 80);
    v61 = *(v26 + 88);
    sub_100005E30();
    sub_100003814(v62, v63);
    v74 = sub_10000A418();
    (*(v61 + 104))(v64, enum case for ModelManagerError.internalError(_:), v60);
    swift_willThrow();
    sub_100061B10();

    sub_100001F00();
    sub_1000037A0();

    return v66(v65, v66, v67, v68, v69, v70, v71, v72, a9, a10, a11, a12, v74, a14, a15, a16, a17, a18);
  }
}

uint64_t sub_10004B5BC(void *a1)
{
  v2 = sub_100065020(&qword_1001B94F0, &unk_100172060);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = v13 - v8;
  v10 = *a1 + OBJC_IVAR____TtC13modelmanagerd13DaemonSession_metadata;
  Session.Metadata.id.getter();
  ModelXPCRequest.PrewarmSession.sessionID.getter();
  type metadata accessor for Session();
  LOBYTE(v10) = static UUIDIdentifier.== infix(_:_:)();
  v11 = *(v3 + 8);
  v11(v7, v2);
  v11(v9, v2);
  return v10 & 1;
}

uint64_t sub_10004B744()
{
  sub_100001ED0();
  v2 = v0[33];
  v1 = v0[34];
  v0[37] = sub_10001B304(v0[32] + v0[35], v0[32] + v0[36]);
  v0[38] = v2;
  v3 = v0[34];

  sub_1000059F8();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_10004B7DC(uint64_t a1)
{
  sub_100004CBC();
  swift_beginAccess();
  v4 = *(v1 + 112);
  v12[2] = a1;

  v5 = sub_100018BC4(sub_1000352A4, v12, v4);

  if (v5)
  {

    sub_10004B958();

    if (v2)
    {
    }
  }

  else
  {
    v5 = type metadata accessor for ModelManagerError();
    sub_100005C00();
    sub_100015F10(v6, 255, v7);
    sub_100007894();
    swift_allocError();
    v9 = v8;
    sub_100065020(&qword_1001B94F0, &unk_100172060);
    UUIDIdentifier.uuid.getter();
    sub_100006098(v5);
    (*(v10 + 104))(v9);
    swift_willThrow();
  }

  return v5;
}

uint64_t sub_10004B958()
{
  v1 = sub_100065020(&qword_1001B94F0, &unk_100172060);
  v2 = sub_100002BDC(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  result = __chkstk_darwin(v2);
  v9 = &v19 - v8;
  if (*(v0 + OBJC_IVAR____TtC13modelmanagerd13DaemonSession_unsafeManagerOwnedState + 16) == 1)
  {
    if (qword_1001B89B0 != -1)
    {
      sub_100008724();
    }

    v10 = type metadata accessor for Logger();
    sub_10000641C(v10, qword_1001BC6C0);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "session cancelled, returning error", v13, 2u);
      sub_100002BB8();
    }

    v14 = type metadata accessor for ModelManagerError();
    sub_1000114EC();
    sub_1000218A0(v15, v16);
    swift_allocError();
    v18 = v17;
    Session.Metadata.id.getter();
    UUIDIdentifier.uuid.getter();
    (*(v4 + 8))(v9, v1);
    (*(*(v14 - 8) + 104))(v18, enum case for ModelManagerError.sessionInCancelState(_:), v14);
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_10004BB90()
{
  swift_getKeyPath();
  sub_10004BBE8();
  sub_100003AD0();

  return sub_1000062B0();
}

void sub_10004BBE8()
{
  v2 = type metadata accessor for DaemonSession.LazyState(0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + OBJC_IVAR____TtC13modelmanagerd13DaemonSession__lazyState);
  v7 = *(*v6 + class metadata base offset for ManagedBuffer + 16);
  v8 = (*(*v6 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v6 + v8));
  sub_10004BDD4(&v9);
  if (!v1)
  {
    os_unfair_lock_unlock((v6 + v8));
    if (v10)
    {
      return;
    }

    sub_10001AE40();
    swift_getAtKeyPath();
    if (v10)
    {
      sub_1000125E8(v5, type metadata accessor for DaemonSession.LazyState);
      return;
    }

    __break(1u);
  }

  os_unfair_lock_unlock((v6 + v8));
  __break(1u);
}

uint64_t sub_10004BDA8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10004BD70();
  if (!v1)
  {
    *a1 = result;
    a1[1] = v4;
  }

  return result;
}

void sub_10004BE14()
{
  sub_1000055B0();
  v2 = v1;
  v35 = v3;
  v36 = v4;
  v6 = v5;
  v8 = v7;
  v9 = sub_100065020(&qword_1001B94F0, &unk_100172060);
  sub_100002BDC(v9);
  v11 = v10;
  v13 = *(v12 + 64);
  sub_100004B1C();
  __chkstk_darwin(v14);
  sub_100008290();
  sub_100003058(OBJC_IVAR____TtC13modelmanagerd19TelemetrySignposter_preWarmPostString);
  v38 = v15;
  v37 = *(v16 + 16);
  (*(v11 + 16))(v0, v8, v9);
  v17 = type metadata accessor for OSSignpostID();
  v18 = sub_100002BDC(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  __chkstk_darwin(v18);
  sub_100002B8C();
  v25 = v24 - v23;

  static OSSignpostID.exclusive.getter();
  v26 = OSSignposter.logHandle.getter();
  v27 = static os_signpost_type_t.event.getter();
  if ((OS_os_log.signpostsEnabled.getter() & 1) == 0)
  {
    goto LABEL_5;
  }

  v34 = v20;
  if ((v37 & 1) == 0)
  {
    v20 = v6;

    if (!v38)
    {
      __break(1u);
LABEL_5:

      (*(v20 + 8))(v25, v17);
      (*(v11 + 8))(v0, v9);
LABEL_11:
      sub_100002EEC();
      return;
    }

LABEL_10:
    sub_1000031E0();
    v39 = sub_100013E88();
    *v27 = 136446722;
    v30 = UUIDIdentifier.uuidString.getter();
    v32 = sub_10001127C(v30, v31);

    *(v27 + 4) = v32;
    (*(v11 + 8))(v0, v9);
    *(v27 + 12) = 2082;
    *(v27 + 14) = sub_100004A3C(v35, v20, &v39);
    *(v27 + 22) = 2082;
    *(v27 + 24) = sub_100004A3C(v36, v2, &v39);
    v33 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v26, v27, v33, v38, "sessionIdentifier: %{public, signpost.description=attribute,public}s\ninferenceProviderIdentifier: %{public, signpost.description=attribute,public}s\nassetBundleIdentifier: %{public, signpost.description=attribute,public}s", v27, 0x20u);
    sub_100012500();
    swift_arrayDestroy();
    sub_100003A4C();
    sub_100012A9C();

    (*(v34 + 8))(v25, v17);
    goto LABEL_11;
  }

  if (v38 >> 32)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  sub_100011408();
  if (!v28)
  {
    sub_100005704();
    if (!(!v28 & v29))
    {
      v20 = v6;

      v38 = &v39;
      goto LABEL_10;
    }

    goto LABEL_13;
  }

LABEL_14:
  __break(1u);
}

uint64_t sub_10004C178()
{
  GenerativeFunctionsInstrumentationEvent.eventType.setter();
  v0 = type metadata accessor for GenerativeFunctionsInstrumentationEvent.Identifiers();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0);
  static Buildable.with(_:)();
  return GenerativeFunctionsInstrumentationEvent.identifiers.setter();
}

uint64_t sub_10004C2F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = sub_100065020(&qword_1001B9060, &unk_10016FCD0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v20[-v11];
  sub_100065020(&qword_1001B94F0, &unk_100172060);
  UUIDIdentifier.uuid.getter();
  v13 = type metadata accessor for UUID();
  sub_100009BFC(v12, 0, 1, v13);
  GenerativeFunctionsInstrumentationEvent.Identifiers.modelManagerSessionIdentifier.setter();

  GenerativeFunctionsInstrumentationEvent.Identifiers.inferenceProviderIdentifier.setter();
  v14 = sub_100065020(&qword_1001BD088, &qword_100173968);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v20[-v16];
  v18 = type metadata accessor for GenerativeFunctionsInstrumentationEvent.CatalogResourceIdentifierAndVersion();
  v21 = a6;
  v22 = a7;
  v23 = 0;
  v24 = 0;
  static Buildable.with(_:)();
  sub_100009BFC(v17, 0, 1, v18);
  return GenerativeFunctionsInstrumentationEvent.Identifiers.catalogResourceIdentifier.setter();
}

uint64_t sub_10004C4B4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = a3;
  v49 = *a3;
  State = type metadata accessor for LoadState();
  v8 = *(State - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(State);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = type metadata accessor for InferenceProviderAsset.ManagerOwnedState(0);
  v12 = *(*(v43 - 8) + 64);
  __chkstk_darwin(v43);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 0xC000000000000001) != 0)
  {
    v41 = v3;
    v44 = &_swiftEmptySetSingleton;
    v66 = &_swiftEmptySetSingleton;

    v50 = __CocoaSet.makeIterator()();
    HIDWORD(v47) = enum case for LoadState.unloaded(_:);
    v45 = (v8 + 8);
    v46 = (v8 + 104);
    v48 = a2;
    while (1)
    {
      v15 = __CocoaSet.Iterator.next()();
      if (!v15)
      {

        a1 = v44;
        goto LABEL_25;
      }

      v16 = v4;
      v51 = v15;
      swift_dynamicCast();
      v17 = v65;
      v18 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState;
      swift_beginAccess();
      sub_1000192DC(v18 + v17, v14);
      (*v46)(v11, HIDWORD(v47), State);
      sub_100011B14(&dword_1001BA628, &type metadata accessor for LoadState);
      v19 = v14;
      dispatch thunk of RawRepresentable.rawValue.getter();
      v20 = v11;
      dispatch thunk of RawRepresentable.rawValue.getter();
      if (v51 == v60 && v52 == v61)
      {
        break;
      }

      v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v22)
      {
        goto LABEL_16;
      }

      v23 = &v19[*(v43 + 20)];
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      if (v51 == v60 && v52 == v61)
      {
        break;
      }

      HIDWORD(v42) = _stringCompareWithSmolCheck(_:_:expecting:)();

      (*v45)(v11, State);
      sub_100019338();
      v4 = v16;
      if ((v42 & 0x100000000) == 0)
      {
        goto LABEL_21;
      }

LABEL_17:
      if (!sub_10002D88C(v17))
      {
LABEL_21:

        goto LABEL_22;
      }

      v32 = v65;
      v33 = v44[2];
      if (v44[3] <= v33)
      {
        sub_100080444(v33 + 1, v25, v26, v27, v28, v29, v30, v31, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64);
      }

      v34 = v66;
      v35 = v66[5];
      Hasher.init(_seed:)();
      sub_10001214C();
      Hasher._finalize()();
      v36 = -1 << v34[32];
      v37 = _HashTable.nextHole(atOrAfter:)();
      *&v34[((v37 >> 3) & 0x1FFFFFFFFFFFFFF8) + 56] |= 1 << v37;
      *(*(v34 + 6) + 8 * v37) = v32;
      v38 = *(v34 + 2) + 1;
      v44 = v34;
      *(v34 + 2) = v38;
LABEL_22:
      v11 = v20;
      v14 = v19;
    }

LABEL_16:
    (*v45)(v11, State);
    sub_100019338();
    v4 = v16;
    goto LABEL_17;
  }

  v39 = sub_10004CA28(a1, a2, v4);
  if (v3)
  {
  }

  else
  {
    a1 = v39;

LABEL_25:
  }

  return a1;
}

uint64_t sub_10004CA28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  State = type metadata accessor for LoadState();
  v8 = *(State - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(State);
  v59 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for InferenceProviderAsset.ManagerOwnedState(0);
  v11 = *(*(v48 - 8) + 64);
  __chkstk_darwin(v48);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v12) = *(a1 + 32);
  v14 = v12 & 0x3F;
  v15 = ((1 << v12) + 63) >> 6;
  v16 = 8 * v15;

  if (v14 > 0xD)
  {
    goto LABEL_34;
  }

  while (2)
  {
    v60 = v13;
    v47 = v4;
    v45 = &v44;
    __chkstk_darwin(v17);
    v46 = v15;
    v49 = &v44 - ((v16 + 15) & 0x3FFFFFFFFFFFFFF0);
    sub_100011624(0, v15, v49);
    v50 = 0;
    v22 = 0;
    v13 = (a1 + 56);
    v23 = 1 << *(a1 + 32);
    v24 = -1;
    if (v23 < 64)
    {
      v24 = ~(-1 << v23);
    }

    v15 = v24 & *(a1 + 56);
    v4 = (v23 + 63) >> 6;
    HIDWORD(v54) = enum case for LoadState.unloaded(_:);
    v52 = (v8 + 8);
    v53 = (v8 + 104);
    v56 = a3;
    v57 = a2;
    v8 = State;
    v55 = a1;
    while (v15)
    {
      v25 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_12:
      v28 = v25 | (v22 << 6);
      v29 = *(a1 + 48);
      v51 = v28;
      v30 = *(v29 + 8 * v28);
      v31 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState;
      swift_beginAccess();
      sub_1000192DC(v31 + v30, v60);
      (*v53)(v59, HIDWORD(v54), v8);
      sub_100011B14(&dword_1001BA628, &type metadata accessor for LoadState);

      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      if (v63 == v61 && v64 == v62)
      {

        v34 = v59;
LABEL_24:
        v8 = State;
        (*v52)(v34, State);
        sub_100019338();
        goto LABEL_25;
      }

      v33 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v34 = v59;
      if (v33)
      {
        goto LABEL_24;
      }

      v35 = &v60[*(v48 + 20)];
      v8 = State;
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      v16 = v64;
      if (v63 == v61 && v64 == v62)
      {

        goto LABEL_24;
      }

      HIDWORD(v44) = _stringCompareWithSmolCheck(_:_:expecting:)();

      (*v52)(v34, v8);
      sub_100019338();
      if ((v44 & 0x100000000) != 0)
      {
LABEL_25:
        a3 = v56;
        a2 = v57;
        v16 = sub_10002D88C(v30);

        a1 = v55;
        if (v16)
        {
          *(v49 + ((v51 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v51;
          if (__OFADD__(v50++, 1))
          {
            __break(1u);
          }
        }
      }

      else
      {

        a3 = v56;
        a2 = v57;
        a1 = v55;
      }
    }

    v26 = v22;
    while (1)
    {
      v22 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      if (v22 >= v4)
      {
        sub_1000120FC(v49, v46, v50, a1, v18, v19, v20, v21, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, State, v59, v60, v61, v62, v63, v64, v65);
        v39 = v38;

        goto LABEL_31;
      }

      v27 = *&v13[8 * v22];
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v15 = (v27 - 1) & v27;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_34:

    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v41 = swift_slowAlloc();

  v42 = v4;
  sub_1000D8910(v41, v15);
  v39 = v43;

  if (v42)
  {
  }

  else
  {

LABEL_31:
  }

  return v39;
}

uint64_t sub_10004D094()
{
  v3 = v0[46];
  v2 = v0[47];
  v4 = v0[45];
  v5 = v0[41];
  v6 = v0[37];
  v7 = v0[23];
}

void sub_10004D0BC(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, os_log_t log, int a10, os_log_type_t a11)
{

  _os_log_impl(a1, log, a11, a4, v11, 0x16u);
}

uint64_t sub_10004D0E4()
{
  sub_10000C6C0(v1, 1, v0);
}

void sub_10004D11C()
{
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[13];
  v6 = v0[14];
  v5 = v0[11];
  v4 = v0[12];
}

uint64_t sub_10004D130()
{
  v3 = v0[40];
  v2 = v0[41];
  v5 = v0[38];
  v4 = v0[39];
  v6 = v0[35];
}

uint64_t sub_10004D164(uint64_t a1, uint64_t a2, char a3)
{
  v5 = v3;
  if (*(v3 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_dynamicModeAllowed) == 1)
  {
    v9 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState;
    sub_100002D24();
    swift_beginAccess();
    sub_10004D420(v9 + v5, v5, a1, a2, a3 & 1, &v27);
    result = swift_endAccess();
    if (!v4)
    {
      return v27;
    }
  }

  else
  {
    if (qword_1001B8938 != -1)
    {
      sub_100005C90();
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_10000641C(v11, qword_1001BB478);
    sub_100003170();

    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      sub_1000033D0();
      v15 = swift_slowAlloc();
      v26 = v15;
      *v14 = 136315138;
      type metadata accessor for InferenceProviderAssetDescriptor();
      sub_100005168();
      sub_100011B5C(v16, v17);
      v18 = dispatch thunk of CustomStringConvertible.description.getter();
      v20 = sub_100004A3C(v18, v19, &v26);

      *(v14 + 4) = v20;
      _os_log_impl(&_mh_execute_header, v12, v13, "Tried to move asset %s to dynamic mode that does not support it", v14, 0xCu);
      sub_100003324(v15);
      sub_100002BD0();

      sub_1000039CC();
    }

    v21 = type metadata accessor for ModelManagerError();
    sub_100011B5C(&qword_1001B8F50, &type metadata accessor for ModelManagerError);
    swift_allocError();
    v23 = v22;
    *v22 = InferenceProviderAssetDescriptor.identifier.getter();
    v23[1] = v24;
    sub_100006098(v21);
    (*(v25 + 104))(v23);
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_10004D404@<X0>(uint64_t a1@<X8>)
{
  v4 = *(v1 + (v2 | (8 * a1)));
}

uint64_t sub_10004D420@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, void *a6@<X8>)
{
  v225 = a6;
  v222 = a5;
  v221 = a4;
  v223 = a3;
  v8 = sub_100065020(&qword_1001BB050, &qword_10016F6E0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v224 = (&v208 - v10);
  v11 = type metadata accessor for InferenceProviderDescriptor();
  v228 = *(v11 - 8);
  v12 = *(v228 + 64);
  __chkstk_darwin(v11);
  v227 = &v208 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  State = type metadata accessor for LoadState();
  v229 = *(State - 8);
  v14 = v229[8];
  v15 = __chkstk_darwin(State);
  v16 = &v208 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v19 = &v208 - v18;
  v20 = __chkstk_darwin(v17);
  v22 = &v208 - v21;
  v23 = __chkstk_darwin(v20);
  v230 = &v208 - v24;
  __chkstk_darwin(v23);
  v26 = &v208 - v25;
  v27 = type metadata accessor for InferenceProviderAsset.ManagerOwnedState(0);
  if (*(a1 + *(v27 + 52)))
  {
    if (qword_1001B8938 != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    sub_10000641C(v28, qword_1001BB478);

    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.fault.getter();

    if (!os_log_type_enabled(v29, v30))
    {
      goto LABEL_12;
    }

    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v231 = v32;
    *v31 = 136315138;
    type metadata accessor for InferenceProviderAssetDescriptor();
    sub_100011B5C(&qword_1001BA470, &type metadata accessor for InferenceProviderAssetDescriptor);
    v33 = dispatch thunk of CustomStringConvertible.description.getter();
    v35 = sub_100004A3C(v33, v34, &v231);

    *(v31 + 4) = v35;
    _os_log_impl(&_mh_execute_header, v29, v30, "Tried to move invalidated asset to dynamic mode: %s", v31, 0xCu);
    sub_100003324(v32);

LABEL_11:

LABEL_12:

    v53 = type metadata accessor for ModelManagerError();
    sub_100011B5C(&qword_1001B8F50, &type metadata accessor for ModelManagerError);
    swift_allocError();
    (*(*(v53 - 8) + 104))(v54, enum case for ModelManagerError.internalError(_:), v53);
    return swift_willThrow();
  }

  v36 = v27;
  v37 = *(v27 + 28);
  v38 = *(a1 + v37);
  v220 = v11;
  if (v38)
  {
    if (qword_1001B8938 != -1)
    {
      swift_once();
    }

    v39 = type metadata accessor for Logger();
    sub_10000641C(v39, qword_1001BB478);

    v29 = Logger.logObject.getter();
    v40 = static os_log_type_t.fault.getter();

    if (!os_log_type_enabled(v29, v40))
    {
      goto LABEL_12;
    }

    v41 = swift_slowAlloc();
    v231 = swift_slowAlloc();
    *v41 = 136315394;
    type metadata accessor for InferenceProviderAssetDescriptor();
    sub_100011B5C(&qword_1001BA470, &type metadata accessor for InferenceProviderAssetDescriptor);
    v42 = dispatch thunk of CustomStringConvertible.description.getter();
    v44 = sub_100004A3C(v42, v43, &v231);

    *(v41 + 4) = v44;
    *(v41 + 12) = 2080;
    v45 = *(a2 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection + 24);
    v46 = *(a2 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection + 32);
    sub_100003370((a2 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection), v45);
    v47 = v227;
    (*(v46 + 8))(v45, v46);
    sub_100011B5C(&qword_1001B9C98, &type metadata accessor for InferenceProviderDescriptor);
    v48 = v220;
    v49 = dispatch thunk of CustomStringConvertible.description.getter();
    v51 = v50;
    (*(v228 + 8))(v47, v48);
    v52 = sub_100004A3C(v49, v51, &v231);

    *(v41 + 14) = v52;
    _os_log_impl(&_mh_execute_header, v29, v40, "unloadIfNecessary called with pending transition task for %s with %s", v41, 0x16u);
    swift_arrayDestroy();

    goto LABEL_11;
  }

  v215 = v22;
  v213 = v37;
  v218 = a2;
  v219 = v26;
  v57 = (v229 + 2);
  v56 = v229[2];
  v58 = v26;
  v59 = State;
  v56(v58, a1, State);
  v60 = *(v36 + 20);
  v216 = v57;
  v217 = v60;
  v61 = v230;
  v62 = v59;
  v63 = v219;
  v56(v230, a1 + v60, v62);
  if (sub_100116D68(v63, v61))
  {
    v64 = *(*(a1 + *(v36 + 48)) + 16);
    v65 = v218;
    if (v64)
    {
      if (qword_1001B8938 != -1)
      {
        swift_once();
      }

      v66 = type metadata accessor for Logger();
      sub_10000641C(v66, qword_1001BB478);

      v67 = Logger.logObject.getter();
      v68 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v67, v68))
      {
        v69 = swift_slowAlloc();
        v231 = swift_slowAlloc();
        *v69 = 136315650;
        type metadata accessor for InferenceProviderAssetDescriptor();
        sub_100011B5C(&qword_1001BA470, &type metadata accessor for InferenceProviderAssetDescriptor);
        v70 = dispatch thunk of CustomStringConvertible.description.getter();
        v72 = sub_100004A3C(v70, v71, &v231);

        *(v69 + 4) = v72;
        *(v69 + 12) = 2080;
        v73 = *(v65 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection + 24);
        v74 = *(v65 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection + 32);
        sub_100003370((v65 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection), v73);
        v75 = v227;
        (*(v74 + 8))(v73, v74);
        sub_100011B5C(&qword_1001B9C98, &type metadata accessor for InferenceProviderDescriptor);
        v76 = v220;
        v77 = dispatch thunk of CustomStringConvertible.description.getter();
        v79 = v78;
        (*(v228 + 8))(v75, v76);
        v80 = sub_100004A3C(v77, v79, &v231);
        v63 = v219;

        *(v69 + 14) = v80;
        *(v69 + 22) = 2048;
        *(v69 + 24) = v64;
        _os_log_impl(&_mh_execute_header, v67, v68, "Not moving asset %s to dynamic mode in %s: in use by %ld execution groups", v69, 0x20u);
        swift_arrayDestroy();
      }

      v81 = State;
      sub_1000DA26C();
      swift_allocError();
      *v82 = 0;
      v82[1] = 0;
      swift_willThrow();
      v83 = v229[1];
      v83(v230, v81);
      return (v83)(v63, v81);
    }

    else
    {
      v210 = v56;
      v214 = a1;
      if (qword_1001B8938 != -1)
      {
        swift_once();
      }

      v118 = type metadata accessor for Logger();
      v119 = sub_10000641C(v118, qword_1001BB478);

      v212 = v119;
      v120 = Logger.logObject.getter();
      v121 = static os_log_type_t.default.getter();

      v122 = os_log_type_enabled(v120, v121);
      v123 = v215;
      if (v122)
      {
        v124 = swift_slowAlloc();
        v209 = v121;
        v125 = v124;
        v211 = swift_slowAlloc();
        v231 = v211;
        *v125 = 136315394;
        v208 = v120;
        type metadata accessor for InferenceProviderAssetDescriptor();
        sub_100011B5C(&qword_1001BA470, &type metadata accessor for InferenceProviderAssetDescriptor);
        v126 = dispatch thunk of CustomStringConvertible.description.getter();
        v128 = sub_100004A3C(v126, v127, &v231);

        *(v125 + 4) = v128;
        *(v125 + 12) = 2080;
        v129 = *(v65 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection + 24);
        v130 = *(v65 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection + 32);
        sub_100003370((v65 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection), v129);
        v131 = v227;
        (*(v130 + 8))(v129, v130);
        sub_100011B5C(&qword_1001B9C98, &type metadata accessor for InferenceProviderDescriptor);
        v132 = v220;
        v133 = dispatch thunk of CustomStringConvertible.description.getter();
        v135 = v134;
        (*(v228 + 8))(v131, v132);
        v136 = sub_100004A3C(v133, v135, &v231);

        *(v125 + 14) = v136;
        v137 = v208;
        _os_log_impl(&_mh_execute_header, v208, v209, "moveToDynamicModeIfNecessary entering for asset %s with %s", v125, 0x16u);
        swift_arrayDestroy();
      }

      else
      {
      }

      v138 = v229;
      v139 = v229[13];
      v209 = enum case for LoadState.dynamicMode(_:);
      v140 = State;
      v211 = v139;
      v139(v123);
      sub_100011B5C(&qword_1001BA468, &type metadata accessor for LoadState);
      v141 = dispatch thunk of static Equatable.== infix(_:_:)();
      v143 = v138[1];
      v142 = v138 + 1;
      v144 = v123;
      v145 = v140;
      v146 = v143;
      (v143)(v144, v140);
      if (v141)
      {
        v229 = v146;
        v147 = v218;

        v148 = Logger.logObject.getter();
        v149 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v148, v149))
        {
          v150 = swift_slowAlloc();
          v231 = swift_slowAlloc();
          *v150 = 136315394;
          type metadata accessor for InferenceProviderAssetDescriptor();
          sub_100011B5C(&qword_1001BA470, &type metadata accessor for InferenceProviderAssetDescriptor);
          v151 = dispatch thunk of CustomStringConvertible.description.getter();
          v153 = sub_100004A3C(v151, v152, &v231);

          *(v150 + 4) = v153;
          *(v150 + 12) = 2080;
          v154 = *(v147 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection + 24);
          v155 = *(v147 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection + 32);
          sub_100003370((v147 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection), v154);
          v156 = v227;
          (*(v155 + 8))(v154, v155);
          sub_100011B5C(&qword_1001B9C98, &type metadata accessor for InferenceProviderDescriptor);
          v157 = v220;
          v158 = dispatch thunk of CustomStringConvertible.description.getter();
          v160 = v159;
          (*(v228 + 8))(v156, v157);
          v161 = sub_100004A3C(v158, v160, &v231);

          *(v150 + 14) = v161;
          _os_log_impl(&_mh_execute_header, v148, v149, "Not moving asset %s to dynamic mode in %s: already in dynamic mode", v150, 0x16u);
          swift_arrayDestroy();

          v162 = v229;
          v163 = State;
          (v229)(v230, State);
          v164 = v219;
        }

        else
        {

          v162 = v229;
          v163 = State;
          (v229)(v230, State);
          v164 = v63;
        }

        result = v162(v164, v163);
        *v225 = 0;
      }

      else
      {
        v165 = v215;
        v211(v215, enum case for LoadState.unloaded(_:), v140);
        v166 = dispatch thunk of static Equatable.== infix(_:_:)();
        v167 = v146;
        (v146)(v165, v145);
        v168 = v142;
        if (v166)
        {
          v170 = v218;
          v169 = v219;
          v229 = v146;

          v171 = Logger.logObject.getter();
          v172 = static os_log_type_t.fault.getter();

          if (os_log_type_enabled(v171, v172))
          {
            v173 = swift_slowAlloc();
            v231 = swift_slowAlloc();
            *v173 = 136315394;
            type metadata accessor for InferenceProviderAssetDescriptor();
            v217 = v168;
            sub_100011B5C(&qword_1001BA470, &type metadata accessor for InferenceProviderAssetDescriptor);
            v174 = dispatch thunk of CustomStringConvertible.description.getter();
            v176 = sub_100004A3C(v174, v175, &v231);

            *(v173 + 4) = v176;
            *(v173 + 12) = 2080;
            v177 = *(v170 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection + 24);
            v178 = *(v170 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection + 32);
            sub_100003370((v170 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection), v177);
            v179 = v227;
            (*(v178 + 8))(v177, v178);
            sub_100011B5C(&qword_1001B9C98, &type metadata accessor for InferenceProviderDescriptor);
            v180 = v220;
            v181 = dispatch thunk of CustomStringConvertible.description.getter();
            v183 = v182;
            (*(v228 + 8))(v179, v180);
            v184 = sub_100004A3C(v181, v183, &v231);
            v169 = v219;

            *(v173 + 14) = v184;
            _os_log_impl(&_mh_execute_header, v171, v172, "Attempting to move an unloaded asset %s to dynamic mode in %s", v173, 0x16u);
            swift_arrayDestroy();
          }

          v185 = State;
          v186 = v229;
          v187 = type metadata accessor for ModelManagerError();
          sub_100011B5C(&qword_1001B8F50, &type metadata accessor for ModelManagerError);
          swift_allocError();
          (*(*(v187 - 8) + 104))(v188, enum case for ModelManagerError.internalError(_:), v187);
          swift_willThrow();
          v186(v230, v185);
          return (v186)(v169, v185);
        }

        else
        {
          v189 = v214;
          v190 = v217;
          (v146)(v217 + v214, v145);
          v211(v190 + v189, v209, v145);
          v231 = 0;
          v232 = 0xE000000000000000;
          _StringGuts.grow(_:)(21);

          v231 = 0xD000000000000013;
          v232 = 0x8000000100176CF0;
          type metadata accessor for InferenceProviderAssetDescriptor();
          sub_100011B5C(&qword_1001BA470, &type metadata accessor for InferenceProviderAssetDescriptor);
          v191 = v218;
          v192._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
          String.append(_:)(v192);

          v227 = v232;
          v228 = v231;
          v193 = type metadata accessor for TaskPriority();
          sub_100009BFC(v224, 1, 1, v193);
          v194 = v215;
          v210(v215, v219, v145);
          v195 = sub_100011B5C(&qword_1001B8BB8, type metadata accessor for InferenceProviderAssetManager);
          v217 = v168;
          v196 = v195;
          v197 = v167;
          v198 = v229;
          v199 = (*(v229 + 80) + 48) & ~*(v229 + 80);
          v200 = (v14 + v199 + 7) & 0xFFFFFFFFFFFFFFF8;
          v201 = swift_allocObject();
          v202 = v223;
          *(v201 + 2) = v223;
          *(v201 + 3) = v196;
          *(v201 + 4) = v191;
          *(v201 + 5) = v202;
          v203 = v194;
          v204 = State;
          (v198[4])(&v201[v199], v203, State);
          v205 = &v201[v200];
          *v205 = v221;
          v205[8] = v222 & 1;
          swift_retain_n();

          sub_100128ED0();
          v207 = v206;
          v197(v230, v204);
          v197(v219, v204);
          *(v214 + v213) = v207;
          *v225 = v207;
        }
      }
    }
  }

  else
  {
    v214 = a1;
    v84 = v218;
    if (qword_1001B8938 != -1)
    {
      swift_once();
    }

    v85 = type metadata accessor for Logger();
    sub_10000641C(v85, qword_1001BB478);
    v86 = State;
    v56(v19, v63, State);
    v56(v16, v230, v86);

    v87 = Logger.logObject.getter();
    v88 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v87, v88))
    {
      v89 = swift_slowAlloc();
      LODWORD(v225) = v88;
      v90 = v89;
      v226 = swift_slowAlloc();
      v231 = v226;
      *v90 = 136315906;
      sub_100011B5C(&qword_1001BA478, &type metadata accessor for LoadState);
      v224 = v87;
      v91 = dispatch thunk of CustomStringConvertible.description.getter();
      v93 = v92;
      v94 = v229[1];
      v223 = (v229 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v94(v19, State);
      v95 = sub_100004A3C(v91, v93, &v231);

      *(v90 + 4) = v95;
      *(v90 + 12) = 2080;
      v96 = v94;
      v97 = dispatch thunk of CustomStringConvertible.description.getter();
      v99 = v98;
      v94(v16, State);
      v86 = State;
      v100 = sub_100004A3C(v97, v99, &v231);

      *(v90 + 14) = v100;
      *(v90 + 22) = 2080;
      type metadata accessor for InferenceProviderAssetDescriptor();
      sub_100011B5C(&qword_1001BA470, &type metadata accessor for InferenceProviderAssetDescriptor);
      v101 = dispatch thunk of CustomStringConvertible.description.getter();
      v103 = sub_100004A3C(v101, v102, &v231);

      *(v90 + 24) = v103;
      *(v90 + 32) = 2080;
      v104 = *(v84 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection + 24);
      v105 = *(v84 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection + 32);
      sub_100003370((v84 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection), v104);
      v106 = *(v105 + 8);
      v107 = v227;
      v108 = v105;
      v63 = v219;
      v106(v104, v108);
      sub_100011B5C(&qword_1001B9C98, &type metadata accessor for InferenceProviderDescriptor);
      v109 = v220;
      v110 = dispatch thunk of CustomStringConvertible.description.getter();
      v112 = v111;
      (*(v228 + 8))(v107, v109);
      v113 = sub_100004A3C(v110, v112, &v231);

      *(v90 + 34) = v113;
      v114 = v224;
      _os_log_impl(&_mh_execute_header, v224, v225, "moveToDynamicModeIfNecessary called with unmatching states (%s != %s) for %s with %s", v90, 0x2Au);
      swift_arrayDestroy();

      v115 = v229;
    }

    else
    {

      v115 = v229;
      v96 = v229[1];
      v96(v16, v86);
      v96(v19, v86);
    }

    (v115[3])(v217 + v214, v63, v86);
    v116 = type metadata accessor for ModelManagerError();
    sub_100011B5C(&qword_1001B8F50, &type metadata accessor for ModelManagerError);
    swift_allocError();
    (*(*(v116 - 8) + 104))(v117, enum case for ModelManagerError.internalError(_:), v116);
    swift_willThrow();
    v96(v230, v86);
    return (v96)(v63, v86);
  }

  return result;
}

uint64_t sub_10004EE44()
{
  State = type metadata accessor for LoadState();
  sub_100002BDC(State);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 48) & ~v4;
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + 2);
  swift_unknownObjectRelease();
  v9 = *(v0 + 4);

  v10 = *(v0 + 5);

  (*(v3 + 8))(&v0[v5], State);

  return _swift_deallocObject(v0, v7 + 9, v4 | 7);
}

uint64_t sub_10004EF24()
{
  State = type metadata accessor for LoadState();
  sub_100002F44(State);
  v4 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v6 = *(v5 + 64);
  sub_100018CEC();
  v7 = *(v0 + 32);
  v8 = *(v0 + 40);
  v10 = v0 + v9;
  v11 = *v10;
  v12 = *(v10 + 8);
  v13 = swift_task_alloc();
  *(v1 + 16) = v13;
  *v13 = v1;
  v13[1] = sub_10006FA64;
  sub_1000038D8();

  return sub_10004F050(v14, v15, v16, v17, v8, v18, v11, v12);
}

uint64_t sub_10004F050(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v8 + 476) = a8;
  *(v8 + 176) = a6;
  *(v8 + 184) = a7;
  *(v8 + 160) = a4;
  *(v8 + 168) = a5;
  v10 = type metadata accessor for AssetCost();
  *(v8 + 192) = v10;
  v11 = *(v10 - 8);
  *(v8 + 200) = v11;
  v12 = *(v11 + 64) + 15;
  *(v8 + 208) = swift_task_alloc();
  v13 = *(*(sub_100065020(&qword_1001BB3F8, &qword_100171D50) - 8) + 64) + 15;
  *(v8 + 216) = swift_task_alloc();
  v14 = *(*(sub_100065020(&qword_1001BB408, &unk_100171DC0) - 8) + 64) + 15;
  *(v8 + 224) = swift_task_alloc();
  v15 = type metadata accessor for InferenceProviderDescriptor();
  *(v8 + 232) = v15;
  v16 = *(v15 - 8);
  *(v8 + 240) = v16;
  v17 = *(v16 + 64) + 15;
  *(v8 + 248) = swift_task_alloc();
  State = type metadata accessor for LoadState();
  *(v8 + 256) = State;
  v19 = *(State - 8);
  *(v8 + 264) = v19;
  v20 = *(v19 + 64) + 15;
  *(v8 + 272) = swift_task_alloc();
  *(v8 + 280) = swift_task_alloc();
  v21 = sub_100065020(&qword_1001B8F48, &qword_10016FB30);
  *(v8 + 288) = v21;
  v22 = *(v21 - 8);
  *(v8 + 296) = v22;
  v23 = *(v22 + 64) + 15;
  *(v8 + 304) = swift_task_alloc();
  *(v8 + 312) = swift_task_alloc();
  v24 = *(*(sub_100065020(&qword_1001BB410, &unk_100172340) - 8) + 64) + 15;
  *(v8 + 320) = swift_task_alloc();
  *(v8 + 328) = swift_task_alloc();
  *(v8 + 336) = swift_task_alloc();

  return _swift_task_switch(sub_10004F314, a5, 0);
}

uint64_t sub_10004F314()
{
  v111 = v1;
  v2 = *(v1 + 336);
  v3 = *(v1 + 288);
  v4 = *(v1 + 160);
  sub_100003978();
  sub_100009BFC(v5, v6, v7, v8);
  v9 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState;
  *(v1 + 344) = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState;
  v10 = &v9[v4];
  sub_100004BA0();
  v11 = type metadata accessor for InferenceProviderAsset.ManagerOwnedState(0);
  *(v1 + 352) = v11;
  sub_1000480AC(&v10[*(v11 + 60)], v1 + 16);
  v12 = *(v1 + 48);
  sub_100003370((v1 + 16), *(v1 + 40));
  v13 = sub_10000C9D8();
  v14(v13);
  if (v0)
  {
    sub_100003324((v1 + 16));
    *(v1 + 448) = v0;
    *(v1 + 456) = 0;
    if (qword_1001B8938 != -1)
    {
      sub_100005C90();
      swift_once();
    }

    v15 = *(v1 + 160);
    v16 = type metadata accessor for Logger();
    sub_10000641C(v16, qword_1001BB478);

    swift_errorRetain();
    v17 = Logger.logObject.getter();
    static os_log_type_t.default.getter();

    if (sub_100019C50())
    {
      v18 = *(v1 + 240);
      v19 = *(v1 + 248);
      v104 = *(v1 + 232);
      v20 = *(v1 + 160);
      sub_1000033D0();
      v21 = swift_slowAlloc();
      v106 = sub_100003788();
      v110[0] = sub_1000080A4();
      *v21 = 136315650;
      type metadata accessor for InferenceProviderAssetDescriptor();
      sub_100005168();
      sub_100011B5C(v22, v23);
      v24 = sub_100013430();
      v26 = v25;
      sub_100004A3C(v24, v25, v110);
      sub_100013E7C();

      sub_100006534();
      v27 = (v20 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection);
      v29 = *(v20 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection + 24);
      v28 = *(v20 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection + 32);
      sub_100003370(v27, v29);
      sub_100003048();
      v30(v29, v28);
      sub_10000866C();
      sub_100011B5C(v31, v32);
      sub_100003E14();
      dispatch thunk of CustomStringConvertible.description.getter();
      v33 = sub_10000F148();
      v34(v33);
      sub_100004A3C(v26, v28, v110);
      sub_100019498();

      sub_100011DD8();
      swift_errorRetain();
      v35 = _swift_stdlib_bridgeErrorToNSError();
      *(v21 + 24) = v35;
      *v106 = v35;
      sub_10003DD68();
      _os_log_impl(v36, v37, v38, v39, v21, 0x20u);
      sub_10000ECD8(v106, &qword_1001B8F68, &qword_10016FB80);
      sub_100002BD0();

      sub_10000BEE8();
      sub_100002BD0();

      sub_100002BD0();
    }

    v40 = swift_task_alloc();
    *(v1 + 464) = v40;
    *v40 = v1;
    v41 = sub_10000A8D4(v40);

    return sub_100041158(v41, v42);
  }

  else
  {
    v101 = *(v1 + 336);
    v107 = *(v1 + 328);
    v93 = *(v1 + 312);
    v102 = *(v1 + 296);
    v109 = *(v1 + 288);
    v44 = *(v1 + 280);
    v105 = *(v1 + 272);
    v46 = *(v1 + 256);
    v45 = *(v1 + 264);
    v95 = v46;
    v47 = *(v1 + 240);
    v48 = *(v1 + 248);
    v85 = *(v1 + 232);
    v91 = *(v1 + 224);
    v92 = *(v1 + 216);
    v94 = *(v1 + 476);
    v96 = *(v1 + 176);
    v97 = *(v1 + 184);
    v49 = *(v1 + 160);
    sub_100003324((v1 + 16));
    type metadata accessor for RequestMetadata();
    UUIDIdentifier.init()();
    v50 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_telemetryManager;
    *(v1 + 360) = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_telemetryManager;
    v51 = *(v49 + v50 + 32);
    v90 = *(v49 + v50 + 24);
    sub_100003370((v49 + v50), v90);
    v103 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_descriptor;
    *(v1 + 368) = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_descriptor;
    v52 = InferenceProviderAssetDescriptor.modelCatalogIdentifier.getter();
    v88 = v53;
    v89 = v52;
    v100 = v49;
    v54 = InferenceProviderAssetDescriptor.version.getter();
    v86 = v55;
    v87 = v54;
    v56 = enum case for LoadState.dynamicMode(_:);
    *(v1 + 472) = enum case for LoadState.dynamicMode(_:);
    v98 = v56;
    v99 = *(v45 + 104);
    *(v1 + 376) = v99;
    *(v1 + 384) = (v45 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
    v99(v44, v56, v46);
    v57 = (v49 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection);
    v59 = *(v49 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection + 24);
    v58 = *(v49 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection + 32);
    sub_100003370(v57, v59);
    sub_100003048();
    v60(v59, v58);
    v61 = InferenceProviderDescriptor.id.getter();
    v63 = v62;
    (*(v47 + 8))(v48, v85);
    sub_100003978();
    sub_100009BFC(v64, v65, v66, v67);
    sub_100065020(&qword_1001B94F0, &unk_100172060);
    sub_100003978();
    sub_100009BFC(v68, v69, v70, v71);
    *(v1 + 392) = type metadata accessor for AuditToken();
    sub_100003978();
    sub_100009BFC(v72, v73, v74, v75);
    *(v1 + 400) = (*(v51 + 40))(v93, v89, v88, v87, v86, v96, v44, v97, v94 & 1, v61, v63, v107, v91, v92, v90, v51);

    sub_10000ECD8(v92, &qword_1001BB3F8, &qword_100171D50);
    sub_10000ECD8(v91, &qword_1001BB408, &unk_100171DC0);
    sub_10000ECD8(v107, &qword_1001BB410, &unk_100172340);
    v76 = *(v45 + 8);
    *(v1 + 408) = v76;
    *(v1 + 416) = (v45 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v76(v44, v95);
    sub_10000ECD8(v101, &qword_1001BB410, &unk_100172340);
    (*(v102 + 16))(v101, v93, v109);
    sub_100009BFC(v101, 0, 1, v109);
    v77 = v57[3];
    v78 = v57[4];
    sub_100003370(v57, v77);
    v99(v105, v98, v95);
    v79 = *(v78 + 40);

    v108 = (v79 + *v79);
    v80 = v79[1];
    v81 = swift_task_alloc();
    *(v1 + 424) = v81;
    *v81 = v1;
    v81[1] = sub_100053144;
    v82 = *(v1 + 312);
    v83 = *(v1 + 272);
    v84 = *(v1 + 176);

    return v108(v100 + v103, v83, v84, v82, v77, v78);
  }
}

void sub_10004FAAC()
{
  sub_10000A274();
  v3 = v1;
  v4 = v0;
  v5 = OBJC_IVAR____TtC13modelmanagerd29InferenceProviderAssetManager_assets;
  sub_100004CBC();
  swift_beginAccess();
  v6 = *&v5[v0];

  sub_100050530(v7, v0);
  v8 = sub_1000BF9CC();

  v107 = v5;
  v9 = *&v5[v0];

  sub_10000D154();
  v10 = v3;
  if ((sub_100050FF0(v11, v12, v13) & 0xC000000000000001) != 0)
  {
    v109 = v3;
    v14 = &_swiftEmptySetSingleton;
    v121 = &_swiftEmptySetSingleton;
    sub_1000DAF00();
    swift_retain_n();

    __CocoaSet.makeIterator()();
    while (1)
    {
      v15 = __CocoaSet.Iterator.next()();
      if (!v15)
      {
        break;
      }

      v110 = v15;
      type metadata accessor for InferenceProviderAsset(0);
      sub_1000358A4();
      swift_dynamicCast();
      v16 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState + v120[0];
      sub_100004CBC();
      swift_beginAccess();
      v17 = *&v16[*(type metadata accessor for InferenceProviderAsset.ManagerOwnedState(0) + 40)];

      v18 = sub_10000CDA4();
      v20 = sub_1000521D4(v18, v19);

      v2 = v120[0];
      if (v20)
      {
        v28 = v14[2];
        if (v14[3] <= v28)
        {
          sub_100080444(v28 + 1, v21, v22, v23, v24, v25, v26, v27, v96[4], v97, v98, v99, v100, v101, v102, *(&v102 + 1), v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118);
        }

        v14 = v121;
        v29 = v121[5];
        Hasher.init(_seed:)();
        sub_10001214C();
        Hasher._finalize()();
        v30 = -1 << *(v121 + 32);
        v31 = _HashTable.nextHole(atOrAfter:)();
        sub_1000DAD98((v31 >> 3) & 0x1FFFFFFFFFFFFFF8);
        *(v121[6] + 8 * v32) = v120[0];
        ++v14[2];
      }

      else
      {
      }
    }

    sub_1000DB3C4();
    swift_bridgeObjectRelease_n();
    sub_1000DAF00();

    v10 = v109;
  }

  else
  {

    v33 = sub_100001F70();
    v14 = sub_100051EA0(v33, v34, v8);
  }

  v35 = sub_10005230C(v14, sub_1000527AC, v4);
  v36 = v10;

  if (v35 && (*(v35 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_dynamicModeAllowed) & 1) == 0)
  {
    v37 = *&v107[v4];

    sub_1000527C8(v38, v4);
    v108 = sub_1000BF9CC();
    v109 = v36;

    v39 = 1;
    swift_beginAccess();
    *&v40 = 136315394;
    v102 = v40;
    v105 = v35;
LABEL_14:
    v106 = v35;
    v41 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState + v35;
    sub_100004CBC();
    swift_beginAccess();
    v42 = *&v41[*(type metadata accessor for InferenceProviderAsset.ManagerOwnedState(0) + 40)];
    v43 = v42 + 56;
    v44 = 1 << *(v42 + 32);
    if (v44 < 64)
    {
      v45 = ~(-1 << v44);
    }

    else
    {
      v45 = -1;
    }

    v46 = v45 & *(v42 + 56);
    v47 = (v44 + 63) >> 6;
    sub_10001E558();
    v48 = swift_bridgeObjectRetain_n();
    for (i = 0; v46; i = v50)
    {
      v50 = i;
LABEL_22:
      v51 = (*(v42 + 48) + ((v50 << 10) | (16 * __clz(__rbit64(v46)))));
      v39 = *v51;
      v2 = v51[1];
      v120[0] = *v51;
      v120[1] = v2;
      __chkstk_darwin(v48);
      v96[2] = v120;

      v52 = v109;
      v53 = sub_100009A9C(sub_10001609C, v96, v108);
      v109 = v52;
      if (v53)
      {

        v98 = *&v107[v4];
        v54 = v98;
        if ((v98 & 0xC000000000000001) != 0)
        {

          swift_unknownObjectRetain();
          __CocoaSet.makeIterator()();
          v55 = sub_100005B00();
          type metadata accessor for InferenceProviderAsset(v55);
          sub_1000056C4();
          sub_100011B14(&qword_1001B94B0, v56);
          sub_100005E98();
          Set.Iterator.init(_cocoa:)();
          v57 = v122;
          v43 = v123;
          v58 = v124;
          v46 = v125;
          v59 = v126;
        }

        else
        {
          v60 = -1 << *(v98 + 32);
          v43 = v98 + 56;
          v58 = ~v60;
          v61 = -v60;
          if (v61 < 64)
          {
            v62 = ~(-1 << v61);
          }

          else
          {
            v62 = -1;
          }

          v59 = v62 & *(v98 + 56);
          sub_10001E558();
          swift_bridgeObjectRetain_n();
          v46 = 0;
          v57 = v54;
        }

        v97 = v58;
        v63 = (v58 + 64) >> 6;
        v50 = v59;
        v100 = v57;
        while (1)
        {
          v101 = v46;
          if (v57 < 0)
          {
            v71 = __CocoaSet.Iterator.next()();
            if (!v71)
            {
              goto LABEL_64;
            }

            v119 = v71;
            type metadata accessor for InferenceProviderAsset(0);
            sub_1000358A4();
            swift_dynamicCast();
            v70 = v120[0];
            v99 = v50;
            if (!v120[0])
            {
LABEL_62:
              v50 = v99;
              v57 = sub_1000561C4();
LABEL_56:
              v46 = v101;
              goto LABEL_57;
            }
          }

          else
          {
            v64 = v46;
            if (!v50)
            {
              while (1)
              {
                v46 = v64 + 1;
                if (__OFADD__(v64, 1))
                {
                  break;
                }

                if (v46 >= v63)
                {
                  v50 = 0;
                  goto LABEL_56;
                }

                ++v64;
                if (*(v43 + 8 * v46))
                {
                  goto LABEL_37;
                }
              }

              __break(1u);
              goto LABEL_66;
            }

LABEL_37:
            v99 = v50;
            sub_1000062A0();
            v50 = v66 & v65;
            v69 = *(*(v67 + 48) + ((v46 << 9) | (8 * v68)));

            if (!v70)
            {
              goto LABEL_62;
            }
          }

          v72 = v43;
          v104 = v70;
          if (InferenceProviderAssetDescriptor.identifier.getter() == v39 && v73 == v2)
          {

LABEL_48:
            v76 = sub_1000561C4();
            sub_100019334(v76, v72, v97, v101, v99);

            if (qword_1001B8930 != -1)
            {
              sub_100005154();
              swift_once();
            }

            v77 = type metadata accessor for Logger();
            sub_10000641C(v77, qword_1001BB110);
            v78 = v104;

            v2 = Logger.logObject.getter();
            static os_log_type_t.default.getter();
            sub_10000AC18();

            v39 = 1;
            if (os_log_type_enabled(v2, v72))
            {
              sub_100002F10();
              v79 = swift_slowAlloc();
              sub_100011828();
              v101 = swift_slowAlloc();
              v120[0] = v101;
              *v79 = v102;

              v80 = sub_100027434();

              v81 = sub_100005E98();
              sub_100004A3C(v81, v82, v83);
              sub_10000D0E8();

              *(v79 + 4) = v80;
              *(v79 + 12) = 2080;

              v84 = sub_100027434();

              v85 = sub_100005E98();
              sub_100004A3C(v85, v86, v87);
              sub_10000D0E8();
              v78 = v104;

              *(v79 + 14) = v84;
              _os_log_impl(&_mh_execute_header, v2, v72, "nextAssetToUnloadToMakeRoom wanted to unload %s, but needs to first unload blocker %s", v79, 0x16u);
              sub_10001E558();
              swift_arrayDestroy();
              sub_100061AD8();

              sub_100002BD0();
            }

            v35 = v78;
            goto LABEL_14;
          }

          v75 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v75)
          {
            goto LABEL_48;
          }

          v43 = v72;
          v57 = sub_1000561C4();
        }
      }

      v46 &= v46 - 1;
    }

    while (1)
    {
      v50 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v50 >= v47)
      {

        goto LABEL_54;
      }

      v46 = *(v43 + 8 * v50);
      ++i;
      if (v46)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_64:
    v57 = sub_1000561C4();
LABEL_57:
    sub_100019334(v57, v43, v97, v46, v50);

    if (qword_1001B8930 != -1)
    {
LABEL_66:
      sub_100005154();
      swift_once();
    }

    v88 = type metadata accessor for Logger();
    sub_10000641C(v88, qword_1001BB110);
    sub_10000A868();

    v89 = Logger.logObject.getter();
    v90 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v89, v90))
    {
      sub_10000A05C();
      swift_slowAlloc();
      sub_10000A45C();
      v91 = swift_slowAlloc();
      v120[0] = v91;
      *v43 = 136315138;
      v92 = sub_100004A3C(v39, v2, v120);

      *(v43 + 4) = v92;
      _os_log_impl(&_mh_execute_header, v89, v90, "nextAssetToUnloadToMakeRoom found dynamicBlocker but couldn't get asset for it %s", v43, 0xCu);
      sub_100003324(v91);
      sub_1000039CC();

      sub_10000BFCC();
    }

    else
    {
    }

    type metadata accessor for ModelManagerError();
    sub_1000113B0();
    sub_100011B14(v93, v94);
    sub_100013D58();
    swift_allocError();
    sub_1000076C8();
    (*(v95 + 104))();
    swift_willThrow();
  }

LABEL_54:
  sub_100005874();
}

void *sub_100050530(uint64_t a1, uint64_t a2)
{
  State = type metadata accessor for LoadState();
  v6 = *(State - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(State);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = type metadata accessor for InferenceProviderAsset.ManagerOwnedState(0);
  v10 = *(*(v42 - 8) + 64);
  __chkstk_darwin(v42);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 0xC000000000000001) == 0)
  {

    v14 = sub_1000509E4(a1, a2);

    return v14;
  }

  v37 = v2;
  v13 = a2;
  v14 = &_swiftEmptySetSingleton;
  v59 = &_swiftEmptySetSingleton;
  v36 = v13;

  v41 = __CocoaSet.makeIterator()();
  HIDWORD(v40) = enum case for LoadState.loaded(_:);
  v38 = (v6 + 8);
  v39 = (v6 + 104);
  while (1)
  {
    v15 = __CocoaSet.Iterator.next()();
    if (!v15)
    {
      break;
    }

    v43 = v15;
    type metadata accessor for InferenceProviderAsset(0);
    swift_dynamicCast();
    v16 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState + v57;
    swift_beginAccess();
    sub_1000192DC(v16, v12);
    (*v39)(v9, HIDWORD(v40), State);
    sub_100011B14(&dword_1001BA628, &type metadata accessor for LoadState);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    if (v43 == v52 && v44 == v53)
    {
LABEL_15:

      goto LABEL_16;
    }

    v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v18)
    {
LABEL_16:
      (*v38)(v9, State);
      sub_100019338();
LABEL_17:
      if (v16[*(v42 + 24)])
      {
        goto LABEL_18;
      }

      v29 = v57;
      v30 = v14[2];
      if (v14[3] <= v30)
      {
        sub_100080444(v30 + 1, v22, v23, v24, v25, v26, v27, v28, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58);
      }

      v14 = v59;
      v31 = v59[5];
      Hasher.init(_seed:)();
      sub_10001214C();
      Hasher._finalize()();
      v32 = -1 << *(v14 + 32);
      v33 = _HashTable.nextHole(atOrAfter:)();
      *(v14 + ((v33 >> 3) & 0x1FFFFFFFFFFFFFF8) + 56) |= 1 << v33;
      *(v14[6] + 8 * v33) = v29;
      ++v14[2];
    }

    else
    {
      v19 = &v12[*(v42 + 20)];
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      if (v43 == v52 && v44 == v53)
      {
        goto LABEL_15;
      }

      v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

      (*v38)(v9, State);
      sub_100019338();
      if (v21)
      {
        goto LABEL_17;
      }

LABEL_18:
    }
  }

  return v14;
}

void *sub_1000509E4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  State = type metadata accessor for LoadState();
  v6 = *(State - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(State);
  v53 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for InferenceProviderAsset.ManagerOwnedState(0);
  v9 = *(*(v51 - 8) + 64);
  __chkstk_darwin(v51);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = a1;
  LOBYTE(v10) = *(a1 + 32);
  v12 = v10 & 0x3F;
  v13 = ((1 << v10) + 63) >> 6;
  v14 = 8 * v13;

  if (v12 > 0xD)
  {
    goto LABEL_33;
  }

  while (2)
  {
    v43 = a2;
    v44 = v3;
    v41 = &v40;
    __chkstk_darwin(v15);
    v42 = v13;
    v45 = &v40 - ((v14 + 15) & 0x3FFFFFFFFFFFFFF0);
    sub_100011624(0, v13, v45);
    v46 = 0;
    v20 = 0;
    a2 = State;
    v21 = v55 + 56;
    v22 = 1 << *(v55 + 32);
    v23 = -1;
    if (v22 < 64)
    {
      v23 = ~(-1 << v22);
    }

    v24 = v23 & *(v55 + 56);
    v13 = (v22 + 63) >> 6;
    HIDWORD(v50) = enum case for LoadState.loaded(_:);
    v48 = (v6 + 8);
    v49 = (v6 + 104);
    v3 = v53;
    v52 = v11;
    while (v24)
    {
      v25 = __clz(__rbit64(v24));
      v56 = (v24 - 1) & v24;
LABEL_12:
      v28 = v25 | (v20 << 6);
      v29 = *(v55 + 48);
      v47 = v28;
      v6 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState + *(v29 + 8 * v28);
      swift_beginAccess();
      sub_1000192DC(v6, v11);
      (*v49)(v3, HIDWORD(v50), a2);
      sub_100011B14(&dword_1001BA628, &type metadata accessor for LoadState);

      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      v14 = v58;
      if (v59 == v57 && v60 == v58)
      {
        goto LABEL_23;
      }

      v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v31)
      {
        goto LABEL_24;
      }

      v32 = &v52[*(v51 + 20)];
      a2 = State;
      dispatch thunk of RawRepresentable.rawValue.getter();
      v33 = v53;
      dispatch thunk of RawRepresentable.rawValue.getter();
      v14 = v58;
      if (v59 == v57 && v60 == v58)
      {
LABEL_23:

LABEL_24:
        v3 = v53;
        a2 = State;
        (*v48)(v53, State);
        v11 = v52;
        sub_100019338();
        goto LABEL_25;
      }

      HIDWORD(v40) = _stringCompareWithSmolCheck(_:_:expecting:)();

      (*v48)(v33, a2);
      v14 = v52;
      sub_100019338();
      v3 = v33;
      v11 = v14;
      if ((v40 & 0x100000000) != 0)
      {
LABEL_25:
        v6 = *(v6 + *(v51 + 24));

        v24 = v56;
        if ((v6 & 1) == 0)
        {
          *(v45 + ((v47 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v47;
          if (__OFADD__(v46++, 1))
          {
            __break(1u);
          }
        }
      }

      else
      {

        v24 = v56;
      }
    }

    v26 = v20;
    while (1)
    {
      v20 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      if (v20 >= v13)
      {
        sub_1000120FC(v45, v42, v46, v55, v16, v17, v18, v19, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, State, v55, v56, v57, v58, v59, v60, v61);
        v37 = v36;

        return v37;
      }

      v27 = *(v21 + 8 * v20);
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v56 = (v27 - 1) & v27;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_33:

    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v39 = swift_slowAlloc();

  v37 = sub_1000D8870(v39, v13, v55, a2, sub_1000D7990);

  return v37;
}

void *sub_100050FF0(int64_t a1, uint64_t a2, uint64_t a3)
{
  State = type metadata accessor for LoadState();
  v8 = *(State - 1);
  v9 = *(v8 + 64);
  __chkstk_darwin(State);
  v11 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = type metadata accessor for InferenceProviderAsset.ManagerOwnedState(0);
  v12 = *(*(v61 - 8) + 64);
  v13 = __chkstk_darwin(v61);
  __chkstk_darwin(v13);
  v16 = &v50 - v15;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v58 = State;
    v59 = v14;
    v51 = v3;
    State = &_swiftEmptySetSingleton;
    v76 = &_swiftEmptySetSingleton;

    v50 = a2;

    v60 = __CocoaSet.makeIterator()();
    HIDWORD(v57) = enum case for LoadState.loaded(_:);
    v56 = (v8 + 104);
    v55 = (v8 + 8);
    v54 = a3 & 0xC000000000000001;
    v17 = a3 & 0xFFFFFFFFFFFFFF8;
    if (a3 < 0)
    {
      v17 = a3;
    }

    v53 = v17;
    v62 = a3 + 56;
    v63 = a3;
    while (1)
    {
      while (1)
      {
        v18 = __CocoaSet.Iterator.next()();
        if (!v18)
        {

          goto LABEL_34;
        }

        v64 = v18;
        type metadata accessor for InferenceProviderAsset(0);
        swift_dynamicCast();
        v19 = v75;
        v20 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState;
        swift_beginAccess();
        sub_1000192DC(v20 + v19, v16);
        v21 = *(*&v16[*(v61 + 48)] + 16);
        sub_100019338();
        if (!v21)
        {
          break;
        }

LABEL_7:
      }

      sub_1000192DC(v20 + v19, v59);
      (*v56)(v11, HIDWORD(v57), v58);
      sub_100011B14(&dword_1001BA628, &type metadata accessor for LoadState);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      if (v64 == v73 && v65 == v74)
      {
        break;
      }

      v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v24 = v58;
      if (v23)
      {
        goto LABEL_20;
      }

      v25 = v59 + *(v61 + 20);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      if (v64 == v73 && v65 == v74)
      {

        goto LABEL_20;
      }

      HIDWORD(v52) = _stringCompareWithSmolCheck(_:_:expecting:)();

      (*v55)(v11, v24);
      sub_100019338();
      if ((v52 & 0x100000000) == 0)
      {
        goto LABEL_7;
      }

LABEL_21:
      if (v54)
      {

        v34 = __CocoaSet.contains(_:)();

        if (v34)
        {
          goto LABEL_7;
        }
      }

      else if (v63[2])
      {
        v35 = v63;
        v36 = v63[5];
        Hasher.init(_seed:)();
        sub_10001214C();
        v37 = Hasher._finalize()();
        v38 = ~(-1 << *(v35 + 32));
        while (1)
        {
          v39 = v37 & v38;
          if (((*(v62 + (((v37 & v38) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v37 & v38)) & 1) == 0)
          {
            break;
          }

          v40 = *(v63[6] + 8 * v39);

          v42 = sub_100019CE4(v41, v19);

          v37 = v39 + 1;
          if (v42)
          {
            goto LABEL_7;
          }
        }
      }

      v43 = v75;
      v44 = State[2];
      if (State[3] <= v44)
      {
        sub_100080444(v44 + 1, v27, v28, v29, v30, v31, v32, v33, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73);
      }

      State = v76;
      v45 = v76[5];
      Hasher.init(_seed:)();
      sub_10001214C();
      Hasher._finalize()();
      v46 = -1 << *(State + 32);
      v47 = _HashTable.nextHole(atOrAfter:)();
      *(State + ((v47 >> 3) & 0x1FFFFFFFFFFFFFF8) + 56) |= 1 << v47;
      *(State[6] + 8 * v47) = v43;
      ++State[2];
    }

    v24 = v58;
LABEL_20:
    (*v55)(v11, v24);
    sub_100019338();
    goto LABEL_21;
  }

  v48 = sub_100051680(a1, a2, a3);
  if (v3)
  {
  }

  else
  {
    State = v48;

LABEL_34:
  }

  return State;
}

uint64_t sub_100051680(int64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  State = type metadata accessor for LoadState();
  v8 = *(State - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(State);
  v11 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = type metadata accessor for InferenceProviderAsset.ManagerOwnedState(0);
  v12 = *(*(v71 - 8) + 64);
  v13 = __chkstk_darwin(v71);
  v15 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v70 = &v54 - v16;
  v17 = *(a1 + 32);
  v18 = v17 & 0x3F;
  v19 = ((1 << v17) + 63) >> 6;
  v20 = 8 * v19;

  if (v18 <= 0xD)
  {
    goto LABEL_2;
  }

LABEL_47:

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    v67 = v11;
    v57 = a2;
    v58 = v4;
    v56 = &v54;
    __chkstk_darwin(v21);
    v66 = v19;
    v59 = &v54 - ((v20 + 15) & 0x3FFFFFFFFFFFFFF0);
    sub_100011624(0, v19, v59);
    v26 = 0;
    v11 = 0;
    v72 = a1;
    v4 = a1 + 56;
    v27 = 1 << *(a1 + 32);
    if (v27 < 64)
    {
      v28 = ~(-1 << v27);
    }

    else
    {
      v28 = -1;
    }

    v29 = v28 & *(a1 + 56);
    a1 = (v27 + 63) >> 6;
    HIDWORD(v63) = enum case for LoadState.loaded(_:);
    v62 = (v8 + 104);
    v61 = (v8 + 8);
    v60 = a3 & 0xC000000000000001;
    v30 = a3 & 0xFFFFFFFFFFFFFF8;
    if (a3 < 0)
    {
      v30 = a3;
    }

    v55 = v30;
    v74 = a3 + 56;
    v75 = a3;
    v69 = v15;
LABEL_8:
    v65 = v26;
    while (1)
    {
      while (1)
      {
        if (!v29)
        {
          v32 = v11;
          a3 = v75;
          v33 = v66;
          while (1)
          {
            v11 = v32 + 1;
            if (__OFADD__(v32, 1))
            {
              break;
            }

            if (v11 >= a1)
            {
              goto LABEL_43;
            }

            v34 = *(v4 + 8 * v11);
            ++v32;
            if (v34)
            {
              v31 = __clz(__rbit64(v34));
              v73 = (v34 - 1) & v34;
              goto LABEL_16;
            }
          }

          __break(1u);
          goto LABEL_47;
        }

        v31 = __clz(__rbit64(v29));
        v73 = (v29 - 1) & v29;
LABEL_16:
        v35 = v31 | (v11 << 6);
        v36 = *(v72 + 48);
        v68 = v35;
        v20 = *(v36 + 8 * v35);
        v37 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState;
        swift_beginAccess();
        v8 = type metadata accessor for InferenceProviderAsset.ManagerOwnedState;
        v19 = v70;
        sub_1000192DC(v37 + v20, v70);
        a2 = *(*(v19 + *(v71 + 48)) + 16);

        sub_100019338();
        if (!a2)
        {
          break;
        }

LABEL_17:

        v29 = v73;
      }

      sub_1000192DC(v37 + v20, v69);
      a2 = State;
      (*v62)(v67, HIDWORD(v63), State);
      v15 = sub_100011B14(&dword_1001BA628, &type metadata accessor for LoadState);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      v19 = v77;
      v8 = v79;
      if (v76 == v78 && v77 == v79)
      {
        break;
      }

      v39 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v39)
      {
        goto LABEL_30;
      }

      v40 = v69 + *(v71 + 20);
      dispatch thunk of RawRepresentable.rawValue.getter();
      v41 = v67;
      dispatch thunk of RawRepresentable.rawValue.getter();
      v19 = v77;
      v8 = v79;
      if (v76 == v78 && v77 == v79)
      {
        break;
      }

      v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

      (*v61)(v41, a2);
      sub_100019338();
      if ((v15 & 1) == 0)
      {
        goto LABEL_17;
      }

LABEL_31:
      if (!v60)
      {
        if (v75[2])
        {
          v15 = type metadata accessor for InferenceProviderAsset(0);
          v43 = v75;
          v44 = v75[5];
          Hasher.init(_seed:)();
          sub_10001214C();
          v8 = &v76;
          v45 = Hasher._finalize()();
          v19 = ~(-1 << *(v43 + 32));
          while (1)
          {
            a2 = v45 & v19;
            if (((*(v74 + (((v45 & v19) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v45 & v19)) & 1) == 0)
            {
              break;
            }

            v46 = *(v75[6] + 8 * a2);

            v8 = sub_100019CE4(v47, v20);

            v45 = a2 + 1;
            if (v8)
            {
              goto LABEL_17;
            }
          }
        }

        v29 = v73;
LABEL_40:
        *(v59 + ((v68 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v68;
        v26 = v65 + 1;
        if (!__OFADD__(v65, 1))
        {
          goto LABEL_8;
        }

        __break(1u);
LABEL_43:
        sub_1000120FC(v59, v33, v65, v72, v22, v23, v24, v25, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, State, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75);
        v49 = v48;

LABEL_44:

        return v49;
      }

      v8 = __CocoaSet.contains(_:)();

      v29 = v73;
      if ((v8 & 1) == 0)
      {
        goto LABEL_40;
      }
    }

LABEL_30:
    (*v61)(v67, a2);
    sub_100019338();
    goto LABEL_31;
  }

  v51 = swift_slowAlloc();

  v52 = v4;
  sub_1000D8910(v51, v19);
  v49 = v53;

  if (!v52)
  {

    goto LABEL_44;
  }

  return v49;
}

uint64_t sub_100051EA0(int64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = a1;
  v8 = *(a1 + 32);
  v9 = v8 & 0x3F;
  v10 = ((1 << v8) + 63) >> 6;
  v11 = 8 * v10;

  if (v9 > 0xD)
  {
    goto LABEL_20;
  }

  while (1)
  {
    v37 = a3;
    v33 = a2;
    v34 = v4;
    v31 = &v30;
    __chkstk_darwin(v12);
    v32 = v10;
    v35 = &v30 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0);
    sub_100011624(0, v10, v35);
    v36 = 0;
    v10 = 0;
    a3 = v7;
    a2 = v7 + 56;
    v17 = 1 << *(v7 + 32);
    v18 = -1;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    v11 = v18 & *(v7 + 56);
    v7 = (v17 + 63) >> 6;
    while (v11)
    {
      v19 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_12:
      v4 = v19 | (v10 << 6);
      v22 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState + *(*(a3 + 48) + 8 * v4);
      swift_beginAccess();
      v23 = *&v22[*(type metadata accessor for InferenceProviderAsset.ManagerOwnedState(0) + 40)];

      v24 = sub_1000521D4(v37, v23);

      if (v24)
      {
        *(v35 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v4;
        if (__OFADD__(v36++, 1))
        {
          __break(1u);
LABEL_16:
          sub_1000120FC(v35, v32, v36, a3, v13, v14, v15, v16, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51);
          v27 = v26;

          goto LABEL_17;
        }
      }
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v10 >= v7)
      {
        goto LABEL_16;
      }

      v21 = *(a2 + 8 * v10);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v11 = (v21 - 1) & v21;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_20:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v29 = swift_slowAlloc();

  v27 = sub_1000D8688(v29);

  if (v4)
  {
  }

  else
  {

LABEL_17:
  }

  return v27;
}

uint64_t sub_1000521D4(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 1;
  }

  v3 = 0;
  v4 = *(a1 + 16);
  v5 = a1 + 32;
  v6 = a2 + 56;
  do
  {
LABEL_3:
    if (v3 == v4)
    {
      return 1;
    }

    v7 = v3++;
  }

  while (!*(a2 + 16));
  v8 = (v5 + 16 * v7);
  v10 = *v8;
  v9 = v8[1];
  v11 = *(a2 + 40);
  Hasher.init(_seed:)();

  String.hash(into:)();
  v12 = Hasher._finalize()();
  v13 = ~(-1 << *(a2 + 32));
  do
  {
    v14 = v12 & v13;
    if (((*(v6 + (((v12 & v13) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v12 & v13)) & 1) == 0)
    {

      goto LABEL_3;
    }

    v15 = (*(a2 + 48) + 16 * v14);
    if (*v15 == v10 && v15[1] == v9)
    {
      break;
    }

    v17 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v12 = v14 + 1;
  }

  while ((v17 & 1) == 0);

  return 0;
}

uint64_t sub_10005230C(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t), uint64_t a3)
{
  v41 = a2;
  v42 = a3;
  v5 = type metadata accessor for InferenceProviderAsset.ManagerOwnedState(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v40 = v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v39 = v38 - v9;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for InferenceProviderAsset(0);
    sub_100011B14(&qword_1001B94B0, type metadata accessor for InferenceProviderAsset);
    result = Set.Iterator.init(_cocoa:)();
    a1 = v49;
    v11 = v50;
    v12 = v51;
    v13 = v52;
    v14 = v53;
    if (v49 < 0)
    {
      v37 = __CocoaSet.Iterator.next()();
      if (!v37)
      {
LABEL_34:
        sub_100019334(a1, v11, v12, v13, v14);
        return 0;
      }

      v45 = a1;
      v47 = v37;
      swift_dynamicCast();
      v44 = 0;
      result = v48;
      v17 = v13;
      v15 = v14;
      if (v48)
      {
        goto LABEL_15;
      }

LABEL_32:
      a1 = v45;
      goto LABEL_34;
    }

    if (v53)
    {
LABEL_4:
      v45 = a1;
      v15 = (v14 - 1) & v14;
      v16 = __clz(__rbit64(v14)) | (v13 << 6);
      v17 = v13;
      goto LABEL_14;
    }
  }

  else
  {
    v18 = -1 << *(a1 + 32);
    v11 = a1 + 56;
    v12 = ~v18;
    v19 = -v18;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v14 = v20 & *(a1 + 56);

    v13 = 0;
    if (v14)
    {
      goto LABEL_4;
    }
  }

  v21 = v13;
  do
  {
    v17 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      goto LABEL_36;
    }

    if (v17 >= ((v12 + 64) >> 6))
    {
      v14 = 0;
      goto LABEL_34;
    }

    v22 = *(v11 + 8 * v17);
    ++v21;
  }

  while (!v22);
  v45 = a1;
  v15 = (v22 - 1) & v22;
  v16 = __clz(__rbit64(v22)) | (v17 << 6);
LABEL_14:
  v23 = *(*(v45 + 48) + 8 * v16);

  v44 = 1;
  if (!result)
  {
    goto LABEL_32;
  }

LABEL_15:
  v43 = result;
  v38[0] = v12;
  v38[1] = v3;
  v24 = (v12 + 64) >> 6;
  while (!v44)
  {
    v30 = __CocoaSet.Iterator.next()();
    if (!v30 || (v46 = v30, type metadata accessor for InferenceProviderAsset(0), swift_dynamicCast(), v29 = v54, v27 = v17, v28 = v15, !v54))
    {
LABEL_29:
      sub_100019334(v45, v11, v38[0], v17, v15);
      return v43;
    }

LABEL_25:
    v31 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState;
    swift_beginAccess();
    v32 = v39;
    sub_1000192DC(v31 + v29, v39);
    v33 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState;
    v34 = v43;
    swift_beginAccess();
    v35 = v33 + v34;
    v36 = v40;
    sub_1000192DC(v35, v40);
    LOBYTE(v33) = v41(v32, v36);
    sub_100019338();
    sub_100019338();

    if (v33)
    {
      v43 = v29;
    }

    v17 = v27;
    v15 = v28;
  }

  v25 = v17;
  v26 = v15;
  v27 = v17;
  if (v15)
  {
LABEL_21:
    v28 = (v26 - 1) & v26;
    v29 = *(*(v45 + 48) + ((v27 << 9) | (8 * __clz(__rbit64(v26)))));

    if (!v29)
    {
      goto LABEL_29;
    }

    goto LABEL_25;
  }

  while (1)
  {
    v27 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v27 >= v24)
    {
      v15 = 0;
      goto LABEL_29;
    }

    v26 = *(v11 + 8 * v27);
    ++v25;
    if (v26)
    {
      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
  return result;
}

uint64_t sub_100052740(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005B00();
  v5 = type metadata accessor for InferenceProviderAsset.ManagerOwnedState(v4);
  v6 = v5[17];
  v7 = *(v2 + v6);
  if (v7 != *(a2 + v6))
  {
    return v7;
  }

  v8 = v5[16];
  v9 = *(v2 + v8);
  v7 = *(a2 + v8);
  if (v9 != v7)
  {
    return v7;
  }

  v11 = v5[8];
  return static Date.< infix(_:_:)() & 1;
}

void *sub_1000527C8(uint64_t a1, uint64_t a2)
{
  State = type metadata accessor for LoadState();
  v6 = *(State - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(State);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v36 - v11;
  if ((a1 & 0xC000000000000001) == 0)
  {

    v13 = sub_100052B98(a1, a2);

    return v13;
  }

  v38 = v2;
  v13 = &_swiftEmptySetSingleton;
  v60 = &_swiftEmptySetSingleton;
  v37 = a2;

  v42 = __CocoaSet.makeIterator()();
  v41 = (v6 + 16);
  v40 = enum case for LoadState.dynamicMode(_:);
  v14 = (v6 + 104);
  v15 = (v6 + 8);
  while (1)
  {
    v16 = __CocoaSet.Iterator.next()();
    if (!v16)
    {
      break;
    }

    v43 = v16;
    type metadata accessor for InferenceProviderAsset(0);
    swift_dynamicCast();
    v17 = v57;
    v18 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState;
    swift_beginAccess();
    (*v41)(v12, &v18[v17], State);
    (*v14)(v10, v40, State);
    sub_100011B14(&dword_1001BA628, &type metadata accessor for LoadState);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    if (v43 == v52 && v44 == v53)
    {

      v29 = *v15;
      (*v15)(v10, State);
      v29(v12, State);
LABEL_11:
      v30 = v57;
      v31 = v13[2];
      if (v13[3] <= v31)
      {
        sub_100080444(v31 + 1, v22, v23, v24, v25, v26, v27, v28, v36, v37, v38, v39, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60);
      }

      v13 = v60;
      v32 = v60[5];
      Hasher.init(_seed:)();
      sub_10001214C();
      Hasher._finalize()();
      v33 = -1 << *(v13 + 32);
      v34 = _HashTable.nextHole(atOrAfter:)();
      *(v13 + ((v34 >> 3) & 0x1FFFFFFFFFFFFFF8) + 56) |= 1 << v34;
      *(v13[6] + 8 * v34) = v30;
      ++v13[2];
    }

    else
    {
      v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v21 = *v15;
      (*v15)(v10, State);
      v21(v12, State);
      if (v20)
      {
        goto LABEL_11;
      }
    }
  }

  return v13;
}

void *sub_100052B98(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  State = type metadata accessor for LoadState();
  v7 = *(State - 8);
  v8 = v7[8];
  v9 = __chkstk_darwin(State);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v40 - v12;
  v14 = *(a1 + 32);
  v15 = v14 & 0x3F;
  v16 = ((1 << v14) + 63) >> 6;
  v17 = (8 * v16);

  if (v15 > 0xD)
  {
LABEL_26:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v39 = swift_slowAlloc();

      v37 = sub_1000D8870(v39, v16, a1, a2, sub_1000D6F54);

      return v37;
    }
  }

  v53 = v11;
  v42 = a2;
  v43 = v3;
  v40 = &v40;
  __chkstk_darwin(v18);
  v41 = v16;
  v44 = &v40 - ((v17 + 15) & 0x3FFFFFFFFFFFFFF0);
  sub_100011624(0, v16, v44);
  v23 = 0;
  v3 = 0;
  a2 = a1 + 56;
  v24 = 1 << *(a1 + 32);
  v25 = -1;
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  v26 = v25 & *(a1 + 56);
  v46 = (v24 + 63) >> 6;
  v51 = (v7 + 2);
  HIDWORD(v50) = enum case for LoadState.dynamicMode(_:);
  v48 = v7 + 1;
  v49 = (v7 + 13);
  v11 = State;
  v52 = a1;
  while (2)
  {
    v45 = v23;
    while (1)
    {
      v16 = v13;
      if (!v26)
      {
        v28 = v3;
        v13 = v53;
        while (1)
        {
          v3 = v28 + 1;
          if (__OFADD__(v28, 1))
          {
            break;
          }

          if (v3 >= v46)
          {
            goto LABEL_23;
          }

          v29 = *(a2 + 8 * v3);
          ++v28;
          if (v29)
          {
            v54 = (v29 - 1) & v29;
            v27 = __clz(__rbit64(v29)) | (v3 << 6);
            goto LABEL_13;
          }
        }

        __break(1u);
        goto LABEL_26;
      }

      v54 = (v26 - 1) & v26;
      v27 = __clz(__rbit64(v26)) | (v3 << 6);
      v13 = v53;
LABEL_13:
      v30 = *(a1 + 48);
      v47 = v27;
      v31 = *(v30 + 8 * v27);
      v32 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState;
      swift_beginAccess();
      (*v51)(v16, &v32[v31], v11);
      (*v49)(v13, HIDWORD(v50), v11);
      sub_100011B14(&dword_1001BA628, &type metadata accessor for LoadState);

      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      if (v57 == v55 && v58 == v56)
      {
        break;
      }

      State = _stringCompareWithSmolCheck(_:_:expecting:)();

      v7 = v48;
      v17 = *v48;
      (*v48)(v13, v11);
      v17(v16, v11);

      a1 = v52;
      v13 = v16;
      v26 = v54;
      if (State)
      {
        goto LABEL_20;
      }
    }

    v7 = v48;
    v17 = *v48;
    (*v48)(v13, v11);
    v17(v16, v11);

    a1 = v52;
    v13 = v16;
    v26 = v54;
LABEL_20:
    v34 = v45;
    *(v44 + ((v47 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v47;
    v35 = __OFADD__(v34, 1);
    v23 = v34 + 1;
    if (!v35)
    {
      continue;
    }

    break;
  }

  __break(1u);
LABEL_23:
  sub_1000120FC(v44, v41, v45, a1, v19, v20, v21, v22, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61);
  v37 = v36;

  return v37;
}

uint64_t sub_1000530E4()
{
  v2 = *(v0 + 336);
}

uint64_t sub_1000530FC()
{

  return swift_allocObject();
}

uint64_t sub_100053120()
{
  v2 = v0[13];
  v4 = v0[10];
  v3 = v0[11];
  v6 = v0[8];
  v5 = v0[9];
  v7 = v0[7];

  return static Clock<>.continuous.getter();
}

uint64_t sub_100053144()
{
  v2 = *v1;
  v3 = *v1;
  sub_100002B9C();
  *v4 = v3;
  v5 = v2[53];
  *v4 = *v1;
  v3[54] = v0;

  v6 = v2[52];
  v7 = v2[51];
  if (v0)
  {
    v8 = v3[50];
    v9 = v3[34];
    v10 = v3[32];
    v11 = v3[21];

    v7(v9, v10);
    v12 = sub_1000DFA94;
    v13 = v11;
  }

  else
  {
    v14 = v3[21];
    v7(v3[34], v3[32]);
    v12 = sub_1000532C4;
    v13 = v14;
  }

  return _swift_task_switch(v12, v13, 0);
}

uint64_t sub_1000532C4()
{
  v28 = *(v0 + 400);
  v26 = *(v0 + 392);
  v34 = *(v0 + 376);
  v35 = *(v0 + 384);
  v33 = *(v0 + 472);
  v1 = *(v0 + 368);
  v27 = *(v0 + 312);
  v29 = *(v0 + 336);
  v30 = *(v0 + 288);
  v31 = *(v0 + 280);
  v32 = *(v0 + 256);
  v2 = *(v0 + 216);
  v3 = *(v0 + 160);
  v4 = (v3 + *(v0 + 360));
  v5 = v4[3];
  v6 = v4[4];
  sub_100003370(v4, v5);
  v7 = InferenceProviderAssetDescriptor.modelCatalogIdentifier.getter();
  v9 = v8;
  v10 = InferenceProviderAssetDescriptor.version.getter();
  v12 = v11;
  v13 = v3 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_cost;
  AssetCost.onDeviceMemory.getter();
  sub_10000A868();
  sub_100003978();
  sub_100009BFC(v14, v15, v16, v26);
  (*(v6 + 48))(v27, v7, v9, v10, v12, v13, 1, v28, 0, v2, v5, v6);

  sub_10000ECD8(v2, &qword_1001BB3F8, &qword_100171D50);
  sub_10000ECD8(v29, &qword_1001BB410, &unk_100172340);
  sub_100003978();
  sub_100009BFC(v17, v18, v19, v30);
  v34(v31, v33, v32);
  v20 = swift_task_alloc();
  *(v0 + 440) = v20;
  *v20 = v0;
  v20[1] = sub_1000535DC;
  v21 = *(v0 + 280);
  v22 = *(v0 + 160);
  v23 = sub_1000031B8(*(v0 + 168));

  return sub_100041158(v23, v24);
}

uint64_t sub_1000534C0()
{
  sub_100001ED0();
  sub_100002C20();
  v0 = swift_task_alloc();
  v1 = sub_100004B00(v0);
  *v1 = v2;
  sub_10000501C(v1);

  return sub_10005354C();
}

uint64_t sub_10005354C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10006FA64;

  return sub_1000559BC();
}

uint64_t sub_1000535DC()
{
  sub_100001EF4();
  v2 = v1[55];
  v3 = v1[52];
  v4 = v1[51];
  v5 = v1[35];
  v6 = v1[32];
  v7 = v1[21];
  v8 = *v0;
  sub_100002B9C();
  *v9 = v8;

  v10 = sub_100001F70();
  v4(v10);
  v11 = sub_100003DE0();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_100053740()
{
  v1 = v0[50];
  v3 = v0[43];
  v2 = v0[44];
  v4 = v0[41];
  v5 = v0[42];
  v7 = v0[39];
  v6 = v0[40];
  v8 = v0[37];
  v9 = v0[36];
  v17 = v0[38];
  v18 = v0[35];
  v19 = v0[34];
  v20 = v0[31];
  v21 = v0[28];
  v22 = v0[27];
  v23 = v0[26];
  v10 = v0[20];

  (*(v8 + 8))(v7, v9);
  sub_1000480AC(v10 + v3 + *(v2 + 60), (v0 + 12));
  v11 = v0[16];
  sub_100003370(v0 + 12, v0[15]);
  v12 = *(v11 + 32);
  v13 = sub_10000E86C();
  v14(v13, v11);
  sub_10000ECD8(v5, &qword_1001BB410, &unk_100172340);
  sub_100003324(v0 + 12);

  sub_100001F00();

  return v15();
}

uint64_t sub_1000538C8()
{
  sub_100002BAC();
  sub_100001EF4();
  v3 = v2;
  sub_100004B40();
  *v4 = v3;
  v6 = *(v5 + 480);
  v7 = *v1;
  sub_100002B9C();
  *v8 = v7;
  v3[61] = v0;

  if (v0)
  {
    v9 = v3[59];
    v10 = v3[32];

    v11 = sub_1000D142C;
    v12 = v10;
  }

  else
  {
    v12 = v3[32];
    v11 = sub_1000539D8;
  }

  return _swift_task_switch(v11, v12, 0);
}

uint64_t sub_1000539D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_10005D918();
  sub_1000033DC();
  v13 = v12[59];

  sub_1000DAEDC();
  if (v14)
  {
    v15 = v12[43];
    v17 = v12[33];
    v16 = v12[34];
    v18 = v12[30];
    sub_100005C78();
    sub_10002ED80();
    sub_100036730();
    sub_1000DB104();
    swift_endAccess();
  }

  sub_10002EAC4();
  v19 = Logger.logObject.getter();
  static os_log_type_t.default.getter();
  sub_100053114();

  v20 = sub_1000DAF70();
  v21 = v12[59];
  if (v20)
  {
    v22 = v12[30];
    sub_10000A05C();
    v23 = swift_slowAlloc();
    sub_1000033D0();
    swift_slowAlloc();
    sub_100003DF0();
    *v23 = 136315138;
    v24 = type metadata accessor for InferenceProviderAssetDescriptor();
    sub_100008428();
    sub_100011B14(v25, v26);
    v27 = sub_1000DAE0C();
    sub_10000CB58(v27, v28, v29);
    sub_100012918();
    *(v23 + 4) = v24;
    sub_1000DABF0(&_mh_execute_header, v30, v31, "Moved asset %s to dynamic mode");
    sub_100002C88();
    sub_1000039CC();
  }

  sub_100025014();
  v33 = v12[34];
  v32 = v12[35];

  sub_100002F54();
  sub_100016688();

  return v35(v34, v35, v36, v37, v38, v39, v40, v41, a9, a10, a11, a12);
}

uint64_t sub_100053B68()
{
  v2 = *(v0 + 16);

  return type metadata accessor for Logger();
}

uint64_t sub_100053B80()
{
  v2 = *(v0 + 240);

  return type metadata accessor for Logger();
}

uint64_t sub_100053B98()
{
  v4 = v0 + *(v2 + 60);

  return sub_100007130(v4, v1 + 16);
}

void sub_100053BD8(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v6, v4, a4, v5, 2u);
}

uint64_t sub_100053C58()
{
  v3 = *(v0 + 40);
  v4 = *v1;
}

uint64_t sub_100053C74()
{
  sub_100001ED0();
  v2 = *v1;
  v3 = *(*v1 + 464);
  v4 = *v1;
  sub_100002B9C();
  *v5 = v4;

  v6 = *(v2 + 264);
  if (v0)
  {

    v7 = sub_100041C44;
  }

  else
  {
    v7 = sub_100041C40;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_100053DA0()
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
  v3[59] = v0;

  if (v0)
  {
    v9 = v3[52];
    v11 = v3[31];
    v10 = v3[32];
    v12 = v3[30];
    v13 = v3[26];

    sub_10000ED84(v12, &qword_1001BB3F8);
  }

  else
  {
    v11 = v3[31];
    v10 = v3[32];
    v14 = v3[30];
    v15 = v3[26];
    sub_10000ED84(v14, &qword_1001BB3F8);
  }

  sub_10000ED84(v11, &qword_1001BB408);
  sub_10000ED84(v10, &qword_1001BB410);
  sub_10000CC50();

  return _swift_task_switch(v16, v17, v18);
}

uint64_t sub_100053F4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_10000385C();
  sub_100003284();
  v21 = v15[56];

  v22 = v15[57];
  if (v22 == v15[55])
  {
    sub_10004D094();
    v18(v22, v16, v14);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();
    v25 = sub_1000038BC(v24);
    v26 = v15[48];
    v27 = v15[41];
    v28 = v15[37];
    v29 = v15[38];
    if (v25)
    {
      sub_10000A05C();
      swift_slowAlloc();
      sub_10000A45C();
      swift_slowAlloc();
      sub_10003EAA0();
      *v26 = 136315138;
      sub_1000281BC(&qword_1001B9C68, &qword_1001B94F0, &unk_100172060);
      sub_100042FBC();
      v30 = sub_1000DABA4();
      (v26)(v30);
      v31 = sub_10000CD1C();
      sub_100004A3C(v31, v32, v33);
      sub_100005974();

      *(v26 + 4) = v27;
      sub_1000033FC();
      _os_log_impl(v34, v35, v36, v37, v38, 0xCu);
      sub_100003324(v17);
      sub_1000039CC();

      sub_10000BFCC();
    }

    else
    {

      v60 = sub_100011BF0();
      (v26)(v60);
    }

    v61 = v15[26];
    sub_100043D74();
    v62 = v15[10];
    v63 = v15[11];
    sub_100010BB8(v15 + 7);
    v78 = sub_1000DB334();
    sub_100004B94();
    v79 = v64 + *v64;
    v66 = *(v65 + 4);
    v67 = swift_task_alloc();
    v68 = sub_100050FE4(v67);
    *v68 = v69;
    sub_1000185FC(v68);
    sub_100003540();

    return v73(v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, a11, a12, a13, a14);
  }

  else
  {
    v39 = v15[52] & 0xC000000000000001;
    sub_100022A7C(v15[57]);
    if (v39)
    {
      result = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v40 = result;
    }

    else
    {
      v40 = *(v15[52] + 8 * v22 + 32);
    }

    v15[56] = v40;
    v15[57] = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      __break(1u);
    }

    else
    {
      sub_1000332B8();
      sub_100065020(&qword_1001B8F48, &qword_10016FB30);
      v42 = sub_10000BF00();
      sub_100009BFC(v42, v43, v44, v45);
      v20(v16, v19, v22);
      sub_100031654();
      sub_100009BFC(v46, v47, v48, v49);
      v50 = type metadata accessor for AuditToken();
      sub_100002C00(v50);
      v52 = *(v51 + 16);
      sub_1000DB290();
      v53();
      sub_10004A780();
      sub_100031654();
      sub_100009BFC(v54, v55, v56, v57);
      v58 = swift_task_alloc();
      v15[58] = v58;
      *v58 = v15;
      sub_100005B28();
      sub_100003540();

      return sub_100047A80();
    }
  }

  return result;
}

uint64_t sub_100054264(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t *a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_100005B0C();
  sub_10001A5C4();
  if (qword_1001B88F0 != -1)
  {
    sub_10000505C();
    swift_once();
  }

  v22 = v20[14];
  v21 = v20[15];
  v23 = v20[13];
  v24 = v20[2];
  v25 = type metadata accessor for Logger();
  sub_10000641C(v25, qword_1001B9A18);
  v26 = *(v22 + 16);
  v27 = sub_100007660();
  v28(v27);
  v29 = Logger.logObject.getter();
  HIDWORD(a13) = static os_log_type_t.default.getter();
  v30 = os_log_type_enabled(v29, BYTE4(a13));
  v70 = v20[28];
  v71 = v20[29];
  v31 = v20[25];
  v72 = v20[26];
  v32 = v20[23];
  v33 = v20[24];
  v35 = v20[21];
  v34 = v20[22];
  v36 = v20[20];
  v37 = v20[15];
  v38 = v20[13];
  if (v30)
  {
    sub_10000A05C();
    a12 = v36;
    v39 = swift_slowAlloc();
    sub_1000033D0();
    a11 = v31;
    a17 = swift_slowAlloc();
    *v39 = 136315138;
    sub_100005070();
    sub_10001B27C(v40, v41, v42);
    dispatch thunk of CustomStringConvertible.description.getter();
    a9 = v34;
    a10 = v32;
    v43 = sub_100007660();
    v70(v43);
    v44 = sub_10000A9EC();
    sub_100004A3C(v44, v45, v46);
    sub_100019498();

    *(v39 + 4) = v37;
    _os_log_impl(&_mh_execute_header, v29, BYTE4(a13), "Prewarmed assets for session %s", v39, 0xCu);
    sub_100003324(a17);
    sub_100002BD0();

    sub_100002BD0();

    (*(v35 + 8))(v34, a12);
    (*(v33 + 8))(v31, v32);
  }

  else
  {

    v47 = sub_100007660();
    v70(v47);
    (*(v35 + 8))(v34, v36);
    v48 = *(v33 + 8);
    v49 = sub_10001B228();
    v51(v49, v50);
  }

  v52 = v20[25];
  v53 = v20[22];
  v54 = v20[19];
  v56 = v20[15];
  v55 = v20[16];
  v57 = v20[12];
  v59 = v20[8];
  v58 = v20[9];
  v60 = v20[7];

  sub_100002F54();
  sub_1000135DC();

  return v62(v61, v62, v63, v64, v65, v66, v67, v68, a9, a10, a11, a12, a13, v70, v71, v72, a17, a18, a19, a20);
}

uint64_t sub_10005450C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_10000385C();
  sub_100003284();
  v15 = v14[32];
  v17 = v14[24];
  v16 = v14[25];
  v18 = v14[23];
  v20 = v14[18];
  v19 = v14[19];
  v21 = v14[14];
  v22 = v14[15];
  v33 = v14[13];
  v34 = v14[12];
  v35 = v14[9];
  v23 = v14[6];
  ModelXPCRequest.PrewarmSession.Response.init()();

  sub_100065020(&qword_1001BE648, &qword_1001755E0);
  sub_10000CD70();

  sub_100002F54();
  sub_100003540();

  return v25(v24, v25, v26, v27, v28, v29, v30, v31, v33, v34, v35, a12, a13, a14);
}

uint64_t sub_100054604()
{
  sub_10000639C();
  sub_100003884();
  v2 = *v1;
  v3 = *v1;
  sub_100002B9C();
  *v4 = v3;
  v5 = v2[41];
  v6 = v2[40];
  *v4 = *v1;
  v3[42] = v0;

  v7 = v2[39];
  if (v0)
  {
    (*(v3[17] + 8))(v3[18], v3[16]);
  }

  else
  {
    v8 = v3[37];
    (*(v3[17] + 8))(v3[18], v3[16]);
  }

  sub_1000059F8();
  sub_100003D20();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_100054794()
{
  sub_100001ED0();
  sub_10000D554();
  sub_100004B40();
  *v4 = v3;
  v5 = *(v1 + 240);
  v6 = *(v1 + 216);
  *v4 = *v2;
  *(v3 + 248) = v0;

  sub_10000A9E0();
  v8 = *(v7 + 40);
  sub_10000E700();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_1000548C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_10000385C();
  sub_100003284();
  v16 = v14[41];
  v15 = v14[42];
  v18 = v14[39];
  v17 = v14[40];
  v20 = v14[35];
  v19 = v14[36];
  v22 = v14[31];
  v21 = v14[32];
  v32 = v14[30];
  v33 = v14[29];
  sub_1000286AC(v14[50]);

  sub_10000ED84((v14 + 2), &qword_1001B9CB0);
  sub_100003324(v14 + 7);

  sub_100002F54();
  sub_100003540();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, v32, v33, a12, a13, a14);
}

uint64_t sub_1000549B8()
{
  sub_100001ED0();
  sub_10000D554();
  sub_100004B40();
  *v4 = v3;
  v5 = *(v1 + 480);
  *v4 = *v2;
  *(v3 + 488) = v0;

  sub_10000A9E0();
  v7 = *(v6 + 208);
  sub_10000E700();

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_100054ACC()
{
  sub_100002BAC();
  v1 = *(v0 + 104);

  sub_100009E7C();
  sub_100005668();
  sub_100039484(v2, v3, v4);

  sub_100002F54();

  return v5();
}

uint64_t sub_100054B50()
{
  sub_100001ED0();
  sub_10000D554();
  sub_100004B40();
  *v4 = v3;
  v5 = *(v1 + 112);
  *v4 = *v2;
  *(v3 + 120) = v0;

  sub_10000A9E0();
  v7 = *(v6 + 32);
  sub_10000E700();

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_100054C64()
{
  sub_10000639C();
  sub_100003884();
  sub_1000089AC();
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = swift_task_alloc();
  v4 = sub_100004B00(v3);
  *v4 = v5;
  sub_100007D94(v4);
  sub_100003D20();

  return sub_100054CF8(v6, v7, v8, v9, v10);
}

uint64_t sub_100054CF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v7 = sub_100065020(&qword_1001B94F0, &unk_100172060);
  v5[4] = v7;
  v8 = *(v7 - 8);
  v5[5] = v8;
  v9 = *(v8 + 64) + 15;
  v5[6] = swift_task_alloc();

  return _swift_task_switch(sub_100054DC8, a5, 0);
}

uint64_t sub_100054DC8()
{
  sub_1000033DC();
  v35 = v0;
  if (qword_1001B88F0 != -1)
  {
    sub_10000505C();
    swift_once();
  }

  v2 = v0[1].i64[0];
  v3 = type metadata accessor for Logger();
  v0[3].i64[1] = sub_100002FD0(v3, qword_1001B9A18);

  v4 = Logger.logObject.getter();
  static os_log_type_t.default.getter();
  sub_100019920();

  if (sub_10000A384())
  {
    v5 = v0[1].i64[0];
    sub_10000A05C();
    v6 = swift_slowAlloc();
    sub_1000033D0();
    v7 = swift_slowAlloc();
    v34[0] = v7;
    *v6 = 136315138;
    v8 = sub_10001AFF8();
    sub_100004A3C(v8, v9, v34);
    sub_100007BA0();
    *(v6 + 4) = v1;
    sub_1000033FC();
    _os_log_impl(v10, v11, v12, v13, v14, 0xCu);
    sub_100003324(v7);
    sub_1000039CC();

    sub_100002BD0();
  }

  v16 = v0[2].i64[1];
  v15 = v0[3].i64[0];
  v17 = v0[2].i64[0];
  type metadata accessor for _OSTransaction();
  v34[0] = 0;
  v34[1] = 0xE000000000000000;
  v33 = v0[1];
  _StringGuts.grow(_:)(16);

  strcpy(v34, "Re-Prewarming ");
  HIBYTE(v34[1]) = -18;
  Session.Metadata.id.getter();
  sub_100005070();
  sub_10001B27C(v18, v19, v20);
  v21._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v21);

  v22 = *(v16 + 8);
  v23 = sub_100003754();
  v24(v23);
  v0[4].i64[0] = v34[1];
  v25 = swift_task_alloc();
  v0[4].i64[1] = v25;
  v25[1] = vextq_s8(v33, v33, 8uLL);
  sub_100011344();
  sub_100015F10(v26, v27, v28);
  v29 = async function pointer to static _OSTransaction.named<A>(_:closure:isolation:)[1];
  v30 = swift_task_alloc();
  v0[5].i64[0] = v30;
  *v30 = v0;
  v30[1] = sub_1000582AC;
  v31 = v0[1].i64[1];

  return static _OSTransaction.named<A>(_:closure:isolation:)();
}

uint64_t sub_1000550A8()
{
  sub_100001ED0();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = sub_100004B00(v3);
  *v4 = v5;
  v6 = sub_100012A10(v4);

  return sub_10005513C(v6, v7, v1);
}

uint64_t sub_10005513C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a2;
  v3[3] = a3;
  v5 = sub_100065020(&qword_1001B94F0, &unk_100172060);
  v3[4] = v5;
  v6 = *(v5 - 8);
  v3[5] = v6;
  v7 = *(v6 + 64) + 15;
  v3[6] = swift_task_alloc();

  return _swift_task_switch(sub_10005520C, a2, 0);
}

uint64_t sub_10005520C()
{
  sub_100003884();
  v1 = v0[6];
  v2 = v0[2];
  v3 = v0[3];
  v4 = OBJC_IVAR____TtC13modelmanagerd13DaemonSession_metadata;
  Session.Metadata.id.getter();
  v0[7] = sub_10001B304(v3 + v4, v3 + OBJC_IVAR____TtC13modelmanagerd13DaemonSession_auditToken);
  v5 = swift_task_alloc();
  v0[8] = v5;
  *v5 = v0;
  v5[1] = sub_10005810C;
  v6 = v0[2];
  sub_1000031B8(v0[6]);

  return sub_100017334();
}

uint64_t sub_100055350()
{
  sub_100003884();
  v1 = v0[11];
  sub_100003370(v0 + 7, v0[10]);
  v2 = *(sub_100001F0C() + 24);
  sub_100004B94();
  v9 = v3 + *v3;
  v5 = *(v4 + 4);
  v6 = swift_task_alloc();
  v0[71] = v6;
  *v6 = v0;
  v6[1] = sub_100057354;
  sub_100018870();

  return v7();
}

uint64_t sub_10005548C()
{
  sub_100001ED0();
  v2 = *v1;
  sub_100003960();
  *v4 = v3;
  v5 = v2[50];
  *v4 = *v1;
  *(v3 + 408) = v0;

  v6 = v2[49];
  v7 = v2[48];
  v8 = v2[30];
  v9 = v2[28];
  v10 = v2[10];
  v7(v8, v9);
  sub_100007088();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_100055600()
{
  v1 = v0[40];
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "loadIn finished", v4, 2u);
    sub_100002BD0();
  }

  v5 = v0[40];
  v6 = v0[16];

  v7 = Logger.logObject.getter();
  static os_log_type_t.default.getter();
  sub_1000089B8();
  if (sub_10000A384())
  {
    v54 = v0[45];
    v56 = v0[46];
    v8 = v0[44];
    v9 = v0[38];
    v52 = v0[36];
    v10 = v0[16];
    v11 = v10 + v0[41];
    sub_1000267F8();
    sub_1000062D8();
    sub_100012BB4(4.8151e-34);
    sub_100005168();
    sub_100011B5C(v12, v13);
    v14 = sub_1000060D8();
    sub_100036E38(v14, v15);
    sub_100013E7C();

    v16 = sub_1000113C8();
    v17(v16, v10);
    sub_10000866C();
    sub_100011B5C(v18, v19);
    sub_1000035E8();
    dispatch thunk of CustomStringConvertible.description.getter();
    v20 = sub_10000588C();
    v54(v20);
    v21 = sub_100008004();
    sub_100004A3C(v21, v22, v23);
    sub_10000A868();

    *(v6 + 14) = v8;
    sub_1000033FC();
    _os_log_impl(v24, v25, v26, v27, v28, 0x16u);
    sub_10002A110();
    sub_1000039CC();

    sub_100002BD0();
  }

  v29 = v0[44];
  v45 = v0[39];
  v46 = v0[38];
  v30 = v0[34];
  v42 = v0[35];
  v43 = v0[47];
  v44 = v0[33];
  v47 = v0[32];
  v48 = v0[31];
  v49 = v0[30];
  v50 = v0[27];
  v51 = v0[26];
  v53 = v0[23];
  v55 = v0[22];
  v57 = v0[19];
  v41 = v0[15];
  v31 = (v0[16] + v0[43]);
  v32 = v31[4];
  sub_100003370(v31, v31[3]);
  InferenceProviderAssetDescriptor.modelCatalogIdentifier.getter();
  InferenceProviderAssetDescriptor.version.getter();
  AssetCost.onDeviceMemory.getter();
  v33 = *(v32 + 48);
  sub_10001360C();
  v38(v34, v35, v36, v37);

  (*(v30 + 8))(v42, v44);

  sub_100001F00();

  return v39();
}

uint64_t sub_100055984()
{
  sub_100007F18();
}

uint64_t sub_100055BA8()
{
  sub_100002BAC();
  sub_100001EF4();
  v3 = v2;
  sub_100004B40();
  *v4 = v3;
  v6 = *(v5 + 32);
  v7 = *v1;
  sub_100002B9C();
  *v8 = v7;
  *(v3 + 40) = v0;

  if (v0)
  {
    v9 = *(v3 + 16);

    return _swift_task_switch(sub_1000A971C, v9, 0);
  }

  else
  {
    sub_100001F00();

    return v10();
  }
}

uint64_t sub_100055CC0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  sub_100005640();

  return _swift_deallocObject(v3, v4, v5);
}

uint64_t sub_100055CFC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = sub_100001F70();

  return _swift_deallocObject(v3, v4, 7);
}

uint64_t sub_100055D44()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[6];

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100055D8C()
{
  sub_100001ED0();
  v2 = *v1;
  sub_100003960();
  *v4 = v3;
  v5 = *(v2 + 448);
  *v4 = *v1;
  *(v3 + 456) = v0;

  v6 = *(v2 + 232);
  if (v0)
  {
    v7 = sub_1000DEB8C;
  }

  else
  {
    v7 = sub_100055EB0;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_100055EB0()
{
  sub_100002BAC();
  (*(v0[48] + 104))(v0[49], enum case for LoadState.loaded(_:), v0[47]);
  v1 = swift_task_alloc();
  v0[58] = v1;
  *v1 = v0;
  v1[1] = sub_100055F64;
  v2 = v0[49];
  v3 = v0[28];
  v4 = sub_1000031B8(v0[29]);

  return sub_100041158(v4, v5);
}

uint64_t sub_100055F64()
{
  sub_100001ED0();
  sub_100001EF4();
  v2 = v1[58];
  v3 = v1[49];
  v4 = v1[48];
  v5 = v1[47];
  v6 = v1[29];
  v7 = *v0;
  sub_100002B9C();
  *v8 = v7;

  v9 = *(v4 + 8);
  v10 = sub_100001F70();
  v11(v10);
  v12 = sub_100003DE0();

  return _swift_task_switch(v12, v13, v14);
}

uint64_t sub_1000560B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_10000385C();
  sub_100003284();
  v15 = v14[54];
  v16 = v14[52];
  v17 = v14[53];
  v18 = v14[50];
  v19 = v14[51];
  v20 = v14[49];
  v21 = v14[46];
  v39 = v14[43];
  v40 = v14[40];
  v41 = v14[37];
  v22 = sub_10004868C(v14[55]);
  sub_1000480AC(v22, (v14 + 12));
  v23 = v14[16];
  sub_100003370(v14 + 12, v14[15]);
  v24 = *(v23 + 32);
  v25 = sub_100003170();
  v26(v25, v23);
  v27 = *(v17 + 8);
  v28 = sub_100003754();
  v29(v28);
  sub_100003324(v14 + 12);

  sub_100001F00();
  sub_100003540();

  return v31(v30, v31, v32, v33, v34, v35, v36, v37, v39, v40, v41, a12, a13, a14);
}

uint64_t sub_1000561D0()
{
  sub_100001ED0();
  sub_100018E0C();
  sub_100004B40();
  *v4 = v3;
  v5 = *(v0 + 328);
  *v4 = *v2;
  *(v3 + 336) = v1;

  sub_10000CC7C();
  v7 = *(v6 + 152);
  if (v1)
  {
  }

  sub_100007088();

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_100056B00()
{
  v1 = sub_10000C1A0();
  v3 = v2(v1);
  sub_100005680(v3);
  v5 = *(v4 + 16);
  v6 = sub_1000062B0();
  v7(v6);
  return v0;
}

uint64_t sub_100056B50()
{
  sub_100002BAC();
  sub_100001EF4();
  v3 = v2;
  sub_100004B40();
  *v4 = v3;
  v6 = *(v5 + 392);
  v7 = *v1;
  sub_100002B9C();
  *v8 = v7;
  v3[50] = v0;

  if (v0)
  {
    v9 = v3[48];
    v10 = v3[19];

    v11 = sub_1000C4B10;
    v12 = v10;
  }

  else
  {
    v12 = v3[19];
    v11 = sub_100056C60;
  }

  return _swift_task_switch(v11, v12, 0);
}

uint64_t sub_100056C60()
{
  sub_10000639C();
  sub_100003884();
  v1 = *(v0 + 384);

  sub_10000C1CC();

  sub_100002F54();
  sub_100003D20();

  return v3(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_100056CF0()
{
  sub_100001ED0();
  v2 = *v1;
  sub_100004B40();
  *v4 = v3;
  v5 = *(v2 + 552);
  *v4 = *v1;
  *(v3 + 560) = v0;

  sub_10000A9E0();
  v7 = *(v6 + 464);
  if (v0)
  {
    v8 = sub_1000A74F8;
  }

  else
  {
    v8 = sub_100055350;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_100056E38()
{
  sub_10000385C();
  sub_100003284();
  if (qword_1001B8900 != -1)
  {
    sub_100005C18();
  }

  v2 = sub_100006010();
  v0[11] = sub_10000641C(v2, qword_1001B9FA0);
  v3 = *(v1 + 16);
  v4 = sub_10000CC04();
  v5(v4);

  v6 = Logger.logObject.getter();
  static os_log_type_t.info.getter();
  sub_1000089B8();
  v7 = sub_10000A384();
  v9 = v0[9];
  v8 = v0[10];
  v10 = v0[8];
  if (v7)
  {
    v33 = v0[4];
    v11 = sub_1000267F8();
    sub_1000080A4();
    sub_10003EAA0();
    *v11 = 136315394;
    InferenceProviderPrewarmInformation.modelBundleIdentifier.getter();
    v12 = sub_1000194A4();
    v14 = v13(v12);
    sub_1000190A0(v14, v15);

    sub_10001877C();
    v16 = type metadata accessor for InferenceProviderDescriptor();
    sub_10000509C();
    sub_10002EA7C(v17, v18);
    sub_1000195C4();
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    sub_1000239D4(v19, v20, v21, v22);
    sub_100007BA0();
    *(v11 + 14) = v16;
    sub_1000033FC();
    _os_log_impl(v23, v24, v25, v26, v27, 0x16u);
    swift_arrayDestroy();
    sub_100004B78();
    sub_10000706C();
  }

  else
  {

    v28 = sub_1000194A4();
    v29(v28);
  }

  v30 = swift_task_alloc();
  v0[12] = v30;
  *v30 = v0;
  sub_10000CD28(v30);
  sub_100003540();

  return sub_100030B84();
}

uint64_t sub_100057038()
{
  sub_100001ED0();
  sub_100001EF4();
  v3 = v2;
  sub_100004B40();
  *v4 = v3;
  v6 = *(v5 + 96);
  v7 = *v1;
  sub_100002B9C();
  *v8 = v7;

  if (v0)
  {
    v9 = v3[10];
    v10 = v3[7];

    sub_10000778C();

    return v11();
  }

  else
  {
    v13 = v3[4];
    sub_10000E700();

    return _swift_task_switch(v14, v15, v16);
  }
}

uint64_t sub_10005716C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_100026B98();
  sub_1000033DC();
  v13 = v12[4];
  v14 = *(v13 + 112);
  v12[13] = v14;
  if (v14)
  {
    sub_1000185A8(&async function pointer to dispatch thunk of InferenceProviderXPCSender.prewarmBundle(information:));
    sub_100007BCC();
    v15 = swift_task_alloc();
    v12[14] = v15;
    *v15 = v12;
    sub_100012670(v15);
    sub_100001FBC();
  }

  else
  {
    v24 = v12[11];

    v25 = Logger.logObject.getter();
    static os_log_type_t.info.getter();
    sub_1000089B8();
    if (sub_10000A384())
    {
      v26 = v12[4];
      sub_100007698();
      sub_100003890();
      sub_10003EAA0();
      *v13 = 136315138;
      v27 = type metadata accessor for InferenceProviderDescriptor();
      sub_10000509C();
      sub_10002EA7C(v28, v29);
      v30 = sub_1000094F0();
      sub_1000239D4(v30, v31, v32, v33);
      sub_100007BA0();
      *(v13 + 4) = v27;
      sub_1000033FC();
      _os_log_impl(v34, v35, v36, v37, v38, 0xCu);
      sub_100001F88();
      sub_10000706C();
    }

    sub_100009E7C();
    sub_100005668();
    sub_100039484(v39, v40, v41);

    sub_100002F54();
    sub_100001FBC();
  }

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10, a11, a12);
}

uint64_t sub_10005732C()
{
  v2 = v0[37] + v0[38] + *(v0[30] + 60);

  return sub_100007130(v2, (v0 + 12));
}

uint64_t sub_100057354()
{
  sub_100001ED0();
  v2 = *v1;
  sub_100004B40();
  *v4 = v3;
  v5 = *(v2 + 568);
  *v4 = *v1;
  *(v3 + 576) = v0;

  sub_10000A9E0();
  v7 = *(v6 + 464);
  if (v0)
  {
    v8 = sub_1000A75B4;
  }

  else
  {
    v8 = sub_100057528;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_10005749C()
{
  sub_100001ED0();
  sub_100002C20();
  v0 = swift_task_alloc();
  v1 = sub_100004B00(v0);
  *v1 = v2;
  sub_10000501C(v1);

  return sub_10005354C();
}

uint64_t sub_100057528()
{
  sub_100003884();
  v1 = v0[16];
  sub_100003370(v0 + 12, v0[15]);
  v2 = *(sub_100001F0C() + 8);
  sub_100004B94();
  v9 = (v3 + *v3);
  v5 = *(v4 + 4);
  v6 = swift_task_alloc();
  v0[73] = v6;
  *v6 = v0;
  v6[1] = sub_1000578A0;
  v7 = sub_1000060A4();

  return v9(v7);
}

uint64_t sub_100057664(uint64_t a1, void *a2)
{
  *a2 = v2;
  a2[1] = 0;

  return swift_willThrow();
}

uint64_t sub_100057680()
{
  v3 = *(v1 + v0);
  *(v1 + v0) = 0;
}

uint64_t sub_100057698()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10006FA64;

  return sub_100057730();
}

uint64_t sub_100057730()
{
  sub_100002BAC();
  v2 = sub_10000D088(v1);
  v0[5] = v2;
  sub_100002F44(v2);
  v0[6] = v3;
  v5 = *(v4 + 64);
  v0[7] = sub_100002C58();
  v6 = type metadata accessor for InferenceProviderPrewarmInformation();
  v0[8] = v6;
  sub_100002F44(v6);
  v0[9] = v7;
  v9 = *(v8 + 64);
  v0[10] = sub_100002C58();
  v10 = sub_100002C10();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_100057818()
{
  v3 = *v0;
}

uint64_t sub_100057858()
{

  return type metadata accessor for ModelCatalogAsset(0);
}

uint64_t sub_100057890(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return 0;
}

uint64_t sub_1000578A0()
{
  sub_10000CB70();
  sub_100003884();
  v1 = *v0;
  v2 = *v0;
  sub_100002B9C();
  *v3 = v2;
  v4 = v1[73];
  v5 = *v0;
  *v3 = *v0;

  v6 = swift_task_alloc();
  v2[74] = v6;
  *v6 = v5;
  v6[1] = sub_1000A6D0C;
  v7 = v1[58];
  v8 = v1[57];
  v9 = v1[56];
  sub_100004CC8();

  return sub_10003F198();
}

void sub_100057A3C(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0x16u);
}

uint64_t sub_100057A54()
{

  return swift_arrayDestroy();
}

uint64_t sub_100057A88()
{

  return sub_100009BFC(v0, 1, 1, v1);
}

uint64_t sub_100057AA8(void *a1, uint64_t a2)
{
  v5 = sub_100065020(&qword_1001BB050, &qword_10016F6E0);
  v6 = sub_100002F04(v5);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v9 = v2[15];
  v2[15] = a1;
  v10 = a1;

  v11 = v2[14];
  v2[14] = a2;

  type metadata accessor for TaskPriority();
  sub_100003978();
  sub_100009BFC(v12, v13, v14, v15);
  sub_10001135C();
  v18 = sub_10002EA7C(v16, v17);
  v19 = swift_allocObject();
  v19[2] = v2;
  v19[3] = v18;
  v19[4] = v10;
  v19[5] = v2;
  sub_100016434();
  v20 = v10;
  sub_10002BA40();
  sub_1000652FC();
  v21 = v2[17];
  v2[17] = v22;
}

uint64_t sub_100057BE8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100057C30()
{
  sub_10000639C();
  sub_100003884();
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = swift_task_alloc();
  v6 = sub_100004B00(v5);
  *v6 = v7;
  v6[1] = sub_10006FA64;
  sub_100003D20();

  return sub_100057E38(v8, v9, v10, v11, v12);
}

uint64_t sub_100057CDC()
{
  sub_10000CB70();
  sub_100003884();
  v2 = v0[11];
  v1 = v0[12];
  sub_10001135C();
  sub_10002EA7C(v3, v4);
  v5 = swift_task_alloc();
  v0[13] = v5;
  *(v5 + 16) = v2;
  v6 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
  v7 = swift_task_alloc();
  v0[14] = v7;
  sub_10000E2C0(0, &qword_1001BA4C0, RBSProcessExitContext_ptr);
  *v7 = v0;
  v7[1] = sub_1000A63E0;
  sub_100004CC8();

  return withCheckedContinuation<A>(isolation:function:_:)(v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_100057E38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 88) = a4;
  *(v5 + 96) = a5;

  return _swift_task_switch(sub_100057CDC, a5, 0);
}

void sub_100057EC8(uint64_t a1, void *a2)
{
  v4 = sub_100065020(&qword_1001BA4C8, &qword_100171028);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = aBlock - v7;
  (*(v5 + 16))(aBlock - v7, a1, v4);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, v8, v4);
  aBlock[4] = sub_1000B1470;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000A68D0;
  aBlock[3] = &unk_1001B0E30;
  v11 = _Block_copy(aBlock);

  [a2 monitorForDeath:v11];
  _Block_release(v11);
}

uint64_t sub_100058078()
{
  v1 = sub_100065020(&qword_1001BA4C8, &qword_100171028);
  sub_100002C00(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10005810C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1000094B0();
  sub_10000636C();
  sub_100001EF4();
  v13 = v12;
  sub_100004B40();
  *v14 = v13;
  v16 = v15[8];
  v17 = v15[7];
  v18 = v15[6];
  v19 = v15[5];
  v20 = v15[4];
  v21 = *v11;
  sub_100002B9C();
  *v22 = v21;
  v13[9] = v10;

  v23 = *(v19 + 8);
  v24 = sub_10000A9EC();
  v25(v24);

  if (v10)
  {
    v26 = v13[2];
    sub_10000E700();
    sub_100006378();

    return _swift_task_switch(v27, v28, v29);
  }

  else
  {
    v31 = v13[6];

    v32 = *(v21 + 8);
    sub_100006378();

    return v34(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10);
  }
}

uint64_t sub_1000582AC()
{
  sub_100002BAC();
  sub_100001EF4();
  v3 = v2;
  sub_100004B40();
  *v4 = v3;
  v6 = *(v5 + 80);
  v7 = *v1;
  sub_100002B9C();
  *v8 = v7;
  v3[11] = v0;

  if (v0)
  {
    v9 = v3[3];
    v10 = sub_1000951CC;
  }

  else
  {
    v11 = v3[8];
    v12 = v3[9];
    v13 = v3[3];

    v10 = sub_1000583C4;
    v9 = v13;
  }

  return _swift_task_switch(v10, v9, 0);
}

uint64_t sub_1000583C4()
{
  sub_100002BAC();
  v1 = *(v0 + 48);

  sub_100001F00();

  return v2();
}

uint64_t sub_10005841C()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  sub_1000119E4();

  return _swift_deallocObject(v4, v5, v6);
}

uint64_t sub_100058460(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v4 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for InferenceProviderAsset(0);
    sub_100011B14(&qword_1001B94B0, type metadata accessor for InferenceProviderAsset);
    result = Set.Iterator.init(_cocoa:)();
    v4 = v20;
    v6 = v21;
    v7 = v22;
    v8 = v23;
    v9 = v24;
  }

  else
  {
    v10 = -1 << *(a1 + 32);
    v6 = a1 + 56;
    v7 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(a1 + 56);

    v8 = 0;
  }

  if (v4 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v13 = v8;
  v14 = v9;
  v15 = v8;
  if (v9)
  {
LABEL_12:
    v16 = (v14 - 1) & v14;
    v17 = *(*(v4 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));

    if (v17)
    {
      while (1)
      {
        v25 = v17;
        v18 = sub_1000586B8(&v25, a2);
        if (v3)
        {
          break;
        }

        if (v18)
        {
          goto LABEL_23;
        }

        v8 = v15;
        v9 = v16;
        if ((v4 & 0x8000000000000000) == 0)
        {
          goto LABEL_8;
        }

LABEL_14:
        if (__CocoaSet.Iterator.next()())
        {
          type metadata accessor for InferenceProviderAsset(0);
          swift_dynamicCast();
          v17 = v25;
          v15 = v8;
          v16 = v9;
          if (v25)
          {
            continue;
          }
        }

        goto LABEL_21;
      }

LABEL_23:
      sub_100019334(v4, v6, v7, v8, v9);
    }

    else
    {
LABEL_21:
      sub_100019334(v4, v6, v7, v8, v9);

      return 0;
    }

    return v17;
  }

  else
  {
    while (1)
    {
      v15 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v15 >= ((v7 + 64) >> 6))
      {
        v9 = 0;
        goto LABEL_21;
      }

      v14 = *(v6 + 8 * v15);
      ++v13;
      if (v14)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1000586B8(uint64_t *a1, uint64_t *a2)
{
  v20 = *a1;
  v2 = *a2;
  if ((*a2 & 0xC000000000000001) != 0)
  {

    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for InferenceProviderAsset(0);
    sub_100011B14(&qword_1001B94B0, type metadata accessor for InferenceProviderAsset);
    result = Set.Iterator.init(_cocoa:)();
    v2 = v21;
    v4 = v22;
    v6 = v23;
    v5 = v24;
    v7 = v25;
  }

  else
  {
    v8 = -1 << *(v2 + 32);
    v4 = v2 + 56;
    v6 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v7 = v10 & *(v2 + 56);
    result = swift_bridgeObjectRetain_n();
    v5 = 0;
  }

  v19 = v6;
  v11 = (v6 + 64) >> 6;
  while (1)
  {
    v12 = v7;
    v13 = v5;
    if ((v2 & 0x8000000000000000) == 0)
    {
      break;
    }

    if (!__CocoaSet.Iterator.next()() || (type metadata accessor for InferenceProviderAsset(0), swift_dynamicCast(), (v16 = v26) == 0))
    {
LABEL_20:
      v18 = 1;
      goto LABEL_21;
    }

LABEL_17:
    v17 = sub_10002D88C(v16);

    if (v17)
    {
      v18 = 0;
LABEL_21:
      sub_100019334(v2, v4, v19, v13, v12);

      return v18;
    }
  }

  v14 = v5;
  v15 = v7;
  if (v7)
  {
LABEL_13:
    v7 = (v15 - 1) & v15;
    v16 = *(*(v2 + 48) + ((v5 << 9) | (8 * __clz(__rbit64(v15)))));

    if (!v16)
    {
      goto LABEL_20;
    }

    goto LABEL_17;
  }

  while (1)
  {
    v5 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v5 >= v11)
    {
      v12 = 0;
      goto LABEL_20;
    }

    v15 = *(v4 + 8 * v5);
    ++v14;
    if (v15)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

void sub_100058A04()
{
  sub_1000134E8();
  v3 = v0;
  sub_100065020(v4, v5);
  v6 = sub_1000239EC();
  if (*(v1 + 16))
  {
    sub_10000A874();
    sub_100019480();
    if (v10)
    {
      v11 = v7 >= v9;
    }

    else
    {
      v11 = 1;
    }

    if (v11)
    {
      memmove(v7, v2, 8 * v8);
    }

    v12 = 0;
    *(v6 + 16) = *(v1 + 16);
    v13 = *(v1 + 32);
    sub_100003878();
    v14 = *(v1 + 56);
    sub_100012714();
    v17 = v16 & v15;
    v19 = (v18 + 63) >> 6;
    if ((v16 & v15) != 0)
    {
      do
      {
        v20 = __clz(__rbit64(v17));
        v17 &= v17 - 1;
LABEL_15:
        *(*(v6 + 48) + 8 * (v20 | (v12 << 6))) = *(*(v1 + 48) + 8 * (v20 | (v12 << 6)));
      }

      while (v17);
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v19)
      {
        goto LABEL_17;
      }

      ++v21;
      if (*(v2 + v12))
      {
        sub_1000062A0();
        v17 = v23 & v22;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v3 = v6;
    sub_100009C38();
  }
}

void sub_100058B10()
{
  sub_1000055B0();
  v92 = v1;
  v93 = v0;
  v90 = v3;
  v91 = v2;
  v79 = v4;
  v89 = v5;
  v7 = v6;
  v95 = v8;
  v96 = v9;
  v78 = type metadata accessor for AppleIntelligenceReportingError();
  v10 = sub_100002BDC(v78);
  v77 = v11;
  v13 = *(v12 + 64);
  __chkstk_darwin(v10);
  sub_100009C24();
  sub_100002BF0();
  __chkstk_darwin(v14);
  sub_1000079F8();
  sub_100002BF0();
  __chkstk_darwin(v15);
  sub_1000079F8();
  sub_100002BF0();
  __chkstk_darwin(v16);
  v75 = v73 - v17;
  v18 = sub_100065020(&qword_1001B9048, &qword_10016FCB8);
  sub_100002F04(v18);
  v20 = *(v19 + 64);
  sub_100004B1C();
  __chkstk_darwin(v21);
  v88 = v73 - v22;
  v23 = sub_100065020(&qword_1001B9050, &qword_10016FCC0);
  sub_100002F04(v23);
  v25 = *(v24 + 64);
  sub_100004B1C();
  __chkstk_darwin(v26);
  v27 = sub_100065020(&qword_1001B9058, &qword_10016FCC8);
  v28 = sub_100002F04(v27);
  v30 = *(v29 + 64);
  __chkstk_darwin(v28);
  sub_100009C24();
  sub_100002BF0();
  __chkstk_darwin(v31);
  sub_1000079F8();
  sub_100002BF0();
  __chkstk_darwin(v32);
  v94 = type metadata accessor for AppleIntelligenceEvent();
  v33 = sub_100002BDC(v94);
  v97 = v34;
  v36 = *(v35 + 64);
  __chkstk_darwin(v33);
  sub_100002B8C();
  v39 = v38 - v37;
  v40 = subsystemName.getter();
  v86 = v41;
  v87 = v40;
  v42 = sub_100065020(&qword_1001B9060, &unk_10016FCD0);
  v43 = sub_100002F04(v42);
  v45 = *(v44 + 64);
  __chkstk_darwin(v43);
  v46 = (v45 + 15) & 0xFFFFFFFFFFFFFFF0;
  v47 = type metadata accessor for UUID();
  sub_100003978();
  sub_100009BFC(v48, v49, v50, v47);
  v73[2] = v7;
  v51 = *&aExecuterqueuer[8 * v7];
  v84 = *&aExecuterqueuer[8 * v7 + 24];
  v85 = v51;
  type metadata accessor for UUIDIdentifier();
  sub_100003978();
  v73[0] = v52;
  v56 = sub_100009BFC(v53, v54, v55, v52);
  v83 = v73;
  __chkstk_darwin(v56);
  v57 = sub_10002E90C(v96, v73 - v46, &qword_1001B9060, &unk_10016FCD0);
  v82 = v73;
  v76 = v45;
  __chkstk_darwin(v57);
  v80 = *(v47 - 8);
  v74 = *(v80 + 16);
  v74(v73 - v46, v95, v47);
  sub_1000039A8();
  v81 = v47;
  sub_100009BFC(v58, v59, v60, v47);
  sub_100061B5C(v89);

  Dictionary.init(dictionaryLiteral:)();
  AppleIntelligenceUseCase.init(useCaseIdentifier:parameters:)();
  type metadata accessor for AppleIntelligenceUseCase();
  sub_1000039A8();
  sub_100009BFC(v61, v62, v63, v64);
  type metadata accessor for AppleIntelligenceReportingMetadata();
  sub_100003978();
  sub_100009BFC(v65, v66, v67, v68);

  sub_100005600();
  v69 = v97;
  v70 = v39;
  AppleIntelligenceInferenceEvent.init(subsystem:sessionIdentifier:stepIdentifier:invocationRequestIdentifier:clientRequestIdentifier:modelManagerRequestIdentifier:errors:useCaseIdentifier:additionalUseCaseIdentifiers:requestorBundleIdentifier:onBehalfOfBundleIdentifier:inferenceProviderIdentifier:assetBundleIdentifier:assets:metadata:)();
  v71 = v94;
  (*(v69 + 104))(v70, enum case for AppleIntelligenceEvent.inference(_:), v94);
  if (*(v93 + 16))
  {
    v72 = *(v93 + 16);

    _s26AppleIntelligenceReporting13EventReporterC04emitab3EndD09eventInfo05startD10IdentifieryAA0abD0O_AA14UUIDIdentifierVSgtAA0abC5ErrorOYKF();
    (*(v69 + 8))(v70, v71);
  }

  else
  {
    (*(v69 + 8))(v70, v71);
  }

  sub_100002EEC();
}

uint64_t sub_10005971C()
{
  v35 = v0[41];
  v30 = v0[32];
  v31 = v0[33];
  v37 = v0[31];
  v1 = v0[29];
  v26 = v1;
  v27 = v0[30];
  v23 = v0[27];
  v24 = v0[28];
  v34 = v0[23];
  v2 = v0[21];
  v3 = v0[18];
  v22 = v0[19];
  v29 = v0[16];
  v4 = v0[11];
  v36 = v0[12];
  v32 = v0[35] + 15;
  v33 = v0[36] + 15;
  v5 = v0[7];
  v21 = v0[8];
  sub_10005D8A4(v5);
  v6 = v0[5];
  v7 = v0[6];
  sub_100003370(v0 + 2, v6);
  RequestMetadata.id.getter();
  v8 = *(v5 + 8);
  sub_100003370(v5 + 4, *(v5 + 7));
  v9 = *(v8 + 8);
  v10 = sub_100005974();
  v11(v10, v8);
  InferenceProviderDescriptor.id.getter();
  sub_10001351C();
  v23(v2, v22);
  (*(v7 + 16))(v3, v37, 0, v2, v8, v21 + v27, v6, v7);

  v30(v3, v29);
  v12 = v4[51];
  v25 = v4[50];
  v28 = sub_100003370(v4 + 47, v25);
  RequestMetadata.id.getter();
  v13 = swift_task_alloc();
  UUIDIdentifier.uuid.getter();
  v30(v3, v29);
  v14 = swift_task_alloc();
  RequestMetadata.loggingIdentifier.getter();
  UUID.init(uuidString:)();

  RequestMetadata.useCaseID.getter();
  sub_10005D744();
  sub_1001284A4();
  (*(v12 + 16))(v13, v14, 0, _swiftEmptyArrayStorage, v36, &v5[v26], v26, v15, v25, v12);

  v16 = v0[37];
  v17 = v0[38];
  sub_100033268();
  v18 = v0[12];
  sub_10001301C(v14, &qword_1001B9060);
  v16(v13, v28);
  sub_10001301C(v18, &qword_1001B9058);

  sub_100003324(v0 + 2);

  sub_100001F7C();

  return v19(0);
}

uint64_t sub_100059A5C()
{
  v2 = v0[40];
  result = v0[41];
  v4 = v0[38];
  v3 = v0[39];
  return result;
}

uint64_t sub_100059A68()
{
  sub_100001ED0();
  sub_10000D554();
  sub_100004B40();
  *v4 = v3;
  v5 = *(v1 + 112);
  v6 = *v2;
  sub_100003744();
  *v7 = v6;
  *(v9 + 120) = v8;
  *(v9 + 128) = v0;

  sub_10000A9E0();
  v11 = *(v10 + 48);
  sub_10000E700();

  return _swift_task_switch(v12, v13, v14);
}

uint64_t sub_100059B7C()
{
  sub_10000639C();
  sub_100003884();
  if (v1[15])
  {
    v2 = v1[15];
    swift_errorRetain();
    if (qword_1001B88F0 != -1)
    {
      sub_10000505C();
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_100002FD0(v3, qword_1001B9A18);
    v4 = Logger.logObject.getter();
    static os_log_type_t.info.getter();
    sub_100006390();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v0, "Failed to perform inference on primary inference provider, falling back", v6, 2u);
      sub_100002BD0();
    }

    v7 = v1[10];

    v1[17] = sub_100109080();
    v1[18] = v8;
    v9 = swift_task_alloc();
    v10 = sub_1000192A4(v9);
    *v10 = v11;
    v10[1] = sub_10009D0DC;
    v12 = v1[10];
    v13 = v1[5];
    v14 = v1[6];
    v15 = v1[3];
    v16 = v1[4];
    sub_1000031B8(v1[12]);
    sub_100005A04();
    sub_100003D20();

    return sub_10009A128();
  }

  else
  {
    v19 = v1[12];
    v20 = v1[9];
    v21 = v1[10];

    sub_100002F54();
    sub_100003D20();

    return v23(v22, v23, v24, v25, v26, v27, v28, v29);
  }
}

uint64_t sub_100059D2C()
{
  sub_100059D84();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

void *sub_100059D84()
{
  v1 = v0[2];

  v2 = v0[3];

  sub_100003324(v0 + 4);
  v3 = OBJC_IVAR____TtC13modelmanagerd13DaemonRequest_metadata;
  v4 = type metadata accessor for RequestMetadata();
  sub_100002C00(v4);
  (*(v5 + 8))(v0 + v3);
  sub_100059E78(v0 + OBJC_IVAR____TtC13modelmanagerd13DaemonRequest_unsafeManagerOwnedState, type metadata accessor for DaemonRequest.ManagerOwnedState);
  return v0;
}

uint64_t sub_100059E18(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100059E78(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_100002C00(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_100059ED0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_10000385C();
  sub_100003284();
  sub_100001EF4();
  v17 = v16;
  sub_100004B40();
  *v18 = v17;
  v20 = v19[45];
  v21 = v19[44];
  v22 = v19[41];
  v45 = v19[40];
  v23 = v19[39];
  v24 = v19[38];
  v25 = v19[37];
  v26 = v19[35];
  v27 = v19[34];
  v28 = *v15;
  sub_100002B9C();
  *v29 = v28;
  *(v17 + 368) = v14;

  v30 = sub_10001364C();
  v31(v30);
  (*(v23 + 8))(v45, v24);
  if (v14)
  {
    sub_1000059F8();
    sub_100003540();

    return _swift_task_switch(v32, v33, v34);
  }

  else
  {
    sub_100008048();

    sub_100002F54();
    sub_100003540();

    return v37(v36, v37, v38, v39, v40, v41, v42, v43, a9, a10, v45, a12, a13, a14);
  }
}

uint64_t sub_10005A130()
{
  sub_100001ED0();
  sub_100001EF4();
  v3 = v2;
  sub_100004B40();
  *v4 = v3;
  v6 = *(v5 + 176);
  v7 = *v1;
  sub_100002B9C();
  *v8 = v7;

  if (v0)
  {
  }

  else
  {
    v11 = *(v3 + 160);
    v10 = *(v3 + 168);

    sub_1000059F8();

    return _swift_task_switch(v12, v13, v14);
  }
}

uint64_t sub_10005A258()
{
  sub_10000639C();
  sub_100003884();
  v0 = sub_10000A0F8();
  sub_1001634B8(v0);

  sub_100001F00();
  sub_100003D20();

  return v2(v1, v2, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_10005A2E0()
{
  sub_100002BAC();
  sub_100001EF4();
  v2 = *(v1 + 104);
  v3 = *(v1 + 96);
  v4 = *v0;
  sub_100002B9C();
  *v5 = v4;

  v6 = sub_100003000();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_10005A3E0()
{
  sub_100002BAC();
  sub_100003324((v0 + 16));
  sub_100001F00();

  return v1();
}

uint64_t sub_10005A438()
{
  sub_100001ED0();
  v2 = *v1;
  sub_100004B40();
  *v4 = v3;
  v5 = *(v2 + 336);
  *v4 = *v1;
  *(v3 + 344) = v0;

  sub_10000A9E0();
  v7 = *(v6 + 208);
  if (v0)
  {
    v8 = sub_1000AC4BC;
  }

  else
  {
    v8 = sub_10005A580;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_10005A580(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10001446C();
  sub_10000636C();
  v11 = v10[36];
  v12 = v10[37];
  v14 = v10[33];
  v13 = v10[34];
  v15 = v10[32];
  v16 = v10[29];
  v17 = v10[25];
  sub_10005A670();

  sub_100004B50();
  os_activity_scope_leave((v11 + 24));
  swift_endAccess();

  sub_100007A20();
  sub_100003770();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10);
}

void sub_10005A670()
{
  sub_10000C1A0();
  v2 = type metadata accessor for InferenceProviderRequestConfiguration();
  v3 = sub_100002BDC(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3);
  sub_100002B8C();
  v10 = v9 - v8;
  if (qword_1001B8900 != -1)
  {
    sub_100005C18();
  }

  v11 = type metadata accessor for Logger();
  sub_10000641C(v11, qword_1001B9FA0);
  (*(v5 + 16))(v10, v1, v2);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v31 = sub_100007698();
    v32 = swift_slowAlloc();
    v33 = v32;
    *v31 = 136315138;
    v14 = type metadata accessor for UUID();
    v30 = &v28;
    v15 = sub_100002BDC(v14);
    v17 = v16;
    v19 = *(v18 + 64);
    __chkstk_darwin(v15);
    sub_100002B8C();
    InferenceProviderRequestConfiguration.requestUUID.getter();
    sub_10005A8F4();
    v20 = sub_10001E504();
    v29 = v0;
    v21 = *(v17 + 8);
    v22 = sub_100005980();
    v23(v22);
    (*(v5 + 8))(v10, v2);
    v24 = sub_100001F70();
    sub_100004A3C(v24, v25, v26);
    sub_100003170();

    v27 = v31;
    *(v31 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v12, v13, v29, v27, 0xCu);
    sub_100003324(v32);
    sub_100003420();
    sub_100002BB8();
  }

  else
  {

    (*(v5 + 8))(v10, v2);
  }
}

unint64_t sub_10005A8F4()
{
  result = qword_1001B8F38;
  if (!qword_1001B8F38)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001B8F38);
  }

  return result;
}

uint64_t sub_10005A940()
{
  sub_10000636C();
  v2 = *v1;
  v3 = *v1;
  sub_100002B9C();
  *v4 = v3;
  v5 = v2[54];
  v6 = *v1;
  *v4 = *v1;
  v3[55] = v0;

  sub_10014B368();
  v8 = *(v7 + 328);
  v9 = v2[40];
  v10 = v2[39];
  v11 = v2[38];
  v12 = v2[37];
  v13 = v2[36];
  if (v0)
  {
    v14 = v3[19];
    (*(v9 + 8))(v8, v10);
    (*(v12 + 8))(v11, v13);
    sub_10003DDC8();
    sub_1000071A8();

    return _swift_task_switch(v15, v16, v17);
  }

  else
  {
    v18 = v3[22];
    (*(v9 + 8))(v8, v10);
    (*(v12 + 8))(v11, v13);
    sub_100005358();
    v25 = v19;
    v20 = *(v18 + 4);
    v21 = swift_task_alloc();
    v3[56] = v21;
    *v21 = v6;
    v21[1] = sub_10005BD7C;
    v22 = v3[23];
    v23 = sub_1000031B8(v3[45]);

    return v25(v23);
  }
}

uint64_t sub_10005ABB4()
{
  sub_10000639C();
  sub_100003884();
  sub_1000089AC();
  v3 = *(v0 + 32);
  v2 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  sub_100004B28(v4);
  sub_1000135D0();
  sub_100003D20();

  return sub_10005AC58(v5, v6, v7, v8, v9);
}

uint64_t sub_10005AC58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = type metadata accessor for InferenceProviderDescriptor();
  v5[7] = v6;
  v7 = *(v6 - 8);
  v5[8] = v7;
  v8 = *(v7 + 64) + 15;
  v5[9] = swift_task_alloc();

  return _swift_task_switch(sub_10005AD20, 0, 0);
}

uint64_t sub_10005AD20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_100005F88();
  sub_1000033DC();
  v14 = v12[8];
  v13 = v12[9];
  v15 = v12[7];
  v17 = v12[4];
  v16 = v12[5];
  v18 = v12[3];
  v19 = v17[8];
  sub_100003370(v17 + 4, v17[7]);
  v20 = *(v19 + 8);
  v21 = sub_100007B78();
  v22(v21);
  sub_10005AEB0();
  v12[10] = *(v14 + 8);
  v12[11] = (v14 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v23 = sub_100003754();
  v24(v23);
  v25 = v17[8];
  sub_100003370(v17 + 4, v17[7]);
  v26 = *(v25 + 8);
  v27 = sub_10000D0E8();
  v28(v27, v25);
  v42 = v16 + *v16;
  v29 = v16[1];
  v30 = swift_task_alloc();
  v12[12] = v30;
  *v30 = v12;
  v30[1] = sub_10005BC34;
  v31 = v12[9];
  v32 = v12[6];
  sub_1000031B8(v12[2]);
  sub_1000062BC();

  return v35(v33, v34, v35, v36, v37, v38, v39, v40, v42, a10, a11, a12);
}

void sub_10005AEB0()
{
  v1 = *(v0 + OBJC_IVAR____TtC13modelmanagerd13DaemonSession__lazyState);
  v2 = *(*v1 + class metadata base offset for ManagedBuffer + 16);
  v3 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v1 + v3));
  sub_10005B018(v1 + v2);
  os_unfair_lock_unlock((v1 + v3));
}

uint64_t sub_10005AF50(uint64_t a1, uint64_t a2)
{
  result = type metadata accessor for DaemonSession.LazyState(0);
  v5 = *(result + 28);
  if ((*(a1 + v5) & 1) == 0)
  {
    *(a1 + v5) = 1;
    v6 = *(result + 24);
    sub_10000ECD8(a1 + v6, &qword_1001B9CD0, &qword_100170778);
    v7 = type metadata accessor for InferenceProviderDescriptor();
    (*(*(v7 - 8) + 16))(a1 + v6, a2, v7);
    return sub_100009BFC(a1 + v6, 0, 1, v7);
  }

  return result;
}

uint64_t sub_10005B034()
{
  sub_10001881C();
  sub_100003884();
  v2 = type metadata accessor for ModelXPCRequest.ExecuteRequest();
  sub_100002F44(v2);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = *(v5 + 64);
  sub_10000D00C();
  v8 = (v0 + v7);
  v9 = *v8;
  v10 = v8[1];
  v11 = swift_task_alloc();
  *(v1 + 16) = v11;
  *v11 = v1;
  sub_10002B0CC(v11);
  sub_100007BB8();

  return sub_10005B120(v12, v13, v14, v15, v16);
}

uint64_t sub_10005B120(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[10] = a4;
  v5[11] = a5;
  v5[8] = a2;
  v5[9] = a3;
  v5[7] = a1;
  v6 = type metadata accessor for InferenceProviderDescriptor();
  v5[12] = v6;
  v7 = *(v6 - 8);
  v5[13] = v7;
  v8 = *(v7 + 64) + 15;
  v5[14] = swift_task_alloc();
  v9 = type metadata accessor for InferenceProviderRequestResult();
  v5[15] = v9;
  v10 = *(v9 - 8);
  v5[16] = v10;
  v11 = *(v10 + 64) + 15;
  v5[17] = swift_task_alloc();
  v12 = type metadata accessor for RequestMetadata();
  v5[18] = v12;
  v13 = *(v12 - 8);
  v5[19] = v13;
  v14 = *(v13 + 64) + 15;
  v5[20] = swift_task_alloc();
  v15 = sub_100065020(&qword_1001B8F48, &qword_10016FB30);
  v5[21] = v15;
  v16 = *(v15 - 8);
  v5[22] = v16;
  v17 = *(v16 + 64) + 15;
  v5[23] = swift_task_alloc();
  v18 = type metadata accessor for ModelXPCRequest.ExecuteRequest();
  v5[24] = v18;
  v19 = *(v18 - 8);
  v5[25] = v19;
  v20 = *(v19 + 64) + 15;
  v5[26] = swift_task_alloc();

  return _swift_task_switch(sub_10005B364, 0, 0);
}

uint64_t sub_10005B364(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_1000133FC();
  sub_10000C72C();
  if (qword_1001B8AE0 != -1)
  {
    sub_10000881C();
  }

  v21 = v18[25];
  v20 = v18[26];
  v22 = v18[24];
  v23 = v18[9];
  v24 = type metadata accessor for Logger();
  sub_10000641C(v24, qword_1001BE400);
  v25 = sub_100008440();
  v26(v25);
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.default.getter();
  v29 = sub_10000320C(v28);
  v31 = v18[25];
  v30 = v18[26];
  if (v29)
  {
    v32 = v18[22];
    v33 = v18[23];
    v34 = v18[20];
    v66 = v18[24];
    v35 = v18[19];
    a10 = v18[18];
    a11 = v18[21];
    sub_100007698();
    a15 = sub_100003890();
    sub_100026B58(4.8149e-34);
    ModelXPCRequest.ExecuteRequest.metadata.getter();
    RequestMetadata.id.getter();
    (*(v35 + 8))(v34, a10);
    sub_100005070();
    sub_1000082D4(v36, v37, v38);
    sub_100003E14();
    dispatch thunk of CustomStringConvertible.description.getter();
    v39 = sub_10016BC1C();
    v40(v39);
    (*(v31 + 8))(v30, v66);
    v41 = sub_1000187CC();
    sub_100004A3C(v41, v34, v42);
    sub_10001AFBC();
    *(v19 + 4) = v34;
    sub_10000EEC0(&_mh_execute_header, "Responding to request: %s", BYTE4(a12));
    sub_100003A7C();
    sub_10000706C();
  }

  else
  {

    v43 = *(v31 + 8);
    v44 = sub_100013BBC();
    v45(v44);
  }

  v47 = v18[16];
  v46 = v18[17];
  v49 = v18[14];
  v48 = v18[15];
  v50 = v18[13];
  v51 = v18[10];
  v52 = v18[7];
  v67 = v18[8];
  v68 = v18[12];
  v18[5] = sub_100065020(&qword_1001BE600, &qword_100175550);
  v53 = sub_10005B680();
  sub_10006073C(v53);
  (*(v47 + 16))(v46, v52, v48);
  (*(v50 + 16))(v49, v67, v68);
  sub_100007660();
  ModelXPCRequest.ExecuteRequest.Response.init(result:lockedInferenceProvider:)();
  swift_storeEnumTagMultiPayload();
  v69 = v51 + *v51;
  v54 = v51[1];
  swift_task_alloc();
  sub_100004B34();
  v18[27] = v55;
  *v55 = v56;
  sub_1000486D0(v55);
  sub_1000037A0();

  return v58(v57, v58, v59, v60, v61, v62, v63, v64, a9, a10, a11, a12, v67, v69, a15, a16, a17, a18);
}

uint64_t sub_10005B648()
{
  *(v1 + 496) = v0;
  *(v1 + 232) = v0;

  return swift_errorRetain();
}

uint64_t sub_10005B664@<X0>(uint64_t a1@<X8>)
{
  *(a1 - 16) = *(v1 - 224);
}

unint64_t sub_10005B680()
{
  result = qword_1001BE608;
  if (!qword_1001BE608)
  {
    sub_10006A614(&qword_1001BE600, &qword_100175550);
    sub_100003814(&qword_1001BE610, &type metadata accessor for ModelXPCRequest.ExecuteRequest.Response);
    sub_100003814(&qword_1001BE618, &type metadata accessor for ModelXPCRequest.ExecuteRequest.Response);
    sub_100003814(&qword_1001B9A00, &type metadata accessor for ModelManagerError);
    sub_100003814(&qword_1001B9A08, &type metadata accessor for ModelManagerError);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001BE608);
  }

  return result;
}

uint64_t sub_10005B7D8()
{
  sub_100001ED0();
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10006FA64;
  v5 = sub_1000060A4();

  return v6(v5);
}

uint64_t sub_10005B884(void *a1, int *a2)
{
  v10 = *(a1 + 3);
  v4 = a1[3];
  v5 = sub_100003370(a1, v4);
  *(v2 + 40) = v10;
  v6 = sub_1000036CC((v2 + 16));
  (*(*(v4 - 8) + 16))(v6, v5, v4);
  v11 = (a2 + *a2);
  v7 = a2[1];
  v8 = swift_task_alloc();
  *(v2 + 56) = v8;
  *v8 = v2;
  v8[1] = sub_10005B9E0;

  return v11(v2 + 16);
}

uint64_t sub_10005B9E0()
{
  sub_100002BAC();
  sub_100001EF4();
  v2 = v1;
  sub_100004B40();
  *v3 = v2;
  v5 = *(v4 + 56);
  v6 = *v0;
  sub_100002B9C();
  *v7 = v6;

  sub_100003324((v2 + 16));
  sub_100001F00();

  return v8();
}

uint64_t sub_10005BAC0()
{
  sub_10001881C();
  sub_100003884();
  sub_100001EF4();
  v2 = v1;
  sub_100004B40();
  *v3 = v2;
  v5 = v4[27];
  v6 = v4[26];
  v7 = v4[23];
  v8 = v4[20];
  v9 = v4[17];
  v10 = v4[14];
  v11 = *v0;
  sub_100002B9C();
  *v12 = v11;

  sub_100003324((v2 + 16));

  sub_100001F00();
  sub_100007BB8();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20);
}