uint64_t sub_10040B6F8()
{
  v1 = v0;
  v2 = *v0;
  v3 = type metadata accessor for DispatchTimeInterval();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = &v35 - v8;
  __chkstk_darwin();
  v11 = (&v35 - v10);
  *(v1 + qword_10059A410) = 0;
  swift_unknownObjectUnownedLoadStrong();
  v12 = v1 + qword_10059A408;
  swift_beginAccess();
  v13 = *v12;
  v14 = v12[1];
  v15 = v12[2];
  v16 = v12[3];
  v17 = v12[4];
  v18 = *(v2 + 88);
  v19 = *(v2 + 80);
  v20 = v17 == 0;
  v21 = &_mh_execute_header;
  if (v20)
  {
    v21 = 0;
  }

  (*(*(v2 + 88) + 40))(v21 | (v16 << 24) | (v15 << 16) | (v14 << 8) | v13, v19, v18);
  result = swift_unknownObjectRelease();
  v23 = 1000 * *(v1 + qword_10059A3F8);
  if ((v23 & 0xFFFFFFFF00000000) != 0)
  {
    __break(1u);
  }

  else
  {
    *v11 = v23;
    v24 = enum case for DispatchTimeInterval.milliseconds(_:);
    v35 = v9;
    v37 = v11;
    v25 = *(v4 + 104);
    v25(v11, enum case for DispatchTimeInterval.milliseconds(_:), v3);
    v36 = *OS_dispatch_queue.nan.unsafeMutableAddressor();
    v26 = swift_allocObject();
    swift_weakInit();
    v27 = swift_allocObject();
    v27[2] = v19;
    v27[3] = v18;
    v27[4] = v26;
    v28 = v35;
    v25(v35, enum case for DispatchTimeInterval.never(_:), v3);
    *v7 = 100;
    v25(v7, v24, v3);
    v29 = type metadata accessor for P2PTimer();
    v30 = *(v29 + 48);
    v31 = *(v29 + 52);
    swift_allocObject();
    v32 = v36;
    v33 = P2PTimer.init(deadlineAfter:on:repeating:leeway:_:)(v37, v32, v28, v7, sub_10040BE24, v27);
    v34 = *(v1 + qword_10059A418);
    *(v1 + qword_10059A418) = v33;
  }

  return result;
}

uint64_t sub_10040BA04()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10040B000();
  }

  return result;
}

uint64_t sub_10040BA5C()
{
  v1 = *(v0 + qword_10059A418);
  *(v0 + qword_10059A418) = 0;

  *(v0 + qword_10059A410) = 1;
  return result;
}

void sub_10040BA94(uint64_t a1, char a2, __int16 a3)
{
  v4 = v3;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 134218240;
    v11 = *&a1;
    if (a2)
    {
      v11 = 255.0;
    }

    *(v10 + 4) = v11;
    *(v10 + 12) = 256;
    if ((a3 & 0x100) != 0)
    {
      v12 = -1;
    }

    else
    {
      v12 = a3;
    }

    *(v10 + 14) = v12;
    _os_log_impl(&_mh_execute_header, v8, v9, "rate update with per %f, snr %hhu", v10, 0xFu);
  }

  if ((a2 & 1) == 0)
  {
    if (*(v4 + qword_10059A3F0) <= *&a1)
    {
      swift_beginAccess();
      v14 = (a3 & 0x1FF);
      TransmissionParameters.previousTransmissionParameters(snr:)(v14);
    }

    else
    {
      swift_beginAccess();
      v13 = (a3 & 0x1FF);
      TransmissionParameters.nextTransmissionParameters(snr:)(v13);
    }

    swift_endAccess();

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 16777728;
      v18 = qword_10059A408;
      swift_beginAccess();
      *(v17 + 4) = *(v4 + v18);

      *(v17 + 5) = 2048;
      *(v17 + 7) = *&a1;
      _os_log_impl(&_mh_execute_header, v15, v16, "Current rate update: MCS=%hhu, per is %f", v17, 0xFu);
    }

    else
    {
    }
  }
}

uint64_t sub_10040BCC0()
{
  swift_unknownObjectUnownedDestroy();
  v1 = qword_10059A3E8;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + qword_10059A400);

  v4 = *(v0 + qword_10059A418);

  return v0;
}

uint64_t sub_10040BD48()
{
  sub_10040BCC0();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_10040BE24()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_10040BA04();
}

void sub_10040BE48()
{
  sub_10041DC98(319, qword_100596670, &type metadata accessor for DispatchTime);
  if (v1 <= 0x3F)
  {
    v32 = *(v0 - 8) + 64;
    sub_10041D99C(319, &qword_10059A548, sub_1002BC574);
    if (v3 <= 0x3F)
    {
      v33 = *(v2 - 8) + 64;
      sub_10041D99C(319, &qword_100593D78, sub_1002AB120);
      if (v5 <= 0x3F)
      {
        v34 = *(v4 - 8) + 64;
        sub_10041D99C(319, &qword_10059A568, sub_10027A2D4);
        if (v7 <= 0x3F)
        {
          v35 = *(v6 - 8) + 64;
          sub_10041DAF0(319, &qword_10059A578, &qword_10059A580, &qword_1004B37A8, sub_10041D824);
          if (v9 <= 0x3F)
          {
            v36 = *(v8 - 8) + 64;
            sub_10041D99C(319, &qword_10059A598, sub_100218C7C);
            if (v11 <= 0x3F)
            {
              v37 = *(v10 - 8) + 64;
              sub_10041D8A8();
              if (v13 <= 0x3F)
              {
                v38 = *(v12 - 8) + 64;
                sub_10041D99C(319, &unk_10059A5C0, sub_1001672DC);
                if (v15 <= 0x3F)
                {
                  v39 = *(v14 - 8) + 64;
                  sub_10041D99C(319, &unk_10059A5D0, sub_10027BE44);
                  if (v17 <= 0x3F)
                  {
                    v40 = *(v16 - 8) + 64;
                    sub_10041D9FC();
                    if (v19 <= 0x3F)
                    {
                      v41 = *(v18 - 8) + 64;
                      sub_10041DAF0(319, &qword_10059A600, &qword_10059A608, &qword_1004B37B8, sub_10041DB60);
                      if (v21 <= 0x3F)
                      {
                        v42 = *(v20 - 8) + 64;
                        sub_10041DAF0(319, &qword_10059A620, &qword_10059A628, &qword_1004B37C0, sub_10041DC14);
                        if (v23 <= 0x3F)
                        {
                          v43 = *(v22 - 8) + 64;
                          v24 = type metadata accessor for NANDriverCapabilities();
                          if (v25 <= 0x3F)
                          {
                            v44 = *(v24 - 8) + 64;
                            v26 = type metadata accessor for DispatchTime();
                            if (v27 <= 0x3F)
                            {
                              v45 = *(v26 - 8) + 64;
                              sub_10041DC98(319, &qword_10059A640, type metadata accessor for NANIdentityKey);
                              if (v29 <= 0x3F)
                              {
                                v46 = *(v28 - 8) + 64;
                                sub_10041DC98(319, &qword_10059A648, &type metadata accessor for SymmetricKey);
                                if (v31 <= 0x3F)
                                {
                                  v47 = *(v30 - 8) + 64;
                                  swift_initClassMetadata2();
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void *sub_10040C4A8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_1000C0464(0, v1, 0);
  v3 = -1 << *(a1 + 32);
  v25 = a1 + 64;
  result = _HashTable.startBucket.getter();
  v6 = result;
  v7 = 0;
  v24 = v1;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(a1 + 32))
  {
    v10 = v6 >> 6;
    if ((*(v25 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_21;
    }

    v11 = *(a1 + 36);
    result = Channel.description.getter(*(*(a1 + 48) + 8 * v6) | (*(*(a1 + 48) + 8 * v6 + 4) << 32) | (*(*(a1 + 48) + 8 * v6 + 5) << 40), v5);
    v13 = _swiftEmptyArrayStorage[2];
    v12 = _swiftEmptyArrayStorage[3];
    if (v13 >= v12 >> 1)
    {
      v22 = v5;
      v23 = result;
      sub_1000C0464((v12 > 1), v13 + 1, 1);
      v5 = v22;
      result = v23;
    }

    _swiftEmptyArrayStorage[2] = v13 + 1;
    v14 = &_swiftEmptyArrayStorage[2 * v13];
    v14[4] = result;
    v14[5] = v5;
    v8 = 1 << *(a1 + 32);
    if (v6 >= v8)
    {
      goto LABEL_22;
    }

    v15 = *(v25 + 8 * v10);
    if ((v15 & (1 << v6)) == 0)
    {
      goto LABEL_23;
    }

    if (v11 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v16 = v15 & (-2 << (v6 & 0x3F));
    if (v16)
    {
      v8 = __clz(__rbit64(v16)) | v6 & 0x7FFFFFFFFFFFFFC0;
      v9 = v24;
    }

    else
    {
      v17 = v10 << 6;
      v18 = v10 + 1;
      v9 = v24;
      v19 = (a1 + 72 + 8 * v10);
      while (v18 < (v8 + 63) >> 6)
      {
        v21 = *v19++;
        v20 = v21;
        v17 += 64;
        ++v18;
        if (v21)
        {
          result = sub_10002BEB8(v6, v11, 0);
          v8 = __clz(__rbit64(v20)) + v17;
          goto LABEL_4;
        }
      }

      result = sub_10002BEB8(v6, v11, 0);
    }

LABEL_4:
    ++v7;
    v6 = v8;
    if (v7 == v9)
    {
      return _swiftEmptyArrayStorage;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

void *sub_10040C6E0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_1000C0464(0, v1, 0);
  v3 = -1 << *(a1 + 32);
  v25 = a1 + 64;
  result = _HashTable.startBucket.getter();
  v5 = result;
  v6 = 0;
  v24 = v1;
  while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(a1 + 32))
  {
    v9 = v5 >> 6;
    if ((*(v25 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
    {
      goto LABEL_21;
    }

    v10 = *(a1 + 36);
    v26 = *(*(a1 + 48) + v5);
    result = String.init<A>(describing:)();
    v13 = _swiftEmptyArrayStorage[2];
    v12 = _swiftEmptyArrayStorage[3];
    if (v13 >= v12 >> 1)
    {
      v22 = v11;
      v23 = result;
      sub_1000C0464((v12 > 1), v13 + 1, 1);
      v11 = v22;
      result = v23;
    }

    _swiftEmptyArrayStorage[2] = v13 + 1;
    v14 = &_swiftEmptyArrayStorage[2 * v13];
    v14[4] = result;
    v14[5] = v11;
    v7 = 1 << *(a1 + 32);
    if (v5 >= v7)
    {
      goto LABEL_22;
    }

    v15 = *(v25 + 8 * v9);
    if ((v15 & (1 << v5)) == 0)
    {
      goto LABEL_23;
    }

    if (v10 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v16 = v15 & (-2 << (v5 & 0x3F));
    if (v16)
    {
      v7 = __clz(__rbit64(v16)) | v5 & 0x7FFFFFFFFFFFFFC0;
      v8 = v24;
    }

    else
    {
      v17 = v9 << 6;
      v18 = v9 + 1;
      v8 = v24;
      v19 = (a1 + 72 + 8 * v9);
      while (v18 < (v7 + 63) >> 6)
      {
        v21 = *v19++;
        v20 = v21;
        v17 += 64;
        ++v18;
        if (v21)
        {
          result = sub_10002BEB8(v5, v10, 0);
          v7 = __clz(__rbit64(v20)) + v17;
          goto LABEL_4;
        }
      }

      result = sub_10002BEB8(v5, v10, 0);
    }

LABEL_4:
    ++v6;
    v5 = v7;
    if (v6 == v8)
    {
      return _swiftEmptyArrayStorage;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_10040C914(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = sub_100041DE8(a1 & 0xFFFFFFFFFFFFLL);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = *(*(a2 + 56) + 8 * v3);
}

uint64_t sub_10040C968@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a2 + 16) && (v5 = sub_10007CD94(a1 & 0xFFFFFFFFFFFFFFLL), (v6 & 1) != 0))
  {
    v7 = v5;
    v8 = *(a2 + 56);
    v9 = type metadata accessor for NANPeer.Service.AuthenticationStatus(0);
    v16 = *(v9 - 8);
    sub_1000238F0(v8 + *(v16 + 72) * v7, a3, type metadata accessor for NANPeer.Service.AuthenticationStatus);
    v10 = *(v16 + 56);
    v11 = a3;
    v12 = 0;
    v13 = v9;
  }

  else
  {
    v14 = type metadata accessor for NANPeer.Service.AuthenticationStatus(0);
    v10 = *(*(v14 - 8) + 56);
    v13 = v14;
    v11 = a3;
    v12 = 1;
  }

  return v10(v11, v12, 1, v13);
}

uint64_t sub_10040CA94(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = sub_100041DE8(a1 & 0xFFFFFFFFFFFFLL);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = *(*(a2 + 56) + 8 * v3);
}

uint64_t *sub_10040CAE8()
{
  v1 = *v0;
  v2 = *(*v0 + 712);
  if (*(v0 + v2))
  {
    v3 = *(v0 + v2);
  }

  else
  {
    v4 = v0;
    v5 = *(v1 + 432);
    v6 = *(v1 + 440);
    type metadata accessor for NANDiscoveryEngine();

    v3 = sub_10036B91C(v7);

    v8 = *(v4 + v2);
    *(v4 + v2) = v3;
  }

  return v3;
}

uint64_t sub_10040CBA8()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin();
  v5 = (&v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = OS_dispatch_queue.nan.unsafeMutableAddressor();
  v7 = *v6;
  *v5 = *v6;
  (*(v2 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v1);
  v8 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  result = (*(v2 + 8))(v5, v1);
  if ((v7 & 1) == 0)
  {
    __break(1u);
    return result;
  }

  if (sub_100019F94())
  {

    goto LABEL_5;
  }

  v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v10)
  {
LABEL_5:
    if (!*(v0 + *(*v0 + 552)))
    {
      return result;
    }
  }

  sub_10000B02C();
  swift_allocError();
  *v11 = xmmword_10047CE50;
  *(v11 + 16) = 1;
  return swift_willThrow();
}

uint64_t sub_10040CD68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(*(sub_10005DC58(&qword_100597420, &qword_1004B16B8) - 8) + 64);
  __chkstk_darwin();
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = &v19 - v8;
  v10 = *(*v2 + 464);
  swift_beginAccess();
  v11 = *(v2 + v10);
  if (*(v11 + 16) && (v12 = sub_100041DE8(a1 & 0xFFFFFFFFFFFFLL), (v13 & 1) != 0))
  {
    v14 = v12;
    v15 = *(v11 + 56);
    v16 = type metadata accessor for NANPeer(0);
    v17 = *(v16 - 8);
    sub_1000238F0(v15 + *(v17 + 72) * v14, v9, type metadata accessor for NANPeer);
    (*(v17 + 56))(v9, 0, 1, v16);
  }

  else
  {
    v16 = type metadata accessor for NANPeer(0);
    (*(*(v16 - 8) + 56))(v9, 1, 1, v16);
  }

  sub_10001CEA8(v9, v7, &qword_100597420, &qword_1004B16B8);
  type metadata accessor for NANPeer(0);
  if ((*(*(v16 - 8) + 48))(v7, 1, v16) == 1)
  {
    sub_1002E1F74(a1 & 0xFFFFFFFFFFFFLL, a2);
    sub_100016290(v7, &qword_100597420, &qword_1004B16B8);
  }

  else
  {
    sub_100423C3C(v7, a2, type metadata accessor for NANPeer);
  }

  return swift_endAccess();
}

uint64_t sub_10040CFF0(uint64_t a1)
{
  if (a1 == 16)
  {
    result = static WiFiAddress.randomLinkLocalAddress()();
    v3 = v1 + *(*v1 + 488);
    *(v3 + 4) = WORD2(result);
    *v3 = result;
    *(v3 + 6) = 0;
  }

  else
  {
    sub_10000B02C();
    swift_allocError();
    *v4 = xmmword_100481800;
    *(v4 + 16) = 1;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_10040D088(uint64_t result)
{
  if (result == 16)
  {
    v2 = v1 + *(*v1 + 488);
    *(v2 + 4) = 0;
    *v2 = 0;
    *(v2 + 6) = 1;
  }

  else
  {
    sub_10000B02C();
    swift_allocError();
    *v3 = xmmword_100481800;
    *(v3 + 16) = 1;
    return swift_willThrow();
  }

  return result;
}

uint64_t (*sub_10040D118(uint64_t **a1, unsigned __int8 a2))()
{
  if (&_swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = sub_100420FC4(v4, a2);
  return sub_100423CF4;
}

uint64_t (*sub_10040D190(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x40uLL);
  }

  v3 = v2;
  *a1 = v2;
  v4 = type metadata accessor for UUID();
  v3[4] = v4;
  v5 = *(v4 - 8);
  v6 = v5;
  v3[5] = v5;
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(*(v5 + 64));
  }

  v8 = v7;
  v3[6] = v7;
  (*(v6 + 16))();
  v3[7] = sub_100421068(v3, v8);
  return sub_10040D2A8;
}

uint64_t (*sub_10040D2AC(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x40uLL);
  }

  v3 = v2;
  *a1 = v2;
  v4 = type metadata accessor for UUID();
  v3[4] = v4;
  v5 = *(v4 - 8);
  v6 = v5;
  v3[5] = v5;
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(*(v5 + 64));
  }

  v8 = v7;
  v3[6] = v7;
  (*(v6 + 16))();
  v3[7] = sub_1004211A8(v3, v8);
  return sub_100423CF0;
}

void sub_10040D3C4(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 48);
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  (*(*a1 + 56))(*a1, 0);
  (*(v4 + 8))(v2, v3);
  free(v2);

  free(v1);
}

uint64_t (*sub_10040D43C(uint64_t **a1, uint64_t a2))()
{
  if (&_swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = sub_100421420(v4, a2 & 0xFFFFFFFFFFFFLL);
  return sub_1001A95CC;
}

uint64_t (*sub_10040D4B4(uint64_t **a1, char a2))()
{
  if (&_swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = sub_10042137C(v4, a2);
  return sub_100423CF4;
}

uint64_t sub_10040D52C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v53 = a1;
  v54 = a2;
  v4 = *v2;
  v5 = *(v4[55] + 8);
  v48 = v4[54];
  v49 = v5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v51 = *(AssociatedTypeWitness - 8);
  v52 = AssociatedTypeWitness;
  v7 = *(v51 + 64);
  __chkstk_darwin();
  v50 = &v41 - v8;
  v9 = type metadata accessor for DispatchTime();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin();
  v46 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchTimeInterval();
  v44 = *(v13 - 8);
  v45 = v13;
  v14 = *(v44 + 64);
  __chkstk_darwin();
  v43 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v42 = &v41 - v16;
  v17 = *(*(sub_10005DC58(&unk_100597330, &unk_100481FA0) - 8) + 64);
  __chkstk_darwin();
  v47 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v20 = &v41 - v19;
  __chkstk_darwin();
  v22 = &v41 - v21;
  v23 = v4[72];
  swift_beginAccess();
  sub_100012400(v3 + v23, v22, &unk_100597330, &unk_100481FA0);
  v55 = v10;
  v24 = *(v10 + 48);
  LODWORD(v4) = v24(v22, 1, v9);
  sub_100016290(v22, &unk_100597330, &unk_100481FA0);
  if (v4 == 1)
  {
    goto LABEL_4;
  }

  type metadata accessor for P2PTimer();
  v25 = v46;
  variable initialization expression of AWDLPeer.lastUpdated();
  sub_100012400(v3 + v23, v20, &unk_100597330, &unk_100481FA0);
  result = v24(v20, 1, v9);
  if (result == 1)
  {
    __break(1u);
    return result;
  }

  v27 = v42;
  DispatchTime.distance(to:)();
  v28 = *(v55 + 8);
  v28(v25, v9);
  v28(v20, v9);
  v30 = v43;
  v29 = v44;
  *v43 = 5;
  v31 = v45;
  (*(v29 + 104))(v30, enum case for DispatchTimeInterval.seconds(_:), v45);
  v32 = static DispatchTimeInterval.< infix(_:_:)();
  v33 = *(v29 + 8);
  v33(v30, v31);
  result = v33(v27, v31);
  if (v32)
  {
LABEL_4:
    type metadata accessor for P2PTimer();
    v34 = v47;
    variable initialization expression of AWDLPeer.lastUpdated();
    (*(v55 + 56))(v34, 0, 1, v9);
    swift_beginAccess();
    sub_1000B1B78(v34, v3 + v23, &unk_100597330, &unk_100481FA0);
    swift_endAccess();
    v35 = *(*v3 + 96);
    swift_beginAccess();
    v36 = v50;
    v37 = v51;
    v38 = v3 + v35;
    v39 = v52;
    (*(v51 + 16))(v50, v38, v52);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    (*(AssociatedConformanceWitness + 160))(v53, v54, v39, AssociatedConformanceWitness);
    return (*(v37 + 8))(v36, v39);
  }

  return result;
}

uint64_t sub_10040DC18(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x1000000000000000) == 0 && ((a2 & 0x2000000000000000) != 0 || (a1 & 0x1000000000000000) != 0))
  {
    return os_transaction_create();
  }

  sub_10005DC58(&unk_10059B080, &unk_1004B01D0);
  result = _StringGuts._slowWithCString<A>(_:)();
  if (!v2)
  {
    return v4;
  }

  return result;
}

uint64_t sub_10040DCDC@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 648);
  swift_beginAccess();
  return sub_100012400(v1 + v3, a1, &unk_10059A3D0, &qword_1004B0730);
}

uint64_t *sub_10040DD50()
{
  v1 = *v0;
  v2 = *(*v0 + 720);
  if (*(v0 + v2))
  {
    v3 = *(v0 + v2);
  }

  else
  {
    v4 = v0;
    v5 = *(v1 + 432);
    v6 = *(v1 + 440);
    type metadata accessor for NANOutOfBoundFrameTransmitter();

    v3 = sub_1003AC784(v7);

    v8 = *(v4 + v2);
    *(v4 + v2) = v3;
  }

  return v3;
}

uint64_t sub_10040DE10(__int16 a1)
{
  v5 = a1;
  v2 = *(*v1 + 600);
  swift_beginAccess();
  v3 = sub_10005DC58(&qword_10059A6A8, &qword_1004B3888);
  MutableDriverProperty.wrappedValue.setter(&v5, v3);
  return swift_endAccess();
}

uint64_t sub_10040DE8C()
{
  v1 = v0 + *(*v0 + 824);
  v2 = *(v1 + 8);
  return (*v1)();
}

uint64_t sub_10040DECC(unint64_t a1, int a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  v64 = a2;
  v8 = *v4;
  v61 = a3;
  v62 = v8;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin();
  v13 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchPredicate();
  v22 = *(v14 - 8);
  v15 = *(v22 + 64);
  __chkstk_darwin();
  v17 = (&v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = OS_dispatch_queue.nan.unsafeMutableAddressor();
  v19 = *v18;
  *v17 = *v18;
  (*(v22 + 104))(v17, enum case for DispatchPredicate.onQueue(_:), v14);
  v20 = v19;
  v21 = _dispatchPreconditionTest(_:)();
  v23 = *(v22 + 8);
  LOBYTE(v22) = v22 + 8;
  v23(v17, v14);
  if ((v21 & 1) == 0)
  {
    __break(1u);
    goto LABEL_19;
  }

  v59 = a1 >> 40;
  v60 = a4;
  v22 = HIDWORD(a1);
  v21 = v10;
  v63 = v13;
  v24 = swift_allocObject();
  swift_weakInit();
  v25 = swift_allocObject();
  v26 = v62;
  *(v25 + 16) = *(v62 + 432);
  *(v25 + 24) = *(v26 + 440);
  *(v25 + 32) = v24;
  *(v25 + 40) = a1;
  *(v25 + 42) = BYTE2(a1);
  *(v25 + 43) = BYTE3(a1);
  *(v25 + 44) = BYTE4(a1);
  *(v25 + 45) = v59;
  *(v25 + 46) = v64;
  updated = type metadata accessor for WiFiPropertyUpdateRegistration();
  v28 = *(updated + 48);
  v29 = *(updated + 52);
  swift_allocObject();
  v13 = WiFiPropertyUpdateRegistration.init(cancellationHandler:)(sub_100422EA8, v25);
  v30 = *(v10 + 16);
  v62 = v9;
  v30(v63, v13 + OBJC_IVAR____TtC7CoreP2P30WiFiPropertyUpdateRegistration_id, v9);
  v9 = swift_allocObject();
  v31 = v60;
  *(v9 + 16) = v61;
  *(v9 + 24) = v31;
  v17 = *(*v5 + 456);
  swift_beginAccess();

  v32 = *(v17 + v5);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v65 = *(v17 + v5);
  v34 = v65;
  *(v17 + v5) = 0x8000000000000000;
  a4 = sub_100041DE8(a1 & 0xFFFFFFFFFFFFLL);
  v36 = v34[2];
  v37 = (v35 & 1) == 0;
  v38 = v36 + v37;
  if (__OFADD__(v36, v37))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  LOBYTE(v22) = v35;
  if (v34[3] >= v38)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  else
  {
    sub_10030F3E4(v38, isUniquelyReferenced_nonNull_native);
    v34 = v65;
    v39 = sub_100041DE8(a1 & 0xFFFFFFFFFFFFLL);
    if ((v22 & 1) != (v40 & 1))
    {
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      goto LABEL_23;
    }

    a4 = v39;
  }

  while (1)
  {
    v61 = v13;
    *(v17 + v5) = v34;
    if ((v22 & 1) == 0)
    {
      sub_1002DD3A0(a4, a1 & 0xFFFFFFFFFFFFLL, &_swiftEmptyDictionarySingleton, v34);
    }

    v17 = v34[7];
    v41 = v17[a4];
    v42 = swift_isUniquelyReferenced_nonNull_native();
    v65 = v17[a4];
    v43 = v65;
    v17[a4] = 0x8000000000000000;
    LOBYTE(v22) = v64;
    v13 = sub_1003E08F4(v64);
    v45 = v43[2];
    v46 = (v44 & 1) == 0;
    v47 = v45 + v46;
    if (!__OFADD__(v45, v46))
    {
      break;
    }

LABEL_20:
    __break(1u);
LABEL_21:
    sub_10046A558();
    v34 = v65;
  }

  v48 = v44;
  if (v43[3] >= v47)
  {
    if ((v42 & 1) == 0)
    {
      sub_10046A3FC();
      v43 = v65;
    }

    goto LABEL_15;
  }

  sub_10030F148(v47, v42);
  v43 = v65;
  v49 = sub_1003E08F4(v22);
  if ((v48 & 1) != (v50 & 1))
  {
LABEL_23:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v13 = v49;
LABEL_15:
  v51 = v17[a4];
  v17[a4] = v43;

  v52 = v17[a4];
  if ((v48 & 1) == 0)
  {
    v53 = sub_1002DE3B4(_swiftEmptyArrayStorage);
    sub_10002D508(v13, v22, v53, v52);
  }

  v54 = v52[7];
  v55 = *(v54 + 8 * v13);
  v56 = swift_isUniquelyReferenced_nonNull_native();
  v65 = *(v54 + 8 * v13);
  *(v54 + 8 * v13) = 0x8000000000000000;
  v57 = v63;
  sub_1003E1270(sub_100422EC4, v9, v63, v56);
  (*(v21 + 8))(v57, v62);
  *(v54 + 8 * v13) = v65;
  swift_endAccess();
  return v61;
}

uint64_t sub_10040E430(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(*(sub_10005DC58(&qword_100597420, &qword_1004B16B8) - 8) + 64);
  __chkstk_darwin();
  v8 = &v12 - v7;
  sub_1000238F0(a1, &v12 - v7, type metadata accessor for NANPeer);
  v9 = type metadata accessor for NANPeer(0);
  (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  v10 = *(*v3 + 464);
  swift_beginAccess();
  sub_1003381F4(v8, a2 & 0xFFFFFFFFFFFFLL);
  swift_endAccess();
  sub_100410C08();
  return sub_100023A78(a1, type metadata accessor for NANPeer);
}

uint64_t sub_10040E580(uint64_t a1)
{
  v5 = a1;
  v2 = *(*v1 + 648);
  swift_beginAccess();
  v3 = sub_10005DC58(&unk_10059A3D0, &qword_1004B0730);
  ObservableWiFiProperty.wrappedValue.setter(&v5, v3);
  return swift_endAccess();
}

uint64_t sub_10040E5FC()
{
  v1 = sub_10005DC58(&unk_10059A3D0, &qword_1004B0730);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin();
  v4 = &v7 - v3;
  v5 = *(*v0 + 648);
  swift_beginAccess();
  sub_100012400(v0 + v5, v4, &unk_10059A3D0, &qword_1004B0730);
  ObservableWiFiProperty.wrappedValue.getter(v1, &v7);
  sub_100016290(v4, &unk_10059A3D0, &qword_1004B0730);
  return v7;
}

uint64_t sub_10040E6EC(void (*a1)(uint64_t), uint64_t a2)
{
  v3 = v2;
  v6 = *(*v2 + 464);
  swift_beginAccess();
  v7 = *(v2 + v6);
  v8 = -1 << *(v7 + 32);
  swift_bridgeObjectRetain_n();
  v9 = _HashTable.startBucket.getter();
  v10 = *(v7 + 36);
  v11 = *(v7 + 32);

  v12 = 1 << v11;

  v23 = v9;
  if (v9 == 1 << v11)
  {
LABEL_14:
    swift_bridgeObjectRelease_n();
    sub_10002BEB8(v23, v10, 0);
    sub_10002BEB8(v12, v10, 0);
    return sub_10002BEB8(v12, v10, 0);
  }

  else
  {
    v13 = v9;
    while ((v13 & 0x8000000000000000) == 0)
    {
      v9 = 1 << *(v7 + 32);
      if (v13 >= v9)
      {
        break;
      }

      v14 = v13 >> 6;
      v15 = *(v7 + 64 + 8 * (v13 >> 6));
      if (((v15 >> v13) & 1) == 0)
      {
        goto LABEL_16;
      }

      if (*(v7 + 36) != v10)
      {
        goto LABEL_17;
      }

      v16 = v15 & (-2 << (v13 & 0x3F));
      if (v16)
      {
        v9 = __clz(__rbit64(v16)) | v13 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v17 = v14 << 6;
        v18 = v14 + 1;
        v19 = (v7 + 72 + 8 * v14);
        while (v18 < (v9 + 63) >> 6)
        {
          v21 = *v19++;
          v20 = v21;
          v17 += 64;
          ++v18;
          if (v21)
          {
            v9 = __clz(__rbit64(v20)) + v17;
            break;
          }
        }
      }

      v24[0] = v13;
      v24[1] = v10;
      v25 = 0;
      sub_10041C1A8(v24, a1, a2, v3);
      sub_10002BEB8(v13, v10, 0);
      v13 = v9;
      if (v9 == v12)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);

    sub_10002BEB8(v13, v10, 0);

    sub_10002BEB8(v23, v10, 0);
    sub_10002BEB8(v12, v10, 0);
    result = sub_10002BEB8(v9, v10, 0);
    __break(1u);
  }

  return result;
}

uint64_t sub_10040E940(char a1)
{
  v5 = a1 & 1;
  v2 = *(*v1 + 584);
  swift_beginAccess();
  v3 = sub_10005DC58(&qword_10059A650, &qword_1004B3850);
  MutableDriverProperty.wrappedValue.setter(&v5, v3);
  return swift_endAccess();
}

uint64_t sub_10040E9C0@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*(sub_10005DC58(&unk_100597330, &unk_100481FA0) - 8) + 64);
  __chkstk_darwin();
  v5 = &v18 - v4;
  v6 = type metadata accessor for DispatchTime();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin();
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v12 = &v18 - v11;
  v13 = *(*v1 + 568);
  swift_beginAccess();
  sub_100012400(v1 + v13, v5, &unk_100597330, &unk_100481FA0);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_100016290(v5, &unk_100597330, &unk_100481FA0);
    v14 = enum case for DispatchTimeInterval.never(_:);
    v15 = type metadata accessor for DispatchTimeInterval();
    return (*(*(v15 - 8) + 104))(a1, v14, v15);
  }

  else
  {
    (*(v7 + 32))(v12, v5, v6);
    type metadata accessor for P2PTimer();
    variable initialization expression of AWDLPeer.lastUpdated();
    DispatchTime.distance(to:)();
    v17 = *(v7 + 8);
    v17(v10, v6);
    return (v17)(v12, v6);
  }
}

uint64_t sub_10040EC2C(uint64_t a1)
{
  v5 = a1;
  v2 = *(*v1 + 672);
  swift_beginAccess();
  v3 = sub_10005DC58(&qword_100597358, &qword_1004B1650);
  MutableDriverProperty.wrappedValue.setter(&v5, v3);
  return swift_endAccess();
}

uint64_t sub_10040ECA8(uint64_t a1)
{
  v5 = a1;
  v2 = *(*v1 + 656);
  swift_beginAccess();
  v3 = sub_10005DC58(&qword_100597358, &qword_1004B1650);
  MutableDriverProperty.wrappedValue.setter(&v5, v3);
  return swift_endAccess();
}

uint64_t sub_10040ED24()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchTime();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = &v12 - v7;
  type metadata accessor for P2PTimer();
  variable initialization expression of AWDLPeer.lastUpdated();
  v9 = *(*v0 + 752);
  swift_beginAccess();
  (*(v3 + 16))(v6, v1 + v9, v2);
  DispatchTime.distance(to:)();
  v10 = *(v3 + 8);
  v10(v6, v2);
  return (v10)(v8, v2);
}

uint64_t sub_10040EE98(uint64_t a1, uint64_t a2)
{
  v6[0] = a1;
  v6[1] = a2;
  v3 = *(*v2 + 608);
  swift_beginAccess();
  v4 = sub_10005DC58(&unk_10059A670, &qword_1004B3870);
  MutableDriverProperty.wrappedValue.setter(v6, v4);
  return swift_endAccess();
}

uint64_t sub_10040EF14(uint64_t a1)
{
  v5 = a1;
  v2 = *(*v1 + 680);
  swift_beginAccess();
  v3 = sub_10005DC58(&qword_10059A658, &qword_1004B3858);
  MutableDriverProperty.wrappedValue.setter(&v5, v3);
  return swift_endAccess();
}

uint64_t sub_10040EF90()
{
  v1 = v0;
  v104 = *v0;
  v2 = v104;
  v3 = type metadata accessor for Logger();
  v101 = *(v3 - 8);
  v102 = v3;
  v4 = *(v101 + 64);
  __chkstk_darwin();
  v98 = &v83 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v104[55] + 8);
  v7 = v104[54];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v96 = *(AssociatedTypeWitness - 8);
  v9 = *(v96 + 64);
  __chkstk_darwin();
  v97 = &v83 - v10;
  v11 = swift_getAssociatedTypeWitness();
  v91 = *(swift_getAssociatedConformanceWitness() + 8);
  v100 = v11;
  v12 = swift_getAssociatedTypeWitness();
  v92 = *(v12 - 8);
  v93 = v12;
  v13 = *(v92 + 64);
  __chkstk_darwin();
  v90 = &v83 - v14;
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v15 = type metadata accessor for Preferences();
  v99 = *(v15 - 8);
  v16 = *(v99 + 64);
  __chkstk_darwin();
  v18 = &v83 - v17;
  v103 = v6;
  v19 = swift_getAssociatedTypeWitness();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin();
  v23 = &v83 - v22;
  v24 = *(*(type metadata accessor for Optional() - 8) + 64);
  __chkstk_darwin();
  v26 = &v83 - v25;
  v27 = v2[60];
  v28 = *&v1[v27];
  if (v28)
  {
    v29 = v104[20];
    swift_retain_n();
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v105[0] = v33;
      *v32 = 136315138;
      v34 = WiFiInterface.description.getter();
      v36 = v35;

      v37 = sub_100002320(v34, v36, v105);

      *(v32 + 4) = v37;
      _os_log_impl(&_mh_execute_header, v30, v31, "Ignoring request to create NAN data interface since it is already present: %s", v32, 0xCu);
      sub_100002A00(v33);
    }

    else
    {
    }
  }

  else
  {
    v86 = v18;
    v94 = v23;
    v89 = v26;
    v84 = v27;
    v95 = v20;
    v104 = v19;
    v85 = AssociatedTypeWitness;
    WiFiInterface.linkState.setter(1);
    v38 = *(*v1 + 160);
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&_mh_execute_header, v39, v40, "Creating NAN data interface", v41, 2u);
    }

    v42 = *(*v1 + 96);
    swift_beginAccess();
    (*(v95 + 16))(v94, &v1[v42], v104);
    v43 = *&v1[*(*v1 + 800)];
    swift_unownedRetainStrong();
    v44 = (v43 + *(*v43 + 104));
    v45 = v44[1];
    v87 = *v44;
    v88 = v45;

    v46 = v86;
    WiFiInterface.preferences.getter();
    v47 = Preferences.nanDataMACAddress.getter(v15);
    (*(v99 + 8))(v46, v15);
    v83 = v38;
    if ((v47 & 0x1000000000000) != 0)
    {
      v54 = &v1[*(*v1 + 488)];
      v52 = v106;
      v53 = v101;
      if (v54[6])
      {
        v99 = v7;
        v55 = swift_unownedRetainStrong();
        v56 = v90;
        (*(*v43 + 168))(v55);

        v57 = v93;
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
        v59 = (*(AssociatedConformanceWitness + 64))(v57, AssociatedConformanceWitness);
        (*(v92 + 8))(v56, v57);
        if ((v59 & 0x1000000000000) != 0)
        {
          v61 = static WiFiAddress.random()();
        }

        else
        {
          WiFiAddress.lastOctetIncremented()(v60);
        }

        v48 = v61 >> 8;
        v64 = vdupq_n_s64(v61);
        v50 = vshlq_u64(v64, xmmword_1004841F0);
        v51 = vshlq_u64(v64, xmmword_1004841E0);
        v28 = v102;
        v7 = v99;
      }

      else
      {
        v62 = *v54 | (*(v54 + 2) << 32);
        v48 = v62 >> 8;
        v63 = vdupq_n_s64(v62);
        v50 = vshlq_u64(v63, xmmword_1004841F0);
        v51 = vshlq_u64(v63, xmmword_1004841E0);
        v28 = v102;
      }
    }

    else
    {
      v48 = v47 >> 8;
      v49 = vdupq_n_s64(v47);
      v50 = vshlq_u64(v49, xmmword_1004841F0);
      v51 = vshlq_u64(v49, xmmword_1004841E0);
      v52 = v106;
      v53 = v101;
      v28 = v102;
    }

    v65 = vorrq_s8(vandq_s8(vshlq_u64(v51, xmmword_1004AD2A0), xmmword_1004B3730), vandq_s8(vshlq_u64(v50, xmmword_1004AD290), xmmword_1004B3720));
    WiFiAddress.linkLocalAddress()((*&vorr_s8(*v65.i8, *&vextq_s8(v65, v65, 8uLL)) | (v48 << 8)));
    v67 = v66;
    v68 = v104;
    v69 = swift_getAssociatedConformanceWitness();
    v70 = v89;
    v71 = v94;
    (*(v69 + 16))(3, v87, v88, v67 & 0xFFFFFFFFFFFFLL, v68, v69);
    if (v52)
    {
      (*(v95 + 8))(v71, v68);
    }

    else
    {
      type metadata accessor for WiFiInterface();
      v99 = v7;
      v73 = v95;
      (*(v95 + 8))(v71, v68);

      (*(v73 + 56))(v70, 0, 1, v68);
      v74 = v97;
      (*(v96 + 16))(v97, &v1[*(*v1 + 112)], v85);
      v75 = v98;
      (*(v53 + 16))(v98, &v1[v83], v28);
      v28 = WiFiInterface.__allocating_init(driver:components:logger:)(v70, v74, v75);
      v76 = *&v1[v84];
      *&v1[v84] = v28;

      if (v28)
      {
        v77 = (*(*v28 + 416))(v105);
        type metadata accessor for WiFiInterface.NeighborDiscoveryTable();
        WiFiInterface.NeighborDiscoveryTable.clearAllPeerPresence()();
        if (v78)
        {
          v77(v105, 1);
        }

        else
        {
          v77(v105, 0);
          (*(*v28 + 216))(0);
        }
      }

      else
      {
        v79 = Logger.logObject.getter();
        v80 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v79, v80))
        {
          v81 = swift_slowAlloc();
          *v81 = 0;
          _os_log_impl(&_mh_execute_header, v79, v80, "Failed to create NAN data interface", v81, 2u);
        }

        sub_10000B02C();
        swift_allocError();
        *v82 = xmmword_10047CE50;
        *(v82 + 16) = 1;
        swift_willThrow();
      }
    }
  }

  return v28;
}

uint64_t sub_10040FB70()
{
  v1 = v0;
  v72 = *v0;
  v2 = v72;
  v3 = type metadata accessor for Logger();
  v69 = *(v3 - 8);
  v70 = v3;
  v4 = *(v69 + 64);
  __chkstk_darwin();
  v68 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v72[55] + 8);
  v7 = v72[54];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v71 = *(AssociatedTypeWitness - 8);
  v9 = *(v71 + 64);
  __chkstk_darwin();
  v11 = &v59 - v10;
  v12 = swift_getAssociatedTypeWitness();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin();
  v16 = &v59 - v15;
  v17 = *(*(type metadata accessor for Optional() - 8) + 64);
  __chkstk_darwin();
  v19 = &v59 - v18;
  v20 = v2[59];
  v21 = *&v1[v20];
  if (v21)
  {
    v22 = v72[20];
    swift_retain_n();
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v73[0] = v26;
      *v25 = 136315138;
      v27 = WiFiInterface.description.getter();
      v29 = v28;

      v30 = sub_100002320(v27, v29, v73);

      *(v25 + 4) = v30;
      _os_log_impl(&_mh_execute_header, v23, v24, "Ignoring request to create NAN companion low latency interface since it is already present: %s", v25, 0xCu);
      sub_100002A00(v26);
    }

    else
    {
    }
  }

  else
  {
    v61 = v12;
    v62 = v16;
    v63 = v19;
    v64 = v13;
    v59 = v20;
    v65 = v11;
    v66 = AssociatedTypeWitness;
    v67 = v6;
    v60 = v72[20];
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&_mh_execute_header, v31, v32, "Creating companion low latency interface", v33, 2u);
    }

    v34 = *(*v1 + 96);
    swift_beginAccess();
    v35 = v64;
    v36 = v61;
    v37 = v62;
    (*(v64 + 16))(v62, &v1[v34], v61);
    v38 = &v1[*(*v1 + 104)];
    v39 = *v38;
    v40 = v38[1];
    v41 = WiFiInterface.macAddress.getter();
    v72 = v7;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v43 = v63;
    v44 = v40;
    v21 = v37;
    v45 = v74;
    (*(AssociatedConformanceWitness + 16))(4, v39, v44, v41 & 0xFFFFFFFFFFFFLL, v36, AssociatedConformanceWitness);
    v47 = v65;
    v46 = v66;
    v48 = v71;
    if (v45)
    {
      (*(v35 + 8))(v21, v36);
    }

    else
    {
      v74 = 0;
      type metadata accessor for WiFiInterface();
      (*(v35 + 8))(v21, v36);
      (*(v35 + 56))(v43, 0, 1, v36);
      (*(v48 + 16))(v47, &v1[*(*v1 + 112)], v46);
      v50 = v68;
      (*(v69 + 16))(v68, &v1[v60], v70);
      v21 = WiFiInterface.__allocating_init(driver:components:logger:)(v43, v47, v50);
      v51 = *&v1[v59];
      *&v1[v59] = v21;

      if (v21)
      {
        sub_100417BE8();
        v52 = (*(*v21 + 416))(v73);
        type metadata accessor for WiFiInterface.NeighborDiscoveryTable();
        WiFiInterface.NeighborDiscoveryTable.clearAllPeerPresence()();
        if (v53)
        {
          v52(v73, 1);
        }

        else
        {
          v52(v73, 0);
          if (sub_100019F94())
          {
            v58 = 1;
          }

          else
          {
            v58 = _stringCompareWithSmolCheck(_:_:expecting:)();
          }

          (*(*v21 + 216))(v58 & 1);
        }
      }

      else
      {
        v54 = Logger.logObject.getter();
        v55 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v54, v55))
        {
          v56 = swift_slowAlloc();
          *v56 = 0;
          _os_log_impl(&_mh_execute_header, v54, v55, "Failed to create NAN companion low latency interface", v56, 2u);
        }

        sub_10000B02C();
        swift_allocError();
        *v57 = xmmword_10047CE50;
        *(v57 + 16) = 1;
        swift_willThrow();
      }
    }
  }

  return v21;
}

BOOL sub_100410360(uint64_t a1)
{
  v3 = *(*(sub_10005DC58(&qword_100597420, &qword_1004B16B8) - 8) + 64);
  __chkstk_darwin();
  v5 = &v16 - v4;
  v6 = *(*v1 + 464);
  swift_beginAccess();
  v7 = *(v1 + v6);
  if (*(v7 + 16) && (v8 = sub_100041DE8(a1 & 0xFFFFFFFFFFFFLL), (v9 & 1) != 0))
  {
    v10 = v8;
    v11 = *(v7 + 56);
    v12 = type metadata accessor for NANPeer(0);
    v13 = *(v12 - 8);
    sub_1000238F0(v11 + *(v13 + 72) * v10, v5, type metadata accessor for NANPeer);
    (*(v13 + 56))(v5, 0, 1, v12);
  }

  else
  {
    v12 = type metadata accessor for NANPeer(0);
    (*(*(v12 - 8) + 56))(v5, 1, 1, v12);
  }

  swift_endAccess();
  type metadata accessor for NANPeer(0);
  v14 = (*(*(v12 - 8) + 48))(v5, 1, v12) != 1;
  sub_100016290(v5, &qword_100597420, &qword_1004B16B8);
  return v14;
}

uint64_t sub_100410568()
{
  v1 = v0;
  v2 = *v0;
  v3 = *(*(sub_10005DC58(&unk_100595C50, &unk_1004AFD20) - 8) + 64);
  __chkstk_darwin();
  v27 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v29 = &v26 - v5;
  __chkstk_darwin();
  v7 = &v26 - v6;
  v26 = v2[20];
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "pairing: Rotating NIK", v10, 2u);
  }

  v28 = *(*v1 + 112);
  v11 = v2[54];
  v12 = *(v2[55] + 8);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v14 = *(AssociatedConformanceWitness + 128);
  v15 = swift_checkMetadataState();
  v14(v15, AssociatedConformanceWitness);
  LongTermPairingKeyStore.removeIdentityKey()();

  v16 = type metadata accessor for NANIdentityKey(0);
  v17 = *(v16 - 8);
  (*(v17 + 56))(v7, 1, 1, v16);
  v14(v15, AssociatedConformanceWitness);
  v18 = v29;
  v19 = v30;
  LongTermPairingKeyStore.findIdentityKey()();
  sub_100016290(v7, &unk_100595C50, &unk_1004AFD20);

  if (!v19)
  {
    sub_10001CEA8(v18, v7, &unk_100595C50, &unk_1004AFD20);
    v21 = v27;
    sub_100012400(v7, v27, &unk_100595C50, &unk_1004AFD20);
    v22 = (*(v17 + 48))(v21, 1, v16);
    sub_100016290(v21, &unk_100595C50, &unk_1004AFD20);
    if (v22 == 1)
    {
      sub_10041DCEC();
    }

    else
    {
      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&_mh_execute_header, v23, v24, "pairing: NIK: Could not uninstall existing NIK!", v25, 2u);
      }
    }

    return sub_100016290(v7, &unk_100595C50, &unk_1004AFD20);
  }

  return result;
}

uint64_t sub_100410970(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(v5 + 48);
  v12 = *(v5 + 52);
  swift_allocObject();
  return sub_100411B08(a1, a2, a3, a4, a5);
}

uint64_t sub_1004109E4(uint64_t a1)
{
  v2 = (type metadata accessor for NANPeer(0) - 8);
  v3 = *(*v2 + 64);
  __chkstk_darwin();
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(*(sub_10005DC58(&qword_1005954D0, &unk_1004AF470) - 8) + 64);
  __chkstk_darwin();
  v8 = &v12 - v7;
  sub_10040CD68(a1 & 0xFFFFFFFFFFFFLL, v5);
  sub_100012400(&v5[v2[10]], v8, &qword_1005954D0, &unk_1004AF470);
  sub_100023A78(v5, type metadata accessor for NANPeer);
  BeaconInformation = type metadata accessor for NANPeer.LastBeaconInformation(0);
  if ((*(*(BeaconInformation - 8) + 48))(v8, 1, BeaconInformation) == 1)
  {
    sub_100016290(v8, &qword_1005954D0, &unk_1004AF470);
    return 0;
  }

  else
  {
    v10 = *(v8 + 1);
    sub_100023A78(v8, type metadata accessor for NANPeer.LastBeaconInformation);
  }

  return v10;
}

unint64_t sub_100410B90()
{
  v1 = v0 + *(*v0 + 592);
  swift_beginAccess();
  v2 = sub_10005DC58(&unk_10059B160, &qword_1004B3050);
  return *(v1 + *(v2 + 40)) | (*(v1 + *(v2 + 40) + 2) << 16);
}

uint64_t sub_100410C08()
{
  v1 = *v0;
  v2 = *v0;
  v3 = type metadata accessor for DispatchTimeInterval();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v7 = (&v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v9 = (&v25 - v8);
  __chkstk_darwin();
  v11 = (&v25 - v10);
  v12 = *(v1 + 464);
  swift_beginAccess();
  v13 = *(*v0 + 448);
  if (*(*(v0 + v12) + 16))
  {
    v14 = *(v0 + v13);
    if (!v14)
    {
      v25 = v2;
      *v11 = 5;
      v15 = enum case for DispatchTimeInterval.seconds(_:);
      v16 = *(v4 + 104);
      v27 = 0;
      v16(v11, enum case for DispatchTimeInterval.seconds(_:), v3);
      v26 = *OS_dispatch_queue.nan.unsafeMutableAddressor();
      *v9 = 5;
      v16(v9, v15, v3);
      v17 = swift_allocObject();
      swift_weakInit();
      v18 = swift_allocObject();
      v19 = v25;
      v18[2] = *(v25 + 432);
      v18[3] = *(v19 + 440);
      v18[4] = v17;
      *v7 = 100;
      v16(v7, enum case for DispatchTimeInterval.milliseconds(_:), v3);
      v20 = type metadata accessor for P2PTimer();
      v21 = *(v20 + 48);
      v22 = *(v20 + 52);
      swift_allocObject();
      v14 = P2PTimer.init(deadlineAfter:on:repeating:leeway:_:)(v11, v26, v9, v7, sub_100422E5C, v18);
      v23 = *(v0 + v13);
    }

    *(v0 + v13) = v14;
  }

  else
  {
    *(v0 + v13) = 0;
  }
}

uint64_t sub_100410EDC()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100410F34();
  }

  return result;
}

uint64_t sub_100410F34()
{
  v1 = *v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v6 = (&v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = OS_dispatch_queue.nan.unsafeMutableAddressor();
  v8 = *v7;
  *v6 = *v7;
  (*(v3 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v2);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  result = (*(v3 + 8))(v6, v2);
  if (v8)
  {
    v11 = *(*v0 + 464);
    swift_beginAccess();
    v12 = *(v0 + v11);
    __chkstk_darwin();
    *(&v18 - 2) = v0;
    *(&v18 - 1) = v1;

    v13 = sub_10042256C(sub_100422E68, (&v18 - 4), v12, sub_100422880, sub_100422880);

    sub_1004111A0(v13);
    v14 = *(*v0 + 456);
    swift_beginAccess();
    v15 = *(v0 + v14);

    v16 = sub_10042256C(sub_100422E88, v0, v15, sub_1004226FC, sub_1004226FC);

    v17 = *(v0 + v14);
    *(v0 + v14) = v16;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1004111A0(uint64_t a1)
{
  v3 = *(*v1 + 464);
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;

  return sub_100410C08(v5);
}

uint64_t sub_100411208@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 584);
  swift_beginAccess();
  return sub_100012400(v1 + v3, a1, &qword_10059A650, &qword_1004B3850);
}

uint64_t sub_10041127C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 592);
  swift_beginAccess();
  return sub_100012400(v1 + v3, a1, &unk_10059B160, &qword_1004B3050);
}

uint64_t sub_1004112F0(uint64_t a1)
{
  v3 = *(*v1 + 592);
  swift_beginAccess();
  sub_100016290(v1 + v3, &unk_10059B160, &qword_1004B3050);
  sub_10001CEA8(a1, v1 + v3, &unk_10059B160, &qword_1004B3050);
  return swift_endAccess();
}

uint64_t sub_10041138C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 608);
  swift_beginAccess();
  return sub_100012400(v1 + v3, a1, &unk_10059A670, &qword_1004B3870);
}

uint64_t sub_100411400@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 632);
  swift_beginAccess();
  return sub_100012400(v1 + v3, a1, &qword_10059A6A0, &qword_1004B0738);
}

uint64_t sub_100411474(uint64_t a1, uint64_t a2)
{
  v6[0] = a1;
  v6[1] = a2;
  v3 = *(*v2 + 640);
  swift_beginAccess();
  v4 = sub_10005DC58(&qword_10059A680, &qword_1004B3878);
  MutableDriverProperty.wrappedValue.setter(v6, v4);
  return swift_endAccess();
}

uint64_t sub_1004114F0(uint64_t a1)
{
  v5 = a1;
  v2 = *(*v1 + 664);
  swift_beginAccess();
  v3 = sub_10005DC58(&qword_100597358, &qword_1004B1650);
  MutableDriverProperty.wrappedValue.setter(&v5, v3);
  return swift_endAccess();
}

void *sub_1004119A4()
{
  v1 = v0;
  v2 = *v0;
  v3 = *(*(sub_10005DC58(&unk_10059A6B0, &unk_1004B4D80) - 8) + 64);
  __chkstk_darwin();
  v5 = &v14 - v4;
  v6 = v2[91];
  if (*(v1 + v6))
  {
    v7 = *(v1 + v6);
  }

  else
  {
    v8 = v2[54];
    v9 = *(v2[55] + 8);
    type metadata accessor for LocaleManager();
    v10 = *(v1 + v2[100]);
    swift_unownedRetainStrong();
    sub_1003EB9D8(v5);

    v11 = *OS_dispatch_queue.nan.unsafeMutableAddressor();
    v7 = sub_10042880C(v1, v5, v11);

    v12 = *(v1 + v6);
    *(v1 + v6) = v7;
  }

  return v7;
}

uint64_t sub_100411B08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v437 = a5;
  v427 = a4;
  v440 = a3;
  v438 = a2;
  v445 = a1;
  v7 = *v5;
  v456 = v7;
  v8 = *(*(type metadata accessor for SymmetricKeySize() - 8) + 64);
  __chkstk_darwin();
  v408 = &v402 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*(sub_10005DC58(&unk_10059A690, &unk_1004884D0) - 8) + 64);
  __chkstk_darwin();
  v409 = &v402 - v11;
  v447 = *(v7 + 55);
  v12 = *(v447 + 8);
  v13 = *(v7 + 54);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v413 = type metadata accessor for Preferences();
  v412 = *(v413 - 8);
  v14 = *(v412 + 64);
  __chkstk_darwin();
  v411 = &v402 - v15;
  v436 = swift_checkMetadataState();
  v435 = *(v436 - 8);
  v16 = *(v435 + 64);
  __chkstk_darwin();
  v426 = &v402 - v17;
  v18 = *(*(sub_10005DC58(&qword_10059A658, &qword_1004B3858) - 8) + 64);
  __chkstk_darwin();
  v425 = (&v402 - v19);
  v20 = *(*(sub_10005DC58(&qword_100597358, &qword_1004B1650) - 8) + 64);
  __chkstk_darwin();
  v443 = (&v402 - v21);
  v22 = *(*(sub_10005DC58(&unk_10059A3D0, &qword_1004B0730) - 8) + 64);
  __chkstk_darwin();
  v429 = &v402 - v23;
  v24 = *(*(sub_10005DC58(&qword_10059A680, &qword_1004B3878) - 8) + 64);
  __chkstk_darwin();
  v428 = (&v402 - v25);
  v26 = *(*(sub_10005DC58(&qword_10059A660, &qword_1004B3860) - 8) + 64);
  __chkstk_darwin();
  v423 = &v402 - v27;
  v28 = *(*(sub_10005DC58(&qword_10059A668, &qword_1004B3868) - 8) + 64);
  __chkstk_darwin();
  v422 = (&v402 - v29);
  v30 = *(*(sub_10005DC58(&qword_10059A6A0, &qword_1004B0738) - 8) + 64);
  __chkstk_darwin();
  v421 = (&v402 - v31);
  v32 = *(*(sub_10005DC58(&unk_10059A670, &qword_1004B3870) - 8) + 64);
  __chkstk_darwin();
  v420 = (&v402 - v33);
  v34 = *(*(sub_10005DC58(&qword_10059A6A8, &qword_1004B3888) - 8) + 64);
  __chkstk_darwin();
  v419 = (&v402 - v35);
  v36 = *(*(sub_10005DC58(&unk_10059B160, &qword_1004B3050) - 8) + 64);
  __chkstk_darwin();
  v418 = (&v402 - v37);
  v410 = sub_10005DC58(&qword_10059A650, &qword_1004B3850);
  v38 = *(*(v410 - 8) + 64);
  __chkstk_darwin();
  v417 = (&v402 - v39);
  v453 = type metadata accessor for Logger();
  v434 = *(v453 - 8);
  v40 = *(v434 + 64);
  __chkstk_darwin();
  v416 = &v402 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v448 = &v402 - v42;
  v415 = v43;
  __chkstk_darwin();
  v455 = &v402 - v44;
  v430 = v12;
  v452 = v13;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v46 = type metadata accessor for Optional();
  v444 = *(v46 - 8);
  v47 = *(v444 + 64);
  __chkstk_darwin();
  v424 = &v402 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v50 = &v402 - v49;
  v51 = *(AssociatedTypeWitness - 8);
  v52 = *(v51 + 64);
  __chkstk_darwin();
  v414 = &v402 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v441 = (&v402 - v54);
  v442 = v55;
  __chkstk_darwin();
  v451 = &v402 - v56;
  *&v6[*(v7 + 56)] = 0;
  *&v6[*(*v6 + 456)] = &_swiftEmptyDictionarySingleton;
  *&v6[*(*v6 + 464)] = &_swiftEmptyDictionarySingleton;
  *&v6[*(*v6 + 472)] = 0;
  *&v6[*(*v6 + 480)] = 0;
  v57 = &v6[*(*v6 + 488)];
  *(v57 + 2) = 0;
  *v57 = 0;
  v57[6] = 1;
  *&v6[*(*v6 + 496)] = 0;
  v58 = *(*v6 + 504);
  *&v6[v58] = [objc_allocWithZone(WRM_UCMInterface) init];
  *&v6[*(*v6 + 512)] = 0;
  *&v6[*(*v6 + 520)] = 0;
  *&v6[*(*v6 + 552)] = 0;
  *&v6[*(*v6 + 560)] = 0;
  v59 = *(*v6 + 568);
  v60 = type metadata accessor for DispatchTime();
  v449 = *(v60 - 8);
  v61 = *(v449 + 56);
  v61(&v6[v59], 1, 1, v60);
  v62 = &v6[*(*v6 + 576)];
  v450 = v60;
  v61(v62, 1, 1, v60);
  v63 = AssociatedTypeWitness;
  v64 = v46;
  v65 = v51;
  v66 = v444;
  v6[*(*v6 + 696)] = 5;
  v67 = &v6[*(*v6 + 704)];
  *v67 = 0;
  v67[8] = 1;
  *&v6[*(*v6 + 712)] = 0;
  *&v6[*(*v6 + 720)] = 0;
  *&v6[*(*v6 + 728)] = 0;
  v68 = *(*v6 + 736);
  v69 = NANDriverCapabilities.defaultCapabilities.unsafeMutableAddressor();
  sub_1000238F0(v69, &v6[v68], type metadata accessor for NANDriverCapabilities);
  v6[*(*v6 + 744)] = 0;
  v70 = *(*v6 + 752);
  type metadata accessor for P2PTimer();
  variable initialization expression of AWDLPeer.lastUpdated();
  v71 = &v6[*(*v6 + 760)];
  *v71 = 0;
  *(v71 + 1) = 0;
  v71[16] = 0;
  v72 = *(*v6 + 768);
  v73 = type metadata accessor for NANIdentityKey(0);
  (*(*(v73 - 8) + 56))(&v6[v72], 1, 1, v73);
  v74 = *(*v6 + 776);
  v75 = type metadata accessor for SymmetricKey();
  v76 = *(v75 - 8);
  v77 = *(v76 + 56);
  v78 = v76 + 56;
  v77(&v6[v74], 1, 1, v75);
  v77(&v6[*(*v6 + 784)], 1, 1, v75);
  v79 = &v6[*(*v6 + 792)];
  v407 = v78;
  v77(v79, 1, 1, v75);
  v80 = v445;
  *&v6[*(*v6 + 808)] = 0;
  *&v6[*(*v6 + 816)] = 0;
  (*(v66 + 16))(v50, v80, v64);
  if ((*(v65 + 48))(v50, 1, v63) == 1)
  {

    (*(v435 + 8))(v438, v436);
    v81 = *(v66 + 8);
    v81(v80, v64);
    v81(v50, v64);

    v82 = *&v6[*(*v6 + 448)];

    v83 = *&v6[*(*v6 + 456)];

    v84 = *&v6[*(*v6 + 464)];

    v85 = *&v6[*(*v6 + 472)];

    v86 = *&v6[*(*v6 + 480)];

    v87 = *&v6[*(*v6 + 496)];
    swift_unknownObjectRelease();

    v88 = *&v6[*(*v6 + 512)];

    v89 = *&v6[*(*v6 + 520)];

    v90 = *&v6[*(*v6 + 552)];

    v91 = *&v6[*(*v6 + 560)];

    sub_100016290(&v6[*(*v6 + 568)], &unk_100597330, &unk_100481FA0);
    sub_100016290(&v6[*(*v6 + 576)], &unk_100597330, &unk_100481FA0);
    v92 = *&v6[*(*v6 + 712)];

    v93 = *&v6[*(*v6 + 720)];

    v94 = *&v6[*(*v6 + 728)];

    sub_100023A78(&v6[*(*v6 + 736)], type metadata accessor for NANDriverCapabilities);
    (*(v449 + 8))(&v6[*(*v6 + 752)], v450);
    v95 = *&v6[*(*v6 + 760) + 8];

    sub_100016290(&v6[*(*v6 + 768)], &unk_100595C50, &unk_1004AFD20);
    sub_100016290(&v6[*(*v6 + 776)], &unk_10059A690, &unk_1004884D0);
    sub_100016290(&v6[*(*v6 + 784)], &unk_10059A690, &unk_1004884D0);
    sub_100016290(&v6[*(*v6 + 792)], &unk_10059A690, &unk_1004884D0);
    v96 = *&v6[*(*v6 + 808)];

    v97 = *&v6[*(*v6 + 816)];

    v98 = *(*v6 + 48);
    v99 = *(*v6 + 52);
    swift_deallocPartialClassInstance();
    return 0;
  }

  v404 = v77;
  v403 = v75;
  v100 = *(v65 + 32);
  v101 = v451;
  v432 = v65 + 32;
  v431 = v100;
  v100(v451, v50, v63);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v449 = (*(AssociatedConformanceWitness + 40))(v63, AssociatedConformanceWitness);
  v456 = v103;
  (*(AssociatedConformanceWitness + 32))(v63, AssociatedConformanceWitness);
  v439 = v65;
  v104 = v101;
  v405 = v64;
  v105 = v434;
  Logger.init(subsystem:category:)();
  v106 = v456;
  *&v459 = v449;
  *(&v459 + 1) = v456;

  v107._countAndFlagsBits = 0x657461747320;
  v107._object = 0xE600000000000000;
  String.append(_:)(v107);
  v406 = *(&v459 + 1);
  v108 = v459;
  v446 = *(v105 + 16);
  v450 = v105 + 16;
  v109 = v448;
  v446();
  v110 = v447;
  v111 = v452;
  v112 = swift_getAssociatedConformanceWitness();
  LOBYTE(v459) = (*(v112 + 56))(v63, v112);
  LOBYTE(v458) = 0;
  v113 = sub_10041566C(v101, v111, v110);
  v115 = v114;
  v116 = swift_allocObject();
  v454 = v63;
  v117 = v104;
  v118 = v116;
  *(v116 + 16) = v113;
  *(v116 + 24) = v115;
  sub_1002BC574();
  v119 = v417;
  MutableDriverProperty.init(name:logger:initialValue:defaultValue:updater:valueDescriber:)(v108, v406, v109, &v459, &v458, sub_10001BE48, v118, sub_100422CC4, v417, 0, &type metadata for NANState);
  sub_10001CEA8(v119, &v6[*(*v6 + 584)], &qword_10059A650, &qword_1004B3850);
  v120 = v449;
  *&v459 = v449;
  *(&v459 + 1) = v106;

  v121._countAndFlagsBits = 0x72657473756C6320;
  v121._object = 0xEB00000000444920;
  String.append(_:)(v121);
  v406 = *(&v459 + 1);
  v417 = v459;
  v122 = v455;
  v123 = v453;
  v124 = v446;
  (v446)(v109, v455, v453);
  v433 = v112;
  v125 = (*(v112 + 72))(v454, v112);
  LODWORD(v459) = v125;
  WORD2(v459) = WORD2(v125);
  BYTE6(v459) = BYTE6(v125) & 1;
  v126 = WiFiAddress.defaultClusterID.unsafeMutableAddressor();
  v127 = v126[2];
  LODWORD(v458) = *v126;
  WORD2(v458) = v127;
  v128 = v117;
  v129 = v447;
  v130 = sub_10041587C(v128, v452, v447);
  v132 = v131;
  v133 = swift_allocObject();
  *(v133 + 16) = v130;
  *(v133 + 24) = v132;
  sub_1002AB120();
  v134 = v418;
  v135 = v448;
  MutableDriverProperty.init(name:logger:initialValue:defaultValue:updater:valueDescriber:)(v417, v406, v448, &v459, &v458, sub_1002B7744, v133, sub_1002B749C, v418, 0, &type metadata for WiFiAddress);
  sub_10001CEA8(v134, &v6[*(*v6 + 592)], &unk_10059B160, &qword_1004B3050);
  *&v459 = 0;
  *(&v459 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(18);
  v136 = v456;

  *&v459 = v120;
  *(&v459 + 1) = v136;
  v137._object = 0x80000001004C2180;
  v137._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v137);
  v417 = *(&v459 + 1);
  v418 = v459;
  v138 = v135;
  (v124)(v135, v122, v123);
  v139 = v451;
  v140 = (*(v433 + 88))(v454);
  LOWORD(v459) = v140;
  BYTE2(v459) = BYTE2(v140) & 1;
  LOWORD(v458) = 10;
  v141 = v452;
  v142 = sub_100415A8C(v139, v452, v129);
  v144 = v143;
  v145 = swift_allocObject();
  *(v145 + 16) = v142;
  *(v145 + 24) = v144;
  sub_10027A2D4();
  v146 = v419;
  v147 = v138;
  MutableDriverProperty.init(name:logger:initialValue:defaultValue:updater:valueDescriber:)(v418, v417, v138, &v459, &v458, sub_100422FEC, v145, sub_100422C68, v419, 0, &type metadata for NANAttribute.MasterIndication);
  sub_10001CEA8(v146, &v6[*(*v6 + 600)], &qword_10059A6A8, &qword_1004B3888);
  *&v459 = 0;
  *(&v459 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(18);
  v148 = v456;

  v149 = v449;
  *&v459 = v449;
  *(&v459 + 1) = v148;
  v150._object = 0x80000001004C21A0;
  v150._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v150);
  v152 = *(&v459 + 1);
  v151 = v459;
  v153 = sub_100415C9C(v139, v141, v129);
  v155 = v154;
  v156 = swift_allocObject();
  *(v156 + 16) = v153;
  *(v156 + 24) = v155;
  v459 = 0uLL;
  v157 = v455;
  v158 = v453;
  v159 = v446;
  (v446)(v147, v455, v453);
  v458 = 0uLL;
  v160 = sub_10005DC58(&qword_10059A580, &qword_1004B37A8);
  sub_10041D824();
  v399 = v160;
  v161 = v420;
  MutableDriverProperty.init(name:logger:initialValue:defaultValue:updater:valueDescriber:)(v151, v152, v147, &v458, &v459, sub_100423008, v156, sub_100415EC0, v420, 0, v399);
  sub_10001CEA8(v161, &v6[*(*v6 + 608)], &unk_10059A670, &qword_1004B3870);
  *&v459 = 0;
  *(&v459 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(19);
  v162 = v456;

  *&v459 = v149;
  *(&v459 + 1) = v162;
  v163._countAndFlagsBits = 0xD000000000000011;
  v163._object = 0x80000001004C21C0;
  String.append(_:)(v163);
  v165 = *(&v459 + 1);
  v164 = v459;
  v166 = v158;
  (v159)(v147, v157, v158);
  LOWORD(v459) = 5;
  LOWORD(v458) = 1;
  v167 = sub_100415F30(v451, v452, v447);
  v169 = v168;
  v170 = swift_allocObject();
  *(v170 + 16) = v167;
  *(v170 + 24) = v169;
  sub_1001672DC();
  v171 = v421;
  v172 = v147;
  MutableDriverProperty.init(name:logger:initialValue:defaultValue:updater:valueDescriber:)(v164, v165, v147, &v459, &v458, sub_100423038, v170, sub_100422C5C, v421, 0, &type metadata for NANAwakeDWPeriods);
  sub_10001CEA8(v171, &v6[*(*v6 + 632)], &qword_10059A6A0, &qword_1004B0738);
  *&v459 = 0;
  *(&v459 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(18);
  v173 = v456;

  v174 = v449;
  *&v459 = v449;
  *(&v459 + 1) = v173;
  v175._object = 0x80000001004C21E0;
  v175._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v175);
  v176 = v459;
  v177 = v172;
  (v159)(v172, v455, v166);
  v178 = v451;
  v179 = (*(v433 + 120))(v454);
  LODWORD(v459) = v179;
  WORD2(v459) = WORD2(v179);
  v180 = Channel.nanPrimary.unsafeMutableAddressor();
  v181 = *(v180 + 2);
  LODWORD(v458) = *v180;
  WORD2(v458) = v181;
  v182 = v452;
  v183 = v447;
  v184 = sub_100416140(v178, v452, v447);
  v186 = v185;
  v187 = swift_allocObject();
  *(v187 + 16) = v184;
  *(v187 + 24) = v186;
  v188 = swift_allocObject();
  *(v188 + 16) = sub_10042307C;
  *(v188 + 24) = v187;
  sub_100218C7C();
  v189 = v422;
  MutableDriverProperty.init(name:logger:initialValue:defaultValue:updater:valueDescriber:)(v176, *(&v176 + 1), v177, &v459, &v458, sub_1004230A8, v188, sub_100422C00, v422, 0, &type metadata for Channel);
  sub_10001CEA8(v189, &v6[*(*v6 + 616)], &qword_10059A668, &qword_1004B3868);
  *&v459 = 0;
  *(&v459 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(20);
  v190 = v456;

  *&v459 = v174;
  *(&v459 + 1) = v190;
  v191._countAndFlagsBits = 0xD000000000000012;
  v191._object = 0x80000001004C2200;
  String.append(_:)(v191);
  v421 = *(&v459 + 1);
  v422 = v459;
  v192 = v451;
  v193 = (*(v433 + 136))(v454);
  v194 = v182;
  v195 = v182;
  v196 = v183;
  v197 = sub_100416350(v192, v195, v183);
  v199 = v198;
  v200 = swift_allocObject();
  *(v200 + 16) = v197;
  *(v200 + 24) = v199;
  WORD2(v459) = WORD2(v193);
  LODWORD(v459) = v193;
  v201 = v448;
  (v446)(v448, v455, v453);
  WORD2(v458) = WORD2(v193);
  LODWORD(v458) = v193;
  v202 = sub_10005DC58(&unk_10059A5B0, &unk_1004B2F30);
  sub_10041D918();
  v400 = v202;
  v203 = v423;
  v204 = v201;
  MutableDriverProperty.init(name:logger:initialValue:defaultValue:updater:valueDescriber:)(v422, v421, v201, &v458, &v459, sub_1004230E4, v200, sub_100416560, v423, 0, v400);
  sub_10001CEA8(v203, &v6[*(*v6 + 624)], &qword_10059A660, &qword_1004B3860);
  *&v459 = v449;
  *(&v459 + 1) = v456;

  v205._countAndFlagsBits = 0x6C63206174616420;
  v205._object = 0xED00007265747375;
  String.append(_:)(v205);
  v206 = *(&v459 + 1);
  v423 = v459;
  v460 = *NANAttribute.DataCluster.empty.unsafeMutableAddressor();
  v207 = sub_1004165A4(v192, v194, v196);
  v209 = v208;
  v210 = swift_allocObject();
  *(v210 + 16) = v207;
  *(v210 + 24) = v209;
  v459 = v460;
  v211 = v204;
  v212 = v455;
  v213 = v453;
  v214 = v446;
  (v446)(v204, v455, v453);
  v461 = v459;
  v458 = v459;
  sub_1002785A4(&v460, &v457);
  sub_1002785A4(&v461, &v457);
  sub_10027BE44();
  v215 = v428;
  v216 = v211;
  MutableDriverProperty.init(name:logger:initialValue:defaultValue:updater:valueDescriber:)(v423, v206, v211, &v458, &v459, sub_100423118, v210, sub_100422BAC, v428, 0, &type metadata for NANAttribute.DataCluster);
  sub_10001CEA8(v215, &v6[*(*v6 + 640)], &qword_10059A680, &qword_1004B3878);
  type metadata accessor for Lock();
  swift_allocObject();
  v428 = Lock.init()();
  *&v458 = sub_1002DE8CC(_swiftEmptyArrayStorage);
  *&v459 = 0;
  *(&v459 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(21);
  v217 = v456;

  v218 = v449;
  *&v459 = v449;
  *(&v459 + 1) = v217;
  v219._countAndFlagsBits = 0xD000000000000013;
  v219._object = 0x80000001004C2220;
  String.append(_:)(v219);
  v220 = v459;
  (v214)(v216, v212, v213);
  v221 = sub_10005DC58(&qword_10059A5E8, &qword_1004B37B0);
  sub_10041DA6C();
  v222 = v429;
  ObservableWiFiProperty.init(lock:defaultValue:name:logger:valueDescriber:)(v428, &v458, v220, *(&v220 + 1), v216, sub_1004167C8, 0, v221, v429);
  sub_10001CEA8(v222, &v6[*(*v6 + 648)], &unk_10059A3D0, &qword_1004B0730);
  *&v459 = 0;
  *(&v459 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(20);
  v223 = v456;

  *&v459 = v218;
  *(&v459 + 1) = v223;
  v224._countAndFlagsBits = 0xD000000000000012;
  v224._object = 0x80000001004C2240;
  String.append(_:)(v224);
  v418 = *(&v459 + 1);
  v419 = v459;
  v225 = sub_1002DE9CC(_swiftEmptyArrayStorage);
  v226 = v439;
  v227 = *(v439 + 16);
  v429 = (v439 + 16);
  v428 = v227;
  v228 = v441;
  v229 = v451;
  (v227)(v441, v451, v454);
  v423 = *(v226 + 80);
  v230 = ((v423 + 32) & ~v423);
  v231 = swift_allocObject();
  v232 = v452;
  v233 = v447;
  *(v231 + 16) = v452;
  *(v231 + 24) = v233;
  v431(v230 + v231, v228, v454);
  *&v459 = v225;
  v234 = v448;
  (v446)(v448, v455, v453);
  *&v458 = v225;

  v235 = sub_10005DC58(&qword_10059A608, &qword_1004B37B8);
  v422 = v235;
  v421 = sub_10041DB60();
  v401 = v235;
  v236 = v443;
  MutableDriverProperty.init(name:logger:initialValue:defaultValue:updater:valueDescriber:)(v419, v418, v234, &v458, &v459, sub_100423160, v231, sub_100423CD4, v443, 0, v401);
  sub_10001CEA8(v236, &v6[*(*v6 + 656)], &qword_100597358, &qword_1004B1650);
  *&v459 = 0;
  *(&v459 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(28);
  v237 = v456;

  *&v459 = v449;
  *(&v459 + 1) = v237;
  v238._countAndFlagsBits = 0xD00000000000001ALL;
  v238._object = 0x80000001004C2260;
  String.append(_:)(v238);
  v419 = *(&v459 + 1);
  v239 = v459;
  v240 = sub_1002DE9CC(_swiftEmptyArrayStorage);
  v241 = v441;
  v242 = v229;
  v243 = v428;
  (v428)(v441, v242, v454);
  v244 = v230;
  v420 = v230;
  v245 = swift_allocObject();
  *(v245 + 16) = v232;
  *(v245 + 24) = v233;
  v431(v244 + v245, v241, v454);
  *&v459 = v240;
  v246 = v448;
  v247 = v453;
  v248 = v446;
  (v446)(v448, v455, v453);
  *&v458 = v240;

  v249 = v443;
  MutableDriverProperty.init(name:logger:initialValue:defaultValue:updater:valueDescriber:)(v239, v419, v246, &v458, &v459, sub_10042318C, v245, sub_100423CD4, v443, 0, v422);
  sub_10001CEA8(v249, &v6[*(*v6 + 664)], &qword_100597358, &qword_1004B1650);
  *&v459 = 0;
  *(&v459 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(28);
  v250 = v456;

  *&v459 = v449;
  *(&v459 + 1) = v250;
  v251._countAndFlagsBits = 0xD00000000000001ALL;
  v251._object = 0x80000001004C2280;
  String.append(_:)(v251);
  v418 = *(&v459 + 1);
  v419 = v459;
  v252 = sub_1002DE9CC(_swiftEmptyArrayStorage);
  v253 = v441;
  (v243)(v441, v451, v454);
  v254 = v420;
  v255 = swift_allocObject();
  v256 = v452;
  v257 = v447;
  *(v255 + 16) = v452;
  *(v255 + 24) = v257;
  v431(v254 + v255, v253, v454);
  *&v459 = v252;
  v258 = v448;
  v259 = v455;
  (v248)(v448, v455, v247);
  *&v458 = v252;

  v260 = v443;
  MutableDriverProperty.init(name:logger:initialValue:defaultValue:updater:valueDescriber:)(v419, v418, v258, &v458, &v459, sub_1004231B8, v255, sub_100423CD4, v443, 0, v422);
  sub_10001CEA8(v260, &v6[*(*v6 + 672)], &qword_100597358, &qword_1004B1650);
  *&v459 = 0;
  *(&v459 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(25);
  v261 = v456;

  *&v459 = v449;
  *(&v459 + 1) = v261;
  v262._countAndFlagsBits = 0xD000000000000017;
  v262._object = 0x80000001004C22A0;
  String.append(_:)(v262);
  v432 = *(&v459 + 1);
  v263 = v459;
  v264 = v451;
  v265 = sub_100417334(v451, v256, v257);
  v267 = v266;
  v268 = swift_allocObject();
  *(v268 + 16) = v265;
  *(v268 + 24) = v267;
  *&v459 = _swiftEmptyArrayStorage;
  v269 = v448;
  v270 = v259;
  v271 = v453;
  v272 = v248;
  (v248)(v448, v270, v453);
  *&v458 = _swiftEmptyArrayStorage;
  v273 = sub_10005DC58(&qword_10059A628, &qword_1004B37C0);
  v443 = v273;
  v442 = sub_10041DC14();
  v441 = sub_100422B48;
  v274 = v425;
  MutableDriverProperty.init(name:logger:initialValue:defaultValue:updater:valueDescriber:)(v263, v432, v269, &v458, &v459, sub_1002B77B4, v268, sub_100422B48, v425, 0, v273);
  sub_10001CEA8(v274, &v6[*(*v6 + 680)], &qword_10059A658, &qword_1004B3858);
  *&v459 = 0;
  *(&v459 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(25);
  v275 = v456;

  *&v459 = v449;
  *(&v459 + 1) = v275;
  v276._countAndFlagsBits = 0xD000000000000017;
  v276._object = 0x80000001004C22C0;
  String.append(_:)(v276);
  v277 = v459;
  v278 = sub_100417544(v264, v452, v447);
  v280 = v279;
  v281 = swift_allocObject();
  *(v281 + 16) = v278;
  *(v281 + 24) = v280;
  *&v459 = _swiftEmptyArrayStorage;
  v282 = v448;
  v283 = v455;
  (v272)(v448, v455, v271);
  *&v458 = _swiftEmptyArrayStorage;
  v284 = v454;
  v285 = v283;
  MutableDriverProperty.init(name:logger:initialValue:defaultValue:updater:valueDescriber:)(v277, *(&v277 + 1), v282, &v458, &v459, sub_100423CD8, v281, v441, v274, 0, v443);
  sub_10001CEA8(v274, &v6[*(*v6 + 688)], &qword_10059A658, &qword_1004B3858);
  *&v6[*(*v6 + 800)] = v440;
  v6[*(*v6 + 528)] = 0;
  v6[*(*v6 + 544)] = 0;
  v6[*(*v6 + 536)] = 0;
  v286 = &v6[*(*v6 + 824)];
  v287 = v437;
  *v286 = v427;
  *(v286 + 1) = v287;
  v288 = v424;
  (v428)(v424, v451, v284);
  (*(v439 + 56))(v288, 0, 1, v284);
  v289 = v435;
  v290 = v426;
  v291 = v438;
  v292 = v436;
  (*(v435 + 16))(v426, v438, v436);
  (v446)(v282, v285, v453);
  swift_unownedRetain();

  v293 = WiFiInterface.init(driver:components:logger:)(v288, v290, v282);
  v294 = v293;
  if (!v293)
  {

    (*(v289 + 8))(v291, v292);
    (*(v444 + 8))(v445, v405);
    (*(v434 + 8))(v455, v453);
    (*(v439 + 8))(v451, v454);

    return v294;
  }

  v296 = v454;
  v295 = v455;
  v297 = *(*v293 + 152);
  swift_beginAccess();
  type metadata accessor for WiFiInterface.NeighborDiscoveryTable();
  swift_retain_n();
  WiFiInterface.NeighborDiscoveryTable.clearAllPeerPresence()();
  if (v298)
  {
    swift_endAccess();
    swift_errorRetain();
    v299 = Logger.logObject.getter();
    v300 = static os_log_type_t.error.getter();

    v301 = os_log_type_enabled(v299, v300);
    v302 = v446;
    if (v301)
    {
      v303 = swift_slowAlloc();
      v304 = swift_slowAlloc();
      *v303 = 138412290;
      swift_errorRetain();
      v305 = _swift_stdlib_bridgeErrorToNSError();
      *(v303 + 4) = v305;
      *v304 = v305;
      _os_log_impl(&_mh_execute_header, v299, v300, "Failed to initially clear the peer presence table because %@", v303, 0xCu);
      sub_100016290(v304, &qword_10058B780, &qword_100480AC0);
    }

    else
    {
    }

    v441 = 0;
    v306 = v414;
  }

  else
  {
    swift_endAccess();
    v306 = v414;
    v302 = v446;
    v441 = 0;
  }

  v307 = *(*v294 + 96);
  swift_beginAccess();
  (v428)(v306, v294 + v307, v296);

  v308 = swift_allocObject();
  swift_weakInit();

  v309 = v416;
  v310 = v453;
  (v302)(v416, v295, v453);
  v311 = v434;
  v312 = v296;
  v313 = (*(v434 + 80) + 40) & ~*(v434 + 80);
  v431 = *(v434 + 80);
  v429 = (v313 + v415);
  v314 = swift_allocObject();
  v315 = v447;
  *(v314 + 2) = v452;
  *(v314 + 3) = v315;
  *(v314 + 4) = v308;
  v316 = *(v311 + 32);
  v432 = v313;
  v430 = v316;
  v428 = (v311 + 32);
  v316(&v314[v313], v309, v310);
  v443 = v294;
  v317 = v433;
  v318 = *(v433 + 48);
  v442 = v308;

  v319 = v306;
  v320 = v441;
  v318(sub_10042328C, v314, v312, v317);
  if (v320)
  {
    v322 = v439 + 8;
    v321 = *(v439 + 8);
    v323 = v312;
    v321(v319, v312);

    v324 = v456;

    swift_errorRetain();
    v325 = Logger.logObject.getter();
    v326 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v325, v326))
    {
      v327 = swift_slowAlloc();
      v328 = swift_slowAlloc();
      v329 = swift_slowAlloc();
      v439 = v322;
      v330 = v329;
      *&v458 = v329;
      *v327 = 136315394;
      v331 = v321;
      v332 = sub_100002320(v449, v324, &v458);

      *(v327 + 4) = v332;
      *(v327 + 12) = 2112;
      swift_errorRetain();
      v333 = _swift_stdlib_bridgeErrorToNSError();
      *(v327 + 14) = v333;
      *v328 = v333;
      _os_log_impl(&_mh_execute_header, v325, v326, "Unable to create NANInterface for %s because initialization error: %@", v327, 0x16u);
      sub_100016290(v328, &qword_10058B780, &qword_100480AC0);

      sub_100002A00(v330);

      (*(v435 + 8))(v438, v436);
      (*(v444 + 8))(v445, v405);
      (*(v434 + 8))(v455, v453);
      v331(v451, v323);
    }

    else
    {

      (*(v435 + 8))(v438, v436);
      (*(v444 + 8))(v445, v405);
      (*(v434 + 8))(v455, v453);
      v321(v451, v312);
    }

    return 0;
  }

  v334 = *(v439 + 8);
  v439 += 8;
  v334(v306, v312);

  v335 = v448;
  v336 = v453;
  (v446)(v448, v455, v453);
  v337 = v443;
  swift_unownedRetainStrong();

  swift_unownedRetain();
  v338 = v440;

  swift_unownedRelease();
  swift_unownedRetain();

  v339 = (v429 + 7) & 0xFFFFFFFFFFFFFFF8;
  v340 = swift_allocObject();
  v341 = v452;
  v342 = v447;
  *(v340 + 2) = v452;
  *(v340 + 3) = v342;
  *(v340 + 4) = v338;
  v430(&v340[v432], v335, v336);
  *&v340[v339] = v337;
  v343 = swift_allocObject();
  *(v343 + 16) = sub_100423314;
  *(v343 + 24) = v340;
  v344 = v337 + *(*v337 + 584);
  swift_beginAccess();
  v345 = v410;
  v346 = &v344[*(v410 + 48)];
  v347 = *v346;
  v348 = v346[1];
  *v346 = sub_100423CA4;
  v346[1] = v343;
  sub_100010520(v347);
  swift_unownedRetainStrong();
  swift_unownedRetain();

  v349 = swift_allocObject();
  v349[2] = v341;
  v349[3] = v342;
  v349[4] = v337;
  v350 = swift_allocObject();
  *(v350 + 16) = sub_1004233C4;
  *(v350 + 24) = v349;
  v351 = &v344[*(v345 + 52)];
  v353 = *v351;
  v352 = v351[1];
  *v351 = sub_1004233D4;
  v351[1] = v350;
  sub_100010520(v353);
  swift_unownedRetainStrong();
  swift_unownedRetain();

  v354 = swift_allocObject();
  v354[2] = v341;
  v354[3] = v342;
  v354[4] = v337;
  v355 = swift_allocObject();
  *(v355 + 16) = sub_100423400;
  *(v355 + 24) = v354;
  v356 = &v344[*(v345 + 56)];
  v358 = *v356;
  v357 = v356[1];
  *v356 = sub_100423D00;
  v356[1] = v355;
  sub_100010520(v358);
  sub_10040E940(0);
  WiFiInterface.linkState.setter(0);
  v359 = v411;
  WiFiInterface.preferences.getter();

  v360 = v413;
  LOBYTE(v344) = Preferences.createNetworkAgent.getter(v413);
  (*(v412 + 8))(v359, v360);
  v294 = v337;
  if ((v344 & 1) == 0)
  {

    v378 = *(*v337 + 520);
    v379 = *(v337 + v378);
    *(v337 + v378) = 0;

    v380 = *(*v337 + 512);
    v381 = *(v337 + v380);
    *(v337 + v380) = 0;
    v368 = v404;
    goto LABEL_23;
  }

  v361 = type metadata accessor for NANAgentHandler();

  v363 = sub_1003E37A8(v362);

  v364 = *(*v337 + 520);
  v365 = *(v337 + v364);
  *(v337 + v364) = v363;

  v367 = *(v337 + v364);
  v368 = v404;
  if (v367)
  {
    v369 = type metadata accessor for NANAgent(0);

    v370 = *OS_dispatch_queue.nan.unsafeMutableAddressor();
    v457 = v367;
    v371 = sub_1003F9C08(0xD00000000000001BLL, 0x80000001004C22E0, 0x7261774169466957, 0xE900000000000065, &v457, v370, v369, v361, &protocol witness table for NANAgentHandler<A>);
    v372 = *(*v294 + 512);
    v373 = *(v294 + v372);
    *(v294 + v372) = v371;

    v374 = *(v294 + v364);
    if (v374)
    {
      v375 = *(v294 + v364);

      v376 = *(v294 + v372);
      v377 = *(v374 + 16);
      *(v374 + 16) = v376;

LABEL_23:
      v456 = v334;

      v382 = Logger.logObject.getter();
      v383 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v382, v383))
      {
        v384 = swift_slowAlloc();
        *v384 = 0;
        _os_log_impl(&_mh_execute_header, v382, v383, "Deriving multicast management keys", v384, 2u);
      }

      static SymmetricKeySize.bits128.getter();
      v385 = v409;
      SymmetricKey.init(size:)();
      v386 = v403;
      v368(v385, 0, 1, v403);
      v387 = *(*v294 + 776);
      swift_beginAccess();
      sub_1000B1B78(v385, v294 + v387, &unk_10059A690, &unk_1004884D0);
      swift_endAccess();
      static SymmetricKeySize.bits128.getter();
      SymmetricKey.init(size:)();
      v368(v385, 0, 1, v386);
      v388 = *(*v294 + 784);
      swift_beginAccess();
      sub_1000B1B78(v385, v294 + v388, &unk_10059A690, &unk_1004884D0);
      swift_endAccess();
      static SymmetricKeySize.bits128.getter();
      SymmetricKey.init(size:)();
      v368(v385, 0, 1, v386);
      v389 = *(*v294 + 792);
      swift_beginAccess();
      sub_1000B1B78(v385, v294 + v389, &unk_10059A690, &unk_1004884D0);
      swift_endAccess();
      swift_retain_n();
      v390 = v455;
      v391 = Logger.logObject.getter();
      v392 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v391, v392))
      {
        v393 = swift_slowAlloc();
        v394 = swift_slowAlloc();
        v457 = v394;
        *v393 = 136315138;
        v395 = WiFiInterface.description.getter();
        v397 = v396;

        v398 = sub_100002320(v395, v397, &v457);

        *(v393 + 4) = v398;
        _os_log_impl(&_mh_execute_header, v391, v392, "Created %s", v393, 0xCu);
        sub_100002A00(v394);
      }

      else
      {
      }

      (*(v435 + 8))(v438, v436);
      (*(v444 + 8))(v445, v405);
      (*(v434 + 8))(v390, v453);
      v456(v451, v454);

      return v294;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t (*sub_10041566C(uint64_t a1, uint64_t a2, uint64_t a3))(char a1)
{
  v6 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(AssociatedTypeWitness);
  v11 = &v15 - v10;
  (*(v8 + 16))(&v15 - v10, a1, AssociatedTypeWitness);
  v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  (*(v8 + 32))(v13 + v12, v11, AssociatedTypeWitness);
  return sub_100423BA4;
}

uint64_t sub_1004157BC(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 + 8);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v7 = *(AssociatedConformanceWitness + 64);
  v8 = swift_checkMetadataState();
  return v7(a1 & 1, v8, AssociatedConformanceWitness);
}

uint64_t (*sub_10041587C(uint64_t a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  v6 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(AssociatedTypeWitness);
  v11 = &v15 - v10;
  (*(v8 + 16))(&v15 - v10, a1, AssociatedTypeWitness);
  v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  (*(v8 + 32))(v13 + v12, v11, AssociatedTypeWitness);
  return sub_100423A30;
}

uint64_t sub_1004159CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 + 8);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v7 = *(AssociatedConformanceWitness + 80);
  v8 = swift_checkMetadataState();
  return v7(a1 & 0xFFFFFFFFFFFFLL, v8, AssociatedConformanceWitness);
}

uint64_t (*sub_100415A8C(uint64_t a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  v6 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(AssociatedTypeWitness);
  v11 = &v15 - v10;
  (*(v8 + 16))(&v15 - v10, a1, AssociatedTypeWitness);
  v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  (*(v8 + 32))(v13 + v12, v11, AssociatedTypeWitness);
  return sub_10042395C;
}

uint64_t sub_100415BDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 + 8);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v7 = *(AssociatedConformanceWitness + 96);
  v8 = swift_checkMetadataState();
  return v7(a1, v8, AssociatedConformanceWitness);
}

uint64_t (*sub_100415C9C(uint64_t a1, uint64_t a2, uint64_t a3))(uint64_t a1, uint64_t a2)
{
  v6 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(AssociatedTypeWitness);
  v11 = &v15 - v10;
  (*(v8 + 16))(&v15 - v10, a1, AssociatedTypeWitness);
  v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  (*(v8 + 32))(v13 + v12, v11, AssociatedTypeWitness);
  return sub_1004238B4;
}

uint64_t sub_100415DEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a5 + 8);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v9 = *(AssociatedConformanceWitness + 392);
  v10 = swift_checkMetadataState();
  return v9(a1, a2, v10, AssociatedConformanceWitness);
}

uint64_t sub_100415EC0(uint64_t *a1)
{
  if (!a1[1])
  {
    return 1701736302;
  }

  v2 = *a1;
  v3 = a1[1];
  _print_unlocked<A, B>(_:_:)();
  return 0;
}

uint64_t (*sub_100415F30(uint64_t a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  v6 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(AssociatedTypeWitness);
  v11 = &v15 - v10;
  (*(v8 + 16))(&v15 - v10, a1, AssociatedTypeWitness);
  v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  (*(v8 + 32))(v13 + v12, v11, AssociatedTypeWitness);
  return sub_100423888;
}

uint64_t sub_100416080(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 + 8);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v7 = *(AssociatedConformanceWitness + 112);
  v8 = swift_checkMetadataState();
  return v7(a1, v8, AssociatedConformanceWitness);
}

uint64_t (*sub_100416140(uint64_t a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  v6 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(AssociatedTypeWitness);
  v11 = &v15 - v10;
  (*(v8 + 16))(&v15 - v10, a1, AssociatedTypeWitness);
  v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  (*(v8 + 32))(v13 + v12, v11, AssociatedTypeWitness);
  return sub_10042385C;
}

uint64_t sub_100416290(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 + 8);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v7 = *(AssociatedConformanceWitness + 128);
  v8 = swift_checkMetadataState();
  return v7(a1 & 0xFFFFFFFFFFFFLL, v8, AssociatedConformanceWitness);
}

uint64_t (*sub_100416350(uint64_t a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  v6 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(AssociatedTypeWitness);
  v11 = &v15 - v10;
  (*(v8 + 16))(&v15 - v10, a1, AssociatedTypeWitness);
  v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  (*(v8 + 32))(v13 + v12, v11, AssociatedTypeWitness);
  return sub_100423830;
}

uint64_t sub_1004164A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 + 8);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v7 = *(AssociatedConformanceWitness + 144);
  v8 = swift_checkMetadataState();
  return v7(a1 & 0xFFFFFFFFFFFFLL, v8, AssociatedConformanceWitness);
}

uint64_t sub_100416560(unsigned int *a1, uint64_t a2)
{
  v2 = *a1 | (*(a1 + 2) << 32);
  if ((v2 & 0xFF00000000) == 0x300000000)
  {
    return 48;
  }

  else
  {
    return Channel.description.getter(v2, a2);
  }
}

uint64_t (*sub_1004165A4(uint64_t a1, uint64_t a2, uint64_t a3))(uint64_t a1, uint64_t a2)
{
  v6 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(AssociatedTypeWitness);
  v11 = &v15 - v10;
  (*(v8 + 16))(&v15 - v10, a1, AssociatedTypeWitness);
  v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  (*(v8 + 32))(v13 + v12, v11, AssociatedTypeWitness);
  return sub_100423788;
}

uint64_t sub_1004166F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a5 + 8);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v9 = *(AssociatedConformanceWitness + 384);
  v10 = swift_checkMetadataState();
  return v9(a1 & 0xFFFFFFFFFFFFFFLL, a2, v10, AssociatedConformanceWitness);
}

uint64_t sub_1004167C8(uint64_t *a1)
{
  v1 = *a1;
  if (!*(v1 + 16))
  {
    return 1701736302;
  }

  sub_10040C4A8(v1);
  sub_10005DC58(&qword_10058CBE0, &qword_100482CF0);
  sub_10000CADC(&qword_10059A6F0, &qword_10058CBE0, &qword_100482CF0);
  v2 = BidirectionalCollection<>.joined(separator:)();

  return v2;
}

uint64_t sub_100416898(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a4;
  v33 = a3;
  v34 = a2;
  v6 = type metadata accessor for NANAttribute(0);
  v37 = *(v6 - 8);
  v7 = *(v37 + 64);
  __chkstk_darwin(v6 - 8);
  v9 = v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v11 = *(*a1 + 16);
  if (v11)
  {
    v12 = sub_100367708(*(*a1 + 16), 0);
    v13 = sub_100315CCC(v36, v12 + 32, v11, v10);
    v30[1] = v36[4];
    v31 = v13;
    swift_bridgeObjectRetain_n();
    sub_1000E290C();
    if (v31 == v11)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v12 = _swiftEmptyArrayStorage;
LABEL_5:
  v36[0] = v12;
  sub_10005BDEC(v36);
  if (v4)
  {
LABEL_18:

    __break(1u);
    return result;
  }

  v14 = v36[0];
  v15 = *(v36[0] + 2);
  if (v15)
  {
    v31 = 0;
    v36[0] = _swiftEmptyArrayStorage;
    sub_1000C0850(0, v15, 0);
    v16 = 32;
    v17 = v36[0];
    v35 = v10;
    while (*(v10 + 16))
    {
      v18 = sub_1003E08F4(v14[v16]);
      if ((v19 & 1) == 0)
      {
        goto LABEL_17;
      }

      v20 = v37;
      v21 = *(v37 + 72);
      sub_1000238F0(*(v10 + 56) + v21 * v18, v9, type metadata accessor for NANAttribute);
      v36[0] = v17;
      v22 = v9;
      v24 = *(v17 + 2);
      v23 = *(v17 + 3);
      if (v24 >= v23 >> 1)
      {
        sub_1000C0850(v23 > 1, v24 + 1, 1);
        v20 = v37;
        v17 = v36[0];
      }

      *(v17 + 2) = v24 + 1;
      sub_100423C3C(v22, &v17[((*(v20 + 80) + 32) & ~*(v20 + 80)) + v24 * v21], type metadata accessor for NANAttribute);
      ++v16;
      --v15;
      v9 = v22;
      v10 = v35;
      if (!v15)
      {

        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v17 = _swiftEmptyArrayStorage;
LABEL_15:
  v25 = *(v32 + 8);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v27 = *(AssociatedConformanceWitness + 168);
  v28 = swift_checkMetadataState();
  v27(v17, v28, AssociatedConformanceWitness);
}

uint64_t sub_100416BD4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a4;
  v33 = a3;
  v34 = a2;
  v6 = type metadata accessor for NANAttribute(0);
  v37 = *(v6 - 8);
  v7 = *(v37 + 64);
  __chkstk_darwin(v6 - 8);
  v9 = v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v11 = *(*a1 + 16);
  if (v11)
  {
    v12 = sub_100367708(*(*a1 + 16), 0);
    v13 = sub_100315CCC(v36, v12 + 32, v11, v10);
    v30[1] = v36[4];
    v31 = v13;
    swift_bridgeObjectRetain_n();
    sub_1000E290C();
    if (v31 == v11)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v12 = _swiftEmptyArrayStorage;
LABEL_5:
  v36[0] = v12;
  sub_10005BDEC(v36);
  if (v4)
  {
LABEL_18:

    __break(1u);
    return result;
  }

  v14 = v36[0];
  v15 = *(v36[0] + 2);
  if (v15)
  {
    v31 = 0;
    v36[0] = _swiftEmptyArrayStorage;
    sub_1000C0850(0, v15, 0);
    v16 = 32;
    v17 = v36[0];
    v35 = v10;
    while (*(v10 + 16))
    {
      v18 = sub_1003E08F4(v14[v16]);
      if ((v19 & 1) == 0)
      {
        goto LABEL_17;
      }

      v20 = v37;
      v21 = *(v37 + 72);
      sub_1000238F0(*(v10 + 56) + v21 * v18, v9, type metadata accessor for NANAttribute);
      v36[0] = v17;
      v22 = v9;
      v24 = *(v17 + 2);
      v23 = *(v17 + 3);
      if (v24 >= v23 >> 1)
      {
        sub_1000C0850(v23 > 1, v24 + 1, 1);
        v20 = v37;
        v17 = v36[0];
      }

      *(v17 + 2) = v24 + 1;
      sub_100423C3C(v22, &v17[((*(v20 + 80) + 32) & ~*(v20 + 80)) + v24 * v21], type metadata accessor for NANAttribute);
      ++v16;
      --v15;
      v9 = v22;
      v10 = v35;
      if (!v15)
      {

        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v17 = _swiftEmptyArrayStorage;
LABEL_15:
  v25 = *(v32 + 8);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v27 = *(AssociatedConformanceWitness + 176);
  v28 = swift_checkMetadataState();
  v27(v17, v28, AssociatedConformanceWitness);
}

uint64_t sub_100416F10(uint64_t *a1)
{
  sub_10040C6E0(*a1);
  sub_10005DC58(&qword_10058CBE0, &qword_100482CF0);
  sub_10000CADC(&qword_10059A6F0, &qword_10058CBE0, &qword_100482CF0);
  v1 = BidirectionalCollection<>.joined(separator:)();
  v3 = v2;

  v4._countAndFlagsBits = v1;
  v4._object = v3;
  String.append(_:)(v4);

  v5._countAndFlagsBits = 93;
  v5._object = 0xE100000000000000;
  String.append(_:)(v5);
  return 91;
}

uint64_t sub_100416FF8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a4;
  v33 = a3;
  v34 = a2;
  v6 = type metadata accessor for NANAttribute(0);
  v37 = *(v6 - 8);
  v7 = *(v37 + 64);
  __chkstk_darwin(v6 - 8);
  v9 = v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v11 = *(*a1 + 16);
  if (v11)
  {
    v12 = sub_100367708(*(*a1 + 16), 0);
    v13 = sub_100315CCC(v36, v12 + 32, v11, v10);
    v30[1] = v36[4];
    v31 = v13;
    swift_bridgeObjectRetain_n();
    sub_1000E290C();
    if (v31 == v11)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v12 = _swiftEmptyArrayStorage;
LABEL_5:
  v36[0] = v12;
  sub_10005BDEC(v36);
  if (v4)
  {
LABEL_18:

    __break(1u);
    return result;
  }

  v14 = v36[0];
  v15 = *(v36[0] + 2);
  if (v15)
  {
    v31 = 0;
    v36[0] = _swiftEmptyArrayStorage;
    sub_1000C0850(0, v15, 0);
    v16 = 32;
    v17 = v36[0];
    v35 = v10;
    while (*(v10 + 16))
    {
      v18 = sub_1003E08F4(v14[v16]);
      if ((v19 & 1) == 0)
      {
        goto LABEL_17;
      }

      v20 = v37;
      v21 = *(v37 + 72);
      sub_1000238F0(*(v10 + 56) + v21 * v18, v9, type metadata accessor for NANAttribute);
      v36[0] = v17;
      v22 = v9;
      v24 = *(v17 + 2);
      v23 = *(v17 + 3);
      if (v24 >= v23 >> 1)
      {
        sub_1000C0850(v23 > 1, v24 + 1, 1);
        v20 = v37;
        v17 = v36[0];
      }

      *(v17 + 2) = v24 + 1;
      sub_100423C3C(v22, &v17[((*(v20 + 80) + 32) & ~*(v20 + 80)) + v24 * v21], type metadata accessor for NANAttribute);
      ++v16;
      --v15;
      v9 = v22;
      v10 = v35;
      if (!v15)
      {

        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v17 = _swiftEmptyArrayStorage;
LABEL_15:
  v25 = *(v32 + 8);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v27 = *(AssociatedConformanceWitness + 184);
  v28 = swift_checkMetadataState();
  v27(v17, v28, AssociatedConformanceWitness);
}

uint64_t (*sub_100417334(uint64_t a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  v6 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(AssociatedTypeWitness);
  v11 = &v15 - v10;
  (*(v8 + 16))(&v15 - v10, a1, AssociatedTypeWitness);
  v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  (*(v8 + 32))(v13 + v12, v11, AssociatedTypeWitness);
  return sub_1004236B4;
}

uint64_t sub_100417484(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 + 8);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v7 = *(AssociatedConformanceWitness + 376);
  v8 = swift_checkMetadataState();
  return v7(a1, v8, AssociatedConformanceWitness);
}

uint64_t (*sub_100417544(uint64_t a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  v6 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(AssociatedTypeWitness);
  v11 = &v15 - v10;
  (*(v8 + 16))(&v15 - v10, a1, AssociatedTypeWitness);
  v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  (*(v8 + 32))(v13 + v12, v11, AssociatedTypeWitness);
  return sub_100423688;
}

uint64_t sub_100417694(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 + 8);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v7 = *(AssociatedConformanceWitness + 368);
  v8 = swift_checkMetadataState();
  return v7(a1, v8, AssociatedConformanceWitness);
}

void sub_100417754(void *a1)
{
  v2 = *(*(type metadata accessor for DriverEvent(0) - 8) + 64);
  __chkstk_darwin();
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin();
  v9 = (&v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = OS_dispatch_queue.nan.unsafeMutableAddressor();
  v11 = *v10;
  *v9 = *v10;
  (*(v6 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v5);
  v12 = v11;
  LOBYTE(v11) = _dispatchPreconditionTest(_:)();
  (*(v6 + 8))(v9, v5);
  if (v11)
  {
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_10001FEDC(a1);
    }

    else
    {
      sub_1000238F0(a1, v4, type metadata accessor for DriverEvent);
      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v21 = v16;
        *v15 = 136315138;
        v17 = DriverEvent.shortDescription.getter(v16);
        v19 = v18;
        sub_100023A78(v4, type metadata accessor for DriverEvent);
        v20 = sub_100002320(v17, v19, &v21);

        *(v15 + 4) = v20;
        _os_log_impl(&_mh_execute_header, v13, v14, "Failed to dispatch event %s because the NANInterface was deallocated before the event was received from the driver", v15, 0xCu);
        sub_100002A00(v16);
      }

      else
      {

        sub_100023A78(v4, type metadata accessor for DriverEvent);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100417A28(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {
    if (sub_10001A54C())
    {
      swift_unownedRetainStrong();
      sub_10001A63C();

      swift_unownedRetainStrong();
      sub_100417BE8();

      swift_unownedRetainStrong();
      sub_100417E94();

      swift_unownedRetainStrong();
      v5 = *(*a4 + 480);
      v6 = *(a4 + v5);
      if (v6)
      {
        v7 = *(a4 + v5);

        (*(*v6 + 216))(0);
      }

      swift_unownedRetainStrong();
      sub_100418460();
    }

    else
    {
      v8 = Logger.logObject.getter();
      v9 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        *v10 = 0;
        _os_log_impl(&_mh_execute_header, v8, v9, "Refusing request to enable NAN because Wi-Fi is powered off", v10, 2u);
      }

      sub_10000B02C();
      swift_allocError();
      *v11 = xmmword_10047CE50;
      *(v11 + 16) = 1;
      return swift_willThrow();
    }
  }

  return result;
}

void sub_100417BE8()
{
  v1 = *(*v0 + 472);
  v2 = *(v0 + v1);
  if (v2)
  {
    v3 = *(*v2 + 216);
    v4 = *(v0 + v1);

    v3(1);
    v5 = WiFiInterface.macAddress.getter();
    (*(*v2 + 264))(v5 & 0xFFFFFFFFFFFFLL);
    sub_10005DC58(&unk_10059B0B0, &qword_100487150);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_100480F40;
    v7 = (*(*v2 + 256))();
    *(v6 + 32) = WiFiAddress.ipv6LinkLocalAddress.getter(v7 & 0xFFFFFFFFFFFFLL);
    *(v6 + 40) = v8;
    *(v6 + 48) = v9;
    *(v6 + 56) = v10;
    (*(*v2 + 360))(v6);
    v11 = *(*v0 + 160);

    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v20 = v15;
      *v14 = 136315138;

      v16 = WiFiInterface.description.getter();
      v18 = v17;

      v19 = sub_100002320(v16, v18, &v20);

      *(v14 + 4) = v19;
      _os_log_impl(&_mh_execute_header, v12, v13, "Updated %s", v14, 0xCu);
      sub_100002A00(v15);
    }

    else
    {
    }
  }
}

uint64_t sub_100417E94()
{
  v1 = v0;
  v2 = *v0;
  v3 = v2[55];
  v4 = v2[54];
  swift_getAssociatedTypeWitness();
  v43 = *(swift_getAssociatedConformanceWitness() + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin();
  v9 = &v41 - v8;
  v10 = *(v3 + 8);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v11 = type metadata accessor for Preferences();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  result = __chkstk_darwin();
  v16 = &v41 - v15;
  v17 = *(v1 + v2[60]);
  if (v17)
  {
    v41 = v6;
    v42 = AssociatedTypeWitness;
    v18 = *(*v17 + 216);

    v18(1);
    WiFiInterface.preferences.getter();
    v19 = Preferences.nanDataMACAddress.getter(v11);
    (*(v12 + 8))(v16, v11);
    if ((v19 & 0x1000000000000) != 0)
    {
      v20 = (v1 + *(*v1 + 488));
      if (*(v20 + 6))
      {
        v21 = *(v1 + *(*v1 + 800));
        v22 = swift_unownedRetainStrong();
        (*(*v21 + 168))(v22);

        v23 = v42;
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
        v25 = (*(AssociatedConformanceWitness + 64))(v23, AssociatedConformanceWitness);
        (*(v41 + 8))(v9, v23);
        if ((v25 & 0x1000000000000) != 0)
        {
          v27 = static WiFiAddress.random()();
        }

        else
        {
          WiFiAddress.lastOctetIncremented()(v26);
        }

        v28 = v27 >> 8;
        v29 = vdupq_n_s64(v27);
        goto LABEL_10;
      }

      v19 = *v20 | (*(v20 + 2) << 32);
    }

    v28 = v19 >> 8;
    v29 = vdupq_n_s64(v19);
LABEL_10:
    v30 = vorrq_s8(vandq_s8(vshlq_u64(vshlq_u64(v29, xmmword_1004841E0), xmmword_1004AD2A0), xmmword_1004B3730), vandq_s8(vshlq_u64(vshlq_u64(v29, xmmword_1004841F0), xmmword_1004AD290), xmmword_1004B3720));
    WiFiAddress.linkLocalAddress()((*&vorr_s8(*v30.i8, *&vextq_s8(v30, v30, 8uLL)) | (v28 << 8)));
    (*(*v17 + 264))(v31 & 0xFFFFFFFFFFFFLL);
    v32 = *(*v1 + 160);

    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v44 = v36;
      *v35 = 136315138;

      v37 = WiFiInterface.description.getter();
      v39 = v38;

      v40 = sub_100002320(v37, v39, &v44);

      *(v35 + 4) = v40;
      _os_log_impl(&_mh_execute_header, v33, v34, "Updated %s", v35, 0xCu);
      sub_100002A00(v36);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_100418460()
{
  v206 = *v0;
  v1 = v206;
  v198 = type metadata accessor for NANAttribute(0);
  v203 = *(v198 - 8);
  v2 = *(v203 + 64);
  __chkstk_darwin();
  v199 = &v174 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v200 = &v174 - v4;
  v5 = *(*(sub_10005DC58(&unk_100595C00, &qword_10048F790) - 8) + 64);
  __chkstk_darwin();
  v187 = (&v174 - v6);
  v196 = sub_10005DC58(&qword_100594D50, &unk_1004AEBF0);
  v7 = *(*(v196 - 8) + 64);
  __chkstk_darwin();
  v197 = &v174 - v8;
  v195 = sub_10005DC58(&unk_10059A6B0, &unk_1004B4D80);
  v9 = *(*(v195 - 8) + 64);
  __chkstk_darwin();
  v202 = (&v174 - v10);
  v205 = *(v1 + 440);
  v11 = *(v205 + 8);
  v12 = *(v1 + 432);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v13 = type metadata accessor for Preferences();
  v192 = *(v13 - 8);
  v14 = *(v192 + 64);
  __chkstk_darwin();
  v16 = &v174 - v15;
  v190 = v11;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v18 = *(AssociatedTypeWitness - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin();
  v188 = &v174 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v204 = &v174 - v21;
  __chkstk_darwin();
  v201 = &v174 - v22;
  __chkstk_darwin();
  v194 = &v174 - v23;
  __chkstk_darwin();
  v189 = &v174 - v24;
  __chkstk_darwin();
  v26 = &v174 - v25;
  v27 = *(*(type metadata accessor for NANDriverCapabilities() - 8) + 64);
  __chkstk_darwin();
  v29 = &v174 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = v1;
  v31 = v0;
  v32 = *(v30 + 744);
  LOBYTE(v28) = *(v32 + v0);
  v223 = v0;
  v207 = v18;
  if (v28)
  {
    v206 = AssociatedTypeWitness;
    v33 = v205;
    v34 = v12;
    while (1)
    {
      v61 = WiFiInterface.capabilities.getter();
      v191 = WiFiDriverCapabilities.supportsSimultaneousDualBand.unsafeMutableAddressor();
      *&v209 = *v191;
      v213 = v61;
      v62 = sub_1000C2A14();

      v63 = dispatch thunk of SetAlgebra.isSuperset(of:)();

      v64 = sub_10040E5FC();
      v65 = static Array<A>.potentialAvailability(using:supportsSimultaneousDualBand:for:)(0, (v63 & 1), v64);

      sub_10040EF14(v65);
      v66 = *(sub_100422F80() + 16);
      v67 = v207;
      v193 = v34;
      v192 = v62;
      if (!v66)
      {
        v68 = *&v31[*(*v31 + 800)];
        swift_unownedRetainStrong();
        sub_1003EB084();
        v70 = v69;
        v72 = v71;

        if (v70)
        {
        }

        else
        {
          v72 = 0x300000000;
        }

        v73 = *v31;
        v74 = *(*v31 + 616);
        v75 = &v31[*(sub_10005DC58(&qword_10059A668, &qword_1004B3868) + 40) + v74];
        LODWORD(v74) = *v75;
        v76 = *(v75 + 2);
        v77 = *(v73 + 624);
        v78 = &v31[*(sub_10005DC58(&qword_10059A660, &qword_1004B3860) + 40) + v77];
        v79 = *v78;
        LOWORD(v78) = *(v78 + 2);
        LODWORD(v213) = v74;
        WORD2(v213) = v76;
        v215 = v78;
        v214 = v79;
        v217 = WORD2(v72);
        v216 = v72;
        v218 = _swiftEmptyArrayStorage;
        v80 = sub_10040E5FC();
        RadioResources.SymbolicChannel.Resolver.update(preferredChannels:)(v80);

        LODWORD(v185) = v213;
        LODWORD(v184) = WORD2(v213);
        v190 = v214;
        v182 = v215;
        v186 = v216;
        v181 = v217;
        v183 = v218;
        v180 = *(*v31 + 96);
        v81 = v180;
        swift_beginAccess();
        v179 = *(v67 + 16);
        v82 = &v31[v81];
        v83 = v189;
        v84 = v206;
        v179(v189, v82, v206);
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
        v176 = *(AssociatedConformanceWitness + 8);
        v85 = v176(v84, AssociatedConformanceWitness);
        v175 = *(v67 + 8);
        v175(v83, v84);
        *&v209 = *WiFiDriverCapabilities.supportsDualBand.unsafeMutableAddressor();
        v219 = v85;

        v178 = dispatch thunk of SetAlgebra.isSuperset(of:)();

        v179(v83, v223 + v180, v84);
        v86 = v176(v84, AssociatedConformanceWitness);
        v175(v83, v84);
        *&v209 = *v191;
        v219 = v86;

        v87 = dispatch thunk of SetAlgebra.isSuperset(of:)();

        *&v209 = &_swiftEmptyDictionarySingleton;
        BYTE8(v209) = v178 & 1;
        BYTE9(v209) = v87 & 1;
        *(&v209 + 10) = v219;
        HIWORD(v209) = WORD2(v219);
        LODWORD(v210) = v185;
        WORD2(v210) = v184;
        WORD6(v210) = v182;
        DWORD2(v210) = v190;
        WORD2(v211) = v181;
        LODWORD(v211) = v186;
        *(&v211 + 1) = v183;
        v212 = _swiftEmptyArrayStorage;
        v88 = TimeBitmap.primaryDiscoveryWindow.unsafeMutableAddressor();
        RadioSchedule.set(_:to:with:)(*v88, v88[1], v88[2], 0, 2, 3, &type metadata for RadioResourceSchedule, &off_100596298);
        v89 = *TimeBitmap.Slot.OF.unsafeMutableAddressor();
        v90 = TimeBitmap.Slot.OO.unsafeMutableAddressor();
        v91 = static TimeBitmap.repeatingPerDW(_:_:_:_:)(v89, *v90, *v90, *v90);
        RadioSchedule.set(_:to:with:)(v91, v92, v93, 0, 2, 3, &type metadata for RadioResourceSchedule, &off_100596298);
        if (BYTE9(v209))
        {
          v94 = TimeBitmap.Slot.FF.unsafeMutableAddressor();
          v95 = *v90;
          v96 = *v94;
          v97 = v96;
        }

        else
        {
          v98 = *v90;
          v99 = TimeBitmap.Slot.FF.unsafeMutableAddressor();
          v95 = *v90;
          v97 = *v99;
          v96 = v98;
        }

        v100 = static TimeBitmap.repeatingPerDW(_:_:_:_:)(v96, v97, v95, v95);
        v33 = v205;
        RadioSchedule.set(_:to:with:)(v100, v101, v102, 1, 2, 3, &type metadata for RadioResourceSchedule, &off_100596298);
        v221[0] = v209;
        v221[1] = v210;
        v221[2] = v211;
        v222 = v212;
        v103 = sub_100029B78();
        sub_10002ACB8(v221);
        v31 = v223;
        sub_1000306E8(v103);
        v67 = v207;
        v34 = v193;
      }

      v104 = *&v31[*(*v31 + 800)];
      swift_unownedRetainStrong();
      v105 = v202;
      sub_1003EB9D8(v202);
      v186 = v104;

      v185 = OS_dispatch_queue.nan.unsafeMutableAddressor();
      v106 = *v185;
      v107 = swift_allocObject();
      swift_weakInit();
      v108 = swift_allocObject();
      v108[2] = v34;
      v108[3] = v33;
      v108[4] = v107;
      v109 = *(*v31 + 816);
      swift_beginAccess();
      v110 = v106;
      ObservableWiFiProperty.registerForChanges(on:using:valueUpdateHandler:)(v110, &v31[v109], sub_100423474, v108, v195, &v213);
      swift_endAccess();

      sub_100016290(v105, &unk_10059A6B0, &unk_1004B4D80);
      LODWORD(v183) = v213;
      LODWORD(v182) = BYTE1(v213);
      sub_10005DC58(&unk_100597340, &unk_1004B1640);
      v184 = sub_10005DC58(&qword_1005952A8, &qword_1004AF1A8);
      v111 = (*(*(v184 - 8) + 80) + 32) & ~*(*(v184 - 8) + 80);
      v179 = *(*(v184 - 8) + 72);
      v112 = swift_allocObject();
      *(v112 + 16) = xmmword_100483520;
      v181 = v112;
      v180 = v112 + v111;
      *(v112 + v111) = 45;
      v113 = *(*v31 + 96);
      swift_beginAccess();
      v114 = (v67 + 16);
      v202 = *(v67 + 16);
      v115 = v194;
      v116 = v206;
      (v202)(v194, &v31[v113], v206);
      v117 = v67;
      v118 = swift_getAssociatedConformanceWitness();
      v178 = (*(v118 + 32))(v116, v118);
      v119 = *(v117 + 8);
      v119(v115, v116);
      v195 = v113;
      v120 = v201;
      v194 = v114;
      (v202)(v201, &v31[v113], v116);
      v121 = *(v118 + 24);
      v189 = v118;
      v122 = v121(v116, v118);
      v207 = v117 + 8;
      v190 = v119;
      v119(v120, v116);
      v123 = WiFiInterface.capabilities.getter();
      *&v209 = *v191;
      v219 = v123;

      LOBYTE(v120) = dispatch thunk of SetAlgebra.isSuperset(of:)();

      v124 = *NANAttribute.CustomDeviceInformation.Flags.peerType.unsafeMutableAddressor();
      if ((v120 & 1) == 0)
      {
        v125 = *NANAttribute.CustomDeviceInformation.Flags.doesNotSupportSimultaneousDualBand.unsafeMutableAddressor();
        if ((v125 & ~v124) == 0)
        {
          v125 = 0;
        }

        v124 |= v125;
      }

      v126 = v184;
      v127 = v180;
      v128 = v180 + *(v184 + 48);
      v129 = type metadata accessor for NANAttribute.CustomDeviceInformation(0);
      NANAttribute.CustomDeviceInformation.CustomAttributes.init()(v128 + *(v129 + 28));
      *v128 = v178;
      *(v128 + 1) = v122;
      *(v128 + 4) = v124;
      v130 = v198;
      swift_storeEnumTagMultiPayload();
      v131 = v179 + v127 + *(v126 + 48);
      *(v179 + v127) = 11;
      *v131 = v183;
      v131[1] = v182;
      swift_storeEnumTagMultiPayload();
      v132 = sub_1002DE9CC(v181);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v201 = v132;
      v220 = v132;
      swift_unownedRetainStrong();
      v133 = v197;
      sub_1003EB210(v197);

      v134 = *v185;
      v135 = swift_allocObject();
      v136 = v223;
      swift_weakInit();
      v137 = swift_allocObject();
      v138 = v205;
      v137[2] = v193;
      v137[3] = v138;
      v137[4] = v135;
      v139 = *(*v136 + 808);
      swift_beginAccess();
      v140 = *(v136 + v139);
      v141 = v134;
      v142 = v141;
      if (v140)
      {
        ObservableWiFiProperty.wrappedValue.getter(v196, &v209);
      }

      else
      {
        ObservableWiFiProperty.registerForChanges(on:using:valueUpdateHandler:)(v141, (v136 + v139), sub_100423480, v137, v196, &v209);
      }

      v46 = v204;
      swift_endAccess();

      sub_100016290(v133, &qword_100594D50, &unk_1004AEBF0);
      v143 = v203;
      v144 = v200;
      if (*(&v209 + 1))
      {
        v145 = NANAttribute.ExtendedWLANInfrastructure.init(network:)(v209, *(&v209 + 1), v210 & 0xFFFFFFFFFFFFLL, DWORD2(v210) | (WORD6(v210) << 32));
        v146 = v187;
        *v187 = v145;
        *(v146 + 8) = v147;
        *(v146 + 16) = v148;
        swift_storeEnumTagMultiPayload();
        (*(v143 + 56))(v146, 0, 1, v130);
        sub_100337FA0(v146, 30);
        v149 = v220;
      }

      else
      {
        v149 = v201;
      }

      swift_bridgeObjectRetain_n();
      sub_10040ECA8(v149);
      v201 = v149;
      sub_1004114F0(v149);
      (v202)(v46, v136 + v195, v206);
      v150 = sub_100422D18();
      v57 = v150;
      v151 = *(v150 + 16);
      if (v151)
      {
        v152 = sub_100367708(*(v150 + 16), 0);
        v46 = sub_100315CCC(&v209, v152 + 32, v151, v57);
        v34 = v209;
        swift_bridgeObjectRetain_n();
        sub_1000E290C();
        if (v46 != v151)
        {
          goto LABEL_68;
        }

        v144 = v200;
      }

      else
      {

        v152 = _swiftEmptyArrayStorage;
      }

      *&v209 = v152;
      v153 = v208;
      sub_10005BDEC(&v209);
      if (v153)
      {
        goto LABEL_71;
      }

      v34 = v209;
      v154 = *(v209 + 16);
      if (v154)
      {
        *&v209 = _swiftEmptyArrayStorage;
        sub_1000C0850(0, v154, 0);
        v155 = 0;
        v156 = v209;
        v57 = v203;
        while (v155 < *(v34 + 16))
        {
          LOBYTE(v219) = *(v34 + v155 + 32);
          sub_10041E9DC(&v219, sub_100422D18, v144);
          *&v209 = v156;
          v158 = v156[2];
          v157 = v156[3];
          v46 = (v158 + 1);
          if (v158 >= v157 >> 1)
          {
            sub_1000C0850(v157 > 1, v158 + 1, 1);
            v57 = v203;
            v156 = v209;
          }

          ++v155;
          v156[2] = v46;
          sub_100423C3C(v144, v156 + ((v57[80] + 32) & ~v57[80]) + *(v57 + 9) * v158, type metadata accessor for NANAttribute);
          if (v154 == v155)
          {

            goto LABEL_52;
          }
        }

        __break(1u);
      }

      else
      {

        v156 = _swiftEmptyArrayStorage;
LABEL_52:
        v159 = v204;
        v160 = v206;
        (*(v189 + 21))(v156, v206);
        v161 = v199;
        v162 = v223;
        v208 = 0;
        (v190)(v159, v160);

        (v202)(v188, v162 + v195, v160);
        v46 = v162;
        v163 = sub_100422F14();
        v57 = v163;
        v164 = *(v163 + 16);
        if (v164)
        {
          v165 = sub_100367708(*(v163 + 16), 0);
          v46 = sub_100315CCC(&v209, v165 + 32, v164, v57);
          v34 = *(&v209 + 1);
          swift_bridgeObjectRetain_n();
          sub_1000E290C();
          if (v46 != v164)
          {
            goto LABEL_69;
          }

          v161 = v199;
          v46 = v223;
        }

        else
        {

          v165 = _swiftEmptyArrayStorage;
        }

        *&v209 = v165;
        v166 = v208;
        sub_10005BDEC(&v209);
        if (v166)
        {
LABEL_71:

          __break(1u);
          return result;
        }

        v34 = v209;
        v167 = *(v209 + 16);
        if (!v167)
        {

          v169 = _swiftEmptyArrayStorage;
LABEL_65:
          v172 = v206;
          v173 = v188;
          (*(v189 + 22))(v169, v206);
          (v190)(v173, v172);
        }

        *&v209 = _swiftEmptyArrayStorage;
        sub_1000C0850(0, v167, 0);
        v168 = 0;
        v169 = v209;
        v57 = v203;
        while (v168 < *(v34 + 16))
        {
          LOBYTE(v219) = *(v34 + v168 + 32);
          sub_10041E9DC(&v219, sub_100422F14, v161);
          *&v209 = v169;
          v171 = v169[2];
          v170 = v169[3];
          v46 = (v171 + 1);
          if (v171 >= v170 >> 1)
          {
            sub_1000C0850(v170 > 1, v171 + 1, 1);
            v57 = v203;
            v169 = v209;
          }

          ++v168;
          v169[2] = v46;
          sub_100423C3C(v161, v169 + ((v57[80] + 32) & ~v57[80]) + *(v57 + 9) * v171, type metadata accessor for NANAttribute);
          if (v167 == v168)
          {

            goto LABEL_65;
          }
        }
      }

      __break(1u);
LABEL_68:
      __break(1u);
LABEL_69:
      __break(1u);
LABEL_70:
      v57 = sub_1003A79E0(0, *(v57 + 2) + 1, 1, v57);
      *(v46 + 1) = v57;
LABEL_17:
      v60 = *(v57 + 2);
      v59 = *(v57 + 3);
      if (v60 >= v59 >> 1)
      {
        v57 = sub_1003A79E0((v59 > 1), v60 + 1, 1, v57);
      }

      *(v57 + 2) = v60 + 1;
      v57[v60 + 32] = 6;
      *(v46 + 1) = v57;
      swift_endAccess();
LABEL_20:
      v31 = v223;
      *(v191 + v223) = 1;
      v33 = v205;
    }
  }

  v191 = v32;
  v35 = *(v206 + 96);
  swift_beginAccess();
  (*(v18 + 16))(v26, &v31[v35], AssociatedTypeWitness);
  v36 = swift_getAssociatedConformanceWitness();
  v37 = v208;
  (*(v36 + 40))(AssociatedTypeWitness, v36);
  v208 = v37;
  if (v37)
  {
    (*(v18 + 8))(v26, AssociatedTypeWitness);
  }

  else
  {
    v45 = *(v18 + 8);
    v206 = AssociatedTypeWitness;
    v45(v26, AssociatedTypeWitness);
    v46 = &v31[*(*v31 + 736)];
    swift_beginAccess();
    sub_100423410(v29, v46);
    swift_endAccess();
    WiFiInterface.preferences.getter();
    v47 = Preferences.enableNANPairing.getter(v13);
    (*(v192 + 8))(v16, v13);
    if ((v47 & 1) == 0)
    {
      v34 = v12;
      goto LABEL_20;
    }

    v48 = *(*v31 + 160);
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.default.getter();
    v34 = v12;
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&_mh_execute_header, v49, v50, "Initialize NIK", v51, 2u);
    }

    v52 = v223;
    v53 = v208;
    sub_10041DCEC();
    if (!v53)
    {
      v208 = 0;
      v54 = Logger.logObject.getter();
      v55 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v54, v55))
      {
        v56 = swift_slowAlloc();
        *v56 = 0;
        _os_log_impl(&_mh_execute_header, v54, v55, "Adding pairing to supported cipher suites", v56, 2u);
      }

      swift_beginAccess();
      v57 = *(v46 + 1);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v46 + 1) = v57;
      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_17;
      }

      goto LABEL_70;
    }

    v31 = v52;
  }

  v38 = *(*v31 + 160);
  swift_errorRetain();
  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    *v41 = 138412290;
    swift_errorRetain();
    v43 = _swift_stdlib_bridgeErrorToNSError();
    *(v41 + 4) = v43;
    *v42 = v43;
    _os_log_impl(&_mh_execute_header, v39, v40, "Failed to initialize and configure NAN: %@", v41, 0xCu);
    sub_100016290(v42, &qword_10058B780, &qword_100480AC0);
  }

  return swift_willThrow();
}

uint64_t sub_10041A0C8(uint64_t result, uint64_t a2)
{
  if (result)
  {
    swift_unownedRetainStrong();
    v3 = *(*a2 + 480);
    v4 = *(a2 + v3);
    if (v4)
    {
      v5 = *(a2 + v3);

      (*(*v4 + 216))(0);
    }

    swift_unownedRetainStrong();
    v6 = *(*a2 + 472);
    v7 = *(a2 + v6);
    if (v7)
    {
      v8 = *(a2 + v6);

      (*(*v7 + 216))(0);
    }

    swift_unownedRetainStrong();
    WiFiInterface.linkState.setter(0);
  }

  return result;
}

uint64_t sub_10041A1E0(char a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchTime();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_unownedRetainStrong();
  type metadata accessor for P2PTimer();
  variable initialization expression of AWDLPeer.lastUpdated();
  v9 = *(*a2 + 752);
  swift_beginAccess();
  (*(v5 + 40))(a2 + v9, v8, v4);
  swift_endAccess();

  swift_unownedRetainStrong();
  sub_10041A408(a1 & 1);

  if ((a1 & 1) == 0)
  {
    swift_unownedRetainStrong();
    v11 = *(*a2 + 472);
    v12 = *(a2 + v11);
    if (v12)
    {
      v13 = *(a2 + v11);

      (*(*v12 + 216))(0);
    }

    swift_unownedRetainStrong();
    v14 = *(*a2 + 480);
    v15 = *(a2 + v14);
    if (v15)
    {
      v16 = *(a2 + v14);

      (*(*v15 + 216))(0);
    }

    swift_unownedRetainStrong();
    WiFiInterface.linkState.setter(0);
  }

  return result;
}

void sub_10041A408(int a1)
{
  v2 = v1;
  v81 = *v2;
  v4 = v81[54];
  v88 = *(v81[55] + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v86 = *(AssociatedTypeWitness - 8);
  v6 = *(v86 + 64);
  __chkstk_darwin();
  v82 = &v81 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = &v81 - v8;
  v10 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v85 = v10;
  v11 = *(AssociatedConformanceWitness + 8);
  v12 = swift_getAssociatedTypeWitness();
  v87 = *(v12 - 8);
  v13 = *(v87 + 64);
  __chkstk_darwin();
  v15 = &v81 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v17 = &v81 - v16;
  v83 = a1;
  if (a1)
  {
    v18 = sub_10040DC18(0xD000000000000022, 0x80000001004C2300);
    v19 = *(*v2 + 496);
    v20 = *(v2 + v19);
    *(v2 + v19) = v18;
    swift_unknownObjectRelease();
    v21 = *(v2 + *(*v2 + 504));
    [v21 registerClient:39 queue:*OS_dispatch_queue.nan.unsafeMutableAddressor()];
    [v21 setNANEnabled:1];
    v22 = *(v2 + *(*v2 + 800));
    v23 = swift_unownedRetainStrong();
    (*(*v22 + 168))(v23);

    v24 = *(*v2 + 96);
    swift_beginAccess();
    v25 = v86;
    (*(v86 + 16))(v9, v2 + v24, AssociatedTypeWitness);
    v26 = swift_getAssociatedConformanceWitness();
    v27 = (*(v26 + 32))(AssociatedTypeWitness, v26);
    (*(v25 + 8))(v9, AssociatedTypeWitness);
    v28 = swift_getAssociatedConformanceWitness();
    (*(v28 + 144))(v27, 1, v12, v28);
    (*(v87 + 8))(v17, v12);
    sub_10041EA80();
  }

  else
  {
    v29 = v81[58];
    swift_beginAccess();
    v30 = *(v2 + v29);
    *(v2 + v29) = &_swiftEmptyDictionarySingleton;

    sub_100410C08();
    v31 = *(*v2 + 456);
    swift_beginAccess();
    v32 = *(v2 + v31);
    *(v2 + v31) = &_swiftEmptyDictionarySingleton;

    type metadata accessor for NANDiscoveryEngine();

    v34 = sub_10036B91C(v33);

    v35 = *(*v2 + 712);
    v36 = *(v2 + v35);
    *(v2 + v35) = v34;

    type metadata accessor for NANOutOfBoundFrameTransmitter();

    v38 = sub_1003AC784(v37);

    v39 = *(*v2 + 720);
    v40 = *(v2 + v39);
    *(v2 + v39) = v38;

    v41 = *(*v2 + 696);
    v42 = *(v2 + v41);
    *(v2 + v41) = 5;
    sub_10041156C(v42);
    v43 = v2 + *(*v2 + 704);
    *v43 = 0;
    *(v43 + 8) = 1;
    v44 = sub_1002DE8CC(_swiftEmptyArrayStorage);
    sub_10040E580(v44);
    v45 = *(*v2 + 496);
    v46 = *(v2 + v45);
    *(v2 + v45) = 0;
    swift_unknownObjectRelease();
    v47 = *(v2 + *(*v2 + 504));
    [v47 setNANEnabled:0];
    [v47 unregisterClient];
    v48 = *(v2 + *(*v2 + 800));
    v49 = swift_unownedRetainStrong();
    (*(*v48 + 168))(v49);
    v81 = v48;

    v50 = *(*v2 + 96);
    swift_beginAccess();
    v51 = v86;
    v52 = v82;
    (*(v86 + 16))(v82, v2 + v50, AssociatedTypeWitness);
    v53 = swift_getAssociatedConformanceWitness();
    v54 = (*(v53 + 32))(AssociatedTypeWitness, v53);
    (*(v51 + 8))(v52, AssociatedTypeWitness);
    v55 = swift_getAssociatedConformanceWitness();
    (*(v55 + 144))(v54, 0, v12, v55);
    (*(v87 + 8))(v15, v12);
    v56 = *(*v2 + 112);
    swift_getAssociatedTypeWitness();
    v57 = swift_getAssociatedConformanceWitness();
    v58 = *(v57 + 128);
    v59 = swift_checkMetadataState();
    v58(v59, v57);
    v60 = LongTermPairingKeyStore.findPairedPeers()();

    v61 = *(v60 + 16);

    if (!v61)
    {
      v66 = v2 + *(*v2 + 160);
      v67 = Logger.logObject.getter();
      v68 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v67, v68))
      {
        v69 = swift_slowAlloc();
        *v69 = 0;
        _os_log_impl(&_mh_execute_header, v67, v68, "No paired devices found, safe to rotate NIK", v69, 2u);
      }

      sub_100410568();
    }

    v62 = v2 + *(*v2 + 160);
    v63 = Logger.logObject.getter();
    v64 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      *v65 = 0;
      _os_log_impl(&_mh_execute_header, v63, v64, "Attempting to update soft AP band to 5G on disabling NAN", v65, 2u);
    }

    swift_unownedRetainStrong();
    sub_1003F0114(1);
  }

  v70 = *(*v2 + 160);

  v71 = Logger.logObject.getter();
  v72 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v71, v72))
  {
    v73 = swift_slowAlloc();
    v89[0] = swift_slowAlloc();
    *v73 = 136315394;
    v74 = WiFiInterface.description.getter();
    v76 = v75;

    v77 = sub_100002320(v74, v76, v89);

    *(v73 + 4) = v77;
    *(v73 + 12) = 2080;
    if (v83)
    {
      v78 = 0x64656C62616E65;
    }

    else
    {
      v78 = 0x64656C6261736964;
    }

    if (v83)
    {
      v79 = 0xE700000000000000;
    }

    else
    {
      v79 = 0xE800000000000000;
    }

    v80 = sub_100002320(v78, v79, v89);

    *(v73 + 14) = v80;
    _os_log_impl(&_mh_execute_header, v71, v72, "%s %s NAN", v73, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }
}

uint64_t sub_10041B30C()
{
  v1 = *(v0 + *(*v0 + 448));

  v2 = *(v0 + *(*v0 + 456));

  v3 = *(v0 + *(*v0 + 464));

  v4 = *(v0 + *(*v0 + 472));

  v5 = *(v0 + *(*v0 + 480));

  v6 = *(v0 + *(*v0 + 496));
  swift_unknownObjectRelease();

  v7 = *(v0 + *(*v0 + 512));

  v8 = *(v0 + *(*v0 + 520));

  v9 = *(v0 + *(*v0 + 552));

  v10 = *(v0 + *(*v0 + 560));

  sub_100016290(v0 + *(*v0 + 568), &unk_100597330, &unk_100481FA0);
  sub_100016290(v0 + *(*v0 + 576), &unk_100597330, &unk_100481FA0);
  sub_100016290(v0 + *(*v0 + 584), &qword_10059A650, &qword_1004B3850);
  sub_100016290(v0 + *(*v0 + 592), &unk_10059B160, &qword_1004B3050);
  sub_100016290(v0 + *(*v0 + 600), &qword_10059A6A8, &qword_1004B3888);
  sub_100016290(v0 + *(*v0 + 608), &unk_10059A670, &qword_1004B3870);
  sub_100016290(v0 + *(*v0 + 616), &qword_10059A668, &qword_1004B3868);
  sub_100016290(v0 + *(*v0 + 624), &qword_10059A660, &qword_1004B3860);
  sub_100016290(v0 + *(*v0 + 632), &qword_10059A6A0, &qword_1004B0738);
  sub_100016290(v0 + *(*v0 + 640), &qword_10059A680, &qword_1004B3878);
  sub_100016290(v0 + *(*v0 + 648), &unk_10059A3D0, &qword_1004B0730);
  sub_100016290(v0 + *(*v0 + 656), &qword_100597358, &qword_1004B1650);
  sub_100016290(v0 + *(*v0 + 664), &qword_100597358, &qword_1004B1650);
  sub_100016290(v0 + *(*v0 + 672), &qword_100597358, &qword_1004B1650);
  sub_100016290(v0 + *(*v0 + 680), &qword_10059A658, &qword_1004B3858);
  sub_100016290(v0 + *(*v0 + 688), &qword_10059A658, &qword_1004B3858);
  v11 = *(v0 + *(*v0 + 712));

  v12 = *(v0 + *(*v0 + 720));

  v13 = *(v0 + *(*v0 + 728));

  sub_100023A78(v0 + *(*v0 + 736), type metadata accessor for NANDriverCapabilities);
  v14 = *(*v0 + 752);
  v15 = type metadata accessor for DispatchTime();
  (*(*(v15 - 8) + 8))(v0 + v14, v15);
  v16 = *(v0 + *(*v0 + 760) + 8);

  sub_100016290(v0 + *(*v0 + 768), &unk_100595C50, &unk_1004AFD20);
  sub_100016290(v0 + *(*v0 + 776), &unk_10059A690, &unk_1004884D0);
  sub_100016290(v0 + *(*v0 + 784), &unk_10059A690, &unk_1004884D0);
  sub_100016290(v0 + *(*v0 + 792), &unk_10059A690, &unk_1004884D0);
  v17 = *(v0 + *(*v0 + 800));
  swift_unownedRelease();
  v18 = *(v0 + *(*v0 + 808));

  v19 = *(v0 + *(*v0 + 816));

  v20 = *(v0 + *(*v0 + 824) + 8);
}

uint64_t sub_10041B934()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin();
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5, v0 + *(*v0 + 160), v1);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v37 = v9;
    *v8 = 136315138;
    v10 = WiFiInterface.description.getter();
    v12 = v11;

    v13 = sub_100002320(v10, v12, &v37);

    *(v8 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v6, v7, "Destroyed %s", v8, 0xCu);
    sub_100002A00(v9);
  }

  else
  {
  }

  (*(v2 + 8))(v5, v1);
  v14 = WiFiInterface.deinit();
  v15 = *(v14 + *(*v14 + 448));

  v16 = *(v14 + *(*v14 + 456));

  v17 = *(v14 + *(*v14 + 464));

  v18 = *(v14 + *(*v14 + 472));

  v19 = *(v14 + *(*v14 + 480));

  v20 = *(v14 + *(*v14 + 496));
  swift_unknownObjectRelease();

  v21 = *(v14 + *(*v14 + 512));

  v22 = *(v14 + *(*v14 + 520));

  v23 = *(v14 + *(*v14 + 552));

  v24 = *(v14 + *(*v14 + 560));

  sub_100016290(v14 + *(*v14 + 568), &unk_100597330, &unk_100481FA0);
  sub_100016290(v14 + *(*v14 + 576), &unk_100597330, &unk_100481FA0);
  sub_100016290(v14 + *(*v14 + 584), &qword_10059A650, &qword_1004B3850);
  sub_100016290(v14 + *(*v14 + 592), &unk_10059B160, &qword_1004B3050);
  sub_100016290(v14 + *(*v14 + 600), &qword_10059A6A8, &qword_1004B3888);
  sub_100016290(v14 + *(*v14 + 608), &unk_10059A670, &qword_1004B3870);
  sub_100016290(v14 + *(*v14 + 616), &qword_10059A668, &qword_1004B3868);
  sub_100016290(v14 + *(*v14 + 624), &qword_10059A660, &qword_1004B3860);
  sub_100016290(v14 + *(*v14 + 632), &qword_10059A6A0, &qword_1004B0738);
  sub_100016290(v14 + *(*v14 + 640), &qword_10059A680, &qword_1004B3878);
  sub_100016290(v14 + *(*v14 + 648), &unk_10059A3D0, &qword_1004B0730);
  sub_100016290(v14 + *(*v14 + 656), &qword_100597358, &qword_1004B1650);
  sub_100016290(v14 + *(*v14 + 664), &qword_100597358, &qword_1004B1650);
  sub_100016290(v14 + *(*v14 + 672), &qword_100597358, &qword_1004B1650);
  sub_100016290(v14 + *(*v14 + 680), &qword_10059A658, &qword_1004B3858);
  sub_100016290(v14 + *(*v14 + 688), &qword_10059A658, &qword_1004B3858);
  v25 = *(v14 + *(*v14 + 712));

  v26 = *(v14 + *(*v14 + 720));

  v27 = *(v14 + *(*v14 + 728));

  sub_100023A78(v14 + *(*v14 + 736), type metadata accessor for NANDriverCapabilities);
  v28 = *(*v14 + 752);
  v29 = type metadata accessor for DispatchTime();
  (*(*(v29 - 8) + 8))(v14 + v28, v29);
  v30 = *(v14 + *(*v14 + 760) + 8);

  sub_100016290(v14 + *(*v14 + 768), &unk_100595C50, &unk_1004AFD20);
  sub_100016290(v14 + *(*v14 + 776), &unk_10059A690, &unk_1004884D0);
  sub_100016290(v14 + *(*v14 + 784), &unk_10059A690, &unk_1004884D0);
  sub_100016290(v14 + *(*v14 + 792), &unk_10059A690, &unk_1004884D0);
  v31 = *(v14 + *(*v14 + 800));
  swift_unownedRelease();
  v32 = *(v14 + *(*v14 + 808));

  v33 = *(v14 + *(*v14 + 816));

  v34 = *(v14 + *(*v14 + 824) + 8);

  return v14;
}

uint64_t sub_10041C13C()
{
  v0 = *sub_10041B934();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_10041C1A8(uint64_t *a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4)
{
  v6 = *a1;
  v7 = a1[1];
  v8 = *(*a4 + 464);
  swift_beginAccess();
  v9 = *(a4 + v8);
  *(a4 + v8) = 0x8000000000000000;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_10046C304();
  }

  if (v6 < 0 || v6 >= 1 << *(v9 + 32))
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(v9 + 8 * (v6 >> 6) + 64) >> v6) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(v9 + 36) == v7)
  {
    v11 = *(v9 + 56);
    v12 = type metadata accessor for NANPeer(0);
    a2(v11 + *(*(v12 - 8) + 72) * v6);
    *(a4 + v8) = v9;
    swift_endAccess();
    return sub_100410C08();
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_10041C2DC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v8 = result;
  v9 = *(*result + 456);
  swift_beginAccess();
  v10 = sub_10040D43C(v29, a3 & 0xFFFFFFFFFFFFLL);
  if (!*v11)
  {
    (v10)(v29, 0);
LABEL_7:
    swift_endAccess();
    goto LABEL_8;
  }

  v12 = sub_10040D4B4(v28, a4);
  if (!*v13)
  {
    (v12)(v28, 0);
    (v10)(v29, 0);
    goto LABEL_7;
  }

  v14 = sub_1003ADC20(a1 + OBJC_IVAR____TtC7CoreP2P30WiFiPropertyUpdateRegistration_id);
  (v12)(v28, 0);
  (v10)(v29, 0);
  swift_endAccess();
  sub_100010520(v14);
LABEL_8:
  swift_beginAccess();
  v15 = *(v8 + v9);
  if (*(v15 + 16))
  {
    v16 = sub_100041DE8(a3 & 0xFFFFFFFFFFFFLL);
    if (v17)
    {
      v18 = *(*(v15 + 56) + 8 * v16);
      if (*(v18 + 16))
      {
        v19 = sub_1003E08F4(a4);
        if (v20)
        {
          v21 = *(*(v18 + 56) + 8 * v19);
          swift_endAccess();
          if (*(v21 + 16))
          {
            goto LABEL_16;
          }

          swift_beginAccess();
          v22 = sub_10040D43C(v29, a3 & 0xFFFFFFFFFFFFLL);
          if (*v23)
          {
            sub_100420F3C(a4);
            (v22)(v29, 0);
            swift_endAccess();

            goto LABEL_16;
          }

          (v22)(v29, 0);
        }
      }
    }
  }

  swift_endAccess();
LABEL_16:
  swift_beginAccess();
  v24 = *(v8 + v9);
  if (*(v24 + 16) && (v25 = sub_100041DE8(a3 & 0xFFFFFFFFFFFFLL), (v26 & 1) != 0))
  {
    v27 = *(*(v24 + 56) + 8 * v25);
    swift_endAccess();
    if (!*(v27 + 16))
    {
      swift_beginAccess();
      sub_100420EB0(a3 & 0xFFFFFFFFFFFFLL);
      swift_endAccess();
    }
  }

  else
  {
    swift_endAccess();
  }
}

uint64_t sub_10041C5F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v18 = *(v4 - 8);
  v5 = *(v18 + 64);
  __chkstk_darwin();
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  v8 = *(v17 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin();
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *OS_dispatch_queue.nan.unsafeMutableAddressor();
  aBlock[4] = a1;
  aBlock[5] = a2;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000C8B8;
  aBlock[3] = &unk_10057A8F8;
  v13 = _Block_copy(aBlock);
  v14 = v12;

  static DispatchQoS.unspecified.getter();
  v19 = _swiftEmptyArrayStorage;
  sub_100422ECC(&qword_10058BCC0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10005DC58(&unk_100595270, &unk_1004AEC80);
  sub_10000CADC(&qword_10058BCD0, &unk_100595270, &unk_1004AEC80);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v13);

  (*(v18 + 8))(v7, v4);
  (*(v8 + 8))(v11, v17);
}

uint64_t sub_10041C8AC(__int16 *a1)
{
  v1 = *a1;
  sub_1004119A4();
  sub_1000479A0(v1);
}

uint64_t sub_10041C8F8(uint64_t a1, uint64_t a2)
{
  v43 = a2;
  v44 = type metadata accessor for DriverEvent(0);
  v2 = *(*(v44 - 8) + 64);
  __chkstk_darwin();
  v4 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchTimeInterval();
  v41 = *(v5 - 8);
  v42 = v5;
  v6 = *(v41 + 64);
  __chkstk_darwin();
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchTime();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin();
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v15 = &v35 - v14;
  v16 = type metadata accessor for Logger();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin();
  v20 = &v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (*(result + *(*result + 552)))
    {
      v22 = *(*result + 160);
      v23 = v17;
      v24 = *(v17 + 16);
      v40 = result;
      v24(v20, result + v22, v16);
      (*(v10 + 16))(v15, v43, v9);
      v25 = Logger.logObject.getter();
      LODWORD(v43) = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v25, v43))
      {
        v26 = swift_slowAlloc();
        v37 = v4;
        v27 = v26;
        v39 = swift_slowAlloc();
        v45 = v39;
        *v27 = 136315138;
        type metadata accessor for P2PTimer();
        v36 = v25;
        variable initialization expression of AWDLPeer.lastUpdated();
        DispatchTime.distance(to:)();
        v38 = v23;
        v28 = *(v10 + 8);
        v28(v13, v9);
        v29 = DispatchTimeInterval.description.getter();
        v31 = v30;
        (*(v41 + 8))(v8, v42);
        v28(v15, v9);
        v32 = sub_100002320(v29, v31, &v45);

        v33 = v27;
        v34 = v36;
        v4 = v37;
        *(v33 + 1) = v32;
        _os_log_impl(&_mh_execute_header, v34, v43, "Watchdog reset timed out because it has been in progress since %s", v33, 0xCu);
        sub_100002A00(v39);

        (*(v38 + 8))(v20, v16);
      }

      else
      {

        (*(v10 + 8))(v15, v9);
        (*(v23 + 8))(v20, v16);
      }

      *v4 = 1;
      swift_storeEnumTagMultiPayload();
      sub_10001FEDC(v4);

      return sub_100023A78(v4, type metadata accessor for DriverEvent);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_10041CDC4(uint64_t a1)
{
  v2 = *(*(sub_10005DC58(&unk_100597330, &unk_100481FA0) - 8) + 64);
  __chkstk_darwin();
  v4 = &v8 - v3;
  type metadata accessor for P2PTimer();
  variable initialization expression of AWDLPeer.lastUpdated();
  v5 = type metadata accessor for DispatchTime();
  (*(*(v5 - 8) + 56))(v4, 0, 1, v5);
  v6 = *(*a1 + 568);
  swift_beginAccess();
  sub_1000B1B78(v4, a1 + v6, &unk_100597330, &unk_100481FA0);
  return swift_endAccess();
}

uint64_t sub_10041CEE8(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for DispatchTimeInterval();
  v38 = *(v3 - 8);
  v39 = v3;
  v4 = *(v38 + 64);
  __chkstk_darwin();
  v6 = &v32[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for DispatchTime();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin();
  v11 = &v32[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v13 = &v32[-v12];
  v14 = type metadata accessor for Logger();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin();
  v18 = &v32[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (*(result + *(*result + 552)))
    {
      v20 = *(*result + 160);
      v21 = *(v15 + 16);
      v37 = result;
      v21(v18, result + v20, v14);
      (*(v8 + 16))(v13, a2, v7);
      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v35 = v15;
        v25 = v24;
        v36 = swift_slowAlloc();
        v40 = v36;
        *v25 = 136315138;
        type metadata accessor for P2PTimer();
        v34 = v22;
        variable initialization expression of AWDLPeer.lastUpdated();
        DispatchTime.distance(to:)();
        v33 = v23;
        v26 = *(v8 + 8);
        v26(v11, v7);
        v27 = DispatchTimeInterval.description.getter();
        v29 = v28;
        (*(v38 + 8))(v6, v39);
        v26(v13, v7);
        v30 = sub_100002320(v27, v29, &v40);

        *(v25 + 4) = v30;
        v31 = v34;
        _os_log_impl(&_mh_execute_header, v34, v33, "Interface re-creation timed out because it has been in progress since %s", v25, 0xCu);
        sub_100002A00(v36);

        return (*(v35 + 8))(v18, v14);
      }

      else
      {

        (*(v8 + 8))(v13, v7);
        return (*(v15 + 8))(v18, v14);
      }
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_10041D328(uint64_t a1, uint64_t a2)
{
  v43 = a2;
  v44 = type metadata accessor for DriverEvent(0);
  v2 = *(*(v44 - 8) + 64);
  __chkstk_darwin();
  v4 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchTimeInterval();
  v41 = *(v5 - 8);
  v42 = v5;
  v6 = *(v41 + 64);
  __chkstk_darwin();
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchTime();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin();
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v15 = &v35 - v14;
  v16 = type metadata accessor for Logger();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin();
  v20 = &v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (*(result + *(*result + 560)))
    {
      v22 = *(*result + 160);
      v23 = v17;
      v24 = *(v17 + 16);
      v40 = result;
      v24(v20, result + v22, v16);
      (*(v10 + 16))(v15, v43, v9);
      v25 = Logger.logObject.getter();
      LODWORD(v43) = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v25, v43))
      {
        v26 = swift_slowAlloc();
        v37 = v4;
        v27 = v26;
        v39 = swift_slowAlloc();
        v45 = v39;
        *v27 = 136315138;
        type metadata accessor for P2PTimer();
        v36 = v25;
        variable initialization expression of AWDLPeer.lastUpdated();
        DispatchTime.distance(to:)();
        v38 = v23;
        v28 = *(v10 + 8);
        v28(v13, v9);
        v29 = DispatchTimeInterval.description.getter();
        v31 = v30;
        (*(v41 + 8))(v8, v42);
        v28(v15, v9);
        v32 = sub_100002320(v29, v31, &v45);

        v33 = v27;
        v34 = v36;
        v4 = v37;
        *(v33 + 1) = v32;
        _os_log_impl(&_mh_execute_header, v34, v43, "Waiting interface power on timed out because it has been in progress since %s", v33, 0xCu);
        sub_100002A00(v39);

        (*(v38 + 8))(v20, v16);
      }

      else
      {

        (*(v10 + 8))(v15, v9);
        (*(v23 + 8))(v20, v16);
      }

      *v4 = 5;
      swift_storeEnumTagMultiPayload();
      sub_10001FEDC(v4);

      return sub_100023A78(v4, type metadata accessor for DriverEvent);
    }

    else
    {
    }
  }

  return result;
}

unint64_t sub_10041D824()
{
  result = qword_10059A588;
  if (!qword_10059A588)
  {
    sub_10005DD04(&qword_10059A580, &qword_1004B37A8);
    sub_1001AC9A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10059A588);
  }

  return result;
}

void sub_10041D8A8()
{
  if (!qword_10059A5A8)
  {
    sub_10005DD04(&unk_10059A5B0, &unk_1004B2F30);
    sub_10041D918();
    v0 = type metadata accessor for MutableDriverProperty();
    if (!v1)
    {
      atomic_store(v0, &qword_10059A5A8);
    }
  }
}

unint64_t sub_10041D918()
{
  result = qword_1005995A0;
  if (!qword_1005995A0)
  {
    sub_10005DD04(&unk_10059A5B0, &unk_1004B2F30);
    sub_100218C7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005995A0);
  }

  return result;
}

void sub_10041D99C(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  if (!*a2)
  {
    a3();
    v4 = type metadata accessor for MutableDriverProperty();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_10041D9FC()
{
  if (!qword_10059A5E0)
  {
    sub_10005DD04(&qword_10059A5E8, &qword_1004B37B0);
    sub_10041DA6C();
    v0 = type metadata accessor for ObservableWiFiProperty();
    if (!v1)
    {
      atomic_store(v0, &qword_10059A5E0);
    }
  }
}

unint64_t sub_10041DA6C()
{
  result = qword_10059A5F0;
  if (!qword_10059A5F0)
  {
    sub_10005DD04(&qword_10059A5E8, &qword_1004B37B0);
    sub_1000E3950();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10059A5F0);
  }

  return result;
}

void sub_10041DAF0(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, void (*a5)(void))
{
  if (!*a2)
  {
    sub_10005DD04(a3, a4);
    a5();
    v7 = type metadata accessor for MutableDriverProperty();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_10041DB60()
{
  result = qword_10059A610;
  if (!qword_10059A610)
  {
    sub_10005DD04(&qword_10059A608, &qword_1004B37B8);
    sub_100422ECC(&qword_100592C68, type metadata accessor for NANAttribute);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10059A610);
  }

  return result;
}

unint64_t sub_10041DC14()
{
  result = qword_10059A630;
  if (!qword_10059A630)
  {
    sub_10005DD04(&qword_10059A628, &qword_1004B37C0);
    sub_10027BC90();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10059A630);
  }

  return result;
}

void sub_10041DC98(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_10041DCEC()
{
  v1 = v0;
  v2 = *v0;
  v3 = *(*(sub_10005DC58(&unk_100595C50, &unk_1004AFD20) - 8) + 64);
  __chkstk_darwin();
  v53 = v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v54 = v46 - v5;
  __chkstk_darwin();
  v49 = v46 - v6;
  __chkstk_darwin();
  v50 = v46 - v7;
  __chkstk_darwin();
  v59 = (v46 - v8);
  __chkstk_darwin();
  v10 = v46 - v9;
  v56 = v46 - v9;
  v11 = type metadata accessor for NANIdentityKey(0);
  v58 = *(v11 - 8);
  v13 = v58 + 56;
  v12 = *(v58 + 56);
  v55 = v11;
  v51 = v12;
  (v12)(v10, 1, 1);
  v14 = *(*v1 + 112);
  v15 = *(*(v2 + 440) + 8);
  v16 = *(v2 + 432);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v18 = *(AssociatedConformanceWitness + 128);
  v19 = swift_checkMetadataState();
  v52 = v14;
  v20 = v1;
  v18(v19, AssociatedConformanceWitness);
  v22 = v56;
  v21 = v57;
  LongTermPairingKeyStore.findIdentityKey()();
  sub_100016290(v22, &unk_100595C50, &unk_1004AFD20);

  if (!v21)
  {
    v47 = v18;
    v48 = v19;
    v46[0] = 0;
    v46[1] = AssociatedConformanceWitness + 128;
    v57 = AssociatedConformanceWitness;
    sub_10001CEA8(v59, v22, &unk_100595C50, &unk_1004AFD20);
    v24 = v50;
    sub_100012400(v22, v50, &unk_100595C50, &unk_1004AFD20);
    v25 = v58 + 48;
    v59 = *(v58 + 48);
    v26 = v59(v24, 1, v55);
    sub_100016290(v24, &unk_100595C50, &unk_1004AFD20);
    v27 = *(*v20 + 160);
    v28 = v20;
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.default.getter();
    v31 = os_log_type_enabled(v29, v30);
    v58 = v25;
    v46[2] = v13;
    if (v26 == 1)
    {
      if (v31)
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&_mh_execute_header, v29, v30, "pairing: NIK: Uninstalling all identities...", v32, 2u);
      }

      v33 = v28;
      v35 = v47;
      v34 = v48;
      v47(v48, v57);
      LongTermPairingKeyStore.uninstallAllIdentities()();

      v36 = Logger.logObject.getter();
      v37 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        *v38 = 0;
        _os_log_impl(&_mh_execute_header, v36, v37, "pairing: NIK: Installing a new NIK...", v38, 2u);
        v34 = v48;
      }

      v35(v34, v57);
      v39 = v49;
      LongTermPairingKeyStore.installIdentityKey()(v49);

      sub_100016290(v22, &unk_100595C50, &unk_1004AFD20);
      v40 = v55;
      v41 = v51;
      v51(v39, 0, 1, v55);
      sub_10001CEA8(v39, v22, &unk_100595C50, &unk_1004AFD20);
      v42 = v54;
    }

    else
    {
      if (v31)
      {
        v43 = swift_slowAlloc();
        *v43 = 0;
        _os_log_impl(&_mh_execute_header, v29, v30, "pairing: NIK: Using the existing NIK...", v43, 2u);
      }

      v42 = v54;
      v40 = v55;
      v33 = v28;
      v41 = v51;
    }

    v44 = v53;
    sub_100012400(v22, v53, &unk_100595C50, &unk_1004AFD20);
    result = v59(v44, 1, v40);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      sub_100423C3C(v44, v42, type metadata accessor for NANIdentityKey);
      v41(v42, 0, 1, v40);
      v45 = *(*v33 + 768);
      swift_beginAccess();
      sub_1000B1B78(v42, v33 + v45, &unk_100595C50, &unk_1004AFD20);
      swift_endAccess();
      v47(v48, v57);
      LongTermPairingKeyStore.loadPairedPeersWithIDs()();

      return sub_100016290(v22, &unk_100595C50, &unk_1004AFD20);
    }
  }

  return result;
}

uint64_t sub_10041E374(uint64_t a1, char *a2)
{
  v3 = *(*(sub_10005DC58(&unk_100595C00, &qword_10048F790) - 8) + 64);
  __chkstk_darwin();
  v5 = &v18 - v4;
  v6 = *a2;
  v7 = a2[1];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    *v5 = v6;
    v5[1] = v7;
    v10 = type metadata accessor for NANAttribute(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v10 - 8) + 56))(v5, 0, 1, v10);
    v11 = v9 + *(*v9 + 656);
    swift_beginAccess();
    v12 = sub_10005DC58(&qword_100597358, &qword_1004B1650);
    v20 = *(v11 + *(v12 + 40));

    sub_100337FA0(v5, 11);
    v21 = v20;
    MutableDriverProperty.wrappedValue.setter(&v21, v12);
    swift_endAccess();
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v14 = result;
    *v5 = v6;
    v5[1] = v7;
    v15 = type metadata accessor for NANAttribute(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v15 - 8) + 56))(v5, 0, 1, v15);
    v16 = v14 + *(*v14 + 664);
    swift_beginAccess();
    v17 = sub_10005DC58(&qword_100597358, &qword_1004B1650);
    v21 = *(v16 + *(v17 + 40));

    sub_100337FA0(v5, 11);
    v19 = v21;
    MutableDriverProperty.wrappedValue.setter(&v19, v17);
    swift_endAccess();
  }

  return result;
}

uint64_t sub_10041E624(uint64_t a1, uint64_t a2)
{
  v3 = *(*(sub_10005DC58(&unk_100595C00, &qword_10048F790) - 8) + 64);
  __chkstk_darwin();
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = &v30 - v6;
  v9 = *a2;
  v8 = *(a2 + 8);
  v10 = *(a2 + 16);
  v11 = *(a2 + 24) | (*(a2 + 28) << 32);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    v30 = v10;
    if (v8)
    {

      v14 = v11;
      v15 = v9;
      *v7 = NANAttribute.ExtendedWLANInfrastructure.init(network:)(v9, v8, v10 & 0xFFFFFFFFFFFFLL, v11 & 0xFFFFFFFFFFFFLL);
      *(v7 + 1) = v16;
      *(v7 + 4) = v17;
      v18 = type metadata accessor for NANAttribute(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v18 - 8) + 56))(v7, 0, 1, v18);
    }

    else
    {
      v14 = v11;
      v15 = v9;
      v19 = type metadata accessor for NANAttribute(0);
      (*(*(v19 - 8) + 56))(v7, 1, 1, v19);
    }

    v20 = v13 + *(*v13 + 656);
    swift_beginAccess();
    v21 = sub_10005DC58(&qword_100597358, &qword_1004B1650);
    v32 = *(v20 + *(v21 + 40));

    sub_100337FA0(v7, 30);
    v33 = v32;
    MutableDriverProperty.wrappedValue.setter(&v33, v21);
    swift_endAccess();

    v9 = v15;
    v10 = v30;
    v11 = v14;
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v23 = result;
    if (v8)
    {

      *v5 = NANAttribute.ExtendedWLANInfrastructure.init(network:)(v9, v8, v10 & 0xFFFFFFFFFFFFLL, v11 & 0xFFFFFFFFFFFFLL);
      *(v5 + 1) = v24;
      *(v5 + 4) = v25;
      v26 = type metadata accessor for NANAttribute(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v26 - 8) + 56))(v5, 0, 1, v26);
    }

    else
    {
      v27 = type metadata accessor for NANAttribute(0);
      (*(*(v27 - 8) + 56))(v5, 1, 1, v27);
    }

    v28 = v23 + *(*v23 + 664);
    swift_beginAccess();
    v29 = sub_10005DC58(&qword_100597358, &qword_1004B1650);
    v33 = *(v28 + *(v29 + 40));

    sub_100337FA0(v5, 30);
    v31 = v33;
    MutableDriverProperty.wrappedValue.setter(&v31, v29);
    swift_endAccess();
  }

  return result;
}

unint64_t sub_10041E9DC@<X0>(char *a1@<X0>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X8>)
{
  v4 = *a1;
  result = a2();
  if (*(result + 16))
  {
    v6 = result;
    result = sub_1003E08F4(v4);
    if (v7)
    {
      v8 = result;
      v9 = *(v6 + 56);
      v10 = type metadata accessor for NANAttribute(0);
      return sub_1000238F0(v9 + *(*(v10 - 8) + 72) * v8, a3, type metadata accessor for NANAttribute);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10041EA80()
{
  v2 = v1;
  v3 = v0;
  v4 = *v0;
  v186 = *(*v0 + 440);
  v5 = *(v186 + 8);
  v6 = *(v4 + 432);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v192 = *(AssociatedTypeWitness - 8);
  v7 = *(v192 + 64);
  __chkstk_darwin();
  v182 = &v167 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v185 = &v167 - v9;
  __chkstk_darwin();
  v188 = &v167 - v10;
  v11 = *(*(sub_10005DC58(&unk_10059A690, &unk_1004884D0) - 8) + 64);
  __chkstk_darwin();
  v181 = &v167 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v180 = &v167 - v13;
  __chkstk_darwin();
  v184 = &v167 - v14;
  __chkstk_darwin();
  v183 = &v167 - v15;
  __chkstk_darwin();
  v187 = &v167 - v16;
  __chkstk_darwin();
  v18 = &v167 - v17;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v19 = v3;
  swift_getAssociatedConformanceWitness();
  v20 = type metadata accessor for Preferences();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin();
  v190 = &v167 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v25 = &v167 - v24;
  sub_10040CAE8();
  v26 = sub_10033BF28();

  if ((v26 & 1) == 0)
  {
    WiFiInterface.preferences.getter();
    v28 = Preferences.enableMulticastKeys.getter(v20);
    v30 = *(v21 + 8);
    v29 = v21 + 8;
    v179 = v30;
    result = (v30)(v25, v20);
    if (v28)
    {
      v31 = v29;
      v32 = v19 + *(*v19 + 736);
      swift_beginAccess();
      result = type metadata accessor for NANDriverCapabilities();
      if (*(v32 + *(result + 64)) == 1)
      {
        v33 = v190;
        WiFiInterface.preferences.getter();
        v34 = Preferences.enableNANPairingLogs.getter(v20);
        v179(v33, v20);
        v173 = v31;
        if (v34)
        {
          v174 = v20;
          v198 = 0;
          v199 = 0xE000000000000000;
          v35 = *(*v19 + 776);
          swift_beginAccess();
          v172 = v19;
          sub_100012400(v19 + v35, v18, &unk_10059A690, &unk_1004884D0);
          v36 = type metadata accessor for SymmetricKey();
          v37 = *(v36 - 8);
          result = (*(v37 + 48))(v18, 1, v36);
          if (result == 1)
          {
            goto LABEL_54;
          }

          sub_10005DC58(&qword_10058D358, &unk_100486960);
          SymmetricKey.withUnsafeBytes<A>(_:)();
          v178 = v1;
          (*(v37 + 8))(v18, v36);
          v177 = v197;
          v38 = *(v197 + 16);
          if (v38)
          {
            v39 = (v177 + 32);
            v191 = xmmword_100480F40;
            do
            {
              v40 = *v39++;
              sub_10005DC58(&qword_100599FF0, &qword_100486D20);
              v41 = swift_allocObject();
              *(v41 + 16) = v191;
              *(v41 + 56) = &type metadata for UInt8;
              *(v41 + 64) = &protocol witness table for UInt8;
              *(v41 + 32) = v40;
              v42._countAndFlagsBits = String.init(format:_:)();
              String.append(_:)(v42);

              --v38;
            }

            while (v38);
          }

          v19 = v172;
          v43 = *(*v172 + 160);
          v44 = v198;
          v45 = v199;

          v46 = Logger.logObject.getter();
          v47 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v46, v47))
          {
            v48 = swift_slowAlloc();
            v197 = swift_slowAlloc();
            *v48 = 136315394;
            v49 = sub_100002320(v44, v45, &v197);

            *(v48 + 4) = v49;
            *(v48 + 12) = 2080;
            v50 = WiFiInterface.macAddress.getter();
            v51 = WiFiAddress.description.getter(v50 & 0xFFFFFFFFFFFFLL);
            v53 = v52;

            v54 = sub_100002320(v51, v53, &v197);

            *(v48 + 14) = v54;
            _os_log_impl(&_mh_execute_header, v46, v47, "Adding txGTK:%s for %s", v48, 0x16u);
            swift_arrayDestroy();
          }

          else
          {
          }

          v67 = AssociatedTypeWitness;
          v68 = v192;
          v20 = v174;
        }

        else
        {
          v55 = *(*v19 + 160);

          v56 = Logger.logObject.getter();
          v57 = static os_log_type_t.error.getter();
          v58 = os_log_type_enabled(v56, v57);
          v178 = v2;
          if (v58)
          {
            v59 = swift_slowAlloc();
            *&v191 = v59;
            v60 = swift_slowAlloc();
            v198 = v60;
            *v59 = 136315138;
            v61 = WiFiInterface.macAddress.getter();
            v62 = WiFiAddress.description.getter(v61 & 0xFFFFFFFFFFFFLL);
            v64 = v63;

            v65 = sub_100002320(v62, v64, &v198);

            v66 = v191;
            *(v191 + 4) = v65;
            _os_log_impl(&_mh_execute_header, v56, v57, "Adding txGTK for %s", v66, 0xCu);
            sub_100002A00(v60);
          }

          else
          {
          }

          v67 = AssociatedTypeWitness;
          v68 = v192;
        }

        v69 = *(*v19 + 96);
        swift_beginAccess();
        v70 = *(v68 + 16);
        v171 = v69;
        v71 = v188;
        v170 = v68 + 16;
        v169 = v70;
        v70();
        v72 = *(*v19 + 776);
        swift_beginAccess();
        v73 = v187;
        sub_100012400(v19 + v72, v187, &unk_10059A690, &unk_1004884D0);
        v74 = type metadata accessor for SymmetricKey();
        v75 = *(v74 - 8);
        v76 = *(v75 + 48);
        v177 = v74;
        v176 = v75 + 48;
        v175 = v76;
        result = (v76)(v73, 1);
        if (result != 1)
        {
          v77 = WiFiInterface.macAddress.getter();
          AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
          v79 = v71;
          v80 = v178;
          (*(AssociatedConformanceWitness + 344))(v73, 4, v77 & 0xFFFFFFFFFFFFLL, v67, AssociatedConformanceWitness);
          if (v80)
          {
            (*(v192 + 8))(v71, v67);
            return (*(v75 + 8))(v73, v177);
          }

          v186 = AssociatedConformanceWitness;
          v178 = 0;
          v81 = v192 + 8;
          v168 = *(v192 + 8);
          v168(v79, v67);
          v82 = *(v75 + 8);
          v83 = v177;
          v188 = (v75 + 8);
          v82(v73, v177);
          v84 = v83;
          v85 = v190;
          WiFiInterface.preferences.getter();
          LOBYTE(v83) = Preferences.enableNANPairingLogs.getter(v20);
          v179(v85, v20);
          v192 = v81;
          v167 = v82;
          if (v83)
          {
            v174 = v20;
            v195 = 0;
            v196 = 0xE000000000000000;
            v86 = *(*v19 + 784);
            swift_beginAccess();
            v172 = v19;
            v87 = v183;
            sub_100012400(v19 + v86, v183, &unk_10059A690, &unk_1004884D0);
            result = v175(v87, 1, v84);
            if (result == 1)
            {
LABEL_56:
              __break(1u);
              goto LABEL_57;
            }

            sub_10005DC58(&qword_10058D358, &unk_100486960);
            v88 = v178;
            SymmetricKey.withUnsafeBytes<A>(_:)();
            v178 = v88;
            v82(v87, v84);
            v89 = *(v193 + 16);
            if (v89)
            {
              v90 = (v193 + 32);
              v191 = xmmword_100480F40;
              do
              {
                v91 = *v90++;
                sub_10005DC58(&qword_100599FF0, &qword_100486D20);
                v92 = swift_allocObject();
                *(v92 + 16) = v191;
                *(v92 + 56) = &type metadata for UInt8;
                *(v92 + 64) = &protocol witness table for UInt8;
                *(v92 + 32) = v91;
                v93._countAndFlagsBits = String.init(format:_:)();
                String.append(_:)(v93);

                --v89;
              }

              while (v89);
            }

            v19 = v172;
            v94 = *(*v172 + 160);
            v96 = v195;
            v95 = v196;

            v97 = Logger.logObject.getter();
            v98 = static os_log_type_t.error.getter();

            if (os_log_type_enabled(v97, v98))
            {
              v99 = swift_slowAlloc();
              v193 = swift_slowAlloc();
              *v99 = 136315394;
              v100 = sub_100002320(v96, v95, &v193);

              *(v99 + 4) = v100;
              *(v99 + 12) = 2080;
              v101 = WiFiInterface.macAddress.getter();
              v102 = WiFiAddress.description.getter(v101 & 0xFFFFFFFFFFFFLL);
              v104 = v103;

              v105 = sub_100002320(v102, v104, &v193);

              *(v99 + 14) = v105;
              _os_log_impl(&_mh_execute_header, v97, v98, "Adding txIGTK:%s for %s", v99, 0x16u);
              swift_arrayDestroy();
            }

            else
            {
            }

            v119 = v178;
            v106 = AssociatedTypeWitness;
            v117 = v185;
            v118 = v184;
            v20 = v174;
            v120 = v177;
            v82 = v167;
          }

          else
          {
            v106 = v67;
            v107 = *(*v19 + 160);

            v108 = Logger.logObject.getter();
            v109 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v108, v109))
            {
              v110 = swift_slowAlloc();
              v111 = swift_slowAlloc();
              v195 = v111;
              *v110 = 136315138;
              v112 = WiFiInterface.macAddress.getter();
              v113 = WiFiAddress.description.getter(v112 & 0xFFFFFFFFFFFFLL);
              v174 = v20;
              v115 = v114;

              v116 = sub_100002320(v113, v115, &v195);
              v20 = v174;

              *(v110 + 4) = v116;
              _os_log_impl(&_mh_execute_header, v108, v109, "Adding txIGTK for %s", v110, 0xCu);
              sub_100002A00(v111);
              v82 = v167;
            }

            else
            {
            }

            v117 = v185;
            v118 = v184;
            v119 = v178;
            v120 = v177;
          }

          (v169)(v117, v19 + v171, v106);
          v121 = *(*v19 + 784);
          swift_beginAccess();
          sub_100012400(v19 + v121, v118, &unk_10059A690, &unk_1004884D0);
          result = v175(v118, 1, v120);
          if (result != 1)
          {
            v122 = WiFiInterface.macAddress.getter();
            (*(v186 + 328))(v118, 0, v122 & 0xFFFFFFFFFFFFLL, v106);
            if (v119)
            {
              v168(v117, v106);
              v123 = v118;
              v124 = v120;
              return (v82)(v123, v124);
            }

            v168(v117, v106);
            v82(v118, v120);
            v125 = v190;
            WiFiInterface.preferences.getter();
            v126 = v120;
            v127 = Preferences.enableNANPairingLogs.getter(v20);
            v179(v125, v20);
            if (v127)
            {
              v193 = 0;
              v194 = 0xE000000000000000;
              v128 = *(*v19 + 792);
              swift_beginAccess();
              v172 = v19;
              v129 = v180;
              sub_100012400(v19 + v128, v180, &unk_10059A690, &unk_1004884D0);
              result = v175(v129, 1, v126);
              if (result == 1)
              {
LABEL_58:
                __break(1u);
                return result;
              }

              sub_10005DC58(&qword_10058D358, &unk_100486960);
              SymmetricKey.withUnsafeBytes<A>(_:)();
              v178 = 0;
              v82(v129, v126);
              v130 = *(v200 + 16);
              if (v130)
              {
                v131 = (v200 + 32);
                v191 = xmmword_100480F40;
                do
                {
                  v132 = *v131++;
                  sub_10005DC58(&qword_100599FF0, &qword_100486D20);
                  v133 = swift_allocObject();
                  *(v133 + 16) = v191;
                  *(v133 + 56) = &type metadata for UInt8;
                  *(v133 + 64) = &protocol witness table for UInt8;
                  *(v133 + 32) = v132;
                  v134._countAndFlagsBits = String.init(format:_:)();
                  String.append(_:)(v134);

                  --v130;
                }

                while (v130);
              }

              v135 = v172;
              v136 = *(*v172 + 160);
              v138 = v193;
              v137 = v194;

              v139 = Logger.logObject.getter();
              v140 = static os_log_type_t.error.getter();

              if (os_log_type_enabled(v139, v140))
              {
                v141 = swift_slowAlloc();
                v200 = swift_slowAlloc();
                *v141 = 136315394;
                v142 = sub_100002320(v138, v137, &v200);

                *(v141 + 4) = v142;
                *(v141 + 12) = 2080;
                v143 = WiFiInterface.macAddress.getter();
                v144 = WiFiAddress.description.getter(v143 & 0xFFFFFFFFFFFFLL);
                v146 = v145;

                v147 = sub_100002320(v144, v146, &v200);

                *(v141 + 14) = v147;
                _os_log_impl(&_mh_execute_header, v139, v140, "Adding txBIGTK:%s for %s", v141, 0x16u);
                swift_arrayDestroy();
              }

              else
              {
              }

              v161 = AssociatedTypeWitness;
              v159 = v135;
              v160 = v182;
              v162 = v177;
              v82 = v167;
            }

            else
            {
              v148 = *(*v19 + 160);

              v149 = Logger.logObject.getter();
              v150 = v19;
              v151 = static os_log_type_t.error.getter();
              if (os_log_type_enabled(v149, v151))
              {
                v152 = swift_slowAlloc();
                v153 = swift_slowAlloc();
                v193 = v153;
                *v152 = 136315138;
                v154 = WiFiInterface.macAddress.getter();
                v155 = WiFiAddress.description.getter(v154 & 0xFFFFFFFFFFFFLL);
                v157 = v156;

                v158 = sub_100002320(v155, v157, &v193);
                v82 = v167;

                *(v152 + 4) = v158;
                _os_log_impl(&_mh_execute_header, v149, v151, "Adding txBIGTK for %s", v152, 0xCu);
                sub_100002A00(v153);
              }

              else
              {
              }

              v159 = v150;
              v160 = v182;
              v161 = v106;
              v162 = v177;
            }

            (v169)(v160, v159 + v171, v161);
            v163 = *(*v159 + 792);
            swift_beginAccess();
            v164 = v159 + v163;
            v165 = v181;
            sub_100012400(v164, v181, &unk_10059A690, &unk_1004884D0);
            result = v175(v165, 1, v162);
            if (result != 1)
            {
              v166 = WiFiInterface.macAddress.getter();
              (*(v186 + 336))(v165, 0, v166 & 0xFFFFFFFFFFFFLL, v161);
              v168(v160, v161);
              v123 = v165;
              v124 = v162;
              return (v82)(v123, v124);
            }

LABEL_57:
            __break(1u);
            goto LABEL_58;
          }

LABEL_55:
          __break(1u);
          goto LABEL_56;
        }

        __break(1u);
LABEL_54:
        __break(1u);
        goto LABEL_55;
      }
    }
  }

  return result;
}

char *sub_100420224@<X0>(char *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result || (v3 = result, v4 = a2 - result, a2 == result))
  {
    v5 = _swiftEmptyArrayStorage;
LABEL_7:
    *a3 = v5;
    return result;
  }

  v6 = a3;
  result = sub_100002728(a2 - result, 0);
  if (a2 > v3)
  {
    if ((v4 & 0x8000000000000000) == 0)
    {
      v5 = result;
      result = memmove(result + 32, v3, v4);
      a3 = v6;
      goto LABEL_7;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

BOOL sub_1004202B8(char *a1, uint64_t a2, uint64_t a3)
{
  v47 = a2;
  v48 = a3;
  v45 = type metadata accessor for DispatchTime();
  v43 = *(v45 - 8);
  v4 = *(v43 + 64);
  __chkstk_darwin();
  v41 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v39 = &v37 - v6;
  v46 = type metadata accessor for DispatchTimeInterval();
  v44 = *(v46 - 8);
  v7 = *(v44 + 64);
  __chkstk_darwin();
  v42 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v40 = &v37 - v9;
  v10 = sub_10005DC58(&qword_10059A688, &qword_1004B3880);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin();
  v38 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin();
  v15 = &v37 - v14;
  v16 = a1[1];
  v17 = a1[2];
  v18 = a1[3];
  v19 = a1[4];
  v20 = a1[5];
  *v15 = *a1;
  v15[1] = v16;
  v15[2] = v17;
  v15[3] = v18;
  v15[4] = v19;
  v15[5] = v20;
  sub_1000238F0(v47, &v37 + *(v13 + 48) - v14, type metadata accessor for NANPeer);
  sub_10040CAE8();
  v21 = sub_100349DAC();

  if (v21)
  {

    v22 = 1;
  }

  else
  {
    type metadata accessor for P2PTimer();
    v23 = v39;
    variable initialization expression of AWDLPeer.lastUpdated();
    v24 = v38;
    sub_100012400(v15, v38, &qword_10059A688, &qword_1004B3880);
    v25 = v24 + *(v10 + 48);
    v26 = type metadata accessor for NANPeer(0);
    v27 = v43;
    v28 = v41;
    v29 = v45;
    (*(v43 + 16))(v41, v25 + *(v26 + 24), v45);
    sub_100023A78(v25, type metadata accessor for NANPeer);
    v30 = v40;
    DispatchTime.distance(to:)();
    v31 = *(v27 + 8);
    v31(v28, v29);
    v31(v23, v29);
    v32 = v42;
    *v42 = 30;
    v33 = v44;
    v34 = v46;
    (*(v44 + 104))(v32, enum case for DispatchTimeInterval.seconds(_:), v46);
    v22 = static DispatchTimeInterval.< infix(_:_:)();
    v35 = *(v33 + 8);
    v35(v32, v34);
    v35(v30, v34);
  }

  sub_100016290(v15, &qword_10059A688, &qword_1004B3880);
  return v22;
}

BOOL sub_1004206C4(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(sub_10005DC58(&qword_100597420, &qword_1004B16B8) - 8) + 64);
  __chkstk_darwin();
  v7 = &v21 - v6;
  v8 = *a1;
  v9 = a1[1];
  v10 = *(a1 + 2);
  v11 = *(*a3 + 464);
  swift_beginAccess();
  v12 = *(a3 + v11);
  if (*(v12 + 16) && (v13 = sub_100041DE8(v8 | (v9 << 8) | (v10 << 16)), (v14 & 1) != 0))
  {
    v15 = v13;
    v16 = *(v12 + 56);
    v17 = type metadata accessor for NANPeer(0);
    v18 = *(v17 - 8);
    sub_1000238F0(v16 + *(v18 + 72) * v15, v7, type metadata accessor for NANPeer);
    (*(v18 + 56))(v7, 0, 1, v17);
  }

  else
  {
    v17 = type metadata accessor for NANPeer(0);
    (*(*(v17 - 8) + 56))(v7, 1, 1, v17);
  }

  swift_endAccess();
  type metadata accessor for NANPeer(0);
  v19 = (*(*(v17 - 8) + 48))(v7, 1, v17) != 1;
  sub_100016290(v7, &qword_100597420, &qword_1004B16B8);
  return v19;
}

uint64_t sub_1004208F0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = sub_100041DE8(a1 & 0xFFFFFFFFFFFFLL);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  v7 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *v2;
  v13 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_10046A894();
    v9 = v13;
  }

  v10 = v6;
  v11 = *(*(v9 + 56) + 8 * v6);
  sub_100477104(v10, v9);
  *v2 = v9;
  return v11;
}

uint64_t sub_10042097C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = sub_10000B448(a1);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  v7 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *v2;
  v12 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_10046B0EC();
    v9 = v12;
  }

  v10 = *(*(v9 + 56) + 8 * v6);
  sub_10000BED4(v6, v9);
  *v2 = v9;
  return v10;
}

uint64_t sub_100420A24(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *v2;
  v5 = sub_1000102E8(a1, a2);
  v7 = v6;
  if (v6)
  {
    v8 = v5;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v15 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_10046CFA0();
      v11 = v15;
    }

    v12 = *(*(v11 + 48) + 16 * v8 + 8);

    v13 = *(*(v11 + 56) + v8);
    sub_100469554(v8, v11);
    *v3 = v11;
  }

  else
  {
    v13 = 0;
  }

  return v13 & 0xFFFFFEFF | (((v7 & 1) == 0) << 8);
}

uint64_t sub_100420BD0@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t (*a3)(void)@<X2>, void (*a4)(unint64_t, uint64_t)@<X3>, void (*a5)(void)@<X4>, uint64_t a6@<X8>)
{
  v11 = v6;
  v13 = *v6;
  v14 = sub_10002A440(a1);
  if (v15)
  {
    v16 = v14;
    v17 = *v11;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v11;
    v32 = *v11;
    if (!isUniquelyReferenced_nonNull_native)
    {
      a5();
      v19 = v32;
    }

    v20 = *(v19 + 48);
    v21 = type metadata accessor for UUID();
    v22 = v16;
    (*(*(v21 - 8) + 8))(v20 + *(*(v21 - 8) + 72) * v16, v21);
    v23 = *(v19 + 56);
    v24 = a2(0);
    v31 = *(v24 - 8);
    sub_100423C3C(v23 + *(v31 + 72) * v22, a6, a3);
    a4(v22, v19);
    *v11 = v19;
    v25 = *(v31 + 56);
    v26 = a6;
    v27 = 0;
    v28 = v24;
  }

  else
  {
    v29 = a2(0);
    v25 = *(*(v29 - 8) + 56);
    v28 = v29;
    v26 = a6;
    v27 = 1;
  }

  return v25(v26, v27, 1, v28);
}

uint64_t sub_100420E10(uint64_t a1, void (*a2)(uint64_t, uint64_t), void (*a3)(void))
{
  v6 = v3;
  v7 = *v3;
  v8 = sub_100085268(a1);
  if ((v9 & 1) == 0)
  {
    return 0;
  }

  v10 = v8;
  v11 = *v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *v6;
  v16 = *v6;
  if (!isUniquelyReferenced_nonNull_native)
  {
    a3();
    v13 = v16;
  }

  v14 = *(*(v13 + 56) + 8 * v10);
  a2(v10, v13);
  *v6 = v13;
  return v14;
}

uint64_t sub_100420EB0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = sub_100041DE8(a1 & 0xFFFFFFFFFFFFLL);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  v7 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *v2;
  v13 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_10046A558();
    v9 = v13;
  }

  v10 = v6;
  v11 = *(*(v9 + 56) + 8 * v6);
  sub_10046840C(v10, v9);
  *v2 = v9;
  return v11;
}

uint64_t sub_100420F3C(char a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = sub_1003E08F4(a1);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  v7 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *v2;
  v13 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_10046A3FC();
    v9 = v13;
  }

  v10 = v6;
  v11 = *(*(v9 + 56) + 8 * v6);
  sub_10046A24C(v10, v9);
  *v2 = v9;
  return v11;
}

uint64_t (*sub_100420FC4(uint64_t *a1, unsigned __int8 a2))()
{
  if (&_swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x50uLL);
  }

  v6 = v5;
  *a1 = v5;
  v7 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6[8] = sub_1001AAA94(v6);
  v6[9] = sub_1004214C4(v6 + 4, a2, isUniquelyReferenced_nonNull_native);
  return sub_100423CFC;
}

uint64_t (*sub_100421068(uint64_t *a1, uint64_t a2))()
{
  if (&_swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x68uLL);
  }

  v6 = v5;
  *a1 = v5;
  v7 = type metadata accessor for UUID();
  v6[8] = v7;
  v8 = *(v7 - 8);
  v9 = v8;
  v6[9] = v8;
  if (&_swift_coroFrameAlloc)
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(*(v8 + 64));
  }

  v11 = v10;
  v6[10] = v10;
  v12 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  (*(v9 + 16))(v11, a2, v7);
  v6[11] = sub_1001AAA60(v6);
  v6[12] = sub_1004219B8(v6 + 4, v11, isUniquelyReferenced_nonNull_native);
  return sub_1004211A4;
}

uint64_t (*sub_1004211A8(uint64_t *a1, uint64_t a2))()
{
  if (&_swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x68uLL);
  }

  v6 = v5;
  *a1 = v5;
  v7 = type metadata accessor for UUID();
  v6[8] = v7;
  v8 = *(v7 - 8);
  v9 = v8;
  v6[9] = v8;
  if (&_swift_coroFrameAlloc)
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(*(v8 + 64));
  }

  v11 = v10;
  v6[10] = v10;
  v12 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  (*(v9 + 16))(v11, a2, v7);
  v6[11] = sub_1001AAA94(v6);
  v6[12] = sub_100421F78(v6 + 4, v11, isUniquelyReferenced_nonNull_native);
  return sub_100423CF8;
}

void sub_1004212E4(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 88);
  v4 = *(*a1 + 72);
  v3 = *(*a1 + 80);
  v5 = *(*a1 + 64);
  (*(*a1 + 96))();
  (*(v4 + 8))(v3, v5);
  v2(v1, 0);
  free(v3);

  free(v1);
}

uint64_t (*sub_10042137C(uint64_t *a1, char a2))()
{
  if (&_swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x50uLL);
  }

  v6 = v5;
  *a1 = v5;
  v7 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6[8] = sub_1001AAA94(v6);
  v6[9] = sub_100422228((v6 + 4), a2, isUniquelyReferenced_nonNull_native);
  return sub_100423CFC;
}

uint64_t (*sub_100421420(uint64_t *a1, uint64_t a2))()
{
  if (&_swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x50uLL);
  }

  v6 = v5;
  *a1 = v5;
  v7 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6[8] = sub_1001AAA94(v6);
  v6[9] = sub_10042238C(v6 + 4, a2 & 0xFFFFFFFFFFFFLL, isUniquelyReferenced_nonNull_native);
  return sub_1001A9E3C;
}

void (*sub_1004214C4(uint64_t *a1, unsigned __int8 a2, char a3))(uint64_t *a1, char a2)
{
  v4 = v3;
  if (&_swift_coroFrameAlloc)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x58uLL);
  }

  v9 = v8;
  *a1 = v8;
  *v8 = v3;
  *(v8 + 80) = a2;
  v10 = type metadata accessor for NANPeer.Service(0);
  *(v9 + 8) = v10;
  v11 = *(v10 - 8);
  v12 = v11;
  *(v9 + 16) = v11;
  v13 = *(v11 + 64);
  if (&_swift_coroFrameAlloc)
  {
    *(v9 + 24) = swift_coroFrameAlloc();
    *(v9 + 32) = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    *(v9 + 24) = malloc(*(v11 + 64));
    *(v9 + 32) = malloc(v13);
    v14 = malloc(v13);
  }

  *(v9 + 40) = v14;
  v15 = *(*(sub_10005DC58(&unk_1005985D0, &unk_1004B17A0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    *(v9 + 48) = swift_coroFrameAlloc();
    *(v9 + 56) = swift_coroFrameAlloc();
    v16 = swift_coroFrameAlloc();
  }

  else
  {
    *(v9 + 48) = malloc(v15);
    *(v9 + 56) = malloc(v15);
    v16 = malloc(v15);
  }

  v17 = v16;
  *(v9 + 64) = v16;
  v18 = *v4;
  v19 = sub_10007CCC8(a2);
  *(v9 + 81) = v20 & 1;
  v21 = *(v18 + 16);
  v22 = (v20 & 1) == 0;
  v23 = __OFADD__(v21, v22);
  v24 = v21 + v22;
  if (v23)
  {
    __break(1u);
    goto LABEL_22;
  }

  v25 = v20;
  v26 = *(v18 + 24);
  if (v26 < v24 || (a3 & 1) == 0)
  {
    if (v26 >= v24 && (a3 & 1) == 0)
    {
      v27 = v19;
      sub_10046BD28();
      v19 = v27;
      goto LABEL_17;
    }

    sub_100311584(v24, a3 & 1);
    v28 = *v4;
    v19 = sub_10007CCC8(a2);
    if ((v25 & 1) == (v29 & 1))
    {
      goto LABEL_17;
    }

LABEL_22:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_17:
  *(v9 + 72) = v19;
  if (v25)
  {
    sub_100423C3C(*(*v4 + 56) + *(v12 + 72) * v19, v17, type metadata accessor for NANPeer.Service);
    v30 = 0;
  }

  else
  {
    v30 = 1;
  }

  (*(v12 + 56))(v17, v30, 1, v10);
  return sub_100421780;
}

void sub_100421780(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 8);
  v4 = (*(*a1 + 16) + 48);
  v5 = *(*a1 + 64);
  if (a2)
  {
    v6 = *(v2 + 48);
    sub_100012400(v5, v6, &unk_1005985D0, &unk_1004B17A0);
    v7 = (*v4)(v6, 1, v3);
    v8 = *(v2 + 81);
    v9 = *(v2 + 48);
    if (v7 != 1)
    {
      v10 = *v2;
      sub_100423C3C(v9, *(v2 + 32), type metadata accessor for NANPeer.Service);
      v11 = *v10;
      v12 = *(v2 + 72);
      v13 = *(v2 + 32);
      if ((v8 & 1) == 0)
      {
LABEL_4:
        v14 = *(v2 + 24);
        v15 = *(v2 + 80);
        sub_100423C3C(v13, v14, type metadata accessor for NANPeer.Service);
        sub_1002DD628(v12, v15, v14, v11);
        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v16 = *(v2 + 56);
    sub_100012400(v5, v16, &unk_1005985D0, &unk_1004B17A0);
    v17 = (*v4)(v16, 1, v3);
    v8 = *(v2 + 81);
    v9 = *(v2 + 56);
    if (v17 != 1)
    {
      v18 = *v2;
      sub_100423C3C(v9, *(v2 + 40), type metadata accessor for NANPeer.Service);
      v11 = *v18;
      v12 = *(v2 + 72);
      v13 = *(v2 + 40);
      if ((v8 & 1) == 0)
      {
        goto LABEL_4;
      }

LABEL_9:
      sub_100423C3C(v13, v11[7] + *(*(v2 + 16) + 72) * v12, type metadata accessor for NANPeer.Service);
      goto LABEL_10;
    }
  }

  sub_100016290(v9, &unk_1005985D0, &unk_1004B17A0);
  if (v8)
  {
    sub_1004688EC(*(v2 + 72), **v2);
  }

LABEL_10:
  v19 = *(v2 + 56);
  v20 = *(v2 + 64);
  v22 = *(v2 + 40);
  v21 = *(v2 + 48);
  v24 = *(v2 + 24);
  v23 = *(v2 + 32);
  sub_100016290(v20, &unk_1005985D0, &unk_1004B17A0);
  free(v20);
  free(v19);
  free(v21);
  free(v22);
  free(v23);
  free(v24);

  free(v2);
}

void (*sub_1004219B8(void *a1, uint64_t a2, char a3))(uint64_t a1, char a2)
{
  v4 = v3;
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x78uLL);
  }

  v8 = v7;
  *a1 = v7;
  *v7 = a2;
  v7[1] = v3;
  v9 = type metadata accessor for UUID();
  v8[2] = v9;
  v10 = *(v9 - 8);
  v8[3] = v10;
  if (&_swift_coroFrameAlloc)
  {
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v11 = malloc(*(v10 + 64));
  }

  v8[4] = v11;
  v12 = type metadata accessor for ConnectedSession(0);
  v8[5] = v12;
  v13 = *(v12 - 8);
  v14 = v13;
  v8[6] = v13;
  v15 = *(v13 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v8[7] = swift_coroFrameAlloc();
    v8[8] = swift_coroFrameAlloc();
    v16 = swift_coroFrameAlloc();
  }

  else
  {
    v8[7] = malloc(*(v13 + 64));
    v8[8] = malloc(v15);
    v16 = malloc(v15);
  }

  v8[9] = v16;
  v17 = *(*(sub_10005DC58(&qword_100597578, &qword_1004B1860) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v8[10] = swift_coroFrameAlloc();
    v8[11] = swift_coroFrameAlloc();
    v18 = swift_coroFrameAlloc();
  }

  else
  {
    v8[10] = malloc(v17);
    v8[11] = malloc(v17);
    v18 = malloc(v17);
  }

  v19 = v18;
  v8[12] = v18;
  v20 = *v4;
  v22 = sub_10002A440(a2);
  *(v8 + 112) = v21 & 1;
  v23 = *(v20 + 16);
  v24 = (v21 & 1) == 0;
  v25 = v23 + v24;
  if (__OFADD__(v23, v24))
  {
    __break(1u);
    goto LABEL_26;
  }

  v26 = v21;
  v27 = *(v20 + 24);
  if (v27 < v25 || (a3 & 1) == 0)
  {
    if (v27 >= v25 && (a3 & 1) == 0)
    {
      sub_10046D5AC();
      goto LABEL_21;
    }

    sub_1003136D4(v25, a3 & 1);
    v28 = *v4;
    v29 = sub_10002A440(a2);
    if ((v26 & 1) == (v30 & 1))
    {
      v22 = v29;
      goto LABEL_21;
    }

LABEL_26:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_21:
  v8[13] = v22;
  if (v26)
  {
    sub_100423C3C(*(*v4 + 56) + *(v14 + 72) * v22, v19, type metadata accessor for ConnectedSession);
    v31 = 0;
  }

  else
  {
    v31 = 1;
  }

  (*(v14 + 56))(v19, v31, 1, v12);
  return sub_100421CE8;
}

void sub_100421CE8(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 40);
  v4 = (*(*a1 + 48) + 48);
  v5 = *(*a1 + 96);
  if (a2)
  {
    v6 = v2[10];
    sub_100012400(v5, v6, &qword_100597578, &qword_1004B1860);
    v7 = (*v4)(v6, 1, v3);
    v8 = *(v2 + 112);
    v9 = v2[10];
    if (v7 != 1)
    {
      v10 = v2[1];
      sub_100423C3C(v9, v2[8], type metadata accessor for ConnectedSession);
      v11 = *v10;
      v12 = v2[13];
      v13 = v2[8];
      if ((v8 & 1) == 0)
      {
LABEL_4:
        v14 = v2[7];
        v15 = v2[4];
        (*(v2[3] + 16))(v15, *v2, v2[2]);
        sub_100423C3C(v13, v14, type metadata accessor for ConnectedSession);
        sub_1002DDD30(v12, v15, v14, v11);
        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v16 = v2[11];
    sub_100012400(v5, v16, &qword_100597578, &qword_1004B1860);
    v17 = (*v4)(v16, 1, v3);
    v8 = *(v2 + 112);
    v9 = v2[11];
    if (v17 != 1)
    {
      v20 = v2[1];
      sub_100423C3C(v9, v2[9], type metadata accessor for ConnectedSession);
      v11 = *v20;
      v12 = v2[13];
      v13 = v2[9];
      if ((v8 & 1) == 0)
      {
        goto LABEL_4;
      }

LABEL_9:
      sub_100423C3C(v13, v11[7] + *(v2[6] + 72) * v12, type metadata accessor for ConnectedSession);
      goto LABEL_10;
    }
  }

  sub_100016290(v9, &qword_100597578, &qword_1004B1860);
  if (v8)
  {
    v18 = v2[13];
    v19 = *v2[1];
    (*(v2[3] + 8))(*(v19 + 48) + *(v2[3] + 72) * v18, v2[2]);
    sub_100469890(v18, v19);
  }

LABEL_10:
  v21 = v2[11];
  v22 = v2[12];
  v24 = v2[9];
  v23 = v2[10];
  v26 = v2[7];
  v25 = v2[8];
  v27 = v2[4];
  sub_100016290(v22, &qword_100597578, &qword_1004B1860);
  free(v22);
  free(v21);
  free(v23);
  free(v24);
  free(v25);
  free(v26);
  free(v27);

  free(v2);
}

void (*sub_100421F78(uint64_t *a1, uint64_t a2, char a3))(uint64_t **a1)
{
  v4 = v3;
  if (&_swift_coroFrameAlloc)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x40uLL);
  }

  v9 = v8;
  *a1 = v8;
  *(v8 + 8) = a2;
  *(v8 + 16) = v3;
  v10 = type metadata accessor for UUID();
  *(v9 + 24) = v10;
  v11 = *(v10 - 8);
  *(v9 + 32) = v11;
  if (&_swift_coroFrameAlloc)
  {
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v12 = malloc(*(v11 + 64));
  }

  *(v9 + 40) = v12;
  v13 = *v3;
  v14 = sub_10002A440(a2);
  *(v9 + 56) = v15 & 1;
  v16 = *(v13 + 16);
  v17 = (v15 & 1) == 0;
  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v18)
  {
    __break(1u);
    goto LABEL_19;
  }

  v20 = v15;
  v21 = *(v13 + 24);
  if (v21 < v19 || (a3 & 1) == 0)
  {
    if (v21 >= v19 && (a3 & 1) == 0)
    {
      v22 = v14;
      sub_10046E3BC();
      v14 = v22;
      goto LABEL_14;
    }

    sub_100314818(v19, a3 & 1);
    v23 = *v4;
    v14 = sub_10002A440(a2);
    if ((v20 & 1) == (v24 & 1))
    {
      goto LABEL_14;
    }

LABEL_19:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_14:
  *(v9 + 48) = v14;
  if (v20)
  {
    v25 = *(*(*v4 + 56) + 8 * v14);
  }

  else
  {
    v25 = 0;
  }

  *v9 = v25;
  return sub_100422128;
}

void sub_100422128(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(*a1 + 56);
  if (v2)
  {
    v4 = *v1[2];
    v5 = v1[6];
    if ((*a1)[7])
    {
      *(v4[7] + 8 * v5) = v2;
    }

    else
    {
      v8 = v1[5];
      (*(v1[4] + 16))(v8, v1[1], v1[3]);
      sub_1002DDAE4(v5, v8, v2, v4);
    }
  }

  else if ((*a1)[7])
  {
    v6 = v1[6];
    v7 = *v1[2];
    (*(v1[4] + 8))(*(v7 + 48) + *(v1[4] + 72) * v6, v1[3]);
    sub_1004698A8(v6, v7);
  }

  v9 = v1[5];
  v10 = *v1;

  free(v9);

  free(v1);
}

Swift::Int (*sub_100422228(uint64_t a1, char a2, char a3))(Swift::Int result)
{
  v4 = v3;
  *(a1 + 8) = v3;
  *(a1 + 24) = a2;
  v8 = *v3;
  v9 = sub_1003E08F4(a2);
  *(a1 + 25) = v10 & 1;
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_13;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_10046A3FC();
      v9 = v17;
      goto LABEL_8;
    }

    sub_10030F148(v14, a3 & 1);
    v18 = *v4;
    v9 = sub_1003E08F4(a2);
    if ((v15 & 1) == (v19 & 1))
    {
      goto LABEL_8;
    }

LABEL_13:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_8:
  *(a1 + 16) = v9;
  if (v15)
  {
    v20 = *(*(*v4 + 56) + 8 * v9);
  }

  else
  {
    v20 = 0;
  }

  *a1 = v20;
  return sub_100422344;
}

Swift::Int sub_100422344(Swift::Int result)
{
  v1 = *result;
  v2 = *(result + 25);
  if (*result)
  {
    v3 = **(result + 8);
    if (*(result + 25))
    {
      *(v3[7] + 8 * *(result + 16)) = v1;
    }

    else
    {
      return sub_10002D508(*(result + 16), *(result + 24), v1, v3);
    }
  }

  else if (*(result + 25))
  {
    return sub_10046A24C(*(result + 16), **(result + 8));
  }

  return result;
}

void (*sub_10042238C(uint64_t *a1, uint64_t a2, char a3))(uint64_t **a1)
{
  v4 = v3;
  if (&_swift_coroFrameAlloc)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x28uLL);
  }

  v9 = v8;
  *a1 = v8;
  *(v8 + 8) = a2;
  *(v8 + 16) = v3;
  v10 = *v3;
  v11 = sub_100041DE8(a2 & 0xFFFFFFFFFFFFLL);
  *(v9 + 32) = v12 & 1;
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 >= v16 && (a3 & 1) == 0)
    {
      v19 = v11;
      sub_10046A558();
      v11 = v19;
      goto LABEL_11;
    }

    sub_10030F3E4(v16, a3 & 1);
    v20 = *v4;
    v11 = sub_100041DE8(a2 & 0xFFFFFFFFFFFFLL);
    if ((v17 & 1) == (v21 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_11:
  *(v9 + 24) = v11;
  if (v17)
  {
    v22 = *(*(*v4 + 56) + 8 * v11);
  }

  else
  {
    v22 = 0;
  }

  *v9 = v22;
  return sub_1004224D4;
}

void sub_1004224D4(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(*a1 + 32);
  if (v2)
  {
    v4 = v1[3];
    v5 = *v1[2];
    if (v3)
    {
      *(v5[7] + 8 * v4) = v2;
    }

    else
    {
      sub_1002DD3A0(v4, v1[1] & 0xFFFFFFFFFFFFLL, v2, v5);
    }
  }

  else if ((*a1)[4])
  {
    sub_10046840C(v1[3], *v1[2]);
  }

  v6 = *v1;

  free(v1);
}

uint64_t sub_10042256C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *, unint64_t, uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void *, uint64_t, uint64_t))
{
  v10 = *(a3 + 32);
  v11 = ((1 << v10) + 63) >> 6;
  if ((v10 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    __chkstk_darwin();
    v13 = &v18 - ((v12 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v13, v12);
    result = a4(v13, v11, a3, a1, a2);
    if (v5)
    {
      return swift_willThrow();
    }

    return result;
  }

  v16 = swift_slowAlloc();
  v17 = sub_100422AA8(v16, v11, a3, a1, a2, a5);

  if (!v5)
  {
    return v17;
  }

  return result;
}

uint64_t sub_1004226FC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(int *, uint64_t *))
{
  v22 = 0;
  v21 = result;
  v5 = 0;
  v6 = a3 + 64;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    v15 = *(a3 + 56);
    v16 = *(a3 + 48) + 6 * v14;
    v17 = *(v16 + 4);
    v26 = *v16;
    v27 = v17;
    v25 = *(v15 + 8 * v14);

    v18 = a4(&v26, &v25);

    if (v4)
    {
      return result;
    }

    if (v18)
    {
      *(v21 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v22++, 1))
      {
        __break(1u);
        return sub_100369030(v21, a2, v22, a3);
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      return sub_100369030(v21, a2, v22, a3);
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *sub_100422880(unint64_t *a1, uint64_t a2, void *a3, uint64_t (*a4)(int *, char *))
{
  v31 = a4;
  v27 = a2;
  v28 = a1;
  v30 = *(type metadata accessor for NANPeer(0) - 8);
  v6 = *(v30 + 64);
  result = __chkstk_darwin();
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = 0;
  v10 = 0;
  v32 = a3;
  v13 = a3[8];
  v12 = a3 + 8;
  v11 = v13;
  v14 = 1 << *(v12 - 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & v11;
  v17 = (v14 + 63) >> 6;
  while (v16)
  {
    v18 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
LABEL_11:
    v21 = v18 | (v10 << 6);
    v22 = v32[7];
    v23 = v32[6] + 6 * v21;
    v24 = *(v23 + 4);
    v33 = *v23;
    v34 = v24;
    sub_1000238F0(v22 + *(v30 + 72) * v21, v9, type metadata accessor for NANPeer);
    v25 = v31(&v33, v9);
    result = sub_100023A78(v9, type metadata accessor for NANPeer);
    if (v4)
    {
      return result;
    }

    if (v25)
    {
      *(v28 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      if (__OFADD__(v29++, 1))
      {
        __break(1u);
        return sub_1003692DC(v28, v27, v29, v32);
      }
    }
  }

  v19 = v10;
  while (1)
  {
    v10 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v10 >= v17)
    {
      return sub_1003692DC(v28, v27, v29, v32);
    }

    v20 = v12[v10];
    ++v19;
    if (v20)
    {
      v18 = __clz(__rbit64(v20));
      v16 = (v20 - 1) & v20;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *sub_100422AA8(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void *, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v8 = result;
      v9 = a2;
      bzero(result, 8 * a2);
      result = v8;
      a2 = v9;
    }

    v10 = a6(result, a2, a3);

    return v10;
  }

  return result;
}

uint64_t sub_100422B48(uint64_t *a1)
{
  v2 = *a1;
  sub_10005DC58(&qword_10059A628, &qword_1004B37C0);
  _print_unlocked<A, B>(_:_:)();
  return 0;
}

uint64_t sub_100422BAC(__int128 *a1)
{
  v2 = *a1;
  _print_unlocked<A, B>(_:_:)();
  return 0;
}

uint64_t sub_100422C00(int *a1)
{
  v2 = *a1;
  v3 = *(a1 + 2);
  _print_unlocked<A, B>(_:_:)();
  return 0;
}

uint64_t sub_100422C74(unsigned __int16 *a1)
{
  WORD4(v2) = 0;
  *&v2 = *a1;
  _print_unlocked<A, B>(_:_:)();
  return *(&v2 + 2);
}

uint64_t sub_100422CC4(unsigned __int8 *a1)
{
  BYTE8(v2) = 0;
  *&v2 = *a1;
  _print_unlocked<A, B>(_:_:)();
  return *(&v2 + 1);
}

uint64_t sub_100422D18()
{
  v1 = v0 + *(*v0 + 656);
  swift_beginAccess();
  return *(v1 + *(sub_10005DC58(&qword_100597358, &qword_1004B1650) + 40));
}

uint64_t sub_100422D84()
{
  v1 = v0 + *(*v0 + 672);
  swift_beginAccess();
  return *(v1 + *(sub_10005DC58(&qword_100597358, &qword_1004B1650) + 40));
}

uint64_t sub_100422DF0()
{
  v1 = v0 + *(*v0 + 680);
  swift_beginAccess();
  return *(v1 + *(sub_10005DC58(&qword_10059A658, &qword_1004B3858) + 40));
}

uint64_t sub_100422E5C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_100410EDC();
}

uint64_t sub_100422EA8(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_10041C2DC(a1, *(v1 + 32), *(v1 + 40) | (*(v1 + 42) << 16), *(v1 + 46));
}

uint64_t sub_100422ECC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100422F14()
{
  v1 = v0 + *(*v0 + 664);
  swift_beginAccess();
  return *(v1 + *(sub_10005DC58(&qword_100597358, &qword_1004B1650) + 40));
}

uint64_t sub_100422F80()
{
  v1 = v0 + *(*v0 + 688);
  swift_beginAccess();
  return *(v1 + *(sub_10005DC58(&qword_10059A658, &qword_1004B3858) + 40));
}

uint64_t sub_100423008(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1, a1[1]);
}

uint64_t sub_100423054(unsigned __int16 *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

uint64_t sub_10042307C(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(a1 & 0xFFFFFFFFFFFFLL);
}

uint64_t sub_1004230A8(unsigned int *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1 | (*(a1 + 4) << 32) | (*(a1 + 5) << 40));
}

uint64_t sub_1004230E4(unsigned int *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1 | (*(a1 + 2) << 32));
}

uint64_t sub_100423118(unsigned int *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1 | (*(a1 + 4) << 32) | (*(a1 + 5) << 40) | (*(a1 + 6) << 48), *(a1 + 1));
}

uint64_t sub_1004231E4(uint64_t a1, uint64_t (*a2)(uint64_t, unint64_t, uint64_t, uint64_t))
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(v6 + 8);
  v8 = *(swift_getAssociatedTypeWitness() - 8);
  return a2(a1, v2 + ((*(v8 + 80) + 32) & ~*(v8 + 80)), v5, v6);
}

void sub_10042328C(void *a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = *(*(type metadata accessor for Logger() - 8) + 80);
  v6 = v1[4];

  sub_100417754(a1);
}

uint64_t sub_100423314(char a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = *(type metadata accessor for Logger() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  return sub_100417A28(a1 & 1, v1[4], v1 + v6, *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_1004233C4(char a1)
{
  v2 = v1[2];
  v3 = v1[3];
  return sub_10041A0C8(a1 & 1, v1[4]);
}

uint64_t sub_1004233D4(unsigned __int8 *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

uint64_t sub_100423400(char a1)
{
  v2 = v1[2];
  v3 = v1[3];
  return sub_10041A1E0(a1 & 1, v1[4]);
}

uint64_t sub_100423410(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NANDriverCapabilities();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100423474(uint64_t a1, char *a2)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[4];
  return sub_10041E374(a1, a2);
}

uint64_t sub_100423480(uint64_t a1, uint64_t a2)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[4];
  return sub_10041E624(a1, a2);
}

uint64_t sub_1004234BC(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 40) & ~v4;
  v6 = *(v3 + 64);
  v7 = *(v1 + 32);

  (*(v3 + 8))(v1 + v5, v2);

  return _swift_deallocObject(v1, v5 + v6, v4 | 7);
}

uint64_t sub_1004235A0(uint64_t (*a1)(uint64_t, char *, uint64_t, uint64_t))
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = *(type metadata accessor for DispatchTime() - 8);
  v5 = v1[4];
  v6 = v1 + ((*(v4 + 80) + 40) & ~*(v4 + 80));

  return a1(v5, v6, v2, v3);
}

uint64_t sub_1004236E0(uint64_t a1, uint64_t (*a2)(uint64_t, unint64_t, uint64_t, uint64_t))
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(v6 + 8);
  v8 = *(swift_getAssociatedTypeWitness() - 8);
  return a2(a1, v2 + ((*(v8 + 80) + 32) & ~*(v8 + 80)), v5, v6);
}

uint64_t sub_100423788(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(v6 + 8);
  v8 = *(swift_getAssociatedTypeWitness() - 8);
  return sub_1004166F4(a1 & 0xFFFFFFFFFFFFFFLL, a2, v2 + ((*(v8 + 80) + 32) & ~*(v8 + 80)), v5, v6);
}

uint64_t sub_1004238B4(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(v6 + 8);
  v8 = *(swift_getAssociatedTypeWitness() - 8);
  return sub_100415DEC(a1, a2, v2 + ((*(v8 + 80) + 32) & ~*(v8 + 80)), v5, v6);
}

uint64_t sub_100423988(uint64_t a1, uint64_t (*a2)(uint64_t, unint64_t, uint64_t, uint64_t))
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(v6 + 8);
  v8 = *(swift_getAssociatedTypeWitness() - 8);
  return a2(a1, v2 + ((*(v8 + 80) + 32) & ~*(v8 + 80)), v5, v6);
}

uint64_t sub_100423A5C(uint64_t a1, uint64_t (*a2)(uint64_t, unint64_t, uint64_t, uint64_t))
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(v6 + 8);
  v8 = *(swift_getAssociatedTypeWitness() - 8);
  return a2(a1 & 0xFFFFFFFFFFFFLL, v2 + ((*(v8 + 80) + 32) & ~*(v8 + 80)), v5, v6);
}

uint64_t sub_100423B04()
{
  v1 = *(v0 + 16);
  v2 = *(*(v0 + 24) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 32) & ~v5;
  v7 = *(v4 + 64);
  (*(v4 + 8))(v0 + v6, AssociatedTypeWitness);

  return _swift_deallocObject(v0, v6 + v7, v5 | 7);
}

uint64_t sub_100423BA4(char a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v4 + 8);
  v6 = *(swift_getAssociatedTypeWitness() - 8);
  return sub_1004157BC(a1 & 1, v1 + ((*(v6 + 80) + 32) & ~*(v6 + 80)), v3, v4);
}

uint64_t sub_100423C3C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100423D04()
{
  result = type metadata accessor for Logger();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = type metadata accessor for DispatchTime();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      return swift_initClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_100423E3C()
{
  v1 = *(v0 + qword_10059BBE8);
  swift_unownedRetainStrong();
  WiFiInterface.preferences.getter();
}

double sub_100423E8C@<D0>(uint64_t a1@<X8>)
{
  v3 = qword_10059A6F8;
  swift_beginAccess();
  sub_100012400(v1 + v3, &v6, &qword_10059A808, &qword_1004B3A48);
  if (*(&v7 + 1) == 1)
  {
    sub_100016290(&v6, &qword_10059A808, &qword_1004B3A48);
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    sub_100012400(a1, &v6, &qword_10059A800, &qword_1004B3A40);
    swift_beginAccess();
    sub_1004276AC(&v6, v1 + v3);
    swift_endAccess();
  }

  else
  {
    result = *&v6;
    v5 = v7;
    *a1 = v6;
    *(a1 + 16) = v5;
    *(a1 + 32) = v8;
  }

  return result;
}

uint64_t sub_100423F7C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = qword_10059A6F8;
  swift_beginAccess();
  sub_1004276AC(v5, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_100423FE0(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  LODWORD(v63) = a4;
  v65 = a2;
  v66 = a3;
  v6 = *v4;
  v59 = type metadata accessor for DispatchTimeInterval();
  v57 = *(v59 - 8);
  v7 = *(v57 + 64);
  __chkstk_darwin();
  v60 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v54 = &v53 - v9;
  __chkstk_darwin();
  v58 = &v53 - v10;
  v11 = *(v6 + 88);
  v12 = *(v11 + 8);
  v13 = *(v6 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = *(AssociatedTypeWitness - 8);
  v16 = v15[8];
  __chkstk_darwin();
  v56 = &v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v19 = &v53 - v18;
  v64 = v4;
  v20 = *(v4 + qword_10059BBE8);
  swift_unownedRetainStrong();
  v21 = *(*v20 + 96);
  swift_beginAccess();
  v55 = v15[2];
  v55(v19, v20 + v21, AssociatedTypeWitness);

  v61 = v11;
  v62 = v13;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 440))(a1 & 0xFFFFFFFFFFFFLL, v65 & 0xFFFFFFFFFFFFLL, v66 & 0xFFFFFFFFFFFFLL, v63 & 0x1FFFF, AssociatedTypeWitness, AssociatedConformanceWitness);
  v63 = a1;
  v23 = v62;
  v24 = v15[1];
  v24(v19, AssociatedTypeWitness);
  v25 = v65;
  v26 = v64;
  if ((v66 & 0xFF00000000) != 0x300000000)
  {
    v53 = v24;
    swift_unownedRetainStrong();
    v27 = *(*v20 + 96);
    swift_beginAccess();
    v28 = v20 + v27;
    v29 = v56;
    v55(v56, v28, AssociatedTypeWitness);

    (*(AssociatedConformanceWitness + 144))(v66 & 0xFFFFFFFFFFFFLL, AssociatedTypeWitness, AssociatedConformanceWitness);
    v53(v29, AssociatedTypeWitness);
  }

  if (*(v26 + qword_10059A720) == 1)
  {
    type metadata accessor for MulticastReceiverManager();
    swift_getWitnessTable();
    v30 = type metadata accessor for LinkStatsAccumulator();

    v31 = sub_1004476CC();

    v32 = &off_10057BA98;
  }

  else
  {
    v30 = 0;
    v32 = 0;
    v31 = 0;
    v67[1] = 0;
    v67[2] = 0;
  }

  v34 = v59;
  v33 = v60;
  v35 = v58;
  v36 = v57;
  v68 = v30;
  v69 = v32;
  v67[0] = v31;
  sub_100423F7C(v67);
  v37 = v26 + qword_10059A730;
  v38 = v63;
  *(v37 + 4) = WORD2(v63);
  *v37 = v38;
  *(v37 + 6) = 0;
  v39 = v26 + qword_10059A738;
  *v39 = v25;
  *(v39 + 4) = WORD2(v25);
  *(v39 + 6) = 0;
  sub_100423E8C(v67);
  v40 = v68;
  result = sub_100016290(v67, &qword_10059A800, &qword_1004B3A40);
  if (v40)
  {
    *v35 = 60;
    v42 = *(v36 + 104);
    v42(v35, enum case for DispatchTimeInterval.seconds(_:), v34);
    v43 = *OS_dispatch_queue.nan.unsafeMutableAddressor();
    v44 = swift_allocObject();
    swift_weakInit();
    v45 = swift_allocObject();
    v46 = v61;
    v45[2] = v23;
    v45[3] = v46;
    v45[4] = v44;
    v47 = v54;
    v42(v54, enum case for DispatchTimeInterval.never(_:), v34);
    *v33 = 100;
    v42(v33, enum case for DispatchTimeInterval.milliseconds(_:), v34);
    v48 = type metadata accessor for P2PTimer();
    v49 = *(v48 + 48);
    v50 = *(v48 + 52);
    swift_allocObject();
    v51 = P2PTimer.init(deadlineAfter:on:repeating:leeway:_:)(v35, v43, v47, v33, sub_10042771C, v45);
    v52 = *(v26 + qword_10059A710);
    *(v26 + qword_10059A710) = v51;
  }

  return result;
}

uint64_t sub_10042471C(uint64_t a1)
{
  v2 = *(v1 + qword_10059A700);
  *(v1 + qword_10059A700) = a1;
}

void sub_100424760(uint64_t a1, int a2, uint64_t a3, void (*a4)(char *, char *, uint64_t), uint64_t (*a5)(char *, uint64_t, uint64_t), int a6, int a7)
{
  v64 = a7;
  v65 = a2;
  LODWORD(v67) = a6;
  v66 = a3;
  v63 = a1;
  v10 = *(*(*v7 + 88) + 8);
  v11 = *(*v7 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(AssociatedTypeWitness - 8);
  v14 = v13[8];
  __chkstk_darwin();
  v16 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v18 = &v55 - v17;
  v19 = *(*(type metadata accessor for NANAttribute.CustomDeviceInformation(0) - 8) + 64);
  __chkstk_darwin();
  v20 = __chkstk_darwin();
  v23 = &v55 - v22;
  if (*(v7 + qword_10059A738 + 6))
  {
    v67 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v67, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      v26 = "invalid peer MAC address";
LABEL_7:
      _os_log_impl(&_mh_execute_header, v67, v24, v26, v25, 2u);

      goto LABEL_8;
    }

    goto LABEL_8;
  }

  if (*(v7 + qword_10059A730 + 6))
  {
    v67 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v67, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      v26 = "invalid multicast address";
      goto LABEL_7;
    }

LABEL_8:
    v27 = v67;

    return;
  }

  v59 = a4;
  v60 = a5;
  v58 = *(v7 + qword_10059A738) | (*(v7 + qword_10059A738 + 4) << 32);
  v62 = v7;
  v28 = *(v7 + qword_10059BBE8);
  v57 = v21;
  v56 = v20;
  swift_unownedRetainStrong();
  v29 = *v28;
  v61 = v23;
  v30 = *(v29 + 96);
  swift_beginAccess();
  v55 = v13[2];
  v55(v18, &v28[v30], AssociatedTypeWitness);

  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v32 = (*(AssociatedConformanceWitness + 32))(AssociatedTypeWitness, AssociatedConformanceWitness);
  v33 = v13[1];
  v33(v18, AssociatedTypeWitness);
  swift_unownedRetainStrong();
  v34 = *(*v28 + 96);
  swift_beginAccess();
  v55(v16, &v28[v34], AssociatedTypeWitness);

  LOBYTE(AssociatedConformanceWitness) = (*(AssociatedConformanceWitness + 24))(AssociatedTypeWitness, AssociatedConformanceWitness);
  v33(v16, AssociatedTypeWitness);
  v35 = v61;
  v36 = &v61[*(v56 + 28)];
  NANAttribute.CustomDeviceInformation.CustomAttributes.init()(v36);
  *v35 = v32;
  *(v35 + 1) = AssociatedConformanceWitness;
  *(v35 + 4) = 0;
  v37 = *(type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes(0) + 52);
  v38 = *(v36 + v37);
  v39 = v63;

  *(v36 + v37) = v39;
  v40 = v57;
  sub_10020E818(v35, v57);
  v41 = NANActionFrame.init(customDeviceInformation:)(v40);
  v43 = v42;
  v44 = v41;
  swift_unownedRetainStrong();
  sub_10040DD50();
  v45 = v62;

  v69[0] = 0;
  v69[1] = v44;
  v69[2] = v43;
  v69[3] = 0;
  v70 = 2;
  v46 = *(v45 + qword_10059A740) | (*(v45 + qword_10059A740 + 4) << 32);
  v47 = v58;
  if ((v46 & 0xFF00000000) == 0x300000000)
  {
    sub_1003A8260(v69, v58 & 0xFFFFFFFFFFFFLL, v65 & 1, v66, v59, v60, v67 & 1, 1, v64, NANBitmap.Channel.operatingClass.getter, 0);
  }

  else
  {
    sub_1003A8260(v69, v58 & 0xFFFFFFFFFFFFLL, v65 & 1, v66, v59, v60, v67 & 1, SBYTE4(v46), v64, NANBitmap.Channel.operatingClass.getter, 0);
  }

  sub_100048C4C(v44);

  v48 = Logger.logObject.getter();
  v49 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v68 = v51;
    *v50 = 136315138;
    v52 = WiFiAddress.description.getter(v47 & 0xFFFFFFFFFFFFLL);
    v54 = sub_100002320(v52, v53, &v68);

    *(v50 + 4) = v54;
    _os_log_impl(&_mh_execute_header, v48, v49, "Sent link condition feedback to %s", v50, 0xCu);
    sub_100002A00(v51);
    v35 = v61;
  }

  sub_100427630(v35);
}

void sub_100424F8C(uint64_t a1)
{
  v2 = v1;
  sub_100423E8C(v27);
  v4 = v28;
  sub_100016290(v27, &qword_10059A800, &qword_1004B3A40);
  if (v4)
  {
    if ((*(v2 + qword_10059A738 + 6) & 1) != 0 || !static NANClusterChangeEvent.__derived_struct_equals(_:_:)(a1 & 0xFFFFFFFFFFFFLL, *(v2 + qword_10059A738) | (*(v2 + qword_10059A738 + 4) << 32)))
    {
      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v27[0] = v12;
        *v11 = 136315138;
        v13 = WiFiAddress.description.getter(a1 & 0xFFFFFFFFFFFFLL);
        v15 = sub_100002320(v13, v14, v27);

        *(v11 + 4) = v15;
        _os_log_impl(&_mh_execute_header, v9, v10, "invalid peer MAC address %s", v11, 0xCu);
        sub_100002A00(v12);
      }
    }

    else
    {
      v5 = *(v2 + qword_10059A730 + 6);
      v6 = Logger.logObject.getter();
      if (v5)
      {
        v7 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v6, v7))
        {
          v8 = swift_slowAlloc();
          *v8 = 0;
          _os_log_impl(&_mh_execute_header, v6, v7, "invalid multicast address", v8, 2u);
        }
      }

      else
      {
        v16 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v6, v16))
        {
          v17 = swift_slowAlloc();
          v18 = swift_slowAlloc();
          v27[0] = v18;
          *v17 = 136315138;
          v19 = WiFiAddress.description.getter(a1 & 0xFFFFFFFFFFFFLL);
          v21 = sub_100002320(v19, v20, v27);

          *(v17 + 4) = v21;
          _os_log_impl(&_mh_execute_header, v6, v16, "Received Link condition request from %s", v17, 0xCu);
          sub_100002A00(v18);
        }

        sub_100423E8C(v27);
        if (v28)
        {
          sub_10002B154(v27, v24);
          sub_100016290(v27, &qword_10059A800, &qword_1004B3A40);
          v22 = v25;
          v23 = v26;
          sub_100029B34(v24, v25);
          (*(v23 + 8))(v22, v23);
          sub_100002A00(v24);
        }

        else
        {
          sub_100016290(v27, &qword_10059A800, &qword_1004B3A40);
        }
      }
    }
  }
}

void sub_1004252D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v35 = a3;
  v36 = a4;
  v8 = *v4;
  v9 = type metadata accessor for DispatchTimeInterval();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin();
  v13 = (&v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v15 = &v33 - v14;
  __chkstk_darwin();
  v17 = (&v33 - v16);
  sub_100423E8C(v40);
  v18 = v41;
  sub_100016290(v40, &qword_10059A800, &qword_1004B3A40);
  if (v18 && (*(v5 + qword_10059A738 + 6) & 1) == 0 && static NANClusterChangeEvent.__derived_struct_equals(_:_:)(a1 & 0xFFFFFFFFFFFFLL, *(v5 + qword_10059A738) | (*(v5 + qword_10059A738 + 4) << 32)))
  {
    if (*(v5 + qword_10059A730 + 6))
    {
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&_mh_execute_header, v19, v20, "invalid multicast address", v21, 2u);
      }
    }

    else
    {
      sub_100423E8C(v40);
      v22 = v41;
      sub_100016290(v40, &qword_10059A800, &qword_1004B3A40);
      if (v22)
      {
        *v17 = 60;
        v33 = *(v10 + 104);
        v33(v17, enum case for DispatchTimeInterval.seconds(_:), v9);
        v34 = *OS_dispatch_queue.nan.unsafeMutableAddressor();
        v23 = swift_allocObject();
        swift_weakInit();
        v24 = swift_allocObject();
        v24[2] = *(v8 + 80);
        v24[3] = *(v8 + 88);
        v24[4] = v23;
        v25 = v33;
        v33(v15, enum case for DispatchTimeInterval.never(_:), v9);
        *v13 = 100;
        v25(v13, enum case for DispatchTimeInterval.milliseconds(_:), v9);
        v26 = type metadata accessor for P2PTimer();
        v27 = *(v26 + 48);
        v28 = *(v26 + 52);
        swift_allocObject();
        v29 = P2PTimer.init(deadlineAfter:on:repeating:leeway:_:)(v17, v34, v15, v13, sub_10042768C, v24);
        v30 = *(v5 + qword_10059A710);
        *(v5 + qword_10059A710) = v29;
      }

      sub_100423E8C(v40);
      if (v41)
      {
        sub_10002B154(v40, v37);
        sub_100016290(v40, &qword_10059A800, &qword_1004B3A40);
        v31 = v38;
        v32 = v39;
        sub_100029B34(v37, v38);
        (*(v32 + 16))(a2, v35, v36, v31, v32);
        sub_100002A00(v37);
      }

      else
      {
        sub_100016290(v40, &qword_10059A800, &qword_1004B3A40);
      }
    }
  }
}

uint64_t sub_1004256E4()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10042573C();
  }

  return result;
}

void sub_10042573C()
{
  if (*(v0 + qword_10059A738 + 6))
  {
    oslog = Logger.logObject.getter();
    v1 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v1))
    {
      v2 = swift_slowAlloc();
      *v2 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v1, "invalid peer MAC address", v2, 2u);
    }
  }

  else
  {
    v3 = *(v0 + qword_10059A738) | (*(v0 + qword_10059A738 + 4) << 32);
    v4 = *(v0 + qword_10059BBE8);
    swift_unownedRetainStrong();
    sub_10040CAE8();

    sub_10034A4D4(*(v0 + qword_10059A708), v3, 0);
  }
}

void sub_10042587C(unsigned int *a1)
{
  v3 = *(type metadata accessor for DispatchTime() - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v5 = __chkstk_darwin();
  v8 = &v110 - v7;
  if (*(v1 + qword_10059A738 + 6))
  {
    v125 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v125, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v125, v9, "invalid peer MAC address", v10, 2u);
    }

    v11 = v125;

    return;
  }

  v12 = *a1 | (*(a1 + 2) << 32);
  if ((v12 & 0xFF00000000) == 0x300000000)
  {
    return;
  }

  v13 = a1[6];
  if (!v13)
  {
    return;
  }

  v14 = *(a1 + 15);
  v15 = *(v14 + 16);
  if (!v15)
  {
    return;
  }

  v16 = HIDWORD(v12);
  v17 = *(a1 + 13);
  v18 = *(a1 + 14);
  v19 = *(v1 + qword_10059A740) | (*(v1 + qword_10059A740 + 4) << 32);
  if ((v19 & 0xFF00000000) == 0x300000000)
  {
    if (v16 != 1)
    {
      return;
    }
  }

  else if (((0x801004u >> (8 * v16)) & 0xFFC) != ((0x801004u >> ((v19 >> 29) & 0xF8)) & 0xFFC))
  {
    return;
  }

  v111 = v8;
  v112 = v6;
  v114 = v5;
  v20 = sub_100082094(_swiftEmptyArrayStorage);
  v121 = a1;
  v21 = 100 * a1[7];
  if ((v21 & 0xFFFFFFFF00000000) != 0)
  {
    LODWORD(v21) = v13 >> 22;
    if (v13 >> 22)
    {
      v119 = 0;
      goto LABEL_22;
    }

    v119 = 0;
  }

  else
  {
    v119 = 0;
    if (v13 >> 22)
    {
      goto LABEL_22;
    }
  }

  if (v13 << 10)
  {
    v22 = v21 / (v13 << 10);
    if (v22 > 0xFF)
    {
      v22 = 0;
    }

    v119 = v22;
  }

LABEL_22:
  v23 = 100 * v121[8];
  if ((v23 & 0xFFFFFFFF00000000) != 0)
  {
    LODWORD(v23) = v13 >> 22;
    if (v13 >> 22)
    {
      v118 = 0;
      goto LABEL_30;
    }

    v118 = 0;
  }

  else
  {
    v118 = 0;
    if (v13 >> 22)
    {
      goto LABEL_30;
    }
  }

  if (v13 << 10)
  {
    v24 = v23 / (v13 << 10);
    if (v24 > 0xFF)
    {
      v24 = 0;
    }

    v118 = v24;
  }

LABEL_30:
  v25 = 100 * v121[9];
  if ((v25 & 0xFFFFFFFF00000000) != 0)
  {
    LODWORD(v25) = v13 >> 22;
    if (v13 >> 22)
    {
      v117 = 0;
      goto LABEL_38;
    }

    v117 = 0;
  }

  else
  {
    v117 = 0;
    if (v13 >> 22)
    {
      goto LABEL_38;
    }
  }

  if (v13 << 10)
  {
    v26 = v25 / (v13 << 10);
    if (v26 > 0xFF)
    {
      v26 = 0;
    }

    v117 = v26;
  }

LABEL_38:
  v27 = 100 * v121[10];
  v120 = v1;
  v110 = v17;
  v115 = v18;
  v113 = v3;
  if ((v27 & 0xFFFFFFFF00000000) != 0)
  {
    LODWORD(v27) = v13 >> 22;
    if (!(v13 >> 22))
    {
      v116 = 0;
      goto LABEL_42;
    }

    v116 = 0;
  }

  else
  {
    v116 = 0;
    if (!(v13 >> 22))
    {
LABEL_42:
      if (v13 << 10)
      {
        v28 = v27 / (v13 << 10);
        if (v28 > 0xFF)
        {
          v28 = 0;
        }

        v116 = v28;
      }
    }
  }

  v29 = 0;
  v30 = (v14 + 93);
  while (1)
  {
    v34 = *(v30 - 5);
    v35 = *(v30 - 9);
    v36 = *(v30 - 1);
    v32 = *v30;
    if (v20[2].isa)
    {
      sub_10007CCC8(*(v30 - 1));
      if (v37)
      {
        break;
      }
    }

    v124 = v29;
    v125 = v15;
    v122 = v34;
    LODWORD(v123) = v32;
    v48 = v32;
    NANMulticastStatsPerMCS.init(packets:MPDU:snr:)(&v133, v34, v35, v48);
    v50 = v49;
    v52 = v51;
    v54 = v53;
    v56 = v55;
    v57 = v20;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v126 = v57;
    v60 = sub_10007CCC8(v36);
    v61 = *(v57 + 16);
    v62 = (v59 & 1) == 0;
    v63 = v61 + v62;
    if (__OFADD__(v61, v62))
    {
      __break(1u);
LABEL_92:
      __break(1u);
LABEL_93:
      __break(1u);
      goto LABEL_94;
    }

    v64 = v59;
    if (*(v57 + 24) >= v63)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_100196294();
      }
    }

    else
    {
      sub_10018E770(v63, isUniquelyReferenced_nonNull_native);
      v65 = sub_10007CCC8(v36);
      if ((v64 & 1) != (v66 & 1))
      {
        goto LABEL_95;
      }

      v60 = v65;
    }

    v20 = v126;
    if (v64)
    {
      v31 = v126[7].isa + 32 * v60;
      *v31 = v50;
      *(v31 + 8) = v52;
      *(v31 + 16) = v54;
      *(v31 + 24) = v56 & 1;
    }

    else
    {
      v126[(v60 >> 6) + 8].isa = (v126[(v60 >> 6) + 8].isa | (1 << v60));
      *(v20[6].isa + v60) = v36;
      v67 = v20[7].isa + 32 * v60;
      *v67 = v50;
      *(v67 + 8) = v52;
      *(v67 + 16) = v54;
      *(v67 + 24) = v56 & 1;
      isa = v20[2].isa;
      v44 = __OFADD__(isa, 1);
      v69 = (isa + 1);
      if (v44)
      {
        goto LABEL_92;
      }

      v20[2].isa = v69;
    }

    v15 = v125;
    v29 = v124;
    LOBYTE(v32) = v123;
    v33 = v122;
LABEL_49:
    v29 += v33;
    v30 += 64;
    v15 = (v15 - 1);
    if (!v15)
    {
      goto LABEL_72;
    }
  }

  v38 = v20;
  v20 = v34;
  v39 = swift_isUniquelyReferenced_nonNull_native();
  v130 = v38;
  v40 = sub_10007CCC8(v36);
  v42 = *(v38 + 16);
  v43 = (v41 & 1) == 0;
  v44 = __OFADD__(v42, v43);
  v45 = v42 + v43;
  if (v44)
  {
    goto LABEL_93;
  }

  v46 = v41;
  if (*(v38 + 24) < v45)
  {
    sub_10018E770(v45, v39);
    v40 = sub_10007CCC8(v36);
    if ((v46 & 1) != (v47 & 1))
    {
      goto LABEL_95;
    }

LABEL_66:
    v33 = v20;
    if ((v46 & 1) == 0)
    {
      goto LABEL_71;
    }

    goto LABEL_67;
  }

  if (v39)
  {
    goto LABEL_66;
  }

  v81 = v40;
  sub_100196294();
  v40 = v81;
  v33 = v20;
  if (v46)
  {
LABEL_67:
    v20 = v130;
    v70 = v40;
    v71 = 32 * v40;
    v72 = v130[7].isa + 32 * v40;
    v73 = *v72;
    v74 = *(v72 + 8);
    v75 = *(v72 + 16);
    LOBYTE(v72) = *(v72 + 24);
    v126 = v73;
    v127 = v74;
    v128 = v75;
    LOWORD(v129) = v72;
    v76 = v32;
    NANMulticastStatsPerMCS.addValues(packets:MPDU:snr:)(v33, v35, v76);
    if ((v129 & 0x100) != 0)
    {
      sub_1004691DC(v70, v20);
    }

    else
    {
      v77 = v129;
      v79 = v127;
      v78 = v128;
      v80 = v20[7].isa + v71;
      *v80 = v126;
      *(v80 + 2) = v79;
      *(v80 + 2) = v78;
      v80[24] = v77 & 1;
    }

    goto LABEL_49;
  }

LABEL_71:
  __break(1u);
LABEL_72:
  v82 = v120;
  v83 = (v120 + qword_10059BBF0);
  *v83 = v32;
  *(v83 + 2) += v29;
  v83[12] = v119;
  v83[13] = v118;
  v83[14] = v117;
  v83[15] = v116;
  if ((v115 | 8) != 8)
  {
LABEL_78:
    sub_100423E8C(&v126);
    if (v129)
    {
      sub_100016290(&v126, &qword_10059A800, &qword_1004B3A40);
      if (*(v82 + qword_10059A730 + 6))
      {

        v105 = Logger.logObject.getter();
        v106 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v105, v106))
        {
          v107 = swift_slowAlloc();
          *v107 = 0;
          _os_log_impl(&_mh_execute_header, v105, v106, "invalid multicast address", v107, 2u);
        }

        return;
      }

      sub_100423E8C(&v126);
      if (v129)
      {
        sub_10002B154(&v126, &v130);
        sub_100016290(&v126, &qword_10059A800, &qword_1004B3A40);
        v108 = v131;
        v109 = v132;
        sub_100029B34(&v130, v131);
        (*(v109 + 24))(v110, v115, v20, v108, v109);

        sub_100002A00(&v130);
        return;
      }
    }

    sub_100016290(&v126, &qword_10059A800, &qword_1004B3A40);
    return;
  }

  swift_retain_n();
  v84 = v121;
  sub_1001851D8(v121, &v126);
  v85 = Logger.logObject.getter();
  v86 = static os_log_type_t.default.getter();
  sub_10031CF60(v84);
  if (!os_log_type_enabled(v85, v86))
  {

LABEL_77:
    *v83 = 0;
    *(v83 + 4) = 0;
    *(v83 + 3) = 0;
    v82 = v120;
    goto LABEL_78;
  }

  v124 = v86;
  v125 = v20;
  v87 = swift_slowAlloc();
  v123 = swift_slowAlloc();
  v126 = v123;
  *v87 = 136315650;
  v88 = NANTimeSynchronizationFunction.description.getter(*(v84 + 2));
  v90 = sub_100002320(v88, v89, &v126);

  *(v87 + 4) = v90;
  *(v87 + 12) = 2080;
  v91 = *v83;
  v92 = *(v83 + 1);
  v93 = *(v83 + 1);

  v94 = LinkStatistics.description.getter();
  v96 = v95;

  v97 = sub_100002320(v94, v96, &v126);

  *(v87 + 14) = v97;
  *(v87 + 22) = 2048;
  type metadata accessor for P2PTimer();
  v98 = v111;
  variable initialization expression of AWDLPeer.lastUpdated();
  v99 = DispatchTime.uptimeNanoseconds.getter();
  v100 = v113;
  v101 = *(v113 + 8);
  v102 = v114;
  v101(v98, v114);
  v103 = v112;
  (*(v100 + 16))(v112, v82 + qword_10059A728, v102);
  v104 = DispatchTime.uptimeNanoseconds.getter();
  v101(v103, v102);

  if (v99 >= v104)
  {
    *(v87 + 24) = (v99 - v104) / 0x3B9ACA00;

    _os_log_impl(&_mh_execute_header, v85, v124, "Multicast stats: TSF[%s], %s, totalUptime s[%llu]", v87, 0x20u);
    swift_arrayDestroy();

    v20 = v125;
    goto LABEL_77;
  }

LABEL_94:
  __break(1u);
LABEL_95:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

uint64_t sub_100426450()
{
  v1 = v0;
  v2 = *(*(*v0 + 88) + 8);
  v3 = *(*v0 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v8 = v19 - v7;
  if (*(v1 + qword_10059A730 + 6) & 1) != 0 || (*(v1 + qword_10059A738 + 6))
  {
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "Multicast session not started, nothing to terminate", v11, 2u);
    }
  }

  else
  {
    v14 = *(v1 + qword_10059A738) | (*(v1 + qword_10059A738 + 4) << 32);
    v15 = *(v1 + qword_10059A730) | (*(v1 + qword_10059A730 + 4) << 32);
    v16 = *(v1 + qword_10059BBE8);
    swift_unownedRetainStrong();
    v17 = *(*v16 + 96);
    swift_beginAccess();
    (*(v5 + 16))(v8, v16 + v17, AssociatedTypeWitness);

    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    (*(AssociatedConformanceWitness + 456))(v15, v14, AssociatedTypeWitness, AssociatedConformanceWitness);
    (*(v5 + 8))(v8, AssociatedTypeWitness);
    v20 = 0;
    memset(v19, 0, sizeof(v19));
    sub_100423F7C(v19);
  }

  v12 = *(v1 + qword_10059A710);
  *(v1 + qword_10059A710) = 0;
}

uint64_t sub_100426810(uint64_t a1, unint64_t a2, uint64_t a3, int a4)
{
  v55 = a4;
  v54 = a3;
  v60 = a1;
  v61 = a2;
  v5 = *v4;
  v58 = *(*v4 + 88);
  v6 = *(v58 + 8);
  v7 = *(v5 + 80);
  v8 = v4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v11 = v10[8];
  __chkstk_darwin();
  v13 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v15 = &v54 - v14;
  v16 = (type metadata accessor for NANAttribute.CustomDeviceInformation(0) - 8);
  v17 = *(*v16 + 64);
  __chkstk_darwin();
  v59 = &v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v57 = &v54 - v19;
  v20 = *(v8 + qword_10059BBE8);
  swift_unownedRetainStrong();
  v21 = *(*v20 + 96);
  swift_beginAccess();
  v22 = v10[2];
  v22(v15, v20 + v21, AssociatedTypeWitness);

  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  LODWORD(v58) = (*(AssociatedConformanceWitness + 32))(AssociatedTypeWitness, AssociatedConformanceWitness);
  v24 = v10[1];
  v24(v15, AssociatedTypeWitness);
  swift_unownedRetainStrong();
  v25 = *(*v20 + 96);
  swift_beginAccess();
  v22(v13, v20 + v25, AssociatedTypeWitness);

  LOBYTE(AssociatedConformanceWitness) = (*(AssociatedConformanceWitness + 24))(AssociatedTypeWitness, AssociatedConformanceWitness);
  v26 = AssociatedTypeWitness;
  v27 = v57;
  v24(v13, v26);
  v28 = v56;
  v29 = v27 + v16[9];
  NANAttribute.CustomDeviceInformation.CustomAttributes.init()(v29);
  *v27 = v58;
  *(v27 + 1) = AssociatedConformanceWitness;
  *(v27 + 4) = 0;
  v30 = (v29 + *(type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes(0) + 60));
  v31 = *v30;
  v32 = v30[1];
  v33 = v60;
  v34 = v61;
  *v30 = v60;
  v30[1] = v34;
  sub_10000AB0C(v33, v34);
  sub_100017554(v31, v32);
  v35 = v59;
  sub_10020E818(v27, v59);
  v36 = NANActionFrame.init(customDeviceInformation:)(v35);
  v38 = v37;
  v39 = v36;
  if (*(v28 + qword_10059A730 + 6) & 1) == 0 && (v55)
  {
    v40 = *(v28 + qword_10059A730) | (*(v28 + qword_10059A730 + 4) << 32);
    swift_unownedRetainStrong();
    sub_10040DD50();

    v41 = TimeBitmap.multicastTxStatusOutOfBandActionFrameBitMap.unsafeMutableAddressor();
    v42 = *v41;
    v43 = v41[1];
    v44 = v41[2];
    v45 = *(v28 + qword_10059A740 + 4);
    if (v45 << 32 == 0x300000000)
    {
      v46 = 1;
    }

    else
    {
      v46 = v45;
    }

    v62 = 0;
    v63 = v39;
    v64 = v38;
    v65 = 0;
    v66 = 2;
    sub_1003A8DBC(&v62, v40, 1, v42, v43, v44, 0, v46, 0x1F4u, NANBitmap.Channel.operatingClass.getter, 0);
    goto LABEL_12;
  }

  v47 = v54;
  if ((v54 & 0x1000000000000) == 0)
  {
    swift_unownedRetainStrong();
    sub_10040DD50();

    v62 = 0;
    v63 = v39;
    v64 = v38;
    v65 = 0;
    v66 = 2;
    v48 = TimeBitmap.multicastTxStatusOutOfBandActionFrameBitMap.unsafeMutableAddressor();
    v49 = *v48;
    v50 = v48[1];
    v51 = v48[2];
    v52 = *(v28 + qword_10059A740) | (*(v28 + qword_10059A740 + 4) << 32);
    if ((v52 & 0xFF00000000) == 0x300000000)
    {
      sub_1003A8260(&v62, v47 & 0xFFFFFFFFFFFFLL, 1, v49, v50, v51, 0, 1, 500, NANBitmap.Channel.operatingClass.getter, 0);
    }

    else
    {
      sub_1003A8260(&v62, v47 & 0xFFFFFFFFFFFFLL, 1, v49, v50, v51, 0, SBYTE4(v52), 500, NANBitmap.Channel.operatingClass.getter, 0);
    }

LABEL_12:
    sub_100048C4C(v39);

    return sub_100427630(v27);
  }

  sub_100048C4C(v36);
  return sub_100427630(v27);
}

void sub_100426FEC(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if ((*(v3 + qword_10059A738 + 6) & 1) != 0 || !static NANClusterChangeEvent.__derived_struct_equals(_:_:)(a1 & 0xFFFFFFFFFFFFLL, *(v3 + qword_10059A738) | (*(v3 + qword_10059A738 + 4) << 32)))
  {
    oslog = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v19 = v9;
      *v8 = 136315138;
      v14 = WiFiAddress.description.getter(a1 & 0xFFFFFFFFFFFFLL);
      v16 = sub_100002320(v14, v15, &v19);

      *(v8 + 4) = v16;
      v13 = "No valid peer with %s";
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  if (a3 >> 60 == 15)
  {
    oslog = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v19 = v9;
      *v8 = 136315138;
      v10 = WiFiAddress.description.getter(a1 & 0xFFFFFFFFFFFFLL);
      v12 = sub_100002320(v10, v11, &v19);

      *(v8 + 4) = v12;
      v13 = "No blob data from %s";
LABEL_8:
      _os_log_impl(&_mh_execute_header, oslog, v7, v13, v8, 0xCu);
      sub_100002A00(v9);

      return;
    }

LABEL_9:

    return;
  }

  v17 = *(v3 + qword_10059BBE8);
  swift_unownedRetainStrong();
  sub_10000AB0C(a2, a3);
  sub_10040CAE8();

  sub_10034A68C(*(v3 + qword_10059A708), a1 & 0xFFFFFFFFFFFFLL, a2, a3);

  sub_100017554(a2, a3);
}

uint64_t sub_100427284()
{
  v1 = qword_10059BBE0;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + qword_10059BBE8);
  swift_unownedRelease();
  sub_100016290(v0 + qword_10059A6F8, &qword_10059A808, &qword_1004B3A48);
  v4 = *(v0 + qword_10059A700);

  v5 = *(v0 + qword_10059A710);

  v6 = qword_10059A728;
  v7 = type metadata accessor for DispatchTime();
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  return v0;
}

uint64_t sub_100427374()
{
  sub_100427284();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1004273F0(uint64_t a1, char a2, char a3, uint64_t a4, int a5)
{
  Logger.init(subsystem:category:)();
  v11 = v5 + qword_10059A6F8;
  *(v11 + 8) = 0;
  *(v11 + 16) = 0;
  *v11 = 0;
  *(v11 + 24) = xmmword_10047CE70;
  *(v5 + qword_10059A700) = 0;
  *(v5 + qword_10059A710) = 0;
  *(v5 + qword_10059A718) = 60;
  v12 = v5 + qword_10059BBF0;
  *v12 = 0;
  *(v12 + 4) = 0;
  *(v12 + 12) = 0;
  type metadata accessor for P2PTimer();
  variable initialization expression of AWDLPeer.lastUpdated();
  *(v5 + qword_10059BBF8) = 1;
  v13 = v5 + qword_10059A730;
  *(v13 + 4) = 0;
  *v13 = 0;
  *(v13 + 6) = 1;
  v14 = v5 + qword_10059A738;
  *v14 = 0;
  *(v14 + 4) = 0;
  *(v14 + 6) = 1;
  v15 = v5 + qword_10059A740;
  *v15 = 0;
  *(v15 + 4) = 3;
  v16 = v5 + qword_10059A748;
  *v16 = 0;
  *(v16 + 2) = 1;
  *(v5 + qword_10059BBE8) = a1;
  *(v15 + 4) = WORD2(a4);
  *v15 = a4;
  *v16 = a5;
  *(v16 + 2) = BYTE2(a5) & 1;
  *(v5 + qword_10059A708) = a2;
  *(v5 + qword_10059A720) = a3;
  swift_unownedRetain();
  return v5;
}

uint64_t sub_1004275B4(uint64_t a1, char a2, char a3, uint64_t a4, int a5)
{
  v11 = *(v5 + 80);
  v12 = *(v5 + 88);
  v13 = type metadata accessor for MulticastReceiverManager();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  return sub_1004273F0(a1, a2, a3, a4 & 0xFFFFFFFFFFFFLL, a5 & 0x1FFFF);
}

uint64_t sub_100427630(uint64_t a1)
{
  v2 = type metadata accessor for NANAttribute.CustomDeviceInformation(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10042768C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_1004256E4();
}

uint64_t sub_1004276AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10005DC58(&qword_10059A808, &qword_1004B3A48);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100427720()
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

BOOL sub_1004277E4(char *a1, char *a2, void *a3)
{
  v4 = a3[2];
  v3 = a3[3];
  v5 = a3[4];
  return static AWDLPeer.Reachability.__derived_enum_equals(_:_:)(*a1, *a2);
}

Swift::Int sub_1004277FC(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  return AWDLPeer.Reachability.hashValue.getter(*v1);
}

void sub_10042780C(uint64_t a1, void *a2)
{
  v3 = a2[2];
  v4 = a2[3];
  v5 = a2[4];
  AWDLPeer.Reachability.hash(into:)(a1, *v2);
}

Swift::Int sub_10042781C(uint64_t a1, void *a2)
{
  Hasher.init(_seed:)();
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  AWDLPeer.Reachability.hash(into:)(v8, *v2);
  return Hasher._finalize()();
}

void sub_100427868()
{
  v1 = v0;

  oslog = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v10 = v4;
    *v3 = 136315138;
    v5 = CountryCode.description.getter(*(v1 + qword_10059A810));
    v7 = v6;

    v8 = sub_100002320(v5, v7, &v10);

    *(v3 + 4) = v8;
    _os_log_impl(&_mh_execute_header, oslog, v2, "Peer country code: %s", v3, 0xCu);
    sub_100002A00(v4);
  }

  else
  {
  }
}

void sub_1004279D0()
{
  v1 = v0;
  v2 = *v0;

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v14 = v6;
    *v5 = 136315138;
    v13 = *(v1 + qword_10059A818);
    v7 = v2[10];
    v8 = v2[11];
    v9 = v2[12];
    type metadata accessor for LocaleManager.State();
    v10 = String.init<A>(describing:)();
    v12 = sub_100002320(v10, v11, &v14);

    *(v5 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v3, v4, "Current country code state: %s", v5, 0xCu);
    sub_100002A00(v6);
  }

  sub_100427D74();
}

void sub_100427B64()
{
  v1 = v0;

  oslog = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v11 = v4;
    *v3 = 136315138;
    v5 = *(v1 + qword_10059A820);

    v6 = Array.description.getter();
    v8 = v7;

    v9 = sub_100002320(v6, v8, &v11);

    *(v3 + 4) = v9;
    _os_log_impl(&_mh_execute_header, oslog, v2, "Supported channels information: %s", v3, 0xCu);
    sub_100002A00(v4);
  }

  else
  {
  }
}

void sub_100427CCC(uint64_t a1)
{
  v2 = *(v1 + qword_10059A820);
  *(v1 + qword_10059A820) = a1;

  sub_100427B64();
}

uint64_t sub_100427D08(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100428168(v2 | (v3 << 8));
  }

  return result;
}

void sub_100427D74()
{
  if (*(v0 + qword_10059A818) == 3)
  {

    v1 = Logger.logObject.getter();
    v2 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v1, v2))
    {
      v3 = swift_slowAlloc();
      v4 = swift_slowAlloc();
      v12 = v4;
      *v3 = 136315138;
      v5 = CountryCode.description.getter(*(v0 + qword_10059A810));
      v7 = v6;

      v8 = sub_100002320(v5, v7, &v12);

      *(v3 + 4) = v8;
      _os_log_impl(&_mh_execute_header, v1, v2, "Would have set country code %s received from peer", v3, 0xCu);
      sub_100002A00(v4);
    }

    else
    {
    }

    *(v0 + qword_10059A818) = 4;

    sub_1004279D0();
  }

  else
  {
    oslog = Logger.logObject.getter();
    v9 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(oslog, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v9, "Nothing to do", v10, 2u);
    }
  }
}

void sub_100427F88(__int16 a1)
{
  v2 = a1;
  v3 = HIBYTE(a1);
  v4 = *(*v1 + 96);
  v5 = *(*v1 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin();
  v10 = &v18 - v9;
  v11 = CountryCode.unknown.unsafeMutableAddressor();
  if (*v11 == v2 && *(v11 + 1) == v3)
  {
    v16 = _swiftEmptyArrayStorage;
  }

  else
  {
    v13 = *(v1 + qword_10059A828);
    v14 = swift_unownedRetainStrong();
    (*(*v13 + 168))(v14);

    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v16 = (*(AssociatedConformanceWitness + 128))(AssociatedTypeWitness, AssociatedConformanceWitness);
    (*(v7 + 8))(v10, AssociatedTypeWitness);
  }

  v17 = *(v1 + qword_10059A820);
  *(v1 + qword_10059A820) = v16;

  sub_100427B64();
}

void sub_100428168(__int16 a1)
{
  if (sub_100047728())
  {
    v3 = CountryCode.unknown.unsafeMutableAddressor();
    if (*(v3 + 1) == (a1 & 0xFF00) >> 8 && *v3 == a1)
    {
      v5 = 2;
    }

    else
    {
      v5 = 1;
    }

    *(v1 + qword_10059A818) = v5;
    sub_1004279D0();
    sub_100427F88(a1);

    sub_10042832C();
  }
}

uint64_t sub_1004281F8()
{
  v1 = qword_10059BC00;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + qword_10059A820);

  v4 = *(v0 + qword_10059A828);
  swift_unownedRelease();
  v5 = *(v0 + qword_10059A830);

  return v0;
}

uint64_t sub_100428288()
{
  sub_1004281F8();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void sub_10042832C()
{
  oslog = Logger.logObject.getter();
  v0 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v0))
  {
    v1 = swift_slowAlloc();
    *v1 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v0, "WARNING: Calling empty updateSocialChannels()", v1, 2u);
  }
}

void *sub_1004283D8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v36 = a3;
  v37 = a2;
  v35 = *v4;
  v6 = *(v35 + 96);
  v33 = *(v35 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin();
  v11 = &v32 - v10;
  v34 = type metadata accessor for Logger();
  v12 = *(v34 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin();
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = qword_10059A810;
  *(v4 + v16) = *CountryCode.unknown.unsafeMutableAddressor();
  *(v4 + qword_10059A818) = 0;
  *(v4 + qword_10059A820) = _swiftEmptyArrayStorage;
  *(v4 + qword_10059A830) = 0;
  *(v4 + qword_10059A828) = a1;
  v17 = *(*a1 + 168);
  swift_unownedRetain();

  v17(v18);

  v19 = v6;
  v20 = v33;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v22 = (*(AssociatedConformanceWitness + 32))(AssociatedTypeWitness, AssociatedConformanceWitness);
  (*(v8 + 8))(v11, AssociatedTypeWitness);
  if (v22 <= 1u)
  {
    if (v22)
    {
LABEL_6:
      v24 = v36;
      v23 = v37;
      v25 = v35;
      goto LABEL_7;
    }
  }

  else if (v22 - 2 < 2)
  {
    goto LABEL_6;
  }

  v24 = v36;
  v23 = v37;
  v25 = v35;
LABEL_7:
  v26 = v34;
  Logger.init(subsystem:category:)();
  (*(v12 + 32))(v4 + qword_10059BC00, v15, v26);
  v27 = swift_allocObject();
  swift_weakInit();
  v28 = swift_allocObject();
  v28[2] = v20;
  v28[3] = *(v25 + 88);
  v28[4] = v19;
  v28[5] = v27;
  v29 = qword_10059A830;
  swift_beginAccess();
  v30 = sub_10005DC58(&unk_10059A6B0, &unk_1004B4D80);
  ObservableWiFiProperty.registerForChanges(on:using:valueUpdateHandler:)(v24, (v4 + v29), sub_10042886C, v28, v30, &v38);
  swift_endAccess();

  sub_100428168(v38);
  sub_100428878(v23);
  return v4;
}

void *sub_10042880C(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = v3[10];
  v8 = v3[11];
  v9 = v3[12];
  v10 = type metadata accessor for LocaleManager();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  return sub_1004283D8(a1, a2, a3);
}

uint64_t sub_10042886C(uint64_t a1, unsigned __int8 *a2)
{
  v3 = v2[2];
  v4 = v2[3];
  v6 = v2[4];
  v5 = v2[5];
  return sub_100427D08(a1, a2);
}

uint64_t sub_100428878(uint64_t a1)
{
  v2 = sub_10005DC58(&unk_10059A6B0, &unk_1004B4D80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1004288E0()
{
  v0 = type metadata accessor for Logger();
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_100433D40();
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      v4 = type metadata accessor for DispatchTime();
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_initClassMetadata2();
      }
    }
  }
}

uint64_t sub_100428AB0(uint64_t a1, char a2)
{
  if (a2)
  {
    return sub_100434DB0();
  }

  else
  {
    return sub_1004299D8();
  }
}

void sub_100428AE8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
    sub_10043D3CC(a1, a2, a3);
  }

  else
  {
    sub_1004308F8(a1, a2, a3);
  }
}

uint64_t sub_100428B44(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  if (a2)
  {
    return a6();
  }

  else
  {
    return a5();
  }
}

void sub_100428B7C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {
    sub_100438ED8(a1, a2, a3, a4);
  }

  else
  {
    sub_10042F6F0(a1, a2, a3, a4);
  }
}

BOOL sub_100428BAC(uint64_t a1, char a2)
{
  if (a2)
  {
    return sub_10043FB58();
  }

  else
  {
    return sub_1004338E4();
  }
}

uint64_t sub_100428BE0(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 - 8);
  (*(v4 + 16))(v6, v2, a1);
  if (v7 > 2u)
  {
    if (v7 == 3)
    {
      sub_100002A00(v6);
      return 0x69746E6568747561;
    }

    else if (v7 == 4)
    {
      (*(v4 + 8))(v6, a1);
      return 0x64656C696166;
    }

    else
    {
      return 0x74616E696D726574;
    }
  }

  else if (v7)
  {
    if (v7 == 1)
    {
      sub_100002A00(v6);
      return 0xD000000000000020;
    }

    else
    {
      sub_100002A00(v6);
      return 0xD000000000000025;
    }
  }

  else
  {
    (*(v4 + 8))(v6, a1);
    return 0xD000000000000016;
  }
}

uint64_t sub_100428D94()
{
  v1 = v0;
  v2 = *v0;
  v3 = type metadata accessor for DispatchTime();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v7 = v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  type metadata accessor for P2PTimer();
  variable initialization expression of AWDLPeer.lastUpdated();
  v8 = qword_10059A948;
  swift_beginAccess();
  (*(v4 + 40))(v1 + v8, v7, v3);
  swift_endAccess();
  v9 = qword_10059BC08;
  swift_retain_n();
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  v12 = &qword_10059A000;
  if (os_log_type_enabled(v10, v11))
  {
    v13 = swift_slowAlloc();
    v52[0] = swift_slowAlloc();
    *v13 = 136315394;
    v14 = sub_100433CA8();
    v16 = sub_100002320(v14, v15, v52);
    v49 = v9;
    v17 = v16;

    *(v13 + 4) = v17;
    *(v13 + 12) = 2080;
    v18 = qword_10059A940;
    swift_beginAccess();
    v19 = *(v2 + 80);
    v20 = *(v2 + 88);
    v21 = _s17InitiatorInstanceC5StateOMa_0();
    v22 = *(v21 - 8);
    (*(v22 + 16))(v50, v1 + v18, v21);

    v23 = sub_100428BE0(v21);
    v25 = v24;

    (*(v22 + 8))(v50, v21);
    v26 = sub_100002320(v23, v25, v52);
    v12 = &qword_10059A000;

    *(v13 + 14) = v26;
    _os_log_impl(&_mh_execute_header, v10, v11, "%s: state: %s", v13, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v27 = v12[296];
  swift_beginAccess();
  v28 = *(v2 + 80);
  v29 = *(v2 + 88);
  v30 = _s17InitiatorInstanceC5StateOMa_0();
  v31 = *(v30 - 8);
  v32 = *(v31 + 16);
  v32(v50, v1 + v27, v30);
  if (v51 == 3)
  {
    sub_100002A00(v50);
    v33 = v1[2];
    swift_unownedRetainStrong();
    sub_10040CAE8();

    v34 = *(v1 + 26);
    v35 = *(v1 + 12);
    sub_10034BBD4();
  }

  else
  {
    v36 = *(v31 + 8);
    v36(v50, v30);
    v32(v50, v1 + v27, v30);
    if (v51 != 4)
    {
      return (v36)(v50, v30);
    }

    v38 = v50[0];
    v37 = v50[1];

    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v50[0] = swift_slowAlloc();
      *v41 = 136315394;
      v42 = sub_100433CA8();
      v44 = v43;

      v45 = sub_100002320(v42, v44, v50);

      *(v41 + 4) = v45;
      *(v41 + 12) = 2080;
      v46 = sub_100002320(v38, v37, v50);

      *(v41 + 14) = v46;
      _os_log_impl(&_mh_execute_header, v39, v40, "%s: failed because %s", v41, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    v48 = v1[2];
    swift_unownedRetainStrong();
    sub_10040CAE8();

    sub_10034BE2C(*(v1 + 12) | (*(v1 + 26) << 16));
  }
}

uint64_t sub_100429338@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = qword_10059A940;
  swift_beginAccess();
  v5 = *(v3 + 80);
  v6 = *(v3 + 88);
  v7 = _s17InitiatorInstanceC5StateOMa_0();
  return (*(*(v7 - 8) + 16))(a1, &v1[v4], v7);
}

void *sub_1004293EC()
{
  v1 = v0;
  v2 = *v0;
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v7 = v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v2 + 88);
  v9 = *(v8 + 8);
  v10 = *(v2 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(AssociatedTypeWitness - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin();
  v15 = v44 - v14;
  if (*(v1 + qword_10059BC20) == 1)
  {
    v44[4] = v7;
    v45 = v3;
    v16 = v8;
    v17 = v1[2];
    swift_unownedRetainStrong();
    v18 = *(*v17 + 96);
    swift_beginAccess();
    (*(v12 + 16))(v15, v17 + v18, AssociatedTypeWitness);

    v19 = *(v1 + 26);
    v20 = *(v1 + 12);
    v21 = *(v1 + 64);
    v46 = v16;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    (*(AssociatedConformanceWitness + 304))(v21, v20 | (v19 << 16), AssociatedTypeWitness, AssociatedConformanceWitness);
    (*(v12 + 8))(v15, AssociatedTypeWitness);
    v3 = v45;
  }

  v23 = v1[2];
  swift_unownedRelease();
  v24 = v1[5];

  v25 = v1[7];

  (*(v4 + 8))(v1 + qword_10059BC08, v3);
  v26 = *(v1 + qword_10059BC28 + 16);
  v27 = *(v1 + qword_10059BC28 + 24);
  v28 = *(v1 + qword_10059BC28 + 32);
  v29 = *(v1 + qword_10059BC28 + 40);
  v30 = *(v1 + qword_10059BC28 + 48);
  v31 = *(v1 + qword_10059BC28 + 56);
  v43 = *(v1 + qword_10059BC28 + 96);
  v41 = *(v1 + qword_10059BC28 + 64);
  v42 = *(v1 + qword_10059BC28 + 80);
  sub_100443AF4(*(v1 + qword_10059BC28), *(v1 + qword_10059BC28 + 8));
  v32 = *(v1 + qword_10059BC30);

  v33 = *(v1 + qword_10059BC38);

  sub_100016290(v1 + qword_10059BC40, &qword_10058BAD0, &qword_100480E18);
  v34 = *(v1 + qword_10059BC48 + 8);

  v35 = qword_10059A940;
  v36 = _s17InitiatorInstanceC5StateOMa_0();
  (*(*(v36 - 8) + 8))(v1 + v35, v36);
  v37 = qword_10059A948;
  v38 = type metadata accessor for DispatchTime();
  (*(*(v38 - 8) + 8))(v1 + v37, v38);
  v39 = *(v1 + qword_10059A950);
  swift_unknownObjectRelease();
  return v1;
}

uint64_t sub_1004299D8()
{
  v1 = *v0;
  sub_100429338(v9);
  if (v10 == 3)
  {
    sub_100029954(v9, v11);
    v2 = v12;
    v3 = v13;
    sub_100029B34(v11, v12);
    v7 = (*(v3 + 16))(v2, v3);
    sub_100002A00(v11);
    return v7;
  }

  else
  {
    v4 = *(v1 + 80);
    v5 = *(v1 + 88);
    v6 = _s17InitiatorInstanceC5StateOMa_0();
    (*(*(v6 - 8) + 8))(v9, v6);
    return 0;
  }
}

void sub_100429AF8(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v227 = a3;
  v228 = a1;
  v222 = a2;
  v5 = *v3;
  v6 = type metadata accessor for DispatchTimeInterval();
  v224 = *(v6 - 8);
  v225 = v6;
  v7 = *(v224 + 64);
  __chkstk_darwin();
  v223 = &v208[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = *(*(sub_10005DC58(&unk_100595C00, &qword_10048F790) - 8) + 64);
  __chkstk_darwin();
  v11 = &v208[-v10];
  v12 = qword_10059BC08;

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  v15 = os_log_type_enabled(v13, v14);
  v226 = v11;
  if (v15)
  {
    v16 = swift_slowAlloc();
    v17 = v12;
    v18 = v5;
    v19 = swift_slowAlloc();
    v245 = v19;
    *v16 = 136315138;
    v20 = sub_100433CA8();
    v22 = v21;

    v23 = sub_100002320(v20, v22, &v245);

    *(v16 + 4) = v23;
    _os_log_impl(&_mh_execute_header, v13, v14, "%s: received: pairing bootstrap response", v16, 0xCu);
    sub_100002A00(v19);
    v5 = v18;
    v12 = v17;
  }

  else
  {
  }

  sub_100429338(&v245);
  if (v255)
  {
    v24 = *(v5 + 80);
    v25 = *(v5 + 88);
    v26 = _s17InitiatorInstanceC5StateOMa_0();
    (*(*(v26 - 8) + 8))(&v245, v26);

    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v245 = v30;
      *v29 = 136315138;
      v31 = sub_100433CA8();
      v33 = v32;

      v34 = sub_100002320(v31, v33, &v245);

      *(v29 + 4) = v34;
      _os_log_impl(&_mh_execute_header, v27, v28, "%s: failed to handle bootstrap response not in requested state", v29, 0xCu);
      sub_100002A00(v30);
    }

    else
    {
    }

    return;
  }

  v256 = v246;
  *v257 = *v247;
  *&v257[10] = *&v247[10];
  v243 = v246;
  v244[0] = *v247;
  *(v244 + 10) = *&v247[10];
  v220 = v250;
  v217 = v251;
  v218 = v252;
  v219 = v253;
  LODWORD(v221) = v254;
  if (v245 != v228)
  {
    goto LABEL_18;
  }

  if (*(v4 + 30) != BYTE1(v228))
  {
    goto LABEL_18;
  }

  v35 = v228 >> 24;
  v36 = HIDWORD(v228);
  v37 = v248;
  v216 = v249;
  v38 = *(v4 + 26);
  v214 = HIWORD(v228);
  v215 = HIBYTE(v228);
  v213 = v228 >> 40;
  v39 = *(v4 + 12) | (v38 << 16);
  if (!static NANClusterChangeEvent.__derived_struct_equals(_:_:)((HIBYTE(v228) << 40) | (BYTE6(v228) << 32) | (BYTE5(v228) << 24) | (BYTE4(v228) << 16) | (BYTE3(v228) << 8) | BYTE2(v228), v39))
  {
    goto LABEL_18;
  }

  v211 = v36;
  v212 = v39;
  v40 = v226;
  Array<A>.retrieve(attribute:)(44, v227, v226);
  v41 = type metadata accessor for NANAttribute(0);
  if ((*(*(v41 - 8) + 48))(v40, 1, v41) == 1)
  {
    sub_100016290(v40, &unk_100595C00, &qword_10048F790);
LABEL_18:

    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      *v234 = v46;
      *v45 = 136315138;
      v47 = sub_100433CA8();
      v49 = v48;

      v50 = sub_100002320(v47, v49, v234);

      *(v45 + 4) = v50;
      _os_log_impl(&_mh_execute_header, v43, v44, "%s: failed to handle bootstrap response", v45, 0xCu);
      sub_100002A00(v46);

      sub_1004437B4(v220, v217, v218, v219, v221);

LABEL_20:
      sub_1001440B0(&v256);
      return;
    }

    sub_1004437B4(v220, v217, v218, v219, v221);

    goto LABEL_22;
  }

  if (swift_getEnumCaseMultiPayload() != 39)
  {
    sub_100023AD8(v40, type metadata accessor for NANAttribute);
    goto LABEL_18;
  }

  v42 = v40[1];
  v258 = *v40;
  *v259 = v42;
  *&v259[10] = *(v40 + 26);
  if (NANAttribute.PairingBootstrapping.type.getter() != 2)
  {
    sub_1001440B0(&v258);
    goto LABEL_18;
  }

  v51 = NANAttribute.Datapath.status.getter();
  if (v51 > 1)
  {
    if (v51 == 2)
    {
      if ((v216 & 1) == 0)
      {
        v60 = *&v259[16];
        if (*&v259[16] >> 60 != 15 && (v259[0] & 1) == 0)
        {
          v117 = v37;
          v118 = *(&v258 + 1);
          v119 = *&v259[8];
          v227 = type metadata accessor for P2PTimer();
          if (v118 >> 54)
          {
            __break(1u);
          }

          else if (((v118 << 10) & 0x8000000000000000) == 0)
          {
            *v223 = v118 << 10;
            (*(v224 + 104))();
            sub_10012A628(&v258, v234);
            v120 = *OS_dispatch_queue.nan.unsafeMutableAddressor();
            v121 = swift_allocObject();
            swift_weakInit();
            v122 = swift_allocObject();
            *(v122 + 16) = *(v5 + 80);
            v123 = *(v5 + 88);
            v124 = *v257;
            *(v122 + 40) = v256;
            *(v122 + 24) = v123;
            *(v122 + 32) = v121;
            v226 = v121;
            *(v122 + 56) = v124;
            *(v122 + 66) = *&v257[10];
            *(v122 + 88) = v118;
            *(v122 + 96) = 0;
            *(v122 + 104) = v119;
            *(v122 + 112) = v60;
            *(v122 + 120) = v228;
            *(v122 + 121) = v117;
            v125 = v220;
            v127 = v217;
            v126 = v218;
            *(v122 + 128) = v220;
            *(v122 + 136) = v127;
            *(v122 + 144) = v126;
            v128 = v219;
            *(v122 + 152) = v219;
            v129 = v221;
            *(v122 + 153) = v221;
            sub_10012A628(&v256, v234);
            sub_100443A60(v125, v127, v126, v128, v129);
            sub_10012A628(&v258, v234);
            v130 = v120;

            v131 = v223;
            static P2PTimer.async(after:on:execute:)(v223, v130, sub_1004440CC, v122);

            sub_1004437B4(v125, v127, v126, v128, v129);
            sub_1001440B0(&v258);
            sub_1001440B0(&v256);
            sub_1001440B0(&v258);
            (*(v224 + 8))(v131, v225);
            goto LABEL_23;
          }

          __break(1u);
          return;
        }
      }

      v61 = Logger.logObject.getter();
      v62 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v61, v62))
      {
        v63 = swift_slowAlloc();
        v64 = swift_slowAlloc();
        *v234 = v64;
        *v63 = 136315138;
        v65 = sub_100433CA8();
        v67 = v66;

        v68 = sub_100002320(v65, v67, v234);

        *(v63 + 4) = v68;
        v69 = "%s: bootstrap response status: comeback value is invalid";
LABEL_38:
        _os_log_impl(&_mh_execute_header, v61, v62, v69, v63, 0xCu);
        sub_100002A00(v64);

        v82 = v220;
        v83 = v217;
LABEL_39:
        sub_1004437B4(v82, v83, v218, v219, v221);

        goto LABEL_57;
      }
    }

    else
    {

      v61 = Logger.logObject.getter();
      v62 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v61, v62))
      {
        v63 = swift_slowAlloc();
        v64 = swift_slowAlloc();
        *v234 = v64;
        *v63 = 136315138;
        v78 = sub_100433CA8();
        v80 = v79;

        v81 = sub_100002320(v78, v80, v234);

        *(v63 + 4) = v81;
        v69 = "%s: bootstrap response status: none";
        goto LABEL_38;
      }
    }

    v84 = v220;
    v85 = v217;
LABEL_41:
    sub_1004437B4(v84, v85, v218, v219, v221);

    goto LABEL_42;
  }

  if (v51)
  {

    v70 = Logger.logObject.getter();
    v71 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      *v234 = v73;
      *v72 = 136315138;
      v74 = sub_100433CA8();
      v76 = v75;

      v77 = sub_100002320(v74, v76, v234);

      *(v72 + 4) = v77;
      _os_log_impl(&_mh_execute_header, v70, v71, "%s: bootstrap response status: rejected", v72, 0xCu);
      sub_100002A00(v73);
    }

    else
    {
    }

    v101 = v217;
    v102 = v220;
    strcpy(v234, "Peer rejected");
    *&v234[14] = -4864;
    *&v234[16] = 8;
    HIBYTE(v242) = 4;
    sub_10044020C(v234);
    v103 = *(v5 + 80);
    v104 = *(v5 + 88);
    v105 = _s17InitiatorInstanceC5StateOMa_0();
    (*(*(v105 - 8) + 8))(v234, v105);
    if (*(v4 + qword_10059A950))
    {
      v106 = *(v4 + qword_10059A950);
      [swift_unknownObjectRetain() datapathFailedToStartWithError:8];
      sub_1004437B4(v102, v101, v218, v219, v221);
      swift_unknownObjectRelease();
    }

    else
    {
      sub_1004437B4(v102, v101, v218, v219, v221);
    }

    goto LABEL_57;
  }

  sub_10012A628(&v256, v234);

  sub_10012A628(&v256, v234);
  v52 = Logger.logObject.getter();
  v53 = static os_log_type_t.default.getter();
  v54 = os_log_type_enabled(v52, v53);
  v210 = v12;
  v209 = v37;
  if (v54)
  {
    v55 = swift_slowAlloc();
    v226 = swift_slowAlloc();
    *v234 = v226;
    *v55 = 136315394;
    v56 = sub_100433CA8();
    v58 = v57;

    v59 = sub_100002320(v56, v58, v234);

    *(v55 + 4) = v59;
    *(v55 + 12) = 512;
    sub_1001440B0(&v256);
    *(v55 + 14) = *&v257[24];
    sub_1001440B0(&v256);
    _os_log_impl(&_mh_execute_header, v52, v53, "%s: received: pairing bootstrap response with status: accepted method: %hu", v55, 0x10u);
    sub_100002A00(v226);
  }

  else
  {
    sub_1001440B0(&v256);
    sub_1001440B0(&v256);
  }

  v86 = *&v257[24];
  v87 = *&v259[24];
  *&v88 = NANAttribute.PairingBootstrapping.Method.validAdvertisedMethod(from:)(*&v259[24]);
  if ((v88 & 0x10000) != 0)
  {
    sub_10012A628(&v258, v234);

    sub_10012A628(&v258, v234);
    v107 = Logger.logObject.getter();
    v108 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v107, v108))
    {
      v109 = swift_slowAlloc();
      v110 = swift_slowAlloc();
      *v234 = v110;
      *v109 = 136315394;
      v111 = sub_100433CA8();
      v113 = v112;

      v114 = sub_100002320(v111, v113, v234);

      *(v109 + 4) = v114;
      *(v109 + 12) = 512;
      sub_1001440B0(&v258);
      *(v109 + 14) = v87;
      sub_1001440B0(&v258);
      _os_log_impl(&_mh_execute_header, v107, v108, "%s: failed to handle bootstrap response advertised method is not valid, method: response: %hu", v109, 0x10u);
      sub_100002A00(v110);

      sub_1004437B4(v220, v217, v218, v219, v221);

      goto LABEL_57;
    }

    sub_1001440B0(&v258);
    sub_1001440B0(&v258);
    sub_1004437B4(v220, v217, v218, v219, v221);

LABEL_42:
    sub_1001440B0(&v258);
LABEL_22:
    sub_1001440B0(&v256);
LABEL_23:

    return;
  }

  v89 = v228 >> 8;
  if (v86 != *NANAttribute.PairingBootstrapping.Method.opportunistic.unsafeMutableAddressor() || v221 != 2)
  {
    v115 = NANAttribute.PairingBootstrapping.Method.apiValue.getter(v86);
    v90 = v217;
    if (v116)
    {
      if (v221 != 1)
      {
        goto LABEL_75;
      }
    }

    else if (v221 != 1)
    {
      if (v221 == 2)
      {
        v91 = v218 | v217;
LABEL_69:
        if (!v219 && v220 == 1 && !v91)
        {
          v221 = v89;
          v223 = v115;
          v225 = qword_10059A950;
          v133 = *(v4 + qword_10059A950);

          v226 = v4;
          v134 = Logger.logObject.getter();
          LODWORD(v224) = static os_log_type_t.error.getter();
          v135 = v134;
          v136 = os_log_type_enabled(v134, v224);
          if (v133)
          {
            if (v136)
            {
              v137 = swift_slowAlloc();
              v138 = swift_slowAlloc();
              *v234 = v138;
              *v137 = 136315138;
              v139 = sub_100433CA8();
              v141 = v140;

              v142 = sub_100002320(v139, v141, v234);

              *(v137 + 4) = v142;
              _os_log_impl(&_mh_execute_header, v135, v224, "%s: Invoking delegate: datapathPairingRequestStarted", v137, 0xCu);
              sub_100002A00(v138);
            }

            else
            {
            }

            *(v230 + 7) = v243;
            *(&v230[1] + 7) = v244[0];
            *(&v230[2] + 1) = *(v244 + 10);
            *&v234[1] = v230[0];
            v234[0] = v228;
            *&v234[17] = v230[1];
            *&v234[33] = v230[2];
            v235 = BYTE9(v244[1]);
            v236 = v209;
            v237 = v216;
            v239 = 0;
            v240 = 0;
            v238 = 2;
            v241 = 0;
            v242 = 2;
            sub_10012A628(&v256, &v229);
            v191 = v226;
            sub_10044020C(v234);
            v192 = *(v5 + 80);
            v193 = *(v5 + 88);
            v194 = _s17InitiatorInstanceC5StateOMa_0();
            (*(*(v194 - 8) + 8))(v234, v194);
            v195 = *(v191 + v225);
            if (v195)
            {
              v196 = v228;
              v197 = v228 >> 16;
              v198 = swift_allocObject();
              swift_weakInit();
              v199 = swift_allocObject();
              *(v199 + 16) = v192;
              *(v199 + 24) = v193;
              *(v199 + 32) = v198;
              *(v199 + 40) = v196;
              *(v199 + 41) = v221;
              *(v199 + 42) = v197;
              *(v199 + 43) = v35;
              *(v199 + 44) = v211;
              v200 = v214;
              *(v199 + 45) = v213;
              *(v199 + 46) = v200;
              *(v199 + 47) = v215;
              v201 = v227;
              *(v199 + 48) = v222;
              *(v199 + 56) = v201;
              *&v234[32] = sub_100444128;
              *&v234[40] = v199;
              *v234 = _NSConcreteStackBlock;
              *&v234[8] = 1107296256;
              *&v234[16] = sub_10042BD04;
              *&v234[24] = &unk_10057B6D8;
              v202 = _Block_copy(v234);
              swift_unknownObjectRetain();

              [v195 datapathPairingRequestStartedWithPairingMethod:v223 pairingAuthenticationInputCompletionHandler:v202];
              swift_unknownObjectRelease();
              sub_1001440B0(&v258);
              sub_1001440B0(&v256);
              _Block_release(v202);
              return;
            }
          }

          else
          {
            if (!v136)
            {

              sub_1001440B0(&v258);
              sub_1001440B0(&v256);
              goto LABEL_23;
            }

            v185 = swift_slowAlloc();
            v186 = swift_slowAlloc();
            *v234 = v186;
            *v185 = 136315138;
            v187 = sub_100433CA8();
            v189 = v188;

            v190 = sub_100002320(v187, v189, v234);

            *(v185 + 4) = v190;
            _os_log_impl(&_mh_execute_header, v135, v224, "%s: no delegate, skipping invoking: datapathPairingRequestStarted", v185, 0xCu);
            sub_100002A00(v186);
          }

LABEL_57:
          sub_1001440B0(&v258);
          goto LABEL_20;
        }
      }

LABEL_75:

      v61 = Logger.logObject.getter();
      v143 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v61, v143))
      {
        v144 = swift_slowAlloc();
        v145 = swift_slowAlloc();
        *v234 = v145;
        *v144 = 136315138;
        v146 = sub_100433CA8();
        v147 = v90;
        v149 = v148;

        v150 = sub_100002320(v146, v149, v234);

        *(v144 + 4) = v150;
        _os_log_impl(&_mh_execute_header, v61, v143, "%s: failed to handle bootstrap response", v144, 0xCu);
        sub_100002A00(v145);

        v82 = v220;
        v83 = v147;
        goto LABEL_39;
      }

      v84 = v220;
      v85 = v90;
      goto LABEL_41;
    }

    v151 = v89;

    sub_100443A60(v220, v90, v218, v219, v221);
    v152 = Logger.logObject.getter();
    v153 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v152, v153))
    {
      v154 = swift_slowAlloc();
      v155 = swift_slowAlloc();
      *v234 = v155;
      *v154 = 136315138;
      v156 = sub_100433CA8();
      v158 = v157;

      v159 = sub_100002320(v156, v158, v234);

      *(v154 + 4) = v159;
      _os_log_impl(&_mh_execute_header, v152, v153, "%s: setting up authentication", v154, 0xCu);
      sub_100002A00(v155);
    }

    else
    {
    }

    v163 = v4[2];
    v164 = *(v4 + 64);
    swift_unownedRetainStrong();
    v165 = WiFiInterface.macAddress.getter();

    v166 = v165 & 0xFFFFFFFFFFFFLL;
    v167 = v220;
    v168 = v217;
    static NANPairing.authenticatedSetup(password:cipherSuite:pairingCaching:pairingBootstrapRequest:pairingBootstrapResponse:initiatorAddress:responderAddress:publishID:)(v220, v217, v164, v209, &v256, &v258, v166, v212, v234, v151);
    sub_1004437B4(v167, v168, v218, v219, v221);
    goto LABEL_84;
  }

  v90 = v217;
  v91 = v218 | v217;
  if (v218 | v217 | v220 || v219)
  {
    v115 = NANAttribute.PairingBootstrapping.Method.apiValue.getter(v86);
    if ((v132 & 1) == 0)
    {
      goto LABEL_69;
    }

    goto LABEL_75;
  }

  v92 = v89;

  v93 = Logger.logObject.getter();
  v94 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v93, v94))
  {
    v95 = swift_slowAlloc();
    v96 = swift_slowAlloc();
    *v234 = v96;
    *v95 = 136315138;
    v97 = sub_100433CA8();
    v99 = v98;

    v100 = sub_100002320(v97, v99, v234);

    *(v95 + 4) = v100;
    _os_log_impl(&_mh_execute_header, v93, v94, "%s: method is opportunistic or password not required, setting up opportunistic pairing", v95, 0xCu);
    sub_100002A00(v96);
  }

  else
  {
  }

  v160 = v4[2];
  v161 = *(v4 + 64);
  swift_unownedRetainStrong();
  v162 = WiFiInterface.macAddress.getter();

  static NANPairing.opportunisticSetup(cipherSuite:pairingCaching:pairingBootstrapRequest:pairingBootstrapResponse:initiatorAddress:responderAddress:publishID:)(v161, v209, &v256, &v258, v162 & 0xFFFFFFFFFFFFLL, v212, v92, v234);
LABEL_84:
  sub_100029954(v234, v231);
  v169 = v232;
  v170 = v233;
  sub_100031694(v231, v232);
  v224 = (*(v170 + 40))(v169, v170);
  v225 = v171;
  v227 = v172;
  v228 = v173;
  sub_10002B154(v231, v234);
  HIBYTE(v242) = 1;
  sub_10044020C(v234);
  v174 = *(v5 + 80);
  v175 = *(v5 + 88);
  v176 = _s17InitiatorInstanceC5StateOMa_0();
  (*(*(v176 - 8) + 8))(v234, v176);

  v226 = v4;
  v177 = Logger.logObject.getter();
  v178 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v177, v178))
  {
    v179 = swift_slowAlloc();
    v180 = swift_slowAlloc();
    *v234 = v180;
    *v179 = 136315138;
    v181 = sub_100433CA8();
    v183 = v182;

    v184 = sub_100002320(v181, v183, v234);

    *(v179 + 4) = v184;
    _os_log_impl(&_mh_execute_header, v177, v178, "%s: sending: authentication request", v179, 0xCu);
    sub_100002A00(v180);
  }

  else
  {
  }

  swift_unownedRetainStrong();
  sub_10040DD50();

  *v234 = v224;
  *&v234[8] = v225;
  *&v234[16] = v227;
  *&v234[24] = v228;
  v234[32] = 1;
  sub_100143FBC(v224, v225, v227, v228);
  v203 = *TimeBitmap.Slot.FF.unsafeMutableAddressor();
  sub_1003A8260(v234, v212, 0, 0, 0x400, ((v203 << 8) | (v203 << 16) | (v203 << 24) | (v203 << 32) | (v203 << 40) | (v203 << 48) | (v203 << 56) | v203), 0, 3, 3000, NANBitmap.Channel.operatingClass.getter, 0);
  sub_1004437B4(v220, v217, v218, v219, v221);
  sub_1001440B0(&v258);
  sub_1001440B0(&v256);
  v205 = v224;
  v204 = v225;
  v207 = v227;
  v206 = v228;
  sub_1000B21F4(v224, v225, v227, v228);

  sub_1000B21F4(v205, v204, v207, v206);
  sub_100002A00(v231);
}

uint64_t sub_10042B730(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v12 = result;
    v55 = a4;

    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v51 = a1;
      v15 = a2;
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v74 = v17;
      *v16 = 136315138;
      v18 = sub_100433CA8();
      v20 = v19;

      v21 = sub_100002320(v18, v20, &v74);

      *(v16 + 4) = v21;
      _os_log_impl(&_mh_execute_header, v13, v14, "%s: pairingAuthenticationInputCompletionHandler called", v16, 0xCu);
      sub_100002A00(v17);

      a2 = v15;
      a1 = v51;
    }

    else
    {
    }

    sub_100429338(&v74);
    if (v83)
    {
      v22 = _s17InitiatorInstanceC5StateOMa_0();
      (*(*(v22 - 8) + 8))(&v74, v22);
LABEL_17:

      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v74 = v28;
        *v27 = 136315138;
        v29 = sub_100433CA8();
        v31 = v30;

        v32 = sub_100002320(v29, v31, &v74);

        *(v27 + 4) = v32;
        _os_log_impl(&_mh_execute_header, v25, v26, "%s: Invalid password", v27, 0xCu);
        sub_100002A00(v28);
      }

      else
      {
      }

      v33 = *(v12 + qword_10059A950);
      if (v33)
      {
        [v33 datapathFailedToStartWithError:9];
      }
    }

    v23 = v74;
    v72 = v75;
    v73[0] = *v76;
    *(v73 + 10) = *&v76[10];
    if (__PAIR64__(v82, v81) == 0x200000000 && v79 == 2 && v80 == 0)
    {
      if (a2 >> 60 != 15)
      {
        v24 = a2 >> 62;
        if ((a2 >> 62) > 1)
        {
          if (v24 != 2)
          {
LABEL_26:
            sub_100017554(a1, a2);
            goto LABEL_16;
          }

          v34 = *(a1 + 16);
          v35 = *(a1 + 24);
        }

        else
        {
          if (!v24)
          {
            if ((a2 & 0xFF000000000000) != 0)
            {
              v52 = v78;
              v53 = v77;
              result = BYTE6(a2);
LABEL_35:
              v38 = sub_10014345C(result);
              v40 = v39;
              v54 = a2;
              v41 = _s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(a1, a2, v38, v39);
              sub_1000124C8(v38, v40);
              if ((v41 & 1) == 0)
              {
                v42 = v12[5];
                v56 = v12[4];
                v43 = v12[2];
                swift_unownedRetainStrong();

                v44 = WiFiInterface.macAddress.getter();

                v45 = WiFiAddress.description.getter(v44 & 0xFFFFFFFFFFFFLL);
                v47 = sub_1004430B8(a1, v54, v56, v42, v45, v46);
                v57 = v48;

                v49 = v12[7];
                v12[6] = v47;
                v12[7] = v57;

                *&v71[7] = v72;
                *&v71[23] = v73[0];
                *&v71[33] = *(v73 + 10);
                v60 = *v71;
                v59 = v23;
                v61 = *&v71[16];
                v62 = *&v71[32];
                v63 = BYTE9(v73[1]);
                v64 = v53;
                v65 = v52;
                v66 = a1;
                v67 = v54;
                v68 = 0;
                v69 = 256;
                v70 = 0;
                sub_10005D67C(a1, v54);
                sub_10012A628(&v72, v58);
                sub_10044020C(&v59);
                v50 = _s17InitiatorInstanceC5StateOMa_0();
                (*(*(v50 - 8) + 8))(&v59, v50);
                sub_100429AF8(v55, a5, a6);
                sub_100017554(a1, v54);
                sub_1001440B0(&v72);
              }

              sub_100017554(a1, v54);
              goto LABEL_16;
            }

            goto LABEL_26;
          }

          v34 = a1;
          v35 = a1 >> 32;
        }

        if (v34 != v35)
        {
          v52 = v78;
          v53 = v77;
          result = sub_10005D67C(a1, a2);
          if (v24 == 2)
          {
            v37 = *(a1 + 16);
            v36 = *(a1 + 24);
            result = v36 - v37;
            if (!__OFSUB__(v36, v37))
            {
              goto LABEL_35;
            }

            __break(1u);
          }

          if (__OFSUB__(HIDWORD(a1), a1))
          {
            __break(1u);
            return result;
          }

          result = HIDWORD(a1) - a1;
          goto LABEL_35;
        }
      }
    }

    else
    {
      sub_1004437B4(v79, v80, *(&v80 + 1), v81, v82);
    }

LABEL_16:
    sub_1001440B0(&v72);
    goto LABEL_17;
  }

  return result;
}

uint64_t sub_10042BD04(uint64_t a1, void *a2)
{
  v2 = a2;
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (a2)
  {

    v5 = v2;
    v2 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {

    v7 = 0xF000000000000000;
  }

  v4(v2, v7);
  sub_100017554(v2, v7);
}

uint64_t sub_10042BD9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, unsigned int a7, char a8, uint64_t a9, uint64_t a10, uint64_t a11, unsigned __int16 a12, uint64_t a13, uint64_t a14)
{
  v19 = *(*(sub_10005DC58(&unk_100595C50, &unk_1004AFD20) - 8) + 64);
  __chkstk_darwin();
  v21 = &v53 - v20;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v23 = result;
    v59 = v21;
    v57 = a14;
    v56 = a13;
    v54 = HIBYTE(a12);
    v55 = HIBYTE(a12);
    static NANAttribute.PairingBootstrapping.retryRequest(dialogToken:comebackCookie:method:)(*a2, a5, a6, *(a2 + 40), &v73);
    *&v72[7] = v73;
    *&v72[23] = v74[0];
    *&v72[33] = *(v74 + 10);
    *&v61[1] = *v72;
    v58 = a7;
    v61[0] = a7;
    v62 = *&v72[16];
    v63 = *&v72[32];
    v64 = BYTE9(v74[1]);
    v65 = a8 & 1;
    v66 = 1;
    v67 = a9;
    v68 = a10;
    v69 = a11;
    v70 = a12;
    v71 = v54;
    sub_10012A628(&v73, &v60);
    sub_100443A60(a9, a10, a11, a12, v55);
    sub_10044020C(v61);
    v24 = _s17InitiatorInstanceC5StateOMa_0();
    (*(*(v24 - 8) + 8))(v61, v24);

    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *v61 = v28;
      *v27 = 136315138;

      v29 = sub_100433CA8();
      v31 = v30;

      v32 = sub_100002320(v29, v31, v61);

      *(v27 + 4) = v32;
      _os_log_impl(&_mh_execute_header, v25, v26, "%s: sending: bootstrap retry request", v27, 0xCu);
      sub_100002A00(v28);
    }

    else
    {
    }

    v33 = *(v23 + 16);
    swift_unownedRetainStrong();
    v34 = sub_10040CAE8();

    v35 = *(v34 + *(*v34 + 296));

    rawValue = NANGenericServiceProtocol.init()().attributes._rawValue;
    v37 = NANGenericServiceProtocol.AttributeFilter.all.unsafeMutableAddressor();
    LODWORD(v57) = NANServiceInfo.init(information:filter:)(rawValue, *v37);
    v39 = v38;
    v41 = v40;
    sub_10005DC58(&unk_100597530, &qword_100482F50);
    v42 = *(type metadata accessor for NANAttribute(0) - 8);
    v43 = *(v42 + 72);
    v44 = (*(v42 + 80) + 32) & ~*(v42 + 80);
    v45 = swift_allocObject();
    *(v45 + 16) = xmmword_100480F40;
    v46 = (v45 + v44);
    *(v46 + 26) = *(v74 + 10);
    v47 = v74[0];
    *v46 = v73;
    v46[1] = v47;
    swift_storeEnumTagMultiPayload();
    v48 = *(v23 + 26);
    v49 = *(v23 + 24);
    v50 = *(v23 + 30);
    v51 = type metadata accessor for NANIdentityKey(0);
    v52 = v59;
    (*(*(v51 - 8) + 56))(v59, 1, 1, v51);
    sub_10012A628(&v73, v61);
    sub_10036DE50(v57, v39, v41, v45, v49 | (v48 << 16), v50, v58, v52);

    sub_1000124C8(v39, v41);

    sub_1001440B0(&v73);
    return sub_100016290(v52, &unk_100595C50, &unk_1004AFD20);
  }

  return result;
}

uint64_t sub_10042C26C(void *a1)
{
  v2 = v1;
  v4 = *v1;
  v52 = type metadata accessor for DispatchTimeInterval();
  v50 = *(v52 - 8);
  v5 = *(v50 + 64);
  __chkstk_darwin();
  v54 = (&v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v53 = &v49 - v7;
  __chkstk_darwin();
  v51 = (&v49 - v8);
  v55 = *(v4 + 88);
  v9 = *(v55 + 8);
  v10 = *(v4 + 80);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v11 = type metadata accessor for Preferences();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin();
  v15 = &v49 - v14;
  v16 = *(*(sub_10005DC58(&qword_10058BAD0, &qword_100480E18) - 8) + 64);
  __chkstk_darwin();
  v18 = &v49 - v17;
  v19 = a1[3];
  v20 = a1[4];
  sub_100029B34(a1, v19);
  if (((*(v20 + 96))(v19, v20) & 1) == 0 || (v21 = qword_10059BC40, swift_beginAccess(), sub_100012400(v2 + v21, v18, &qword_10058BAD0, &qword_100480E18), v22 = type metadata accessor for NANPairedDeviceSharedAssociation(0), LODWORD(v21) = (*(*(v22 - 8) + 48))(v18, 1, v22), result = sub_100016290(v18, &qword_10058BAD0, &qword_100480E18), v21 != 1))
  {

    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      *&v56[0] = v43;
      *v42 = 136315138;

      v44 = sub_100433CA8();
      v46 = v45;

      v47 = sub_100002320(v44, v46, v56);

      *(v42 + 4) = v47;
      _os_log_impl(&_mh_execute_header, v40, v41, "%s: caching is not enabled", v42, 0xCu);
      sub_100002A00(v43);
    }

    else
    {
    }

LABEL_11:
    sub_10002B154(a1, v56);
    v57 = 3;
    sub_10044020C(v56);
    v48 = _s17InitiatorInstanceC5StateOMa_0();
    return (*(*(v48 - 8) + 8))(v56, v48);
  }

  if (*(v2 + qword_10059BC10) == 1 && *(v2 + qword_10059BC18) == 1)
  {
    v24 = v2[2];
    swift_unownedRetainStrong();
    WiFiInterface.preferences.getter();

    LOBYTE(v24) = Preferences.enableNANPairingCertification.getter(v11);
    (*(v12 + 8))(v15, v11);
    if (v24)
    {
      v26 = v50;
      v25 = v51;
      *v51 = 60;
      v27 = *(v26 + 104);
      v28 = v52;
      v27(v25, enum case for DispatchTimeInterval.seconds(_:), v52);
      v29 = *OS_dispatch_queue.nan.unsafeMutableAddressor();
      v30 = swift_allocObject();
      swift_weakInit();
      sub_10002B154(a1, v56);
      v31 = swift_allocObject();
      v32 = v55;
      v31[2] = v10;
      v31[3] = v32;
      v31[4] = v30;
      sub_100029954(v56, (v31 + 5));
      v33 = v53;
      v27(v53, enum case for DispatchTimeInterval.never(_:), v28);
      v34 = v54;
      *v54 = 100;
      v27(v34, enum case for DispatchTimeInterval.milliseconds(_:), v28);
      v35 = type metadata accessor for P2PTimer();
      v36 = *(v35 + 48);
      v37 = *(v35 + 52);
      swift_allocObject();
      v38 = P2PTimer.init(deadlineAfter:on:repeating:leeway:_:)(v25, v29, v33, v34, sub_1004440BC, v31);
      v39 = *(v2 + qword_10059BC38);
      *(v2 + qword_10059BC38) = v38;
    }

    goto LABEL_11;
  }

  return result;
}

uint64_t sub_10042C8F8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    v5 = *(result + qword_10059BC38);
    *(v4 + qword_10059BC38) = 0;

    sub_10002B154(a2, v7);
    v7[82] = 3;
    sub_10044020C(v7);
    v6 = _s17InitiatorInstanceC5StateOMa_0();
    (*(*(v6 - 8) + 8))(v7, v6);
  }

  return result;
}

void sub_10042C9D0()
{
  v1 = v0;
  v2 = *v0;
  v3 = type metadata accessor for DispatchTimeInterval();
  v54 = *(v3 - 8);
  v55 = v3;
  v4 = v54[8];
  __chkstk_darwin();
  v57 = (&v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v7 = &v51 - v6;
  __chkstk_darwin();
  v56 = (&v51 - v8);
  v9 = *(v2 + 88);
  v10 = *(v9 + 8);
  v11 = *(v2 + 80);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v12 = type metadata accessor for Preferences();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin();
  v16 = &v51 - v15;
  sub_100429338(v58);
  if (v59 == 2)
  {
    v52 = v9;
    v53 = v7;
    sub_100029954(v58, v60);

    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v51 = v13;
      v20 = v19;
      v21 = swift_slowAlloc();
      *&v58[0] = v21;
      *v20 = 136315138;

      v22 = sub_100433CA8();
      v24 = v23;

      v25 = sub_100002320(v22, v24, v58);

      *(v20 + 4) = v25;
      _os_log_impl(&_mh_execute_header, v17, v18, "%s starting pairing send follow-up frame timer", v20, 0xCu);
      sub_100002A00(v21);

      v13 = v51;
    }

    else
    {
    }

    v35 = v1[2];
    swift_unownedRetainStrong();
    WiFiInterface.preferences.getter();

    LOBYTE(v35) = Preferences.enableNANPairingCertification.getter(v12);
    (*(v13 + 8))(v16, v12);
    v36 = 2;
    if (v35)
    {
      v36 = 60;
    }

    v38 = v55;
    v37 = v56;
    *v56 = v36;
    v39 = v54[13];
    v39(v37, enum case for DispatchTimeInterval.seconds(_:), v38);
    v54 = *OS_dispatch_queue.nan.unsafeMutableAddressor();
    v40 = swift_allocObject();
    swift_weakInit();
    sub_10002B154(v60, v58);
    v41 = swift_allocObject();
    v42 = v52;
    v41[2] = v11;
    v41[3] = v42;
    v41[4] = v40;
    sub_100029954(v58, (v41 + 5));
    v43 = v53;
    v39(v53, enum case for DispatchTimeInterval.never(_:), v38);
    v44 = v57;
    *v57 = 100;
    v39(v44, enum case for DispatchTimeInterval.milliseconds(_:), v38);
    v45 = type metadata accessor for P2PTimer();
    v46 = *(v45 + 48);
    v47 = *(v45 + 52);
    swift_allocObject();
    v48 = v54;

    v49 = P2PTimer.init(deadlineAfter:on:repeating:leeway:_:)(v37, v48, v43, v44, sub_100443E60, v41);
    sub_100002A00(v60);

    v50 = *(v1 + qword_10059BC30);
    *(v1 + qword_10059BC30) = v49;
  }

  else
  {
    v26 = _s17InitiatorInstanceC5StateOMa_0();
    (*(*(v26 - 8) + 8))(v58, v26);

    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *&v58[0] = v30;
      *v29 = 136315138;

      v31 = sub_100433CA8();
      v33 = v32;

      v34 = sub_100002320(v31, v33, v58);

      *(v29 + 4) = v34;
      _os_log_impl(&_mh_execute_header, v27, v28, "%s: error sending the follow-up frame", v29, 0xCu);
      sub_100002A00(v30);
    }

    else
    {
    }
  }
}

void sub_10042D060(uint64_t a1, id *a2, uint64_t a3, uint64_t a4)
{
  v156 = a3;
  v157 = a4;
  v5 = type metadata accessor for DispatchTime();
  v160 = *(v5 - 8);
  v161 = v5;
  v6 = *(v160 + 64);
  __chkstk_darwin();
  v158 = &v140 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v159 = &v140 - v8;
  v9 = *(*(sub_10005DC58(&qword_1005985E0, &unk_1004B0F80) - 8) + 64);
  __chkstk_darwin();
  v163 = &v140 - v10;
  v11 = *(*(sub_10005DC58(&qword_10058F4D0, &qword_100491AB0) - 8) + 64);
  __chkstk_darwin();
  v166 = &v140 - v12;
  v13 = type metadata accessor for UUID();
  v167 = *(v13 - 8);
  v168 = v13;
  v14 = *(v167 + 64);
  __chkstk_darwin();
  v153 = &v140 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v155 = &v140 - v15;
  __chkstk_darwin();
  v17 = &v140 - v16;
  v165 = type metadata accessor for NANPeer(0);
  v18 = *(*(v165 - 8) + 64);
  __chkstk_darwin();
  v20 = &v140 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(*(sub_10005DC58(&unk_10059A690, &unk_1004884D0) - 8) + 64);
  __chkstk_darwin();
  v151 = &v140 - v22;
  v23 = *(*(sub_10005DC58(&unk_100595C50, &unk_1004AFD20) - 8) + 64);
  __chkstk_darwin();
  v149 = &v140 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v150 = &v140 - v25;
  __chkstk_darwin();
  v27 = &v140 - v26;
  __chkstk_darwin();
  v152 = (&v140 - v28);
  __chkstk_darwin();
  v30 = &v140 - v29;
  v31 = *(*(sub_10005DC58(&qword_10058BAD0, &qword_100480E18) - 8) + 64);
  __chkstk_darwin();
  v33 = &v140 - v32;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v35 = Strong;
  v154 = v17;
  v164 = v20;
  v36 = *(Strong + qword_10059BC30);
  *(v35 + qword_10059BC30) = 0;

  v38 = a2[3];
  v37 = a2[4];
  v162 = a2;
  sub_100029B34(a2, v38);
  if (v37[12](v38, v37))
  {
    v39 = qword_10059BC40;
    swift_beginAccess();
    sub_100012400(v35 + v39, v33, &qword_10058BAD0, &qword_100480E18);
    v40 = type metadata accessor for NANPairedDeviceSharedAssociation(0);
    LODWORD(v39) = (*(*(v40 - 8) + 48))(v33, 1, v40);
    sub_100016290(v33, &qword_10058BAD0, &qword_100480E18);
    if (v39 == 1)
    {
      v41 = *(v35 + 16);
      swift_unownedRetainStrong();
      v42 = *(*v41 + 768);
      swift_beginAccess();
      sub_100012400(v41 + v42, v30, &unk_100595C50, &unk_1004AFD20);

      v43 = type metadata accessor for NANIdentityKey(0);
      v44 = *(v43 - 8);
      v45 = *(v44 + 48);
      v147 = v44 + 48;
      v148 = v43;
      v146 = v45;
      LODWORD(v42) = (v45)(v30, 1);
      sub_100016290(v30, &unk_100595C50, &unk_1004AFD20);
      v46 = qword_10059BC08;

      v47 = Logger.logObject.getter();
      if (v42 == 1)
      {
        v48 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v47, v48))
        {
          v49 = swift_slowAlloc();
          v50 = swift_slowAlloc();
          v170[0] = v50;
          *v49 = 136315138;
          v51 = sub_100433CA8();
          v53 = v52;

          v54 = sub_100002320(v51, v53, v170);

          *(v49 + 4) = v54;
          _os_log_impl(&_mh_execute_header, v47, v48, "%s: cannot send pairing caching follow-up frame, NIK is nil", v49, 0xCu);
          sub_100002A00(v50);
        }

        else
        {
        }

        return;
      }

      v145 = v44;
      v55 = static os_log_type_t.default.getter();
      v56 = os_log_type_enabled(v47, v55);
      v144 = v46;
      if (v56)
      {
        v57 = swift_slowAlloc();
        v58 = swift_slowAlloc();
        v170[0] = v58;
        *v57 = 136315138;
        v59 = sub_100433CA8();
        v60 = v47;
        v62 = v61;

        v63 = sub_100002320(v59, v62, v170);

        *(v57 + 4) = v63;
        _os_log_impl(&_mh_execute_header, v60, v55, "%s: sending: pairing caching follow up", v57, 0xCu);
        sub_100002A00(v58);
      }

      else
      {
      }

      v64 = v152;
      v66 = v162[3];
      v65 = v162[4];
      v152 = sub_100029B34(v162, v66);
      v67 = *(v35 + 16);
      swift_unownedRetainStrong();
      v68 = *(*v67 + 768);
      swift_beginAccess();
      sub_100012400(v67 + v68, v27, &unk_100595C50, &unk_1004AFD20);

      v69 = v148;
      if (v146(v27, 1, v148) == 1)
      {
        __break(1u);
      }

      else
      {
        sub_10044384C(v27, v64, type metadata accessor for NANIdentityKey);
        v70 = v145 + 56;
        v71 = *(v145 + 56);
        (v71)(v64, 0, 1, v69);
        v72 = type metadata accessor for SymmetricKey();
        v73 = v151;
        (*(*(v72 - 8) + 56))(v151, 1, 1, v72);
        v65[9](v170, v64, v73, v66, v65);
        v152 = v71;
        v145 = v70;
        sub_100016290(v73, &unk_10059A690, &unk_1004884D0);
        sub_100016290(v64, &unk_100595C50, &unk_1004AFD20);
        v74 = *(v35 + 16);
        swift_unownedRetainStrong();
        v75 = sub_10040CAE8();

        v76 = *(v75 + *(*v75 + 296));

        rawValue = NANGenericServiceProtocol.init()().attributes._rawValue;
        v78 = NANGenericServiceProtocol.AttributeFilter.all.unsafeMutableAddressor();
        v79 = NANServiceInfo.init(information:filter:)(rawValue, *v78);
        v81 = v80;
        v83 = v82;
        v143 = *(v35 + 24);
        v84 = v148;
        v142 = *(v35 + 25);
        v141 = *(v35 + 26);
        LODWORD(v151) = *(v35 + 30);
        LODWORD(v144) = *(v35 + 31);
        v85 = *(v35 + 16);
        swift_unownedRetainStrong();
        v86 = *(*v85 + 768);
        swift_beginAccess();
        v87 = v85 + v86;
        v88 = v149;
        sub_100012400(v87, v149, &unk_100595C50, &unk_1004AFD20);

        if (v146(v88, 1, v84) != 1)
        {
          v89 = v88;
          v90 = v150;
          sub_10044384C(v89, v150, type metadata accessor for NANIdentityKey);
          (v152)(v90, 0, 1, v84);
          sub_10036DE50(v79, v81, v83, _swiftEmptyArrayStorage, v143 | (v142 << 8) | (v141 << 16), v151, v144, v90);
          sub_1000124C8(v81, v83);

          sub_100143F68(v170);
          sub_100016290(v90, &unk_100595C50, &unk_1004AFD20);
          *(v35 + qword_10059BC10) = 1;
          goto LABEL_15;
        }
      }

      __break(1u);
      return;
    }
  }

LABEL_15:
  sub_10042C26C(v162);
  v91 = *(v35 + 16);
  swift_unownedRetainStrong();
  v92 = v164;
  sub_10040CD68(*(v35 + 24) | (*(v35 + 26) << 16), v164);

  v93 = v166;
  sub_100012400(v92 + *(v165 + 88), v166, &qword_10058F4D0, &qword_100491AB0);
  v95 = v167;
  v94 = v168;
  if ((*(v167 + 48))(v93, 1, v168) == 1)
  {
    sub_100016290(v93, &qword_10058F4D0, &qword_100491AB0);
LABEL_22:
    v130 = Logger.logObject.getter();
    v131 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v130, v131))
    {
      v132 = swift_slowAlloc();
      *v132 = 0;
      _os_log_impl(&_mh_execute_header, v130, v131, "Missing pairingKeyStoreID or bundleID to notify pair-verify completion", v132, 2u);
    }

    sub_100023AD8(v92, type metadata accessor for NANPeer);
    return;
  }

  v96 = *(v95 + 32);
  v97 = v154;
  v96(v154, v93, v94);
  v98 = *(v35 + qword_10059BC48 + 8);
  if (!v98)
  {
    (*(v95 + 8))(v97, v94);
    v92 = v164;
    goto LABEL_22;
  }

  v166 = *(v35 + qword_10059BC48);
  v99 = swift_allocObject();
  *(v99 + 16) = 0;
  v162 = (v99 + 16);

  v165 = dispatch_semaphore_create(0);
  v100 = type metadata accessor for TaskPriority();
  (*(*(v100 - 8) + 56))(v163, 1, 1, v100);
  v151 = *(v95 + 16);
  v152 = v96;
  v101 = v155;
  (v151)(v155, v97, v94);
  v102 = (*(v95 + 80) + 88) & ~*(v95 + 80);
  v103 = swift_allocObject();
  v103[2] = 0;
  v103[3] = 0;
  v104 = v157;
  v103[4] = v156;
  v103[5] = v104;
  v106 = v165;
  v105 = v166;
  v103[6] = v165;
  v103[7] = v99;
  v103[8] = v35;
  v103[9] = v105;
  v103[10] = v98;
  (v152)(v103 + v102, v101, v168);

  v107 = v98;

  v108 = v106;
  v165 = v99;

  sub_1003ACB3C(0, 0, v163, &unk_1004B4690, v103);

  v109 = v158;
  static DispatchTime.now()();
  v110 = v159;
  + infix(_:_:)();
  v111 = v161;
  v112 = *(v160 + 8);
  v112(v109, v161);
  v163 = v108;
  OS_dispatch_semaphore.wait(timeout:)();
  v112(v110, v111);
  if (static DispatchTimeoutResult.== infix(_:_:)())
  {
    v113 = v153;
    v114 = v168;
    (v151)(v153, v154, v168);

    v115 = Logger.logObject.getter();
    v116 = static os_log_type_t.error.getter();

    v117 = os_log_type_enabled(v115, v116);
    v118 = v164;
    if (v117)
    {
      v119 = swift_slowAlloc();
      v169[0] = swift_slowAlloc();
      *v119 = 136315394;
      v120 = sub_100002320(v166, v107, v169);

      *(v119 + 4) = v120;
      *(v119 + 12) = 2080;
      sub_100443AA0(&qword_100597520, &type metadata accessor for UUID);
      v121 = dispatch thunk of CustomStringConvertible.description.getter();
      v123 = v122;
      v124 = v113;
      v125 = v167;
      (*(v167 + 8))(v124, v114);
      v126 = sub_100002320(v121, v123, v169);
      v127 = v163;

      *(v119 + 14) = v126;
      _os_log_impl(&_mh_execute_header, v115, v116, "Timed out waiting to get paired device for %s [PairingKeyStoreID: %s]", v119, 0x16u);
      swift_arrayDestroy();

      v118 = v164;

      v128 = v114;
      v129 = v162;
    }

    else
    {

      v133 = v113;
      v125 = v167;
      (*(v167 + 8))(v133, v114);
      v128 = v114;
      v129 = v162;
      v127 = v163;
    }
  }

  else
  {

    v127 = v163;
    v118 = v164;
    v125 = v167;
    v128 = v168;
    v129 = v162;
  }

  swift_beginAccess();
  if (*v129)
  {
    v134 = [*v129 deviceID];
    v135 = *(v35 + qword_10059A950);
    if (v135 && (v136 = v134, ([*(v35 + qword_10059A950) respondsToSelector:"datapathPairingDidSucceedWithPairingKeyStoreID:deviceID:"] & 1) != 0))
    {
      swift_unknownObjectRetain();
      v137 = v154;
      isa = UUID._bridgeToObjectiveC()().super.isa;
      [v135 datapathPairingDidSucceedWithPairingKeyStoreID:isa deviceID:v136];

      swift_unknownObjectRelease();
      (*(v125 + 8))(v137, v128);
      v139 = v164;
    }

    else
    {

      (*(v125 + 8))(v154, v128);
      v139 = v118;
    }

    sub_100023AD8(v139, type metadata accessor for NANPeer);
  }

  else
  {
    (*(v125 + 8))(v154, v128);
    sub_100023AD8(v118, type metadata accessor for NANPeer);
  }
}

uint64_t sub_10042E3B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a8;
  v8[10] = v15;
  v8[7] = a6;
  v8[8] = a7;
  v8[5] = a4;
  v8[6] = a5;
  v9 = *a6;
  v8[11] = *(*(*a6 + 88) + 8);
  v8[12] = *(v9 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8[13] = AssociatedTypeWitness;
  v11 = *(AssociatedTypeWitness - 8);
  v8[14] = v11;
  v12 = *(v11 + 64) + 15;
  v8[15] = swift_task_alloc();

  return _swift_task_switch(sub_10042E4C8, 0, 0);
}

uint64_t sub_10042E4C8()
{
  v2 = v0[14];
  v1 = v0[15];
  v4 = v0[12];
  v3 = v0[13];
  v5 = v0[11];
  v6 = *(v0[7] + 16);
  swift_unownedRetainStrong();
  (*(v2 + 16))(v1, v6 + *(*v6 + 112), v3);

  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v8 = (*(AssociatedConformanceWitness + 136))(v3, AssociatedConformanceWitness);
  v0[16] = v8;
  (*(v2 + 8))(v1, v3);
  v9 = *v8 + 416;
  v0[17] = *v9;
  v0[18] = v9 & 0xFFFFFFFFFFFFLL | 0x6DFD000000000000;

  return _swift_task_switch(sub_10042E610, v8, 0);
}

uint64_t sub_10042E610()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 128);
  *(v0 + 152) = (*(v0 + 136))(*(v0 + 64), *(v0 + 72), 1, *(v0 + 80));
  *(v0 + 160) = 0;
  v3 = *(v0 + 128);

  return _swift_task_switch(sub_10042E6B4, 0, 0);
}

uint64_t sub_10042E6B4()
{
  v1 = v0[19];
  v2 = v0[6];
  swift_beginAccess();
  v3 = *(v2 + 16);
  *(v2 + 16) = v1;

  v4 = v0[15];
  v5 = v0[5];
  OS_dispatch_semaphore.signal()();

  v6 = v0[1];

  return v6();
}

uint64_t sub_10042E748()
{
  v1 = v0[20];
  v2 = v0[16];
  v3 = v0[7];

  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[20];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed to get paired device from WiFiAwarePairedDevicesStore: %@", v8, 0xCu);
    sub_100016290(v9, &qword_10058B780, &qword_100480AC0);
  }

  else
  {
  }

  v11 = v0[15];
  v12 = v0[5];
  OS_dispatch_semaphore.signal()();

  v13 = v0[1];

  return v13();
}

uint64_t sub_10042E8D0(void *a1)
{
  v133 = a1;
  v2 = v1;
  v3 = *v1;
  v124 = *(*v1 + 88);
  v4 = *(v124 + 8);
  v5 = *(v3 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v131 = *(AssociatedTypeWitness - 8);
  v6 = *(v131 + 64);
  __chkstk_darwin();
  v119 = &v115 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v121 = &v115 - v8;
  __chkstk_darwin();
  v132 = &v115 - v9;
  v127 = type metadata accessor for SymmetricKey();
  v129 = *(v127 - 8);
  v10 = *(v129 + 64);
  __chkstk_darwin();
  v118 = &v115 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v120 = &v115 - v12;
  __chkstk_darwin();
  v130 = &v115 - v13;
  __chkstk_darwin();
  v122 = &v115 - v14;
  __chkstk_darwin();
  v128 = &v115 - v15;
  swift_getAssociatedTypeWitness();
  v123 = v5;
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v16 = type metadata accessor for Preferences();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin();
  v20 = &v115 - v19;
  v21 = qword_10059BC08;

  v125 = v21;
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v117 = v16;
    v26 = v25;
    v137[0] = v25;
    *v24 = 136315138;

    v27 = sub_100433CA8();
    v28 = v2;
    v30 = v29;

    v31 = sub_100002320(v27, v30, v137);
    v2 = v28;

    *(v24 + 4) = v31;
    _os_log_impl(&_mh_execute_header, v22, v23, "%s: adding NM-TK", v24, 0xCu);
    sub_100002A00(v26);
    v16 = v117;
  }

  else
  {
  }

  v32 = v2[2];
  swift_unownedRetainStrong();
  WiFiInterface.preferences.getter();

  v33 = Preferences.enableNANPairingLogs.getter(v16);
  (*(v17 + 8))(v20, v16);
  v34 = AssociatedTypeWitness;
  v126 = v2;
  if (v33)
  {
    v35 = v133[3];
    v36 = v133[4];
    sub_100029B34(v133, v35);
    v37 = v128;
    v38 = v134;
    result = (*(v36 + 8))(v35, v36);
    if (v38)
    {
      return result;
    }

    v134 = 0;
    v40 = v129;
    v41 = v122;
    v42 = v127;
    (*(v129 + 16))(v122, v37, v127);

    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v117 = swift_slowAlloc();
      v137[0] = v117;
      *v45 = 136315394;

      v116 = v44;
      v46 = sub_100433CA8();
      v48 = v47;

      v49 = sub_100002320(v46, v48, v137);

      *(v45 + 4) = v49;
      *(v45 + 12) = 2080;
      v50 = v41;
      v51 = SymmetricKey.rawRepresentation.getter();
      v53 = v52;
      v54 = Data.hexString.getter(v51, v52);
      v115 = v43;
      v55 = v54;
      v57 = v56;
      sub_1000124C8(v51, v53);
      v58 = *(v129 + 8);
      v59 = v50;
      v60 = v42;
      v58(v59, v42);
      v61 = sub_100002320(v55, v57, v137);
      v62 = AssociatedTypeWitness;

      *(v45 + 14) = v61;
      v63 = v115;
      _os_log_impl(&_mh_execute_header, v115, v116, "%s: NM-TK: %s", v45, 0x16u);
      swift_arrayDestroy();

      v34 = v62;

      v58(v128, v60);
    }

    else
    {

      v64 = *(v40 + 8);
      v64(v41, v42);
      v64(v37, v42);
    }
  }

  v65 = v131;
  swift_unownedRetainStrong();
  v66 = *(*v32 + 96);
  swift_beginAccess();
  v67 = *(v65 + 16);
  v68 = v132;
  v67(v132, &v32[v66], v34);

  v69 = v133[3];
  v70 = v133[4];
  sub_100029B34(v133, v69);
  v71 = v130;
  v72 = v134;
  (*(v70 + 8))(v69, v70);
  if (v72)
  {
    return (*(v65 + 8))(v68, AssociatedTypeWitness);
  }

  v122 = v32;
  v128 = v67;
  v134 = v65 + 16;
  v73 = *(v126 + 64);
  v74 = *(v126 + 26);
  v75 = *(v126 + 12);
  v76 = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v78 = v75 | (v74 << 16);
  (*(AssociatedConformanceWitness + 296))(v71, v73, v78, v76, AssociatedConformanceWitness);
  v117 = v78;
  v123 = AssociatedConformanceWitness;
  LODWORD(v124) = v73;
  v79 = v129 + 8;
  v130 = *(v129 + 8);
  (v130)(v71, v127);
  v80 = *(v65 + 8);
  v131 = v65 + 8;
  v80(v132, AssociatedTypeWitness);
  v81 = v80;

  v82 = Logger.logObject.getter();
  v83 = static os_log_type_t.default.getter();
  v84 = os_log_type_enabled(v82, v83);
  v129 = v79;
  if (v84)
  {
    v85 = swift_slowAlloc();
    v86 = swift_slowAlloc();
    v136 = v86;
    *v85 = 136315138;

    v87 = sub_100433CA8();
    v89 = v88;

    v90 = sub_100002320(v87, v89, &v136);

    *(v85 + 4) = v90;
    _os_log_impl(&_mh_execute_header, v82, v83, "%s: adding KEK", v85, 0xCu);
    sub_100002A00(v86);
  }

  else
  {
  }

  v91 = v128;
  v92 = v122;
  swift_unownedRetainStrong();
  v93 = *(*v92 + 96);
  swift_beginAccess();
  v94 = v121;
  v95 = AssociatedTypeWitness;
  v91(v121, &v92[v93], AssociatedTypeWitness);

  v96 = v133[3];
  v97 = v133[4];
  sub_100029B34(v133, v96);
  v98 = v120;
  (*(v97 + 24))(v96, v97);
  (*(v123 + 312))(v98, v124, v117, v95);
  (v130)(v98, v127);
  v132 = v81;
  (v81)(v94, v95);

  v99 = Logger.logObject.getter();
  v100 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v99, v100))
  {
    v101 = swift_slowAlloc();
    v102 = swift_slowAlloc();
    v135 = v102;
    *v101 = 136315138;

    v103 = sub_100433CA8();
    v105 = v104;

    v106 = sub_100002320(v103, v105, &v135);

    *(v101 + 4) = v106;
    _os_log_impl(&_mh_execute_header, v99, v100, "%s: adding KCK", v101, 0xCu);
    sub_100002A00(v102);
  }

  else
  {
  }

  v107 = v128;
  swift_unownedRetainStrong();
  v108 = *(*v92 + 96);
  swift_beginAccess();
  v109 = v119;
  v110 = AssociatedTypeWitness;
  v107(v119, &v92[v108], AssociatedTypeWitness);

  v111 = v133[3];
  v112 = v133[4];
  sub_100029B34(v133, v111);
  v113 = v118;
  (*(v112 + 32))(v111, v112);
  (*(v123 + 320))(v113, v124, v117, v110);
  v114 = v132;
  (v130)(v113, v127);
  result = v114(v109, v110);
  *(v126 + qword_10059BC20) = 1;
  return result;
}

void sub_10042F6F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v9 = *v4;
  v10 = (((a3 & 0x1000000000000000) != 0) | (2 * a4));

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  v13 = os_log_type_enabled(v11, v12);
  if (v10 == 4 && (a1 & 0xFF00000000) != 0)
  {
    if (v13)
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *&v86 = v15;
      *v14 = 136315138;
      v16 = sub_100433CA8();
      v18 = v17;

      v19 = sub_100002320(v16, v18, &v86);

      *(v14 + 4) = v19;
      _os_log_impl(&_mh_execute_header, v11, v12, "%s: got authentication rejection!", v14, 0xCu);
      sub_100002A00(v15);
    }

    else
    {
    }

    v44 = *(v5 + qword_10059A950);
    if (v44)
    {
      [v44 datapathFailedToStartWithError:9];
    }

    *&v86 = 0xD000000000000021;
    *(&v86 + 1) = 0x80000001004C2790;
    v87 = 9;
    v88 = 4;
    sub_10044020C(&v86);
    v45 = *(v9 + 80);
    v46 = *(v9 + 88);
    v47 = _s17InitiatorInstanceC5StateOMa_0();
    (*(*(v47 - 8) + 8))(&v86, v47);
  }

  else
  {
    v82 = a1;
    if (v13)
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *&v86 = v21;
      *v20 = 136315138;
      v22 = sub_100433CA8();
      v24 = v23;

      v25 = sub_100002320(v22, v24, &v86);

      *(v20 + 4) = v25;
      _os_log_impl(&_mh_execute_header, v11, v12, "%s: received: authentication response", v20, 0xCu);
      sub_100002A00(v21);

      v26 = v9;
    }

    else
    {

      v26 = v9;
    }

    sub_100429338(&v86);
    if (v88 == 1)
    {
      sub_100029954(&v86, v89);
      v27 = v90;
      v28 = v91;
      sub_100031694(v89, v90);
      v29 = (*(v28 + 56))(v82, a2, a3, a4, v27, v28);
      v49 = v48;
      v51 = v50;
      v53 = v52;
      v85 = v29;

      v54 = Logger.logObject.getter();
      v55 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v54, v55))
      {
        v83 = v51;
        v57 = v26;
        v58 = swift_slowAlloc();
        v59 = v49;
        v60 = swift_slowAlloc();
        *&v86 = v60;
        *v58 = 136315138;
        v61 = sub_100433CA8();
        v63 = v62;

        v64 = sub_100002320(v61, v63, &v86);

        *(v58 + 4) = v64;
        _os_log_impl(&_mh_execute_header, v54, v55, "%s: programming keys", v58, 0xCu);
        sub_100002A00(v60);
        v49 = v59;

        v26 = v57;
        v51 = v83;
      }

      else
      {
      }

      sub_10042E8D0(v89);
      v81 = v26;

      v65 = Logger.logObject.getter();
      v66 = static os_log_type_t.default.getter();
      v80 = v49;
      if (os_log_type_enabled(v65, v66))
      {
        v67 = swift_slowAlloc();
        v68 = swift_slowAlloc();
        *&v86 = v68;
        *v67 = 136315138;
        v69 = sub_100433CA8();
        v71 = v70;

        v72 = sub_100002320(v69, v71, &v86);

        *(v67 + 4) = v72;
        _os_log_impl(&_mh_execute_header, v65, v66, "%s: sending: authentication confirmation", v67, 0xCu);
        sub_100002A00(v68);
        v49 = v80;
      }

      else
      {
      }

      v73 = v5[2];
      swift_unownedRetainStrong();
      sub_10040DD50();

      v92[0] = v85;
      v92[1] = v49;
      v92[2] = v51;
      v92[3] = v53;
      v93 = 1;
      v74 = *(v5 + 26);
      v75 = *(v5 + 12);
      sub_100143FBC(v85, v49, v51, v53);
      v76 = *TimeBitmap.Slot.FF.unsafeMutableAddressor();
      v77 = swift_allocObject();
      swift_weakInit();
      v78 = swift_allocObject();
      v78[2] = *(v81 + 80);
      v78[3] = *(v81 + 88);
      v78[4] = v77;

      sub_1003A8260(v92, v75 | (v74 << 16), 0, 0, 0x400, ((v76 << 8) | (v76 << 16) | (v76 << 24) | (v76 << 32) | (v76 << 40) | (v76 << 48) | (v76 << 56) | v76), 0, 3, 3000, sub_100443E10, v78);

      sub_1000B21F4(v85, v80, v51, v53);

      sub_10002B154(v89, &v86);
      v88 = 2;
      sub_10044020C(&v86);
      v79 = _s17InitiatorInstanceC5StateOMa_0();
      (*(*(v79 - 8) + 8))(&v86, v79);
      sub_1000B21F4(v85, v80, v51, v53);
      sub_100002A00(v89);
    }

    else
    {
      v30 = *(v26 + 80);
      v31 = *(v26 + 88);
      v32 = _s17InitiatorInstanceC5StateOMa_0();
      v33 = *(*(v32 - 8) + 8);
      v33(&v86, v32);
      swift_retain_n();
      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v89[0] = swift_slowAlloc();
        *v36 = 136315650;
        v37 = sub_100433CA8();
        v39 = sub_100002320(v37, v38, v89);

        *(v36 + 4) = v39;
        *(v36 + 12) = 2080;
        *(v36 + 14) = sub_100002320(0xD00000000000001DLL, 0x80000001004C2700, v89);
        *(v36 + 22) = 2080;
        sub_100429338(&v86);

        v40 = sub_100428BE0(v32);
        v42 = v41;

        v33(&v86, v32);
        v43 = sub_100002320(v40, v42, v89);

        *(v36 + 24) = v43;
        _os_log_impl(&_mh_execute_header, v34, v35, "%s: %s: invalid state: %s", v36, 0x20u);
        swift_arrayDestroy();
      }

      else
      {
      }
    }
  }
}

void sub_100430470(char a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (a1)
    {
      sub_100429338(v23);
      if (v24 == 2)
      {
        sub_100002A00(v23);
        v4 = *(v3 + 16);
        swift_unownedRetainStrong();
        sub_10041EA80();

        v14 = Logger.logObject.getter();
        v15 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v14, v15))
        {
          v17 = swift_slowAlloc();
          v18 = swift_slowAlloc();
          v23[0] = v18;
          *v17 = 136315138;
          v19 = sub_100433CA8();
          v21 = v20;

          v22 = sub_100002320(v19, v21, v23);

          *(v17 + 4) = v22;
          _os_log_impl(&_mh_execute_header, v14, v15, "%s: try sending follow-up frame", v17, 0xCu);
          sub_100002A00(v18);
        }

        else
        {
        }

        sub_10042C9D0();

        return;
      }

      v5 = _s17InitiatorInstanceC5StateOMa_0();
      (*(*(v5 - 8) + 8))(v23, v5);
    }

    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v23[0] = v9;
      *v8 = 136315138;
      v10 = sub_100433CA8();
      v12 = v11;

      v13 = sub_100002320(v10, v12, v23);

      *(v8 + 4) = v13;
      _os_log_impl(&_mh_execute_header, v6, v7, "%s: error sending the authentication confirmation", v8, 0xCu);
      sub_100002A00(v9);
    }

    else
    {
    }
  }
}

void sub_1004308F8(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  v6 = v3;
  v295 = a3;
  v270 = a1;
  v7 = *v3;
  v292 = type metadata accessor for SymmetricKey();
  v271 = *(v292 - 8);
  v8 = *(v271 + 64);
  __chkstk_darwin();
  v10 = &v244 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v288 = &v244 - v11;
  v302 = *(v7 + 88);
  v12 = *(v302 + 8);
  v13 = *(v7 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v269 = *(AssociatedTypeWitness - 8);
  v15 = v269[8];
  __chkstk_darwin();
  v287 = &v244 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v286 = &v244 - v17;
  v280 = type metadata accessor for NANPeer(0);
  v18 = *(*(v280 - 8) + 64);
  __chkstk_darwin();
  v279 = &v244 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(*(sub_10005DC58(&qword_1005985E0, &unk_1004B0F80) - 8) + 64);
  __chkstk_darwin();
  v275 = &v244 - v21;
  v291 = type metadata accessor for UUID();
  v274 = *(v291 - 8);
  v22 = *(v274 + 64);
  __chkstk_darwin();
  v272 = &v244 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v268 = v23;
  __chkstk_darwin();
  v276 = &v244 - v24;
  v25 = *(*(sub_10005DC58(&unk_1005985B0, &unk_1004939A0) - 8) + 64);
  __chkstk_darwin();
  v278 = &v244 - v26;
  v27 = *(*(sub_10005DC58(&qword_10058F4D0, &qword_100491AB0) - 8) + 64);
  __chkstk_darwin();
  v281 = &v244 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v293 = &v244 - v29;
  v30 = swift_getAssociatedTypeWitness();
  v267 = *(v30 - 8);
  v31 = v267[8];
  __chkstk_darwin();
  v277 = &v244 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v284 = &v244 - v33;
  v301 = v13;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v289 = AssociatedConformanceWitness;
  v285 = v30;
  swift_getAssociatedConformanceWitness();
  v283 = type metadata accessor for Preferences();
  v266 = *(v283 - 8);
  v35 = *(v266 + 64);
  __chkstk_darwin();
  v282 = &v244 - v36;
  v37 = *(*(type metadata accessor for NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement.KeySpecificData.NANIdentityKeyData(0) - 8) + 64);
  __chkstk_darwin();
  v273 = &v244 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v299 = &v244 - v39;
  v297 = type metadata accessor for NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement.KeySpecificData(0);
  v40 = *(*(v297 - 8) + 64);
  __chkstk_darwin();
  v294 = &v244 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v265 = type metadata accessor for NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement(0);
  v298 = *(v265 - 8);
  v42 = *(v298 + 64);
  __chkstk_darwin();
  v296 = &v244 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = *(*(sub_10005DC58(&unk_100595C00, &qword_10048F790) - 8) + 64);
  __chkstk_darwin();
  v304 = &v244 - v45;
  v46 = qword_10059BC08;

  v47 = Logger.logObject.getter();
  v48 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    v300 = v46;
    v50 = v49;
    v51 = swift_slowAlloc();
    v303 = v4;
    v52 = v51;
    *&v309 = v51;
    *v50 = 136315138;

    v53 = sub_100433CA8();
    v290 = v10;
    v54 = AssociatedTypeWitness;
    v55 = v6;
    v57 = v56;

    v58 = sub_100002320(v53, v57, &v309);
    v6 = v55;
    AssociatedTypeWitness = v54;
    v10 = v290;

    *(v50 + 4) = v58;
    _os_log_impl(&_mh_execute_header, v47, v48, "%s: received: pairing caching follow up", v50, 0xCu);
    sub_100002A00(v52);
    v5 = v303;

    v46 = v300;
  }

  else
  {
  }

  sub_100429338(&v309);
  v59 = v304;
  if (BYTE2(v314) == 2)
  {
    sub_100029954(&v309, v316);
    Array<A>.retrieve(attribute:)(36, v295, v59);
    v60 = type metadata accessor for NANAttribute(0);
    if ((*(*(v60 - 8) + 48))(v59, 1, v60) == 1)
    {
      sub_100016290(v59, &unk_100595C00, &qword_10048F790);
LABEL_16:

      v82 = Logger.logObject.getter();
      v83 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v82, v83))
      {
        v84 = swift_slowAlloc();
        v85 = swift_slowAlloc();
        *&v309 = v85;
        *v84 = 136315138;

        v86 = sub_100433CA8();
        v88 = v87;

        v89 = sub_100002320(v86, v88, &v309);

        *(v84 + 4) = v89;
        _os_log_impl(&_mh_execute_header, v82, v83, "%s: received: pairing caching follow up with no shared key descriptor!", v84, 0xCu);
        sub_100002A00(v85);
      }

      else
      {
      }

      goto LABEL_67;
    }

    if (swift_getEnumCaseMultiPayload() != 32)
    {
      sub_100023AD8(v59, type metadata accessor for NANAttribute);
      goto LABEL_16;
    }

    v300 = v46;
    v328 = v6;
    v70 = *(v59 + 80);
    v326[4] = *(v59 + 64);
    v326[5] = v70;
    v327 = *(v59 + 96);
    v71 = *(v59 + 16);
    v326[0] = *v59;
    v326[1] = v71;
    v72 = *(v59 + 48);
    v326[2] = *(v59 + 32);
    v326[3] = v72;
    v73 = v317;
    v74 = v318;
    sub_100029B34(v316, v317);
    v75 = (*(v74 + 88))(v326, v73, v74);
    if (!v5)
    {
      v77 = v75;
      v78 = *(v75 + 16);
      v264 = v75;
      v295 = v78;
      if (v78)
      {
        v79 = 0;
        v250 = v270 >> 16;
        v255 = v328 + qword_10059BC28;
        v80 = *(v265 + 24);
        v265 = v75 + ((*(v298 + 80) + 32) & ~*(v298 + 80));
        v260 = (v269 + 2);
        v261 = (v271 + 8);
        v262 = (v269 + 1);
        v252 = (v266 + 8);
        v269 = v267 + 2;
        v270 = v80;
        v266 = v289 + 128;
        v251 = (v267 + 1);
        v253 = (v274 + 32);
        v249 = (v274 + 56);
        v246 = v274 + 16;
        v247 = (v274 + 48);
        v244 = v274 + 8;
        v245 = v268 + 7;
        *&v76 = 136315138;
        v248 = v76;
        *&v76 = 136315394;
        v254 = v76;
        v81 = v294;
        v263 = AssociatedTypeWitness;
        v290 = v10;
        while (1)
        {
          if (v79 >= *(v77 + 16))
          {
            __break(1u);
            return;
          }

          v94 = *(v298 + 72);
          v304 = v79;
          v95 = v296;
          sub_100443DA8(v265 + v94 * v79, v296, type metadata accessor for NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement);
          sub_10044384C(v95 + v270, v81, type metadata accessor for NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement.KeySpecificData);
          EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
          if (EnumCaseMultiPayload <= 1)
          {
            break;
          }

          v303 = v5;
          if (EnumCaseMultiPayload != 2)
          {
            v122 = v81[2];
            v268 = v81[1];
            v123 = v81[3];
            v124 = v81[4];
            swift_retain_n();
            v125 = Logger.logObject.getter();
            v126 = static os_log_type_t.error.getter();
            v127 = os_log_type_enabled(v125, v126);
            v271 = v122;
            if (v127)
            {
              v128 = swift_slowAlloc();
              *&v309 = swift_slowAlloc();
              *v128 = v254;

              v129 = sub_100433CA8();
              v131 = v130;

              v132 = sub_100002320(v129, v131, &v309);

              *(v128 + 4) = v132;
              *(v128 + 12) = 2080;
              v133 = *(v328 + 26);
              v134 = *(v328 + 12);

              v135 = WiFiAddress.description.getter(v134 | (v133 << 16));
              v137 = v136;

              v138 = sub_100002320(v135, v137, &v309);

              *(v128 + 14) = v138;
              _os_log_impl(&_mh_execute_header, v125, v126, "%s: intiator adding rxBIGTK!: %s", v128, 0x16u);
              swift_arrayDestroy();

              v139 = v263;
            }

            else
            {

              v139 = AssociatedTypeWitness;
            }

            v171 = v328;
            v172 = v328[2];
            swift_unownedRetainStrong();
            v173 = *(*v172 + 96);
            swift_beginAccess();
            v174 = v287;
            (*v260)(v287, v172 + v173, v139);

            *&v309 = v123;
            *(&v309 + 1) = v124;
            sub_10000AB0C(v123, v124);
            v175 = v123;
            v176 = v290;
            SymmetricKey.init<A>(data:)();
            v177 = *(v171 + 26);
            v178 = *(v171 + 12);
            v179 = swift_getAssociatedConformanceWitness();
            v180 = v178 | (v177 << 16);
            v181 = v174;
            v182 = v303;
            (*(v179 + 336))(v176, 0, v180, v139, v179);
            v5 = v182;
            AssociatedTypeWitness = v139;
            if (v182)
            {

              sub_100143F68(v326);
              sub_1000124C8(v268, v271);
              sub_1000124C8(v175, v124);
              (*v261)(v176, v292);
              (*v262)(v181, v139);
              goto LABEL_67;
            }

            sub_1000124C8(v268, v271);
            sub_1000124C8(v175, v124);
            (*v261)(v176, v292);
            (*v262)(v181, v139);
LABEL_23:
            v81 = v294;
            v77 = v264;
LABEL_24:
            v93 = v304;
            goto LABEL_25;
          }

          v105 = v81[2];
          v268 = v81[1];
          v106 = v81[3];
          v107 = v81[4];
          swift_retain_n();
          v108 = Logger.logObject.getter();
          v109 = static os_log_type_t.error.getter();
          v110 = os_log_type_enabled(v108, v109);
          v267 = v106;
          v271 = v105;
          if (v110)
          {
            v111 = swift_slowAlloc();
            *&v309 = swift_slowAlloc();
            *v111 = v254;

            v112 = sub_100433CA8();
            v114 = v113;

            v115 = sub_100002320(v112, v114, &v309);

            *(v111 + 4) = v115;
            *(v111 + 12) = 2080;
            v116 = *(v328 + 26);
            v117 = *(v328 + 12);

            v118 = WiFiAddress.description.getter(v117 | (v116 << 16));
            v120 = v119;

            v121 = sub_100002320(v118, v120, &v309);

            *(v111 + 14) = v121;
            _os_log_impl(&_mh_execute_header, v108, v109, "%s: intiator adding rxIGTK! for peer: %s", v111, 0x16u);
            swift_arrayDestroy();

            AssociatedTypeWitness = v263;
          }

          else
          {
          }

          v160 = v328;
          v161 = v328[2];
          swift_unownedRetainStrong();
          v162 = *(*v161 + 96);
          swift_beginAccess();
          v163 = v286;
          (*v260)(v286, v161 + v162, AssociatedTypeWitness);

          v164 = v267;
          *&v309 = v267;
          *(&v309 + 1) = v107;
          sub_10000AB0C(v267, v107);
          v165 = v107;
          v166 = v288;
          SymmetricKey.init<A>(data:)();
          v167 = *(v160 + 26);
          v168 = *(v160 + 12);
          v169 = swift_getAssociatedConformanceWitness();
          v170 = v303;
          (*(v169 + 328))(v166, 0, v168 | (v167 << 16), AssociatedTypeWitness, v169);
          if (v170)
          {

            sub_100143F68(v326);
            sub_1000124C8(v268, v271);
            sub_1000124C8(v164, v165);
            (*v261)(v166, v292);
            (*v262)(v163, AssociatedTypeWitness);
            goto LABEL_67;
          }

          sub_1000124C8(v268, v271);
          sub_1000124C8(v164, v165);
          (*v261)(v166, v292);
          (*v262)(v163, AssociatedTypeWitness);
          v81 = v294;
          v77 = v264;
          v93 = v304;
          v5 = 0;
LABEL_25:
          v79 = (v93 + 1);
          if (v295 == v79)
          {
            goto LABEL_65;
          }
        }

        if (EnumCaseMultiPayload)
        {
          goto LABEL_24;
        }

        sub_10044384C(v81, v299, type metadata accessor for NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement.KeySpecificData.NANIdentityKeyData);

        v97 = Logger.logObject.getter();
        v98 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v97, v98))
        {
          v99 = swift_slowAlloc();
          v100 = swift_slowAlloc();
          *&v309 = v100;
          *v99 = v248;

          v101 = sub_100433CA8();
          v103 = v102;

          v104 = sub_100002320(v101, v103, &v309);

          *(v99 + 4) = v104;
          _os_log_impl(&_mh_execute_header, v97, v98, "%s: saving NIK", v99, 0xCu);
          sub_100002A00(v100);
        }

        else
        {
        }

        v303 = v5;
        v140 = v328[2];
        swift_unownedRetainStrong();
        v141 = v282;
        WiFiInterface.preferences.getter();

        v142 = v283;
        v143 = Preferences.enableNANPairingLogs.getter(v283);
        (*v252)(v141, v142);
        v144 = v269;
        v271 = v140;
        if (v143)
        {
          v145 = v273;
          sub_100443DA8(v299, v273, type metadata accessor for NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement.KeySpecificData.NANIdentityKeyData);

          v146 = Logger.logObject.getter();
          v147 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v146, v147))
          {
            v148 = swift_slowAlloc();
            v268 = swift_slowAlloc();
            *&v309 = v268;
            *v148 = v254;

            v149 = sub_100433CA8();
            v151 = v150;

            v152 = sub_100002320(v149, v151, &v309);

            *(v148 + 4) = v152;
            *(v148 + 12) = 2080;
            v153 = NANIdentityKey.getKey()();
            v155 = v154;
            v156 = Data.hexString.getter(v153, v154);
            v158 = v157;
            sub_1000124C8(v153, v155);
            sub_100023AD8(v145, type metadata accessor for NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement.KeySpecificData.NANIdentityKeyData);
            v159 = sub_100002320(v156, v158, &v309);
            v144 = v269;

            *(v148 + 14) = v159;
            _os_log_impl(&_mh_execute_header, v146, v147, "%s: NIK: %s", v148, 0x16u);
            swift_arrayDestroy();
          }

          else
          {

            sub_100023AD8(v145, type metadata accessor for NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement.KeySpecificData.NANIdentityKeyData);
          }

          v140 = v271;
        }

        v268 = v317;
        v183 = v318;
        v267 = sub_100029B34(v316, v317);
        swift_unownedRetainStrong();
        v184 = v140 + *(*v140 + 112);
        v185 = v284;
        v186 = v285;
        v258 = *v144;
        v258(v284, v184, v285);

        v187 = v289;
        v257 = *(v289 + 128);
        v188 = v257(v186, v289);
        v256 = *v251;
        v256(v185, v186);
        v259 = *(v183 + 80);
        v189 = swift_getAssociatedTypeWitness();
        v190 = swift_getAssociatedConformanceWitness();
        v191 = v303;
        v259(v299, v188, v189, v190, v268, v183);

        if (v191)
        {

          sub_100143F68(v326);
          sub_100023AD8(v299, type metadata accessor for NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement.KeySpecificData.NANIdentityKeyData);
          goto LABEL_67;
        }

        swift_unownedRetainStrong();
        v192 = v277;
        v258(v277, v140 + *(*v140 + 112), v186);

        v257(v186, v187);
        v256(v192, v186);
        v193 = LongTermPairingKeyStore.loadPairedPeersWithIDs()();

        __chkstk_darwin();
        *(&v244 - 2) = v299;
        v194 = v278;
        sub_10019BC64(sub_100443B64, (&v244 - 4), v193, v278);
        v5 = 0;

        v195 = sub_10005DC58(&unk_100597500, &unk_1004939B0);
        if ((*(*(v195 - 8) + 48))(v194, 1, v195) == 1)
        {
          sub_100016290(v194, &unk_1005985B0, &unk_1004939A0);
          v196 = v291;
          (*v249)(v293, 1, 1, v291);
        }

        else
        {
          v197 = *(v195 + 48);
          v198 = v293;
          v196 = v291;
          (*v253)(v293, v194, v291);
          (*v249)(v198, 0, 1, v196);
          sub_100023AD8(v194 + v197, type metadata accessor for NANPairedDeviceSharedAssociation);
        }

        AssociatedTypeWitness = v263;
        v199 = v281;
        v200 = *(v255 + 80);
        v313 = *(v255 + 64);
        v314 = v200;
        v315 = *(v255 + 96);
        v201 = *(v255 + 16);
        v309 = *v255;
        v310 = v201;
        v202 = *(v255 + 48);
        v311 = *(v255 + 32);
        v312 = v202;
        if (*(&v309 + 1))
        {
          v319 = v309;
          v203 = *(v255 + 64);
          v322 = *(v255 + 48);
          v323 = v203;
          v324 = *(v255 + 80);
          v325 = *(v255 + 96);
          v204 = *(v255 + 32);
          v320 = *(v255 + 16);
          v321 = v204;
          sub_100012400(v293, v281, &qword_10058F4D0, &qword_100491AB0);
          if ((*v247)(v199, 1, v196) != 1)
          {
            v268 = *v253;
            (v268)(v276, v199, v196);
            sub_100012400(&v309, v307, &qword_1005968A0, &unk_100499050);

            sub_100012400(&v309, v307, &qword_1005968A0, &unk_100499050);
            v213 = Logger.logObject.getter();
            v214 = static os_log_type_t.default.getter();
            sub_100016290(&v309, &qword_1005968A0, &unk_100499050);
            if (os_log_type_enabled(v213, v214))
            {
              v215 = swift_slowAlloc();
              v216 = swift_slowAlloc();
              v303 = 0;
              v306 = v216;
              *v215 = v254;
              v217 = sub_100433CA8();
              v219 = v218;

              v220 = sub_100002320(v217, v219, &v306);

              *(v215 + 4) = v220;
              *(v215 + 12) = 2080;
              v307[4] = v313;
              v307[5] = v314;
              v308 = v315;
              v307[0] = v309;
              v307[1] = v310;
              v307[2] = v311;
              v307[3] = v312;
              sub_100443704(v307, &v305);
              v221 = NANPairing.Metadata.description.getter();
              v223 = v222;
              sub_100016290(&v309, &qword_1005968A0, &unk_100499050);
              v224 = sub_100002320(v221, v223, &v306);

              *(v215 + 14) = v224;
              _os_log_impl(&_mh_execute_header, v213, v214, "%s: updating WiFiAwarePairedDeviceStore with metadata: %s", v215, 0x16u);
              swift_arrayDestroy();
              v5 = v303;
            }

            else
            {
            }

            v225 = type metadata accessor for TaskPriority();
            (*(*(v225 - 8) + 56))(v275, 1, 1, v225);
            v226 = v274;
            v227 = v272;
            v228 = v291;
            (*(v274 + 16))(v272, v276, v291);
            v229 = (*(v226 + 80) + 152) & ~*(v226 + 80);
            v230 = &v245[v229] & 0xFFFFFFFFFFFFFFF8;
            v231 = swift_allocObject();
            *(v231 + 16) = 0;
            *(v231 + 24) = 0;
            v232 = v302;
            *(v231 + 32) = v301;
            *(v231 + 40) = v232;
            v233 = v324;
            *(v231 + 112) = v323;
            *(v231 + 128) = v233;
            *(v231 + 144) = v325;
            v234 = v320;
            *(v231 + 48) = v319;
            *(v231 + 64) = v234;
            v235 = v322;
            *(v231 + 80) = v321;
            *(v231 + 96) = v235;
            (v268)(v231 + v229, v227, v228);
            *(v231 + v230) = v328;

            sub_1003587D4(0, 0, v275, &unk_1004B4680, v231);

            (*(v226 + 8))(v276, v228);
            AssociatedTypeWitness = v263;
            goto LABEL_22;
          }

          sub_100016290(v199, &qword_10058F4D0, &qword_100491AB0);
        }

        v205 = Logger.logObject.getter();
        v206 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v205, v206))
        {
          v207 = swift_slowAlloc();
          v208 = swift_slowAlloc();
          *&v307[0] = v208;
          *v207 = v248;

          v209 = sub_100433CA8();
          v211 = v210;

          v212 = sub_100002320(v209, v211, v307);

          *(v207 + 4) = v212;
          _os_log_impl(&_mh_execute_header, v205, v206, "%s: no pairing metadata available to update WiFiAwarePairedDeviceStore", v207, 0xCu);
          sub_100002A00(v208);
        }

        else
        {
        }

LABEL_22:
        swift_unownedRetainStrong();
        v90 = v279;
        v91 = v250;
        sub_10040CD68(v250, v279);
        v92 = v293;
        sub_100443570(v293, v90 + *(v280 + 88));
        sub_10040E430(v90, v91);

        sub_100016290(v92, &qword_10058F4D0, &qword_100491AB0);
        sub_100023AD8(v299, type metadata accessor for NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement.KeySpecificData.NANIdentityKeyData);
        goto LABEL_23;
      }

      v236 = Logger.logObject.getter();
      v237 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v236, v237))
      {
        v238 = swift_slowAlloc();
        v239 = swift_slowAlloc();
        *&v309 = v239;
        *v238 = 136315138;

        v240 = sub_100433CA8();
        v242 = v241;

        v243 = sub_100002320(v240, v242, &v309);

        *(v238 + 4) = v243;
        _os_log_impl(&_mh_execute_header, v236, v237, "%s: no KDEs found in pairing caching follow-up frame", v238, 0xCu);
        sub_100002A00(v239);
      }

      else
      {
      }

LABEL_65:

      *(v328 + qword_10059BC18) = 1;
      sub_10042C26C(v316);
    }

    sub_100143F68(v326);
LABEL_67:
    sub_100002A00(v316);
    return;
  }

  v61 = _s17InitiatorInstanceC5StateOMa_0();
  (*(*(v61 - 8) + 8))(&v309, v61);

  v62 = Logger.logObject.getter();
  v63 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v62, v63))
  {
    v64 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    *&v309 = v65;
    *v64 = 136315138;

    v66 = sub_100433CA8();
    v68 = v67;

    v69 = sub_100002320(v66, v68, &v309);

    *(v64 + 4) = v69;
    _os_log_impl(&_mh_execute_header, v62, v63, "%s: received: pairing caching follow up but not authenticated confirmation generated state!", v64, 0xCu);
    sub_100002A00(v65);
  }

  else
  {
  }
}

uint64_t sub_100432A54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[16] = a5;
  v6[17] = a6;
  v6[15] = a4;
  v7 = type metadata accessor for UUID();
  v6[18] = v7;
  v8 = *(v7 - 8);
  v6[19] = v8;
  v9 = *(v8 + 64) + 15;
  v6[20] = swift_task_alloc();

  return _swift_task_switch(sub_100432B18, 0, 0);
}

uint64_t sub_100432B18()
{
  v1 = *(v0[17] + 16);
  v0[21] = v1;
  swift_unownedRetainStrong();
  v2 = swift_task_alloc();
  v0[22] = v2;
  *v2 = v0;
  v2[1] = sub_100432BC4;
  v4 = v0[15];
  v3 = v0[16];

  return sub_10043306C(v4, v3, v1);
}

uint64_t sub_100432BC4(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 176);
  v8 = *v2;
  v3[23] = a1;
  v3[24] = v1;

  if (v1)
  {
    v5 = sub_100433000;
  }

  else
  {
    v6 = v3[21];

    v5 = sub_100432CE0;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100432CE0()
{
  v35 = v0;
  v1 = v0[17];
  v2 = v0[15];
  (*(v0[19] + 16))(v0[20], v0[16], v0[18]);

  sub_100443704(v2, (v0 + 2));
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  sub_100443760(v2);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[19];
    v32 = v0[20];
    v33 = v0[23];
    v6 = v0[17];
    v31 = v0[18];
    v7 = v0[15];
    v8 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *v8 = 136315906;
    v9 = sub_100433CA8();
    v11 = v10;

    v12 = sub_100002320(v9, v11, &v34);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2080;
    v13 = NANPairing.Metadata.description.getter();
    v15 = sub_100002320(v13, v14, &v34);

    *(v8 + 14) = v15;
    *(v8 + 22) = 2080;
    sub_100443AA0(&qword_100597520, &type metadata accessor for UUID);
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    v18 = v17;
    (*(v5 + 8))(v32, v31);
    v19 = sub_100002320(v16, v18, &v34);

    *(v8 + 24) = v19;
    *(v8 + 32) = 2048;
    *(v8 + 34) = v33;
    _os_log_impl(&_mh_execute_header, v3, v4, "%s: updated WiFiAwarePairedDeviceStore with metadata: %s, UUID: %s, DeviceID: %llu", v8, 0x2Au);
    swift_arrayDestroy();
  }

  else
  {
    v21 = v0[19];
    v20 = v0[20];
    v22 = v0[17];
    v23 = v0[18];

    (*(v21 + 8))(v20, v23);
  }

  v24 = *(v0[17] + qword_10059A950);
  if (v24 && ([v24 respondsToSelector:"datapathPairingDidSucceedWithPairingKeyStoreID:deviceID:"] & 1) != 0)
  {
    v25 = v0[23];
    v26 = v0[16];
    swift_unknownObjectRetain();
    isa = UUID._bridgeToObjectiveC()().super.isa;
    [v24 datapathPairingDidSucceedWithPairingKeyStoreID:isa deviceID:v25];

    swift_unknownObjectRelease();
  }

  v28 = v0[20];

  v29 = v0[1];

  return v29();
}

uint64_t sub_100433000()
{
  v2 = v0[20];
  v1 = v0[21];

  v3 = v0[1];
  v4 = v0[24];

  return v3();
}

uint64_t sub_10043306C(uint64_t a1, uint64_t a2, void *a3)
{
  v3[25] = a2;
  v3[26] = a3;
  v3[24] = a1;
  v3[27] = *a3;
  v4 = type metadata accessor for UUID();
  v3[28] = v4;
  v5 = *(v4 - 8);
  v3[29] = v5;
  v6 = *(v5 + 64) + 15;
  v3[30] = swift_task_alloc();

  return _swift_task_switch(sub_100433158, 0, 0);
}

uint64_t sub_100433158()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 192);
  v3 = *(**(v0 + 208) + 112);
  v4 = *(v1 + 432);
  v5 = *(*(v1 + 440) + 8);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v7 = *(AssociatedConformanceWitness + 136);
  v8 = swift_checkMetadataState();
  v9 = v7(v8, AssociatedConformanceWitness);
  *(v0 + 248) = v9;
  *(v0 + 256) = *v2;
  *(v0 + 264) = v2[1];
  *(v0 + 272) = v2[4];
  *(v0 + 280) = v2[5];
  *(v0 + 288) = v2[6];
  NANPairing.Metadata.pairedDeviceMetadata.getter((v0 + 120));
  v10 = *v9 + 440;
  *(v0 + 296) = *v10;
  *(v0 + 304) = v10 & 0xFFFFFFFFFFFFLL | 0x4F19000000000000;

  return _swift_task_switch(sub_1004332C4, v9, 0);
}

uint64_t sub_1004332C4()
{
  v1 = *(v0 + 304);
  v2 = *(v0 + 248);
  v3 = (*(v0 + 296))(*(v0 + 256), *(v0 + 264), v0 + 120, *(v0 + 200), *(v0 + 272), *(v0 + 288), *(v0 + 280));
  *(v0 + 312) = 0;
  v4 = *(v0 + 240);
  v5 = *(v0 + 248);
  v6 = v3;
  sub_1000B7220(v0 + 120);

  v7 = *(v0 + 8);

  return v7(v6);
}

uint64_t sub_1004333B4()
{
  v35 = v0;
  v1 = v0[31];
  sub_1000B7220((v0 + 15));

  if (qword_1005943E0 != -1)
  {
    swift_once();
  }

  v2 = v0[39];
  v4 = v0[29];
  v3 = v0[30];
  v5 = v0[28];
  v7 = v0[24];
  v6 = v0[25];
  v8 = type metadata accessor for Logger();
  sub_100037644(v8, qword_10059B950);
  (*(v4 + 16))(v3, v6, v5);
  sub_100443704(v7, (v0 + 2));
  swift_errorRetain();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();
  sub_100443760(v7);

  if (os_log_type_enabled(v9, v10))
  {
    v11 = v0[29];
    v32 = v0[30];
    v33 = v0[39];
    v12 = v0[28];
    v13 = v0[24];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v34[0] = swift_slowAlloc();
    *v14 = 136315906;
    *(v14 + 4) = sub_100002320(0x69726961504E414ELL, 0xEA0000000000676ELL, v34);
    *(v14 + 12) = 2080;
    v16 = NANPairing.Metadata.description.getter();
    v18 = sub_100002320(v16, v17, v34);

    *(v14 + 14) = v18;
    *(v14 + 22) = 2080;
    sub_100443AA0(&qword_100597520, &type metadata accessor for UUID);
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    v21 = v20;
    (*(v11 + 8))(v32, v12);
    v22 = sub_100002320(v19, v21, v34);

    *(v14 + 24) = v22;
    *(v14 + 32) = 2112;
    swift_errorRetain();
    v23 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 34) = v23;
    *v15 = v23;
    _os_log_impl(&_mh_execute_header, v9, v10, "%s: error saving pairing metadata: %s, with UUID: %s, to WiFiAwarePairedDevicesStore: %@", v14, 0x2Au);
    sub_100016290(v15, &qword_10058B780, &qword_100480AC0);

    swift_arrayDestroy();
  }

  else
  {
    v25 = v0[29];
    v24 = v0[30];
    v26 = v0[28];

    (*(v25 + 8))(v24, v26);
  }

  v27 = v0[39];
  v28 = v0[30];
  swift_willThrow();

  v29 = v0[1];
  v30 = v0[39];

  return v29();
}

uint64_t sub_100433714()
{
  v1 = *v0;

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *&v14[0] = v5;
    *v4 = 136315138;

    v6 = sub_100433CA8();
    v8 = v7;

    v9 = sub_100002320(v6, v8, v14);

    *(v4 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v2, v3, "%s: data path terminating", v4, 0xCu);
    sub_100002A00(v5);
  }

  else
  {
  }

  v15 = 0;
  memset(v14, 0, sizeof(v14));
  v16 = 5;
  sub_10044020C(v14);
  v10 = *(v1 + 80);
  v11 = *(v1 + 88);
  v12 = _s17InitiatorInstanceC5StateOMa_0();
  return (*(*(v12 - 8) + 8))(v14, v12);
}

BOOL sub_1004338E4()
{
  v1 = *v0;
  sub_100429338(v8);
  v3 = 0;
  if (v14 == 5 && !v13)
  {
    v2 = vorrq_s8(vorrq_s8(v9, v11), vorrq_s8(v10, v12));
    if (!(*&vorr_s8(*v2.i8, *&vextq_s8(v2, v2, 8uLL)) | v8[1] | v8[0]))
    {
      v3 = 1;
    }
  }

  v4 = *(v1 + 80);
  v5 = *(v1 + 88);
  v6 = _s17InitiatorInstanceC5StateOMa_0();
  (*(*(v6 - 8) + 8))(v8, v6);
  return v3;
}

void sub_1004339D0()
{

  oslog = Logger.logObject.getter();
  v0 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v0))
  {
    v1 = swift_slowAlloc();
    v2 = swift_slowAlloc();
    v8 = v2;
    *v1 = 136315138;

    v3 = sub_100433CA8();
    v5 = v4;

    v6 = sub_100002320(v3, v5, &v8);

    *(v1 + 4) = v6;
    _os_log_impl(&_mh_execute_header, oslog, v0, "%s: data path terminated", v1, 0xCu);
    sub_100002A00(v2);
  }

  else
  {
  }
}

id sub_100433B1C()
{
  v1 = v0;

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136315138;

    v6 = sub_100433CA8();
    v8 = v7;

    v9 = sub_100002320(v6, v8, &v11);

    *(v4 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v2, v3, "%s: pairing failed", v4, 0xCu);
    sub_100002A00(v5);
  }

  else
  {
  }

  result = *(v1 + qword_10059A950);
  if (result)
  {

    return [result datapathFailedToStartWithError:6];
  }

  return result;
}

unint64_t sub_100433CA8()
{
  _StringGuts.grow(_:)(20);

  v1._countAndFlagsBits = WiFiAddress.description.getter(*(v0 + 24) | (*(v0 + 26) << 16));
  String.append(_:)(v1);

  v2._countAndFlagsBits = 62;
  v2._object = 0xE100000000000000;
  String.append(_:)(v2);
  return 0xD000000000000019;
}

void sub_100433D40()
{
  if (!qword_10059A9D8)
  {
    type metadata accessor for NANPairedDeviceSharedAssociation(255);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_10059A9D8);
    }
  }
}

uint64_t sub_100433D98()
{
  result = type metadata accessor for Logger();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = type metadata accessor for DispatchTime();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      return swift_initClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_100433F50(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 - 8);
  (*(v4 + 16))(v7, v2, a1);
  if (v16 <= 1u)
  {
    if (v16)
    {
      sub_100002A00(v7);
      return 0xD00000000000001FLL;
    }

    else
    {
      (*(v4 + 8))(v7, a1);
      return 0xD000000000000017;
    }
  }

  else if (v16 == 2)
  {
    sub_100002A00(v7);
    return 0x69746E6568747561;
  }

  else if (v16 == 3)
  {
    (*(v4 + 8))(v7, a1);
    return 0x64656C696166;
  }

  else
  {
    v6 = vorrq_s8(vorrq_s8(vorrq_s8(v10, v12), vorrq_s8(v11, v13)), vorrq_s8(v8, v9));
    if (((v15 == 0) & ((*&vorr_s8(*v6.i8, *&vextq_s8(v6, v6, 8uLL)) | v14 | v7[0] | v7[1]) == 0)) != 0)
    {
      return 0x696C616974696E69;
    }

    else
    {
      return 0x74616E696D726574;
    }
  }
}

uint64_t sub_10043414C()
{
  v1 = v0;
  v2 = *v0;
  v3 = type metadata accessor for DispatchTime();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v7 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = qword_10059BC50;
  swift_retain_n();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  v11 = &qword_10059A000;
  if (os_log_type_enabled(v9, v10))
  {
    v12 = swift_slowAlloc();
    v54 = v8;
    v13 = v12;
    v53 = swift_slowAlloc();
    v57[0] = v53;
    *v13 = 136315394;
    v52 = v9;
    v14 = sub_10043FE54();
    v16 = sub_100002320(v14, v15, v57);

    *(v13 + 4) = v16;
    *(v13 + 12) = 2080;
    v17 = qword_10059A9E0;
    swift_beginAccess();
    v18 = *(v2 + 80);
    v19 = *(v2 + 88);
    v20 = _s17ResponderInstanceC5StateOMa();
    v21 = *(v20 - 8);
    v51 = v10;
    v22 = v2;
    v23 = v21;
    (*(v21 + 16))(v55, v1 + v17, v20);

    v24 = sub_100433F50(v20);
    v25 = v7;
    v26 = v4;
    v27 = v3;
    v29 = v28;

    (*(v23 + 8))(v55, v20);
    v2 = v22;
    v30 = sub_100002320(v24, v29, v57);
    v3 = v27;
    v4 = v26;
    v7 = v25;
    v11 = &qword_10059A000;

    *(v13 + 14) = v30;
    v9 = v52;
    _os_log_impl(&_mh_execute_header, v52, v51, "%s: state: %s", v13, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  type metadata accessor for P2PTimer();
  variable initialization expression of AWDLPeer.lastUpdated();
  v31 = qword_10059A9E8;
  swift_beginAccess();
  (*(v4 + 40))(v1 + v31, v7, v3);
  swift_endAccess();
  v32 = v11[316];
  swift_beginAccess();
  v33 = *(v2 + 80);
  v34 = *(v2 + 88);
  v35 = _s17ResponderInstanceC5StateOMa();
  v36 = *(v35 - 8);
  (*(v36 + 16))(v55, v1 + v32, v35);
  if (v56 != 3)
  {
    return (*(v36 + 8))(v55, v35);
  }

  v38 = v55[0];
  v37 = v55[1];

  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v55[0] = swift_slowAlloc();
    *v41 = 136315394;
    v42 = sub_10043FE54();
    v44 = v43;

    v45 = sub_100002320(v42, v44, v55);

    *(v41 + 4) = v45;
    *(v41 + 12) = 2080;
    v46 = sub_100002320(v38, v37, v55);

    *(v41 + 14) = v46;
    _os_log_impl(&_mh_execute_header, v39, v40, "%s: failed because %s", v41, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v48 = v1[2];
  swift_unownedRetainStrong();
  sub_10040CAE8();

  sub_10034BE38(*(v1 + 12) | (*(v1 + 26) << 16));

  v49 = *(v1 + qword_10059BC70);
  *(v1 + qword_10059BC70) = 0;
}

uint64_t sub_1004346E4@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = qword_10059A9E0;
  swift_beginAccess();
  v5 = *(v3 + 80);
  v6 = *(v3 + 88);
  v7 = _s17ResponderInstanceC5StateOMa();
  return (*(*(v7 - 8) + 16))(a1, &v1[v4], v7);
}

void *sub_100434798()
{
  v1 = v0;
  v2 = *v0;
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v7 = v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v2 + 88);
  v9 = *(v8 + 8);
  v10 = *(v2 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(AssociatedTypeWitness - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin();
  v15 = v43 - v14;
  if (*(v1 + qword_10059BC68) == 1)
  {
    v43[4] = v7;
    v44 = v3;
    v16 = v8;
    v17 = v1[2];
    swift_unownedRetainStrong();
    v18 = *(*v17 + 96);
    swift_beginAccess();
    (*(v12 + 16))(v15, v17 + v18, AssociatedTypeWitness);

    v19 = *(v1 + 26);
    v20 = *(v1 + 12);
    v21 = *(v1 + 64);
    v45 = v16;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    (*(AssociatedConformanceWitness + 304))(v21, v20 | (v19 << 16), AssociatedTypeWitness, AssociatedConformanceWitness);
    (*(v12 + 8))(v15, AssociatedTypeWitness);
    v3 = v44;
  }

  v23 = v1[2];
  swift_unownedRelease();
  v24 = v1[5];

  v25 = v1[7];

  (*(v4 + 8))(v1 + qword_10059BC50, v3);
  v26 = *(v1 + qword_10059BC58 + 16);
  v27 = *(v1 + qword_10059BC58 + 24);
  v28 = *(v1 + qword_10059BC58 + 32);
  v29 = *(v1 + qword_10059BC58 + 40);
  v30 = *(v1 + qword_10059BC58 + 48);
  v31 = *(v1 + qword_10059BC58 + 56);
  v42 = *(v1 + qword_10059BC58 + 96);
  v40 = *(v1 + qword_10059BC58 + 64);
  v41 = *(v1 + qword_10059BC58 + 80);
  sub_100443AF4(*(v1 + qword_10059BC58), *(v1 + qword_10059BC58 + 8));
  v32 = *(v1 + qword_10059BC70);

  v33 = *(v1 + qword_10059BC78 + 8);

  v34 = qword_10059A9E0;
  v35 = _s17ResponderInstanceC5StateOMa();
  (*(*(v35 - 8) + 8))(v1 + v34, v35);
  v36 = qword_10059A9E8;
  v37 = type metadata accessor for DispatchTime();
  (*(*(v37 - 8) + 8))(v1 + v36, v37);
  v38 = *(v1 + qword_10059BC80);
  swift_unknownObjectRelease();
  return v1;
}

uint64_t sub_100434D3C(void (*a1)(void))
{
  a1();
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_100434DB0()
{
  v1 = *v0;
  sub_1004346E4(v9);
  if (v10 == 2)
  {
    sub_100029954(v9, v11);
    v2 = v12;
    v3 = v13;
    sub_100029B34(v11, v12);
    v7 = (*(v3 + 16))(v2, v3);
    sub_100002A00(v11);
    return v7;
  }

  else
  {
    v4 = *(v1 + 80);
    v5 = *(v1 + 88);
    v6 = _s17ResponderInstanceC5StateOMa();
    (*(*(v6 - 8) + 8))(v9, v6);
    return 0;
  }
}

uint64_t sub_100434ED0()
{
  v1 = v0;
  v2 = *v0;
  v46 = type metadata accessor for DispatchTimeInterval();
  v44 = *(v46 - 8);
  v3 = *(v44 + 64);
  __chkstk_darwin();
  v5 = (&v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v47 = &v41 - v6;
  __chkstk_darwin();
  v45 = (&v41 - v7);
  v43 = *(v2 + 88);
  v8 = *(v43 + 8);
  v9 = *(v2 + 80);
  swift_getAssociatedTypeWitness();
  v42 = v9;
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v10 = type metadata accessor for Preferences();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin();
  v14 = &v41 - v13;

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v41 = v5;
    v19 = v18;
    v48 = v18;
    *v17 = 136315138;

    v20 = sub_10043FE54();
    v22 = v21;

    v23 = sub_100002320(v20, v22, &v48);

    *(v17 + 4) = v23;
    _os_log_impl(&_mh_execute_header, v15, v16, "%s starting pairing responder timer", v17, 0xCu);
    sub_100002A00(v19);
    v5 = v41;
  }

  else
  {
  }

  v24 = v1[2];
  swift_unownedRetainStrong();
  WiFiInterface.preferences.getter();

  LOBYTE(v24) = Preferences.enableNANPairingCertification.getter(v10);
  (*(v11 + 8))(v14, v10);
  v25 = 60;
  if (v24)
  {
    v25 = 300;
  }

  v27 = v44;
  v26 = v45;
  *v45 = v25;
  v28 = *(v27 + 104);
  v29 = v46;
  v28(v26, enum case for DispatchTimeInterval.seconds(_:), v46);
  v30 = *OS_dispatch_queue.nan.unsafeMutableAddressor();
  v31 = swift_allocObject();
  swift_weakInit();
  v32 = swift_allocObject();
  v33 = v43;
  v32[2] = v42;
  v32[3] = v33;
  v32[4] = v31;
  v34 = v47;
  v28(v47, enum case for DispatchTimeInterval.never(_:), v29);
  *v5 = 100;
  v28(v5, enum case for DispatchTimeInterval.milliseconds(_:), v29);
  v35 = type metadata accessor for P2PTimer();
  v36 = *(v35 + 48);
  v37 = *(v35 + 52);
  swift_allocObject();
  v38 = P2PTimer.init(deadlineAfter:on:repeating:leeway:_:)(v26, v30, v34, v5, sub_100443AE8, v32);
  v39 = *(v1 + qword_10059BC70);
  *(v1 + qword_10059BC70) = v38;
}

uint64_t sub_1004353A4()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;

    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v21[0] = v5;
      *v4 = 136315138;
      v6 = sub_10043FE54();
      v8 = v7;

      v9 = sub_100002320(v6, v8, v21);

      *(v4 + 4) = v9;
      _os_log_impl(&_mh_execute_header, v2, v3, "%s: Pairing responder timer fired.", v4, 0xCu);
      sub_100002A00(v5);
    }

    else
    {
    }

    sub_1004346E4(v21);
    if (v22 == 2)
    {

      return sub_100002A00(v21);
    }

    else
    {
      v10 = _s17ResponderInstanceC5StateOMa();
      (*(*(v10 - 8) + 8))(v21, v10);

      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v21[0] = v14;
        *v13 = 136315138;

        v15 = sub_10043FE54();
        v17 = v16;

        v18 = sub_100002320(v15, v17, v21);

        *(v13 + 4) = v18;
        _os_log_impl(&_mh_execute_header, v11, v12, "%s: Pairing responder timed out, could not pair for 1 minute", v13, 0xCu);
        sub_100002A00(v14);
      }

      else
      {
      }

      v19 = *(v1 + qword_10059BC70);
      *(v1 + qword_10059BC70) = 0;

      v20 = *(v1 + 16);
      swift_unownedRetainStrong();
      sub_10040CAE8();

      sub_10034BE38(*(v1 + 24) | (*(v1 + 26) << 16));
    }
  }

  return result;
}

void sub_1004356C8(unint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, int a5, char a6, int a7)
{
  v8 = v7;
  v13 = a1;
  v129 = a1;
  v130 = a2;
  v131 = a3;
  v14 = *v7;
  v15 = *(*(sub_10005DC58(&unk_100595C00, &qword_10048F790) - 8) + 64);
  __chkstk_darwin();
  v17 = &v107 - v16;
  sub_1004346E4(&aBlock);
  if (v126 != 4 || v125 || (v18 = vorrq_s8(vorrq_s8(vorrq_s8(v121, v123), vorrq_s8(v119, v120)), vorrq_s8(v122, v124)), *&vorr_s8(*v18.i8, *&vextq_s8(v18, v18, 8uLL)) | v118 | *(&aBlock + 1) | aBlock))
  {
    v29 = *(v14 + 80);
    v30 = *(v14 + 88);
    v31 = _s17ResponderInstanceC5StateOMa();
    (*(*(v31 - 8) + 8))(&aBlock, v31);
    return;
  }

  v111 = a7;
  v112 = a5;
  v115 = a4;
  v19 = qword_10059BC50;

  v116 = v19;
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *&v127 = v23;
    *v22 = 136315138;

    v24 = sub_10043FE54();
    v26 = v25;

    v27 = sub_100002320(v24, v26, &v127);

    *(v22 + 4) = v27;
    _os_log_impl(&_mh_execute_header, v20, v21, "%s: was started for pair setup", v22, 0xCu);
    sub_100002A00(v23);

    v28 = v129;
  }

  else
  {
    v28 = v13;
  }

  sub_100434ED0();
  v32 = *(v8 + 30);
  if (v28 == v32 && static NANClusterChangeEvent.__derived_struct_equals(_:_:)(WORD1(v129) | (HIDWORD(v129) << 16), *(v8 + 24) | (*(v8 + 26) << 16)))
  {
    v33 = 0xEB00000000646577;
    v34 = 0x6F6C6C4120746F4ELL;
    v35 = 1;
    v36 = v115;
  }

  else
  {
    swift_retain_n();
    sub_1001852A4(&v129, &aBlock);

    sub_1001852A4(&v129, &aBlock);
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v114 = swift_slowAlloc();
      *&aBlock = v114;
      *v39 = 136316162;

      v40 = sub_10043FE54();
      v42 = v41;

      v43 = sub_100002320(v40, v42, &aBlock);

      *(v39 + 4) = v43;
      *(v39 + 12) = 256;
      sub_1003011F8(&v129);
      *(v39 + 14) = v28;
      sub_1003011F8(&v129);
      *(v39 + 15) = 256;

      *(v39 + 17) = v32;

      *(v39 + 18) = 2080;
      v44 = WiFiAddress.description.getter(WORD1(v129) | (HIDWORD(v129) << 16));
      v46 = sub_100002320(v44, v45, &aBlock);

      *(v39 + 20) = v46;
      *(v39 + 28) = 2080;
      v47 = *(v8 + 26);
      v48 = *(v8 + 24);

      v49 = WiFiAddress.description.getter(v48 | (v47 << 16));
      v51 = v50;

      v52 = sub_100002320(v49, v51, &aBlock);

      *(v39 + 30) = v52;
      _os_log_impl(&_mh_execute_header, v37, v38, "%s: mismatch in the Publish ID or Peer address. Publish ID: requested: %hhu present: %hhu Peer Address: requested: %s present: %s", v39, 0x26u);
      swift_arrayDestroy();
    }

    else
    {

      sub_1003011F8(&v129);

      sub_1003011F8(&v129);
    }

    v36 = v115;
    a6 = 0;
    v33 = 0x80000001004BDEE0;
    v35 = 3;
    v34 = 0xD000000000000012;
  }

  v53 = swift_allocObject();
  *(v53 + 16) = 917504;
  v109 = v53 + 16;
  *(v53 + 24) = 0u;
  *(v53 + 40) = 0u;
  *(v53 + 56) = 0;
  v54 = NANAttribute.PairingBootstrapping.Method.apiValue.getter(v36);
  if (v55)
  {
    v56 = 1;
  }

  else
  {
    v56 = v54;
  }

  v113 = v56;
  Array<A>.retrieve(attribute:)(44, v131, v17);
  v57 = type metadata accessor for NANAttribute(0);
  if ((*(*(v57 - 8) + 48))(v17, 1, v57) == 1)
  {

    sub_100016290(v17, &unk_100595C00, &qword_10048F790);
  }

  else if (swift_getEnumCaseMultiPayload() == 39)
  {
    LODWORD(v110) = v35;
    v114 = v34;
    v58 = *(v17 + 1);
    v108 = *v17;
    v127 = v108;
    *v128 = v58;
    *&v128[10] = *(v17 + 26);
    v107 = *(v17 + 1);
    v59 = *(v17 + 4);
    v60 = *(v17 + 20);
    if (NANAttribute.PairingBootstrapping.type.getter() == 1 && !BYTE2(v127) && !NANAttribute.Datapath.status.getter())
    {
      v106 = v107;
      *(v53 + 16) = v108;
      *(v53 + 32) = v106;
      *(v53 + 48) = v59;
      *(v53 + 56) = v60;
      sub_1002EA024(917504, 0, 0, 0, 0);
      v70 = v110;
      goto LABEL_31;
    }

    sub_1001440B0(&v127);
  }

  else
  {

    sub_100023AD8(v17, type metadata accessor for NANAttribute);
  }

  v33 = 0xEF74736575716552;

  v61 = Logger.logObject.getter();
  v62 = static os_log_type_t.error.getter();
  v63 = os_log_type_enabled(v61, v62);
  v114 = 0x2064696C61766E49;
  if (v63)
  {
    v64 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    *&aBlock = v65;
    *v64 = 136315138;

    v66 = sub_10043FE54();
    v68 = v67;

    v69 = sub_100002320(v66, v68, &aBlock);
    v33 = 0xEF74736575716552;

    *(v64 + 4) = v69;
    _os_log_impl(&_mh_execute_header, v61, v62, "%s: invalid Pairing Bootstrap Request", v64, 0xCu);
    sub_100002A00(v65);
  }

  else
  {
  }

  a6 = 0;
  v70 = 3;
LABEL_31:

  v71 = Logger.logObject.getter();
  v72 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v71, v72))
  {
    v73 = swift_slowAlloc();
    *&v108 = v53;
    v110 = v33;
    v74 = v73;
    v36 = swift_slowAlloc();
    *&aBlock = v36;
    *v74 = 136315138;

    v75 = sub_10043FE54();
    v76 = v70;
    v78 = v77;

    v79 = sub_100002320(v75, v78, &aBlock);
    v70 = v76;

    *(v74 + 4) = v79;
    _os_log_impl(&_mh_execute_header, v71, v72, "%s: received: bootstrap request", v74, 0xCu);
    sub_100002A00(v36);
    LODWORD(v36) = v115;

    v33 = v110;
    v53 = v108;
  }

  else
  {
  }

  if ((a6 & 1) == 0)
  {
    *&aBlock = v114;
    *(&aBlock + 1) = v33;
    v126 = 3;
    sub_1004402CC(&aBlock);
    v95 = *(v14 + 80);
    v96 = *(v14 + 88);
    v97 = _s17ResponderInstanceC5StateOMa();
    (*(*(v97 - 8) + 8))(&aBlock, v97);
    sub_1004406A0(v129, 1u, v70, v53, v36, v8, &aBlock);
    goto LABEL_44;
  }

  v80 = v130;
  v81 = v131;
  v82 = swift_allocObject();
  *(v82 + 16) = v8;
  *(v82 + 24) = v53;
  *(v82 + 32) = v36;
  *(v82 + 40) = v129;
  *(v82 + 48) = v80;
  *(v82 + 56) = v81;
  *(v82 + 64) = v112 & 1;
  *(v82 + 72) = v113;
  swift_retain_n();
  sub_1001852A4(&v129, &aBlock);

  v83 = Logger.logObject.getter();
  v84 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v83, v84))
  {
    v85 = swift_slowAlloc();
    v86 = swift_slowAlloc();
    v110 = v33;
    *&aBlock = v86;
    *v85 = 136315394;

    v87 = sub_10043FE54();
    v89 = v88;

    v90 = sub_100002320(v87, v89, &aBlock);

    *(v85 + 4) = v90;
    *(v85 + 12) = 2080;
    v91 = v111;
    if (v111)
    {
      v92 = 0xD00000000000001FLL;
    }

    else
    {
      v92 = 0xD000000000000027;
    }

    if (v111)
    {
      v93 = "CoreP2P/NANActionFrame.swift";
    }

    else
    {
      v93 = "Ask user consent for pair setup";
    }

    v94 = sub_100002320(v92, v93 | 0x8000000000000000, &aBlock);

    *(v85 + 14) = v94;
    _os_log_impl(&_mh_execute_header, v83, v84, "%s: Pairing Setup mode = %s", v85, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v91 = v111;
  }

  if (v91)
  {

    goto LABEL_49;
  }

  v98 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v98 & 1) == 0)
  {
    v102 = NANAttribute.PairingBootstrapping.Method.bootstrapHandshakeSkipped.unsafeMutableAddressor();
    v103 = v115;
    if (*v102 == v115)
    {

      return;
    }

    v105 = v109;
    swift_beginAccess();
    if (*(v105 + 2) << 16 == 917504)
    {
      __break(1u);
      return;
    }

    sub_1004406A0(v129, 0, 0, v53, v103, v8, &aBlock);
    sub_100436944(&aBlock, v103, v8, v53, v129, v130, v131, v112 & 1, v113);

LABEL_44:
    sub_1001440B0(&aBlock);

    return;
  }

LABEL_49:

  v99 = *(v8 + qword_10059BC80);
  if (v99)
  {
    swift_unknownObjectRetain();
    v100 = NANFollowUpReceivedEvent.followUpMessage.getter(v129, v130, v131);
    if (v100)
    {
      v101 = NANGenericServiceProtocol.apiPublishServiceSpecificInfo.getter(v100);
    }

    else
    {
      v101 = 0;
    }

    v119.i64[1] = sub_100443A20;
    v120.i64[0] = v82;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    v118 = sub_100437718;
    v119.i64[0] = &unk_10057B4D0;
    v104 = _Block_copy(&aBlock);

    [v99 publishPairingApprovalForSubscriber:v101 withPairingMethod:v113 pairingSetupApprovalCompletion:v104];
    swift_unknownObjectRelease();

    _Block_release(v104);
  }

  else
  {
  }
}

void sub_1004365B4(uint64_t a1, void *a2, void *a3, uint64_t a4, int a5, unint64_t a6, uint64_t a7, uint64_t a8, char a9, uint64_t a10)
{

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *&v46[0] = swift_slowAlloc();
    *v18 = 136315394;

    v19 = sub_10043FE54();
    v43 = a4;
    v20 = a7;
    v21 = a8;
    v23 = v22;

    v24 = sub_100002320(v19, v23, v46);

    *(v18 + 4) = v24;
    *(v18 + 12) = 2080;
    v25 = 0xE700000000000000;
    v26 = 0x6E776F6E6B6E75;
    if (a1 == 1)
    {
      v26 = 0x7463656A6552;
      v25 = 0xE600000000000000;
    }

    if (a1)
    {
      v27 = v26;
    }

    else
    {
      v27 = 0x747065636341;
    }

    if (a1)
    {
      v28 = v25;
    }

    else
    {
      v28 = 0xE600000000000000;
    }

    v29 = sub_100002320(v27, v28, v46);

    *(v18 + 14) = v29;
    a8 = v21;
    a7 = v20;
    a4 = v43;
    _os_log_impl(&_mh_execute_header, v16, v17, "%s: user approval for pair setup: %s", v18, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  if (a1 != 1)
  {
    if (a1)
    {
      return;
    }

    v31 = sub_100433EF0();
    if (!*(v30 + 8))
    {
      (v31)(v46, 0);
LABEL_23:
      swift_beginAccess();
      if (*(a4 + 18) << 16 == 917504)
      {
        __break(1u);
        return;
      }

      sub_1004406A0(a6, 0, 0, a4, a5, a3, v46);
      sub_100436944(v46, a5, a3, a4, a6, a7, a8, a9 & 1, a10);
      goto LABEL_25;
    }

    v32 = v30;
    if (a2)
    {
      v33 = a5;
      v34 = [a2 peerDeviceName];
      if (v34)
      {
        v35 = a4;
        v36 = a7;
        v37 = a8;
        v38 = v34;
        v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v41 = v40;

        a8 = v37;
        a7 = v36;
        a4 = v35;
LABEL_22:
        v42 = *(v32 + 24);
        *(v32 + 16) = v39;
        *(v32 + 24) = v41;

        (v31)(v46, 0);
        a5 = v33;
        goto LABEL_23;
      }
    }

    else
    {
      v33 = a5;
    }

    v39 = 0;
    v41 = 0;
    goto LABEL_22;
  }

  sub_1004406A0(a6, 1u, 13, a4, a5, a3, v46);
LABEL_25:
  sub_1001440B0(v46);
}

void sub_100436944(__int128 *a1, unsigned __int16 a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, uint64_t a9)
{
  v13 = a2;
  v14 = *a3;
  v15 = a1[1];
  v100 = *a1;
  v101[0] = v15;
  *(v101 + 10) = *(a1 + 26);
  v16 = NANAttribute.PairingBootstrapping.Method.opportunistic.unsafeMutableAddressor();
  v77 = v13;
  v17 = *v16 == v13;
  v18 = !v17;
  if (v17)
  {
    v19 = 0;
  }

  else
  {
    v19 = -1;
  }

  swift_beginAccess();
  v20 = *(a4 + 16);
  if ((v20 & 0xFF0000) == 0xE0000)
  {
    __break(1u);
  }

  else
  {
    v21 = v18 << 60;
    v22 = *(a4 + 40);
    v23 = *(a4 + 48);
    v24 = 2 * v17;
    v74 = a5;
    v25 = *(a4 + 24);
    v26 = *(a4 + 32);
    v27 = *(a4 + 56);
    *&v81[6] = v100;
    *&v81[22] = v101[0];
    *&v81[32] = *(v101 + 10);
    v82 = v20;
    v83 = BYTE2(v20);
    v84 = v25;
    v85 = v26;
    v86 = v22;
    v87 = v23;
    v88 = v27;
    v91 = *(v101 + 10);
    v90 = *&v81[16];
    v89 = *v81;
    v92 = BYTE1(a5);
    v93 = a8 & 1;
    v94 = 0;
    v95 = 0;
    v96 = v21;
    v97 = v19;
    v98 = v24;
    v99 = 0;
    sub_10036CC58(v20, v25, v26, v22, v23);
    sub_10012A628(a1, aBlock);
    sub_100443A60(0, 0, v21, v19, v24);
    sub_1004402CC(&v82);
    v28 = *(v14 + 80);
    v29 = *(v14 + 88);
    v30 = _s17ResponderInstanceC5StateOMa();
    (*(*(v30 - 8) + 8))(&v82, v30);
    v31 = a3;
    if (*v16 == v77)
    {

      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        aBlock[0] = v35;
        *v34 = 136315138;

        v36 = sub_10043FE54();
        v37 = v19;
        v39 = v38;

        v40 = sub_100002320(v36, v39, aBlock);

        *(v34 + 4) = v40;
        _os_log_impl(&_mh_execute_header, v32, v33, "%s: Pairing method is opportunistic, no password required", v34, 0xCu);
        sub_100002A00(v35);

        sub_1004437B4(0, 0, v21, v37, v24);
      }

      else
      {
        sub_1004437B4(0, 0, v21, v19, v24);
      }
    }

    else
    {
      v76 = v28;
      v41 = qword_10059BC80;
      v42 = *(a3 + qword_10059BC80);
      v43 = &unk_10059B000;
      if (!v42)
      {
        v78 = qword_10059BC80;

        v44 = Logger.logObject.getter();
        v45 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v44, v45))
        {
          v46 = swift_slowAlloc();
          v70 = swift_slowAlloc();
          aBlock[0] = v70;
          *v46 = 136315138;

          v47 = sub_10043FE54();
          v49 = v48;

          v50 = sub_100002320(v47, v49, aBlock);

          *(v46 + 4) = v50;
          _os_log_impl(&_mh_execute_header, v44, v45, "%s: no delegate, skipping invoking:  publishPairingRequestIndicated", v46, 0xCu);
          sub_100002A00(v70);

          v43 = &unk_10059B000;
        }

        else
        {
        }

        v41 = v78;
      }

      v51 = v43[394];

      v52 = Logger.logObject.getter();
      v53 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v52, v53))
      {
        v79 = v41;
        v54 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        aBlock[0] = v55;
        *v54 = 136315138;

        v56 = sub_10043FE54();
        v71 = v21;
        v57 = v24;
        v58 = v29;
        v59 = v19;
        v61 = v60;

        v62 = sub_100002320(v56, v61, aBlock);
        v19 = v59;
        v29 = v58;
        v24 = v57;
        v21 = v71;

        *(v54 + 4) = v62;
        _os_log_impl(&_mh_execute_header, v52, v53, "%s: invoking delegate:  publishPairingRequestIndicated", v54, 0xCu);
        sub_100002A00(v55);

        v41 = v79;
      }

      else
      {
      }

      v63 = *(v31 + v41);
      if (v63)
      {
        v64 = *(v31 + v41);
        swift_unknownObjectRetain();
        v65 = NANFollowUpReceivedEvent.followUpMessage.getter(v74, a6, a7);
        if (v65)
        {
          v66 = NANGenericServiceProtocol.apiPublishServiceSpecificInfo.getter(v65);
        }

        else
        {
          v66 = 0;
        }

        v67 = swift_allocObject();
        swift_weakInit();
        v68 = swift_allocObject();
        v68[2] = v76;
        v68[3] = v29;
        v68[4] = v67;
        aBlock[4] = sub_100443A94;
        aBlock[5] = v68;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_10042BD04;
        aBlock[3] = &unk_10057B520;
        v69 = _Block_copy(aBlock);

        [v63 publishPairingRequestIndicatedBySubscriber:v66 withPairingMethod:a9 pairingAuthenticationGeneratedCompletionHandler:v69];
        sub_1004437B4(0, 0, v21, v19, v24);
        swift_unknownObjectRelease();
        _Block_release(v69);
      }

      else
      {
        sub_1004437B4(0, 0, v21, v19, v24);
      }
    }
  }
}

void sub_100437024(uint64_t a1, unint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v5 = Strong;

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *&v75 = v9;
    *v8 = 136315138;
    v10 = sub_10043FE54();
    v12 = v11;

    v13 = sub_100002320(v10, v12, &v75);

    *(v8 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v6, v7, "%s: pairingAuthenticationGeneratedCompletionHandler called", v8, 0xCu);
    sub_100002A00(v9);
  }

  else
  {
  }

  if (a2 >> 60 == 15)
  {
    goto LABEL_22;
  }

  v14 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v14 != 2)
    {
      goto LABEL_21;
    }

    if (*(a1 + 16) == *(a1 + 24))
    {
      goto LABEL_22;
    }
  }

  else
  {
    if (!v14)
    {
      if ((a2 & 0xFF000000000000) != 0)
      {
        v15 = BYTE6(a2);
        goto LABEL_20;
      }

LABEL_21:
      sub_100017554(a1, a2);
      goto LABEL_22;
    }

    if (a1 == a1 >> 32)
    {
LABEL_22:

      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        *&v75 = v25;
        *v24 = 136315138;
        v26 = sub_10043FE54();
        v28 = v27;

        v29 = sub_100002320(v26, v28, &v75);

        *(v24 + 4) = v29;
        _os_log_impl(&_mh_execute_header, v22, v23, "%s: invalid password", v24, 0xCu);
        sub_100002A00(v25);
      }

      else
      {
      }

      return;
    }
  }

  sub_10005D67C(a1, a2);
  if (v14 == 2)
  {
    v17 = *(a1 + 16);
    v16 = *(a1 + 24);
    v15 = v16 - v17;
    if (!__OFSUB__(v16, v17))
    {
      goto LABEL_20;
    }

    __break(1u);
  }

  if (__OFSUB__(HIDWORD(a1), a1))
  {
    __break(1u);
    return;
  }

  v15 = HIDWORD(a1) - a1;
LABEL_20:
  v18 = sub_10014345C(v15);
  v20 = v19;
  v21 = _s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(a1, a2, v18, v19);
  sub_1000124C8(v18, v20);
  if (v21)
  {
    goto LABEL_21;
  }

  sub_1004346E4(&v75);
  if (v85)
  {
    sub_100017554(a1, a2);
    v30 = _s17ResponderInstanceC5StateOMa();
    (*(*(v30 - 8) + 8))(&v75, v30);
    goto LABEL_22;
  }

  v71 = v75;
  v72[0] = v76[0];
  *(v72 + 10) = *(v76 + 10);
  v73 = v76[2];
  v74[0] = *v77;
  *(v74 + 10) = *&v77[10];
  v31 = v83;
  if (v84)
  {
    sub_1004437B4(v80, v81, v82, v83, v84);
    sub_1001440B0(&v73);
    sub_1001440B0(&v71);
    goto LABEL_21;
  }

  v52 = v81;
  v53 = v80;
  v54 = v79;
  v32 = v78;
  v33 = *(v5 + 32);
  v34 = *(v5 + 40);
  v56 = v82;
  v35 = *(v5 + 24) | (*(v5 + 26) << 16);

  v36 = WiFiAddress.description.getter(v35);
  v38 = sub_1004430B8(a1, a2, v33, v34, v36, v37);
  v55 = v31;
  v40 = v39;

  v41 = *(v5 + 56);
  *(v5 + 48) = v38;
  *(v5 + 56) = v40;
  v42 = v55;

  *&v68[10] = *(v72 + 10);
  v67 = v71;
  *v68 = v72[0];
  v69 = v73;
  v70[0] = v74[0];
  *(v70 + 10) = *(v74 + 10);
  *&v59[10] = *(v74 + 10);
  v58[3] = v73;
  *v59 = v70[0];
  v58[1] = v72[0];
  v58[2] = *&v68[16];
  v58[0] = v71;
  v60 = v32;
  v61 = v54;
  v62 = a1;
  v63 = a2;
  v64 = 0;
  v65 = 256;
  v66 = 0;
  sub_10005D67C(a1, a2);
  sub_10012A628(&v71, v57);
  sub_10012A628(&v73, v57);
  sub_1004402CC(v58);
  v43 = _s17ResponderInstanceC5StateOMa();
  (*(*(v43 - 8) + 8))(v58, v43);
  if ((v56 & 0x1000000000000000) != 0 && v55 == 255)
  {
    sub_100017554(a1, a2);
    sub_1001440B0(&v73);
    sub_1001440B0(&v71);
  }

  else
  {

    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      *&v58[0] = v47;
      *v46 = 136315138;
      v48 = sub_10043FE54();
      v50 = v49;

      v51 = sub_100002320(v48, v50, v58);
      v42 = v55;

      *(v46 + 4) = v51;
      _os_log_impl(&_mh_execute_header, v44, v45, "%s: calling handle authentication frame", v46, 0xCu);
      sub_100002A00(v47);
    }

    else
    {
    }

    sub_100438ED8(v53, v52, v56, v42);
    sub_100017554(a1, a2);
    sub_1001440B0(&v73);
    sub_1001440B0(&v71);

    sub_1004437B4(v53, v52, v56, v42, 0);
  }
}

void sub_100437718(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}

void sub_100437790(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t (*a6)(uint64_t), const char *a7)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v10 = *a5;

    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v20 = v14;
      *v13 = 136315138;

      v16 = a6(v15);
      v18 = v17;

      v19 = sub_100002320(v16, v18, &v20);

      *(v13 + 4) = v19;
      _os_log_impl(&_mh_execute_header, v11, v12, a7, v13, 0xCu);
      sub_100002A00(v14);
    }

    else
    {
    }
  }
}

uint64_t sub_100437908(void *a1)
{
  v213 = a1;
  v2 = v1;
  v3 = *v1;
  v203 = *(*v1 + 88);
  v4 = *(v203 + 8);
  v5 = *(v3 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v209 = AssociatedTypeWitness;
  v210 = v7;
  v8 = *(v7 + 64);
  __chkstk_darwin();
  v194 = &v185 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v199 = &v185 - v10;
  __chkstk_darwin();
  v12 = &v185 - v11;
  v13 = type metadata accessor for SymmetricKey();
  v14 = *(v13 - 8);
  v206 = v13;
  v207 = v14;
  v15 = *(v14 + 64);
  __chkstk_darwin();
  v193 = &v185 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v18 = &v185 - v17;
  __chkstk_darwin();
  v195 = &v185 - v19;
  __chkstk_darwin();
  v198 = &v185 - v20;
  __chkstk_darwin();
  v22 = &v185 - v21;
  __chkstk_darwin();
  v197 = &v185 - v23;
  __chkstk_darwin();
  v208 = &v185 - v24;
  __chkstk_darwin();
  v201 = &v185 - v25;
  __chkstk_darwin();
  v211 = &v185 - v26;
  swift_getAssociatedTypeWitness();
  v202 = v5;
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v212 = type metadata accessor for Preferences();
  v27 = *(v212 - 8);
  v28 = *(v27 + 64);
  __chkstk_darwin();
  v30 = &v185 - v29;
  v31 = qword_10059BC50;

  v204 = v31;
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.default.getter();
  v34 = os_log_type_enabled(v32, v33);
  v218 = v2;
  v192 = v18;
  v196 = v22;
  if (v34)
  {
    v35 = v30;
    v36 = v27;
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v217 = v38;
    *v37 = 136315138;

    v39 = sub_10043FE54();
    v41 = v40;

    v42 = sub_100002320(v39, v41, &v217);

    *(v37 + 4) = v42;
    _os_log_impl(&_mh_execute_header, v32, v33, "%s: adding KEK", v37, 0xCu);
    sub_100002A00(v38);

    v27 = v36;
    v30 = v35;
    v2 = v218;
  }

  else
  {
  }

  v43 = v2[2];
  swift_unownedRetainStrong();
  WiFiInterface.preferences.getter();

  v44 = v212;
  v45 = Preferences.enableNANPairingLogs.getter(v212);
  v46 = *(v27 + 8);
  v200 = v27 + 8;
  v46(v30, v44);
  v47 = v214;
  v48 = v211;
  if (v45)
  {
    v49 = v213[3];
    v50 = v213[4];
    sub_100029B34(v213, v49);
    result = (*(v50 + 24))(v49, v50);
    if (v47)
    {
      return result;
    }

    v214 = 0;
    v191 = v46;
    v53 = v206;
    v52 = v207;
    v54 = v201;
    (*(v207 + 16))(v201, v48, v206);

    v55 = Logger.logObject.getter();
    LODWORD(v189) = static os_log_type_t.default.getter();
    v56 = os_log_type_enabled(v55, v189);
    v190 = v30;
    if (v56)
    {
      v57 = swift_slowAlloc();
      v188 = swift_slowAlloc();
      v217 = v188;
      *v57 = 136315394;

      v187 = v55;
      v58 = sub_10043FE54();
      v60 = v59;

      v61 = sub_100002320(v58, v60, &v217);

      v185 = v57;
      *(v57 + 4) = v61;
      *(v57 + 12) = 2080;
      v62 = SymmetricKey.rawRepresentation.getter();
      v64 = v63;
      v65 = Data.hexString.getter(v62, v63);
      v66 = v54;
      v68 = v67;
      sub_1000124C8(v62, v64);
      v186 = *(v207 + 8);
      v186(v66, v53);
      v69 = sub_100002320(v65, v68, &v217);

      v70 = v185;
      *(v185 + 14) = v69;
      v71 = v187;
      _os_log_impl(&_mh_execute_header, v187, v189, "%s: pairing: NM-KEK: %s", v70, 0x16u);
      swift_arrayDestroy();

      v186(v48, v53);
    }

    else
    {

      v100 = *(v52 + 8);
      v100(v54, v53);
      v100(v48, v53);
    }
  }

  else
  {
    v191 = v46;
    v190 = v30;
  }

  v205 = v12;
  swift_unownedRetainStrong();
  v72 = *(*v43 + 96);
  swift_beginAccess();
  v73 = v209;
  v74 = v210;
  v75 = v210 + 16;
  v76 = *(v210 + 16);
  v76(v12, &v43[v72], v209);

  v77 = v213[3];
  v78 = v213[4];
  sub_100029B34(v213, v77);
  v79 = v208;
  v80 = v214;
  (*(v78 + 24))(v77, v78);
  if (v80)
  {
    return (*(v74 + 8))(v205, v73);
  }

  v211 = v43;
  v189 = v75;
  v201 = v76;
  v81 = *(v218 + 64);
  v82 = *(v218 + 26);
  v83 = *(v218 + 12);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v85 = *(AssociatedConformanceWitness + 312);
  v86 = (v83 | (v82 << 16));
  v87 = v205;
  v203 = AssociatedConformanceWitness;
  v85(v79, v81, v86, v73);
  v186 = v86;
  LODWORD(v187) = v81;
  v88 = *(v207 + 8);
  v202 = v207 + 8;
  v188 = v88;
  (v88)(v79, v206);
  v89 = *(v74 + 8);
  v210 = v74 + 8;
  v208 = v89;
  (v89)(v87, v73);

  v90 = Logger.logObject.getter();
  v91 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v90, v91))
  {
    v92 = swift_slowAlloc();
    v93 = swift_slowAlloc();
    v216 = v93;
    *v92 = 136315138;

    v94 = sub_10043FE54();
    v214 = 0;
    v96 = v95;

    v97 = sub_100002320(v94, v96, &v216);
    v98 = v214;

    *(v92 + 4) = v97;
    _os_log_impl(&_mh_execute_header, v90, v91, "%s: adding KCK", v92, 0xCu);
    sub_100002A00(v93);
    v99 = v209;
  }

  else
  {
    v99 = v73;
    v98 = 0;
  }

  v101 = v191;
  v102 = v211;
  swift_unownedRetainStrong();
  v103 = v190;
  WiFiInterface.preferences.getter();

  v104 = v212;
  v105 = Preferences.enableNANPairingLogs.getter(v212);
  v101(v103, v104);
  if (v105)
  {
    v106 = v213[3];
    v107 = v213[4];
    sub_100029B34(v213, v106);
    v108 = v197;
    result = (*(v107 + 32))(v106, v107);
    if (v98)
    {
      return result;
    }

    v98 = 0;
    v191 = v101;
    v109 = v206;
    v110 = v196;
    (*(v207 + 16))(v196, v108, v206);

    v111 = Logger.logObject.getter();
    LODWORD(v211) = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v111, v211))
    {
      v112 = v109;
      v113 = swift_slowAlloc();
      v205 = swift_slowAlloc();
      v216 = v205;
      *v113 = 136315394;

      v185 = v111;
      v114 = sub_10043FE54();
      v214 = 0;
      v116 = v115;

      v117 = sub_100002320(v114, v116, &v216);

      *(v113 + 4) = v117;
      *(v113 + 12) = 2080;
      v118 = SymmetricKey.rawRepresentation.getter();
      v120 = v119;
      v121 = Data.hexString.getter(v118, v119);
      v122 = v110;
      v124 = v123;
      v125 = v120;
      v98 = v214;
      sub_1000124C8(v118, v125);
      v126 = v122;
      v127 = v112;
      v128 = v188;
      (v188)(v126, v112);
      v129 = sub_100002320(v121, v124, &v216);
      v99 = v209;

      *(v113 + 14) = v129;
      v130 = v185;
      _os_log_impl(&_mh_execute_header, v185, v211, "%s: pairing: NM-KCK: %s", v113, 0x16u);
      swift_arrayDestroy();

      (v128)(v197, v127);
    }

    else
    {

      v148 = v188;
      (v188)(v110, v109);
      (v148)(v108, v109);
    }
  }

  else
  {
    v191 = v101;
  }

  v131 = v201;
  swift_unownedRetainStrong();
  v132 = *(*v102 + 96);
  swift_beginAccess();
  v133 = v199;
  (v131)(v199, &v102[v132], v99);

  v134 = v213[3];
  v135 = v213[4];
  sub_100029B34(v213, v134);
  v136 = v99;
  v137 = v198;
  (*(v135 + 32))(v134, v135);
  if (v98)
  {
    v138 = v133;
    v139 = v99;
    return (v208)(v138, v139);
  }

  (*(v203 + 320))(v137, v187, v186, v99);
  (v188)(v137, v206);
  (v208)(v133, v99);

  v140 = Logger.logObject.getter();
  v141 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v140, v141))
  {
    v142 = swift_slowAlloc();
    v143 = swift_slowAlloc();
    v215[0] = v143;
    *v142 = 136315138;

    v144 = sub_10043FE54();
    v214 = 0;
    v146 = v145;

    v147 = sub_100002320(v144, v146, v215);
    v98 = v214;

    *(v142 + 4) = v147;
    _os_log_impl(&_mh_execute_header, v140, v141, "%s: adding NM-TK", v142, 0xCu);
    sub_100002A00(v143);
    v136 = v209;
  }

  else
  {
  }

  v149 = v195;
  v150 = v191;
  swift_unownedRetainStrong();
  v151 = v190;
  WiFiInterface.preferences.getter();

  v152 = v212;
  v153 = Preferences.enableNANPairingLogs.getter(v212);
  v150(v151, v152);
  if (v153)
  {
    v154 = v213[3];
    v155 = v213[4];
    sub_100029B34(v213, v154);
    result = (*(v155 + 8))(v154, v155);
    v156 = v149;
    v157 = v218;
    if (v98)
    {
      return result;
    }

    v158 = v136;
    v98 = 0;
    v159 = v206;
    v160 = v192;
    (*(v207 + 16))(v192, v156, v206);

    v161 = Logger.logObject.getter();
    v162 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v161, v162))
    {
      v163 = swift_slowAlloc();
      v212 = swift_slowAlloc();
      v215[0] = v212;
      *v163 = 136315394;

      LODWORD(v211) = v162;
      v164 = sub_10043FE54();
      v214 = 0;
      v166 = v165;

      v167 = sub_100002320(v164, v166, v215);

      *(v163 + 4) = v167;
      *(v163 + 12) = 2080;
      v168 = SymmetricKey.rawRepresentation.getter();
      v170 = v169;
      v171 = Data.hexString.getter(v168, v169);
      v173 = v172;
      v174 = v170;
      v98 = v214;
      sub_1000124C8(v168, v174);
      v175 = v160;
      v176 = v188;
      (v188)(v175, v206);
      v177 = sub_100002320(v171, v173, v215);
      v157 = v218;
      v158 = v209;

      *(v163 + 14) = v177;
      _os_log_impl(&_mh_execute_header, v161, v211, "%s: pairing: NM-TK: %s", v163, 0x16u);
      swift_arrayDestroy();

      (v176)(v195, v206);
    }

    else
    {

      v179 = v188;
      (v188)(v160, v159);
      (v179)(v195, v159);
    }

    v178 = v201;
  }

  else
  {
    v178 = v201;
    v157 = v218;
    v158 = v136;
  }

  swift_unownedRetainStrong();
  v180 = *(*v102 + 96);
  swift_beginAccess();
  v181 = v194;
  (v178)(v194, &v102[v180], v158);

  v182 = v213[3];
  v183 = v213[4];
  sub_100029B34(v213, v182);
  v184 = v193;
  (*(v183 + 8))(v182, v183);
  if (v98)
  {
    v138 = v181;
    v139 = v158;
    return (v208)(v138, v139);
  }

  (*(v203 + 296))(v184, v187, v186, v158);
  (v188)(v184, v206);
  result = (v208)(v181, v158);
  *(v157 + qword_10059BC68) = 1;
  return result;
}

uint64_t sub_100438E38(uint64_t a1)
{
  v2 = *v1;
  sub_10002B154(a1, v7);
  v7[122] = 2;
  sub_1004402CC(v7);
  v3 = *(v2 + 80);
  v4 = *(v2 + 88);
  v5 = _s17ResponderInstanceC5StateOMa();
  return (*(*(v5 - 8) + 8))(v7, v5);
}

void sub_100438ED8(uint64_t a1, uint64_t *a2, uint64_t a3, unsigned int a4)
{
  v5 = v4;
  v439 = a2;
  v8 = *v4;
  v418 = type metadata accessor for NANIdentityKey(0);
  v415 = *(v418 - 8);
  v9 = *(v415 + 64);
  __chkstk_darwin();
  v416 = &v395 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*(sub_10005DC58(&unk_100595C50, &unk_1004AFD20) - 8) + 64);
  __chkstk_darwin();
  v417 = &v395 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v414 = &v395 - v13;
  v14 = *(*(sub_10005DC58(&qword_10058BAD0, &qword_100480E18) - 8) + 64);
  __chkstk_darwin();
  v427 = &v395 - v15;
  v16 = *(v8 + 88);
  v17 = *(v8 + 80);
  v421 = *(v16 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v422 = *(AssociatedTypeWitness - 8);
  v423 = AssociatedTypeWitness;
  v19 = *(v422 + 64);
  __chkstk_darwin();
  v420 = &v395 - v20;
  v424 = type metadata accessor for NANPairedDeviceSharedAssociation(0);
  v426 = *(v424 - 1);
  v21 = *(v426 + 64);
  __chkstk_darwin();
  v425 = &v395 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(*(sub_10005DC58(&unk_100595C00, &qword_10048F790) - 8) + 64);
  __chkstk_darwin();
  v419 = (&v395 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v436 = &v395 - v25;
  v26 = type metadata accessor for DispatchTime();
  v433 = *(v26 - 8);
  v434 = v26;
  v27 = *(v433 + 64);
  __chkstk_darwin();
  v431 = &v395 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v432 = &v395 - v29;
  v30 = *(*(sub_10005DC58(&qword_1005985E0, &unk_1004B0F80) - 8) + 64);
  __chkstk_darwin();
  v435 = (&v395 - v31);
  v32 = *(*(sub_10005DC58(&qword_10058F4D0, &qword_100491AB0) - 8) + 64);
  __chkstk_darwin();
  v428 = &v395 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v438 = &v395 - v34;
  v35 = type metadata accessor for UUID();
  v36 = *(v35 - 8);
  v37 = *(v36 + 64);
  __chkstk_darwin();
  v429 = (&v395 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  *&v430 = &v395 - v38;
  __chkstk_darwin();
  *(&v430 + 1) = &v395 - v39;
  __chkstk_darwin();
  v437 = &v395 - v40;
  v41 = *(*(type metadata accessor for NANPeer(0) - 8) + 64);
  __chkstk_darwin();
  v42 = __chkstk_darwin();
  if ((((a3 & 0x1000000000000000) != 0) | (2 * a4)) == 4 && (v44 & 0xFF00000000) != 0 && v44 == 7)
  {

    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      *&v460 = v49;
      *v48 = 136315138;
      v50 = sub_10043FE54();
      v52 = v51;

      v53 = sub_100002320(v50, v52, &v460);

      *(v48 + 4) = v53;
      _os_log_impl(&_mh_execute_header, v46, v47, "%s: got authentication rejection!", v48, 0xCu);
      sub_100002A00(v49);
    }

    else
    {
    }

    *&v460 = 0xD000000000000021;
    *(&v460 + 1) = 0x80000001004C2790;
    v464 = 3;
    sub_1004402CC(&v460);
    v55 = _s17ResponderInstanceC5StateOMa();
    (*(*(v55 - 8) + 8))(&v460, v55);
    return;
  }

  v403 = v45;
  v404 = v42;
  v409 = &v395 - v43;
  v412 = v44;
  v410 = a4;
  v405 = v35;
  v407 = v36;
  v54 = *(v5 + 2);
  swift_unownedRetainStrong();
  sub_10041EA80();
  v406 = v54;

  sub_1004346E4(&v460);
  if (v464 == 1)
  {
    sub_100029954(&v460, &v441);
    v56 = qword_10059BC50;

    if ((((a3 & 0x1000000000000000) != 0) | (2 * a4)) == 2)
    {
      v436 = v56;
      v85 = Logger.logObject.getter();
      v86 = static os_log_type_t.default.getter();
      v87 = os_log_type_enabled(v85, v86);
      v411 = v5;
      v408 = v16;
      v399 = v17;
      if (v87)
      {
        v88 = swift_slowAlloc();
        v89 = swift_slowAlloc();
        *&v460 = v89;
        *v88 = 136315138;
        v90 = sub_10043FE54();
        v92 = v91;

        v93 = sub_100002320(v90, v92, &v460);

        *(v88 + 4) = v93;
        _os_log_impl(&_mh_execute_header, v85, v86, "%s: received: authentication confirmation", v88, 0xCu);
        sub_100002A00(v89);
      }

      else
      {
      }

      v118 = *(&v442 + 1);
      v119 = v443;
      sub_100031694(&v441, *(&v442 + 1));
      (*(v119 + 64))(v412, v439, a3, v410, v118, v119);
      v184 = v411;
      sub_100438E38(&v441);
      swift_unownedRetainStrong();
      v185 = v409;
      sub_10040CD68(*(v184 + 12) | (*(v184 + 26) << 16), v409);

      v186 = v438;
      sub_100012400(v185 + *(v404 + 88), v438, &qword_10058F4D0, &qword_100491AB0);
      v187 = v407;
      v188 = v405;
      v189 = (*(v407 + 48))(v186, 1, v405);
      if (v189 == 1)
      {
        sub_100016290(v186, &qword_10058F4D0, &qword_100491AB0);
      }

      else
      {
        v207 = *(v187 + 32);
        v208 = v437;
        (v207)(v437, v186, v188);
        v209 = *&v184[qword_10059BC78 + 8];
        if (v209)
        {
          v438 = *&v184[qword_10059BC78];
          v210 = swift_allocObject();
          v439 = v207;
          v211 = v210;
          *(v210 + 16) = 0;
          v429 = (v210 + 16);

          v428 = dispatch_semaphore_create(0);
          v212 = type metadata accessor for TaskPriority();
          (*(*(v212 - 8) + 56))(v435, 1, 1, v212);
          v213 = *(&v430 + 1);
          v426 = *(v187 + 16);
          (v426)(*(&v430 + 1), v208, v188);
          v427 = v187 + 16;
          v214 = *(v187 + 80);
          v215 = v188;
          v216 = v209;
          v217 = v184;
          v218 = (v214 + 88) & ~v214;
          v219 = swift_allocObject();
          v219[2] = 0;
          v219[3] = 0;
          v220 = v408;
          v219[4] = v399;
          v219[5] = v220;
          v221 = v428;
          v219[6] = v428;
          v219[7] = v211;
          v223 = v438;
          v222 = v439;
          v219[8] = v217;
          v219[9] = v223;
          v219[10] = v216;
          v224 = v213;
          v225 = v215;
          (v222)(v219 + v218, v224, v215);
          v226 = v217;

          v439 = v216;

          v227 = v221;
          *(&v430 + 1) = v211;

          sub_1003ACB3C(0, 0, v435, &unk_1004B4668, v219);

          v228 = v431;
          static DispatchTime.now()();
          v229 = v432;
          + infix(_:_:)();
          v230 = v434;
          v231 = *(v433 + 8);
          v231(v228, v434);
          OS_dispatch_semaphore.wait(timeout:)();
          v231(v229, v230);
          if (static DispatchTimeoutResult.== infix(_:_:)())
          {
            v435 = v227;
            v232 = v430;
            v233 = v437;
            (v426)(v430);

            v234 = Logger.logObject.getter();
            v235 = static os_log_type_t.error.getter();

            v236 = v225;
            if (os_log_type_enabled(v234, v235))
            {
              v237 = swift_slowAlloc();
              *&v460 = swift_slowAlloc();
              *v237 = 136315394;
              v238 = v235;
              v239 = sub_100002320(v438, v439, &v460);

              *(v237 + 4) = v239;
              *(v237 + 12) = 2080;
              sub_100443AA0(&qword_100597520, &type metadata accessor for UUID);
              v240 = dispatch thunk of CustomStringConvertible.description.getter();
              v242 = v241;
              (*(v407 + 8))(v232, v225);
              v243 = sub_100002320(v240, v242, &v460);

              *(v237 + 14) = v243;
              _os_log_impl(&_mh_execute_header, v234, v238, "Timed out waiting to get paired device for %s [PairingKeyStoreID: %s]", v237, 0x16u);
              swift_arrayDestroy();
              v244 = v411;

              v233 = v437;
            }

            else
            {
              v244 = v226;

              (*(v407 + 8))(v232, v225);
            }

            v227 = v435;
          }

          else
          {
            v233 = v437;

            v236 = v225;
            v244 = v226;
          }

          v302 = v429;
          swift_beginAccess();
          if (*v302)
          {
            v303 = [*v302 deviceID];
            v304 = *&v244[qword_10059BC80];
            if (v304)
            {
              v305 = v303;
              if ([*&v244[qword_10059BC80] respondsToSelector:"publishPairingDidSucceedWithPairingKeyStoreID:deviceID:"])
              {
                swift_unknownObjectRetain();
                isa = UUID._bridgeToObjectiveC()().super.isa;
                [v304 publishPairingDidSucceedWithPairingKeyStoreID:isa deviceID:v305];

                swift_unknownObjectRelease();
              }

              else
              {
              }

              (*(v407 + 8))(v233, v405);
            }

            else
            {

              (*(v407 + 8))(v233, v236);
            }

            sub_100023AD8(v409, type metadata accessor for NANPeer);
          }

          else
          {
            (*(v407 + 8))(v233, v236);
            sub_100023AD8(v409, type metadata accessor for NANPeer);
          }

          goto LABEL_50;
        }

        (*(v187 + 8))(v208, v188);
      }

      v288 = Logger.logObject.getter();
      v289 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v288, v289))
      {
        v290 = swift_slowAlloc();
        *v290 = 0;
        _os_log_impl(&_mh_execute_header, v288, v289, "Missing pairingKeyStoreID or bundleID to notify pair-verify completion", v290, 2u);
      }

      sub_100023AD8(v409, type metadata accessor for NANPeer);
      goto LABEL_50;
    }

    if (((a3 & 0x1000000000000000) != 0) | (2 * a4))
    {
      v57 = Logger.logObject.getter();
      v106 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v57, v106))
      {

        goto LABEL_49;
      }

      v107 = swift_slowAlloc();
      *&v460 = swift_slowAlloc();
      *v107 = 136315394;
      v108 = sub_10043FE54();
      v110 = v109;

      v111 = sub_100002320(v108, v110, &v460);

      *(v107 + 4) = v111;
      *(v107 + 12) = 2080;
      *(v107 + 14) = sub_100002320(0xD00000000000001DLL, 0x80000001004C2700, &v460);
      _os_log_impl(&_mh_execute_header, v57, v106, "%s: %s: Invalid authentication frame received, dropping...", v107, 0x16u);
    }

    else
    {

      v57 = Logger.logObject.getter();
      v58 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v57, v58))
      {

        goto LABEL_49;
      }

      v59 = swift_slowAlloc();
      *&v453 = swift_slowAlloc();
      *v59 = 136315650;
      v60 = sub_10043FE54();
      v62 = sub_100002320(v60, v61, &v453);

      *(v59 + 4) = v62;
      *(v59 + 12) = 2080;
      *(v59 + 14) = sub_100002320(0xD00000000000001DLL, 0x80000001004C2700, &v453);
      *(v59 + 22) = 2080;
      sub_1004346E4(&v460);

      v63 = _s17ResponderInstanceC5StateOMa();
      v64 = sub_100433F50(v63);
      v66 = v65;

      (*(*(v63 - 8) + 8))(&v460, v63);
      v67 = sub_100002320(v64, v66, &v453);

      *(v59 + 24) = v67;
      _os_log_impl(&_mh_execute_header, v57, v58, "%s: %s: PASN request received in invalid state %s, dropping...", v59, 0x20u);
    }

    swift_arrayDestroy();

LABEL_49:

LABEL_50:
    v171 = &v441;
LABEL_51:
    sub_100002A00(v171);
    return;
  }

  v437 = 0;
  v68 = _s17ResponderInstanceC5StateOMa();
  v69 = *(v68 - 8);
  v70 = *(v69 + 8);
  v438 = v69 + 8;
  v70(&v460, v68);
  v71 = qword_10059BC50;

  if (((a3 & 0x1000000000000000) != 0) | (2 * a4))
  {
    if ((((a3 & 0x1000000000000000) != 0) | (2 * a4)) != 2)
    {
      v73 = Logger.logObject.getter();
      v112 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v73, v112))
      {

        return;
      }

      v113 = swift_slowAlloc();
      *&v460 = swift_slowAlloc();
      *v113 = 136315394;
      v114 = sub_10043FE54();
      v116 = v115;

      v117 = sub_100002320(v114, v116, &v460);

      *(v113 + 4) = v117;
      *(v113 + 12) = 2080;
      *(v113 + 14) = sub_100002320(0xD00000000000001DLL, 0x80000001004C2700, &v460);
      _os_log_impl(&_mh_execute_header, v73, v112, "%s: %s: Invalid authentication frame received, dropping...", v113, 0x16u);
LABEL_46:
      swift_arrayDestroy();

      return;
    }

    v72 = v70;

    v73 = Logger.logObject.getter();
    v74 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      *&v441 = swift_slowAlloc();
      *v75 = 136315650;
      v76 = sub_10043FE54();
      v78 = sub_100002320(v76, v77, &v441);

      *(v75 + 4) = v78;
      *(v75 + 12) = 2080;
      *(v75 + 14) = sub_100002320(0xD00000000000001DLL, 0x80000001004C2700, &v441);
      *(v75 + 22) = 2080;
      sub_1004346E4(&v460);

      v79 = sub_100433F50(v68);
      v81 = v80;

      v72(&v460, v68);
      v82 = sub_100002320(v79, v81, &v441);

      *(v75 + 24) = v82;
      v83 = "%s: %s: PASN confirm received in invalid state %s, dropping...";
      v84 = v74;
LABEL_45:
      _os_log_impl(&_mh_execute_header, v73, v84, v83, v75, 0x20u);
      goto LABEL_46;
    }

    goto LABEL_47;
  }

  v434 = v71;
  v435 = v70;
  v94 = Logger.logObject.getter();
  v95 = static os_log_type_t.default.getter();
  v96 = os_log_type_enabled(v94, v95);
  v408 = v16;
  if (v96)
  {
    v97 = swift_slowAlloc();
    v98 = swift_slowAlloc();
    *&v460 = v98;
    *v97 = 136315138;
    v99 = sub_10043FE54();
    v413 = a3;
    v100 = v68;
    v101 = v17;
    v102 = v5;
    v104 = v103;

    v105 = sub_100002320(v99, v104, &v460);
    v5 = v102;
    v17 = v101;
    v68 = v100;
    a3 = v413;

    *(v97 + 4) = v105;
    _os_log_impl(&_mh_execute_header, v94, v95, "%s: received: authentication request", v97, 0xCu);
    sub_100002A00(v98);
  }

  else
  {
  }

  sub_1004346E4(&v460);
  if (v464 == 4 && !v463)
  {
    v137 = vorrq_s8(vorrq_s8(vorrq_s8(*&v461[40], *&v461[72]), vorrq_s8(*&v461[56], v462)), vorrq_s8(*&v461[8], *&v461[24]));
    if (!(*&vorr_s8(*v137.i8, *&vextq_s8(v137, v137, 8uLL)) | *v461 | *(&v460 + 1) | v460))
    {
      v411 = v5;
      (v435)(&v460, v68);
      *&v460 = v412;
      v138 = sub_10005DC58(&unk_100597510, &qword_100495350);
      v139 = sub_1004437E8();
      v140 = Collection<>.nanIE.getter(v138, v139);
      if (v140)
      {
        v141 = v436;
        Array<A>.retrieve(attribute:)(43, v140, v436);

        v142 = type metadata accessor for NANAttribute(0);
        v143 = *(v142 - 8);
        v144 = *(v143 + 48);
        if (v144(v141, 1, v142) != 1)
        {
          if (swift_getEnumCaseMultiPayload() == 38)
          {
            v397 = v143;
            v398 = v144;
            v400 = v142;
            v145 = v141[1];
            v432 = *v141;
            v433 = v145;
            v146 = v141[3];
            *&v430 = v141[2];
            *(&v430 + 1) = v146;
            v147 = v406;
            swift_unownedRetainStrong();
            v148 = v411[24];
            v149 = v411[26];
            v150 = v411[27];
            v151 = v411[28];
            v152 = v411[29];
            v413 = v411[25];
            v436 = v149;
            v431 = v150;
            v396 = v152;
            v153 = v403;
            v401 = v148 | (v413 << 8) | (v149 << 16) | (v150 << 24) | (v151 << 32) | (v152 << 40);
            v402 = v148;
            sub_10040CD68(v401, v403);

            v154 = v428;
            sub_100012400(v153 + *(v404 + 88), v428, &qword_10058F4D0, &qword_100491AB0);
            sub_100023AD8(v153, type metadata accessor for NANPeer);
            v155 = v407;
            v156 = v405;
            if ((*(v407 + 48))(v154, 1, v405) == 1)
            {
              sub_1000124C8(v432, v433);
              sub_1000124C8(v430, *(&v430 + 1));
              v157 = &qword_10058F4D0;
              v158 = &qword_100491AB0;
              v159 = v154;
LABEL_125:
              sub_100016290(v159, v157, v158);
              goto LABEL_80;
            }

            v404 = v151;
            (*(v155 + 32))(v429, v154, v156);
            swift_unownedRetainStrong();
            v308 = v422;
            v307 = v423;
            v309 = v420;
            (*(v422 + 16))(v420, v147 + *(*v147 + 112), v423);

            AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
            (*(AssociatedConformanceWitness + 128))(v307, AssociatedConformanceWitness);
            (*(v308 + 8))(v309, v307);
            v311 = LongTermPairingKeyStore.loadPairedPeersWithIDs()();

            if (*(v311 + 16))
            {
              v312 = v429;
              v313 = sub_10002A440(v429);
              if (v314)
              {
                sub_100443DA8(*(v311 + 56) + *(v426 + 72) * v313, v427, type metadata accessor for NANPairedDeviceSharedAssociation);
                v315 = 0;
              }

              else
              {
                v315 = 1;
              }
            }

            else
            {
              v315 = 1;
              v312 = v429;
            }

            v325 = v426;
            v324 = v427;
            v326 = v424;
            (*(v426 + 56))(v427, v315, 1, v424);

            if ((*(v325 + 48))(v324, 1, v326) == 1)
            {
              (*(v407 + 8))(v312, v405);
              sub_1000124C8(v432, v433);
              sub_1000124C8(v430, *(&v430 + 1));
              v157 = &qword_10058BAD0;
              v158 = &qword_100480E18;
              v159 = v324;
              goto LABEL_125;
            }

            v399 = v17;
            sub_10044384C(v324, v425, type metadata accessor for NANPairedDeviceSharedAssociation);
            v328 = v432;
            v327 = v433;
            v329 = NANIdentityKey.generateIdentityResolutionAttribute(for:with:using:)(v401, v432, v433);
            v331 = v330;
            v333 = v332;
            v335 = v334;
            if (_s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(v329, v330, v328, v327))
            {
              v336 = v430;
              LODWORD(v428) = _s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(v333, v335, v430, *(&v430 + 1));
              sub_1000124C8(v329, v331);
              sub_1000124C8(v333, v335);
              if (v428)
              {
                v337 = v429;
                swift_unownedRetainStrong();
                v338 = sub_100422D18();

                if (*(v338 + 16))
                {
                  v339 = sub_1003E08F4(43);
                  v340 = v419;
                  v341 = v400;
                  v343 = v397;
                  v342 = v398;
                  if (v344)
                  {
                    sub_100443DA8(*(v338 + 56) + *(v397 + 72) * v339, v419, type metadata accessor for NANAttribute);
                    v345 = 0;
                  }

                  else
                  {
                    v345 = 1;
                  }
                }

                else
                {
                  v345 = 1;
                  v340 = v419;
                  v341 = v400;
                  v343 = v397;
                  v342 = v398;
                }

                (*(v343 + 56))(v340, v345, 1, v341);

                if (v342(v340, 1, v341) == 1)
                {
                  (*(v407 + 8))(v337, v405);
                  sub_1000124C8(v432, v433);
                  sub_1000124C8(v430, *(&v430 + 1));
                  sub_100023AD8(v425, type metadata accessor for NANPairedDeviceSharedAssociation);
                  v157 = &unk_100595C00;
                  v158 = &qword_10048F790;
                  v159 = v340;
                  goto LABEL_125;
                }

                if (swift_getEnumCaseMultiPayload() != 38)
                {
                  (*(v407 + 8))(v429, v405);
                  sub_1000124C8(v432, v433);
                  sub_1000124C8(v430, *(&v430 + 1));
                  sub_100023AD8(v425, type metadata accessor for NANPairedDeviceSharedAssociation);
                  sub_100023AD8(v340, type metadata accessor for NANAttribute);
                  goto LABEL_80;
                }

                v361 = v340[1];
                v427 = *v340;
                v428 = v361;
                v362 = v340[3];
                v423 = v340[2];
                v426 = v362;

                v363 = Logger.logObject.getter();
                v364 = static os_log_type_t.default.getter();
                if (os_log_type_enabled(v363, v364))
                {
                  v365 = swift_slowAlloc();
                  v366 = swift_slowAlloc();
                  *&v460 = v366;
                  *v365 = 136315138;
                  v367 = sub_10043FE54();
                  v369 = v368;

                  v370 = sub_100002320(v367, v369, &v460);

                  *(v365 + 4) = v370;
                  _os_log_impl(&_mh_execute_header, v363, v364, "%s: was started for pair verify", v365, 0xCu);
                  sub_100002A00(v366);
                }

                else
                {
                }

                v371 = v406;
                swift_unownedRetainStrong();
                v372 = *(*v371 + 768);
                swift_beginAccess();
                v373 = v414;
                sub_100012400(v371 + v372, v414, &unk_100595C50, &unk_1004AFD20);

                v374 = *(v415 + 48);
                LODWORD(v372) = v374(v373, 1, v418);
                sub_100016290(v373, &unk_100595C50, &unk_1004AFD20);
                if (v372 == 1)
                {

                  v375 = Logger.logObject.getter();
                  v376 = static os_log_type_t.error.getter();
                  if (os_log_type_enabled(v375, v376))
                  {
                    v377 = swift_slowAlloc();
                    v378 = swift_slowAlloc();
                    *&v460 = v378;
                    *v377 = 136315138;
                    v379 = sub_10043FE54();
                    v381 = v380;

                    v382 = sub_100002320(v379, v381, &v460);

                    *(v377 + 4) = v382;
                    _os_log_impl(&_mh_execute_header, v375, v376, "%s: Cannot start pair verify, NIK is nil", v377, 0xCu);
                    sub_100002A00(v378);

                    sub_1000124C8(v427, v428);
                    sub_1000124C8(v423, v426);
                    sub_1000124C8(v432, v433);
                    sub_1000124C8(v430, *(&v430 + 1));
                  }

                  else
                  {
                    sub_1000124C8(v432, v433);
                    sub_1000124C8(v430, *(&v430 + 1));
                    sub_1000124C8(v427, v428);
                    sub_1000124C8(v423, v426);
                  }

                  (*(v407 + 8))(v429, v405);
                  sub_100023AD8(v425, type metadata accessor for NANPairedDeviceSharedAssociation);
                  return;
                }

                sub_100434ED0();
                v383 = *(v425 + v424[6]);
                v384 = (v425 + v424[7]);
                v386 = *v384;
                v385 = v384[1];
                sub_100443DA8(v425, v416, type metadata accessor for NANIdentityKey);
                v387 = v406;
                swift_unownedRetainStrong();
                v388 = *(*v387 + 768);
                swift_beginAccess();
                v389 = v387 + v388;
                v390 = v417;
                sub_100012400(v389, v417, &unk_100595C50, &unk_1004AFD20);

                if (v374(v390, 1, v418) == 1)
                {
                  __break(1u);
                  return;
                }

                v391 = *(v425 + v424[5]);
                swift_unownedRetainStrong();
                v392 = WiFiInterface.macAddress.getter();

                v393 = v383;
                v394 = v437;
                static NANPairing.authenticatedVerify(cipherSuite:pairingKey:initiatorIdentityKey:initiatorIdentityKeyNonce:responderIdentityKey:responderIdentityKeyNonce:baseAuthenticationKeyManagementSuite:initiatorAddress:responderAddress:publishID:)(v393, v386, v385, v416, v432, v433, v417, v427, &v460, v428, v391, v401, v392 & 0xFFFFFFFFFFFFLL, v411[30]);
                v437 = v394;
                if (v394)
                {
                  sub_1000124C8(v427, v428);
                  sub_1000124C8(v423, v426);
                  sub_1000124C8(v432, v433);
                  sub_1000124C8(v430, *(&v430 + 1));
                  sub_100023AD8(v416, type metadata accessor for NANIdentityKey);
                  (*(v407 + 8))(v429, v405);
                  sub_100023AD8(v425, type metadata accessor for NANPairedDeviceSharedAssociation);
                  sub_100023AD8(v417, type metadata accessor for NANIdentityKey);
                  goto LABEL_89;
                }

                sub_1000124C8(v427, v428);
                sub_1000124C8(v423, v426);
                sub_1000124C8(v432, v433);
                sub_1000124C8(v430, *(&v430 + 1));
                sub_100023AD8(v416, type metadata accessor for NANIdentityKey);
                (*(v407 + 8))(v429, v405);
                sub_100023AD8(v425, type metadata accessor for NANPairedDeviceSharedAssociation);
                sub_100023AD8(v417, type metadata accessor for NANIdentityKey);
                sub_100029954(&v460, v465);
                v433 = v404;
                v432 = v396;
                v204 = v402;
                v205 = v413;
                goto LABEL_101;
              }

              (*(v407 + 8))(v429, v405);
              sub_1000124C8(v432, v433);
              sub_1000124C8(v336, *(&v336 + 1));
            }

            else
            {
              v354 = v331;
              v355 = *(&v430 + 1);
              v356 = v430;
              sub_1000124C8(v329, v354);
              sub_1000124C8(v333, v335);
              sub_1000124C8(v328, v327);
              sub_1000124C8(v356, v355);
              (*(v407 + 8))(v429, v405);
            }

            sub_100023AD8(v425, type metadata accessor for NANPairedDeviceSharedAssociation);
            goto LABEL_80;
          }

          sub_100023AD8(v141, type metadata accessor for NANAttribute);
LABEL_80:

          v256 = Logger.logObject.getter();
          v257 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v256, v257))
          {
            v258 = swift_slowAlloc();
            v259 = swift_slowAlloc();
            *&v460 = v259;
            *v258 = 136315138;
            v260 = sub_10043FE54();
            v262 = v261;

            v263 = sub_100002320(v260, v262, &v460);

            *(v258 + 4) = v263;
            _os_log_impl(&_mh_execute_header, v256, v257, "%s: received: authentication request but no pairing session found", v258, 0xCu);
            sub_100002A00(v259);
          }

          else
          {
          }

          v264 = v437;
          sub_100440DD4();
          if (v264)
          {

            swift_errorRetain();
            v265 = Logger.logObject.getter();
            v266 = static os_log_type_t.error.getter();

            if (os_log_type_enabled(v265, v266))
            {
              v267 = swift_slowAlloc();
              v268 = swift_slowAlloc();
              v439 = swift_slowAlloc();
              *&v460 = v439;
              *v267 = 136315394;
              v269 = sub_10043FE54();
              v271 = v270;

              v272 = sub_100002320(v269, v271, &v460);

              *(v267 + 4) = v272;
              *(v267 + 12) = 2112;
              swift_errorRetain();
              v273 = _swift_stdlib_bridgeErrorToNSError();
              *(v267 + 14) = v273;
              *v268 = v273;
              _os_log_impl(&_mh_execute_header, v265, v266, "%s: failed to send authentication rejection frame because %@", v267, 0x16u);
              sub_100016290(v268, &qword_10058B780, &qword_100480AC0);

              sub_100002A00(v439);
            }

            else
            {
            }
          }

          *&v460 = 0xD000000000000033;
          *(&v460 + 1) = 0x80000001004C2750;
          v464 = 3;
          sub_1004402CC(&v460);
          (v435)(&v460, v68);
          return;
        }
      }

      else
      {
        v255 = type metadata accessor for NANAttribute(0);
        v141 = v436;
        (*(*(v255 - 8) + 56))(v436, 1, 1, v255);
      }

      sub_100016290(v141, &unk_100595C00, &qword_10048F790);
      goto LABEL_80;
    }
  }

  v160 = v68;
  v161 = v68;
  v162 = v435;
  (v435)(&v460, v160);
  sub_1004346E4(&v460);
  if (v464)
  {
    (v162)(&v460, v161);
    swift_retain_n();
    v73 = Logger.logObject.getter();
    v163 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v73, v163))
    {
      v75 = swift_slowAlloc();
      *&v441 = swift_slowAlloc();
      *v75 = 136315650;
      v164 = sub_10043FE54();
      v166 = sub_100002320(v164, v165, &v441);

      *(v75 + 4) = v166;
      *(v75 + 12) = 2080;
      *(v75 + 14) = sub_100002320(0xD00000000000001DLL, 0x80000001004C2700, &v441);
      *(v75 + 22) = 2080;
      sub_1004346E4(&v460);

      v167 = sub_100433F50(v161);
      v169 = v168;

      (v162)(&v460, v161);
      v170 = sub_100002320(v167, v169, &v441);

      *(v75 + 24) = v170;
      v83 = "%s: %s: invalid state: %s";
      v84 = v163;
      goto LABEL_45;
    }

LABEL_47:

    return;
  }

  v68 = v161;
  v399 = v17;
  v411 = v5;
  v468 = v460;
  v469[0] = *v461;
  *(v469 + 10) = *&v461[10];
  v456 = v460;
  v457[0] = *v461;
  *(v457 + 10) = *&v461[10];
  *&v471[10] = *&v461[58];
  v470 = *&v461[32];
  *v471 = *&v461[48];
  v458 = *&v461[32];
  v459[0] = *&v461[48];
  *(v459 + 10) = *&v461[58];
  v190 = v461[74];
  v191 = v461[75];
  v192 = *&v461[80];
  v436 = v462.i64[1];
  v433 = v462.i64[0];
  LODWORD(v432) = v463;
  v193 = HIBYTE(v463);
  v194 = *&v461[72];
  if (v194 != *NANAttribute.PairingBootstrapping.Method.opportunistic.unsafeMutableAddressor())
  {
    v195 = v412;
    if (v193 == 1)
    {
      goto LABEL_86;
    }

    if (v193)
    {
      goto LABEL_76;
    }

LABEL_75:
    *(v454 + 10) = *(v457 + 10);
    v453 = v456;
    v454[0] = v457[0];
    v454[2] = v458;
    v455[0] = v459[0];
    *(v455 + 10) = *(v459 + 10);
    v443 = v454[1];
    v444 = v458;
    *v445 = v455[0];
    *&v445[10] = *(v459 + 10);
    v441 = v456;
    v442 = v457[0];
    v446 = v190;
    v447 = v191;
    v448 = v195;
    v245 = v439;
    v449 = v439;
    v450 = a3;
    v246 = v410;
    v451 = v410;
    v452 = 0;
    v247 = v195;
    sub_10012A628(&v468, v440);
    sub_10012A628(&v470, v440);
    sub_100143FBC(v247, v245, a3, v246);
    sub_1004402CC(&v441);
    (v435)(&v441, v68);
    sub_1004437B4(v192, v433, v436, v432, v193);
    sub_1001440B0(&v468);
    sub_1001440B0(&v470);
    return;
  }

  v195 = v412;
  if (!v193)
  {
    goto LABEL_75;
  }

  if (v193 == 1)
  {
LABEL_86:
    DWORD2(v430) = v193;
    v409 = v68;
    v274 = v411;
    LODWORD(v430) = v191;
    v428 = v411[24];
    v431 = v411[25];
    v275 = v411[26];
    v276 = v411[27];
    v277 = v411[28];
    v278 = v411[29];
    LODWORD(v429) = v411[64];
    swift_unownedRetainStrong();
    v279 = v433;
    sub_10000AB0C(v192, v433);
    v427 = WiFiInterface.macAddress.getter();

    v280 = v274[30];
    v281 = v279;
    v282 = v428;
    v425 = v276;
    v426 = v275;
    v423 = v278;
    v424 = v277;
    v283 = v428 | (v431 << 8) | (v275 << 16) | (v276 << 24) | (v277 << 32) | (v278 << 40);
    v284 = v437;
    static NANPairing.authenticatedSetup(password:cipherSuite:pairingCaching:pairingBootstrapRequest:pairingBootstrapResponse:initiatorAddress:responderAddress:publishID:)(v192, v281, v429, v430, &v468, &v470, v283, v427 & 0xFFFFFFFFFFFFLL, &v441, v280);
    v437 = v284;
    if (!v284)
    {
      v292 = v436;
      v293 = v432;
      v294 = BYTE8(v430);
      sub_1004437B4(v192, v281, v436, v432, SBYTE8(v430));
      sub_1001440B0(&v468);
      sub_1004437B4(v192, v281, v292, v293, v294);
      sub_1001440B0(&v470);
      sub_100029954(&v441, v465);
      v204 = v282;
      v205 = v431;
      v436 = v426;
      v431 = v425;
      v433 = v424;
      v432 = v423;
      v68 = v409;
      goto LABEL_101;
    }

    v285 = v436;
    v286 = v432;
    v287 = BYTE8(v430);
    sub_1004437B4(v192, v281, v436, v432, SBYTE8(v430));
    sub_1004437B4(v192, v281, v285, v286, v287);
LABEL_88:
    sub_1001440B0(&v470);
    sub_1001440B0(&v468);
LABEL_89:
    v120 = 0;
    v121 = &unk_10059B000;
    v136 = v437;
    goto LABEL_31;
  }

  if (v193 == 2 && !(v433 | v192 | v436) && !v432)
  {
    v196 = v411;
    v197 = v411[24];
    v436 = v411[25];
    v198 = v411[26];
    v199 = v411[27];
    v200 = v411[28];
    *(&v430 + 1) = v411[29];
    LODWORD(v433) = v411[64];
    swift_unownedRetainStrong();
    v432 = WiFiInterface.macAddress.getter();

    v428 = v197;
    v429 = v198;
    v201 = *(&v430 + 1);
    v431 = v199;
    *&v430 = v200;
    v202 = v197 | (v436 << 8) | (v198 << 16) | (v199 << 24) | (v200 << 32) | (*(&v430 + 1) << 40);
    v203 = v437;
    static NANPairing.opportunisticSetup(cipherSuite:pairingCaching:pairingBootstrapRequest:pairingBootstrapResponse:initiatorAddress:responderAddress:publishID:)(v433, v191, &v468, &v470, v202, v432 & 0xFFFFFFFFFFFFLL, v196[30], &v441);
    v437 = v203;
    if (!v203)
    {
      sub_1001440B0(&v468);
      sub_1001440B0(&v470);
      sub_100029954(&v441, v465);
      v204 = v428;
      v205 = v436;
      v436 = v429;
      v433 = v430;
      v432 = v201;
LABEL_101:
      v295 = v466;
      v296 = v467;
      sub_100031694(v465, v466);
      v297 = v437;
      v298 = (*(v296 + 48))(v412, v439, a3, v410, v295, v296);
      v136 = v297;
      if (!v297)
      {
        *&v430 = v298;
        *(&v430 + 1) = v299;
        v437 = v300;
        v439 = v301;
        v413 = v205;

        v316 = Logger.logObject.getter();
        v317 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v316, v317))
        {
          v318 = swift_slowAlloc();
          v402 = v204;
          v204 = v318;
          v319 = swift_slowAlloc();
          *&v460 = v319;
          *v204 = 136315138;
          v320 = sub_10043FE54();
          v322 = v321;

          v323 = sub_100002320(v320, v322, &v460);

          *(v204 + 4) = v323;
          _os_log_impl(&_mh_execute_header, v316, v317, "%s: programming keys", v204, 0xCu);
          sub_100002A00(v319);

          LODWORD(v204) = v402;
        }

        else
        {
        }

        sub_100437908(v465);
        sub_10002B154(v465, &v460);
        v464 = 1;
        sub_1004402CC(&v460);
        (v435)(&v460, v68);

        v346 = Logger.logObject.getter();
        v347 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v346, v347))
        {
          v348 = swift_slowAlloc();
          v349 = swift_slowAlloc();
          *&v460 = v349;
          *v348 = 136315138;
          v350 = sub_10043FE54();
          v352 = v351;

          v353 = sub_100002320(v350, v352, &v460);

          *(v348 + 4) = v353;
          _os_log_impl(&_mh_execute_header, v346, v347, "%s: sending: authentication response", v348, 0xCu);
          sub_100002A00(v349);
        }

        else
        {
        }

        swift_unownedRetainStrong();
        sub_10040DD50();

        v357 = v439;
        v358 = v430;
        v441 = v430;
        v359 = v437;
        *&v442 = v437;
        *(&v442 + 1) = v439;
        LOBYTE(v443) = 1;
        sub_100143FBC(v430, *(&v430 + 1), v437, v439);
        v360 = *TimeBitmap.Slot.FF.unsafeMutableAddressor();
        sub_1003A8260(&v441, (v433 << 32) | (v432 << 40) | (v431 << 24) | (v436 << 16) | (v413 << 8) | v204, 0, 0, 0x400, ((v360 << 8) | (v360 << 16) | (v360 << 24) | (v360 << 32) | (v360 << 40) | (v360 << 48) | (v360 << 56) | v360), 0, 3, 3000, NANBitmap.Channel.operatingClass.getter, 0);
        sub_1000B21F4(v358, *(&v358 + 1), v359, v357);

        sub_1000B21F4(v358, *(&v358 + 1), v359, v357);
        v171 = v465;
        goto LABEL_51;
      }

      sub_100002A00(v465);
      goto LABEL_30;
    }

    goto LABEL_88;
  }

LABEL_76:

  v248 = Logger.logObject.getter();
  v249 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v248, v249))
  {
    v250 = swift_slowAlloc();
    *&v441 = swift_slowAlloc();
    *v250 = 136315394;
    v251 = sub_10043FE54();
    v253 = v252;

    v254 = sub_100002320(v251, v253, &v441);

    *(v250 + 4) = v254;
    *(v250 + 12) = 2080;
    *(v250 + 14) = sub_100002320(0xD00000000000001DLL, 0x80000001004C2700, &v441);
    _os_log_impl(&_mh_execute_header, v248, v249, "%s: %s: invalid password state", v250, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  sub_10000B02C();
  v136 = swift_allocError();
  *v291 = xmmword_1004881C0;
  *(v291 + 16) = 1;
  swift_willThrow();
  sub_1004437B4(v192, v433, v436, v432, v193);
  sub_1001440B0(&v470);
  sub_1001440B0(&v468);
LABEL_30:
  v120 = 0;
  v121 = &unk_10059B000;
LABEL_31:
  v122 = v121[394];

  swift_errorRetain();
  v123 = Logger.logObject.getter();
  v124 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v123, v124))
  {
    v125 = swift_slowAlloc();
    v438 = v122;
    v126 = v125;
    v127 = v136;
    v128 = swift_slowAlloc();
    v129 = swift_slowAlloc();
    v439 = 0;
    v130 = v129;
    *&v460 = v129;
    *v126 = 136315394;
    v131 = sub_10043FE54();
    v133 = v132;

    v134 = sub_100002320(v131, v133, &v460);

    *(v126 + 4) = v134;
    *(v126 + 12) = 2112;
    swift_errorRetain();
    v135 = _swift_stdlib_bridgeErrorToNSError();
    *(v126 + 14) = v135;
    *v128 = v135;
    _os_log_impl(&_mh_execute_header, v123, v124, "%s: failed to handle authentication frame because %@", v126, 0x16u);
    sub_100016290(v128, &qword_10058B780, &qword_100480AC0);
    v136 = v127;

    sub_100002A00(v130);
    v120 = v439;
  }

  else
  {
  }

  v172 = v399;
  sub_100440DD4();
  if (v120)
  {
    v399 = v172;

    swift_errorRetain();
    v173 = Logger.logObject.getter();
    v174 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v173, v174))
    {
      v175 = swift_slowAlloc();
      v176 = swift_slowAlloc();
      v437 = v136;
      v177 = v176;
      v178 = swift_slowAlloc();
      *&v460 = v178;
      *v175 = 136315394;
      v179 = sub_10043FE54();
      v181 = v180;

      v182 = sub_100002320(v179, v181, &v460);

      *(v175 + 4) = v182;
      *(v175 + 12) = 2112;
      swift_errorRetain();
      v183 = _swift_stdlib_bridgeErrorToNSError();
      *(v175 + 14) = v183;
      *v177 = v183;
      _os_log_impl(&_mh_execute_header, v173, v174, "%s: failed to send authentication rejection frame because %@", v175, 0x16u);
      sub_100016290(v177, &qword_10058B780, &qword_100480AC0);

      sub_100002A00(v178);
    }

    else
    {
    }
  }

  *&v460 = 0xD000000000000025;
  *(&v460 + 1) = 0x80000001004C2720;
  v464 = 3;
  sub_1004402CC(&v460);
  v206 = _s17ResponderInstanceC5StateOMa();
  (*(*(v206 - 8) + 8))(&v460, v206);
}

uint64_t sub_10043C708(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a8;
  v8[10] = v15;
  v8[7] = a6;
  v8[8] = a7;
  v8[5] = a4;
  v8[6] = a5;
  v9 = *a6;
  v8[11] = *(*(*a6 + 88) + 8);
  v8[12] = *(v9 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8[13] = AssociatedTypeWitness;
  v11 = *(AssociatedTypeWitness - 8);
  v8[14] = v11;
  v12 = *(v11 + 64) + 15;
  v8[15] = swift_task_alloc();

  return _swift_task_switch(sub_10043C820, 0, 0);
}

uint64_t sub_10043C820()
{
  v2 = v0[14];
  v1 = v0[15];
  v4 = v0[12];
  v3 = v0[13];
  v5 = v0[11];
  v6 = *(v0[7] + 16);
  swift_unownedRetainStrong();
  (*(v2 + 16))(v1, v6 + *(*v6 + 112), v3);

  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v8 = (*(AssociatedConformanceWitness + 136))(v3, AssociatedConformanceWitness);
  v0[16] = v8;
  (*(v2 + 8))(v1, v3);
  v9 = *v8 + 416;
  v0[17] = *v9;
  v0[18] = v9 & 0xFFFFFFFFFFFFLL | 0x6DFD000000000000;

  return _swift_task_switch(sub_10043C968, v8, 0);
}

uint64_t sub_10043C968()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 128);
  *(v0 + 152) = (*(v0 + 136))(*(v0 + 64), *(v0 + 72), 1, *(v0 + 80));
  *(v0 + 160) = 0;
  v3 = *(v0 + 128);

  return _swift_task_switch(sub_100444204, 0, 0);
}

uint64_t sub_10043CA0C()
{
  v1 = v0[20];
  v2 = v0[16];
  v3 = v0[7];

  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[20];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed to get paired device from WiFiAwarePairedDevicesStore: %@", v8, 0xCu);
    sub_100016290(v9, &qword_10058B780, &qword_100480AC0);
  }

  else
  {
  }

  v11 = v0[15];
  v12 = v0[5];
  OS_dispatch_semaphore.signal()();

  v13 = v0[1];

  return v13();
}

void sub_10043CB94(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v63 = a2;
  v69 = a1;
  v4 = *(*(sub_10005DC58(&unk_10059A690, &unk_1004884D0) - 8) + 64);
  __chkstk_darwin();
  v67 = &v61 - v5;
  v6 = *(*(sub_10005DC58(&unk_100595C50, &unk_1004AFD20) - 8) + 64);
  __chkstk_darwin();
  v65 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v64 = &v61 - v8;
  __chkstk_darwin();
  v70 = &v61 - v9;
  __chkstk_darwin();
  v66 = &v61 - v10;
  __chkstk_darwin();
  v12 = &v61 - v11;
  v13 = qword_10059BC50;

  v68 = v13;
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v73 = v17;
    *v16 = 136315138;

    v18 = sub_10043FE54();
    v20 = v19;

    v21 = sub_100002320(v18, v20, &v73);

    *(v16 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v14, v15, "%s: sending: pairing caching follow up", v16, 0xCu);
    sub_100002A00(v17);
  }

  else
  {
  }

  v22 = *(v3 + 16);
  swift_unownedRetainStrong();
  v23 = *(*v22 + 768);
  swift_beginAccess();
  sub_100012400(v22 + v23, v12, &unk_100595C50, &unk_1004AFD20);

  v24 = type metadata accessor for NANIdentityKey(0);
  v71 = *(v24 - 8);
  v25 = *(v71 + 48);
  LODWORD(v23) = v25(v12, 1, v24);
  sub_100016290(v12, &unk_100595C50, &unk_1004AFD20);
  if (v23 != 1)
  {
    v34 = v69;
    v35 = v69[4];
    v69 = v69[3];
    v68 = sub_100029B34(v34, v69);
    swift_unownedRetainStrong();
    v36 = *(*v22 + 768);
    swift_beginAccess();
    v37 = v70;
    sub_100012400(v22 + v36, v70, &unk_100595C50, &unk_1004AFD20);

    v62 = v25;
    if (v25(v37, 1, v24) == 1)
    {
      __break(1u);
    }

    else
    {
      v38 = v37;
      v39 = v66;
      sub_10044384C(v38, v66, type metadata accessor for NANIdentityKey);
      v40 = v71 + 56;
      v41 = *(v71 + 56);
      v41(v39, 0, 1, v24);
      v42 = type metadata accessor for SymmetricKey();
      v43 = v67;
      (*(*(v42 - 8) + 56))(v67, 1, 1, v42);
      v44 = v75;
      (*(v35 + 72))(v74, v39, v43, v69, v35);
      sub_100016290(v43, &unk_10059A690, &unk_1004884D0);
      sub_100016290(v39, &unk_100595C50, &unk_1004AFD20);
      if (v44)
      {
        return;
      }

      v45 = v41;
      v71 = v40;
      v75 = 0;
      swift_unownedRetainStrong();
      v46 = sub_10040CAE8();

      v47 = *(v46 + *(*v46 + 296));

      rawValue = NANGenericServiceProtocol.init()().attributes._rawValue;
      v49 = NANGenericServiceProtocol.AttributeFilter.all.unsafeMutableAddressor();
      LODWORD(v70) = NANServiceInfo.init(information:filter:)(rawValue, *v49);
      v51 = v50;
      v53 = v52;
      v68 = *(v3 + 24);
      v54 = *(v3 + 25);
      v67 = *(v3 + 26);
      LODWORD(v69) = *(v3 + 30);
      swift_unownedRetainStrong();
      v55 = *(*v22 + 768);
      swift_beginAccess();
      v56 = v22 + v55;
      v57 = v65;
      sub_100012400(v56, v65, &unk_100595C50, &unk_1004AFD20);

      if (v62(v57, 1, v24) != 1)
      {
        v58 = v63 >> 8;
        v59 = v57;
        v60 = v64;
        sub_10044384C(v59, v64, type metadata accessor for NANIdentityKey);
        v45(v60, 0, 1, v24);
        sub_10036DE50(v70, v51, v53, _swiftEmptyArrayStorage, v68 | (v54 << 8) | (v67 << 16), v58, v69, v60);
        sub_1000124C8(v51, v53);

        sub_100143F68(v74);
        sub_100016290(v60, &unk_100595C50, &unk_1004AFD20);
        return;
      }
    }

    __break(1u);
    return;
  }

  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v72 = v29;
    *v28 = 136315138;

    v30 = sub_10043FE54();
    v32 = v31;

    v33 = sub_100002320(v30, v32, &v72);

    *(v28 + 4) = v33;
    _os_log_impl(&_mh_execute_header, v26, v27, "%s: Cannot send pairing caching follow-up frame, NIK is nil", v28, 0xCu);
    sub_100002A00(v29);
  }

  else
  {
  }
}

void sub_10043D3CC(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  v6 = v3;
  v264 = a3;
  v243 = a1;
  v7 = *v3;
  v260 = type metadata accessor for SymmetricKey();
  v240 = *(v260 - 8);
  v8 = *(v240 + 64);
  __chkstk_darwin();
  v255 = &v215 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v254 = &v215 - v10;
  v11 = *(v7 + 88);
  v12 = *(v11 + 8);
  v13 = *(v7 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v239 = *(AssociatedTypeWitness - 8);
  v14 = *(v239 + 64);
  __chkstk_darwin();
  v257 = &v215 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v256 = &v215 - v16;
  v249 = type metadata accessor for NANPeer(0);
  v17 = *(*(v249 - 8) + 64);
  __chkstk_darwin();
  v248 = &v215 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(*(sub_10005DC58(&qword_1005985E0, &unk_1004B0F80) - 8) + 64);
  __chkstk_darwin();
  v242 = &v215 - v20;
  v258 = type metadata accessor for UUID();
  v244 = *(v258 - 8);
  v21 = *(v244 + 64);
  __chkstk_darwin();
  v241 = &v215 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v238 = v22;
  __chkstk_darwin();
  v245 = &v215 - v23;
  v24 = *(*(sub_10005DC58(&unk_1005985B0, &unk_1004939A0) - 8) + 64);
  __chkstk_darwin();
  v247 = &v215 - v25;
  v26 = *(*(sub_10005DC58(&qword_10058F4D0, &qword_100491AB0) - 8) + 64);
  __chkstk_darwin();
  v250 = &v215 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v261 = &v215 - v28;
  v253 = v12;
  v270 = v13;
  v29 = swift_getAssociatedTypeWitness();
  v237 = *(v29 - 8);
  v30 = v237[8];
  __chkstk_darwin();
  v246 = &v215 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v251 = &v215 - v32;
  v33 = *(*(type metadata accessor for NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement.KeySpecificData.NANIdentityKeyData(0) - 8) + 64);
  __chkstk_darwin();
  v268 = &v215 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v266 = type metadata accessor for NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement.KeySpecificData(0);
  v35 = *(*(v266 - 8) + 64);
  __chkstk_darwin();
  v262 = &v215 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v236 = type metadata accessor for NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement(0);
  v267 = *(v236 - 8);
  v37 = *(v267 + 64);
  __chkstk_darwin();
  v265 = &v215 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = *(*(sub_10005DC58(&unk_100595C00, &qword_10048F790) - 8) + 64);
  __chkstk_darwin();
  v41 = &v215 - v40;
  v42 = qword_10059BC50;

  v271 = v42;
  v43 = Logger.logObject.getter();
  v44 = static os_log_type_t.default.getter();
  v45 = os_log_type_enabled(v43, v44);
  v252 = v29;
  if (v45)
  {
    v46 = swift_slowAlloc();
    v263 = v11;
    v47 = v46;
    v48 = swift_slowAlloc();
    v269 = v5;
    v49 = v48;
    *&v276 = v48;
    *v47 = 136315138;

    v50 = sub_10043FE54();
    v51 = v6;
    v53 = v52;

    v54 = sub_100002320(v50, v53, &v276);
    v6 = v51;

    *(v47 + 4) = v54;
    _os_log_impl(&_mh_execute_header, v43, v44, "%s: received: pairing caching follow up", v47, 0xCu);
    sub_100002A00(v49);
    v5 = v269;

    v11 = v263;
  }

  else
  {
  }

  sub_1004346E4(&v276);
  if (v283 == 2)
  {
    sub_100029954(&v276, v284);
    Array<A>.retrieve(attribute:)(36, v264, v41);
    v55 = type metadata accessor for NANAttribute(0);
    if ((*(*(v55 - 8) + 48))(v41, 1, v55) == 1)
    {
      sub_100016290(v41, &unk_100595C00, &qword_10048F790);
LABEL_16:

      v77 = Logger.logObject.getter();
      v78 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v77, v78))
      {
        v79 = swift_slowAlloc();
        v80 = swift_slowAlloc();
        *&v276 = v80;
        *v79 = 136315138;

        v81 = sub_10043FE54();
        v83 = v82;

        v84 = sub_100002320(v81, v83, &v276);

        *(v79 + 4) = v84;
        _os_log_impl(&_mh_execute_header, v77, v78, "%s: received: pairing caching follow up with no shared key descriptor!", v79, 0xCu);
        sub_100002A00(v80);
      }

      else
      {
      }

      goto LABEL_61;
    }

    if (swift_getEnumCaseMultiPayload() != 32)
    {
      sub_100023AD8(v41, type metadata accessor for NANAttribute);
      goto LABEL_16;
    }

    v263 = v11;
    v296 = v6;
    v65 = *(v41 + 5);
    v294[4] = *(v41 + 4);
    v294[5] = v65;
    v295 = *(v41 + 12);
    v66 = *(v41 + 1);
    v294[0] = *v41;
    v294[1] = v66;
    v67 = *(v41 + 3);
    v294[2] = *(v41 + 2);
    v294[3] = v67;
    v68 = v285;
    v69 = v286;
    sub_100029B34(v284, v285);
    v70 = (*(v69 + 88))(v294, v68, v69);
    if (!v5)
    {
      v71 = v70;
      v269 = 0;
      v72 = *(v70 + 16);
      v233 = v70;
      v235 = v72;
      if (v72)
      {
        v221 = v243 >> 16;
        v236 = *(v236 + 24);
        v234 = v70 + ((*(v267 + 80) + 32) & ~*(v267 + 80));
        v225 = v296 + qword_10059BC58;
        swift_beginAccess();
        v73 = 0;
        v231 = (v239 + 16);
        v232 = (v240 + 8);
        v239 += 8;
        v230 = (v237 + 2);
        v222 = (v237 + 1);
        v223 = (v244 + 32);
        v220 = (v244 + 56);
        v217 = v244 + 16;
        v218 = (v244 + 48);
        v215 = v244 + 8;
        v216 = v238 + 7;
        *&v74 = 136315138;
        v219 = v74;
        *&v74 = 136315394;
        v224 = v74;
        v75 = v268;
        v76 = v262;
        while (1)
        {
          if (v73 >= *(v71 + 16))
          {
            __break(1u);
            return;
          }

          v88 = v265;
          sub_100443DA8(v234 + *(v267 + 72) * v73, v265, type metadata accessor for NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement);
          sub_10044384C(v88 + v236, v76, type metadata accessor for NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement.KeySpecificData);
          EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
          if (EnumCaseMultiPayload <= 1)
          {
            break;
          }

          v264 = v73;
          if (EnumCaseMultiPayload == 2)
          {
            v99 = v76[1];
            v98 = v76[2];
            v101 = v76[3];
            v100 = v76[4];
            swift_retain_n();
            v102 = Logger.logObject.getter();
            v103 = static os_log_type_t.error.getter();
            v104 = os_log_type_enabled(v102, v103);
            v240 = v98;
            v238 = v99;
            if (v104)
            {
              v105 = swift_slowAlloc();
              *&v276 = swift_slowAlloc();
              *v105 = v224;

              v106 = sub_10043FE54();
              v108 = v107;

              v109 = sub_100002320(v106, v108, &v276);

              *(v105 + 4) = v109;
              *(v105 + 12) = 2080;
              v110 = *(v296 + 26);
              v111 = *(v296 + 12);

              v112 = WiFiAddress.description.getter(v111 | (v110 << 16));
              v114 = v113;

              v115 = sub_100002320(v112, v114, &v276);

              *(v105 + 14) = v115;
              _os_log_impl(&_mh_execute_header, v102, v103, "%s: responder adding rxIGTK! for peer: %s", v105, 0x16u);
              swift_arrayDestroy();
            }

            else
            {
            }

            v148 = v256;
            v149 = v296;
            v150 = v296[2];
            swift_unownedRetainStrong();
            v151 = *(*v150 + 96);
            swift_beginAccess();
            v152 = AssociatedTypeWitness;
            (*v231)(v148, v150 + v151, AssociatedTypeWitness);

            *&v276 = v101;
            *(&v276 + 1) = v100;
            sub_10000AB0C(v101, v100);
            v153 = v254;
            SymmetricKey.init<A>(data:)();
            v154 = *(v149 + 26);
            v155 = *(v149 + 12);
            AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
            v157 = v269;
            (*(AssociatedConformanceWitness + 328))(v153, 0, v155 | (v154 << 16), v152, AssociatedConformanceWitness);
            v269 = v157;
            if (v157)
            {
              goto LABEL_62;
            }

            sub_1000124C8(v238, v240);
            sub_1000124C8(v101, v100);
            (*v232)(v153, v260);
            (*v239)(v148, v152);
            v75 = v268;
            v76 = v262;
            v71 = v233;
            goto LABEL_23;
          }

          v117 = v76[1];
          v116 = v76[2];
          v100 = v76[4];
          v237 = v76[3];
          swift_retain_n();
          v118 = Logger.logObject.getter();
          v119 = static os_log_type_t.error.getter();
          v120 = os_log_type_enabled(v118, v119);
          v240 = v116;
          v238 = v117;
          if (v120)
          {
            v121 = swift_slowAlloc();
            *&v276 = swift_slowAlloc();
            *v121 = v224;

            v122 = sub_10043FE54();
            v124 = v123;

            v125 = sub_100002320(v122, v124, &v276);

            *(v121 + 4) = v125;
            *(v121 + 12) = 2080;
            v126 = *(v296 + 26);
            v127 = *(v296 + 12);

            v128 = WiFiAddress.description.getter(v127 | (v126 << 16));
            v130 = v129;

            v131 = sub_100002320(v128, v130, &v276);

            *(v121 + 14) = v131;
            _os_log_impl(&_mh_execute_header, v118, v119, "%s: responder adding rxBIGTK!: %s", v121, 0x16u);
            swift_arrayDestroy();
          }

          else
          {
          }

          v148 = v257;
          v158 = v296;
          v159 = v296[2];
          swift_unownedRetainStrong();
          v160 = *(*v159 + 96);
          swift_beginAccess();
          v152 = AssociatedTypeWitness;
          (*v231)(v148, v159 + v160, AssociatedTypeWitness);

          v101 = v237;
          *&v276 = v237;
          *(&v276 + 1) = v100;
          sub_10000AB0C(v237, v100);
          v153 = v255;
          SymmetricKey.init<A>(data:)();
          v161 = *(v158 + 26);
          v162 = *(v158 + 12);
          v163 = swift_getAssociatedConformanceWitness();
          v164 = v269;
          (*(v163 + 336))(v153, 0, v162 | (v161 << 16), v152, v163);
          if (v164)
          {
LABEL_62:

            sub_100143F68(v294);
            sub_1000124C8(v238, v240);
            sub_1000124C8(v101, v100);
            (*v232)(v153, v260);
            (*v239)(v148, v152);
            goto LABEL_61;
          }

          sub_1000124C8(v238, v240);
          sub_1000124C8(v101, v100);
          (*v232)(v153, v260);
          (*v239)(v148, v152);
          v75 = v268;
          v76 = v262;
          v71 = v233;
          v73 = v264;
          v269 = 0;
LABEL_24:
          if (v235 == ++v73)
          {
            goto LABEL_59;
          }
        }

        if (EnumCaseMultiPayload)
        {
          goto LABEL_24;
        }

        v264 = v73;
        sub_10044384C(v76, v75, type metadata accessor for NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement.KeySpecificData.NANIdentityKeyData);

        v90 = Logger.logObject.getter();
        v91 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v90, v91))
        {
          v92 = swift_slowAlloc();
          v93 = swift_slowAlloc();
          *&v276 = v93;
          *v92 = v219;

          v94 = sub_10043FE54();
          v96 = v95;

          v97 = sub_100002320(v94, v96, &v276);

          *(v92 + 4) = v97;
          _os_log_impl(&_mh_execute_header, v90, v91, "%s: Saving NIK", v92, 0xCu);
          sub_100002A00(v93);
        }

        else
        {
        }

        v132 = v230;
        v238 = v285;
        v240 = v286;
        v237 = sub_100029B34(v284, v285);
        v133 = v296[2];
        swift_unownedRetainStrong();
        v134 = *v132;
        v135 = v133 + *(*v133 + 112);
        v136 = v251;
        v137 = v252;
        v228 = v134;
        v134(v251, v135, v252);

        v138 = swift_getAssociatedConformanceWitness();
        v227 = *(v138 + 128);
        v139 = v227(v137, v138);
        v226 = *v222;
        v226(v136, v137);
        v229 = *(v240 + 80);
        v140 = swift_getAssociatedTypeWitness();
        v141 = swift_getAssociatedConformanceWitness();
        v142 = v269;
        v229(v268, v139, v140, v141, v238, v240);

        if (v142)
        {

          sub_100143F68(v294);
          sub_100023AD8(v268, type metadata accessor for NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement.KeySpecificData.NANIdentityKeyData);
          goto LABEL_61;
        }

        swift_unownedRetainStrong();
        v143 = v246;
        v228(v246, v133 + *(*v133 + 112), v137);
        v240 = v133;

        v227(v137, v138);
        v226(v143, v137);
        v144 = LongTermPairingKeyStore.loadPairedPeersWithIDs()();

        __chkstk_darwin();
        *(&v215 - 2) = v268;
        v145 = v247;
        sub_10019BC64(sub_100444208, (&v215 - 4), v144, v247);
        v269 = 0;

        v146 = sub_10005DC58(&unk_100597500, &unk_1004939B0);
        if ((*(*(v146 - 8) + 48))(v145, 1, v146) == 1)
        {
          sub_100016290(v145, &unk_1005985B0, &unk_1004939A0);
          v147 = v258;
          (*v220)(v261, 1, 1, v258);
        }

        else
        {
          v165 = *(v146 + 48);
          v166 = v261;
          v147 = v258;
          (*v223)(v261, v145, v258);
          (*v220)(v166, 0, 1, v147);
          sub_100023AD8(v145 + v165, type metadata accessor for NANPairedDeviceSharedAssociation);
        }

        v167 = v250;
        v168 = *(v225 + 80);
        v280 = *(v225 + 64);
        v281 = v168;
        v282 = *(v225 + 96);
        v169 = *(v225 + 16);
        v276 = *v225;
        v277 = v169;
        v170 = *(v225 + 48);
        v278 = *(v225 + 32);
        v279 = v170;
        if (*(&v276 + 1))
        {
          v287 = v276;
          v171 = *(v225 + 64);
          v290 = *(v225 + 48);
          v291 = v171;
          v292 = *(v225 + 80);
          v293 = *(v225 + 96);
          v172 = *(v225 + 32);
          v288 = *(v225 + 16);
          v289 = v172;
          sub_100012400(v261, v250, &qword_10058F4D0, &qword_100491AB0);
          if ((*v218)(v167, 1, v147) != 1)
          {
            v238 = *v223;
            v238(v245, v167, v147);
            sub_100012400(&v276, v274, &qword_1005968A0, &unk_100499050);

            sub_100012400(&v276, v274, &qword_1005968A0, &unk_100499050);
            v181 = Logger.logObject.getter();
            v182 = static os_log_type_t.default.getter();
            sub_100016290(&v276, &qword_1005968A0, &unk_100499050);
            if (os_log_type_enabled(v181, v182))
            {
              v183 = swift_slowAlloc();
              v273 = swift_slowAlloc();
              *v183 = v224;
              v184 = v296;
              v185 = sub_10043FE54();
              v186 = v184;
              v188 = v187;
              v189 = v186;

              v190 = sub_100002320(v185, v188, &v273);

              *(v183 + 4) = v190;
              *(v183 + 12) = 2080;
              v274[4] = v280;
              v274[5] = v281;
              v275 = v282;
              v274[0] = v276;
              v274[1] = v277;
              v274[2] = v278;
              v274[3] = v279;
              sub_100443704(v274, &v272);
              v191 = NANPairing.Metadata.description.getter();
              v193 = v192;
              sub_100016290(&v276, &qword_1005968A0, &unk_100499050);
              v194 = sub_100002320(v191, v193, &v273);

              *(v183 + 14) = v194;
              _os_log_impl(&_mh_execute_header, v181, v182, "%s: Updating WiFiAwarePairedDeviceStore with metadata: %s", v183, 0x16u);
              swift_arrayDestroy();
            }

            else
            {
              v189 = v296;
            }

            v195 = type metadata accessor for TaskPriority();
            v196 = v242;
            (*(*(v195 - 8) + 56))(v242, 1, 1, v195);
            v197 = v244;
            v198 = v241;
            v199 = v258;
            (*(v244 + 16))(v241, v245, v258);
            v200 = (*(v197 + 80) + 152) & ~*(v197 + 80);
            v201 = &v216[v200] & 0xFFFFFFFFFFFFFFF8;
            v202 = swift_allocObject();
            *(v202 + 16) = 0;
            *(v202 + 24) = 0;
            v203 = v263;
            *(v202 + 32) = v270;
            *(v202 + 40) = v203;
            v204 = v292;
            *(v202 + 112) = v291;
            *(v202 + 128) = v204;
            *(v202 + 144) = v293;
            v205 = v288;
            *(v202 + 48) = v287;
            *(v202 + 64) = v205;
            v206 = v290;
            *(v202 + 80) = v289;
            *(v202 + 96) = v206;
            v238(v202 + v200, v198, v199);
            *(v202 + v201) = v189;

            sub_1003587D4(0, 0, v196, &unk_1004B4650, v202);

            (*(v197 + 8))(v245, v199);
            v71 = v233;
            goto LABEL_22;
          }

          sub_100016290(v167, &qword_10058F4D0, &qword_100491AB0);
        }

        v173 = Logger.logObject.getter();
        v174 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v173, v174))
        {
          v175 = swift_slowAlloc();
          v176 = swift_slowAlloc();
          *&v274[0] = v176;
          *v175 = v219;

          v177 = sub_10043FE54();
          v179 = v178;

          v180 = sub_100002320(v177, v179, v274);

          *(v175 + 4) = v180;
          _os_log_impl(&_mh_execute_header, v173, v174, "%s: no pairing metadata available to update WiFiAwarePairedDeviceStore", v175, 0xCu);
          sub_100002A00(v176);
        }

        else
        {
        }

        v71 = v233;
LABEL_22:
        swift_unownedRetainStrong();
        v85 = v248;
        v86 = v221;
        sub_10040CD68(v221, v248);
        v87 = v261;
        sub_100443570(v261, v85 + *(v249 + 88));
        sub_10040E430(v85, v86);

        sub_100016290(v87, &qword_10058F4D0, &qword_100491AB0);
        v75 = v268;
        sub_100023AD8(v268, type metadata accessor for NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement.KeySpecificData.NANIdentityKeyData);
        v76 = v262;
LABEL_23:
        v73 = v264;
        goto LABEL_24;
      }

      v207 = Logger.logObject.getter();
      v208 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v207, v208))
      {
        v209 = swift_slowAlloc();
        v210 = swift_slowAlloc();
        *&v276 = v210;
        *v209 = 136315138;

        v211 = sub_10043FE54();
        v213 = v212;

        v214 = sub_100002320(v211, v213, &v276);

        *(v209 + 4) = v214;
        _os_log_impl(&_mh_execute_header, v207, v208, "%s: No KDEs found in pairing caching follow-up frame", v209, 0xCu);
        sub_100002A00(v210);
      }

      else
      {
      }

LABEL_59:

      sub_10043CB94(v284, v243);
    }

    sub_100143F68(v294);
LABEL_61:
    sub_100002A00(v284);
    return;
  }

  v56 = _s17ResponderInstanceC5StateOMa();
  (*(*(v56 - 8) + 8))(&v276, v56);

  v57 = Logger.logObject.getter();
  v58 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v57, v58))
  {
    v59 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    *&v276 = v60;
    *v59 = 136315138;

    v61 = sub_10043FE54();
    v63 = v62;

    v64 = sub_100002320(v61, v63, &v276);

    *(v59 + 4) = v64;
    _os_log_impl(&_mh_execute_header, v57, v58, "%s: received: pairing caching follow up but not authenticated state!", v59, 0xCu);
    sub_100002A00(v60);
  }

  else
  {
  }
}

uint64_t sub_10043F224(uint64_t a1)
{
  v2 = *(*(type metadata accessor for NANIdentityKey(0) - 8) + 64);
  __chkstk_darwin();
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (sub_10005DC58(&unk_100597500, &unk_1004939B0) - 8);
  v6 = *(*v5 + 64);
  __chkstk_darwin();
  v8 = &v13 - v7;
  sub_100012400(a1, &v13 - v7, &unk_100597500, &unk_1004939B0);
  v9 = v5[14];
  sub_100443DA8(&v8[v9], v4, type metadata accessor for NANIdentityKey);
  sub_100023AD8(&v8[v9], type metadata accessor for NANPairedDeviceSharedAssociation);
  v10 = static NANIdentityKey.== infix(_:_:)();
  sub_100023AD8(v4, type metadata accessor for NANIdentityKey);
  v11 = type metadata accessor for UUID();
  (*(*(v11 - 8) + 8))(v8, v11);
  return v10 & 1;
}

uint64_t sub_10043F3C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[16] = a5;
  v6[17] = a6;
  v6[15] = a4;
  v7 = type metadata accessor for UUID();
  v6[18] = v7;
  v8 = *(v7 - 8);
  v6[19] = v8;
  v9 = *(v8 + 64) + 15;
  v6[20] = swift_task_alloc();

  return _swift_task_switch(sub_10043F488, 0, 0);
}

uint64_t sub_10043F488()
{
  v1 = *(v0[17] + 16);
  v0[21] = v1;
  swift_unownedRetainStrong();
  v2 = swift_task_alloc();
  v0[22] = v2;
  *v2 = v0;
  v2[1] = sub_10043F534;
  v4 = v0[15];
  v3 = v0[16];

  return sub_10043306C(v4, v3, v1);
}

uint64_t sub_10043F534(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 176);
  v8 = *v2;
  v3[23] = a1;
  v3[24] = v1;

  if (v1)
  {
    v5 = sub_100444200;
  }

  else
  {
    v6 = v3[21];

    v5 = sub_10043F650;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10043F650()
{
  v35 = v0;
  v1 = v0[17];
  v2 = v0[15];
  (*(v0[19] + 16))(v0[20], v0[16], v0[18]);

  sub_100443704(v2, (v0 + 2));
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  sub_100443760(v2);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[19];
    v32 = v0[20];
    v33 = v0[23];
    v6 = v0[17];
    v31 = v0[18];
    v7 = v0[15];
    v8 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *v8 = 136315906;
    v9 = sub_10043FE54();
    v11 = v10;

    v12 = sub_100002320(v9, v11, &v34);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2080;
    v13 = NANPairing.Metadata.description.getter();
    v15 = sub_100002320(v13, v14, &v34);

    *(v8 + 14) = v15;
    *(v8 + 22) = 2080;
    sub_100443AA0(&qword_100597520, &type metadata accessor for UUID);
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    v18 = v17;
    (*(v5 + 8))(v32, v31);
    v19 = sub_100002320(v16, v18, &v34);

    *(v8 + 24) = v19;
    *(v8 + 32) = 2048;
    *(v8 + 34) = v33;
    _os_log_impl(&_mh_execute_header, v3, v4, "%s: Updated WiFiAwarePairedDeviceStore with metadata: %s, UUID: %s, DeviceID: %llu", v8, 0x2Au);
    swift_arrayDestroy();
  }

  else
  {
    v21 = v0[19];
    v20 = v0[20];
    v22 = v0[17];
    v23 = v0[18];

    (*(v21 + 8))(v20, v23);
  }

  v24 = *(v0[17] + qword_10059BC80);
  if (v24 && ([v24 respondsToSelector:"publishPairingDidSucceedWithPairingKeyStoreID:deviceID:"] & 1) != 0)
  {
    v25 = v0[23];
    v26 = v0[16];
    swift_unknownObjectRetain();
    isa = UUID._bridgeToObjectiveC()().super.isa;
    [v24 publishPairingDidSucceedWithPairingKeyStoreID:isa deviceID:v25];

    swift_unknownObjectRelease();
  }

  v28 = v0[20];

  v29 = v0[1];

  return v29();
}

uint64_t sub_10043F970()
{
  v1 = *v0;

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v14 = v5;
    *v4 = 136315138;

    v6 = sub_10043FE54();
    v8 = v7;

    v9 = sub_100002320(v6, v8, &v14);

    *(v4 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v2, v3, "%s: data path terminating", v4, 0xCu);
    sub_100002A00(v5);
  }

  else
  {
  }

  v14 = 1;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0;
  v23 = 4;
  sub_1004402CC(&v14);
  v10 = *(v1 + 80);
  v11 = *(v1 + 88);
  v12 = _s17ResponderInstanceC5StateOMa();
  return (*(*(v12 - 8) + 8))(&v14, v12);
}

BOOL sub_10043FB58()
{
  v1 = *v0;
  sub_1004346E4(v8);
  v3 = 0;
  if (v16 == 4 && !v15 && v8[0] == 1)
  {
    v2 = vorrq_s8(vorrq_s8(vorrq_s8(v11, v13), vorrq_s8(v12, v14)), vorrq_s8(v9, v10));
    if (!(*&vorr_s8(*v2.i8, *&vextq_s8(v2, v2, 8uLL)) | v8[2] | v8[1]))
    {
      v3 = 1;
    }
  }

  v4 = *(v1 + 80);
  v5 = *(v1 + 88);
  v6 = _s17ResponderInstanceC5StateOMa();
  (*(*(v6 - 8) + 8))(v8, v6);
  return v3;
}

uint64_t sub_10043FC78(const char *a1)
{
  v3 = *v1;

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v16 = v7;
    *v6 = 136315138;

    v8 = sub_10043FE54();
    v10 = v9;

    v11 = sub_100002320(v8, v10, v16);

    *(v6 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v4, v5, a1, v6, 0xCu);
    sub_100002A00(v7);
  }

  else
  {
  }

  memset(v16, 0, sizeof(v16));
  v17 = 4;
  sub_1004402CC(v16);
  v12 = *(v3 + 80);
  v13 = *(v3 + 88);
  v14 = _s17ResponderInstanceC5StateOMa();
  return (*(*(v14 - 8) + 8))(v16, v14);
}

unint64_t sub_10043FE54()
{
  _StringGuts.grow(_:)(20);

  v1._countAndFlagsBits = WiFiAddress.description.getter(*(v0 + 24) | (*(v0 + 26) << 16));
  String.append(_:)(v1);

  v2._countAndFlagsBits = 62;
  v2._object = 0xE100000000000000;
  String.append(_:)(v2);
  return 0xD000000000000019;
}

uint64_t sub_10043FEEC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_10043FF28(uint64_t a1)
{
  v1 = ((*(a1 + 16) & 0x1000000000000000) != 0) | (2 * *(a1 + 24));
  v2 = v1 ^ 0x1FF;
  v3 = 512 - v1;
  if (v2 >= 0x1FB)
  {
    return 0;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10043FF50(uint64_t a1)
{
  if ((*(a1 + 25) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 25) & 3;
  }
}

uint64_t sub_10043FF6C(uint64_t a1)
{
  if ((*(a1 + 122) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 122) & 7;
  }
}

__n128 sub_10043FF88(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 107) = *(a2 + 107);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_10043FFB4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 123))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 122);
  if (v3 >= 5)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10043FFF0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 107) = 0u;
    *(result + 80) = 0u;
    *(result + 96) = 0u;
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 123) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 123) = 0;
    }

    if (a2)
    {
      *(result + 122) = -a2;
    }
  }

  return result;
}

uint64_t sub_100440048(uint64_t result, unsigned int a2)
{
  if (a2 > 3)
  {
    *(result + 106) = 0u;
    v2 = a2 - 4;
    *(result + 80) = 0u;
    *(result + 96) = 0u;
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    LOBYTE(a2) = 4;
    *result = v2;
  }

  *(result + 122) = a2;
  return result;
}

uint64_t sub_100440094()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1004400D0(uint64_t a1)
{
  if ((*(a1 + 82) & 7u) <= 4)
  {
    return *(a1 + 82) & 7;
  }

  else
  {
    return (*a1 + 5);
  }
}

__n128 sub_1004400EC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 79) = *(a2 + 79);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_100440110(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 83))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 82);
  if (v3 >= 6)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10044014C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 79) = 0;
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 251;
    if (a3 >= 0xFB)
    {
      *(result + 83) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 83) = 0;
    }

    if (a2)
    {
      *(result + 82) = -a2;
    }
  }

  return result;
}

uint64_t sub_1004401A0(uint64_t result, unsigned int a2)
{
  if (a2 > 4)
  {
    v2 = a2 - 5;
    *(result + 80) = 0;
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    LOBYTE(a2) = 5;
    *result = v2;
  }

  *(result + 82) = a2;
  return result;
}

uint64_t sub_10044020C(uint64_t a1)
{
  v3 = *v1;
  v4 = qword_10059A940;
  swift_beginAccess();
  v5 = *(v3 + 80);
  v6 = *(v3 + 88);
  v7 = _s17InitiatorInstanceC5StateOMa_0();
  (*(*(v7 - 8) + 24))(&v1[v4], a1, v7);
  swift_endAccess();
  return sub_100428D94();
}

uint64_t sub_1004402CC(uint64_t a1)
{
  v3 = *v1;
  v4 = qword_10059A9E0;
  swift_beginAccess();
  v5 = *(v3 + 80);
  v6 = *(v3 + 88);
  v7 = _s17ResponderInstanceC5StateOMa();
  (*(*(v7 - 8) + 24))(&v1[v4], a1, v7);
  swift_endAccess();
  return sub_10043414C();
}

uint64_t sub_10044038C(uint64_t a1, unint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, char a8, uint64_t a9, uint64_t a10)
{
  v11 = v10;
  v13 = a2;
  v15 = a2 >> 8;
  v16 = a2 >> 16;
  v17 = a2 >> 24;
  v18 = HIDWORD(a2);
  v19 = a2 >> 40;
  *(v10 + 48) = 0x303030303030;
  *(v10 + 56) = 0xE600000000000000;
  Logger.init(subsystem:category:)();
  v20 = v10 + qword_10059BC58;
  *v20 = 0u;
  *(v20 + 16) = 0u;
  *(v20 + 32) = 0u;
  *(v20 + 48) = 0u;
  *(v20 + 64) = 0u;
  *(v20 + 80) = 0u;
  *(v20 + 96) = 0;
  *(v10 + qword_10059BC60) = 0;
  *(v10 + qword_10059BC68) = 0;
  *(v10 + qword_10059BC70) = 0;
  v21 = (v10 + qword_10059BC78);
  *v21 = 0;
  v21[1] = 0;
  v22 = v10 + qword_10059A9E0;
  *v22 = 0u;
  *(v22 + 16) = 0u;
  *(v22 + 32) = 0u;
  *(v22 + 48) = 0u;
  *(v22 + 64) = 0u;
  *(v22 + 80) = 0u;
  *(v22 + 96) = 0u;
  *(v22 + 106) = 0u;
  *(v22 + 122) = 4;
  type metadata accessor for P2PTimer();
  variable initialization expression of AWDLPeer.lastUpdated();
  *(v10 + qword_10059BC80) = 0;
  *(v10 + 16) = a1;
  *(v10 + 24) = v13;
  *(v10 + 25) = v15;
  *(v10 + 26) = v16;
  *(v10 + 27) = v17;
  *(v10 + 28) = v18;
  *(v10 + 29) = v19;
  *(v10 + 30) = a3;
  *(v10 + 32) = a4;
  *(v10 + 40) = a5;
  *(v10 + 64) = a6;
  v23 = v10 + qword_10059BC58;
  swift_beginAccess();
  v24 = *(v23 + 80);
  v40[4] = *(v23 + 64);
  v40[5] = v24;
  v41 = *(v23 + 96);
  v25 = *(v23 + 16);
  v40[0] = *v23;
  v40[1] = v25;
  v26 = *(v23 + 48);
  v40[2] = *(v23 + 32);
  v40[3] = v26;
  v27 = *(a7 + 16);
  *v23 = *a7;
  *(v23 + 16) = v27;
  v28 = *(a7 + 32);
  v29 = *(a7 + 48);
  v30 = *(a7 + 64);
  v31 = *(a7 + 80);
  *(v23 + 96) = *(a7 + 96);
  *(v23 + 64) = v30;
  *(v23 + 80) = v31;
  *(v23 + 32) = v28;
  *(v23 + 48) = v29;
  swift_unownedRetain();
  sub_100016290(v40, &qword_1005968A0, &unk_100499050);
  *(v11 + qword_10059BC60) = a8;
  v32 = (v11 + qword_10059BC78);
  v33 = *(v11 + qword_10059BC78 + 8);
  *v32 = a9;
  v32[1] = a10;

  return v11;
}

uint64_t sub_1004405F4(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, char a8, uint64_t a9, uint64_t a10)
{
  v18 = *(v10 + 80);
  v19 = *(v10 + 88);
  v20 = _s17ResponderInstanceCMa_0();
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  swift_allocObject();
  return sub_10044038C(a1, a2 & 0xFFFFFFFFFFFFLL, a3, a4, a5, a6, a7, a8, a9, a10);
}

uint64_t sub_1004406A0@<X0>(unint64_t a1@<X0>, unsigned __int8 a2@<W3>, char a3@<W4>, uint64_t a4@<X5>, int a5@<W6>, uint64_t a6@<X7>, _OWORD *a7@<X8>)
{
  v14 = a2;
  v15 = *(*(sub_10005DC58(&unk_100595C50, &unk_1004AFD20) - 8) + 64);
  __chkstk_darwin();
  v17 = &v57 - v16;
  v59 = a7;
  if (v14)
  {
    if (a3 == 14)
    {
      v18 = 0;
    }

    else
    {
      v18 = a3;
    }

    static NANAttribute.PairingBootstrapping.rejectedResponse(dialogToken:method:reason:)(0, a5, v18, &v61);
  }

  else
  {
    swift_beginAccess();
    result = *(a4 + 16);
    if ((result & 0xFF0000) == 0xE0000)
    {
      __break(1u);
      return result;
    }

    static NANAttribute.PairingBootstrapping.response(dialogToken:method:)(result, a5, &v61);
  }

  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    HIDWORD(v57) = a5;
    v23 = v22;
    v60[0] = swift_slowAlloc();
    *v23 = 136315906;

    v24 = sub_10043FE54();
    v58 = a1;
    v26 = v25;

    v27 = sub_100002320(v24, v26, v60);

    *(v23 + 4) = v27;
    *(v23 + 12) = 2080;
    if (a2)
    {
      v28 = 0x64657463656A6552;
    }

    else
    {
      v28 = 0x6465747065636341;
    }

    v29 = sub_100002320(v28, 0xE800000000000000, v60);

    *(v23 + 14) = v29;
    *(v23 + 22) = 2080;
    if (a3 == 14)
    {
      v30 = 0;
    }

    else
    {
      v30 = a3;
    }

    v31 = NANReasonCode.description.getter(v30);
    v33 = sub_100002320(v31, v32, v60);

    *(v23 + 24) = v33;
    a1 = v58;
    *(v23 + 32) = 512;
    *(v23 + 34) = WORD2(v57);
    _os_log_impl(&_mh_execute_header, v20, v21, "%s: sending: bootstrap response with status %s and reason %s method: %hu", v23, 0x24u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v34 = a1 >> 8;
  v35 = *(a6 + 16);
  swift_unownedRetainStrong();
  v36 = sub_10040CAE8();

  v37 = *(v36 + *(*v36 + 296));

  rawValue = NANGenericServiceProtocol.init()().attributes._rawValue;
  v39 = NANGenericServiceProtocol.AttributeFilter.all.unsafeMutableAddressor();
  v40 = NANServiceInfo.init(information:filter:)(rawValue, *v39);
  v42 = v41;
  v44 = v43;
  sub_10005DC58(&unk_100597530, &qword_100482F50);
  v45 = *(type metadata accessor for NANAttribute(0) - 8);
  v46 = *(v45 + 72);
  v47 = (*(v45 + 80) + 32) & ~*(v45 + 80);
  v48 = swift_allocObject();
  *(v48 + 16) = xmmword_100480F40;
  v49 = (v48 + v47);
  *(v49 + 26) = *&v62[10];
  v50 = *v62;
  *v49 = v61;
  v49[1] = v50;
  swift_storeEnumTagMultiPayload();
  v51 = *(a6 + 26);
  v52 = *(a6 + 24);
  v53 = *(a6 + 30);
  v54 = type metadata accessor for NANIdentityKey(0);
  (*(*(v54 - 8) + 56))(v17, 1, 1, v54);
  sub_10012A628(&v61, v60);
  sub_10036DE50(v40, v42, v44, v48, v52 | (v51 << 16), v34, v53, v17);

  sub_1000124C8(v42, v44);

  result = sub_100016290(v17, &unk_100595C50, &unk_1004AFD20);
  v55 = *v62;
  v56 = v59;
  *v59 = v61;
  v56[1] = v55;
  *(v56 + 26) = *&v62[10];
  return result;
}

uint64_t sub_100440B3C(uint64_t a1)
{
  v3 = a1 + 48;
  result = *(a1 + 48);
  v2 = *(v3 + 8);
  return result;
}

uint64_t sub_100440B44()
{
  v1 = v0;
  v2 = *v0;

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v18[0] = v6;
    *v5 = 136315138;
    v7 = sub_100433CA8();
    v9 = v8;

    v10 = sub_100002320(v7, v9, v18);

    *(v5 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "%s: sending authentication rejection", v5, 0xCu);
    sub_100002A00(v6);
  }

  else
  {
  }

  v11 = v1[2];
  swift_unownedRetainStrong();
  sub_10040DD50();

  v18[0] = 0x700010007;
  v18[1] = 0;
  v18[2] = 0;
  v18[3] = 2;
  v19 = 1;
  v12 = *(v1 + 26);
  v13 = *(v1 + 12);
  v14 = *TimeBitmap.Slot.FF.unsafeMutableAddressor();
  v15 = swift_allocObject();
  swift_weakInit();
  v16 = swift_allocObject();
  v16[2] = *(v2 + 80);
  v16[3] = *(v2 + 88);
  v16[4] = v15;

  sub_1003A8260(v18, v13 | (v12 << 16), 0, 0, 0x400, ((v14 << 8) | (v14 << 16) | (v14 << 24) | (v14 << 32) | (v14 << 40) | (v14 << 48) | (v14 << 56) | v14), 0, 3, 3000, sub_100443E1C, v16);
}

uint64_t sub_100440DD4()
{
  v1 = v0;
  v2 = *v0;

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v18[0] = v6;
    *v5 = 136315138;
    v7 = sub_10043FE54();
    v9 = v8;

    v10 = sub_100002320(v7, v9, v18);

    *(v5 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "%s: sending authentication rejection", v5, 0xCu);
    sub_100002A00(v6);
  }

  else
  {
  }

  v11 = v1[2];
  swift_unownedRetainStrong();
  sub_10040DD50();

  v18[0] = 0x700010007;
  v18[1] = 0;
  v18[2] = 0;
  v18[3] = 2;
  v19 = 1;
  v12 = *(v1 + 26);
  v13 = *(v1 + 12);
  v14 = *TimeBitmap.Slot.FF.unsafeMutableAddressor();
  v15 = swift_allocObject();
  swift_weakInit();
  v16 = swift_allocObject();
  v16[2] = *(v2 + 80);
  v16[3] = *(v2 + 88);
  v16[4] = v15;

  sub_1003A8260(v18, v13 | (v12 << 16), 0, 0, 0x400, ((v14 << 8) | (v14 << 16) | (v14 << 24) | (v14 << 32) | (v14 << 40) | (v14 << 48) | (v14 << 56) | v14), 0, 3, 3000, sub_1004439DC, v16);
}

uint64_t sub_100441064(uint64_t *a1, unint64_t a2, int a3, int a4, __int128 *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10)
{
  v11 = v10;
  v155 = a8;
  v156 = a7;
  v149 = a5;
  LODWORD(v153) = a4;
  LODWORD(v148) = a3;
  v150 = a9;
  v143 = a2 >> 8;
  v144 = a2 >> 16;
  v145 = a2 >> 24;
  v146 = HIDWORD(a2);
  v147 = a2 >> 40;
  v142 = *v10;
  v151 = type metadata accessor for Logger();
  v152 = *(v151 - 8);
  v15 = *(v152 + 64);
  __chkstk_darwin();
  v140 = &v127 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v139 = &v127 - v17;
  __chkstk_darwin();
  v132 = &v127 - v18;
  __chkstk_darwin();
  v131 = &v127 - v19;
  v20 = *(*(sub_10005DC58(&qword_10058BAD0, &qword_100480E18) - 8) + 64);
  __chkstk_darwin();
  v136 = (&v127 - v21);
  v22 = *(*(sub_10005DC58(&unk_100595C50, &unk_1004AFD20) - 8) + 64);
  __chkstk_darwin();
  v137 = &v127 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v138 = &v127 - v24;
  __chkstk_darwin();
  v141 = &v127 - v25;
  v26 = (type metadata accessor for NANPeer(0) - 8);
  v27 = *(*v26 + 64);
  __chkstk_darwin();
  v29 = &v127 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10[6] = 0x303030303030;
  v10[7] = 0xE600000000000000;
  v154 = qword_10059BC08;
  Logger.init(subsystem:category:)();
  *(v10 + qword_10059BC20) = 0;
  *(v10 + qword_10059BC30) = 0;
  *(v10 + qword_10059BC38) = 0;
  v30 = qword_10059BC40;
  v31 = type metadata accessor for NANPairedDeviceSharedAssociation(0);
  v32 = *(v31 - 8);
  v33 = *(v32 + 56);
  v135 = v30;
  v134 = v33;
  v133 = v32 + 56;
  v33((v11 + v30), 1, 1, v31);
  v34 = (v11 + qword_10059BC48);
  *v34 = 0;
  v34[1] = 0;
  type metadata accessor for P2PTimer();
  variable initialization expression of AWDLPeer.lastUpdated();
  v35 = qword_10059A950;
  *(v11 + qword_10059A950) = 0;
  v11[2] = a1;
  *(v11 + 24) = a2;
  *(v11 + 25) = v143;
  *(v11 + 26) = v144;
  *(v11 + 27) = v145;
  *(v11 + 28) = v146;
  *(v11 + 29) = v147;
  *(v11 + 30) = v153;
  *(v11 + 31) = v148;
  v11[4] = v149;
  v11[5] = a6;
  v148 = v31;
  *(v11 + 64) = *(v156 + *(v31 + 24));
  v36 = v11 + qword_10059BC28;
  *v36 = 0u;
  *(v36 + 1) = 0u;
  *(v36 + 2) = 0u;
  *(v36 + 3) = 0u;
  *(v36 + 4) = 0u;
  *(v36 + 5) = 0u;
  v149 = v36;
  *(v36 + 12) = 0;
  *(v11 + v35) = v155;
  *(v11 + qword_10059BC10) = 0;
  *(v11 + qword_10059BC18) = 0;
  v37 = v34[1];
  *v34 = v150;
  v34[1] = a10;
  swift_unownedRetain();

  swift_unknownObjectRetain();

  v150 = a2 & 0xFFFFFFFFFFFFLL;
  sub_10040CD68(a2 & 0xFFFFFFFFFFFFLL, v29);
  v38 = &v29[v26[23]];
  v40 = *v38;
  v39 = v38[1];
  v42 = v38[2];
  v41 = v38[3];
  sub_1003A4780(*v38, v39, v42, v41);
  sub_100023AD8(v29, type metadata accessor for NANPeer);
  if (v39 >> 60 == 15)
  {

    swift_unknownObjectRelease();

    v43 = v156;
    v44 = v151;
    v45 = v152;
LABEL_11:
    sub_100023AD8(v43, type metadata accessor for NANPairedDeviceSharedAssociation);
    v72 = v11[2];
    swift_unownedRelease();
    v73 = v11[5];

    v74 = v11[7];

    (*(v45 + 8))(v11 + v154, v44);
    v75 = v149[5];
    v161 = v149[4];
    v162 = v75;
    v163 = *(v149 + 12);
    v76 = v149[1];
    v157 = *v149;
    v158 = v76;
    v77 = v149[3];
    v159 = v149[2];
    v160 = v77;
    sub_100016290(&v157, &qword_1005968A0, &unk_100499050);
    v78 = *(v11 + qword_10059BC30);

    v79 = *(v11 + qword_10059BC38);

    sub_100016290(v11 + qword_10059BC40, &qword_10058BAD0, &qword_100480E18);
    v80 = *(v11 + qword_10059BC48 + 8);

    v81 = qword_10059A948;
    v82 = type metadata accessor for DispatchTime();
    (*(*(v82 - 8) + 8))(v11 + v81, v82);
    v83 = *(v11 + qword_10059A950);
    swift_unknownObjectRelease();
    v84 = *(v142 + 80);
    v85 = *(v142 + 88);
    _s17InitiatorInstanceCMa_0();
    v86 = *(*v11 + 48);
    v87 = *(*v11 + 52);
    swift_deallocPartialClassInstance();
    return 0;
  }

  v130 = a6;
  v143 = a10;
  v146 = v40;
  v147 = v39;
  v144 = v42;
  v145 = v41;
  v46 = *(*a1 + 768);
  swift_beginAccess();
  v47 = v141;
  sub_100012400(a1 + v46, v141, &unk_100595C50, &unk_1004AFD20);
  v48 = type metadata accessor for NANIdentityKey(0);
  v49 = *(*(v48 - 8) + 48);
  if (v49(v47, 1, v48) == 1)
  {

    sub_100016290(v47, &unk_100595C50, &unk_1004AFD20);
    v45 = v152;
    v50 = v139;
    v44 = v151;
    (*(v152 + 16))(v139, v11 + v154, v151);
    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      *v53 = 0;
      _os_log_impl(&_mh_execute_header, v51, v52, "Could not initialize NAN Pairing initiator, NIK is nil", v53, 2u);

      sub_1002E9FD4(v146, v147, v144, v145);
    }

    else
    {
      sub_1002E9FD4(v146, v147, v144, v145);
    }

    v71 = v156;
    swift_unknownObjectRelease();
    (*(v45 + 8))(v50, v44);
    v43 = v71;
    goto LABEL_11;
  }

  sub_100016290(v47, &unk_100595C50, &unk_1004AFD20);
  v54 = v138;
  sub_100012400(a1 + v46, v138, &unk_100595C50, &unk_1004AFD20);
  result = (v49)(v54, 1, v48);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {

    v56 = WiFiInterface.macAddress.getter();
    v139 = NANIdentityKey.generateIdentityResolutionAttribute(for:)(v56 & 0xFFFFFFFFFFFFLL);
    v141 = v57;
    v128 = v58;
    v129 = v59;
    sub_100023AD8(v54, type metadata accessor for NANIdentityKey);
    v60 = v156;
    v61 = v136;
    sub_100443DA8(v156, v136, type metadata accessor for NANPairedDeviceSharedAssociation);
    v62 = v148;
    v134(v61, 0, 1, v148);
    v63 = v135;
    swift_beginAccess();
    sub_1004424CC(v61, v11 + v63);
    swift_endAccess();
    LODWORD(v138) = *(v11 + 64);
    v64 = v60 + *(v62 + 28);
    v65 = *(v64 + 8);
    v136 = *v64;
    v66 = a1 + v46;
    v67 = v137;
    sub_100012400(v66, v137, &unk_100595C50, &unk_1004AFD20);
    result = (v49)(v67, 1, v48);
    if (result != 1)
    {

      v68 = *(v60 + *(v62 + 20));
      v69 = WiFiInterface.macAddress.getter();

      static NANPairing.authenticatedVerify(cipherSuite:pairingKey:initiatorIdentityKey:initiatorIdentityKeyNonce:responderIdentityKey:responderIdentityKeyNonce:baseAuthenticationKeyManagementSuite:initiatorAddress:responderAddress:publishID:)(v138, v136, v65, v67, v139, v141, v60, v146, &v157, v147, v68, v69 & 0xFFFFFFFFFFFFLL, v150, v153);
      v70 = v151;
      v153 = a1;
      sub_100023AD8(v67, type metadata accessor for NANIdentityKey);
      v88 = *(&v158 + 1);
      v89 = v159;
      sub_100031694(&v157, *(&v158 + 1));
      v90 = (*(v89 + 40))(v88, v89);
      v91 = v152;
      v137 = v90;
      v138 = v92;
      v148 = v93;
      v143 = v94;
      v95 = v11 + qword_10059A940;
      sub_10002B154(&v157, v11 + qword_10059A940);
      v95[82] = 1;
      v96 = v70;
      v97 = v131;
      v136 = *(v91 + 16);
      (v136)(v131, v11 + v154, v70);

      v98 = Logger.logObject.getter();
      v99 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v98, v99))
      {
        v101 = swift_slowAlloc();
        v102 = swift_slowAlloc();
        v164[0] = v102;
        *v101 = 136315138;
        v103 = sub_100433CA8();
        v105 = v104;

        v106 = sub_100002320(v103, v105, v164);

        *(v101 + 4) = v106;
        _os_log_impl(&_mh_execute_header, v98, v99, "%s: was started for pair verify", v101, 0xCu);
        sub_100002A00(v102);
        v107 = v152;

        v96 = v151;

        v108 = *(v107 + 8);
        v108(v131, v96);
      }

      else
      {

        v108 = *(v91 + 8);
        v108(v97, v70);
      }

      v109 = v132;
      (v136)(v132, v11 + v154, v96);

      v110 = Logger.logObject.getter();
      v111 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v110, v111))
      {
        v112 = v96;
        v113 = swift_slowAlloc();
        v114 = swift_slowAlloc();
        v164[0] = v114;
        *v113 = 136315138;
        v115 = sub_100433CA8();
        v117 = v116;

        v118 = sub_100002320(v115, v117, v164);

        *(v113 + 4) = v118;
        _os_log_impl(&_mh_execute_header, v110, v111, "%s: sending: authentication request", v113, 0xCu);
        sub_100002A00(v114);

        v108(v132, v112);
      }

      else
      {

        v108(v109, v96);
      }

      v119 = v141;
      v120 = v139;
      v121 = sub_10040DD50();
      v122 = v143;
      v123 = v137;
      v124 = v138;
      v164[0] = v137;
      v164[1] = v138;
      v164[2] = v148;
      v164[3] = v143;
      v165 = 1;
      sub_100143FBC(v137, v138, v148, v143);
      v125 = *TimeBitmap.Slot.FF.unsafeMutableAddressor();
      v153 = v121;
      sub_1003A8260(v164, v150, 0, 0, 0x400, ((v125 << 8) | (v125 << 16) | (v125 << 24) | (v125 << 32) | (v125 << 40) | (v125 << 48) | (v125 << 56) | v125), 0, 3, 3000, NANBitmap.Channel.operatingClass.getter, 0);
      v126 = v148;
      sub_1000B21F4(v123, v124, v148, v122);
      sub_1000B21F4(v123, v124, v126, v122);
      swift_unknownObjectRelease();

      sub_1002E9FD4(v146, v147, v144, v145);
      sub_1000124C8(v120, v119);
      sub_1000124C8(v128, v129);
      sub_100023AD8(v156, type metadata accessor for NANPairedDeviceSharedAssociation);
      sub_100002A00(&v157);
      return v11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100442420(uint64_t *a1, uint64_t a2, int a3, int a4, __int128 *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10)
{
  v18 = *(v10 + 80);
  v19 = *(v10 + 88);
  v20 = _s17InitiatorInstanceCMa_0();
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  swift_allocObject();
  return sub_100441064(a1, a2 & 0xFFFFFFFFFFFFLL, a3, a4, a5, a6, a7, a8, a9, a10);
}

uint64_t sub_1004424CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10005DC58(&qword_10058BAD0, &qword_100480E18);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10044253C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8, unsigned __int8 a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v13 = v12;
  LODWORD(v111) = a8;
  v108 = a7;
  v107 = a6;
  v106 = a5;
  v112 = a4;
  v113 = a3;
  v105 = a1;
  LODWORD(v109) = a9;
  v15 = a2 >> 8;
  v16 = a2 >> 16;
  v17 = a2 >> 24;
  v18 = HIDWORD(a2);
  v19 = a2 >> 40;
  v20 = *(*(sub_10005DC58(&unk_100595C50, &unk_1004AFD20) - 8) + 64);
  __chkstk_darwin();
  v104 = &v98 - v21;
  *(v12 + 48) = 0x303030303030;
  *(v12 + 56) = 0xE600000000000000;
  Logger.init(subsystem:category:)();
  *(v12 + qword_10059BC20) = 0;
  *(v12 + qword_10059BC30) = 0;
  *(v12 + qword_10059BC38) = 0;
  v22 = qword_10059BC40;
  v23 = type metadata accessor for NANPairedDeviceSharedAssociation(0);
  (*(*(v23 - 8) + 56))(v13 + v22, 1, 1, v23);
  v24 = (v13 + qword_10059BC48);
  *v24 = 0;
  v24[1] = 0;
  type metadata accessor for P2PTimer();
  variable initialization expression of AWDLPeer.lastUpdated();
  v25 = qword_10059A950;
  *(v13 + 16) = v105;
  v110 = a2;
  *(v13 + 24) = a2;
  v100 = v15;
  *(v13 + 25) = v15;
  v101 = v16;
  *(v13 + 26) = v16;
  v103 = v17;
  *(v13 + 27) = v17;
  v102 = v18;
  *(v13 + 28) = v18;
  v99 = v19;
  *(v13 + 29) = v19;
  *(v13 + 30) = v112;
  *(v13 + 31) = v113;
  v26 = v108;
  v27 = v107;
  *(v13 + 32) = v106;
  *(v13 + 40) = v27;
  *(v13 + 64) = v111;
  *(v13 + v25) = a11;
  v28 = v13 + qword_10059BC28;
  v29 = *(a12 + 80);
  *(v28 + 64) = *(a12 + 64);
  *(v28 + 80) = v29;
  *(v28 + 96) = *(a12 + 96);
  v30 = *(a12 + 16);
  *v28 = *a12;
  *(v28 + 16) = v30;
  v31 = *(a12 + 48);
  *(v28 + 32) = *(a12 + 32);
  *(v28 + 48) = v31;
  *(v13 + qword_10059BC10) = 0;
  *(v13 + qword_10059BC18) = 0;
  swift_unownedRetain();
  v111 = a11;
  swift_unknownObjectRetain();
  v32 = NANAttribute.PairingBootstrapping.Method.bootstrapHandshakeSkipped.unsafeMutableAddressor();
  v33 = 0;
  if (*v32 != v26)
  {
    v34 = sub_100033DA0();
    static FixedWidthInteger.random.getter(&type metadata for UInt8, v34, &v120);
    v33 = v120;
  }

  v35 = a10;
  static NANAttribute.PairingBootstrapping.request(dialogToken:method:)(v33, v26, &v118);
  v116 = v118;
  v117[0] = *v119;
  *(v117 + 10) = *&v119[10];
  v36 = *NANAttribute.PairingBootstrapping.Method.opportunistic.unsafeMutableAddressor();
  *&v115[33] = *(v117 + 10);
  *&v115[23] = v117[0];
  *&v115[7] = v116;
  v37 = v13 + qword_10059A940;
  *(v37 + 33) = *&v115[32];
  v38 = *v115;
  *(v37 + 17) = *&v115[16];
  v39 = v109 & 1;
  *v37 = v113;
  *(v37 + 49) = v115[48];
  *(v37 + 1) = v38;
  *(v37 + 50) = v39;
  *(v37 + 56) = v36 != v26;
  *(v37 + 64) = 0;
  *(v37 + 72) = 0;
  *(v37 + 80) = 0;
  *(v37 + 81) = 2;
  swift_retain_n();
  sub_10012A628(&v118, &v120);
  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v109 = a10;
    v43 = v42;
    v44 = swift_slowAlloc();
    *&v120 = v44;
    *v43 = 136315138;
    v45 = sub_100433CA8();
    v46 = v26;
    v48 = v47;

    v49 = sub_100002320(v45, v48, &v120);
    v26 = v46;

    *(v43 + 4) = v49;
    _os_log_impl(&_mh_execute_header, v40, v41, "%s: was started for pair setup", v43, 0xCu);
    sub_100002A00(v44);

    v35 = v109;
  }

  else
  {
  }

  if (*v32 == v26)
  {

    *&v120 = -60;
    v50 = sub_100086E78();
    v51 = RSSI.init<A>(_:)(&v120, &type metadata for Int, v50);
    sub_10005DC58(&unk_100597530, &qword_100482F50);
    v52 = *(type metadata accessor for NANAttribute(0) - 8);
    v53 = *(v52 + 72);
    v54 = (*(v52 + 80) + 32) & ~*(v52 + 80);
    v55 = swift_allocObject();
    *(v55 + 16) = xmmword_100480F40;
    v56 = (v55 + v54);
    static NANAttribute.PairingBootstrapping.response(dialogToken:method:)(v118, v26, &v120);
    v57 = *v121;
    *v56 = v120;
    v56[1] = v57;
    *(v56 + 26) = *&v121[10];
    swift_storeEnumTagMultiPayload();
    LOBYTE(v114[0]) = v113;
    BYTE1(v114[0]) = v112;
    BYTE2(v114[0]) = v110;
    BYTE3(v114[0]) = v100;
    BYTE4(v114[0]) = v101;
    BYTE5(v114[0]) = v103;
    BYTE6(v114[0]) = v102;
    HIBYTE(v114[0]) = v99;
    v114[1] = v51;
    v114[2] = v55;
    sub_100429AF8((v99 << 56) | (v102 << 48) | v113 | (v112 << 8) | (v110 << 16) & 0xFFFF000000FFFFFFLL | (v100 << 24) | (v101 << 32) & 0xFFFF00FFFFFFFFFFLL | (v103 << 40), v51, v55);
    swift_unknownObjectRelease();
    sub_1001440B0(&v118);
    sub_1003011F8(v114);
  }

  else
  {

    v58 = Logger.logObject.getter();
    v59 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v58, v59))
    {
      v60 = v35;
      v61 = swift_slowAlloc();
      v109 = swift_slowAlloc();
      v114[0] = v109;
      *v61 = 136315650;
      v62 = sub_100433CA8();
      v64 = v63;

      v65 = sub_100002320(v62, v64, v114);

      *(v61 + 4) = v65;
      *(v61 + 12) = 2080;

      v66 = NANGenericServiceProtocol.AttributeFilter.all.unsafeMutableAddressor();
      v67 = v60;
      v68 = NANServiceInfo.init(information:filter:)(v60, *v66);
      v70 = v69;
      v72 = v71;
      v73 = NANServiceInfo.genericServiceProtocol.getter(v68, v69, v71);
      sub_1000124C8(v70, v72);
      if (v73)
      {
        v74 = NANGenericServiceProtocol.textInfo.getter(v73);
        v76 = v75;
      }

      else
      {
        v74 = 0;
        v76 = 0xF000000000000000;
      }

      *&v120 = v74;
      *(&v120 + 1) = v76;
      sub_10005DC58(&unk_10059AB80, &qword_10049ED90);
      v77 = String.init<A>(describing:)();
      v79 = sub_100002320(v77, v78, v114);

      *(v61 + 14) = v79;
      *(v61 + 22) = 512;
      *(v61 + 24) = v26;
      _os_log_impl(&_mh_execute_header, v58, v59, "%s: sending: bootstrap request with SSI: %s with method %hu", v61, 0x1Au);
      swift_arrayDestroy();

      v35 = v67;
    }

    else
    {
    }

    v80 = *(v13 + 16);
    swift_unownedRetainStrong();
    v81 = sub_10040CAE8();

    v82 = *(v81 + *(*v81 + 296));

    v83 = NANGenericServiceProtocol.AttributeFilter.all.unsafeMutableAddressor();
    v84 = NANServiceInfo.init(information:filter:)(v35, *v83);
    v86 = v85;
    v88 = v87;
    sub_10005DC58(&unk_100597530, &qword_100482F50);
    v89 = *(type metadata accessor for NANAttribute(0) - 8);
    v90 = *(v89 + 72);
    v91 = (*(v89 + 80) + 32) & ~*(v89 + 80);
    v92 = swift_allocObject();
    *(v92 + 16) = xmmword_100480F40;
    v93 = (v92 + v91);
    *(v93 + 26) = *&v119[10];
    v94 = *v119;
    *v93 = v118;
    v93[1] = v94;
    swift_storeEnumTagMultiPayload();
    v95 = type metadata accessor for NANIdentityKey(0);
    v96 = v104;
    (*(*(v95 - 8) + 56))(v104, 1, 1, v95);
    sub_10012A628(&v118, &v120);
    sub_10036DE50(v84, v86, v88, v92, v110 & 0xFFFFFFFFFFFFLL, v112, v113, v96);

    sub_1000124C8(v86, v88);

    sub_1001440B0(&v118);
    swift_unknownObjectRelease();
    sub_100016290(v96, &unk_100595C50, &unk_1004AFD20);
  }

  return v13;
}

uint64_t sub_100442FF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8, unsigned __int8 a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v20 = *(v12 + 80);
  v21 = *(v12 + 88);
  v22 = _s17InitiatorInstanceCMa_0();
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  swift_allocObject();
  return sub_10044253C(a1, a2 & 0xFFFFFFFFFFFFLL, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
}

uint64_t sub_1004430B8(uint64_t a1, unint64_t a2, uint64_t a3, void *a4, uint64_t a5, void *a6)
{
  v45 = a6;
  v11 = type metadata accessor for SHA256();
  v41 = *(v11 - 8);
  v12 = *(v41 + 64);
  __chkstk_darwin();
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for SHA256Digest();
  v43 = *(v15 - 8);
  v44 = v15;
  v16 = *(v43 + 64);
  __chkstk_darwin();
  v40 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v42 = &v39 - v18;
  v19 = type metadata accessor for String.Encoding();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin();
  v23 = &v39 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = Data.hexString.getter(a1, a2);
  v47 = v24;

  v25._countAndFlagsBits = a3;
  v25._object = a4;
  String.append(_:)(v25);

  v26._countAndFlagsBits = a5;
  v26._object = v45;
  String.append(_:)(v26);

  static String.Encoding.utf8.getter();
  v27 = String.data(using:allowLossyConversion:)();
  v29 = v28;

  (*(v20 + 8))(v23, v19);
  if (v29 >> 60 == 15)
  {
    return 0x303030303030;
  }

  sub_100443AA0(&qword_10059AB90, &type metadata accessor for SHA256);
  dispatch thunk of HashFunction.init()();
  sub_10000AB0C(v27, v29);
  sub_1001FAF04(v27, v29);
  sub_100017554(v27, v29);
  v30 = v42;
  dispatch thunk of HashFunction.finalize()();
  (*(v41 + 8))(v14, v11);
  v32 = v43;
  v31 = v44;
  (*(v43 + 16))(v40, v30, v44);
  sub_100443AA0(qword_10059AB98, &type metadata accessor for SHA256Digest);
  v33 = dispatch thunk of Sequence._copyToContiguousArray()();
  if (*(v33 + 16) < 3uLL)
  {
    (*(v32 + 8))(v30, v31);
    sub_100017554(v27, v29);

    return 0x303030303030;
  }

  v35 = (*(v33 + 32) << 16) | (*(v33 + 33) << 8);
  v36 = *(v33 + 34);

  sub_10005DC58(&qword_100599FF0, &qword_100486D20);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_100480F40;
  *(v37 + 56) = &type metadata for UInt32;
  *(v37 + 64) = &protocol witness table for UInt32;
  *(v37 + 32) = (v35 | v36) - 1000000 * (((17592187 * (v35 | v36)) >> 32) >> 12);
  v38 = String.init(format:_:)();
  sub_100017554(v27, v29);
  (*(v32 + 8))(v30, v31);
  return v38;
}

uint64_t sub_100443570(uint64_t a1, uint64_t a2)
{
  v4 = sub_10005DC58(&qword_10058F4D0, &qword_100491AB0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1004435E0(uint64_t a1)
{
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (*(v4 + 80) + 152) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10030BDD0;

  return sub_10043F3C4(a1, v6, v7, v1 + 48, v1 + v5, v8);
}

uint64_t sub_1004437B4(uint64_t result, uint64_t a2, uint64_t a3, char a4, char a5)
{
  if (a5 == 1)
  {
    return sub_1000124C8(result, a2);
  }

  if (!a5)
  {
    return sub_1004437D0(result, a2, a3, a4);
  }

  return result;
}

uint64_t sub_1004437D0(uint64_t result, uint64_t a2, uint64_t a3, char a4)
{
  if ((a3 & 0x1000000000000000) == 0 || a4 != -1)
  {
    return sub_1000B21F4(result, a2, a3, a4);
  }

  return result;
}

unint64_t sub_1004437E8()
{
  result = qword_10059A6E0;
  if (!qword_10059A6E0)
  {
    sub_10005DD04(&unk_100597510, &qword_100495350);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10059A6E0);
  }

  return result;
}

uint64_t sub_10044384C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1004438B4(uint64_t a1)
{
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[6];
  v8 = v1[7];
  v9 = v1[8];
  v10 = v1[9];
  v11 = v1[10];
  v12 = v1 + ((*(v4 + 80) + 88) & ~*(v4 + 80));
  v13 = swift_task_alloc();
  *(v2 + 16) = v13;
  *v13 = v2;
  v13[1] = sub_10030BDD0;

  return sub_10043C708(a1, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_100443A60(uint64_t result, uint64_t a2, uint64_t a3, char a4, char a5)
{
  if (a5 == 1)
  {
    return sub_10000AB0C(result, a2);
  }

  if (!a5)
  {
    return sub_100443A7C(result, a2, a3, a4);
  }

  return result;
}

uint64_t sub_100443A7C(uint64_t result, uint64_t a2, uint64_t a3, char a4)
{
  if ((a3 & 0x1000000000000000) == 0 || a4 != -1)
  {
    return sub_100143FBC(result, a2, a3, a4);
  }

  return result;
}

void sub_100443A94(uint64_t a1, unint64_t a2)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[4];
  sub_100437024(a1, a2);
}

uint64_t sub_100443AA0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100443AE8()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_1004353A4();
}

uint64_t sub_100443AF4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_100443B84()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 152) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 2);
  swift_unknownObjectRelease();
  v7 = *(v0 + 7);

  v8 = *(v0 + 9);

  v9 = *(v0 + 14);

  v10 = *(v0 + 16);

  v11 = *(v0 + 18);

  (*(v2 + 8))(&v0[v4], v1);
  v12 = *&v0[v5];

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_100443C84(uint64_t a1)
{
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (*(v4 + 80) + 152) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1002CB380;

  return sub_100432A54(a1, v6, v7, v1 + 48, v1 + v5, v8);
}

uint64_t sub_100443DA8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_100443E10(char a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  sub_100430470(a1);
}

uint64_t sub_100443E70()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 88) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();

  v7 = *(v0 + 56);

  v8 = *(v0 + 64);

  v9 = *(v0 + 80);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100443F54(uint64_t a1)
{
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[6];
  v8 = v1[7];
  v9 = v1[8];
  v10 = v1[9];
  v11 = v1[10];
  v12 = v1 + ((*(v4 + 80) + 88) & ~*(v4 + 80));
  v13 = swift_task_alloc();
  *(v2 + 16) = v13;
  *v13 = v2;
  v13[1] = sub_1002CB380;

  return sub_10042E3B0(a1, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_10044407C()
{
  v1 = *(v0 + 32);

  sub_100002A00((v0 + 40));

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_1004440BC()
{
  v1 = v0[2];
  v2 = v0[3];
  return sub_10042C8F8(v0[4], (v0 + 5));
}

uint64_t sub_100444128(uint64_t a1, unint64_t a2)
{
  v3 = v2[2];
  v4 = v2[3];
  return sub_10042B730(a1, a2, v2[4], v2[5], v2[6], v2[7]);
}

uint64_t sub_100444138(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 26))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 25);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_100444180(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 26) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 26) = 0;
    }

    if (a2)
    {
      *(result + 25) = -a2;
    }
  }

  return result;
}

uint64_t sub_1004441C8(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
    *(result + 24) = 0;
  }

  *(result + 25) = a2;
  return result;
}

uint64_t sub_100444270()
{
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

uint64_t sub_100444298()
{
  v1 = *(v0 + 16);
  swift_unownedRelease();
  v2 = *(v0 + 24);
  swift_unownedRelease();

  return swift_deallocClassInstance();
}

char *sub_1004442F0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v48 = *(v6 - 8);
  v49 = v6;
  v7 = *(v48 + 64);
  __chkstk_darwin();
  v47 = v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for OS_dispatch_queue.Attributes();
  v9 = *(*(v46 - 8) + 64);
  __chkstk_darwin();
  v45[2] = v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*(type metadata accessor for DispatchQoS() - 8) + 64);
  __chkstk_darwin();
  v45[1] = v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC12wifip2pdCore9XPCServer_lock;
  type metadata accessor for Lock();
  swift_allocObject();
  *&v2[v13] = Lock.init()();
  *&v2[OBJC_IVAR____TtC12wifip2pdCore9XPCServer_gracePeriodEndedTimer] = 0;
  *&v2[OBJC_IVAR____TtC12wifip2pdCore9XPCServer_pendingSessions] = _swiftEmptyArrayStorage;
  v14 = &v2[OBJC_IVAR____TtC12wifip2pdCore9XPCServer_lastProcessName];
  *v14 = 0;
  *(v14 + 1) = 0;
  v15 = &v2[OBJC_IVAR____TtC12wifip2pdCore9XPCServer_lastProcessID];
  *v15 = 0;
  v15[4] = 1;
  *&v2[OBJC_IVAR____TtC12wifip2pdCore9XPCServer_unlockObserver] = -1;
  v16 = OBJC_IVAR____TtC12wifip2pdCore9XPCServer_newSessionGracePeriod;
  *&v2[OBJC_IVAR____TtC12wifip2pdCore9XPCServer_newSessionGracePeriod] = 60;
  v17 = enum case for DispatchTimeInterval.seconds(_:);
  v18 = type metadata accessor for DispatchTimeInterval();
  (*(*(v18 - 8) + 104))(&v3[v16], v17, v18);
  v19 = &v3[OBJC_IVAR____TtC12wifip2pdCore9XPCServer_newSessionHandler];
  *v19 = 0;
  *(v19 + 1) = 0;
  type metadata accessor for P2PTimer();
  variable initialization expression of AWDLPeer.lastUpdated();
  Logger.init(subsystem:category:)();
  v20 = objc_allocWithZone(NSXPCListener);
  v21 = String._bridgeToObjectiveC()();
  v22 = [v20 initWithMachServiceName:v21];

  *&v3[OBJC_IVAR____TtC12wifip2pdCore9XPCServer_listener] = v22;
  v23 = objc_opt_self();
  v24 = [v23 anonymousListener];
  *&v3[OBJC_IVAR____TtC12wifip2pdCore9XPCServer_p2pListener] = v24;
  v25 = [v23 anonymousListener];
  *&v3[OBJC_IVAR____TtC12wifip2pdCore9XPCServer_awdlListener] = v25;
  v26 = [v23 anonymousListener];
  *&v3[OBJC_IVAR____TtC12wifip2pdCore9XPCServer_nanListener] = v26;
  v27 = &v3[OBJC_IVAR____TtC12wifip2pdCore9XPCServer_entitlement];
  *v27 = a1;
  *(v27 + 1) = a2;
  sub_10005DC58(&qword_100595370, &qword_1004AF240);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_100480F40;
  *(v28 + 32) = a1;
  *(v28 + 40) = a2;
  type metadata accessor for WiFiAwareEntitlementsManager();
  v29 = swift_allocObject();
  *(v29 + 16) = v28;
  *&v3[OBJC_IVAR____TtC12wifip2pdCore9XPCServer_wifiAwareEntitlementsManager] = v29;
  v30 = type metadata accessor for XPCServer();
  v51.receiver = v3;
  v51.super_class = v30;

  v31 = objc_msgSendSuper2(&v51, "init");
  v32 = OBJC_IVAR____TtC12wifip2pdCore9XPCServer_listener;
  v33 = *&v31[OBJC_IVAR____TtC12wifip2pdCore9XPCServer_listener];
  v45[0] = sub_100018AB4(0, &qword_10058AC60, OS_dispatch_queue_ptr);
  v34 = v31;
  v35 = v33;
  static DispatchQoS.unspecified.getter();
  v50 = _swiftEmptyArrayStorage;
  sub_100445A28(&qword_10058AC68, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_10005DC58(&qword_10058AC70, &qword_1004AE1F0);
  sub_10000CB24(&qword_10058AC78, &qword_10058AC70, &qword_1004AE1F0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v48 + 104))(v47, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v49);
  v36 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  [v35 _setQueue:v36];

  [*&v31[v32] setDelegate:v34];
  v37 = OBJC_IVAR____TtC12wifip2pdCore9XPCServer_p2pListener;
  v38 = *&v34[OBJC_IVAR____TtC12wifip2pdCore9XPCServer_p2pListener];
  [v38 _setQueue:*OS_dispatch_queue.p2p.unsafeMutableAddressor()];

  [*&v34[v37] setDelegate:v34];
  v39 = OBJC_IVAR____TtC12wifip2pdCore9XPCServer_awdlListener;
  v40 = *&v34[OBJC_IVAR____TtC12wifip2pdCore9XPCServer_awdlListener];
  [v40 _setQueue:*OS_dispatch_queue.awdl.unsafeMutableAddressor()];

  [*&v34[v39] setDelegate:v34];
  v41 = OBJC_IVAR____TtC12wifip2pdCore9XPCServer_nanListener;
  v42 = *&v34[OBJC_IVAR____TtC12wifip2pdCore9XPCServer_nanListener];
  [v42 _setQueue:*OS_dispatch_queue.nan.unsafeMutableAddressor()];

  v43 = *&v34[v41];
  [v43 setDelegate:v34];

  return v34;
}

void sub_100444900(uint64_t a1, uint64_t a2)
{
  v40 = a1;
  v41 = a2;
  v39 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v39 - 8);
  v4 = v3[8];
  __chkstk_darwin();
  v37 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for DispatchQoS();
  v6 = *(v38 - 8);
  v7 = *(v6 + 8);
  __chkstk_darwin();
  v36 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = *(v2 + OBJC_IVAR____TtC12wifip2pdCore9XPCServer_lock);
  Lock.lock()();
  v9 = *(v2 + OBJC_IVAR____TtC12wifip2pdCore9XPCServer_gracePeriodEndedTimer);
  *(v2 + OBJC_IVAR____TtC12wifip2pdCore9XPCServer_gracePeriodEndedTimer) = 0;

  v10 = OBJC_IVAR____TtC12wifip2pdCore9XPCServer_pendingSessions;
  swift_beginAccess();
  v11 = *(v2 + v10);
  v30 = v2;
  *(v2 + v10) = _swiftEmptyArrayStorage;
  if (v11 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v13 = 0;
    v35 = v11 & 0xC000000000000001;
    v34 = v11 & 0xFFFFFFFFFFFFFF8;
    v33 = v46;
    v32 = v3 + 1;
    v31 = (v6 + 8);
    while (1)
    {
      if (v35)
      {
        v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v13 >= *(v34 + 16))
        {
          goto LABEL_12;
        }

        v14 = *(v11 + 8 * v13 + 32);
      }

      v15 = v14;
      v16 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      v43 = *&v14[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_queue];
      v17 = swift_allocObject();
      v18 = v40;
      v19 = v41;
      v17[2] = v15;
      v17[3] = v18;
      v17[4] = v19;
      v46[2] = sub_100445A14;
      v46[3] = v17;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      v46[0] = sub_10000C8B8;
      v46[1] = &unk_10057B990;
      v3 = _Block_copy(aBlock);
      v42 = v15;

      v6 = v36;
      static DispatchQoS.unspecified.getter();
      v44 = _swiftEmptyArrayStorage;
      sub_100445A28(&qword_10058BCC0, &type metadata accessor for DispatchWorkItemFlags);
      sub_10005DC58(&unk_100595270, &unk_1004AEC80);
      sub_10000CB24(&qword_10058BCD0, &unk_100595270, &unk_1004AEC80);
      v20 = v37;
      v21 = i;
      v22 = v11;
      v23 = v39;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v3);
      v24 = v23;
      v11 = v22;
      i = v21;
      (*v32)(v20, v24);
      (*v31)(v6, v38);

      ++v13;
      if (v16 == v21)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

LABEL_14:

  v25 = (v30 + OBJC_IVAR____TtC12wifip2pdCore9XPCServer_newSessionHandler);
  v26 = *(v30 + OBJC_IVAR____TtC12wifip2pdCore9XPCServer_newSessionHandler);
  v27 = *(v30 + OBJC_IVAR____TtC12wifip2pdCore9XPCServer_newSessionHandler + 8);
  v28 = v41;
  *v25 = v40;
  v25[1] = v28;

  sub_100010520(v26);
  Lock.unlock()();
}

uint64_t sub_100444D90(void *a1, uint64_t (*a2)(id))
{
  v3 = a1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    *(v6 + 4) = v3;
    *v7 = v3;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v4, v5, "Resuming %@ after Wi-Fi is ready", v6, 0xCu);
    sub_100016290(v7, &qword_10058B780, &qword_100480AC0);
  }

  return a2(v3);
}

void sub_100444EB4()
{
  v1 = type metadata accessor for DispatchTimeInterval();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin();
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = &v24 - v6;
  __chkstk_darwin();
  v9 = &v24 - v8;
  (*(v2 + 16))(&v24 - v8, v0 + OBJC_IVAR____TtC12wifip2pdCore9XPCServer_newSessionGracePeriod, v1);
  v10 = *OS_dispatch_queue.p2p.unsafeMutableAddressor();
  v11 = *(v2 + 104);
  v11(v7, enum case for DispatchTimeInterval.never(_:), v1);
  v12 = swift_allocObject();
  *(v12 + 16) = v0;
  *v5 = 100;
  v11(v5, enum case for DispatchTimeInterval.milliseconds(_:), v1);
  v13 = type metadata accessor for P2PTimer();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  v16 = v10;
  v17 = v0;
  v18 = P2PTimer.init(deadlineAfter:on:repeating:leeway:_:)(v9, v16, v7, v5, sub_100445A20, v12);
  v19 = *&v17[OBJC_IVAR____TtC12wifip2pdCore9XPCServer_gracePeriodEndedTimer];
  *&v17[OBJC_IVAR____TtC12wifip2pdCore9XPCServer_gracePeriodEndedTimer] = v18;

  [*&v17[OBJC_IVAR____TtC12wifip2pdCore9XPCServer_listener] activate];
  [*&v17[OBJC_IVAR____TtC12wifip2pdCore9XPCServer_p2pListener] activate];
  [*&v17[OBJC_IVAR____TtC12wifip2pdCore9XPCServer_awdlListener] activate];
  [*&v17[OBJC_IVAR____TtC12wifip2pdCore9XPCServer_nanListener] activate];
  v20 = [objc_opt_self() wifiPeerToPeerAvailableNotification];
  notify_post(v20);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&_mh_execute_header, v21, v22, "Successfully started XPC server listening for new incoming client connections", v23, 2u);
  }
}

void sub_10044519C(uint64_t a1)
{
  v25[1] = *(a1 + OBJC_IVAR____TtC12wifip2pdCore9XPCServer_lock);
  Lock.lock()();
  v2 = *(a1 + OBJC_IVAR____TtC12wifip2pdCore9XPCServer_gracePeriodEndedTimer);
  *(a1 + OBJC_IVAR____TtC12wifip2pdCore9XPCServer_gracePeriodEndedTimer) = 0;

  v3 = OBJC_IVAR____TtC12wifip2pdCore9XPCServer_pendingSessions;
  v27 = OBJC_IVAR____TtC12wifip2pdCore9XPCServer_logger;
  *&v4 = 138412290;
  v26 = v4;
  while (1)
  {
    swift_beginAccess();
    v13 = *(a1 + v3);
    if (v13 >> 62)
    {
      if (v13 < 0)
      {
        v24 = *(a1 + v3);
      }

      if (!_CocoaArrayWrapper.endIndex.getter())
      {
LABEL_17:
        swift_endAccess();
        Lock.unlock()();
        return;
      }
    }

    else if (!*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_17;
    }

    isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
    *(a1 + v3) = v13;
    if (v13 >> 62 || (isUniquelyReferenced_nonNull_bridgeObject & 1) == 0)
    {
      v13 = sub_1004770C8(v13);
    }

    v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v15)
    {
      break;
    }

    v16 = v15 - 1;
    v17 = *((v13 & 0xFFFFFFFFFFFFFF8) + 8 * v16 + 0x20);
    *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) = v16;
    *(a1 + v3) = v13;
    swift_endAccess();
    v18 = v17;
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v21 = v26;
      *(v21 + 4) = v18;
      *v22 = v18;
      v23 = v18;
      _os_log_impl(&_mh_execute_header, v19, v20, "Rejecting XPC connection from %@ because there is no Wi-Fi", v21, 0xCu);
      sub_100016290(v22, &qword_10058B780, &qword_100480AC0);
    }

    memset(v30, 0, sizeof(v30));
    v5 = OBJC_IVAR____TtC12wifip2pdCore10XPCSession_connection;
    v6 = *&v18[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_connection];
    sub_1001B3C5C(v30, v28);
    v7 = v29;
    if (v29)
    {
      sub_100029B34(v28, v29);
      v8 = *(v7 - 8);
      v9 = *(v8 + 64);
      __chkstk_darwin();
      v11 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v8 + 16))(v11);
      v12 = _bridgeAnythingToObjectiveC<A>(_:)();
      (*(v8 + 8))(v11, v7);
      sub_100002A00(v28);
    }

    else
    {
      v12 = 0;
    }

    [v6 setExportedObject:v12];
    swift_unknownObjectRelease();
    sub_100016290(v30, &qword_10058BA80, &qword_1004818C0);
    [*&v18[v5] activate];
  }

  __break(1u);
}

id sub_100445510()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for XPCServer();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for XPCServer()
{
  result = qword_10059ACC0;
  if (!qword_10059ACC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100445744()
{
  result = type metadata accessor for DispatchTimeInterval();
  if (v1 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = type metadata accessor for DispatchTime();
    if (v2 <= 0x3F)
    {
      v5 = *(result - 8) + 64;
      result = type metadata accessor for Logger();
      if (v3 <= 0x3F)
      {
        v6 = *(result - 8) + 64;
        return swift_updateClassMetadata2();
      }
    }
  }

  return result;
}

void sub_1004458B0()
{
  if (MKBDeviceUnlockedSinceBoot() == 1)
  {
    v0 = [objc_opt_self() wifiPeerToPeerAvailableNotification];
    notify_post(v0);
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v2 = Strong;
      v3 = OBJC_IVAR____TtC12wifip2pdCore9XPCServer_unlockObserver;
      swift_beginAccess();
      v4 = *&v2[v3];
      if (v4 != -1)
      {
        notify_cancel(v4);
        *&v2[v3] = -1;
      }
    }
  }
}

void sub_10044595C(void *a1)
{
  v3[4] = NANBitmap.Channel.operatingClass.getter;
  v3[5] = 0;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 1107296256;
  v3[2] = sub_10000C8B8;
  v3[3] = &unk_10057B940;
  v2 = _Block_copy(v3);
  [a1 setInvalidationHandler:v2];
  _Block_release(v2);
}

uint64_t sub_100445A28(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100445A84()
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

uint64_t sub_100445B50()
{
  v1 = v0;
  v64 = *v0;
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  v70 = v1;
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Sending heart beat .......", v4, 2u);
  }

  v5 = *(v1 + qword_10059ADB8);
  *(v1 + qword_10059ADB8) = 0;

  v6.linkCondition._rawValue = NANMulticastLinkCondition.init()().linkCondition._rawValue;
  rawValue = v6.linkCondition._rawValue;
  v68 = qword_10059ADA8;
  v7 = *(v1 + qword_10059ADA8);
  v10 = *(v7 + 64);
  v9 = v7 + 64;
  v8 = v10;
  v11 = 1 << *(*(v1 + qword_10059ADA8) + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & v8;
  v67 = qword_10059ADB0;
  v14 = (v11 + 63) >> 6;
  v69 = *(v1 + qword_10059ADA8);

  v15 = 0;
  v65 = v9;
  v66 = v14;
  while (v13)
  {
LABEL_12:
    v17 = *(v1 + v68);
    if (!*(v17 + 16))
    {
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
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
      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      __break(1u);
LABEL_64:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }

    v18 = *(*(v69 + 48) + (__clz(__rbit64(v13)) | (v15 << 6)));
    v19 = *(v1 + v68);
    v20 = sub_10007CCC8(v18);
    if ((v21 & 1) == 0)
    {
      goto LABEL_49;
    }

    v22 = *(v17 + 56);
    NANMulticastStatsPerMCS.snr.getter(*(v22 + 32 * v20), *(v22 + 32 * v20 + 8), *(v22 + 32 * v20 + 16), *(v22 + 32 * v20 + 24));
    if ((v23 & 0x100) != 0)
    {
      goto LABEL_63;
    }

    v71 = v23;
    v24 = *(v1 + v67);
    if (*(v24 + 16))
    {
      v25 = sub_10007CCC8(v18);
      if (v26)
      {
        v27 = *(*(v24 + 56) + 32 * v25);
      }

      else
      {
        v27 = 0;
      }

      v28 = sub_10007CCC8(v18);
      if (v29)
      {
        v30 = *(*(v24 + 56) + 32 * v28 + 4);
        goto LABEL_23;
      }
    }

    else
    {
      v27 = 0;
    }

    v30 = 0;
LABEL_23:
    v31 = sub_10007CCC8(v18);
    if ((v32 & 1) == 0)
    {
      goto LABEL_50;
    }

    v33 = *(v22 + 32 * v31);
    v34 = sub_10007CCC8(v18);
    if ((v35 & 1) == 0)
    {
      goto LABEL_51;
    }

    v36 = *(v22 + 32 * v34 + 4);
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v38 = sub_10007CCC8(v18);
    v40 = rawValue[2];
    v41 = (v39 & 1) == 0;
    v42 = __OFADD__(v40, v41);
    v43 = v40 + v41;
    if (v42)
    {
      goto LABEL_52;
    }

    v44 = v39;
    if (rawValue[3] < v43)
    {
      sub_10018E13C(v43, isUniquelyReferenced_nonNull_native);
      v38 = sub_10007CCC8(v18);
      if ((v44 & 1) != (v45 & 1))
      {
        goto LABEL_64;
      }

LABEL_30:
      v6.linkCondition._rawValue = rawValue;
      if (v44)
      {
        goto LABEL_31;
      }

      goto LABEL_33;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_30;
    }

    v47 = v38;
    sub_100195EA4();
    v38 = v47;
    v6.linkCondition._rawValue = rawValue;
    if (v44)
    {
LABEL_31:
      v46 = *(v6.linkCondition._rawValue + 7) + 24 * v38;
      *v46 = v71;
      *(v46 + 4) = v27;
      *(v46 + 8) = v30;
      *(v46 + 12) = v33;
      *(v46 + 16) = v36;
      *(v46 + 20) = 0;
      goto LABEL_35;
    }

LABEL_33:
    *(v6.linkCondition._rawValue + (v38 >> 6) + 8) |= 1 << v38;
    *(*(v6.linkCondition._rawValue + 6) + v38) = v18;
    v48 = *(v6.linkCondition._rawValue + 7) + 24 * v38;
    *v48 = v71;
    *(v48 + 4) = v27;
    *(v48 + 8) = v30;
    *(v48 + 12) = v33;
    *(v48 + 16) = v36;
    *(v48 + 20) = 0;
    v49 = *(v6.linkCondition._rawValue + 2);
    v42 = __OFADD__(v49, 1);
    v50 = v49 + 1;
    if (v42)
    {
      goto LABEL_53;
    }

    *(v6.linkCondition._rawValue + 2) = v50;
LABEL_35:
    rawValue = v6.linkCondition._rawValue;
    swift_endAccess();
    v1 = v70;
    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      *v53 = 16778240;
      *(v53 + 4) = v18;
      *(v53 + 5) = 1024;
      if (!*(v6.linkCondition._rawValue + 2))
      {
        goto LABEL_54;
      }

      v54 = v53;
      v55 = sub_10007CCC8(v18);
      if ((v56 & 1) == 0)
      {
        goto LABEL_55;
      }

      *(v54 + 7) = *(*(v6.linkCondition._rawValue + 7) + 24 * v55 + 4);
      *(v54 + 11) = 1024;
      if (!*(v6.linkCondition._rawValue + 2))
      {
        goto LABEL_56;
      }

      v57 = sub_10007CCC8(v18);
      if ((v58 & 1) == 0)
      {
        goto LABEL_57;
      }

      *(v54 + 13) = *(*(v6.linkCondition._rawValue + 7) + 24 * v57 + 12);
      *(v54 + 17) = 256;
      if (!*(v6.linkCondition._rawValue + 2))
      {
        goto LABEL_58;
      }

      v59 = sub_10007CCC8(v18);
      if ((v60 & 1) == 0)
      {
        goto LABEL_59;
      }

      *(v54 + 19) = *(*(v6.linkCondition._rawValue + 7) + 24 * v59);
      _os_log_impl(&_mh_execute_header, v51, v52, "Sending MCS: %hhu, txPkts: %u, rxPkts: %u, snr: %hhu", v54, 0x14u);

      v1 = v70;
    }

    v13 &= v13 - 1;

    v9 = v65;
    v14 = v66;
  }

  while (1)
  {
    v16 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      __break(1u);
      goto LABEL_48;
    }

    if (v16 >= v14)
    {
      break;
    }

    v13 = *(v9 + 8 * v16);
    ++v15;
    if (v13)
    {
      v15 = v16;
      goto LABEL_12;
    }
  }

  swift_unknownObjectUnownedLoadStrong();

  v61 = TimeBitmap.multicastRxStatusOutOfBandActionFrameBitMap.unsafeMutableAddressor();
  (*(*(v64 + 88) + 40))(v6.linkCondition._rawValue, 1, *v61, *(v61 + 1), *(v61 + 2), 0, 3000, *(v64 + 80), *(v64 + 88));
  swift_unknownObjectRelease();

  v62 = (*(v1 + qword_10059ADC0) - *(v1 + qword_10059ADD0)) * 1000.0;
  if (COERCE__INT64(fabs(v62)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_60;
  }

  if (v62 <= -9.22337204e18)
  {
    goto LABEL_61;
  }

  if (v62 >= 9.22337204e18)
  {
    goto LABEL_62;
  }

  sub_10044648C(v62);
}

uint64_t sub_100446170()
{
  v1 = v0;
  v2 = *v0;
  v3 = type metadata accessor for DispatchTimeInterval();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = &v26 - v8;
  result = __chkstk_darwin();
  v12 = &v26 - v11;
  v13 = *(v1 + qword_10059ADC0);
  if (v13 < 0.0)
  {
    __break(1u);
    goto LABEL_10;
  }

  if ((*&v13 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  result = sub_1002EAD34(0x20000000000001uLL);
  v14 = v13 * vcvtd_n_f64_u64(result, 0x35uLL) + 0.0;
  if (result == 0x20000000000000)
  {
    v14 = v13;
  }

  *(v1 + qword_10059ADD0) = v14;
  v15 = v14 * 1000.0;
  if ((*&v15 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_11;
  }

  if (v15 <= -9.22337204e18)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v15 < 9.22337204e18)
  {
    *v12 = v15;
    v26 = v9;
    v16 = enum case for DispatchTimeInterval.milliseconds(_:);
    v17 = *(v4 + 104);
    v17(v12, enum case for DispatchTimeInterval.milliseconds(_:), v3);
    v27 = *OS_dispatch_queue.nan.unsafeMutableAddressor();
    v18 = swift_allocObject();
    swift_weakInit();
    v19 = swift_allocObject();
    v19[2] = *(v2 + 80);
    v19[3] = *(v2 + 88);
    v19[4] = v18;
    v20 = v26;
    v17(v26, enum case for DispatchTimeInterval.never(_:), v3);
    *v7 = 100;
    v17(v7, v16, v3);
    v21 = type metadata accessor for P2PTimer();
    v22 = *(v21 + 48);
    v23 = *(v21 + 52);
    swift_allocObject();
    v24 = P2PTimer.init(deadlineAfter:on:repeating:leeway:_:)(v12, v27, v20, v7, sub_1004473CC, v19);
    v25 = *(v1 + qword_10059ADB8);
    *(v1 + qword_10059ADB8) = v24;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_10044648C(void *a1)
{
  v2 = v1;
  v25 = *v1;
  v4 = type metadata accessor for DispatchTimeInterval();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = &v24 - v9;
  __chkstk_darwin();
  v12 = &v24 - v11;
  *(&v24 - v11) = a1;
  v13 = enum case for DispatchTimeInterval.milliseconds(_:);
  v14 = *(v5 + 104);
  v14(&v24 - v11, enum case for DispatchTimeInterval.milliseconds(_:), v4);
  v24 = *OS_dispatch_queue.nan.unsafeMutableAddressor();
  v15 = swift_allocObject();
  swift_weakInit();
  v16 = swift_allocObject();
  v17 = v25;
  v16[2] = *(v25 + 80);
  v16[3] = *(v17 + 88);
  v16[4] = v15;
  v14(v10, enum case for DispatchTimeInterval.never(_:), v4);
  *v8 = 100;
  v14(v8, v13, v4);
  v18 = type metadata accessor for P2PTimer();
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  v21 = P2PTimer.init(deadlineAfter:on:repeating:leeway:_:)(v12, v24, v10, v8, sub_100447398, v16);
  v22 = *(v2 + qword_10059ADB8);
  *(v2 + qword_10059ADB8) = v21;
}

uint64_t sub_1004466E8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    a4();
  }

  return result;
}

void sub_100446748(uint64_t a1, uint64_t a2)
{
  v3 = qword_10059BC90;
  if (*(v2 + qword_10059BC90) == a2)
  {
    v4 = *(v2 + qword_10059ADB0);
    *(v2 + qword_10059ADB0) = a1;

    sub_10044693C();
  }

  else
  {

    v6 = v2;
    oslog = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 134218240;
      *(v8 + 4) = a2;

      *(v8 + 12) = 2048;
      *(v8 + 14) = *(v6 + v3);

      _os_log_impl(&_mh_execute_header, oslog, v7, "Incoming Tx stats DW %ld does not match current DW %ld", v8, 0x16u);
    }

    else
    {
    }
  }
}

uint64_t sub_1004468DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + qword_10059BC90) = a2;
  *(v3 + qword_10059BC98) = a1;
  v4 = *(v3 + qword_10059ADA8);
  *(v3 + qword_10059ADA8) = a3;
}

void sub_10044693C()
{
  v1 = v0;
  v2 = 0;
  v3 = *(v0 + qword_10059ADB0);
  v4 = 1 << *(v3 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v3 + 64);
  v7 = qword_10059ADA8;
  v22 = qword_10059ADA0;
  v8 = (v4 + 63) >> 6;
  while (1)
  {
    if (!v6)
    {
      do
      {
        v18 = v2 + 1;
        if (__OFADD__(v2, 1))
        {
          __break(1u);
          goto LABEL_30;
        }

        if (v18 >= v8)
        {
          return;
        }

        v6 = *(v3 + 64 + 8 * v18);
        ++v2;
      }

      while (!v6);
      v2 = v18;
      if (*(v3 + 16))
      {
        goto LABEL_7;
      }

LABEL_20:
      __break(1u);
      return;
    }

    if (!*(v3 + 16))
    {
      goto LABEL_20;
    }

LABEL_7:
    v9 = *(*(v3 + 48) + (__clz(__rbit64(v6)) | (v2 << 6)));
    v10 = sub_10007CCC8(v9);
    if ((v11 & 1) == 0)
    {
LABEL_30:
      __break(1u);
      return;
    }

    v12 = *(*(v3 + 56) + 32 * v10);
    v13 = *(v1 + v7);
    if (!*(v13 + 16))
    {
      break;
    }

    v14 = sub_10007CCC8(v9);
    if ((v15 & 1) == 0)
    {
      break;
    }

    v6 &= v6 - 1;
    v16 = *(*(v13 + 56) + 32 * v14);
    if (v12)
    {
      v17 = v12 >= v16;
    }

    else
    {
      v17 = 0;
    }

    if (v17)
    {
      if (*(v1 + v22) < (v12 - v16) / v12)
      {
        goto LABEL_25;
      }
    }

    else if (*(v1 + v22) < 0.0)
    {
LABEL_25:

      goto LABEL_26;
    }
  }

  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 134218496;
    *(v21 + 4) = *(v1 + qword_10059BC90);

    *(v21 + 12) = 1024;
    *(v21 + 14) = v12;
    *(v21 + 18) = 256;
    *(v21 + 20) = v9;
    _os_log_impl(&_mh_execute_header, v19, v20, "Current DW %ld rxPackets 0 txPackets %u snr 0 with per 100 & mcs %hhu", v21, 0x15u);
  }

  else
  {
  }

LABEL_26:
  sub_100446BD0();
}

uint64_t sub_100446BD0()
{
  result = sub_1002EAD34(0x20000000000001uLL);
  if (result == 0x20000000000000 || vcvtd_n_f64_u64(result, 0x35uLL) >= 0.5)
  {
    v1 = TimeBitmap.multicastRxStatusOutOfBandActionFrameBitMap.unsafeMutableAddressor();
    v2 = *v1;
    v3 = v1[1];
    v4 = v1[2];

    return sub_100446C50(0, v2, v3, v4, 0);
  }

  return result;
}

uint64_t sub_100446C50(char a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v67 = *v5;
  v7 = *(v5 + qword_10059ADB8);
  *(v5 + qword_10059ADB8) = 0;

  rawValue = NANMulticastLinkCondition.init()().linkCondition._rawValue;
  v75 = qword_10059ADB0;
  v9 = *(v5 + qword_10059ADB0);
  v80 = rawValue;
  v10 = v9 + 64;
  v11 = 1 << *(v9 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(v9 + 64);
  v74 = qword_10059ADA8;
  v14 = (v11 + 63) >> 6;
  v76 = v9;

  v15 = 0;
  v77 = v6;
  v73 = v10;
  while (v13)
  {
LABEL_10:
    v17 = *(*(v76 + 48) + (__clz(__rbit64(v13)) | (v15 << 6)));
    v18 = *(v6 + v74);
    v19 = *(v18 + 16);
    if (!v19 || (v20 = *(v6 + v74), v21 = sub_10007CCC8(v17), (v22 & 1) == 0) || (NANMulticastStatsPerMCS.snr.getter(*(*(v18 + 56) + 32 * v21), *(*(v18 + 56) + 32 * v21 + 8), *(*(v18 + 56) + 32 * v21 + 16), *(*(v18 + 56) + 32 * v21 + 24)), v24 = v23, (v23 & 0x100) != 0))
    {
      v24 = 0;
    }

    v25 = *(v6 + v75);
    if (!*(v25 + 16))
    {
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
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
      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }

    v26 = sub_10007CCC8(v17);
    if ((v27 & 1) == 0)
    {
      goto LABEL_49;
    }

    v28 = *(v25 + 56);
    v29 = *(v28 + 32 * v26);
    v30 = sub_10007CCC8(v17);
    if ((v31 & 1) == 0)
    {
      goto LABEL_50;
    }

    v79 = *(v28 + 32 * v30 + 4);
    if (v19)
    {
      v32 = sub_10007CCC8(v17);
      if (v33)
      {
        v78 = *(*(v18 + 56) + 32 * v32);
      }

      else
      {
        v78 = 0;
      }

      v34 = sub_10007CCC8(v17);
      if (v35)
      {
        LODWORD(v19) = *(*(v18 + 56) + 32 * v34 + 4);
      }

      else
      {
        LODWORD(v19) = 0;
      }
    }

    else
    {
      v78 = 0;
    }

    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v37 = sub_10007CCC8(v17);
    v39 = v80[2];
    v40 = (v38 & 1) == 0;
    v41 = __OFADD__(v39, v40);
    v42 = v39 + v40;
    if (v41)
    {
      goto LABEL_51;
    }

    v43 = v38;
    if (v80[3] < v42)
    {
      sub_10018E13C(v42, isUniquelyReferenced_nonNull_native);
      v37 = sub_10007CCC8(v17);
      if ((v43 & 1) != (v44 & 1))
      {
        goto LABEL_62;
      }

LABEL_30:
      v45 = v80;
      if (v43)
      {
        goto LABEL_31;
      }

      goto LABEL_33;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_30;
    }

    v47 = v37;
    sub_100195EA4();
    v37 = v47;
    v45 = v80;
    if (v43)
    {
LABEL_31:
      v46 = v45[7] + 24 * v37;
      *v46 = v24;
      *(v46 + 4) = v29;
      *(v46 + 8) = v79;
      *(v46 + 12) = v78;
      *(v46 + 16) = v19;
      *(v46 + 20) = 0;
      goto LABEL_35;
    }

LABEL_33:
    v45[(v37 >> 6) + 8] |= 1 << v37;
    *(v45[6] + v37) = v17;
    v48 = v45[7] + 24 * v37;
    *v48 = v24;
    *(v48 + 4) = v29;
    *(v48 + 8) = v79;
    *(v48 + 12) = v78;
    *(v48 + 16) = v19;
    *(v48 + 20) = 0;
    v49 = v45[2];
    v41 = __OFADD__(v49, 1);
    v50 = v49 + 1;
    if (v41)
    {
      goto LABEL_52;
    }

    v45[2] = v50;
LABEL_35:
    v80 = v45;
    swift_endAccess();
    v6 = v77;
    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      *v53 = 16778240;
      *(v53 + 4) = v17;
      *(v53 + 5) = 1024;
      if (!v45[2])
      {
        goto LABEL_53;
      }

      v54 = v53;
      v55 = sub_10007CCC8(v17);
      if ((v56 & 1) == 0)
      {
        goto LABEL_54;
      }

      *(v54 + 7) = *(v45[7] + 24 * v55 + 4);
      *(v54 + 11) = 1024;
      if (!v45[2])
      {
        goto LABEL_55;
      }

      v57 = sub_10007CCC8(v17);
      if ((v58 & 1) == 0)
      {
        goto LABEL_56;
      }

      *(v54 + 13) = *(v45[7] + 24 * v57 + 12);
      *(v54 + 17) = 256;
      if (!v45[2])
      {
        goto LABEL_57;
      }

      v59 = sub_10007CCC8(v17);
      if ((v60 & 1) == 0)
      {
        goto LABEL_58;
      }

      *(v54 + 19) = *(v45[7] + 24 * v59);
      _os_log_impl(&_mh_execute_header, v51, v52, "Sending MCS: %hhu, txPkts: %u, rxPkts: %u, snr: %hhu", v54, 0x14u);

      v6 = v77;
    }

    v13 &= v13 - 1;

    v10 = v73;
  }

  while (1)
  {
    v16 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      __break(1u);
      goto LABEL_48;
    }

    if (v16 >= v14)
    {
      break;
    }

    v13 = *(v10 + 8 * v16);
    ++v15;
    if (v13)
    {
      v15 = v16;
      goto LABEL_10;
    }
  }

  swift_unknownObjectUnownedLoadStrong();
  v62 = *(v67 + 80);
  v61 = *(v67 + 88);
  v63 = *(v61 + 40);

  v63(v64, a1 & 1, a2, a3, a4, a5 & 1, 1000, v62, v61);
  swift_unknownObjectRelease();

  v65 = (*(v77 + qword_10059ADC0) - *(v77 + qword_10059ADD0)) * 1000.0;
  if (COERCE__INT64(fabs(v65)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_59;
  }

  if (v65 <= -9.22337204e18)
  {
    goto LABEL_60;
  }

  if (v65 >= 9.22337204e18)
  {
    goto LABEL_61;
  }

  sub_10044648C(v65);
}

uint64_t sub_10044721C()
{
  v1 = qword_10059AD90;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_unknownObjectUnownedDestroy();
  v3 = *(v0 + qword_10059ADA8);

  v4 = *(v0 + qword_10059ADB0);

  v5 = *(v0 + qword_10059ADB8);

  return v0;
}

uint64_t sub_1004472BC()
{
  sub_10044721C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_100447400()
{
  v1 = v0;
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 80);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v4 = type metadata accessor for Preferences();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v8 = &v16 - v7;
  Logger.init(subsystem:category:)();
  v9 = qword_10059ADA8;
  *(v0 + v9) = sub_100082094(_swiftEmptyArrayStorage);
  v10 = qword_10059ADB0;
  *(v0 + v10) = sub_100082094(_swiftEmptyArrayStorage);
  *(v0 + qword_10059ADB8) = 0;
  *(v0 + qword_10059ADC8) = 0x3FE0000000000000;
  *(v0 + qword_10059ADD0) = 0;
  *(v0 + qword_10059BC90) = 0;
  *(v0 + qword_10059BC98) = 0;
  swift_unknownObjectUnownedInit();
  v17 = v2;
  v11 = *(v2 + 24);
  v11(v3, v2);
  v12 = Preferences.multicastRateAdapterSettlingPER.getter(v4);
  v13 = *(v5 + 8);
  v13(v8, v4);
  *(v0 + qword_10059ADA0) = v12;
  v11(v3, v17);
  v14 = Preferences.multicastRateAdapterHeartBeatInterval.getter(v4);
  v13(v8, v4);
  *(v1 + qword_10059ADC0) = v14;
  sub_100446170();
  return v1;
}

uint64_t sub_1004476CC()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);
  v3 = type metadata accessor for LinkStatsAccumulator();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  return sub_100447400();
}

void sub_100447710()
{
  sub_100467318(319, qword_100596670, &type metadata accessor for DispatchTime);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    v3 = type metadata accessor for DispatchTime();
    if (v4 <= 0x3F)
    {
      v5 = *(v3 - 8) + 64;
      swift_initClassMetadata2();
    }
  }
}

uint64_t sub_1004478AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v7 = Hasher._finalize()();
  v8 = -1 << *(a3 + 32);
  v9 = v7 & ~v8;
  if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(a3 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_1004479A4(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    goto LABEL_11;
  }

  v3 = *(a2 + 40);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if ((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    while (1)
    {
      v8 = *(*(a2 + 48) + 8 * v6);
      v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v11 = v10;
      if (v9 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v11 == v12)
      {
        break;
      }

      v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v14 & 1) == 0)
      {
        v6 = (v6 + 1) & v7;
        if ((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
        {
          continue;
        }
      }

      return v14 & 1;
    }

    v14 = 1;
  }

  else
  {
LABEL_11:
    v14 = 0;
  }

  return v14 & 1;
}

BOOL sub_100447AF8(Swift::UInt a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v4 = *(a2 + 40);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  v5 = Hasher._finalize()();
  v6 = -1 << *(a2 + 32);
  v7 = v5 & ~v6;
  if (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
    return 0;
  }

  v8 = ~v6;
  do
  {
    v9 = *(*(a2 + 48) + 8 * v7);
    result = v9 == a1;
    if (v9 == a1)
    {
      break;
    }

    v7 = (v7 + 1) & v8;
  }

  while (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  return result;
}

BOOL sub_100447BC4(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v4 = *(a2 + 40);
  Hasher.init(_seed:)();
  NANClusterChangeEvent.hash(into:)(&v11, a1 & 0xFFFFFFFFFFFFLL);
  v5 = Hasher._finalize()();
  v6 = -1 << *(a2 + 32);
  v7 = v5 & ~v6;
  if ((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v6;
    do
    {
      v9 = static NANClusterChangeEvent.__derived_struct_equals(_:_:)(*(*(a2 + 48) + 6 * v7) | (*(*(a2 + 48) + 6 * v7 + 2) << 16), a1 & 0xFFFFFFFFFFFFLL);
      if (v9)
      {
        break;
      }

      v7 = (v7 + 1) & v8;
    }

    while (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  else
  {
    return 0;
  }

  return v9;
}

BOOL sub_100447CAC(uint64_t a1, uint64_t a2, __int16 a3, uint64_t a4)
{
  if (!*(a4 + 16))
  {
    return 0;
  }

  v8 = HIBYTE(a3);
  v9 = *(a4 + 40);
  Hasher.init(_seed:)();
  String.lowercased()();
  String.hash(into:)();

  String.hash(into:)();

  Hasher._combine(_:)(v8);
  v10 = Hasher._finalize()();
  v11 = -1 << *(a4 + 32);
  v12 = v10 & ~v11;
  if ((*(a4 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    do
    {
      v14 = *(a4 + 48) + 24 * v12;
      v15 = *v14;
      v16 = *(v14 + 8);
      v17 = *(v14 + 16) | (*(v14 + 17) << 8);

      v18 = static DNSRecords.Identifier.== infix(_:_:)(v15, v16, v17, a1, a2, a3 & 0xFF01);

      if (v18)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
    }

    while (((*(a4 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  else
  {
    return 0;
  }

  return v18;
}

BOOL sub_100447E24(unint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v4 = HIWORD(a1);
  v5 = HIDWORD(a1);
  v6 = a1 >> 24;
  v7 = *(a2 + 40);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  NANClusterChangeEvent.hash(into:)(&v15, (BYTE5(a1) << 32) & 0xFFFF00FF00000000 | (v4 << 40) | (v5 << 24) | (v6 << 16) | (BYTE2(a1) << 8) | BYTE1(a1));
  v8 = Hasher._finalize()();
  v9 = -1 << *(a2 + 32);
  v10 = v8 & ~v9;
  if ((*(a2 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    do
    {
      v12 = (*(a2 + 48) - v10 + 8 * v10);
      v13 = static NANPeerServiceIdentifier.__derived_struct_equals(_:_:)(*v12 | (*(v12 + 2) << 16) | (*(v12 + 3) << 24), (BYTE5(a1) << 40) | (BYTE6(a1) << 48) | (BYTE4(a1) << 32) | (BYTE3(a1) << 24) | (BYTE2(a1) << 16) | (BYTE1(a1) << 8) | a1);
      if (v13)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(a2 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  else
  {
    return 0;
  }

  return v13;
}

uint64_t sub_100447F80(uint64_t result, uint64_t a2, unint64_t a3)
{
  v9 = result;
  if (a3 >> 62)
  {
    goto LABEL_14;
  }

  v5 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5)
  {
    do
    {
      v6 = 0;
      while ((a3 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v8 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          goto LABEL_12;
        }

LABEL_7:
        v10 = v7;
        v9(&v10);
        result = swift_unknownObjectRelease();
        if (!v3)
        {
          ++v6;
          if (v8 != v5)
          {
            continue;
          }
        }

        return result;
      }

      if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v7 = *(a3 + 8 * v6 + 32);
      swift_unknownObjectRetain();
      v8 = v6 + 1;
      if (!__OFADD__(v6, 1))
      {
        goto LABEL_7;
      }

LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      result = _CocoaArrayWrapper.endIndex.getter();
      v5 = result;
    }

    while (result);
  }

  return result;
}

uint64_t sub_100448094(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v5 = result;
    for (i = (a3 + 56); ; i += 32)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;
      v11[0] = *(i - 3);
      v11[1] = v7;
      v11[2] = v8;
      v12 = v9;
      v10 = v11[0];
      sub_10000C060();
      v5(v11);
      if (v3)
      {
        break;
      }

      result = sub_100010500();
      if (!--v4)
      {
        return result;
      }
    }

    return sub_100010500();
  }

  return result;
}

uint64_t sub_100448174(void (*a1)(__int128 *), uint64_t a2, uint64_t a3)
{
  v6 = a3 + 64;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;

  v12 = 0;
  if (v9)
  {
    while (1)
    {
      v13 = v12;
LABEL_8:
      v14 = *(*(a3 + 56) + ((v13 << 10) | (16 * __clz(__rbit64(v9)))));

      a1(&v14);
      if (v3)
      {
        break;
      }

      v9 &= v9 - 1;

      v12 = v13;
      if (!v9)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v13 >= v10)
      {
      }

      v9 = *(v6 + 8 * v13);
      ++v12;
      if (v9)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1004482A8(uint64_t (*a1)(int *), uint64_t a2, uint64_t a3)
{
  v6 = a3 + 64;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;

  v12 = 0;
  if (v9)
  {
    while (1)
    {
      v13 = v12;
LABEL_8:
      v14 = __clz(__rbit64(v9)) | (v13 << 6);
      v15 = *(a3 + 48) + 6 * v14;
      v16 = *(v15 + 4);
      v17 = *(*(a3 + 56) + 8 * v14);
      v18 = *v15;
      v19 = v16;
      v20 = v17;
      result = a1(&v18);
      if (v3)
      {
      }

      v9 &= v9 - 1;
      v12 = v13;
      if (!v9)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v13 >= v10)
      {
      }

      v9 = *(v6 + 8 * v13);
      ++v12;
      if (v9)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1004483BC(uint64_t (*a1)(int *), uint64_t a2, uint64_t a3)
{
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;

  v12 = 0;
  if (v9)
  {
    while (1)
    {
      v13 = v12;
LABEL_8:
      v14 = __clz(__rbit64(v9));
      v15 = *(a3 + 48) - (v14 | (v13 << 6)) + 8 * (v14 | (v13 << 6));
      v16 = *(v15 + 4);
      v17 = *(v15 + 6);
      v18 = *v15;
      v19 = v16;
      v20 = v17;
      result = a1(&v18);
      if (v3)
      {
      }

      v9 &= v9 - 1;
      v12 = v13;
      if (!v9)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v13 >= v10)
      {
      }

      v9 = *(v6 + 8 * v13);
      ++v12;
      if (v9)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_1004484C8(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

uint64_t sub_100448534(void *a1)
{
  sub_100474D84(a1, 0, 1);
  if (v3)
  {
    return swift_willThrow();
  }

  v5 = *(*v1 + 576);
  swift_beginAccess();
  v6 = a1;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(v1 + v5) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + v5) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v7 = *((*(v1 + v5) & 0xFFFFFFFFFFFFFF8) + 0x10);
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  return sub_10004C128();
}

uint64_t sub_100448628(uint64_t a1)
{
  v3 = *(*v1 + 576);
  swift_beginAccess();
  v4 = *(v1 + v3);

  v5 = sub_10040A0B0(a1, v4);
  v7 = v6;

  if ((v7 & 1) == 0)
  {
    swift_beginAccess();
    v9 = sub_10044BF80(v5);
    swift_endAccess();

    return sub_10004C128();
  }

  return result;
}

void sub_1004486F8(void *a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = *(*(sub_10005DC58(&qword_10058F4D0, &qword_100491AB0) - 8) + 64);
  __chkstk_darwin();
  v7 = &v64 - v6;
  v8 = *(*(sub_10005DC58(&unk_100597330, &unk_100481FA0) - 8) + 64);
  __chkstk_darwin();
  v70 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v71 = &v64 - v10;
  v11 = type metadata accessor for DispatchTime();
  v72 = *(v11 - 8);
  v73 = v11;
  v12 = *(v72 + 64);
  __chkstk_darwin();
  v14 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v4[54];
  v16 = v4[55];
  v17 = type metadata accessor for AWDLInterface.AdditionalTrafficRegistrationInformation();
  v18 = type metadata accessor for Optional();
  v68 = *(v18 - 8);
  v69 = v18;
  v19 = *(v68 + 64);
  __chkstk_darwin();
  v67 = &v64 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v74 = &v64 - v21;
  v76 = v17;
  v75 = *(v17 - 8);
  v22 = *(v75 + 64);
  __chkstk_darwin();
  v24 = &v64 - v23;
  v25 = v4[73];
  swift_beginAccess();
  v26 = *(v2 + v25);
  if (*(v26 + 16))
  {
    v27 = *(v2 + v25);

    sub_1003E09E8(a1);
    if (v28)
    {
      v73 = *(v26 + 36);

      swift_beginAccess();
      sub_100018AB4(255, &qword_100595230, AWDLTrafficRegistrationConfiguration_ptr);
      sub_100047340(&qword_100595238, &qword_100595230, AWDLTrafficRegistrationConfiguration_ptr);
      v29 = v76;
      type metadata accessor for Dictionary();
      v30 = v24;
      Dictionary.remove(at:)();
      v31 = v78;
      swift_endAccess();

      sub_10004C128();
      v32 = v74;
      v33 = v75;
      (*(v75 + 16))(v74, v30, v29);
      (*(v33 + 56))(v32, 0, 1, v29);
      v78 = a1;
      swift_beginAccess();
      v34 = a1;
      Dictionary.subscript.setter();
      swift_endAccess();
      sub_10004C128();
      (*(v33 + 8))(v30, v29);
      return;
    }
  }

  v35 = v77;
  sub_100457398(a1, 1);
  if (!v35)
  {
    v36 = a1;
    v77 = 0;
    v37 = *(*v2 + 568);
    swift_beginAccess();
    v38 = *(v2 + v37);
    if (*(v38 + 16))
    {
      v39 = *(v2 + v37);

      v66 = v36;
      sub_1003E09E8(v36);
      if (v40)
      {
        v41 = *(v38 + 36);

        swift_beginAccess();
        sub_100018AB4(255, &qword_100595230, AWDLTrafficRegistrationConfiguration_ptr);
        sub_100047340(&qword_100595238, &qword_100595230, AWDLTrafficRegistrationConfiguration_ptr);
        v42 = v76;
        type metadata accessor for Dictionary();
        Dictionary.remove(at:)();
        v43 = v79;
        swift_endAccess();

        sub_10004C128();
        v44 = v75;
        v45 = v24;
        v46 = v74;
        (*(v75 + 16))(v74, v45, v42);
        (*(v44 + 56))(v46, 0, 1, v42);
        v47 = v66;
        v79 = v66;
        swift_beginAccess();
        v48 = v47;
        Dictionary.subscript.setter();
        swift_endAccess();
        sub_10004C128();
        (*(v44 + 8))(v45, v42);
        return;
      }
    }

    type metadata accessor for P2PTimer();
    v49 = v36;
    variable initialization expression of AWDLPeer.lastUpdated();
    v50 = v71;
    v51 = *(v72 + 56);
    v66 = (v72 + 56);
    v65 = v51;
    v51(v71, 1, 1, v73);
    v52 = type metadata accessor for UUID();
    (*(*(v52 - 8) + 56))(v7, 1, 1, v52);
    v53 = v74;
    sub_100453F54(v14, v50, v7, v74);
    v55 = v75;
    v54 = v76;
    (*(v75 + 56))(v53, 0, 1, v76);
    v79 = v49;
    swift_beginAccess();
    sub_100018AB4(255, &qword_100595230, AWDLTrafficRegistrationConfiguration_ptr);
    sub_100047340(&qword_100595238, &qword_100595230, AWDLTrafficRegistrationConfiguration_ptr);
    type metadata accessor for Dictionary();
    Dictionary.subscript.setter();
    swift_endAccess();
    sub_10004C128();
    v56 = [v49 uniqueIdentifier];
    LODWORD(v53) = AWDLTrafficRegistrationService.serviceType.getter();

    if (v53 == 2)
    {
      swift_beginAccess();
      v57 = *(v2 + v37);
      v79 = v49;
      v58 = v49;
      v59 = v67;
      Dictionary.subscript.getter();

      if ((*(v55 + 48))(v59, 1, v54))
      {
        (*(v68 + 8))(v59, v69);
        swift_endAccess();
        v60 = 1;
        v61 = v70;
        v62 = v73;
      }

      else
      {
        v62 = v73;
        v61 = v70;
        (*(v72 + 16))(v70, v59, v73);
        (*(v68 + 8))(v59, v69);
        swift_endAccess();
        v60 = 0;
      }

      v65(v61, v60, 1, v62);
      v63 = *(*v2 + 544);
      swift_beginAccess();
      sub_1000B1B78(v61, v2 + v63, &unk_100597330, &unk_100481FA0);
      swift_endAccess();
      *(v2 + *(*v2 + 528)) = 0;
      *(v2 + *(*v2 + 536)) = 2;
    }
  }
}

void sub_100449054(id a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = *(*(sub_10005DC58(&qword_10058F4D0, &qword_100491AB0) - 8) + 64);
  __chkstk_darwin();
  v207 = &v192 - v6;
  v7 = *(*(sub_10005DC58(&unk_100597330, &unk_100481FA0) - 8) + 64);
  __chkstk_darwin();
  v200 = &v192 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v206 = &v192 - v9;
  v209 = type metadata accessor for DispatchTime();
  v208 = *(v209 - 8);
  v10 = *(v208 + 64);
  __chkstk_darwin();
  v205 = &v192 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v4 + 440);
  v13 = *(v12 + 8);
  v14 = *(v4 + 432);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v198 = v13;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v204 = swift_getAssociatedTypeWitness();
  v203 = *(v204 - 8);
  v17 = *(v203 + 64);
  __chkstk_darwin();
  v202 = &v192 - v18;
  swift_getAssociatedTypeWitness();
  v224 = AssociatedTypeWitness;
  v225 = AssociatedConformanceWitness;
  swift_getAssociatedConformanceWitness();
  v19 = type metadata accessor for Preferences();
  v222 = *(v19 - 8);
  v223 = v19;
  v20 = *(v222 + 64);
  __chkstk_darwin();
  v221 = &v192 - v21;
  v216 = type metadata accessor for DispatchTimeInterval();
  v215 = *(v216 - 8);
  v22 = *(v215 + 64);
  __chkstk_darwin();
  v213 = (&v192 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v214 = (&v192 - v24);
  v210 = v12;
  v25 = type metadata accessor for AWDLInterface.AdditionalTrafficRegistrationInformation();
  v229 = type metadata accessor for Optional();
  v233 = *(v229 - 8);
  v26 = *(v233 + 64);
  __chkstk_darwin();
  v199 = &v192 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v201 = &v192 - v28;
  __chkstk_darwin();
  v227 = &v192 - v29;
  __chkstk_darwin();
  v228 = &v192 - v30;
  v230 = *(v25 - 8);
  v31 = *(v230 + 64);
  __chkstk_darwin();
  v218 = &v192 - v32;
  v33 = sub_100018AB4(255, &qword_100595230, AWDLTrafficRegistrationConfiguration_ptr);
  v231 = v25;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v217 = *(TupleTypeMetadata2 - 8);
  v35 = *(v217 + 64);
  __chkstk_darwin();
  v37 = (&v192 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v39 = &v192 - v38;
  v40 = [a1 peerAddress];
  v211 = WiFiMACAddress.wifiAddress.getter();

  v41 = *(*v2 + 584);
  swift_beginAccess();
  v232 = v2;
  v42 = *(v2 + v41);
  v43 = *(v42 + 16);
  v226 = v33;
  v212 = v14;
  if (v43)
  {

    v44 = sub_1003E09E8(a1);
    if (v45)
    {
      v46 = v44;
      v196 = *(v42 + 36);

      v47 = *(v232 + v41);
      v197 = a1;
      v48 = *(TupleTypeMetadata2 + 48);
      v195 = sub_100047340(&qword_100595238, &qword_100595230, AWDLTrafficRegistrationConfiguration_ptr);

      v49 = v231;
      Dictionary.subscript.getter();

      v220 = sub_100018AB4(0, &qword_100599470, NSObject_ptr);
      v50 = v217;
      (*(v217 + 16))(v37, v39, TupleTypeMetadata2);
      v51 = *v37;
      v193 = *(TupleTypeMetadata2 + 48);
      v52 = [v51 peerAddress];
      v194 = v46;
      v53 = v52;

      v54 = [v197 peerAddress];
      LODWORD(v220) = static NSObject.== infix(_:_:)();

      v55 = *(v230 + 8);
      v56 = v37 + v193;
      v57 = v232;
      v55(v56, v49);
      swift_beginAccess();
      type metadata accessor for Dictionary();
      v58 = v218;
      Dictionary.remove(at:)();
      v55(v58, v49);
      a1 = v197;
      v59 = v235;
      swift_endAccess();

      sub_10004C128();
      (*(v50 + 8))(v39, TupleTypeMetadata2);
      goto LABEL_6;
    }
  }

  LODWORD(v220) = 0;
  v57 = v232;
LABEL_6:
  v60 = v227;
  v61 = *(*v57 + 592);
  swift_beginAccess();
  v62 = *(v57 + v61);
  v235 = a1;
  v63 = sub_100047340(&qword_100595238, &qword_100595230, AWDLTrafficRegistrationConfiguration_ptr);
  v64 = a1;
  v65 = v231;
  Dictionary.subscript.getter();

  swift_endAccess();
  v66 = v230;
  v67 = *(v230 + 48);
  v68 = v67(v60, 1, v65);
  v227 = v67;
  v218 = v63;
  if (v68 == 1)
  {
    v69 = *(*v57 + 608);
    swift_beginAccess();
    v70 = *(v57 + v69);
    v235 = v64;
    v71 = v64;
    v72 = v228;
    v67 = v227;
    Dictionary.subscript.getter();

    swift_endAccess();
    if (v67(v60, 1, v65) != 1)
    {
      (*(v233 + 8))(v60, v229);
    }
  }

  else
  {
    v73 = v228;
    (*(v66 + 32))(v228, v60, v65);
    v74 = v66;
    v72 = v73;
    (*(v74 + 56))(v73, 0, 1, v65);
  }

  v75 = v67(v72, 1, v65);
  v76 = *(v233 + 8);
  v233 += 8;
  v228 = v76;
  (v76)(v72, v229);
  if (v75 == 1)
  {
    if ((v220 & 1) == 0)
    {
      goto LABEL_16;
    }

    v77 = v214;
    sub_100046F00(v214);
    v78 = v213;
    *v213 = 15;
    v79 = v215;
    v80 = v216;
    (*(v215 + 104))(v78, enum case for DispatchTimeInterval.seconds(_:), v216);
    v81 = static DispatchTimeInterval.< infix(_:_:)();
    v82 = *(v79 + 8);
    v82(v78, v80);
    v82(v77, v80);
    if (v81)
    {
      v83 = *(*v57 + 160);
      v84 = v64;
      v85 = Logger.logObject.getter();
      v86 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v85, v86))
      {
        v87 = swift_slowAlloc();
        v234 = swift_slowAlloc();
        *v87 = 136315394;
        v88 = [v84 uniqueIdentifier];
        v89 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v91 = v90;

        v92 = sub_100002320(v89, v91, &v234);

        *(v87 + 4) = v92;
        *(v87 + 12) = 2080;
        v93 = WiFiAddress.description.getter(v211 & 0xFFFFFFFFFFFFLL);
        v95 = sub_100002320(v93, v94, &v234);

        *(v87 + 14) = v95;
        _os_log_impl(&_mh_execute_header, v85, v86, "Bypass conflict check traffic registration %s to %s for watchdog recovery", v87, 0x16u);
        swift_arrayDestroy();
      }

      v57 = v232;
    }

    else
    {
LABEL_16:
      sub_100474D84(v64, 1, 1);
      if (v96)
      {
        goto LABEL_29;
      }
    }
  }

  v97 = [v64 uniqueIdentifier];
  v98 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v100 = v99;
  if (v98 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v100 == v101)
  {

LABEL_21:
    v103 = *(*v57 + 112);
    v104 = v225;
    v105 = *(v225 + 120);
    v106 = swift_checkMetadataState();
    v107 = v221;
    v105(v106, v104);
    v108 = v223;
    v109 = Preferences.edgeKitSupport.getter(v223);
    (*(v222 + 8))(v107, v108);
    if (v109)
    {
      goto LABEL_22;
    }

    v116 = v57 + *(*v57 + 160);
    v117 = Logger.logObject.getter();
    v118 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v117, v118))
    {
      v119 = swift_slowAlloc();
      *v119 = 0;
      _os_log_impl(&_mh_execute_header, v117, v118, "EdgeKit is not supported", v119, 2u);
    }

    sub_10000B02C();
    swift_allocError();
    *v120 = xmmword_1004817E0;
    *(v120 + 16) = 0;
LABEL_29:
    swift_willThrow();
    return;
  }

  v102 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v102)
  {
    goto LABEL_21;
  }

LABEL_22:
  v110 = v219;
  sub_100457398(v64, 1);
  if (v110)
  {
    return;
  }

  v111 = [v64 uniqueIdentifier];
  v112 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v114 = v113;
  if (v112 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v114 == v115)
  {

    return;
  }

  v121 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v121)
  {
    return;
  }

  v122 = [v64 uniqueIdentifier];
  v123 = AWDLTrafficRegistrationService.serviceType.getter();

  if (v123 == 2 && (v124 = *(*v57 + 624), (v125 = *(v57 + v124)) != 0))
  {
    v126 = *(v57 + v124);

    v127 = WiFiAddress.zero.unsafeMutableAddressor();
    v128 = v211;
    if (static WiFiAddress.!= infix(_:_:)(v211 & 0xFFFFFFFFFFFFLL, *v127 | (*(v127 + 1) << 16)))
    {
      v129 = WiFiAddress.ipv6LinkLocalAddress.getter(v128 & 0xFFFFFFFFFFFFLL);
      v131 = v130;
      v223 = v132;
      v134 = v133;
      v222 = (*(*v125 + 416))(&v234);
      v135 = type metadata accessor for WiFiInterface.NeighborDiscoveryTable();
      WiFiInterface.NeighborDiscoveryTable.postPeerPresence(macAddress:ipv6Address:)(v128 & 0xFFFFFFFFFFFFLL, v129, v131, v223, v134, v135);
      v223 = 0;
      (v222)(&v234, 0);

      v57 = v232;
    }

    else
    {
      v223 = 0;
    }
  }

  else
  {
    v223 = 0;
  }

  v136 = [v64 uniqueIdentifier];
  v137 = *(*v57 + 560);
  swift_beginAccess();
  sub_100159C80(&v235, v136);
  swift_endAccess();

  v138 = *(*v57 + 112);
  v222 = *(v225 + 152);
  swift_checkMetadataState();
  v139 = v202;
  (v222)();
  v140 = *(v57 + v137);
  v141 = v204;
  v142 = swift_getAssociatedConformanceWitness();
  v143 = *(v142 + 120);

  v143(v144, v141, v142);

  (*(v203 + 8))(v139, v141);
  v145 = type metadata accessor for P2PTimer();
  v146 = v64;
  v147 = v205;
  v225 = v145;
  variable initialization expression of AWDLPeer.lastUpdated();
  v148 = *(v208 + 56);
  v149 = v206;
  v224 = v208 + 56;
  v222 = v148;
  v148(v206, 1, 1, v209);
  v150 = type metadata accessor for UUID();
  v151 = v207;
  (*(*(v150 - 8) + 56))(v207, 1, 1, v150);
  v152 = v201;
  sub_100453F54(v147, v149, v151, v201);
  v153 = v231;
  (*(v230 + 56))(v152, 0, 1, v231);
  v235 = v146;
  v154 = *(*v57 + 568);
  swift_beginAccess();
  type metadata accessor for Dictionary();
  v155 = v146;
  Dictionary.subscript.setter();
  swift_endAccess();
  sub_10004C128();
  v156 = [v146 uniqueIdentifier];
  LODWORD(v140) = AWDLTrafficRegistrationService.serviceType.getter();

  if (v140 == 2)
  {
    v157 = v232;
    swift_beginAccess();
    v158 = *(v157 + v154);
    v235 = v146;
    v159 = v146;
    v160 = v199;
    Dictionary.subscript.getter();

    if ((v227)(v160, 1, v153))
    {
      (v228)(v160, v229);
      swift_endAccess();
      v161 = 1;
      v162 = v200;
      v163 = v209;
    }

    else
    {
      v162 = v200;
      v164 = v160;
      v165 = v160;
      v166 = v209;
      (*(v208 + 16))(v200, v164, v209);
      (v228)(v165, v229);
      swift_endAccess();
      v163 = v166;
      v161 = 0;
    }

    (v222)(v162, v161, 1, v163);
    v167 = v232;
    v168 = *(*v232 + 544);
    swift_beginAccess();
    sub_1000B1B78(v162, v167 + v168, &unk_100597330, &unk_100481FA0);
    swift_endAccess();
    *(v167 + *(*v167 + 528)) = 0;
    *(v167 + *(*v167 + 536)) = 2;
  }

  v169 = [v146 uniqueIdentifier];
  v170 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v172 = v171;
  if (v170 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v172 == v173)
  {

    v174 = v212;
  }

  else
  {
    v175 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v174 = v212;
    if ((v175 & 1) == 0)
    {
      goto LABEL_47;
    }
  }

  sub_10004D020();
  sub_100377818();

LABEL_47:
  v176 = [v155 uniqueIdentifier];
  v177 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v179 = v178;
  if (v177 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v179 == v180)
  {
  }

  else
  {
    v181 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v181 & 1) == 0)
    {
      return;
    }
  }

  v182 = v155;
  v183 = v214;
  *v214 = 5;
  v184 = v215;
  v185 = v216;
  (*(v215 + 104))(v183, enum case for DispatchTimeInterval.seconds(_:), v216);
  v186 = *OS_dispatch_queue.awdl.unsafeMutableAddressor();
  v187 = swift_allocObject();
  swift_weakInit();
  v188 = swift_allocObject();
  v189 = v210;
  v188[2] = v174;
  v188[3] = v189;
  v188[4] = v187;
  v188[5] = v182;
  v190 = v182;
  v191 = v186;

  static P2PTimer.async(after:on:execute:)(v183, v191, sub_1004767D4, v188);

  (*(v184 + 8))(v183, v185);
}

void sub_10044AB28(void *a1)
{
  v2 = v1;
  v4 = *(*(*v1 + 440) + 8);
  v5 = *(*v1 + 432);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v6 = swift_getAssociatedTypeWitness();
  v114 = *(v6 - 8);
  v115 = v6;
  v7 = *(v114 + 64);
  __chkstk_darwin();
  v109 = &v104 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v111 = &v104 - v9;
  v10 = *(*(sub_10005DC58(&qword_10058F4D0, &qword_100491AB0) - 8) + 64);
  __chkstk_darwin();
  v110 = &v104 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v118 = &v104 - v12;
  v13 = type metadata accessor for AWDLInterface.AdditionalTrafficRegistrationInformation();
  v14 = type metadata accessor for Optional();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin();
  v116 = &v104 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v19 = &v104 - v18;
  v121 = v13;
  v122 = *(v13 - 8);
  v20 = *(v122 + 64);
  __chkstk_darwin();
  v119 = &v104 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v120 = &v104 - v22;
  v124 = a1;
  v23 = [a1 uniqueIdentifier];
  v24 = AWDLTrafficRegistrationService.serviceType.getter();

  v117 = v14;
  if (v24 == 2 && (v25 = *(v2 + *(*v2 + 624))) != 0)
  {
    v107 = v19;
    v108 = v15;

    v26 = v124;
    v27 = [v124 peerAddress];
    v106 = WiFiMACAddress.wifiAddress.getter();

    v28 = [v26 peerAddress];
    v29 = WiFiMACAddress.wifiAddress.getter();

    v30 = v25;
    v31 = WiFiAddress.ipv6LinkLocalAddress.getter(v29 & 0xFFFFFFFFFFFFLL);
    v33 = v32;
    v35 = v34;
    v37 = v36;
    v38 = v30;
    v105 = (*(*v30 + 416))(v125);
    v39 = type metadata accessor for WiFiInterface.NeighborDiscoveryTable();
    v40 = v123;
    WiFiInterface.NeighborDiscoveryTable.postPeerAbsence(macAddress:ipv6Address:)(v106 & 0xFFFFFFFFFFFFLL, v31, v33, v35, v37, v39);
    v123 = v40;
    if (v40)
    {
      v105(v125, 1);

      v41 = *(*v2 + 160);

      v42 = v124;
      swift_errorRetain();
      v43 = Logger.logObject.getter();
      v44 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        v106 = swift_slowAlloc();
        v125[0] = swift_slowAlloc();
        *v45 = 136315650;
        v46 = [v42 peerAddress];
        v47 = WiFiMACAddress.wifiAddress.getter();

        v48 = WiFiAddress.description.getter(v47 & 0xFFFFFFFFFFFFLL);
        v50 = sub_100002320(v48, v49, v125);

        *(v45 + 4) = v50;
        *(v45 + 12) = 2080;
        v51 = (v38 + *(*v38 + 104));
        v53 = *v51;
        v52 = v51[1];

        v54 = sub_100002320(v53, v52, v125);

        *(v45 + 14) = v54;
        *(v45 + 22) = 2112;
        swift_errorRetain();
        v55 = _swift_stdlib_bridgeErrorToNSError();
        *(v45 + 24) = v55;
        v56 = v106;
        *v106 = v55;
        _os_log_impl(&_mh_execute_header, v43, v44, "Failed to clear peer %s on %s: %@", v45, 0x20u);
        sub_100016290(v56, &qword_10058B780, &qword_100480AC0);

        swift_arrayDestroy();
      }

      else
      {
      }

      v123 = 0;
    }

    else
    {
      v105(v125, 0);
    }

    v57 = v121;
    v15 = v108;
    v19 = v107;
  }

  else
  {
    v57 = v121;
  }

  sub_100464D4C(v124);
  v58 = *(v2 + *(*v2 + 784));
  v59 = v122;
  if (v58)
  {
    sub_100018AB4(0, &qword_100595230, AWDLTrafficRegistrationConfiguration_ptr);
    v60 = v124;
    v61 = v58;
    v62 = static NSObject.== infix(_:_:)();

    if (v62)
    {
      sub_1004601EC(v60);
    }
  }

  v126 = v124;
  v63 = *(*v2 + 584);
  swift_beginAccess();
  sub_100018AB4(255, &qword_100595230, AWDLTrafficRegistrationConfiguration_ptr);
  sub_100047340(&qword_100595238, &qword_100595230, AWDLTrafficRegistrationConfiguration_ptr);
  type metadata accessor for Dictionary();
  Dictionary.removeValue(forKey:)();
  swift_endAccess();
  sub_10004C128();
  v64 = *(v59 + 48);
  if (v64(v19, 1, v57) == 1)
  {
    v65 = *(v15 + 8);
    v66 = v117;
    v65(v19, v117);
    v126 = v124;
    v67 = *(*v2 + 568);
    swift_beginAccess();
    v68 = v116;
    Dictionary.removeValue(forKey:)();
    swift_endAccess();
    sub_10004C128();
    if (v64(v68, 1, v57) == 1)
    {
      v65(v68, v66);
    }

    else
    {
      v73 = v68;
      v74 = v122;
      v75 = v119;
      (*(v122 + 32))(v119, v73, v57);
      v76 = v75 + *(v57 + 40);
      v77 = v110;
      sub_100012400(v76, v110, &qword_10058F4D0, &qword_100491AB0);
      v78 = type metadata accessor for UUID();
      v79 = *(v78 - 8);
      if ((*(v79 + 48))(v77, 1, v78) == 1)
      {
        sub_100016290(v77, &qword_10058F4D0, &qword_100491AB0);
      }

      else
      {
        v91 = UUID.uuidString.getter();
        v93 = v92;
        (*(v79 + 8))(v77, v78);
        v94 = *(*v2 + 112);
        v95 = *(AssociatedConformanceWitness + 144);
        swift_checkMetadataState();
        v96 = v109;
        v95();
        v97 = v115;
        v98 = swift_getAssociatedConformanceWitness();
        v99 = (*(v98 + 8))(v97, v98);
        (*(v114 + 8))(v96, v97);
        if (v99)
        {
          sub_10005DC58(&qword_100595370, &qword_1004AF240);
          v100 = swift_allocObject();
          *(v100 + 16) = xmmword_100480F40;
          *(v100 + 32) = v91;
          *(v100 + 40) = v93;
          isa = Array._bridgeToObjectiveC()().super.isa;

          [v99 removeNotificationsWithIdentifiers:isa];

          swift_unknownObjectRelease();
        }

        else
        {
        }

        v57 = v121;
        v74 = v122;
      }

      v103 = v119;
      sub_1004657B4(v124, v119, 1);
      (*(v74 + 8))(v103, v57);
    }

    sub_100457398(v124, 0);
  }

  else
  {
    v69 = v120;
    (*(v59 + 32))(v120, v19, v57);
    v70 = v118;
    sub_100012400(v69 + *(v57 + 40), v118, &qword_10058F4D0, &qword_100491AB0);
    v71 = type metadata accessor for UUID();
    v72 = *(v71 - 8);
    if ((*(v72 + 48))(v70, 1, v71) == 1)
    {
      sub_100016290(v70, &qword_10058F4D0, &qword_100491AB0);
    }

    else
    {
      v80 = UUID.uuidString.getter();
      v82 = v81;
      (*(v72 + 8))(v70, v71);
      v83 = *(*v2 + 112);
      v84 = *(AssociatedConformanceWitness + 144);
      swift_checkMetadataState();
      v85 = v111;
      v84();
      v86 = v115;
      v87 = swift_getAssociatedConformanceWitness();
      v88 = (*(v87 + 8))(v86, v87);
      (*(v114 + 8))(v85, v86);
      if (v88)
      {
        sub_10005DC58(&qword_100595370, &qword_1004AF240);
        v89 = swift_allocObject();
        *(v89 + 16) = xmmword_100480F40;
        *(v89 + 32) = v80;
        *(v89 + 40) = v82;
        v90 = Array._bridgeToObjectiveC()().super.isa;

        [v88 removeNotificationsWithIdentifiers:v90];

        swift_unknownObjectRelease();
      }

      else
      {
      }

      v57 = v121;
      v59 = v122;
    }

    v102 = v120;
    sub_1004657B4(v124, v120, 1);
    (*(v59 + 8))(v102, v57);
  }
}

uint64_t sub_10044B904()
{
  v2 = *v0;
  v3 = *v0;
  v4 = *(*(*v0 + 440) + 8);
  v5 = *(*v0 + 432);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = *(v7 + 64);
  result = __chkstk_darwin();
  v11 = &v16 - v10;
  v12 = *(v2 + 768);
  if ((*(v0 + v12) & 1) == 0)
  {
    v13 = *(v3 + 96);
    swift_beginAccess();
    v14 = *(v7 + 16);
    v17 = v0;
    v14(v11, v0 + v13, AssociatedTypeWitness);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    (*(AssociatedConformanceWitness + 96))(2, AssociatedTypeWitness, AssociatedConformanceWitness);
    result = (*(v7 + 8))(v11, AssociatedTypeWitness);
    if (!v1)
    {
      *(v17 + v12) = 1;
    }
  }

  return result;
}

uint64_t sub_10044BB18()
{
  v2 = *v0;
  v3 = *v0;
  v4 = *(*(*v0 + 440) + 8);
  v5 = *(*v0 + 432);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = *(v7 + 64);
  result = __chkstk_darwin();
  v11 = &v16 - v10;
  v12 = *(v2 + 768);
  if (*(v0 + v12) == 1)
  {
    v13 = *(v3 + 96);
    swift_beginAccess();
    v14 = *(v7 + 16);
    v17 = v0;
    v14(v11, v0 + v13, AssociatedTypeWitness);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    (*(AssociatedConformanceWitness + 96))(0, AssociatedTypeWitness, AssociatedConformanceWitness);
    result = (*(v7 + 8))(v11, AssociatedTypeWitness);
    if (!v1)
    {
      *(v17 + v12) = 0;
    }
  }

  return result;
}

unint64_t sub_10044BD2C(void (*a1)(uint64_t *__return_ptr, _BYTE *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (!a4)
  {
    v9 = 0;
    goto LABEL_5;
  }

  *v12 = a3;
  *&v12[8] = a4;
  *&v12[16] = a5;
  *&v12[24] = a6;
  *&v12[28] = WORD2(a6);
  v13[0] = a3;
  v13[1] = a4;
  v13[2] = a5;
  v14 = a6;
  v15 = WORD2(a6);
  sub_100476778(v13, v11);
  a1(&v16, v12);
  if (!v6)
  {
    *v11 = *v12;
    *&v11[14] = *&v12[14];
    sub_100333B64(v11);
    v9 = v16 | (WORD2(v16) << 32);
LABEL_5:
    LOBYTE(v13[0]) = a4 == 0;
    return v9 | ((a4 == 0) << 48);
  }

  *v11 = *v12;
  *&v11[14] = *&v12[14];
  result = sub_100333B64(v11);
  __break(1u);
  return result;
}

uint64_t sub_10044BE18(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 49);
    do
    {
      v8 = *(v7 - 9);
      v9 = *v7;
      v10 = *(v7 - 1);
      v14[0] = *(v7 - 17);
      v14[1] = v8;
      v15 = v10;
      v16 = v9;

      v11 = a1(v14);

      if (v3)
      {
        break;
      }

      v7 += 24;
      v12 = v6-- == 0;
    }

    while (((v11 | v12) & 1) == 0);
  }

  else
  {
    LOBYTE(v11) = 0;
  }

  return v11 & 1;
}

uint64_t sub_10044BED8(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 32);
    v7 = v4 - 1;
    do
    {
      v12 = *v6;
      v8 = v12;
      v9 = a1(&v12);

      if (v3)
      {
        break;
      }

      v10 = v7-- == 0;
      ++v6;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_10044BF80(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || (v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
  {
    result = sub_10046EC5C(v3);
    v3 = result;
  }

  v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
    memmove(((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 32), ((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 40), 8 * (v5 - 1 - a1));
    *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) = v6;
    *v1 = v3;
    return v7;
  }

  return result;
}

uint64_t sub_10044C010@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  UUID.init()();
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = *(*v4 + 776);
  swift_beginAccess();

  v10 = *(v4 + v9);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(v4 + v9);
  *(v4 + v9) = 0x8000000000000000;
  sub_1003E1A88(sub_1000125A4, v8, a3, isUniquelyReferenced_nonNull_native);
  *(v4 + v9) = v13;
  return swift_endAccess();
}

uint64_t sub_10044C0F4(uint64_t a1)
{
  v2 = v1;
  v4 = *(*v1 + 776);
  swift_beginAccess();
  v5 = *(v1 + v4);
  v6 = sub_10002A440(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *(v2 + v4);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *(v2 + v4);
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_10046B638(&unk_10059B240, &unk_1004B0910);
    }

    v12 = *(v11 + 48);
    v13 = type metadata accessor for UUID();
    (*(*(v13 - 8) + 8))(v12 + *(*(v13 - 8) + 72) * v8, v13);
    v14 = *(*(v11 + 56) + 16 * v8 + 8);
    sub_1004685CC(v8, v11);
    *(v2 + v4) = v11;
  }

  return swift_endAccess();
}

uint64_t sub_10044C20C(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1003A7184(result, v11, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_10044C304()
{
  v1 = v0;
  v2 = *v0;
  v73 = sub_10005DC58(&unk_10059A6C0, &qword_1004AD478);
  v3 = *(*(v73 - 8) + 64);
  __chkstk_darwin();
  v72 = &v66 - v4;
  v5 = sub_10005DC58(&unk_10059B0C0, &unk_1004AD460);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin();
  v8 = &v66 - v7;
  v9 = *(v2[55] + 8);
  v10 = v2[54];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  v12 = v11[8];
  __chkstk_darwin();
  v14 = &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v16 = &v66 - v15;
  v17 = *&v1[v2[92]];
  swift_unownedRetainStrong();
  v18 = sub_10001A54C();

  if ((v18 & 1) != 0 && v1[*(*v1 + 512)] == 1)
  {
    v66 = v5;
    WiFiInterface.linkState.setter(1);
    v20 = *(*v1 + 96);
    swift_beginAccess();
    v21 = v11[2];
    v68 = v11 + 2;
    v69 = v20;
    v22 = AssociatedTypeWitness;
    v67 = v21;
    v21(v16, &v1[v20], AssociatedTypeWitness);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v24 = (*(AssociatedConformanceWitness + 48))(v22, AssociatedConformanceWitness);
    v70 = v11[1];
    v71 = v11 + 1;
    v70(v16, v22);
    v25 = WiFiInterface.linkState.getter();
    v26 = v14;
    if (v24 == 2 || ((v25 ^ v24) & 1) != 0)
    {
      v27 = &v1[*(*v1 + 160)];
      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        *v30 = 0;
        _os_log_impl(&_mh_execute_header, v28, v29, "Forcing new link state because of mismatch", v30, 2u);
      }

      WiFiInterface.$linkState.getter(v8);
      MutableDriverProperty.restore()();
      sub_100016290(v8, &unk_10059B0C0, &unk_1004AD460);
    }

    v31 = *(*v1 + 624);
    v32 = *&v1[v31];
    if (v32)
    {
      v33 = *(*v32 + 216);
      v34 = *&v1[v31];

      v33(1);
    }

    sub_10005DC58(&unk_10059B0B0, &qword_100487150);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_100480F40;
    v36 = WiFiInterface.macAddress.getter();
    *(v35 + 32) = WiFiAddress.ipv6LinkLocalAddress.getter(v36 & 0xFFFFFFFFFFFFLL);
    *(v35 + 40) = v37;
    *(v35 + 48) = v38;
    *(v35 + 56) = v39;
    WiFiInterface.ipv6Addresses.setter(v35);
    v40 = *&v1[v31];
    v41 = v70;
    if (v40)
    {
      v42 = *&v1[v31];

      v43 = WiFiInterface.ipv6Addresses.getter();
      (*(*v40 + 360))(v43);
    }

    v44 = AssociatedTypeWitness;
    v67(v26, &v1[v69], AssociatedTypeWitness);
    v45 = *(AssociatedConformanceWitness + 96);
    v46 = v45(v44, AssociatedConformanceWitness);
    v41(v26, v44);
    v47 = WiFiInterface.ipv6Addresses.getter();
    LOBYTE(v44) = sub_1000C02D8(v46, v47);

    if ((v44 & 1) == 0)
    {
      v48 = &v1[*(*v1 + 160)];
      v49 = Logger.logObject.getter();
      v50 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        *v51 = 0;
        _os_log_impl(&_mh_execute_header, v49, v50, "Forcing new IPv6 addresses because of mismatch", v51, 2u);
      }

      v52 = v72;
      WiFiInterface.$ipv6Addresses.getter(v72);
      MutableDriverProperty.restore()();
      sub_100016290(v52, &unk_10059A6C0, &qword_1004AD478);
    }

    v53 = *&v1[v31];
    if (v53)
    {
      v54 = *(*v53 + 168);
      v55 = *&v1[v31];

      v54(v56);

      v57 = AssociatedTypeWitness;
      v58 = v45(AssociatedTypeWitness, AssociatedConformanceWitness);
      v41(v26, v57);
      v59 = WiFiInterface.ipv6Addresses.getter();
      if (v58)
      {
        v60 = sub_1000C02D8(v58, v59);

        if (v60)
        {
          return result;
        }

        goto LABEL_22;
      }
    }

    else
    {
      WiFiInterface.ipv6Addresses.getter();
    }

LABEL_22:
    v61 = *&v1[v31];
    if (v61)
    {
      v62 = *(*v61 + 376);
      v63 = *&v1[v31];

      v65 = v72;
      v62(v64);

      MutableDriverProperty.restore()();
      return sub_100016290(v65, &unk_10059A6C0, &qword_1004AD478);
    }
  }

  return result;
}

char *sub_10044CA38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 48);
  v8 = *(v3 + 52);
  swift_allocObject();
  return sub_100450F20(a1, a2, a3);
}

uint64_t sub_10044CA8C()
{
  sub_10004D020();
  sub_100375A88();

  v1 = *(*v0 + 712);
  v2 = *(v0 + v1);
  sub_10044EF5C(0);
  *(v0 + v1) = 0;

  return sub_10044F8C8(v2);
}

void sub_10044CB04(char *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = type metadata accessor for DispatchPredicate();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin();
  v11 = (&v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = OS_dispatch_queue.awdl.unsafeMutableAddressor();
  v13 = *v12;
  *v11 = *v12;
  (*(v8 + 104))(v11, enum case for DispatchPredicate.onQueue(_:), v7);
  v14 = v13;
  LOBYTE(v13) = _dispatchPreconditionTest(_:)();
  (*(v8 + 8))(v11, v7);
  if ((v13 & 1) == 0)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v15 = *(*v3 + 472);
  swift_beginAccess();
  v16 = sub_10005DC58(&qword_10059B2A0, &qword_1004B4E20);
  IDPool.availableID()(v16, &v64);
  swift_endAccess();
  if (v65)
  {
    v17 = 4;
LABEL_27:
    sub_10000B02C();
    swift_allocError();
    *v60 = v17;
    *(v60 + 8) = 0;
    *(v60 + 16) = 1;
    swift_willThrow();
    return;
  }

  v18 = v64;
  v19 = [objc_opt_self() interfaceWithProtocol:&OBJC_PROTOCOL___WiFiP2PAWDLStateMonitorXPCDelegate];
  v20 = *&a1[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_connection];
  [v20 setRemoteObjectInterface:v19];

  v21 = a1;
  v22 = swift_allocObject();
  swift_weakInit();
  v23 = swift_allocObject();
  *(v23 + 2) = *(v6 + 432);
  *(v23 + 3) = *(v6 + 440);
  *(v23 + 4) = v22;
  *(v23 + 5) = a2;
  *(v23 + 6) = v18;
  v62 = v18;
  v63 = v21;
  v24 = &v21[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_invalidationHandler];
  v25 = *&v21[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_invalidationHandler];
  v26 = v24[1];
  *v24 = sub_100477008;
  v24[1] = v23;

  v61 = a2;
  sub_100010520(v25);

  v27 = [v20 remoteObjectProxy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_10005DC58(&qword_10059B2A8, &unk_1004B4E28);
  if (!swift_dynamicCast())
  {
    v17 = 2;
    goto LABEL_27;
  }

  v28 = v63;
  v29 = v64;
  v66[0] = v63;
  v66[1] = v64;
  v30 = v61;
  v66[2] = v61;
  v66[5] = v62;
  v31 = *(*v3 + 480);
  swift_beginAccess();
  type metadata accessor for AWDLInterface.StateMonitoringClient();
  type metadata accessor for Dictionary();
  v32 = v30;
  v33 = v28;
  swift_unknownObjectRetain();
  Dictionary.subscript.setter();
  swift_endAccess();
  v34 = *(*v3 + 160);
  v35 = v33;
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = v32;
    v40 = v29;
    v41 = swift_slowAlloc();
    *v38 = 138412290;
    *(v38 + 4) = v35;
    *v41 = v63;
    v42 = v35;
    _os_log_impl(&_mh_execute_header, v36, v37, "%@ is monitoring AWDL state information", v38, 0xCu);
    sub_100016290(v41, &qword_10058B780, &qword_100480AC0);
    v29 = v40;
    v32 = v39;
  }

  if ([v32 options])
  {
    v43 = sub_10044D224(0);
    if (v43)
    {
      v44 = v43;
      [v29 updatedAWDLState:v43];
    }
  }

  if (([v32 options] & 0x20) == 0)
  {
LABEL_17:
    if (([v32 options] & 4) != 0)
    {
      [v29 updatedRealtimeMode:*(v3 + *(*v3 + 488))];
    }

    v53 = [v32 servicesRequiringAvailabilityNotification];
    if (v53)
    {
      v54 = v53;
      type metadata accessor for AWDLTrafficRegistrationService(0);
      v55 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v56 = *(v55 + 16);
      if (v56)
      {
        v57 = 0;
        while (v57 < *(v55 + 16))
        {
          v58 = v57 + 1;
          v66[0] = *(v55 + 32 + 8 * v57);
          v59 = v66[0];
          sub_100466848(v66, v3, v35, v29);

          v57 = v58;
          if (v56 == v58)
          {
            goto LABEL_24;
          }
        }

        __break(1u);
        goto LABEL_29;
      }

LABEL_24:
    }

    swift_unknownObjectRelease();
    return;
  }

  v45 = *(v3 + *(*v3 + 496));
  v46 = j___s7CoreP2P15ChannelSequenceV8endIndexSivg(v45);
  if (!v46)
  {
LABEL_16:
    sub_100018AB4(0, &unk_100595DA0, WiFiChannel_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v29 channelSequenceChangedEvent:isa];

    goto LABEL_17;
  }

  v47 = v46;
  v62 = v32;
  v63 = v29;
  v66[0] = _swiftEmptyArrayStorage;

  specialized ContiguousArray.reserveCapacity(_:)();
  if ((v47 & 0x8000000000000000) == 0)
  {
    v48 = 0;
    do
    {
      v49 = v48 + 1;
      v50 = ChannelSequence.subscript.getter(v48, v45);
      Optional<A>.apiChannel.getter(v50 & 0xFFFFFFFFFFFFLL);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v51 = *(v66[0] + 2);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v48 = v49;
    }

    while (v47 != v49);

    v32 = v62;
    v29 = v63;
    goto LABEL_16;
  }

LABEL_30:
  __break(1u);
}

uint64_t sub_10044D224(char a1)
{
  v3 = *v1;
  v4 = *(*(*v1 + 440) + 8);
  v5 = *(*v1 + 432);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = v7[8];
  __chkstk_darwin();
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v12 = &v43 - v11;
  v13 = *(v3 + 96);
  swift_beginAccess();
  v14 = v7[2];
  v51 = v7 + 2;
  v52 = v13;
  v50 = v14;
  v14(v12, &v1[v13], AssociatedTypeWitness);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v43 = AssociatedConformanceWitness[6](AssociatedTypeWitness, AssociatedConformanceWitness);
  v44 = v16;
  v47 = v17;
  v18 = v7[1];
  v53 = v7 + 1;
  v49 = v18;
  v18(v12, AssociatedTypeWitness);
  v19 = &v1[*(*v1 + 104)];
  v20 = *v19;
  v45 = v19[1];
  v46 = v20;
  v21 = WiFiInterface.capabilities.getter();
  v22 = *WiFiDriverCapabilities.supportsAWDLSoloMode.unsafeMutableAddressor();
  v54 = v21;
  v55 = v22;
  sub_1000C2A14();

  v48 = dispatch thunk of SetAlgebra.isSuperset(of:)();

  if (a1)
  {
    v50(v10, &v1[v52], AssociatedTypeWitness);
    v23 = AssociatedConformanceWitness[7](AssociatedTypeWitness, AssociatedConformanceWitness);
    v49(v10, AssociatedTypeWitness);
    v24 = j___s7CoreP2P15ChannelSequenceV8endIndexSivg(v23);
    if (v24)
    {
      v25 = v24;
      v55 = _swiftEmptyArrayStorage;
      result = specialized ContiguousArray.reserveCapacity(_:)();
      if (v25 < 0)
      {
        __break(1u);
        return result;
      }

      v27 = 0;
      do
      {
        v28 = v27 + 1;
        v29 = ChannelSequence.subscript.getter(v27, v23);
        Optional<A>.apiChannel.getter(v29 & 0xFFFFFFFFFFFFLL);
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v30 = v55[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v27 = v28;
      }

      while (v25 != v28);
    }
  }

  if (v1[*(*v1 + 712)] == 1)
  {
    v31 = 1;
  }

  else
  {
    v31 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v32 = v47;

  v50(v12, &v1[v52], AssociatedTypeWitness);
  v33 = AssociatedConformanceWitness[5](AssociatedTypeWitness, AssociatedConformanceWitness);
  v49(v12, AssociatedTypeWitness);
  v34 = WiFiInterface.macAddress.getter();
  v35 = WiFiAddress.apiAddress.getter(v34 & 0xFFFFFFFFFFFFLL);
  v36 = Optional<A>.apiChannel.getter(v43 & 0xFFFFFFFFFFFFLL);
  v37 = Optional<A>.apiChannel.getter(v44 & 0xFFFFFFFFFFFFLL);
  v38 = Optional<A>.apiChannel.getter(v32 & 0xFFFFFFFFFFFFLL);
  v39 = objc_allocWithZone(WiFiP2PAWDLState);
  v40 = String._bridgeToObjectiveC()();
  sub_100018AB4(0, &unk_100595DA0, WiFiChannel_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v42 = [v39 initWithInterfaceName:v40 supportsSoloMode:v48 & 1 supportsDataTransfer:1 channelSequence:isa isEnabled:v31 & 1 substate:v33 macAddress:v35 peerMasterChannel:v36 peerPrimaryPreferredChannel:v37 peerSecondaryPreferredChannel:v38];

  return v42;
}

uint64_t sub_10044D734()
{
  __chkstk_darwin();
  v1 = v0;
  v2 = *v0;
  v3 = type metadata accessor for DispatchTimeInterval();
  v50 = *(v3 - 8);
  v51 = v3;
  v4 = *(v50 + 64);
  __chkstk_darwin();
  v49 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for DispatchTime();
  v6 = *(v52 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin();
  v47 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v48 = &v47 - v9;
  v10 = *(*(sub_10005DC58(&unk_100597330, &unk_100481FA0) - 8) + 64);
  __chkstk_darwin();
  v12 = &v47 - v11;
  v13 = *(v2[55] + 8);
  v14 = v2[54];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16 = *(AssociatedTypeWitness - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin();
  v19 = &v47 - v18;
  v20 = v2[12];
  swift_beginAccess();
  (*(v16 + 16))(v19, &v1[v20], AssociatedTypeWitness);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 160))(v58, AssociatedTypeWitness, AssociatedConformanceWitness);
  (*(v16 + 8))(v19, AssociatedTypeWitness);
  memcpy(v59, v58, sizeof(v59));
  if (sub_1000B242C(v59) == 1)
  {
    v22 = sub_1000827F8(_swiftEmptyArrayStorage);
  }

  else
  {
    memcpy(v60, v59, sizeof(v60));
    v22 = apple80211_awdl_low_latency_statistics.eventPayload()();
  }

  v57 = v22;
  v23 = *(*v1 + 544);
  swift_beginAccess();
  sub_100012400(&v1[v23], v12, &unk_100597330, &unk_100481FA0);
  v24 = v52;
  if ((*(v6 + 48))(v12, 1, v52) == 1)
  {
    v55 = 0u;
    v56 = 0u;
LABEL_8:
    sub_100016290(&v55, &qword_10058BA80, &qword_1004818C0);
    sub_10007F624(0xD000000000000019, 0x80000001004BC610, v54);
    sub_100016290(v54, &qword_10058BA80, &qword_1004818C0);
    v32 = v57;
    goto LABEL_9;
  }

  v25 = v48;
  (*(v6 + 32))(v48, v12, v24);
  type metadata accessor for P2PTimer();
  v26 = v47;
  variable initialization expression of AWDLPeer.lastUpdated();
  v27 = v49;
  DispatchTime.distance(to:)();
  v28 = *(v6 + 8);
  v28(v26, v24);
  v29 = DispatchTimeInterval.rawSeconds.getter();
  (*(v50 + 8))(v27, v51);
  *(&v56 + 1) = &type metadata for Int;
  *&v55 = v29;
  v28(v25, v24);
  if (!*(&v56 + 1))
  {
    goto LABEL_8;
  }

  sub_100085188(&v55, v54);
  v30 = v57;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v53 = v30;
  sub_10007FDF4(v54, 0xD000000000000019, 0x80000001004BC610, isUniquelyReferenced_nonNull_native);
  v32 = v53;
LABEL_9:
  v33 = *(*v1 + 528);
  v34 = *&v1[v33];
  *(&v56 + 1) = &type metadata for Int;
  *&v55 = v34;
  sub_100085188(&v55, v54);
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v53 = v32;
  sub_10007FDF4(v54, 0xD000000000000028, 0x80000001004BC590, v35);
  v36 = v53;
  if (*(v53 + 16))
  {
    v37 = sub_1000102E8(0xD000000000000029, 0x80000001004BC5C0);
    if (v38)
    {
      sub_100002B30(*(v36 + 56) + 32 * v37, &v55);
      result = swift_dynamicCast();
      if (result)
      {
        v40 = *&v1[v33];
        if (__OFSUB__(*&v54[0], v40))
        {
          __break(1u);
          return result;
        }

        *(&v56 + 1) = &type metadata for Int;
        *&v55 = *&v54[0] - v40;
        sub_100085188(&v55, v54);
        v41 = swift_isUniquelyReferenced_nonNull_native();
        v53 = v36;
        sub_10007FDF4(v54, 0xD000000000000029, 0x80000001004BC5C0, v41);
        v36 = v53;
      }
    }
  }

  v42 = *&v1[v33];
  *(&v56 + 1) = &type metadata for Int;
  *&v55 = v42;
  sub_100085188(&v55, v54);
  v43 = swift_isUniquelyReferenced_nonNull_native();
  v53 = v36;
  sub_10007FDF4(v54, 0xD000000000000025, 0x80000001004BC8B0, v43);
  v44 = v53;
  v45 = v1[*(*v1 + 536)];
  if (v45 != 2)
  {
    *(&v56 + 1) = &type metadata for Bool;
    LOBYTE(v55) = v45 & 1;
    sub_100085188(&v55, v54);
    v46 = swift_isUniquelyReferenced_nonNull_native();
    v53 = v44;
    sub_10007FDF4(v54, 0xD000000000000012, 0x80000001004BC830, v46);
    return v53;
  }

  return v44;
}

uint64_t sub_10044DE80(uint64_t a1)
{
  v2 = [objc_allocWithZone(AWDLTrafficRegistrationConfiguration) initWithUniqueIdentifier:AWDLTrafficRegistrationServiceAirPlay peerAddress:a1];
  sub_100474D84(v2, 1, 1);
  v4 = v3;

  if (v4)
  {

    return 16;
  }

  else
  {
    v6 = [objc_allocWithZone(AWDLTrafficRegistrationConfiguration) initWithUniqueIdentifier:AWDLTrafficRegistrationServiceAirPlayConnectivity peerAddress:a1];
    sub_100449054(v6);

    return 0;
  }
}

uint64_t sub_10044DFD4(uint64_t result)
{
  v2 = *v1;
  v3 = *(v1 + *(*v1 + 488));
  if (v3 != (result & 1))
  {
    v4 = *(v1 + v2[92]);
    swift_unownedRetainStrong();
    v5 = sub_10047575C(&off_100573240);
    sub_1003EED68(v3, v5);

    sub_100030D3C();
    __chkstk_darwin();
    v6 = v2[54];
    v7 = v2[55];
    type metadata accessor for AWDLInterface.StateMonitoringClient();
    type metadata accessor for Dictionary.Values();

    swift_getWitnessTable();
    Sequence.filter(_:)();
    type metadata accessor for Array();
    swift_getWitnessTable();
    Sequence.forEach(_:)();
  }

  return result;
}

uint64_t sub_10044E1B8(uint64_t a1)
{
  v3 = *(*v1 + 608);
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;

  return sub_10004C128();
}

void sub_10044E220(void *a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = *(*v2 + 616);
  swift_beginAccess();
  v6 = *(v2 + v5);
  type metadata accessor for AWDLTrafficRegistrationService(0);
  v7 = *(v4 + 432);
  v8 = *(v4 + 440);
  type metadata accessor for AWDLInterface.TrafficRegistrationServiceAvailabilityMonitor();
  sub_10004C988(&unk_100594A20, type metadata accessor for AWDLTrafficRegistrationService);
  v9 = a1;
  Dictionary.subscript.getter();

  v11 = v27;
  v10 = v28;
  swift_endAccess();
  if (v27 == 1)
  {
    v12 = [objc_opt_self() zeroAddress];
    v13 = [objc_allocWithZone(AWDLTrafficRegistrationConfiguration) initWithUniqueIdentifier:v9 peerAddress:v12];

    sub_100474D84(v13, 0, 0);
    v11 = v14;
  }

  else if (v28)
  {
    goto LABEL_11;
  }

  v15 = *(*v2 + 160);
  v16 = v9;
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v26 = v18;
    v19 = swift_slowAlloc();
    v29[0] = swift_slowAlloc();
    *v19 = 136315394;
    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = sub_100002320(v20, v21, v29);

    *(v19 + 4) = v22;
    *(v19 + 12) = 2080;
    if (v11)
    {
      v23 = 7630702;
    }

    else
    {
      v23 = 7827310;
    }

    v24 = sub_100002320(v23, 0xE300000000000000, v29);

    *(v19 + 14) = v24;
    _os_log_impl(&_mh_execute_header, v17, v26, "New client started monitoring availability for %s, %s available", v19, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v10 = 0;
LABEL_11:
  if (__OFADD__(v10, 1))
  {
    __break(1u);
  }

  else
  {
    swift_beginAccess();
    v25 = v9;
    swift_errorRetain();
    type metadata accessor for Dictionary();
    Dictionary.subscript.setter();
    swift_endAccess();
  }
}

void sub_10044E5A0(void *a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = *(*v1 + 616);
  swift_beginAccess();
  v6 = *(v1 + v5);
  if (*(v6 + 16))
  {

    sub_1003E0A7C(a1);
    if ((v7 & 1) == 0)
    {

      return;
    }

    v8 = *(v6 + 36);

    v9 = *(v2 + v5);
    type metadata accessor for AWDLTrafficRegistrationService(0);
    v10 = *(v4 + 432);
    v11 = *(v4 + 440);
    type metadata accessor for AWDLInterface.TrafficRegistrationServiceAvailabilityMonitor();
    sub_10004C988(&unk_100594A20, type metadata accessor for AWDLTrafficRegistrationService);

    Dictionary.subscript.getter();

    if (v27[1] != 1)
    {
      swift_beginAccess();
      v28 = a1;
      v21 = a1;
      type metadata accessor for Dictionary._Variant();
      v22 = Dictionary._Variant.subscript.modify();
      if (*v23 != 1)
      {
        v24 = v23[1];
        v25 = __OFSUB__(v24, 1);
        v26 = v24 - 1;
        if (!v25)
        {
          v23[1] = v26;
          v22(v27, 0);

          swift_endAccess();
          return;
        }

        __break(1u);
      }

      __break(1u);
      return;
    }

    v12 = *(*v2 + 160);
    v13 = a1;
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v27[0] = swift_slowAlloc();
      v17 = v27[0];
      *v16 = 136315138;
      v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v20 = sub_100002320(v18, v19, v27);

      *(v16 + 4) = v20;
      _os_log_impl(&_mh_execute_header, v14, v15, "All clients stopped monitoring availability for %s", v16, 0xCu);
      sub_100002A00(v17);
    }

    swift_beginAccess();
    type metadata accessor for Dictionary();
    Dictionary.remove(at:)();
    swift_endAccess();
  }
}

uint64_t sub_10044E934@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*(sub_10005DC58(&unk_100597330, &unk_100481FA0) - 8) + 64);
  __chkstk_darwin();
  v5 = &v18 - v4;
  v6 = type metadata accessor for DispatchTime();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin();
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v12 = &v18 - v11;
  v13 = *(*v1 + 640);
  swift_beginAccess();
  sub_100012400(v1 + v13, v5, &unk_100597330, &unk_100481FA0);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_100016290(v5, &unk_100597330, &unk_100481FA0);
    v14 = enum case for DispatchTimeInterval.never(_:);
    v15 = type metadata accessor for DispatchTimeInterval();
    return (*(*(v15 - 8) + 104))(a1, v14, v15);
  }

  else
  {
    (*(v7 + 32))(v12, v5, v6);
    type metadata accessor for P2PTimer();
    variable initialization expression of AWDLPeer.lastUpdated();
    DispatchTime.distance(to:)();
    v17 = *(v7 + 8);
    v17(v10, v6);
    return (v17)(v12, v6);
  }
}

uint64_t sub_10044EBA0@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*(sub_10005DC58(&unk_100597330, &unk_100481FA0) - 8) + 64);
  __chkstk_darwin();
  v5 = &v18 - v4;
  v6 = type metadata accessor for DispatchTime();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin();
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v12 = &v18 - v11;
  v13 = *(*v1 + 648);
  swift_beginAccess();
  sub_100012400(v1 + v13, v5, &unk_100597330, &unk_100481FA0);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_100016290(v5, &unk_100597330, &unk_100481FA0);
    v14 = enum case for DispatchTimeInterval.never(_:);
    v15 = type metadata accessor for DispatchTimeInterval();
    return (*(*(v15 - 8) + 104))(a1, v14, v15);
  }

  else
  {
    (*(v7 + 32))(v12, v5, v6);
    type metadata accessor for P2PTimer();
    variable initialization expression of AWDLPeer.lastUpdated();
    DispatchTime.distance(to:)();
    v17 = *(v7 + 8);
    v17(v10, v6);
    return (v17)(v12, v6);
  }
}

uint64_t sub_10044EE0C(void (*a1)(uint64_t), uint64_t a2)
{
  v4 = type metadata accessor for DispatchTimeInterval();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin();
  v11 = &v14 - v10;
  a1(v9);
  *v8 = a2;
  (*(v5 + 104))(v8, enum case for DispatchTimeInterval.seconds(_:), v4);
  LOBYTE(a2) = static DispatchTimeInterval.< infix(_:_:)();
  v12 = *(v5 + 8);
  v12(v8, v4);
  v12(v11, v4);
  return a2 & 1;
}

void sub_10044EF5C(char a1)
{
  v3 = *v1;
  if (*(v1 + *(*v1 + 712)))
  {
    v4 = 0x64656C62616E65;
  }

  else
  {
    v4 = 0x64656C6261736964;
  }

  if (*(v1 + *(*v1 + 712)))
  {
    v5 = 0xE700000000000000;
  }

  else
  {
    v5 = 0xE800000000000000;
  }

  if (a1)
  {
    v6 = 0x64656C62616E65;
  }

  else
  {
    v6 = 0x64656C6261736964;
  }

  if (a1)
  {
    v7 = 0xE700000000000000;
  }

  else
  {
    v7 = 0xE800000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v9 & 1) == 0 && (a1 & 1) == 0)
    {
      v10 = *(*v1 + 568);
      swift_beginAccess();
      v11 = *(v1 + v10);
      sub_100018AB4(0, &qword_100595230, AWDLTrafficRegistrationConfiguration_ptr);
      v12 = *(v3 + 432);
      v13 = *(v3 + 440);
      type metadata accessor for AWDLInterface.AdditionalTrafficRegistrationInformation();
      sub_100047340(&qword_100595238, &qword_100595230, AWDLTrafficRegistrationConfiguration_ptr);

      v14 = Dictionary.isEmpty.getter();

      if (v14)
      {
        v15 = *(*v1 + 592);
        swift_beginAccess();
        v16 = *(v1 + v15);

        v17 = Dictionary.isEmpty.getter();

        if (v17)
        {
          sub_10044F180();
          sub_10044F61C();
        }
      }
    }
  }
}

void sub_10044F180()
{
  v1 = v0;
  v2 = *v0;
  v3 = *(*(*v0 + 440) + 8);
  v4 = *(v2 + 432);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v5 = type metadata accessor for Preferences();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin();
  v9 = &v38 - v8;
  v10 = WiFiInterface.linkState.getter();
  v11 = *v1;
  if (v10)
  {
    v12 = *(v11 + 552);
    swift_beginAccess();
    if (sub_100447AF8(0xFuLL, *(v1 + v12)))
    {
      v13 = v1 + *(*v1 + 160);
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&_mh_execute_header, v14, v15, "Skipping address rotation because in use", v16, 2u);
      }
    }

    else
    {
      WiFiInterface.preferences.getter();
      v21 = Preferences.awdlMACAddress.getter(v5);
      (*(v6 + 8))(v9, v5);
      if ((v21 & 0x1000000000000) != 0)
      {
        static WiFiAddress.random()();
      }

      WiFiAddress.linkLocalAddress()(v22);
      WiFiInterface.macAddress.setter(v23 & 0xFFFFFFFFFFFFLL);
      sub_10005DC58(&unk_10059B0B0, &qword_100487150);
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_100480F40;
      v25 = WiFiInterface.macAddress.getter();
      *(v24 + 32) = WiFiAddress.ipv6LinkLocalAddress.getter(v25 & 0xFFFFFFFFFFFFLL);
      *(v24 + 40) = v26;
      *(v24 + 48) = v27;
      *(v24 + 56) = v28;
      WiFiInterface.ipv6Addresses.setter(v24);
      v29 = *(*v1 + 160);

      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v40 = v33;
        *v32 = 136315138;
        v34 = WiFiInterface.description.getter();
        v36 = v35;

        v37 = sub_100002320(v34, v36, &v40);

        *(v32 + 4) = v37;
        _os_log_impl(&_mh_execute_header, v30, v31, "Updated %s", v32, 0xCu);
        sub_100002A00(v33);
      }

      else
      {
      }
    }
  }

  else
  {
    v17 = v1 + *(v11 + 160);
    v39 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v39, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v39, v18, "Skipping address rotation because link is down", v19, 2u);
    }

    v20 = v39;
  }
}

void sub_10044F61C()
{
  v1 = *(*v0 + 624);
  v2 = *(v0 + v1);
  if (v2)
  {
    v3 = *(*v2 + 216);
    v4 = *(v0 + v1);

    v3(1);
    v5 = WiFiInterface.macAddress.getter();
    (*(*v2 + 264))(v5 & 0xFFFFFFFFFFFFLL);
    sub_10005DC58(&unk_10059B0B0, &qword_100487150);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_100480F40;
    v7 = (*(*v2 + 256))();
    *(v6 + 32) = WiFiAddress.ipv6LinkLocalAddress.getter(v7 & 0xFFFFFFFFFFFFLL);
    *(v6 + 40) = v8;
    *(v6 + 48) = v9;
    *(v6 + 56) = v10;
    (*(*v2 + 360))(v6);
    v11 = *(*v0 + 160);

    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v20 = v15;
      *v14 = 136315138;

      v16 = WiFiInterface.description.getter();
      v18 = v17;

      v19 = sub_100002320(v16, v18, &v20);

      *(v14 + 4) = v19;
      _os_log_impl(&_mh_execute_header, v12, v13, "Updated %s", v14, 0xCu);
      sub_100002A00(v15);
    }

    else
    {
    }
  }
}

uint64_t sub_10044F8C8(char a1)
{
  v3 = type metadata accessor for DispatchTime();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + *(*v1 + 712)))
  {
    v8 = 0x64656C62616E65;
  }

  else
  {
    v8 = 0x64656C6261736964;
  }

  if (*(v1 + *(*v1 + 712)))
  {
    v9 = 0xE700000000000000;
  }

  else
  {
    v9 = 0xE800000000000000;
  }

  if (a1)
  {
    v10 = 0x64656C62616E65;
  }

  else
  {
    v10 = 0x64656C6261736964;
  }

  if (a1)
  {
    v11 = 0xE700000000000000;
  }

  else
  {
    v11 = 0xE800000000000000;
  }

  if (v8 == v10 && v9 == v11)
  {
  }

  else
  {
    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v13 & 1) == 0)
    {
      v15 = v1;
      sub_10044FAB0(0);
      type metadata accessor for P2PTimer();
      variable initialization expression of AWDLPeer.lastUpdated();
      v16 = *(*v1 + 632);
      swift_beginAccess();
      (*(v4 + 40))(v15 + v16, v7, v3);
      return swift_endAccess();
    }
  }

  return result;
}

void sub_10044FAB0(uint64_t a1)
{
  v2 = v1;
  v140 = a1;
  v142 = *v1;
  v3 = v142;
  v4 = type metadata accessor for DispatchTimeInterval();
  v132 = *(v4 - 8);
  v5 = *(v132 + 64);
  __chkstk_darwin();
  v7 = &v132 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v142 + 440);
  v9 = *(v142 + 432);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v11 = *(AssociatedConformanceWitness + 8);
  v12 = swift_getAssociatedTypeWitness();
  v147 = *(v12 - 8);
  v148 = v12;
  v13 = *(v147 + 64);
  __chkstk_darwin();
  v137 = &v132 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v138 = &v132 - v15;
  v135 = v8;
  v16 = v8[1];
  v17 = swift_getAssociatedTypeWitness();
  v143 = *(v17 - 8);
  v144 = v17;
  v18 = *(v143 + 64);
  __chkstk_darwin();
  v134 = &v132 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v136 = &v132 - v20;
  __chkstk_darwin();
  v133 = &v132 - v21;
  swift_getAssociatedTypeWitness();
  v149 = v16;
  v22 = v9;
  v23 = swift_getAssociatedConformanceWitness();
  v24 = swift_getAssociatedTypeWitness();
  v141 = *(v24 - 8);
  v25 = *(v141 + 64);
  __chkstk_darwin();
  v27 = &v132 - v26;
  v139 = *(v3 + 712);
  LODWORD(v26) = *(v1 + v139);
  v146 = AssociatedTypeWitness;
  if (v26 == 1)
  {
    *(v1 + *(v142 + 520)) = 0;
    v28 = *(*v1 + 560);
    swift_beginAccess();
    v29 = *(v1 + v28);
    *(v1 + v28) = &_swiftEmptySetSingleton;

    v30 = *(*v1 + 112);
    v31 = *(v23 + 152);
    swift_checkMetadataState();
    v31();
    v32 = swift_getAssociatedConformanceWitness();
    (*(v32 + 120))(&_swiftEmptySetSingleton, v24, v32);
    (*(v141 + 8))(v27, v24);
    v33 = *(*v1 + 96);
    swift_beginAccess();
    v34 = v143;
    v35 = v144;
    v142 = *(v143 + 16);
    v36 = v133;
    (v142)(v133, v1 + v33, v144);
    v37 = swift_getAssociatedConformanceWitness();
    v38 = (*(v37 + 56))(v35, v37);
    v39 = *(v34 + 8);
    v39(v36, v35);
    v40 = *(*v2 + 496);
    v41 = *(v2 + v40);
    *(v2 + v40) = v38;
    sub_100032158(v41);

    v42 = sub_10040DC18(0xD000000000000023, 0x80000001004C2EC0);
    v43 = *(*v2 + 720);
    v44 = *(v2 + v43);
    *(v2 + v43) = v42;
    swift_unknownObjectRelease();
    v45 = *(v2 + *(*v2 + 728));
    [v45 registerClient:38 queue:*OS_dispatch_queue.awdl.unsafeMutableAddressor()];
    [v45 setAWDLEnabled:1];
    v46 = *(v2 + *(*v2 + 736));
    v47 = swift_unownedRetainStrong();
    v48 = v138;
    (*(*v46 + 168))(v47);

    v49 = v2 + v33;
    v50 = v136;
    (v142)(v136, v49, v35);
    v51 = swift_getAssociatedConformanceWitness();
    v52 = (*(v51 + 32))(v35, v51);
    v39(v50, v35);
    v53 = v148;
    v54 = swift_getAssociatedConformanceWitness();
    (*(v54 + 144))(v52, 1, v53, v54);
    (*(v147 + 8))(v48, v53);
LABEL_25:
    v117 = *(*v2 + 160);
    swift_retain_n();
    v118 = Logger.logObject.getter();
    v119 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v118, v119))
    {
      v120 = swift_slowAlloc();
      v152[0] = swift_slowAlloc();
      *v120 = 136315650;
      v121 = WiFiInterface.description.getter();
      v123 = sub_100002320(v121, v122, v152);

      *(v120 + 4) = v123;
      *(v120 + 12) = 2080;
      v124 = *(v2 + v139);

      if (v124)
      {
        v125 = 0x64656C62616E65;
      }

      else
      {
        v125 = 0x64656C6261736964;
      }

      if (v124)
      {
        v126 = 0xE700000000000000;
      }

      else
      {
        v126 = 0xE800000000000000;
      }

      v127 = sub_100002320(v125, v126, v152);

      *(v120 + 14) = v127;
      *(v120 + 22) = 2080;
      v150 = v140;
      v128 = sub_100148E98();
      v129 = FixedWidthInteger.retryText.getter(&type metadata for Int, v128);
      v131 = sub_100002320(v129, v130, v152);

      *(v120 + 24) = v131;
      _os_log_impl(&_mh_execute_header, v118, v119, "%s %s AWDL after %s", v120, 0x20u);
      swift_arrayDestroy();
    }

    else
    {
    }

    return;
  }

  v138 = v22;
  v135 = v7;
  v136 = v4;
  v55 = *(v142 + 752);
  swift_beginAccess();
  v56 = *(v1 + v55);
  *(v1 + v55) = &_swiftEmptySetSingleton;

  v57 = *(*v1 + 112);
  v58 = *(v23 + 152);
  swift_checkMetadataState();
  v58();
  v59 = swift_getAssociatedConformanceWitness();
  (*(v59 + 120))(&_swiftEmptySetSingleton, v24, v59);
  (*(v141 + 8))(v27, v24);
  if ((*(v1 + *(*v1 + 512)) & 1) == 0)
  {
    *(v1 + *(*v1 + 520)) = 1;
  }

  sub_10045BBA0();
  v60 = *(*v1 + 720);
  v61 = *(v1 + v60);
  *(v1 + v60) = 0;
  swift_unknownObjectRelease();
  v62 = *(v1 + *(*v1 + 728));
  [*(v2 + *(*v2 + 728)) setAWDLEnabled:0];
  [v62 unregisterClient];
  v63 = *(v2 + *(*v2 + 736));
  v64 = swift_unownedRetainStrong();
  v65 = v137;
  (*(*v63 + 168))(v64);

  v66 = *(*v2 + 96);
  swift_beginAccess();
  v68 = v143;
  v67 = v144;
  v69 = v134;
  (*(v143 + 16))(v134, v2 + v66, v144);
  v70 = swift_getAssociatedConformanceWitness();
  v71 = (*(v70 + 32))(v67, v70);
  (*(v68 + 8))(v69, v67);
  v72 = v148;
  v73 = swift_getAssociatedConformanceWitness();
  (*(v73 + 144))(v71, 0, v72, v73);
  (*(v147 + 8))(v65, v72);
  v74 = ChannelSequence.none.unsafeMutableAddressor();
  v75 = *(*v2 + 496);
  v76 = *(v2 + v75);
  *(v2 + v75) = *v74;

  sub_100032158(v76);

  v77 = *(*v2 + 152);
  swift_beginAccess();
  type metadata accessor for WiFiInterface.NeighborDiscoveryTable();
  WiFiInterface.NeighborDiscoveryTable.clearAllPeerPresence()();
  if (v78)
  {
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    v105 = *(*v2 + 624);
    v106 = *(v2 + v105);
    if (!v106)
    {
      goto LABEL_25;
    }

    v107 = *(*v106 + 416);
    v108 = *(v2 + v105);

    v109 = v107(v151);
    WiFiInterface.NeighborDiscoveryTable.clearAllPeerPresence()();
    if (!v110)
    {
      v109(v151, 0);

      goto LABEL_25;
    }

    v109(v151, 1);
  }

  v79 = v140;
  if (v140 > 2)
  {
    v92 = *(*v2 + 160);

    v93 = Logger.logObject.getter();
    v94 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v93, v94))
    {
      v95 = v79;
      v96 = swift_slowAlloc();
      v151[0] = swift_slowAlloc();
      *v96 = 136315394;
      v97 = *(v2 + v139);
      v98 = NANState.actionDescription.getter();
      v100 = sub_100002320(v98, v99, v151);

      *(v96 + 4) = v100;
      *(v96 + 12) = 2080;
      v152[0] = v95;
      v101 = sub_100148E98();
      v102 = FixedWidthInteger.retryText.getter(&type metadata for Int, v101);
      v104 = sub_100002320(v102, v103, v151);

      *(v96 + 14) = v104;
      _os_log_impl(&_mh_execute_header, v93, v94, "Giving up attempt to %s AWDL after %s", v96, 0x16u);
      swift_arrayDestroy();
    }
  }

  else
  {
    v80 = v140 + 1;
    v81 = *(*v2 + 160);

    swift_errorRetain();
    v82 = Logger.logObject.getter();
    v83 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v82, v83))
    {
      v84 = swift_slowAlloc();
      v85 = swift_slowAlloc();
      v86 = swift_slowAlloc();
      v151[0] = v86;
      *v84 = 136315650;
      v87 = *(v2 + v139);

      if (v87)
      {
        v88 = 0x64656C62616E65;
      }

      else
      {
        v88 = 0x64656C6261736964;
      }

      if (v87)
      {
        v89 = 0xE700000000000000;
      }

      else
      {
        v89 = 0xE800000000000000;
      }

      v90 = sub_100002320(v88, v89, v151);

      *(v84 + 4) = v90;
      *(v84 + 12) = 2112;
      swift_errorRetain();
      v91 = _swift_stdlib_bridgeErrorToNSError();
      *(v84 + 14) = v91;
      *v85 = v91;
      *(v84 + 22) = 2048;
      *(v84 + 24) = v80;
      _os_log_impl(&_mh_execute_header, v82, v83, "AWDL failed to be %s because: %@. Attempting retry #%ld", v84, 0x20u);
      sub_100016290(v85, &qword_10058B780, &qword_100480AC0);

      sub_100002A00(v86);
    }

    else
    {
    }

    type metadata accessor for P2PTimer();
    v111 = v135;
    *v135 = v80;
    v112 = v132;
    v113 = v136;
    (*(v132 + 104))(v111, enum case for DispatchTimeInterval.seconds(_:), v136);
    v114 = *OS_dispatch_queue.awdl.unsafeMutableAddressor();
    v115 = swift_allocObject();
    *(v115 + 16) = v2;
    *(v115 + 24) = v80;

    v116 = v114;
    static P2PTimer.async(after:on:execute:)(v111, v116, sub_100468228, v115);

    (*(v112 + 8))(v111, v113);
  }
}

uint64_t sub_100450EC0(char a1)
{
  v2 = *(*v1 + 712);
  v3 = *(v1 + v2);
  v4 = a1 & 1;
  sub_10044EF5C(a1 & 1);
  *(v1 + v2) = v4;

  return sub_10044F8C8(v3);
}

char *sub_100450F20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v164 = a3;
  v160 = a2;
  v167 = a1;
  v5 = *v3;
  v140 = sub_10005DC58(&unk_10059B150, &qword_1004B3070);
  v6 = *(*(v140 - 8) + 64);
  __chkstk_darwin();
  v139 = &v139 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v141 = &v139 - v8;
  v9 = *(v5[55] + 8);
  v10 = v5[55];
  v11 = v5[54];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v165 = *(AssociatedTypeWitness - 8);
  v13 = *(v165 + 64);
  __chkstk_darwin();
  v146 = &v139 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v150 = &v139 - v15;
  __chkstk_darwin();
  v155 = &v139 - v16;
  __chkstk_darwin();
  v148 = &v139 - v17;
  v149 = v9;
  v18 = swift_getAssociatedTypeWitness();
  v157 = *(v18 - 8);
  v158 = v18;
  v19 = *(v157 + 64);
  __chkstk_darwin();
  v154 = &v139 - v20;
  v156 = AssociatedTypeWitness;
  v159 = type metadata accessor for Optional();
  v163 = *(v159 - 8);
  v21 = *(v163 + 64);
  __chkstk_darwin();
  v153 = &v139 - v22;
  v168 = type metadata accessor for Logger();
  v161 = *(v168 - 8);
  v23 = *(v161 + 64);
  __chkstk_darwin();
  v145 = &v139 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v152 = &v139 - v25;
  v144 = v26;
  __chkstk_darwin();
  v169 = &v139 - v27;
  *(v4 + v5[56]) = &_swiftEmptyDictionarySingleton;
  *(v4 + *(*v4 + 456)) = 0;
  *(v4 + *(*v4 + 464)) = 0;
  v28 = (v4 + *(*v4 + 472));
  *v28 = &_swiftEmptySetSingleton;
  v28[1] = 0;
  v29 = *(*v4 + 480);
  v162 = v10;
  type metadata accessor for AWDLInterface.StateMonitoringClient();
  *(v4 + v29) = Dictionary.init()();
  *(v4 + *(*v4 + 488)) = 0;
  v30 = *(*v4 + 496);
  *(v4 + v30) = *ChannelSequence.none.unsafeMutableAddressor();
  *(v4 + *(*v4 + 504)) = 0;
  *(v4 + *(*v4 + 512)) = 1;
  *(v4 + *(*v4 + 520)) = 0;
  *(v4 + *(*v4 + 528)) = 0;
  *(v4 + *(*v4 + 536)) = 2;
  v31 = *(*v4 + 544);
  v32 = type metadata accessor for DispatchTime();
  v151 = *(*(v32 - 8) + 56);
  (v151)(v4 + v31, 1, 1, v32);
  *(v4 + *(*v4 + 552)) = &_swiftEmptySetSingleton;
  *(v4 + *(*v4 + 560)) = &_swiftEmptySetSingleton;
  v33 = *(*v4 + 568);
  sub_100018AB4(0, &qword_100595230, AWDLTrafficRegistrationConfiguration_ptr);
  type metadata accessor for AWDLInterface.AdditionalTrafficRegistrationInformation();
  sub_100047340(&qword_100595238, &qword_100595230, AWDLTrafficRegistrationConfiguration_ptr);

  *(v4 + v33) = Dictionary.init()();
  *(v4 + *(*v4 + 576)) = _swiftEmptyArrayStorage;
  v34 = *(*v4 + 584);
  *(v4 + v34) = Dictionary.init()();
  v35 = *(*v4 + 592);
  *(v4 + v35) = Dictionary.init()();
  v36 = v4 + *(*v4 + 600);
  DispatchTime.init(uptimeNanoseconds:)();
  v37 = *(*v4 + 608);
  v38 = v159;
  *(v4 + v37) = Dictionary.init()();
  v39 = *(*v4 + 616);
  type metadata accessor for AWDLTrafficRegistrationService(0);
  v166 = v11;
  type metadata accessor for AWDLInterface.TrafficRegistrationServiceAvailabilityMonitor();
  sub_10004C988(&unk_100594A20, type metadata accessor for AWDLTrafficRegistrationService);
  *(v4 + v39) = Dictionary.init()();
  *(v4 + *(*v4 + 624)) = 0;
  v40 = *(*v4 + 632);
  type metadata accessor for P2PTimer();
  variable initialization expression of AWDLPeer.lastUpdated();
  v41 = v151;
  (v151)(v4 + *(*v4 + 640), 1, 1, v32);
  v41(v4 + *(*v4 + 648), 1, 1, v32);
  v42 = *(*v4 + 656);
  v43 = [objc_allocWithZone(NSDateFormatter) init];
  v44 = String._bridgeToObjectiveC()();
  [v43 setDateFormat:v44];

  *(v4 + v42) = v43;
  *(v4 + *(*v4 + 688)) = 0;
  v45 = v164;
  v41(v4 + *(*v4 + 696), 1, 1, v32);
  *(v4 + *(*v4 + 704)) = 0;
  *(v4 + *(*v4 + 712)) = 0;
  *(v4 + *(*v4 + 720)) = 0;
  v46 = *(*v4 + 728);
  v47 = objc_allocWithZone(WRM_UCMInterface);
  v48 = v161;
  v49 = v158;
  *(v4 + v46) = [v47 init];
  v50 = v160;
  *(v4 + *(*v4 + 744)) = 0;
  *(v4 + *(*v4 + 752)) = &_swiftEmptySetSingleton;
  *(v4 + *(*v4 + 760)) = &_swiftEmptyDictionarySingleton;
  *(v4 + *(*v4 + 768)) = 0;
  *(v4 + *(*v4 + 776)) = &_swiftEmptyDictionarySingleton;
  *(v4 + *(*v4 + 784)) = 0;
  *(v4 + *(*v4 + 736)) = v45;
  *(v4 + *(*v4 + 664)) = 0;
  *(v4 + *(*v4 + 680)) = 0;
  *(v4 + *(*v4 + 672)) = 0;
  swift_unownedRetain();
  v51 = v169;
  Logger.init(subsystem:category:)();
  v52 = v153;
  v53 = v38;
  (*(v163 + 16))(v153, v167, v38);
  v54 = v157;
  v55 = v154;
  v56 = v49;
  (*(v157 + 16))(v154, v50, v49);
  v57 = *(v48 + 16);
  v58 = v152;
  v143 = v48 + 16;
  v142 = v57;
  v57(v152, v51, v168);
  v59 = WiFiInterface.init(driver:components:logger:)(v52, v55, v58);
  if (!v59)
  {
    (*(v54 + 8))(v50, v56);
    (*(v163 + 8))(v167, v53);
    (*(v48 + 8))(v51, v168);
LABEL_11:

    return 0;
  }

  v60 = *(*v59 + 96);
  v61 = v59;
  swift_beginAccess();
  v62 = v165;
  v63 = v165 + 16;
  v64 = *(v165 + 16);
  v65 = v148;
  v66 = v156;
  v64(v148, &v60[v61], v156);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v68 = *(AssociatedConformanceWitness + 32);

  v153 = AssociatedConformanceWitness;
  v69 = v68(v66, AssociatedConformanceWitness);
  v154 = *(v62 + 8);
  (v154)(v65, v66);
  *(v61 + *(*v61 + 712)) = v69 & 1;
  sub_10044C304();
  v148 = v60;
  v151 = v61;
  v147 = v63;
  v152 = v64;
  v64(v155, &v60[v61], v66);
  v70 = WiFiAddress.bonjourMulticastAddress.unsafeMutableAddressor();
  v71 = *(v70 + 1);
  v72 = *v70;
  v73 = swift_getAssociatedConformanceWitness();
  (*(v73 + 112))(v72 | (v71 << 16), v66, v73);
  v74 = v66;
  v165 = v62 + 8;
  v75 = v154;
  (v154)(v155, v66);
  v76 = v169;
  v77 = v166;
  v78 = v148;
  v79 = v151;
  v80 = v150;
  (v152)(v150, &v148[v151], v74);
  (*(v153 + 16))(0, 0, 0xC000000000000000, 0, 0xF000000000000000, v74);
  (v75)(v80, v74);
  v81 = *(*v79 + 152);
  swift_beginAccess();
  type metadata accessor for WiFiInterface.NeighborDiscoveryTable();
  WiFiInterface.NeighborDiscoveryTable.clearAllPeerPresence()();
  if (v82)
  {
    swift_endAccess();
    v83 = v161;
    v84 = v167;

    swift_errorRetain();
    v97 = Logger.logObject.getter();
    v98 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v97, v98))
    {
      v99 = swift_slowAlloc();
      v100 = swift_slowAlloc();
      v101 = swift_slowAlloc();
      v170 = v101;
      *v99 = 136315394;
      v102 = (v79 + *(*v79 + 104));
      v103 = v83;
      v104 = *v102;
      v105 = v102[1];

      v106 = sub_100002320(v104, v105, &v170);

      *(v99 + 4) = v106;
      *(v99 + 12) = 2112;
      swift_errorRetain();
      v107 = _swift_stdlib_bridgeErrorToNSError();
      *(v99 + 14) = v107;
      *v100 = v107;
      _os_log_impl(&_mh_execute_header, v97, v98, "Unable to create AWDLInterface for %s because initialization error: %@", v99, 0x16u);
      sub_100016290(v100, &qword_10058B780, &qword_100480AC0);

      sub_100002A00(v101);

      (*(v157 + 8))(v160, v158);
      (*(v163 + 8))(v167, v159);
      (*(v103 + 8))(v169, v168);
    }

    else
    {

      (*(v157 + 8))(v160, v158);
      (*(v163 + 8))(v84, v159);
      (*(v83 + 8))(v76, v168);
    }

    goto LABEL_11;
  }

  swift_endAccess();

  v85 = v146;
  (v152)(v146, &v78[v79], v156);
  v86 = swift_allocObject();
  swift_weakInit();
  v87 = v145;
  v88 = v76;
  v89 = v168;
  v142(v145, v88, v168);
  v90 = v161;
  v91 = v77;
  v92 = (*(v161 + 80) + 40) & ~*(v161 + 80);
  v93 = swift_allocObject();
  v94 = v162;
  *(v93 + 2) = v91;
  *(v93 + 3) = v94;
  *(v93 + 4) = v86;
  (*(v90 + 32))(&v93[v92], v87, v89);
  v95 = *(v153 + 3);

  v155 = v93;
  v96 = v156;
  v95(sub_100023B38, v93);
  (v154)(v85, v96);

  v109 = sub_10045291C();
  v110 = v163;
  v111 = *(*v151 + 624);
  v112 = *(v151 + v111);
  *(v151 + v111) = v109;

  v114 = v168;
  v113 = v169;
  v115 = v166;
  v116 = Logger.logObject.getter();
  v117 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v116, v117))
  {
    v118 = swift_slowAlloc();
    *v118 = 0;
    _os_log_impl(&_mh_execute_header, v116, v117, "Registering for Power State changes from wifid", v118, 2u);
  }

  v119 = v141;
  sub_1003EB010(v141);
  v120 = *OS_dispatch_queue.awdl.unsafeMutableAddressor();
  v121 = swift_allocObject();
  v122 = v151;
  swift_weakInit();
  v123 = swift_allocObject();
  v124 = v162;
  v123[2] = v115;
  v123[3] = v124;
  v123[4] = v121;
  v125 = *(*v122 + 504);
  swift_beginAccess();

  v126 = v120;
  ObservableWiFiProperty.registerForChanges(on:using:valueUpdateHandler:)(v126, &v122[v125], sub_10047694C, v123, v140, &v171);
  swift_endAccess();

  sub_100016290(v119, &unk_10059B150, &qword_1004B3070);
  sub_1004530F0(v171);
  v127 = sub_1003EEBCC();
  sub_1003EFCBC(v127 & 1);

  v128 = Logger.logObject.getter();
  v129 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v128, v129))
  {
    v130 = swift_slowAlloc();
    v131 = swift_slowAlloc();
    v170 = v131;
    *v130 = 136315138;
    v132 = v139;
    sub_1003EB010(v139);
    v133 = *(v132 + 32);

    v134 = v133 == 0;
    if (v133)
    {
      v135 = 1702195828;
    }

    else
    {
      v135 = 0x65736C6166;
    }

    if (v134)
    {
      v136 = 0xE500000000000000;
    }

    else
    {
      v136 = 0xE400000000000000;
    }

    sub_100016290(v132, &unk_10059B150, &qword_1004B3070);
    v137 = sub_100002320(v135, v136, &v170);

    *(v130 + 4) = v137;
    _os_log_impl(&_mh_execute_header, v128, v129, "Power State is read from driver and set to %s", v130, 0xCu);
    sub_100002A00(v131);

    (*(v157 + 8))(v160, v158);
    (*(v110 + 8))(v167, v159);
    (*(v161 + 8))(v169, v168);
  }

  else
  {

    (*(v157 + 8))(v160, v158);
    (*(v110 + 8))(v167, v159);
    (*(v161 + 8))(v113, v114);
  }

  v138 = v151;

  return v138;
}

uint64_t (***sub_10045291C())(uint64_t *)
{
  v1 = v0;
  v70 = *v0;
  v2 = v70;
  v66 = type metadata accessor for Logger();
  v69 = *(v66 - 8);
  v3 = *(v69 + 64);
  __chkstk_darwin();
  v68 = v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v70[55] + 8);
  v6 = v70[54];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v67 = *(AssociatedTypeWitness - 8);
  v8 = *(v67 + 64);
  __chkstk_darwin();
  v10 = v56 - v9;
  v11 = swift_getAssociatedTypeWitness();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin();
  v15 = v56 - v14;
  v16 = *(*(type metadata accessor for Optional() - 8) + 64);
  __chkstk_darwin();
  v18 = v56 - v17;
  v19 = v2[78];
  v20 = *&v1[v19];
  if (v20)
  {
    v21 = v70[20];
    swift_retain_n();
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v71[0] = v25;
      *v24 = 136315138;
      v26 = WiFiInterface.description.getter();
      v28 = v27;

      v29 = sub_100002320(v26, v28, v71);

      *(v24 + 4) = v29;
      _os_log_impl(&_mh_execute_header, v22, v23, "Ignoring request to create AWDL companion low latency interface since it is already present: %s", v24, 0xCu);
      sub_100002A00(v25);
    }

    else
    {
    }
  }

  else
  {
    v60 = v11;
    v61 = v15;
    v62 = v18;
    v63 = v12;
    v57 = v19;
    v64 = AssociatedTypeWitness;
    v65 = v5;
    v58 = v70[20];
    v59 = v10;
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&_mh_execute_header, v30, v31, "Creating companion low latency interface", v32, 2u);
    }

    v33 = *(*v1 + 96);
    swift_beginAccess();
    v34 = v63;
    v36 = v60;
    v35 = v61;
    (*(v63 + 16))(v61, &v1[v33], v60);
    v37 = &v1[*(*v1 + 104)];
    v38 = *v37;
    v39 = v37[1];
    v40 = WiFiInterface.macAddress.getter();
    v70 = v6;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v42 = v62;
    v43 = v72;
    (*(AssociatedConformanceWitness + 16))(4, v38, v39, v40 & 0xFFFFFFFFFFFFLL, v36, AssociatedConformanceWitness);
    v72 = v43;
    v44 = v68;
    v20 = v69;
    v45 = v64;
    v46 = v67;
    if (v43)
    {
      (*(v34 + 8))(v35, v36);
    }

    else
    {
      v56[1] = type metadata accessor for WiFiInterface();
      (*(v34 + 8))(v35, v36);
      (*(v34 + 56))(v42, 0, 1, v36);
      v48 = v59;
      (*(v46 + 16))(v59, &v1[*(*v1 + 112)], v45);
      (v20[2])(v44, &v1[v58], v66);
      v20 = WiFiInterface.__allocating_init(driver:components:logger:)(v42, v48, v44);
      v49 = *&v1[v57];
      *&v1[v57] = v20;

      if (v20)
      {
        sub_10044F61C();
        v50 = (*v20)[52](v71);
        type metadata accessor for WiFiInterface.NeighborDiscoveryTable();
        WiFiInterface.NeighborDiscoveryTable.clearAllPeerPresence()();
        if (v51)
        {
          v50(v71, 1);
        }

        else
        {
          v50(v71, 0);
        }
      }

      else
      {
        v52 = Logger.logObject.getter();
        v53 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v52, v53))
        {
          v54 = swift_slowAlloc();
          *v54 = 0;
          _os_log_impl(&_mh_execute_header, v52, v53, "Failed to create AWDL companion low latency interface", v54, 2u);
        }

        sub_10000B02C();
        v20 = swift_allocError();
        *v55 = xmmword_10047CE50;
        *(v55 + 16) = 1;
        swift_willThrow();
      }
    }
  }

  return v20;
}

uint64_t sub_100453090(uint64_t a1, char *a2)
{
  v2 = *a2;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1004530F0(v2);
  }

  return result;
}

void sub_1004530F0(char a1)
{
  v2 = v1;
  v3 = *v1;
  if (a1)
  {
    v4 = *(v1 + *(v3 + 512));
    v5 = *(v3 + 160);
    if (v4 == 1)
    {

      v6 = Logger.logObject.getter();
      v7 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        v9 = swift_slowAlloc();
        v28 = v9;
        *v8 = 136315138;
        v10 = WiFiInterface.description.getter();
        v12 = v11;

        v13 = sub_100002320(v10, v12, &v28);

        *(v8 + 4) = v13;
        _os_log_impl(&_mh_execute_header, v6, v7, "WiFi powered on, setting link up on %s", v8, 0xCu);
        sub_100002A00(v9);
      }

      else
      {
      }

      WiFiInterface.linkState.setter(1);

      sub_10044C304();
    }

    else
    {
      oslog = Logger.logObject.getter();
      v23 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(oslog, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&_mh_execute_header, oslog, v23, "WiFi powered on but system sleep active, skipping link up till system wake indication", v24, 2u);
      }
    }
  }

  else
  {
    v14 = *(v3 + 160);

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v28 = v18;
      *v17 = 136315138;
      v19 = WiFiInterface.description.getter();
      v21 = v20;

      v22 = sub_100002320(v19, v21, &v28);

      *(v17 + 4) = v22;
      _os_log_impl(&_mh_execute_header, v15, v16, "WiFi powered off, setting link down on %s", v17, 0xCu);
      sub_100002A00(v18);
    }

    else
    {
    }

    WiFiInterface.linkState.setter(0);
    v25 = *(*v2 + 712);
    v26 = *(v2 + v25);
    sub_10044EF5C(0);
    *(v2 + v25) = 0;

    sub_10044F8C8(v26);
  }
}

void sub_100453468()
{
  v1 = *(v0 + *(*v0 + 448));

  v2 = *(v0 + *(*v0 + 456));

  v3 = *(v0 + *(*v0 + 464));

  v4 = (v0 + *(*v0 + 472));
  v5 = *v4;
  v6 = v4[1];

  v7 = *(v0 + *(*v0 + 480));

  v8 = *(v0 + *(*v0 + 496));

  v9 = *(v0 + *(*v0 + 504));

  sub_100016290(v0 + *(*v0 + 544), &unk_100597330, &unk_100481FA0);
  v10 = *(v0 + *(*v0 + 552));

  v11 = *(v0 + *(*v0 + 560));

  v12 = *(v0 + *(*v0 + 568));

  v13 = *(v0 + *(*v0 + 576));

  v14 = *(v0 + *(*v0 + 584));

  v15 = *(v0 + *(*v0 + 592));

  v16 = *(*v0 + 600);
  v17 = type metadata accessor for DispatchTime();
  v18 = *(*(v17 - 8) + 8);
  v18(v0 + v16, v17);
  v19 = *(v0 + *(*v0 + 608));

  v20 = *(v0 + *(*v0 + 616));

  v21 = *(v0 + *(*v0 + 624));

  v18(v0 + *(*v0 + 632), v17);
  sub_100016290(v0 + *(*v0 + 640), &unk_100597330, &unk_100481FA0);
  sub_100016290(v0 + *(*v0 + 648), &unk_100597330, &unk_100481FA0);

  v22 = *(v0 + *(*v0 + 688));

  sub_100016290(v0 + *(*v0 + 696), &unk_100597330, &unk_100481FA0);
  v23 = *(v0 + *(*v0 + 704));

  v24 = *(v0 + *(*v0 + 720));
  swift_unknownObjectRelease();

  v25 = *(v0 + *(*v0 + 736));
  swift_unownedRelease();
  v26 = *(v0 + *(*v0 + 744));

  v27 = *(v0 + *(*v0 + 752));

  v28 = *(v0 + *(*v0 + 760));

  v29 = *(v0 + *(*v0 + 776));

  v30 = *(v0 + *(*v0 + 784));
}

uint64_t sub_1004538C0()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin();
  v5 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5, v0 + *(*v0 + 160), v1);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v46 = v9;
    *v8 = 136315138;
    v10 = WiFiInterface.description.getter();
    v12 = v11;

    v13 = sub_100002320(v10, v12, &v46);

    *(v8 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v6, v7, "Destroyed %s", v8, 0xCu);
    sub_100002A00(v9);
  }

  else
  {
  }

  (*(v2 + 8))(v5, v1);
  v14 = WiFiInterface.deinit();
  v15 = *(v14 + *(*v14 + 448));

  v16 = *(v14 + *(*v14 + 456));

  v17 = *(v14 + *(*v14 + 464));

  v18 = (v14 + *(*v14 + 472));
  v19 = *v18;
  v20 = v18[1];

  v21 = *(v14 + *(*v14 + 480));

  v22 = *(v14 + *(*v14 + 496));

  v23 = *(v14 + *(*v14 + 504));

  sub_100016290(v14 + *(*v14 + 544), &unk_100597330, &unk_100481FA0);
  v24 = *(v14 + *(*v14 + 552));

  v25 = *(v14 + *(*v14 + 560));

  v26 = *(v14 + *(*v14 + 568));

  v27 = *(v14 + *(*v14 + 576));

  v28 = *(v14 + *(*v14 + 584));

  v29 = *(v14 + *(*v14 + 592));

  v30 = *(*v14 + 600);
  v31 = type metadata accessor for DispatchTime();
  v32 = *(*(v31 - 8) + 8);
  v32(v14 + v30, v31);
  v33 = *(v14 + *(*v14 + 608));

  v34 = *(v14 + *(*v14 + 616));

  v35 = *(v14 + *(*v14 + 624));

  v32(v14 + *(*v14 + 632), v31);
  sub_100016290(v14 + *(*v14 + 640), &unk_100597330, &unk_100481FA0);
  sub_100016290(v14 + *(*v14 + 648), &unk_100597330, &unk_100481FA0);

  v36 = *(v14 + *(*v14 + 688));

  sub_100016290(v14 + *(*v14 + 696), &unk_100597330, &unk_100481FA0);
  v37 = *(v14 + *(*v14 + 704));

  v38 = *(v14 + *(*v14 + 720));
  swift_unknownObjectRelease();

  v39 = *(v14 + *(*v14 + 736));
  swift_unownedRelease();
  v40 = *(v14 + *(*v14 + 744));

  v41 = *(v14 + *(*v14 + 752));

  v42 = *(v14 + *(*v14 + 760));

  v43 = *(v14 + *(*v14 + 776));

  return v14;
}

uint64_t sub_100453EE8()
{
  v0 = *sub_1004538C0();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_100453F54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for DispatchTime();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  v9 = type metadata accessor for AWDLInterface.AdditionalTrafficRegistrationInformation();
  sub_10001CEA8(a2, a4 + *(v9 + 36), &unk_100597330, &unk_100481FA0);
  return sub_10001CEA8(a3, a4 + *(v9 + 40), &qword_10058F4D0, &qword_100491AB0);
}

void sub_100454028(void *a1, int a2, int a3)
{
  v4 = v3;
  v241 = a3;
  v246 = a2;
  v6 = *v3;
  v237 = type metadata accessor for DispatchTimeInterval();
  v235 = *(v237 - 8);
  v7 = *(v235 + 64);
  __chkstk_darwin();
  v233 = (&v229 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v240 = *(v6 + 440);
  v9 = *(v240 + 8);
  v10 = *(v6 + 432);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v266 = AssociatedConformanceWitness;
  v267 = AssociatedTypeWitness;
  swift_getAssociatedConformanceWitness();
  v265 = type metadata accessor for Preferences();
  v264 = *(v265 - 8);
  v13 = *(v264 + 64);
  __chkstk_darwin();
  v263 = &v229 - v14;
  v252 = v9;
  v260 = v10;
  v254 = swift_getAssociatedTypeWitness();
  v261 = *(v254 - 8);
  v15 = *(v261 + 64);
  __chkstk_darwin();
  v243 = &v229 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v253 = &v229 - v17;
  v18 = *(*(sub_10005DC58(&qword_10058D450, &unk_100486D78) - 8) + 64);
  __chkstk_darwin();
  v230 = &v229 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v236 = &v229 - v20;
  __chkstk_darwin();
  v239 = &v229 - v21;
  __chkstk_darwin();
  v23 = &v229 - v22;
  __chkstk_darwin();
  v25 = &v229 - v24;
  v26 = type metadata accessor for AWDLPeer(0);
  v234 = *(v26 - 8);
  v27 = *(v234 + 64);
  __chkstk_darwin();
  v232 = &v229 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v231 = v28;
  __chkstk_darwin();
  v30 = &v229 - v29;
  v268 = a1;
  v31 = [a1 peerAddress];
  v32 = WiFiMACAddress.wifiAddress.getter();

  v262 = v32;
  sub_100041B60(v32 & 0xFFFFFFFFFFFFLL, v30);
  v33 = v4;
  v34 = *&v4[*(*v4 + 736)];
  swift_unownedRetainStrong();
  v35 = sub_1003EB084();
  v37 = v36;
  v39 = v38;
  v272 = v40;
  v242 = v34;

  v269 = v26;
  v41 = *(v26 + 56);
  v271 = v30;
  v251 = v41;
  sub_100012400(&v30[v41], v25, &qword_10058D450, &unk_100486D78);
  v42 = type metadata accessor for AWDLActionFrame.DataPathState(0);
  v43 = *(v42 - 8);
  v44 = *(v43 + 48);
  v250 = v42;
  v249 = v44;
  v248 = v43 + 48;
  if ((v44)(v25, 1) == 1)
  {
    sub_100016290(v25, &qword_10058D450, &unk_100486D78);
    v259 = 0;
    v258 = 0;
    v257 = 0;
    v256 = 0;
    v45 = 0;
    v255 = 0;
    v46 = 1;
  }

  else
  {
    v45 = *(v25 + 15);
    v47 = *(v25 + 26);
    v48 = v47 | (v45 << 32);
    v46 = v25[32];
    sub_1000473F0(v25, type metadata accessor for AWDLActionFrame.DataPathState);
    v259 = v47;
    v258 = v48 >> 8;
    v257 = v48 >> 16;
    v256 = v48 >> 24;
    v255 = v45 >> 8;
  }

  __chkstk_darwin();
  v49 = v271;
  *(&v229 - 2) = v271;
  *(&v229 - 1) = v33;
  v50 = sub_10044BD2C(sub_1004767E0, (&v229 - 4), v35, v37, v39, v272 & 0xFFFFFFFFFFFFLL);
  v238 = 0;
  v51 = v46;
  v52 = v46 & BYTE6(v50) & 1;
  v245 = v51;
  if (v51)
  {
    v53 = v269;
    if (v37)
    {
LABEL_8:

      goto LABEL_11;
    }
  }

  else
  {
    v53 = v269;
    if ((v50 & 0x1000000000000) == 0)
    {
      v52 = static NANClusterChangeEvent.__derived_struct_equals(_:_:)((v45 << 32) | (v255 << 40) | (v256 << 24) | (v257 << 16) | (v258 << 8) | v259, v50 & 0xFFFFFFFFFFFFLL);
    }

    if (v37)
    {
      goto LABEL_8;
    }
  }

  v272 = 0x300000000;
LABEL_11:
  v54 = v33;
  v55 = (v49 + v53[18]);
  v56 = v55[1];
  v247 = v45;
  if (v56)
  {
    v57 = *v55;
LABEL_15:
    v270 = v57;
    goto LABEL_16;
  }

  sub_100012400(v49 + v251, v23, &qword_10058D450, &unk_100486D78);
  if (v249(v23, 1, v250) == 1)
  {
    sub_100016290(v23, &qword_10058D450, &unk_100486D78);
    v57 = 0x300000000;
    goto LABEL_15;
  }

  v270 = *(v23 + 5) | (*(v23 + 12) << 32);
  sub_1000473F0(v23, type metadata accessor for AWDLActionFrame.DataPathState);
LABEL_16:
  v58 = *(*v33 + 160);
  v59 = v268;
  v60 = Logger.logObject.getter();
  v61 = static os_log_type_t.default.getter();

  v62 = os_log_type_enabled(v60, v61);
  v244 = v50;
  v268 = v59;
  if (v62)
  {
    v63 = swift_slowAlloc();
    v275 = swift_slowAlloc();
    *v63 = 136315906;
    v64 = [v59 uniqueIdentifier];
    v65 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v67 = v66;

    v68 = sub_100002320(v65, v67, &v275);

    *(v63 + 4) = v68;
    *(v63 + 12) = 2080;
    v70 = Optional<A>.description.getter(v272 & 0xFFFFFFFFFFFFLL, v69);
    v72 = sub_100002320(v70, v71, &v275);

    *(v63 + 14) = v72;
    *(v63 + 22) = 2080;
    v73 = WiFiAddress.description.getter(v262 & 0xFFFFFFFFFFFFLL);
    v75 = sub_100002320(v73, v74, &v275);

    *(v63 + 24) = v75;
    *(v63 + 32) = 2080;
    v49 = v271;
    v77 = Optional<A>.description.getter(v270 & 0xFFFFFFFFFFFFLL, v76);
    v79 = sub_100002320(v77, v78, &v275);

    *(v63 + 34) = v79;
    v53 = v269;
    _os_log_impl(&_mh_execute_header, v60, v61, "Evaluating retro mode for %s with my infra: %s, peer %s infra: %s", v63, 0x2Au);
    swift_arrayDestroy();
  }

  v80 = v49 + v53[16];
  if ((*(v80 + 2) & 1) == 0 && AWDLActionFrame.Version.platformType.getter(*v80) == 3)
  {
    v81 = *(*v54 + 96);
    swift_beginAccess();
    v82 = v261;
    v83 = v253;
    v84 = v254;
    (*(v261 + 16))(v253, &v54[v81], v254);
    v85 = swift_getAssociatedConformanceWitness();
    v86 = (*(v85 + 8))(v84, v85);
    (*(v82 + 8))(v83, v84);
    v275 = *WiFiDriverCapabilities.supportsSimultaneousDualBand.unsafeMutableAddressor();
    v273 = v86;
    sub_1000C2A14();

    LOBYTE(v83) = dispatch thunk of SetAlgebra.isSuperset(of:)();

    if (v83 & 1) != 0 && (*PreferenceDefaults.isiPad.unsafeMutableAddressor())
    {
      goto LABEL_25;
    }
  }

  v87 = v49 + v53[17];
  if (*(v87 + 12) << 32 != 0x400000000)
  {
    v88 = *(v87 + 24);
    if ((*AWDLActionFrame.RealtimeGroup.AdditionalFlags.disableWiFiDisconnect.unsafeMutableAddressor() & ~v88) == 0)
    {
      goto LABEL_25;
    }
  }

  v89 = *(*v54 + 112);
  v90 = v266;
  v91 = *(v266 + 120);
  v92 = swift_checkMetadataState();
  v93 = v263;
  v91(v92, v90);
  v94 = v265;
  LOBYTE(v89) = Preferences.disableWiFiDisconnectRemoteCamera.getter(v265);
  (*(v264 + 8))(v93, v94);
  if (v89)
  {
LABEL_25:
    v95 = Logger.logObject.getter();
    v96 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v95, v96))
    {
      v97 = swift_slowAlloc();
      *v97 = 0;
      _os_log_impl(&_mh_execute_header, v95, v96, "Skipping evaluation of infra disconnect policy", v97, 2u);
    }

    goto LABEL_28;
  }

  LODWORD(v269) = v52;
  v98 = v272 & 0xFF00000000;
  v99 = BYTE4(v272);
  v267 = v58;
  if ((v272 & 0xFF00000000) == 0x300000000)
  {
    goto LABEL_32;
  }

  if (BYTE4(v272))
  {
    goto LABEL_32;
  }

  v100 = *(*v54 + 96);
  swift_beginAccess();
  v101 = v261;
  v102 = v253;
  v103 = v254;
  (*(v261 + 16))(v253, &v54[v100], v254);
  v104 = swift_getAssociatedConformanceWitness();
  v105 = (*(v104 + 8))(v103, v104);
  (*(v101 + 8))(v102, v103);
  v275 = *WiFiDriverCapabilities.supportsSimultaneousDualBand.unsafeMutableAddressor();
  v273 = v105;
  sub_1000C2A14();

  LOBYTE(v102) = dispatch thunk of SetAlgebra.isSuperset(of:)();

  if (v102)
  {
LABEL_32:
    if ((v270 & 0xFF00000000) == 0x300000000)
    {
      v107 = 0;
      if (v98 == 0x300000000)
      {
        goto LABEL_28;
      }

      goto LABEL_59;
    }

    if ((v270 & 0xFF00000000) == 0)
    {
      v106 = v239;
      sub_100012400(v49 + v251, v239, &qword_10058D450, &unk_100486D78);
      if (v249(v106, 1, v250) == 1)
      {
        sub_100016290(v106, &qword_10058D450, &unk_100486D78);
LABEL_45:
        v108 = 0;
        v107 = v98 == 0x300000000 || v272 != v270;
        v109 = v270;
        goto LABEL_52;
      }

      v110 = *(v106 + 84);
      sub_1000473F0(v106, type metadata accessor for AWDLActionFrame.DataPathState);
      if ((v110 & 1) == 0)
      {
        goto LABEL_45;
      }
    }

    v108 = 0;
    v107 = 0;
    v109 = v270;
    goto LABEL_52;
  }

  v108 = (v270 & 0xFF00000000) == 0x300000000;
  if ((v270 & 0xFF00000000) == 0x300000000)
  {
    v109 = 0;
  }

  else
  {
    v109 = v270;
  }

  v107 = 1;
LABEL_52:
  if (v98 == 0x300000000)
  {
    if (v108 && (v270 & 0xFF00000000) == 0x300000000 && !v107)
    {
      goto LABEL_28;
    }

    v112 = 0;
    goto LABEL_73;
  }

  if (v109 != v272)
  {
    v108 = 1;
  }

  if (!v108)
  {
    if ((v270 & 0xFF00000000) == 0x300000000)
    {
      v113 = 3;
    }

    else
    {
      v113 = BYTE4(v270);
    }

    if (v99 == 3)
    {
      if (v113 == 3 && !v107)
      {
        goto LABEL_28;
      }

      goto LABEL_66;
    }

    if (v113 != 3 && ((0x801004u >> (8 * BYTE4(v272))) & 0xFFC) == ((0x801004u >> (8 * v113)) & 0xFFC) && !v107)
    {
      goto LABEL_28;
    }
  }

LABEL_59:
  if (v99 < 2)
  {
    v112 = 0;
    goto LABEL_72;
  }

LABEL_66:
  v112 = (v270 & 0xFE00000000) == 0 || (v270 & 0xFF00000000) == 0x300000000;
LABEL_72:
  v115 = v272;
  if (Channel.isDFS.getter(v272))
  {
    goto LABEL_83;
  }

LABEL_73:
  v116 = (v270 & 0xFF00000000);
  if ((v270 & 0xFF00000000) == 0x300000000)
  {
LABEL_74:
    if (!v112 && !v107)
    {
      goto LABEL_28;
    }

    goto LABEL_77;
  }

  if (!Channel.isDFS.getter(v270))
  {
    if (v98 != 0x300000000 && v99 == 1 && v116 == &_mh_execute_header)
    {
      v115 = v272;
      goto LABEL_83;
    }

    goto LABEL_74;
  }

LABEL_77:
  v266 = v99;
  if (v98 == 0x300000000)
  {
    goto LABEL_85;
  }

  v115 = v272;
  v99 = v266;
LABEL_83:
  v266 = v99;
  if (Channel.isDFS.getter(v115 | v98))
  {
    goto LABEL_87;
  }

  v116 = (v270 & 0xFF00000000);
LABEL_85:
  if (v116 == 0x300000000 || !Channel.isDFS.getter(v270))
  {
    goto LABEL_101;
  }

LABEL_87:
  v117 = *(*v54 + 96);
  swift_beginAccess();
  v118 = v261;
  v119 = *(v261 + 16);
  v264 = v117;
  v120 = v253;
  v121 = v254;
  v272 = v119;
  v119(v253, &v54[v117], v254);
  v122 = swift_getAssociatedConformanceWitness();
  v263 = *(v122 + 8);
  v123 = (v263)(v121, v122);
  v252 = *(v118 + 8);
  v252(v120, v121);
  v124 = *WiFiDriverCapabilities.supportsDFSProxy.unsafeMutableAddressor();
  v274 = v123;
  v275 = v124;
  v125 = sub_1000C2A14();

  v265 = v125;
  LOBYTE(v120) = dispatch thunk of SetAlgebra.isSuperset(of:)();

  if ((v120 & 1) == 0)
  {
    goto LABEL_101;
  }

  v126 = v236;
  sub_100012400(&v271[v251], v236, &qword_10058D450, &unk_100486D78);
  if (v249(v126, 1, v250) == 1)
  {
    goto LABEL_89;
  }

  v127 = *(v126 + 85);
  sub_1000473F0(v126, type metadata accessor for AWDLActionFrame.DataPathState);
  if (v127 != 1)
  {
    goto LABEL_101;
  }

  if (v98 != 0x300000000 && v266)
  {
    v49 = v271;
    v128 = v270 & 0xFF00000000;
    if ((v270 & 0xFF00000000) != 0x300000000)
    {
      goto LABEL_100;
    }

LABEL_28:
    sub_1000473F0(v49, type metadata accessor for AWDLPeer);
    return;
  }

  v129 = v253;
  v130 = v254;
  (v272)(v253, &v54[v264], v254);
  v131 = (v263)(v130, v122);
  v252(v129, v130);
  v132 = *WiFiDriverCapabilities.supportsSimultaneousDualBand.unsafeMutableAddressor();
  v274 = v131;
  v275 = v132;

  v133 = dispatch thunk of SetAlgebra.isSuperset(of:)();

  if (v133)
  {
    v49 = v271;
    goto LABEL_28;
  }

  v49 = v271;
  v128 = v270 & 0xFF00000000;
  if ((v270 & 0xFF00000000) == 0x300000000)
  {
    goto LABEL_28;
  }

LABEL_100:
  if (!v128)
  {
    v126 = v230;
    sub_100012400(&v271[v251], v230, &qword_10058D450, &unk_100486D78);
    if (v249(v126, 1, v250) == 1)
    {
LABEL_89:
      sub_100016290(v126, &qword_10058D450, &unk_100486D78);
      goto LABEL_101;
    }

    v228 = *(v126 + 84);
    sub_1000473F0(v126, type metadata accessor for AWDLActionFrame.DataPathState);
    if (v228)
    {
      v49 = v271;
      goto LABEL_28;
    }
  }

LABEL_101:
  v134 = Logger.logObject.getter();
  v135 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v134, v135))
  {
    v136 = swift_slowAlloc();
    v275 = swift_slowAlloc();
    v137 = v259;
    v138 = v258;
    *v136 = 136315394;
    v139 = v257;
    v140 = v256;
    v141 = v247;
    v142 = v255;
    v49 = v271;
    v143 = v245;
    v144 = v244;
    if (v245)
    {
      v145 = WiFiAddress.zero.unsafeMutableAddressor();
      v137 = *v145;
      v138 = v145[1];
      v139 = v145[2];
      v140 = v145[3];
      v141 = v145[4];
      v142 = v145[5];
    }

    v146 = WiFiAddress.description.getter((v141 << 32) | (v142 << 40) | (v140 << 24) | (v139 << 16) | (v138 << 8) | v137);
    v148 = sub_100002320(v146, v147, &v275);

    *(v136 + 4) = v148;
    *(v136 + 12) = 2080;
    if ((v144 & 0x1000000000000) != 0)
    {
      v149 = WiFiAddress.zero.unsafeMutableAddressor();
      v150 = *v149;
      LOBYTE(v151) = v149[1];
      LOBYTE(v152) = v149[2];
      LOBYTE(v153) = v149[3];
      LOBYTE(v154) = v149[4];
      LOBYTE(v155) = v149[5];
    }

    else
    {
      v151 = v144 >> 8;
      v152 = v144 >> 16;
      v153 = v144 >> 24;
      v154 = HIDWORD(v144);
      v150 = v144;
      v155 = v144 >> 40;
    }

    v157 = WiFiAddress.description.getter((v154 << 32) | (v155 << 40) | (v153 << 24) | (v152 << 16) | (v151 << 8) | v150);
    v159 = sub_100002320(v157, v158, &v275);

    *(v136 + 14) = v159;
    _os_log_impl(&_mh_execute_header, v134, v135, "Comparing peer SSID hash %s with my SSID hash %s", v136, 0x16u);
    swift_arrayDestroy();

    v156 = v247;
  }

  else
  {

    v49 = v271;
    v156 = v247;
    v143 = v245;
    v144 = v244;
  }

  if ((v246 & 1) == 0)
  {
    if (v143)
    {
      if ((v144 & 0x1000000000000) == 0)
      {
        goto LABEL_110;
      }
    }

    else if ((v144 & 0x1000000000000) != 0 || !static NANClusterChangeEvent.__derived_struct_equals(_:_:)((v156 << 32) | (v255 << 40) | (v256 << 24) | (v257 << 16) | (v258 << 8) | v259, v144 & 0xFFFFFFFFFFFFLL))
    {
      goto LABEL_110;
    }

    v204 = v268;
    v205 = Logger.logObject.getter();
    v206 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v205, v206))
    {
      v207 = swift_slowAlloc();
      v275 = swift_slowAlloc();
      *v207 = 136315394;
      v208 = [v204 uniqueIdentifier];
      v209 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v211 = v210;

      v212 = sub_100002320(v209, v211, &v275);

      *(v207 + 4) = v212;
      *(v207 + 12) = 2080;
      v213 = WiFiAddress.description.getter(v262 & 0xFFFFFFFFFFFFLL);
      v215 = sub_100002320(v213, v214, &v275);

      *(v207 + 14) = v215;
      _os_log_impl(&_mh_execute_header, v205, v206, "Not entering retro mode on responder for %s from %s because expecting to steer infra", v207, 0x16u);
      swift_arrayDestroy();
    }

    v216 = v237;
    v217 = v235;
    v218 = v234;
    v272 = type metadata accessor for P2PTimer();
    v219 = v233;
    *v233 = 5;
    (*(v217 + 104))(v219, enum case for DispatchTimeInterval.seconds(_:), v216);
    v220 = *OS_dispatch_queue.awdl.unsafeMutableAddressor();
    v221 = swift_allocObject();
    swift_weakInit();
    v222 = v232;
    sub_100027648(v49, v232, type metadata accessor for AWDLPeer);
    v223 = (*(v218 + 80) + 48) & ~*(v218 + 80);
    v224 = swift_allocObject();
    v225 = v240;
    v224[2] = v260;
    v224[3] = v225;
    v224[4] = v221;
    v224[5] = v204;
    sub_10003DFE0(v222, v224 + v223, type metadata accessor for AWDLPeer);
    v226 = v204;
    v227 = v220;

    static P2PTimer.async(after:on:execute:)(v219, v227, sub_100476800, v224);

    (*(v217 + 8))(v219, v237);

    goto LABEL_28;
  }

LABEL_110:
  v160 = v268;
  v161 = Logger.logObject.getter();
  v162 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v161, v162))
  {
    v163 = swift_slowAlloc();
    v275 = swift_slowAlloc();
    *v163 = 136315394;
    v164 = [v160 uniqueIdentifier];
    v165 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v167 = v166;

    v168 = sub_100002320(v165, v167, &v275);

    *(v163 + 4) = v168;
    *(v163 + 12) = 2080;
    v169 = WiFiAddress.description.getter(v262 & 0xFFFFFFFFFFFFLL);
    v171 = sub_100002320(v169, v170, &v275);

    *(v163 + 14) = v171;
    _os_log_impl(&_mh_execute_header, v161, v162, "Entering retro mode for %s from %s, disabling infrastructure Wi-Fi", v163, 0x16u);
    swift_arrayDestroy();
  }

  v172 = v261;
  v173 = v243;
  swift_unownedRetainStrong();
  sub_1003EFB38(1);

  v174 = *(*v54 + 784);
  v175 = *&v54[v174];
  *&v54[v174] = v160;

  v176 = *(*v54 + 528);
  v177 = *&v54[v176];
  v178 = __OFADD__(v177, 1);
  v179 = v177 + 1;
  if (!v178)
  {
    *&v54[v176] = v179;
    if (v241)
    {
      v180 = v160;
    }

    else
    {
      v181 = *(*v54 + 96);
      swift_beginAccess();
      v182 = v254;
      (*(v172 + 16))(v173, &v54[v181], v254);
      v183 = swift_getAssociatedConformanceWitness();
      v184 = v160;
      v185 = v172;
      v186 = v173;
      v187 = v183;
      v188 = *(v183 + 80);
      v272 = v184;
      v189 = v238;
      v188(32, v262 & 0xFFFFFFFFFFFFLL, v182, v187);
      if (v189)
      {
        (*(v185 + 8))(v186, v182);
        v190 = v272;
        swift_errorRetain();
        v191 = Logger.logObject.getter();
        v192 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v191, v192))
        {
          v193 = swift_slowAlloc();
          v194 = swift_slowAlloc();
          v274 = swift_slowAlloc();
          *v193 = 136315650;
          v195 = [v190 uniqueIdentifier];
          v196 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v198 = v197;

          v199 = sub_100002320(v196, v198, &v274);

          *(v193 + 4) = v199;
          *(v193 + 12) = 2080;
          v200 = WiFiAddress.description.getter(v262 & 0xFFFFFFFFFFFFLL);
          v202 = sub_100002320(v200, v201, &v274);

          *(v193 + 14) = v202;
          *(v193 + 22) = 2112;
          swift_errorRetain();
          v203 = _swift_stdlib_bridgeErrorToNSError();
          *(v193 + 24) = v203;
          *v194 = v203;
          _os_log_impl(&_mh_execute_header, v191, v192, "Failed to disable infrastructure Wi-Fi on entering retro mode for %s from %s: %@", v193, 0x20u);
          sub_100016290(v194, &qword_10058B780, &qword_100480AC0);

          swift_arrayDestroy();
        }

        else
        {
        }
      }

      else
      {
        (*(v185 + 8))(v186, v182);
      }
    }

    goto LABEL_28;
  }

  __break(1u);
}

uint64_t sub_100455E40(void *a1)
{
  v2 = v1;
  v4 = *(*(type metadata accessor for AWDLPeer(0) - 8) + 64);
  __chkstk_darwin();
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [a1 uniqueIdentifier];
  v8 = AWDLTrafficRegistrationService.showsInfraDisconnectUINotifications.getter();

  if (v8)
  {
    sub_100454028(a1, 0, 0);
    v10 = v9;
    v11 = BYTE1(v9);
    *(v2 + *(*v2 + 536)) = v9;
  }

  else
  {
    v10 = 2;
    v11 = 2;
  }

  v12 = [a1 peerAddress];
  v13 = WiFiMACAddress.wifiAddress.getter();

  sub_100041B60(v13 & 0xFFFFFFFFFFFFLL, v6);
  sub_100465BB4(a1, v11, v10, v6);
  return sub_1000473F0(v6, type metadata accessor for AWDLPeer);
}

BOOL sub_100455F98(void **a1, uint64_t a2, int *a3, uint64_t *a4, uint64_t a5)
{
  v122 = a5;
  v133 = a3;
  v7 = *(*a4 + 432);
  v8 = *a4;
  v130 = a4;
  v9 = *(v8 + 440);
  v10 = type metadata accessor for AWDLInterface.AdditionalTrafficRegistrationInformation();
  v121 = type metadata accessor for Optional();
  v120 = *(v121 - 8);
  v11 = *(v120 + 64);
  __chkstk_darwin();
  v119 = &v110 - v12;
  v13 = type metadata accessor for DispatchTimeInterval();
  v125 = *(v13 - 8);
  v126 = v13;
  v14 = *(v125 + 64);
  __chkstk_darwin();
  v124 = &v110 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v132 = &v110 - v16;
  v17 = *(*(sub_10005DC58(&unk_100597330, &unk_100481FA0) - 8) + 64);
  __chkstk_darwin();
  v127 = (&v110 - v18);
  v131 = type metadata accessor for DispatchTime();
  v134 = *(v131 - 8);
  v19 = *(v134 + 64);
  __chkstk_darwin();
  v116 = &v110 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v129 = &v110 - v21;
  sub_100018AB4(255, &qword_100595230, AWDLTrafficRegistrationConfiguration_ptr);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v23 = *(TupleTypeMetadata2 - 8);
  v24 = *(v23 + 64);
  __chkstk_darwin();
  v123 = (&v110 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v128 = &v110 - v26;
  __chkstk_darwin();
  v117 = &v110 - v27;
  __chkstk_darwin();
  v29 = (&v110 - v28);
  __chkstk_darwin();
  v31 = (&v110 - v30);
  v32 = __chkstk_darwin();
  v34 = &v110 - v33;
  v35 = *a1;
  *(&v110 - v33) = *a1;
  v36 = *(v32 + 48);
  v137 = *(v10 - 8);
  v37 = *(v137 + 16);
  v140 = v10;
  v37(&v110 + v36 - v33, a2, v10);
  v138 = v23;
  v38 = *(v23 + 16);
  v135 = v23 + 16;
  v136 = v34;
  v39 = v34;
  v40 = TupleTypeMetadata2;
  v139 = v38;
  v38(v31, v39, TupleTypeMetadata2);
  v41 = *v31;
  v118 = v35;
  v42 = [v41 uniqueIdentifier];

  v43 = [v133 uniqueIdentifier];
  v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v46 = v45;
  if (v44 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v46 == v47)
  {
    LODWORD(v49) = 1;
  }

  else
  {
    LODWORD(v49) = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v50 = v40;
  v51 = v40[12];

  v52 = *(v137 + 8);
  v53 = v31 + v51;
  v54 = v140;
  v52(v53, v140);
  v55 = v139;
  v56 = v136;
  if (v49)
  {
    v115 = v49;
    v139(v29, v136, v50);

    v57 = v29 + v50[12];
    v49 = v127;
    sub_100012400(&v57[*(v54 + 36)], v127, &unk_100597330, &unk_100481FA0);
    v114 = v52;
    v52(v57, v54);
    v133 = v50;
    v58 = v134;
    v59 = v131;
    if ((*(v134 + 48))(v49, 1, v131) == 1)
    {
      sub_100016290(v49, &unk_100597330, &unk_100481FA0);
      LOBYTE(v49) = v115;
      v50 = v133;
    }

    else
    {
      (*(v58 + 32))(v129, v49, v59);
      type metadata accessor for P2PTimer();
      v60 = v116;
      variable initialization expression of AWDLPeer.lastUpdated();
      DispatchTime.distance(to:)();
      v61 = *(v58 + 8);
      v134 = v58 + 8;
      v127 = v61;
      v61(v60, v59);
      v62 = *(*v130 + 160);
      v63 = v117;
      v64 = v133;
      v55(v117, v56, v133);
      v55(v128, v56, v64);
      v66 = v124;
      v65 = v125;
      v49 = v126;
      (*(v125 + 16))(v124, v132, v126);

      v67 = Logger.logObject.getter();
      v68 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v67, v68))
      {
        v69 = swift_slowAlloc();
        v112 = v68;
        v70 = v69;
        v116 = v69;
        v113 = swift_slowAlloc();
        v141 = v113;
        *v70 = 136315906;
        v71 = v123;
        v72 = v133;
        v111 = v67;
        v139(v123, v63, v133);
        v73 = *v71;
        v74 = v72[12];
        v75 = [*v71 uniqueIdentifier];

        v114(v71 + v74, v140);
        v110 = *(v138 + 8);
        v110(v63, v72);
        v76 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v78 = v77;

        v79 = sub_100002320(v76, v78, &v141);

        v80 = v116;
        *(v116 + 4) = v79;
        *(v80 + 6) = 2080;
        v81 = v128;
        v139(v71, v128, v72);
        v82 = *v71;
        v83 = v72[12];
        v84 = [*v71 peerAddress];

        v85 = WiFiMACAddress.wifiAddress.getter();
        v114(v71 + v83, v140);
        v110(v81, v72);
        v49 = v126;
        v86 = v140;
        v87 = WiFiAddress.description.getter(v85 & 0xFFFFFFFFFFFFLL);
        v89 = sub_100002320(v87, v88, &v141);

        v90 = v116;
        *(v116 + 14) = v89;
        *(v90 + 11) = 2080;
        v91 = type metadata accessor for AWDLPeer(0);
        v92 = swift_projectBox();
        swift_beginAccess();
        v93 = WiFiAddress.description.getter(*(v92 + *(v91 + 20)) | (*(v92 + *(v91 + 20) + 2) << 16));
        v95 = sub_100002320(v93, v94, &v141);

        *(v90 + 3) = v95;
        *(v90 + 16) = 2080;
        v96 = v124;
        v97 = DispatchTimeInterval.description.getter();
        v99 = v98;
        v100 = *(v125 + 8);
        v100(v96, v49);
        v101 = sub_100002320(v97, v99, &v141);
        v102 = v123;

        *(v90 + 34) = v101;
        v103 = v111;
        _os_log_impl(&_mh_execute_header, v111, v112, "Cleared responder traffic registration for %s from %s (new registration from %s while in recovery for %s)", v90, 0x2Au);
        swift_arrayDestroy();
      }

      else
      {
        v104 = *(v138 + 8);
        v105 = v133;
        v104(v128, v133);
        v104(v63, v105);

        v100 = *(v65 + 8);
        v100(v66, v49);
        v102 = v123;
        v86 = v140;
      }

      v106 = v136;
      v50 = v133;
      v139(v102, v136, v133);

      v107 = v137;
      v108 = v119;
      (*(v137 + 32))(v119, v102 + v50[12], v86);
      (*(v107 + 56))(v108, 0, 1, v86);
      sub_100456BB0(v118, v108);
      v56 = v106;
      (*(v120 + 8))(v108, v121);
      v100(v132, v49);
      v127(v129, v131);
      LOBYTE(v49) = v115;
    }
  }

  (*(v138 + 8))(v56, v50);
  return (v49 & 1) == 0;
}

void sub_100456BB0(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(*v2 + 432);
  v7 = *(*v2 + 440);
  v8 = type metadata accessor for AWDLInterface.AdditionalTrafficRegistrationInformation();
  v9 = type metadata accessor for Optional();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin();
  v13 = &v22 - v12;
  v14 = *(v8 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin();
  v17 = &v22 - v16;
  (*(v10 + 16))(v13, a2, v9);
  if ((*(v14 + 48))(v13, 1, v8) == 1)
  {
    (*(v10 + 8))(v13, v9);
  }

  else
  {
    (*(v14 + 32))(v17, v13, v8);
    sub_1004657B4(a1, v17, 0);
    (*(v14 + 8))(v17, v8);
  }

  v18 = *(v3 + *(*v3 + 784));
  if (v18)
  {
    sub_100018AB4(0, &qword_100595230, AWDLTrafficRegistrationConfiguration_ptr);
    v19 = v18;
    v20 = a1;
    v21 = static NSObject.== infix(_:_:)();

    if (v21)
    {
      sub_1004601EC(v20);
    }
  }
}

BOOL sub_100456E34(id *a1, uint64_t a2)
{
  v3 = [*a1 peerAddress];
  v4 = WiFiMACAddress.wifiAddress.getter();

  swift_beginAccess();
  v5 = type metadata accessor for AWDLPeer(0);
  return static NANClusterChangeEvent.__derived_struct_equals(_:_:)(v4 & 0xFFFFFFFFFFFFLL, *(a2 + *(v5 + 20)) | (*(a2 + *(v5 + 20) + 2) << 16));
}

void sub_100456ED0(id *a1, uint64_t a2)
{
  [*a1 copy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_100018AB4(0, &qword_100595230, AWDLTrafficRegistrationConfiguration_ptr);
  swift_dynamicCast();
  [v36 setOptions:{objc_msgSend(v36, "options") | &_mh_execute_header}];
  sub_100457398(v36, 1);
  if (v2)
  {
    v4 = *(*a2 + 160);
    v5 = v36;

    swift_errorRetain();
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      *v8 = 136315650;
      v9 = [v5 uniqueIdentifier];
      v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = v11;

      v13 = sub_100002320(v10, v12, &v36);

      *(v8 + 4) = v13;
      *(v8 + 12) = 2080;
      v14 = type metadata accessor for AWDLPeer(0);
      v15 = swift_projectBox();
      swift_beginAccess();
      v16 = WiFiAddress.description.getter(*(v15 + *(v14 + 20)) | (*(v15 + *(v14 + 20) + 2) << 16));
      v18 = sub_100002320(v16, v17, &v36);

      *(v8 + 14) = v18;
      *(v8 + 22) = 2112;
      swift_errorRetain();
      v19 = _swift_stdlib_bridgeErrorToNSError();
      *(v8 + 24) = v19;
      *v35 = v19;
      _os_log_impl(&_mh_execute_header, v6, v7, "Failed to recover the traffic registration for %s to %s: %@", v8, 0x20u);
      sub_100016290(v35, &qword_10058B780, &qword_100480AC0);

      swift_arrayDestroy();
    }

    else
    {
    }
  }

  else
  {
    v20 = *(*a2 + 160);
    v21 = v36;

    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      *v24 = 136315394;
      v25 = [v21 uniqueIdentifier];
      v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v28 = v27;

      v29 = sub_100002320(v26, v28, &v36);

      *(v24 + 4) = v29;
      *(v24 + 12) = 2080;
      v30 = type metadata accessor for AWDLPeer(0);
      v31 = swift_projectBox();
      swift_beginAccess();
      v32 = WiFiAddress.description.getter(*(v31 + *(v30 + 20)) | (*(v31 + *(v30 + 20) + 2) << 16));
      v34 = sub_100002320(v32, v33, &v36);

      *(v24 + 14) = v34;
      _os_log_impl(&_mh_execute_header, v22, v23, "Successfully recovered registration for %s to %s", v24, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }
  }
}

void sub_100457398(void *a1, int a2)
{
  v95 = a2;
  v5 = *v2;
  v96 = *(*v2 + 440);
  v6 = *(v96 + 8);
  v94 = *(v5 + 432);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v100 = *(AssociatedTypeWitness - 8);
  v7 = *(v100 + 64);
  __chkstk_darwin();
  v9 = &v92 - v8;
  v10 = [a1 uniqueIdentifier];
  v101 = [a1 options];
  v11 = [a1 uniqueIdentifier];
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;
  if (v12 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v14 == v15)
  {
  }

  else
  {
    v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v17 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  v18 = AWDLTrafficRegistrationServiceSidecar;

  v101 |= 0x80000000uLL;
  v10 = v18;
LABEL_9:
  v19 = [a1 uniqueIdentifier];
  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;
  if (v20 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v22 == v23)
  {

LABEL_13:
    v25 = AWDLTrafficRegistrationServiceSidecar;

    v101 |= 0x40000000uLL;
    v10 = v25;
    goto LABEL_14;
  }

  v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v24)
  {
    goto LABEL_13;
  }

LABEL_14:
  v26 = [a1 uniqueIdentifier];
  v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v29 = v28;
  v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v97 = v3;
  if (v27 == v30 && v29 == v31)
  {

LABEL_18:
    v33 = AWDLTrafficRegistrationServiceSidecar;

    v101 |= 0x20000000uLL;
    v10 = v33;
    goto LABEL_19;
  }

  v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v32)
  {
    goto LABEL_18;
  }

LABEL_19:
  v34 = [a1 uniqueIdentifier];
  v35 = AWDLTrafficRegistrationServiceSpatialStreaming;
  v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v38 = v37;
  if (v36 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v38 == v39)
  {

LABEL_23:
    v41 = v35;

    v10 = v41;
    goto LABEL_24;
  }

  v40 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v40)
  {
    goto LABEL_23;
  }

LABEL_24:
  v42 = [a1 uniqueIdentifier];
  v43 = AWDLTrafficRegistrationServiceMacVirtualDisplay;
  v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v46 = v45;
  if (v44 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v46 == v47)
  {

    v48 = v99;
LABEL_28:
    v50 = v43;

    v10 = v50;
    goto LABEL_29;
  }

  v49 = _stringCompareWithSmolCheck(_:_:expecting:)();

  v48 = v99;
  if (v49)
  {
    goto LABEL_28;
  }

LABEL_29:
  v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v53 = v52;
  v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v93 = a1;
  if (v51 == v54 && v53 == v55)
  {
    goto LABEL_31;
  }

  v56 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v56 & 1) == 0)
  {
    v77 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v79 = v78;
    if (v77 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v79 == v80)
    {
LABEL_31:

      goto LABEL_33;
    }

    v81 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v81 & 1) == 0)
    {
      goto LABEL_41;
    }
  }

LABEL_33:
  v57 = *(v48 + *(*v48 + 736));
  swift_unownedRetainStrong();
  v58 = sub_1003EB084();
  v60 = v59;
  v62 = v61;
  v64 = v63;

  if (!v60)
  {
LABEL_41:
    v66 = v10;
    v67 = 0;
    v76 = 1;
LABEL_42:
    v82 = v99;
    v83 = *(*v99 + 96);
    swift_beginAccess();
    v84 = AssociatedTypeWitness;
    (*(v100 + 16))(v9, v82 + v83, AssociatedTypeWitness);
    v85 = v93;
    v86 = [v93 peerAddress];
    v87 = WiFiMACAddress.wifiAddress.getter();

    v88 = [v85 preferredChannel];
    v89 = [v85 secondaryPreferredChannel];
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v91 = *(AssociatedConformanceWitness + 72);
    v103[0] = v76;
    v91(v66, v87 & 0xFFFFFFFFFFFFLL, 0, v88, v89, v101, v67 & 0xFFFFFFFFFFFFLL | (v76 << 48), v95 & 1, v84, AssociatedConformanceWitness);
    (*(v100 + 8))(v9, v84);

    return;
  }

  *v103 = v58;
  *&v103[8] = v60;
  *&v103[16] = v62;
  *&v103[24] = v64;
  *&v103[28] = WORD2(v64);
  v104[0] = v58;
  v104[1] = v60;
  v104[2] = v62;
  v105 = v64;
  v106 = WORD2(v64);
  sub_100476778(v104, v102);
  v65 = v97;
  sub_100460BA8(v103, a1, &v107);
  if (!v65)
  {
    v66 = v10;

    *v102 = *v103;
    *&v102[14] = *&v103[14];
    sub_100333B64(v102);
    v67 = v107 | (v108 << 32);
    v68 = v48 + *(*v48 + 160);
    v69 = Logger.logObject.getter();
    v70 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      v104[0] = v72;
      *v71 = 136315138;
      v73 = WiFiAddress.description.getter(v67 & 0xFFFFFFFFFFFFLL);
      v97 = v9;
      v75 = sub_100002320(v73, v74, v104);
      v9 = v97;

      *(v71 + 4) = v75;
      _os_log_impl(&_mh_execute_header, v69, v70, "Using SSID hash for traffic registration: %s", v71, 0xCu);
      sub_100002A00(v72);
    }

    v76 = 0;
    goto LABEL_42;
  }

  *v102 = *v103;
  *&v102[14] = *&v103[14];
  sub_100333B64(v102);
  __break(1u);
}

uint64_t sub_100457C88(uint64_t a1, uint64_t a2)
{
  sub_100018AB4(255, &qword_100595230, AWDLTrafficRegistrationConfiguration_ptr);
  v4 = type metadata accessor for AWDLInterface.AdditionalTrafficRegistrationInformation();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v6 = *(TupleTypeMetadata2 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin();
  v9 = (&v22 - v8);
  v10 = *(v6 + 16);
  v22 = a1;
  v10(&v22 - v8, a1, TupleTypeMetadata2);
  v11 = *v9;
  v12 = *(TupleTypeMetadata2 + 48);
  v13 = [*v9 peerAddress];

  v14 = WiFiMACAddress.wifiAddress.getter();
  swift_beginAccess();
  v15 = type metadata accessor for AWDLPeer(0);
  LOBYTE(v14) = static NANClusterChangeEvent.__derived_struct_equals(_:_:)(v14 & 0xFFFFFFFFFFFFLL, *(a2 + *(v15 + 20)) | (*(a2 + *(v15 + 20) + 2) << 16));
  v16 = *(*(v4 - 8) + 8);
  v16(v9 + v12, v4);
  if (v14)
  {
    v10(v9, v22, TupleTypeMetadata2);
    v17 = *v9;
    v18 = *(TupleTypeMetadata2 + 48);
    v19 = [*v9 uniqueIdentifier];

    v20 = AWDLTrafficRegistrationService.showsInfraDisconnectUINotifications.getter();
    v16(v9 + v18, v4);
  }

  else
  {
    v20 = 0;
  }

  return v20 & 1;
}

uint64_t sub_100457ED4(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  Logger.init(subsystem:category:)();
  if (a1)
  {
    swift_errorRetain();
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138412290;
      swift_errorRetain();
      v11 = _swift_stdlib_bridgeErrorToNSError();
      *(v9 + 4) = v11;
      *v10 = v11;
      _os_log_impl(&_mh_execute_header, v7, v8, "Failed to add notification request: %@", v9, 0xCu);
      sub_100016290(v10, &qword_10058B780, &qword_100480AC0);
    }

    else
    {
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
      _os_log_impl(&_mh_execute_header, v12, v13, "Successfully added notification request", v14, 2u);
    }
  }

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_100458124(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  v4 = *a1;
  v3 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(*a2 + 760);
  v7 = *(a1 + 17);
  swift_beginAccess();
  v8 = *(v2 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v2 + v6);
  v24 = v10;
  *(v2 + v6) = 0x8000000000000000;
  v11 = v5 | (v7 << 8);
  v12 = sub_1003E0B10(v4, v3, v11);
  v14 = v10[2];
  v15 = (v13 & 1) == 0;
  v16 = __OFADD__(v14, v15);
  v17 = v14 + v15;
  if (v16)
  {
    __break(1u);
    goto LABEL_11;
  }

  LOBYTE(v7) = v13;
  if (v10[3] < v17)
  {
    sub_100314BF4(v17, isUniquelyReferenced_nonNull_native);
    v12 = sub_1003E0B10(v4, v3, v11);
    if ((v7 & 1) == (v18 & 1))
    {
      goto LABEL_6;
    }

    v12 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_6:
  *(v2 + v6) = v10;
  if (v7)
  {
    goto LABEL_8;
  }

LABEL_7:
  v2 = v12;
  sub_1002DDE60(v12, v4, v3, v11, 0, v10);

  v12 = v2;
LABEL_8:
  while (1)
  {
    v19 = v10[7];
    v20 = *(v19 + 8 * v12);
    v16 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v16)
    {
      break;
    }

LABEL_11:
    __break(1u);
LABEL_12:
    v23 = v12;
    sub_10046E63C();
    v12 = v23;
    v10 = v24;
    *(v2 + v6) = v24;
    if ((v7 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  *(v19 + 8 * v12) = v21;
  return swift_endAccess();
}

uint64_t sub_1004582B8(uint64_t a1)
{
  v399 = a1;
  v2 = *v1;
  v3 = type metadata accessor for Date();
  v377 = *(v3 - 8);
  v378 = v3;
  v4 = *(v377 + 64);
  __chkstk_darwin();
  v376 = &v373 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v383 = type metadata accessor for AWDLIdleActivity(0);
  v6 = *(*(v383 - 8) + 64);
  __chkstk_darwin();
  v380 = &v373 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v420 = &v373 - v8;
  v418 = v1;
  v400 = *(v2 + 440);
  v9 = *(v400 + 8);
  v407 = *(v2 + 432);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v388 = *(AssociatedTypeWitness - 8);
  v389 = AssociatedTypeWitness;
  v11 = *(v388 + 64);
  __chkstk_darwin();
  v379 = &v373 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v386 = &v373 - v13;
  swift_getAssociatedTypeWitness();
  v387 = v9;
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v421 = 0;
  v14 = type metadata accessor for Preferences();
  v397 = *(v14 - 8);
  v398 = v14;
  v15 = *(v397 + 64);
  __chkstk_darwin();
  v396 = &v373 - v16;
  v17 = *(*(sub_10005DC58(&unk_10059B170, &unk_1004B4D70) - 8) + 64);
  __chkstk_darwin();
  v394 = &v373 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v393 = &v373 - v19;
  v20 = *(*(sub_10005DC58(&unk_100597330, &unk_100481FA0) - 8) + 64);
  __chkstk_darwin();
  v391 = &v373 - v21;
  v22 = type metadata accessor for DispatchTimeInterval();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  __chkstk_darwin();
  v375 = &v373 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v385 = &v373 - v26;
  __chkstk_darwin();
  v384 = &v373 - v27;
  __chkstk_darwin();
  v29 = (&v373 - v28);
  __chkstk_darwin();
  v31 = (&v373 - v30);
  __chkstk_darwin();
  v33 = (&v373 - v32);
  __chkstk_darwin();
  v35 = (&v373 - v34);
  __chkstk_darwin();
  v37 = &v373 - v36;
  __chkstk_darwin();
  *(&v373 - v38) = 300;
  v39 = enum case for DispatchTimeInterval.seconds(_:);
  v416 = v23;
  v40 = *(v23 + 104);
  v414 = &v373 - v38;
  v40();
  *v37 = 300;
  v408 = v37;
  v41 = v37;
  v42 = v421;
  (v40)(v41, v39, v22);
  *v35 = 300;
  v405 = v35;
  (v40)(v35, v39, v22);
  *v33 = 7200;
  v401 = v33;
  (v40)(v33, v39, v22);
  *v31 = v42;
  v409 = v31;
  (v40)(v31, v39, v22);
  *v29 = v42;
  v413 = v29;
  LODWORD(v404) = v39;
  v43 = v39;
  v44 = v418;
  v415 = v22;
  v402 = v40;
  v403 = v23 + 104;
  (v40)(v29, v43, v22);
  sub_10004D020();
  sub_100374870(&v426);

  v45 = type metadata accessor for AWDLDiscoveryEngine.Browse();
  v46 = sub_10006153C();
  LOBYTE(v22) = Dictionary.Keys.isEmpty.getter();

  v419 = v45;
  v417 = v46;
  if ((v22 & 1) == 0)
  {
    v47 = *(*v44 + 464);
    v48 = *(v44 + v47);

    sub_10002B550(&v426);

    v49 = *(v426 + 16);

    if (v49)
    {
      v50 = v415;
      v51 = v414;
      (*(v416 + 8))(v414, v415);
      *v51 = 3600;
      v402(v51, v404, v50);
      v52 = *(v44 + v47);
      sub_100374870(&v426);
      v425[0] = v426;
      v53 = type metadata accessor for Dictionary.Keys();
      WitnessTable = swift_getWitnessTable();
      v56 = sub_10002B84C(sub_1004770E8, 0, v53, &type metadata for String, &type metadata for Never, WitnessTable, &protocol witness table for Never, v55);
      v421 = v42;

      v426 = v56;
      v57 = sub_10005DC58(&qword_10058CBE0, &qword_100482CF0);
      v58 = sub_10000CADC(&qword_10059A6F0, &qword_10058CBE0, &qword_100482CF0);
      v59 = BidirectionalCollection<>.joined(separator:)();
      v61 = v60;

      v426 = 0x203A6573776F7242;
      v427 = 0xE800000000000000;
      v62._countAndFlagsBits = v59;
      v62._object = v61;
      String.append(_:)(v62);

      v63._countAndFlagsBits = 0x6974726576644120;
      v63._object = 0xEC000000203A6573;
      String.append(_:)(v63);

      v64 = v427;
      v412 = v426;
      v65 = *(v44 + v47);

      sub_10002B550(&v426);

      v66 = v426;
      v67 = *(v426 + 16);
      if (v67)
      {
        v406 = v64;
        v410 = v58;
        v411 = v57;
        v425[0] = _swiftEmptyArrayStorage;
        sub_1000C0464(0, v67, 0);
        v68 = v425[0];
        v69 = (v66 + 40);
        do
        {
          v70 = *(v69 - 1);
          v71 = *v69;
          v425[0] = v68;
          v73 = v68[2];
          v72 = v68[3];

          if (v73 >= v72 >> 1)
          {
            sub_1000C0464((v72 > 1), v73 + 1, 1);
            v68 = v425[0];
          }

          v68[2] = v73 + 1;
          v74 = &v68[2 * v73];
          v74[4] = v70;
          v74[5] = v71;
          v69 += 3;
          --v67;
        }

        while (v67);

        v64 = v406;
      }

      else
      {

        v68 = _swiftEmptyArrayStorage;
      }

      v374 = 0xD00000000000002ELL;
      v426 = v68;
      v131 = BidirectionalCollection<>.joined(separator:)();
      v133 = v132;

      v426 = v412;
      v427 = v64;

      v134._countAndFlagsBits = v131;
      v134._object = v133;
      String.append(_:)(v134);

      v390 = v426;
      v431[0] = v426;
      v431[1] = v427;
      v411 = v427;
      v395 = 0x80000001004C3040;
      type metadata accessor for P2PTimer();
      v135 = v391;
      variable initialization expression of AWDLPeer.lastUpdated();
      v136 = type metadata accessor for DispatchTime();
      (*(*(v136 - 8) + 56))(v135, 0, 1, v136);
      v44 = v418;
LABEL_29:
      v142 = *(*v44 + 648);
      swift_beginAccess();
      sub_1000B1B78(v135, v44 + v142, &unk_100597330, &unk_100481FA0);
      swift_endAccess();
      v392 = 0;
      goto LABEL_30;
    }
  }

  v75 = *(*v44 + 464);
  v76 = *(v44 + v75);
  sub_100374870(&v426);
  v77 = Dictionary.Keys.isEmpty.getter();

  v78 = *(v44 + v75);
  if (v77)
  {
    v374 = 0xD00000000000002ELL;

    sub_10002B550(&v426);

    v79 = *(v426 + 16);

    v80 = v415;
    if (v79)
    {
      v81 = v414;
      (*(v416 + 8))(v414, v415);
      *v81 = 3600;
      v402(v81, v404, v80);
      v82 = *(v44 + v75);

      sub_10002B550(&v426);

      v83 = v426;
      v84 = *(v426 + 16);
      if (v84)
      {
        v425[0] = _swiftEmptyArrayStorage;
        sub_1000C0464(0, v84, 0);
        v85 = v425[0];
        v86 = (v83 + 40);
        do
        {
          v87 = *(v86 - 1);
          v88 = *v86;
          v425[0] = v85;
          v90 = v85[2];
          v89 = v85[3];

          if (v90 >= v89 >> 1)
          {
            sub_1000C0464((v89 > 1), v90 + 1, 1);
            v85 = v425[0];
          }

          v85[2] = v90 + 1;
          v91 = &v85[2 * v90];
          v91[4] = v87;
          v91[5] = v88;
          v86 += 3;
          --v84;
        }

        while (v84);

        v44 = v418;
      }

      else
      {

        v85 = _swiftEmptyArrayStorage;
      }

      v426 = v85;
      sub_10005DC58(&qword_10058CBE0, &qword_100482CF0);
      sub_10000CADC(&qword_10059A6F0, &qword_10058CBE0, &qword_100482CF0);
      v137 = BidirectionalCollection<>.joined(separator:)();
      v139 = v138;

      v426 = 0x7369747265766441;
      v427 = 0xEB00000000203A65;
      v140._countAndFlagsBits = v137;
      v140._object = v139;
      String.append(_:)(v140);

      v390 = v426;
      v431[0] = v426;
      v431[1] = v427;
      v411 = v427;
      v395 = 0x80000001004C3040;
      type metadata accessor for P2PTimer();
      v135 = v391;
      variable initialization expression of AWDLPeer.lastUpdated();
      v141 = type metadata accessor for DispatchTime();
      (*(*(v141 - 8) + 56))(v135, 0, 1, v141);
      goto LABEL_29;
    }

    v390 = 0x6F53657669746341;
    strcpy(v431, "ActiveSocket");
    BYTE5(v431[1]) = 0;
    HIWORD(v431[1]) = -5120;
    v411 = 0xEC00000074656B63;
    v392 = sub_10044EE0C(sub_10044EBA0, 300) ^ 1;
    v130 = 0x80000001004C3040;
  }

  else
  {
    sub_100374870(v425);
    v424 = v425[0];
    v92 = DNSRecords.Identifier.airplay.unsafeMutableAddressor();
    v93 = *(v92 + 1);
    v94 = v92[16];
    v95 = v92[17];
    v426 = *v92;
    v427 = v93;
    LOBYTE(v428) = v94;
    BYTE1(v428) = v95;
    v96 = type metadata accessor for Dictionary.Keys();
    swift_getWitnessTable();
    sub_10017910C();
    v97 = Sequence<>.contains(_:)();

    if (v97)
    {
      goto LABEL_21;
    }

    v98 = *(v418 + v75);
    sub_100374870(v425);
    v424 = v425[0];
    v99 = DNSRecords.Identifier.airdrop.unsafeMutableAddressor();
    v100 = *(v99 + 1);
    v101 = v99[16];
    v102 = v99[17];
    v426 = *v99;
    v427 = v100;
    LOBYTE(v428) = v101;
    BYTE1(v428) = v102;
    LOBYTE(v98) = Sequence<>.contains(_:)();

    if (v98)
    {
      goto LABEL_21;
    }

    v103 = *(v418 + v75);
    sub_100374870(v425);
    v424 = v425[0];
    v104 = DNSRecords.Identifier.companionLink.unsafeMutableAddressor();
    v105 = v104[1];
    v106 = *(v104 + 16);
    v107 = *(v104 + 17);
    v426 = *v104;
    v427 = v105;
    LOBYTE(v428) = v106;
    BYTE1(v428) = v107;
    LOBYTE(v103) = Sequence<>.contains(_:)();

    if (v103)
    {
      goto LABEL_21;
    }

    v108 = *(v418 + v75);
    sub_100374870(v425);
    v424 = v425[0];
    v109 = DNSRecords.Identifier.remoteDisplay.unsafeMutableAddressor();
    v110 = *(v109 + 1);
    v111 = v109[16];
    v112 = v109[17];
    v426 = *v109;
    v427 = v110;
    LOBYTE(v428) = v111;
    BYTE1(v428) = v112;
    LOBYTE(v108) = Sequence<>.contains(_:)();

    if (v108)
    {
LABEL_21:
      v113 = v415;
      v114 = v414;
      (*(v416 + 8))(v414, v415);
      v115 = 600;
    }

    else
    {
      v307 = *(v418 + v75);
      sub_100374870(v425);
      v424 = v425[0];
      v308 = DNSRecords.Identifier.assistedDiscovery.unsafeMutableAddressor();
      v309 = *(v308 + 1);
      v310 = v308[16];
      v311 = v308[17];
      v426 = *v308;
      v427 = v309;
      LOBYTE(v428) = v310;
      BYTE1(v428) = v311;
      LOBYTE(v307) = Sequence<>.contains(_:)();

      v113 = v415;
      v312 = v414;
      (*(v416 + 8))(v414, v415);
      v313 = (v307 & 1) == 0;
      v114 = v312;
      v115 = 900;
      if (!v313)
      {
        v115 = 600;
      }
    }

    *v114 = v115;
    v402(v114, v404, v113);
    v116 = v418;
    v117 = *(v418 + v75);
    sub_100374870(&v426);
    v425[0] = v426;
    v118 = swift_getWitnessTable();
    v119 = v96;
    v44 = v116;
    v121 = sub_10002B84C(sub_1004770E8, 0, v119, &type metadata for String, &type metadata for Never, v118, &protocol witness table for Never, v120);
    v421 = v42;

    v426 = v121;
    sub_10005DC58(&qword_10058CBE0, &qword_100482CF0);
    sub_10000CADC(&qword_10059A6F0, &qword_10058CBE0, &qword_100482CF0);
    v122 = BidirectionalCollection<>.joined(separator:)();
    v124 = v123;

    v426 = 0x203A6573776F7242;
    v427 = 0xE800000000000000;
    v125._countAndFlagsBits = v122;
    v125._object = v124;
    String.append(_:)(v125);

    v390 = v426;
    v431[0] = v426;
    v431[1] = v427;
    v411 = v427;
    type metadata accessor for P2PTimer();
    v126 = v391;
    variable initialization expression of AWDLPeer.lastUpdated();
    v127 = type metadata accessor for DispatchTime();
    v128 = *(*(v127 - 8) + 56);
    v392 = 1;
    v128(v126, 0, 1, v127);
    v129 = *(*v44 + 648);
    swift_beginAccess();
    sub_1000B1B78(v126, v44 + v129, &unk_100597330, &unk_100481FA0);
    swift_endAccess();
    v374 = 0;
    v130 = 0xE000000000000000;
  }

  v395 = v130;
LABEL_30:
  sub_10005DC58(&qword_1005987E0, &unk_1004B4D90);
  v143 = swift_allocObject();
  *(v143 + 16) = xmmword_100480F30;
  v144 = DNSRecords.Identifier.dfsMonitoring.unsafeMutableAddressor();
  v145 = *(v144 + 1);
  v146 = v144[16];
  v147 = v144[17];
  *(v143 + 32) = *v144;
  *(v143 + 40) = v145;
  *(v143 + 48) = v146;
  *(v143 + 49) = v147;

  v148 = DNSRecords.Identifier.testAWDLService.unsafeMutableAddressor();
  v149 = *(v148 + 1);
  v150 = v148[16];
  v151 = v148[17];
  *(v143 + 56) = *v148;
  *(v143 + 64) = v149;
  *(v143 + 72) = v150;
  *(v143 + 73) = v151;

  v152 = DNSRecords.Identifier.atpAWDLService.unsafeMutableAddressor();
  v153 = *(v152 + 1);
  v154 = v152[16];
  v155 = v152[17];
  *(v143 + 80) = *v152;
  *(v143 + 88) = v153;
  *(v143 + 96) = v154;
  *(v143 + 97) = v155;

  v156 = sub_100475DB0(v143);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v157 = v44;
  v158 = *(*v44 + 464);
  v159 = *(v157 + v158);
  sub_100374870(&v426);
  v425[0] = v426;
  __chkstk_darwin();
  *(&v373 - 2) = v156;
  v160 = type metadata accessor for Dictionary.Keys();
  v161 = swift_getWitnessTable();
  v410 = v160;
  v162 = v421;
  LOBYTE(v159) = Sequence.contains(where:)();
  v412 = v162;

  v417 = v158;
  if (v159)
  {
    v163 = v157;

    LODWORD(v406) = 1;
    v164 = v420;
    goto LABEL_46;
  }

  v163 = v157;
  v165 = *(v157 + v158);

  sub_10002B550(v425);

  result = v425[0];
  v167 = *(v425[0] + 16);
  v168 = v156;
  v164 = v420;
  if (!v167)
  {
LABEL_44:

    LODWORD(v406) = 0;
    goto LABEL_45;
  }

  v169 = 0;
  v381 = v425[0] + 32;
  v382 = v161;
  v421 = v168 + 56;
  v406 = v425[0];
  v373 = v167;
  while (1)
  {
    if (v169 >= *(result + 16))
    {
LABEL_109:
      __break(1u);
      return result;
    }

    if (*(v168 + 16))
    {
      break;
    }

LABEL_35:
    if (++v169 == v167)
    {
      goto LABEL_44;
    }
  }

  v419 = v169;
  v170 = v381 + 24 * v169;
  v172 = *v170;
  v171 = *(v170 + 8);
  v173 = *(v170 + 16);
  v174 = *(v170 + 17);
  v175 = *(v168 + 40);
  Hasher.init(_seed:)();
  String.lowercased()();

  String.hash(into:)();

  String.hash(into:)();

  Hasher._combine(_:)(v174);
  v176 = Hasher._finalize()();
  v177 = v168;
  v178 = -1 << *(v168 + 32);
  v179 = v176 & ~v178;
  if (((*(v421 + ((v179 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v179) & 1) == 0)
  {
LABEL_34:

    v158 = v417;
    v163 = v418;
    v169 = v419;
    v164 = v420;
    v168 = v177;
    result = v406;
    v167 = v373;
    goto LABEL_35;
  }

  v180 = ~v178;
  v181 = v173 | (v174 << 8);
  while (1)
  {
    v182 = *(v177 + 48) + 24 * v179;
    v183 = *v182;
    v184 = *(v182 + 8);
    v185 = *(v182 + 16) | (*(v182 + 17) << 8);

    LOBYTE(v183) = static DNSRecords.Identifier.== infix(_:_:)(v183, v184, v185, v172, v171, v181);

    if (v183)
    {
      break;
    }

    v179 = (v179 + 1) & v180;
    if (((*(v421 + ((v179 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v179) & 1) == 0)
    {
      goto LABEL_34;
    }
  }

  LODWORD(v406) = 1;
  v158 = v417;
  v163 = v418;
  v164 = v420;
LABEL_45:

LABEL_46:
  v186 = *(v163 + v158);
  sub_100374870(v425);
  v424 = v425[0];
  v187 = v158;
  v188 = DNSRecords.Identifier.companionLink.unsafeMutableAddressor();
  v189 = v188[1];
  v190 = *(v188 + 16);
  v191 = *(v188 + 17);
  v426 = *v188;
  v427 = v189;
  LOBYTE(v428) = v190;
  BYTE1(v428) = v191;
  sub_10017910C();
  LOBYTE(v186) = Sequence<>.contains(_:)();

  if (v186)
  {
    v192 = v412;
    goto LABEL_49;
  }

  v193 = *(v163 + v187);

  sub_10002B550(v425);

  v194 = v425[0];
  v195 = v188[1];
  v196 = *(v188 + 16);
  v197 = *(v188 + 17);
  v426 = *v188;
  v427 = v195;
  LOBYTE(v428) = v196;
  BYTE1(v428) = v197;
  __chkstk_darwin();
  *(&v373 - 2) = &v426;

  v192 = v412;
  v198 = sub_10044BE18(sub_100476F68, &(&v373)[-4], v194);

  if ((v198 & 1) == 0)
  {
    v412 = v192;
    if ((v392 & 1) == 0)
    {
      goto LABEL_59;
    }

LABEL_51:
    LODWORD(v421) = 1;
    v202 = v418;
    v203 = v415;
    v204 = v393;
    goto LABEL_61;
  }

LABEL_49:
  v200 = v417;
  v199 = v418;
  v201 = *(v418 + v417);
  sub_100374870(&v426);
  v425[0] = v426;
  LOBYTE(v201) = Sequence.contains(where:)();

  v412 = v192;
  if ((v201 & 1) == 0)
  {
    v205 = *(v199 + v200);

    sub_10002B550(&v426);

    v206 = *(v426 + 16);
    v421 = v426;
    v207 = (v426 + 49);
    v419 = -v206;
    v208 = -1;
    while (v419 + v208 != -1)
    {
      if (++v208 >= *(v421 + 16))
      {
        __break(1u);
        goto LABEL_109;
      }

      v209 = v207 + 24;
      v210 = *(v207 - 9);
      v211 = *(v207 - 17);
      v212 = *v188;
      v213 = v188[1];
      v214 = *(v207 - 1) | (*v207 << 8);
      v215 = *(v188 + 16) | (*(v188 + 17) << 8);

      v216 = v215;
      v164 = v420;
      LOBYTE(v211) = static DNSRecords.Identifier.== infix(_:_:)(v211, v210, v214, v212, v213, v216);

      v207 = v209;
      if ((v211 & 1) == 0)
      {

        v204 = v393;
        if (v392)
        {
          LODWORD(v421) = 1;
          v202 = v418;
          v203 = v415;
          goto LABEL_61;
        }

        LODWORD(v421) = 1;
        v217 = 0;
        v202 = v418;
        v203 = v415;
        goto LABEL_62;
      }
    }

    LODWORD(v421) = 0;
    v217 = 0;
    v202 = v418;
    v203 = v415;
    v204 = v393;
    if ((v392 & 1) == 0)
    {
      goto LABEL_62;
    }

LABEL_61:
    v217 = v406 ^ 1;
    goto LABEL_62;
  }

  if (v392)
  {
    goto LABEL_51;
  }

LABEL_59:
  LODWORD(v421) = 1;
  v217 = 0;
  v202 = v418;
  v203 = v415;
  v204 = v393;
LABEL_62:
  v218 = *(v202 + v417);

  sub_100376178(v204);

  v219 = v416;
  v220 = *(v416 + 48);
  if (v220(v204, 1, v203) == 1)
  {
    sub_100016290(v204, &unk_10059B170, &unk_1004B4D70);
  }

  else
  {
    v221 = v217;
    v222 = v384;
    (*(v219 + 32))(v384, v204, v203);
    v223 = v222;
    v217 = v221;
    (*(v219 + 40))(v409, v223, v203);
  }

  v224 = *(v202 + v417);

  v225 = v394;
  sub_1003761B8(v394);

  if (v220(v225, 1, v203) == 1)
  {
    sub_100016290(v225, &unk_10059B170, &unk_1004B4D70);
    if (!v217)
    {
      goto LABEL_74;
    }
  }

  else
  {
    v226 = v416;
    v227 = v385;
    (*(v416 + 32))(v385, v225, v203);
    (*(v226 + 40))(v413, v227, v203);
    if (!v217)
    {
      goto LABEL_74;
    }
  }

  v228 = *(*v202 + 160);
  swift_retain_n();
  v229 = Logger.logObject.getter();
  v230 = v202;
  v231 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v229, v231))
  {
    v232 = v217;
    v233 = swift_slowAlloc();
    v426 = swift_slowAlloc();
    *v233 = 136316162;
    swift_beginAccess();
    v234 = DispatchTimeInterval.description.getter();
    v236 = sub_100002320(v234, v235, &v426);

    *(v233 + 4) = v236;
    *(v233 + 12) = 2080;
    swift_beginAccess();
    v237 = DispatchTimeInterval.description.getter();
    v239 = sub_100002320(v237, v238, &v426);

    *(v233 + 14) = v239;
    *(v233 + 22) = 2080;
    v240 = v411;

    v241 = sub_100002320(v390, v240, &v426);

    *(v233 + 24) = v241;
    *(v233 + 32) = 1024;
    *(v233 + 34) = 1;
    *(v233 + 38) = 1024;
    sub_10004D020();
    LOBYTE(v239) = sub_1003766B4();

    *(v233 + 40) = v239 & 1;

    _os_log_impl(&_mh_execute_header, v229, v231, "Time since oldest service added: %s and last service added: %s leakReason: %s triggerTTR: %{BOOL}d Service active on sleep/wake:%{BOOL}d", v233, 0x2Cu);
    swift_arrayDestroy();

    v217 = v232;
  }

  else
  {
  }

  v202 = v230;
  v242 = *(v230 + v417);

  v243 = sub_1003766B4();

  v203 = v415;
  v164 = v420;
  if (v243)
  {
    v244 = v414;
    (*(v416 + 8))(v414, v415);
    *v244 = 300;
    v402(v244, v404, v203);
    v426 = v390;
    v427 = v411;

    v245._countAndFlagsBits = 0xD00000000000001BLL;
    v245._object = 0x80000001004C3180;
    String.append(_:)(v245);
    v247 = v426;
    v246 = v427;
    swift_beginAccess();
    v390 = v247;
    v431[0] = v247;
    v431[1] = v246;

    v411 = v246;
  }

LABEL_74:
  v248 = v396;
  WiFiInterface.preferences.getter();
  v249 = v398;
  v250 = Preferences.disableAWDLLinkWhenInactive.getter(v398);
  (*(v397 + 8))(v248, v249);
  if (v250)
  {
    v251 = v409;
    v252 = v401;
    v253 = v405;
    v254 = v399;
    if (v406)
    {
      goto LABEL_83;
    }

LABEL_78:
    if (!static DispatchTimeInterval.< infix(_:_:)())
    {
      v262 = *(v383 + 20);
      if (!static DispatchTimeInterval.< infix(_:_:)())
      {
        v263 = v202 + *(*v202 + 160);
        v264 = Logger.logObject.getter();
        v265 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v264, v265))
        {
          v266 = swift_slowAlloc();
          *v266 = 0;
          _os_log_impl(&_mh_execute_header, v264, v265, "Disabling AWDL due to inactivity", v266, 2u);
          v253 = v405;
        }

        WiFiInterface.linkState.setter(0);
        v203 = v415;
      }
    }

    goto LABEL_83;
  }

  v255 = *(*v202 + 96);
  swift_beginAccess();
  v257 = v388;
  v256 = v389;
  v258 = v202 + v255;
  v259 = v386;
  (*(v388 + 16))(v386, v258, v389);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v261 = (*(AssociatedConformanceWitness + 8))(v256, AssociatedConformanceWitness);
  (*(v257 + 8))(v259, v256);
  v426 = *WiFiDriverCapabilities.supportsDisableAWDLOnInactivity.unsafeMutableAddressor();
  v424 = v261;
  sub_1000C2A14();

  LOBYTE(v259) = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v203 = v415;

  v251 = v409;
  v252 = v401;
  v253 = v405;
  v254 = v399;
  if (!(v406 & 1 | v421 & 1 | ((v259 & 1) == 0)))
  {
    goto LABEL_78;
  }

LABEL_83:
  swift_beginAccess();
  if (static DispatchTimeInterval.< infix(_:_:)())
  {
    goto LABEL_87;
  }

  swift_beginAccess();
  if (static DispatchTimeInterval.< infix(_:_:)())
  {
    goto LABEL_87;
  }

  if (static DispatchTimeInterval.< infix(_:_:)())
  {
    goto LABEL_87;
  }

  v267 = *(v383 + 20);
  if (static DispatchTimeInterval.< infix(_:_:)())
  {
    goto LABEL_87;
  }

  LODWORD(v421) = v217;
  v270 = v254;
  v271 = *(*v202 + 160);
  sub_100027648(v270, v164, type metadata accessor for AWDLIdleActivity);
  v272 = v270;
  v273 = v380;
  sub_100027648(v272, v380, type metadata accessor for AWDLIdleActivity);
  swift_retain_n();

  v274 = Logger.logObject.getter();
  v275 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v274, v275))
  {
    LODWORD(v406) = v275;
    v419 = v274;
    v276 = v202;
    v277 = swift_slowAlloc();
    v404 = swift_slowAlloc();
    v426 = v404;
    *v277 = 136316674;
    v278 = v375;
    sub_10044E934(v375);
    v279 = DispatchTimeInterval.description.getter();
    v281 = v280;
    (*(v416 + 8))(v278, v203);
    v282 = sub_100002320(v279, v281, &v426);

    *(v277 + 4) = v282;
    *(v277 + 12) = 2080;
    v283 = sub_100002320(v390, v411, &v426);

    *(v277 + 14) = v283;
    *(v277 + 22) = 2080;
    v284 = v417;
    v285 = *(v276 + v417);
    sub_100374870(v422);
    v423 = v422[0];
    v286 = v410;
    v287 = swift_getWitnessTable();
    v288 = v286;
    v289 = v412;
    v291 = sub_10002B84C(sub_1004770E8, 0, v288, &type metadata for String, &type metadata for Never, v287, &protocol witness table for Never, v290);
    v412 = v289;

    v422[0] = v291;
    v292 = sub_10005DC58(&qword_10058CBE0, &qword_100482CF0);
    v403 = sub_10000CADC(&qword_10059A6F0, &qword_10058CBE0, &qword_100482CF0);
    v293 = BidirectionalCollection<>.joined(separator:)();
    v295 = v294;

    v296 = sub_100002320(v293, v295, &v426);

    *(v277 + 24) = v296;
    *(v277 + 32) = 2080;
    v297 = *(v276 + v284);

    sub_10002B550(v422);

    v298 = v422[0];
    v299 = *(v422[0] + 16);
    if (v299)
    {
      v402 = v292;
      v423 = _swiftEmptyArrayStorage;
      sub_1000C0464(0, v299, 0);
      v300 = v423;
      v398 = v298;
      v301 = (v298 + 40);
      do
      {
        v302 = *(v301 - 1);
        v303 = *v301;
        v423 = v300;
        v305 = v300[2];
        v304 = v300[3];

        if (v305 >= v304 >> 1)
        {
          sub_1000C0464((v304 > 1), v305 + 1, 1);
          v300 = v423;
        }

        v300[2] = v305 + 1;
        v306 = &v300[2 * v305];
        v306[4] = v302;
        v306[5] = v303;
        v301 += 3;
        --v299;
      }

      while (v299);

      v251 = v409;
      v164 = v420;
    }

    else
    {

      v300 = _swiftEmptyArrayStorage;
    }

    v422[0] = v300;
    v314 = BidirectionalCollection<>.joined(separator:)();
    v316 = v315;

    v317 = sub_100002320(v314, v316, &v426);

    *(v277 + 34) = v317;
    *(v277 + 42) = 2048;
    v318 = v418;
    sub_10004D020();
    v319 = sub_1003746CC();

    *(v277 + 44) = v319;

    *(v277 + 52) = 2080;
    v320 = DispatchTimeInterval.description.getter();
    v322 = v321;
    sub_1000473F0(v164, type metadata accessor for AWDLIdleActivity);
    v323 = sub_100002320(v320, v322, &v426);

    *(v277 + 54) = v323;
    *(v277 + 62) = 2080;
    v324 = v380;
    v325 = v380 + *(v383 + 20);
    v326 = DispatchTimeInterval.description.getter();
    v328 = v327;
    sub_1000473F0(v324, type metadata accessor for AWDLIdleActivity);
    v329 = sub_100002320(v326, v328, &v426);

    *(v277 + 64) = v329;
    v330 = v419;
    _os_log_impl(&_mh_execute_header, v419, v406, "Last TTR %s leak %s, browses: %s, advertises: %s and services count: %ld no Tx/Rx for %s/%s", v277, 0x48u);
    swift_arrayDestroy();

    v202 = v318;

    v203 = v415;
    v252 = v401;
    v253 = v405;
  }

  else
  {

    sub_1000473F0(v273, type metadata accessor for AWDLIdleActivity);
    sub_1000473F0(v164, type metadata accessor for AWDLIdleActivity);
  }

  if (sub_10044EE0C(sub_10044E934, 43200) & 1) != 0 || ((v421 ^ 1))
  {
LABEL_87:

    v268 = v416;
  }

  else
  {
    v331 = v417;
    v332 = *(v202 + v417);

    sub_10037690C();

    v426 = 0;
    v427 = 0xE000000000000000;
    _StringGuts.grow(_:)(65);
    v333._countAndFlagsBits = 0x20676E696B61654CLL;
    v333._object = 0xE800000000000000;
    String.append(_:)(v333);
    v334 = v411;

    v335 = v390;
    v336._countAndFlagsBits = v390;
    v336._object = v334;
    String.append(_:)(v336);

    v337._countAndFlagsBits = 0xD000000000000022;
    v337._object = 0x80000001004C3070;
    String.append(_:)(v337);
    v338._countAndFlagsBits = DispatchTimeInterval.description.getter();
    String.append(_:)(v338);

    v339._countAndFlagsBits = 0xD000000000000013;
    v339._object = 0x80000001004C30A0;
    String.append(_:)(v339);
    v420 = v427;
    v421 = v426;
    v426 = 0;
    v427 = 0xE000000000000000;
    _StringGuts.grow(_:)(163);
    v340._countAndFlagsBits = 0xD000000000000020;
    v340._object = 0x80000001004C30C0;
    String.append(_:)(v340);
    v341._countAndFlagsBits = DispatchTimeInterval.description.getter();
    String.append(_:)(v341);

    v342._countAndFlagsBits = 0x6E696B61654C0A0ALL;
    v342._object = 0xEA00000000002067;
    String.append(_:)(v342);

    v343._countAndFlagsBits = v335;
    v343._object = v334;
    String.append(_:)(v343);

    v344._object = 0x80000001004C30F0;
    v344._countAndFlagsBits = 0xD000000000000011;
    String.append(_:)(v344);
    v345 = *(v202 + *(*v202 + 656));
    v346 = v376;
    Date.init()();
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v377 + 8))(v346, v378);
    v348 = [v345 stringFromDate:isa];

    v349 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v350 = v202;
    v352 = v351;

    v353._countAndFlagsBits = v349;
    v353._object = v352;
    String.append(_:)(v353);

    v354._countAndFlagsBits = 0xD00000000000001BLL;
    v354._object = 0x80000001004C3110;
    String.append(_:)(v354);
    v355 = *(v350 + v331);
    sub_100374870(v422);
    v423 = v422[0];
    DefaultStringInterpolation.appendInterpolation<A>(_:)();

    v356._object = 0x80000001004C3130;
    v356._countAndFlagsBits = 0xD000000000000011;
    String.append(_:)(v356);
    v357 = *(v350 + v331);
    v358 = v420;

    sub_10002B550(v422);

    v423 = v422[0];
    sub_10005DC58(&unk_10059B190, &unk_1004B1EA8);
    _print_unlocked<A, B>(_:_:)();

    v359._countAndFlagsBits = 0xD00000000000002FLL;
    v359._object = 0x80000001004C3150;
    String.append(_:)(v359);
    v360._countAndFlagsBits = v374;
    v360._object = v395;
    String.append(_:)(v360);

    v361._countAndFlagsBits = 34;
    v361._object = 0xE100000000000000;
    String.append(_:)(v361);
    v362 = v426;
    v363 = v427;
    type metadata accessor for P2PTimer();
    v364 = v391;
    variable initialization expression of AWDLPeer.lastUpdated();
    v365 = type metadata accessor for DispatchTime();
    (*(*(v365 - 8) + 56))(v364, 0, 1, v365);
    v366 = *(*v350 + 640);
    swift_beginAccess();
    sub_1000B1B78(v364, v350 + v366, &unk_100597330, &unk_100481FA0);
    swift_endAccess();
    v367 = *(*v350 + 96);
    swift_beginAccess();
    v368 = v350 + v367;
    v369 = v379;
    v370 = v389;
    (*(v388 + 16))(v379, v368, v389);
    v426 = v421;
    v427 = v358;
    v428 = v362;
    v429 = v363;
    v430 = 1;
    v371 = swift_getAssociatedConformanceWitness();
    v372 = v412;
    (*(v371 + 144))(&v426, v370, v371);
    if (v372)
    {
    }

    (*(v388 + 8))(v369, v389);
    v203 = v415;
    v268 = v416;
    v251 = v409;
    v252 = v401;
    v253 = v405;
  }

  v269 = *(v268 + 8);
  v269(v252, v203);
  v269(v253, v203);
  v269(v408, v203);
  v269(v414, v203);
  v269(v413, v203);
  v269(v251, v203);
}

uint64_t sub_10045ADC0(uint64_t a1, uint64_t a2)
{
  v43 = a2;
  v44 = type metadata accessor for DriverEvent(0);
  v2 = *(*(v44 - 8) + 64);
  __chkstk_darwin();
  v4 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchTimeInterval();
  v41 = *(v5 - 8);
  v42 = v5;
  v6 = *(v41 + 64);
  __chkstk_darwin();
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchTime();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin();
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v15 = &v35 - v14;
  v16 = type metadata accessor for Logger();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin();
  v20 = &v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (*(result + *(*result + 688)))
    {
      v22 = *(*result + 160);
      v23 = v17;
      v24 = *(v17 + 16);
      v40 = result;
      v24(v20, result + v22, v16);
      (*(v10 + 16))(v15, v43, v9);
      v25 = Logger.logObject.getter();
      LODWORD(v43) = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v25, v43))
      {
        v26 = swift_slowAlloc();
        v37 = v4;
        v27 = v26;
        v39 = swift_slowAlloc();
        v45 = v39;
        *v27 = 136315138;
        type metadata accessor for P2PTimer();
        v36 = v25;
        variable initialization expression of AWDLPeer.lastUpdated();
        DispatchTime.distance(to:)();
        v38 = v23;
        v28 = *(v10 + 8);
        v28(v13, v9);
        v29 = DispatchTimeInterval.description.getter();
        v31 = v30;
        (*(v41 + 8))(v8, v42);
        v28(v15, v9);
        v32 = sub_100002320(v29, v31, &v45);

        v33 = v27;
        v34 = v36;
        v4 = v37;
        *(v33 + 1) = v32;
        _os_log_impl(&_mh_execute_header, v34, v43, "Watchdog reset timed out because it has been in progress since %s", v33, 0xCu);
        sub_100002A00(v39);

        (*(v38 + 8))(v20, v16);
      }

      else
      {

        (*(v10 + 8))(v15, v9);
        (*(v23 + 8))(v20, v16);
      }

      *v4 = 1;
      swift_storeEnumTagMultiPayload();
      sub_100023E94(v4);

      return sub_1000473F0(v4, type metadata accessor for DriverEvent);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_10045B28C(uint64_t a1, uint64_t a2)
{
  v43 = a2;
  v44 = type metadata accessor for DriverEvent(0);
  v2 = *(*(v44 - 8) + 64);
  __chkstk_darwin();
  v4 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchTimeInterval();
  v41 = *(v5 - 8);
  v42 = v5;
  v6 = *(v41 + 64);
  __chkstk_darwin();
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchTime();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin();
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v15 = &v35 - v14;
  v16 = type metadata accessor for Logger();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin();
  v20 = &v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (*(result + *(*result + 704)))
    {
      v22 = *(*result + 160);
      v23 = v17;
      v24 = *(v17 + 16);
      v40 = result;
      v24(v20, result + v22, v16);
      (*(v10 + 16))(v15, v43, v9);
      v25 = Logger.logObject.getter();
      LODWORD(v43) = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v25, v43))
      {
        v26 = swift_slowAlloc();
        v37 = v4;
        v27 = v26;
        v39 = swift_slowAlloc();
        v45 = v39;
        *v27 = 136315138;
        type metadata accessor for P2PTimer();
        v36 = v25;
        variable initialization expression of AWDLPeer.lastUpdated();
        DispatchTime.distance(to:)();
        v38 = v23;
        v28 = *(v10 + 8);
        v28(v13, v9);
        v29 = DispatchTimeInterval.description.getter();
        v31 = v30;
        (*(v41 + 8))(v8, v42);
        v28(v15, v9);
        v32 = sub_100002320(v29, v31, &v45);

        v33 = v27;
        v34 = v36;
        v4 = v37;
        *(v33 + 1) = v32;
        _os_log_impl(&_mh_execute_header, v34, v43, "Waiting interface power on timed out because it has been in progress since %s", v33, 0xCu);
        sub_100002A00(v39);

        (*(v38 + 8))(v20, v16);
      }

      else
      {

        (*(v10 + 8))(v15, v9);
        (*(v23 + 8))(v20, v16);
      }

      *v4 = 5;
      swift_storeEnumTagMultiPayload();
      sub_100023E94(v4);

      return sub_1000473F0(v4, type metadata accessor for DriverEvent);
    }

    else
    {
    }
  }

  return result;
}

void sub_10045B758(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  sub_10000E3C4(*a1, 1);
  if (v2)
  {
    v5 = *(*a2 + 160);
    swift_errorRetain();
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v15 = v10;
      *v8 = 136315394;
      v11 = WiFiP2PSPITransactionType.description.getter(v4);
      v13 = sub_100002320(v11, v12, &v15);

      *(v8 + 4) = v13;
      *(v8 + 12) = 2112;
      swift_errorRetain();
      v14 = _swift_stdlib_bridgeErrorToNSError();
      *(v8 + 14) = v14;
      *v9 = v14;
      _os_log_impl(&_mh_execute_header, v6, v7, "Failed to recover transaction %s: %@", v8, 0x16u);
      sub_100016290(v9, &qword_10058B780, &qword_100480AC0);

      sub_100002A00(v10);
    }

    else
    {
    }
  }
}

uint64_t sub_10045B91C(uint64_t a1)
{
  result = type metadata accessor for AWDLPeer(0);
  *(a1 + *(result + 108)) = 0;
  return result;
}

uint64_t sub_10045B94C(void (*a1)(uint64_t), uint64_t a2)
{
  v3 = v2;
  v6 = *(*v2 + 448);
  swift_beginAccess();
  v7 = *(v2 + v6);
  v8 = -1 << *(v7 + 32);
  swift_bridgeObjectRetain_n();
  v9 = _HashTable.startBucket.getter();
  v10 = *(v7 + 36);
  v11 = *(v7 + 32);

  v12 = 1 << v11;

  v23 = v9;
  if (v9 == 1 << v11)
  {
LABEL_14:
    swift_bridgeObjectRelease_n();
    sub_10002BEB8(v23, v10, 0);
    sub_10002BEB8(v12, v10, 0);
    return sub_10002BEB8(v12, v10, 0);
  }

  else
  {
    v13 = v9;
    while ((v13 & 0x8000000000000000) == 0)
    {
      v9 = 1 << *(v7 + 32);
      if (v13 >= v9)
      {
        break;
      }

      v14 = v13 >> 6;
      v15 = *(v7 + 64 + 8 * (v13 >> 6));
      if (((v15 >> v13) & 1) == 0)
      {
        goto LABEL_16;
      }

      if (*(v7 + 36) != v10)
      {
        goto LABEL_17;
      }

      v16 = v15 & (-2 << (v13 & 0x3F));
      if (v16)
      {
        v9 = __clz(__rbit64(v16)) | v13 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v17 = v14 << 6;
        v18 = v14 + 1;
        v19 = (v7 + 72 + 8 * v14);
        while (v18 < (v9 + 63) >> 6)
        {
          v21 = *v19++;
          v20 = v21;
          v17 += 64;
          ++v18;
          if (v21)
          {
            v9 = __clz(__rbit64(v20)) + v17;
            break;
          }
        }
      }

      v24[0] = v13;
      v24[1] = v10;
      v25 = 0;
      sub_10045E9D8(v24, a1, a2, v3);
      sub_10002BEB8(v13, v10, 0);
      v13 = v9;
      if (v9 == v12)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);

    sub_10002BEB8(v13, v10, 0);

    sub_10002BEB8(v23, v10, 0);
    sub_10002BEB8(v12, v10, 0);
    result = sub_10002BEB8(v9, v10, 0);
    __break(1u);
  }

  return result;
}

uint64_t sub_10045BBA0()
{
  v1 = v0;
  v2 = *(*(type metadata accessor for AWDLPeer(0) - 8) + 64);
  __chkstk_darwin();
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *(*v0 + 448);
  result = swift_beginAccess();
  for (i = *(v0 + v5); *(i + 16); i = *(v1 + v5))
  {
    v8 = -1 << *(i + 32);

    v9 = _HashTable.startBucket.getter();
    v10 = *(i + 36);

    swift_beginAccess();
    sub_10046E7B8(v4, v9, v10);
    swift_endAccess();
    sub_10004B9FC(v4);
    result = sub_1000473F0(v4, type metadata accessor for AWDLPeer);
  }

  return result;
}

BOOL sub_10045BCF0(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 17);
  v5 = DNSRecords.Identifier.companionLink.unsafeMutableAddressor();
  v6 = *v5;
  v7 = v5[1];
  v8 = v3 | (v4 << 8);
  v9 = *(v5 + 16) | (*(v5 + 17) << 8);

  LOBYTE(v1) = static DNSRecords.Identifier.== infix(_:_:)(v1, v2, v8, v6, v7, v9);

  return (v1 & 1) == 0;
}

uint64_t sub_10045BD80(void **a1, uint64_t a2, uint64_t a3)
{
  v20[1] = a3;
  sub_100018AB4(255, &qword_100595230, AWDLTrafficRegistrationConfiguration_ptr);
  v5 = type metadata accessor for AWDLInterface.AdditionalTrafficRegistrationInformation();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v7 = *(TupleTypeMetadata2 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin();
  v10 = (v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = __chkstk_darwin();
  v13 = v20 - v12;
  v14 = *a1;
  *(v20 - v12) = *a1;
  v15 = *(v5 - 8);
  (*(v15 + 16))(v20 + *(v11 + 48) - v12, a2, v5);
  sub_100018AB4(0, &qword_100599470, NSObject_ptr);
  (*(v7 + 16))(v10, v13, TupleTypeMetadata2);
  v16 = *v10;
  v20[0] = *(TupleTypeMetadata2 + 48);
  v17 = v14;
  v18 = [v16 peerAddress];

  LOBYTE(a2) = static NSObject.== infix(_:_:)();
  (*(v7 + 8))(v13, TupleTypeMetadata2);
  (*(v15 + 8))(v10 + v20[0], v5);
  return a2 & 1;
}

uint64_t sub_10045BFC8(id *a1, void *a2, uint64_t a3)
{
  v154 = a3;
  v5 = *a2;
  v6 = type metadata accessor for AWDLPeer(0);
  v146 = *(v6 - 8);
  v147 = v6;
  v7 = *(v146 + 64);
  __chkstk_darwin();
  v143 = &v139 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(*(sub_10005DC58(&unk_10059B090, &unk_1004B1830) - 8) + 64);
  __chkstk_darwin();
  v145 = &v139 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v148 = &v139 - v11;
  v12 = v5[54];
  v13 = v5[55];
  v14 = type metadata accessor for AWDLInterface.AdditionalTrafficRegistrationInformation();
  v15 = *(*(type metadata accessor for Optional() - 8) + 64);
  __chkstk_darwin();
  v17 = &v139 - v16;
  v150 = sub_100018AB4(255, &qword_100595230, AWDLTrafficRegistrationConfiguration_ptr);
  v159 = v14;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v19 = *(TupleTypeMetadata2 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin();
  v157 = &v139 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v149 = (&v139 - v22);
  __chkstk_darwin();
  v144 = &v139 - v23;
  __chkstk_darwin();
  v25 = (&v139 - v24);
  __chkstk_darwin();
  v27 = (&v139 - v26);
  v28 = v5[20];
  v156 = v19;
  v29 = *(v19 + 16);
  v158 = a1;
  v29(&v139 - v26, a1, TupleTypeMetadata2);
  v151 = v28;
  v162 = a2;
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.info.getter();
  v32 = os_log_type_enabled(v30, v31);
  v160 = v29;
  v161 = v19 + 16;
  v155 = v17;
  if (v32)
  {
    v33 = swift_slowAlloc();
    LODWORD(v139) = v31;
    v140 = v30;
    v34 = v33;
    v163[0] = swift_slowAlloc();
    *v34 = 136315394;
    v29(v25, v27, TupleTypeMetadata2);
    v35 = *v25;
    v36 = v159;
    v37 = v25;
    v38 = *(TupleTypeMetadata2 + 48);
    v39 = [*v25 uniqueIdentifier];

    (*(*(v36 - 8) + 8))(v37 + v38, v36);
    v152 = *(v156 + 8);
    v152(v27, TupleTypeMetadata2);
    v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v42 = v41;

    v43 = v158;
    v44 = sub_100002320(v40, v42, v163);

    *(v34 + 4) = v44;
    *(v34 + 12) = 2080;
    v45 = WiFiAddress.description.getter(v154 & 0xFFFFFFFFFFFFLL);
    v47 = sub_100002320(v45, v46, v163);

    *(v34 + 14) = v47;
    v48 = v140;
    _os_log_impl(&_mh_execute_header, v140, v139, "Attempting to recover traffic registration for %s to %s", v34, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v152 = *(v156 + 8);
    v152(v27, TupleTypeMetadata2);

    v37 = v25;
    v43 = v158;
  }

  v49 = v153;
  sub_100449054(*v43);
  v153 = v49;
  if (v49)
  {
    v50 = v37;
    v51 = v160;
    v160(v157, v43, TupleTypeMetadata2);
    swift_errorRetain();
    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.error.getter();

    LODWORD(v144) = v53;
    v151 = v52;
    v54 = os_log_type_enabled(v52, v53);
    v142 = v50;
    v141 = TupleTypeMetadata2;
    if (v54)
    {
      v43 = v50;
      v55 = swift_slowAlloc();
      v140 = swift_slowAlloc();
      v139 = swift_slowAlloc();
      v163[0] = v139;
      *v55 = 136315650;
      v56 = v50;
      v57 = v157;
      v51(v56, v157, TupleTypeMetadata2);
      v58 = *v43;
      v59 = *(TupleTypeMetadata2 + 48);
      v60 = [*v43 uniqueIdentifier];

      (*(*(v159 - 8) + 8))(v43 + v59);
      v152(v57, TupleTypeMetadata2);
      v61 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v63 = v62;

      v64 = sub_100002320(v61, v63, v163);

      *(v55 + 4) = v64;
      *(v55 + 12) = 2080;
      v65 = v154 & 0xFFFFFFFFFFFFLL;
      v66 = WiFiAddress.description.getter(v154 & 0xFFFFFFFFFFFFLL);
      v68 = sub_100002320(v66, v67, v163);

      *(v55 + 14) = v68;
      *(v55 + 22) = 2112;
      swift_errorRetain();
      v69 = _swift_stdlib_bridgeErrorToNSError();
      *(v55 + 24) = v69;
      v70 = v140;
      v140->isa = v69;
      v71 = v151;
      _os_log_impl(&_mh_execute_header, v151, v144, "Failed to recover traffic registration for %s to %s: %@", v55, 0x20u);
      sub_100016290(v70, &qword_10058B780, &qword_100480AC0);

      swift_arrayDestroy();
    }

    else
    {
      v152(v157, TupleTypeMetadata2);

      v65 = v154 & 0xFFFFFFFFFFFFLL;
    }

    v91 = v162;
    v92 = *(*v162 + 448);
    swift_beginAccess();
    v93 = *(v91 + v92);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v164 = *(v91 + v92);
    v95 = v164;
    *(v91 + v92) = 0x8000000000000000;
    v97 = sub_100041DE8(v65);
    v98 = *(v95 + 16);
    v99 = (v96 & 1) == 0;
    v100 = v98 + v99;
    if (__OFADD__(v98, v99))
    {
      __break(1u);
    }

    else
    {
      LOBYTE(v43) = v96;
      if (*(v95 + 24) < v100)
      {
        sub_100310628(v100, isUniquelyReferenced_nonNull_native);
        v101 = sub_100041DE8(v65);
        if ((v43 & 1) != (v102 & 1))
        {
LABEL_27:
          result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          return result;
        }

        v97 = v101;
        if ((v43 & 1) == 0)
        {
LABEL_26:
          (*(v146 + 56))(v148, 1, 1, v147);
          __break(1u);
          goto LABEL_27;
        }

        goto LABEL_17;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        if ((v96 & 1) == 0)
        {
          goto LABEL_26;
        }

        goto LABEL_17;
      }
    }

    sub_10046B248();
    if ((v43 & 1) == 0)
    {
      goto LABEL_26;
    }

LABEL_17:
    v103 = v164;
    v104 = v146;
    v105 = *(v146 + 72) * v97;
    v106 = v148;
    sub_10003DFE0(*(v164 + 56) + v105, v148, type metadata accessor for AWDLPeer);
    v107 = v147;
    (*(v104 + 56))(v106, 0, 1, v147);
    *(v106 + *(v107 + 112)) = 1;
    v108 = v145;
    sub_100012400(v106, v145, &unk_10059B090, &unk_1004B1830);
    if ((*(v104 + 48))(v108, 1, v107) == 1)
    {
      sub_100016290(v108, &unk_10059B090, &unk_1004B1830);
      sub_10004B80C(v97, v103, type metadata accessor for AWDLPeer);
    }

    else
    {
      v109 = v143;
      sub_10003DFE0(v108, v143, type metadata accessor for AWDLPeer);
      sub_10003DFE0(v109, *(v103 + 56) + v105, type metadata accessor for AWDLPeer);
    }

    v110 = v155;
    sub_100016290(v106, &unk_10059B090, &unk_1004B1830);
    v111 = v162;
    *(v162 + v92) = v103;
    swift_endAccess();
    v112 = v142;
    v113 = v158;
    v114 = v141;
    v115 = v160;
    v160(v142, v158, v141);
    v116 = *v112;
    v117 = *(v114 + 48);
    v118 = v149;
    v115(v149, v113, v114);

    v119 = *(v114 + 48);
    v120 = v159;
    v121 = *(v159 - 8);
    (*(v121 + 32))(v110, v118 + v119, v159);
    (*(v121 + 56))(v110, 0, 1, v120);
    v164 = v116;
    v122 = *(*v111 + 584);
    swift_beginAccess();
    sub_100047340(&qword_100595238, &qword_100595230, AWDLTrafficRegistrationConfiguration_ptr);
    type metadata accessor for Dictionary();
    Dictionary.subscript.setter();
    swift_endAccess();
    sub_10004C128();

    return (*(v121 + 8))(&v112[v117], v120);
  }

  v72 = v144;
  v73 = v160;
  v160(v144, v43, TupleTypeMetadata2);
  v74 = Logger.logObject.getter();
  v75 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v74, v75))
  {
    v76 = swift_slowAlloc();
    v157 = swift_slowAlloc();
    v163[0] = v157;
    *v76 = 136315394;
    v73(v37, v72, TupleTypeMetadata2);
    v77 = *v37;
    v78 = v37;
    v79 = v159;
    v80 = *(TupleTypeMetadata2 + 48);
    v81 = [v77 uniqueIdentifier];
    v151 = v74;
    v82 = v72;
    v83 = v81;

    (*(*(v79 - 8) + 8))(v78 + v80, v79);
    v152(v82, TupleTypeMetadata2);
    v84 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v86 = v85;

    v87 = sub_100002320(v84, v86, v163);
    v37 = v78;

    *(v76 + 4) = v87;
    *(v76 + 12) = 2080;
    v88 = WiFiAddress.description.getter(v154 & 0xFFFFFFFFFFFFLL);
    v90 = sub_100002320(v88, v89, v163);

    *(v76 + 14) = v90;
    v73 = v160;
    v74 = v151;
    _os_log_impl(&_mh_execute_header, v151, v75, "Successfully recovered traffic registration for %s to %s", v76, 0x16u);
    swift_arrayDestroy();

    v43 = v158;
  }

  else
  {
    v152(v72, TupleTypeMetadata2);
  }

  v73(v37, v43, TupleTypeMetadata2);
  v124 = *v37;
  v151 = *(TupleTypeMetadata2 + 48);
  v125 = v159;
  v126 = v43;
  v127 = *(v159 - 8);
  v128 = *(v127 + 56);
  v156 = v127 + 56;
  v157 = v128;
  v129 = TupleTypeMetadata2;
  (v128)(v155, 1, 1, v159);
  v164 = v124;
  v130 = v162;
  v131 = *(*v162 + 584);
  swift_beginAccess();
  sub_100047340(&qword_100595238, &qword_100595230, AWDLTrafficRegistrationConfiguration_ptr);
  v154 = type metadata accessor for Dictionary();
  Dictionary.subscript.setter();
  swift_endAccess();
  sub_10004C128();
  v152 = *(v127 + 8);
  v152(v151 + v37, v125);
  v132 = v126;
  v133 = v126;
  v134 = v160;
  v160(v37, v133, v129);
  v135 = *(v129 + 48);
  v150 = *v37;
  v151 = v135;
  v136 = v149;
  v134(v149, v132);

  v137 = v155;
  (*(v127 + 32))(v155, v136 + *(v129 + 48), v125);
  (v157)(v137, 0, 1, v125);
  v164 = v150;
  v138 = *(*v130 + 568);
  swift_beginAccess();
  Dictionary.subscript.setter();
  swift_endAccess();
  sub_10004C128();
  return (v152)(v151 + v37, v125);
}

uint64_t sub_10045D01C(void **a1, uint64_t a2, void (*a3)(char *, uint64_t), uint64_t a4)
{
  v132 = a3;
  v6 = *(*a4 + 432);
  v7 = *a4;
  v126 = a4;
  v8 = *(v7 + 440);
  v9 = type metadata accessor for AWDLInterface.AdditionalTrafficRegistrationInformation();
  v10 = type metadata accessor for Optional();
  v124 = *(v10 - 8);
  v125 = v10;
  isa = v124[8].isa;
  __chkstk_darwin();
  v123 = &v116 - v12;
  v13 = type metadata accessor for DispatchTimeInterval();
  v133 = *(v13 - 8);
  v134 = v13;
  v14 = *(v133 + 8);
  __chkstk_darwin();
  v127 = &v116 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v128 = &v116 - v16;
  __chkstk_darwin();
  v141 = &v116 - v17;
  v18 = *(*(sub_10005DC58(&unk_100597330, &unk_100481FA0) - 8) + 64);
  __chkstk_darwin();
  v139 = &v116 - v19;
  v20 = type metadata accessor for DispatchTime();
  v143 = *(v20 - 8);
  v21 = *(v143 + 64);
  __chkstk_darwin();
  v131 = &v116 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v136 = &v116 - v23;
  sub_100018AB4(255, &qword_100595230, AWDLTrafficRegistrationConfiguration_ptr);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v25 = *(TupleTypeMetadata2 - 8);
  v26 = *(v25 + 64);
  __chkstk_darwin();
  v130 = &v116 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v129 = &v116 - v28;
  __chkstk_darwin();
  v137 = (&v116 - v29);
  __chkstk_darwin();
  v31 = (&v116 - v30);
  v32 = __chkstk_darwin();
  v34 = &v116 - v33;
  v35 = *a1;
  *(&v116 - v33) = v35;
  v36 = *(v9 - 8);
  (*(v36 + 16))(&v116 + *(v32 + 48) - v33, a2, v9);
  v140 = v25;
  v37 = v25 + 16;
  v138 = *(v25 + 16);
  v138(v31, v34, TupleTypeMetadata2);
  v38 = *v31;
  v39 = v35;
  v40 = v143;
  v121 = v39;

  v142 = TupleTypeMetadata2;
  v41 = v31 + *(TupleTypeMetadata2 + 48);
  v42 = v139;
  sub_100012400(&v41[*(v9 + 36)], v139, &unk_100597330, &unk_100481FA0);
  v122 = v36;
  v45 = *(v36 + 8);
  v44 = v36 + 8;
  v43 = v45;
  v46 = v41;
  v47 = v42;
  v135 = v9;
  v45(v46, v9);
  if ((*(v40 + 48))(v42, 1, v20) != 1)
  {
    v51 = *(v40 + 32);
    v120 = v44;
    v52 = v136;
    v51(v136, v42, v20);
    type metadata accessor for P2PTimer();
    v53 = v131;
    variable initialization expression of AWDLPeer.lastUpdated();
    DispatchTime.distance(to:)();
    v54 = *(v40 + 8);
    v131 = v20;
    v143 = v40 + 8;
    v119 = v54;
    v54(v53, v20);
    sub_100018AB4(0, &qword_100599470, NSObject_ptr);
    v55 = v137;
    v139 = v34;
    v56 = v142;
    v118 = v37;
    v138(v137, v34, v142);
    v57 = *v55;
    v58 = *(v56 + 48);
    v59 = [*v55 peerAddress];

    v60 = static NSObject.== infix(_:_:)();
    v61 = v135;
    v43(v55 + v58, v135);
    v62 = v52;
    if (v60)
    {
      v48 = v142;
      (*(v133 + 1))(v141, v134);
    }

    else
    {
      v63 = v61;
      v48 = v142;
      v117 = v43;
      v64 = v128;
      *v128 = 180;
      v66 = v133;
      v65 = v134;
      (*(v133 + 13))(v64, enum case for DispatchTimeInterval.seconds(_:), v134);
      v67 = v141;
      v68 = static DispatchTimeInterval.< infix(_:_:)();
      v132 = *(v66 + 1);
      v132(v64, v65);
      if (!v68)
      {
        v128 = (v66 + 2);
        v69 = v63;
        v71 = v137;
        v70 = v138;
        v72 = v139;
        v138(v137, v139, v48);

        v73 = v122;
        v74 = v71 + *(v48 + 48);
        v75 = v123;
        (*(v122 + 32))(v123, v74, v69);
        (*(v73 + 56))(v75, 0, 1, v69);
        v76 = v126;
        sub_100456BB0(v121, v75);
        (v124[1].isa)(v75, v125);
        v77 = *(*v76 + 160);
        v70(v129, v72, v48);
        v70(v130, v72, v48);
        v78 = v127;
        (*(v66 + 2))(v127, v141, v65);
        v79 = Logger.logObject.getter();
        v80 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v79, v80))
        {
          v81 = swift_slowAlloc();
          v133 = v81;
          v126 = swift_slowAlloc();
          v144 = v126;
          *v81 = 136315650;
          v82 = v137;
          v83 = v129;
          v70(v137, v129, v48);
          LODWORD(v125) = v80;
          v84 = *v82;
          v85 = *(v48 + 48);
          v86 = [*v82 uniqueIdentifier];

          v124 = v79;
          v87 = v48;
          v117(v82 + v85, v135);
          v88 = *(v140 + 8);
          v88(v83, v48);
          v89 = v88;
          v90 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v92 = v91;

          v93 = sub_100002320(v90, v92, &v144);

          v94 = v133;
          *(v133 + 1) = v93;
          *(v94 + 6) = 2080;
          v95 = v130;
          v138(v82, v130, v48);
          v96 = *v82;
          v97 = *(v48 + 48);
          v98 = [*v82 peerAddress];

          v99 = WiFiMACAddress.wifiAddress.getter();
          v117(v82 + v97, v135);
          v48 = v87;
          v89(v95, v87);
          v100 = WiFiAddress.description.getter(v99 & 0xFFFFFFFFFFFFLL);
          v102 = sub_100002320(v100, v101, &v144);

          v103 = v133;
          *(v133 + 14) = v102;
          *(v103 + 11) = 2080;
          v104 = v127;
          v105 = DispatchTimeInterval.description.getter();
          v107 = v106;
          v108 = v104;
          v109 = v134;
          v110 = v132;
          v132(v108, v134);
          v111 = sub_100002320(v105, v107, &v144);

          *(v103 + 3) = v111;
          v112 = v124;
          _os_log_impl(&_mh_execute_header, v124, v125, "Cleared responder traffic registration for %s from %s (expired while in recovery for %s)", v103, 0x20u);
          swift_arrayDestroy();

          v110(v141, v109);
        }

        else
        {
          v113 = *(v140 + 8);
          v113(v130, v48);
          v113(v129, v48);

          v114 = v132;
          v132(v78, v65);
          v114(v141, v65);
        }

        v119(v136, v131);
        v49 = 0;
        goto LABEL_12;
      }

      v132(v67, v65);
    }

    v119(v62, v131);
    v49 = 1;
LABEL_12:
    v50 = v139;
    goto LABEL_13;
  }

  v48 = v142;
  sub_100016290(v47, &unk_100597330, &unk_100481FA0);
  v49 = 0;
  v50 = v34;
LABEL_13:
  (*(v140 + 8))(v50, v48);
  return v49;
}

uint64_t sub_10045DBD4(void *a1, void **a2, uint64_t *a3, unint64_t a4, void (*a5)(char *, uint64_t))
{
  v142 = a4;
  v143 = a5;
  v155 = a2;
  v6 = *(*a3 + 440);
  v7 = *(v6 + 8);
  v8 = *a3;
  v152 = a3;
  v9 = *(v8 + 432);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v138 = *(AssociatedTypeWitness - 8);
  v10 = *(v138 + 64);
  __chkstk_darwin();
  v137 = &v126 - v11;
  v12 = type metadata accessor for DispatchTimeInterval();
  v146 = *(v12 - 8);
  v147 = v12;
  v13 = *(v146 + 64);
  __chkstk_darwin();
  v145 = &v126 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v150 = &v126 - v15;
  v16 = *(*(sub_10005DC58(&unk_100597330, &unk_100481FA0) - 8) + 64);
  __chkstk_darwin();
  v148 = (&v126 - v17);
  v153 = type metadata accessor for DispatchTime();
  v156 = *(v153 - 8);
  v18 = *(v156 + 64);
  __chkstk_darwin();
  v140 = &v126 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v149 = &v126 - v20;
  sub_100018AB4(255, &qword_100595230, AWDLTrafficRegistrationConfiguration_ptr);
  v135 = v9;
  v136 = v6;
  v21 = type metadata accessor for AWDLInterface.AdditionalTrafficRegistrationInformation();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v23 = *(TupleTypeMetadata2 - 8);
  v24 = *(v23 + 64);
  __chkstk_darwin();
  v134 = &v126 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v141 = &v126 - v26;
  __chkstk_darwin();
  v28 = (&v126 - v27);
  __chkstk_darwin();
  v30 = (&v126 - v29);
  sub_100018AB4(0, &qword_100599470, NSObject_ptr);
  v144 = v23;
  v33 = *(v23 + 16);
  v31 = v23 + 16;
  v32 = v33;
  v151 = a1;
  v33(v30, a1, TupleTypeMetadata2);
  v34 = *v30;
  v154 = TupleTypeMetadata2;
  v35 = *(TupleTypeMetadata2 + 48);
  v36 = [v34 peerAddress];

  v37 = v21;
  LOBYTE(v34) = static NSObject.== infix(_:_:)();

  v38 = *(v21 - 8);
  v39 = *(v38 + 8);
  v40 = v38 + 8;
  v155 = v30;
  result = v39(v30 + v35, v37);
  if (v34)
  {
    v42 = v151;
    v43 = v154;
    v32(v28, v151, v154);

    v44 = v28 + *(v43 + 48);
    v45 = v148;
    sub_100012400(&v44[*(v37 + 36)], v148, &unk_100597330, &unk_100481FA0);
    v133 = v40;
    v39(v44, v37);
    v46 = v156;
    v47 = v153;
    if ((*(v156 + 48))(v45, 1, v153) == 1)
    {
      return sub_100016290(v45, &unk_100597330, &unk_100481FA0);
    }

    else
    {
      v131 = v39;
      v132 = v37;
      (*(v46 + 32))(v149, v45, v47);
      type metadata accessor for P2PTimer();
      v48 = v140;
      variable initialization expression of AWDLPeer.lastUpdated();
      v49 = v150;
      DispatchTime.distance(to:)();
      v50 = *(v46 + 8);
      v156 = v46 + 8;
      v148 = v50;
      (v50)(v48, v47);
      v51 = *(*v152 + 160);
      v52 = v141;
      v53 = v42;
      v54 = v154;
      v32(v141, v53, v154);
      v56 = v145;
      v55 = v146;
      v57 = v49;
      v58 = v147;
      (*(v146 + 16))(v145, v57, v147);
      v140 = v51;
      v59 = Logger.logObject.getter();
      v130 = static os_log_type_t.default.getter();
      v60 = os_log_type_enabled(v59, v130);
      v61 = v54;
      v129 = v31;
      v128 = v32;
      if (v60)
      {
        v62 = swift_slowAlloc();
        v127 = swift_slowAlloc();
        v158 = v127;
        *v62 = 136315650;
        v63 = v155;
        v32(v155, v52, v61);
        v64 = *v63;
        v65 = *(v61 + 48);
        v66 = [*v63 uniqueIdentifier];
        v126 = v59;
        v67 = v66;

        v131(v63 + v65, v132);
        v68 = *(v144 + 8);
        v68(v52, v61);
        v69 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v71 = v70;

        v72 = sub_100002320(v69, v71, &v158);

        *(v62 + 4) = v72;
        *(v62 + 12) = 2080;
        v73 = WiFiAddress.description.getter(v142 & 0xFFFFFFFFFFFFLL);
        v75 = sub_100002320(v73, v74, &v158);

        *(v62 + 14) = v75;
        *(v62 + 22) = 2080;
        v76 = v145;
        v77 = v146;
        v78 = DispatchTimeInterval.description.getter();
        v80 = v79;
        v81 = *(v77 + 8);
        v82 = v76;
        v83 = v147;
        v81(v82, v147);
        v84 = sub_100002320(v78, v80, &v158);

        *(v62 + 24) = v84;
        v85 = v126;
        _os_log_impl(&_mh_execute_header, v126, v130, "Attempting to recover responder traffic registration for %s from %s (in recovery for %s)", v62, 0x20u);
        swift_arrayDestroy();

        v86 = v83;
      }

      else
      {
        v68 = *(v144 + 8);
        v68(v52, v54);

        v81 = *(v55 + 8);
        v81(v56, v58);
        v86 = v58;
      }

      v87 = v157;
      if (*v143)
      {
        v81(v150, v86);
        return (v148)(v149, v153);
      }

      else
      {
        v145 = v68;
        v88 = Logger.logObject.getter();
        v89 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v88, v89))
        {
          v90 = swift_slowAlloc();
          v91 = swift_slowAlloc();
          v158 = v91;
          *v90 = 136315138;
          v92 = v142 & 0xFFFFFFFFFFFFLL;
          v93 = WiFiAddress.description.getter(v142 & 0xFFFFFFFFFFFFLL);
          v95 = sub_100002320(v93, v94, &v158);

          *(v90 + 4) = v95;
          v86 = v147;
          _os_log_impl(&_mh_execute_header, v88, v89, "Attempting to send responder traffic registration recovery frame to %s", v90, 0xCu);
          sub_100002A00(v91);

          v87 = v157;
        }

        else
        {

          v92 = v142 & 0xFFFFFFFFFFFFLL;
        }

        v96 = v152;
        v97 = *(*v152 + 96);
        swift_beginAccess();
        v98 = v138;
        v99 = v96 + v97;
        v100 = v137;
        v101 = AssociatedTypeWitness;
        (*(v138 + 16))(v137, v99, AssociatedTypeWitness);
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
        (*(AssociatedConformanceWitness + 80))(31, v92, v101, AssociatedConformanceWitness);
        if (v87)
        {
          v142 = v92;
          v143 = v81;
          (*(v98 + 8))(v100, v101);
          v103 = v134;
          v104 = v154;
          v105 = v128;
          v128(v134, v151, v154);
          swift_errorRetain();
          v106 = Logger.logObject.getter();
          v107 = static os_log_type_t.error.getter();

          LODWORD(v152) = v107;
          if (os_log_type_enabled(v106, v107))
          {
            v108 = swift_slowAlloc();
            v157 = v87;
            v109 = v108;
            v151 = swift_slowAlloc();
            v159 = swift_slowAlloc();
            *v109 = 136315650;
            v110 = v155;
            v105(v155, v103, v104);
            v111 = v103;
            v112 = *v110;
            v113 = *(v104 + 48);
            v114 = [*v110 uniqueIdentifier];

            v131(v110 + v113, v132);
            (v145)(v111, v104);
            v115 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v117 = v116;

            v118 = sub_100002320(v115, v117, &v159);

            *(v109 + 4) = v118;
            *(v109 + 12) = 2080;
            v119 = WiFiAddress.description.getter(v142);
            v121 = sub_100002320(v119, v120, &v159);

            *(v109 + 14) = v121;
            *(v109 + 22) = 2112;
            swift_errorRetain();
            v122 = _swift_stdlib_bridgeErrorToNSError();
            *(v109 + 24) = v122;
            v123 = v151;
            *v151 = v122;
            _os_log_impl(&_mh_execute_header, v106, v152, "Failed to send responder traffic registration recovery frame for %s to %s: %@", v109, 0x20u);
            sub_100016290(v123, &qword_10058B780, &qword_100480AC0);

            swift_arrayDestroy();

            v124 = v147;
            v125 = v150;
          }

          else
          {
            (v145)(v103, v104);

            v125 = v150;
            v124 = v86;
          }

          v143(v125, v124);
          return (v148)(v149, v153);
        }

        else
        {
          (*(v98 + 8))(v100, v101);
          v81(v150, v86);
          result = (v148)(v149, v153);
          *v143 = 1;
        }
      }
    }
  }

  return result;
}

uint64_t sub_10045E9D8(uint64_t *a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4)
{
  v6 = *a1;
  v7 = a1[1];
  v8 = *(*a4 + 448);
  swift_beginAccess();
  v9 = *(a4 + v8);
  *(a4 + v8) = 0x8000000000000000;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_10046B248();
  }

  if (v6 < 0 || v6 >= 1 << *(v9 + 32))
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(v9 + 8 * (v6 >> 6) + 64) >> v6) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(v9 + 36) == v7)
  {
    v11 = *(v9 + 56);
    v12 = type metadata accessor for AWDLPeer(0);
    a2(v11 + *(*(v12 - 8) + 72) * v6);
    *(a4 + v8) = v9;
    return swift_endAccess();
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_10045EB04(void **a1, uint64_t a2)
{
  sub_100018AB4(255, &qword_100595230, AWDLTrafficRegistrationConfiguration_ptr);
  v4 = type metadata accessor for AWDLInterface.AdditionalTrafficRegistrationInformation();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v6 = *(TupleTypeMetadata2 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin();
  v9 = (&v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = __chkstk_darwin();
  v12 = &v28 - v11;
  v13 = *a1;
  *(&v28 - v11) = *a1;
  v14 = *(v10 + 48);
  v15 = *(v4 - 8);
  v16 = *(v15 + 16);
  v29 = v4;
  v16(&v28 + v14 - v11, a2, v4);
  (*(v6 + 16))(v9, v12, TupleTypeMetadata2);
  v17 = *v9;
  v18 = v13;
  v19 = [v17 uniqueIdentifier];

  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;
  if (v20 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v22 == v23)
  {
    v25 = 1;
  }

  else
  {
    v25 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v26 = *(TupleTypeMetadata2 + 48);

  (*(v6 + 8))(v12, TupleTypeMetadata2);
  (*(v15 + 8))(v9 + v26, v29);
  return v25 & 1;
}

uint64_t sub_10045ED80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_100018AB4(255, &qword_100595230, AWDLTrafficRegistrationConfiguration_ptr);
  v4 = type metadata accessor for AWDLInterface.AdditionalTrafficRegistrationInformation();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v6 = *(*(TupleTypeMetadata2 - 8) + 64);
  __chkstk_darwin();
  v8 = (v15 - v7);
  (*(v9 + 16))(v15 - v7, a1, TupleTypeMetadata2);
  v10 = *v8;
  v11 = *(TupleTypeMetadata2 + 48);
  v12 = [*v8 peerAddress];

  v13 = WiFiMACAddress.wifiAddress.getter();
  *a2 = v13;
  *(a2 + 2) = BYTE2(v13);
  *(a2 + 3) = BYTE3(v13);
  *(a2 + 4) = BYTE4(v13);
  *(a2 + 5) = BYTE5(v13);
  return (*(*(v4 - 8) + 8))(v8 + v11, v4);
}

uint64_t sub_10045EF34@<X0>(unsigned __int16 *a1@<X0>, void *a2@<X8>)
{
  v67 = a2;
  v68 = *(type metadata accessor for AWDLPeer.AdvertisedService(0) - 8);
  v4 = *(v68 + 64);
  __chkstk_darwin();
  v6 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AWDLPeer(0);
  v8 = *(*(v7 - 1) + 64);
  __chkstk_darwin();
  v10 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 1);
  v12 = *a1;
  v74 = &_swiftEmptyDictionarySingleton;
  sub_10005DC58(&unk_10059B2B0, &qword_100482FC0);
  Dictionary.reserveCapacity(_:)(10);
  v13 = v12 | (v11 << 16);
  v14 = v7;
  sub_100041B60(v13, v10);
  v15 = WiFiAddress.data.getter(*&v10[v7[5]] | (*&v10[v7[5] + 2] << 16));
  *(&v73 + 1) = &type metadata for Data;
  *&v72 = v15;
  *(&v72 + 1) = v16;
  sub_100085188(&v72, &v70);
  v17 = v74;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v69 = v17;
  sub_10007FDF4(&v70, 0x5F4E4F4954415453, 0xEB0000000043414DLL, isUniquelyReferenced_nonNull_native);
  v19 = v69;
  v20 = &v10[v7[24]];
  if (v20[8] == 1 && (v20 = &v10[v7[23]], (v20[8] & 1) != 0))
  {
    v21 = 0;
  }

  else
  {
    v21 = *v20;
  }

  *(&v73 + 1) = &type metadata for Int;
  *&v72 = v21;
  sub_100085188(&v72, &v70);
  v22 = swift_isUniquelyReferenced_nonNull_native();
  v69 = v19;
  sub_10007FDF4(&v70, 0x5F4E4F4954415453, 0xEC00000049535352, v22);
  v23 = v69;
  v74 = v69;
  v24 = &v10[v7[9]];
  if (v24[48])
  {
    v25 = &v10[v14[8]];
    if (v25[25])
    {
      v72 = 0u;
      v73 = 0u;
LABEL_14:
      sub_100016290(&v72, &qword_10058BA80, &qword_1004818C0);
      sub_10007F624(0xD00000000000001CLL, 0x80000001004C31A0, &v70);
      sub_100016290(&v70, &qword_10058BA80, &qword_1004818C0);
      goto LABEL_18;
    }

    v27 = v25[24];
    v28 = *(v25 + 2);
    if (v27)
    {
      LODWORD(v28) = dword_1004B4E3C[v28 >> 32];
    }

    else
    {
      v28 = HIDWORD(v28);
    }

    *(&v73 + 1) = &type metadata for UInt32;
    LODWORD(v72) = v28;
  }

  else
  {
    v26 = *(v24 + 3);
    if (*(v24 + 8))
    {
      LODWORD(v26) = dword_1004B4E3C[v26 >> 32];
    }

    else
    {
      v26 = HIDWORD(v26);
    }

    v71 = &type metadata for UInt32;
    LODWORD(v70) = v26;
    sub_100085188(&v70, &v72);
    if (!*(&v73 + 1))
    {
      goto LABEL_14;
    }
  }

  sub_100085188(&v72, &v70);
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v69 = v23;
  sub_10007FDF4(&v70, 0xD00000000000001CLL, 0x80000001004C31A0, v29);
  v74 = v69;
LABEL_18:
  v30 = &v10[v14[13]];
  v31 = *(v30 + 2);
  if (v31)
  {
    v32 = *(v30 + 1);
    *(&v73 + 1) = &type metadata for String;
    *&v72 = v32;
    *(&v72 + 1) = v31;
    sub_100085188(&v72, &v70);

    v33 = v74;
    v34 = swift_isUniquelyReferenced_nonNull_native();
    v69 = v33;
    sub_10007FDF4(&v70, 0xD000000000000010, 0x80000001004C31C0, v34);
    v74 = v69;
  }

  else
  {
    sub_10007F624(0xD000000000000010, 0x80000001004C31C0, &v72);
    sub_100016290(&v72, &qword_10058BA80, &qword_1004818C0);
  }

  if (v24[48])
  {
    sub_10007F624(0xD000000000000017, 0x80000001004C31E0, &v72);
    sub_100016290(&v72, &qword_10058BA80, &qword_1004818C0);
  }

  else
  {
    v35 = WiFiAddress.data.getter(*v24 & 0xFFFFFFFFFFFFLL);
    *(&v73 + 1) = &type metadata for Data;
    *&v72 = v35;
    *(&v72 + 1) = v36;
    sub_100085188(&v72, &v70);
    v37 = v74;
    v38 = swift_isUniquelyReferenced_nonNull_native();
    v69 = v37;
    sub_10007FDF4(&v70, 0xD000000000000017, 0x80000001004C31E0, v38);
    v74 = v69;
  }

  if (v24[48])
  {
    sub_10007F624(0xD000000000000018, 0x80000001004C3200, &v72);
    sub_100016290(&v72, &qword_10058BA80, &qword_1004818C0);
  }

  else
  {
    v39 = WiFiAddress.data.getter((*v24 >> 48) & 0xFFFFFFFFFFFFLL);
    *(&v73 + 1) = &type metadata for Data;
    *&v72 = v39;
    *(&v72 + 1) = v40;
    sub_100085188(&v72, &v70);
    v41 = v74;
    v42 = swift_isUniquelyReferenced_nonNull_native();
    v69 = v41;
    sub_10007FDF4(&v70, 0xD000000000000018, 0x80000001004C3200, v42);
    v74 = v69;
  }

  if (v24[48])
  {
    sub_10007F624(0xD000000000000019, 0x80000001004C3220, &v72);
    sub_100016290(&v72, &qword_10058BA80, &qword_1004818C0);
  }

  else
  {
    v43 = *(v24 + 2);
    *(&v73 + 1) = &type metadata for UInt32;
    LODWORD(v72) = v43;
    sub_100085188(&v72, &v70);
    v44 = v74;
    v45 = swift_isUniquelyReferenced_nonNull_native();
    v69 = v44;
    sub_10007FDF4(&v70, 0xD000000000000019, 0x80000001004C3220, v45);
    v74 = v69;
  }

  v66 = v14;
  v46 = *&v10[v14[20]];
  *&v72 = _swiftEmptyArrayStorage;
  v47 = 1 << *(v46 + 32);
  v48 = -1;
  if (v47 < 64)
  {
    v48 = ~(-1 << v47);
  }

  v49 = v48 & *(v46 + 56);
  v50 = (v47 + 63) >> 6;

  v51 = 0;
  if (v49)
  {
    while (1)
    {
      v52 = v51;
LABEL_37:
      sub_100027648(*(v46 + 48) + *(v68 + 72) * (__clz(__rbit64(v49)) | (v52 << 6)), v6, type metadata accessor for AWDLPeer.AdvertisedService);
      sub_10045F87C(v6, &v70);
      if (v2)
      {
        break;
      }

      v49 &= v49 - 1;
      sub_1000473F0(v6, type metadata accessor for AWDLPeer.AdvertisedService);
      sub_1002350D4(v70);
      v51 = v52;
      if (!v49)
      {
        goto LABEL_34;
      }
    }

LABEL_48:

    sub_1000473F0(v6, type metadata accessor for AWDLPeer.AdvertisedService);

    __break(1u);
  }

  else
  {
    while (1)
    {
LABEL_34:
      v52 = v51 + 1;
      if (__OFADD__(v51, 1))
      {
        __break(1u);
        goto LABEL_48;
      }

      if (v52 >= v50)
      {
        break;
      }

      v49 = *(v46 + 56 + 8 * v52);
      ++v51;
      if (v49)
      {
        goto LABEL_37;
      }
    }

    v53 = v72;
    *(&v73 + 1) = sub_10005DC58(&qword_10058CBE0, &qword_100482CF0);
    *&v72 = v53;
    sub_100085188(&v72, &v70);
    v54 = v74;
    v55 = swift_isUniquelyReferenced_nonNull_native();
    v69 = v54;
    sub_10007FDF4(&v70, 0xD000000000000015, 0x80000001004C3240, v55);
    v56 = v69;
    v57 = &v10[v66[16]];
    v58 = *v57;
    v59 = v57[2];
    if (v59)
    {
      LOBYTE(v60) = 0;
    }

    else
    {
      v60 = 0x1008040201uLL >> (8 * AWDLActionFrame.Version.platformType.getter(*v57));
    }

    *(&v73 + 1) = &type metadata for UInt8;
    LOBYTE(v72) = v60;
    sub_100085188(&v72, &v70);
    v61 = swift_isUniquelyReferenced_nonNull_native();
    v69 = v56;
    sub_10007FDF4(&v70, 0xD000000000000015, 0x80000001004C3260, v61);
    v62 = v69;
    v74 = v69;
    if (v59)
    {
      sub_10007F624(0xD000000000000014, 0x80000001004BB8B0, &v72);
      sub_100016290(&v72, &qword_10058BA80, &qword_1004818C0);
      result = sub_1000473F0(v10, type metadata accessor for AWDLPeer);
      v64 = v74;
    }

    else
    {
      *(&v73 + 1) = &type metadata for UInt8;
      LOBYTE(v72) = v58;
      sub_100085188(&v72, &v70);
      v65 = swift_isUniquelyReferenced_nonNull_native();
      v69 = v62;
      sub_10007FDF4(&v70, 0xD000000000000014, 0x80000001004BB8B0, v65);
      result = sub_1000473F0(v10, type metadata accessor for AWDLPeer);
      v64 = v69;
    }

    *v67 = v64;
  }

  return result;
}

void sub_10045F87C(uint64_t a1@<X0>, char **a2@<X8>)
{
  v27 = *(a1 + 8);
  v28 = *(a1 + 24);
  v29 = *(a1 + 40);
  v23 = DNSRecords.PTR.description.getter(a1);
  v25 = v4;
  v5._countAndFlagsBits = 1381257274;
  v5._object = 0xE400000000000000;
  String.append(_:)(v5);
  v6 = sub_100115F7C(0, 1, 1, _swiftEmptyArrayStorage);
  v7 = v6;
  v9 = *(v6 + 2);
  v8 = *(v6 + 3);
  if (v9 >= v8 >> 1)
  {
    v6 = sub_100115F7C((v8 > 1), v9 + 1, 1, v6);
    v7 = v6;
  }

  *(v7 + 2) = v9 + 1;
  v10 = &v7[16 * v9];
  *(v10 + 4) = v23;
  *(v10 + 5) = v25;
  if (*(a1 + 56))
  {
    v24 = DNSRecords.PTR.description.getter(v6);
    v26 = v11;
    v12._countAndFlagsBits = 1415074874;
    v12._object = 0xE400000000000000;
    String.append(_:)(v12);
    v14 = *(v7 + 2);
    v13 = *(v7 + 3);
    if (v14 >= v13 >> 1)
    {
      v6 = sub_100115F7C((v13 > 1), v14 + 1, 1, v7);
      v7 = v6;
    }

    *(v7 + 2) = v14 + 1;
    v15 = &v7[16 * v14];
    *(v15 + 4) = v24;
    *(v15 + 5) = v26;
  }

  v21 = DNSRecords.PTR.description.getter(v6);
  v22 = v16;
  v17._countAndFlagsBits = 1448235834;
  v17._object = 0xE400000000000000;
  String.append(_:)(v17);
  v19 = *(v7 + 2);
  v18 = *(v7 + 3);
  if (v19 >= v18 >> 1)
  {
    v7 = sub_100115F7C((v18 > 1), v19 + 1, 1, v7);
  }

  *(v7 + 2) = v19 + 1;
  v20 = &v7[16 * v19];
  *(v20 + 4) = v21;
  *(v20 + 5) = v22;
  *a2 = v7;
}

void sub_10045FA44(void **a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v78 = a5;
  v84 = a3;
  v8 = *a4;
  v9 = *(*(sub_10005DC58(&qword_10058F4D0, &qword_100491AB0) - 8) + 64);
  __chkstk_darwin();
  v75 = &v64 - v10;
  v11 = *(*(sub_10005DC58(&unk_100597330, &unk_100481FA0) - 8) + 64);
  __chkstk_darwin();
  v74 = &v64 - v12;
  v70 = type metadata accessor for DispatchTime();
  v69 = *(v70 - 8);
  v13 = *(v69 + 64);
  __chkstk_darwin();
  v77 = &v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v8 + 432);
  v85 = a4;
  v71 = *(v8 + 440);
  v72 = v15;
  v16 = type metadata accessor for AWDLInterface.AdditionalTrafficRegistrationInformation();
  v17 = *(*(type metadata accessor for Optional() - 8) + 64);
  __chkstk_darwin();
  v73 = &v64 - v18;
  v79 = sub_100018AB4(255, &qword_100595230, AWDLTrafficRegistrationConfiguration_ptr);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v86 = *(TupleTypeMetadata2 - 8);
  v20 = v86;
  v21 = *(v86 + 64);
  __chkstk_darwin();
  v68 = (&v64 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v83 = (&v64 - v23);
  __chkstk_darwin();
  v25 = (&v64 - v24);
  v26 = __chkstk_darwin();
  v28 = &v64 - v27;
  v29 = *a1;
  *(&v64 - v27) = *a1;
  v30 = *(v26 + 48);
  v31 = v16;
  v82 = v16;
  v32 = *(v16 - 8);
  (*(v32 + 16))(&v64 + v30 - v27, a2, v31);
  sub_100018AB4(0, &qword_100599470, NSObject_ptr);
  v80 = *(v20 + 16);
  v80(v25, v28, TupleTypeMetadata2);
  v33 = *v25;
  v81 = *(TupleTypeMetadata2 + 48);
  v67 = v29;
  v34 = [v33 peerAddress];

  v35 = static NSObject.== infix(_:_:)();
  v84 = v32;
  v36 = *(v32 + 8);
  v76 = v25;
  v37 = v25 + v81;
  v38 = v82;
  v36(v37);
  v39 = v86;
  if ((v35 & 1) == 0)
  {
    goto LABEL_10;
  }

  v66 = v35;
  v40 = v83;
  v41 = v80;
  v80(v83, v28, TupleTypeMetadata2);
  v42 = *v40;
  v81 = *(TupleTypeMetadata2 + 48);
  v43 = *(v85 + *(*v85 + 784));
  if (v43)
  {
    v44 = v36;
    v45 = v43;
    v46 = static NSObject.== infix(_:_:)();

    v36 = v44;
    v47 = v80;

    (v44)(v83 + v81, v38);
    v48 = v85;
    if (v46)
    {
      sub_1004601EC(v67);
    }
  }

  else
  {
    v47 = v41;

    (v36)(v83 + v81, v38);
    v48 = v85;
  }

  if ((*(v48 + *(*v48 + 520)) & 1) == 0)
  {
    v49 = v76;
    v47(v76, v28, TupleTypeMetadata2);
    v50 = *(TupleTypeMetadata2 + 48);
    v80 = *v49;
    v81 = v50;
    v51 = v68;
    v47(v68, v28, TupleTypeMetadata2);

    v52 = *(TupleTypeMetadata2 + 48);
    v53 = v36;
    v65 = v36;
    v54 = v69;
    v55 = *(v69 + 16);
    v83 = v28;
    v56 = v70;
    v55(v77, v51 + v52, v70);
    v53(v51 + v52, v38);
    type metadata accessor for P2PTimer();
    v57 = TupleTypeMetadata2;
    v58 = v74;
    variable initialization expression of AWDLPeer.lastUpdated();
    (*(v54 + 56))(v58, 0, 1, v56);
    v59 = type metadata accessor for UUID();
    v60 = v75;
    (*(*(v59 - 8) + 56))(v75, 1, 1, v59);
    v61 = v73;
    v28 = v83;
    v62 = v58;
    TupleTypeMetadata2 = v57;
    sub_100453F54(v77, v62, v60, v73);
    (*(v84 + 56))(v61, 0, 1, v38);
    v87 = v80;
    v63 = *(*v48 + 584);
    swift_beginAccess();
    sub_100047340(&qword_100595238, &qword_100595230, AWDLTrafficRegistrationConfiguration_ptr);
    type metadata accessor for Dictionary();
    Dictionary.subscript.setter();
    swift_endAccess();
    sub_10004C128();
    v65(v76 + v81, v38);
  }

  if (!__OFADD__(*v78, 1))
  {
    ++*v78;
    v39 = v86;
LABEL_10:
    (*(v39 + 8))(v28, TupleTypeMetadata2);
    return;
  }

  __break(1u);
}

void sub_1004601EC(void *a1)
{
  v2 = v1;
  v4 = [a1 peerAddress];
  v5 = WiFiMACAddress.wifiAddress.getter();

  v6 = *(*v2 + 160);
  v7 = a1;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v10 = 136315394;
    v11 = [v7 uniqueIdentifier];
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    v15 = sub_100002320(v12, v14, &v22);

    *(v10 + 4) = v15;
    *(v10 + 12) = 2080;
    v16 = WiFiAddress.description.getter(v5 & 0xFFFFFFFFFFFFLL);
    v18 = sub_100002320(v16, v17, &v22);

    *(v10 + 14) = v18;
    _os_log_impl(&_mh_execute_header, v8, v9, "Exiting retro mode for %s from %s, enabling infrastructure Wi-Fi", v10, 0x16u);
    swift_arrayDestroy();
  }

  v19 = *(v2 + *(*v2 + 736));
  swift_unownedRetainStrong();
  sub_1003EFBF8();

  v20 = *(*v2 + 784);
  v21 = *(v2 + v20);
  *(v2 + v20) = 0;
}

void sub_100460400(void **a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v78 = a5;
  v84 = a3;
  v8 = *a4;
  v9 = *(*(sub_10005DC58(&qword_10058F4D0, &qword_100491AB0) - 8) + 64);
  __chkstk_darwin();
  v75 = &v64 - v10;
  v11 = *(*(sub_10005DC58(&unk_100597330, &unk_100481FA0) - 8) + 64);
  __chkstk_darwin();
  v74 = &v64 - v12;
  v70 = type metadata accessor for DispatchTime();
  v69 = *(v70 - 8);
  v13 = *(v69 + 64);
  __chkstk_darwin();
  v77 = &v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v8 + 432);
  v85 = a4;
  v71 = *(v8 + 440);
  v72 = v15;
  v16 = type metadata accessor for AWDLInterface.AdditionalTrafficRegistrationInformation();
  v17 = *(*(type metadata accessor for Optional() - 8) + 64);
  __chkstk_darwin();
  v73 = &v64 - v18;
  v79 = sub_100018AB4(255, &qword_100595230, AWDLTrafficRegistrationConfiguration_ptr);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v86 = *(TupleTypeMetadata2 - 8);
  v20 = v86;
  v21 = *(v86 + 64);
  __chkstk_darwin();
  v68 = (&v64 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v83 = (&v64 - v23);
  __chkstk_darwin();
  v25 = (&v64 - v24);
  v26 = __chkstk_darwin();
  v28 = &v64 - v27;
  v29 = *a1;
  *(&v64 - v27) = *a1;
  v30 = *(v26 + 48);
  v31 = v16;
  v82 = v16;
  v32 = *(v16 - 8);
  (*(v32 + 16))(&v64 + v30 - v27, a2, v31);
  sub_100018AB4(0, &qword_100599470, NSObject_ptr);
  v80 = *(v20 + 16);
  v80(v25, v28, TupleTypeMetadata2);
  v33 = *v25;
  v81 = *(TupleTypeMetadata2 + 48);
  v67 = v29;
  v34 = [v33 peerAddress];

  v35 = static NSObject.== infix(_:_:)();
  v84 = v32;
  v36 = *(v32 + 8);
  v76 = v25;
  v37 = v25 + v81;
  v38 = v82;
  v36(v37);
  v39 = v86;
  if ((v35 & 1) == 0)
  {
    goto LABEL_10;
  }

  v66 = v35;
  v40 = v83;
  v41 = v80;
  v80(v83, v28, TupleTypeMetadata2);
  v42 = *v40;
  v81 = *(TupleTypeMetadata2 + 48);
  v43 = *(v85 + *(*v85 + 784));
  if (v43)
  {
    v44 = v36;
    v45 = v43;
    v46 = static NSObject.== infix(_:_:)();

    v36 = v44;
    v47 = v80;

    (v44)(v83 + v81, v38);
    v48 = v85;
    if (v46)
    {
      sub_1004601EC(v67);
    }
  }

  else
  {
    v47 = v41;

    (v36)(v83 + v81, v38);
    v48 = v85;
  }

  if ((*(v48 + *(*v48 + 520)) & 1) == 0)
  {
    v49 = v76;
    v47(v76, v28, TupleTypeMetadata2);
    v50 = *(TupleTypeMetadata2 + 48);
    v80 = *v49;
    v81 = v50;
    v51 = v68;
    v47(v68, v28, TupleTypeMetadata2);

    v52 = *(TupleTypeMetadata2 + 48);
    v53 = v36;
    v65 = v36;
    v54 = v69;
    v55 = *(v69 + 16);
    v83 = v28;
    v56 = v70;
    v55(v77, v51 + v52, v70);
    v53(v51 + v52, v38);
    type metadata accessor for P2PTimer();
    v57 = TupleTypeMetadata2;
    v58 = v74;
    variable initialization expression of AWDLPeer.lastUpdated();
    (*(v54 + 56))(v58, 0, 1, v56);
    v59 = type metadata accessor for UUID();
    v60 = v75;
    (*(*(v59 - 8) + 56))(v75, 1, 1, v59);
    v61 = v73;
    v28 = v83;
    v62 = v58;
    TupleTypeMetadata2 = v57;
    sub_100453F54(v77, v62, v60, v73);
    (*(v84 + 56))(v61, 0, 1, v38);
    v87 = v80;
    v63 = *(*v48 + 608);
    swift_beginAccess();
    sub_100047340(&qword_100595238, &qword_100595230, AWDLTrafficRegistrationConfiguration_ptr);
    type metadata accessor for Dictionary();
    Dictionary.subscript.setter();
    swift_endAccess();
    sub_10004C128();
    v65(v76 + v81, v38);
  }

  if (!__OFADD__(*v78, 1))
  {
    ++*v78;
    v39 = v86;
LABEL_10:
    (*(v39 + 8))(v28, TupleTypeMetadata2);
    return;
  }

  __break(1u);
}

uint64_t sub_100460BA8@<X0>(uint64_t *a1@<X0>, void *a2@<X2>, _BYTE *a3@<X8>)
{
  v5 = *a1;
  v6 = a1[1];

  v7 = sub_10016FD40(v5, v6);
  v9 = v8;
  v10 = WiFiInterface.macAddress.getter();
  v11 = [a2 peerAddress];
  v12 = WiFiMACAddress.wifiAddress.getter();

  v13 = sub_100460C98(v7, v9, v10 & 0xFFFFFFFFFFFFLL, v12 & 0xFFFFFFFFFFFFLL);
  LOBYTE(v11) = v13;
  v14 = v13 >> 8;
  v15 = v13 >> 16;
  v16 = v13 >> 24;
  v17 = HIDWORD(v13);
  v18 = v13 >> 40;
  result = sub_1000124C8(v7, v9);
  *a3 = v11;
  a3[1] = v14;
  a3[2] = v15;
  a3[3] = v16;
  a3[4] = v17;
  a3[5] = v18;
  return result;
}

unint64_t sub_100460C98(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v25 = type metadata accessor for SHA256Digest();
  v8 = *(v25 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin();
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for SHA256();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin();
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  SHA256.init()();
  sub_10000AB0C(a1, a2);
  sub_1001FAF04(a1, a2);
  sub_1000124C8(a1, a2);
  v17 = WiFiAddress.data.getter(a3 & 0xFFFFFFFFFFFFLL);
  v19 = v18;
  sub_1001FAF04(v17, v18);
  sub_1000124C8(v17, v19);
  v20 = WiFiAddress.data.getter(a4 & 0xFFFFFFFFFFFFLL);
  v22 = v21;
  sub_1001FAF04(v20, v21);
  sub_1000124C8(v20, v22);
  SHA256.finalize()();
  SHA256Digest.withUnsafeBytes<A>(_:)();
  (*(v8 + 8))(v11, v25);
  (*(v13 + 8))(v16, v12);
  return v26 | (v27 << 16);
}

id sub_100460ECC(void *a1, void *a2, uint64_t a3, int a4)
{
  v339 = a4;
  v4 = a3;
  v383 = a2;
  v399 = a1;
  v5 = *a3;
  v389 = *(*a3 + 432);
  v388 = *(v5 + 440);
  v6 = v388;
  v7 = type metadata accessor for AWDLInterface.AdditionalTrafficRegistrationInformation();
  v341 = type metadata accessor for Optional();
  v8 = *(v341 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin();
  v340 = v333 - v10;
  v361 = type metadata accessor for DispatchWorkItemFlags();
  v382 = *(v361 - 8);
  v11 = *(v382 + 8);
  __chkstk_darwin();
  *&v360 = v333 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v359 = type metadata accessor for DispatchQoS();
  v381 = *(v359 - 8);
  v13 = *(v381 + 8);
  __chkstk_darwin();
  v358 = v333 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v6 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v357 = AssociatedTypeWitness;
  v385 = swift_getAssociatedTypeWitness();
  v365 = *(v385 - 1);
  v17 = *(v365 + 64);
  __chkstk_darwin();
  v356 = v333 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v380 = v18;
  __chkstk_darwin();
  v384 = v333 - v19;
  v396 = type metadata accessor for DispatchTimeInterval();
  v338 = *(v396 - 8);
  v20 = *(v338 + 64);
  __chkstk_darwin();
  v22 = (v333 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v344 = v333 - v23;
  __chkstk_darwin();
  v25 = v333 - v24;
  __chkstk_darwin();
  v336 = v333 - v26;
  __chkstk_darwin();
  v373 = (v333 - v27);
  __chkstk_darwin();
  v29 = (v333 - v28);
  v30 = *(*(sub_10005DC58(&unk_100597330, &unk_100481FA0) - 8) + 64);
  __chkstk_darwin();
  v343 = (v333 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v363 = v333 - v32;
  v393 = type metadata accessor for DispatchTime();
  v394 = *(v393 - 8);
  v33 = v394[8];
  __chkstk_darwin();
  v346 = v333 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v372 = v333 - v35;
  __chkstk_darwin();
  v387 = v333 - v36;
  v397 = v7;
  v337 = *(v7 - 8);
  v37 = *(v337 + 64);
  __chkstk_darwin();
  v342 = v333 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v362 = v333 - v39;
  __chkstk_darwin();
  v392 = v333 - v40;
  v41 = *(v5 + 576);
  swift_beginAccess();
  v391 = v41;
  v42 = *(v41 + v4);
  v334 = v22;
  v364 = v29;
  v335 = v8;
  if (v42 >> 62)
  {
LABEL_86:
    v43 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v43 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v44 = &unk_100588000;
  v395 = v4;
  v345 = v25;
  if (v43)
  {
    v45 = v42 & 0xC000000000000001;
    v398 = (v42 & 0xFFFFFFFFFFFFFF8);

    v25 = 4;
    while (1)
    {
      v46 = v25 - 4;
      if (v45)
      {
        v47 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v46 >= *(v398 + 2))
        {
          __break(1u);
          goto LABEL_86;
        }

        v47 = *(v42 + 8 * v25);
      }

      v48 = v47;
      v49 = [v47 v44[379]];
      v50 = AWDLTrafficRegistrationService.serviceType.getter();
      v51 = AWDLTrafficRegistrationService.serviceType.getter();
      if (v50 != 2 || v51 != 2)
      {
        break;
      }

      v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v53 = v52;
      if (v4 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v53 == v54)
      {

        v48 = v49;
        v44 = &unk_100588000;
        goto LABEL_18;
      }

      v4 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v44 = &unk_100588000;
      if ((v4 & 1) == 0)
      {

        v200 = v395;
        if ((v339 & 1) == 0)
        {
          goto LABEL_76;
        }

        v201 = *(*v395 + 160);
        swift_retain_n();
        v202 = v399;
        v48 = Logger.logObject.getter();
        LOBYTE(v45) = static os_log_type_t.error.getter();

        if (!os_log_type_enabled(v48, v45))
        {

          goto LABEL_76;
        }

        v106 = swift_slowAlloc();
        v408 = swift_slowAlloc();
        *v106 = 136315394;
        v203 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v205 = sub_100002320(v203, v204, &v408);
        v206 = v395;

        *(v106 + 4) = v205;
        *(v106 + 12) = 2080;
        v207 = v391;
        swift_beginAccess();
        v208 = *(v207 + v206);
        if ((v208 & 0xC000000000000001) != 0)
        {
          goto LABEL_89;
        }

        v209 = &unk_100588000;
        if (v46 >= *((v208 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_91:
          sub_100016290(v106, &unk_100597330, &unk_100481FA0);
          aBlock = 0;
          v401 = 0xE000000000000000;
          _StringGuts.grow(_:)(73);
          v314._object = 0x80000001004C2F20;
          v314._countAndFlagsBits = 0xD000000000000041;
          String.append(_:)(v314);
          v315 = v378;
          v316 = [v378 uniqueIdentifier];
          v317._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
          String.append(_:)(v317);

          v318._countAndFlagsBits = 544175136;
          v318._object = 0xE400000000000000;
          String.append(_:)(v318);
          v319 = [v315 peerAddress];
          v320 = WiFiMACAddress.wifiAddress.getter();

          v321._countAndFlagsBits = WiFiAddress.description.getter(v320 & 0xFFFFFFFFFFFFLL);
          p_aBlock = &aBlock;
          String.append(_:)(v321);

          v332 = 0;
          for (i = 1246; ; i = 1272)
          {
            v331 = i;
            _assertionFailure(_:_:file:line:flags:)();
            __break(1u);
LABEL_93:
            sub_100016290(p_aBlock, &unk_100597330, &unk_100481FA0);
            v403 = 0;
            v404 = 0xE000000000000000;
            _StringGuts.grow(_:)(75);
            v323._object = 0x80000001004C2F20;
            v323._countAndFlagsBits = 0xD000000000000041;
            String.append(_:)(v323);
            v324 = v385;
            v325 = [v385 uniqueIdentifier];
            v326._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
            String.append(_:)(v326);

            v327._countAndFlagsBits = 0x206D6F726620;
            v327._object = 0xE600000000000000;
            String.append(_:)(v327);
            v328 = [v324 peerAddress];
            v329 = WiFiMACAddress.wifiAddress.getter();

            v330._countAndFlagsBits = WiFiAddress.description.getter(v329 & 0xFFFFFFFFFFFFLL);
            p_aBlock = &v403;
            String.append(_:)(v330);

            v332 = 0;
          }
        }

        v210 = *(v208 + 8 * v25);
        while (1)
        {
          swift_endAccess();
          v211 = [v210 v209[379]];
          v200 = v395;

          v212 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v214 = v213;

          v44 = &unk_100588000;

          v215 = sub_100002320(v212, v214, &v408);

          *(v106 + 14) = v215;
          _os_log_impl(&_mh_execute_header, v48, v45, "Rejecting %s because of conflict with reservation for %s", v106, 0x16u);
          swift_arrayDestroy();

LABEL_76:
          v106 = v391;
          swift_beginAccess();
          v309 = *(v200 + v106);
          if ((v309 & 0xC000000000000001) != 0)
          {
            break;
          }

          if (v46 < *((v309 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v310 = *(v309 + 8 * v25);
            goto LABEL_79;
          }

          __break(1u);
LABEL_89:
          v210 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v209 = &unk_100588000;
        }

        v310 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_79:
        v311 = v310;
        swift_endAccess();
        v169 = [v311 v44[379]];

        return v169;
      }

LABEL_19:
      v56 = (v25 - 3);
      if (__OFADD__(v46, 1))
      {
        __break(1u);
LABEL_81:

        (v43)(v44, v46);
LABEL_82:
        v244 = v345;
        goto LABEL_83;
      }

      ++v25;
      if (v56 == v43)
      {

        v4 = v395;
        goto LABEL_23;
      }
    }

LABEL_18:
    goto LABEL_19;
  }

LABEL_23:
  v57 = v383;
  if (v383)
  {
    v58 = objc_allocWithZone(AWDLTrafficRegistrationConfiguration);
    v59 = v399;
    v60 = [v58 initWithUniqueIdentifier:v399 peerAddress:v57];
  }

  else
  {
    v60 = 0;
    v59 = v399;
  }

  v61 = *(*v4 + 568);
  swift_beginAccess();
  v62 = *(v4 + v61);
  v63 = sub_100018AB4(0, &qword_100595230, AWDLTrafficRegistrationConfiguration_ptr);
  v64 = sub_100047340(&qword_100595238, &qword_100595230, AWDLTrafficRegistrationConfiguration_ptr);
  v407[3] = NANBitmap.Channel.operatingClass.getter(v62);
  __chkstk_darwin();
  v65 = v383;
  v333[-4] = v59;
  v333[-3] = v65;
  v331 = v60;
  v398 = v63;
  v375 = v64;
  v66 = type metadata accessor for Dictionary.Keys();

  WitnessTable = swift_getWitnessTable();
  Sequence.first(where:)();

  v68 = aBlock;
  v374 = v60;
  if (aBlock)
  {
    if (v339)
    {
      v69 = *(*v4 + 160);
      v70 = v399;
      v71 = v68;
      v72 = Logger.logObject.getter();
      v73 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v72, v73))
      {
        v74 = swift_slowAlloc();
        aBlock = swift_slowAlloc();
        *v74 = 136315650;
        v75 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v77 = sub_100002320(v75, v76, &aBlock);

        *(v74 + 4) = v77;
        *(v74 + 12) = 2080;
        v78 = [v71 uniqueIdentifier];
        v79 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v81 = v80;

        v82 = sub_100002320(v79, v81, &aBlock);

        *(v74 + 14) = v82;
        *(v74 + 22) = 2080;
        v83 = [v71 peerAddress];
        v84 = WiFiMACAddress.wifiAddress.getter();

        v85 = WiFiAddress.description.getter(v84 & 0xFFFFFFFFFFFFLL);
        v87 = sub_100002320(v85, v86, &aBlock);

        *(v74 + 24) = v87;
        v44 = &unk_100588000;
        _os_log_impl(&_mh_execute_header, v72, v73, "Rejecting %s because of conflict with registration for %s to %s", v74, 0x20u);
        swift_arrayDestroy();
      }

      else
      {

        v44 = &unk_100588000;
      }

      v60 = v374;
    }

    v169 = [v68 v44[379]];
  }

  else
  {
    v386 = 0;
    v333[0] = WitnessTable;
    v333[1] = v66;
    v88 = (v4 + *(*v4 + 584));
    swift_beginAccess();
    v390 = (v337 + 8);
    v371 = (v394 + 6);
    v370 = (v394 + 4);
    v391 = (v394 + 1);
    v369 = enum case for DispatchTimeInterval.seconds(_:);
    v368 = (v338 + 104);
    v394 = (v338 + 8);
    v354 = AssociatedConformanceWitness + 18;
    v353 = v365 + 16;
    v352 = v380 + 7;
    v351 = v365 + 32;
    v350 = v402;
    v349 = (v382 + 8);
    v348 = (v381 + 8);
    v347 = v365 + 8;
    v89 = type metadata accessor for Dictionary();
    v90 = v389;
    v367 = v89;
    v355 = v88;
    while (1)
    {
      v407[0] = *v88;
      __chkstk_darwin();
      v333[-6] = v90;
      v333[-5] = v91;
      v92 = v383;
      v333[-4] = v399;
      v333[-3] = v92;
      v331 = v60;

      v93 = swift_getWitnessTable();
      v94 = v386;
      Collection.firstIndex(where:)();
      v386 = v94;

      v95 = LOBYTE(v402[0]);
      if (LOBYTE(v402[0]) == 255)
      {
        break;
      }

      v96 = aBlock;
      v97 = v401;
      v98 = *v88;

      v99 = v375;
      v331 = v375;
      v100 = v392;
      v101 = v95;
      v102 = v397;
      Dictionary.subscript.getter();

      v103 = *v390;
      (*v390)(v100, v102);
      v378 = aBlock;
      v104 = *v88;

      v331 = v99;
      LODWORD(v381) = v101;
      v105 = v362;
      v380 = v96;
      v379 = v97;
      Dictionary.subscript.getter();

      v106 = v363;
      sub_100012400(v105 + *(v102 + 36), v363, &unk_100597330, &unk_100481FA0);
      v376 = v103;
      v103(v105, v102);
      v107 = v393;
      if ((*v371)(v106, 1, v393) == 1)
      {
        goto LABEL_91;
      }

      v108 = v387;
      (*v370)(v387, v106, v107);
      type metadata accessor for P2PTimer();
      v109 = v372;
      variable initialization expression of AWDLPeer.lastUpdated();
      v110 = v364;
      DispatchTime.distance(to:)();
      v377 = *v391;
      (v377)(v109, v107);
      v111 = v373;
      *v373 = 300;
      v112 = v396;
      (*v368)(v111, v369, v396);
      v113 = static DispatchTimeInterval.< infix(_:_:)();
      v114 = *v394;
      (*v394)(v111, v112);
      v115 = v389;
      v382 = v114;
      if (v113)
      {
        v170 = &unk_100588000;
        v171 = v374;
        v172 = v378;
        if (v339)
        {
          v173 = *(*v395 + 160);
          v174 = v336;
          v175 = v396;
          (*(v338 + 16))(v336, v110, v396);
          v176 = v399;
          v177 = v172;
          v178 = Logger.logObject.getter();
          v179 = static os_log_type_t.error.getter();
          v399 = v177;

          if (os_log_type_enabled(v178, v179))
          {
            v180 = swift_slowAlloc();
            v398 = swift_slowAlloc();
            aBlock = v398;
            *v180 = 136315906;
            v181 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            LODWORD(v397) = v179;
            v183 = sub_100002320(v181, v182, &aBlock);

            *(v180 + 4) = v183;
            *(v180 + 12) = 2080;
            v184 = DispatchTimeInterval.description.getter();
            v186 = v185;
            (v382)(v174, v175);
            v187 = sub_100002320(v184, v186, &aBlock);

            *(v180 + 14) = v187;
            *(v180 + 22) = 2080;
            v188 = v399;
            v189 = [v399 uniqueIdentifier];
            v190 = v178;
            v191 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v193 = v192;

            v194 = sub_100002320(v191, v193, &aBlock);

            *(v180 + 24) = v194;
            *(v180 + 32) = 2080;
            v171 = v374;
            v195 = [v188 peerAddress];
            v196 = WiFiMACAddress.wifiAddress.getter();

            v197 = WiFiAddress.description.getter(v196 & 0xFFFFFFFFFFFFLL);
            v199 = sub_100002320(v197, v198, &aBlock);

            *(v180 + 34) = v199;
            _os_log_impl(&_mh_execute_header, v190, v397, "Rejecting %s because of conflict with registration (in recovery for %s) for %s to %s", v180, 0x2Au);
            swift_arrayDestroy();

            v170 = &unk_100588000;
          }

          else
          {

            (v382)(v174, v175);
          }

          v108 = v387;
        }

        v169 = [v172 v170[379]];

        sub_100085170(v380, v379, v381);
        (v382)(v110, v396);
        (v377)(v108, v393);
        return v169;
      }

      v116 = *(*v395 + 112);
      v117 = AssociatedConformanceWitness;
      v118 = AssociatedConformanceWitness[18];
      v119 = swift_checkMetadataState();
      v120 = v384;
      v118(v119, v117);
      v121 = *OS_dispatch_queue.p2p.unsafeMutableAddressor();
      v122 = v365;
      v123 = v356;
      v124 = v120;
      v125 = v385;
      (*(v365 + 16))(v356, v124, v385);
      v126 = v122;
      v127 = (*(v122 + 80) + 32) & ~*(v122 + 80);
      v128 = &v352[v127] & 0xFFFFFFFFFFFFFFF8;
      v129 = swift_allocObject();
      v130 = v388;
      *(v129 + 16) = v115;
      *(v129 + 24) = v130;
      (*(v126 + 32))(v129 + v127, v123, v125);
      v131 = v378;
      *(v129 + v128) = v378;
      v402[2] = sub_100476668;
      v402[3] = v129;
      aBlock = _NSConcreteStackBlock;
      v401 = 1107296256;
      v402[0] = sub_10000C8B8;
      v402[1] = &unk_10057BD40;
      v132 = _Block_copy(&aBlock);
      v133 = v121;
      v134 = v131;
      v135 = v358;
      static DispatchQoS.unspecified.getter();
      v407[0] = _swiftEmptyArrayStorage;
      sub_10004C988(&qword_10058BCC0, &type metadata accessor for DispatchWorkItemFlags);
      sub_10005DC58(&unk_100595270, &unk_1004AEC80);
      sub_10000CADC(&qword_10058BCD0, &unk_100595270, &unk_1004AEC80);
      v136 = v360;
      v137 = v361;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v132);

      (*v349)(v136, v137);
      (*v348)(v135, v359);

      v138 = v355;
      swift_beginAccess();
      LOBYTE(v137) = v381;
      v139 = v392;
      v140 = v380;
      v141 = v379;
      Dictionary.remove(at:)();
      (v376)(v139, v397);
      v142 = v407[0];
      swift_endAccess();

      sub_10004C128();
      v143 = v140;
      v90 = v389;
      sub_100085170(v143, v141, v137);

      v88 = v138;
      (*(v126 + 8))(v384, v385);
      (v382)(v110, v396);
      (v377)(v387, v393);
      v60 = v374;
    }

    v144 = v90;
    v145 = v395;
    v146 = *(*v395 + 592);
    swift_beginAccess();
    v403 = NANBitmap.Channel.operatingClass.getter(*(v145 + v146));
    __chkstk_darwin();
    v147 = v383;
    v333[-4] = v399;
    v333[-3] = v147;
    v331 = v60;

    v148 = v386;
    Sequence.first(where:)();

    v149 = v407[0];
    if (v407[0])
    {
      if (v339)
      {
        v150 = *(*v145 + 160);
        v151 = v399;
        v152 = v149;
        v153 = Logger.logObject.getter();
        v154 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v153, v154))
        {
          v155 = swift_slowAlloc();
          v407[0] = swift_slowAlloc();
          *v155 = 136315650;
          v156 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v158 = sub_100002320(v156, v157, v407);

          *(v155 + 4) = v158;
          *(v155 + 12) = 2080;
          v159 = [v152 uniqueIdentifier];
          v160 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v162 = v161;

          v163 = sub_100002320(v160, v162, v407);

          *(v155 + 14) = v163;
          *(v155 + 22) = 2080;
          v164 = [v152 peerAddress];
          v165 = WiFiMACAddress.wifiAddress.getter();

          v166 = WiFiAddress.description.getter(v165 & 0xFFFFFFFFFFFFLL);
          v168 = sub_100002320(v166, v167, v407);

          *(v155 + 24) = v168;
          _os_log_impl(&_mh_execute_header, v153, v154, "Rejecting %s because of conflict with responder for %s from %s", v155, 0x20u);
          swift_arrayDestroy();
        }

        v60 = v374;
      }

      v169 = [v149 uniqueIdentifier];
    }

    else
    {
      v377 = v93;
      v216 = (v145 + *(*v145 + 608));
      swift_beginAccess();
      v376 = (v338 + 16);
      v218 = 0x6172747369676572;
      if (!v147)
      {
        v218 = 0x7461767265736572;
      }

      v362 = v218;
      v219 = 0xEC0000006E6F6974;
      if (!v147)
      {
        v219 = 0xEB000000006E6F69;
      }

      v361 = v219;
      v365 = v337 + 56;
      v364 = (v335 + 8);
      *&v217 = 136316418;
      v360 = v217;
      AssociatedConformanceWitness = v216;
      while (1)
      {
        v406 = *v216;
        __chkstk_darwin();
        v231 = v388;
        v333[-6] = v144;
        v333[-5] = v231;
        v333[-4] = v399;
        v333[-3] = v147;
        v331 = v374;

        Collection.firstIndex(where:)();

        LODWORD(v387) = v405;
        if (v405 == 255)
        {

          return 0;
        }

        v381 = v148;
        v233 = v403;
        v232 = v404;
        v234 = *v216;

        v235 = v375;
        v331 = v375;
        v236 = v392;
        v237 = v397;
        Dictionary.subscript.getter();

        v238 = *v390;
        (*v390)(v236, v237);
        v385 = v403;
        v239 = *v216;

        v331 = v235;
        v240 = v342;
        v384 = v233;
        v382 = v232;
        Dictionary.subscript.getter();

        p_aBlock = v343;
        sub_100012400(&v240[*(v237 + 36)], v343, &unk_100597330, &unk_100481FA0);
        v380 = v238;
        (v238)(v240, v237);
        v242 = v393;
        if ((*v371)(p_aBlock, 1, v393) == 1)
        {
          goto LABEL_93;
        }

        (*v370)(v346, p_aBlock, v242);
        type metadata accessor for P2PTimer();
        v243 = v372;
        variable initialization expression of AWDLPeer.lastUpdated();
        v244 = v345;
        DispatchTime.distance(to:)();
        v48 = *v391;
        (*v391)(v243, v242);
        v245 = v373;
        *v373 = 20;
        v246 = v396;
        (*v368)(v245, v369, v396);
        v247 = static DispatchTimeInterval.< infix(_:_:)();
        v43 = *v394;
        (*v394)(v245, v246);
        v4 = v374;
        v386 = v43;
        if (v247)
        {
          break;
        }

        v248 = v48;
        v249 = *(*v395 + 160);
        v250 = v344;
        (*v376)(v344, v244, v246);
        v251 = v399;
        v252 = v385;
        v253 = v383;
        v254 = Logger.logObject.getter();
        v255 = static os_log_type_t.default.getter();
        v378 = v253;

        v256 = os_log_type_enabled(v254, v255);
        v379 = v248;
        v385 = v252;
        if (v256)
        {
          LODWORD(v363) = v255;
          v257 = swift_slowAlloc();
          v406 = swift_slowAlloc();
          *v257 = v360;
          v258 = v252;
          v259 = [v252 uniqueIdentifier];
          v260 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v262 = v261;

          v263 = sub_100002320(v260, v262, &v406);

          *(v257 + 4) = v263;
          *(v257 + 12) = 2080;
          v264 = [v258 peerAddress];
          v265 = WiFiMACAddress.wifiAddress.getter();

          v266 = WiFiAddress.description.getter(v265 & 0xFFFFFFFFFFFFLL);
          v268 = sub_100002320(v266, v267, &v406);

          *(v257 + 14) = v268;
          *(v257 + 22) = 2080;
          v269 = sub_100002320(v362, v361, &v406);

          *(v257 + 24) = v269;
          *(v257 + 32) = 2080;
          v270 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v272 = sub_100002320(v270, v271, &v406);

          *(v257 + 34) = v272;
          *(v257 + 42) = 2080;
          if (v383)
          {
            v403 = 544175136;
            v404 = 0xE400000000000000;
            v273 = [v378 description];
            v274 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v276 = v275;

            v277._countAndFlagsBits = v274;
            v277._object = v276;
            String.append(_:)(v277);

            v278 = v403;
            v279 = v404;
          }

          else
          {
            v278 = 0;
            v279 = 0xE000000000000000;
          }

          v220 = v384;
          v221 = v382;
          v280 = sub_100002320(v278, v279, &v406);

          *(v257 + 44) = v280;
          *(v257 + 52) = 2080;
          v281 = v344;
          v282 = DispatchTimeInterval.description.getter();
          v284 = v283;
          (v386)(v281, v396);
          v285 = sub_100002320(v282, v284, &v406);

          *(v257 + 54) = v285;
          _os_log_impl(&_mh_execute_header, v254, v363, "Cleared responder traffic registration for %s from %s (new %s for %s%s while in recovery for %s)", v257, 0x3Eu);
          swift_arrayDestroy();
        }

        else
        {

          (v43)(v250, v246);
          v220 = v384;
          v221 = v382;
        }

        v222 = AssociatedConformanceWitness;
        v223 = *AssociatedConformanceWitness;

        v331 = v375;
        v224 = v387;
        v225 = v340;
        v226 = v397;
        Dictionary.subscript.getter();

        (*v365)(v225, 0, 1, v226);
        v227 = v385;
        sub_100456BB0(v385, v225);
        v228 = v225;
        v216 = v222;
        (*v364)(v228, v341);
        swift_beginAccess();
        v229 = v392;
        Dictionary.remove(at:)();
        (v380)(v229, v226);
        v230 = v406;
        swift_endAccess();

        sub_10004C128();
        sub_100085170(v220, v221, v224);

        (v386)(v345, v396);
        (v379)(v346, v393);
        v147 = v383;
        v144 = v389;
        v148 = v381;
      }

      if (v339)
      {
        v286 = *(*v395 + 160);
        v44 = v334;
        v287 = v244;
        v46 = v396;
        (*v376)(v334, v287, v396);
        v288 = v399;
        v289 = v385;
        v25 = Logger.logObject.getter();
        v290 = static os_log_type_t.error.getter();

        if (!os_log_type_enabled(v25, v290))
        {
          goto LABEL_81;
        }

        v291 = swift_slowAlloc();
        v403 = swift_slowAlloc();
        *v291 = 136315906;
        v292 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        LODWORD(v399) = v290;
        v294 = sub_100002320(v292, v293, &v403);

        *(v291 + 4) = v294;
        *(v291 + 12) = 2080;
        v295 = DispatchTimeInterval.description.getter();
        v297 = v296;
        (v386)(v44, v46);
        v298 = sub_100002320(v295, v297, &v403);

        *(v291 + 14) = v298;
        *(v291 + 22) = 2080;
        v299 = [v289 uniqueIdentifier];
        v300 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v302 = v301;

        v303 = sub_100002320(v300, v302, &v403);

        *(v291 + 24) = v303;
        *(v291 + 32) = 2080;
        v304 = [v289 peerAddress];
        v305 = WiFiMACAddress.wifiAddress.getter();

        v306 = WiFiAddress.description.getter(v305 & 0xFFFFFFFFFFFFLL);
        v308 = sub_100002320(v306, v307, &v403);

        *(v291 + 34) = v308;
        _os_log_impl(&_mh_execute_header, v25, v399, "Rejecting %s because of conflict with responder (in recovery for %s) for %s from %s", v291, 0x2Au);
        swift_arrayDestroy();

        v43 = v386;
        v4 = v374;

        goto LABEL_82;
      }

LABEL_83:
      v312 = v385;
      v169 = [v385 uniqueIdentifier];

      sub_100085170(v384, v382, v387);
      (v43)(v244, v396);
      (v48)(v346, v393);
    }
  }

  return v169;
}

uint64_t sub_100463C50(id *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = *a1;
  v7 = [*a1 uniqueIdentifier];
  v8 = AWDLTrafficRegistrationService.serviceType.getter();
  v9 = AWDLTrafficRegistrationService.serviceType.getter();
  if (v8 != 2 || v9 != 2)
  {

    goto LABEL_11;
  }

  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;
  if (v10 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v12 == v13)
  {

    if (a3)
    {
      goto LABEL_14;
    }

LABEL_11:
    v16 = 0;
    return v16 & 1;
  }

  v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v15 & 1) != 0 && !a3)
  {
    goto LABEL_11;
  }

LABEL_14:
  if (a4)
  {
    sub_100018AB4(0, &qword_100595230, AWDLTrafficRegistrationConfiguration_ptr);
    v18 = v6;
    v19 = a4;
    v20 = static NSObject.== infix(_:_:)();

    if (v20)
    {
      goto LABEL_11;
    }
  }

  v21 = [v6 uniqueIdentifier];
  v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v24 = v23;
  if (v22 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v24 == v25)
  {
  }

  else
  {
    v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v26 & 1) == 0)
    {
      v16 = 1;
      return v16 & 1;
    }
  }

  v16 = AWDLTrafficRegistrationService.allowsMultipleConcurrentPeers.getter() ^ 1;
  return v16 & 1;
}

uint64_t sub_100463E64(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v50 = a4;
  v51 = a3;
  v7 = sub_100018AB4(255, &qword_100595230, AWDLTrafficRegistrationConfiguration_ptr);
  v8 = type metadata accessor for AWDLInterface.AdditionalTrafficRegistrationInformation();
  v48 = v7;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v10 = *(TupleTypeMetadata2 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin();
  v49 = (v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v52 = (v45 - v13);
  __chkstk_darwin();
  v15 = (v45 - v14);
  v16 = *(v10 + 16);
  v54 = a1;
  v53 = v16;
  v16((v45 - v14), a1, TupleTypeMetadata2);
  v17 = *v15;
  v18 = *(TupleTypeMetadata2 + 48);
  v19 = [*v15 uniqueIdentifier];

  LODWORD(v17) = AWDLTrafficRegistrationService.serviceType.getter();
  v20 = AWDLTrafficRegistrationService.serviceType.getter();
  if (v17 != 2 || v20 != 2)
  {

    (*(*(v8 - 8) + 8))(v15 + v18, v8);
    v22 = 0;
    return v22 & 1;
  }

  v46 = v18;
  v47 = v4;
  v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v25 = v24;
  v45[1] = a2;
  if (v23 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v25 == v26)
  {

    v29 = v52;
LABEL_13:
    v30 = *(v8 - 8);
    (*(v30 + 8))(v15 + v46, v8);
    v22 = v51;
    if (!v51)
    {
      return v22 & 1;
    }

    goto LABEL_14;
  }

  v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

  v29 = v52;
  if (v28)
  {
    goto LABEL_13;
  }

  v30 = *(v8 - 8);
  (*(v30 + 8))(v15 + v46, v8);
LABEL_14:
  v53(v29, v54, TupleTypeMetadata2);
  v31 = *v29;
  v32 = *(TupleTypeMetadata2 + 48);
  if (v50)
  {
    v33 = v50;
    v34 = static NSObject.== infix(_:_:)();

    (*(v30 + 8))(v29 + v32, v8);
    if (v34)
    {
      v22 = 0;
      return v22 & 1;
    }
  }

  else
  {

    (*(v30 + 8))(v29 + v32, v8);
  }

  v35 = v49;
  v53(v49, v54, TupleTypeMetadata2);
  v36 = *v35;
  v37 = [*v35 uniqueIdentifier];

  v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v40 = v39;
  if (v38 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v40 == v41)
  {
    v42 = 1;
  }

  else
  {
    v42 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v43 = *(TupleTypeMetadata2 + 48);

  (*(v30 + 8))(v35 + v43, v8);
  if (v42)
  {
    v22 = AWDLTrafficRegistrationService.allowsMultipleConcurrentPeers.getter() ^ 1;
  }

  else
  {
    v22 = 1;
  }

  return v22 & 1;
}

uint64_t sub_100464334(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 + 8);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v7 = *(AssociatedConformanceWitness + 16);
  v8 = swift_checkMetadataState();
  return v7(a2, v8, AssociatedConformanceWitness);
}

uint64_t sub_10046442C(id *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = *a1;
  v7 = [*a1 uniqueIdentifier];
  v8 = AWDLTrafficRegistrationService.serviceType.getter();
  v9 = AWDLTrafficRegistrationService.serviceType.getter();
  if (v8 != 2 || v9 != 2)
  {

    goto LABEL_11;
  }

  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;
  if (v10 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v12 != v13)
  {
    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v15 & 1) == 0 || a3)
    {
      goto LABEL_14;
    }

LABEL_11:
    v16 = 0;
    return v16 & 1;
  }

  if (!a3)
  {
    goto LABEL_11;
  }

LABEL_14:
  if (a4)
  {
    sub_100018AB4(0, &qword_100595230, AWDLTrafficRegistrationConfiguration_ptr);
    v18 = v6;
    v19 = a4;
    v20 = static NSObject.== infix(_:_:)();

    v16 = v20 ^ 1;
  }

  else
  {
    v16 = 1;
  }

  return v16 & 1;
}

uint64_t sub_10046459C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v35 = a4;
  v36 = a3;
  v5 = sub_100018AB4(255, &qword_100595230, AWDLTrafficRegistrationConfiguration_ptr);
  v6 = type metadata accessor for AWDLInterface.AdditionalTrafficRegistrationInformation();
  v32[1] = v5;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v8 = *(TupleTypeMetadata2 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin();
  v34 = (v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v12 = (v32 - v11);
  v13 = *(v8 + 16);
  v33 = a1;
  v13(v32 - v11, a1, TupleTypeMetadata2);
  v14 = *v12;
  v15 = *(TupleTypeMetadata2 + 48);
  v16 = [*v12 uniqueIdentifier];

  LODWORD(v14) = AWDLTrafficRegistrationService.serviceType.getter();
  v17 = AWDLTrafficRegistrationService.serviceType.getter();
  if (v14 != 2 || v17 != 2)
  {

    (*(*(v6 - 8) + 8))(v12 + v15, v6);
    v19 = 0;
    return v19 & 1;
  }

  v32[0] = v15;
  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;
  if (v20 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v22 == v23)
  {

LABEL_13:
    v26 = *(v6 - 8);
    (*(v26 + 8))(v12 + v32[0], v6);
    if (!v36)
    {
      v19 = 0;
      return v19 & 1;
    }

    goto LABEL_14;
  }

  v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v25)
  {
    goto LABEL_13;
  }

  v26 = *(v6 - 8);
  (*(v26 + 8))(v12 + v32[0], v6);
LABEL_14:
  v27 = v34;
  v13(v34, v33, TupleTypeMetadata2);
  v28 = *v27;
  if (v35)
  {
    v29 = v35;
    v30 = static NSObject.== infix(_:_:)();

    v19 = v30 ^ 1;
  }

  else
  {

    v19 = 1;
  }

  (*(v26 + 8))(v27 + *(TupleTypeMetadata2 + 48), v6);
  return v19 & 1;
}

BOOL sub_100464920(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v32 = a4;
  v33 = a3;
  v6 = type metadata accessor for AWDLPeer(0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin();
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v11 = [a2 uniqueIdentifier];
  v12 = AWDLTrafficRegistrationService.serviceType.getter();
  v13 = AWDLTrafficRegistrationService.serviceType.getter();

  if (v12 != 2 || v13 != 2)
  {
    return 0;
  }

  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;
  if (v15 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v17 == v18)
  {
  }

  else
  {
    v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v20 & 1) == 0)
    {
      return 1;
    }
  }

  v21 = [a2 uniqueIdentifier];
  v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v24 = v23;
  if (v22 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v24 == v25)
  {
  }

  else
  {
    v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v26 & 1) == 0)
    {
      return 1;
    }
  }

  sub_100041B60(v32 & 0xFFFFFFFFFFFFLL, v9);
  v27 = &v9[*(v6 + 68)];
  v28 = *v27;
  v29 = v27[12];
  sub_1000473F0(v9, type metadata accessor for AWDLPeer);
  if (v29 << 32 == 0x400000000)
  {
    return 0;
  }

  return (*AWDLActionFrame.RealtimeGroup.Flags.airPlaySender.unsafeMutableAddressor() & ~v28) == 0;
}

uint64_t sub_100464B84(uint64_t a1, void *a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    v5 = *(*result + 568);
    swift_beginAccess();
    v6 = *(v4 + v5);
    __chkstk_darwin();
    sub_100018AB4(255, &qword_100595230, AWDLTrafficRegistrationConfiguration_ptr);
    type metadata accessor for AWDLInterface.AdditionalTrafficRegistrationInformation();
    sub_100047340(&qword_100595238, &qword_100595230, AWDLTrafficRegistrationConfiguration_ptr);
    type metadata accessor for Dictionary();

    swift_getWitnessTable();
    Collection.firstIndex(where:)();

    if (v9 != 255)
    {
      sub_100085170(v7, v8, v9);
      sub_100454028(a2, 1, 0);
    }
  }

  return result;
}

uint64_t sub_100464D4C(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = v4[54];
  v6 = v4[55];
  v7 = type metadata accessor for AWDLInterface.AdditionalTrafficRegistrationInformation();
  v8 = type metadata accessor for Optional();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin();
  v12 = v92 - v11;
  v103 = *(v7 - 8);
  v13 = *(v103 + 64);
  __chkstk_darwin();
  v102 = v92 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v16 = v92 - v15;
  __chkstk_darwin();
  v101 = v92 - v17;
  v18 = v4[76];
  swift_beginAccess();
  v19 = *(v2 + v18);
  if (*(v19 + 16))
  {
    v20 = *(v2 + v18);

    v97 = a1;
    sub_1003E09E8(a1);
    if (v21)
    {
      v98 = v12;
      v99 = v9;
      v100 = v8;
      v22 = *(v19 + 36);

      v96 = v16;
      v23 = *(v2 + v18);
      v92[1] = sub_100018AB4(0, &qword_100595230, AWDLTrafficRegistrationConfiguration_ptr);
      v93 = sub_100047340(&qword_100595238, &qword_100595230, AWDLTrafficRegistrationConfiguration_ptr);

      v24 = v101;
      Dictionary.subscript.getter();

      v95 = *(v103 + 8);
      v95(v24, v7);
      v94 = v105[0];
      v25 = *(v2 + v18);

      Dictionary.subscript.getter();

      swift_beginAccess();
      type metadata accessor for Dictionary();
      Dictionary.remove(at:)();
      v95(v24, v7);
      v26 = v104[0];
      swift_endAccess();

      sub_10004C128();
      v27 = *(*v2 + 160);
      v28 = v94;
      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v94 = swift_slowAlloc();
        v105[0] = v94;
        *v31 = 136315650;
        v32 = [v28 uniqueIdentifier];
        LODWORD(v93) = v30;
        v33 = v32;
        v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v36 = v35;

        v37 = sub_100002320(v34, v36, v105);

        *(v31 + 4) = v37;
        *(v31 + 12) = 2080;
        v38 = [v28 peerAddress];
        v39 = WiFiMACAddress.wifiAddress.getter();

        v40 = WiFiAddress.description.getter(v39 & 0xFFFFFFFFFFFFLL);
        v42 = sub_100002320(v40, v41, v105);

        *(v31 + 14) = v42;
        *(v31 + 22) = 2080;
        v43 = [v28 peerAddress];
        v44 = WiFiMACAddress.wifiAddress.getter();

        v45 = WiFiAddress.description.getter(v44 & 0xFFFFFFFFFFFFLL);
        v47 = sub_100002320(v45, v46, v105);

        *(v31 + 24) = v47;
        _os_log_impl(&_mh_execute_header, v29, v93, "Cleared responder traffic registration for %s from %s (cleared initiator registration to %s while in recovery)", v31, 0x20u);
        swift_arrayDestroy();
      }

      v9 = v99;
      v8 = v100;
      v12 = v98;
      v48 = v103;
      v49 = v96;
      (*(v103 + 16))(v98, v96, v7);
      (*(v48 + 56))(v12, 0, 1, v7);
      sub_100456BB0(v28, v12);

      (*(v9 + 8))(v12, v8);
      v95(v49, v7);
    }

    else
    {
    }

    a1 = v97;
  }

  v50 = *(*v2 + 592);
  result = swift_beginAccess();
  v52 = *(v2 + v50);
  if (*(v52 + 16))
  {
    v53 = *(v2 + v50);

    v54 = sub_1003E09E8(a1);
    if (v55)
    {
      v56 = v54;
      v98 = v12;
      v99 = v9;
      v100 = v8;
      v57 = *(v52 + 36);

      v58 = *(v2 + v50);
      v94 = sub_100018AB4(0, &qword_100595230, AWDLTrafficRegistrationConfiguration_ptr);
      v95 = sub_100047340(&qword_100595238, &qword_100595230, AWDLTrafficRegistrationConfiguration_ptr);

      v59 = v7;
      v60 = v101;
      Dictionary.subscript.getter();

      v97 = v56;
      v62 = (v103 + 8);
      v61 = *(v103 + 8);
      v61(v60, v59);
      v96 = v104[0];
      v63 = *(v2 + v50);

      Dictionary.subscript.getter();

      swift_beginAccess();
      type metadata accessor for Dictionary();
      Dictionary.remove(at:)();
      v64 = v60;
      v65 = v59;
      v101 = v62;
      v97 = v61;
      v61(v64, v59);
      v66 = v104[3];
      swift_endAccess();

      sub_10004C128();
      v67 = *(*v2 + 160);
      v68 = v96;
      v69 = Logger.logObject.getter();
      v70 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v69, v70))
      {
        v71 = swift_slowAlloc();
        v96 = swift_slowAlloc();
        v104[0] = v96;
        *v71 = 136315650;
        v72 = [v68 uniqueIdentifier];
        v73 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v75 = v74;

        v76 = sub_100002320(v73, v75, v104);

        *(v71 + 4) = v76;
        *(v71 + 12) = 2080;
        v77 = [v68 peerAddress];
        v78 = WiFiMACAddress.wifiAddress.getter();

        v79 = WiFiAddress.description.getter(v78 & 0xFFFFFFFFFFFFLL);
        v81 = sub_100002320(v79, v80, v104);

        *(v71 + 14) = v81;
        *(v71 + 22) = 2080;
        v82 = [v68 peerAddress];
        v83 = WiFiMACAddress.wifiAddress.getter();

        v84 = WiFiAddress.description.getter(v83 & 0xFFFFFFFFFFFFLL);
        v86 = sub_100002320(v84, v85, v104);

        *(v71 + 24) = v86;
        _os_log_impl(&_mh_execute_header, v69, v70, "Cleared responder traffic registration for %s from %s (cleared initiator registration to %s)", v71, 0x20u);
        swift_arrayDestroy();
      }

      v88 = v99;
      v87 = v100;
      v90 = v102;
      v89 = v103;
      v91 = v98;
      (*(v103 + 16))(v98, v102, v65);
      (*(v89 + 56))(v91, 0, 1, v65);
      sub_100456BB0(v68, v91);

      (*(v88 + 8))(v91, v87);
      return v97(v90, v65);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1004657B4(void *a1, uint64_t a2, int a3)
{
  v4 = v3;
  v42 = a3;
  v36 = a2;
  v39 = a1;
  v5 = *v3;
  v6 = *(*(*v3 + 440) + 8);
  v7 = *(v5 + 432);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v8 = swift_getAssociatedTypeWitness();
  v9 = *(v8 - 8);
  v40 = v8;
  v41 = v9;
  v10 = *(v9 + 64);
  __chkstk_darwin();
  v35 = &v33 - v11;
  v12 = (type metadata accessor for AWDLStatistics.TrafficRegistrationStop(0) - 8);
  v13 = *(*v12 + 64);
  __chkstk_darwin();
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchTime();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin();
  v20 = &v33 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for DispatchTimeInterval();
  v34 = v21;
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  __chkstk_darwin();
  v25 = &v33 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for P2PTimer();
  variable initialization expression of AWDLPeer.lastUpdated();
  DispatchTime.distance(to:)();
  (*(v17 + 8))(v20, v16);
  v26 = [v39 uniqueIdentifier];
  (*(v22 + 16))(&v15[v12[8]], v25, v21);
  *v15 = v26;
  v15[8] = v42;
  v27 = *(*v4 + 112);
  v28 = *(AssociatedConformanceWitness + 152);
  swift_checkMetadataState();
  v29 = v35;
  v28();
  v30 = v40;
  v31 = swift_getAssociatedConformanceWitness();
  (*(v31 + 80))(v15, v30, v31);
  (*(v41 + 8))(v29, v30);
  sub_1000473F0(v15, type metadata accessor for AWDLStatistics.TrafficRegistrationStop);
  return (*(v22 + 8))(v25, v34);
}

uint64_t sub_100465BB4(void *a1, int a2, int a3, uint64_t a4)
{
  v5 = v4;
  v59 = a4;
  v57 = a3;
  v58 = a2;
  v7 = *(*(*v5 + 440) + 8);
  v8 = *(*v5 + 432);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v9 = swift_getAssociatedTypeWitness();
  v55 = *(v9 - 8);
  v56 = v9;
  v10 = *(v55 + 64);
  __chkstk_darwin();
  v54 = v49 - v11;
  v49[1] = v7;
  v12 = swift_getAssociatedTypeWitness();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin();
  v16 = v49 - v15;
  v17 = *(*(sub_10005DC58(&qword_10058D450, &unk_100486D78) - 8) + 64);
  __chkstk_darwin();
  v19 = v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v21 = v49 - v20;
  v51 = [a1 uniqueIdentifier];
  v22 = *(v5 + *(*v5 + 736));
  swift_unownedRetainStrong();
  sub_1003EB084();
  v24 = v23;
  v26 = v25;

  if (v24)
  {

    v27 = v26 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v27 = 0x300000000;
  }

  v50 = v27;
  v28 = type metadata accessor for AWDLPeer(0);
  v29 = v28;
  v30 = (v59 + *(v28 + 72));
  if (v30[1])
  {
    v31 = *v30;
  }

  else
  {
    sub_100012400(v59 + *(v28 + 56), v21, &qword_10058D450, &unk_100486D78);
    v32 = type metadata accessor for AWDLActionFrame.DataPathState(0);
    if ((*(*(v32 - 8) + 48))(v21, 1, v32) == 1)
    {
      sub_100016290(v21, &qword_10058D450, &unk_100486D78);
      v31 = 0x300000000;
    }

    else
    {
      v31 = *(v21 + 5) | (*(v21 + 12) << 32);
      sub_1000473F0(v21, type metadata accessor for AWDLActionFrame.DataPathState);
    }
  }

  v33 = *(*v5 + 96);
  swift_beginAccess();
  (*(v13 + 16))(v16, v5 + v33, v12);
  v34 = swift_getAssociatedConformanceWitness();
  v35 = (*(v34 + 8))(v12, v34);
  (*(v13 + 8))(v16, v12);
  v36 = *WiFiDriverCapabilities.supportsSimultaneousDualBand.unsafeMutableAddressor();
  v60 = v35;
  v61 = v36;
  sub_1000C2A14();

  v37 = dispatch thunk of SetAlgebra.isSuperset(of:)();

  sub_100012400(v59 + *(v29 + 56), v19, &qword_10058D450, &unk_100486D78);
  v38 = type metadata accessor for AWDLActionFrame.DataPathState(0);
  if ((*(*(v38 - 8) + 48))(v19, 1, v38) == 1)
  {
    sub_100016290(v19, &qword_10058D450, &unk_100486D78);
    v39 = 0;
  }

  else
  {
    v40 = v19[84];
    sub_1000473F0(v19, type metadata accessor for AWDLActionFrame.DataPathState);
    if (v40)
    {
      v39 = 0x100000000000000;
    }

    else
    {
      v39 = 0;
    }
  }

  v41 = *(*v5 + 112);
  v42 = *(AssociatedConformanceWitness + 152);
  swift_checkMetadataState();
  v43 = v54;
  v42();
  v44 = v56;
  v45 = swift_getAssociatedConformanceWitness();
  v46 = 0x1000000000000;
  if ((v37 & 1) == 0)
  {
    v46 = 0;
  }

  v47 = v51;
  (*(v45 + 72))(v51, v50, v46 & 0xFFFF000000000000 | v31 & 0xFFFFFFFFFFFFLL | v39, v58 | (v57 << 8), v44, v45);

  return (*(v55 + 8))(v43, v44);
}

uint64_t sub_1004661B8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v5 = *a1;
  v6 = a1[1];

  v7 = sub_10016FD40(v5, v6);
  v9 = v8;
  v10 = (a2 + *(type metadata accessor for AWDLPeer(0) + 20));
  v11 = *(v10 + 1);
  v12 = *v10;
  v13 = WiFiInterface.macAddress.getter();
  v14 = sub_100460C98(v7, v9, v12 | (v11 << 16), v13 & 0xFFFFFFFFFFFFLL);
  v15 = v14;
  v16 = v14 >> 8;
  v17 = v14 >> 16;
  v18 = v14 >> 24;
  v19 = HIDWORD(v14);
  v20 = v14 >> 40;
  result = sub_1000124C8(v7, v9);
  *a3 = v15;
  a3[1] = v16;
  a3[2] = v17;
  a3[3] = v18;
  a3[4] = v19;
  a3[5] = v20;
  return result;
}

uint64_t sub_100466294(uint64_t a1, void *a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result;
    v7 = *(*result + 592);
    swift_beginAccess();
    v9 = *(v6 + v7);
    __chkstk_darwin();
    sub_100018AB4(255, &qword_100595230, AWDLTrafficRegistrationConfiguration_ptr);
    type metadata accessor for AWDLInterface.AdditionalTrafficRegistrationInformation();
    sub_100047340(&qword_100595238, &qword_100595230, AWDLTrafficRegistrationConfiguration_ptr);
    type metadata accessor for Dictionary();

    swift_getWitnessTable();
    Collection.firstIndex(where:)();

    if (v12 != 255)
    {
      sub_100085170(v10, v11, v12);
      v8 = sub_100454028(a2, 1, 0);
      sub_100465BB4(a2, BYTE1(v8), v8, a3);
    }
  }

  return result;
}

BOOL sub_100466478(uint64_t a1, id a2)
{
  sub_100018AB4(255, &qword_100595230, AWDLTrafficRegistrationConfiguration_ptr);
  v4 = type metadata accessor for AWDLInterface.AdditionalTrafficRegistrationInformation();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v6 = *(*(TupleTypeMetadata2 - 8) + 64);
  __chkstk_darwin();
  v8 = (&v13 - v7);
  (*(v9 + 16))(&v13 - v7, a1, TupleTypeMetadata2);
  v10 = *v8;
  v11 = *(TupleTypeMetadata2 + 48);

  (*(*(v4 - 8) + 8))(v8 + v11, v4);
  return v10 == a2;
}

void sub_1004665DC(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin();
  v9 = &v23[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = OS_dispatch_queue.awdl.unsafeMutableAddressor();
  v11 = *v10;
  *v9 = *v10;
  (*(v6 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v5);
  v12 = v11;
  LOBYTE(v11) = _dispatchPreconditionTest(_:)();
  (*(v6 + 8))(v9, v5);
  if ((v11 & 1) == 0)
  {
LABEL_12:
    __break(1u);
    return;
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    v15 = [a2 servicesRequiringAvailabilityNotification];
    if (v15)
    {
      v16 = v15;
      type metadata accessor for AWDLTrafficRegistrationService(0);
      v17 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v18 = *(v17 + 16);
      if (v18)
      {
        v19 = 0;
        while (v19 < *(v17 + 16))
        {
          v20 = v19 + 1;
          v21 = *(v17 + 32 + 8 * v19);
          sub_10044E5A0(v21);

          v19 = v20;
          if (v18 == v20)
          {
            goto LABEL_8;
          }
        }

        __break(1u);
        goto LABEL_12;
      }

LABEL_8:
    }

    v24 = a3;
    v22 = *(*v14 + 480);
    swift_beginAccess();
    type metadata accessor for AWDLInterface.StateMonitoringClient();
    type metadata accessor for Dictionary();
    Dictionary.removeValue(forKey:)();
    swift_endAccess();

    sub_100477018(v25, v26, v27);
  }
}

void sub_100466848(void **a1, uint64_t a2, void *a3, void *a4)
{
  v5 = *a1;
  v6 = *(*a2 + 160);
  v7 = a3;
  v8 = v5;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v21 = a4;
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v22 = v20;
    *v11 = 138412546;
    *(v11 + 4) = v7;
    *v12 = v7;
    *(v11 + 12) = 2080;
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;
    v16 = v7;
    v17 = sub_100002320(v13, v15, &v22);

    *(v11 + 14) = v17;
    _os_log_impl(&_mh_execute_header, v9, v10, "%@ is monitoring AWDL state information %s", v11, 0x16u);
    sub_100016290(v12, &qword_10058B780, &qword_100480AC0);

    sub_100002A00(v20);

    a4 = v21;
  }

  sub_10044E220(v8);
  if (v18)
  {
    v19 = _convertErrorToNSError(_:)();
  }

  else
  {
    v19 = 0;
  }

  [a4 availabilityUpdatedForService:v8 error:v19];
}

void sub_100466A48(void **a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *a1;
  v5 = *(*a2 + 616);
  swift_beginAccess();
  v6 = *(a2 + v5);
  v31 = v4;
  type metadata accessor for AWDLTrafficRegistrationService(0);
  v7 = *(v3 + 432);
  v8 = *(v3 + 440);
  type metadata accessor for AWDLInterface.TrafficRegistrationServiceAvailabilityMonitor();
  sub_10004C988(&unk_100594A20, type metadata accessor for AWDLTrafficRegistrationService);
  v9 = v4;
  Dictionary.subscript.getter();

  v10 = v30;
  if (v30 == 1)
  {
    swift_endAccess();
    v10 = 0;
  }

  else
  {
    swift_errorRetain();
    swift_endAccess();
    sub_100474CDC(v30);
  }

  v11 = [objc_opt_self() zeroAddress];
  v12 = [objc_allocWithZone(AWDLTrafficRegistrationConfiguration) initWithUniqueIdentifier:v9 peerAddress:v11];

  sub_100474D84(v12, 0, 0);
  v14 = v13;

  if (v10)
  {
    if (v14)
    {

      return;
    }
  }

  else if (!v14)
  {
    return;
  }

  v15 = *(*a2 + 160);
  v16 = v9;
  swift_errorRetain();
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v29[0] = swift_slowAlloc();
    *v19 = 136315394;
    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = v18;
    v22 = sub_100002320(v20, v21, v29);

    *(v19 + 4) = v22;
    *(v19 + 12) = 2080;
    if (v14)
    {
      v23 = 7630702;
    }

    else
    {
      v23 = 7827310;
    }

    v24 = sub_100002320(v23, 0xE300000000000000, v29);

    *(v19 + 14) = v24;
    _os_log_impl(&_mh_execute_header, v17, v28, "Notifying clients that %s is %s available", v19, 0x16u);
    swift_arrayDestroy();
  }

  swift_beginAccess();
  v31 = v16;
  v16;
  type metadata accessor for Dictionary._Variant();
  v25 = Dictionary._Variant.subscript.modify();
  if (*v26 == 1)
  {
    __break(1u);
  }

  else
  {
    v27 = v25;
    *v26 = v14;
    swift_errorRetain();

    v27(v29, 0);

    swift_endAccess();
    v29[0] = sub_100030D3C();
    __chkstk_darwin();
    type metadata accessor for AWDLInterface.StateMonitoringClient();
    type metadata accessor for Dictionary.Values();

    swift_getWitnessTable();
    v29[0] = Sequence.filter(_:)();
    __chkstk_darwin();
    type metadata accessor for Array();
    swift_getWitnessTable();
    Sequence.forEach(_:)();
  }
}

uint64_t sub_100466FB8(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 16) servicesRequiringAvailabilityNotification];
  if (v3)
  {
    v4 = v3;
    type metadata accessor for AWDLTrafficRegistrationService(0);
    v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v9 = a2;
    __chkstk_darwin();
    v8[2] = &v9;
    v6 = sub_10044BED8(sub_100475664, v8, v5);
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

void sub_10046709C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 8);
  if (a3)
  {
    v5 = _convertErrorToNSError(_:)();
  }

  else
  {
    v5 = 0;
  }

  [v4 availabilityUpdatedForService:a2 error:v5];
}

uint64_t sub_100467134()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_100467170(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
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

  return (v4 + 1);
}

uint64_t sub_1004671CC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

void sub_10046721C()
{
  type metadata accessor for DispatchTime();
  if (v0 <= 0x3F)
  {
    sub_100467318(319, qword_100596670, &type metadata accessor for DispatchTime);
    if (v1 <= 0x3F)
    {
      sub_100467318(319, &qword_100593008, &type metadata accessor for UUID);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100467318(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_10046736C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1004673A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = sub_10004F3B0(a1, a2);
  v7 = v6;
  Data.load<A>(as:)(v5, v6, &type metadata for WiFiAddress, a3);
  if (!v3)
  {
    return sub_1000124C8(v5, v7);
  }

  sub_1000124C8(v5, v7);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_10046743C(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = 0;
  v41 = a2 + 32;
  v42 = result + 32;
  v40 = *(result + 16);
  while (1)
  {
    if (v3 == v2)
    {
      goto LABEL_63;
    }

    v4 = v42 + 56 * v3;
    v5 = *v4;
    v6 = (v41 + 56 * v3);
    v7 = *v6;
    v8 = *(*v4 + 16);
    if (v8 != *(*v6 + 16))
    {
      return 0;
    }

    v10 = *(v4 + 8);
    v9 = *(v4 + 16);
    v11 = *(v4 + 24);
    v12 = *(v4 + 32);
    v13 = *(v4 + 40);
    v14 = *(v4 + 48);
    v16 = *(v6 + 1);
    v15 = *(v6 + 2);
    v17 = *(v6 + 3);
    v18 = *(v6 + 32);
    v19 = *(v6 + 5);
    v20 = !v8 || v5 == v7;
    v21 = v6[6];
    if (!v20)
    {
      break;
    }

LABEL_15:
    v43 = v19;
    v44 = v13;
    v45 = v18;
    v46 = v12;
    if (v11 >> 60 == 15)
    {
      if (v17 >> 60 != 15)
      {
        goto LABEL_54;
      }

      sub_10005D4F4(v10, v9, v11);

      sub_10005D4F4(v16, v15, v17);
      sub_10005D4F4(v10, v9, v11);
      sub_10005D4F4(v16, v15, v17);
    }

    else
    {
      if (v17 >> 60 == 15)
      {
LABEL_54:
        sub_10005D4F4(v10, v9, v11);
        sub_10005D4F4(v16, v15, v17);
        sub_10002F75C(v10, v9, v11);
        v34 = v16;
        v35 = v15;
        v36 = v17;
        goto LABEL_59;
      }

      if (v10 != v16)
      {

        sub_10005D4F4(v10, v9, v11);

        sub_10005D4F4(v16, v15, v17);
        sub_10005D4F4(v10, v9, v11);
        sub_10005D4F4(v16, v15, v17);
        sub_10002F75C(v16, v15, v17);
        sub_10002F75C(v10, v9, v11);

        sub_10002F75C(v16, v15, v17);

        v34 = v10;
        v35 = v9;
        goto LABEL_58;
      }

      v24 = v11 >> 62;
      v25 = v17 >> 62;
      if (v11 >> 62 == 3)
      {
        v26 = 0;
        if (!v9 && v11 == 0xC000000000000000 && v17 >> 62 == 3)
        {
          v26 = 0;
          if (!v15 && v17 == 0xC000000000000000)
          {

            sub_10005D4F4(v10, 0, 0xC000000000000000);

            sub_10005D4F4(v16, 0, 0xC000000000000000);
            sub_10005D4F4(v10, 0, 0xC000000000000000);
            sub_10005D4F4(v16, 0, 0xC000000000000000);
            sub_10002F75C(v16, 0, 0xC000000000000000);
            goto LABEL_48;
          }
        }
      }

      else if (v24)
      {
        if (v24 == 1)
        {
          LODWORD(v26) = HIDWORD(v9) - v9;
          if (__OFSUB__(HIDWORD(v9), v9))
          {
            goto LABEL_67;
          }

          v26 = v26;
        }

        else
        {
          v28 = *(v9 + 16);
          v27 = *(v9 + 24);
          v29 = __OFSUB__(v27, v28);
          v26 = v27 - v28;
          if (v29)
          {
            goto LABEL_66;
          }
        }
      }

      else
      {
        v26 = BYTE6(v11);
      }

      v39 = v9;
      if (v25 > 1)
      {
        if (v25 != 2)
        {
          if (v26)
          {
LABEL_56:

            sub_10005D4F4(v10, v9, v11);

            sub_10005D4F4(v16, v15, v17);
            v37 = v11;
            v38 = v10;
            sub_10005D4F4(v10, v9, v11);
            sub_10005D4F4(v16, v15, v17);
            sub_10002F75C(v16, v15, v17);
LABEL_57:
            v11 = v37;
            sub_10002F75C(v38, v39, v37);

            sub_10002F75C(v16, v15, v17);

            v34 = v38;
            v35 = v39;
LABEL_58:
            v36 = v11;
LABEL_59:
            sub_10002F75C(v34, v35, v36);
            return 0;
          }

LABEL_47:

          sub_10005D4F4(v10, v9, v11);

          sub_10005D4F4(v16, v15, v17);
          sub_10005D4F4(v10, v9, v11);
          sub_10005D4F4(v16, v15, v17);
          sub_10002F75C(v16, v15, v17);
          goto LABEL_48;
        }

        v32 = *(v15 + 16);
        v31 = *(v15 + 24);
        v29 = __OFSUB__(v31, v32);
        v30 = v31 - v32;
        if (v29)
        {
          goto LABEL_64;
        }
      }

      else if (v25)
      {
        LODWORD(v30) = HIDWORD(v15) - v15;
        if (__OFSUB__(HIDWORD(v15), v15))
        {
          goto LABEL_65;
        }

        v30 = v30;
      }

      else
      {
        v30 = BYTE6(v17);
      }

      if (v26 != v30)
      {
        goto LABEL_56;
      }

      if (v26 < 1)
      {
        goto LABEL_47;
      }

      sub_10005D4F4(v10, v9, v11);

      sub_10005D4F4(v16, v15, v17);
      v38 = v10;
      sub_10005D4F4(v10, v9, v11);
      sub_10005D4F4(v16, v15, v17);
      sub_10005D4F4(v16, v15, v17);
      v37 = v11;
      v33 = sub_100031C74(v9, v11, v15, v17);
      sub_10002F75C(v16, v15, v17);
      if ((v33 & 1) == 0)
      {
        goto LABEL_57;
      }

      v9 = v39;
    }

LABEL_48:
    sub_10002F75C(v10, v9, v11);

    sub_10002F75C(v16, v15, v17);

    sub_10002F75C(v10, v9, v11);
    result = 0;
    if (v46 == v45 && v44 == v43)
    {
      v2 = v40;
      if (v14 == v21)
      {
        ++v3;
        result = 1;
        if (v3 != v40)
        {
          continue;
        }
      }
    }

    return result;
  }

  v22 = (v5 + 32);
  v23 = (v7 + 32);
  while (v8)
  {
    if ((0x801004u >> (8 * *v22)) != (0x801004u >> (8 * *v23)))
    {
      return 0;
    }

    ++v22;
    ++v23;
    if (!--v8)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
  return result;
}

uint64_t sub_100467A80(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    v8 = (0x801004u >> (8 * v5));
    v9 = 0x801004u >> (8 * v7);
    result = v8 == v9;
    if (v8 != v9 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100467AF8(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = 0;
  v56 = result + 32;
  v4 = a2 + 32;
  v51 = a2 + 32;
  while (1)
  {
    if (v3 == v2)
    {
      goto LABEL_88;
    }

    v5 = v56 + 56 * v3;
    v6 = *v5;
    v7 = (v4 + 56 * v3);
    v8 = *v7;
    v9 = *(*v5 + 16);
    if (v9 != *(*v7 + 16))
    {
      return 0;
    }

    v10 = *(v5 + 8);
    v57 = *(v5 + 16);
    v11 = *(v5 + 24);
    v12 = *(v5 + 32);
    v13 = *(v5 + 40);
    v14 = *(v5 + 48);
    v16 = *(v7 + 1);
    v15 = *(v7 + 2);
    v17 = *(v7 + 3);
    v18 = *(v7 + 32);
    result = *(v7 + 5);
    v19 = !v9 || v6 == v8;
    v20 = v7[6];
    if (!v19)
    {
      break;
    }

LABEL_12:
    v52 = result;
    v53 = v13;
    v54 = v18;
    v55 = v12;
    if (v11 >> 60 == 15)
    {
      if (v17 >> 60 != 15)
      {
        goto LABEL_81;
      }

      sub_10005D4F4(v10, v57, v11);

      sub_10005D4F4(v16, v15, v17);
      sub_10005D4F4(v10, v57, v11);
      sub_10005D4F4(v16, v15, v17);
    }

    else
    {
      if (v17 >> 60 == 15)
      {
LABEL_81:
        sub_10005D4F4(v10, v57, v11);
        sub_10005D4F4(v16, v15, v17);
        sub_10002F75C(v10, v57, v11);
        v43 = v16;
        v44 = v15;
        v45 = v17;
        goto LABEL_86;
      }

      v50 = v15;
      if (v10 != v16)
      {

        sub_10005D4F4(v10, v57, v11);

        sub_10005D4F4(v16, v15, v17);
        sub_10005D4F4(v10, v57, v11);
        sub_10005D4F4(v16, v15, v17);
        sub_10002F75C(v16, v15, v17);
        sub_10002F75C(v10, v57, v11);

        sub_10002F75C(v16, v15, v17);

        v43 = v10;
        v44 = v57;
        goto LABEL_85;
      }

      v25 = v11 >> 62;
      v26 = v17 >> 62;
      if (v11 >> 62 == 3)
      {
        if (v57)
        {
          v27 = 0;
        }

        else
        {
          v27 = v11 == 0xC000000000000000;
        }

        v28 = 0;
        v29 = v27 && v17 >> 62 == 3;
        if (v29 && !v15 && v17 == 0xC000000000000000)
        {

          sub_10005D4F4(v10, 0, 0xC000000000000000);

          sub_10005D4F4(v16, 0, 0xC000000000000000);
          sub_10005D4F4(v10, 0, 0xC000000000000000);
          sub_10005D4F4(v16, 0, 0xC000000000000000);
          v30 = v16;
          v31 = 0;
          v32 = 0xC000000000000000;
          goto LABEL_72;
        }
      }

      else if (v25)
      {
        if (v25 == 1)
        {
          LODWORD(v28) = HIDWORD(v57) - v57;
          if (__OFSUB__(HIDWORD(v57), v57))
          {
            goto LABEL_92;
          }

          v28 = v28;
        }

        else
        {
          v34 = *(v57 + 16);
          v33 = *(v57 + 24);
          v35 = __OFSUB__(v33, v34);
          v28 = v33 - v34;
          if (v35)
          {
            goto LABEL_91;
          }
        }
      }

      else
      {
        v28 = BYTE6(v11);
      }

      if (v26 > 1)
      {
        if (v26 != 2)
        {
          v39 = v16;
          if (v28)
          {
LABEL_83:

            sub_10005D4F4(v10, v57, v11);

            sub_10005D4F4(v39, v50, v17);
            v49 = v10;
            v46 = v10;
            v40 = v57;
            sub_10005D4F4(v46, v57, v11);
            sub_10005D4F4(v39, v50, v17);
            v16 = v39;
            v47 = v39;
            v15 = v50;
            v41 = v17;
            sub_10002F75C(v47, v50, v17);
LABEL_84:
            sub_10002F75C(v49, v40, v11);

            sub_10002F75C(v16, v15, v41);

            v43 = v49;
            v44 = v40;
LABEL_85:
            v45 = v11;
LABEL_86:
            sub_10002F75C(v43, v44, v45);
            return 0;
          }

LABEL_71:

          sub_10005D4F4(v10, v57, v11);

          v16 = v39;
          v42 = v39;
          v15 = v50;
          sub_10005D4F4(v42, v50, v17);
          sub_10005D4F4(v10, v57, v11);
          sub_10005D4F4(v16, v50, v17);
          v30 = v16;
          v31 = v50;
          v32 = v17;
LABEL_72:
          sub_10002F75C(v30, v31, v32);
          goto LABEL_73;
        }

        v38 = *(v15 + 16);
        v37 = *(v15 + 24);
        v35 = __OFSUB__(v37, v38);
        v36 = v37 - v38;
        if (v35)
        {
          goto LABEL_90;
        }
      }

      else if (v26)
      {
        LODWORD(v36) = HIDWORD(v15) - v15;
        if (__OFSUB__(HIDWORD(v15), v15))
        {
          goto LABEL_89;
        }

        v36 = v36;
      }

      else
      {
        v36 = BYTE6(v17);
      }

      v39 = v16;
      if (v28 != v36)
      {
        goto LABEL_83;
      }

      if (v28 < 1)
      {
        goto LABEL_71;
      }

      sub_10005D4F4(v10, v57, v11);

      sub_10005D4F4(v16, v50, v17);
      v49 = v10;
      sub_10005D4F4(v10, v57, v11);
      sub_10005D4F4(v16, v50, v17);
      sub_10005D4F4(v16, v50, v17);
      v40 = v57;
      v48 = sub_100031C74(v57, v11, v50, v17);
      v15 = v50;
      v41 = v17;
      sub_10002F75C(v16, v50, v17);
      if ((v48 & 1) == 0)
      {
        goto LABEL_84;
      }

      v10 = v49;
    }

LABEL_73:
    sub_10002F75C(v10, v57, v11);

    sub_10002F75C(v16, v15, v17);

    sub_10002F75C(v10, v57, v11);
    result = 0;
    if (v55 == v54 && v53 == v52)
    {
      v4 = v51;
      if (v14 == v20)
      {
        ++v3;
        result = 1;
        if (v3 != v2)
        {
          continue;
        }
      }
    }

    return result;
  }

  v21 = (v6 + 37);
  v22 = (v8 + 37);
  while (v9)
  {
    if (*(v21 - 5) != *(v22 - 5) || (0x801004u >> (8 * *(v21 - 1))) != (0x801004u >> (8 * *(v22 - 1))))
    {
      return 0;
    }

    v23 = *v21;
    v24 = *v22;
    if (v23 <= 3)
    {
      if (v23 == 2)
      {
        if (v24 != 2)
        {
          return 0;
        }

        goto LABEL_16;
      }

      if (v23 == 3)
      {
        if (v24 != 3)
        {
          return 0;
        }

        goto LABEL_16;
      }
    }

    else
    {
      switch(v23)
      {
        case 4u:
          if (v24 != 4)
          {
            return 0;
          }

          goto LABEL_16;
        case 5u:
          if (v24 != 5)
          {
            return 0;
          }

          goto LABEL_16;
        case 6u:
          if (v24 != 6)
          {
            return 0;
          }

          goto LABEL_16;
      }
    }

    if (v24 - 2) < 5 || ((v24 ^ v23))
    {
      return 0;
    }

LABEL_16:
    v21 += 8;
    v22 += 8;
    if (!--v9)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_88:
  __break(1u);
LABEL_89:
  __break(1u);
LABEL_90:
  __break(1u);
LABEL_91:
  __break(1u);
LABEL_92:
  __break(1u);
  return result;
}

Swift::Int sub_100468254(Swift::Int result, uint64_t a2)
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
      v10 = *(a2 + 40);
      v11 = (*(a2 + 48) + 6 * v6);
      v12 = *(v11 + 1);
      v13 = *v11;
      Hasher.init(_seed:)();
      NANClusterChangeEvent.hash(into:)(&v25, v13 | (v12 << 16));
      result = Hasher._finalize()();
      v14 = result & v7;
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
        v16 = v15 + 6 * v3;
        v17 = (v15 + 6 * v6);
        if (v3 != v6 || v16 >= v17 + 6)
        {
          v18 = *v17;
          *(v16 + 4) = *(v17 + 2);
          *v16 = v18;
        }

        v19 = *(a2 + 56);
        v20 = v19 + 24 * v3;
        v21 = (v19 + 24 * v6);
        if (v3 != v6 || v20 >= v21 + 24)
        {
          v9 = *v21;
          *(v20 + 16) = *(v21 + 2);
          *v20 = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

Swift::Int sub_10046840C(Swift::Int result, uint64_t a2)
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
      v10 = (*(a2 + 48) + 6 * v6);
      v11 = *(v10 + 1);
      v12 = *v10;
      Hasher.init(_seed:)();
      NANClusterChangeEvent.hash(into:)(&v24, v12 | (v11 << 16));
      result = Hasher._finalize()();
      v13 = result & v7;
      if (v3 >= v8)
      {
        if (v13 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v13 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v13)
      {
LABEL_10:
        v14 = *(a2 + 48);
        v15 = v14 + 6 * v3;
        v16 = (v14 + 6 * v6);
        if (v3 != v6 || v15 >= v16 + 6)
        {
          v17 = *v16;
          *(v15 + 4) = *(v16 + 2);
          *v15 = v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 8 * v3);
        v20 = (v18 + 8 * v6);
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

unint64_t sub_1004685CC(int64_t a1, uint64_t a2)
{
  v43 = type metadata accessor for UUID();
  v4 = *(v43 - 8);
  v5 = *(v4 + 64);
  result = __chkstk_darwin();
  v42 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v44 = v7;
    v13 = _HashTable.previousHole(before:)();
    v14 = v43;
    v7 = v44;
    v15 = v12;
    v41 = (v13 + 1) & v12;
    v17 = *(v4 + 16);
    v16 = v4 + 16;
    v39 = a2 + 64;
    v40 = v17;
    v18 = *(v16 + 56);
    v38 = (v16 - 8);
    do
    {
      v19 = v18;
      v20 = v18 * v11;
      v21 = v42;
      v22 = v15;
      v23 = v16;
      v24 = v7;
      v40(v42, *(v7 + 48) + v18 * v11, v14);
      v25 = *(v24 + 40);
      sub_10004C988(&unk_10058BB00, &type metadata accessor for UUID);
      v26 = dispatch thunk of Hashable._rawHashValue(seed:)();
      result = (*v38)(v21, v14);
      v15 = v22;
      v27 = v26 & v22;
      if (a1 >= v41)
      {
        if (v27 >= v41 && a1 >= v27)
        {
LABEL_15:
          v7 = v44;
          v30 = *(v44 + 48);
          result = v30 + v19 * a1;
          v16 = v23;
          if (v19 * a1 < v20 || (v18 = v19, result >= v30 + v20 + v19))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v7 = v44;
            v18 = v19;
            v15 = v22;
            v9 = v39;
          }

          else
          {
            v9 = v39;
            if (v19 * a1 != v20)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v7 = v44;
              v18 = v19;
              v15 = v22;
            }
          }

          v31 = *(v7 + 56);
          v32 = (v31 + 16 * a1);
          v33 = (v31 + 16 * v11);
          if (a1 != v11 || v32 >= v33 + 1)
          {
            *v32 = *v33;
            a1 = v11;
          }

          goto LABEL_4;
        }
      }

      else if (v27 >= v41 || a1 >= v27)
      {
        goto LABEL_15;
      }

      v16 = v23;
      v9 = v39;
      v18 = v19;
      v7 = v44;
LABEL_4:
      v11 = (v11 + 1) & v15;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v34 = *(v7 + 16);
  v35 = __OFSUB__(v34, 1);
  v36 = v34 - 1;
  if (v35)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v36;
    ++*(v7 + 36);
  }

  return result;
}

unint64_t sub_1004688EC(unint64_t result, uint64_t a2)
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
      v10 = *(a2 + 48);
      v11 = (v10 + v6);
      v12 = *(v10 + v6);
      result = static Hasher._hash(seed:bytes:count:)();
      v13 = result & v7;
      if (v3 >= v8)
      {
        if (v13 < v8 || v3 < v13)
        {
          goto LABEL_5;
        }
      }

      else if (v13 < v8 && v3 < v13)
      {
        goto LABEL_5;
      }

      v16 = (v10 + v3);
      if (v3 != v6 || v16 >= v11 + 1)
      {
        *v16 = *v11;
      }

      v17 = *(a2 + 56);
      v18 = *(*(type metadata accessor for NANPeer.Service(0) - 8) + 72);
      v19 = v18 * v3;
      result = v17 + v18 * v3;
      v20 = v18 * v6;
      v21 = v17 + v18 * v6 + v18;
      if (v19 < v20 || result >= v21)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v19 == v20)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v23 = *(a2 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v25;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_100468A9C(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    while (1)
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + v6);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(byte_1004B4E58[v10]);
      result = Hasher._finalize()();
      v11 = result & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v11 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v12 = *(a2 + 48);
      v13 = (v12 + v3);
      v14 = (v12 + v6);
      if (v3 != v6 || v13 >= v14 + 1)
      {
        *v13 = *v14;
      }

      v15 = *(a2 + 56);
      v16 = *(*(type metadata accessor for NANAttribute(0) - 8) + 72);
      v17 = v16 * v3;
      result = v15 + v16 * v3;
      v18 = v16 * v6;
      v19 = v15 + v16 * v6 + v16;
      if (v17 < v18 || result >= v19)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v17 == v18)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v11 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v11)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
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

unint64_t sub_100468CA4(unint64_t result, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = result;
  v5 = a2 + 64;
  v6 = -1 << *(a2 + 32);
  v7 = (result + 1) & ~v6;
  if ((*(a2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v6;
    v9 = (_HashTable.previousHole(before:)() + 1) & ~v6;
    while (1)
    {
      v10 = *(a2 + 40);
      v11 = *(a2 + 48) - v7 + 8 * v7;
      v12 = *(v11 + 3);
      v13 = *v11;
      v14 = *(v11 + 1);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v13);
      NANClusterChangeEvent.hash(into:)(&v31, v14 | (v12 << 16));
      result = Hasher._finalize()();
      v15 = result & v8;
      if (v4 >= v9)
      {
        break;
      }

      if (v15 < v9)
      {
        goto LABEL_10;
      }

LABEL_11:
      v16 = *(a2 + 48);
      v17 = v16 - v4 + 8 * v4;
      v18 = v16 - v7 + 8 * v7;
      if (v4 != v7 || v17 >= v18 + 7)
      {
        v19 = *v18;
        v20 = *(v18 + 4);
        *(v17 + 6) = *(v18 + 6);
        *(v17 + 4) = v20;
        *v17 = v19;
      }

      v21 = *(a2 + 56);
      v22 = *(*(a3(0) - 8) + 72);
      v23 = v22 * v4;
      result = v21 + v22 * v4;
      v24 = v22 * v7;
      v25 = v21 + v22 * v7 + v22;
      if (v23 < v24 || result >= v25)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v4 = v7;
        if (v23 == v24)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v4 = v7;
LABEL_5:
      v7 = (v7 + 1) & v8;
      if (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v15 < v9)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v4 < v15)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v5 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v4) - 1;
  v27 = *(a2 + 16);
  v28 = __OFSUB__(v27, 1);
  v29 = v27 - 1;
  if (v28)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v29;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_100468EB8(int64_t a1, uint64_t a2)
{
  v45 = type metadata accessor for UUID();
  v4 = *(v45 - 8);
  v5 = *(v4 + 64);
  result = __chkstk_darwin();
  v44 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v46 = v7;
    v13 = _HashTable.previousHole(before:)();
    v14 = v45;
    v7 = v46;
    v15 = v12;
    v17 = *(v4 + 16);
    v16 = v4 + 16;
    v42 = (v13 + 1) & v12;
    v43 = v17;
    v18 = *(v16 + 56);
    v40 = (v16 - 8);
    v41 = a2 + 64;
    do
    {
      v19 = v18;
      v20 = v18 * v11;
      v21 = v44;
      v22 = v15;
      v23 = v16;
      v24 = v7;
      v43(v44, *(v7 + 48) + v18 * v11, v14);
      v25 = *(v24 + 40);
      sub_10004C988(&unk_10058BB00, &type metadata accessor for UUID);
      v26 = dispatch thunk of Hashable._rawHashValue(seed:)();
      result = (*v40)(v21, v14);
      v15 = v22;
      v27 = v26 & v22;
      if (a1 >= v42)
      {
        if (v27 >= v42 && a1 >= v27)
        {
LABEL_15:
          v7 = v46;
          v30 = *(v46 + 48);
          result = v30 + v19 * a1;
          v16 = v23;
          if (v19 * a1 < v20 || (v18 = v19, result >= v30 + v20 + v19))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v7 = v46;
            v18 = v19;
            v15 = v22;
            v9 = v41;
          }

          else
          {
            v9 = v41;
            if (v19 * a1 != v20)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v7 = v46;
              v18 = v19;
              v15 = v22;
            }
          }

          v31 = *(v7 + 56);
          v32 = v31 + 40 * a1;
          v33 = (v31 + 40 * v11);
          if (a1 != v11 || v32 >= v33 + 40)
          {
            v34 = *v33;
            v35 = v33[1];
            *(v32 + 32) = *(v33 + 4);
            *v32 = v34;
            *(v32 + 16) = v35;
            a1 = v11;
          }

          goto LABEL_4;
        }
      }

      else if (v27 >= v42 || a1 >= v27)
      {
        goto LABEL_15;
      }

      v16 = v23;
      v9 = v41;
      v18 = v19;
      v7 = v46;
LABEL_4:
      v11 = (v11 + 1) & v15;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v36 = *(v7 + 16);
  v37 = __OFSUB__(v36, 1);
  v38 = v36 - 1;
  if (v37)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v38;
    ++*(v7 + 36);
  }

  return result;
}

uint64_t sub_1004691DC(uint64_t result, uint64_t a2)
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
      v10 = *(a2 + 40);
      v11 = *(a2 + 48);
      v12 = (v11 + v6);
      v13 = *(v11 + v6);
      result = static Hasher._hash(seed:bytes:count:)();
      v14 = result & v7;
      if (v3 >= v8)
      {
        if (v14 >= v8 && v3 >= v14)
        {
LABEL_15:
          v17 = (v11 + v3);
          if (v3 != v6 || v17 >= v12 + 1)
          {
            *v17 = *v12;
          }

          v18 = *(a2 + 56);
          v19 = (v18 + 32 * v3);
          v20 = (v18 + 32 * v6);
          if (32 * v3 != 32 * v6 || (v3 = v6, v19 >= v20 + 2))
          {
            v9 = v20[1];
            *v19 = *v20;
            v19[1] = v9;
            v3 = v6;
          }
        }
      }

      else if (v14 >= v8 || v3 >= v14)
      {
        goto LABEL_15;
      }

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

unint64_t sub_10046935C(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    while (1)
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 6 * v6);
      v11 = *(v10 + 1);
      v12 = *v10;
      Hasher.init(_seed:)();
      NANClusterChangeEvent.hash(into:)(&v27, v12 | (v11 << 16));
      result = Hasher._finalize()();
      v13 = result & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v13 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v14 = *(a2 + 48);
      v15 = v14 + 6 * v3;
      v16 = (v14 + 6 * v6);
      if (v3 != v6 || v15 >= v16 + 6)
      {
        v17 = *v16;
        *(v15 + 4) = *(v16 + 2);
        *v15 = v17;
      }

      v18 = *(a2 + 56);
      v19 = *(*(sub_10005DC58(&qword_100597400, &unk_1004B4D20) - 8) + 72);
      v20 = v19 * v3;
      result = v18 + v19 * v3;
      v21 = v19 * v6;
      v22 = v18 + v19 * v6 + v19;
      if (v20 < v21 || result >= v22)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v20 == v21)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v13 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v13)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v24 = *(a2 + 16);
  v25 = __OFSUB__(v24, 1);
  v26 = v24 - 1;
  if (v25)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v26;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_100469554(uint64_t result, uint64_t a2)
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
        v19 = (v18 + v3);
        v20 = (v18 + v6);
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

uint64_t sub_10046971C(uint64_t result, uint64_t a2)
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
      v10 = *(a2 + 48);
      v11 = (v10 + v6);
      v12 = *(v10 + v6);
      result = static Hasher._hash(seed:bytes:count:)();
      v13 = result & v7;
      if (v3 >= v8)
      {
        if (v13 >= v8 && v3 >= v13)
        {
LABEL_15:
          v16 = (v10 + v3);
          if (v3 != v6 || v16 >= v11 + 1)
          {
            *v16 = *v11;
          }

          v17 = *(a2 + 56);
          v18 = (v17 + v3);
          v19 = (v17 + v6);
          if (v3 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
            v3 = v6;
          }
        }
      }

      else if (v13 >= v8 || v3 >= v13)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1004698A8(int64_t a1, uint64_t a2)
{
  v43 = type metadata accessor for UUID();
  v4 = *(v43 - 8);
  v5 = *(v4 + 64);
  result = __chkstk_darwin();
  v42 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v44 = v7;
    v13 = _HashTable.previousHole(before:)();
    v14 = v43;
    v7 = v44;
    v15 = v12;
    v41 = (v13 + 1) & v12;
    v17 = *(v4 + 16);
    v16 = v4 + 16;
    v39 = a2 + 64;
    v40 = v17;
    v18 = *(v16 + 56);
    v38 = (v16 - 8);
    do
    {
      v19 = v18;
      v20 = v18 * v11;
      v21 = v42;
      v22 = v15;
      v23 = v16;
      v24 = v7;
      v40(v42, *(v7 + 48) + v18 * v11, v14);
      v25 = *(v24 + 40);
      sub_10004C988(&unk_10058BB00, &type metadata accessor for UUID);
      v26 = dispatch thunk of Hashable._rawHashValue(seed:)();
      result = (*v38)(v21, v14);
      v15 = v22;
      v27 = v26 & v22;
      if (a1 >= v41)
      {
        if (v27 >= v41 && a1 >= v27)
        {
LABEL_15:
          v7 = v44;
          v30 = *(v44 + 48);
          result = v30 + v19 * a1;
          v16 = v23;
          if (v19 * a1 < v20 || (v18 = v19, result >= v30 + v20 + v19))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v7 = v44;
            v18 = v19;
            v15 = v22;
            v9 = v39;
          }

          else
          {
            v9 = v39;
            if (v19 * a1 != v20)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v7 = v44;
              v18 = v19;
              v15 = v22;
            }
          }

          v31 = *(v7 + 56);
          v32 = (v31 + 8 * a1);
          v33 = (v31 + 8 * v11);
          if (a1 != v11 || v32 >= v33 + 1)
          {
            *v32 = *v33;
            a1 = v11;
          }

          goto LABEL_4;
        }
      }

      else if (v27 >= v41 || a1 >= v27)
      {
        goto LABEL_15;
      }

      v16 = v23;
      v9 = v39;
      v18 = v19;
      v7 = v44;
LABEL_4:
      v11 = (v11 + 1) & v15;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v34 = *(v7 + 16);
  v35 = __OFSUB__(v34, 1);
  v36 = v34 - 1;
  if (v35)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v36;
    ++*(v7 + 36);
  }

  return result;
}

unint64_t sub_100469BC8(unint64_t result, uint64_t a2)
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
      v10 = *(a2 + 48);
      v11 = (v10 + 8 * v6);
      v12 = *v11;
      result = static Hasher._hash(seed:_:)();
      v13 = result & v7;
      if (v3 >= v8)
      {
        if (v13 < v8 || v3 < v13)
        {
          goto LABEL_5;
        }
      }

      else if (v13 < v8 && v3 < v13)
      {
        goto LABEL_5;
      }

      v16 = (v10 + 8 * v3);
      if (v3 != v6 || v16 >= v11 + 1)
      {
        *v16 = *v11;
      }

      v17 = *(a2 + 56);
      v18 = *(*(type metadata accessor for BrowseEndpoints(0) - 8) + 72);
      v19 = v18 * v3;
      result = v17 + v18 * v3;
      v20 = v18 * v6;
      v21 = v17 + v18 * v6 + v18;
      if (v19 < v20 || result >= v21)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v19 == v20)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v23 = *(a2 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v25;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_100469D8C(int64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v39 = a3;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  result = __chkstk_darwin();
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a2 + 64;
  v12 = -1 << *(a2 + 32);
  v13 = (a1 + 1) & ~v12;
  if ((*(a2 + 64 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v44 = a2;
    v14 = ~v12;
    v15 = _HashTable.previousHole(before:)();
    v16 = v14;
    a2 = v44;
    v43 = (v15 + 1) & v16;
    v18 = *(v6 + 16);
    v17 = v6 + 16;
    v41 = v11;
    v42 = v18;
    v19 = *(v17 + 56);
    v40 = (v17 - 8);
    do
    {
      v20 = v19;
      v21 = v19 * v13;
      v22 = v16;
      v23 = v17;
      v42(v10, *(a2 + 48) + v19 * v13, v5);
      v24 = *(a2 + 40);
      sub_10004C988(&unk_10058BB00, &type metadata accessor for UUID);
      v25 = dispatch thunk of Hashable._rawHashValue(seed:)();
      result = (*v40)(v10, v5);
      v16 = v22;
      v26 = v25 & v22;
      if (a1 >= v43)
      {
        if (v26 >= v43 && a1 >= v26)
        {
LABEL_15:
          v17 = v23;
          if (v20 * a1 < v21 || *(v44 + 48) + v20 * a1 >= (*(v44 + 48) + v21 + v20))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v20 * a1 != v21)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v44;
          v29 = *(v44 + 56);
          v30 = *(*(v39(0) - 8) + 72);
          v31 = v30 * a1;
          result = v29 + v30 * a1;
          v32 = v30 * v13;
          v33 = v29 + v30 * v13 + v30;
          if (v31 < v32 || result >= v33)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v13;
            v11 = v41;
            v16 = v22;
          }

          else
          {
            a1 = v13;
            v35 = v31 == v32;
            v11 = v41;
            v16 = v22;
            if (!v35)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v16 = v22;
              a1 = v13;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v26 >= v43 || a1 >= v26)
      {
        goto LABEL_15;
      }

      v17 = v23;
      v11 = v41;
      a2 = v44;
LABEL_4:
      v13 = (v13 + 1) & v16;
      v19 = v20;
    }

    while (((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0);
  }

  *(v11 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v36 = *(a2 + 16);
  v37 = __OFSUB__(v36, 1);
  v38 = v36 - 1;
  if (v37)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v38;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_10046A0DC(uint64_t result, uint64_t a2)
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
      v10 = *(a2 + 48);
      v11 = (v10 + 8 * v6);
      v12 = *v11;
      result = static Hasher._hash(seed:_:)();
      v13 = result & v7;
      if (v3 >= v8)
      {
        if (v13 >= v8 && v3 >= v13)
        {
LABEL_15:
          v16 = (v10 + 8 * v3);
          if (v3 != v6 || v16 >= v11 + 1)
          {
            *v16 = *v11;
          }

          v17 = *(a2 + 56);
          v18 = (v17 + 8 * v3);
          v19 = (v17 + 8 * v6);
          if (v3 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
            v3 = v6;
          }
        }
      }

      else if (v13 >= v8 || v3 >= v13)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

Swift::Int sub_10046A24C(Swift::Int result, uint64_t a2)
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
      v10 = *(*(a2 + 48) + v6);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(byte_1004B4E58[v10]);
      result = Hasher._finalize()();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + v3);
        v14 = (v12 + v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 8 * v3);
        v17 = (v15 + 8 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

void *sub_10046A3FC()
{
  v1 = v0;
  sub_10005DC58(&qword_100595310, &unk_1004B07A0);
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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

void *sub_10046A558()
{
  v1 = v0;
  sub_10005DC58(&unk_100597410, &unk_1004B4D50);
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
        v18 = *(v2 + 48) + 6 * v17;
        v19 = *(v18 + 4);
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = *(v4 + 48) + 6 * v17;
        *v21 = *v18;
        *(v21 + 4) = v19;
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

void *sub_10046A6CC()
{
  v1 = v0;
  sub_10005DC58(&qword_100596338, &unk_1004B0810);
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
    v10 = -1;
    v11 = *(v2 + 64);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v12 = v10 & v11;
    v13 = (v9 + 63) >> 6;
    if ((v10 & v11) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 3 * (v14 | (v8 << 6));
        v18 = 2 * v17;
        v19 = *(v2 + 48) + 2 * v17;
        v20 = *(v19 + 4);
        v17 *= 8;
        v21 = *(v2 + 56) + v17;
        v22 = *(v21 + 16);
        LODWORD(v19) = *v19;
        v27 = *v21;
        v28 = v22;
        v23 = *(v4 + 48) + v18;
        *v23 = v19;
        *(v23 + 4) = v20;
        v24 = *(v4 + 56) + v17;
        v25 = v27;
        *(v24 + 16) = v28;
        *v24 = v25;
        result = sub_100012400(&v27, v26, &qword_100599440, &qword_1004B3620);
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

void *sub_10046A8BC(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_10005DC58(a1, a2);
  v4 = *v2;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = *(v4 + 48) + 6 * v19;
        v21 = *(v20 + 4);
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = *(v6 + 48) + 6 * v19;
        *v23 = *v20;
        *(v23 + 4) = v21;
        *(*(v6 + 56) + 8 * v19) = v22;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

void *sub_10046AA20()
{
  v1 = v0;
  v35 = *(type metadata accessor for NANInternetSharingStatistics.Requester() - 8);
  v2 = *(v35 + 64);
  __chkstk_darwin();
  v34 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005DC58(&qword_10058BAB8, &qword_100480E00);
  v4 = *v0;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    v32 = v1;
    result = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v8 + 8 * v9)
    {
      result = memmove(result, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v36 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = *(v4 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    v33 = v4;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v10 << 6);
        v21 = 7 * v20;
        v22 = *(v4 + 56);
        v23 = *(v4 + 48) + 7 * v20;
        v24 = *(v23 + 4);
        v25 = *(v23 + 6);
        v26 = v34;
        v27 = *(v35 + 72) * v20;
        v28 = *v23;
        sub_100027648(v22 + v27, v34, type metadata accessor for NANInternetSharingStatistics.Requester);
        v29 = v36;
        v30 = *(v36 + 48) + v21;
        *v30 = v28;
        *(v30 + 4) = v24;
        *(v30 + 6) = v25;
        v4 = v33;
        result = sub_10003DFE0(v26, *(v29 + 56) + v27, type metadata accessor for NANInternetSharingStatistics.Requester);
      }

      while (v15);
    }

    v18 = v10;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v10 >= v16)
      {

        v1 = v32;
        v6 = v36;
        goto LABEL_18;
      }

      v19 = *(v8 + 8 * v10);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

id sub_10046AC8C()
{
  v1 = v0;
  sub_10005DC58(&unk_10059B230, &unk_1004B2400);
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
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
        result = v19;
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

void *sub_10046ADEC()
{
  v1 = v0;
  sub_10005DC58(&qword_100595390, &qword_1004AF260);
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

void *sub_10046AF38()
{
  v1 = v0;
  sub_10005DC58(&unk_10059B100, &qword_1004B07B0);
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
        v18 = 16 * v17;
        v19 = *(v2 + 56);
        v20 = (*(v2 + 48) + 16 * v17);
        v22 = *v20;
        v21 = v20[1];
        v17 *= 80;
        v24 = *(v19 + v17 + 16);
        v23 = *(v19 + v17 + 32);
        v25 = *(v19 + v17 + 64);
        v35 = *(v19 + v17 + 48);
        v36 = v25;
        v32 = *(v19 + v17);
        v33 = v24;
        v34 = v23;
        v26 = (*(v4 + 48) + v18);
        *v26 = v22;
        v26[1] = v21;
        v27 = (*(v4 + 56) + v17);
        *v27 = v32;
        v28 = v33;
        v29 = v34;
        v30 = v36;
        v27[3] = v35;
        v27[4] = v30;
        v27[1] = v28;
        v27[2] = v29;

        result = sub_1002CE52C(&v32, &v31);
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

id sub_10046B0EC()
{
  v1 = v0;
  sub_10005DC58(&qword_1005952A0, &qword_1004AF1A0);
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
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        result = v18;
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

void *sub_10046B248()
{
  v1 = v0;
  v31 = *(type metadata accessor for AWDLPeer(0) - 8);
  v2 = *(v31 + 64);
  __chkstk_darwin();
  v30 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005DC58(&qword_100596348, &unk_1004B0828);
  v4 = *v0;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    v29 = v1;
    result = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v8 + 8 * v9)
    {
      result = memmove(result, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v32 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = *(v4 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v10 << 6);
        v21 = 6 * v20;
        v22 = *(v4 + 48) + 6 * v20;
        v23 = *(v22 + 4);
        v24 = v30;
        v25 = *(v31 + 72) * v20;
        v26 = *v22;
        sub_100027648(*(v4 + 56) + v25, v30, type metadata accessor for AWDLPeer);
        v27 = v32;
        v28 = *(v32 + 48) + v21;
        *v28 = v26;
        *(v28 + 4) = v23;
        result = sub_10003DFE0(v24, *(v27 + 56) + v25, type metadata accessor for AWDLPeer);
      }

      while (v15);
    }

    v18 = v10;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v10 >= v16)
      {

        v1 = v29;
        v6 = v32;
        goto LABEL_18;
      }

      v19 = *(v8 + 8 * v10);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

void *sub_10046B4A4()
{
  v1 = v0;
  sub_10005DC58(&qword_1005962E8, &qword_1004B0748);
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *v25 = v22)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = 8 * v14;
      v18 = *(v2 + 48) + 8 * v14;
      v19 = *v18;
      LOWORD(v18) = *(v18 + 4);
      v20 = 24 * v14;
      v21 = *(v2 + 56) + v20;
      v22 = *v21;
      v23 = *(v21 + 16);
      v24 = *(v4 + 48) + v17;
      *v24 = v19;
      *(v24 + 4) = v18;
      v25 = *(v4 + 56) + v20;
      *(v25 + 16) = v23;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

void *sub_10046B638(uint64_t *a1, uint64_t *a2)
{
  v5 = v2;
  v36 = type metadata accessor for UUID();
  v38 = *(v36 - 8);
  v6 = *(v38 + 64);
  __chkstk_darwin();
  v35 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005DC58(a1, a2);
  v8 = *v2;
  v9 = static _DictionaryStorage.copy(original:)();
  v10 = v9;
  if (*(v8 + 16))
  {
    v32 = v5;
    result = (v9 + 64);
    v12 = ((1 << *(v10 + 32)) + 63) >> 6;
    if (v10 != v8 || result >= v8 + 64 + 8 * v12)
    {
      result = memmove(result, (v8 + 64), 8 * v12);
    }

    v14 = 0;
    v15 = *(v8 + 16);
    v37 = v10;
    *(v10 + 16) = v15;
    v16 = 1 << *(v8 + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & *(v8 + 64);
    v19 = (v16 + 63) >> 6;
    v33 = v38 + 32;
    v34 = v38 + 16;
    if (v18)
    {
      do
      {
        v20 = __clz(__rbit64(v18));
        v40 = (v18 - 1) & v18;
LABEL_17:
        v23 = v20 | (v14 << 6);
        v24 = v38;
        v25 = *(v38 + 72) * v23;
        v26 = v35;
        v27 = v36;
        (*(v38 + 16))(v35, *(v8 + 48) + v25, v36);
        v23 *= 16;
        v28 = v37;
        v29 = *(v37 + 48);
        v30 = *(v24 + 32);
        v39 = *(*(v8 + 56) + v23);
        v30(v29 + v25, v26, v27);
        *(*(v28 + 56) + v23) = v39;

        v18 = v40;
      }

      while (v40);
    }

    v21 = v14;
    while (1)
    {
      v14 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v14 >= v19)
      {

        v5 = v32;
        v10 = v37;
        goto LABEL_21;
      }

      v22 = *(v8 + 64 + 8 * v14);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v40 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v5 = v10;
  }

  return result;
}

void *sub_10046B8B8()
{
  v1 = v0;
  sub_10005DC58(&unk_10059B250, &unk_1004B08C0);
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v19)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(v2 + 48) + 6 * v14;
      v18 = *(v17 + 4);
      v19 = *(*(v2 + 56) + 8 * v14);
      v20 = *(v4 + 48) + 6 * v14;
      *v20 = *v17;
      *(v20 + 4) = v18;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

void *sub_10046BA1C()
{
  v1 = v0;
  sub_10005DC58(&qword_100596388, &qword_1004B08B8);
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

void *sub_10046BBDC(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_10005DC58(a1, a2);
  v4 = *v2;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 56) + 8 * v19);
        *(*(v6 + 48) + v19) = *(*(v4 + 48) + v19);
        *(*(v6 + 56) + 8 * v19) = v20;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

void *sub_10046BD28()
{
  v1 = v0;
  v24 = *(type metadata accessor for NANPeer.Service(0) - 8);
  v2 = *(v24 + 64);
  __chkstk_darwin();
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005DC58(&unk_10059B130, &unk_1004B0840);
  v5 = *v0;
  v6 = static _DictionaryStorage.copy(original:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v23 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    *(v7 + 16) = *(v5 + 16);
    v12 = 1 << *(v5 + 32);
    v13 = *(v5 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v11 << 6);
        v21 = *(*(v5 + 48) + v20);
        v22 = *(v24 + 72) * v20;
        sub_100027648(*(v5 + 56) + v22, v4, type metadata accessor for NANPeer.Service);
        *(*(v7 + 48) + v20) = v21;
        result = sub_10003DFE0(v4, *(v7 + 56) + v22, type metadata accessor for NANPeer.Service);
      }

      while (v15);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v23;
        goto LABEL_18;
      }

      v19 = *(v9 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

void *sub_10046BF70()
{
  v1 = v0;
  v24 = *(type metadata accessor for NANAttribute(0) - 8);
  v2 = *(v24 + 64);
  __chkstk_darwin();
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005DC58(&unk_1005952B0, &unk_1004AF1B0);
  v5 = *v0;
  v6 = static _DictionaryStorage.copy(original:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v23 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    *(v7 + 16) = *(v5 + 16);
    v12 = 1 << *(v5 + 32);
    v13 = *(v5 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v11 << 6);
        v21 = *(*(v5 + 48) + v20);
        v22 = *(v24 + 72) * v20;
        sub_100027648(*(v5 + 56) + v22, v4, type metadata accessor for NANAttribute);
        *(*(v7 + 48) + v20) = v21;
        result = sub_10003DFE0(v4, *(v7 + 56) + v22, type metadata accessor for NANAttribute);
      }

      while (v15);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v23;
        goto LABEL_18;
      }

      v19 = *(v9 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

void *sub_10046C1A4()
{
  v1 = v0;
  sub_10005DC58(&qword_100595318, &qword_1004AF220);
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + v14) = v19)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(v2 + 48) + 8 * v14;
      v18 = *v17;
      LOWORD(v17) = *(v17 + 4);
      v19 = *(*(v2 + 56) + v14);
      v20 = *(v4 + 48) + 8 * v14;
      *v20 = v18;
      *(v20 + 4) = v17;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

void *sub_10046C304()
{
  v1 = v0;
  v31 = *(type metadata accessor for NANPeer(0) - 8);
  v2 = *(v31 + 64);
  __chkstk_darwin();
  v30 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005DC58(&qword_100596300, &unk_1004B0780);
  v4 = *v0;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    v29 = v1;
    result = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v8 + 8 * v9)
    {
      result = memmove(result, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v32 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = *(v4 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v10 << 6);
        v21 = 6 * v20;
        v22 = *(v4 + 48) + 6 * v20;
        v23 = *(v22 + 4);
        v24 = v30;
        v25 = *(v31 + 72) * v20;
        v26 = *v22;
        sub_100027648(*(v4 + 56) + v25, v30, type metadata accessor for NANPeer);
        v27 = v32;
        v28 = *(v32 + 48) + v21;
        *v28 = v26;
        *(v28 + 4) = v23;
        result = sub_10003DFE0(v24, *(v27 + 56) + v25, type metadata accessor for NANPeer);
      }

      while (v15);
    }

    v18 = v10;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v10 >= v16)
      {

        v1 = v29;
        v6 = v32;
        goto LABEL_18;
      }

      v19 = *(v8 + 8 * v10);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

void *sub_10046C560()
{
  v1 = v0;
  v35 = *(type metadata accessor for NANPeer.Service.AuthenticationStatus(0) - 8);
  v2 = *(v35 + 64);
  __chkstk_darwin();
  v34 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005DC58(&qword_100596310, &unk_1004B07C0);
  v4 = *v0;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    v32 = v1;
    result = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v8 + 8 * v9)
    {
      result = memmove(result, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v36 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = *(v4 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    v33 = v4;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v10 << 6);
        v21 = 7 * v20;
        v22 = *(v4 + 56);
        v23 = *(v4 + 48) + 7 * v20;
        v24 = *(v23 + 4);
        v25 = *(v23 + 6);
        v26 = v34;
        v27 = *(v35 + 72) * v20;
        v28 = *v23;
        sub_100027648(v22 + v27, v34, type metadata accessor for NANPeer.Service.AuthenticationStatus);
        v29 = v36;
        v30 = *(v36 + 48) + v21;
        *v30 = v28;
        *(v30 + 4) = v24;
        *(v30 + 6) = v25;
        v4 = v33;
        result = sub_10003DFE0(v26, *(v29 + 56) + v27, type metadata accessor for NANPeer.Service.AuthenticationStatus);
      }

      while (v15);
    }

    v18 = v10;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v10 >= v16)
      {

        v1 = v32;
        v6 = v36;
        goto LABEL_18;
      }

      v19 = *(v8 + 8 * v10);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

void *sub_10046C7CC()
{
  v1 = v0;
  sub_10005DC58(&unk_10059B110, &qword_100480EA0);
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
        v18 = 6 * v17;
        v19 = *(v2 + 48) + 6 * v17;
        v20 = *(v19 + 4);
        v17 *= 16;
        v21 = (*(v2 + 56) + v17);
        v23 = *v21;
        v22 = v21[1];
        v24 = *(v4 + 48) + v18;
        *v24 = *v19;
        *(v24 + 4) = v20;
        v25 = (*(v4 + 56) + v17);
        *v25 = v23;
        v25[1] = v22;
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

void *sub_10046C94C()
{
  v1 = v0;
  sub_10005DC58(&qword_100596340, &qword_1004B0820);
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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

void *sub_10046CAA8()
{
  v1 = v0;
  v30 = type metadata accessor for UUID();
  v32 = *(v30 - 8);
  v2 = *(v32 + 64);
  __chkstk_darwin();
  v29 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005DC58(&qword_100596320, &unk_1004B4D60);
  v4 = *v0;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    v26 = v1;
    result = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v8 + 8 * v9)
    {
      result = memmove(result, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v31 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v27 = v32 + 32;
    v28 = v32 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v33 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v32;
        v21 = *(v32 + 72) * v19;
        v22 = v29;
        v23 = v30;
        (*(v32 + 16))(v29, *(v4 + 48) + v21, v30);
        v19 *= 40;
        sub_10002B154(*(v4 + 56) + v19, v34);
        v24 = v31;
        (*(v20 + 32))(*(v31 + 48) + v21, v22, v23);
        result = sub_100029954(v34, *(v24 + 56) + v19);
        v14 = v33;
      }

      while (v33);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v26;
        v6 = v31;
        goto LABEL_18;
      }

      v18 = *(v8 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v33 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

void *sub_10046CD30()
{
  v1 = v0;
  v34 = *(sub_10005DC58(&qword_100597400, &unk_1004B4D20) - 8);
  v2 = *(v34 + 64);
  __chkstk_darwin();
  v33 = &v31 - v3;
  sub_10005DC58(&qword_100596308, &unk_1004B0790);
  v4 = *v0;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    v32 = v1;
    result = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v8 + 8 * v9)
    {
      result = memmove(result, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v35 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    v14 = *(v4 + 64);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v15 = v13 & v14;
    v16 = (v12 + 63) >> 6;
    if ((v13 & v14) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v36 = (v15 - 1) & v15;
LABEL_14:
        v20 = v17 | (v10 << 6);
        v21 = 6 * v20;
        v22 = *(v4 + 56);
        v23 = *(v4 + 48) + 6 * v20;
        v24 = *(v23 + 4);
        v25 = v33;
        v26 = *(v34 + 72) * v20;
        v27 = v4;
        v28 = *v23;
        sub_100012400(v22 + v26, v33, &qword_100597400, &unk_1004B4D20);
        v29 = v35;
        v30 = *(v35 + 48) + v21;
        *v30 = v28;
        v4 = v27;
        *(v30 + 4) = v24;
        result = sub_10001CEA8(v25, *(v29 + 56) + v26, &qword_100597400, &unk_1004B4D20);
        v15 = v36;
      }

      while (v36);
    }

    v18 = v10;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v10 >= v16)
      {

        v1 = v32;
        v6 = v35;
        goto LABEL_18;
      }

      v19 = *(v8 + 8 * v10);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v36 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

void *sub_10046CFA0()
{
  v1 = v0;
  sub_10005DC58(&unk_10059B220, &unk_1004B4DF0);
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
        v20 = *v18;
        v19 = v18[1];
        LOBYTE(v18) = *(*(v2 + 56) + v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + v17) = v18;
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

char *sub_10046D130()
{
  v1 = v0;
  v37 = *(type metadata accessor for ListenInBoundConnection(0) - 8);
  v2 = *(v37 + 64);
  __chkstk_darwin();
  v36 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for UUID();
  v38 = *(v35 - 8);
  v4 = *(v38 + 64);
  __chkstk_darwin();
  v34 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005DC58(&qword_1005963A8, &qword_1004B08E8);
  v6 = *v0;
  v7 = static _DictionaryStorage.copy(original:)();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 64);
    v10 = (v6 + 64);
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v6 + 64;
    if (v8 != v6 || result >= &v10[8 * v11])
    {
      result = memmove(result, v10, 8 * v11);
    }

    v12 = 0;
    v13 = *(v6 + 16);
    v39 = v8;
    *(v8 + 16) = v13;
    v14 = 1 << *(v6 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v6 + 64);
    v17 = (v14 + 63) >> 6;
    v32 = v38 + 32;
    v33 = v38 + 16;
    v18 = v34;
    if (v16)
    {
      do
      {
        v19 = __clz(__rbit64(v16));
        v40 = (v16 - 1) & v16;
LABEL_14:
        v22 = v19 | (v12 << 6);
        v23 = v38;
        v24 = *(v38 + 72) * v22;
        v25 = v35;
        (*(v38 + 16))(v18, *(v6 + 48) + v24, v35);
        v26 = v36;
        v27 = *(v37 + 72) * v22;
        sub_100027648(*(v6 + 56) + v27, v36, type metadata accessor for ListenInBoundConnection);
        v28 = v39;
        (*(v23 + 32))(*(v39 + 48) + v24, v18, v25);
        result = sub_10003DFE0(v26, *(v28 + 56) + v27, type metadata accessor for ListenInBoundConnection);
        v16 = v40;
      }

      while (v40);
    }

    v20 = v12;
    v8 = v39;
    while (1)
    {
      v12 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v1 = v30;
        goto LABEL_18;
      }

      v21 = *(v31 + 8 * v12);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v40 = (v21 - 1) & v21;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

void *sub_10046D470(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_10005DC58(a1, a2);
  v4 = *v2;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v4 + 64);
    for (i = (v11 + 63) >> 6; v13; *(*(v6 + 56) + v16) = v19)
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v16 = v15 | (v10 << 6);
LABEL_17:
      v19 = *(*(v4 + 56) + v16);
      *(*(v6 + 48) + v16) = *(*(v4 + 48) + v16);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= i)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v13 = (v18 - 1) & v18;
        v16 = __clz(__rbit64(v18)) | (v10 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

char *sub_10046D5AC()
{
  v1 = v0;
  v37 = *(type metadata accessor for ConnectedSession(0) - 8);
  v2 = *(v37 + 64);
  __chkstk_darwin();
  v36 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for UUID();
  v38 = *(v35 - 8);
  v4 = *(v38 + 64);
  __chkstk_darwin();
  v34 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005DC58(&unk_10059B210, &unk_1004B4DE0);
  v6 = *v0;
  v7 = static _DictionaryStorage.copy(original:)();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 64);
    v10 = (v6 + 64);
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v6 + 64;
    if (v8 != v6 || result >= &v10[8 * v11])
    {
      result = memmove(result, v10, 8 * v11);
    }

    v12 = 0;
    v13 = *(v6 + 16);
    v39 = v8;
    *(v8 + 16) = v13;
    v14 = 1 << *(v6 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v6 + 64);
    v17 = (v14 + 63) >> 6;
    v32 = v38 + 32;
    v33 = v38 + 16;
    v18 = v34;
    if (v16)
    {
      do
      {
        v19 = __clz(__rbit64(v16));
        v40 = (v16 - 1) & v16;
LABEL_14:
        v22 = v19 | (v12 << 6);
        v23 = v38;
        v24 = *(v38 + 72) * v22;
        v25 = v35;
        (*(v38 + 16))(v18, *(v6 + 48) + v24, v35);
        v26 = v36;
        v27 = *(v37 + 72) * v22;
        sub_100027648(*(v6 + 56) + v27, v36, type metadata accessor for ConnectedSession);
        v28 = v39;
        (*(v23 + 32))(*(v39 + 48) + v24, v18, v25);
        result = sub_10003DFE0(v26, *(v28 + 56) + v27, type metadata accessor for ConnectedSession);
        v16 = v40;
      }

      while (v40);
    }

    v20 = v12;
    v8 = v39;
    while (1)
    {
      v12 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v1 = v30;
        goto LABEL_18;
      }

      v21 = *(v31 + 8 * v12);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v40 = (v21 - 1) & v21;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

void *sub_10046D900(uint64_t *a1, uint64_t *a2)
{
  v5 = v2;
  v36 = type metadata accessor for UUID();
  v38 = *(v36 - 8);
  v6 = *(v38 + 64);
  __chkstk_darwin();
  v35 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005DC58(a1, a2);
  v8 = *v2;
  v9 = static _DictionaryStorage.copy(original:)();
  v10 = v9;
  if (*(v8 + 16))
  {
    result = (v9 + 64);
    v12 = ((1 << *(v10 + 32)) + 63) >> 6;
    v31 = v5;
    v32 = (v8 + 64);
    if (v10 != v8 || result >= v8 + 64 + 8 * v12)
    {
      result = memmove(result, v32, 8 * v12);
    }

    v14 = 0;
    v15 = *(v8 + 16);
    v37 = v10;
    *(v10 + 16) = v15;
    v16 = 1 << *(v8 + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & *(v8 + 64);
    v19 = (v16 + 63) >> 6;
    v33 = v38 + 32;
    v34 = v38 + 16;
    if (v18)
    {
      do
      {
        v20 = __clz(__rbit64(v18));
        v39 = (v18 - 1) & v18;
LABEL_17:
        v23 = v20 | (v14 << 6);
        v24 = v38;
        v25 = *(v38 + 72) * v23;
        v27 = v35;
        v26 = v36;
        (*(v38 + 16))(v35, *(v8 + 48) + v25, v36);
        v28 = *(*(v8 + 56) + 8 * v23);
        v29 = v37;
        (*(v24 + 32))(*(v37 + 48) + v25, v27, v26);
        *(*(v29 + 56) + 8 * v23) = v28;

        v18 = v39;
      }

      while (v39);
    }

    v21 = v14;
    while (1)
    {
      v14 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v14 >= v19)
      {

        v5 = v31;
        v10 = v37;
        goto LABEL_21;
      }

      v22 = *(v32 + v14);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v39 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v5 = v10;
  }

  return result;
}

void *sub_10046DB78()
{
  v1 = v0;
  v24 = *(type metadata accessor for BrowseEndpoints(0) - 8);
  v2 = *(v24 + 64);
  __chkstk_darwin();
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005DC58(qword_1005953C8, &qword_1004B4E10);
  v5 = *v0;
  v6 = static _DictionaryStorage.copy(original:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v23 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    *(v7 + 16) = *(v5 + 16);
    v12 = 1 << *(v5 + 32);
    v13 = *(v5 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v11 << 6);
        v21 = *(*(v5 + 48) + 8 * v20);
        v22 = *(v24 + 72) * v20;
        sub_100027648(*(v5 + 56) + v22, v4, type metadata accessor for BrowseEndpoints);
        *(*(v7 + 48) + 8 * v20) = v21;
        result = sub_10003DFE0(v4, *(v7 + 56) + v22, type metadata accessor for BrowseEndpoints);
      }

      while (v15);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v23;
        goto LABEL_18;
      }

      v19 = *(v9 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

char *sub_10046DDAC()
{
  v1 = v0;
  v37 = *(type metadata accessor for ConnectedEndpoints(0) - 8);
  v2 = *(v37 + 64);
  __chkstk_darwin();
  v36 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for UUID();
  v38 = *(v35 - 8);
  v4 = *(v38 + 64);
  __chkstk_darwin();
  v34 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005DC58(&qword_100596398, &qword_1004B08D8);
  v6 = *v0;
  v7 = static _DictionaryStorage.copy(original:)();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 64);
    v10 = (v6 + 64);
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v6 + 64;
    if (v8 != v6 || result >= &v10[8 * v11])
    {
      result = memmove(result, v10, 8 * v11);
    }

    v12 = 0;
    v13 = *(v6 + 16);
    v39 = v8;
    *(v8 + 16) = v13;
    v14 = 1 << *(v6 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v6 + 64);
    v17 = (v14 + 63) >> 6;
    v32 = v38 + 32;
    v33 = v38 + 16;
    v18 = v34;
    if (v16)
    {
      do
      {
        v19 = __clz(__rbit64(v16));
        v40 = (v16 - 1) & v16;
LABEL_14:
        v22 = v19 | (v12 << 6);
        v23 = v38;
        v24 = *(v38 + 72) * v22;
        v25 = v35;
        (*(v38 + 16))(v18, *(v6 + 48) + v24, v35);
        v26 = v36;
        v27 = *(v37 + 72) * v22;
        sub_100027648(*(v6 + 56) + v27, v36, type metadata accessor for ConnectedEndpoints);
        v28 = v39;
        (*(v23 + 32))(*(v39 + 48) + v24, v18, v25);
        result = sub_10003DFE0(v26, *(v28 + 56) + v27, type metadata accessor for ConnectedEndpoints);
        v16 = v40;
      }

      while (v40);
    }

    v20 = v12;
    v8 = v39;
    while (1)
    {
      v12 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v1 = v30;
        goto LABEL_18;
      }

      v21 = *(v31 + 8 * v12);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v40 = (v21 - 1) & v21;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

id sub_10046E0EC()
{
  v1 = v0;
  sub_10005DC58(&unk_10059B200, &unk_1004B0880);
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
        result = v18;
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

void *sub_10046E270(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_10005DC58(a1, a2);
  v4 = *v2;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 56) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = *(*(v4 + 48) + 8 * v19);
        *(*(v6 + 56) + 8 * v19) = v20;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

char *sub_10046E3BC()
{
  v1 = v0;
  v34 = type metadata accessor for UUID();
  v36 = *(v34 - 8);
  v2 = *(v36 + 64);
  __chkstk_darwin();
  v33 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005DC58(&unk_10059B1D0, &unk_1004B0870);
  v4 = *v0;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v29 = v1;
    v30 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v35 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v31 = v36 + 32;
    v32 = v36 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v37 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v36;
        v21 = *(v36 + 72) * v19;
        v23 = v33;
        v22 = v34;
        (*(v36 + 16))(v33, *(v4 + 48) + v21, v34);
        v24 = *(*(v4 + 56) + 8 * v19);
        v25 = v4;
        v26 = v35;
        (*(v20 + 32))(*(v35 + 48) + v21, v23, v22);
        v27 = *(v26 + 56);
        v4 = v25;
        *(v27 + 8 * v19) = v24;

        v14 = v37;
      }

      while (v37);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v29;
        v6 = v35;
        goto LABEL_18;
      }

      v18 = *(v30 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v37 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

void *sub_10046E63C()
{
  v1 = v0;
  sub_10005DC58(&unk_1005974F0, &qword_1004B0838);
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
        v18 = *(v2 + 48) + 24 * v17;
        v20 = *v18;
        v19 = *(v18 + 8);
        v21 = *(v18 + 16);
        LOBYTE(v18) = *(v18 + 17);
        v22 = *(*(v2 + 56) + 8 * v17);
        v23 = *(v4 + 48) + 24 * v17;
        *v23 = v20;
        *(v23 + 8) = v19;
        *(v23 + 16) = v21;
        *(v23 + 17) = v18;
        *(*(v4 + 56) + 8 * v17) = v22;
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

uint64_t sub_10046E7B8(uint64_t a1, unint64_t a2, int a3)
{
  v4 = v3;
  v8 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v3;
  if ((result & 1) == 0)
  {
    result = sub_10046B248();
    *v4 = v10;
  }

  if ((a2 & 0x8000000000000000) != 0 || 1 << *(v10 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(v10 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(v10 + 36) == a3)
  {
    v11 = *(v10 + 56);
    v12 = (*(v10 + 48) + 6 * a2);
    v13 = *(v12 + 1);
    v14 = *v12;
    v15 = type metadata accessor for AWDLPeer(0);
    sub_10003DFE0(v11 + *(*(v15 - 8) + 72) * a2, a1, type metadata accessor for AWDLPeer);
    sub_10004B80C(a2, v10, type metadata accessor for AWDLPeer);
    *v4 = v10;
    return v14 | (v13 << 16);
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_10046E8E4(uint64_t a1, unint64_t a2, int a3)
{
  v4 = v3;
  v8 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v3;
  if ((result & 1) == 0)
  {
    result = sub_10046BD28();
    *v4 = v10;
  }

  if ((a2 & 0x8000000000000000) != 0 || 1 << *(v10 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(v10 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(v10 + 36) == a3)
  {
    v11 = *(v10 + 56);
    v12 = *(*(v10 + 48) + a2);
    v13 = type metadata accessor for NANPeer.Service(0);
    sub_10003DFE0(v11 + *(*(v13 - 8) + 72) * a2, a1, type metadata accessor for NANPeer.Service);
    sub_1004688EC(a2, v10);
    *v4 = v10;
    return v12;
  }

LABEL_10:
  __break(1u);
  return result;
}

unint64_t sub_10046E9E8(uint64_t a1, uint64_t a2, unint64_t a3, int a4)
{
  v5 = v4;
  v10 = *v4;
  result = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v4;
  if ((result & 1) == 0)
  {
    result = sub_10046C560();
    *v5 = v12;
  }

  if ((a3 & 0x8000000000000000) != 0 || 1 << *(v12 + 32) <= a3)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(v12 + 8 * (a3 >> 6) + 64) >> a3) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(v12 + 36) == a4)
  {
    v13 = *(v12 + 56);
    v14 = *(v12 + 48) - a3 + 8 * a3;
    v15 = *(v14 + 4);
    v16 = *(v14 + 6);
    *a1 = *v14;
    *(a1 + 4) = v15;
    *(a1 + 6) = v16;
    v17 = type metadata accessor for NANPeer.Service.AuthenticationStatus(0);
    sub_10003DFE0(v13 + *(*(v17 - 8) + 72) * a3, a2, type metadata accessor for NANPeer.Service.AuthenticationStatus);
    result = sub_100468CA4(a3, v12, type metadata accessor for NANPeer.Service.AuthenticationStatus);
    *v5 = v12;
    return result;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_10046EB1C(uint64_t a1, unint64_t a2, int a3)
{
  v4 = v3;
  v8 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v3;
  if ((result & 1) == 0)
  {
    result = sub_10046DB78();
    *v4 = v10;
  }

  if ((a2 & 0x8000000000000000) != 0 || 1 << *(v10 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(v10 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(v10 + 36) == a3)
  {
    v11 = *(v10 + 56);
    v12 = *(*(v10 + 48) + 8 * a2);
    v13 = type metadata accessor for BrowseEndpoints(0);
    sub_10003DFE0(v11 + *(*(v13 - 8) + 72) * a2, a1, type metadata accessor for BrowseEndpoints);
    sub_100469BC8(a2, v10);
    *v4 = v10;
    return v12;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_10046EC5C(unint64_t a1)
{
  if (a1 >> 62)
  {
    _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

uint64_t sub_10046ECC0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = *(*v2 + 40);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(*a2 + 1);
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  Data.hash(into:)();
  if (*(a2 + 32) >> 60 == 15)
  {
    Hasher._combine(_:)(0);
    if (*(a2 + 48))
    {
LABEL_3:
      v10 = *(a2 + 40);
      Hasher._combine(_:)(1u);
      String.hash(into:)();
      goto LABEL_6;
    }
  }

  else
  {
    v11 = *(a2 + 24);
    Hasher._combine(_:)(1u);
    Data.hash(into:)();
    if (*(a2 + 48))
    {
      goto LABEL_3;
    }
  }

  Hasher._combine(_:)(0);
LABEL_6:
  v12 = Hasher._finalize()();
  v13 = -1 << *(v6 + 32);
  v14 = v12 & ~v13;
  if ((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    while (1)
    {
      v16 = *(v6 + 48) + 56 * v14;
      v17 = *(v16 + 48);
      v18 = *(v16 + 32);
      v19 = *v16;
      v33[1] = *(v16 + 16);
      v33[2] = v18;
      v33[0] = v19;
      v34 = v17;
      sub_100300208(v33, v32);
      v20 = static NANDatapath.SecurityConfiguration.__derived_struct_equals(_:_:)(v33, a2);
      sub_1004768A4(v33);
      if (v20)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
      if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    sub_1004768A4(a2);
    v25 = *(v6 + 48) + 56 * v14;
    v26 = *(v25 + 8);
    v27 = *(v25 + 16);
    v28 = *(v25 + 24);
    v29 = *(v25 + 48);
    *a1 = *v25;
    *(a1 + 8) = v26;
    *(a1 + 16) = v27;
    *(a1 + 24) = v28;
    v30 = *(v25 + 32);
    *(a1 + 32) = v30;
    *(a1 + 48) = v29;
    sub_10000AB0C(v26, v27);
    sub_10005D67C(v28, v30);

    return 0;
  }

  else
  {
LABEL_10:
    v21 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v31 = *v3;
    sub_100300208(a2, v32);
    sub_10047193C(a2, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v31;
    v23 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v23;
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 48) = *(a2 + 48);
    return 1;
  }
}

uint64_t sub_10046EF10(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin();
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_10004C988(&unk_10058BB00, &type metadata accessor for UUID);
  v36 = a2;
  v13 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_10004C988(&qword_100597540, &type metadata accessor for UUID);
      v23 = dispatch thunk of static Equatable.== infix(_:_:)();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_100471B78(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_10046F1F0(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v9 = Hasher._finalize()();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_100471E1C(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_10046F340(_BYTE *a1, Swift::Int a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a2 + 1);
  v7 = Hasher._finalize()();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (*(*(v5 + 48) + v9) != a2)
    {
      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    v11 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v2;
    sub_100471F9C(a2, v9, isUniquelyReferenced_nonNull_native);
    *v2 = v14;
    result = 1;
  }

  *a1 = a2;
  return result;
}

int8x8_t sub_10046F438(uint64_t a1, unint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  Hasher.init(_seed:)();
  NANClusterChangeEvent.hash(into:)(&v19, a2 & 0xFFFFFFFFFFFFLL);
  v7 = Hasher._finalize()();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (!static NANClusterChangeEvent.__derived_struct_equals(_:_:)(*(*(v5 + 48) + 6 * v9) | (*(*(v5 + 48) + 6 * v9 + 2) << 16), a2 & 0xFFFFFFFFFFFFLL))
    {
      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    v16 = *(v5 + 48) + 6 * v9;
    LOBYTE(a2) = *v16;
    v11.i32[0] = *(v16 + 1);
    v15 = vmovl_u8(v11).u64[0];
    LOBYTE(v5) = *(v16 + 5);
  }

  else
  {
LABEL_5:
    v12 = vdupq_n_s64(a2);
    v18 = vmovn_s32(vuzp1q_s32(vshlq_u64(v12, xmmword_1004817A0), vshlq_u64(v12, xmmword_100481790)));
    v5 = a2 >> 40;
    v13 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v2;
    sub_1004720E8(a2 & 0xFFFFFFFFFFFFLL, v9, isUniquelyReferenced_nonNull_native);
    v15 = v18;
    *v2 = v19;
  }

  *a1 = a2;
  result = vuzp1_s8(v15, v15);
  *(a1 + 1) = result.i32[0];
  *(a1 + 5) = v5;
  return result;
}

uint64_t sub_10046F5A4(_BYTE *a1, unint64_t a2)
{
  v3 = a2;
  v28 = a2 >> 8;
  v5 = a2 >> 16;
  v6 = a2 >> 24;
  v7 = HIDWORD(a2);
  v8 = HIWORD(a2);
  v9 = *v2;
  v10 = *(*v2 + 40);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v3);
  NANClusterChangeEvent.hash(into:)(&v29, (BYTE5(v3) << 32) & 0xFFFF00FF00000000 | (v8 << 40) | (v7 << 24) | (v6 << 16) | (v5 << 8) | BYTE1(v3));
  v11 = Hasher._finalize()();
  v12 = -1 << *(v9 + 32);
  v13 = v11 & ~v12;
  v27 = v8;
  v14 = (BYTE5(v3) << 40) & 0xFF00FF0000000000 | (v8 << 48) | (v7 << 32) | (v6 << 24) | (v5 << 16) | (v28 << 8) | v3;
  if ((*(v9 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v15 = ~v12;
    while (1)
    {
      v16 = (*(v9 + 48) - v13 + 8 * v13);
      if (static NANPeerServiceIdentifier.__derived_struct_equals(_:_:)(*v16 | (*(v16 + 2) << 16) | (*(v16 + 3) << 24), v14))
      {
        break;
      }

      v13 = (v13 + 1) & v15;
      if (((*(v9 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
    v25 = (*(v9 + 48) - v13 + 8 * v13);
    LOBYTE(v3) = *v25;
    v19 = v25[1];
    v21 = v25[2];
    v22 = v25[3];
    v24 = v25[4];
    LOBYTE(v9) = v25[5];
    v23 = v25[6];
  }

  else
  {
LABEL_5:
    v9 = v3 >> 40;
    v17 = *v26;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v29 = *v26;
    sub_100472284(v14, v13, isUniquelyReferenced_nonNull_native);
    v19 = v28;
    *v26 = v29;
    result = 1;
    v22 = v6;
    v21 = v5;
    v23 = v27;
    v24 = v7;
  }

  *a1 = v3;
  a1[1] = v19;
  a1[2] = v21;
  a1[3] = v22;
  a1[4] = v24;
  a1[5] = v9;
  a1[6] = v23;
  return result;
}

uint64_t sub_10046F77C(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4)
{
  v8 = HIBYTE(a4);
  v9 = *v4;
  v10 = *(*v4 + 40);
  Hasher.init(_seed:)();
  v28 = a2;
  String.lowercased()();
  String.hash(into:)();

  String.hash(into:)();

  Hasher._combine(_:)(v8);
  v11 = Hasher._finalize()();
  v12 = -1 << *(v9 + 32);
  v13 = v11 & ~v12;
  if ((*(v9 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v12;
    while (1)
    {
      v15 = *(v9 + 48) + 24 * v13;
      v16 = *v15;
      v17 = *(v15 + 8);
      v18 = *(v15 + 16) | (*(v15 + 17) << 8);

      LOBYTE(v16) = static DNSRecords.Identifier.== infix(_:_:)(v16, v17, v18, v28, a3, a4 & 0xFF01);

      if (v16)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v9 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    v22 = *(v9 + 48) + 24 * v13;
    v24 = *v22;
    v23 = *(v22 + 8);
    v25 = *(v22 + 16);
    LOBYTE(v22) = *(v22 + 17);
    *a1 = v24;
    *(a1 + 8) = v23;
    *(a1 + 16) = v25;
    *(a1 + 17) = v22;

    return 0;
  }

  else
  {
LABEL_5:
    v19 = *v26;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v29 = *v26;

    sub_1004724C8(v28, a3, a4 & 0xFF01, v13, isUniquelyReferenced_nonNull_native);
    *v26 = v29;
    *a1 = v28;
    *(a1 + 8) = a3;
    *(a1 + 16) = a4 & 1;
    *(a1 + 17) = HIBYTE(a4);
    return 1;
  }
}

uint64_t sub_10046F988(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = __CocoaSet.member(for:)();

    if (v9)
    {

      sub_100018AB4(0, &qword_1005974C0, NSNumber_ptr);
      swift_dynamicCast();
      result = 0;
      *a1 = v24;
      return result;
    }

    result = __CocoaSet.count.getter();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v20 = sub_10046FBC0(v7, result + 1);
    v21 = *(v20 + 16);
    if (*(v20 + 24) <= v21)
    {
      sub_100471394(v21 + 1);
    }

    v19 = v8;
    sub_1004718B8(v19, v20);

    *v3 = v20;
    goto LABEL_16;
  }

  sub_100018AB4(0, &qword_1005974C0, NSNumber_ptr);
  v11 = NSObject._rawHashValue(seed:)(*(v6 + 40));
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = *v3;
    v19 = a2;
    sub_1004726D8(v19, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v25;
LABEL_16:
    *a1 = v19;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = static NSObject.== infix(_:_:)();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v22 = *(*(v6 + 48) + 8 * v13);
  *a1 = v22;
  v23 = v22;
  return 0;
}

Swift::Int sub_10046FBC0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_10005DC58(&unk_10059B260, &unk_1004B4E00);
    v2 = static _SetStorage.convert(_:capacity:)();
    v15 = v2;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      sub_100018AB4(0, &qword_1005974C0, NSNumber_ptr);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_100471394(v9 + 1);
        }

        v2 = v15;
        result = NSObject._rawHashValue(seed:)(*(v15 + 40));
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (__CocoaSet.Iterator.next()());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

uint64_t sub_10046FDB0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_10005DC58(&unk_100597D10, &unk_1004B4D30);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v37 = v1;
    v38 = v3;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    v39 = result;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v40 = (v11 - 1) & v11;
LABEL_17:
      v19 = *(v3 + 48) + 56 * (v16 | (v7 << 6));
      v20 = *v19;
      v22 = *(v19 + 8);
      v21 = *(v19 + 16);
      v23 = *(v19 + 24);
      v24 = *(v19 + 32);
      v25 = *(v19 + 48);
      v41 = *(v19 + 40);
      v26 = *(v6 + 40);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v20 + 1);
      Data.hash(into:)();
      if (v24 >> 60 == 15)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        Hasher._combine(_:)(1u);
        Data.hash(into:)();
      }

      if (v25)
      {
        Hasher._combine(_:)(1u);
        String.hash(into:)();
      }

      else
      {
        Hasher._combine(_:)(0);
      }

      result = Hasher._finalize()();
      v6 = v39;
      v27 = -1 << *(v39 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v13 + 8 * (v28 >> 6))) == 0)
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
          v33 = *(v13 + 8 * v29);
          if (v33 != -1)
          {
            v14 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v28) & ~*(v13 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = *(v39 + 48) + 56 * v14;
      *v15 = v20;
      v11 = v40;
      *(v15 + 8) = v22;
      *(v15 + 16) = v21;
      *(v15 + 24) = v23;
      *(v15 + 32) = v24;
      *(v15 + 40) = v41;
      *(v15 + 48) = v25;
      ++*(v39 + 16);
      v3 = v38;
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v40 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v34 = 1 << *(v3 + 32);
    if (v34 >= 64)
    {
      v35 = v6;
      bzero(v8, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      v6 = v35;
    }

    else
    {
      *v8 = -1 << v34;
    }

    v2 = v37;
    *(v3 + 16) = 0;
  }

  v36 = v6;

  *v2 = v36;
  return result;
}

uint64_t sub_1004700D4(uint64_t a1)
{
  v2 = v1;
  v41 = type metadata accessor for UUID();
  v4 = *(v41 - 8);
  v5 = v4[8];
  __chkstk_darwin();
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  sub_10005DC58(&unk_10059B0F0, &qword_1004B1EC0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v10 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v36 = v7;
    v11 = 0;
    v12 = (v7 + 56);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 56);
    v16 = (v13 + 63) >> 6;
    v39 = v4 + 4;
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v7 + 48) + v4[9] * (v19 | (v11 << 6));
      v23 = v4[4];
      v37 = v4[9];
      v38 = v23;
      v23(v40, v22, v41);
      v24 = v10;
      v25 = *(v10 + 40);
      sub_10004C988(&unk_10058BB00, &type metadata accessor for UUID);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v10 = v24;
      v26 = -1 << *(v24 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = v38(*(v24 + 48) + v18 * v37, v40, v41);
      ++*(v24 + 16);
      v7 = v36;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      bzero(v12, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
  }

  *v2 = v10;
  return result;
}

uint64_t sub_100470430(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_10005DC58(&qword_10058B378, &unk_1004B4DA0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_100470690(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_10005DC58(&unk_100597D00, &qword_1004B1EB8);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v28 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v18);
      result = Hasher._finalize()();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_1004708E0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_10005DC58(&qword_100597D30, &unk_1004B1EE0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v28 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v18 + 1);
      result = Hasher._finalize()();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

Swift::Int sub_100470B30(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_10005DC58(&unk_100597D20, &unk_1004B1ED0);
  v5 = static _SetStorage.resize(original:capacity:move:)();
  v6 = v5;
  if (*(v3 + 16))
  {
    v7 = 0;
    v35 = v2;
    v36 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v5 + 56;
    v37 = v3;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v38 = (v10 - 1) & v10;
LABEL_17:
      v19 = (*(v3 + 48) + 6 * (v15 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = v19[2];
      v23 = v19[3];
      v24 = v19[4];
      v25 = v19[5];
      v26 = *(v6 + 40);
      Hasher.init(_seed:)();
      NANClusterChangeEvent.hash(into:)(&v39, v20 | (v21 << 8) | (v22 << 16) | (v23 << 24) | (v24 << 32) | (v25 << 40));
      result = Hasher._finalize()();
      v27 = -1 << *(v6 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v12 + 8 * (v28 >> 6))) == 0)
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
          v33 = *(v12 + 8 * v29);
          if (v33 != -1)
          {
            v13 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v28) & ~*(v12 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 6 * v13);
      *v14 = v20;
      v14[1] = v21;
      v14[2] = v22;
      v14[3] = v23;
      v14[4] = v24;
      v14[5] = v25;
      ++*(v6 + 16);
      v3 = v37;
      v10 = v38;
    }

    v16 = v7;
    result = v36;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v11)
      {
        break;
      }

      v18 = v36[v7];
      ++v16;
      if (v18)
      {
        v15 = __clz(__rbit64(v18));
        v38 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v34 = 1 << *(v3 + 32);
    if (v34 >= 64)
    {
      bzero(v36, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v36 = -1 << v34;
    }

    v2 = v35;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

Swift::Int sub_100470DE4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_10005DC58(&unk_10059B140, &qword_1004B1EC8);
  v5 = static _SetStorage.resize(original:capacity:move:)();
  v6 = v5;
  if (*(v3 + 16))
  {
    v7 = 0;
    v35 = (v3 + 56);
    v36 = v3;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v34 = (v8 + 63) >> 6;
    v11 = v5 + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v37 = (v10 - 1) & v10;
LABEL_17:
      v18 = (*(v3 + 48) - (v14 | (v7 << 6)) + 8 * (v14 | (v7 << 6)));
      v19 = *v18;
      v38 = v18[1];
      v20 = v18[2];
      v21 = v18[3];
      v22 = v18[4];
      v23 = v18[5];
      v24 = v18[6];
      v25 = *(v6 + 40);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v19);
      NANClusterChangeEvent.hash(into:)(&v39, v38 | (v20 << 8) | (v21 << 16) | (v22 << 24) | (v23 << 32) | (v24 << 40));
      result = Hasher._finalize()();
      v26 = -1 << *(v6 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v11 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v11 + 8 * v28);
          if (v32 != -1)
          {
            v12 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v27) & ~*(v11 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v6 + 48) - v12 + 8 * v12);
      *v13 = v19;
      v13[1] = v38;
      v13[2] = v20;
      v13[3] = v21;
      v13[4] = v22;
      v13[5] = v23;
      v13[6] = v24;
      ++*(v6 + 16);
      v3 = v36;
      v10 = v37;
    }

    v15 = v7;
    result = v35;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v34)
      {
        break;
      }

      v17 = v35[v7];
      ++v15;
      if (v17)
      {
        v14 = __clz(__rbit64(v17));
        v37 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v33 = 1 << *(v3 + 32);
    if (v33 >= 64)
    {
      bzero(v35, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v35 = -1 << v33;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_1004710BC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_10005DC58(&unk_10058B3A0, &qword_10047F4C0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v33 = v2;
    v34 = v3;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = *(v3 + 48) + 24 * (v16 | (v7 << 6));
      v20 = *v19;
      v21 = *(v19 + 8);
      v22 = *(v19 + 16);
      v23 = *(v19 + 17);
      v24 = *(v6 + 40);
      Hasher.init(_seed:)();
      String.lowercased()();
      String.hash(into:)();

      v35 = v22;
      String.hash(into:)();

      Hasher._combine(_:)(v23);
      result = Hasher._finalize()();
      v25 = -1 << *(v6 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v13 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v13 + 8 * v27);
          if (v31 != -1)
          {
            v14 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v26) & ~*(v13 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = *(v6 + 48) + 24 * v14;
      v3 = v34;
      *v15 = v20;
      *(v15 + 8) = v21;
      *(v15 + 16) = v35;
      *(v15 + 17) = v23;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v32 = 1 << *(v3 + 32);
    if (v32 >= 64)
    {
      bzero(v8, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v32;
    }

    v2 = v33;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_100471394(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_10005DC58(&unk_10059B260, &unk_1004B4E00);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      result = NSObject._rawHashValue(seed:)(*(v6 + 40));
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v13 + 8 * v21);
          if (v25 != -1)
          {
            v14 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero((v3 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v26;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_1004715BC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_10005DC58(&qword_100597D38, &unk_1004B4D00);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v28 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v18 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_18:
      v21 = *(*(v3 + 48) + (v18 | (v7 << 6)));
      v22 = *(v6 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();

      result = Hasher._finalize()();
      v14 = -1 << *(v6 + 32);
      v15 = result & ~v14;
      v16 = v15 >> 6;
      if (((-1 << v15) & ~*(v13 + 8 * (v15 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v14) >> 6;
        while (++v16 != v24 || (v23 & 1) == 0)
        {
          v25 = v16 == v24;
          if (v16 == v24)
          {
            v16 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v16);
          if (v26 != -1)
          {
            v17 = __clz(__rbit64(~v26)) + (v16 << 6);
            goto LABEL_10;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v15) & ~*(v13 + 8 * (v15 >> 6)))) | v15 & 0x7FFFFFFFFFFFFFC0;
LABEL_10:
      *(v13 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v6 + 48) + v17) = v21;
      ++*(v6 + 16);
    }

    v19 = v7;
    while (1)
    {
      v7 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v7 >= v12)
      {
        break;
      }

      v20 = v8[v7];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v11 = (v20 - 1) & v20;
        goto LABEL_18;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

unint64_t sub_1004718B8(uint64_t a1, uint64_t a2)
{
  NSObject._rawHashValue(seed:)(*(a2 + 40));
  v4 = -1 << *(a2 + 32);
  result = _HashTable.nextHole(atOrAfter:)();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

Swift::Int sub_10047193C(Swift::Int result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_17;
  }

  if (a3)
  {
    sub_10046FDB0(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      result = sub_10037D514();
      goto LABEL_17;
    }

    sub_100472BCC(v7 + 1);
  }

  v9 = *v3;
  v10 = *(*v3 + 40);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(*v6 + 1);
  v11 = *(v6 + 8);
  v12 = *(v6 + 16);
  Data.hash(into:)();
  if (*(v6 + 32) >> 60 == 15)
  {
    Hasher._combine(_:)(0);
    if (*(v6 + 48))
    {
LABEL_10:
      v13 = *(v6 + 40);
      Hasher._combine(_:)(1u);
      String.hash(into:)();
      goto LABEL_13;
    }
  }

  else
  {
    v14 = *(v6 + 24);
    Hasher._combine(_:)(1u);
    Data.hash(into:)();
    if (*(v6 + 48))
    {
      goto LABEL_10;
    }
  }

  Hasher._combine(_:)(0);
LABEL_13:
  result = Hasher._finalize()();
  v15 = -1 << *(v9 + 32);
  a2 = result & ~v15;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    do
    {
      v17 = *(v9 + 48) + 56 * a2;
      v18 = *(v17 + 48);
      v19 = *(v17 + 32);
      v20 = *v17;
      v29[1] = *(v17 + 16);
      v29[2] = v19;
      v29[0] = v20;
      v30 = v18;
      sub_100300208(v29, v28);
      v21 = static NANDatapath.SecurityConfiguration.__derived_struct_equals(_:_:)(v29, v6);
      result = sub_1004768A4(v29);
      if (v21)
      {
        goto LABEL_20;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_17:
  v22 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v23 = *(v22 + 48) + 56 * a2;
  v24 = *(v6 + 16);
  *v23 = *v6;
  *(v23 + 16) = v24;
  *(v23 + 32) = *(v6 + 32);
  *(v23 + 48) = *(v6 + 48);
  v25 = *(v22 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v22 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_20:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100471B78(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin();
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v30 = v3;
  v31 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1004700D4(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_10037D6C0();
      goto LABEL_12;
    }

    sub_100472EEC(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  sub_10004C988(&unk_10058BB00, &type metadata accessor for UUID);
  v15 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v16 = v13 + 56;
  v32 = v13;
  v17 = -1 << *(v13 + 32);
  a2 = v15 & ~v17;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v21 = *(v7 + 16);
    v20 = v7 + 16;
    v19 = v21;
    v22 = *(v20 + 56);
    do
    {
      v19(v10, *(v32 + 48) + v22 * a2, v6);
      sub_10004C988(&qword_100597540, &type metadata accessor for UUID);
      v23 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v20 - 8))(v10, v6);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = v31;
  v25 = *v30;
  *(v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v24 + 32))(*(v25 + 48) + *(v24 + 72) * a2, v33, v6);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

Swift::Int sub_100471E1C(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_100470430(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_10037D8F8();
      goto LABEL_16;
    }

    sub_100473208(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  result = Hasher._finalize()();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

Swift::Int sub_100471F9C(Swift::Int result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1004708E0(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_10037DB94();
      a2 = v7;
      goto LABEL_12;
    }

    sub_100473660(v5 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v4 + 1);
  result = Hasher._finalize()();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    while (*(*(v8 + 48) + a2) != v4)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + a2) = v4;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

Swift::Int sub_1004720E8(Swift::Int result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100470B30(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_10037DBA8();
      goto LABEL_12;
    }

    sub_100473880(v6 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  Hasher.init(_seed:)();
  NANClusterChangeEvent.hash(into:)(&v17, v5 & 0xFFFFFFFFFFFFLL);
  result = Hasher._finalize()();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    do
    {
      result = static NANClusterChangeEvent.__derived_struct_equals(_:_:)(*(*(v8 + 48) + 6 * a2) | (*(*(v8 + 48) + 6 * a2 + 2) << 16), v5 & 0xFFFFFFFFFFFFLL);
      if (result)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v13 = *(v12 + 48) + 6 * a2;
  *v13 = v5;
  *(v13 + 2) = BYTE2(v5);
  *(v13 + 3) = BYTE3(v5);
  *(v13 + 4) = BYTE4(v5);
  *(v13 + 5) = BYTE5(v5);
  v14 = *(v12 + 16);
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (!v15)
  {
    *(v12 + 16) = v16;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

unint64_t sub_100472284(unint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = HIWORD(result);
  v7 = HIDWORD(result);
  v8 = *(*v3 + 16);
  v9 = *(*v3 + 24);
  v10 = result >> 24;
  v24 = result >> 16;
  if (v9 > v8 && (a3 & 1) != 0)
  {
    v11 = result >> 24;
    v12 = HIDWORD(result);
  }

  else
  {
    if (a3)
    {
      v23 = HIWORD(result);
      sub_100470DE4(v8 + 1);
    }

    else
    {
      if (v9 > v8)
      {
        v11 = result >> 24;
        v12 = HIDWORD(result);
        result = sub_10037DE40();
        goto LABEL_15;
      }

      v23 = HIWORD(result);
      sub_100473B18(v8 + 1);
    }

    v13 = *v3;
    v14 = *(*v3 + 40);
    Hasher.init(_seed:)();
    Hasher._combine(_:)(v5);
    LOBYTE(v12) = v7;
    LOBYTE(v11) = v10;
    NANClusterChangeEvent.hash(into:)(&v25, (BYTE5(v5) << 32) & 0xFFFF00FF00000000 | (v23 << 40) | (v7 << 24) | (v10 << 16) | (v24 << 8) | BYTE1(v5));
    result = Hasher._finalize()();
    v15 = -1 << *(v13 + 32);
    a2 = result & ~v15;
    if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v16 = ~v15;
      LOBYTE(v6) = v23;
      while (1)
      {
        v17 = (*(v13 + 48) - a2 + 8 * a2);
        result = static NANPeerServiceIdentifier.__derived_struct_equals(_:_:)(*v17 | (*(v17 + 2) << 16) | (*(v17 + 3) << 24), (BYTE5(v5) << 40) | (BYTE6(v5) << 48) | (BYTE4(v5) << 32) | (BYTE3(v5) << 24) | (BYTE2(v5) << 16) | (BYTE1(v5) << 8) | v5);
        if (result)
        {
          goto LABEL_18;
        }

        a2 = (a2 + 1) & v16;
        if (((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
        {
          goto LABEL_15;
        }
      }
    }

    LOBYTE(v6) = v23;
  }

LABEL_15:
  v18 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v19 = *(v18 + 48) - a2 + 8 * a2;
  *v19 = v5;
  *(v19 + 2) = v24;
  *(v19 + 3) = v11;
  *(v19 + 4) = v12;
  *(v19 + 5) = BYTE5(v5);
  *(v19 + 6) = v6;
  v20 = *(v18 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (!v21)
  {
    *(v18 + 16) = v22;
    return result;
  }

  __break(1u);
LABEL_18:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

Swift::Int sub_1004724C8(Swift::Int result, uint64_t a2, __int16 a3, unint64_t a4, char a5)
{
  v8 = result;
  v9 = *(*v5 + 16);
  v10 = *(*v5 + 24);
  if (v10 > v9 && (a5 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a5)
  {
    sub_1004710BC(v9 + 1);
  }

  else
  {
    if (v10 > v9)
    {
      result = sub_10037DFA0();
      goto LABEL_12;
    }

    sub_100473DC4(v9 + 1);
  }

  v11 = *v5;
  v12 = *(*v5 + 40);
  Hasher.init(_seed:)();
  String.lowercased()();
  String.hash(into:)();

  String.hash(into:)();

  Hasher._combine(_:)(HIBYTE(a3));
  result = Hasher._finalize()();
  v13 = -1 << *(v11 + 32);
  a4 = result & ~v13;
  if ((*(v11 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4))
  {
    v14 = ~v13;
    do
    {
      v15 = *(v11 + 48) + 24 * a4;
      v16 = *v15;
      v17 = *(v15 + 8);
      v18 = *(v15 + 16) | (*(v15 + 17) << 8);

      LOBYTE(v16) = static DNSRecords.Identifier.== infix(_:_:)(v16, v17, v18, v8, a2, a3 & 0xFF01);

      if (v16)
      {
        goto LABEL_15;
      }

      a4 = (a4 + 1) & v14;
    }

    while (((*(v11 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4) & 1) != 0);
  }

LABEL_12:
  v19 = *v24;
  *(*v24 + 8 * (a4 >> 6) + 56) |= 1 << a4;
  v20 = *(v19 + 48) + 24 * a4;
  *v20 = v8;
  *(v20 + 8) = a2;
  *(v20 + 16) = a3 & 1;
  *(v20 + 17) = HIBYTE(a3);
  v21 = *(v19 + 16);
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (!v22)
  {
    *(v19 + 16) = v23;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void sub_1004726D8(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100471394(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_10037E110();
      goto LABEL_12;
    }

    sub_100474078(v6 + 1);
  }

  v8 = *v3;
  v9 = NSObject._rawHashValue(seed:)(*(*v3 + 40));
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_100018AB4(0, &qword_1005974C0, NSNumber_ptr);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = static NSObject.== infix(_:_:)();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

Swift::Int sub_100472848(Swift::Int result, unint64_t a2, char a3)
{
  v36 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_48;
  }

  if (a3)
  {
    sub_1004715BC(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      result = sub_10037E260();
      goto LABEL_48;
    }

    sub_10047428C(v5 + 1);
  }

  v7 = 0xEE00657275746375;
  v8 = 0x7274736172666E69;
  v9 = *v3;
  v10 = *(*v3 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();

  result = Hasher._finalize()();
  v11 = -1 << *(v9 + 32);
  a2 = result & ~v11;
  v35 = v9 + 56;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    v13 = 0x6E6574614C776F6CLL;
    v14 = 0x617461446E616ELL;
    v15 = v9;
    do
    {
      v16 = *(*(v9 + 48) + a2);
      if (v16 <= 1)
      {
        if (*(*(v9 + 48) + a2))
        {
          v17 = 1818523489;
        }

        else
        {
          v17 = v8;
        }

        if (*(*(v9 + 48) + a2))
        {
          v18 = 0xE400000000000000;
        }

        else
        {
          v18 = v7;
        }
      }

      else if (v16 == 2)
      {
        v17 = 0x67616E614D6E616ELL;
        v18 = 0xED0000746E656D65;
      }

      else
      {
        if (v16 == 3)
        {
          v17 = v14;
        }

        else
        {
          v17 = v13;
        }

        if (v16 == 3)
        {
          v18 = 0xE700000000000000;
        }

        else
        {
          v18 = 0xEA00000000007963;
        }
      }

      v19 = v13;
      v20 = v14;
      if (v36 == 3)
      {
        v21 = v14;
      }

      else
      {
        v21 = v13;
      }

      v22 = 0xEA00000000007963;
      if (v36 == 3)
      {
        v22 = 0xE700000000000000;
      }

      if (v36 == 2)
      {
        v21 = 0x67616E614D6E616ELL;
        v22 = 0xED0000746E656D65;
      }

      v23 = v36 ? 1818523489 : v8;
      v24 = v7;
      v25 = v36 ? 0xE400000000000000 : v7;
      v26 = v36 <= 1u ? v23 : v21;
      v27 = v36 <= 1u ? v25 : v22;
      v28 = v8;
      if (v17 == v26 && v18 == v27)
      {
        goto LABEL_51;
      }

      v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v29)
      {
        goto LABEL_52;
      }

      a2 = (a2 + 1) & v12;
      v7 = v24;
      v8 = v28;
      v13 = v19;
      v14 = v20;
      v9 = v15;
    }

    while (((*(v35 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_48:
  v30 = *v34;
  *(*v34 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v30 + 48) + a2) = v36;
  v31 = *(v30 + 16);
  v32 = __OFADD__(v31, 1);
  v33 = v31 + 1;
  if (!v32)
  {
    *(v30 + 16) = v33;
    return result;
  }

  __break(1u);
LABEL_51:

LABEL_52:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100472BCC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_10005DC58(&unk_100597D10, &unk_1004B4D30);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v36 = v2;
    v37 = v3;
    v7 = 0;
    v8 = v3 + 56;
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    v38 = result;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v40 = (v11 - 1) & v11;
LABEL_17:
      v19 = *(v3 + 48) + 56 * (v16 | (v7 << 6));
      v20 = *v19;
      v21 = *(v19 + 8);
      v22 = *(v19 + 16);
      v23 = *(v19 + 24);
      v24 = *(v19 + 32);
      v25 = *(v19 + 48);
      v41 = *(v19 + 40);
      v26 = *(v6 + 40);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v20 + 1);
      sub_10000AB0C(v21, v22);
      sub_10005D67C(v23, v24);

      v39 = v21;
      Data.hash(into:)();
      if (v24 >> 60 == 15)
      {
        v27 = v23;
        Hasher._combine(_:)(0);
      }

      else
      {
        Hasher._combine(_:)(1u);
        v27 = v23;
        Data.hash(into:)();
      }

      if (v25)
      {
        Hasher._combine(_:)(1u);
        String.hash(into:)();
      }

      else
      {
        Hasher._combine(_:)(0);
      }

      result = Hasher._finalize()();
      v6 = v38;
      v28 = -1 << *(v38 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v13 + 8 * (v29 >> 6))) == 0)
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
          v34 = *(v13 + 8 * v30);
          if (v34 != -1)
          {
            v14 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_36;
      }

      v14 = __clz(__rbit64((-1 << v29) & ~*(v13 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = *(v38 + 48) + 56 * v14;
      *v15 = v20;
      *(v15 + 8) = v39;
      *(v15 + 16) = v22;
      *(v15 + 24) = v27;
      *(v15 + 32) = v24;
      *(v15 + 40) = v41;
      *(v15 + 48) = v25;
      ++*(v38 + 16);
      v3 = v37;
      v11 = v40;
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v7 >= v12)
      {
        v35 = v6;

        v2 = v36;
        goto LABEL_34;
      }

      v18 = *(v8 + 8 * v7);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v40 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
  }

  else
  {
    v35 = result;

LABEL_34:
    *v2 = v35;
  }

  return result;
}

uint64_t sub_100472EEC(uint64_t a1)
{
  v2 = v1;
  v37 = type metadata accessor for UUID();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  sub_10005DC58(&unk_10059B0F0, &qword_1004B1EC0);
  v10 = static _SetStorage.resize(original:capacity:move:)();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v36 + 72);
      (*(v36 + 16))(v7, *(result + 48) + v23 * (v20 | (v12 << 6)), v37);
      v24 = *(v10 + 40);
      sub_10004C988(&unk_10058BB00, &type metadata accessor for UUID);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v25 = -1 << *(v10 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v18 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v18 + 8 * v27);
          if (v31 != -1)
          {
            v19 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v33)(*(v10 + 48) + v19 * v23, v7, v37);
      ++*(v10 + 16);
      result = v34;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v2 = v32;
        goto LABEL_28;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v10;
  }

  return result;
}

uint64_t sub_100473208(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_10005DC58(&qword_10058B378, &unk_1004B4DA0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_100473440(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_10005DC58(&unk_100597D00, &qword_1004B1EB8);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
      v18 = *(v6 + 40);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v17);
      result = Hasher._finalize()();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v17;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v26;
        goto LABEL_28;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_100473660(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_10005DC58(&qword_100597D30, &unk_1004B1EE0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(*(v3 + 48) + (v14 | (v7 << 6)));
      v18 = *(v6 + 40);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v17 + 1);
      result = Hasher._finalize()();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + v13) = v17;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v26;
        goto LABEL_28;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_100473880(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_10005DC58(&unk_100597D20, &unk_1004B1ED0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = v3 + 56;
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v35 = v2;
    v36 = (v9 + 63) >> 6;
    v12 = result + 56;
    v37 = v3;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v38 = (v11 - 1) & v11;
LABEL_17:
      v18 = (*(v3 + 48) + 6 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = v18[2];
      v22 = v18[3];
      v23 = v18[4];
      v24 = v18[5];
      v25 = *(v6 + 40);
      v26 = v6;
      Hasher.init(_seed:)();
      NANClusterChangeEvent.hash(into:)(&v39, v19 | (v20 << 8) | (v21 << 16) | (v22 << 24) | (v23 << 32) | (v24 << 40));
      result = Hasher._finalize()();
      v6 = v26;
      v27 = -1 << *(v26 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v12 + 8 * (v28 >> 6))) == 0)
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
          v33 = *(v12 + 8 * v29);
          if (v33 != -1)
          {
            v13 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v28) & ~*(v12 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v26 + 48) + 6 * v13);
      *v14 = v19;
      v14[1] = v20;
      v14[2] = v21;
      v14[3] = v22;
      v14[4] = v23;
      v14[5] = v24;
      ++*(v26 + 16);
      v3 = v37;
      v11 = v38;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v36)
      {
        v34 = v6;

        v2 = v35;
        goto LABEL_28;
      }

      v17 = *(v8 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v38 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {
    v34 = result;

LABEL_28:
    *v2 = v34;
  }

  return result;
}

uint64_t sub_100473B18(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_10005DC58(&unk_10059B140, &qword_1004B1EC8);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v32 = v3 + 56;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v33 = (v8 + 63) >> 6;
    v34 = v3;
    v11 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v35 = (v10 - 1) & v10;
LABEL_17:
      v17 = (*(v3 + 48) - (v14 | (v7 << 6)) + 8 * (v14 | (v7 << 6)));
      v18 = *v17;
      v36 = v17[1];
      v19 = v17[2];
      v20 = v17[3];
      v21 = v17[4];
      v22 = v17[5];
      v23 = v17[6];
      v24 = *(v6 + 40);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v18);
      NANClusterChangeEvent.hash(into:)(&v37, v36 | (v19 << 8) | (v20 << 16) | (v21 << 24) | (v22 << 32) | (v23 << 40));
      result = Hasher._finalize()();
      v25 = -1 << *(v6 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v11 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v11 + 8 * v27);
          if (v31 != -1)
          {
            v12 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v12 = __clz(__rbit64((-1 << v26) & ~*(v11 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v6 + 48) - v12 + 8 * v12);
      *v13 = v18;
      v13[1] = v36;
      v13[2] = v19;
      v13[3] = v20;
      v13[4] = v21;
      v13[5] = v22;
      v13[6] = v23;
      ++*(v6 + 16);
      v3 = v34;
      v10 = v35;
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v33)
      {

        goto LABEL_28;
      }

      v16 = *(v32 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v35 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_100473DC4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_10005DC58(&unk_10058B3A0, &qword_10047F4C0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v32 = v2;
    v33 = v3;
    v7 = 0;
    v8 = v3 + 56;
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v34 = (v11 - 1) & v11;
LABEL_17:
      v19 = *(v3 + 48) + 24 * (v16 | (v7 << 6));
      v20 = *v19;
      v21 = *(v19 + 8);
      v22 = *(v19 + 16);
      v23 = *(v19 + 17);
      v24 = *(v6 + 40);
      Hasher.init(_seed:)();
      String.lowercased()();

      String.hash(into:)();

      String.hash(into:)();

      Hasher._combine(_:)(v23);
      result = Hasher._finalize()();
      v25 = -1 << *(v6 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v13 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v13 + 8 * v27);
          if (v31 != -1)
          {
            v14 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v14 = __clz(__rbit64((-1 << v26) & ~*(v13 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = *(v6 + 48) + 24 * v14;
      v11 = v34;
      *v15 = v20;
      *(v15 + 8) = v21;
      *(v15 + 16) = v22;
      *(v15 + 17) = v23;
      ++*(v6 + 16);
      v3 = v33;
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v7 >= v12)
      {

        v2 = v32;
        goto LABEL_28;
      }

      v18 = *(v8 + 8 * v7);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v34 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_100474078(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_10005DC58(&unk_10059B260, &unk_1004B4E00);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(v6 + 40);
      v18 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
      result = NSObject._rawHashValue(seed:)(v17);
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v18;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v26;
        goto LABEL_28;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_10047428C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_10005DC58(&qword_100597D38, &unk_1004B4D00);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v17 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_18:
      v20 = *(*(v3 + 48) + (v17 | (v7 << 6)));
      v21 = *(v6 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();

      result = Hasher._finalize()();
      v13 = -1 << *(v6 + 32);
      v14 = result & ~v13;
      v15 = v14 >> 6;
      if (((-1 << v14) & ~*(v12 + 8 * (v14 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v13) >> 6;
        while (++v15 != v23 || (v22 & 1) == 0)
        {
          v24 = v15 == v23;
          if (v15 == v23)
          {
            v15 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v15);
          if (v25 != -1)
          {
            v16 = __clz(__rbit64(~v25)) + (v15 << 6);
            goto LABEL_10;
          }
        }

        goto LABEL_31;
      }

      v16 = __clz(__rbit64((-1 << v14) & ~*(v12 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
LABEL_10:
      *(v12 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v6 + 48) + v16) = v20;
      ++*(v6 + 16);
    }

    v18 = v7;
    while (1)
    {
      v7 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v26;
        goto LABEL_29;
      }

      v19 = *(v3 + 56 + 8 * v7);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v10 = (v19 - 1) & v19;
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
  }

  else
  {

LABEL_29:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_100474558(uint64_t a1, char **a2)
{
  v5 = *(a1 + 32);
  v6 = ((1 << v5) + 63) >> 6;
  if ((v5 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    __chkstk_darwin();
    v8 = &v12 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v8, v7);
    result = sub_1004746C4(v8, v6, a1, a2);
    if (v2)
    {
      return swift_willThrow();
    }

    return result;
  }

  v10 = swift_slowAlloc();
  v11 = sub_1004748C4(v10, v6, a1, a2);

  if (!v2)
  {
    return v11;
  }

  return result;
}

uint64_t sub_1004746C4(uint64_t result, uint64_t a2, uint64_t a3, char **a4)
{
  v4 = a3;
  v25 = result;
  v26 = 0;
  v5 = 0;
  v6 = a3 + 64;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    if (*(*(v4 + 56) + 8 * v14) > 2)
    {
      *(v25 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v26++, 1))
      {
        goto LABEL_22;
      }
    }

    else
    {
      v15 = *(v4 + 48) + 24 * v14;
      v16 = *v15;
      v17 = *(v15 + 8);
      v29 = *(v15 + 17);
      v30 = *(v15 + 16);
      v18 = *a4;
      swift_bridgeObjectRetain_n();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *a4 = v18;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v18 = sub_1003A79F4(0, *(v18 + 2) + 1, 1, v18);
        *a4 = v18;
      }

      v21 = *(v18 + 2);
      v20 = *(v18 + 3);
      if (v21 >= v20 >> 1)
      {
        v18 = sub_1003A79F4((v20 > 1), v21 + 1, 1, v18);
        *a4 = v18;
      }

      *(v18 + 2) = v21 + 1;
      v22 = &v18[24 * v21];
      *(v22 + 4) = v16;
      *(v22 + 5) = v17;
      v22[48] = v30;
      v22[49] = v29;

      v4 = a3;
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      return sub_100369678(v25, a2, v26, v4);
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
  return result;
}

void *sub_1004748C4(void *result, uint64_t a2, uint64_t a3, char **a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    v8 = sub_1004746C4(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_10047494C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  if (v4 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

uint64_t sub_1004749DC(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = &v16 - v7;
  v9 = *(a1 + 16);
  sub_10004C988(&unk_10058BB00, &type metadata accessor for UUID);
  result = Set.init(minimumCapacity:)();
  v17 = result;
  if (v9)
  {
    v13 = *(v3 + 16);
    v11 = v3 + 16;
    v12 = v13;
    v14 = a1 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v15 = *(v11 + 56);
    do
    {
      v12(v6, v14, v2);
      sub_10046EF10(v8, v6);
      (*(v11 - 8))(v8, v2);
      v14 += v15;
      --v9;
    }

    while (v9);
    return v17;
  }

  return result;
}

uint64_t sub_100474B78(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_1004768F8();
  result = Set.init(minimumCapacity:)();
  v9 = result;
  if (v2)
  {
    v4 = a1 + 32;
    do
    {
      v5 = *(v4 + 16);
      v10[0] = *v4;
      v10[1] = v5;
      v10[2] = *(v4 + 32);
      v11 = *(v4 + 48);
      sub_100300208(v10, v8);
      sub_10046ECC0(v8, v10);
      v6 = v8[3];
      v7 = v8[4];
      sub_1000124C8(v8[1], v8[2]);
      sub_100017554(v6, v7);

      v4 += 56;
      --v2;
    }

    while (v2);
    return v9;
  }

  return result;
}

uint64_t sub_100474C88(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(a1 + 8);
  return (*a1)(v2);
}

uint64_t sub_100474CDC(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_100474CEC(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = Set.init(minimumCapacity:)();
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_10046F1F0(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

void sub_100474D84(void *a1, char a2, char a3)
{
  v4 = v3;
  v8 = *v4;
  v9 = type metadata accessor for AWDLPeer(0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin();
  v12 = &v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(*(v8 + 440) + 8);
  v14 = *(v8 + 432);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v76 = AssociatedTypeWitness;
  v16 = swift_getAssociatedTypeWitness();
  v78 = *(v16 - 8);
  v17 = *(v78 + 64);
  __chkstk_darwin();
  v77 = &v72 - v18;
  v19 = [a1 uniqueIdentifier];
  v20 = 0;
  if (a2)
  {
    v20 = [a1 peerAddress];
  }

  v21 = sub_100460ECC(v19, v20, v4, a3 & 1);

  if (v21)
  {
    if (a2)
    {
      v22 = *(*v4 + 112);
      v23 = *(AssociatedConformanceWitness + 152);
      swift_checkMetadataState();
      v24 = v77;
      v23();
      v25 = v21;
      v26 = [a1 uniqueIdentifier];
      v27 = swift_getAssociatedConformanceWitness();
      (*(v27 + 64))(v25, v26, v16, v27);

      (*(v78 + 8))(v24, v16);
    }

    v28 = [a1 uniqueIdentifier];
    static PreferenceDefaults.deviceName.getter();
    v29 = String._bridgeToObjectiveC()();

    v30 = [a1 localization];
    if (!v30)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v30 = String._bridgeToObjectiveC()();
    }

    [objc_opt_self() localizedErrorForConflictBetweenExistingService:v21 withNewService:v28 localDeviceName:v29 localization:v30];

LABEL_9:
    return;
  }

  if (a2)
  {
    v73 = v16;
    v31 = [a1 peerAddress];
    v32 = WiFiMACAddress.wifiAddress.getter();

    v74 = v32;
    sub_100041B60(v32 & 0xFFFFFFFFFFFFLL, v12);
    v33 = &v12[*(v9 + 68)];
    v35 = *v33;
    v34 = *(v33 + 1);
    v37 = *(v33 + 2);
    v36 = *(v33 + 3);
    v38 = *(v33 + 4);
    sub_1000473F0(v12, type metadata accessor for AWDLPeer);
    if ((v34 & 0xFF00000000) == 0x400000000)
    {
      v39 = &_swiftEmptySetSingleton;
    }

    else
    {
      v80 = v35;
      v81 = BYTE2(v35);
      v82 = BYTE3(v35);
      v83 = BYTE4(v35);
      v84 = BYTE5(v35);
      v85 = BYTE6(v35);
      v86 = v34;
      v87 = WORD2(v34);
      v88 = v37;
      v89 = v36;
      *(&v40 + 1) = v38;
      *&v40 = v36;
      v90 = HIDWORD(v36);
      v91 = (v40 >> 32) >> 32;
      v92 = BYTE2(v38);
      v93 = BYTE3(v38);
      v94 = BYTE4(v38);
      v95 = BYTE5(v38);
      v96 = BYTE6(v38);
      v97 = HIBYTE(v38);
      v39 = AWDLActionFrame.RealtimeGroup.activeServiceIdentifiers.getter();
    }

    v41 = 1 << v39[32];
    v42 = -1;
    if (v41 < 64)
    {
      v42 = ~(-1 << v41);
    }

    v43 = v42 & *(v39 + 7);
    v44 = (v41 + 63) >> 6;

    v45 = 0;
    if (v43)
    {
      while (1)
      {
        v46 = v45;
LABEL_21:
        v79 = *(*(v39 + 6) + ((v46 << 9) | (8 * __clz(__rbit64(v43)))));
        v47 = v79;
        if (sub_100464920(&v79, a1, v4, v74 & 0xFFFFFFFFFFFFLL))
        {
          break;
        }

        v43 &= v43 - 1;

        v45 = v46;
        if (!v43)
        {
          goto LABEL_18;
        }
      }

      if (a3)
      {
        v48 = *(*v4 + 160);
        v49 = v47;
        v50 = a1;
        v51 = Logger.logObject.getter();
        v52 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v51, v52))
        {
          v53 = swift_slowAlloc();
          v72 = swift_slowAlloc();
          v79 = v72;
          *v53 = 136315650;
          v54 = [v50 uniqueIdentifier];
          v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v57 = v56;

          v58 = sub_100002320(v55, v57, &v79);

          *(v53 + 4) = v58;
          *(v53 + 12) = 2080;
          v59 = WiFiAddress.description.getter(v74 & 0xFFFFFFFFFFFFLL);
          v61 = sub_100002320(v59, v60, &v79);

          *(v53 + 14) = v61;
          *(v53 + 22) = 2080;
          v62 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v64 = sub_100002320(v62, v63, &v79);

          *(v53 + 24) = v64;
          _os_log_impl(&_mh_execute_header, v51, v52, "Rejecting %s because peer %s would conflict with its active service for %s", v53, 0x20u);
          swift_arrayDestroy();
        }
      }

      v65 = *(*v4 + 112);
      v66 = *(AssociatedConformanceWitness + 152);
      swift_checkMetadataState();
      v67 = v77;
      v66();
      v21 = v47;
      v68 = [a1 uniqueIdentifier];
      v69 = v73;
      v70 = swift_getAssociatedConformanceWitness();
      (*(v70 + 64))(v21, v68, v69, v70);

      (*(v78 + 8))(v67, v69);
      v71 = [a1 uniqueIdentifier];
      v30 = [a1 localization];
      if (!v30)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v30 = String._bridgeToObjectiveC()();
      }

      [objc_opt_self() localizedErrorForConflictBetweenExistingService:v21 withNewService:v71 localDeviceName:0 localization:v30];

      goto LABEL_9;
    }

LABEL_18:
    while (1)
    {
      v46 = v45 + 1;
      if (__OFADD__(v45, 1))
      {
        break;
      }

      if (v46 >= v44)
      {

        return;
      }

      v43 = *&v39[8 * v46 + 56];
      ++v45;
      if (v43)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
  }
}

uint64_t sub_100475620(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  return sub_100466FB8(a1, v1[4]) & 1;
}

void sub_100475644(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  sub_10046709C(a1, v1[4], v1[5]);
}

Swift::Int sub_10047575C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10005DC58(&qword_100597D38, &unk_1004B4D00);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v25 = v1;
    v26 = a1 + 32;
    while (1)
    {
      v6 = *(v26 + v4++);
      v7 = *(v3 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();

      result = Hasher._finalize()();
      v9 = ~(-1 << *(v3 + 32));
      v10 = result & v9;
      v11 = (result & v9) >> 6;
      v12 = *(v5 + 8 * v11);
      v13 = 1 << (result & v9);
      if ((v13 & v12) != 0)
      {
        do
        {
          v14 = *(*(v3 + 48) + v10);
          if (v14 <= 1)
          {
            if (*(*(v3 + 48) + v10))
            {
              v15 = 1818523489;
            }

            else
            {
              v15 = 0x7274736172666E69;
            }

            if (*(*(v3 + 48) + v10))
            {
              v16 = 0xE400000000000000;
            }

            else
            {
              v16 = 0xEE00657275746375;
            }

            if (v6 <= 1)
            {
LABEL_34:
              v19 = 0x7274736172666E69;
              v20 = 0xEE00657275746375;
              if (v6)
              {
                v20 = 0xE400000000000000;
                v19 = 1818523489;
              }

              goto LABEL_36;
            }
          }

          else if (v14 == 2)
          {
            v15 = 0x67616E614D6E616ELL;
            v16 = 0xED0000746E656D65;
            if (v6 <= 1)
            {
              goto LABEL_34;
            }
          }

          else
          {
            if (v14 == 3)
            {
              v15 = 0x617461446E616ELL;
            }

            else
            {
              v15 = 0x6E6574614C776F6CLL;
            }

            if (v14 == 3)
            {
              v16 = 0xE700000000000000;
            }

            else
            {
              v16 = 0xEA00000000007963;
            }

            if (v6 <= 1)
            {
              goto LABEL_34;
            }
          }

          v17 = 0x6E6574614C776F6CLL;
          if (v6 == 3)
          {
            v17 = 0x617461446E616ELL;
          }

          v18 = 0xEA00000000007963;
          if (v6 == 3)
          {
            v18 = 0xE700000000000000;
          }

          if (v6 == 2)
          {
            v19 = 0x67616E614D6E616ELL;
          }

          else
          {
            v19 = v17;
          }

          if (v6 == 2)
          {
            v20 = 0xED0000746E656D65;
          }

          else
          {
            v20 = v18;
          }

LABEL_36:
          if (v15 == v19 && v16 == v20)
          {

            goto LABEL_4;
          }

          v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v21)
          {
            goto LABEL_4;
          }

          v10 = (v10 + 1) & v9;
          v11 = v10 >> 6;
          v12 = *(v5 + 8 * (v10 >> 6));
          v13 = 1 << v10;
        }

        while ((v12 & (1 << v10)) != 0);
      }

      *(v5 + 8 * v11) = v12 | v13;
      *(*(v3 + 48) + v10) = v6;
      v22 = *(v3 + 16);
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        break;
      }

      *(v3 + 16) = v24;
LABEL_4:
      if (v4 == v25)
      {
        return v3;
      }
    }

    __break(1u);
  }

  else
  {
    return &_swiftEmptySetSingleton;
  }

  return result;
}

uint64_t sub_100475AE8(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_10020CB70();
  result = Set.init(minimumCapacity:)();
  v6 = result;
  if (v2)
  {
    v4 = (a1 + 35);
    do
    {
      sub_10046F5A4(v5, *(v4 - 3) | (*(v4 - 1) << 16) | (*v4 << 24));
      v4 = (v4 + 7);
      --v2;
    }

    while (v2);
    return v6;
  }

  return result;
}

uint64_t sub_100475B70(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (1)
  {
    sub_100018AB4(0, &qword_1005974C0, NSNumber_ptr);
    sub_100047340(&qword_10059B290, &qword_1005974C0, NSNumber_ptr);
    result = Set.init(minimumCapacity:)();
    v11 = result;
    if (v2)
    {
      break;
    }

    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      return result;
    }

LABEL_7:
    v7 = 0;
    v2 = a1 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v7 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v8 = *(a1 + 8 * v7 + 32);
      }

      v9 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      sub_10046F988(&v10, v8);

      ++v7;
      if (v9 == v5)
      {
        return v11;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    _CocoaArrayWrapper.endIndex.getter();
  }

  v6 = result;
  v5 = _CocoaArrayWrapper.endIndex.getter();
  result = v6;
  if (v5)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_100475CC8(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = Set.init(minimumCapacity:)();
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_10015A268(&v6, v5);
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t sub_100475D3C(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = Set.init(minimumCapacity:)();
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_100159BA0(&v6, v5);
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t sub_100475DB0(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_10006153C();
  result = Set.init(minimumCapacity:)();
  v11 = result;
  if (v2)
  {
    v4 = (a1 + 49);
    do
    {
      v5 = *(v4 - 1);
      v6 = *(v4 - 9);
      v7 = *(v4 - 17);
      v8 = *v4;
      v4 += 24;
      v9 = v5 | (v8 << 8);

      sub_10046F77C(&v10, v7, v6, v9);

      --v2;
    }

    while (v2);
    return v11;
  }

  return result;
}

Swift::Int sub_100475E58(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10005DC58(&qword_10059B298, &qword_1004B4E18);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v10 = *(v6 + 8 * v4);
      v11 = *(v3 + 40);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v10);
      result = Hasher._finalize()();
      v13 = ~(-1 << *(v3 + 32));
      v14 = result & v13;
      v15 = (result & v13) >> 6;
      v16 = *(v5 + 8 * v15);
      v17 = 1 << (result & v13);
      v18 = *(v3 + 48);
      if ((v17 & v16) != 0)
      {
        while (*(v18 + 8 * v14) != v10)
        {
          v14 = (v14 + 1) & v13;
          v15 = v14 >> 6;
          v16 = *(v5 + 8 * (v14 >> 6));
          v17 = 1 << v14;
          if (((1 << v14) & v16) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v15) = v17 | v16;
        *(v18 + 8 * v14) = v10;
        v7 = *(v3 + 16);
        v8 = __OFADD__(v7, 1);
        v9 = v7 + 1;
        if (v8)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v9;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

uint64_t sub_100475F94(void (*a1)(void *))
{
  v2 = *v1;
  v3 = *(*v1 + 568);
  swift_beginAccess();
  v4 = *(v1 + v3);
  v39 = *(v2 + 432);
  v40 = *(v2 + 440);
  sub_100018AB4(0, &qword_100595230, AWDLTrafficRegistrationConfiguration_ptr);
  type metadata accessor for AWDLInterface.AdditionalTrafficRegistrationInformation();
  sub_100047340(&qword_100595238, &qword_100595230, AWDLTrafficRegistrationConfiguration_ptr);

  v44 = Dictionary.filter(_:)();
  v37 = v39;
  v38 = v40;
  v5 = type metadata accessor for Dictionary();
  WitnessTable = swift_getWitnessTable();
  v8 = sub_10002B84C(sub_10047708C, v36, v5, &type metadata for WiFiAddress, &type metadata for Never, WitnessTable, &protocol witness table for Never, v7);

  result = v8;
  v10 = _swiftEmptyArrayStorage;
  v34 = *(v8 + 16);
  if (v34)
  {
    v11 = 0;
    v12 = (result + 37);
    v33 = result;
    while (v11 < *(result + 16))
    {
      v13 = *(v12 - 5);
      v14 = *(v12 - 4);
      v15 = *(v12 - 3);
      v16 = *(v12 - 2);
      v17 = *(v12 - 1);
      v18 = *v12;
      if (sub_100046564(v13 | (v14 << 8) | (v15 << 16) | (v16 << 24) | (v17 << 32) | (v18 << 40)))
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v44 = v10;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1003679A8(0, v10[2] + 1, 1);
          v10 = v44;
        }

        v21 = v10[2];
        v20 = v10[3];
        v22 = v21 + 1;
        if (v21 >= v20 >> 1)
        {
          sub_1003679A8((v20 > 1), v21 + 1, 1);
          v22 = v21 + 1;
          v10 = v44;
        }

        v10[2] = v22;
        v23 = v10 + 6 * v21;
        v23[32] = v13;
        v23[33] = v14;
        v23[34] = v15;
        v23[35] = v16;
        v23[36] = v17;
        v23[37] = v18;
      }

      ++v11;
      v12 += 6;
      result = v33;
      if (v34 == v11)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_21;
  }

LABEL_11:

  v24 = v10[2];
  if (v24)
  {
    v44 = _swiftEmptyArrayStorage;
    v35 = v10;
    result = sub_1000C07D0(0, v24, 0);
    v25 = 0;
    v26 = v44;
    v27 = v10 + 37;
    while (v25 < v10[2])
    {
      v28 = *(v27 - 1);
      v41 = *(v27 - 5);
      v42 = v28;
      result = sub_10045EF34(&v41, &v43);
      v29 = v43;
      v44 = v26;
      v31 = v26[2];
      v30 = v26[3];
      if (v31 >= v30 >> 1)
      {
        result = sub_1000C07D0((v30 > 1), v31 + 1, 1);
        v10 = v35;
        v26 = v44;
      }

      ++v25;
      v26[2] = v31 + 1;
      v26[v31 + 4] = v29;
      v27 += 6;
      if (v24 == v25)
      {

        goto LABEL_19;
      }
    }

LABEL_21:
    __break(1u);
    return result;
  }

  v26 = _swiftEmptyArrayStorage;
LABEL_19:
  a1(v26);
}

void sub_100476378(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
LABEL_3:
      sub_10005DC58(&unk_10059B260, &unk_1004B4E00);
      v3 = static _SetStorage.allocate(capacity:)();
      v4 = a1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = _CocoaArrayWrapper.endIndex.getter();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = &_swiftEmptySetSingleton;
  v4 = a1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = (v3 + 7);
  v38 = v5;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    while (1)
    {
      v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = NSObject._rawHashValue(seed:)(v3[5]);
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *&v6[8 * (v13 >> 6)];
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        sub_100018AB4(0, &qword_1005974C0, NSNumber_ptr);
        while (1)
        {
          v18 = *(v3[6] + 8 * v13);
          v19 = static NSObject.== infix(_:_:)();

          if (v19)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *&v6[8 * (v13 >> 6)];
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            v5 = v38;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v5 = v38;
        if (v7 == v38)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *&v6[8 * v14] = v16 | v15;
        *(v3[6] + 8 * v13) = v10;
        v20 = v3[2];
        v9 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v9)
        {
          goto LABEL_33;
        }

        v3[2] = v21;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {
    v22 = 0;
    v36 = a1 + 32;
    v37 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v22 != v37)
    {
      v23 = v3[5];
      v24 = *(v36 + 8 * v22);
      v25 = NSObject._rawHashValue(seed:)(v23);
      v26 = -1 << *(v3 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      v29 = *&v6[8 * (v27 >> 6)];
      v30 = 1 << v27;
      if (((1 << v27) & v29) != 0)
      {
        v31 = ~v26;
        sub_100018AB4(0, &qword_1005974C0, NSNumber_ptr);
        do
        {
          v32 = *(v3[6] + 8 * v27);
          v33 = static NSObject.== infix(_:_:)();

          if (v33)
          {

            v5 = v38;
            goto LABEL_23;
          }

          v27 = (v27 + 1) & v31;
          v28 = v27 >> 6;
          v29 = *&v6[8 * (v27 >> 6)];
          v30 = 1 << v27;
        }

        while (((1 << v27) & v29) != 0);
        v5 = v38;
      }

      *&v6[8 * v28] = v30 | v29;
      *(v3[6] + 8 * v27) = v24;
      v34 = v3[2];
      v9 = __OFADD__(v34, 1);
      v35 = v34 + 1;
      if (v9)
      {
        goto LABEL_35;
      }

      v3[2] = v35;
LABEL_23:
      if (++v22 == v5)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
}

uint64_t sub_100476668()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v2 + 8);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v4 = *(swift_getAssociatedTypeWitness() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v0 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_100464334(v0 + v5, v6, v1, v2);
}

uint64_t sub_1004767D4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_100464B84(*(v0 + 32), *(v0 + 40));
}

uint64_t sub_100476800()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = *(type metadata accessor for AWDLPeer(0) - 8);
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0 + ((*(v3 + 80) + 48) & ~*(v3 + 80));

  return sub_100466294(v4, v5, v6);
}

BOOL sub_100476880(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_100466478(a1, *(v1 + 32));
}

unint64_t sub_1004768F8()
{
  result = qword_10059B0E8;
  if (!qword_10059B0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10059B0E8);
  }

  return result;
}

uint64_t sub_10047694C(uint64_t a1, char *a2)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[4];
  return sub_100453090(a1, a2);
}

uint64_t sub_100476970(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 40) & ~v4;
  v6 = *(v3 + 64);
  v7 = *(v1 + 32);

  (*(v3 + 8))(v1 + v5, v2);

  return _swift_deallocObject(v1, v5 + v6, v4 | 7);
}

uint64_t sub_100476A54(uint64_t (*a1)(uint64_t, char *, uint64_t, uint64_t))
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = *(type metadata accessor for DispatchTime() - 8);
  v5 = v1[4];
  v6 = v1 + ((*(v4 + 80) + 40) & ~*(v4 + 80));

  return a1(v5, v6, v2, v3);
}

id *sub_100476B20(id *result)
{
  if (*(v1 + 40) << 32 == 0x300000000)
  {
    v2 = 0;
  }

  else
  {
    v3 = *(v1 + 32);
    v2 = *(v1 + 36);
  }

  if (v2 < 0x10000)
  {
    return [result[1] softAPChannelChangedEvent:*(v1 + 32) & 1 channelNumber:v2];
  }

  __break(1u);
  return result;
}

void sub_100476BD8(uint64_t a1)
{
  v2 = *(v1 + 32);
  v3 = *(a1 + 8);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  [v3 threadCoexistenceEvent:isa];
}

uint64_t sub_100476D84(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  return sub_100457C88(a1, v1[4]) & 1;
}

uint64_t sub_100476E08(void **a1, uint64_t a2)
{
  v3 = v2[2];
  v4 = v2[3];
  return sub_10045BD80(a1, a2, v2[4]) & 1;
}

uint64_t sub_100476FBC(uint64_t a1)
{
  v3 = *(v1 + 32);

  return _swift_deallocObject(v1, a1, 7);
}

void sub_100477008()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_1004665DC(*(v0 + 32), *(v0 + 40), *(v0 + 48));
}

void sub_100477018(void *a1, uint64_t a2, void *a3)
{
  if (a1)
  {

    swift_unknownObjectRelease();
  }
}

uint64_t sub_10047706C(void **a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return sub_10045EB04(a1, a2) & 1;
}

uint64_t sub_10047708C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return sub_10045ED80(a1, a2);
}

dispatch_workloop_t sub_100477144(const char *a1)
{
  v1 = dispatch_workloop_create(a1);

  return v1;
}

void *sub_10047716C(uint64_t a1, void *a2)
{
  v3 = malloc_type_malloc(0x3BDC8uLL, 0x10000401B0B51D0uLL);
  v3[183] = 0x10000;
  __strlcpy_chk();
  *a2 = 245192;
  return v3;
}

_DWORD *sub_1004771E4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = malloc_type_malloc(0x3B8A0uLL, 0x1000040E9231DBDuLL);
  v5[60965] = 0;
  *(v5 + 121932) = 0;
  *(v5 + 17) = a2;
  __strlcpy_chk();
  *a3 = 243872;
  return v5;
}

void *sub_100477270(uint64_t a1, void *a2)
{
  v3 = malloc_type_malloc(0x88uLL, 0x1000040235F8A92uLL);
  __strlcpy_chk();
  *a2 = 136;
  return v3;
}

uint64_t Data._Representation.subscript.getter()
{
  return Data._Representation.subscript.getter();
}

{
  return Data._Representation.subscript.getter();
}

uint64_t + infix(_:_:)()
{
  return + infix(_:_:)();
}

{
  return + infix(_:_:)();
}

uint64_t Dictionary.subscript.getter()
{
  return Dictionary.subscript.getter();
}

{
  return Dictionary.subscript.getter();
}

Swift::String __swiftcall String.lowercased()()
{
  v0 = String.lowercased()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

Swift::String __swiftcall String.uppercased()()
{
  v0 = String.uppercased()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

uint64_t String.init(cString:)()
{
  return String.init(cString:)();
}

{
  return String.init(cString:)();
}

uint64_t String.subscript.getter()
{
  return String.subscript.getter();
}

{
  return String.subscript.getter();
}

uint64_t Sequence.filter(_:)()
{
  return Sequence.filter(_:)();
}

{
  return Sequence.filter(_:)();
}

uint64_t RawRepresentable<>.encode(to:)()
{
  return RawRepresentable<>.encode(to:)();
}

{
  return RawRepresentable<>.encode(to:)();
}

{
  return RawRepresentable<>.encode(to:)();
}

{
  return RawRepresentable<>.encode(to:)();
}

{
  return RawRepresentable<>.encode(to:)();
}

uint64_t RawRepresentable<>.init(from:)()
{
  return RawRepresentable<>.init(from:)();
}

{
  return RawRepresentable<>.init(from:)();
}

{
  return RawRepresentable<>.init(from:)();
}

{
  return RawRepresentable<>.init(from:)();
}

{
  return RawRepresentable<>.init(from:)();
}

uint64_t KeyedDecodingContainer.decode(_:forKey:)()
{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

uint64_t KeyedEncodingContainer.encodeIfPresent(_:forKey:)()
{
  return KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
}

{
  return KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
}

uint64_t KeyedEncodingContainer.encode(_:forKey:)()
{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

uint64_t dispatch thunk of UnkeyedDecodingContainer.decode(_:)()
{
  return dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
}

{
  return dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
}

{
  return dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
}

{
  return dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
}

{
  return dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
}

{
  return dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
}

{
  return dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
}

{
  return dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
}

{
  return dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
}

uint64_t UnkeyedDecodingContainer.decodeIfPresent(_:)()
{
  return UnkeyedDecodingContainer.decodeIfPresent(_:)();
}

{
  return UnkeyedDecodingContainer.decodeIfPresent(_:)();
}

{
  return UnkeyedDecodingContainer.decodeIfPresent(_:)();
}

{
  return UnkeyedDecodingContainer.decodeIfPresent(_:)();
}

{
  return UnkeyedDecodingContainer.decodeIfPresent(_:)();
}

{
  return UnkeyedDecodingContainer.decodeIfPresent(_:)();
}

{
  return UnkeyedDecodingContainer.decodeIfPresent(_:)();
}

uint64_t dispatch thunk of UnkeyedEncodingContainer.encode(_:)()
{
  return dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
}

{
  return dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
}

{
  return dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
}

{
  return dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
}

{
  return dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
}

{
  return dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
}

{
  return dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
}

{
  return dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
}

{
  return dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
}

{
  return dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
}

uint64_t UnkeyedEncodingContainer.encode<A>(contentsOf:)()
{
  return UnkeyedEncodingContainer.encode<A>(contentsOf:)();
}

{
  return UnkeyedEncodingContainer.encode<A>(contentsOf:)();
}

{
  return UnkeyedEncodingContainer.encode<A>(contentsOf:)();
}

{
  return UnkeyedEncodingContainer.encode<A>(contentsOf:)();
}

{
  return UnkeyedEncodingContainer.encode<A>(contentsOf:)();
}

{
  return UnkeyedEncodingContainer.encode<A>(contentsOf:)();
}

{
  return UnkeyedEncodingContainer.encode<A>(contentsOf:)();
}

{
  return UnkeyedEncodingContainer.encode<A>(contentsOf:)();
}

{
  return UnkeyedEncodingContainer.encode<A>(contentsOf:)();
}

{
  return UnkeyedEncodingContainer.encode<A>(contentsOf:)();
}

{
  return UnkeyedEncodingContainer.encode<A>(contentsOf:)();
}

{
  return UnkeyedEncodingContainer.encode<A>(contentsOf:)();
}

{
  return UnkeyedEncodingContainer.encode<A>(contentsOf:)();
}

{
  return UnkeyedEncodingContainer.encode<A>(contentsOf:)();
}

{
  return UnkeyedEncodingContainer.encode<A>(contentsOf:)();
}

{
  return UnkeyedEncodingContainer.encode<A>(contentsOf:)();
}

{
  return UnkeyedEncodingContainer.encode<A>(contentsOf:)();
}

uint64_t DefaultStringInterpolation.appendInterpolation<A>(_:)()
{
  return DefaultStringInterpolation.appendInterpolation<A>(_:)();
}

{
  return DefaultStringInterpolation.appendInterpolation<A>(_:)();
}

uint64_t dispatch thunk of SingleValueDecodingContainer.decode(_:)()
{
  return dispatch thunk of SingleValueDecodingContainer.decode(_:)();
}

{
  return dispatch thunk of SingleValueDecodingContainer.decode(_:)();
}

{
  return dispatch thunk of SingleValueDecodingContainer.decode(_:)();
}

uint64_t SingleValueDecodingContainer<>.decode(_:)()
{
  return SingleValueDecodingContainer<>.decode(_:)();
}

{
  return SingleValueDecodingContainer<>.decode(_:)();
}

uint64_t dispatch thunk of SingleValueEncodingContainer.encode(_:)()
{
  return dispatch thunk of SingleValueEncodingContainer.encode(_:)();
}

{
  return dispatch thunk of SingleValueEncodingContainer.encode(_:)();
}

uint64_t SingleValueEncodingContainer<>.encode(_:)()
{
  return SingleValueEncodingContainer<>.encode(_:)();
}

{
  return SingleValueEncodingContainer<>.encode(_:)();
}

uint64_t KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:)()
{
  return KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:)();
}

{
  return KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:)();
}

{
  return KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:)();
}

{
  return KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:)();
}

{
  return KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:)();
}

{
  return KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:)();
}

{
  return KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:)();
}

uint64_t KeyedDecodingContainerProtocol.decode(_:forKey:)()
{
  return KeyedDecodingContainerProtocol.decode(_:forKey:)();
}

{
  return KeyedDecodingContainerProtocol.decode(_:forKey:)();
}

uint64_t KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:)()
{
  return KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:)();
}

{
  return KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:)();
}

{
  return KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:)();
}

{
  return KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:)();
}

{
  return KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:)();
}

{
  return KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:)();
}

{
  return KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:)();
}

{
  return KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:)();
}

{
  return KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:)();
}

uint64_t KeyedEncodingContainerProtocol.encode(_:forKey:)()
{
  return KeyedEncodingContainerProtocol.encode(_:forKey:)();
}

{
  return KeyedEncodingContainerProtocol.encode(_:forKey:)();
}