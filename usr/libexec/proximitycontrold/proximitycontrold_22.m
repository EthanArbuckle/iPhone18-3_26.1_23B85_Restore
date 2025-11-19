void sub_1002054D0(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  swift_unknownObjectRetain();
  v7 = a1;
  a4(a3);
  swift_unknownObjectRelease();
}

void sub_100205548(void *a1, uint64_t a2)
{
  v3 = v2;
  if (a2)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v7 = 0xE700000000000000;
    v5 = 0x6E776F6E6B6E75;
  }

  if (qword_100339220 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100003078(v8, qword_10034D760);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v33[0] = swift_slowAlloc();
    *v11 = 136315394;
    *(v11 + 4) = sub_100017494(0xD00000000000002ELL, 0x80000001002985E0, v33);
    *(v11 + 12) = 2080;
    *(v11 + 14) = sub_100017494(v5, v7, v33);
    _os_log_impl(&_mh_execute_header, v9, v10, "%s reason=%s", v11, 0x16u);
    swift_arrayDestroy();
  }

  if (!a1)
  {
    __break(1u);
    return;
  }

  v12 = [a1 requestIdentifier];
  if (!v12)
  {
    goto LABEL_15;
  }

  v13 = v12;
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  v17 = *(*&v3[OBJC_IVAR____TtC17proximitycontrold31HintViewControllerDynamicIsland_viewModel] + 16) + OBJC_IVAR____TtC17proximitycontrold14HandoffSession_id;
  if (v14 == UUID.uuidString.getter() && v16 == v18)
  {
  }

  else
  {
    v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v20 & 1) == 0)
    {
LABEL_15:

      swift_unknownObjectRetain();
      oslog = Logger.logObject.getter();
      v21 = static os_log_type_t.error.getter();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(oslog, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v34 = v23;
        *v22 = 136315138;
        v24 = [a1 requestIdentifier];
        if (v24)
        {
          v25 = v24;
          v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v28 = v27;
        }

        else
        {
          v26 = 0;
          v28 = 0;
        }

        v33[0] = v26;
        v33[1] = v28;
        sub_100035D04(&qword_10033A238, &qword_10027D3E0);
        v29 = String.init<A>(describing:)();
        v31 = sub_100017494(v29, v30, &v34);

        *(v22 + 4) = v31;
        _os_log_impl(&_mh_execute_header, oslog, v21, "### Unrecognized requestID %s", v22, 0xCu);
        sub_10000903C(v23);
      }

      else
      {
      }

      return;
    }
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_1001E7C4C(v3, v5, v7, 1);

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

void sub_1002059D8(void *a1, uint64_t a2)
{
  v3 = v2;
  if (a2)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v7 = 0xE700000000000000;
    v5 = 0x6E776F6E6B6E75;
  }

  if (qword_100339220 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100003078(v8, qword_10034D760);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v33[0] = swift_slowAlloc();
    *v11 = 136315394;
    *(v11 + 4) = sub_100017494(0xD00000000000002ELL, 0x80000001002985B0, v33);
    *(v11 + 12) = 2080;
    *(v11 + 14) = sub_100017494(v5, v7, v33);
    _os_log_impl(&_mh_execute_header, v9, v10, "%s reason=%s", v11, 0x16u);
    swift_arrayDestroy();
  }

  if (!a1)
  {
    __break(1u);
    return;
  }

  v12 = [a1 requestIdentifier];
  if (!v12)
  {
    goto LABEL_15;
  }

  v13 = v12;
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  v17 = *(*&v3[OBJC_IVAR____TtC17proximitycontrold31HintViewControllerDynamicIsland_viewModel] + 16) + OBJC_IVAR____TtC17proximitycontrold14HandoffSession_id;
  if (v14 == UUID.uuidString.getter() && v16 == v18)
  {
  }

  else
  {
    v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v20 & 1) == 0)
    {
LABEL_15:

      swift_unknownObjectRetain();
      oslog = Logger.logObject.getter();
      v21 = static os_log_type_t.error.getter();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(oslog, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v34 = v23;
        *v22 = 136315138;
        v24 = [a1 requestIdentifier];
        if (v24)
        {
          v25 = v24;
          v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v28 = v27;
        }

        else
        {
          v26 = 0;
          v28 = 0;
        }

        v33[0] = v26;
        v33[1] = v28;
        sub_100035D04(&qword_10033A238, &qword_10027D3E0);
        v29 = String.init<A>(describing:)();
        v31 = sub_100017494(v29, v30, &v34);

        *(v22 + 4) = v31;
        _os_log_impl(&_mh_execute_header, oslog, v21, "### Unrecognized requestID %s", v22, 0xCu);
        sub_10000903C(v23);
      }

      else
      {
      }

      return;
    }
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_1001E7C4C(v3, v5, v7, 0);

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

void sub_100205E68(void *a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(uint64_t, void *))
{
  swift_unknownObjectRetain();
  v9 = a4;
  v10 = a1;
  a5(a3, a4);
  swift_unknownObjectRelease();
}

uint64_t sub_100205FB4()
{
  _StringGuts.grow(_:)(54);
  v1._object = 0x80000001002A5B20;
  v1._countAndFlagsBits = 0xD000000000000033;
  String.append(_:)(v1);
  v2 = *(*(v0 + OBJC_IVAR____TtC17proximitycontrold31HintViewControllerDynamicIsland_viewModel) + 16) + OBJC_IVAR____TtC17proximitycontrold14HandoffSession_id;
  UUID.uuidString.getter();
  v3._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v3);

  v4._countAndFlagsBits = 62;
  v4._object = 0xE100000000000000;
  String.append(_:)(v4);
  return 0;
}

id sub_1002060CC()
{
  v1 = OBJC_IVAR____TtC17proximitycontrold31HintViewControllerDynamicIsland____lazy_storage___viewHeightConstraint;
  v2 = *&v0[OBJC_IVAR____TtC17proximitycontrold31HintViewControllerDynamicIsland____lazy_storage___viewHeightConstraint];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC17proximitycontrold31HintViewControllerDynamicIsland____lazy_storage___viewHeightConstraint];
LABEL_6:
    v12 = v2;
    return v3;
  }

  result = [v0 view];
  if (result)
  {
    v5 = result;
    v6 = [result heightAnchor];

    result = [v0 view];
    if (result)
    {
      v7 = result;
      v8 = [result SBUISA_systemApertureObstructedAreaLayoutGuide];

      v9 = [v8 heightAnchor];
      v10 = [v6 constraintEqualToAnchor:v9 constant:1.0];

      v11 = *&v0[v1];
      *&v0[v1] = v10;
      v3 = v10;

      v2 = 0;
      goto LABEL_6;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_1002061F4()
{
  v1 = OBJC_IVAR____TtC17proximitycontrold31HintViewControllerDynamicIsland____lazy_storage___viewConstraints;
  if (*&v0[OBJC_IVAR____TtC17proximitycontrold31HintViewControllerDynamicIsland____lazy_storage___viewConstraints])
  {
    v2 = *&v0[OBJC_IVAR____TtC17proximitycontrold31HintViewControllerDynamicIsland____lazy_storage___viewConstraints];
LABEL_6:

    return v2;
  }

  sub_100035D04(&qword_10033AE40, &qword_1002719E0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100271B90;
  result = [v0 view];
  if (result)
  {
    v4 = result;
    v5 = [result centerYAnchor];

    result = [v0 view];
    if (result)
    {
      v6 = result;
      v7 = [result SBUISA_systemApertureObstructedAreaLayoutGuide];

      v8 = [v7 centerYAnchor];
      v9 = [v5 constraintEqualToAnchor:v8];

      *(v2 + 32) = v9;
      *(v2 + 40) = sub_1002060CC();
      v10 = *&v0[v1];
      *&v0[v1] = v2;

      goto LABEL_6;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_100206360()
{
  v1 = OBJC_IVAR____TtC17proximitycontrold31HintViewControllerDynamicIsland____lazy_storage___activityImageViewConstraints;
  if (*&v0[OBJC_IVAR____TtC17proximitycontrold31HintViewControllerDynamicIsland____lazy_storage___activityImageViewConstraints])
  {
    v2 = *&v0[OBJC_IVAR____TtC17proximitycontrold31HintViewControllerDynamicIsland____lazy_storage___activityImageViewConstraints];
LABEL_7:

    return v2;
  }

  sub_100035D04(&qword_10033AE40, &qword_1002719E0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100271880;
  v3 = *&v0[OBJC_IVAR____TtC17proximitycontrold31HintViewControllerDynamicIsland_activityImageView];
  v4 = [v3 leadingAnchor];
  result = [v0 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  v6 = result;
  v7 = [result leadingAnchor];

  v8 = [v4 constraintEqualToAnchor:v7 constant:8.0];
  *(v2 + 32) = v8;
  v9 = [v3 trailingAnchor];
  result = [v0 view];
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v10 = result;
  v11 = [result SBUISA_systemApertureObstructedAreaLayoutGuide];

  v12 = [v11 leadingAnchor];
  v13 = [v9 constraintEqualToAnchor:v12];

  *(v2 + 40) = v13;
  v14 = [v3 centerYAnchor];
  result = [v0 view];
  if (result)
  {
    v15 = result;
    v16 = [result SBUISA_systemApertureObstructedAreaLayoutGuide];

    v17 = [v16 centerYAnchor];
    v18 = [v14 constraintEqualToAnchor:v17];

    *(v2 + 48) = v18;
    v19 = [v3 widthAnchor];
    v20 = [v3 heightAnchor];
    v21 = [v19 constraintEqualToAnchor:v20];

    *(v2 + 56) = v21;
    v22 = [v3 heightAnchor];
    v23 = [v22 constraintEqualToConstant:22.0];

    *(v2 + 64) = v23;
    v24 = *&v0[v1];
    *&v0[v1] = v2;

    goto LABEL_7;
  }

LABEL_10:
  __break(1u);
  return result;
}

id sub_100206674()
{
  v1 = OBJC_IVAR____TtC17proximitycontrold31HintViewControllerDynamicIsland____lazy_storage___deviceImageViewConstraints;
  if (*&v0[OBJC_IVAR____TtC17proximitycontrold31HintViewControllerDynamicIsland____lazy_storage___deviceImageViewConstraints])
  {
    v2 = *&v0[OBJC_IVAR____TtC17proximitycontrold31HintViewControllerDynamicIsland____lazy_storage___deviceImageViewConstraints];
LABEL_7:

    return v2;
  }

  sub_100035D04(&qword_10033AE40, &qword_1002719E0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100271880;
  v3 = *&v0[OBJC_IVAR____TtC17proximitycontrold31HintViewControllerDynamicIsland_deviceImageView];
  v4 = [v3 trailingAnchor];
  result = [v0 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  v6 = result;
  v7 = [result trailingAnchor];

  v8 = [v4 constraintEqualToAnchor:v7 constant:-8.0];
  *(v2 + 32) = v8;
  v9 = [v3 leadingAnchor];
  result = [v0 view];
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v10 = result;
  v11 = [result SBUISA_systemApertureObstructedAreaLayoutGuide];

  v12 = [v11 trailingAnchor];
  v13 = [v9 constraintEqualToAnchor:v12];

  *(v2 + 40) = v13;
  v14 = [v3 centerYAnchor];
  result = [v0 view];
  if (result)
  {
    v15 = result;
    v16 = [result SBUISA_systemApertureObstructedAreaLayoutGuide];

    v17 = [v16 centerYAnchor];
    v18 = [v14 constraintEqualToAnchor:v17];

    *(v2 + 48) = v18;
    v19 = [v3 widthAnchor];
    v20 = [v3 heightAnchor];
    v21 = [v19 constraintEqualToAnchor:v20];

    *(v2 + 56) = v21;
    v22 = [v3 heightAnchor];
    v23 = [v22 constraintEqualToConstant:22.0];

    *(v2 + 64) = v23;
    v24 = *&v0[v1];
    *&v0[v1] = v2;

    goto LABEL_7;
  }

LABEL_10:
  __break(1u);
  return result;
}

void sub_100206988()
{
  v1 = v0;
  v26.receiver = v0;
  v26.super_class = type metadata accessor for HintViewControllerDynamicIsland();
  objc_msgSendSuper2(&v26, "viewDidLoad");
  if (qword_100339220 != -1)
  {
    goto LABEL_15;
  }

  while (1)
  {
    v2 = type metadata accessor for Logger();
    sub_100003078(v2, qword_10034D760);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v25 = v6;
      *v5 = 136315138;
      *(v5 + 4) = sub_100017494(0x4C64694477656976, 0xED0000292864616FLL, &v25);
      _os_log_impl(&_mh_execute_header, v3, v4, "%s", v5, 0xCu);
      sub_10000903C(v6);
    }

    sub_100035D04(&qword_10033AE40, &qword_1002719E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100271B90;
    v8 = *&v1[OBJC_IVAR____TtC17proximitycontrold31HintViewControllerDynamicIsland_activityImageView];
    *(inited + 32) = v8;
    v9 = *&v1[OBJC_IVAR____TtC17proximitycontrold31HintViewControllerDynamicIsland_deviceImageView];
    *(inited + 40) = v9;
    v10 = v8;
    v11 = v9;
    v12 = [v1 view];
    if (!v12)
    {
      __break(1u);
      goto LABEL_19;
    }

    v13 = v12;
    if ((inited & 0xC000000000000001) != 0)
    {
      v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_14;
      }

      v14 = *(inited + 32);
    }

    v15 = v14;
    [v13 addSubview:v14];

    if ((inited & 0xC000000000000001) != 0)
    {
      break;
    }

    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
    {
      v16 = *(inited + 40);
      goto LABEL_11;
    }

LABEL_14:
    __break(1u);
LABEL_15:
    swift_once();
  }

  v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_11:
  v17 = v16;
  [v13 addSubview:v16];

  swift_setDeallocating();
  v18 = *(inited + 16);
  swift_arrayDestroy();

  v19 = *&v1[OBJC_IVAR____TtC17proximitycontrold31HintViewControllerDynamicIsland_tapGestureRecognizer];
  [v19 addTarget:v1 action:"didTap"];
  v20 = [v1 view];
  if (!v20)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v21 = v20;
  [v20 addGestureRecognizer:v19];

  v22 = [v1 view];
  if (v22)
  {
    v23 = v22;
    v24 = [v22 layer];

    [v24 setHitTestsAsOpaque:1];
    return;
  }

LABEL_20:
  __break(1u);
}

void sub_100206D28(void *a1, char a2)
{
  v3 = v2;
  v26.receiver = v3;
  v26.super_class = type metadata accessor for HintViewControllerDynamicIsland();
  objc_msgSendSuper2(&v26, "viewDidMoveToWindow:shouldAppearOrDisappear:", a1, a2 & 1);
  if (qword_100339220 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100003078(v6, qword_10034D760);
  v7 = a1;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v24[0] = swift_slowAlloc();
    *v10 = 136315394;
    *(v10 + 4) = sub_100017494(0xD000000000000028, 0x80000001002A5AD0, v24);
    *(v10 + 12) = 2080;
    if (a1)
    {
      sub_100003118(0, &qword_10034D8C0, UIWindow_ptr);
      v11 = v7;
      v12 = String.init<A>(describing:)();
      v14 = v13;
    }

    else
    {
      v14 = 0xE300000000000000;
      v12 = 7104878;
    }

    v15 = sub_100017494(v12, v14, v24);

    *(v10 + 14) = v15;
    _os_log_impl(&_mh_execute_header, v8, v9, "%s: window=%s", v10, 0x16u);
    swift_arrayDestroy();
  }

  if (a1)
  {
    v16 = [v3 view];
    v17 = *&v3[OBJC_IVAR____TtC17proximitycontrold31HintViewControllerDynamicIsland_activityImageView];
    v24[13] = v16;
    v24[14] = v17;
    v25 = *&v3[OBJC_IVAR____TtC17proximitycontrold31HintViewControllerDynamicIsland_deviceImageView];
    v18 = v25;
    v19 = v17;
    v20 = v18;
    if (v16)
    {
      [v16 setTranslatesAutoresizingMaskIntoConstraints:0];
    }

    if (v19)
    {
      [v19 setTranslatesAutoresizingMaskIntoConstraints:0];
    }

    if (v20)
    {
      [v20 setTranslatesAutoresizingMaskIntoConstraints:0];
    }

    sub_100035D04(&qword_10034D8A0, &qword_10028E2C0);
    swift_arrayDestroy();
    sub_100035D04(&qword_10034D8A8, &qword_10028E2C8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1002727F0;
    *(inited + 32) = sub_1002061F4();
    *(inited + 40) = sub_100206360();
    *(inited + 48) = sub_100206674();
    sub_100202B10(inited);
    swift_setDeallocating();
    sub_100035D04(&unk_10034D8B0, &qword_10028E2D0);
    swift_arrayDestroy();
    v22 = objc_opt_self();
    sub_100003118(0, &qword_10033AE48, NSLayoutConstraint_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v22 activateConstraints:isa];
  }
}

uint64_t sub_100207130()
{
  v1 = v0;
  if (qword_100339220 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_10034D760);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v9 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_100017494(0x2928706154646964, 0xE800000000000000, &v9);
    _os_log_impl(&_mh_execute_header, v3, v4, "%s", v5, 0xCu);
    sub_10000903C(v6);
  }

  v7 = *(v1 + OBJC_IVAR____TtC17proximitycontrold31HintViewControllerDynamicIsland_hintViewControllerEventSubject);

  PassthroughSubject.send(_:)();
}

void sub_100207338()
{
  v1 = v0;
  *(v0 + OBJC_IVAR____TtC17proximitycontrold31HintViewControllerDynamicIsland_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v2 = OBJC_IVAR____TtC17proximitycontrold31HintViewControllerDynamicIsland_deviceImageView;
  *(v1 + v2) = [objc_allocWithZone(UIImageView) init];
  v3 = OBJC_IVAR____TtC17proximitycontrold31HintViewControllerDynamicIsland_activityImageView;
  *(v1 + v3) = [objc_allocWithZone(UIImageView) init];
  v4 = OBJC_IVAR____TtC17proximitycontrold31HintViewControllerDynamicIsland_hintViewControllerEventSubject;
  v5 = sub_100035D04(&unk_10034D890, &unk_10027C0F0);
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  *(v1 + v4) = PassthroughSubject.init()();
  *(v1 + OBJC_IVAR____TtC17proximitycontrold31HintViewControllerDynamicIsland____lazy_storage___hintViewControllerEventPublisher) = 0;
  v8 = OBJC_IVAR____TtC17proximitycontrold31HintViewControllerDynamicIsland_tapGestureRecognizer;
  *(v1 + v8) = [objc_allocWithZone(UITapGestureRecognizer) init];
  *(v1 + OBJC_IVAR____TtC17proximitycontrold31HintViewControllerDynamicIsland_tasks) = &_swiftEmptySetSingleton;
  swift_unknownObjectWeakInit();
  *(v1 + OBJC_IVAR____TtC17proximitycontrold31HintViewControllerDynamicIsland_activeLayoutMode) = 1;
  *(v1 + OBJC_IVAR____TtC17proximitycontrold31HintViewControllerDynamicIsland_activityImageViewHeight) = 0x4036000000000000;
  *(v1 + OBJC_IVAR____TtC17proximitycontrold31HintViewControllerDynamicIsland_deviceImageViewHeight) = 0x4036000000000000;
  *(v1 + OBJC_IVAR____TtC17proximitycontrold31HintViewControllerDynamicIsland_heightOffsetMin) = 0x3FF0000000000000;
  *(v1 + OBJC_IVAR____TtC17proximitycontrold31HintViewControllerDynamicIsland_outsidePadding) = 0x4020000000000000;
  *(v1 + OBJC_IVAR____TtC17proximitycontrold31HintViewControllerDynamicIsland____lazy_storage___viewHeightConstraint) = 0;
  *(v1 + OBJC_IVAR____TtC17proximitycontrold31HintViewControllerDynamicIsland____lazy_storage___viewConstraints) = 0;
  *(v1 + OBJC_IVAR____TtC17proximitycontrold31HintViewControllerDynamicIsland____lazy_storage___activityImageViewConstraints) = 0;
  *(v1 + OBJC_IVAR____TtC17proximitycontrold31HintViewControllerDynamicIsland____lazy_storage___deviceImageViewConstraints) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_1002074FC(const char *a1)
{
  if (qword_100339220 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_10034D760);
  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v3, a1, v4, 2u);
  }
}

uint64_t sub_100207734@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(type metadata accessor for Logger() - 8);
  result = sub_1001C01F0(*a1, a1[1], *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), *(v2 + 48), *(v2 + 56), v2 + ((*(v5 + 80) + 64) & ~*(v5 + 80)), *(v2 + ((*(v5 + 80) + 64) & ~*(v5 + 80)) + *(v5 + 64)));
  *a2 = result;
  a2[1] = v7;
  return result;
}

uint64_t sub_1002077EC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  result = v4(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_100207824@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(type metadata accessor for Logger() - 8);
  v6 = (*(v5 + 80) + 64) & ~*(v5 + 80);
  *a2 = sub_1001CEDD8(*a1, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), *(v2 + 48), *(v2 + 56), v2 + v6, *(v2 + v6 + *(v5 + 64)));

  return swift_unknownObjectRetain();
}

uint64_t getEnumTagSinglePayload for DeviceEvent(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_20;
  }

  v2 = a2 + 9;
  if (a2 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 <= 1)
  {
    if (!v4)
    {
      goto LABEL_20;
    }

    v5 = a1[1];
    if (!a1[1])
    {
      goto LABEL_20;
    }

    return (*a1 | (v5 << 8)) - 9;
  }

  if (v4 == 2)
  {
    v5 = *(a1 + 1);
    if (*(a1 + 1))
    {
      return (*a1 | (v5 << 8)) - 9;
    }
  }

  else
  {
    v5 = *(a1 + 1);
    if (v5)
    {
      return (*a1 | (v5 << 8)) - 9;
    }
  }

LABEL_20:
  v7 = *a1;
  v8 = v7 >= 4;
  v9 = v7 - 4;
  if (!v8)
  {
    v9 = -1;
  }

  if (v9 + 1 < 2)
  {
    v9 = 0;
  }

  if (v9 >= 6)
  {
    return v9 - 5;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for DeviceEvent(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 9;
  if (a3 + 9 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xF7)
  {
    v5 = 0;
  }

  if (a2 > 0xF6)
  {
    v6 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_100207A7C(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = v1 >= 4;
  v3 = v1 - 4;
  if (!v2)
  {
    v3 = -1;
  }

  if (v3 + 1 >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100207AA8(unsigned __int8 a1)
{
  if (a1 <= 6u)
  {
    if (a1 == 5)
    {
      return 0x7265766F63736964;
    }

    if (a1 == 6)
    {
      return 1953722220;
    }
  }

  else
  {
    switch(a1)
    {
      case 7u:
        return 0x7078456C6C657764;
      case 8u:
        return 0x6D69546C6C657764;
      case 9u:
        return 0x456572756C696166;
    }
  }

  v2._countAndFlagsBits = 0x6E6F696765527875;
  v2._object = 0xEA00000000002028;
  String.append(_:)(v2);
  sub_100207C80();
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v3._countAndFlagsBits = 10528;
  v3._object = 0xE200000000000000;
  String.append(_:)(v3);
  return 0;
}

unint64_t sub_100207C2C()
{
  result = qword_10034D988;
  if (!qword_10034D988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034D988);
  }

  return result;
}

unint64_t sub_100207C80()
{
  result = qword_10034D990[0];
  if (!qword_10034D990[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_10034D990);
  }

  return result;
}

BOOL sub_100207CD4(unsigned __int8 a1, unsigned __int8 a2)
{
  if (a1 <= 6u)
  {
    if (a1 == 5)
    {
      return a2 == 5;
    }

    if (a1 == 6)
    {
      return a2 == 6;
    }
  }

  else
  {
    switch(a1)
    {
      case 7u:
        return a2 == 7;
      case 8u:
        return a2 == 8;
      case 9u:
        return a2 == 9;
    }
  }

  if (a2 - 5 < 5)
  {
    return 0;
  }

  if (a1 == 4)
  {
    return a2 == 4;
  }

  else
  {
    return a1 == a2;
  }
}

void *sub_100207DF0()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return v0;
}

uint64_t sub_100207E20()
{
  sub_100207DF0();

  return swift_deallocClassInstance();
}

uint64_t getEnumTagSinglePayload for SystemEvent(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFA && *(a1 + 9))
  {
    return (*a1 + 250);
  }

  v3 = *(a1 + 8);
  if (v3 <= 6)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for SystemEvent(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF9)
  {
    *(result + 8) = 0;
    *result = a2 - 250;
    if (a3 >= 0xFA)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFA)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_100207F10(uint64_t a1, unsigned __int8 a2, uint64_t a3, char a4)
{
  if (a2 <= 2u)
  {
    v11 = a3 ^ a1 ^ 1;
    if (a4)
    {
      v11 = 0;
    }

    v12 = a3 ^ a1 ^ 1;
    if (a4 != 1)
    {
      v12 = 0;
    }

    v13 = a3 ^ a1 ^ 1;
    if (a4 != 2)
    {
      v13 = 0;
    }

    if (a2 == 1)
    {
      v13 = v12;
    }

    if (a2)
    {
      v14 = v13;
    }

    else
    {
      v14 = v11;
    }

    return v14 & 1;
  }

  else
  {
    v4 = a3 ^ a1 ^ 1;
    if (a4 != 5)
    {
      v4 = 0;
    }

    v5 = a3 ^ a1 ^ 1;
    if (a4 != 6)
    {
      v5 = 0;
    }

    if (a2 != 5)
    {
      v4 = v5;
    }

    v7 = a4 == 3 && a1 == a3;
    v8 = a3 ^ a1 ^ 1;
    if (a4 != 4)
    {
      v8 = 0;
    }

    if (a2 == 3)
    {
      v8 = v7;
    }

    if (a2 <= 4u)
    {
      v9 = v8;
    }

    else
    {
      v9 = v4;
    }

    return v9 & 1;
  }
}

uint64_t sub_100207FC8()
{
  v0 = type metadata accessor for Logger();
  sub_100036838(v0, qword_10034DA18);
  sub_100003078(v0, qword_10034DA18);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100208048()
{
  v3 = *(v1 + 16);
  v4 = *(v3 + 16);
  if (!v4)
  {
    return 1;
  }

  v5 = 0;
  for (i = (v3 + 40); ; i += 2)
  {
    if (v5 >= *(v3 + 16))
    {
      __break(1u);
      goto LABEL_15;
    }

    v2 = *(i - 1);
    v0 = *i;
    v7 = qword_100338F70;

    if (v7 != -1)
    {
      swift_once();
    }

    v8 = *(qword_10038B100 + 32);

    v9 = sub_1000E9168(v2, v0);

    if (v9)
    {
      break;
    }

    ++v5;

    if (v4 == v5)
    {
      return 1;
    }
  }

  if (qword_100339228 == -1)
  {
    goto LABEL_10;
  }

LABEL_15:
  swift_once();
LABEL_10:
  v11 = type metadata accessor for Logger();
  sub_100003078(v11, qword_10034DA18);

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v17 = v15;
    *v14 = 136315138;
    v16 = sub_100017494(v2, v0, &v17);

    *(v14 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v12, v13, "Application blocker rejecting trigger for layout: %s", v14, 0xCu);
    sub_10000903C(v15);
  }

  else
  {
  }

  return 0;
}

uint64_t sub_10020828C(unint64_t a1, char a2)
{
  if (a2)
  {
    return 0;
  }

  if (a1 >= 4)
  {
    v5._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v5);

    v6._countAndFlagsBits = 41;
    v6._object = 0xE100000000000000;
    String.append(_:)(v6);
    return 2629695;
  }

  else
  {
    result = *&aUnspecifuwb[8 * a1];
    v4 = *&aIed[8 * a1];
  }

  return result;
}

uint64_t sub_100208340(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 104))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_10020839C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 104) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 104) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t type metadata accessor for NearbySharingInteractionViewServiceContext()
{
  result = qword_10034DB30;
  if (!qword_10034DB30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10020848C()
{
  result = type metadata accessor for NearbySharingInteractionDisplayContext();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1002084F8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v4 = type metadata accessor for NearbySharingInteractionDisplayContext();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v21 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100035D04(&qword_10034DB78, &qword_10028E798);
  v20 = *(v7 - 8);
  v8 = *(v20 + 64);
  __chkstk_darwin(v7);
  v10 = &v19 - v9;
  v11 = type metadata accessor for NearbySharingInteractionViewServiceContext();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  sub_10000EBC0(a1, a1[3]);
  sub_100208AC4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v16 = v19;
    sub_100208B80(&qword_10034DB88, type metadata accessor for NearbySharingInteractionDisplayContext);
    v17 = v21;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v20 + 8))(v10, v7);
    sub_100208B18(v17, v14, type metadata accessor for NearbySharingInteractionDisplayContext);
    sub_100208B18(v14, v16, type metadata accessor for NearbySharingInteractionViewServiceContext);
  }

  return sub_10000903C(a1);
}

uint64_t sub_100208788@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD00000000000002DLL && 0x80000001002A5D80 == a2)
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

uint64_t sub_10020881C(uint64_t a1)
{
  v2 = sub_100208AC4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100208858(uint64_t a1)
{
  v2 = sub_100208AC4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1002088C8(void *a1)
{
  v2 = sub_100035D04(&qword_10034DB90, &qword_10028E7A0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  sub_10000EBC0(a1, a1[3]);
  sub_100208AC4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  type metadata accessor for NearbySharingInteractionDisplayContext();
  sub_100208B80(&qword_10034DB98, type metadata accessor for NearbySharingInteractionDisplayContext);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_100208A40(uint64_t a1)
{
  *(a1 + 8) = sub_100208B80(&qword_10034DB68, type metadata accessor for NearbySharingInteractionViewServiceContext);
  result = sub_100208B80(&qword_10034DB70, type metadata accessor for NearbySharingInteractionViewServiceContext);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_100208AC4()
{
  result = qword_10034DB80;
  if (!qword_10034DB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034DB80);
  }

  return result;
}

uint64_t sub_100208B18(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100208B80(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100208BDC()
{
  result = qword_10034DBA0;
  if (!qword_10034DBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034DBA0);
  }

  return result;
}

unint64_t sub_100208C34()
{
  result = qword_10034DBA8;
  if (!qword_10034DBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034DBA8);
  }

  return result;
}

unint64_t sub_100208C8C()
{
  result = qword_10034DBB0;
  if (!qword_10034DBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034DBB0);
  }

  return result;
}

uint64_t BYSetupState.description.getter(uint64_t a1)
{
  if (a1 > 1)
  {
    if (a1 != 2)
    {
      if (a1 == 3)
      {
        return 0x74616E696D726574;
      }

      goto LABEL_8;
    }

    return 0x64656873696E6966;
  }

  else
  {
    if (a1)
    {
      if (a1 == 1)
      {
        return 0x676E696E6E7572;
      }

LABEL_8:
      v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v2);

      v3._countAndFlagsBits = 41;
      v3._object = 0xE100000000000000;
      String.append(_:)(v3);
      return 2629695;
    }

    return 0x6E776F6E6B6E75;
  }
}

void sub_100208DEC(uint64_t a1)
{
  if (qword_100339230 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100003078(v3, qword_10034DBB8);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v20[0] = swift_slowAlloc();
    *v6 = 136315394;
    *(v6 + 4) = sub_100017494(0x2866664F6C6F6F63, 0xEB00000000293A5FLL, v20);
    *(v6 + 12) = 2080;
    v7 = sub_1000092A0();
    v9 = sub_100017494(v7, v8, v20);

    *(v6 + 14) = v9;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s: device=%s", v6, 0x16u);
    swift_arrayDestroy();
  }

  swift_beginAccess();
  if (*(*(v1 + 40) + 16) && (v10 = OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_id, v11 = *(v1 + 40), , sub_100019110(a1 + v10), v13 = v12, , (v13 & 1) != 0))
  {
    v14 = (a1 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_mediaRouteIDActive);
    if (*(a1 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_mediaRouteIDActive + 8))
    {
      v15 = *v14;
      *v14 = 0;
      v14[1] = 0;
      swift_beginAccess();
      sub_1002091A0(a1 + v10, sub_100051968, sub_100089CF0);
      swift_endAccess();

      sub_10001BB3C(8uLL);

      sub_10001D304(0);
      return;
    }

    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      v19 = "### No active MRID";
      goto LABEL_11;
    }
  }

  else
  {
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      v19 = "Not already prewarming device.";
LABEL_11:
      _os_log_impl(&_mh_execute_header, v16, v17, v19, v18, 2u);
    }
  }
}

uint64_t sub_1002091A0(uint64_t a1, void (*a2)(unint64_t, uint64_t), void (*a3)(void))
{
  v6 = v3;
  v7 = *v3;
  v8 = sub_100019110(a1);
  if ((v9 & 1) == 0)
  {
    return 0;
  }

  v10 = v8;
  v11 = *v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *v6;
  v18 = *v6;
  if (!isUniquelyReferenced_nonNull_native)
  {
    a3();
    v13 = v18;
  }

  v14 = *(v13 + 48);
  v15 = type metadata accessor for UUID();
  (*(*(v15 - 8) + 8))(v14 + *(*(v15 - 8) + 72) * v10, v15);
  v16 = *(*(v13 + 56) + 8 * v10);
  a2(v10, v13);
  *v6 = v13;
  return v16;
}

uint64_t sub_100209280(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = sub_100019110(a1);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  v7 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *v2;
  v16 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_10008A034();
    v9 = v16;
  }

  v10 = *(v9 + 48);
  v11 = type metadata accessor for UUID();
  (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v6, v11);
  v12 = (*(v9 + 56) + 16 * v6);
  v13 = *v12;
  v14 = v12[1];
  sub_10004C13C(v6, v9);
  *v2 = v9;
  return v13;
}

uint64_t sub_10020935C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_100019110(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v23 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_10008B130();
      v11 = v23;
    }

    v12 = *(v11 + 48);
    v13 = type metadata accessor for UUID();
    (*(*(v13 - 8) + 8))(v12 + *(*(v13 - 8) + 72) * v8, v13);
    v14 = *(v11 + 56);
    active = type metadata accessor for PCUserAlertManager.ActiveAlertContext(0);
    v22 = *(active - 8);
    sub_1002156FC(v14 + *(v22 + 72) * v8, a2, type metadata accessor for PCUserAlertManager.ActiveAlertContext);
    sub_10004C788(v8, v11);
    *v3 = v11;
    v16 = *(v22 + 56);
    v17 = a2;
    v18 = 0;
    v19 = active;
  }

  else
  {
    v20 = type metadata accessor for PCUserAlertManager.ActiveAlertContext(0);
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a2;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

uint64_t sub_100209538(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v14[2] = a1;
  v5 = *(v3 + 16);

  swift_getAtKeyPath();

  v6 = v14[1];
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v14[0] = swift_slowAlloc();
    *v9 = 136315394;
    *(v9 + 4) = sub_100017494(0x5F2865766F6D6572, 0xEA0000000000293ALL, v14);
    *(v9 + 12) = 2080;
    v10 = String.init<A>(describing:)();
    v12 = sub_100017494(v10, v11, v14);

    *(v9 + 14) = v12;
    _os_log_impl(&_mh_execute_header, v7, v8, "%s: key=%s", v9, 0x16u);
    swift_arrayDestroy();
  }

  return a3(v6);
}

uint64_t sub_100209708(uint64_t a1, uint64_t (*a2)(void))
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = v6[8];
  v8 = __chkstk_darwin(v5);
  v10 = &v29[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = __chkstk_darwin(v8);
  v13 = &v29[-v12];
  __chkstk_darwin(v11);
  v15 = &v29[-v14];
  v34[1] = a1;
  v16 = *(v2 + 16);

  swift_getAtKeyPath();

  v17 = v6[2];
  v17(v13, v15, v5);
  v33 = v2;
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v32 = a2;
    v21 = v20;
    v31 = swift_slowAlloc();
    v34[0] = v31;
    *v21 = 136315394;
    *(v21 + 4) = sub_100017494(0x5F2865766F6D6572, 0xEA0000000000293ALL, v34);
    *(v21 + 12) = 2080;
    v17(v10, v13, v5);
    v22 = String.init<A>(describing:)();
    v24 = v23;
    v30 = v19;
    v25 = v6[1];
    v25(v13, v5);
    v26 = sub_100017494(v22, v24, v34);

    *(v21 + 14) = v26;
    _os_log_impl(&_mh_execute_header, v18, v30, "%s: key=%s", v21, 0x16u);
    swift_arrayDestroy();

    a2 = v32;
  }

  else
  {

    v25 = v6[1];
    v25(v13, v5);
  }

  v27 = a2(v15);
  v25(v15, v5);
  return v27;
}

