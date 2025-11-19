uint64_t sub_10008743C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 144) = 1;
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

    *(result + 144) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000874B0()
{
  v1 = *(*(sub_100003998(&qword_1000DEA70, &qword_1000AEE70) - 8) + 64);
  sub_10000ACFC();
  __chkstk_darwin(v2);
  v4 = &v61 - v3;
  v66 = sub_100003998(&qword_1000DEA78, &qword_1000AEE78);
  sub_10000AC48(v66);
  v6 = v5;
  v8 = *(v7 + 64);
  sub_10000ACFC();
  __chkstk_darwin(v9);
  v11 = &v61 - v10;
  v68 = sub_100003998(&qword_1000DEA80, &qword_1000AEE80);
  sub_10000AC48(v68);
  v69 = v12;
  v14 = *(v13 + 64);
  sub_10000ACFC();
  __chkstk_darwin(v15);
  v17 = &v61 - v16;
  v70 = sub_100003998(&qword_1000DEA88, &qword_1000AEE88);
  sub_10000AC48(v70);
  v71 = v18;
  v20 = *(v19 + 64);
  sub_10000ACFC();
  __chkstk_darwin(v21);
  v23 = &v61 - v22;
  v74 = sub_100003998(&qword_1000DEA90, &qword_1000AEE90);
  sub_10000AC48(v74);
  v75 = v24;
  v26 = *(v25 + 64);
  sub_10000ACFC();
  __chkstk_darwin(v27);
  sub_10000ADEC();
  sub_10000AF24(v28);
  v76 = sub_100003998(&qword_1000DEA98, &qword_1000AEE98);
  sub_10000AC48(v76);
  v79 = v29;
  v31 = *(v30 + 64);
  sub_10000ACFC();
  __chkstk_darwin(v32);
  sub_10000ADEC();
  sub_10000AF24(v33);
  v34 = sub_100003998(&qword_1000DEAA0, &qword_1000AEEA0);
  v77 = sub_10000AC48(v34);
  v78 = v35;
  v37 = *(v36 + 64);
  sub_10000ACFC();
  __chkstk_darwin(v38);
  sub_10000ADEC();
  sub_10000AF24(v39);
  sub_100088EF8(v0, v80);
  sub_100089E54();
  v40 = swift_allocObject();
  sub_100089E34(v40);
  sub_100003998(&qword_1000DEAA8, &qword_1000AEEA8);
  sub_100089DF8();
  sub_10000A6FC(v41, &qword_1000DEAA8, &qword_1000AEEA8);
  Deferred.init(createPublisher:)();
  v80[0] = *(v0 + 120);
  v42 = v80[0];
  v65 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  sub_100008E2C(v4, 1, 1, v65);
  v64 = sub_10001FA6C();
  sub_10000A6FC(&qword_1000DEAB8, &qword_1000DEA78, &qword_1000AEE78);
  v63 = sub_10008965C(&qword_1000DEAC0, sub_10001FA6C);
  v62 = v42;
  v43 = v66;
  Publisher.receive<A>(on:options:)();
  sub_100088F3C(v4);
  (*(v6 + 8))(v11, v43);
  static Subscribers.Demand.unlimited.getter();
  sub_100003998(&qword_1000DEAC8, &qword_1000AEEB0);
  sub_10000A6FC(&qword_1000DEAD0, &qword_1000DEA80, &qword_1000AEE80);
  sub_10000A6FC(&qword_1000DEAD8, &qword_1000DEAC8, &qword_1000AEEB0);
  v44 = v68;
  Publisher<>.flatMap<A>(maxPublishers:_:)();
  sub_100089E60(&v81);
  v45(v17, v44);
  sub_100088EF8(v0, v80);
  sub_100089E54();
  v46 = swift_allocObject();
  sub_100089E34(v46);
  sub_10000A6FC(&qword_1000DEAE0, &qword_1000DEA88, &qword_1000AEE88);
  v47 = v67;
  v48 = v70;
  Publisher.filter(_:)();

  sub_100089E60(&v82);
  v49(v23, v48);
  sub_100088EF8(v0, v80);
  sub_100089E54();
  v50 = swift_allocObject();
  sub_100089E34(v50);
  sub_100003998(&qword_1000DD670, &unk_1000AC168);
  sub_10000A6FC(&qword_1000DEAE8, &qword_1000DEA90, &qword_1000AEE90);
  sub_100089DE0();
  sub_10000A6FC(v51, &qword_1000DD670, &unk_1000AC168);
  v52 = v72;
  v53 = v74;
  Publisher.flatMap<A>(maxPublishers:_:)();

  sub_100089E60(&v83);
  v54(v47, v53);
  v55 = v62;
  v80[0] = v62;
  sub_100008E2C(v4, 1, 1, v65);
  sub_10000A6FC(&qword_1000DEAF0, &qword_1000DEA98, &qword_1000AEE98);
  v56 = v73;
  v57 = v76;
  Publisher.subscribe<A>(on:options:)();
  sub_100088F3C(v4);

  (*(v79 + 8))(v52, v57);
  sub_10000A6FC(&qword_1000DEAF8, &qword_1000DEAA0, &qword_1000AEEA0);
  v58 = v77;
  v59 = Publisher.eraseToAnyPublisher()();
  (*(v78 + 8))(v56, v58);
  return v59;
}

uint64_t sub_100087D28@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_100088EF8(a1, v8);
  v3 = swift_allocObject();
  memcpy((v3 + 16), v8, 0x90uLL);
  v4 = sub_100003998(&qword_1000DEAA8, &qword_1000AEEA8);
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  result = Future.init(_:)();
  *a2 = result;
  return result;
}

uint64_t sub_100087DC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100003998(&qword_1000DC5A8, &qword_1000AAFD0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &__src[-v8];
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v11 = type metadata accessor for TaskPriority();
  sub_100008E2C(v9, 1, 1, v11);
  sub_100088EF8(a3, __src);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  memcpy(v12 + 4, __src, 0x90uLL);
  v12[22] = sub_100026094;
  v12[23] = v10;

  sub_10004A77C();
}

uint64_t sub_100087F0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = *(type metadata accessor for SportsActivityManagedContext() - 8);
  v6[5] = v7;
  v8 = *(v7 + 64) + 15;
  v6[6] = swift_task_alloc();

  return _swift_task_switch(sub_100087FCC, 0, 0);
}

uint64_t sub_100087FCC()
{
  sub_10001BEC4();
  *(v0 + 56) = sub_100008614((*(v0 + 16) + 24), *(*(v0 + 16) + 48));
  if (qword_1000DB9F0 != -1)
  {
    swift_once();
  }

  v1 = qword_1000E6D00;

  return _swift_task_switch(sub_100088070, v1, 0);
}

uint64_t sub_100088070()
{
  sub_10001BEC4();
  v1 = **(v0 + 56);
  *(v0 + 64) = sub_100058D0C();

  return _swift_task_switch(sub_1000880DC, 0, 0);
}

uint64_t sub_1000880DC()
{
  v31 = v0;
  v1 = v0;
  v2 = v0[8];
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = v0[5];
    v29 = v0[6];
    v30 = _swiftEmptyArrayStorage;
    sub_100017B68(0, v3, 0);
    v5 = _swiftEmptyArrayStorage;
    v6 = v2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v7 = *(v4 + 72);
    do
    {
      v8 = v1;
      v9 = v1[6];
      sub_100089CF4(v6, v9);
      v10 = *v9;
      v11 = *(v29 + 8);

      sub_100089D58(v9, type metadata accessor for SportsActivityManagedContext);
      v30 = v5;
      v13 = v5[2];
      v12 = v5[3];
      if (v13 >= v12 >> 1)
      {
        sub_100017B68((v12 > 1), v13 + 1, 1);
        v5 = v30;
      }

      v5[2] = v13 + 1;
      v14 = &v5[2 * v13];
      v14[4] = v10;
      v14[5] = v11;
      v6 += v7;
      --v3;
      v1 = v8;
    }

    while (v3);
    v15 = v8[8];
  }

  else
  {
    v16 = v0[8];

    v5 = _swiftEmptyArrayStorage;
  }

  if (qword_1000DBA38 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_100007DE8(v17, qword_1000E6D90);

  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v30 = v21;
    *v20 = 136315138;
    v22 = Array.description.getter();
    v24 = sub_1000170D4(v22, v23, &v30);

    *(v20 + 4) = v24;
    _os_log_impl(&_mh_execute_header, v18, v19, "Checking for stale activities: '%s'", v20, 0xCu);
    sub_100008A94(v21);
  }

  v25 = v1[6];
  v26 = v1[4];
  (v1[3])(v5, 0);

  v27 = v1[1];

  return v27();
}

uint64_t sub_1000883A8(uint64_t *a1)
{
  v2 = *a1;

  sub_100003998(&qword_1000DC420, &unk_1000ADE60);
  sub_100003998(&qword_1000DC470, &qword_1000AA620);
  sub_10000A6FC(&qword_1000DEB18, &qword_1000DC420, &unk_1000ADE60);
  return Publishers.Sequence.init(sequence:)();
}

uint64_t sub_10008846C(uint64_t *a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v28 - v10;
  v12 = a1[1];
  v29 = *a1;
  v13 = *(a2 + 16);
  v14 = *(a2 + 136);
  if ((sub_100066914() & 1) == 0)
  {
    _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v15 = v13[6];
  sub_100008614(v13 + 2, v13[5]);
  result = dispatch thunk of PersistentStorable.retrieveEventSubscription(canonicalId:isConventionalOrUnified:)();
  if (result)
  {
    v17 = result;
    v18 = *(a2 + 8);
    (*a2)();
    SportingEventSubscription.updatedAt.getter();
    Date.timeIntervalSince(_:)();
    v20 = v19;
    v21 = *(v5 + 8);
    v21(v8, v4);
    v21(v11, v4);
    if (*(a2 + 128) >= v20)
    {

      return 0;
    }

    else
    {
      if (qword_1000DBA38 != -1)
      {
        swift_once();
      }

      v22 = type metadata accessor for Logger();
      sub_100007DE8(v22, qword_1000E6D90);
      sub_100088EF8(a2, v31);

      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v30 = v26;
        *v25 = 136315650;
        *(v25 + 4) = sub_1000170D4(v29, v12, &v30);
        *(v25 + 12) = 2048;
        *(v25 + 14) = v20;
        *(v25 + 22) = 2048;
        v27 = v32;
        sub_100089B98(v31);
        *(v25 + 24) = v27;
        _os_log_impl(&_mh_execute_header, v23, v24, "Detected stale activity %s: (%f > %f).", v25, 0x20u);
        sub_100008A94(v26);
      }

      else
      {

        sub_100089B98(v31);
      }

      return 1;
    }
  }

  return result;
}

uint64_t sub_1000887B4(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v25 = *(a2 + 48);
  v5 = sub_100008614((a2 + 24), v25);
  v28 = v25;
  v6 = sub_10003F5B0(v27);
  (*(*(v25 - 8) + 16))(v6, v5, v25);
  v7 = *(a2 + 16);
  v8 = *(a2 + 72);
  sub_10000BC8C(a2 + 80, v31);
  v29 = v7;
  v30 = v8;
  v31[5] = v4;
  v31[6] = v3;
  v9 = type metadata accessor for ActivityAuthorization();
  v10 = objc_allocWithZone(v9);

  v11 = [v10 init];
  v12 = sub_1000499E0();
  v14 = v13;
  v26[3] = v9;
  v26[4] = &off_1000D1900;
  v26[0] = v11;
  type metadata accessor for ActivityCapUtility();
  v15 = swift_allocObject();
  v16 = sub_10000B90C(v26, v9);
  v17 = *(*(v9 - 1) + 64);
  v18 = __chkstk_darwin(v16);
  v20 = (&v26[-2] - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v21 + 16))(v20, v18);
  v22 = *v20;
  v15[5] = v9;
  v15[6] = &off_1000D1900;
  v15[2] = v22;
  v15[7] = v12;
  v15[8] = v14;
  sub_100008A94(v26);

  v31[7] = v15;
  v23 = sub_100088A30();
  sub_100089018(v27);
  v27[0] = v23;
  LOBYTE(v26[0]) = 0;
  sub_100003998(&qword_1000DCC18, &qword_1000AB790);
  sub_10000A6FC(&qword_1000DCC20, &qword_1000DCC18, &qword_1000AB790);
  Publisher.replaceError(with:)();
}

uint64_t sub_100088A30()
{
  v1 = v0;
  v46 = type metadata accessor for Date();
  v2 = sub_10000AC48(v46);
  v45[1] = v3;
  v5 = *(v4 + 64);
  __chkstk_darwin(v2);
  v7 = v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  refreshed = type metadata accessor for SubscriptionRefreshOperation();
  v9 = *(*(refreshed - 8) + 64);
  __chkstk_darwin(refreshed);
  v11 = v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_100003998(&qword_1000DD670, &unk_1000AC168);
  sub_10000AC48(v52);
  v50 = v12;
  v14 = *(v13 + 64);
  sub_10000ACFC();
  __chkstk_darwin(v15);
  sub_10000ADEC();
  v48 = v16;
  v51 = sub_100003998(&qword_1000DEB00, &qword_1000AEEB8);
  sub_10000AC48(v51);
  v49 = v17;
  v19 = *(v18 + 64);
  sub_10000ACFC();
  __chkstk_darwin(v20);
  sub_10000ADEC();
  sub_10000AF24(v21);
  v22 = v0[5];
  v23 = v0[6];
  sub_10000BC8C((v0 + 7), __src);
  v24 = v0[12];
  v25 = v0[13];
  v26 = v0[14];

  if (sub_100066914())
  {
    v27 = 1;
  }

  else
  {
    v27 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v28 = &v11[*(refreshed + 36)];
  static SportsManager.RefreshOptions.all.getter();
  *v11 = v22;
  *(v11 + 1) = v23;
  sub_10000A8F8(__src, (v11 + 16));
  *(v11 + 7) = v24;
  *(v11 + 8) = v25;
  v11[72] = v27 & 1;
  v29 = *(refreshed + 40);
  Date.init()();
  sub_10008C99C();
  v31 = v30;
  sub_100089E60(&v55);
  v32(v7, v46);
  *&v11[v29] = v31;
  v33 = sub_1000A25EC();
  sub_100089D58(v11, type metadata accessor for SubscriptionRefreshOperation);
  *&__src[0] = v33;
  v54 = 0;
  sub_100003998(&qword_1000DCC18, &qword_1000AB790);
  sub_10000A6FC(&qword_1000DCC20, &qword_1000DCC18, &qword_1000AB790);
  v34 = v48;
  Publisher.replaceError(with:)();

  sub_1000890EC(v1, __src);
  v35 = swift_allocObject();
  memcpy((v35 + 16), __src, 0x78uLL);
  static Subscribers.Demand.unlimited.getter();
  sub_100003998(&qword_1000DD038, &unk_1000AB9A0);
  sub_100089DE0();
  sub_10000A6FC(v36, v37, v38);
  sub_100089DF8();
  sub_10000A6FC(v39, &qword_1000DD038, &unk_1000AB9A0);
  v40 = v47;
  v41 = v52;
  Publisher<>.flatMap<A>(maxPublishers:_:)();

  (*(v50 + 8))(v34, v41);
  sub_10000A6FC(&qword_1000DEB08, &qword_1000DEB00, &qword_1000AEEB8);
  v42 = v51;
  v43 = Publisher.eraseToAnyPublisher()();
  (*(v49 + 8))(v40, v42);
  return v43;
}

uint64_t sub_100088F3C(uint64_t a1)
{
  v2 = sub_100003998(&qword_1000DEA70, &qword_1000AEE70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100088FA4()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  sub_100008A94((v0 + 40));
  v3 = *(v0 + 88);

  sub_100008A94((v0 + 96));

  v4 = *(v0 + 152);

  sub_100089E54();

  return _swift_deallocObject(v5, v6, v7);
}

uint64_t sub_100089048@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  sub_1000890EC(a1, __src);
  v3 = swift_allocObject();
  memcpy((v3 + 16), __src, 0x78uLL);
  v4 = sub_100003998(&qword_1000DD038, &unk_1000AB9A0);
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  result = Future.init(_:)();
  *a2 = result;
  return result;
}

uint64_t sub_10008912C(void (*a1)(void *), uint64_t a2, void *a3)
{
  v6 = sub_100003998(&qword_1000DC5A8, &qword_1000AAFD0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v41 = v37 - v8;
  v9 = type metadata accessor for SportingEventProgressStatus();
  v39 = *(v9 - 8);
  v40 = v9;
  v10 = *(v39 + 64);
  __chkstk_darwin(v9);
  v12 = v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = v37 - v14;
  v16 = swift_allocObject();
  v37[1] = a2;
  v38 = a1;
  *(v16 + 16) = a1;
  *(v16 + 24) = a2;
  v17 = a3[5];
  v19 = a3[12];
  v18 = a3[13];
  v20 = a3[14];

  if ((sub_100066914() & 1) == 0)
  {
    _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v21 = v17[6];
  sub_100008614(v17 + 2, v17[5]);
  v22 = dispatch thunk of PersistentStorable.retrieveEventSubscription(canonicalId:isConventionalOrUnified:)();
  if (!v22)
  {

    v30 = type metadata accessor for PersistentStoreError();
    sub_10008965C(&qword_1000DEB10, &type metadata accessor for PersistentStoreError);
    v31 = swift_allocError();
    (*(*(v30 - 8) + 104))(v32, enum case for PersistentStoreError.fileNotFound(_:), v30);
    __src[0] = v31;
    LOBYTE(__src[1]) = 1;
    v38(__src);
  }

  v23 = v22;
  v24 = SportingEventSubscription.sportingEventDetails.getter();
  SportingEvent.progressStatus.getter();

  v26 = v39;
  v25 = v40;
  (*(v39 + 32))(v12, v15, v40);
  v27 = (*(v26 + 88))(v12, v25);
  if (v27 != enum case for SportingEventProgressStatus.preGame(_:) && v27 != enum case for SportingEventProgressStatus.inProgress(_:) && v27 != enum case for SportingEventProgressStatus.statusBreak(_:))
  {
    if (v27 != enum case for SportingEventProgressStatus.final(_:))
    {
      if (v27 == enum case for SportingEventProgressStatus.postponed(_:))
      {
        goto LABEL_15;
      }

      if (v27 != enum case for SportingEventProgressStatus.suspended(_:) && v27 != enum case for SportingEventProgressStatus.cancelled(_:))
      {
        if (v27 == enum case for SportingEventProgressStatus.delayed(_:))
        {
          goto LABEL_15;
        }

        if (v27 != enum case for SportingEventProgressStatus.forfeit(_:))
        {
          if (v27 != enum case for SportingEventProgressStatus.unknown(_:))
          {
            (*(v26 + 8))(v12, v25);
          }

          goto LABEL_15;
        }
      }
    }

    SportingEventSubscription.liveActivityTTLSeconds.setter();
  }

LABEL_15:
  v34 = type metadata accessor for TaskPriority();
  sub_100008E2C(v41, 1, 1, v34);
  sub_1000890EC(a3, __src);
  v35 = swift_allocObject();
  v35[2] = 0;
  v35[3] = 0;
  memcpy(v35 + 4, __src, 0x78uLL);
  v35[19] = v23;
  v35[20] = sub_1000326E0;
  v35[21] = v16;
  sub_10004A77C();
}

uint64_t sub_1000895BC()
{
  sub_100008A94(v0 + 2);
  v1 = v0[7];

  v2 = v0[8];

  sub_100008A94(v0 + 9);
  v3 = v0[15];

  v4 = v0[16];

  return _swift_deallocObject(v0, 136, 7);
}

uint64_t sub_100089624()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10008965C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000896A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  return _swift_task_switch(sub_1000896C8, 0, 0);
}

uint64_t sub_1000896C8()
{
  sub_10001BEC4();
  v1 = *sub_100008614(*(v0 + 16), *(*(v0 + 16) + 24));
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *v2 = v0;
  v2[1] = sub_100089770;
  v3 = *(v0 + 24);

  return sub_100058748();
}

uint64_t sub_100089770()
{
  sub_10001BEC4();
  v2 = *(*v1 + 48);
  v5 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v3 = sub_1000898E8;
  }

  else
  {
    v3 = sub_100089880;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100089880()
{
  sub_10001BEC4();
  v1 = *(v0 + 40);
  (*(v0 + 32))(1, 0);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1000898E8()
{
  v1 = v0[7];
  v3 = v0[4];
  v2 = v0[5];
  swift_errorRetain();
  v3(v1, 1);

  v4 = v0[1];

  return v4();
}

uint64_t sub_100089978()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  sub_100008A94((v0 + 32));
  v2 = *(v0 + 72);

  v3 = *(v0 + 80);

  sub_100008A94((v0 + 88));
  v4 = *(v0 + 136);

  v5 = *(v0 + 144);

  v6 = *(v0 + 168);

  return _swift_deallocObject(v0, 176, 7);
}

uint64_t sub_1000899F0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[19];
  v5 = v0[20];
  v6 = v0[21];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v8 = sub_100089E10(v7);

  return sub_1000896A4(v8, v9, v10, v11, v12, v13, v6);
}

uint64_t sub_100089AA8()
{
  sub_10001BEC4();
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100089BD4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  v3 = *(v0 + 48);

  sub_100008A94((v0 + 56));
  v4 = *(v0 + 104);

  sub_100008A94((v0 + 112));

  v5 = *(v0 + 168);

  v6 = *(v0 + 184);

  return _swift_deallocObject(v0, 192, 7);
}

uint64_t sub_100089C4C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[22];
  v5 = v0[23];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v7 = sub_100089E10(v6);

  return sub_100087F0C(v7, v8, v9, v10, v11, v12);
}

uint64_t sub_100089CF4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SportsActivityManagedContext();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100089D58(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void *sub_100089E34(uint64_t a1)
{
  v3 = (a1 + 16);

  return memcpy(v3, (v1 - 232), 0x90uLL);
}

BOOL sub_100089E8C@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = SportsSessionType.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

uint64_t static SportsActivityCreationPolicy.__derived_enum_equals(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SportsActivityCreationPolicy();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100003998(&qword_1000DEB20, &qword_1000AEF70);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v23 - v15;
  v18 = *(v17 + 56);
  sub_10008A144(a1, &v23 - v15);
  sub_10008A144(a2, &v16[v18]);
  sub_10008A53C(v16);
  if (!v20)
  {
    sub_10008A144(v16, v12);
    sub_10008A53C(&v16[v18]);
    if (!v20)
    {
      (*(v5 + 32))(v8, &v16[v18], v4);
      v19 = static Date.== infix(_:_:)();
      v21 = *(v5 + 8);
      v21(v8, v4);
      v21(v12, v4);
      sub_10008A210(v16);
      return v19 & 1;
    }

    (*(v5 + 8))(v12, v4);
LABEL_9:
    sub_10008A1A8(v16);
    v19 = 0;
    return v19 & 1;
  }

  sub_10008A53C(&v16[v18]);
  if (!v20)
  {
    goto LABEL_9;
  }

  sub_10008A210(v16);
  v19 = 1;
  return v19 & 1;
}

uint64_t type metadata accessor for SportsActivityCreationPolicy()
{
  result = qword_1000DEBA8;
  if (!qword_1000DEBA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10008A144(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SportsActivityCreationPolicy();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10008A1A8(uint64_t a1)
{
  v2 = sub_100003998(&qword_1000DEB20, &qword_1000AEF70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10008A210(uint64_t a1)
{
  v2 = type metadata accessor for SportsActivityCreationPolicy();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10008A270()
{
  result = qword_1000DEB28;
  if (!qword_1000DEB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DEB28);
  }

  return result;
}

unint64_t sub_10008A2C8()
{
  result = qword_1000DEB30;
  if (!qword_1000DEB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DEB30);
  }

  return result;
}

_BYTE *sub_10008A334(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *result = 0;
      break;
    case 2:
      *result = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0x10008A3D0);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_10008A41C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v5 = sub_100008B84(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10008A478(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for Date();

  return sub_100008E2C(a1, v5, a3, v6);
}

uint64_t sub_10008A4D4()
{
  v0 = type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

BOOL sub_10008A55C(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v5 = (a3 + 40);
  v6 = *(a3 + 16) + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    v7 = *v5;
    v11[0] = *(v5 - 1);
    v11[1] = v7;

    v8 = a1(v11);
    if (v3)
    {

      return v6 != 0;
    }

    v9 = v8;
    v5 += 2;
  }

  while ((v9 & 1) == 0);
  return v6 != 0;
}

uint64_t sub_10008A60C()
{
  v0 = type metadata accessor for LiveActivityRequestMeasurement();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_10008A6F8();
  qword_1000E6DF0 = result;
  return result;
}

uint64_t sub_10008A64C()
{
  result = sub_1000499E0();
  qword_1000DEBD8 = result;
  unk_1000DEBE0 = v1;
  return result;
}

void sub_10008A670()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = MGGetBoolAnswer();

  v2 = 0x6C616E7265746E69;
  if (!v1)
  {
    v2 = 0x72656D6F74737563;
  }

  qword_1000DEBE8 = v2;
  unk_1000DEBF0 = 0xE800000000000000;
}

uint64_t sub_10008A6F8()
{
  v0 = type metadata accessor for MetricsPipeline();
  v38 = *(v0 - 8);
  v39 = v0;
  v1 = *(v38 + 64);
  __chkstk_darwin(v0);
  v37 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for MetricsPipeline.Configuration();
  v35 = *(v3 - 8);
  v36 = v3;
  v4 = *(v35 + 64);
  __chkstk_darwin(v3);
  v32 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v34 = &v30 - v7;
  v8 = type metadata accessor for Bag();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v30 - v14;
  if (qword_1000DB9B8 != -1)
  {
    swift_once();
  }

  v16 = *(qword_1000E6CC0 + 16);
  Bag.init(from:)();
  v17 = sub_100003998(&qword_1000DED90, &unk_1000AFC30);
  v33 = v9;
  v18 = *(v9 + 16);
  v18(v12, v15, v8);
  v30 = LowMemoryMetricsEventLinter.__allocating_init(defaultTopic:bag:rules:)();
  v31 = v8;
  v18(v12, v15, v8);
  v19 = type metadata accessor for LiveActivityRequestEventRecorder();
  swift_allocObject();
  v20 = sub_10008B920(v12, 0xD000000000000013, 0x80000001000B0A70);
  v21 = v40;
  v22 = (v40 + OBJC_IVAR____TtC7sportsd30LiveActivityRequestMeasurement_eventRecorder);
  *(v40 + OBJC_IVAR____TtC7sportsd30LiveActivityRequestMeasurement_eventRecorder + 24) = v19;
  v22[4] = sub_10008C89C();
  *v22 = v20;
  v18(v12, v15, v8);
  v41[3] = v17;
  v41[4] = sub_10008C8F4();
  v41[0] = v30;

  sub_1000592AC(&off_1000CF9E0);
  v23 = v32;
  MetricsPipeline.Configuration.init(bag:linter:anonymousTopics:)();
  sub_10000BC8C(v22, v41);
  v24 = v34;
  MetricsPipeline.Configuration.withRecorder(_:)();
  sub_100008A94(v41);
  v25 = v35;
  v26 = v36;
  v27 = *(v35 + 8);
  v27(v23, v36);
  (*(v25 + 16))(v23, v24, v26);
  v28 = v37;
  MetricsPipeline.init(from:)();

  v27(v24, v26);
  (*(v33 + 8))(v15, v31);
  (*(v38 + 32))(v21 + OBJC_IVAR____TtC7sportsd30LiveActivityRequestMeasurement_metricsPipeline, v28, v39);
  return v21;
}

uint64_t sub_10008AB34(uint64_t a1, uint64_t a2)
{
  *(&v81 + 1) = a2;
  *&v81 = a1;
  v87 = sub_100003998(&qword_1000DED80, &unk_1000AF218);
  v2 = sub_10000AC48(v87);
  v85 = v3;
  v5 = *(v4 + 64);
  __chkstk_darwin(v2);
  v83 = &v76 - v6;
  v86 = type metadata accessor for MetricsFieldsContext();
  v7 = sub_10000AC48(v86);
  v84 = v8;
  v10 = *(v9 + 64);
  __chkstk_darwin(v7);
  sub_100045D70();
  v13 = v11 - v12;
  __chkstk_darwin(v14);
  v82 = &v76 - v15;
  v16 = type metadata accessor for MetricsData();
  v17 = sub_10000AC48(v16);
  v89 = v18;
  v90 = v17;
  v20 = *(v19 + 64);
  __chkstk_darwin(v17);
  v88 = &v76 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_100003998(&unk_1000DD7B0, &qword_1000AC150);
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22 - 8);
  sub_100045D70();
  v26 = v24 - v25;
  __chkstk_darwin(v27);
  v29 = &v76 - v28;
  v30 = type metadata accessor for URL();
  v31 = sub_10000AC48(v30);
  v33 = v32;
  v35 = *(v34 + 64);
  __chkstk_darwin(v31);
  sub_100045D70();
  v38 = v36 - v37;
  __chkstk_darwin(v39);
  v91 = &v76 - v40;
  v41 = [objc_opt_self() defaultManager];
  v42 = String._bridgeToObjectiveC()();
  v43 = [v41 containerURLForSecurityApplicationGroupIdentifier:v42];

  if (v43)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v44 = 0;
  }

  else
  {
    v44 = 1;
  }

  sub_100008E2C(v26, v44, 1, v30);
  sub_10008C82C(v26, v29);
  if (sub_100008B84(v29, 1, v30) == 1)
  {
    return sub_1000261E8(v29, &unk_1000DD7B0, &qword_1000AC150);
  }

  URL.appendingPathComponent(_:)();
  v46 = *(v33 + 8);
  v46(v29, v30);
  (*(v33 + 32))(v91, v38, v30);
  v47 = Data.init(contentsOf:options:)();
  v49 = v48;
  sub_100008B28(v47, v48);
  v50 = sub_10008C984();
  v52 = sub_1000492AC(v50, v51);
  v80 = v33 + 8;
  v79 = v46;
  if (!v53)
  {
    v94 = v47;
    v95 = v49;
    v59 = sub_10008C984();
    sub_100008B28(v59, v60);
    sub_100003998(&unk_1000DD760, &qword_1000ABFF8);
    v57 = v13;
    if (swift_dynamicCast())
    {
      sub_10000A8F8(v92, &v96);
      sub_100008614(&v96, v97);
      if (dispatch thunk of _HasContiguousBytes._providesContiguousBytesNoCopy.getter())
      {
        v61 = sub_10008C984();
        sub_100008BAC(v61, v62);
        sub_100008614(&v96, v97);
        dispatch thunk of _HasContiguousBytes.withUnsafeBytes<A>(_:)();
        v76 = *(&v92[0] + 1);
        v58 = *&v92[0];
        sub_100008A94(&v96);
        goto LABEL_14;
      }

      sub_100008A94(&v96);
    }

    else
    {
      v93 = 0;
      memset(v92, 0, sizeof(v92));
      sub_1000261E8(v92, &qword_1000DD588, &qword_1000AC000);
    }

    sub_10008C984();
    v58 = sub_100049074();
    v76 = v63;
    v64 = sub_10008C984();
    sub_100008BAC(v64, v65);
    goto LABEL_14;
  }

  v54 = v52;
  v76 = v53;
  v55 = sub_10008C984();
  sub_100008BAC(v55, v56);
  v57 = v13;
  v58 = v54;
LABEL_14:
  v77 = v49;
  if (qword_1000DBA70 != -1)
  {
    swift_once();
  }

  v78 = v47;
  v97 = &type metadata for String;
  v96 = xmmword_1000DEBD8;
  sub_10008C958();

  swift_isUniquelyReferenced_nonNull_native();
  sub_10008C978();
  sub_10008C990();
  sub_100086AE0();
  v97 = &type metadata for String;
  *&v96 = 0xD000000000000013;
  *(&v96 + 1) = 0x80000001000B2960;
  sub_10008C958();
  swift_isUniquelyReferenced_nonNull_native();
  sub_10008C978();
  sub_100086AE0();
  v97 = &type metadata for String;
  strcpy(&v96, "Content");
  *(&v96 + 1) = 0xE700000000000000;
  sub_10008C958();
  swift_isUniquelyReferenced_nonNull_native();
  sub_10008C978();
  sub_100086AE0();
  v97 = &type metadata for String;
  strcpy(&v96, "SportingEvent");
  HIWORD(v96) = -4864;
  sub_10008C958();
  swift_isUniquelyReferenced_nonNull_native();
  sub_10008C978();
  sub_100086AE0();
  if (qword_1000DBA78 != -1)
  {
    swift_once();
  }

  v97 = &type metadata for String;
  v96 = xmmword_1000DEBE8;
  sub_100008EA8(&v96, v92);

  swift_isUniquelyReferenced_nonNull_native();
  sub_10008C978();
  sub_10008C990();
  sub_100086AE0();
  v97 = &type metadata for String;
  v96 = v81;
  sub_100008EA8(&v96, v92);

  swift_isUniquelyReferenced_nonNull_native();
  sub_10008C978();
  sub_10008C990();
  sub_100086AE0();
  v97 = &type metadata for String;
  *&v96 = v58;
  *(&v96 + 1) = v76;
  sub_10008C958();
  swift_isUniquelyReferenced_nonNull_native();
  sub_10008C978();
  sub_10008C990();
  sub_100086AE0();
  v97 = &type metadata for Int;
  *&v96 = 1;
  sub_10008C958();
  swift_isUniquelyReferenced_nonNull_native();
  sub_10008C978();
  sub_10008C990();
  sub_100086AE0();
  sub_100003998(&qword_1000DED88, &qword_1000AF228);
  v66 = *(type metadata accessor for MetricsFieldExclusionRequest() - 8);
  v67 = *(v66 + 72);
  v68 = (*(v66 + 80) + 32) & ~*(v66 + 80);
  *(swift_allocObject() + 16) = xmmword_1000AA5B0;
  static MetricsFieldExclusionRequest.clientBuildType.getter();
  sub_100059438();
  v69 = v88;
  MetricsData.init(topic:shouldFlush:fields:includingFields:excludingFields:)();
  MetricsFieldsContext.init()();
  *&v96 = 0xD000000000000013;
  *(&v96 + 1) = 0x80000001000B0A70;
  v70 = v83;
  static MetricsFieldsContext.Property<A>.topic.getter();
  v71 = v82;
  MetricsFieldsContext.addingValue<A>(_:forProperty:)();
  (*(v85 + 8))(v70, v87);
  v72 = *(v84 + 8);
  v73 = v86;
  v72(v57, v86);
  MetricsPipeline.process(_:using:)();
  v72(v71, v73);
  v74 = sub_10001BDC0(0, &qword_1000DC5D8, OS_dispatch_queue_ptr);
  v75 = static OS_dispatch_queue.main.getter();
  v97 = v74;
  v98 = &protocol witness table for OS_dispatch_queue;
  *&v96 = v75;
  Promise.then(perform:orCatchError:on:)();

  sub_100008BAC(v78, v77);
  (*(v89 + 8))(v69, v90);
  v79(v91, v30);
  return sub_100008A94(&v96);
}

void sub_10008B638()
{
  if (qword_1000DBA18 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100007DE8(v0, qword_1000E6D30);
  swift_errorRetain();
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    *v2 = 138412290;
    swift_errorRetain();
    v4 = _swift_stdlib_bridgeErrorToNSError();
    *(v2 + 4) = v4;
    *v3 = v4;
    _os_log_impl(&_mh_execute_header, oslog, v1, "LiveActivityActionMeasurement: error: %@", v2, 0xCu);
    sub_1000261E8(v3, &unk_1000DD790, &unk_1000AB7A0);
  }
}

uint64_t sub_10008B794()
{
  v1 = OBJC_IVAR____TtC7sportsd30LiveActivityRequestMeasurement_metricsPipeline;
  v2 = type metadata accessor for MetricsPipeline();
  sub_100026794(v2);
  (*(v3 + 8))(v0 + v1);
  sub_100008A94((v0 + OBJC_IVAR____TtC7sportsd30LiveActivityRequestMeasurement_eventRecorder));
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v4, v5);
}

uint64_t type metadata accessor for LiveActivityRequestMeasurement()
{
  result = qword_1000DEC30;
  if (!qword_1000DEC30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10008B888()
{
  result = type metadata accessor for MetricsPipeline();
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

void *sub_10008B920(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for Bag.Profile();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  Bag.profile.getter();
  v13 = Bag.Profile.name.getter();
  v15 = v14;
  (*(v9 + 8))(v12, v8);
  v16 = Bag.amsBag.getter();
  v17 = objc_allocWithZone(AMSMetrics);
  v18 = sub_10008BE34(v13, v15, v16);
  v19 = AMSMetrics.withRemoteInspection.getter();

  v20 = type metadata accessor for Bag();
  (*(*(v20 - 8) + 8))(a1, v20);
  v4[2] = v19;
  v4[3] = a2;
  v4[4] = a3;
  return v4;
}

void sub_10008BAA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *v3;
  if (!a3)
  {
    v6 = *(v3 + 24);
    v7 = *(v4 + 32);
  }

  sub_10001BDC0(0, &qword_1000DED70, AMSMetricsEvent_ptr);

  v10 = sub_10008BBF8();
  v8 = LintedMetricsEvent.fields.getter();
  sub_10008BFD4(v8, v5);

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v10 addPropertiesWithDictionary:isa];

  [*(v4 + 16) enqueueEvent:v10];
}

id sub_10008BBF8()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = String._bridgeToObjectiveC()();

  v2 = [v0 initWithTopic:v1];

  return v2;
}

uint64_t sub_10008BC6C()
{
  sub_100003998(&qword_1000DED68, &qword_1000AF200);
  v1 = [*(v0 + 16) flush];
  Promise<A>.init(_:)();
  v4[3] = type metadata accessor for SyncTaskScheduler();
  v4[4] = &protocol witness table for SyncTaskScheduler;
  sub_10003F5B0(v4);
  SyncTaskScheduler.init()();
  v2 = Promise.map<A>(on:_:)();

  sub_100008A94(v4);
  return v2;
}

id sub_10008BD30@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 integerValue];
  *a2 = result;
  return result;
}

uint64_t sub_10008BD6C()
{
  v1 = *(v0 + 32);

  return v0;
}

uint64_t sub_10008BD94()
{
  v0 = sub_10008BD6C();

  return _swift_deallocClassInstance(v0, 40, 7);
}

id sub_10008BE34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = String._bridgeToObjectiveC()();

  v6 = [v3 initWithContainerID:v5 bag:a3];

  swift_unknownObjectRelease();
  return v6;
}

