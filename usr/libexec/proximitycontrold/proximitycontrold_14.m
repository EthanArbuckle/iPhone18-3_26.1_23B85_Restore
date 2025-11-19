unint64_t sub_1001477CC()
{
  _StringGuts.grow(_:)(23);

  UUID.uuidString.getter();
  sub_10000B584(8);

  v0 = static String._fromSubstring(_:)();
  v2 = v1;

  v3._countAndFlagsBits = v0;
  v3._object = v2;
  String.append(_:)(v3);

  v4._countAndFlagsBits = 62;
  v4._object = 0xE100000000000000;
  String.append(_:)(v4);
  return 0xD000000000000014;
}

uint64_t sub_100147914@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment_id;
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_100147990@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100141ADC(*a1);
  *a2 = result;
  return result;
}

id sub_1001479BC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  *a2 = *a1;
  a2[1] = v2;
  return sub_100056F7C(v3);
}

uint64_t sub_1001479E8(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100147A28(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100147A80(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100147B30(uint64_t a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  return sub_100144FDC(a1, *(v1 + 16));
}

uint64_t sub_100147BCC()
{
  v0 = type metadata accessor for Logger();
  sub_100036838(v0, qword_1003474F8);
  sub_100003078(v0, qword_1003474F8);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100147C74(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100147FAC(v1);
  }

  return result;
}

uint64_t sub_100147CD4(uint64_t *a1)
{
  v1 = *a1;
  sub_1000935F8();

  sub_100035D04(&qword_1003476D8, &qword_10027F150);
  sub_100035D04(&qword_1003476E0, &qword_10027F158);
  sub_10000E244(&qword_1003476E8, &qword_1003476D8, &qword_10027F150);
  Publisher.map<A>(_:)();
}

uint64_t sub_100147DD0(unsigned __int8 a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100148464(a1, a2);
  }

  return result;
}

void *sub_100147E44()
{
  v1 = v0;
  if (qword_1003390A8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_1003474F8);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Deinit", v5, 2u);
  }

  v6 = v1[2];
  swift_unownedRelease();
  v7 = v1[5];

  v8 = v1[6];

  v9 = v1[7];

  sub_10009D4C8(v1[8]);
  v10 = v1[9];

  return v1;
}

uint64_t sub_100147F54()
{
  sub_100147E44();

  return swift_deallocClassInstance();
}

uint64_t sub_100147FAC(uint64_t a1)
{
  v2 = v1;
  if (qword_1003390A8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100003078(v4, qword_1003474F8);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v7 = 136315394;
    *(v7 + 4) = sub_100017494(0xD000000000000014, 0x80000001002A21B0, &v22);
    *(v7 + 12) = 2080;
    if (a1)
    {
      UUID.uuidString.getter();
      sub_10000B584(8);

      v8 = static String._fromSubstring(_:)();
      v10 = v9;

      v11._countAndFlagsBits = v8;
      v2 = v1;
      v11._object = v10;
      String.append(_:)(v11);

      v12._countAndFlagsBits = 32;
      v12._object = 0xE100000000000000;
      String.append(_:)(v12);
      v13 = *(a1 + 24);
      v14._countAndFlagsBits = sub_1000092A0();
      String.append(_:)(v14);

      v15._countAndFlagsBits = 62;
      v15._object = 0xE100000000000000;
      String.append(_:)(v15);
      v16 = 60;
      v17 = 0xE100000000000000;
    }

    else
    {
      v17 = 0xE300000000000000;
      v16 = 7104878;
    }

    v18 = sub_100017494(v16, v17, &v22);

    *(v7 + 14) = v18;
    _os_log_impl(&_mh_execute_header, v5, v6, "%s: session=%s", v7, 0x16u);
    swift_arrayDestroy();
  }

  result = sub_100149B18();
  if (a1)
  {
    v20 = *(v2 + 16);
    swift_unownedRetainStrong();
    v21 = *(v20 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment_hapticPlayer);

    swift_unknownObjectRetain();

    *(v21 + OBJC_IVAR____TtC17proximitycontrold12HapticPlayer_activeDeviceClass) = sub_100092098();
    swift_unknownObjectRelease();
    sub_100149CBC();
  }

  return result;
}

void *sub_1001482DC()
{
  v1 = v0;
  v2 = *(v0 + 64);
  v3 = v2;
  if (v2 == 1)
  {
    if (qword_100338FF8 != -1)
    {
      swift_once();
    }

    v4 = qword_10038B150;
    v5 = sub_100104D24();
    swift_getKeyPath();
    sub_10014AC90(&qword_100344D08, type metadata accessor for HapticPattern);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v6 = *(v4 + OBJC_IVAR____TtC17proximitycontrold13HapticPattern__name);
    v7 = *(v4 + OBJC_IVAR____TtC17proximitycontrold13HapticPattern__name + 8);
    type metadata accessor for HapticPatternPlayer();
    swift_allocObject();

    v3 = sub_1001F9170(v6, v7, v5);
    v8 = *(v1 + 64);
    *(v1 + 64) = v3;

    sub_10009D4C8(v8);
  }

  sub_10014AD9C(v2);
  return v3;
}

void sub_100148464(unsigned __int8 a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_100035D04(&unk_10033D8B0, &qword_100275520);
  v123 = *(v6 - 8);
  v7 = *(v123 + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v124 = v9;
  v125 = &v105[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v122 = &v105[-v10];
  v11 = type metadata accessor for Logger();
  v120 = *(v11 - 8);
  v12 = *(v120 + 64);
  __chkstk_darwin(v11);
  v114 = v13;
  v116 = &v105[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v119 = sub_100035D04(&qword_1003476F0, &unk_10027F160);
  v118 = *(v119 - 8);
  v14 = *(v118 + 64);
  __chkstk_darwin(v119);
  v117 = &v105[-v15];
  v16 = sub_100035D04(&qword_10034C680, &qword_100270390);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v109 = &v105[-v18];
  v111 = type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
  v110 = *(v111 - 8);
  v19 = *(v110 + 64);
  __chkstk_darwin(v111);
  v21 = &v105[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v115 = sub_100035D04(&qword_1003476F8, &qword_10027F170);
  v113 = *(v115 - 8);
  v22 = *(v113 + 64);
  __chkstk_darwin(v115);
  v112 = &v105[-v23];
  v24 = type metadata accessor for DispatchWorkItemFlags();
  isa = v24[-1].isa;
  v132 = v24;
  v25 = *(isa + 64);
  __chkstk_darwin(v24);
  v128 = &v105[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v27 = type metadata accessor for DispatchQoS();
  v129 = *(v27 - 8);
  v130 = v27;
  v28 = *(v129 + 64);
  __chkstk_darwin(v27);
  v127 = &v105[-((v29 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_1003390A8 != -1)
  {
    swift_once();
  }

  v30 = sub_100003078(v11, qword_1003474F8);

  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.default.getter();

  v33 = os_log_type_enabled(v31, v32);
  v121 = v11;
  v108 = v21;
  if (v33)
  {
    v34 = swift_slowAlloc();
    v126 = v30;
    v35 = v34;
    v107 = swift_slowAlloc();
    v139 = v107;
    *v35 = 136315650;
    *(v35 + 4) = sub_100017494(0x5F28656C646E6168, 0xEE00293A726F663ALL, &v139);
    *(v35 + 12) = 2080;
    v36 = sub_100101184(a1);
    v106 = v32;
    v38 = v3;
    v39 = sub_100017494(v36, v37, &v139);

    *(v35 + 14) = v39;
    *(v35 + 22) = 2080;
    aBlock = 60;
    v134 = 0xE100000000000000;
    UUID.uuidString.getter();
    sub_10000B584(8);
    v40 = a2;

    v3 = v38;
    v41 = static String._fromSubstring(_:)();
    v43 = v42;

    v44._countAndFlagsBits = v41;
    v44._object = v43;
    String.append(_:)(v44);
    a2 = v40;

    v45._countAndFlagsBits = 32;
    v45._object = 0xE100000000000000;
    String.append(_:)(v45);
    v46 = *(v40 + 24);
    v47._countAndFlagsBits = sub_1000092A0();
    String.append(_:)(v47);

    v48._countAndFlagsBits = 62;
    v48._object = 0xE100000000000000;
    String.append(_:)(v48);
    v49 = sub_100017494(aBlock, v134, &v139);

    *(v35 + 24) = v49;
    _os_log_impl(&_mh_execute_header, v31, v106, "%s: effect=%s, session=%s", v35, 0x20u);
    swift_arrayDestroy();

    v30 = v126;
  }

  if (a1 > 3u)
  {
    if (a1 == 4)
    {
      if (qword_100338F18 != -1)
      {
        swift_once();
      }

      v67 = *(qword_10038B0B8 + 936);
      v68 = sub_1000031CC();

      if (v68)
      {
        aBlock = sub_10009219C();
        swift_allocObject();
        swift_weakInit();
        v69 = sub_100035D04(&qword_100343068, &qword_100278EF0);
        isa = sub_10000E244(&qword_100343078, &qword_100343068, &qword_100278EF0);
        v132 = v69;
        v70 = Publisher<>.sink(receiveValue:)();

        v71 = v3[5];
        v3[5] = v70;

        aBlock = *(a2 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___progressPublisher);

        v72 = v108;
        static OS_dispatch_queue.SchedulerTimeType.Stride.seconds(_:)();
        if (qword_1003391E8 != -1)
        {
          swift_once();
        }

        v73 = qword_10038B5B8;
        v139 = qword_10038B5B8;
        v74 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
        v75 = v109;
        (*(*(v74 - 8) + 56))(v109, 1, 1, v74);
        sub_100003118(0, &qword_100339320, OS_dispatch_queue_ptr);
        sub_1000513CC();
        v76 = v73;
        v77 = v112;
        Publisher.debounce<A>(for:scheduler:options:)();
        sub_1000097E8(v75, &qword_10034C680, &qword_100270390);

        (*(v110 + 8))(v72, v111);

        v78 = static os_log_type_t.info.getter();
        v79 = v120;
        v130 = *(v120 + 16);
        v80 = v116;
        v81 = v121;
        v130(v116, v30, v121);
        v82 = (*(v79 + 80) + 64) & ~*(v79 + 80);
        v126 = v30;
        v83 = v82 + v114;
        v84 = swift_allocObject();
        *(v84 + 2) = sub_1001499C4;
        *(v84 + 3) = 0;
        *(v84 + 4) = 0;
        *(v84 + 5) = 0xE000000000000000;
        *(v84 + 6) = 0;
        *(v84 + 7) = 0xE000000000000000;
        (*(v79 + 32))(&v84[v82], v80, v81);
        v84[v83] = v78;
        sub_10000E244(&qword_100347700, &qword_1003476F8, &qword_10027F170);
        v85 = v117;
        v86 = v115;
        Publisher.map<A>(_:)();

        sub_10000E244(&qword_100347708, &qword_1003476F0, &unk_10027F160);
        v87 = v119;
        v88 = Publisher.eraseToAnyPublisher()();
        (*(v118 + 8))(v85, v87);
        (*(v113 + 8))(v77, v86);
        aBlock = v88;
        swift_allocObject();
        swift_weakInit();
        v89 = Publisher<>.sink(receiveValue:)();

        v90 = v3[6];
        v3[6] = v89;

        v91 = v3[2];
        swift_unownedRetainStrong();
        v92 = *(v91 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment_hapticPlayer);
        swift_unknownObjectRetain();

        v93 = v122;
        v130(v122, v126, v81);
        (*(v79 + 56))(v93, 0, 1, v81);
        v94 = v125;
        sub_10007E4B8(v93, v125);
        v95 = (*(v123 + 80) + 32) & ~*(v123 + 80);
        v96 = swift_allocObject();
        *(v96 + 16) = 0xD000000000000015;
        *(v96 + 24) = 0x80000001002A2140;
        sub_10007E4B8(v94, v96 + v95);
        v137 = sub_10007E528;
        v138 = v96;
        aBlock = _NSConcreteStackBlock;
        v134 = 1107296256;
        v135 = sub_100124498;
        v136 = &unk_10030ACE0;
        v97 = _Block_copy(&aBlock);

        [v92 activateWithCompletion:v97];
        _Block_release(v97);
        swift_unknownObjectRelease();
      }

      return;
    }

    if (a1 == 5)
    {

      sub_100149B18();
      return;
    }

    goto LABEL_17;
  }

  if (a1 == 2)
  {
    sub_100149B18();
    sub_100003118(0, &qword_100339320, OS_dispatch_queue_ptr);
    v60 = static OS_dispatch_queue.main.getter();
    v137 = sub_10014AD88;
    v138 = v3;
    aBlock = _NSConcreteStackBlock;
    v134 = 1107296256;
    v62 = &unk_10030AD08;
    goto LABEL_24;
  }

  if (a1 != 3)
  {
LABEL_17:
    sub_100149B18();
    if (qword_100338F18 != -1)
    {
      swift_once();
    }

    v53 = qword_10038B0B8;
    v54 = *(qword_10038B0B8 + 928);
    v55 = sub_1000031CC();

    if ((v55 & 1) == 0)
    {
      return;
    }

    v56 = 968;
    if (a1)
    {
      v56 = 984;
    }

    v57 = *(v53 + v56);
    sub_1000624D4();
    v59 = v58;

    sub_100003118(0, &qword_100339320, OS_dispatch_queue_ptr);
    v60 = static OS_dispatch_queue.main.getter();
    v61 = swift_allocObject();
    *(v61 + 16) = v3;
    *(v61 + 24) = v59;
    v137 = sub_10014AD90;
    v138 = v61;
    aBlock = _NSConcreteStackBlock;
    v134 = 1107296256;
    v62 = &unk_10030AD58;
LABEL_24:
    v135 = sub_100018AB8;
    v136 = v62;
    v63 = _Block_copy(&aBlock);

    v64 = v127;
    static DispatchQoS.unspecified.getter();
    aBlock = _swiftEmptyArrayStorage;
    sub_10014AC90(&qword_10033D8C0, &type metadata accessor for DispatchWorkItemFlags);
    sub_100035D04(&unk_100343710, &qword_100271800);
    sub_10000E244(&qword_10033D8D0, &unk_100343710, &qword_100271800);
    v65 = v128;
    v66 = v132;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v63);

    (*(isa + 8))(v65, v66);
    (*(v129 + 8))(v64, v130);
    return;
  }

  if (qword_100338F18 != -1)
  {
    swift_once();
  }

  v50 = *(qword_10038B0B8 + 200);
  sub_1000610B4(&aBlock);

  v51 = v134;
  if (v134 >> 60 == 15)
  {
    if (sub_1001482DC())
    {
      sub_1001F8B68();
LABEL_34:

      return;
    }

    v132 = Logger.logObject.getter();
    v100 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v132, v100))
    {
      v101 = swift_slowAlloc();
      *v101 = 0;
      _os_log_impl(&_mh_execute_header, v132, v100, "### No hapticPatternPlayer?", v101, 2u);
    }

    v102 = v132;
  }

  else
  {
    v52 = aBlock;
    sub_100003118(0, &qword_100347710, CHHapticPattern_ptr);
    v98 = sub_10024BC10();
    type metadata accessor for HapticPatternPlayer();
    swift_allocObject();
    v99 = v98;
    v103 = sub_1001F9170(0x6C41206D6F6F7256, 0xE900000000000074, v99);
    v104 = v3[9];
    v3[9] = v103;

    if (v103)
    {
      sub_1001F8B68();

      sub_10006DB04(v52, v51);
      goto LABEL_34;
    }

    sub_10006DB04(v52, v51);
  }
}

uint64_t sub_1001497EC(uint64_t a1, double a2)
{
  v3 = *(a1 + 16);
  swift_unownedRetainStrong();
  sub_10007E790(v3 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment_impactGeneratorHard, v7);

  v4 = v8;
  v5 = v9;
  sub_10000EBC0(v7, v8);
  (*(v5 + 8))(v4, v5, a2);
  return sub_10000903C(v7);
}

uint64_t sub_10014988C(uint64_t a1)
{
  v1 = *(a1 + 16);
  swift_unownedRetainStrong();
  sub_10007E790(v1 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment_notificationGenerator, v5);

  v2 = v6;
  v3 = v7;
  sub_10000EBC0(v5, v6);
  (*(v3 + 8))(0, v2, v3);
  return sub_10000903C(v5);
}

uint64_t sub_100149920(int *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = *(result + 16);
    swift_unownedRetainStrong();

    v4 = *(v3 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment_hapticPlayer);
    swift_unknownObjectRetain();

    *(v4 + OBJC_IVAR____TtC17proximitycontrold12HapticPlayer_progress) = v1;
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1001499C4(int *a1)
{
  v1 = *a1;
  _StringGuts.grow(_:)(52);
  v2._countAndFlagsBits = 0xD000000000000021;
  v2._object = 0x80000001002A2160;
  String.append(_:)(v2);
  v3._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v3);

  v4._object = 0x80000001002A2190;
  v4._countAndFlagsBits = 0xD000000000000011;
  String.append(_:)(v4);
  return 0;
}

uint64_t sub_100149A80()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = *(result + 16);
    swift_unownedRetainStrong();

    v2 = *(v1 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment_hapticPlayer);
    swift_unknownObjectRetain();

    [v2 invalidate];
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100149B18()
{
  v1 = v0;
  if (qword_1003390A8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_1003474F8);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_100017494(0x2928706F7473, 0xE600000000000000, &v12);
    _os_log_impl(&_mh_execute_header, v3, v4, "%s", v5, 0xCu);
    sub_10000903C(v6);
  }

  v7 = v1[2];
  swift_unownedRetainStrong();
  v8 = *(v7 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment_hapticPlayer);
  swift_unknownObjectRetain();

  [v8 invalidate];
  swift_unknownObjectRelease();
  v9 = v1[5];
  v1[5] = 0;

  v10 = v1[6];
  v1[6] = 0;
}

uint64_t sub_100149CBC()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v19 = *(v2 - 8);
  v3 = *(v19 + 64);
  __chkstk_darwin(v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchQoS();
  v6 = *(v18 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v18);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1003390A8 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_100003078(v10, qword_1003474F8);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    aBlock[0] = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_100017494(0x292870657270, 0xE600000000000000, aBlock);
    _os_log_impl(&_mh_execute_header, v11, v12, "%s", v13, 0xCu);
    sub_10000903C(v14);
  }

  sub_100003118(0, &qword_100339320, OS_dispatch_queue_ptr);
  v15 = static OS_dispatch_queue.main.getter();
  aBlock[4] = sub_10014AC88;
  aBlock[5] = v1;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100018AB8;
  aBlock[3] = &unk_10030AC68;
  v16 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10014AC90(&qword_10033D8C0, &type metadata accessor for DispatchWorkItemFlags);
  sub_100035D04(&unk_100343710, &qword_100271800);
  sub_10000E244(&qword_10033D8D0, &unk_100343710, &qword_100271800);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);

  (*(v19 + 8))(v5, v2);
  return (*(v6 + 8))(v9, v18);
}

uint64_t sub_10014A0A0(uint64_t a1)
{
  v2 = *(a1 + 16);
  swift_unownedRetainStrong();
  sub_10007E790(v2 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment_impactGeneratorSoft, v12);

  v3 = v13;
  v4 = v14;
  sub_10000EBC0(v12, v13);
  (*(v4 + 16))(v3, v4);
  sub_10000903C(v12);
  v5 = *(a1 + 16);
  swift_unownedRetainStrong();
  sub_10007E790(v5 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment_impactGeneratorHard, v12);

  v6 = v13;
  v7 = v14;
  sub_10000EBC0(v12, v13);
  (*(v7 + 16))(v6, v7);
  sub_10000903C(v12);
  v8 = *(a1 + 16);
  swift_unownedRetainStrong();
  sub_10007E790(v8 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment_notificationGenerator, v12);

  v9 = v13;
  v10 = v14;
  sub_10000EBC0(v12, v13);
  (*(v10 + 16))(v9, v10);
  return sub_10000903C(v12);
}

uint64_t sub_10014A568(uint64_t a1)
{
  result = sub_10014AC90(&qword_1003476A0, type metadata accessor for HapticPlayer);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10014A5C0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100035D04(&qword_10034C660, &qword_100278DD0);
  v30 = *(v4 - 8);
  v31 = v4;
  v5 = *(v30 + 64);
  __chkstk_darwin(v4);
  v7 = &v30 - v6;
  v8 = sub_100035D04(&qword_1003476A8, &qword_10027F130);
  v32 = *(v8 - 8);
  v33 = v8;
  v9 = *(v32 + 64);
  __chkstk_darwin(v8);
  v11 = &v30 - v10;
  v12 = sub_100035D04(&qword_1003476B0, &unk_10027F138);
  v35 = *(v12 - 8);
  v36 = v12;
  v13 = *(v35 + 64);
  __chkstk_darwin(v12);
  v34 = &v30 - v14;
  *(v1 + 24) = 3;
  if (qword_100338F18 != -1)
  {
    swift_once();
  }

  v15 = *(qword_10038B0B8 + 1368);
  sub_10005F4E4();
  v17 = v16;

  *(v2 + 56) = &_swiftEmptySetSingleton;
  *(v2 + 32) = v17;
  *(v2 + 40) = 0;
  *(v2 + 48) = 0;
  *(v2 + 64) = xmmword_100271890;
  if (qword_1003390A8 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  sub_100003078(v18, qword_1003474F8);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&_mh_execute_header, v19, v20, "Init", v21, 2u);
  }

  *(v2 + 16) = a1;
  v22 = *(a1 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment_hapticPlayer) + OBJC_IVAR____TtC17proximitycontrold12HapticPlayer_frequency;
  *v22 = *(v2 + 32);
  *(v22 + 8) = 0;
  swift_unownedRetain();
  v37 = sub_100140E18();
  swift_allocObject();
  swift_weakInit();

  sub_100035D04(&qword_10034C6B0, &qword_1002703C0);
  sub_10000E244(&qword_1003398E0, &qword_10034C6B0, &qword_1002703C0);
  Publisher<>.sink(receiveValue:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v37 = *(a1 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___sessionPublisher);
  type metadata accessor for HandoffSession();

  Publisher.compactMap<A>(_:)();

  sub_100035D04(&qword_1003476B8, &qword_10027F148);
  v23 = v31;
  Publishers.CompactMap.map<A>(_:)();
  (*(v30 + 8))(v7, v23);
  sub_10000E244(&qword_1003476C0, &qword_1003476A8, &qword_10027F130);
  sub_10000E244(&qword_1003476C8, &qword_1003476B8, &qword_10027F148);
  v24 = v33;
  v25 = v34;
  Publisher<>.switchToLatest()();
  (*(v32 + 8))(v11, v24);
  v26 = swift_allocObject();
  swift_weakInit();

  v27 = swift_allocObject();
  *(v27 + 16) = sub_10014AC50;
  *(v27 + 24) = v26;
  sub_10000E244(&qword_1003476D0, &qword_1003476B0, &unk_10027F138);
  v28 = v36;
  Publisher<>.sink(receiveValue:)();

  (*(v35 + 8))(v25, v28);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  return v2;
}

uint64_t sub_10014AC58(unsigned __int8 *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1, *(a1 + 1));
}

uint64_t sub_10014AC90(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_10014ACE0(float *a1@<X0>, float *a2@<X8>)
{
  v5 = *(type metadata accessor for Logger() - 8);
  v6 = (*(v5 + 80) + 64) & ~*(v5 + 80);
  *a2 = sub_1001BFFA4(*(v2 + 16), *a1, *(v2 + 24), *(v2 + 32), *(v2 + 40), *(v2 + 48), *(v2 + 56), v2 + v6, *(v2 + v6 + *(v5 + 64)));
}

uint64_t sub_10014AD9C(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

void sub_10014ADC8()
{
  sub_10014AE50();
  if (v0 <= 0x3F)
  {
    type metadata accessor for ExperienceEvent(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_10014AE50()
{
  if (!qword_100347798)
  {
    type metadata accessor for ExperienceEffect(255);
    type metadata accessor for ExperienceEvent(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_100347798);
    }
  }
}

uint64_t sub_10014AEC4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = sub_100035D04(&unk_10033D8B0, &qword_100275520);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v26 - v10;
  v12 = type metadata accessor for Logger();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    swift_errorRetain();
    v17 = static os_log_type_t.error.getter();
    v27 = 0;
    v28 = 0xE000000000000000;
    v18._countAndFlagsBits = 539173667;
    v18._object = 0xE400000000000000;
    String.append(_:)(v18);
    v19._countAndFlagsBits = a2;
    v19._object = a3;
    String.append(_:)(v19);
    v20._countAndFlagsBits = 8250;
    v20._object = 0xE200000000000000;
    String.append(_:)(v20);
    v26[1] = a1;
    sub_100035D04(&unk_100346020, &qword_100271A00);
    _print_unlocked<A, B>(_:_:)();

    a2 = v27;
    a3 = v28;
  }

  else
  {
    v17 = static os_log_type_t.info.getter();
  }

  sub_1000EF05C(a4, v11);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_10014B1D8(v11);
    NSLog(_:_:)();
  }

  else
  {
    (*(v13 + 32))(v16, v11, v12);
    v22 = Logger.logObject.getter();
    if (os_log_type_enabled(v22, v17))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v27 = v24;
      *v23 = 136315138;
      v25 = sub_100017494(a2, a3, &v27);

      *(v23 + 4) = v25;
      _os_log_impl(&_mh_execute_header, v22, v17, "%s", v23, 0xCu);
      sub_10000903C(v24);
    }

    else
    {
    }

    return (*(v13 + 8))(v16, v12);
  }
}

uint64_t sub_10014B1D8(uint64_t a1)
{
  v2 = sub_100035D04(&unk_10033D8B0, &qword_100275520);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10014B240(uint64_t a1, uint64_t a2, void *a3, void (*a4)(uint64_t, BOOL), uint64_t a5, uint64_t a6)
{
  v30 = a6;
  v31 = a2;
  v9 = sub_100035D04(&unk_10033D8B0, &qword_100275520);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v29 - v11;
  v13 = type metadata accessor for Logger();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = static os_log_type_t.info.getter();
  if (a1)
  {
    if (a3)
    {
      v33 = 0;
      v34 = 0xE000000000000000;
      swift_errorRetain();
      v19._countAndFlagsBits = 539173667;
      v19._object = 0xE400000000000000;
      String.append(_:)(v19);
      v20._countAndFlagsBits = v31;
      v20._object = a3;
      String.append(_:)(v20);
      v21._countAndFlagsBits = 8250;
      v21._object = 0xE200000000000000;
      String.append(_:)(v21);
      v32 = a1;
      sub_100035D04(&unk_100346020, &qword_100271A00);
      _print_unlocked<A, B>(_:_:)();
      a3 = v34;
      v31 = v33;
    }

    else
    {
      swift_errorRetain();
    }

    v22 = static os_log_type_t.error.getter();
  }

  else
  {
    v22 = v18;
  }

  a4(a1, a1 != 0);
  if (!a3)
  {
    return sub_100077140(a1, a1 != 0);
  }

  sub_1000EF05C(v30, v12);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_10014B1D8(v12);
    NSLog(_:_:)();

    return sub_100077140(a1, a1 != 0);
  }

  else
  {
    (*(v14 + 32))(v17, v12, v13);
    v24 = Logger.logObject.getter();
    if (os_log_type_enabled(v24, v22))
    {
      LODWORD(v30) = a1 != 0;
      v25 = v14;
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v33 = v27;
      *v26 = 136315138;
      v28 = sub_100017494(v31, a3, &v33);

      *(v26 + 4) = v28;
      _os_log_impl(&_mh_execute_header, v24, v22, "%s", v26, 0xCu);
      sub_10000903C(v27);

      sub_100077140(a1, v30);

      return (*(v25 + 8))(v17, v13);
    }

    else
    {
      sub_100077140(a1, a1 != 0);

      return (*(v14 + 8))(v17, v13);
    }
  }
}

double sub_10014B5E8()
{
  type metadata accessor for HandoffUsageOverTimeMonitor();
  v0 = swift_allocObject();
  if (qword_100338F18 != -1)
  {
    swift_once();
  }

  v1 = *(qword_10038B0B8 + 488);
  v2 = sub_10006045C();

  *(v0 + 16) = v2;
  result = 0.0;
  *(v0 + 24) = 0u;
  *(v0 + 40) = 0u;
  qword_10038B2C0 = v0;
  return result;
}

uint64_t sub_10014B688()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 24);
  }

  else
  {
    v2 = *(v0 + 16);
    type metadata accessor for FeatureUsageOverTime();
    v3 = v0;
    v1 = swift_allocObject();
    sub_10014BE2C(v2, sub_10014B734, 0, sub_10014B7A4, 0);
    v4 = *(v3 + 24);
    *(v3 + 24) = v1;
  }

  return v1;
}

