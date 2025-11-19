double sub_1006AF168@<D0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v55 = a2;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000BC4D4(&unk_1016AF8C0, &unk_1013A07A0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v53 - v12;
  v14 = type metadata accessor for BeaconProductInfoRecord();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v54 = &v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_10088D968(a1))
  {
    v55 = *(v55 + 280);
    v56 = a3;
    v19 = a1[3];
    v18 = a1[4];
    sub_1000035D0(a1, v19);
    (*(*(*(v18 + 8) + 8) + 32))(v19);
    sub_100AC1584(v9, v13);
    v22 = *(v6 + 8);
    v21 = v6 + 8;
    v20 = v22;
    v23 = v9;
    v22(v9, v5);
    if ((*(v15 + 48))(v13, 1, v14) == 1)
    {
      sub_10000B3A8(v13, &unk_1016AF8C0, &unk_1013A07A0);
      sub_10001F280(a1, v56);
    }

    else
    {
      v53 = v20;
      v39 = v54;
      sub_10002AB74(v13, v54, type metadata accessor for BeaconProductInfoRecord);
      v40 = v56;
      if (*(v39 + *(v14 + 36)) == 1)
      {
        v55 = v21;
        if (qword_101694B80 != -1)
        {
          swift_once();
        }

        v41 = type metadata accessor for Logger();
        sub_1000076D4(v41, qword_10177B7F8);
        sub_10001F280(a1, v57);
        v42 = Logger.logObject.getter();
        v43 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v42, v43))
        {
          v44 = v23;
          v45 = swift_slowAlloc();
          v46 = swift_slowAlloc();
          v60 = v46;
          *v45 = 141558275;
          *(v45 + 4) = 1752392040;
          *(v45 + 12) = 2081;
          v47 = v58;
          v48 = v59;
          sub_1000035D0(v57, v58);
          (*(*(*(v48 + 8) + 8) + 32))(v47);
          sub_100003E8C(&qword_101696930, &type metadata accessor for UUID);
          v49 = dispatch thunk of CustomStringConvertible.description.getter();
          v51 = v50;
          v53(v44, v5);
          sub_100007BAC(v57);
          v52 = sub_1000136BC(v49, v51, &v60);

          *(v45 + 14) = v52;
          v40 = v56;
          _os_log_impl(&_mh_execute_header, v42, v43, "Hiding beacon %{private,mask.hash}s because productInfo has hidden flag set.", v45, 0x16u);
          sub_100007BAC(v46);

          sub_100721D04(v54, type metadata accessor for BeaconProductInfoRecord);
        }

        else
        {

          sub_100721D04(v54, type metadata accessor for BeaconProductInfoRecord);
          sub_100007BAC(v57);
        }

        *(v40 + 32) = 0;
        result = 0.0;
        *v40 = 0u;
        *(v40 + 16) = 0u;
      }

      else
      {
        sub_100721D04(v39, type metadata accessor for BeaconProductInfoRecord);
        sub_10001F280(a1, v40);
      }
    }
  }

  else
  {
    v25 = v9;
    v54 = v5;
    v55 = v6;
    if (qword_101694B80 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_1000076D4(v26, qword_10177B7F8);
    sub_10001F280(a1, v57);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v60 = v30;
      *v29 = 141558275;
      *(v29 + 4) = 1752392040;
      *(v29 + 12) = 2081;
      v56 = a3;
      v31 = v58;
      v32 = v59;
      sub_1000035D0(v57, v58);
      v33 = v25;
      (*(*(*(v32 + 8) + 8) + 32))(v31);
      sub_100003E8C(&qword_101696930, &type metadata accessor for UUID);
      v34 = v54;
      v35 = dispatch thunk of CustomStringConvertible.description.getter();
      v37 = v36;
      (*(v55 + 8))(v33, v34);
      sub_100007BAC(v57);
      v38 = sub_1000136BC(v35, v37, &v60);

      *(v29 + 14) = v38;
      a3 = v56;
      _os_log_impl(&_mh_execute_header, v27, v28, "Filtering %{private,mask.hash}s because it has automatic share type (e.g. it's Family member's item) or Items Sharing feature disabled.", v29, 0x16u);
      sub_100007BAC(v30);
    }

    else
    {

      sub_100007BAC(v57);
    }

    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t sub_1006AF870()
{
  v2 = v0[11];
  v1 = v0[12];
  sub_1003FD838();
  v3 = swift_allocError();
  *v4 = 11;
  v2(0, v3);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1006AF914()
{
  v1 = *v0;
  v2 = *(*v0 + 152);
  v4 = *v0;

  sub_1007206EC(v1 + 16);

  return _swift_task_switch(sub_100011170, 0, 0);
}

uint64_t sub_1006AFA18(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v20 = *(v6 - 8);
  v7 = *(v20 + 64);
  __chkstk_darwin(v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DispatchQoS();
  v10 = *(v19 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v19);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_allocObject();
  *(v14 + 16) = &_swiftEmptySetSingleton;
  v18 = *(v3 + 120);
  v15 = swift_allocObject();
  v15[2] = v3;
  v15[3] = v14;
  v15[4] = a1;
  v15[5] = a2;
  aBlock[4] = sub_10071F138;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_10162E838;
  v16 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v21 = _swiftEmptyArrayStorage;
  sub_100003E8C(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);
  (*(v20 + 8))(v9, v6);
  (*(v10 + 8))(v13, v19);
}

uint64_t sub_1006AFD38(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v40 = a2;
  v7 = sub_1000BC4D4(&unk_101698C30, &unk_101392630);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = v34 - v9;
  v11 = type metadata accessor for SharedBeaconRecord(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = *(a1 + 280);
  v16 = sub_100007F54();
  v17 = v16[2];
  if (v17)
  {
    v34[1] = a4;
    v35 = a3;
    v36 = v16;
    v37 = v11;
    v18 = (v16 + 4);
    v19 = (v12 + 56);
    v20 = &unk_1016AA470;
    v21 = &qword_10139FD30;
    v38 = v19;
    do
    {
      sub_10001F280(v18, v42);
      sub_1000BC4D4(v20, v21);
      v22 = swift_dynamicCast();
      v23 = *v19;
      if (v22)
      {
        v23(v10, 0, 1, v11);
        sub_10002AB74(v10, v15, type metadata accessor for SharedBeaconRecord);
        if ((v15[*(v11 + 52)] & 1) == 0)
        {
          v24 = sub_1003F6D78(v15, v39);
          v25 = v15;
          v26 = v21;
          v27 = v20;
          v28 = v24;
          swift_beginAccess();
          v29 = v28;
          v20 = v27;
          v21 = v26;
          v15 = v25;
          v19 = v38;
          sub_100DEE584(&v41, v29);
          v11 = v37;
          swift_endAccess();
        }

        sub_100721D04(v15, type metadata accessor for SharedBeaconRecord);
      }

      else
      {
        v23(v10, 1, 1, v11);
        sub_10000B3A8(v10, &unk_101698C30, &unk_101392630);
      }

      v18 += 40;
      --v17;
    }

    while (v17);

    a3 = v35;
  }

  else
  {
  }

  v30 = v40;
  swift_beginAccess();
  v31 = *(v30 + 16);

  a3(v32);
}

uint64_t sub_1006B0038(uint64_t a1, uint64_t (*a2)(void *), uint64_t a3, void *a4)
{
  v42 = a2;
  v43 = a3;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v40 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for DispatchQoS();
  v39 = *(v41 - 8);
  v10 = *(v39 + 64);
  __chkstk_darwin(v41);
  v38 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS.QoSClass();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v18 = *(*(v17 - 8) + 64);
  v19 = __chkstk_darwin(v17 - 8);
  v21 = (&v35 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v19);
  v23 = &v35 - v22;
  if (*(a1 + 32))
  {
    v36 = v7;
    v37 = v6;

    v24 = sub_100F80E6C(a4);
    type metadata accessor for Transaction();
    *(swift_allocObject() + 16) = v24;

    static Transaction.asyncTask(name:block:)();

    if (qword_101694940 != -1)
    {
      swift_once();
    }

    static Date.trustedNow.getter(v23);
    v25 = type metadata accessor for Date();
    (*(*(v25 - 8) + 56))(v23, 0, 1, v25);
    sub_1000034A4();
    sub_1000D2A70(v23, v21, &unk_101696900, &unk_10138B1E0);
    sub_100EEBA48(v21);

    sub_10000B3A8(v23, &unk_101696900, &unk_10138B1E0);
    sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
    (*(v13 + 104))(v16, enum case for DispatchQoS.QoSClass.default(_:), v12);
    v26 = static OS_dispatch_queue.global(qos:)();
    (*(v13 + 8))(v16, v12);
    v27 = swift_allocObject();
    v28 = v43;
    v27[2] = v42;
    v27[3] = v28;
    v27[4] = v24;
    aBlock[4] = sub_10071F108;
    aBlock[5] = v27;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100006684;
    aBlock[3] = &unk_10162E7C0;
    v29 = _Block_copy(aBlock);

    v30 = v38;
    static DispatchQoS.unspecified.getter();
    v44 = _swiftEmptyArrayStorage;
    sub_100003E8C(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
    v31 = v40;
    v32 = v37;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v29);

    (*(v36 + 8))(v31, v32);
    (*(v39 + 8))(v30, v41);
  }

  else
  {
    sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
    v34 = static OS_os_log.default.getter();
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    return v42(_swiftEmptyArrayStorage);
  }
}

uint64_t sub_1006B066C()
{
  v1 = *(v0 + 16);
  v2 = type metadata accessor for AnalyticsEvent(0);
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  v5 = swift_allocObject();
  *(v0 + 24) = v5;
  swift_defaultActor_initialize();
  *(v5 + 14) = sub_100907BEC(_swiftEmptyArrayStorage);
  UUID.init()();
  v6 = OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_startTime;
  v7 = type metadata accessor for DispatchTime();
  v8 = *(*(v7 - 8) + 56);
  v8(&v5[v6], 1, 1, v7);
  v8(&v5[OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_endTime], 1, 1, v7);
  *(v5 + 15) = 0xD000000000000032;
  *(v5 + 16) = 0x800000010135CC90;

  return _swift_task_switch(sub_1006B07CC, v5, 0);
}

uint64_t sub_1006B07CC()
{
  sub_101174534(v0[3], v0[2]);
  v1 = v0[2];

  type metadata accessor for AnalyticsPublisher();
  v0[4] = swift_allocObject();
  swift_defaultActor_initialize();
  v2 = swift_task_alloc();
  v0[5] = v2;
  *v2 = v0;
  v2[1] = sub_1006B08A8;
  v3 = v0[3];

  return sub_101163F78(v3);
}

uint64_t sub_1006B08A8()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 32);
  v4 = *v0;

  return _swift_task_switch(sub_1006B09C0, 0, 0);
}

uint64_t sub_1006B09C0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1006B0A20(unint64_t a1)
{
  v2 = type metadata accessor for HashAlgorithm();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100008BB8(0, &unk_1016B27A0, NSString_ptr);
  v7 = NSString.init(stringLiteral:)();
  if (a1 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (!result)
    {
      goto LABEL_7;
    }
  }

  else
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
LABEL_7:
      sub_1000BC4D4(&qword_101699338, &unk_1013AAFB0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_101385D80;
      *(inited + 32) = 0xD000000000000010;
      v21 = inited + 32;
      *(inited + 40) = 0x800000010135CCD0;
      *(inited + 48) = v7;
      *(inited + 56) = 0;
      v22 = sub_100908768(inited);
      swift_setDeallocating();
      sub_10000B3A8(v21, &qword_101699340, &qword_1013918A0);
      return v22;
    }
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_6;
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v9 = *(a1 + 32);
LABEL_6:
    v10 = v9;
    v11 = [v9 key];

    v12 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    sub_100017D5C(v12, v14);
    sub_100018000(v12, v14, &v24);
    v15 = v24;
    v23 = v25;
    (*(v3 + 104))(v6, enum case for HashAlgorithm.sha256(_:), v2);
    v16 = Data.hash(algorithm:)();
    v18 = v17;
    (*(v3 + 8))(v6, v2);
    v24 = v16;
    v25 = v18;
    sub_10025DB08();
    RawRepresentable<>.hexString.getter();
    v19 = String._bridgeToObjectiveC()();

    sub_100016590(v12, v14);

    sub_100016590(v15, v23);
    sub_100016590(v16, v18);
    v7 = v19;
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t sub_1006B0D1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(*(a2 + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_theftDeterrenceStateManager) + 136);
  v7 = swift_allocObject();
  v7[2] = a1;
  v7[3] = a3;
  v7[4] = a4;

  sub_1000BC4D4(&unk_1016B1050, &unk_1013A4F40);
  sub_1000041A4(&unk_1016B1060, &unk_1016B1050, &unk_1013A4F40);
  Publisher.oneshot(_:)();
}

void *sub_1006B0E34(uint64_t a1, uint64_t a2)
{
  v213 = a2;
  v4 = sub_1000BC4D4(&qword_10169C9A0, &unk_1013D5A40);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v199 = &v198 - v6;
  v243 = type metadata accessor for DateInterval();
  v7 = *(v243 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v243);
  v242 = &v198 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v236 = type metadata accessor for TimeBasedKey();
  v238 = *(v236 - 8);
  v10 = *(v238 + 64);
  __chkstk_darwin(v236);
  v241 = &v198 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v204 = _s18ConnectionKeyGroupVMa();
  v203 = *(v204 - 8);
  v12 = *(v203 + 64);
  __chkstk_darwin(v204);
  v237 = (&v198 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = sub_1000BC4D4(&qword_1016A5B08, &qword_101410E70);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v198 - v16;
  v18 = type metadata accessor for LostModeInfoRecord();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v22 = &v198 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1000BC4D4(&unk_1016C7C90, &qword_1013BB4B0);
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23 - 8);
  v212 = &v198 - v25;
  v225 = type metadata accessor for WildModeAssociationRecord(0);
  v26 = *(v225 - 8);
  v27 = *(v26 + 64);
  __chkstk_darwin(v225);
  v29 = &v198 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v224 = type metadata accessor for SystemInfo.DeviceLockState();
  v30 = *(v224 - 8);
  v31 = *(v30 + 64);
  v32 = __chkstk_darwin(v224);
  v223 = &v198 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v222 = &v198 - v34;
  v232 = type metadata accessor for UUID();
  v35 = *(*(v232 - 8) + 64);
  v36 = __chkstk_darwin(v232);
  v202 = &v198 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v228 = &v198 - v39;
  v221 = *(a1 + 16);
  if (v221)
  {
    v206 = v29;
    v201 = v22;
    v207 = v18;
    v40 = 0;
    v244 = 0;
    v42 = *(v38 + 16);
    v41 = v38 + 16;
    v220 = v42;
    v219 = a1 + ((*(v41 + 64) + 32) & ~*(v41 + 64));
    v218 = (v30 + 104);
    v227 = *(v2 + 280);
    v217 = (v30 + 8);
    v226 = (v41 - 8);
    v216 = enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:);
    v235 = (v7 + 16);
    v234 = (v7 + 8);
    v211 = (v26 + 48);
    v205 = (v19 + 48);
    v215 = *(v41 + 56);
    v230 = _swiftEmptyDictionarySingleton;
    v208 = v17;
    v229 = xmmword_101385D80;
    v209 = xmmword_10138C320;
    v200 = xmmword_10138BBE0;
    v43 = v228;
    v214 = v41;
    while (1)
    {
      v231 = v40;
      v220(v43, v219 + v215 * v40, v232);
      static os_log_type_t.info.getter();
      if (qword_101695038 != -1)
      {
        swift_once();
      }

      v233 = sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v44 = swift_allocObject();
      *(v44 + 16) = v229;
      v45 = UUID.uuidString.getter();
      v47 = v46;
      *(v44 + 56) = &type metadata for String;
      v239 = sub_100008C00();
      *(v44 + 64) = v239;
      *(v44 + 32) = v45;
      *(v44 + 40) = v47;
      os_log(_:dso:log:_:_:)();

      v48 = v222;
      static SystemInfo.lockState.getter();
      v49 = v223;
      v50 = v224;
      (*v218)(v223, v216, v224);
      sub_100003E8C(&qword_10169F338, &type metadata accessor for SystemInfo.DeviceLockState);
      LOBYTE(v45) = dispatch thunk of static Equatable.== infix(_:_:)();
      v51 = *v217;
      (*v217)(v49, v50);
      v51(v48, v50);
      if (v45)
      {
        break;
      }

      v52 = v227;
      v53 = sub_100007F54();
      v54 = &v198;
      __chkstk_darwin(v53);
      v55 = v244;
      sub_1000314D0(sub_100030E14, v53, &v248);
      v244 = v55;

      if (!*(&v249 + 1))
      {
        goto LABEL_16;
      }

      sub_10000A748(&v248, &v247);
      sub_10000A748(&v247, &v248);
      v56 = *(&v249 + 1);
      v57 = v250;
      v58 = sub_1000035D0(&v248, *(&v249 + 1));
      v59 = sub_100B03A58(v58, v213, 0, 0, 0, v52, v56, v57);
      v62 = v59;
      if (v61 > 1u)
      {
        if (v61 == 2)
        {
          v71 = v59;
        }

        else
        {
          static os_log_type_t.default.getter();
          if (qword_101695028 != -1)
          {
            swift_once();
          }

          v54 = qword_10177C370;
          v121 = swift_allocObject();
          *(v121 + 16) = v229;
          v123 = *(&v249 + 1);
          v122 = v250;
          sub_1000035D0(&v248, *(&v249 + 1));
          v124 = v202;
          (*(*(*(v122 + 8) + 8) + 32))(v123);
          v125 = UUID.uuidString.getter();
          v127 = v126;
          (*v226)(v124, v232);
          v128 = v239;
          *(v121 + 56) = &type metadata for String;
          *(v121 + 64) = v128;
          *(v121 + 32) = v125;
          *(v121 + 40) = v127;
          os_log(_:dso:log:_:_:)();

          v71 = _swiftEmptyArrayStorage;
        }

        v62 = _swiftEmptyArrayStorage;
      }

      else
      {
        if (!v61)
        {
          v54 = v60;

          static os_log_type_t.default.getter();
          if (qword_101695028 != -1)
          {
            swift_once();
          }

          v43 = swift_allocObject();
          *(v43 + 16) = v229;
          v64 = *(&v249 + 1);
          v63 = v250;
          sub_1000035D0(&v248, *(&v249 + 1));
          v65 = *(*(*(v63 + 8) + 8) + 32);
          v66 = v202;
          v65(v64);
          v67 = UUID.uuidString.getter();
          v69 = v68;
          (*v226)(v66, v232);
          v70 = v239;
          *(v43 + 56) = &type metadata for String;
          *(v43 + 64) = v70;
          *(v43 + 32) = v67;
          *(v43 + 40) = v69;
          os_log(_:dso:log:_:_:)();

          sub_100359088(v62, v54, 0);
        }

        v71 = _swiftEmptyArrayStorage;
      }

      v129 = v62[2];
      v210 = v71;
      if (v129)
      {
        v246 = _swiftEmptyArrayStorage;
        specialized ContiguousArray.reserveCapacity(_:)();
        v130 = 0;
        v240 = v62 + ((*(v238 + 80) + 32) & ~*(v238 + 80));
        while (1)
        {
          v131 = v62[2];
          if (v130 >= v131)
          {
            break;
          }

          v132 = v62;
          v133 = v241;
          sub_100721C9C(&v240[*(v238 + 72) * v130], v241, type metadata accessor for TimeBasedKey);
          v134 = v236;
          (*v235)(v242, v133 + *(v236 + 20), v243);
          v135 = v133 + *(v134 + 24);
          v136 = v244;
          sub_100A7A194(*(v135 + 16), *(v135 + 24));
          if (v136)
          {
            v183 = v136;
LABEL_88:
            static os_log_type_t.error.getter();
            if (qword_101694BE0 != -1)
            {
              swift_once();
            }

            v54 = swift_allocObject();
            *(v54 + 16) = v229;
            *&v247 = v183;
            swift_errorRetain();
            sub_1000BC4D4(&qword_101696960, &unk_10138B220);
            v190 = String.init<A>(describing:)();
            v191 = v239;
            *(v54 + 56) = &type metadata for String;
            *(v54 + 64) = v191;
            *(v54 + 32) = v190;
            *(v54 + 40) = v192;
            os_log(_:dso:log:_:_:)();

            sub_1001BAF88();
            v193 = swift_allocError();
            *v194 = 0;
            swift_willThrow();

            goto LABEL_91;
          }

          v245 = 57;
          v43 = type metadata accessor for __DataStorage();
          v137 = *(v43 + 48);
          v138 = *(v43 + 52);
          swift_allocObject();
          v54 = __DataStorage.init(length:)();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {

            if (__DataStorage._bytes.getter())
            {
              v139 = __DataStorage._offset.getter();
              v131 = -v139;
              if (__OFSUB__(0, v139))
              {
                goto LABEL_70;
              }
            }

            v140 = *(v43 + 48);
            v141 = *(v43 + 52);
            swift_allocObject();
            v142 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

            v54 = v142;
          }

          v143 = __DataStorage._bytes.getter();
          if (!v143)
          {
            goto LABEL_71;
          }

          v43 = v143;
          if (__OFSUB__(0, __DataStorage._offset.getter()))
          {
            goto LABEL_67;
          }

          __DataStorage._length.getter();
          v144 = CCECCryptorExportKey();

          if (v144)
          {
            static os_log_type_t.error.getter();
            if (qword_101694BE0 != -1)
            {
              swift_once();
            }

            v184 = swift_allocObject();
            *(v184 + 16) = v229;
            *(v184 + 56) = &type metadata for Int32;
            *(v184 + 64) = &protocol witness table for Int32;
            *(v184 + 32) = v144;
            os_log(_:dso:log:_:_:)();

            v185 = v199;
            CryptoError.init(rawValue:)();
            v186 = type metadata accessor for CryptoError();
            sub_100003E8C(&qword_10169C9B8, &type metadata accessor for CryptoError);
            v183 = swift_allocError();
            v188 = v187;
            v189 = *(v186 - 8);
            v43 = *(v189 + 48);
            if ((v43)(v185, 1, v186) == 1)
            {
              (*(v189 + 104))(v188, enum case for CryptoError.unspecifiedError(_:), v186);
              if ((v43)(v199, 1, v186) != 1)
              {
                sub_10000B3A8(v199, &qword_10169C9A0, &unk_1013D5A40);
              }
            }

            else
            {
              (*(v189 + 32))(v188, v199, v186);
            }

            swift_willThrow();

            goto LABEL_88;
          }

          sub_10002EA98(v245, 0x3900000000, v54 | 0x4000000000000000, &v247);
          v54 = *(&v247 + 1);
          v43 = v247;
          CCECCryptorRelease();
          v131 = v54 >> 62;
          if ((v54 >> 62) > 1)
          {
            if (v131 != 2)
            {
              goto LABEL_92;
            }

            v147 = *(v43 + 16);
            v146 = *(v43 + 24);
            v148 = __OFSUB__(v146, v147);
            v145 = v146 - v147;
            if (v148)
            {
              goto LABEL_69;
            }
          }

          else if (v131)
          {
            LODWORD(v145) = HIDWORD(v43) - v43;
            if (__OFSUB__(HIDWORD(v43), v43))
            {
              goto LABEL_68;
            }

            v145 = v145;
          }

          else
          {
            v145 = BYTE6(v54);
          }

          v244 = 0;
          if (v145 != 28)
          {
            goto LABEL_72;
          }

          ++v130;
          v149 = objc_allocWithZone(SPBeaconingKey);
          v150 = v242;
          isa = DateInterval._bridgeToObjectiveC()().super.isa;
          v152 = Data._bridgeToObjectiveC()().super.isa;
          v153 = [v149 initWithDateInterval:isa key:v152];

          sub_100016590(v43, v54);
          (*v234)(v150, v243);
          v154 = objc_allocWithZone(SPCommandKeys);
          v155 = Data._bridgeToObjectiveC()().super.isa;
          v156 = Data._bridgeToObjectiveC()().super.isa;
          v43 = Data._bridgeToObjectiveC()().super.isa;
          v54 = [v154 initWithBeaconingKey:v153 commandKey:v155 connectionToken:v156 nearbyToken:v43];

          sub_100721D04(v241, type metadata accessor for TimeBasedKey);
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          v157 = *(v246 + 16);
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          v62 = v132;
          if (v129 == v130)
          {

            v158 = v246;
            v71 = v210;
            goto LABEL_54;
          }
        }

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
LABEL_72:
        if (v131 == 1)
        {
          LODWORD(v131) = HIDWORD(v43) - v43;
          if (!__OFSUB__(HIDWORD(v43), v43))
          {
            v197 = v131;
            goto LABEL_93;
          }

          __break(1u);
        }

        if (v131 == 2)
        {
          v182 = *(v43 + 16);
          v181 = *(v43 + 24);
          v197 = v181 - v182;
          if (__OFSUB__(v181, v182))
          {
            __break(1u);
          }
        }

        else
        {
          v197 = BYTE6(v54);
        }

        while (1)
        {
LABEL_93:
          sub_100018350();
          v193 = swift_allocError();
          *v196 = 28;
          *(v196 + 8) = v197;
          *(v196 + 16) = 0;
          swift_willThrow();
          sub_100016590(v43, v54);
LABEL_91:
          *&v247 = 0;
          *(&v247 + 1) = 0xE000000000000000;
          _StringGuts.grow(_:)(35);
          v195._object = 0x800000010134CB30;
          v195._countAndFlagsBits = 0xD000000000000021;
          String.append(_:)(v195);
          v245 = v193;
          sub_1000BC4D4(&qword_101696960, &unk_10138B220);
          _print_unlocked<A, B>(_:_:)();
          _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
LABEL_92:
          v197 = 0;
        }
      }

      v158 = _swiftEmptyArrayStorage;
LABEL_54:
      *&v247 = v158;
      v246 = _swiftEmptyArrayStorage;
      v159 = v71[2];
      if (v159)
      {
        v240 = *(v204 + 28);
        v160 = v71 + ((*(v203 + 80) + 32) & ~*(v203 + 80));
        v239 = *(v203 + 72);
        v233 = _swiftEmptyArrayStorage;
        do
        {
          v161 = v237;
          sub_100721C9C(v160, v237, _s18ConnectionKeyGroupVMa);
          v162 = *v161;
          v163 = v161[1];
          v164 = objc_allocWithZone(SPBeaconingKey);
          sub_100017D5C(v162, v163);
          v165 = DateInterval._bridgeToObjectiveC()().super.isa;
          v166 = Data._bridgeToObjectiveC()().super.isa;
          v167 = [v164 initWithDateInterval:v165 key:v166];

          sub_100016590(v162, v163);
          v168 = v161[2];
          v169 = v161[3];
          v170 = objc_allocWithZone(SPCommandKeys);
          sub_100017D5C(v168, v169);
          v171 = Data._bridgeToObjectiveC()().super.isa;
          v172 = Data._bridgeToObjectiveC()().super.isa;
          v173 = Data._bridgeToObjectiveC()().super.isa;
          v174 = [v170 initWithBeaconingKey:v167 commandKey:v171 connectionToken:v172 nearbyToken:v173];

          sub_100016590(v168, v169);
          sub_100721D04(v161, _s18ConnectionKeyGroupVMa);
          if (v174)
          {
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((v246 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v246 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v175 = *((v246 & 0xFFFFFFFFFFFFFF8) + 0x10);
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            v233 = v246;
          }

          v160 += v239;
          --v159;
        }

        while (v159);

        v176 = v233;
      }

      else
      {

        v176 = _swiftEmptyArrayStorage;
      }

      sub_10039A0FC(v176);
      v177 = v247;
      v178 = v230;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v246 = v178;
      v43 = v228;
      sub_100FFFDBC(v177, v228, isUniquelyReferenced_nonNull_native);
      v230 = v246;
      (*v226)(v43, v232);
      sub_100007BAC(&v248);
LABEL_4:
      v40 = v231 + 1;
      if (v231 + 1 == v221)
      {
        return v230;
      }
    }

    static os_log_type_t.default.getter();
    os_log(_:dso:log:_:_:)();
    v250 = 0;
    v248 = 0u;
    v249 = 0u;
LABEL_16:
    sub_10000B3A8(&v248, &qword_101696920, &unk_10138B200);
    v72 = v212;
    v73 = v228;
    sub_100023184(v228, v212);
    if ((*v211)(v72, 1, v225) == 1)
    {
      sub_10000B3A8(v72, &unk_1016C7C90, &qword_1013BB4B0);
      v74 = v208;
      sub_100ABDE10(v208);
      v75 = v207;
      if ((*v205)(v74, 1, v207) == 1)
      {
        (*v226)(v73, v232);
        sub_10000B3A8(v74, &qword_1016A5B08, &qword_101410E70);
        v43 = v73;
      }

      else
      {
        v76 = v74;
        v77 = v201;
        sub_10002AB74(v76, v201, type metadata accessor for LostModeInfoRecord);
        v78 = (v77 + *(v75 + 44));
        v79 = *v78;
        v80 = v78[1];
        v81 = objc_allocWithZone(SPBeaconingKey);
        v82 = DateInterval._bridgeToObjectiveC()().super.isa;
        v83 = Data._bridgeToObjectiveC()().super.isa;
        v84 = [v81 initWithDateInterval:v82 key:v83];

        v85 = objc_allocWithZone(SPCommandKeys);
        v86 = v84;
        v87 = Data._bridgeToObjectiveC()().super.isa;
        v88 = Data._bridgeToObjectiveC()().super.isa;
        v89 = Data._bridgeToObjectiveC()().super.isa;
        v90 = [v85 initWithBeaconingKey:v86 commandKey:v87 connectionToken:v88 nearbyToken:v89];

        sub_1000BC4D4(&unk_10169BAE0, &unk_10138C430);
        v91 = swift_allocObject();
        *(v91 + 16) = v209;
        *(v91 + 32) = v90;
        v92 = v90;
        v93 = v230;
        v94 = swift_isUniquelyReferenced_nonNull_native();
        *&v248 = v93;
        sub_100FFFDBC(v91, v73, v94);
        v230 = v248;
        static os_log_type_t.default.getter();
        if (qword_1016950A0 != -1)
        {
          swift_once();
        }

        v95 = swift_allocObject();
        *(v95 + 16) = v200;
        v96 = UUID.uuidString.getter();
        v97 = v239;
        *(v95 + 56) = &type metadata for String;
        *(v95 + 64) = v97;
        *(v95 + 32) = v96;
        *(v95 + 40) = v98;
        *(v95 + 96) = &type metadata for Int;
        *(v95 + 104) = &protocol witness table for Int;
        *(v95 + 72) = 1;
        os_log(_:dso:log:_:_:)();

        (*v226)(v73, v232);
        sub_100721D04(v77, type metadata accessor for LostModeInfoRecord);
        v43 = v73;
      }
    }

    else
    {
      v99 = v206;
      sub_10002AB74(v72, v206, type metadata accessor for WildModeAssociationRecord);
      static os_log_type_t.default.getter();
      if (qword_1016950B0 != -1)
      {
        swift_once();
      }

      v100 = swift_allocObject();
      *(v100 + 16) = v229;
      v43 = v228;
      v101 = UUID.uuidString.getter();
      v102 = v239;
      *(v100 + 56) = &type metadata for String;
      *(v100 + 64) = v102;
      *(v100 + 32) = v101;
      *(v100 + 40) = v103;
      os_log(_:dso:log:_:_:)();

      v104 = v99 + *(v225 + 28);
      v105 = MACAddress.data.getter();
      v107 = v106;
      v108 = objc_allocWithZone(SPBeaconingKey);
      v109 = DateInterval._bridgeToObjectiveC()().super.isa;
      v110 = Data._bridgeToObjectiveC()().super.isa;
      v111 = [v108 initWithDateInterval:v109 key:v110];

      sub_100016590(v105, v107);
      v112 = objc_allocWithZone(SPCommandKeys);
      v113 = v111;
      v114 = Data._bridgeToObjectiveC()().super.isa;
      v115 = Data._bridgeToObjectiveC()().super.isa;
      v116 = Data._bridgeToObjectiveC()().super.isa;
      v117 = [v112 initWithBeaconingKey:v113 commandKey:v114 connectionToken:v115 nearbyToken:v116];

      sub_1000BC4D4(&unk_10169BAE0, &unk_10138C430);
      v118 = swift_allocObject();
      *(v118 + 16) = v209;
      *(v118 + 32) = v117;
      v119 = v230;
      v120 = swift_isUniquelyReferenced_nonNull_native();
      *&v248 = v119;
      sub_100FFFDBC(v118, v43, v120);

      v230 = v248;
      sub_100721D04(v99, type metadata accessor for WildModeAssociationRecord);
      (*v226)(v43, v232);
    }

    goto LABEL_4;
  }

  return _swiftEmptyDictionarySingleton;
}

uint64_t sub_1006B2B64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v35 = a1;
  v36 = a4;
  v33 = a2;
  v34 = a3;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v41 = *(v6 - 8);
  v42 = v6;
  v7 = *(v41 + 64);
  __chkstk_darwin(v6);
  v40 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v38 = *(v9 - 8);
  v39 = v9;
  v10 = *(v38 + 64);
  __chkstk_darwin(v9);
  v37 = v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DateInterval();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v32[1] = static os_log_type_t.info.getter();
  if (qword_101695028 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_10138BBE0;
  aBlock[0] = *v5;
  sub_1000BC4D4(&qword_1016C1A50, &unk_1013A08C8);
  v16 = String.init<A>(describing:)();
  v18 = v17;
  *(v15 + 56) = &type metadata for String;
  v19 = sub_100008C00();
  *(v15 + 32) = v16;
  *(v15 + 40) = v18;
  *(v15 + 96) = &type metadata for String;
  *(v15 + 104) = v19;
  *(v15 + 64) = v19;
  *(v15 + 72) = 0xD000000000000029;
  *(v15 + 80) = 0x800000010135CAD0;
  os_log(_:dso:log:_:_:)();

  v20 = v5[17];
  v21 = swift_allocObject();
  swift_weakInit();
  (*(v13 + 16))(v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v33, v12);
  v22 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v23 = swift_allocObject();
  v24 = v35;
  *(v23 + 16) = v21;
  *(v23 + 24) = v24;
  (*(v13 + 32))(v23 + v22, v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v12);
  v25 = (v23 + ((v14 + v22 + 7) & 0xFFFFFFFFFFFFFFF8));
  v26 = v36;
  *v25 = v34;
  v25[1] = v26;
  aBlock[4] = sub_10071EFC8;
  aBlock[5] = v23;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_10162E6A8;
  v27 = _Block_copy(aBlock);

  v28 = v37;
  static DispatchQoS.unspecified.getter();
  v43 = _swiftEmptyArrayStorage;
  sub_100003E8C(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  v29 = v40;
  v30 = v42;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v27);
  (*(v41 + 8))(v29, v30);
  (*(v38 + 8))(v28, v39);
}

uint64_t sub_1006B3094(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(unint64_t), uint64_t a5)
{
  v58 = a5;
  v59 = a4;
  v7 = type metadata accessor for UUID();
  v71 = *(v7 - 8);
  v8 = *(v71 + 64);
  __chkstk_darwin(v7);
  v74 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_1000BC4D4(&qword_1016A7868, &qword_1013B67B8);
  v10 = *(*(v70 - 8) + 64);
  v11 = __chkstk_darwin(v70);
  v69 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v58 - v13;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v72 = sub_1006B0E34(a2, a3);
  }

  else
  {
    v72 = sub_100909FEC(_swiftEmptyArrayStorage);
  }

  static os_log_type_t.default.getter();
  if (qword_101695050 != -1)
  {
LABEL_30:
    swift_once();
  }

  v64 = qword_10177C398;
  os_log(_:dso:log:_:_:)();
  v15 = v72 + 64;
  v16 = 1 << *(v72 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & *(v72 + 64);
  v19 = (v16 + 63) >> 6;
  v67 = v71 + 32;
  v68 = v71 + 16;
  v61 = (v71 + 8);

  v20 = 0;
  v60 = xmmword_10138BBE0;
  v65 = v14;
  v66 = v7;
  v62 = v19;
  v63 = v15;
  while (v18)
  {
LABEL_14:
    v31 = __clz(__rbit64(v18)) | (v20 << 6);
    v33 = v71;
    v32 = v72;
    (*(v71 + 16))(v14, *(v72 + 48) + *(v71 + 72) * v31, v7);
    v34 = *(*(v32 + 56) + 8 * v31);
    v35 = v70;
    *&v14[*(v70 + 48)] = v34;
    v36 = v14;
    v14 = v69;
    sub_1000D2A70(v36, v69, &qword_1016A7868, &qword_1013B67B8);
    v37 = *&v14[*(v35 + 48)];
    (*(v33 + 32))(v74, v14, v7);
    if (v37 >> 62)
    {
      v7 = _CocoaArrayWrapper.endIndex.getter();
      if (!v7)
      {
LABEL_26:

        v39 = _swiftEmptyArrayStorage;
        goto LABEL_8;
      }
    }

    else
    {
      v7 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v7)
      {
        goto LABEL_26;
      }
    }

    v76 = _swiftEmptyArrayStorage;

    sub_101123BB8(0, v7 & ~(v7 >> 63), 0);
    if (v7 < 0)
    {
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    v73 = v20;
    v75 = v18;
    v38 = 0;
    v39 = v76;
    v40 = v37;
    v41 = v37 & 0xC000000000000001;
    v42 = v40;
    do
    {
      if (v41)
      {
        v43 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v43 = *(v40 + 8 * v38 + 32);
      }

      v44 = v43;
      v45 = [v43 beaconingKey];
      v46 = [v45 key];

      v47 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v49 = v48;

      v50 = Data.hexString.getter();
      v52 = v51;
      sub_100016590(v47, v49);

      v76 = v39;
      v54 = v39[2];
      v53 = v39[3];
      if (v54 >= v53 >> 1)
      {
        sub_101123BB8((v53 > 1), v54 + 1, 1);
        v39 = v76;
      }

      ++v38;
      v39[2] = v54 + 1;
      v55 = &v39[2 * v54];
      v55[4] = v50;
      v55[5] = v52;
      v40 = v42;
    }

    while (v7 != v38);

    v18 = v75;
    v20 = v73;
LABEL_8:
    v75 = (v18 - 1) & v18;
    LODWORD(v73) = static os_log_type_t.default.getter();
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v21 = swift_allocObject();
    *(v21 + 16) = v60;
    sub_100003E8C(&qword_101696930, &type metadata accessor for UUID);
    v22 = v74;
    v7 = v66;
    v23 = dispatch thunk of CustomStringConvertible.description.getter();
    v25 = v24;
    *(v21 + 56) = &type metadata for String;
    v26 = sub_100008C00();
    *(v21 + 64) = v26;
    *(v21 + 32) = v23;
    *(v21 + 40) = v25;
    v76 = v39;
    sub_1000BC4D4(&qword_1016B0470, &qword_10138EB80);
    sub_1000041A4(&qword_1016B7CB0, &qword_1016B0470, &qword_10138EB80);
    v27 = BidirectionalCollection<>.joined(separator:)();
    v29 = v28;

    *(v21 + 96) = &type metadata for String;
    *(v21 + 104) = v26;
    *(v21 + 72) = v27;
    *(v21 + 80) = v29;
    os_log(_:dso:log:_:_:)();
    v18 = v75;

    (*v61)(v22, v7);
    v14 = v65;
    sub_10000B3A8(v65, &qword_1016A7868, &qword_1013B67B8);
    v19 = v62;
    v15 = v63;
  }

  while (1)
  {
    v30 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      __break(1u);
      goto LABEL_29;
    }

    if (v30 >= v19)
    {
      break;
    }

    v18 = *(v15 + 8 * v30);
    ++v20;
    if (v18)
    {
      v20 = v30;
      goto LABEL_14;
    }
  }

  v56 = v72;

  v59(v56);
}

uint64_t sub_1006B3738(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v28 = a1;
  v29 = a3;
  v27 = a2;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v32 = *(v5 - 8);
  v6 = *(v32 + 64);
  __chkstk_darwin(v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v30 = *(v9 - 8);
  v31 = v9;
  v10 = *(v30 + 64);
  __chkstk_darwin(v9);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  static os_log_type_t.info.getter();
  if (qword_101695028 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_10138BBE0;
  aBlock[0] = *v3;
  sub_1000BC4D4(&qword_1016C1A50, &unk_1013A08C8);
  v14 = String.init<A>(describing:)();
  v16 = v15;
  *(v13 + 56) = &type metadata for String;
  v17 = sub_100008C00();
  *(v13 + 32) = v14;
  *(v13 + 40) = v16;
  *(v13 + 96) = &type metadata for String;
  *(v13 + 104) = v17;
  *(v13 + 64) = v17;
  *(v13 + 72) = 0xD00000000000001CLL;
  *(v13 + 80) = 0x800000010135CBE0;
  os_log(_:dso:log:_:_:)();

  v18 = v4[17];
  v19 = swift_allocObject();
  swift_weakInit();
  v20 = swift_allocObject();
  v21 = v27;
  v22 = v28;
  v20[2] = v19;
  v20[3] = v22;
  v23 = v29;
  v20[4] = v21;
  v20[5] = v23;
  aBlock[4] = sub_10071F05C;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_10162E6F8;
  v24 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v33 = _swiftEmptyArrayStorage;
  sub_100003E8C(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v24);
  (*(v32 + 8))(v8, v5);
  (*(v30 + 8))(v12, v31);
}

uint64_t sub_1006B3B80(uint64_t a1, uint64_t a2, void (*a3)(unint64_t), uint64_t a4)
{
  v67 = a4;
  v68 = a3;
  v83 = type metadata accessor for UUID();
  v79 = *(v83 - 8);
  v5 = *(v79 + 64);
  __chkstk_darwin(v83);
  v82 = &v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_1000BC4D4(&qword_1016A7868, &qword_1013B67B8);
  v7 = *(*(v78 - 8) + 64);
  v8 = __chkstk_darwin(v78);
  v77 = &v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v67 - v10;
  v12 = type metadata accessor for Date();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v67 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DateInterval();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v67 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    static Date.trustedNow.getter(v15);
    DateInterval.init(start:duration:)();
    v80 = sub_1006B0E34(a2, v20);

    (*(v17 + 8))(v20, v16);
  }

  else
  {
    v80 = sub_100909FEC(_swiftEmptyArrayStorage);
  }

  static os_log_type_t.default.getter();
  if (qword_101695050 != -1)
  {
LABEL_30:
    swift_once();
  }

  v73 = qword_10177C398;
  os_log(_:dso:log:_:_:)();
  v21 = v80 + 64;
  v22 = 1 << *(v80 + 32);
  v23 = -1;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  v24 = v23 & *(v80 + 64);
  v25 = (v22 + 63) >> 6;
  v75 = v79 + 32;
  v76 = v79 + 16;
  v70 = (v79 + 8);

  v26 = 0;
  v69 = xmmword_10138BBE0;
  v71 = v25;
  v72 = v21;
  v74 = v11;
  while (v24)
  {
LABEL_14:
    v38 = __clz(__rbit64(v24)) | (v26 << 6);
    v40 = v79;
    v39 = v80;
    v41 = v83;
    (*(v79 + 16))(v11, *(v80 + 48) + *(v79 + 72) * v38, v83);
    v42 = *(*(v39 + 56) + 8 * v38);
    v43 = v78;
    *&v11[*(v78 + 48)] = v42;
    v44 = v11;
    v11 = v77;
    sub_1000D2A70(v44, v77, &qword_1016A7868, &qword_1013B67B8);
    v45 = *&v11[*(v43 + 48)];
    (*(v40 + 32))(v82, v11, v41);
    if (v45 >> 62)
    {
      v46 = _CocoaArrayWrapper.endIndex.getter();
      if (!v46)
      {
LABEL_26:

        v48 = _swiftEmptyArrayStorage;
        goto LABEL_8;
      }
    }

    else
    {
      v46 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v46)
      {
        goto LABEL_26;
      }
    }

    v85 = _swiftEmptyArrayStorage;

    sub_101123BB8(0, v46 & ~(v46 >> 63), 0);
    if (v46 < 0)
    {
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    v81 = v26;
    v84 = v24;
    v47 = 0;
    v48 = v85;
    v49 = v45;
    v50 = v45 & 0xC000000000000001;
    v51 = v49;
    do
    {
      if (v50)
      {
        v52 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v52 = *(v49 + 8 * v47 + 32);
      }

      v53 = v52;
      v54 = [v52 beaconingKey];
      v55 = [v54 key];

      v56 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v58 = v57;

      v59 = Data.hexString.getter();
      v61 = v60;
      sub_100016590(v56, v58);

      v85 = v48;
      v63 = v48[2];
      v62 = v48[3];
      if (v63 >= v62 >> 1)
      {
        sub_101123BB8((v62 > 1), v63 + 1, 1);
        v48 = v85;
      }

      ++v47;
      v48[2] = v63 + 1;
      v64 = &v48[2 * v63];
      v64[4] = v59;
      v64[5] = v61;
      v49 = v51;
    }

    while (v46 != v47);

    v24 = v84;
    v26 = v81;
LABEL_8:
    v84 = (v24 - 1) & v24;
    LODWORD(v81) = static os_log_type_t.default.getter();
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v27 = swift_allocObject();
    *(v27 + 16) = v69;
    sub_100003E8C(&qword_101696930, &type metadata accessor for UUID);
    v29 = v82;
    v28 = v83;
    v30 = dispatch thunk of CustomStringConvertible.description.getter();
    v32 = v31;
    *(v27 + 56) = &type metadata for String;
    v33 = sub_100008C00();
    *(v27 + 64) = v33;
    *(v27 + 32) = v30;
    *(v27 + 40) = v32;
    v85 = v48;
    sub_1000BC4D4(&qword_1016B0470, &qword_10138EB80);
    sub_1000041A4(&qword_1016B7CB0, &qword_1016B0470, &qword_10138EB80);
    v34 = BidirectionalCollection<>.joined(separator:)();
    v36 = v35;

    *(v27 + 96) = &type metadata for String;
    *(v27 + 104) = v33;
    *(v27 + 72) = v34;
    *(v27 + 80) = v36;
    os_log(_:dso:log:_:_:)();
    v24 = v84;

    (*v70)(v29, v28);
    v11 = v74;
    sub_10000B3A8(v74, &qword_1016A7868, &qword_1013B67B8);
    v25 = v71;
    v21 = v72;
  }

  while (1)
  {
    v37 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      __break(1u);
      goto LABEL_29;
    }

    if (v37 >= v25)
    {
      break;
    }

    v24 = *(v21 + 8 * v37);
    ++v26;
    if (v24)
    {
      v26 = v37;
      goto LABEL_14;
    }
  }

  v65 = v80;

  v68(v65);
}

uint64_t sub_1006B4308@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v44 = a3;
  v5 = type metadata accessor for TimeBasedKey();
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5);
  v9 = (&v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = __chkstk_darwin(v7);
  v12 = &v41 - v11;
  __chkstk_darwin(v10);
  v43 = &v41 - v14;
  v15 = *a1;
  if (*a1)
  {
    v16 = *a1 / 0x60uLL + 1;
  }

  else
  {
    v16 = 0;
  }

  v17 = *(a2 + 16);
  if (v17)
  {
    v18 = a2 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
    v19 = *(v13 + 72);
    while (1)
    {
      sub_100721C9C(v18, v9, type metadata accessor for TimeBasedKey);
      if (*v9 == v16)
      {
        break;
      }

      sub_100721D04(v9, type metadata accessor for TimeBasedKey);
      v18 += v19;
      if (!--v17)
      {
        goto LABEL_8;
      }
    }

    sub_10002AB74(v9, v12, type metadata accessor for TimeBasedKey);
    v29 = v43;
    sub_10002AB74(v12, v43, type metadata accessor for TimeBasedKey);
    v30 = *(v5 + 20);
    v31 = PublicKey.advertisement.getter(*(a1 + *(v5 + 24) + 16), *(a1 + *(v5 + 24) + 24));
    v42 = v32;
    v33 = PublicKey.advertisement.getter(*(v29 + *(v5 + 24) + 16), *(v29 + *(v5 + 24) + 24));
    v35 = v34;
    v36 = objc_allocWithZone(SPBeaconingKey);
    isa = DateInterval._bridgeToObjectiveC()().super.isa;
    v38 = v31;
    v39 = Data._bridgeToObjectiveC()().super.isa;
    v40 = Data._bridgeToObjectiveC()().super.isa;
    sub_100016590(v33, v35);
    v27 = [v36 initWithDateInterval:isa key:v39 secondaryKey:v40 primaryIndex:v15 secondaryIndex:v16];

    sub_100016590(v38, v42);
    result = sub_100721D04(v43, type metadata accessor for TimeBasedKey);
  }

  else
  {
LABEL_8:
    v20 = *(v5 + 20);
    v21 = PublicKey.advertisement.getter(*(a1 + *(v5 + 24) + 16), *(a1 + *(v5 + 24) + 24));
    v23 = v22;
    v24 = objc_allocWithZone(SPBeaconingKey);
    v25 = DateInterval._bridgeToObjectiveC()().super.isa;
    v26 = Data._bridgeToObjectiveC()().super.isa;
    v27 = [v24 initWithDateInterval:v25 key:v26 secondaryKey:0 primaryIndex:v15 secondaryIndex:0];

    result = sub_100016590(v21, v23);
  }

  *v44 = v27;
  return result;
}

void *sub_1006B4648(uint64_t a1, uint64_t a2)
{
  v169 = a2;
  v4 = sub_1000BC4D4(&qword_1016A5B08, &qword_101410E70);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v165 = &v153 - v6;
  v160 = type metadata accessor for LostModeInfoRecord();
  v159 = *(v160 - 8);
  v7 = *(v159 + 64);
  __chkstk_darwin(v160);
  v157 = &v153 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000BC4D4(&unk_1016C7C90, &qword_1013BB4B0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v161 = &v153 - v11;
  v158 = type metadata accessor for WildModeAssociationRecord(0);
  v156 = *(v158 - 8);
  v12 = *(v156 + 64);
  __chkstk_darwin(v158);
  v14 = &v153 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v155 = _s18ConnectionKeyGroupVMa();
  v163 = *(v155 - 8);
  v15 = *(v163 + 64);
  v16 = __chkstk_darwin(v155);
  v164 = &v153 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v168 = (&v153 - v18);
  v167 = type metadata accessor for DateInterval();
  v19 = *(v167 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v167);
  v21 = type metadata accessor for UUID();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v24 = __chkstk_darwin(v21);
  v166 = &v153 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v26 = &v153 - v25;
  v178 = _swiftEmptyArrayStorage;
  v162 = v2;
  v27 = v2[35];
  sub_100025020(a1, &v172);
  if (!v174)
  {
    v35 = v159;
    v36 = v160;
    v37 = v165;
    v38 = v157;
    sub_10000B3A8(&v172, &qword_101696920, &unk_10138B200);
    v39 = v161;
    sub_100023184(a1, v161);
    v40 = v158;
    if ((*(v156 + 48))(v39, 1, v158) == 1)
    {
      sub_10000B3A8(v39, &unk_1016C7C90, &qword_1013BB4B0);
      sub_100ABDE10(v37);
      if ((*(v35 + 48))(v37, 1, v36) == 1)
      {
        sub_10000B3A8(v37, &qword_1016A5B08, &qword_101410E70);
        return _swiftEmptyArrayStorage;
      }

      v14 = v38;
      sub_10002AB74(v37, v38, type metadata accessor for LostModeInfoRecord);
      v128 = (v38 + *(v36 + 44));
      v129 = *v128;
      v130 = v128[1];
      v131 = objc_allocWithZone(SPBeaconingKey);
      isa = DateInterval._bridgeToObjectiveC()().super.isa;
      v133 = Data._bridgeToObjectiveC()().super.isa;
      v134 = [v131 initWithDateInterval:isa key:v133];

      v135 = objc_allocWithZone(SPCommandKey);
      v136 = v134;
      v137 = Data._bridgeToObjectiveC()().super.isa;
      v138 = Data._bridgeToObjectiveC()().super.isa;
      v139 = Data._bridgeToObjectiveC()().super.isa;
      v140 = [v135 initWithBeaconingKey:v136 commandKey:v137 connectionToken:v138 nearbyToken:v139 primaryIndex:0 secondaryIndex:0 type:2];

      static os_log_type_t.default.getter();
      if (qword_1016950A0 != -1)
      {
        swift_once();
      }

      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v141 = swift_allocObject();
      *(v141 + 16) = xmmword_10138BBE0;
      v142 = UUID.uuidString.getter();
      v144 = v143;
      *(v141 + 56) = &type metadata for String;
      v145 = sub_100008C00();
      *(v141 + 32) = v142;
      *(v141 + 40) = v144;
      *(v141 + 96) = &type metadata for Int;
      *(v141 + 104) = &protocol witness table for Int;
      *(v141 + 64) = v145;
      *(v141 + 72) = 1;
      os_log(_:dso:log:_:_:)();

      v146 = v140;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v178 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v178 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v150 = *((v178 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v79 = type metadata accessor for LostModeInfoRecord;
LABEL_50:
      sub_100721D04(v14, v79);
      return v178;
    }

    sub_10002AB74(v39, v14, type metadata accessor for WildModeAssociationRecord);
    static os_log_type_t.default.getter();
    if (qword_1016950B0 == -1)
    {
LABEL_18:
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v60 = swift_allocObject();
      *(v60 + 16) = xmmword_101385D80;
      v61 = UUID.uuidString.getter();
      v63 = v62;
      *(v60 + 56) = &type metadata for String;
      *(v60 + 64) = sub_100008C00();
      *(v60 + 32) = v61;
      *(v60 + 40) = v63;
      os_log(_:dso:log:_:_:)();

      v64 = &v14[*(v40 + 28)];
      v65 = MACAddress.data.getter();
      v67 = v66;
      v68 = objc_allocWithZone(SPBeaconingKey);
      v69 = DateInterval._bridgeToObjectiveC()().super.isa;
      v70 = Data._bridgeToObjectiveC()().super.isa;
      v71 = [v68 initWithDateInterval:v69 key:v70];

      sub_100016590(v65, v67);
      v72 = objc_allocWithZone(SPCommandKey);
      v73 = v71;
      v74 = Data._bridgeToObjectiveC()().super.isa;
      v75 = Data._bridgeToObjectiveC()().super.isa;
      v76 = Data._bridgeToObjectiveC()().super.isa;
      v77 = [v72 initWithBeaconingKey:v73 commandKey:v74 connectionToken:v75 nearbyToken:v76 primaryIndex:0 secondaryIndex:0 type:2];

      v78 = v77;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v178 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v178 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v148 = *((v178 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v79 = type metadata accessor for WildModeAssociationRecord;
      goto LABEL_50;
    }

LABEL_53:
    swift_once();
    goto LABEL_18;
  }

  v161 = v27;
  sub_10000A748(&v172, v175);
  v28 = *(v22 + 16);
  v160 = a1;
  v159 = v22 + 16;
  v158 = v28;
  v28(v26, a1, v21);
  v29 = v167;
  (*(v19 + 16))(&v153 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0), v169, v167);
  v30 = (*(v22 + 80) + 16) & ~*(v22 + 80);
  v31 = (v23 + *(v19 + 80) + v30) & ~*(v19 + 80);
  v32 = swift_allocObject();
  v33 = *(v22 + 32);
  v165 = v26;
  v33(v32 + v30, v26, v21);
  (*(v19 + 32))(v32 + v31, &v153 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0), v29);
  sub_1000BC4D4(&qword_1016A7890, &qword_1013B6830);
  unsafeFromAsyncTask<A>(_:)();
  v34 = v21;
  v154 = v22;

  v43 = v164;
  v42 = v165;
  if (v172)
  {
    v44 = v172;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v178 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v178 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v149 = *((v178 & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v41 = v178;
    sub_100007BAC(v175);
    return v41;
  }

  v45 = v176;
  v46 = v177;
  v47 = sub_1000035D0(v175, v176);
  v48 = sub_100B03A58(v47, v169, 0, 1, 0, v161, v45, v46);
  v51 = v48;
  if (v50 > 1u)
  {
    if (v50 == 2)
    {
      v59 = v48;
      v51 = _swiftEmptyArrayStorage;
    }

    else
    {
      v80 = v34;
      static os_log_type_t.default.getter();
      if (qword_101695028 != -1)
      {
        swift_once();
      }

      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v81 = swift_allocObject();
      *(v81 + 16) = xmmword_101385D80;
      v83 = v176;
      v82 = v177;
      sub_1000035D0(v175, v176);
      (*(*(*(v82 + 8) + 8) + 32))(v83);
      v84 = UUID.uuidString.getter();
      v86 = v85;
      (*(v154 + 8))(v42, v80);
      *(v81 + 56) = &type metadata for String;
      *(v81 + 64) = sub_100008C00();
      *(v81 + 32) = v84;
      *(v81 + 40) = v86;
      os_log(_:dso:log:_:_:)();

      v59 = _swiftEmptyArrayStorage;
      v51 = _swiftEmptyArrayStorage;
    }
  }

  else if (v50)
  {
    v59 = _swiftEmptyArrayStorage;
  }

  else
  {
    v52 = v49;

    static os_log_type_t.default.getter();
    if (qword_101695028 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v53 = swift_allocObject();
    *(v53 + 16) = xmmword_101385D80;
    v55 = v176;
    v54 = v177;
    sub_1000035D0(v175, v176);
    (*(*(*(v54 + 8) + 8) + 32))(v55);
    v56 = UUID.uuidString.getter();
    v58 = v57;
    (*(v154 + 8))(v42, v34);
    *(v53 + 56) = &type metadata for String;
    *(v53 + 64) = sub_100008C00();
    *(v53 + 32) = v56;
    *(v53 + 40) = v58;
    os_log(_:dso:log:_:_:)();

    v48 = sub_100359088(v51, v52, 0);
    v59 = _swiftEmptyArrayStorage;
    v43 = v164;
  }

  v171 = _swiftEmptyArrayStorage;
  __chkstk_darwin(v48);
  v151 = v175;
  v152 = &v171;
  v87 = sub_10062CF40(sub_1007202C4, (&v153 - 4), v51);
  v161 = 0;

  sub_10039A114(v87);
  *&v172 = _swiftEmptyArrayStorage;
  v88 = v59[2];
  if (v88)
  {
    v167 = *(v155 + 28);
    v89 = (*(v163 + 80) + 32) & ~*(v163 + 80);
    v160 = v59;
    v90 = v59 + v89;
    v91 = *(v163 + 72);
    v165 = _swiftEmptyArrayStorage;
    v166 = v91;
    do
    {
      v169 = v88;
      v92 = v168;
      sub_100721C9C(v90, v168, _s18ConnectionKeyGroupVMa);
      v93 = *v92;
      v94 = v92[1];
      v95 = objc_allocWithZone(SPBeaconingKey);
      sub_100017D5C(v93, v94);
      v96 = DateInterval._bridgeToObjectiveC()().super.isa;
      v97 = Data._bridgeToObjectiveC()().super.isa;
      v98 = [v95 initWithDateInterval:v96 key:v97];

      sub_100016590(v93, v94);
      v99 = v92[2];
      v100 = v92[3];
      v101 = v92[8];
      sub_1000035D0(v92 + 4, v92[7]);
      sub_100017D5C(v99, v100);
      v102 = *(v101 + 56);
      dispatch thunk of RawRepresentable.rawValue.getter();
      v103 = [objc_allocWithZone(NSNumber) initWithUnsignedLongLong:v170];
      v104 = objc_allocWithZone(SPCommandKey);
      v105 = Data._bridgeToObjectiveC()().super.isa;
      v106 = Data._bridgeToObjectiveC()().super.isa;
      v107 = Data._bridgeToObjectiveC()().super.isa;
      v108 = [v104 initWithBeaconingKey:v98 commandKey:v105 connectionToken:v106 nearbyToken:v107 primaryIndex:v103 secondaryIndex:0 type:0];

      sub_100016590(v99, v100);
      sub_100721D04(v92, _s18ConnectionKeyGroupVMa);
      if (v108)
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v172 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v172 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v109 = *((v172 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v165 = v172;
      }

      v90 += v166;
      v88 = v169 - 1;
    }

    while (v169 != 1);

    v43 = v164;
    v110 = v165;
  }

  else
  {

    v110 = _swiftEmptyArrayStorage;
  }

  sub_10039A114(v110);
  v111 = v171;

  v113 = sub_10112B05C(v112);
  v169 = v111;

  v114 = *(v113 + 16);
  if (v114)
  {
    v115 = sub_1003A8844(*(v113 + 16), 0);
    v116 = sub_1003AA29C(&v172, v115 + 4, v114, v113);
    v14 = *(&v172 + 1);
    v40 = v173;

    sub_1000128F8();
    if (v116 == v114)
    {
      v43 = v164;
      goto LABEL_38;
    }

    __break(1u);
    goto LABEL_53;
  }

  v115 = _swiftEmptyArrayStorage;
LABEL_38:
  *&v172 = v115;
  v117 = v161;
  sub_1006DCE24(&v172);
  if (!v117)
  {

    v119 = v172;
    __chkstk_darwin(v118);
    v151 = v162;
    v152 = v175;
    v120 = sub_1005C7B10(sub_1007202E0, (&v153 - 4), v119);

    *&v172 = _swiftEmptyArrayStorage;
    v121 = v120[2];
    if (v121)
    {
      v122 = v178;
      v123 = v120 + ((*(v163 + 80) + 32) & ~*(v163 + 80));
      v124 = *(v163 + 72);
      do
      {
        v125 = sub_100721C9C(v123, v43, _s18ConnectionKeyGroupVMa);
        __chkstk_darwin(v125);
        v151 = v43;
        v126 = sub_1005C7DD8(sub_1007202FC, (&v153 - 4), v122);
        sub_10039A114(v126);
        sub_100721D04(v43, _s18ConnectionKeyGroupVMa);
        v123 += v124;
        --v121;
      }

      while (v121);

      v127 = v172;
    }

    else
    {

      v127 = _swiftEmptyArrayStorage;
    }

    sub_10039A114(v127);
    v41 = v178;

    sub_100007BAC(v175);

    return v41;
  }

  __break(1u);
  return result;
}

uint64_t sub_1006B5C0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = type metadata accessor for UUID();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v7 = type metadata accessor for DateInterval();
  v3[8] = v7;
  v8 = *(v7 - 8);
  v3[9] = v8;
  v9 = *(v8 + 64) + 15;
  v3[10] = swift_task_alloc();
  v10 = type metadata accessor for MACAddress();
  v3[11] = v10;
  v11 = *(v10 - 8);
  v3[12] = v11;
  v12 = *(v11 + 64) + 15;
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v13 = *(*(sub_1000BC4D4(&qword_1016A40D0, &unk_10138BE70) - 8) + 64) + 15;
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  v14 = *(*(sub_1000BC4D4(&unk_10169BB50, &unk_101395760) - 8) + 64) + 15;
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  v15 = type metadata accessor for KeyGenerationBeaconInfo();
  v3[21] = v15;
  v16 = *(v15 - 8);
  v3[22] = v16;
  v17 = *(v16 + 64) + 15;
  v3[23] = swift_task_alloc();
  v18 = *(*(sub_1000BC4D4(&qword_10169E368, &qword_1013D6690) - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();
  v19 = async function pointer to daemon.getter[1];
  v20 = swift_task_alloc();
  v3[26] = v20;
  *v20 = v3;
  v20[1] = sub_1006B5F04;

  return daemon.getter();
}

uint64_t sub_1006B5F04(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 208);
  v12 = *v1;
  v3[27] = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  v3[28] = v6;
  v7 = type metadata accessor for Daemon();
  v3[29] = v7;
  v8 = type metadata accessor for BeaconKeyService();
  v9 = sub_100003E8C(&qword_1016AA400, &type metadata accessor for Daemon);
  v3[30] = v9;
  v10 = sub_100003E8C(&unk_1016B1090, type metadata accessor for BeaconKeyService);
  *v6 = v12;
  v6[1] = sub_1006B60E4;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_1006B60E4(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 224);
  v6 = *v2;
  v4[31] = a1;
  v4[32] = v1;

  if (v1)
  {
    v7 = sub_1006B7330;
    v8 = 0;
  }

  else
  {
    v9 = v4[27];

    v7 = sub_1006B621C;
    v8 = a1;
  }

  return _swift_task_switch(v7, v8, 0);
}

uint64_t sub_1006B621C()
{
  v1 = v0[31];
  v2 = v0[32];
  v0[33] = sub_10002BE00(v0[3]);
  v0[34] = v2;
  if (v2)
  {
    v3 = sub_1006B7444;
  }

  else
  {
    v3 = sub_1006B62A8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1006B62A8()
{
  v1 = *(v0 + 264);
  if (*(v1 + 16))
  {
    v2 = *(*(v0 + 176) + 80);
    sub_100721C9C(v1 + ((v2 + 32) & ~v2), *(v0 + 200), type metadata accessor for KeyGenerationBeaconInfo);
    v3 = 0;
    v4 = *(v0 + 264);
  }

  else
  {
    v3 = 1;
  }

  v6 = *(v0 + 192);
  v5 = *(v0 + 200);
  v7 = *(v0 + 168);
  v8 = *(v0 + 176);

  (*(v8 + 56))(v5, v3, 1, v7);
  sub_1000D2A70(v5, v6, &qword_10169E368, &qword_1013D6690);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    v9 = *(v0 + 248);
    v10 = *(v0 + 192);
    sub_10000B3A8(*(v0 + 200), &qword_10169E368, &qword_1013D6690);

LABEL_11:
    sub_10000B3A8(v10, &qword_10169E368, &qword_1013D6690);
    v18 = *(v0 + 192);
    v17 = *(v0 + 200);
    v19 = *(v0 + 184);
    v21 = *(v0 + 152);
    v20 = *(v0 + 160);
    v23 = *(v0 + 136);
    v22 = *(v0 + 144);
    v25 = *(v0 + 120);
    v24 = *(v0 + 128);
    v26 = *(v0 + 112);
    v29 = *(v0 + 104);
    v30 = *(v0 + 80);
    v31 = *(v0 + 56);
    **(v0 + 16) = 0;

    v27 = *(v0 + 8);

    return v27();
  }

  v11 = *(v0 + 184);
  v12 = *(v0 + 168);
  sub_10002AB74(*(v0 + 192), v11, type metadata accessor for KeyGenerationBeaconInfo);
  if (*(v11 + *(v12 + 28)) != 3)
  {
    v15 = *(v0 + 248);
    v10 = *(v0 + 200);
    v16 = *(v0 + 184);

    sub_100721D04(v16, type metadata accessor for KeyGenerationBeaconInfo);
    goto LABEL_11;
  }

  v13 = async function pointer to daemon.getter[1];
  v14 = swift_task_alloc();
  *(v0 + 280) = v14;
  *v14 = v0;
  v14[1] = sub_1006B658C;

  return daemon.getter();
}

uint64_t sub_1006B658C(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 280);
  v5 = *v1;
  v3[36] = a1;

  v6 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v7 = swift_task_alloc();
  v3[37] = v7;
  v8 = type metadata accessor for ObservationStoreService();
  v9 = sub_100003E8C(&qword_1016AA450, type metadata accessor for ObservationStoreService);
  *v7 = v5;
  v7[1] = sub_1006B6740;
  v10 = v3[30];
  v11 = v3[29];

  return ActorServiceDaemon.getService<A>()(v11, v8, v10, v9);
}

uint64_t sub_1006B6740(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 296);
  v6 = *(*v2 + 288);
  v7 = *v2;
  v4[38] = a1;
  v4[39] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_1006B7558, 0, 0);
  }

  else
  {
    v8 = swift_task_alloc();
    v4[40] = v8;
    *v8 = v7;
    v8[1] = sub_1006B68F0;
    v9 = v4[23];
    v10 = v4[20];

    return sub_1010CE088(v10, v9);
  }
}

uint64_t sub_1006B68F0()
{
  v2 = *(*v1 + 320);
  v5 = *v1;
  *(*v1 + 328) = v0;

  if (v0)
  {
    v3 = sub_1006B76A8;
  }

  else
  {
    v3 = sub_1006B6A04;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1006B6A04()
{
  v111 = v0;
  v1 = *(v0 + 152);
  sub_1000D2A70(*(v0 + 160), v1, &unk_10169BB50, &unk_101395760);
  v2 = type metadata accessor for ObservedAdvertisement(0);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) != 1)
  {
    v5 = *(v0 + 152);
    v7 = *(v5 + 16);
    v6 = *(v5 + 24);
    sub_100029784(v7, v6);
    sub_100721D04(v5, type metadata accessor for ObservedAdvertisement);
    if ((v6 & 0x2000000000000000) != 0)
    {
      v32 = *(v0 + 304);
      v33 = *(v0 + 248);

      sub_10001E524(v7, v6);
      goto LABEL_9;
    }

    v8 = *(v0 + 136);
    v9 = *(v0 + 88);
    v10 = *(v0 + 96);
    sub_100029784(v7, v6);
    sub_100017D5C(v7, v6);
    v11 = static MACAddress.length.getter();
    v106 = v6;
    v108 = v7;
    sub_10002EA98(v11, v7, v6, v110);
    MACAddress.init(data:type:)();
    v102 = *(v10 + 48);
    result = v102(v8, 1, v9);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      v13 = *(v0 + 144);
      v14 = *(v0 + 128);
      v15 = *(v0 + 112);
      v16 = *(v0 + 88);
      v17 = *(v0 + 96);
      v18 = *(v0 + 72);
      v99 = *(v0 + 64);
      v101 = *(v0 + 80);
      v97 = *(v0 + 32);
      v94 = *(v17 + 32);
      v94(v15, *(v0 + 136), v16);
      MACAddress.data.getter();
      v19 = *(v17 + 8);
      v19(v15, v16);
      MACAddress.init(addressToSanitize:type:)();
      (*(v18 + 16))(v101, v97, v99);
      sub_1000D2A70(v13, v14, &qword_1016A40D0, &unk_10138BE70);
      v20 = v102(v14, 1, v16);
      v21 = *(v0 + 128);
      if (v20 != 1)
      {
        v37 = *(v0 + 88);
        v29 = MACAddress.data.getter();
        v31 = v38;
        v19(v21, v37);
        v26 = v106;
        sub_10001E524(v7, v106);
        goto LABEL_11;
      }

      v22 = v19;
      v23 = *(v0 + 120);
      v24 = *(v0 + 88);
      sub_10000B3A8(*(v0 + 128), &qword_1016A40D0, &unk_10138BE70);
      v25 = static MACAddress.length.getter();
      v26 = v106;
      sub_10002EA98(v25, v108, v106, v110);
      MACAddress.init(data:type:)();
      result = v102(v23, 1, v24);
      if (result != 1)
      {
        v27 = *(v0 + 104);
        v28 = *(v0 + 88);
        v94(v27, *(v0 + 120), v28);
        v29 = MACAddress.data.getter();
        v31 = v30;
        v22(v27, v28);
LABEL_11:
        v40 = *(v0 + 72);
        v39 = *(v0 + 80);
        v41 = *(v0 + 64);
        v42 = objc_allocWithZone(SPBeaconingKey);
        isa = DateInterval._bridgeToObjectiveC()().super.isa;
        v44 = Data._bridgeToObjectiveC()().super.isa;
        v45 = [v42 initWithDateInterval:isa key:v44];

        sub_100016590(v29, v31);
        (*(v40 + 8))(v39, v41);
        v46 = objc_allocWithZone(SPCommandKey);
        v47 = v45;
        v48 = Data._bridgeToObjectiveC()().super.isa;
        v49 = Data._bridgeToObjectiveC()().super.isa;
        v50 = Data._bridgeToObjectiveC()().super.isa;
        v104 = [v46 initWithBeaconingKey:v47 commandKey:v48 connectionToken:v49 nearbyToken:v50 primaryIndex:0 secondaryIndex:0 type:2];

        if (qword_101694780 != -1)
        {
          swift_once();
        }

        v52 = *(v0 + 48);
        v51 = *(v0 + 56);
        v53 = *(v0 + 40);
        v54 = *(v0 + 24);
        v55 = type metadata accessor for Logger();
        sub_1000076D4(v55, qword_10177AE40);
        (*(v52 + 16))(v51, v54, v53);
        v56 = v47;
        v57 = Logger.logObject.getter();
        v58 = static os_log_type_t.default.getter();

        v100 = v58;
        v59 = os_log_type_enabled(v57, v58);
        v60 = *(v0 + 304);
        v61 = *(v0 + 248);
        v62 = *(v0 + 200);
        v63 = *(v0 + 184);
        v64 = *(v0 + 160);
        v103 = *(v0 + 144);
        v66 = *(v0 + 48);
        v65 = *(v0 + 56);
        v67 = *(v0 + 40);
        if (v59)
        {
          v98 = *(v0 + 160);
          v68 = swift_slowAlloc();
          v110[0] = swift_slowAlloc();
          *v68 = 136315651;
          v96 = v62;
          v69 = [v56 key];
          v95 = v63;
          v70 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v93 = v56;
          v72 = v71;

          v73 = Data.hexString.getter();
          v75 = v74;
          sub_100016590(v70, v72);
          v76 = sub_1000136BC(v73, v75, v110);

          *(v68 + 4) = v76;
          *(v68 + 12) = 2160;
          *(v68 + 14) = 1752392040;
          *(v68 + 22) = 2081;
          sub_100003E8C(&qword_101696930, &type metadata accessor for UUID);
          v77 = dispatch thunk of CustomStringConvertible.description.getter();
          v79 = v78;
          (*(v66 + 8))(v65, v67);
          v80 = sub_1000136BC(v77, v79, v110);

          *(v68 + 24) = v80;
          _os_log_impl(&_mh_execute_header, v57, v100, "Returning command key %s for imported beacon %{private,mask.hash}s", v68, 0x20u);
          swift_arrayDestroy();

          sub_10001E524(v108, v106);
          sub_10000B3A8(v103, &qword_1016A40D0, &unk_10138BE70);
          sub_10000B3A8(v98, &unk_10169BB50, &unk_101395760);
          sub_100721D04(v95, type metadata accessor for KeyGenerationBeaconInfo);
          v81 = v96;
        }

        else
        {

          sub_10001E524(v108, v26);
          (*(v66 + 8))(v65, v67);
          sub_10000B3A8(v103, &qword_1016A40D0, &unk_10138BE70);
          sub_10000B3A8(v64, &unk_10169BB50, &unk_101395760);
          sub_100721D04(v63, type metadata accessor for KeyGenerationBeaconInfo);
          v81 = v62;
        }

        sub_10000B3A8(v81, &qword_10169E368, &qword_1013D6690);
        v36 = v104;
        goto LABEL_17;
      }
    }

    __break(1u);
    return result;
  }

  v3 = *(v0 + 304);
  v4 = *(v0 + 248);
  sub_10000B3A8(*(v0 + 152), &unk_10169BB50, &unk_101395760);

LABEL_9:
  v34 = *(v0 + 200);
  v35 = *(v0 + 184);
  sub_10000B3A8(*(v0 + 160), &unk_10169BB50, &unk_101395760);
  sub_100721D04(v35, type metadata accessor for KeyGenerationBeaconInfo);
  sub_10000B3A8(v34, &qword_10169E368, &qword_1013D6690);
  v36 = 0;
LABEL_17:
  v83 = *(v0 + 192);
  v82 = *(v0 + 200);
  v84 = *(v0 + 184);
  v86 = *(v0 + 152);
  v85 = *(v0 + 160);
  v88 = *(v0 + 136);
  v87 = *(v0 + 144);
  v90 = *(v0 + 120);
  v89 = *(v0 + 128);
  v91 = *(v0 + 112);
  v105 = *(v0 + 104);
  v107 = *(v0 + 80);
  v109 = *(v0 + 56);
  **(v0 + 16) = v36;

  v92 = *(v0 + 8);

  return v92();
}

uint64_t sub_1006B7330()
{
  v1 = v0[27];

  v3 = v0[24];
  v2 = v0[25];
  v4 = v0[23];
  v6 = v0[19];
  v5 = v0[20];
  v8 = v0[17];
  v7 = v0[18];
  v10 = v0[15];
  v9 = v0[16];
  v11 = v0[14];
  v14 = v0[13];
  v15 = v0[10];
  v16 = v0[7];
  v17 = v0[32];

  v12 = v0[1];

  return v12();
}

uint64_t sub_1006B7444()
{
  v1 = v0[31];

  v3 = v0[24];
  v2 = v0[25];
  v4 = v0[23];
  v6 = v0[19];
  v5 = v0[20];
  v8 = v0[17];
  v7 = v0[18];
  v10 = v0[15];
  v9 = v0[16];
  v11 = v0[14];
  v14 = v0[13];
  v15 = v0[10];
  v16 = v0[7];
  v17 = v0[34];

  v12 = v0[1];

  return v12();
}

uint64_t sub_1006B7558()
{
  v1 = v0[31];
  v2 = v0[25];
  v3 = v0[23];

  sub_100721D04(v3, type metadata accessor for KeyGenerationBeaconInfo);
  sub_10000B3A8(v2, &qword_10169E368, &qword_1013D6690);
  v5 = v0[24];
  v4 = v0[25];
  v6 = v0[23];
  v8 = v0[19];
  v7 = v0[20];
  v10 = v0[17];
  v9 = v0[18];
  v12 = v0[15];
  v11 = v0[16];
  v13 = v0[14];
  v16 = v0[13];
  v17 = v0[10];
  v18 = v0[7];
  v19 = v0[39];

  v14 = v0[1];

  return v14();
}

uint64_t sub_1006B76A8()
{
  v1 = v0[38];
  v2 = v0[31];
  v3 = v0[25];
  v4 = v0[23];

  sub_100721D04(v4, type metadata accessor for KeyGenerationBeaconInfo);
  sub_10000B3A8(v3, &qword_10169E368, &qword_1013D6690);
  v6 = v0[24];
  v5 = v0[25];
  v7 = v0[23];
  v9 = v0[19];
  v8 = v0[20];
  v11 = v0[17];
  v10 = v0[18];
  v13 = v0[15];
  v12 = v0[16];
  v14 = v0[14];
  v17 = v0[13];
  v18 = v0[10];
  v19 = v0[7];
  v20 = v0[41];

  v15 = v0[1];

  return v15();
}

uint64_t sub_1006B7804@<X0>(unint64_t *a1@<X0>, void *a2@<X1>, char **a3@<X2>, void *a4@<X8>)
{
  v71 = a4;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TimeBasedKey();
  v13 = (a1 + *(v12 + 24));
  v14 = v13[1];
  if (v14 >> 60 == 15)
  {
    LODWORD(v70) = static os_log_type_t.error.getter();
    if (qword_101695028 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_10138BBE0;
    v16 = a2[3];
    v17 = a2[4];
    sub_1000035D0(a2, v16);
    (*(*(*(v17 + 8) + 8) + 32))(v16);
    v18 = UUID.uuidString.getter();
    v20 = v19;
    (*(v8 + 8))(v11, v7);
    *(v15 + 56) = &type metadata for String;
    v21 = sub_100008C00();
    *(v15 + 32) = v18;
    *(v15 + 40) = v20;
    v22 = *a1;
    *(v15 + 96) = &type metadata for UInt64;
    *(v15 + 104) = &protocol witness table for UInt64;
    *(v15 + 64) = v21;
    *(v15 + 72) = v22;
    os_log(_:dso:log:_:_:)();

    v24 = 0;
  }

  else
  {
    v25 = *(v12 + 20);
    v26 = v13[2];
    v27 = v13[3];
    v70 = *v13;
    sub_100017D5C(v70, v14);
    v28 = PublicKey.advertisement.getter(v26, v27);
    v30 = v29;
    v31 = objc_allocWithZone(SPBeaconingKey);
    isa = DateInterval._bridgeToObjectiveC()().super.isa;
    v33 = Data._bridgeToObjectiveC()().super.isa;
    v69 = [v31 initWithDateInterval:isa key:v33];

    sub_100016590(v28, v30);
    v34 = *a1;
    v68 = [objc_allocWithZone(NSNumber) initWithUnsignedLongLong:*a1];
    if (v34)
    {
      v35 = v34 / 0x60 + 1;
    }

    else
    {
      v35 = 0;
    }

    v36 = *a3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a3 = v36;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v36 = sub_100A5DC90(0, *(v36 + 2) + 1, 1, v36);
      *a3 = v36;
    }

    v39 = *(v36 + 2);
    v38 = *(v36 + 3);
    if (v39 >= v38 >> 1)
    {
      v36 = sub_100A5DC90((v38 > 1), v39 + 1, 1, v36);
      *a3 = v36;
    }

    *(v36 + 2) = v39 + 1;
    *&v36[8 * v39 + 32] = v35;
    v40 = v70;
    v63 = v14;
    v41 = sub_100499CE0(v70, v14);
    v66 = v42;
    v67 = v41;
    v43 = sub_100497AF4(v40, v14);
    v64 = v44;
    v65 = v43;
    v45 = PublicKey.advertisement.getter(v13[2], v13[3]);
    v47 = v46;
    v48 = sub_100499CE0(v40, v14);
    v50 = v49;
    v51 = sub_100499208(v48, v49, v45, v47);
    v53 = v52;
    sub_100016590(v48, v50);
    sub_100016590(v45, v47);
    v62 = objc_allocWithZone(SPCommandKey);
    v54 = v68;
    v55 = Data._bridgeToObjectiveC()().super.isa;
    v68 = v55;
    v56 = v64;
    v57 = v65;
    v58 = Data._bridgeToObjectiveC()().super.isa;
    v59 = v51;
    v60 = Data._bridgeToObjectiveC()().super.isa;
    v61 = v69;
    v24 = [v62 initWithBeaconingKey:v69 commandKey:v55 connectionToken:v58 nearbyToken:v60 primaryIndex:v54 secondaryIndex:0 type:0];

    sub_100016590(v59, v53);
    sub_100016590(v57, v56);

    sub_100016590(v67, v66);
    result = sub_100006654(v70, v63);
  }

  *v71 = v24;
  return result;
}

uint64_t sub_1006B7CDC@<X0>(unint64_t *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v157 = a4;
  v8 = sub_1000BC4D4(&qword_10169C9A0, &unk_1013D5A40);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v156 = &v155 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v155 - v12;
  v14 = sub_1000BC4D4(&qword_1016A5A70, &unk_1013D6860);
  v15 = *(*(v14 - 8) + 64);
  v16 = __chkstk_darwin(v14 - 8);
  v160 = &v155 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = (&v155 - v18);
  v175 = _s18ConnectionKeyGroupVMa();
  v171 = *(v175 - 8);
  v20 = *(v171 + 64);
  v21 = __chkstk_darwin(v175);
  v166 = &v155 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v167 = (&v155 - v24);
  v25 = __chkstk_darwin(v23);
  v165 = &v155 - v26;
  __chkstk_darwin(v25);
  v28 = &v155 - v27;
  v176 = type metadata accessor for TimeBasedKey();
  v29 = *(v176 - 8);
  v30 = *(v29 + 64);
  v31 = __chkstk_darwin(v176);
  v169 = (&v155 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  v33 = __chkstk_darwin(v31);
  v170 = &v155 - v34;
  v35 = __chkstk_darwin(v33);
  v37 = (&v155 - v36);
  __chkstk_darwin(v35);
  v168 = (&v155 - v38);
  v39 = *a1;
  sub_10001F280(a3, &v177);
  v40 = swift_allocObject();
  *(v40 + 16) = a2;
  sub_10000A748(&v177, v40 + 24);
  *(v40 + 64) = v39;

  unsafeFromAsyncTask<A>(_:)();

  v41 = *(&v177 + 1);
  if (v178 <= 1u)
  {
    v172 = v177;
    v164 = v29;
    v42 = v29;
    v155 = *(&v177 + 1);
    if (v178)
    {
      v170 = *(v177 + 16);
      if (v170)
      {
        v160 = v13;
        v29 = 0;
        v169 = (v177 + ((*(v42 + 80) + 32) & ~*(v42 + 80)));
        v167 = (v171 + 56);
        v43 = _swiftEmptyArrayStorage;
        v166 = (v171 + 48);
        a2 = v168;
        v159 = v19;
        v158 = v28;
        v163 = v37;
        while (1)
        {
          v45 = *(v172 + 16);
          if (v29 >= v45)
          {
            goto LABEL_91;
          }

          v173 = v43;
          v4 = v42;
          sub_100721C9C(v169 + *(v42 + 72) * v29, a2, type metadata accessor for TimeBasedKey);
          sub_100721C9C(a2, v37, type metadata accessor for TimeBasedKey);
          v43 = (v37 + *(v176 + 24));
          v42 = v43[1];
          if (v42 >> 60 == 15)
          {
            v39 = type metadata accessor for TimeBasedKey;
            sub_100721D04(a2, type metadata accessor for TimeBasedKey);
            sub_100721D04(v37, type metadata accessor for TimeBasedKey);
            v86 = 1;
            v87 = v175;
            v42 = v4;
          }

          else
          {
            v88 = *v43;
            v19 = String.utf8Data.getter();
            v28 = v89;
            v90 = type metadata accessor for __DataStorage();
            v91 = *(v90 + 48);
            v92 = *(v90 + 52);
            swift_allocObject();
            v93 = __DataStorage.init(length:)();
            *&v177 = 0x2000000000;
            *(&v177 + 1) = v93 | 0x4000000000000000;
            sub_100017D5C(v19, v28);
            sub_10002E98C(v88, v42);
            v94 = v174;
            v95 = sub_100A7F110(v19, v28, v19, v28, v88, v42, &v177, 32);
            v39 = v94;
            if (v94)
            {
              sub_100006654(v88, v42);
              sub_100016590(v19, v28);
              goto LABEL_150;
            }

            v96 = v95;
            sub_100006654(v88, v42);
            sub_100016590(v19, v28);
            if (v96)
            {
              static os_log_type_t.error.getter();
              if (qword_101694BE0 != -1)
              {
                swift_once();
              }

              sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
              v131 = swift_allocObject();
              *(v131 + 16) = xmmword_101385D80;
              *(v131 + 56) = &type metadata for Int32;
              *(v131 + 64) = &protocol witness table for Int32;
              *(v131 + 32) = v96;
              os_log(_:dso:log:_:_:)();

              v132 = v160;
              CryptoError.init(rawValue:)();
              v133 = type metadata accessor for CryptoError();
              sub_100003E8C(&qword_10169C9B8, &type metadata accessor for CryptoError);
              v39 = swift_allocError();
              v135 = v134;
              v136 = *(v133 - 8);
              v4 = v136[6];
              if ((v4)(v132, 1, v133) == 1)
              {
                v137 = v136[13];
                v43 = v136 + 13;
                v137(v135, enum case for CryptoError.unspecifiedError(_:), v133);
                if ((v4)(v160, 1, v133) != 1)
                {
                  sub_10000B3A8(v160, &qword_10169C9A0, &unk_1013D5A40);
                }
              }

              else
              {
                v143 = v136[4];
                v43 = v136 + 4;
                v143(v135, v160, v133);
              }

              swift_willThrow();
LABEL_150:
              v145 = *(&v177 + 1);
              v144 = v177;
LABEL_151:
              sub_100016590(v144, v145);
              sub_100016590(v19, v28);
              *&v177 = 0;
              *(&v177 + 1) = 0xE000000000000000;
              a2 = &v177;
              _StringGuts.grow(_:)(35);
              v146._object = 0x8000000101354990;
              v146._countAndFlagsBits = 0xD000000000000021;
              String.append(_:)(v146);
              for (i = v39; ; i = v29)
              {
LABEL_152:
                sub_1000BC4D4(&qword_101696960, &unk_10138B220);
                _print_unlocked<A, B>(_:_:)();
                _assertionFailure(_:_:file:line:flags:)();
                __break(1u);
LABEL_153:
                v39 = 0;
LABEL_154:
                sub_100018350();
                v29 = swift_allocError();
                *v147 = 32;
                *(v147 + 8) = v39;
                *(v147 + 16) = 0;
                swift_willThrow();
                v140 = a2;
                v141 = v161;
LABEL_147:
                sub_100016590(v140, v141);
                sub_100016590(v4, v43);
                *&v177 = 0;
                *(&v177 + 1) = 0xE000000000000000;
                a2 = &v177;
                _StringGuts.grow(_:)(35);
                v142._object = 0x8000000101354990;
                v142._countAndFlagsBits = 0xD000000000000021;
                String.append(_:)(v142);
              }
            }

            v4 = *(&v177 + 1);
            a2 = v177;
            sub_100017D5C(v177, *(&v177 + 1));
            sub_100016590(a2, v4);
            v45 = v4 >> 62;
            if ((v4 >> 62) > 1)
            {
              if (v45 != 2)
              {
                v29 = 0;
                goto LABEL_156;
              }

              v99 = *(a2 + 2);
              v98 = *(a2 + 3);
              v60 = __OFSUB__(v98, v99);
              v97 = v98 - v99;
              if (v60)
              {
                goto LABEL_93;
              }
            }

            else if (v45)
            {
              LODWORD(v97) = HIDWORD(a2) - a2;
              if (__OFSUB__(HIDWORD(a2), a2))
              {
                goto LABEL_95;
              }

              v97 = v97;
            }

            else
            {
              v97 = BYTE6(v4);
            }

            if (v97 != 32)
            {
              goto LABEL_104;
            }

            sub_100016590(v19, v28);
            v28 = *v163;
            v100 = v165;
            *(v165 + 7) = &type metadata for SecondaryIndex;
            *(v100 + 8) = sub_10022A4D4();
            *(v100 + 4) = v28;
            v19 = sub_100A7A194(v43[2], v43[3]);
            v101 = sub_100A7829C(v19, 0);
            v174 = 0;
            v43 = v101;
            v39 = v102;
            CCECCryptorRelease();
            v45 = v39 >> 62;
            if ((v39 >> 62) > 1)
            {
              if (v45 != 2)
              {
                v154 = 0;
                goto LABEL_160;
              }

              v105 = v43[2];
              v104 = v43[3];
              v60 = __OFSUB__(v104, v105);
              v103 = v104 - v105;
              if (v60)
              {
                goto LABEL_97;
              }
            }

            else if (v45)
            {
              LODWORD(v103) = HIDWORD(v43) - v43;
              if (__OFSUB__(HIDWORD(v43), v43))
              {
                goto LABEL_99;
              }

              v103 = v103;
            }

            else
            {
              v103 = BYTE6(v39);
            }

            if (v103 != 28)
            {
              goto LABEL_112;
            }

            v106 = v29;
            sub_10002EA98(6, v43, v39, &v177);
            v39 = type metadata accessor for TimeBasedKey;
            v107 = v168;
            sub_100721D04(v168, type metadata accessor for TimeBasedKey);
            v161 = *(&v177 + 1);
            v162 = v177;
            v87 = v175;
            v108 = *(v176 + 20);
            v109 = *(v175 + 28);
            v110 = type metadata accessor for DateInterval();
            v111 = v165;
            v112 = &v165[v109];
            v37 = v163;
            (*(*(v110 - 8) + 16))(v112, v163 + v108, v110);
            v113 = v161;
            *v111 = v162;
            v111[1] = v113;
            v111[2] = a2;
            v111[3] = v4;
            a2 = v107;
            sub_100721D04(v37, type metadata accessor for TimeBasedKey);
            v19 = v159;
            sub_10002AB74(v111, v159, _s18ConnectionKeyGroupVMa);
            v86 = 0;
            v42 = v164;
            v29 = v106;
            v28 = v158;
          }

          (*v167)(v19, v86, 1, v87);
          if ((*v166)(v19, 1, v87) == 1)
          {
            sub_10000B3A8(v19, &qword_1016A5A70, &unk_1013D6860);
            v43 = v173;
          }

          else
          {
            sub_10002AB74(v19, v28, _s18ConnectionKeyGroupVMa);
            v43 = v173;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v43 = sub_100A5BE18(0, v43[2] + 1, 1, v43);
            }

            v115 = v43[2];
            v114 = v43[3];
            v39 = v115 + 1;
            if (v115 >= v114 >> 1)
            {
              v43 = sub_100A5BE18(v114 > 1, v115 + 1, 1, v43);
            }

            v43[2] = v39;
            sub_10002AB74(v28, v43 + ((*(v171 + 80) + 32) & ~*(v171 + 80)) + *(v171 + 72) * v115, _s18ConnectionKeyGroupVMa);
            a2 = v168;
          }

          if (v170 == ++v29)
          {
            goto LABEL_83;
          }
        }
      }

      v43 = _swiftEmptyArrayStorage;
LABEL_83:
      if (v43[2])
      {
        v80 = v171;
        v82 = v157;
        sub_100721C9C(v43 + ((*(v171 + 80) + 32) & ~*(v171 + 80)), v157, _s18ConnectionKeyGroupVMa);

        v83 = v172;
        v84 = v155;
        v85 = 1;
        goto LABEL_85;
      }

      v116 = v172;
      v41 = v155;
      v117 = 1;
    }

    else
    {
      v28 = v177;
      v168 = *(v177 + 16);
      if (v168)
      {
        v39 = 0;
        v43 = v29;
        v165 = (v177 + ((*(v29 + 80) + 32) & ~*(v29 + 80)));
        v44 = v170;
        v163 = (v171 + 56);
        v4 = _swiftEmptyArrayStorage;
        v162 = (v171 + 48);
        v42 = v160;
        v19 = v169;
        while (1)
        {
          v45 = *(v28 + 16);
          if (v39 >= v45)
          {
            break;
          }

          v173 = v4;
          v46 = v28;
          sub_100721C9C(&v165[v43[9] * v39], v44, type metadata accessor for TimeBasedKey);
          sub_100721C9C(v44, v19, type metadata accessor for TimeBasedKey);
          v29 = v19;
          v19 = (v19 + *(v176 + 24));
          v28 = v19[1];
          if (v28 >> 60 == 15)
          {
            sub_100721D04(v44, type metadata accessor for TimeBasedKey);
            sub_100721D04(v29, type metadata accessor for TimeBasedKey);
            v47 = 1;
            v19 = v29;
            v28 = v46;
          }

          else
          {
            v42 = *v19;
            v4 = String.utf8Data.getter();
            v43 = v48;
            v49 = type metadata accessor for __DataStorage();
            v50 = *(v49 + 48);
            v51 = *(v49 + 52);
            swift_allocObject();
            v52 = __DataStorage.init(length:)();
            *&v177 = 0x2000000000;
            *(&v177 + 1) = v52 | 0x4000000000000000;
            sub_100017D5C(v4, v43);
            sub_10002E98C(v42, v28);
            v53 = v174;
            v54 = sub_100A7F110(v4, v43, v4, v43, v42, v28, &v177, 32);
            v29 = v53;
            if (v53)
            {
              goto LABEL_132;
            }

            v55 = v54;
            sub_100006654(v42, v28);
            sub_100016590(v4, v43);
            if (v55)
            {
              static os_log_type_t.error.getter();
              if (qword_101694BE0 != -1)
              {
                swift_once();
              }

              sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
              v124 = swift_allocObject();
              *(v124 + 16) = xmmword_101385D80;
              *(v124 + 56) = &type metadata for Int32;
              *(v124 + 64) = &protocol witness table for Int32;
              *(v124 + 32) = v55;
              os_log(_:dso:log:_:_:)();

              v125 = v156;
              CryptoError.init(rawValue:)();
              v126 = type metadata accessor for CryptoError();
              sub_100003E8C(&qword_10169C9B8, &type metadata accessor for CryptoError);
              v29 = swift_allocError();
              v128 = v127;
              v129 = *(v126 - 8);
              v130 = *(v129 + 48);
              if (v130(v125, 1, v126) == 1)
              {
                (*(v129 + 104))(v128, enum case for CryptoError.unspecifiedError(_:), v126);
                if (v130(v156, 1, v126) != 1)
                {
                  sub_10000B3A8(v156, &qword_10169C9A0, &unk_1013D5A40);
                }
              }

              else
              {
                (*(v129 + 32))(v128, v156, v126);
              }

              swift_willThrow();
              goto LABEL_146;
            }

            v28 = *(&v177 + 1);
            a2 = v177;
            sub_100017D5C(v177, *(&v177 + 1));
            sub_100016590(a2, v28);
            v45 = v28 >> 62;
            v56 = v170;
            v161 = v28;
            if ((v28 >> 62) > 1)
            {
              if (v45 != 2)
              {
                goto LABEL_153;
              }

              v59 = *(a2 + 2);
              v58 = *(a2 + 3);
              v60 = __OFSUB__(v58, v59);
              v57 = v58 - v59;
              if (v60)
              {
                goto LABEL_92;
              }
            }

            else if (v45)
            {
              LODWORD(v57) = HIDWORD(a2) - a2;
              if (__OFSUB__(HIDWORD(a2), a2))
              {
                goto LABEL_94;
              }

              v57 = v57;
            }

            else
            {
              v57 = BYTE6(v28);
            }

            if (v57 != 32)
            {
              goto LABEL_100;
            }

            sub_100016590(v4, v43);
            v61 = *v169;
            v28 = v166;
            *(v166 + 7) = &type metadata for SecondaryIndex;
            *(v28 + 64) = sub_10022A4D4();
            *(v28 + 32) = v61;
            v42 = sub_100A7A194(v19[2], v19[3]);
            v62 = sub_100A7829C(v42, 0);
            v174 = 0;
            v43 = v62;
            v29 = v63;
            CCECCryptorRelease();
            v45 = v29 >> 62;
            if ((v29 >> 62) > 1)
            {
              if (v45 != 2)
              {
                v153 = 0;
                goto LABEL_158;
              }

              v66 = v43[2];
              v65 = v43[3];
              v60 = __OFSUB__(v65, v66);
              v64 = v65 - v66;
              if (v60)
              {
                goto LABEL_96;
              }
            }

            else if (v45)
            {
              LODWORD(v64) = HIDWORD(v43) - v43;
              if (__OFSUB__(HIDWORD(v43), v43))
              {
                goto LABEL_98;
              }

              v64 = v64;
            }

            else
            {
              v64 = BYTE6(v29);
            }

            if (v64 != 28)
            {
              goto LABEL_108;
            }

            sub_10002EA98(6, v43, v29, &v177);
            v29 = type metadata accessor for TimeBasedKey;
            sub_100721D04(v56, type metadata accessor for TimeBasedKey);
            v68 = *(&v177 + 1);
            v67 = v177;
            v69 = *(v176 + 20);
            v70 = *(v175 + 28);
            v71 = type metadata accessor for DateInterval();
            v72 = v166;
            v73 = &v166[v70];
            v74 = v169;
            (*(*(v71 - 8) + 16))(v73, v169 + v69, v71);
            *v72 = __PAIR128__(v68, v67);
            v19 = v74;
            v75 = v161;
            *(v72 + 2) = a2;
            *(v72 + 3) = v75;
            sub_100721D04(v74, type metadata accessor for TimeBasedKey);
            v76 = v72;
            v44 = v170;
            v42 = v160;
            sub_10002AB74(v76, v160, _s18ConnectionKeyGroupVMa);
            v47 = 0;
            v28 = v172;
            v43 = v164;
          }

          a2 = v175;
          (*v163)(v42, v47, 1, v175);
          v77 = (*v162)(v42, 1, a2);
          v4 = v173;
          if (v77 == 1)
          {
            sub_10000B3A8(v42, &qword_1016A5A70, &unk_1013D6860);
          }

          else
          {
            sub_10002AB74(v42, v167, _s18ConnectionKeyGroupVMa);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v4 = sub_100A5BE18(0, *(v4 + 16) + 1, 1, v4);
            }

            v29 = *(v4 + 16);
            v78 = *(v4 + 24);
            a2 = (v29 + 1);
            if (v29 >= v78 >> 1)
            {
              v4 = sub_100A5BE18(v78 > 1, v29 + 1, 1, v4);
            }

            *(v4 + 16) = a2;
            sub_10002AB74(v167, v4 + ((*(v171 + 80) + 32) & ~*(v171 + 80)) + *(v171 + 72) * v29, _s18ConnectionKeyGroupVMa);
          }

          if (v168 == ++v39)
          {
            goto LABEL_79;
          }
        }

        __break(1u);
LABEL_91:
        __break(1u);
LABEL_92:
        __break(1u);
LABEL_93:
        __break(1u);
LABEL_94:
        __break(1u);
LABEL_95:
        __break(1u);
LABEL_96:
        __break(1u);
LABEL_97:
        __break(1u);
LABEL_98:
        __break(1u);
LABEL_99:
        __break(1u);
LABEL_100:
        if (v45 == 1)
        {
          LODWORD(v45) = HIDWORD(a2) - a2;
          if (!__OFSUB__(HIDWORD(a2), a2))
          {
            v39 = v45;
            goto LABEL_154;
          }

          __break(1u);
LABEL_104:
          if (v45 != 1)
          {
            goto LABEL_120;
          }

          LODWORD(v45) = HIDWORD(a2) - a2;
          if (!__OFSUB__(HIDWORD(a2), a2))
          {
            v29 = v45;
            goto LABEL_156;
          }

          __break(1u);
LABEL_108:
          if (v45 != 1)
          {
LABEL_124:
            if (v45 != 2)
            {
              v153 = BYTE6(v29);
LABEL_158:
              sub_100018350();
              v149 = swift_allocError();
              *v150 = 28;
              *(v150 + 8) = v153;
              *(v150 + 16) = 0;
              swift_willThrow();
              sub_100016590(v43, v29);
              *&v177 = 0;
              *(&v177 + 1) = 0xE000000000000000;
              a2 = &v177;
              _StringGuts.grow(_:)(35);
              v138._object = 0x800000010134CB30;
              v138._countAndFlagsBits = 0xD000000000000021;
              String.append(_:)(v138);
              i = v149;
              goto LABEL_152;
            }

            v121 = v43[2];
            v45 = v43[3];
            v153 = v45 - v121;
            if (!__OFSUB__(v45, v121))
            {
              goto LABEL_158;
            }

            __break(1u);
LABEL_128:
            if (v45 == 2)
            {
              v123 = v43[2];
              v122 = v43[3];
              v154 = v122 - v123;
              if (__OFSUB__(v122, v123))
              {
                __break(1u);
LABEL_132:
                sub_100006654(v42, v28);
                sub_100016590(v4, v43);
LABEL_146:
                v141 = *(&v177 + 1);
                v140 = v177;
                goto LABEL_147;
              }
            }

            else
            {
              v154 = BYTE6(v39);
            }

LABEL_160:
            sub_100018350();
            v151 = swift_allocError();
            *v152 = 28;
            *(v152 + 8) = v154;
            *(v152 + 16) = 0;
            swift_willThrow();
            sub_100016590(v43, v39);
            *&v177 = 0;
            *(&v177 + 1) = 0xE000000000000000;
            a2 = &v177;
            _StringGuts.grow(_:)(35);
            v139._object = 0x800000010134CB30;
            v139._countAndFlagsBits = 0xD000000000000021;
            String.append(_:)(v139);
            i = v151;
            goto LABEL_152;
          }

          LODWORD(v45) = HIDWORD(v43) - v43;
          if (!__OFSUB__(HIDWORD(v43), v43))
          {
            v153 = v45;
            goto LABEL_158;
          }

          __break(1u);
LABEL_112:
          if (v45 != 1)
          {
            goto LABEL_128;
          }

          LODWORD(v45) = HIDWORD(v43) - v43;
          if (!__OFSUB__(HIDWORD(v43), v43))
          {
            v154 = v45;
            goto LABEL_160;
          }

          __break(1u);
        }

        if (v45 != 2)
        {
          v39 = BYTE6(v161);
          goto LABEL_154;
        }

        v119 = *(a2 + 2);
        v45 = *(a2 + 3);
        v39 = v45 - v119;
        if (!__OFSUB__(v45, v119))
        {
          goto LABEL_154;
        }

        __break(1u);
LABEL_120:
        if (v45 != 2)
        {
          v29 = BYTE6(v4);
LABEL_156:
          sub_100018350();
          v39 = swift_allocError();
          *v148 = 32;
          *(v148 + 8) = v29;
          *(v148 + 16) = 0;
          swift_willThrow();
          v144 = a2;
          v145 = v4;
          goto LABEL_151;
        }

        v120 = *(a2 + 2);
        v45 = *(a2 + 3);
        v29 = v45 - v120;
        if (!__OFSUB__(v45, v120))
        {
          goto LABEL_156;
        }

        __break(1u);
        goto LABEL_124;
      }

      v4 = _swiftEmptyArrayStorage;
LABEL_79:
      if (*(v4 + 16))
      {
        v80 = v171;
        v82 = v157;
        sub_100721C9C(v4 + ((*(v171 + 80) + 32) & ~*(v171 + 80)), v157, _s18ConnectionKeyGroupVMa);

        v83 = v28;
        v84 = v155;
        v85 = 0;
        goto LABEL_85;
      }

      v116 = v28;
      v41 = v155;
      v117 = 0;
    }

LABEL_88:
    sub_100359088(v116, v41, v117);
    return (*(v171 + 56))(v157, 1, 1, v175);
  }

  if (v178 == 2)
  {
    v79 = v177;
    if (*(v177 + 16))
    {
      v80 = v171;
      v81 = *(&v177 + 1);
      v82 = v157;
      sub_100721C9C(v177 + ((*(v171 + 80) + 32) & ~*(v171 + 80)), v157, _s18ConnectionKeyGroupVMa);
      v83 = v79;
      v84 = v81;
      v85 = 2;
LABEL_85:
      sub_100359088(v83, v84, v85);
      return (*(v80 + 56))(v82, 0, 1, v175);
    }

    v116 = v177;
    v117 = 2;
    goto LABEL_88;
  }

  return (*(v171 + 56))(v157, 1, 1, v175);
}

uint64_t sub_1006B96F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  return _swift_task_switch(sub_1006B971C, 0, 0);
}

uint64_t sub_1006B971C()
{
  v1 = *(*(v0[4] + 280) + OBJC_IVAR____TtC12searchpartyd11BeaconStore_beaconKeyManagerLock);
  type metadata accessor for BeaconKeyManager(0);
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  v0[7] = v0[2];
  v2 = swift_task_alloc();
  v0[8] = v2;
  *v2 = v0;
  v2[1] = sub_1006B9824;
  v4 = v0[5];
  v3 = v0[6];

  return sub_100731BF4(v4, v3, v3, 1, 0, 0);
}

uint64_t sub_1006B9824(uint64_t a1, uint64_t a2, char a3)
{
  v8 = *v4;
  v9 = *(*v4 + 64);
  v10 = *v4;
  *(*v4 + 72) = v3;

  if (v3)
  {
    v11 = sub_1006B9994;
  }

  else
  {
    v12 = *(v8 + 56);

    *(v8 + 96) = a3;
    *(v8 + 80) = a2;
    *(v8 + 88) = a1;
    v11 = sub_1006B9968;
  }

  return _swift_task_switch(v11, 0, 0);
}

uint64_t sub_1006B9968()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 24);
  *v2 = vextq_s8(*(v0 + 80), *(v0 + 80), 8uLL);
  v2[1].i8[0] = v1;
  return (*(v0 + 8))();
}