uint64_t sub_10008BE9C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_1000AC240;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

unint64_t *sub_10008BF00(unint64_t *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v6 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_10008C7B4(v6, a2, a3, &v7);

    if (!v3)
    {
      return v7;
    }
  }

  return result;
}

uint64_t sub_10008BF90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

unint64_t *sub_10008BFD4(uint64_t a1, unint64_t *a2)
{
  v4 = a1;
  v5 = *(a1 + 32);
  v6 = ((1 << v5) + 63) >> 6;
  if ((v5 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v10 = swift_slowAlloc();
      a2 = sub_10008BF00(v10, v6, v4);

      return a2;
    }
  }

  __chkstk_darwin(a1);
  v7 = (&v11 - ((8 * v6 + 15) & 0x3FFFFFFFFFFFFFF0));
  sub_10008BE9C(0, v6, v7);
  v8 = sub_10008C144(v7, v6, v4);
  if (!v2)
  {
    return v8;
  }

  swift_willThrow();
  return a2;
}

unint64_t *sub_10008C144(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v19 = a2;
  v20 = result;
  v21 = 0;
  v3 = 0;
  v26 = a3;
  v4 = a3 + 64;
  v5 = 1 << *(a3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a3 + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_11:
    v12 = v9 | (v3 << 6);
    v13 = (*(v26 + 48) + 16 * v12);
    v14 = *v13;
    v15 = v13[1];
    sub_10001B798(*(v26 + 56) + 32 * v12, v25);
    v23[0] = v14;
    v23[1] = v15;
    v16 = sub_10001B798(v25, &v24);
    v22[0] = v14;
    v22[1] = v15;
    __chkstk_darwin(v16);
    v18[2] = v22;
    swift_bridgeObjectRetain_n();
    LOBYTE(v14) = sub_10008A55C(sub_10008C80C, v18, &off_1000CFA10);
    sub_1000261E8(v23, &qword_1000DED78, &unk_1000AF208);
    sub_100008A94(v25);

    if ((v14 & 1) == 0)
    {
      *(v20 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      if (__OFADD__(v21++, 1))
      {
        __break(1u);
        return sub_10008C56C(v20, v19, v21, v26);
      }
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return sub_10008C56C(v20, v19, v21, v26);
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10008C330(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  sub_100003998(&qword_1000DEDA8, &unk_1000AF230);
  result = static _DictionaryStorage.allocate(capacity:)();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v33 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    v21 = *(v17 + 8 * v16);
    v22 = *(v9 + 40);
    Hasher.init(_seed:)();

    String.hash(into:)();
    result = Hasher._finalize()();
    v23 = -1 << *(v9 + 32);
    v24 = result & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v12 + 8 * (v24 >> 6))) == 0)
    {
      v27 = 0;
      v28 = (63 - v23) >> 6;
      while (++v25 != v28 || (v27 & 1) == 0)
      {
        v29 = v25 == v28;
        if (v25 == v28)
        {
          v25 = 0;
        }

        v27 |= v29;
        v30 = *(v12 + 8 * v25);
        if (v30 != -1)
        {
          v26 = __clz(__rbit64(~v30)) + (v25 << 6);
          goto LABEL_25;
        }
      }

      goto LABEL_30;
    }

    v26 = __clz(__rbit64((-1 << v24) & ~*(v12 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
    *(v12 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    v31 = (*(v9 + 48) + 16 * v26);
    *v31 = v19;
    v31[1] = v20;
    *(*(v9 + 56) + 8 * v26) = v21;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_31;
    }

    v4 = v33;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_10008C56C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  sub_100003998(&qword_1000DBCF8, &qword_1000AA680);
  result = static _DictionaryStorage.allocate(capacity:)();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v32 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    sub_10001B798(v17 + 32 * v16, v34);
    sub_100008EA8(v34, v33);
    v21 = *(v9 + 40);
    Hasher.init(_seed:)();

    String.hash(into:)();
    result = Hasher._finalize()();
    v22 = -1 << *(v9 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
    {
      v26 = 0;
      v27 = (63 - v22) >> 6;
      while (++v24 != v27 || (v26 & 1) == 0)
      {
        v28 = v24 == v27;
        if (v24 == v27)
        {
          v24 = 0;
        }

        v26 |= v28;
        v29 = *(v12 + 8 * v24);
        if (v29 != -1)
        {
          v25 = __clz(__rbit64(~v29)) + (v24 << 6);
          goto LABEL_25;
        }
      }

      goto LABEL_30;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
    *(v12 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    v30 = (*(v9 + 48) + 16 * v25);
    *v30 = v19;
    v30[1] = v20;
    result = sub_100008EA8(v33, (*(v9 + 56) + 32 * v25));
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_31;
    }

    v4 = v32;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

unint64_t *sub_10008C7B4@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t **a4@<X8>)
{
  result = sub_10008C144(a1, a2, a3);
  if (!v4)
  {
    *a4 = result;
  }

  return result;
}

uint64_t sub_10008C82C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003998(&unk_1000DD7B0, &qword_1000AC150);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10008C89C()
{
  result = qword_1000DED98;
  if (!qword_1000DED98)
  {
    type metadata accessor for LiveActivityRequestEventRecorder();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DED98);
  }

  return result;
}

unint64_t sub_10008C8F4()
{
  result = qword_1000DEDA0;
  if (!qword_1000DEDA0)
  {
    sub_1000089A8(&qword_1000DED90, &unk_1000AFC30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DEDA0);
  }

  return result;
}

void sub_10008C99C()
{
  Date.timeIntervalSince1970.getter();
  sub_10008CA88();
  if (!(v2 ^ v3 | v1))
  {
    __break(1u);
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v0 <= -1.0)
  {
    goto LABEL_6;
  }

  if (v0 >= 1.84467441e19)
  {
LABEL_7:
    __break(1u);
  }
}

void sub_10008C9F4()
{
  Date.timeIntervalSince1970.getter();
  sub_10008CA88();
  if (!(v2 ^ v3 | v1))
  {
    __break(1u);
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v0 <= -1.0)
  {
    goto LABEL_6;
  }

  if (v0 >= 1.84467441e19)
  {
LABEL_7:
    __break(1u);
  }
}

void sub_10008CA40()
{
  sub_10008CA88();
  if (!(v2 ^ v3 | v1))
  {
    __break(1u);
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v0 <= -1.0)
  {
    goto LABEL_6;
  }

  if (v0 >= 1.84467441e19)
  {
LABEL_7:
    __break(1u);
  }
}

uint64_t sub_10008CAA4(int a1)
{
  v39 = a1;
  v2 = sub_100003998(&qword_1000DD020, &unk_1000AB990);
  v3 = sub_10000AC48(v2);
  v40 = v4;
  v41 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v3);
  v8 = &v37 - v7;
  v9 = sub_100003998(&qword_1000DC5A0, &unk_1000AB0E0);
  v10 = sub_10001C3C4(v9);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v37 - v13;
  v15 = type metadata accessor for Date();
  v16 = sub_10000AC48(v15);
  v38 = v17;
  v19 = *(v18 + 64);
  __chkstk_darwin(v16);
  v21 = &v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v37 - v23;
  if (qword_1000DBA00 != -1)
  {
    sub_100091528();
  }

  ActivityOperation = type metadata accessor for SubscriptionCreateActivityOperation();
  v26 = (v1 + *(ActivityOperation + 56));
  v27 = *v26;
  v28 = v26[1];
  if ((sub_10004F60C(*v26, v28) & 1) == 0)
  {
    sub_100045BF8();
    v30 = sub_10007BF3C();
    *v31 = v27;
    v31[1] = v28;
    v42 = v30;

    sub_100003998(&qword_1000DC470, &qword_1000AA620);
    Fail.init(error:)();
    sub_10000A6FC(&qword_1000DD028, &qword_1000DD020, &unk_1000AB990);
    v32 = v41;
    v33 = Publisher.eraseToAnyPublisher()();
    (*(v40 + 8))(v8, v32);
    return v33;
  }

  if ((v39 & 1) == 0)
  {
    sub_1000459F8(v1 + *(ActivityOperation + 48), v14, &qword_1000DC5A0, &unk_1000AB0E0);
    if (sub_100008B84(v14, 1, v15) == 1)
    {
      sub_10001BB44(v14, &qword_1000DC5A0, &unk_1000AB0E0);
      return sub_10008DB70();
    }

    v34 = v38;
    (*(v38 + 32))(v24, v14, v15);
    static Date.now.getter();
    v35 = static Date.> infix(_:_:)();
    v36 = *(v34 + 8);
    v36(v21, v15);
    if ((v35 & 1) == 0)
    {
      v36(v24, v15);
      return sub_10008DB70();
    }

    v33 = sub_10008D460(v24);
    v36(v24, v15);
    return v33;
  }

  return sub_10008CEC0();
}

uint64_t type metadata accessor for SubscriptionCreateActivityOperation()
{
  result = qword_1000DEEA0;
  if (!qword_1000DEEA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10008CEC0()
{
  v85 = type metadata accessor for Date();
  v1 = sub_10000AC48(v85);
  v84 = v2;
  v4 = *(v3 + 64);
  __chkstk_darwin(v1);
  sub_10000ADA0();
  v83 = v6 - v5;
  v82 = type metadata accessor for UUID();
  v7 = sub_10000AC48(v82);
  v80 = v8;
  v10 = *(v9 + 64);
  __chkstk_darwin(v7);
  sub_10000ADA0();
  v13 = v12 - v11;
  v14 = sub_100003998(&qword_1000DD210, &qword_1000ABE08);
  v15 = sub_10001C3C4(v14);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v69 - v18;
  v20 = type metadata accessor for SubscriptionRegisterOperation(0);
  v21 = sub_10001C2AC(v20);
  v23 = *(v22 + 64);
  __chkstk_darwin(v21);
  sub_10000ADA0();
  v26 = v25 - v24;
  sub_10000BC30(v0, v88);
  ActivityOperation = type metadata accessor for SubscriptionCreateActivityOperation();
  v28 = 0;
  v29 = 0;
  v86 = 0;
  v30 = 0;
  v31 = (v0 + ActivityOperation[13]);
  v33 = *v31;
  v32 = v31[1];
  v76 = v33;
  v81 = v32;
  v34 = (v0 + ActivityOperation[15]);
  v36 = *v34;
  v35 = v34[1];
  v75 = v36;
  v74 = v35;
  if (*(v0 + 384) != 1)
  {
    v29 = *(v0 + 432);
    v28 = *(v0 + 440);
    v30 = *(v0 + 424);
    v86 = *(v0 + 416);
  }

  v79 = v28;
  v73 = *(v0 + 496);
  v37 = *(v0 + ActivityOperation[16]);
  v78 = v29;
  v77 = v30;
  if (v37)
  {
    v38 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v38)
    {
      v39 = 4;
    }

    else
    {
      v39 = 1;
    }
  }

  else
  {

    v39 = 4;
  }

  v72 = v39;
  v40 = type metadata accessor for SubscriptionRegisterOperation.PreferredData(0);
  sub_100008E2C(v19, 1, 1, v40);
  v41 = (v0 + ActivityOperation[14]);
  v43 = *v41;
  v42 = v41[1];
  v71 = v43;
  v70 = v42;
  sub_10000A898(v88, v26);
  v45 = v89;
  v44 = v90;
  sub_10000A898(&v91, v26 + 56);
  sub_10000A898(v92, v26 + 96);
  sub_1000459F8(v19, v26 + v20[18], &qword_1000DD210, &qword_1000ABE08);
  sub_100003998(&qword_1000DC430, &qword_1000AA610);
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_1000AB460;
  v47 = v75;
  v48 = v74;
  *(v46 + 32) = v75;
  *(v46 + 40) = v48;

  UUID.init()();
  v49 = UUID.uuidString.getter();
  v69 = v19;
  v51 = v50;
  (*(v80 + 8))(v13, v82);
  *(v46 + 48) = v49;
  *(v46 + 56) = v51;
  v87 = v46;
  sub_100003998(&qword_1000DC420, &unk_1000ADE60);
  sub_10000A6FC(&qword_1000DC428, &qword_1000DC420, &unk_1000ADE60);
  v52 = BidirectionalCollection<>.joined(separator:)();
  v54 = v53;

  *(v26 + 40) = v45;
  *(v26 + 48) = v44;
  v55 = v81;
  *(v26 + 136) = v76;
  *(v26 + 144) = v55;
  *(v26 + 152) = v47;
  *(v26 + 160) = v48;
  v56 = v71;
  v57 = v70;
  *(v26 + 168) = v71;
  *(v26 + 176) = v57;
  v58 = v79;
  *(v26 + 184) = v78;
  *(v26 + 192) = v58;
  v59 = v77;
  *(v26 + 200) = v86;
  *(v26 + 208) = v59;
  *(v26 + 216) = xmmword_1000AF240;
  *(v26 + 232) = v73;
  *(v26 + 240) = 0;
  *(v26 + 248) = 0;
  *(v26 + 256) = v72;
  v60 = v20[19];
  v61 = v57;
  swift_bridgeObjectRetain_n();

  v62 = v83;
  Date.init()();
  sub_10008C99C();
  v64 = v63;
  (*(v84 + 8))(v62, v85);
  sub_10001BB44(v69, &qword_1000DD210, &qword_1000ABE08);
  sub_10000BCF0(v88);
  *(v26 + v60) = v64;
  v65 = (v26 + v20[20]);
  *v65 = v52;
  v65[1] = v54;
  v66 = (v26 + v20[21]);
  *v66 = v56;
  v66[1] = v61;
  v67 = sub_1000351E0();
  sub_10009107C(v26, type metadata accessor for SubscriptionRegisterOperation);
  return v67;
}

uint64_t sub_10008D460(uint64_t a1)
{
  v49 = a1;
  v48 = type metadata accessor for Date();
  v46 = *(v48 - 8);
  v47 = *(v46 + 64);
  __chkstk_darwin(v48);
  v44 = v39 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  ActivityOperation = type metadata accessor for SubscriptionCreateActivityOperation();
  v4 = *(ActivityOperation - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(ActivityOperation - 8);
  v6 = sub_100003998(&qword_1000DEDB0, &qword_1000AF260);
  v7 = *(v6 - 8);
  v50 = v6;
  v51 = v7;
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v58 = v39 - v9;
  v53 = sub_100003998(&qword_1000DEDB8, &qword_1000AF268);
  v56 = *(v53 - 8);
  v10 = *(v56 + 64);
  __chkstk_darwin(v53);
  v45 = v39 - v11;
  v12 = sub_100003998(&qword_1000DEDC0, &unk_1000AF270);
  v13 = *(v12 - 8);
  v54 = v12;
  v55 = v13;
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v52 = v39 - v15;
  v16 = *(v1 + 336);
  v57 = v1;
  v59 = *(*sub_100008614((v1 + 312), v16) + 64);
  v39[0] = v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10008E360(v1, v39[0]);
  v17 = *(v4 + 80);
  v18 = (v17 + 16) & ~v17;
  v42 = v18;
  v40 = v18 + v5;
  v41 = v17 | 7;
  v19 = swift_allocObject();
  sub_10008E3C8(v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18);

  static Subscribers.Demand.unlimited.getter();
  sub_100003998(&qword_1000DC9A0, &qword_1000AB3D0);
  v39[2] = sub_100003998(&qword_1000DEDC8, &unk_1000AF280);
  v43 = &protocol conformance descriptor for AnyPublisher<A, B>;
  sub_10000A6FC(&qword_1000DC9A8, &qword_1000DC9A0, &qword_1000AB3D0);
  v39[1] = sub_10000A6FC(&qword_1000DEDD0, &qword_1000DEDC8, &unk_1000AF280);
  Publisher<>.flatMap<A>(maxPublishers:_:)();

  v20 = v39[0];
  sub_10008E360(v57, v39[0]);
  v21 = v46;
  v22 = v44;
  v23 = v48;
  (*(v46 + 16))(v44, v49, v48);
  v24 = v21;
  v25 = (v40 + *(v21 + 80)) & ~*(v21 + 80);
  v26 = swift_allocObject();
  v27 = v42;
  sub_10008E3C8(v20, v26 + v42);
  (*(v24 + 32))(v26 + v25, v22, v23);
  v28 = swift_allocObject();
  *(v28 + 16) = sub_10008EAD4;
  *(v28 + 24) = v26;
  static Subscribers.Demand.unlimited.getter();
  sub_10000A6FC(&qword_1000DEDD8, &qword_1000DEDB0, &qword_1000AF260);
  v29 = v45;
  v30 = v50;
  v31 = v58;
  Publisher.flatMap<A, B>(maxPublishers:_:)();

  (*(v51 + 8))(v31, v30);
  sub_10008E360(v57, v20);
  v32 = swift_allocObject();
  sub_10008E3C8(v20, v32 + v27);
  v33 = swift_allocObject();
  *(v33 + 16) = sub_1000914F4;
  *(v33 + 24) = v32;
  static Subscribers.Demand.unlimited.getter();
  sub_100003998(&qword_1000DCC18, &qword_1000AB790);
  sub_10000A6FC(&qword_1000DEDE0, &qword_1000DEDB8, &qword_1000AF268);
  sub_10000A6FC(&qword_1000DCC20, &qword_1000DCC18, &qword_1000AB790);
  v35 = v52;
  v34 = v53;
  Publisher.flatMap<A, B>(maxPublishers:_:)();

  (*(v56 + 8))(v29, v34);
  sub_10000A6FC(&qword_1000DEDE8, &qword_1000DEDC0, &unk_1000AF270);
  v36 = v54;
  v37 = Publisher.eraseToAnyPublisher()();
  (*(v55 + 8))(v35, v36);
  return v37;
}

uint64_t sub_10008DB70()
{
  ActivityOperation = type metadata accessor for SubscriptionCreateActivityOperation();
  v2 = *(ActivityOperation - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(ActivityOperation - 8);
  v50 = v4;
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100003998(&qword_1000DEDB0, &qword_1000AF260);
  v7 = *(v6 - 8);
  v41 = v6;
  v42 = v7;
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v54 = &v39 - v9;
  v43 = sub_100003998(&qword_1000DEE08, &qword_1000AF2A8);
  v45 = *(v43 - 8);
  v10 = *(v45 + 64);
  __chkstk_darwin(v43);
  v56 = &v39 - v11;
  v46 = sub_100003998(&qword_1000DEE10, &qword_1000AF2B0);
  v49 = *(v46 - 8);
  v12 = *(v49 + 64);
  __chkstk_darwin(v46);
  v55 = &v39 - v13;
  v14 = sub_100003998(&qword_1000DEE18, &unk_1000AF2B8);
  v15 = *(v14 - 8);
  v47 = v14;
  v48 = v15;
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v44 = &v39 - v17;
  v18 = *(v0 + 336);
  v51 = v0;
  v57 = *(*sub_100008614((v0 + 312), v18) + 56);
  v19 = v0;
  v20 = v5;
  v40 = v5;
  sub_10008E360(v19, v5);
  v53 = *(v2 + 80);
  v21 = (v53 + 16) & ~v53;
  v22 = swift_allocObject();
  sub_10008E3C8(v20, v22 + v21);

  static Subscribers.Demand.unlimited.getter();
  sub_100003998(&qword_1000DC9A0, &qword_1000AB3D0);
  sub_100003998(&qword_1000DEDC8, &unk_1000AF280);
  v52 = &protocol conformance descriptor for AnyPublisher<A, B>;
  sub_10000A6FC(&qword_1000DC9A8, &qword_1000DC9A0, &qword_1000AB3D0);
  sub_10000A6FC(&qword_1000DEDD0, &qword_1000DEDC8, &unk_1000AF280);
  Publisher<>.flatMap<A>(maxPublishers:_:)();

  v23 = v51;
  v24 = v40;
  sub_10008E360(v51, v40);
  v25 = swift_allocObject();
  sub_10008E3C8(v24, v25 + v21);
  v26 = swift_allocObject();
  *(v26 + 16) = sub_10008F340;
  *(v26 + 24) = v25;
  static Subscribers.Demand.unlimited.getter();
  sub_100003998(&qword_1000DCC18, &qword_1000AB790);
  v39 = &protocol conformance descriptor for Publishers.FlatMap<A, B>;
  sub_10000A6FC(&qword_1000DEDD8, &qword_1000DEDB0, &qword_1000AF260);
  sub_10000A6FC(&qword_1000DCC20, &qword_1000DCC18, &qword_1000AB790);
  v27 = v41;
  v28 = v54;
  Publisher.flatMap<A, B>(maxPublishers:_:)();

  (*(v42 + 8))(v28, v27);
  sub_10008E360(v23, v24);
  v29 = swift_allocObject();
  sub_10008E3C8(v24, v29 + v21);
  static Subscribers.Demand.unlimited.getter();
  sub_100003998(&qword_1000DC970, &qword_1000AB3C0);
  sub_10000A6FC(&qword_1000DEE20, &qword_1000DEE08, &qword_1000AF2A8);
  sub_10000A6FC(&qword_1000DC978, &qword_1000DC970, &qword_1000AB3C0);
  v30 = v43;
  v31 = v56;
  Publisher.flatMap<A>(maxPublishers:_:)();

  (*(v45 + 8))(v31, v30);
  sub_10008E360(v51, v24);
  v32 = swift_allocObject();
  sub_10008E3C8(v24, v32 + v21);
  static Subscribers.Demand.unlimited.getter();
  sub_100003998(&qword_1000DD038, &unk_1000AB9A0);
  sub_10000A6FC(&qword_1000DEE28, &qword_1000DEE10, &qword_1000AF2B0);
  sub_10000A6FC(&qword_1000DD040, &qword_1000DD038, &unk_1000AB9A0);
  v33 = v44;
  v34 = v46;
  v35 = v55;
  Publisher.flatMap<A, B>(maxPublishers:_:)();

  (*(v49 + 8))(v35, v34);
  sub_10000A6FC(&qword_1000DEE30, &qword_1000DEE18, &unk_1000AF2B8);
  v36 = v47;
  v37 = Publisher.eraseToAnyPublisher()();
  (*(v48 + 8))(v33, v36);
  return v37;
}

uint64_t sub_10008E330@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_10008E444(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_10008E360(uint64_t a1, uint64_t a2)
{
  ActivityOperation = type metadata accessor for SubscriptionCreateActivityOperation();
  (*(*(ActivityOperation - 8) + 16))(a2, a1, ActivityOperation);
  return a2;
}

uint64_t sub_10008E3C8(uint64_t a1, uint64_t a2)
{
  ActivityOperation = type metadata accessor for SubscriptionCreateActivityOperation();
  (*(*(ActivityOperation - 8) + 32))(a2, a1, ActivityOperation);
  return a2;
}

uint64_t sub_10008E444(uint64_t a1)
{
  v31 = a1;
  v29 = sub_100003998(&qword_1000DEDF8, &unk_1000AF298);
  v27 = *(v29 - 8);
  v2 = *(v27 + 64);
  __chkstk_darwin(v29);
  v4 = &v25 - v3;
  v30 = sub_100003998(&qword_1000DCF80, &qword_1000AB930);
  v28 = *(v30 - 8);
  v5 = *(v28 + 64);
  __chkstk_darwin(v30);
  v7 = &v25 - v6;
  v8 = sub_100003998(&qword_1000DEDF0, &qword_1000AF290);
  v26 = *(v8 - 8);
  v9 = *(v26 + 64);
  __chkstk_darwin(v8);
  v11 = &v25 - v10;
  v12 = type metadata accessor for SportsScheduledActivities();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000A898(*(v1 + 304) + 16, v32);
  sub_100008614(v32, v32[3]);
  dispatch thunk of PersistentStorable.scheduledLiveActivities.getter();
  v17 = SportsScheduledActivities.scheduledActivities.getter();
  (*(v13 + 8))(v16, v12);
  v18 = *(v17 + 16);

  sub_100008A94(v32);
  if (v18 >= v31)
  {
    sub_100045BF8();
    v22 = swift_allocError();
    *v23 = xmmword_1000AF250;
    v32[0] = v22;
    sub_100003998(&qword_1000DC470, &qword_1000AA620);
    Fail.init(error:)();
    sub_10000A6FC(&qword_1000DEE00, &qword_1000DEDF0, &qword_1000AF290);
    v21 = Publisher.eraseToAnyPublisher()();
    (*(v26 + 8))(v11, v8);
  }

  else
  {
    Just.init(_:)();
    sub_100003998(&qword_1000DC470, &qword_1000AA620);
    v19 = v29;
    Just.setFailureType<A>(to:)();
    (*(v27 + 8))(v4, v19);
    sub_10000A6FC(&qword_1000DCFD8, &qword_1000DCF80, &qword_1000AB930);
    v20 = v30;
    v21 = Publisher.eraseToAnyPublisher()();
    (*(v28 + 8))(v7, v20);
  }

  return v21;
}

uint64_t sub_10008E884()
{
  ActivityOperation = type metadata accessor for SubscriptionCreateActivityOperation();
  sub_10003C224(ActivityOperation);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v7 = *(v6 + 64);
  v8 = type metadata accessor for Date();
  sub_10000AC48(v8);
  v10 = v9;
  v11 = *(v9 + 80);
  v31 = *(v12 + 64);
  v13 = (v1 + v5);
  sub_100008A94((v1 + v5));
  v14 = *(v1 + v5 + 40);

  v15 = *(v1 + v5 + 48);

  sub_100008A94((v1 + v5 + 56));
  sub_100008A94((v1 + v5 + 96));
  sub_100008A94((v1 + v5 + 136));
  v16 = *(v1 + v5 + 176);

  sub_100008A94((v1 + v5 + 184));
  sub_100008A94((v1 + v5 + 224));
  sub_100008A94((v1 + v5 + 264));
  v17 = *(v1 + v5 + 304);

  sub_100008A94((v1 + v5 + 312));
  if (*(v1 + v5 + 384) != 1)
  {

    v18 = *(v13 + 50);

    v19 = *(v13 + 51);

    v20 = *(v13 + 53);

    v21 = *(v13 + 55);

    v22 = *(v13 + 57);
  }

  if (*(v13 + 59) != 1)
  {

    if (*(v13 + 61) != 1)
    {
    }
  }

  v23 = v0[12];
  if (!sub_100008B84(&v13[v23], 1, v8))
  {
    (*(v10 + 8))(&v13[v23], v8);
  }

  v24 = v4 | v11;
  v25 = (v5 + v7 + v11) & ~v11;
  v26 = *&v13[v0[13] + 8];

  v27 = *&v13[v0[14] + 8];

  v28 = *&v13[v0[15] + 8];

  v29 = *&v13[v0[17]];

  (*(v10 + 8))(v1 + v25, v8);

  return _swift_deallocObject(v1, v25 + v31, v24 | 7);
}

uint64_t sub_10008EAD4()
{
  ActivityOperation = type metadata accessor for SubscriptionCreateActivityOperation();
  sub_10000AC84(ActivityOperation);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = *(v4 + 64);
  v6 = type metadata accessor for Date();
  sub_10001C3C4(v6);
  return sub_10008EB88(v0 + ((v3 + v5 + *(v7 + 80)) & ~*(v7 + 80)));
}

uint64_t sub_10008EB88(uint64_t a1)
{
  v29 = a1;
  v2 = sub_100003998(&qword_1000DEDF0, &qword_1000AF290);
  v27 = *(v2 - 8);
  v28 = v2;
  v3 = *(v27 + 64);
  __chkstk_darwin(v2);
  v25 = sub_100003998(&qword_1000DEDF8, &unk_1000AF298);
  v23 = *(v25 - 8);
  v4 = *(v23 + 64);
  __chkstk_darwin(v25);
  v6 = &v22 - v5;
  v26 = sub_100003998(&qword_1000DCF80, &qword_1000AB930);
  v24 = *(v26 - 8);
  v7 = *(v24 + 64);
  __chkstk_darwin(v26);
  v9 = &v22 - v8;
  v10 = sub_100003998(&qword_1000DC5A0, &unk_1000AB0E0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v22 - v12;
  sub_10000A898(*(v1 + 304) + 16, v30);
  sub_100008614(v30, v30[3]);
  v14 = type metadata accessor for Date();
  (*(*(v14 - 8) + 16))(v13, v29, v14);
  sub_100008E2C(v13, 0, 1, v14);
  v15 = (v1 + *(type metadata accessor for SubscriptionCreateActivityOperation() + 60));
  v16 = *v15;
  v17 = v15[1];
  dispatch thunk of PersistentStorable.scheduleLiveActivity(_:forId:)();
  sub_10001BB44(v13, &qword_1000DC5A0, &unk_1000AB0E0);
  sub_100008A94(v30);
  Just.init(_:)();
  sub_100003998(&qword_1000DC470, &qword_1000AA620);
  v18 = v25;
  Just.setFailureType<A>(to:)();
  (*(v23 + 8))(v6, v18);
  sub_10000A6FC(&qword_1000DCFD8, &qword_1000DCF80, &qword_1000AB930);
  v19 = v26;
  v20 = Publisher.eraseToAnyPublisher()();
  (*(v24 + 8))(v9, v19);
  return v20;
}

uint64_t sub_10008EFEC()
{
  ActivityOperation = type metadata accessor for SubscriptionCreateActivityOperation();
  sub_10003C224(ActivityOperation);
  v6 = *(v5 + 80);
  v8 = *(v7 + 64);
  sub_1000916F4();
  v9 = *(v2 + 6);

  sub_10009162C();
  sub_1000915F0();
  sub_100091798();
  if (!v10)
  {

    v11 = *(v2 + 50);

    v12 = *(v2 + 51);

    v13 = *(v2 + 53);

    v14 = *(v2 + 55);

    v15 = *(v2 + 57);
  }

  if (*(v2 + 59) != 1)
  {

    if (*(v2 + 61) != 1)
    {
    }
  }

  v16 = v0[12];
  v17 = type metadata accessor for Date();
  if (!sub_1000916B8(v17))
  {
    sub_10000ACDC(v3);
    (*(v18 + 8))(&v2[v16], v3);
  }

  sub_10000AE38(v0[13]);
  sub_10000AE38(v0[14]);
  sub_10000AE38(v0[15]);
  v19 = *&v2[v0[17]];

  return _swift_deallocObject(v1, ((v6 + 16) & ~v6) + v8, v6 | 7);
}

uint64_t sub_10008F154()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10008F18C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  result = v3();
  *a1 = result;
  return result;
}

uint64_t sub_10008F1BC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  *(swift_allocObject() + 16) = v3;
  v4 = sub_100003998(&qword_1000DEE38, &qword_1000AF2D8);
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  Future.init(_:)();
  sub_10000A6FC(&qword_1000DEE40, &qword_1000DEE38, &qword_1000AF2D8);
  v7 = Publisher.eraseToAnyPublisher()();

  *a2 = v7;
  return result;
}

uint64_t sub_10008F2CC(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v2 = sub_1000916D8();
  sub_10001C3C4(v2);
  v4 = *(v3 + 80);
  v5 = sub_100091548();

  return a2(v5);
}

uint64_t sub_10008F344()
{
  ActivityOperation = type metadata accessor for SubscriptionCreateActivityOperation();
  sub_10001C3C4(ActivityOperation);
  v3 = v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80));
  return sub_10008CEC0();
}

uint64_t sub_10008F39C@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  *a2 = *(*sub_100008614((a1 + 312), *(a1 + 336)) + 48);
}

uint64_t sub_10008F3E8()
{
  v0 = sub_1000916D8();
  sub_10001C3C4(v0);
  v2 = *(v1 + 80);
  sub_100091548();

  return sub_10008F39C(v3, v4);
}

uint64_t sub_10008F448@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  ActivityOperation = type metadata accessor for SubscriptionCreateActivityOperation();
  v7 = *(ActivityOperation - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(ActivityOperation - 8);
  v10 = *a1;
  v9 = a1[1];
  sub_10008E360(a2, &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v12 = swift_allocObject();
  sub_10008E3C8(&v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11);
  v13 = (v12 + ((v8 + v11 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v13 = v10;
  v13[1] = v9;
  v14 = sub_100003998(&qword_1000DD038, &unk_1000AB9A0);
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();

  result = Future.init(_:)();
  *a3 = result;
  return result;
}

uint64_t sub_10008F5A0()
{
  v0 = sub_1000916D8();
  sub_10001C3C4(v0);
  v2 = *(v1 + 80);
  v3 = sub_100091548();

  return sub_10008F448(v3, v4, v5);
}

uint64_t sub_10008F600(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  ActivityOperation = type metadata accessor for SubscriptionCreateActivityOperation();
  v11 = *(ActivityOperation - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(ActivityOperation - 8);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100003998(&qword_1000DC5A8, &qword_1000AAFD0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v26 - v16;
  v18 = swift_allocObject();
  *(v18 + 16) = a1;
  *(v18 + 24) = a2;
  v19 = type metadata accessor for TaskPriority();
  sub_100008E2C(v17, 1, 1, v19);
  sub_10008E360(a3, v13);
  v20 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v21 = (v12 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  *(v22 + 16) = 0;
  *(v22 + 24) = 0;
  sub_10008E3C8(v13, v22 + v20);
  v23 = (v22 + v21);
  *v23 = a4;
  v23[1] = a5;
  v24 = (v22 + ((v21 + 23) & 0xFFFFFFFFFFFFFFF8));
  *v24 = sub_1000326E0;
  v24[1] = v18;

  sub_10004A77C();
}

uint64_t sub_10008F7F8()
{
  ActivityOperation = type metadata accessor for SubscriptionCreateActivityOperation();
  sub_10003C224(ActivityOperation);
  v6 = *(v5 + 80);
  v8 = *(v7 + 64);
  sub_1000916F4();
  v9 = *(v2 + 6);

  sub_10009162C();
  sub_1000915F0();
  sub_100091798();
  if (!v10)
  {

    v11 = *(v2 + 50);

    v12 = *(v2 + 51);

    v13 = *(v2 + 53);

    v14 = *(v2 + 55);

    v15 = *(v2 + 57);
  }

  if (*(v2 + 59) != 1)
  {

    if (*(v2 + 61) != 1)
    {
    }
  }

  v16 = v0[12];
  v17 = type metadata accessor for Date();
  if (!sub_1000916B8(v17))
  {
    sub_10000ACDC(v3);
    (*(v18 + 8))(&v2[v16], v3);
  }

  v19 = (v8 + ((v6 + 16) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_10000AE38(v0[13]);
  sub_10000AE38(v0[14]);
  sub_10000AE38(v0[15]);
  v20 = *&v2[v0[17]];

  v21 = *(v1 + v19 + 8);

  return _swift_deallocObject(v1, v19 + 16, v6 | 7);
}

uint64_t sub_10008F978(uint64_t a1, uint64_t a2)
{
  ActivityOperation = type metadata accessor for SubscriptionCreateActivityOperation();
  sub_10000AC84(ActivityOperation);
  v7 = v6;
  v9 = v8;
  v10 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v11 = (v2 + ((*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = *v11;
  v13 = v11[1];

  return sub_10008F600(a1, a2, v2 + v10, v12, v13);
}

uint64_t sub_10008FA20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a7;
  v8[9] = a8;
  v8[6] = a5;
  v8[7] = a6;
  v8[5] = a4;
  v9 = type metadata accessor for SportingEventProgressStatus();
  v8[10] = v9;
  v10 = *(v9 - 8);
  v8[11] = v10;
  v11 = *(v10 + 64) + 15;
  v8[12] = swift_task_alloc();
  ActivityOperation = type metadata accessor for SubscriptionCreateActivityOperation();
  v8[13] = ActivityOperation;
  v13 = *(*(ActivityOperation - 8) + 64) + 15;
  v8[14] = swift_task_alloc();

  return _swift_task_switch(sub_10008FB18, 0, 0);
}

uint64_t sub_10008FB18()
{
  sub_10001BEC4();
  if (qword_1000DBA00 != -1)
  {
    sub_100091528();
  }

  v1 = *(v0 + 104);
  v2 = *(v0 + 40);
  *(v0 + 120) = qword_1000E6D10;
  v3 = (v2 + *(v1 + 60));
  *(v0 + 128) = *v3;
  *(v0 + 136) = v3[1];
  *(v0 + 192) = *(v2 + 352);
  *(v0 + 193) = *(v2 + 496);
  v4 = (v2 + *(v1 + 56));
  *(v0 + 144) = *v4;
  *(v0 + 152) = v4[1];
  if (qword_1000DB9F0 != -1)
  {
    sub_100091688();
  }

  v5 = qword_1000E6D00;

  return _swift_task_switch(sub_10008FC0C, v5, 0);
}

uint64_t sub_10008FC0C()
{
  v1 = *(v0 + 120);
  sub_100052444(*(v0 + 128), *(v0 + 136), *(v0 + 192), *(v0 + 193), *(v0 + 144), *(v0 + 152), *(v0 + 48), *(v0 + 56));
  *(v0 + 160) = 0;

  return _swift_task_switch(sub_10008FCAC, 0, 0);
}

uint64_t sub_10008FCAC()
{
  v40 = v0;
  v1 = *(v0 + 40);
  v2 = *(v1 + 304);
  v3 = *(v1 + *(*(v0 + 104) + 68));
  if ((sub_100066914() & 1) == 0)
  {
    _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v5 = *(v0 + 128);
  v4 = *(v0 + 136);

  v6 = v2[6];
  sub_100008614(v2 + 2, v2[5]);
  v7 = dispatch thunk of PersistentStorable.retrieveEventSubscription(canonicalId:isConventionalOrUnified:)();
  *(v0 + 168) = v7;
  if (v7)
  {
    v8 = v7;
    if (qword_1000DBA38 != -1)
    {
      swift_once();
    }

    v9 = *(v0 + 112);
    v10 = *(v0 + 40);
    v11 = type metadata accessor for Logger();
    sub_100007DE8(v11, qword_1000E6D90);
    sub_10008E360(v10, v9);
    v12 = v8;
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.debug.getter();

    v15 = os_log_type_enabled(v13, v14);
    v16 = *(v0 + 112);
    if (v15)
    {
      v17 = *(v0 + 96);
      v18 = *(v0 + 104);
      v19 = *(v0 + 88);
      v38 = *(v0 + 80);
      v20 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      *v20 = 136315394;
      v21 = (v16 + *(v18 + 60));
      v23 = *v21;
      v22 = v21[1];

      sub_1000915C8();
      v24 = sub_1000170D4(v23, v22, &v39);

      *(v20 + 4) = v24;
      *(v20 + 12) = 2080;
      v25 = SportingEventSubscription.sportingEventDetails.getter();
      SportingEvent.progressStatus.getter();

      v26 = SportingEventProgressStatus.rawValue.getter();
      v28 = v27;
      (*(v19 + 8))(v17, v38);
      v29 = sub_1000170D4(v26, v28, &v39);

      *(v20 + 14) = v29;
      _os_log_impl(&_mh_execute_header, v13, v14, "Update activity for '%s' with latest state %s", v20, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_1000915C8();
    }

    v35 = swift_task_alloc();
    *(v0 + 176) = v35;
    *v35 = v0;
    v35[1] = sub_100090070;
    v36 = *(v0 + 192);
    v37 = *(v0 + 120);

    return sub_100058748();
  }

  else
  {
    v30 = *(v0 + 40);
    sub_1000908E0();
    if (qword_1000DBA68 != -1)
    {
      sub_100091668();
    }

    v32 = *(v0 + 64);
    v31 = *(v0 + 72);
    sub_10008AB34(*(v0 + 128), *(v0 + 136));
    v32(1, 0);
    sub_1000917B8();

    sub_10001BEDC();

    return v33();
  }
}

uint64_t sub_100090070()
{
  sub_10001BEC4();
  v2 = *(*v1 + 176);
  v5 = *v1;
  *(*v1 + 184) = v0;

  if (v0)
  {
    v3 = sub_100090418;
  }

  else
  {
    v3 = sub_100090180;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100090180()
{
  v1 = *(v0 + 40);
  sub_1000908E0();
  if (qword_1000DBA68 != -1)
  {
    sub_100091668();
  }

  v3 = *(v0 + 64);
  v2 = *(v0 + 72);
  sub_10008AB34(*(v0 + 128), *(v0 + 136));
  v3(1, 0);
  sub_1000917B8();

  sub_10001BEDC();

  return v4();
}

uint64_t sub_100090240()
{
  v2 = v1[20];
  sub_100091778();
  sub_100003998(&qword_1000DC470, &qword_1000AA620);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_4;
  }

  v3 = v1[2];
  v4 = v1[3];
  if ((v4 & 0xFFFFFFFFFFFFFFFELL) == 0xA)
  {
    v5 = sub_10001BFB0();
    sub_100090FEC(v5, v6);
LABEL_4:
    v8 = v1[8];
    v7 = v1[9];
    v9 = v1[4];

    v10 = swift_allocObject();
    sub_100091738(v10);
    v11 = qword_1000DB9C0;

    if (v11 != -1)
    {
      sub_100091508();
    }

    sub_1000916A8();
    sub_100091594(v12, v13, v14);

    goto LABEL_13;
  }

  v16 = v1[8];
  v15 = v1[9];
  if (v4 == 2)
  {
    sub_10005A1D0();
    v17 = sub_10007BF3C();
    sub_100091724(v17, v18);
    v16();
  }

  else
  {
    v19 = swift_allocObject();
    sub_100091758(v19);
    v20 = sub_10001BFB0();
    sub_100091054(v20, v21);
    if (qword_1000DB9C0 != -1)
    {
      sub_100091508();
    }

    sub_1000916A8();
    sub_100091560(v22, v23, v24);
    v25 = sub_10001BFB0();
    sub_100090FEC(v25, v26);
  }

  v27 = *v0;
LABEL_13:

  sub_1000917B8();

  sub_10001BEDC();

  return v28();
}

uint64_t sub_100090418()
{
  v2 = *(v1 + 184);
  sub_100091778();
  sub_100003998(&qword_1000DC470, &qword_1000AA620);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_4;
  }

  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  if ((v4 & 0xFFFFFFFFFFFFFFFELL) == 0xA)
  {
    v5 = sub_10001BFB0();
    sub_100090FEC(v5, v6);
LABEL_4:
    v8 = *(v1 + 64);
    v7 = *(v1 + 72);
    v9 = *(v1 + 32);

    v10 = swift_allocObject();
    sub_100091738(v10);
    v11 = qword_1000DB9C0;

    if (v11 != -1)
    {
      sub_100091508();
    }

    sub_1000916A8();
    sub_100091594(v12, v13, v14);

    goto LABEL_13;
  }

  v16 = *(v1 + 64);
  v15 = *(v1 + 72);
  if (v4 == 2)
  {
    sub_10005A1D0();
    v17 = sub_10007BF3C();
    sub_100091724(v17, v18);
    v16();
  }

  else
  {
    v19 = swift_allocObject();
    sub_100091758(v19);
    v20 = sub_10001BFB0();
    sub_100091054(v20, v21);
    if (qword_1000DB9C0 != -1)
    {
      sub_100091508();
    }

    sub_1000916A8();
    sub_100091560(v22, v23, v24);
    v25 = sub_10001BFB0();
    sub_100090FEC(v25, v26);
  }

  v27 = *v0;
LABEL_13:

  sub_1000917B8();

  sub_10001BEDC();

  return v28();
}

uint64_t sub_1000905F8()
{
  ActivityOperation = type metadata accessor for SubscriptionCreateActivityOperation();
  sub_10003C224(ActivityOperation);
  v6 = *(v5 + 80);
  v8 = *(v7 + 64);
  v9 = *(v1 + 16);
  swift_unknownObjectRelease();
  sub_1000916F4();
  v10 = *(v2 + 6);

  sub_10009162C();
  sub_1000915F0();
  sub_100091798();
  if (!v11)
  {

    v12 = *(v2 + 50);

    v13 = *(v2 + 51);

    v14 = *(v2 + 53);

    v15 = *(v2 + 55);

    v16 = *(v2 + 57);
  }

  if (*(v2 + 59) != 1)
  {

    if (*(v2 + 61) != 1)
    {
    }
  }

  v17 = v0[12];
  v18 = type metadata accessor for Date();
  if (!sub_1000916B8(v18))
  {
    sub_10000ACDC(v3);
    (*(v19 + 8))(&v2[v17], v3);
  }

  v20 = (v8 + ((v6 + 32) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = (v20 + 23) & 0xFFFFFFFFFFFFFFF8;
  sub_10000AE38(v0[13]);
  sub_10000AE38(v0[14]);
  sub_10000AE38(v0[15]);
  v22 = *&v2[v0[17]];

  v23 = *(v1 + v20 + 8);

  v24 = *(v1 + v21 + 8);

  return _swift_deallocObject(v1, v21 + 16, v6 | 7);
}

uint64_t sub_100090794(uint64_t a1)
{
  v3 = v2;
  ActivityOperation = type metadata accessor for SubscriptionCreateActivityOperation();
  sub_10000AC84(ActivityOperation);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v9 = (*(v8 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 23) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v1 + 16);
  v12 = *(v1 + 24);
  v13 = (v1 + v9);
  v14 = *v13;
  v15 = v13[1];
  v16 = *(v1 + v10);
  v17 = *(v1 + v10 + 8);
  v18 = swift_task_alloc();
  *(v3 + 16) = v18;
  *v18 = v3;
  v18[1] = sub_100034950;

  return sub_10008FA20(a1, v11, v12, v1 + v7, v14, v15, v16, v17);
}

uint64_t sub_1000908E0()
{
  ActivityOperation = type metadata accessor for SubscriptionCreateActivityOperation();
  v2 = *(*(ActivityOperation - 8) + 64);
  __chkstk_darwin(ActivityOperation);
  v3 = sub_100003998(&qword_1000DC5A0, &unk_1000AB0E0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v13[-1] - v5;
  sub_10000A898(*(v0 + 304) + 16, v13);
  sub_100008614(v13, v13[3]);
  v7 = type metadata accessor for Date();
  sub_100008E2C(v6, 1, 1, v7);
  v8 = (v0 + *(ActivityOperation + 60));
  v9 = *v8;
  v10 = v8[1];
  dispatch thunk of PersistentStorable.scheduleLiveActivity(_:forId:)();
  sub_10001BB44(v6, &qword_1000DC5A0, &unk_1000AB0E0);
  return sub_100008A94(v13);
}

uint64_t sub_100090BC4(uint64_t a1, void (*a2)(uint64_t, uint64_t), uint64_t a3, uint64_t a4, unint64_t a5)
{
  sub_10005A1D0();
  v8 = swift_allocError();
  *v9 = a4;
  v9[1] = a5;
  sub_100091068(a4, a5);
  a2(v8, 1);
}

uint64_t sub_100090C58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100003998(&qword_1000DC5A8, &qword_1000AAFD0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v14 - v8;
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v11 = type metadata accessor for TaskPriority();
  sub_100008E2C(v9, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = a3;
  v12[5] = sub_100026094;
  v12[6] = v10;

  sub_10004A77C();
}

uint64_t sub_100090D80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return _swift_task_switch(sub_100090DA4, 0, 0);
}

uint64_t sub_100090DA4()
{
  sub_10001BEC4();
  if (qword_1000DBA00 != -1)
  {
    sub_100091528();
  }

  *(v0 + 40) = qword_1000E6D10;
  if (qword_1000DB9F0 != -1)
  {
    sub_100091688();
  }

  v1 = qword_1000E6D00;

  return _swift_task_switch(sub_100090E50, v1, 0);
}

uint64_t sub_100090E50()
{
  sub_10001BEC4();
  v1 = *(v0 + 40);
  *(v0 + 48) = sub_10004F858();

  return _swift_task_switch(sub_100090EB8, 0, 0);
}

uint64_t sub_100090EB8()
{
  v2 = v0[3];
  v1 = v0[4];
  if (v0[6] >= v0[2])
  {
    sub_100045BF8();
    sub_10007BF3C();
    *v3 = xmmword_1000AC270;
    v2();
  }

  else
  {
    (v2)(0, 0);
  }

  sub_10001BEDC();

  return v4();
}

uint64_t sub_100090F78()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100090FEC(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0xFFFFFFFFFFFFFFFELL) != 0xA)
  {
    return sub_100062E30(a1, a2);
  }

  return a1;
}

uint64_t sub_100091000()
{
  v1 = *(v0 + 24);

  if (*(v0 + 40) >= 0xAuLL)
  {
  }

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100091054(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0xFFFFFFFFFFFFFFFELL) != 0xA)
  {
    return sub_100091068(a1, a2);
  }

  return a1;
}

uint64_t sub_100091068(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0xA)
  {
  }

  return result;
}

uint64_t sub_10009107C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_10001C2AC(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1000910EC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 48);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10009112C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100091500;

  return sub_100090D80(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_100091208(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100003998(&qword_1000DC5A0, &unk_1000AB0E0);
    v9 = a1 + *(a3 + 48);

    return sub_100008B84(v9, a2, v8);
  }
}

uint64_t sub_1000912B0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_100003998(&qword_1000DC5A0, &unk_1000AB0E0);
    v8 = v5 + *(a4 + 48);

    return sub_100008E2C(v8, a2, a2, v7);
  }

  return result;
}

void sub_10009133C()
{
  type metadata accessor for DataRepository();
  if (v0 <= 0x3F)
  {
    sub_10009147C();
    if (v1 <= 0x3F)
    {
      sub_10000D988(319, &qword_1000DEEB8);
      if (v2 <= 0x3F)
      {
        sub_10000D988(319, &unk_1000DEEC0);
        if (v3 <= 0x3F)
        {
          sub_1000448A0();
          if (v4 <= 0x3F)
          {
            type metadata accessor for ActivityCapUtility();
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

unint64_t sub_10009147C()
{
  result = qword_1000DEEB0;
  if (!qword_1000DEEB0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1000DEEB0);
  }

  return result;
}

uint64_t sub_100091508()
{

  return swift_once();
}

uint64_t sub_100091528()
{

  return swift_once();
}

uint64_t sub_100091560@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v6 = (v3 + *(a3 + 52));
  v7 = *v6;
  v8 = v6[1];

  return sub_10002B47C(v7, v8, a1, a2, sub_100091048, v4);
}

uint64_t sub_100091594@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v6 = (v3 + *(a3 + 52));
  v7 = *v6;
  v8 = v6[1];

  return sub_10002B47C(v7, v8, a1, a2, sub_100090FB8, v4);
}

uint64_t sub_1000915C8()
{

  return sub_10009107C(v0, type metadata accessor for SubscriptionCreateActivityOperation);
}

uint64_t sub_1000915F0()
{
  sub_100008A94(v0 + 23);
  sub_100008A94(v0 + 28);
  sub_100008A94(v0 + 33);
  v1 = v0[38];
}

uint64_t sub_10009162C()
{
  sub_100008A94(v0 + 7);
  sub_100008A94(v0 + 12);
  sub_100008A94(v0 + 17);
  v1 = v0[22];
}

uint64_t sub_100091668()
{

  return swift_once();
}

uint64_t sub_100091688()
{

  return swift_once();
}

void sub_1000916A8()
{
  v1 = v0[16];
  v2 = v0[17];
  v3 = v0[13];
  v4 = v0[5];
}

uint64_t sub_1000916B8(uint64_t a1)
{

  return sub_100008B84(v1 + v2, 1, a1);
}

uint64_t sub_1000916D8()
{

  return type metadata accessor for SubscriptionCreateActivityOperation();
}

uint64_t sub_1000916F4()
{
  sub_100008A94((v0 + v1));
  v2 = *(v0 + v1 + 40);
}

uint64_t sub_100091738(void *a1)
{
  a1[2] = v3;
  a1[3] = v1;
  a1[4] = v2;

  return swift_errorRetain();
}

uint64_t sub_100091758(void *a1)
{
  a1[2] = v4;
  a1[3] = v1;
  a1[4] = v2;
  a1[5] = v3;
}

uint64_t sub_100091778()
{
  *(v1 + 32) = v0;

  return swift_errorRetain();
}

uint64_t sub_1000917B8()
{
  v2 = *(v0 + 112);
  v3 = *(v0 + 96);
}

id sub_1000917D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = &v3[OBJC_IVAR____TtC7sportsd16SportsXPCSession_entitlement];
  *v4 = a1;
  *(v4 + 1) = a2;
  *&v3[OBJC_IVAR____TtC7sportsd16SportsXPCSession_connection] = a3;
  v6.receiver = v3;
  v6.super_class = type metadata accessor for SportsXPCSession();
  return objc_msgSendSuper2(&v6, "init");
}

uint64_t sub_100091820()
{
  v1 = v0;
  if (qword_1000DBA10 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100007DE8(v2, qword_1000E6D18);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "New daemon connection.", v5, 2u);
  }

  v6 = *(v1 + OBJC_IVAR____TtC7sportsd16SportsXPCSession_connection);
  v7 = *(v1 + OBJC_IVAR____TtC7sportsd16SportsXPCSession_entitlement);
  v8 = *(v1 + OBJC_IVAR____TtC7sportsd16SportsXPCSession_entitlement + 8);
  v9 = String._bridgeToObjectiveC()();
  v10 = [v6 valueForEntitlement:v9];

  if (v10)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v14 = 0u;
    v15 = 0u;
  }

  v16[0] = v14;
  v16[1] = v15;
  sub_100032628(v16, &v14);
  if (!*(&v15 + 1))
  {
    sub_10000B860(&v14);
LABEL_13:
    v11 = &selRef_invalidate;
    goto LABEL_14;
  }

  if ((swift_dynamicCast() & 1) == 0 || (v13 & 1) == 0)
  {
    goto LABEL_13;
  }

  v11 = &selRef_resume;
LABEL_14:
  [v6 *v11];
  return sub_10000B860(v16);
}

id sub_100091A2C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SportsXPCSession();
  return objc_msgSendSuper2(&v2, "dealloc");
}

double sub_100091AD4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v4 = -1.0;
  switch(a4)
  {
    case 1:
      return 0.0;
    case 2:
      v11 = (a3 + 48);
      v12 = *(a3 + 16) + 1;
      while (--v12)
      {
        v4 = *v11;
        if (*(v11 - 2) != a1 || *(v11 - 1) != a2)
        {
          v11 += 3;
          if ((sub_100092668() & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_20;
      }

      v4 = 0.0;
LABEL_20:
      v19 = a3;

      sub_100091C84(&v19);
      v14 = (v19 + 48);
      v15 = *(v19 + 16) + 1;
      while (1)
      {
        if (!--v15)
        {
LABEL_30:

          return v4;
        }

        v16 = *v14;
        if (v4 < *v14)
        {

          return v16 + 1.0;
        }

        if (v16 == v4)
        {
          v17 = *(v14 - 2) == a1 && *(v14 - 1) == a2;
          if (!v17 && (sub_100092668() & 1) == 0)
          {
            break;
          }
        }

        v14 += 3;
        if (v16 < v4)
        {
          goto LABEL_30;
        }
      }

      return v4 + 1.0;
    case 3:
      return v4;
    default:
      v8 = (a3 + 48);
      v9 = *(a3 + 16) + 1;
      break;
  }

  while (--v9)
  {
    v4 = *v8;
    if (*(v8 - 2) != a1 || *(v8 - 1) != a2)
    {
      v8 += 3;
      if ((sub_100092668() & 1) == 0)
      {
        continue;
      }
    }

    return v4;
  }

  return 0.0;
}

Swift::Int sub_100091C84(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_10008333C(v2);
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_100091CF0(v6);
  *a1 = v2;
  return result;
}

Swift::Int sub_100091CF0(uint64_t *a1)
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
        sub_100003998(&qword_1000DC500, &qword_1000AAF48);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v6[2] = v5;
      }

      v7[0] = (v6 + 4);
      v7[1] = v5;
      sub_100091E74(v7, v8, a1, v4);
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
    return sub_100091DF4(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_100091DF4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 24 * a3;
    v6 = result - a3;
    while (2)
    {
      v7 = *(v4 + 24 * a3 + 16);
      v8 = v6;
      v9 = v5;
      do
      {
        if (*(v9 - 1) >= v7)
        {
          break;
        }

        if (!v4)
        {
          __break(1u);
          return result;
        }

        v10 = *v9;
        v11 = *(v9 + 1);
        *v9 = *(v9 - 3);
        v9[2] = *(v9 - 1);
        *(v9 - 2) = v11;
        *(v9 - 1) = v7;
        *(v9 - 3) = v10;
        v9 -= 3;
      }

      while (!__CFADD__(v8++, 1));
      ++a3;
      v5 += 24;
      --v6;
      if (a3 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_100091E74(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v90 = _swiftEmptyArrayStorage;
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = _swiftEmptyArrayStorage;
    v85 = a4;
    while (1)
    {
      v9 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v10 = *(*a3 + 24 * v9 + 16);
        v11 = *a3 + 24 * v7;
        v12 = 24 * v7;
        v13 = *(v11 + 16);
        v14 = (v11 + 64);
        v15 = v7 + 2;
        v16 = v10;
        while (1)
        {
          v17 = v15;
          if (++v9 >= v6)
          {
            break;
          }

          v18 = *v14;
          v14 += 3;
          v19 = (v13 < v10) ^ (v16 >= v18);
          ++v15;
          v16 = v18;
          if ((v19 & 1) == 0)
          {
            goto LABEL_9;
          }
        }

        v9 = v6;
LABEL_9:
        if (v13 < v10)
        {
          if (v9 < v7)
          {
            goto LABEL_108;
          }

          if (v7 < v9)
          {
            if (v6 >= v17)
            {
              v6 = v17;
            }

            v20 = 24 * v6 - 8;
            v21 = v9;
            v22 = v7;
            do
            {
              if (v22 != --v21)
              {
                v23 = *a3;
                if (!*a3)
                {
                  goto LABEL_113;
                }

                v24 = (v23 + v12);
                v25 = (v23 + v20);
                v26 = *v24;
                v27 = v24[1];
                v28 = v24[2];
                v29 = *v25;
                *v24 = *(v25 - 1);
                v24[2] = v29;
                *(v25 - 2) = v26;
                *(v25 - 1) = v27;
                *v25 = v28;
              }

              ++v22;
              v20 -= 24;
              v12 += 24;
            }

            while (v22 < v21);
            v6 = a3[1];
          }
        }
      }

      if (v9 < v6)
      {
        if (__OFSUB__(v9, v7))
        {
          goto LABEL_107;
        }

        if (v9 - v7 < a4)
        {
          if (__OFADD__(v7, a4))
          {
            goto LABEL_109;
          }

          if (v7 + a4 < v6)
          {
            v6 = v7 + a4;
          }

          if (v6 < v7)
          {
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
            return;
          }

          if (v9 != v6)
          {
            v30 = *a3;
            v31 = *a3 + 24 * v9;
            v32 = v7 - v9;
            do
            {
              v33 = *(v30 + 24 * v9 + 16);
              v34 = v32;
              v35 = v31;
              do
              {
                if (*(v35 - 1) >= v33)
                {
                  break;
                }

                if (!v30)
                {
                  goto LABEL_111;
                }

                v36 = *v35;
                v37 = *(v35 + 1);
                *v35 = *(v35 - 3);
                v35[2] = *(v35 - 1);
                *(v35 - 2) = v37;
                *(v35 - 1) = v33;
                *(v35 - 3) = v36;
                v35 -= 3;
              }

              while (!__CFADD__(v34++, 1));
              ++v9;
              v31 += 24;
              --v32;
            }

            while (v9 != v6);
            v9 = v6;
          }
        }
      }

      if (v9 < v7)
      {
        goto LABEL_106;
      }

      v87 = v9;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v82 = v8[2];
        sub_100016B2C();
        v8 = v83;
      }

      v39 = v8[2];
      v40 = v39 + 1;
      if (v39 >= v8[3] >> 1)
      {
        sub_100016B2C();
        v8 = v84;
      }

      v8[2] = v40;
      v41 = v8 + 4;
      v42 = &v8[2 * v39 + 4];
      *v42 = v7;
      v42[1] = v87;
      v88 = *a1;
      if (!*a1)
      {
        goto LABEL_114;
      }

      if (v39)
      {
        while (1)
        {
          v43 = v40 - 1;
          v44 = &v41[2 * v40 - 2];
          v45 = &v8[2 * v40];
          if (v40 >= 4)
          {
            break;
          }

          if (v40 == 3)
          {
            v46 = v8[4];
            v47 = v8[5];
            v56 = __OFSUB__(v47, v46);
            v48 = v47 - v46;
            v49 = v56;
LABEL_56:
            if (v49)
            {
              goto LABEL_96;
            }

            v61 = *v45;
            v60 = v45[1];
            v62 = __OFSUB__(v60, v61);
            v63 = v60 - v61;
            v64 = v62;
            if (v62)
            {
              goto LABEL_99;
            }

            v65 = v44[1];
            v66 = v65 - *v44;
            if (__OFSUB__(v65, *v44))
            {
              goto LABEL_102;
            }

            if (__OFADD__(v63, v66))
            {
              goto LABEL_104;
            }

            if (v63 + v66 >= v48)
            {
              if (v48 < v66)
              {
                v43 = v40 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          if (v40 < 2)
          {
            goto LABEL_98;
          }

          v68 = *v45;
          v67 = v45[1];
          v56 = __OFSUB__(v67, v68);
          v63 = v67 - v68;
          v64 = v56;
LABEL_71:
          if (v64)
          {
            goto LABEL_101;
          }

          v70 = *v44;
          v69 = v44[1];
          v56 = __OFSUB__(v69, v70);
          v71 = v69 - v70;
          if (v56)
          {
            goto LABEL_103;
          }

          if (v71 < v63)
          {
            goto LABEL_85;
          }

LABEL_78:
          if (v43 - 1 >= v40)
          {
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
            __break(1u);
LABEL_109:
            __break(1u);
            goto LABEL_110;
          }

          if (!*a3)
          {
            goto LABEL_112;
          }

          v75 = &v41[2 * v43 - 2];
          v76 = *v75;
          v77 = &v41[2 * v43];
          v78 = v77[1];
          sub_1000924C0((*a3 + 24 * *v75), (*a3 + 24 * *v77), *a3 + 24 * v78, v88);
          if (v5)
          {
            goto LABEL_89;
          }

          if (v78 < v76)
          {
            goto LABEL_91;
          }

          v79 = v8;
          v80 = v8[2];
          if (v43 > v80)
          {
            goto LABEL_92;
          }

          *v75 = v76;
          v75[1] = v78;
          if (v43 >= v80)
          {
            goto LABEL_93;
          }

          v40 = v80 - 1;
          memmove(&v41[2 * v43], v77 + 2, 16 * (v80 - 1 - v43));
          v79[2] = v80 - 1;
          v81 = v80 > 2;
          v8 = v79;
          v5 = 0;
          if (!v81)
          {
            goto LABEL_85;
          }
        }

        v50 = &v41[2 * v40];
        v51 = *(v50 - 8);
        v52 = *(v50 - 7);
        v56 = __OFSUB__(v52, v51);
        v53 = v52 - v51;
        if (v56)
        {
          goto LABEL_94;
        }

        v55 = *(v50 - 6);
        v54 = *(v50 - 5);
        v56 = __OFSUB__(v54, v55);
        v48 = v54 - v55;
        v49 = v56;
        if (v56)
        {
          goto LABEL_95;
        }

        v57 = v45[1];
        v58 = v57 - *v45;
        if (__OFSUB__(v57, *v45))
        {
          goto LABEL_97;
        }

        v56 = __OFADD__(v48, v58);
        v59 = v48 + v58;
        if (v56)
        {
          goto LABEL_100;
        }

        if (v59 >= v53)
        {
          v73 = *v44;
          v72 = v44[1];
          v56 = __OFSUB__(v72, v73);
          v74 = v72 - v73;
          if (v56)
          {
            goto LABEL_105;
          }

          if (v48 < v74)
          {
            v43 = v40 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_56;
      }

LABEL_85:
      v6 = a3[1];
      v7 = v87;
      a4 = v85;
      if (v87 >= v6)
      {
        v90 = v8;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_115;
  }

  sub_100092388(&v90, *a1, a3);
LABEL_89:
}

uint64_t sub_100092388(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v15 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_100082EC4(v15);
    v15 = result;
  }

  v12 = v4;
  *v4 = v15;
  v6 = (v15 + 16);
  for (i = *(v15 + 16); ; *v6 = i)
  {
    if (i < 2)
    {
LABEL_10:
      *v12 = v15;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v4 = (v15 + 16 * i);
    v8 = *v4;
    v9 = &v6[2 * i];
    v10 = v9[1];
    sub_1000924C0((*a3 + 24 * *v4), (*a3 + 24 * *v9), *a3 + 24 * v10, a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v10 < v8)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (i - 2 >= *v6)
    {
      goto LABEL_12;
    }

    *v4 = v8;
    v4[1] = v10;
    v11 = *v6 - i;
    if (*v6 < i)
    {
      goto LABEL_13;
    }

    i = *v6 - 1;
    result = memmove(v9, v9 + 2, 16 * v11);
  }

  *v12 = v15;
  __break(1u);
  return result;
}

uint64_t sub_1000924C0(char *a1, char *a2, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 24;
  v9 = (a3 - a2) / 24;
  if (v8 < v9)
  {
    sub_100016F38(a1, (a2 - a1) / 24, a4);
    v10 = &v4[3 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_28;
      }

      if (v4[2] >= v6[2])
      {
        break;
      }

      v12 = v6;
      v13 = v7 == v6;
      v6 += 3;
      if (!v13)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 3;
    }

    v12 = v4;
    v13 = v7 == v4;
    v4 += 3;
    if (v13)
    {
      goto LABEL_13;
    }

LABEL_12:
    v14 = *v12;
    v7[2] = v12[2];
    *v7 = v14;
    goto LABEL_13;
  }

  sub_100016F38(a2, (a3 - a2) / 24, a4);
  v10 = &v4[3 * v9];
LABEL_15:
  for (v5 -= 24; v10 > v4 && v6 > v7; v5 -= 24)
  {
    if (*(v6 - 1) < *(v10 - 1))
    {
      v17 = v6 - 3;
      v13 = v5 + 24 == v6;
      v6 -= 3;
      if (!v13)
      {
        v18 = *v17;
        *(v5 + 16) = v17[2];
        *v5 = v18;
        v6 = v17;
      }

      goto LABEL_15;
    }

    if (v10 != (v5 + 24))
    {
      v16 = *(v10 - 3);
      *(v5 + 16) = *(v10 - 1);
      *v5 = v16;
    }

    v10 -= 3;
  }

LABEL_28:
  v19 = (v10 - v4) / 24;
  if (v6 != v4 || v6 >= &v4[3 * v19])
  {
    memmove(v6, v4, 24 * v19);
  }

  return 1;
}

uint64_t sub_100092668()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_100092684()
{
  v0 = SportingEvent.clock.getter();
  v1 = SportingEventCurrentClock.current.getter();

  dispatch thunk of SportingEventClock.minutes.getter();
  v2 = SportingEvent.clock.getter();
  v3 = SportingEventCurrentClock.current.getter();

  v4 = dispatch thunk of SportingEventClock.seconds.getter();
  v6 = v5;

  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = v4;
  }

  v8 = SportingEvent.clock.getter();
  v9 = SportingEventCurrentClock.current.getter();

  v10 = dispatch thunk of SportingEventClock.milliseconds.getter();
  v12 = v11;

  if (v12)
  {
    v13 = 0;
  }

  else
  {
    v13 = v10;
  }

  v21 = dispatch thunk of CustomStringConvertible.description.getter();
  v14._countAndFlagsBits = 58;
  v14._object = 0xE100000000000000;
  String.append(_:)(v14);
  sub_100003998(&qword_1000DC508, &qword_1000AAF50);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1000AA5B0;
  *(v15 + 56) = &type metadata for Int;
  *(v15 + 64) = &protocol witness table for Int;
  *(v15 + 32) = v7;
  v16._countAndFlagsBits = String.init(format:_:)();
  String.append(_:)(v16);

  v17._countAndFlagsBits = 46;
  v17._object = 0xE100000000000000;
  String.append(_:)(v17);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1000AA5B0;
  *(v18 + 56) = &type metadata for Int;
  *(v18 + 64) = &protocol witness table for Int;
  *(v18 + 32) = v13;
  v19._countAndFlagsBits = String.init(format:_:)();
  String.append(_:)(v19);

  return v21;
}

void sub_10009285C(void (*a1)(uint64_t *__return_ptr, id *), uint64_t a2, unint64_t a3)
{
  v5 = v3;
  if (a3 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v23 = _swiftEmptyArrayStorage;
    sub_100017D18(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      __break(1u);
LABEL_20:

      __break(1u);
      return;
    }

    v8 = 0;
    v9 = v23;
    while (1)
    {
      v10 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if ((a3 & 0xC000000000000001) != 0)
      {
        v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v8 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v11 = *(a3 + 8 * v8 + 32);
      }

      v4 = v11;
      v20 = v11;
      a1(&v21, &v20);
      if (v5)
      {
        goto LABEL_20;
      }

      v5 = 0;

      v12 = v21;
      v13 = v22;
      v23 = v9;
      v15 = v9[2];
      v14 = v9[3];
      v4 = (v15 + 1);
      if (v15 >= v14 >> 1)
      {
        v18 = v21;
        v17 = v22;
        sub_100017D18((v14 > 1), v15 + 1, 1);
        v13 = v17;
        v12 = v18;
        v9 = v23;
      }

      v9[2] = v4;
      v16 = &v9[2 * v15];
      v16[4] = v12;
      *(v16 + 40) = v13;
      ++v8;
      if (v10 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }
}

void sub_100092A08(void (*a1)(uint64_t *__return_ptr, id *), uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v21 = a3 & 0xC000000000000001;
  v22 = sub_10001BE20(a3);
  v19 = a3 & 0xFFFFFFFFFFFFFF8;
  v20 = a3;
  v6 = _swiftEmptyArrayStorage;
  while (v22 != v5)
  {
    if (v21)
    {
      v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v5 >= *(v19 + 16))
      {
        goto LABEL_19;
      }

      v7 = *(v20 + 8 * v5 + 32);
    }

    v8 = v7;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_19:
      __break(1u);
      return;
    }

    v27 = v7;
    a1(&v23, &v27);
    if (v3)
    {

      return;
    }

    v9 = v24;
    if (v24)
    {
      v10 = v23;
      v11 = v25;
      v12 = v26;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v15 = v6[2];
        sub_1000166C8();
        v6 = v16;
      }

      v13 = v6[2];
      if (v13 >= v6[3] >> 1)
      {
        sub_1000166C8();
        v6 = v17;
      }

      v6[2] = v13 + 1;
      v14 = &v6[4 * v13];
      v14[4] = v10;
      v14[5] = v9;
      v14[6] = v11;
      v14[7] = v12;
    }

    ++v5;
  }
}

void sub_100092B94(unint64_t a1, uint64_t a2)
{
  v318 = a2;
  v4 = sub_100003998(&qword_1000DEF58, &qword_1000AF358);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  sub_100045DAC(&v312 - v6);
  v7 = type metadata accessor for IngestionError();
  v8 = sub_10000AC48(v7);
  v316 = v9;
  v11 = *(v10 + 64);
  __chkstk_darwin(v8);
  sub_1000499AC();
  v319 = v12;
  __chkstk_darwin(v13);
  sub_100045DAC(&v312 - v14);
  v15 = type metadata accessor for SportingEventMetadataType();
  v16 = sub_10000AC48(v15);
  v317 = v17;
  v19 = *(v18 + 64);
  __chkstk_darwin(v16);
  sub_1000499AC();
  v336 = v20;
  __chkstk_darwin(v21);
  v23 = &v312 - v22;
  v340 = type metadata accessor for SportingEventCompetitorScoreStatisticType.StatisticName();
  v24 = sub_10000AC48(v340);
  v329 = v25;
  v27 = *(v26 + 64);
  __chkstk_darwin(v24);
  sub_10000ADA0();
  sub_100045DAC(v29 - v28);
  v333 = type metadata accessor for SportingEventProgressStatus();
  v30 = sub_10000AC48(v333);
  v332 = v31;
  v33 = *(v32 + 64);
  __chkstk_darwin(v30);
  sub_10000ADA0();
  sub_100045DAC(v35 - v34);
  v36 = type metadata accessor for SportingEventClockBreakType();
  v37 = sub_10000AC48(v36);
  v328 = v38;
  v40 = *(v39 + 64);
  __chkstk_darwin(v37);
  sub_10000ADA0();
  v327 = (v42 - v41);
  v43 = sub_100003998(&qword_1000DEF60, &qword_1000AF360);
  v44 = *(*(v43 - 8) + 64);
  __chkstk_darwin(v43 - 8);
  v46 = &v312 - v45;
  v47 = sub_100003998(&qword_1000DE8A8, &qword_1000AEB80);
  v48 = *(*(v47 - 8) + 64);
  __chkstk_darwin(v47 - 8);
  v338 = &v312 - v49;
  if (qword_1000DBA18 != -1)
  {
    goto LABEL_215;
  }

  while (1)
  {
    v320 = v7;
    v50 = type metadata accessor for Logger();
    v331 = sub_100007DE8(v50, qword_1000E6D30);
    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.debug.getter();
    v53 = os_log_type_enabled(v51, v52);
    v337 = v15;
    v335 = v23;
    v334 = v36;
    if (v53)
    {
      v325 = a1;
      v326 = v46;
      sub_10001C4D0();
      v324 = sub_10009797C();
      v350[0] = v324;
      *v2 = 136315138;
      v54 = type metadata accessor for ActivityAuthorization();
      v55 = [objc_allocWithZone(v54) init];
      v56 = sub_1000499E0();
      v58 = v57;
      v344 = v54;
      v345 = &off_1000D1900;
      v341 = v55;
      type metadata accessor for ActivityCapUtility();
      inited = swift_initStackObject();
      v60 = v344;
      v61 = sub_10000B90C(&v341, v344);
      v62 = *(*(v60 - 8) + 64);
      __chkstk_darwin(v61);
      sub_10000ADA0();
      v65 = (v64 - v63);
      (*(v66 + 16))(v64 - v63);
      v67 = *v65;
      inited[5] = v54;
      inited[6] = &off_1000D1900;
      inited[7] = v56;
      inited[2] = v67;
      inited[8] = v58;
      sub_100008A94(&v341);
      LOBYTE(v54) = sub_100066914();
      swift_setDeallocating();
      sub_100066950();
      if (v54)
      {
        v68 = 1212631368;
        v69 = 0xE400000000000000;
      }

      else
      {
        v70 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v70)
        {
          v68 = 1212631368;
        }

        else
        {
          v68 = 5721932;
        }

        if (v70)
        {
          v69 = 0xE400000000000000;
        }

        else
        {
          v69 = 0xE300000000000000;
        }
      }

      a1 = v325;
      sub_1000170D4(v68, v69, v350);
      sub_10001C1DC();

      *(v2 + 4) = v68;
      sub_100097A08(&_mh_execute_header, v71, v52, "Live activity cap: %s");
      sub_100008A94(v324);
      sub_10000B008();
      sub_10005AED8();

      v36 = v334;
      v46 = v326;
    }

    else
    {
    }

    v72 = a1;
    v73 = sub_100097998();
    v74 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v73, v74))
    {
      sub_10001C4D0();
      v75 = sub_10009797C();
      sub_100097A64(v75);
      *v2 = 136315138;
      v76 = SportingEvent.version.getter();
      v78 = sub_1000170D4(v76, v77, &v341);

      *(v2 + 4) = v78;
      sub_100097A08(&_mh_execute_header, v79, v74, "Version: %s");
      sub_100097A9C();
      sub_10000B008();
      sub_10005AED8();
    }

    v80 = v72;
    v81 = sub_100097998();
    v82 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v81, v82))
    {
      sub_10001C4D0();
      v83 = sub_10009797C();
      sub_100097A64(v83);
      *v2 = 136315138;
      v84 = sub_100092684();
      v86 = sub_1000170D4(v84, v85, &v341);

      *(v2 + 4) = v86;
      sub_100097A08(&_mh_execute_header, v87, v82, "Event clock: %s");
      sub_100097A9C();
      sub_10000B008();
      sub_10005AED8();
    }

    v88 = v80;
    v89 = sub_100097998();
    v90 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v89, v90))
    {
      v2 = sub_10003FC24();
      v341 = swift_slowAlloc();
      *v2 = 136315650;
      v91 = SportingEvent.clock.getter();
      v92 = SportingEventCurrentClock.current.getter();

      v93 = SportingEventClock.period.getter();
      v94 = v338;
      dispatch thunk of SportingEventClockPeriod.type.getter();

      v95 = type metadata accessor for SportingEventClockPeriodType();
      if (sub_100008B84(v94, 1, v95) == 1)
      {
        sub_10000A7A8(v94, &qword_1000DE8A8, &qword_1000AEB80);
        v96 = 0xE400000000000000;
        v97 = 1819047278;
      }

      else
      {
        v97 = v94;
        SportingEventClockPeriodType.rawValue.getter();
        sub_10001C1DC();
        v96 = v98;
        sub_10000ACDC(v95);
        (*(v99 + 8))();
      }

      v100 = sub_1000979B0();
      sub_1000170D4(v100, v96, v101);
      sub_10001C1DC();

      *(v2 + 4) = v97;
      *(v2 + 12) = 2080;
      v102 = SportingEvent.clock.getter();
      v103 = SportingEventCurrentClock.current.getter();

      v104 = SportingEventClock.period.getter();
      v105 = dispatch thunk of SportingEventClockPeriod.index.getter();
      v107 = v106;

      if (v107)
      {
        v108 = sub_10009794C();
      }

      else
      {
        v350[0] = v105;
        v104 = v350;
        v108 = dispatch thunk of CustomStringConvertible.description.getter();
        v105 = v109;
      }

      sub_1000170D4(v108, v105, &v341);
      sub_10001C1DC();

      *(v2 + 14) = v104;
      *(v2 + 22) = 2080;
      v110 = SportingEvent.clock.getter();
      v111 = SportingEventCurrentClock.current.getter();

      v112 = SportingEventClock.period.getter();
      dispatch thunk of SportingEventClockPeriod.subdivision.getter();

      v113 = type metadata accessor for SportingEventClockPeriodSubdivision();
      if (sub_100008B84(v46, 1, v113) == 1)
      {
        sub_10000A7A8(v46, &qword_1000DEF60, &qword_1000AF360);
        v114 = 0xE400000000000000;
        v115 = 1819047278;
      }

      else
      {
        v115 = SportingEventClockPeriodSubdivision.rawValue.getter();
        v114 = v116;
        sub_10000ACDC(v113);
        (*(v117 + 8))(v46, v113);
      }

      v118 = sub_1000979B0();
      sub_1000170D4(v118, v114, v119);
      sub_10001C1DC();

      *(v2 + 24) = v115;
      _os_log_impl(&_mh_execute_header, v89, v90, "Clock period: type=%s, index=%s, subdivision=%s", v2, 0x20u);
      swift_arrayDestroy();
      sub_10000B008();
      sub_10005AED8();

      v36 = v334;
    }

    else
    {
    }

    v15 = v88;
    v120 = sub_100097998();
    v121 = static os_log_type_t.debug.getter();

    v122 = os_log_type_enabled(v120, v121);
    a1 = 0x65736C6166;
    v338 = v15;
    if (v122)
    {
      v123 = sub_100097AB8();
      v2 = sub_10005B3EC();
      v341 = v2;
      *v123 = 136315394;
      v124 = SportingEvent.clock.getter();
      v125 = SportingEventCurrentClock.current.getter();

      v126 = dispatch thunk of SportingEventClock.runningState.getter();
      if (v126)
      {
        v15 = dispatch thunk of SportingEventClockRunningState.isReliable.getter();
        v46 = v15;

        v127 = sub_10009794C();
        if (v15 != 2)
        {
          v127 = (v15 & 1) != 0 ? 1702195828 : 0x65736C6166;
          if ((v15 & 1) == 0)
          {
            v125 = 0xE500000000000000;
          }
        }
      }

      else
      {
        v127 = sub_10009794C();
      }

      sub_1000170D4(v127, v125, &v341);
      sub_10001C1DC();

      *(v123 + 4) = v126;
      *(v123 + 12) = 2080;
      v128 = SportingEvent.clock.getter();
      v129 = SportingEventCurrentClock.current.getter();

      v130 = dispatch thunk of SportingEventClock.runningState.getter();
      if (v130)
      {
        v15 = dispatch thunk of SportingEventClockRunningState.isActive.getter();
        v46 = v15;

        v129 = 0xE400000000000000;
        v131 = 1819047278;
        if (v15 != 2)
        {
          v131 = (v15 & 1) != 0 ? 1702195828 : 0x65736C6166;
          if ((v15 & 1) == 0)
          {
            v129 = 0xE500000000000000;
          }
        }
      }

      else
      {
        v131 = sub_10009794C();
      }

      sub_1000170D4(v131, v129, &v341);
      sub_10001C1DC();

      *(v123 + 14) = v130;
      _os_log_impl(&_mh_execute_header, v120, v121, "Running clock: isReliable=%s, isActive=%s", v123, 0x16u);
      swift_arrayDestroy();
      sub_10005AED8();
      sub_10000B008();

      sub_1000979CC();
    }

    else
    {
    }

    v132 = sub_1000979D8();
    sub_100095020(v132);
    v133 = SportingEvent.clock.getter();
    v134 = SportingEventCurrentClock.current.getter();

    v135 = dispatch thunk of SportingEventClock.activityStatus.getter();
    if (v135)
    {
      v136 = v135;
      v137 = sub_100097998();
      v138 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v137, v138))
      {
        v2 = sub_100097AB8();
        v46 = sub_10005B3EC();
        v341 = v46;
        *v2 = 136315394;
        v139 = SportingEventClockActivityStatus.isBreak.getter();
        v140 = (v139 & 1) == 0;
        v141 = (v139 & 1) != 0 ? 1702195828 : 0x65736C6166;
        v142 = v140 ? 0xE500000000000000 : 0xE400000000000000;
        v143 = sub_1000170D4(v141, v142, &v341);

        *(v2 + 4) = v143;
        *(v2 + 12) = 2080;
        a1 = v327;
        SportingEventClockActivityStatus.breakType.getter();
        SportingEventClockBreakType.rawValue.getter();
        v15 = v144;
        v328[1](a1, v36);
        v145 = sub_1000979B0();
        v147 = sub_1000170D4(v145, v15, v146);
        sub_1000979CC();

        *(v2 + 14) = v147;
        _os_log_impl(&_mh_execute_header, v137, v138, "Clock activity status: isBreak=%s, breakType=%s", v2, 0x16u);
        swift_arrayDestroy();
        sub_10000B008();
        sub_10005AED8();
      }

      else
      {
      }
    }

    else
    {
      v148 = sub_100097998();
      v149 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v148, v149))
      {
        v150 = swift_slowAlloc();
        *v150 = 0;
        _os_log_impl(&_mh_execute_header, v148, v149, "Clock activity status: null", v150, 2u);
        sub_10000B008();
      }
    }

    v151 = SportingEvent.clock.getter();
    v152 = dispatch thunk of SportingEventCurrentClock.total.getter();

    if (v152)
    {
      v153 = dispatch thunk of SportingEventClock.additional.getter();

      if (v153)
      {
        v154 = v153;
        v155 = sub_100097998();
        v2 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v155, v2))
        {
          v156 = sub_100097AB8();
          v46 = sub_10005B3EC();
          v350[0] = v46;
          *v156 = 136315394;
          v341 = dispatch thunk of SportingEventClock.minutes.getter();
          LOBYTE(v342) = v157 & 1;
          sub_100003998(&qword_1000DEF70, &qword_1000AF370);
          v158 = String.init<A>(describing:)();
          a1 = sub_1000170D4(v158, v159, v350);

          *(v156 + 4) = a1;
          *(v156 + 12) = 2080;
          v341 = dispatch thunk of SportingEventClock.seconds.getter();
          LOBYTE(v342) = v160 & 1;
          v161 = String.init<A>(describing:)();
          v15 = sub_1000170D4(v161, v162, v350);

          *(v156 + 14) = v15;
          sub_1000979CC();
          _os_log_impl(&_mh_execute_header, v155, v2, "Clock injury time: minutes=%s, seconds=%s", v156, 0x16u);
          swift_arrayDestroy();
          sub_10000B008();
          sub_10000B008();
        }

        else
        {
        }
      }
    }

    v7 = SportingEvent.clock.getter();
    v163 = dispatch thunk of SportingEventCurrentClock.periods.getter();

    if (!v163)
    {
      break;
    }

    v23 = sub_10001BE20(v163);
    v2 = 0;
    v15 = v163 & 0xC000000000000001;
    a1 = v163 & 0xFFFFFFFFFFFFFF8;
    v164 = _swiftEmptyArrayStorage;
    while (1)
    {
      if (v23 == v2)
      {

        sub_1000979CC();
        goto LABEL_83;
      }

      if (v15)
      {
        v165 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v2 >= *((v163 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_207;
        }

        v165 = *(v163 + 8 * v2 + 32);
      }

      v7 = v165;
      if (__OFADD__(v2, 1))
      {
        break;
      }

      v350[0] = v165;
      sub_100096EF8(v350, &v341);

      v36 = v342;
      if (v342)
      {
        v46 = v341;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v171 = v164[2];
          sub_100016520();
          v164 = v172;
        }

        v166 = v164;
        v167 = v164[2];
        v168 = v166;
        v169 = v166[3];
        v7 = v167 + 1;
        if (v167 >= v169 >> 1)
        {
          sub_100097970(v169);
          sub_100016520();
          v168 = v173;
        }

        v168[2] = v7;
        v170 = &v168[2 * v167];
        v164 = v168;
        v170[4] = v46;
        v170[5] = v36;
      }

      ++v2;
    }

LABEL_206:
    __break(1u);
LABEL_207:
    __break(1u);
LABEL_208:
    __break(1u);
LABEL_209:
    __break(1u);
LABEL_210:
    __break(1u);
LABEL_211:
    __break(1u);
LABEL_212:
    __break(1u);
LABEL_213:
    __break(1u);
LABEL_214:
    __break(1u);
LABEL_215:
    swift_once();
  }

  v164 = _swiftEmptyArrayStorage;
LABEL_83:
  if (v164[2])
  {

    v174 = sub_100097998();
    v175 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v174, v175))
    {
      sub_10001C4D0();
      v176 = sub_10009797C();
      sub_100097A64(v176);
      *v2 = 136315138;
      v177 = Array.description.getter();
      a1 = sub_1000170D4(v177, v178, &v341);

      *(v2 + 4) = a1;
      _os_log_impl(&_mh_execute_header, v174, v175, "AnnouncedAdditional: %s", v2, 0xCu);
      sub_100097A9C();
      sub_1000979CC();
      sub_10000B008();
      sub_10005AED8();
    }
  }

  v179 = v15;
  v46 = sub_100097998();
  v23 = static os_log_type_t.debug.getter();

  v180 = os_log_type_enabled(v46, v23);
  v323 = v164;
  if (v180)
  {
    sub_10001C4D0();
    v181 = sub_10009797C();
    sub_100097A64(v181);
    *v2 = 136315138;
    v182 = v330;
    SportingEvent.progressStatus.getter();
    SportingEventProgressStatus.rawValue.getter();
    a1 = v183;
    (v332[1])(v182, v333);
    v184 = sub_1000979B0();
    v186 = sub_1000170D4(v184, a1, v185);

    *(v2 + 4) = v186;
    _os_log_impl(&_mh_execute_header, v46, v23, "Progress status: %s", v2, 0xCu);
    sub_100097A9C();
    sub_10000B008();
    sub_10005AED8();
  }

  v187 = v179;
  v188 = sub_100097998();
  v15 = static os_log_type_t.debug.getter();

  v189 = os_log_type_enabled(v188, v15);
  v328 = v187;
  if (v189)
  {
    LODWORD(v326) = v15;
    v327 = v188;
    v190 = sub_10001C4D0();
    v324 = sub_10003FC24();
    v341 = v324;
    v325 = v190;
    *v190 = 136315138;
    v2 = dispatch thunk of SportingEvent.competitors.getter();
    v191 = sub_10001BE20(v2);
    sub_100097A4C(v191);
    v7 = 0;
    v334 = v2 & 0xC000000000000001;
    v333 = (v2 & 0xFFFFFFFFFFFFFF8);
    LODWORD(v332) = enum case for SportingEventCompetitorScoreStatisticType.StatisticName.score(_:);
    v15 = (v329 + 104);
    v23 = (v329 + 8);
    v330 = _swiftEmptyArrayStorage;
    v192 = v339;
    v36 = v340;
    while (1)
    {
      sub_10008366C();
      if (v193 == v7)
      {
        break;
      }

      if (v334)
      {
        v195 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        sub_1000979BC(v349);
        if (v194)
        {
          goto LABEL_209;
        }

        v195 = *(v2 + 8 * v7 + 32);
      }

      v46 = v195;
      a1 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        goto LABEL_208;
      }

      (*v15)(v192, v332, v36);
      v196 = dispatch thunk of SportingEventCompetitorContainer.getScoreEntry(name:)();
      (*v23)(v192, v36);
      if (v196)
      {
        SportingEventCompetitorScoreEntry.value.getter();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_100097920(v347);
          sub_100016A44();
          v330 = v198;
        }

        sub_100097A24(v347);
        if (v194)
        {
          sub_10009795C(v197);
          sub_100016A44();
          v330 = v199;
        }

        sub_100097A38(v347);
        ++v7;
      }

      else
      {

        ++v7;
      }
    }

    v313 = 0;

    v15 = v330;
    v200 = v330[2];
    if (v200)
    {
      v350[0] = _swiftEmptyArrayStorage;
      sub_100017B68(0, v200, 0);
      v23 = 32;
      v201 = v350[0];
      v46 = &protocol witness table for Int;
      do
      {
        v346 = *(v15 + v23);
        v202 = dispatch thunk of CustomStringConvertible.description.getter();
        v204 = v203;
        v350[0] = v201;
        v206 = v201[2];
        v205 = v201[3];
        a1 = v206 + 1;
        if (v206 >= v205 >> 1)
        {
          v208 = sub_100097970(v205);
          sub_100017B68(v208, v206 + 1, 1);
          v201 = v350[0];
        }

        v201[2] = a1;
        v207 = &v201[2 * v206];
        v207[4] = v202;
        v207[5] = v204;
        v23 += 8;
        --v200;
        v15 = v330;
      }

      while (v200);
    }

    else
    {

      v201 = _swiftEmptyArrayStorage;
    }

    v350[0] = v201;
    sub_100003998(&qword_1000DC420, &unk_1000ADE60);
    sub_100097844();
    sub_1000979F0();
    BidirectionalCollection<>.joined(separator:)();
    v210 = v209;

    v211 = sub_1000979B0();
    v213 = sub_1000170D4(v211, v210, v212);

    v214 = v325;
    *(v325 + 4) = v213;
    v215 = v327;
    _os_log_impl(&_mh_execute_header, v327, v326, "Scores: %s", v214, 0xCu);
    sub_100008A94(v324);
    sub_10000B008();
    sub_10000B008();
  }

  else
  {
    v313 = 0;
  }

  v216 = dispatch thunk of SportingEvent.competitors.getter();
  v217 = sub_10001BE20(v216);
  sub_100097A4C(v217);
  v7 = 0;
  v334 = v216 & 0xC000000000000001;
  v333 = (v216 & 0xFFFFFFFFFFFFFF8);
  v2 = enum case for SportingEventCompetitorScoreStatisticType.StatisticName.shootout(_:);
  v218 = (v329 + 104);
  v36 = v329 + 8;
  v321 = _swiftEmptyArrayStorage;
  while (1)
  {
    sub_10008366C();
    if (v219 == v7)
    {
      break;
    }

    if (v334)
    {
      v220 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      sub_1000979BC(v349);
      if (v194)
      {
        goto LABEL_205;
      }

      v220 = *(v216 + 8 * v7 + 32);
    }

    v46 = v220;
    v15 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_205:
      __break(1u);
      goto LABEL_206;
    }

    v23 = v339;
    a1 = v340;
    (*v218)(v339, v2, v340);
    v221 = dispatch thunk of SportingEventCompetitorContainer.getScoreEntry(name:)();
    (*v36)(v23, a1);
    if (v221)
    {
      SportingEventCompetitorScoreEntry.value.getter();

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_100097920(v343);
        sub_100016A44();
        v321 = v223;
      }

      sub_100097A24(v343);
      if (v194)
      {
        sub_10009795C(v222);
        sub_100016A44();
        v321 = v224;
      }

      sub_100097A38(v343);
      ++v7;
    }

    else
    {

      ++v7;
    }
  }

  v225 = v321;
  if (v321[2])
  {

    v23 = sub_100097998();
    a1 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v23, a1))
    {
      v226 = sub_10001C4D0();
      v227 = sub_10003FC24();
      v218 = v227;
      v341 = v227;
      *v226 = 136315138;
      v228 = v225[2];
      v229 = _swiftEmptyArrayStorage;
      if (v228)
      {
        v334 = v227;
        v338 = v226;
        LODWORD(v339) = a1;
        v340 = v23;
        v350[0] = _swiftEmptyArrayStorage;
        sub_100097A7C();
        v229 = v350[0];
        v36 = (v225 + 4);
        do
        {
          v230 = *v36;
          v36 += 8;
          v346 = v230;
          v231 = dispatch thunk of CustomStringConvertible.description.getter();
          v233 = v232;
          v350[0] = v229;
          v235 = v229[2];
          v234 = v229[3];
          if (v235 >= v234 >> 1)
          {
            v237 = sub_100097970(v234);
            sub_100017B68(v237, v235 + 1, 1);
            v229 = v350[0];
          }

          v229[2] = v235 + 1;
          v236 = &v229[2 * v235];
          v236[4] = v231;
          v236[5] = v233;
          --v228;
        }

        while (v228);
        v23 = v340;
        a1 = v339;
        v226 = v338;
        v218 = v334;
      }

      v350[0] = v229;
      sub_100003998(&qword_1000DC420, &unk_1000ADE60);
      sub_100097844();
      sub_1000979F0();
      BidirectionalCollection<>.joined(separator:)();
      v15 = v238;

      v239 = sub_1000979B0();
      v241 = sub_1000170D4(v239, v15, v240);

      *(v226 + 4) = v241;
      _os_log_impl(&_mh_execute_header, v23, a1, "Shootout scores: %s", v226, 0xCu);
      sub_100008A94(v218);
      sub_10000B008();
      sub_10000B008();
    }

    sub_100097938();
    v7 = dispatch thunk of SportingEvent.competitors.getter();
    v327 = sub_10001BE20(v7);
    v46 = 0;
    v326 = v7 & 0xC000000000000001;
    v325 = v7 & 0xFFFFFFFFFFFFFF8;
    v314 = v7;
    v324 = (v7 + 32);
    LODWORD(v334) = enum case for SportingEventMetadataType.shootoutsContext(_:);
    v333 = (v317 + 104);
    v2 = v317 + 8;
    v332 = _swiftEmptyArrayStorage;