uint64_t sub_10014B734()
{
  if (qword_100338F18 != -1)
  {
    swift_once();
  }

  v0 = *(qword_10038B0B8 + 496);
  v1 = sub_100061554();

  return v1;
}

void sub_10014B7A4()
{
  if (qword_100338F18 != -1)
  {
    swift_once();
  }

  v1 = *(qword_10038B0B8 + 496);

  sub_10025A734(v0);
}

uint64_t sub_10014B834()
{
  if (*(v0 + 32))
  {
    v1 = *(v0 + 32);
  }

  else
  {
    v2 = *(v0 + 16);
    type metadata accessor for FeatureUsageOverTime();
    v3 = v0;
    v1 = swift_allocObject();
    sub_10014BE2C(v2, sub_10014B8E0, 0, sub_10014B950, 0);
    v4 = *(v3 + 32);
    *(v3 + 32) = v1;
  }

  return v1;
}

uint64_t sub_10014B8E0()
{
  if (qword_100338F18 != -1)
  {
    swift_once();
  }

  v0 = *(qword_10038B0B8 + 512);
  v1 = sub_100061554();

  return v1;
}

void sub_10014B950()
{
  if (qword_100338F18 != -1)
  {
    swift_once();
  }

  v1 = *(qword_10038B0B8 + 512);

  sub_10025A734(v0);
}

uint64_t sub_10014B9E0()
{
  if (*(v0 + 40))
  {
    v1 = *(v0 + 40);
  }

  else
  {
    v2 = *(v0 + 16);
    type metadata accessor for FeatureUsageOverTime();
    v3 = v0;
    v1 = swift_allocObject();
    sub_10014BE2C(v2, sub_10014BA8C, 0, sub_10014BAFC, 0);
    v4 = *(v3 + 40);
    *(v3 + 40) = v1;
  }

  return v1;
}

uint64_t sub_10014BA8C()
{
  if (qword_100338F18 != -1)
  {
    swift_once();
  }

  v0 = *(qword_10038B0B8 + 504);
  v1 = sub_100061554();

  return v1;
}

void sub_10014BAFC()
{
  if (qword_100338F18 != -1)
  {
    swift_once();
  }

  v1 = *(qword_10038B0B8 + 504);

  sub_10025A734(v0);
}

uint64_t sub_10014BB8C()
{
  if (*(v0 + 48))
  {
    v1 = *(v0 + 48);
  }

  else
  {
    v2 = *(v0 + 16);
    type metadata accessor for FeatureUsageOverTime();
    v3 = v0;
    v1 = swift_allocObject();
    sub_10014BE2C(v2, sub_10014BC38, 0, sub_10014BCA8, 0);
    v4 = *(v3 + 48);
    *(v3 + 48) = v1;
  }

  return v1;
}

uint64_t sub_10014BC38()
{
  if (qword_100338F18 != -1)
  {
    swift_once();
  }

  v0 = *(qword_10038B0B8 + 520);
  v1 = sub_100061554();

  return v1;
}

void sub_10014BCA8()
{
  if (qword_100338F18 != -1)
  {
    swift_once();
  }

  v1 = *(qword_10038B0B8 + 520);

  sub_10025A734(v0);
}

uint64_t sub_10014BD38()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[6];

  return swift_deallocClassInstance();
}

uint64_t sub_10014BDAC()
{
  v0 = type metadata accessor for Logger();
  sub_100036838(v0, qword_1003477C8);
  sub_100003078(v0, qword_1003477C8);
  return Logger.init(subsystem:category:)();
}

void *sub_10014BE2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = [objc_allocWithZone(NSDateFormatter) init];
  v13 = String._bridgeToObjectiveC()();
  [v12 setDateFormat:v13];

  v6[7] = v12;
  if (qword_1003390B8 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_100003078(v14, qword_1003477C8);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "Init", v17, 2u);
  }

  v6[2] = a1;
  v6[3] = a2;
  v6[4] = a3;
  v6[5] = a4;
  v6[6] = a5;
  return v6;
}

uint64_t sub_10014BF9C()
{
  v1 = v0;
  if (qword_1003390B8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_1003477C8);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Deinit", v5, 2u);
  }

  v6 = *(v1 + 32);

  v7 = *(v1 + 48);

  return v1;
}

uint64_t sub_10014C094()
{
  sub_10014BF9C();

  return swift_deallocClassInstance();
}

uint64_t sub_10014C0EC()
{
  v1 = v0;
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v65 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v62 - v7;
  if (qword_1003390B8 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_100003078(v9, qword_1003477C8);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v69 = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_100017494(0x63634F6567617375, 0xEF29286465727275, &v69);
    _os_log_impl(&_mh_execute_header, v10, v11, "%s", v12, 0xCu);
    sub_10000903C(v13);
  }

  v14 = *(v1 + 32);
  v15 = (*(v1 + 24))();
  Date.init()();
  v67 = v1;
  v16 = *(v1 + 56);
  v17.super.isa = Date._bridgeToObjectiveC()().super.isa;
  v18 = [v16 stringFromDate:v17.super.isa];

  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  v22 = *(v3 + 8);
  v66 = v3 + 8;
  v64 = v22;
  v22(v8, v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v69 = v15;
  v25 = sub_100004B58(v19, v21);
  v26 = *(v15 + 16);
  v27 = (v24 & 1) == 0;
  v28 = v26 + v27;
  if (__OFADD__(v26, v27))
  {
    __break(1u);
    goto LABEL_14;
  }

  LOBYTE(v17.super.isa) = v24;
  if (*(v15 + 24) >= v28)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      v31 = v69;
      if (v24)
      {
        goto LABEL_12;
      }

LABEL_15:
      sub_10004E06C(v25, v19, v21, 0, v31);
LABEL_16:
      v32 = *(v31 + 56);
      v33 = *(v32 + 8 * v25);
      v34 = __OFADD__(v33, 1);
      v35 = v33 + 1;
      if (!v34)
      {
        *(v32 + 8 * v25) = v35;
        Date.init()();
        if (__OFSUB__(*(v67 + 16), 1))
        {
LABEL_38:
          __break(1u);
          goto LABEL_39;
        }

        static Date.- infix(_:_:)();
        v63 = v2;
        v64(v8, v2);
        isa = Date._bridgeToObjectiveC()().super.isa;
        v37 = [v16 stringFromDate:isa];

        v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v40 = v39;

        v41 = 1 << *(v31 + 32);
        v42 = -1;
        if (v41 < 64)
        {
          v42 = ~(-1 << v41);
        }

        v43 = v42 & *(v31 + 64);
        v44 = (v41 + 63) >> 6;

        v45 = 0;
        v68 = v31;
        while (v43)
        {
LABEL_26:
          v47 = __clz(__rbit64(v43));
          v43 &= v43 - 1;
          v48 = (*(v31 + 48) + ((v45 << 10) | (16 * v47)));
          v49 = *v48;
          v50 = v48[1];
          if (*v48 != v38 || v50 != v40)
          {
            v52 = *v48;
            v53 = v48[1];
            if (_stringCompareWithSmolCheck(_:_:expecting:)())
            {

              v54 = sub_100004B58(v49, v50);
              v56 = v55;

              if (v56)
              {
                v57 = v68;
                v58 = swift_isUniquelyReferenced_nonNull_native();
                v69 = v57;
                if (!v58)
                {
                  sub_100089D04();
                  v57 = v69;
                }

                v59 = *(*(v57 + 48) + 16 * v54 + 8);

                v68 = v57;
                sub_100005840(v54, v57);
              }
            }
          }
        }

        while (1)
        {
          v46 = v45 + 1;
          if (__OFADD__(v45, 1))
          {
            break;
          }

          if (v46 >= v44)
          {

            v60 = *(v67 + 48);
            (*(v67 + 40))(v68);

            return (v64)(v65, v63);
          }

          v43 = *(v31 + 64 + 8 * v46);
          ++v45;
          if (v43)
          {
            v45 = v46;
            goto LABEL_26;
          }
        }

        __break(1u);
      }

      __break(1u);
      goto LABEL_38;
    }

LABEL_14:
    sub_100089D04();
    v31 = v69;
    if (v17.super.isa)
    {
      goto LABEL_12;
    }

    goto LABEL_15;
  }

  sub_1000865E0(v28, isUniquelyReferenced_nonNull_native);
  v29 = sub_100004B58(v19, v21);
  if ((v17.super.isa & 1) == (v30 & 1))
  {
    v25 = v29;
    v31 = v69;
    if ((v17.super.isa & 1) == 0)
    {
      goto LABEL_15;
    }

LABEL_12:

    goto LABEL_16;
  }

LABEL_39:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

NSObject *sub_10014C668(int64_t a1)
{
  v3 = v2;
  v4 = v1;
  v61 = type metadata accessor for Date();
  v66 = *(v61 - 8);
  v6 = *(v66 + 64);
  v7 = __chkstk_darwin(v61);
  v65 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v57 - v9;
  if (qword_1003390B8 != -1)
  {
    goto LABEL_46;
  }

  while (2)
  {
    v11 = type metadata accessor for Logger();
    sub_100003078(v11, qword_1003477C8);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v67 = v15;
      *v14 = 136315394;
      *(v14 + 4) = sub_100017494(0xD000000000000016, 0x80000001002A2340, &v67);
      *(v14 + 12) = 2048;
      *(v14 + 14) = a1;
      _os_log_impl(&_mh_execute_header, v12, v13, "%s: days=%ld", v14, 0x16u);
      sub_10000903C(v15);
    }

    if (a1 < 1 || v4[2] < a1)
    {

      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 134218240;
        *(v18 + 4) = a1;
        *(v18 + 12) = 2048;
        *(v18 + 14) = v4[2];

        _os_log_impl(&_mh_execute_header, v16, v17, "### Interval not tracked: days=%ld, self.maxDaysToRemember=%ld", v18, 0x16u);
      }

      else
      {
      }

      sub_10014CD30();
      swift_allocError();
      swift_willThrow();
      return v16;
    }

    v57 = v3;
    v19 = v4[3];
    v20 = v4[4];
    v62 = v4;
    v58 = v19();
    v67 = _swiftEmptyArrayStorage;
    sub_1000CE060(0, a1, 0);
    v21 = 0;
    v22 = v67;
    v64 = (v66 + 8);
    v23 = v61;
    do
    {
      v24 = v65;
      Date.init()();
      static Date.- infix(_:_:)();
      v63 = *v64;
      v63(v24, v23);
      v67 = v22;
      v26 = v22[2];
      v25 = v22[3];
      if (v26 >= v25 >> 1)
      {
        sub_1000CE060(v25 > 1, v26 + 1, 1);
        v23 = v61;
        v22 = v67;
      }

      ++v21;
      v22[2] = v26 + 1;
      v27 = (*(v66 + 80) + 32) & ~*(v66 + 80);
      v3 = *(v66 + 72);
      (*(v66 + 32))(v22 + v27 + v3 * v26, v10, v23);
    }

    while (a1 != v21);
    v10 = v22[2];
    if (v10)
    {
      v67 = _swiftEmptyArrayStorage;
      sub_1000CDF40(0, v10, 0);
      v28 = v61;
      v29 = v67;
      v30 = *(v62 + 56);
      v31 = v22 + v27;
      v59 = *(v66 + 16);
      v60 = v30;
      v66 += 16;
      do
      {
        v32 = v65;
        v59(v65, v31, v28);
        isa = Date._bridgeToObjectiveC()().super.isa;
        v34 = [v60 stringFromDate:isa];

        v28 = v61;
        v62 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v36 = v35;

        v63(v32, v28);
        v67 = v29;
        a1 = v29[2];
        v37 = v29[3];
        if (a1 >= v37 >> 1)
        {
          sub_1000CDF40((v37 > 1), a1 + 1, 1);
          v28 = v61;
          v29 = v67;
        }

        v29[2] = a1 + 1;
        v38 = &v29[2 * a1];
        v38[4] = v62;
        v38[5] = v36;
        v31 = v3 + v31;
        --v10;
      }

      while (v10);

      v4 = v29;
    }

    else
    {

      v4 = _swiftEmptyArrayStorage;
    }

    v39 = v4[2];
    v40 = v58;
    if (!v39)
    {
      v42 = _swiftEmptyArrayStorage;
      goto LABEL_36;
    }

    v41 = 0;
    v3 = v4 + 5;
    a1 = (v39 - 1);
    v42 = _swiftEmptyArrayStorage;
    do
    {
      v43 = &v3[2 * v41];
      v10 = v41;
      while (1)
      {
        if (v10 >= v4[2])
        {
          __break(1u);
          goto LABEL_45;
        }

        if (*(v40 + 16))
        {
          break;
        }

LABEL_25:
        ++v10;
        v43 += 2;
        if (v39 == v10)
        {
          goto LABEL_36;
        }
      }

      v45 = *(v43 - 1);
      v44 = *v43;

      v46 = sub_100004B58(v45, v44);
      if ((v47 & 1) == 0)
      {

        goto LABEL_25;
      }

      v48 = *(*(v40 + 56) + 8 * v46);

      v49 = a1;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v42 = sub_1000AFBB8(0, *(v42 + 2) + 1, 1, v42);
      }

      v51 = *(v42 + 2);
      v50 = *(v42 + 3);
      if (v51 >= v50 >> 1)
      {
        v42 = sub_1000AFBB8((v50 > 1), v51 + 1, 1, v42);
      }

      v41 = v10 + 1;
      *(v42 + 2) = v51 + 1;
      *&v42[8 * v51 + 32] = v48;
      a1 = v49;
      v40 = v58;
    }

    while (v49 != v10);
LABEL_36:

    v52 = *(v42 + 2);
    if (v52)
    {
      v16 = 0;
      v53 = (v42 + 32);
      while (1)
      {
        v54 = *v53++;
        v55 = __OFADD__(v16, v54);
        v16 = (v16 + v54);
        if (v55)
        {
          break;
        }

        if (!--v52)
        {
          goto LABEL_42;
        }
      }

LABEL_45:
      __break(1u);
LABEL_46:
      swift_once();
      continue;
    }

    break;
  }

  v16 = 0;
LABEL_42:

  return v16;
}

unint64_t sub_10014CD30()
{
  result = qword_1003479D0;
  if (!qword_1003479D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003479D0);
  }

  return result;
}

uint64_t sub_10014CD94(void *a1, float a2, float a3)
{
  v7 = sub_100035D04(&qword_100347A50, &qword_10027F5B8);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v14 - v10;
  v12 = a1[4];
  sub_10000EBC0(a1, a1[3]);
  sub_10014E218();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v16 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v3)
  {
    *&v14[2] = a2;
    *&v14[3] = a3;
    v15 = 1;
    sub_100035D04(&qword_100347A40, &qword_10027F5B0);
    sub_10014E26C(&qword_100347A58);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v8 + 8))(v11, v7);
}

Swift::Int sub_10014CF64()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10014CFEC()
{
  *v0;
  String.hash(into:)();
}

Swift::Int sub_10014D060()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10014D0E4@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_100301540, *a1);

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

