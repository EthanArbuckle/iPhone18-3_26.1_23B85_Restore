uint64_t sub_1003E76C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v33 - v10;
  v12 = *(a1 + 16);
  v36 = *(v2 + 16);
  v13 = v36;
  v34 = a1;
  v35 = v12;
  if (v12)
  {
    v15 = *(v5 + 16);
    v14 = v5 + 16;
    v39 = (*(v14 + 64) + 32) & ~*(v14 + 64);
    v16 = a1 + v39;
    v17 = *(v14 + 56);
    v42 = (v14 + 16);
    v43 = v15;
    v38 = (v14 - 8);
    v18 = _swiftEmptyArrayStorage;
    v40 = v9;
    v41 = v14;
    v15(v11, a1 + v39, v4);
    while (1)
    {
      if (URL.isFileURL.getter())
      {
        (*v38)(v11, v4);
      }

      else
      {
        v19 = *v42;
        (*v42)(v9, v11, v4);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v44 = v18;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_10028FAB4(0, v18[2] + 1, 1);
          v18 = v44;
        }

        v22 = v18[2];
        v21 = v18[3];
        if (v22 >= v21 >> 1)
        {
          sub_10028FAB4(v21 > 1, v22 + 1, 1);
          v18 = v44;
        }

        v18[2] = v22 + 1;
        v23 = v18 + v39 + v22 * v17;
        v9 = v40;
        v19(v23, v40, v4);
      }

      v16 += v17;
      if (!--v12)
      {
        break;
      }

      v43(v11, v16, v4);
    }
  }

  else
  {
    v18 = _swiftEmptyArrayStorage;
  }

  v24 = v18[2];
  if (v24)
  {
    if (v24 != v35)
    {
      if (qword_1009737B0 != -1)
      {
        swift_once();
      }

      v25 = type metadata accessor for Logger();
      sub_10000C4AC(v25, qword_10097B528);
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&_mh_execute_header, v26, v27, "Asked to view mixed files and links, only viewing links", v28, 2u);
      }
    }

    v44 = 0;
    v29 = swift_allocObject();
    v30 = v36;
    *(v29 + 16) = v18;
    *(v29 + 24) = v30;
  }

  else
  {

    v44 = 0;
    v31 = swift_allocObject();
    *(v31 + 16) = v36;
    *(v31 + 24) = 1;
    *(v31 + 32) = v34;
  }

  return SFProgressTask.init(_:initialProgress:operation:file:line:)();
}

uint64_t sub_1003E7B30@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for SDAirDropContentHandleriTunesULinks();
  result = swift_allocObject();
  *(result + 16) = 0;
  *a1 = result;
  return result;
}

uint64_t sub_1003E7B68(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100289000;

  return sub_1003E7360(a1);
}

void sub_1003E7C00(uint64_t a1, char a2)
{
  sub_1003D8D18(&off_1008D6B48, a2);
  sub_1003470A0(&unk_1008D6B68);
  v2 = String._bridgeToObjectiveC()();
  v3 = SFLocalizedStringForKey();

  if (v3)
  {

    static String._unconditionallyBridgeFromObjectiveC(_:)();

    static String.localizedStringWithFormat(_:_:)();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1003E7CDC()
{
  v1 = type metadata accessor for SDAuthenticationCommonOperationInput();
  v2 = *(v0 + *(v1 + 28));
  if (v2 > 0x16)
  {
    goto LABEL_7;
  }

  if (((1 << v2) & 0x7A618E) == 0)
  {
    if (((1 << v2) & 0x40600) != 0)
    {
      v3 = 1;
      return v3 & 1;
    }

LABEL_7:
    v3 = *(v0 + *(v1 + 32));
    return v3 & 1;
  }

  v3 = *(v0 + *(v1 + 32)) ^ 1;
  return v3 & 1;
}

uint64_t sub_1003E7D64()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_10097BA28);
  v1 = sub_10000C4AC(v0, qword_10097BA28);
  if (qword_100973758 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A0A50);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1003E7E2C()
{
  v2 = v0[8];
  v3 = v0[9];
  sub_10002CDC0(v0 + 5, v2);
  (*(v3 + 8))(v2, v3);
  sub_10028088C(&qword_100975100, &qword_1007FBA10);
  Optional.tryUnwrap(_:file:line:)();

  if (!v1)
  {
    return v5;
  }

  return result;
}

uint64_t sub_1003E7F10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  v4 = type metadata accessor for AuthenticationSecurityRequest(0);
  v3[23] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v6 = type metadata accessor for Date();
  v3[25] = v6;
  v7 = *(v6 - 8);
  v3[26] = v7;
  v8 = *(v7 + 64) + 15;
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();

  return _swift_task_switch(sub_1003E8010, 0, 0);
}

uint64_t sub_1003E8010()
{
  v45 = v0;
  v1 = *(v0 + 176);
  v2 = type metadata accessor for SDAuthenticationCommonOperationInput();
  v3 = 0;
  v4 = *(v1 + *(v2 + 32));
  switch(*(v1 + *(v2 + 28)))
  {
    case 0:
    case 2:
      break;
    case 1:
      v5 = v4 == 0;
      v6 = 96;
      v7 = 31;
      goto LABEL_21;
    case 3:
      v5 = v4 == 0;
      v6 = 2050;
      v7 = 2688;
      goto LABEL_21;
    case 4:
      v5 = v4 == 0;
      v6 = 256;
      v7 = 3584;
      goto LABEL_21;
    case 5:
      v3 = 34816;
      break;
    case 6:
      v5 = v4 == 0;
      v6 = 47744;
      goto LABEL_13;
    case 7:
      v5 = v4 == 0;
      v6 = 0x4000;
      goto LABEL_13;
    case 8:
      v3 = 128;
      break;
    case 9:
      v5 = v4 == 0;
      v6 = 34816;
      goto LABEL_16;
    case 0xALL:
      v5 = v4 == 0;
      v6 = 128;
LABEL_13:
      v7 = 2;
      goto LABEL_21;
    case 0xBLL:
      v5 = v4 == 0;
      v6 = 109184;
LABEL_16:
      v7 = 34818;
      goto LABEL_21;
    case 0xELL:
      v5 = v4 == 0;
      v6 = 35456;
      v7 = 34816;
      goto LABEL_21;
    case 0x11:
    case 0x15:
      v5 = v4 == 0;
      v6 = 35552;
      goto LABEL_20;
    case 0x12:
      v5 = v4 == 0;
      v6 = 2176;
      v7 = 2178;
      goto LABEL_21;
    case 0x13:
      v5 = v4 == 0;
      v6 = 43744;
      goto LABEL_20;
    case 0x14:
      v5 = v4 == 0;
      v6 = 35522;
LABEL_20:
      v7 = 526338;
LABEL_21:
      if (v5)
      {
        v3 = v6;
      }

      else
      {
        v3 = v7;
      }

      break;
    default:
      v3 = 786431;
      break;
  }

  sub_1002A9938(*(v0 + 168), v0 + 56);
  sub_10028088C(&qword_1009758D8, &unk_1007F8C30);
  sub_10028088C(&qword_10097BE48, &qword_100800398);
  v8 = swift_dynamicCast();
  v9 = *(v0 + 224);
  if (v8)
  {
    sub_1000121F8((v0 + 96), v0 + 16);
    v10 = *(v0 + 40);
    v11 = *(v0 + 48);
    sub_10002CDC0((v0 + 16), v10);
    (*(v11 + 16))(v10, v11);
    sub_10000C60C((v0 + 16));
  }

  else
  {
    *(v0 + 128) = 0;
    *(v0 + 96) = 0u;
    *(v0 + 112) = 0u;
    sub_100005508(v0 + 96, &qword_10097BE50, &qword_1008003A0);
    static Date.distantFuture.getter();
  }

  if (qword_1009737E8 != -1)
  {
    swift_once();
  }

  v12 = *(v0 + 216);
  v13 = *(v0 + 224);
  v14 = *(v0 + 200);
  v15 = *(v0 + 208);
  v16 = type metadata accessor for Logger();
  sub_10000C4AC(v16, qword_10097BA28);
  v17 = *(v15 + 16);
  v17(v12, v13, v14);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  v20 = os_log_type_enabled(v18, v19);
  v22 = *(v0 + 208);
  v21 = *(v0 + 216);
  v23 = *(v0 + 200);
  if (v20)
  {
    v41 = v19;
    v24 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    *v24 = 136315394;
    v25 = String.init<A>(describing:)();
    v43 = v3;
    v42 = v17;
    v27 = sub_10000C4E4(v25, v26, &v44);

    *(v24 + 4) = v27;
    *(v24 + 12) = 2080;
    sub_1003FCA70(&qword_100983290, &type metadata accessor for Date);
    v28 = dispatch thunk of CustomStringConvertible.description.getter();
    v30 = v29;
    v31 = *(v22 + 8);
    v31(v21, v23);
    v32 = v28;
    v3 = v43;
    v33 = sub_10000C4E4(v32, v30, &v44);
    v17 = v42;

    *(v24 + 14) = v33;
    _os_log_impl(&_mh_execute_header, v18, v41, "%s: using requestingDeviceUnlockDate: %s", v24, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v31 = *(v22 + 8);
    v31(v21, v23);
  }

  *(v0 + 232) = v31;
  v34 = *(v0 + 192);
  v35 = *(v0 + 176);
  v17(v34 + *(*(v0 + 184) + 20), *(v0 + 224), *(v0 + 200));
  *v34 = v3;
  v36 = (*sub_10002CDC0(v35, v35[3]) + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationManager_securityManager);
  swift_beginAccess();
  v37 = *sub_10002CDC0(v36, v36[3]);
  v38 = swift_task_alloc();
  *(v0 + 240) = v38;
  *v38 = v0;
  v38[1] = sub_1003E8534;
  v39 = *(v0 + 192);

  return sub_100351944(v39);
}

uint64_t sub_1003E8534()
{
  v2 = *(*v1 + 240);
  v5 = *v1;
  *(*v1 + 248) = v0;

  if (v0)
  {
    v3 = sub_1003E8724;
  }

  else
  {
    v3 = sub_1003E8648;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1003E8648()
{
  v1 = v0[28];
  v2 = v0[29];
  v3 = v0[27];
  v4 = v0[25];
  v6 = v0[20];
  v5 = v0[21];
  v7 = v0[26] + 8;
  sub_1003FC968(v0[24], type metadata accessor for AuthenticationSecurityRequest);
  v2(v1, v4);
  sub_1002A9938(v5, v6);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1003E8724()
{
  v1 = v0[28];
  v2 = v0[29];
  v3 = v0[27];
  v4 = v0[25];
  v5 = v0[26] + 8;
  sub_1003FC968(v0[24], type metadata accessor for AuthenticationSecurityRequest);
  v2(v1, v4);

  v6 = v0[1];
  v7 = v0[31];

  return v6();
}

uint64_t sub_1003E87E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100005C00;

  return sub_1003E7F10(a1, a2, a3);
}

uint64_t sub_1003E8898(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_1003E88B8, 0, 0);
}

id sub_1003E88B8()
{
  result = [objc_opt_self() sharedMonitor];
  if (result)
  {
    v2 = result;
    v3 = [result bluetoothEnabled];

    if (v3)
    {
      sub_1002A9938(v0[3], v0[2]);
    }

    else
    {
      v5 = sub_100010F88(17, 0xD000000000000015, 0x800000010078EF60);
      v7 = v6;
      sub_1000115C8();
      swift_allocError();
      *v8 = v5;
      *(v8 + 8) = v7;
      swift_willThrow();
    }

    v4 = v0[1];

    return v4();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1003E89D8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100005C00;

  return sub_1003E8898(a1, a2);
}

uint64_t sub_1003E8A78(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_1003E8A98, 0, 0);
}

id sub_1003E8A98()
{
  result = [objc_opt_self() sharedMonitor];
  if (result)
  {
    v2 = result;
    v3 = [result wirelessEnabled];

    if (v3)
    {
      sub_1002A9938(v0[3], v0[2]);
    }

    else
    {
      v5 = sub_100010F88(16, 0xD000000000000010, 0x800000010078EF80);
      v7 = v6;
      sub_1000115C8();
      swift_allocError();
      *v8 = v5;
      *(v8 + 8) = v7;
      swift_willThrow();
    }

    v4 = v0[1];

    return v4();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1003E8BB8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100005C00;

  return sub_1003E8A78(a1, a2);
}

uint64_t sub_1003E8C58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return _swift_task_switch(sub_1003E8C7C, 0, 0);
}

uint64_t sub_1003E8C7C()
{
  v1 = v0[4];
  v2 = v1[8];
  v3 = v1[9];
  sub_10002CDC0(v1 + 5, v2);
  if ((*(v3 + 40))(v2, v3))
  {
    sub_1002A9938(v0[3], v0[2]);
  }

  else
  {
    v5 = sub_100010F88(18, 0xD000000000000025, 0x800000010078EFA0);
    v7 = v6;
    sub_1000115C8();
    swift_allocError();
    *v8 = v5;
    *(v8 + 8) = v7;
    swift_willThrow();
  }

  v4 = v0[1];

  return v4();
}

uint64_t sub_1003E8D90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a2;
  v3[6] = a3;
  v3[4] = a1;
  return _swift_task_switch(sub_1003E8DB4, 0, 0);
}

uint64_t sub_1003E8DB4()
{
  v1 = v0[6];
  v2 = *(v1 + *(type metadata accessor for SDAuthenticationCommonOperationInput() + 28)) - 1;
  v3 = 0.0;
  if (v2 <= 0x14)
  {
    v3 = flt_1008010C4[v2];
  }

  v4 = v1[8];
  v5 = v1[9];
  sub_10002CDC0(v1 + 5, v4);
  v6 = (*(v5 + 64))(v4, v5);
  v8 = (v7 / 10.0) + v6;
  if (v3 <= v8)
  {
    sub_1002A9938(v0[5], v0[4]);
    v19 = v0[1];
  }

  else
  {
    if (qword_1009737E8 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_10000C4AC(v9, qword_10097BA28);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 134218240;
      *(v12 + 4) = v3;
      *(v12 + 12) = 2048;
      *(v12 + 14) = v8;
      _os_log_impl(&_mh_execute_header, v10, v11, "Remote Device version is unsupported. Need: %f, got: %f", v12, 0x16u);
    }

    _StringGuts.grow(_:)(55);
    v0[2] = 0;
    v0[3] = 0xE000000000000000;
    v13._object = 0x800000010078EF30;
    v13._countAndFlagsBits = 0xD00000000000002CLL;
    String.append(_:)(v13);
    Float.write<A>(to:)();
    v14._countAndFlagsBits = 0x203A746F67202CLL;
    v14._object = 0xE700000000000000;
    String.append(_:)(v14);
    Float.write<A>(to:)();
    v15 = sub_100010F88(15, v0[2], v0[3]);
    v17 = v16;
    sub_1000115C8();
    swift_allocError();
    *v18 = v15;
    *(v18 + 8) = v17;
    swift_willThrow();
    v19 = v0[1];
  }

  return v19();
}

uint64_t sub_1003E9068(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100005C00;

  return sub_1003E8D90(a1, a2, a3);
}

uint64_t sub_1003E9118(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[13] = a2;
  v3[14] = a3;
  v3[12] = a1;
  return _swift_task_switch(sub_1003E913C, 0, 0);
}

id sub_1003E913C()
{
  v51 = v0;
  v1 = *(v0 + 112);
  v2 = *(type metadata accessor for SDAuthenticationCommonOperationInput() + 36);
  sub_1003FBDAC(v1 + v2, v0 + 56);
  if (*(v0 + 80))
  {
    sub_1000121F8((v0 + 56), v0 + 16);
    v3 = *(*sub_10002CDC0((v0 + 16), *(v0 + 40)) + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication10LTKSession_localLTK);
    v4 = *(v3 + 112);
    v5 = swift_task_alloc();
    *(v5 + 16) = sub_1003FCBA8;
    *(v5 + 24) = v3;

    os_unfair_lock_lock(v4 + 4);
    sub_1003FCBC0(v50);
    os_unfair_lock_unlock(v4 + 4);
    v49 = v2;
    v11 = *(v0 + 112);
    v12 = v50[0];

    sub_10000C60C((v0 + 16));
    v13 = swift_task_alloc();
    *(v13 + 16) = v11;
    v14 = sub_1003FB7BC(sub_1003FC9EC, v13, v12);

    result = [objc_opt_self() sharedTransport];
    if (result)
    {
      v16 = result;
      v17 = [result idsDevicesIDs];

      if (v17)
      {
        v18 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
      }

      else
      {
        v18 = &_swiftEmptySetSingleton;
      }

      v19 = sub_1003FC048(v14, v18);

      if (!v19[2])
      {
LABEL_24:

        sub_1002A9938(*(v0 + 104), *(v0 + 96));
        v10 = *(v0 + 8);
        goto LABEL_25;
      }

      v20 = 0;
      v21 = (v19 + 7);
      v22 = -1;
      v23 = -1 << *(v19 + 32);
      if (-v23 < 64)
      {
        v22 = ~(-1 << -v23);
      }

      v24 = v22 & v19[7];
      v25 = (63 - v23) >> 6;
      v47 = (v19 + 7);
      v48 = v19;
      v46 = v25;
      if (v24)
      {
        while (1)
        {
          v26 = v20;
LABEL_17:
          v27 = (v19[6] + ((v26 << 10) | (16 * __clz(__rbit64(v24)))));
          v28 = *v27;
          v29 = v27[1];
          v30 = qword_1009737E8;

          if (v30 != -1)
          {
            swift_once();
          }

          v31 = type metadata accessor for Logger();
          sub_10000C4AC(v31, qword_10097BA28);

          v32 = Logger.logObject.getter();
          v33 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v32, v33))
          {
            v34 = swift_slowAlloc();
            v35 = v1;
            v36 = swift_slowAlloc();
            v50[0] = v36;
            *v34 = 136315138;
            *(v34 + 4) = sub_10000C4E4(v28, v29, v50);
            _os_log_impl(&_mh_execute_header, v32, v33, "Unpairing device %s", v34, 0xCu);
            sub_10000C60C(v36);
            v1 = v35;
          }

          sub_1003FBDAC(v1 + v49, v0 + 56);
          if (!*(v0 + 80))
          {
            break;
          }

          sub_1000121F8((v0 + 56), v0 + 16);
          v37 = *(*sub_10002CDC0((v0 + 16), *(v0 + 40)) + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication10LTKSession_localLTK);
          v38 = *(v37 + 112);
          v39 = swift_task_alloc();
          v39[2] = v37;
          v39[3] = v28;
          v39[4] = v29;
          v40 = swift_task_alloc();
          *(v40 + 16) = sub_1003FCB60;
          *(v40 + 24) = v39;
          os_unfair_lock_lock(v38 + 4);
          sub_1003206A8(v41);
          os_unfair_lock_unlock(v38 + 4);
          v24 &= v24 - 1;

          result = sub_10000C60C((v0 + 16));
          v20 = v26;
          v21 = v47;
          v19 = v48;
          v25 = v46;
          if (!v24)
          {
            goto LABEL_14;
          }
        }

        sub_100005508(v0 + 56, &qword_1009819B0, &qword_100800360);
        v42 = sub_100010F88(37, 0xD000000000000027, 0x800000010078EF00);
        v44 = v43;
        sub_1000115C8();
        swift_allocError();
        *v45 = v42;
        *(v45 + 8) = v44;
        swift_willThrow();

        goto LABEL_4;
      }

LABEL_14:
      while (1)
      {
        v26 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          break;
        }

        if (v26 >= v25)
        {
          goto LABEL_24;
        }

        v24 = *&v21[8 * v26];
        ++v20;
        if (v24)
        {
          goto LABEL_17;
        }
      }

      __break(1u);
    }

    __break(1u);
    return result;
  }

  sub_100005508(v0 + 56, &qword_1009819B0, &qword_100800360);
  v6 = sub_100010F88(37, 0xD000000000000027, 0x800000010078EF00);
  v8 = v7;
  sub_1000115C8();
  swift_allocError();
  *v9 = v6;
  *(v9 + 8) = v8;
  swift_willThrow();
LABEL_4:
  v10 = *(v0 + 8);
LABEL_25:

  return v10();
}

uint64_t sub_1003E9754(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a2[8];
  v5 = a2[9];
  sub_10002CDC0(a2 + 5, v4);
  v6 = *(v5 + 8);

  v7 = v6(v4, v5);
  if (v8)
  {
    if (v3 == v7 && v8 == v2)
    {

      v11 = 0;
    }

    else
    {
      v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v11 = v10 ^ 1;
    }
  }

  else
  {

    v11 = 1;
  }

  return v11 & 1;
}

uint64_t sub_1003E983C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100005C00;

  return sub_1003E9118(a1, a2, a3);
}

uint64_t sub_1003E98EC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_1003E990C, 0, 0);
}

uint64_t sub_1003E990C()
{
  v1 = v0[3];
  v2 = sub_10002CDC0(v1, v1[3]);
  if (*(v2 + *(_s8KeyCheckV18InitialLockContextVMa(0) + 32)) == 1)
  {
    v3 = sub_100010F88(0, 0xD000000000000022, 0x800000010078F250);
    v5 = v4;
    sub_1000115C8();
    swift_allocError();
    *v6 = v3;
    *(v6 + 8) = v5;
    swift_willThrow();
  }

  else
  {
    v9 = v0[2];
    v8 = v0[3];
    v10 = v1[3];
    v11 = v8[4];
    v12 = sub_10002CDC0(v8, v10);
    v9[3] = v10;
    v9[4] = *(v11 + 8);
    v13 = sub_10002F604(v9);
    (*(*(v10 - 8) + 16))(v13, v12, v10);
  }

  v7 = v0[1];

  return v7();
}

uint64_t sub_1003E9A68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return _swift_task_switch(sub_1003E9A8C, 0, 0);
}

uint64_t sub_1003E9A8C()
{
  v21 = v0;
  if (qword_1009737D0 != -1)
  {
    swift_once();
  }

  v1 = v0[4];
  v2 = type metadata accessor for SDAuthenticationCommonOperationInput();
  v3 = *(v1 + *(v2 + 28)) - 3;
  if (v3 > 0x14)
  {
    v4 = 0;
  }

  else
  {
    v4 = byte_100801118[v3];
  }

  v9 = sub_10000D6E8(v4, *(v1 + *(v2 + 32)), 0, 0, 0, 0);
  v10 = *(v9 + 112);
  v11 = swift_task_alloc();
  *(v11 + 16) = sub_1003FC51C;
  *(v11 + 24) = v9;
  os_unfair_lock_lock(v10 + 4);
  sub_100012268(&v20);
  os_unfair_lock_unlock(v10 + 4);
  v12 = v0[4];
  v13 = v20;

  v14 = v12[8];
  v15 = v12[9];
  sub_10002CDC0(v12 + 5, v14);
  result = (*(v15 + 8))(v14, v15);
  if (v17)
  {
    v18 = sub_100569230(result, v17, v13);

    if (v18)
    {
      sub_1002A9938(v0[3], v0[2]);
    }

    else
    {
      v5 = sub_100010F88(33, 0xD00000000000001BLL, 0x800000010078F120);
      v7 = v6;
      sub_1000115C8();
      swift_allocError();
      *v8 = v5;
      *(v8 + 8) = v7;
      swift_willThrow();
    }

    v19 = v0[1];

    return v19();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1003E9CF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100005C00;

  return sub_1003E9A68(a1, a2, a3);
}

uint64_t sub_1003E9DA4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_1003E9DC4, 0, 0);
}

uint64_t sub_1003E9DC4()
{
  v1 = [objc_opt_self() standardUserDefaults];
  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 BOOLForKey:v2];

  if (v3)
  {
    if (qword_1009737E8 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_10000C4AC(v4, qword_10097BA28);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "### TESTING ONLY: skipARRanging is set, skip checking AR range", v7, 2u);
    }
  }

  sub_1002A9938(v0[3], v0[2]);
  v8 = v0[1];

  return v8();
}

uint64_t sub_1003E9F54(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100005C00;

  return sub_1003E9DA4(a1, a2);
}

uint64_t sub_1003E9FF4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_1003EA014, 0, 0);
}

id sub_1003EA014()
{
  result = [objc_opt_self() sharedMonitor];
  if (result)
  {
    v2 = result;
    v3 = [result screenOn];

    if (v3)
    {
      sub_1002A9938(v0[3], v0[2]);
      v4 = v0[1];
    }

    else
    {
      if (qword_1009737E8 != -1)
      {
        swift_once();
      }

      v5 = type metadata accessor for Logger();
      sub_10000C4AC(v5, qword_10097BA28);
      v6 = Logger.logObject.getter();
      v7 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        *v8 = 0;
        _os_log_impl(&_mh_execute_header, v6, v7, "Screen is off, cancelling unlock attempt", v8, 2u);
      }

      v9 = sub_100010F88(14, 0xD00000000000001BLL, 0x800000010078F4D0);
      v11 = v10;
      sub_1000115C8();
      swift_allocError();
      *v12 = v9;
      *(v12 + 8) = v11;
      swift_willThrow();
      v4 = v0[1];
    }

    return v4();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1003EA1E8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100005C04;

  return sub_1003E9FF4(a1, a2);
}

uint64_t sub_1003EA288(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_1003EA2A8, 0, 0);
}

id sub_1003EA2A8()
{
  result = [objc_opt_self() sharedMonitor];
  if (result)
  {
    v2 = result;
    v3 = [result screenOn];

    if (v3)
    {
      sub_1002A9938(v0[3], v0[2]);
      v4 = v0[1];
    }

    else
    {
      sub_1001EA8AC();
      if (qword_1009737E8 != -1)
      {
        swift_once();
      }

      v5 = type metadata accessor for Logger();
      sub_10000C4AC(v5, qword_10097BA28);
      v6 = Logger.logObject.getter();
      v7 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        *v8 = 0;
        _os_log_impl(&_mh_execute_header, v6, v7, "Screen is off, locking device", v8, 2u);
      }

      v9 = sub_100010F88(14, 0xD00000000000001BLL, 0x800000010078F4D0);
      v11 = v10;
      sub_1000115C8();
      swift_allocError();
      *v12 = v9;
      *(v12 + 8) = v11;
      swift_willThrow();
      v4 = v0[1];
    }

    return v4();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1003EA480(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100005C00;

  return sub_1003EA288(a1, a2);
}

uint64_t sub_1003EA520(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return _swift_task_switch(sub_1003EA544, 0, 0);
}

uint64_t sub_1003EA544()
{
  v24 = v0;
  v1 = v0[4];
  v2 = SFAuthenticationRegistrationSucceeded;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;
  v6 = *(v1 + *(type metadata accessor for SDAuthenticationCommonOperationInput() + 28));
  v7 = String.lowercased()();
  v8 = v2;

  v23[0] = v3;
  v23[1] = v5;
  v9._countAndFlagsBits = 46;
  v9._object = 0xE100000000000000;
  String.append(_:)(v9);
  String.append(_:)(v7);

  v10 = v3;
  if (qword_1009737E8 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_10000C4AC(v11, qword_10097BA28);

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v23[0] = v15;
    *v14 = 136315138;
    *(v14 + 4) = sub_10000C4E4(v10, v5, v23);
    _os_log_impl(&_mh_execute_header, v12, v13, "Posting darwin notification %s", v14, 0xCu);
    sub_10000C60C(v15);
  }

  v17 = v0[2];
  v16 = v0[3];
  v18 = CFNotificationCenterGetDarwinNotifyCenter();
  v19 = String._bridgeToObjectiveC()();

  CFNotificationCenterPostNotification(v18, v19, 0, 0, 1u);

  v20 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(v20, v8, 0, 0, 1u);

  sub_1002A9938(v16, v17);
  v21 = v0[1];

  return v21();
}

uint64_t sub_1003EA8AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100005C00;

  return sub_1003EA520(a1, a2, a3);
}

uint64_t sub_1003EA95C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_1003EA97C, 0, 0);
}

uint64_t sub_1003EA97C()
{
  if (qword_100973AE8 != -1)
  {
    swift_once();
  }

  return _swift_task_switch(sub_1003EAA0C, 0, 0);
}

uint64_t sub_1003EAA0C()
{
  sub_1002A9938(v0[3], v0[2]);
  v1 = v0[1];

  return v1();
}

uint64_t sub_1003EAA70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[12] = a2;
  v3[13] = a3;
  v3[11] = a1;
  return _swift_task_switch(sub_1003EAA94, 0, 0);
}

uint64_t sub_1003EAA94()
{
  v1 = v0[13];
  v2 = v0[11];
  sub_1002A9938(v0[12], (v0 + 2));
  v3 = v1[8];
  v4 = v1[9];
  sub_10002CDC0(v1 + 5, v3);
  v5 = (*(v4 + 16))(v3, v4);
  v7 = v6;
  v8 = v0[5];
  v9 = v0[6];
  sub_10002F5B4((v0 + 2), v8);
  v10 = (*(v9 + 32))(v0 + 7, v8, v9);
  v12 = *(v11 + 24);
  *(v11 + 16) = v5;
  *(v11 + 24) = v7;

  v10(v0 + 7, 0);
  v13 = v1[8];
  v14 = v1[9];
  sub_10002CDC0(v1 + 5, v13);
  v15 = (*(v14 + 24))(v13, v14);
  v17 = v16;
  v18 = v0[5];
  v19 = v0[6];
  sub_10002F5B4((v0 + 2), v18);
  v20 = (*(v19 + 32))(v0 + 7, v18, v19);
  v22 = *(v21 + 40);
  *(v21 + 32) = v15;
  *(v21 + 40) = v17;

  v20(v0 + 7, 0);
  v23 = v0[5];
  v24 = v0[6];
  v25 = sub_10002CDC0(v0 + 2, v23);
  v2[3] = v23;
  v2[4] = *(v24 + 8);
  v26 = sub_10002F604(v2);
  (*(*(v23 - 8) + 16))(v26, v25, v23);
  sub_10000C60C(v0 + 2);
  v27 = v0[1];

  return v27();
}

uint64_t sub_1003EAC9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100005C00;

  return sub_1003EAA70(a1, a2, a3);
}

uint64_t sub_1003EAD4C(uint64_t a1, uint64_t a2)
{
  *(v2 + 96) = a1;
  *(v2 + 104) = a2;
  return _swift_task_switch(sub_1003EAD6C, 0, 0);
}

uint64_t sub_1003EAD6C()
{
  v1 = v0[12];
  v2 = v0[13];
  sub_1002D63B0(v2, (v0 + 2));
  v3 = v2[3];
  v4 = v2[4];
  sub_10002CDC0(v2, v3);
  v5 = (*(v4 + 16))(v3, v4);
  v7 = v6;
  v8 = v0[5];
  v9 = v0[7];
  sub_10002F5B4((v0 + 2), v8);
  v10 = (*(v9 + 32))(v0 + 8, v8, v9);
  v12 = *(v11 + 72);
  *(v11 + 64) = v5;
  *(v11 + 72) = v7;

  v10(v0 + 8, 0);
  v13 = v0[5];
  v14 = v0[6];
  v15 = sub_10002CDC0(v0 + 2, v13);
  v1[3] = v13;
  v1[4] = *(v14 + 8);
  v16 = sub_10002F604(v1);
  (*(*(v13 - 8) + 16))(v16, v15, v13);
  sub_10000C60C(v0 + 2);
  v17 = v0[1];

  return v17();
}