uint64_t sub_100209A0C(double a1)
{
  v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v2);

  v3._countAndFlagsBits = 102;
  v3._object = 0xE100000000000000;
  String.append(_:)(v3);
  sub_100035D04(&unk_10034A310, &qword_100272780);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10026F050;
  *(v4 + 56) = &type metadata for Double;
  *(v4 + 64) = &protocol witness table for Double;
  *(v4 + 32) = a1;
  v5 = String.init(format:_:)();

  return v5;
}

uint64_t sub_100209B00()
{
  v0 = type metadata accessor for Logger();
  sub_100036838(v0, qword_10034DBB8);
  sub_100003078(v0, qword_10034DBB8);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100209B80(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100213670(v1);
  }

  return result;
}

uint64_t sub_100209BE0(uint64_t *a1)
{
  v1 = *a1;
  sub_100094254();

  sub_100035D04(&qword_10034DE08, &qword_10028EA18);
  sub_100035D04(&qword_10034DE10, &unk_10028EA20);
  sub_10000E244(&qword_10034DE18, &qword_10034DE08, &qword_10028EA18);
  Publisher.map<A>(_:)();
}

uint64_t sub_100209CDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v4 = *(a1 + 8);
  v6 = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 8) = v4;
  *(a3 + 16) = v6;
  v7 = *(a1 + 24);
  *(a3 + 24) = v7;
  *(a3 + 32) = a2;
  sub_10021341C(v5, v4, v6, v7);
}

uint64_t sub_100209D34(uint64_t a1, unint64_t a2, uint64_t a3, unsigned __int8 a4, uint64_t a5)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10020A5E0(a1, a2, a3, a4, a5);
  }

  return result;
}

uint64_t sub_100209DC8(uint64_t a1, uint64_t a2, unint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100209FB4(a1, a2, a3);
  }

  return result;
}

void *sub_100209E44()
{
  v1 = v0;
  if (qword_100339230 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_10034DBB8);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Deinit", v5, 2u);
  }

  v6 = v1[2];

  v7 = v1[3];

  v8 = v1[4];

  v9 = v1[5];

  v10 = v1[6];

  v11 = v1[7];

  v12 = v1[8];

  return v1;
}

uint64_t sub_100209F5C()
{
  sub_100209E44();

  return swift_deallocClassInstance();
}

void sub_100209FB4(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v69 = *(a1 + 16);
  v70 = *a1;
  v68 = *(a1 + 32);
  v67 = *(a1 + 48);
  if (qword_100339230 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100003078(v8, qword_10034DBB8);
  sub_100076E64(a1, &v73);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  sub_100076EC0(a1);
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v72[0] = swift_slowAlloc();
    *v11 = 136315394;
    *(v11 + 4) = sub_100017494(0xD000000000000029, 0x80000001002A6370, v72);
    *(v11 + 12) = 2080;
    v12 = *(a1 + 16);
    v73 = *a1;
    v74 = v12;
    v75 = *(a1 + 32);
    v76 = *(a1 + 48);
    sub_100076E64(a1, v71);
    v13 = String.init<A>(describing:)();
    v15 = sub_100017494(v13, v14, v72);

    *(v11 + 14) = v15;
    _os_log_impl(&_mh_execute_header, v9, v10, "%s: state=%s", v11, 0x16u);
    swift_arrayDestroy();
  }

  swift_beginAccess();
  v16 = *(v4 + 32);
  if (*(v16 + 16))
  {

    v17 = sub_100004B58(a2, a3);
    if (v18)
    {
      v19 = *(*(v16 + 56) + 8 * v17);

      v20 = *(v19 + OBJC_IVAR____TtC17proximitycontrold15HandoffTransfer__state);
      v21 = v20[3];
      v22 = v20[4];
      v65 = v4;
      v66 = a3;
      v23 = a2;
      v24 = v20[5];
      v25 = v20[6];
      v27 = v20[7];
      v26 = v20[8];
      v28 = v20[9];
      v30 = *(a1 + 16);
      v29 = *(a1 + 32);
      v31 = *(a1 + 48);
      *(v20 + 3) = *a1;
      v20[9] = v31;
      *(v20 + 7) = v29;
      *(v20 + 5) = v30;

      v32 = v24;
      a2 = v23;
      v4 = v65;
      a3 = v66;
      sub_1001CED4C(v21, v22, v32);
      sub_100076E64(a1, &v73);
      sub_10005E71C();
      v33 = v20[4];
      v34 = v20[5];
      v35 = v20[6];
      v36 = v20[7];
      v37 = v20[8];
      v38 = v20[9];
      *&v73 = v20[3];
      *(&v73 + 1) = v33;
      *&v74 = v34;
      *(&v74 + 1) = v35;
      *&v75 = v36;
      *(&v75 + 1) = v37;
      v76 = v38;
      sub_10006C458(v73, v33, v34);
      CurrentValueSubject.send(_:)();

      sub_1001CED4C(v73, *(&v73 + 1), v74);
      goto LABEL_12;
    }
  }

  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    *&v73 = v42;
    *v41 = 136315138;
    *(v41 + 4) = sub_100017494(a2, a3, &v73);
    _os_log_impl(&_mh_execute_header, v39, v40, "### No transfer? mediaRouteID=%s - NOTE: This is expected if the transfer was initiated via V1 Handoff", v41, 0xCu);
    sub_10000903C(v42);
  }

LABEL_12:
  v43 = *(*(v4 + 16) + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment_deviceStorage) + qword_100346AF8;

  os_unfair_lock_lock(v43);
  v44 = *(v43 + 8);

  v46 = sub_1002134C4(v45, a2, a3);

  os_unfair_lock_unlock(v43);

  if (v46)
  {
    v47 = *(v46 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice__v1TransferState);
    v48 = v47[3];
    v49 = v47[4];
    v50 = v47[5];
    v51 = v47[6];
    v52 = v47[7];
    v53 = v47[8];
    v54 = v47[9];
    *(v47 + 3) = v70;
    *(v47 + 5) = v69;
    *(v47 + 7) = v68;
    v47[9] = v67;

    sub_1001CED3C(v48, v49, v50);
    sub_100076E64(a1, &v73);
    sub_10005E88C();
    v55 = v47[4];
    v56 = v47[5];
    v57 = v47[6];
    v58 = v47[7];
    v59 = v47[8];
    v60 = v47[9];
    *&v73 = v47[3];
    *(&v73 + 1) = v55;
    *&v74 = v56;
    *(&v74 + 1) = v57;
    *&v75 = v58;
    *(&v75 + 1) = v59;
    v76 = v60;
    sub_10006CCD4(v73, v55, v56);
    CurrentValueSubject.send(_:)();

    sub_1001CED3C(v73, *(&v73 + 1), v74);
  }

  else
  {

    v61 = Logger.logObject.getter();
    v62 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      *&v73 = v64;
      *v63 = 136315138;
      *(v63 + 4) = sub_100017494(a2, a3, &v73);
      _os_log_impl(&_mh_execute_header, v61, v62, "### No device? mediaRouteID=%s", v63, 0xCu);
      sub_10000903C(v64);
    }
  }
}

void sub_10020A5E0(uint64_t a1, unint64_t a2, uint64_t a3, unsigned __int8 a4, uint64_t a5)
{
  v6 = v5;
  v12 = sub_100035D04(&qword_10033E800, &qword_100278E80);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v46 - v14;
  if (qword_100339230 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_100003078(v16, qword_10034DBB8);
  sub_10021341C(a1, a2, a3, a4);

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  sub_100215598(a1, a2, a3, a4);

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v55 = v50;
    *v19 = 136315650;
    *(v19 + 4) = sub_100017494(0xD00000000000001CLL, 0x80000001002A6280, &v55);
    v52 = v6;
    *(v19 + 12) = 2080;
    v20 = sub_10025484C(a1, a2, a3, a4);
    v49 = v18;
    v22 = sub_100017494(v20, v21, &v55);
    v51 = a1;
    v23 = v22;

    v48 = v19;
    *(v19 + 14) = v23;
    *(v19 + 22) = 2080;
    v53 = 60;
    v54 = 0xE100000000000000;
    UUID.uuidString.getter();
    sub_10000B584(8);
    v47 = v17;

    v24 = static String._fromSubstring(_:)();
    v26 = v25;

    v27._countAndFlagsBits = v24;
    v27._object = v26;
    String.append(_:)(v27);
    v6 = v52;

    v28._countAndFlagsBits = 32;
    v28._object = 0xE100000000000000;
    String.append(_:)(v28);
    v29 = *(a5 + 24);
    v30._countAndFlagsBits = sub_1000092A0();
    String.append(_:)(v30);

    v31._countAndFlagsBits = 62;
    v31._object = 0xE100000000000000;
    String.append(_:)(v31);
    v32 = sub_100017494(v53, v54, &v55);

    v34 = v47;
    v33 = v48;
    *(v48 + 24) = v32;
    a1 = v51;
    _os_log_impl(&_mh_execute_header, v34, v49, "%s: effect=%s, session=%s", v33, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
  }

  if (a4 <= 1u)
  {
    if (a4)
    {
      LOBYTE(v53) = a2 & 1;

      sub_10020B3B8(a5, a1, a2 & 1, a3);
      return;
    }

    v35 = a2 & 1;
    v36 = a5;
    v37 = a1;
    v38 = a3;
LABEL_27:

    sub_10020D200(v36, v37, v35, v38, 0);
    return;
  }

  if (a4 == 2)
  {

    sub_10020C2C8(a5, a1, a2);
    return;
  }

  if (a4 == 3)
  {

    sub_100213E08(a1);
    return;
  }

  v39 = a3 | a2;
  if (!(a3 | a2 | a1))
  {
    v36 = a5;
    v37 = 0;
    v35 = 0;
    v38 = 1;
    goto LABEL_27;
  }

  if (a1 == 1 && !v39)
  {

    sub_100210CA0(a5, 0xD000000000000022, 0x80000001002A6250);
    return;
  }

  if (a1 == 2 && !v39)
  {
    v40 = *(*(a5 + 24) + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice__executedThisSession);
    *(v40 + 24) = 0;

    sub_10005E50C();
    LOBYTE(v53) = *(v40 + 24);
    CurrentValueSubject.send(_:)();

LABEL_38:

    return;
  }

  if (a1 == 3 && !v39)
  {
    static TaskPriority.high.getter();
    v41 = type metadata accessor for TaskPriority();
    (*(*(v41 - 8) + 56))(v15, 0, 1, v41);
    v42 = qword_1003391F0;

    if (v42 != -1)
    {
      swift_once();
    }

    v43 = qword_10038B5C0;
    v44 = sub_1002139E4(&qword_1003492A8, type metadata accessor for WorkActor);
    v45 = swift_allocObject();
    v45[2] = v43;
    v45[3] = v44;
    v45[4] = v6;
    v45[5] = a5;

    sub_100240220(0, 0, v15, &unk_10028EB28, v45);
    goto LABEL_38;
  }

  sub_100213CC0();
}

uint64_t sub_10020AC94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[9] = a4;
  v5[10] = a5;
  v6 = sub_100035D04(&unk_10034C700, &qword_100273D30);
  v5[11] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v5[12] = swift_task_alloc();
  v8 = type metadata accessor for ExperienceEvent(0);
  v5[13] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v5[14] = swift_task_alloc();
  v10 = type metadata accessor for TransferEvent();
  v5[15] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v5[16] = swift_task_alloc();
  if (qword_1003391F0 != -1)
  {
    swift_once();
  }

  type metadata accessor for WorkActor();
  sub_1002139E4(&qword_1003492A8, type metadata accessor for WorkActor);
  v13 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[17] = v13;
  v5[18] = v12;

  return (_swift_task_switch)(sub_10020AE20, v13, v12);
}

uint64_t sub_10020AE20()
{
  v1 = *(*(v0 + 80) + 24);
  v2 = swift_task_alloc();
  *(v0 + 152) = v2;
  *v2 = v0;
  v2[1] = sub_10020AECC;

  return sub_100213FA8(v1);
}

uint64_t sub_10020AECC()
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v4 = *v1;
  *(*v1 + 160) = v0;

  v5 = *(v2 + 144);
  v6 = *(v2 + 136);
  if (v0)
  {
    v7 = sub_10020B1C0;
  }

  else
  {
    v7 = sub_10020B008;
  }

  return (_swift_task_switch)(v7, v6, v5);
}

uint64_t sub_10020B008()
{
  v1 = v0[15];
  v2 = v0[16];
  v4 = v0[13];
  v3 = v0[14];
  v6 = v0[11];
  v5 = v0[12];
  v7 = v0[10];
  v8 = *(v0[9] + 16);
  swift_storeEnumTagMultiPayload();

  v9 = UUID.uuidString.getter();
  v11 = v10;
  sub_1002154D0(v2, v3, type metadata accessor for TransferEvent);
  swift_storeEnumTagMultiPayload();
  v12 = *(v8 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment_experienceEventSessionIDReasonSubject);
  v13 = (v5 + *(v6 + 48));
  v14 = (v5 + *(v6 + 64));
  sub_1002154D0(v3, v5, type metadata accessor for ExperienceEvent);
  *v13 = v9;
  v13[1] = v11;
  *v14 = 0;
  v14[1] = 0xE000000000000000;
  PassthroughSubject.send(_:)();
  v15 = v0[16];
  v16 = v0[14];
  sub_1000097E8(v0[12], &unk_10034C700, &qword_100273D30);
  sub_100215538(v16, type metadata accessor for ExperienceEvent);
  sub_100215538(v15, type metadata accessor for TransferEvent);

  v17 = v0[1];

  return v17();
}

uint64_t sub_10020B1C0()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 120);
  v3 = *(v0 + 128);
  v4 = *(v0 + 112);
  v22 = *(v0 + 104);
  v6 = *(v0 + 88);
  v5 = *(v0 + 96);
  v7 = *(v0 + 80);
  v8 = *(*(v0 + 72) + 16);

  swift_errorRetain();
  sub_10014FEEC(v1, (v0 + 16));
  v9 = *(v0 + 16);
  v10 = *(v0 + 32);
  v11 = *(v0 + 48);
  *(v3 + 48) = *(v0 + 64);
  *(v3 + 16) = v10;
  *(v3 + 32) = v11;
  *v3 = v9;
  swift_storeEnumTagMultiPayload();
  v12 = UUID.uuidString.getter();
  v14 = v13;
  sub_1002154D0(v3, v4, type metadata accessor for TransferEvent);
  swift_storeEnumTagMultiPayload();
  v15 = *(v8 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment_experienceEventSessionIDReasonSubject);
  v16 = (v5 + *(v6 + 48));
  v17 = (v5 + *(v6 + 64));
  sub_1002154D0(v4, v5, type metadata accessor for ExperienceEvent);
  *v16 = v12;
  v16[1] = v14;
  *v17 = 0;
  v17[1] = 0xE000000000000000;
  PassthroughSubject.send(_:)();

  v18 = *(v0 + 128);
  v19 = *(v0 + 112);
  sub_1000097E8(*(v0 + 96), &unk_10034C700, &qword_100273D30);
  sub_100215538(v19, type metadata accessor for ExperienceEvent);
  sub_100215538(v18, type metadata accessor for TransferEvent);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_10020B3B8(uint64_t a1, void *a2, char a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_100035D04(&qword_10033E800, &qword_100278E80);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v41 - v12;
  if (qword_100339230 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_100003078(v14, qword_10034DBB8);

  v15 = a2;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v44 = v15;
    v19 = v18;
    v43 = swift_slowAlloc();
    v49 = v43;
    *v19 = 136315650;
    *(v19 + 4) = sub_100017494(0xD00000000000002DLL, 0x80000001002A61E0, &v49);
    *(v19 + 12) = 2080;
    v47 = 60;
    v48 = 0xE100000000000000;
    v42 = v16;
    UUID.uuidString.getter();
    sub_10000B584(8);
    v45 = v5;
    v46 = a4;
    v20 = a3;
    HIDWORD(v41) = v17;

    v21 = static String._fromSubstring(_:)();
    v23 = v22;

    v24._countAndFlagsBits = v21;
    v24._object = v23;
    String.append(_:)(v24);
    a3 = v20;
    v5 = v45;
    a4 = v46;

    v25._countAndFlagsBits = 32;
    v25._object = 0xE100000000000000;
    String.append(_:)(v25);
    v26 = *(a1 + 24);
    v27._countAndFlagsBits = sub_1000092A0();
    String.append(_:)(v27);

    v28._countAndFlagsBits = 62;
    v28._object = 0xE100000000000000;
    String.append(_:)(v28);
    v29 = sub_100017494(v47, v48, &v49);

    *(v19 + 14) = v29;
    *(v19 + 22) = 2080;
    v30 = sub_100078EF8(a2, a3 & 1, a4);
    v32 = sub_100017494(v30, v31, &v49);

    *(v19 + 24) = v32;
    v33 = v42;
    _os_log_impl(&_mh_execute_header, v42, BYTE4(v41), "%s: %s, %s", v19, 0x20u);
    swift_arrayDestroy();

    v15 = v44;
  }

  else
  {
  }

  static TaskPriority.high.getter();
  v34 = type metadata accessor for TaskPriority();
  (*(*(v34 - 8) + 56))(v13, 0, 1, v34);
  v35 = qword_1003391F0;

  v36 = v15;

  if (v35 != -1)
  {
    swift_once();
  }

  v37 = qword_10038B5C0;
  v38 = sub_1002139E4(&qword_1003492A8, type metadata accessor for WorkActor);
  v39 = swift_allocObject();
  *(v39 + 16) = v37;
  *(v39 + 24) = v38;
  *(v39 + 32) = a1;
  *(v39 + 40) = v5;
  *(v39 + 48) = a2;
  *(v39 + 56) = a3 & 1;
  *(v39 + 64) = a4;

  sub_100240220(0, 0, v13, &unk_10028EB00, v39);
}