LABEL_138:
    while (v46 != v327)
    {
      if (v326)
      {
        v242 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v46 >= *(v325 + 16))
        {
          goto LABEL_211;
        }

        v242 = v324[v46];
      }

      v7 = v242;
      if (__OFADD__(v46++, 1))
      {
        goto LABEL_210;
      }

      v244 = SportingEventCompetitorContainer.competitor.getter();
      v245 = dispatch thunk of SportingEventCompetitor.metadata.getter();

      if (v245)
      {
        v329 = v7;
        v330 = v46;
        v340 = sub_10001BE20(v245);
        v246 = 0;
        *&v339 = v245 & 0xC000000000000001;
        v338 = (v245 & 0xFFFFFFFFFFFFFF8);
        while (1)
        {
          sub_100097A70();
          if (v247 == v246)
          {

            v46 = v330;
            goto LABEL_138;
          }

          if (v339)
          {
            v249 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            sub_10008366C();
            if (v246 >= *(v248 + 16))
            {
              goto LABEL_199;
            }

            v249 = *(v245 + 8 * v246 + 32);
          }

          v7 = v249;
          if (__OFADD__(v246, 1))
          {
            __break(1u);
LABEL_199:
            __break(1u);
            goto LABEL_200;
          }

          v15 = v335;
          SportingEventMetadata.metadataType.getter();
          (*v333)(v218, v334, v36);
          sub_1000978A8(&qword_1000DD260, &type metadata accessor for SportingEventMetadataType);
          dispatch thunk of RawRepresentable.rawValue.getter();
          dispatch thunk of RawRepresentable.rawValue.getter();
          v23 = v342;
          if (v341 == v350[0] && v342 == v350[1])
          {
            break;
          }

          v251 = _stringCompareWithSmolCheck(_:_:expecting:)();
          v252 = v218;
          v218 = v251;
          a1 = *v2;
          (*v2)(v252, v36);
          (a1)(v15, v36);

          if (v218)
          {
            goto LABEL_160;
          }

          ++v246;
          sub_100097938();
        }

        v253 = *v2;
        (*v2)(v218, v36);
        v253(v15, v36);

LABEL_160:

        v254 = SportingEventMetadata.value.getter();
        v15 = v255;

        v256 = v329;
        v257 = SportingEventCompetitorContainer.competitor.getter();
        v7 = SportingEventCompetitor.canonicalId.getter();
        v259 = v258;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_100097920(v348);
          sub_1000166C8();
          v332 = v263;
        }

        sub_100097938();
        v46 = v330;
        a1 = v332[2];
        v260 = v332[3];
        v23 = a1 + 1;
        if (a1 >= v260 >> 1)
        {
          sub_100097970(v260);
          sub_1000166C8();
          v332 = v264;
        }

        v261 = v332;
        v332[2] = v23;
        v262 = &v261[4 * a1];
        v262[4] = v7;
        v262[5] = v259;
        v262[6] = v254;
        v262[7] = v15;
      }

      else
      {
      }
    }

    v7 = 0;
    v36 = v332[2];
    v265 = v332 + 7;
    *&v266 = 136315394;
    v339 = v266;
    sub_100097A58();
    v340 = v36;
    while (v36 != v7)
    {
      sub_1000979BC(v348);
      if (v194)
      {
        goto LABEL_212;
      }

      v2 = *(v265 - 3);
      v15 = *(v265 - 2);
      a1 = *(v265 - 1);
      v23 = *v265;

      v267 = sub_100097998();
      v46 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v267, v46))
      {
        v268 = sub_100097AB8();
        v341 = sub_10005B3EC();
        *v268 = v339;
        *(v268 + 4) = sub_1000170D4(v2, v15, &v341);
        *(v268 + 12) = 2080;
        *(v268 + 14) = sub_1000170D4(a1, v23, &v341);
        _os_log_impl(&_mh_execute_header, v267, v46, "Competitor: %s; Contextual shootout: %s)", v268, 0x16u);
        swift_arrayDestroy();
        v36 = v340;
        sub_10000B008();
        sub_10000B008();
      }

      v265 += 4;
      ++v7;
      sub_100097A58();
    }
  }

  else
  {

    sub_100097A58();
  }

  v269 = dispatch thunk of SportingEvent.coverage.getter();
  if (v269)
  {
    v270 = v269;
    v271 = dispatch thunk of SportingEventCoverage.ingestion.getter();

    if (v271)
    {
      v272 = dispatch thunk of SportingEventCoverageIngestion.coverageUpdates.getter();

      if (v272)
      {
        v15 = sub_10001BE20(v272);
        v2 = 0;
        v36 = (v272 & 0xFFFFFFFFFFFFFF8);
        v340 = (v316 + 32);
        a1 = &qword_1000AF358;
        v338 = _swiftEmptyArrayStorage;
        v7 = v320;
        while (v15 != v2)
        {
          if ((v272 & 0xC000000000000001) != 0)
          {
            v273 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v2 >= *((v272 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_214;
            }

            v273 = *(v272 + 8 * v2 + 32);
          }

          v274 = v273;
          v46 = v2 + 1;
          if (__OFADD__(v2, 1))
          {
            goto LABEL_213;
          }

          v23 = v322;
          dispatch thunk of SportingEventCoverageIngestionUpdate.statusCode.getter();

          if (sub_100008B84(v23, 1, v7) == 1)
          {
            sub_10000A7A8(v23, &qword_1000DEF58, &qword_1000AF358);
            ++v2;
          }

          else
          {
            sub_100097A70();
            v276 = *v275;
            (*v275)(v315, v23, v7);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_100097920(v351);
              sub_10001696C();
              sub_100097A4C(v282);
            }

            sub_10008366C();
            v279 = *(v277 + 16);
            v278 = *(v277 + 24);
            if (v279 >= v278 >> 1)
            {
              sub_10009795C(v278);
              sub_10001696C();
              sub_100097A4C(v283);
            }

            v280 = v338;
            *(v338 + 2) = v279 + 1;
            v281 = &v280[((*(v316 + 80) + 32) & ~*(v316 + 80)) + *(v316 + 72) * v279];
            v7 = v320;
            sub_100097A70();
            v276();
            v2 = v46;
          }
        }

        v284 = swift_allocObject();
        v285 = v338;
        *(v284 + 16) = v338;
        sub_10005B070();
        v286 = swift_allocObject();
        *(v286 + 16) = sub_1000977D8;
        *(v286 + 24) = v284;

        v218 = sub_100097998();
        LODWORD(v36) = static os_log_type_t.debug.getter();
        v287 = swift_allocObject();
        *(v287 + 16) = 32;
        v288 = swift_allocObject();
        *(v288 + 16) = 8;
        sub_10005B070();
        v289 = swift_allocObject();
        *(v289 + 16) = sub_1000977E0;
        *(v289 + 24) = v286;
        sub_10005B070();
        v290 = swift_allocObject();
        *(v290 + 16) = sub_100097834;
        *(v290 + 24) = v289;
        sub_100003998(&qword_1000DEF68, &qword_1000AF368);
        v291 = swift_initStackObject();
        *(v291 + 16) = xmmword_1000AB130;
        *(v291 + 32) = sub_1000977F8;
        *(v291 + 40) = v287;
        *(v291 + 48) = sub_10009791C;
        *(v291 + 56) = v288;
        *(v291 + 64) = sub_10009783C;
        *(v291 + 72) = v290;
        swift_setDeallocating();
        sub_1000867AC();
        if (os_log_type_enabled(v218, v36))
        {
          v15 = sub_10001C4D0();
          v292 = sub_10003FC24();
          v23 = v292;
          v341 = v292;
          *v15 = 136315138;
          v293 = *(v285 + 2);
          if (v293)
          {
            v334 = v292;
            v335 = v15;
            LODWORD(v336) = v36;
            v337 = v218;
            v350[0] = _swiftEmptyArrayStorage;
            sub_100097A7C();
            v294 = v350[0];
            v340 = *(v316 + 16);
            v295 = &v285[(*(v316 + 80) + 32) & ~*(v316 + 80)];
            *&v339 = *(v316 + 72);
            v296 = (v316 + 8);
            do
            {
              v297 = v319;
              v298 = v320;
              sub_100097A70();
              v299();
              v300 = IngestionError.rawValue.getter();
              v302 = v301;
              (*v296)(v297, v298);
              v350[0] = v294;
              v304 = *(v294 + 16);
              v303 = *(v294 + 24);
              if (v304 >= v303 >> 1)
              {
                v306 = sub_100097970(v303);
                sub_100017B68(v306, v304 + 1, 1);
                v294 = v350[0];
              }

              *(v294 + 16) = v304 + 1;
              v305 = v294 + 16 * v304;
              *(v305 + 32) = v300;
              *(v305 + 40) = v302;
              v295 += v339;
              --v293;
            }

            while (v293);

            v218 = v337;
            LOBYTE(v36) = v336;
            v15 = v335;
            v23 = v334;
          }

          else
          {
LABEL_200:
          }

          v307 = Array.description.getter();
          v309 = v308;

          v310 = sub_1000170D4(v307, v309, &v341);

          *(v15 + 4) = v310;
          _os_log_impl(&_mh_execute_header, v218, v36, "Ingestion Errors: %s", v15, 0xCu);
          sub_100008A94(v23);
          sub_10000B008();
          sub_10000B008();
        }

        else
        {
        }

        sub_100097A58();
      }
    }
  }

  v311 = sub_1000979D8();
  sub_100095AE8(v311);
}

