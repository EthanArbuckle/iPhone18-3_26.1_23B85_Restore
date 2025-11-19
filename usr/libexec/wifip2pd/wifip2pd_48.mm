uint64_t NANAgentClient.__deallocating_deinit()
{
  v1 = *(v0 + 2);
  swift_unknownObjectRelease();
  v2 = *(v0 + 4);
  sub_100010520(*(v0 + 3));
  v3 = *(v0 + 5);
  swift_unknownObjectRelease();
  v4 = *(v0 + 7);

  v5 = *(v0 + 10);

  v6 = OBJC_IVAR____TtC12wifip2pdCore14NANAgentClient_id;
  v7 = type metadata accessor for UUID();
  (*(*(v7 - 8) + 8))(&v0[v6], v7);
  v8 = *(*v0 + 48);
  v9 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1003F3874(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = nw_agent_client_copy_browse_descriptor();
  if (!v7)
  {
    goto LABEL_7;
  }

  v8 = v7;
  if (nw_browse_descriptor_get_type() != 2 || !nw_browse_descriptor_get_application_service_name(v8))
  {
    swift_unknownObjectRelease();
LABEL_7:
    swift_unknownObjectRelease();

    type metadata accessor for NANBrowserClient(0);
    v14 = *(*v3 + 48);
    v15 = *(*v3 + 52);
    swift_deallocPartialClassInstance();
    return 0;
  }

  *(v3 + OBJC_IVAR____TtC12wifip2pdCore16NANBrowserClient_descriptor) = v8;
  swift_unknownObjectRetain();
  v9 = String.init(cString:)();
  v11 = v10;

  v12 = sub_1003F30F0(a1, v9, v11, a2, a3);

  swift_unknownObjectRelease();
  if (v12)
  {

    return v12;
  }

  return 0;
}

uint64_t sub_1003F39A8()
{
  v1 = sub_1003F3454();
  v2._countAndFlagsBits = 0x7069726373656420;
  v2._object = 0xEC0000003A726F74;
  String.append(_:)(v2);
  v5 = *(v0 + OBJC_IVAR____TtC12wifip2pdCore16NANBrowserClient_descriptor);
  sub_10005DC58(&qword_100599FE8, &unk_1004B3288);
  _print_unlocked<A, B>(_:_:)();

  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  String.append(_:)(v3);

  return v1;
}

char *NANBrowserClient.deinit()
{
  v1 = *(v0 + 2);
  swift_unknownObjectRelease();
  v2 = *(v0 + 4);
  sub_100010520(*(v0 + 3));
  v3 = *(v0 + 5);
  swift_unknownObjectRelease();
  v4 = *(v0 + 7);

  v5 = *(v0 + 10);

  v6 = OBJC_IVAR____TtC12wifip2pdCore14NANAgentClient_id;
  v7 = type metadata accessor for UUID();
  (*(*(v7 - 8) + 8))(&v0[v6], v7);
  v8 = *&v0[OBJC_IVAR____TtC12wifip2pdCore16NANBrowserClient_descriptor];
  swift_unknownObjectRelease();
  return v0;
}

uint64_t NANBrowserClient.__deallocating_deinit()
{
  v1 = *(v0 + 2);
  swift_unknownObjectRelease();
  v2 = *(v0 + 4);
  sub_100010520(*(v0 + 3));
  v3 = *(v0 + 5);
  swift_unknownObjectRelease();
  v4 = *(v0 + 7);

  v5 = *(v0 + 10);

  v6 = OBJC_IVAR____TtC12wifip2pdCore14NANAgentClient_id;
  v7 = type metadata accessor for UUID();
  (*(*(v7 - 8) + 8))(&v0[v6], v7);
  v8 = *&v0[OBJC_IVAR____TtC12wifip2pdCore16NANBrowserClient_descriptor];
  swift_unknownObjectRelease();
  v9 = *(*v0 + 48);
  v10 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1003F3C0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = (v3 + OBJC_IVAR____TtC12wifip2pdCore17NANListenerClient_assign);
  *v7 = 0;
  v7[1] = 0;
  v8 = nw_agent_client_copy_advertise_descriptor();
  if (!v8)
  {
    goto LABEL_7;
  }

  v9 = v8;
  if (nw_advertise_descriptor_get_type() != 2 || !nw_advertise_descriptor_get_application_service_name(v9))
  {
    swift_unknownObjectRelease();
LABEL_7:
    swift_unknownObjectRelease();

    v15 = v7[1];
    sub_100010520(*v7);
    type metadata accessor for NANListenerClient(0);
    v16 = *(*v3 + 48);
    v17 = *(*v3 + 52);
    swift_deallocPartialClassInstance();
    return 0;
  }

  *(v3 + OBJC_IVAR____TtC12wifip2pdCore17NANListenerClient_descriptor) = v9;
  swift_unknownObjectRetain();
  v10 = String.init(cString:)();
  v12 = v11;

  v13 = sub_1003F30F0(a1, v10, v12, a2, a3);

  swift_unknownObjectRelease();
  if (v13)
  {

    return v13;
  }

  return 0;
}

uint64_t sub_1003F3E80()
{
  v1 = *(v0 + OBJC_IVAR____TtC12wifip2pdCore17NANListenerClient_descriptor);
  swift_unknownObjectRelease();
  v2 = *(v0 + OBJC_IVAR____TtC12wifip2pdCore17NANListenerClient_assign);
  v3 = *(v0 + OBJC_IVAR____TtC12wifip2pdCore17NANListenerClient_assign + 8);

  return sub_100010520(v2);
}

char *NANListenerClient.deinit()
{
  v1 = *(v0 + 2);
  swift_unknownObjectRelease();
  v2 = *(v0 + 4);
  sub_100010520(*(v0 + 3));
  v3 = *(v0 + 5);
  swift_unknownObjectRelease();
  v4 = *(v0 + 7);

  v5 = *(v0 + 10);

  v6 = OBJC_IVAR____TtC12wifip2pdCore14NANAgentClient_id;
  v7 = type metadata accessor for UUID();
  (*(*(v7 - 8) + 8))(&v0[v6], v7);
  v8 = *&v0[OBJC_IVAR____TtC12wifip2pdCore17NANListenerClient_descriptor];
  swift_unknownObjectRelease();
  v9 = *&v0[OBJC_IVAR____TtC12wifip2pdCore17NANListenerClient_assign + 8];
  sub_100010520(*&v0[OBJC_IVAR____TtC12wifip2pdCore17NANListenerClient_assign]);
  return v0;
}

char *NANFlowClient.deinit()
{
  v1 = *(v0 + 2);
  swift_unknownObjectRelease();
  v2 = *(v0 + 4);
  sub_100010520(*(v0 + 3));
  v3 = *(v0 + 5);
  swift_unknownObjectRelease();
  v4 = *(v0 + 7);

  v5 = *(v0 + 10);

  v6 = OBJC_IVAR____TtC12wifip2pdCore14NANAgentClient_id;
  v7 = type metadata accessor for UUID();
  (*(*(v7 - 8) + 8))(&v0[v6], v7);
  v8 = *&v0[OBJC_IVAR____TtC12wifip2pdCore13NANFlowClient_assign + 8];

  return v0;
}

uint64_t NANFlowClient.__deallocating_deinit()
{
  v1 = *(v0 + 2);
  swift_unknownObjectRelease();
  v2 = *(v0 + 4);
  sub_100010520(*(v0 + 3));
  v3 = *(v0 + 5);
  swift_unknownObjectRelease();
  v4 = *(v0 + 7);

  v5 = *(v0 + 10);

  v6 = OBJC_IVAR____TtC12wifip2pdCore14NANAgentClient_id;
  v7 = type metadata accessor for UUID();
  (*(*(v7 - 8) + 8))(&v0[v6], v7);
  v8 = *&v0[OBJC_IVAR____TtC12wifip2pdCore13NANFlowClient_assign + 8];

  v9 = *(*v0 + 48);
  v10 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

char *NANConnectionClient.deinit()
{
  v1 = *(v0 + 2);
  swift_unknownObjectRelease();
  v2 = *(v0 + 4);
  sub_100010520(*(v0 + 3));
  v3 = *(v0 + 5);
  swift_unknownObjectRelease();
  v4 = *(v0 + 7);

  v5 = *(v0 + 10);

  v6 = OBJC_IVAR____TtC12wifip2pdCore14NANAgentClient_id;
  v7 = type metadata accessor for UUID();
  (*(*(v7 - 8) + 8))(&v0[v6], v7);
  v8 = *&v0[OBJC_IVAR____TtC12wifip2pdCore13NANFlowClient_assign + 8];

  v9 = *&v0[OBJC_IVAR____TtC12wifip2pdCore19NANConnectionClient_remote];
  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_1003F41E8()
{
  v1 = *(v0 + OBJC_IVAR____TtC12wifip2pdCore17NANResolverClient_resolve + 8);

  v2 = OBJC_IVAR____TtC12wifip2pdCore17NANResolverClient_endpoint;
  v3 = type metadata accessor for NWEndpoint();
  v4 = *(*(v3 - 8) + 8);

  return v4(v0 + v2, v3);
}

char *NANResolverClient.deinit()
{
  v1 = *(v0 + 2);
  swift_unknownObjectRelease();
  v2 = *(v0 + 4);
  sub_100010520(*(v0 + 3));
  v3 = *(v0 + 5);
  swift_unknownObjectRelease();
  v4 = *(v0 + 7);

  v5 = *(v0 + 10);

  v6 = OBJC_IVAR____TtC12wifip2pdCore14NANAgentClient_id;
  v7 = type metadata accessor for UUID();
  (*(*(v7 - 8) + 8))(&v0[v6], v7);
  v8 = *&v0[OBJC_IVAR____TtC12wifip2pdCore17NANResolverClient_resolve + 8];

  v9 = OBJC_IVAR____TtC12wifip2pdCore17NANResolverClient_endpoint;
  v10 = type metadata accessor for NWEndpoint();
  (*(*(v10 - 8) + 8))(&v0[v9], v10);
  return v0;
}

uint64_t sub_1003F4380()
{
  result = type metadata accessor for UUID();
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

uint64_t sub_1003F460C()
{
  result = type metadata accessor for NWEndpoint();
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

void *sub_1003F46AC(uint64_t a1)
{
  v2 = sub_10005DC58(&qword_10058F4D0, &qword_100491AB0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v23 - v4;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v25 = &v23 - v12;
  v13 = *(a1 + 16);
  v27 = _swiftEmptyArrayStorage;
  sub_1003678E8(0, v13, 0);
  v14 = v27;
  if (v13)
  {
    v15 = a1 + 32;
    v23 = v5;
    v24 = (v7 + 56);
    v16 = (v7 + 32);
    while (1)
    {
      sub_100002B30(v15, v26);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      (*v24)(v5, 0, 1, v6);
      v17 = *v16;
      v18 = v25;
      (*v16)(v25, v5, v6);
      v17(v11, v18, v6);
      v27 = v14;
      v19 = v11;
      v21 = v14[2];
      v20 = v14[3];
      if (v21 >= v20 >> 1)
      {
        sub_1003678E8(v20 > 1, v21 + 1, 1);
        v14 = v27;
      }

      v14[2] = v21 + 1;
      v17(v14 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v21, v19, v6);
      v15 += 32;
      --v13;
      v11 = v19;
      v5 = v23;
      if (!v13)
      {
        return v14;
      }
    }

    (*v24)(v5, 1, 1, v6);
    sub_100016290(v5, &qword_10058F4D0, &qword_100491AB0);
    return 0;
  }

  return v14;
}

uint64_t sub_1003F4970(unsigned __int16 a1)
{
  v2 = a1;
  v3 = OBJC_IVAR____TtC12wifip2pdCore8NANAgent_listenerAdvertiseClients;
  swift_beginAccess();
  v4 = *(v1 + v3);
  v5 = 1 << *(v4 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v4 + 64);
  v8 = (v5 + 63) >> 6;
  v9 = *(v1 + v3);

  v11 = 0;
  v12 = 0;
  if (!v7)
  {
    goto LABEL_6;
  }

  do
  {
LABEL_4:
    while (1)
    {
      v13 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v14 = *(*(v4 + 56) + ((v12 << 9) | (8 * v13)));
      if (*(v14 + 88) == v2)
      {
        break;
      }

      if (!v7)
      {
        goto LABEL_6;
      }
    }

    v11 = v14;
  }

  while (v7);
  while (1)
  {
LABEL_6:
    v15 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
      goto LABEL_32;
    }

    if (v15 >= v8)
    {
      break;
    }

    v7 = *(v4 + 64 + 8 * v15);
    ++v12;
    if (v7)
    {
      v12 = v15;
      goto LABEL_4;
    }
  }

  v16 = OBJC_IVAR____TtC12wifip2pdCore8NANAgent_listenerFlowClients;
  swift_beginAccess();
  v17 = *(v1 + v16);
  v18 = 1 << *(v17 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & *(v17 + 64);
  v21 = (v18 + 63) >> 6;
  v22 = *(v1 + v16);

  v23 = 0;
  v24 = 0;
  if (!v20)
  {
    goto LABEL_17;
  }

  do
  {
LABEL_15:
    while (1)
    {
      v25 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
      v26 = *(*(v17 + 56) + ((v24 << 9) | (8 * v25)));
      if (*(v26 + 88) == v2)
      {
        break;
      }

      if (!v20)
      {
        goto LABEL_17;
      }
    }

    v23 = v26;
  }

  while (v20);
LABEL_17:
  while (1)
  {
    v27 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v27 >= v21)
    {

      if (v11)
      {
        if (v23)
        {
          v28 = *(v23 + OBJC_IVAR____TtC12wifip2pdCore13NANFlowClient_assign + 8);
          v29 = (v11 + OBJC_IVAR____TtC12wifip2pdCore17NANListenerClient_assign);
          v30 = *(v11 + OBJC_IVAR____TtC12wifip2pdCore17NANListenerClient_assign);
          v31 = *(v11 + OBJC_IVAR____TtC12wifip2pdCore17NANListenerClient_assign + 8);
          *v29 = *(v23 + OBJC_IVAR____TtC12wifip2pdCore13NANFlowClient_assign);
          v29[1] = v28;

          v32 = v30;
        }

        else
        {
          v33 = (v11 + OBJC_IVAR____TtC12wifip2pdCore17NANListenerClient_assign);
          v32 = *(v11 + OBJC_IVAR____TtC12wifip2pdCore17NANListenerClient_assign);
          v34 = *(v11 + OBJC_IVAR____TtC12wifip2pdCore17NANListenerClient_assign + 8);
          *v33 = 0;
          v33[1] = 0;
        }

        sub_100010520(v32);

        v35 = Logger.logObject.getter();
        v36 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v35, v36))
        {
          v37 = swift_slowAlloc();
          v38 = swift_slowAlloc();
          v42 = v38;
          *v37 = 136315138;
          v39 = sub_1003F3D58();
          v41 = sub_100002320(v39, v40, &v42);

          *(v37 + 4) = v41;
          _os_log_impl(&_mh_execute_header, v35, v36, "### Updated listener %s", v37, 0xCu);
          sub_100002A00(v38);
        }
      }
    }

    v20 = *(v17 + 64 + 8 * v27);
    ++v24;
    if (v20)
    {
      v24 = v27;
      goto LABEL_15;
    }
  }

LABEL_32:
  __break(1u);
  return result;
}

void sub_1003F4CBC()
{
  v1 = *(v0 + OBJC_IVAR____TtC12wifip2pdCore8NANAgent_nanAgent);
  v2 = swift_allocObject();
  swift_weakInit();
  v10 = sub_1003FCC38;
  v11 = v2;
  v6 = _NSConcreteStackBlock;
  v7 = 1107296256;
  v8 = sub_1003F611C;
  v9 = &unk_100579F18;
  v3 = _Block_copy(&v6);

  v4 = swift_allocObject();
  swift_weakInit();
  v10 = sub_1003FCC40;
  v11 = v4;
  v6 = _NSConcreteStackBlock;
  v7 = 1107296256;
  v8 = sub_1000991C0;
  v9 = &unk_100579F40;
  v5 = _Block_copy(&v6);

  nw_agent_set_browse_handlers();
  _Block_release(v5);
  _Block_release(v3);
}

void sub_1003F4E34(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for WAError.ErrorCode();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v153 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v12 = Strong;
  if (nw_agent_client_copy_browse_descriptor())
  {
    swift_unknownObjectRelease();
    v13 = type metadata accessor for NANBrowserClient(0);
    v14 = *(v13 + 48);
    v15 = *(v13 + 52);
    swift_allocObject();
    swift_unknownObjectRetain();

    v16 = sub_1003F3874(a1, a2, a3);
    if (v16)
    {
      v17 = v16;
      v155 = v10;
      v156 = v7;
      v157 = v6;
      v159 = a1;
      v18 = OBJC_IVAR____TtC12wifip2pdCore8NANAgent_browserClients;
      swift_beginAccess();
      v158 = v12;
      v154 = v18;
      v19 = *(v12 + v18);
      v20 = v19 + 64;
      v21 = 1 << *(v19 + 32);
      v22 = -1;
      if (v21 < 64)
      {
        v22 = ~(-1 << v21);
      }

      v23 = v22 & *(v19 + 64);
      v164 = OBJC_IVAR____TtC12wifip2pdCore16NANBrowserClient_descriptor;
      v160 = (v21 + 63) >> 6;
      v166 = "outOfBandFrameInFlight";
      v162 = 0x80000001004C0A80;

      v24 = 0;
      v161 = xmmword_100480F40;
      v165 = v17;
      v163 = v19;
      while (v23)
      {
LABEL_12:
        v26 = __clz(__rbit64(v23));
        v23 &= v23 - 1;
        v27 = *(*(v19 + 56) + ((v24 << 9) | (8 * v26)));
        v28 = *(v27 + 48) == *(v17 + 48) && *(v27 + 56) == *(v17 + 56);
        if (v28 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          v167 = v27;

          v30 = sub_1003F3454(v29);
          v32 = v31;
          v170 = 0;
          v171 = 0xE000000000000000;
          v33._countAndFlagsBits = 0x7069726373656420;
          v33._object = 0xEC0000003A726F74;
          String.append(_:)(v33);
          v168 = *(v17 + v164);
          sub_10005DC58(&qword_100599FE8, &unk_1004B3288);
          _print_unlocked<A, B>(_:_:)();
          v34 = v170;
          v35 = v171;
          v170 = v30;
          v171 = v32;

          v36._countAndFlagsBits = v34;
          v36._object = v35;
          String.append(_:)(v36);

          v37 = v170;
          v38 = v171;
          v39 = objc_allocWithZone(NSRegularExpression);
          v52 = sub_1003E0818(0xD000000000000021, v166 | 0x8000000000000000, 0);
          v53 = HIBYTE(v38) & 0xF;
          if ((v38 & 0x2000000000000000) == 0)
          {
            v53 = v37;
          }

          v54 = 7;
          if (((v38 >> 60) & ((v37 & 0x800000000000000) == 0)) != 0)
          {
            v54 = 11;
          }

          v170 = 15;
          v171 = v54 | (v53 << 16);
          v168 = v37;
          v169 = v38;

          sub_10005DC58(&qword_100598968, &qword_1004B2870);
          sub_1003FCC48();
          sub_10005E2E4();
          v55 = _NSRange.init<A, B>(_:in:)();
          v57 = v56;
          v58 = String._bridgeToObjectiveC()();
          v51 = [v52 firstMatchInString:v58 options:0 range:{v55, v57}];

          if (!v51)
          {
            v40 = sub_1003F39A8();
            v42 = v41;
            v43 = objc_allocWithZone(NSRegularExpression);
            v44 = sub_1003E0818(0xD000000000000021, v166 | 0x8000000000000000, 0);
            v45 = HIBYTE(v42) & 0xF;
            if ((v42 & 0x2000000000000000) == 0)
            {
              v45 = v40;
            }

            v46 = 7;
            if (((v42 >> 60) & ((v40 & 0x800000000000000) == 0)) != 0)
            {
              v46 = 11;
            }

            v170 = 15;
            v171 = v46 | (v45 << 16);
            v168 = v40;
            v169 = v42;

            sub_10005DC58(&qword_100598968, &qword_1004B2870);
            sub_1003FCC48();
            sub_10005E2E4();
            v47 = _NSRange.init<A, B>(_:in:)();
            v49 = v48;
            v50 = String._bridgeToObjectiveC()();
            v51 = [v44 firstMatchInString:v50 options:0 range:{v47, v49}];

            if (!v51)
            {
              v132 = v167;

              v133 = v165;

              v134 = v158;
              v135 = Logger.logObject.getter();
              v136 = static os_log_type_t.default.getter();

              v137 = os_log_type_enabled(v135, v136);
              v138 = v157;
              v139 = v156;
              if (v137)
              {
                v140 = swift_slowAlloc();
                v166 = swift_slowAlloc();
                v170 = v166;
                *v140 = 136315650;
                v141 = *(v132 + 48);
                v142 = *(v132 + 56);

                v143 = sub_100002320(v141, v142, &v170);

                *(v140 + 4) = v143;
                *(v140 + 12) = 2080;
                v144 = *(v167 + 72);
                v145 = *(v167 + 80);

                v146 = sub_100002320(v144, v145, &v170);

                *(v140 + 14) = v146;
                *(v140 + 22) = 2080;
                v147 = *(v133 + 72);
                v148 = *(v133 + 80);

                v149 = sub_100002320(v147, v148, &v170);

                *(v140 + 24) = v149;
                _os_log_impl(&_mh_execute_header, v135, v136, "### Duplicate Service %s found for %s. Rejecting %s", v140, 0x20u);
                swift_arrayDestroy();
              }

              v150 = v155;
              (*(v139 + 104))(v155, enum case for WAError.ErrorCode.serviceAlreadySubscribing(_:), v138);
              v151 = WAError.ErrorCode.rawValue.getter();
              (*(v139 + 8))(v150, v138);
              if (v151 < 0xFFFFFFFF80000000)
              {
                goto LABEL_89;
              }

              if (v151 > 0x7FFFFFFF)
              {
                goto LABEL_90;
              }

              if (nw_error_create_error_with_inferred_domain())
              {
                v152 = *(v134 + OBJC_IVAR____TtC12wifip2pdCore8NANAgent_nanAgent);
                swift_unknownObjectRetain();
                nw_agent_send_error_response();

                swift_unknownObjectRelease_n();
                goto LABEL_83;
              }

              goto LABEL_95;
            }
          }

          v19 = v163;

          v17 = v165;
        }
      }

      while (1)
      {
        v25 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
          __break(1u);
          goto LABEL_86;
        }

        if (v25 >= v160)
        {
          break;
        }

        v23 = *(v20 + 8 * v25);
        ++v24;
        if (v23)
        {
          v24 = v25;
          goto LABEL_12;
        }
      }

      v92 = v158;
      sub_10002B154(v158 + OBJC_IVAR____TtC12wifip2pdCore8NANAgent_user, &v170);
      v93 = v172;
      v94 = v173;
      sub_100029B34(&v170, v172);
      v95 = (*(v94 + 8))(v17, v93, v94);
      sub_100002A00(&v170);
      if (!v95)
      {
        v106 = v17;

        v107 = Logger.logObject.getter();
        v108 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v107, v108))
        {
          v109 = swift_slowAlloc();
          v110 = swift_slowAlloc();
          v170 = v110;
          *v109 = 136315138;
          v111 = sub_1003F39A8();
          v113 = sub_100002320(v111, v112, &v170);

          *(v109 + 4) = v113;
          _os_log_impl(&_mh_execute_header, v107, v108, "### Start browse request from %s", v109, 0xCu);
          sub_100002A00(v110);
        }

        v114 = [v159 hash];
        v115 = v154;
        swift_beginAccess();

        v116 = *(v92 + v115);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v168 = *(v92 + v115);
        *(v92 + v115) = 0x8000000000000000;
        sub_1003E3018(v106, v114, isUniquelyReferenced_nonNull_native);
        *(v92 + v115) = v168;
        swift_endAccess();

        goto LABEL_83;
      }

      if (v95 == 255)
      {
        goto LABEL_54;
      }

      v118 = Logger.logObject.getter();
      v119 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v118, v119))
      {
        v120 = swift_slowAlloc();
        *v120 = 67109120;
        *(v120 + 4) = v95;
        _os_log_impl(&_mh_execute_header, v118, v119, "### Failed to Start browse: error%d", v120, 8u);
      }

      v121 = *(v92 + OBJC_IVAR____TtC12wifip2pdCore8NANAgent_nanAgent);
      swift_unknownObjectRetain();
      if (nw_error_create_error_with_inferred_domain())
      {
LABEL_72:
        nw_agent_send_error_response();

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
LABEL_83:

        return;
      }

LABEL_94:
      __break(1u);
LABEL_95:
      __break(1u);
      goto LABEL_96;
    }

    v96 = *(v12 + OBJC_IVAR____TtC12wifip2pdCore8NANAgent_nanAgent);
    (*(v7 + 104))(v10, enum case for WAError.ErrorCode.error(_:), v6);
    swift_unknownObjectRetain();
    v97 = WAError.ErrorCode.rawValue.getter();
    (*(v7 + 8))(v10, v6);
    if (v97 >= 0xFFFFFFFF80000000)
    {
      if (v97 <= 0x7FFFFFFF)
      {
        if (nw_error_create_error_with_inferred_domain())
        {
          nw_agent_send_error_response();

          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          return;
        }

        goto LABEL_93;
      }

      goto LABEL_88;
    }

LABEL_87:
    __break(1u);
LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
    goto LABEL_91;
  }

  if (!nw_agent_client_copy_advertise_descriptor())
  {
    goto LABEL_83;
  }

  swift_unknownObjectRelease();
  v59 = type metadata accessor for NANListenerClient(0);
  v60 = *(v59 + 48);
  v61 = *(v59 + 52);
  swift_allocObject();
  swift_unknownObjectRetain();

  v62 = sub_1003F3C0C(a1, a2, a3);
  if (!v62)
  {
    goto LABEL_83;
  }

  v63 = v62;
  v155 = v10;
  v156 = v7;
  v157 = v6;
  v159 = a1;
  v64 = OBJC_IVAR____TtC12wifip2pdCore8NANAgent_listenerAdvertiseClients;
  swift_beginAccess();
  v65 = 0;
  v66 = v12;
  v67 = *(v12 + v64);
  v68 = 1 << *(v67 + 32);
  v69 = -1;
  if (v68 < 64)
  {
    v69 = ~(-1 << v68);
  }

  v70 = v69 & *(v67 + 64);
  v71 = (v68 + 63) >> 6;
  while (v70)
  {
LABEL_41:
    v73 = *(*(v67 + 56) + ((v65 << 9) | (8 * __clz(__rbit64(v70)))));
    if (v73[6] != *(v63 + 48) || v73[7] != *(v63 + 56))
    {
      v70 &= v70 - 1;
      if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        continue;
      }
    }

    v75 = Logger.logObject.getter();
    v76 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      v167 = swift_slowAlloc();
      v170 = v167;
      *v77 = 136315650;
      v78 = v73[6];
      v79 = v73[7];

      v80 = sub_100002320(v78, v79, &v170);

      *(v77 + 4) = v80;
      *(v77 + 12) = 2080;
      v81 = v73[9];
      v82 = v73[10];

      v83 = sub_100002320(v81, v82, &v170);

      *(v77 + 14) = v83;
      *(v77 + 22) = 2080;
      v84 = *(v63 + 72);
      v85 = *(v63 + 80);

      v86 = sub_100002320(v84, v85, &v170);

      *(v77 + 24) = v86;
      _os_log_impl(&_mh_execute_header, v75, v76, "### Duplicate Service %s found for %s. Rejecting %s", v77, 0x20u);
      swift_arrayDestroy();
    }

    v87 = v157;
    v88 = v156;
    v89 = v155;
    (*(v156 + 104))(v155, enum case for WAError.ErrorCode.serviceAlreadyPublishing(_:), v157);
    v90 = WAError.ErrorCode.rawValue.getter();
    (*(v88 + 8))(v89, v87);
    if (v90 >= 0xFFFFFFFF80000000)
    {
      if (v90 <= 0x7FFFFFFF)
      {
        if (!nw_error_create_error_with_inferred_domain())
        {
          goto LABEL_97;
        }

        v91 = *(v66 + OBJC_IVAR____TtC12wifip2pdCore8NANAgent_nanAgent);
        swift_unknownObjectRetain();
        nw_agent_send_error_response();

        swift_unknownObjectRelease_n();
        goto LABEL_83;
      }

      goto LABEL_92;
    }

LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
LABEL_93:
    __break(1u);
    goto LABEL_94;
  }

  while (1)
  {
    v72 = v65 + 1;
    if (__OFADD__(v65, 1))
    {
LABEL_86:
      __break(1u);
      goto LABEL_87;
    }

    if (v72 >= v71)
    {
      break;
    }

    v70 = *(v67 + 64 + 8 * v72);
    ++v65;
    if (v70)
    {
      v65 = v72;
      goto LABEL_41;
    }
  }

  v98 = v66;
  sub_10002B154(v66 + OBJC_IVAR____TtC12wifip2pdCore8NANAgent_user, &v170);
  v99 = v172;
  v100 = v173;
  sub_100029B34(&v170, v172);
  v101 = (*(v100 + 24))(v63, v99, v100);
  sub_100002A00(&v170);
  if (!v101)
  {

    v122 = Logger.logObject.getter();
    v123 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v122, v123))
    {
      v124 = swift_slowAlloc();
      v125 = swift_slowAlloc();
      v170 = v125;
      *v124 = 136315138;
      v126 = sub_1003F3D58();
      v128 = sub_100002320(v126, v127, &v170);

      *(v124 + 4) = v128;
      v98 = v66;
      _os_log_impl(&_mh_execute_header, v122, v123, "### Start listener advertise request from %s", v124, 0xCu);
      sub_100002A00(v125);
    }

    v129 = [v159 hash];
    swift_beginAccess();

    v130 = *(v98 + v64);
    v131 = swift_isUniquelyReferenced_nonNull_native();
    v168 = *(v98 + v64);
    *(v98 + v64) = 0x8000000000000000;
    sub_1003E2FD8(v63, v129, v131);
    *(v98 + v64) = v168;
    swift_endAccess();
    sub_1003F4970(*(v63 + 88));
    goto LABEL_54;
  }

  if (v101 == 255)
  {
LABEL_54:

    goto LABEL_83;
  }

  v102 = Logger.logObject.getter();
  v103 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v102, v103))
  {
    v104 = swift_slowAlloc();
    *v104 = 67109120;
    *(v104 + 4) = v101;
    _os_log_impl(&_mh_execute_header, v102, v103, "### Failed to Start Publish: error[%d]", v104, 8u);
  }

  v105 = *(v66 + OBJC_IVAR____TtC12wifip2pdCore8NANAgent_nanAgent);
  swift_unknownObjectRetain();
  if (nw_error_create_error_with_inferred_domain())
  {
    goto LABEL_72;
  }