void sub_10014D144(uint64_t *a1@<X8>)
{
  v2 = 0x6F69746163756465;
  if (*v1)
  {
    v2 = 0x746C7561666564;
  }

  v3 = 0xE90000000000006ELL;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_10014D248(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x746C7561666564;
  }

  else
  {
    v4 = 0x6F69746163756465;
  }

  if (v3)
  {
    v5 = 0xE90000000000006ELL;
  }

  else
  {
    v5 = 0xE700000000000000;
  }

  if (*a2)
  {
    v6 = 0x746C7561666564;
  }

  else
  {
    v6 = 0x6F69746163756465;
  }

  if (*a2)
  {
    v7 = 0xE700000000000000;
  }

  else
  {
    v7 = 0xE90000000000006ELL;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

uint64_t sub_10014D2F4()
{
  if (*v0)
  {
    result = 0x65676E6172;
  }

  else
  {
    result = 25705;
  }

  *v0;
  return result;
}

uint64_t sub_10014D320@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x65676E6172 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

uint64_t sub_10014D3F0(uint64_t a1)
{
  v2 = sub_10014E218();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10014D42C(uint64_t a1)
{
  v2 = sub_10014E218();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_10014D468(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v6 = sub_10014DFE4(a1);
  if (!v2)
  {
    *a2 = v4;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
    *(a2 + 20) = v7;
  }
}

uint64_t sub_10014D498(void *a1)
{
  v2 = *v1;
  v3 = *(v1 + 1);
  return sub_10014CD94(a1, v1[4], v1[5]);
}

uint64_t sub_10014D4B8@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_10014D4C4(void *a1, uint64_t a2)
{
  v4 = sub_100035D04(&qword_1003479F0, &qword_10027F590);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v11 - v7;
  v9 = a1[4];
  sub_10000EBC0(a1, a1[3]);
  sub_10014DEAC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11[1] = a2;
  sub_100035D04(&qword_100347A00, &qword_10027F598);
  sub_10014E494(&qword_100347A08, sub_10014DF00);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_10014D674@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000011 && 0x80000001002A2360 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_10014D708(uint64_t a1)
{
  v2 = sub_10014DEAC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10014D744(uint64_t a1)
{
  v2 = sub_10014DEAC();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_10014D780@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_10014E2D8(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_10014D7C8()
{
  result = sub_10014D7E8();
  qword_10038B2C8 = result;
  return result;
}

unint64_t sub_10014D7E8()
{
  result = sub_10024E27C(_swiftEmptyArrayStorage);
  v1 = 0;
LABEL_3:
  v3 = *(&off_1003015B8 + v1 + 32);
  v62 = result;
  if (*(&off_1003015B8 + v1 + 32))
  {
    v61 = 0xE500000000000000;
    if (v3 == 1)
    {
      v4 = 0x656772616CLL;
    }

    else
    {
      v4 = 0x726568746FLL;
    }
  }

  else
  {
    v61 = 0xE700000000000000;
    v4 = 0x746C7561666564;
  }

  v60 = v4;
  v63 = v1 + 1;
  v5 = sub_10024E380(_swiftEmptyArrayStorage);
  v6 = 0;
  v7 = 0;
  while (1)
  {
    v11 = v6;
    if (*(&off_100301590 + v7 + 32))
    {
      if (v3)
      {
        if (v3 == 1)
        {
          if (qword_100338F18 != -1)
          {
            swift_once();
          }

          v12 = qword_10038B0B8;
          v13 = *(qword_10038B0B8 + 1632);
          sub_10005FA50();
          v15 = v14;

          v16 = *(v12 + 1704);
          sub_10005FA50();
          v18 = v17;

          if (v15 > v18)
          {
            goto LABEL_58;
          }
        }

        else
        {
          if (qword_100338F18 != -1)
          {
            swift_once();
          }

          v34 = qword_10038B0B8;
          v35 = *(qword_10038B0B8 + 1640);
          sub_10005FA50();
          v15 = v36;

          v37 = *(v34 + 1712);
          sub_10005FA50();
          v18 = v38;

          if (v15 > v18)
          {
            goto LABEL_56;
          }
        }
      }

      else
      {
        if (qword_100338F18 != -1)
        {
          swift_once();
        }

        v24 = qword_10038B0B8;
        v25 = *(qword_10038B0B8 + 1624);
        sub_10005FA50();
        v15 = v26;

        v27 = *(v24 + 1696);
        sub_10005FA50();
        v18 = v28;

        if (v15 > v18)
        {
          goto LABEL_53;
        }
      }

      v39 = 0xE700000000000000;
      v40 = 0x746C7561666564;
    }

    else
    {
      if (v3)
      {
        if (v3 == 1)
        {
          if (qword_100338F18 != -1)
          {
            swift_once();
          }

          v19 = qword_10038B0B8;
          v20 = *(qword_10038B0B8 + 1632);
          sub_10005FA50();
          v15 = v21;

          v22 = *(v19 + 1616);
          sub_10005FA50();
          v18 = v23;

          if (v15 > v18)
          {
            goto LABEL_55;
          }
        }

        else
        {
          if (qword_100338F18 != -1)
          {
            swift_once();
          }

          v41 = qword_10038B0B8;
          v42 = *(qword_10038B0B8 + 1640);
          sub_10005FA50();
          v15 = v43;

          v44 = *(v41 + 1616);
          sub_10005FA50();
          v18 = v45;

          if (v15 > v18)
          {
            goto LABEL_54;
          }
        }
      }

      else
      {
        if (qword_100338F18 != -1)
        {
          swift_once();
        }

        v29 = qword_10038B0B8;
        v30 = *(qword_10038B0B8 + 1624);
        sub_10005FA50();
        v15 = v31;

        v32 = *(v29 + 1616);
        sub_10005FA50();
        v18 = v33;

        if (v15 > v18)
        {
          goto LABEL_57;
        }
      }

      v40 = 0x6F69746163756465;
      v39 = 0xE90000000000006ELL;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v47 = sub_100004B58(v40, v39);
    v49 = v5[2];
    v50 = (v48 & 1) == 0;
    v51 = __OFADD__(v49, v50);
    v52 = v49 + v50;
    if (v51)
    {
      break;
    }

    v53 = v48;
    if (v5[3] < v52)
    {
      sub_100088250(v52, isUniquelyReferenced_nonNull_native);
      v47 = sub_100004B58(v40, v39);
      if ((v53 & 1) != (v54 & 1))
      {
        goto LABEL_59;
      }

LABEL_45:
      if ((v53 & 1) == 0)
      {
        goto LABEL_46;
      }

      goto LABEL_9;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_45;
    }

    v59 = v47;
    sub_10008AC54();
    v47 = v59;
    if ((v53 & 1) == 0)
    {
LABEL_46:
      v5[(v47 >> 6) + 8] |= 1 << v47;
      v55 = (v5[6] + 16 * v47);
      *v55 = v40;
      v55[1] = v39;
      v56 = v5[7] + 24 * v47;
      *v56 = v40;
      *(v56 + 8) = v39;
      *(v56 + 16) = v15;
      *(v56 + 20) = v18;
      v57 = v5[2];
      v51 = __OFADD__(v57, 1);
      v58 = v57 + 1;
      if (v51)
      {
        goto LABEL_52;
      }

      v5[2] = v58;
      goto LABEL_10;
    }

LABEL_9:
    v8 = v47;

    v9 = v5[7] + 24 * v8;
    v10 = *(v9 + 8);
    *v9 = v40;
    *(v9 + 8) = v39;
    *(v9 + 16) = v15;
    *(v9 + 20) = v18;

LABEL_10:
    v6 = 1;
    v7 = &_mh_execute_header.magic + 1;
    if (v11)
    {
      v2 = swift_isUniquelyReferenced_nonNull_native();
      sub_10004D794(v5, v60, v61, v2);

      v1 = v63;
      result = v62;
      if (v63 == 3)
      {
        return result;
      }

      goto LABEL_3;
    }
  }

  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_10014DD34(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10014DD7C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10014DDF0()
{
  result = qword_1003479D8;
  if (!qword_1003479D8)
  {
    sub_100035D4C(&qword_1003479E0, qword_10027F3B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003479D8);
  }

  return result;
}

unint64_t sub_10014DE58()
{
  result = qword_1003479E8;
  if (!qword_1003479E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003479E8);
  }

  return result;
}

unint64_t sub_10014DEAC()
{
  result = qword_1003479F8;
  if (!qword_1003479F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003479F8);
  }

  return result;
}

unint64_t sub_10014DF3C()
{
  result = qword_100347A20;
  if (!qword_100347A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100347A20);
  }

  return result;
}

unint64_t sub_10014DF90()
{
  result = qword_100347A28;
  if (!qword_100347A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100347A28);
  }

  return result;
}

float sub_10014DFE4(uint64_t *a1)
{
  v4 = sub_100035D04(&qword_100347A30, &qword_10027F5A8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v11[-v7];
  v9 = a1[4];
  sub_10000EBC0(a1, a1[3]);
  sub_10014E218();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v13 = 0;
    KeyedDecodingContainer.decode(_:forKey:)();
    sub_100035D04(&qword_100347A40, &qword_10027F5B0);
    v11[3] = 1;
    sub_10014E26C(&qword_100347A48);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v5 + 8))(v8, v4);
    v2 = v12;
  }

  sub_10000903C(a1);
  return v2;
}

unint64_t sub_10014E218()
{
  result = qword_100347A38;
  if (!qword_100347A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100347A38);
  }

  return result;
}

uint64_t sub_10014E26C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_100035D4C(&qword_100347A40, &qword_10027F5B0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *sub_10014E2D8(uint64_t *a1)
{
  v3 = sub_100035D04(&qword_100347A60, &qword_10027F5C0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v11 - v6;
  v8 = a1[4];
  v9 = sub_10000EBC0(a1, a1[3]);
  sub_10014DEAC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_10000903C(a1);
  }

  else
  {
    sub_100035D04(&qword_100347A00, &qword_10027F598);
    sub_10014E494(&qword_100347A68, sub_10014E518);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v7, v3);
    v9 = v11[1];
    sub_10000903C(a1);
  }

  return v9;
}

uint64_t sub_10014E494(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100035D4C(&qword_100347A00, &qword_10027F598);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10014E554(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100035D4C(&qword_100347A18, &qword_10027F5A0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10014E5D8()
{
  result = qword_100347A78;
  if (!qword_100347A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100347A78);
  }

  return result;
}

unint64_t sub_10014E650()
{
  result = qword_100347A80;
  if (!qword_100347A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100347A80);
  }

  return result;
}

unint64_t sub_10014E6A8()
{
  result = qword_100347A88;
  if (!qword_100347A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100347A88);
  }

  return result;
}

unint64_t sub_10014E700()
{
  result = qword_100347A90;
  if (!qword_100347A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100347A90);
  }

  return result;
}

unint64_t sub_10014E758()
{
  result = qword_100347A98;
  if (!qword_100347A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100347A98);
  }

  return result;
}

unint64_t sub_10014E7B0()
{
  result = qword_100347AA0;
  if (!qword_100347AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100347AA0);
  }

  return result;
}

unint64_t sub_10014E808()
{
  result = qword_100347AA8;
  if (!qword_100347AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100347AA8);
  }

  return result;
}

uint64_t sub_10014E85C()
{
  result = type metadata accessor for Logger();
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

uint64_t sub_10014E91C()
{
  v1 = qword_100347AC8;
  if (*(v0 + qword_100347AC8))
  {
    v2 = *(v0 + qword_100347AC8);
  }

  else
  {
    v3 = v0;
    v6 = *((swift_isaMask & *v0) + 0x50);
    v7 = *((swift_isaMask & *v0) + 0x60);
    v8 = *((swift_isaMask & *v0) + 0x70);
    type metadata accessor for XPCLink();
    type metadata accessor for PassthroughSubject();
    v2 = PassthroughSubject.__allocating_init()();
    v4 = *(v3 + v1);
    *(v3 + v1) = v2;
  }

  return v2;
}

id sub_10014E9FC()
{
  v1 = v0;
  v2 = (swift_isaMask & *v0);
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, v1 + qword_100347AC0, v3);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "Deinit", v10, 2u);
  }

  (*(v4 + 8))(v7, v3);
  v11 = v2[6];
  v14[0] = v2[5];
  v14[1] = v11;
  v14[2] = v2[7];
  v12 = type metadata accessor for XPCLinkServer();
  v15.receiver = v1;
  v15.super_class = v12;
  return objc_msgSendSuper2(&v15, "dealloc");
}

uint64_t sub_10014EBF0(uint64_t a1)
{
  v2 = *(a1 + qword_100347AB8 + 8);

  v3 = qword_100347AC0;
  v4 = type metadata accessor for Logger();
  (*(*(v4 - 8) + 8))(a1 + v3, v4);
  v5 = *(a1 + qword_100347AC8);

  v6 = *(a1 + qword_100347AD0);

  v7 = *(a1 + qword_100347AD8);
}

uint64_t sub_10014ECB0(void *a1, void *a2)
{
  v3 = v2;
  v5 = (swift_isaMask & *v3);
  v6 = a1;
  v7 = a2;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *&v31[0] = v12;
    *v10 = 136315650;
    *(v10 + 4) = sub_100017494(0xD000000000000026, 0x80000001002A02D0, v31);
    *(v10 + 12) = 2112;
    *(v10 + 14) = v6;
    *(v10 + 22) = 2112;
    *(v10 + 24) = v7;
    *v11 = v6;
    v11[1] = v7;
    v13 = v6;
    v14 = v7;
    _os_log_impl(&_mh_execute_header, v8, v9, "%s: listener=%@, newConnection=%@", v10, 0x20u);
    sub_100035D04(&qword_100339940, &unk_100272C50);
    swift_arrayDestroy();

    sub_10000903C(v12);
  }

  sub_100103CBC();
  v15 = *(v3 + qword_100347AB0);
  if (static NSObject.== infix(_:_:)())
  {
    if (sub_1000D0404(1u, v7))
    {
      sub_10014E91C();
      v16 = v5[6];
      v31[0] = v5[5];
      v31[1] = v16;
      v31[2] = v5[7];
      type metadata accessor for XPCLink();
      v17 = v3 + qword_100347AB8;
      v18 = *(v3 + qword_100347AB8);
      v19 = *(v17 + 1);
      v20 = v7;

      *&v31[0] = sub_1000A1C64(v7, v18, v19);
      PassthroughSubject.send(_:)();

      return 1;
    }

    v23 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v23, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *&v31[0] = v30;
      *v29 = 136315138;
      *(v29 + 4) = sub_100017494(0xD00000000000001ALL, 0x8000000100297290, v31);
      _os_log_impl(&_mh_execute_header, v23, v28, "### Missing entitlement '%s'", v29, 0xCu);
      sub_10000903C(v30);

      goto LABEL_10;
    }
  }

  else
  {
    v22 = v6;
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *v25 = 138412290;
      *(v25 + 4) = v22;
      *v26 = v22;
      v27 = v22;
      _os_log_impl(&_mh_execute_header, v23, v24, "### New connection from unrecognized listener %@", v25, 0xCu);
      sub_1000030B0(v26);

LABEL_10:
    }
  }

  return 0;
}

uint64_t sub_10014F0B4(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = a1;
  v9 = sub_10014ECB0(v6, v7);

  return v9 & 1;
}

id sub_10014F118(void *a1)
{
  v1 = a1;
  sub_10014F180();

  v2 = String._bridgeToObjectiveC()();

  return v2;
}

uint64_t sub_10014F180()
{
  ObjectType = swift_getObjectType();
  v2 = (swift_isaMask & *v0);
  v3 = v2[6];
  v8 = v2[5];
  v9 = v3;
  v10 = v2[7];
  *(&v9 + 1) = type metadata accessor for XPCLinkServer();
  *&v8 = v0;
  v4 = v0;
  WitnessTable = swift_getWitnessTable();
  v6 = sub_1000CCFC4(&v8, 2, ObjectType, WitnessTable);
  sub_10000903C(&v8);
  return v6;
}

void sub_10014F264(void *a1)
{
  v1 = *((swift_isaMask & *a1) + 0x50);
  v2 = *((swift_isaMask & *a1) + 0x58);
  v3 = *((swift_isaMask & *a1) + 0x60);
  v4 = *((swift_isaMask & *a1) + 0x68);
  v5 = *((swift_isaMask & *a1) + 0x70);
  v6 = *((swift_isaMask & *a1) + 0x78);
  sub_10014F348();
}

uint64_t sub_10014F30C(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

void sub_10014F3D4(uint64_t a1, char a2)
{
  if (swift_weakLoadStrong())
  {
    sub_100051F6C(*(v2 + 24), a2, a1);
  }

  else
  {
    oslog = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v5, "### Failed to fire xpc event: nil publisher", v6, 2u);
    }
  }
}

uint64_t sub_10014F4DC()
{
  v1 = *(v0 + 2);

  swift_weakDestroy();
  v2 = OBJC_IVAR____TtC17proximitycontrold13XPCSubscriber_log;
  v3 = type metadata accessor for Logger();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for XPCSubscriber()
{
  result = qword_100347B88;
  if (!qword_100347B88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10014F5DC()
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

uint64_t sub_10014F690()
{
  _StringGuts.grow(_:)(16);

  strcpy(v6, "XPCSubscriber-");
  HIBYTE(v6[1]) = -18;
  v5 = *(v0 + 24);
  v1._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v1);

  result = v6[0];
  if (*(v0 + 16))
  {
    v3._countAndFlagsBits = Dictionary.description.getter();
    String.append(_:)(v3);

    v4._countAndFlagsBits = 32;
    v4._object = 0xE100000000000000;
    String.append(_:)(v4);

    return v6[0];
  }

  return result;
}

uint64_t sub_10014F7C8(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_weakInit();
  *(v2 + 16) = a2;
  swift_weakAssign();
  *(v2 + 24) = a1;
  v13[0] = 0;
  v13[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(16);

  strcpy(v13, "XPCSubscriber-");
  HIBYTE(v13[1]) = -18;
  v12[1] = a1;
  v10._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v10);

  Logger.init(subsystem:category:)();
  (*(v6 + 32))(v2 + OBJC_IVAR____TtC17proximitycontrold13XPCSubscriber_log, v9, v5);
  return v2;
}

uint64_t sub_10014F968(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10014F9B0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10014FA0C(void *a1)
{
  v3 = v1;
  v5 = sub_100035D04(&qword_100347C68, &qword_10027FBD0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v19[-v8];
  v10 = a1[4];
  sub_10000EBC0(a1, a1[3]);
  sub_100150608();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v19[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v12 = v3[1];
  v13 = v3[2];
  v19[14] = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  v14 = v3[3];
  v15 = v3[4];
  v19[13] = 2;
  KeyedEncodingContainer.encode(_:forKey:)();
  v17 = v3[5];
  v18 = v3[6];
  v19[12] = 3;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_10014FBCC()
{
  v1 = 0x646F43726F727265;
  v2 = 0xD000000000000014;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000016;
  }

  if (*v0)
  {
    v1 = 0x6D6F44726F727265;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_10014FC58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1001501E8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10014FC80(uint64_t a1)
{
  v2 = sub_100150608();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10014FCBC(uint64_t a1)
{
  v2 = sub_100150608();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_10014FCF8@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_100150364(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    result = *&v7;
    *(a2 + 32) = v7;
    *(a2 + 48) = v8;
  }

  return result;
}

uint64_t sub_10014FD70(uint64_t a1)
{
  v2 = sub_10015065C();

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_10014FDAC(uint64_t a1)
{
  v2 = sub_10015065C();

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_10014FDE8(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = a1[3];
  v4 = a1[4];
  v3 = a1[5];
  v5 = a1[6];
  v6 = a2[3];
  v7 = a2[4];
  v9 = a2[5];
  v8 = a2[6];
  if (a1[1] == a2[1] && a1[2] == a2[2] || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (v2 == v6 && v4 == v7 || (_stringCompareWithSmolCheck(_:_:expecting:)()))
  {
    if (v5)
    {
      if (v8 && (v3 == v9 && v5 == v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
      {
        return 1;
      }
    }

    else if (!v8)
    {
      return 1;
    }
  }

  return 0;
}

void sub_10014FEEC(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  *&v27[0] = a1;
  swift_errorRetain();
  sub_100035D04(&unk_100346020, &qword_100271A00);
  if (swift_dynamicCast())
  {

    v4 = v30[0];
    v5 = v30[1];
    v6 = v30[2];
    v7 = v31;
    v8 = v32;
    v9 = v33;
    v10 = v34;
  }

  else
  {
    v29 = a1;
    swift_errorRetain();
    sub_100035D04(&qword_100347C48, &qword_10027FBB8);
    if (swift_dynamicCast())
    {
      sub_10000E754(v27, v30);
      v11 = _convertErrorToNSError(_:)();
      v26 = [v11 code];
      v12 = [v11 domain];
      v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v6 = v13;

      v14 = v32;
      sub_10000EBC0(v30, v31);
      v15 = *(v14 + 8);
      v7 = Error.localizedDescription.getter();
      v8 = v16;
      sub_10000EBC0(v30, v31);
      v9 = dispatch thunk of LocalizedError.failureReason.getter();
      v10 = v17;

      sub_10000903C(v30);
    }

    else
    {
      v28 = 0;
      memset(v27, 0, sizeof(v27));
      sub_100150180(v27);
      v18 = _convertErrorToNSError(_:)();
      v26 = [v18 code];
      v19 = [v18 domain];
      v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v6 = v20;

      v21 = [v18 localizedDescription];
      v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = v22;

      v23 = [v18 localizedFailureReason];
      if (v23)
      {
        v24 = v23;
        v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v10 = v25;
      }

      else
      {

        v10 = 0;
        v9 = 0;
      }
    }

    v4 = v26;
  }

  *a2 = v4;
  a2[1] = v5;
  a2[2] = v6;
  a2[3] = v7;
  a2[4] = v8;
  a2[5] = v9;
  a2[6] = v10;
}

uint64_t sub_100150180(uint64_t a1)
{
  v2 = sub_100035D04(&qword_100347C50, &qword_10027FBC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1001501E8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x646F43726F727265 && a2 == 0xE900000000000065;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D6F44726F727265 && a2 == 0xEB000000006E6961 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001002A2490 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001002A24B0 == a2)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_100150364@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_100035D04(&qword_100347C58, &qword_10027FBC8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v25 - v8;
  v10 = a1[4];
  sub_10000EBC0(a1, a1[3]);
  sub_100150608();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000903C(a1);
  }

  v32 = 0;
  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  v31 = 1;
  v12 = KeyedDecodingContainer.decode(_:forKey:)();
  v14 = v13;
  v28 = v12;
  v30 = 2;
  v26 = KeyedDecodingContainer.decode(_:forKey:)();
  v27 = v15;
  v29 = 3;
  v16 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v18 = v17;
  v19 = *(v6 + 8);
  v25 = v16;
  v19(v9, v5);

  v20 = v27;

  sub_10000903C(a1);

  v22 = v28;
  *a2 = v11;
  a2[1] = v22;
  v23 = v25;
  v24 = v26;
  a2[2] = v14;
  a2[3] = v24;
  a2[4] = v20;
  a2[5] = v23;
  a2[6] = v18;
  return result;
}

unint64_t sub_100150608()
{
  result = qword_100347C60;
  if (!qword_100347C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100347C60);
  }

  return result;
}

unint64_t sub_10015065C()
{
  result = qword_100347C70;
  if (!qword_100347C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100347C70);
  }

  return result;
}

unint64_t sub_1001506C4()
{
  result = qword_100347C78;
  if (!qword_100347C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100347C78);
  }

  return result;
}

unint64_t sub_10015071C()
{
  result = qword_100347C80;
  if (!qword_100347C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100347C80);
  }

  return result;
}

unint64_t sub_100150774()
{
  result = qword_100347C88;
  if (!qword_100347C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100347C88);
  }

  return result;
}

uint64_t sub_1001507CC(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1001507F0(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  if ((v4 + 1) >= 2)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10015084C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void *sub_1001508A8(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    v2 = a2 - 0x7FFFFFFF;
    result[1] = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2;
  }

  *result = v2;
  return result;
}

uint64_t sub_1001508E4(void *a1, uint64_t a2, uint64_t a3)
{
  v28 = a2;
  v24 = a3;
  v4 = sub_100035D04(&qword_100347CD0, &qword_10027FE00);
  v26 = *(v4 - 8);
  v27 = v4;
  v5 = *(v26 + 64);
  __chkstk_darwin(v4);
  v25 = &v23 - v6;
  v7 = sub_100035D04(&qword_100347CD8, &qword_10027FE08);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v23 - v10;
  v12 = sub_100035D04(&qword_100347CE0, &qword_10027FE10);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v23 - v15;
  v17 = a1[4];
  sub_10000EBC0(a1, a1[3]);
  sub_100151748();
  v18 = v28;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (v18 == 1)
  {
    LOBYTE(v31) = 0;
    sub_100151844();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v8 + 8))(v11, v7);
    return (*(v13 + 8))(v16, v12);
  }

  else
  {
    LOBYTE(v31) = 1;
    sub_10015179C();
    v20 = v25;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v31 = v18;
    v30 = 0;
    sub_100151898();
    v21 = v27;
    v22 = v29;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    if (!v22)
    {
      v31 = v24;
      v30 = 1;
      type metadata accessor for PCInteractionDirection(0);
      sub_1001518EC(&qword_100347CF0);
      KeyedEncodingContainer.encode<A>(_:forKey:)();
    }

    (*(v26 + 8))(v20, v21);
    return (*(v13 + 8))(v16, v12);
  }
}

uint64_t sub_100150C9C()
{
  if (*v0)
  {
    result = 0x726566736E617274;
  }

  else
  {
    result = 0x736E617254746F6ELL;
  }

  *v0;
  return result;
}

uint64_t sub_100150CEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x736E617254746F6ELL && a2 == 0xEF676E6972726566;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x726566736E617274 && a2 == 0xEC000000676E6972)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

uint64_t sub_100150DD4(uint64_t a1)
{
  v2 = sub_100151748();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100150E10(uint64_t a1)
{
  v2 = sub_100151748();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100150E4C(uint64_t a1)
{
  v2 = sub_100151844();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100150E88(uint64_t a1)
{
  v2 = sub_100151844();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100150EC4()
{
  if (*v0)
  {
    result = 0x6F69746365726964;
  }

  else
  {
    result = 12383;
  }

  *v0;
  return result;
}

uint64_t sub_100150EF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6F69746365726964 && a2 == 0xE90000000000006ELL)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

uint64_t sub_100150FD4(uint64_t a1)
{
  v2 = sub_10015179C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100151010(uint64_t a1)
{
  v2 = sub_10015179C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10015104C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_10015117C(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

BOOL sub_1001510A8(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  if (a1 == 1)
  {
    return a3 == 1;
  }

  if (a3 == 1)
  {
    return 0;
  }

  if (a1)
  {
    if (!a3)
    {
      return 0;
    }

    v6 = a4;
    v7 = a2;
    sub_100151930();
    sub_100056F7C(a3);
    sub_100056F7C(a1);
    v9 = static NSObject.== infix(_:_:)();
    sub_10001DAC4(a3);
    sub_10001DAC4(a1);
    a2 = v7;
    a4 = v6;
    if ((v9 & 1) == 0)
    {
      return 0;
    }
  }

  else if (a3)
  {
    return 0;
  }

  return a2 == a4;
}

uint64_t sub_10015117C(uint64_t *a1)
{
  v2 = sub_100035D04(&qword_100347C90, &qword_10027FDE0);
  v3 = *(v2 - 8);
  v31 = v2;
  v32 = v3;
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v30 - v5;
  v7 = sub_100035D04(&qword_100347C98, &qword_10027FDE8);
  v33 = *(v7 - 8);
  v8 = *(v33 + 8);
  __chkstk_darwin(v7);
  v10 = &v30 - v9;
  v11 = sub_100035D04(&qword_100347CA0, &unk_10027FDF0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v30 - v14;
  v16 = a1[3];
  v17 = a1[4];
  v35 = a1;
  sub_10000EBC0(a1, v16);
  sub_100151748();
  v18 = v34;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v18)
  {
    v19 = v33;
    v34 = v12;
    v20 = KeyedDecodingContainer.allKeys.getter();
    v21 = (2 * *(v20 + 16)) | 1;
    v38 = v20;
    v39 = v20 + 32;
    v40 = 0;
    v41 = v21;
    v22 = sub_10021800C();
    if (v22 == 2 || v40 != v41 >> 1)
    {
      v24 = type metadata accessor for DecodingError();
      swift_allocError();
      v26 = v25;
      v10 = *(sub_100035D04(&qword_10033EA78, &qword_100275A60) + 48);
      *v26 = &type metadata for MediaTransferStatus;
      KeyedDecodingContainer.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v24 - 8) + 104))(v26, enum case for DecodingError.typeMismatch(_:), v24);
      swift_willThrow();
      (*(v34 + 8))(v15, v11);
      swift_unknownObjectRelease();
    }

    else if (v22)
    {
      LOBYTE(v42) = 1;
      sub_10015179C();
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v23 = v34;
      v33 = v15;
      LOBYTE(v37) = 0;
      sub_1001517F0();
      v29 = v31;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v10 = v42;
      type metadata accessor for PCInteractionDirection(0);
      v36 = 1;
      sub_1001518EC(&qword_100347CC0);
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      (*(v32 + 8))(v6, v29);
      (*(v23 + 8))(v33, v11);
      swift_unknownObjectRelease();
    }

    else
    {
      LOBYTE(v42) = 0;
      sub_100151844();
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v28 = v34;
      (*(v19 + 1))(v10, v7);
      (*(v28 + 8))(v15, v11);
      swift_unknownObjectRelease();
      v10 = 1;
    }
  }

  sub_10000903C(v35);
  return v10;
}

unint64_t sub_100151748()
{
  result = qword_100347CA8;
  if (!qword_100347CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100347CA8);
  }

  return result;
}

unint64_t sub_10015179C()
{
  result = qword_100347CB0;
  if (!qword_100347CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100347CB0);
  }

  return result;
}

unint64_t sub_1001517F0()
{
  result = qword_100347CB8;
  if (!qword_100347CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100347CB8);
  }

  return result;
}

unint64_t sub_100151844()
{
  result = qword_100347CC8;
  if (!qword_100347CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100347CC8);
  }

  return result;
}

unint64_t sub_100151898()
{
  result = qword_100347CE8;
  if (!qword_100347CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100347CE8);
  }

  return result;
}

uint64_t sub_1001518EC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PCInteractionDirection(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100151930()
{
  result = qword_10033E390;
  if (!qword_10033E390)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10033E390);
  }

  return result;
}

unint64_t sub_1001519B0()
{
  result = qword_100347CF8;
  if (!qword_100347CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100347CF8);
  }

  return result;
}

unint64_t sub_100151A08()
{
  result = qword_100347D00;
  if (!qword_100347D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100347D00);
  }

  return result;
}

unint64_t sub_100151A60()
{
  result = qword_100347D08;
  if (!qword_100347D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100347D08);
  }

  return result;
}

