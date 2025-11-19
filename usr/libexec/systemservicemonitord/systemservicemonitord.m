uint64_t ServiceMonitor.StateInfo.timestamp.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ServiceMonitor.StateInfo() + 20);
  v4 = type metadata accessor for Date();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for ServiceMonitor.StateInfo()
{
  result = qword_1000883E0;
  if (!qword_1000883E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100001438@<X0>(char a1@<W0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  *a3 = a1;
  v5 = *(type metadata accessor for ServiceMonitor.StateInfo() + 20);
  v6 = type metadata accessor for Date();
  v7 = *(*(v6 - 8) + 32);

  return v7(&a3[v5], a2, v6);
}

uint64_t sub_100001504(char a1)
{
  result = swift_beginAccess();
  *(v1 + 224) = a1;
  return result;
}

uint64_t ServiceMonitor.updateState(state:)(char a1)
{
  *(v2 + 40) = v1;
  *(v2 + 58) = a1;
  return _swift_task_switch(sub_100001568, v1, 0);
}

uint64_t sub_100001568()
{
  v1 = *(v0 + 40);
  *(v0 + 56) = *(v0 + 58);
  *(v0 + 57) = (*(*v1 + 128))();
  sub_100001810();
  if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) != 0 || (v2 = *(v0 + 40), v3 = *(v0 + 58), swift_beginAccess(), *(v2 + 224) = v3, (v4 = *(v2 + 128)) == 0))
  {
    v10 = *(v0 + 8);

    return v10();
  }

  else
  {
    v5 = *(*(v0 + 40) + 136);
    v11 = (v4 + *v4);
    v6 = v4[1];
    v7 = swift_task_alloc();
    *(v0 + 48) = v7;
    *v7 = v0;
    v7[1] = sub_10000171C;
    v8 = *(v0 + 58);

    return v11(v8);
  }
}

uint64_t sub_10000171C()
{
  v1 = *(*v0 + 48);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

unint64_t sub_100001810()
{
  result = qword_1000860B0;
  if (!qword_1000860B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000860B0);
  }

  return result;
}

uint64_t sub_100001864(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_allocObject();
  v10 = sub_100007834(a1, a2, a3, a4, a5);
  sub_100007AA4(a4);
  sub_100007AA4(a2);
  return v10;
}

uint64_t sub_1000018F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_100007834(a1, a2, a3, a4, a5);
  sub_100007AA4(a4);
  sub_100007AA4(a2);
  return v7;
}

uint64_t sub_100001950()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000019E0;

  return sub_100001BD4();
}

uint64_t sub_1000019E0(uint64_t a1, uint64_t a2, char a3)
{
  v8 = *v4;
  v9 = *(*v4 + 16);
  v10 = *v4;

  if (v3)
  {
    *(v8 + 40) = a3;
    *(v8 + 24) = a2;
    *(v8 + 32) = a1;

    return _swift_task_switch(sub_100001B44, 0, 0);
  }

  else
  {
    v11 = *(v10 + 8);

    return v11();
  }
}

uint64_t sub_100001B44()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  sub_100007B4C();
  swift_allocError();
  *v4 = v2;
  *(v4 + 8) = v1;
  *(v4 + 16) = v3;
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_100001BD4()
{
  v1[14] = v0;
  v2 = type metadata accessor for Logger();
  v1[15] = v2;
  v3 = *(v2 - 8);
  v1[16] = v3;
  v4 = *(v3 + 64) + 15;
  v1[17] = swift_task_alloc();
  v5 = type metadata accessor for ServiceMonitor.StateInfo();
  v1[18] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v1[19] = swift_task_alloc();

  return _swift_task_switch(sub_100001CC4, v0, 0);
}

uint64_t sub_100001CC4()
{
  v1 = *(v0 + 112);
  if (ServiceMonitor.servicePresented.getter())
  {
    v2 = swift_task_alloc();
    *(v0 + 160) = v2;
    *v2 = v0;
    v2[1] = sub_100001DE4;
    v3 = *(v0 + 112);

    return sub_100005458();
  }

  else
  {
    *(v0 + 16) = xmmword_1000604E0;
    *(v0 + 32) = 6;
    sub_100007B4C();
    swift_willThrowTypedImpl();
    v5 = *(v0 + 152);
    v6 = *(v0 + 136);

    v7 = *(v0 + 8);

    return v7(3, 0, 6);
  }
}

uint64_t sub_100001DE4(uint64_t a1, uint64_t a2, char a3)
{
  v5 = *v4;
  v6 = *v4;
  v7 = *(*v4 + 160);
  v8 = *v4;
  *(v6 + 168) = a1;
  *(v6 + 176) = a2;
  *(v6 + 34) = a3;

  v9 = *(v5 + 112);
  if (v3)
  {
    v10 = sub_100002B88;
  }

  else
  {
    v10 = sub_100001F1C;
  }

  return _swift_task_switch(v10, v9, 0);
}

uint64_t sub_100001F1C()
{
  v1 = v0[14];
  v2 = ServiceMonitor.servicePresented.getter();
  v3 = v0[14];
  v4 = v3[26];
  v5 = v3[27];
  sub_100007AB4(v3 + 23, v4);
  if (v2)
  {
    v14 = (*(v5 + 16) + **(v5 + 16));
    v6 = *(*(v5 + 16) + 4);
    v7 = swift_task_alloc();
    v0[23] = v7;
    *v7 = v0;
    v7[1] = sub_100002140;
    v8 = v4;
    v9 = v5;
    v10 = v14;
  }

  else
  {
    v15 = (*(v5 + 32) + **(v5 + 32));
    v11 = *(*(v5 + 32) + 4);
    v12 = swift_task_alloc();
    v0[24] = v12;
    *v12 = v0;
    v12[1] = sub_1000023D4;
    v8 = v4;
    v9 = v5;
    v10 = v15;
  }

  return v10(v8, v9);
}

uint64_t sub_100002140(char a1)
{
  v2 = *(*v1 + 184);
  v3 = *(*v1 + 112);
  v5 = *v1;
  *(*v1 + 35) = a1;

  return _swift_task_switch(sub_100002258, v3, 0);
}

uint64_t sub_100002258()
{
  if (*(v0 + 35))
  {
    v1 = *(v0 + 152);
    v2 = *(v0 + 136);

    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    v5 = *(v0 + 112);
    v6 = v5[26];
    v7 = v5[27];
    sub_100007AB4(v5 + 23, v6);
    v8 = *(v7 + 32);
    v11 = (v8 + *v8);
    v9 = v8[1];
    v10 = swift_task_alloc();
    *(v0 + 192) = v10;
    *v10 = v0;
    v10[1] = sub_1000023D4;

    return v11(v6, v7);
  }
}

uint64_t sub_1000023D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v4;
  v9 = *(*v4 + 192);
  v10 = *v4;

  if (v3)
  {
    v11 = v8[19];
    v12 = v8[17];

    v13 = *(v10 + 8);

    return v13(a1, a2, a3);
  }

  else
  {
    v15 = v8[14];

    return _swift_task_switch(sub_100002554, v15, 0);
  }
}

uint64_t sub_100002554()
{
  v1 = *(v0 + 112);
  v2._countAndFlagsBits = (*(*v1 + 168))();
  v15 = Request.StateFetch.init(serviceIdentifier:poll:)(v2, 0);
  countAndFlagsBits = v15.serviceIdentifier._countAndFlagsBits;
  object = v15.serviceIdentifier._object;
  poll = v15.poll;
  *(v0 + 200) = v15.serviceIdentifier._object;
  v6 = v1[26];
  v7 = v1[27];
  sub_100007AB4(v1 + 23, v6);
  *(v0 + 64) = countAndFlagsBits;
  *(v0 + 72) = object;
  *(v0 + 80) = poll;
  v8 = *(v7 + 48);
  v13 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v0 + 208) = v10;
  v11 = sub_100007AF8();
  *v10 = v0;
  v10[1] = sub_1000026FC;

  return v13(v0 + 33, v0 + 64, &type metadata for Request.StateFetch, v11, v0 + 88, v6, v7);
}

uint64_t sub_1000026FC()
{
  v2 = *v1;
  v3 = *(*v1 + 208);
  v9 = *v1;

  if (v0)
  {
    v4 = *(v2 + 112);
    *(v2 + 216) = *(v2 + 88);
    *(v2 + 36) = *(v2 + 104);
    v5 = sub_100002830;
  }

  else
  {
    v6 = *(v2 + 200);
    v7 = *(v2 + 112);

    v5 = sub_1000028C4;
    v4 = v7;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100002830()
{
  v1 = *(v0 + 200);

  v2 = *(v0 + 216);
  v3 = *(v0 + 224);
  v4 = *(v0 + 152);
  v5 = *(v0 + 136);
  v6 = *(v0 + 36);

  v7 = *(v0 + 8);

  return v7(v2, v3, v6);
}

uint64_t sub_1000028C4()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 112);
  v3 = *(v0 + 33);
  v4 = &v1[*(*(v0 + 144) + 20)];
  static Date.now.getter();
  *v1 = v3;
  v5 = *(*v2 + 152);
  v10 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v0 + 232) = v7;
  *v7 = v0;
  v7[1] = sub_100002A00;
  v8 = *(v0 + 112);

  return v10(v3);
}

uint64_t sub_100002A00()
{
  v1 = *(*v0 + 232);
  v2 = *(*v0 + 112);
  v4 = *v0;

  return _swift_task_switch(sub_100002B10, v2, 0);
}

uint64_t sub_100002B10()
{
  sub_10000818C(v0[19]);
  v1 = v0[19];
  v2 = v0[17];

  v3 = v0[1];

  return v3();
}

uint64_t sub_100002B88()
{
  v2 = *(v0 + 168);
  v1 = *(v0 + 176);
  v4 = *(v0 + 128);
  v3 = *(v0 + 136);
  v5 = *(v0 + 120);
  v6 = *(v0 + 34);
  v7 = sub_100008344();
  (*(v4 + 16))(v3, v7, v5);
  sub_10000810C(v2, v1, v6);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();
  sub_100007D14(v2, v1, v6);
  if (os_log_type_enabled(v8, v9))
  {
    v11 = *(v0 + 168);
    v10 = *(v0 + 176);
    v12 = *(v0 + 34);
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 138412290;
    sub_100007B4C();
    swift_allocError();
    *v15 = v11;
    *(v15 + 8) = v10;
    *(v15 + 16) = v12;
    sub_10000810C(v11, v10, v12);
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 4) = v16;
    *v14 = v16;
    _os_log_impl(&_mh_execute_header, v8, v9, "The monitor must have an event handler registered to work. Error: %@", v13, 0xCu);
    sub_10000812C(v14, &qword_100086810, &qword_100060610);
  }

  v17 = *(v0 + 34);
  v19 = *(v0 + 168);
  v18 = *(v0 + 176);
  v21 = *(v0 + 128);
  v20 = *(v0 + 136);
  v22 = *(v0 + 120);

  (*(v21 + 8))(v20, v22);
  *(v0 + 40) = v19;
  *(v0 + 48) = v18;
  *(v0 + 56) = v17;
  sub_100007B4C();
  swift_willThrowTypedImpl();
  v23 = *(v0 + 168);
  v24 = *(v0 + 176);
  v25 = *(v0 + 152);
  v26 = *(v0 + 136);
  v27 = *(v0 + 34);

  v28 = *(v0 + 8);

  return v28(v23, v24, v27);
}

uint64_t sub_100002DC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = (*(*(sub_100007CCC(&qword_100086800, &qword_100060690) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v10 = v23 - v9;
  sub_10000809C(a3, v23 - v9);
  v11 = type metadata accessor for TaskPriority();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_10000812C(v10, &qword_100086800, &qword_100060690);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v12 + 8))(v10, v11);
  }

  v15 = *(a5 + 16);
  v14 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;

      if (v18 | v16)
      {
        v24[0] = 0;
        v24[1] = 0;
        v20 = v24;
        v24[2] = v16;
        v24[3] = v18;
      }

      else
      {
        v20 = 0;
      }

      v23[1] = 7;
      v23[2] = v20;
      v23[3] = v19;
      v21 = swift_task_create();

      sub_10000812C(a3, &qword_100086800, &qword_100060690);

      return v21;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_10000812C(a3, &qword_100086800, &qword_100060690);
  if (v18 | v16)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v16;
    v24[7] = v18;
  }

  return swift_task_create();
}

uint64_t _s21systemservicemonitord14ServiceMonitorC13checkForState6withinAC0F4InfoVSd_tYaAA06SystembC5ErrorOYKF(uint64_t a1, uint64_t a2)
{
  v3[9] = v2;
  v3[10] = a2;
  v3[8] = a1;
  v4 = swift_task_alloc();
  v3[11] = v4;
  *v4 = v3;
  v4[1] = sub_100003124;

  return _s21systemservicemonitord14ServiceMonitorC18waitUntilConnected6withinySd_tYaAA06SystembC5ErrorOYKF(5.0);
}

uint64_t sub_100003124(uint64_t a1, uint64_t a2, char a3)
{
  v8 = *v4;
  v9 = *(*v4 + 88);
  v10 = *v4;

  if (v3)
  {
    v11 = *(v8 + 80);
    *v11 = a1;
    *(v11 + 8) = a2;
    *(v11 + 16) = a3;
    v12 = *(v10 + 8);

    return v12();
  }

  else
  {
    v14 = *(v8 + 72);

    return _swift_task_switch(sub_100003290, v14, 0);
  }
}

uint64_t sub_100003290()
{
  v1 = *(v0 + 72);
  v2._countAndFlagsBits = (*(*v1 + 168))();
  v15 = Request.StateFetch.init(serviceIdentifier:poll:)(v2, 1);
  countAndFlagsBits = v15.serviceIdentifier._countAndFlagsBits;
  object = v15.serviceIdentifier._object;
  poll = v15.poll;
  *(v0 + 96) = v15.serviceIdentifier._object;
  v6 = v1[26];
  v7 = v1[27];
  sub_100007AB4(v1 + 23, v6);
  *(v0 + 16) = countAndFlagsBits;
  *(v0 + 24) = object;
  *(v0 + 32) = poll;
  v8 = *(v7 + 48);
  v13 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v0 + 104) = v10;
  v11 = sub_100007AF8();
  *v10 = v0;
  v10[1] = sub_100003438;

  return v13(v0 + 33, v0 + 16, &type metadata for Request.StateFetch, v11, v0 + 40, v6, v7);
}

uint64_t sub_100003438()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v9 = *v1;

  if (v0)
  {
    v4 = *(v2 + 72);
    *(v2 + 112) = *(v2 + 40);
    *(v2 + 34) = *(v2 + 56);
    v5 = sub_10000356C;
  }

  else
  {
    v6 = *(v2 + 96);
    v7 = *(v2 + 72);

    v5 = sub_1000035E4;
    v4 = v7;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_10000356C()
{
  v1 = *(v0 + 96);

  v2 = *(v0 + 34);
  v3 = *(v0 + 80);
  *v3 = *(v0 + 112);
  *(v3 + 16) = v2;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1000035E4()
{
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v3 = *(v0 + 33);
  v4 = &v2[*(type metadata accessor for ServiceMonitor.StateInfo() + 20)];
  static Date.now.getter();
  *v2 = v3;
  v5 = *(*v1 + 152);
  v10 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v0 + 128) = v7;
  *v7 = v0;
  v7[1] = sub_100003724;
  v8 = *(v0 + 72);

  return v10(v3);
}

uint64_t sub_100003724()
{
  v1 = *(*v0 + 128);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t _s21systemservicemonitord14ServiceMonitorC18waitUntilConnected6withinySd_tYaAA06SystembC5ErrorOYKF(double a1)
{
  *(v2 + 88) = v1;
  *(v2 + 80) = a1;
  v3 = type metadata accessor for ContinuousClock.Instant();
  *(v2 + 96) = v3;
  v4 = *(v3 - 8);
  *(v2 + 104) = v4;
  v5 = *(v4 + 64) + 15;
  *(v2 + 112) = swift_task_alloc();
  *(v2 + 120) = swift_task_alloc();
  v6 = type metadata accessor for ContinuousClock();
  *(v2 + 128) = v6;
  v7 = *(v6 - 8);
  *(v2 + 136) = v7;
  v8 = *(v7 + 64) + 15;
  *(v2 + 144) = swift_task_alloc();
  v9 = type metadata accessor for Logger();
  *(v2 + 152) = v9;
  v10 = *(v9 - 8);
  *(v2 + 160) = v10;
  v11 = *(v10 + 64) + 15;
  *(v2 + 168) = swift_task_alloc();

  return _swift_task_switch(sub_1000039A4, v1, 0);
}

uint64_t sub_1000039A4()
{
  v1 = *(v0 + 80);
  if (v1 <= 0.0)
  {
    v11 = *(v0 + 168);
    v12 = *(v0 + 144);
    v14 = *(v0 + 112);
    v13 = *(v0 + 120);
    v15 = *(v0 + 80);
    *(v0 + 16) = v1;
    *(v0 + 24) = 0;
    *(v0 + 32) = 1;
    sub_100007B4C();
    swift_willThrowTypedImpl();

    v16 = *(v0 + 8);

    return v16(v15, 0, 1);
  }

  else
  {
    v2 = *(v0 + 88);
    v3 = *(*v2 + 128);
    v4 = (*v2 + 128) & 0xFFFFFFFFFFFFLL | 0x3698000000000000;
    *(v0 + 176) = v3;
    *(v0 + 184) = v4;
    *(v0 + 192) = 0;
    *(v0 + 33) = v3();
    *(v0 + 34) = 0;
    sub_100001810();
    if (dispatch thunk of static Equatable.== infix(_:_:)() & 1) != 0 || (v5 = *(v0 + 184), v6 = *(v0 + 88), *(v0 + 35) = (*(v0 + 176))(), *(v0 + 36) = 1, (dispatch thunk of static Equatable.== infix(_:_:)()))
    {
      v7 = *(v0 + 144);
      v8 = static Duration.seconds(_:)();
      v10 = v9;
      static Clock<>.continuous.getter();
      *(v0 + 64) = v8;
      *(v0 + 72) = v10;
      *(v0 + 40) = 0;
      *(v0 + 48) = 0;
      *(v0 + 56) = 1;

      return _swift_task_switch(sub_100003F88, 0, 0);
    }

    else
    {
      v17 = *(v0 + 88);
      v18 = v17[26];
      v19 = v17[27];
      sub_100007AB4(v17 + 23, v18);
      v20 = *(v19 + 16);
      v24 = (v20 + *v20);
      v21 = v20[1];
      v22 = swift_task_alloc();
      *(v0 + 200) = v22;
      *v22 = v0;
      v22[1] = sub_100003CA8;

      return v24(v18, v19);
    }
  }
}

uint64_t sub_100003CA8(char a1)
{
  v2 = *(*v1 + 200);
  v3 = *(*v1 + 88);
  v5 = *v1;
  *(*v1 + 37) = a1;

  return _swift_task_switch(sub_100003DC0, v3, 0);
}

uint64_t sub_100003DC0()
{
  if (*(v0 + 37) == 1)
  {
    v2 = *(v0 + 160);
    v1 = *(v0 + 168);
    v3 = *(v0 + 152);
    v4 = sub_100008344();
    (*(v2 + 16))(v1, v4, v3);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Service is connected. Returning.", v7, 2u);
    }

    v9 = *(v0 + 160);
    v8 = *(v0 + 168);
    v11 = *(v0 + 144);
    v10 = *(v0 + 152);
    v13 = *(v0 + 112);
    v12 = *(v0 + 120);

    (*(v9 + 8))(v8, v10);

    v14 = *(v0 + 8);

    return v14();
  }

  else
  {
    v16 = *(v0 + 144);
    v17 = static Duration.seconds(_:)();
    v19 = v18;
    static Clock<>.continuous.getter();
    *(v0 + 64) = v17;
    *(v0 + 72) = v19;
    *(v0 + 40) = 0;
    *(v0 + 48) = 0;
    *(v0 + 56) = 1;

    return _swift_task_switch(sub_100003F88, 0, 0);
  }
}

uint64_t sub_100003F88()
{
  v1 = v0[18];
  v3 = v0[15];
  v2 = v0[16];
  v5 = v0[13];
  v4 = v0[14];
  v6 = v0[12];
  v7 = sub_100007BA0(&qword_100087D10, &type metadata accessor for ContinuousClock);
  dispatch thunk of Clock.now.getter();
  sub_100007BA0(&unk_100088340, &type metadata accessor for ContinuousClock.Instant);
  dispatch thunk of InstantProtocol.advanced(by:)();
  v8 = *(v5 + 8);
  v0[26] = v8;
  v0[27] = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v4, v6);
  v9 = async function pointer to dispatch thunk of Clock.sleep(until:tolerance:)[1];
  v10 = swift_task_alloc();
  v0[28] = v10;
  *v10 = v0;
  v10[1] = sub_10000410C;
  v11 = v0[18];
  v13 = v0[15];
  v12 = v0[16];

  return dispatch thunk of Clock.sleep(until:tolerance:)(v13, v0 + 5, v12, v7);
}

uint64_t sub_10000410C()
{
  v2 = *v1;
  v3 = *(*v1 + 224);
  v19 = *v1;

  if (v0)
  {
    v5 = v2[26];
    v4 = v2[27];
    v6 = v2[15];
    v7 = v2[12];

    v5(v6, v7);
    v8 = sub_100004568;
    v9 = 0;
  }

  else
  {
    v11 = v2[26];
    v10 = v2[27];
    v13 = v2[17];
    v12 = v2[18];
    v14 = v2[15];
    v15 = v2[16];
    v17 = v2 + 11;
    v16 = v2[11];
    v11(v14, v17[1]);
    (*(v13 + 8))(v12, v15);
    v8 = sub_100004280;
    v9 = v16;
  }

  return _swift_task_switch(v8, v9, 0);
}

uint64_t sub_100004280()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 192) + 1.0;
  if (v2 >= v1)
  {
    v11 = *(v0 + 168);
    v12 = *(v0 + 144);
    v14 = *(v0 + 112);
    v13 = *(v0 + 120);
    v15 = *(v0 + 80);
    *(v0 + 16) = v1;
    *(v0 + 24) = 0;
    *(v0 + 32) = 1;
    sub_100007B4C();
    swift_willThrowTypedImpl();

    v16 = *(v0 + 8);

    return v16(v15, 0, 1);
  }

  else
  {
    *(v0 + 192) = v2;
    v3 = *(v0 + 184);
    v4 = *(v0 + 88);
    *(v0 + 33) = (*(v0 + 176))();
    *(v0 + 34) = 0;
    sub_100001810();
    if (dispatch thunk of static Equatable.== infix(_:_:)() & 1) != 0 || (v5 = *(v0 + 184), v6 = *(v0 + 88), *(v0 + 35) = (*(v0 + 176))(), *(v0 + 36) = 1, (dispatch thunk of static Equatable.== infix(_:_:)()))
    {
      v7 = *(v0 + 144);
      v8 = static Duration.seconds(_:)();
      v10 = v9;
      static Clock<>.continuous.getter();
      *(v0 + 64) = v8;
      *(v0 + 72) = v10;
      *(v0 + 40) = 0;
      *(v0 + 48) = 0;
      *(v0 + 56) = 1;

      return _swift_task_switch(sub_100003F88, 0, 0);
    }

    else
    {
      v17 = *(v0 + 88);
      v18 = v17[26];
      v19 = v17[27];
      sub_100007AB4(v17 + 23, v18);
      v20 = *(v19 + 16);
      v24 = (v20 + *v20);
      v21 = v20[1];
      v22 = swift_task_alloc();
      *(v0 + 200) = v22;
      *v22 = v0;
      v22[1] = sub_100003CA8;

      return v24(v18, v19);
    }
  }
}