uint64_t sub_10020B844(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v8 + 224) = a7;
  *(v8 + 88) = a6;
  *(v8 + 96) = a8;
  *(v8 + 72) = a4;
  *(v8 + 80) = a5;
  v9 = sub_100035D04(&unk_10034C700, &qword_100273D30);
  *(v8 + 104) = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  *(v8 + 112) = swift_task_alloc();
  v11 = type metadata accessor for ExperienceEvent(0);
  *(v8 + 120) = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  *(v8 + 128) = swift_task_alloc();
  v13 = type metadata accessor for TransferEvent();
  *(v8 + 136) = v13;
  v14 = *(*(v13 - 8) + 64) + 15;
  *(v8 + 144) = swift_task_alloc();
  if (qword_1003391F0 != -1)
  {
    swift_once();
  }

  type metadata accessor for WorkActor();
  sub_1002139E4(&qword_1003492A8, type metadata accessor for WorkActor);
  v16 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v8 + 152) = v16;
  *(v8 + 160) = v15;

  return (_swift_task_switch)(sub_10020B9D8, v16, v15);
}

uint64_t sub_10020B9D8()
{
  v1 = *(*(v0 + 72) + 24);
  v2 = sub_100070D94();
  *(v0 + 168) = v2;
  if (v2)
  {
    v3 = sub_100214688(*(v0 + 88), *(v0 + 224) & 1, *(v0 + 96));
    v5 = v4;
    v7 = v6;
    v9 = v8;
    *(v0 + 176) = v3;
    *(v0 + 184) = v4;
    *(v0 + 192) = v6;
    *(v0 + 200) = v8;
    v10 = swift_task_alloc();
    *(v0 + 208) = v10;
    *v10 = v0;
    v10[1] = sub_10020BD30;

    return sub_10021511C(v3, v5, v7, v9);
  }

  else
  {
    sub_100035D04(&qword_100346AD0, &qword_10027E290);
    sub_10000E244(&qword_100346AD8, &qword_100346AD0, &qword_10027E290);
    v12 = swift_allocError();
    *v13 = 0xD000000000000018;
    v13[1] = 0x80000001002A32F0;
    swift_willThrow();
    v14 = *(v0 + 136);
    v15 = *(v0 + 144);
    v16 = *(v0 + 128);
    v33 = *(v0 + 120);
    v18 = *(v0 + 104);
    v17 = *(v0 + 112);
    v19 = *(v0 + 72);
    v20 = *(*(v0 + 80) + 16);

    swift_errorRetain();
    sub_10014FEEC(v12, (v0 + 16));
    v21 = *(v0 + 16);
    v22 = *(v0 + 32);
    v23 = *(v0 + 48);
    *(v15 + 48) = *(v0 + 64);
    *(v15 + 16) = v22;
    *(v15 + 32) = v23;
    *v15 = v21;
    swift_storeEnumTagMultiPayload();
    v24 = UUID.uuidString.getter();
    v26 = v25;
    sub_1002154D0(v15, v16, type metadata accessor for TransferEvent);
    swift_storeEnumTagMultiPayload();
    v27 = *(v20 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment_experienceEventSessionIDReasonSubject);
    v28 = (v17 + *(v18 + 48));
    v29 = (v17 + *(v18 + 64));
    sub_1002154D0(v16, v17, type metadata accessor for ExperienceEvent);
    *v28 = v24;
    v28[1] = v26;
    *v29 = 0xD000000000000027;
    v29[1] = 0x80000001002A6190;
    PassthroughSubject.send(_:)();

    v30 = *(v0 + 144);
    v31 = *(v0 + 128);
    sub_1000097E8(*(v0 + 112), &unk_10034C700, &qword_100273D30);
    sub_100215538(v31, type metadata accessor for ExperienceEvent);
    sub_100215538(v30, type metadata accessor for TransferEvent);

    v32 = *(v0 + 8);

    return v32();
  }
}

uint64_t sub_10020BD30()
{
  v2 = *v1;
  v3 = *(*v1 + 208);
  v4 = *v1;
  *(*v1 + 216) = v0;

  v5 = v2[25];
  v6 = v2[24];
  sub_10009D58C(v2[22], v2[23]);

  v7 = v2[20];
  v8 = v2[19];
  if (v0)
  {
    v9 = sub_10020C0A8;
  }

  else
  {
    v9 = sub_10020BED8;
  }

  return (_swift_task_switch)(v9, v8, v7);
}

uint64_t sub_10020BED8()
{
  v19 = v0[21];
  v1 = v0[17];
  v2 = v0[18];
  v4 = v0[15];
  v3 = v0[16];
  v6 = v0[13];
  v5 = v0[14];
  v7 = v0[9];
  v8 = *(v0[10] + 16);
  swift_storeEnumTagMultiPayload();

  v9 = UUID.uuidString.getter();
  v11 = v10;
  sub_1002154D0(v2, v3, type metadata accessor for TransferEvent);
  swift_storeEnumTagMultiPayload();
  v12 = *(v8 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment_experienceEventSessionIDReasonSubject);
  v13 = (v5 + *(v6 + 48));
  v14 = (v5 + *(v6 + 64));
  sub_1002154D0(v3, v5, type metadata accessor for ExperienceEvent);
  *v13 = v9;
  v13[1] = v11;
  *v14 = 1701736260;
  v14[1] = 0xE400000000000000;
  PassthroughSubject.send(_:)();

  v15 = v0[18];
  v16 = v0[16];
  sub_1000097E8(v0[14], &unk_10034C700, &qword_100273D30);
  sub_100215538(v16, type metadata accessor for ExperienceEvent);
  sub_100215538(v15, type metadata accessor for TransferEvent);

  v17 = v0[1];

  return v17();
}

uint64_t sub_10020C0A8()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 136);
  v3 = *(v0 + 144);
  v4 = *(v0 + 128);
  v22 = *(v0 + 120);
  v6 = *(v0 + 104);
  v5 = *(v0 + 112);
  v7 = *(v0 + 72);
  v8 = *(*(v0 + 80) + 16);

  swift_errorRetain();
  sub_10014FEEC(v1, (v0 + 16));
  v9 = *(v0 + 16);
  v10 = *(v0 + 32);
  v11 = *(v0 + 48);
  *(v3 + 48) = *(v0 + 64);
  *(v3 + 16) = v10;
  *(v3 + 32) = v11;
  *v3 = v9;
  swift_storeEnumTagMultiPayload();
  v12 = UUID.uuidString.getter();
  v14 = v13;
  sub_1002154D0(v3, v4, type metadata accessor for TransferEvent);
  swift_storeEnumTagMultiPayload();
  v15 = *(v8 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment_experienceEventSessionIDReasonSubject);
  v16 = (v5 + *(v6 + 48));
  v17 = (v5 + *(v6 + 64));
  sub_1002154D0(v4, v5, type metadata accessor for ExperienceEvent);
  *v16 = v12;
  v16[1] = v14;
  *v17 = 0xD000000000000027;
  v17[1] = 0x80000001002A6190;
  PassthroughSubject.send(_:)();

  v18 = *(v0 + 144);
  v19 = *(v0 + 128);
  sub_1000097E8(*(v0 + 112), &unk_10034C700, &qword_100273D30);
  sub_100215538(v19, type metadata accessor for ExperienceEvent);
  sub_100215538(v18, type metadata accessor for TransferEvent);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_10020C2C8(uint64_t a1, uint64_t a2, int64_t a3)
{
  v4 = v3;
  v8 = sub_100035D04(&qword_10033E800, &qword_100278E80);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v35 - v10;
  if (qword_100339230 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_100003078(v12, qword_10034DBB8);

  sub_10009D534(a2, a3);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  sub_10009D58C(a2, a3);
  if (os_log_type_enabled(v13, v14))
  {
    v36 = v14;
    v37 = v11;
    v38 = v4;
    v15 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v42 = v39;
    *v15 = 136315650;
    *(v15 + 4) = sub_100017494(0xD00000000000001BLL, 0x80000001002A6170, &v42);
    *(v15 + 12) = 2080;
    v40 = 60;
    v41 = 0xE100000000000000;
    UUID.uuidString.getter();
    sub_10000B584(8);

    v16 = static String._fromSubstring(_:)();
    v18 = v17;

    v19._countAndFlagsBits = v16;
    v19._object = v18;
    String.append(_:)(v19);

    v20._countAndFlagsBits = 32;
    v20._object = 0xE100000000000000;
    String.append(_:)(v20);
    v21 = *(a1 + 24);
    v22._countAndFlagsBits = sub_1000092A0();
    String.append(_:)(v22);

    v23._countAndFlagsBits = 62;
    v23._object = 0xE100000000000000;
    String.append(_:)(v23);
    v24 = sub_100017494(v40, v41, &v42);

    *(v15 + 14) = v24;
    *(v15 + 22) = 2080;
    if (a3 <= 1)
    {
      if (a3)
      {
        v11 = v37;
        v4 = v38;
        v25 = v36;
        if (a3 == 1)
        {
          v26 = 0xE500000000000000;
          v27 = 0x636973754DLL;
          goto LABEL_17;
        }

LABEL_16:
        v27 = a2;
        v26 = a3;
        goto LABEL_17;
      }

      v26 = 0xE800000000000000;
      v27 = 0x656D695465636146;
    }

    else
    {
      if (a3 != 2)
      {
        v11 = v37;
        v4 = v38;
        v25 = v36;
        if (a3 == 3)
        {
          v26 = 0xEF6F6D65446C6F72;
          v27 = 0x746E6F43786F7250;
          goto LABEL_17;
        }

        if (a3 == 4)
        {
          v26 = 0xE600000000000000;
          v27 = 0x697261666153;
LABEL_17:
          sub_10009D534(a2, a3);
          v28 = sub_100017494(v27, v26, &v42);

          *(v15 + 24) = v28;
          _os_log_impl(&_mh_execute_header, v13, v25, "%s: %s, %s", v15, 0x20u);
          swift_arrayDestroy();

          goto LABEL_18;
        }

        goto LABEL_16;
      }

      v26 = 0xEB00000000676E69;
      v27 = 0x79616C5020776F4ELL;
    }

    v11 = v37;
    v4 = v38;
    v25 = v36;
    goto LABEL_17;
  }

LABEL_18:

  static TaskPriority.high.getter();
  v29 = type metadata accessor for TaskPriority();
  (*(*(v29 - 8) + 56))(v11, 0, 1, v29);

  sub_10009D534(a2, a3);
  v30 = qword_1003391F0;

  if (v30 != -1)
  {
    swift_once();
  }

  v31 = qword_10038B5C0;
  v32 = sub_1002139E4(&qword_1003492A8, type metadata accessor for WorkActor);
  v33 = swift_allocObject();
  v33[2] = v31;
  v33[3] = v32;
  v33[4] = a1;
  v33[5] = a2;
  v33[6] = a3;
  v33[7] = v4;

  sub_100240220(0, 0, v11, &unk_10028EAE0, v33);
}

uint64_t sub_10020C7D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[11] = a6;
  v7[12] = a7;
  v7[9] = a4;
  v7[10] = a5;
  v8 = sub_100035D04(&unk_10034C700, &qword_100273D30);
  v7[13] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v7[14] = swift_task_alloc();
  v10 = type metadata accessor for ExperienceEvent(0);
  v7[15] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v7[16] = swift_task_alloc();
  v12 = type metadata accessor for TransferEvent();
  v7[17] = v12;
  v13 = *(*(v12 - 8) + 64) + 15;
  v7[18] = swift_task_alloc();
  if (qword_1003391F0 != -1)
  {
    swift_once();
  }

  type metadata accessor for WorkActor();
  sub_1002139E4(&qword_1003492A8, type metadata accessor for WorkActor);
  v15 = dispatch thunk of Actor.unownedExecutor.getter();
  v7[19] = v15;
  v7[20] = v14;

  return (_swift_task_switch)(sub_10020C960, v15, v14);
}

uint64_t sub_10020C960()
{
  v1 = *(*(v0 + 72) + 24);
  v2 = sub_100070D94();
  *(v0 + 168) = v2;
  if (v2)
  {
    sub_10009D534(*(v0 + 80), *(v0 + 88));
    v3 = swift_task_alloc();
    *(v0 + 176) = v3;
    *v3 = v0;
    v3[1] = sub_10020CCA0;
    v5 = *(v0 + 80);
    v4 = *(v0 + 88);

    return sub_10021511C(v5, v4, 0, _swiftEmptyArrayStorage);
  }

  else
  {
    sub_100035D04(&qword_100346AD0, &qword_10027E290);
    sub_10000E244(&qword_100346AD8, &qword_100346AD0, &qword_10027E290);
    v7 = swift_allocError();
    *v8 = 0xD000000000000018;
    v8[1] = 0x80000001002A32F0;
    swift_willThrow();
    v9 = *(v0 + 136);
    v10 = *(v0 + 144);
    v11 = *(v0 + 128);
    v28 = *(v0 + 120);
    v13 = *(v0 + 104);
    v12 = *(v0 + 112);
    v14 = *(v0 + 72);
    v15 = *(*(v0 + 96) + 16);

    swift_errorRetain();
    sub_10014FEEC(v7, (v0 + 16));
    v16 = *(v0 + 16);
    v17 = *(v0 + 32);
    v18 = *(v0 + 48);
    *(v10 + 48) = *(v0 + 64);
    *(v10 + 16) = v17;
    *(v10 + 32) = v18;
    *v10 = v16;
    swift_storeEnumTagMultiPayload();
    v19 = UUID.uuidString.getter();
    v21 = v20;
    sub_1002154D0(v10, v11, type metadata accessor for TransferEvent);
    swift_storeEnumTagMultiPayload();
    v22 = *(v15 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment_experienceEventSessionIDReasonSubject);
    v23 = (v12 + *(v13 + 48));
    v24 = (v12 + *(v13 + 64));
    sub_1002154D0(v11, v12, type metadata accessor for ExperienceEvent);
    *v23 = v19;
    v23[1] = v21;
    *v24 = 0xD000000000000027;
    v24[1] = 0x80000001002A6190;
    PassthroughSubject.send(_:)();

    v25 = *(v0 + 144);
    v26 = *(v0 + 128);
    sub_1000097E8(*(v0 + 112), &unk_10034C700, &qword_100273D30);
    sub_100215538(v26, type metadata accessor for ExperienceEvent);
    sub_100215538(v25, type metadata accessor for TransferEvent);

    v27 = *(v0 + 8);

    return v27();
  }
}

uint64_t sub_10020CCA0()
{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v4 = *v1;
  *(*v1 + 184) = v0;

  sub_10009D58C(v2[10], v2[11]);
  v5 = v2[20];
  v6 = v2[19];
  if (v0)
  {
    v7 = sub_10020CFDC;
  }

  else
  {
    v7 = sub_10020CE08;
  }

  return (_swift_task_switch)(v7, v6, v5);
}

uint64_t sub_10020CE08()
{
  v19 = v0[21];
  v1 = v0[17];
  v2 = v0[18];
  v4 = v0[15];
  v3 = v0[16];
  v6 = v0[13];
  v5 = v0[14];
  v7 = v0[9];
  v8 = *(v0[12] + 16);
  swift_storeEnumTagMultiPayload();

  v9 = UUID.uuidString.getter();
  v11 = v10;
  sub_1002154D0(v2, v3, type metadata accessor for TransferEvent);
  swift_storeEnumTagMultiPayload();
  v12 = *(v8 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment_experienceEventSessionIDReasonSubject);
  v13 = (v5 + *(v6 + 48));
  v14 = (v5 + *(v6 + 64));
  sub_1002154D0(v3, v5, type metadata accessor for ExperienceEvent);
  *v13 = v9;
  v13[1] = v11;
  *v14 = 1701736260;
  v14[1] = 0xE400000000000000;
  PassthroughSubject.send(_:)();

  v15 = v0[18];
  v16 = v0[16];
  sub_1000097E8(v0[14], &unk_10034C700, &qword_100273D30);
  sub_100215538(v16, type metadata accessor for ExperienceEvent);
  sub_100215538(v15, type metadata accessor for TransferEvent);

  v17 = v0[1];

  return v17();
}

uint64_t sub_10020CFDC()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 136);
  v3 = *(v0 + 144);
  v4 = *(v0 + 128);
  v22 = *(v0 + 120);
  v6 = *(v0 + 104);
  v5 = *(v0 + 112);
  v7 = *(v0 + 72);
  v8 = *(*(v0 + 96) + 16);

  swift_errorRetain();
  sub_10014FEEC(v1, (v0 + 16));
  v9 = *(v0 + 16);
  v10 = *(v0 + 32);
  v11 = *(v0 + 48);
  *(v3 + 48) = *(v0 + 64);
  *(v3 + 16) = v10;
  *(v3 + 32) = v11;
  *v3 = v9;
  swift_storeEnumTagMultiPayload();
  v12 = UUID.uuidString.getter();
  v14 = v13;
  sub_1002154D0(v3, v4, type metadata accessor for TransferEvent);
  swift_storeEnumTagMultiPayload();
  v15 = *(v8 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment_experienceEventSessionIDReasonSubject);
  v16 = (v5 + *(v6 + 48));
  v17 = (v5 + *(v6 + 64));
  sub_1002154D0(v4, v5, type metadata accessor for ExperienceEvent);
  *v16 = v12;
  v16[1] = v14;
  *v17 = 0xD000000000000027;
  v17[1] = 0x80000001002A6190;
  PassthroughSubject.send(_:)();

  v18 = *(v0 + 144);
  v19 = *(v0 + 128);
  sub_1000097E8(*(v0 + 112), &unk_10034C700, &qword_100273D30);
  sub_100215538(v19, type metadata accessor for ExperienceEvent);
  sub_100215538(v18, type metadata accessor for TransferEvent);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_10020D200(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, int a5)
{
  v95 = a5;
  v97 = a4;
  v8 = sub_100035D04(&qword_10033E800, &qword_100278E80);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v82[-v10];
  v12 = sub_100035D04(&qword_10033E570, &unk_100274720);
  v13 = *(v12 - 8);
  v90 = v12;
  v91 = v13;
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v87 = &v82[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v15);
  v96 = &v82[-v17];
  v18 = type metadata accessor for Date();
  v88 = *(v18 - 8);
  v89 = v18;
  v19 = *(v88 + 64);
  v20 = __chkstk_darwin(v18);
  __chkstk_darwin(v20);
  v86 = &v82[-v21];
  if (qword_100339230 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  sub_100003078(v22, qword_10034DBB8);

  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();

  v25 = os_log_type_enabled(v23, v24);
  v92 = a3;
  v93 = v11;
  if (v25)
  {
    v26 = swift_slowAlloc();
    v85 = swift_slowAlloc();
    *&v102 = v85;
    *v26 = 136315394;
    *(v26 + 4) = sub_100017494(0xD000000000000035, 0x80000001002A6010, &v102);
    *(v26 + 12) = 2080;
    *&v110 = 60;
    *(&v110 + 1) = 0xE100000000000000;
    v84 = v23;
    UUID.uuidString.getter();
    sub_10000B584(8);
    v27 = a2;
    v83 = v24;

    v28 = static String._fromSubstring(_:)();
    v30 = v29;

    v31._countAndFlagsBits = v28;
    v31._object = v30;
    String.append(_:)(v31);
    a2 = v27;

    v32._countAndFlagsBits = 32;
    v32._object = 0xE100000000000000;
    String.append(_:)(v32);
    v33 = *(a1 + 24);
    v34._countAndFlagsBits = sub_1000092A0();
    String.append(_:)(v34);

    v35._countAndFlagsBits = 62;
    v35._object = 0xE100000000000000;
    String.append(_:)(v35);
    v36 = sub_100017494(v110, *(&v110 + 1), &v102);

    *(v26 + 14) = v36;
    v37 = v84;
    _os_log_impl(&_mh_execute_header, v84, v83, "%s: %s", v26, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v38 = *(a1 + 24);
  v39 = *(*(v38 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice__mediaRemoteDisplayContext) + 24);
  v40 = v94;
  if (v39)
  {
    v41 = v94;
    v87 = a2;
    *&v110 = 0;
    *(&v110 + 1) = 0xE000000000000000;
    v42 = v39;
    _StringGuts.grow(_:)(36);

    *&v110 = 0x1000000000000022;
    *(&v110 + 1) = 0x80000001002A5F80;
    v43 = [v42 description];
    v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v46 = v45;

    v47._countAndFlagsBits = v44;
    v47._object = v46;
    String.append(_:)(v47);

    v48 = v110;
    sub_10008D594(&v110);
    v98 = v110;
    v99 = v111;
    v100 = v112;
    v49 = v114;
    v101 = v113;
    static Date.now.getter();
    v50 = &v96[*(v90 + 48)];
    (*(v88 + 32))();
    *v50 = v48;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v49 = sub_1000AFF4C(0, v49[2] + 1, 1, v49);
    }

    v51 = v92;
    v53 = v49[2];
    v52 = v49[3];
    v40 = v41;
    if (v53 >= v52 >> 1)
    {
      v49 = sub_1000AFF4C(v52 > 1, v53 + 1, 1, v49);
    }

    v49[2] = v53 + 1;
    sub_100098288(v96, v49 + ((*(v91 + 80) + 32) & ~*(v91 + 80)) + *(v91 + 72) * v53);
    v54 = a1 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___report;
    v55 = *(a1 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___report + 16);
    v102 = *(a1 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___report);
    v103 = v55;
    v56 = *(a1 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___report + 48);
    v104 = *(a1 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___report + 32);
    v105 = v56;
    v57 = v101;
    v58 = v100;
    *(v54 + 16) = v99;
    *(v54 + 32) = v58;
    *v54 = v98;
    *(v54 + 48) = v57;
    *(v54 + 56) = v49;
    sub_1000097E8(&v102, &qword_10033E428, &qword_100274640);
    a2 = v87;
  }

  else
  {
    sub_10008D594(&v110);
    v106 = v110;
    v107 = v111;
    v108 = v112;
    v59 = v114;
    v109 = v113;
    static Date.now.getter();
    v60 = &v87[*(v90 + 48)];
    (*(v88 + 32))();
    *v60 = 0x1000000000000026;
    v60[1] = 0x80000001002A5FE0;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v59 = sub_1000AFF4C(0, v59[2] + 1, 1, v59);
    }

    v51 = v92;
    v62 = v59[2];
    v61 = v59[3];
    if (v62 >= v61 >> 1)
    {
      v59 = sub_1000AFF4C(v61 > 1, v62 + 1, 1, v59);
    }

    v59[2] = v62 + 1;
    sub_100098288(v87, v59 + ((*(v91 + 80) + 32) & ~*(v91 + 80)) + *(v91 + 72) * v62);
    v63 = a1 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___report;
    v64 = *(a1 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___report + 16);
    v102 = *(a1 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___report);
    v103 = v64;
    v65 = *(a1 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___report + 48);
    v104 = *(a1 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___report + 32);
    v105 = v65;
    v66 = v109;
    v67 = v108;
    *(v63 + 16) = v107;
    *(v63 + 32) = v67;
    *v63 = v106;
    *(v63 + 48) = v66;
    *(v63 + 56) = v59;
    sub_1000097E8(&v102, &qword_10033E428, &qword_100274640);
  }

  v68 = *(v38 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice__executedThisSession);
  *(v68 + 24) = 1;

  sub_10005E50C();
  LOBYTE(v102) = *(v68 + 24);
  CurrentValueSubject.send(_:)();

  v69 = a2;
  v70 = v51;
  v71 = v97;
  if (v97 == 1)
  {
    v69 = sub_100070168();
    v70 = v72;
    v71 = v73;
  }

  sub_10007732C(a2, v51, v97);
  v74 = v93;
  static TaskPriority.high.getter();
  v75 = type metadata accessor for TaskPriority();
  (*(*(v75 - 8) + 56))(v74, 0, 1, v75);

  sub_10007732C(v69, v70, v71);
  v76 = qword_1003391F0;

  v77 = a1;
  if (v76 != -1)
  {
    swift_once();
  }

  v78 = qword_10038B5C0;
  v79 = sub_1002139E4(&qword_1003492A8, type metadata accessor for WorkActor);
  v80 = swift_allocObject();
  *(v80 + 16) = v78;
  *(v80 + 24) = v79;
  *(v80 + 32) = v69;
  *(v80 + 40) = v70;
  *(v80 + 48) = v71;
  *(v80 + 56) = v40;
  *(v80 + 64) = v77;
  *(v80 + 72) = v95 & 1;

  sub_100240220(0, 0, v74, &unk_10028EA98, v80);
  sub_100077374(v69, v70, v71);
}

uint64_t sub_10020DB4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 152) = v19;
  *(v8 + 40) = a7;
  *(v8 + 48) = a8;
  *(v8 + 24) = a5;
  *(v8 + 32) = a6;
  *(v8 + 16) = a4;
  v9 = sub_100035D04(&unk_10034C700, &qword_100273D30);
  *(v8 + 56) = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  *(v8 + 64) = swift_task_alloc();
  v11 = type metadata accessor for ExperienceEvent(0);
  *(v8 + 72) = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  *(v8 + 80) = swift_task_alloc();
  v13 = type metadata accessor for TransferEvent();
  *(v8 + 88) = v13;
  v14 = *(*(v13 - 8) + 64) + 15;
  *(v8 + 96) = swift_task_alloc();
  if (qword_1003391F0 != -1)
  {
    swift_once();
  }

  type metadata accessor for WorkActor();
  sub_1002139E4(&qword_1003492A8, type metadata accessor for WorkActor);
  v16 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v8 + 104) = v16;
  *(v8 + 112) = v15;

  return (_swift_task_switch)(sub_10020DCEC, v16, v15);
}