uint64_t sub_1006B9994()
{
  v1 = v0[9];
  v2 = v0[7];

  v3 = v0[3];
  *v3 = 0;
  *(v3 + 8) = 0;
  *(v3 + 16) = 3;
  v4 = v0[1];

  return v4();
}

void sub_1006B9A10(void **a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v5 = *a1;
  v6 = a2[2];
  v7 = a2[3];
  sub_100017D5C(v6, v7);
  v8 = [v5 connectionToken];
  v9 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  LOBYTE(v8) = _s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(v6, v7, v9, v11);
  sub_100016590(v9, v11);
  sub_100016590(v6, v7);
  if (v8)
  {
    goto LABEL_3;
  }

  v12 = *a2;
  v13 = a2[1];
  sub_100017D5C(*a2, v13);
  v14 = [v5 beaconingKey];
  v15 = [v14 key];

  v16 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;

  LOBYTE(v15) = _s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(v12, v13, v16, v18);
  sub_100016590(v16, v18);
  sub_100016590(v12, v13);
  if (v15)
  {
LABEL_3:
    v19 = 0;
  }

  else
  {
    v20 = *(_s18ConnectionKeyGroupVMa() + 28);
    v21 = objc_allocWithZone(SPBeaconingKey);
    sub_100017D5C(v12, v13);
    isa = DateInterval._bridgeToObjectiveC()().super.isa;
    v23 = Data._bridgeToObjectiveC()().super.isa;
    v37 = [v21 initWithDateInterval:isa key:v23];

    sub_100016590(v12, v13);
    v24 = a2[8];
    sub_1000035D0(a2 + 4, a2[7]);
    v25 = *(v24 + 56);
    dispatch thunk of RawRepresentable.rawValue.getter();
    v26 = [objc_allocWithZone(NSNumber) initWithUnsignedLongLong:v38];
    v36 = [v5 primaryIndex];
    v27 = [v5 connectionToken];
    v35 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v29 = v28;

    v30 = objc_allocWithZone(SPCommandKey);
    v31 = v26;
    v32 = Data._bridgeToObjectiveC()().super.isa;
    v33 = Data._bridgeToObjectiveC()().super.isa;
    v34 = Data._bridgeToObjectiveC()().super.isa;
    v19 = [v30 initWithBeaconingKey:v37 commandKey:v32 connectionToken:v33 nearbyToken:v34 primaryIndex:v36 secondaryIndex:v31 type:1];

    sub_100016590(v35, v29);
  }

  *a3 = v19;
}