LABEL_96:
  __break(1u);
LABEL_97:
  __break(1u);
}

void sub_1003F6140(void *a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = [a1 hash];
    v5 = OBJC_IVAR____TtC12wifip2pdCore8NANAgent_browserClients;
    swift_beginAccess();
    v6 = *(v3 + v5);
    if (*(v6 + 16) && (v7 = sub_100085268(v4), (v8 & 1) != 0))
    {
      v65 = a1;
      v9 = *(*(v6 + 56) + 8 * v7);
      v10 = OBJC_IVAR____TtC12wifip2pdCore8NANAgent_resolveClients;
      swift_beginAccess();
      v11 = *(v3 + v10);
      v12 = 1 << *(v11 + 32);
      v13 = -1;
      if (v12 < 64)
      {
        v13 = ~(-1 << v12);
      }

      v14 = v13 & *(v11 + 64);
      v15 = OBJC_IVAR____TtC12wifip2pdCore8NANAgent_logger;
      v64 = OBJC_IVAR____TtC12wifip2pdCore16NANBrowserClient_descriptor;
      v16 = (v12 + 63) >> 6;

      oslog = 0;
      v17 = 0;
      while (v14)
      {
LABEL_12:
        v19 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
        v20 = *(*(v11 + 56) + ((v17 << 9) | (8 * v19)));
        if (*(v20 + 64) == *(v9 + 64))
        {
          v21 = *(v20 + 48) == *(v9 + 48) && *(v20 + 56) == *(v9 + 56);
          if (v21 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            v63 = v15;
            osloga = Logger.logObject.getter();
            v22 = static os_log_type_t.default.getter();

            v61 = v22;
            if (os_log_type_enabled(osloga, v22))
            {
              buf = swift_slowAlloc();
              v55 = swift_slowAlloc();
              v69 = v55;
              *buf = 136315394;
              v54 = sub_1003F3454(v55);
              v57 = v23;
              v70 = 0;
              v71 = 0xE000000000000000;
              v24._countAndFlagsBits = 0x7069726373656420;
              v24._object = 0xEC0000003A726F74;
              String.append(_:)(v24);
              v68 = *(v9 + v64);
              sub_10005DC58(&qword_100599FE8, &unk_1004B3288);
              _print_unlocked<A, B>(_:_:)();
              v53 = v70;
              v56 = v71;
              v70 = v54;
              v71 = v57;

              v25._countAndFlagsBits = v53;
              v25._object = v56;
              String.append(_:)(v25);

              v58 = sub_100002320(v70, v71, &v69);

              *(buf + 4) = v58;
              *(buf + 6) = 2080;
              v26 = *(v20 + 56);
              v59 = *(v20 + 48);

              v60 = sub_100002320(v59, v26, &v69);

              *(buf + 14) = v60;
              _os_log_impl(&_mh_execute_header, osloga, v61, "### Resolve Pending %s %s", buf, 0x16u);
              swift_arrayDestroy();
            }

            else
            {
            }

            oslog = 1;
            v15 = v63;
          }
        }
      }

      while (1)
      {
        v18 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          __break(1u);
          return;
        }

        if (v18 >= v16)
        {
          break;
        }

        v14 = *(v11 + 64 + 8 * v18);
        ++v17;
        if (v14)
        {
          v17 = v18;
          goto LABEL_12;
        }
      }

      v43 = Logger.logObject.getter();
      v44 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        v70 = v46;
        *v45 = 136315138;
        v47 = sub_1003F39A8();
        v49 = sub_100002320(v47, v48, &v70);

        *(v45 + 4) = v49;
        _os_log_impl(&_mh_execute_header, v43, v44, "### Stop browse request from %s", v45, 0xCu);
        sub_100002A00(v46);
      }

      sub_10002B154(v3 + OBJC_IVAR____TtC12wifip2pdCore8NANAgent_user, &v70);
      v50 = v72;
      v51 = v73;
      sub_100029B34(&v70, v72);
      (*(v51 + 16))(v9, oslog & 1, v50, v51);
      sub_100002A00(&v70);
      v52 = [v65 hash];
      swift_beginAccess();
      sub_100338F50(0, v52);
    }

    else
    {
      v27 = [a1 hash];
      v28 = OBJC_IVAR____TtC12wifip2pdCore8NANAgent_listenerAdvertiseClients;
      swift_beginAccess();
      v29 = *(v3 + v28);
      if (!*(v29 + 16))
      {
        goto LABEL_32;
      }

      v30 = sub_100085268(v27);
      if ((v31 & 1) == 0)
      {
        goto LABEL_32;
      }

      v32 = *(*(v29 + 56) + 8 * v30);

      v33 = Logger.logObject.getter();
      v34 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v70 = v36;
        *v35 = 136315138;
        v37 = sub_1003F3D58();
        v39 = sub_100002320(v37, v38, &v70);

        *(v35 + 4) = v39;
        _os_log_impl(&_mh_execute_header, v33, v34, "### Stop listener advertise request from %s", v35, 0xCu);
        sub_100002A00(v36);
      }

      sub_10002B154(v3 + OBJC_IVAR____TtC12wifip2pdCore8NANAgent_user, &v70);
      v40 = v72;
      v41 = v73;
      sub_100029B34(&v70, v72);
      (*(v41 + 32))(v32, v40, v41);
      sub_100002A00(&v70);
      v42 = [a1 hash];
      swift_beginAccess();
      sub_100338F90(0, v42);
    }

    swift_endAccess();

LABEL_32:
  }
}

void sub_1003F6870()
{
  v1 = *(v0 + OBJC_IVAR____TtC12wifip2pdCore8NANAgent_nanAgent);
  v2 = swift_allocObject();
  swift_weakInit();
  v10 = sub_1003FCBF0;
  v11 = v2;
  v6 = _NSConcreteStackBlock;
  v7 = 1107296256;
  v8 = sub_1003F76EC;
  v9 = &unk_100579E78;
  v3 = _Block_copy(&v6);

  v4 = swift_allocObject();
  swift_weakInit();
  v10 = sub_1003FCBF8;
  v11 = v4;
  v6 = _NSConcreteStackBlock;
  v7 = 1107296256;
  v8 = sub_1000991C0;
  v9 = &unk_100579EA0;
  v5 = _Block_copy(&v6);

  nw_agent_set_flow_handlers_with_result();
  _Block_release(v5);
  _Block_release(v3);
}

void sub_1003F69F8(void *a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return;
  }

  swift_unknownObjectRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v110[0] = v9;
    *v8 = 136315138;
    v111[0] = 0;
    v111[1] = 0xE000000000000000;
    _print_unlocked<A, B>(_:_:)();
    v10 = sub_100002320(0, 0xE000000000000000, v110);

    *(v8 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v6, v7, "### Start Flow handler callback: Client %s", v8, 0xCu);
    sub_100002A00(v9);
  }

  if (nw_agent_client_copy_path())
  {
    if (nw_path_is_listener())
    {
      v11 = type metadata accessor for NANFlowClient(0);
      v12 = *(v11 + 48);
      v13 = *(v11 + 52);
      v14 = (swift_allocObject() + OBJC_IVAR____TtC12wifip2pdCore13NANFlowClient_assign);
      *v14 = a2;
      v14[1] = a3;
      swift_unknownObjectRetain();

      v15 = sub_1003F30F0(a1, 0, 0xE000000000000000, 0, 0);
      if (v15)
      {
        v16 = v15;

        v17 = Logger.logObject.getter();
        v18 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v17, v18))
        {
          v19 = swift_slowAlloc();
          v20 = swift_slowAlloc();
          v111[0] = v20;
          *v19 = 136315138;
          v21 = (*(*v16 + 176))();
          v23 = sub_100002320(v21, v22, v111);

          *(v19 + 4) = v23;
          _os_log_impl(&_mh_execute_header, v17, v18, "### Start listener flow request from %s", v19, 0xCu);
          sub_100002A00(v20);
        }

        v24 = [a1 hash];
        v25 = OBJC_IVAR____TtC12wifip2pdCore8NANAgent_listenerFlowClients;
        swift_beginAccess();

        v26 = *(Strong + v25);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v110[0] = *(Strong + v25);
        *(Strong + v25) = 0x8000000000000000;
        sub_1003E3098(v16, v24, isUniquelyReferenced_nonNull_native);
        *(Strong + v25) = v110[0];
        swift_endAccess();
        sub_1003F4970(v16[44]);
        swift_unknownObjectRelease();

        return;
      }

      goto LABEL_57;
    }

    swift_unknownObjectRelease();
  }

  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&_mh_execute_header, v28, v29, "### Start connection flow request", v30, 2u);
  }

  v31 = nw_agent_client_copy_endpoint();
  if (v31)
  {
    v32 = v31;
    nw_endpoint_copy_address_string(v31);
    v33 = String.init(cString:)();
    v35 = v34;
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.default.getter();
    v106 = v33;
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v111[0] = v39;
      *v38 = 136315138;
      *(v38 + 4) = sub_100002320(v33, v35, v111);
      _os_log_impl(&_mh_execute_header, v36, v37, "### Remote address: %s", v38, 0xCu);
      sub_100002A00(v39);
    }

    v40 = type metadata accessor for NANConnectionClient(0);
    v41 = *(v40 + 48);
    v42 = *(v40 + 52);
    v43 = swift_allocObject();
    *(v43 + OBJC_IVAR____TtC12wifip2pdCore19NANConnectionClient_remote) = v32;
    v44 = (v43 + OBJC_IVAR____TtC12wifip2pdCore13NANFlowClient_assign);
    *v44 = a2;
    v44[1] = a3;
    swift_retain_n();
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v45 = sub_1003F30F0(a1, 0, 0xE000000000000000, 0, 0);

    if (!v45)
    {

      v62 = Logger.logObject.getter();
      v63 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v62, v63))
      {
        v64 = swift_slowAlloc();
        *v64 = 0;
        _os_log_impl(&_mh_execute_header, v62, v63, "### Failed to create connection client", v64, 2u);
      }

      goto LABEL_58;
    }

    v107 = v35;

    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v111[0] = v49;
      *v48 = 136315138;
      v50 = sub_1003F3454(v49);
      v52 = sub_100002320(v50, v51, v111);

      *(v48 + 4) = v52;
      _os_log_impl(&_mh_execute_header, v46, v47, "### Start connection client%s", v48, 0xCu);
      sub_100002A00(v49);
    }

    sub_10002B154(Strong + OBJC_IVAR____TtC12wifip2pdCore8NANAgent_user, v111);
    v53 = v112;
    v54 = v113;
    sub_100029B34(v111, v112);
    v55 = (*(v54 + 56))(v45, v32, v53, v54);
    sub_100002A00(v111);
    if (v55)
    {

      v56 = Logger.logObject.getter();
      v57 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        *v58 = 0;
        _os_log_impl(&_mh_execute_header, v56, v57, "### Agent user returned false", v58, 2u);
      }

LABEL_57:

LABEL_58:
      swift_unknownObjectRelease();
      return;
    }

    v103 = v45;
    v65 = OBJC_IVAR____TtC12wifip2pdCore8NANAgent_connectionClients;
    swift_beginAccess();
    v102 = v65;
    v66 = *(Strong + v65);
    v69 = *(v66 + 64);
    v68 = v66 + 64;
    v67 = v69;
    v70 = 1 << *(*(Strong + v65) + 32);
    v71 = -1;
    if (v70 < 64)
    {
      v71 = ~(-1 << v70);
    }

    v72 = v71 & v67;
    v73 = (v70 + 63) >> 6;
    v105 = *(Strong + v65);

    v104 = 0;
    v74 = 0;
    v75 = v35;
    if (!v72)
    {
      while (1)
      {
LABEL_33:
        v76 = v74 + 1;
        if (__OFADD__(v74, 1))
        {
          __break(1u);
          return;
        }

        if (v76 >= v73)
        {
          break;
        }

        v72 = *(v68 + 8 * v76);
        ++v74;
        if (v72)
        {
          v74 = v76;
          goto LABEL_37;
        }
      }

      if (v104)
      {

        goto LABEL_58;
      }

      swift_unknownObjectRetain_n();
      swift_unknownObjectRetain();

      v87 = Logger.logObject.getter();
      v88 = static os_log_type_t.default.getter();
      swift_unknownObjectRelease();

      if (os_log_type_enabled(v87, v88))
      {
        v89 = swift_slowAlloc();
        v90 = swift_slowAlloc();
        v110[0] = v90;
        *v89 = 136315650;
        v91 = sub_1003F3454(v90);
        v93 = sub_100002320(v91, v92, v110);

        *(v89 + 4) = v93;
        *(v89 + 12) = 2048;
        v94 = [a1 hash];
        swift_unknownObjectRelease();
        *(v89 + 14) = v94;
        swift_unknownObjectRelease();
        *(v89 + 22) = 2080;
        swift_unknownObjectRetain();
        sub_10005DC58(&qword_100599FE0, &qword_1004B3280);
        v95 = String.init<A>(describing:)();
        v97 = sub_100002320(v95, v96, v110);

        *(v89 + 24) = v97;
        _os_log_impl(&_mh_execute_header, v87, v88, "### Start connection request from %s %ld remote endpoint:%s", v89, 0x20u);
        swift_arrayDestroy();
      }

      else
      {

        swift_unknownObjectRelease_n();
      }

      v98 = v102;
      v99 = [a1 hash];
      swift_beginAccess();

      v100 = *(Strong + v98);
      v101 = swift_isUniquelyReferenced_nonNull_native();
      v109 = *(Strong + v98);
      *(Strong + v98) = 0x8000000000000000;
      sub_1003E3058(v103, v99, v101);
      *(Strong + v98) = v109;
      swift_endAccess();

      goto LABEL_57;
    }

    while (1)
    {
LABEL_37:
      while (1)
      {
        v77 = (v74 << 9) | (8 * __clz(__rbit64(v72)));
        v78 = *(*(v105 + 48) + v77);
        v72 &= v72 - 1;
        v79 = *(*(*(v105 + 56) + v77) + OBJC_IVAR____TtC12wifip2pdCore19NANConnectionClient_remote);
        swift_retain_n();
        nw_endpoint_copy_address_string(v79);
        if (v106 != String.init(cString:)() || v75 != v80)
        {
          break;
        }

LABEL_44:
        v83 = [a1 hash];

        if (v83 != v78)
        {
          goto LABEL_45;
        }

        v84 = Logger.logObject.getter();
        v85 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v84, v85))
        {
          v86 = swift_slowAlloc();
          *v86 = 0;
          _os_log_impl(&_mh_execute_header, v84, v85, "### Connection already exists", v86, 2u);
        }

        v104 = 1;
        v75 = v107;
        if (!v72)
        {
          goto LABEL_33;
        }
      }

      v82 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v82)
      {
        goto LABEL_44;
      }

LABEL_45:

      v75 = v107;
      if (!v72)
      {
        goto LABEL_33;
      }
    }
  }

  v59 = Logger.logObject.getter();
  v60 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v59, v60))
  {
    v61 = swift_slowAlloc();
    *v61 = 0;
    _os_log_impl(&_mh_execute_header, v59, v60, "### No remote endpoint present", v61, 2u);
  }
}

void sub_1003F7710(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, uint64_t a11)
{
  v12 = a6;
  if (a8)
  {
    aBlock[4] = a8;
    aBlock[5] = a9;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1003F7830;
    aBlock[3] = &unk_100579EF0;
    v20 = a7;
    v18 = _Block_copy(aBlock);

    v12 = a6;
    a7 = v20;
  }

  else
  {
    v18 = 0;
  }

  (*(a11 + 16))(a11, a1, a2, a3, a4, a5, v12, a7, v18, a10);
  _Block_release(v18);
}

uint64_t sub_1003F7830(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v6(a2, a3);
}

uint64_t sub_1003F7890(void *a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;
    swift_unknownObjectRetain_n();
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v44 = v7;
      *v6 = 136315394;
      v40[0] = 0;
      v40[1] = 0xE000000000000000;
      v43 = a1;
      _print_unlocked<A, B>(_:_:)();
      v8 = sub_100002320(0, 0xE000000000000000, &v44);

      *(v6 + 4) = v8;
      *(v6 + 12) = 2048;
      v9 = [a1 hash];
      swift_unknownObjectRelease();
      *(v6 + 14) = v9;
      swift_unknownObjectRelease();
      _os_log_impl(&_mh_execute_header, v4, v5, "### Stop Flow handler callback: Client %s %ld", v6, 0x16u);
      sub_100002A00(v7);
    }

    else
    {

      swift_unknownObjectRelease_n();
    }

    v10 = [a1 hash];
    v11 = OBJC_IVAR____TtC12wifip2pdCore8NANAgent_listenerFlowClients;
    swift_beginAccess();
    v12 = *(v3 + v11);
    if (*(v12 + 16) && (v13 = sub_100085268(v10), (v14 & 1) != 0))
    {
      v15 = *(*(v12 + 56) + 8 * v13);

      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v40[0] = v19;
        *v18 = 136315138;
        v20 = (*(*v15 + 176))(v19);
        v22 = sub_100002320(v20, v21, v40);

        *(v18 + 4) = v22;
        _os_log_impl(&_mh_execute_header, v16, v17, "### Stop listener flow request from %s", v18, 0xCu);
        sub_100002A00(v19);
      }

      v23 = [a1 hash];
      swift_beginAccess();
      sub_100338FD0(0, v23);
      swift_endAccess();
      sub_1003F4970(v15[44]);
    }

    else
    {
      v24 = [a1 hash];
      v25 = OBJC_IVAR____TtC12wifip2pdCore8NANAgent_connectionClients;
      swift_beginAccess();
      v26 = *(v3 + v25);
      if (*(v26 + 16))
      {
        v27 = sub_100085268(v24);
        if (v28)
        {
          v29 = *(*(v26 + 56) + 8 * v27);

          v30 = Logger.logObject.getter();
          v31 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v30, v31))
          {
            v32 = swift_slowAlloc();
            v33 = swift_slowAlloc();
            v40[0] = v33;
            *v32 = 136315138;
            v34 = sub_1003F3454(v33);
            v36 = sub_100002320(v34, v35, v40);

            *(v32 + 4) = v36;
            _os_log_impl(&_mh_execute_header, v30, v31, "### Stop connection flow request from %s", v32, 0xCu);
            sub_100002A00(v33);
          }

          sub_10002B154(v3 + OBJC_IVAR____TtC12wifip2pdCore8NANAgent_user, v40);
          v37 = v41;
          v38 = v42;
          sub_100029B34(v40, v41);
          (*(v38 + 64))(v29, 0, 0, v37, v38);
          sub_100002A00(v40);
          v39 = [a1 hash];
          swift_beginAccess();
          sub_100339010(0, v39);
          swift_endAccess();
        }
      }
    }
  }

  return result;
}

void sub_1003F7DB4()
{
  v1 = *(v0 + OBJC_IVAR____TtC12wifip2pdCore8NANAgent_nanAgent);
  v2 = swift_allocObject();
  swift_weakInit();
  v10 = sub_1003FC9D0;
  v11 = v2;
  v6 = _NSConcreteStackBlock;
  v7 = 1107296256;
  v8 = sub_1003F611C;
  v9 = &unk_100579E00;
  v3 = _Block_copy(&v6);

  v4 = swift_allocObject();
  swift_weakInit();
  v10 = sub_1003FC9D8;
  v11 = v4;
  v6 = _NSConcreteStackBlock;
  v7 = 1107296256;
  v8 = sub_1000991C0;
  v9 = &unk_100579E28;
  v5 = _Block_copy(&v6);

  nw_agent_add_resolve_handlers();
  _Block_release(v5);
  _Block_release(v3);
}

void sub_1003F7F34(void *a1, _DWORD *a2, uint64_t a3)
{
  v6 = sub_10005DC58(&qword_1005989E0, &qword_1004B28E0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v86 - v8;
  v10 = type metadata accessor for NWEndpoint();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v15 = &v86 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v86 - v16;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v19 = Strong;
    v20 = nw_agent_client_copy_endpoint();
    if (v20)
    {
      v21 = v20;
      swift_unknownObjectRetain();
      NWEndpoint.init(_:)();
      if ((*(v11 + 48))(v9, 1, v10) == 1)
      {
        sub_100016290(v9, &qword_1005989E0, &qword_1004B28E0);
        if (nw_error_create_error_with_inferred_domain())
        {
          v22 = *(v19 + OBJC_IVAR____TtC12wifip2pdCore8NANAgent_nanAgent);
          nw_agent_send_error_response();

          swift_unknownObjectRelease();
LABEL_8:
          swift_unknownObjectRelease();
          return;
        }

LABEL_39:
        __break(1u);
        return;
      }

      v96 = a3;
      v97 = a2;
      v98 = a1;
      v99 = v11;
      v101 = v21;
      v102 = v17;
      v24 = *(v11 + 32);
      v100 = v10;
      v24(v17, v9, v10);
      v25 = OBJC_IVAR____TtC12wifip2pdCore8NANAgent_resolveClients;
      swift_beginAccess();
      v93 = v25;
      v26 = *(v19 + v25);
      v27 = 1 << *(v26 + 32);
      v28 = -1;
      if (v27 < 64)
      {
        v28 = ~(-1 << v27);
      }

      v29 = v28 & *(v26 + 64);
      v95 = OBJC_IVAR____TtC12wifip2pdCore8NANAgent_logger;
      v30 = (v27 + 63) >> 6;

      v31 = 0;
      v32 = 0;
      *&v33 = 136315138;
      v94 = v33;
      while (1)
      {
        v34 = v32;
        if (!v29)
        {
          break;
        }

LABEL_17:
        v35 = __clz(__rbit64(v29));
        v29 &= v29 - 1;
        v36 = *(*(v26 + 56) + ((v32 << 9) | (8 * v35)));

        if (static NWEndpoint.== infix(_:_:)())
        {

          v92 = Logger.logObject.getter();
          v37 = static os_log_type_t.default.getter();

          v91 = v37;
          if (os_log_type_enabled(v92, v37))
          {
            v38 = swift_slowAlloc();
            v90 = v38;
            v39 = swift_slowAlloc();
            v88 = v39;
            v107 = v39;
            *v38 = v94;
            v87 = sub_1003F3454(v39);
            v89 = v40;
            v103 = 0;
            v104 = 0xE000000000000000;
            v41._countAndFlagsBits = 0x6E696F70646E6520;
            v41._object = 0xEA00000000003A74;
            String.append(_:)(v41);
            _print_unlocked<A, B>(_:_:)();
            v42 = v104;
            v86 = v103;
            v103 = v87;
            v104 = v89;

            v43._countAndFlagsBits = v86;
            v43._object = v42;
            String.append(_:)(v43);

            v44 = sub_100002320(v103, v104, &v107);

            v45 = v90;
            *(v90 + 1) = v44;
            v46 = v92;
            _os_log_impl(&_mh_execute_header, v92, v91, "### Resolve for client %s in progress", v45, 0xCu);
            sub_100002A00(v88);
          }

          else
          {
          }

          v31 = 1;
        }

        else
        {
        }
      }

      while (1)
      {
        v32 = v34 + 1;
        if (__OFADD__(v34, 1))
        {
          break;
        }

        if (v32 >= v30)
        {

          if (v31)
          {
            (v99[1])(v102, v100);

            goto LABEL_8;
          }

          nw_endpoint_get_bonjour_service_type(v101);
          v47 = String.init(cString:)();
          v92 = v48;
          v50 = v99;
          v49 = v100;
          v51 = v99[2];
          v52 = v102;
          v51(v15, v102, v100);
          v53 = type metadata accessor for NANResolverClient(0);
          v54 = *(v53 + 48);
          v55 = *(v53 + 52);
          v56 = swift_allocObject();
          v57 = (v56 + OBJC_IVAR____TtC12wifip2pdCore17NANResolverClient_resolve);
          v58 = v96;
          *v57 = v97;
          v57[1] = v58;
          v51((v56 + OBJC_IVAR____TtC12wifip2pdCore17NANResolverClient_endpoint), v15, v49);
          v59 = v49;

          v60 = swift_unknownObjectRetain();
          v61 = sub_1003F30F0(v60, v47, v92, 0, 0);
          v62 = v50[1];
          v62(v15, v59);
          if (!v61)
          {
            v62(v52, v59);
            swift_unknownObjectRelease();

            return;
          }

          v63 = v52;
          sub_10002B154(v19 + OBJC_IVAR____TtC12wifip2pdCore8NANAgent_user, &v103);
          v64 = v105;
          v65 = v106;
          sub_100029B34(&v103, v105);
          v66 = (*(v65 + 40))(v61, v64, v65);
          sub_100002A00(&v103);
          if (v66 != 255)
          {
            if (!v66)
            {

              v67 = Logger.logObject.getter();
              v68 = static os_log_type_t.default.getter();

              if (os_log_type_enabled(v67, v68))
              {
                v69 = swift_slowAlloc();
                v97 = v69;
                v70 = swift_slowAlloc();
                v99 = v70;
                v107 = v70;
                *v69 = v94;
                v96 = sub_1003F3454(v70);
                v72 = v71;
                v103 = 0;
                v104 = 0xE000000000000000;
                v73._countAndFlagsBits = 0x6E696F70646E6520;
                v73._object = 0xEA00000000003A74;
                String.append(_:)(v73);
                _print_unlocked<A, B>(_:_:)();
                v74 = v104;
                v95 = v103;
                v103 = v96;
                v104 = v72;

                v75._countAndFlagsBits = v95;
                v75._object = v74;
                String.append(_:)(v75);

                v76 = sub_100002320(v103, v104, &v107);

                v77 = v97;
                *(v97 + 1) = v76;
                _os_log_impl(&_mh_execute_header, v67, v68, "### Start resolve request from %s", v77, 0xCu);
                sub_100002A00(v99);
              }

              v78 = [v98 hash];
              v79 = v93;
              swift_beginAccess();

              v80 = *(v19 + v79);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v107 = *(v19 + v79);
              *(v19 + v79) = 0x8000000000000000;
              sub_1003E30D8(v61, v78, isUniquelyReferenced_nonNull_native);
              *(v19 + v79) = v107;
              swift_endAccess();
              swift_unknownObjectRelease();

              v82 = v102;
              goto LABEL_36;
            }

            v83 = Logger.logObject.getter();
            v84 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v83, v84))
            {
              v85 = swift_slowAlloc();
              *v85 = 67109120;
              *(v85 + 4) = v66;
              _os_log_impl(&_mh_execute_header, v83, v84, "### Failed to Resolve: error[%d", v85, 8u);
            }

            nw_array_create();
            (v97)();
            swift_unknownObjectRelease();
            v63 = v102;
          }

          sub_1003FCA7C(v61);
          swift_unknownObjectRelease();

          v82 = v63;
LABEL_36:
          v62(v82, v59);
          return;
        }

        v29 = *(v26 + 64 + 8 * v32);
        ++v34;
        if (v29)
        {
          goto LABEL_17;
        }
      }

      __break(1u);
    }

    else if (nw_error_create_error_with_inferred_domain())
    {
      v23 = *(v19 + OBJC_IVAR____TtC12wifip2pdCore8NANAgent_nanAgent);
      nw_agent_send_error_response();

      goto LABEL_8;
    }

    __break(1u);
    goto LABEL_39;
  }
}

uint64_t sub_1003F8910(void *a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;
    v4 = [a1 hash];
    v5 = OBJC_IVAR____TtC12wifip2pdCore8NANAgent_resolveClients;
    swift_beginAccess();
    v6 = *(v3 + v5);
    if (*(v6 + 16))
    {
      v7 = sub_100085268(v4);
      if (v8)
      {
        v9 = *(*(v6 + 56) + 8 * v7);

        v10 = Logger.logObject.getter();
        v11 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v10, v11))
        {
          buf = swift_slowAlloc();
          v22 = swift_slowAlloc();
          v23 = v22;
          *buf = 136315138;
          v20 = sub_1003F3454(v22);
          v13 = v12;
          v14._countAndFlagsBits = 0x6E696F70646E6520;
          v14._object = 0xEA00000000003A74;
          String.append(_:)(v14);
          type metadata accessor for NWEndpoint();
          _print_unlocked<A, B>(_:_:)();
          v24[0] = v20;
          v24[1] = v13;

          v15._countAndFlagsBits = 0;
          v15._object = 0xE000000000000000;
          String.append(_:)(v15);

          v16 = sub_100002320(v20, v13, &v23);

          *(buf + 4) = v16;
          _os_log_impl(&_mh_execute_header, v10, v11, "### Stop resolve request from %s", buf, 0xCu);
          sub_100002A00(v22);
        }

        sub_10002B154(v3 + OBJC_IVAR____TtC12wifip2pdCore8NANAgent_user, v24);
        v17 = v25;
        v18 = v26;
        sub_100029B34(v24, v25);
        (*(v18 + 48))(v9, v17, v18);
        sub_100002A00(v24);
        v19 = [a1 hash];
        swift_beginAccess();
        sub_100339050(0, v19);
        swift_endAccess();
      }
    }
  }

  return result;
}

uint64_t sub_1003F8C14(uint64_t a1, int a2, void *aBlock, uint64_t a4, uint64_t a5)
{
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = _Block_copy(aBlock);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;

  v10 = swift_unknownObjectRetain();
  v7(v10, a5, v9);

  return swift_unknownObjectRelease();
}