uint64_t sub_10020DCEC()
{
  if (*(v0 + 32) == 1)
  {
    sub_100035D04(&qword_10034DE40, &qword_10028EAA8);
    sub_10000E244(&qword_10034DE48, &qword_10034DE40, &qword_10028EAA8);
    v1 = swift_allocError();
    *v2 = 0xD000000000000018;
    v2[1] = 0x80000001002A6050;
    swift_willThrow();
    v3 = *(v0 + 88);
    v4 = *(v0 + 96);
    v5 = *(v0 + 80);
    v32 = *(v0 + 72);
    v7 = *(v0 + 56);
    v6 = *(v0 + 64);
    v8 = *(v0 + 48);
    v9 = *(*(v0 + 40) + 16);
    *v4 = v1;
    swift_storeEnumTagMultiPayload();

    swift_errorRetain();
    v10 = UUID.uuidString.getter();
    v12 = v11;
    sub_1002154D0(v4, v5, type metadata accessor for TransferEvent);
    swift_storeEnumTagMultiPayload();
    v13 = *(v9 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment_experienceEventSessionIDReasonSubject);
    v14 = (v6 + *(v7 + 48));
    v15 = (v6 + *(v7 + 64));
    sub_1002154D0(v5, v6, type metadata accessor for ExperienceEvent);
    *v14 = v10;
    v14[1] = v12;
    *v15 = 0xD000000000000025;
    v15[1] = 0x80000001002A6070;
    PassthroughSubject.send(_:)();

    sub_1000097E8(v6, &unk_10034C700, &qword_100273D30);
    sub_100215538(v5, type metadata accessor for ExperienceEvent);
    sub_100215538(v4, type metadata accessor for TransferEvent);

    v16 = *(v0 + 96);
    v17 = *(v0 + 80);
    v18 = *(v0 + 64);

    v19 = *(v0 + 8);

    return v19();
  }

  else
  {
    v21 = *(v0 + 16);
    if (*(v0 + 24))
    {
      v22 = v21;
      v23 = swift_task_alloc();
      *(v0 + 136) = v23;
      *v23 = v0;
      v23[1] = sub_10020E1D4;
      v24 = *(v0 + 152);
      v26 = *(v0 + 40);
      v25 = *(v0 + 48);

      return sub_10020F92C(v25, v22, v24);
    }

    else
    {
      v27 = v21;
      v28 = swift_task_alloc();
      *(v0 + 120) = v28;
      *v28 = v0;
      v28[1] = sub_10020E098;
      v29 = *(v0 + 152);
      v31 = *(v0 + 40);
      v30 = *(v0 + 48);

      return sub_10020E788(v30, v27, v29);
    }
  }
}

uint64_t sub_10020E098()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v4 = *v1;
  *(*v1 + 128) = v0;

  v5 = *(v2 + 112);
  v6 = *(v2 + 104);
  if (v0)
  {
    v7 = sub_10020E390;
  }

  else
  {
    v7 = sub_10020E310;
  }

  return (_swift_task_switch)(v7, v6, v5);
}

uint64_t sub_10020E1D4()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v4 = *v1;
  *(*v1 + 144) = v0;

  v5 = *(v2 + 112);
  v6 = *(v2 + 104);
  if (v0)
  {
    v7 = sub_10020E58C;
  }

  else
  {
    v7 = sub_100215794;
  }

  return (_swift_task_switch)(v7, v6, v5);
}

uint64_t sub_10020E310()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 80);
  v3 = *(v0 + 64);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_10020E390()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);
  v3 = *(v0 + 80);
  v19 = *(v0 + 72);
  v5 = *(v0 + 56);
  v4 = *(v0 + 64);
  v6 = *(v0 + 48);
  v7 = *(*(v0 + 40) + 16);
  *v2 = *(v0 + 128);
  swift_storeEnumTagMultiPayload();

  swift_errorRetain();
  v8 = UUID.uuidString.getter();
  v10 = v9;
  sub_1002154D0(v2, v3, type metadata accessor for TransferEvent);
  swift_storeEnumTagMultiPayload();
  v11 = *(v7 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment_experienceEventSessionIDReasonSubject);
  v12 = (v4 + *(v5 + 48));
  v13 = (v4 + *(v5 + 64));
  sub_1002154D0(v3, v4, type metadata accessor for ExperienceEvent);
  *v12 = v8;
  v12[1] = v10;
  *v13 = 0xD000000000000025;
  v13[1] = 0x80000001002A6070;
  PassthroughSubject.send(_:)();

  sub_1000097E8(v4, &unk_10034C700, &qword_100273D30);
  sub_100215538(v3, type metadata accessor for ExperienceEvent);
  sub_100215538(v2, type metadata accessor for TransferEvent);

  v14 = *(v0 + 96);
  v15 = *(v0 + 80);
  v16 = *(v0 + 64);

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_10020E58C()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);
  v3 = *(v0 + 80);
  v19 = *(v0 + 72);
  v5 = *(v0 + 56);
  v4 = *(v0 + 64);
  v6 = *(v0 + 48);
  v7 = *(*(v0 + 40) + 16);
  *v2 = *(v0 + 144);
  swift_storeEnumTagMultiPayload();

  swift_errorRetain();
  v8 = UUID.uuidString.getter();
  v10 = v9;
  sub_1002154D0(v2, v3, type metadata accessor for TransferEvent);
  swift_storeEnumTagMultiPayload();
  v11 = *(v7 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment_experienceEventSessionIDReasonSubject);
  v12 = (v4 + *(v5 + 48));
  v13 = (v4 + *(v5 + 64));
  sub_1002154D0(v3, v4, type metadata accessor for ExperienceEvent);
  *v12 = v8;
  v12[1] = v10;
  *v13 = 0xD000000000000025;
  v13[1] = 0x80000001002A6070;
  PassthroughSubject.send(_:)();

  sub_1000097E8(v4, &unk_10034C700, &qword_100273D30);
  sub_100215538(v3, type metadata accessor for ExperienceEvent);
  sub_100215538(v2, type metadata accessor for TransferEvent);

  v14 = *(v0 + 96);
  v15 = *(v0 + 80);
  v16 = *(v0 + 64);

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_10020E788(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 248) = a2;
  *(v4 + 256) = v3;
  *(v4 + 344) = a3;
  *(v4 + 240) = a1;
  v5 = type metadata accessor for OSSignpostID();
  *(v4 + 264) = v5;
  v6 = *(v5 - 8);
  *(v4 + 272) = v6;
  v7 = *(v6 + 64) + 15;
  *(v4 + 280) = swift_task_alloc();
  v8 = type metadata accessor for UUID();
  *(v4 + 288) = v8;
  v9 = *(v8 - 8);
  *(v4 + 296) = v9;
  *(v4 + 304) = *(v9 + 64);
  *(v4 + 312) = swift_task_alloc();
  v10 = sub_100035D04(&qword_10034DE50, &qword_10028EAC0);
  *(v4 + 320) = v10;
  v11 = *(v10 - 8);
  *(v4 + 328) = v11;
  v12 = *(v11 + 64) + 15;
  *(v4 + 336) = swift_task_alloc();
  if (qword_1003391F0 != -1)
  {
    swift_once();
  }

  type metadata accessor for WorkActor();
  sub_1002139E4(&qword_1003492A8, type metadata accessor for WorkActor);
  v14 = dispatch thunk of Actor.unownedExecutor.getter();

  return (_swift_task_switch)(sub_10020E9A8, v14, v13);
}

uint64_t sub_10020E9A8()
{
  v100 = v0;
  if (qword_100339230 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 240);
  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_10034DBB8);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v94 = *(v0 + 240);
    v5 = swift_slowAlloc();
    v97 = swift_slowAlloc();
    *v5 = 136315394;
    *(v5 + 4) = sub_100017494(0xD00000000000002ALL, 0x80000001002A60F0, &v97);
    *(v5 + 12) = 2080;
    v98 = 60;
    v99 = 0xE100000000000000;
    UUID.uuidString.getter();
    sub_10000B584(8);

    v6 = static String._fromSubstring(_:)();
    v8 = v7;

    v9._countAndFlagsBits = v6;
    v9._object = v8;
    String.append(_:)(v9);

    v10._countAndFlagsBits = 32;
    v10._object = 0xE100000000000000;
    String.append(_:)(v10);
    v11 = *(v94 + 24);
    v12._countAndFlagsBits = sub_1000092A0();
    String.append(_:)(v12);

    v13._countAndFlagsBits = 62;
    v13._object = 0xE100000000000000;
    String.append(_:)(v13);
    v14 = sub_100017494(v98, v99, &v97);

    *(v5 + 14) = v14;
    _os_log_impl(&_mh_execute_header, v3, v4, "%s: session=%s", v5, 0x16u);
    swift_arrayDestroy();
  }

  v15 = *(*(v0 + 240) + 24);
  v16 = *(*(v15 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice__mediaRemoteDisplayContext) + 24);
  if (!v16)
  {
    sub_100213B1C();
    swift_allocError();
    *v20 = 0xD00000000000001CLL;
    *(v20 + 8) = 0x80000001002A60A0;
    *(v20 + 16) = 1;
    swift_willThrow();
LABEL_25:
    v70 = *(v0 + 336);
    v71 = *(v0 + 312);
    v72 = *(v0 + 280);

    v77 = *(v0 + 8);
    goto LABEL_26;
  }

  v17 = v16;
  v18 = [v17 interactionDirection];
  if (v18 == 1)
  {
    v19 = &selRef_selectedDeviceState;
  }

  else
  {
    if (v18 != 2)
    {
LABEL_22:

      sub_100213B1C();
      swift_allocError();
      *v68 = 0xD000000000000020;
      *(v68 + 8) = 0x80000001002A60C0;
      *(v68 + 16) = 1;
      swift_willThrow();
LABEL_24:

      goto LABEL_25;
    }

    v19 = &selRef_proxDeviceState;
  }

  v21 = [v17 *v19];
  if (!v21)
  {
    goto LABEL_22;
  }

  v22 = v21;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v23 = *(v0 + 200);
  v96 = sub_10000DF0C();
  v25 = v24;

  if (!v25)
  {

    sub_100213B1C();
    swift_allocError();
    *v69 = xmmword_10028E910;
    *(v69 + 16) = 1;
    swift_willThrow();

    goto LABEL_24;
  }

  v26 = *(v0 + 240);
  v95 = [v17 interactionDirection];

  v85 = v26 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession_id;
  v91 = UUID.uuidString.getter();
  v88 = v27;
  v28 = type metadata accessor for HandoffTransfer();
  v29 = *(v28 + 48);
  v30 = *(v28 + 52);
  v31 = swift_allocObject();
  v86 = v17;

  v32 = v22;
  UUID.init()();
  v33 = OBJC_IVAR____TtC17proximitycontrold15HandoffTransfer__state;
  sub_100035D04(&qword_10034DE60, &qword_10028EAC8);
  v34 = swift_allocObject();
  *(v31 + v33) = v34;
  v34[1] = 0u;
  v34[2] = 0u;
  *(v31 + OBJC_IVAR____TtC17proximitycontrold15HandoffTransfer____lazy_storage___mediaTransferStatusPublisher) = 0;
  v34[3] = 0u;
  v34[4] = 0u;
  v35 = (v31 + OBJC_IVAR____TtC17proximitycontrold15HandoffTransfer____lazy_storage___report);
  v35[2] = 0u;
  v35[3] = 0u;
  *v35 = 0u;
  v35[1] = 0u;
  *(v31 + OBJC_IVAR____TtC17proximitycontrold15HandoffTransfer_tasks) = &_swiftEmptySetSingleton;
  if (qword_1003392A0 != -1)
  {
    swift_once();
  }

  v93 = v25;
  sub_100003078(v2, qword_100350090);
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    *v38 = 0;
    _os_log_impl(&_mh_execute_header, v36, v37, "Init", v38, 2u);
  }

  v90 = *(v0 + 336);
  v82 = *(v0 + 320);
  v83 = *(v0 + 328);
  v80 = *(v0 + 312);
  v81 = *(v0 + 304);
  v78 = *(v0 + 296);
  v79 = *(v0 + 288);
  v84 = *(v0 + 280);
  v39 = *(v0 + 344);
  v40 = *(v0 + 248);
  v41 = *(v0 + 256);

  *(v31 + OBJC_IVAR____TtC17proximitycontrold15HandoffTransfer_activity) = v40;
  *(v31 + OBJC_IVAR____TtC17proximitycontrold15HandoffTransfer_automatic) = v39;
  *(v31 + OBJC_IVAR____TtC17proximitycontrold15HandoffTransfer_device) = v15;
  *(v31 + OBJC_IVAR____TtC17proximitycontrold15HandoffTransfer_direction) = v95;
  v42 = (v31 + OBJC_IVAR____TtC17proximitycontrold15HandoffTransfer_sessionID);
  *v42 = v91;
  v42[1] = v88;
  v43 = v31 + OBJC_IVAR____TtC17proximitycontrold15HandoffTransfer_type;
  *v43 = v96;
  *(v43 + 8) = v93;
  *(v43 + 16) = v22;
  *(v43 + 24) = v16;
  *(v43 + 32) = 1;
  v44 = v86;

  v92 = v32;
  v45 = v40;

  *(v31 + OBJC_IVAR____TtC17proximitycontrold15HandoffTransfer_contentType) = sub_1000AF120();
  v89 = OBJC_IVAR____TtC17proximitycontrold15HandoffTransfer__state;
  v46 = *(v31 + OBJC_IVAR____TtC17proximitycontrold15HandoffTransfer__state);

  *(v0 + 208) = sub_10005E71C();
  sub_100035D04(&qword_10033C268, &qword_10028EAD0);
  sub_10000E244(&qword_10033E580, &qword_10033C268, &qword_10028EAD0);
  v47 = Publisher.eraseToAnyPublisher()();

  *(v0 + 216) = v47;
  swift_allocObject();
  swift_weakInit();
  swift_retain_n();
  sub_100035D04(&qword_10033E588, &unk_100274730);
  sub_10000E244(&qword_10033E590, &qword_10033E588, &unk_100274730);
  Publisher<>.sink(receiveValue:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v87 = v44;
  swift_beginAccess();

  v48 = *(v41 + 32);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v98 = *(v41 + 32);
  *(v41 + 32) = 0x8000000000000000;
  sub_10004DCFC(v31, v96, v93, isUniquelyReferenced_nonNull_native);

  *(v41 + 32) = v98;
  swift_endAccess();
  v50 = *(v41 + 48);

  sub_100049C84(v31);

  sub_10006FFBC(v31);
  v51 = *(v31 + v89);

  *(v0 + 224) = sub_10005E71C();
  v52 = Publisher.eraseToAnyPublisher()();

  *(v0 + 232) = v52;
  Publisher.filter(_:)();

  v53 = swift_allocObject();
  swift_weakInit();
  v54 = swift_allocObject();
  swift_weakInit();

  (*(v78 + 16))(v80, v85, v79);
  v55 = (*(v78 + 80) + 32) & ~*(v78 + 80);
  v56 = swift_allocObject();
  *(v56 + 16) = v53;
  *(v56 + 24) = v54;
  (*(v78 + 32))(v56 + v55, v80, v79);
  sub_10000E244(&qword_10034DE68, &qword_10034DE50, &qword_10028EAC0);
  Publisher<>.sink(receiveValue:)();

  (*(v83 + 8))(v90, v82);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  sub_10001B7F4();
  OSSignpostID.init(_:)();
  static os_signpost_type_t.begin.getter();
  if (qword_100338F20 != -1)
  {
    swift_once();
  }

  v58 = *(v0 + 272);
  v57 = *(v0 + 280);
  v59 = *(v0 + 264);
  os_signpost(_:dso:log:name:signpostID:_:_:)();
  (*(v58 + 8))(v57, v59);

  v60 = Logger.logObject.getter();
  v61 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v60, v61))
  {
    v62 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    v98 = v63;
    *v62 = 136315138;
    v64 = sub_1000092A0();
    v66 = sub_100017494(v64, v65, &v98);

    *(v62 + 4) = v66;
    _os_log_impl(&_mh_execute_header, v60, v61, "Executing media handoff with %s", v62, 0xCu);
    sub_10000903C(v63);
  }

  v67 = *(*(*(v0 + 256) + 16) + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment_mediaRemoteProxy);

  sub_1000F3250(v96, v93);

  v74 = *(v0 + 336);
  v75 = *(v0 + 312);
  v76 = *(v0 + 280);

  v77 = *(v0 + 8);
LABEL_26:

  return v77();
}

uint64_t sub_10020F92C(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 256) = a2;
  *(v4 + 264) = v3;
  *(v4 + 360) = a3;
  *(v4 + 248) = a1;
  if (qword_1003391F0 != -1)
  {
    swift_once();
  }

  type metadata accessor for WorkActor();
  sub_1002139E4(&qword_1003492A8, type metadata accessor for WorkActor);
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v4 + 272) = v6;
  *(v4 + 280) = v5;

  return (_swift_task_switch)(sub_10020FA24, v6, v5);
}

uint64_t sub_10020FA24()
{
  v70 = v0;
  if (qword_100339230 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 248);
  v2 = type metadata accessor for Logger();
  *(v0 + 288) = sub_100003078(v2, qword_10034DBB8);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v65 = v2;
    v5 = *(v0 + 248);
    v6 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    *v6 = 136315394;
    *(v6 + 4) = sub_100017494(0xD000000000000029, 0x80000001002A6140, &v67);
    *(v6 + 12) = 2080;
    v68 = 60;
    v69 = 0xE100000000000000;
    UUID.uuidString.getter();
    sub_10000B584(8);

    v7 = static String._fromSubstring(_:)();
    v9 = v8;

    v10._countAndFlagsBits = v7;
    v10._object = v9;
    String.append(_:)(v10);

    v11._countAndFlagsBits = 32;
    v11._object = 0xE100000000000000;
    String.append(_:)(v11);
    v12 = *(v5 + 24);
    v2 = v65;
    v13._countAndFlagsBits = sub_1000092A0();
    String.append(_:)(v13);

    v14._countAndFlagsBits = 62;
    v14._object = 0xE100000000000000;
    String.append(_:)(v14);
    v15 = sub_100017494(v68, v69, &v67);

    *(v6 + 14) = v15;
    _os_log_impl(&_mh_execute_header, v3, v4, "%s: session=%s", v6, 0x16u);
    swift_arrayDestroy();
  }

  if (qword_100339180 != -1)
  {
    swift_once();
  }

  v16 = *(v0 + 256);
  v17 = qword_10038B4E8;
  v18 = sub_1001C5784(v16);
  v20 = v19;
  LODWORD(v16) = ~v19;

  *(v0 + 296) = v18;
  *(v0 + 361) = v20;
  if (v16)
  {
    v21 = *(*(v0 + 248) + 24);
    if (v20)
    {
      v22 = [v18 presentationContext];
      v23 = [v22 mode];

      if (v23 > 2)
      {
        v63 = 0;
      }

      else
      {
        v63 = qword_10028EC20[v23];
      }

      v29 = [*(v0 + 256) bundleIdentifier];
      v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v64 = v30;
    }

    else
    {
      v63 = sub_1001F63B8();
      v27 = sub_1001C9FD0();
      v64 = v28;
    }

    v31 = *(v0 + 248) + OBJC_IVAR____TtC17proximitycontrold14HandoffSession_id;
    v32 = UUID.uuidString.getter();
    v62 = v33;
    v34 = type metadata accessor for HandoffTransfer();
    v35 = *(v34 + 48);
    v36 = *(v34 + 52);
    v37 = swift_allocObject();
    *(v0 + 304) = v37;
    UUID.init()();
    v38 = OBJC_IVAR____TtC17proximitycontrold15HandoffTransfer__state;
    sub_100035D04(&qword_10034DE60, &qword_10028EAC8);
    v39 = swift_allocObject();
    *(v37 + v38) = v39;
    v39[1] = 0u;
    v39[2] = 0u;
    *(v37 + OBJC_IVAR____TtC17proximitycontrold15HandoffTransfer____lazy_storage___mediaTransferStatusPublisher) = 0;
    v39[3] = 0u;
    v39[4] = 0u;
    v40 = (v37 + OBJC_IVAR____TtC17proximitycontrold15HandoffTransfer____lazy_storage___report);
    v40[2] = 0u;
    v40[3] = 0u;
    *v40 = 0u;
    v40[1] = 0u;
    *(v37 + OBJC_IVAR____TtC17proximitycontrold15HandoffTransfer_tasks) = &_swiftEmptySetSingleton;
    if (qword_1003392A0 != -1)
    {
      swift_once();
    }

    v66 = v18;
    sub_100003078(v2, qword_100350090);
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&_mh_execute_header, v41, v42, "Init", v43, 2u);
    }

    v44 = *(v0 + 360);
    v46 = *(v0 + 256);
    v45 = *(v0 + 264);

    *(v37 + OBJC_IVAR____TtC17proximitycontrold15HandoffTransfer_activity) = v46;
    *(v37 + OBJC_IVAR____TtC17proximitycontrold15HandoffTransfer_automatic) = v44;
    *(v37 + OBJC_IVAR____TtC17proximitycontrold15HandoffTransfer_device) = v21;
    *(v37 + OBJC_IVAR____TtC17proximitycontrold15HandoffTransfer_direction) = v63;
    v47 = (v37 + OBJC_IVAR____TtC17proximitycontrold15HandoffTransfer_sessionID);
    *v47 = v32;
    v47[1] = v62;
    v48 = v37 + OBJC_IVAR____TtC17proximitycontrold15HandoffTransfer_type;
    *v48 = v27;
    *(v48 + 8) = v64;
    *(v48 + 32) = 0;
    *(v48 + 16) = 0;
    *(v48 + 24) = 0;
    *(v37 + OBJC_IVAR____TtC17proximitycontrold15HandoffTransfer_contentType) = sub_100077D68(v27, v64, 0);
    v49 = OBJC_IVAR____TtC17proximitycontrold15HandoffTransfer__state;
    *(v0 + 312) = OBJC_IVAR____TtC17proximitycontrold15HandoffTransfer__state;
    v50 = *(v37 + v49);

    v51 = v46;

    *(v0 + 232) = sub_10005E71C();
    sub_100035D04(&qword_10033C268, &qword_10028EAD0);
    sub_10000E244(&qword_10033E580, &qword_10033C268, &qword_10028EAD0);
    v52 = Publisher.eraseToAnyPublisher()();

    *(v0 + 240) = v52;
    swift_allocObject();
    swift_weakInit();

    sub_100035D04(&qword_10033E588, &unk_100274730);
    sub_10000E244(&qword_10033E590, &qword_10033E588, &unk_100274730);
    Publisher<>.sink(receiveValue:)();

    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();

    v53 = UUID.uuidString.getter();
    v55 = v54;
    swift_beginAccess();

    v56 = *(v45 + 24);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v68 = *(v45 + 24);
    *(v45 + 24) = 0x8000000000000000;
    sub_10004DCFC(v37, v53, v55, isUniquelyReferenced_nonNull_native);

    *(v45 + 24) = v68;
    swift_endAccess();
    v58 = *(v45 + 48);

    sub_100049C84(v37);

    sub_10006FFBC(v37);
    v59 = qword_10038B4E8;
    *(v0 + 320) = qword_10038B4E8;
    sub_10003672C(v66, v20);
    if (v20)
    {
      v59;
      v60 = swift_task_alloc();
      *(v0 + 344) = v60;
      *v60 = v0;
      v60[1] = sub_1002104D4;

      return sub_1001FC6B8(v21, v66);
    }

    else
    {
      v59;
      v61 = swift_task_alloc();
      *(v0 + 328) = v61;
      *v61 = v0;
      v61[1] = sub_1002103B8;

      return sub_1001FB388(v21, v66);
    }
  }

  else
  {
    sub_100213B1C();
    swift_allocError();
    *v24 = xmmword_10028E920;
    *(v24 + 16) = 0;
    swift_willThrow();
    v25 = *(v0 + 8);

    return v25();
  }
}

uint64_t sub_1002103B8()
{
  v2 = *v1;
  v3 = *(*v1 + 328);
  v8 = *v1;
  *(*v1 + 336) = v0;

  if (v0)
  {
    v4 = *(v2 + 272);
    v5 = *(v2 + 280);
    v6 = sub_1002107B8;
  }

  else
  {

    v4 = *(v2 + 272);
    v5 = *(v2 + 280);
    v6 = sub_1002105F0;
  }

  return (_swift_task_switch)(v6, v4, v5);
}

uint64_t sub_1002104D4()
{
  v2 = *v1;
  v3 = *(*v1 + 344);
  v8 = *v1;
  *(*v1 + 352) = v0;

  if (v0)
  {
    v4 = *(v2 + 272);
    v5 = *(v2 + 280);
    v6 = sub_100210A2C;
  }

  else
  {

    v4 = *(v2 + 272);
    v5 = *(v2 + 280);
    v6 = sub_100215790;
  }

  return (_swift_task_switch)(v6, v4, v5);
}

uint64_t sub_1002105F0()
{
  v1 = *(v0 + 288);
  sub_100036718(*(v0 + 296), *(v0 + 361));
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Call handoff succeeded", v4, 2u);
  }

  v6 = *(v0 + 304);
  v5 = *(v0 + 312);

  v7 = *(v6 + v5);
  v8 = v7[3];
  v9 = v7[4];
  v10 = v7[5];
  v11 = v7[6];
  v12 = v7[7];
  v13 = v7[8];
  v14 = v7[9];
  v7[3] = 0;
  v7[4] = 0;
  v7[5] = 2;
  *(v7 + 3) = 0u;
  *(v7 + 4) = 0u;

  sub_1001CED4C(v8, v9, v10);
  sub_10005E71C();
  v15 = v7[3];
  v16 = v7[4];
  v17 = v7[5];
  v18 = v7[6];
  v19 = v7[7];
  v20 = v7[8];
  v21 = v7[9];
  *(v0 + 128) = v15;
  *(v0 + 136) = v16;
  *(v0 + 144) = v17;
  *(v0 + 152) = v18;
  *(v0 + 160) = v19;
  *(v0 + 168) = v20;
  *(v0 + 176) = v21;
  sub_10006C458(v15, v16, v17);
  CurrentValueSubject.send(_:)();

  v22 = *(v0 + 152);
  v23 = *(v0 + 160);
  v24 = *(v0 + 168);
  v25 = *(v0 + 176);
  sub_1001CED4C(*(v0 + 128), *(v0 + 136), *(v0 + 144));
  v26 = *(v0 + 296);
  v27 = *(v0 + 264);
  LOBYTE(v10) = *(v0 + 361);
  sub_1002125C4(*(v0 + 304));

  sub_100036718(v26, v10);
  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_1002107B8()
{
  v1 = *(v0 + 336);
  v2 = *(v0 + 288);
  v3 = *(v0 + 296);
  v4 = *(v0 + 361);

  sub_100036718(v3, v4);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v5, v6, "### Error executing call handoff: %@", v7, 0xCu);
    sub_1000097E8(v8, &qword_100339940, &unk_100272C50);
  }

  v11 = *(v0 + 304);
  v10 = *(v0 + 312);

  swift_errorRetain();
  sub_10014FEEC(v1, (v0 + 16));
  v12 = *(v0 + 32);
  v13 = *(v0 + 40);
  v14 = *(v0 + 48);
  v15 = *(v11 + v10);
  v16 = v15[3];
  v17 = v15[4];
  v18 = v15[5];
  v19 = v15[6];
  v20 = v15[7];
  v21 = v15[8];
  v22 = v15[9];
  v23 = *(v0 + 56);
  *(v15 + 3) = *(v0 + 16);
  v15[5] = v12;
  v15[6] = v13;
  v15[7] = v14;
  *(v15 + 4) = v23;

  sub_1001CED4C(v16, v17, v18);
  sub_10005E71C();
  v24 = v15[3];
  v25 = v15[4];
  v26 = v15[5];
  v27 = v15[6];
  v28 = v15[7];
  v29 = v15[8];
  v30 = v15[9];
  *(v0 + 72) = v24;
  *(v0 + 80) = v25;
  *(v0 + 88) = v26;
  *(v0 + 96) = v27;
  *(v0 + 104) = v28;
  *(v0 + 112) = v29;
  *(v0 + 120) = v30;
  sub_10006C458(v24, v25, v26);
  CurrentValueSubject.send(_:)();

  v31 = *(v0 + 96);
  v32 = *(v0 + 104);
  v33 = *(v0 + 112);
  v34 = *(v0 + 120);
  sub_1001CED4C(*(v0 + 72), *(v0 + 80), *(v0 + 88));
  v35 = *(v0 + 296);
  v36 = *(v0 + 264);
  LOBYTE(v17) = *(v0 + 361);
  sub_1002125C4(*(v0 + 304));

  sub_100036718(v35, v17);
  v37 = *(v0 + 8);

  return v37();
}