void *sub_1006B9D20(uint64_t a1, uint64_t a2)
{
  v5 = _s18ConnectionKeyGroupVMa();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = (&v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for TimeBasedKeysCriteria();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = (&v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *(v2 + 280);
  sub_100025020(a1, &v45);
  if (v46)
  {
    sub_10000A748(&v45, v47);
    *v13 = a2;
    swift_storeEnumTagMultiPayload();

    v15 = sub_100A8A1DC(v47, v13);
    sub_100721D04(v13, type metadata accessor for TimeBasedKeysCriteria);
    *&v45 = _swiftEmptyArrayStorage;
    v17 = v15[2];
    if (v17)
    {
      v42 = *(v5 + 28);
      v18 = (*(v6 + 80) + 32) & ~*(v6 + 80);
      v39 = v15;
      v19 = v15 + v18;
      v20 = *(v6 + 72);
      v40 = _swiftEmptyArrayStorage;
      v41 = v20;
      do
      {
        v43 = v17;
        sub_100721C9C(v19, v9, _s18ConnectionKeyGroupVMa);
        v21 = *v9;
        v22 = v9[1];
        v23 = objc_allocWithZone(SPBeaconingKey);
        sub_100017D5C(v21, v22);
        isa = DateInterval._bridgeToObjectiveC()().super.isa;
        v25 = Data._bridgeToObjectiveC()().super.isa;
        v26 = [v23 initWithDateInterval:isa key:{v25, v39}];

        sub_100016590(v21, v22);
        v27 = v9[8];
        sub_1000035D0(v9 + 4, v9[7]);
        v28 = *(v27 + 56);
        dispatch thunk of RawRepresentable.rawValue.getter();
        v29 = [objc_allocWithZone(NSNumber) initWithUnsignedLongLong:v44];
        v30 = v9[2];
        v31 = v9[3];
        v32 = objc_allocWithZone(SPCommandKey);
        sub_100017D5C(v30, v31);
        v33 = Data._bridgeToObjectiveC()().super.isa;
        v34 = Data._bridgeToObjectiveC()().super.isa;
        v35 = Data._bridgeToObjectiveC()().super.isa;
        v36 = [v32 initWithBeaconingKey:v26 commandKey:v33 connectionToken:v34 nearbyToken:v35 primaryIndex:v29 secondaryIndex:0 type:0];

        sub_100016590(v30, v31);
        sub_100721D04(v9, _s18ConnectionKeyGroupVMa);
        if (v36)
        {
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v45 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v45 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v37 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v40 = v45;
        }

        v19 += v41;
        v17 = v43 - 1;
      }

      while (v43 != 1);

      v38 = v40;
    }

    else
    {

      v38 = _swiftEmptyArrayStorage;
    }

    sub_100007BAC(v47);
    return v38;
  }

  else
  {
    sub_10000B3A8(&v45, &qword_101696920, &unk_10138B200);
    return _swiftEmptyArrayStorage;
  }
}

void *sub_1006BA240(uint64_t a1, char a2, uint64_t a3, char a4)
{
  v9 = sub_1000BC4D4(&qword_10169C9A0, &unk_1013D5A40);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v187 = (&v180 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v11);
  v186 = &v180 - v13;
  v196 = _s18ConnectionKeyGroupVMa();
  v197 = *(v196 - 8);
  v14 = *(v197 + 64);
  v15 = __chkstk_darwin(v196);
  v188 = &v180 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v194 = (&v180 - v18);
  __chkstk_darwin(v17);
  v193 = (&v180 - v19);
  v20 = type metadata accessor for TimeBasedKey();
  v199 = *(v20 - 8);
  v200 = v20;
  v21 = *(v199 + 64);
  v22 = __chkstk_darwin(v20);
  v198 = (&v180 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = __chkstk_darwin(v22);
  v195 = &v180 - v25;
  v26 = __chkstk_darwin(v24);
  v28 = &v180 - v27;
  __chkstk_darwin(v26);
  v192 = &v180 - v29;
  v30 = sub_1000BC4D4(&qword_1016A5A70, &unk_1013D6860);
  v31 = *(*(v30 - 8) + 64);
  v32 = __chkstk_darwin(v30 - 8);
  v189 = &v180 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __chkstk_darwin(v32);
  v36 = &v180 - v35;
  v37 = __chkstk_darwin(v34);
  v39 = &v180 - v38;
  __chkstk_darwin(v37);
  v190 = &v180 - v40;
  v41 = type metadata accessor for TimeBasedKeysCriteria();
  v42 = *(*(v41 - 8) + 64);
  __chkstk_darwin(v41);
  v44 = &v180 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v191 = v4;
  v45 = *(v4 + 280);
  sub_100025020(a1, &v203);
  if (!v205)
  {
    sub_10000B3A8(&v203, &qword_101696920, &unk_10138B200);
    return _swiftEmptyArrayStorage;
  }

  sub_10000A748(&v203, &v207);
  v46 = a2 & 1;
  *v44 = v46;
  *(v44 + 1) = a3;
  v44[16] = a4;
  swift_storeEnumTagMultiPayload();
  v47 = 0;
  v48 = sub_100A8A1DC(&v207, v44);
  v49 = sub_100721D04(v44, type metadata accessor for TimeBasedKeysCriteria);
  v182 = v48;
  if (v46)
  {
    sub_10001F280(&v207, &v203);
    v59 = swift_allocObject();
    *(v59 + 16) = v191;
    sub_10000A748(&v203, v59 + 24);
    *(v59 + 64) = a3;

    unsafeFromAsyncTask<A>(_:)();

    v60 = *(&v203 + 1);
    v61 = v203;
    if (v204 > 1u)
    {
      v62 = v196;
      v64 = v197;
      if (v204 != 2)
      {

LABEL_3:
        sub_100007BAC(&v207);
        return _swiftEmptyArrayStorage;
      }

      v99 = v203;
      v100 = v182;
      if (*(v203 + 16))
      {
        v101 = v190;
        sub_100721C9C(v203 + ((*(v197 + 80) + 32) & ~*(v197 + 80)), v190, _s18ConnectionKeyGroupVMa);
        sub_100359088(v99, v60, 2u);
        (*(v64 + 56))(v101, 0, 1, v62);
      }

      else
      {
        sub_100359088(v203, *(&v203 + 1), 2u);
        v101 = v190;
        (*(v64 + 56))(v190, 1, 1, v62);
      }

      v132 = v189;
LABEL_97:
      sub_1000D2A70(v101, v132, &qword_1016A5A70, &unk_1013D6860);
      if ((*(v64 + 48))(v132, 1, v62) != 1)
      {
        v134 = v132;
        v135 = v188;
        v136 = sub_10002AB74(v134, v188, _s18ConnectionKeyGroupVMa);
        __chkstk_darwin(v136);
        *(&v180 - 4) = v191;
        *(&v180 - 3) = &v207;
        v178 = v135;
        v58 = sub_1005C7AE4(sub_100720480, (&v180 - 6), v100);

        sub_10000B3A8(v101, &qword_1016A5A70, &unk_1013D6860);
        sub_100721D04(v135, _s18ConnectionKeyGroupVMa);
        goto LABEL_100;
      }

      sub_10000B3A8(v132, &qword_1016A5A70, &unk_1013D6860);
      sub_10000B3A8(v101, &qword_1016A5A70, &unk_1013D6860);
      goto LABEL_3;
    }

    v62 = v196;
    v181 = *(&v203 + 1);
    v185 = v203;
    if (v204)
    {
      v198 = *(v203 + 16);
      if (v198)
      {
        v79 = 0;
        v195 = (v203 + ((*(v199 + 80) + 32) & ~*(v199 + 80)));
        v194 = (v197 + 56);
        v102 = _swiftEmptyArrayStorage;
        v187 = (v197 + 48);
        v103 = v192;
        while (v79 < *(v61 + 16))
        {
          sub_100721C9C(&v195[*(v199 + 72) * v79], v103, type metadata accessor for TimeBasedKey);
          sub_100721C9C(v103, v28, type metadata accessor for TimeBasedKey);
          v104 = &v28[*(v200 + 24)];
          v105 = v104[1];
          if (v105 >> 60 == 15)
          {
            sub_100721D04(v103, type metadata accessor for TimeBasedKey);
            sub_100721D04(v28, type metadata accessor for TimeBasedKey);
            v106 = 1;
          }

          else
          {
            v184 = v102;
            v107 = *v104;
            v36 = String.utf8Data.getter();
            v67 = v108;
            v109 = type metadata accessor for __DataStorage();
            v110 = *(v109 + 48);
            v111 = *(v109 + 52);
            swift_allocObject();
            v112 = __DataStorage.init(length:)();
            *&v203 = 0x2000000000;
            *(&v203 + 1) = v112 | 0x4000000000000000;
            sub_100017D5C(v36, v67);
            sub_10002E98C(v107, v105);
            v113 = sub_100A7F110(v36, v67, v36, v67, v107, v105, &v203, 32);
            sub_100006654(v107, v105);
            sub_100016590(v36, v67);
            if (v113)
            {
              static os_log_type_t.error.getter();
              if (qword_101694BE0 != -1)
              {
                swift_once();
              }

              sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
              v155 = swift_allocObject();
              *(v155 + 16) = xmmword_101385D80;
              *(v155 + 56) = &type metadata for Int32;
              *(v155 + 64) = &protocol witness table for Int32;
              *(v155 + 32) = v113;
              os_log(_:dso:log:_:_:)();

              v156 = v186;
              CryptoError.init(rawValue:)();
              v157 = type metadata accessor for CryptoError();
              sub_100003E8C(&qword_10169C9B8, &type metadata accessor for CryptoError);
              v79 = swift_allocError();
              v159 = v158;
              v160 = *(v157 - 8);
              v39 = v160 + 48;
              v72 = *(v160 + 48);
              if ((v72)(v156, 1, v157) == 1)
              {
                (*(v160 + 104))(v159, enum case for CryptoError.unspecifiedError(_:), v157);
                if ((v72)(v186, 1, v157) != 1)
                {
                  sub_10000B3A8(v186, &qword_10169C9A0, &unk_1013D5A40);
                }
              }

              else
              {
                (*(v160 + 32))(v159, v186, v157);
              }

              swift_willThrow();
              v165 = *(&v203 + 1);
              v164 = v203;
              goto LABEL_160;
            }

            v72 = *(&v203 + 1);
            v80 = v203;
            sub_100017D5C(v203, *(&v203 + 1));
            sub_100016590(v80, v72);
            v81 = v72 >> 62;
            v62 = v196;
            if ((v72 >> 62) > 1)
            {
              if (v81 != 2)
              {
                v175 = 0;
                goto LABEL_166;
              }

              v116 = *(v80 + 16);
              v115 = *(v80 + 24);
              v85 = __OFSUB__(v115, v116);
              v114 = v115 - v116;
              if (v85)
              {
                goto LABEL_103;
              }
            }

            else if (v81)
            {
              LODWORD(v114) = HIDWORD(v80) - v80;
              if (__OFSUB__(HIDWORD(v80), v80))
              {
                goto LABEL_105;
              }

              v114 = v114;
            }

            else
            {
              v114 = BYTE6(v72);
            }

            if (v114 != 32)
            {
              goto LABEL_114;
            }

            sub_100016590(v36, v67);
            v117 = *v28;
            v205 = &type metadata for SecondaryIndex;
            v206 = sub_10022A4D4();
            *&v203 = v117;
            v118 = sub_100A7A194(v104[2], v104[3]);
            v36 = sub_100A7829C(v118, 0);
            v67 = v119;
            CCECCryptorRelease();
            v81 = v67 >> 62;
            if ((v67 >> 62) > 1)
            {
              if (v81 != 2)
              {
                v176 = 0;
                goto LABEL_170;
              }

              v122 = *(v36 + 2);
              v121 = *(v36 + 3);
              v85 = __OFSUB__(v121, v122);
              v120 = v121 - v122;
              if (v85)
              {
                goto LABEL_108;
              }
            }

            else if (v81)
            {
              LODWORD(v120) = HIDWORD(v36) - v36;
              if (__OFSUB__(HIDWORD(v36), v36))
              {
                goto LABEL_109;
              }

              v120 = v120;
            }

            else
            {
              v120 = BYTE6(v67);
            }

            if (v120 != 28)
            {
              goto LABEL_118;
            }

            sub_10002EA98(6, v36, v67, &v202);
            v103 = v192;
            sub_100721D04(v192, type metadata accessor for TimeBasedKey);
            v123 = *(v200 + 20);
            *v39 = v202;
            *(v39 + 16) = v80;
            *(v39 + 24) = v72;
            sub_10000A748(&v203, v39 + 32);
            v124 = *(v62 + 28);
            v125 = type metadata accessor for DateInterval();
            (*(*(v125 - 8) + 16))(v39 + v124, &v28[v123], v125);
            sub_100721D04(v28, type metadata accessor for TimeBasedKey);
            v106 = 0;
            v102 = v184;
          }

          (*v194)(v39, v106, 1, v62);
          v126 = (*v187)(v39, 1, v62);
          v61 = v185;
          if (v126 == 1)
          {
            sub_10000B3A8(v39, &qword_1016A5A70, &unk_1013D6860);
          }

          else
          {
            sub_10002AB74(v39, v193, _s18ConnectionKeyGroupVMa);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v102 = sub_100A5BE18(0, v102[2] + 1, 1, v102);
            }

            v128 = v102[2];
            v127 = v102[3];
            if (v128 >= v127 >> 1)
            {
              v102 = sub_100A5BE18(v127 > 1, v128 + 1, 1, v102);
            }

            v102[2] = v128 + 1;
            sub_10002AB74(v193, v102 + ((*(v197 + 80) + 32) & ~*(v197 + 80)) + *(v197 + 72) * v128, _s18ConnectionKeyGroupVMa);
          }

          if (v198 == ++v79)
          {
            goto LABEL_90;
          }
        }

        goto LABEL_102;
      }

      v102 = _swiftEmptyArrayStorage;
LABEL_90:
      if (v102[2])
      {
        v64 = v197;
        v133 = v102 + ((*(v197 + 80) + 32) & ~*(v197 + 80));
        v101 = v190;
        sub_100721C9C(v133, v190, _s18ConnectionKeyGroupVMa);

        v129 = v61;
        v130 = v181;
        v131 = 1;
        goto LABEL_92;
      }

      sub_100359088(v61, v181, 1u);
      v64 = v197;
    }

    else
    {
      v192 = *(v203 + 16);
      if (v192)
      {
        v63 = 0;
        v186 = v203 + ((*(v199 + 80) + 32) & ~*(v199 + 80));
        v64 = v197;
        v184 = (v197 + 56);
        v65 = _swiftEmptyArrayStorage;
        v183 = (v197 + 48);
        v66 = v198;
        v67 = v195;
        while (v63 < *(v61 + 16))
        {
          v193 = v65;
          sub_100721C9C(v186 + *(v199 + 72) * v63, v67, type metadata accessor for TimeBasedKey);
          sub_100721C9C(v67, v66, type metadata accessor for TimeBasedKey);
          v68 = (v66 + *(v200 + 24));
          v69 = v68[1];
          if (v69 >> 60 == 15)
          {
            sub_100721D04(v67, type metadata accessor for TimeBasedKey);
            sub_100721D04(v66, type metadata accessor for TimeBasedKey);
            v70 = 1;
            v65 = v193;
          }

          else
          {
            v71 = *v68;
            v72 = String.utf8Data.getter();
            v39 = v73;
            v74 = type metadata accessor for __DataStorage();
            v75 = *(v74 + 48);
            v76 = *(v74 + 52);
            swift_allocObject();
            v77 = __DataStorage.init(length:)();
            *&v203 = 0x2000000000;
            *(&v203 + 1) = v77 | 0x4000000000000000;
            sub_100017D5C(v72, v39);
            sub_10002E98C(v71, v69);
            v78 = sub_100A7F110(v72, v39, v72, v39, v71, v69, &v203, 32);
            sub_100006654(v71, v69);
            sub_100016590(v72, v39);
            if (v78)
            {
              static os_log_type_t.error.getter();
              if (qword_101694BE0 != -1)
              {
                swift_once();
              }

              sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
              v148 = swift_allocObject();
              *(v148 + 16) = xmmword_101385D80;
              *(v148 + 56) = &type metadata for Int32;
              *(v148 + 64) = &protocol witness table for Int32;
              *(v148 + 32) = v78;
              os_log(_:dso:log:_:_:)();

              v149 = v187;
              CryptoError.init(rawValue:)();
              v79 = type metadata accessor for CryptoError();
              sub_100003E8C(&qword_10169C9B8, &type metadata accessor for CryptoError);
              v150 = swift_allocError();
              v152 = v151;
              v153 = *(v79 - 8);
              v154 = *(v153 + 48);
              if (v154(v149, 1, v79) == 1)
              {
                (*(v153 + 104))(v152, enum case for CryptoError.unspecifiedError(_:), v79);
                if (v154(v187, 1, v79) != 1)
                {
                  sub_10000B3A8(v187, &qword_10169C9A0, &unk_1013D5A40);
                }
              }

              else
              {
                (*(v153 + 32))(v152, v187, v79);
              }

              swift_willThrow();
              v162 = *(&v203 + 1);
              v161 = v203;
              goto LABEL_157;
            }

            v80 = *(&v203 + 1);
            v79 = v203;
            sub_100017D5C(v203, *(&v203 + 1));
            sub_100016590(v79, v80);
            v81 = v80 >> 62;
            v62 = v196;
            if ((v80 >> 62) > 1)
            {
              if (v81 != 2)
              {
                goto LABEL_163;
              }

              v84 = *(v79 + 16);
              v83 = *(v79 + 24);
              v85 = __OFSUB__(v83, v84);
              v82 = v83 - v84;
              if (v85)
              {
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
LABEL_108:
                __break(1u);
LABEL_109:
                __break(1u);
LABEL_110:
                if (v81 != 1)
                {
                  goto LABEL_126;
                }

                LODWORD(v81) = HIDWORD(v79) - v79;
                if (!__OFSUB__(HIDWORD(v79), v79))
                {
                  v47 = v81;
                  goto LABEL_164;
                }

                __break(1u);
LABEL_114:
                if (v81 == 1)
                {
                  LODWORD(v81) = HIDWORD(v80) - v80;
                  if (!__OFSUB__(HIDWORD(v80), v80))
                  {
                    v175 = v81;
                    goto LABEL_166;
                  }

                  __break(1u);
LABEL_118:
                  if (v81 == 1)
                  {
                    LODWORD(v81) = HIDWORD(v36) - v36;
                    if (!__OFSUB__(HIDWORD(v36), v36))
                    {
                      v176 = v81;
                      goto LABEL_170;
                    }

                    __break(1u);
LABEL_122:
                    if (v81 == 1)
                    {
                      LODWORD(v81) = HIDWORD(v72) - v72;
                      if (!__OFSUB__(HIDWORD(v72), v72))
                      {
                        v177 = v81;
                        goto LABEL_168;
                      }

                      __break(1u);
LABEL_126:
                      if (v81 != 2)
                      {
                        v47 = BYTE6(v80);
                        goto LABEL_164;
                      }

                      v137 = *(v79 + 16);
                      v81 = *(v79 + 24);
                      v47 = v81 - v137;
                      if (!__OFSUB__(v81, v137))
                      {
                        goto LABEL_164;
                      }

                      __break(1u);
                      goto LABEL_130;
                    }

LABEL_138:
                    if (v81 != 2)
                    {
                      v177 = BYTE6(v39);
                      goto LABEL_168;
                    }

                    v141 = *(v72 + 16);
                    v140 = *(v72 + 24);
                    v177 = v140 - v141;
                    if (!__OFSUB__(v140, v141))
                    {
LABEL_168:
                      sub_100018350();
                      v79 = swift_allocError();
                      *v171 = 28;
                      *(v171 + 8) = v177;
                      *(v171 + 16) = 0;
                      swift_willThrow();
                      v172 = v72;
                      v173 = v39;
                      goto LABEL_171;
                    }

                    __break(1u);
                    static os_log_type_t.error.getter();
                    if (qword_101694BE0 != -1)
                    {
                      swift_once();
                    }

                    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
                    v142 = swift_allocObject();
                    *(v142 + 16) = xmmword_101385D80;
                    *&v202 = v47;
                    swift_errorRetain();
                    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
                    v39 = String.init<A>(describing:)();
                    v144 = v143;
                    *(v142 + 56) = &type metadata for String;
                    *(v142 + 64) = sub_100008C00();
                    *(v142 + 32) = v39;
                    *(v142 + 40) = v144;
                    os_log(_:dso:log:_:_:)();

                    sub_1001BAF88();
                    v79 = swift_allocError();
                    *v145 = 0;
                    swift_willThrow();

LABEL_144:
                    *&v202 = 0;
                    *(&v202 + 1) = 0xE000000000000000;
                    v80 = &v202;
                    _StringGuts.grow(_:)(35);
                    v146._object = 0x800000010134CB30;
                    v146._countAndFlagsBits = 0xD000000000000021;
                    String.append(_:)(v146);
                    v201 = v79;
                    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
                    _print_unlocked<A, B>(_:_:)();
                    v179 = 0;
                    for (i = 256; ; i = 458)
                    {
                      v178 = i;
                      _assertionFailure(_:_:file:line:flags:)();
                      __break(1u);
LABEL_163:
                      v47 = 0;
LABEL_164:
                      sub_100018350();
                      v167 = swift_allocError();
                      *v168 = 32;
                      *(v168 + 8) = v47;
                      *(v168 + 16) = 0;
                      v150 = v167;
                      swift_willThrow();
                      v161 = v79;
                      v162 = v80;
LABEL_157:
                      sub_100016590(v161, v162);
                      sub_100016590(v72, v39);
                      *&v203 = 0;
                      *(&v203 + 1) = 0xE000000000000000;
                      v80 = &v203;
                      _StringGuts.grow(_:)(35);
                      v163._object = 0x8000000101354990;
                      v163._countAndFlagsBits = 0xD000000000000021;
                      String.append(_:)(v163);
                      *&v202 = v150;
LABEL_161:
                      sub_1000BC4D4(&qword_101696960, &unk_10138B220);
                      _print_unlocked<A, B>(_:_:)();
                      v179 = 0;
                    }
                  }

LABEL_134:
                  if (v81 == 2)
                  {
                    v139 = *(v36 + 2);
                    v81 = *(v36 + 3);
                    v176 = v81 - v139;
                    if (__OFSUB__(v81, v139))
                    {
                      __break(1u);
                      goto LABEL_138;
                    }
                  }

                  else
                  {
                    v176 = BYTE6(v67);
                  }

LABEL_170:
                  sub_100018350();
                  v79 = swift_allocError();
                  *v174 = 28;
                  *(v174 + 8) = v176;
                  *(v174 + 16) = 0;
                  swift_willThrow();
                  v172 = v36;
                  v173 = v67;
LABEL_171:
                  sub_100016590(v172, v173);
                  goto LABEL_144;
                }

LABEL_130:
                if (v81 == 2)
                {
                  v81 = *(v80 + 16);
                  v138 = *(v80 + 24);
                  v175 = v138 - v81;
                  if (__OFSUB__(v138, v81))
                  {
                    __break(1u);
                    goto LABEL_134;
                  }
                }

                else
                {
                  v175 = BYTE6(v72);
                }

LABEL_166:
                sub_100018350();
                v169 = swift_allocError();
                *v170 = 32;
                *(v170 + 8) = v175;
                *(v170 + 16) = 0;
                v79 = v169;
                swift_willThrow();
                v164 = v80;
                v165 = v72;
LABEL_160:
                sub_100016590(v164, v165);
                sub_100016590(v36, v67);
                *&v203 = 0;
                *(&v203 + 1) = 0xE000000000000000;
                v80 = &v203;
                _StringGuts.grow(_:)(35);
                v166._object = 0x8000000101354990;
                v166._countAndFlagsBits = 0xD000000000000021;
                String.append(_:)(v166);
                *&v202 = v79;
                goto LABEL_161;
              }
            }

            else if (v81)
            {
              LODWORD(v82) = HIDWORD(v79) - v79;
              if (__OFSUB__(HIDWORD(v79), v79))
              {
                goto LABEL_104;
              }

              v82 = v82;
            }

            else
            {
              v82 = BYTE6(v80);
            }

            if (v82 != 32)
            {
              goto LABEL_110;
            }

            sub_100016590(v72, v39);
            v86 = *v198;
            v205 = &type metadata for SecondaryIndex;
            v206 = sub_10022A4D4();
            *&v203 = v86;
            v87 = sub_100A7A194(v68[2], v68[3]);
            v88 = sub_100A7829C(v87, 0);
            v65 = v193;
            v72 = v88;
            v39 = v89;
            CCECCryptorRelease();
            v81 = v39 >> 62;
            if ((v39 >> 62) > 1)
            {
              v67 = v195;
              if (v81 != 2)
              {
                v177 = 0;
                goto LABEL_168;
              }

              v92 = *(v72 + 16);
              v91 = *(v72 + 24);
              v85 = __OFSUB__(v91, v92);
              v90 = v91 - v92;
              if (v85)
              {
                goto LABEL_106;
              }
            }

            else
            {
              v67 = v195;
              if (v81)
              {
                LODWORD(v90) = HIDWORD(v72) - v72;
                if (__OFSUB__(HIDWORD(v72), v72))
                {
                  goto LABEL_107;
                }

                v90 = v90;
              }

              else
              {
                v90 = BYTE6(v39);
              }
            }

            if (v90 != 28)
            {
              goto LABEL_122;
            }

            sub_10002EA98(6, v72, v39, &v202);
            sub_100721D04(v67, type metadata accessor for TimeBasedKey);
            v93 = *(v200 + 20);
            *v36 = v202;
            *(v36 + 2) = v79;
            *(v36 + 3) = v80;
            sub_10000A748(&v203, (v36 + 32));
            v94 = *(v62 + 28);
            v95 = type metadata accessor for DateInterval();
            v66 = v198;
            v96 = v198 + v93;
            v67 = v195;
            (*(*(v95 - 8) + 16))(&v36[v94], v96, v95);
            sub_100721D04(v66, type metadata accessor for TimeBasedKey);
            v70 = 0;
            v64 = v197;
            v61 = v185;
          }

          (*v184)(v36, v70, 1, v62);
          if ((*v183)(v36, 1, v62) == 1)
          {
            sub_10000B3A8(v36, &qword_1016A5A70, &unk_1013D6860);
          }

          else
          {
            sub_10002AB74(v36, v194, _s18ConnectionKeyGroupVMa);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v65 = sub_100A5BE18(0, v65[2] + 1, 1, v65);
            }

            v98 = v65[2];
            v97 = v65[3];
            if (v98 >= v97 >> 1)
            {
              v65 = sub_100A5BE18(v97 > 1, v98 + 1, 1, v65);
            }

            v65[2] = v98 + 1;
            sub_10002AB74(v194, v65 + ((*(v64 + 80) + 32) & ~*(v64 + 80)) + *(v64 + 72) * v98, _s18ConnectionKeyGroupVMa);
            v66 = v198;
          }

          if (v192 == ++v63)
          {
            goto LABEL_85;
          }
        }

        __break(1u);
LABEL_102:
        __break(1u);
        swift_once();
        sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
        v50 = swift_allocObject();
        *(v50 + 16) = xmmword_10138BBE0;
        v51 = UUID.uuidString.getter();
        v53 = v52;
        *(v50 + 56) = &type metadata for String;
        v54 = sub_100008C00();
        *(v50 + 64) = v54;
        *(v50 + 32) = v51;
        *(v50 + 40) = v53;
        swift_getErrorValue();
        v55 = Error.localizedDescription.getter();
        *(v50 + 96) = &type metadata for String;
        *(v50 + 104) = v54;
        *(v50 + 72) = v55;
        *(v50 + 80) = v56;
        os_log(_:dso:log:_:_:)();

        goto LABEL_3;
      }

      v65 = _swiftEmptyArrayStorage;
      v64 = v197;
LABEL_85:
      if (v65[2])
      {
        v101 = v190;
        sub_100721C9C(v65 + ((*(v64 + 80) + 32) & ~*(v64 + 80)), v190, _s18ConnectionKeyGroupVMa);

        v129 = v61;
        v130 = v181;
        v131 = 0;
LABEL_92:
        sub_100359088(v129, v130, v131);
        (*(v64 + 56))(v101, 0, 1, v62);
LABEL_96:
        v132 = v189;
        v100 = v182;
        goto LABEL_97;
      }

      sub_100359088(v61, v181, 0);
    }

    v101 = v190;
    (*(v64 + 56))(v190, 1, 1, v62);
    goto LABEL_96;
  }

  __chkstk_darwin(v49);
  *(&v180 - 4) = v191;
  *(&v180 - 3) = &v207;
  v178 = a3;
  v58 = sub_1005C7AE4(sub_1007204A0, (&v180 - 6), v182);

LABEL_100:
  sub_100007BAC(&v207);
  return v58;
}

uint64_t sub_1006BBF14@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v181 = a1;
  v185 = a5;
  v9 = sub_1000BC4D4(&qword_10169C9A0, &unk_1013D5A40);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v180 = &v177 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v179 = &v177 - v13;
  v14 = _s18ConnectionKeyGroupVMa();
  v15 = *(v14 - 8);
  v193 = v14;
  v194 = v15;
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v14);
  v182 = (&v177 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = __chkstk_darwin(v17);
  v191 = &v177 - v20;
  __chkstk_darwin(v19);
  v190 = &v177 - v21;
  v22 = type metadata accessor for TimeBasedKey();
  v199 = *(v22 - 8);
  v23 = *(v199 + 64);
  v24 = __chkstk_darwin(v22);
  v192 = &v177 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v28 = &v177 - v27;
  v29 = __chkstk_darwin(v26);
  v196 = &v177 - v30;
  __chkstk_darwin(v29);
  v187 = &v177 - v31;
  v32 = sub_1000BC4D4(&qword_1016A5A70, &unk_1013D6860);
  v33 = *(*(v32 - 8) + 64);
  v34 = __chkstk_darwin(v32 - 8);
  v184 = &v177 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __chkstk_darwin(v34);
  v38 = &v177 - v37;
  v39 = __chkstk_darwin(v36);
  v41 = &v177 - v40;
  __chkstk_darwin(v39);
  v43 = &v177 - v42;
  sub_10001F280(a3, &v202);
  v44 = swift_allocObject();
  *(v44 + 16) = a2;
  sub_10000A748(&v202, v44 + 24);
  *(v44 + 64) = a4;

  unsafeFromAsyncTask<A>(_:)();

  v45 = v202;
  v183 = v43;
  if (v203 <= 1u)
  {
    v195 = v22;
    v178 = *(&v202 + 1);
    v198 = v202;
    if (v203)
    {
      v46 = v193;
      v192 = *(v202 + 16);
      if (v192)
      {
        v28 = 0;
        v191 = v202 + ((*(v199 + 80) + 32) & ~*(v199 + 80));
        v189 = (v194 + 56);
        v38 = _swiftEmptyArrayStorage;
        v188 = (v194 + 48);
        a2 = v196;
        v48 = v187;
        while (1)
        {
          v49 = *(v45 + 16);
          if (v28 >= v49)
          {
            goto LABEL_99;
          }

          v197 = v38;
          sub_100721C9C(v191 + *(v199 + 72) * v28, v48, type metadata accessor for TimeBasedKey);
          sub_100721C9C(v48, a2, type metadata accessor for TimeBasedKey);
          v79 = v22;
          v80 = (a2 + *(v22 + 24));
          v22 = v80[1];
          if (v22 >> 60 == 15)
          {
            sub_100721D04(v48, type metadata accessor for TimeBasedKey);
            sub_100721D04(a2, type metadata accessor for TimeBasedKey);
            v81 = 1;
            v22 = v79;
          }

          else
          {
            v82 = *v80;
            v38 = String.utf8Data.getter();
            v46 = v83;
            v84 = type metadata accessor for __DataStorage();
            v85 = *(v84 + 48);
            v86 = *(v84 + 52);
            swift_allocObject();
            v87 = __DataStorage.init(length:)();
            *&v202 = 0x2000000000;
            *(&v202 + 1) = v87 | 0x4000000000000000;
            sub_100017D5C(v38, v46);
            sub_10002E98C(v82, v22);
            v5 = v200;
            v88 = sub_100A7F110(v38, v46, v38, v46, v82, v22, &v202, 32);
            v200 = v5;
            if (v5)
            {
              sub_100006654(v82, v22);
              sub_100016590(v38, v46);
              goto LABEL_162;
            }

            v89 = v88;
            sub_100006654(v82, v22);
            sub_100016590(v38, v46);
            if (v89)
            {
              static os_log_type_t.error.getter();
              if (qword_101694BE0 != -1)
              {
                swift_once();
              }

              sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
              v154 = swift_allocObject();
              *(v154 + 16) = xmmword_101385D80;
              *(v154 + 56) = &type metadata for Int32;
              *(v154 + 64) = &protocol witness table for Int32;
              *(v154 + 32) = v89;
              os_log(_:dso:log:_:_:)();

              v48 = v179;
              CryptoError.init(rawValue:)();
              v155 = type metadata accessor for CryptoError();
              sub_100003E8C(&qword_10169C9B8, &type metadata accessor for CryptoError);
              v200 = swift_allocError();
              v157 = v156;
              v158 = *(v155 - 8);
              v28 = *(v158 + 48);
              if ((v28)(v48, 1, v155) == 1)
              {
                (*(v158 + 104))(v157, enum case for CryptoError.unspecifiedError(_:), v155);
                if ((v28)(v179, 1, v155) != 1)
                {
                  sub_10000B3A8(v179, &qword_10169C9A0, &unk_1013D5A40);
                }
              }

              else
              {
                (*(v158 + 32))(v157, v179, v155);
              }

              swift_willThrow();
LABEL_162:
              v163 = *(&v202 + 1);
              v162 = v202;
LABEL_163:
              sub_100016590(v162, v163);
              v161 = v38;
              goto LABEL_164;
            }

            v48 = *(&v202 + 1);
            a2 = v202;
            sub_100017D5C(v202, *(&v202 + 1));
            sub_100016590(a2, v48);
            v49 = v48 >> 62;
            if ((v48 >> 62) > 1)
            {
              if (v49 != 2)
              {
                v174 = 0;
                goto LABEL_169;
              }

              v92 = *(a2 + 16);
              v91 = *(a2 + 24);
              v62 = __OFSUB__(v91, v92);
              v90 = v91 - v92;
              if (v62)
              {
                goto LABEL_101;
              }
            }

            else if (v49)
            {
              LODWORD(v90) = HIDWORD(a2) - a2;
              if (__OFSUB__(HIDWORD(a2), a2))
              {
                goto LABEL_103;
              }

              v90 = v90;
            }

            else
            {
              v90 = BYTE6(v48);
            }

            if (v90 != 32)
            {
              goto LABEL_112;
            }

            sub_100016590(v38, v46);
            v93 = *v196;
            v204 = &type metadata for PrimaryIndex;
            v205 = sub_10002A2B8();
            *&v202 = v93;
            v5 = v200;
            v94 = sub_100A7A194(v80[2], v80[3]);
            if (v5)
            {
              goto LABEL_140;
            }

            v95 = sub_100A7829C(v94, 0);
            v200 = 0;
            v46 = v193;
            v22 = v95;
            v38 = v96;
            CCECCryptorRelease();
            v49 = v38 >> 62;
            if ((v38 >> 62) > 1)
            {
              if (v49 != 2)
              {
                v175 = 0;
                goto LABEL_173;
              }

              v99 = *(v22 + 16);
              v98 = *(v22 + 24);
              v62 = __OFSUB__(v98, v99);
              v97 = v98 - v99;
              if (v62)
              {
                goto LABEL_106;
              }
            }

            else if (v49)
            {
              LODWORD(v97) = HIDWORD(v22) - v22;
              if (__OFSUB__(HIDWORD(v22), v22))
              {
                goto LABEL_107;
              }

              v97 = v97;
            }

            else
            {
              v97 = BYTE6(v38);
            }

            if (v97 != 28)
            {
              goto LABEL_116;
            }

            sub_10002EA98(6, v22, v38, &v201);
            v100 = v187;
            sub_100721D04(v187, type metadata accessor for TimeBasedKey);
            v22 = v195;
            v101 = *(v195 + 20);
            *v41 = v201;
            *(v41 + 16) = a2;
            *(v41 + 24) = v48;
            v48 = v100;
            sub_10000A748(&v202, v41 + 32);
            v102 = *(v46 + 28);
            v103 = type metadata accessor for DateInterval();
            v104 = v41 + v102;
            a2 = v196;
            (*(*(v103 - 8) + 16))(v104, &v196[v101], v103);
            sub_100721D04(a2, type metadata accessor for TimeBasedKey);
            v81 = 0;
          }

          (*v189)(v41, v81, 1, v46);
          v105 = (*v188)(v41, 1, v46);
          v38 = v197;
          v45 = v198;
          if (v105 == 1)
          {
            sub_10000B3A8(v41, &qword_1016A5A70, &unk_1013D6860);
          }

          else
          {
            sub_10002AB74(v41, v190, _s18ConnectionKeyGroupVMa);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v38 = sub_100A5BE18(0, *(v38 + 16) + 1, 1, v38);
            }

            v107 = *(v38 + 16);
            v106 = *(v38 + 24);
            if (v107 >= v106 >> 1)
            {
              v38 = sub_100A5BE18(v106 > 1, v107 + 1, 1, v38);
            }

            *(v38 + 16) = v107 + 1;
            sub_10002AB74(v190, v38 + ((*(v194 + 80) + 32) & ~*(v194 + 80)) + *(v194 + 72) * v107, _s18ConnectionKeyGroupVMa);
            a2 = v196;
          }

          if (v192 == ++v28)
          {
            goto LABEL_86;
          }
        }
      }

      v38 = _swiftEmptyArrayStorage;
LABEL_86:
      if (*(v38 + 16))
      {
        v75 = v194;
        v77 = v183;
        sub_100721C9C(v38 + ((*(v194 + 80) + 32) & ~*(v194 + 80)), v183, _s18ConnectionKeyGroupVMa);

        v108 = v45;
        v109 = v178;
        v110 = 1;
        goto LABEL_88;
      }

      v111 = v45;
      v112 = v178;
      v113 = 1;
    }

    else
    {
      v46 = v193;
      v196 = *(v202 + 16);
      if (v196)
      {
        v47 = 0;
        v190 = v202 + ((*(v199 + 80) + 32) & ~*(v199 + 80));
        v189 = (v194 + 56);
        v41 = _swiftEmptyArrayStorage;
        v188 = (v194 + 48);
        v48 = v192;
        v186 = v28;
        while (1)
        {
          v49 = *(v45 + 16);
          if (v47 >= v49)
          {
            break;
          }

          v197 = v41;
          sub_100721C9C(v190 + *(v199 + 72) * v47, v28, type metadata accessor for TimeBasedKey);
          sub_100721C9C(v28, v48, type metadata accessor for TimeBasedKey);
          v22 = v48 + *(v22 + 24);
          v41 = *(v22 + 8);
          if (v41 >> 60 == 15)
          {
            a2 = type metadata accessor for TimeBasedKey;
            sub_100721D04(v28, type metadata accessor for TimeBasedKey);
            sub_100721D04(v48, type metadata accessor for TimeBasedKey);
            v50 = 1;
            v22 = v195;
          }

          else
          {
            v51 = *v22;
            v28 = String.utf8Data.getter();
            v46 = v52;
            v53 = type metadata accessor for __DataStorage();
            v54 = *(v53 + 48);
            v55 = *(v53 + 52);
            swift_allocObject();
            v56 = __DataStorage.init(length:)();
            *&v202 = 0x2000000000;
            *(&v202 + 1) = v56 | 0x4000000000000000;
            sub_100017D5C(v28, v46);
            sub_10002E98C(v51, v41);
            v5 = v200;
            v57 = sub_100A7F110(v28, v46, v28, v46, v51, v41, &v202, 32);
            v200 = v5;
            if (v5)
            {
              sub_100006654(v51, v41);
              sub_100016590(v28, v46);
LABEL_158:
              v160 = *(&v202 + 1);
              v159 = v202;
              goto LABEL_159;
            }

            v58 = v57;
            sub_100006654(v51, v41);
            sub_100016590(v28, v46);
            if (v58)
            {
              static os_log_type_t.error.getter();
              if (qword_101694BE0 != -1)
              {
                swift_once();
              }

              sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
              v148 = swift_allocObject();
              *(v148 + 16) = xmmword_101385D80;
              *(v148 + 56) = &type metadata for Int32;
              *(v148 + 64) = &protocol witness table for Int32;
              *(v148 + 32) = v58;
              os_log(_:dso:log:_:_:)();

              v149 = v180;
              CryptoError.init(rawValue:)();
              v150 = type metadata accessor for CryptoError();
              sub_100003E8C(&qword_10169C9B8, &type metadata accessor for CryptoError);
              v200 = swift_allocError();
              v152 = v151;
              v153 = *(v150 - 8);
              v48 = *(v153 + 48);
              if ((v48)(v149, 1, v150) == 1)
              {
                (*(v153 + 104))(v152, enum case for CryptoError.unspecifiedError(_:), v150);
                if ((v48)(v180, 1, v150) != 1)
                {
                  sub_10000B3A8(v180, &qword_10169C9A0, &unk_1013D5A40);
                }
              }

              else
              {
                (*(v153 + 32))(v152, v180, v150);
              }

              swift_willThrow();
              goto LABEL_158;
            }

            v48 = *(&v202 + 1);
            a2 = v202;
            sub_100017D5C(v202, *(&v202 + 1));
            sub_100016590(a2, v48);
            v49 = v48 >> 62;
            if ((v48 >> 62) > 1)
            {
              if (v49 != 2)
              {
                goto LABEL_166;
              }

              v61 = *(a2 + 16);
              v60 = *(a2 + 24);
              v62 = __OFSUB__(v60, v61);
              v59 = v60 - v61;
              if (v62)
              {
                goto LABEL_100;
              }
            }

            else if (v49)
            {
              LODWORD(v59) = HIDWORD(a2) - a2;
              if (__OFSUB__(HIDWORD(a2), a2))
              {
                goto LABEL_102;
              }

              v59 = v59;
            }

            else
            {
              v59 = BYTE6(v48);
            }

            if (v59 != 32)
            {
              goto LABEL_108;
            }

            sub_100016590(v28, v46);
            v63 = *v192;
            v204 = &type metadata for PrimaryIndex;
            v205 = sub_10002A2B8();
            *&v202 = v63;
            v5 = v200;
            v64 = sub_100A7A194(*(v22 + 16), *(v22 + 24));
            if (v5)
            {
              goto LABEL_140;
            }

            v65 = sub_100A7829C(v64, 0);
            v200 = 0;
            v46 = v193;
            v22 = v195;
            v28 = v65;
            v41 = v66;
            CCECCryptorRelease();
            v49 = v41 >> 62;
            if ((v41 >> 62) > 1)
            {
              if (v49 != 2)
              {
                v176 = 0;
                goto LABEL_171;
              }

              v69 = *(v28 + 16);
              v68 = *(v28 + 24);
              v62 = __OFSUB__(v68, v69);
              v67 = v68 - v69;
              if (v62)
              {
                goto LABEL_104;
              }
            }

            else if (v49)
            {
              LODWORD(v67) = HIDWORD(v28) - v28;
              if (__OFSUB__(HIDWORD(v28), v28))
              {
                goto LABEL_105;
              }

              v67 = v67;
            }

            else
            {
              v67 = BYTE6(v41);
            }

            if (v67 != 28)
            {
              goto LABEL_120;
            }

            sub_10002EA98(6, v28, v41, &v201);
            v28 = v186;
            sub_100721D04(v186, type metadata accessor for TimeBasedKey);
            v70 = *(v22 + 20);
            *v38 = v201;
            *(v38 + 16) = a2;
            *(v38 + 24) = v48;
            sub_10000A748(&v202, v38 + 32);
            a2 = *(v46 + 28);
            v71 = type metadata accessor for DateInterval();
            v48 = v192;
            (*(*(v71 - 8) + 16))(v38 + a2, &v192[v70], v71);
            sub_100721D04(v48, type metadata accessor for TimeBasedKey);
            v50 = 0;
            v45 = v198;
          }

          (*v189)(v38, v50, 1, v46);
          v72 = (*v188)(v38, 1, v46);
          v41 = v197;
          if (v72 == 1)
          {
            sub_10000B3A8(v38, &qword_1016A5A70, &unk_1013D6860);
          }

          else
          {
            sub_10002AB74(v38, v191, _s18ConnectionKeyGroupVMa);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v41 = sub_100A5BE18(0, *(v41 + 16) + 1, 1, v41);
            }

            v74 = *(v41 + 16);
            v73 = *(v41 + 24);
            a2 = v74 + 1;
            if (v74 >= v73 >> 1)
            {
              v41 = sub_100A5BE18(v73 > 1, v74 + 1, 1, v41);
            }

            *(v41 + 16) = a2;
            sub_10002AB74(v191, v41 + ((*(v194 + 80) + 32) & ~*(v194 + 80)) + *(v194 + 72) * v74, _s18ConnectionKeyGroupVMa);
            v45 = v198;
          }

          if (v196 == ++v47)
          {
            goto LABEL_82;
          }
        }

        __break(1u);
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
LABEL_108:
        if (v49 == 1)
        {
          LODWORD(v49) = HIDWORD(a2) - a2;
          if (!__OFSUB__(HIDWORD(a2), a2))
          {
            v173 = v49;
            goto LABEL_167;
          }

          __break(1u);
LABEL_112:
          if (v49 != 1)
          {
            goto LABEL_128;
          }

          LODWORD(v49) = HIDWORD(a2) - a2;
          if (!__OFSUB__(HIDWORD(a2), a2))
          {
            v174 = v49;
            goto LABEL_169;
          }

          __break(1u);
LABEL_116:
          if (v49 != 1)
          {
LABEL_132:
            if (v49 != 2)
            {
              v175 = BYTE6(v38);
LABEL_173:
              sub_100018350();
              v145 = swift_allocError();
              *v172 = 28;
              *(v172 + 8) = v175;
              *(v172 + 16) = 0;
              swift_willThrow();
              v170 = v22;
              v171 = v38;
              goto LABEL_174;
            }

            v139 = *(v22 + 16);
            v49 = *(v22 + 24);
            v175 = v49 - v139;
            if (!__OFSUB__(v49, v139))
            {
              goto LABEL_173;
            }

            __break(1u);
LABEL_136:
            if (v49 == 2)
            {
              v141 = *(v28 + 16);
              v140 = *(v28 + 24);
              v176 = v140 - v141;
              if (__OFSUB__(v140, v141))
              {
                __break(1u);
LABEL_140:
                v200 = v5;
                static os_log_type_t.error.getter();
                if (qword_101694BE0 != -1)
                {
                  swift_once();
                }

                sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
                v142 = swift_allocObject();
                *(v142 + 16) = xmmword_101385D80;
                *&v201 = v200;
                swift_errorRetain();
                sub_1000BC4D4(&qword_101696960, &unk_10138B220);
                v143 = String.init<A>(describing:)();
                v28 = v144;
                *(v142 + 56) = &type metadata for String;
                *(v142 + 64) = sub_100008C00();
                *(v142 + 32) = v143;
                *(v142 + 40) = v28;
                os_log(_:dso:log:_:_:)();

                sub_1001BAF88();
                v145 = swift_allocError();
                *v146 = 0;
                swift_willThrow();

LABEL_143:
                *&v201 = 0;
                *(&v201 + 1) = 0xE000000000000000;
                a2 = &v201;
                _StringGuts.grow(_:)(35);
                v147._object = 0x800000010134CB30;
                v147._countAndFlagsBits = 0xD000000000000021;
                String.append(_:)(v147);
                v206 = v145;
                sub_1000BC4D4(&qword_101696960, &unk_10138B220);
                _print_unlocked<A, B>(_:_:)();
                while (1)
                {
                  _assertionFailure(_:_:file:line:flags:)();
                  __break(1u);
LABEL_166:
                  v173 = 0;
LABEL_167:
                  sub_100018350();
                  v165 = swift_allocError();
                  *v166 = 32;
                  *(v166 + 8) = v173;
                  *(v166 + 16) = 0;
                  v200 = v165;
                  swift_willThrow();
                  v159 = a2;
                  v160 = v48;
LABEL_159:
                  sub_100016590(v159, v160);
                  v161 = v28;
LABEL_164:
                  sub_100016590(v161, v46);
                  *&v202 = 0;
                  *(&v202 + 1) = 0xE000000000000000;
                  a2 = &v202;
                  _StringGuts.grow(_:)(35);
                  v164._object = 0x8000000101354990;
                  v164._countAndFlagsBits = 0xD000000000000021;
                  String.append(_:)(v164);
                  *&v201 = v200;
                  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
                  _print_unlocked<A, B>(_:_:)();
                }
              }
            }

            else
            {
              v176 = BYTE6(v41);
            }

LABEL_171:
            sub_100018350();
            v145 = swift_allocError();
            *v169 = 28;
            *(v169 + 8) = v176;
            *(v169 + 16) = 0;
            swift_willThrow();
            v170 = v28;
            v171 = v41;
LABEL_174:
            sub_100016590(v170, v171);
            goto LABEL_143;
          }

          LODWORD(v49) = HIDWORD(v22) - v22;
          if (!__OFSUB__(HIDWORD(v22), v22))
          {
            v175 = v49;
            goto LABEL_173;
          }

          __break(1u);
LABEL_120:
          if (v49 != 1)
          {
            goto LABEL_136;
          }

          LODWORD(v49) = HIDWORD(v28) - v28;
          if (!__OFSUB__(HIDWORD(v28), v28))
          {
            v176 = v49;
            goto LABEL_171;
          }

          __break(1u);
        }

        if (v49 != 2)
        {
          v173 = BYTE6(v48);
          goto LABEL_167;
        }

        v137 = *(a2 + 16);
        v49 = *(a2 + 24);
        v173 = v49 - v137;
        if (!__OFSUB__(v49, v137))
        {
          goto LABEL_167;
        }

        __break(1u);
LABEL_128:
        if (v49 != 2)
        {
          v174 = BYTE6(v48);
LABEL_169:
          sub_100018350();
          v167 = swift_allocError();
          *v168 = 32;
          *(v168 + 8) = v174;
          *(v168 + 16) = 0;
          v200 = v167;
          swift_willThrow();
          v162 = a2;
          v163 = v48;
          goto LABEL_163;
        }

        v138 = *(a2 + 16);
        v49 = *(a2 + 24);
        v174 = v49 - v138;
        if (!__OFSUB__(v49, v138))
        {
          goto LABEL_169;
        }

        __break(1u);
        goto LABEL_132;
      }

      v41 = _swiftEmptyArrayStorage;
LABEL_82:
      if (*(v41 + 16))
      {
        v75 = v194;
        v77 = v183;
        sub_100721C9C(v41 + ((*(v194 + 80) + 32) & ~*(v194 + 80)), v183, _s18ConnectionKeyGroupVMa);

        v108 = v45;
        v109 = v178;
        v110 = 0;
LABEL_88:
        sub_100359088(v108, v109, v110);
        (*(v75 + 56))(v77, 0, 1, v46);
        goto LABEL_93;
      }

      v111 = v45;
      v112 = v178;
      v113 = 0;
    }

    sub_100359088(v111, v112, v113);
    v75 = v194;
    v77 = v183;
    (*(v194 + 56))(v183, 1, 1, v46);
    goto LABEL_93;
  }

  if (v203 == 2)
  {
    v46 = v193;
    v75 = v194;
    v76 = v184;
    v77 = v43;
    if (*(v202 + 16))
    {
      v78 = *(&v202 + 1);
      sub_100721C9C(v202 + ((*(v194 + 80) + 32) & ~*(v194 + 80)), v77, _s18ConnectionKeyGroupVMa);
      sub_100359088(v45, v78, 2u);
      (*(v75 + 56))(v77, 0, 1, v46);
    }

    else
    {
      sub_100359088(v202, *(&v202 + 1), 2u);
      (*(v75 + 56))(v43, 1, 1, v46);
    }

    goto LABEL_94;
  }

  v46 = v193;
  v75 = v194;
  v77 = v43;
  (*(v194 + 56))(v43, 1, 1, v193);