uint64_t sub_100004568()
{
  v1 = v0[11];
  (*(v0[17] + 8))(v0[18], v0[16]);

  return _swift_task_switch(sub_1000082BC, v1, 0);
}

uint64_t _s21systemservicemonitord14ServiceMonitorC12waitForState7toReach6withinAC0F4InfoVAA0B0V0F0O_SdtYaAA06SystembC5ErrorOYKF(uint64_t a1, char a2, uint64_t a3, double a4)
{
  *(v5 + 96) = v4;
  *(v5 + 104) = a3;
  *(v5 + 88) = a4;
  *(v5 + 35) = a2;
  *(v5 + 80) = a1;
  v6 = type metadata accessor for ContinuousClock.Instant();
  *(v5 + 112) = v6;
  v7 = *(v6 - 8);
  *(v5 + 120) = v7;
  v8 = *(v7 + 64) + 15;
  *(v5 + 128) = swift_task_alloc();
  *(v5 + 136) = swift_task_alloc();
  v9 = type metadata accessor for ContinuousClock();
  *(v5 + 144) = v9;
  v10 = *(v9 - 8);
  *(v5 + 152) = v10;
  v11 = *(v10 + 64) + 15;
  *(v5 + 160) = swift_task_alloc();
  v12 = swift_task_alloc();
  *(v5 + 168) = v12;
  *v12 = v5;
  v12[1] = sub_100004748;

  return _s21systemservicemonitord14ServiceMonitorC18waitUntilConnected6withinySd_tYaAA06SystembC5ErrorOYKF(5.0);
}

uint64_t sub_100004748(uint64_t a1, uint64_t a2, char a3)
{
  v8 = *v4;
  v9 = *(*v4 + 168);
  v10 = *v4;

  if (v3)
  {
    v11 = v8[20];
    v13 = v8[16];
    v12 = v8[17];
    v14 = v8[13];

    *v14 = a1;
    *(v14 + 8) = a2;
    *(v14 + 16) = a3;
    v15 = *(v10 + 8);

    return v15();
  }

  else
  {
    v17 = v8[12];

    return _swift_task_switch(sub_1000048C8, v17, 0);
  }
}

uint64_t sub_1000048C8()
{
  v1 = *(v0 + 88);
  if (v1 <= 0.0)
  {
    *(v0 + 16) = v1;
    *(v0 + 24) = 0;
    *(v0 + 32) = 1;
    sub_100007B4C();
    swift_willThrowTypedImpl();
    v11 = *(v0 + 160);
    v12 = *(v0 + 128);
    v13 = *(v0 + 136);
    v14 = *(v0 + 104);

    *v14 = v1;
    *(v14 + 8) = 0;
    *(v14 + 16) = 1;
    v10 = *(v0 + 8);
    goto LABEL_5;
  }

  *(v0 + 176) = 0;
  v2 = *(v0 + 35);
  v3 = *(**(v0 + 96) + 128);
  *(v0 + 33) = v3();
  *(v0 + 34) = v2;
  sub_100001810();
  if (dispatch thunk of static Equatable.== infix(_:_:)())
  {
    v4 = *(v0 + 160);
    v6 = *(v0 + 128);
    v5 = *(v0 + 136);
    v7 = *(v0 + 96);
    v8 = *(v0 + 80);
    LOBYTE(v7) = v3();
    v9 = &v8[*(type metadata accessor for ServiceMonitor.StateInfo() + 20)];
    static Date.now.getter();
    *v8 = v7;

    v10 = *(v0 + 8);
LABEL_5:

    return v10();
  }

  v16 = *(v0 + 160);
  v17 = static Duration.seconds(_:)();
  v19 = v18;
  static Clock<>.continuous.getter();
  *(v0 + 64) = v17;
  *(v0 + 72) = v19;
  *(v0 + 40) = 0;
  *(v0 + 48) = 0;
  *(v0 + 56) = 1;

  return _swift_task_switch(sub_100004AD4, 0, 0);
}

uint64_t sub_100004AD4()
{
  v1 = v0[20];
  v3 = v0[17];
  v2 = v0[18];
  v5 = v0[15];
  v4 = v0[16];
  v6 = v0[14];
  v7 = sub_100007BA0(&qword_100087D10, &type metadata accessor for ContinuousClock);
  dispatch thunk of Clock.now.getter();
  sub_100007BA0(&unk_100088340, &type metadata accessor for ContinuousClock.Instant);
  dispatch thunk of InstantProtocol.advanced(by:)();
  v8 = *(v5 + 8);
  v0[23] = v8;
  v0[24] = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v4, v6);
  v9 = async function pointer to dispatch thunk of Clock.sleep(until:tolerance:)[1];
  v10 = swift_task_alloc();
  v0[25] = v10;
  *v10 = v0;
  v10[1] = sub_100004C58;
  v11 = v0[20];
  v13 = v0[17];
  v12 = v0[18];

  return dispatch thunk of Clock.sleep(until:tolerance:)(v13, v0 + 5, v12, v7);
}

uint64_t sub_100004C58()
{
  v2 = *v1;
  v3 = *(*v1 + 200);
  v19 = *v1;

  if (v0)
  {
    v5 = v2[23];
    v4 = v2[24];
    v6 = v2[17];
    v7 = v2[14];

    v5(v6, v7);
    v8 = sub_100004FE8;
    v9 = 0;
  }

  else
  {
    v11 = v2[23];
    v10 = v2[24];
    v13 = v2[19];
    v12 = v2[20];
    v14 = v2[17];
    v15 = v2[18];
    v16 = v2[14];
    v17 = v2[12];
    v11(v14, v16);
    (*(v13 + 8))(v12, v15);
    v8 = sub_100004DD0;
    v9 = v17;
  }

  return _swift_task_switch(v8, v9, 0);
}

uint64_t sub_100004DD0()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 176) + 1.0;
  if (v2 >= v1)
  {
    *(v0 + 16) = v1;
    *(v0 + 24) = 0;
    *(v0 + 32) = 1;
    sub_100007B4C();
    swift_willThrowTypedImpl();
    v12 = *(v0 + 160);
    v13 = *(v0 + 128);
    v14 = *(v0 + 136);
    v15 = *(v0 + 104);

    *v15 = v1;
    *(v15 + 8) = 0;
    *(v15 + 16) = 1;
    v11 = *(v0 + 8);
    goto LABEL_5;
  }

  *(v0 + 176) = v2;
  v3 = *(v0 + 35);
  v4 = *(**(v0 + 96) + 128);
  *(v0 + 33) = v4();
  *(v0 + 34) = v3;
  sub_100001810();
  if (dispatch thunk of static Equatable.== infix(_:_:)())
  {
    v5 = *(v0 + 160);
    v7 = *(v0 + 128);
    v6 = *(v0 + 136);
    v8 = *(v0 + 96);
    v9 = *(v0 + 80);
    LOBYTE(v8) = v4();
    v10 = &v9[*(type metadata accessor for ServiceMonitor.StateInfo() + 20)];
    static Date.now.getter();
    *v9 = v8;

    v11 = *(v0 + 8);
LABEL_5:

    return v11();
  }

  v17 = *(v0 + 160);
  v18 = static Duration.seconds(_:)();
  v20 = v19;
  static Clock<>.continuous.getter();
  *(v0 + 64) = v18;
  *(v0 + 72) = v20;
  *(v0 + 40) = 0;
  *(v0 + 48) = 0;
  *(v0 + 56) = 1;

  return _swift_task_switch(sub_100004AD4, 0, 0);
}

uint64_t sub_100004FE8()
{
  v1 = v0[12];
  (*(v0[19] + 8))(v0[20], v0[18]);

  return _swift_task_switch(sub_1000082AC, v1, 0);
}

void *ServiceMonitor.deinit()
{
  v1 = v0[15];

  v2 = v0[17];
  sub_100007AA4(v0[16]);
  v3 = v0[19];
  sub_100007AA4(v0[18]);
  sub_100007BE8((v0 + 20));
  swift_defaultActor_destroy();
  return v0;
}

uint64_t ServiceMonitor.__deallocating_deinit()
{
  v1 = v0[15];

  v2 = v0[17];
  sub_100007AA4(v0[16]);
  v3 = v0[19];
  sub_100007AA4(v0[18]);
  sub_100007BE8((v0 + 20));
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t ServiceMonitor.servicePresented.getter()
{
  v1 = *(*v0 + 128);
  v1();
  sub_100001810();
  v2 = dispatch thunk of static Equatable.== infix(_:_:)();
  v3 = 0;
  if ((v2 & 1) == 0)
  {
    v1();
    v3 = dispatch thunk of static Equatable.== infix(_:_:)() ^ 1;
  }

  return v3 & 1;
}

uint64_t sub_1000051F0()
{
  v1 = v0[2];
  if (ServiceMonitor.servicePresented.getter())
  {
    v2 = v0[2];
    v3 = v2[26];
    v4 = v2[27];
    sub_100007AB4(v2 + 23, v3);
    v5 = *(v4 + 16);
    v10 = (v5 + *v5);
    v6 = v5[1];
    v7 = swift_task_alloc();
    v0[3] = v7;
    *v7 = v0;
    v7[1] = sub_10000535C;

    return v10(v3, v4);
  }

  else
  {
    v9 = v0[1];

    return v9(0);
  }
}

uint64_t sub_10000535C(uint64_t a1)
{
  v3 = *(*v1 + 24);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_100005478()
{
  v1 = *(v0 + 120);
  v2 = v1[26];
  v3 = v1[27];
  sub_100007AB4(v1 + 23, v2);
  v4 = *(v3 + 24);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 128) = v6;
  *v6 = v0;
  v6[1] = sub_1000055A8;

  return v8(v0 + 56, v2, v3);
}

uint64_t sub_1000055A8()
{
  v1 = *(*v0 + 128);
  v2 = *(*v0 + 120);
  v4 = *v0;

  return _swift_task_switch(sub_1000056B8, v2, 0);
}

uint64_t sub_1000056B8()
{
  if (*(v0 + 80))
  {
    v1 = *(v0 + 120);
    sub_1000081E8((v0 + 56), v0 + 16);
    v2 = *(v0 + 40);
    v3 = *(v0 + 48);
    sub_100007AB4((v0 + 16), v2);
    v4 = *(*v1 + 168);
    v5 = (*v1 + 168) & 0xFFFFFFFFFFFFLL | 0xE1FF000000000000;
    *(v0 + 136) = v4;
    *(v0 + 144) = v5;
    v6 = v4();
    v8 = v7;
    *(v0 + 152) = v7;
    v9 = v1[14];
    *(v0 + 160) = v9;
    v10 = v1[15];
    *(v0 + 168) = v10;
    v11 = *(v3 + 8);
    v16 = (v11 + *v11);
    v12 = v11[1];
    v13 = swift_task_alloc();
    *(v0 + 176) = v13;
    *v13 = v0;
    v13[1] = sub_100005910;

    return v16(v6, v8, v9, v10, v2, v3);
  }

  else
  {
    sub_10000812C(v0 + 56, &unk_100086510, &unk_100060540);
    *(v0 + 96) = 0xD000000000000033;
    *(v0 + 104) = 0x800000010006A140;
    *(v0 + 112) = 2;
    sub_100007B4C();
    swift_willThrowTypedImpl();
    v15 = *(v0 + 8);

    return v15(0xD000000000000033, 0x800000010006A140, 2);
  }
}

uint64_t sub_100005910(char a1)
{
  v2 = *(*v1 + 176);
  v3 = *(*v1 + 152);
  v4 = *(*v1 + 120);
  v6 = *v1;
  *(*v1 + 113) = a1;

  return _swift_task_switch(sub_100005A44, v4, 0);
}

uint64_t sub_100005A44()
{
  if (*(v0 + 113))
  {
    sub_100007F1C((v0 + 16));
    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    v4 = *(v0 + 136);
    v3 = *(v0 + 144);
    v5 = *(v0 + 120);
    v6 = *(v0 + 40);
    v7 = *(v0 + 48);
    sub_100007AB4((v0 + 16), v6);

    v9 = v4(v8);
    v11 = v10;
    *(v0 + 184) = v10;
    v12 = *(v7 + 16);
    v18 = (v12 + *v12);
    v13 = v12[1];
    v14 = swift_task_alloc();
    *(v0 + 192) = v14;
    *v14 = v0;
    v14[1] = sub_100005C10;
    v15 = *(v0 + 160);
    v16 = *(v0 + 168);
    v17 = *(v0 + 120);

    return v18(&unk_100060620, v17, v9, v11, v15, v16, v6, v7);
  }
}

uint64_t sub_100005C10(uint64_t a1, uint64_t a2, char a3)
{
  v8 = *v4;
  v9 = *(*v4 + 192);
  v10 = *v4;

  if (v3)
  {
    v11 = *(v8 + 120);
    *(v8 + 114) = a3;
    *(v8 + 200) = a2;
    *(v8 + 208) = a1;
    v12 = sub_100005DCC;
  }

  else
  {
    v13 = *(v8 + 184);
    v14 = *(v8 + 120);

    v12 = sub_100005D68;
    v11 = v14;
  }

  return _swift_task_switch(v12, v11, 0);
}

uint64_t sub_100005D68()
{
  sub_100007F1C((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100005DCC()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 120);

  sub_100007F1C((v0 + 16));
  v4 = *(v0 + 200);
  v3 = *(v0 + 208);
  v5 = *(v0 + 8);
  v6 = *(v0 + 114);

  return v5(v3, v4, v6);
}

uint64_t sub_100005E4C(char a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000082B0;

  return sub_100005EE4(a1);
}

uint64_t sub_100005EE4(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 65) = a1;
  v3 = type metadata accessor for Logger();
  *(v2 + 24) = v3;
  v4 = *(v3 - 8);
  *(v2 + 32) = v4;
  v5 = *(v4 + 64) + 15;
  *(v2 + 40) = swift_task_alloc();

  return _swift_task_switch(sub_100005FA8, v1, 0);
}

uint64_t sub_100005FA8()
{
  v30 = v0;
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = sub_100008344();
  (*(v2 + 16))(v1, v5, v3);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 32);
    v27 = *(v0 + 40);
    v9 = *(v0 + 16);
    v10 = *(v0 + 24);
    v11 = *(v0 + 65);
    v12 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *v12 = 136315394;
    *(v0 + 64) = v11;
    v13 = String.init<A>(describing:)();
    v15 = sub_10000728C(v13, v14, &v29);

    *(v12 + 4) = v15;
    *(v12 + 12) = 2080;
    *(v12 + 14) = sub_10000728C(*(v9 + 112), *(v9 + 120), &v29);
    _os_log_impl(&_mh_execute_header, v6, v7, "[🟢] 🔔 Monitor Event: received event: %s on monitor: %s", v12, 0x16u);
    swift_arrayDestroy();

    (*(v8 + 8))(v27, v10);
  }

  else
  {
    v17 = *(v0 + 32);
    v16 = *(v0 + 40);
    v18 = *(v0 + 24);

    (*(v17 + 8))(v16, v18);
  }

  if (*(v0 + 65) == 5)
  {
    v19 = swift_task_alloc();
    *(v0 + 48) = v19;
    *v19 = v0;
    v19[1] = sub_1000062EC;
    v20 = *(v0 + 16);

    return sub_1000065C0();
  }

  else
  {
    v22 = *(**(v0 + 16) + 152);
    v28 = (v22 + *v22);
    v23 = v22[1];
    v24 = swift_task_alloc();
    *(v0 + 56) = v24;
    *v24 = v0;
    v24[1] = sub_1000063FC;
    v25 = *(v0 + 16);
    v26 = *(v0 + 65);

    return v28(v26);
  }
}

uint64_t sub_1000062EC()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 40);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_1000063FC()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 40);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t static Service.createMonitor(_:onUnavailable:onStateChange:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_100007C3C(a1, v11);
  type metadata accessor for ServiceMonitor();
  swift_allocObject();

  sub_100007CBC(a4);
  v9 = sub_100007834(v11, a4, a5, a2, a3);

  sub_100007AA4(a4);
  return v9;
}

uint64_t sub_1000065C0()
{
  *(v1 + 56) = v0;
  v2 = *(*v0 + 152);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 64) = v4;
  *v4 = v1;
  v4[1] = sub_1000066D8;

  return v6(1);
}

uint64_t sub_1000066D8()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 56);
  v4 = *v0;

  return _swift_task_switch(sub_1000067E8, v2, 0);
}

uint64_t sub_1000067E8()
{
  v1 = *(v0 + 56);
  v2 = v1[26];
  v3 = v1[27];
  sub_100007AB4(v1 + 23, v2);
  v4 = *(v3 + 24);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 72) = v6;
  *v6 = v0;
  v6[1] = sub_100006918;

  return v8(v0 + 16, v2, v3);
}

uint64_t sub_100006918()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 56);
  v4 = *v0;

  return _swift_task_switch(sub_100006A28, v2, 0);
}

uint64_t sub_100006A28()
{
  v1 = v0[5];
  if (v1)
  {
    v3 = v0[6];
    v2 = v0[7];
    sub_100007AB4(v0 + 2, v0[5]);
    v4 = (*(*v2 + 168))();
    v6 = v5;
    v0[10] = v5;
    v8 = v2[14];
    v7 = v2[15];
    v9 = *(v3 + 24);
    v20 = (v9 + *v9);
    v10 = v9[1];
    v11 = swift_task_alloc();
    v0[11] = v11;
    *v11 = v0;
    v11[1] = sub_100006CD8;

    return v20(v4, v6, v8, v7, v1, v3);
  }

  else
  {
    sub_10000812C((v0 + 2), &unk_100086510, &unk_100060540);
    v13 = v0[7];
    v14 = *(v13 + 144);
    if (v14)
    {
      v15 = *(v13 + 152);
      v16 = *(v13 + 144);
      v21 = (v14 + *v14);
      v17 = v14[1];
      v18 = swift_task_alloc();
      v0[12] = v18;
      *v18 = v0;
      v18[1] = sub_100006F84;

      return v21();
    }

    else
    {
      v19 = v0[1];

      return v19();
    }
  }
}

uint64_t sub_100006CD8(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  v8 = *v4;
  v9 = *(*v4 + 88);
  v10 = *v4;

  v11 = *(v8 + 80);
  v12 = *(v8 + 56);
  if (v3)
  {
    sub_100007D14(a1, a2, a3);

    v13 = sub_1000082C0;
  }

  else
  {

    v13 = sub_100006E58;
  }

  return _swift_task_switch(v13, v12, 0);
}