uint64_t sub_100210A2C()
{
  v1 = *(v0 + 352);
  v2 = *(v0 + 288);
  v3 = *(v0 + 296);
  v4 = *(v0 + 361);

  sub_100036718(v3, v4);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v5, v6, "### Error executing call handoff: %@", v7, 0xCu);
    sub_1000097E8(v8, &qword_100339940, &unk_100272C50);
  }

  v11 = *(v0 + 304);
  v10 = *(v0 + 312);

  swift_errorRetain();
  sub_10014FEEC(v1, (v0 + 16));
  v12 = *(v0 + 32);
  v13 = *(v0 + 40);
  v14 = *(v0 + 48);
  v15 = *(v11 + v10);
  v16 = v15[3];
  v17 = v15[4];
  v18 = v15[5];
  v19 = v15[6];
  v20 = v15[7];
  v21 = v15[8];
  v22 = v15[9];
  v23 = *(v0 + 56);
  *(v15 + 3) = *(v0 + 16);
  v15[5] = v12;
  v15[6] = v13;
  v15[7] = v14;
  *(v15 + 4) = v23;

  sub_1001CED4C(v16, v17, v18);
  sub_10005E71C();
  v24 = v15[3];
  v25 = v15[4];
  v26 = v15[5];
  v27 = v15[6];
  v28 = v15[7];
  v29 = v15[8];
  v30 = v15[9];
  *(v0 + 72) = v24;
  *(v0 + 80) = v25;
  *(v0 + 88) = v26;
  *(v0 + 96) = v27;
  *(v0 + 104) = v28;
  *(v0 + 112) = v29;
  *(v0 + 120) = v30;
  sub_10006C458(v24, v25, v26);
  CurrentValueSubject.send(_:)();

  v31 = *(v0 + 96);
  v32 = *(v0 + 104);
  v33 = *(v0 + 112);
  v34 = *(v0 + 120);
  sub_1001CED4C(*(v0 + 72), *(v0 + 80), *(v0 + 88));
  v35 = *(v0 + 296);
  v36 = *(v0 + 264);
  LOBYTE(v17) = *(v0 + 361);
  sub_1002125C4(*(v0 + 304));

  sub_100036718(v35, v17);
  v37 = *(v0 + 8);

  return v37();
}

void sub_100210CA0(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = sub_100035D04(&qword_10033E570, &unk_100274720);
  v7 = *(v6 - 8);
  v85 = v6;
  v86 = v7;
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v76 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v82 = &v76 - v12;
  v13 = type metadata accessor for Date();
  v83 = *(v13 - 8);
  v84 = v13;
  v14 = *(v83 + 64);
  v15 = __chkstk_darwin(v13);
  v17 = &v76 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v81 = &v76 - v18;
  if (qword_100339230 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  v20 = sub_100003078(v19, qword_10034DBB8);

  v80 = v20;
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v87 = a1;
    v24 = v23;
    v79 = swift_slowAlloc();
    *&v93 = v79;
    *v24 = 136315650;
    *(v24 + 4) = sub_100017494(0xD000000000000027, 0x80000001002A5FB0, &v93);
    *(v24 + 12) = 2080;
    *&v101 = 60;
    *(&v101 + 1) = 0xE100000000000000;
    v78 = v22;
    UUID.uuidString.getter();
    sub_10000B584(8);
    v76 = a2;
    v77 = a3;

    v25 = static String._fromSubstring(_:)();
    v27 = v26;

    v28._countAndFlagsBits = v25;
    v28._object = v27;
    String.append(_:)(v28);

    v29._countAndFlagsBits = 32;
    v29._object = 0xE100000000000000;
    String.append(_:)(v29);
    v30 = *(v87 + 24);
    v31._countAndFlagsBits = sub_1000092A0();
    String.append(_:)(v31);

    v32._countAndFlagsBits = 62;
    v32._object = 0xE100000000000000;
    String.append(_:)(v32);
    v33 = sub_100017494(v101, *(&v101 + 1), &v93);

    *(v24 + 14) = v33;
    *(v24 + 22) = 2080;
    *(v24 + 24) = sub_100017494(v76, v77, &v93);
    _os_log_impl(&_mh_execute_header, v21, v78, "%s: session=%s, reason=%s", v24, 0x20u);
    swift_arrayDestroy();

    a1 = v87;
  }

  v34 = *(a1 + 24);
  v35 = *(*(v34 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice__mediaRemoteDisplayContext) + 24);
  if (v35)
  {
    *&v101 = 0;
    *(&v101 + 1) = 0xE000000000000000;
    v36 = v35;
    _StringGuts.grow(_:)(36);

    *&v101 = 0x1000000000000022;
    *(&v101 + 1) = 0x80000001002A5F80;
    v37 = [v36 description];
    v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v40 = v39;

    v41._countAndFlagsBits = v38;
    v41._object = v40;
    String.append(_:)(v41);

    v42 = v101;
    sub_10008D594(&v101);
    v89 = v101;
    v90 = v102;
    v91 = v103;
    v43 = v105;
    v92 = v104;
    v44 = v81;
    static Date.now.getter();
    v45 = v82;
    v46 = &v82[*(v85 + 48)];
    (*(v83 + 32))(v82, v44, v84);
    *v46 = v42;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v43 = sub_1000AFF4C(0, v43[2] + 1, 1, v43);
    }

    v48 = v43[2];
    v47 = v43[3];
    if (v48 >= v47 >> 1)
    {
      v43 = sub_1000AFF4C(v47 > 1, v48 + 1, 1, v43);
    }

    v43[2] = v48 + 1;
    sub_100098288(v45, v43 + ((*(v86 + 80) + 32) & ~*(v86 + 80)) + *(v86 + 72) * v48);
    v49 = a1 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___report;
    v50 = *(a1 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___report + 16);
    v93 = *(a1 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___report);
    v94 = v50;
    v51 = *(a1 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___report + 48);
    v95 = *(a1 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___report + 32);
    v96 = v51;
    v52 = v92;
    v53 = v91;
    *(v49 + 16) = v90;
    *(v49 + 32) = v53;
    *v49 = v89;
    *(v49 + 48) = v52;
    *(v49 + 56) = v43;
    sub_1000097E8(&v93, &qword_10033E428, &qword_100274640);
    v54 = sub_100070168();
    if (v56 == 1)
    {
    }

    else
    {
      v69 = v54;
      v70 = v55;
      v71 = v56;
      v88 = v55 & 1;
      if (sub_10009FF24(v54, v55 & 1, v56, v34))
      {
        v72 = Logger.logObject.getter();
        v73 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v72, v73))
        {
          v74 = swift_slowAlloc();
          *v74 = 0;
          _os_log_impl(&_mh_execute_header, v72, v73, "Initiating automatic transfer", v74, 2u);
        }

        v75 = v69;
        sub_10020D200(a1, v69, v70 & 1, v71, 1);
      }

      else
      {
      }
    }
  }

  else
  {
    v57 = Logger.logObject.getter();
    v58 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      *v59 = 0;
      _os_log_impl(&_mh_execute_header, v57, v58, "### No mediaRemoteDisplayContext - scheduling possible automatic transfer", v59, 2u);
    }

    sub_10008D594(&v101);
    v97 = v101;
    v98 = v102;
    v99 = v103;
    v60 = v105;
    v100 = v104;
    static Date.now.getter();
    v61 = &v11[*(v85 + 48)];
    (*(v83 + 32))(v11, v17, v84);
    *v61 = 0x100000000000004ELL;
    *(v61 + 1) = 0x80000001002A5F30;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v60 = sub_1000AFF4C(0, v60[2] + 1, 1, v60);
    }

    v63 = v60[2];
    v62 = v60[3];
    if (v63 >= v62 >> 1)
    {
      v60 = sub_1000AFF4C(v62 > 1, v63 + 1, 1, v60);
    }

    v60[2] = v63 + 1;
    sub_100098288(v11, v60 + ((*(v86 + 80) + 32) & ~*(v86 + 80)) + *(v86 + 72) * v63);
    v64 = a1 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___report;
    v65 = *(a1 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___report + 16);
    v93 = *(a1 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___report);
    v94 = v65;
    v66 = *(a1 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___report + 48);
    v95 = *(a1 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___report + 32);
    v96 = v66;
    v67 = v100;
    v68 = v99;
    *(v64 + 16) = v98;
    *(v64 + 32) = v68;
    *v64 = v97;
    *(v64 + 48) = v67;
    *(v64 + 56) = v60;
    sub_1000097E8(&v93, &qword_10033E428, &qword_100274640);
    sub_100211534(a1);
  }
}

uint64_t sub_100211534(uint64_t a1)
{
  v3 = type metadata accessor for UUID();
  v94 = *(v3 - 8);
  v4 = *(v94 + 64);
  __chkstk_darwin(v3);
  v6 = &v76[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_100035D04(&qword_10034C680, &qword_100270390);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v84 = &v76[-v9];
  v10 = sub_100035D04(&qword_10034DE20, &qword_10028EA30);
  v88 = *(v10 - 8);
  v89 = v10;
  v11 = *(v88 + 64);
  __chkstk_darwin(v10);
  v87 = &v76[-v12];
  v13 = sub_100035D04(&qword_10034DE28, &qword_10028EA38);
  v91 = *(v13 - 8);
  v92 = v13;
  v14 = *(v91 + 64);
  __chkstk_darwin(v13);
  v90 = &v76[-v15];
  v16 = type metadata accessor for Date();
  v17 = *(v16 - 8);
  v18 = v17[8];
  v19 = __chkstk_darwin(v16);
  v86 = &v76[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = __chkstk_darwin(v19);
  v23 = &v76[-v22];
  v85 = v24;
  __chkstk_darwin(v21);
  v26 = &v76[-v25];
  Date.init()();
  if (qword_100339230 != -1)
  {
    swift_once();
  }

  v27 = type metadata accessor for Logger();
  sub_100003078(v27, qword_10034DBB8);
  v28 = v17[2];
  v97 = v26;
  v83 = v17 + 2;
  v82 = v28;
  v28(v23, v26, v16);

  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.default.getter();

  v31 = os_log_type_enabled(v29, v30);
  v98 = v17;
  v95 = v1;
  v96 = v3;
  v93 = v6;
  if (v31)
  {
    v32 = swift_slowAlloc();
    v78 = swift_slowAlloc();
    v101[0] = v78;
    *v32 = 136315650;
    *(v32 + 4) = sub_100017494(0xD00000000000002CLL, 0x80000001002A5E70, v101);
    *(v32 + 12) = 2080;
    v99 = 60;
    v100 = 0xE100000000000000;
    UUID.uuidString.getter();
    sub_10000B584(8);
    v77 = v30;

    v33 = static String._fromSubstring(_:)();
    v35 = v34;

    v36._countAndFlagsBits = v33;
    v36._object = v35;
    String.append(_:)(v36);

    v37._countAndFlagsBits = 32;
    v37._object = 0xE100000000000000;
    String.append(_:)(v37);
    v38 = *(a1 + 24);
    v39._countAndFlagsBits = sub_1000092A0();
    String.append(_:)(v39);

    v40._countAndFlagsBits = 62;
    v40._object = 0xE100000000000000;
    String.append(_:)(v40);
    v41 = sub_100017494(v99, v100, v101);

    *(v32 + 14) = v41;
    *(v32 + 22) = 2080;
    sub_1002139E4(&qword_100345628, &type metadata accessor for Date);
    v42 = dispatch thunk of CustomStringConvertible.description.getter();
    v44 = v43;
    v81 = v98[1];
    v81(v23, v16);
    v45 = sub_100017494(v42, v44, v101);

    *(v32 + 24) = v45;
    _os_log_impl(&_mh_execute_header, v29, v77, "%s: session=%s, timestamp=%s", v32, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    v81 = v17[1];
    v81(v23, v16);
  }

  v79 = a1;
  v80 = v16;
  v46 = *(a1 + 24);
  v99 = sub_10006FD08();
  v47 = v97;
  if (qword_1003391E8 != -1)
  {
    swift_once();
  }

  v48 = qword_10038B5B8;
  v101[0] = qword_10038B5B8;
  v49 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v50 = v84;
  (*(*(v49 - 8) + 56))(v84, 1, 1, v49);
  v51 = v48;
  sub_100035D04(&qword_10033D4E0, &qword_10028EA40);
  sub_100003118(0, &qword_100339320, OS_dispatch_queue_ptr);
  sub_10000E244(&qword_10033D4E8, &qword_10033D4E0, &qword_10028EA40);
  sub_1000513CC();
  v52 = v87;
  Publisher.receive<A>(on:options:)();
  sub_1000097E8(v50, &qword_10034C680, &qword_100270390);

  sub_100003118(0, &qword_10033D520, PCMediaRemoteDisplayContext_ptr);
  sub_10000E244(&qword_10034DE30, &qword_10034DE20, &qword_10028EA30);
  v53 = v89;
  v54 = v90;
  Publisher.compactMap<A>(_:)();
  (*(v88 + 8))(v52, v53);
  v55 = swift_allocObject();
  v56 = v95;
  swift_weakInit();
  v57 = v86;
  v58 = v80;
  v82(v86, v47, v80);
  v59 = v98;
  v60 = (*(v98 + 80) + 24) & ~*(v98 + 80);
  v61 = (v85 + v60 + 7) & 0xFFFFFFFFFFFFFFF8;
  v62 = swift_allocObject();
  *(v62 + 16) = v55;
  (v59[4])(v62 + v60, v57, v58);
  *(v62 + v61) = v79;
  sub_10000E244(&qword_10034DE38, &qword_10034DE28, &qword_10028EA38);

  v63 = v92;
  v64 = Publisher<>.sink(receiveValue:)();

  (*(v91 + 8))(v54, v63);
  v65 = *(v56 + 56);
  *(v56 + 56) = v64;

  v67 = v93;
  v66 = v94;
  v68 = v96;
  (*(v94 + 16))(v93, v46 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_id, v96);
  swift_beginAccess();
  v69 = *(v56 + 40);
  if (!*(v69 + 16))
  {
    goto LABEL_12;
  }

  v70 = *(v56 + 40);

  v71 = sub_100019110(v67);
  if ((v72 & 1) == 0)
  {

LABEL_12:
    (*(v66 + 8))(v67, v68);
    sub_10001AEA0(v46);
    return (v81)(v97, v58);
  }

  v73 = *(*(v69 + 56) + 8 * v71);
  v74 = *(v66 + 8);

  v74(v67, v68);

  return (v81)(v97, v58);
}

uint64_t sub_100211FA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v60 = a4;
  v5 = sub_100035D04(&qword_10033E570, &unk_100274720);
  v59 = *(v5 - 8);
  v6 = *(v59 + 64);
  __chkstk_darwin(v5);
  v8 = &v54 - v7;
  v61 = type metadata accessor for Date();
  v9 = *(v61 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v61);
  v13 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v16 = &v54 - v15;
  __chkstk_darwin(v14);
  v18 = &v54 - v17;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v20 = result;
    v58 = v5;
    Date.timeIntervalSinceNow.getter();
    v22 = v21;
    if (qword_100339230 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    v56 = sub_100003078(v23, qword_10034DBB8);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();
    v26 = os_log_type_enabled(v24, v25);
    v57 = v13;
    if (v26)
    {
      v27 = swift_slowAlloc();
      v55 = v9;
      v28 = v27;
      v29 = swift_slowAlloc();
      v54 = a3;
      v30 = v29;
      *&v67[0] = v29;
      *v28 = 136315138;
      v31 = sub_100209A0C(-v22);
      v33 = v8;
      v34 = sub_100017494(v31, v32, v67);

      *(v28 + 4) = v34;
      v8 = v33;
      _os_log_impl(&_mh_execute_header, v24, v25, "Transfer context arrived %ss after scheduling", v28, 0xCu);
      sub_10000903C(v30);

      v9 = v55;
    }

    if (qword_100338F18 != -1)
    {
      swift_once();
    }

    v35 = *(qword_10038B0B8 + 744);
    sub_10005F4E4();

    static Date.+ infix(_:_:)();
    Date.init()();
    v36 = static Date.< infix(_:_:)();
    v37 = *(v9 + 8);
    v38 = v16;
    v39 = v61;
    v37(v38, v61);
    if (v36)
    {
      sub_100210CA0(v60, 0xD00000000000002DLL, 0x80000001002A5F00);
      v37(v18, v39);
    }

    else
    {
      v40 = Logger.logObject.getter();
      v41 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        *v42 = 0;
        _os_log_impl(&_mh_execute_header, v40, v41, "### mediaRemoteDisplayContext arrived after deadline", v42, 2u);
      }

      sub_10008D594(v67);
      v63 = v67[0];
      v64 = v67[1];
      v65 = v67[2];
      v43 = v69;
      v66 = v68;
      v44 = v57;
      static Date.now.getter();
      v45 = &v8[*(v58 + 48)];
      (*(v9 + 32))(v8, v44, v61);
      *v45 = 0x1000000000000037;
      *(v45 + 1) = 0x80000001002A5EC0;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v43 = sub_1000AFF4C(0, v43[2] + 1, 1, v43);
      }

      v47 = v43[2];
      v46 = v43[3];
      if (v47 >= v46 >> 1)
      {
        v43 = sub_1000AFF4C(v46 > 1, v47 + 1, 1, v43);
      }

      v37(v18, v61);
      v43[2] = v47 + 1;
      sub_100098288(v8, v43 + ((*(v59 + 80) + 32) & ~*(v59 + 80)) + *(v59 + 72) * v47);
      v48 = v60 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___report;
      v49 = *(v60 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___report + 16);
      v62[0] = *(v60 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___report);
      v62[1] = v49;
      v50 = *(v60 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___report + 48);
      v62[2] = *(v60 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___report + 32);
      v62[3] = v50;
      v51 = v66;
      v52 = v65;
      *(v48 + 16) = v64;
      *(v48 + 32) = v52;
      *v48 = v63;
      *(v48 + 48) = v51;
      *(v48 + 56) = v43;
      sub_1000097E8(v62, &qword_10033E428, &qword_100274640);
    }

    v53 = *(v20 + 56);
    *(v20 + 56) = 0;
  }

  return result;
}

uint64_t sub_1002125C4(uint64_t a1)
{
  if (qword_100339230 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100003078(v3, qword_10034DBB8);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v21[0] = swift_slowAlloc();
    *v6 = 136315394;
    *(v6 + 4) = sub_100017494(0xD000000000000017, 0x80000001002A6120, v21);
    *(v6 + 12) = 2080;
    v7 = sub_10023E6A4();
    v9 = sub_100017494(v7, v8, v21);

    *(v6 + 14) = v9;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s: transfer=%s", v6, 0x16u);
    swift_arrayDestroy();
  }

  v10 = *(v1 + 48);

  sub_100209708(a1, sub_10004B06C);

  v11 = (a1 + OBJC_IVAR____TtC17proximitycontrold15HandoffTransfer_type);
  if (*(a1 + OBJC_IVAR____TtC17proximitycontrold15HandoffTransfer_type + 32) == 1)
  {
    v13 = *v11;
    v12 = v11[1];

    swift_beginAccess();
    v14 = v13;
    v15 = v12;
  }

  else
  {
    v16 = *(a1 + OBJC_IVAR____TtC17proximitycontrold15HandoffTransfer_device) + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_id;
    v17 = UUID.uuidString.getter();
    v19 = v18;
    swift_beginAccess();
    v14 = v17;
    v15 = v19;
  }

  sub_1001CFDEC(0, v14, v15);
  swift_endAccess();
  return sub_10023E254();
}

uint64_t sub_100212860()
{
  v0 = type metadata accessor for OSSignpostID();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v7[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      sub_1002125C4(Strong);
      sub_10001B7F4();
      OSSignpostID.init(_:)();
      static os_signpost_type_t.end.getter();
      if (qword_100338F20 != -1)
      {
        swift_once();
      }

      os_signpost(_:dso:log:name:signpostID:_:_:)();

      return (*(v1 + 8))(v4, v0);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_100212A48(uint64_t a1, void *a2)
{
  v3 = sub_10000EBC0((a1 + 32), *(a1 + 56));
  v4 = *v3;
  **(*(*v3 + 64) + 40) = a2;
  v5 = a2;

  return _swift_continuation_resume(v4);
}

uint64_t sub_100212AAC(void (*a1)(void))
{
  a1();

  return _typeName(_:qualified:)();
}

void *sub_100212AE8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100035D04(&qword_10034C660, &qword_100278DD0);
  v35 = *(v4 - 8);
  v36 = v4;
  v5 = *(v35 + 64);
  __chkstk_darwin(v4);
  v7 = v34 - v6;
  v8 = sub_100035D04(&qword_10034DDB8, &qword_10028E9B0);
  v37 = *(v8 - 8);
  v38 = v8;
  v9 = *(v37 + 64);
  __chkstk_darwin(v8);
  v11 = v34 - v10;
  v12 = sub_100035D04(&qword_10034DDC0, &qword_10028E9B8);
  v39 = *(v12 - 8);
  v40 = v12;
  v13 = *(v39 + 64);
  __chkstk_darwin(v12);
  v34[0] = v34 - v14;
  v1[3] = _swiftEmptyDictionarySingleton;
  v1[4] = _swiftEmptyDictionarySingleton;
  v1[5] = _swiftEmptyDictionarySingleton;
  v41 = type metadata accessor for HandoffTransfer();
  v42 = type metadata accessor for UUID();
  v43 = sub_1002139E4(&qword_10034DDC8, type metadata accessor for HandoffTransfer);
  KeyPath = swift_getKeyPath();
  v16 = sub_100035D04(&qword_10034DDD0, &unk_10028E9F0);
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  v19 = sub_10006B474(KeyPath, 0);

  v2[8] = &_swiftEmptySetSingleton;
  v2[6] = v19;
  v2[7] = 0;
  if (qword_100339230 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  sub_100003078(v20, qword_10034DBB8);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&_mh_execute_header, v21, v22, "Init", v23, 2u);
  }

  v2[2] = a1;

  v44 = sub_100140E18();
  swift_allocObject();
  swift_weakInit();

  sub_100035D04(&qword_10034C6B0, &qword_1002703C0);
  v34[1] = &protocol conformance descriptor for AnyPublisher<A, B>;
  sub_10000E244(&qword_1003398E0, &qword_10034C6B0, &qword_1002703C0);
  Publisher<>.sink(receiveValue:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v44 = *(a1 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___sessionPublisher);
  type metadata accessor for HandoffSession();

  Publisher.compactMap<A>(_:)();

  sub_100035D04(&qword_10034DDD8, &unk_10028EA00);
  v24 = v36;
  Publishers.CompactMap.map<A>(_:)();
  (*(v35 + 8))(v7, v24);
  sub_10000E244(&qword_10034DDE0, &qword_10034DDB8, &qword_10028E9B0);
  sub_10000E244(&qword_10034DDE8, &qword_10034DDD8, &unk_10028EA00);
  v25 = v34[0];
  v26 = v38;
  Publisher<>.switchToLatest()();
  (*(v37 + 8))(v11, v26);
  v27 = swift_allocObject();
  swift_weakInit();
  v28 = swift_allocObject();
  *(v28 + 16) = sub_100213378;
  *(v28 + 24) = v27;
  sub_10000E244(&qword_10034DDF0, &qword_10034DDC0, &qword_10028E9B8);
  v29 = v40;
  Publisher<>.sink(receiveValue:)();

  (*(v39 + 8))(v25, v29);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v30 = *(a1 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment_mediaRemoteProxy);
  v44 = sub_1000F1608();
  swift_allocObject();
  swift_weakInit();
  sub_100035D04(&qword_100343C08, &qword_100279AB0);
  sub_10000E244(&qword_100343C10, &qword_100343C08, &qword_100279AB0);
  Publisher<>.sink(receiveValue:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v44 = sub_1000F1790();
  v31 = swift_allocObject();
  swift_weakInit();

  v32 = swift_allocObject();
  *(v32 + 16) = sub_1002133BC;
  *(v32 + 24) = v31;
  sub_100035D04(&qword_10034DDF8, &qword_10028EA10);
  sub_10000E244(&qword_10034DE00, &qword_10034DDF8, &qword_10028EA10);
  Publisher<>.sink(receiveValue:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  return v2;
}

uint64_t sub_100213380(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1, *(a1 + 8), *(a1 + 16), *(a1 + 24), *(a1 + 32));
}

uint64_t sub_1002133C4(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v4;
  v7[2] = *(a1 + 32);
  v5 = *(a1 + 56);
  v8 = *(a1 + 48);
  return v2(v7, v5, *(a1 + 64));
}

id sub_10021341C(id result, unint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 > 1u)
  {
    if (a4 == 2)
    {

      return sub_10009D534(result, a2);
    }

    else if (a4 == 3)
    {
    }
  }

  else
  {
    v4 = result;

    return v4;
  }

  return result;
}

uint64_t sub_1002134C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a1 + 64;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;

  v10 = 0;
  while (v7)
  {
LABEL_11:
    v13 = *(*(a1 + 56) + ((v10 << 9) | (8 * __clz(__rbit64(v7)))));
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    v14 = sub_10000DF0C();
    v16 = v15;

    if (v16)
    {
      if (v14 == a2 && v16 == a3)
      {

        return v13;
      }

      v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v11)
      {

        return v13;
      }
    }

    v7 &= v7 - 1;
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= v8)
    {

      return 0;
    }

    v7 = *(v4 + 8 * v12);
    ++v10;
    if (v7)
    {
      v10 = v12;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void sub_100213670(uint64_t a1)
{
  if (qword_100339230 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_10034DBB8);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v5 = 136315394;
    *(v5 + 4) = sub_100017494(0xD000000000000014, 0x80000001002A21B0, &v19);
    *(v5 + 12) = 2080;
    if (a1)
    {
      UUID.uuidString.getter();
      sub_10000B584(8);

      v6 = static String._fromSubstring(_:)();
      v8 = v7;

      v9._countAndFlagsBits = v6;
      v9._object = v8;
      String.append(_:)(v9);

      v10._countAndFlagsBits = 32;
      v10._object = 0xE100000000000000;
      String.append(_:)(v10);
      v11 = *(a1 + 24);
      v12._countAndFlagsBits = sub_1000092A0();
      String.append(_:)(v12);

      v13._countAndFlagsBits = 62;
      v13._object = 0xE100000000000000;
      String.append(_:)(v13);
      v14 = 60;
      v15 = 0xE100000000000000;
    }

    else
    {
      v15 = 0xE300000000000000;
      v14 = 7104878;
    }

    v16 = sub_100017494(v14, v15, &v19);

    *(v5 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v3, v4, "%s: session=%s", v5, 0x16u);
    swift_arrayDestroy();
  }

  if (a1)
  {
    v17 = *(*(a1 + 24) + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice__executedThisSession);
    *(v17 + 24) = 0;

    sub_10005E50C();
    v18 = *(v17 + 24);
    CurrentValueSubject.send(_:)();
  }
}