LABEL_93:
  v76 = v184;
LABEL_94:
  sub_1000D2A70(v77, v76, &qword_1016A5A70, &unk_1013D6860);
  if ((*(v75 + 48))(v76, 1, v46) == 1)
  {
    sub_10000B3A8(v77, &qword_1016A5A70, &unk_1013D6860);
    result = sub_10000B3A8(v76, &qword_1016A5A70, &unk_1013D6860);
    v115 = 0;
  }

  else
  {
    v116 = v46;
    v117 = v182;
    sub_10002AB74(v76, v182, _s18ConnectionKeyGroupVMa);
    v118 = *(v116 + 28);
    v119 = *v117;
    v120 = v117[1];
    v121 = objc_allocWithZone(SPBeaconingKey);
    sub_100017D5C(v119, v120);
    isa = DateInterval._bridgeToObjectiveC()().super.isa;
    v123 = Data._bridgeToObjectiveC()().super.isa;
    v124 = [v121 initWithDateInterval:isa key:v123];

    sub_100016590(v119, v120);
    v125 = v181;
    v126 = v181[8];
    sub_1000035D0(v181 + 4, v181[7]);
    v127 = *(v126 + 56);
    dispatch thunk of RawRepresentable.rawValue.getter();
    v128 = v202;
    v129 = v125[2];
    v130 = v125[3];
    v131 = objc_allocWithZone(NSNumber);
    sub_100017D5C(v129, v130);
    v132 = [v131 initWithUnsignedLongLong:v128];
    v133 = objc_allocWithZone(SPCommandKey);
    v134 = Data._bridgeToObjectiveC()().super.isa;
    v135 = Data._bridgeToObjectiveC()().super.isa;
    v136 = Data._bridgeToObjectiveC()().super.isa;
    v115 = [v133 initWithBeaconingKey:v124 commandKey:v134 connectionToken:v135 nearbyToken:v136 primaryIndex:v132 secondaryIndex:0 type:0];

    sub_100016590(v129, v130);
    sub_10000B3A8(v183, &qword_1016A5A70, &unk_1013D6860);
    result = sub_100721D04(v117, _s18ConnectionKeyGroupVMa);
  }

  *v185 = v115;
  return result;
}