uint64_t sub_1003EAEE8(uint64_t a1, uint64_t a2)
{
  *(v2 + 88) = a1;
  *(v2 + 96) = a2;
  return _swift_task_switch(sub_1003EAF08, 0, 0);
}

uint64_t sub_1003EAF08()
{
  v1 = v0[11];
  v2 = v0[12];
  sub_1002A9938(v2, (v0 + 2));
  v3 = sub_10002CDC0(v2, v2[3]);
  v4 = *(v3 + *(_s15VisionUnlockiOSV20HandleRequestContextVMa(0) + 44));
  v5 = v0[5];
  v6 = v0[6];
  sub_10002F5B4((v0 + 2), v5);
  v7 = (*(*(v6 + 8) + 32))(v0 + 7, v5);
  *(v8 + 48) = v4;
  *(v8 + 56) = 0;
  v7(v0 + 7, 0);
  v9 = v0[5];
  v10 = v0[6];
  v11 = sub_10002CDC0(v0 + 2, v9);
  v1[3] = v9;
  v1[4] = *(*(v10 + 8) + 8);
  v12 = sub_10002F604(v1);
  (*(*(v9 - 8) + 16))(v12, v11, v9);
  sub_10000C60C(v0 + 2);
  v13 = v0[1];

  return v13();
}

uint64_t sub_1003EB060(uint64_t a1, uint64_t a2)
{
  v2[11] = a1;
  v2[12] = a2;
  v3 = *(*(sub_10028088C(&qword_10097A7F0, &unk_1007FB600) - 8) + 64) + 15;
  v2[13] = swift_task_alloc();

  return _swift_task_switch(sub_1003EB0FC, 0, 0);
}

uint64_t sub_1003EB0FC()
{
  v1 = v0[13];
  v2 = v0[11];
  sub_1002A9938(v0[12], (v0 + 2));
  Date.init()();
  v3 = type metadata accessor for Date();
  (*(*(v3 - 8) + 56))(v1, 0, 1, v3);
  v4 = v0[5];
  v5 = v0[6];
  sub_10002F5B4((v0 + 2), v4);
  v6 = (*(v5 + 32))(v0 + 7, v4, v5);
  v8 = v7;
  v9 = type metadata accessor for SDAuthenticationSessionMetrics();
  sub_1003561CC(v1, v8 + *(v9 + 60));
  v6(v0 + 7, 0);
  v10 = v0[5];
  v11 = v0[6];
  v12 = sub_10002CDC0(v0 + 2, v10);
  v2[3] = v10;
  v2[4] = *(v11 + 8);
  v13 = sub_10002F604(v2);
  (*(*(v10 - 8) + 16))(v13, v12, v10);
  sub_10000C60C(v0 + 2);

  v14 = v0[1];

  return v14();
}

uint64_t sub_1003EB294(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100005C00;

  return sub_1003EB060(a1, a2);
}

uint64_t sub_1003EB334(uint64_t a1, uint64_t a2)
{
  v2[11] = a1;
  v2[12] = a2;
  v3 = *(*(sub_10028088C(&qword_10097A7F0, &unk_1007FB600) - 8) + 64) + 15;
  v2[13] = swift_task_alloc();

  return _swift_task_switch(sub_1003EB3D0, 0, 0);
}

uint64_t sub_1003EB3D0()
{
  v1 = v0[13];
  v2 = v0[11];
  sub_1002A9938(v0[12], (v0 + 2));
  Date.init()();
  v3 = type metadata accessor for Date();
  (*(*(v3 - 8) + 56))(v1, 0, 1, v3);
  v4 = v0[5];
  v5 = v0[6];
  sub_10002F5B4((v0 + 2), v4);
  v6 = (*(v5 + 32))(v0 + 7, v4, v5);
  v8 = v7;
  v9 = type metadata accessor for SDAuthenticationSessionMetrics();
  sub_1003561CC(v1, v8 + *(v9 + 48));
  v6(v0 + 7, 0);
  v10 = v0[5];
  v11 = v0[6];
  v12 = sub_10002CDC0(v0 + 2, v10);
  v2[3] = v10;
  v2[4] = *(v11 + 8);
  v13 = sub_10002F604(v2);
  (*(*(v10 - 8) + 16))(v13, v12, v10);
  sub_10000C60C(v0 + 2);

  v14 = v0[1];

  return v14();
}

uint64_t sub_1003EB568(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100005C00;

  return sub_1003EB334(a1, a2);
}

uint64_t sub_1003EB608(uint64_t a1, uint64_t a2)
{
  v2[26] = a1;
  v2[27] = a2;
  v3 = *(*(sub_10028088C(&qword_10097A7F0, &unk_1007FB600) - 8) + 64) + 15;
  v2[28] = swift_task_alloc();
  v4 = type metadata accessor for Date();
  v2[29] = v4;
  v5 = *(v4 - 8);
  v2[30] = v5;
  v6 = *(v5 + 64) + 15;
  v2[31] = swift_task_alloc();
  v2[32] = swift_task_alloc();

  return _swift_task_switch(sub_1003EB70C, 0, 0);
}

uint64_t sub_1003EB70C()
{
  v1 = *(v0 + 256);
  v2 = *(v0 + 216);
  sub_1002A9938(v2, v0 + 16);
  Date.init()();
  sub_1002A9938(v2, v0 + 96);
  sub_10028088C(&unk_100981960, &qword_100800390);
  sub_10028088C(&qword_10097BE48, &qword_100800398);
  if (swift_dynamicCast())
  {
    v4 = *(v0 + 248);
    v3 = *(v0 + 256);
    v5 = *(v0 + 232);
    v6 = *(v0 + 240);
    sub_1000121F8((v0 + 136), v0 + 56);
    v7 = *(v0 + 80);
    v8 = *(v0 + 88);
    sub_10002CDC0((v0 + 56), v7);
    (*(v8 + 16))(v7, v8);
    (*(v6 + 8))(v3, v5);
    (*(v6 + 32))(v3, v4, v5);
    sub_10000C60C((v0 + 56));
  }

  else
  {
    *(v0 + 168) = 0;
    *(v0 + 152) = 0u;
    *(v0 + 136) = 0u;
    sub_100005508(v0 + 136, &qword_10097BE50, &qword_1008003A0);
  }

  v9 = *(v0 + 256);
  v11 = *(v0 + 232);
  v10 = *(v0 + 240);
  v12 = *(v0 + 224);
  v13 = *(v0 + 208);
  (*(v10 + 16))(v12, v9, v11);
  (*(v10 + 56))(v12, 0, 1, v11);
  v14 = *(v0 + 40);
  v15 = *(v0 + 48);
  sub_10002F5B4(v0 + 16, v14);
  v16 = (*(v15 + 32))(v0 + 176, v14, v15);
  v18 = v17;
  v19 = type metadata accessor for SDAuthenticationSessionMetrics();
  sub_1003561CC(v12, v18 + *(v19 + 64));
  v16(v0 + 176, 0);
  v20 = *(v0 + 40);
  v21 = *(v0 + 48);
  v22 = sub_10002CDC0((v0 + 16), v20);
  v13[3] = v20;
  v13[4] = *(v21 + 8);
  v23 = sub_10002F604(v13);
  (*(*(v20 - 8) + 16))(v23, v22, v20);
  (*(v10 + 8))(v9, v11);
  sub_10000C60C((v0 + 16));

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_1003EBA00(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100005C00;

  return sub_1003EB608(a1, a2);
}

uint64_t sub_1003EBAA0(uint64_t a1, uint64_t a2)
{
  v2[11] = a1;
  v2[12] = a2;
  v3 = *(*(sub_10028088C(&qword_10097A7F0, &unk_1007FB600) - 8) + 64) + 15;
  v2[13] = swift_task_alloc();

  return _swift_task_switch(sub_1003EBB3C, 0, 0);
}

uint64_t sub_1003EBB3C()
{
  v1 = v0[13];
  v2 = v0[11];
  sub_1002A9938(v0[12], (v0 + 2));
  Date.init()();
  v3 = type metadata accessor for Date();
  (*(*(v3 - 8) + 56))(v1, 0, 1, v3);
  v4 = v0[5];
  v5 = v0[6];
  sub_10002F5B4((v0 + 2), v4);
  v6 = (*(v5 + 32))(v0 + 7, v4, v5);
  v8 = v7;
  v9 = type metadata accessor for SDAuthenticationSessionMetrics();
  sub_1003561CC(v1, v8 + *(v9 + 68));
  v6(v0 + 7, 0);
  v10 = v0[5];
  v11 = v0[6];
  v12 = sub_10002CDC0(v0 + 2, v10);
  v2[3] = v10;
  v2[4] = *(v11 + 8);
  v13 = sub_10002F604(v2);
  (*(*(v10 - 8) + 16))(v13, v12, v10);
  sub_10000C60C(v0 + 2);

  v14 = v0[1];

  return v14();
}

uint64_t sub_1003EBCD4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100005C00;

  return sub_1003EBAA0(a1, a2);
}

uint64_t sub_1003EBD74(uint64_t a1, uint64_t a2)
{
  v2[11] = a1;
  v2[12] = a2;
  v3 = *(*(sub_10028088C(&qword_10097A7F0, &unk_1007FB600) - 8) + 64) + 15;
  v2[13] = swift_task_alloc();

  return _swift_task_switch(sub_1003EBE10, 0, 0);
}

uint64_t sub_1003EBE10()
{
  v1 = v0[13];
  v2 = v0[11];
  sub_1002A9938(v0[12], (v0 + 2));
  Date.init()();
  v3 = type metadata accessor for Date();
  (*(*(v3 - 8) + 56))(v1, 0, 1, v3);
  v4 = v0[5];
  v5 = v0[6];
  sub_10002F5B4((v0 + 2), v4);
  v6 = (*(v5 + 32))(v0 + 7, v4, v5);
  v8 = v7;
  v9 = type metadata accessor for SDAuthenticationSessionMetrics();
  sub_1003561CC(v1, v8 + *(v9 + 72));
  v6(v0 + 7, 0);
  v10 = v0[5];
  v11 = v0[6];
  v12 = sub_10002CDC0(v0 + 2, v10);
  v2[3] = v10;
  v2[4] = *(v11 + 8);
  v13 = sub_10002F604(v2);
  (*(*(v10 - 8) + 16))(v13, v12, v10);
  sub_10000C60C(v0 + 2);

  v14 = v0[1];

  return v14();
}

uint64_t sub_1003EBFA8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100005C00;

  return sub_1003EBD74(a1, a2);
}

uint64_t sub_1003EC048(uint64_t a1, uint64_t a2)
{
  v2[11] = a1;
  v2[12] = a2;
  v3 = *(*(sub_10028088C(&qword_10097A7F0, &unk_1007FB600) - 8) + 64) + 15;
  v2[13] = swift_task_alloc();

  return _swift_task_switch(sub_1003EC0E4, 0, 0);
}

uint64_t sub_1003EC0E4()
{
  v1 = v0[13];
  v2 = v0[11];
  sub_1002A9938(v0[12], (v0 + 2));
  Date.init()();
  v3 = type metadata accessor for Date();
  (*(*(v3 - 8) + 56))(v1, 0, 1, v3);
  v4 = v0[5];
  v5 = v0[6];
  sub_10002F5B4((v0 + 2), v4);
  v6 = (*(v5 + 32))(v0 + 7, v4, v5);
  v8 = v7;
  v9 = type metadata accessor for SDAuthenticationSessionMetrics();
  sub_1003561CC(v1, v8 + *(v9 + 76));
  v6(v0 + 7, 0);
  v10 = v0[5];
  v11 = v0[6];
  v12 = sub_10002CDC0(v0 + 2, v10);
  v2[3] = v10;
  v2[4] = *(v11 + 8);
  v13 = sub_10002F604(v2);
  (*(*(v10 - 8) + 16))(v13, v12, v10);
  sub_10000C60C(v0 + 2);

  v14 = v0[1];

  return v14();
}

uint64_t sub_1003EC27C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100005C00;

  return sub_1003EC048(a1, a2);
}

uint64_t sub_1003EC31C(uint64_t a1, uint64_t a2)
{
  v2[12] = a1;
  v2[13] = a2;
  v3 = *(*(sub_10028088C(&qword_10097A7F0, &unk_1007FB600) - 8) + 64) + 15;
  v2[14] = swift_task_alloc();

  return _swift_task_switch(sub_1003EC3B8, 0, 0);
}

uint64_t sub_1003EC3B8()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];
  sub_1002D63B0(v2, (v0 + 2));
  v4 = v2[3];
  v5 = v2[5];
  sub_10002CDC0(v2, v4);
  (*(v5 + 16))(v4, v5);
  v6 = type metadata accessor for Date();
  (*(*(v6 - 8) + 56))(v1, 0, 1, v6);
  v7 = v0[5];
  v8 = v0[6];
  sub_10002F5B4((v0 + 2), v7);
  v9 = (*(v8 + 32))(v0 + 8, v7, v8);
  v11 = v10;
  v12 = type metadata accessor for SDAuthenticationSessionMetrics();
  sub_1003561CC(v1, v11 + *(v12 + 108));
  v9(v0 + 8, 0);
  v13 = v0[5];
  v14 = v0[6];
  v15 = sub_10002CDC0(v0 + 2, v13);
  v3[3] = v13;
  v3[4] = *(v14 + 8);
  v16 = sub_10002F604(v3);
  (*(*(v13 - 8) + 16))(v16, v15, v13);
  sub_10000C60C(v0 + 2);

  v17 = v0[1];

  return v17();
}

uint64_t sub_1003EC584(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100005C00;

  return sub_1003EC31C(a1, a2);
}

uint64_t sub_1003EC624(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[27] = a2;
  v3[28] = a3;
  v3[26] = a1;
  v4 = type metadata accessor for SDAuthenticationSessionMetrics();
  v3[29] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[30] = swift_task_alloc();
  v6 = *(*(sub_10028088C(&qword_10097A7F0, &unk_1007FB600) - 8) + 64) + 15;
  v3[31] = swift_task_alloc();

  return _swift_task_switch(sub_1003EC6F4, 0, 0);
}

uint64_t sub_1003EC6F4()
{
  v1 = *(v0 + 216);
  sub_1002A9938(v1, *(v0 + 208));
  sub_1002A9938(v1, v0 + 56);
  sub_10028088C(&qword_1009758D8, &unk_1007F8C30);
  sub_10028088C(&unk_100981960, &qword_100800390);
  if (swift_dynamicCast())
  {
    v2 = *(v0 + 240);
    v3 = *(v0 + 248);
    v4 = *(v0 + 224);
    v5 = *(v0 + 232);
    v6 = *(v0 + 208);
    sub_1000121F8((v0 + 96), v0 + 16);
    Date.init()();
    v7 = type metadata accessor for Date();
    (*(*(v7 - 8) + 56))(v3, 0, 1, v7);
    v8 = *(v0 + 40);
    v9 = *(v0 + 48);
    sub_10002F5B4(v0 + 16, v8);
    v10 = (*(v9 + 32))(v0 + 176, v8, v9);
    sub_1003561CC(v3, v11 + *(v5 + 52));
    v10(v0 + 176, 0);
    v12 = *(v0 + 40);
    v13 = *(v0 + 48);
    sub_10002CDC0((v0 + 16), v12);
    (*(v13 + 16))(v12, v13);
    v14 = type metadata accessor for SDAuthenticationCommonOperationInput();
    sub_100666950(v4 + *(v14 + 24));
    sub_1003FC968(v2, type metadata accessor for SDAuthenticationSessionMetrics);
    v15 = *(v0 + 40);
    v16 = *(v0 + 48);
    sub_10002CDC0((v0 + 16), v15);
    (*(v16 + 16))(v15, v16);
    v17 = sub_100668FE8();
    [v17 submitEvent];

    sub_1003FC968(v2, type metadata accessor for SDAuthenticationSessionMetrics);
    v18 = *(v0 + 40);
    v19 = *(v0 + 48);
    v20 = sub_10002CDC0((v0 + 16), v18);
    *(v0 + 160) = v18;
    *(v0 + 168) = *(v19 + 8);
    v21 = sub_10002F604((v0 + 136));
    (*(*(v18 - 8) + 16))(v21, v20, v18);
    sub_10000C60C(v6);
    sub_1000121F8((v0 + 136), v6);
    sub_10000C60C((v0 + 16));
  }

  else
  {
    *(v0 + 128) = 0;
    *(v0 + 96) = 0u;
    *(v0 + 112) = 0u;
    sub_100005508(v0 + 96, &qword_10097BE90, &qword_100807D20);
  }

  v23 = *(v0 + 240);
  v22 = *(v0 + 248);

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_1003ECA04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100005C00;

  return sub_1003EC624(a1, a2, a3);
}

uint64_t sub_1003ECAB4(uint64_t a1, uint64_t a2)
{
  *(v2 + 136) = a1;
  *(v2 + 144) = a2;
  return _swift_task_switch(sub_1003ECAD4, 0, 0);
}

uint64_t sub_1003ECAD4()
{
  sub_1002A9938(*(v0 + 144), v0 + 56);
  sub_10028088C(&qword_10097BE58, &qword_1008003D8);
  sub_10028088C(&qword_10097BE60, &qword_1008003E0);
  v1 = swift_dynamicCast();
  v2 = *(v0 + 144);
  if (v1)
  {
    goto LABEL_5;
  }

  *(v0 + 128) = 0;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0u;
  sub_100005508(v0 + 96, &qword_10097BE68, &qword_1008003E8);
  sub_1002A9938(v2, v0 + 56);
  sub_10028088C(&qword_10097BE70, &qword_1008003F0);
  v3 = swift_dynamicCast();
  v2 = *(v0 + 144);
  if (v3)
  {
    goto LABEL_5;
  }

  *(v0 + 128) = 0;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0u;
  sub_100005508(v0 + 96, &qword_10097BE78, &qword_1008003F8);
  sub_1002A9938(v2, v0 + 56);
  sub_10028088C(&qword_10097BE80, &qword_100800400);
  v4 = swift_dynamicCast();
  v2 = *(v0 + 144);
  if (v4)
  {
LABEL_5:
    v5 = *(v0 + 136);
    sub_1000121F8((v0 + 96), v0 + 16);
    v6 = *(v0 + 40);
    v7 = *(v0 + 48);
    sub_10002F5B4(v0 + 16, v6);
    v8 = (*(v7 + 24))(v6, v7);
    v9 = v2[3];
    v10 = v2[4];
    sub_10002CDC0(v2, v9);
    v11 = (*(v10 + 16))(v9, v10);
    v13 = v12;
    isa = Data._bridgeToObjectiveC()().super.isa;
    sub_100026AC0(v11, v13);
    [v8 setAwdlInfo:isa];

    v15 = *(v0 + 40);
    v16 = *(v0 + 48);
    v17 = sub_10002CDC0((v0 + 16), v15);
    v5[3] = v15;
    v5[4] = *(v16 + 8);
    v18 = sub_10002F604(v5);
    (*(*(v15 - 8) + 16))(v18, v17, v15);
    sub_10000C60C((v0 + 16));
    v19 = *(v0 + 8);
  }

  else
  {
    *(v0 + 128) = 0;
    *(v0 + 96) = 0u;
    *(v0 + 112) = 0u;
    sub_100005508(v0 + 96, &qword_10097BE88, &qword_100800408);
    _StringGuts.grow(_:)(162);
    *(v0 + 16) = 0;
    *(v0 + 24) = 0xE000000000000000;
    _print_unlocked<A, B>(_:_:)();
    v21._object = 0x800000010078EFD0;
    v21._countAndFlagsBits = 0xD0000000000000A0;
    String.append(_:)(v21);
    v22 = sub_100010F88(10, *(v0 + 16), *(v0 + 24));
    v24 = v23;
    sub_1000115C8();
    swift_allocError();
    *v25 = v22;
    *(v25 + 8) = v24;
    swift_willThrow();
    v19 = *(v0 + 8);
  }

  return v19();
}

uint64_t sub_1003ECED0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100005C00;

  return sub_1003ECAB4(a1, a2);
}

uint64_t sub_1003ECF70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[93] = a3;
  v3[92] = a2;
  v3[91] = a1;
  v4 = type metadata accessor for RangingMetrics(0);
  v3[94] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[95] = swift_task_alloc();

  return _swift_task_switch(sub_1003ED00C, 0, 0);
}

uint64_t sub_1003ED00C()
{
  sub_1002A9938(*(v0 + 736), v0 + 112);
  v1 = *(v0 + 136);
  v2 = *(v0 + 144);
  sub_10002CDC0((v0 + 112), v1);
  v3 = (*(v2 + 16))(v1, v2);
  v5 = v4;
  isa = Data._bridgeToObjectiveC()().super.isa;
  sub_100026AC0(v3, v5);
  v7 = sub_1001114F4(isa);

  if (!v7)
  {
    v23 = 0xD000000000000033;
    v24 = 0x800000010078F470;
    v25 = 1;
    goto LABEL_9;
  }

  v8 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 768) = v8;

  v9 = [objc_opt_self() standardUserDefaults];
  v10 = String._bridgeToObjectiveC()();
  v11 = [v9 BOOLForKey:v10];

  if (v11)
  {

    if (qword_1009737E8 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_10000C4AC(v12, qword_10097BA28);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "Default classCUnlockSkipRanging is set. Skipping ranging", v15, 2u);
    }

    v16 = *(v0 + 728);

    v17 = *(v0 + 136);
    v18 = *(v0 + 144);
    v19 = sub_10002CDC0((v0 + 112), v17);
    v16[3] = v17;
    v16[4] = *(*(v18 + 8) + 8);
    v20 = sub_10002F604(v16);
    (*(*(v17 - 8) + 16))(v20, v19, v17);
    v21 = *(v0 + 760);
    sub_10000C60C((v0 + 112));

    v22 = *(v0 + 8);
    goto LABEL_10;
  }

  sub_1002A9938(*(v0 + 736), v0 + 192);
  *(v0 + 776) = sub_10028088C(&qword_10097C2A8, &qword_100800FB8);
  sub_10028088C(&qword_10097C2B0, &qword_100800FC0);
  if (!swift_dynamicCast())
  {
    v47 = *(v0 + 744);
    *(v0 + 232) = 0u;
    *(v0 + 248) = 0u;
    *(v0 + 264) = 0;
    sub_100005508(v0 + 232, &qword_10097C2B8, &qword_100800FC8);
    v48 = type metadata accessor for SDAuthenticationCommonOperationInput();
    sub_1003FBDAC(v47 + *(v48 + 36), v0 + 312);
    if (*(v0 + 336))
    {
      v32 = (v0 + 272);
      sub_1000121F8((v0 + 312), v0 + 272);
      v49 = *sub_10002CDC0((v0 + 272), *(v0 + 296));
      v35 = sub_1003FDBE8();
      goto LABEL_15;
    }

    sub_100005508(v0 + 312, &qword_1009819B0, &qword_100800360);
    v23 = 0xD000000000000027;
    v24 = 0x800000010078EF00;
    v25 = 37;
LABEL_9:
    v26 = sub_100010F88(v25, v23, v24);
    v28 = v27;
    sub_1000115C8();
    swift_allocError();
    *v29 = v26;
    *(v29 + 8) = v28;
    swift_willThrow();
    v30 = *(v0 + 760);
    sub_10000C60C((v0 + 112));

    v22 = *(v0 + 8);
LABEL_10:

    return v22();
  }

  v32 = (v0 + 152);
  sub_1000121F8((v0 + 232), v0 + 152);
  v33 = *(v0 + 176);
  v34 = *(v0 + 184);
  sub_10002CDC0((v0 + 152), v33);
  v35 = (*(v34 + 16))(v33, v34);
LABEL_15:
  v37 = v35;
  v38 = v36;
  sub_10000C60C(v32);
  *(v0 + 784) = v38;
  *(v0 + 792) = v37;
  if (qword_1009737E8 != -1)
  {
    swift_once();
  }

  v39 = type metadata accessor for Logger();
  sub_10000C4AC(v39, qword_10097BA28);
  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    *v42 = 0;
    _os_log_impl(&_mh_execute_header, v40, v41, "Starting ranging as initiator", v42, 2u);
  }

  v44 = *(v0 + 136);
  v43 = *(v0 + 144);
  sub_10002CDC0((v0 + 112), v44);
  (*(*(v43 + 8) + 16))(v44);
  v45 = *sub_10002CDC0((v0 + 352), *(v0 + 376));
  v46 = swift_task_alloc();
  *(v0 + 800) = v46;
  *v46 = v0;
  v46[1] = sub_1003ED628;

  return sub_10042CEDC(v8, v37, v38);
}

uint64_t sub_1003ED628(char a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 800);
  v6 = *v2;
  *(v4 + 816) = a1;
  *(v4 + 808) = v1;

  v7 = *(v3 + 768);

  if (v1)
  {
    v8 = sub_1003EDC94;
  }

  else
  {
    v8 = sub_1003ED768;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_1003ED768()
{
  v1 = *(v0 + 776);
  sub_10000C60C((v0 + 352));
  sub_1002A9938(v0 + 112, v0 + 392);
  sub_10028088C(&qword_10097C2C0, &qword_100800FD8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    *(v0 + 80) = 0u;
    *(v0 + 96) = 0u;
    *(v0 + 64) = 0u;
    sub_100005508(v0 + 64, &qword_10097C2C8, &qword_100800FE0);
    if ((*(v0 + 816) & 1) == 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v24 = *(v0 + 776);
    sub_1002A9938(v0 + 112, v0 + 472);
    sub_10028088C(&qword_10097C2D0, &qword_100800FE8);
    v25 = swift_dynamicCast();
    v26 = *(v0 + 792);
    v27 = *(v0 + 784);
    v28 = *(v0 + 728);
    if (v25)
    {
      sub_1000121F8((v0 + 512), v0 + 432);
      v29 = *(v0 + 456);
      v30 = *(v0 + 464);
      sub_10002F5B4(v0 + 432, v29);
      (*(v30 + 16))(1, v29, v30);
      sub_100026AC0(v26, v27);
      sub_1002A9938(v0 + 432, v0 + 552);
      sub_10028088C(&qword_1009758D8, &unk_1007F8C30);
      swift_dynamicCast();
      sub_10000C60C((v0 + 432));
    }

    else
    {
      *(v0 + 544) = 0;
      *(v0 + 512) = 0u;
      *(v0 + 528) = 0u;
      sub_100005508(v0 + 512, &qword_10097C2D8, &qword_100800FF0);
      v31 = *(v0 + 136);
      v32 = *(v0 + 144);
      v33 = sub_10002CDC0((v0 + 112), v31);
      v28[3] = v31;
      v28[4] = *(*(v32 + 8) + 8);
      v34 = sub_10002F604(v28);
      (*(*(v31 - 8) + 16))(v34, v33, v31);
      sub_100026AC0(v26, v27);
    }

    v35 = *(v0 + 760);
    sub_10000C60C((v0 + 112));

    v23 = *(v0 + 8);
    goto LABEL_9;
  }

  v2 = *(v0 + 760);
  v3 = *(v0 + 752);
  sub_1002D6398((v0 + 64), (v0 + 16));
  v5 = *(v0 + 136);
  v4 = *(v0 + 144);
  sub_10002CDC0((v0 + 112), v5);
  (*(*(v4 + 8) + 16))(v5);
  v6 = *sub_10002CDC0((v0 + 592), *(v0 + 616));
  v7 = OBJC_IVAR____TtC16DaemoniOSLibrary30SDAuthenticationRangingSession_metrics;
  swift_beginAccess();
  sub_1003FC900(v6 + v7, v2, type metadata accessor for RangingMetrics);
  v8 = *(v0 + 40);
  v9 = *(v0 + 48);
  sub_10002F5B4(v0 + 16, v8);
  v10 = (*(v9 + 32))(v0 + 672, v8, v9);
  v12 = v11;
  v13 = type metadata accessor for SDAuthenticationSessionMetrics();
  sub_1000168F4(v2, v12 + v13[20]);
  sub_1000168F4(v2 + v3[5], v12 + v13[21]);
  sub_1000168F4(v2 + v3[6], v12 + v13[22]);
  *(v12 + v13[23]) = *(v2 + v3[7]);
  sub_1000168F4(v2 + v3[8], v12 + v13[24]);
  sub_1000168F4(v2 + v3[9], v12 + v13[25]);
  v14 = v2 + v3[10];
  LODWORD(v13) = *v14;
  LOBYTE(v3) = *(v14 + 4);
  sub_1003FC968(v2, type metadata accessor for RangingMetrics);
  *(v12 + 84) = v13;
  *(v12 + 88) = v3;
  v10(v0 + 672, 0);
  sub_10000C60C((v0 + 592));
  v15 = *(v0 + 40);
  v16 = *(v0 + 56);
  v17 = sub_10002CDC0((v0 + 16), v15);
  *(v0 + 656) = v15;
  *(v0 + 664) = v16;
  v18 = sub_10002F604((v0 + 632));
  (*(*(v15 - 8) + 16))(v18, v17, v15);
  sub_10000C60C((v0 + 112));
  sub_1000121F8((v0 + 632), v0 + 112);
  sub_10000C60C((v0 + 16));
  if (*(v0 + 816))
  {
    goto LABEL_5;
  }

LABEL_3:
  v19 = *(v0 + 792);
  v20 = *(v0 + 784);
  type metadata accessor for SFAuthenticationErrorCode(0);
  sub_1003FCA70(&qword_100981FF0, type metadata accessor for SFAuthenticationErrorCode);
  swift_allocError();
  *v21 = 9;
  swift_willThrow();
  sub_100026AC0(v19, v20);
  v22 = *(v0 + 760);
  sub_10000C60C((v0 + 112));

  v23 = *(v0 + 8);
LABEL_9:

  return v23();
}

uint64_t sub_1003EDC94()
{
  sub_100026AC0(v0[99], v0[98]);
  sub_10000C60C(v0 + 44);
  v1 = v0[101];
  v2 = v0[95];
  sub_10000C60C(v0 + 14);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1003EDD18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100005C00;

  return sub_1003ECF70(a1, a2, a3);
}

uint64_t sub_1003EDDC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[33] = a2;
  v3[34] = a3;
  v3[32] = a1;
  return _swift_task_switch(sub_1003EDDEC, 0, 0);
}

uint64_t sub_1003EDDEC()
{
  v1 = *(v0 + 264);
  v2 = v1[3];
  v3 = v1[4];
  sub_10002CDC0(v1, v2);
  v4 = (*(v3 + 16))(v2, v3);
  v6 = v5;
  isa = Data._bridgeToObjectiveC()().super.isa;
  sub_100026AC0(v4, v6);
  v8 = sub_1001114F4(isa);

  if (v8)
  {
    v9 = *(v0 + 264);
    v10 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    *(v0 + 280) = v10;

    sub_1002A9938(v9, v0 + 56);
    sub_10028088C(&qword_10097C2A8, &qword_100800FB8);
    sub_10028088C(&qword_10097C2B0, &qword_100800FC0);
    if (swift_dynamicCast())
    {
      v11 = (v0 + 16);
      sub_1000121F8((v0 + 96), v0 + 16);
      v12 = *(v0 + 40);
      v13 = *(v0 + 48);
      sub_10002CDC0((v0 + 16), v12);
      v14 = (*(v13 + 16))(v12, v13);
LABEL_4:
      v16 = v14;
      v17 = v15;
      sub_10000C60C(v11);
      *(v0 + 288) = v17;
      *(v0 + 296) = v16;
      if (qword_1009737E8 != -1)
      {
        swift_once();
      }

      v18 = type metadata accessor for Logger();
      *(v0 + 304) = sub_10000C4AC(v18, qword_10097BA28);
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&_mh_execute_header, v19, v20, "Starting ranging", v21, 2u);
      }

      v22 = *(v0 + 264);

      v24 = v1[3];
      v23 = v1[4];
      sub_10002CDC0(v22, v24);
      (*(*(v23 + 8) + 16))(v24);
      v25 = *sub_10002CDC0((v0 + 216), *(v0 + 240));
      v26 = swift_task_alloc();
      *(v0 + 312) = v26;
      *v26 = v0;
      v26[1] = sub_1003EE248;

      return sub_10042EF1C(v10, v16, v17);
    }

    v31 = *(v0 + 272);
    *(v0 + 96) = 0u;
    *(v0 + 112) = 0u;
    *(v0 + 128) = 0;
    sub_100005508(v0 + 96, &qword_10097C2B8, &qword_100800FC8);
    v32 = type metadata accessor for SDAuthenticationCommonOperationInput();
    sub_1003FBDAC(v31 + *(v32 + 36), v0 + 176);
    if (*(v0 + 200))
    {
      v11 = (v0 + 136);
      sub_1000121F8((v0 + 176), v0 + 136);
      v33 = *sub_10002CDC0((v0 + 136), *(v0 + 160));
      v14 = sub_1003FDBE8();
      goto LABEL_4;
    }

    sub_100005508(v0 + 176, &qword_1009819B0, &qword_100800360);
    v29 = 0x800000010078EF00;
    v30 = 37;
    v28 = 0xD000000000000027;
  }

  else
  {
    v28 = 0xD000000000000033;
    v29 = 0x800000010078F470;
    v30 = 1;
  }

  v34 = sub_100010F88(v30, v28, v29);
  v36 = v35;
  sub_1000115C8();
  swift_allocError();
  *v37 = v34;
  *(v37 + 8) = v36;
  swift_willThrow();
  v38 = *(v0 + 8);

  return v38();
}