uint64_t sub_1003F8CC4()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC12wifip2pdCore8NANAgent_logger;
  (*(v3 + 16))(v6, v1 + OBJC_IVAR____TtC12wifip2pdCore8NANAgent_logger, v2);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "### Stopping agent", v10, 2u);
  }

  v11 = *(v3 + 8);
  v11(v6, v2);
  v12 = OBJC_IVAR____TtC12wifip2pdCore8NANAgent_nanAgent;
  v13 = *(v1 + OBJC_IVAR____TtC12wifip2pdCore8NANAgent_nanAgent);
  nw_agent_change_state();
  v11((v1 + v7), v2);
  v14 = *(v1 + v12);
  swift_unknownObjectRelease();

  sub_100002A00((v1 + OBJC_IVAR____TtC12wifip2pdCore8NANAgent_user));
  v15 = *(v1 + OBJC_IVAR____TtC12wifip2pdCore8NANAgent_browserClients);

  v16 = *(v1 + OBJC_IVAR____TtC12wifip2pdCore8NANAgent_listenerAdvertiseClients);

  v17 = *(v1 + OBJC_IVAR____TtC12wifip2pdCore8NANAgent_listenerFlowClients);

  v18 = *(v1 + OBJC_IVAR____TtC12wifip2pdCore8NANAgent_connectionClients);

  v19 = *(v1 + OBJC_IVAR____TtC12wifip2pdCore8NANAgent_resolveClients);

  v20 = OBJC_IVAR____TtC12wifip2pdCore8NANAgent_agentUUID;
  v21 = type metadata accessor for UUID();
  (*(*(v21 - 8) + 8))(v1 + v20, v21);
  return v1;
}

uint64_t sub_1003F8F28(void (*a1)(void))
{
  a1();
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1003F8FAC()
{
  result = type metadata accessor for Logger();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = type metadata accessor for UUID();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

void sub_1003F90B4(uint64_t a1, void *a2)
{
  v67 = type metadata accessor for Logger();
  v5 = *(v67 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v8 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for NWEndpoint();
  *&v62 = *(v9 - 8);
  v10 = *(v62 + 64);
  __chkstk_darwin();
  __chkstk_darwin();
  v13 = &v58 - v12;
  v14 = *(a1 + 24);
  if (v14)
  {
    v63 = v8;
    v64 = v2;
    v58 = v5;
    v69 = v11;
    v65 = a1;
    v60 = *(a1 + 32);
    v61 = v14;

    v15 = nw_array_create();
    v66 = a2;
    v16 = a2[2];
    if (v16)
    {
      v68 = *(v62 + 16);
      v17 = v66 + ((*(v62 + 80) + 32) & ~*(v62 + 80));
      v18 = *(v62 + 72);
      v19 = (v62 + 8);
      v20 = v16;
      do
      {
        v68(v13, v17, v9);
        NWEndpoint.nw.getter();
        (*v19)(v13, v9);
        nw_array_append();
        swift_unknownObjectRelease();
        v17 += v18;
        --v20;
      }

      while (v20);
    }

    v68 = v9;

    swift_unknownObjectRetain();
    v21 = v15;
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();
    swift_unknownObjectRelease();

    v24 = os_log_type_enabled(v22, v23);
    v59 = v15;
    if (v24)
    {
      v25 = swift_slowAlloc();
      v70[0] = swift_slowAlloc();
      *v25 = 136315394;
      v26 = sub_1003F3330();
      v28 = sub_100002320(v26, v27, v70);

      *(v25 + 4) = v28;
      *(v25 + 12) = 2080;
      v29 = [v21 description];
      v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v32 = v31;

      v33 = sub_100002320(v30, v32, v70);

      *(v25 + 14) = v33;
      _os_log_impl(&_mh_execute_header, v22, v23, "### Vending endpoints to client %s - %s", v25, 0x16u);
      swift_arrayDestroy();
    }

    v35 = v63;
    v36 = v68;
    v37 = v69;
    if (v16)
    {
      v38 = v66 + ((*(v62 + 80) + 32) & ~*(v62 + 80));
      v65 = *(v62 + 72);
      v66 = &qword_1004B4E88[7];
      v64 = (v62 + 16);
      v39 = (v62 + 8);
      v40 = (v58 + 8);
      *&v34 = 136315138;
      v62 = v34;
      do
      {
        Logger.init(subsystem:category:)();
        (*v64)(v37, v38, v36);
        v41 = Logger.logObject.getter();
        v42 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v41, v42))
        {
          v43 = swift_slowAlloc();
          v44 = swift_slowAlloc();
          v71 = v44;
          *v43 = v62;
          v70[0] = NWEndpoint.deviceName.getter();
          v70[1] = v45;
          sub_10005DC58(&unk_100599FD0, &qword_100482530);
          v46 = String.init<A>(describing:)();
          v48 = v47;
          (*v39)(v69, v68);
          v49 = sub_100002320(v46, v48, &v71);
          v35 = v63;

          *(v43 + 4) = v49;
          _os_log_impl(&_mh_execute_header, v41, v42, "#### vendEndpoints deviceName %s", v43, 0xCu);
          sub_100002A00(v44);
          v37 = v69;

          v36 = v68;
        }

        else
        {

          (*v39)(v37, v36);
        }

        (*v40)(v35, v67);
        v38 += v65;
        --v16;
      }

      while (v16);
    }

    v50 = v61;
    v61(v59);
    swift_unknownObjectRelease();
    sub_100010520(v50);
  }

  else
  {

    v69 = Logger.logObject.getter();
    v51 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v69, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v70[0] = v53;
      *v52 = 136315138;
      v54 = sub_1003F3330();
      v56 = sub_100002320(v54, v55, v70);

      *(v52 + 4) = v56;
      _os_log_impl(&_mh_execute_header, v69, v51, "### Cannot vend endpoints to client %s - no browse response", v52, 0xCu);
      sub_100002A00(v53);
    }

    else
    {
      v57 = v69;
    }
  }
}

uint64_t sub_1003F9804(uint64_t a1, int a2, uint64_t (*a3)(void), char *a4, void *a5, void (*a6)(void))
{
  v11 = v6;

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v14, v15))
  {
    format = a4;
    v16 = swift_slowAlloc();
    v28 = a5;
    v29 = swift_slowAlloc();
    v17 = a6;
    v18 = v29;
    *v16 = 136315394;
    v19 = a3();
    v21 = sub_100002320(v19, v20, &v29);

    *(v16 + 4) = v21;
    *(v16 + 12) = 1024;
    *(v16 + 14) = a2;
    _os_log_impl(&_mh_execute_header, v14, v15, format, v16, 0x12u);
    sub_100002A00(v18);
    a6 = v17;
    a5 = v28;
  }

  v22 = *(v11 + OBJC_IVAR____TtC12wifip2pdCore8NANAgent_nanAgent);
  v23 = *(a1 + 16);
  result = nw_error_create_error_with_inferred_domain();
  if (result)
  {
    nw_agent_send_error_response();
    swift_unknownObjectRelease();
    v25 = [v23 hash];
    v26 = *a5;
    swift_beginAccess();
    a6(v25);
    swift_endAccess();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1003F99E8(uint64_t a1, int a2)
{

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v18 = v16;
    *v7 = 136315394;
    v8 = sub_1003F3454(v16);
    v10 = v9;
    v11._countAndFlagsBits = 0x6E696F70646E6520;
    v11._object = 0xEA00000000003A74;
    String.append(_:)(v11);
    type metadata accessor for NWEndpoint();
    _print_unlocked<A, B>(_:_:)();
    v17 = a2;

    v12._countAndFlagsBits = 0;
    v12._object = 0xE000000000000000;
    String.append(_:)(v12);

    v13 = sub_100002320(v8, v10, &v18);

    *(v7 + 4) = v13;
    *(v7 + 12) = 1024;
    *(v7 + 14) = v17;
    _os_log_impl(&_mh_execute_header, v5, v6, "### Agent user stopping resolver session:%s with error:%d", v7, 0x12u);
    sub_100002A00(v16);
  }

  v14 = *(v2 + OBJC_IVAR____TtC12wifip2pdCore8NANAgent_nanAgent);
  v15 = *(a1 + 16);
  if (nw_error_create_error_with_inferred_domain())
  {
    nw_agent_send_error_response();
    swift_unknownObjectRelease();
    sub_1003FCA7C(a1);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1003F9C08(uint64_t a1, void *a2, char *a3, unint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v30 = a6;
  v14 = *(a8 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(a1);
  v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v29 - v19;
  (*(v14 + 32))(&v29 - v19, v21, v22);
  v23 = type metadata accessor for NANAgent(0);
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  v26 = swift_allocObject();
  (*(v14 + 16))(v18, v20, a8);
  v27 = sub_1003F9D98(a1, a2, a3, a4, v18, v30, v26, a8, a9);
  (*(v14 + 8))(v20, a8);
  return v27;
}

uint64_t sub_1003F9D98(uint64_t a1, void *a2, char *a3, unint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v119 = a6;
  v120 = a1;
  v117 = a3;
  v14 = type metadata accessor for UUID();
  v109 = *(v14 - 8);
  v15 = *(v109 + 64);
  __chkstk_darwin(v14);
  v113 = &v101 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for Logger();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = __chkstk_darwin(v17);
  v104 = &v101 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v107 = &v101 - v23;
  v24 = __chkstk_darwin(v22);
  v108 = &v101 - v25;
  v26 = __chkstk_darwin(v24);
  v111 = &v101 - v27;
  __chkstk_darwin(v26);
  v29 = &v101 - v28;
  v130[3] = a8;
  v130[4] = a9;
  v30 = sub_1000297D4(v130);
  (*(*(a8 - 8) + 32))(v30, a5, a8);
  v31 = OBJC_IVAR____TtC12wifip2pdCore8NANAgent_logger;
  Logger.init(subsystem:category:)();
  *(a7 + OBJC_IVAR____TtC12wifip2pdCore8NANAgent_policySession) = 0;
  *(a7 + OBJC_IVAR____TtC12wifip2pdCore8NANAgent_vInterfaceRef) = 0;
  v32 = OBJC_IVAR____TtC12wifip2pdCore8NANAgent_browserClients;
  *(a7 + v32) = sub_1002DE768(_swiftEmptyArrayStorage);
  v33 = OBJC_IVAR____TtC12wifip2pdCore8NANAgent_listenerAdvertiseClients;
  *(a7 + v33) = sub_1002DE77C(_swiftEmptyArrayStorage);
  v34 = OBJC_IVAR____TtC12wifip2pdCore8NANAgent_listenerFlowClients;
  *(a7 + v34) = sub_1002DE790(_swiftEmptyArrayStorage);
  v35 = OBJC_IVAR____TtC12wifip2pdCore8NANAgent_connectionClients;
  *(a7 + v35) = sub_1002DE7A4(_swiftEmptyArrayStorage);
  v36 = OBJC_IVAR____TtC12wifip2pdCore8NANAgent_resolveClients;
  *(a7 + v36) = sub_1002DE7B8(_swiftEmptyArrayStorage);
  v121 = v18;
  v37 = *(v18 + 16);
  v115 = v18 + 16;
  v114 = v37;
  v37(v29, a7 + v31, v17);

  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.default.getter();

  v40 = os_log_type_enabled(v38, v39);
  v112 = v31;
  v110 = v14;
  v118 = v17;
  if (v40)
  {
    v41 = swift_slowAlloc();
    v42 = v117;
    v43 = v41;
    aBlock = swift_slowAlloc();
    *v43 = 136315394;
    *(v43 + 4) = sub_100002320(v120, a2, &aBlock);
    *(v43 + 12) = 2080;
    *(v43 + 14) = sub_100002320(v42, a4, &aBlock);
    _os_log_impl(&_mh_execute_header, v38, v39, "### Creating agent with domain:%s type:%s", v43, 0x16u);
    swift_arrayDestroy();

    v31 = v112;
  }

  v116 = *(v121 + 8);
  v116(v29, v17);
  sub_10002B154(v130, a7 + OBJC_IVAR____TtC12wifip2pdCore8NANAgent_user);
  String.utf8CString.getter();
  String.utf8CString.getter();
  v44 = nw_agent_create();

  v45 = v113;
  if (!v44)
  {

    v66 = v108;
    v114(v108, a7 + v31, v118);
    v67 = Logger.logObject.getter();
    v68 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      *v69 = 0;
      _os_log_impl(&_mh_execute_header, v67, v68, "### Failed to create NAN Agent", v69, 2u);
    }

    v70 = v118;
    v71 = v116;
    v116(v66, v118);
    sub_100002A00(v130);
    v71(a7 + v31, v70);

    sub_100002A00((a7 + OBJC_IVAR____TtC12wifip2pdCore8NANAgent_user));
    v72 = *(a7 + OBJC_IVAR____TtC12wifip2pdCore8NANAgent_browserClients);

    v73 = *(a7 + OBJC_IVAR____TtC12wifip2pdCore8NANAgent_listenerAdvertiseClients);

    v74 = *(a7 + OBJC_IVAR____TtC12wifip2pdCore8NANAgent_listenerFlowClients);

    v75 = *(a7 + OBJC_IVAR____TtC12wifip2pdCore8NANAgent_connectionClients);

    v76 = *(a7 + OBJC_IVAR____TtC12wifip2pdCore8NANAgent_resolveClients);

    type metadata accessor for NANAgent(0);
    v77 = *(*a7 + 48);
    v78 = *(*a7 + 52);
    swift_deallocPartialClassInstance();
    return 0;
  }

  v106 = a2;
  v46 = OBJC_IVAR____TtC12wifip2pdCore8NANAgent_nanAgent;
  *(a7 + OBJC_IVAR____TtC12wifip2pdCore8NANAgent_nanAgent) = v44;
  swift_unknownObjectRetain_n();
  UUID.init()();
  v47 = OBJC_IVAR____TtC12wifip2pdCore8NANAgent_agentUUID;
  v48 = v109;
  v49 = v110;
  (*(v109 + 32))(a7 + OBJC_IVAR____TtC12wifip2pdCore8NANAgent_agentUUID, v45, v110);
  v122 = 0;
  v123 = 0;
  v50 = *(a7 + v46);
  nw_agent_get_uuid();
  UUID.init(uuid:)();
  swift_beginAccess();
  v51 = *(v48 + 40);
  v108 = v47;
  v51(a7 + v47, v45, v49);
  swift_endAccess();
  v52 = a7 + v31;
  v53 = v111;
  v54 = v118;
  v114(v111, v52, v118);

  v55 = Logger.logObject.getter();
  v56 = static os_log_type_t.default.getter();

  v103 = v56;
  v57 = os_log_type_enabled(v55, v56);
  v105 = v44;
  if (v57)
  {
    v58 = swift_slowAlloc();
    v101 = swift_slowAlloc();
    aBlock = v101;
    *v58 = 136315138;
    v102 = *(v48 + 16);
    v59 = v48;
    v102(v45, &v108[a7], v49);
    sub_1003FC98C(&qword_100597520);
    v60 = dispatch thunk of CustomStringConvertible.description.getter();
    v61 = a4;
    v63 = v62;
    (*(v48 + 8))(v45, v49);
    v64 = sub_100002320(v60, v63, &aBlock);
    a4 = v61;

    *(v58 + 4) = v64;
    _os_log_impl(&_mh_execute_header, v55, v103, "### Agent UUID:%s", v58, 0xCu);
    sub_100002A00(v101);

    v65 = v118;
    (v116)(v111);
    v102(v45, &v108[a7], v49);
  }

  else
  {

    v65 = v54;
    v116(v53, v54);
    v59 = v48;
    (*(v48 + 16))(v45, &v108[a7], v49);
  }

  sub_1003FAB80(v120, v106, v117, a4, v45);
  v80 = v79;

  (*(v59 + 8))(v45, v49);
  if ((v80 & 1) == 0)
  {
    v90 = v107;
    v91 = v65;
    v114(v107, a7 + v112, v65);
    v92 = Logger.logObject.getter();
    v93 = static os_log_type_t.error.getter();
    v94 = os_log_type_enabled(v92, v93);
    v95 = v119;
    if (v94)
    {
      v96 = swift_slowAlloc();
      *v96 = 0;
      v97 = "### Failed to set up agent policy, not creating agent";
LABEL_19:
      _os_log_impl(&_mh_execute_header, v92, v93, v97, v96, 2u);

      swift_unknownObjectRelease_n();

LABEL_21:
      v116(v90, v91);
      sub_100002A00(v130);

      return 0;
    }

LABEL_20:

    swift_unknownObjectRelease_n();
    goto LABEL_21;
  }

  if ((sub_1003FC670() & 1) == 0)
  {
    v91 = v65;
    v98 = v104;
    v114(v104, a7 + v112, v65);
    v90 = v98;
    v92 = Logger.logObject.getter();
    v93 = static os_log_type_t.error.getter();
    v99 = os_log_type_enabled(v92, v93);
    v95 = v119;
    if (v99)
    {
      v96 = swift_slowAlloc();
      *v96 = 0;
      v97 = "### Failed to set up agent interface, not creating agent";
      goto LABEL_19;
    }

    goto LABEL_20;
  }

  sub_1003F4CBC();
  sub_1003F6870();
  sub_1003F7DB4();
  v81 = OBJC_IVAR____TtC12wifip2pdCore8NANAgent_nanAgent;
  v82 = *(a7 + OBJC_IVAR____TtC12wifip2pdCore8NANAgent_nanAgent);
  nw_agent_set_resolve_flags();
  v83 = *(a7 + v81);
  v128 = NANBitmap.Channel.operatingClass.getter;
  v129 = 0;
  aBlock = _NSConcreteStackBlock;
  v125 = 1107296256;
  v126 = sub_1003F8BF0;
  v127 = &unk_100579D60;
  v84 = _Block_copy(&aBlock);
  v128 = NANBitmap.Channel.operatingClass.getter;
  v129 = 0;
  aBlock = _NSConcreteStackBlock;
  v125 = 1107296256;
  v126 = sub_1000991C0;
  v127 = &unk_100579D88;
  v85 = _Block_copy(&aBlock);
  swift_unknownObjectRetain();
  nw_agent_set_assert_handlers();
  _Block_release(v85);
  _Block_release(v84);
  swift_unknownObjectRelease();
  v86 = Logger.logObject.getter();
  v87 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v86, v87))
  {
    v88 = swift_slowAlloc();
    *v88 = 0;
    _os_log_impl(&_mh_execute_header, v86, v87, "### Changing agent state to active", v88, 2u);
  }

  v89 = *(a7 + v81);
  nw_agent_change_state();
  swift_unknownObjectRelease_n();

  sub_100002A00(v130);
  return a7;
}

void sub_1003FAB80(uint64_t a1, void *a2, char *a3, uint64_t a4, unint64_t a5)
{
  v234 = a3;
  v235 = a4;
  v232 = a1;
  v233 = a2;
  v227 = type metadata accessor for UUID();
  v216 = *(v227 - 8);
  v7 = *(v216 + 8);
  v8 = __chkstk_darwin(v227);
  v10 = &v203 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v223 = &v203 - v12;
  v13 = __chkstk_darwin(v11);
  v228 = &v203 - v14;
  v15 = __chkstk_darwin(v13);
  v236 = (&v203 - v16);
  v17 = __chkstk_darwin(v15);
  v19 = &v203 - v18;
  __chkstk_darwin(v17);
  v21 = &v203 - v20;
  v22 = sub_10005DC58(&qword_10058F4D0, &qword_100491AB0);
  v23 = *(*(v22 - 8) + 64);
  v24 = __chkstk_darwin(v22 - 8);
  v231 = (&v203 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = __chkstk_darwin(v24);
  v28 = (&v203 - v27);
  __chkstk_darwin(v26);
  v30 = &v203 - v29;
  v31 = [objc_allocWithZone(NEPolicySession) init];
  v32 = *&v5[OBJC_IVAR____TtC12wifip2pdCore8NANAgent_policySession];
  *&v5[OBJC_IVAR____TtC12wifip2pdCore8NANAgent_policySession] = v31;
  v33 = v31;

  if (v33)
  {
    v229 = v5;
    v222 = v19;
    v218 = v10;
    v34 = objc_opt_self();
    v230 = a5;
    isa = UUID._bridgeToObjectiveC()().super.isa;
    v36 = [v34 netAgentUUID:isa];

    v37 = String._bridgeToObjectiveC()();
    v38 = [objc_opt_self() routeRuleWithAction:2 forInterfaceName:v37];

    if (!v38)
    {

      swift_arrayDestroy();
      return;
    }

    v224 = v36;
    v203 = 0;
    v225 = v33;
    v226 = sub_10005DC58(&unk_1005974D0, &qword_1004B2300);
    v39 = swift_allocObject();
    v209 = xmmword_1004B1170;
    *(v39 + 16) = xmmword_1004B1170;
    *(v39 + 32) = v38;
    sub_100018AB4(0, &qword_100599FB0, NEPolicyRouteRule_ptr);
    v208 = v38;
    v40 = Array._bridgeToObjectiveC()().super.isa;

    v220 = v34;
    v207 = [v34 routeRules:v40];

    v41 = *(v216 + 7);
    (v41)(v30, 1, 1, v227);
    v210 = sub_100474CEC(&off_100572A68);
    sub_10008378C(&unk_100572A88);
    v219 = OBJC_IVAR____TtC12wifip2pdCore8NANAgent_logger;
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&_mh_execute_header, v42, v43, "### Calling machOUUIDs", v44, 2u);
    }

    v45 = [objc_opt_self() defaultWorkspace];
    if (!v45)
    {
      __break(1u);
      goto LABEL_86;
    }

    v46 = v45;
    v47 = v21;
    v48 = Set._bridgeToObjectiveC()().super.isa;
    v237 = 0;
    v49 = [v46 machOUUIDsForBundleIdentifiers:v48 error:&v237];

    v50 = v237;
    v211 = v30;
    if (v49)
    {
      sub_10005DC58(&unk_100599FC0, &qword_1004B3278);
      v51 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
      v52 = v50;

      if (*(v51 + 16))
      {
        v53 = sub_1000102E8(0xD000000000000018, 0x80000001004BE1F0);
        v54 = v220;
        if (v55)
        {
          v56 = *(*(v51 + 56) + 8 * v53);
          swift_bridgeObjectRetain_n();

          v57 = Logger.logObject.getter();
          v58 = static os_log_type_t.info.getter();

          if (os_log_type_enabled(v57, v58))
          {
            v59 = swift_slowAlloc();
            v217 = swift_slowAlloc();
            v237 = v217;
            *v59 = 136315138;
            sub_1003FC98C(&unk_10058BB00);
            v60 = v227;
            v61 = Set.description.getter();
            *&v221 = v41;
            v62 = v47;
            v63 = v58;
            v65 = sub_100002320(v61, v64, &v237);
            v66 = v60;

            *(v59 + 4) = v65;
            v54 = v220;
            v67 = v63;
            v47 = v62;
            v41 = v221;
            _os_log_impl(&_mh_execute_header, v57, v67, "### Got mach-O UUID %s", v59, 0xCu);
            sub_100002A00(v217);
          }

          else
          {

            v66 = v227;
          }

          sub_1003F2FBC(v56, v28);

          v77 = v216;
          if ((*(v216 + 6))(v28, 1, v66) != 1)
          {
LABEL_76:
            v192 = *(v77 + 4);
            *&v221 = v77 + 32;
            v217 = v192;
            (v192)(v47, v28, v66);
            v75 = v222;
            (*(v77 + 2))(v222, v47, v66);
            v28 = Logger.logObject.getter();
            v193 = static os_log_type_t.info.getter();
            if (!os_log_type_enabled(v28, v193))
            {
              goto LABEL_79;
            }

            v194 = swift_slowAlloc();
            *&v215 = swift_slowAlloc();
            v237 = v215;
            *v194 = 136315138;
            sub_1003FC98C(&qword_100597520);
            v195 = dispatch thunk of CustomStringConvertible.description.getter();
            v196 = v66;
            v198 = v197;
            v199 = v75;
            v200 = v196;
            (*(v77 + 1))(v199, v196);
            v201 = sub_100002320(v195, v198, &v237);

            *(v194 + 4) = v201;
            _os_log_impl(&_mh_execute_header, v28, v193, "### Got mach-O UUID %s", v194, 0xCu);
            sub_100002A00(v215);

            v54 = v220;

            v202 = v211;
            sub_100016290(v211, &qword_10058F4D0, &qword_100491AB0);
            v66 = v200;
LABEL_80:
            v81 = v236;
            v82 = v224;
            (v217)(v202, v47, v66);
            (v41)(v202, 0, 1, v66);
            v41 = v216;
            v75 = v223;
LABEL_27:
            v83 = swift_allocObject();
            v221 = xmmword_1004B30A0;
            *(v83 + 16) = xmmword_1004B30A0;
            v84 = objc_opt_self();
            v85 = [v84 allInterfaces];
            if (v85)
            {
              *(v83 + 32) = v85;
              v86 = String._bridgeToObjectiveC()();
              v87 = String._bridgeToObjectiveC()();
              v222 = v84;
              v88 = [v84 requiredAgentDomain:v86 agentType:v87];

              if (v88)
              {
                *(v83 + 40) = v88;
                v89 = objc_allocWithZone(NEPolicy);
                v90 = sub_100018AB4(0, &qword_100599FB8, NEPolicyCondition_ptr);
                v91 = v82;
                v224 = v90;
                v92 = Array._bridgeToObjectiveC()().super.isa;

                v93 = [v89 initWithOrder:1 result:v91 conditions:v92];

                v205 = v93;
                [v225 addPolicy:v93];
                v94 = v231;
                sub_1003FC91C(v211, v231);
                v95 = v227;
                v96 = (*(v41 + 6))(v94, 1, v227);
                v97 = &unk_100588000;
                v206 = v91;
                if (v96 == 1)
                {
                  sub_100016290(v94, &qword_10058F4D0, &qword_100491AB0);
                }

                else
                {
                  (*(v41 + 4))(v81, v94, v95);
                  v98 = v228;
                  (*(v41 + 2))(v228, v81, v95);
                  v99 = Logger.logObject.getter();
                  v100 = static os_log_type_t.info.getter();
                  if (os_log_type_enabled(v99, v100))
                  {
                    v101 = swift_slowAlloc();
                    v102 = swift_slowAlloc();
                    v237 = v102;
                    *v101 = 136315138;
                    sub_1003FC98C(&qword_100597520);
                    v103 = dispatch thunk of CustomStringConvertible.description.getter();
                    v105 = v104;
                    v106 = *(v41 + 1);
                    v106(v98, v95);
                    v107 = sub_100002320(v103, v105, &v237);
                    v54 = v220;

                    *(v101 + 4) = v107;
                    _os_log_impl(&_mh_execute_header, v99, v100, "### Setting policy for %s", v101, 0xCu);
                    sub_100002A00(v102);
                    v75 = v223;

                    v97 = &unk_100588000;
                  }

                  else
                  {

                    v106 = *(v41 + 1);
                    v106(v98, v95);
                  }

                  v108 = UUID._bridgeToObjectiveC()().super.isa;
                  v109 = [v54 v97[502]];

                  v110 = swift_allocObject();
                  *(v110 + 16) = v209;
                  v111 = UUID._bridgeToObjectiveC()().super.isa;
                  v112 = [v222 effectiveApplication:v111];

                  if (!v112)
                  {
                    goto LABEL_93;
                  }

                  *(v110 + 32) = v112;
                  v113 = objc_allocWithZone(NEPolicy);
                  v114 = Array._bridgeToObjectiveC()().super.isa;

                  v115 = [v113 initWithOrder:2 result:v109 conditions:v114];

                  [v225 addPolicy:v115];
                  v116 = v216;
                  v106(v81, v227);
                  v41 = v116;
                }

                v117 = UUID._bridgeToObjectiveC()().super.isa;
                v118 = [v54 v97[502]];

                v119 = swift_allocObject();
                *(v119 + 16) = v221;
                v120 = v222;
                v121 = [v222 allInterfaces];
                if (v121)
                {
                  *(v119 + 32) = v121;
                  v122 = String._bridgeToObjectiveC()();
                  v123 = [v120 accountIdentifier:v122];

                  if (v123)
                  {
                    *(v119 + 40) = v123;
                    v124 = objc_allocWithZone(NEPolicy);
                    v125 = Array._bridgeToObjectiveC()().super.isa;

                    v126 = [v124 initWithOrder:3 result:v118 conditions:v125];

                    v204 = v126;
                    [v225 addPolicy:v126];
                    v127 = objc_opt_self();
                    v128 = 0;
                    v236 = (v41 + 8);
                    v129 = 4;
                    *&v130 = 136315394;
                    v215 = v130;
                    v28 = v227;
                    v214 = v127;
                    v228 = v41 + 16;
                    do
                    {
                      v131 = &off_1005729C8 + 2 * v128;
                      v54 = v131[4];
                      v132 = v131[5];

                      v133 = [v127 defaultManager];
                      v134 = String._bridgeToObjectiveC()();
                      v135 = [v133 fileExistsAtPath:v134];

                      if (v135)
                      {
                        v231 = v133;
                        v136 = objc_opt_self();
                        v230 = v132;
                        v137 = String._bridgeToObjectiveC()();
                        v138 = [v136 copyUUIDsForExecutable:v137];

                        if (v138)
                        {
                          v139 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

                          v140 = sub_1003F46AC(v139);

                          v77 = v231;
                          if (v140)
                          {

                            v212 = v140;
                          }

                          else
                          {
                            v212 = 0;
                            v140 = _swiftEmptyArrayStorage;
                          }

                          v47 = v229;
                        }

                        else
                        {
                          v212 = 0;
                          v140 = _swiftEmptyArrayStorage;
                          v47 = v229;
                          v77 = v231;
                        }

                        v213 = v128;
                        v235 = v140[2];
                        if (v235)
                        {
                          v66 = 0;
                          v234 = v140 + ((v41[80] + 32) & ~v41[80]);
                          v217 = v54;
                          v233 = v140;
                          do
                          {
                            if (v66 >= v140[2])
                            {
                              __break(1u);
                              goto LABEL_76;
                            }

                            v141 = *(v41 + 2);
                            v141(v75, &v234[*(v41 + 9) * v66], v28);
                            if (qword_1005943E8 != -1)
                            {
                              swift_once();
                            }

                            sub_100037644(v28, qword_10059BAD0);
                            if (static UUID.== infix(_:_:)())
                            {
                              (*v236)(v75, v28);
                            }

                            else
                            {
                              v142 = v75;
                              v143 = v218;
                              v141(v218, v142, v28);
                              v144 = v230;

                              v145 = Logger.logObject.getter();
                              v54 = static os_log_type_t.info.getter();

                              v146 = os_log_type_enabled(v145, v54);
                              LODWORD(v232) = v129;
                              if (v146)
                              {
                                v147 = v28;
                                v148 = swift_slowAlloc();
                                v237 = swift_slowAlloc();
                                *v148 = v215;
                                *(v148 + 4) = sub_100002320(v217, v144, &v237);
                                *(v148 + 12) = 2080;
                                sub_1003FC98C(&qword_100597520);
                                v149 = dispatch thunk of CustomStringConvertible.description.getter();
                                v151 = v150;
                                v77 = *v236;
                                v152 = v147;
                                v41 = v216;
                                (*v236)(v143, v152);
                                v153 = sub_100002320(v149, v151, &v237);

                                *(v148 + 14) = v153;
                                _os_log_impl(&_mh_execute_header, v145, v54, "### Setting Policy for %s uuid %s", v148, 0x16u);
                                swift_arrayDestroy();
                              }

                              else
                              {

                                v77 = *v236;
                                (*v236)(v143, v28);
                              }

                              v47 = [v220 skipWithOrder:0];
                              v154 = swift_allocObject();
                              *(v154 + 16) = v221;
                              v155 = v222;
                              v156 = [v222 allInterfaces];
                              v75 = v223;
                              if (!v156)
                              {
                                goto LABEL_84;
                              }

                              *(v154 + 32) = v156;
                              v157 = UUID._bridgeToObjectiveC()().super.isa;
                              v158 = [v155 effectiveApplication:v157];

                              if (!v158)
                              {
                                goto LABEL_83;
                              }

                              *(v154 + 40) = v158;
                              v159 = objc_allocWithZone(NEPolicy);
                              v160 = Array._bridgeToObjectiveC()().super.isa;

                              v161 = v232;
                              v162 = [v159 initWithOrder:v232 result:v47 conditions:v160];

                              [v225 addPolicy:v162];
                              v28 = v227;
                              v77(v75, v227);
                              v163 = __CFADD__(v161, 1);
                              v129 = (v161 + 1);
                              if (v163)
                              {
                                __break(1u);
LABEL_79:

                                (*(v77 + 1))(v75, v66);
                                v202 = v211;
                                sub_100016290(v211, &qword_10058F4D0, &qword_100491AB0);
                                goto LABEL_80;
                              }

                              v47 = v229;
                              v77 = v231;
                            }

                            ++v66;
                            v140 = v233;
                          }

                          while (v235 != v66);
                        }

                        v127 = v214;
                        v128 = v213;
                      }

                      else
                      {

                        v127 = v214;
                      }

                      ++v128;
                    }

                    while (v128 != 8);
                    v164 = v220;
                    v165 = [v220 skipWithOrder:0];
                    v166 = swift_allocObject();
                    *(v166 + 16) = v221;
                    v167 = v222;
                    v168 = [v222 allInterfaces];
                    if (v168)
                    {
                      *(v166 + 32) = v168;
                      v169 = [v167 usesModernNetworkAPI];
                      if (v169)
                      {
                        *(v166 + 40) = v169;
                        v170 = objc_allocWithZone(NEPolicy);
                        v171 = Array._bridgeToObjectiveC()().super.isa;

                        v172 = [v170 initWithOrder:v129 result:v165 conditions:v171];

                        [v225 addPolicy:v172];
                        v173 = (v129 + 1);
                        if (v129 == -1)
                        {
                          __break(1u);
                        }

                        else
                        {
                          if (!os_variant_allows_internal_security_policies())
                          {
                            goto LABEL_73;
                          }

                          v174 = Logger.logObject.getter();
                          v175 = static os_log_type_t.default.getter();
                          if (os_log_type_enabled(v174, v175))
                          {
                            v176 = swift_slowAlloc();
                            *v176 = 0;
                            _os_log_impl(&_mh_execute_header, v174, v175, "### Setting ICMPV6 allow policy", v176, 2u);
                          }

                          v177 = [v164 skipWithOrder:0];
                          v178 = swift_allocObject();
                          *(v178 + 16) = v221;
                          v179 = [v167 allInterfaces];
                          if (!v179)
                          {
                            goto LABEL_94;
                          }

                          *(v178 + 32) = v179;
                          v180 = [v167 ipProtocol:58];
                          if (!v180)
                          {
LABEL_95:
                            __break(1u);
                            return;
                          }

                          *(v178 + 40) = v180;
                          v181 = objc_allocWithZone(NEPolicy);
                          v182 = Array._bridgeToObjectiveC()().super.isa;

                          v183 = [v181 initWithOrder:(v129 + 1) result:v177 conditions:v182];

                          [v225 addPolicy:v183];
                          v163 = __CFADD__(v173, 1);
                          v173 = (v129 + 2);
                          if (!v163)
                          {
LABEL_73:
                            v184 = swift_allocObject();
                            *(v184 + 16) = v209;
                            v185 = [v167 allInterfaces];
                            if (v185)
                            {
                              v186 = v185;
                              swift_arrayDestroy();

                              *(v184 + 32) = v186;
                              v187 = objc_allocWithZone(NEPolicy);
                              v188 = v207;
                              v189 = Array._bridgeToObjectiveC()().super.isa;

                              v190 = [v187 initWithOrder:v173 result:v188 conditions:v189];

                              v191 = v225;
                              [v225 addPolicy:v190];
                              [v191 setPriority:300];
                              [v191 apply];

                              sub_100016290(v211, &qword_10058F4D0, &qword_100491AB0);
                              return;
                            }

                            goto LABEL_92;
                          }
                        }

                        __break(1u);
LABEL_83:
                        __break(1u);
LABEL_84:
                        __break(1u);
                      }

LABEL_91:
                      __break(1u);
LABEL_92:
                      __break(1u);
LABEL_93:
                      __break(1u);
LABEL_94:
                      __break(1u);
                      goto LABEL_95;
                    }

LABEL_90:
                    __break(1u);
                    goto LABEL_91;
                  }

LABEL_89:
                  __break(1u);
                  goto LABEL_90;
                }

LABEL_88:
                __break(1u);
                goto LABEL_89;
              }

LABEL_87:
              __break(1u);
              goto LABEL_88;
            }

LABEL_86:
            __break(1u);
            goto LABEL_87;
          }

          sub_100016290(v28, &qword_10058F4D0, &qword_100491AB0);
          v78 = Logger.logObject.getter();
          v79 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v78, v79))
          {
            v80 = swift_slowAlloc();
            *v80 = 0;
            _os_log_impl(&_mh_execute_header, v78, v79, "### Failed to get mach-O UUID first for companionSetup", v80, 2u);
          }
        }

        else
        {
        }
      }

      else
      {

        v54 = v220;
      }

      v41 = v216;
      v75 = v223;
    }

    else
    {
      v71 = v237;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      v203 = 0;
      v72 = Logger.logObject.getter();
      v73 = static os_log_type_t.error.getter();
      v74 = os_log_type_enabled(v72, v73);
      v54 = v220;
      v41 = v216;
      v75 = v223;
      if (v74)
      {
        v76 = swift_slowAlloc();
        *v76 = 0;
        _os_log_impl(&_mh_execute_header, v72, v73, "### Failed to get mach-O UUID", v76, 2u);
      }
    }

    v81 = v236;
    v82 = v224;
    goto LABEL_27;
  }

  swift_arrayDestroy();
  v68 = Logger.logObject.getter();
  v69 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v68, v69))
  {
    v70 = swift_slowAlloc();
    *v70 = 0;
    _os_log_impl(&_mh_execute_header, v68, v69, "### Failed to create policy session, not creating agent", v70, 2u);
  }
}