uint64_t sub_100006E58()
{
  sub_100007F1C(v0 + 2);
  v1 = v0[7];
  v2 = *(v1 + 144);
  if (v2)
  {
    v3 = *(v1 + 152);
    v4 = *(v1 + 144);
    v9 = (v2 + *v2);
    v5 = v2[1];
    v6 = swift_task_alloc();
    v0[12] = v6;
    *v6 = v0;
    v6[1] = sub_100006F84;

    return v9();
  }

  else
  {
    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_100006F84()
{
  v1 = *(*v0 + 96);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100007078(uint64_t a1)
{
  v4 = *(*v1 + 152);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100007198;

  return v8(a1);
}

uint64_t sub_100007198()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_10000728C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100007358(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_100007F68(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100007F1C(v11);
  return v7;
}

unint64_t sub_100007358(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_100007464(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = _StringObject.sharedUTF8.getter();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

char *sub_100007464(uint64_t a1, unint64_t a2)
{
  v4 = sub_1000074B0(a1, a2);
  sub_1000075E0(&off_10007CF48);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_1000074B0(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_1000076CC(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_1000076CC(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1000075E0(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_100007740(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_1000076CC(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_100007CCC(&qword_100086820, &unk_1000605E0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100007740(char *result, int64_t a2, char a3, char *a4)
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
    sub_100007CCC(&qword_100086820, &unk_1000605E0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_100007834(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v32 = a4;
  v33 = a5;
  v31 = a3;
  v9 = (*(*(sub_100007CCC(&qword_100086800, &qword_100060690) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v11 = &v30 - v10;
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin();
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_defaultActor_initialize();
  v34 = Service.identifier.getter();
  v35 = v17;
  v18._countAndFlagsBits = 14906;
  v18._object = 0xE200000000000000;
  String.append(_:)(v18);
  UUID.init()();
  v19 = UUID.uuidString.getter();
  v21 = v20;
  (*(v13 + 8))(v16, v12);
  v22._countAndFlagsBits = v19;
  v22._object = v21;
  String.append(_:)(v22);

  v23 = v35;
  *(v5 + 112) = v34;
  *(v5 + 120) = v23;
  sub_100007C3C(a1, v5 + 160);
  *(v5 + 224) = Service.stateSnapshot.getter();
  v25 = v31;
  v24 = v32;
  *(v5 + 128) = a2;
  *(v5 + 136) = v25;
  v26 = v33;
  *(v5 + 144) = v24;
  *(v5 + 152) = v26;
  v27 = type metadata accessor for TaskPriority();
  (*(*(v27 - 8) + 56))(v11, 1, 1, v27);
  v28 = swift_allocObject();
  v28[2] = 0;
  v28[3] = 0;
  v28[4] = v6;
  sub_100007CBC(a2);
  sub_100007CBC(v24);

  sub_100002DC0(0, 0, v11, &unk_1000605F8, v28);

  sub_100007BE8(a1);
  return v6;
}

uint64_t sub_100007AA4(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

void *sub_100007AB4(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_100007AF8()
{
  result = qword_1000860B8;
  if (!qword_1000860B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000860B8);
  }

  return result;
}

unint64_t sub_100007B4C()
{
  result = qword_100086520;
  if (!qword_100086520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086520);
  }

  return result;
}

uint64_t sub_100007BA0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100007CBC(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100007CCC(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100007D14(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 - 2 < 4 || a3 == 0)
  {
  }

  return result;
}

uint64_t sub_100007D48(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 251)
  {
    v4 = *a1;
    if (v4 >= 5)
    {
      return v4 - 4;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = type metadata accessor for Date();
    v9 = *(*(v8 - 8) + 48);
    v10 = &a1[*(a3 + 20)];

    return v9(v10, a2, v8);
  }
}

_BYTE *sub_100007E00(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 251)
  {
    *result = a2 + 4;
  }

  else
  {
    v7 = type metadata accessor for Date();
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100007EA0()
{
  result = type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100007F1C(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_100007F68(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100007FC8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100008008()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100007198;

  return sub_100001950();
}

uint64_t sub_10000809C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007CCC(&qword_100086800, &qword_100060690);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000810C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 - 2 < 4 || a3 == 0)
  {
  }

  return result;
}

uint64_t sub_10000812C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100007CCC(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_10000818C(uint64_t a1)
{
  v2 = type metadata accessor for ServiceMonitor.StateInfo();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000081E8(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_100008200(char a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100007198;

  return sub_100005E4C(a1);
}

uint64_t sub_1000082C4()
{
  v0 = type metadata accessor for Logger();
  sub_100008488(v0, qword_1000957F0);
  sub_1000083A8(v0, qword_1000957F0);
  v1 = sub_100056798();
  v2 = *v1;
  v3 = v1[1];

  return Logger.init(subsystem:category:)();
}

uint64_t sub_100008344()
{
  if (qword_1000883F0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();

  return sub_1000083A8(v0, qword_1000957F0);
}

uint64_t sub_1000083A8(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_1000083E0@<X0>(uint64_t a1@<X8>)
{
  if (qword_1000883F0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = sub_1000083A8(v2, qword_1000957F0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t *sub_100008488(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t sub_1000084EC(char a1, int *a2)
{
  *(v2 + 24) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100007198;

  return v6();
}

uint64_t sub_1000085E4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  result = swift_beginAccess();
  v10 = 0;
  v11 = *(v5 + 16);
  v12 = 1 << *(v11 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(v11 + 64);
  v15 = (v12 + 63) >> 6;
  while (v14)
  {
LABEL_9:
    v17 = (*(v11 + 48) + ((v10 << 10) | (16 * __clz(__rbit64(v14)))));
    if (*v17 != a3 || v17[1] != a4)
    {
      v14 &= v14 - 1;
      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if ((result & 1) == 0)
      {
        continue;
      }
    }

    _StringGuts.grow(_:)(50);

    v19._countAndFlagsBits = a3;
    v19._object = a4;
    String.append(_:)(v19);
    v20._countAndFlagsBits = 39;
    v20._object = 0xE100000000000000;
    String.append(_:)(v20);
    v21 = 0xD00000000000002FLL;
    sub_100007B4C();
    swift_willThrowTypedImpl();
    return v21;
  }

  while (1)
  {
    v16 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v16 >= v15)
    {
      v22 = swift_allocObject();
      *(v22 + 16) = a1;
      *(v22 + 24) = a2;
      swift_beginAccess();

      v23 = *(v5 + 16);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v26 = *(v5 + 16);
      *(v5 + 16) = 0x8000000000000000;
      v21 = &v26;
      sub_10000D418(&unk_1000608F8, v22, a3, a4, isUniquelyReferenced_nonNull_native);

      *(v5 + 16) = v26;
      swift_endAccess();
      return v21;
    }

    v14 = *(v11 + 64 + 8 * v16);
    ++v10;
    if (v14)
    {
      v10 = v16;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10000882C(uint64_t a1, unsigned __int8 *a2, int *a3)
{
  v8 = (a3 + *a3);
  v4 = a3[1];
  v5 = *a2;
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_100007198;

  return v8(v5);
}

uint64_t sub_100008920(uint64_t a1, void *a2)
{
  result = swift_beginAccess();
  v6 = 0;
  v7 = *(v2 + 16);
  v8 = 1 << *(v7 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(v7 + 64);
  v11 = (v8 + 63) >> 6;
  while (v10)
  {
LABEL_9:
    v13 = (*(v7 + 48) + ((v6 << 10) | (16 * __clz(__rbit64(v10)))));
    if (*v13 != a1 || v13[1] != a2)
    {
      v10 &= v10 - 1;
      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if ((result & 1) == 0)
      {
        continue;
      }
    }

    swift_beginAccess();
    v15 = sub_10000CC58(a1, a2);
    swift_endAccess();
    sub_100007AA4(v15);
    return v15;
  }

  while (1)
  {
    v12 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    if (v12 >= v11)
    {
      _StringGuts.grow(_:)(45);

      v16._countAndFlagsBits = a1;
      v16._object = a2;
      String.append(_:)(v16);
      v17._countAndFlagsBits = 0x276E73656F642027;
      v17._object = 0xEF74736978652074;
      String.append(_:)(v17);
      v15 = 0xD00000000000001CLL;
      sub_100007B4C();
      swift_willThrowTypedImpl();
      return v15;
    }

    v10 = *(v7 + 64 + 8 * v12);
    ++v6;
    if (v10)
    {
      v6 = v12;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100008B18(int a1)
{
  v32 = a1;
  v2 = *(*(sub_100007CCC(&qword_100086800, &qword_100060690) - 8) + 64);
  v3 = (__chkstk_darwin)();
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v35 = &v30 - v6;
  swift_beginAccess();
  v7 = *(v1 + 16);
  v10 = *(v7 + 64);
  v9 = v7 + 64;
  v8 = v10;
  v11 = 1 << *(*(v1 + 16) + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & v8;
  v14 = (v11 + 63) >> 6;
  v33 = *(v1 + 16);

  v16 = 0;
  v31 = v5;
  while (v13)
  {
LABEL_10:
    v18 = *(v33 + 56);
    v19 = swift_allocObject();
    v34 = *(v18 + ((v16 << 10) | (16 * __clz(__rbit64(v13)))));
    *(v19 + 16) = v34;
    v20 = type metadata accessor for TaskPriority();
    v21 = *(v20 - 8);
    v22 = v35;
    (*(v21 + 56))(v35, 1, 1, v20);
    v23 = swift_allocObject();
    *(v23 + 16) = 0;
    *(v23 + 24) = 0;
    *(v23 + 32) = &unk_1000608C0;
    *(v23 + 40) = v19;
    *(v23 + 48) = v32;
    sub_10000809C(v22, v5);
    LODWORD(v22) = (*(v21 + 48))(v5, 1, v20);

    if (v22 == 1)
    {
      sub_10000E0C4(v5);
    }

    else
    {
      TaskPriority.rawValue.getter();
      (*(v21 + 8))(v5, v20);
    }

    v24 = *(v23 + 16);
    v25 = *(v23 + 24);
    swift_unknownObjectRetain();

    if (v24)
    {
      swift_getObjectType();
      v26 = dispatch thunk of Actor.unownedExecutor.getter();
      v28 = v27;
      swift_unknownObjectRelease();
    }

    else
    {
      v26 = 0;
      v28 = 0;
    }

    sub_10000E0C4(v35);
    v29 = swift_allocObject();
    *(v29 + 16) = &unk_1000608D0;
    *(v29 + 24) = v23;
    if (v28 | v26)
    {
      v36 = 0;
      v37 = 0;
      v38 = v26;
      v39 = v28;
    }

    v5 = v31;
    v13 &= v13 - 1;
    swift_task_create();
  }

  while (1)
  {
    v17 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v17 >= v14)
    {
    }

    v13 = *(v9 + 8 * v17);
    ++v16;
    if (v13)
    {
      v16 = v17;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100008E9C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  v11 = (a4 + *a4);
  v8 = a4[1];
  v9 = swift_task_alloc();
  *(v6 + 16) = v9;
  *v9 = v6;
  v9[1] = sub_1000082B0;

  return v11(a6);
}

uint64_t sub_100008F94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100007CCC(&qword_100086800, &qword_100060690);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_10000809C(a3, v27 - v11);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_10000E0C4(v12);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = dispatch thunk of Actor.unownedExecutor.getter();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = String.utf8CString.getter() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_10000E0C4(a3);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_10000E0C4(a3);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_100009254()
{
  v1 = *(v0 + 16);

  return _swift_deallocClassInstance(v0, 24, 7);
}

uint64_t sub_100009298(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[11] = a4;
  v5[12] = v4;
  v5[9] = a2;
  v5[10] = a3;
  v5[8] = a1;
  return _swift_task_switch(sub_1000092C0, v4, 0);
}

uint64_t sub_1000092C0()
{
  v1 = v0[12];
  swift_beginAccess();
  v2 = *(v1 + 112);
  if (*(v2 + 16))
  {
    v4 = v0[8];
    v3 = v0[9];

    v5 = sub_10000CB28(v4, v3);
    if (v6)
    {
      v7 = *(*(v2 + 56) + 8 * v5);

      swift_beginAccess();
      if (*(*(v7 + 16) + 16))
      {
        v9 = v0[10];
        v8 = v0[11];
        v10 = *(v7 + 16);

        sub_10000CB28(v9, v8);
        v12 = v11;

        goto LABEL_8;
      }
    }

    else
    {
    }
  }

  v12 = 0;
LABEL_8:
  v13 = v0[1];

  return v13(v12 & 1);
}

uint64_t sub_1000093E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[16] = a6;
  v7[17] = v6;
  v7[14] = a4;
  v7[15] = a5;
  v7[12] = a2;
  v7[13] = a3;
  v7[11] = a1;
  v8 = type metadata accessor for Logger();
  v7[18] = v8;
  v9 = *(v8 - 8);
  v7[19] = v9;
  v10 = *(v9 + 64) + 15;
  v7[20] = swift_task_alloc();
  v7[21] = swift_task_alloc();

  return _swift_task_switch(sub_1000094BC, v6, 0);
}

uint64_t sub_1000094BC()
{
  v63 = v0;
  v1 = *(v0 + 168);
  v2 = *(v0 + 144);
  v3 = *(v0 + 152);
  v4 = *(v0 + 128);
  v5 = sub_1000568C8();
  v58 = *(v3 + 16);
  v60 = v5;
  v58(v1);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();

  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 168);
  v11 = *(v0 + 144);
  v10 = *(v0 + 152);
  if (v8)
  {
    v13 = *(v0 + 120);
    v12 = *(v0 + 128);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v62[0] = v15;
    *v14 = 136315138;
    *(v14 + 4) = sub_10000728C(v13, v12, v62);
    _os_log_impl(&_mh_execute_header, v6, v7, "🔌 Muxed Adapter: trying to register an Event Handler for %s", v14, 0xCu);
    sub_100007F1C(v15);
  }

  v16 = *(v10 + 8);
  v16(v9, v11);
  v17 = *(v0 + 136);
  swift_beginAccess();
  if (!*(*(v17 + 112) + 16) || (v19 = *(v0 + 104), v18 = *(v0 + 112), v20 = *(v17 + 112), , sub_10000CB28(v19, v18), LOBYTE(v18) = v21, , (v18 & 1) == 0))
  {
    v23 = *(v0 + 104);
    v22 = *(v0 + 112);
    type metadata accessor for MuxedEventAdapter.EventHandlerBucket();
    v24 = swift_allocObject();

    *(v24 + 16) = sub_10000DA0C(&_swiftEmptyArrayStorage);
    swift_beginAccess();
    v25 = *(v17 + 112);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v62[0] = *(v17 + 112);
    *(v17 + 112) = 0x8000000000000000;
    sub_10000D5A0(v24, v23, v22, isUniquelyReferenced_nonNull_native);

    *(v17 + 112) = v62[0];
    swift_endAccess();
  }

  v27 = *(v17 + 112);
  if (*(v27 + 16))
  {
    v29 = *(v0 + 104);
    v28 = *(v0 + 112);
    v30 = *(v17 + 112);

    v31 = sub_10000CB28(v29, v28);
    if (v32)
    {
      v34 = *(v0 + 120);
      v33 = *(v0 + 128);
      v36 = *(v0 + 88);
      v35 = *(v0 + 96);
      v37 = *(*(v27 + 56) + 8 * v31);

      sub_1000085E4(v36, v35, v34, v33);
      v42 = *(v0 + 128);
      (v58)(*(v0 + 160), v60, *(v0 + 144));

      v43 = Logger.logObject.getter();
      v44 = static os_log_type_t.debug.getter();

      v45 = os_log_type_enabled(v43, v44);
      v47 = *(v0 + 152);
      v46 = *(v0 + 160);
      v48 = *(v0 + 144);
      if (v45)
      {
        v61 = *(v0 + 144);
        v50 = *(v0 + 120);
        v49 = *(v0 + 128);
        v51 = swift_slowAlloc();
        v59 = v46;
        v52 = swift_slowAlloc();
        v62[0] = v52;
        *v51 = 136315138;
        *(v51 + 4) = sub_10000728C(v50, v49, v62);
        _os_log_impl(&_mh_execute_header, v43, v44, "🔌 Muxed Adapter: successfully registered an Event Handler for %s", v51, 0xCu);
        sub_100007F1C(v52);

        v53 = v59;
        v54 = v61;
      }

      else
      {

        v53 = v46;
        v54 = v48;
      }

      v16(v53, v54);
      v56 = *(v0 + 160);
      v55 = *(v0 + 168);

      v57 = *(v0 + 8);

      return v57();
    }
  }

  *(v0 + 64) = 0xD00000000000001FLL;
  *(v0 + 72) = 0x800000010006A180;
  *(v0 + 80) = 2;
  sub_100007B4C();
  swift_willThrowTypedImpl();
  v39 = *(v0 + 160);
  v38 = *(v0 + 168);

  v40 = *(v0 + 8);

  return v40(0xD00000000000001FLL, 0x800000010006A180, 2);
}

uint64_t sub_100009994(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[11] = a4;
  v5[12] = v4;
  v5[9] = a2;
  v5[10] = a3;
  v5[8] = a1;
  v6 = type metadata accessor for Logger();
  v5[13] = v6;
  v7 = *(v6 - 8);
  v5[14] = v7;
  v8 = *(v7 + 64) + 15;
  v5[15] = swift_task_alloc();
  v5[16] = swift_task_alloc();

  return _swift_task_switch(sub_100009A68, v4, 0);
}

uint64_t sub_100009A68()
{
  v57 = v0;
  v1 = *(v0 + 96);
  swift_beginAccess();
  v2 = *(v1 + 112);
  if (*(v2 + 16))
  {
    v4 = *(v0 + 64);
    v3 = *(v0 + 72);

    v5 = sub_10000CB28(v4, v3);
    if (v6)
    {
      v8 = *(v0 + 80);
      v7 = *(v0 + 88);
      v9 = *(*(v2 + 56) + 8 * v5);

      sub_100008920(v8, v7);
      v36 = *(v0 + 128);
      v37 = *(v0 + 104);
      v38 = *(v0 + 112);
      v39 = *(v0 + 88);
      v40 = sub_1000568C8();
      (*(v38 + 16))(v36, v40, v37);

      v41 = Logger.logObject.getter();
      v42 = static os_log_type_t.debug.getter();

      v43 = os_log_type_enabled(v41, v42);
      v44 = *(v0 + 128);
      v46 = *(v0 + 104);
      v45 = *(v0 + 112);
      if (v43)
      {
        v54 = *(v0 + 128);
        v48 = *(v0 + 80);
        v47 = *(v0 + 88);
        v49 = swift_slowAlloc();
        v50 = swift_slowAlloc();
        v55 = v50;
        *v49 = 136315138;
        *(v49 + 4) = sub_10000728C(v48, v47, &v55);
        _os_log_impl(&_mh_execute_header, v41, v42, "🔌 Muxed Adapter: successfully removed an Event Handler for %s", v49, 0xCu);
        sub_100007F1C(v50);

        (*(v45 + 8))(v54, v46);
      }

      else
      {

        (*(v45 + 8))(v44, v46);
      }

      v52 = *(v0 + 120);
      v51 = *(v0 + 128);

      v53 = *(v0 + 8);

      return v53();
    }
  }

  v11 = *(v0 + 112);
  v10 = *(v0 + 120);
  v12 = *(v0 + 104);
  v13 = *(v0 + 72);
  v14 = sub_100008344();
  (*(v11 + 16))(v10, v14, v12);

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.error.getter();

  v17 = os_log_type_enabled(v15, v16);
  v19 = *(v0 + 112);
  v18 = *(v0 + 120);
  v20 = *(v0 + 104);
  if (v17)
  {
    v22 = *(v0 + 64);
    v21 = *(v0 + 72);
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v55 = v24;
    *v23 = 136315138;
    *(v23 + 4) = sub_10000728C(v22, v21, &v55);
    _os_log_impl(&_mh_execute_header, v15, v16, "🔌 Muxed Adapter: failed to remove the handler, doesn't contain the handler bucket for service: %s", v23, 0xCu);
    sub_100007F1C(v24);
  }

  (*(v19 + 8))(v18, v20);
  v26 = *(v0 + 64);
  v25 = *(v0 + 72);
  v55 = 0;
  v56 = 0xE000000000000000;
  _StringGuts.grow(_:)(51);
  v27._object = 0x800000010006A1A0;
  v27._countAndFlagsBits = 0xD000000000000030;
  String.append(_:)(v27);
  v28._countAndFlagsBits = v26;
  v28._object = v25;
  String.append(_:)(v28);
  v29._countAndFlagsBits = 41;
  v29._object = 0xE100000000000000;
  String.append(_:)(v29);
  v30 = v55;
  v31 = v56;
  *(v0 + 40) = v55;
  *(v0 + 48) = v31;
  *(v0 + 56) = 2;
  sub_100007B4C();
  swift_willThrowTypedImpl();
  v33 = *(v0 + 120);
  v32 = *(v0 + 128);

  v34 = *(v0 + 8);

  return v34(v30, v31, 2);
}

uint64_t sub_100009EBC(char a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 48) = a3;
  *(v4 + 56) = v3;
  *(v4 + 40) = a2;
  *(v4 + 88) = a1;
  v5 = type metadata accessor for Logger();
  *(v4 + 64) = v5;
  v6 = *(v5 - 8);
  *(v4 + 72) = v6;
  v7 = *(v6 + 64) + 15;
  *(v4 + 80) = swift_task_alloc();

  return _swift_task_switch(sub_100009F84, v3, 0);
}

uint64_t sub_100009F84()
{
  v28 = v0;
  v1 = *(v0 + 56);
  swift_beginAccess();
  v2 = *(v1 + 112);
  if (*(v2 + 16))
  {
    v4 = *(v0 + 40);
    v3 = *(v0 + 48);

    v5 = sub_10000CB28(v4, v3);
    if (v6)
    {
      v7 = *(*(v2 + 56) + 8 * v5);
      v8 = *(v0 + 88);

      sub_100008B18(v8);

      goto LABEL_8;
    }
  }

  v10 = *(v0 + 72);
  v9 = *(v0 + 80);
  v11 = *(v0 + 64);
  v12 = *(v0 + 48);
  v13 = sub_100008344();
  (*(v10 + 16))(v9, v13, v11);

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.error.getter();

  v16 = os_log_type_enabled(v14, v15);
  v18 = *(v0 + 72);
  v17 = *(v0 + 80);
  v19 = *(v0 + 64);
  if (v16)
  {
    v21 = *(v0 + 40);
    v20 = *(v0 + 48);
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v27 = v23;
    *v22 = 136315138;
    *(v22 + 4) = sub_10000728C(v21, v20, &v27);
    _os_log_impl(&_mh_execute_header, v14, v15, "Received an event for service (%s) but that service doesn't register event handler.", v22, 0xCu);
    sub_100007F1C(v23);
  }

  (*(v18 + 8))(v17, v19);
LABEL_8:
  v24 = *(v0 + 80);

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_10000A194()
{
  v1 = *(v0 + 112);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_10000A1BC()
{
  v1 = *(v0 + 112);

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_10000A1F4()
{
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v0 + 112) = sub_10000DB28(&_swiftEmptyArrayStorage);
  return v0;
}

uint64_t sub_10000A23C()
{
  swift_defaultActor_initialize();
  *(v0 + 112) = sub_10000DB28(&_swiftEmptyArrayStorage);
  return v0;
}

uint64_t sub_10000A26C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(**v4 + 120);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_10000E524;

  return v14(a1, a2, a3, a4);
}

uint64_t sub_10000A3B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14 = *(**v6 + 128);
  v18 = (v14 + *v14);
  v15 = v14[1];
  v16 = swift_task_alloc();
  *(v7 + 16) = v16;
  *v16 = v7;
  v16[1] = sub_10000E528;

  return v18(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_10000A50C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(**v4 + 136);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_10000E528;

  return v14(a1, a2, a3, a4);
}

uint64_t sub_10000A650(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(**v3 + 144);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_1000082B0;

  return v12(a1, a2, a3);
}

uint64_t sub_10000A798()
{
  swift_beginAccess();
  v1 = *(v0 + 128);
  v2 = *(v0 + 136);

  return v1;
}

uint64_t sub_10000A7E4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 136);
  *(v2 + 128) = a1;
  *(v2 + 136) = a2;
}

uint64_t sub_10000A894()
{
  swift_beginAccess();
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);
  sub_100007CBC(v1);
  return v1;
}

uint64_t sub_10000A8E4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 144);
  v6 = *(v2 + 152);
  *(v2 + 144) = a1;
  *(v2 + 152) = a2;
  return sub_100007AA4(v5);
}

uint64_t sub_10000A98C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = type metadata accessor for Logger();
  v5[7] = v6;
  v7 = *(v6 - 8);
  v5[8] = v7;
  v8 = *(v7 + 64) + 15;
  v5[9] = swift_task_alloc();

  return _swift_task_switch(sub_10000AA54, v4, 0);
}

uint64_t sub_10000AA54()
{
  v33 = v0;
  v1 = v0[6];
  if (v1[14] != v0[2] || v1[15] != v0[3])
  {
    v3 = 0;
    if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_20;
    }

    v1 = v0[6];
  }

  v5 = v0[4];
  v4 = v0[5];
  if ((*(*v1 + 112))() == v5 && v6 == v4)
  {
  }

  else
  {
    v8 = v0[4];
    v9 = v0[5];
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v10 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  v12 = (*(*v0[6] + 136))(v11);
  if (v12)
  {
    sub_100007AA4(v12);
    v3 = 1;
    goto LABEL_17;
  }

LABEL_16:
  v3 = 0;
LABEL_17:
  v14 = v0[8];
  v13 = v0[9];
  v15 = v0[7];
  v16 = v0[5];
  v17 = sub_1000568C8();
  (*(v14 + 16))(v13, v17, v15);

  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.debug.getter();

  v20 = os_log_type_enabled(v18, v19);
  v21 = v0[8];
  v22 = v0[9];
  v23 = v0[7];
  if (v20)
  {
    v31 = v0[9];
    v25 = v0[4];
    v24 = v0[5];
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v32 = v27;
    *v26 = 136315394;
    *(v26 + 4) = sub_10000728C(v25, v24, &v32);
    *(v26 + 12) = 1024;
    *(v26 + 14) = v3;
    _os_log_impl(&_mh_execute_header, v18, v19, "🔌 Base Adapter: the %s handler registration status: %{BOOL}d", v26, 0x12u);
    sub_100007F1C(v27);

    (*(v21 + 8))(v31, v23);
  }

  else
  {

    (*(v21 + 8))(v22, v23);
  }

LABEL_20:
  v28 = v0[9];

  v29 = v0[1];

  return v29(v3);
}

void *sub_10000ACD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  swift_defaultActor_initialize();
  v8[16] = 0;
  v8[17] = 0xE000000000000000;
  v8[18] = 0;
  v8[19] = 0;
  v8[14] = a1;
  v8[15] = a2;
  if (a3)
  {
    v9 = swift_allocObject();
    *(v9 + 16) = a3;
    *(v9 + 24) = a4;
    v10 = &unk_100060660;
  }

  else
  {
    v10 = 0;
    v9 = 0;
  }

  swift_beginAccess();
  v11 = v8[18];
  v12 = v8[19];
  v8[18] = v10;
  v8[19] = v9;
  sub_100007AA4(v11);
  return v8;
}

void *sub_10000ADB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_defaultActor_initialize();
  v4[18] = 0;
  v4[16] = 0;
  v4[17] = 0xE000000000000000;
  v4[19] = 0;
  v4[14] = a1;
  v4[15] = a2;
  if (a3)
  {
    v9 = swift_allocObject();
    *(v9 + 16) = a3;
    *(v9 + 24) = a4;
    v10 = &unk_100060668;
  }

  else
  {
    v10 = 0;
    v9 = 0;
  }

  swift_beginAccess();
  v11 = v4[18];
  v12 = v4[19];
  v4[18] = v10;
  v4[19] = v9;
  sub_100007AA4(v11);
  return v4;
}

uint64_t sub_10000AE78(uint64_t a1, void (*a2)(void))
{
  a2();
  v3 = *(v2 + 8);

  return v3();
}

uint64_t sub_10000AEDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[13] = a6;
  v7[14] = v6;
  v7[11] = a4;
  v7[12] = a5;
  v7[9] = a2;
  v7[10] = a3;
  v7[8] = a1;
  v8 = type metadata accessor for Logger();
  v7[15] = v8;
  v9 = *(v8 - 8);
  v7[16] = v9;
  v10 = *(v9 + 64) + 15;
  v7[17] = swift_task_alloc();

  return _swift_task_switch(sub_10000AFA8, v6, 0);
}

uint64_t sub_10000AFA8()
{
  v51 = v0;
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[15];
  v4 = v0[11];
  v5 = sub_1000568C8();
  (*(v2 + 16))(v1, v5, v3);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();

  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[16];
  v9 = v0[17];
  v11 = v0[15];
  if (v8)
  {
    v13 = v0[10];
    v12 = v0[11];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v49 = v15;
    *v14 = 136315138;
    *(v14 + 4) = sub_10000728C(v13, v12, &v49);
    _os_log_impl(&_mh_execute_header, v6, v7, "🔌 Base Adapter: trying to register an Event Handler for %s", v14, 0xCu);
    sub_100007F1C(v15);
  }

  (*(v10 + 8))(v9, v11);
  v16 = v0[14];
  v17 = v16[14];
  v18 = v16[15];
  if (v17 != v0[10] || v18 != v0[11])
  {
    v20 = v16[14];
    v21 = v16[15];
    if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      v32 = v0[10];
      v31 = v0[11];
      v49 = 0;
      v50 = 0xE000000000000000;
      _StringGuts.grow(_:)(70);
      v33._countAndFlagsBits = 0xD000000000000025;
      v33._object = 0x800000010006A1E0;
      String.append(_:)(v33);
      v34._countAndFlagsBits = v32;
      v34._object = v31;
      String.append(_:)(v34);
      v35._countAndFlagsBits = 0xD00000000000001DLL;
      v35._object = 0x800000010006A210;
      String.append(_:)(v35);
      v36._countAndFlagsBits = v17;
      v36._object = v18;
      String.append(_:)(v36);
      v27 = v49;
      v28 = v50;
      v0[2] = v49;
      v29 = 4;
      v30 = 3;
      goto LABEL_20;
    }

    v16 = v0[14];
  }

  if ((*(*v16 + 112))())
  {
    v23 = 0;
  }

  else
  {
    v23 = v22 == 0xE000000000000000;
  }

  if (v23)
  {
  }

  else
  {
    v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v24 & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  v26 = (*(*v0[14] + 136))(v25);
  if (v26)
  {
    sub_100007AA4(v26);
LABEL_18:
    v27 = 0xD00000000000004FLL;
    v28 = 0x800000010006A230;
    v0[5] = 0xD00000000000004FLL;
    v29 = 7;
    v30 = 6;
LABEL_20:
    v0[v30] = v28;
    LOBYTE(v0[v29]) = 2;
    sub_100007B4C();
    swift_willThrowTypedImpl();
    v37 = v0[17];

    v38 = v0[1];

    return v38(v27, v28, 2);
  }

  v40 = v0[17];
  v42 = v0[13];
  v41 = v0[14];
  v43 = v0[12];
  v45 = v0[8];
  v44 = v0[9];
  v46 = *(*v41 + 120);

  v46(v43, v42);
  v47 = *(*v41 + 144);

  v47(v45, v44);

  v48 = v0[1];

  return v48();
}

uint64_t sub_10000B3B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[8] = a4;
  v5[9] = v4;
  v5[6] = a2;
  v5[7] = a3;
  v5[5] = a1;
  return _swift_task_switch(sub_10000B3E0, v4, 0);
}

uint64_t sub_10000B3E0()
{
  v1 = *(v0 + 72);
  v2 = v1[14];
  v3 = v1[15];
  if (v2 != *(v0 + 40) || v3 != *(v0 + 48))
  {
    v5 = v1[14];
    v6 = v1[15];
    if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      v30 = *(v0 + 40);
      v29 = *(v0 + 48);
      _StringGuts.grow(_:)(110);
      v31._countAndFlagsBits = 0xD00000000000002ELL;
      v31._object = 0x800000010006A280;
      String.append(_:)(v31);
      v32._countAndFlagsBits = v30;
      v32._object = v29;
      String.append(_:)(v32);
      v33._countAndFlagsBits = 0xD00000000000003BLL;
      v33._object = 0x800000010006A2B0;
      String.append(_:)(v33);
      v34._countAndFlagsBits = v2;
      v34._object = v3;
      String.append(_:)(v34);
      goto LABEL_18;
    }

    v1 = *(v0 + 72);
  }

  v8 = *(v0 + 56);
  v7 = *(v0 + 64);
  v9 = *(*v1 + 112);
  if (v9() == v8 && v10 == v7)
  {
  }

  else
  {
    v12 = *(v0 + 56);
    v13 = *(v0 + 64);
    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v14 & 1) == 0)
    {
      v16 = *(v0 + 64);
      v15 = *(v0 + 72);
      v18 = *(v0 + 48);
      v17 = *(v0 + 56);
      v19 = *(v0 + 40);
      _StringGuts.grow(_:)(124);
      v20._countAndFlagsBits = 0xD00000000000002FLL;
      v20._object = 0x800000010006A2F0;
      String.append(_:)(v20);
      v21._countAndFlagsBits = v19;
      v21._object = v18;
      String.append(_:)(v21);
      v22._object = 0x800000010006A320;
      v22._countAndFlagsBits = 0xD00000000000001ALL;
      String.append(_:)(v22);
      v23._countAndFlagsBits = v17;
      v23._object = v16;
      String.append(_:)(v23);
      v24._countAndFlagsBits = 0xD00000000000002CLL;
      v24._object = 0x800000010006A340;
      String.append(_:)(v24);
      v25._countAndFlagsBits = v9();
      String.append(_:)(v25);

LABEL_18:
      v35._countAndFlagsBits = 39;
      v35._object = 0xE100000000000000;
      String.append(_:)(v35);
      *(v0 + 16) = 0;
      *(v0 + 24) = 0xE000000000000000;
      *(v0 + 32) = 2;
      sub_100007B4C();
      swift_willThrowTypedImpl();
      v36 = *(v0 + 8);

      return v36(0, 0xE000000000000000, 2);
    }
  }

  v26 = *(v0 + 72);
  (*(*v26 + 144))(0, 0);
  (*(*v26 + 120))(0, 0xE000000000000000);
  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_10000B728(char a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = v3;
  *(v4 + 16) = a2;
  *(v4 + 88) = a1;
  v5 = type metadata accessor for Logger();
  *(v4 + 40) = v5;
  v6 = *(v5 - 8);
  *(v4 + 48) = v6;
  v7 = *(v6 + 64) + 15;
  *(v4 + 56) = swift_task_alloc();

  return _swift_task_switch(sub_10000B7F0, v3, 0);
}

uint64_t sub_10000B7F0()
{
  v33 = v0;
  v1 = *(v0 + 32);
  v2 = v1[14];
  v3 = v1[15];
  v4 = v2 == *(v0 + 16) && v3 == *(v0 + 24);
  if (v4 || (v5 = v1[14], v6 = v1[15], v7 = _stringCompareWithSmolCheck(_:_:expecting:)(), v1 = *(v0 + 32), (v7 & 1) != 0))
  {
    v8 = (*(*v1 + 136))();
    *(v0 + 64) = v8;
    if (v8)
    {
      *(v0 + 72) = v9;
      v30 = (v8 + *v8);
      v10 = v8[1];
      v11 = swift_task_alloc();
      *(v0 + 80) = v11;
      *v11 = v0;
      v11[1] = sub_10000BB18;
      v12 = *(v0 + 88);

      return v30(v12);
    }
  }

  else
  {
    v15 = *(v0 + 48);
    v14 = *(v0 + 56);
    v16 = *(v0 + 40);
    v17 = *(v0 + 24);
    v18 = sub_100008344();
    (*(v15 + 16))(v14, v18, v16);

    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();

    v21 = os_log_type_enabled(v19, v20);
    v23 = *(v0 + 48);
    v22 = *(v0 + 56);
    v24 = *(v0 + 40);
    if (v21)
    {
      v26 = *(v0 + 16);
      v25 = *(v0 + 24);
      v31 = *(v0 + 40);
      v27 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *v27 = 136315394;
      *(v27 + 4) = sub_10000728C(v26, v25, &v32);
      *(v27 + 12) = 2080;
      *(v27 + 14) = sub_10000728C(v2, v3, &v32);
      _os_log_impl(&_mh_execute_header, v19, v20, "Adapater received event for %s but the expected service is %s", v27, 0x16u);
      swift_arrayDestroy();

      (*(v23 + 8))(v22, v31);
    }

    else
    {

      (*(v23 + 8))(v22, v24);
    }
  }

  v28 = *(v0 + 56);

  v29 = *(v0 + 8);

  return v29();
}

uint64_t sub_10000BB18()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 72);
  v4 = *(*v0 + 64);
  v8 = *v0;

  sub_100007AA4(v4);
  v5 = *(v1 + 56);

  v6 = *(v8 + 8);

  return v6();
}

void *sub_10000BC64()
{
  v1 = v0[15];

  v2 = v0[17];

  v3 = v0[19];
  sub_100007AA4(v0[18]);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_10000BC9C()
{
  v1 = v0[15];

  v2 = v0[17];

  v3 = v0[19];
  sub_100007AA4(v0[18]);
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_10000BCE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(**v4 + 160);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_10000BE28;

  return v14(a1, a2, a3, a4);
}

uint64_t sub_10000BE28(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_10000BF24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14 = *(**v6 + 176);
  v18 = (v14 + *v14);
  v15 = v14[1];
  v16 = swift_task_alloc();
  *(v7 + 16) = v16;
  *v16 = v7;
  v16[1] = sub_10000E528;

  return v18(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_10000C080(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(**v4 + 184);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_10000C1C4;

  return v14(a1, a2, a3, a4);
}

uint64_t sub_10000C1C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v4 + 16);
  v14 = *v4;

  v12 = *(v14 + 8);
  if (v3)
  {
    v9 = a1;
    v10 = a2;
    v11 = a3;
  }

  return v12(v9, v10, v11);
}

uint64_t sub_10000C2E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(**v3 + 192);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_1000082B0;

  return v12(a1, a2, a3);
}

uint64_t sub_10000C454(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 32) = a4;
  *(v5 + 40) = a5;
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;
  *(v5 + 56) = a1;
  v6 = *(*(sub_100007CCC(&qword_100086800, &qword_100060690) - 8) + 64) + 15;
  *(v5 + 48) = swift_task_alloc();

  return _swift_task_switch(sub_10000C4F8, 0, 0);
}

uint64_t sub_10000C4F8()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 16);
  v6 = *(v0 + 56);
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v2, 1, 1, v7);
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  *(v8 + 32) = v4;
  *(v8 + 40) = v1;
  *(v8 + 48) = v6;
  *(v8 + 56) = v5;
  *(v8 + 64) = v3;

  sub_100008F94(0, 0, v2, &unk_1000606A0, v8);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_10000C624(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = (a4 + *a4);
  v12 = a4[1];
  v13 = swift_task_alloc();
  *(v8 + 16) = v13;
  *v13 = v8;
  v13[1] = sub_1000082B0;

  return v15(a6, a7, a8);
}

uint64_t sub_10000C764(char a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 16) = a2;
  *(v4 + 24) = a3;
  *(v4 + 56) = a1;
  v5 = *(*(sub_100007CCC(&qword_100086800, &qword_100060690) - 8) + 64) + 15;
  *(v4 + 32) = swift_task_alloc();
  *(v4 + 40) = *v3;

  return _swift_task_switch(sub_10000C80C, 0, 0);
}

uint64_t sub_10000C80C()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  v5 = *(v0 + 16);
  v6 = *(v0 + 56);
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v3, 1, 1, v7);
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  *(v8 + 32) = v2;
  *(v8 + 40) = v1;
  *(v8 + 48) = v6;
  *(v8 + 56) = v5;
  *(v8 + 64) = v4;

  sub_100008F94(0, 0, v3, &unk_100060898, v8);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_10000C938(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000CA30;

  return v7(a1);
}

uint64_t sub_10000CA30()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

unint64_t sub_10000CB28(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();

  return sub_10000CBA0(a1, a2, v6);
}

unint64_t sub_10000CBA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_10000CC58(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *v2;
  v5 = sub_10000CB28(a1, a2);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = v5;
  v8 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v3;
  v16 = *v3;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_10000D71C();
    v10 = v16;
  }

  v11 = *(*(v10 + 48) + 16 * v7 + 8);

  v12 = (*(v10 + 56) + 16 * v7);
  v13 = *v12;
  v14 = v12[1];
  sub_10000D268(v7, v10);
  *v3 = v10;
  return v13;
}

uint64_t sub_10000CD08(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100007CCC(&qword_100086500, &unk_1000608E0);
  v36 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
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
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v22 = 16 * (v19 | (v9 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v37 = *(*(v5 + 56) + v22);
      if ((v36 & 1) == 0)
      {
      }

      v26 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v8 + 56) + v17) = v37;
      ++*(v8 + 16);
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v13 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_35;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_10000CFC0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100007CCC(&qword_100086508, &qword_100060900);
  v38 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
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
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_10000D268(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v13 = Hasher._finalize()();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 16 * v3);
        v20 = (v18 + 16 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_10000D418(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_10000CB28(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_10000CD08(v18, a5 & 1);
      v22 = *v6;
      v13 = sub_10000CB28(a3, a4);
      if ((v19 & 1) != (v23 & 1))
      {
LABEL_18:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_10000D71C();
      v13 = v21;
    }
  }

  v24 = *v6;
  if (v19)
  {
    v25 = (v24[7] + 16 * v13);
    v26 = v25[1];
    *v25 = a1;
    v25[1] = a2;
  }

  v24[(v13 >> 6) + 8] |= 1 << v13;
  v28 = (v24[6] + 16 * v13);
  *v28 = a3;
  v28[1] = a4;
  v29 = (v24[7] + 16 * v13);
  *v29 = a1;
  v29[1] = a2;
  v30 = v24[2];
  v17 = __OFADD__(v30, 1);
  v31 = v30 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v24[2] = v31;
}

uint64_t sub_10000D5A0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_10000CB28(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_10000CFC0(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_10000CB28(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_10000D89C();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v26 = (v22[6] + 16 * v11);
  *v26 = a2;
  v26[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v27 = v22[2];
  v15 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v28;
}

void *sub_10000D71C()
{
  v1 = v0;
  sub_100007CCC(&qword_100086500, &unk_1000608E0);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + v17);
        v22 = (*(v4 + 48) + v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + v17) = v21;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_10000D89C()
{
  v1 = v0;
  sub_100007CCC(&qword_100086508, &qword_100060900);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

unint64_t sub_10000DA0C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100007CCC(&qword_100086500, &unk_1000608E0);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 2)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v13 = *i;

      result = sub_10000CB28(v5, v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      *(v3[7] + 16 * result) = v13;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
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

unint64_t sub_10000DB28(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100007CCC(&qword_100086508, &qword_100060900);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_10000CB28(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

uint64_t sub_10000DC50()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000DC88(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000082B0;

  return sub_10000AE78(a1, v5);
}

uint64_t sub_10000DD40()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 56);
  v5 = *(v0 + 64);
  v6 = *(v0 + 48);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1000082B0;

  return sub_10000C624(v7, v8, v9, v2, v3, v6, v4, v5);
}

uint64_t _s5EventOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_20;
  }

  v2 = a2 + 5;
  if (a2 + 5 >= 0xFFFF00)
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

    return (*a1 | (v5 << 8)) - 5;
  }

  if (v4 == 2)
  {
    v5 = *(a1 + 1);
    if (*(a1 + 1))
    {
      return (*a1 | (v5 << 8)) - 5;
    }
  }

  else
  {
    v5 = *(a1 + 1);
    if (v5)
    {
      return (*a1 | (v5 << 8)) - 5;
    }
  }

LABEL_20:
  v7 = *a1;
  v8 = v7 >= 5;
  v9 = v7 - 5;
  if (!v8)
  {
    v9 = -1;
  }

  if (v9 + 1 >= 2)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

uint64_t _s5EventOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 5;
  if (a3 + 5 >= 0xFFFF00)
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

  if (a3 < 0xFB)
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_10000DF60(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 5)
  {
    return v1 - 4;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_10000DF74(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 4;
  }

  return result;
}

__n128 sub_10000DFDC(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_10000DFE8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10000E030(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_10000E07C()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[8];

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_10000E0C4(uint64_t a1)
{
  v2 = sub_100007CCC(&qword_100086800, &qword_100060690);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000E12C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000082B0;

  return sub_10000C938(a1, v5);
}

uint64_t sub_10000E1E4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100007198;

  return sub_10000C938(a1, v5);
}

uint64_t sub_10000E29C(char a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000082B0;

  return sub_1000084EC(a1, v5);
}

uint64_t sub_10000E350()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 49, 7);
}

uint64_t sub_10000E390()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000082B0;

  return sub_100008E9C(v5, v6, v7, v2, v3, v4);
}

uint64_t sub_10000E438(uint64_t a1, unsigned __int8 *a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_100007198;

  return sub_10000882C(a1, a2, v7);
}

uint64_t sub_10000E52C@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for XPCEndpoint();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

double sub_10000E5C0@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_10000E5D0@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC21systemservicemonitord21RequestMachConnection__eventAdapter;
  swift_beginAccess();
  return sub_100015930(v1 + v3, a1, &unk_100086510, &unk_100060540);
}

uint64_t sub_10000E638(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC21systemservicemonitord21RequestMachConnection__eventAdapter;
  swift_beginAccess();
  sub_10000EB70(a1, v1 + v3, &unk_100086510, &unk_100060540);
  return swift_endAccess();
}

uint64_t sub_10000E72C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 48);
  v8 = *(v3 + 52);
  v9 = swift_allocObject();
  swift_defaultActor_initialize();
  v10 = OBJC_IVAR____TtC21systemservicemonitord21RequestMachConnection_xpcEndpoint;
  v11 = type metadata accessor for XPCEndpoint();
  (*(*(v11 - 8) + 56))(v9 + v10, 1, 1, v11);
  v12 = (v9 + OBJC_IVAR____TtC21systemservicemonitord21RequestMachConnection_machServiceName);
  *(v9 + OBJC_IVAR____TtC21systemservicemonitord21RequestMachConnection_xpcSession) = 0;
  v13 = v9 + OBJC_IVAR____TtC21systemservicemonitord21RequestMachConnection__eventAdapter;
  *v13 = 0u;
  *(v13 + 16) = 0u;
  *(v13 + 32) = 0;
  *v12 = a1;
  v12[1] = a2;
  swift_beginAccess();
  sub_10000EB70(a3, v13, &unk_100086510, &unk_100060540);
  swift_endAccess();
  return v9;
}

uint64_t sub_10000E83C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_defaultActor_initialize();
  v7 = OBJC_IVAR____TtC21systemservicemonitord21RequestMachConnection_xpcEndpoint;
  v8 = type metadata accessor for XPCEndpoint();
  (*(*(v8 - 8) + 56))(v3 + v7, 1, 1, v8);
  v9 = (v3 + OBJC_IVAR____TtC21systemservicemonitord21RequestMachConnection_machServiceName);
  *v9 = 0;
  v9[1] = 0;
  *(v3 + OBJC_IVAR____TtC21systemservicemonitord21RequestMachConnection_xpcSession) = 0;
  v10 = v3 + OBJC_IVAR____TtC21systemservicemonitord21RequestMachConnection__eventAdapter;
  *v10 = 0u;
  *(v10 + 16) = 0u;
  *(v10 + 32) = 0;
  *v9 = a1;
  v9[1] = a2;
  swift_beginAccess();
  sub_10000EB70(a3, v10, &unk_100086510, &unk_100060540);
  swift_endAccess();
  return v3;
}

uint64_t sub_10000E940(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  sub_10000E990(a1, a2);
  return v7;
}

uint64_t sub_10000E990(uint64_t a1, uint64_t a2)
{
  v5 = sub_100007CCC(&qword_1000868B0, &qword_100060C60);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v16 - v7;
  swift_defaultActor_initialize();
  v9 = OBJC_IVAR____TtC21systemservicemonitord21RequestMachConnection_xpcEndpoint;
  v10 = type metadata accessor for XPCEndpoint();
  v11 = *(v10 - 8);
  v12 = *(v11 + 56);
  v12(v2 + v9, 1, 1, v10);
  v13 = (v2 + OBJC_IVAR____TtC21systemservicemonitord21RequestMachConnection_machServiceName);
  *v13 = 0;
  v13[1] = 0;
  *(v2 + OBJC_IVAR____TtC21systemservicemonitord21RequestMachConnection_xpcSession) = 0;
  v14 = v2 + OBJC_IVAR____TtC21systemservicemonitord21RequestMachConnection__eventAdapter;
  *v14 = 0u;
  *(v14 + 16) = 0u;
  *(v14 + 32) = 0;
  (*(v11 + 32))(v8, a1, v10);
  v12(v8, 0, 1, v10);
  swift_beginAccess();
  sub_10000EB70(v8, v2 + v9, &qword_1000868B0, &qword_100060C60);
  swift_endAccess();
  swift_beginAccess();
  sub_10000EB70(a2, v14, &unk_100086510, &unk_100060540);
  swift_endAccess();
  return v2;
}

uint64_t sub_10000EB70(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100007CCC(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_10000EBD8()
{
  v1[21] = v0;
  v2 = *(*(type metadata accessor for XPCSession.InitializationOptions() - 8) + 64) + 15;
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v3 = type metadata accessor for XPCEndpoint();
  v1[24] = v3;
  v4 = *(v3 - 8);
  v1[25] = v4;
  v5 = *(v4 + 64) + 15;
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v6 = *(*(sub_100007CCC(&qword_1000868B0, &qword_100060C60) - 8) + 64) + 15;
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();

  return _swift_task_switch(sub_10000ED20, v0, 0);
}

uint64_t sub_10000ED20()
{
  v1 = *(v0 + 168);
  v2 = OBJC_IVAR____TtC21systemservicemonitord21RequestMachConnection_xpcSession;
  if (*(v1 + OBJC_IVAR____TtC21systemservicemonitord21RequestMachConnection_xpcSession))
  {
    v3 = 0xD00000000000002CLL;
    v4 = 0x800000010006A580;
    *(v0 + 136) = 0xD00000000000002CLL;
    *(v0 + 144) = 0x800000010006A580;
    *(v0 + 152) = 0;
    sub_100007B4C();
    swift_willThrowTypedImpl();
    v26 = 0;
LABEL_12:
    v28 = *(v0 + 224);
    v27 = *(v0 + 232);
    v30 = *(v0 + 208);
    v29 = *(v0 + 216);
    v32 = *(v0 + 176);
    v31 = *(v0 + 184);

    v33 = *(v0 + 8);

    return v33(v3, v4, v26);
  }

  v5 = *(v0 + 232);
  v6 = *(v0 + 192);
  v7 = *(v0 + 200);
  v8 = OBJC_IVAR____TtC21systemservicemonitord21RequestMachConnection_xpcEndpoint;
  swift_beginAccess();
  sub_100015930(v1 + v8, v5, &qword_1000868B0, &qword_100060C60);
  v9 = *(v7 + 48);
  LODWORD(v6) = v9(v5, 1, v6);
  sub_10000812C(v5, &qword_1000868B0, &qword_100060C60);
  if (v6 == 1 && !*(*(v0 + 168) + OBJC_IVAR____TtC21systemservicemonitord21RequestMachConnection_machServiceName + 8))
  {
    v4 = 0x800000010006A510;
    v3 = 0xD00000000000003ELL;
    *(v0 + 64) = 0xD00000000000003ELL;
    *(v0 + 72) = 0x800000010006A510;
    v26 = 2;
    *(v0 + 80) = 2;
    sub_100007B4C();
    swift_willThrowTypedImpl();
    goto LABEL_12;
  }

  v10 = *(v0 + 224);
  v11 = *(v0 + 192);
  sub_100015930(v1 + v8, v10, &qword_1000868B0, &qword_100060C60);
  v12 = v9(v10, 1, v11);
  v13 = *(v0 + 224);
  if (v12 != 1)
  {
    v18 = *(v0 + 208);
    v19 = *(v0 + 216);
    v20 = *(v0 + 192);
    v21 = *(v0 + 200);
    v22 = *(v0 + 184);
    v23 = *(v0 + 168);
    (*(v21 + 32))(v19, *(v0 + 224), v20);
    type metadata accessor for XPCSession();
    (*(v21 + 16))(v18, v19, v20);
    static XPCSession.InitializationOptions.inactive.getter();

    v17 = XPCSession.__allocating_init(endpoint:targetQueue:options:incomingMessageHandler:cancellationHandler:)();
    (*(*(v0 + 200) + 8))(*(v0 + 216), *(v0 + 192));
    goto LABEL_9;
  }

  v14 = *(v0 + 168);
  sub_10000812C(*(v0 + 224), &qword_1000868B0, &qword_100060C60);
  if (*(v14 + OBJC_IVAR____TtC21systemservicemonitord21RequestMachConnection_machServiceName + 8))
  {
    v15 = *(v0 + 176);
    v16 = *(v14 + OBJC_IVAR____TtC21systemservicemonitord21RequestMachConnection_machServiceName);
    type metadata accessor for XPCSession();

    static XPCSession.InitializationOptions.inactive.getter();
    v17 = XPCSession.__allocating_init(machService:targetQueue:options:incomingMessageHandler:cancellationHandler:)();
LABEL_9:
    v24 = *(v1 + v2);
    *(v1 + v2) = v17;
  }

  if (*(v1 + v2))
  {
    v25 = *(v1 + v2);

    dispatch thunk of XPCSession.activate()();
  }

  v35 = *(v0 + 168);
  Request.DatabaseReset.init()();
  v36 = *(*v35 + 272);
  v40 = (v36 + *v36);
  v37 = v36[1];
  v38 = swift_task_alloc();
  *(v0 + 240) = v38;
  sub_10000F6F8();
  *v38 = v0;
  v38[1] = sub_10000F32C;
  v39 = *(v0 + 168);

  return v40();
}

uint64_t sub_10000F32C()
{
  v2 = *v1;
  v3 = *(*v1 + 240);
  v7 = *v1;

  v4 = *(v2 + 168);
  if (v0)
  {
    *(v2 + 248) = *(v2 + 112);
    *(v2 + 81) = *(v2 + 128);
    v5 = sub_10000F450;
  }

  else
  {
    v5 = sub_10000F654;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_10000F450()
{
  v1 = *(v0 + 81);
  v3 = *(v0 + 248);
  v2 = *(v0 + 256);
  sub_100007B4C();
  swift_allocError();
  *v4 = v3;
  *(v4 + 8) = v2;
  *(v4 + 16) = v1;
  _StringGuts.grow(_:)(43);

  swift_getErrorValue();
  v5 = *(v0 + 40);
  v6 = *(*(v0 + 48) - 8);
  v7 = *(v6 + 64) + 15;
  swift_task_alloc();
  (*(v6 + 16))();
  v8 = String.init<A>(describing:)();
  v10 = v9;

  v11._countAndFlagsBits = v8;
  v11._object = v10;
  String.append(_:)(v11);

  *(v0 + 88) = 0xD000000000000029;
  *(v0 + 96) = 0x800000010006A550;
  *(v0 + 104) = 0;
  swift_willThrowTypedImpl();

  v13 = *(v0 + 224);
  v12 = *(v0 + 232);
  v15 = *(v0 + 208);
  v14 = *(v0 + 216);
  v17 = *(v0 + 176);
  v16 = *(v0 + 184);

  v18 = *(v0 + 8);

  return v18(0xD000000000000029, 0x800000010006A550, 0);
}

uint64_t sub_10000F654()
{
  v2 = v0[28];
  v1 = v0[29];
  v4 = v0[26];
  v3 = v0[27];
  v6 = v0[22];
  v5 = v0[23];

  v7 = v0[1];

  return v7();
}

unint64_t sub_10000F6F8()
{
  result = qword_100086528;
  if (!qword_100086528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086528);
  }

  return result;
}

double sub_10000F74C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v3 = type metadata accessor for Logger();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v5 = type metadata accessor for XPCReceivedMessage();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v8 = sub_100007CCC(&qword_100086800, &qword_100060690);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v20 - v10;
  sub_1000159E0();
  XPCReceivedMessage.decode<A>(as:)();
  v25 = v22;
  v26 = v23;
  v27 = v24;
  XPCReceivedMessage.detachHandoff()();
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  (*(v6 + 16))(&v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v5);
  v13 = sub_100015998(&qword_100086530, 255, type metadata accessor for RequestMachConnection);
  v14 = (*(v6 + 80) + 80) & ~*(v6 + 80);
  v15 = swift_allocObject();
  v16 = v20;
  *(v15 + 16) = v20;
  *(v15 + 24) = v13;
  v17 = v26;
  *(v15 + 32) = v25;
  *(v15 + 48) = v17;
  *(v15 + 64) = v27;
  *(v15 + 72) = v16;
  (*(v6 + 32))(v15 + v14, &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  swift_retain_n();
  sub_100008F94(0, 0, v11, &unk_100060C48, v15);

  v18 = v21;
  *(v21 + 32) = 0;
  result = 0.0;
  *v18 = 0u;
  v18[1] = 0u;
  return result;
}

double sub_10000FB80@<D0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100008344();
  (*(v3 + 16))(v6, v7, v2);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "[🔴] Unexpected message received on the notification channel for mach XPC request connection", v10, 2u);
  }

  (*(v3 + 8))(v6, v2);
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_10000FD0C()
{
  v1 = *(v0 + 40);
  v2 = OBJC_IVAR____TtC21systemservicemonitord21RequestMachConnection_xpcSession;
  if (*(v1 + OBJC_IVAR____TtC21systemservicemonitord21RequestMachConnection_xpcSession))
  {
    v3 = *(v1 + OBJC_IVAR____TtC21systemservicemonitord21RequestMachConnection_xpcSession);

    dispatch thunk of XPCSession.cancel(reason:)();

    v4 = *(v1 + v2);
    *(v1 + v2) = 0;

    v5 = *(v0 + 8);

    return v5();
  }

  else
  {
    *(v0 + 16) = 0xD000000000000033;
    *(v0 + 24) = 0x800000010006A5B0;
    *(v0 + 32) = 0;
    sub_100007B4C();
    swift_willThrowTypedImpl();
    v7 = *(v0 + 8);

    return v7(0xD000000000000033, 0x800000010006A5B0, 0);
  }
}

uint64_t sub_10000FE48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[26] = v5;
  v6[27] = a5;
  v6[24] = a3;
  v6[25] = a4;
  v6[22] = a1;
  v6[23] = a2;
  v7 = type metadata accessor for XPCReceivedMessage();
  v6[28] = v7;
  v8 = *(v7 - 8);
  v6[29] = v8;
  v9 = *(v8 + 64) + 15;
  v6[30] = swift_task_alloc();

  return _swift_task_switch(sub_10000FF10, v5, 0);
}

uint64_t sub_10000FF10()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 184);
  v3 = sub_100015998(&qword_100086530, 255, type metadata accessor for RequestMachConnection);
  v4 = swift_task_alloc();
  *(v0 + 248) = v4;
  *(v4 + 16) = *(v0 + 192);
  *(v4 + 32) = v1;
  *(v4 + 40) = v2;
  v5 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v6 = swift_task_alloc();
  *(v0 + 256) = v6;
  *v6 = v0;
  v6[1] = sub_100010048;
  v7 = *(v0 + 240);
  v8 = *(v0 + 224);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v7, v1, v3, 0x293A5F28646E6573, 0xE800000000000000, sub_1000109C8, v4, v8);
}

uint64_t sub_100010048()
{
  v2 = *v1;
  v3 = *(*v1 + 256);
  v9 = *v1;
  *(*v1 + 264) = v0;

  if (v0)
  {
    v4 = *(v2 + 208);
    v5 = sub_1000104E4;
  }

  else
  {
    v6 = *(v2 + 248);
    v7 = *(v2 + 208);

    v5 = sub_100010170;
    v4 = v7;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100010170()
{
  v1 = *(v0 + 264);
  v2 = *(v0 + 240);
  sub_1000109D4();
  XPCReceivedMessage.decode<A>(as:)();
  if (v1)
  {
    v3 = *(v0 + 240);
    v5 = *(v0 + 192);
    v4 = *(v0 + 200);
    v6 = *(v0 + 176);

    swift_getAssociatedTypeWitness();
    v7 = *(*(swift_getAssociatedConformanceWitness() + 8) + 8);
    XPCReceivedMessage.decode<A>(as:)();
    (*(*(v0 + 232) + 8))(*(v0 + 240), *(v0 + 224));

    v8 = *(v0 + 8);
  }

  else
  {
    v10 = *(v0 + 232);
    v9 = *(v0 + 240);
    v11 = *(v0 + 224);
    v13 = *(v0 + 112);
    v12 = *(v0 + 120);
    _StringGuts.grow(_:)(39);
    *(v0 + 128) = 0;
    *(v0 + 136) = 0xE000000000000000;
    v14._object = 0x800000010006A5F0;
    v14._countAndFlagsBits = 0xD000000000000025;
    String.append(_:)(v14);
    *(v0 + 144) = v13;
    *(v0 + 152) = v12;
    _print_unlocked<A, B>(_:_:)();

    v15 = *(v0 + 128);
    v16 = *(v0 + 136);
    sub_100007B4C();
    v17 = swift_allocError();
    *v18 = v15;
    *(v18 + 8) = v16;
    *(v18 + 16) = 0;
    swift_willThrow();
    (*(v10 + 8))(v9, v11);
    *(v0 + 160) = v17;
    swift_errorRetain();
    sub_100007CCC(&qword_100086538, &qword_1000666F0);
    if (swift_dynamicCast())
    {

      v19 = *(v0 + 40);
      v20 = *(v0 + 48);
      v21 = *(v0 + 56);
      *(v0 + 88) = v19;
      *(v0 + 96) = v20;
      *(v0 + 104) = v21;
      sub_100007B4C();
      swift_willThrowTypedImpl();
      v22 = *(v0 + 160);
    }

    else
    {
      v23 = *(v0 + 160);

      swift_getErrorValue();
      v24 = *(v0 + 16);
      v25 = *(*(v0 + 24) - 8);
      v26 = *(v25 + 64) + 15;
      swift_task_alloc();
      (*(v25 + 16))();
      v19 = String.init<A>(describing:)();
      v20 = v27;

      *(v0 + 64) = v19;
      *(v0 + 72) = v20;
      *(v0 + 80) = 0;
      sub_100007B4C();
      swift_willThrowTypedImpl();

      v21 = 0;
    }

    v28 = *(v0 + 240);
    v29 = *(v0 + 216);

    *v29 = v19;
    *(v29 + 8) = v20;
    *(v29 + 16) = v21;
    v8 = *(v0 + 8);
  }

  return v8();
}

uint64_t sub_1000104E4()
{
  v1 = *(v0 + 248);

  *(v0 + 160) = *(v0 + 264);
  swift_errorRetain();
  sub_100007CCC(&qword_100086538, &qword_1000666F0);
  if (swift_dynamicCast())
  {

    v2 = *(v0 + 40);
    *(v0 + 88) = v2;
    v3 = *(v0 + 48);
    v4 = *(v0 + 56);
    *(v0 + 96) = v3;
    *(v0 + 104) = v4;
    sub_100007B4C();
    swift_willThrowTypedImpl();
    v5 = *(v0 + 160);
  }

  else
  {
    v6 = *(v0 + 160);

    swift_getErrorValue();
    v7 = *(v0 + 16);
    v8 = *(*(v0 + 24) - 8);
    v9 = *(v8 + 64) + 15;
    swift_task_alloc();
    (*(v8 + 16))();
    v2 = String.init<A>(describing:)();
    v3 = v10;

    *(v0 + 64) = v2;
    *(v0 + 72) = v3;
    *(v0 + 80) = 0;
    sub_100007B4C();
    swift_willThrowTypedImpl();

    v4 = 0;
  }

  v11 = *(v0 + 240);
  v12 = *(v0 + 216);

  *v12 = v2;
  *(v12 + 8) = v3;
  *(v12 + 16) = v4;
  v13 = *(v0 + 8);

  return v13();
}

uint64_t type metadata accessor for RequestMachConnection()
{
  result = qword_100088620;
  if (!qword_100088620)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100010720(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100007CCC(&qword_100086828, &qword_100060C30);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v24 - v12;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (*(a2 + OBJC_IVAR____TtC21systemservicemonitord21RequestMachConnection_xpcSession))
  {
    v23 = v13;
    v14 = v9;
    v15 = *(a5 + 32);

    v15(v24, a4, a5);
    v16 = v14;
    sub_100007AB4(v24, v24[3]);
    v17 = v23;
    (*(v10 + 16))(v23, a1, v16);
    v18 = (*(v10 + 80) + 16) & ~*(v10 + 80);
    v19 = swift_allocObject();
    (*(v10 + 32))(v19 + v18, v17, v16);
    dispatch thunk of XPCSession.send<A>(_:replyHandler:)();

    return sub_100007F1C(v24);
  }

  else
  {
    sub_100007B4C();
    v20 = swift_allocError();
    *v21 = 0xD00000000000003FLL;
    *(v21 + 8) = 0x800000010006A8F0;
    *(v21 + 16) = 0;
    v24[0] = v20;
    return CheckedContinuation.resume(throwing:)();
  }
}

unint64_t sub_1000109D4()
{
  result = qword_100086540;
  if (!qword_100086540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086540);
  }

  return result;
}

uint64_t sub_100010A28(uint64_t a1, uint64_t a2)
{
  v23 = a1;
  v24 = a2;
  v2 = type metadata accessor for XPCRichError();
  v22 = *(v2 - 8);
  v3 = *(v22 + 64);
  __chkstk_darwin(v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for XPCReceivedMessage();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v22 - v12;
  v14 = sub_100007CCC(&qword_100086830, &qword_100060C38);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14);
  v17 = &v22 - v16;
  sub_100015930(v23, &v22 - v16, &qword_100086830, &qword_100060C38);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = v22;
    (*(v22 + 32))(v5, v17, v2);
    sub_100015998(&qword_100086838, 255, &type metadata accessor for XPCRichError);
    v19 = swift_allocError();
    (*(v18 + 16))(v20, v5, v2);
    v25 = v19;
    sub_100007CCC(&qword_100086828, &qword_100060C30);
    CheckedContinuation.resume(throwing:)();
    return (*(v18 + 8))(v5, v2);
  }

  else
  {
    (*(v7 + 32))(v13, v17, v6);
    (*(v7 + 16))(v11, v13, v6);
    sub_100007CCC(&qword_100086828, &qword_100060C30);
    CheckedContinuation.resume(returning:)();
    return (*(v7 + 8))(v13, v6);
  }
}

uint64_t sub_100010D58()
{
  sub_10000812C(v0 + OBJC_IVAR____TtC21systemservicemonitord21RequestMachConnection_xpcEndpoint, &qword_1000868B0, &qword_100060C60);
  v1 = *(v0 + OBJC_IVAR____TtC21systemservicemonitord21RequestMachConnection_machServiceName + 8);

  v2 = *(v0 + OBJC_IVAR____TtC21systemservicemonitord21RequestMachConnection_xpcSession);

  sub_10000812C(v0 + OBJC_IVAR____TtC21systemservicemonitord21RequestMachConnection__eventAdapter, &unk_100086510, &unk_100060540);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_100010DDC()
{
  sub_10000812C(v0 + OBJC_IVAR____TtC21systemservicemonitord21RequestMachConnection_xpcEndpoint, &qword_1000868B0, &qword_100060C60);
  v1 = *(v0 + OBJC_IVAR____TtC21systemservicemonitord21RequestMachConnection_machServiceName + 8);

  v2 = *(v0 + OBJC_IVAR____TtC21systemservicemonitord21RequestMachConnection_xpcSession);

  sub_10000812C(v0 + OBJC_IVAR____TtC21systemservicemonitord21RequestMachConnection__eventAdapter, &unk_100086510, &unk_100060540);
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_100010E70()
{
  v2 = *v0;
  *(v1 + 16) = *v0;
  return _swift_task_switch(sub_100010E90, v2, 0);
}

uint64_t sub_100010E90()
{
  v1 = (*(**(v0 + 16) + 192))();
  v2 = *(v0 + 8);
  v3 = v1 & 1;

  return v2(v3);
}

uint64_t sub_100010F14()
{
  v2 = *v0;
  *(v1 + 16) = *v0;
  return _swift_task_switch(sub_100010F34, v2, 0);
}

uint64_t sub_100010F34()
{
  v1 = (*(**(v0 + 16) + 200))();
  v2 = *(v0 + 8);
  v3 = v1 & 1;

  return v2(v3);
}

uint64_t sub_100010FB8(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return _swift_task_switch(sub_100010FD8, v3, 0);
}

uint64_t sub_100010FD8()
{
  v1 = *(v0 + 16);
  (*(**(v0 + 24) + 232))();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100011058()
{
  v2 = *(**v0 + 256);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10000E528;

  return v6();
}

uint64_t sub_100011174()
{
  v2 = *(**v0 + 264);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10000C1C4;

  return v6();
}

uint64_t sub_100011290(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 40) = a5;
  v11 = *(**v5 + 272);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v6 + 48) = v13;
  *v13 = v6;
  v13[1] = sub_1000113E8;

  return v15(a1, a2, a3, a4, v6 + 16);
}

uint64_t sub_1000113E8()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v4 = *v1;

  if (v0)
  {
    v5 = *(v2 + 40);
    v6 = *(v2 + 32);
    *v5 = *(v2 + 16);
    *(v5 + 16) = v6;
  }

  v7 = *(v4 + 8);

  return v7();
}

uint64_t sub_100011504(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[13] = a5;
  v6[14] = a6;
  v6[12] = a4;
  return _swift_task_switch(sub_100011528, a5, 0);
}

uint64_t sub_100011528()
{
  v1 = v0[12];
  v2 = v0[13];
  v3 = *(v1 + 2);
  if (v1[32])
  {
    v4 = (v0 + 7);
    v5 = *(v1 + 3);
    (*(*v2 + 232))();
    v6 = v0[10];
    if (v6)
    {
      v7 = v0[11];
      sub_100007AB4(v0 + 7, v0[10]);
      v8 = *(v7 + 32);
      v26 = (v8 + *v8);
      v9 = v8[1];
      v10 = swift_task_alloc();
      v0[15] = v10;
      *v10 = v0;
      v10[1] = sub_100011834;
      v11 = 5;
      v12 = v3;
      v13 = v5;
      v14 = v6;
      v15 = v7;
LABEL_6:

      return v26(v11, v12, v13, v14, v15);
    }
  }

  else
  {
    v4 = (v0 + 2);
    v16 = *v1;
    v17 = *(v1 + 1);
    (*(*v2 + 232))();
    v18 = v0[5];
    if (v18)
    {
      v19 = v0[6];
      sub_100007AB4(v0 + 2, v0[5]);
      v20 = *(v19 + 32);
      v26 = (v20 + *v20);
      v21 = v20[1];
      v22 = swift_task_alloc();
      v0[16] = v22;
      *v22 = v0;
      v22[1] = sub_1000119C0;
      v11 = v16;
      v12 = v17;
      v13 = v3;
      v14 = v18;
      v15 = v19;
      goto LABEL_6;
    }
  }

  sub_10000812C(v4, &unk_100086510, &unk_100060540);
  v24 = v0[14];
  Request.DatabaseReset.init()();
  sub_100015BEC();
  XPCReceivedMessage.reply<A>(_:)();
  v25 = v0[1];

  return v25();
}

uint64_t sub_100011834()
{
  v1 = *(*v0 + 120);
  v2 = *(*v0 + 104);
  v4 = *v0;

  return _swift_task_switch(sub_100011944, v2, 0);
}

uint64_t sub_100011944()
{
  sub_100007F1C(v0 + 7);
  v1 = v0[14];
  Request.DatabaseReset.init()();
  sub_100015BEC();
  XPCReceivedMessage.reply<A>(_:)();
  v2 = v0[1];

  return v2();
}

uint64_t sub_1000119C0()
{
  v1 = *(*v0 + 128);
  v2 = *(*v0 + 104);
  v4 = *v0;

  return _swift_task_switch(sub_100011AD0, v2, 0);
}

uint64_t sub_100011AD0()
{
  sub_100007F1C(v0 + 2);
  v1 = v0[14];
  Request.DatabaseReset.init()();
  sub_100015BEC();
  XPCReceivedMessage.reply<A>(_:)();
  v2 = v0[1];

  return v2();
}

uint64_t sub_100011B88(char a1)
{
  result = swift_beginAccess();
  *(v1 + 136) = a1;
  return result;
}

uint64_t sub_100011C9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v6 + 120) = a2;
  *(v6 + 128) = 0;
  *(v6 + 136) = 0;
  *(v6 + 112) = a1;
  v7 = *(a3 + 16);
  *(v6 + 144) = *a3;
  *(v6 + 160) = v7;
  *(v6 + 176) = *(a3 + 32);
  return v6;
}

uint64_t sub_100011D04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_defaultActor_initialize();
  *(v3 + 120) = a2;
  *(v3 + 128) = 0;
  *(v3 + 136) = 0;
  *(v3 + 112) = a1;
  v7 = *(a3 + 16);
  *(v3 + 144) = *a3;
  *(v3 + 160) = v7;
  *(v3 + 176) = *(a3 + 32);
  return v3;
}

uint64_t sub_100011D5C(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v4 + 136) = 0;
  *(v4 + 112) = 0;
  *(v4 + 120) = 0xE000000000000000;
  v5 = *(a2 + 16);
  *(v4 + 144) = *a2;
  *(v4 + 160) = v5;
  *(v4 + 176) = *(a2 + 32);
  *(v4 + 128) = a1;
  return v4;
}

uint64_t sub_100011DC4(uint64_t a1, uint64_t a2)
{
  swift_defaultActor_initialize();
  *(v2 + 136) = 0;
  *(v2 + 112) = 0;
  *(v2 + 120) = 0xE000000000000000;
  v5 = *(a2 + 16);
  *(v2 + 144) = *a2;
  *(v2 + 160) = v5;
  *(v2 + 176) = *(a2 + 32);
  *(v2 + 128) = a1;
  return v2;
}

void sub_100011E3C()
{
  if ((*(**(v0 + 160) + 176))())
  {
    v1 = 0xD000000000000030;
    v2 = 0x800000010006A6A0;
    *(v0 + 136) = 0xD000000000000030;
    *(v0 + 144) = 0x800000010006A6A0;
    *(v0 + 152) = 0;
    sub_100007B4C();
LABEL_3:
    swift_willThrowTypedImpl();
LABEL_4:
    v3 = *(v0 + 8);

    v3(v1, v2, 0);
    return;
  }

  v4 = *(v0 + 160);
  v5 = v4[16];
  v6 = v4;
  if (!v5)
  {
    v15 = v4[14];
    v16 = v4[15];
    String.utf8CString.getter();
    v17 = remote_device_copy_device_with_name();

    if (!v17)
    {
      _StringGuts.grow(_:)(36);

      v24._countAndFlagsBits = v15;
      v24._object = v16;
      String.append(_:)(v24);
      v25._countAndFlagsBits = 0x276E73656F642029;
      v25._object = 0xEF74736978652074;
      String.append(_:)(v25);
      v1 = 0xD000000000000013;
      v2 = 0x800000010006A620;
      *(v0 + 64) = 0xD000000000000013;
      *(v0 + 72) = 0x800000010006A620;
      *(v0 + 80) = 0;
      sub_100007B4C();
      goto LABEL_3;
    }

    v18 = sub_100041BE4();
    v20 = *v18;
    v19 = v18[1];
    String.utf8CString.getter();
    v21 = remote_device_copy_service();

    if (!v21)
    {
      _StringGuts.grow(_:)(54);
      v26._countAndFlagsBits = 0xD000000000000033;
      v26._object = 0x800000010006A640;
      String.append(_:)(v26);
      v27._countAndFlagsBits = v15;
      v27._object = v16;
      String.append(_:)(v27);
      v28._countAndFlagsBits = 41;
      v28._object = 0xE100000000000000;
      String.append(_:)(v28);
      v1 = 0;
      v2 = 0xE000000000000000;
      *(v0 + 88) = 0;
      *(v0 + 96) = 0xE000000000000000;
      *(v0 + 104) = 0;
      sub_100007B4C();
      swift_willThrowTypedImpl();

      goto LABEL_4;
    }

    v22 = xpc_remote_connection_create_with_remote_service();

    v23 = v4[16];
    v4[16] = v22;

    v5 = v4[16];
    if (!v5)
    {
LABEL_19:
      __break(1u);
      return;
    }

    v6 = *(v0 + 160);
  }

  *(v0 + 48) = sub_100012724;
  *(v0 + 56) = v6;
  *(v0 + 16) = _NSConcreteStackBlock;
  *(v0 + 24) = 1107296256;
  *(v0 + 32) = sub_100012A4C;
  *(v0 + 40) = &unk_10007D340;
  v7 = _Block_copy((v0 + 16));
  v8 = *(v0 + 56);
  swift_retain_n();
  v9 = v5;

  xpc_remote_connection_set_event_handler();
  _Block_release(v7);

  if (!v4[16])
  {
    __break(1u);
    goto LABEL_19;
  }

  v10 = *(v0 + 160);
  xpc_remote_connection_activate();
  Request.DatabaseReset.init()();
  v11 = *(*v10 + 224);
  v29 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v0 + 168) = v13;
  sub_10000F6F8();
  *v13 = v0;
  v13[1] = sub_1000122B0;
  v14 = *(v0 + 160);

  v29();
}

uint64_t sub_1000122B0()
{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v7 = *v1;

  v4 = *(v2 + 160);
  if (v0)
  {
    *(v2 + 176) = *(v2 + 112);
    *(v2 + 81) = *(v2 + 128);
    v5 = sub_1000123D4;
  }

  else
  {
    v5 = sub_100012440;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_1000123D4()
{
  v1 = *(v0 + 160);

  v2 = *(v0 + 176);
  v3 = *(v0 + 184);
  v4 = *(v0 + 8);
  v5 = *(v0 + 81);

  return v4(v2, v3, v5);
}

uint64_t sub_100012440()
{
  (*(**(v0 + 160) + 160))(1);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000124D0(void *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v22 - v8;
  type = xpc_get_type(a1);
  if (type == XPC_TYPE_DICTIONARY.getter())
  {
    return sub_10001272C(a1);
  }

  v11 = xpc_get_type(a1);
  v12 = XPC_TYPE_ERROR.getter();
  v13 = sub_100008344();
  v14 = *(v3 + 16);
  if (v11 == v12)
  {
    v14(v9, v13, v2);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "[🔴] 🔔 Notification: received error remote event from the daemon.", v21, 2u);
    }

    return (*(v3 + 8))(v9, v2);
  }

  else
  {
    v14(v7, v13, v2);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "[🔴] 🔔 Notification: unexpected XPC.", v17, 2u);
    }

    return (*(v3 + 8))(v7, v2);
  }
}

uint64_t sub_10001272C(void *a1)
{
  v3 = type metadata accessor for Logger();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v5 = sub_100007CCC(&qword_100086800, &qword_100060690);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v14[-v7];
  v9 = sub_1000155FC();
  static XPCConvertible.from(xpc:)(a1, &type metadata for Notification, v9);
  v17 = *&v14[8];
  v18 = v15;
  v19 = v16;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  v12 = v18;
  *(v11 + 32) = v17;
  *(v11 + 48) = v12;
  *(v11 + 64) = v19;
  *(v11 + 72) = v1;
  *(v11 + 80) = a1;

  swift_unknownObjectRetain();
  sub_100008F94(0, 0, v8, &unk_100060C08, v11);
}

uint64_t sub_100012A4C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t sub_100012AAC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100012AE4()
{
  if (((*(**(v0 + 40) + 152))() & 1) != 0 && (v1 = *(v0 + 40), (v2 = v1[16]) != 0))
  {
    v3 = v2;
    xpc_remote_connection_cancel();
    v4 = v1[16];
    v1[16] = 0;

    (*(*v1 + 160))(0);
    v5 = *(v0 + 8);

    return v5();
  }

  else
  {
    *(v0 + 16) = 0xD00000000000003ALL;
    *(v0 + 24) = 0x800000010006A6E0;
    *(v0 + 32) = 0;
    sub_100007B4C();
    swift_willThrowTypedImpl();
    v7 = *(v0 + 8);

    return v7(0xD00000000000003ALL, 0x800000010006A6E0, 0);
  }
}

uint64_t sub_100012C40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[43] = v5;
  v6[44] = a5;
  v6[41] = a3;
  v6[42] = a4;
  v6[39] = a1;
  v6[40] = a2;
  return _swift_task_switch(sub_100012C68, v5, 0);
}

uint64_t sub_100012C68()
{
  v1 = *(*(v0 + 344) + 128);
  *(v0 + 360) = v1;
  if (v1)
  {
    v3 = *(v0 + 328);
    v2 = *(v0 + 336);
    v4 = *(v0 + 320);
    v5 = *(v2 + 32);
    v6 = v1;
    v5(v3, v2);
    sub_100007CCC(&unk_1000878C0, &qword_100067000);
    if (swift_dynamicCast())
    {
      v8 = *(v0 + 344);
      v9 = *(v0 + 64);
      v10 = *(v0 + 72);
      *(v0 + 368) = v9;
      *(v0 + 376) = v10;
      v11 = *(v0 + 80);
      *(v0 + 384) = v11;
      v12 = *(v0 + 88);
      *(v0 + 89) = v12;
      v13 = sub_100015998(&qword_100086550, v7, type metadata accessor for RequestRemoteXPCConnection);
      v14 = swift_task_alloc();
      *(v0 + 392) = v14;
      *(v14 + 16) = v9;
      *(v14 + 24) = v10;
      *(v14 + 32) = v11;
      *(v14 + 40) = v12;
      *(v14 + 48) = v6;
      v15 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
      v16 = swift_task_alloc();
      *(v0 + 400) = v16;
      v17 = sub_100007CCC(&qword_100086558, qword_100060968);
      *v16 = v0;
      v16[1] = sub_100012F18;

      return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 288, v8, v13, 0x293A5F28646E6573, 0xE800000000000000, sub_100013800, v14, v17);
    }

    v19 = 0x800000010006A750;
    v18 = 0xD00000000000002CLL;
    *(v0 + 144) = 0xD00000000000002CLL;
    *(v0 + 152) = 0x800000010006A750;
    *(v0 + 160) = 0;
    sub_100007B4C();
    swift_willThrowTypedImpl();
  }

  else
  {
    v18 = 0xD00000000000002ALL;
    v19 = 0x800000010006A720;
    *(v0 + 120) = 0xD00000000000002ALL;
    *(v0 + 128) = 0x800000010006A720;
    *(v0 + 136) = 0;
    sub_100007B4C();
    swift_willThrowTypedImpl();
  }

  v20 = *(v0 + 352);
  *v20 = v18;
  *(v20 + 8) = v19;
  *(v20 + 16) = 0;
  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_100012F18()
{
  v2 = *v1;
  v3 = *(*v1 + 400);
  v9 = *v1;
  *(*v1 + 408) = v0;

  if (v0)
  {
    v4 = *(v2 + 344);
    v5 = sub_100013374;
  }

  else
  {
    v6 = *(v2 + 392);
    v7 = *(v2 + 344);
    sub_100013814(*(v2 + 368), *(v2 + 376), *(v2 + 384), *(v2 + 89));

    v5 = sub_100013058;
    v4 = v7;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100013058()
{
  v1 = *(v0 + 408);
  v2 = *(v0 + 288);
  v3 = sub_10001382C();
  static XPCConvertible.from(xpc:)(v2, &type metadata for RequestResponse.ErrorResponse, v3);
  if (v1)
  {
    v5 = *(v0 + 328);
    v4 = *(v0 + 336);
    v6 = *(v0 + 312);

    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    (*(*(AssociatedConformanceWitness + 8) + 40))(v2, AssociatedTypeWitness);
    v9 = *(v0 + 360);
    swift_unknownObjectRelease();

    v10 = *(v0 + 8);
  }

  else
  {
    v12 = *(v0 + 240);
    v11 = *(v0 + 248);
    _StringGuts.grow(_:)(39);
    *(v0 + 256) = 0;
    *(v0 + 264) = 0xE000000000000000;
    v13._countAndFlagsBits = 0xD000000000000025;
    v13._object = 0x800000010006A5F0;
    String.append(_:)(v13);
    *(v0 + 272) = v12;
    *(v0 + 280) = v11;
    _print_unlocked<A, B>(_:_:)();

    v14 = *(v0 + 256);
    v15 = *(v0 + 264);
    sub_100007B4C();
    v16 = swift_allocError();
    *v17 = v14;
    *(v17 + 8) = v15;
    *(v17 + 16) = 0;
    swift_willThrow();
    swift_unknownObjectRelease();
    *(v0 + 296) = v16;
    swift_errorRetain();
    sub_100007CCC(&qword_100086538, &qword_1000666F0);
    v18 = swift_dynamicCast();
    v19 = *(v0 + 360);
    if (v18)
    {

      v20 = *(v0 + 168);
      v21 = *(v0 + 176);
      v22 = *(v0 + 184);
      *(v0 + 216) = v20;
      *(v0 + 224) = v21;
      *(v0 + 232) = v22;
      sub_100007B4C();
      swift_willThrowTypedImpl();

      v23 = *(v0 + 296);
    }

    else
    {
      v24 = *(v0 + 296);

      _StringGuts.grow(_:)(32);
      v25._object = 0x800000010006A780;
      v25._countAndFlagsBits = 0xD00000000000001ELL;
      String.append(_:)(v25);
      swift_getErrorValue();
      v26 = *(v0 + 96);
      v27 = *(v0 + 104);
      DefaultStringInterpolation.appendInterpolation<A>(_:)();
      v20 = 0;
      v21 = 0xE000000000000000;
      *(v0 + 192) = 0;
      *(v0 + 200) = 0xE000000000000000;
      *(v0 + 208) = 0;
      sub_100007B4C();
      swift_willThrowTypedImpl();

      v22 = 0;
    }

    v28 = *(v0 + 352);
    *v28 = v20;
    *(v28 + 8) = v21;
    *(v28 + 16) = v22;
    v10 = *(v0 + 8);
  }

  return v10();
}

uint64_t sub_100013374()
{
  v1 = *(v0 + 392);
  sub_100013814(*(v0 + 368), *(v0 + 376), *(v0 + 384), *(v0 + 89));

  *(v0 + 296) = *(v0 + 408);
  swift_errorRetain();
  sub_100007CCC(&qword_100086538, &qword_1000666F0);
  if (swift_dynamicCast())
  {
    v2 = *(v0 + 360);

    v3 = *(v0 + 168);
    *(v0 + 216) = v3;
    v4 = *(v0 + 176);
    v5 = *(v0 + 184);
    *(v0 + 224) = v4;
    *(v0 + 232) = v5;
    sub_100007B4C();
    swift_willThrowTypedImpl();

    v6 = *(v0 + 296);
  }

  else
  {
    v7 = *(v0 + 360);
    v8 = *(v0 + 296);

    _StringGuts.grow(_:)(32);
    v9._object = 0x800000010006A780;
    v9._countAndFlagsBits = 0xD00000000000001ELL;
    String.append(_:)(v9);
    swift_getErrorValue();
    v10 = *(v0 + 96);
    v11 = *(v0 + 104);
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    v3 = 0;
    v4 = 0xE000000000000000;
    *(v0 + 192) = 0;
    *(v0 + 200) = 0xE000000000000000;
    *(v0 + 208) = 0;
    sub_100007B4C();
    swift_willThrowTypedImpl();

    v5 = 0;
  }

  v12 = *(v0 + 352);
  *v12 = v3;
  *(v12 + 8) = v4;
  *(v12 + 16) = v5;
  v13 = *(v0 + 8);

  return v13();
}

void sub_100013558(uint64_t a1, void **a2, uint64_t a3, uint64_t (*a4)(uint64_t a1), char a5)
{
  v10 = sub_100007CCC(&unk_1000867F0, &qword_100060BF8);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v19 - v13;
  aBlock = a2;
  v21 = a3;
  v22 = a4;
  LOBYTE(v23) = a5;
  v15 = sub_1000154E8();
  XPCConvertible.asXPC(replyTo:)(0, &type metadata for Request, v15);
  (*(v11 + 16))(v14, a1, v10);
  v16 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v17 = swift_allocObject();
  (*(v11 + 32))(v17 + v16, v14, v10);
  v24 = sub_100015550;
  v25 = v17;
  aBlock = _NSConcreteStackBlock;
  v21 = 1107296256;
  v22 = sub_100012A4C;
  v23 = &unk_10007D4C0;
  v18 = _Block_copy(&aBlock);
  swift_unknownObjectRetain();

  xpc_remote_connection_send_message_with_reply();
  swift_unknownObjectRelease_n();
  _Block_release(v18);
}

uint64_t sub_100013814(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 <= 2u)
  {
  }

  return result;
}

unint64_t sub_10001382C()
{
  result = qword_100086560;
  if (!qword_100086560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086560);
  }

  return result;
}

uint64_t sub_100013880()
{
  v1 = *(v0 + 120);

  sub_10000812C(v0 + 144, &unk_100086510, &unk_100060540);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1000138C8()
{
  v1 = *(v0 + 120);

  sub_10000812C(v0 + 144, &unk_100086510, &unk_100060540);
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_100013920()
{
  v2 = *v0;
  *(v1 + 16) = *v0;
  return _swift_task_switch(sub_100013940, v2, 0);
}

uint64_t sub_100013940()
{
  v1 = (*(**(v0 + 16) + 144))();
  v2 = *(v0 + 8);
  v3 = v1 & 1;

  return v2(v3);
}

uint64_t sub_1000139C4()
{
  v2 = *v0;
  *(v1 + 16) = *v0;
  return _swift_task_switch(sub_1000139E4, v2, 0);
}

uint64_t sub_1000139E4()
{
  v1 = (*(**(v0 + 16) + 176))();
  v2 = *(v0 + 8);
  v3 = v1 & 1;

  return v2(v3);
}

uint64_t sub_100013A68(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return _swift_task_switch(sub_100013A88, v3, 0);
}

uint64_t sub_100013A88()
{
  v1 = *(v0 + 16);
  (*(**(v0 + 24) + 184))();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100013B08()
{
  v2 = *(**v0 + 208);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10000E528;

  return v6();
}

uint64_t sub_100013C1C()
{
  v2 = *(**v0 + 216);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10000E528;

  return v6();
}

uint64_t sub_100013D30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 40) = a5;
  v11 = *(**v5 + 224);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v6 + 48) = v13;
  *v13 = v6;
  v13[1] = sub_100015C50;

  return v15(a1, a2, a3, a4, v6 + 16);
}

uint64_t sub_100013E80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 160) = a5;
  *(v6 + 168) = a6;
  v9 = type metadata accessor for Logger();
  *(v6 + 176) = v9;
  v10 = *(v9 - 8);
  *(v6 + 184) = v10;
  v11 = *(v10 + 64) + 15;
  *(v6 + 192) = swift_task_alloc();
  *(v6 + 200) = swift_task_alloc();
  *(v6 + 280) = *a4;
  *(v6 + 208) = *(a4 + 8);
  *(v6 + 224) = *(a4 + 24);
  v12 = (*a5 + 184) & 0xFFFFFFFFFFFFLL | 0xC1D9000000000000;
  if (*(a4 + 32))
  {
    *(v6 + 256) = *(*a5 + 184);
    *(v6 + 264) = v12;
    v13 = sub_1000147B8;
  }

  else
  {
    *(v6 + 232) = *(*a5 + 184);
    *(v6 + 240) = v12;
    v13 = sub_100013FC4;
  }

  return _swift_task_switch(v13, a5, 0);
}

uint64_t sub_100013FC4()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 160);
  (*(v0 + 232))();

  return _swift_task_switch(sub_100014034, 0, 0);
}