uint64_t sub_100095020(uint64_t a1)
{
  v2 = sub_100003998(&qword_1000DD228, &qword_1000ABE40);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = v34 - v4;
  v6 = type metadata accessor for SportingEventViewContext();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    sub_100008E2C(v5, 1, 1, v6);
    return sub_10000A7A8(v5, &qword_1000DD228, &qword_1000ABE40);
  }

  SportingEventSubscription.view.getter();
  if (sub_100008B84(v5, 1, v6) == 1)
  {
    return sub_10000A7A8(v5, &qword_1000DD228, &qword_1000ABE40);
  }

  v34[0] = v7;
  (*(v7 + 32))(v10, v5, v6);
  v11 = SportingEventViewContext.mode.getter();
  v13 = &unk_1000DB000;
  v14 = &unk_1000AA000;
  if (!v12)
  {
    goto LABEL_11;
  }

  v7 = v11;
  v15 = v12;
  if (qword_1000DBA18 != -1)
  {
    goto LABEL_26;
  }

  while (1)
  {
    v16 = type metadata accessor for Logger();
    sub_100007DE8(v16, qword_1000E6D30);

    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v35[0] = v20;
      *v19 = v14[181];
      v7 = sub_1000170D4(v7, v15, v35);

      *(v19 + 4) = v7;
      _os_log_impl(&_mh_execute_header, v17, v18, "Mode: %s", v19, 0xCu);
      sub_100008A94(v20);

      v13 = &unk_1000DB000;
    }

    else
    {
    }