uint64_t sub_1003FC670()
{
  v1 = v0;
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "### Creating agent virtual interface", v4, 2u);
  }

  if (!nw_interface_create_with_name())
  {
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "### nw_interface_create_with_name failed", v14, 2u);
    }

    return 0;
  }

  v5 = *(v1 + OBJC_IVAR____TtC12wifip2pdCore8NANAgent_nanAgent);
  v6 = nw_agent_add_to_interface();
  v7 = Logger.logObject.getter();
  if ((v6 & 1) == 0)
  {
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v7, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v7, v15, "### nw_agent_add_to_interface failed", v16, 2u);
    }

    swift_unknownObjectRelease();
    return 0;
  }

  v8 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v17 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_100002320(812540270, 0xE400000000000000, &v17);
    _os_log_impl(&_mh_execute_header, v7, v8, "### Added virtual interface %s to agent", v9, 0xCu);
    sub_100002A00(v10);
  }

  swift_unknownObjectRelease();
  return 1;
}

uint64_t sub_1003FC91C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10005DC58(&qword_10058F4D0, &qword_100491AB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003FC98C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1003FC9E0(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    String.index(_:offsetBy:limitedBy:)();

    return String.subscript.getter();
  }

  return result;
}

void sub_1003FCA7C(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 + 16);
  v4 = [v3 hash];
  v5 = OBJC_IVAR____TtC12wifip2pdCore8NANAgent_resolveClients;
  swift_beginAccess();
  sub_100420DE4(v4);
  swift_endAccess();

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 134218240;
    *(v8 + 4) = *(*(v2 + v5) + 16);

    *(v8 + 12) = 2048;
    *(v8 + 14) = [v3 hash];

    _os_log_impl(&_mh_execute_header, v6, v7, "##### resolverDone Stop resolve request from %ld %ld", v8, 0x16u);
  }

  else
  {
  }
}

unint64_t sub_1003FCC48()
{
  result = qword_100598970;
  if (!qword_100598970)
  {
    sub_10005DD04(&qword_100598968, &qword_1004B2870);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100598970);
  }

  return result;
}

uint64_t sub_1003FCCF0()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = type metadata accessor for Logger();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      return swift_initClassMetadata2();
    }
  }

  return result;
}

unint64_t sub_1003FCE40()
{
  v1 = *v0;
  if (!(*v0 >> 62))
  {
    result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }

LABEL_3:
    result = sub_1003325B4();
    if (result)
    {
      return result;
    }

    v3 = *v0;
    if (*v0 >> 62)
    {
      if (v3 < 0)
      {
        v7 = *v0;
      }

      v8 = _CocoaArrayWrapper.endIndex.getter();
      v5 = __OFSUB__(v8, 1);
      result = v8 - 1;
      if (!v5)
      {
        return sub_10044BF80(result);
      }
    }

    else
    {
      v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v5 = __OFSUB__(v4, 1);
      result = v4 - 1;
      if (!v5)
      {
        return sub_10044BF80(result);
      }
    }

    __break(1u);
    return result;
  }

  if (v1 < 0)
  {
    v6 = *v0;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (result)
  {
    goto LABEL_3;
  }

  return result;
}

Class sub_1003FCED0()
{
  v0 = type metadata accessor for UUID();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin();
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1003FCFB4(v4);
  v5.super.isa = UUID._bridgeToObjectiveC()().super.isa;
  (*(v1 + 8))(v4, v0);

  return v5.super.isa;
}

uint64_t sub_1003FCFB4@<X0>(uint64_t a1@<X8>)
{
  v3 = qword_10059BBA0;
  swift_beginAccess();
  v4 = type metadata accessor for UUID();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

void sub_1003FD03C(void *a1)
{
  v2 = *(*(type metadata accessor for UUID() - 8) + 64);
  __chkstk_darwin();
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = a1;
  sub_1003FD0D0(v4);
}

uint64_t sub_1003FD0D0(uint64_t a1)
{
  v3 = qword_10059BBA0;
  swift_beginAccess();
  v4 = type metadata accessor for UUID();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

id sub_1003FD160()
{
  sub_100401394();

  v0 = String._bridgeToObjectiveC()();

  return v0;
}

void sub_1003FD1C0(void *a1)
{
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;
  v5 = a1;
  sub_1003FD230(v2, v4);
}

uint64_t sub_1003FD230(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + qword_10059BBA8);
  v4 = *(v2 + qword_10059BBA8 + 8);
  *v3 = a1;
  v3[1] = a2;
}

char *sub_1003FD40C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v37 = a2;
  ObjectType = swift_getObjectType();
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin();
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = (v2 + qword_10059BBA8);
  v39 = 0xD000000000000012;
  v40 = 0x80000001004B4EC0;
  v12._countAndFlagsBits = 32;
  v12._object = 0xE100000000000000;
  String.append(_:)(v12);
  v13._countAndFlagsBits = 1279547201;
  v13._object = 0xE400000000000000;
  String.append(_:)(v13);

  v14 = v40;
  *v11 = v39;
  v11[1] = v14;
  *(v2 + qword_10059A008) = 1;
  *(v2 + qword_10059A010) = 0;
  *(v2 + qword_10059A018) = 0;
  *(v2 + qword_10059A020) = 0;
  Logger.init(subsystem:category:)();
  v15 = qword_10059A028;
  v16 = *OS_dispatch_queue.p2p.unsafeMutableAddressor();
  v17 = objc_allocWithZone(type metadata accessor for XPCSession(0));
  *(v2 + v15) = sub_100301588(0xD000000000000012, 0x80000001004C1740, v16, 0, 0);
  *(v2 + qword_10059A030) = &_swiftEmptyDictionarySingleton;
  v18 = *OS_dispatch_queue.awdl.unsafeMutableAddressor();
  v19 = [objc_allocWithZone(NWNetworkAgentRegistration) initWithNetworkAgentClass:swift_getObjCClassFromMetadata() queue:v18];
  if (v19)
  {
    *(v3 + qword_10059A000) = v19;
    v20 = v19;
    UUID.init()();
    (*(v7 + 32))(v3 + qword_10059BBA0, v10, v6);
    *(v3 + qword_10059BBB8) = a1;
    *(v3 + qword_10059BBC0) = v37;
    swift_unownedRetain();
    swift_unownedRetain();
    v38.receiver = v3;
    v38.super_class = ObjectType;
    v21 = objc_msgSendSuper2(&v38, "init");
    v22 = qword_10059A000;
    if ([*&v21[qword_10059A000] registerNetworkAgent:v21])
    {
      v23 = *&v21[v22];
      v24 = (a1 + *(*a1 + 104));
      v25 = *v24;
      v26 = v24[1];
      v27 = v23;

      v28 = String._bridgeToObjectiveC()();

      LOBYTE(v26) = [v27 addNetworkAgentToInterfaceNamed:v28];

      if (v26)
      {
        return v21;
      }
    }

    else
    {
    }
  }

  else
  {

    v29 = *(v3 + qword_10059BBA8 + 8);

    v30 = qword_10059BBB0;
    v31 = type metadata accessor for Logger();
    (*(*(v31 - 8) + 8))(v3 + v30, v31);

    v32 = *(v3 + qword_10059A030);

    v33 = *((swift_isaMask & *v3) + 0x30);
    v34 = *((swift_isaMask & *v3) + 0x34);
    swift_deallocPartialClassInstance();
  }

  return 0;
}

id sub_1003FD88C()
{
  AppleDevice.machServiceName.getter();
  v0 = String._bridgeToObjectiveC()();

  return v0;
}

id sub_1003FD8DC()
{
  v0 = String._bridgeToObjectiveC()();

  return v0;
}

id sub_1003FD928(uint64_t a1, uint64_t a2, void *a3)
{
  ObjCClassMetadata = swift_getObjCClassMetadata();
  v5 = a3;
  v6 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  v9 = ObjCClassMetadata[10];
  v10 = ObjCClassMetadata[11];
  v11 = ObjCClassMetadata[12];
  v12 = ObjCClassMetadata[13];
  v13 = ObjCClassMetadata[14];
  v14 = variable initialization expression of NANBitmap.Band.Iterator.currentIndex();
  sub_1000124C8(v6, v8);

  return v14;
}

uint64_t sub_1003FD9B0(uint64_t a1)
{
  v2 = v1;
  v248 = swift_isaMask & *v2;
  v254 = type metadata accessor for DispatchWorkItemFlags();
  v253 = *(v254 - 8);
  v4 = *(v253 + 64);
  __chkstk_darwin();
  v251 = &v223 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v252 = type metadata accessor for DispatchQoS();
  v250 = *(v252 - 8);
  v6 = *(v250 + 64);
  __chkstk_darwin();
  v249 = &v223 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v247 = type metadata accessor for Logger();
  v246 = *(v247 - 8);
  v8 = *(v246 + 64);
  __chkstk_darwin();
  v244 = v9;
  v245 = &v223 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AWDLPeer.AdvertisedService(0);
  v260 = *(v10 - 8);
  v261 = v10;
  v11 = *(v260 + 64);
  __chkstk_darwin();
  v13 = &v223 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v258 = sub_10005DC58(&unk_100595FA0, &unk_1004B0190);
  v243 = *(v258 - 8);
  isa = v243[8].isa;
  __chkstk_darwin();
  v257 = &v223 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v259 = (&v223 - v16);
  __chkstk_darwin();
  v256 = &v223 - v17;
  v18 = *(*(sub_10005DC58(&qword_100595FC8, &unk_1004B01B8) - 8) + 64);
  __chkstk_darwin();
  v242 = (&v223 - v19);
  v20 = *(*(sub_10005DC58(&qword_10058F4D0, &qword_100491AB0) - 8) + 64);
  __chkstk_darwin();
  v22 = &v223 - v21;
  v23 = type metadata accessor for UUID();
  v264 = *(v23 - 8);
  v265 = v23;
  v24 = *(v264 + 64);
  __chkstk_darwin();
  v25 = &v223 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v255 = &v223 - v26;
  __chkstk_darwin();
  v262 = &v223 - v27;
  __chkstk_darwin();
  v263 = &v223 - v28;
  v29 = type metadata accessor for DispatchPredicate();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  __chkstk_darwin();
  isUniquelyReferenced_nonNull_native = &v223 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = OS_dispatch_queue.awdl.unsafeMutableAddressor();
  v35 = *v34;
  *isUniquelyReferenced_nonNull_native = *v34;
  (*(v30 + 104))(isUniquelyReferenced_nonNull_native, enum case for DispatchPredicate.onQueue(_:), v29);
  v36 = v35;
  v37 = _dispatchPreconditionTest(_:)();
  v39 = *(v30 + 8);
  v38 = v30 + 8;
  v39(isUniquelyReferenced_nonNull_native, v29);
  if ((v37 & 1) == 0)
  {
    __break(1u);
    goto LABEL_107;
  }

  if (!a1)
  {
    __break(1u);
    goto LABEL_113;
  }

  v267 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v268 = v40;
  AnyHashable.init<A>(_:)();
  v38 = v264;
  v41 = v265;
  if (!*(a1 + 16) || (v42 = sub_1003E0A38(aBlock), (v43 & 1) == 0))
  {
    sub_1003E9D8C(aBlock);
    (*(v38 + 56))(v22, 1, 1, v41);
    goto LABEL_12;
  }

  sub_100002B30(*(a1 + 56) + 32 * v42, v269);
  sub_1003E9D8C(aBlock);
  v44 = swift_dynamicCast();
  (*(v38 + 56))(v22, v44 ^ 1u, 1, v41);
  if ((*(v38 + 48))(v22, 1, v41) == 1)
  {
LABEL_12:
    sub_100016290(v22, &qword_10058F4D0, &qword_100491AB0);
LABEL_13:
    v56 = Logger.logObject.getter();
    v57 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      *v58 = 0;
      _os_log_impl(&_mh_execute_header, v56, v57, "Failed to assert because no UUID or path found", v58, 2u);
    }

    return 1;
  }

  v45 = v263;
  v241 = *(v38 + 32);
  v241();
  v46 = UUID._bridgeToObjectiveC()().super.isa;
  v37 = [objc_opt_self() pathForClientID:v46];

  if (!v37)
  {
    (*(v38 + 8))(v45, v41);
    goto LABEL_13;
  }

  v239 = v38 + 32;
  v47 = [v37 parameters];
  if (!v47 || (v48 = v47, v49 = [v47 account], v48, !v49))
  {
    v240 = v37;
    (*(v38 + 16))(v25, v45, v41);
    v60 = Logger.logObject.getter();
    v61 = v38;
    v62 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v60, v62))
    {
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      aBlock[0] = v64;
      *v63 = 136315138;
      sub_1004014D0(&qword_100597520, &type metadata accessor for UUID);
      v65 = dispatch thunk of CustomStringConvertible.description.getter();
      v67 = v66;
      v68 = *(v61 + 8);
      v68(v25, v41);
      v69 = sub_100002320(v65, v67, aBlock);

      *(v63 + 4) = v69;
      _os_log_impl(&_mh_execute_header, v60, v62, "Ignoring assertion from %s because no account", v63, 0xCu);
      sub_100002A00(v64);

      v68(v263, v41);
    }

    else
    {

      v70 = *(v61 + 8);
      v70(v25, v41);
      v70(v45, v41);
    }

    return 1;
  }

  v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v52 = v51;

  v53._countAndFlagsBits = 0x6C7070612E6D6F63;
  v53._object = 0xEA00000000002E65;
  v54 = v37;
  if (String.hasPrefix(_:)(v53))
  {
    String.count.getter();
    v55 = String.index(_:offsetBy:)();
  }

  else
  {
    v55 = 15;
  }

  sub_1001703A8(v55, v50, v52);

  static String._fromSubstring(_:)();

  v237 = String._bridgeToObjectiveC()();

  v71 = [v37 endpoint];
  if (v71)
  {
    v72 = v71;
    objc_opt_self();
    v73 = swift_dynamicCastObjCClass();
    if (v73 && (v74 = v73, [v73 addressFamily] == 30))
    {
      v75 = [v74 address];
      v77 = v75[1];
      v76 = v75[2];
      v78 = objc_allocWithZone(WiFiMACAddress);
      v79 = v77;
      v37 = v54;
      v80 = v262;
      v81 = [v78 initWithLinkLocalIPv6Address:{v79, v76}];

      if (v81)
      {
LABEL_91:
        v164 = objc_allocWithZone(AWDLTrafficRegistrationConfiguration);
        v165 = v81;
        v166 = [v164 initWithUniqueIdentifier:v237 peerAddress:v165];
        v167 = v2 + qword_10059BBB0;
        v259 = *(v38 + 16);
        v260 = v38 + 16;
        v259(v80, v263, v265);
        v168 = v166;
        v169 = Logger.logObject.getter();
        v170 = static os_log_type_t.info.getter();

        LODWORD(v256) = v170;
        v171 = os_log_type_enabled(v169, v170);
        v240 = v37;
        v261 = v165;
        v257 = v168;
        v258 = v167;
        if (v171)
        {
          v172 = swift_slowAlloc();
          v173 = v265;
          v243 = v169;
          v174 = v172;
          v175 = v38;
          v38 = swift_slowAlloc();
          aBlock[0] = v38;
          *v174 = 136315650;
          sub_1004014D0(&qword_100597520, &type metadata accessor for UUID);
          v176 = dispatch thunk of CustomStringConvertible.description.getter();
          v178 = v177;
          (*(v175 + 8))(v80, v173);
          v179 = sub_100002320(v176, v178, aBlock);

          *(v174 + 4) = v179;
          *(v174 + 12) = 2080;
          v180 = [v168 uniqueIdentifier];
          v181 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v183 = v182;

          v184 = v181;
          v185 = v263;
          v186 = sub_100002320(v184, v183, aBlock);

          *(v174 + 14) = v186;
          *(v174 + 22) = 2080;
          v187 = WiFiMACAddress.wifiAddress.getter();
          v188 = WiFiAddress.description.getter(v187 & 0xFFFFFFFFFFFFLL);
          v190 = sub_100002320(v188, v189, aBlock);

          *(v174 + 24) = v190;
          v191 = v243;
          _os_log_impl(&_mh_execute_header, v243, v256, "%s starting traffic registration for %s to %s", v174, 0x20u);
          swift_arrayDestroy();
        }

        else
        {

          (*(v38 + 8))(v80, v265);
          v185 = v263;
        }

        v37 = qword_10059A030;
        swift_beginAccess();
        v192 = *(v2 + v37);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v267 = *(v2 + v37);
        v193 = v267;
        *(v2 + v37) = 0x8000000000000000;
        v195 = sub_10002A440(v185);
        v196 = v193[2];
        v197 = (v194 & 1) == 0;
        v198 = v196 + v197;
        if (__OFADD__(v196, v197))
        {
          goto LABEL_110;
        }

        v199 = v194;
        if (v193[3] >= v198)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_10046E3BC();
            v193 = v267;
          }

LABEL_100:
          v38 = v265;
          isUniquelyReferenced_nonNull_native = v258;
          *(v2 + v37) = v193;
          if ((v199 & 1) == 0)
          {
            v202 = v255;
            v259(v255, v185, v38);
            sub_1002DDAE4(v195, v202, _swiftEmptyArrayStorage, v193);
          }

          v203 = (v193[7] + 8 * v195);
          v37 = v257;
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((*v203 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v203 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_111;
          }

          goto LABEL_103;
        }

        sub_100314818(v198, isUniquelyReferenced_nonNull_native);
        v193 = v267;
        v200 = sub_10002A440(v185);
        if ((v199 & 1) == (v201 & 1))
        {
          v195 = v200;
          goto LABEL_100;
        }

LABEL_113:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
    }
  }

  v82 = [v37 endpoint];
  if (!v82)
  {
LABEL_77:
    v140 = Logger.logObject.getter();
    v141 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v140, v141))
    {
      v142 = swift_slowAlloc();
      *v142 = 0;
      _os_log_impl(&_mh_execute_header, v140, v141, "Unknown endpoint information in assertion", v142, 2u);
    }

    else
    {
    }

    goto LABEL_105;
  }

  v83 = v82;
  objc_opt_self();
  v84 = swift_dynamicCastObjCClass();
  if (!v84)
  {

    goto LABEL_77;
  }

  v85 = v84;
  v224 = v83;
  v86 = [v84 hostname];
  isUniquelyReferenced_nonNull_native = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v88 = v87;

  v89._countAndFlagsBits = 0x6C61636F6C2ELL;
  v89._object = 0xE600000000000000;
  v90 = String.hasSuffix(_:)(v89);
  v236 = isUniquelyReferenced_nonNull_native;
  if (!v90)
  {

    v143 = Logger.logObject.getter();
    v144 = static os_log_type_t.error.getter();

    v145 = v88;
    if (os_log_type_enabled(v143, v144))
    {
      v146 = v37;
      v147 = swift_slowAlloc();
      v148 = swift_slowAlloc();
      aBlock[0] = v148;
      *v147 = 136315138;
      v149 = v38;
      v150 = sub_100002320(v236, v145, aBlock);

      *(v147 + 4) = v150;
      v151 = "No local suffix on hostname %s";
LABEL_89:
      _os_log_impl(&_mh_execute_header, v143, v144, v151, v147, 0xCu);
      sub_100002A00(v148);

      (*(v149 + 8))(v263, v265);
      return 1;
    }

    goto LABEL_104;
  }

  v230 = v85;
  v91 = *(v2 + qword_10059BBB8);
  swift_unownedRetainStrong();
  v92 = *(*v91 + 448);
  swift_beginAccess();
  v93 = *(v91 + v92);

  v94 = *(v93 + 64);
  v226 = v93 + 64;
  v95 = 1 << *(v93 + 32);
  if (v95 < 64)
  {
    v96 = ~(-1 << v95);
  }

  else
  {
    v96 = -1;
  }

  v229 = v96 & v94;
  v225 = (v95 + 63) >> 6;
  v97 = HIBYTE(v88) & 0xF;
  v235 = v88;
  if ((v88 & 0x2000000000000000) == 0)
  {
    v97 = isUniquelyReferenced_nonNull_native;
  }

  v98 = 7;
  if (((v88 >> 60) & ((isUniquelyReferenced_nonNull_native & 0x800000000000000) == 0)) != 0)
  {
    v98 = 11;
  }

  v233 = v98 | (v97 << 16);
  v227 = v93;

  v99 = 0;
  v80 = v262;
  v240 = v37;
  v234 = v13;
LABEL_40:
  v100 = v229;
  if (!v229)
  {
    while (1)
    {
      v101 = v99 + 1;
      if (__OFADD__(v99, 1))
      {
        goto LABEL_108;
      }

      if (v101 >= v225)
      {
        break;
      }

      v100 = *(v226 + 8 * v101);
      ++v99;
      if (v100)
      {
        goto LABEL_45;
      }
    }

    v152 = 1;
    v153 = v242;
LABEL_86:
    v154 = v243;
    v155 = v258;
    (v243[7].isa)(v153, v152, 1, v258);

    v156 = (v154[6].isa)(v153, 1, v155);
    v157 = v236;
    if (v156 == 1)
    {
      sub_100016290(v153, &qword_100595FC8, &unk_1004B01B8);
      v158 = v235;

      v143 = Logger.logObject.getter();
      v144 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v143, v144))
      {
        v146 = v37;
        v147 = swift_slowAlloc();
        v148 = swift_slowAlloc();
        aBlock[0] = v148;
        *v147 = 136315138;
        v159 = sub_100002320(v157, v158, aBlock);
        v149 = v38;
        v160 = v159;

        *(v147 + 4) = v160;
        v151 = "No peer with specified hostname %s";
        goto LABEL_89;
      }

LABEL_104:

LABEL_105:
      (*(v38 + 8))(v263, v265);
      return 1;
    }

    v161 = *(v153 + 1);
    v162 = *(v155 + 48);
    v163 = *v153;
    sub_100047390(v153 + v162, type metadata accessor for AWDLPeer);
    v81 = WiFiAddress.apiAddress.getter(v163 | (v161 << 16));

    goto LABEL_91;
  }

  v101 = v99;