uint64_t sub_1003EE248()
{
  v2 = *v1;
  v3 = *(*v1 + 312);
  v4 = *v1;
  *(*v1 + 320) = v0;

  v5 = *(v2 + 280);

  if (v0)
  {
    v6 = sub_1003EE4D0;
  }

  else
  {
    v6 = sub_1003EE37C;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1003EE37C()
{
  v1 = v0[38];
  sub_10000C60C(v0 + 27);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Ranging started", v4, 2u);
  }

  v6 = v0[36];
  v5 = v0[37];
  v8 = v0[32];
  v7 = v0[33];

  v9 = v7[3];
  v10 = v7[4];
  v11 = sub_10002CDC0(v7, v9);
  v8[3] = v9;
  v8[4] = *(*(v10 + 8) + 8);
  v12 = sub_10002F604(v8);
  (*(*(v9 - 8) + 16))(v12, v11, v9);
  sub_100026AC0(v5, v6);
  v13 = v0[1];

  return v13();
}

uint64_t sub_1003EE4D0()
{
  sub_100026AC0(v0[37], v0[36]);
  sub_10000C60C(v0 + 27);
  v1 = v0[40];
  v2 = v0[1];

  return v2();
}

uint64_t sub_1003EE53C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100005C00;

  return sub_1003EDDC8(a1, a2, a3);
}

uint64_t sub_1003EE5EC(uint64_t a1, uint64_t a2)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return _swift_task_switch(sub_1003EE60C, 0, 0);
}

uint64_t sub_1003EE60C()
{
  v1 = v0[8];
  v2 = v1[3];
  v3 = v1[4];
  sub_10002CDC0(v1, v2);
  (*(v3 + 16))(v2, v3);
  v4 = *sub_10002CDC0(v0 + 2, v0[5]);
  LOBYTE(v4) = sub_10066A140();
  sub_10000C60C(v0 + 2);
  if (v4)
  {
    v5 = v0[7];
    v6 = v1[3];
    v7 = v1[4];
    v8 = sub_10002CDC0(v0[8], v6);
    v5[3] = v6;
    v5[4] = *(v7 + 8);
    v9 = sub_10002F604(v5);
    (*(*(v6 - 8) + 16))(v9, v8, v6);
  }

  else
  {
    v11 = sub_100010F88(33, 0x62616E6520746F4ELL, 0xEB0000000064656CLL);
    v13 = v12;
    sub_1000115C8();
    swift_allocError();
    *v14 = v11;
    *(v14 + 8) = v13;
    swift_willThrow();
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_1003EE798(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100005C00;

  return sub_1003EE5EC(a1, a2);
}

uint64_t sub_1003EE838(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = *(*(sub_10028088C(&qword_10097A7F0, &unk_1007FB600) - 8) + 64) + 15;
  v2[4] = swift_task_alloc();
  v2[5] = swift_task_alloc();
  v2[6] = swift_task_alloc();
  v4 = type metadata accessor for Date();
  v2[7] = v4;
  v5 = *(v4 - 8);
  v2[8] = v5;
  v6 = *(v5 + 64) + 15;
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();

  return _swift_task_switch(sub_1003EE954, 0, 0);
}

uint64_t sub_1003EE954()
{
  v66 = v0;
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[6];
  v4 = v0[3];
  v5 = v4[3];
  v6 = v4[4];
  sub_10002CDC0(v4, v5);
  (*(v6 + 16))(v5, v6);
  v7 = *(v2 + 48);
  if (v7(v3, 1, v1) == 1)
  {
    sub_100005508(v0[6], &qword_10097A7F0, &unk_1007FB600);
    v8 = sub_100010F88(11, 0x7473696765726E55, 0xEC00000064657265);
    v10 = v9;
    sub_1000115C8();
    swift_allocError();
    *v11 = v8;
    *(v11 + 8) = v10;
    swift_willThrow();
LABEL_7:
    v43 = v0[9];
    v42 = v0[10];
    v45 = v0[5];
    v44 = v0[6];
    v46 = v0[4];

    v47 = v0[1];
    goto LABEL_8;
  }

  v12 = v0[7];
  v13 = v0[5];
  v14 = v0[3];
  v15 = *(v0[8] + 32);
  v15(v0[10], v0[6], v12);
  v64 = v4;
  v16 = v4[3];
  v17 = v14[5];
  sub_10002CDC0(v14, v16);
  (*(v17 + 16))(v16, v17);
  v18 = v7(v13, 1, v12);
  v19 = v0[10];
  if (v18 == 1)
  {
    v20 = v0[7];
    v21 = v0[8];
    sub_100005508(v0[5], &qword_10097A7F0, &unk_1007FB600);
    _StringGuts.grow(_:)(38);

    strcpy(v65, "Registered on ");
    HIBYTE(v65[1]) = -18;
    sub_1003FCA70(&qword_100983290, &type metadata accessor for Date);
    v22._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v22);

    v23._countAndFlagsBits = 0xD000000000000016;
    v23._object = 0x800000010078F560;
    String.append(_:)(v23);
    v24 = sub_100010F88(36, v65[0], v65[1]);
    v26 = v25;
    sub_1000115C8();
    swift_allocError();
    *v27 = v24;
    *(v27 + 8) = v26;
    swift_willThrow();
    (*(v21 + 8))(v19, v20);
    goto LABEL_7;
  }

  v15(v0[9], v0[5], v0[7]);
  sub_1003FCA70(&qword_10097E910, &type metadata accessor for Date);
  if (dispatch thunk of static Comparable.< infix(_:_:)())
  {
    v60 = v0[10];
    v61 = v0[9];
    v29 = v0[7];
    v28 = v0[8];
    v31 = v0[3];
    v30 = v0[4];
    v65[0] = 0;
    v65[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(57);
    v32._countAndFlagsBits = 0xD00000000000001CLL;
    v32._object = 0x800000010078F580;
    String.append(_:)(v32);
    sub_1003FCA70(&qword_100983290, &type metadata accessor for Date);
    v33._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v33);

    v34._object = 0x800000010078F5A0;
    v34._countAndFlagsBits = 0xD000000000000010;
    String.append(_:)(v34);
    v35 = v64[3];
    v36 = v14[5];
    sub_10002CDC0(v31, v35);
    (*(v36 + 16))(v35, v36);
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    sub_100005508(v30, &qword_10097A7F0, &unk_1007FB600);
    v37._countAndFlagsBits = 0x736C616620736920;
    v37._object = 0xE900000000000065;
    String.append(_:)(v37);
    LODWORD(v35) = sub_100010F88(36, 0, 0xE000000000000000);
    v39 = v38;
    sub_1000115C8();
    swift_allocError();
    *v40 = v35;
    *(v40 + 8) = v39;
    swift_willThrow();
    v41 = *(v28 + 8);
    v41(v61, v29);
    v41(v60, v29);
    goto LABEL_7;
  }

  v50 = v0[9];
  v49 = v0[10];
  v52 = v0[7];
  v51 = v0[8];
  v53 = v0[6];
  v62 = v0[5];
  v63 = v0[4];
  v54 = v0[2];
  v56 = v64[3];
  v55 = v64[4];
  v57 = sub_10002CDC0(v0[3], v56);
  v54[3] = v56;
  v54[4] = *(v55 + 8);
  v58 = sub_10002F604(v54);
  (*(*(v56 - 8) + 16))(v58, v57, v56);
  v59 = *(v51 + 8);
  v59(v50, v52);
  v59(v49, v52);

  v47 = v0[1];
LABEL_8:

  return v47();
}

uint64_t sub_1003EEF9C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100005C00;

  return sub_1003EE838(a1, a2);
}

uint64_t sub_1003EF03C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[13] = a2;
  v3[14] = a3;
  v3[12] = a1;
  return _swift_task_switch(sub_1003EF060, 0, 0);
}

uint64_t sub_1003EF060()
{
  v1 = *(v0 + 112);
  v2 = type metadata accessor for SDAuthenticationCommonOperationInput();
  sub_1003FBDAC(v1 + *(v2 + 36), v0 + 56);
  if (*(v0 + 80))
  {
    sub_1000121F8((v0 + 56), v0 + 16);
    v3 = *sub_10002CDC0((v0 + 16), *(v0 + 40));
    sub_1003FDD00();
    sub_1002A9938(*(v0 + 104), *(v0 + 96));
    sub_10000C60C((v0 + 16));
  }

  else
  {
    sub_100005508(v0 + 56, &qword_1009819B0, &qword_100800360);
    v4 = sub_100010F88(37, 0xD000000000000027, 0x800000010078EF00);
    v6 = v5;
    sub_1000115C8();
    swift_allocError();
    *v7 = v4;
    *(v7 + 8) = v6;
    swift_willThrow();
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1003EF194(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100005C00;

  return sub_1003EF03C(a1, a2, a3);
}

uint64_t sub_1003EF244(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[13] = a2;
  v3[14] = a3;
  v3[12] = a1;
  return _swift_task_switch(sub_1003EF268, 0, 0);
}

uint64_t sub_1003EF268()
{
  v1 = *(v0 + 112);
  v2 = type metadata accessor for SDAuthenticationCommonOperationInput();
  sub_1003FBDAC(v1 + *(v2 + 36), v0 + 56);
  if (*(v0 + 80))
  {
    v3 = *(v0 + 112);
    sub_1000121F8((v0 + 56), v0 + 16);
    v4 = *(*sub_10002CDC0((v0 + 16), *(v0 + 40)) + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication10LTKSession_localLTK);
    v5 = v3[8];
    v6 = v3[9];
    sub_10002CDC0(v3 + 5, v5);
    v7 = *(v6 + 8);

    result = v7(v5, v6);
    if (!v9)
    {
      __break(1u);
      return result;
    }

    v10 = result;
    v11 = v9;
    v12 = *(v4 + 112);
    v13 = swift_task_alloc();
    v13[2] = v4;
    v13[3] = v10;
    v13[4] = v11;
    v13[5] = sub_10031B534;
    v13[6] = 0;
    v14 = swift_task_alloc();
    *(v14 + 16) = sub_1003FC570;
    *(v14 + 24) = v13;
    os_unfair_lock_lock(v12 + 4);
    sub_1002F5418(v15);
    v21 = *(v0 + 96);
    v20 = *(v0 + 104);
    os_unfair_lock_unlock(v12 + 4);

    sub_1002A9938(v20, v21);
    sub_10000C60C((v0 + 16));
    v22 = *(v0 + 8);
  }

  else
  {
    sub_100005508(v0 + 56, &qword_1009819B0, &qword_100800360);
    v16 = sub_100010F88(37, 0xD000000000000027, 0x800000010078EF00);
    v18 = v17;
    sub_1000115C8();
    swift_allocError();
    *v19 = v16;
    *(v19 + 8) = v18;
    swift_willThrow();
    v22 = *(v0 + 8);
  }

  return v22();
}

uint64_t sub_1003EF4D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100005C00;

  return sub_1003EF244(a1, a2, a3);
}

uint64_t sub_1003EF580(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[13] = a2;
  v3[14] = a3;
  v3[12] = a1;
  return _swift_task_switch(sub_1003EF5A4, 0, 0);
}

uint64_t sub_1003EF5A4()
{
  v37 = v0;
  v1 = *(v0 + 112);
  v2 = sub_1003E7E2C();
  v4 = v3;
  v5 = v2;
  v6 = *(v0 + 112);
  v7 = type metadata accessor for SDAuthenticationCommonOperationInput();
  sub_1003FBDAC(v6 + *(v7 + 36), v0 + 56);
  if (!*(v0 + 80))
  {

    sub_100005508(v0 + 56, &qword_1009819B0, &qword_100800360);
    v12 = sub_100010F88(37, 0xD000000000000027, 0x800000010078EF00);
    v14 = v13;
    sub_1000115C8();
    swift_allocError();
    *v15 = v12;
    *(v15 + 8) = v14;
    swift_willThrow();
LABEL_13:
    v29 = *(v0 + 8);
    goto LABEL_14;
  }

  sub_1000121F8((v0 + 56), v0 + 16);
  v8 = *(*sub_10002CDC0((v0 + 16), *(v0 + 40)) + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication10LTKSession_localLTK);
  v9 = *(v8 + 112);
  v10 = swift_task_alloc();
  v10[2] = v8;
  v10[3] = v5;
  v10[4] = v4;
  v11 = swift_task_alloc();
  *(v11 + 16) = sub_1003FCB48;
  *(v11 + 24) = v10;
  os_unfair_lock_lock(v9 + 4);
  sub_1003FCB28(&v36);
  os_unfair_lock_unlock(v9 + 4);
  v16 = v36;

  if (!*(&v16 + 1))
  {
    v24 = 0x7473696765726E55;
    v23 = 0xEC00000064657265;
    goto LABEL_12;
  }

  v17 = *(v0 + 104);
  v18 = v17[3];
  v19 = v17[4];
  sub_10002CDC0(v17, v18);
  if (v16 == (*(v19 + 16))(v18, v19) && *(&v16 + 1) == v20)
  {
  }

  else
  {
    v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v22 & 1) == 0)
    {
      v23 = 0x800000010078F310;
      v24 = 0xD000000000000017;
LABEL_12:
      v25 = sub_100010F88(11, v24, v23);
      v27 = v26;
      sub_1000115C8();
      swift_allocError();
      *v28 = v25;
      *(v28 + 8) = v27;
      swift_willThrow();
      sub_10000C60C((v0 + 16));
      goto LABEL_13;
    }
  }

  v31 = *(v0 + 96);
  v32 = v17[3];
  v33 = v17[4];
  v34 = sub_10002CDC0(*(v0 + 104), v32);
  v31[3] = v32;
  v31[4] = *(v33 + 8);
  v35 = sub_10002F604(v31);
  (*(*(v32 - 8) + 16))(v35, v34, v32);
  sub_10000C60C((v0 + 16));
  v29 = *(v0 + 8);
LABEL_14:

  return v29();
}

uint64_t sub_1003EF920(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100005C00;

  return sub_1003EF580(a1, a2, a3);
}

uint64_t sub_1003EF9D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  v4 = type metadata accessor for SDAuthenticationCommonOperationInput();
  v3[10] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[11] = swift_task_alloc();

  return _swift_task_switch(sub_1003EFA68, 0, 0);
}

uint64_t sub_1003EFA68()
{
  v48 = v0;
  v1 = [objc_opt_self() standardUserDefaults];
  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 BOOLForKey:v2];

  if (v3)
  {
    if (qword_1009737E8 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_10000C4AC(v4, qword_10097BA28);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "### TESTING ONLY: throwAKSCreateTokenError default set, throwing generic error", v7, 2u);
    }

    v8 = sub_100010F88(34, 0xD00000000000002CLL, 0x800000010078F530);
    v10 = v9;
    sub_1000115C8();
    swift_allocError();
    *v11 = v8;
    *(v11 + 8) = v10;
    swift_willThrow();
    v22 = v0[11];

    v23 = v0[1];
  }

  else
  {
    v12 = v0[8];
    v13 = v12[3];
    v14 = v12[4];
    sub_10002CDC0(v12, v13);
    (*(v14 + 16))(v13, v14);
    v15 = sub_10002CDC0(v0 + 2, v0[5]);
    v16 = v12[3];
    v17 = v12[5];
    sub_10002CDC0(v12, v16);
    v18 = (*(v17 + 16))(v16, v17);
    v20 = v19;
    v21 = *v15;
    sub_100669484(v18, v19);

    sub_100026AC0(v18, v20);
    sub_10000C60C(v0 + 2);
    if (qword_1009737E8 != -1)
    {
      swift_once();
    }

    v26 = v0[11];
    v27 = v0[9];
    v28 = type metadata accessor for Logger();
    sub_10000C4AC(v28, qword_10097BA28);
    sub_1003FC900(v27, v26, type metadata accessor for SDAuthenticationCommonOperationInput);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.default.getter();
    v31 = os_log_type_enabled(v29, v30);
    v32 = v0[11];
    if (v31)
    {
      v33 = v0[10];
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v47 = v35;
      *v34 = 136315138;
      v36 = *(v32 + *(v33 + 28));
      v37 = sub_100027340();
      v39 = v38;
      sub_1003FC968(v32, type metadata accessor for SDAuthenticationCommonOperationInput);
      v40 = sub_10000C4E4(v37, v39, &v47);

      *(v34 + 4) = v40;
      _os_log_impl(&_mh_execute_header, v29, v30, "AUTHENTICATION SUCCEEDED for %s", v34, 0xCu);
      sub_10000C60C(v35);
    }

    else
    {

      sub_1003FC968(v32, type metadata accessor for SDAuthenticationCommonOperationInput);
    }

    v41 = v0[11];
    v42 = v0[7];
    v43 = v12[3];
    v44 = v12[4];
    v45 = sub_10002CDC0(v0[8], v43);
    v42[3] = v43;
    v42[4] = *(v44 + 8);
    v46 = sub_10002F604(v42);
    (*(*(v43 - 8) + 16))(v46, v45, v43);

    v23 = v0[1];
  }

  return v23();
}

uint64_t sub_1003EFF8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100005C00;

  return sub_1003EF9D0(a1, a2, a3);
}

uint64_t sub_1003F003C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[23] = a2;
  v3[24] = a3;
  v3[22] = a1;
  v4 = type metadata accessor for SDAuthenticationCommonOperationInput();
  v3[25] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[26] = swift_task_alloc();

  return _swift_task_switch(sub_1003F00D4, 0, 0);
}

uint64_t sub_1003F00D4()
{
  v48 = v0;
  v1 = *(v0 + 192);
  v2 = *(*(v0 + 200) + 36);
  sub_1003FBDAC(v1 + v2, v0 + 56);
  if (*(v0 + 80))
  {
    v3 = *(v0 + 184);
    sub_1000121F8((v0 + 56), v0 + 16);
    v4 = sub_10002CDC0((v0 + 16), *(v0 + 40));
    v5 = v3[3];
    v6 = v3[4];
    sub_10002CDC0(v3, v5);
    v7 = (*(v6 + 16))(v5, v6);
    v9 = v8;
    v10 = *v4 + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication10LTKSession_aksSession;
    v11 = *v10;
    LOBYTE(v10) = *(v10 + 8);
    *(v0 + 216) = v11;
    *(v0 + 224) = v10;
    sub_10028088C(&qword_10097C2A0, &qword_100800F80);
    Optional.tryUnwrap(_:file:line:)();
    v12 = *(v0 + 228);
    v13 = sub_1004BD0BC(v7, v9);
    sub_10028BCC0(v13, v24);
    sub_100026AC0(v7, v9);
    sub_10000C60C((v0 + 16));
    sub_1003FBDAC(v1 + v2, v0 + 136);
    if (*(v0 + 160))
    {
      sub_1000121F8((v0 + 136), v0 + 96);
      v25 = *sub_10002CDC0((v0 + 96), *(v0 + 120));
      sub_1003FD950();
      sub_10000C60C((v0 + 96));
    }

    else
    {
      sub_100005508(v0 + 136, &qword_1009819B0, &qword_100800360);
      sub_100010F88(37, 0xD000000000000027, 0x800000010078EF00);
    }

    if (qword_1009737E8 != -1)
    {
      swift_once();
    }

    v26 = *(v0 + 208);
    v27 = *(v0 + 192);
    v28 = type metadata accessor for Logger();
    sub_10000C4AC(v28, qword_10097BA28);
    sub_1003FC900(v27, v26, type metadata accessor for SDAuthenticationCommonOperationInput);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.default.getter();
    v31 = os_log_type_enabled(v29, v30);
    v32 = *(v0 + 208);
    if (v31)
    {
      v33 = *(v0 + 200);
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v47 = v35;
      *v34 = 136315138;
      v36 = *(v32 + *(v33 + 28));
      v37 = sub_100027340();
      v39 = v38;
      sub_1003FC968(v32, type metadata accessor for SDAuthenticationCommonOperationInput);
      v40 = sub_10000C4E4(v37, v39, &v47);

      *(v34 + 4) = v40;
      _os_log_impl(&_mh_execute_header, v29, v30, "AUTHENTICATION SUCCEEDED for %s", v34, 0xCu);
      sub_10000C60C(v35);
    }

    else
    {

      sub_1003FC968(v32, type metadata accessor for SDAuthenticationCommonOperationInput);
    }

    v41 = *(v0 + 208);
    v42 = *(v0 + 176);
    v43 = v3[3];
    v44 = v3[4];
    v45 = sub_10002CDC0(*(v0 + 184), v43);
    v42[3] = v43;
    v42[4] = *(v44 + 8);
    v46 = sub_10002F604(v42);
    (*(*(v43 - 8) + 16))(v46, v45, v43);

    v22 = *(v0 + 8);
  }

  else
  {
    sub_100005508(v0 + 56, &qword_1009819B0, &qword_100800360);
    v14 = sub_100010F88(37, 0xD000000000000027, 0x800000010078EF00);
    v16 = v15;
    sub_1000115C8();
    swift_allocError();
    *v17 = v14;
    *(v17 + 8) = v16;
    swift_willThrow();
    v18 = *(v0 + 208);
    LODWORD(v16) = sub_100010F88(34, 0xD00000000000003ALL, 0x800000010078F430);
    v20 = v19;
    sub_1000115C8();
    swift_allocError();
    *v21 = v16;
    *(v21 + 8) = v20;
    swift_willThrow();

    v22 = *(v0 + 8);
  }

  return v22();
}

uint64_t sub_1003F05F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100005C00;

  return sub_1003F003C(a1, a2, a3);
}

uint64_t sub_1003F06A4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_1003F06C4, 0, 0);
}

uint64_t sub_1003F06C4()
{
  v1 = v0[3];
  v2 = v1[3];
  v3 = v1[4];
  sub_10002CDC0(v1, v2);
  v4 = (*(v3 + 16))(v2, v3);
  if (v5 >> 60 == 15)
  {
    v6 = sub_100010F88(1, 0xD000000000000012, 0x800000010078F100);
    v8 = v7;
    sub_1000115C8();
    swift_allocError();
    *v9 = v6;
    *(v9 + 8) = v8;
    swift_willThrow();
  }

  else
  {
    v12 = v0[2];
    v11 = v0[3];
    sub_10028BCC0(v4, v5);
    v14 = v1[3];
    v13 = v1[4];
    v15 = sub_10002CDC0(v11, v14);
    v12[3] = v14;
    v12[4] = *(v13 + 8);
    v16 = sub_10002F604(v12);
    (*(*(v14 - 8) + 16))(v16, v15, v14);
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_1003F0838(uint64_t a1, uint64_t a2)
{
  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return _swift_task_switch(sub_1003F0858, 0, 0);
}

uint64_t sub_1003F0858()
{
  v1 = v0[9];
  sub_1002D63B0(v1, (v0 + 2));
  v2 = v0[5];
  v3 = v0[7];
  sub_10002F5B4((v0 + 2), v2);
  v4 = (*(v3 + 24))(v2, v3);
  v5 = v1[3];
  v6 = v1[4];
  sub_10002CDC0(v1, v5);
  (*(v6 + 24))(v5, v6);
  if (v7)
  {
    v8 = String._bridgeToObjectiveC()();
  }

  else
  {
    v8 = 0;
  }

  v9 = v0[9];
  [v4 setAppName:v8];

  v10 = v0[5];
  v11 = v0[7];
  sub_10002F5B4((v0 + 2), v10);
  v12 = (*(v11 + 24))(v10, v11);
  v13 = v1[3];
  v14 = v1[4];
  sub_10002CDC0(v9, v13);
  (*(v14 + 16))(v13, v14);
  if (v15)
  {
    v16 = String._bridgeToObjectiveC()();
  }

  else
  {
    v16 = 0;
  }

  v17 = v0[8];
  v18 = v0[9];
  [v12 setBundleID:v16];

  v19 = v0[5];
  v20 = v0[7];
  sub_10002F5B4((v0 + 2), v19);
  v21 = (*(v20 + 24))(v19, v20);
  v23 = v1[3];
  v22 = v1[4];
  sub_10002CDC0(v18, v23);
  [v21 setBiometricOnly:{(*(v22 + 32))(v23, v22) & 1}];

  v24 = v0[5];
  v25 = v0[6];
  v26 = sub_10002CDC0(v0 + 2, v24);
  v17[3] = v24;
  v17[4] = *(v25 + 8);
  v27 = sub_10002F604(v17);
  (*(*(v24 - 8) + 16))(v27, v26, v24);
  sub_10000C60C(v0 + 2);
  v28 = v0[1];

  return v28();
}

uint64_t sub_1003F0B04(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100005C00;

  return sub_1003F0838(a1, a2);
}

uint64_t sub_1003F0BA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return _swift_task_switch(sub_1003F0BC8, 0, 0);
}

uint64_t sub_1003F0BC8()
{
  v1 = v0[3];
  v2 = v0[4];
  v32 = type metadata accessor for SDAuthenticationCommonOperationInput();
  v33 = sub_1004FE068(*(v2 + *(v32 + 28)));
  v3 = v2[8];
  v4 = v2[9];
  sub_10002CDC0(v2 + 5, v3);
  (*(v4 + 8))(v3, v4);
  v6 = v5;
  v7 = v1[3];
  v8 = v1[4];
  sub_10002CDC0(v1, v7);
  (*(v8 + 24))(v7, v8);
  v9 = v1[3];
  v10 = v1[4];
  sub_10002CDC0(v1, v9);
  (*(v10 + 16))(v9, v10);
  v11 = v1[3];
  v12 = v1[4];
  sub_10002CDC0(v1, v11);
  v13 = (*(v12 + 32))(v11, v12);
  if (v6)
  {
    v14 = String._bridgeToObjectiveC()();
  }

  else
  {
    v14 = 0;
  }

  v15 = objc_allocWithZone(SFAuthenticationApproveInfo);
  v16 = String._bridgeToObjectiveC()();

  v17 = String._bridgeToObjectiveC()();

  v18 = [v15 initWithType:v33 idsDeviceID:v14 appName:v16 bundleID:v17 biometricOnly:v13 & 1];

  if (v18)
  {
    v19 = v0[4];
    v20 = *sub_10002CDC0(v19, v19[3]);
    sub_1006D2FCC(v19 + *(v32 + 24), v18);
    v25 = v0[2];
    v26 = v1[3];
    v27 = v1[4];
    v28 = sub_10002CDC0(v0[3], v26);
    v25[3] = v26;
    v25[4] = *(v27 + 8);
    v29 = sub_10002F604(v25);
    (*(*(v26 - 8) + 16))(v29, v28, v26);
  }

  else
  {
    v21 = sub_100010F88(10, 0xD00000000000001DLL, 0x800000010078F330);
    v23 = v22;
    sub_1000115C8();
    swift_allocError();
    *v24 = v21;
    *(v24 + 8) = v23;
    swift_willThrow();
  }

  v30 = v0[1];

  return v30();
}

uint64_t sub_1003F0ED8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100005C00;

  return sub_1003F0BA4(a1, a2, a3);
}

uint64_t sub_1003F0FA0(uint64_t a1, uint64_t a2)
{
  v2[8] = a1;
  v2[9] = a2;
  v3 = type metadata accessor for Date();
  v2[10] = v3;
  v4 = *(v3 - 8);
  v2[11] = v4;
  v5 = *(v4 + 64) + 15;
  v2[12] = swift_task_alloc();

  return _swift_task_switch(sub_1003F1060, 0, 0);
}

uint64_t sub_1003F1060()
{
  v2 = v0[11];
  v1 = v0[12];
  v4 = v0[9];
  v3 = v0[10];
  v5 = v0[8];
  sub_1002D63B0(v4, (v0 + 2));
  v6 = v0[5];
  v7 = v0[6];
  sub_10002F5B4((v0 + 2), v6);
  v8 = (*(v7 + 24))(v6, v7);
  sub_10002CDC0(v4, v4[3]);
  Date.init()();
  Date.timeIntervalSince1970.getter();
  v10 = v9;
  (*(v2 + 8))(v1, v3);
  [v8 setSessionStartDate:v10];

  v11 = v0[5];
  v12 = v0[6];
  v13 = sub_10002CDC0(v0 + 2, v11);
  v5[3] = v11;
  v5[4] = *(v12 + 8);
  v14 = sub_10002F604(v5);
  (*(*(v11 - 8) + 16))(v14, v13, v11);
  sub_10000C60C(v0 + 2);

  v15 = v0[1];

  return v15();
}

uint64_t sub_1003F11E0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100005C00;

  return sub_1003F0FA0(a1, a2);
}

uint64_t sub_1003F1280(uint64_t a1, uint64_t a2)
{
  *(v2 + 120) = a1;
  *(v2 + 128) = a2;
  return _swift_task_switch(sub_1003F12A0, 0, 0);
}