LABEL_11:
    if (SportingEventViewContext.players.getter())
    {
      if (*(v13 + 323) != -1)
      {
        swift_once();
      }

      v22 = type metadata accessor for Logger();
      sub_100007DE8(v22, qword_1000E6D30);

      v23 = Logger.logObject.getter();
      v7 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v23, v7))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v35[0] = v25;
        *v24 = v14[181];
        v26 = Array.description.getter();
        v28 = v27;

        v29 = sub_1000170D4(v26, v28, v35);

        *(v24 + 4) = v29;
        _os_log_impl(&_mh_execute_header, v23, v7, "Players: %s", v24, 0xCu);
        sub_100008A94(v25);
      }

      else
      {
      }
    }

    v30 = SportingEventViewContext.statistics.getter();
    v14 = v34[0];
    if (!v30)
    {
      break;
    }

    v31 = v30;
    v32 = 0;
    v15 = 0;
    v13 = *(v30 + 16);
    for (i = (v30 + 40); ; i += 2)
    {
      if (v13 == v32)
      {

        return (v14[1])(v10, v6);
      }

      if (v32 >= *(v31 + 16))
      {
        break;
      }

      ++v32;
      v7 = *i;
      v35[0] = *(i - 1);
      v35[1] = v7;

      sub_1000954BC(v35);
    }

    __break(1u);