uint64_t sub_1006BD9C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  return _swift_task_switch(sub_1006BD9E4, 0, 0);
}

uint64_t sub_1006BD9E4()
{
  v1 = *(*(v0[4] + 280) + OBJC_IVAR____TtC12searchpartyd11BeaconStore_beaconKeyManagerLock);
  type metadata accessor for BeaconKeyManager(0);
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  v0[7] = v0[2];
  v2 = swift_task_alloc();
  v0[8] = v2;
  *v2 = v0;
  v2[1] = sub_1006BDAEC;
  v4 = v0[5];
  v3 = v0[6];

  return sub_100731BF4(v4, v3, v3, 0, 0, 0);
}

uint64_t sub_1006BDAEC(uint64_t a1, uint64_t a2, char a3)
{
  v8 = *v4;
  v9 = *(*v4 + 64);
  v10 = *v4;
  *(*v4 + 72) = v3;

  if (v3)
  {
    v11 = sub_100721E98;
  }

  else
  {
    v12 = *(v8 + 56);

    *(v8 + 96) = a3;
    *(v8 + 80) = a2;
    *(v8 + 88) = a1;
    v11 = sub_100721DC8;
  }

  return _swift_task_switch(v11, 0, 0);
}

uint64_t sub_1006BDC30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  return _swift_task_switch(sub_1006BDC54, 0, 0);
}