unint64_t sub_100151AB8()
{
  result = qword_100347D10;
  if (!qword_100347D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100347D10);
  }

  return result;
}

unint64_t sub_100151B10()
{
  result = qword_100347D18;
  if (!qword_100347D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100347D18);
  }

  return result;
}

unint64_t sub_100151B68()
{
  result = qword_100347D20;
  if (!qword_100347D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100347D20);
  }

  return result;
}

unint64_t sub_100151BC0()
{
  result = qword_100347D28;
  if (!qword_100347D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100347D28);
  }

  return result;
}

unint64_t sub_100151C18()
{
  result = qword_100347D30;
  if (!qword_100347D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100347D30);
  }

  return result;
}

uint64_t sub_100151C6C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a3;
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  if (a2)
  {
    v8 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    if (!v5)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = 0;
  if (a3)
  {
LABEL_3:
    v5 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

LABEL_4:

  v9 = a4;
  v7(v8, v5, a4);
}

uint64_t sub_100151D50()
{
  v0 = type metadata accessor for Logger();
  sub_100036838(v0, qword_100347D38);
  sub_100003078(v0, qword_100347D38);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100151DD0()
{
  v1 = v0;
  if (qword_1003390C8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_100347D38);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Deinit", v5, 2u);
  }

  v6 = *(v1 + 16);

  v7 = *(v1 + 24);
  swift_unownedRelease();
  sub_100159F24(*(v1 + 32), *(v1 + 40), *(v1 + 48));
  return v1;
}

uint64_t sub_100151ECC()
{
  sub_100151DD0();

  return swift_deallocClassInstance();
}

void sub_100151F24(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Date();
  v145 = *(v4 - 8);
  v146 = v4;
  v5 = *(v145 + 64);
  __chkstk_darwin(v4);
  v144 = &v138 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for UUID();
  v157 = *(v7 - 8);
  v8 = v157[8];
  __chkstk_darwin(v7);
  v143 = &v138 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v149 = type metadata accessor for HandoffRemotePeerInterface.Request.LeaderSessionOutput(0);
  v10 = *(*(v149 - 8) + 64);
  v11 = __chkstk_darwin(v149);
  v142 = &v138 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v150 = &v138 - v14;
  __chkstk_darwin(v13);
  v16 = (&v138 - v15);
  v153 = type metadata accessor for HandoffRemotePeerInterface.Request.LeaderSessionEnded(0);
  v17 = *(*(v153 - 8) + 64);
  v18 = __chkstk_darwin(v153);
  v148 = &v138 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  *&v154 = &v138 - v21;
  __chkstk_darwin(v20);
  v156 = (&v138 - v22);
  v151 = type metadata accessor for HandoffRemotePeerInterface.Request.LeaderSessionStarted(0);
  v23 = *(*(v151 - 8) + 64);
  v24 = __chkstk_darwin(v151);
  v147 = &v138 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v152 = &v138 - v27;
  __chkstk_darwin(v26);
  v155 = (&v138 - v28);
  v29 = type metadata accessor for RemoteFollowerMessage();
  v30 = *(*(v29 - 8) + 64);
  v31 = __chkstk_darwin(v29);
  v33 = &v138 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v35 = &v138 - v34;
  if (qword_1003390C8 != -1)
  {
    goto LABEL_48;
  }

  while (1)
  {
    v36 = type metadata accessor for Logger();
    v37 = sub_100003078(v36, qword_100347D38);
    sub_10015A074(a1, v35, type metadata accessor for RemoteFollowerMessage);

    v158 = v37;
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.default.getter();

    v40 = os_log_type_enabled(v38, v39);
    v159 = v2;
    if (v40)
    {
      v41 = swift_slowAlloc();
      v140 = v39;
      v42 = v41;
      v138 = swift_slowAlloc();
      v163[0] = v138;
      *v42 = 136315650;
      *(v42 + 4) = sub_100017494(0x293A5F28646E6573, 0xE800000000000000, v163);
      *(v42 + 12) = 2080;
      sub_10015A074(v35, v33, type metadata accessor for RemoteFollowerMessage);
      v43 = String.init<A>(describing:)();
      v139 = v38;
      v44 = v43;
      v46 = v45;
      sub_100159F38(v35, type metadata accessor for RemoteFollowerMessage);
      v47 = sub_100017494(v44, v46, v163);

      *(v42 + 14) = v47;
      *(v42 + 22) = 2080;
      v48 = *(v159 + 24);
      swift_unownedRetainStrong();
      v160 = 60;
      v161 = 0xE100000000000000;
      UUID.uuidString.getter();
      sub_10000B584(8);
      v141 = a1;

      v49 = static String._fromSubstring(_:)();
      v51 = v50;

      v52._countAndFlagsBits = v49;
      v52._object = v51;
      String.append(_:)(v52);

      v53._countAndFlagsBits = 32;
      v53._object = 0xE100000000000000;
      String.append(_:)(v53);
      v54 = *(v48 + 24);
      v55._countAndFlagsBits = sub_1000092A0();
      String.append(_:)(v55);

      v56._countAndFlagsBits = 62;
      v56._object = 0xE100000000000000;
      String.append(_:)(v56);

      v57 = sub_100017494(v160, v161, v163);

      *(v42 + 24) = v57;
      a1 = v141;
      v58 = v139;
      _os_log_impl(&_mh_execute_header, v139, v140, "%s: message=%s, session=%s", v42, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      sub_100159F38(v35, type metadata accessor for RemoteFollowerMessage);
    }

    v33 = a1;
    v59 = a1 + *(v29 + 20);
    a1 = *v59;
    v60 = *(v59 + 8);
    if (!v60)
    {
      v16 = v155;
      (v157[2])(v155, v33, v7);
      v77 = v159;
      v78 = *(v159 + 24);
      swift_unownedRetainStrong();
      v79 = UUID.uuidString.getter();
      v81 = v80;

      v82 = v151;
      v83 = v16 + *(v151 + 24);
      Date.init()();
      if (qword_1003390C0 != -1)
      {
        swift_once();
      }

      v84 = qword_10038B2C8;
      v85 = (v16 + v82[5]);
      *v85 = v79;
      v85[1] = v81;
      *(v16 + v82[7]) = a1;
      *(v16 + v82[8]) = v84;
      v86 = v152;
      sub_10015A074(v16, v152, type metadata accessor for HandoffRemotePeerInterface.Request.LeaderSessionStarted);

      v87 = Logger.logObject.getter();
      v88 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v87, v88))
      {
        v89 = swift_slowAlloc();
        v90 = swift_slowAlloc();
        v160 = v90;
        *v89 = 136315138;
        sub_10015A074(v86, v147, type metadata accessor for HandoffRemotePeerInterface.Request.LeaderSessionStarted);
        v91 = String.init<A>(describing:)();
        v93 = v92;
        sub_100159F38(v86, type metadata accessor for HandoffRemotePeerInterface.Request.LeaderSessionStarted);
        v94 = sub_100017494(v91, v93, &v160);

        *(v89 + 4) = v94;
        _os_log_impl(&_mh_execute_header, v87, v88, "Sending request: %s", v89, 0xCu);
        sub_10000903C(v90);
      }

      else
      {

        sub_100159F38(v86, type metadata accessor for HandoffRemotePeerInterface.Request.LeaderSessionStarted);
      }

      sub_10015515C(v16, sub_100153038, 0, v77);
      v109 = type metadata accessor for HandoffRemotePeerInterface.Request.LeaderSessionStarted;
      goto LABEL_42;
    }

    v61 = v159;
    if (v60 != 1)
    {
      v16 = v156;
      (v157[2])(v156, v33, v7);
      v95 = *(v61 + 24);
      swift_unownedRetainStrong();
      v96 = UUID.uuidString.getter();
      v98 = v97;

      v99 = v154;
      v100 = (v16 + *(v153 + 20));
      *v100 = v96;
      v100[1] = v98;
      sub_10015A074(v16, v99, type metadata accessor for HandoffRemotePeerInterface.Request.LeaderSessionEnded);
      v101 = Logger.logObject.getter();
      v102 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v101, v102))
      {
        v103 = swift_slowAlloc();
        v104 = swift_slowAlloc();
        v160 = v104;
        *v103 = 136315138;
        sub_10015A074(v99, v148, type metadata accessor for HandoffRemotePeerInterface.Request.LeaderSessionEnded);
        v105 = String.init<A>(describing:)();
        v107 = v106;
        sub_100159F38(v99, type metadata accessor for HandoffRemotePeerInterface.Request.LeaderSessionEnded);
        v108 = sub_100017494(v105, v107, &v160);

        *(v103 + 4) = v108;
        _os_log_impl(&_mh_execute_header, v101, v102, "Sending request: %s", v103, 0xCu);
        sub_10000903C(v104);
      }

      else
      {

        sub_100159F38(v99, type metadata accessor for HandoffRemotePeerInterface.Request.LeaderSessionEnded);
      }

      sub_10015554C(v16, sub_100153044, 0, v61);
      v109 = type metadata accessor for HandoffRemotePeerInterface.Request.LeaderSessionEnded;
LABEL_42:
      sub_100159F38(v16, v109);
      return;
    }

    v62 = *(v159 + 24);
    swift_unownedRetainStrong();
    v63 = sub_100091318();

    if (!v63)
    {
      break;
    }

    if (v63 != 1)
    {
      v114 = v157;
      v115 = v143;
      v116 = v7;
      (v157[2])(v143, v33, v7);
      swift_unownedRetainStrong();
      v117 = UUID.uuidString.getter();
      v119 = v118;

      v120 = v144;
      Date.init()();
      v121 = a1 & 0xFF00;
      v122 = 0x746C7561666564;
      if ((a1 & 0x100) == 0)
      {
        v122 = 0x6F69746163756465;
      }

      v123 = 0xE700000000000000;
      if ((a1 & 0x100) == 0)
      {
        v123 = 0xE90000000000006ELL;
      }

      if (v121 == 512)
      {
        v124 = 0;
      }

      else
      {
        v124 = v122;
      }

      if (v121 == 512)
      {
        v125 = 0;
      }

      else
      {
        v125 = v123;
      }

      (v114[4])(v16, v115, v116);
      v126 = v149;
      v127 = (v16 + *(v149 + 20));
      *v127 = v117;
      v127[1] = v119;
      (*(v145 + 32))(v16 + v126[6], v120, v146);
      *(v16 + v126[7]) = a1;
      v128 = (v16 + v126[8]);
      *v128 = v124;
      v128[1] = v125;
      sub_10015A074(v16, v150, type metadata accessor for HandoffRemotePeerInterface.Request.LeaderSessionOutput);
      v129 = Logger.logObject.getter();
      v130 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v129, v130))
      {
        v131 = swift_slowAlloc();
        v132 = swift_slowAlloc();
        v160 = v132;
        *v131 = 136315138;
        v133 = v150;
        sub_10015A074(v150, v142, type metadata accessor for HandoffRemotePeerInterface.Request.LeaderSessionOutput);
        v134 = String.init<A>(describing:)();
        v136 = v135;
        sub_100159F38(v133, type metadata accessor for HandoffRemotePeerInterface.Request.LeaderSessionOutput);
        v137 = sub_100017494(v134, v136, &v160);

        *(v131 + 4) = v137;
        _os_log_impl(&_mh_execute_header, v129, v130, "Sending event: %s", v131, 0xCu);
        sub_10000903C(v132);
      }

      else
      {

        sub_100159F38(v150, type metadata accessor for HandoffRemotePeerInterface.Request.LeaderSessionOutput);
      }

      sub_10015593C(v16, sub_10015321C, 0, v159);
      v109 = type metadata accessor for HandoffRemotePeerInterface.Request.LeaderSessionOutput;
      goto LABEL_42;
    }

    v64 = *(v61 + 32);
    v65 = *(v61 + 40);
    v29 = *(v61 + 48);
    sub_100159EF8(v64, v65, *(v61 + 48));
    v66 = sub_100159B88(a1, v64, v65, v29);
    sub_100159F24(v64, v65, v29);
    v68 = v66;
    v157 = v66[2];
    if (!v157)
    {

      v110 = Logger.logObject.getter();
      v111 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v110, v111))
      {
        v112 = swift_slowAlloc();
        *v112 = 0;
        v113 = "### No Handoff2UIEvents for output";
LABEL_45:
        _os_log_impl(&_mh_execute_header, v110, v111, v113, v112, 2u);
      }

      goto LABEL_46;
    }

    v2 = 0;
    v35 = (v68 + 6);
    *&v67 = 136315138;
    v154 = v67;
    v156 = v68;
    while (v2 < v68[2])
    {
      v33 = *(v35 - 2);
      v16 = *(v35 - 1);
      v71 = *v35;
      sub_100159F0C(v33, v16, *v35);
      sub_100159F0C(v33, v16, v71);
      sub_100159F0C(v33, v16, v71);
      v72 = Logger.logObject.getter();
      v7 = static os_log_type_t.default.getter();
      sub_10000F024(v33, v16, v71);
      if (os_log_type_enabled(v72, v7))
      {
        v73 = swift_slowAlloc();
        v155 = swift_slowAlloc();
        v163[0] = v155;
        *v73 = v154;
        v160 = v33;
        v161 = v16;
        v162 = v71;
        sub_100159F0C(v33, v16, v71);
        v74 = String.init<A>(describing:)();
        v76 = sub_100017494(v74, v75, v163);

        *(v73 + 4) = v76;
        _os_log_impl(&_mh_execute_header, v72, v7, "Sending bannerMessage: %s", v73, 0xCu);
        sub_10000903C(v155);
      }

      ++v2;
      v29 = v159;
      sub_100155D2C(v33, v16, v71, sub_100153210, 0, v159);
      sub_10000F024(v33, v16, v71);
      v69 = *(v29 + 32);
      a1 = *(v29 + 40);
      *(v29 + 32) = v33;
      *(v29 + 40) = v16;
      v70 = *(v29 + 48);
      *(v29 + 48) = v71;
      sub_100159F0C(v33, v16, v71);
      sub_100159F24(v69, a1, v70);
      sub_10000F024(v33, v16, v71);
      v35 += 24;
      v68 = v156;
      if (v157 == v2)
      {

        return;
      }
    }

    __break(1u);
LABEL_48:
    swift_once();
  }

  v110 = Logger.logObject.getter();
  v111 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v110, v111))
  {
    v112 = swift_slowAlloc();
    *v112 = 0;
    v113 = "### Send ExperienceOutput to v1 follower??";
    goto LABEL_45;
  }

LABEL_46:
}

void sub_100153050(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  if (qword_1003390C8 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100003078(v6, qword_100347D38);
  swift_errorRetain();
  oslog = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v8 = 136315138;
    if (a3)
    {
      swift_errorRetain();
      sub_100035D04(&unk_100346020, &qword_100271A00);
      v10 = String.init<A>(describing:)();
      v12 = v11;
    }

    else
    {
      v12 = 0xE300000000000000;
      v10 = 7104878;
    }

    v13 = sub_100017494(v10, v12, &v15);

    *(v8 + 4) = v13;
    _os_log_impl(&_mh_execute_header, oslog, v7, a4, v8, 0xCu);
    sub_10000903C(v9);
  }

  else
  {
  }
}

void sub_100153228(uint64_t a1, const char *a2)
{
  if (qword_1003390C8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100003078(v4, qword_100347D38);
  swift_errorRetain();
  oslog = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136315138;
    if (a1)
    {
      swift_errorRetain();
      sub_100035D04(&unk_100346020, &qword_100271A00);
      v8 = String.init<A>(describing:)();
      v10 = v9;
    }

    else
    {
      v10 = 0xE300000000000000;
      v8 = 7104878;
    }

    v11 = sub_100017494(v8, v10, &v13);

    *(v6 + 4) = v11;
    _os_log_impl(&_mh_execute_header, oslog, v5, a2, v6, 0xCu);
    sub_10000903C(v7);
  }

  else
  {
  }
}

uint64_t sub_1001533E8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v72 = a3;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81[3] = type metadata accessor for PresentNoticeRequest();
  v81[4] = &off_100315988;
  v14 = sub_10000F798(v81);
  sub_10015A074(a1, v14, type metadata accessor for PresentNoticeRequest);
  UUID.init()();
  UUID.uuidString.getter();
  (*(v10 + 8))(v13, v9);
  v75 = sub_10000B584(8);
  v74 = v15;
  v73 = v16;
  v18 = v17;

  if (qword_1003392F0 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  v20 = sub_100003078(v19, qword_100351320);
  sub_10007E790(v81, aBlock);
  v21 = a2;

  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();

  v24 = os_log_type_enabled(v22, v23);
  v71 = v21;
  if (v24)
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v69[1] = v14;
    v27 = v26;
    v28 = swift_slowAlloc();
    v69[2] = v20;
    *&v79[0] = v28;
    *v25 = 136315906;
    *(v25 + 4) = sub_100017494(0xD000000000000022, 0x80000001002A25F0, v79);
    *(v25 + 12) = 2080;
    sub_10007E790(aBlock, &v76);
    sub_100035D04(&qword_100347E30, &unk_100280190);
    v29 = String.init<A>(describing:)();
    v70 = a5;
    v30 = v29;
    v32 = v31;
    sub_10000903C(aBlock);
    v33 = sub_100017494(v30, v32, v79);

    *(v25 + 14) = v33;
    *(v25 + 22) = 2112;
    *(v25 + 24) = v21;
    *v27 = v21;
    *(v25 + 32) = 2080;
    v34 = v21;

    v35 = static String._fromSubstring(_:)();
    v37 = v36;

    v38 = sub_100017494(v35, v37, v79);
    a5 = v70;

    *(v25 + 34) = v38;
    _os_log_impl(&_mh_execute_header, v22, v23, "%s: request=%s, rpCLDevice=%@, messageID=%s", v25, 0x2Au);
    sub_1000030B0(v27);

    swift_arrayDestroy();
  }

  else
  {

    sub_10000903C(aBlock);
  }

  v39 = sub_1002341E0();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v41 = *(*(Strong + OBJC_IVAR____TtC17proximitycontrold11NearbyAgent__rangingProxy) + 24);
    v42 = Strong;
    v43 = v41;

    if (v41)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v44 = aBlock[0];
      if (aBlock[0] && (v45 = [aBlock[0] discoveryToken], v44, v45))
      {
        sub_100159FB0();
        v46 = sub_100168F0C(v45);
        v48 = v47;

        if (v48 >> 60 != 15)
        {
          strcpy(&v76, "rangingToken");
          BYTE13(v76) = 0;
          HIWORD(v76) = -5120;
          AnyHashable.init<A>(_:)();
          v77 = &type metadata for Data;
          *&v76 = v46;
          *(&v76 + 1) = v48;
          sub_1000516B4(&v76, v79);
          sub_10006DA04(v46, v48);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v78 = v39;
          sub_10004D368(v79, aBlock, isUniquelyReferenced_nonNull_native);
          sub_10006DB04(v46, v48);
          sub_1000516C4(aBlock);
        }
      }

      else
      {
      }
    }
  }

  v50 = *(a5 + OBJC_IVAR____TtC17proximitycontrold12RapportProxy_rpCLClient);
  if (v50)
  {

    v51 = v50;
    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      aBlock[0] = v55;
      *v54 = 136315138;

      v56 = static String._fromSubstring(_:)();
      v58 = v57;

      v59 = sub_100017494(v56, v58, aBlock);

      *(v54 + 4) = v59;
      _os_log_impl(&_mh_execute_header, v52, v53, "Sending request with messageID: %s", v54, 0xCu);
      sub_10000903C(v55);
    }

    v60 = String._bridgeToObjectiveC()();
    v61.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v62 = [v71 effectiveIdentifier];
    if (!v62)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v62 = String._bridgeToObjectiveC()();
    }

    v63 = swift_allocObject();
    v64 = v74;
    v63[2] = v75;
    v63[3] = v64;
    v63[4] = v73;
    v63[5] = v18;
    v63[6] = v72;
    v63[7] = a4;
    aBlock[4] = sub_10015A174;
    aBlock[5] = v63;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100151C6C;
    aBlock[3] = &unk_10030B6F8;
    v65 = _Block_copy(aBlock);

    [v51 sendRequestID:v60 request:v61.super.isa destinationID:v62 options:0 responseHandler:v65];
    _Block_release(v65);
  }

  else
  {

    v62 = Logger.logObject.getter();
    v66 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v62, v66))
    {
      v67 = swift_slowAlloc();
      *v67 = 0;
      _os_log_impl(&_mh_execute_header, v62, v66, "### Could not send request - no client?", v67, 2u);
    }
  }

  return sub_10000903C(v81);
}