uint64_t sub_1003F12A0()
{
  v1 = v0[16];
  sub_1003FCA0C(v1, (v0 + 2));
  v2 = v1[3];
  v3 = v1[6];
  sub_10002CDC0(v1, v2);
  v4 = (*(v3 + 16))(v2, v3);
  if (v5 >> 60 == 15)
  {
    v6 = sub_100010F88(1, 0xD000000000000010, 0x800000010078F370);
    v8 = v7;
    sub_1000115C8();
    swift_allocError();
    *v9 = v6;
    *(v9 + 8) = v8;
    swift_willThrow();
  }

  else
  {
    v10 = v4;
    v11 = v5;
    v12 = v0[16];
    v13 = v1[3];
    v14 = v12[4];
    sub_10002CDC0(v12, v13);
    (*(v14 + 16))(v13, v14);
    v15 = sub_10002CDC0(v0 + 10, v0[13]);
    v16 = v1[3];
    v17 = v12[5];
    sub_10002CDC0(v12, v16);
    v18 = *(v17 + 16);
    sub_100294008(v10, v11);
    v19 = v18(v16, v17);
    v21 = v20;
    v22 = *v15;
    sub_100669814(v10, v11);
    sub_100669484(v19, v21);
    v26 = v25;
    v27 = v0[15];
    sub_100026AC0(v19, v21);
    sub_10028BCC0(v10, v11);
    v28 = Data.init(referencing:)();
    v30 = v29;

    sub_10000C60C(v0 + 10);
    v31 = v0[5];
    v32 = v0[9];
    sub_10002F5B4((v0 + 2), v31);
    v33 = (*(v32 + 24))(v31, v32);
    isa = Data._bridgeToObjectiveC()().super.isa;
    [v33 setAksToken:isa];

    v35 = v0[5];
    v36 = v0[6];
    v37 = sub_10002CDC0(v0 + 2, v35);
    v27[3] = v35;
    v27[4] = *(v36 + 8);
    v38 = sub_10002F604(v27);
    (*(*(v35 - 8) + 16))(v38, v37, v35);
    sub_100026AC0(v28, v30);
    sub_10028BCC0(v10, v11);
  }

  sub_10000C60C(v0 + 2);
  v23 = v0[1];

  return v23();
}

uint64_t sub_1003F15F4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100005C00;

  return sub_1003F1280(a1, a2);
}

uint64_t sub_1003F1694(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[11] = a2;
  v3[12] = a3;
  v3[10] = a1;
  return _swift_task_switch(sub_1003F16B8, 0, 0);
}

uint64_t sub_1003F16B8()
{
  v1 = v0[12];
  sub_1002A9938(v0[11], (v0 + 2));
  v2 = v0[5];
  v3 = v0[6];
  sub_10002F5B4((v0 + 2), v2);
  v4 = (*(v3 + 24))(v2, v3);
  [v4 setVersion:1];

  v5 = v0[5];
  v6 = v0[6];
  sub_10002F5B4((v0 + 2), v5);
  v7 = (*(v6 + 24))(v5, v6);
  v8 = type metadata accessor for SDAuthenticationCommonOperationInput();
  v9 = v1 + *(v8 + 24);
  UUID.uuidString.getter();
  v10 = String._bridgeToObjectiveC()();

  [v7 setSessionID:v10];

  v11 = v0[5];
  v12 = v0[6];
  sub_10002F5B4((v0 + 2), v11);
  v13 = (*(v12 + 24))(v11, v12);
  if (HIDWORD(*(v1 + *(v8 + 28))))
  {
    __break(1u);
  }

  else
  {
    v14 = v13;
    [v13 setType:?];

    if (qword_1009737E8 == -1)
    {
      goto LABEL_3;
    }
  }

  swift_once();
LABEL_3:
  v15 = type metadata accessor for Logger();
  sub_10000C4AC(v15, qword_10097BA28);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v18 = 138412290;
    swift_beginAccess();
    v20 = v0[5];
    v21 = v0[6];
    sub_10002F5B4((v0 + 2), v20);
    v22 = (*(v21 + 24))(v20, v21);
    swift_endAccess();
    *(v18 + 4) = v22;
    *v19 = v22;
    _os_log_impl(&_mh_execute_header, v16, v17, "Sending %@", v18, 0xCu);
    sub_100005508(v19, &qword_100975400, &qword_1007F65D0);
  }

  v23 = v0[10];

  swift_beginAccess();
  v24 = v0[5];
  v25 = v0[6];
  v26 = sub_10002CDC0(v0 + 2, v24);
  v23[3] = v24;
  v23[4] = *(v25 + 8);
  v27 = sub_10002F604(v23);
  (*(*(v24 - 8) + 16))(v27, v26, v24);
  sub_10000C60C(v0 + 2);
  v28 = v0[1];

  return v28();
}

uint64_t sub_1003F1A18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100005C00;

  return sub_1003F1694(a1, a2, a3);
}

uint64_t sub_1003F1AC8(uint64_t a1, uint64_t a2)
{
  *(v2 + 104) = a1;
  *(v2 + 112) = a2;
  return _swift_task_switch(sub_1003F1AE8, 0, 0);
}

uint64_t sub_1003F1AE8()
{
  v1 = v0[14];
  sub_1002D63B0(v1, (v0 + 2));
  v2 = sub_10002CDC0(v1, v1[3]);
  v3 = (v2 + *(_s14MacUnlockPhoneV17InitialKeyContextVMa(0) + 36));
  v4 = v3[1];
  if (v4 >> 60 == 15)
  {
    v5 = sub_100010F88(1, 0xD000000000000012, 0x800000010078F0E0);
    v7 = v6;
    sub_1000115C8();
    swift_allocError();
    *v8 = v5;
    *(v8 + 8) = v7;
    swift_willThrow();
  }

  else
  {
    v9 = *v3;
    v10 = v0[14];
    v11 = v1[3];
    v12 = v10[4];
    sub_10002CDC0(v10, v11);
    v13 = *(v12 + 8);
    v14 = *(v13 + 16);
    sub_100294008(v9, v4);
    v14(v11, v13);
    v15 = *sub_10002CDC0(v0 + 8, v0[11]);
    sub_100294008(v9, v4);
    sub_100669814(v9, v4);
    sub_100669484(0, 0xF000000000000000);
    v19 = v18;
    v20 = v0[13];
    sub_10028BCC0(v9, v4);
    v21 = Data.init(referencing:)();
    v23 = v22;

    sub_10000C60C(v0 + 8);
    v24 = v0[5];
    v25 = v0[7];
    sub_10002F5B4((v0 + 2), v24);
    v26 = (*(v25 + 24))(v24, v25);
    isa = Data._bridgeToObjectiveC()().super.isa;
    [v26 setAksToken:isa];

    v28 = v0[5];
    v29 = v0[7];
    v30 = sub_10002CDC0(v0 + 2, v28);
    v20[3] = v28;
    v20[4] = *(v29 + 8);
    v31 = sub_10002F604(v20);
    (*(*(v28 - 8) + 16))(v31, v30, v28);
    sub_100026AC0(v21, v23);
    sub_10028BCC0(v9, v4);
  }

  sub_10000C60C(v0 + 2);
  v16 = v0[1];

  return v16();
}

uint64_t sub_1003F1DE0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100005C00;

  return sub_1003F1AC8(a1, a2);
}

uint64_t sub_1003F1E80(uint64_t a1, uint64_t a2)
{
  *(v2 + 112) = a1;
  *(v2 + 120) = a2;
  return _swift_task_switch(sub_1003F1EA0, 0, 0);
}

void sub_1003F1EA0()
{
  v51 = v0;
  v1 = v0[15];
  sub_1003FCAB8(v1, (v0 + 2));
  v2 = v1[3];
  v3 = v1[4];
  sub_10002CDC0(v1, v2);
  v4 = (*(v3 + 16))(v2, v3);
  if (v5 >> 60 != 15)
  {
    v10 = v4;
    v11 = v5;
    if (qword_1009737E8 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_10000C4AC(v12, qword_10097BA28);
    sub_100294008(v10, v11);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.info.getter();
    sub_10028BCC0(v10, v11);
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v50 = v16;
      *v15 = 136315138;
      sub_100294008(v10, v11);
      v17 = Data.description.getter();
      v19 = v18;
      sub_10028BCC0(v10, v11);
      v20 = sub_10000C4E4(v17, v19, &v50);

      *(v15 + 4) = v20;
      _os_log_impl(&_mh_execute_header, v13, v14, "Starting MacApprovePhone AKS session with acmToken: %s", v15, 0xCu);
      sub_10000C60C(v16);
    }

    v21 = v11 >> 62;
    if ((v11 >> 62) > 1)
    {
      if (v21 != 2)
      {
        goto LABEL_17;
      }

      v23 = *(v10 + 16);
      v22 = *(v10 + 24);
      v24 = __OFSUB__(v22, v23);
      v25 = v22 - v23;
      if (!v24)
      {
        if (v25 == 1)
        {
          goto LABEL_14;
        }

LABEL_17:
        v30 = v0[15];
        v31 = v1[3];
        v32 = v30[5];
        sub_10002CDC0(v30, v31);
        (*(*(v32 + 8) + 16))(v31);
        v33 = *sub_10002CDC0(v0 + 9, v0[12]);
        sub_100294008(v10, v11);
        sub_100669814(v10, v11);
        sub_100669484(0, 0xF000000000000000);
        v37 = v35;
        sub_10028BCC0(v10, v11);
        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v21)
      {
        if (BYTE6(v11) != 1)
        {
          goto LABEL_17;
        }

LABEL_14:
        v26 = v0[15];
        v27 = v1[3];
        v28 = v26[5];
        sub_10002CDC0(v26, v27);
        (*(*(v28 + 8) + 16))(v27);
        v29 = *sub_10002CDC0(v0 + 9, v0[12]);
        sub_100669814(0, 0xF000000000000000);
        sub_100669484(0, 0xF000000000000000);
        v37 = v36;
LABEL_21:
        v38 = Data.init(referencing:)();
        v40 = v39;

        sub_10000C60C(v0 + 9);
        v41 = v0[14];
        v42 = v0[5];
        v43 = v0[8];
        sub_10002F5B4((v0 + 2), v42);
        v44 = (*(v43 + 24))(v42, v43);
        isa = Data._bridgeToObjectiveC()().super.isa;
        [v44 setAksToken:isa];

        sub_100026AC0(v38, v40);
        v46 = v0[5];
        v47 = v0[6];
        v48 = sub_10002CDC0(v0 + 2, v46);
        v41[3] = v46;
        v41[4] = *(v47 + 8);
        v49 = sub_10002F604(v41);
        (*(*(v46 - 8) + 16))(v49, v48, v46);
        sub_10028BCC0(v10, v11);
        sub_10000C60C(v0 + 2);
        v34 = v0[1];
        goto LABEL_18;
      }

      if (!__OFSUB__(HIDWORD(v10), v10))
      {
        if (HIDWORD(v10) - v10 == 1)
        {
          goto LABEL_14;
        }

        goto LABEL_17;
      }
    }

    __break(1u);
    return;
  }

  v6 = sub_100010F88(30, 0xD000000000000019, 0x800000010078F350);
  v8 = v7;
  sub_1000115C8();
  swift_allocError();
  *v9 = v6;
  *(v9 + 8) = v8;
  swift_willThrow();
  sub_10000C60C(v0 + 2);
  v34 = v0[1];
LABEL_18:

  v34();
}

uint64_t sub_1003F23C0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100005C00;

  return sub_1003F1E80(a1, a2);
}

uint64_t sub_1003F2460(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[17] = a2;
  v3[18] = a3;
  v3[16] = a1;
  return _swift_task_switch(sub_1003F2484, 0, 0);
}

uint64_t sub_1003F2484()
{
  v1 = *(v0 + 144);
  v2 = type metadata accessor for SDAuthenticationCommonOperationInput();
  sub_1003FBDAC(v1 + *(v2 + 36), v0 + 56);
  if (!*(v0 + 80))
  {
    sub_100005508(v0 + 56, &qword_1009819B0, &qword_100800360);
    v4 = sub_100010F88(37, 0xD000000000000027, 0x800000010078EF00);
    v6 = v5;
    sub_1000115C8();
    swift_allocError();
    *v7 = v4;
    *(v7 + 8) = v6;
    swift_willThrow();
LABEL_4:
    v8 = *(v0 + 8);
    goto LABEL_5;
  }

  sub_1000121F8((v0 + 56), v0 + 16);
  v3 = *sub_10002CDC0((v0 + 16), *(v0 + 40));
  v10 = sub_1003FCCA0(0, 0xF000000000000000, 0, 0xF000000000000000);
  v12 = v11;
  v13 = *(v0 + 136);
  sub_10000C60C((v0 + 16));
  sub_10000C5B0(v13, v0 + 96);
  sub_10028088C(&qword_10097BE70, &qword_1008003F0);
  v14 = swift_dynamicCast();
  if ((v14 & 1) == 0)
  {
    v15 = *(v0 + 136);
    *(v0 + 56) = 0u;
    *(v0 + 72) = 0u;
    *(v0 + 88) = 0;
    sub_100005508(v0 + 56, &qword_10097BE78, &qword_1008003F8);
    sub_10000C5B0(v15, v0 + 96);
    sub_10028088C(&qword_10097BE80, &qword_100800400);
    if (!swift_dynamicCast())
    {
      v25 = *(v0 + 136);
      *(v0 + 56) = 0u;
      *(v0 + 72) = 0u;
      *(v0 + 88) = 0;
      sub_100005508(v0 + 56, &qword_10097BE88, &qword_100800408);
      _StringGuts.grow(_:)(114);
      *(v0 + 16) = 0;
      *(v0 + 24) = 0xE000000000000000;
      _print_unlocked<A, B>(_:_:)();
      v26._countAndFlagsBits = 0xD000000000000070;
      v26._object = 0x800000010078F1D0;
      String.append(_:)(v26);
      LODWORD(v25) = sub_100010F88(10, *(v0 + 16), *(v0 + 24));
      v28 = v27;
      sub_1000115C8();
      swift_allocError();
      *v29 = v25;
      *(v29 + 8) = v28;
      swift_willThrow();
      sub_100026AC0(v10, v12);
      goto LABEL_4;
    }
  }

  v16 = *(v0 + 128);
  sub_1000121F8((v0 + 56), v0 + 16);
  v17 = *(v0 + 40);
  v18 = *(v0 + 48);
  sub_10002F5B4(v0 + 16, v17);
  v19 = (*(v18 + 24))(v17, v18);
  isa = Data._bridgeToObjectiveC()().super.isa;
  [v19 setAksToken:isa];

  v21 = *(v0 + 40);
  v22 = *(v0 + 48);
  v23 = sub_10002CDC0((v0 + 16), v21);
  v16[3] = v21;
  v16[4] = *(v22 + 8);
  v24 = sub_10002F604(v16);
  (*(*(v21 - 8) + 16))(v24, v23, v21);
  sub_100026AC0(v10, v12);
  sub_10000C60C((v0 + 16));
  v8 = *(v0 + 8);
LABEL_5:

  return v8();
}

uint64_t sub_1003F28A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100005C00;

  return sub_1003F2460(a1, a2, a3);
}

uint64_t sub_1003F2950(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[19] = a2;
  v3[20] = a3;
  v3[18] = a1;
  return _swift_task_switch(sub_1003F2974, 0, 0);
}

uint64_t sub_1003F2974()
{
  v44 = v0;
  v1 = *(v0 + 152);
  sub_1002D63B0(v1, v0 + 16);
  v2 = v1[3];
  v3 = v1[4];
  sub_10002CDC0(v1, v2);
  v4 = (*(v3 + 16))(v2, v3);
  if (v5 >> 60 == 15)
  {
    v6 = sub_100010F88(30, 0xD000000000000019, 0x800000010078F350);
    v8 = v7;
    sub_1000115C8();
    swift_allocError();
    *v9 = v6;
    *(v9 + 8) = v8;
    swift_willThrow();
  }

  else
  {
    v10 = v4;
    v11 = v5;
    if (qword_1009737E8 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_10000C4AC(v12, qword_10097BA28);
    sub_100294008(v10, v11);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.info.getter();
    sub_10028BCC0(v10, v11);
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v43 = v16;
      *v15 = 136315138;
      sub_100294008(v10, v11);
      v17 = Data.description.getter();
      v19 = v18;
      sub_10028BCC0(v10, v11);
      v20 = sub_10000C4E4(v17, v19, &v43);

      *(v15 + 4) = v20;
      _os_log_impl(&_mh_execute_header, v13, v14, "Starting AKS session with acmToken: %s", v15, 0xCu);
      sub_10000C60C(v16);
    }

    v21 = *(v0 + 160);
    v22 = type metadata accessor for SDAuthenticationCommonOperationInput();
    sub_1003FBDAC(v21 + *(v22 + 36), v0 + 104);
    if (*(v0 + 128))
    {
      sub_1000121F8((v0 + 104), v0 + 64);
      v23 = *sub_10002CDC0((v0 + 64), *(v0 + 88));
      sub_100294008(v10, v11);
      v24 = sub_1003FCCA0(v10, v11, 0, 0xF000000000000000);
      v30 = *(v0 + 144);
      v31 = v24;
      v33 = v32;
      sub_10028BCC0(v10, v11);
      sub_10000C60C((v0 + 64));
      v34 = *(v0 + 40);
      v35 = *(v0 + 56);
      sub_10002F5B4(v0 + 16, v34);
      v36 = (*(v35 + 24))(v34, v35);
      isa = Data._bridgeToObjectiveC()().super.isa;
      [v36 setAksToken:isa];

      v38 = *(v0 + 40);
      v39 = *(v0 + 48);
      v40 = sub_10002CDC0((v0 + 16), v38);
      v30[3] = v38;
      v30[4] = *(v39 + 8);
      v41 = sub_10002F604(v30);
      (*(*(v38 - 8) + 16))(v41, v40, v38);
      sub_100026AC0(v31, v33);
      sub_10028BCC0(v10, v11);
      sub_10000C60C((v0 + 16));
      v42 = *(v0 + 8);
      goto LABEL_11;
    }

    sub_100005508(v0 + 104, &qword_1009819B0, &qword_100800360);
    v25 = sub_100010F88(37, 0xD000000000000027, 0x800000010078EF00);
    v27 = v26;
    sub_1000115C8();
    swift_allocError();
    *v28 = v25;
    *(v28 + 8) = v27;
    swift_willThrow();
    sub_10028BCC0(v10, v11);
  }

  sub_10000C60C((v0 + 16));
  v42 = *(v0 + 8);
LABEL_11:

  return v42();
}

uint64_t sub_1003F2E0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100005C00;

  return sub_1003F2950(a1, a2, a3);
}

uint64_t sub_1003F2EBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[20] = a2;
  v3[21] = a3;
  v3[19] = a1;
  return _swift_task_switch(sub_1003F2EE0, 0, 0);
}

uint64_t sub_1003F2EE0()
{
  v1 = *(v0 + 160);
  sub_1003FCAB8(v1, v0 + 16);
  v2 = v1[3];
  v3 = v1[5];
  sub_10002CDC0(v1, v2);
  v4 = (*(v3 + 16))(v2, v3);
  if (v5 >> 60 == 15)
  {
    v6 = sub_100010F88(1, 0xD000000000000010, 0x800000010078F370);
    v8 = v7;
    sub_1000115C8();
    swift_allocError();
    *v9 = v6;
    *(v9 + 8) = v8;
    swift_willThrow();
  }

  else
  {
    v10 = v4;
    v11 = v5;
    v12 = *(v0 + 168);
    v13 = type metadata accessor for SDAuthenticationCommonOperationInput();
    sub_1003FBDAC(v12 + *(v13 + 36), v0 + 112);
    if (*(v0 + 136))
    {
      v14 = *(v0 + 160);
      sub_1000121F8((v0 + 112), v0 + 72);
      v15 = sub_10002CDC0((v0 + 72), *(v0 + 96));
      v16 = v1[3];
      v17 = v14[4];
      sub_10002CDC0(v14, v16);
      v18 = *(v17 + 16);
      sub_100294008(v10, v11);
      v19 = v18(v16, v17);
      v21 = v20;
      v22 = *v15;
      v23 = sub_1003FCCA0(v10, v11, v19, v20);
      v29 = *(v0 + 152);
      v30 = v23;
      v31 = v19;
      v33 = v32;
      sub_100026AC0(v31, v21);
      sub_10028BCC0(v10, v11);
      sub_10000C60C((v0 + 72));
      v34 = *(v0 + 40);
      v35 = *(v0 + 64);
      sub_10002F5B4(v0 + 16, v34);
      v36 = (*(v35 + 24))(v34, v35);
      isa = Data._bridgeToObjectiveC()().super.isa;
      [v36 setAksToken:isa];

      v38 = *(v0 + 40);
      v39 = *(v0 + 48);
      v40 = sub_10002CDC0((v0 + 16), v38);
      v29[3] = v38;
      v29[4] = *(v39 + 8);
      v41 = sub_10002F604(v29);
      (*(*(v38 - 8) + 16))(v41, v40, v38);
      sub_100026AC0(v30, v33);
      sub_10028BCC0(v10, v11);
      sub_10000C60C((v0 + 16));
      v42 = *(v0 + 8);
      goto LABEL_7;
    }

    sub_100005508(v0 + 112, &qword_1009819B0, &qword_100800360);
    v24 = sub_100010F88(37, 0xD000000000000027, 0x800000010078EF00);
    v26 = v25;
    sub_1000115C8();
    swift_allocError();
    *v27 = v24;
    *(v27 + 8) = v26;
    swift_willThrow();
    sub_10028BCC0(v10, v11);
  }

  sub_10000C60C((v0 + 16));
  v42 = *(v0 + 8);
LABEL_7:

  return v42();
}

uint64_t sub_1003F328C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100005C00;

  return sub_1003F2EBC(a1, a2, a3);
}

uint64_t sub_1003F333C(uint64_t a1, uint64_t a2)
{
  *(v2 + 112) = a1;
  *(v2 + 120) = a2;
  return _swift_task_switch(sub_1003F335C, 0, 0);
}

uint64_t sub_1003F335C()
{
  v1 = v0[15];
  sub_1003FCAB8(v1, (v0 + 2));
  v2 = v1[3];
  v3 = v1[4];
  sub_10002CDC0(v1, v2);
  (*(v3 + 16))(v2, v3);
  v4 = sub_10002CDC0(v0 + 9, v0[12]);
  v5 = v1[3];
  v6 = v1[5];
  sub_10002CDC0(v1, v5);
  v7 = (*(v6 + 16))(v5, v6);
  v9 = v8;
  v10 = *v4;
  sub_100669814(0, 0xF000000000000000);
  sub_100669484(v7, v9);
  v13 = v12;
  v14 = v0[14];
  sub_100026AC0(v7, v9);
  v15 = Data.init(referencing:)();
  v17 = v16;

  sub_10000C60C(v0 + 9);
  v18 = v0[5];
  v19 = v0[8];
  sub_10002F5B4((v0 + 2), v18);
  v20 = (*(v19 + 24))(v18, v19);
  isa = Data._bridgeToObjectiveC()().super.isa;
  [v20 setAksToken:isa];

  v22 = v0[5];
  v23 = v0[6];
  v24 = sub_10002CDC0(v0 + 2, v22);
  v14[3] = v22;
  v14[4] = *(v23 + 8);
  v25 = sub_10002F604(v14);
  (*(*(v22 - 8) + 16))(v25, v24, v22);
  sub_100026AC0(v15, v17);
  sub_10000C60C(v0 + 2);
  v26 = v0[1];

  return v26();
}

uint64_t sub_1003F35B4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100005C00;

  return sub_1003F333C(a1, a2);
}

uint64_t sub_1003F3654(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[19] = a2;
  v3[20] = a3;
  v3[18] = a1;
  return _swift_task_switch(sub_1003F3678, 0, 0);
}

uint64_t sub_1003F3678()
{
  v1 = *(v0 + 160);
  sub_1002D63B0(*(v0 + 152), v0 + 16);
  v2 = type metadata accessor for SDAuthenticationCommonOperationInput();
  sub_1003FBDAC(v1 + *(v2 + 36), v0 + 104);
  if (*(v0 + 128))
  {
    v3 = *(v0 + 152);
    sub_1000121F8((v0 + 104), v0 + 64);
    v4 = sub_10002CDC0((v0 + 64), *(v0 + 88));
    v5 = v3[3];
    v6 = v3[4];
    sub_10002CDC0(v3, v5);
    v7 = (*(v6 + 16))(v5, v6);
    v9 = v8;
    v10 = *v4;
    v11 = sub_1003FCCA0(0, 0xF000000000000000, v7, v8);
    v16 = *(v0 + 144);
    v17 = v11;
    v19 = v18;
    sub_100026AC0(v7, v9);
    sub_10000C60C((v0 + 64));
    v20 = *(v0 + 40);
    v21 = *(v0 + 56);
    sub_10002F5B4(v0 + 16, v20);
    v22 = (*(v21 + 24))(v20, v21);
    isa = Data._bridgeToObjectiveC()().super.isa;
    [v22 setAksToken:isa];

    v24 = *(v0 + 40);
    v25 = *(v0 + 48);
    v26 = sub_10002CDC0((v0 + 16), v24);
    v16[3] = v24;
    v16[4] = *(v25 + 8);
    v27 = sub_10002F604(v16);
    (*(*(v24 - 8) + 16))(v27, v26, v24);
    sub_100026AC0(v17, v19);
  }

  else
  {
    sub_100005508(v0 + 104, &qword_1009819B0, &qword_100800360);
    v12 = sub_100010F88(37, 0xD000000000000027, 0x800000010078EF00);
    v14 = v13;
    sub_1000115C8();
    swift_allocError();
    *v15 = v12;
    *(v15 + 8) = v14;
    swift_willThrow();
  }

  sub_10000C60C((v0 + 16));
  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_1003F3920(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100005C00;

  return sub_1003F3654(a1, a2, a3);
}

uint64_t sub_1003F39D0(uint64_t a1, uint64_t a2)
{
  *(v2 + 192) = a1;
  *(v2 + 200) = a2;
  return _swift_task_switch(sub_1003F39F0, 0, 0);
}

uint64_t sub_1003F39F0()
{
  v1 = *(v0 + 200);
  sub_1002D63B0(v1, v0 + 16);
  sub_1002D63B0(v1, v0 + 64);
  sub_10028088C(&qword_10097C2E0, &qword_100801090);
  sub_10028088C(&qword_10097C2E8, &qword_100801098);
  if (swift_dynamicCast())
  {
    sub_1000121F8((v0 + 152), v0 + 112);
    v2 = *(v0 + 136);
    v3 = *(v0 + 144);
    sub_10002CDC0((v0 + 112), v2);
    v4 = (*(v3 + 16))(v2, v3);
    v6 = v5;
    sub_10000C60C((v0 + 112));
  }

  else
  {
    *(v0 + 184) = 0;
    *(v0 + 168) = 0u;
    *(v0 + 152) = 0u;
    sub_100005508(v0 + 152, &qword_10097C2F0, &qword_1008010A0);
    v4 = 0;
    v6 = 0xF000000000000000;
  }

  v7 = *(v0 + 200);
  v8 = v7[3];
  v9 = v7[4];
  sub_10002CDC0(v7, v8);
  (*(v9 + 16))(v8, v9);
  v10 = *sub_10002CDC0((v0 + 64), *(v0 + 88));
  sub_100669484(v4, v6);
  v12 = v11;
  v13 = *(v0 + 192);
  sub_10000C60C((v0 + 64));
  v14 = *(v0 + 40);
  v15 = *(v0 + 56);
  sub_10002F5B4(v0 + 16, v14);
  v16 = (*(v15 + 24))(v14, v15);
  v17 = Data.init(referencing:)();
  v19 = v18;
  isa = Data._bridgeToObjectiveC()().super.isa;
  sub_100026AC0(v17, v19);
  [v16 setAksToken:isa];

  v21 = *(v0 + 40);
  v22 = *(v0 + 48);
  v23 = sub_10002CDC0((v0 + 16), v21);
  v13[3] = v21;
  v13[4] = *(v22 + 8);
  v24 = sub_10002F604(v13);
  (*(*(v21 - 8) + 16))(v24, v23, v21);
  sub_10028BCC0(v4, v6);

  sub_10000C60C((v0 + 16));
  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_1003F3CCC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100005C00;

  return sub_1003F39D0(a1, a2);
}

uint64_t sub_1003F3D6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[19] = a2;
  v3[20] = a3;
  v3[18] = a1;
  return _swift_task_switch(sub_1003F3D90, 0, 0);
}

uint64_t sub_1003F3D90()
{
  v1 = *(v0 + 160);
  sub_1002D63B0(*(v0 + 152), v0 + 16);
  v2 = type metadata accessor for SDAuthenticationCommonOperationInput();
  sub_1003FBDAC(v1 + *(v2 + 36), v0 + 104);
  if (*(v0 + 128))
  {
    v3 = *(v0 + 152);
    sub_1000121F8((v0 + 104), v0 + 64);
    v4 = sub_10002CDC0((v0 + 64), *(v0 + 88));
    v5 = v3[3];
    v6 = v3[4];
    sub_10002CDC0(v3, v5);
    v7 = (*(v6 + 16))(v5, v6);
    v9 = v8;
    v10 = *v4 + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication10LTKSession_aksSession;
    v11 = *v10;
    LOBYTE(v10) = *(v10 + 8);
    *(v0 + 104) = v11;
    *(v0 + 112) = v10;
    sub_10028088C(&qword_10097C2A0, &qword_100800F80);
    Optional.tryUnwrap(_:file:line:)();
    v16 = *(v0 + 168);
    v17 = sub_1004BD0BC(v7, v9);
    v19 = v18;
    sub_100026AC0(v7, v9);
    sub_10000C60C((v0 + 64));
    v22 = *(v0 + 40);
    v23 = *(v0 + 56);
    sub_10002F5B4(v0 + 16, v22);
    v24 = (*(v23 + 24))(v22, v23);
    if (v19 >> 60 == 15)
    {
      isa = 0;
    }

    else
    {
      sub_100294008(v17, v19);
      isa = Data._bridgeToObjectiveC()().super.isa;
      sub_10028BCC0(v17, v19);
    }

    v26 = *(v0 + 144);
    [v24 setAksToken:isa];

    v27 = *(v0 + 40);
    v28 = *(v0 + 48);
    v29 = sub_10002CDC0((v0 + 16), v27);
    v26[3] = v27;
    v26[4] = *(v28 + 8);
    v30 = sub_10002F604(v26);
    (*(*(v27 - 8) + 16))(v30, v29, v27);
    sub_10028BCC0(v17, v19);
    sub_10000C60C((v0 + 16));
    v20 = *(v0 + 8);
  }

  else
  {
    sub_100005508(v0 + 104, &qword_1009819B0, &qword_100800360);
    v12 = sub_100010F88(37, 0xD000000000000027, 0x800000010078EF00);
    v14 = v13;
    sub_1000115C8();
    swift_allocError();
    *v15 = v12;
    *(v15 + 8) = v14;
    swift_willThrow();
    sub_10000C60C((v0 + 16));
    v20 = *(v0 + 8);
  }

  return v20();
}

uint64_t sub_1003F40E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100005C00;

  return sub_1003F3D6C(a1, a2, a3);
}

uint64_t sub_1003F4198(uint64_t a1, uint64_t a2)
{
  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return _swift_task_switch(sub_1003F41B8, 0, 0);
}

uint64_t sub_1003F41B8()
{
  sub_1002D63B0(v0[9], (v0 + 2));
  v1 = sub_1003FC3A8();
  v2 = v0[5];
  v4 = v0[7];
  v3 = v0[8];
  v5 = v1;
  v7 = v6;
  sub_10002F5B4((v0 + 2), v2);
  v8 = (*(v4 + 24))(v2, v4);
  isa = Data._bridgeToObjectiveC()().super.isa;
  [v8 setRangingToken:isa];

  v10 = v0[5];
  v11 = v0[6];
  sub_10002F5B4((v0 + 2), v10);
  v12 = *(v11 + 16);
  sub_100294008(v5, v7);
  v12(v5, v7, v10, v11);
  v13 = v0[5];
  v14 = v0[7];
  v15 = sub_10002CDC0(v0 + 2, v13);
  v3[3] = v13;
  v3[4] = *(v14 + 8);
  v16 = sub_10002F604(v3);
  (*(*(v13 - 8) + 16))(v16, v15, v13);
  sub_100026AC0(v5, v7);
  sub_10000C60C(v0 + 2);
  v17 = v0[1];

  return v17();
}