uint64_t sub_100014034()
{
  v1 = *(v0 + 80);
  if (v1)
  {
    v2 = *(v0 + 88);
    sub_100007AB4((v0 + 56), *(v0 + 80));
    v3 = *(v2 + 32);
    v15 = (v3 + *v3);
    v4 = v3[1];
    v5 = swift_task_alloc();
    *(v0 + 248) = v5;
    *v5 = v0;
    v5[1] = sub_10001440C;
    v6 = *(v0 + 208);
    v7 = *(v0 + 216);
    v8 = *(v0 + 280);

    return v15(v8, v6, v7, v1, v2);
  }

  else
  {
    sub_10000812C(v0 + 56, &unk_100086510, &unk_100060540);
    v10 = *(v0 + 168);
    Request.DatabaseReset.init()();
    v11 = sub_1000157C8();
    XPCConvertible.asXPC(replyTo:)(v10, &type metadata for NotificationResponse.AcknowledgeResponse, v11);
    xpc_dictionary_send_reply();
    swift_unknownObjectRelease();
    v13 = *(v0 + 192);
    v12 = *(v0 + 200);

    v14 = *(v0 + 8);

    return v14();
  }
}

uint64_t sub_10001440C()
{
  v1 = *(*v0 + 248);
  v3 = *v0;

  return _swift_task_switch(sub_100014508, 0, 0);
}