LABEL_26:
    swift_once();
  }

  return (v14[1])(v10, v6);
}

uint64_t sub_1000954BC(uint64_t *a1)
{
  v2 = v1;
  v4 = sub_100003998(qword_1000DEFA0, &qword_1000AF388);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = v31 - v6;
  v8 = *a1;
  v9 = a1[1];

  v33 = v8;
  SportingEventCompetitorStatisticType.StatisticName.init(rawValue:)();
  v10 = dispatch thunk of SportingEvent.competitors.getter();
  v35 = v7;
  v37 = v7;
  sub_10009285C(sub_1000978F0, v36, v10);
  v12 = v11;
  v34 = v2;

  v13 = *(v12 + 16);
  if (v13)
  {
    v32 = v9;
    v40 = _swiftEmptyArrayStorage;
    sub_100017B68(0, v13, 0);
    v14 = v40;
    v31[1] = v12;
    v15 = (v12 + 40);
    do
    {
      if (*v15)
      {
        v16 = 0xE300000000000000;
        v17 = 4271950;
      }

      else
      {
        v18 = *(v15 - 1);
        v38 = 0;
        v39 = 0xE000000000000000;
        Double.write<A>(to:)();
        v17 = v38;
        v16 = v39;
      }

      v40 = v14;
      v20 = v14[2];
      v19 = v14[3];
      if (v20 >= v19 >> 1)
      {
        sub_100017B68((v19 > 1), v20 + 1, 1);
        v14 = v40;
      }

      v14[2] = v20 + 1;
      v21 = &v14[2 * v20];
      v21[4] = v17;
      v21[5] = v16;
      v15 += 16;
      --v13;
    }

    while (v13);

    v9 = v32;
  }

  else
  {

    v14 = _swiftEmptyArrayStorage;
  }

  v38 = v14;
  sub_100003998(&qword_1000DC420, &unk_1000ADE60);
  sub_100097844();
  v22 = BidirectionalCollection<>.joined(separator:)();
  v24 = v23;

  if (qword_1000DBA18 != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  sub_100007DE8(v25, qword_1000E6D30);

  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    *v28 = 136315394;
    *(v28 + 4) = sub_1000170D4(v33, v9, &v38);
    *(v28 + 12) = 2080;
    v29 = sub_1000170D4(v22, v24, &v38);

    *(v28 + 14) = v29;
    _os_log_impl(&_mh_execute_header, v26, v27, "Statistic '%s': %s", v28, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  return sub_10000A7A8(v35, qword_1000DEFA0, &qword_1000AF388);
}

uint64_t sub_100095874@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v22 = a3;
  v6 = type metadata accessor for SportingEventCompetitorStatisticType.StatisticName();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100003998(qword_1000DEFA0, &qword_1000AF388);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v20 - v13;
  v15 = *a1;
  sub_10000A744(a2, &v20 - v13, qword_1000DEFA0, &qword_1000AF388);
  result = sub_100008B84(v14, 1, v6);
  if (result == 1)
  {
    v17 = 0;
    v18 = 1;
LABEL_5:
    v19 = v22;
    *v22 = v17;
    *(v19 + 8) = v18 & 1;
    return result;
  }

  (*(v7 + 32))(v10, v14, v6);
  sub_100095A5C(&v20);
  if (!v3)
  {
    result = (*(v7 + 8))(v10, v6);
    v17 = v20;
    v18 = v21;
    goto LABEL_5;
  }

  result = (*(v7 + 8))(v10, v6);
  __break(1u);
  return result;
}

void sub_100095A5C(uint64_t a1@<X8>)
{
  v2 = SportingEventCompetitorContainer.competitor.getter();
  v3 = dispatch thunk of SportingEventCompetitor.getStatistic(name:)();

  if (v3)
  {
    SportingEventCompetitorStatistic.value.getter();
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  *a1 = v5;
  *(a1 + 8) = v3 == 0;
}

void sub_100095AE8(void *a1)
{
  v196 = a1;
  v187 = type metadata accessor for SportingEventPlay.BaseballPlay();
  v1 = *(v187 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v187);
  v186 = v181 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v217 = type metadata accessor for SportingEventCompetitorContainer.BaseballScores();
  v4 = *(v217 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v217);
  v216 = v181 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Sport();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v181 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = v181 - v13;
  v214 = type metadata accessor for SportingEventPlayAnnotation();
  v15 = *(v214 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v214);
  v213 = v181 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v195 = type metadata accessor for CharacterSet();
  v18 = *(v195 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v195);
  v194 = v181 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = dispatch thunk of SportingEvent.plays.getter();
  v200 = sub_10001BE20(v21);
  v199 = v21 & 0xC000000000000001;
  v198 = v21 & 0xFFFFFFFFFFFFFF8;
  v181[1] = v21;
  v197 = v21 + 32;
  v22 = 0;
  v193 = (v18 + 8);
  v212 = v15 + 16;
  v183 = v15;
  v211 = (v15 + 8);
  v191 = enum case for Sport.baseball(_:);
  v190 = (v8 + 104);
  v189 = (v8 + 8);
  v215 = (v4 + 8);
  v185 = (v1 + 8);
  *&v23 = 134219778;
  v188 = v23;
  *&v23 = 134218754;
  v184 = v23;
  v182 = xmmword_1000AA5B0;
  v203 = v7;
  v202 = v11;
  v201 = v14;
  while (1)
  {
    if (v22 == v200)
    {

      return;
    }

    if (v199)
    {
      v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v22 >= *(v198 + 16))
      {
        goto LABEL_117;
      }

      v24 = *(v197 + 8 * v22);
    }

    v25 = v24;
    v26 = __OFADD__(v22, 1);
    v27 = v22 + 1;
    if (v26)
    {
      goto LABEL_116;
    }

    v207 = v27;
    v28 = 0xE000000000000000;
    v226 = 0;
    v227 = 0xE000000000000000;
    v29 = dispatch thunk of SportingEventPlay.clock.getter();
    if (v29)
    {
      v30 = v29;
      v31 = dispatch thunk of SportingEventClock.minutes.getter();
      v33 = v32;

      if (v33 & 1) != 0 || (v34 = dispatch thunk of SportingEventPlay.clock.getter()) == 0 || (v35 = v34, v36 = dispatch thunk of SportingEventClock.seconds.getter(), v38 = v37, v35, (v38))
      {
        v209 = 0;
        v28 = 0xE000000000000000;
      }

      else
      {
        v221 = v31;
        v224 = dispatch thunk of CustomStringConvertible.description.getter();
        v225 = v39;
        v40._countAndFlagsBits = 58;
        v40._object = 0xE100000000000000;
        String.append(_:)(v40);
        sub_100003998(&qword_1000DC508, &qword_1000AAF50);
        v41 = swift_allocObject();
        *(v41 + 16) = v182;
        *(v41 + 56) = &type metadata for Int;
        *(v41 + 64) = &protocol witness table for Int;
        *(v41 + 32) = v36;
        v42._countAndFlagsBits = String.init(format:_:)();
        String.append(_:)(v42);

        v43 = v224;
        v28 = v225;
        swift_beginAccess();
        v209 = v43;
        v226 = v43;
        v227 = v28;
      }
    }

    else
    {
      v209 = 0;
    }

    v44 = dispatch thunk of SportingEventPlay.competitors.getter();
    v45 = v44;
    v46 = v44 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v208 = v28;
    if (v46)
    {
      break;
    }

    v47 = _swiftEmptyArrayStorage;
LABEL_39:
    v224 = v47;
    v66 = sub_100003998(&qword_1000DC420, &unk_1000ADE60);
    v67 = sub_100097844();
    v206 = v66;
    v205 = v67;
    v68 = BidirectionalCollection<>.joined(separator:)();
    v70 = v69;

    v224 = SportingEventPlay.playDescription.getter();
    v225 = v71;
    v72 = v194;
    static CharacterSet.whitespacesAndNewlines.getter();
    sub_10000E304();
    v73 = StringProtocol.trimmingCharacters(in:)();
    v75 = v74;
    (*v193)(v72, v195);

    v76 = HIBYTE(v75) & 0xF;
    if ((v75 & 0x2000000000000000) == 0)
    {
      v76 = v73 & 0xFFFFFFFFFFFFLL;
    }

    v77 = v203;
    v78 = v202;
    v79 = v201;
    if (!v76)
    {
      if (qword_1000DBA18 != -1)
      {
        swift_once();
      }

      v80 = type metadata accessor for Logger();
      sub_100007DE8(v80, qword_1000E6D30);
      v81 = Logger.logObject.getter();
      v82 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v81, v82))
      {
        v83 = swift_slowAlloc();
        *v83 = 0;
        _os_log_impl(&_mh_execute_header, v81, v82, "Blank Play:", v83, 2u);
      }
    }

    if (qword_1000DBA18 != -1)
    {
      swift_once();
    }

    v84 = type metadata accessor for Logger();
    v85 = sub_100007DE8(v84, qword_1000E6D30);
    v86 = v25;

    v204 = v85;
    v87 = Logger.logObject.getter();
    v88 = static os_log_type_t.debug.getter();

    v89 = os_log_type_enabled(v87, v88);
    v210 = v86;
    if (v89)
    {
      LODWORD(v219) = v88;
      v90 = swift_slowAlloc();
      v218 = swift_slowAlloc();
      v224 = v218;
      *v90 = v188;
      *(v90 + 4) = v207;
      *(v90 + 12) = 2080;
      v91 = dispatch thunk of SportingEventPlay.id.getter();
      if (v92)
      {
        v93 = v92;
      }

      else
      {
        v91 = 1819047278;
        v93 = 0xE400000000000000;
      }

      v94 = v68;
      v95 = sub_1000170D4(v91, v93, &v224);

      *(v90 + 14) = v95;
      *(v90 + 22) = 2048;
      v96 = dispatch thunk of SportingEventPlay.stamp.getter();
      LOBYTE(v95) = v97;

      if (v95)
      {
        v98 = -1;
      }

      else
      {
        v98 = v96;
      }

      *(v90 + 24) = v98;

      *(v90 + 32) = 2080;
      v99 = v208;

      v100 = sub_1000170D4(v209, v99, &v224);

      *(v90 + 34) = v100;
      *(v90 + 42) = 2080;
      v101 = sub_1000170D4(v94, v70, &v224);

      *(v90 + 44) = v101;
      *(v90 + 52) = 2080;
      v102 = SportingEventPlay.playDescription.getter();
      v104 = sub_1000170D4(v102, v103, &v224);

      *(v90 + 54) = v104;
      *(v90 + 62) = 2080;
      dispatch thunk of SportingEventPlay.levels.getter();
      type metadata accessor for SportingEventPlayLevel();
      v105 = Array.description.getter();
      v107 = v106;

      v108 = sub_1000170D4(v105, v107, &v224);

      *(v90 + 64) = v108;
      *(v90 + 72) = 2080;
      v86 = v210;
      v109 = dispatch thunk of SportingEventPlay.annotations.getter();
      v220 = v87;
      if (v109)
      {
        v110 = *(v109 + 16);
        v209 = v109;
        if (v110)
        {
          v111 = v109 + ((*(v183 + 80) + 32) & ~*(v183 + 80));
          v112 = *(v183 + 72);
          v113 = *(v183 + 16);
          v114 = _swiftEmptyArrayStorage;
          do
          {
            v116 = v213;
            v115 = v214;
            v113(v213, v111, v214);
            v117 = SportingEventPlayAnnotation.rawValue.getter();
            v119 = v118;
            (*v211)(v116, v115);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v122 = v114[2];
              sub_100016520();
              v114 = v123;
            }

            v120 = v114[2];
            if (v120 >= v114[3] >> 1)
            {
              sub_100016520();
              v114 = v124;
            }

            v114[2] = v120 + 1;
            v121 = &v114[2 * v120];
            v121[4] = v117;
            v121[5] = v119;
            v111 += v112;
            --v110;
          }

          while (v110);
        }

        v77 = v203;
        v78 = v202;
        v79 = v201;
        v86 = v210;
      }

      v125 = Array.description.getter();
      v127 = v126;

      v128 = sub_1000170D4(v125, v127, &v224);

      *(v90 + 74) = v128;
      v129 = v220;
      _os_log_impl(&_mh_execute_header, v220, v219, "Play[%ld], id: %s, play stamp: %ld, play clock: %s, play score: %s - %s, play levels: %s, play annotations: %s", v90, 0x52u);
      swift_arrayDestroy();
    }

    else
    {
    }

    if (!v196)
    {

      goto LABEL_104;
    }

    v130 = v196;
    SportingEventSubscription.sport.getter();
    Sport.init(rawValue:)();
    (*v190)(v78, v191, v77);
    sub_1000978A8(&qword_1000DDF38, &type metadata accessor for Sport);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    if (v224 == v221 && v225 == v222)
    {

      v135 = *v189;
      (*v189)(v78, v77);
      v135(v79, v77);
    }

    else
    {
      v132 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v133 = *v189;
      (*v189)(v78, v77);
      v133(v79, v77);
      if ((v132 & 1) == 0)
      {

        v134 = v210;
LABEL_100:

        goto LABEL_104;
      }
    }

    v136 = v210;
    v137 = dispatch thunk of SportingEventPlay.competitors.getter();
    v138 = v137;
    if (v137 >> 62)
    {
      v139 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v139 = *((v137 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v192 = v130;
    if (v139)
    {
      v224 = _swiftEmptyArrayStorage;
      sub_100017B68(0, v139 & ~(v139 >> 63), 0);
      v140 = v224;
      v141 = sub_10001BE20(v138);
      if ((v139 & 0x8000000000000000) == 0)
      {
        v142 = v141;
        v143 = 0;
        v220 = (v138 & 0xC000000000000001);
        v209 = v138 & 0xFFFFFFFFFFFFFF8;
        v144 = v141 + 3;
        v218 = v139;
        v219 = v138;
        while ((v142 ^ v143) != 0x8000000000000000)
        {
          v145 = v144 - 4;
          if (v220)
          {
            v146 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if ((v145 & 0x8000000000000000) != 0)
            {
              goto LABEL_114;
            }

            if (v145 >= *(v209 + 16))
            {
              goto LABEL_115;
            }

            v146 = *(v138 + 8 * v144);
          }

          v147 = v146;
          v148 = v216;
          SportingEventCompetitorContainer.baseballScores.getter();
          sub_1000978A8(&qword_1000DEF90, &type metadata accessor for SportingEventCompetitorContainer.BaseballScores);
          v149 = v217;
          v150 = dispatch thunk of CustomStringConvertible.description.getter();
          v152 = v151;
          (*v215)(v148, v149);

          v224 = v140;
          isa = v140[2].isa;
          v153 = v140[3].isa;
          if (isa >= v153 >> 1)
          {
            sub_100017B68((v153 > 1), isa + 1, 1);
            v140 = v224;
          }

          v143 = (v143 + 1);
          v140[2].isa = (isa + 1);
          v155 = &v140[2 * isa];
          v155[4].isa = v150;
          v155[5].isa = v152;
          --v144;
          v138 = v219;
          if (v218 == v143)
          {

            v136 = v210;
            goto LABEL_94;
          }
        }

        goto LABEL_111;
      }

      goto LABEL_119;
    }

    v140 = _swiftEmptyArrayStorage;
LABEL_94:
    v224 = v140;
    v156 = BidirectionalCollection<>.joined(separator:)();
    v158 = v157;

    v159 = v136;

    v160 = Logger.logObject.getter();
    v161 = static os_log_type_t.debug.getter();

    if (!os_log_type_enabled(v160, v161))
    {

      v134 = v192;
      goto LABEL_100;
    }

    v162 = swift_slowAlloc();
    v220 = swift_slowAlloc();
    v224 = v220;
    *v162 = v184;
    *(v162 + 4) = v207;
    *(v162 + 12) = 2080;
    v163 = v186;
    SportingEventPlay.baseballPlay.getter();
    sub_1000978A8(&qword_1000DEF98, &type metadata accessor for SportingEventPlay.BaseballPlay);
    v164 = v187;
    v165 = dispatch thunk of CustomStringConvertible.description.getter();
    v167 = v166;
    (*v185)(v163, v164);
    v168 = sub_1000170D4(v165, v167, &v224);

    *(v162 + 14) = v168;
    *(v162 + 22) = 2080;
    v169 = sub_1000170D4(v156, v158, &v224);

    *(v162 + 24) = v169;
    *(v162 + 32) = 2080;
    v170 = dispatch thunk of SportingEventPlay.clock.getter();
    if (v170)
    {
      v171 = v170;
      v172 = SportingEventClock.period.getter();

      v173 = dispatch thunk of SportingEventClockPeriod.subPeriod.getter();
      if (v173 && (v174 = dispatch thunk of SportingEventClockPeriod.index.getter(), v176 = v175, v173, (v176 & 1) == 0))
      {
        v221 = v174;
        v178 = dispatch thunk of CustomStringConvertible.description.getter();
        v177 = v179;
      }

      else
      {
        v177 = 0xE400000000000000;
        v178 = 1819047278;
      }
    }

    else
    {
      v177 = 0xE400000000000000;
      v178 = 1819047278;
    }

    v180 = sub_1000170D4(v178, v177, &v224);

    *(v162 + 34) = v180;
    _os_log_impl(&_mh_execute_header, v160, v161, "Play_baseball[%ld]: %s, Scores: %s SubPeriod: %s", v162, 0x2Au);
    swift_arrayDestroy();

LABEL_104:
    v22 = v207;
  }

  v221 = _swiftEmptyArrayStorage;
  sub_100017B68(0, v46 & ~(v46 >> 63), 0);
  v47 = v221;
  v48 = sub_10001BE20(v45);
  if (v46 < 0)
  {
    goto LABEL_118;
  }

  v49 = v48;
  v210 = v25;
  v50 = 0;
  v219 = v46;
  v220 = (v45 & 0xC000000000000001);
  v218 = (v45 & 0xFFFFFFFFFFFFFF8);
  v51 = v48 + 3;
  while (2)
  {
    if ((v49 ^ v50) != 0x8000000000000000)
    {
      v52 = v51 - 4;
      if (v220)
      {
        v53 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if ((v52 & 0x8000000000000000) != 0)
        {
          goto LABEL_112;
        }

        if (v52 >= v218[2].isa)
        {
          goto LABEL_113;
        }

        v53 = *(v45 + 8 * v51);
      }

      v54 = v53;
      v224 = 0;
      v225 = 0xE000000000000000;
      v55 = SportingEventCompetitorContainer.score.getter();
      v56 = SportingEventCompetitorScore.scoreEntries.getter();

      if (v56 >> 62)
      {
        if (!_CocoaArrayWrapper.endIndex.getter())
        {
          goto LABEL_32;
        }

LABEL_27:
        if ((v56 & 0xC000000000000001) != 0)
        {
          v57 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (!*((v56 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_110;
          }

          v57 = *(v56 + 32);
        }

        v58 = v57;

        v59 = SportingEventCompetitorScoreEntry.value.getter();
      }

      else
      {
        if (*((v56 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_27;
        }

LABEL_32:

        v59 = -1;
      }

      v223 = v59;
      v60._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v60);

      v62 = v224;
      v61 = v225;
      v221 = v47;
      v64 = v47[2].isa;
      v63 = v47[3].isa;
      if (v64 >= v63 >> 1)
      {
        sub_100017B68((v63 > 1), v64 + 1, 1);
        v47 = v221;
      }

      ++v50;
      v47[2].isa = (v64 + 1);
      v65 = &v47[2 * v64];
      v65[4].isa = v62;
      v65[5].isa = v61;
      --v51;
      if (v219 == v50)
      {

        v25 = v210;
        goto LABEL_39;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_110:
  __break(1u);
LABEL_111:
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
}

void sub_100096EF8(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_100003998(&qword_1000DE8A8, &qword_1000AEB80);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v57 = &v56 - v7;
  v8 = type metadata accessor for SportingEventClockTimeType();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v62 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_100003998(&qword_1000DEF78, &qword_1000AF378);
  v12 = *(*(v63 - 8) + 64);
  __chkstk_darwin(v63);
  v14 = &v56 - v13;
  v15 = sub_100003998(&qword_1000DEF80, &qword_1000AF380);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v56 - v20;
  __chkstk_darwin(v22);
  v24 = &v56 - v23;
  v58 = *a1;
  v25 = dispatch thunk of SportingEventClockTimeContainer.clockTimes.getter();
  if (!v25)
  {
LABEL_25:
    *a2 = 0;
    a2[1] = 0;
    return;
  }

  v26 = v25;
  v59 = a2;
  v60 = v2;
  v27 = sub_10001BE20(v25);
  v28 = 0;
  v71 = v26 & 0xC000000000000001;
  v72 = v27;
  v70 = v26 & 0xFFFFFFFFFFFFFF8;
  v69 = enum case for SportingEventClockTimeType.announcedAdditional(_:);
  v67 = v26;
  v68 = (v9 + 104);
  v61 = (v9 + 32);
  v65 = v21;
  v66 = (v9 + 8);
  v29 = v63;
  v73 = v18;
  while (1)
  {
    if (v72 == v28)
    {

      a2 = v59;
      goto LABEL_25;
    }

    if (v71)
    {
      v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v28 >= *(v70 + 16))
      {
        goto LABEL_28;
      }

      v30 = *(v26 + 8 * v28 + 32);
    }

    if (__OFADD__(v28, 1))
    {
      __break(1u);
LABEL_28:
      __break(1u);
      return;
    }

    v74 = v30;
    dispatch thunk of SportingEventClockTime.clockType.getter();
    (*v68)(v21, v69, v8);
    sub_100008E2C(v21, 0, 1, v8);
    v31 = *(v29 + 48);
    sub_10000A744(v24, v14, &qword_1000DEF80, &qword_1000AF380);
    sub_10000A744(v21, &v14[v31], &qword_1000DEF80, &qword_1000AF380);
    if (sub_100008B84(v14, 1, v8) == 1)
    {
      break;
    }

    sub_10000A744(v14, v73, &qword_1000DEF80, &qword_1000AF380);
    if (sub_100008B84(&v14[v31], 1, v8) == 1)
    {
      sub_10000A7A8(v21, &qword_1000DEF80, &qword_1000AF380);
      sub_10000A7A8(v24, &qword_1000DEF80, &qword_1000AF380);
      (*v66)(v73, v8);
      goto LABEL_13;
    }

    v32 = v62;
    (*v61)(v62, &v14[v31], v8);
    sub_1000978A8(&qword_1000DEF88, &type metadata accessor for SportingEventClockTimeType);
    v64 = dispatch thunk of static Equatable.== infix(_:_:)();
    v33 = *v66;
    v34 = v32;
    v29 = v63;
    (*v66)(v34, v8);
    sub_10000A7A8(v65, &qword_1000DEF80, &qword_1000AF380);
    sub_10000A7A8(v24, &qword_1000DEF80, &qword_1000AF380);
    v33(v73, v8);
    v21 = v65;
    sub_10000A7A8(v14, &qword_1000DEF80, &qword_1000AF380);
    v26 = v67;
    if (v64)
    {
      goto LABEL_18;
    }

LABEL_15:

    ++v28;
  }

  sub_10000A7A8(v21, &qword_1000DEF80, &qword_1000AF380);
  sub_10000A7A8(v24, &qword_1000DEF80, &qword_1000AF380);
  if (sub_100008B84(&v14[v31], 1, v8) != 1)
  {
LABEL_13:
    sub_10000A7A8(v14, &qword_1000DEF78, &qword_1000AF378);
    v26 = v67;
    goto LABEL_15;
  }

  sub_10000A7A8(v14, &qword_1000DEF80, &qword_1000AF380);
LABEL_18:

  v35 = v74;
  v36 = dispatch thunk of SportingEventClockTime.minutes.getter();
  v38 = v37;

  a2 = v59;
  if (v38)
  {
    goto LABEL_25;
  }

  v39 = dispatch thunk of SportingEventClockTimeContainer.period.getter();
  if (!v39)
  {
    goto LABEL_25;
  }

  v40 = v39;
  v41 = v57;
  dispatch thunk of SportingEventClockPeriod.type.getter();

  v42 = type metadata accessor for SportingEventClockPeriodType();
  if (sub_100008B84(v41, 1, v42) == 1)
  {
    sub_10000A7A8(v41, &qword_1000DE8A8, &qword_1000AEB80);
    goto LABEL_25;
  }

  v43 = SportingEventClockPeriodType.rawValue.getter();
  v45 = v44;
  (*(*(v42 - 8) + 8))(v41, v42);
  v46 = dispatch thunk of SportingEventClockTimeContainer.period.getter();
  if (!v46 || (v47 = v46, v48 = dispatch thunk of SportingEventClockPeriod.index.getter(), v50 = v49, v47, (v50 & 1) != 0))
  {

    goto LABEL_25;
  }

  v75 = 0;
  v76 = 0xE000000000000000;
  _StringGuts.grow(_:)(17);

  v75 = v43;
  v76 = v45;
  v51._countAndFlagsBits = 32;
  v51._object = 0xE100000000000000;
  String.append(_:)(v51);
  v77 = v48;
  v52._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v52);

  v53._countAndFlagsBits = 0x736574756E696D20;
  v53._object = 0xEA0000000000203ALL;
  String.append(_:)(v53);
  v77 = v36;
  v54._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v54);

  v55 = v76;
  *a2 = v75;
  a2[1] = v55;
}

void sub_1000975DC(uint64_t a1@<X0>, void *a2@<X8>)
{
  v25 = type metadata accessor for IngestionError();
  v4 = *(v25 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v25);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  v9 = _swiftEmptyArrayStorage;
  if (v8)
  {
    v21 = a2;
    v26 = _swiftEmptyArrayStorage;
    sub_100017B68(0, v8, 0);
    v9 = v26;
    v11 = *(v4 + 16);
    v10 = v4 + 16;
    v12 = a1 + ((*(v10 + 64) + 32) & ~*(v10 + 64));
    v23 = *(v10 + 56);
    v24 = v11;
    v22 = (v10 - 8);
    do
    {
      v13 = v25;
      v14 = v10;
      v24(v7, v12, v25);
      v15 = IngestionError.rawValue.getter();
      v17 = v16;
      (*v22)(v7, v13);
      v26 = v9;
      v19 = v9[2];
      v18 = v9[3];
      if (v19 >= v18 >> 1)
      {
        sub_100017B68((v18 > 1), v19 + 1, 1);
        v9 = v26;
      }

      v9[2] = v19 + 1;
      v20 = &v9[2 * v19];
      v20[4] = v15;
      v20[5] = v17;
      v12 += v23;
      --v8;
      v10 = v14;
    }

    while (v8);
    a2 = v21;
  }

  *a2 = v9;
}

uint64_t sub_1000977A0()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100097800()
{
  v1 = *(v0 + 24);

  sub_10005B070();

  return _swift_deallocObject(v2, v3, v4);
}

unint64_t sub_100097844()
{
  result = qword_1000DC428;
  if (!qword_1000DC428)
  {
    sub_1000089A8(&qword_1000DC420, &unk_1000ADE60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC428);
  }

  return result;
}

uint64_t sub_1000978A8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10009797C()
{

  return swift_slowAlloc();
}

uint64_t sub_100097998()
{
  v2 = *(v0 - 400);

  return Logger.logObject.getter();
}

uint64_t sub_1000979D8()
{
  result = *(v0 - 512);
  v2 = *(v0 - 504);
  return result;
}

void sub_100097A08(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0xCu);
}

void sub_100097A24(uint64_t a1@<X8>)
{
  v1 = *(a1 - 256);
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
}

void sub_100097A38(uint64_t a1@<X8>)
{
  v4 = *(a1 - 256);
  *(v4 + 16) = v2;
  *(v4 + 8 * v3 + 32) = v1;
}

char *sub_100097A7C()
{

  return sub_100017B68(0, v0, 0);
}

uint64_t sub_100097AB8()
{

  return swift_slowAlloc();
}

uint64_t sub_100097B24(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x73746E657665 && a2 == 0xE600000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

void *sub_100097BAC(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v17 = a2;
  v18 = a4;
  v19 = a2;
  v20 = a3;
  v21 = a4;
  v22 = a5;
  v23 = a6;
  v24 = a7;
  type metadata accessor for ApsPayload.ContentWrapper.CodingKeys();
  swift_getWitnessTable();
  v9 = type metadata accessor for KeyedDecodingContainer();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v17 - v12;
  v14 = a1[4];
  v15 = sub_100008614(a1, a1[3]);
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v7)
  {
    type metadata accessor for Array();
    v25 = v18;
    swift_getWitnessTable();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v10 + 8))(v13, v9);
    v15 = v19;
  }

  sub_100008A94(a1);
  return v15;
}

uint64_t sub_100097DA4(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3[2];
  v4 = a3[3];
  v6 = a3[4];
  v5 = a3[5];
  v7 = a3[6];
  v8 = a3[7];
  return static LiveActivityAppIntentServiceError.__derived_enum_equals(_:_:)();
}

Swift::Int sub_100097DB8(void *a1)
{
  v2 = a1[2];
  v1 = a1[3];
  v3 = a1[4];
  v4 = a1[5];
  v5 = a1[6];
  v6 = a1[7];
  return LiveActivityAppIntentServiceError.hashValue.getter();
}

void sub_100097DCC(uint64_t a1, void *a2)
{
  v3 = a2[2];
  v2 = a2[3];
  v4 = a2[4];
  v5 = a2[5];
  v6 = a2[6];
  v7 = a2[7];
  LiveActivityAppIntentServiceError.hash(into:)();
}

Swift::Int sub_100097DE0(uint64_t a1, void *a2)
{
  Hasher.init(_seed:)();
  v3 = a2[2];
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  v8 = a2[7];
  LiveActivityAppIntentServiceError.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100097E2C(void *a1)
{
  v2 = a1[2];
  v1 = a1[3];
  v3 = a1[4];
  v4 = a1[5];
  v5 = a1[6];
  v6 = a1[7];
  return sub_100097B98();
}

uint64_t sub_100097E40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = a3[2];
  v5 = a3[3];
  v7 = a3[4];
  v8 = a3[5];
  v9 = a3[6];
  v10 = a3[7];
  result = sub_100097B24(a1, a2);
  *a4 = result & 1;
  return result;
}

uint64_t sub_100097E7C(void *a1)
{
  v2 = a1[2];
  v1 = a1[3];
  v3 = a1[4];
  v4 = a1[5];
  v5 = a1[6];
  v6 = a1[7];
  return sub_100004B88();
}

uint64_t sub_100097EA8@<X0>(void *a1@<X1>, _BYTE *a2@<X8>)
{
  v4 = a1[2];
  v3 = a1[3];
  v5 = a1[4];
  v6 = a1[5];
  v7 = a1[6];
  v8 = a1[7];
  result = static LiveActivityAppIntentServiceError.__derived_enum_equals(_:_:)();
  *a2 = result & 1;
  return result;
}

uint64_t sub_100097EE4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.description.getter(a1, WitnessTable);
}