uint64_t sub_1003F4384(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100005C00;

  return sub_1003F4198(a1, a2);
}

uint64_t sub_1003F4424(uint64_t a1, uint64_t a2)
{
  v2[8] = a1;
  v2[9] = a2;
  v3 = type metadata accessor for Date();
  v2[10] = v3;
  v4 = *(v3 - 8);
  v2[11] = v4;
  v5 = *(v4 + 64) + 15;
  v2[12] = swift_task_alloc();
  v6 = *(*(sub_10028088C(&qword_10097A7F0, &unk_1007FB600) - 8) + 64) + 15;
  v2[13] = swift_task_alloc();

  return _swift_task_switch(sub_1003F451C, 0, 0);
}

uint64_t sub_1003F451C()
{
  v2 = v0 + 13;
  v1 = v0[13];
  v3 = v0[11];
  v25 = v0[10];
  v4 = v0[9];
  sub_1002D63B0(v4, (v0 + 2));
  v5 = v0[5];
  v6 = v0[7];
  sub_10002F5B4((v0 + 2), v5);
  v7 = (*(v6 + 24))(v5, v6);
  v8 = v4[3];
  v9 = v4[4];
  sub_10002CDC0(v4, v8);
  (*(v9 + 16))(v8, v9);
  if ((*(v3 + 48))(v1, 1, v25) == 1)
  {
    v10 = v0[12];
    v2 = v0 + 12;
    sub_100005508(v0[13], &qword_10097A7F0, &unk_1007FB600);
    static Date.distantFuture.getter();
  }

  v11 = *v2;
  v12 = v0[12];
  v13 = v0[13];
  v14 = v0[10];
  v15 = v0[11];
  v16 = v0[8];
  Date.timeIntervalSince1970.getter();
  v18 = v17;
  (*(v15 + 8))(v11, v14);
  [v7 setUnlockDate:v18];

  v19 = v0[5];
  v20 = v0[6];
  v21 = sub_10002CDC0(v0 + 2, v19);
  v16[3] = v19;
  v16[4] = *(v20 + 8);
  v22 = sub_10002F604(v16);
  (*(*(v19 - 8) + 16))(v22, v21, v19);
  sub_10000C60C(v0 + 2);

  v23 = v0[1];

  return v23();
}

uint64_t sub_1003F4730(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100005C00;

  return sub_1003F4424(a1, a2);
}

uint64_t sub_1003F47D0(uint64_t a1, uint64_t a2)
{
  v2[8] = a1;
  v2[9] = a2;
  v3 = *(*(sub_10028088C(&qword_10097A7F0, &unk_1007FB600) - 8) + 64) + 15;
  v2[10] = swift_task_alloc();
  v4 = type metadata accessor for Date();
  v2[11] = v4;
  v5 = *(v4 - 8);
  v2[12] = v5;
  v6 = *(v5 + 64) + 15;
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();

  return _swift_task_switch(sub_1003F48D4, 0, 0);
}

uint64_t sub_1003F48D4()
{
  v48 = v0;
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[9];
  v4 = v0[10];
  sub_1002D63B0(v3, (v0 + 2));
  v5 = v3[3];
  v6 = v3[4];
  sub_10002CDC0(v3, v5);
  (*(v6 + 16))(v5, v6);
  v7 = (*(v2 + 48))(v4, 1, v1);
  v8 = v0[14];
  v9 = v0[10];
  if (v7 == 1)
  {
    v10 = v0[13];
    sub_100005508(v0[10], &qword_10097A7F0, &unk_1007FB600);
    v11 = sub_100010F88(11, 0xD00000000000002ELL, 0x800000010078F0B0);
    v13 = v12;
    sub_1000115C8();
    swift_allocError();
    *v14 = v11;
    *(v14 + 8) = v13;
    swift_willThrow();
    sub_10000C60C(v0 + 2);

    v15 = v0[1];
  }

  else
  {
    (*(v0[12] + 32))(v0[14], v0[10], v0[11]);
    if (qword_1009737E8 != -1)
    {
      swift_once();
    }

    v16 = v0[13];
    v17 = v0[14];
    v18 = v0[11];
    v19 = v0[12];
    v20 = type metadata accessor for Logger();
    sub_10000C4AC(v20, qword_10097BA28);
    (*(v19 + 16))(v16, v17, v18);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();
    v23 = os_log_type_enabled(v21, v22);
    v25 = v0[12];
    v24 = v0[13];
    v26 = v0[11];
    if (v23)
    {
      v27 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v47 = v45;
      *v27 = 136315138;
      sub_1003FCA70(&qword_100983290, &type metadata accessor for Date);
      v28 = dispatch thunk of CustomStringConvertible.description.getter();
      v30 = v29;
      v46 = *(v25 + 8);
      v46(v24, v26);
      v31 = sub_10000C4E4(v28, v30, &v47);

      *(v27 + 4) = v31;
      _os_log_impl(&_mh_execute_header, v21, v22, "Registration success date: %s", v27, 0xCu);
      sub_10000C60C(v45);
    }

    else
    {

      v46 = *(v25 + 8);
      v46(v24, v26);
    }

    v33 = v0[13];
    v32 = v0[14];
    v34 = v0[10];
    v35 = v0[11];
    v36 = v0[5];
    v38 = v0[7];
    v37 = v0[8];
    sub_10002F5B4((v0 + 2), v36);
    v39 = (*(v38 + 24))(v36, v38);
    Date.timeIntervalSince1970.getter();
    [v39 setUnlockDate:?];

    v40 = v0[5];
    v41 = v0[6];
    v42 = sub_10002CDC0(v0 + 2, v40);
    v37[3] = v40;
    v37[4] = *(v41 + 8);
    v43 = sub_10002F604(v37);
    (*(*(v40 - 8) + 16))(v43, v42, v40);
    v46(v32, v35);
    sub_10000C60C(v0 + 2);

    v15 = v0[1];
  }

  return v15();
}

uint64_t sub_1003F4D3C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100005C00;

  return sub_1003F47D0(a1, a2);
}

uint64_t sub_1003F4DDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[18] = a2;
  v3[19] = a3;
  v3[17] = a1;
  return _swift_task_switch(sub_1003F4E00, 0, 0);
}

uint64_t sub_1003F4E00()
{
  v38 = v0;
  v1 = *(v0 + 152);
  sub_1002A9938(*(v0 + 144), v0 + 16);
  v2 = sub_1003E7E2C();
  v4 = v3;
  v5 = v2;
  v6 = *(v0 + 152);
  v7 = type metadata accessor for SDAuthenticationCommonOperationInput();
  sub_1003FBDAC(v6 + *(v7 + 36), v0 + 96);
  if (!*(v0 + 120))
  {

    sub_100005508(v0 + 96, &qword_1009819B0, &qword_100800360);
    v12 = sub_100010F88(37, 0xD000000000000027, 0x800000010078EF00);
    v14 = v13;
    sub_1000115C8();
    swift_allocError();
    *v15 = v12;
    *(v15 + 8) = v14;
    swift_willThrow();
LABEL_4:
    sub_10000C60C((v0 + 16));
    v16 = *(v0 + 8);
    goto LABEL_5;
  }

  sub_1000121F8((v0 + 96), v0 + 56);
  v8 = *(*sub_10002CDC0((v0 + 56), *(v0 + 80)) + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication10LTKSession_localLTK);
  v9 = *(v8 + 112);
  v10 = swift_task_alloc();
  v10[2] = v8;
  v10[3] = v5;
  v10[4] = v4;
  v11 = swift_task_alloc();
  *(v11 + 16) = sub_1003FC538;
  *(v11 + 24) = v10;
  os_unfair_lock_lock(v9 + 4);
  sub_1003FC558(&v37);
  os_unfair_lock_unlock(v9 + 4);
  v18 = v37;

  if (!*(&v18 + 1))
  {
    v33 = sub_100010F88(11, 0xD00000000000002ELL, 0x800000010078F0B0);
    v35 = v34;
    sub_1000115C8();
    swift_allocError();
    *v36 = v33;
    *(v36 + 8) = v35;
    swift_willThrow();
    sub_10000C60C((v0 + 56));
    goto LABEL_4;
  }

  if (qword_1009737E8 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  sub_10000C4AC(v19, qword_10097BA28);

  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *&v37 = v23;
    *v22 = 136315138;
    *(v22 + 4) = sub_10000C4E4(v18, *(&v18 + 1), &v37);
    _os_log_impl(&_mh_execute_header, v20, v21, "Registration ID: %s", v22, 0xCu);
    sub_10000C60C(v23);
  }

  v24 = *(v0 + 136);
  v25 = *(v0 + 40);
  v26 = *(v0 + 48);
  sub_10002F5B4(v0 + 16, v25);
  v27 = (*(v26 + 24))(v25, v26);
  v28 = String._bridgeToObjectiveC()();

  [v27 setRegistrationID:v28];

  v29 = *(v0 + 40);
  v30 = *(v0 + 48);
  v31 = sub_10002CDC0((v0 + 16), v29);
  v24[3] = v29;
  v24[4] = *(v30 + 8);
  v32 = sub_10002F604(v24);
  (*(*(v29 - 8) + 16))(v32, v31, v29);
  sub_10000C60C((v0 + 56));
  sub_10000C60C((v0 + 16));
  v16 = *(v0 + 8);
LABEL_5:

  return v16();
}

uint64_t sub_1003F5264(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100005C00;

  return sub_1003F4DDC(a1, a2, a3);
}

uint64_t sub_1003F5314(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[11] = a2;
  v3[12] = a3;
  v3[10] = a1;
  return _swift_task_switch(sub_1003F5338, 0, 0);
}

uint64_t sub_1003F5338()
{
  v1 = v0[12];
  sub_1002A9938(v0[11], (v0 + 2));
  v2 = v0[5];
  v3 = v0[6];
  sub_10002F5B4((v0 + 2), v2);
  v4 = (*(v3 + 24))(v2, v3);
  [v4 setVersion:1];

  v5 = v0[5];
  v6 = v0[6];
  sub_10002F5B4((v0 + 2), v5);
  v7 = (*(v6 + 24))(v5, v6);
  v8 = type metadata accessor for SDAuthenticationCommonOperationInput();
  v9 = v1 + *(v8 + 24);
  UUID.uuidString.getter();
  v10 = String._bridgeToObjectiveC()();

  [v7 setSessionID:v10];

  v11 = v0[5];
  v12 = v0[6];
  sub_10002F5B4((v0 + 2), v11);
  v13 = (*(v12 + 24))(v11, v12);
  if (HIDWORD(*(v1 + *(v8 + 28))))
  {
    __break(1u);
  }

  else
  {
    v14 = v13;
    [v13 setType:?];

    if (qword_1009737E8 == -1)
    {
      goto LABEL_3;
    }
  }

  swift_once();
LABEL_3:
  v15 = type metadata accessor for Logger();
  sub_10000C4AC(v15, qword_10097BA28);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v18 = 138412290;
    swift_beginAccess();
    v20 = v0[5];
    v21 = v0[6];
    sub_10002F5B4((v0 + 2), v20);
    v22 = (*(v21 + 24))(v20, v21);
    swift_endAccess();
    *(v18 + 4) = v22;
    *v19 = v22;
    _os_log_impl(&_mh_execute_header, v16, v17, "Sending %@", v18, 0xCu);
    sub_100005508(v19, &qword_100975400, &qword_1007F65D0);
  }

  v23 = v0[10];

  swift_beginAccess();
  v24 = v0[5];
  v25 = v0[6];
  v26 = sub_10002CDC0(v0 + 2, v24);
  v23[3] = v24;
  v23[4] = *(v25 + 8);
  v27 = sub_10002F604(v23);
  (*(*(v24 - 8) + 16))(v27, v26, v24);
  sub_10000C60C(v0 + 2);
  v28 = v0[1];

  return v28();
}

uint64_t sub_1003F5698(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100005C00;

  return sub_1003F5314(a1, a2, a3);
}

uint64_t sub_1003F5748(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[11] = a2;
  v3[12] = a3;
  v3[10] = a1;
  return _swift_task_switch(sub_1003F576C, 0, 0);
}

uint64_t sub_1003F576C()
{
  v1 = v0[12];
  sub_1002A9938(v0[11], (v0 + 2));
  v2 = v0[5];
  v3 = v0[6];
  sub_10002F5B4((v0 + 2), v2);
  v4 = (*(v3 + 24))(v2, v3);
  [v4 setVersion:1];

  v5 = v0[5];
  v6 = v0[6];
  sub_10002F5B4((v0 + 2), v5);
  v7 = (*(v6 + 24))(v5, v6);
  v8 = type metadata accessor for SDAuthenticationCommonOperationInput();
  v9 = v1 + *(v8 + 24);
  UUID.uuidString.getter();
  v10 = String._bridgeToObjectiveC()();

  [v7 setSessionID:v10];

  v11 = v0[5];
  v12 = v0[6];
  sub_10002F5B4((v0 + 2), v11);
  v13 = (*(v12 + 24))(v11, v12);
  if (HIDWORD(*(v1 + *(v8 + 28))))
  {
    __break(1u);
  }

  else
  {
    v14 = v13;
    [v13 setType:?];

    if (qword_1009737E8 == -1)
    {
      goto LABEL_3;
    }
  }

  swift_once();
LABEL_3:
  v15 = type metadata accessor for Logger();
  sub_10000C4AC(v15, qword_10097BA28);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v18 = 138412290;
    swift_beginAccess();
    v20 = v0[5];
    v21 = v0[6];
    sub_10002F5B4((v0 + 2), v20);
    v22 = (*(v21 + 24))(v20, v21);
    swift_endAccess();
    *(v18 + 4) = v22;
    *v19 = v22;
    _os_log_impl(&_mh_execute_header, v16, v17, "Sending %@", v18, 0xCu);
    sub_100005508(v19, &qword_100975400, &qword_1007F65D0);
  }

  v23 = v0[10];

  swift_beginAccess();
  v24 = v0[5];
  v25 = v0[6];
  v26 = sub_10002CDC0(v0 + 2, v24);
  v23[3] = v24;
  v23[4] = *(v25 + 8);
  v27 = sub_10002F604(v23);
  (*(*(v24 - 8) + 16))(v27, v26, v24);
  sub_10000C60C(v0 + 2);
  v28 = v0[1];

  return v28();
}

uint64_t sub_1003F5ACC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100005C00;

  return sub_1003F5748(a1, a2, a3);
}

uint64_t sub_1003F5B7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[11] = a2;
  v3[12] = a3;
  v3[10] = a1;
  return _swift_task_switch(sub_1003F5BA0, 0, 0);
}

uint64_t sub_1003F5BA0()
{
  v1 = v0[12];
  sub_1002A9938(v0[11], (v0 + 2));
  v2 = v0[5];
  v3 = v0[6];
  sub_10002F5B4((v0 + 2), v2);
  v4 = (*(v3 + 24))(v2, v3);
  [v4 setVersion:1];

  v5 = v0[5];
  v6 = v0[6];
  sub_10002F5B4((v0 + 2), v5);
  v7 = (*(v6 + 24))(v5, v6);
  v8 = v1 + *(type metadata accessor for SDAuthenticationCommonOperationInput() + 24);
  UUID.uuidString.getter();
  v9 = String._bridgeToObjectiveC()();

  [v7 setSessionID:v9];

  if (qword_1009737E8 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_10000C4AC(v10, qword_10097BA28);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 138412290;
    swift_beginAccess();
    v15 = v0[5];
    v16 = v0[6];
    sub_10002F5B4((v0 + 2), v15);
    v17 = (*(v16 + 24))(v15, v16);
    swift_endAccess();
    *(v13 + 4) = v17;
    *v14 = v17;
    _os_log_impl(&_mh_execute_header, v11, v12, "Sending %@", v13, 0xCu);
    sub_100005508(v14, &qword_100975400, &qword_1007F65D0);
  }

  v18 = v0[10];

  swift_beginAccess();
  v19 = v0[5];
  v20 = v0[6];
  v21 = sub_10002CDC0(v0 + 2, v19);
  v18[3] = v19;
  v18[4] = *(v20 + 8);
  v22 = sub_10002F604(v18);
  (*(*(v19 - 8) + 16))(v22, v21, v19);
  sub_10000C60C(v0 + 2);
  v23 = v0[1];

  return v23();
}

uint64_t sub_1003F5EA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100005C00;

  return sub_1003F5B7C(a1, a2, a3);
}

uint64_t sub_1003F5F54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[11] = a2;
  v3[12] = a3;
  v3[10] = a1;
  return _swift_task_switch(sub_1003F5F78, 0, 0);
}

uint64_t sub_1003F5F78()
{
  v1 = v0[12];
  sub_1002A9938(v0[11], (v0 + 2));
  v2 = v0[5];
  v3 = v0[6];
  sub_10002F5B4((v0 + 2), v2);
  v4 = (*(v3 + 24))(v2, v3);
  [v4 setVersion:1];

  v5 = v0[5];
  v6 = v0[6];
  sub_10002F5B4((v0 + 2), v5);
  v7 = (*(v6 + 24))(v5, v6);
  v8 = v1 + *(type metadata accessor for SDAuthenticationCommonOperationInput() + 24);
  UUID.uuidString.getter();
  v9 = String._bridgeToObjectiveC()();

  [v7 setSessionID:v9];

  if (qword_1009737E8 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_10000C4AC(v10, qword_10097BA28);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 138412290;
    swift_beginAccess();
    v15 = v0[5];
    v16 = v0[6];
    sub_10002F5B4((v0 + 2), v15);
    v17 = (*(v16 + 24))(v15, v16);
    swift_endAccess();
    *(v13 + 4) = v17;
    *v14 = v17;
    _os_log_impl(&_mh_execute_header, v11, v12, "Sending %@", v13, 0xCu);
    sub_100005508(v14, &qword_100975400, &qword_1007F65D0);
  }

  v18 = v0[10];

  swift_beginAccess();
  v19 = v0[5];
  v20 = v0[6];
  v21 = sub_10002CDC0(v0 + 2, v19);
  v18[3] = v19;
  v18[4] = *(v20 + 8);
  v22 = sub_10002F604(v18);
  (*(*(v19 - 8) + 16))(v22, v21, v19);
  sub_10000C60C(v0 + 2);
  v23 = v0[1];

  return v23();
}

uint64_t sub_1003F627C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100005C00;

  return sub_1003F5F54(a1, a2, a3);
}

uint64_t sub_1003F632C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[11] = a2;
  v3[12] = a3;
  v3[10] = a1;
  return _swift_task_switch(sub_1003F6350, 0, 0);
}

uint64_t sub_1003F6350()
{
  v1 = v0[12];
  sub_1002A9938(v0[11], (v0 + 2));
  v2 = v0[5];
  v3 = v0[6];
  sub_10002F5B4((v0 + 2), v2);
  v4 = (*(v3 + 32))(v2, v3);
  [v4 setVersion:1];

  v5 = v0[5];
  v6 = v0[6];
  sub_10002F5B4((v0 + 2), v5);
  v7 = (*(v6 + 32))(v5, v6);
  v8 = v1 + *(type metadata accessor for SDAuthenticationCommonOperationInput() + 24);
  UUID.uuidString.getter();
  v9 = String._bridgeToObjectiveC()();

  [v7 setSessionID:v9];

  v10 = v0[5];
  v11 = v0[6];
  sub_10002F5B4((v0 + 2), v10);
  v12 = (*(v11 + 32))(v10, v11);
  [v12 setSuccess:1];

  if (qword_1009737E8 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_10000C4AC(v13, qword_10097BA28);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v16 = 138412290;
    swift_beginAccess();
    v18 = v0[5];
    v19 = v0[6];
    sub_10002F5B4((v0 + 2), v18);
    v20 = (*(v19 + 32))(v18, v19);
    swift_endAccess();
    *(v16 + 4) = v20;
    *v17 = v20;
    _os_log_impl(&_mh_execute_header, v14, v15, "Sending %@", v16, 0xCu);
    sub_100005508(v17, &qword_100975400, &qword_1007F65D0);
  }

  v21 = v0[10];

  swift_beginAccess();
  v22 = v0[5];
  v23 = v0[6];
  v24 = sub_10002CDC0(v0 + 2, v22);
  v21[3] = v22;
  v21[4] = *(v23 + 16);
  v25 = sub_10002F604(v21);
  (*(*(v22 - 8) + 16))(v25, v24, v22);
  sub_10000C60C(v0 + 2);
  v26 = v0[1];

  return v26();
}

uint64_t sub_1003F669C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100005C00;

  return sub_1003F632C(a1, a2, a3);
}

uint64_t sub_1003F674C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[18] = a2;
  v3[19] = a3;
  v3[17] = a1;
  return _swift_task_switch(sub_1003F6770, 0, 0);
}

uint64_t sub_1003F6770()
{
  v38 = v0;
  v1 = *(v0 + 152);
  sub_1002A9938(*(v0 + 144), v0 + 16);
  v4 = sub_1003E7E2C();
  v6 = v5;
  v7 = *(v0 + 152);
  v8 = *(type metadata accessor for SDAuthenticationCommonOperationInput() + 36);
  sub_1003FBDAC(v7 + v8, v0 + 96);
  if (*(v0 + 120))
  {
    sub_1000121F8((v0 + 96), v0 + 56);
    v9 = *(*sub_10002CDC0((v0 + 56), *(v0 + 80)) + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication10LTKSession_localLTK);
    v10 = *(v9 + 112);
    v11 = swift_task_alloc();
    v11[2] = v9;
    v11[3] = v4;
    v11[4] = v6;
    v12 = swift_task_alloc();
    *(v12 + 16) = sub_1003FC5C8;
    *(v12 + 24) = v11;
    os_unfair_lock_lock(v10 + 4);
    sub_1003FCB28(&v37);
    os_unfair_lock_unlock(v10 + 4);
    v14 = *(&v37 + 1);
    v13 = v37;

    sub_10000C60C((v0 + 56));
  }

  else
  {
    sub_100005508(v0 + 96, &qword_1009819B0, &qword_100800360);
    sub_100010F88(37, 0xD000000000000027, 0x800000010078EF00);

    v13 = 0;
    v14 = 0;
  }

  v15 = *(v0 + 40);
  v16 = *(v0 + 48);
  sub_10002F5B4(v0 + 16, v15);
  (*(v16 + 24))(v13, v14, v15, v16);
  sub_1003FBDAC(v7 + v8, v0 + 96);
  if (*(v0 + 120))
  {
    sub_1000121F8((v0 + 96), v0 + 56);
    v17 = *(*sub_10002CDC0((v0 + 56), *(v0 + 80)) + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication10LTKSession_localLTK);
    v18 = *(v17 + 112);
    v19 = swift_task_alloc();
    v19[2] = v17;
    v19[3] = v4;
    v19[4] = v6;
    v20 = swift_task_alloc();
    *(v20 + 16) = sub_1003FC5A8;
    *(v20 + 24) = v19;
    os_unfair_lock_lock(v18 + 4);
    sub_1003206A8(v21);
    os_unfair_lock_unlock(v18 + 4);

    sub_10000C60C((v0 + 56));
    if (qword_1009737E8 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_10000C4AC(v26, qword_10097BA28);

    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *&v37 = v30;
      *v29 = 136315138;
      v31 = sub_10000C4E4(v4, v6, &v37);

      *(v29 + 4) = v31;
      _os_log_impl(&_mh_execute_header, v27, v28, "Unpaired %s", v29, 0xCu);
      sub_10000C60C(v30);
    }

    else
    {
    }

    v32 = *(v0 + 136);
    v33 = *(v0 + 40);
    v34 = *(v0 + 48);
    v35 = sub_10002CDC0((v0 + 16), v33);
    v32[3] = v33;
    v32[4] = *(v34 + 8);
    v36 = sub_10002F604(v32);
    (*(*(v33 - 8) + 16))(v36, v35, v33);
    sub_10000C60C((v0 + 16));
    v2 = *(v0 + 8);
  }

  else
  {

    sub_100005508(v0 + 96, &qword_1009819B0, &qword_100800360);
    v22 = sub_100010F88(37, 0xD000000000000027, 0x800000010078EF00);
    v24 = v23;
    sub_1000115C8();
    swift_allocError();
    *v25 = v22;
    *(v25 + 8) = v24;
    swift_willThrow();
    sub_10000C60C((v0 + 16));
    v2 = *(v0 + 8);
  }

  return v2();
}

uint64_t sub_1003F6C70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100005C00;

  return sub_1003F674C(a1, a2, a3);
}

uint64_t sub_1003F6D20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[12] = a2;
  v3[13] = a3;
  v3[11] = a1;
  return _swift_task_switch(sub_1003F6D44, 0, 0);
}

uint64_t sub_1003F6D44()
{
  v1 = v0[12];
  sub_1002D63B0(v1, (v0 + 2));
  v2 = v0[5];
  v3 = v0[7];
  sub_10002F5B4((v0 + 2), v2);
  v4 = (*(v3 + 24))(v2, v3);
  [v4 setVersion:1];

  v5 = sub_10002CDC0(v1, v1[3]);
  v6 = (v5 + *(_s6UnpairV23InitialInitiatorContextVMa(0) + 24));
  if (!v6[1])
  {
    v38 = sub_100010F88(10, 0xD000000000000012, 0x800000010078F2B0);
    v40 = v39;
    sub_1000115C8();
    swift_allocError();
    *v41 = v38;
    *(v41 + 8) = v40;
    swift_willThrow();
    sub_10000C60C(v0 + 2);
    v37 = v0[1];
    goto LABEL_8;
  }

  v7 = v0[13];
  v8 = *v6;
  v9 = v0[5];
  v10 = v0[7];
  sub_10002F5B4((v0 + 2), v9);
  v11 = *(v10 + 24);

  v12 = v11(v9, v10);
  v13 = String._bridgeToObjectiveC()();

  [v12 setPairingID:v13];

  v14 = v0[5];
  v15 = v0[7];
  sub_10002F5B4((v0 + 2), v14);
  v16 = (*(v15 + 24))(v14, v15);
  v17 = type metadata accessor for SDAuthenticationCommonOperationInput();
  v18 = v7 + *(v17 + 24);
  UUID.uuidString.getter();
  v19 = String._bridgeToObjectiveC()();

  [v16 setSessionID:v19];

  v20 = v0[5];
  v21 = v0[7];
  sub_10002F5B4((v0 + 2), v20);
  v22 = (*(v21 + 24))(v20, v21);
  if (HIDWORD(*(v7 + *(v17 + 28))))
  {
    __break(1u);
    goto LABEL_12;
  }

  v23 = v22;
  [v22 setType:?];

  if (qword_1009737E8 != -1)
  {
LABEL_12:
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  sub_10000C4AC(v24, qword_10097BA28);
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v27 = 138412290;
    swift_beginAccess();
    v29 = v0[5];
    v30 = v0[7];
    sub_10002F5B4((v0 + 2), v29);
    v31 = (*(v30 + 24))(v29, v30);
    swift_endAccess();
    *(v27 + 4) = v31;
    *v28 = v31;
    _os_log_impl(&_mh_execute_header, v25, v26, "Sending %@", v27, 0xCu);
    sub_100005508(v28, &qword_100975400, &qword_1007F65D0);
  }

  v32 = v0[11];

  swift_beginAccess();
  v33 = v0[5];
  v34 = v0[6];
  v35 = sub_10002CDC0(v0 + 2, v33);
  v32[3] = v33;
  v32[4] = *(v34 + 8);
  v36 = sub_10002F604(v32);
  (*(*(v33 - 8) + 16))(v36, v35, v33);
  sub_10000C60C(v0 + 2);
  v37 = v0[1];
LABEL_8:

  return v37();
}

uint64_t sub_1003F71D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100005C00;

  return sub_1003F6D20(a1, a2, a3);
}

uint64_t sub_1003F7284(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[13] = a2;
  v3[14] = a3;
  v3[12] = a1;
  return _swift_task_switch(sub_1003F72A8, 0, 0);
}

uint64_t sub_1003F72A8()
{
  v38 = v0;
  v1 = *(v0 + 112);
  v4 = sub_1003E7E2C();
  v6 = v5;
  v7 = *(v0 + 112);
  v8 = type metadata accessor for SDAuthenticationCommonOperationInput();
  sub_1003FBDAC(v7 + *(v8 + 36), v0 + 56);
  if (*(v0 + 80))
  {
    v9 = *(v0 + 104);
    sub_1000121F8((v0 + 56), v0 + 16);
    v10 = sub_10002CDC0((v0 + 16), *(v0 + 40));
    v11 = sub_10002CDC0(v9, v9[3]);
    v12 = (v11 + *(_s6UnpairV27HandlePairingDisableContextVMa(0) + 24));
    v14 = *v12;
    v13 = v12[1];
    v15 = *(*v10 + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication10LTKSession_localLTK);
    v16 = swift_task_alloc();
    v16[2] = v14;
    v16[3] = v13;
    v16[4] = v4;
    v16[5] = v6;
    v16[6] = v15;
    v17 = *(v15 + 112);
    v18 = swift_task_alloc();
    v18[2] = v15;
    v18[3] = v4;
    v18[4] = v6;
    v18[5] = sub_1003FC898;
    v18[6] = v16;
    v19 = swift_task_alloc();
    *(v19 + 16) = sub_1003FCB78;
    *(v19 + 24) = v18;

    os_unfair_lock_lock(v17 + 4);
    sub_1003206A8(v20);
    os_unfair_lock_unlock(v17 + 4);

    sub_10000C60C((v0 + 16));
    if (qword_1009737E8 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    sub_10000C4AC(v25, qword_10097BA28);

    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v37 = v29;
      *v28 = 136315138;
      v30 = sub_10000C4E4(v4, v6, &v37);

      *(v28 + 4) = v30;
      _os_log_impl(&_mh_execute_header, v26, v27, "Unpaired %s", v28, 0xCu);
      sub_10000C60C(v29);
    }

    else
    {
    }

    v32 = *(v0 + 96);
    v31 = *(v0 + 104);
    v33 = v9[3];
    v34 = v31[4];
    v35 = sub_10002CDC0(v31, v33);
    v32[3] = v33;
    v32[4] = *(v34 + 8);
    v36 = sub_10002F604(v32);
    (*(*(v33 - 8) + 16))(v36, v35, v33);
    v2 = *(v0 + 8);
  }

  else
  {

    sub_100005508(v0 + 56, &qword_1009819B0, &qword_100800360);
    v21 = sub_100010F88(37, 0xD000000000000027, 0x800000010078EF00);
    v23 = v22;
    sub_1000115C8();
    swift_allocError();
    *v24 = v21;
    *(v24 + 8) = v23;
    swift_willThrow();
    v2 = *(v0 + 8);
  }

  return v2();
}

uint64_t sub_1003F7694(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100005C00;

  return sub_1003F7284(a1, a2, a3);
}

uint64_t sub_1003F7744(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[11] = a2;
  v3[12] = a3;
  v3[10] = a1;
  return _swift_task_switch(sub_1003F7768, 0, 0);
}