uint64_t sub_100014508()
{
  sub_100007F1C(v0 + 7);
  v1 = v0[21];
  Request.DatabaseReset.init()();
  v2 = sub_1000157C8();
  XPCConvertible.asXPC(replyTo:)(v1, &type metadata for NotificationResponse.AcknowledgeResponse, v2);
  xpc_dictionary_send_reply();
  swift_unknownObjectRelease();
  v4 = v0[24];
  v3 = v0[25];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1000147B8()
{
  v1 = *(v0 + 264);
  v2 = *(v0 + 160);
  (*(v0 + 256))();

  return _swift_task_switch(sub_100014828, 0, 0);
}

uint64_t sub_100014828()
{
  v1 = v0[5];
  if (v1)
  {
    v3 = v0[27];
    v2 = v0[28];
    v4 = v0[6];
    sub_100007AB4(v0 + 2, v0[5]);
    v5 = *(v4 + 32);
    v14 = (v5 + *v5);
    v6 = v5[1];
    v7 = swift_task_alloc();
    v0[34] = v7;
    *v7 = v0;
    v7[1] = sub_100014C08;

    return v14(5, v3, v2, v1, v4);
  }

  else
  {
    sub_10000812C((v0 + 2), &unk_100086510, &unk_100060540);
    v9 = v0[21];
    Request.DatabaseReset.init()();
    v10 = sub_1000157C8();
    XPCConvertible.asXPC(replyTo:)(v9, &type metadata for NotificationResponse.AcknowledgeResponse, v10);
    xpc_dictionary_send_reply();
    swift_unknownObjectRelease();
    v12 = v0[24];
    v11 = v0[25];

    v13 = v0[1];

    return v13();
  }
}

uint64_t sub_100014C08()
{
  v1 = *(*v0 + 272);
  v3 = *v0;

  return _swift_task_switch(sub_100014D04, 0, 0);
}

uint64_t sub_100014D04()
{
  sub_100007F1C(v0 + 2);
  v1 = v0[21];
  Request.DatabaseReset.init()();
  v2 = sub_1000157C8();
  XPCConvertible.asXPC(replyTo:)(v1, &type metadata for NotificationResponse.AcknowledgeResponse, v2);
  xpc_dictionary_send_reply();
  swift_unknownObjectRelease();
  v4 = v0[24];
  v3 = v0[25];

  v5 = v0[1];

  return v5();
}

uint64_t sub_100015024()
{
  *(v0 + 16) = xmmword_100060910;
  *(v0 + 32) = 6;
  sub_100007B4C();
  swift_willThrowTypedImpl();
  v1 = *(v0 + 8);

  return v1(1, 0, 6);
}

uint64_t sub_1000150DC()
{
  v1 = *(v0 + 40);
  *(v0 + 16) = xmmword_100060910;
  *(v0 + 32) = 6;
  sub_100007B4C();
  swift_willThrowTypedImpl();
  *v1 = xmmword_100060910;
  *(v1 + 16) = 6;
  v2 = *(v0 + 8);

  return v2();
}

double sub_100015184@<D0>(uint64_t a1@<X8>)
{
  *a1 = 257;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0;
  return result;
}

uint64_t sub_1000151D0(uint64_t a1)
{
  sub_100015930(v1 + 8, a1, &unk_100086510, &unk_100060540);
  v3 = *(v2 + 8);

  return v3();
}

uint64_t sub_100015244(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 40) = a5;
  v6 = swift_task_alloc();
  *(v5 + 48) = v6;
  *v6 = v5;
  v6[1] = sub_100015C50;

  return sub_1000150BC(v6, v7, v8, v9, v5 + 16);
}