LABEL_45:
  v229 = (v100 - 1) & v100;
  v228 = v101;
  v102 = __clz(__rbit64(v100)) | (v101 << 6);
  v103 = *(v227 + 56);
  v104 = *(v227 + 48) + 6 * v102;
  v105 = *(v104 + 4);
  v106 = (type metadata accessor for AWDLPeer(0) - 8);
  v107 = v103 + *(*v106 + 72) * v102;
  isUniquelyReferenced_nonNull_native = v258;
  LODWORD(v103) = *v104;
  v108 = v256;
  sub_100401688(v107, &v256[*(v258 + 48)], type metadata accessor for AWDLPeer);
  *v108 = v103;
  *(v108 + 4) = v105;
  v109 = v259;
  sub_100307838(v108, v259);
  v110 = v109;
  v111 = v257;
  sub_100401618(v110, v257);
  v112 = &v111[*(isUniquelyReferenced_nonNull_native + 48)];
  v113 = *(v112 + v106[22]);

  sub_100047390(v112, type metadata accessor for AWDLPeer);
  v114 = *(v113 + 56);
  v232 = v113 + 56;
  v115 = 1 << *(v113 + 32);
  if (v115 < 64)
  {
    v116 = ~(-1 << v115);
  }

  else
  {
    v116 = -1;
  }

  v38 = v116 & v114;
  v231 = (v115 + 63) >> 6;
  v238 = v113;

  v37 = 0;
  while (v38)
  {
LABEL_55:
    sub_100401688(*(v238 + 48) + *(v260 + 72) * (__clz(__rbit64(v38)) | (v37 << 6)), v13, type metadata accessor for AWDLPeer.AdvertisedService);
    isUniquelyReferenced_nonNull_native = &v13[v261[7]];
    v118 = type metadata accessor for DNSRecords.SRV();
    v119 = (isUniquelyReferenced_nonNull_native + *(v118 + 24));
    v121 = *v119;
    v120 = v119[1];
    if (__OFSUB__(0, String.count.getter()))
    {
      goto LABEL_109;
    }

    v38 &= v38 - 1;
    String.index(_:offsetBy:)();
    v122 = String.subscript.getter();
    v126 = v125;
    if ((v120 & 0x2000000000000000) != 0)
    {
      v127 = HIBYTE(v120) & 0xF;
    }

    else
    {
      v127 = v121 & 0xFFFFFFFFFFFFLL;
    }

    if (v121 == v124 && v120 == v126 && v122 >> 16 == 0 && v127 == v123 >> 16)
    {

      v13 = v234;
LABEL_72:
      v132 = isUniquelyReferenced_nonNull_native + *(v118 + 20);
      LOWORD(aBlock[0]) = NWEndpoint.Port.rawValue.getter();
      sub_100119DCC();
      v133 = BinaryInteger.description.getter();
      v135 = v134;
      isUniquelyReferenced_nonNull_native = [v230 port];
      v136 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v138 = v137;

      if (v133 == v136 && v135 == v138)
      {

        sub_100047390(v13, type metadata accessor for AWDLPeer.AdvertisedService);
        v80 = v262;
LABEL_85:

        v153 = v242;
        sub_100307838(v259, v242);
        v152 = 0;
        v38 = v264;
        v37 = v240;
        goto LABEL_86;
      }

      v139 = _stringCompareWithSmolCheck(_:_:expecting:)();

      sub_100047390(v13, type metadata accessor for AWDLPeer.AdvertisedService);
      v80 = v262;
      if (v139)
      {
        goto LABEL_85;
      }
    }

    else
    {
      v131 = _stringCompareInternal(_:_:_:_:expecting:)();

      v13 = v234;
      if (v131)
      {
        goto LABEL_72;
      }

      sub_100047390(v234, type metadata accessor for AWDLPeer.AdvertisedService);
      v80 = v262;
    }
  }

  while (1)
  {
    v117 = v37 + 1;
    if (__OFADD__(v37, 1))
    {
      break;
    }

    if (v117 >= v231)
    {

      sub_100016290(v259, &unk_100595FA0, &unk_1004B0190);
      v99 = v228;
      v38 = v264;
      v37 = v240;
      goto LABEL_40;
    }

    v38 = *(v232 + 8 * v117);
    ++v37;
    if (v38)
    {
      v37 = v117;
      goto LABEL_55;
    }
  }

LABEL_107:
  __break(1u);
LABEL_108:
  __break(1u);
LABEL_109:
  __break(1u);
LABEL_110:
  __break(1u);
LABEL_111:
  specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
LABEL_103:
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  v257 = *OS_dispatch_queue.p2p.unsafeMutableAddressor();
  v262 = *(v2 + qword_10059BBC0);
  swift_unownedRetainStrong();
  v256 = *(v2 + qword_10059A028);
  v204 = v246;
  v205 = *(v246 + 16);
  v243 = v37;
  v206 = v245;
  v207 = v247;
  v205(v245, isUniquelyReferenced_nonNull_native, v247);
  v208 = v255;
  v259(v255, v263, v38);
  v209 = (*(v204 + 80) + 80) & ~*(v204 + 80);
  v210 = (v244 + *(v264 + 80) + v209) & ~*(v264 + 80);
  v211 = swift_allocObject();
  v212 = v248;
  *(v211 + 16) = *(v248 + 80);
  *(v211 + 24) = *(v212 + 88);
  *(v211 + 32) = *(v212 + 96);
  v213 = v262;
  *(v211 + 48) = *(v212 + 112);
  *(v211 + 56) = v213;
  *(v211 + 64) = v37;
  v214 = v256;
  *(v211 + 72) = v256;
  (*(v204 + 32))(v211 + v209, v206, v207);
  (v241)(v211 + v210, v208, v38);
  v215 = v261;
  *(v211 + ((v24 + v210 + 7) & 0xFFFFFFFFFFFFFFF8)) = v261;
  aBlock[4] = sub_1004016F0;
  aBlock[5] = v211;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000C8B8;
  aBlock[3] = &unk_10057A0C0;
  v216 = _Block_copy(aBlock);
  v217 = v243;
  v218 = v257;

  v219 = v214;
  v220 = v249;
  static DispatchQoS.unspecified.getter();
  v267 = _swiftEmptyArrayStorage;
  sub_1004014D0(&qword_10058BCC0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10005DC58(&unk_100595270, &unk_1004AEC80);
  sub_10005DCA0();
  v221 = v251;
  v222 = v254;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();

  _Block_release(v216);

  (*(v253 + 8))(v221, v222);
  (*(v250 + 8))(v220, v252);
  (*(v264 + 8))(v263, v265);

  return 1;
}

uint64_t sub_1003FF684(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, void *a6)
{
  v28 = a6;
  v29 = a3;
  v27 = a2;
  v30 = a1;
  v8 = type metadata accessor for UUID();
  v26 = v8;
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin();
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Logger();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin();
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v15, a4, v12);
  (*(v9 + 16))(v11, a5, v8);
  v16 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v17 = (v14 + *(v9 + 80) + v16) & ~*(v9 + 80);
  v18 = (v10 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  (*(v13 + 32))(v19 + v16, v15, v12);
  (*(v9 + 32))(v19 + v17, v11, v26);
  v21 = v27;
  v20 = v28;
  *(v19 + v18) = v27;
  *(v19 + ((v18 + 15) & 0xFFFFFFFFFFFFFFF8)) = v20;
  v22 = v20;
  v23 = v21;
  sub_1002D4A9C(v23, v29, sub_100401810, v19);
}

void sub_1003FF8D0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin();
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    (*(v10 + 16))(v13, a3, v9);
    swift_errorRetain();
    v14 = a4;
    v15 = a5;
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v37 = v36;
      *v18 = 136315906;
      sub_1004014D0(&qword_100597520, &type metadata accessor for UUID);
      HIDWORD(v34) = v17;
      v19 = dispatch thunk of CustomStringConvertible.description.getter();
      v21 = v20;
      (*(v10 + 8))(v13, v9);
      v22 = sub_100002320(v19, v21, &v37);

      *(v18 + 4) = v22;
      *(v18 + 12) = 2080;
      v23 = [v14 uniqueIdentifier];
      v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v26 = v25;

      v27 = sub_100002320(v24, v26, &v37);

      *(v18 + 14) = v27;
      *(v18 + 22) = 2080;
      v28 = WiFiMACAddress.wifiAddress.getter();
      v29 = WiFiAddress.description.getter(v28 & 0xFFFFFFFFFFFFLL);
      v31 = sub_100002320(v29, v30, &v37);

      *(v18 + 24) = v31;
      *(v18 + 32) = 2112;
      swift_errorRetain();
      v32 = _swift_stdlib_bridgeErrorToNSError();
      *(v18 + 34) = v32;
      v33 = v35;
      *v35 = v32;
      _os_log_impl(&_mh_execute_header, v16, BYTE4(v34), "%s failed to start %s to %s because %@", v18, 0x2Au);
      sub_100016290(v33, &qword_10058B780, &qword_100480AC0);

      swift_arrayDestroy();
    }

    else
    {

      (*(v10 + 8))(v13, v9);
    }
  }
}

uint64_t sub_1003FFC30(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v4 = 0;
  }

  v5 = a1;
  sub_1003FD9B0(v4);

  return 1;
}

void sub_1003FFCB0(uint64_t a1)
{
  v2 = v1;
  v122 = swift_isaMask & *v2;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v127 = *(v4 - 8);
  v128 = v4;
  v5 = *(v127 + 64);
  __chkstk_darwin();
  v125 = &v105 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = type metadata accessor for DispatchQoS();
  v124 = *(v126 - 8);
  v7 = *(v124 + 64);
  __chkstk_darwin();
  v123 = &v105 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = type metadata accessor for Logger();
  v120 = *(v121 - 8);
  v9 = *(v120 + 64);
  __chkstk_darwin();
  v118 = v10;
  v119 = &v105 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*(sub_10005DC58(&qword_10058F4D0, &qword_100491AB0) - 8) + 64);
  __chkstk_darwin();
  v13 = &v105 - v12;
  v14 = type metadata accessor for UUID();
  v15 = *(v14 - 1);
  v130 = v14;
  v131 = v15;
  v16 = *(v15 + 8);
  __chkstk_darwin();
  v17 = &v105 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v117 = &v105 - v18;
  __chkstk_darwin();
  v116 = &v105 - v19;
  __chkstk_darwin();
  v21 = &v105 - v20;
  __chkstk_darwin();
  v129 = &v105 - v22;
  v23 = type metadata accessor for DispatchPredicate();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  __chkstk_darwin();
  v27 = &v105 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = OS_dispatch_queue.awdl.unsafeMutableAddressor();
  v29 = *v28;
  *v27 = *v28;
  (*(v24 + 104))(v27, enum case for DispatchPredicate.onQueue(_:), v23);
  v30 = v29;
  LOBYTE(v29) = _dispatchPreconditionTest(_:)();
  v32 = *(v24 + 8);
  v31 = (v24 + 8);
  v32(v27, v23);
  if ((v29 & 1) == 0)
  {
    __break(1u);
    goto LABEL_26;
  }

  if (!a1)
  {
    __break(1u);
    goto LABEL_29;
  }

  aBlock[6] = static String._unconditionallyBridgeFromObjectiveC(_:)();
  aBlock[7] = v33;
  AnyHashable.init<A>(_:)();
  v31 = v130;
  v34 = v131;
  if (*(a1 + 16) && (v35 = sub_1003E0A38(aBlock), (v36 & 1) != 0))
  {
    sub_100002B30(*(a1 + 56) + 32 * v35, &v133);
    sub_1003E9D8C(aBlock);
    v37 = swift_dynamicCast();
    (*(v34 + 7))(v13, v37 ^ 1u, 1, v31);
    if ((*(v34 + 6))(v13, 1, v31) != 1)
    {
      v38 = *(v34 + 4);
      v39 = v129;
      v112 = v34 + 32;
      v111 = v38;
      v38(v129, v13, v31);
      v40 = *(v34 + 2);
      v115 = v34 + 16;
      v114 = v40;
      v40(v21, v39, v31);
      v41 = qword_10059A030;
      swift_beginAccess();
      v42 = sub_10040D2AC(aBlock);
      if (*v43)
      {
        v44 = sub_1003FCE40();
        (v42)(aBlock, 0);
        swift_endAccess();
        v13 = (v34 + 8);
        v27 = *(v34 + 1);
        (v27)(v21, v31);
        v113 = v27;
        if (v44)
        {
          v17 = v44;
          swift_beginAccess();
          v45 = *(v2 + v41);
          v21 = v129;
          if (*(v45 + 16))
          {
            v46 = sub_10002A440(v129);
            if (v47)
            {
              v48 = *(*(v45 + 56) + 8 * v46);
              swift_endAccess();
              v23 = v116;
              if (!(v48 >> 62))
              {
                if (*((v48 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
LABEL_13:
                  v49 = qword_10059BBB0;
                  v114(v23, v21, v31);
                  v50 = v17;
                  v108 = v49;
                  v51 = Logger.logObject.getter();
                  v52 = static os_log_type_t.info.getter();

                  v53 = os_log_type_enabled(v51, v52);
                  v110 = v13;
                  v109 = v50;
                  if (v53)
                  {
                    v54 = swift_slowAlloc();
                    v106 = v52;
                    v55 = v50;
                    v56 = v54;
                    v107 = swift_slowAlloc();
                    aBlock[0] = v107;
                    *v56 = 136315650;
                    sub_1004014D0(&qword_100597520, &type metadata accessor for UUID);
                    v105 = v51;
                    v57 = dispatch thunk of CustomStringConvertible.description.getter();
                    v59 = v58;
                    (v27)(v23, v31);
                    v60 = sub_100002320(v57, v59, aBlock);

                    *(v56 + 4) = v60;
                    *(v56 + 12) = 2080;
                    v61 = [v55 uniqueIdentifier];
                    v62 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                    v64 = v63;

                    v65 = sub_100002320(v62, v64, aBlock);

                    *(v56 + 14) = v65;
                    *(v56 + 22) = 2080;
                    v31 = v130;
                    v66 = [v55 peerAddress];
                    v67 = WiFiMACAddress.wifiAddress.getter();

                    v68 = WiFiAddress.description.getter(v67 & 0xFFFFFFFFFFFFLL);
                    v70 = sub_100002320(v68, v69, aBlock);

                    *(v56 + 24) = v70;
                    v71 = v105;
                    _os_log_impl(&_mh_execute_header, v105, v106, "%s stopping traffic registration for %s to %s", v56, 0x20u);
                    swift_arrayDestroy();
                  }

                  else
                  {

                    (v27)(v23, v31);
                  }

                  v130 = *OS_dispatch_queue.p2p.unsafeMutableAddressor();
                  v116 = *(v2 + qword_10059BBC0);
                  v87 = v116;
                  swift_unownedRetainStrong();
                  v107 = *(v2 + qword_10059A028);
                  v88 = v120;
                  v89 = v2 + v108;
                  v90 = v119;
                  v91 = v121;
                  (*(v120 + 16))(v119, v89, v121);
                  v92 = v117;
                  v114(v117, v129, v31);
                  v93 = (*(v88 + 80) + 80) & ~*(v88 + 80);
                  v94 = (v118 + v131[80] + v93) & ~v131[80];
                  v95 = swift_allocObject();
                  v96 = v122;
                  *(v95 + 16) = *(v122 + 80);
                  *(v95 + 24) = *(v96 + 88);
                  *(v95 + 32) = *(v96 + 96);
                  *(v95 + 48) = *(v96 + 112);
                  *(v95 + 56) = v87;
                  v97 = v109;
                  v98 = v107;
                  *(v95 + 64) = v109;
                  *(v95 + 72) = v98;
                  (*(v88 + 32))(v95 + v93, v90, v91);
                  v111(v95 + v94, v92, v31);
                  aBlock[4] = sub_1004013D8;
                  aBlock[5] = v95;
                  aBlock[0] = _NSConcreteStackBlock;
                  aBlock[1] = 1107296256;
                  aBlock[2] = sub_10000C8B8;
                  aBlock[3] = &unk_10057A048;
                  v99 = _Block_copy(aBlock);
                  v131 = v97;
                  v100 = v130;

                  v101 = v98;
                  v102 = v123;
                  static DispatchQoS.unspecified.getter();
                  v133 = _swiftEmptyArrayStorage;
                  sub_1004014D0(&qword_10058BCC0, &type metadata accessor for DispatchWorkItemFlags);
                  sub_10005DC58(&unk_100595270, &unk_1004AEC80);
                  sub_10005DCA0();
                  v103 = v125;
                  v104 = v128;
                  dispatch thunk of SetAlgebra.init<A>(_:)();
                  OS_dispatch_queue.async(group:qos:flags:execute:)();
                  _Block_release(v99);

                  (*(v127 + 8))(v103, v104);
                  (*(v124 + 8))(v102, v126);
                  (v113)(v129, v31);

                  return;
                }

LABEL_12:
                swift_beginAccess();
                sub_1003ADB58(v21);
                swift_endAccess();

                goto LABEL_13;
              }

LABEL_26:
              if (_CocoaArrayWrapper.endIndex.getter())
              {
                goto LABEL_13;
              }

              goto LABEL_12;
            }
          }

LABEL_29:
          swift_endAccess();
          __break(1u);
          return;
        }
      }

      else
      {
        (v42)(aBlock, 0);
        swift_endAccess();
        v113 = *(v34 + 1);
        (v113)(v21, v31);
      }

      v75 = v129;
      v114(v17, v129, v31);
      v76 = Logger.logObject.getter();
      v77 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v76, v77))
      {
        v78 = swift_slowAlloc();
        v79 = swift_slowAlloc();
        aBlock[0] = v79;
        *v78 = 136315138;
        sub_1004014D0(&qword_100597520, &type metadata accessor for UUID);
        v80 = dispatch thunk of CustomStringConvertible.description.getter();
        v82 = v81;
        v83 = v17;
        v84 = v113;
        (v113)(v83, v31);
        v85 = sub_100002320(v80, v82, aBlock);

        *(v78 + 4) = v85;
        _os_log_impl(&_mh_execute_header, v76, v77, "No client previously asserted for %s", v78, 0xCu);
        sub_100002A00(v79);

        (v84)(v75, v31);
      }

      else
      {

        v86 = v113;
        (v113)(v17, v31);
        (v86)(v75, v31);
      }

      return;
    }
  }

  else
  {
    sub_1003E9D8C(aBlock);
    (*(v34 + 7))(v13, 1, 1, v31);
  }

  sub_100016290(v13, &qword_10058F4D0, &qword_100491AB0);
  v72 = Logger.logObject.getter();
  v73 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v72, v73))
  {
    v74 = swift_slowAlloc();
    *v74 = 0;
    _os_log_impl(&_mh_execute_header, v72, v73, "Failed to unassert because no UUID found", v74, 2u);
  }
}

uint64_t sub_100400BCC(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v21 = a2;
  v22 = a3;
  v23 = a1;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin();
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin();
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v13, a4, v10);
  (*(v8 + 16))(&v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a5, v7);
  v14 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v15 = (v12 + *(v8 + 80) + v14) & ~*(v8 + 80);
  v16 = swift_allocObject();
  (*(v11 + 32))(v16 + v14, v13, v10);
  (*(v8 + 32))(v16 + v15, &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
  v17 = v21;
  *(v16 + ((v9 + v15 + 7) & 0xFFFFFFFFFFFFFFF8)) = v21;
  v18 = v17;
  sub_1002D5690(v18, v22, sub_100401518, v16);
}

void sub_100400E00(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin();
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    (*(v8 + 16))(v11, a3, v7);
    swift_errorRetain();
    v12 = a4;
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v35 = v34;
      *v15 = 136315906;
      sub_1004014D0(&qword_100597520, &type metadata accessor for UUID);
      v16 = dispatch thunk of CustomStringConvertible.description.getter();
      v18 = v17;
      (*(v8 + 8))(v11, v7);
      v19 = sub_100002320(v16, v18, &v35);

      *(v15 + 4) = v19;
      *(v15 + 12) = 2080;
      v20 = [v12 uniqueIdentifier];
      v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v23 = v22;

      v24 = sub_100002320(v21, v23, &v35);

      *(v15 + 14) = v24;
      *(v15 + 22) = 2080;
      v25 = [v12 peerAddress];
      v26 = WiFiMACAddress.wifiAddress.getter();

      v27 = WiFiAddress.description.getter(v26 & 0xFFFFFFFFFFFFLL);
      v29 = sub_100002320(v27, v28, &v35);

      *(v15 + 24) = v29;
      *(v15 + 32) = 2112;
      swift_errorRetain();
      v30 = _swift_stdlib_bridgeErrorToNSError();
      *(v15 + 34) = v30;
      v31 = v33;
      *v33 = v30;
      _os_log_impl(&_mh_execute_header, v13, v14, "%s failed to clear %s to %s because %@", v15, 0x2Au);
      sub_100016290(v31, &qword_10058B780, &qword_100480AC0);

      swift_arrayDestroy();
    }

    else
    {

      (*(v8 + 8))(v11, v7);
    }
  }
}

uint64_t sub_100401168(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v4 = 0;
  }

  v5 = a1;
  sub_1003FFCB0(v4);
}

void sub_1004011F0(void *a1)
{
  v1 = *((swift_isaMask & *a1) + 0x50);
  v2 = *((swift_isaMask & *a1) + 0x58);
  v3 = *((swift_isaMask & *a1) + 0x60);
  v4 = *((swift_isaMask & *a1) + 0x68);
  v5 = *((swift_isaMask & *a1) + 0x70);
  sub_1004013A8();
}

uint64_t sub_10040126C(uint64_t a1)
{
  v2 = qword_10059BBA0;
  v3 = type metadata accessor for UUID();
  (*(*(v3 - 8) + 8))(a1 + v2, v3);
  v4 = *(a1 + qword_10059BBA8 + 8);

  v5 = qword_10059BBB0;
  v6 = type metadata accessor for Logger();
  (*(*(v6 - 8) + 8))(a1 + v5, v6);
  v7 = *(a1 + qword_10059BBB8);
  swift_unownedRelease();
  v8 = *(a1 + qword_10059BBC0);
  swift_unownedRelease();

  v9 = *(a1 + qword_10059A030);
}

uint64_t sub_100401394()
{
  result = *(v0 + qword_10059BBA8);
  v2 = *(v0 + qword_10059BBA8 + 8);
  return result;
}

uint64_t sub_1004013D8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(type metadata accessor for Logger() - 8);
  v6 = (*(v5 + 80) + 80) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for UUID() - 8);
  return sub_100400BCC(*(v0 + 56), *(v0 + 64), *(v0 + 72), v0 + v6, v0 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80)));
}

uint64_t sub_1004014D0(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_100401518(uint64_t a1)
{
  v3 = *(type metadata accessor for Logger() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for UUID() - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = *(v1 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_100400E00(a1, v1 + v4, v1 + v7, v8);
}

uint64_t sub_100401618(uint64_t a1, uint64_t a2)
{
  v4 = sub_10005DC58(&unk_100595FA0, &unk_1004B0190);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100401688(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1004016F0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(type metadata accessor for Logger() - 8);
  v6 = (*(v5 + 80) + 80) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for UUID() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  return sub_1003FF684(*(v0 + 56), *(v0 + 64), *(v0 + 72), v0 + v6, v0 + v9, *(v0 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

void sub_100401810(uint64_t a1)
{
  v3 = *(type metadata accessor for Logger() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for UUID() - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + v8);
  v10 = *(v1 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_1003FF8D0(a1, v1 + v4, v1 + v7, v9, v10);
}

uint64_t sub_100401924()
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

uint64_t sub_100401A04(uint64_t a1)
{
  v3 = *(*((swift_isaMask & *v1) + 0x58) + 8);
  v4 = *((swift_isaMask & *v1) + 0x50);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 64);
  result = __chkstk_darwin();
  v10 = &v16 - v9;
  v11 = qword_10059A138;
  if (*(v1 + qword_10059A138) != a1)
  {
    v12 = *(v1 + qword_10059A130);
    swift_unownedRetainStrong();
    v13 = *(*v12 + 96);
    swift_beginAccess();
    (*(v6 + 16))(v10, v12 + v13, AssociatedTypeWitness);

    v14 = *(v1 + v11);
    if ((v14 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v14 <= 0xFF)
    {
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      (*(AssociatedConformanceWitness + 416))(v14 | ((v14 != 0) << 16), AssociatedTypeWitness, AssociatedConformanceWitness);
      return (*(v6 + 8))(v10, AssociatedTypeWitness);
    }

    __break(1u);
  }

  return result;
}

void sub_100401C14(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + qword_10059A140 + 8);
  if (v4)
  {
    if (a2)
    {
      v5 = *(v2 + qword_10059A140) == a1 && v4 == a2;
      if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {

        sub_100401C9C(1);
      }

      return;
    }
  }

  else if (!a2)
  {
    return;
  }

  sub_100401FAC();
}

void sub_100401C9C(char a1)
{
  v2 = v1;
  v4 = swift_isaMask & *v1;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v20 = v8;
    *v7 = 136315138;
    if (a1)
    {
      v9 = 0xD000000000000010;
    }

    else
    {
      v9 = 0x6C7561686B636142;
    }

    if (a1)
    {
      v10 = 0x80000001004C1990;
    }

    else
    {
      v10 = 0xED000074736F4C20;
    }

    v11 = sub_100002320(v9, v10, &v20);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v5, v6, "Stopping internetSharing provider based on policy update: %s", v7, 0xCu);
    sub_100002A00(v8);
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    v19 = a1;
    v14 = qword_10059B8C0;
    swift_beginAccess();
    v15 = *&v13[v14];
    v16 = *(v4 + 80);
    v17 = *(v4 + 88);
    _s17ResponderInstanceCMa();
    sub_10020CB70();

    v18 = Dictionary.isEmpty.getter();

    if (v18)
    {
      sub_1002F29CC();

      swift_unknownObjectWeakAssign();
    }

    else
    {
      *(v2 + qword_10059A158) = v19 & 1;
      NANBitmap.Channel.operatingClass.getter(*&v13[v14]);
      __chkstk_darwin();
      type metadata accessor for Dictionary.Values();

      swift_getWitnessTable();
      Sequence.forEach(_:)();
    }
  }
}

void sub_100401FAC()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {

LABEL_3:
    v2 = swift_unknownObjectWeakLoadStrong();
    if (v2)
    {

      if (!*&v0[qword_10059A140 + 8])
      {

        sub_100401C9C(0);
      }
    }

    return;
  }

  v3 = &v0[qword_10059A140];
  v4 = *&v0[qword_10059A140 + 8];
  if (!v4)
  {
    goto LABEL_3;
  }

  v5 = *v3;
  v6 = *&v0[qword_10059A140 + 8];

  v7 = v0;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v15 = v11;
    *v10 = 136315138;
    if (v3[1])
    {
      v12 = *v3;
      v13 = v3[1];
    }

    else
    {
      v13 = 0xE300000000000000;
      v12 = 7104878;
    }

    v14 = sub_100002320(v12, v13, &v15);

    *(v10 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v8, v9, "internetSharing provider (interfaceToProvideInternetFrom %s calling startProviding ", v10, 0xCu);
    sub_100002A00(v11);
  }

  sub_1004027AC(v5, v4);
}

uint64_t sub_1004021C0()
{
  v1 = v0;
  v2 = *v0;
  v3 = swift_isaMask;
  sub_100402338();
  v4 = qword_10059A148;
  swift_beginAccess();
  v5 = *(v1 + v4);
  v6 = *((v3 & v2) + 0x50);
  v7 = *((v3 & v2) + 0x58);
  type metadata accessor for LowLatencyInternetProviderPolicy.Requester();
  sub_1002CAFC4();
  NANBitmap.Channel.operatingClass.getter(v5);
  type metadata accessor for Dictionary.Values();

  swift_getWitnessTable();
  Sequence.filter(_:)();
  v8 = Array.count.getter();

  v9 = *(v1 + qword_10059A138);
  *(v1 + qword_10059A138) = v8;
  return sub_100401A04(v9);
}

void sub_100402338()
{
  v1 = v0;
  v2 = *v0;
  v3 = swift_isaMask;
  v4 = sub_10005DC58(&unk_10059A3C0, &unk_1004B3060);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin();
  v7 = &v39[-1] - v6;
  v8 = qword_10059A148;
  swift_beginAccess();
  v9 = *(v1 + v8);
  v10 = *((v3 & v2) + 0x50);
  v11 = *((v3 & v2) + 0x58);
  type metadata accessor for LowLatencyInternetProviderPolicy.Requester();
  sub_1002CAFC4();

  v12 = Dictionary.isEmpty.getter();

  if ((v12 & 1) != 0 || (v13 = v1 + qword_10059A140, *(v1 + qword_10059A140 + 8)))
  {
    v14 = *(v1 + v8);

    v15 = Dictionary.isEmpty.getter();

    if (v15)
    {
      v16 = (v1 + qword_10059A140);
      v17 = *(v1 + qword_10059A140);
      v18 = *(v1 + qword_10059A140 + 8);
      *v16 = 0;
      v16[1] = 0;
      sub_100401C14(v17, v18);

      v19 = qword_10059A120;
      swift_beginAccess();
      v20 = *(v1 + v19);
      *(v1 + v19) = 0;
    }
  }

  else
  {
    v21 = qword_10059A120;
    swift_beginAccess();
    v38 = *(v1 + v21);
    v22 = *(v1 + qword_10059A130);
    swift_unownedRetainStrong();
    v23 = *(v22 + *(*v22 + 800));
    swift_unownedRetainStrong();

    sub_1003EBAC8(v7);

    v24 = *OS_dispatch_queue.nan.unsafeMutableAddressor();
    v25 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v26 = swift_allocObject();
    v26[2] = v10;
    v26[3] = v11;
    v26[4] = v25;
    swift_beginAccess();
    v27 = *(v1 + v21);
    v28 = v24;
    v29 = v28;
    if (v27)
    {
      ObservableWiFiProperty.wrappedValue.getter(v4, v39);
    }

    else
    {
      ObservableWiFiProperty.registerForChanges(on:using:valueUpdateHandler:)(v28, (v1 + v21), sub_1004098A8, v26, v4, v39);
    }

    v30 = v39[0];
    v31 = v39[1];
    swift_endAccess();

    sub_100016290(v7, &unk_10059A3C0, &unk_1004B3060);
    v32 = (v1 + qword_10059A140);
    v33 = *(v1 + qword_10059A140);
    v34 = *(v1 + qword_10059A140 + 8);
    *v32 = v30;
    v32[1] = v31;
    sub_100401C14(v33, v34);

    if (!v38 && !*(v13 + 1))
    {
      v35 = Logger.logObject.getter();
      v36 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        *v37 = 0;
        _os_log_impl(&_mh_execute_header, v35, v36, "Waiting to start publishing internetSharing provider because there is no interface to share internet from", v37, 2u);
      }
    }
  }
}

uint64_t (*sub_100402714(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_100402778;
}

uint64_t sub_100402778(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);
    return sub_1004021C0();
  }

  return result;
}

void sub_1004027AC(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = swift_isaMask & *v2;
  v7 = *(*(v6 + 0x58) + 8);
  v8 = *(v6 + 80);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v9 = type metadata accessor for Preferences();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin();
  v13 = v32 - v12;
  v14 = *(v3 + qword_10059A130);
  swift_unownedRetainStrong();
  WiFiInterface.preferences.getter();

  LOBYTE(v7) = Preferences.internetSharingOptions.getter(v9);
  (*(v10 + 8))(v13, v9);
  if (v7)
  {
    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v15 & 1) == 0)
    {

      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v32[0] = v19;
        *v18 = 136315138;
        *(v18 + 4) = sub_100002320(a1, a2, v32);
        _os_log_impl(&_mh_execute_header, v16, v17, "Starting internetSharing provider from %s based on policy update", v18, 0xCu);
        sub_100002A00(v19);
      }

      v20 = NANConstants.internetSharingServiceName.unsafeMutableAddressor();
      v21 = *v20;
      v22 = v20[1];
      v23 = objc_allocWithZone(WiFiAwarePublishConfiguration);

      v24 = String._bridgeToObjectiveC()();

      v25 = [v23 initWithServiceName:v24];

      [v25 setAuthenticationType:0];
      v26 = objc_opt_self();
      v27 = String._bridgeToObjectiveC()();
      v28 = [v26 provideInternetToInitiatorsFromInterface:v27];

      [v25 setInternetSharingConfiguration:v28];
      v29 = [v25 internetSharingConfiguration];
      if (v29)
      {
        v30 = v29;
        [v29 setUseBridging:1];
      }

      *(v3 + qword_10059A158) = 2;
      swift_unownedRetainStrong();
      sub_10040CAE8();

      LOBYTE(v32[0]) = 1;
      v31 = sub_1003653B0(v25, v3, 0, 0, 0x100000000uLL);

      swift_unknownObjectWeakAssign();
    }
  }

  else
  {
  }
}