uint64_t sub_100153DBC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v72 = a3;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81[3] = type metadata accessor for HandoffRemotePeerInterface.Request.LeaderSessionEnded(0);
  v81[4] = &off_100310C90;
  v14 = sub_10000F798(v81);
  sub_10015A074(a1, v14, type metadata accessor for HandoffRemotePeerInterface.Request.LeaderSessionEnded);
  UUID.init()();
  UUID.uuidString.getter();
  (*(v10 + 8))(v13, v9);
  v75 = sub_10000B584(8);
  v74 = v15;
  v73 = v16;
  v18 = v17;

  if (qword_1003392F0 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  v20 = sub_100003078(v19, qword_100351320);
  sub_10007E790(v81, aBlock);
  v21 = a2;

  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();

  v24 = os_log_type_enabled(v22, v23);
  v71 = v21;
  if (v24)
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v69[1] = v14;
    v27 = v26;
    v28 = swift_slowAlloc();
    v69[2] = v20;
    *&v79[0] = v28;
    *v25 = 136315906;
    *(v25 + 4) = sub_100017494(0xD000000000000022, 0x80000001002A25F0, v79);
    *(v25 + 12) = 2080;
    sub_10007E790(aBlock, &v76);
    sub_100035D04(&qword_100347E30, &unk_100280190);
    v29 = String.init<A>(describing:)();
    v70 = a5;
    v30 = v29;
    v32 = v31;
    sub_10000903C(aBlock);
    v33 = sub_100017494(v30, v32, v79);

    *(v25 + 14) = v33;
    *(v25 + 22) = 2112;
    *(v25 + 24) = v21;
    *v27 = v21;
    *(v25 + 32) = 2080;
    v34 = v21;

    v35 = static String._fromSubstring(_:)();
    v37 = v36;

    v38 = sub_100017494(v35, v37, v79);
    a5 = v70;

    *(v25 + 34) = v38;
    _os_log_impl(&_mh_execute_header, v22, v23, "%s: request=%s, rpCLDevice=%@, messageID=%s", v25, 0x2Au);
    sub_1000030B0(v27);

    swift_arrayDestroy();
  }

  else
  {

    sub_10000903C(aBlock);
  }

  v39 = sub_1001D023C();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v41 = *(*(Strong + OBJC_IVAR____TtC17proximitycontrold11NearbyAgent__rangingProxy) + 24);
    v42 = Strong;
    v43 = v41;

    if (v41)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v44 = aBlock[0];
      if (aBlock[0] && (v45 = [aBlock[0] discoveryToken], v44, v45))
      {
        sub_100159FB0();
        v46 = sub_100168F0C(v45);
        v48 = v47;

        if (v48 >> 60 != 15)
        {
          strcpy(&v76, "rangingToken");
          BYTE13(v76) = 0;
          HIWORD(v76) = -5120;
          AnyHashable.init<A>(_:)();
          v77 = &type metadata for Data;
          *&v76 = v46;
          *(&v76 + 1) = v48;
          sub_1000516B4(&v76, v79);
          sub_10006DA04(v46, v48);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v78 = v39;
          sub_10004D368(v79, aBlock, isUniquelyReferenced_nonNull_native);
          sub_10006DB04(v46, v48);
          sub_1000516C4(aBlock);
        }
      }

      else
      {
      }
    }
  }

  v50 = *(a5 + OBJC_IVAR____TtC17proximitycontrold12RapportProxy_rpCLClient);
  if (v50)
  {

    v51 = v50;
    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      aBlock[0] = v55;
      *v54 = 136315138;

      v56 = static String._fromSubstring(_:)();
      v58 = v57;

      v59 = sub_100017494(v56, v58, aBlock);

      *(v54 + 4) = v59;
      _os_log_impl(&_mh_execute_header, v52, v53, "Sending request with messageID: %s", v54, 0xCu);
      sub_10000903C(v55);
    }

    v60 = String._bridgeToObjectiveC()();
    v61.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v62 = [v71 effectiveIdentifier];
    if (!v62)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v62 = String._bridgeToObjectiveC()();
    }

    v63 = swift_allocObject();
    v64 = v74;
    v63[2] = v75;
    v63[3] = v64;
    v63[4] = v73;
    v63[5] = v18;
    v63[6] = v72;
    v63[7] = a4;
    aBlock[4] = sub_10015A174;
    aBlock[5] = v63;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100151C6C;
    aBlock[3] = &unk_10030B568;
    v65 = _Block_copy(aBlock);

    [v51 sendRequestID:v60 request:v61.super.isa destinationID:v62 options:0 responseHandler:v65];
    _Block_release(v65);
  }

  else
  {

    v62 = Logger.logObject.getter();
    v66 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v62, v66))
    {
      v67 = swift_slowAlloc();
      *v67 = 0;
      _os_log_impl(&_mh_execute_header, v62, v66, "### Could not send request - no client?", v67, 2u);
    }
  }

  return sub_10000903C(v81);
}

uint64_t sub_10015478C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v72 = a3;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81[3] = type metadata accessor for HandoffRemotePeerInterface.Request.LeaderSessionStarted(0);
  v81[4] = &off_100310CD0;
  v14 = sub_10000F798(v81);
  sub_10015A074(a1, v14, type metadata accessor for HandoffRemotePeerInterface.Request.LeaderSessionStarted);
  UUID.init()();
  UUID.uuidString.getter();
  (*(v10 + 8))(v13, v9);
  v75 = sub_10000B584(8);
  v74 = v15;
  v73 = v16;
  v18 = v17;

  if (qword_1003392F0 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  v20 = sub_100003078(v19, qword_100351320);
  sub_10007E790(v81, aBlock);
  v21 = a2;

  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();

  v24 = os_log_type_enabled(v22, v23);
  v71 = v21;
  if (v24)
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v69[1] = v14;
    v27 = v26;
    v28 = swift_slowAlloc();
    v69[2] = v20;
    *&v79[0] = v28;
    *v25 = 136315906;
    *(v25 + 4) = sub_100017494(0xD000000000000022, 0x80000001002A25F0, v79);
    *(v25 + 12) = 2080;
    sub_10007E790(aBlock, &v76);
    sub_100035D04(&qword_100347E30, &unk_100280190);
    v29 = String.init<A>(describing:)();
    v70 = a5;
    v30 = v29;
    v32 = v31;
    sub_10000903C(aBlock);
    v33 = sub_100017494(v30, v32, v79);

    *(v25 + 14) = v33;
    *(v25 + 22) = 2112;
    *(v25 + 24) = v21;
    *v27 = v21;
    *(v25 + 32) = 2080;
    v34 = v21;

    v35 = static String._fromSubstring(_:)();
    v37 = v36;

    v38 = sub_100017494(v35, v37, v79);
    a5 = v70;

    *(v25 + 34) = v38;
    _os_log_impl(&_mh_execute_header, v22, v23, "%s: request=%s, rpCLDevice=%@, messageID=%s", v25, 0x2Au);
    sub_1000030B0(v27);

    swift_arrayDestroy();
  }

  else
  {

    sub_10000903C(aBlock);
  }

  v39 = sub_1001CFEE4();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v41 = *(*(Strong + OBJC_IVAR____TtC17proximitycontrold11NearbyAgent__rangingProxy) + 24);
    v42 = Strong;
    v43 = v41;

    if (v41)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v44 = aBlock[0];
      if (aBlock[0] && (v45 = [aBlock[0] discoveryToken], v44, v45))
      {
        sub_100159FB0();
        v46 = sub_100168F0C(v45);
        v48 = v47;

        if (v48 >> 60 != 15)
        {
          strcpy(&v76, "rangingToken");
          BYTE13(v76) = 0;
          HIWORD(v76) = -5120;
          AnyHashable.init<A>(_:)();
          v77 = &type metadata for Data;
          *&v76 = v46;
          *(&v76 + 1) = v48;
          sub_1000516B4(&v76, v79);
          sub_10006DA04(v46, v48);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v78 = v39;
          sub_10004D368(v79, aBlock, isUniquelyReferenced_nonNull_native);
          sub_10006DB04(v46, v48);
          sub_1000516C4(aBlock);
        }
      }

      else
      {
      }
    }
  }

  v50 = *(a5 + OBJC_IVAR____TtC17proximitycontrold12RapportProxy_rpCLClient);
  if (v50)
  {

    v51 = v50;
    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      aBlock[0] = v55;
      *v54 = 136315138;

      v56 = static String._fromSubstring(_:)();
      v58 = v57;

      v59 = sub_100017494(v56, v58, aBlock);

      *(v54 + 4) = v59;
      _os_log_impl(&_mh_execute_header, v52, v53, "Sending request with messageID: %s", v54, 0xCu);
      sub_10000903C(v55);
    }

    v60 = String._bridgeToObjectiveC()();
    v61.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v62 = [v71 effectiveIdentifier];
    if (!v62)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v62 = String._bridgeToObjectiveC()();
    }

    v63 = swift_allocObject();
    v64 = v74;
    v63[2] = v75;
    v63[3] = v64;
    v63[4] = v73;
    v63[5] = v18;
    v63[6] = v72;
    v63[7] = a4;
    aBlock[4] = sub_100159F98;
    aBlock[5] = v63;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100151C6C;
    aBlock[3] = &unk_10030B4C8;
    v65 = _Block_copy(aBlock);

    [v51 sendRequestID:v60 request:v61.super.isa destinationID:v62 options:0 responseHandler:v65];
    _Block_release(v65);
  }

  else
  {

    v62 = Logger.logObject.getter();
    v66 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v62, v66))
    {
      v67 = swift_slowAlloc();
      *v67 = 0;
      _os_log_impl(&_mh_execute_header, v62, v66, "### Could not send request - no client?", v67, 2u);
    }
  }

  return sub_10000903C(v81);
}

uint64_t sub_10015515C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33[3] = type metadata accessor for HandoffRemotePeerInterface.Request.LeaderSessionStarted(0);
  v33[4] = &off_100310CD0;
  v8 = sub_10000F798(v33);
  sub_10015A074(a1, v8, type metadata accessor for HandoffRemotePeerInterface.Request.LeaderSessionStarted);
  if (qword_1003390C8 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_100003078(v9, qword_100347D38);
  sub_10007E790(v33, v32);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    *v12 = 136315394;
    *(v12 + 4) = sub_100017494(0xD000000000000018, 0x80000001002A2540, &v31);
    *(v12 + 12) = 2080;
    sub_10007E790(v32, v30);
    sub_100035D04(&qword_100347E30, &unk_100280190);
    v13 = String.init<A>(describing:)();
    v15 = v14;
    sub_10000903C(v32);
    v16 = sub_100017494(v13, v15, &v31);

    *(v12 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v10, v11, "%s: request=%s", v12, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_10000903C(v32);
  }

  v17 = *(a4 + 16);
  v18 = sub_100142E20()[4];
  v19 = v18;

  if (v18)
  {
    v20 = *(a4 + 24);
    swift_unownedRetainStrong();
    v21 = *(*(v20 + 24) + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_pairedConnection);
    v22 = v21;

    if (v21)
    {
      sub_10015901C(v8, v22, a2, a3, v19);
LABEL_13:

      goto LABEL_14;
    }

    swift_unownedRetainStrong();
    v25 = *(v20 + 24);
    v22 = sub_100070D94();

    if (v22)
    {
      sub_10015478C(v8, v22, a2, a3, v19);
      goto LABEL_13;
    }

    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v27, v28, "### Could not send message - no rpCompanionLinkClient or rpCompanionLinkDevice", v29, 2u);
    }

    v19 = v27;
  }

  else
  {
    v19 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v19, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v19, v23, "### Could not send message - no remoteFollowerTransportLink", v24, 2u);
    }
  }

LABEL_14:

  return sub_10000903C(v33);
}

uint64_t sub_10015554C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33[3] = type metadata accessor for HandoffRemotePeerInterface.Request.LeaderSessionEnded(0);
  v33[4] = &off_100310C90;
  v8 = sub_10000F798(v33);
  sub_10015A074(a1, v8, type metadata accessor for HandoffRemotePeerInterface.Request.LeaderSessionEnded);
  if (qword_1003390C8 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_100003078(v9, qword_100347D38);
  sub_10007E790(v33, v32);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    *v12 = 136315394;
    *(v12 + 4) = sub_100017494(0xD000000000000018, 0x80000001002A2540, &v31);
    *(v12 + 12) = 2080;
    sub_10007E790(v32, v30);
    sub_100035D04(&qword_100347E30, &unk_100280190);
    v13 = String.init<A>(describing:)();
    v15 = v14;
    sub_10000903C(v32);
    v16 = sub_100017494(v13, v15, &v31);

    *(v12 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v10, v11, "%s: request=%s", v12, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_10000903C(v32);
  }

  v17 = *(a4 + 16);
  v18 = sub_100142E20()[4];
  v19 = v18;

  if (v18)
  {
    v20 = *(a4 + 24);
    swift_unownedRetainStrong();
    v21 = *(*(v20 + 24) + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_pairedConnection);
    v22 = v21;

    if (v21)
    {
      sub_100158708(v8, v22, a2, a3, v19);
LABEL_13:

      goto LABEL_14;
    }

    swift_unownedRetainStrong();
    v25 = *(v20 + 24);
    v22 = sub_100070D94();

    if (v22)
    {
      sub_100153DBC(v8, v22, a2, a3, v19);
      goto LABEL_13;
    }

    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v27, v28, "### Could not send message - no rpCompanionLinkClient or rpCompanionLinkDevice", v29, 2u);
    }

    v19 = v27;
  }

  else
  {
    v19 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v19, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v19, v23, "### Could not send message - no remoteFollowerTransportLink", v24, 2u);
    }
  }

LABEL_14:

  return sub_10000903C(v33);
}

uint64_t sub_10015593C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33[3] = type metadata accessor for HandoffRemotePeerInterface.Request.LeaderSessionOutput(0);
  v33[4] = &off_100310C50;
  v8 = sub_10000F798(v33);
  sub_10015A074(a1, v8, type metadata accessor for HandoffRemotePeerInterface.Request.LeaderSessionOutput);
  if (qword_1003390C8 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_100003078(v9, qword_100347D38);
  sub_10007E790(v33, v32);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    *v12 = 136315394;
    *(v12 + 4) = sub_100017494(0xD000000000000013, 0x80000001002A2640, &v31);
    *(v12 + 12) = 2080;
    sub_10007E790(v32, v30);
    sub_100035D04(&qword_100347E40, &qword_1002801F0);
    v13 = String.init<A>(describing:)();
    v15 = v14;
    sub_10000903C(v32);
    v16 = sub_100017494(v13, v15, &v31);

    *(v12 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v10, v11, "%s: event=%s", v12, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_10000903C(v32);
  }

  v17 = *(a4 + 16);
  v18 = sub_100142E20()[4];
  v19 = v18;

  if (v18)
  {
    v20 = *(a4 + 24);
    swift_unownedRetainStrong();
    v21 = *(*(v20 + 24) + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_pairedConnection);
    v22 = v21;

    if (v21)
    {
      sub_100156140(v8, v22, a2, a3);
LABEL_13:

      goto LABEL_14;
    }

    swift_unownedRetainStrong();
    v25 = *(v20 + 24);
    v22 = sub_100070D94();

    if (v22)
    {
      sub_100157364(v8, v22, a2, a3, v19);
      goto LABEL_13;
    }

    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v27, v28, "### Could not send message - no rpCompanionLinkClient or rpCompanionLinkDevice", v29, 2u);
    }

    v19 = v27;
  }

  else
  {
    v19 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v19, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v19, v23, "### Could not send message - no remoteFollowerTransportLink", v24, 2u);
    }
  }

LABEL_14:

  return sub_10000903C(v33);
}

uint64_t sub_100155D2C(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = a3;
  v10 = a2;
  v11 = a1;
  v45 = &type metadata for HandoffRemotePeerInterface.Request.Handoff2Output;
  v46 = &off_100310C18;
  v43[0] = a1;
  v43[1] = a2;
  v44 = a3;
  sub_100159F0C(a1, a2, a3);
  if (qword_1003390C8 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_100003078(v12, qword_100347D38);
  sub_10007E790(v43, v42);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    *v15 = 136315394;
    *(v15 + 4) = sub_100017494(0xD000000000000013, 0x80000001002A2640, &v41);
    *(v15 + 12) = 2080;
    sub_10007E790(v42, v40);
    sub_100035D04(&qword_100347E40, &qword_1002801F0);
    v16 = a6;
    v17 = String.init<A>(describing:)();
    v39 = v14;
    v18 = v11;
    v19 = v10;
    v20 = v9;
    v21 = a4;
    v22 = a5;
    v24 = v23;
    sub_10000903C(v42);
    v25 = sub_100017494(v17, v24, &v41);
    a5 = v22;
    a4 = v21;
    v9 = v20;
    v10 = v19;
    v11 = v18;

    *(v15 + 14) = v25;
    a6 = v16;
    _os_log_impl(&_mh_execute_header, v13, v39, "%s: event=%s", v15, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_10000903C(v42);
  }

  v26 = *(a6 + 16);
  v27 = sub_100142E20()[4];
  v28 = v27;

  if (v27)
  {
    v29 = *(a6 + 24);
    swift_unownedRetainStrong();
    v30 = *(*(v29 + 24) + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_pairedConnection);
    v31 = v30;

    if (v30)
    {
      sub_100156A60(v11, v10, v9, v31, a4, a5);
LABEL_13:

      goto LABEL_14;
    }

    swift_unownedRetainStrong();
    v34 = *(v29 + 24);
    v31 = sub_100070D94();

    if (v31)
    {
      sub_100157D30(v11, v10, v9, v31, a4, a5, v28);
      goto LABEL_13;
    }

    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&_mh_execute_header, v36, v37, "### Could not send message - no rpCompanionLinkClient or rpCompanionLinkDevice", v38, 2u);
    }

    v28 = v36;
  }

  else
  {
    v28 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v28, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&_mh_execute_header, v28, v32, "### Could not send message - no remoteFollowerTransportLink", v33, 2u);
    }
  }

LABEL_14:

  return sub_10000903C(v43);
}

uint64_t sub_100156140(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v68 = a4;
  v69 = a3;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78[3] = type metadata accessor for HandoffRemotePeerInterface.Request.LeaderSessionOutput(0);
  v78[4] = &off_100310C50;
  v71 = sub_10000F798(v78);
  sub_10015A074(a1, v71, type metadata accessor for HandoffRemotePeerInterface.Request.LeaderSessionOutput);
  UUID.init()();
  UUID.uuidString.getter();
  (*(v7 + 8))(v10, v6);
  v11 = sub_10000B584(8);
  v72 = v12;
  v14 = v13;
  v16 = v15;

  if (qword_1003392F0 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  v18 = sub_100003078(v17, qword_100351320);
  sub_10007E790(v78, aBlock);
  v19 = a2;

  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();

  v22 = os_log_type_enabled(v20, v21);
  v67 = v14;
  v66 = v19;
  if (v22)
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v70 = v11;
    v25 = v24;
    v65[0] = swift_slowAlloc();
    *&v76[0] = v65[0];
    *v23 = 136315906;
    *(v23 + 4) = sub_100017494(0xD00000000000001DLL, 0x80000001002A2660, v76);
    *(v23 + 12) = 2080;
    sub_10007E790(aBlock, &v73);
    sub_100035D04(&qword_100347E40, &qword_1002801F0);
    v26 = String.init<A>(describing:)();
    v65[1] = v18;
    v28 = v27;
    sub_10000903C(aBlock);
    v29 = sub_100017494(v26, v28, v76);

    *(v23 + 14) = v29;
    *(v23 + 22) = 2112;
    *(v23 + 24) = v19;
    *v25 = v19;
    *(v23 + 32) = 2080;
    v30 = v19;

    v31 = static String._fromSubstring(_:)();
    v33 = v32;

    v34 = sub_100017494(v31, v33, v76);

    *(v23 + 34) = v34;
    _os_log_impl(&_mh_execute_header, v20, v21, "%s: event=%s, rpCLClient=%@, messageID=%s", v23, 0x2Au);
    sub_1000030B0(v25);
    v11 = v70;

    swift_arrayDestroy();
  }

  else
  {

    sub_10000903C(aBlock);
  }

  v35 = sub_1001D03E0();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v37 = *(*(Strong + OBJC_IVAR____TtC17proximitycontrold11NearbyAgent__rangingProxy) + 24);
    v38 = Strong;
    v39 = v37;

    if (v37)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v40 = aBlock[0];
      if (aBlock[0] && (v41 = [aBlock[0] discoveryToken], v40, v41))
      {
        v42 = v35;
        sub_100159FB0();
        v43 = sub_100168F0C(v41);
        v45 = v44;

        if (v45 >> 60 != 15)
        {
          strcpy(&v73, "rangingToken");
          BYTE13(v73) = 0;
          HIWORD(v73) = -5120;
          AnyHashable.init<A>(_:)();
          v74 = &type metadata for Data;
          *&v73 = v43;
          *(&v73 + 1) = v45;
          sub_1000516B4(&v73, v76);
          sub_10006DA04(v43, v45);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v75 = v42;
          sub_10004D368(v76, aBlock, isUniquelyReferenced_nonNull_native);
          sub_10006DB04(v43, v45);
          sub_1000516C4(aBlock);
        }
      }

      else
      {
      }
    }
  }

  v47 = Logger.logObject.getter();
  v48 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    aBlock[0] = v50;
    *v49 = 136315138;

    v51 = v67;
    v52 = static String._fromSubstring(_:)();
    v53 = v11;
    v55 = v54;

    v56 = sub_100017494(v52, v55, aBlock);
    v11 = v53;

    *(v49 + 4) = v56;
    _os_log_impl(&_mh_execute_header, v47, v48, "Sending event with messageID: %s", v49, 0xCu);
    sub_10000903C(v50);
  }

  else
  {

    v51 = v67;
  }

  v57 = String._bridgeToObjectiveC()();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v59 = swift_allocObject();
  v60 = v72;
  v59[2] = v11;
  v59[3] = v60;
  v59[4] = v51;
  v59[5] = v16;
  v61 = v69;
  v62 = v68;
  v59[6] = v69;
  v59[7] = v62;
  aBlock[4] = sub_10015A198;
  aBlock[5] = v59;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100124498;
  aBlock[3] = &unk_10030B658;
  v63 = _Block_copy(aBlock);
  sub_10009D4E0(v61);

  [v66 sendEventID:v57 event:isa options:0 completion:v63];
  _Block_release(v63);

  return sub_10000903C(v78);
}