void sub_1000152E0()
{
  sub_100015398();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_100015398()
{
  if (!qword_100086590)
  {
    type metadata accessor for XPCEndpoint();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100086590);
    }
  }
}

uint64_t sub_1000153F0(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_100015408(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_10001541C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 32);
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

uint64_t sub_100015478(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2;
    }
  }

  return result;
}

unint64_t sub_1000154E8()
{
  result = qword_1000882F0;
  if (!qword_1000882F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000882F0);
  }

  return result;
}

uint64_t sub_100015550()
{
  v0 = *(sub_100007CCC(&unk_1000867F0, &qword_100060BF8) - 8);
  v1 = (*(v0 + 80) + 16) & ~*(v0 + 80);
  swift_unknownObjectRetain();
  sub_100007CCC(&unk_1000867F0, &qword_100060BF8);
  return CheckedContinuation.resume(returning:)();
}

unint64_t sub_1000155FC()
{
  result = qword_100086808;
  if (!qword_100086808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086808);
  }

  return result;
}

uint64_t sub_100015650()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  sub_1000156A8(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64));
  v2 = *(v0 + 72);

  v3 = *(v0 + 80);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_1000156A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {

    v5 = vars8;
  }
}

uint64_t sub_1000156EC()
{
  v2 = *(v0 + 72);
  v3 = *(v0 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1000082B0;

  return sub_100013E80(v4, v5, v6, v0 + 32, v2, v3);
}

uint64_t sub_100015790()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_1000157C8()
{
  result = qword_100086818;
  if (!qword_100086818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086818);
  }

  return result;
}