uint64_t sub_100213944(uint64_t a1)
{
  v3 = *(type metadata accessor for Date() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_100211FA4(a1, v5, v1 + v4, v6);
}

uint64_t sub_1002139E4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100213A2C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = *(v1 + 64);
  v11 = *(v1 + 72);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_1000E6584;

  return sub_10020DB4C(a1, v4, v5, v6, v7, v8, v9, v10);
}

unint64_t sub_100213B1C()
{
  result = qword_10034DE58;
  if (!qword_10034DE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034DE58);
  }

  return result;
}

uint64_t sub_100213B78()
{
  v1 = *(*(type metadata accessor for UUID() - 8) + 80);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);

  return sub_100212860();
}

uint64_t sub_100213BEC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1000E6584;

  return sub_10020C7D0(a1, v4, v5, v6, v7, v9, v8);
}

void sub_100213CC0()
{
  if (qword_100339230 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100003078(v0, qword_10034DBB8);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136315138;
    *(v2 + 4) = sub_100017494(0xD000000000000025, 0x80000001002A6310, &v5);
    _os_log_impl(&_mh_execute_header, oslog, v1, "%s", v2, 0xCu);
    sub_10000903C(v3);
  }
}

void sub_100213E08(uint64_t a1)
{
  if (qword_100339230 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_10034DBB8);

  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v4 = 136315394;
    *(v4 + 4) = sub_100017494(0xD000000000000024, 0x80000001002A6340, &v9);
    *(v4 + 12) = 2080;
    v5 = sub_100254BB4(a1);
    v7 = sub_100017494(v5, v6, &v9);

    *(v4 + 14) = v7;
    _os_log_impl(&_mh_execute_header, oslog, v3, "%s: effect=%s", v4, 0x16u);
    swift_arrayDestroy();
  }
}

uint64_t sub_100213FC8()
{
  v24 = v0;
  if (qword_100339230 != -1)
  {
    swift_once();
  }

  v1 = v0[19];
  v2 = type metadata accessor for Logger();
  v0[20] = sub_100003078(v2, qword_10034DBB8);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[19];
    v6 = swift_slowAlloc();
    v23[0] = swift_slowAlloc();
    *v6 = 136315394;
    *(v6 + 4) = sub_100017494(0xD00000000000001BLL, 0x80000001002A62F0, v23);
    *(v6 + 12) = 2080;
    v7 = sub_1000092A0();
    v9 = sub_100017494(v7, v8, v23);

    *(v6 + 14) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "%s: %s", v6, 0x16u);
    swift_arrayDestroy();
  }

  v10 = v0[19];
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v11 = v0[10];
  sub_10000DF0C();
  v13 = v12;

  if (v13)
  {
    v14 = objc_allocWithZone(MRUpdateActiveSystemEndpointRequest);
    v15 = String._bridgeToObjectiveC()();

    v16 = String._bridgeToObjectiveC()();
    v17 = [v14 initWithOutputDeviceUID:v15 reason:v16];
    v0[21] = v17;

    sub_100003118(0, &qword_100339320, OS_dispatch_queue_ptr);
    v18 = static OS_dispatch_queue.main.getter();
    v0[22] = v18;
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_100214410;
    v19 = swift_continuation_init();
    v0[17] = sub_100035D04(&qword_10034DE88, &qword_10028EB40);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_100212A48;
    v0[13] = &unk_100313580;
    v0[14] = v19;
    [v17 perform:v18 completion:v0 + 10];

    return _swift_continuation_await(v0 + 2);
  }

  else
  {
    sub_100035D04(&qword_10034DE78, &qword_10028EB38);
    sub_10000E244(&qword_10034DE80, &qword_10034DE78, &qword_10028EB38);
    swift_allocError();
    *v20 = xmmword_10028E910;
    swift_willThrow();
    v21 = v0[1];

    return v21();
  }
}

uint64_t sub_100214410()
{
  v2 = *v0;
  v3 = *v0;

  return (_swift_task_switch)(sub_1002144F0, 0, 0);
}

uint64_t sub_1002144F0()
{
  v1 = *(v0 + 144);

  v2 = [v1 error];
  if (v2)
  {
    v3 = *(v0 + 160);
    v4 = v2;
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138412290;
      v9 = v4;
      v10 = _swift_stdlib_bridgeErrorToNSError();
      *(v7 + 4) = v10;
      *v8 = v10;
      _os_log_impl(&_mh_execute_header, v5, v6, "### Failed to set system endpoint: %@", v7, 0xCu);
      sub_1000097E8(v8, &qword_100339940, &unk_100272C50);
    }

    v11 = *(v0 + 168);

    swift_willThrow();
    v12 = *(v0 + 8);
  }

  else
  {
    v13 = *(v0 + 168);

    v12 = *(v0 + 8);
  }

  return v12();
}

uint64_t sub_100214688(void *a1, char a2, uint64_t a3)
{
  v6 = type metadata accessor for LaunchAppRequest.Option();
  v7 = *(v6 - 8);
  v8 = *(v7 + 8);
  v9 = __chkstk_darwin(v6);
  v96 = &v87 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v95 = &v87 - v11;
  v12 = sub_100035D04(&unk_100348F30, &unk_100272540);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12 - 8);
  v92 = &v87 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v91 = &v87 - v16;
  v17 = type metadata accessor for UUID();
  v93 = *(v17 - 8);
  v94 = v17;
  v18 = *(v93 + 64);
  v19 = __chkstk_darwin(v17);
  v90 = &v87 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v89 = &v87 - v21;
  v22 = sub_100035D04(&qword_10034DE70, &unk_10028EB10);
  v23 = *(*(v22 - 8) + 64);
  v24 = __chkstk_darwin(v22 - 8);
  v100 = &v87 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v27 = &v87 - v26;
  if (qword_100339230 != -1)
  {
    swift_once();
  }

  v28 = type metadata accessor for Logger();
  v29 = sub_100003078(v28, qword_10034DBB8);

  v30 = a1;
  v98 = v29;
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.default.getter();

  v99 = v30;

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v97 = v7;
    v102 = v34;
    *v33 = 136315394;
    *(v33 + 4) = sub_100017494(0xD000000000000036, 0x80000001002A6210, &v102);
    *(v33 + 12) = 2080;
    v35 = sub_100078EF8(a1, a2 & 1, a3);
    v37 = a2;
    v38 = v27;
    v39 = sub_100017494(v35, v36, &v102);

    *(v33 + 14) = v39;
    v27 = v38;
    a2 = v37;
    _os_log_impl(&_mh_execute_header, v31, v32, "%s: %s", v33, 0x16u);
    swift_arrayDestroy();
    v7 = v97;
  }

  if (a2)
  {
    sub_100035D04(&qword_10033F020, &qword_100275768);
    v40 = *(v7 + 9);
    v41 = (v7[80] + 32) & ~v7[80];
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_10026F050;
    swift_storeEnumTagMultiPayload();
    if (!a3)
    {
      v43 = *(v7 + 7);
      v43(v27, 1, 1, v6);
      v44 = v99;
      v45 = [v44 service];
      v99 = v44;
      if (v45 - 2 < 2)
      {
        v55 = [v44 conversationUUID];
        if (!v55)
        {
          goto LABEL_26;
        }

        v97 = v7;
        v88 = v6;
        v47 = v27;
        v56 = v55;
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        v49 = v92;
        UUID.init(uuidString:)();

        v58 = v93;
        v57 = v94;
        if ((*(v93 + 48))(v49, 1, v94) != 1)
        {
          sub_1000097E8(v27, &qword_10034DE70, &unk_10028EB10);
          v73 = v49;
          v74 = *(v58 + 32);
          v75 = v90;
          v74(v90, v73, v57);
          v74(v27, v75, v57);
          v6 = v88;
          goto LABEL_24;
        }
      }

      else
      {
        if (!v45)
        {
          v59 = v6;
          v60 = Logger.logObject.getter();
          v61 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v60, v61))
          {
            v62 = swift_slowAlloc();
            *v62 = 0;
            _os_log_impl(&_mh_execute_header, v60, v61, "### Unknown service", v62, 2u);
          }

          v6 = v59;
          goto LABEL_26;
        }

        if (v45 != 1)
        {
          v97 = v27;
          v63 = v45;
          v64 = Logger.logObject.getter();
          v65 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v64, v65))
          {
            v66 = swift_slowAlloc();
            v88 = v6;
            v67 = v66;
            v68 = v7;
            v69 = swift_slowAlloc();
            v102 = v69;
            *v67 = 136315138;
            v101 = v63;
            type metadata accessor for TUCallService(0);
            v70 = String.init<A>(describing:)();
            v72 = sub_100017494(v70, v71, &v102);

            *(v67 + 4) = v72;
            _os_log_impl(&_mh_execute_header, v64, v65, "### Unknown service type: %s", v67, 0xCu);
            sub_10000903C(v69);
            v7 = v68;

            v6 = v88;
          }

          v27 = v97;
          goto LABEL_26;
        }

        v46 = [v44 callUUID];
        if (!v46)
        {
LABEL_26:
          v76 = v100;
          sub_100215460(v27, v100);
          if ((*(v7 + 6))(v76, 1, v6) == 1)
          {
            sub_1000097E8(v76, &qword_10034DE70, &unk_10028EB10);
            v77 = Logger.logObject.getter();
            v78 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v77, v78))
            {
              v79 = swift_slowAlloc();
              v80 = v27;
              v81 = swift_slowAlloc();
              v102 = v81;
              *v79 = 136315138;
              *(v79 + 4) = sub_100017494(0x656D695465636146, 0xE800000000000000, &v102);
              _os_log_impl(&_mh_execute_header, v77, v78, "### Launching %s for call activity without URL", v79, 0xCu);
              sub_10000903C(v81);

              v82 = v80;
            }

            else
            {

              v82 = v27;
            }

            sub_1000097E8(v82, &qword_10034DE70, &unk_10028EB10);
          }

          else
          {
            v83 = v95;
            sub_1002156FC(v76, v95, type metadata accessor for LaunchAppRequest.Option);
            v84 = v96;
            sub_1002154D0(v83, v96, type metadata accessor for LaunchAppRequest.Option);
            v85 = sub_1000B0258(1uLL, 2, 1, v42);

            sub_100215538(v83, type metadata accessor for LaunchAppRequest.Option);
            sub_1000097E8(v27, &qword_10034DE70, &unk_10028EB10);
            *(v85 + 16) = 2;
            sub_1002156FC(v84, v85 + v41 + v40, type metadata accessor for LaunchAppRequest.Option);
          }

          return 0;
        }

        v97 = v7;
        v88 = v6;
        v47 = v27;
        v48 = v46;
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        v49 = v91;
        UUID.init(uuidString:)();

        v51 = v93;
        v50 = v94;
        if ((*(v93 + 48))(v49, 1, v94) != 1)
        {
          sub_1000097E8(v27, &qword_10034DE70, &unk_10028EB10);
          v52 = v49;
          v53 = *(v51 + 32);
          v54 = v89;
          v53(v89, v52, v50);
          v53(v27, v54, v50);
          v6 = v88;
LABEL_24:
          swift_storeEnumTagMultiPayload();
          v43(v27, 0, 1, v6);
          goto LABEL_25;
        }
      }

      sub_1000097E8(v49, &unk_100348F30, &unk_100272540);
      v27 = v47;
      v6 = v88;
LABEL_25:
      v7 = v97;
      goto LABEL_26;
    }
  }

  return 0;
}

uint64_t sub_10021511C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a3;
  v4[9] = a4;
  v4[6] = a1;
  v4[7] = a2;
  return (_swift_task_switch)(sub_100215140, 0, 0);
}

uint64_t sub_100215140()
{
  v19 = v0;
  if (qword_100339230 != -1)
  {
    swift_once();
  }

  v1 = v0[8];
  v2 = v0[9];
  v4 = v0[6];
  v3 = v0[7];
  v5 = type metadata accessor for Logger();
  sub_100003078(v5, qword_10034DBB8);
  sub_10009D534(v4, v3);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  sub_10009D58C(v4, v3);

  if (os_log_type_enabled(v6, v7))
  {
    v9 = v0[8];
    v8 = v0[9];
    v11 = v0[6];
    v10 = v0[7];
    v12 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v12 = 136315394;
    *(v12 + 4) = sub_100017494(0xD00000000000001ELL, 0x80000001002A61C0, &v18);
    *(v12 + 12) = 2080;
    v0[2] = v11;
    v0[3] = v10;
    v0[4] = v9;
    v0[5] = v8;
    sub_10009D534(v11, v10);

    v13 = String.init<A>(describing:)();
    v15 = sub_100017494(v13, v14, &v18);

    *(v12 + 14) = v15;
    _os_log_impl(&_mh_execute_header, v6, v7, "%s: %s", v12, 0x16u);
    swift_arrayDestroy();
  }

  v16 = v0[1];

  return v16();
}

uint64_t sub_100215378(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = *(v1 + 64);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1000E6584;

  return sub_10020B844(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_100215460(uint64_t a1, uint64_t a2)
{
  v4 = sub_100035D04(&qword_10034DE70, &unk_10028EB10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002154D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100215538(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void *sub_100215598(void *result, unint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 > 1u)
  {
    if (a4 == 2)
    {

      return sub_10009D58C(result, a2);
    }

    else if (a4 == 3)
    {
    }
  }

  else
  {
  }

  return result;
}

uint64_t sub_10021563C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10009D6D4;

  return sub_10020AC94(a1, v4, v5, v7, v6);
}

uint64_t sub_1002156FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100215764(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

char *sub_10021579C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  ObjectType = swift_getObjectType();
  if (qword_100338EE8 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_100003078(v11, qword_10033F340);

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v31.receiver = v15;
    *v14 = 136315138;
    *(v14 + 4) = sub_100017494(a3, a4, &v31);
    _os_log_impl(&_mh_execute_header, v12, v13, "%s-Init", v14, 0xCu);
    sub_10000903C(v15);
  }

  v16 = objc_allocWithZone(NSUserDefaults);
  v17 = String._bridgeToObjectiveC()();

  v18 = [v16 initWithSuiteName:v17];

  if (v18)
  {
    *&v7[qword_10033F358] = v18;
    v19 = &v7[qword_10033F360];
    *v19 = a3;
    v19[1] = a4;
    v20 = &v7[qword_10033F368];
    *v20 = a5;
    *(v20 + 1) = a6;
    v32.receiver = v7;
    v32.super_class = ObjectType;

    v21 = v18;
    v22 = objc_msgSendSuper2(&v32, "init");
    v23 = String._bridgeToObjectiveC()();
    [v21 addObserver:v22 forKeyPath:v23 options:1 context:0];

    v24 = String._bridgeToObjectiveC()();

    v25 = [v21 objectForKey:v24];

    if (v25)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      sub_1000516B4(&v30, &v31);
    }

    else
    {
      memset(&v31, 0, 32);
    }

    sub_100035D04(&unk_100339680, &qword_100278390);
    if (swift_dynamicCast())
    {
      v31.receiver = v30;
      LOBYTE(v31.super_class) = 0;
      v26 = *&v22[qword_10033F368 + 8];
      (*&v22[qword_10033F368])(&v31);
    }

    else
    {
    }
  }

  else
  {

    swift_deallocPartialClassInstance();
    return 0;
  }

  return v22;
}

uint64_t sub_100215B20()
{
  v0 = type metadata accessor for Logger();
  sub_100036838(v0, qword_10034DE90);
  sub_100003078(v0, qword_10034DE90);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100215BA0(void *a1, int a2)
{
  v30 = a2;
  v3 = sub_100035D04(&qword_10034E060, &qword_10028EDA8);
  v28 = *(v3 - 8);
  v29 = v3;
  v4 = *(v28 + 64);
  __chkstk_darwin(v3);
  v27 = &v23 - v5;
  v6 = sub_100035D04(&qword_10034E068, &qword_10028EDB0);
  v25 = *(v6 - 8);
  v26 = v6;
  v7 = *(v25 + 64);
  __chkstk_darwin(v6);
  v9 = &v23 - v8;
  v10 = sub_100035D04(&qword_10034E070, &qword_10028EDB8);
  v24 = *(v10 - 8);
  v11 = *(v24 + 64);
  __chkstk_darwin(v10);
  v13 = &v23 - v12;
  v14 = sub_100035D04(&qword_10034E078, &qword_10028EDC0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v23 - v17;
  v19 = a1[4];
  sub_10000EBC0(a1, a1[3]);
  sub_100217A9C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v20 = (v15 + 8);
  if (v30)
  {
    if (v30 == 1)
    {
      v32 = 1;
      sub_100217B44();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v25 + 8))(v9, v26);
    }

    else
    {
      v33 = 2;
      sub_100217AF0();
      v21 = v27;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v28 + 8))(v21, v29);
    }
  }

  else
  {
    v31 = 0;
    sub_100217B98();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v24 + 8))(v13, v10);
  }

  return (*v20)(v18, v14);
}

uint64_t sub_100215F20()
{
  v1 = 0x7774654E656D6173;
  if (*v0 != 1)
  {
    v1 = 0x656D6F48656D6173;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656E6F7972657665;
  }
}

uint64_t sub_100215F84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1002173F0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100215FAC(uint64_t a1)
{
  v2 = sub_100217A9C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100215FE8(uint64_t a1)
{
  v2 = sub_100217A9C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100216024(uint64_t a1)
{
  v2 = sub_100217B98();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100216060(uint64_t a1)
{
  v2 = sub_100217B98();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10021609C(uint64_t a1)
{
  v2 = sub_100217AF0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1002160D8(uint64_t a1)
{
  v2 = sub_100217AF0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100216114(uint64_t a1)
{
  v2 = sub_100217B44();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100216150(uint64_t a1)
{
  v2 = sub_100217B44();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10021618C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10021750C(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void *sub_1002161D4()
{
  type metadata accessor for AccessControlLevelMonitor();
  v0 = swift_allocObject();
  result = sub_100216470();
  qword_10038B5D0 = v0;
  return result;
}

char *sub_100216210()
{
  v1 = *(v0 + 40);
  v2 = v1;
  if (v1 == 1)
  {
    v3 = objc_allocWithZone(sub_100035D04(&qword_10034E080, &unk_10028EDC8));

    v4 = v0;
    v2 = sub_10021579C(0xD000000000000011, 0x80000001002A16C0, 0xD000000000000012, 0x80000001002A36C0, sub_100217BF4, v0);
    v5 = *(v0 + 40);
    *(v4 + 40) = v2;
    v6 = v2;
    sub_10001DAC4(v5);
  }

  sub_100056F7C(v1);
  return v2;
}

uint64_t sub_1002162EC(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a2 + 24);

  sub_1001C251C(v2, v3);
}

char *sub_100216348()
{
  v1 = *(v0 + 48);
  v2 = v1;
  if (v1 == 1)
  {
    v3 = objc_allocWithZone(sub_100035D04(&qword_10034E080, &unk_10028EDC8));

    v4 = v0;
    v2 = sub_10021579C(0xD000000000000011, 0x80000001002A16C0, 0x776F6C6C41703270, 0xE800000000000000, sub_100217BEC, v0);
    v5 = *(v0 + 48);
    *(v4 + 48) = v2;
    v6 = v2;
    sub_10001DAC4(v5);
  }

  sub_100056F7C(v1);
  return v2;
}

uint64_t sub_100216414(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a2 + 32);

  sub_1001C251C(v2, v3);
}

void *sub_100216470()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v94 = *(v2 - 8);
  v3 = *(v94 + 64);
  __chkstk_darwin(v2);
  v92 = v4;
  v93 = &v82 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100035D04(&qword_10034E088, &qword_10028EDD8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v96 = &v82 - v8;
  v9 = sub_100035D04(&qword_10034E090, &qword_10028EDE0);
  v87 = *(v9 - 8);
  v88 = v9;
  v10 = *(v87 + 64);
  __chkstk_darwin(v9);
  v85 = &v82 - v11;
  v12 = sub_100035D04(&qword_10034E098, &qword_10028EDE8);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v86 = &v82 - v15;
  v16 = sub_100035D04(&qword_10034E0A0, &qword_10028EDF0);
  v90 = *(v16 - 8);
  v91 = v16;
  v17 = *(v90 + 64);
  __chkstk_darwin(v16);
  v89 = &v82 - v18;
  v19 = sub_100035D04(&qword_10034E0A8, &qword_10028EDF8);
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  *(v0 + 24) = sub_10003349C(0, 1, 0, 0, 0);
  v22 = *(v19 + 48);
  v23 = *(v19 + 52);
  swift_allocObject();
  *(v0 + 32) = sub_10003349C(0, 1, 0, 0, 0);
  *(v0 + 40) = vdupq_n_s64(1uLL);
  *(v0 + 56) = 0;
  if (qword_100339238 != -1)
  {
    swift_once();
  }

  v95 = v2;
  v24 = sub_100003078(v2, qword_10034DE90);
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&_mh_execute_header, v25, v26, "Init", v27, 2u);
  }

  v28 = [objc_opt_self() standardUserDefaults];
  v29 = String._bridgeToObjectiveC()();
  v30 = [v28 persistentDomainForName:v29];

  if (v30)
  {
    v31 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    if (*(v31 + 16) && (v32 = sub_100004B58(0xD000000000000012, 0x80000001002A36C0), (v33 & 1) != 0) && (sub_10001766C(*(v31 + 56) + 32 * v32, v98), (swift_dynamicCast() & 1) != 0) && *(v31 + 16) && (v34 = v101, v35 = sub_100004B58(0x776F6C6C41703270, 0xE800000000000000), (v36 & 1) != 0))
    {
      sub_10001766C(*(v31 + 56) + 32 * v35, v98);

      if (swift_dynamicCast())
      {
        if (v34 == 1)
        {
          v37 = 2;
        }

        else
        {
          v37 = v101 != 1;
        }

        swift_beginAccess();
        v38 = sub_100035D04(&qword_10034E0B0, &qword_10028EE00);
        v39 = *(v38 + 48);
        v40 = *(v38 + 52);
        swift_allocObject();
        v41 = v37;
        goto LABEL_20;
      }
    }

    else
    {
    }
  }

  v42 = Logger.logObject.getter();
  v43 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    *v44 = 0;
    _os_log_impl(&_mh_execute_header, v42, v43, "Defaulting on access control level.", v44, 2u);
  }

  swift_beginAccess();
  v45 = sub_100035D04(&qword_10034E0B0, &qword_10028EE00);
  v46 = *(v45 + 48);
  v47 = *(v45 + 52);
  swift_allocObject();
  v41 = 2;
LABEL_20:
  v1[2] = sub_1000341E8(v41, 0, 0, 0);
  swift_endAccess();

  v48 = Logger.logObject.getter();
  v49 = static os_log_type_t.default.getter();

  v50 = os_log_type_enabled(v48, v49);
  v97 = v6;
  v84 = v5;
  if (v50)
  {
    v82 = v13;
    v83 = v12;
    v51 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v101 = v52;
    *v51 = 136315138;
    swift_beginAccess();
    v53 = v1;
    v54 = v1[2];
    v55 = *(v54 + 24);

    CurrentValueSubject.value.getter();
    v56 = v99;
    if (v99 == 3)
    {
      v57 = *(v54 + 16);
      CurrentValueSubject.value.getter();

      v56 = v100;
    }

    else
    {
    }

    LOBYTE(v100) = v56;
    v58 = String.init<A>(describing:)();
    v60 = sub_100017494(v58, v59, &v101);

    *(v51 + 4) = v60;
    _os_log_impl(&_mh_execute_header, v48, v49, "Initial accessControlLevel: %s", v51, 0xCu);
    sub_10000903C(v52);

    v1 = v53;
    v12 = v83;
    v13 = v82;
  }

  else
  {
  }

  v61 = v1[3];
  v100 = v1[4];
  v101 = v61;
  sub_10000E244(&qword_10034E0B8, &qword_10034E0A8, &qword_10028EDF8);

  v62 = v85;
  Publishers.CombineLatest.init(_:_:)();
  sub_10000E244(&qword_10034E0C0, &qword_10034E090, &qword_10028EDE0);
  v63 = v86;
  v64 = v88;
  Publisher.dropFirst(_:)();
  (*(v87 + 8))(v62, v64);
  sub_10000E244(&qword_10034E0C8, &qword_10034E098, &qword_10028EDE8);
  v65 = v89;
  Publisher.map<A>(_:)();
  (*(v13 + 8))(v63, v12);
  LOBYTE(v62) = static os_log_type_t.info.getter();
  v66 = v93;
  v67 = v94;
  v68 = v95;
  (*(v94 + 16))(v93, v24, v95);
  v69 = v1;
  v70 = (*(v67 + 80) + 64) & ~*(v67 + 80);
  v71 = v70 + v92;
  v72 = swift_allocObject();
  *(v72 + 2) = 0;
  *(v72 + 3) = 0;
  *(v72 + 4) = 0xD000000000000018;
  *(v72 + 5) = 0x80000001002A6500;
  *(v72 + 6) = 0;
  *(v72 + 7) = 0xE000000000000000;
  (*(v67 + 32))(&v72[v70], v66, v68);
  v72[v71] = v62;
  sub_10000E244(&qword_10034E0D0, &qword_10034E0A0, &qword_10028EDF0);
  v73 = v96;
  v74 = v91;
  v75 = v65;
  Publisher.map<A>(_:)();

  sub_10000E244(&qword_10034E0D8, &qword_10034E088, &qword_10028EDD8);
  v76 = v84;
  v77 = Publisher.eraseToAnyPublisher()();
  (*(v97 + 8))(v73, v76);
  (*(v90 + 8))(v75, v74);
  v101 = v77;
  swift_allocObject();
  swift_weakInit();
  sub_100035D04(&qword_10034E0E0, &qword_10028EE08);
  sub_10000E244(&qword_10034E0E8, &qword_10034E0E0, &qword_10028EE08);
  v78 = Publisher<>.sink(receiveValue:)();

  v79 = v69[7];
  v69[7] = v78;

  v80 = sub_100216210();

  return v69;
}

uint64_t sub_100217064@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  if (*(result + 8))
  {
    *a2 = 2;
  }

  else
  {
    v2 = *(result + 16) != 1;
    if (*result == 1)
    {
      v2 = 2;
    }

    if (*(result + 24))
    {
      v2 = 2;
    }

    *a2 = v2;
  }

  return result;
}

uint64_t sub_1002170A8(char *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;
    swift_beginAccess();
    v4 = *(v3 + 16);

    sub_1001C2100(v1);
  }

  return result;
}

uint64_t sub_100217138()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 32);

  sub_10001DAC4(*(v0 + 40));
  sub_10001DAC4(*(v0 + 48));
  v4 = *(v0 + 56);

  return swift_deallocClassInstance();
}