uint64_t sub_1003F7768()
{
  v34 = v0;
  v1 = v0[12];
  sub_1002A9938(v0[11], (v0 + 2));
  v2 = v0[5];
  v3 = v0[6];
  sub_10002F5B4((v0 + 2), v2);
  [(*(v3 + 32))(v2 v3)];
  swift_unknownObjectRelease();
  v4 = v0[5];
  v5 = v0[6];
  sub_10002F5B4((v0 + 2), v4);
  v6 = (*(v5 + 32))(v4, v5);
  v7 = type metadata accessor for SDAuthenticationCommonOperationInput();
  v8 = v1 + *(v7 + 24);
  UUID.uuidString.getter();
  v9 = String._bridgeToObjectiveC()();

  [v6 setSessionID:v9];

  swift_unknownObjectRelease();
  v10 = v0[5];
  v11 = v0[6];
  sub_10002F5B4((v0 + 2), v10);
  v12 = (*(v11 + 32))(v10, v11);
  if (HIDWORD(*(v1 + *(v7 + 28))))
  {
    __break(1u);
  }

  else
  {
    [v12 setType:?];
    swift_unknownObjectRelease();
    if (qword_1009737E8 == -1)
    {
      goto LABEL_3;
    }
  }

  swift_once();
LABEL_3:
  v13 = type metadata accessor for Logger();
  sub_10000C4AC(v13, qword_10097BA28);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v33 = v17;
    *v16 = 136315138;
    swift_beginAccess();
    v18 = v0[5];
    v19 = v0[6];
    sub_10002F5B4((v0 + 2), v18);
    v20 = (*(v19 + 32))(v18, v19);
    swift_endAccess();
    v21 = [v20 description];
    swift_unknownObjectRelease();
    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;

    v25 = sub_10000C4E4(v22, v24, &v33);

    *(v16 + 4) = v25;
    _os_log_impl(&_mh_execute_header, v14, v15, "Sending %s", v16, 0xCu);
    sub_10000C60C(v17);
  }

  v26 = v0[10];
  swift_beginAccess();
  v27 = v0[5];
  v28 = v0[6];
  v29 = sub_10002CDC0(v0 + 2, v27);
  v26[3] = v27;
  v26[4] = *(v28 + 8);
  v30 = sub_10002F604(v26);
  (*(*(v27 - 8) + 16))(v30, v29, v27);
  sub_10000C60C(v0 + 2);
  v31 = v0[1];

  return v31();
}

uint64_t sub_1003F7B18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100005C00;

  return sub_1003F7744(a1, a2, a3);
}

uint64_t sub_1003F7BC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return _swift_task_switch(sub_1003F7BEC, 0, 0);
}

uint64_t sub_1003F7F04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100005C00;

  return sub_1003F7BC8(a1, a2, a3);
}

uint64_t sub_1003F7FB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[18] = a2;
  v3[19] = a3;
  v3[17] = a1;
  return _swift_task_switch(sub_1003F7FD8, 0, 0);
}

uint64_t sub_1003F7FD8()
{
  v1 = *(v0 + 152);
  sub_1002A9938(*(v0 + 144), v0 + 16);
  v2 = type metadata accessor for SDAuthenticationCommonOperationInput();
  sub_1003FBDAC(v1 + *(v2 + 36), v0 + 96);
  if (*(v0 + 120))
  {
    sub_1000121F8((v0 + 96), v0 + 56);
    v3 = *(*sub_10002CDC0((v0 + 56), *(v0 + 80)) + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication10LTKSession_localLTK);
    v4 = *(v3 + 112);
    v5 = swift_task_alloc();
    *(v5 + 16) = sub_1003FBE1C;
    *(v5 + 24) = v3;
    os_unfair_lock_lock(v4 + 4);
    sub_1002F5418(v6);
    v11 = *(v0 + 136);
    os_unfair_lock_unlock(v4 + 4);

    sub_10000C60C((v0 + 56));
    v12 = *(v0 + 40);
    v13 = *(v0 + 48);
    sub_10002F5B4(v0 + 16, v12);
    v14 = (*(v13 + 24))(v12, v13);
    isa = Data._bridgeToObjectiveC()().super.isa;
    [v14 setLongTermKey:isa];

    v16 = *(v0 + 40);
    v17 = *(v0 + 48);
    v18 = sub_10002CDC0((v0 + 16), v16);
    v11[3] = v16;
    v11[4] = *(v17 + 8);
    v19 = sub_10002F604(v11);
    (*(*(v16 - 8) + 16))(v19, v18, v16);
    sub_100026AC0(v22, v23);
  }

  else
  {
    sub_100005508(v0 + 96, &qword_1009819B0, &qword_100800360);
    v7 = sub_100010F88(37, 0xD000000000000027, 0x800000010078EF00);
    v9 = v8;
    sub_1000115C8();
    swift_allocError();
    *v10 = v7;
    *(v10 + 8) = v9;
    swift_willThrow();
  }

  sub_10000C60C((v0 + 16));
  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_1003F8274(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100005C00;

  return sub_1003F7FB4(a1, a2, a3);
}

uint64_t sub_1003F8324(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[19] = a2;
  v3[20] = a3;
  v3[18] = a1;
  return _swift_task_switch(sub_1003F8348, 0, 0);
}

uint64_t sub_1003F8348()
{
  v1 = *(v0 + 160);
  sub_1002D63B0(*(v0 + 152), v0 + 16);
  v2 = type metadata accessor for SDAuthenticationCommonOperationInput();
  sub_1003FBDAC(v1 + *(v2 + 36), v0 + 104);
  if (*(v0 + 128))
  {
    sub_1000121F8((v0 + 104), v0 + 64);
    v3 = *(*sub_10002CDC0((v0 + 64), *(v0 + 88)) + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication10LTKSession_localLTK);
    v4 = *(v3 + 112);
    v5 = swift_task_alloc();
    *(v5 + 16) = sub_1003FCB90;
    *(v5 + 24) = v3;
    os_unfair_lock_lock(v4 + 4);
    sub_1003206A8(v6);
    v11 = *(v0 + 152);
    os_unfair_lock_unlock(v4 + 4);

    v12 = sub_10002CDC0((v0 + 64), *(v0 + 88));
    v13 = v11[3];
    v14 = v11[4];
    sub_10002CDC0(v11, v13);
    v15 = (*(v14 + 16))(v13, v14);
    v17 = v16;
    v18 = *v12;
    v19 = sub_1003FE39C(v15, v16, 0, 0xF000000000000000);
    v21 = *(v0 + 144);
    v22 = v19;
    v23 = v15;
    v25 = v24;
    sub_100026AC0(v23, v17);
    v26 = *(v0 + 40);
    v27 = *(v0 + 56);
    sub_10002F5B4(v0 + 16, v26);
    v28 = (*(v27 + 24))(v26, v27);
    isa = Data._bridgeToObjectiveC()().super.isa;
    [v28 setLongTermKey:isa];

    v30 = *(v0 + 40);
    v31 = *(v0 + 56);
    sub_10002F5B4(v0 + 16, v30);
    v32 = (*(v31 + 24))(v30, v31);
    v33 = Data._bridgeToObjectiveC()().super.isa;
    [v32 setToken:v33];

    v34 = *(v0 + 40);
    v35 = *(v0 + 48);
    v36 = sub_10002CDC0((v0 + 16), v34);
    v21[3] = v34;
    v21[4] = *(v35 + 8);
    v37 = sub_10002F604(v21);
    (*(*(v34 - 8) + 16))(v37, v36, v34);
    sub_100026AC0(v22, v25);
    sub_100026AC0(v39, v40);
    sub_10000C60C((v0 + 64));
  }

  else
  {
    sub_100005508(v0 + 104, &qword_1009819B0, &qword_100800360);
    v7 = sub_100010F88(37, 0xD000000000000027, 0x800000010078EF00);
    v9 = v8;
    sub_1000115C8();
    swift_allocError();
    *v10 = v7;
    *(v10 + 8) = v9;
    swift_willThrow();
  }

  sub_10000C60C((v0 + 16));
  v38 = *(v0 + 8);

  return v38();
}

uint64_t sub_1003F86F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100005C00;

  return sub_1003F8324(a1, a2, a3);
}

uint64_t sub_1003F87A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[20] = a2;
  v3[21] = a3;
  v3[19] = a1;
  return _swift_task_switch(sub_1003F87C4, 0, 0);
}

uint64_t sub_1003F87C4()
{
  v1 = *(v0 + 168);
  sub_1003FCAB8(*(v0 + 160), v0 + 16);
  v2 = type metadata accessor for SDAuthenticationCommonOperationInput();
  sub_1003FBDAC(v1 + *(v2 + 36), v0 + 112);
  if (*(v0 + 136))
  {
    v3 = *(v0 + 160);
    sub_1000121F8((v0 + 112), v0 + 72);
    v4 = sub_10002CDC0((v0 + 72), *(v0 + 96));
    v5 = v3[3];
    v6 = v3[4];
    sub_10002CDC0(v3, v5);
    v7 = (*(v6 + 16))(v5, v6);
    v9 = v8;
    v10 = v3[3];
    v11 = v3[5];
    sub_10002CDC0(v3, v10);
    v12 = (*(v11 + 16))(v10, v11);
    v14 = v13;
    v15 = *v4;
    v16 = sub_1003FE39C(v7, v9, v12, v13);
    v21 = *(v0 + 152);
    v22 = v16;
    v24 = v23;
    sub_100026AC0(v12, v14);
    sub_100026AC0(v7, v9);
    v25 = *(v0 + 40);
    v26 = *(v0 + 64);
    sub_10002F5B4(v0 + 16, v25);
    v27 = (*(v26 + 24))(v25, v26);
    isa = Data._bridgeToObjectiveC()().super.isa;
    [v27 setToken:isa];

    v29 = *(v0 + 40);
    v30 = *(v0 + 48);
    v31 = sub_10002CDC0((v0 + 16), v29);
    v21[3] = v29;
    v21[4] = *(v30 + 8);
    v32 = sub_10002F604(v21);
    (*(*(v29 - 8) + 16))(v32, v31, v29);
    sub_100026AC0(v22, v24);
    sub_10000C60C((v0 + 72));
  }

  else
  {
    sub_100005508(v0 + 112, &qword_1009819B0, &qword_100800360);
    v17 = sub_100010F88(37, 0xD000000000000027, 0x800000010078EF00);
    v19 = v18;
    sub_1000115C8();
    swift_allocError();
    *v20 = v17;
    *(v20 + 8) = v19;
    swift_willThrow();
  }

  sub_10000C60C((v0 + 16));
  v33 = *(v0 + 8);

  return v33();
}

uint64_t sub_1003F8AC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100005C00;

  return sub_1003F87A0(a1, a2, a3);
}

uint64_t sub_1003F8B78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = type metadata accessor for SDAuthenticationCommonOperationInput();
  v3[5] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[6] = swift_task_alloc();

  return _swift_task_switch(sub_1003F8C10, 0, 0);
}

uint64_t sub_1003F8C10()
{
  v23 = v0;
  v1 = v0[4];
  v2 = v0[5];
  if (*(v1 + *(v2 + 28)) == 3)
  {
    v3 = qword_1009737E8;
    v4 = SFAuthenticationsDynamicStoreEnabledBioArmPath;
    if (v3 != -1)
    {
      swift_once();
      v1 = v0[4];
    }

    v5 = v0[6];
    v6 = type metadata accessor for Logger();
    sub_10000C4AC(v6, qword_10097BA28);
    sub_1003FC900(v1, v5, type metadata accessor for SDAuthenticationCommonOperationInput);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    v9 = os_log_type_enabled(v7, v8);
    v10 = v0[6];
    if (v9)
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v22 = v12;
      *v11 = 136315138;
      v13 = *(v10 + *(v2 + 28));
      v14 = sub_100027340();
      v16 = v15;
      sub_1003FC968(v10, type metadata accessor for SDAuthenticationCommonOperationInput);
      v17 = sub_10000C4E4(v14, v16, &v22);

      *(v11 + 4) = v17;
      _os_log_impl(&_mh_execute_header, v7, v8, "Setting dynamic store to enabled for type %s", v11, 0xCu);
      sub_10000C60C(v12);
    }

    else
    {

      sub_1003FC968(v10, type metadata accessor for SDAuthenticationCommonOperationInput);
    }

    v18 = String._bridgeToObjectiveC()();
    sub_10001ED70(0, v18, v4);
  }

  v19 = v0[6];
  sub_1002A9938(v0[3], v0[2]);

  v20 = v0[1];

  return v20();
}

uint64_t sub_1003F8E8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100005C00;

  return sub_1003F8B78(a1, a2, a3);
}

uint64_t sub_1003F8F3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[19] = a2;
  v3[20] = a3;
  v3[18] = a1;
  return _swift_task_switch(sub_1003F8F60, 0, 0);
}

uint64_t sub_1003F8F60()
{
  v1 = *(v0 + 160);
  sub_1002D63B0(*(v0 + 152), v0 + 16);
  v2 = *(v0 + 40);
  v3 = *(v0 + 56);
  sub_10002F5B4(v0 + 16, v2);
  v4 = (*(v3 + 24))(v2, v3);
  v5 = type metadata accessor for SDAuthenticationCommonOperationInput();
  sub_1003FBDAC(v1 + *(v5 + 36), v0 + 104);
  if (*(v0 + 128))
  {
    v6 = *(v0 + 152);
    sub_1000121F8((v0 + 104), v0 + 64);
    v7 = sub_10002CDC0((v0 + 64), *(v0 + 88));
    v8 = v6[3];
    v9 = v6[4];
    sub_10002CDC0(v6, v8);
    v10 = (*(v9 + 16))(v8, v9);
    v12 = v11;
    v13 = *v7;
    v14 = sub_1003FF018(v10, v11);
    v19 = *(v0 + 144);
    v20 = v14;
    v21 = v10;
    v23 = v22;
    sub_100026AC0(v21, v12);
    isa = Data._bridgeToObjectiveC()().super.isa;
    sub_100026AC0(v20, v23);
    sub_10000C60C((v0 + 64));
    [v4 setToken:isa];

    v25 = *(v0 + 40);
    v26 = *(v0 + 48);
    v27 = sub_10002CDC0((v0 + 16), v25);
    v19[3] = v25;
    v19[4] = *(v26 + 8);
    v28 = sub_10002F604(v19);
    (*(*(v25 - 8) + 16))(v28, v27, v25);
  }

  else
  {

    sub_100005508(v0 + 104, &qword_1009819B0, &qword_100800360);
    v15 = sub_100010F88(37, 0xD000000000000027, 0x800000010078EF00);
    v17 = v16;
    sub_1000115C8();
    swift_allocError();
    *v18 = v15;
    *(v18 + 8) = v17;
    swift_willThrow();
  }

  sub_10000C60C((v0 + 16));
  v29 = *(v0 + 8);

  return v29();
}

uint64_t sub_1003F91F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100005C00;

  return sub_1003F8F3C(a1, a2, a3);
}

uint64_t sub_1003F92A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[19] = a2;
  v3[20] = a3;
  v3[18] = a1;
  return _swift_task_switch(sub_1003F92CC, 0, 0);
}

uint64_t sub_1003F92CC()
{
  v1 = *(v0 + 160);
  sub_1002D63B0(*(v0 + 152), v0 + 16);
  v2 = *(v0 + 40);
  v3 = *(v0 + 56);
  sub_10002F5B4(v0 + 16, v2);
  v4 = (*(v3 + 24))(v2, v3);
  v5 = type metadata accessor for SDAuthenticationCommonOperationInput();
  sub_1003FBDAC(v1 + *(v5 + 36), v0 + 104);
  if (*(v0 + 128))
  {
    v6 = *(v0 + 152);
    sub_1000121F8((v0 + 104), v0 + 64);
    v7 = sub_10002CDC0((v0 + 64), *(v0 + 88));
    v8 = v6[3];
    v9 = v6[4];
    sub_10002CDC0(v6, v8);
    v10 = (*(v9 + 16))(v8, v9);
    v12 = v11;
    v13 = *v7;
    v14 = sub_1003FFEE0(v10, v11);
    v19 = *(v0 + 144);
    v20 = v14;
    v21 = v10;
    v23 = v22;
    sub_100026AC0(v21, v12);
    isa = Data._bridgeToObjectiveC()().super.isa;
    sub_100026AC0(v20, v23);
    sub_10000C60C((v0 + 64));
    [v4 setToken:isa];

    v25 = *(v0 + 40);
    v26 = *(v0 + 48);
    v27 = sub_10002CDC0((v0 + 16), v25);
    v19[3] = v25;
    v19[4] = *(v26 + 8);
    v28 = sub_10002F604(v19);
    (*(*(v25 - 8) + 16))(v28, v27, v25);
  }

  else
  {

    sub_100005508(v0 + 104, &qword_1009819B0, &qword_100800360);
    v15 = sub_100010F88(37, 0xD000000000000027, 0x800000010078EF00);
    v17 = v16;
    sub_1000115C8();
    swift_allocError();
    *v18 = v15;
    *(v18 + 8) = v17;
    swift_willThrow();
  }

  sub_10000C60C((v0 + 16));
  v29 = *(v0 + 8);

  return v29();
}

uint64_t sub_1003F9564(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100005C00;

  return sub_1003F92A8(a1, a2, a3);
}

uint64_t sub_1003F9614(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[13] = a2;
  v3[14] = a3;
  v3[12] = a1;
  return _swift_task_switch(sub_1003F9638, 0, 0);
}

uint64_t sub_1003F9638()
{
  v1 = *(v0 + 104);
  v2 = v1[3];
  v3 = v1[5];
  sub_10002CDC0(v1, v2);
  v4 = (*(v3 + 16))(v2, v3);
  if (v5 >> 60 == 15)
  {
    v6 = sub_100010F88(1, 0xD000000000000010, 0x800000010078F4F0);
    v8 = v7;
    sub_1000115C8();
    swift_allocError();
    *v9 = v6;
    *(v9 + 8) = v8;
    swift_willThrow();
  }

  else
  {
    v10 = v4;
    v11 = v5;
    v12 = *(v0 + 112);
    v13 = type metadata accessor for SDAuthenticationCommonOperationInput();
    sub_1003FBDAC(v12 + *(v13 + 36), v0 + 56);
    if (*(v0 + 80))
    {
      v14 = *(v0 + 104);
      sub_1000121F8((v0 + 56), v0 + 16);
      v15 = sub_10002CDC0((v0 + 16), *(v0 + 40));
      v16 = v1[3];
      v17 = v14[4];
      sub_10002CDC0(v14, v16);
      v18 = (*(v17 + 16))(v16, v17);
      v20 = v19;
      v21 = *v15;
      sub_1003FF724(v18, v19, v10, v11);
      v28 = *(v0 + 96);
      v27 = *(v0 + 104);
      sub_100026AC0(v18, v20);
      sub_10000C60C((v0 + 16));
      v29 = v1[3];
      v30 = v14[4];
      v31 = sub_10002CDC0(v27, v29);
      v28[3] = v29;
      v28[4] = *(v30 + 8);
      v32 = sub_10002F604(v28);
      (*(*(v29 - 8) + 16))(v32, v31, v29);
      sub_10028BCC0(v10, v11);
      v33 = *(v0 + 8);
      goto LABEL_7;
    }

    sub_100005508(v0 + 56, &qword_1009819B0, &qword_100800360);
    v22 = sub_100010F88(37, 0xD000000000000027, 0x800000010078EF00);
    v24 = v23;
    sub_1000115C8();
    swift_allocError();
    *v25 = v22;
    *(v25 + 8) = v24;
    swift_willThrow();
    sub_10028BCC0(v10, v11);
  }

  v33 = *(v0 + 8);
LABEL_7:

  return v33();
}

uint64_t sub_1003F9928(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100005C00;

  return sub_1003F9614(a1, a2, a3);
}

uint64_t sub_1003F99D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[18] = a2;
  v3[19] = a3;
  v3[17] = a1;
  return _swift_task_switch(sub_1003F99FC, 0, 0);
}

uint64_t sub_1003F99FC()
{
  v1 = *(v0 + 152);
  sub_1002A9938(*(v0 + 144), v0 + 16);
  v2 = type metadata accessor for SDAuthenticationCommonOperationInput();
  sub_1003FBDAC(v1 + *(v2 + 36), v0 + 96);
  if (*(v0 + 120))
  {
    v3 = *(v0 + 152);
    sub_1000121F8((v0 + 96), v0 + 56);
    v4 = sub_10002CDC0((v0 + 56), *(v0 + 80));
    v5 = *(v2 + 24);
    v6 = *(*v4 + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication10LTKSession_localLTK);
    v7 = v3 + v5;
    v8 = (*v4 + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication10LTKSession_remoteDeviceID);
    v9 = *v8;
    v10 = v8[1];
    v11 = *(v6 + 112);
    v12 = swift_task_alloc();
    v12[2] = v6;
    v12[3] = v9;
    v12[4] = v10;
    v12[5] = v7;
    v13 = swift_task_alloc();
    *(v13 + 16) = sub_1003FC588;
    *(v13 + 24) = v12;
    os_unfair_lock_lock(v11 + 4);
    sub_1003206A8(v14);
    os_unfair_lock_unlock(v11 + 4);

    v15 = *sub_10002CDC0((v0 + 56), *(v0 + 80));
    v16 = sub_1003FF8FC(0, 0xF000000000000000);
    v22 = *(v0 + 136);
    v23 = *(v0 + 40);
    v24 = *(v0 + 48);
    v25 = v16;
    v27 = v26;
    sub_10002F5B4(v0 + 16, v23);
    v28 = (*(v24 + 24))(v23, v24);
    isa = Data._bridgeToObjectiveC()().super.isa;
    [v28 setToken:isa];

    v30 = *(v0 + 40);
    v31 = *(v0 + 48);
    v32 = sub_10002CDC0((v0 + 16), v30);
    v22[3] = v30;
    v22[4] = *(v31 + 8);
    v33 = sub_10002F604(v22);
    (*(*(v30 - 8) + 16))(v33, v32, v30);
    sub_100026AC0(v25, v27);
    sub_10000C60C((v0 + 56));
  }

  else
  {
    sub_100005508(v0 + 96, &qword_1009819B0, &qword_100800360);
    v17 = sub_100010F88(37, 0xD000000000000027, 0x800000010078EF00);
    v19 = v18;
    sub_1000115C8();
    swift_allocError();
    *v20 = v17;
    *(v20 + 8) = v19;
    swift_willThrow();
  }

  sub_10000C60C((v0 + 16));
  v34 = *(v0 + 8);

  return v34();
}

uint64_t sub_1003F9CE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100005C00;

  return sub_1003F99D8(a1, a2, a3);
}

uint64_t sub_1003F9D98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[19] = a2;
  v3[20] = a3;
  v3[18] = a1;
  return _swift_task_switch(sub_1003F9DBC, 0, 0);
}

uint64_t sub_1003F9DBC()
{
  v1 = *(v0 + 160);
  sub_1002D63B0(*(v0 + 152), v0 + 16);
  v2 = type metadata accessor for SDAuthenticationCommonOperationInput();
  sub_1003FBDAC(v1 + *(v2 + 36), v0 + 104);
  if (*(v0 + 128))
  {
    v3 = *(v0 + 152);
    sub_1000121F8((v0 + 104), v0 + 64);
    v4 = sub_10002CDC0((v0 + 64), *(v0 + 88));
    v5 = v3[3];
    v6 = v3[4];
    sub_10002CDC0(v3, v5);
    v7 = (*(v6 + 16))(v5, v6);
    v9 = v8;
    v10 = *v4;
    v11 = sub_1003FF8FC(v7, v8);
    v16 = *(v0 + 144);
    v17 = v11;
    v19 = v18;
    sub_100026AC0(v7, v9);
    sub_10000C60C((v0 + 64));
    v20 = *(v0 + 40);
    v21 = *(v0 + 56);
    sub_10002F5B4(v0 + 16, v20);
    v22 = (*(v21 + 24))(v20, v21);
    isa = Data._bridgeToObjectiveC()().super.isa;
    [v22 setToken:isa];

    v24 = *(v0 + 40);
    v25 = *(v0 + 48);
    v26 = sub_10002CDC0((v0 + 16), v24);
    v16[3] = v24;
    v16[4] = *(v25 + 8);
    v27 = sub_10002F604(v16);
    (*(*(v24 - 8) + 16))(v27, v26, v24);
    sub_100026AC0(v17, v19);
  }

  else
  {
    sub_100005508(v0 + 104, &qword_1009819B0, &qword_100800360);
    v12 = sub_100010F88(37, 0xD000000000000027, 0x800000010078EF00);
    v14 = v13;
    sub_1000115C8();
    swift_allocError();
    *v15 = v12;
    *(v15 + 8) = v14;
    swift_willThrow();
  }

  sub_10000C60C((v0 + 16));
  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_1003FA054(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100005C00;

  return sub_1003F9D98(a1, a2, a3);
}

uint64_t sub_1003FA104(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[13] = a2;
  v3[14] = a3;
  v3[12] = a1;
  return _swift_task_switch(sub_1003FA128, 0, 0);
}

uint64_t sub_1003FA128()
{
  v1 = *(v0 + 112);
  v2 = type metadata accessor for SDAuthenticationCommonOperationInput();
  sub_1003FBDAC(v1 + *(v2 + 36), v0 + 56);
  if (*(v0 + 80))
  {
    v3 = *(v0 + 104);
    sub_1000121F8((v0 + 56), v0 + 16);
    v4 = sub_10002CDC0((v0 + 16), *(v0 + 40));
    v5 = v3[3];
    v6 = v3[4];
    sub_10002CDC0(v3, v5);
    v7 = (*(v6 + 16))(v5, v6);
    v9 = v8;
    v10 = *v4;
    sub_10040035C(v7, v8);
    v16 = *(v0 + 96);
    v15 = *(v0 + 104);
    sub_100026AC0(v7, v9);
    sub_10000C60C((v0 + 16));
    v18 = v3[3];
    v17 = v3[4];
    v19 = sub_10002CDC0(v15, v18);
    v16[3] = v18;
    v16[4] = *(v17 + 8);
    v20 = sub_10002F604(v16);
    (*(*(v18 - 8) + 16))(v20, v19, v18);
  }

  else
  {
    sub_100005508(v0 + 56, &qword_1009819B0, &qword_100800360);
    v11 = sub_100010F88(37, 0xD000000000000027, 0x800000010078EF00);
    v13 = v12;
    sub_1000115C8();
    swift_allocError();
    *v14 = v11;
    *(v14 + 8) = v13;
    swift_willThrow();
  }

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_1003FA328(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100005C00;

  return sub_1003FA104(a1, a2, a3);
}

uint64_t sub_1003FA3D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[13] = a2;
  v3[14] = a3;
  v3[12] = a1;
  return _swift_task_switch(sub_1003FA3FC, 0, 0);
}

uint64_t sub_1003FA3FC()
{
  v1 = *(v0 + 112);
  v2 = sub_1003E7E2C();
  v5 = v4;
  v6 = v2;
  v7 = *(v0 + 112);
  v8 = type metadata accessor for SDAuthenticationCommonOperationInput();
  sub_1003FBDAC(v7 + *(v8 + 36), v0 + 56);
  if (*(v0 + 80))
  {
    v9 = *(v0 + 112);
    sub_1000121F8((v0 + 56), v0 + 16);
    v10 = sub_10002CDC0((v0 + 16), *(v0 + 40));
    v11 = v9 + *(v8 + 24);
    UUID.uuidString.getter();
    v12 = *(*v10 + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication10LTKSession_localLTK);
    v13 = *(v12 + 112);
    v14 = swift_task_alloc();
    v14[2] = v12;
    v14[3] = v6;
    v14[4] = v5;
    v14[5] = sub_10031CCA8;
    v14[6] = 0;
    v15 = swift_task_alloc();
    *(v15 + 16) = sub_1003FCB78;
    *(v15 + 24) = v14;
    os_unfair_lock_lock(v13 + 4);
    sub_1003206A8(v16);
    os_unfair_lock_unlock(v13 + 4);

    sub_10000C60C((v0 + 16));
    if (qword_1009737E8 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_10000C4AC(v17, qword_10097BA28);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "Record Last Registration", v20, 2u);
    }

    v22 = *(v0 + 96);
    v21 = *(v0 + 104);

    sub_1002A9938(v21, v22);
    v23 = *(v0 + 8);
  }

  else
  {

    sub_100005508(v0 + 56, &qword_1009819B0, &qword_100800360);
    v24 = sub_100010F88(37, 0xD000000000000027, 0x800000010078EF00);
    v26 = v25;
    sub_1000115C8();
    swift_allocError();
    *v27 = v24;
    *(v27 + 8) = v26;
    swift_willThrow();
    v23 = *(v0 + 8);
  }

  return v23();
}

uint64_t sub_1003FA6D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100005C00;

  return sub_1003FA3D8(a1, a2, a3);
}

uint64_t sub_1003FA784(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[13] = a2;
  v3[14] = a3;
  v3[12] = a1;
  return _swift_task_switch(sub_1003FA7A8, 0, 0);
}

uint64_t sub_1003FA7A8()
{
  v1 = *(v0 + 112);
  v2 = sub_1003E7E2C();
  v5 = v4;
  v6 = v2;
  v7 = *(v0 + 112);
  v8 = type metadata accessor for SDAuthenticationCommonOperationInput();
  sub_1003FBDAC(v7 + v8[9], v0 + 56);
  if (*(v0 + 80))
  {
    v9 = *(v0 + 112);
    sub_1000121F8((v0 + 56), v0 + 16);
    v10 = sub_10002CDC0((v0 + 16), *(v0 + 40));
    v11 = v9 + v8[6];
    v12 = UUID.uuidString.getter();
    v14 = v13;
    LOBYTE(v9) = *(v9 + v8[8]);
    v15 = *(*v10 + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication10LTKSession_localLTK);
    v16 = swift_task_alloc();
    v31 = v9;
    *(v16 + 16) = v9;
    *(v16 + 24) = v12;
    *(v16 + 32) = v14;
    *(v16 + 40) = v15;
    v17 = *(v15 + 112);
    v18 = swift_task_alloc();
    v18[2] = v15;
    v18[3] = v6;
    v18[4] = v5;
    v18[5] = sub_1003FC9C8;
    v18[6] = v16;
    v19 = swift_task_alloc();
    *(v19 + 16) = sub_1003FCB78;
    *(v19 + 24) = v18;
    os_unfair_lock_lock(v17 + 4);
    sub_1003206A8(v20);
    os_unfair_lock_unlock(v17 + 4);

    sub_10000C60C((v0 + 16));
    if (qword_1009737E8 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_10000C4AC(v21, qword_10097BA28);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "Record PairingID and Last Registration Date", v24, 2u);
    }

    if ((v31 & 1) == 0)
    {
      v25 = *sub_10002CDC0(*(v0 + 112), *(*(v0 + 112) + 24));
      sub_1006D2DF0();
    }

    sub_1002A9938(*(v0 + 104), *(v0 + 96));
    v26 = *(v0 + 8);
  }

  else
  {

    sub_100005508(v0 + 56, &qword_1009819B0, &qword_100800360);
    v27 = sub_100010F88(37, 0xD000000000000027, 0x800000010078EF00);
    v29 = v28;
    sub_1000115C8();
    swift_allocError();
    *v30 = v27;
    *(v30 + 8) = v29;
    swift_willThrow();
    v26 = *(v0 + 8);
  }

  return v26();
}

uint64_t sub_1003FAAD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100005C00;

  return sub_1003FA784(a1, a2, a3);
}

uint64_t sub_1003FAB80(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_1003FABA0, 0, 0);
}