uint64_t sub_100097F38(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.debugDescription.getter(a1, WitnessTable);
}

void *sub_100097F8C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = sub_100097BAC(a1, *(a2 + 16), *(a2 + 24), *(a2 + 32), *(a2 + 40), *(a2 + 48), *(a2 + 56));
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_100097FC8()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  sub_100098018();
  return v3;
}

void sub_100098018()
{
  sub_1000643A8();
  v3 = v2;
  v4 = *v0;
  v70 = v1;
  v71 = v4;
  v5 = *(v4 + 80);
  v57 = type metadata accessor for Optional();
  sub_10000AC48(v57);
  v56 = v6;
  v8 = *(v7 + 64);
  sub_10000ACFC();
  __chkstk_darwin(v9);
  v58 = v54 - v10;
  v55 = *(v5 - 8);
  v11 = *(v55 + 64);
  sub_10000ACFC();
  __chkstk_darwin(v12);
  v54[2] = v54 - v13;
  v14 = *(v4 + 88);
  v15 = type metadata accessor for Optional();
  v16 = sub_10000AC48(v15);
  v63 = v17;
  v64 = v16;
  v19 = *(v18 + 64);
  sub_10000ACFC();
  __chkstk_darwin(v20);
  v60 = v54 - v21;
  v22 = type metadata accessor for Date();
  v65 = sub_10000AC48(v22);
  v66 = v23;
  v25 = *(v24 + 64);
  __chkstk_darwin(v65);
  v67 = v54 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *(v4 + 96);
  v28 = *(v4 + 112);
  v29 = *(v4 + 120);
  v68 = v5;
  v73 = v5;
  v74 = v14;
  v59 = v14;
  v62 = v27;
  v75 = v27;
  v61 = v28;
  v76 = v28;
  v77 = v29;
  type metadata accessor for ApsPayload.PayloadWrapper.CodingKeys();
  sub_10009A57C();
  swift_getWitnessTable();
  v30 = type metadata accessor for KeyedDecodingContainer();
  sub_10000AC48(v30);
  v69 = v31;
  v33 = *(v32 + 64);
  sub_10000ACFC();
  __chkstk_darwin(v34);
  v36 = v54 - v35;
  v37 = v3[4];
  sub_100008614(v3, v3[3]);
  v38 = v70;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v38)
  {
    v40 = *(*v0 + 48);
    v41 = *(*v0 + 52);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v70 = v29;
    v39 = v67;
    LOBYTE(v73) = 0;
    *(v0 + 2) = KeyedDecodingContainer.decode(_:forKey:)();
    sub_10009A5E8(1);
    *(v0 + 3) = KeyedDecodingContainer.decode(_:forKey:)();
    *(v0 + 4) = v42;
    sub_10009A5E8(2);
    *(v0 + 5) = KeyedDecodingContainer.decode(_:forKey:)();
    *(v0 + 6) = v43;
    LOBYTE(v73) = 3;
    sub_100099FA4(qword_1000DC110);
    v44 = v65;
    v54[1] = 0;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v66 + 32))(&v0[qword_1000E6DF8], v39, v44);
    sub_10009A5E8(4);
    v67 = v36;
    v45 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v46 = &v0[qword_1000E6E00];
    *v46 = v45;
    v46[8] = v47 & 1;
    LOBYTE(v73) = 5;
    v48 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v49 = v60;
    v50 = &v0[qword_1000E6E08];
    *v50 = v48;
    v50[1] = v51;
    LOBYTE(v73) = 6;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v63 + 32))(&v0[*(*v0 + 176)], v49, v64);
    type metadata accessor for Array();
    v72 = 7;
    swift_getWitnessTable();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v52 = sub_10009A5BC();
    v53(v52);
    *&v0[*(*v0 + 184)] = v73;
  }

  sub_100008A94(v3);
  sub_1000643C0();
}