uint64_t sub_1006BDC54()
{
  v1 = *(*(v0[4] + 280) + OBJC_IVAR____TtC12searchpartyd11BeaconStore_beaconKeyManagerLock);
  type metadata accessor for BeaconKeyManager(0);
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  v0[7] = v0[2];
  v2 = swift_task_alloc();
  v0[8] = v2;
  *v2 = v0;
  v2[1] = sub_1006BDAEC;
  v4 = v0[5];
  v3 = v0[6];

  return sub_100731BF4(v4, v3, v3, 1, 0, 0);
}

uint64_t sub_1006BDD5C@<X0>(void *a1@<X0>, void *a2@<X2>, uint64_t *a3@<X3>, void *a4@<X8>)
{
  v5 = v4;
  v43 = a3;
  v48 = a4;
  v42 = type metadata accessor for Date();
  v8 = *(v42 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v42);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DateInterval();
  v46 = *(v12 - 8);
  v47 = v12;
  v13 = *(v46 + 64);
  __chkstk_darwin(v12);
  v49 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[8];
  sub_1000035D0(a1 + 4, a1[7]);
  v16 = *(v15 + 56);
  dispatch thunk of RawRepresentable.rawValue.getter();
  v17 = v50;
  if (v50)
  {
    v18 = v50 / 0x60 + 1;
  }

  else
  {
    v18 = 0;
  }

  v45 = v18;
  if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    if (qword_101694940 != -1)
    {
      swift_once();
    }

    v21 = *(qword_10177B348 + 40);
    OS_dispatch_queue.sync<A>(execute:)();
    v44 = v4;
    v20 = sub_101073C10(v50);
    goto LABEL_10;
  }

  if (qword_101694940 != -1)
  {
    goto LABEL_13;
  }

  while (1)
  {
    v19 = *(qword_10177B348 + 40);
    OS_dispatch_queue.sync<A>(execute:)();
    v44 = v5;
    v20 = sub_101073524(v50);
LABEL_10:
    v22 = v20;

    v5 = a2[3];
    v23 = a2[4];
    sub_1000035D0(a2, v5);
    (*(v23 + 192))(v5, v23);
    if ((v22 & 0x8000000000000000) == 0)
    {
      break;
    }

    __break(1u);
LABEL_13:
    swift_once();
  }

  v24 = v45;
  sub_1008849E8(v11, v45, v22, v49);
  (*(v8 + 8))(v11, v42);
  v25 = *v43;
  v26 = v43[1];
  v27 = objc_allocWithZone(SPBeaconingKey);
  sub_100017D5C(v25, v26);
  isa = DateInterval._bridgeToObjectiveC()().super.isa;
  v29 = Data._bridgeToObjectiveC()().super.isa;
  v30 = [v27 initWithDateInterval:isa key:v29];

  sub_100016590(v25, v26);
  v31 = a1[2];
  v32 = a1[3];
  v33 = objc_allocWithZone(NSNumber);
  sub_100017D5C(v31, v32);
  v34 = [v33 initWithUnsignedLongLong:v17];
  v35 = [objc_allocWithZone(NSNumber) initWithUnsignedLongLong:v24];
  v36 = objc_allocWithZone(SPCommandKey);
  v37 = Data._bridgeToObjectiveC()().super.isa;
  v38 = Data._bridgeToObjectiveC()().super.isa;
  v39 = Data._bridgeToObjectiveC()().super.isa;
  v40 = [v36 initWithBeaconingKey:v30 commandKey:v37 connectionToken:v38 nearbyToken:v39 primaryIndex:v34 secondaryIndex:v35 type:1];

  sub_100016590(v31, v32);
  result = (*(v46 + 8))(v49, v47);
  *v48 = v40;
  return result;
}

uint64_t sub_1006BE1F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v48 = a2;
  v49 = a3;
  v50 = a4;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v55 = *(v5 - 8);
  v56 = v5;
  v6 = *(v55 + 64);
  __chkstk_darwin(v5);
  v54 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v52 = *(v8 - 8);
  v53 = v8;
  v9 = *(v52 + 64);
  __chkstk_darwin(v8);
  v51 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for UUID();
  v11 = *(v46 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v46);
  v43 = v13;
  v45 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TimeBasedKeysCriteria();
  v41 = *(v14 - 8);
  v15 = *(v41 + 64);
  __chkstk_darwin(v14 - 8);
  v42 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  static os_log_type_t.default.getter();
  if (qword_101695050 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_10138BBE0;
  v17 = UUID.uuidString.getter();
  v19 = v18;
  *(v16 + 56) = &type metadata for String;
  v20 = sub_100008C00();
  *(v16 + 64) = v20;
  *(v16 + 32) = v17;
  *(v16 + 40) = v19;
  v21 = v48;
  v22 = TimeBasedKeysCriteria.description.getter();
  *(v16 + 96) = &type metadata for String;
  *(v16 + 104) = v20;
  *(v16 + 72) = v22;
  *(v16 + 80) = v23;
  os_log(_:dso:log:_:_:)();

  v44 = *(v47 + 136);
  v40 = swift_allocObject();
  swift_weakInit();
  v24 = v42;
  sub_100721C9C(v21, v42, type metadata accessor for TimeBasedKeysCriteria);
  v26 = v45;
  v25 = v46;
  (*(v11 + 16))(v45, a1, v46);
  v27 = (*(v41 + 80) + 16) & ~*(v41 + 80);
  v28 = (v15 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
  v29 = (*(v11 + 80) + v28 + 8) & ~*(v11 + 80);
  v30 = (v43 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
  v31 = swift_allocObject();
  sub_10002AB74(v24, v31 + v27, type metadata accessor for TimeBasedKeysCriteria);
  *(v31 + v28) = v40;
  (*(v11 + 32))(v31 + v29, v26, v25);
  v32 = (v31 + v30);
  v33 = v50;
  *v32 = v49;
  v32[1] = v33;
  aBlock[4] = sub_10072007C;
  aBlock[5] = v31;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_10162EC98;
  v34 = _Block_copy(aBlock);

  v35 = v51;
  static DispatchQoS.unspecified.getter();
  v57 = _swiftEmptyArrayStorage;
  sub_100003E8C(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  v36 = v54;
  v37 = v56;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v34);
  (*(v55 + 8))(v36, v37);
  (*(v52 + 8))(v35, v53);
}

uint64_t sub_1006BE7DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *), uint64_t a5)
{
  v46[1] = a5;
  v47 = a4;
  v7 = type metadata accessor for Date();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DateInterval();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v16 = v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = v46 - v17;
  v19 = type metadata accessor for TimeBasedKeysCriteria();
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19);
  v22 = v46 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100721C9C(a1, v22, type metadata accessor for TimeBasedKeysCriteria);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v32 = *v22;
      swift_beginAccess();
      if (swift_weakLoadStrong())
      {
        v27 = sub_1006B9D20(a3, v32);

        goto LABEL_16;
      }

LABEL_26:
      static os_log_type_t.error.getter();
      if (qword_101695050 != -1)
      {
        swift_once();
      }

      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v42 = swift_allocObject();
      *(v42 + 16) = xmmword_101385D80;
      v43 = UUID.uuidString.getter();
      v45 = v44;
      *(v42 + 56) = &type metadata for String;
      *(v42 + 64) = sub_100008C00();
      *(v42 + 32) = v43;
      *(v42 + 40) = v45;
      os_log(_:dso:log:_:_:)();

      return v47(_swiftEmptyArrayStorage);
    }

    (*(v12 + 32))(v16, v22, v11);
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      v28 = sub_1006B4648(a3, v16);

      v47(v28);
    }

    else
    {
      static os_log_type_t.error.getter();
      if (qword_101695050 != -1)
      {
        swift_once();
      }

      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v38 = swift_allocObject();
      *(v38 + 16) = xmmword_101385D80;
      v39 = UUID.uuidString.getter();
      v41 = v40;
      *(v38 + 56) = &type metadata for String;
      *(v38 + 64) = sub_100008C00();
      *(v38 + 32) = v39;
      *(v38 + 40) = v41;
      os_log(_:dso:log:_:_:)();

      v47(_swiftEmptyArrayStorage);
    }

    return (*(v12 + 8))(v16, v11);
  }

  else
  {
    if (EnumCaseMultiPayload == 2)
    {
      v29 = *v22;
      v30 = v22[8];
      swift_beginAccess();
      if (swift_weakLoadStrong())
      {
        v27 = sub_1006BA240(a3, 1, v29, v30);
        goto LABEL_11;
      }

      goto LABEL_26;
    }

    if (EnumCaseMultiPayload == 3)
    {
      v24 = *v22;
      v25 = *(v22 + 1);
      v26 = v22[16];
      swift_beginAccess();
      if (swift_weakLoadStrong())
      {
        v27 = sub_1006BA240(a3, v24, v25, v26);
LABEL_11:

LABEL_16:
        v47(v27);
      }

      goto LABEL_26;
    }

    static Date.trustedNow.getter(v10);
    DateInterval.init(start:duration:)();
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      v31 = sub_1006B4648(a3, v18);

      v47(v31);
    }

    else
    {
      static os_log_type_t.error.getter();
      if (qword_101695050 != -1)
      {
        swift_once();
      }

      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v34 = swift_allocObject();
      *(v34 + 16) = xmmword_101385D80;
      v35 = UUID.uuidString.getter();
      v37 = v36;
      *(v34 + 56) = &type metadata for String;
      *(v34 + 64) = sub_100008C00();
      *(v34 + 32) = v35;
      *(v34 + 40) = v37;
      os_log(_:dso:log:_:_:)();

      v47(_swiftEmptyArrayStorage);
    }

    return (*(v12 + 8))(v18, v11);
  }
}

uint64_t sub_1006BEE58(uint64_t a1)
{
  v3 = type metadata accessor for SharedBeaconRecord(0);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3);
  v7 = &v132 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = &v132 - v9;
  v11 = __chkstk_darwin(v8);
  v141 = &v132 - v12;
  v13 = __chkstk_darwin(v11);
  v137 = &v132 - v14;
  v15 = __chkstk_darwin(v13);
  v136 = &v132 - v16;
  v17 = __chkstk_darwin(v15);
  v135 = &v132 - v18;
  __chkstk_darwin(v17);
  v134 = &v132 - v19;
  v20 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v23 = &v132 - v22;
  v24 = type metadata accessor for Date();
  v138 = *(v24 - 8);
  v139 = v24;
  v25 = *(v138 + 64);
  v26 = __chkstk_darwin(v24);
  v28 = &v132 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v140 = &v132 - v29;
  v30 = sub_1000BC4D4(&unk_1016C7C90, &qword_1013BB4B0);
  v31 = *(*(v30 - 8) + 64);
  __chkstk_darwin(v30 - 8);
  v33 = &v132 - v32;
  v34 = type metadata accessor for WildModeAssociationRecord(0);
  v35 = *(v34 - 8);
  v36 = *(v35 + 64);
  __chkstk_darwin(v34);
  v38 = &v132 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = v3;
  result = 0;
  v40 = 1 << *(a1 + *(v3 + 64));
  if ((v40 & 0x29) == 0)
  {
    if ((v40 & 0x12) == 0)
    {
      return 1;
    }

    v41 = *(a1 + v142[11]);
    v42 = *(a1 + v142[12]);
    if (v41 == -1 && v42 == -1)
    {
      if (qword_101694910 != -1)
      {
        swift_once();
      }

      v43 = type metadata accessor for Logger();
      sub_1000076D4(v43, qword_10177B2D0);
      sub_100721C9C(a1, v7, type metadata accessor for SharedBeaconRecord);
      v44 = Logger.logObject.getter();
      v45 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        v143 = v47;
        *v46 = 141558275;
        *(v46 + 4) = 1752392040;
        *(v46 + 12) = 2081;
        v48 = v142[5];
        type metadata accessor for UUID();
        sub_100003E8C(&qword_101696930, &type metadata accessor for UUID);
        v49 = dispatch thunk of CustomStringConvertible.description.getter();
        v51 = v50;
        sub_100721D04(v7, type metadata accessor for SharedBeaconRecord);
        v52 = sub_1000136BC(v49, v51, &v143);

        *(v46 + 14) = v52;
        v53 = "Automatic shared beacon %{private,mask.hash}s include in reconcile; Is self beacon.";
LABEL_9:
        _os_log_impl(&_mh_execute_header, v44, v45, v53, v46, 0x16u);
        sub_100007BAC(v47);

        return 1;
      }

      v78 = type metadata accessor for SharedBeaconRecord;
      v79 = v7;
      goto LABEL_25;
    }

    v54 = a1;
    v133 = v38;
    if (sub_100E0EA64(v41, v42))
    {
      if (qword_101694F58 != -1)
      {
        swift_once();
      }

      v55 = qword_10177C218;
      v56 = [objc_opt_self() sharedInstance];
      v57 = [v56 isInternalBuild];

      if (v57)
      {
        v58 = String._bridgeToObjectiveC()();
        v59 = [v55 BOOLForKey:v58];

        if (v59)
        {
          v60 = *(v1 + 280);
          sub_100AC29C4(v54 + v142[5], v33);
          if ((*(v35 + 48))(v33, 1, v34) == 1)
          {
            sub_10000B3A8(v33, &unk_1016C7C90, &qword_1013BB4B0);
            if (qword_101694910 != -1)
            {
              swift_once();
            }

            v61 = type metadata accessor for Logger();
            sub_1000076D4(v61, qword_10177B2D0);
            v62 = v137;
            sub_100721C9C(v54, v137, type metadata accessor for SharedBeaconRecord);
            v44 = Logger.logObject.getter();
            v45 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v44, v45))
            {
              v46 = swift_slowAlloc();
              v47 = swift_slowAlloc();
              v143 = v47;
              *v46 = 141558275;
              *(v46 + 4) = 1752392040;
              *(v46 + 12) = 2081;
              v63 = v142[5];
              type metadata accessor for UUID();
              sub_100003E8C(&qword_101696930, &type metadata accessor for UUID);
              v64 = dispatch thunk of CustomStringConvertible.description.getter();
              v66 = v65;
              sub_100721D04(v62, type metadata accessor for SharedBeaconRecord);
              v67 = sub_1000136BC(v64, v66, &v143);

              *(v46 + 14) = v67;
              v53 = "Automatic shared beacon %{private,mask.hash}s include in reconcile; no UT.";
              goto LABEL_9;
            }

            v78 = type metadata accessor for SharedBeaconRecord;
            v79 = v62;
LABEL_25:
            sub_100721D04(v79, v78);
            return 1;
          }

          v92 = v133;
          sub_10002AB74(v33, v133, type metadata accessor for WildModeAssociationRecord);
          sub_1000D2A70(v92 + *(v34 + 44), v23, &unk_101696900, &unk_10138B1E0);
          v93 = v138;
          v94 = v139;
          if ((*(v138 + 48))(v23, 1, v139) == 1)
          {
            sub_10000B3A8(v23, &unk_101696900, &unk_10138B1E0);
            if (qword_101694910 != -1)
            {
              swift_once();
            }

            v95 = type metadata accessor for Logger();
            sub_1000076D4(v95, qword_10177B2D0);
            v96 = v136;
            sub_100721C9C(v54, v136, type metadata accessor for SharedBeaconRecord);
            v97 = Logger.logObject.getter();
            v98 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v97, v98))
            {
              v99 = swift_slowAlloc();
              v100 = swift_slowAlloc();
              v143 = v100;
              *v99 = 141558275;
              *(v99 + 4) = 1752392040;
              *(v99 + 12) = 2081;
              v101 = v142[5];
              type metadata accessor for UUID();
              sub_100003E8C(&qword_101696930, &type metadata accessor for UUID);
              v102 = dispatch thunk of CustomStringConvertible.description.getter();
              v104 = v103;
              sub_100721D04(v96, type metadata accessor for SharedBeaconRecord);
              v105 = sub_1000136BC(v102, v104, &v143);

              *(v99 + 14) = v105;
              _os_log_impl(&_mh_execute_header, v97, v98, "Automatic shared beacon %{private,mask.hash}s excluded from reconcile; has UT.", v99, 0x16u);
              sub_100007BAC(v100);
            }

            else
            {

              sub_100721D04(v96, type metadata accessor for SharedBeaconRecord);
            }
          }

          else
          {
            (*(v93 + 32))(v140, v23, v94);
            static Date.trustedNow.getter(v28);
            v106 = static Date.< infix(_:_:)();
            v107 = *(v93 + 8);
            v107(v28, v94);
            if (v106)
            {
              if (qword_101694910 != -1)
              {
                swift_once();
              }

              v108 = type metadata accessor for Logger();
              sub_1000076D4(v108, qword_10177B2D0);
              v109 = v54;
              v110 = v134;
              sub_100721C9C(v109, v134, type metadata accessor for SharedBeaconRecord);
              v111 = Logger.logObject.getter();
              v112 = static os_log_type_t.default.getter();
              if (os_log_type_enabled(v111, v112))
              {
                v113 = swift_slowAlloc();
                v114 = swift_slowAlloc();
                v143 = v114;
                *v113 = 141558275;
                *(v113 + 4) = 1752392040;
                *(v113 + 12) = 2081;
                v115 = v142[5];
                type metadata accessor for UUID();
                sub_100003E8C(&qword_101696930, &type metadata accessor for UUID);
                v116 = dispatch thunk of CustomStringConvertible.description.getter();
                v118 = v117;
                sub_100721D04(v110, type metadata accessor for SharedBeaconRecord);
                v119 = sub_1000136BC(v116, v118, &v143);

                *(v113 + 14) = v119;
                _os_log_impl(&_mh_execute_header, v111, v112, "Automatic shared beacon %{private,mask.hash}s include in reconcile; UT ignored.", v113, 0x16u);
                sub_100007BAC(v114);
              }

              else
              {

                sub_100721D04(v110, type metadata accessor for SharedBeaconRecord);
              }

              v107(v140, v94);
              v78 = type metadata accessor for WildModeAssociationRecord;
              v79 = v133;
              goto LABEL_25;
            }

            if (qword_101694910 != -1)
            {
              swift_once();
            }

            v120 = type metadata accessor for Logger();
            sub_1000076D4(v120, qword_10177B2D0);
            v121 = v54;
            v122 = v135;
            sub_100721C9C(v121, v135, type metadata accessor for SharedBeaconRecord);
            v123 = Logger.logObject.getter();
            v124 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v123, v124))
            {
              v125 = swift_slowAlloc();
              v126 = swift_slowAlloc();
              v143 = v126;
              *v125 = 141558275;
              *(v125 + 4) = 1752392040;
              *(v125 + 12) = 2081;
              v127 = v142[5];
              type metadata accessor for UUID();
              sub_100003E8C(&qword_101696930, &type metadata accessor for UUID);
              v128 = dispatch thunk of CustomStringConvertible.description.getter();
              v130 = v129;
              sub_100721D04(v122, type metadata accessor for SharedBeaconRecord);
              v131 = sub_1000136BC(v128, v130, &v143);

              *(v125 + 14) = v131;
              _os_log_impl(&_mh_execute_header, v123, v124, "Automatic shared beacon %{private,mask.hash}s excluded from reconcile; has UT, ignore date passed.", v125, 0x16u);
              sub_100007BAC(v126);
            }

            else
            {

              sub_100721D04(v122, type metadata accessor for SharedBeaconRecord);
            }

            v107(v140, v94);
          }

          v90 = type metadata accessor for WildModeAssociationRecord;
          v91 = v133;
LABEL_35:
          sub_100721D04(v91, v90);
          return 0;
        }
      }

      if (qword_101694910 != -1)
      {
        swift_once();
      }

      v80 = type metadata accessor for Logger();
      sub_1000076D4(v80, qword_10177B2D0);
      v81 = v141;
      sub_100721C9C(v54, v141, type metadata accessor for SharedBeaconRecord);
      v69 = Logger.logObject.getter();
      v82 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(v69, v82))
      {

        v90 = type metadata accessor for SharedBeaconRecord;
        v91 = v81;
        goto LABEL_35;
      }

      v83 = swift_slowAlloc();
      v84 = swift_slowAlloc();
      v143 = v84;
      *v83 = 141558275;
      *(v83 + 4) = 1752392040;
      *(v83 + 12) = 2081;
      v85 = v142[5];
      type metadata accessor for UUID();
      sub_100003E8C(&qword_101696930, &type metadata accessor for UUID);
      v86 = dispatch thunk of CustomStringConvertible.description.getter();
      v88 = v87;
      sub_100721D04(v81, type metadata accessor for SharedBeaconRecord);
      v89 = sub_1000136BC(v86, v88, &v143);

      *(v83 + 14) = v89;
      _os_log_impl(&_mh_execute_header, v69, v82, "Automatic shared beacon %{private,mask.hash}s excluded from reconcile; Is audio accessory.", v83, 0x16u);
      sub_100007BAC(v84);
    }

    else
    {
      if (qword_101694910 != -1)
      {
        swift_once();
      }

      v68 = type metadata accessor for Logger();
      sub_1000076D4(v68, qword_10177B2D0);
      sub_100721C9C(a1, v10, type metadata accessor for SharedBeaconRecord);
      v69 = Logger.logObject.getter();
      v70 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(v69, v70))
      {

        v90 = type metadata accessor for SharedBeaconRecord;
        v91 = v10;
        goto LABEL_35;
      }

      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      v143 = v72;
      *v71 = 141558275;
      *(v71 + 4) = 1752392040;
      *(v71 + 12) = 2081;
      v73 = v142[5];
      type metadata accessor for UUID();
      sub_100003E8C(&qword_101696930, &type metadata accessor for UUID);
      v74 = dispatch thunk of CustomStringConvertible.description.getter();
      v76 = v75;
      sub_100721D04(v10, type metadata accessor for SharedBeaconRecord);
      v77 = sub_1000136BC(v74, v76, &v143);

      *(v71 + 14) = v77;
      _os_log_impl(&_mh_execute_header, v69, v70, "Automatic shared beacon %{private,mask.hash}s excluded from reconcile; Is accessory.", v71, 0x16u);
      sub_100007BAC(v72);
    }

    return 0;
  }

  return result;
}

unint64_t sub_1006C0110(uint64_t a1)
{
  v2 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v197 - v4;
  v6 = sub_1000BC4D4(&qword_10169E328, &unk_10139D740);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v197 - v8;
  found = type metadata accessor for NotifyWhenFoundRecord();
  v251 = *(found - 8);
  v11 = *(v251 + 8);
  __chkstk_darwin(found);
  v220 = &v197 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000BC4D4(&unk_1016A99E0, &qword_1013A07B0);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13 - 8);
  v221 = &v197 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v224 = &v197 - v17;
  v243 = type metadata accessor for OwnedBeaconGroup(0);
  v18 = *(*(v243 - 8) + 64);
  __chkstk_darwin(v243);
  v231 = &v197 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v248 = type metadata accessor for Date();
  v223 = *(v248 - 8);
  v20 = *(v223 + 64);
  v21 = __chkstk_darwin(v248);
  v240 = &v197 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v249 = &v197 - v23;
  v24 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v25 = *(*(v24 - 8) + 64);
  v26 = __chkstk_darwin(v24 - 8);
  v28 = &v197 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __chkstk_darwin(v26);
  v226 = &v197 - v30;
  v31 = __chkstk_darwin(v29);
  v230 = &v197 - v32;
  v33 = __chkstk_darwin(v31);
  v252 = &v197 - v34;
  __chkstk_darwin(v33);
  v36 = (&v197 - v35);
  v37 = type metadata accessor for UUID();
  v38 = *(v37 - 8);
  v39 = *(v38 + 64);
  v40 = __chkstk_darwin(v37);
  v219 = &v197 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __chkstk_darwin(v40);
  v218 = &v197 - v43;
  v44 = __chkstk_darwin(v42);
  v222 = &v197 - v45;
  __chkstk_darwin(v44);
  v47 = &v197 - v46;
  v48 = sub_100519FB0();
  sub_10112C648(v48, v36);

  v49 = *(v38 + 48);
  v229 = v38 + 48;
  v241 = v49;
  if (v49(v36, 1, v37) == 1)
  {
    v50 = &qword_1016980D0;
    v51 = &unk_10138F3B0;
    v52 = v36;
LABEL_93:
    sub_10000B3A8(v52, v50, v51);
    if (qword_101694960 != -1)
    {
LABEL_101:
      swift_once();
    }

    v193 = type metadata accessor for Logger();
    sub_1000076D4(v193, qword_10177B380);
    v194 = Logger.logObject.getter();
    v195 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v194, v195))
    {
      v196 = swift_slowAlloc();
      *v196 = 0;
      _os_log_impl(&_mh_execute_header, v194, v195, "Missing member record to compute group taskInfos!", v196, 2u);
    }

    return sub_1009097B0(_swiftEmptyArrayStorage);
  }

  v53 = *(v38 + 32);
  v214 = v38 + 32;
  v213 = v53;
  v53(v47, v36, v37);
  v54 = v242;
  v217 = *(v242 + 280);
  sub_100025020(v47, &v253);
  if (!v254)
  {
    (*(v38 + 8))(v47, v37);
    v50 = &qword_101696920;
    v51 = &unk_10138B200;
    v52 = &v253;
    goto LABEL_93;
  }

  v216 = v38;
  sub_10000A748(&v253, &v255);
  v55 = sub_1006C1A0C(&v255, 0);
  v57 = v55;
  v239 = v55[2];
  if (!v239)
  {

    v59 = &_swiftEmptyDictionarySingleton;
LABEL_98:
    sub_100007BAC(&v255);
    (*(v216 + 8))(v47, v37);
    return v59;
  }

  v212 = v47;
  v208 = found;
  v209 = v9;
  v204 = v5;
  v58 = 0;
  v206 = (v54 + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_beaconUUIDsLocating);
  v238 = v55 + 4;
  v246 = (v216 + 56);
  v211 = v216 + 16;
  v203 = (v223 + 56);
  v200 = v223 + 16;
  v228 = (v216 + 8);
  v202 = (v223 + 48);
  v237 = SPBeaconTaskNamePlaySound;
  v245 = (v223 + 8);
  v233 = (v223 + 32);
  v207 = (v251 + 48);
  v59 = &_swiftEmptyDictionarySingleton;
  v232 = OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_soundPlaybackManager;
  v225 = SPBeaconTaskNameStopSound;
  v215 = SPBeaconTaskNameEnableLostMode;
  v210 = SPBeaconTaskNameDisableLostMode;
  v205 = SPBeaconTaskNameEnableNotifyWhenFound;
  v201 = SPBeaconTaskNameLocating;
  *&v56 = 141558531;
  v227 = v56;
  v236 = a1;
  v235 = v28;
  v250 = v37;
  v234 = v55;
  while (1)
  {
    if (v58 >= v57[2])
    {
      __break(1u);
      goto LABEL_101;
    }

    v247 = v59;
    v63 = v238[v58];
    Date.init()();
    v244 = *v246;
    v244(v252, 1, 1, v37);
    v64 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v66 = v65;
    v251 = v63;
    if (v64 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v66 == v67)
    {

      v71 = v242;
LABEL_18:
      v77 = a1 + *(v243 + 24);
      v78 = *(*(v71 + v232) + OBJC_IVAR____TtC12searchpartyd20SoundPlaybackManager_commandQueue);
      __chkstk_darwin(v70);
      *(&v197 - 2) = v79;
      *(&v197 - 1) = v80;
      sub_100008BB8(0, &unk_1016AF850, SPBeaconTaskInformation_ptr);
      OS_dispatch_queue.sync<A>(execute:)();
      v81 = v253;
      if (qword_101694960 != -1)
      {
        swift_once();
      }

      v82 = type metadata accessor for Logger();
      sub_1000076D4(v82, qword_10177B380);
      v83 = a1;
      v84 = v231;
      sub_100721C9C(v83, v231, type metadata accessor for OwnedBeaconGroup);
      v85 = v81;
      v86 = Logger.logObject.getter();
      v87 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v86, v87))
      {
        v88 = swift_slowAlloc();
        *&v253 = swift_slowAlloc();
        *v88 = v227;
        *(v88 + 4) = 1752392040;
        *(v88 + 12) = 2081;
        v89 = *(v243 + 24);
        sub_100003E8C(&qword_101696930, &type metadata accessor for UUID);
        v90 = dispatch thunk of CustomStringConvertible.description.getter();
        v92 = v91;
        sub_100721D04(v84, type metadata accessor for OwnedBeaconGroup);
        v93 = sub_1000136BC(v90, v92, &v253);

        *(v88 + 14) = v93;
        *(v88 + 22) = 2080;
        v94 = [v85 debugDescription];
        v95 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v97 = v96;

        v98 = sub_1000136BC(v95, v97, &v253);

        *(v88 + 24) = v98;
        _os_log_impl(&_mh_execute_header, v86, v87, "Play taskInfo for group %{private,mask.hash}s: %s", v88, 0x20u);
        swift_arrayDestroy();
      }

      else
      {

        sub_100721D04(v84, type metadata accessor for OwnedBeaconGroup);
      }

      v99 = [v85 state];
      v100 = [v85 lastUpdated];
      v101 = v240;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v102 = v248;
      v103 = v249;
      (*v245)(v249, v248);
      (*v233)(v103, v101, v102);
      v104 = [v85 error];
      v105 = [v85 commandIdentifier];
      v106 = v230;
      if (v105)
      {
        v107 = v105;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v108 = 0;
      }

      else
      {
        v108 = 1;
      }

      v244(v106, v108, 1, v250);
      v109 = v106;
      goto LABEL_27;
    }

    v69 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v71 = v242;
    if (v69)
    {
      goto LABEL_18;
    }

    v72 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v74 = v73;
    if (v72 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v74 == v75)
    {

LABEL_35:
      v117 = a1 + *(v243 + 24);
      v118 = *(*(v71 + v232) + OBJC_IVAR____TtC12searchpartyd20SoundPlaybackManager_commandQueue);
      __chkstk_darwin(v76);
      *(&v197 - 2) = v119;
      *(&v197 - 1) = v120;
      sub_100008BB8(0, &unk_1016AF850, SPBeaconTaskInformation_ptr);
      OS_dispatch_queue.sync<A>(execute:)();
      v121 = v253;
      v99 = [v253 state];
      v122 = [v121 lastUpdated];
      v123 = v240;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v124 = v248;
      v125 = v249;
      (*v245)(v249, v248);
      (*v233)(v125, v123, v124);
      v104 = [v121 error];
      v126 = [v121 commandIdentifier];
      if (v126)
      {
        v127 = v226;
        v128 = v126;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v129 = 0;
        v121 = v128;
      }

      else
      {
        v129 = 1;
        v127 = v226;
      }

      v244(v127, v129, 1, v37);
      v109 = v127;
LABEL_27:
      sub_10002311C(v109, v252, &qword_1016980D0, &unk_10138F3B0);
      goto LABEL_28;
    }

    v116 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v116)
    {
      goto LABEL_35;
    }

    v130 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v132 = v131;
    if (v130 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v132 == v133)
    {

LABEL_43:
      v135 = a1 + *(v243 + 24);
      v136 = v224;
      sub_100ABD87C(v224);
      v137 = type metadata accessor for LostModeRecord();
      v138 = (*(*(v137 - 8) + 48))(v136, 1, v137) == 1;
      goto LABEL_44;
    }

    v134 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v134)
    {
      goto LABEL_43;
    }

    v139 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v141 = v140;
    if (v139 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v141 == v142)
    {

LABEL_49:
      v144 = a1 + *(v243 + 24);
      v136 = v221;
      sub_100ABD87C(v221);
      v145 = type metadata accessor for LostModeRecord();
      v138 = (*(*(v145 - 8) + 48))(v136, 1, v145) != 1;
LABEL_44:
      sub_10000B3A8(v136, &unk_1016A99E0, &qword_1013A07B0);
      v104 = 0;
      v99 = 2 * v138;
      goto LABEL_28;
    }

    v143 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v143)
    {
      goto LABEL_49;
    }

    v146 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v148 = v147;
    if (v146 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v148 == v149)
    {

LABEL_54:
      v151 = sub_100519FB0();
      v152 = v151;
      v153 = v151 + 56;
      v154 = 1 << *(v151 + 32);
      if (v154 < 64)
      {
        v155 = ~(-1 << v154);
      }

      else
      {
        v155 = -1;
      }

      v156 = v155 & *(v151 + 56);
      v157 = (v154 + 63) >> 6;

      v198 = v152;

      v159 = 0;
      v99 = 2;
      while (v156)
      {
LABEL_65:
        v161 = *(v198 + 48) + *(v216 + 72) * (__clz(__rbit64(v156)) | (v159 << 6));
        v162 = v250;
        v199 = *(v216 + 16);
        v199(v222, v161, v250);
        v163 = v209;
        sub_10003A604(v209);
        v164 = v208;
        if ((*v207)(v163, 1, v208) == 1)
        {
          sub_10000B3A8(v163, &qword_10169E328, &unk_10139D740);
        }

        else
        {
          v165 = v220;
          sub_10002AB74(v163, v220, type metadata accessor for NotifyWhenFoundRecord);
          v166 = v252;
          sub_10000B3A8(v252, &qword_1016980D0, &unk_10138F3B0);
          v199(v166, v165 + *(v164 + 20), v162);
          sub_100721D04(v165, type metadata accessor for NotifyWhenFoundRecord);
          v244(v166, 0, 1, v162);
          v99 = 0;
        }

        v156 &= v156 - 1;
        result = (*v228)(v222, v162);
      }

      while (1)
      {
        v160 = v159 + 1;
        if (__OFADD__(v159, 1))
        {
          break;
        }

        if (v160 >= v157)
        {

          v104 = 0;
          v110 = v249;
          goto LABEL_29;
        }

        v156 = *(v153 + 8 * v160);
        ++v159;
        if (v156)
        {
          v159 = v160;
          goto LABEL_65;
        }
      }

      __break(1u);
      goto LABEL_103;
    }

    v150 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v150)
    {
      goto LABEL_54;
    }

    v167 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v169 = v168;
    if (v167 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v169 == v170)
    {
      break;
    }

    v171 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v171)
    {
      goto LABEL_72;
    }