uint64_t sub_100402C84(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if ((a3 & 0x100000000000000) != 0)
  {
    v9 = swift_isaMask & *v3;
    v10 = qword_10059A148;
    swift_beginAccess();
    v11 = *(v3 + v10);
    __chkstk_darwin();
    v12 = *(v9 + 80);
    v13 = *(v9 + 88);
    type metadata accessor for LowLatencyInternetProviderPolicy.Requester();
    sub_1002CAFC4();

    Dictionary.filter(_:)();
    __chkstk_darwin();
    type metadata accessor for Dictionary();
    swift_getWitnessTable();
    Sequence.forEach(_:)();
  }

  else
  {
    v7 = *(v3 + qword_10059A130);
    swift_unownedRetainStrong();
    sub_10040CAE8();

    sub_10034A84C(a3 & 0xFFFFFFFFFFFFFFLL, a1, a2);
  }
}

uint64_t sub_100402EBC(char a1)
{
  if (a1)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x6C7561686B636142;
  }
}

BOOL sub_100402F04(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v3 = *(a3 + 24);
  return static NANInternetSharingStatistics.Status.__derived_enum_equals(_:_:)(*a1, *a2);
}

Swift::Int sub_100402F18(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  return NANInternetSharingStatistics.Status.hashValue.getter(*v1);
}

void sub_100402F28(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  NANInternetSharingStatistics.Status.hash(into:)(a1, *v2);
}

Swift::Int sub_100402F38(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  NANInternetSharingStatistics.Status.hash(into:)(v7, *v2);
  return Hasher._finalize()();
}

uint64_t sub_100402F80(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  return sub_100402EBC(*v1);
}

id sub_100402F90()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = *v0;
  v4 = swift_isaMask;
  swift_beginAccess();
  v5 = *((v4 & v3) + 0x50);
  v6 = *((v4 & v3) + 0x58);
  type metadata accessor for LowLatencyInternetProviderPolicy.Requester();
  sub_1002CAFC4();
  type metadata accessor for Dictionary();
  Dictionary.removeAll(keepingCapacity:)(0);
  swift_endAccess();
  v8.receiver = v1;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, "dealloc");
}

uint64_t sub_1004030A4(uint64_t a1)
{
  v2 = qword_10059BBC8;
  v3 = type metadata accessor for Logger();
  (*(*(v3 - 8) + 8))(a1 + v2, v3);
  v4 = *(a1 + qword_10059A120);

  v5 = *(a1 + qword_10059A128 + 8);

  v6 = *(a1 + qword_10059A130);
  swift_unownedRelease();
  v7 = *(a1 + qword_10059A140 + 8);

  v8 = *(a1 + qword_10059A148);

  return swift_unknownObjectWeakDestroy();
}

void sub_100403178(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = v4;
  v9 = *((swift_isaMask & *v5) + 0x50);
  v10 = *((swift_isaMask & *v5) + 0x58);
  v18[0] = a4 & 0xFFFFFFFFFFFFFFLL;
  v18[1] = a2;
  v18[2] = a3;
  v19 = 0;
  swift_beginAccess();
  sub_100286C2C(a2, a3);
  type metadata accessor for LowLatencyInternetProviderPolicy.Requester();
  sub_1002CAFC4();
  type metadata accessor for Dictionary();
  Dictionary.subscript.setter();
  swift_endAccess();
  sub_1004021C0();
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v18[0] = v14;
    *v13 = 136315138;
    v15 = WiFiAddress.description.getter(a1 & 0xFFFFFFFFFFFFLL);
    v17 = sub_100002320(v15, v16, v18);

    *(v13 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v11, v12, "Provider Added internetSharing requester %s", v13, 0xCu);
    sub_100002A00(v14);
  }
}

uint64_t sub_100403384(uint64_t a1)
{
  v3 = swift_isaMask & *v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v18[0] = v7;
    *v6 = 136315138;
    v8 = WiFiAddress.description.getter(a1 & 0xFFFFFFFFFFFFLL);
    v10 = sub_100002320(v8, v9, v18);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "Provider Removed internetSharing requester %s", v6, 0xCu);
    sub_100002A00(v7);
  }

  swift_beginAccess();
  v11 = *(v3 + 80);
  v12 = *(v3 + 88);
  type metadata accessor for LowLatencyInternetProviderPolicy.Requester();
  sub_1002CAFC4();
  type metadata accessor for Dictionary();
  Dictionary.removeValue(forKey:)();
  v13 = v18[0];
  v14 = v18[1];
  v15 = v18[2];
  v16 = v19;
  swift_endAccess();
  sub_100409884(v13, v14, v15, v16);
  return sub_1004021C0();
}

uint64_t sub_100403590()
{
  v1 = *v0;
  v2 = swift_isaMask;
  v3 = qword_10059A148;
  swift_beginAccess();
  v4 = *(v0 + v3);
  v5 = *((v2 & v1) + 0x50);
  v6 = *((v2 & v1) + 0x58);
  type metadata accessor for LowLatencyInternetProviderPolicy.Requester();
  sub_1002CAFC4();
  Dictionary.subscript.getter();
  if (v12 == 2)
  {
    sub_100409884(v9, v10, v11, 2);
    swift_endAccess();
    return 0;
  }

  else
  {
    v7 = v10;
    sub_100286C2C(v10, v11);
    swift_endAccess();
    sub_100409884(v9, v10, v11, v12);
  }

  return v7;
}

uint64_t sub_1004036B8()
{
  v1 = *v0;
  v2 = swift_isaMask;
  v3 = qword_10059A148;
  swift_beginAccess();
  v4 = *(v0 + v3);
  v7 = *((v2 & v1) + 0x50);
  v8 = *((v2 & v1) + 0x58);
  type metadata accessor for LowLatencyInternetProviderPolicy.Requester();
  sub_1002CAFC4();

  Dictionary.filter(_:)();
  v5 = Dictionary.count.getter();

  return v5;
}

uint64_t sub_1004037E0(uint64_t a1)
{
  v3 = *(*((swift_isaMask & *v1) + 0x58) + 8);
  v4 = *((swift_isaMask & *v1) + 0x50);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v5 = type metadata accessor for Preferences();
  v65 = *(v5 - 8);
  v6 = *(v65 + 64);
  __chkstk_darwin();
  v64 = &v59 - v7;
  v8 = *(*(sub_10005DC58(&unk_100596880, &unk_1004B0F70) - 8) + 64);
  __chkstk_darwin();
  v10 = &v59 - v9;
  v11 = type metadata accessor for NANPeer(0);
  v12 = *(*(v11 - 1) + 64);
  __chkstk_darwin();
  v14 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v16 = &v59 - v15;
  v17 = *(v1 + qword_10059A130);
  swift_unownedRetainStrong();
  v18 = *(v17 + *(*v17 + 800));
  swift_unownedRetainStrong();
  v67 = v17;

  sub_1003EB084();
  v20 = v19;
  v22 = v21;

  v23 = 0x300000000;
  v66 = 0x300000000;
  if (v20)
  {

    v23 = v22 & 0xFFFFFFFFFFFFLL;
  }

  v63 = v23;
  swift_unownedRetainStrong();
  sub_10040CD68(a1 & 0xFFFFFFFFFFFFLL, v16);

  v24 = *&v16[v11[18] + 8];
  sub_100023A18(v16, type metadata accessor for NANPeer);
  if ((v24 & 0xFF00000000) != 0x300000000)
  {
    v66 = Optional<A>.init(integerLiteral:)(BYTE6(v24)) & 0xFFFFFFFFFFFFLL;
  }

  swift_unownedRetainStrong();
  sub_10040CD68(a1 & 0xFFFFFFFFFFFFLL, v14);

  sub_100012400(&v14[v11[19]], v10, &unk_100596880, &unk_1004B0F70);
  v25 = type metadata accessor for NANAttribute.CustomDeviceInformation(0);
  if ((*(*(v25 - 8) + 48))(v10, 1, v25) == 1)
  {
    sub_100016290(v10, &unk_100596880, &unk_1004B0F70);
  }

  else
  {
    v26 = *(v10 + 1);
    sub_100023A18(v10, type metadata accessor for NANAttribute.CustomDeviceInformation);
    if ((*NANAttribute.CustomDeviceInformation.Flags.doesNotSupportSimultaneousDualBand.unsafeMutableAddressor() & ~v26) == 0)
    {
      goto LABEL_10;
    }
  }

  v27 = *&v14[v11[17] + 8];
  if (v27)
  {
    v28 = *(v27 + 16) > 1uLL;
    goto LABEL_11;
  }

LABEL_10:
  v28 = 0;
LABEL_11:
  sub_100023A18(v14, type metadata accessor for NANPeer);
  swift_unownedRetainStrong();
  v29 = sub_10040E5FC();

  v30 = *(v29 + 16);
  if (v30)
  {
    v61 = v28;
    v62 = v5;
    v72 = _swiftEmptyArrayStorage;
    v69 = v30;
    v70 = v29;
    sub_100027CF0(0, v30, 0);
    v31 = v72;
    v32 = v70 + 64;
    v33 = -1 << *(v70 + 32);
    v34 = _HashTable.startBucket.getter();
    v36 = v69;
    result = v70;
    v37 = 0;
    v68 = v70 + 72;
    v71 = v32;
    while ((v34 & 0x8000000000000000) == 0 && v34 < 1 << *(result + 32))
    {
      v39 = v34 >> 6;
      if ((*(v32 + 8 * (v34 >> 6)) & (1 << v34)) == 0)
      {
        goto LABEL_33;
      }

      v40 = *(result + 36);
      v41 = *(result + 48) + 8 * v34;
      v42 = *v41;
      v43 = *(v41 + 4);
      v44 = *(v41 + 5);
      v72 = v31;
      v46 = v31[2];
      v45 = v31[3];
      if (v46 >= v45 >> 1)
      {
        v60 = v40;
        sub_100027CF0((v45 > 1), v46 + 1, 1);
        v40 = v60;
        v36 = v69;
        result = v70;
        v31 = v72;
      }

      v31[2] = v46 + 1;
      v47 = v31;
      v48 = &v31[v46];
      *(v48 + 8) = v42;
      *(v48 + 36) = v43;
      *(v48 + 37) = v44;
      v38 = 1 << *(result + 32);
      if (v34 >= v38)
      {
        goto LABEL_34;
      }

      v32 = v71;
      v49 = *(v71 + 8 * v39);
      if ((v49 & (1 << v34)) == 0)
      {
        goto LABEL_35;
      }

      if (v40 != *(result + 36))
      {
        goto LABEL_36;
      }

      v50 = v49 & (-2 << (v34 & 0x3F));
      if (v50)
      {
        v38 = __clz(__rbit64(v50)) | v34 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v51 = v39 << 6;
        v52 = v39 + 1;
        v53 = (v68 + 8 * v39);
        while (v52 < (v38 + 63) >> 6)
        {
          v55 = *v53++;
          v54 = v55;
          v51 += 64;
          ++v52;
          if (v55)
          {
            sub_10002BEB8(v34, v40, 0);
            v36 = v69;
            result = v70;
            v38 = __clz(__rbit64(v54)) + v51;
            goto LABEL_14;
          }
        }

        sub_10002BEB8(v34, v40, 0);
        v36 = v69;
        result = v70;
      }

LABEL_14:
      ++v37;
      v34 = v38;
      v31 = v47;
      if (v37 == v36)
      {

        v5 = v62;
        LOBYTE(v28) = v61;
        v56 = v31;
        goto LABEL_31;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
  }

  else
  {

    v56 = _swiftEmptyArrayStorage;
LABEL_31:
    swift_unownedRetainStrong();
    v57 = v64;
    WiFiInterface.preferences.getter();

    v58 = Preferences.autoInternetSharingOnInfraLost.getter(v5);
    (*(v65 + 8))(v57, v5);
    return sub_100408EB4(v63, v66, v28, v56, v58 & 1);
  }

  return result;
}

uint64_t sub_100403EC0(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result;
    v6 = (result + qword_10059A140);
    v7 = *(result + qword_10059A140);
    v8 = *(result + qword_10059A140 + 8);
    *v6 = v3;
    v6[1] = v2;

    sub_100401C14(v7, v8);
  }

  return result;
}

uint64_t sub_100403F54(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = *(a1 + 10);
  v7 = *(a1 + 11);
  v8 = *(a2 + qword_10059A130);
  v9 = *(a1 + 8);
  swift_unownedRetainStrong();
  sub_10040CAE8();

  sub_10034A84C(v9 | (v6 << 16) | (v7 << 24), a3, a4);
}

unint64_t sub_100403FE8(void *a1)
{
  v3 = swift_isaMask & *v1;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_4;
  }

  v5 = qword_10059B8C0;
  v6 = Strong;
  swift_beginAccess();
  v7 = *&v6[v5];

  v8 = WiFiAwarePublisherDataSessionHandle.peerServiceIdentifier.getter();
  LOWORD(v30[0]) = v8;
  BYTE2(v30[0]) = BYTE2(v8);
  BYTE3(v30[0]) = BYTE3(v8);
  BYTE4(v30[0]) = BYTE4(v8);
  BYTE5(v30[0]) = BYTE5(v8);
  BYTE6(v30[0]) = BYTE6(v8);
  v9 = *(v3 + 80);
  v10 = *(v3 + 88);
  _s17ResponderInstanceCMa();
  sub_10020CB70();
  Dictionary.subscript.getter();

  v11 = v31;
  if (v31)
  {
    v12 = qword_100594B08;
    swift_beginAccess();
    sub_1002CB130(v31 + v12, v30);

    v13 = *(v30 + 2);
    v14 = BYTE6(v30[0]);
    v15 = HIBYTE(v30[0]);
    sub_1002CB18C(v30);
    v16 = 0;
    v17 = v13 | (v14 << 32) | (v15 << 40);
  }

  else
  {
LABEL_4:
    v18 = swift_unknownObjectWeakLoadStrong();
    if (v18)
    {
      v19 = v18;
      sub_1002FA108(a1, NANBitmap.Channel.operatingClass.getter, 0);
    }

    v20 = a1;
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v30[0] = v24;
      *v23 = 136315138;
      v25 = WiFiAwarePublisherDataSessionHandle.peerServiceIdentifier.getter();
      v26 = NANPeerServiceIdentifier.description.getter(v25 & 0xFFFFFFFFFFFFFFLL);
      v28 = sub_100002320(v26, v27, v30);

      *(v23 + 4) = v28;
      _os_log_impl(&_mh_execute_header, v21, v22, "Unknown internetSharing requester address for %s", v23, 0xCu);
      sub_100002A00(v24);
    }

    v17 = 0;
    v16 = 1;
  }

  return v17 | (v16 << 48);
}

uint64_t sub_1004042B4(uint64_t a1)
{
  _StringGuts.grow(_:)(34);

  v2._countAndFlagsBits = WiFiP2PError.description.getter(a1);
  String.append(_:)(v2);

  sub_100402C84(0xD000000000000020, 0x80000001004C1BE0, 0x100000000000000);
}

void sub_100404370(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  sub_1004042B4(a3);
}

uint64_t sub_1004043C4(uint64_t a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(type metadata accessor for DispatchQoS() - 8);
  v9 = *(v8 + 64);
  result = __chkstk_darwin();
  v12 = v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 == -1)
  {
    return result;
  }

  v13 = v1[qword_10059A158];
  if (v13 != 2 && (v13 & 1) != 0)
  {
    v14 = result;
    v15 = *OS_dispatch_queue.nan.unsafeMutableAddressor();
    v16 = swift_allocObject();
    *(v16 + 16) = v1;
    v29 = sub_100409BA0;
    v30 = v16;
    aBlock = _NSConcreteStackBlock;
    v26 = 1107296256;
    v27 = sub_10000C8B8;
    v28 = &unk_10057A5A0;
    v17 = _Block_copy(&aBlock);
    v18 = v15;
    v19 = v1;
    static DispatchQoS.unspecified.getter();
    v24[1] = _swiftEmptyArrayStorage;
    sub_10001CF14();
    sub_10005DC58(&unk_100595270, &unk_1004AEC80);
    sub_10005DCA0();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v17);

    (*(v4 + 8))(v7, v3);
    (*(v8 + 8))(v12, v14);
  }

  v20 = 0xD000000000000018;
  aBlock = 0;
  v26 = 0xE000000000000000;
  _StringGuts.grow(_:)(29);

  aBlock = 0xD00000000000001BLL;
  v26 = 0x80000001004C1BC0;
  if (a1 > 2)
  {
    if (a1 == 3)
    {
      v21 = 0xEC0000006572756CLL;
      v20 = 0x6961462070696843;
      goto LABEL_16;
    }

    if (a1 == 4)
    {
      v21 = 0x80000001004BA540;
      goto LABEL_16;
    }

LABEL_13:
    v21 = 0xE700000000000000;
    v20 = 0x6E776F6E6B6E55;
    goto LABEL_16;
  }

  if (a1 == 1)
  {
    v21 = 0xE900000000000074;
    v20 = 0x754F2064656D6954;
    goto LABEL_16;
  }

  if (a1 != 2)
  {
    goto LABEL_13;
  }

  v21 = 0xEE00646574736575;
  v20 = 0x7165522072657355;
LABEL_16:
  v22._countAndFlagsBits = v20;
  v22._object = v21;
  String.append(_:)(v22);

  v23 = aBlock;
  LOBYTE(aBlock) = 1;
  sub_100402C84(v23, v26, 0x100000000000000);
}

void sub_1004047B8(uint64_t a1)
{
  if (*(a1 + qword_10059A140 + 8))
  {
    sub_100401FAC();
  }

  else
  {
    sub_100402338();
  }
}

void sub_1004047FC(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  sub_1004043C4(a3);
}

uint64_t sub_100404850@<X0>(int *a1@<X0>, uint64_t *a2@<X1>, BOOL *a3@<X8>)
{
  v5 = *a2;
  v6 = swift_isaMask;
  v7 = *(a1 + 2);
  v8 = sub_100402714(v16);
  v17 = *a1;
  v18 = v7;
  v9 = *((v6 & v5) + 0x50);
  v10 = *((v6 & v5) + 0x58);
  type metadata accessor for LowLatencyInternetProviderPolicy.Requester();
  sub_1002CAFC4();
  type metadata accessor for Dictionary();
  v12 = Dictionary.subscript.modify();
  v13 = *(v11 + 24);
  if (v13 != 2)
  {
    *(v11 + 24) = 1;
  }

  v12(&v15, 0);
  result = v8(v16, 0);
  *a3 = v13 == 2;
  return result;
}

void sub_100404990(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v7 = a3;
  v8 = a5;
  v9 = a1;
  sub_10040996C(v7);
}

uint64_t sub_100404A08(void *a1, uint64_t a2)
{
  if (a2 != -1)
  {
    v4 = sub_100403FE8(a1);
    if ((v4 & 0x1000000000000) == 0)
    {
      v6 = v4;
      v7 = BYTE2(v4);
      v8 = BYTE3(v4);
      v9 = BYTE4(v4);
      v10 = BYTE5(v4);
      sub_100404CE4(&v6, v2, a2);
    }
  }

  return sub_100404AA8(v2);
}

uint64_t sub_100404AA8(void *a1)
{
  v2 = swift_isaMask & *a1;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = qword_10059B8C0;
    v5 = result;
    swift_beginAccess();
    v6 = *&v5[v4];

    v7 = *(v2 + 80);
    v8 = *(v2 + 88);
    _s17ResponderInstanceCMa();
    sub_10020CB70();
    v9 = Dictionary.count.getter();

    if (v9 == 1)
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v11 = qword_10059B8C0;
        v12 = Strong;
        swift_beginAccess();
        v13 = *&v12[v11];

        NANBitmap.Channel.operatingClass.getter(v13);

        type metadata accessor for Dictionary.Keys();
        swift_getWitnessTable();
        Collection.first.getter();

        result = WiFiAwarePublisherDataSessionHandle.peerServiceIdentifier.getter();
        if ((v19 & 1) == 0)
        {
          result = static NANPeerServiceIdentifier.__derived_struct_equals(_:_:)((v16 | ((v17 | (v18 << 16)) << 32)) & 0xFFFFFFFFFFFFFFLL, result & 0xFFFFFFFFFFFFFFLL);
          if ((result & 1) != 0 && *(a1 + qword_10059A158) != 2)
          {
            v14 = swift_unknownObjectWeakLoadStrong();
            if (v14)
            {
              v15 = v14;
              sub_1002F29CC();
            }

            return swift_unknownObjectWeakAssign();
          }
        }
      }

      else
      {
        return WiFiAwarePublisherDataSessionHandle.peerServiceIdentifier.getter();
      }
    }
  }

  return result;
}

uint64_t sub_100404CE4(unsigned __int8 *a1, void *a2, uint64_t a3)
{
  v4 = *a2;
  v5 = swift_isaMask;
  v6 = *a1;
  v7 = a1[1];
  v8 = a1[2];
  v9 = a1[3];
  v10 = a1[4];
  v11 = a1[5];
  v36 = sub_100402714(&v39);
  v35 = v6;
  v43 = v6;
  v12 = v7;
  v13 = a2;
  v44 = v12;
  v45 = v8;
  v46 = v9;
  v47 = v10;
  v48 = v11;
  v14 = *((v5 & v4) + 0x50);
  v15 = *((v5 & v4) + 0x58);
  type metadata accessor for LowLatencyInternetProviderPolicy.Requester();
  sub_1002CAFC4();
  type metadata accessor for Dictionary();
  v17 = Dictionary.subscript.modify();
  if (*(v16 + 24) != 2)
  {
    *(v16 + 24) = 0;
  }

  v17(v38, 0);
  result = v36(&v39, 0);
  if ((*(a2 + qword_10059A158) & 1) == 0)
  {
    result = sub_1004037E0(v35 | (v12 << 8) | (v8 << 16) | (v9 << 24) | (v10 << 32) | (v11 << 40));
    if (result)
    {
      v19 = qword_10059A148;
      swift_beginAccess();
      v20 = *(v13 + v19);
      v43 = v35;
      v44 = v12;
      v45 = v8;
      v46 = v9;
      v47 = v10;
      v48 = v11;
      Dictionary.subscript.getter();
      v21 = v42;
      if (v42 == 2)
      {
        sub_100409884(v39, v40, v41, 2);
        return swift_endAccess();
      }

      v22 = 0xD000000000000011;
      v23 = v39;
      v24 = BYTE4(v39);
      v25 = BYTE5(v39);
      v37 = BYTE6(v39);
      v26 = v39;
      v27 = v40;
      v28 = v41;
      swift_endAccess();
      sub_100409884(v26, v27, v28, v21);
      v39 = 0;
      v40 = 0xE000000000000000;
      _StringGuts.grow(_:)(40);

      v39 = 0xD000000000000026;
      v40 = 0x80000001004C1B90;
      if (a3 <= 1)
      {
        v30 = v24;
        if (a3 == -1)
        {
          v31 = 0x80000001004BA5E0;
          v29 = v37;
          goto LABEL_19;
        }

        v29 = v37;
        if (a3 == 1)
        {
          v31 = 0xE900000000000074;
          v22 = 0x754F2064656D6954;
          goto LABEL_19;
        }
      }

      else
      {
        if (a3 == 2)
        {
          v30 = v24;
          v31 = 0xEE00646574736575;
          v22 = 0x7165522072657355;
          v29 = v37;
          goto LABEL_19;
        }

        v29 = v37;
        v30 = v24;
        if (a3 == 3)
        {
          v31 = 0xEC0000006572756CLL;
          v22 = 0x6961462070696843;
          goto LABEL_19;
        }

        if (a3 == 4)
        {
          v31 = 0x80000001004BA540;
          v22 = 0xD000000000000018;
LABEL_19:
          v32._countAndFlagsBits = v22;
          v32._object = v31;
          String.append(_:)(v32);

          v33 = v39;
          LOBYTE(v39) = 0;
          sub_100402C84(v33, v40, v23 | (v30 << 32) | (v25 << 40) | (v29 << 48));
        }
      }

      v31 = 0xE700000000000000;
      v22 = 0x6E776F6E6B6E55;
      goto LABEL_19;
    }
  }

  return result;
}

void sub_1004050A0(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = a3;
  v7 = a1;
  sub_100404A08(v6, a4);
}

uint64_t sub_100405140()
{
  result = type metadata accessor for Logger();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    return swift_initClassMetadata2();
  }

  return result;
}

void sub_1004052E4(uint64_t a1)
{
  v2 = v1;
  v4 = swift_isaMask & *v2;
  v5 = *(type metadata accessor for DispatchTimeInterval() - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v8 = (&v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v10 = &v46 - v9;
  v11 = __chkstk_darwin();
  v13 = (&v46 - v12);
  if (*(v2 + qword_10059BBD8))
  {
    if (!a1)
    {
      v50 = v11;
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong || (Strong = swift_unknownObjectWeakLoadStrong()) != 0)
      {
      }

      else
      {
        v21 = qword_10059A228;
        swift_beginAccess();
        v22 = *(v2 + v21);
        *(v2 + v21) = &_swiftEmptyDictionarySingleton;

        v23 = Logger.logObject.getter();
        v24 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v23, v24))
        {
          v25 = swift_slowAlloc();
          *v25 = 0;
          _os_log_impl(&_mh_execute_header, v23, v24, "Starting internetSharing requester based on policy update", v25, 2u);
        }

        v26 = NANConstants.internetSharingServiceName.unsafeMutableAddressor();
        v27 = *v26;
        v28 = v26[1];
        v29 = objc_allocWithZone(WiFiAwareSubscribeConfiguration);

        v30 = String._bridgeToObjectiveC()();

        v31 = [v29 initWithServiceName:v30];

        [v31 setAuthenticationType:0];
        v32 = *(v2 + qword_10059A1E0);
        swift_unownedRetainStrong();
        sub_10040CAE8();

        v51 = 1;
        v49 = v31;
        v33 = sub_100365384(v31, v2, 0, 0, 0x100000000uLL);

        swift_unknownObjectWeakAssign();

        v34 = qword_10059A200;
        v35 = *(v2 + qword_10059A200);
        if (v35)
        {
          v36 = *(v2 + qword_10059A200);
        }

        else
        {
          *v13 = 25;
          v47 = *(v5 + 104);
          v37 = v50;
          v47(v13, enum case for DispatchTimeInterval.seconds(_:), v50);
          v48 = *OS_dispatch_queue.nan.unsafeMutableAddressor();
          v38 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v39 = swift_allocObject();
          v39[2] = *(v4 + 80);
          v39[3] = *(v4 + 88);
          v39[4] = v38;
          v40 = v47;
          v47(v10, enum case for DispatchTimeInterval.never(_:), v37);
          *v8 = 100;
          v40(v8, enum case for DispatchTimeInterval.milliseconds(_:), v37);
          v41 = type metadata accessor for P2PTimer();
          v42 = *(v41 + 48);
          v43 = *(v41 + 52);
          swift_allocObject();
          v44 = v48;

          v35 = P2PTimer.init(deadlineAfter:on:repeating:leeway:_:)(v13, v44, v10, v8, sub_100409960, v39);
        }

        v45 = *(v2 + v34);
        *(v2 + v34) = v35;
      }
    }
  }

  else if (a1)
  {
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "Stopping internetSharing requester based on policy update", v17, 2u);
    }

    sub_100405948();
    v18 = swift_unknownObjectWeakLoadStrong();
    if (v18)
    {
      v19 = v18;
      sub_100323CDC();
    }

    swift_unknownObjectWeakAssign();
    v20 = *(v2 + qword_10059A208);
    *(v2 + qword_10059A208) = 0;
  }
}

void sub_1004058A4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (*(Strong + qword_10059BBD8))
    {
      v2 = swift_unknownObjectWeakLoadStrong();
      if (v2)
      {
        v3 = v2;

        v1 = v3;
      }

      else
      {
        sub_100405948();
        sub_1004059BC(0xD00000000000002ELL, 0x80000001004C1A10);
      }
    }
  }
}

uint64_t sub_100405948()
{
  v1 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_100394D24();
  }

  swift_unknownObjectWeakAssign();
  v4 = *(v1 + qword_10059A200);
  *(v1 + qword_10059A200) = 0;
}

void sub_1004059BC(uint64_t a1, unint64_t a2)
{
  if (*(v2 + qword_10059BBD8) != 4)
  {
    v4 = qword_10059A220;
    swift_beginAccess();
    v5 = *(v2 + v4);
    v6 = 1 << *(v5 + 32);
    v7 = -1;
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    v8 = v7 & *(v5 + 64);
    v9 = (v6 + 63) >> 6;
    v10 = *(v2 + v4);
    swift_bridgeObjectRetain_n();
    for (i = 0; v8; i = v12)
    {
      v12 = i;
LABEL_9:
      v13 = *(v5 + 56) + 24 * (__clz(__rbit64(v8)) | (v12 << 6));
      v14 = *(v13 + 16);
      v21 = *v13;
      v22 = v14;
      v19 = *v13;
      v20 = *(v13 + 16);
      sub_100012400(&v21, &v17, &qword_100599440, &qword_1004B3620);
      sub_100407A88(&v19, v2, a1, a2);
      v8 &= v8 - 1;
      v17 = v19;
      v18 = v20;
      sub_100016290(&v17, &qword_100599440, &qword_1004B3620);
    }

    while (1)
    {
      v12 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v12 >= v9)
      {

        v15 = *(v2 + v4);
        *(v2 + v4) = &_swiftEmptyDictionarySingleton;

        sub_100405BC0();
        return;
      }

      v8 = *(v5 + 64 + 8 * v12);
      ++i;
      if (v8)
      {
        goto LABEL_9;
      }
    }

    __break(1u);

    v17 = v19;
    v18 = v20;
    sub_100016290(&v17, &qword_100599440, &qword_1004B3620);
    __break(1u);
  }
}