uint64_t sub_100156A60(uint64_t a1, uint64_t a2, unsigned __int8 a3, void *a4, uint64_t a5, uint64_t a6)
{
  v69 = a6;
  v68 = a5;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = &type metadata for HandoffRemotePeerInterface.Request.Handoff2Output;
  v81 = &off_100310C18;
  v78[0] = a1;
  v78[1] = a2;
  v79 = a3;
  sub_100159F0C(a1, a2, a3);
  UUID.init()();
  UUID.uuidString.getter();
  (*(v11 + 8))(v14, v10);
  v15 = sub_10000B584(8);
  v72 = v16;
  v71 = v17;
  v19 = v18;

  if (qword_1003392F0 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  v21 = sub_100003078(v20, qword_100351320);
  sub_10007E790(v78, aBlock);
  v22 = a4;

  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();

  v25 = os_log_type_enabled(v23, v24);
  v67 = v22;
  if (v25)
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v70 = v15;
    v28 = v27;
    *&v76[0] = swift_slowAlloc();
    *v26 = 136315906;
    *(v26 + 4) = sub_100017494(0xD00000000000001DLL, 0x80000001002A2660, v76);
    *(v26 + 12) = 2080;
    sub_10007E790(aBlock, &v73);
    sub_100035D04(&qword_100347E40, &qword_1002801F0);
    v29 = String.init<A>(describing:)();
    v66 = v21;
    v31 = v30;
    sub_10000903C(aBlock);
    v32 = sub_100017494(v29, v31, v76);

    *(v26 + 14) = v32;
    *(v26 + 22) = 2112;
    *(v26 + 24) = v22;
    *v28 = v22;
    *(v26 + 32) = 2080;
    v33 = v22;

    v34 = static String._fromSubstring(_:)();
    v36 = v35;

    v37 = sub_100017494(v34, v36, v76);

    *(v26 + 34) = v37;
    _os_log_impl(&_mh_execute_header, v23, v24, "%s: event=%s, rpCLClient=%@, messageID=%s", v26, 0x2Au);
    sub_1000030B0(v28);
    v15 = v70;

    swift_arrayDestroy();
  }

  else
  {

    sub_10000903C(aBlock);
  }

  v38 = sub_1001D0760();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v40 = *(*(Strong + OBJC_IVAR____TtC17proximitycontrold11NearbyAgent__rangingProxy) + 24);
    v41 = Strong;
    v42 = v40;

    if (v40)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v43 = aBlock[0];
      if (aBlock[0] && (v44 = [aBlock[0] discoveryToken], v43, v44))
      {
        sub_100159FB0();
        v45 = sub_100168F0C(v44);
        v47 = v46;

        if (v47 >> 60 != 15)
        {
          strcpy(&v73, "rangingToken");
          BYTE13(v73) = 0;
          HIWORD(v73) = -5120;
          AnyHashable.init<A>(_:)();
          v74 = &type metadata for Data;
          *&v73 = v45;
          *(&v73 + 1) = v47;
          sub_1000516B4(&v73, v76);
          sub_10006DA04(v45, v47);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v75 = v38;
          sub_10004D368(v76, aBlock, isUniquelyReferenced_nonNull_native);
          sub_10006DB04(v45, v47);
          sub_1000516C4(aBlock);
        }
      }

      else
      {
      }
    }
  }

  v49 = Logger.logObject.getter();
  v50 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    aBlock[0] = v52;
    *v51 = 136315138;

    v53 = static String._fromSubstring(_:)();
    v54 = v15;
    v56 = v55;

    v57 = sub_100017494(v53, v56, aBlock);
    v15 = v54;

    *(v51 + 4) = v57;
    _os_log_impl(&_mh_execute_header, v49, v50, "Sending event with messageID: %s", v51, 0xCu);
    sub_10000903C(v52);
  }

  v58 = String._bridgeToObjectiveC()();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v60 = swift_allocObject();
  v61 = v72;
  v60[2] = v15;
  v60[3] = v61;
  v60[4] = v71;
  v60[5] = v19;
  v62 = v68;
  v63 = v69;
  v60[6] = v68;
  v60[7] = v63;
  aBlock[4] = sub_100159FFC;
  aBlock[5] = v60;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100124498;
  aBlock[3] = &unk_10030B5B8;
  v64 = _Block_copy(aBlock);
  sub_10009D4E0(v62);

  [v67 sendEventID:v58 event:isa options:0 completion:v64];
  _Block_release(v64);

  return sub_10000903C(v78);
}

uint64_t sub_100157364(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v72 = a3;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82[3] = type metadata accessor for HandoffRemotePeerInterface.Request.LeaderSessionOutput(0);
  v82[4] = &off_100310C50;
  v76 = sub_10000F798(v82);
  sub_10015A074(a1, v76, type metadata accessor for HandoffRemotePeerInterface.Request.LeaderSessionOutput);
  UUID.init()();
  UUID.uuidString.getter();
  (*(v10 + 8))(v13, v9);
  v75 = sub_10000B584(8);
  v74 = v14;
  v73 = v15;
  v17 = v16;

  if (qword_1003392F0 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  v19 = sub_100003078(v18, qword_100351320);
  sub_10007E790(v82, aBlock);
  v20 = a2;

  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();

  v23 = os_log_type_enabled(v21, v22);
  v71 = v20;
  if (v23)
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v69[1] = v19;
    *&v80[0] = v26;
    *v24 = 136315906;
    *(v24 + 4) = sub_100017494(0xD00000000000001BLL, 0x80000001002A2680, v80);
    *(v24 + 12) = 2080;
    sub_10007E790(aBlock, &v77);
    sub_100035D04(&qword_100347E40, &qword_1002801F0);
    v27 = String.init<A>(describing:)();
    v70 = a5;
    v28 = v27;
    v30 = v29;
    sub_10000903C(aBlock);
    v31 = sub_100017494(v28, v30, v80);

    *(v24 + 14) = v31;
    *(v24 + 22) = 2112;
    *(v24 + 24) = v20;
    *v25 = v20;
    *(v24 + 32) = 2080;
    v32 = v20;

    v33 = static String._fromSubstring(_:)();
    v35 = v34;

    v36 = sub_100017494(v33, v35, v80);
    a5 = v70;

    *(v24 + 34) = v36;
    _os_log_impl(&_mh_execute_header, v21, v22, "%s: event=%s, rpCLDevice=%@, messageID=%s", v24, 0x2Au);
    sub_1000030B0(v25);

    swift_arrayDestroy();
  }

  else
  {

    sub_10000903C(aBlock);
  }

  v37 = sub_1001D03E0();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v39 = *(*(Strong + OBJC_IVAR____TtC17proximitycontrold11NearbyAgent__rangingProxy) + 24);
    v40 = Strong;
    v41 = v39;

    if (v39)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v42 = aBlock[0];
      if (aBlock[0] && (v43 = [aBlock[0] discoveryToken], v42, v43))
      {
        sub_100159FB0();
        v44 = sub_100168F0C(v43);
        v46 = v45;

        if (v46 >> 60 != 15)
        {
          strcpy(&v77, "rangingToken");
          BYTE13(v77) = 0;
          HIWORD(v77) = -5120;
          AnyHashable.init<A>(_:)();
          v78 = &type metadata for Data;
          *&v77 = v44;
          *(&v77 + 1) = v46;
          sub_1000516B4(&v77, v80);
          sub_10006DA04(v44, v46);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v79 = v37;
          sub_10004D368(v80, aBlock, isUniquelyReferenced_nonNull_native);
          sub_10006DB04(v44, v46);
          sub_1000516C4(aBlock);
        }
      }

      else
      {
      }
    }
  }

  v48 = *(a5 + OBJC_IVAR____TtC17proximitycontrold12RapportProxy_rpCLClient);
  if (v48)
  {

    v49 = v48;
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      aBlock[0] = v53;
      *v52 = 136315138;

      v54 = static String._fromSubstring(_:)();
      v56 = v55;

      v57 = sub_100017494(v54, v56, aBlock);

      *(v52 + 4) = v57;
      _os_log_impl(&_mh_execute_header, v50, v51, "Sending event with messageID: %s", v52, 0xCu);
      sub_10000903C(v53);
    }

    v58 = String._bridgeToObjectiveC()();
    v59.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v60 = [v71 effectiveIdentifier];
    if (!v60)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v60 = String._bridgeToObjectiveC()();
    }

    v61 = swift_allocObject();
    v62 = v74;
    v61[2] = v75;
    v61[3] = v62;
    v61[4] = v73;
    v61[5] = v17;
    v63 = v72;
    v61[6] = v72;
    v61[7] = a4;
    aBlock[4] = sub_10015A198;
    aBlock[5] = v61;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100124498;
    aBlock[3] = &unk_10030B6A8;
    v64 = _Block_copy(aBlock);
    sub_10009D4E0(v63);

    [v49 sendEventID:v58 event:v59.super.isa destinationID:v60 options:0 completion:v64];
    _Block_release(v64);
  }

  else
  {

    v66 = Logger.logObject.getter();
    v67 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      *v68 = 0;
      _os_log_impl(&_mh_execute_header, v66, v67, "### Could not send request - no client?", v68, 2u);
    }
  }

  return sub_10000903C(v82);
}

uint64_t sub_100157D30(uint64_t a1, uint64_t a2, unsigned __int8 a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v74 = a6;
  v73 = a5;
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = &type metadata for HandoffRemotePeerInterface.Request.Handoff2Output;
  v86 = &off_100310C18;
  v83[0] = a1;
  v83[1] = a2;
  v84 = a3;
  sub_100159F0C(a1, a2, a3);
  UUID.init()();
  UUID.uuidString.getter();
  (*(v13 + 8))(v16, v12);
  v77 = sub_10000B584(8);
  v76 = v17;
  v75 = v18;
  v20 = v19;

  if (qword_1003392F0 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  v22 = sub_100003078(v21, qword_100351320);
  sub_10007E790(v83, aBlock);
  v23 = a4;

  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v72[1] = v22;
    *&v81[0] = v28;
    *v26 = 136315906;
    *(v26 + 4) = sub_100017494(0xD00000000000001BLL, 0x80000001002A2680, v81);
    *(v26 + 12) = 2080;
    sub_10007E790(aBlock, &v78);
    sub_100035D04(&qword_100347E40, &qword_1002801F0);
    v29 = a7;
    v30 = String.init<A>(describing:)();
    v32 = v31;
    sub_10000903C(aBlock);
    v33 = sub_100017494(v30, v32, v81);

    *(v26 + 14) = v33;
    *(v26 + 22) = 2112;
    *(v26 + 24) = v23;
    *v27 = v23;
    *(v26 + 32) = 2080;
    v34 = v23;

    v35 = static String._fromSubstring(_:)();
    v37 = v36;

    v38 = sub_100017494(v35, v37, v81);
    a7 = v29;

    *(v26 + 34) = v38;
    _os_log_impl(&_mh_execute_header, v24, v25, "%s: event=%s, rpCLDevice=%@, messageID=%s", v26, 0x2Au);
    sub_1000030B0(v27);

    swift_arrayDestroy();
  }

  else
  {

    sub_10000903C(aBlock);
  }

  v39 = sub_1001D0760();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v41 = *(*(Strong + OBJC_IVAR____TtC17proximitycontrold11NearbyAgent__rangingProxy) + 24);
    v42 = Strong;
    v43 = v41;

    if (v41)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v44 = aBlock[0];
      if (aBlock[0] && (v45 = [aBlock[0] discoveryToken], v44, v45))
      {
        sub_100159FB0();
        v46 = sub_100168F0C(v45);
        v48 = v47;

        if (v48 >> 60 != 15)
        {
          strcpy(&v78, "rangingToken");
          BYTE13(v78) = 0;
          HIWORD(v78) = -5120;
          AnyHashable.init<A>(_:)();
          v79 = &type metadata for Data;
          *&v78 = v46;
          *(&v78 + 1) = v48;
          sub_1000516B4(&v78, v81);
          sub_10006DA04(v46, v48);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v80 = v39;
          sub_10004D368(v81, aBlock, isUniquelyReferenced_nonNull_native);
          sub_10006DB04(v46, v48);
          sub_1000516C4(aBlock);
        }
      }

      else
      {
      }
    }
  }

  v50 = *(a7 + OBJC_IVAR____TtC17proximitycontrold12RapportProxy_rpCLClient);
  if (v50)
  {

    v51 = v50;
    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      aBlock[0] = v55;
      *v54 = 136315138;

      v56 = static String._fromSubstring(_:)();
      v58 = v57;

      v59 = sub_100017494(v56, v58, aBlock);

      *(v54 + 4) = v59;
      _os_log_impl(&_mh_execute_header, v52, v53, "Sending event with messageID: %s", v54, 0xCu);
      sub_10000903C(v55);
    }

    v60 = String._bridgeToObjectiveC()();
    v61.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v62 = [v23 effectiveIdentifier];
    if (!v62)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v62 = String._bridgeToObjectiveC()();
    }

    v63 = swift_allocObject();
    v64 = v76;
    v63[2] = v77;
    v63[3] = v64;
    v63[4] = v75;
    v63[5] = v20;
    v65 = v73;
    v66 = v74;
    v63[6] = v73;
    v63[7] = v66;
    aBlock[4] = sub_100159FFC;
    aBlock[5] = v63;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100124498;
    aBlock[3] = &unk_10030B608;
    v67 = _Block_copy(aBlock);
    sub_10009D4E0(v65);

    [v51 sendEventID:v60 event:v61.super.isa destinationID:v62 options:0 completion:v67];
    _Block_release(v67);
  }

  else
  {

    v69 = Logger.logObject.getter();
    v70 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      *v71 = 0;
      _os_log_impl(&_mh_execute_header, v69, v70, "### Could not send request - no client?", v71, 2u);
    }
  }

  return sub_10000903C(v83);
}

uint64_t sub_100158708(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v67[2] = a5;
  v70 = a4;
  v71 = a3;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79[3] = type metadata accessor for HandoffRemotePeerInterface.Request.LeaderSessionEnded(0);
  v79[4] = &off_100310C90;
  v12 = sub_10000F798(v79);
  sub_10015A074(a1, v12, type metadata accessor for HandoffRemotePeerInterface.Request.LeaderSessionEnded);
  UUID.init()();
  UUID.uuidString.getter();
  (*(v8 + 8))(v11, v7);
  v13 = sub_10000B584(8);
  v73 = v14;
  v16 = v15;
  v18 = v17;

  if (qword_1003392F0 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  v20 = sub_100003078(v19, qword_100351320);
  sub_10007E790(v79, aBlock);
  v21 = a2;

  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();

  v24 = os_log_type_enabled(v22, v23);
  v69 = v16;
  v68 = v21;
  if (v24)
  {
    v25 = swift_slowAlloc();
    v67[1] = v12;
    v26 = v21;
    v27 = v25;
    v28 = swift_slowAlloc();
    v72 = v13;
    v29 = v28;
    *&v77[0] = swift_slowAlloc();
    *v27 = 136315906;
    *(v27 + 4) = sub_100017494(0xD000000000000024, 0x80000001002A25C0, v77);
    *(v27 + 12) = 2080;
    sub_10007E790(aBlock, &v74);
    sub_100035D04(&qword_100347E30, &unk_100280190);
    v30 = String.init<A>(describing:)();
    v67[0] = v20;
    v32 = v31;
    sub_10000903C(aBlock);
    v33 = sub_100017494(v30, v32, v77);

    *(v27 + 14) = v33;
    *(v27 + 22) = 2112;
    *(v27 + 24) = v26;
    *v29 = v26;
    *(v27 + 32) = 2080;
    v34 = v26;

    v35 = static String._fromSubstring(_:)();
    v37 = v36;

    v38 = sub_100017494(v35, v37, v77);

    *(v27 + 34) = v38;
    _os_log_impl(&_mh_execute_header, v22, v23, "%s: request=%s, rpCLClient=%@, messageID=%s", v27, 0x2Au);
    sub_1000030B0(v29);
    v13 = v72;

    swift_arrayDestroy();
  }

  else
  {

    sub_10000903C(aBlock);
  }

  v39 = sub_1001D023C();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v41 = *(*(Strong + OBJC_IVAR____TtC17proximitycontrold11NearbyAgent__rangingProxy) + 24);
    v42 = Strong;
    v43 = v41;

    if (v41)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v44 = aBlock[0];
      if (aBlock[0] && (v45 = [aBlock[0] discoveryToken], v44, v45))
      {
        sub_100159FB0();
        v46 = sub_100168F0C(v45);
        v48 = v47;

        if (v48 >> 60 != 15)
        {
          strcpy(&v74, "rangingToken");
          BYTE13(v74) = 0;
          HIWORD(v74) = -5120;
          AnyHashable.init<A>(_:)();
          v75 = &type metadata for Data;
          *&v74 = v46;
          *(&v74 + 1) = v48;
          sub_1000516B4(&v74, v77);
          sub_10006DA04(v46, v48);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v76 = v39;
          sub_10004D368(v77, aBlock, isUniquelyReferenced_nonNull_native);
          sub_10006DB04(v46, v48);
          sub_1000516C4(aBlock);
        }
      }

      else
      {
      }
    }
  }

  v50 = Logger.logObject.getter();
  v51 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    aBlock[0] = v53;
    *v52 = 136315138;

    v54 = v69;
    v55 = static String._fromSubstring(_:)();
    v56 = v13;
    v58 = v57;

    v59 = sub_100017494(v55, v58, aBlock);
    v13 = v56;

    *(v52 + 4) = v59;
    _os_log_impl(&_mh_execute_header, v50, v51, "Sending request with messageID: %s", v52, 0xCu);
    sub_10000903C(v53);
  }

  else
  {

    v54 = v69;
  }

  v60 = String._bridgeToObjectiveC()();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v62 = swift_allocObject();
  v63 = v73;
  v62[2] = v13;
  v62[3] = v63;
  v62[4] = v54;
  v62[5] = v18;
  v64 = v70;
  v62[6] = v71;
  v62[7] = v64;
  aBlock[4] = sub_10015A174;
  aBlock[5] = v62;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100151C6C;
  aBlock[3] = &unk_10030B518;
  v65 = _Block_copy(aBlock);

  [v68 sendRequestID:v60 request:isa options:0 responseHandler:v65];
  _Block_release(v65);

  return sub_10000903C(v79);
}

uint64_t sub_10015901C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v67[2] = a5;
  v70 = a4;
  v71 = a3;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79[3] = type metadata accessor for HandoffRemotePeerInterface.Request.LeaderSessionStarted(0);
  v79[4] = &off_100310CD0;
  v12 = sub_10000F798(v79);
  sub_10015A074(a1, v12, type metadata accessor for HandoffRemotePeerInterface.Request.LeaderSessionStarted);
  UUID.init()();
  UUID.uuidString.getter();
  (*(v8 + 8))(v11, v7);
  v13 = sub_10000B584(8);
  v73 = v14;
  v16 = v15;
  v18 = v17;

  if (qword_1003392F0 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  v20 = sub_100003078(v19, qword_100351320);
  sub_10007E790(v79, aBlock);
  v21 = a2;

  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();

  v24 = os_log_type_enabled(v22, v23);
  v69 = v16;
  v68 = v21;
  if (v24)
  {
    v25 = swift_slowAlloc();
    v67[1] = v12;
    v26 = v21;
    v27 = v25;
    v28 = swift_slowAlloc();
    v72 = v13;
    v29 = v28;
    *&v77[0] = swift_slowAlloc();
    *v27 = 136315906;
    *(v27 + 4) = sub_100017494(0xD000000000000024, 0x80000001002A25C0, v77);
    *(v27 + 12) = 2080;
    sub_10007E790(aBlock, &v74);
    sub_100035D04(&qword_100347E30, &unk_100280190);
    v30 = String.init<A>(describing:)();
    v67[0] = v20;
    v32 = v31;
    sub_10000903C(aBlock);
    v33 = sub_100017494(v30, v32, v77);

    *(v27 + 14) = v33;
    *(v27 + 22) = 2112;
    *(v27 + 24) = v26;
    *v29 = v26;
    *(v27 + 32) = 2080;
    v34 = v26;

    v35 = static String._fromSubstring(_:)();
    v37 = v36;

    v38 = sub_100017494(v35, v37, v77);

    *(v27 + 34) = v38;
    _os_log_impl(&_mh_execute_header, v22, v23, "%s: request=%s, rpCLClient=%@, messageID=%s", v27, 0x2Au);
    sub_1000030B0(v29);
    v13 = v72;

    swift_arrayDestroy();
  }

  else
  {

    sub_10000903C(aBlock);
  }

  v39 = sub_1001CFEE4();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v41 = *(*(Strong + OBJC_IVAR____TtC17proximitycontrold11NearbyAgent__rangingProxy) + 24);
    v42 = Strong;
    v43 = v41;

    if (v41)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v44 = aBlock[0];
      if (aBlock[0] && (v45 = [aBlock[0] discoveryToken], v44, v45))
      {
        sub_100159FB0();
        v46 = sub_100168F0C(v45);
        v48 = v47;

        if (v48 >> 60 != 15)
        {
          strcpy(&v74, "rangingToken");
          BYTE13(v74) = 0;
          HIWORD(v74) = -5120;
          AnyHashable.init<A>(_:)();
          v75 = &type metadata for Data;
          *&v74 = v46;
          *(&v74 + 1) = v48;
          sub_1000516B4(&v74, v77);
          sub_10006DA04(v46, v48);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v76 = v39;
          sub_10004D368(v77, aBlock, isUniquelyReferenced_nonNull_native);
          sub_10006DB04(v46, v48);
          sub_1000516C4(aBlock);
        }
      }

      else
      {
      }
    }
  }

  v50 = Logger.logObject.getter();
  v51 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    aBlock[0] = v53;
    *v52 = 136315138;

    v54 = v69;
    v55 = static String._fromSubstring(_:)();
    v56 = v13;
    v58 = v57;

    v59 = sub_100017494(v55, v58, aBlock);
    v13 = v56;

    *(v52 + 4) = v59;
    _os_log_impl(&_mh_execute_header, v50, v51, "Sending request with messageID: %s", v52, 0xCu);
    sub_10000903C(v53);
  }

  else
  {

    v54 = v69;
  }

  v60 = String._bridgeToObjectiveC()();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v62 = swift_allocObject();
  v63 = v73;
  v62[2] = v13;
  v62[3] = v63;
  v62[4] = v54;
  v62[5] = v18;
  v64 = v70;
  v62[6] = v71;
  v62[7] = v64;
  aBlock[4] = sub_100159F98;
  aBlock[5] = v62;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100151C6C;
  aBlock[3] = &unk_10030B478;
  v65 = _Block_copy(aBlock);

  [v68 sendRequestID:v60 request:isa options:0 responseHandler:v65];
  _Block_release(v65);

  return sub_10000903C(v79);
}

uint64_t sub_100159930(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  *(v2 + 48) = -1;
  if (qword_1003390C8 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100003078(v6, qword_100347D38);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v9 = 136315138;
    v22 = v20;
    UUID.uuidString.getter();
    sub_10000B584(8);
    v21 = a1;

    v10 = static String._fromSubstring(_:)();
    v12 = v11;

    v13._countAndFlagsBits = v10;
    v13._object = v12;
    String.append(_:)(v13);

    v14._countAndFlagsBits = 32;
    v14._object = 0xE100000000000000;
    String.append(_:)(v14);
    v15 = *(a2 + 24);
    v16._countAndFlagsBits = sub_1000092A0();
    String.append(_:)(v16);

    v17._countAndFlagsBits = 62;
    v17._object = 0xE100000000000000;
    String.append(_:)(v17);
    v18 = sub_100017494(60, 0xE100000000000000, &v22);

    *(v9 + 4) = v18;
    a1 = v21;
    _os_log_impl(&_mh_execute_header, v7, v8, "Init: session=%s", v9, 0xCu);
    sub_10000903C(v20);
  }

  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  swift_unownedRetain();
  return v3;
}

_UNKNOWN **sub_100159B88(unsigned __int8 a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (qword_1003390C8 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100003078(v8, qword_100347D38);
  sub_100159EF8(a2, a3, a4);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  sub_100159F24(a2, a3, a4);
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v11 = 136315650;
    *(v11 + 4) = sub_100017494(0xD00000000000002FLL, 0x80000001002A26D0, &v24);
    *(v11 + 12) = 2080;
    v23 = a1;
    v12 = String.init<A>(describing:)();
    v14 = sub_100017494(v12, v13, &v24);

    *(v11 + 14) = v14;
    *(v11 + 22) = 2080;
    if (a4 == 0xFF)
    {
      v17 = 0xE300000000000000;
      v15 = 7104878;
    }

    else
    {
      sub_100159F0C(a2, a3, a4);
      v15 = String.init<A>(describing:)();
      v17 = v16;
    }

    v20 = sub_100017494(v15, v17, &v24);

    *(v11 + 24) = v20;
    _os_log_impl(&_mh_execute_header, v9, v10, "%s: output=%s, lastSentHandoff2UIEvent=%s", v11, 0x20u);
    swift_arrayDestroy();

    v18 = v23;
    if (!v23)
    {
      goto LABEL_20;
    }
  }

  else
  {

    v18 = a1;
    if (!a1)
    {
LABEL_20:
      sub_100035D04(&qword_100347E48, qword_1002801F8);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_10026F050;
      _StringGuts.grow(_:)(36);
      v22._object = 0x80000001002A26A0;
      v22._countAndFlagsBits = 0xD000000000000022;
      String.append(_:)(v22);
      LOBYTE(v24) = 0;
      _print_unlocked<A, B>(_:_:)();
      result = v21;
      *(v21 + 32) = 0;
      *(v21 + 40) = 0xE000000000000000;
      *(v21 + 48) = 0;
      return result;
    }
  }

  if (v18 == 1)
  {
    if (a4)
    {
      if (a4 == 2 && a2 == 2 && !a3)
      {
        return &off_100301618;
      }

      else
      {
        return &off_100301650;
      }
    }

    else
    {
      return &off_1003015E0;
    }
  }

  else if (a4 == 2 && a2 == 4 && !a3)
  {
    return &off_100301688;
  }

  else
  {
    return &off_1003016C0;
  }
}