LABEL_89:
    v104 = 0;
    v99 = 2;
LABEL_28:
    v110 = v249;
LABEL_29:
    v111 = v251;
    swift_errorRetain();
    v112.super.isa = Date._bridgeToObjectiveC()().super.isa;
    if (v104)
    {
      v113 = _convertErrorToNSError(_:)();
    }

    else
    {
      v113 = 0;
    }

    v114 = [objc_allocWithZone(SPBeaconTaskInformation) initWithName:v111 lastUpdated:v112.super.isa error:v113 state:v99];

    v115 = v235;
    sub_1000D2A70(v252, v235, &qword_1016980D0, &unk_10138F3B0);
    v37 = v250;
    if (v241(v115, 1, v250) == 1)
    {
      v60.super.isa = 0;
    }

    else
    {
      v60.super.isa = UUID._bridgeToObjectiveC()().super.isa;
      (*v228)(v115, v37);
    }

    v57 = v234;
    ++v58;
    [v114 setCommandIdentifier:v60.super.isa];

    v61 = v247;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v253 = v61;
    sub_100FFF5A8(v114, v111, isUniquelyReferenced_nonNull_native);

    v59 = v253;
    (*v245)(v110, v248);
    sub_10000B3A8(v252, &qword_1016980D0, &unk_10138F3B0);
    a1 = v236;
    if (v58 == v239)
    {

      v47 = v212;
      goto LABEL_98;
    }
  }

LABEL_72:
  result = sub_100519FB0();
  v172 = result;
  v173 = 0;
  v174 = result + 56;
  v175 = 1 << *(result + 32);
  if (v175 < 64)
  {
    v176 = ~(-1 << v175);
  }

  else
  {
    v176 = -1;
  }

  v177 = v176 & *(result + 56);
  v178 = (v175 + 63) >> 6;
  while (1)
  {
    v179 = v219;
    if (!v177)
    {
      break;
    }

    v180 = v173;
LABEL_81:
    v181 = v218;
    (*(v216 + 16))(v218, *(v172 + 48) + *(v216 + 72) * (__clz(__rbit64(v177)) | (v180 << 6)), v37);
    v213(v179, v181, v37);
    v182 = v206;
    os_unfair_lock_lock(v206);
    v183 = v179;
    v184 = *&v182[2]._os_unfair_lock_opaque;
    if (*(v184 + 16))
    {
      v185 = sub_1000210EC(v183);
      if (v186)
      {
        (*(v223 + 16))(v204, *(v184 + 56) + *(v223 + 72) * v185, v248);
        v187 = 0;
      }

      else
      {
        v187 = 1;
      }
    }

    else
    {
      v187 = 1;
    }

    v188 = v204;
    v189 = v248;
    (*v203)(v204, v187, 1, v248);
    os_unfair_lock_unlock(v206);
    (*v228)(v219, v250);
    if ((*v202)(v188, 1, v189) != 1)
    {
      v190 = v248;
      v191 = v249;
      (*v245)(v249, v248);

      v192 = v190;
      v110 = v191;
      (*v233)(v191, v188, v192);
      v104 = 0;
      v99 = 0;
      goto LABEL_29;
    }

    v177 &= v177 - 1;
    result = sub_10000B3A8(v188, &unk_101696900, &unk_10138B1E0);
    v173 = v180;
    v37 = v250;
  }

  while (1)
  {
    v180 = v173 + 1;
    if (__OFADD__(v173, 1))
    {
      break;
    }

    if (v180 >= v178)
    {

      goto LABEL_89;
    }

    v177 = *(v174 + 8 * v180);
    ++v173;
    if (v177)
    {
      goto LABEL_81;
    }
  }

LABEL_103:
  __break(1u);
  return result;
}

void *sub_1006C1A0C(void *a1, int a2)
{
  v70 = a2;
  v71 = type metadata accessor for OwnedBeaconRecord();
  v4 = *(*(v71 - 8) + 64);
  __chkstk_darwin(v71);
  v72 = &v69[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for UUID();
  v75 = *(v6 - 8);
  v76 = v6;
  v7 = *(v75 + 64);
  __chkstk_darwin(v6);
  v9 = &v69[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_1000BC4D4(&unk_1016AF8C0, &unk_1013A07A0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v69[-v12];
  v14 = type metadata accessor for BeaconProductInfoRecord();
  v74 = *(v14 - 8);
  v15 = *(v74 + 64);
  __chkstk_darwin(v14);
  v73 = &v69[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = type metadata accessor for LocalFindableAccessoryRecord();
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17);
  v20 = &v69[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = type metadata accessor for SharedBeaconRecord(0);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21);
  v24 = &v69[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_10001F280(a1, &v78);
  sub_1000BC4D4(&unk_1016AA470, &qword_10139FD30);
  if (swift_dynamicCast())
  {
    v25 = type metadata accessor for SharedBeaconRecord;
    v26 = v24;
LABEL_5:
    sub_100721D04(v26, v25);
    v27 = *(v2 + 280);
    goto LABEL_6;
  }

  sub_10001F280(a1, &v78);
  if (swift_dynamicCast())
  {
    v25 = type metadata accessor for LocalFindableAccessoryRecord;
    v26 = v20;
    goto LABEL_5;
  }

  v27 = *(v2 + 280);
  v35 = a1[3];
  v34 = a1[4];
  sub_1000035D0(a1, v35);
  (*(*(*(v34 + 8) + 8) + 32))(v35);
  sub_100AC1584(v9, v13);
  (*(v75 + 8))(v9, v76);
  if ((*(v74 + 48))(v13, 1, v14) != 1)
  {
    v38 = v13;
    v39 = v73;
    sub_10002AB74(v38, v73, type metadata accessor for BeaconProductInfoRecord);
    v40 = sub_1010D7CD4(*&v39[*(v14 + 80)]);
    v41 = sub_10112AFA0(v40);

    sub_1000BC4D4(&qword_10169EFF0, &qword_10139FDA0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_101385D80;
    v43 = SPBeaconTaskNameLocating;
    *(inited + 32) = SPBeaconTaskNameLocating;
    v44 = v43;
    v45 = sub_10112AFA0(inited);
    swift_setDeallocating();
    sub_100721D04(inited + 32, type metadata accessor for SPBeaconTaskName);
    sub_10039DDA0(v45, v41);
    v47 = v46;
    v77 = v46;
    sub_10001F280(a1, &v78);
    v48 = v72;
    if (swift_dynamicCast())
    {
      sub_100721D04(v48, type metadata accessor for OwnedBeaconRecord);
      v49 = SPBeaconTaskNameBeginLeashing;
      if ((sub_10112C0E4(SPBeaconTaskNameBeginLeashing, v47) & 1) == 0)
      {
        sub_100DEF808(&v78, v49);
      }

      v50 = v77;
      v51 = SPBeaconTaskNameEndLeashing;
      if ((sub_10112C0E4(SPBeaconTaskNameEndLeashing, v77) & 1) == 0)
      {
        sub_100DEF808(&v78, v51);

        v50 = v77;
      }

      v52 = SPBeaconTaskNameUnpair;
      if ((sub_10112C0E4(SPBeaconTaskNameUnpair, v50) & 1) == 0)
      {
        sub_100DEF808(&v78, v52);
      }

      My = type metadata accessor for Feature.FindMy();
      v79 = My;
      v54 = sub_100003E8C(&qword_1016AF950, &type metadata accessor for Feature.FindMy);
      v80 = v54;
      v55 = sub_1000280DC(&v78);
      v56 = *(*(My - 8) + 104);
      v56(v55, enum case for Feature.FindMy.itemSharing(_:), My);
      v57 = isFeatureEnabled(_:)();
      sub_100007BAC(&v78);
      v58 = v77;
      v59 = SPBeaconTaskNameStartSharing;
      v60 = sub_10112C0E4(SPBeaconTaskNameStartSharing, v77);
      if (v57)
      {
        if ((v60 & 1) == 0)
        {
          sub_100DEF808(&v78, v59);
        }

        if (v70)
        {
          sub_100DEF808(&v78, SPBeaconTaskNameStopSharing);
        }

        else
        {
        }

        if (qword_101694940 != -1)
        {
          swift_once();
        }

        v62 = *(qword_10177B348 + 40);
        OS_dispatch_queue.sync<A>(execute:)();
        v63 = v78;
        v79 = My;
        v80 = v54;
        v64 = sub_1000280DC(&v78);
        v56(v64, enum case for Feature.FindMy.cowardlyCarrot(_:), My);
        LOBYTE(v62) = isFeatureEnabled(_:)();
        sub_100007BAC(&v78);
        if (v62)
        {
          v65 = sub_101073410(v63);

          if ((v65 & 1) == 0)
          {
            sub_100DEF808(&v78, SPBeaconTaskNameEnableDelegatedShares);
          }
        }

        else
        {
        }
      }

      else
      {
        if (v60)
        {

          v58 = v77;
        }

        v61 = SPBeaconTaskNameStopSharing;
        if (sub_10112C0E4(SPBeaconTaskNameStopSharing, v58))
        {
        }
      }
    }

    v66 = v77;
    v67 = *(v77 + 16);
    if (v67)
    {
      v32 = sub_1003A8830(*(v77 + 16), 0);
      v68 = sub_1003CC2D0(&v78, v32 + 4, v67, v66);
      sub_1000128F8();
      if (v68 == v67)
      {
LABEL_38:
        sub_100721D04(v39, type metadata accessor for BeaconProductInfoRecord);
        return v32;
      }

      __break(1u);
    }

    v32 = _swiftEmptyArrayStorage;
    goto LABEL_38;
  }

  sub_10000B3A8(v13, &unk_1016AF8C0, &unk_1013A07A0);
  v36 = a1[3];
  v37 = a1[4];
  sub_1000035D0(a1, v36);
  if ((*(v37 + 104))(v36, v37))
  {
    return _swiftEmptyArrayStorage;
  }

LABEL_6:
  v28 = a1[3];
  v29 = a1[4];
  v30 = sub_1000035D0(a1, v28);
  v31 = sub_1009C5A54(v30, v27, v28, v29);
  v32 = sub_100069D10(v31);

  return v32;
}

uint64_t sub_1006C22E8(void *a1)
{
  v3 = type metadata accessor for UUID();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v5 = a1[3];
  v6 = a1[4];
  sub_1000035D0(a1, v5);
  if (((*(v6 + 144))(v5, v6) & 1) == 0)
  {
    return 0;
  }

  v7 = *(*(v1 + 280) + OBJC_IVAR____TtC12searchpartyd11BeaconStore_beaconKeyManagerLock);
  type metadata accessor for BeaconKeyManager(0);
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  v8 = v12;
  sub_10001F280(a1, &v12);
  v9 = swift_allocObject();
  sub_10000A748(&v12, v9 + 16);
  *(v9 + 56) = v8;

  unsafeFromAsyncTask<A>(_:)();

  return v11;
}

uint64_t sub_1006C2718(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  v4 = type metadata accessor for UUID();
  v3[10] = v4;
  v5 = *(v4 - 8);
  v3[11] = v5;
  v6 = *(v5 + 64) + 15;
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v7 = type metadata accessor for SharedBeaconRecord(0);
  v3[14] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();

  return _swift_task_switch(sub_1006C2824, 0, 0);
}

uint64_t sub_1006C2824()
{
  v1 = v0[16];
  v2 = v0[14];
  sub_10001F280(v0[8], (v0 + 2));
  sub_1000BC4D4(&unk_1016AA470, &qword_10139FD30);
  if (swift_dynamicCast())
  {
    v3 = v0[15];
    v4 = v0[13];
    v5 = v0[14];
    v6 = v0[12];
    v8 = v0[8];
    v7 = v0[9];
    sub_10002AB74(v0[16], v3, type metadata accessor for SharedBeaconRecord);
    v9 = *(v7 + OBJC_IVAR____TtC12searchpartyd16BeaconKeyManager_keyStore);
    v10 = *(v5 + 24);
    v11 = v8[3];
    v12 = v8[4];
    sub_1000035D0(v8, v11);
    (*(*(*(v12 + 8) + 8) + 32))(v11);
    v13 = getuid();
    sub_1000294F0(v13);
    v14 = swift_task_alloc();
    v0[17] = v14;
    *v14 = v0;
    v14[1] = sub_1006C2AD0;
    v16 = v0[12];
    v15 = v0[13];

    return sub_10068CDC8(v3 + v10, v15, 1, v16);
  }

  else
  {
    if (qword_101694780 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_1000076D4(v18, qword_10177AE40);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "cannot check keys for imported beacon", v21, 2u);
    }

    v22 = v0[7];

    sub_100007BAC(v0 + 2);
    *v22 = 1;
    v24 = v0[15];
    v23 = v0[16];
    v26 = v0[12];
    v25 = v0[13];

    v27 = v0[1];

    return v27();
  }
}

uint64_t sub_1006C2AD0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 136);
  v6 = *v2;
  v4[18] = v1;

  v7 = v4[13];
  v8 = v4[12];
  v9 = v4[11];
  v10 = v4[10];
  if (v1)
  {
    v11 = *(v9 + 8);
    v11(v8, v4[10]);
    v11(v7, v10);
    v12 = sub_1006C2D70;
  }

  else
  {
    v4[19] = a1;
    v13 = *(v9 + 8);
    v13(v8, v10);
    v13(v7, v10);
    v12 = sub_1006C2CA4;
  }

  return _swift_task_switch(v12, 0, 0);
}

uint64_t sub_1006C2CA4()
{
  v1 = v0[19];
  v2 = v0[7];
  sub_100721D04(v0[15], type metadata accessor for SharedBeaconRecord);
  v3 = *(v1 + 16);

  *v2 = v3 == 0;
  sub_100007BAC(v0 + 2);
  v5 = v0[15];
  v4 = v0[16];
  v7 = v0[12];
  v6 = v0[13];

  v8 = v0[1];

  return v8();
}

uint64_t sub_1006C2D70()
{
  v1 = v0[16];
  v3 = v0[12];
  v2 = v0[13];
  sub_100721D04(v0[15], type metadata accessor for SharedBeaconRecord);
  sub_100007BAC(v0 + 2);

  v4 = v0[1];
  v5 = v0[18];

  return v4();
}

uint64_t sub_1006C2E60()
{
  v1 = *(v0 + 16);
  v2 = sub_1000BC4D4(&qword_1016A7850, &qword_1013B6728);
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1006C2F08@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a2[3];
  v12 = a2[4];
  sub_1000035D0(a2, v11);
  (*(*(*(v12 + 8) + 8) + 32))(v11);
  v13 = OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_playbackCoordinatorByBeaconIdentifier;
  swift_beginAccess();
  v14 = *(a1 + v13);
  if (!*(v14 + 16))
  {
    goto LABEL_5;
  }

  v15 = *(a1 + v13);

  v16 = sub_1000210EC(v10);
  if ((v17 & 1) == 0)
  {

LABEL_5:
    result = (*(v7 + 8))(v10, v6);
    v19 = 0;
    v20 = 0;
    v21 = -1;
    goto LABEL_6;
  }

  v18 = *(v14 + 56) + 24 * v16;
  v19 = *v18;
  v20 = *(v18 + 8);
  v21 = *(v18 + 16);
  sub_1004E39C8(*v18, v20, v21);
  (*(v7 + 8))(v10, v6);

LABEL_6:
  *a3 = v19;
  *(a3 + 8) = v20;
  *(a3 + 16) = v21;
  return result;
}

uint64_t sub_1006C30D0(uint64_t a1, void *a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v48 = a6;
  v50 = a3;
  v51 = a5;
  v9 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v49 = &v47 - v11;
  v12 = type metadata accessor for Date();
  v47 = *(v12 - 8);
  v13 = *(v47 + 64);
  __chkstk_darwin(v12);
  v15 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for UUID();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = a2[3];
  v22 = a2[4];
  sub_1000035D0(a2, v21);
  (*(*(*(v22 + 8) + 8) + 32))(v21);
  v23 = OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_playbackCoordinatorByBeaconIdentifier;
  swift_beginAccess();
  v24 = *(a1 + v23);
  if (!*(v24 + 16))
  {
    goto LABEL_7;
  }

  v25 = *(a1 + v23);

  v26 = sub_1000210EC(v20);
  if ((v27 & 1) == 0)
  {

LABEL_7:
    (*(v17 + 8))(v20, v16);
    goto LABEL_8;
  }

  v28 = *(v24 + 56) + 24 * v26;
  v29 = *v28;
  v30 = *(v28 + 8);
  v31 = *(v28 + 16);
  sub_1004E39C8(*v28, v30, v31);
  (*(v17 + 8))(v20, v16);

  if (v31)
  {

    if (v30)
    {
      *v50 = 3;
      v32 = *a4;
      *a4 = v30;
LABEL_9:

      v34 = v51;
      sub_10000B3A8(v51, &qword_1016980D0, &unk_10138F3B0);
      return (*(v17 + 56))(v34, 1, 1, v16);
    }

LABEL_8:
    *v50 = 2;
    v33 = *a4;
    *a4 = 0;
    goto LABEL_9;
  }

  v36 = *(v29 + 56);
  sub_100008BB8(0, &unk_1016AF850, SPBeaconTaskInformation_ptr);
  v37 = v29;
  OS_dispatch_queue.sync<A>(execute:)();
  v38 = v52;
  v39 = [v52 state];
  *v50 = v39;
  v40 = [v38 lastUpdated];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  (*(v47 + 40))(v48, v15, v12);
  v41 = [v38 error];
  v42 = *a4;
  *a4 = v41;

  v43 = [v38 commandIdentifier];
  if (v43)
  {
    v44 = v49;
    v45 = v43;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v46 = 0;
    v38 = v45;
  }

  else
  {
    v46 = 1;
    v44 = v49;
  }

  sub_1001E61D8(v37, v30, 0);
  (*(v17 + 56))(v44, v46, 1, v16);
  return sub_10002311C(v44, v51, &qword_1016980D0, &unk_10138F3B0);
}

uint64_t sub_1006C3530(uint64_t a1, uint64_t a2, void *a3)
{
  *(v3 + 16) = a1;
  v5 = a3[3];
  v4 = a3[4];
  v6 = sub_1000035D0(a3, v5);
  v7 = swift_task_alloc();
  *(v3 + 24) = v7;
  *v7 = v3;
  v7[1] = sub_1006C35FC;

  return sub_100A13778(v6, v5, v4);
}

uint64_t sub_1006C35FC(uint64_t a1)
{
  v2 = *(*v1 + 24);
  v4 = *v1;
  *(*v1 + 32) = a1;

  return _swift_task_switch(sub_1006C36FC, 0, 0);
}

uint64_t sub_1006C371C(uint64_t a1, uint64_t a2)
{
  static os_log_type_t.info.getter();
  if (qword_101695028 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_10138BBE0;
  v16 = *v2;
  sub_1000BC4D4(&qword_1016C1A50, &unk_1013A08C8);
  v6 = String.init<A>(describing:)();
  v8 = v7;
  *(v5 + 56) = &type metadata for String;
  v9 = sub_100008C00();
  *(v5 + 32) = v6;
  *(v5 + 40) = v8;
  *(v5 + 96) = &type metadata for String;
  *(v5 + 104) = v9;
  *(v5 + 64) = v9;
  *(v5 + 72) = 0xD000000000000017;
  *(v5 + 80) = 0x800000010135CA10;
  os_log(_:dso:log:_:_:)();

  sub_1000BC4D4(&unk_1016AA5B0, &unk_10138C200);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_101385D80;
  v11 = SPBeaconTypeDurian;
  *(inited + 32) = SPBeaconTypeDurian;
  v12 = v11;
  v13 = sub_100B11268(inited);
  swift_setDeallocating();
  sub_100721D04(inited + 32, type metadata accessor for SPBeaconType);
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;

  sub_10000AC0C(v13, 0, 0, sub_10071E9CC, v14);
}

uint64_t sub_1006C3960(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v42 = a3;
  v43 = a2;
  if ((a1 & 0xC000000000000001) == 0)
  {
    v9 = a2;
    v23 = *(a1 + 32);
    v24 = v23 & 0x3F;
    v4 = ((1 << v23) + 63) >> 6;
    v7 = 8 * v4;

    if (v24 <= 0xD)
    {
      goto LABEL_22;
    }

    goto LABEL_40;
  }

  v4 = &_swiftEmptySetSingleton;
  v46 = &_swiftEmptySetSingleton;

  __CocoaSet.makeIterator()();
  v5 = __CocoaSet.Iterator.next()();
  if (!v5)
  {
LABEL_20:

LABEL_37:
    v9 = v43;
    goto LABEL_38;
  }

  v6 = v5;
  v7 = sub_100008BB8(0, &unk_1016BC050, SPBeacon_ptr);
  v8 = v6;
  v9 = 1;
  while (1)
  {
    v44 = v8;
    swift_dynamicCast();
    v10 = [v45 role];
    if (v10)
    {
      break;
    }

LABEL_5:
    v8 = __CocoaSet.Iterator.next()();
    if (!v8)
    {
      goto LABEL_20;
    }
  }

  v11 = v45;
  v12 = *(v4 + 16);
  if (*(v4 + 24) <= v12)
  {
    sub_100DF76BC(v12 + 1);
  }

  v4 = v46;
  v3 = v45;
  v13 = NSObject._rawHashValue(seed:)(v46[5]);
  v14 = (v46 + 7);
  v15 = -1 << *(v46 + 32);
  v16 = v13 & ~v15;
  v17 = v16 >> 6;
  if (((-1 << v16) & ~v46[(v16 >> 6) + 7]) != 0)
  {
    v18 = __clz(__rbit64((-1 << v16) & ~v46[(v16 >> 6) + 7])) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_19:
    *&v14[(v18 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v18;
    *(*(v4 + 48) + 8 * v18) = v11;
    ++*(v4 + 16);
    goto LABEL_5;
  }

  v19 = 0;
  v20 = (63 - v15) >> 6;
  while (++v17 != v20 || (v19 & 1) == 0)
  {
    v21 = v17 == v20;
    if (v17 == v20)
    {
      v17 = 0;
    }

    v19 |= v21;
    v22 = *&v14[8 * v17];
    if (v22 != -1)
    {
      v18 = __clz(__rbit64(~v22)) + (v17 << 6);
      goto LABEL_19;
    }
  }

  __break(1u);
  while (1)
  {
    __break(1u);
LABEL_40:
    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
    if ((isStackAllocationSafe & 1) == 0)
    {
      break;
    }

LABEL_22:
    v39 = &v39;
    v40 = v4;
    __chkstk_darwin(isStackAllocationSafe);
    v26 = &v39 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v26, v7);
    v41 = 0;
    v27 = 0;
    v9 = (v3 + 56);
    v28 = 1 << v3[32];
    v29 = -1;
    if (v28 < 64)
    {
      v29 = ~(-1 << v28);
    }

    v4 = v29 & *(v3 + 7);
    v30 = (v28 + 63) >> 6;
    while (v4)
    {
      v31 = __clz(__rbit64(v4));
      v4 &= v4 - 1;
LABEL_32:
      v7 = v31 | (v27 << 6);
      v34 = *(*(v3 + 6) + 8 * v7);
      v35 = [v34 role];

      if (v35)
      {

        *&v26[(v7 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v7;
        if (__OFADD__(v41++, 1))
        {
          __break(1u);
LABEL_36:
          v4 = sub_10060D044(v26, v40, v41, v3);
          goto LABEL_37;
        }
      }
    }

    v32 = v27;
    while (1)
    {
      v27 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        break;
      }

      if (v27 >= v30)
      {
        goto LABEL_36;
      }

      v33 = *(v9 + 8 * v27);
      ++v32;
      if (v33)
      {
        v31 = __clz(__rbit64(v33));
        v4 = (v33 - 1) & v33;
        goto LABEL_32;
      }
    }
  }

  v38 = swift_slowAlloc();
  v4 = sub_1006EACD0(v38, v4, v3, sub_1006C3D8C);

LABEL_38:
  (v9)(v4);
}

BOOL sub_1006C3D8C(id *a1)
{
  v1 = [*a1 role];
  v2 = v1;
  if (v1)
  {
  }

  return v2 != 0;
}

uint64_t sub_1006C3DDC(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1000BC4D4(&qword_1016A7808, &qword_1013D6750);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = (v22 - v11);
  sub_1000D2A70(a1, v22 - v11, &qword_1016A7808, &qword_1013D6750);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = *v12;
    static os_log_type_t.error.getter();
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_101385D80;
    v22[1] = v13;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v15 = String.init<A>(describing:)();
    v17 = v16;
    *(v14 + 56) = &type metadata for String;
    *(v14 + 64) = sub_100008C00();
    *(v14 + 32) = v15;
    *(v14 + 40) = v17;
    sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
    v18 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)();

    (a2)(0);
  }

  else
  {
    sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
    v20 = static OS_os_log.default.getter();
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    v21 = sub_10003EB74(a5, *(a4 + 280));
    a2();

    return sub_10000B3A8(v12, &qword_1016A7808, &qword_1013D6750);
  }
}

id sub_1006C4044(uint64_t a1, id a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = [a2 name];
  if (v10)
  {

    v11 = (a1 + *(type metadata accessor for BeaconNamingRecord() + 32));
    v12 = v11[1];

    *v11 = a3;
    v11[1] = a4;
  }

  v13 = a5[3];
  v14 = a5[4];
  sub_1000035D0(a5, v13);
  v15 = (*(v14 + 208))([a2 roleId], v13, v14);
  if (v15)
  {
    v16 = v15;
    v17 = [v15 roleId];

    *(a1 + *(type metadata accessor for BeaconNamingRecord() + 28)) = v17;
  }

  result = [a2 emoji];
  if (result)
  {
    v19 = result;
    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v21;

    v23 = (a1 + *(type metadata accessor for BeaconNamingRecord() + 36));
    v24 = v23[1];

    *v23 = v20;
    v23[1] = v22;
  }

  return result;
}

uint64_t sub_1006C4188(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t), void (*a5)(uint64_t))
{
  v99 = a4;
  v100 = a5;
  v98 = a2;
  v7 = sub_1000BC4D4(&qword_1016A5970, &unk_1013B3470);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v93 = &v79 - v9;
  v96 = sub_1000BC4D4(&qword_1016A7828, &unk_1013D7340);
  v94 = *(v96 - 8);
  v10 = *(v94 + 64);
  __chkstk_darwin(v96);
  v92 = &v79 - v11;
  v86 = type metadata accessor for URL();
  v89 = *(v86 - 8);
  v12 = *(v89 + 64);
  v13 = __chkstk_darwin(v86);
  v88 = &v79 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v87 = &v79 - v16;
  __chkstk_darwin(v15);
  v18 = &v79 - v17;
  v19 = sub_1000BC4D4(&qword_1016A7830, &unk_1013D69E0);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v91 = &v79 - v21;
  v22 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22 - 8);
  v25 = &v79 - v24;
  v26 = type metadata accessor for OwnedBeaconRecord();
  v97 = *(v26 - 8);
  v27 = *(v97 + 64);
  v28 = __chkstk_darwin(v26);
  v90 = &v79 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v95 = &v79 - v29;
  v30 = sub_1000BC4D4(&qword_1016A7808, &qword_1013D6750);
  v31 = *(*(v30 - 8) + 64);
  __chkstk_darwin(v30);
  v33 = (&v79 - v32);
  sub_1000D2A70(a1, &v79 - v32, &qword_1016A7808, &qword_1013D6750);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v34 = *v33;
    static os_log_type_t.error.getter();
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_101385D80;
    v103[0] = v34;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v36 = String.init<A>(describing:)();
    v38 = v37;
    *(v35 + 56) = &type metadata for String;
    *(v35 + 64) = sub_100008C00();
    *(v35 + 32) = v36;
    *(v35 + 40) = v38;
    sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
    v39 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)();

    v99(0);
  }

  else
  {
    static os_log_type_t.default.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    os_log(_:dso:log:_:_:)();
    v41 = *(v98 + 280);
    sub_100A8306C(13);
    type metadata accessor for Transaction();
    static Transaction.named<A>(_:with:)();
    v42 = *(*(v41 + 200) + 48);

    PassthroughSubject.send(_:)();

    sub_100025020(a3, &v101);
    if (v102)
    {
      sub_10000A748(&v101, v103);
      sub_10001F280(v103, &v101);
      sub_1000BC4D4(&unk_1016AA470, &qword_10139FD30);
      v43 = swift_dynamicCast();
      v44 = *(v97 + 56);
      if (v43)
      {
        v81 = v27;
        v84 = v33;
        v85 = 0;
        v44(v25, 0, 1, v26);
        v45 = v95;
        sub_10002AB74(v25, v95, type metadata accessor for OwnedBeaconRecord);
        sub_100A3AD6C(v45);
        v98 = v45 + *(v26 + 20);
        v46 = *(v41 + 168);
        if (qword_101694EB8 != -1)
        {
          swift_once();
        }

        v47 = v86;
        v48 = sub_1000076D4(v86, qword_10177C0D8);
        v49 = v89;
        v50 = *(v89 + 16);
        v51 = v18;
        v83 = v18;
        v50(v18, v48, v47);
        v52 = v87;
        v50(v87, v51, v47);
        v53 = *(v96 + 40);
        v82 = v53;
        v54 = v96;
        v80 = type metadata accessor for DirectorySequence();
        v55 = *(*(v80 - 8) + 56);
        v56 = &v92[v53];
        v57 = v92;
        v55(v56, 1, 1, v80);
        v50(v57, v52, v47);
        *(v57 + *(v54 + 36)) = v46;
        v50(v88, v52, v47);

        v58 = v93;
        DirectorySequence.init(at:includingPropertiesForKeys:options:)();
        v59 = *(v49 + 8);
        v59(v52, v47);
        v59(v83, v47);
        v55(v58, 0, 1, v80);
        sub_10002311C(v58, v57 + v82, &qword_1016A5970, &unk_1013B3470);
        v60 = *(v94 + 56);
        v61 = v91;
        v62 = v96;
        v60(v91, 1, 1, v96);
        sub_10000B3A8(v61, &qword_1016A7838, &unk_1013EB250);
        sub_1000D2AD8(v57, v61, &qword_1016A7828, &unk_1013D7340);
        v63 = (v60)(v61, 0, 1, v62);
        __chkstk_darwin(v63);
        v64 = v98;
        *(&v79 - 2) = 0;
        *(&v79 - 1) = v64;
        sub_100E6B40C(sub_10071F7A0, (&v79 - 4));
        v66 = v65;
        type metadata accessor for Transaction();
        v67 = v95;
        v68 = v90;
        sub_100721C9C(v95, v90, type metadata accessor for OwnedBeaconRecord);
        v69 = (*(v97 + 80) + 24) & ~*(v97 + 80);
        v70 = (v81 + v69 + 7) & 0xFFFFFFFFFFFFFFF8;
        v71 = swift_allocObject();
        *(v71 + 16) = v66;
        sub_10002AB74(v68, v71 + v69, type metadata accessor for OwnedBeaconRecord);
        v72 = (v71 + v70);
        v73 = v100;
        *v72 = v99;
        v72[1] = v73;

        static Transaction.asyncTask(name:block:)();

        sub_100007BAC(v103);
        sub_100721D04(v67, type metadata accessor for OwnedBeaconRecord);
        v33 = v84;
      }

      else
      {
        v44(v25, 1, 1, v26);
        sub_10000B3A8(v25, &unk_1016A9A20, &qword_10138B280);
        v99(1);
        sub_100007BAC(v103);
      }
    }

    else
    {
      sub_10000B3A8(&v101, &qword_101696920, &unk_10138B200);
      static os_log_type_t.error.getter();
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v74 = swift_allocObject();
      *(v74 + 16) = xmmword_101385D80;
      v75 = UUID.uuidString.getter();
      v77 = v76;
      *(v74 + 56) = &type metadata for String;
      *(v74 + 64) = sub_100008C00();
      *(v74 + 32) = v75;
      *(v74 + 40) = v77;
      sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
      v78 = static OS_os_log.default.getter();
      os_log(_:dso:log:_:_:)();

      v99(0);
    }

    return sub_10000B3A8(v33, &qword_1016A7808, &qword_1013D6750);
  }
}