void sub_100405BC0()
{
  v1 = *v0;
  v2 = swift_isaMask;
  v3 = type metadata accessor for NANPeer(0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin();
  v202 = &v187 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *((v2 & v1) + 0x58);
  v7 = *(v6 + 8);
  v8 = *((v2 & v1) + 0x50);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v9 = v0;
  swift_getAssociatedConformanceWitness();
  v205 = type metadata accessor for Preferences();
  v10 = *(v205 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin();
  v13 = &v187 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v203 = &v187 - v14;
  v206 = sub_10005DC58(&unk_10059A3D0, &qword_1004B0730);
  v15 = *(*(v206 - 1) + 64);
  __chkstk_darwin();
  v207 = &v187 - v16;
  v208 = sub_10005DC58(&qword_100594D50, &unk_1004AEBF0);
  v17 = *(*(v208 - 1) + 64);
  __chkstk_darwin();
  v19 = &v187 - v18;
  v20 = sub_10005DC58(&qword_10059A3E0, &unk_1004B3080);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin();
  v23 = &v187 - v22;
  v24 = qword_10059A220;
  swift_beginAccess();
  v25 = *(*(v9 + v24) + 16);
  v210 = v9;
  if (!v25)
  {
    v36 = qword_10059A218;
    if (*(v9 + qword_10059A218) == 1)
    {
      v37 = *(v9 + qword_10059A1E0);
      swift_unownedRetainStrong();
      v38 = *(v37 + *(*v37 + 800));
      swift_unownedRetainStrong();

      sub_1003EE874();
      v9 = v210;

      *(v9 + v36) = 0;
    }

    v39 = qword_10059A1E8;
    swift_beginAccess();
    v40 = *(v9 + v39);
    *(v9 + v39) = 0;

    v41 = qword_10059A1F0;
    swift_beginAccess();
    v42 = *(v9 + v41);
    *(v9 + v41) = 0;

    v43 = qword_10059A228;
    swift_beginAccess();
    v44 = *(v9 + v43);
    *(v9 + v43) = &_swiftEmptyDictionarySingleton;

    v45 = qword_10059A1F8;
    swift_beginAccess();
    v46 = *(v9 + v45);
    *(v9 + v45) = 0;

    v47 = *(v9 + qword_10059BBD8);
    *(v9 + qword_10059BBD8) = 0;
    goto LABEL_14;
  }

  v196 = v24;
  v197 = v13;
  v204 = v10;
  v198 = v3;
  v26 = *(v9 + qword_10059A1E0);
  swift_unownedRetainStrong();
  v27 = *(v26 + *(*v26 + 800));
  swift_unownedRetainStrong();
  v209 = v26;

  sub_1003EB304(v23);

  v199 = OS_dispatch_queue.nan.unsafeMutableAddressor();
  v28 = *v199;
  v29 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v30 = v9;
  v31 = swift_allocObject();
  v201 = v8;
  v31[2] = v8;
  v31[3] = v6;
  v200 = v6;
  v31[4] = v29;
  v32 = qword_10059A1F0;
  swift_beginAccess();
  v33 = *(v30 + v32);
  v34 = v28;
  v35 = v34;
  if (v33)
  {
    ObservableWiFiProperty.wrappedValue.getter(v20, v212);
  }

  else
  {
    ObservableWiFiProperty.registerForChanges(on:using:valueUpdateHandler:)(v34, (v30 + v32), sub_100409930, v31, v20, v212);
  }

  v48 = LOBYTE(v212[0]);
  swift_endAccess();

  sub_100016290(v23, &qword_10059A3E0, &unk_1004B3080);
  if (v48 != 1)
  {
    v47 = *(v210 + qword_10059BBD8);
    *(v210 + qword_10059BBD8) = 0;
LABEL_14:
    sub_1004052E4(v47);
    return;
  }

  v49 = qword_10059A218;
  v50 = v210;
  if ((*(v210 + qword_10059A218) & 1) == 0)
  {
    v51 = v209;
    swift_unownedRetainStrong();
    v52 = *(v51 + *(*v51 + 800));
    swift_unownedRetainStrong();

    sub_1003EE8DC();

    *(v50 + v49) = 1;
  }

  v53 = v209;
  swift_unownedRetainStrong();
  v54 = *(v53 + *(*v53 + 800));
  swift_unownedRetainStrong();

  sub_1003EB210(v19);

  v55 = v199;
  v56 = *v199;
  v57 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v58 = v50;
  v59 = swift_allocObject();
  v60 = v200;
  v59[2] = v201;
  v59[3] = v60;
  v59[4] = v57;
  v61 = qword_10059A1E8;
  swift_beginAccess();
  v62 = *(v58 + v61);
  v63 = v56;
  v64 = v63;
  if (v62)
  {
    ObservableWiFiProperty.wrappedValue.getter(v208, v213);
  }

  else
  {
    ObservableWiFiProperty.registerForChanges(on:using:valueUpdateHandler:)(v63, (v58 + v61), sub_10040993C, v59, v208, v213);
  }

  swift_endAccess();

  sub_100016290(v19, &qword_100594D50, &unk_1004AEBF0);
  v65 = v214;
  v195 = v216;
  v194 = v215;
  v66 = qword_10059A1F8;
  swift_beginAccess();
  if (*(v58 + v66))
  {
    swift_unownedRetainStrong();
    v67 = sub_10040E5FC();

    v68 = *(v67 + 16);
    if (v68)
    {
      v199 = v65;
      v212[0] = _swiftEmptyArrayStorage;
      v207 = v68;
      v208 = v67;
      sub_100027CF0(0, v68, 0);
      v69 = v212[0];
      v70 = v208 + 8;
      v71 = -1 << *(v208 + 32);
      v72 = _HashTable.startBucket.getter();
      v73 = v207;
      v74 = v208;
      v75 = 0;
      v206 = v208 + 9;
      while ((v72 & 0x8000000000000000) == 0 && v72 < 1 << *(v74 + 32))
      {
        v77 = v72 >> 6;
        v78 = 1 << v72;
        if ((v70[v72 >> 6] & (1 << v72)) == 0)
        {
          goto LABEL_87;
        }

        v79 = *(v74 + 36);
        v80 = *(v74 + 48) + 8 * v72;
        v81 = *v80;
        v82 = *(v80 + 4);
        v83 = *(v80 + 5);
        v212[0] = v69;
        v85 = v69[2];
        v84 = v69[3];
        v86 = v69;
        if (v85 >= v84 >> 1)
        {
          v193 = v72;
          v192 = v79;
          sub_100027CF0((v84 > 1), v85 + 1, 1);
          v73 = v207;
          v74 = v208;
          v79 = v192;
          v72 = v193;
          v86 = v212[0];
        }

        *(v86 + 16) = v85 + 1;
        v87 = v86 + 8 * v85;
        *(v87 + 32) = v81;
        *(v87 + 36) = v82;
        *(v87 + 37) = v83;
        v76 = 1 << *(v74 + 32);
        if (v72 >= v76)
        {
          goto LABEL_88;
        }

        v88 = v70[v77];
        if ((v88 & v78) == 0)
        {
          goto LABEL_89;
        }

        v69 = v86;
        if (v79 != *(v74 + 36))
        {
          goto LABEL_90;
        }

        v89 = v88 & (-2 << (v72 & 0x3F));
        if (v89)
        {
          v76 = __clz(__rbit64(v89)) | v72 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v90 = v77 << 6;
          v91 = v77 + 1;
          v92 = &v206[v77];
          while (v91 < (v76 + 63) >> 6)
          {
            v94 = *v92++;
            v93 = v94;
            v90 += 64;
            ++v91;
            if (v94)
            {
              sub_10002BEB8(v72, v79, 0);
              v73 = v207;
              v74 = v208;
              v76 = __clz(__rbit64(v93)) + v90;
              goto LABEL_20;
            }
          }

          sub_10002BEB8(v72, v79, 0);
          v73 = v207;
          v74 = v208;
        }

LABEL_20:
        ++v75;
        v72 = v76;
        if (v75 == v73)
        {
          goto LABEL_54;
        }
      }

      __break(1u);
LABEL_87:
      __break(1u);
LABEL_88:
      __break(1u);
LABEL_89:
      __break(1u);
LABEL_90:
      __break(1u);
      goto LABEL_91;
    }
  }

  else
  {
    v95 = v58;
    swift_unownedRetainStrong();
    v96 = v207;
    sub_10040DCDC(v207);

    v97 = *v55;
    v98 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v99 = v95;
    v100 = swift_allocObject();
    v101 = v200;
    v100[2] = v201;
    v100[3] = v101;
    v100[4] = v98;
    swift_beginAccess();
    v102 = v97;
    ObservableWiFiProperty.registerForChanges(on:using:valueUpdateHandler:)(v102, (v99 + v66), sub_100409930, v100, v206, v211);
    swift_endAccess();

    sub_100016290(v96, &unk_10059A3D0, &qword_1004B0730);
    v103 = *(v211[0] + 16);
    if (v103)
    {
      v199 = v65;
      v212[0] = _swiftEmptyArrayStorage;
      v207 = v103;
      v208 = v211[0];
      sub_100027CF0(0, v103, 0);
      v69 = v212[0];
      v104 = v208 + 8;
      v105 = -1 << *(v208 + 32);
      v106 = _HashTable.startBucket.getter();
      v107 = v207;
      v108 = v208;
      v109 = 0;
      v206 = v208 + 9;
      while ((v106 & 0x8000000000000000) == 0 && v106 < 1 << *(v108 + 32))
      {
        v111 = v106 >> 6;
        v112 = 1 << v106;
        if ((v104[v106 >> 6] & (1 << v106)) == 0)
        {
          goto LABEL_93;
        }

        v113 = *(v108 + 36);
        v114 = *(v108 + 48) + 8 * v106;
        v115 = *v114;
        v116 = *(v114 + 4);
        v117 = *(v114 + 5);
        v212[0] = v69;
        v119 = v69[2];
        v118 = v69[3];
        v120 = v69;
        if (v119 >= v118 >> 1)
        {
          v193 = v106;
          v192 = v113;
          sub_100027CF0((v118 > 1), v119 + 1, 1);
          v107 = v207;
          v108 = v208;
          v113 = v192;
          v106 = v193;
          v120 = v212[0];
        }

        *(v120 + 16) = v119 + 1;
        v121 = v120 + 8 * v119;
        *(v121 + 32) = v115;
        *(v121 + 36) = v116;
        *(v121 + 37) = v117;
        v110 = 1 << *(v108 + 32);
        if (v106 >= v110)
        {
          goto LABEL_94;
        }

        v122 = v104[v111];
        if ((v122 & v112) == 0)
        {
          goto LABEL_95;
        }

        v69 = v120;
        if (v113 != *(v108 + 36))
        {
          goto LABEL_96;
        }

        v123 = v122 & (-2 << (v106 & 0x3F));
        if (v123)
        {
          v110 = __clz(__rbit64(v123)) | v106 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v124 = v111 << 6;
          v125 = v111 + 1;
          v126 = &v206[v111];
          while (v125 < (v110 + 63) >> 6)
          {
            v128 = *v126++;
            v127 = v128;
            v124 += 64;
            ++v125;
            if (v128)
            {
              sub_10002BEB8(v106, v113, 0);
              v108 = v208;
              v110 = __clz(__rbit64(v127)) + v124;
              goto LABEL_53;
            }
          }

          sub_10002BEB8(v106, v113, 0);
          v108 = v208;
LABEL_53:
          v107 = v207;
        }

        ++v109;
        v106 = v110;
        if (v109 == v107)
        {
LABEL_54:

          v65 = v199;
          goto LABEL_56;
        }
      }

      goto LABEL_92;
    }
  }

  v69 = _swiftEmptyArrayStorage;
LABEL_56:
  swift_unownedRetainStrong();
  v129 = v203;
  WiFiInterface.preferences.getter();

  v130 = v205;
  v131 = Preferences.internetSharingOptions.getter(v205);
  v132 = *(v204 + 8);
  v204 += 8;
  v132(v129, v130);
  v133 = v210;
  if (!v131)
  {

    v134 = *(v133 + qword_10059BBD8);
    *(v133 + qword_10059BBD8) = 0;
LABEL_60:
    sub_1004052E4(v134);
LABEL_85:
    sub_1004075D8(v133);
    return;
  }

  if (v131 == 1)
  {

    v134 = *(v133 + qword_10059BBD8);
    *(v133 + qword_10059BBD8) = 3;
    goto LABEL_60;
  }

  v208 = v69;
  if (v65)
  {
    v135 = v194 | (v195 << 32);

    v136 = v135 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v136 = 0x300000000;
  }

  swift_unownedRetainStrong();
  v137 = WiFiInterface.capabilities.getter();

  v212[0] = *WiFiDriverCapabilities.supportsSimultaneousDualBand.unsafeMutableAddressor();
  v211[0] = v137;
  sub_1000C2A14();

  LODWORD(v195) = dispatch thunk of SetAlgebra.isSuperset(of:)();

  v133 = v210;
  v138 = *(v210 + v196);
  v139 = v138 + 64;
  v140 = 1 << *(v138 + 32);
  v141 = -1;
  if (v140 < 64)
  {
    v141 = ~(-1 << v140);
  }

  v142 = v141 & *(v138 + 64);
  v143 = qword_10059BBD8;
  v196 = qword_10059BBD0;
  v190 = qword_10059A228;
  v194 = v202 + 8;
  v144 = (v140 + 63) >> 6;
  v206 = v138;

  v145 = 0;
  *&v146 = 136315650;
  v189 = v146;
  v193 = v132;
  v203 = v143;
  v192 = v136;
  while (v142)
  {
    v147 = v142;
LABEL_73:
    v142 = (v147 - 1) & v147;
    if (!*(v133 + v143))
    {
      v207 = (v147 - 1) & v147;
      v149 = (v206[6] + 6 * (__clz(__rbit64(v147)) | (v145 << 6)));
      v150 = *(v149 + 2) << 16;
      v151 = v149[1];
      v152 = *v149;
      swift_unownedRetainStrong();
      v199 = v152;
      v191 = v150 | (v151 << 8);
      v153 = v191 | v152;
      v154 = v202;
      sub_10040CD68(v153, v202);

      v155 = *(v194 + *(v198 + 72));
      sub_100023A18(v154, type metadata accessor for NANPeer);
      v156 = 0x300000000;
      if ((v155 & 0xFF00000000) != 0x300000000)
      {
        v156 = Optional<A>.init(integerLiteral:)(BYTE6(v155)) & 0xFFFFFFFFFFFFLL;
      }

      v157 = v208;
      swift_bridgeObjectRetain_n();
      v158 = Logger.logObject.getter();
      v159 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v158, v159))
      {
        v160 = swift_slowAlloc();
        v188 = swift_slowAlloc();
        v212[0] = v188;
        *v160 = v189;
        v162 = Optional<A>.description.getter(v136, v161);
        v164 = sub_100002320(v162, v163, v212);

        *(v160 + 4) = v164;
        *(v160 + 12) = 2080;
        v166 = Optional<A>.description.getter(v156, v165);
        v168 = sub_100002320(v166, v167, v212);
        v133 = v210;

        *(v160 + 14) = v168;
        *(v160 + 22) = 2048;
        LOBYTE(v168) = v159;
        v169 = *(v157 + 16);

        *(v160 + 24) = v169;

        _os_log_impl(&_mh_execute_header, v158, v168, "Evaluating internetSharing policy for requester infra channel %s with provider infra channel %s [PCL count: %ld]", v160, 0x20u);
        swift_arrayDestroy();
      }

      else
      {

        swift_bridgeObjectRelease_n();
      }

      v170 = v201;
      v171 = v156;
      swift_unownedRetainStrong();
      v172 = v197;
      WiFiInterface.preferences.getter();

      v173 = v205;
      v174 = Preferences.autoInternetSharingOnInfraLost.getter(v205);
      v193(v172, v173);

      v136 = v192;
      v175 = sub_100408EB4(v171, v192, v195 & 1, v157, v174 & 1);
      v176 = *(v133 + qword_10059BBD8);
      *(v133 + qword_10059BBD8) = v175;
      sub_1004052E4(v176);
      v143 = v203;
      v142 = v207;
      if (!*&v203[v133])
      {
        v177 = v190;
        swift_beginAccess();
        if (!*(*(v133 + v177) + 16) || (sub_100041DE8(v191 | v199), (v178 & 1) == 0))
        {
          swift_endAccess();
          swift_unownedRetainStrong();
          v179 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v180 = v136;
          v181 = swift_allocObject();
          v182 = v200;
          v181[2] = v170;
          v181[3] = v182;
          v181[4] = v179;

          v183 = v191;
          v188 = sub_10040DECC(v191 | v199, 30, sub_100409948, v181);

          v133 = v210;

          v136 = v180;
          v143 = v203;

          v184 = v190;
          swift_beginAccess();
          v185 = *(v133 + v184);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v211[0] = *(v133 + v184);
          *(v133 + v184) = 0x8000000000000000;
          sub_1003E12B0(v188, v183 | v199, isUniquelyReferenced_nonNull_native);
          *(v133 + v184) = v211[0];
        }

        swift_endAccess();
        v142 = v207;
      }
    }
  }

  while (1)
  {
    v148 = v145 + 1;
    if (__OFADD__(v145, 1))
    {
      break;
    }

    if (v148 >= v144)
    {

      goto LABEL_85;
    }

    v147 = *(v139 + 8 * v148);
    ++v145;
    if (v147)
    {
      v145 = v148;
      goto LABEL_73;
    }
  }

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
}

id sub_100406FE4()
{
  ObjectType = swift_getObjectType();
  *&v0[qword_10059BBD8] = 0;
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_100407050(uint64_t a1)
{
  v2 = qword_10059BBD0;
  v3 = type metadata accessor for Logger();
  (*(*(v3 - 8) + 8))(a1 + v2, v3);
  v4 = *(a1 + qword_10059A1E0);
  swift_unownedRelease();
  v5 = *(a1 + qword_10059A1E8);

  v6 = *(a1 + qword_10059A1F0);

  v7 = *(a1 + qword_10059A1F8);

  v8 = *(a1 + qword_10059A200);

  v9 = *(a1 + qword_10059A208);

  v10 = *(a1 + qword_10059A210);

  v11 = *(a1 + qword_10059A220);

  v12 = *(a1 + qword_10059A228);

  swift_unknownObjectWeakDestroy();

  return swift_unknownObjectWeakDestroy();
}

void sub_10040716C(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v21 = a4;
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v23 = v13;
    *v12 = 136315138;
    v14 = a1 & 0xFFFFFFFFFFFFLL;
    v15 = WiFiAddress.description.getter(v14);
    v17 = sub_100002320(v15, v16, &v23);

    *(v12 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v10, v11, "Requestor Added internetSharing provider %s", v12, 0xCu);
    sub_100002A00(v13);

    a4 = v21;
  }

  else
  {

    v14 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v18 = qword_10059A220;
  swift_beginAccess();
  sub_100286C2C(a2, a3);
  v19 = *(v5 + v18);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v22 = *(v5 + v18);
  *(v5 + v18) = 0x8000000000000000;
  sub_1003E12F0(a4 & 0xFFFFFFFFFFFFFFLL, a2, a3, v14, isUniquelyReferenced_nonNull_native);
  *(v5 + v18) = v22;
  swift_endAccess();
  sub_100405BC0();
}

void sub_100407320(uint64_t a1)
{
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v13[0] = v5;
    *v4 = 136315138;
    v6 = a1 & 0xFFFFFFFFFFFFLL;
    v7 = WiFiAddress.description.getter(v6);
    v9 = sub_100002320(v7, v8, v13);

    *(v4 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v2, v3, "Requestor Removed internetSharing %s", v4, 0xCu);
    sub_100002A00(v5);
  }

  else
  {

    v6 = a1 & 0xFFFFFFFFFFFFLL;
  }

  swift_beginAccess();
  sub_1004208F0(v6);
  swift_endAccess();

  swift_beginAccess();
  sub_1003AD448(v6, v13);
  v10 = v13[0];
  v11 = v13[1];
  v12 = v13[2];
  swift_endAccess();
  sub_100409914(v10, v11, v12);
  sub_100405BC0();
}

uint64_t sub_1004074D4()
{
  v1 = swift_isaMask & *v0;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;
    v4 = *(v1 + 80);
    v5 = *(v1 + 88);
    v6 = _s17InitiatorInstanceCMa();
    WitnessTable = swift_getWitnessTable();
    LOBYTE(v6) = sub_1003700B4(v6, WitnessTable);

    return v6 & 1;
  }

  return result;
}

void sub_100407584()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_100405BC0();
  }
}

uint64_t sub_1004075D8(uint64_t result)
{
  if (!*(result + qword_10059BBD8))
  {
    v1 = qword_10059A218;
    if (*(result + qword_10059A218) == 1)
    {
      v2 = *(result + qword_10059A1E0);
      v3 = result;
      swift_unownedRetainStrong();
      v4 = *(v2 + *(*v2 + 800));
      swift_unownedRetainStrong();

      sub_1003EE874();

      *(v3 + v1) = 0;
    }
  }

  return result;
}

void sub_100407678(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = type metadata accessor for DispatchTimeInterval();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin();
  v12 = (&v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v14 = &v33 - v13;
  __chkstk_darwin();
  v16 = (&v33 - v15);
  v17 = *(a2 + 8);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v19 = Strong;
    if (v17)
    {
      if (!*(Strong + qword_10059A210))
      {
        sub_100405BC0();
      }
    }

    else
    {
      v37 = a5;
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&_mh_execute_header, v20, v21, "Lost infrastructure network, waiting for 5 seconds before re-evaluating internetSharing policy", v22, 2u);
      }

      v23 = qword_10059A210;
      v24 = *&v19[qword_10059A210];
      if (!v24)
      {
        v36 = qword_10059A210;
        *v16 = 5;
        v34 = *(v9 + 104);
        v34(v16, enum case for DispatchTimeInterval.seconds(_:), v8);
        v35 = *OS_dispatch_queue.nan.unsafeMutableAddressor();
        v25 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v26 = swift_allocObject();
        v27 = v37;
        v26[2] = a4;
        v26[3] = v27;
        v26[4] = v25;
        v28 = v34;
        v34(v14, enum case for DispatchTimeInterval.never(_:), v8);
        *v12 = 100;
        v28(v12, enum case for DispatchTimeInterval.milliseconds(_:), v8);
        v29 = type metadata accessor for P2PTimer();
        v30 = *(v29 + 48);
        v31 = *(v29 + 52);
        swift_allocObject();
        v24 = P2PTimer.init(deadlineAfter:on:repeating:leeway:_:)(v16, v35, v14, v12, sub_100409954, v26);
        v23 = v36;
        v32 = *&v19[v36];
      }

      *&v19[v23] = v24;
    }
  }
}

void sub_1004079A4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = *&Strong[qword_10059A210];
    *&Strong[qword_10059A210] = 0;
  }

  swift_beginAccess();
  v2 = swift_unknownObjectWeakLoadStrong();
  if (v2)
  {
    v3 = v2;
    sub_100405BC0();
  }
}

void sub_100407A34()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_100405BC0();
  }
}

uint64_t sub_100407A88(unsigned __int16 *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = *(a1 + 2);
  v7 = *(a1 + 3);
  v8 = *(a2 + qword_10059A1E0);
  v9 = *a1;
  swift_unownedRetainStrong();
  sub_10040CAE8();

  sub_10034A84C(v9 | (v6 << 16) | (v7 << 24), a3, a4);
}

void sub_100407B20(uint64_t a1)
{
  if (!*(v1 + qword_10059BBD8))
  {
    return;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {

    return;
  }

  if (a1 == -1)
  {
    return;
  }

  v4 = 0xD000000000000018;
  _StringGuts.grow(_:)(40);

  if (a1 > 2)
  {
    if (a1 == 3)
    {
      v5 = 0xEC0000006572756CLL;
      v4 = 0x6961462070696843;
      goto LABEL_18;
    }

    if (a1 == 4)
    {
      v5 = 0x80000001004BA540;
      goto LABEL_18;
    }

LABEL_15:
    v5 = 0xE700000000000000;
    v4 = 0x6E776F6E6B6E55;
    goto LABEL_18;
  }

  if (a1 == 1)
  {
    v5 = 0xE900000000000074;
    v4 = 0x754F2064656D6954;
    goto LABEL_18;
  }

  if (a1 != 2)
  {
    goto LABEL_15;
  }

  v5 = 0xEE00646574736575;
  v4 = 0x7165522072657355;
LABEL_18:
  v6._countAndFlagsBits = v4;
  v6._object = v5;
  String.append(_:)(v6);

  sub_1004059BC(0xD000000000000026, 0x80000001004C1B30);
}

void sub_100407CE0(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  sub_100407B20(a3);
}

void sub_100407D34(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin();
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [a1 publisherAddress];
  v15 = WiFiMACAddress.wifiAddress.getter();

  v16 = qword_10059A220;
  swift_beginAccess();
  v17 = *&v2[v16];
  if (*(v17 + 16) && (v18 = sub_100041DE8(v15 & 0xFFFFFFFFFFFFLL), (v19 & 1) != 0))
  {
    v20 = *(v17 + 56) + 24 * v18;
    v21 = *(v20 + 8);
    v42 = *(v20 + 16);
    swift_endAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
    }

    else
    {
      v39 = v10;
      v40 = v5;
      v23 = *&v2[qword_10059A200];
      *&v2[qword_10059A200] = 0;
      v24 = v42;
      sub_100286C2C(v21, v42);

      v25 = objc_opt_self();
      v41 = v21;
      sub_100286C2C(v21, v24);
      v26 = [v25 requestInterentFromResponder];
      isa = 0;
      if (v24 >> 60 != 15)
      {
        v28 = v41;
        v29 = v42;
        isa = Data._bridgeToObjectiveC()().super.isa;
        sub_10014426C(v28, v29);
      }

      LOBYTE(v37) = 0;
      v30 = [objc_allocWithZone(WiFiAwareDatapathConfiguration) initWithDiscoveryResult:a1 serviceType:0 passphrase:0 pmk:isa pmkID:0 serviceSpecificInfo:0 internetSharingConfiguration:v26 pairingMethod:1 pairingCachingEnabled:v37 pairSetupServiceSpecificInfo:0 connectionMode:0 pairingMetadata:0];

      v31 = *OS_dispatch_queue.nan.unsafeMutableAddressor();
      v32 = swift_allocObject();
      *(v32 + 16) = v2;
      *(v32 + 24) = v30;
      aBlock[4] = sub_100409B98;
      aBlock[5] = v32;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10000C8B8;
      aBlock[3] = &unk_10057A550;
      v33 = _Block_copy(aBlock);
      v34 = v31;
      v35 = v2;
      v36 = v30;
      static DispatchQoS.unspecified.getter();
      v43 = _swiftEmptyArrayStorage;
      sub_10001CF14();
      sub_10005DC58(&unk_100595270, &unk_1004AEC80);
      sub_10005DCA0();
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v33);

      sub_10014426C(v41, v42);
      (*(v40 + 8))(v8, v4);
      (*(v39 + 8))(v13, v9);
    }
  }

  else
  {
    swift_endAccess();
  }
}

void sub_100408160(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + qword_10059A1E0);
  swift_unownedRetainStrong();
  sub_10040CAE8();

  v5 = sub_1003654A4(a2, a1, 0, 0, 0x100000000uLL);

  swift_unknownObjectWeakAssign();

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong + *((swift_isaMask & *Strong) + 0x120);
    *v7 = *(a1 + qword_10059BBD8);
    v7[8] = 0;
  }
}

void sub_1004082C0(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_100407D34(v4);
}

void sub_10040832C(void *a1)
{
  v1 = a1;
  sub_100409A08();
}

void sub_100408374(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v7 = a3;
  v8 = a5;
  v12 = a1;
  v9 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  sub_1000124C8(v9, v11);
}

void sub_100408404(void *a1)
{
  v1 = a1;
  sub_100409A24();
}

void sub_10040844C(uint64_t a1)
{
  v2 = v1;
  v4 = swift_isaMask & *v1;
  v5 = type metadata accessor for DispatchTimeInterval();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin();
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = &v24 - v10;
  __chkstk_darwin();
  v13 = &v24 - v12;
  v14 = *(v1 + qword_10059BBD8);
  *(v1 + qword_10059BBD8) = 0;
  sub_1004052E4(v14);
  if (a1 != -1)
  {
    *v13 = 2;
    v25 = v14;
    v15 = *(v6 + 104);
    v15(v13, enum case for DispatchTimeInterval.seconds(_:), v5);
    v24 = *OS_dispatch_queue.nan.unsafeMutableAddressor();
    v16 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v17 = swift_allocObject();
    v17[2] = *(v4 + 80);
    v17[3] = *(v4 + 88);
    v17[4] = v16;
    v15(v11, enum case for DispatchTimeInterval.never(_:), v5);
    *v9 = 100;
    v15(v9, enum case for DispatchTimeInterval.milliseconds(_:), v5);
    v18 = type metadata accessor for P2PTimer();
    v19 = *(v18 + 48);
    v20 = *(v18 + 52);
    swift_allocObject();
    v21 = P2PTimer.init(deadlineAfter:on:repeating:leeway:_:)(v13, v24, v11, v9, sub_100409B8C, v17);
    v22 = *(v2 + qword_10059A208);
    *(v2 + qword_10059A208) = v21;

    v23 = *(v2 + qword_10059BBD8);
    *(v2 + qword_10059BBD8) = v25;
    sub_1004052E4(v23);
  }
}

void sub_1004086F8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (*(Strong + qword_10059BBD8))
    {
      v2 = swift_unknownObjectWeakLoadStrong();
      if (v2)
      {
        v3 = v2;

        v1 = v3;
      }

      else
      {
        v4 = qword_10059A220;
        swift_beginAccess();
        if (*(*&v1[v4] + 16))
        {
          sub_1004059BC(0xD000000000000024, 0x80000001004C1A70);
        }
      }
    }
  }
}

void sub_1004087C0(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  sub_10040844C(a3);
}

void sub_100408820(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = a1;
  sub_100409A74();
}

void sub_100408894(int a1, int a2, int a3, void *aBlock)
{
  v4 = _Block_copy(aBlock);

  _Block_release(v4);
}