uint64_t sub_100015830(uint64_t *a1, uint64_t *a2)
{
  v3 = sub_100007CCC(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = *(v4 + 64);
  (*(v4 + 8))(v2 + v6, v3);

  return _swift_deallocObject(v2, v6 + v7, v5 | 7);
}

uint64_t sub_1000158B4(uint64_t a1)
{
  v3 = *(sub_100007CCC(&qword_100086828, &qword_100060C30) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_100010A28(a1, v4);
}

uint64_t sub_100015930(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100007CCC(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_100015998(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000159E0()
{
  result = qword_100086840;
  if (!qword_100086840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086840);
  }

  return result;
}

uint64_t sub_100015A34()
{
  v1 = type metadata accessor for XPCReceivedMessage();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 80) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  sub_1000156A8(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64));
  v7 = *(v0 + 72);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100015B10()
{
  v2 = *(type metadata accessor for XPCReceivedMessage() - 8);
  v3 = (*(v2 + 80) + 80) & ~*(v2 + 80);
  v4 = *(v0 + 72);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100007198;

  return sub_100011504(v5, v6, v7, v0 + 32, v4, v0 + v3);
}

unint64_t sub_100015BEC()
{
  result = qword_100086848;
  if (!qword_100086848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086848);
  }

  return result;
}

uint64_t sub_100015C58(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  swift_defaultActor_initialize();
  v8 = OBJC_IVAR____TtC21systemservicemonitord27ReportMachSessionConnection_endpoint;
  v9 = type metadata accessor for XPCEndpoint();
  (*(*(v9 - 8) + 56))(v7 + v8, 1, 1, v9);
  *(v7 + OBJC_IVAR____TtC21systemservicemonitord27ReportMachSessionConnection_xpcSession) = 0;
  *(v7 + 112) = a1;
  *(v7 + 120) = a2;
  return v7;
}

uint64_t sub_100015CF8(uint64_t a1, uint64_t a2)
{
  swift_defaultActor_initialize();
  v5 = OBJC_IVAR____TtC21systemservicemonitord27ReportMachSessionConnection_endpoint;
  v6 = type metadata accessor for XPCEndpoint();
  (*(*(v6 - 8) + 56))(v2 + v5, 1, 1, v6);
  *(v2 + OBJC_IVAR____TtC21systemservicemonitord27ReportMachSessionConnection_xpcSession) = 0;
  *(v2 + 112) = a1;
  *(v2 + 120) = a2;
  return v2;
}

uint64_t sub_100015D88(uint64_t a1)
{
  v3 = sub_100007CCC(&qword_1000868B0, &qword_100060C60);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v15 - v5;
  v7 = *(v1 + 48);
  v8 = *(v1 + 52);
  v9 = swift_allocObject();
  swift_defaultActor_initialize();
  v10 = OBJC_IVAR____TtC21systemservicemonitord27ReportMachSessionConnection_endpoint;
  v11 = type metadata accessor for XPCEndpoint();
  v12 = *(v11 - 8);
  v13 = *(v12 + 56);
  v13(v9 + v10, 1, 1, v11);
  *(v9 + OBJC_IVAR____TtC21systemservicemonitord27ReportMachSessionConnection_xpcSession) = 0;
  (*(v12 + 16))(v6, a1, v11);
  v13(v6, 0, 1, v11);
  swift_beginAccess();
  sub_1000160A8(v6, v9 + v10);
  swift_endAccess();
  (*(v12 + 8))(a1, v11);
  *(v9 + 112) = 0;
  *(v9 + 120) = 0xE000000000000000;
  return v9;
}

uint64_t sub_100015F20(uint64_t a1)
{
  v3 = sub_100007CCC(&qword_1000868B0, &qword_100060C60);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v12 - v5;
  swift_defaultActor_initialize();
  v7 = OBJC_IVAR____TtC21systemservicemonitord27ReportMachSessionConnection_endpoint;
  v8 = type metadata accessor for XPCEndpoint();
  v9 = *(v8 - 8);
  v10 = *(v9 + 56);
  v10(v1 + v7, 1, 1, v8);
  *(v1 + OBJC_IVAR____TtC21systemservicemonitord27ReportMachSessionConnection_xpcSession) = 0;
  (*(v9 + 16))(v6, a1, v8);
  v10(v6, 0, 1, v8);
  swift_beginAccess();
  sub_1000160A8(v6, v1 + v7);
  swift_endAccess();
  (*(v9 + 8))(a1, v8);
  *(v1 + 112) = 0;
  *(v1 + 120) = 0xE000000000000000;
  return v1;
}

uint64_t sub_1000160A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007CCC(&qword_1000868B0, &qword_100060C60);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100016118(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[11] = a4;
  v5[12] = v4;
  v5[9] = a2;
  v5[10] = a3;
  v5[8] = a1;
  v6 = *(*(type metadata accessor for XPCSession.InitializationOptions() - 8) + 64) + 15;
  v5[13] = swift_task_alloc();
  v5[14] = swift_task_alloc();
  v7 = *(*(sub_100007CCC(&qword_1000868B0, &qword_100060C60) - 8) + 64) + 15;
  v5[15] = swift_task_alloc();
  v8 = type metadata accessor for XPCEndpoint();
  v5[16] = v8;
  v9 = *(v8 - 8);
  v5[17] = v9;
  v10 = *(v9 + 64) + 15;
  v5[18] = swift_task_alloc();
  v5[19] = swift_task_alloc();

  return _swift_task_switch(sub_10001625C, v4, 0);
}

uint64_t sub_10001625C()
{
  v1 = v0[12];
  v47 = OBJC_IVAR____TtC21systemservicemonitord27ReportMachSessionConnection_xpcSession;
  v48 = v1;
  if (*(v1 + OBJC_IVAR____TtC21systemservicemonitord27ReportMachSessionConnection_xpcSession))
  {
    v2 = *(v1 + OBJC_IVAR____TtC21systemservicemonitord27ReportMachSessionConnection_xpcSession);

    dispatch thunk of XPCSession.cancel(reason:)();

    v1 = v0[12];
  }

  v3 = v0[16];
  v4 = v0[17];
  v5 = v0[15];
  v7 = v0[10];
  v6 = v0[11];
  v8 = v0[8];
  v9 = v0[9];
  v10 = swift_allocObject();
  v0[20] = v10;
  *(v10 + 16) = v7;
  *(v10 + 24) = v6;
  v11 = swift_allocObject();
  v0[21] = v11;
  *(v11 + 16) = v8;
  *(v11 + 24) = v9;
  v12 = OBJC_IVAR____TtC21systemservicemonitord27ReportMachSessionConnection_endpoint;
  swift_beginAccess();
  sub_100015930(v1 + v12, v5, &qword_1000868B0, &qword_100060C60);
  if ((*(v4 + 48))(v5, 1, v3) == 1)
  {
    v13 = v0[15];
    v14 = v0[11];
    v15 = v0[12];
    v16 = v0[9];
    v17 = v0[8];
    sub_100007CBC(v0[10]);
    sub_100007CBC(v17);
    sub_10000812C(v13, &qword_1000868B0, &qword_100060C60);
    if (!*(v15 + 112) && *(v15 + 120) == 0xE000000000000000 || (v18 = *(v15 + 112), v19 = *(v15 + 120), (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
    {
      sub_100007B4C();
      swift_allocError();
      *v20 = 0xD000000000000026;
      *(v20 + 8) = 0x800000010006A930;
      *(v20 + 16) = 0;
      swift_willThrow();
      v30 = v0[20];
      v29 = v0[21];
      v32 = v0[18];
      v31 = v0[19];
      v34 = v0[14];
      v33 = v0[15];
      v35 = v0[13];

      v36 = v0[1];

      return v36();
    }

    v38 = v0[13];
    type metadata accessor for XPCSession();

    static XPCSession.InitializationOptions.none.getter();
    v28 = XPCSession.__allocating_init(machService:targetQueue:options:incomingMessageHandler:cancellationHandler:)();
  }

  else
  {
    v22 = v0[18];
    v21 = v0[19];
    v24 = v0[16];
    v23 = v0[17];
    v26 = v0[10];
    v25 = v0[11];
    v27 = v0[8];
    v45 = v0[9];
    v46 = v0[14];
    (*(v23 + 32))(v21, v0[15], v24);
    type metadata accessor for XPCSession();
    (*(v23 + 16))(v22, v21, v24);
    sub_100007CBC(v26);
    sub_100007CBC(v27);

    static XPCSession.InitializationOptions.none.getter();
    v28 = XPCSession.__allocating_init(endpoint:targetQueue:options:incomingMessageHandler:cancellationHandler:)();
    (*(v0[17] + 8))(v0[19], v0[16]);
  }

  v39 = v0[12];
  v40 = *(v48 + v47);
  *(v48 + v47) = v28;

  Request.DatabaseReset.init()();
  v41 = *(*v39 + 192);
  v49 = (v41 + *v41);
  v42 = v41[1];
  v43 = swift_task_alloc();
  v0[22] = v43;
  sub_10001A29C();
  *v43 = v0;
  v43[1] = sub_100016778;
  v44 = v0[12];

  return v49();
}

uint64_t sub_100016778()
{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v7 = *v1;

  v4 = *(v2 + 96);
  if (v0)
  {
    *(v2 + 184) = *(v2 + 40);
    *(v2 + 57) = *(v2 + 56);
    v5 = sub_10001689C;
  }

  else
  {
    v5 = sub_100016980;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_10001689C()
{
  v1 = *(v0 + 57);
  v3 = *(v0 + 184);
  v2 = *(v0 + 192);
  sub_100007B4C();
  swift_allocError();
  *v4 = v3;
  *(v4 + 8) = v2;
  *(v4 + 16) = v1;
  v6 = *(v0 + 160);
  v5 = *(v0 + 168);
  v8 = *(v0 + 144);
  v7 = *(v0 + 152);
  v10 = *(v0 + 112);
  v9 = *(v0 + 120);
  v11 = *(v0 + 104);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_100016980()
{
  v2 = v0[20];
  v1 = v0[21];
  v4 = v0[18];
  v3 = v0[19];
  v6 = v0[14];
  v5 = v0[15];
  v7 = v0[13];

  v8 = v0[1];

  return v8();
}

uint64_t sub_100016A30(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007CCC(&qword_100086800, &qword_100060690);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v20 - v6;
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100008344();
  (*(v9 + 16))(v12, v13, v8);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "[🔴] XPC Connection lost.", v16, 2u);
  }

  (*(v9 + 8))(v12, v8);
  v17 = type metadata accessor for TaskPriority();
  (*(*(v17 - 8) + 56))(v7, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = a1;
  v18[5] = a2;
  sub_100007CBC(a1);
  sub_100016EEC(0, 0, v7, &unk_100060EB8, v18);
}

uint64_t sub_100016C7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  return _swift_task_switch(sub_100016CA0, 0, 0);
}

uint64_t sub_100016CA0()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = *(v0 + 32);
    v3 = *(v0 + 24);
    v8 = (v1 + *v1);
    v4 = v1[1];
    v5 = swift_task_alloc();
    *(v0 + 40) = v5;
    *v5 = v0;
    v5[1] = sub_100016DCC;

    return v8();
  }

  else
  {
    **(v0 + 16) = 1;
    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_100016DCC()
{
  v1 = *(*v0 + 40);
  v3 = *v0;

  return _swift_task_switch(sub_100016EC8, 0, 0);
}

uint64_t sub_100016EEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100007CCC(&qword_100086800, &qword_100060690);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_100015930(a3, v27 - v11, &qword_100086800, &qword_100060690);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_10000812C(v12, &qword_100086800, &qword_100060690);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = dispatch thunk of Actor.unownedExecutor.getter();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = String.utf8CString.getter() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      sub_100007CCC(&qword_100086AB8, &qword_100060ED0);
      v23 = (v20 | v18);
      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v24 = swift_task_create();

      sub_10000812C(a3, &qword_100086800, &qword_100060690);

      return v24;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_10000812C(a3, &qword_100086800, &qword_100060690);
  v26 = swift_allocObject();
  *(v26 + 16) = a4;
  *(v26 + 24) = a5;
  sub_100007CCC(&qword_100086AB8, &qword_100060ED0);
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

double sub_100017200@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v35 = a2;
  v36 = a3;
  v39 = a4;
  v5 = type metadata accessor for Logger();
  v37 = *(v5 - 8);
  v38 = v5;
  v6 = *(v37 + 64);
  __chkstk_darwin(v5);
  v40 = (&v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v34 = type metadata accessor for XPCReceivedMessage();
  v8 = *(v34 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v34);
  v10 = sub_100007CCC(&qword_100086800, &qword_100060690);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v33 - v12;
  v14 = type metadata accessor for Query(0);
  v33 = *(v14 - 8);
  v15 = *(v33 + 64);
  v16 = __chkstk_darwin(v14);
  v17 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v20 = &v33 - v19;
  __chkstk_darwin(v18);
  v22 = &v33 - v21;
  sub_10001A8C4(&qword_100086AA0, type metadata accessor for Query);
  XPCReceivedMessage.decode<A>(as:)();
  v40 = type metadata accessor for Query;
  sub_10001A730(v20, v22, type metadata accessor for Query);
  XPCReceivedMessage.detachHandoff()();
  v23 = type metadata accessor for TaskPriority();
  (*(*(v23 - 8) + 56))(v13, 1, 1, v23);
  sub_10001A7FC(v22, v17, type metadata accessor for Query);
  v24 = v34;
  (*(v8 + 16))(&v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v34);
  v25 = (*(v33 + 80) + 32) & ~*(v33 + 80);
  v26 = (v15 + *(v8 + 80) + v25) & ~*(v8 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = 0;
  *(v27 + 24) = 0;
  sub_10001A730(v17, v27 + v25, v40);
  (*(v8 + 32))(v27 + v26, &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v24);
  v28 = (v27 + ((v9 + v26 + 7) & 0xFFFFFFFFFFFFFFF8));
  v29 = v35;
  v30 = v36;
  *v28 = v35;
  v28[1] = v30;
  sub_100007CBC(v29);
  sub_100008F94(0, 0, v13, &unk_100060EA0, v27);

  sub_10001A864(v22, type metadata accessor for Query);
  v31 = v39;
  *(v39 + 32) = 0;
  result = 0.0;
  *v31 = 0u;
  v31[1] = 0u;
  return result;
}

uint64_t sub_1000177F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[19] = a6;
  v7[20] = a7;
  v7[17] = a4;
  v7[18] = a5;
  v8 = type metadata accessor for Logger();
  v7[21] = v8;
  v9 = *(v8 - 8);
  v7[22] = v9;
  v10 = *(v9 + 64) + 15;
  v7[23] = swift_task_alloc();
  v11 = *(*(type metadata accessor for Query(0) - 8) + 64) + 15;
  v7[24] = swift_task_alloc();

  return _swift_task_switch(sub_1000178E8, 0, 0);
}

uint64_t sub_1000178E8()
{
  v1 = *(v0 + 192);
  sub_10001A7FC(*(v0 + 136), v1, type metadata accessor for Query);
  v2 = type metadata accessor for Query.Ping(0);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    v3 = *(v0 + 152);
    if (v3)
    {
      v4 = *(v0 + 160);
      v5 = *(v0 + 152);
      v37 = (v3 + *v3);
      v6 = v3[1];
      v7 = swift_task_alloc();
      *(v0 + 200) = v7;
      *v7 = v0;
      v7[1] = sub_100017C7C;
      v8 = *(v0 + 136);

      return v37(v0 + 96, v8);
    }

    *(v0 + 128) = 0;
    *(v0 + 96) = 0u;
    *(v0 + 112) = 0u;
    Request.DatabaseReset.init()();
    v28 = v27;
    v30 = v29;
    *(v0 + 80) = &type metadata for QueryResponse.Error;
    *(v0 + 88) = sub_10001AC38();
    *(v0 + 56) = v28;
    *(v0 + 64) = v30;
    if (*(v0 + 120))
    {
      sub_10000812C(v0 + 96, &qword_100086AB0, &qword_100060EA8);
    }

    v31 = *(v0 + 144);
    sub_1000081E8((v0 + 56), v0 + 16);
    v32 = *(v0 + 48);
    sub_100007AB4((v0 + 16), *(v0 + 40));
    v33 = *(*(v32 + 8) + 16);
  }

  else
  {
    v11 = *(v0 + 176);
    v10 = *(v0 + 184);
    v12 = *(v0 + 168);
    v13 = sub_100008344();
    (*(v11 + 16))(v10, v13, v12);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "[🟡] Received unexpected 'Ping' query on the Mach session.", v16, 2u);
    }

    v18 = *(v0 + 176);
    v17 = *(v0 + 184);
    v19 = *(v0 + 168);
    v20 = *(v0 + 144);

    (*(v18 + 8))(v17, v19);
    Request.DatabaseReset.init()();
    v22 = v21;
    v24 = v23;
    *(v0 + 40) = &type metadata for QueryResponse.Error;
    v25 = sub_10001AC38();
    *(v0 + 48) = v25;
    *(v0 + 16) = v22;
    *(v0 + 24) = v24;
    sub_100007AB4((v0 + 16), &type metadata for QueryResponse.Error);
    v26 = *(*(v25 + 8) + 16);
  }

  XPCReceivedMessage.reply<A>(_:)();
  v34 = *(v0 + 184);
  v35 = *(v0 + 192);
  sub_100007F1C((v0 + 16));
  sub_10001A864(v35, type metadata accessor for Query);

  v36 = *(v0 + 8);

  return v36();
}

uint64_t sub_100017C7C()
{
  v1 = *(*v0 + 200);
  v3 = *v0;

  return _swift_task_switch(sub_100017D78, 0, 0);
}

uint64_t sub_100017D78()
{
  if (*(v0 + 120))
  {
    sub_1000081E8((v0 + 96), v0 + 56);
  }

  else
  {
    Request.DatabaseReset.init()();
    v2 = v1;
    v4 = v3;
    *(v0 + 80) = &type metadata for QueryResponse.Error;
    *(v0 + 88) = sub_10001AC38();
    *(v0 + 56) = v2;
    *(v0 + 64) = v4;
    if (*(v0 + 120))
    {
      sub_10000812C(v0 + 96, &qword_100086AB0, &qword_100060EA8);
    }
  }

  v5 = *(v0 + 144);
  sub_1000081E8((v0 + 56), v0 + 16);
  v6 = *(v0 + 48);
  sub_100007AB4((v0 + 16), *(v0 + 40));
  v7 = *(*(v6 + 8) + 16);
  XPCReceivedMessage.reply<A>(_:)();
  v8 = *(v0 + 184);
  v9 = *(v0 + 192);
  sub_100007F1C((v0 + 16));
  sub_10001A864(v9, type metadata accessor for Query);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_100017EB4()
{
  if (*(v0 + OBJC_IVAR____TtC21systemservicemonitord27ReportMachSessionConnection_xpcSession))
  {

    dispatch thunk of XPCSession.cancel(reason:)();
  }

  return result;
}

uint64_t sub_100017F24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[38] = v5;
  v6[39] = a5;
  v6[36] = a3;
  v6[37] = a4;
  v6[34] = a1;
  v6[35] = a2;
  v7 = type metadata accessor for XPCReceivedMessage();
  v6[40] = v7;
  v8 = *(v7 - 8);
  v6[41] = v8;
  v9 = *(v8 + 64) + 15;
  v6[42] = swift_task_alloc();
  v6[43] = swift_task_alloc();

  return _swift_task_switch(sub_100017FF8, v5, 0);
}

uint64_t sub_100017FF8()
{
  v1 = *(v0 + 304);
  if (*(v1 + OBJC_IVAR____TtC21systemservicemonitord27ReportMachSessionConnection_xpcSession))
  {
    v2 = *(v0 + 336);
    v4 = *(v0 + 288);
    v3 = *(v0 + 296);
    v5 = *(v0 + 280);
    v6 = *(v3 + 32);
    v7 = *(v1 + OBJC_IVAR____TtC21systemservicemonitord27ReportMachSessionConnection_xpcSession);

    v6(v4, v3);
    v8 = *(v0 + 56);
    sub_100007AB4((v0 + 16), *(v0 + 40));
    dispatch thunk of XPCSession.sendSync<A>(_:)();
    (*(*(v0 + 328) + 32))(*(v0 + 344), *(v0 + 336), *(v0 + 320));
    sub_100007F1C((v0 + 16));
    sub_10001A2F0();
    XPCReceivedMessage.decode<A>(as:)();
    v9 = *(v0 + 344);
    v10 = *(v0 + 320);
    v11 = *(v0 + 328);
    v13 = *(v0 + 208);
    v12 = *(v0 + 216);
    _StringGuts.grow(_:)(39);
    *(v0 + 224) = 0;
    *(v0 + 232) = 0xE000000000000000;
    v14._countAndFlagsBits = 0xD000000000000025;
    v14._object = 0x800000010006A5F0;
    String.append(_:)(v14);
    *(v0 + 240) = v13;
    *(v0 + 248) = v12;
    _print_unlocked<A, B>(_:_:)();

    v15 = *(v0 + 224);
    v16 = *(v0 + 232);
    *(v0 + 184) = v15;
    *(v0 + 192) = v16;
    *(v0 + 200) = 0;
    sub_100007B4C();
    swift_willThrowTypedImpl();

    (*(v11 + 8))(v9, v10);
  }

  else
  {
    v15 = 0xD00000000000003FLL;
    v16 = 0x800000010006A8F0;
    *(v0 + 112) = 0xD00000000000003FLL;
    *(v0 + 120) = 0x800000010006A8F0;
    *(v0 + 128) = 0;
    sub_100007B4C();
    swift_willThrowTypedImpl();
  }

  v18 = *(v0 + 336);
  v17 = *(v0 + 344);
  v19 = *(v0 + 312);

  *v19 = v15;
  *(v19 + 8) = v16;
  *(v19 + 16) = 0;
  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_1000184E4()
{
  v1 = *(v0 + 120);

  sub_10000812C(v0 + OBJC_IVAR____TtC21systemservicemonitord27ReportMachSessionConnection_endpoint, &qword_1000868B0, &qword_100060C60);
  v2 = *(v0 + OBJC_IVAR____TtC21systemservicemonitord27ReportMachSessionConnection_xpcSession);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_10001853C()
{
  v1 = *(v0 + 120);

  sub_10000812C(v0 + OBJC_IVAR____TtC21systemservicemonitord27ReportMachSessionConnection_endpoint, &qword_1000868B0, &qword_100060C60);
  v2 = *(v0 + OBJC_IVAR____TtC21systemservicemonitord27ReportMachSessionConnection_xpcSession);

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_1000185A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    v9 = a2;
  }

  else
  {
    v9 = 0;
  }

  v10 = *(**v4 + 176);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_100007198;

  return v14(a1, v9, a3, a4);
}

uint64_t sub_1000186EC()
{
  v2 = *v0;
  *(v1 + 16) = *v0;
  return _swift_task_switch(sub_10001870C, v2, 0);
}

uint64_t sub_10001870C()
{
  (*(**(v0 + 16) + 184))();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10001878C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 40) = a5;
  v11 = *(**v5 + 192);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v6 + 48) = v13;
  *v13 = v6;
  v13[1] = sub_1000113E8;

  return v15(a1, a2, a3, a4, v6 + 16);
}

uint64_t sub_1000188E4(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  sub_100018924(a1);
  return v5;
}

uint64_t *sub_100018924(uint64_t a1)
{
  v3 = *v1;
  swift_defaultActor_initialize();
  static Date.now.getter();
  UUID.init()();
  (*(*(*(v3 + 80) - 8) + 32))(v1 + *(*v1 + 120), a1);
  return v1;
}

uint64_t sub_1000189D4(uint64_t a1)
{
  v28 = *v1;
  v3 = type metadata accessor for UUID();
  v27 = v3;
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = qword_100088648;
  swift_beginAccess();
  v26 = v4;
  (*(v4 + 24))(&v1[v13], a1, v3);
  swift_endAccess();
  static Date.now.getter();
  v14 = qword_100088640;
  swift_beginAccess();
  (*(v9 + 40))(&v1[v14], v12, v8);
  swift_endAccess();
  v15 = swift_allocObject();
  swift_weakInit();
  v16 = swift_allocObject();
  v17 = *(v28 + 80);
  v18 = v28;
  v16[2] = v17;
  v19 = *(v18 + 88);
  v16[3] = v19;
  v16[4] = v15;
  v20 = *(*v1 + 120);
  v21 = swift_allocObject();
  *(v21 + 16) = sub_10001A3B4;
  *(v21 + 24) = v16;
  v22 = *(v4 + 16);
  v23 = v27;
  v22(v7, &v1[v13], v27);
  v24 = *(v19 + 16);

  v24(sub_10001A3F4, v21, v7, v17, v19);

  return (*(v26 + 8))(v7, v23);
}

uint64_t sub_100018CF4(uint64_t a1)
{
  v2 = sub_100007CCC(&qword_100086800, &qword_100060690);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v10 - v4;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = result;
    v8 = type metadata accessor for TaskPriority();
    (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
    v9 = swift_allocObject();
    v9[2] = 0;
    v9[3] = 0;
    v9[4] = a1;
    v9[5] = v7;
    swift_unknownObjectRetain();
    sub_100008F94(0, 0, v5, &unk_100060E78, v9);
  }

  return result;
}

uint64_t sub_100018E2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5[11] = a4;
  v5[12] = a5;
  v5[13] = *a5;
  v6 = type metadata accessor for QueryResponse.PingResponse(0);
  v5[14] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v5[15] = swift_task_alloc();
  v8 = type metadata accessor for Logger();
  v5[16] = v8;
  v9 = *(v8 - 8);
  v5[17] = v9;
  v10 = *(v9 + 64) + 15;
  v5[18] = swift_task_alloc();
  v5[19] = swift_task_alloc();
  v5[20] = swift_task_alloc();
  v5[21] = swift_task_alloc();
  v5[22] = swift_task_alloc();
  v11 = type metadata accessor for UUID();
  v5[23] = v11;
  v12 = *(v11 - 8);
  v5[24] = v12;
  v13 = *(v12 + 64) + 15;
  v5[25] = swift_task_alloc();
  v5[26] = swift_task_alloc();
  v5[27] = swift_task_alloc();
  v5[28] = swift_task_alloc();
  v5[29] = swift_task_alloc();
  v5[30] = swift_task_alloc();
  v14 = type metadata accessor for Query.Ping(0);
  v5[31] = v14;
  v15 = *(v14 - 8);
  v5[32] = v15;
  v16 = *(v15 + 64) + 15;
  v5[33] = swift_task_alloc();
  v17 = type metadata accessor for Query(0);
  v5[34] = v17;
  v18 = *(*(v17 - 8) + 64) + 15;
  v5[35] = swift_task_alloc();
  v5[36] = swift_task_alloc();
  v5[37] = swift_task_alloc();

  return _swift_task_switch(sub_1000190B0, 0, 0);
}

uint64_t sub_1000190B0()
{
  v72 = v0;
  v1 = v0[36];
  v2 = v0[34];
  v3 = v0[11];
  v4 = sub_10001A8C4(&unk_100086A70, type metadata accessor for Query);
  static XPCConvertible.from(xpc:)(v3, v2, v4);
  v0[38] = 0;
  v5 = v0[37];
  v6 = v0[35];
  v7 = v0[31];
  v8 = v0[32];
  sub_10001A730(v0[36], v5, type metadata accessor for Query);
  sub_10001A7FC(v5, v6, type metadata accessor for Query);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    v9 = v0[20];
    v10 = v0[16];
    v11 = v0[17];
    v12 = sub_100008344();
    (*(v11 + 16))(v9, v12, v10);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "[🟡] Received unsupported query messages. 'Ping' query is the only supported event on the event stream.", v15, 2u);
    }

    v16 = v0[37];
    v17 = v0[35];
    v18 = v0[20];
    v19 = v0[16];
    v20 = v0[17];

    (*(v20 + 8))(v18, v19);
    sub_10001A864(v16, type metadata accessor for Query);
    sub_10001A864(v17, type metadata accessor for Query);
    v22 = v0[36];
    v21 = v0[37];
    v23 = v0[35];
    v24 = v0[33];
    v26 = v0[29];
    v25 = v0[30];
    v28 = v0[27];
    v27 = v0[28];
    v29 = v0[25];
    v30 = v0[26];
    v61 = v0[22];
    v62 = v0[21];
    v63 = v0[20];
    v65 = v0[19];
    v67 = v0[18];
    v69 = v0[15];

    v31 = v0[1];

    return v31();
  }

  else
  {
    v33 = v0[33];
    v35 = v0[29];
    v34 = v0[30];
    v36 = v0[23];
    v37 = v0[24];
    v38 = v0[22];
    v39 = v0[16];
    v40 = v0[17];
    sub_10001A730(v0[35], v33, type metadata accessor for Query.Ping);
    v41 = *(v37 + 16);
    v0[39] = v41;
    v0[40] = (v37 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v41(v34, v33, v36);
    v42 = sub_100008344();
    v0[41] = v42;
    v43 = *(v40 + 16);
    v0[42] = v43;
    v0[43] = (v40 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v43(v38, v42, v39);
    v41(v35, v34, v36);
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.info.getter();
    v46 = os_log_type_enabled(v44, v45);
    v47 = v0[29];
    v48 = v0[23];
    v49 = v0[24];
    v50 = v0[22];
    v52 = v0[16];
    v51 = v0[17];
    if (v46)
    {
      v70 = v0[16];
      v53 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v71 = v68;
      *v53 = 136315138;
      sub_10001A8C4(&unk_100086A90, &type metadata accessor for UUID);
      v54 = dispatch thunk of CustomStringConvertible.description.getter();
      v66 = v50;
      v56 = v55;
      v64 = v45;
      v57 = *(v49 + 8);
      v57(v47, v48);
      v58 = sub_10000728C(v54, v56, &v71);

      *(v53 + 4) = v58;
      _os_log_impl(&_mh_execute_header, v44, v64, "📨 Received Ping for session (ID: %s)", v53, 0xCu);
      sub_100007F1C(v68);

      v59 = *(v51 + 8);
      v59(v66, v70);
    }

    else
    {

      v57 = *(v49 + 8);
      v57(v47, v48);
      v59 = *(v51 + 8);
      v59(v50, v52);
    }

    v0[44] = v59;
    v0[45] = v57;
    v60 = v0[12];

    return _swift_task_switch(sub_10001973C, v60, 0);
  }
}

uint64_t sub_10001973C()
{
  v2 = v0[39];
  v1 = v0[40];
  v3 = v0[28];
  v4 = v0[23];
  v5 = v0[12];
  v6 = qword_100088648;
  swift_beginAccess();
  v2(v3, v5 + v6, v4);

  return _swift_task_switch(sub_1000197E8, 0, 0);
}

uint64_t sub_1000197E8()
{
  v96 = v0;
  v1 = *(v0 + 240);
  v2 = *(v0 + 224);
  v3 = *(v0 + 184);
  sub_10001A8C4(&qword_100086A80, &type metadata accessor for UUID);
  if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    v4 = *(v0 + 344);
    v5 = *(v0 + 320);
    v6 = *(v0 + 312);
    v7 = *(v0 + 240);
    v9 = *(v0 + 216);
    v8 = *(v0 + 224);
    v10 = *(v0 + 208);
    v11 = *(v0 + 184);
    (*(v0 + 336))(*(v0 + 168), *(v0 + 328), *(v0 + 128));
    v6(v9, v7, v11);
    v6(v10, v8, v11);
    v12 = Logger.logObject.getter();
    v89 = static os_log_type_t.error.getter();
    v13 = os_log_type_enabled(v12, v89);
    v14 = *(v0 + 352);
    v15 = *(v0 + 360);
    v17 = *(v0 + 208);
    v16 = *(v0 + 216);
    v19 = *(v0 + 184);
    v18 = *(v0 + 192);
    v20 = *(v0 + 168);
    v21 = *(v0 + 128);
    v92 = *(v0 + 136);
    if (v13)
    {
      v86 = *(v0 + 168);
      v22 = swift_slowAlloc();
      v95[0] = swift_slowAlloc();
      *v22 = 136315394;
      sub_10001A8C4(&unk_100086A90, &type metadata accessor for UUID);
      v83 = v14;
      log = v12;
      v80 = v21;
      v23 = dispatch thunk of CustomStringConvertible.description.getter();
      v25 = v24;
      v15(v16, v19);
      v26 = sub_10000728C(v23, v25, v95);

      *(v22 + 4) = v26;
      *(v22 + 12) = 2080;
      v27 = dispatch thunk of CustomStringConvertible.description.getter();
      v29 = v28;
      v15(v17, v19);
      v30 = sub_10000728C(v27, v29, v95);

      *(v22 + 14) = v30;
      _os_log_impl(&_mh_execute_header, log, v89, "[‼️] The incoming sessionID (%s) does not match the current sessionID (%s). This is a bug must be fixed later.", v22, 0x16u);
      swift_arrayDestroy();

      v83(v86, v80);
    }

    else
    {

      v15(v17, v19);
      v15(v16, v19);
      v14(v20, v21);
    }
  }

  v31 = *(v0 + 320);
  v32 = *(v0 + 304);
  v33 = *(v0 + 200);
  v35 = *(v0 + 112);
  v34 = *(v0 + 120);
  v36 = *(v0 + 96);
  v37 = *(v0 + 104);
  v38 = *(v0 + 88);
  (*(v0 + 312))(v33, *(v0 + 240), *(v0 + 184));
  _s21systemservicemonitord5QueryO4PingV11sessionUUIDAE10Foundation0E0V_tcfC_0(v33);
  v39 = *(*v36 + 120);
  *(v0 + 80) = v38;
  *(v0 + 40) = v35;
  *(v0 + 48) = sub_10001A8C4(&qword_100086A88, type metadata accessor for QueryResponse.PingResponse);
  v40 = sub_10001A798((v0 + 16));
  sub_10001A7FC(v34, v40, type metadata accessor for QueryResponse.PingResponse);
  (*(*(v37 + 88) + 32))(v0 + 80, v0 + 16, *(v37 + 80));
  if (v32)
  {
    v42 = *(v0 + 336);
    v41 = *(v0 + 344);
    v43 = *(v0 + 328);
    v44 = *(v0 + 144);
    v45 = *(v0 + 128);
    sub_100007F1C((v0 + 16));
    v42(v44, v43, v45);
    swift_errorRetain();
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      *v48 = 138412290;
      swift_errorRetain();
      v50 = _swift_stdlib_bridgeErrorToNSError();
      *(v48 + 4) = v50;
      *v49 = v50;
      _os_log_impl(&_mh_execute_header, v46, v47, "[🔴] Failed to send the Ping query response. Error: %@", v48, 0xCu);
      sub_10000812C(v49, &qword_100086810, &qword_100060610);
    }

    v51 = v46;
    v53 = *(v0 + 352);
    v52 = *(v0 + 360);
    v90 = *(v0 + 264);
    v93 = *(v0 + 296);
    v84 = *(v0 + 224);
    v87 = *(v0 + 240);
    v55 = *(v0 + 184);
    v54 = *(v0 + 192);
    v56 = *(v0 + 136);
    v57 = *(v0 + 144);
    v58 = *(v0 + 120);
    v59 = *(v0 + 128);

    v53(v57, v59);
    sub_10001A864(v58, type metadata accessor for QueryResponse.PingResponse);
    v52(v84, v55);
    v52(v87, v55);
    sub_10001A864(v90, type metadata accessor for Query.Ping);
    sub_10001A864(v93, type metadata accessor for Query);
  }

  else
  {
    v60 = *(v0 + 360);
    v61 = *(v0 + 296);
    v62 = *(v0 + 264);
    v63 = *(v0 + 240);
    v64 = *(v0 + 224);
    v65 = *(v0 + 184);
    v66 = *(v0 + 192);
    sub_10001A864(*(v0 + 120), type metadata accessor for QueryResponse.PingResponse);
    v60(v64, v65);
    v60(v63, v65);
    sub_10001A864(v62, type metadata accessor for Query.Ping);
    sub_10001A864(v61, type metadata accessor for Query);
    sub_100007F1C((v0 + 16));
  }

  v68 = *(v0 + 288);
  v67 = *(v0 + 296);
  v69 = *(v0 + 280);
  v70 = *(v0 + 264);
  v72 = *(v0 + 232);
  v71 = *(v0 + 240);
  v74 = *(v0 + 216);
  v73 = *(v0 + 224);
  v75 = *(v0 + 200);
  v76 = *(v0 + 208);
  v81 = *(v0 + 176);
  v82 = *(v0 + 168);
  v85 = *(v0 + 160);
  v88 = *(v0 + 152);
  v91 = *(v0 + 144);
  v94 = *(v0 + 120);

  v77 = *(v0 + 8);

  return v77();
}