unint64_t sub_1002171D0()
{
  result = qword_10034E018;
  if (!qword_10034E018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034E018);
  }

  return result;
}

uint64_t sub_100217224()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 10;
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

uint64_t sub_100217258()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 6;
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

uint64_t sub_10021728C()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 9;
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

uint64_t sub_1002172C0()
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

BOOL sub_1002172F4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24) >> 1;
  if (v1 != v2)
  {
    if (v1 >= v2)
    {
      __break(1u);
      return result;
    }

    *(v0 + 16) = v1 + 1;
  }

  return v1 == v2;
}

uint64_t sub_100217320()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 8;
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

uint64_t sub_100217354()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 5;
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

uint64_t sub_100217388()
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

uint64_t sub_1002173BC()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 4;
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

uint64_t sub_1002173F0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656E6F7972657665 && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7774654E656D6173 && a2 == 0xEB000000006B726FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656D6F48656D6173 && a2 == 0xE800000000000000)
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

uint64_t sub_10021750C(uint64_t *a1)
{
  v36 = sub_100035D04(&qword_10034E020, &qword_10028ED80);
  v39 = *(v36 - 8);
  v2 = *(v39 + 64);
  __chkstk_darwin(v36);
  v40 = &v33 - v3;
  v4 = sub_100035D04(&qword_10034E028, &qword_10028ED88);
  v37 = *(v4 - 8);
  v38 = v4;
  v5 = *(v37 + 64);
  __chkstk_darwin(v4);
  v7 = &v33 - v6;
  v8 = sub_100035D04(&qword_10034E030, &qword_10028ED90);
  v35 = *(v8 - 8);
  v9 = *(v35 + 64);
  __chkstk_darwin(v8);
  v11 = &v33 - v10;
  v12 = sub_100035D04(&qword_10034E038, &unk_10028ED98);
  v41 = *(v12 - 8);
  v13 = *(v41 + 64);
  __chkstk_darwin(v12);
  v15 = &v33 - v14;
  v16 = a1[4];
  sub_10000EBC0(a1, a1[3]);
  sub_100217A9C();
  v17 = v42;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v17)
  {
    goto LABEL_14;
  }

  v34 = v8;
  v18 = v40;
  v42 = a1;
  v19 = v15;
  v20 = KeyedDecodingContainer.allKeys.getter();
  v21 = *(v20 + 16);
  if (!v21 || ((v22 = *(v20 + 32), v21 == 1) ? (v23 = v22 == 3) : (v23 = 1), v23))
  {
    v24 = type metadata accessor for DecodingError();
    swift_allocError();
    v26 = v25;
    v27 = v12;
    v28 = *(sub_100035D04(&qword_10033EA78, &qword_100275A60) + 48);
    *v26 = &type metadata for AccessControlLevel;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v24 - 8) + 104))(v26, enum case for DecodingError.typeMismatch(_:), v24);
    swift_willThrow();
    (*(v41 + 8))(v19, v27);
    swift_unknownObjectRelease();
    a1 = v42;
LABEL_14:
    sub_10000903C(a1);
    return 0;
  }

  v43 = *(v20 + 32);
  if (!v22)
  {
    v44 = 0;
    sub_100217B98();
    v29 = v15;
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v35 + 8))(v11, v34);
    v30 = v41;
    goto LABEL_15;
  }

  if (v22 == 1)
  {
    v45 = 1;
    sub_100217B44();
    v29 = v15;
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v30 = v41;
    (*(v37 + 8))(v7, v38);
LABEL_15:
    (*(v30 + 8))(v29, v12);
    goto LABEL_16;
  }

  v46 = 2;
  sub_100217AF0();
  KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  v31 = v41;
  (*(v39 + 8))(v18, v36);
  (*(v31 + 8))(v19, v12);
LABEL_16:
  swift_unknownObjectRelease();
  sub_10000903C(v42);
  return v43;
}

unint64_t sub_100217A9C()
{
  result = qword_10034E040;
  if (!qword_10034E040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034E040);
  }

  return result;
}

unint64_t sub_100217AF0()
{
  result = qword_10034E048;
  if (!qword_10034E048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034E048);
  }

  return result;
}

unint64_t sub_100217B44()
{
  result = qword_10034E050;
  if (!qword_10034E050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034E050);
  }

  return result;
}

unint64_t sub_100217B98()
{
  result = qword_10034E058;
  if (!qword_10034E058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034E058);
  }

  return result;
}

uint64_t sub_100217BFC@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = *(type metadata accessor for Logger() - 8);
  v6 = (*(v5 + 80) + 64) & ~*(v5 + 80);
  result = sub_1001BFB20(*a1, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), *(v2 + 48), *(v2 + 56), v2 + v6, *(v2 + v6 + *(v5 + 64)));
  *a2 = result;
  return result;
}

unint64_t sub_100217CF4()
{
  result = qword_10034E0F0;
  if (!qword_10034E0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034E0F0);
  }

  return result;
}

unint64_t sub_100217D4C()
{
  result = qword_10034E0F8;
  if (!qword_10034E0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034E0F8);
  }

  return result;
}

unint64_t sub_100217DA4()
{
  result = qword_10034E100;
  if (!qword_10034E100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034E100);
  }

  return result;
}

unint64_t sub_100217DFC()
{
  result = qword_10034E108;
  if (!qword_10034E108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034E108);
  }

  return result;
}

unint64_t sub_100217E54()
{
  result = qword_10034E110;
  if (!qword_10034E110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034E110);
  }

  return result;
}

unint64_t sub_100217EAC()
{
  result = qword_10034E118;
  if (!qword_10034E118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034E118);
  }

  return result;
}

unint64_t sub_100217F04()
{
  result = qword_10034E120;
  if (!qword_10034E120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034E120);
  }

  return result;
}

unint64_t sub_100217F5C()
{
  result = qword_10034E128;
  if (!qword_10034E128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034E128);
  }

  return result;
}

unint64_t sub_100217FB4()
{
  result = qword_10034E130;
  if (!qword_10034E130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034E130);
  }

  return result;
}

void sub_100218028(uint64_t a1, uint64_t a2)
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

uint64_t sub_10021808C()
{
  v0 = type metadata accessor for Logger();
  sub_100036838(v0, qword_10034E140);
  sub_100003078(v0, qword_10034E140);
  return Logger.init(subsystem:category:)();
}

void sub_1002182E4()
{
  if (qword_100339248 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100003078(v1, qword_10034E140);
  v2 = v0;
  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v12 = v5;
    *v4 = 136315138;
    if (v2[OBJC_IVAR____TtC17proximitycontrold12HapticPlayer_startDistance + 4])
    {
      v6 = 0xE300000000000000;
      v7 = 7104878;
    }

    else
    {
      v11 = *&v2[OBJC_IVAR____TtC17proximitycontrold12HapticPlayer_startDistance];
      v7 = String.init<A>(describing:)();
      v6 = v8;
    }

    v9 = sub_100017494(v7, v6, &v12);

    *(v4 + 4) = v9;
    _os_log_impl(&_mh_execute_header, oslog, v3, "startDistance: %s", v4, 0xCu);
    sub_10000903C(v5);
  }

  else
  {
  }
}

void sub_10021849C()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v1);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v30 - v7;
  v9 = sub_100035D04(&qword_10033C280, &qword_100272A80);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v30 - v14;
  if (qword_100339248 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_100003078(v16, qword_10034E140);
  v17 = v0;
  v31 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v31, v18))
  {
    v30 = v6;
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v32 = v20;
    *v19 = 136315138;
    v21 = v2;
    v22 = OBJC_IVAR____TtC17proximitycontrold12HapticPlayer_startTime;
    swift_beginAccess();
    v23 = v17 + v22;
    v24 = v21;
    sub_10006C4AC(v23, v15);
    sub_10006C4AC(v15, v13);
    if ((*(v21 + 48))(v13, 1, v1) == 1)
    {
      v25 = 0xE300000000000000;
      v26 = 7104878;
    }

    else
    {
      (*(v21 + 32))(v8, v13, v1);
      (*(v21 + 16))(v30, v8, v1);
      v26 = String.init<A>(describing:)();
      v25 = v28;
      (*(v24 + 8))(v8, v1);
    }

    sub_1000097E8(v15, &qword_10033C280, &qword_100272A80);
    v29 = sub_100017494(v26, v25, &v32);

    *(v19 + 4) = v29;
    _os_log_impl(&_mh_execute_header, v31, v18, "startTime: %s", v19, 0xCu);
    sub_10000903C(v20);
  }

  else
  {
    v27 = v31;
  }
}

id sub_100218838(uint64_t a1)
{
  v3 = &v1[OBJC_IVAR____TtC17proximitycontrold12HapticPlayer_interruptionHandler];
  *v3 = 0;
  v3[1] = 0;
  v4 = &v1[OBJC_IVAR____TtC17proximitycontrold12HapticPlayer_invalidationHandler];
  *v4 = 0;
  v4[1] = 0;
  *&v1[OBJC_IVAR____TtC17proximitycontrold12HapticPlayer_progress] = 0;
  *&v1[OBJC_IVAR____TtC17proximitycontrold12HapticPlayer_factor] = 0;
  v5 = &v1[OBJC_IVAR____TtC17proximitycontrold12HapticPlayer_frequency];
  *v5 = 0;
  v5[8] = 1;
  v1[OBJC_IVAR____TtC17proximitycontrold12HapticPlayer_activeDeviceClass] = 0;
  v1[OBJC_IVAR____TtC17proximitycontrold12HapticPlayer_activated] = 0;
  v6 = OBJC_IVAR____TtC17proximitycontrold12HapticPlayer_defaults;
  if (qword_100338F18 != -1)
  {
    swift_once();
  }

  *&v1[v6] = qword_10038B0B8;
  v7 = OBJC_IVAR____TtC17proximitycontrold12HapticPlayer_fluidSpring;

  *&v1[v7] = sub_1001FDBF4();
  *&v1[OBJC_IVAR____TtC17proximitycontrold12HapticPlayer_hapticEngine] = 0;
  *&v1[OBJC_IVAR____TtC17proximitycontrold12HapticPlayer_hapticPlayers] = _swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR____TtC17proximitycontrold12HapticPlayer_repeater] = 0;
  v8 = &v1[OBJC_IVAR____TtC17proximitycontrold12HapticPlayer_startDistance];
  *v8 = 0;
  v8[4] = 1;
  v9 = OBJC_IVAR____TtC17proximitycontrold12HapticPlayer_startTime;
  v10 = type metadata accessor for Date();
  (*(*(v10 - 8) + 56))(&v1[v9], 1, 1, v10);
  *&v1[OBJC_IVAR____TtC17proximitycontrold12HapticPlayer_dispatchQueue] = a1;
  v12.receiver = v1;
  v12.super_class = type metadata accessor for HapticPlayer();
  return objc_msgSendSuper2(&v12, "init");
}

id sub_100218A08()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HapticPlayer();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for HapticPlayer()
{
  result = qword_10034E1F8;
  if (!qword_10034E1F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100218B5C()
{
  sub_10018C4E8();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_100218C64(uint64_t a1, void (*a2)(uint64_t), uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_100218CD4(a2, a3);
  }
}

void sub_100218CD4(void (*a1)(uint64_t), uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = (aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = OBJC_IVAR____TtC17proximitycontrold12HapticPlayer_dispatchQueue;
  v12 = *&v3[OBJC_IVAR____TtC17proximitycontrold12HapticPlayer_dispatchQueue];
  *v10 = v12;
  (*(v7 + 104))(v10, enum case for DispatchPredicate.onQueue(_:), v6);
  v13 = v12;
  LOBYTE(v12) = _dispatchPreconditionTest(_:)();
  (*(v7 + 8))(v10, v6);
  if (v12)
  {
    if (qword_100339248 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v14 = type metadata accessor for Logger();
  sub_100003078(v14, qword_10034E140);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "Activate", v17, 2u);
  }

  v18 = objc_allocWithZone(CHHapticEngine);
  aBlock[0] = 0;
  v19 = [v18 initAndReturnError:aBlock];
  v20 = aBlock[0];
  if (v19)
  {
    v21 = v19;
    v22 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v23 = swift_allocObject();
    v23[2] = v22;
    v23[3] = a1;
    v23[4] = a2;
    aBlock[4] = sub_10021C354;
    aBlock[5] = v23;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100124498;
    aBlock[3] = &unk_100313A08;
    v24 = _Block_copy(aBlock);

    v25 = v20;

    [v21 startWithCompletionHandler:v24];
    _Block_release(v24);
    v26 = *&v3[OBJC_IVAR____TtC17proximitycontrold12HapticPlayer_hapticEngine];
    *&v3[OBJC_IVAR____TtC17proximitycontrold12HapticPlayer_hapticEngine] = v21;
    v27 = v21;

    if (v3[OBJC_IVAR____TtC17proximitycontrold12HapticPlayer_frequency + 8])
    {
    }

    else
    {
      v35 = *&v3[v11];
      v36 = 1.0 / *&v3[OBJC_IVAR____TtC17proximitycontrold12HapticPlayer_frequency];
      type metadata accessor for RepeatingTimer();
      v37 = swift_allocObject();
      *(v37 + 48) = v35;
      *(v37 + 56) = 0;
      *(v37 + 32) = v36;
      v38 = swift_allocObject();
      *(v38 + 16) = v3;
      *(v37 + 16) = sub_10021C360;
      *(v37 + 24) = v38;
      v39 = v35;
      v40 = v3;
      sub_10002689C(0);
      *(v37 + 40) = 1;
      sub_1001787F4();
      swift_getObjectType();
      OS_dispatch_source.resume()();
      swift_unknownObjectRelease();

      v41 = *&v40[OBJC_IVAR____TtC17proximitycontrold12HapticPlayer_repeater];
      *&v40[OBJC_IVAR____TtC17proximitycontrold12HapticPlayer_repeater] = v37;
    }
  }

  else
  {
    v28 = aBlock[0];
    v29 = _convertNSErrorToError(_:)();

    swift_willThrow();
    swift_errorRetain();
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *v32 = 138412290;
      swift_errorRetain();
      v34 = _swift_stdlib_bridgeErrorToNSError();
      *(v32 + 4) = v34;
      *v33 = v34;
      _os_log_impl(&_mh_execute_header, v30, v31, "### Activate: %@", v32, 0xCu);
      sub_1000097E8(v33, &qword_100339940, &unk_100272C50);
    }

    swift_errorRetain();
    a1(v29);
  }
}

uint64_t sub_10021925C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v19 = *(result + OBJC_IVAR____TtC17proximitycontrold12HapticPlayer_dispatchQueue);
    v27 = v14;
    v20 = a4;
    v21 = a3;
    v22 = result;
    v23 = v19;
    v28 = v13;
    v24 = v23;

    v25 = swift_allocObject();
    v25[2] = a1;
    v25[3] = v21;
    v25[4] = v20;
    v25[5] = a2;
    aBlock[4] = sub_10021C684;
    aBlock[5] = v25;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100018AB8;
    aBlock[3] = &unk_100313A80;
    v26 = _Block_copy(aBlock);
    swift_errorRetain();

    static DispatchQoS.unspecified.getter();
    v29 = _swiftEmptyArrayStorage;
    sub_10007E5B8();
    sub_100035D04(&unk_100343710, &qword_100271800);
    sub_10003F184();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v26);

    (*(v9 + 8))(v12, v8);
    (*(v27 + 8))(v17, v28);
  }

  return result;
}

void sub_100219538(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_100339248 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_100003078(v4, qword_10034E140);
    swift_errorRetain();
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138412290;
      swift_errorRetain();
      v9 = _swift_stdlib_bridgeErrorToNSError();
      *(v7 + 4) = v9;
      *v8 = v9;
      _os_log_impl(&_mh_execute_header, v5, v6, "### Activate: %@", v7, 0xCu);
      sub_1000097E8(v8, &qword_100339940, &unk_100272C50);
    }

    swift_errorRetain();
    a2(a1);
  }

  else
  {
    if (qword_100339248 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_100003078(v10, qword_10034E140);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "Activated", v13, 2u);
    }

    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v15 = Strong;
      sub_1002197E0(a2);
    }
  }
}

uint64_t sub_1002197E0(uint64_t (*a1)(uint64_t))
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = (&v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v1 + OBJC_IVAR____TtC17proximitycontrold12HapticPlayer_dispatchQueue);
  *v7 = v8;
  (*(v4 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v3);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  (*(v4 + 8))(v7, v3);
  if (v8)
  {
    v10 = sub_1001FDBF4();
    v11 = *(v1 + OBJC_IVAR____TtC17proximitycontrold12HapticPlayer_fluidSpring);
    *(v1 + OBJC_IVAR____TtC17proximitycontrold12HapticPlayer_fluidSpring) = v10;

    sub_100219A80();
    return a1(0);
  }

  else
  {
    __break(1u);
    swift_once();
    v12 = type metadata accessor for Logger();
    sub_100003078(v12, qword_10034E140);
    swift_errorRetain();
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = 138412290;
      swift_errorRetain();
      v17 = _swift_stdlib_bridgeErrorToNSError();
      *(v15 + 4) = v17;
      *v16 = v17;
      _os_log_impl(&_mh_execute_header, v13, v14, "### Activate: %@", v15, 0xCu);
      sub_1000097E8(v16, &qword_100339940, &unk_100272C50);
    }

    swift_errorRetain();
    a1(v3);
  }
}

void sub_100219A80()
{
  v2 = v0;
  if (qword_100339248 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100003078(v3, qword_10034E140);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "Setup Hatpic Player", v6, 2u);
  }

  sub_10021B7E4();
  v7 = *(v2 + OBJC_IVAR____TtC17proximitycontrold12HapticPlayer_hapticEngine);
  if (v7)
  {
    v8 = CHHapticEventParameterIDHapticIntensity;
    v9 = objc_allocWithZone(CHHapticEventParameter);
    v92 = v7;
    LODWORD(v10) = 1.0;
    v11 = [v9 initWithParameterID:v8 value:v10];
    v12 = CHHapticEventParameterIDHapticSharpness;
    v90 = v1;
    v13 = OBJC_IVAR____TtC17proximitycontrold12HapticPlayer_defaults;
    v96 = OBJC_IVAR____TtC17proximitycontrold12HapticPlayer_defaults;
    v14 = *(*(v2 + OBJC_IVAR____TtC17proximitycontrold12HapticPlayer_defaults) + 1392);

    v15 = v14;
    sub_10005FA50();
    v17 = v16;

    v18 = objc_allocWithZone(CHHapticEventParameter);
    LODWORD(v19) = v17;
    v20 = [v18 initWithParameterID:v12 value:v19];
    v97 = v2;
    v21 = *(*(v2 + v13) + 1400);

    v22 = v21;
    sub_10005FA50();
    v24 = v23;

    v25 = objc_allocWithZone(CHHapticEventParameter);
    LODWORD(v26) = v24;
    v27 = [v25 initWithParameterID:v12 value:v26];
    sub_100035D04(&qword_10033AE40, &qword_1002719E0);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_100271B90;
    *(v28 + 32) = v11;
    *(v28 + 40) = v20;
    v29 = CHHapticEventTypeHapticContinuous;
    v30 = objc_allocWithZone(CHHapticEvent);
    sub_100003118(0, &qword_10034E220, CHHapticEventParameter_ptr);
    v31 = v11;
    v95 = v20;
    isa = Array._bridgeToObjectiveC()().super.isa;

    v86 = [v30 initWithEventType:v29 parameters:isa relativeTime:0.0 duration:1.79769313e308];

    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_100271B90;
    *(v33 + 32) = v31;
    *(v33 + 40) = v27;
    v34 = *(*(v2 + v96) + 1408);
    v94 = v31;
    v93 = v27;

    v35 = v34;
    sub_10005F4E4();
    v37 = v36;

    v38 = objc_allocWithZone(CHHapticEvent);
    v39 = Array._bridgeToObjectiveC()().super.isa;

    v88 = [v38 initWithEventType:v29 parameters:v39 relativeTime:v37 duration:1.79769313e308];

    v40 = CHHapticDynamicParameterIDHapticIntensityControl;
    v41 = *(*(v97 + v96) + 1384);

    v42 = v41;
    sub_10005FA50();
    v44 = v43;

    v45 = objc_allocWithZone(CHHapticDynamicParameter);
    LODWORD(v46) = v44;
    v47 = [v45 initWithParameterID:v40 value:v46 relativeTime:0.0];
    v48 = swift_allocObject();
    *(v48 + 16) = xmmword_1002764E0;
    *(v48 + 32) = v86;
    v49 = objc_allocWithZone(CHHapticPattern);
    v50 = v86;
    v51 = sub_10021BBDC();
    if (v90)
    {
    }

    else
    {
      v53 = v51;
      v54 = swift_allocObject();
      *(v54 + 16) = xmmword_1002764E0;
      *(v54 + 32) = v88;
      v55 = objc_allocWithZone(CHHapticPattern);
      v85 = v88;
      v91 = sub_10021BBDC();
      v87 = v50;
      v99[0] = 0;
      v56 = v92;
      v57 = [v92 createAdvancedPlayerWithPattern:v53 error:v99];
      v58 = v99[0];
      v59 = v94;
      v60 = v95;
      v61 = v93;
      v89 = v57;
      if (v57)
      {
        v82 = v53;
        v83 = v47;
        v99[0] = 0;
        v62 = v58;
        v63 = [v92 createAdvancedPlayerWithPattern:v91 error:v99];
        v64 = v99[0];
        if (v63)
        {
          v65 = v63;
          v66 = swift_allocObject();
          *(v66 + 16) = xmmword_1002764E0;
          *(v66 + 32) = v47;
          v67 = OBJC_IVAR____TtC17proximitycontrold12HapticPlayer_hapticPlayers;
          swift_beginAccess();
          v68 = *(v97 + v67);
          v69 = v64;
          v84 = v83;

          sub_10021C390(v66, v68);

          inited = swift_initStackObject();
          *(inited + 16) = xmmword_100271B90;
          *(inited + 32) = v89;
          *(inited + 40) = v65;
          v71 = *(*(v97 + v96) + 1456);
          swift_unknownObjectRetain();
          swift_unknownObjectRetain();

          v72 = v71;
          LOBYTE(v68) = sub_1000031CC();

          if (v68)
          {

            v73 = Logger.logObject.getter();
            v74 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v73, v74))
            {
              v75 = swift_slowAlloc();
              *v75 = 0;
              _os_log_impl(&_mh_execute_header, v73, v74, "SingleHapticPlayer via defaults, only using player0", v75, 2u);
            }

            inited = swift_allocObject();
            *(inited + 16) = xmmword_1002764E0;
            *(inited + 32) = v89;
            swift_unknownObjectRetain();
          }

          swift_beginAccess();
          sub_1000B39C4(inited);
          swift_endAccess();
          v76 = *(v97 + v67);
          if (v76 >> 62)
          {
LABEL_34:
            v59 = _CocoaArrayWrapper.endIndex.getter();
          }

          else
          {
            v59 = *((v76 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          if (v59)
          {
            v61 = 0;
            v47 = (v76 & 0xC000000000000001);
            v56 = (v76 & 0xFFFFFFFFFFFFFF8);
            v53 = &selRef_requestIdentifier;
            do
            {
              if (v47)
              {
                v58 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                v60 = (v61 + 1);
                if (__OFADD__(v61, 1))
                {
LABEL_27:
                  __break(1u);
                  goto LABEL_28;
                }
              }

              else
              {
                if (v61 >= *((v76 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  __break(1u);
                  goto LABEL_34;
                }

                v58 = *(v76 + 8 * v61 + 32);
                swift_unknownObjectRetain();
                v60 = (v61 + 1);
                if (__OFADD__(v61, 1))
                {
                  goto LABEL_27;
                }
              }

              v98[0] = 0;
              if (![v58 startAtTime:v98 error:0.0])
              {
                v81 = v98[0];

                _convertNSErrorToError(_:)();

                swift_willThrow();
                swift_unknownObjectRelease();
                swift_unknownObjectRelease();
                swift_unknownObjectRelease();

                v80 = v92;
                goto LABEL_32;
              }

              v77 = v98[0];
              swift_unknownObjectRelease();
              ++v61;
            }

            while (v60 != v59);
          }

          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
        }

        else
        {
          v79 = v99[0];
          _convertNSErrorToError(_:)();

          swift_willThrow();
          swift_unknownObjectRelease();

          v80 = v94;
LABEL_32:
        }
      }

      else
      {
LABEL_28:
        v78 = v58;
        _convertNSErrorToError(_:)();

        swift_willThrow();
      }
    }
  }

  else
  {
    sub_10021C2F4();
    swift_allocError();
    *v52 = 3;
    swift_willThrow();
  }
}

uint64_t sub_10021A4C8()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15[0] = type metadata accessor for DispatchQoS();
  v6 = *(v15[0] - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v15[0]);
  v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v0 + OBJC_IVAR____TtC17proximitycontrold12HapticPlayer_activated) = 0;
  v10 = *(v0 + OBJC_IVAR____TtC17proximitycontrold12HapticPlayer_dispatchQueue);
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_10021ADD4;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100018AB8;
  aBlock[3] = &unk_1003138F0;
  v12 = _Block_copy(aBlock);
  v13 = v10;

  static DispatchQoS.unspecified.getter();
  v15[1] = _swiftEmptyArrayStorage;
  sub_10007E5B8();
  sub_100035D04(&unk_100343710, &qword_100271800);
  sub_10003F184();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v12);

  (*(v2 + 8))(v5, v1);
  (*(v6 + 8))(v9, v15[0]);
}