uint64_t sub_10040894C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_100408988(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1004089B0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 25))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 24);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_100408A04(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 1;
    }
  }

  return result;
}

id sub_100408AFC(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  Logger.init(subsystem:category:)();
  *&v1[qword_10059A1E8] = 0;
  *&v1[qword_10059A1F0] = 0;
  *&v1[qword_10059A1F8] = 0;
  *&v1[qword_10059A200] = 0;
  *&v1[qword_10059A208] = 0;
  *&v1[qword_10059A210] = 0;
  v1[qword_10059A218] = 0;
  *&v1[qword_10059BBD8] = 0;
  *&v1[qword_10059A220] = &_swiftEmptyDictionarySingleton;
  *&v1[qword_10059A228] = &_swiftEmptyDictionarySingleton;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *&v1[qword_10059A1E0] = a1;
  swift_unownedRetain();
  v5.receiver = v1;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, "init");
}

id sub_100408C8C(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = *v1;
  v5 = swift_isaMask;
  Logger.init(subsystem:category:)();
  *(v1 + qword_10059A120) = 0;
  v6 = (v1 + qword_10059A128);
  *v6 = 0;
  v6[1] = 0;
  *(v1 + qword_10059A138) = 0;
  v7 = (v1 + qword_10059A140);
  *v7 = 0;
  v7[1] = 0;
  v8 = qword_10059A148;
  v9 = *((v5 & v4) + 0x50);
  v10 = *((v5 & v4) + 0x58);
  type metadata accessor for LowLatencyInternetProviderPolicy.Requester();
  sub_1002CAFC4();
  *(v1 + v8) = Dictionary.init()();
  swift_unknownObjectWeakInit();
  *(v1 + qword_10059A158) = 2;
  *(v1 + qword_10059A130) = a1;
  swift_unownedRetain();
  v12.receiver = v1;
  v12.super_class = ObjectType;
  return objc_msgSendSuper2(&v12, "init");
}

uint64_t sub_100408E48(unsigned __int16 *a1, unsigned int *a2)
{
  v3 = *(v2 + 32);
  v4 = *(v2 + 40);
  return v3(*a1 | (*(a1 + 1) << 16), *a2 | (*(a2 + 4) << 32) | (*(a2 + 5) << 40) | (*(a2 + 6) << 48), *(a2 + 1), *(a2 + 2), a2[6] & 1) & 1;
}

uint64_t sub_100408EB4(unint64_t a1, unint64_t a2, char a3, uint64_t a4, char a5)
{
  v6 = a4;
  v97 = a1 & 0xFF00000000;
  if ((a1 & 0xFF00000000) != 0x300000000)
  {
    v10 = *(a4 + 16);
    v11 = HIDWORD(a1);
    if (v10)
    {
      v12 = (a4 + 36);
      v13 = *(a4 + 16);
      while (*(v12 - 1) != a1 || ((0x801004u >> (8 * BYTE4(a1))) & 0xFFC) != (0x801004u >> (8 * *v12)))
      {
        v12 += 8;
        if (!--v13)
        {
          goto LABEL_8;
        }
      }
    }

    else
    {
LABEL_8:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_100011C2C(0, v10 + 1, 1, v6);
      }

      v15 = *(v6 + 2);
      v14 = *(v6 + 3);
      if (v15 >= v14 >> 1)
      {
        v6 = sub_100011C2C((v14 > 1), v15 + 1, 1, v6);
      }

      *(v6 + 2) = v15 + 1;
      v16 = &v6[8 * v15];
      *(v16 + 8) = a1;
      v16[36] = v11;
      v16[37] = BYTE5(a1);
    }
  }

  v17 = a2 & 0xFF00000000;
  if ((a2 & 0xFF00000000) != 0x300000000)
  {
    v18 = *(v6 + 2);
    if (v18)
    {
      v19 = v6 + 36;
      v20 = *(v6 + 2);
      while (*(v19 - 1) != a2 || ((0x801004u >> (8 * BYTE4(a2))) & 0xFFC) != (0x801004u >> (8 * *v19)))
      {
        v19 += 8;
        if (!--v20)
        {
          goto LABEL_20;
        }
      }
    }

    else
    {
LABEL_20:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_100011C2C(0, v18 + 1, 1, v6);
      }

      v22 = *(v6 + 2);
      v21 = *(v6 + 3);
      if (v22 >= v21 >> 1)
      {
        v94 = sub_100011C2C((v21 > 1), v22 + 1, 1, v6);
        v17 = a2 & 0xFF00000000;
        v6 = v94;
      }

      else
      {
        v17 = a2 & 0xFF00000000;
      }

      *(v6 + 2) = v22 + 1;
      v23 = &v6[8 * v22];
      *(v23 + 8) = a2;
      v23[36] = BYTE4(a2);
      v23[37] = BYTE5(a2);
    }
  }

  if (v17 == 0x300000000 && a5 != 2)
  {
    if (qword_1005943E0 == -1)
    {
LABEL_28:
      v24 = type metadata accessor for Logger();
      sub_100037644(v24, qword_10059B950);
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&_mh_execute_header, v25, v26, "InternetSharing Policy is .policyAuto for checkAuto true and requesterInfraChannel nil ", v27, 2u);
      }

      return 4;
    }

LABEL_107:
    swift_once();
    goto LABEL_28;
  }

  v96 = v17;
  v29 = *(v6 + 2);
  if (v29)
  {
    v95 = a3;

    v30 = v6 + 37;
    v31 = _swiftEmptyArrayStorage;
    do
    {
      if (!*(v30 - 1))
      {
        v35 = *(v30 - 5);
        v36 = *v30;
        v98 = v31;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_100027CF0(0, v31[2] + 1, 1);
          v31 = v98;
        }

        v33 = v31[2];
        v32 = v31[3];
        if (v33 >= v32 >> 1)
        {
          sub_100027CF0((v32 > 1), v33 + 1, 1);
          v31 = v98;
        }

        v31[2] = v33 + 1;
        v34 = &v31[v33];
        *(v34 + 8) = v35;
        *(v34 + 36) = 0;
        *(v34 + 37) = v36;
      }

      v30 += 8;
      --v29;
    }

    while (v29);

    a3 = v95;
  }

  else
  {
    v31 = _swiftEmptyArrayStorage;
  }

  v37 = v31[2];

  if (a3)
  {
    v38 = v96;
    if (v37 > 1)
    {
      v28 = 1;
LABEL_73:
      if (qword_1005943E0 != -1)
      {
        swift_once();
      }

      v60 = type metadata accessor for Logger();
      sub_100037644(v60, qword_10059B950);
      v61 = Logger.logObject.getter();
      v62 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v61, v62))
      {
        v63 = swift_slowAlloc();
        v98 = swift_slowAlloc();
        *v63 = 136315906;
        v64 = 0xED000066664F2079;
        v65 = 0x63696C6F50205249;
        v66 = 0x80000001004BA6B0;
        v67 = 0xD00000000000001BLL;
        if (v28 == 2)
        {
          v67 = 0xD000000000000011;
        }

        else
        {
          v66 = 0x80000001004BA690;
        }

        if (v28)
        {
          v65 = 0xD000000000000014;
          v64 = 0x80000001004BA6D0;
        }

        if (v28 <= 1)
        {
          v68 = v65;
        }

        else
        {
          v68 = v67;
        }

        if (v28 <= 1)
        {
          v69 = v64;
        }

        else
        {
          v69 = v66;
        }

        v70 = sub_100002320(v68, v69, &v98);

        *(v63 + 4) = v70;
        *(v63 + 12) = 2080;
        v72 = Optional<A>.description.getter(a1 & 0xFFFFFFFFFFFFLL, v71);
        v74 = sub_100002320(v72, v73, &v98);

        *(v63 + 14) = v74;
        *(v63 + 22) = 2080;
        v76 = Optional<A>.description.getter(a2 & 0xFFFFFFFFFFFFLL, v75);
        v78 = sub_100002320(v76, v77, &v98);

        *(v63 + 24) = v78;
        *(v63 + 32) = 2080;

        v79 = Array.description.getter();
        v81 = v80;

        v82 = sub_100002320(v79, v81, &v98);

        *(v63 + 34) = v82;
        _os_log_impl(&_mh_execute_header, v61, v62, "InternetSharing Policy is %s for providerInfraChannel %s requesterInfraChannel %s preferredChannels %s", v63, 0x2Au);
        swift_arrayDestroy();
      }

      return v28;
    }

    goto LABEL_53;
  }

  v38 = v96;
  if (!v37)
  {
LABEL_53:
    if (v97 == 0x300000000 && v38 == 0x300000000)
    {
LABEL_55:
      v28 = 3;
      goto LABEL_73;
    }

LABEL_58:
    v51 = *(v6 + 2);
    if (v51)
    {

      v52 = v6 + 37;
      v53 = _swiftEmptyArrayStorage;
      do
      {
        if (*(v52 - 1) == 1)
        {
          v57 = *(v52 - 5);
          v58 = *v52;
          v98 = v53;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_100027CF0(0, v53[2] + 1, 1);
            v53 = v98;
          }

          v55 = v53[2];
          v54 = v53[3];
          if (v55 >= v54 >> 1)
          {
            sub_100027CF0((v54 > 1), v55 + 1, 1);
            v53 = v98;
          }

          v53[2] = v55 + 1;
          v56 = &v53[v55];
          *(v56 + 8) = v57;
          *(v56 + 36) = 1;
          *(v56 + 37) = v58;
        }

        v52 += 8;
        --v51;
      }

      while (v51);
    }

    else
    {
      v53 = _swiftEmptyArrayStorage;
    }

    v59 = v53[2];

    if (v59 <= 1)
    {
      goto LABEL_72;
    }

    if (v96 == 0x300000000)
    {
      if (v97 == 0x300000000)
      {
LABEL_72:
        v28 = 0;
        goto LABEL_73;
      }
    }

    else
    {
      if (v97 == 0x300000000)
      {
        v84 = 0;
      }

      else
      {
        v84 = a1;
      }

      if (v97 != 0x300000000 && v84 == a2)
      {
        v85 = a1 & 0xFF00000000;
        if ((a2 & 0xFF00000000) == 0x300000000)
        {
          if (v85 == 0x300000000)
          {
            goto LABEL_72;
          }
        }

        else if (v85 != 0x300000000 && ((0x801004u >> ((a2 >> 29) & 0xF8)) & 0xFFC) == ((0x801004u >> ((a1 >> 29) & 0xF8)) & 0xFFC))
        {
          goto LABEL_72;
        }
      }
    }

    v86 = *(v6 + 2);

    v87 = (v6 + 37);
    v88 = -v86;
    v89 = -1;
    while (1)
    {
      if (v88 + v89 == -1)
      {

        goto LABEL_55;
      }

      if (++v89 >= *(v6 + 2))
      {
        break;
      }

      v90 = v87 + 8;
      v91 = *v87;
      v92 = *(v87 - 1);
      v93 = Channel.isDFS.getter(*(v87 - 5));
      v87 = v90;
      if (v93)
      {

        v28 = 2;
        goto LABEL_73;
      }
    }

    __break(1u);
    goto LABEL_107;
  }

  if (v37 == 1 && !v97 && v96 && v96 != 0x300000000)
  {
    goto LABEL_58;
  }

  if (qword_1005943E0 != -1)
  {
    swift_once();
  }

  v39 = type metadata accessor for Logger();
  sub_100037644(v39, qword_10059B950);
  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v98 = swift_slowAlloc();
    *v42 = 67109890;
    *(v42 + 8) = 2048;
    *(v42 + 10) = v37;
    *(v42 + 18) = 2080;
    v44 = Optional<A>.description.getter(a1 & 0xFFFFFFFFFFFFLL, v43);
    v46 = sub_100002320(v44, v45, &v98);

    *(v42 + 20) = v46;
    *(v42 + 28) = 2080;
    v48 = Optional<A>.description.getter(a2 & 0xFFFFFFFFFFFFLL, v47);
    v50 = sub_100002320(v48, v49, &v98);

    *(v42 + 30) = v50;
    _os_log_impl(&_mh_execute_header, v40, v41, "InternetSharing Policy is .policy2_4GHz for requesterSupportsSDB %{BOOL}d twoGHzPreferredCount %ld providerInfraChannel %s requesterInfraChannel %s ", v42, 0x26u);
    swift_arrayDestroy();
  }

  return 1;
}

uint64_t sub_100409884(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 != 2)
  {
    return sub_10014426C(a2, a3);
  }

  return result;
}

uint64_t sub_1004098A8(uint64_t a1, uint64_t *a2)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[4];
  return sub_100403EC0(a1, a2);
}

uint64_t sub_100409914(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 >> 60 != 11)
  {
    return sub_10014426C(a2, a3);
  }

  return result;
}

void sub_100409930()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  sub_100407584();
}

void sub_100409948()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  sub_100407A34();
}

void sub_100409954()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  sub_1004079A4();
}

void sub_100409960()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  sub_1004058A4();
}

unint64_t sub_10040996C(void *a1)
{
  result = sub_100403FE8(a1);
  if ((result & 0x1000000000000) == 0)
  {
    LOWORD(v4) = result;
    BYTE2(v4) = BYTE2(result);
    HIBYTE(v4) = BYTE3(result);
    v5 = BYTE4(result);
    v6 = BYTE5(result);
    return sub_100404850(&v4, v1, &v3);
  }

  return result;
}

void sub_100409A24()
{
  swift_unknownObjectWeakAssign();

  sub_1004059BC(0xD000000000000029, 0x80000001004C1AA0);
}

uint64_t sub_100409A74()
{
  v1 = v0;
  sub_100405948();
  v2 = qword_10059A218;
  if (*(v0 + qword_10059A218) == 1)
  {
    v3 = *(v0 + qword_10059A1E0);
    v4 = *(v1 + qword_10059A1E0);
    swift_unownedRetainStrong();
    v5 = *(v3 + *(*v3 + 800));
    swift_unownedRetainStrong();

    sub_1003EE874();

    *(v1 + v2) = 0;
  }

  v6 = qword_10059A1E8;
  swift_beginAccess();
  v7 = *(v1 + v6);
  *(v1 + v6) = 0;

  v8 = qword_10059A1F0;
  swift_beginAccess();
  v9 = *(v1 + v8);
  *(v1 + v8) = 0;
}

void sub_100409B8C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  sub_1004086F8();
}

unint64_t sub_10040A0B0(uint64_t a1, unint64_t a2)
{
  v3 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 >> 62)
  {
LABEL_17:
    v4 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  while (1)
  {
    if (v4 == v5)
    {
      return 0;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v5 >= *(v3 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v6 = *(a2 + 8 * v5 + 32);
    }

    v7 = v6;
    sub_10040A1B0();
    v8 = static NSObject.== infix(_:_:)();

    if (v8)
    {
      return v5;
    }

    if (__OFADD__(v5++, 1))
    {
      goto LABEL_16;
    }
  }
}

unint64_t sub_10040A1B0()
{
  result = qword_100595230;
  if (!qword_100595230)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100595230);
  }

  return result;
}

uint64_t sub_10040A1FC()
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

uint64_t sub_10040A2E4(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  sub_10040A334(a1, a2);
  return v7;
}

uint64_t sub_10040A334(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(*v2 + 88);
  v7 = *(*v2 + 80);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v8 = type metadata accessor for Preferences();
  v26 = *(v8 - 8);
  v9 = *(v26 + 64);
  __chkstk_darwin();
  v11 = &v24 - v10;
  Logger.init(subsystem:category:)();
  *(v2 + qword_10059A410) = 0;
  *(v2 + qword_10059A418) = 0;
  *(v2 + qword_10059A420) = 4;
  *(v2 + qword_10059A428) = 0;
  *(v2 + qword_10059A430) = 10;
  v12 = a1;
  swift_unknownObjectUnownedInit();
  *(v3 + qword_10059A400) = a2;
  v25 = v6;
  v13 = *(v6 + 24);
  v27 = a2;

  v14 = v12;
  v24 = v7;
  v13(v7, v6);
  v15 = Preferences.multicastRateAdapterSettlingPER.getter(v8);
  v16 = *(v26 + 8);
  v16(v11, v8);
  *(v3 + qword_10059A3F0) = v15;
  v17 = v7;
  v18 = v25;
  v13(v17, v25);
  LODWORD(v12) = Preferences.multicastRateAdapterHeartBeatInterval.getter(v8);
  v16(v11, v8);
  *(v3 + qword_10059A3F8) = v12;
  v26 = v14;
  v13(v24, v18);
  LODWORD(v12) = Preferences.multicastSpatialStreams.getter(v8);
  v16(v11, v8);
  v19 = v3 + qword_10059A408;
  *v19 = 197632;
  *(v19 + 4) = v12 == 2;

  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 134217984;
    *(v22 + 4) = *(v3 + qword_10059A3F0);
    _os_log_impl(&_mh_execute_header, v20, v21, "Rate adapter max tolerable PER= %f", v22, 0xCu);
  }

  swift_unknownObjectRelease();

  return v3;
}

void sub_10040A6FC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v91 = a1;
  v90 = *v2;
  v87 = type metadata accessor for DispatchTimeInterval();
  v85 = *(v87 - 8);
  v5 = *(v85 + 64);
  __chkstk_darwin();
  v89 = (&v84 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v88 = &v84 - v7;
  __chkstk_darwin();
  v86 = (&v84 - v8);
  v9 = a2 + 64;
  v10 = 1 << *(a2 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a2 + 64);
  v13 = qword_10059A3E8;
  v14 = v3 + qword_10059A408;

  v96 = v14;
  swift_beginAccess();
  v15 = 0;
  v16 = 0;
  v17 = (v10 + 63) >> 6;
  *&v18 = 16777728;
  v93 = v18;
  *&v18 = 16778752;
  v92 = v18;
  v94 = v13;
  v95 = a2;
  while (v12)
  {
    if (!*(a2 + 16))
    {
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
      goto LABEL_51;
    }

LABEL_9:
    LODWORD(v102) = v15;
    v19 = *(*(a2 + 48) + (__clz(__rbit64(v12)) | (v16 << 6)));
    v20 = sub_10007CCC8(v19);
    if ((v21 & 1) == 0)
    {
      goto LABEL_50;
    }

    v22 = (*(a2 + 56) + 24 * v20);
    v103 = *v22;
    v23 = *(v22 + 1);
    v24 = *(v22 + 2);
    v97 = *(v22 + 3);
    v98 = v23;
    v99 = *(v22 + 4);
    LODWORD(v100) = v24;
    LODWORD(v101) = v22[20];

    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = v93;
      *(v27 + 4) = v19;
      *(v27 + 5) = 256;
      *(v27 + 7) = *v96;

      _os_log_impl(&_mh_execute_header, v25, v26, "Received stats mcs: %hhu, current mcs %hhu", v27, 8u);
      a2 = v95;
    }

    else
    {
    }

    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = v92;
      *(v31 + 4) = v103;
      *(v31 + 5) = 1024;
      v32 = v97;
      *(v31 + 7) = v98;
      *(v31 + 11) = 1024;
      *(v31 + 13) = v32;
      *(v31 + 17) = 1024;
      *(v31 + 19) = v100;
      *(v31 + 23) = 1024;
      *(v31 + 25) = v99;
      *(v31 + 29) = 256;
      *(v31 + 31) = v101;
      _os_log_impl(&_mh_execute_header, v29, v30, "Received stats snr: %hhu txPkts %u rxPkts %u txMPDU %u rxMPDU %u cca %hhu", v31, 0x20u);
    }

    v12 &= v12 - 1;

    if (v103 <= v102)
    {
      v15 = v102;
    }

    else
    {
      v15 = v103;
    }
  }

  while (1)
  {
    v28 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
      goto LABEL_49;
    }

    if (v28 >= v17)
    {
      break;
    }

    v12 = *(v9 + 8 * v28);
    ++v16;
    if (v12)
    {
      v16 = v28;
      if (*(a2 + 16))
      {
        goto LABEL_9;
      }

      goto LABEL_49;
    }
  }

  v33 = v91;
  *(v91 + 48) = 0;
  v34 = v3;
  v35 = *(v3 + qword_10059A400);
  v36 = *(v33 + 42) | (*(v33 + 44) << 16);
  sub_1003358E8(v36, v15);
  v37 = v96;
  swift_beginAccess();
  if (!*(a2 + 16) || (v38 = sub_10007CCC8(*v37), (v39 & 1) == 0))
  {
    *(v33 + 48) = 1;
    sub_100335764(v36, 0.0);
    sub_100335900(v36, 0);
    return;
  }

  v40 = (*(a2 + 56) + 24 * v38);
  v41 = *v40;
  v42 = *(v40 + 1);
  v43 = v40[20];
  if (v42)
  {
    v44 = *(v40 + 3);
    v45 = 0.0;
    v46 = v42 >= v44;
    v47 = v42 - v44;
    if (v46)
    {
      v45 = v47 / v42;
    }
  }

  else
  {
    *(v33 + 48) = 1;
    v45 = 0.0;
  }

  sub_100335900(v36, v43);
  if (*(v34 + qword_10059A3F0) >= v45)
  {
    *(v33 + 16) = 0;
    sub_100335764(v36, v45);
    return;
  }

  if (*v37)
  {
    *(v33 + 16) = 0;
  }

  else
  {
    v48 = *(v33 + 16);
    if (v48 < 11)
    {
      *(v33 + 16) = v48 + 1;
    }

    else
    {
      swift_unknownObjectUnownedLoadStrong();
      (*(*(v90 + 88) + 48))(v33, *(v90 + 80));
      swift_unknownObjectRelease();
    }
  }

  swift_retain_n();

  v49 = Logger.logObject.getter();
  v50 = static os_log_type_t.default.getter();

  v51 = os_log_type_enabled(v49, v50);
  v103 = v41;
  if (v51)
  {
    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v104 = v53;
    *v52 = 136315650;
    v54 = WiFiAddress.description.getter(v36);
    v56 = sub_100002320(v54, v55, &v104);

    *(v52 + 4) = v56;
    *(v52 + 12) = 2048;
    *(v52 + 14) = v45;
    *(v52 + 22) = 256;
    v57 = *v37;

    *(v52 + 24) = v57;

    _os_log_impl(&_mh_execute_header, v49, v50, "Peer %s reporting PER= %f for mcs= %hhu", v52, 0x19u);
    sub_100002A00(v53);
  }

  else
  {
  }

  v58 = 1000 * *(v34 + qword_10059A3F8);
  if ((v58 & 0xFFFFFFFF00000000) == 0)
  {
    v59 = v86;
    *v86 = v58;
    v60 = enum case for DispatchTimeInterval.milliseconds(_:);
    v61 = *(v85 + 104);
    v62 = v87;
    v61(v59, enum case for DispatchTimeInterval.milliseconds(_:), v87);
    v102 = *OS_dispatch_queue.nan.unsafeMutableAddressor();
    v63 = swift_allocObject();
    swift_weakInit();
    v64 = swift_allocObject();
    v65 = v90;
    v66 = *(v90 + 80);
    v64[2] = v66;
    v100 = *(v65 + 88);
    v101 = v66;
    v64[3] = v100;
    v64[4] = v63;
    v67 = v88;
    v61(v88, enum case for DispatchTimeInterval.never(_:), v62);
    v68 = v89;
    *v89 = 100;
    v61(v68, v60, v62);
    v69 = type metadata accessor for P2PTimer();
    v70 = *(v69 + 48);
    v71 = *(v69 + 52);
    swift_allocObject();
    v72 = P2PTimer.init(deadlineAfter:on:repeating:leeway:_:)(v59, v102, v67, v68, sub_10040BE44, v64);
    v73 = *(v34 + qword_10059A418);
    *(v34 + qword_10059A418) = v72;

    v74 = v96;
    v75 = *v96;
    v76 = v96[1];
    v77 = v96[2];
    v78 = v96[3];
    LODWORD(v62) = v96[4];
    sub_10040BA94(*&v45, 0, v103);
    *(v91 + 48) = 1;
    v79 = *v74;
    if (v62)
    {
      v80 = &_mh_execute_header;
    }

    else
    {
      v80 = 0;
    }

    v81 = v80 | (v78 << 24) | (v77 << 16) | (v76 << 8);
    if (v74[4])
    {
      v82 = &_mh_execute_header;
    }

    else
    {
      v82 = 0;
    }

    v83 = v82 | (v74[3] << 24) | (v74[2] << 16) | (v74[1] << 8);
    if ((static TransmissionParameters.__derived_struct_equals(_:_:)(v81 | v75, v83 | v79) & 1) == 0)
    {
      swift_unknownObjectUnownedLoadStrong();
      (*(v100 + 40))(v83 | v79, v101);
      swift_unknownObjectRelease();
    }

    return;
  }

LABEL_51:
  __break(1u);
}

void sub_10040B000()
{
  v1 = v0;
  v78 = *v0;
  v2 = type metadata accessor for DispatchTimeInterval();
  v75 = *(v2 - 8);
  v76 = v2;
  v3 = *(v75 + 64);
  __chkstk_darwin();
  v5 = &v70[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v77 = &v70[-v6];
  __chkstk_darwin();
  v8 = &v70[-v7];
  v79 = qword_10059A3E8;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "Link stats timer fired", v11, 2u);
  }

  v12 = v1 + qword_10059A408;
  swift_beginAccess();
  v13 = *v12;
  v14 = v12[1];
  v15 = v12[2];
  v16 = v12[3];
  v17 = v12[4];
  v18 = *(v1 + qword_10059A410);
  v80 = v8;
  v74 = v13;
  if (v18)
  {
    v19 = v17;
    v20 = v16;
    v21 = v15;
    v22 = v14;
    v23 = v13;
  }

  else
  {
    v24 = *(v1 + qword_10059A400);
    v72 = COERCE_DOUBLE(sub_100334A60());
    v26 = v25;
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v71 = v26 >> 8;
      v29 = swift_slowAlloc();
      v73 = v5;
      *v29 = 134218240;
      v30 = v72;
      if (v26)
      {
        v30 = 255.0;
      }

      *(v29 + 4) = v30;
      *(v29 + 12) = 256;
      v31 = v71;
      if ((v26 & 0x10000) != 0)
      {
        v31 = -1;
      }

      *(v29 + 14) = v31;
      _os_log_impl(&_mh_execute_header, v27, v28, "Current per %f and snr %hhu", v29, 0xFu);
      v5 = v73;
    }

    sub_10040BA94(*&v72, v26 & 1, BYTE1(v26) | ((BYTE2(v26) & 1) << 8));
    v23 = *v12;
    v22 = v12[1];
    v21 = v12[2];
    v20 = v12[3];
    v19 = v12[4];
    v8 = v80;
    v13 = v74;
  }

  if (v17)
  {
    v32 = &_mh_execute_header;
  }

  else
  {
    v32 = 0;
  }

  v33 = v32 | (v16 << 24) | (v15 << 16) | (v14 << 8);
  if (v19)
  {
    v34 = &_mh_execute_header;
  }

  else
  {
    v34 = 0;
  }

  v35 = v34 | (v20 << 24) | (v21 << 16) | (v22 << 8);
  v36 = v23;
  if (static TransmissionParameters.__derived_struct_equals(_:_:)(v33 | v13, v35 | v23))
  {
    v37 = 1000 * *(v1 + qword_10059A3F8);
    if ((v37 & 0xFFFFFFFF00000000) == 0)
    {
      *v8 = v37;
      v38 = enum case for DispatchTimeInterval.milliseconds(_:);
      v39 = v76;
      v40 = *(v75 + 104);
      v40(v8, enum case for DispatchTimeInterval.milliseconds(_:), v76);
      v41 = *OS_dispatch_queue.nan.unsafeMutableAddressor();
      v42 = swift_allocObject();
      swift_weakInit();
      v43 = swift_allocObject();
      v44 = v78;
      v43[2] = v78[10];
      v43[3] = v44[11];
      v43[4] = v42;
      v45 = v77;
      v40(v77, enum case for DispatchTimeInterval.never(_:), v39);
      *v5 = 100;
      v40(v5, v38, v39);
      v46 = type metadata accessor for P2PTimer();
      v47 = *(v46 + 48);
      v48 = *(v46 + 52);
      swift_allocObject();
      v49 = P2PTimer.init(deadlineAfter:on:repeating:leeway:_:)(v8, v41, v45, v5, sub_10040BE44, v43);
      v50 = *(v1 + qword_10059A418);
      *(v1 + qword_10059A418) = v49;
LABEL_25:

      return;
    }

    __break(1u);
  }

  else
  {
    v73 = v5;
    swift_unknownObjectUnownedLoadStrong();
    v51 = v78[10];
    v52 = v78[11];
    (*(v52 + 40))(v35 | v36, v51, v52);
    swift_unknownObjectRelease();
    v53 = 1000 * *(v1 + qword_10059A3F8);
    if ((v53 & 0xFFFFFFFF00000000) == 0)
    {
      *v8 = v53;
      v54 = enum case for DispatchTimeInterval.milliseconds(_:);
      v55 = v76;
      v56 = *(v75 + 104);
      v56(v8, enum case for DispatchTimeInterval.milliseconds(_:), v76);
      v78 = *OS_dispatch_queue.nan.unsafeMutableAddressor();
      v57 = swift_allocObject();
      swift_weakInit();
      v58 = swift_allocObject();
      v58[2] = v51;
      v58[3] = v52;
      v58[4] = v57;
      v59 = v77;
      v56(v77, enum case for DispatchTimeInterval.never(_:), v55);
      v60 = v73;
      *v73 = 100;
      v56(v60, v54, v55);
      v61 = type metadata accessor for P2PTimer();
      v62 = *(v61 + 48);
      v63 = *(v61 + 52);
      swift_allocObject();
      v64 = v78;
      v65 = P2PTimer.init(deadlineAfter:on:repeating:leeway:_:)(v80, v64, v59, v60, sub_10040BE44, v58);
      v66 = *(v1 + qword_10059A418);
      *(v1 + qword_10059A418) = v65;

      v67 = Logger.logObject.getter();
      v68 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v67, v68))
      {
        v69 = swift_slowAlloc();
        *v69 = 16777728;
        *(v69 + 4) = v74;
        *(v69 + 5) = 256;
        *(v69 + 7) = *v12;

        _os_log_impl(&_mh_execute_header, v67, v68, "Checking link stats on timer prev rate is %hhu current rate %hhu", v69, 8u);

        return;
      }

      goto LABEL_25;
    }
  }

  __break(1u);
}