uint64_t sub_100159EF8(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return sub_100159F0C(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_100159F0C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t sub_100159F24(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return sub_10000F024(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_100159F38(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_100159FB0()
{
  result = qword_100347E38;
  if (!qword_100347E38)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100347E38);
  }

  return result;
}

uint64_t sub_10015A014()
{
  v1 = v0[5];

  if (v0[6])
  {
    v2 = v0[7];
  }

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10015A074(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10015A0DC()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 56);

  return _swift_deallocObject(v0, 64, 7);
}

BOOL sub_10015A19C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = (*(a3 + 8))(a2, a3);
  v5 = *(sub_1000089FC(a1, v4) + 16);

  return v5 != 0;
}

unint64_t sub_10015A1F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100035D04(&qword_10033C280, &qword_100272A80);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v29[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v10 = &v29[-v9];
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  v13 = v12[8];
  v14 = __chkstk_darwin(v11);
  v16 = &v29[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v14);
  v18 = &v29[-v17];
  sub_10006C4AC(a1, v10);
  v19 = v12[6];
  if (v19(v10, 1, v11) == 1)
  {
    v20 = v10;
  }

  else
  {
    v21 = v10;
    v22 = v12[4];
    v22(v18, v21, v11);
    sub_10006C4AC(a2, v8);
    if (v19(v8, 1, v11) != 1)
    {
      v22(v16, v8, v11);
      Date.timeIntervalSince(_:)();
      *&v25 = v25;
      v26 = LODWORD(v25);
      v27 = v12[1];
      v27(v16, v11);
      v27(v18, v11);
      v24 = 0;
      v23 = v26 & 0x7FFFFFFF;
      return v23 | (v24 << 32);
    }

    (v12[1])(v18, v11);
    v20 = v8;
  }

  sub_1000097E8(v20, &qword_10033C280, &qword_100272A80);
  v23 = 0;
  v24 = 1;
  return v23 | (v24 << 32);
}

uint64_t sub_10015A48C()
{
  v0 = type metadata accessor for Logger();
  sub_100036838(v0, qword_100347E50);
  sub_100003078(v0, qword_100347E50);
  return Logger.init(subsystem:category:)();
}

void sub_10015A50C()
{
  v1 = v0;
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1003390D0 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_100003078(v7, qword_100347E50);

  v17 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v17, v8))
  {
    v9 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v9 = 136315394;
    *(v9 + 4) = sub_100017494(0xD000000000000016, 0x80000001002A2790, &v18);
    *(v9 + 12) = 2080;
    v10 = OBJC_IVAR____TtC17proximitycontrold34LockscreenControlsAnalyticsManager_lastDiscoveryBeganDate;
    swift_beginAccess();
    (*(v3 + 16))(v6, v1 + v10, v2);
    sub_10015CC9C();
    v11 = dispatch thunk of CustomStringConvertible.description.getter();
    v13 = v12;
    (*(v3 + 8))(v6, v2);
    v14 = sub_100017494(v11, v13, &v18);

    *(v9 + 14) = v14;
    _os_log_impl(&_mh_execute_header, v17, v8, "%s: %s", v9, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v15 = v17;
  }
}

uint64_t sub_10015A7BC()
{
  v0 = type metadata accessor for LockscreenControlsAnalyticsManager();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_10015A7FC();
  qword_10038B2D8 = result;
  return result;
}

uint64_t sub_10015A7FC()
{
  v1 = v0;
  v20 = sub_100035D04(&qword_100347FF8, &qword_100280438);
  v2 = *(v20 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v20);
  v5 = &v19 - v4;
  v6 = sub_100035D04(&qword_100348000, &unk_100280440);
  v7 = *(v6 - 8);
  v21 = v6;
  v22 = v7;
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v19 - v9;
  Date.init()();
  *(v0 + OBJC_IVAR____TtC17proximitycontrold34LockscreenControlsAnalyticsManager_discoveryDates) = _swiftEmptyDictionarySingleton;
  *(v0 + OBJC_IVAR____TtC17proximitycontrold34LockscreenControlsAnalyticsManager_firstMeasurementDates) = _swiftEmptyDictionarySingleton;
  v11 = OBJC_IVAR____TtC17proximitycontrold34LockscreenControlsAnalyticsManager_backlightMonitor;
  v12 = [objc_allocWithZone(type metadata accessor for BacklightMonitor()) init];
  *(v1 + v11) = v12;
  v23 = OBJC_IVAR____TtC17proximitycontrold34LockscreenControlsAnalyticsManager_tasks;
  *(v1 + OBJC_IVAR____TtC17proximitycontrold34LockscreenControlsAnalyticsManager_tasks) = &_swiftEmptySetSingleton;
  v13 = *&v12[OBJC_IVAR____TtC17proximitycontrold16BacklightMonitor__backlightState];
  v19 = v12;

  v24 = sub_10005E680();
  sub_100035D04(&qword_10033C358, &qword_100272B70);
  sub_10000E244(&qword_100348008, &qword_10033C358, &qword_100272B70);
  v14 = Publisher.eraseToAnyPublisher()();

  v24 = v14;
  swift_getKeyPath();
  sub_100035D04(&qword_100348010, &qword_100280478);
  sub_10000E244(&qword_100348018, &qword_100348010, &qword_100280478);
  Publisher.map<A>(_:)();

  sub_10000E244(&qword_100348020, &qword_100347FF8, &qword_100280438);
  v15 = v20;
  Publisher<>.removeDuplicates()();
  (*(v2 + 8))(v5, v15);
  sub_10000E244(&qword_100348028, &qword_100348000, &unk_100280440);
  v16 = v21;
  v17 = Publisher.eraseToAnyPublisher()();

  (*(v22 + 8))(v10, v16);
  v24 = v17;
  swift_allocObject();
  swift_weakInit();
  sub_100035D04(&unk_1003436E0, &unk_100276210);
  sub_10000E244(&qword_10034A4B0, &unk_1003436E0, &unk_100276210);
  Publisher<>.sink(receiveValue:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  return v1;
}

uint64_t sub_10015AC70(_BYTE *a1)
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  result = __chkstk_darwin(v2);
  v7 = &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (*a1 == 1)
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      v8 = result;
      Date.init()();
      v9 = OBJC_IVAR____TtC17proximitycontrold34LockscreenControlsAnalyticsManager_lastDiscoveryBeganDate;
      swift_beginAccess();
      (*(v3 + 24))(v8 + v9, v7, v2);
      swift_endAccess();
      sub_10015A50C();

      return (*(v3 + 8))(v7, v2);
    }
  }

  return result;
}

__n128 sub_10015ADC4@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  *(&v75 + 1) = a3;
  v91 = a2;
  v84 = a4;
  v7 = sub_100035D04(&qword_10033C280, &qword_100272A80);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v79 = &v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v89 = &v71 - v12;
  v13 = __chkstk_darwin(v11);
  v15 = &v71 - v14;
  __chkstk_darwin(v13);
  v17 = &v71 - v16;
  v18 = type metadata accessor for Date();
  v93 = *(v18 - 8);
  v19 = *(v93 + 64);
  __chkstk_darwin(v18);
  v87 = &v71 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for UUID();
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21);
  v82 = v25;
  v83 = v24;
  v26 = *(v25 + 16);
  v90 = &v71 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26();
  v27 = *(*(a1 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice__mediaRemoteDisplayContext) + 24);
  v88 = v17;
  v28 = v18;
  if (v27)
  {
    v29 = v27;
    LODWORD(v75) = sub_1000AF120();
  }

  else
  {
    LODWORD(v75) = 7;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v30 = sub_10000A0B4();
  v80 = v31;
  v81 = v30;

  v78 = *(a1 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_lastDistanceMeasurementQuality);
  v77 = *(a1 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_lastDistanceMeasurementQuality + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v76 = sub_10000E120();

  v32 = OBJC_IVAR____TtC17proximitycontrold34LockscreenControlsAnalyticsManager_lastDiscoveryBeganDate;
  swift_beginAccess();
  v33 = v28;
  v92 = *(v93 + 16);
  v92(v87, v5 + v32, v28);
  v34 = OBJC_IVAR____TtC17proximitycontrold34LockscreenControlsAnalyticsManager_discoveryDates;
  swift_beginAccess();
  v35 = *(v5 + v34);
  if (*(v35 + 16))
  {

    v36 = sub_100019110(v90);
    v37 = v88;
    if (v38)
    {
      v92(v88, *(v35 + 56) + *(v93 + 72) * v36, v28);
      v39 = 0;
    }

    else
    {
      v39 = 1;
    }
  }

  else
  {
    v39 = 1;
    v37 = v88;
  }

  v40 = 1;
  v86 = *(v93 + 56);
  v86(v37, v39, 1, v28);
  v41 = OBJC_IVAR____TtC17proximitycontrold34LockscreenControlsAnalyticsManager_firstMeasurementDates;
  swift_beginAccess();
  v42 = *(v5 + v41);
  if (*(v42 + 16))
  {

    v43 = sub_100019110(v90);
    if (v44)
    {
      v92(v15, *(v42 + 56) + *(v93 + 72) * v43, v28);
      v40 = 0;
    }

    else
    {
      v40 = 1;
    }
  }

  v45 = v86;
  v86(v15, v40, 1, v28);
  v46 = v89;
  v92(v89, *(&v75 + 1), v28);
  v45(v46, 0, 1, v28);
  if ((v91 & 0x100000000) != 0)
  {
    v48 = *(a1 + 24);
    v49 = *(v48 + 24);

    CurrentValueSubject.value.getter();
    if (BYTE5(v117))
    {
      v50 = *(v48 + 16);
      CurrentValueSubject.value.getter();

      v91 = v110;
      v47 = BYTE4(v110);
    }

    else
    {
      v51 = BYTE4(v117);
      v91 = v117;

      v47 = v51 & 1;
    }
  }

  else
  {
    v47 = 0;
  }

  v74 = v47;
  v85 = v15;
  if (v75 <= 3u)
  {
    if (v75 > 1u)
    {
      if (v75 == 2)
      {
        *(&v75 + 1) = 0xE500000000000000;
        v52 = 0x656E6F6850;
      }

      else
      {
        *(&v75 + 1) = 0xE700000000000000;
        v52 = 0x74736163646F50;
      }
    }

    else if (v75)
    {
      *(&v75 + 1) = 0xE500000000000000;
      v52 = 0x636973754DLL;
    }

    else
    {
      *(&v75 + 1) = 0xE800000000000000;
      v52 = 0x656D695465636146;
    }

    goto LABEL_37;
  }

  if (v75 > 5u)
  {
    if (v75 == 6)
    {
      *(&v75 + 1) = 0xEB000000006C6C61;
      v52 = 0x436E776F6E6B6E55;
    }

    else if (v75 == 7)
    {
      *(&v75 + 1) = 0xEC00000061696465;
      v52 = 0x4D6E776F6E6B6E55;
    }

    else
    {
      *(&v75 + 1) = 0xE700000000000000;
      v52 = 0x6E776F6E6B6E55;
    }

    goto LABEL_37;
  }

  if (v75 != 4)
  {
    *(&v75 + 1) = 0x8000000100297170;
    v52 = 0xD00000000000001ALL;
LABEL_37:
    *&v75 = v52;
    goto LABEL_38;
  }

  *&v75 = 0xD000000000000019;
  *(&v75 + 1) = 0x8000000100297150;
LABEL_38:
  v53 = v79;
  v54 = v87;
  v55 = v92;
  v92(v79, v87, v28);
  v56 = v86;
  v86(v53, 0, 1, v28);
  v57 = sub_10015A1F4(v53, v37);
  v58 = BYTE4(v57);
  v71 = v57;
  sub_1000097E8(v53, &qword_10033C280, &qword_100272A80);
  v109 = v58 & 1;
  v59 = v85;
  v73 = sub_10015A1F4(v37, v85);
  v100 = BYTE4(v73) & 1;
  v60 = v89;
  v72 = sub_10015A1F4(v59, v89);
  v97 = BYTE4(v72) & 1;
  v55(v53, v54, v28);
  v56(v53, 0, 1, v28);
  v61 = sub_10015A1F4(v53, v60);
  sub_1000097E8(v53, &qword_10033C280, &qword_100272A80);
  v103 = BYTE4(v61) & 1;
  v106 = v74;
  v62 = sub_10020828C(v78, v77);
  v92 = v63;
  *&v117 = sub_100016BD4(v76);
  sub_100035D04(&qword_1003397D0, &qword_1002729A0);
  sub_10000E244(&qword_10033D8A0, &qword_1003397D0, &qword_1002729A0);
  v64 = BidirectionalCollection<>.joined(separator:)();
  v66 = v65;
  sub_1000097E8(v60, &qword_10033C280, &qword_100272A80);
  sub_1000097E8(v85, &qword_10033C280, &qword_100272A80);
  sub_1000097E8(v88, &qword_10033C280, &qword_100272A80);
  (*(v93 + 8))(v54, v33);
  (*(v82 + 8))(v90, v83);

  v110 = v75;
  LODWORD(v111) = v71;
  BYTE4(v111) = v109;
  *(&v111 + 5) = v107;
  BYTE7(v111) = v108;
  DWORD2(v111) = v91;
  BYTE12(v111) = v106;
  *(&v111 + 13) = v104;
  HIBYTE(v111) = v105;
  LODWORD(v112) = v61;
  BYTE4(v112) = v103;
  BYTE7(v112) = v102;
  *(&v112 + 5) = v101;
  DWORD2(v112) = v73;
  BYTE12(v112) = v100;
  HIBYTE(v112) = v99;
  *(&v112 + 13) = v98;
  v113.n128_u64[0] = v81;
  v113.n128_u64[1] = v80;
  LODWORD(v114) = v72;
  BYTE4(v114) = v97;
  *(&v114 + 5) = v95;
  BYTE7(v114) = v96;
  *(&v114 + 1) = v62;
  *&v115 = v92;
  *(&v115 + 1) = v64;
  v116 = v66;
  v117 = v75;
  v118 = v71;
  v119 = v109;
  v120 = v107;
  v121 = v108;
  v122 = v91;
  v123 = v106;
  v125 = v105;
  v124 = v104;
  v126 = v61;
  v127 = v103;
  v129 = v102;
  v128 = v101;
  v130 = v73;
  v131 = v100;
  v133 = v99;
  v132 = v98;
  v134 = v81;
  v135 = v80;
  v136 = v72;
  v137 = v97;
  v139 = v96;
  v138 = v95;
  v140 = v62;
  v141 = v92;
  v142 = v64;
  v143 = v66;
  sub_10011D9B8(&v110, &v94);
  sub_10015CC40(&v117);
  v67 = v115;
  v68 = v84;
  *(v84 + 64) = v114;
  *(v68 + 80) = v67;
  *(v68 + 96) = v116;
  v69 = v111;
  *v68 = v110;
  *(v68 + 16) = v69;
  result = v113;
  *(v68 + 32) = v112;
  *(v68 + 48) = result;
  return result;
}

uint64_t sub_10015B870(void *a1)
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1003390D0 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_100003078(v7, qword_100347E50);
  v8 = a1;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    *(v11 + 4) = v8;
    *v12 = v8;
    v13 = v8;
    _os_log_impl(&_mh_execute_header, v9, v10, "Did switch route to %@", v11, 0xCu);
    sub_1000097E8(v12, &qword_100339940, &unk_100272C50);
  }

  Date.init()();
  sub_10015BB10(v8, v6);
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_10015BB10(void *a1, uint64_t a2)
{
  if (qword_100338E78 != -1)
  {
    v24 = a1;
    swift_once();
    a1 = v24;
  }

  v3 = *(*(qword_10038AEE0 + 16) + 24);
  if (!v3)
  {
    goto LABEL_7;
  }

  v4 = *(v3 + 16) + qword_100346AF8;
  v5 = a1;

  os_unfair_lock_lock(v4);
  v6 = *(v4 + 8);

  v8 = sub_10015CA2C(v7, v5);

  os_unfair_lock_unlock(v4);

  if (v8)
  {
    v9 = [v5 distance];
    v10 = v9;
    if (v9)
    {
      [v9 floatValue];
      v12 = v11;

      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    LOBYTE(v27[0]) = v10 == 0;
    sub_10015ADC4(v8, v13 | ((v10 == 0) << 32), a2, v29);
    if (qword_1003390D0 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_100003078(v16, qword_100347E50);
    sub_10011D9B8(v29, v27);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    sub_10015CC40(v29);
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v26 = v20;
      *v19 = 136315138;
      v27[4] = v29[4];
      v27[5] = v29[5];
      v28 = v30;
      v27[0] = v29[0];
      v27[1] = v29[1];
      v27[2] = v29[2];
      v27[3] = v29[3];
      sub_10011D9B8(v29, &v25);
      v21 = String.init<A>(describing:)();
      v23 = sub_100017494(v21, v22, &v26);

      *(v19 + 4) = v23;
      _os_log_impl(&_mh_execute_header, v17, v18, "Logging: %s", v19, 0xCu);
      sub_10000903C(v20);
    }

    sub_10011843C();

    return sub_10015CC40(v29);
  }

  else
  {
LABEL_7:
    sub_10011D74C();
    swift_allocError();
    *v14 = 0xD000000000000018;
    v14[1] = 0x80000001002A2800;
    return swift_willThrow();
  }
}

uint64_t sub_10015BE48(uint64_t a1)
{
  v3 = sub_100035D04(&qword_10033C280, &qword_100272A80);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v25 - v5;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1003390D0 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_100003078(v12, qword_100347E50);

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v27 = v1;
    v16 = v15;
    v17 = swift_slowAlloc();
    v26 = v7;
    v18 = v17;
    v28[0] = v17;
    *v16 = 136315138;
    v19 = sub_1000092A0();
    v21 = sub_100017494(v19, v20, v28);

    *(v16 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v13, v14, "Ranging did discover %s", v16, 0xCu);
    sub_10000903C(v18);
    v7 = v26;
  }

  v22 = OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_id;
  (*(v8 + 16))(v11, a1 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_id, v7);
  Date.init()();
  v23 = type metadata accessor for Date();
  (*(*(v23 - 8) + 56))(v6, 0, 1, v23);
  swift_beginAccess();
  sub_1001CF9B4(v6, v11);
  swift_endAccess();
  swift_beginAccess();
  sub_1001D0B58(a1 + v22, v6);
  sub_1000097E8(v6, &qword_10033C280, &qword_100272A80);
  return swift_endAccess();
}

uint64_t sub_10015C174(uint64_t a1)
{
  v2 = sub_100035D04(&qword_10033C280, &qword_100272A80);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v16 - v4;
  if (qword_1003390D0 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100003078(v6, qword_100347E50);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v17 = v10;
    *v9 = 136315138;
    v11 = sub_1000092A0();
    v13 = sub_100017494(v11, v12, &v17);

    *(v9 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v7, v8, "Ranging did remove %s", v9, 0xCu);
    sub_10000903C(v10);
  }

  v14 = OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_id;
  swift_beginAccess();
  sub_1001D0B58(a1 + v14, v5);
  sub_1000097E8(v5, &qword_10033C280, &qword_100272A80);
  swift_endAccess();
  swift_beginAccess();
  sub_1001D0B58(a1 + v14, v5);
  sub_1000097E8(v5, &qword_10033C280, &qword_100272A80);
  return swift_endAccess();
}

uint64_t sub_10015C3CC(uint64_t a1)
{
  v44 = a1;
  v42 = type metadata accessor for UUID();
  v2 = *(v42 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v42);
  v43 = v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100035D04(&qword_10033C280, &qword_100272A80);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v9 = v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = v39 - v10;
  v12 = OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_id;
  v13 = OBJC_IVAR____TtC17proximitycontrold34LockscreenControlsAnalyticsManager_firstMeasurementDates;
  swift_beginAccess();
  v41 = v1;
  v14 = *(v1 + v13);
  if (*(v14 + 16))
  {

    v15 = sub_100019110(v44 + v12);
    if (v16)
    {
      v17 = v15;
      v18 = *(v14 + 56);
      v19 = type metadata accessor for Date();
      v20 = *(v19 - 8);
      (*(v20 + 16))(v11, v18 + *(v20 + 72) * v17, v19);

      (*(v20 + 56))(v11, 0, 1, v19);
      return sub_1000097E8(v11, &qword_10033C280, &qword_100272A80);
    }
  }

  v40 = v2;
  v22 = type metadata accessor for Date();
  v23 = *(v22 - 8);
  v24 = *(v23 + 56);
  v25 = v23 + 56;
  v24(v11, 1, 1, v22);
  sub_1000097E8(v11, &qword_10033C280, &qword_100272A80);
  if (qword_1003390D0 != -1)
  {
    swift_once();
  }

  v26 = type metadata accessor for Logger();
  sub_100003078(v26, qword_100347E50);

  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v39[1] = v25;
    v30 = v29;
    v31 = swift_slowAlloc();
    v39[2] = v13;
    v32 = v31;
    v45[0] = v31;
    *v30 = 136315138;
    v33 = sub_1000092A0();
    v35 = v22;
    v36 = v24;
    v37 = sub_100017494(v33, v34, v45);

    *(v30 + 4) = v37;
    v24 = v36;
    v22 = v35;
    _os_log_impl(&_mh_execute_header, v27, v28, "Ranging did update %s", v30, 0xCu);
    sub_10000903C(v32);
  }

  v38 = v43;
  (*(v40 + 16))(v43, v44 + v12, v42);
  Date.init()();
  v24(v9, 0, 1, v22);
  swift_beginAccess();
  sub_1001CF9B4(v9, v38);
  return swift_endAccess();
}

uint64_t sub_10015C84C()
{
  v1 = OBJC_IVAR____TtC17proximitycontrold34LockscreenControlsAnalyticsManager_lastDiscoveryBeganDate;
  v2 = type metadata accessor for Date();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC17proximitycontrold34LockscreenControlsAnalyticsManager_discoveryDates);

  v4 = *(v0 + OBJC_IVAR____TtC17proximitycontrold34LockscreenControlsAnalyticsManager_firstMeasurementDates);

  v5 = *(v0 + OBJC_IVAR____TtC17proximitycontrold34LockscreenControlsAnalyticsManager_tasks);

  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for LockscreenControlsAnalyticsManager()
{
  result = qword_100347EA8;
  if (!qword_100347EA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10015C97C()
{
  result = type metadata accessor for Date();
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

uint64_t sub_10015CA2C(uint64_t a1, void *a2)
{
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  v20 = v2;
  while (v5)
  {
    v9 = v8;
LABEL_11:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = *(*(a1 + 56) + ((v9 << 9) | (8 * v10)));
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    v12 = sub_10000DF0C();
    v14 = v13;

    v15 = [a2 mediaRouteID];
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    if (v14)
    {
      if (v12 == v16 && v14 == v18)
      {

        return v11;
      }

      v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v19)
      {

        return v11;
      }
    }

    else
    {
    }

    v8 = v9;
    v2 = v20;
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      return 0;
    }

    v5 = *(v2 + 8 * v9);
    ++v8;
    if (v5)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_10015CC9C()
{
  result = qword_100345628;
  if (!qword_100345628)
  {
    type metadata accessor for Date();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100345628);
  }

  return result;
}

__n128 sub_10015CCF4(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  result = a2[8];
  v9 = a2[9];
  v10 = a2[10];
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 144) = v9;
  *(a1 + 160) = v10;
  *(a1 + 128) = result;
  return result;
}

uint64_t sub_10015CD30(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 177))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 88);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_10015CD8C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 168) = 0;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 176) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 177) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 177) = 0;
    }

    if (a2)
    {
      *(result + 88) = a2;
    }
  }

  return result;
}