uint64_t sub_1003FABA0()
{
  v1 = v0[3];
  v2 = v1[3];
  v3 = v1[4];
  sub_10002CDC0(v1, v2);
  if ((*(v3 + 24))(v2, v3))
  {
    v4 = v0[2];
    v5 = v1[3];
    v6 = v1[4];
    v7 = sub_10002CDC0(v0[3], v5);
    v4[3] = v5;
    v4[4] = *(v6 + 16);
    v8 = sub_10002F604(v4);
    (*(*(v5 - 8) + 16))(v8, v7, v5);
  }

  else
  {
    v10 = sub_100010F88(10, 0xD000000000000037, 0x800000010078F2D0);
    v12 = v11;
    sub_1000115C8();
    swift_allocError();
    *v13 = v10;
    *(v13 + 8) = v12;
    swift_willThrow();
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_1003FAD04(uint64_t a1, uint64_t a2)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return _swift_task_switch(sub_1003FAD24, 0, 0);
}

uint64_t sub_1003FAD24()
{
  v1 = v0[8];
  v2 = v1[3];
  v3 = v1[4];
  sub_10002CDC0(v1, v2);
  (*(v3 + 16))(v2, v3);
  v4 = *sub_10002CDC0(v0 + 2, v0[5]);
  sub_10066A014();
  v6 = v0[7];
  v5 = v0[8];
  sub_10000C60C(v0 + 2);
  v8 = v1[3];
  v7 = v1[4];
  v9 = sub_10002CDC0(v5, v8);
  v6[3] = v8;
  v6[4] = *(v7 + 8);
  v10 = sub_10002F604(v6);
  (*(*(v8 - 8) + 16))(v10, v9, v8);
  v11 = v0[1];

  return v11();
}

uint64_t sub_1003FAE60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[13] = a2;
  v3[14] = a3;
  v3[12] = a1;
  return _swift_task_switch(sub_1003FAE84, 0, 0);
}

uint64_t sub_1003FAE84()
{
  v1 = *(v0 + 112);
  v2 = type metadata accessor for SDAuthenticationCommonOperationInput();
  sub_1003FBDAC(v1 + *(v2 + 36), v0 + 56);
  if (*(v0 + 80))
  {
    sub_1000121F8((v0 + 56), v0 + 16);
    v3 = *sub_10002CDC0((v0 + 16), *(v0 + 40));
    sub_1003FD6F8();
    v8 = *(v0 + 96);
    v9 = *(v0 + 104);
    sub_10000C60C((v0 + 16));
    sub_1002A9938(v9, v8);
  }

  else
  {
    sub_100005508(v0 + 56, &qword_1009819B0, &qword_100800360);
    v4 = sub_100010F88(37, 0xD000000000000027, 0x800000010078EF00);
    v6 = v5;
    sub_1000115C8();
    swift_allocError();
    *v7 = v4;
    *(v7 + 8) = v6;
    swift_willThrow();
  }

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_1003FAFD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100005C00;

  return sub_1003FAE60(a1, a2, a3);
}

uint64_t sub_1003FB088(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v7 = *(a1 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(a1);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = (*(v12 + 8))(v9);
  if (result)
  {
    v14 = (*(a2 + 16))(a1, a2);
    *&v48 = 0;
    *(&v48 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(32);

    *&v48 = 0xD00000000000001ELL;
    *(&v48 + 1) = 0x800000010078DE50;
    v15 = SFAuthenticationErrorCodeToString();
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    v19._countAndFlagsBits = v16;
    v19._object = v18;
    String.append(_:)(v19);

    v20 = sub_100010F88(v14, v48, *(&v48 + 1));
    v50 = v21;
    (*(v7 + 16))(v11, v4, a1);
    sub_1000276B4(0, &qword_1009758C0, off_1008C8D50);
    if (swift_dynamicCast())
    {
      v22 = v48;
      v23 = [v48 underlyingError];
      if (v23)
      {
        v24 = v23;
        v25 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v27 = v26;

        if (qword_1009737E8 != -1)
        {
          swift_once();
        }

        v28 = type metadata accessor for Logger();
        sub_10000C4AC(v28, qword_10097BA28);
        v29 = Logger.logObject.getter();
        v30 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v29, v30))
        {
          v31 = swift_slowAlloc();
          *v31 = 0;
          _os_log_impl(&_mh_execute_header, v29, v30, "underlying error exists, decoding", v31, 2u);
        }

        sub_1000276B4(0, &qword_100977280, NSKeyedUnarchiver_ptr);
        v32 = sub_1000276B4(0, &qword_1009753F0, NSError_ptr);
        v33 = static NSKeyedUnarchiver.unarchivedObject<A>(ofClass:from:)();
        if (v3)
        {

          v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v36 = v35;
        }

        else
        {
          v37 = v33;
          v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v36 = v38;
          if (v37)
          {
            v49 = v32;
            *&v48 = v37;
            v39 = v34;
            sub_1000106E0(&v48, v47);
            v40 = v37;
            v41 = v50;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v46 = v41;
            sub_100011170(v47, v39, v36, isUniquelyReferenced_nonNull_native);

            sub_100026AC0(v25, v27);

            v50 = v46;
            goto LABEL_14;
          }
        }

        sub_1002D298C(v34, v36, v47);

        sub_100026AC0(v25, v27);

        sub_100005508(v47, &unk_1009746F0, &qword_1007F90B0);
      }

      else
      {
      }
    }

LABEL_14:
    v43 = v50;
    sub_1000115C8();
    swift_allocError();
    *v44 = v20;
    *(v44 + 8) = v43;
    return swift_willThrow();
  }

  return result;
}