void sub_10021A76C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_10021A7C0();
  }
}

uint64_t sub_10021A7C0()
{
  v1 = v0;
  v2 = sub_100035D04(&qword_10033C280, &qword_100272A80);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v47 - v4;
  v6 = sub_100035D04(&unk_10033D8B0, &qword_100275520);
  v48 = *(v6 - 8);
  v7 = *(v48 + 64);
  v8 = __chkstk_darwin(v6 - 8);
  __chkstk_darwin(v8);
  v10 = &v47 - v9;
  v11 = type metadata accessor for DispatchPredicate();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = (&v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *(v1 + OBJC_IVAR____TtC17proximitycontrold12HapticPlayer_dispatchQueue);
  *v15 = v16;
  (*(v12 + 104))(v15, enum case for DispatchPredicate.onQueue(_:), v11);
  v17 = v16;
  v18 = _dispatchPreconditionTest(_:)();
  (*(v12 + 8))(v15, v11);
  if (v18)
  {
    v47 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (qword_100339248 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v19 = type metadata accessor for Logger();
  v20 = sub_100003078(v19, qword_10034E140);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&_mh_execute_header, v21, v22, "Invalidate", v23, 2u);
  }

  v24 = OBJC_IVAR____TtC17proximitycontrold12HapticPlayer_repeater;
  v25 = *(v1 + OBJC_IVAR____TtC17proximitycontrold12HapticPlayer_repeater);
  if (v25)
  {
    v26 = *(v25 + 16);
    v27 = *(v25 + 24);
    *(v25 + 16) = 0;
    *(v25 + 24) = 0;

    sub_10002689C(v26);

    v28 = *(v1 + v24);
    if (v28 && *(v28 + 40) == 1)
    {
      *(v28 + 40) = 0;

      sub_1001787F4();
      swift_getObjectType();
      OS_dispatch_source.suspend()();
      swift_unknownObjectRelease();

      v29 = *(v1 + v24);
    }

    *(v1 + v24) = 0;
  }

  v30 = OBJC_IVAR____TtC17proximitycontrold12HapticPlayer_hapticEngine;
  v31 = *(v1 + OBJC_IVAR____TtC17proximitycontrold12HapticPlayer_hapticEngine);
  if (v31)
  {
    v32 = *(v19 - 8);
    (*(v32 + 16))(v10, v20, v19);
    (*(v32 + 56))(v10, 0, 1, v19);
    v33 = v47;
    sub_10007E4B8(v10, v47);
    v34 = (*(v48 + 80) + 32) & ~*(v48 + 80);
    v35 = swift_allocObject();
    *(v35 + 16) = 0xD000000000000011;
    *(v35 + 24) = 0x80000001002A65E0;
    sub_10007E4B8(v33, v35 + v34);
    aBlock[4] = sub_10007E528;
    aBlock[5] = v35;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100124498;
    aBlock[3] = &unk_100313940;
    v36 = _Block_copy(aBlock);
    v37 = v31;

    [v37 stopWithCompletionHandler:v36];

    _Block_release(v36);
    v38 = *(v1 + v30);
    *(v1 + v30) = 0;
  }

  v39 = v1 + OBJC_IVAR____TtC17proximitycontrold12HapticPlayer_startDistance;
  *v39 = 0;
  *(v39 + 4) = 1;
  sub_1002182E4();
  v40 = type metadata accessor for Date();
  (*(*(v40 - 8) + 56))(v5, 1, 1, v40);
  v41 = OBJC_IVAR____TtC17proximitycontrold12HapticPlayer_startTime;
  swift_beginAccess();
  sub_10021ADDC(v5, v1 + v41);
  swift_endAccess();
  sub_10021849C();
  result = sub_1000097E8(v5, &qword_10033C280, &qword_100272A80);
  v43 = v1 + OBJC_IVAR____TtC17proximitycontrold12HapticPlayer_invalidationHandler;
  v44 = *(v1 + OBJC_IVAR____TtC17proximitycontrold12HapticPlayer_invalidationHandler);
  if (v44)
  {
    v45 = *(v43 + 8);

    v44(v46);
    return sub_10002689C(v44);
  }

  return result;
}

uint64_t sub_10021ADDC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100035D04(&qword_10033C280, &qword_100272A80);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void sub_10021AE4C(char a1, float a2)
{
  if (a2 < 0.0 || a2 > 1.0)
  {
    sub_10021C2F4();
    swift_allocError();
    v7 = 2;
LABEL_49:
    *v6 = v7;
    swift_willThrow();
    return;
  }

  v8 = v2;
  v9 = a2;
  if (a1)
  {
    v10 = *(v2 + OBJC_IVAR____TtC17proximitycontrold12HapticPlayer_fluidSpring);
    [v10 step:CACurrentMediaTime() progress:a2];
    v12 = v11;

    v9 = v12;
  }

  v13 = OBJC_IVAR____TtC17proximitycontrold12HapticPlayer_hapticPlayers;
  swift_beginAccess();
  v14 = *(v8 + v13);
  if (!(v14 >> 62))
  {
    if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_11;
    }

    goto LABEL_48;
  }

  if (v14 < 0)
  {
    v59 = *(v8 + v13);
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
LABEL_48:
    sub_10021C2F4();
    swift_allocError();
    v7 = 4;
    goto LABEL_49;
  }

LABEL_11:
  v15 = OBJC_IVAR____TtC17proximitycontrold12HapticPlayer_defaults;
  v16 = *(*(v8 + OBJC_IVAR____TtC17proximitycontrold12HapticPlayer_defaults) + 952);

  v17 = v16;
  sub_10005FA50();
  v19 = v18;

  v20 = *(*(v8 + v15) + 944);

  v21 = v20;
  sub_10005FA50();
  v23 = v22;

  if (v19 > v23)
  {
    __break(1u);
  }

  else
  {
    if (v9 > 0.0)
    {
      if (v9 >= 1.0)
      {
        v19 = v23;
      }

      else
      {
        v19 = ((1.0 - v9) * v19) + (v9 * v23);
      }
    }

    if (qword_100339248 == -1)
    {
      goto LABEL_17;
    }
  }

  swift_once();
LABEL_17:
  v24 = type metadata accessor for Logger();
  sub_100003078(v24, qword_10034E140);
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v69 = v28;
    *v27 = 136315906;
    *(v27 + 4) = sub_100017494(0xD00000000000002BLL, 0x80000001002A6600, &v69);
    *(v27 + 12) = 2048;
    *(v27 + 14) = a2;
    *(v27 + 22) = 2048;
    *(v27 + 24) = v9;
    *(v27 + 32) = 2048;
    *(v27 + 34) = v19;
    _os_log_impl(&_mh_execute_header, v25, v26, "%s: factor=%f, effectiveFactor=%f, intensityFactor=%f", v27, 0x2Au);
    sub_10000903C(v28);
  }

  v29 = CHHapticDynamicParameterIDHapticIntensityControl;
  v30 = objc_allocWithZone(CHHapticDynamicParameter);
  v31 = &selRef_requestIdentifier;
  *&v32 = v19;
  v33 = [v30 initWithParameterID:v29 value:v32 relativeTime:0.0];
  v34 = CHHapticDynamicParameterIDHapticSharpnessControl;
  v35 = objc_allocWithZone(CHHapticDynamicParameter);
  LODWORD(v36) = 1054615798;
  v37 = [v35 initWithParameterID:v34 value:v36 relativeTime:0.0];
  v38 = objc_allocWithZone(CHHapticDynamicParameter);
  LODWORD(v39) = 0.25;
  v40 = [v38 initWithParameterID:v34 value:v39 relativeTime:0.0];
  v41 = *(v8 + v13);
  if (v41 >> 62)
  {
    if (v41 < 0)
    {
      v60 = *(v8 + v13);
    }

    if (_CocoaArrayWrapper.endIndex.getter())
    {
LABEL_21:
      v68 = v40;
      v66 = v13;
      if ((v41 & 0xC000000000000001) != 0)
      {

        v42 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (!*((v41 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_65:
          __break(1u);
          goto LABEL_66;
        }

        v42 = *(v41 + 32);
        swift_unknownObjectRetain();
      }

      v41 = sub_100035D04(&qword_10033AE40, &qword_1002719E0);
      v31 = swift_allocObject();
      *(v31 + 1) = xmmword_100271B90;
      v31[4] = v33;
      v31[5] = v37;
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1002764E0;
      *(inited + 32) = v42;
      v3 = inited + 32;
      v33 = v33;
      v37 = v37;
      swift_unknownObjectRetain();
      sub_10021C390(v31, inited);

      swift_setDeallocating();
      v44 = *(inited + 16);
      swift_arrayDestroy();
      v45 = swift_allocObject();
      *(v45 + 16) = xmmword_100271B90;
      v67 = v33;
      *(v45 + 32) = v33;
      *(v45 + 40) = v68;
      v46 = *(v8 + v66);
      v40 = (v46 >> 62);
      if (!(v46 >> 62))
      {
        v3 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v33 = v3 != 0;
        if (v3 >= v33)
        {
          goto LABEL_26;
        }

        goto LABEL_64;
      }

      v62 = v45;
      if (v46 < 0)
      {
        v41 = v46;
      }

      else
      {
        v41 = v46 & 0xFFFFFFFFFFFFFF8;
      }

      v63 = _CocoaArrayWrapper.endIndex.getter();
      if (v63 < 0)
      {
        __break(1u);
      }

      else
      {
        v3 = v63;
        v33 = v63 != 0;
        if (_CocoaArrayWrapper.endIndex.getter() < v33)
        {
LABEL_64:
          __break(1u);
          goto LABEL_65;
        }

        if (_CocoaArrayWrapper.endIndex.getter() < v3)
        {
          __break(1u);
          goto LABEL_64;
        }
      }

      v45 = v62;
LABEL_26:
      v64 = v37;
      v65 = v45;
      if ((v46 & 0xC000000000000001) != 0)
      {
        swift_bridgeObjectRetain_n();
        v47 = v67;
        v48 = v68;
        if (v3 >= 2)
        {
          v49 = v33;
          do
          {
            sub_100035D04(&qword_100345F90, &qword_10027D000);
            _ArrayBuffer._typeCheckSlowPath(_:)(v49++);
          }

          while (v3 != v49);
        }
      }

      else
      {
        swift_bridgeObjectRetain_n();
        v50 = v67;
        v51 = v68;
      }

      if (v40)
      {
        v37 = _CocoaArrayWrapper.subscript.getter();
        v41 = v52;
        v33 = v53;
        v3 = v54;
      }

      else
      {
        v37 = (v46 & 0xFFFFFFFFFFFFFF8);
        v41 = (v46 & 0xFFFFFFFFFFFFFF8) + 32;
        v3 = (2 * v3) | 1;
      }

      v31 = v65;
      v40 = v68;
      if ((v3 & 1) == 0)
      {
        goto LABEL_36;
      }

      type metadata accessor for __ContiguousArrayStorageBase();
      swift_unknownObjectRetain_n();
      v57 = swift_dynamicCastClass();
      if (!v57)
      {
        swift_unknownObjectRelease();
        v57 = _swiftEmptyArrayStorage;
      }

      v58 = v57[2];

      if (!__OFSUB__(v3 >> 1, v33))
      {
        if (v58 == (v3 >> 1) - v33)
        {
          v56 = swift_dynamicCastClass();
          swift_unknownObjectRelease_n();
          if (v56)
          {
LABEL_44:
            sub_10021C390(v31, v56);

            swift_unknownObjectRelease();

            return;
          }

          v56 = _swiftEmptyArrayStorage;
LABEL_43:
          swift_unknownObjectRelease();
          goto LABEL_44;
        }

        goto LABEL_67;
      }

LABEL_66:
      __break(1u);
LABEL_67:
      swift_unknownObjectRelease_n();
LABEL_36:
      sub_10021BD38(v37, v41, v33, v3);
      v56 = v55;
      goto LABEL_43;
    }
  }

  else if (*((v41 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_21;
  }

  sub_10021C2F4();
  swift_allocError();
  *v61 = 4;
  swift_willThrow();
}

void sub_10021B5DC(float a1)
{
  v3 = *(*(v1 + OBJC_IVAR____TtC17proximitycontrold12HapticPlayer_defaults) + 1464);

  v4 = v3;
  v5 = sub_1000031CC();

  sub_10021AE4C(v5 & 1, a1);
}

uint64_t sub_10021B7E4()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC17proximitycontrold12HapticPlayer_hapticPlayers;
  swift_beginAccess();
  v3 = *&v0[v2];
  if (v3 >> 62)
  {
    if (v3 < 0)
    {
      v28 = *&v0[v2];
    }

    result = _CocoaArrayWrapper.endIndex.getter();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  if (qword_100339248 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100003078(v5, qword_10034E140);
  v6 = v0;
  v7 = Logger.logObject.getter();
  LOBYTE(v8) = static os_log_type_t.default.getter();
  v31 = v2;
  v32 = v0;
  if (!os_log_type_enabled(v7, v8))
  {

    v7 = v6;
    goto LABEL_10;
  }

  v9 = swift_slowAlloc();
  *v9 = 134217984;
  v10 = *&v0[v2];
  if (v10 >> 62)
  {
    goto LABEL_35;
  }

  v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (1)
  {
    *(v9 + 4) = v11;
    v12 = v9;

    _os_log_impl(&_mh_execute_header, v7, v8, "Haptic players stop (%ld)", v12, 0xCu);

    v2 = v31;
    v1 = v0;
LABEL_10:

    v6 = *&v1[v2];
    if (v6 >> 62)
    {
      if (v6 < 0)
      {
        v29 = *&v1[v2];
      }

      v9 = _CocoaArrayWrapper.endIndex.getter();
      v8 = v9;
      if (!v9)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v8 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v8)
      {
        goto LABEL_24;
      }
    }

    if (v8 >= 1)
    {
      break;
    }

    __break(1u);
LABEL_35:
    v30 = v9;
    v11 = _CocoaArrayWrapper.endIndex.getter();
    v9 = v30;
  }

  v13 = v6 & 0xC000000000000001;

  v14 = 0;
  v15 = &selRef_requestIdentifier;
  do
  {
    if (v13)
    {
      v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v17 = *(v6 + 8 * v14 + 32);
      swift_unknownObjectRetain();
    }

    v33 = 0;
    if ([v17 v15[287]])
    {
      v16 = v33;
      swift_unknownObjectRelease();
    }

    else
    {
      v18 = v33;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      swift_errorRetain();
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v22 = v6;
        v23 = v8;
        v24 = v13;
        v25 = swift_slowAlloc();
        *v21 = 138412290;
        swift_errorRetain();
        v26 = _swift_stdlib_bridgeErrorToNSError();
        *(v21 + 4) = v26;
        *v25 = v26;
        _os_log_impl(&_mh_execute_header, v19, v20, "### Error stopping player: %@", v21, 0xCu);
        sub_1000097E8(v25, &qword_100339940, &unk_100272C50);
        v13 = v24;
        v8 = v23;
        v6 = v22;

        v15 = &selRef_requestIdentifier;

        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }

    ++v14;
  }

  while (v8 != v14);

  v2 = v31;
  v1 = v32;
LABEL_24:
  v27 = *&v1[v2];
  *&v1[v2] = _swiftEmptyArrayStorage;
}

id sub_10021BBDC()
{
  sub_100003118(0, &qword_100344D28, CHHapticEvent_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  sub_100003118(0, &qword_10034E218, CHHapticDynamicParameter_ptr);
  v2 = Array._bridgeToObjectiveC()().super.isa;

  v7 = 0;
  v3 = [v0 initWithEvents:isa parameters:v2 error:&v7];

  if (v3)
  {
    v4 = v7;
  }

  else
  {
    v5 = v7;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v3;
}

void sub_10021BD38(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        sub_100035D04(&qword_100345F90, &qword_10027D000);
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      sub_100035D04(&qword_10033AE40, &qword_1002719E0);
      v7 = swift_allocObject();
      v8 = j__malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 25;
      }

      v7[2] = v5;
      v7[3] = (2 * (v9 >> 3)) | 1;
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

uint64_t sub_10021BE28(uint64_t a1, void (**a2)(void, void))
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v30 = *(v9 - 8);
  v10 = *(v30 + 64);
  __chkstk_darwin(v9);
  v12 = v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  v14 = objc_opt_self();
  _Block_copy(a2);
  v15 = [objc_msgSend(v14 "capabilitiesForHardware")];
  swift_unknownObjectRelease();
  if (v15)
  {
    if ((*(a1 + OBJC_IVAR____TtC17proximitycontrold12HapticPlayer_activated) & 1) == 0)
    {
      *(a1 + OBJC_IVAR____TtC17proximitycontrold12HapticPlayer_activated) = 1;
      v24 = *(a1 + OBJC_IVAR____TtC17proximitycontrold12HapticPlayer_dispatchQueue);
      v25 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v26 = swift_allocObject();
      v29[1] = v25;
      v26[2] = v25;
      v26[3] = sub_100104000;
      v26[4] = v13;
      aBlock[4] = sub_10021C348;
      aBlock[5] = v26;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100018AB8;
      aBlock[3] = &unk_1003139B8;
      v27 = _Block_copy(aBlock);
      v28 = v24;

      static DispatchQoS.unspecified.getter();
      v31 = _swiftEmptyArrayStorage;
      sub_10007E5B8();
      sub_100035D04(&unk_100343710, &qword_100271800);
      sub_10003F184();
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v27);

      (*(v5 + 8))(v8, v4);
      (*(v30 + 8))(v12, v9);
    }

    sub_10021C2F4();
    swift_allocError();
    *v16 = 0;
  }

  else
  {
    if (qword_100339248 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_100003078(v17, qword_10034E140);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "### Activate: Haptics not supported on current hardware", v20, 2u);
    }

    sub_10021C2F4();
    swift_allocError();
    *v21 = 5;
  }

  v22 = _convertErrorToNSError(_:)();
  (a2)[2](a2, v22);
}

unint64_t sub_10021C2F4()
{
  result = qword_10034E208;
  if (!qword_10034E208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034E208);
  }

  return result;
}

void sub_10021C390(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  if (a2 >> 62)
  {
    v4 = _CocoaArrayWrapper.endIndex.getter();
    if (!v4)
    {
      return;
    }
  }

  else
  {
    v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      return;
    }
  }

  if (v4 < 1)
  {
    __break(1u);
  }

  v5 = 0;
  v6 = v2 & 0xC000000000000001;
  v7 = &qword_10034E218;
  v22 = v2;
  v23 = v4;
  do
  {
    if (v6)
    {
      v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v9 = *(v2 + 8 * v5 + 32);
      swift_unknownObjectRetain();
    }

    sub_100003118(0, v7, CHHapticDynamicParameter_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;
    v24 = 0;
    v11 = [v9 sendParameters:isa atTime:&v24 error:0.0];

    if (v11)
    {
      v8 = v24;
      swift_unknownObjectRelease();
    }

    else
    {
      v12 = v24;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      if (qword_100339248 != -1)
      {
        swift_once();
      }

      v13 = type metadata accessor for Logger();
      sub_100003078(v13, qword_10034E140);
      swift_errorRetain();
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v14, v15))
      {
        v16 = v6;
        v17 = a1;
        v18 = swift_slowAlloc();
        v19 = v7;
        v20 = swift_slowAlloc();
        *v18 = 138412290;
        swift_errorRetain();
        v21 = _swift_stdlib_bridgeErrorToNSError();
        *(v18 + 4) = v21;
        *v20 = v21;
        _os_log_impl(&_mh_execute_header, v14, v15, "### Failed to update haptic: %@", v18, 0xCu);
        sub_1000097E8(v20, &qword_100339940, &unk_100272C50);
        v7 = v19;

        a1 = v17;
        v6 = v16;
        v2 = v22;
        v4 = v23;

        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }

    ++v5;
  }

  while (v4 != v5);
}

void sub_10021C684()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  sub_100219538(*(v0 + 16), *(v0 + 24));
}

uint64_t getEnumTagSinglePayload for AirDropUIEvent(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x3E)
  {
    goto LABEL_17;
  }

  if (a2 + 194 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 194) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 194;
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

      return (*a1 | (v4 << 8)) - 194;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 194;
    }
  }

LABEL_17:
  v6 = (*a1 & 0x3C | (*a1 >> 6)) ^ 0x3F;
  if (v6 >= 0x3D)
  {
    v6 = -1;
  }

  return v6 + 1;
}

uint64_t storeEnumTagSinglePayload for AirDropUIEvent(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 194 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 194) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x3E)
  {
    v4 = 0;
  }

  if (a2 > 0x3D)
  {
    v5 = ((a2 - 62) >> 8) + 1;
    *result = a2 - 62;
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
    *result = 4 * (((-a2 >> 2) & 0xF) - 16 * a2);
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_10021C818(_BYTE *a1)
{
  v1 = *a1;
  if (v1 >= 0)
  {
    return *a1 >> 6;
  }

  else
  {
    return (v1 & 3u) + 2;
  }
}

_BYTE *sub_10021C844(_BYTE *result, unsigned int a2)
{
  if (a2 < 2)
  {
    *result = *result & 3 | (a2 << 6);
  }

  else
  {
    *result = a2 & 3 ^ 0x82;
  }

  return result;
}

BOOL sub_10021C884(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = v2 >> 6;
  v6 = v3 < 0x40 && v2 == v3;
  v7 = ((v3 ^ v2) & 0x3F) == 0;
  if ((v3 & 0xC0) != 0x40)
  {
    v7 = 0;
  }

  v8 = v3 == 128;
  if (v4 != 1)
  {
    v7 = v8;
  }

  if (v4)
  {
    return v7;
  }

  else
  {
    return v6;
  }
}

unint64_t sub_10021C8D0(uint64_t a1)
{
  result = sub_10021C8F8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10021C8F8()
{
  result = qword_10034E228;
  if (!qword_10034E228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034E228);
  }

  return result;
}

uint64_t sub_10021C9E4()
{
  result = type metadata accessor for NoticeTapAction(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for NoticeContent(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_10021CA98()
{
  result = type metadata accessor for ShareableContentExposedContext(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10021CB60()
{
  result = type metadata accessor for ShareableContent(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10021CC24()
{
  result = type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10021CC90@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for JSONEncoder();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  JSONEncoder.init()();
  type metadata accessor for LeaderNoticeTapAction(0);
  sub_100223AD4(&qword_10034E770, type metadata accessor for LeaderNoticeTapAction);
  v5 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v7 = v6;

  *a1 = v5;
  a1[1] = v7;
  type metadata accessor for NoticeTapAction(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_10021CE58()
{
  v0 = type metadata accessor for Logger();
  sub_100036838(v0, qword_10034E230);
  sub_100003078(v0, qword_10034E230);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10021CED0(void *a1)
{
  v3 = v1;
  v5 = sub_100035D04(&qword_10034E548, &qword_10028FA48);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v17[-v8];
  v10 = a1[4];
  sub_10000EBC0(a1, a1[3]);
  sub_100223970();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = v3[1];
  v17[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v17[14] = *(v3 + 16);
    v17[13] = 1;
    sub_100223B1C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v13 = type metadata accessor for NoticeContext(0);
    v14 = v13[6];
    v17[12] = 2;
    type metadata accessor for NoticeTapAction(0);
    sub_100223AD4(&qword_10034E558, type metadata accessor for NoticeTapAction);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v17[11] = *(v3 + v13[7]);
    v17[10] = 3;
    sub_100223B70();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v15 = v13[8];
    v17[9] = 4;
    type metadata accessor for NoticeContent(0);
    sub_100223AD4(&qword_10034E568, type metadata accessor for NoticeContent);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_10021D184@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v25 = type metadata accessor for NoticeContent(0);
  v3 = *(*(v25 - 8) + 64);
  __chkstk_darwin(v25);
  v27 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for NoticeTapAction(0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_100035D04(&qword_10034E518, &qword_10028FA40);
  v26 = *(v28 - 8);
  v9 = *(v26 + 64);
  __chkstk_darwin(v28);
  v11 = &v23 - v10;
  v12 = type metadata accessor for NoticeContext(0);
  v13 = *(*(v12 - 1) + 64);
  __chkstk_darwin(v12);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[4];
  sub_10000EBC0(a1, a1[3]);
  sub_100223970();
  v29 = v11;
  v17 = v30;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v17)
  {
    return sub_10000903C(a1);
  }

  v30 = v5;
  v18 = v8;
  v19 = v26;
  v20 = v27;
  v37 = 0;
  *v15 = KeyedDecodingContainer.decode(_:forKey:)();
  *(v15 + 1) = v21;
  v23 = v21;
  v35 = 1;
  sub_1002239C4();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v15[16] = v36;
  v34 = 2;
  sub_100223AD4(&qword_10034E530, type metadata accessor for NoticeTapAction);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  sub_100223A18(v18, &v15[v12[6]], type metadata accessor for NoticeTapAction);
  v32 = 3;
  sub_100223A80();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v15[v12[7]] = v33;
  v31 = 4;
  sub_100223AD4(&qword_10034E540, type metadata accessor for NoticeContent);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v19 + 8))(v29, v28);
  sub_100223A18(v20, &v15[v12[8]], type metadata accessor for NoticeContent);
  sub_100223908(v15, v24, type metadata accessor for NoticeContext);
  sub_10000903C(a1);
  return sub_1002238A8(v15, type metadata accessor for NoticeContext);
}

uint64_t sub_10021D654()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x6F69746341706174;
  v4 = 0x6E65746E49706174;
  if (v1 != 3)
  {
    v4 = 0x746E65746E6F63;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x656C797473;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10021D6E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100223F68(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10021D70C(uint64_t a1)
{
  v2 = sub_100223970();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10021D748(uint64_t a1)
{
  v2 = sub_100223970();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10021D7B8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x4866666F646E6168;
  }

  else
  {
    v4 = 0x647261646E617473;
  }

  if (v3)
  {
    v5 = 0xE800000000000000;
  }

  else
  {
    v5 = 0xEB00000000746E69;
  }

  if (*a2)
  {
    v6 = 0x4866666F646E6168;
  }

  else
  {
    v6 = 0x647261646E617473;
  }

  if (*a2)
  {
    v7 = 0xEB00000000746E69;
  }

  else
  {
    v7 = 0xE800000000000000;
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

Swift::Int sub_10021D868()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10021D8F4()
{
  *v0;
  String.hash(into:)();
}

Swift::Int sub_10021D96C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}