uint64_t type metadata accessor for HandoffTargetStatus()
{
  result = qword_100348090;
  if (!qword_100348090)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10015CE94()
{
  sub_10015CF30();
  if (v0 <= 0x3F)
  {
    sub_10015CF80();
    if (v1 <= 0x3F)
    {
      sub_10015CFD8();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10015CF30()
{
  if (!qword_1003480A0)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1003480A0);
    }
  }
}

void sub_10015CF80()
{
  if (!qword_1003480A8)
  {
    type metadata accessor for ShareableContent(255);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1003480A8);
    }
  }
}

void sub_10015CFD8()
{
  if (!qword_1003480B0)
  {
    sub_100035D4C(&unk_1003480B8, &qword_100280538);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1003480B0);
    }
  }
}

uint64_t sub_10015D03C(uint64_t a1)
{
  v5[3] = a1;
  v2 = sub_10000F798(v5);
  sub_10015DE6C(v1, v2);
  v3 = sub_1000CF5E0(v5);
  sub_10000903C(v5);
  return v3;
}

uint64_t sub_10015D098(void *a1)
{
  v3 = v1;
  v5 = sub_100035D04(&qword_100348168, &qword_1002806F8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v17 - v8;
  v10 = a1[4];
  sub_10000EBC0(a1, a1[3]);
  sub_10015E3D4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *(v3 + 4);
  v12 = *(v3 + 40);
  v13 = v3[1];
  v19 = *v3;
  v20 = v13;
  v21 = v11;
  v22 = v12;
  v18 = 0;
  sub_10015E59C();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (!v2)
  {
    v14 = type metadata accessor for HandoffTargetStatus();
    v15 = *(v14 + 20);
    LOBYTE(v19) = 1;
    type metadata accessor for ShareableContent(0);
    sub_10015E5F0(&qword_100348178, type metadata accessor for ShareableContent);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    *&v19 = *(v3 + *(v14 + 24));
    v18 = 2;
    sub_100035D04(&unk_1003480B8, &qword_100280538);
    sub_10015E638(&qword_100348180, sub_10015E6B0);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_10015D304@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v3 = sub_100035D04(&qword_100348030, qword_1002804F0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v31 = &v28 - v5;
  v6 = sub_100035D04(&qword_100348138, &qword_1002806F0);
  v33 = *(v6 - 8);
  v34 = v6;
  v7 = *(v33 + 64);
  __chkstk_darwin(v6);
  v9 = &v28 - v8;
  v10 = type metadata accessor for HandoffTargetStatus();
  v11 = v10 - 8;
  v12 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v14 = xmmword_100270E80;
  *(v14 + 3) = 0;
  *(v14 + 4) = 0;
  *(v14 + 2) = 0;
  v14[40] = 0;
  v15 = *(v11 + 28);
  v16 = type metadata accessor for ShareableContent(0);
  (*(*(v16 - 8) + 56))(&v14[v15], 1, 1, v16);
  v17 = *(v11 + 32);
  *&v14[v17] = 0;
  v18 = a1[4];
  sub_10000EBC0(a1, a1[3]);
  sub_10015E3D4();
  v32 = v9;
  v19 = v35;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v19)
  {
    v27 = a1;
  }

  else
  {
    v28 = v17;
    v29 = v15;
    v35 = a1;
    v20 = v31;
    v40 = 0;
    sub_10015E484();
    v21 = v34;
    v22 = v32;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v23 = v38;
    v24 = v39;
    v25 = v37;
    *v14 = v36;
    *(v14 + 1) = v25;
    *(v14 + 4) = v23;
    v14[40] = v24;
    LOBYTE(v36) = 1;
    sub_10015E5F0(&qword_100348150, type metadata accessor for ShareableContent);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    sub_10015E4D8(v20, &v14[v29]);
    sub_100035D04(&unk_1003480B8, &qword_100280538);
    v40 = 2;
    sub_10015E638(&qword_100348158, sub_10015E548);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v33 + 8))(v22, v21);
    *&v14[v28] = v36;
    sub_10015DE6C(v14, v30);
    v27 = v35;
  }

  sub_10000903C(v27);
  return sub_10015E428(v14);
}

uint64_t sub_10015D6D8()
{
  v1 = 0xD000000000000010;
  if (*v0 != 1)
  {
    v1 = 0x7367616C66;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x697463416C6C6163;
  }
}

uint64_t sub_10015D73C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10015DED0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10015D764(uint64_t a1)
{
  v2 = sub_10015E3D4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10015D7A0(uint64_t a1)
{
  v2 = sub_10015E3D4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10015D80C(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 2);
  v4 = *(v1 + 1);
  v5 = *(v1 + 16);
  v10 = a1;
  LOWORD(v8[0]) = v2;
  BYTE2(v8[0]) = v3;
  v8[1] = v4;
  v9 = v5;
  v6 = sub_1000CF61C(v8);
  sub_10000903C(v8);
  return v6;
}

unint64_t sub_10015D874()
{
  v1 = 0x697463416C6C6163;
  v2 = 0x6353657669746361;
  if (*v0 != 2)
  {
    v2 = 0x4174756F656D6974;
  }

  if (*v0)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_10015D910@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10015DFF0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10015D938(uint64_t a1)
{
  v2 = sub_10015E380();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10015D974(uint64_t a1)
{
  v2 = sub_10015E380();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10015D9B0(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v14 = a4;
  v6 = sub_100035D04(&qword_100348130, &qword_1002806E8);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v13 - v9;
  v11 = a1[4];
  sub_10000EBC0(a1, a1[3]);
  sub_10015E380();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v18 = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (v4)
  {
    return (*(v7 + 8))(v10, v6);
  }

  v17 = 1;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v16 = 2;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v15 = 3;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_10015DB84@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_10015E16C(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 2) = BYTE2(result);
    *(a2 + 8) = v5;
    *(a2 + 16) = v6 & 1;
  }

  return result;
}

uint64_t sub_10015DC3C(uint64_t a1)
{
  *(a1 + 8) = sub_10015E5F0(&qword_1003480F0, type metadata accessor for HandoffTargetStatus);
  result = sub_10015E5F0(&qword_1003480F8, type metadata accessor for HandoffTargetStatus);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_10015DCC0(uint64_t a1)
{
  *(a1 + 8) = sub_10015DCF0();
  result = sub_10015DD44();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_10015DCF0()
{
  result = qword_100348100;
  if (!qword_100348100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100348100);
  }

  return result;
}

unint64_t sub_10015DD44()
{
  result = qword_100348108;
  if (!qword_100348108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100348108);
  }

  return result;
}

unint64_t sub_10015DD98(uint64_t a1)
{
  result = sub_10015DDC0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10015DDC0()
{
  result = qword_100348110;
  if (!qword_100348110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100348110);
  }

  return result;
}

uint64_t sub_10015DE14(uint64_t a1)
{
  result = sub_10015E5F0(&qword_100348118, type metadata accessor for HandoffTargetStatus);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10015DE6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HandoffTargetStatus();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10015DED0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x697463416C6C6163 && a2 == 0xEC00000079746976;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001002A28A0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7367616C66 && a2 == 0xE500000000000000)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

uint64_t sub_10015DFF0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x697463416C6C6163 && a2 == 0xEC00000079746976;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001002A28A0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6353657669746361 && a2 == 0xEF6F666E49656E65 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x4174756F656D6974 && a2 == 0xEC00000072657466)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_10015E16C(uint64_t *a1)
{
  v3 = sub_100035D04(&qword_100348120, &qword_1002806E0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v12 - v6;
  v8 = a1[4];
  sub_10000EBC0(a1, a1[3]);
  sub_10015E380();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    return sub_10000903C(a1);
  }

  v17 = 0;
  v9 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v16 = 1;
  v10 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v15 = 2;
  v13 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v14 = 3;
  KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  (*(v4 + 8))(v7, v3);
  sub_10000903C(a1);
  return v9 | (v10 << 8) | (v13 << 16);
}

unint64_t sub_10015E380()
{
  result = qword_100348128;
  if (!qword_100348128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100348128);
  }

  return result;
}

unint64_t sub_10015E3D4()
{
  result = qword_100348140;
  if (!qword_100348140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100348140);
  }

  return result;
}

uint64_t sub_10015E428(uint64_t a1)
{
  v2 = type metadata accessor for HandoffTargetStatus();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10015E484()
{
  result = qword_100348148;
  if (!qword_100348148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100348148);
  }

  return result;
}

uint64_t sub_10015E4D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100035D04(&qword_100348030, qword_1002804F0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_10015E548()
{
  result = qword_100348160;
  if (!qword_100348160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100348160);
  }

  return result;
}

unint64_t sub_10015E59C()
{
  result = qword_100348170;
  if (!qword_100348170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100348170);
  }

  return result;
}

uint64_t sub_10015E5F0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10015E638(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100035D4C(&unk_1003480B8, &qword_100280538);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10015E6B0()
{
  result = qword_100348188;
  if (!qword_100348188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100348188);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HandoffTargetStatusRequest(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && a1[17])
  {
    return (*a1 + 254);
  }

  v3 = *a1;
  if (v3 >= 2)
  {
    v4 = ((v3 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v4 = -2;
  }

  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for HandoffTargetStatusRequest(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

unint64_t sub_10015E7DC()
{
  result = qword_100348190;
  if (!qword_100348190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100348190);
  }

  return result;
}

unint64_t sub_10015E834()
{
  result = qword_100348198;
  if (!qword_100348198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100348198);
  }

  return result;
}

unint64_t sub_10015E88C()
{
  result = qword_1003481A0;
  if (!qword_1003481A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003481A0);
  }

  return result;
}

unint64_t sub_10015E8E4()
{
  result = qword_1003481A8;
  if (!qword_1003481A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003481A8);
  }

  return result;
}

unint64_t sub_10015E93C()
{
  result = qword_1003481B0;
  if (!qword_1003481B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003481B0);
  }

  return result;
}

unint64_t sub_10015E994()
{
  result = qword_1003481B8;
  if (!qword_1003481B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003481B8);
  }

  return result;
}

id sub_10015EA28()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SceneDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t static EdgeBuilder.buildExpression<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  type metadata accessor for Array();
  v7 = *(a6 + 8);
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for Edge2();
  type metadata accessor for Array();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return Sequence.flatMap<A>(_:)();
}

uint64_t static EdgeBuilder.buildBlock<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  type metadata accessor for Array();
  type metadata accessor for Array();
  swift_getWitnessTable();
  swift_getWitnessTable();
  Sequence.flatMap<A>(_:)();
  v7 = *(a6 + 8);
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for Edge2();
  type metadata accessor for Array();
  swift_getWitnessTable();
  v8 = Sequence.flatMap<A>(_:)();

  return v8;
}

uint64_t static EdgeBuilder.buildArray<A>(_:)()
{
  type metadata accessor for Array();
  type metadata accessor for Array();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return Sequence.flatMap<A>(_:)();
}

uint64_t sub_10015EEA0@<X0>(uint64_t *a1@<X8>)
{
  result = (*(*(v1 + 48) + 16))(*(v1 + 40));
  *a1 = result;
  return result;
}

uint64_t static EdgeBuilder.buildOptional<A>(_:)(uint64_t a1)
{
  if (a1)
  {
    v1 = a1;
  }

  else
  {
    v1 = static Array._allocateUninitialized(_:)();
  }

  return v1;
}

unint64_t sub_10015EFB8()
{
  result = qword_1003482D0;
  if (!qword_1003482D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003482D0);
  }

  return result;
}

uint64_t sub_10015F21C(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3 <= 1u)
  {
    if (!a3)
    {
      if (!a6)
      {
        return *&a1 == *&a4;
      }

      return 0;
    }

    if (a6 == 1)
    {
      return (a4 ^ a1 ^ 1) & 1;
    }
  }

  else
  {
    if (a3 != 2)
    {
      if (a3 == 3)
      {
        if (a6 != 3)
        {
          return 0;
        }

        return (a4 ^ a1 ^ 1) & 1;
      }

      return a6 == 4 && !(a5 | a4);
    }

    if (a6 == 2)
    {
      if (a2)
      {
        return a5 && (a1 == a4 && a2 == a5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0);
      }

      if (!a5)
      {
        return 1;
      }
    }
  }

  return 0;
}

void sub_10015F318(char a1)
{
  v1 = qword_100338F18;
  if (!a1)
  {
LABEL_7:
    if (v1 != -1)
    {
      swift_once();
    }

    v9 = qword_10038B0B8;
    v10 = *(qword_10038B0B8 + 1624);
    sub_10005FA50();
    v12 = v11;

    v13 = *(v9 + 1616);
    sub_10005FA50();
    v15 = v14;

    if (v12 > v15)
    {
      __break(1u);
      goto LABEL_11;
    }

    return;
  }

  if (a1 != 1)
  {
LABEL_11:
    if (v1 != -1)
    {
      swift_once();
    }

    v16 = qword_10038B0B8;
    v17 = *(qword_10038B0B8 + 1640);
    sub_10005FA50();
    v19 = v18;

    v20 = *(v16 + 1616);
    sub_10005FA50();
    v22 = v21;

    if (v19 > v22)
    {
      __break(1u);
    }

    return;
  }

  if (qword_100338F18 != -1)
  {
    swift_once();
  }

  v2 = qword_10038B0B8;
  v3 = *(qword_10038B0B8 + 1632);
  sub_10005FA50();
  v5 = v4;

  v6 = *(v2 + 1616);
  sub_10005FA50();
  v8 = v7;

  if (v5 > v8)
  {
    __break(1u);
    goto LABEL_7;
  }
}

void sub_10015F4A0(char a1)
{
  v1 = qword_100338F18;
  if (!a1)
  {
LABEL_7:
    if (v1 != -1)
    {
      swift_once();
    }

    v9 = qword_10038B0B8;
    v10 = *(qword_10038B0B8 + 1624);
    sub_10005FA50();
    v12 = v11;

    v13 = *(v9 + 1696);
    sub_10005FA50();
    v15 = v14;

    if (v12 > v15)
    {
      __break(1u);
      goto LABEL_11;
    }

    return;
  }

  if (a1 != 1)
  {
LABEL_11:
    if (v1 != -1)
    {
      swift_once();
    }

    v16 = qword_10038B0B8;
    v17 = *(qword_10038B0B8 + 1640);
    sub_10005FA50();
    v19 = v18;

    v20 = *(v16 + 1712);
    sub_10005FA50();
    v22 = v21;

    if (v19 > v22)
    {
      __break(1u);
    }

    return;
  }

  if (qword_100338F18 != -1)
  {
    swift_once();
  }

  v2 = qword_10038B0B8;
  v3 = *(qword_10038B0B8 + 1632);
  sub_10005FA50();
  v5 = v4;

  v6 = *(v2 + 1704);
  sub_10005FA50();
  v8 = v7;

  if (v5 > v8)
  {
    __break(1u);
    goto LABEL_7;
  }
}

uint64_t sub_10015F628(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x656772616CLL;
  if (v2 != 1)
  {
    v3 = 0x726568746FLL;
  }

  if (*a1)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0x746C7561666564;
  }

  if (v2)
  {
    v5 = 0xE500000000000000;
  }

  else
  {
    v5 = 0xE700000000000000;
  }

  v6 = 0x656772616CLL;
  if (*a2 != 1)
  {
    v6 = 0x726568746FLL;
  }

  if (*a2)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0x746C7561666564;
  }

  if (*a2)
  {
    v8 = 0xE500000000000000;
  }

  else
  {
    v8 = 0xE700000000000000;
  }

  if (v4 == v7 && v5 == v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

Swift::Int sub_10015F71C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10015F7B8()
{
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int sub_10015F840()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_10015F8D8@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10015FAE0(*a1);
  *a2 = result;
  return result;
}

void sub_10015F908(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x656772616CLL;
  if (v2 != 1)
  {
    v4 = 0x726568746FLL;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x746C7561666564;
  }

  if (!v5)
  {
    v3 = 0xE500000000000000;
  }

  *a1 = v6;
  a1[1] = v3;
}

unint64_t sub_10015FA24()
{
  result = qword_1003482D8;
  if (!qword_1003482D8)
  {
    sub_100035D4C(&qword_1003482E0, qword_100280C38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003482D8);
  }

  return result;
}

unint64_t sub_10015FA8C()
{
  result = qword_1003482E8;
  if (!qword_1003482E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003482E8);
  }

  return result;
}

unint64_t sub_10015FAE0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100301710, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_10015FB2C()
{
  result = qword_1003482F0[0];
  if (!qword_1003482F0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1003482F0);
  }

  return result;
}

uint64_t sub_10015FB80(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
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

uint64_t sub_10015FC2C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100165238(a1, a2);
  *a3 = v5 & 1 | (result != 0);
  return result;
}

uint64_t sub_10015FC64@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100010708(a1, a2);
  *a3 = 1;
  return result;
}

unint64_t sub_10015FCA8@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_100078D7C(a1);
  *a2 = result;
  return result;
}

uint64_t sub_10015FCD0@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100010708(a1, a2);
  *a3 = 3;
  return result;
}

unint64_t sub_10015FD08@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_1000C7FA0(a1);
  *a2 = result;
  return result;
}

unint64_t sub_10015FD3C@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_1000C7FEC(a1);
  *a2 = result;
  return result;
}

unint64_t sub_10015FD64@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v4 = sub_100165238(a1, a2);
  if ((v5 & 1) != 0 || (result = sub_1000CB020(v4), result == 5))
  {
    result = 5;
  }

  *a3 = result;
  return result;
}

uint64_t sub_10015FDA4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  sub_100165238(a1, a2);
  if ((v4 & 1) != 0 || (result = sub_1000CFBA0(), result == 13))
  {
    result = 13;
  }

  *a3 = result;
  return result;
}

uint64_t sub_10015FDE4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100010708(a1, a2);
  *a3 = 13;
  return result;
}

uint64_t sub_10015FE10@<X0>(void *a1@<X8>)
{
  v2 = String._bridgeToObjectiveC()();

  *a1 = v2;
  return result;
}

uint64_t sub_10015FE50@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  result = sub_100010708(a1, a2);
  *a3 = 0;
  return result;
}

uint64_t sub_10015FE78@<X0>(uint64_t a1@<X8>)
{
  v3 = (swift_isaMask & *v1);
  v4 = v3;
  v5 = v3[10];
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v68 - v13;
  __chkstk_darwin(v12);
  v16 = &v68 - v15;
  v17 = *(v1 + v3[14]);
  if (v17)
  {
    v76 = a1;
    v77 = v5;
    v18 = (v1 + v3[13]);
    v19 = *v18;
    v20 = v18[1];
    v21 = v17;
    v74 = v19;
    v75 = v20;
    v22 = v21;
    v23 = String._bridgeToObjectiveC()();
    v24 = [v22 objectForKey:v23];

    if (v24)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      sub_10001766C(v79, v78);
      v25 = v77;
      if (swift_dynamicCast())
      {
        sub_10000903C(v79);

        v26 = *(v25 - 8);
        (*(v26 + 56))(v16, 0, 1, v25);
        return (*(v26 + 32))(v76, v16, v25);
      }

      else
      {
        v72 = *(v25 - 8);
        v73 = v1;
        (*(v72 + 56))(v16, 1, 1, v25);
        v70 = *(v7 + 8);
        v71 = v7 + 8;
        v70(v16, v6);
        v30 = v25;
        v31 = v74;
        v32 = String._bridgeToObjectiveC()();
        v33 = [v22 stringForKey:v32];

        if (v33)
        {
          v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v36 = v35;

          (*(v4[11] + 16))(v34, v36, v30);
          v37 = v72;
          if ((*(v72 + 48))(v14, 1, v30) == 1)
          {
            v70(v14, v6);
            v38 = *((swift_isaMask & *v73) + 0x80);
            v39 = v73;
            v40 = Logger.logObject.getter();
            v41 = static os_log_type_t.error.getter();

            if (os_log_type_enabled(v40, v41))
            {
              v42 = swift_slowAlloc();
              v43 = swift_slowAlloc();
              v78[0] = v43;
              *v42 = 136315138;
              *(v42 + 4) = sub_100017494(v74, v75, v78);
              _os_log_impl(&_mh_execute_header, v40, v41, "Failed to create value from stored UserDefault. Returning default value {key: %s}", v42, 0xCu);
              sub_10000903C(v43);
            }

            sub_10000903C(v79);
            return (*(v37 + 16))(v76, v39 + *((swift_isaMask & *v39) + 0x60), v77);
          }

          else
          {
            sub_10000903C(v79);

            return (*(v37 + 32))(v76, v14, v30);
          }
        }

        else
        {
          v44 = String._bridgeToObjectiveC()();
          v69 = v22;
          v45 = [v22 dataForKey:v44];

          if (v45)
          {
            v46 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
            v48 = v47;

            v49 = v4[11];
            v50 = *(v49 + 24);
            sub_10006DA04(v46, v48);
            v51 = v77;
            v50(v46, v48, v77, v49);
            v52 = v72;
            if ((*(v72 + 48))(v11, 1, v51) == 1)
            {
              v70(v11, v6);
              v53 = *((swift_isaMask & *v73) + 0x80);
              v54 = v73;
              v55 = Logger.logObject.getter();
              v56 = static os_log_type_t.error.getter();

              v57 = os_log_type_enabled(v55, v56);
              v58 = v69;
              if (v57)
              {
                v59 = swift_slowAlloc();
                v60 = swift_slowAlloc();
                v78[0] = v60;
                *v59 = 136315138;
                *(v59 + 4) = sub_100017494(v74, v75, v78);
                _os_log_impl(&_mh_execute_header, v55, v56, "Failed to create value from stored UserDefault. Returning default value {key: %s}", v59, 0xCu);
                sub_10000903C(v60);

                sub_100010708(v46, v48);
              }

              else
              {

                sub_100010708(v46, v48);
              }

              sub_10000903C(v79);
              return (*(v52 + 16))(v76, v54 + *((swift_isaMask & *v54) + 0x60), v77);
            }

            else
            {
              sub_10000903C(v79);

              sub_100010708(v46, v48);
              return (*(v52 + 32))(v76, v11, v51);
            }
          }

          else
          {
            v61 = v31;
            v62 = *((swift_isaMask & *v73) + 0x80);
            v63 = v73;
            v64 = Logger.logObject.getter();
            v65 = static os_log_type_t.error.getter();

            if (os_log_type_enabled(v64, v65))
            {
              v66 = swift_slowAlloc();
              v67 = swift_slowAlloc();
              v78[0] = v67;
              *v66 = 136315138;
              *(v66 + 4) = sub_100017494(v61, v75, v78);
              _os_log_impl(&_mh_execute_header, v64, v65, "Failed to cast value or get string from stored UserDefault. Returning default value {key: %s}", v66, 0xCu);
              sub_10000903C(v67);
            }

            sub_10000903C(v79);
            return (*(v72 + 16))(v76, v63 + *((swift_isaMask & *v63) + 0x60), v77);
          }
        }
      }
    }

    v3 = (swift_isaMask & *v1);
    a1 = v76;
    v5 = v77;
  }

  v28 = *(*(v5 - 8) + 16);
  v29 = v1 + v3[12];

  return v28(a1, v29, v5);
}