uint64_t sub_100019F28()
{
  v1 = *(*(*v0 + 88) + 24);
  v2 = *(*v0 + 80);
  v3 = v0 + *(*v0 + 120);
  return v1(v2);
}

uint64_t *sub_100019F9C()
{
  v1 = *v0;
  v2 = qword_100088640;
  v3 = type metadata accessor for Date();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = qword_100088648;
  v5 = type metadata accessor for UUID();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 120));
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_10001A0A4()
{
  sub_100019F9C();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_10001A0EC(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return _swift_task_switch(sub_10001A10C, v3, 0);
}

uint64_t sub_10001A10C()
{
  (*(**(v0 + 24) + 184))(*(v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10001A1A8()
{
  v2 = *v0;
  *(v1 + 16) = *v0;
  return _swift_task_switch(sub_10001A1C8, v2, 0);
}

uint64_t sub_10001A1C8()
{
  (*(**(v0 + 16) + 192))();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10001A254()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_10001A29C()
{
  result = qword_1000868B8;
  if (!qword_1000868B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000868B8);
  }

  return result;
}

unint64_t sub_10001A2F0()
{
  result = qword_1000868C8;
  if (!qword_1000868C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000868C8);
  }

  return result;
}

uint64_t sub_10001A344()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001A37C()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10001A3BC()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001A3F4(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

uint64_t type metadata accessor for ReportMachSessionConnection()
{
  result = qword_100088750;
  if (!qword_100088750)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10001A474()
{
  sub_100015398();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_10001A524(uint64_t a1)
{
  result = type metadata accessor for Date();
  if (v3 <= 0x3F)
  {
    v7 = *(result - 8) + 64;
    result = type metadata accessor for UUID();
    if (v4 <= 0x3F)
    {
      v8 = *(result - 8) + 64;
      v5 = *(a1 + 80);
      result = swift_checkMetadataState();
      if (v6 <= 0x3F)
      {
        v9 = *(result - 8) + 64;
        return swift_initClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t sub_10001A650()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];
  swift_unknownObjectRelease();
  v3 = v0[5];

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10001A698()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100007198;

  return sub_100018E2C(v4, v5, v6, v2, v3);
}

uint64_t sub_10001A730(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t *sub_10001A798(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_10001A7FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10001A864(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10001A8C4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10001A90C()
{
  v1 = *(type metadata accessor for Query(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  v5 = type metadata accessor for XPCReceivedMessage();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (v3 + v4 + v7) & ~v7;
  v9 = (*(v6 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v0 + 16);
  swift_unknownObjectRelease();
  v11 = type metadata accessor for Query.Ping(0);
  if (!(*(*(v11 - 8) + 48))(v0 + v3, 1, v11))
  {
    v12 = type metadata accessor for UUID();
    (*(*(v12 - 8) + 8))(v0 + v3, v12);
  }

  (*(v6 + 8))(v0 + v8, v5);
  if (*(v0 + v9))
  {
    v13 = *(v0 + v9 + 8);
  }

  return _swift_deallocObject(v0, v9 + 16, v2 | v7 | 7);
}

uint64_t sub_10001AACC()
{
  v2 = *(type metadata accessor for Query(0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(type metadata accessor for XPCReceivedMessage() - 8);
  v6 = (v3 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = (v0 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];
  v10 = swift_task_alloc();
  *(v1 + 16) = v10;
  *v10 = v1;
  v10[1] = sub_1000082B0;

  return sub_1000177F8(v10, v11, v12, v0 + v3, v0 + v6, v8, v9);
}

unint64_t sub_10001AC38()
{
  result = qword_100086AA8;
  if (!qword_100086AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086AA8);
  }

  return result;
}

uint64_t sub_10001AC8C()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  if (v0[4])
  {
    v2 = v0[5];
  }

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10001ACD4(uint64_t a1)
{
  v5 = *(v1 + 32);
  v4 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1000082B0;

  return sub_100016C7C(a1, v6, v7, v5, v4);
}

uint64_t sub_10001AD80(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_10001AE74;

  return v6(v2 + 32);
}

uint64_t sub_10001AE74()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v6 = *v0;

  *v3 = *(v1 + 32);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_10001AF88(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000082B0;

  return sub_10001AD80(a1, v5);
}

uint64_t sub_10001B040(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100007198;

  return sub_10001AD80(a1, v5);
}

Swift::Int sub_10001B150()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_10001B1C4()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t sub_10001B208()
{
  v1 = *v0;
  v2 = 0x64696C61766E69;
  v3 = 0x65746E6573657270;
  v4 = 0x7964616572;
  if (v1 != 3)
  {
    v4 = 0x64656C696166;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6573657250746F6ELL;
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

uint64_t sub_10001B2A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10001BE98(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10001B2E8(uint64_t a1)
{
  v2 = sub_10001BB78();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10001B324(uint64_t a1)
{
  v2 = sub_10001BB78();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10001B360(uint64_t a1)
{
  v2 = sub_10001BBCC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10001B39C(uint64_t a1)
{
  v2 = sub_10001BBCC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10001B3D8(uint64_t a1)
{
  v2 = sub_10001BD1C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10001B414(uint64_t a1)
{
  v2 = sub_10001BD1C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10001B450(uint64_t a1)
{
  v2 = sub_10001BCC8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10001B48C(uint64_t a1)
{
  v2 = sub_10001BCC8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10001B4C8(uint64_t a1)
{
  v2 = sub_10001BC74();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10001B504(uint64_t a1)
{
  v2 = sub_10001BC74();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10001B540@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_10001B57C(uint64_t a1)
{
  v2 = sub_10001BC20();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10001B5B8(uint64_t a1)
{
  v2 = sub_10001BC20();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t Service.State.encode(to:)(void *a1, int a2)
{
  v47 = a2;
  v3 = sub_100007CCC(&qword_100086AC0, &qword_100060EE0);
  v43 = *(v3 - 8);
  v44 = v3;
  v4 = *(v43 + 64);
  __chkstk_darwin(v3);
  v42 = &v36 - v5;
  v6 = sub_100007CCC(&qword_100086AC8, &qword_100060EE8);
  v40 = *(v6 - 8);
  v41 = v6;
  v7 = *(v40 + 64);
  __chkstk_darwin(v6);
  v39 = &v36 - v8;
  v9 = sub_100007CCC(&qword_100086AD0, &qword_100060EF0);
  v37 = *(v9 - 8);
  v38 = v9;
  v10 = *(v37 + 64);
  __chkstk_darwin(v9);
  v36 = &v36 - v11;
  v12 = sub_100007CCC(&qword_100086AD8, &qword_100060EF8);
  v46 = *(v12 - 8);
  v13 = *(v46 + 64);
  __chkstk_darwin(v12);
  v15 = &v36 - v14;
  v16 = sub_100007CCC(&qword_100086AE0, &qword_100060F00);
  v45 = *(v16 - 8);
  v17 = *(v45 + 64);
  __chkstk_darwin(v16);
  v19 = &v36 - v18;
  v48 = sub_100007CCC(&qword_100086AE8, &qword_100060F08);
  v20 = *(v48 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v48);
  v23 = &v36 - v22;
  v24 = a1[4];
  sub_100007AB4(a1, a1[3]);
  sub_10001BB78();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v25 = (v20 + 8);
  if (v47 <= 1u)
  {
    v31 = v45;
    v30 = v46;
    if (v47)
    {
      v50 = 1;
      sub_10001BCC8();
      v35 = v48;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v30 + 8))(v15, v12);
      return (*v25)(v23, v35);
    }

    v49 = 0;
    sub_10001BD1C();
    v32 = v48;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v31 + 8))(v19, v16);
    return (*v25)(v23, v32);
  }

  if (v47 == 2)
  {
    v51 = 2;
    sub_10001BC74();
    v33 = v36;
    v32 = v48;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v37 + 8))(v33, v38);
    return (*v25)(v23, v32);
  }

  if (v47 == 3)
  {
    v52 = 3;
    sub_10001BC20();
    v26 = v39;
    v27 = v48;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v29 = v40;
    v28 = v41;
  }

  else
  {
    v53 = 4;
    sub_10001BBCC();
    v26 = v42;
    v27 = v48;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v29 = v43;
    v28 = v44;
  }

  (*(v29 + 8))(v26, v28);
  return (*v25)(v23, v27);
}

unint64_t sub_10001BB78()
{
  result = qword_1000887E0;
  if (!qword_1000887E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000887E0);
  }

  return result;
}

unint64_t sub_10001BBCC()
{
  result = qword_1000887E8;
  if (!qword_1000887E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000887E8);
  }

  return result;
}

unint64_t sub_10001BC20()
{
  result = qword_1000887F0;
  if (!qword_1000887F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000887F0);
  }

  return result;
}

unint64_t sub_10001BC74()
{
  result = qword_1000887F8;
  if (!qword_1000887F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000887F8);
  }

  return result;
}

unint64_t sub_10001BCC8()
{
  result = qword_100088800;
  if (!qword_100088800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100088800);
  }

  return result;
}

unint64_t sub_10001BD1C()
{
  result = qword_100088808[0];
  if (!qword_100088808[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100088808);
  }

  return result;
}

Swift::Int Service.State.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  return Hasher._finalize()();
}

uint64_t sub_10001BDF8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10001C04C(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t Service.identifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_10001BE84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, __int128 *a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  return sub_1000081E8(a4, a5 + 24);
}

uint64_t sub_10001BE98(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64696C61766E69 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6573657250746F6ELL && a2 == 0xEC0000006465746ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65746E6573657270 && a2 == 0xE900000000000064 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7964616572 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x64656C696166 && a2 == 0xE600000000000000)
  {

    return 4;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}