uint64_t sub_1006C4D10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for OwnedBeaconRecord();
  v4[6] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v4[7] = swift_task_alloc();
  v4[8] = swift_task_alloc();
  v4[9] = swift_task_alloc();
  v7 = type metadata accessor for OwnerSharingCircle();
  v4[10] = v7;
  v8 = *(v7 - 8);
  v4[11] = v8;
  v9 = *(v8 + 64) + 15;
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  v10 = async function pointer to daemon.getter[1];
  v11 = swift_task_alloc();
  v4[14] = v11;
  *v11 = v4;
  v11[1] = sub_1006C4E58;

  return daemon.getter();
}

uint64_t sub_1006C4E58(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 112);
  v12 = *v1;
  v3[15] = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  v3[16] = v6;
  v7 = type metadata accessor for Daemon();
  v3[17] = v7;
  v8 = type metadata accessor for BeaconSharingService(0);
  v9 = sub_100003E8C(&qword_1016AA400, &type metadata accessor for Daemon);
  v3[18] = v9;
  v10 = sub_100003E8C(&unk_101696950, type metadata accessor for BeaconSharingService);
  *v6 = v12;
  v6[1] = sub_1006C5038;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_1006C5038(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 128);
  v5 = *v2;
  *(*v2 + 152) = a1;

  v6 = *(v3 + 120);
  if (v1)
  {

    v7 = sub_1006C5188;
  }

  else
  {

    v7 = sub_1006C52CC;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1006C5188()
{
  if (qword_101694B80 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177B7F8);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "No BeaconSharingService!", v4, 2u);
  }

  v6 = v0[12];
  v5 = v0[13];
  v8 = v0[8];
  v7 = v0[9];
  v9 = v0[7];

  v10 = v0[1];

  return v10();
}

uint64_t sub_1006C52CC()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  *(v0 + 160) = v2;
  if (v2)
  {
    v3 = *(v0 + 88);
    v4 = *(v3 + 80);
    *(v0 + 248) = v4;
    *(v0 + 168) = *(v3 + 72);
    *(v0 + 176) = 0;
    sub_100721C9C(v1 + ((v4 + 32) & ~v4), *(v0 + 104), type metadata accessor for OwnerSharingCircle);
    v5 = swift_task_alloc();
    *(v0 + 184) = v5;
    *v5 = v0;
    v5[1] = sub_1006C5420;
    v6 = *(v0 + 152);
    v7 = *(v0 + 104);

    return sub_1001942F0(v7, 0);
  }

  else
  {
    v9 = async function pointer to daemon.getter[1];
    v10 = swift_task_alloc();
    *(v0 + 200) = v10;
    *v10 = v0;
    v10[1] = sub_1006C5534;

    return daemon.getter();
  }
}

uint64_t sub_1006C5420()
{
  v2 = *(*v1 + 184);
  v5 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v3 = sub_1006C5DC0;
  }

  else
  {
    v3 = sub_1006C588C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1006C5534(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 200);
  v5 = *v1;
  v3[26] = a1;

  v6 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v7 = swift_task_alloc();
  v3[27] = v7;
  v8 = type metadata accessor for CircleTrustService();
  v9 = sub_100003E8C(&unk_101698CE0, type metadata accessor for CircleTrustService);
  *v7 = v5;
  v7[1] = sub_1006C56E8;
  v10 = v3[18];
  v11 = v3[17];

  return ActorServiceDaemon.getService<A>()(v11, v8, v10, v9);
}

uint64_t sub_1006C56E8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 216);
  v6 = *v2;
  *(*v2 + 224) = a1;

  if (v1)
  {
    v7 = v4[26];

    return _swift_task_switch(sub_1006C6248, 0, 0);
  }

  else
  {
    v8 = v4[26];

    v9 = swift_task_alloc();
    v4[29] = v9;
    *v9 = v6;
    v9[1] = sub_1006C59FC;
    v10 = v4[2];

    return sub_100D276D8(v10);
  }
}

uint64_t sub_1006C588C()
{
  sub_100721D04(*(v0 + 104), type metadata accessor for OwnerSharingCircle);
  v1 = *(v0 + 176) + 1;
  if (v1 == *(v0 + 160))
  {
    v2 = async function pointer to daemon.getter[1];
    v3 = swift_task_alloc();
    *(v0 + 200) = v3;
    *v3 = v0;
    v3[1] = sub_1006C5534;

    return daemon.getter();
  }

  else
  {
    *(v0 + 176) = v1;
    sub_100721C9C(*(v0 + 16) + ((*(v0 + 248) + 32) & ~*(v0 + 248)) + *(v0 + 168) * v1, *(v0 + 104), type metadata accessor for OwnerSharingCircle);
    v4 = swift_task_alloc();
    *(v0 + 184) = v4;
    *v4 = v0;
    v4[1] = sub_1006C5420;
    v5 = *(v0 + 152);
    v6 = *(v0 + 104);

    return sub_1001942F0(v6, 0);
  }
}

uint64_t sub_1006C59FC()
{
  v2 = *(*v1 + 232);
  v5 = *v1;
  *(*v1 + 240) = v0;

  if (v0)
  {
    v3 = sub_1006C64F0;
  }

  else
  {
    v3 = sub_1006C5B10;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1006C5B10()
{
  v27 = v0;
  v1 = *(v0 + 224);

  if (qword_101694B80 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 72);
  v3 = *(v0 + 24);
  v4 = type metadata accessor for Logger();
  sub_1000076D4(v4, qword_10177B7F8);
  sub_100721C9C(v3, v2, type metadata accessor for OwnedBeaconRecord);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 72);
  if (v7)
  {
    v9 = *(v0 + 48);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v26 = v11;
    *v10 = 141558275;
    *(v10 + 4) = 1752392040;
    *(v10 + 12) = 2081;
    v12 = *(v9 + 20);
    type metadata accessor for UUID();
    sub_100003E8C(&qword_101696930, &type metadata accessor for UUID);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;
    sub_100721D04(v8, type metadata accessor for OwnedBeaconRecord);
    v16 = sub_1000136BC(v13, v15, &v26);

    *(v10 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v5, v6, "Successfully pushed record update to owner circle shares: %{private,mask.hash}s.", v10, 0x16u);
    sub_100007BAC(v11);
  }

  else
  {

    sub_100721D04(v8, type metadata accessor for OwnedBeaconRecord);
  }

  v17 = *(v0 + 152);
  v18 = *(v0 + 40);
  (*(v0 + 32))(1);

  v20 = *(v0 + 96);
  v19 = *(v0 + 104);
  v22 = *(v0 + 64);
  v21 = *(v0 + 72);
  v23 = *(v0 + 56);

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_1006C5DC0()
{
  v38 = v0;
  if (qword_101694B80 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 96);
  v2 = *(v0 + 104);
  v3 = *(v0 + 64);
  v4 = *(v0 + 24);
  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_10177B7F8);
  sub_100721C9C(v4, v3, type metadata accessor for OwnedBeaconRecord);
  sub_100721C9C(v2, v1, type metadata accessor for OwnerSharingCircle);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();
  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 192);
  v11 = *(v0 + 96);
  v10 = *(v0 + 104);
  if (v8)
  {
    v35 = *(v0 + 80);
    v12 = *(v0 + 64);
    v13 = *(v0 + 48);
    v14 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    *v14 = 141558787;
    *(v14 + 4) = 1752392040;
    *(v14 + 12) = 2081;
    v15 = *(v13 + 20);
    type metadata accessor for UUID();
    sub_100003E8C(&qword_101696930, &type metadata accessor for UUID);
    v36 = v10;
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    v18 = v17;
    sub_100721D04(v12, type metadata accessor for OwnedBeaconRecord);
    v19 = sub_1000136BC(v16, v18, &v37);

    *(v14 + 14) = v19;
    *(v14 + 22) = 2160;
    *(v14 + 24) = 1752392040;
    *(v14 + 32) = 2081;
    v20 = v11 + *(v35 + 20);
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    v23 = v22;
    sub_100721D04(v11, type metadata accessor for OwnerSharingCircle);
    v24 = sub_1000136BC(v21, v23, &v37);

    *(v14 + 34) = v24;
    _os_log_impl(&_mh_execute_header, v6, v7, "Failed to update name record in keydrop: %{private,mask.hash}s, shareId: %{private,mask.hash}s.", v14, 0x2Au);
    swift_arrayDestroy();

    v25 = v36;
  }

  else
  {
    v26 = *(v0 + 64);
    v27 = *(v0 + 192);

    sub_100721D04(v11, type metadata accessor for OwnerSharingCircle);
    sub_100721D04(v26, type metadata accessor for OwnedBeaconRecord);
    v25 = v10;
  }

  sub_100721D04(v25, type metadata accessor for OwnerSharingCircle);
  v28 = *(v0 + 176) + 1;
  if (v28 == *(v0 + 160))
  {
    v29 = async function pointer to daemon.getter[1];
    v30 = swift_task_alloc();
    *(v0 + 200) = v30;
    *v30 = v0;
    v30[1] = sub_1006C5534;

    return daemon.getter();
  }

  else
  {
    *(v0 + 176) = v28;
    sub_100721C9C(*(v0 + 16) + ((*(v0 + 248) + 32) & ~*(v0 + 248)) + *(v0 + 168) * v28, *(v0 + 104), type metadata accessor for OwnerSharingCircle);
    v31 = swift_task_alloc();
    *(v0 + 184) = v31;
    *v31 = v0;
    v31[1] = sub_1006C5420;
    v32 = *(v0 + 152);
    v33 = *(v0 + 104);

    return sub_1001942F0(v33, 0);
  }
}

uint64_t sub_1006C6248()
{
  v26 = v0;
  if (qword_101694B80 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 72);
  v2 = *(v0 + 24);
  v3 = type metadata accessor for Logger();
  sub_1000076D4(v3, qword_10177B7F8);
  sub_100721C9C(v2, v1, type metadata accessor for OwnedBeaconRecord);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 72);
  if (v6)
  {
    v8 = *(v0 + 48);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v25 = v10;
    *v9 = 141558275;
    *(v9 + 4) = 1752392040;
    *(v9 + 12) = 2081;
    v11 = *(v8 + 20);
    type metadata accessor for UUID();
    sub_100003E8C(&qword_101696930, &type metadata accessor for UUID);
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    v14 = v13;
    sub_100721D04(v7, type metadata accessor for OwnedBeaconRecord);
    v15 = sub_1000136BC(v12, v14, &v25);

    *(v9 + 14) = v15;
    _os_log_impl(&_mh_execute_header, v4, v5, "Successfully pushed record update to owner circle shares: %{private,mask.hash}s.", v9, 0x16u);
    sub_100007BAC(v10);
  }

  else
  {

    sub_100721D04(v7, type metadata accessor for OwnedBeaconRecord);
  }

  v16 = *(v0 + 152);
  v17 = *(v0 + 40);
  (*(v0 + 32))(1);

  v19 = *(v0 + 96);
  v18 = *(v0 + 104);
  v21 = *(v0 + 64);
  v20 = *(v0 + 72);
  v22 = *(v0 + 56);

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_1006C64F0()
{
  v45 = v0;
  p_weak_ivar_lyt = &BeaconKeyManager.weak_ivar_lyt;
  if (qword_101694B80 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 56);
  v3 = *(v0 + 24);
  v43 = type metadata accessor for Logger();
  sub_1000076D4(v43, qword_10177B7F8);
  sub_100721C9C(v3, v2, type metadata accessor for OwnedBeaconRecord);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();
  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 240);
  v8 = *(v0 + 224);
  v9 = &unk_10138A000;
  v10 = *(v0 + 56);
  if (v6)
  {
    v11 = *(v0 + 48);
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v44 = v13;
    *v12 = 141558275;
    *(v12 + 4) = 1752392040;
    *(v12 + 12) = 2081;
    v14 = *(v11 + 20);
    type metadata accessor for UUID();
    sub_100003E8C(&qword_101696930, &type metadata accessor for UUID);
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v16;
    sub_100721D04(v10, type metadata accessor for OwnedBeaconRecord);
    v18 = sub_1000136BC(v15, v17, &v44);

    *(v12 + 14) = v18;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed to send name record updates to members: %{private,mask.hash}s.", v12, 0x16u);
    sub_100007BAC(v13);
    p_weak_ivar_lyt = (&BeaconKeyManager + 56);

    v9 = &unk_10138A000;
  }

  else
  {
    v19 = *(v0 + 224);

    sub_100721D04(v10, type metadata accessor for OwnedBeaconRecord);
  }

  if (p_weak_ivar_lyt[368] != -1)
  {
    swift_once();
  }

  v20 = *(v0 + 72);
  v21 = *(v0 + 24);
  sub_1000076D4(v43, qword_10177B7F8);
  sub_100721C9C(v21, v20, type metadata accessor for OwnedBeaconRecord);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();
  v24 = os_log_type_enabled(v22, v23);
  v25 = *(v0 + 72);
  if (v24)
  {
    v26 = *(v0 + 48);
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v44 = v28;
    *v27 = v9[485];
    *(v27 + 4) = 1752392040;
    *(v27 + 12) = 2081;
    v29 = *(v26 + 20);
    type metadata accessor for UUID();
    sub_100003E8C(&qword_101696930, &type metadata accessor for UUID);
    v30 = dispatch thunk of CustomStringConvertible.description.getter();
    v32 = v31;
    sub_100721D04(v25, type metadata accessor for OwnedBeaconRecord);
    v33 = sub_1000136BC(v30, v32, &v44);

    *(v27 + 14) = v33;
    _os_log_impl(&_mh_execute_header, v22, v23, "Successfully pushed record update to owner circle shares: %{private,mask.hash}s.", v27, 0x16u);
    sub_100007BAC(v28);
  }

  else
  {

    sub_100721D04(v25, type metadata accessor for OwnedBeaconRecord);
  }

  v34 = *(v0 + 152);
  v35 = *(v0 + 40);
  (*(v0 + 32))(1);

  v37 = *(v0 + 96);
  v36 = *(v0 + 104);
  v39 = *(v0 + 64);
  v38 = *(v0 + 72);
  v40 = *(v0 + 56);

  v41 = *(v0 + 8);

  return v41();
}

uint64_t sub_1006C69B8(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4)
{
  v7 = sub_1000BC4D4(&qword_1016A7808, &qword_1013D6750);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = (v19 - v9);
  sub_1000D2A70(a1, v19 - v9, &qword_1016A7808, &qword_1013D6750);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = *v10;
    static os_log_type_t.error.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_101385D80;
    v19[1] = v11;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v13 = String.init<A>(describing:)();
    v15 = v14;
    *(v12 + 56) = &type metadata for String;
    *(v12 + 64) = sub_100008C00();
    *(v12 + 32) = v13;
    *(v12 + 40) = v15;
    os_log(_:dso:log:_:_:)();

    a2(0);
  }

  else
  {
    static os_log_type_t.default.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    os_log(_:dso:log:_:_:)();
    a2(1);
    v17 = *(a4 + 280);
    sub_100A8306C(13);
    type metadata accessor for Transaction();
    static Transaction.named<A>(_:with:)();
    v18 = *(*(v17 + 200) + 48);

    PassthroughSubject.send(_:)();

    return sub_10000B3A8(v10, &qword_1016A7808, &qword_1013D6750);
  }
}

uint64_t sub_1006C6C94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[7] = a8;
  v8[8] = v23;
  v8[5] = a6;
  v8[6] = a7;
  v8[3] = a4;
  v8[4] = a5;
  v9 = type metadata accessor for Date();
  v8[9] = v9;
  v10 = *(v9 - 8);
  v8[10] = v10;
  v8[11] = *(v10 + 64);
  v8[12] = swift_task_alloc();
  v11 = type metadata accessor for KeySyncMetadata();
  v8[13] = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  v8[14] = swift_task_alloc();
  v13 = type metadata accessor for UUID();
  v8[15] = v13;
  v14 = *(v13 - 8);
  v8[16] = v14;
  v8[17] = *(v14 + 64);
  v8[18] = swift_task_alloc();
  v8[19] = swift_task_alloc();
  v8[20] = swift_task_alloc();
  v15 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  v8[21] = v15;
  v16 = *(*(v15 - 8) + 64) + 15;
  v8[22] = swift_task_alloc();
  v17 = type metadata accessor for OwnedBeaconRecord();
  v8[23] = v17;
  v18 = *(v17 - 8);
  v8[24] = v18;
  v8[25] = *(v18 + 64);
  v8[26] = swift_task_alloc();
  v8[27] = swift_task_alloc();
  v19 = async function pointer to daemon.getter[1];
  v20 = swift_task_alloc();
  v8[28] = v20;
  *v20 = v8;
  v20[1] = sub_1006C6EF4;

  return daemon.getter();
}

uint64_t sub_1006C6EF4(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 224);
  v12 = *v1;
  v3[29] = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  v3[30] = v6;
  v7 = type metadata accessor for Daemon();
  v3[31] = v7;
  v8 = type metadata accessor for ObservationStoreService();
  v9 = sub_100003E8C(&qword_1016AA400, &type metadata accessor for Daemon);
  v3[32] = v9;
  v10 = sub_100003E8C(&qword_1016AA450, type metadata accessor for ObservationStoreService);
  *v6 = v12;
  v6[1] = sub_1006C70D4;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_1006C70D4(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 240);
  v6 = *v2;
  *(*v2 + 264) = a1;

  v7 = *(v3 + 232);
  if (v1)
  {

    return _swift_task_switch(sub_1006C7280, 0, 0);
  }

  else
  {

    v8 = async function pointer to daemon.getter[1];
    v9 = swift_task_alloc();
    *(v4 + 272) = v9;
    *v9 = v6;
    v9[1] = sub_1006C7408;

    return daemon.getter();
  }
}

uint64_t sub_1006C7280()
{
  if (qword_101694B80 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177B7F8);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "No ObservationStoreService.", v4, 2u);
  }

  v5 = v0[3];
  v6 = v0[4];

  v5(0);
  v8 = v0[26];
  v7 = v0[27];
  v9 = v0[22];
  v11 = v0[19];
  v10 = v0[20];
  v12 = v0[18];
  v13 = v0[14];
  v14 = v0[12];

  v15 = v0[1];

  return v15();
}

uint64_t sub_1006C7408(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 272);
  v5 = *v1;
  v3[35] = a1;

  v6 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v7 = swift_task_alloc();
  v3[36] = v7;
  v8 = type metadata accessor for BeaconStoreActor();
  v9 = sub_100003E8C(&qword_101698D20, type metadata accessor for BeaconStoreActor);
  *v7 = v5;
  v7[1] = sub_1006C75BC;
  v10 = v3[32];
  v11 = v3[31];

  return ActorServiceDaemon.getService<A>()(v11, v8, v10, v9);
}

uint64_t sub_1006C75BC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 288);
  v6 = *v2;
  *(*v2 + 296) = a1;

  v7 = *(v4 + 280);
  if (v1)
  {

    v8 = sub_1006C7714;
    v9 = 0;
  }

  else
  {

    v8 = sub_1006C78A8;
    v9 = a1;
  }

  return _swift_task_switch(v8, v9, 0);
}

uint64_t sub_1006C7714()
{
  if (qword_101694B80 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177B7F8);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "No beaconStoreActor.", v4, 2u);
  }

  v5 = v0[33];
  v7 = v0[3];
  v6 = v0[4];

  v7(0);

  v9 = v0[26];
  v8 = v0[27];
  v10 = v0[22];
  v12 = v0[19];
  v11 = v0[20];
  v13 = v0[18];
  v14 = v0[14];
  v15 = v0[12];

  v16 = v0[1];

  return v16();
}

uint64_t sub_1006C78A8()
{
  v1 = *(v0 + 296);
  v2 = *(v0 + 160);
  v3 = *(v0 + 128);
  v4 = *(v0 + 120);
  v5 = *(v0 + 40);
  v6 = *(v3 + 16);
  *(v0 + 304) = v6;
  *(v0 + 312) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v2, v5, v4);
  v7 = *(v3 + 80);
  *(v0 + 400) = v7;
  v8 = (v7 + 24) & ~v7;
  v9 = swift_allocObject();
  *(v0 + 320) = v9;
  *(v9 + 16) = v1;
  v10 = *(v3 + 32);
  *(v0 + 328) = v10;
  *(v0 + 336) = (v3 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v10(v9 + v8, v2, v4);
  v11 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v12 = swift_task_alloc();
  *(v0 + 344) = v12;
  *v12 = v0;
  v12[1] = sub_1006C7A2C;
  v14 = *(v0 + 168);
  v13 = *(v0 + 176);

  return unsafeBlocking<A>(context:_:)(v13, 0xD000000000000010, 0x800000010134A8C0, sub_100721F04, v9, v14);
}

uint64_t sub_1006C7A2C()
{
  v1 = *(*v0 + 344);
  v2 = *(*v0 + 320);
  v4 = *v0;

  return _swift_task_switch(sub_1006C7B44, 0, 0);
}

uint64_t sub_1006C7B44()
{
  v50 = v0;
  v1 = *(v0 + 176);
  if ((*(*(v0 + 192) + 48))(v1, 1, *(v0 + 184)) == 1)
  {
    sub_10000B3A8(v1, &unk_1016A9A20, &qword_10138B280);
    if (qword_101694B80 != -1)
    {
      swift_once();
    }

    v3 = *(v0 + 304);
    v2 = *(v0 + 312);
    v4 = *(v0 + 144);
    v5 = *(v0 + 120);
    v6 = *(v0 + 40);
    v7 = type metadata accessor for Logger();
    sub_1000076D4(v7, qword_10177B7F8);
    v3(v4, v6, v5);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    v10 = os_log_type_enabled(v8, v9);
    v11 = *(v0 + 144);
    v12 = *(v0 + 120);
    v13 = *(v0 + 128);
    if (v10)
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v49 = v15;
      *v14 = 141558275;
      *(v14 + 4) = 1752392040;
      *(v14 + 12) = 2081;
      sub_100003E8C(&qword_101696930, &type metadata accessor for UUID);
      v16 = dispatch thunk of CustomStringConvertible.description.getter();
      v18 = v17;
      (*(v13 + 8))(v11, v12);
      v19 = sub_1000136BC(v16, v18, &v49);

      *(v14 + 14) = v19;
      _os_log_impl(&_mh_execute_header, v8, v9, "                    OwnedBeaconRecord with identifier not found - %{private,mask.hash}s", v14, 0x16u);
      sub_100007BAC(v15);
    }

    else
    {

      (*(v13 + 8))(v11, v12);
    }

    v35 = *(v0 + 296);
    v36 = *(v0 + 264);
    v37 = *(v0 + 32);
    (*(v0 + 24))(0);

    v39 = *(v0 + 208);
    v38 = *(v0 + 216);
    v40 = *(v0 + 176);
    v42 = *(v0 + 152);
    v41 = *(v0 + 160);
    v43 = *(v0 + 144);
    v44 = *(v0 + 112);
    v45 = *(v0 + 96);

    v46 = *(v0 + 8);

    return v46();
  }

  else
  {
    v21 = *(v0 + 304);
    v20 = *(v0 + 312);
    v23 = *(v0 + 112);
    v22 = *(v0 + 120);
    v24 = *(v0 + 104);
    v25 = *(v0 + 80);
    v26 = *(v0 + 48);
    v47 = *(v0 + 56);
    v48 = *(v0 + 72);
    v27 = *(v0 + 40);
    sub_10002AB74(v1, *(v0 + 216), type metadata accessor for OwnedBeaconRecord);
    v21(v23, v27, v22);
    v28 = (v23 + v24[6]);
    v28[3] = &type metadata for PrimaryIndex;
    v28[4] = sub_10002A2B8();
    *v28 = v26;
    v29 = v24[7];
    v30 = *(v25 + 16);
    *(v0 + 352) = v30;
    *(v0 + 360) = (v25 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v30(v23 + v29, v47, v48);
    *(v23 + v24[5]) = 2;
    v31 = swift_task_alloc();
    *(v0 + 368) = v31;
    *v31 = v0;
    v31[1] = sub_1006C7F60;
    v32 = *(v0 + 264);
    v33 = *(v0 + 112);

    return sub_1010CDAC4(v33);
  }
}

uint64_t sub_1006C7F60()
{
  v2 = *(*v1 + 368);
  v5 = *v1;
  *(*v1 + 376) = v0;

  if (v0)
  {
    v3 = sub_1006C883C;
  }

  else
  {
    v3 = sub_1006C8074;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1006C8074()
{
  v22 = v0;
  if (qword_101694B80 != -1)
  {
    swift_once();
  }

  v2 = v0[38];
  v1 = v0[39];
  v3 = v0[19];
  v4 = v0[15];
  v5 = v0[5];
  v6 = type metadata accessor for Logger();
  sub_1000076D4(v6, qword_10177B7F8);
  v2(v3, v5, v4);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[19];
  v11 = v0[15];
  v12 = v0[16];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v21 = v14;
    *v13 = 141558275;
    *(v13 + 4) = 1752392040;
    *(v13 + 12) = 2081;
    sub_100003E8C(&qword_101696930, &type metadata accessor for UUID);
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v16;
    (*(v12 + 8))(v10, v11);
    v18 = sub_1000136BC(v15, v17, &v21);

    *(v13 + 14) = v18;
    _os_log_impl(&_mh_execute_header, v7, v8, "Successfully updated alignment uncertainty for beacon %{private,mask.hash}s", v13, 0x16u);
    sub_100007BAC(v14);
  }

  else
  {

    (*(v12 + 8))(v10, v11);
  }

  v19 = v0[37];

  return _swift_task_switch(sub_1006C82BC, v19, 0);
}

uint64_t sub_1006C82BC()
{
  v1 = *(v0 + 296);
  v2 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v3 = swift_task_alloc();
  *(v0 + 384) = v3;
  v4 = type metadata accessor for BeaconKeyManager(0);
  *v3 = v0;
  v3[1] = sub_1006C839C;
  v5 = *(v0 + 296);

  return unsafeBlocking<A>(context:_:)(v0 + 16, 0xD000000000000010, 0x800000010134A8C0, sub_1000D27E4, v5, v4);
}

uint64_t sub_1006C839C()
{
  v1 = *(*v0 + 384);
  v2 = *(*v0 + 296);
  v4 = *v0;

  return _swift_task_switch(sub_1006C84B4, v2, 0);
}

uint64_t sub_1006C84D8()
{
  v44 = *(v0 + 392);
  v45 = *(v0 + 376);
  v33 = *(v0 + 360);
  v31 = *(v0 + 352);
  v43 = *(v0 + 336);
  v42 = *(v0 + 328);
  v1 = *(v0 + 400);
  v2 = *(v0 + 304);
  v27 = *(v0 + 312);
  v46 = *(v0 + 264);
  v47 = *(v0 + 296);
  v41 = *(v0 + 216);
  v28 = *(v0 + 192);
  v29 = *(v0 + 200);
  v3 = *(v0 + 160);
  v36 = v3;
  v30 = *(v0 + 136);
  v4 = *(v0 + 120);
  v34 = *(v0 + 208);
  v35 = v4;
  v48 = *(v0 + 112);
  v5 = *(v0 + 96);
  v32 = *(v0 + 88);
  v7 = *(v0 + 72);
  v6 = *(v0 + 80);
  v8 = *(v0 + 56);
  v37 = *(v0 + 64);
  v9 = *(v0 + 40);
  v40 = *(v0 + 32);
  v38 = *(v0 + 48);
  v39 = *(v0 + 24);
  sub_100721C9C(v41, v34, type metadata accessor for OwnedBeaconRecord);
  v2(v3, v9, v4);
  v31(v5, v8, v7);
  v10 = (*(v28 + 80) + 24) & ~*(v28 + 80);
  v11 = (v29 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v1 + v11 + 8) & ~v1;
  v13 = (v30 + *(v6 + 80) + v12) & ~*(v6 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = v37;
  sub_10002AB74(v34, v14 + v10, type metadata accessor for OwnedBeaconRecord);
  *(v14 + v11) = v38;
  v42(v14 + v12, v36, v35);
  (*(v6 + 32))(v14 + v13, v5, v7);
  v15 = (v14 + ((v32 + v13 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v15 = v39;
  v15[1] = v40;
  type metadata accessor for Transaction();
  v16 = swift_task_alloc();
  *(v16 + 16) = v44;
  *(v16 + 24) = v41;
  *(v16 + 32) = 2;
  *(v16 + 40) = sub_10071E4C8;
  *(v16 + 48) = v14;

  static Transaction.named<A>(_:with:)();

  sub_100721D04(v48, type metadata accessor for KeySyncMetadata);
  sub_100721D04(v41, type metadata accessor for OwnedBeaconRecord);
  v18 = *(v0 + 208);
  v17 = *(v0 + 216);
  v19 = *(v0 + 176);
  v21 = *(v0 + 152);
  v20 = *(v0 + 160);
  v22 = *(v0 + 144);
  v23 = *(v0 + 112);
  v24 = *(v0 + 96);

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_1006C883C()
{
  v1 = v0[37];
  v2 = v0[27];
  v3 = v0[14];

  sub_100721D04(v3, type metadata accessor for KeySyncMetadata);
  sub_100721D04(v2, type metadata accessor for OwnedBeaconRecord);
  if (qword_101694B80 != -1)
  {
    swift_once();
  }

  v4 = v0[47];
  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_10177B7F8);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[47];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138543362;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v11;
    *v10 = v11;
    _os_log_impl(&_mh_execute_header, v6, v7, "Failed to update key sync %{public}@.", v9, 0xCu);
    sub_10000B3A8(v10, &qword_10169BB30, &unk_10138B3C0);
  }

  v12 = v0[47];
  v13 = v0[33];
  v15 = v0[3];
  v14 = v0[4];

  v15(0);

  v17 = v0[26];
  v16 = v0[27];
  v18 = v0[22];
  v20 = v0[19];
  v19 = v0[20];
  v21 = v0[18];
  v22 = v0[14];
  v23 = v0[12];

  v24 = v0[1];

  return v24();
}