uint64_t sub_100098A24(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6556616D65686373 && a2 == 0xED00006E6F697372;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x7365536F706D6574 && a2 == 0xEE0064496E6F6973;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x697463416576696CLL && a2 == 0xEF6C745479746976;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x5464616F6C796170 && a2 == 0xEC0000006E656B6FLL;
            if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 2003134838 && a2 == 0xE400000000000000;
              if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {

                return 6;
              }

              else if (a1 == 0x746E65746E6F63 && a2 == 0xE700000000000000)
              {

                return 7;
              }

              else
              {
                v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

                if (v13)
                {
                  return 7;
                }

                else
                {
                  return 8;
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_100098CC0(char a1)
{
  result = 1701869940;
  switch(a1)
  {
    case 1:
      result = 0x6556616D65686373;
      break;
    case 2:
      result = 0x7365536F706D6574;
      break;
    case 3:
      result = 0x6D617473656D6974;
      break;
    case 4:
      result = 0x697463416576696CLL;
      break;
    case 5:
      result = 0x5464616F6C796170;
      break;
    case 6:
      result = 2003134838;
      break;
    case 7:
      result = 0x746E65746E6F63;
      break;
    default:
      return result;
  }

  return result;
}

BOOL sub_100098DE0(char *a1, char *a2, void *a3)
{
  v4 = a3[2];
  v3 = a3[3];
  v5 = a3[4];
  v6 = a3[5];
  v7 = a3[6];
  v8 = a3[7];
  return sub_10000C8BC(*a1, *a2);
}

Swift::Int sub_100098DFC(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = a1[7];
  return sub_10000C8F4(*v1);
}

void sub_100098E10(uint64_t a1, void *a2)
{
  v3 = a2[2];
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  v8 = a2[7];
  sub_10000C8CC(a1, *v2);
}

Swift::Int sub_100098E24(uint64_t a1, void *a2)
{
  Hasher.init(_seed:)();
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  v7 = a2[5];
  v8 = a2[6];
  v9 = a2[7];
  sub_10000C8CC(v11, *v2);
  return Hasher._finalize()();
}

uint64_t sub_100098E74(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = a1[7];
  return sub_100098CC0(*v1);
}

uint64_t sub_100098EA0(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = a1[7];
  v8 = *v1;
  return sub_100004B88();
}

uint64_t sub_100098EE4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.description.getter(a1, WitnessTable);
}

uint64_t sub_100098F38(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.debugDescription.getter(a1, WitnessTable);
}

char *sub_100098F8C()
{
  v1 = *v0;
  v2 = *(v0 + 4);

  v3 = *(v0 + 6);

  v4 = qword_1000E6DF8;
  v5 = type metadata accessor for Date();
  sub_100026794(v5);
  (*(v6 + 8))(&v0[v4]);
  v7 = *&v0[qword_1000E6E08 + 8];

  v8 = *(*v0 + 176);
  v9 = *(v1 + 88);
  v10 = type metadata accessor for Optional();
  sub_100026794(v10);
  (*(v11 + 8))(&v0[v8]);
  v12 = *&v0[*(*v0 + 184)];

  return v0;
}

uint64_t sub_100099080()
{
  sub_100098F8C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

void sub_1000990D8()
{
  sub_1000643A8();
  v31 = v1;
  v2 = v0;
  v4 = v3;
  v5 = *v2;
  v6 = *(*v2 + 80);
  v29 = *(*v2 + 120);
  v30 = v6;
  v33 = v6;
  v28 = *(v5 + 88);
  v34 = v28;
  v27 = *(v5 + 104);
  v35 = v27;
  v36 = v29;
  type metadata accessor for ApsPayload.PayloadWrapper.CodingKeys();
  sub_10009A57C();
  swift_getWitnessTable();
  v7 = type metadata accessor for KeyedEncodingContainer();
  sub_10000AC48(v7);
  v9 = v8;
  v11 = *(v10 + 64);
  sub_10000ACFC();
  __chkstk_darwin(v12);
  v14 = &v27 - v13;
  v15 = v4[4];
  sub_100008614(v4, v4[3]);
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v16 = v2[2];
  LOBYTE(v33) = 0;
  v17 = v31;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v17)
  {
    (*(v9 + 8))(v14, v7);
  }

  else
  {
    v18 = v2[3];
    v19 = v2[4];
    sub_10009A5AC(1);
    KeyedEncodingContainer.encode(_:forKey:)();
    v20 = v2[5];
    v21 = v2[6];
    sub_10009A5AC(2);
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v33) = 3;
    type metadata accessor for Date();
    sub_100099FA4(qword_1000DF0A8);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v22 = *(v2 + qword_1000E6E00);
    v23 = *(v2 + qword_1000E6E00 + 8);
    sub_10009A5AC(4);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v24 = *(v2 + qword_1000E6E08);
    v25 = *(v2 + qword_1000E6E08 + 8);
    sub_10009A5AC(5);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v26 = *(*v2 + 176);
    LOBYTE(v33) = 6;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v33 = *(v2 + *(*v2 + 184));
    type metadata accessor for Array();
    v32 = v27;
    swift_getWitnessTable();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v9 + 8))(v14, 0);
  }

  sub_1000643C0();
}

uint64_t sub_100099478@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100097FC8();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1000994C8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64616F6C796170 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x756F437365747962 && a2 == 0xEA0000000000746ELL)
  {

    return 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_100099598(char a1)
{
  if (a1)
  {
    return 0x756F437365747962;
  }

  else
  {
    return 0x64616F6C796170;
  }
}

BOOL sub_1000995D4(unsigned __int8 *a1, unsigned __int8 *a2, void *a3)
{
  v4 = a3[2];
  v3 = a3[3];
  v5 = a3[4];
  v6 = a3[5];
  v7 = a3[6];
  v8 = a3[7];
  return sub_10006208C(*a1, *a2);
}

Swift::Int sub_1000995F0(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = a1[7];
  return sub_1000620C4(*v1);
}

void sub_100099608(uint64_t a1, void *a2)
{
  v3 = a2[2];
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  v8 = a2[7];
  sub_10006209C(a1, *v2);
}

Swift::Int sub_100099620(uint64_t a1, void *a2)
{
  Hasher.init(_seed:)();
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  v7 = a2[5];
  v8 = a2[6];
  v9 = a2[7];
  sub_10006209C(v11, *v2);
  return Hasher._finalize()();
}

uint64_t sub_100099670(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = a1[7];
  return sub_100099598(*v1);
}

uint64_t sub_1000996A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t (*a4)(uint64_t, uint64_t, void, void, void, void, void, void)@<X4>, _BYTE *a5@<X8>)
{
  result = a4(a1, a2, a3[2], a3[3], a3[4], a3[5], a3[6], a3[7]);
  *a5 = result;
  return result;
}

uint64_t sub_1000996E0(void *a1)
{
  v2 = *v1;
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  v6 = a1[5];
  v7 = a1[6];
  v8 = a1[7];
  return sub_100004B88();
}

uint64_t sub_100099728@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t (*a3)(uint64_t, void, void, void, void, void, void)@<X3>, _BYTE *a4@<X8>)
{
  result = a3(a1, a2[2], a2[3], a2[4], a2[5], a2[6], a2[7]);
  *a4 = result;
  return result;
}

uint64_t sub_100099768(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.description.getter(a1, WitnessTable);
}

uint64_t sub_1000997BC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.debugDescription.getter(a1, WitnessTable);
}

uint64_t sub_100099810()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t sub_100099830()
{
  sub_100099810();

  return _swift_deallocClassInstance(v0, 32, 7);
}

void sub_10009987C()
{
  sub_1000643A8();
  v35 = v1;
  v2 = v0;
  v4 = v3;
  v5 = *v2;
  sub_10009A5CC();
  v33 = *(v6 + 80);
  sub_10009A5CC();
  v32 = *(v7 + 88);
  sub_10009A5CC();
  v31 = *(v8 + 96);
  sub_10009A5CC();
  v30 = *(v9 + 104);
  sub_10009A5CC();
  v29 = *(v10 + 112);
  sub_10009A5CC();
  v12 = *(v11 + 120);
  v37 = v13;
  v38 = v14;
  v39 = v15;
  v40 = v16;
  v41 = v17;
  v42 = v12;
  type metadata accessor for ApsPayload.CodingKeys();
  sub_10009A594();
  swift_getWitnessTable();
  v18 = type metadata accessor for KeyedEncodingContainer();
  sub_10000AC48(v18);
  v34 = v19;
  v21 = *(v20 + 64);
  sub_10000ACFC();
  __chkstk_darwin(v22);
  v24 = &v29 - v23;
  v25 = v4[4];
  sub_100008614(v4, v4[3]);
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v43 = v2[2];
  v36 = 0;
  v37 = v33;
  v38 = v32;
  v39 = v31;
  v40 = v30;
  v41 = v29;
  v42 = v12;
  type metadata accessor for ApsPayload.PayloadWrapper();
  swift_getWitnessTable();
  v26 = v35;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v26)
  {
    (*(v34 + 8))(v24, v18);
  }

  else
  {
    v27 = v34;
    v28 = v2[3];
    LOBYTE(v37) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    (*(v27 + 8))(v24, v18);
  }

  sub_1000643C0();
}

uint64_t sub_100099AD8(uint64_t a1)
{
  v2 = swift_allocObject();
  sub_100099C48(a1, v3, v4, v5, v6, v7, v8, v9, v11, v12);
  return v2;
}

uint64_t sub_100099B28(uint64_t a1)
{
  result = type metadata accessor for Date();
  if (v3 <= 0x3F)
  {
    v6 = *(result - 8) + 64;
    v4 = *(a1 + 88);
    result = type metadata accessor for Optional();
    if (v5 <= 0x3F)
    {
      v7 = *(result - 8) + 64;
      return swift_initClassMetadata2();
    }
  }

  return result;
}

void sub_100099C48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1000643A8();
  v12 = v10;
  v14 = v13;
  v26 = *(*v10 + 88);
  v27 = *(*v10 + 80);
  v24 = *(*v10 + 104);
  v25 = *(*v10 + 96);
  v22 = *(*v10 + 120);
  v23 = *(*v10 + 112);
  type metadata accessor for ApsPayload.CodingKeys();
  sub_10009A594();
  swift_getWitnessTable();
  v28 = type metadata accessor for KeyedDecodingContainer();
  sub_10000AC48(v28);
  v16 = *(v15 + 64);
  sub_10000ACFC();
  __chkstk_darwin(v17);
  v18 = v14[4];
  sub_100008614(v14, v14[3]);
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v11)
  {
    swift_deallocPartialClassInstance();
  }

  else
  {
    type metadata accessor for ApsPayload.PayloadWrapper();
    swift_getWitnessTable();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v10[2] = a10;
    v19 = KeyedDecodingContainer.decode(_:forKey:)();
    v20 = sub_10009A5D8();
    v21(v20);
    v12[3] = v19;
  }

  sub_100008A94(v14);
  sub_1000643C0();
}

uint64_t sub_100099F24@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100099AD8(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_100099FA4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Date();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10009A018(uint64_t a1, uint64_t a2)
{
  if (sub_10009A084(a2))
  {

    return sub_100003998(&qword_1000DC4A8, &qword_1000AAF20);
  }

  else
  {

    return type metadata accessor for _ContiguousArrayStorage();
  }
}

uint64_t sub_10009A084(uint64_t a1)
{
  if (swift_isClassType())
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10009A0B4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_10009A0FC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10009A13C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10009A178()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

_BYTE *sub_10009A1B4(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x10009A280);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_10009A2A8(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x10009A374);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_10009A45C(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *result = 0;
      break;
    case 2:
      *result = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0x10009A4F8);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_10009A5F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v59 = a1;
  v65 = a8;
  v66 = a2;
  v60 = a7;
  v67 = a5;
  v68 = a6;
  v69 = a3;
  v9 = sub_100003998(&qword_1000DF3D0, "ԣ");
  sub_10000AC48(v9);
  v11 = v10;
  v13 = *(v12 + 64);
  sub_10000ACFC();
  __chkstk_darwin(v14);
  v16 = &v55 - v15;
  v63 = sub_100003998(&qword_1000DF3D8, &qword_1000AF988);
  sub_10000AC48(v63);
  v61 = v17;
  v19 = *(v18 + 64);
  sub_10000ACFC();
  __chkstk_darwin(v20);
  v22 = &v55 - v21;
  v64 = sub_100003998(&qword_1000DF3E0, &qword_1000AF990);
  sub_10000AC48(v64);
  v62 = v23;
  v25 = *(v24 + 64);
  sub_10000ACFC();
  __chkstk_darwin(v26);
  v28 = &v55 - v27;
  v29 = *(*(sub_100003998(&unk_1000DD7B0, &qword_1000AC150) - 8) + 64);
  sub_10000ACFC();
  __chkstk_darwin(v30);
  v32 = &v55 - v31;
  v33 = type metadata accessor for URL();
  v34 = sub_10000AC48(v33);
  v36 = v35;
  v38 = *(v37 + 64);
  __chkstk_darwin(v34);
  v40 = &v55 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a4)
  {

    URL.init(string:)();
    if (sub_100008B84(v32, 1, v33) != 1)
    {
      v57 = v36;
      (*(v36 + 32))(v40, v32, v33);
      v43 = sub_100008614((v58 + 16), *(v58 + 40));
      v70 = sub_100066A9C(v40, v67, v68, *v43, v43[1]);
      sub_100003998(&qword_1000DF3F0, &qword_1000AF998);
      sub_100003998(&qword_1000DC470, &qword_1000AA620);
      v56 = v28;
      sub_10000A6FC(&qword_1000DF3F8, &qword_1000DF3F0, &qword_1000AF998);
      Publisher.mapError<A>(_:)();

      v44 = swift_allocObject();
      swift_weakInit();
      v45 = swift_allocObject();
      v46 = v68;
      v45[2] = v67;
      v45[3] = v46;
      v47 = v59;
      v49 = v65;
      v48 = v66;
      v45[4] = v60;
      v45[5] = v49;
      v45[6] = v44;
      v45[7] = v47;
      v50 = v69;
      v45[8] = v48;
      v45[9] = v50;
      v45[10] = a4;
      type metadata accessor for LogoDownloadResult();
      sub_10000A6FC(&qword_1000DF400, &qword_1000DF3D8, &qword_1000AF988);

      v51 = v56;
      v52 = v63;
      Publisher.map<A>(_:)();

      (*(v61 + 8))(v22, v52);
      sub_10000A6FC(&qword_1000DF408, &qword_1000DF3E0, &qword_1000AF990);
      v53 = v64;
      v42 = Publisher.eraseToAnyPublisher()();
      (*(v62 + 8))(v51, v53);
      (*(v57 + 8))(v40, v33);
      return v42;
    }

    sub_10009B8B0(v32);
  }

  v41 = objc_allocWithZone(NSError);
  v70 = sub_100029EF8(0xD00000000000001ELL, 0x80000001000B2AC0, 1, 0);
  type metadata accessor for LogoDownloadResult();
  sub_100003998(&qword_1000DC470, &qword_1000AA620);
  Fail.init(error:)();
  sub_10000A6FC(&qword_1000DF3E8, &qword_1000DF3D0, "ԣ");
  v42 = Publisher.eraseToAnyPublisher()();
  (*(v11 + 8))(v16, v9);
  return v42;
}

uint64_t sub_10009ABF4(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v6 = *(type metadata accessor for LogoDownloadResult() + 24);

  return static SportingEventSubscription.Competitor.LogoFilePaths.== infix(_:_:)(a1 + v6, a2 + v6);
}

uint64_t sub_10009AC94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X6>, uint64_t a3@<X7>, void *a4@<X8>, uint64_t a5, uint64_t a6)
{
  v18 = a5;
  v19 = a2;
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  URL.init(fileURLWithPath:)();
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_10009AE38(a1, v13);
  }

  URL.path(percentEncoded:)(1);
  v14 = a4 + *(type metadata accessor for LogoDownloadResult() + 24);
  SportingEventSubscription.Competitor.LogoFilePaths.init(smallSize:defaultSize:)();
  (*(v10 + 8))(v13, v9);
  v15 = v18;
  *a4 = v19;
  a4[1] = a3;
  a4[2] = v15;
  a4[3] = a6;
}

uint64_t sub_10009AE38(uint64_t a1, uint64_t a2)
{
  v47[3] = a2;
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  __chkstk_darwin(v6);
  v8 = v47 - v7;
  __chkstk_darwin(v9);
  v11 = v47 - v10;
  v12 = type metadata accessor for SportsLogoSize();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v17 = v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 104))(v17, enum case for SportsLogoSize.small(_:), v12, v15);
  v19 = sub_10009B514(v18);
  v20 = v17;
  v21 = v19;
  (*(v13 + 8))(v20, v12);
  if (!v21)
  {
    if (qword_1000DBA28 != -1)
    {
      swift_once();
    }

    v34 = type metadata accessor for Logger();
    sub_100007DE8(v34, qword_1000E6D60);
    (*(v4 + 16))(v8, a1, v3);
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v48 = v38;
      *v37 = 136315138;
      v39 = URL.absoluteString.getter();
      v41 = v40;
      (*(v4 + 8))(v8, v3);
      v42 = sub_1000170D4(v39, v41, &v48);

      *(v37 + 4) = v42;
      _os_log_impl(&_mh_execute_header, v35, v36, "LogoRepository: can't create CGImage from URL: %s", v37, 0xCu);
      sub_100008A94(v38);
    }

    else
    {

      (*(v4 + 8))(v8, v3);
    }

    return 0;
  }

  v22 = sub_10009B678(v21);
  if (v23 >> 60 == 15)
  {
    v24 = v3;
    if (qword_1000DBA28 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    sub_100007DE8(v25, qword_1000E6D60);
    (*(v4 + 16))(v11, a1, v3);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v48 = v29;
      *v28 = 136315138;
      v30 = URL.absoluteString.getter();
      v32 = v31;
      (*(v4 + 8))(v11, v24);
      v33 = sub_1000170D4(v30, v32, &v48);

      *(v28 + 4) = v33;
      _os_log_impl(&_mh_execute_header, v26, v27, "LogoRepository: can't create data from image with URL: %s", v28, 0xCu);
      sub_100008A94(v29);
    }

    else
    {

      (*(v4 + 8))(v11, v3);
    }

    return 0;
  }

  v43 = v22;
  v44 = v23;
  Data.write(to:options:)();
  countAndFlagsBits = URL.path(percentEncoded:)(1)._countAndFlagsBits;
  sub_10001F19C(v43, v44);

  return countAndFlagsBits;
}

CGImageRef sub_10009B514@<X0>(NSURL *a1@<X8>)
{
  URL._bridgeToObjectiveC()(a1);
  v2 = v1;
  v3 = CGImageSourceCreateWithURL(v1, 0);

  if (!v3)
  {
    return 0;
  }

  sub_100003998(&qword_1000DF410, &unk_1000AF9A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000AB130;
  *(inited + 32) = kCGImageSourceThumbnailMaxPixelSize;
  v5 = kCGImageSourceThumbnailMaxPixelSize;
  *(inited + 40) = SportsLogoSize.rawValue.getter();
  *(inited + 64) = &type metadata for Int;
  *(inited + 72) = kCGImageSourceCreateThumbnailFromImageAlways;
  *(inited + 80) = 1;
  *(inited + 104) = &type metadata for Bool;
  *(inited + 112) = kCGImageSourceCreateThumbnailWithTransform;
  *(inited + 144) = &type metadata for Bool;
  *(inited + 120) = 1;
  sub_10009B9E0();
  sub_10009BA24();
  v6 = kCGImageSourceCreateThumbnailFromImageAlways;
  v7 = kCGImageSourceCreateThumbnailWithTransform;
  Dictionary.init(dictionaryLiteral:)();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  ThumbnailAtIndex = CGImageSourceCreateThumbnailAtIndex(v3, 0, isa);

  return ThumbnailAtIndex;
}

uint64_t sub_10009B678(CGImage *a1)
{
  v2 = type metadata accessor for UTType();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  Mutable = CFDataCreateMutable(0, 0);
  if (!Mutable)
  {
    return 0;
  }

  v8 = Mutable;
  static UTType.png.getter();
  UTType.identifier.getter();
  (*(v3 + 8))(v6, v2);
  v9 = String._bridgeToObjectiveC()();

  v10 = CGImageDestinationCreateWithData(v8, v9, 1uLL, 0);

  if (!v10)
  {

    return 0;
  }

  CGImageDestinationAddImage(v10, a1, 0);
  if (!CGImageDestinationFinalize(v10))
  {

    return 0;
  }

  v11 = v8;
  v12 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

  return v12;
}

uint64_t sub_10009B808()
{
  sub_100008A94((v0 + 16));

  return _swift_deallocClassInstance(v0, 56, 7);
}

uint64_t type metadata accessor for LogoDownloadResult()
{
  result = qword_1000DF480;
  if (!qword_1000DF480)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10009B8B0(uint64_t a1)
{
  v2 = sub_100003998(&unk_1000DD7B0, &qword_1000AC150);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10009B918()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10009B950()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[6];

  v4 = v0[8];

  v5 = v0[10];

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_10009B9A8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[4];
  v6 = v2[5];
  v7 = v2[6];
  return sub_10009AC94(a1, v2[7], v2[8], a2, v2[9], v2[10]);
}

unint64_t sub_10009B9E0()
{
  result = qword_1000DF418;
  if (!qword_1000DF418)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000DF418);
  }

  return result;
}

unint64_t sub_10009BA24()
{
  result = qword_1000DF420;
  if (!qword_1000DF420)
  {
    sub_10009B9E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DF420);
  }

  return result;
}

uint64_t sub_10009BA90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for SportingEventSubscription.Competitor.LogoFilePaths();
    v9 = a1 + *(a3 + 24);

    return sub_100008B84(v9, a2, v8);
  }
}

uint64_t sub_10009BB2C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for SportingEventSubscription.Competitor.LogoFilePaths();
    v8 = v5 + *(a4 + 24);

    return sub_100008E2C(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10009BBAC()
{
  result = type metadata accessor for SportingEventSubscription.Competitor.LogoFilePaths();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10009BC28(uint64_t a1, char a2, uint64_t (*a3)(uint64_t *))
{
  v4 = a1;
  v5 = a2 & 1;
  return a3(&v4);
}

uint64_t sub_10009BC68()
{
  sub_10009BE7C(v0, __src);
  v1 = swift_allocObject();
  memcpy((v1 + 16), __src, 0xD8uLL);
  v2 = sub_100003998(&qword_1000DD038, &unk_1000AB9A0);
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  __src[0] = Future.init(_:)();
  sub_10009BF34();
  v5 = Publisher.eraseToAnyPublisher()();

  return v5;
}

uint64_t sub_10009BD38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100003998(&qword_1000DC5A8, &qword_1000AAFD0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &__src[-v8 - 8];
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v11 = type metadata accessor for TaskPriority();
  sub_100008E2C(v9, 1, 1, v11);
  sub_10009BE7C(a3, __src);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  memcpy(v12 + 4, __src, 0xD8uLL);
  v12[31] = sub_100026094;
  v12[32] = v10;

  sub_10004A77C();
}

uint64_t sub_10009BEB4()
{
  sub_100008A94(v0 + 2);
  v1 = v0[7];

  v2 = v0[8];

  sub_100008A94(v0 + 9);
  sub_100008A94(v0 + 14);
  sub_100008A94(v0 + 19);
  v3 = v0[24];

  v4 = v0[26];

  v5 = v0[28];

  return _swift_deallocObject(v0, 232, 7);
}

unint64_t sub_10009BF34()
{
  result = qword_1000DD040;
  if (!qword_1000DD040)
  {
    sub_1000089A8(&qword_1000DD038, &unk_1000AB9A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DD040);
  }

  return result;
}

uint64_t sub_10009BF98()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10009BFD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[30] = a5;
  v6[31] = a6;
  v6[29] = a4;
  return _swift_task_switch(sub_10009BFF4, 0, 0);
}

uint64_t sub_10009BFF4()
{
  v16 = v0;
  if (qword_1000DBA38 != -1)
  {
    swift_once();
  }

  v1 = v0[29];
  v2 = type metadata accessor for Logger();
  sub_100007DE8(v2, qword_1000E6D90);
  sub_10009BE7C(v1, (v0 + 2));
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v15 = v6;
    *v5 = 136315138;
    v7 = v0[27];
    v8 = v0[28];

    sub_100078B54((v0 + 2));
    v9 = sub_1000170D4(v7, v8, &v15);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "SubscriptionStopActivityOperation: destroying activity for '%s'", v5, 0xCu);
    sub_100008A94(v6);
  }

  else
  {

    sub_100078B54((v0 + 2));
  }

  if (qword_1000DBA00 != -1)
  {
    swift_once();
  }

  v10 = v0[29];
  v11 = *(v10 + 200);
  v12 = *(v10 + 208);
  v13 = swift_task_alloc();
  v0[32] = v13;
  *v13 = v0;
  v13[1] = sub_10009C234;

  return sub_10005625C();
}

uint64_t sub_10009C234()
{
  v2 = *(*v1 + 256);
  v5 = *v1;
  *(*v1 + 264) = v0;

  if (v0)
  {
    v3 = sub_10009C3B4;
  }

  else
  {
    v3 = sub_10009C348;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10009C348()
{
  v1 = *(v0 + 248);
  (*(v0 + 240))(1, 0);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10009C3B4()
{
  v1 = v0[33];
  v3 = v0[30];
  v2 = v0[31];
  swift_errorRetain();
  v3(v1, 1);

  v4 = v0[1];

  return v4();
}

uint64_t sub_10009C444()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  sub_100008A94(v0 + 4);
  v2 = v0[9];

  v3 = v0[10];

  sub_100008A94(v0 + 11);
  sub_100008A94(v0 + 16);
  sub_100008A94(v0 + 21);
  v4 = v0[26];

  v5 = v0[28];

  v6 = v0[30];

  v7 = v0[32];

  return _swift_deallocObject(v0, 264, 7);
}

uint64_t sub_10009C4CC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[31];
  v7 = v1[32];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10002C904;

  return sub_10009BFD0(a1, v4, v5, (v1 + 4), v6, v7);
}

uint64_t sub_10009C59C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 216))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}