uint64_t type metadata accessor for SDAuthenticationCommonOperationInput()
{
  result = qword_10097BA98;
  if (!qword_10097BA98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1003FB530()
{
  sub_1002A6B90(319, &qword_10097BAA8);
  if (v0 <= 0x3F)
  {
    sub_1002A6B90(319, &qword_10097BAB0);
    if (v1 <= 0x3F)
    {
      type metadata accessor for UUID();
      if (v2 <= 0x3F)
      {
        sub_1003FB61C();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1003FB61C()
{
  if (!qword_10097BAB8)
  {
    sub_100280938(&unk_10097BAC0, &qword_1007FFA28);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_10097BAB8);
    }
  }
}

void *sub_1003FB690(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = sub_1003FBE38(v7, a2, a3, a4);
    swift_bridgeObjectRelease_n();

    return v8;
  }

  return result;
}

void *sub_1003FB72C(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
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

    v8 = sub_1006E3178(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_1003FB7BC(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v31 = a1;
  v5 = *(a3 + 32);
  v6 = ((1 << v5) + 63) >> 6;
  if ((v5 & 0x3Fu) > 0xD)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v27 = v6;
    v32 = v3;
    v29 = &v26;
    __chkstk_darwin(a1);
    v28 = &v26 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v28, v7);
    v30 = 0;
    v8 = 0;
    v6 = v4 + 56;
    v9 = 1 << *(v4 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v4 + 56);
    v12 = (v9 + 63) >> 6;
    while (v11)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_12:
      v16 = v13 | (v8 << 6);
      v17 = v4;
      v18 = (*(v4 + 48) + 16 * v16);
      v19 = v18[1];
      v33[0] = *v18;
      v33[1] = v19;

      v3 = v32;
      v20 = v31(v33);
      v32 = v3;
      if (v3)
      {

        return swift_willThrow();
      }

      v21 = v20;

      v4 = v17;
      if (v21)
      {
        *&v28[(v16 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v16;
        if (__OFADD__(v30++, 1))
        {
          __break(1u);
          return sub_1006E395C(v28, v27, v30, v4);
        }
      }
    }

    v14 = v8;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= v12)
      {
        return sub_1006E395C(v28, v27, v30, v4);
      }

      v15 = *(v6 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_22:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v24 = swift_slowAlloc();
  v25 = sub_1003FB72C(v24, v6, v4, v31);

  if (!v3)
  {
    return v25;
  }

  return result;
}

double sub_1003FBA78@<D0>(void (*a1)(__int128 *__return_ptr)@<X1>, _OWORD *a2@<X8>)
{
  a1(&v5);
  if (!v2)
  {
    result = *&v5;
    *a2 = v5;
  }

  return result;
}

uint64_t sub_1003FBACC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
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

uint64_t sub_1003FBB28(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t sub_1003FBDAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10028088C(&qword_1009819B0, &qword_100800360);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003FBE38(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v26 = result;
  v28 = 0;
  v5 = 0;
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;
  v30 = a4 + 56;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_13:
    if (*(a4 + 16))
    {
      v27 = v11 | (v5 << 6);
      v14 = (*(a3 + 48) + 16 * v27);
      v16 = *v14;
      v15 = v14[1];
      v17 = *(a4 + 40);
      Hasher.init(_seed:)();

      String.hash(into:)();
      v18 = Hasher._finalize()();
      v19 = -1 << *(a4 + 32);
      v20 = v18 & ~v19;
      if ((*(v30 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20))
      {
        v21 = ~v19;
        while (1)
        {
          v22 = (*(a4 + 48) + 16 * v20);
          v23 = *v22 == v16 && v22[1] == v15;
          if (v23 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            break;
          }

          v20 = (v20 + 1) & v21;
          if (((*(v30 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
          {
            goto LABEL_5;
          }
        }

        *(v26 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
        if (__OFADD__(v28++, 1))
        {
          __break(1u);
LABEL_26:

          return sub_1006E395C(v26, a2, v28, a3);
        }
      }

      else
      {
LABEL_5:
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
      goto LABEL_26;
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

void *sub_1003FC048(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = a1;
  v6 = *(a1 + 32);
  v7 = v6 & 0x3F;
  v8 = ((1 << v6) + 63) >> 6;
  v9 = 8 * v8;

  if (v7 > 0xD)
  {
    goto LABEL_30;
  }

  while (1)
  {
    v35[0] = v3;
    v35[1] = v35;
    v36 = v8;
    __chkstk_darwin(v10);
    v37 = v35 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v37, v9);
    v11 = 0;
    v8 = v5 + 56;
    v12 = 1 << *(v5 + 32);
    v13 = v12 < 64 ? ~(-1 << v12) : -1;
    v14 = v13 & *(v5 + 56);
    v3 = (v12 + 63) >> 6;
    v40 = 0;
    v41 = a2 + 56;
    v38 = v5;
    while (v14)
    {
      v15 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_14:
      v18 = v15 | (v11 << 6);
      if (*(a2 + 16))
      {
        v19 = *(v5 + 48);
        v39 = v18;
        v20 = (v19 + 16 * v18);
        v22 = *v20;
        v21 = v20[1];
        v23 = *(a2 + 40);
        Hasher.init(_seed:)();

        String.hash(into:)();
        v24 = Hasher._finalize()();
        v25 = a2;
        v26 = -1 << *(a2 + 32);
        v9 = v24 & ~v26;
        if ((*(v41 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
        {
          v27 = ~v26;
          while (1)
          {
            v28 = (*(v25 + 48) + 16 * v9);
            v29 = *v28 == v22 && v28[1] == v21;
            if (v29 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
              break;
            }

            v9 = (v9 + 1) & v27;
            if (((*(v41 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
            {
              goto LABEL_6;
            }
          }

          v5 = v38;
          *&v37[(v39 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v39;
          v30 = __OFADD__(v40++, 1);
          a2 = v25;
          if (v30)
          {
            __break(1u);
LABEL_27:
            v31 = sub_1006E395C(v37, v36, v40, v5);

            return v31;
          }
        }

        else
        {
LABEL_6:

          a2 = v25;
          v5 = v38;
        }
      }
    }

    v16 = v11;
    while (1)
    {
      v11 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v11 >= v3)
      {
        goto LABEL_27;
      }

      v17 = *(v8 + 8 * v11);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v14 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_30:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v33 = swift_slowAlloc();

  v34 = sub_1003FB690(v33, v8, v5, a2);

  return v34;
}

uint64_t sub_1003FC3A8()
{
  v0 = static Array._allocateBufferUninitialized(minimumCapacity:)();
  *(v0 + 16) = 64;
  *(v0 + 32) = 0u;
  v1 = (v0 + 32);
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  if (SecRandomCopyBytes(kSecRandomDefault, 0x40uLL, (v0 + 32)))
  {

    _StringGuts.grow(_:)(42);

    v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v2);

    v3._countAndFlagsBits = 41;
    v3._object = 0xE100000000000000;
    String.append(_:)(v3);
    v4 = sub_100010F88(10, 0xD000000000000027, 0x800000010078F080);
    v6 = v5;
    sub_1000115C8();
    swift_allocError();
    *v7 = v4;
    *(v7 + 8) = v6;
    return swift_willThrow();
  }

  else
  {
    v9 = sub_1004E53D0(v1, 64);

    return v9;
  }
}

double sub_1003FC8BC@<D0>(_OWORD *a1@<X8>)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v4(&v7);
  if (!v2)
  {
    result = *&v7;
    *a1 = v7;
  }

  return result;
}

uint64_t sub_1003FC900(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1003FC968(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1003FCA0C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  v4 = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v4;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1003FCA70(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1003FCAB8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  v4 = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v4;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1003FCBD8()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_10097C2F8);
  v1 = sub_10000C4AC(v0, qword_10097C2F8);
  if (qword_100973758 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A0A50);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1003FCCA0(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = v4 + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication10LTKSession_aksSession;
  if (*(v4 + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication10LTKSession_aksSession + 8) != 1)
  {
    v13 = 0xD000000000000038;
    v14 = 0x800000010078F880;
    v15 = 1;
    goto LABEL_5;
  }

  v7 = *(v4 + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication10LTKSession_localLTK);
  v9 = *(v4 + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication10LTKSession_remoteDeviceID);
  v8 = *(v4 + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication10LTKSession_remoteDeviceID + 8);
  v10 = sub_10031D924();
  v79 = v10;
  if (v11 >> 60 == 15)
  {
    _StringGuts.grow(_:)(32);

    v12._countAndFlagsBits = v9;
    v12._object = v8;
    String.append(_:)(v12);
    v13 = 0xD00000000000001ELL;
    v14 = 0x800000010078F6C0;
    v15 = 10;
LABEL_5:
    v16 = sub_100010F88(v15, v13, v14);
    v18 = v17;
    sub_1000115C8();
    swift_allocError();
    *v19 = v16;
    *(v19 + 8) = v18;
    return swift_willThrow();
  }

  v70 = v6;
  v74 = v11;
  v21 = *(v4 + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication10LTKSession_role);
  v22 = *(v7 + 112);
  __chkstk_darwin(v10);
  os_unfair_lock_lock(v22 + 4);
  sub_1002F5418(v23);
  if (v5)
  {
    os_unfair_lock_unlock(v22 + 4);
    return sub_10028BCC0(v79, v74);
  }

  os_unfair_lock_unlock(v22 + 4);
  v24 = v83;
  v25 = *(v7 + 112);
  v27 = __chkstk_darwin(v26);
  __chkstk_darwin(v27);
  os_unfair_lock_lock(v25 + 4);
  sub_1002F5418(v28);
  os_unfair_lock_unlock(v25 + 4);
  v29 = *(&v83 + 1);
  v31 = a2;
  v30 = a1;
  v71 = a1;
  v32 = a2;
  v33 = v74;
  v34 = v79;
  v35 = *(&v83 + 1);
  v69 = *(&v83 + 1);
  v36 = v83;
  if (a2 >> 60 == 15)
  {
    sub_1002A9924(v83, *(&v83 + 1));
    v29 = *(&v83 + 1);
    v31 = a2;
    v30 = a1;
    v32 = *(&v83 + 1);
    v71 = v83;
  }

  v37 = *(v4 + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication10LTKSession_type);
  if (v37 > 10)
  {
    if (v37 != 11 && v37 != 19)
    {
      if (v37 == 20)
      {
        goto LABEL_14;
      }

LABEL_18:
      v38 = 2;
      goto LABEL_22;
    }

    v38 = 10;
  }

  else
  {
    switch(v37)
    {
      case 4:
        v38 = 7;
        break;
      case 6:
        v38 = 8;
        break;
      case 7:
LABEL_14:
        v38 = 9;
        break;
      default:
        goto LABEL_18;
    }
  }

LABEL_22:
  v78 = v32;
  v39 = v32 >> 60;
  v41 = v32 >> 60 != 15 && v29 >> 60 == 15;
  sub_1002A9924(v30, v31);
  v76 = sub_100311EC0(v38, v21, v41);
  if (qword_1009735C0 != -1)
  {
    swift_once();
  }

  v42 = type metadata accessor for Logger();
  sub_10000C4AC(v42, qword_100977C58);
  sub_100294008(v83, *(&v83 + 1));
  sub_1002A9924(v79, v74);
  v43 = Logger.logObject.getter();
  v44 = static os_log_type_t.default.getter();
  sub_100026AC0(v83, *(&v83 + 1));
  sub_10028BCC0(v79, v74);
  v67 = v83;
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v68 = v39;
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    *&v83 = v47;
    *v45 = 136315650;
    v48 = sub_1003112B8(v76);
    v50 = sub_10000C4E4(v48, v49, &v83);
    v34 = v79;

    *(v45 + 4) = v50;
    v36 = v24;
    *(v45 + 12) = 2112;
    v51.super.isa = Data._bridgeToObjectiveC()().super.isa;
    *(v45 + 14) = v51;
    v46->super.isa = v51.super.isa;
    *(v45 + 22) = 2112;
    v52.super.isa = Data._bridgeToObjectiveC()().super.isa;
    *(v45 + 24) = v52;
    v46[1].super.isa = v52.super.isa;
    _os_log_impl(&_mh_execute_header, v43, v44, "Creating AKSSession with flags: %s localLTK: %@ remoteLTK: %@", v45, 0x20u);
    sub_10028088C(&qword_100975400, &qword_1007F65D0);
    swift_arrayDestroy();
    v39 = v68;

    sub_10000C60C(v47);
    v35 = *(&v24 + 1);
  }

  LODWORD(v81) = 0;
  if (v39 >= 0xF)
  {
    v53 = 0;
  }

  else
  {
    v53 = v71;
  }

  if (v39 >= 0xF)
  {
    v54 = 0xC000000000000000;
  }

  else
  {
    v54 = v78;
  }

  v55 = v54 >> 62;
  if ((v54 >> 62) > 1)
  {
    if (v55 != 2)
    {
      *(&v83 + 6) = 0;
      *&v83 = 0;
      sub_100294008(v36, v35);
      sub_1002A9924(v34, v74);
      sub_1002A9924(v71, v78);
      goto LABEL_52;
    }

    v56 = *(v53 + 16);
    v57 = *(v53 + 24);
    sub_100294008(v36, v35);
    sub_1002A9924(v34, v74);
    sub_1002A9924(v71, v78);
    if (__DataStorage._bytes.getter() && __OFSUB__(v56, __DataStorage._offset.getter()))
    {
      goto LABEL_64;
    }

    if (!__OFSUB__(v57, v56))
    {
      __DataStorage._length.getter();
      v58 = v36;
      v59 = v35;
      v60 = v34;
      v33 = v74;
LABEL_50:
      sub_10030DF94(v58, v59, v60, v33, &v83);
      sub_100026AC0(v36, v35);
      sub_10028BCC0(v34, v33);
      v61 = v83;
      goto LABEL_53;
    }

LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  if (v55)
  {
    if (v53 >> 32 >= v53)
    {
      sub_100294008(v36, v35);
      sub_1002A9924(v34, v74);
      sub_1002A9924(v71, v78);
      if (__DataStorage._bytes.getter() && __OFSUB__(v53, __DataStorage._offset.getter()))
      {
LABEL_65:
        __break(1u);
      }

      v33 = v74;
      __DataStorage._length.getter();
      v58 = v36;
      v59 = v35;
      v60 = v34;
      goto LABEL_50;
    }

    __break(1u);
    goto LABEL_62;
  }

  *&v83 = v53;
  WORD4(v83) = v54;
  BYTE10(v83) = BYTE2(v54);
  BYTE11(v83) = BYTE3(v54);
  BYTE12(v83) = BYTE4(v54);
  BYTE13(v83) = BYTE5(v54);
  sub_100294008(v36, v35);
  sub_1002A9924(v34, v74);
  sub_1002A9924(v71, v78);
LABEL_52:
  sub_10030DF94(v36, v35, v34, v74, &v80);
  sub_100026AC0(v36, v35);
  sub_10028BCC0(v34, v74);
  v61 = v80;
LABEL_53:
  sub_100311810(v61, 0xD00000000000001CLL, 0x800000010078F840);
  v62 = v81;
  if (qword_1009735C8 != -1)
  {
    swift_once();
  }

  TaskLocal.get()();
  sub_100026AC0(v53, v54);
  v63 = 0;
  if (BYTE4(v83))
  {
    v65 = a4;
    v64 = a3;
    goto LABEL_60;
  }

  v65 = a4;
  v64 = a3;
  if (v83)
  {
    if ((v83 & 0x80000000) == 0)
    {
      v63 = -v83 << 32;
      goto LABEL_60;
    }

    goto LABEL_63;
  }

LABEL_60:
  *v70 = v63 | v62;
  *(v70 + 8) = 0;
  v81 = sub_1004BD0BC(v64, v65);
  v82 = v66;
  sub_10028088C(&qword_100974E10, &qword_1007FC4C0);
  Optional.tryUnwrap(_:file:line:)();
  sub_10028BCC0(v81, v82);
  sub_10028BCC0(v67, v69);
  sub_10028BCC0(v71, v78);
  sub_100026AC0(v24, v35);
  sub_10028BCC0(v34, v33);
  return v83;
}

void sub_1003FD6F8()
{
  v2 = *(v0 + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication10LTKSession_aksSession + 8);
  v14 = *(v0 + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication10LTKSession_aksSession);
  v15 = v2;
  sub_10028088C(&qword_10097C2A0, &qword_100800F80);
  Optional.tryUnwrap(_:file:line:)();
  if (!v1)
  {
    if (qword_1009737F0 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_10000C4AC(v3, qword_10097C2F8);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v14 = v7;
      *v6 = 136315138;
      v8 = sub_1004BD7D4();
      v10 = sub_10000C4E4(v8, v9, &v14);

      *(v6 + 4) = v10;
      _os_log_impl(&_mh_execute_header, v4, v5, "Confirm aksSession: %s", v6, 0xCu);
      sub_10000C60C(v7);
    }

    v14 = 0;
    v11 = aks_remote_peer_confirm();
    v12 = sub_1004BD8E4(v11, v14, 0, 0xD000000000000021, 0x800000010078F920);
    sub_10028BCC0(v12, v13);
    sub_1003FD950();
  }
}

void sub_1003FD950()
{
  if (qword_1009737F0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000C4AC(v1, qword_10097C2F8);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v18[0] = v5;
    *v4 = 136315138;
    type metadata accessor for UUID();
    sub_100349CFC();
    v6 = dispatch thunk of CustomStringConvertible.description.getter();
    v8 = sub_10000C4E4(v6, v7, v18);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "End AKSSession: %s", v4, 0xCu);
    sub_10000C60C(v5);
  }

  v9 = *(v0 + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication10LTKSession_localLTK);
  v10 = *(v0 + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication10LTKSession_remoteDeviceID);
  v11 = *(v0 + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication10LTKSession_remoteDeviceID + 8);
  v13 = __chkstk_darwin(v12);
  v14 = __chkstk_darwin(v13);
  v16 = *(v15 + 112);
  v17 = __chkstk_darwin(v14);
  __chkstk_darwin(v17);
  os_unfair_lock_lock(v16 + 4);
  sub_100015670(v18);
  os_unfair_lock_unlock(v16 + 4);
}

uint64_t sub_1003FDBE8()
{
  v4 = *(v0 + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication10LTKSession_aksSession);
  v5 = *(v0 + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication10LTKSession_aksSession + 8);
  sub_10028088C(&qword_10097C2A0, &qword_100800F80);
  result = Optional.tryUnwrap(_:file:line:)();
  if (!v1)
  {
    v3 = aks_remote_session_token();
    return sub_10031205C(v3, 0, 0, 0xD00000000000001ELL, 0x800000010078F900);
  }

  return result;
}

uint64_t sub_1003FDD00()
{
  v2 = *(v0 + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication10LTKSession_remoteDeviceID);
  v3 = *(v0 + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication10LTKSession_remoteDeviceID + 8);
  v4 = *(v0 + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication10LTKSession_localLTK);
  v5 = sub_10031D924();
  if (v6 >> 60 == 15)
  {
    _StringGuts.grow(_:)(32);

    v7._countAndFlagsBits = v2;
    v7._object = v3;
    String.append(_:)(v7);
    v8 = sub_100010F88(10, 0xD00000000000001ELL, 0x800000010078F6C0);
    v10 = v9;
    sub_1000115C8();
    swift_allocError();
    *v11 = v8;
    *(v11 + 8) = v10;
    return swift_willThrow();
  }

  v13 = v5;
  v14 = v6;
  isa = Data._bridgeToObjectiveC()().super.isa;
  sub_10005CB84(isa);

  v16 = v14 >> 62;
  if ((v14 >> 62) > 1)
  {
    if (v16 != 2)
    {
      if (qword_1009735C8 == -1)
      {
LABEL_30:
        TaskLocal.get()();
        if ((v32 & 1) != 0 || !v31 || (v31 & 0x80000000) == 0)
        {
          goto LABEL_33;
        }

        goto LABEL_70;
      }

LABEL_64:
      swift_once();
      goto LABEL_30;
    }

    v17 = *(v13 + 16);
    v18 = *(v13 + 24);
    if (__DataStorage._bytes.getter() && __OFSUB__(v17, __DataStorage._offset.getter()))
    {
      __break(1u);
LABEL_68:
      __break(1u);
LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
      goto LABEL_71;
    }

    if (__OFSUB__(v18, v17))
    {
      __break(1u);
    }

    else
    {
      __DataStorage._length.getter();
      if (qword_1009735C8 == -1)
      {
        goto LABEL_16;
      }
    }

    swift_once();
LABEL_16:
    TaskLocal.get()();
    if ((v34 & 1) != 0 || !v33 || (v33 & 0x80000000) == 0)
    {
      goto LABEL_33;
    }

    __break(1u);
    goto LABEL_20;
  }

  if (!v16)
  {
    if (qword_1009735C8 != -1)
    {
      swift_once();
    }

    TaskLocal.get()();
    if ((v32 & 1) != 0 || !v31 || (v31 & 0x80000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_69;
  }

LABEL_20:
  if (v13 >> 32 < v13)
  {
    __break(1u);
    goto LABEL_64;
  }

  if (__DataStorage._bytes.getter() && __OFSUB__(v13, __DataStorage._offset.getter()))
  {
    goto LABEL_68;
  }

  __DataStorage._length.getter();
  if (qword_1009735C8 != -1)
  {
    swift_once();
  }

  TaskLocal.get()();
  if ((v34 & 1) == 0 && v33 && v33 < 0)
  {
LABEL_71:
    __break(1u);
  }

LABEL_33:
  state = aks_remote_peer_get_state();
  sub_100311810(state, 0xD000000000000023, 0x800000010078B750);
  if (v1)
  {
    return sub_10028BCC0(v13, v14);
  }

  v36 = 0;
  memset(v35, 0, sizeof(v35));
  v20 = sub_10040080C(v35);
  if (v20 > 4)
  {
    if (v20 <= 7)
    {
      if (v20 != 5)
      {
        if (v20 == 6)
        {
          v21 = 0x800000010078F770;
          v22 = 27;
        }

        else
        {
          v21 = 0x800000010078F740;
          v22 = 5;
        }

        goto LABEL_52;
      }

      v25 = "teTooManyFailedPasscodeEntries";
      v23 = 0xD00000000000002CLL;
LABEL_59:
      v21 = v25 | 0x8000000000000000;
      v22 = 27;
      goto LABEL_61;
    }

    switch(v20)
    {
      case 8:
        v25 = "ogs for more details";
        v23 = 0xD00000000000001CLL;
        goto LABEL_59;
      case 9:
        v23 = 0x64656D72616E55;
        v22 = 36;
        v21 = 0xE700000000000000;
        goto LABEL_61;
      case 10:
        v23 = 0x6967657220746F4ELL;
        v21 = 0xEE00646572657473;
LABEL_56:
        v22 = 11;
        goto LABEL_61;
    }

LABEL_60:
    v26 = Data._bridgeToObjectiveC()().super.isa;
    sub_10005CB84(v26);

    v23 = 0xD000000000000034;
    v21 = 0x800000010078F6E0;
    v22 = 10;
    goto LABEL_61;
  }

  if (v20 <= 1)
  {
    if (!v20)
    {
      v23 = 0xD00000000000001ALL;
      v21 = 0x800000010078F820;
      v22 = 33;
LABEL_61:
      v27 = sub_100010F88(v22, v23, v21);
      v29 = v28;
      sub_1000115C8();
      swift_allocError();
      *v30 = v27;
      *(v30 + 8) = v29;
      swift_willThrow();
      return sub_10028BCC0(v13, v14);
    }

    if (v20 != 1)
    {
      goto LABEL_60;
    }

    v24 = "teOnlyEscrowAvailable";
    v23 = 0xD00000000000001ELL;
LABEL_55:
    v21 = v24 | 0x8000000000000000;
    goto LABEL_56;
  }

  if (v20 == 2)
  {
    v24 = "teNoRemoteUnlockWithinWindow";
    v23 = 0xD000000000000025;
    goto LABEL_55;
  }

  if (v20 != 3)
  {
    v21 = 0x800000010078F740;
    v22 = 8;
LABEL_52:
    v23 = 0xD00000000000002ELL;
    goto LABEL_61;
  }

  return sub_10028BCC0(v13, v14);
}

uint64_t sub_1003FE39C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = v4 + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication10LTKSession_aksSession;
  if (*(v4 + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication10LTKSession_aksSession + 8) != 1)
  {
    v15 = 0xD000000000000038;
    v16 = 0x800000010078F880;
    v17 = 1;
    goto LABEL_6;
  }

  v7 = v4;
  v8 = *(v4 + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication10LTKSession_remoteDeviceID);
  v9 = *(v4 + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication10LTKSession_remoteDeviceID + 8);
  result = sub_1003FE9C0(a1, a2, v8, v9);
  if (v5)
  {
    return result;
  }

  v11 = *(v4 + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication10LTKSession_localLTK);
  v12 = sub_10031D924();
  if (v13 >> 60 == 15)
  {
    _StringGuts.grow(_:)(32);

    v14._countAndFlagsBits = v8;
    v14._object = v9;
    String.append(_:)(v14);
    v15 = 0xD00000000000001ELL;
    v16 = 0x800000010078F6C0;
    v17 = 10;
LABEL_6:
    v18 = sub_100010F88(v17, v15, v16);
    v20 = v19;
    sub_1000115C8();
    swift_allocError();
    *v21 = v18;
    *(v21 + 8) = v20;
    return swift_willThrow();
  }

  v22 = v13;
  v50 = v12;
  v23 = *(v7 + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication10LTKSession_role);
  v24 = *(v11 + 112);
  __chkstk_darwin(v12);
  os_unfair_lock_lock(v24 + 4);
  sub_1003206A8(v25);
  os_unfair_lock_unlock(v24 + 4);
  v26 = *(&v56 + 1);
  v27 = v56;
  if ((*(v7 + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication10LTKSession_type) - 3) >= 2)
  {
    v28 = 4;
  }

  else
  {
    v28 = 6;
  }

  v49 = sub_100311EC0(v28, v23, 0);
  if (qword_1009735C0 != -1)
  {
    swift_once();
  }

  v29 = type metadata accessor for Logger();
  sub_10000C4AC(v29, qword_100977C58);
  sub_100294008(v56, *(&v56 + 1));
  v30 = v50;
  sub_1002A9924(v50, v22);
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.default.getter();
  sub_100026AC0(v56, *(&v56 + 1));
  sub_10028BCC0(v50, v22);
  if (os_log_type_enabled(v31, v32))
  {
    v48 = v56;
    v33 = swift_slowAlloc();
    v46 = v32;
    v34 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    *&v56 = v47;
    *v33 = 136315650;
    v35 = sub_1003112B8(v49);
    v37 = sub_10000C4E4(v35, v36, &v56);

    *(v33 + 4) = v37;
    *(v33 + 12) = 2112;
    v38.super.isa = Data._bridgeToObjectiveC()().super.isa;
    *(v33 + 14) = v38;
    v34->super.isa = v38.super.isa;
    *(v33 + 22) = 2112;
    v30 = v50;
    v39.super.isa = Data._bridgeToObjectiveC()().super.isa;
    *(v33 + 24) = v39;
    v34[1].super.isa = v39.super.isa;
    _os_log_impl(&_mh_execute_header, v31, v46, "Creating AKSSession with flags: %s localLTK: %@ remoteLTK: %@", v33, 0x20u);
    sub_10028088C(&qword_100975400, &qword_1007F65D0);
    swift_arrayDestroy();

    sub_10000C60C(v47);

    v27 = v48;
  }

  else
  {
  }

  LODWORD(v54) = 0;
  *(&v56 + 6) = 0;
  *&v56 = 0;
  sub_100294008(v27, v26);
  sub_1002A9924(v30, v22);
  sub_10030DF94(v27, v26, v30, v22, &v53);
  sub_100026AC0(v27, v26);
  sub_10028BCC0(v30, v22);
  sub_100311810(v53, 0xD00000000000001CLL, 0x800000010078F840);
  v40 = v26;
  v41 = v54;
  if (qword_1009735C8 != -1)
  {
    swift_once();
  }

  TaskLocal.get()();
  v42 = 0;
  if (BYTE4(v56))
  {
    v44 = a4;
    v43 = a3;
  }

  else
  {
    v44 = a4;
    v43 = a3;
    if (v56)
    {
      if ((v56 & 0x80000000) != 0)
      {
        __break(1u);
      }

      v42 = -v56 << 32;
    }
  }

  *v6 = v42 | v41;
  *(v6 + 8) = 0;
  v54 = sub_1004BD0BC(v43, v44);
  v55 = v45;
  sub_10028088C(&qword_100974E10, &qword_1007FC4C0);
  Optional.tryUnwrap(_:file:line:)();
  sub_10028BCC0(v54, v55);
  sub_100026AC0(v27, v40);
  sub_10028BCC0(v30, v22);
  return v56;
}

uint64_t sub_1003FE9C0(uint64_t a1, unint64_t a2, uint64_t a3, void *a4)
{
  if (a2 >> 60 == 15)
  {
    v6 = sub_100010F88(1, 0xD000000000000011, 0x800000010078F970);
    v8 = v7;
    sub_1000115C8();
    swift_allocError();
    *v9 = v6;
    *(v9 + 8) = v8;
    return swift_willThrow();
  }

  v77._countAndFlagsBits = a3;
  v77._object = a4;
  v13 = *(v4 + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication10LTKSession_localLTK);
  v14 = v13[14];
  v15 = __chkstk_darwin(a1);
  sub_100294008(v15, v16);
  os_unfair_lock_lock(v14 + 4);
  sub_1003206A8(v17);
  os_unfair_lock_unlock(v14 + 4);
  if (!v5)
  {
    v18 = *(&v81 + 1);
    v76 = v81;
    v19 = sub_10031A1D0();
    v20 = sub_10031A200();
    v21 = v20;
    v79 = 0;
    v80 = 0;
    v22 = *(&v81 + 1) >> 62;
    if ((*(&v81 + 1) >> 62) > 1)
    {
      if (v22 != 2)
      {
        *(&v81 + 6) = 0;
        *&v81 = 0;
        sub_1002A9924(a1, a2);
        v23 = &v81;
        goto LABEL_32;
      }

      v69 = v20;
      v72 = v19;
      v24 = *(v81 + 16);
      v25 = *(v81 + 24);
      sub_1002A9924(a1, a2);
      v26 = __DataStorage._bytes.getter();
      v74 = *(&v81 + 1);
      if (v26)
      {
        v27 = __DataStorage._offset.getter();
        if (__OFSUB__(v24, v27))
        {
LABEL_39:
          __break(1u);
          goto LABEL_40;
        }

        v26 += v24 - v27;
      }

      v28 = __OFSUB__(v25, v24);
      v29 = v25 - v24;
      if (!v28)
      {
        v30 = __DataStorage._length.getter();
        if (v30 >= v29)
        {
          v31 = v29;
        }

        else
        {
          v31 = v30;
        }

        v32 = v31 + v26;
        if (v26)
        {
          v33 = v32;
        }

        else
        {
          v33 = 0;
        }

        v34 = v26;
        v35 = a1;
        v36 = a2;
        v37 = v72;
        v38 = v69;
        goto LABEL_30;
      }
    }

    else
    {
      if (!v22)
      {
        sub_1002A9924(a1, a2);
        v23 = &v81 + BYTE14(v81);
LABEL_32:
        sub_100310518(&v81, v23, a1, a2, v19, v21, &v80, &v79, &v78);
        sub_10028BCC0(a1, a2);
        v44 = v78;
        goto LABEL_33;
      }

      v70 = v20;
      if (v81 >> 32 >= v81)
      {
        sub_1002A9924(a1, a2);
        v39 = __DataStorage._bytes.getter();
        v74 = *(&v81 + 1);
        if (!v39)
        {
LABEL_23:
          v41 = __DataStorage._length.getter();
          if (v41 >= (v81 >> 32) - v81)
          {
            v42 = (v81 >> 32) - v81;
          }

          else
          {
            v42 = v41;
          }

          v43 = v42 + v39;
          if (v39)
          {
            v33 = v43;
          }

          else
          {
            v33 = 0;
          }

          v34 = v39;
          v35 = a1;
          v36 = a2;
          v37 = v19;
          v38 = v70;
LABEL_30:
          sub_100310518(v34, v33, v35, v36, v37, v38, &v80, &v79, &v81);
          sub_10028BCC0(a1, a2);
          v44 = v81;
          v18 = v74;
LABEL_33:
          v45 = sub_10031205C(v44, v80, v79, 0xD000000000000019, 0x800000010078F990);
          v71 = v13[3];
          v73 = v13[2];
          v67 = v45;
          v68 = v46;
          v47 = sub_10031A1D0();
          v48 = &kSecAttrAccessibleAfterFirstUnlock;
          if ((v47 & 0xFE) != 0)
          {
            v48 = &kSecAttrAccessibleAlways;
          }

          v49 = *v48;
          v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v65 = v51;
          v66 = v50;
          v52 = _s9RemoteLTKCMa();
          v53 = *(v52 + 48);
          v54 = *(v52 + 52);
          v75 = v18;
          v55 = swift_allocObject();
          *(v55 + 80) = xmmword_1007F8A80;
          *(v55 + 96) = xmmword_1007F8A80;
          *(v55 + 112) = 0;
          *(v55 + 120) = 0;
          v56 = OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication9RemoteLTK_activeSessionID;
          v57 = type metadata accessor for UUID();
          v64 = *(*(v57 - 8) + 56);
          v64(v55 + v56, 1, 1, v57);
          v58 = OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication9RemoteLTK_activeSessionStartDate;
          v59 = type metadata accessor for Date();
          v60 = *(*(v59 - 8) + 56);
          v60(v55 + v58, 1, 1, v59);
          v64(v55 + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication9RemoteLTK_registrationSessionID, 1, 1, v57);
          v60(v55 + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication9RemoteLTK_registrationStartDate, 1, 1, v59);
          v61 = (v55 + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication9RemoteLTK_invalidRegistrationID);
          *v61 = 0;
          v61[1] = 0;
          *(v55 + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication9RemoteLTK_sessionKey) = xmmword_1007F8A80;
          *(v55 + 32) = v77;
          *(v55 + 48) = v66;
          *(v55 + 56) = v65;
          *(v55 + 64) = v67;
          *(v55 + 72) = v68;
          *&v81 = v73;
          *(&v81 + 1) = v71;

          sub_100294008(v67, v68);

          v62._countAndFlagsBits = 95;
          v62._object = 0xE100000000000000;
          String.append(_:)(v62);
          String.append(_:)(v77);
          v63 = *(&v81 + 1);
          *(v55 + 16) = v81;
          *(v55 + 24) = v63;
          sub_10031A704();

          sub_100026AC0(v67, v68);
          sub_100026AC0(v76, v75);
          return sub_10028BCC0(a1, a2);
        }

        v40 = __DataStorage._offset.getter();
        if (!__OFSUB__(v81, v40))
        {
          v39 += v81 - v40;
          goto LABEL_23;
        }

LABEL_40:
        __break(1u);
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_39;
  }

  return sub_10028BCC0(a1, a2);
}

_BYTE *sub_1003FF018(uint64_t a1, _BYTE *a2)
{
  v4 = v2;
  v7 = *(v2 + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication10LTKSession_aksSession + 8);
  v49 = *(v2 + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication10LTKSession_aksSession);
  LOBYTE(v50) = v7;
  sub_10028088C(&qword_10097C2A0, &qword_100800F80);
  Optional.tryUnwrap(_:file:line:)();
  if (!v3)
  {
    v47 = sub_1004BD0BC(a1, a2);
    v48 = v9;
    sub_10028088C(&qword_100974E10, &qword_1007FC4C0);
    Optional.tryUnwrap(_:file:line:)();
    sub_10028BCC0(v47, v48);
    a2 = v49;
    if (qword_1009737F0 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_10000C4AC(v10, qword_10097C2F8);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "Started createAndStoreRangingKey", v13, 2u);
    }

    sub_1003FF5C4();
    if ((*(v4 + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication10LTKSession_type) - 3) >= 2)
    {
      v15 = 0x800000010078F920;
    }

    else
    {
      v49 = 0;
      v47 = 0;
      v14 = aks_remote_peer_confirm();
      v15 = 0x800000010078F920;
      v16 = sub_1004BD8E4(v14, 0, 0, 0xD000000000000021, 0x800000010078F920);
      if (v17 >> 60 == 15)
      {
        v18 = Logger.logObject.getter();
        v19 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v18, v19))
        {
          v20 = swift_slowAlloc();
          *v20 = 0;
          _os_log_impl(&_mh_execute_header, v18, v19, "Failed to generate escrow", v20, 2u);
        }
      }

      else
      {
        v43 = 0x800000010078F920;
        v24 = v16;
        v25 = v17;
        sub_100294008(v16, v17);
        v26 = Logger.logObject.getter();
        v27 = static os_log_type_t.default.getter();
        v45 = v25;
        v46 = v24;
        sub_10028BCC0(v24, v25);
        if (os_log_type_enabled(v26, v27))
        {
          v28 = swift_slowAlloc();
          v29 = swift_slowAlloc();
          *v28 = 138412290;
          v30.super.isa = Data._bridgeToObjectiveC()().super.isa;
          *(v28 + 4) = v30;
          v29->super.isa = v30.super.isa;
          _os_log_impl(&_mh_execute_header, v26, v27, "Generated escrow: %@", v28, 0xCu);
          sub_10028924C(v29);
        }

        v44 = &v42;
        v31 = *(v4 + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication10LTKSession_localLTK);
        v32 = *(v4 + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication10LTKSession_remoteDeviceID);
        v33 = *(v4 + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication10LTKSession_remoteDeviceID + 8);
        v35 = __chkstk_darwin(v34);
        v37 = v45;
        v36 = v46;
        v39 = *(v38 + 112);
        v40 = __chkstk_darwin(v35);
        __chkstk_darwin(v40);
        os_unfair_lock_lock(v39 + 4);
        sub_1002F5418(v41);
        os_unfair_lock_unlock(v39 + 4);
        sub_10028BCC0(v36, v37);
        v15 = v43;
      }
    }

    v49 = 0;
    v47 = 0;
    v21 = aks_remote_peer_confirm();
    v22 = sub_1004BD8E4(v21, v49, v47, 0xD000000000000021, v15);
    sub_10028BCC0(v22, v23);
    sub_1003FD950();
  }

  return a2;
}

uint64_t sub_1003FF5C4()
{
  v2 = v0;
  v12 = *(v0 + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication10LTKSession_aksSession);
  v13 = *(v0 + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication10LTKSession_aksSession + 8);
  sub_10028088C(&qword_10097C2A0, &qword_100800F80);
  result = Optional.tryUnwrap(_:file:line:)();
  if (!v1)
  {
    v4 = aks_remote_session_token();
    v5 = sub_10031205C(v4, 0, 0, 0xD00000000000001ELL, 0x800000010078F900);
    v7 = *(v0 + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication10LTKSession_localLTK);
    v8 = *(v2 + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication10LTKSession_remoteDeviceID);
    v9 = *(v2 + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication10LTKSession_remoteDeviceID + 8);
    v10 = v5;
    v11 = v6;
    sub_10031C68C(v5, v6, v8, v9);
    return sub_100026AC0(v10, v11);
  }

  return result;
}

uint64_t sub_1003FF724(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v17 = *(v4 + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication10LTKSession_aksSession);
  v18 = *(v4 + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication10LTKSession_aksSession + 8);
  sub_10028088C(&qword_10097C2A0, &qword_100800F80);
  result = Optional.tryUnwrap(_:file:line:)();
  if (!v5)
  {
    v11 = sub_1004BD0BC(a1, a2);
    sub_10028BCC0(v11, v12);
    sub_1004BD438(a3, a4);
    sub_1003FD950();
    if (qword_1009737F0 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_10000C4AC(v13, qword_10097C2F8);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "Started createAndStoreRangingKey", v16, 2u);
    }

    return sub_1003FF5C4();
  }

  return result;
}

uint64_t sub_1003FF8FC(uint64_t a1, unint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication10LTKSession_aksSession;
  if (*(v2 + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication10LTKSession_aksSession + 8) != 1)
  {
    v12 = 0xD000000000000038;
    v13 = 0x800000010078F880;
    v14 = 1;
    goto LABEL_5;
  }

  v5 = v2;
  v6 = *(v2 + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication10LTKSession_localLTK);
  v7 = *(v5 + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication10LTKSession_remoteDeviceID);
  v8 = *(v5 + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication10LTKSession_remoteDeviceID + 8);
  v9 = sub_10031D924();
  if (v10 >> 60 == 15)
  {
    _StringGuts.grow(_:)(32);

    v11._countAndFlagsBits = v7;
    v11._object = v8;
    String.append(_:)(v11);
    v12 = 0xD00000000000001ELL;
    v13 = 0x800000010078F6C0;
    v14 = 10;
LABEL_5:
    v15 = sub_100010F88(v14, v12, v13);
    v17 = v16;
    sub_1000115C8();
    swift_allocError();
    *v18 = v15;
    *(v18 + 8) = v17;
    return swift_willThrow();
  }

  v20 = v9;
  v21 = v10;
  v22 = *(v5 + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication10LTKSession_role);
  v23 = *(v6 + 112);
  __chkstk_darwin(v9);
  os_unfair_lock_lock(v23 + 4);
  sub_1003206A8(v24);
  v25 = v23 + 4;
  if (v3)
  {
    os_unfair_lock_unlock(v25);
    return sub_10028BCC0(v20, v21);
  }

  else
  {
    os_unfair_lock_unlock(v25);
    v27 = *(&v52 + 1);
    v26 = v52;
    if (v22)
    {
      v28 = 129;
    }

    else
    {
      v28 = 1;
    }

    if (qword_1009735C0 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    sub_10000C4AC(v29, qword_100977C58);
    sub_100294008(v52, *(&v52 + 1));
    sub_1002A9924(v20, v21);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.default.getter();
    sub_100026AC0(v52, *(&v52 + 1));
    sub_10028BCC0(v20, v21);
    if (os_log_type_enabled(v30, v31))
    {
      v46 = *(&v52 + 1);
      v32 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      *&v52 = v45;
      *v32 = 136315650;
      v33 = sub_1003112B8(v28);
      v35 = sub_10000C4E4(v33, v34, &v52);

      *(v32 + 4) = v35;
      *(v32 + 12) = 2112;
      v36.super.isa = Data._bridgeToObjectiveC()().super.isa;
      *(v32 + 14) = v36;
      v44->super.isa = v36.super.isa;
      *(v32 + 22) = 2112;
      v37.super.isa = Data._bridgeToObjectiveC()().super.isa;
      *(v32 + 24) = v37;
      v44[1].super.isa = v37.super.isa;
      _os_log_impl(&_mh_execute_header, v30, v31, "Creating AKSSession with flags: %s localLTK: %@ remoteLTK: %@", v32, 0x20u);
      sub_10028088C(&qword_100975400, &qword_1007F65D0);
      swift_arrayDestroy();

      sub_10000C60C(v45);

      v27 = v46;
    }

    LODWORD(v50) = 0;
    *(&v52 + 6) = 0;
    *&v52 = 0;
    sub_100294008(v26, v27);
    sub_1002A9924(v20, v21);
    sub_10030DF94(v26, v27, v20, v21, &v49);
    sub_100026AC0(v26, v27);
    sub_10028BCC0(v20, v21);
    sub_100311810(v49, 0xD00000000000001CLL, 0x800000010078F840);
    v38 = v26;
    v39 = v50;
    if (qword_1009735C8 != -1)
    {
      swift_once();
    }

    TaskLocal.get()();
    v40 = 0;
    if (BYTE4(v52))
    {
      v42 = a2;
      v41 = a1;
    }

    else
    {
      v42 = a2;
      v41 = a1;
      if (v52)
      {
        if ((v52 & 0x80000000) != 0)
        {
          __break(1u);
        }

        v40 = -v52 << 32;
      }
    }

    *v4 = v40 | v39;
    *(v4 + 8) = 0;
    v50 = sub_1004BD0BC(v41, v42);
    v51 = v43;
    sub_10028088C(&qword_100974E10, &qword_1007FC4C0);
    Optional.tryUnwrap(_:file:line:)();
    sub_10028BCC0(v50, v51);
    sub_100026AC0(v38, v27);
    sub_10028BCC0(v20, v21);
    return v52;
  }
}

unint64_t sub_1003FFEE0(uint64_t a1, unint64_t a2)
{
  v6 = (v2 + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication10LTKSession_aksSession);
  v16 = *(v2 + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication10LTKSession_aksSession);
  v17 = *(v2 + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication10LTKSession_aksSession + 8);
  sub_10028088C(&qword_10097C2A0, &qword_100800F80);
  Optional.tryUnwrap(_:file:line:)();
  if (!v3)
  {
    v12 = *v6;
    v14 = *(v6 + 8);
    Optional.tryUnwrap(_:file:line:)();
    v13 = sub_1004BD0BC(a1, a2);
    v15 = v7;
    sub_10028088C(&qword_100974E10, &qword_1007FC4C0);
    Optional.tryUnwrap(_:file:line:)();
    sub_10028BCC0(v13, v15);
    a2 = v16;
    v9 = aks_remote_peer_confirm();
    v10 = sub_1004BD8E4(v9, 0, 0, 0xD000000000000021, 0x800000010078F920);
    sub_10028BCC0(v10, v11);
    sub_100400128();
    sub_1003FD950();
  }

  return a2;
}

uint64_t sub_100400128()
{
  v1 = *(*(v0 + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication10LTKSession_localLTK) + 112);
  v16 = *(v0 + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication10LTKSession_localLTK);
  v17 = *(v0 + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication10LTKSession_remoteDeviceID);
  v18 = *(v0 + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication10LTKSession_remoteDeviceID + 8);
  os_unfair_lock_lock(v1 + 4);
  sub_10040090C(&v19);
  os_unfair_lock_unlock(v1 + 4);
  v2 = *(&v19 + 1);
  v3 = v19;
  if (qword_1009737F0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000C4AC(v4, qword_10097C2F8);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *&v19 = v8;
    *v7 = 136315138;
    if (v2)
    {
      v9 = v3;
    }

    else
    {
      v9 = 0x3E6C696E3CLL;
    }

    if (!v2)
    {
      v2 = 0xE500000000000000;
    }

    v10 = sub_10000C4E4(v9, v2, &v19);

    *(v7 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v5, v6, "RegistrationID %s", v7, 0xCu);
    sub_10000C60C(v8);
  }

  else
  {
  }

  result = sub_10031D924();
  if (v12 >> 60 != 15)
  {
    v13 = result;
    v14 = v12;
    isa = Data._bridgeToObjectiveC()().super.isa;
    sub_10005CB84(isa);

    return sub_10028BCC0(v13, v14);
  }

  return result;
}

void sub_10040035C(uint64_t a1, unint64_t a2)
{
  v6 = (v2 + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication10LTKSession_aksSession);
  v16 = *(v2 + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication10LTKSession_aksSession);
  v18 = *(v2 + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication10LTKSession_aksSession + 8);
  sub_10028088C(&qword_10097C2A0, &qword_100800F80);
  Optional.tryUnwrap(_:file:line:)();
  if (!v3)
  {
    v17 = *v6;
    v19 = *(v6 + 8);
    Optional.tryUnwrap(_:file:line:)();
    v7 = sub_1004BD0BC(a1, a2);
    sub_10028BCC0(v7, v8);
    v9 = aks_remote_peer_setup();
    v10 = sub_1004BD8E4(v9, 0, 0, 0xD00000000000001FLL, 0x800000010078F950);
    sub_10028BCC0(v10, v11);
    if (qword_1009737F0 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_10000C4AC(v12, qword_10097C2F8);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "Finalized Registration", v15, 2u);
    }

    sub_100400128();
    sub_1003FD950();
  }
}

uint64_t sub_1004005A8()
{
  v1 = OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication10LTKSession_sessionID;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication10LTKSession_remoteDeviceID + 8);

  v4 = *(v0 + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication10LTKSession_localLTK);

  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t _s10LTKSessionCMa()
{
  result = qword_10097C338;
  if (!qword_10097C338)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1004006BC()
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

uint64_t sub_100400790@<X0>(_BYTE *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  result = v3();
  *a1 = 0;
  return result;
}

uint64_t sub_1004007D0@<X0>(_BYTE *a1@<X8>)
{
  v4 = *(v1 + 48);
  result = sub_100694464(*(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40));
  if (!v2)
  {
    *a1 = result & 1;
  }

  return result;
}

uint64_t sub_10040080C(int *a1)
{
  v1 = a1[3];
  if ((v1 & 2) == 0 && a1[2])
  {
    return 0;
  }

  if ((v1 & 1) != 0 && (v1 & 6) != 0)
  {
    return 3;
  }

  v3 = *a1;
  if (*a1 > 2)
  {
    if (v3 > 4)
    {
      if (v3 != 5)
      {
        if (v3 == 6)
        {
          v4 = 0;
          v5 = 8;
          goto LABEL_30;
        }

        goto LABEL_26;
      }

      v4 = 1;
      v5 = 1;
    }

    else
    {
      if (v3 != 3)
      {
        if (v3 == 4)
        {
          v4 = 0;
          v5 = 7;
          goto LABEL_30;
        }

LABEL_26:
        v4 = 0;
        v5 = 100;
        goto LABEL_30;
      }

      v4 = 0;
      v5 = 9;
    }

    goto LABEL_30;
  }

  if (v3)
  {
    if (v3 != 1)
    {
      if (v3 == 2)
      {
        v4 = 0;
        v5 = 5;
        goto LABEL_30;
      }

      goto LABEL_26;
    }

    v4 = 0;
    v5 = 4;
LABEL_30:
    if ((v4 & (v1 >> 1)) != 0)
    {
      return 10;
    }

    else
    {
      return v5;
    }
  }

  v6 = 100;
  if ((v1 & 6) == 0)
  {
    v6 = 9;
  }

  v7 = 2;
  if ((v1 & 2) != 0)
  {
    v7 = 10;
  }

  if (v1)
  {
    return v6;
  }

  else
  {
    return v7;
  }
}

uint64_t sub_100400944()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_10097C3E8);
  v1 = sub_10000C4AC(v0, qword_10097C3E8);
  if (qword_1009736D0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A08B8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100400A0C(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = type metadata accessor for URL();
  v2[7] = v3;
  v4 = *(v3 - 8);
  v2[8] = v4;
  v5 = *(v4 + 64) + 15;
  v2[9] = swift_task_alloc();
  v6 = *(*(sub_10028088C(&unk_100974E00, &qword_1007F8940) - 8) + 64) + 15;
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v7 = static AirDropActor.shared;

  return _swift_task_switch(sub_100400B48, v7, 0);
}

uint64_t sub_100400B48()
{
  v1 = v0[5];
  v2 = *(SFAirDropReceive.AskRequest.files.getter() + 16);

  if (v2)
  {
    v3 = v0[5];
    v4 = *(SFAirDropReceive.AskRequest.urlItems.getter() + 16);

    if (v4)
    {
LABEL_3:
      LOBYTE(v2) = 0;
      goto LABEL_23;
    }

    v5 = [objc_opt_self() defaultManager];
    v6 = [v5 URLForUbiquityContainerIdentifier:BRUbiquitousDefaultContainerID];

    if (v6)
    {
      v7 = v0[11];
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v8 = 0;
    }

    else
    {
      v8 = 1;
    }

    v9 = v0[11];
    v10 = v0[6];
    LOBYTE(v2) = 1;
    (*(v0[8] + 56))(v9, v8, 1, v0[7]);
    v11 = OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropContentHandleriCloudDrive_iCloudDriveFolder;
    swift_beginAccess();
    sub_100401AF0(v9, v10 + v11);
    swift_endAccess();
    if (SFFilesAppAvailable())
    {
      goto LABEL_23;
    }

    if (qword_1009737F8 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_10000C4AC(v12, qword_10097C3E8);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "Files App not available", v15, 2u);
    }

    v16 = v0[10];
    v17 = v0[7];
    v18 = v0[8];

    sub_100333278(v10 + v11, v16);
    v19 = (*(v18 + 48))(v16, 1, v17);
    v20 = v0[10];
    if (v19 == 1)
    {
      sub_100005508(v0[10], &unk_100974E00, &qword_1007F8940);
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&_mh_execute_header, v21, v22, "iCloud drive not enabled or accessible.", v23, 2u);
      }

      goto LABEL_3;
    }

    (*(v0[8] + 32))(v0[9], v0[10], v0[7]);
    v24 = URL.checkResourceIsReachable()();
    if (v25)
    {
      swift_errorRetain();
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        *v28 = 138412290;
        swift_errorRetain();
        v30 = _swift_stdlib_bridgeErrorToNSError();
        *(v28 + 4) = v30;
        *v29 = v30;
        _os_log_impl(&_mh_execute_header, v26, v27, "iCloud drive not enabled or accessible. Error: %@", v28, 0xCu);
        sub_100005508(v29, &qword_100975400, &qword_1007F65D0);
      }

      else
      {
      }

      LOBYTE(v2) = 0;
    }

    else
    {
      LOBYTE(v2) = v24;
    }

    (*(v0[8] + 8))(v0[9], v0[7]);
  }

LABEL_23:
  v32 = v0[10];
  v31 = v0[11];
  v33 = v0[9];

  v34 = v0[1];

  return v34(v2 & 1);
}

uint64_t sub_100400F94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v25 = a1;
  v26 = a3;
  v4 = sub_10028088C(&unk_100974E00, &qword_1007F8940);
  v24 = *(v4 - 8);
  v5 = *(v24 + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v7 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v24 - v8;
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for SFAirDropReceive.ItemDestination();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v24 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v19, a2, v15);
  if ((*(v16 + 88))(v19, v15) == enum case for SFAirDropReceive.ItemDestination.customURL(_:))
  {
    (*(v16 + 96))(v19, v15);
    (*(v11 + 32))(v14, v19, v10);
    (*(v11 + 16))(v9, v14, v10);
    (*(v11 + 56))(v9, 0, 1, v10);
    v27 = 0;
    sub_100333278(v9, v7);
    v20 = (*(v24 + 80) + 16) & ~*(v24 + 80);
    v21 = swift_allocObject();
    sub_1003332E8(v7, v21 + v20);
    *(v21 + ((v5 + v20 + 7) & 0xFFFFFFFFFFFFFFF8)) = v25;

    sub_10028088C(&qword_100975610, &qword_1007F89B0);
    SFProgressTask.init(_:initialProgress:operation:file:line:)();
    sub_100005508(v9, &unk_100974E00, &qword_1007F8940);
    return (*(v11 + 8))(v14, v10);
  }

  else
  {
    v27 = 0;
    v23 = swift_allocObject();
    *(v23 + 16) = v25;
    *(v23 + 24) = 1;

    sub_10028088C(&qword_100975610, &qword_1007F89B0);
    SFProgressTask.init(_:initialProgress:operation:file:line:)();
    return (*(v16 + 8))(v19, v15);
  }
}

uint64_t sub_10040140C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v32 - v9;
  v11 = *(a1 + 16);
  v32 = a1;
  v33 = v11;
  if (v11)
  {
    v14 = *(v4 + 16);
    v12 = v4 + 16;
    v13 = v14;
    v37 = (*(v12 + 64) + 32) & ~*(v12 + 64);
    v15 = a1 + v37;
    v16 = *(v12 + 56);
    v40 = (v12 + 16);
    v35 = (v12 - 8);
    v17 = _swiftEmptyArrayStorage;
    v38 = v14;
    v39 = v8;
    v36 = v16;
    v14(v10, v15, v3);
    while (1)
    {
      if (URL.isFileURL.getter())
      {
        (*v35)(v10, v3);
      }

      else
      {
        v18 = v12;
        v19 = *v40;
        (*v40)(v8, v10, v3);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v41 = v17;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_10028FAB4(0, v17[2] + 1, 1);
          v17 = v41;
        }

        v22 = v17[2];
        v21 = v17[3];
        if (v22 >= v21 >> 1)
        {
          sub_10028FAB4(v21 > 1, v22 + 1, 1);
          v17 = v41;
        }

        v17[2] = v22 + 1;
        v23 = v17 + v37 + v22 * v36;
        v16 = v36;
        v8 = v39;
        v19(v23, v39, v3);
        v12 = v18;
        v13 = v38;
      }

      v15 += v16;
      if (!--v11)
      {
        break;
      }

      v13(v10, v15, v3);
    }
  }

  else
  {
    v17 = _swiftEmptyArrayStorage;
  }

  v24 = v17[2];
  if (v24)
  {
    if (v24 != v33)
    {
      if (qword_1009737B0 != -1)
      {
        swift_once();
      }

      v25 = type metadata accessor for Logger();
      sub_10000C4AC(v25, qword_10097B528);
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&_mh_execute_header, v26, v27, "Asked to view mixed files and links, only viewing links", v28, 2u);
      }
    }

    v41 = 0;
    v29 = swift_allocObject();
    *(v29 + 16) = v17;
    *(v29 + 24) = 0;
  }

  else
  {

    v41 = 0;
    v30 = swift_allocObject();
    *(v30 + 16) = 0;
    *(v30 + 24) = 0;
    *(v30 + 32) = v32;
  }

  return SFProgressTask.init(_:initialProgress:operation:file:line:)();
}