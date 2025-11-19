uint64_t sub_10021709C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[240] = a7;
  v7[239] = a6;
  v7[238] = a5;
  v7[237] = a4;
  v9 = *(*(sub_10004B564(&qword_1005AE720, &qword_1004CA2F0) - 8) + 64) + 15;
  v7[241] = swift_task_alloc();

  return _swift_task_switch(sub_100217148, a6, 0);
}

void sub_100217148()
{
  v1 = v0[237];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v37 = v0[238];
    v4 = v1 + 32;
    v5 = _swiftEmptyArrayStorage;
    v35 = v4;
    do
    {
      v36 = v5;
      v6 = (v4 + 584 * v3);
      v7 = v3;
      while (1)
      {
        if (v7 >= v2)
        {
          __break(1u);
LABEL_28:
          __break(1u);
          return;
        }

        memcpy(v0 + 2, v6, 0x241uLL);
        v3 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          goto LABEL_28;
        }

        v8 = v0[7];
        v9 = v8 ? v0[7] : 0xE000000000000000;
        if (!*(v37 + 16))
        {
          break;
        }

        v10 = v0[238];
        v11 = v0[6];
        if (v8)
        {
          v12 = v0[6];
        }

        else
        {
          v12 = 0;
        }

        sub_10005D0C0((v0 + 2), (v0 + 75));

        v13 = sub_1000110D8(v12, v9);
        v15 = v14;

        if ((v15 & 1) == 0)
        {
          goto LABEL_17;
        }

        v16 = v0[241];
        v17 = *(v37 + 56);
        v18 = type metadata accessor for FenceRecord();
        v19 = *(v18 - 8);
        sub_1001C2B80(v17 + *(v19 + 72) * v13, v16);
        sub_10005D11C((v0 + 2));
        (*(v19 + 56))(v16, 0, 1, v18);
        sub_100002CE0(v16, &qword_1005AE720, &qword_1004CA2F0);
        ++v7;
        v6 += 584;
        if (v3 == v2)
        {
          v5 = v36;
          goto LABEL_24;
        }
      }

      sub_10005D0C0((v0 + 2), (v0 + 148));

LABEL_17:
      v20 = v0[241];
      v21 = type metadata accessor for FenceRecord();
      (*(*(v21 - 8) + 56))(v20, 1, 1, v21);
      sub_100002CE0(v20, &qword_1005AE720, &qword_1004CA2F0);
      v5 = v36;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_10000F708(0, v36[2] + 1, 1);
        v5 = v36;
      }

      v23 = v5[2];
      v22 = v5[3];
      if (v23 >= v22 >> 1)
      {
        sub_10000F708((v22 > 1), v23 + 1, 1);
        v5 = v36;
      }

      v5[2] = v23 + 1;
      memcpy(&v5[73 * v23 + 4], v0 + 2, 0x241uLL);
      v4 = v35;
    }

    while (v3 != v2);
  }

  else
  {
    v5 = _swiftEmptyArrayStorage;
  }

LABEL_24:
  v0[242] = v5;
  v24 = v5[2];
  sub_10004B564(&qword_1005A8788, &qword_1004C0EA8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004C2310;
  *(inited + 32) = 30;
  *(inited + 64) = &type metadata for String;
  *(inited + 72) = &off_10058C398;
  *(inited + 40) = 0xD00000000000001FLL;
  *(inited + 48) = 0x80000001004E57E0;
  *(inited + 80) = 32;
  *(inited + 112) = &type metadata for Int;
  *(inited + 120) = &off_10058C3A8;
  *(inited + 88) = v24;
  v26 = sub_1000105C0(inited);
  swift_setDeallocating();
  sub_10004B564(&qword_1005A8790, &qword_1004C0EB0);
  swift_arrayDestroy();
  v27 = sub_10004C68C(3u, v26);
  v29 = v28;
  v31 = v30;

  sub_10001157C(v27, v29, v31);

  v32 = swift_task_alloc();
  v0[243] = v32;
  *v32 = v0;
  v32[1] = sub_100217598;
  v33 = v0[240];
  v34 = v0[239];

  sub_1002176C4(v5, v33);
}

uint64_t sub_100217598()
{
  v1 = *(*v0 + 1944);
  v2 = *(*v0 + 1936);
  v3 = *(*v0 + 1928);
  v6 = *v0;

  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_1002176C4(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return _swift_task_switch(sub_1002176E8, v2, 0);
}

uint64_t sub_1002176E8()
{
  v16 = v0;
  if (qword_1005A80B8 != -1)
  {
    swift_once();
  }

  v1 = v0[2];
  v2 = v0[3];
  v3 = type metadata accessor for Logger();
  v0[5] = sub_10000A6F0(v3, qword_1005DFF18);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  v6 = os_log_type_enabled(v4, v5);
  v8 = v0[2];
  v7 = v0[3];
  if (v6)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v15 = v10;
    *v9 = 136446722;
    *(v9 + 4) = sub_10000D01C(0xD000000000000027, 0x80000001004E5800, &v15);
    *(v9 + 12) = 2050;
    *(v9 + 14) = *(v8 + 16);

    *(v9 + 22) = 2050;
    *(v9 + 24) = *(v7 + 16);

    _os_log_impl(&_mh_execute_header, v4, v5, "%{public}s serverFencesMissingCK: %{public}ld, allFences: %{public}ld", v9, 0x20u);
    sub_100004984(v10);
  }

  else
  {
    v11 = v0[3];
  }

  v12 = async function pointer to daemon.getter[1];
  v13 = swift_task_alloc();
  v0[6] = v13;
  *v13 = v0;
  v13[1] = sub_1002178FC;

  return daemon.getter();
}

uint64_t sub_1002178FC(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 48);
  v12 = *v1;
  *(v3 + 56) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 64) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for CloudStorageService();
  v9 = sub_1000093B0(&unk_1005AFA50, &type metadata accessor for Daemon);
  v10 = sub_1000093B0(&qword_1005AD568, type metadata accessor for CloudStorageService);
  *v6 = v12;
  v6[1] = sub_100217AD8;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100217AD8(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 64);
  v10 = *v2;
  v3[9] = a1;
  v3[10] = v1;

  if (v1)
  {
    v5 = v3[4];
    v6 = sub_100217E68;
  }

  else
  {
    v7 = v3[7];
    v8 = v3[4];

    v6 = sub_100217C00;
    v5 = v8;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100217C00()
{
  if (*(v0[2] + 16))
  {
    v1 = swift_task_alloc();
    v0[11] = v1;
    *v1 = v0;
    v1[1] = sub_100217CDC;
    v2 = v0[9];
    v3 = v0[2];

    return sub_1001BA84C(v3);
  }

  else
  {
    v5 = v0[9];

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_100217CDC()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v4 = *v1;
  *(*v1 + 96) = v0;

  v5 = *(v2 + 32);
  if (v0)
  {
    v6 = sub_10021802C;
  }

  else
  {
    v6 = sub_100217E08;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100217E08()
{
  v1 = *(v0 + 72);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100217E68()
{
  v13 = v0;
  v1 = v0[10];
  v2 = v0[7];
  v3 = v0[5];

  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v12 = v8;
    *v6 = 136446466;
    *(v6 + 4) = sub_10000D01C(0xD000000000000027, 0x80000001004E5800, &v12);
    *(v6 + 12) = 2114;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v9;
    *v7 = v9;
    _os_log_impl(&_mh_execute_header, v4, v5, "%{public}s failed: %{public}@", v6, 0x16u);
    sub_100002CE0(v7, &qword_1005A9670, &unk_1004C2480);

    sub_100004984(v8);
  }

  else
  {
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_10021802C()
{
  v13 = v0;
  v1 = v0[12];
  v2 = v0[9];
  v3 = v0[5];

  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v12 = v8;
    *v6 = 136446466;
    *(v6 + 4) = sub_10000D01C(0xD000000000000027, 0x80000001004E5800, &v12);
    *(v6 + 12) = 2114;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v9;
    *v7 = v9;
    _os_log_impl(&_mh_execute_header, v4, v5, "%{public}s failed: %{public}@", v6, 0x16u);
    sub_100002CE0(v7, &qword_1005A9670, &unk_1004C2480);

    sub_100004984(v8);
  }

  else
  {
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_1002181F0@<X0>(const void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v33 = a5;
  v34 = a4;
  v32 = a3;
  v31 = type metadata accessor for Account();
  v29 = *(v31 - 8);
  v7 = *(v29 + 64);
  __chkstk_darwin(v31);
  v30 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10004B564(&qword_1005AE720, &qword_1004CA2F0);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v16 = &v28 - v15;
  __chkstk_darwin(v14);
  v18 = &v28 - v17;
  memcpy(v36, a1, 0x241uLL);
  v19 = type metadata accessor for FenceRecord();
  v20 = *(v19 - 8);
  v21 = *(v20 + 56);
  v21(v18, 1, 1, v19);
  if (v36[5])
  {
    if (*(a2 + 16) && (v22 = sub_1000110D8(v36[4], v36[5]), (v23 & 1) != 0))
    {
      sub_1001C2B80(*(a2 + 56) + *(v20 + 72) * v22, v16);
      v24 = 0;
    }

    else
    {
      v24 = 1;
    }

    sub_100002CE0(v18, &qword_1005AE720, &qword_1004CA2F0);
    v21(v16, v24, 1, v19);
    sub_1000176A8(v16, v18, &qword_1005AE720, &qword_1004CA2F0);
  }

  sub_100005F04(v18, v13, &qword_1005AE720, &qword_1004CA2F0);
  v25 = v30;
  (*(v29 + 16))(v30, v32, v31);
  sub_10005D0C0(v36, &v35);
  v26 = v34;

  sub_100212F28(v36, v13, v25, v26, v33);
  return sub_100002CE0(v18, &qword_1005AE720, &qword_1004CA2F0);
}

uint64_t sub_1002184D0()
{
  v0 = type metadata accessor for Logger();
  sub_10004F154(v0, qword_1005B04A0);
  v1 = sub_10000A6F0(v0, qword_1005B04A0);
  if (qword_1005A80B8 != -1)
  {
    swift_once();
  }

  v2 = sub_10000A6F0(v0, qword_1005DFF18);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100218598@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for Fence.Participant();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v12, a1, v8);
  v13 = (*(v9 + 88))(v12, v8);
  v14 = v13;
  v15 = enum case for Fence.Participant.me(_:);
  if (v13 != enum case for Fence.Participant.me(_:))
  {
    if (v13 == enum case for Fence.Participant.other(_:))
    {
      if (a3)
      {
        if (a2 == 0x654D796669746F4ELL && a3 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          goto LABEL_15;
        }

        if (a2 == 0x744F796669746F4ELL && a3 == 0xEC00000073726568 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          (*(v9 + 104))(a4, v15, v8);
          goto LABEL_16;
        }
      }
    }

    else
    {
      (*(v9 + 8))(v12, v8);
    }

LABEL_18:
    v16 = 1;
    return (*(v9 + 56))(a4, v16, 1, v8);
  }

  if (!a3)
  {
    goto LABEL_18;
  }

  if (a2 == 0x654D796669746F4ELL && a3 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
LABEL_15:
    (*(v9 + 104))(a4, v14, v8);
    goto LABEL_16;
  }

  if ((a2 != 0x744F796669746F4ELL || a3 != 0xEC00000073726568) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_18;
  }

  (*(v9 + 104))(a4, enum case for Fence.Participant.other(_:), v8);
LABEL_16:
  v16 = 0;
  return (*(v9 + 56))(a4, v16, 1, v8);
}

uint64_t sub_100218854@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v51 = a3;
  v5 = type metadata accessor for Fence.Variant();
  v50 = *(v5 - 8);
  v6 = *(v50 + 64);
  v7 = __chkstk_darwin(v5);
  v47 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v48 = &v46 - v10;
  __chkstk_darwin(v9);
  v49 = &v46 - v11;
  v12 = sub_10004B564(&qword_1005AE5C0, &unk_1004D06D0);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12 - 8);
  v16 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v46 - v17;
  v19 = sub_10004B564(&qword_1005B04C8, &qword_1004D1DD8);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v22 = &v46 - v21;
  v23 = *(a1 + 536);
  v24 = *(a1 + 544);
  v25 = *(a1 + 457);
  sub_100005F04(a2, v18, &qword_1005AE5C0, &unk_1004D06D0);
  if (v25 == 2 || !v24)
  {
    sub_10005D11C(a1);
    sub_100002CE0(a2, &qword_1005AE5C0, &unk_1004D06D0);
    goto LABEL_9;
  }

  if (v23 == 0x656C756465686373 && v24 == 0xE900000000000064 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    sub_10005D11C(a1);
    sub_100002CE0(a2, &qword_1005AE5C0, &unk_1004D06D0);
    sub_1000176A8(v18, v16, &qword_1005AE5C0, &unk_1004D06D0);
    v26 = type metadata accessor for Fence.Schedule();
    v27 = *(v26 - 8);
    if ((*(v27 + 48))(v16, 1, v26) == 1)
    {
      v18 = v16;
LABEL_9:
      v29 = v50;
      v28 = v51;
      sub_100002CE0(v18, &qword_1005AE5C0, &unk_1004D06D0);
      v30 = 1;
      goto LABEL_10;
    }

    v34 = v49;
    (*(v27 + 32))(v49, v16, v26);
    v29 = v50;
    (*(v50 + 104))(v34, enum case for Fence.Variant.scheduled(_:), v5);
    v35 = *(v29 + 32);
    goto LABEL_22;
  }

  if (v23 == 1953069157 && v24 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    sub_10005D11C(a1);
    sub_100002CE0(a2, &qword_1005AE5C0, &unk_1004D06D0);
    sub_100002CE0(v18, &qword_1005AE5C0, &unk_1004D06D0);
    v36 = enum case for Fence.Trigger.leaving(_:);
    v37 = type metadata accessor for Fence.Trigger();
    v38 = v48;
    (*(*(v37 - 8) + 104))(v48, v36, v37);
    v39 = &enum case for Fence.Variant.oneTime(_:);
    if ((v25 & 1) == 0)
    {
      v39 = &enum case for Fence.Variant.recurring(_:);
    }

    v40 = *v39;
    v29 = v50;
    v41 = *(v50 + 104);
LABEL_21:
    v41(v38, v40, v5);
    v35 = *(v29 + 32);
    v34 = v49;
    v35(v49, v38, v5);
LABEL_22:
    v28 = v51;
    v35(v22, v34, v5);
    v30 = 0;
    goto LABEL_10;
  }

  if (v23 == 0x7265746E65 && v24 == 0xE500000000000000)
  {
    sub_10005D11C(a1);
    sub_100002CE0(a2, &qword_1005AE5C0, &unk_1004D06D0);
    sub_100002CE0(v18, &qword_1005AE5C0, &unk_1004D06D0);
LABEL_27:
    v43 = enum case for Fence.Trigger.arriving(_:);
    v44 = type metadata accessor for Fence.Trigger();
    v38 = v47;
    (*(*(v44 - 8) + 104))(v47, v43, v44);
    v29 = v50;
    v41 = *(v50 + 104);
    v45 = &enum case for Fence.Variant.oneTime(_:);
    if ((v25 & 1) == 0)
    {
      v45 = &enum case for Fence.Variant.recurring(_:);
    }

    v40 = *v45;
    goto LABEL_21;
  }

  v42 = _stringCompareWithSmolCheck(_:_:expecting:)();
  sub_10005D11C(a1);
  sub_100002CE0(a2, &qword_1005AE5C0, &unk_1004D06D0);
  sub_100002CE0(v18, &qword_1005AE5C0, &unk_1004D06D0);
  if (v42)
  {
    goto LABEL_27;
  }

  v30 = 1;
  v29 = v50;
  v28 = v51;
LABEL_10:
  v31 = *(v29 + 56);
  v31(v22, v30, 1, v5);
  if ((*(v29 + 48))(v22, 1, v5))
  {
    sub_100002CE0(v22, &qword_1005B04C8, &qword_1004D1DD8);
    v32 = 1;
  }

  else
  {
    (*(v29 + 32))(v28, v22, v5);
    v32 = 0;
  }

  return (v31)(v28, v32, 1, v5);
}

BOOL sub_100218EF0()
{
  type metadata accessor for PersonHandle();
  sub_1000093B0(&qword_1005B04E0, &type metadata accessor for PersonHandle);
  return (dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0;
}

uint64_t sub_100218FB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v62 = type metadata accessor for Date();
  v8 = *(v62 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v62);
  v61 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v60 = &v43 - v12;
  v13 = type metadata accessor for Fence();
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13);
  v53 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v59 = &v43 - v18;
  result = __chkstk_darwin(v17);
  v58 = &v43 - v21;
  v45 = a2;
  if (a3 != a2)
  {
    v22 = *a4;
    v24 = *(v20 + 16);
    v23 = v20 + 16;
    v25 = *(v23 + 56);
    v55 = (v8 + 8);
    v56 = v24;
    v54 = (v23 - 8);
    v57 = v23;
    v26 = (v22 + v25 * (a3 - 1));
    v50 = -v25;
    v51 = (v23 + 16);
    v27 = a1 - a3;
    v52 = v22;
    v44 = v25;
    v28 = v22 + v25 * a3;
    v29 = v60;
LABEL_5:
    v48 = v26;
    v49 = a3;
    v46 = v28;
    v47 = v27;
    v63 = v27;
    while (1)
    {
      v30 = v58;
      v31 = v56;
      v56(v58, v28, v13);
      v32 = v13;
      v33 = v59;
      v31(v59, v26, v32);
      Fence.updatedAt.getter();
      v34 = v61;
      Fence.updatedAt.getter();
      v64 = static Date.> infix(_:_:)();
      v35 = *v55;
      v36 = v34;
      v37 = v62;
      (*v55)(v36, v62);
      v35(v29, v37);
      v38 = *v54;
      v39 = v33;
      v13 = v32;
      (*v54)(v39, v32);
      result = v38(v30, v32);
      if ((v64 & 1) == 0)
      {
LABEL_4:
        a3 = v49 + 1;
        v26 = &v48[v44];
        v27 = v47 - 1;
        v28 = v46 + v44;
        if (v49 + 1 == v45)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v52)
      {
        break;
      }

      v40 = *v51;
      v41 = v53;
      (*v51)(v53, v28, v32);
      swift_arrayInitWithTakeFrontToBack();
      result = v40(v26, v41, v32);
      v26 += v50;
      v28 += v50;
      if (__CFADD__(v63++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_100219354(char **a1, uint64_t a2, char *a3, uint64_t a4)
{
  v5 = v4;
  v139 = a1;
  v161 = type metadata accessor for Date();
  v8 = *(v161 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v161);
  v160 = &v135 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v159 = &v135 - v12;
  v13 = type metadata accessor for Fence();
  v14 = *(v13 - 8);
  v15 = *(v14 + 8);
  v16 = __chkstk_darwin(v13);
  v142 = &v135 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v151 = &v135 - v19;
  v20 = __chkstk_darwin(v18);
  v158 = &v135 - v21;
  result = __chkstk_darwin(v20);
  v162 = &v135 - v23;
  v24 = *(a3 + 1);
  v147 = a3;
  if (v24 < 1)
  {
    v26 = &_swiftEmptyArrayStorage;
LABEL_96:
    v13 = v26;
    v26 = *v139;
    if (!*v139)
    {
      goto LABEL_134;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v54 = v147;
    if ((result & 1) == 0)
    {
LABEL_128:
      result = sub_10023C584(v13);
      v13 = result;
    }

    v164 = v13;
    v131 = *(v13 + 16);
    if (v131 >= 2)
    {
      while (*v54)
      {
        v132 = *(v13 + 16 * v131);
        v133 = *(v13 + 16 * (v131 - 1) + 40);
        sub_100219F54(*v54 + *(v14 + 9) * v132, *v54 + *(v14 + 9) * *(v13 + 16 * (v131 - 1) + 32), *v54 + *(v14 + 9) * v133, v26);
        if (v5)
        {
        }

        if (v133 < v132)
        {
          goto LABEL_121;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v13 = sub_10023C584(v13);
        }

        if (v131 - 2 >= *(v13 + 16))
        {
          goto LABEL_122;
        }

        v134 = (v13 + 16 * v131);
        *v134 = v132;
        v134[1] = v133;
        v164 = v13;
        result = sub_10023C4F8(v131 - 1);
        v13 = v164;
        v131 = *(v164 + 16);
        if (v131 <= 1)
        {
        }
      }

      goto LABEL_132;
    }
  }

  v135 = a4;
  v25 = 0;
  v155 = (v8 + 8);
  v156 = v14 + 16;
  v153 = (v14 + 32);
  v154 = v14 + 8;
  v26 = &_swiftEmptyArrayStorage;
  v157 = v13;
  v138 = v14;
  while (1)
  {
    v27 = v25 + 1;
    if (v25 + 1 >= v24)
    {
      v43 = v25 + 1;
      v54 = v147;
    }

    else
    {
      v148 = v24;
      v136 = v26;
      v137 = v5;
      v28 = v25;
      v140 = v25;
      v29 = *v147;
      v163 = v29;
      v30 = *(v14 + 9);
      v31 = (v29 + v30 * v27);
      v32 = v13;
      v33 = *(v14 + 2);
      (v33)(v162, v31, v13);
      v34 = v158;
      v149 = v33;
      (v33)(v158, v29 + v30 * v28, v32);
      v35 = v159;
      Fence.updatedAt.getter();
      v36 = v160;
      Fence.updatedAt.getter();
      LODWORD(v150) = static Date.> infix(_:_:)();
      v37 = *v155;
      v38 = v36;
      v39 = v161;
      (*v155)(v38, v161);
      v146 = v37;
      (v37)(v35, v39);
      v40 = *(v138 + 1);
      v26 = v154;
      v40(v34, v32);
      v145 = v40;
      result = (v40)(v162, v32);
      v41 = v140 + 2;
      v152 = v30;
      v42 = v163 + v30 * (v140 + 2);
      while (1)
      {
        v43 = v148;
        if (v148 == v41)
        {
          break;
        }

        v44 = v157;
        v45 = v149;
        v149();
        v46 = v158;
        v45(v158, v31, v44);
        v47 = v159;
        Fence.updatedAt.getter();
        v48 = v160;
        Fence.updatedAt.getter();
        LOBYTE(v163) = static Date.> infix(_:_:)() & 1;
        LODWORD(v163) = v163;
        v49 = v48;
        v50 = v161;
        v51 = v31;
        v52 = v146;
        (v146)(v49, v161);
        v52(v47, v50);
        v26 = v154;
        v53 = v145;
        (v145)(v46, v44);
        result = v53(v162, v44);
        ++v41;
        v42 += v152;
        v31 = &v152[v51];
        if ((v150 & 1) != v163)
        {
          v43 = v41 - 1;
          goto LABEL_9;
        }
      }

      v5 = v137;
      v54 = v147;
      v14 = v138;
      v13 = v157;
      v25 = v140;
      if ((v150 & 1) == 0)
      {
        goto LABEL_23;
      }

LABEL_9:
      if (v43 < v140)
      {
        goto LABEL_125;
      }

      if (v140 < v43)
      {
        v55 = v43;
        v56 = v152 * (v43 - 1);
        v57 = v43 * v152;
        v148 = v43;
        v58 = v140;
        v59 = v140 * v152;
        do
        {
          if (v58 != --v55)
          {
            v60 = *v54;
            if (!v60)
            {
              goto LABEL_131;
            }

            v61 = *v153;
            (*v153)(v142, v60 + v59, v13);
            if (v59 < v56 || v60 + v59 >= (v60 + v57))
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v59 != v56)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            result = (v61)(v60 + v56, v142, v13);
            v54 = v147;
          }

          ++v58;
          v56 -= v152;
          v57 -= v152;
          v59 += v152;
        }

        while (v58 < v55);
        v5 = v137;
        v14 = v138;
        v26 = v136;
        v25 = v140;
        v43 = v148;
      }

      else
      {
LABEL_23:
        v26 = v136;
      }
    }

    v62 = *(v54 + 1);
    if (v43 < v62)
    {
      if (__OFSUB__(v43, v25))
      {
        goto LABEL_124;
      }

      if (v43 - v25 < v135)
      {
        if (__OFADD__(v25, v135))
        {
          goto LABEL_126;
        }

        if (v25 + v135 >= v62)
        {
          v63 = *(v54 + 1);
        }

        else
        {
          v63 = v25 + v135;
        }

        if (v63 < v25)
        {
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        if (v43 != v63)
        {
          break;
        }
      }
    }

    v64 = v43;
    if (v43 < v25)
    {
      goto LABEL_123;
    }

LABEL_35:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1001FCD18(0, *(v26 + 2) + 1, 1, v26);
      v26 = result;
    }

    v66 = *(v26 + 2);
    v65 = *(v26 + 3);
    v67 = v66 + 1;
    v54 = v14;
    if (v66 >= v65 >> 1)
    {
      result = sub_1001FCD18((v65 > 1), v66 + 1, 1, v26);
      v26 = result;
    }

    *(v26 + 2) = v67;
    v68 = &v26[16 * v66];
    *(v68 + 4) = v25;
    *(v68 + 5) = v64;
    v69 = *v139;
    if (!*v139)
    {
      goto LABEL_133;
    }

    v143 = v64;
    if (v66)
    {
      v14 = v69;
      while (1)
      {
        v70 = v67 - 1;
        if (v67 >= 4)
        {
          break;
        }

        if (v67 == 3)
        {
          v71 = *(v26 + 4);
          v72 = *(v26 + 5);
          v81 = __OFSUB__(v72, v71);
          v73 = v72 - v71;
          v74 = v81;
LABEL_55:
          if (v74)
          {
            goto LABEL_112;
          }

          v87 = &v26[16 * v67];
          v89 = *v87;
          v88 = *(v87 + 1);
          v90 = __OFSUB__(v88, v89);
          v91 = v88 - v89;
          v92 = v90;
          if (v90)
          {
            goto LABEL_115;
          }

          v93 = &v26[16 * v70 + 32];
          v95 = *v93;
          v94 = *(v93 + 1);
          v81 = __OFSUB__(v94, v95);
          v96 = v94 - v95;
          if (v81)
          {
            goto LABEL_118;
          }

          if (__OFADD__(v91, v96))
          {
            goto LABEL_119;
          }

          if (v91 + v96 >= v73)
          {
            if (v73 < v96)
            {
              v70 = v67 - 2;
            }

            goto LABEL_76;
          }

          goto LABEL_69;
        }

        v97 = &v26[16 * v67];
        v99 = *v97;
        v98 = *(v97 + 1);
        v81 = __OFSUB__(v98, v99);
        v91 = v98 - v99;
        v92 = v81;
LABEL_69:
        if (v92)
        {
          goto LABEL_114;
        }

        v100 = &v26[16 * v70];
        v102 = *(v100 + 4);
        v101 = *(v100 + 5);
        v81 = __OFSUB__(v101, v102);
        v103 = v101 - v102;
        if (v81)
        {
          goto LABEL_117;
        }

        if (v103 < v91)
        {
          goto LABEL_3;
        }

LABEL_76:
        v108 = v70 - 1;
        if (v70 - 1 >= v67)
        {
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
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
          goto LABEL_127;
        }

        if (!*v147)
        {
          goto LABEL_130;
        }

        v109 = *&v26[16 * v108 + 32];
        v110 = *&v26[16 * v70 + 40];
        sub_100219F54(*v147 + *(v54 + 9) * v109, *v147 + *(v54 + 9) * *&v26[16 * v70 + 32], *v147 + *(v54 + 9) * v110, v14);
        if (v5)
        {
        }

        if (v110 < v109)
        {
          goto LABEL_108;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v26 = sub_10023C584(v26);
        }

        if (v108 >= *(v26 + 2))
        {
          goto LABEL_109;
        }

        v111 = &v26[16 * v108];
        *(v111 + 4) = v109;
        *(v111 + 5) = v110;
        v164 = v26;
        result = sub_10023C4F8(v70);
        v26 = v164;
        v67 = *(v164 + 16);
        if (v67 <= 1)
        {
          goto LABEL_3;
        }
      }

      v75 = &v26[16 * v67 + 32];
      v76 = *(v75 - 64);
      v77 = *(v75 - 56);
      v81 = __OFSUB__(v77, v76);
      v78 = v77 - v76;
      if (v81)
      {
        goto LABEL_110;
      }

      v80 = *(v75 - 48);
      v79 = *(v75 - 40);
      v81 = __OFSUB__(v79, v80);
      v73 = v79 - v80;
      v74 = v81;
      if (v81)
      {
        goto LABEL_111;
      }

      v82 = &v26[16 * v67];
      v84 = *v82;
      v83 = *(v82 + 1);
      v81 = __OFSUB__(v83, v84);
      v85 = v83 - v84;
      if (v81)
      {
        goto LABEL_113;
      }

      v81 = __OFADD__(v73, v85);
      v86 = v73 + v85;
      if (v81)
      {
        goto LABEL_116;
      }

      if (v86 >= v78)
      {
        v104 = &v26[16 * v70 + 32];
        v106 = *v104;
        v105 = *(v104 + 1);
        v81 = __OFSUB__(v105, v106);
        v107 = v105 - v106;
        if (v81)
        {
          goto LABEL_120;
        }

        if (v73 < v107)
        {
          v70 = v67 - 2;
        }

        goto LABEL_76;
      }

      goto LABEL_55;
    }

LABEL_3:
    v24 = *(v147 + 1);
    v25 = v143;
    v14 = v54;
    if (v143 >= v24)
    {
      goto LABEL_96;
    }
  }

  v136 = v26;
  v137 = v5;
  v112 = *v54;
  v113 = *(v14 + 9);
  v152 = *(v14 + 2);
  v114 = (v112 + v113 * (v43 - 1));
  v149 = -v113;
  v140 = v25;
  v115 = (v25 - v43);
  v150 = v112;
  v141 = v113;
  v116 = v112 + v43 * v113;
  v143 = v63;
LABEL_87:
  v148 = v43;
  v144 = v116;
  v145 = v115;
  v117 = v116;
  v146 = v114;
  v118 = v114;
  while (1)
  {
    v54 = v162;
    v119 = v152;
    (v152)(v162, v117, v13);
    v120 = v158;
    v119(v158, v118, v13);
    v121 = v159;
    Fence.updatedAt.getter();
    v122 = v160;
    Fence.updatedAt.getter();
    LODWORD(v163) = static Date.> infix(_:_:)();
    v123 = *v155;
    v124 = v122;
    v125 = v161;
    (*v155)(v124, v161);
    v126 = v121;
    v13 = v157;
    v123(v126, v125);
    v127 = *v154;
    (*v154)(v120, v13);
    result = v127(v54, v13);
    if ((v163 & 1) == 0)
    {
LABEL_86:
      v43 = v148 + 1;
      v114 = &v146[v141];
      v115 = v145 - 1;
      v64 = v143;
      v116 = v144 + v141;
      if (v148 + 1 != v143)
      {
        goto LABEL_87;
      }

      v5 = v137;
      v14 = v138;
      v26 = v136;
      v25 = v140;
      if (v143 < v140)
      {
        goto LABEL_123;
      }

      goto LABEL_35;
    }

    if (!v150)
    {
      break;
    }

    v128 = *v153;
    v129 = v151;
    (*v153)(v151, v117, v13);
    swift_arrayInitWithTakeFrontToBack();
    v128(v118, v129, v13);
    v118 = v149 + v118;
    v117 += v149;
    if (__CFADD__(v115++, 1))
    {
      goto LABEL_86;
    }
  }

  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
  return result;
}

uint64_t sub_100219F54(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v75 = a3;
  v70 = type metadata accessor for Date();
  v7 = *(v70 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v70);
  v69 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v68 = &v58 - v11;
  v74 = type metadata accessor for Fence();
  v12 = *(v74 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v74);
  v67 = &v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v14);
  v72 = &v58 - v17;
  v19 = *(v18 + 72);
  if (!v19)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_61;
  }

  v20 = v75 - a2;
  if (v75 - a2 == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_62;
  }

  v21 = (a2 - a1) / v19;
  v78 = a1;
  v77 = a4;
  if (v21 >= v20 / v19)
  {
    v23 = v20 / v19 * v19;
    if (a4 < a2 || a2 + v23 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v40 = a4 + v23;
    if (v23 >= 1)
    {
      v41 = -v19;
      v62 = (v7 + 8);
      v63 = (v12 + 16);
      v60 = a4;
      v61 = (v12 + 8);
      v42 = v40;
      v73 = a1;
      v64 = -v19;
      v43 = v74;
      while (2)
      {
        while (1)
        {
          v58 = v40;
          v44 = a2;
          v45 = a2 + v41;
          v65 = v44;
          v66 = v45;
          while (1)
          {
            v46 = v75;
            if (v44 <= a1)
            {
              v78 = v44;
              v76 = v58;
              goto LABEL_59;
            }

            v59 = v40;
            v75 += v41;
            v47 = v42 + v41;
            v48 = *v63;
            (*v63)();
            v49 = v67;
            (v48)(v67, v45, v43);
            v50 = v68;
            Fence.updatedAt.getter();
            v51 = v69;
            Fence.updatedAt.getter();
            v71 = static Date.> infix(_:_:)();
            v52 = *v62;
            v53 = v51;
            v54 = v70;
            (*v62)(v53, v70);
            v52(v50, v54);
            v55 = *v61;
            (*v61)(v49, v43);
            v55(v72, v43);
            if (v71)
            {
              break;
            }

            v40 = v47;
            v56 = v60;
            if (v46 < v42 || v75 >= v42)
            {
              swift_arrayInitWithTakeFrontToBack();
              v45 = v66;
              v41 = v64;
            }

            else
            {
              v45 = v66;
              v41 = v64;
              if (v46 != v42)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v42 = v47;
            a1 = v73;
            v44 = v65;
            if (v47 <= v56)
            {
              a2 = v65;
              goto LABEL_58;
            }
          }

          v57 = v60;
          if (v46 < v65 || v75 >= v65)
          {
            break;
          }

          a2 = v66;
          a1 = v73;
          v40 = v59;
          v41 = v64;
          if (v46 != v65)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v42 <= v57)
          {
            goto LABEL_58;
          }
        }

        a2 = v66;
        swift_arrayInitWithTakeFrontToBack();
        a1 = v73;
        v40 = v59;
        v41 = v64;
        if (v42 > v57)
        {
          continue;
        }

        break;
      }
    }

LABEL_58:
    v78 = a2;
    v76 = v40;
  }

  else
  {
    v22 = v21 * v19;
    if (a4 < a1 || a1 + v22 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v66 = a4 + v22;
    v76 = a4 + v22;
    if (v22 >= 1 && a2 < v75)
    {
      v25 = *(v12 + 16);
      v62 = (v7 + 8);
      v63 = v25;
      v64 = v19;
      v65 = v12 + 16;
      v61 = (v12 + 8);
      v26 = v74;
      do
      {
        v73 = a1;
        v27 = v72;
        v28 = v63;
        (v63)(v72, a2, v26);
        v29 = v67;
        (v28)(v67, a4, v26);
        v30 = v68;
        Fence.updatedAt.getter();
        v31 = v69;
        Fence.updatedAt.getter();
        v71 = static Date.> infix(_:_:)();
        v32 = a2;
        v33 = *v62;
        v34 = v31;
        v35 = a4;
        v36 = v70;
        (*v62)(v34, v70);
        v33(v30, v36);
        v37 = *v61;
        (*v61)(v29, v26);
        v37(v27, v26);
        if (v71)
        {
          v38 = v64;
          a2 = v32 + v64;
          v39 = v73;
          a4 = v35;
          if (v73 < v32 || v73 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v73 != v32)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        else
        {
          a2 = v32;
          v38 = v64;
          a4 = v35 + v64;
          v39 = v73;
          if (v73 < v35 || v73 >= a4)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v73 != v35)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v77 = a4;
        }

        a1 = v39 + v38;
        v78 = a1;
      }

      while (a4 < v66 && a2 < v75);
    }
  }

LABEL_59:
  sub_10023C598(&v78, &v77, &v76);
  return 1;
}

uint64_t sub_10021A630(uint64_t *a1, uint64_t a2)
{
  v4 = type metadata accessor for FenceRecord();
  v5 = *(v4 - 8);
  v6 = v5[8];
  __chkstk_darwin(v4);
  v48 = &v44[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_10004B564(&qword_1005AE720, &qword_1004CA2F0);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v12 = &v44[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v14 = &v44[-v13];
  v15 = UUID.uuidString.getter();
  v49 = a1;
  v17 = *a1;
  if (!*(*a1 + 16))
  {

    goto LABEL_8;
  }

  v18 = sub_1000110D8(v15, v16);
  v20 = v19;

  if ((v20 & 1) == 0)
  {
LABEL_8:
    v39 = v5[7];
    v39(v14, 1, 1, v4);
    sub_100002CE0(v14, &qword_1005AE720, &qword_1004CA2F0);
    goto LABEL_11;
  }

  sub_1001C2B80(*(v17 + 56) + v5[9] * v18, v14);
  v47 = v5[7];
  v47(v14, 0, 1, v4);
  sub_100002CE0(v14, &qword_1005AE720, &qword_1004CA2F0);
  sub_10004B564(&qword_1005A8788, &qword_1004C0EA8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004C1900;
  *(inited + 32) = 30;
  v22 = inited + 32;
  *(inited + 64) = &type metadata for String;
  *(inited + 72) = &off_10058C398;
  *(inited + 40) = 0xD000000000000012;
  *(inited + 48) = 0x80000001004E5870;
  v23 = sub_1000105C0(inited);
  swift_setDeallocating();
  sub_100002CE0(v22, &qword_1005A8790, &qword_1004C0EB0);
  v24 = sub_10004C68C(3u, v23);
  v26 = v25;
  v28 = v27;

  sub_10001157C(v24, v26, v28);

  if (qword_1005A80B8 != -1)
  {
    swift_once();
  }

  v29 = type metadata accessor for Logger();
  sub_10000A6F0(v29, qword_1005DFF18);
  v30 = v48;
  sub_1001C2B80(a2, v48);
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v45 = v32;
    v34 = v33;
    v46 = swift_slowAlloc();
    v50 = v46;
    *v34 = 136446466;
    *(v34 + 4) = sub_10000D01C(0xD00000000000001FLL, 0x80000001004E5790, &v50);
    *(v34 + 12) = 2082;
    type metadata accessor for UUID();
    sub_1000093B0(&qword_1005A92C0, &type metadata accessor for UUID);
    v35 = dispatch thunk of CustomStringConvertible.description.getter();
    v37 = v36;
    sub_1001769EC(v30);
    v38 = sub_10000D01C(v35, v37, &v50);

    *(v34 + 14) = v38;
    _os_log_impl(&_mh_execute_header, v31, v45, "%{public}s ckFence with duplicate ID: %{public}s", v34, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_1001769EC(v30);
  }

  v39 = v47;
LABEL_11:
  v40 = UUID.uuidString.getter();
  v42 = v41;
  sub_1001C2B80(a2, v12);
  v39(v12, 0, 1, v4);
  return sub_100145FB4(v12, v40, v42);
}

void sub_10021AB34(uint64_t *a1, const void *a2)
{
  v5 = sub_10004B564(&qword_1005A96E0, &qword_1004C2A80);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v49[-v7];
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v49[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  memcpy(v53, a2, 0x241uLL);
  if (v53[5])
  {
    v14 = HIBYTE(v53[5]) & 0xFLL;
    if ((v53[5] & 0x2000000000000000) == 0)
    {
      v14 = v53[4] & 0xFFFFFFFFFFFFLL;
    }

    if (v14)
    {
      UUID.init(uuidString:)();
      if ((*(v10 + 48))(v8, 1, v9) == 1)
      {
        sub_100002CE0(v8, &qword_1005A96E0, &qword_1004C2A80);
        sub_10004B564(&qword_1005A8788, &qword_1004C0EA8);
        inited = swift_initStackObject();
        *(inited + 32) = 30;
        v16 = inited + 32;
        *(inited + 16) = xmmword_1004C1900;
        *(inited + 64) = &type metadata for String;
        *(inited + 72) = &off_10058C398;
        *(inited + 40) = 0xD000000000000014;
        *(inited + 48) = 0x80000001004E5830;
        v17 = sub_1000105C0(inited);
        swift_setDeallocating();
        sub_100002CE0(v16, &qword_1005A8790, &qword_1004C0EB0);
        v18 = sub_10004C68C(3u, v17);
        v20 = v19;
        v22 = v21;

        sub_10001157C(v18, v20, v22);

        if (qword_1005A80B8 != -1)
        {
          swift_once();
        }

        v23 = type metadata accessor for Logger();
        sub_10000A6F0(v23, qword_1005DFF18);
        sub_10005D0C0(v53, v52);
        v24 = Logger.logObject.getter();
        v25 = static os_log_type_t.error.getter();
        sub_10005D11C(v53);
        if (os_log_type_enabled(v24, v25))
        {
          v26 = swift_slowAlloc();
          v52[0] = swift_slowAlloc();
          *v26 = 136446466;
          *(v26 + 4) = sub_10000D01C(0xD00000000000001FLL, 0x80000001004E5790, v52);
          *(v26 + 12) = 2082;
          if (v53[46])
          {
            v27 = v53[45];
          }

          else
          {
            v27 = 0x3E6C696E3CLL;
          }

          if (v53[46])
          {
            v28 = v53[46];
          }

          else
          {
            v28 = 0xE500000000000000;
          }

          v29 = sub_10000D01C(v27, v28, v52);

          *(v26 + 14) = v29;
          _os_log_impl(&_mh_execute_header, v24, v25, "%{public}s fence with invalid UUID: %{public}s", v26, 0x16u);
          swift_arrayDestroy();
        }
      }

      else
      {
        (*(v10 + 32))(v13, v8, v9);
        if (*(*a1 + 16))
        {
          sub_1001FD868(v13);
          if (v30)
          {
            v53[75] = v2;
            sub_10004B564(&qword_1005A8788, &qword_1004C0EA8);
            v31 = swift_initStackObject();
            *(v31 + 32) = 30;
            v32 = v31 + 32;
            *(v31 + 16) = xmmword_1004C1900;
            *(v31 + 64) = &type metadata for String;
            *(v31 + 72) = &off_10058C398;
            *(v31 + 40) = 0xD000000000000016;
            *(v31 + 48) = 0x80000001004E5850;
            v33 = sub_1000105C0(v31);
            swift_setDeallocating();
            sub_100002CE0(v32, &qword_1005A8790, &qword_1004C0EB0);
            v34 = sub_10004C68C(3u, v33);
            v36 = v35;
            v38 = v37;

            sub_10001157C(v34, v36, v38);

            if (qword_1005A80B8 != -1)
            {
              swift_once();
            }

            v39 = type metadata accessor for Logger();
            sub_10000A6F0(v39, qword_1005DFF18);
            sub_10005D0C0(v53, v52);
            v40 = Logger.logObject.getter();
            v41 = static os_log_type_t.error.getter();
            sub_10005D11C(v53);
            if (os_log_type_enabled(v40, v41))
            {
              v42 = swift_slowAlloc();
              v50 = v41;
              v43 = v42;
              v51 = swift_slowAlloc();
              v52[0] = v51;
              *v43 = 136446466;
              *(v43 + 4) = sub_10000D01C(0xD00000000000001FLL, 0x80000001004E5790, v52);
              *(v43 + 12) = 2082;
              if (v53[46])
              {
                v44 = v53[45];
              }

              else
              {
                v44 = 0x3E6C696E3CLL;
              }

              if (v53[46])
              {
                v45 = v53[46];
              }

              else
              {
                v45 = 0xE500000000000000;
              }

              v46 = sub_10000D01C(v44, v45, v52);

              *(v43 + 14) = v46;
              _os_log_impl(&_mh_execute_header, v40, v50, "%{public}s fmsFence with duplicate ID: %{public}s", v43, 0x16u);
              swift_arrayDestroy();
            }
          }
        }

        sub_10005D0C0(v53, v52);
        v47 = *a1;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v52[0] = *a1;
        sub_100453CC8(v53, v13, isUniquelyReferenced_nonNull_native);
        *a1 = v52[0];
        (*(v10 + 8))(v13, v9);
      }
    }
  }
}

uint64_t sub_10021B210(uint64_t a1)
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
  v10[1] = sub_100003690;

  return sub_10021709C(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_10021B304(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_10021B3FC(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for FriendInfoOption(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3 - 8);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(a2 + 16))
  {
    goto LABEL_7;
  }

  v8 = *(a2 + 40);
  Hasher.init(_seed:)();
  type metadata accessor for HandleType();
  sub_1000093F8(&qword_1005AE818, &type metadata accessor for HandleType);
  dispatch thunk of Hashable.hash(into:)();
  v9 = Hasher._finalize()();
  v10 = -1 << *(a2 + 32);
  v11 = v9 & ~v10;
  if ((*(a2 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v13 = *(v4 + 72);
    do
    {
      sub_1002413D8(*(a2 + 48) + v13 * v11, v7, type metadata accessor for FriendInfoOption);
      v14 = static HandleType.== infix(_:_:)();
      sub_1002412D8(v7);
      if (v14)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
    }

    while (((*(a2 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  else
  {
LABEL_7:
    v14 = 0;
  }

  return v14 & 1;
}

uint64_t sub_10021B5B8(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (v8 = *(a2 + 40), sub_1000093F8(&qword_1005AECC0, &type metadata accessor for UUID), v9 = dispatch thunk of Hashable._rawHashValue(seed:)(), v10 = -1 << *(a2 + 32), v11 = v9 & ~v10, v20 = a2 + 56, ((*(a2 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0))
  {
    v19 = a2;
    v12 = ~v10;
    v13 = v4 + 16;
    v14 = *(v4 + 16);
    v15 = *(v13 + 56);
    v16 = (v13 - 8);
    do
    {
      v14(v7, *(v19 + 48) + v15 * v11, v3);
      sub_1000093F8(&qword_1005A9FC8, &type metadata accessor for UUID);
      v17 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*v16)(v7, v3);
      if (v17)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
    }

    while (((*(v20 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

BOOL sub_10021B7D0(Swift::UInt a1, uint64_t a2)
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

uint64_t sub_10021B89C(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v4 = __CocoaSet.contains(_:)();
  }

  else if (*(a2 + 16) && (sub_1002414A8(), v5 = NSObject._rawHashValue(seed:)(*(a2 + 40)), v6 = -1 << *(a2 + 32), v7 = v5 & ~v6, ((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0))
  {
    v8 = ~v6;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v7);
      v4 = static NSObject.== infix(_:_:)();

      if (v4)
      {
        break;
      }

      v7 = (v7 + 1) & v8;
    }

    while (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

void *sub_10021B9A4(uint64_t a1)
{
  v46 = type metadata accessor for Friend();
  v3 = *(v46 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v46);
  v45 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for Handle();
  v6 = *(v44 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v44);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v10)
  {
    v42 = v9;
    v34 = v1;
    v50 = _swiftEmptyArrayStorage;
    v36 = a1;
    sub_10000E8E0(0, v10, 0);
    v12 = v6;
    v13 = v36;
    v14 = -1 << *(v36 + 32);
    v48 = v36 + 64;
    v49 = v50;
    result = _HashTable.startBucket.getter();
    v15 = result;
    v16 = 0;
    v40 = v3 + 8;
    v41 = v3 + 16;
    v43 = v12;
    v38 = v3;
    v39 = v12 + 32;
    v35 = v13 + 72;
    v37 = v10;
    while ((v15 & 0x8000000000000000) == 0 && v15 < 1 << *(v13 + 32))
    {
      v19 = v15 >> 6;
      if ((*(v48 + 8 * (v15 >> 6)) & (1 << v15)) == 0)
      {
        goto LABEL_23;
      }

      v47 = *(v13 + 36);
      v21 = v45;
      v20 = v46;
      (*(v3 + 16))(v45, *(v13 + 48) + *(v3 + 72) * v15, v46);
      v22 = v42;
      Friend.handle.getter();
      (*(v3 + 8))(v21, v20);
      v23 = v49;
      v50 = v49;
      v25 = v49[2];
      v24 = v49[3];
      if (v25 >= v24 >> 1)
      {
        sub_10000E8E0(v24 > 1, v25 + 1, 1);
        v23 = v50;
      }

      v23[2] = v25 + 1;
      v26 = (*(v43 + 80) + 32) & ~*(v43 + 80);
      v49 = v23;
      result = (*(v43 + 32))(v23 + v26 + *(v43 + 72) * v25, v22, v44);
      v17 = 1 << *(v13 + 32);
      if (v15 >= v17)
      {
        goto LABEL_24;
      }

      v27 = *(v48 + 8 * v19);
      if ((v27 & (1 << v15)) == 0)
      {
        goto LABEL_25;
      }

      if (v47 != *(v13 + 36))
      {
        goto LABEL_26;
      }

      v28 = v27 & (-2 << (v15 & 0x3F));
      if (v28)
      {
        v17 = __clz(__rbit64(v28)) | v15 & 0x7FFFFFFFFFFFFFC0;
        v18 = v37;
        v3 = v38;
      }

      else
      {
        v29 = v19 << 6;
        v30 = v19 + 1;
        v31 = (v35 + 8 * v19);
        v18 = v37;
        v3 = v38;
        while (v30 < (v17 + 63) >> 6)
        {
          v33 = *v31++;
          v32 = v33;
          v29 += 64;
          ++v30;
          if (v33)
          {
            result = sub_10002F14C(v15, v47, 0);
            v17 = __clz(__rbit64(v32)) + v29;
            goto LABEL_19;
          }
        }

        result = sub_10002F14C(v15, v47, 0);
LABEL_19:
        v13 = v36;
      }

      ++v16;
      v15 = v17;
      if (v16 == v18)
      {
        return v49;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  return result;
}

uint64_t sub_10021BD68(uint64_t a1)
{
  v56 = type metadata accessor for Handle();
  v3 = *(v56 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v56);
  v55 = v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = type metadata accessor for Friend();
  v6 = *(v54 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v54);
  v53 = v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10004B564(&qword_1005B0550, &qword_1004D1EA8);
  v51 = *(v9 - 8);
  v52 = v9;
  v10 = *(v51 + 64);
  __chkstk_darwin(v9);
  v50 = (v41 - v11);
  v12 = *(a1 + 16);
  v13 = _swiftEmptyArrayStorage;
  if (!v12)
  {
    return v13;
  }

  v41[1] = v1;
  v61 = _swiftEmptyArrayStorage;
  sub_1002395F8(0, v12, 0);
  v13 = v61;
  v14 = a1 + 56;
  v15 = -1 << *(a1 + 32);
  result = _HashTable.startBucket.getter();
  v17 = result;
  v18 = 0;
  v47 = (v3 + 8);
  v48 = v6 + 16;
  v45 = a1;
  v46 = v6 + 8;
  v42 = a1 + 64;
  v43 = v12;
  v44 = v6;
  v49 = a1 + 56;
  while ((v17 & 0x8000000000000000) == 0 && v17 < 1 << *(a1 + 32))
  {
    v20 = v17 >> 6;
    if ((*(v14 + 8 * (v17 >> 6)) & (1 << v17)) == 0)
    {
      goto LABEL_21;
    }

    v57 = v18;
    v58 = *(a1 + 36);
    v59 = 1 << v17;
    v21 = *(a1 + 48) + *(v6 + 72) * v17;
    v22 = *(v6 + 16);
    v23 = v53;
    v60 = v13;
    v24 = v54;
    v22(v53, v21, v54);
    v25 = *(v52 + 48);
    v26 = v55;
    Friend.handle.getter();
    v27 = Handle.identifier.getter();
    v29 = v28;
    (*v47)(v26, v56);
    v30 = v50;
    *v50 = v27;
    *(v30 + 8) = v29;
    Friend.type.getter();
    v31 = v24;
    v13 = v60;
    (*(v6 + 8))(v23, v31);
    v61 = v13;
    v33 = v13[2];
    v32 = v13[3];
    if (v33 >= v32 >> 1)
    {
      sub_1002395F8(v32 > 1, v33 + 1, 1);
      v13 = v61;
    }

    v13[2] = v33 + 1;
    result = sub_1000176A8(v30, v13 + ((*(v51 + 80) + 32) & ~*(v51 + 80)) + *(v51 + 72) * v33, &qword_1005B0550, &qword_1004D1EA8);
    a1 = v45;
    v19 = 1 << *(v45 + 32);
    v14 = v49;
    if (v17 >= v19)
    {
      goto LABEL_22;
    }

    v34 = *(v49 + 8 * v20);
    if ((v34 & v59) == 0)
    {
      goto LABEL_23;
    }

    if (v58 != *(v45 + 36))
    {
      goto LABEL_24;
    }

    v35 = v34 & (-2 << (v17 & 0x3F));
    if (v35)
    {
      v19 = __clz(__rbit64(v35)) | v17 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v36 = v20 << 6;
      v37 = v20 + 1;
      v38 = (v42 + 8 * v20);
      while (v37 < (v19 + 63) >> 6)
      {
        v40 = *v38++;
        v39 = v40;
        v36 += 64;
        ++v37;
        if (v40)
        {
          result = sub_10002F14C(v17, v58, 0);
          v19 = __clz(__rbit64(v39)) + v36;
          goto LABEL_4;
        }
      }

      result = sub_10002F14C(v17, v58, 0);
    }

LABEL_4:
    v18 = v57 + 1;
    v17 = v19;
    v6 = v44;
    if (v57 + 1 == v43)
    {
      return v13;
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

uint64_t sub_10021C1EC(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v15 = a2;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 56);
  for (i = (v5 + 63) >> 6; v7; result = )
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
    v12 = *v11;
    v13 = v11[1];

    sub_1002345CC(&v14, v12, v13);
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v15;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10021C2F0()
{
  v14 = v0;
  v1 = v0[8];
  v2 = v0[5];

  if (qword_1005A80B8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000A6F0(v3, qword_1005DFF18);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136446210;
    v0[2] = v1;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v8 = String.init<A>(describing:)();
    v10 = sub_10000D01C(v8, v9, &v13);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "DataManager readFromLocalStorage failed with error: %{public}s", v6, 0xCu);
    sub_100004984(v7);
  }

  v11 = v0[1];

  return v11(&_swiftEmptyArrayStorage);
}

uint64_t sub_10021C4BC()
{
  v14 = v0;
  v1 = v0[11];
  v2 = v0[7];

  if (qword_1005A80B8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000A6F0(v3, qword_1005DFF18);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136446210;
    v0[2] = v1;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v8 = String.init<A>(describing:)();
    v10 = sub_10000D01C(v8, v9, &v13);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "DataManager readFromLocalStorage failed with error: %{public}s", v6, 0xCu);
    sub_100004984(v7);
  }

  v11 = v0[1];

  return v11(&_swiftEmptyArrayStorage);
}

uint64_t sub_10021C688()
{
  v1 = *(v0 + 952);
  v2 = *(v0 + 848);

  return _swift_task_switch(sub_10021C6F4, v2, 0);
}

uint64_t sub_10021C6F4()
{
  v16 = v0;
  v1 = v0[117];

  v2 = v0[122];
  if (qword_1005A80B8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000A6F0(v3, qword_1005DFF18);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v15 = v7;
    *v6 = 136446210;
    v0[102] = v2;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v8 = String.init<A>(describing:)();
    v10 = sub_10000D01C(v8, v9, &v15);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "DataManager readFromLocalStorage failed with error: %{public}s", v6, 0xCu);
    sub_100004984(v7);
  }

  v11 = v0[113];
  v12 = v0[110];

  v13 = v0[1];

  return v13(_swiftEmptyArrayStorage);
}

uint64_t sub_10021C8D8()
{
  v1 = *v0;
  v2 = *(*v0 + 992);
  v3 = *(*v0 + 848);
  v5 = *v0;

  sub_100002CE0(v1 + 16, &qword_1005B02C0, &unk_1004D5E90);

  return _swift_task_switch(sub_10021CA00, v3, 0);
}

uint64_t sub_10021CA00()
{
  v1 = v0[123];
  (*(v0[109] + 8))(v0[110], v0[108]);

  return _swift_task_switch(sub_10021CA88, 0, 0);
}

uint64_t sub_10021CA88()
{
  v1 = v0[117];
  v2 = v0[105];
  v3 = swift_task_alloc();
  v0[125] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v5 = swift_task_alloc();
  v0[126] = v5;
  *v5 = v0;
  v5[1] = sub_10021CB84;
  v6 = v0[121];

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 104, 0, 0, 0x2873646E65697266, 0xEC000000293A666FLL, sub_100241558, v3, v6);
}

uint64_t sub_10021CB84()
{
  v2 = *v1;
  v3 = *(*v1 + 1008);
  v7 = *v1;
  *(*v1 + 1016) = v0;

  if (v0)
  {
    v4 = sub_10021CECC;
  }

  else
  {
    v5 = *(v2 + 1000);

    v4 = sub_10021CCA0;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10021CCA0()
{
  v1 = v0[106];
  v0[128] = v0[104];
  return _swift_task_switch(sub_10021CCC4, v1, 0);
}

uint64_t sub_10021CCC4()
{
  v21 = v0;
  v1 = v0[128];
  if (qword_1005A80B8 != -1)
  {
    swift_once();
  }

  v2 = v0[105];
  v3 = type metadata accessor for Logger();
  sub_10000A6F0(v3, qword_1005DFF18);
  swift_bridgeObjectRetain_n();

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[117];
  if (v6)
  {
    v8 = v0[111];
    v9 = v0[105];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v20 = v11;
    *v10 = 136446466;
    v12 = Array.description.getter();
    v14 = sub_10000D01C(v12, v13, &v20);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2048;
    v15 = *(v1 + 16);

    *(v10 + 14) = v15;

    _os_log_impl(&_mh_execute_header, v4, v5, "DataManager load LocalStorage friends with types %{public}s count:%ld", v10, 0x16u);
    sub_100004984(v11);
  }

  else
  {
    swift_bridgeObjectRelease_n();
  }

  v16 = v0[113];
  v17 = v0[110];

  v18 = v0[1];

  return v18(v1);
}

uint64_t sub_10021CECC()
{
  v1 = *(v0 + 1000);
  v2 = *(v0 + 848);

  return _swift_task_switch(sub_10021CF38, v2, 0);
}

uint64_t sub_10021CF38()
{
  v16 = v0;
  v1 = v0[117];

  v2 = v0[127];
  if (qword_1005A80B8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000A6F0(v3, qword_1005DFF18);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v15 = v7;
    *v6 = 136446210;
    v0[102] = v2;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v8 = String.init<A>(describing:)();
    v10 = sub_10000D01C(v8, v9, &v15);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "DataManager readFromLocalStorage failed with error: %{public}s", v6, 0xCu);
    sub_100004984(v7);
  }

  v11 = v0[113];
  v12 = v0[110];

  v13 = v0[1];

  return v13(_swiftEmptyArrayStorage);
}

uint64_t sub_10021D11C()
{
  v16 = v0;
  v1 = v0[115];

  v2 = v0[118];
  if (qword_1005A80B8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000A6F0(v3, qword_1005DFF18);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v15 = v7;
    *v6 = 136446210;
    v0[102] = v2;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v8 = String.init<A>(describing:)();
    v10 = sub_10000D01C(v8, v9, &v15);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "DataManager readFromLocalStorage failed with error: %{public}s", v6, 0xCu);
    sub_100004984(v7);
  }

  v11 = v0[113];
  v12 = v0[110];

  v13 = v0[1];

  return v13(_swiftEmptyArrayStorage);
}

uint64_t sub_10021D300(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[106] = v3;
  v4[105] = a3;
  v4[104] = a2;
  v4[103] = a1;
  v4[107] = *v3;
  v5 = type metadata accessor for Date();
  v4[108] = v5;
  v6 = *(v5 - 8);
  v4[109] = v6;
  v7 = *(v6 + 64) + 15;
  v4[110] = swift_task_alloc();
  v8 = type metadata accessor for HandleType();
  v4[111] = v8;
  v9 = *(v8 - 8);
  v4[112] = v9;
  v10 = *(v9 + 64) + 15;
  v4[113] = swift_task_alloc();
  v11 = type metadata accessor for Friend();
  v4[114] = v11;
  v12 = *(v11 - 8);
  v4[115] = v12;
  v13 = *(v12 + 64) + 15;
  v4[116] = swift_task_alloc();
  v14 = *(*(sub_10004B564(&qword_1005A9188, &unk_1004D80D0) - 8) + 64) + 15;
  v4[117] = swift_task_alloc();
  v4[118] = swift_task_alloc();
  v4[119] = swift_task_alloc();
  v15 = async function pointer to daemon.getter[1];
  v16 = swift_task_alloc();
  v4[120] = v16;
  *v16 = v4;
  v16[1] = sub_10021D52C;

  return daemon.getter();
}

uint64_t sub_10021D52C(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 960);
  v12 = *v1;
  *(v3 + 968) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 976) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for LocalStorageService();
  v9 = sub_1000093F8(&unk_1005AFA50, &type metadata accessor for Daemon);
  v10 = sub_1000093F8(&qword_1005AAB88, type metadata accessor for LocalStorageService);
  *v6 = v12;
  v6[1] = sub_10021D708;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_10021D708(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 976);
  v6 = *v2;
  v4[123] = a1;
  v4[124] = v1;

  if (v1)
  {
    v7 = v4[106];

    return _swift_task_switch(sub_10021E254, v7, 0);
  }

  else
  {
    v8 = v4[121];

    v9 = swift_task_alloc();
    v4[125] = v9;
    *v9 = v6;
    v9[1] = sub_10021D8A0;
    v10 = v4[119];
    v11 = v4[105];
    v12 = v4[104];

    return sub_100306054(v10, v12, v11);
  }
}

uint64_t sub_10021D8A0()
{
  v2 = *v1;
  v3 = *(*v1 + 1000);
  v4 = *v1;
  *(*v1 + 1008) = v0;

  v5 = *(v2 + 848);
  if (v0)
  {
    v6 = sub_10021E494;
  }

  else
  {
    v6 = sub_10021D9CC;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10021D9CC()
{
  v1 = v0[118];
  v2 = v0[115];
  v3 = v0[114];
  sub_100005F04(v0[119], v1, &qword_1005A9188, &unk_1004D80D0);
  if ((*(v2 + 48))(v1, 1, v3) == 1)
  {
    v4 = v0[123];
    v5 = v0[119];
    v6 = v0[118];
    v7 = v0[103];

    sub_100002CE0(v6, &qword_1005A9188, &unk_1004D80D0);
    v8 = v5;
    v9 = v7;
LABEL_13:
    sub_1000176A8(v8, v9, &qword_1005A9188, &unk_1004D80D0);
    v42 = v0[119];
    v43 = v0[118];
    v44 = v0[117];
    v45 = v0[116];
    v46 = v0[113];
    v47 = v0[110];

    v48 = v0[1];

    return v48();
  }

  v10 = v0[113];
  v11 = v0[112];
  v12 = v0[111];
  v13 = v0[105];
  (*(v0[115] + 32))(v0[116], v0[118], v0[114]);
  v14 = *(v11 + 104);
  v14(v10, enum case for HandleType.follower(_:), v12);
  LOBYTE(v13) = static HandleType.== infix(_:_:)();
  v15 = *(v11 + 8);
  v15(v10, v12);
  if ((v13 & 1) == 0)
  {
    v16 = v0[113];
    v17 = v0[111];
    v18 = v0[105];
    v14(v16, enum case for HandleType.pendingOffer(_:), v17);
    LOBYTE(v18) = static HandleType.== infix(_:_:)();
    v15(v16, v17);
    if ((v18 & 1) == 0)
    {
      v19 = v0[113];
      v20 = v0[111];
      v21 = v0[105];
      v14(v19, enum case for HandleType.following(_:), v20);
      LOBYTE(v21) = static HandleType.== infix(_:_:)();
      v15(v19, v20);
      if ((v21 & 1) == 0)
      {
        v41 = v0[123];
        (*(v0[115] + 8))(v0[116], v0[114]);
        goto LABEL_12;
      }
    }
  }

  v22 = v0[126];
  v23 = v0[116];
  v24 = v0[115];
  v25 = v0[114];
  v26 = v0[110];
  v27 = v0[107];
  sub_10004B564(&qword_1005B00D0, &qword_1004D1660);
  v28 = *(v24 + 72);
  v29 = (*(v24 + 80) + 32) & ~*(v24 + 80);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_1004C1900;
  (*(v24 + 16))(v30 + v29, v23, v25);
  static Date.trustedNow.getter(v26);
  v31 = swift_task_alloc();
  *(v31 + 16) = v26;
  *(v31 + 24) = v27;
  v32 = sub_100026ABC(sub_1002414F4, v31, v30);

  v33 = *(v32 + 16);

  if (!v33)
  {
    v37 = v0[123];
    v38 = v0[116];
    v39 = v0[115];
    v40 = v0[114];
    (*(v0[109] + 8))(v0[110], v0[108]);
    (*(v39 + 8))(v38, v40);
LABEL_12:

    v8 = v0[119];
    v9 = v0[103];
    goto LABEL_13;
  }

  v34 = swift_task_alloc();
  v0[127] = v34;
  *v34 = v0;
  v34[1] = sub_10021DE1C;
  v35 = v0[106];

  return sub_1001E17C0((v0 + 2));
}

uint64_t sub_10021DE1C()
{
  v1 = *v0;
  v2 = *(*v0 + 1016);
  v3 = *(*v0 + 848);
  v5 = *v0;

  sub_100002CE0(v1 + 16, &qword_1005B02C0, &unk_1004D5E90);

  return _swift_task_switch(sub_10021DF44, v3, 0);
}

uint64_t sub_10021DF44()
{
  (*(v0[109] + 8))(v0[110], v0[108]);
  v1 = swift_task_alloc();
  v0[128] = v1;
  *v1 = v0;
  v1[1] = sub_10021E000;
  v2 = v0[123];
  v3 = v0[117];
  v4 = v0[105];
  v5 = v0[104];

  return sub_100306054(v3, v5, v4);
}

uint64_t sub_10021E000()
{
  v2 = *v1;
  v3 = *(*v1 + 1024);
  v4 = *v1;
  *(*v1 + 1032) = v0;

  v5 = *(v2 + 848);
  if (v0)
  {
    v6 = sub_10021E6D4;
  }

  else
  {
    v6 = sub_10021E12C;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10021E12C()
{
  v1 = v0[123];
  v2 = v0[119];
  v3 = v0[117];
  v4 = v0[116];
  v5 = v0[115];
  v6 = v0[114];

  (*(v5 + 8))(v4, v6);
  sub_100002CE0(v2, &qword_1005A9188, &unk_1004D80D0);
  sub_1000176A8(v3, v2, &qword_1005A9188, &unk_1004D80D0);
  sub_1000176A8(v0[119], v0[103], &qword_1005A9188, &unk_1004D80D0);
  v7 = v0[119];
  v8 = v0[118];
  v9 = v0[117];
  v10 = v0[116];
  v11 = v0[113];
  v12 = v0[110];

  v13 = v0[1];

  return v13();
}

uint64_t sub_10021E254()
{
  v20 = v0;
  v1 = v0[121];

  v2 = v0[124];
  if (qword_1005A80B8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000A6F0(v3, qword_1005DFF18);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v19 = v7;
    *v6 = 136446210;
    v0[102] = v2;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v8 = String.init<A>(describing:)();
    v10 = sub_10000D01C(v8, v9, &v19);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "DataManager readFromLocalStorage failed with error: %{public}s", v6, 0xCu);
    sub_100004984(v7);
  }

  else
  {
  }

  (*(v0[115] + 56))(v0[103], 1, 1, v0[114]);
  v11 = v0[119];
  v12 = v0[118];
  v13 = v0[117];
  v14 = v0[116];
  v15 = v0[113];
  v16 = v0[110];

  v17 = v0[1];

  return v17();
}

uint64_t sub_10021E494()
{
  v20 = v0;
  v1 = v0[123];

  v2 = v0[126];
  if (qword_1005A80B8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000A6F0(v3, qword_1005DFF18);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v19 = v7;
    *v6 = 136446210;
    v0[102] = v2;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v8 = String.init<A>(describing:)();
    v10 = sub_10000D01C(v8, v9, &v19);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "DataManager readFromLocalStorage failed with error: %{public}s", v6, 0xCu);
    sub_100004984(v7);
  }

  else
  {
  }

  (*(v0[115] + 56))(v0[103], 1, 1, v0[114]);
  v11 = v0[119];
  v12 = v0[118];
  v13 = v0[117];
  v14 = v0[116];
  v15 = v0[113];
  v16 = v0[110];

  v17 = v0[1];

  return v17();
}

uint64_t sub_10021E6D4()
{
  v24 = v0;
  v1 = v0[123];
  v2 = v0[119];
  v3 = v0[116];
  v4 = v0[115];
  v5 = v0[114];

  (*(v4 + 8))(v3, v5);
  sub_100002CE0(v2, &qword_1005A9188, &unk_1004D80D0);
  v6 = v0[129];
  if (qword_1005A80B8 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_10000A6F0(v7, qword_1005DFF18);
  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v23 = v11;
    *v10 = 136446210;
    v0[102] = v6;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v12 = String.init<A>(describing:)();
    v14 = sub_10000D01C(v12, v13, &v23);

    *(v10 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v8, v9, "DataManager readFromLocalStorage failed with error: %{public}s", v10, 0xCu);
    sub_100004984(v11);
  }

  else
  {
  }

  (*(v0[115] + 56))(v0[103], 1, 1, v0[114]);
  v15 = v0[119];
  v16 = v0[118];
  v17 = v0[117];
  v18 = v0[116];
  v19 = v0[113];
  v20 = v0[110];

  v21 = v0[1];

  return v21();
}

uint64_t sub_10021E954(uint64_t a1, char a2)
{
  *(v3 + 4984) = v2;
  *(v3 + 163) = a2;
  *(v3 + 4976) = a1;
  v4 = type metadata accessor for ClientOrigin();
  *(v3 + 4992) = v4;
  v5 = *(v4 - 8);
  *(v3 + 5000) = v5;
  v6 = *(v5 + 64) + 15;
  *(v3 + 5008) = swift_task_alloc();
  *(v3 + 5016) = swift_task_alloc();
  v7 = *(*(sub_10004B564(&unk_1005AE5B0, &qword_1004C32F0) - 8) + 64) + 15;
  *(v3 + 5024) = swift_task_alloc();
  *(v3 + 5032) = swift_task_alloc();
  *(v3 + 5040) = swift_task_alloc();
  *(v3 + 5048) = swift_task_alloc();
  v8 = type metadata accessor for Handle();
  *(v3 + 5056) = v8;
  v9 = *(v8 - 8);
  *(v3 + 5064) = v9;
  v10 = *(v9 + 64) + 15;
  *(v3 + 5072) = swift_task_alloc();
  *(v3 + 5080) = swift_task_alloc();
  *(v3 + 5088) = swift_task_alloc();
  *(v3 + 5096) = swift_task_alloc();
  *(v3 + 5104) = swift_task_alloc();
  v11 = type metadata accessor for Friend();
  *(v3 + 5112) = v11;
  v12 = *(v11 - 8);
  *(v3 + 5120) = v12;
  v13 = *(v12 + 64) + 15;
  *(v3 + 5128) = swift_task_alloc();
  *(v3 + 5136) = swift_task_alloc();
  *(v3 + 5144) = swift_task_alloc();
  *(v3 + 5152) = swift_task_alloc();
  v14 = type metadata accessor for HandleType();
  *(v3 + 5160) = v14;
  v15 = *(v14 - 8);
  *(v3 + 5168) = v15;
  v16 = *(v15 + 64) + 15;
  *(v3 + 5176) = swift_task_alloc();
  *(v3 + 5184) = swift_task_alloc();
  *(v3 + 5192) = swift_task_alloc();
  *(v3 + 5200) = swift_task_alloc();
  *(v3 + 5208) = swift_task_alloc();
  *(v3 + 5216) = swift_task_alloc();
  v17 = *(*(sub_10004B564(&qword_1005B3360, &unk_1004C6AA0) - 8) + 64) + 15;
  *(v3 + 5224) = swift_task_alloc();
  *(v3 + 5232) = swift_task_alloc();
  *(v3 + 5240) = swift_task_alloc();

  return _swift_task_switch(sub_10021EC78, v2, 0);
}

uint64_t sub_10021EC78()
{
  v579 = v0;
  v1 = v0;
  v2 = *(v0 + 4976);
  *(v0 + 4960) = _swiftEmptyArrayStorage;
  v3 = *(v2 + 184);
  if (v3 && (v4 = *(v3 + 16)) != 0)
  {
    v5 = (v0 + 2600);
    v6 = v3 + 32;
    v7 = _swiftEmptyDictionarySingleton;
    do
    {
      v9 = *(v6 + 32);
      v10 = *(v6 + 48);
      v11 = *(v6 + 80);
      *(v1 + 333) = *(v6 + 64);
      *(v1 + 335) = v11;
      *(v1 + 331) = v10;
      v12 = *(v6 + 96);
      v13 = *(v6 + 112);
      v14 = *(v6 + 128);
      *(v1 + 2743) = *(v6 + 143);
      *(v1 + 339) = v13;
      *(v1 + 341) = v14;
      *(v1 + 337) = v12;
      v15 = *(v6 + 16);
      *v5 = *v6;
      *(v1 + 327) = v15;
      *(v1 + 329) = v9;
      v16 = v1[331];
      v17 = v1[332];
      v18 = v1[334];
      sub_100166288((v1 + 325), (v1 + 40));

      v20 = sub_10023F00C(v19);

      v21 = _swiftEmptyDictionarySingleton[2];

      if (v21)
      {
        v22 = sub_1000110D8(v16, v17);
        if (v23)
        {
          v24 = *(_swiftEmptyDictionarySingleton[7] + 8 * v22);

          v20 = sub_10021C1EC(v20, v24);
        }
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v578[0] = _swiftEmptyDictionarySingleton;
      sub_100453E98(v20, v16, v17, isUniquelyReferenced_nonNull_native);

      sub_1001662C0((v1 + 325));
      v6 += 152;
      --v4;
    }

    while (v4);
    v2 = v1[622];
  }

  else
  {
    v7 = _swiftEmptyDictionarySingleton;
  }

  v25 = *(v2 + 192);
  v492 = v25;
  if (v25)
  {
    v26 = *(v25 + 16);
    if (v26)
    {
      v27 = v25 + 32;
      do
      {
        v29 = *(v27 + 32);
        v30 = *(v27 + 48);
        v31 = *(v27 + 80);
        *(v1 + 195) = *(v27 + 64);
        *(v1 + 196) = v31;
        *(v1 + 194) = v30;
        v32 = *(v27 + 96);
        v33 = *(v27 + 112);
        v34 = *(v27 + 128);
        *(v1 + 3199) = *(v27 + 143);
        *(v1 + 198) = v33;
        *(v1 + 199) = v34;
        *(v1 + 197) = v32;
        v35 = *(v27 + 16);
        *(v1 + 191) = *v27;
        *(v1 + 192) = v35;
        *(v1 + 193) = v29;
        v36 = v1[388];
        v37 = v1[389];
        v38 = v1[390];
        sub_100166288((v1 + 382), (v1 + 344));

        v40 = sub_10023F00C(v39);

        v41 = _swiftEmptyDictionarySingleton[2];

        if (v41)
        {
          v42 = sub_1000110D8(v36, v37);
          if (v43)
          {
            v44 = *(_swiftEmptyDictionarySingleton[7] + 8 * v42);

            v40 = sub_10021C1EC(v40, v44);
          }
        }

        v28 = swift_isUniquelyReferenced_nonNull_native();
        v578[0] = _swiftEmptyDictionarySingleton;
        sub_100453E98(v40, v36, v37, v28);

        sub_1001662C0((v1 + 382));
        v27 += 152;
        --v26;
      }

      while (v26);
    }
  }

  v575 = v1;
  if (v3)
  {
    v576 = _swiftEmptyArrayStorage;
    v45 = *(v3 + 16);
    if (!v45)
    {
LABEL_63:
      if (qword_1005A80B8 != -1)
      {
        goto LABEL_252;
      }

      goto LABEL_64;
    }

    v46 = 0;
    v47 = (v1 + 2);
    v493 = v1 + 287;
    v500 = v1 + 401;
    v469 = v1 + 458;
    v48 = v1[646];
    v477 = v1[622];
    v571 = v3 + 32;
    v487 = (v1[633] + 56);
    v485 = enum case for HandleType.follower(_:);
    v481 = (v48 + 104);
    v473 = (v48 + 8);
    v534 = *(v3 + 16);
    while (1)
    {
      v49 = v571 + 152 * v46;
      v50 = *(v49 + 32);
      v51 = *(v49 + 48);
      v52 = *(v49 + 80);
      *(v47 + 64) = *(v49 + 64);
      *(v47 + 80) = v52;
      v53 = *(v49 + 96);
      v54 = *(v49 + 112);
      v55 = *(v49 + 128);
      *(v47 + 143) = *(v49 + 143);
      *(v47 + 112) = v54;
      *(v47 + 128) = v55;
      *(v47 + 96) = v53;
      v56 = *(v49 + 16);
      *v47 = *v49;
      *(v47 + 16) = v56;
      *(v47 + 32) = v50;
      *(v47 + 48) = v51;
      if (*(v1[11] + 16))
      {
        v57 = v1[10];
        if (v57[2])
        {
          if (v7[2])
          {
            v58 = v7;
            v59 = v57[5];
            v543 = v57[4];
            v60 = v1[8];
            v7 = v1[9];
            v61 = v1;
            sub_100166288(v47, (v1 + 249));

            v62 = sub_1000110D8(v60, v7);
            v64 = v63;

            if (v64)
            {
              v65 = v1[655];
              v523 = v1[652];
              v66 = v1[645];
              v67 = v61[632];
              v562 = v58;
              v68 = *(v58[7] + 8 * v62);

              sub_1002743D4(_swiftEmptyArrayStorage);
              Handle.init(withID:serverID:pushIdentifiers:expiresByGroupId:siblingIdentifiers:favoriteOrder:)();
              (*v487)(v65, 0, 1, v67);
              (*v481)(v523, v485, v66);
              v69 = *(v68 + 16);
              if (v69)
              {
                sub_10004B564(&qword_1005AFA60, &unk_1004CE390);
                v1 = swift_allocObject();
                v70 = j__malloc_size(v1);
                v71 = v70 - 32;
                if (v70 < 32)
                {
                  v71 = v70 - 17;
                }

                v1[2] = v69;
                v1[3] = 2 * (v71 >> 4);
                v72 = sub_10023E504(v578, v1 + 4, v69, v68);
                sub_10000E3F8();
                if (v72 != v69)
                {
                  goto LABEL_250;
                }
              }

              else
              {

                v1 = _swiftEmptyArrayStorage;
              }

              if (*(v477 + 144))
              {
                v106 = *(v477 + 128);
                v107 = *(v575 + 160);
                v108 = *(v575 + 161);
                v109 = *(v575 + 112);
                v544 = *(v575 + 113);
                v524 = *(v575 + 112);
                if (v106)
                {
                  v466 = *(v575 + 161);
                  v507 = *(v575 + 160);
                  v110 = (v106 + 48);
                  v111 = *(v106 + 16) + 1;
                  while (--v111)
                  {
                    v112 = *v110;
                    if (*(v110 - 2) != v60 || *(v110 - 1) != v7)
                    {
                      v110 += 3;
                      v114 = v109;
                      v115 = _stringCompareWithSmolCheck(_:_:expecting:)();
                      v109 = v114;
                      if ((v115 & 1) == 0)
                      {
                        continue;
                      }
                    }

                    v116 = v575;
                    v575[618] = v112;
                    v517 = dispatch thunk of CustomStringConvertible.description.getter();
                    v118 = v117;
                    goto LABEL_60;
                  }

                  v517 = 0;
                  v118 = 0;
                  v116 = v575;
LABEL_60:
                  v108 = v466;
                  v107 = v507;
                }

                else
                {
                  v517 = 0;
                  v118 = 0;
                  v116 = v575;
                }
              }

              else
              {
                v517 = 0;
                v118 = 0;
                v116 = v575;
                v107 = *(v575 + 160);
                v108 = *(v575 + 161);
                v544 = *(v575 + 113);
                v524 = *(v575 + 112);
              }

              v119 = v116[655];
              v120 = v116[652];
              v508 = v116[645];
              v121 = swift_task_alloc();
              *(v121 + 16) = v47;
              *(v121 + 24) = v1;
              *(v121 + 32) = v517;
              *(v121 + 40) = v118;
              *(v121 + 48) = v120;
              *(v121 + 56) = v524;
              *(v121 + 57) = v544;
              *(v121 + 58) = v107 & 1;
              *(v121 + 59) = v108 & 1;
              *(v121 + 64) = v119;
              v122 = sub_100056DB8(sub_10024151C, v121, v1);

              sub_1001662C0(v47);
              v1 = v575;

              (*v473)(v120, v508);
              sub_100002CE0(v119, &qword_1005B3360, &unk_1004C6AA0);
              sub_10024949C(v122);
              v7 = v562;
              v45 = v534;
              goto LABEL_21;
            }

            v7 = v58;
            v45 = v534;
          }

          else
          {
            sub_100166288(v47, (v1 + 306));
          }

          if (qword_1005A80B8 != -1)
          {
            swift_once();
          }

          v97 = type metadata accessor for Logger();
          sub_10000A6F0(v97, qword_1005DFF18);
          sub_100166288(v47, (v1 + 268));
          v74 = Logger.logObject.getter();
          v98 = static os_log_type_t.error.getter();
          sub_1001662C0(v47);
          if (os_log_type_enabled(v74, v98))
          {
            v76 = swift_slowAlloc();
            v77 = swift_slowAlloc();
            v578[0] = v77;
            *v76 = 136315138;
            v99 = *(v47 + 112);
            *(v493 + 6) = *(v47 + 96);
            *(v493 + 7) = v99;
            *(v493 + 8) = *(v47 + 128);
            *(v493 + 143) = *(v47 + 143);
            v100 = *(v47 + 48);
            *(v493 + 2) = *(v47 + 32);
            *(v493 + 3) = v100;
            v101 = *(v47 + 80);
            *(v493 + 4) = *(v47 + 64);
            *(v493 + 5) = v101;
            v102 = *(v47 + 16);
            *v493 = *v47;
            *(v493 + 1) = v102;
            v103 = String.init<A>(describing:)();
            v105 = sub_10000D01C(v103, v104, v578);

            *(v76 + 4) = v105;
            v85 = v98;
            v86 = v74;
            goto LABEL_45;
          }
        }

        else
        {
          sub_100166288(v47, (v1 + 59));
          if (qword_1005A80B8 != -1)
          {
            swift_once();
          }

          v88 = type metadata accessor for Logger();
          sub_10000A6F0(v88, qword_1005DFF18);
          sub_100166288(v47, (v1 + 477));
          v74 = Logger.logObject.getter();
          v89 = static os_log_type_t.error.getter();
          sub_1001662C0(v47);
          if (os_log_type_enabled(v74, v89))
          {
            v76 = swift_slowAlloc();
            v77 = swift_slowAlloc();
            v578[0] = v77;
            *v76 = 136315138;
            v90 = *(v47 + 112);
            *(v469 + 6) = *(v47 + 96);
            *(v469 + 7) = v90;
            *(v469 + 8) = *(v47 + 128);
            *(v469 + 143) = *(v47 + 143);
            v91 = *(v47 + 48);
            *(v469 + 2) = *(v47 + 32);
            *(v469 + 3) = v91;
            v92 = *(v47 + 80);
            *(v469 + 4) = *(v47 + 64);
            *(v469 + 5) = v92;
            v93 = *(v47 + 16);
            *v469 = *v47;
            *(v469 + 1) = v93;
            v94 = String.init<A>(describing:)();
            v96 = sub_10000D01C(v94, v95, v578);

            *(v76 + 4) = v96;
            v85 = v89;
            v86 = v74;
            goto LABEL_45;
          }
        }
      }

      else
      {
        sub_100166288(v47, (v1 + 439));
        if (qword_1005A80B8 != -1)
        {
          swift_once();
        }

        v73 = type metadata accessor for Logger();
        sub_10000A6F0(v73, qword_1005DFF18);
        sub_100166288(v47, (v1 + 420));
        v74 = Logger.logObject.getter();
        v75 = static os_log_type_t.error.getter();
        sub_1001662C0(v47);
        if (os_log_type_enabled(v74, v75))
        {
          v76 = swift_slowAlloc();
          v77 = swift_slowAlloc();
          v578[0] = v77;
          *v76 = 136315138;
          v78 = *(v47 + 112);
          *(v500 + 6) = *(v47 + 96);
          *(v500 + 7) = v78;
          *(v500 + 8) = *(v47 + 128);
          *(v500 + 143) = *(v47 + 143);
          v79 = *(v47 + 48);
          *(v500 + 2) = *(v47 + 32);
          *(v500 + 3) = v79;
          v80 = *(v47 + 80);
          *(v500 + 4) = *(v47 + 64);
          *(v500 + 5) = v80;
          v81 = *(v47 + 16);
          *v500 = *v47;
          *(v500 + 1) = v81;
          v82 = String.init<A>(describing:)();
          v84 = sub_10000D01C(v82, v83, v578);

          *(v76 + 4) = v84;
          v85 = v75;
          v86 = v74;
LABEL_45:
          _os_log_impl(&_mh_execute_header, v86, v85, v87, v76, 0xCu);
          sub_100004984(v77);
          v1 = v575;

          goto LABEL_21;
        }
      }

      sub_1001662C0(v47);
LABEL_21:
      if (++v46 == v45)
      {
        goto LABEL_63;
      }
    }
  }

LABEL_74:
  v1[619] = _swiftEmptyArrayStorage;
  if (v492)
  {
    v150 = *(v492 + 16);
    if (v150)
    {
      v151 = 0;
      v152 = (v1 + 21);
      v474 = v1 + 154;
      v495 = v1 + 78;
      v502 = v1 + 230;
      v153 = v1[646];
      v482 = v1[622];
      v572 = v492 + 32;
      v492 = v1[633] + 56;
      v489 = (v153 + 104);
      v486 = enum case for HandleType.following(_:);
      v478 = (v153 + 8);
      v536 = v150;
      do
      {
        v154 = v572 + 152 * v151;
        v155 = *(v154 + 32);
        v156 = *(v154 + 48);
        v157 = *(v154 + 80);
        *(v152 + 64) = *(v154 + 64);
        *(v152 + 80) = v157;
        v158 = *(v154 + 96);
        v159 = *(v154 + 112);
        v160 = *(v154 + 128);
        *(v152 + 143) = *(v154 + 143);
        *(v152 + 112) = v159;
        *(v152 + 128) = v160;
        *(v152 + 96) = v158;
        v161 = *(v154 + 16);
        *v152 = *v154;
        *(v152 + 16) = v161;
        *(v152 + 32) = v155;
        *(v152 + 48) = v156;
        if (*(v1[29] + 16))
        {
          v162 = v1[30];
          if (v162[2])
          {
            if (v7[2])
            {
              v163 = v7;
              v164 = v162[5];
              v546 = v162[4];
              v165 = v1[27];
              v7 = v1[28];
              v166 = v1;
              sub_100166288(v152, (v1 + 173));

              v167 = sub_1000110D8(v165, v7);
              v169 = v168;

              if (v169)
              {
                v170 = v1[654];
                v526 = v1[651];
                v171 = v1[645];
                v172 = v166[632];
                v564 = v163;
                v173 = *(v163[7] + 8 * v167);

                sub_1002743D4(_swiftEmptyArrayStorage);
                Handle.init(withID:serverID:pushIdentifiers:expiresByGroupId:siblingIdentifiers:favoriteOrder:)();
                (*v492)(v170, 0, 1, v172);
                (*v489)(v526, v486, v171);
                v174 = *(v173 + 16);
                if (v174)
                {
                  sub_10004B564(&qword_1005AFA60, &unk_1004CE390);
                  v1 = swift_allocObject();
                  v175 = j__malloc_size(v1);
                  v176 = v175 - 32;
                  if (v175 < 32)
                  {
                    v176 = v175 - 17;
                  }

                  v1[2] = v174;
                  v1[3] = 2 * (v176 >> 4);
                  v177 = sub_10023E504(v578, v1 + 4, v174, v173);
                  sub_10000E3F8();
                  if (v177 != v174)
                  {
                    goto LABEL_251;
                  }
                }

                else
                {

                  v1 = _swiftEmptyArrayStorage;
                }

                if (*(v482 + 144))
                {
                  v211 = *(v482 + 128);
                  v212 = *(v575 + 313);
                  v518 = *(v575 + 265);
                  v510 = *(v575 + 264);
                  if (v211)
                  {
                    v470 = *(v575 + 313);
                    v547 = *(v575 + 312);
                    v213 = (v211 + 48);
                    v214 = *(v211 + 16) + 1;
                    while (--v214)
                    {
                      v215 = *v213;
                      if (*(v213 - 2) != v165 || *(v213 - 1) != v7)
                      {
                        v213 += 3;
                        if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
                        {
                          continue;
                        }
                      }

                      v217 = v575;
                      v575[621] = v215;
                      v527 = dispatch thunk of CustomStringConvertible.description.getter();
                      v219 = v218;
                      goto LABEL_117;
                    }

                    v527 = 0;
                    v219 = 0;
                    v217 = v575;
LABEL_117:
                    v220 = v547;
                    v212 = v470;
                  }

                  else
                  {
                    v527 = 0;
                    v219 = 0;
                    v217 = v575;
                    v220 = *(v575 + 312);
                  }
                }

                else
                {
                  v527 = 0;
                  v219 = 0;
                  v217 = v575;
                  v220 = *(v575 + 312);
                  v212 = *(v575 + 313);
                  v518 = *(v575 + 265);
                  v510 = *(v575 + 264);
                }

                v221 = v217[654];
                v222 = v217[651];
                v548 = v575[645];
                v223 = swift_task_alloc();
                *(v223 + 16) = v152;
                *(v223 + 24) = v1;
                *(v223 + 32) = v527;
                *(v223 + 40) = v219;
                *(v223 + 48) = v222;
                *(v223 + 56) = v510;
                *(v223 + 57) = v518;
                *(v223 + 58) = v220 & 1;
                *(v223 + 59) = v212 & 1;
                *(v223 + 64) = v221;
                v224 = sub_100056DB8(sub_10023FB48, v223, v1);

                sub_1001662C0(v152);

                v1 = v575;
                (*v478)(v222, v548);
                sub_100002CE0(v221, &qword_1005B3360, &unk_1004C6AA0);
                sub_10024949C(v224);
                v7 = v564;
                v150 = v536;
                goto LABEL_78;
              }

              v7 = v163;
              v150 = v536;
            }

            else
            {
              sub_100166288(v152, (v1 + 97));
            }

            if (qword_1005A80B8 != -1)
            {
              swift_once();
            }

            v202 = type metadata accessor for Logger();
            sub_10000A6F0(v202, qword_1005DFF18);
            sub_100166288(v152, (v1 + 363));
            v179 = Logger.logObject.getter();
            v203 = static os_log_type_t.error.getter();
            sub_1001662C0(v152);
            if (os_log_type_enabled(v179, v203))
            {
              v181 = swift_slowAlloc();
              v182 = swift_slowAlloc();
              v578[0] = v182;
              *v181 = 136315138;
              v204 = *(v152 + 112);
              *(v495 + 6) = *(v152 + 96);
              *(v495 + 7) = v204;
              *(v495 + 8) = *(v152 + 128);
              *(v495 + 143) = *(v152 + 143);
              v205 = *(v152 + 48);
              *(v495 + 2) = *(v152 + 32);
              *(v495 + 3) = v205;
              v206 = *(v152 + 80);
              *(v495 + 4) = *(v152 + 64);
              *(v495 + 5) = v206;
              v207 = *(v152 + 16);
              *v495 = *v152;
              *(v495 + 1) = v207;
              v208 = String.init<A>(describing:)();
              v210 = sub_10000D01C(v208, v209, v578);

              *(v181 + 4) = v210;
              v190 = v203;
              v191 = v179;
              goto LABEL_102;
            }
          }

          else
          {
            sub_100166288(v152, (v1 + 116));
            if (qword_1005A80B8 != -1)
            {
              swift_once();
            }

            v193 = type metadata accessor for Logger();
            sub_10000A6F0(v193, qword_1005DFF18);
            sub_100166288(v152, (v1 + 135));
            v179 = Logger.logObject.getter();
            v194 = static os_log_type_t.error.getter();
            sub_1001662C0(v152);
            if (os_log_type_enabled(v179, v194))
            {
              v181 = swift_slowAlloc();
              v182 = swift_slowAlloc();
              v578[0] = v182;
              *v181 = 136315138;
              v195 = *(v152 + 112);
              *(v474 + 6) = *(v152 + 96);
              *(v474 + 7) = v195;
              *(v474 + 8) = *(v152 + 128);
              *(v474 + 143) = *(v152 + 143);
              v196 = *(v152 + 48);
              *(v474 + 2) = *(v152 + 32);
              *(v474 + 3) = v196;
              v197 = *(v152 + 80);
              *(v474 + 4) = *(v152 + 64);
              *(v474 + 5) = v197;
              v198 = *(v152 + 16);
              *v474 = *v152;
              *(v474 + 1) = v198;
              v199 = String.init<A>(describing:)();
              v201 = sub_10000D01C(v199, v200, v578);

              *(v181 + 4) = v201;
              v190 = v194;
              v191 = v179;
              goto LABEL_102;
            }
          }
        }

        else
        {
          sub_100166288(v152, (v1 + 192));
          if (qword_1005A80B8 != -1)
          {
            swift_once();
          }

          v178 = type metadata accessor for Logger();
          sub_10000A6F0(v178, qword_1005DFF18);
          sub_100166288(v152, (v1 + 211));
          v179 = Logger.logObject.getter();
          v180 = static os_log_type_t.error.getter();
          sub_1001662C0(v152);
          if (os_log_type_enabled(v179, v180))
          {
            v181 = swift_slowAlloc();
            v182 = swift_slowAlloc();
            v578[0] = v182;
            *v181 = 136315138;
            v183 = *(v152 + 112);
            *(v502 + 6) = *(v152 + 96);
            *(v502 + 7) = v183;
            *(v502 + 8) = *(v152 + 128);
            *(v502 + 143) = *(v152 + 143);
            v184 = *(v152 + 48);
            *(v502 + 2) = *(v152 + 32);
            *(v502 + 3) = v184;
            v185 = *(v152 + 80);
            *(v502 + 4) = *(v152 + 64);
            *(v502 + 5) = v185;
            v186 = *(v152 + 16);
            *v502 = *v152;
            *(v502 + 1) = v186;
            v187 = String.init<A>(describing:)();
            v189 = sub_10000D01C(v187, v188, v578);

            *(v181 + 4) = v189;
            v190 = v180;
            v191 = v179;
LABEL_102:
            _os_log_impl(&_mh_execute_header, v191, v190, v192, v181, 0xCu);
            sub_100004984(v182);
            v1 = v575;

            goto LABEL_78;
          }
        }

        sub_1001662C0(v152);
LABEL_78:
        ++v151;
      }

      while (v151 != v150);
    }

    if (qword_1005A80B8 != -1)
    {
      swift_once();
    }

    v225 = type metadata accessor for Logger();
    sub_10000A6F0(v225, qword_1005DFF18);
    v226 = v1[619];

    v227 = Logger.logObject.getter();
    v228 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v227, v228))
    {
      v565 = v7;
      v229 = swift_slowAlloc();
      v230 = swift_slowAlloc();
      v231 = v230;
      v577 = v230;
      *v229 = 136315138;
      v232 = *(v226 + 16);
      if (v232)
      {
        v492 = v230;
        v496 = v229;
        v503 = v228;
        v511 = v227;
        v233 = v575[640];
        v234 = v575[633];
        v578[0] = _swiftEmptyArrayStorage;
        sub_10002B3C0(0, v232, 0);
        v235 = v578[0];
        v236 = *(v233 + 16);
        v233 += 16;
        v237 = v226 + ((*(v233 + 64) + 32) & ~*(v233 + 64));
        v549 = *(v233 + 56);
        v556 = v236;
        v537 = (v234 + 8);
        v519 = v226;
        v528 = (v233 - 8);
        do
        {
          v238 = v575[644];
          v239 = v575[639];
          v240 = v575[638];
          v241 = v575[632];
          v556(v238, v237, v239);
          Friend.handle.getter();
          v242 = Handle.identifier.getter();
          v244 = v243;
          (*v537)(v240, v241);
          (*v528)(v238, v239);
          v578[0] = v235;
          v246 = *(v235 + 16);
          v245 = *(v235 + 24);
          if (v246 >= v245 >> 1)
          {
            sub_10002B3C0((v245 > 1), v246 + 1, 1);
            v235 = v578[0];
          }

          *(v235 + 16) = v246 + 1;
          v247 = v235 + 16 * v246;
          *(v247 + 32) = v242;
          *(v247 + 40) = v244;
          v237 += v549;
          --v232;
        }

        while (v232);
        v227 = v511;
        v226 = v519;
        v228 = v503;
        v231 = v492;
        v229 = v496;
      }

      v248 = Array.description.getter();
      v250 = v249;

      v251 = sub_10000D01C(v248, v250, &v577);

      *(v229 + 4) = v251;
      _os_log_impl(&_mh_execute_header, v227, v228, "Server response with following: %s", v229, 0xCu);
      sub_100004984(v231);

      v1 = v575;
      v7 = v565;
    }

    else
    {
    }

    sub_10024949C(v226);
  }

  v457 = v1 + 4634;
  v1[656] = v7;
  v252 = v1[622];
  v253 = v252[25];
  if (!v253)
  {
    goto LABEL_176;
  }

  v449 = *(v253 + 16);
  if (v449)
  {
    v254 = 0;
    v255 = v1 + 570;
    v256 = v1[646];
    v257 = v1[633];
    v447 = v253 + 32;
    v445 = enum case for HandleType.futureFollower(_:);
    v443 = (v256 + 104);
    v467 = (v257 + 16);
    v464 = (v256 + 16);
    v437 = enum case for ClientOrigin.messagesApp(_:);
    v435 = enum case for ClientOrigin.other(_:);
    v460 = (v257 + 56);
    v462 = (v1[625] + 104);
    v483 = v1[640];
    v458 = (v257 + 8);
    v441 = (v256 + 8);
    v258 = _swiftEmptyArrayStorage;
    v439 = (v1 + 570);
    while (1)
    {
      v259 = (v447 + 96 * v254);
      v260 = v259[2];
      v261 = v259[3];
      v262 = v259[4];
      v255[5] = v259[5];
      v263 = *v259;
      v264 = v259[1];
      v255[3] = v261;
      v255[4] = v262;
      v255[1] = v264;
      v255[2] = v260;
      *v255 = v263;
      v265 = v1[580];
      v266 = v1[572];
      v267 = v1[573];
      sub_10004B564(&qword_1005AFA60, &unk_1004CE390);
      v7 = swift_allocObject();
      *(v7 + 1) = xmmword_1004C1900;
      v7[4] = v266;
      v7[5] = v267;
      if (v265)
      {
        if (v265[2])
        {
          sub_1001661CC(v255, (v1 + 546));

          v7 = v265;
          goto LABEL_142;
        }

        v268 = 534;
      }

      else
      {
        v268 = 558;
      }

      sub_1001661CC(v255, &v1[v268]);

LABEL_142:
      (*v443)(v1[650], v445, v1[645]);
      v269 = v7[2];
      if (v269)
      {
        v451 = v254;
        v453 = v258;
        v578[0] = _swiftEmptyArrayStorage;
        sub_100239354(0, v269, 0);
        v270 = v578[0];
        v475 = v1[571];
        v479 = v1[570];
        v271 = v1[578];
        v272 = v437;
        if ((*v457 & 1) == 0)
        {
          v272 = v435;
        }

        v471 = v272;
        v273 = v7 + 5;
        do
        {
          v573 = v269;
          v557 = v1[653];
          v490 = v1[649];
          v492 = v1[645];
          v497 = v1[650];
          v566 = v1[643];
          v274 = v1[637];
          v275 = v1[636];
          v7 = v1[632];
          v276 = v1[631];
          v512 = v1[630];
          v529 = v1[627];
          v538 = v1[624];
          v277 = *(v273 - 1);
          v550 = *v273;
          swift_bridgeObjectRetain_n();

          Handle.init(withID:serverID:pushIdentifiers:expiresByGroupId:siblingIdentifiers:favoriteOrder:)();
          (*v467)(v275, v274, v7);
          (*v464)(v490, v497, v492);
          v278 = type metadata accessor for Date();
          v279 = *(*(v278 - 8) + 56);
          v279(v276, 1, 1, v278);
          Date.init(timeIntervalSince1970:)();
          v279(v512, 0, 1, v278);
          (*v462)(v529, v471, v538);
          (*v460)(v557, 1, 1, v7);
          Friend.init(handle:type:expiry:createdAt:origin:secureLocationsCapable:shallowOrLiveSecureLocationsCapable:fallbackToLegacyAllowed:fallbackToLegacy:optedNotToShare:ownerHandle:)();
          (*v458)(v274, v7);

          v578[0] = v270;
          v281 = v270[2];
          v280 = v270[3];
          if (v281 >= v280 >> 1)
          {
            sub_100239354(v280 > 1, v281 + 1, 1);
            v270 = v578[0];
          }

          v1 = v575;
          v282 = v575[643];
          v283 = v575[639];
          v270[2] = v281 + 1;
          (*(v483 + 32))(v270 + ((*(v483 + 80) + 32) & ~*(v483 + 80)) + *(v483 + 72) * v281, v282, v283);
          v273 += 2;
          --v269;
        }

        while (v573 != 1);
        v255 = v439;
        sub_100166204(v439);

        v254 = v451;
        v258 = v453;
      }

      else
      {
        sub_100166204(v255);

        v270 = _swiftEmptyArrayStorage;
      }

      (*v441)(v1[650], v1[645]);
      v284 = v270[2];
      v285 = v258[2];
      v286 = v285 + v284;
      if (__OFADD__(v285, v284))
      {
        __break(1u);
LABEL_243:
        __break(1u);
LABEL_244:
        __break(1u);
LABEL_245:
        __break(1u);
LABEL_246:
        __break(1u);
LABEL_247:
        __break(1u);
LABEL_248:
        __break(1u);
LABEL_249:
        __break(1u);
LABEL_250:
        __break(1u);
LABEL_251:
        __break(1u);
LABEL_252:
        swift_once();
LABEL_64:
        v123 = type metadata accessor for Logger();
        sub_10000A6F0(v123, qword_1005DFF18);
        v124 = v576;

        v125 = Logger.logObject.getter();
        v126 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v125, v126))
        {
          v563 = v7;
          v127 = swift_slowAlloc();
          v128 = swift_slowAlloc();
          v129 = v128;
          v577 = v128;
          *v127 = 136315138;
          v130 = v576[2];
          if (v130)
          {
            v488 = v128;
            v494 = v127;
            v501 = v126;
            v509 = v125;
            v131 = v575[640];
            v132 = v575[633];
            v578[0] = _swiftEmptyArrayStorage;
            sub_10002B3C0(0, v130, 0);
            v133 = v578[0];
            v134 = *(v131 + 16);
            v131 += 16;
            v135 = v576 + ((*(v131 + 64) + 32) & ~*(v131 + 64));
            v545 = *(v131 + 56);
            v555 = v134;
            v535 = (v132 + 8);
            v525 = (v131 - 8);
            do
            {
              v136 = v575[644];
              v137 = v575[639];
              v138 = v575[638];
              v139 = v575[632];
              v555(v136, v135, v137);
              Friend.handle.getter();
              v140 = Handle.identifier.getter();
              v142 = v141;
              (*v535)(v138, v139);
              (*v525)(v136, v137);
              v578[0] = v133;
              v144 = *(v133 + 16);
              v143 = *(v133 + 24);
              if (v144 >= v143 >> 1)
              {
                sub_10002B3C0((v143 > 1), v144 + 1, 1);
                v133 = v578[0];
              }

              *(v133 + 16) = v144 + 1;
              v145 = v133 + 16 * v144;
              *(v145 + 32) = v140;
              *(v145 + 40) = v142;
              v135 = v545 + v135;
              --v130;
            }

            while (v130);
            v125 = v509;
            v124 = v576;
            v126 = v501;
            v127 = v494;
            v129 = v488;
          }

          v146 = Array.description.getter();
          v148 = v147;

          v149 = sub_10000D01C(v146, v148, &v577);

          *(v127 + 4) = v149;
          _os_log_impl(&_mh_execute_header, v125, v126, "Server response with follower: %s", v127, 0xCu);
          sub_100004984(v129);

          v1 = v575;
          v7 = v563;
        }

        else
        {
        }

        sub_10024949C(v124);
        goto LABEL_74;
      }

      v287 = swift_isUniquelyReferenced_nonNull_native();
      if ((v287 & 1) != 0 && v286 <= v258[3] >> 1)
      {
        if (v270[2])
        {
          goto LABEL_160;
        }
      }

      else
      {
        if (v285 <= v286)
        {
          v288 = v285 + v284;
        }

        else
        {
          v288 = v285;
        }

        v258 = sub_1001FCB80(v287, v288, 1, v258);
        if (v270[2])
        {
LABEL_160:
          if ((v258[3] >> 1) - v258[2] < v284)
          {
            goto LABEL_246;
          }

          v289 = v1[639];
          v290 = (*(v483 + 80) + 32) & ~*(v483 + 80);
          v291 = *(v483 + 72);
          swift_arrayInitWithCopy();

          if (v284)
          {
            v292 = v258[2];
            v293 = __OFADD__(v292, v284);
            v294 = v292 + v284;
            if (v293)
            {
              goto LABEL_248;
            }

            v258[2] = v294;
          }

          goto LABEL_135;
        }
      }

      if (v284)
      {
        goto LABEL_243;
      }

LABEL_135:
      if (++v254 == v449)
      {
        goto LABEL_165;
      }
    }
  }

  v258 = _swiftEmptyArrayStorage;
LABEL_165:
  if (qword_1005A80B8 != -1)
  {
    swift_once();
  }

  v295 = type metadata accessor for Logger();
  sub_10000A6F0(v295, qword_1005DFF18);

  v296 = Logger.logObject.getter();
  v297 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v296, v297))
  {
    v298 = swift_slowAlloc();
    v299 = swift_slowAlloc();
    v300 = v299;
    v577 = v299;
    *v298 = 136315138;
    v301 = v258[2];
    if (v301)
    {
      v504 = v299;
      v513 = v298;
      v520 = v297;
      v530 = v296;
      v302 = v1[640];
      v303 = v1[633];
      v578[0] = _swiftEmptyArrayStorage;
      sub_10002B3C0(0, v301, 0);
      v304 = v578[0];
      v305 = *(v302 + 16);
      v302 += 16;
      v567 = v305;
      v454 = v258;
      v306 = v258 + ((*(v302 + 64) + 32) & ~*(v302 + 64));
      v551 = (v303 + 8);
      v558 = *(v302 + 56);
      v539 = (v302 - 8);
      do
      {
        v307 = v1[644];
        v308 = v1[639];
        v309 = v1[638];
        v310 = v1[632];
        v567(v307, v306, v308);
        Friend.handle.getter();
        v311 = Handle.identifier.getter();
        v313 = v312;
        (*v551)(v309, v310);
        (*v539)(v307, v308);
        v578[0] = v304;
        v315 = *(v304 + 16);
        v314 = *(v304 + 24);
        if (v315 >= v314 >> 1)
        {
          sub_10002B3C0((v314 > 1), v315 + 1, 1);
          v304 = v578[0];
        }

        *(v304 + 16) = v315 + 1;
        v316 = v304 + 16 * v315;
        *(v316 + 32) = v311;
        *(v316 + 40) = v313;
        v306 += v558;
        --v301;
        v1 = v575;
      }

      while (v301);
      v258 = v454;
      v296 = v530;
      v297 = v520;
      v298 = v513;
      v300 = v504;
    }

    v317 = Array.description.getter();
    v319 = v318;

    v320 = sub_10000D01C(v317, v319, &v577);

    *(v298 + 4) = v320;
    _os_log_impl(&_mh_execute_header, v296, v297, "Server response with futureFollowers: %s", v298, 0xCu);
    sub_100004984(v300);
  }

  sub_10024949C(v258);
  v252 = v1[622];
LABEL_176:
  v321 = v252[26];
  if (v321)
  {
    v450 = *(v321 + 16);
    if (v450)
    {
      v322 = 0;
      v323 = v1 + 606;
      v324 = v1[646];
      v325 = v1[633];
      v448 = v321 + 32;
      v446 = enum case for HandleType.futureFollowing(_:);
      v444 = (v324 + 104);
      v468 = (v325 + 16);
      v465 = (v324 + 16);
      v438 = enum case for ClientOrigin.messagesApp(_:);
      v436 = enum case for ClientOrigin.other(_:);
      v461 = (v325 + 56);
      v463 = (v1[625] + 104);
      v484 = v1[640];
      v459 = (v325 + 8);
      v442 = (v324 + 8);
      v326 = _swiftEmptyArrayStorage;
      v440 = (v1 + 606);
      while (1)
      {
        v327 = (v448 + 96 * v322);
        v328 = v327[2];
        v329 = v327[3];
        v330 = v327[5];
        v323[4] = v327[4];
        v323[5] = v330;
        v323[2] = v328;
        v323[3] = v329;
        v331 = v327[1];
        *v323 = *v327;
        v323[1] = v331;
        v332 = v1[617];
        v333 = v1[610];
        v334 = v1[611];
        sub_10004B564(&qword_1005AFA60, &unk_1004CE390);
        v7 = swift_allocObject();
        *(v7 + 1) = xmmword_1004C1900;
        v7[4] = v333;
        v7[5] = v334;
        if (v332)
        {
          if (v332[2])
          {
            sub_1001661CC(v323, (v1 + 522));

            v7 = v332;
            goto LABEL_187;
          }

          v335 = 582;
        }

        else
        {
          v335 = 594;
        }

        sub_1001661CC(v323, &v1[v335]);

LABEL_187:
        (*v444)(v1[648], v446, v1[645]);
        v336 = v7[2];
        if (v336)
        {
          v452 = v322;
          v455 = v326;
          v578[0] = _swiftEmptyArrayStorage;
          sub_100239354(0, v336, 0);
          v337 = v578[0];
          v476 = v1[607];
          v480 = v1[606];
          v338 = v1[614];
          v339 = v438;
          if ((v457[288] & 1) == 0)
          {
            v339 = v436;
          }

          v472 = v339;
          v340 = v7 + 5;
          do
          {
            v574 = v336;
            v559 = v1[653];
            v491 = v1[647];
            v492 = v1[645];
            v498 = v1[648];
            v568 = v1[642];
            v341 = v1[635];
            v342 = v1[634];
            v7 = v1[632];
            v343 = v1[629];
            v514 = v1[628];
            v531 = v1[626];
            v540 = v1[624];
            v344 = *(v340 - 1);
            v552 = *v340;
            swift_bridgeObjectRetain_n();

            Handle.init(withID:serverID:pushIdentifiers:expiresByGroupId:siblingIdentifiers:favoriteOrder:)();
            (*v468)(v342, v341, v7);
            (*v465)(v491, v498, v492);
            v345 = type metadata accessor for Date();
            v346 = *(*(v345 - 8) + 56);
            v346(v343, 1, 1, v345);
            Date.init(timeIntervalSince1970:)();
            v346(v514, 0, 1, v345);
            (*v463)(v531, v472, v540);
            (*v461)(v559, 1, 1, v7);
            Friend.init(handle:type:expiry:createdAt:origin:secureLocationsCapable:shallowOrLiveSecureLocationsCapable:fallbackToLegacyAllowed:fallbackToLegacy:optedNotToShare:ownerHandle:)();
            (*v459)(v341, v7);

            v578[0] = v337;
            v348 = v337[2];
            v347 = v337[3];
            if (v348 >= v347 >> 1)
            {
              sub_100239354(v347 > 1, v348 + 1, 1);
              v337 = v578[0];
            }

            v1 = v575;
            v349 = v575[642];
            v350 = v575[639];
            v337[2] = v348 + 1;
            (*(v484 + 32))(v337 + ((*(v484 + 80) + 32) & ~*(v484 + 80)) + *(v484 + 72) * v348, v349, v350);
            v340 += 2;
            --v336;
          }

          while (v574 != 1);
          v323 = v440;
          sub_100166204(v440);

          v322 = v452;
          v326 = v455;
        }

        else
        {
          sub_100166204(v323);

          v337 = _swiftEmptyArrayStorage;
        }

        (*v442)(v1[648], v1[645]);
        v351 = v337[2];
        v352 = v326[2];
        v353 = v352 + v351;
        if (__OFADD__(v352, v351))
        {
          goto LABEL_244;
        }

        v354 = swift_isUniquelyReferenced_nonNull_native();
        if ((v354 & 1) != 0 && v353 <= v326[3] >> 1)
        {
          if (!v337[2])
          {
            goto LABEL_179;
          }
        }

        else
        {
          if (v352 <= v353)
          {
            v355 = v352 + v351;
          }

          else
          {
            v355 = v352;
          }

          v326 = sub_1001FCB80(v354, v355, 1, v326);
          if (!v337[2])
          {
LABEL_179:

            if (v351)
            {
              goto LABEL_245;
            }

            goto LABEL_180;
          }
        }

        if ((v326[3] >> 1) - v326[2] < v351)
        {
          goto LABEL_247;
        }

        v356 = v1[639];
        v357 = (*(v484 + 80) + 32) & ~*(v484 + 80);
        v358 = *(v484 + 72);
        swift_arrayInitWithCopy();

        if (v351)
        {
          v359 = v326[2];
          v293 = __OFADD__(v359, v351);
          v360 = v359 + v351;
          if (v293)
          {
            goto LABEL_249;
          }

          v326[2] = v360;
        }

LABEL_180:
        if (++v322 == v450)
        {
          goto LABEL_210;
        }
      }
    }

    v326 = _swiftEmptyArrayStorage;
LABEL_210:
    if (qword_1005A80B8 != -1)
    {
      swift_once();
    }

    v361 = type metadata accessor for Logger();
    sub_10000A6F0(v361, qword_1005DFF18);

    v362 = Logger.logObject.getter();
    v363 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v362, v363))
    {
      v364 = swift_slowAlloc();
      v365 = swift_slowAlloc();
      v366 = v365;
      v577 = v365;
      *v364 = 136315138;
      v367 = v326[2];
      if (v367)
      {
        v505 = v365;
        v515 = v364;
        v521 = v363;
        v532 = v362;
        v368 = v1[640];
        v369 = v1[633];
        v578[0] = _swiftEmptyArrayStorage;
        sub_10002B3C0(0, v367, 0);
        v370 = v578[0];
        v371 = *(v368 + 16);
        v368 += 16;
        v569 = v371;
        v456 = v326;
        v372 = v326 + ((*(v368 + 64) + 32) & ~*(v368 + 64));
        v553 = (v369 + 8);
        v560 = *(v368 + 56);
        v541 = (v368 - 8);
        do
        {
          v373 = v1[644];
          v374 = v1[639];
          v375 = v1[638];
          v376 = v1[632];
          v569(v373, v372, v374);
          Friend.handle.getter();
          v377 = Handle.identifier.getter();
          v379 = v378;
          (*v553)(v375, v376);
          (*v541)(v373, v374);
          v578[0] = v370;
          v381 = *(v370 + 16);
          v380 = *(v370 + 24);
          if (v381 >= v380 >> 1)
          {
            sub_10002B3C0((v380 > 1), v381 + 1, 1);
            v370 = v578[0];
          }

          *(v370 + 16) = v381 + 1;
          v382 = v370 + 16 * v381;
          *(v382 + 32) = v377;
          *(v382 + 40) = v379;
          v372 += v560;
          --v367;
          v1 = v575;
        }

        while (v367);
        v326 = v456;
        v362 = v532;
        v363 = v521;
        v364 = v515;
        v366 = v505;
      }

      v383 = Array.description.getter();
      v385 = v384;

      v386 = sub_10000D01C(v383, v385, &v577);

      *(v364 + 4) = v386;
      _os_log_impl(&_mh_execute_header, v362, v363, "Server response with futureFollowing: %s", v364, 0xCu);
      sub_100004984(v366);
    }

    sub_10024949C(v326);
    v252 = v1[622];
  }

  v387 = v252[27];
  if (v387)
  {
    v388 = *(v387 + 16);
    v389 = _swiftEmptyArrayStorage;
    if (v388)
    {
      v390 = v1[640];
      v578[0] = _swiftEmptyArrayStorage;
      sub_100239354(0, v388, 0);
      v389 = v578[0];
      v391 = (v387 + 32);
      do
      {
        v392 = v1[641];
        v393 = v391[2];
        v394 = *v391;
        *(v1 + 249) = v391[1];
        *(v1 + 250) = v393;
        v396 = v391[4];
        v395 = v391[5];
        v397 = v391[3];
        *(v1 + 4064) = *(v391 + 96);
        *(v1 + 252) = v396;
        *(v1 + 253) = v395;
        *(v1 + 251) = v397;
        *(v1 + 248) = v394;
        v398 = v1[498];
        v399 = v1[499];
        sub_100165758((v1 + 496), (v1 + 509));
        sub_10022706C(v1 + 496, v398, v399, v392);
        sub_100165790((v1 + 496));
        v578[0] = v389;
        isa = v389[2].isa;
        v400 = v389[3].isa;
        if (isa >= v400 >> 1)
        {
          sub_100239354(v400 > 1, isa + 1, 1);
          v389 = v578[0];
        }

        v402 = v1[641];
        v403 = v1[639];
        v389[2].isa = (isa + 1);
        (*(v390 + 32))(v389 + ((*(v390 + 80) + 32) & ~*(v390 + 80)) + *(v390 + 72) * isa, v402, v403);
        v391 = (v391 + 104);
        --v388;
      }

      while (v388);
    }

    if (qword_1005A80B8 != -1)
    {
      swift_once();
    }

    v404 = type metadata accessor for Logger();
    sub_10000A6F0(v404, qword_1005DFF18);

    v405 = Logger.logObject.getter();
    v406 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v405, v406))
    {
      v407 = swift_slowAlloc();
      v408 = swift_slowAlloc();
      v409 = v408;
      v577 = v408;
      *v407 = 136315138;
      v410 = v389[2].isa;
      v411 = v389;
      if (v410)
      {
        v499 = v408;
        v506 = v407;
        v516 = v406;
        v522 = v405;
        v412 = v575[640];
        v413 = v575[633];
        v578[0] = _swiftEmptyArrayStorage;
        sub_10002B3C0(0, v410, 0);
        v414 = v578[0];
        v570 = *(v412 + 16);
        v415 = v411 + ((*(v412 + 80) + 32) & ~*(v412 + 80));
        v554 = (v413 + 8);
        v561 = *(v412 + 72);
        v533 = v411;
        v542 = (v412 + 8);
        do
        {
          v416 = v575[644];
          v417 = v575[639];
          v418 = v575[638];
          v419 = v575[632];
          v570(v416, v415, v417);
          Friend.handle.getter();
          v420 = Handle.identifier.getter();
          v422 = v421;
          (*v554)(v418, v419);
          (*v542)(v416, v417);
          v578[0] = v414;
          v424 = *(v414 + 16);
          v423 = *(v414 + 24);
          if (v424 >= v423 >> 1)
          {
            sub_10002B3C0((v423 > 1), v424 + 1, 1);
            v414 = v578[0];
          }

          *(v414 + 16) = v424 + 1;
          v425 = v414 + 16 * v424;
          *(v425 + 32) = v420;
          *(v425 + 40) = v422;
          v415 += v561;
          --v410;
        }

        while (v410);
        v405 = v522;
        v411 = v533;
        v406 = v516;
        v409 = v499;
        v407 = v506;
      }

      v426 = Array.description.getter();
      v428 = v427;

      v429 = sub_10000D01C(v426, v428, &v577);

      *(v407 + 4) = v429;
      _os_log_impl(&_mh_execute_header, v405, v406, "Server response with pendingOffers: %s", v407, 0xCu);
      sub_100004984(v409);

      v1 = v575;
      v389 = v411;
    }

    else
    {
    }

    sub_10024949C(v389);
  }

  v430 = v1[620];
  v1[657] = v430;
  v431 = swift_task_alloc();
  v1[658] = v431;
  *v431 = v1;
  v431[1] = sub_100221A84;
  v432 = v1[623];
  v433 = *(v1 + 163);

  return sub_100227594(v430, v433);
}

uint64_t sub_100221A84(uint64_t a1)
{
  v2 = *(*v1 + 5264);
  v3 = *(*v1 + 5256);
  v4 = *(*v1 + 4984);
  v6 = *v1;
  *(*v1 + 5272) = a1;

  return _swift_task_switch(sub_100221BB8, v4, 0);
}

uint64_t sub_100221BB8()
{
  v42 = v0;
  if (qword_1005A7F88 != -1)
  {
    swift_once();
  }

  v1 = v0[659];
  v2 = type metadata accessor for Logger();
  sub_10000A6F0(v2, qword_1005DFC28);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[659];
    v6 = v0[656];
    v7 = v0[639];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v41 = v9;
    *v8 = 136315138;
    type metadata accessor for FriendshipAction();
    sub_1000093F8(&qword_1005AE9B0, &type metadata accessor for Friend);
    v10 = Dictionary.description.getter();
    v12 = sub_10000D01C(v10, v11, &v41);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v3, v4, "Updated friends: %s", v8, 0xCu);
    sub_100004984(v9);
  }

  else
  {
    v13 = v0[656];
  }

  v14 = v0[655];
  v15 = v0[654];
  v16 = v0[653];
  v17 = v0[652];
  v18 = v0[651];
  v19 = v0[650];
  v20 = v0[649];
  v21 = v0[648];
  v22 = v0[647];
  v23 = v0[644];
  v27 = v0[643];
  v28 = v0[642];
  v29 = v0[641];
  v30 = v0[638];
  v31 = v0[637];
  v32 = v0[636];
  v33 = v0[635];
  v34 = v0[634];
  v35 = v0[631];
  v36 = v0[630];
  v37 = v0[629];
  v38 = v0[628];
  v39 = v0[627];
  v40 = v0[626];

  v24 = v0[1];
  v25 = v0[659];

  return v24(v25);
}

uint64_t sub_100221EF8(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_10004B564(&qword_1005B0500, &qword_1004D1E30);
  v3[5] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[6] = swift_task_alloc();
  v3[7] = swift_task_alloc();
  v6 = type metadata accessor for AppNotificationEvent();
  v3[8] = v6;
  v7 = *(v6 - 8);
  v3[9] = v7;
  v8 = *(v7 + 64) + 15;
  v3[10] = swift_task_alloc();
  v9 = type metadata accessor for AppNotificationEvent.EventType();
  v3[11] = v9;
  v10 = *(v9 - 8);
  v3[12] = v10;
  v11 = *(v10 + 64) + 15;
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  v12 = type metadata accessor for Handle();
  v3[20] = v12;
  v13 = *(v12 - 8);
  v3[21] = v13;
  v14 = *(v13 + 64) + 15;
  v3[22] = swift_task_alloc();
  v15 = type metadata accessor for FriendshipAction();
  v3[23] = v15;
  v16 = *(v15 - 8);
  v3[24] = v16;
  v17 = *(v16 + 64) + 15;
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();
  v18 = type metadata accessor for Friend();
  v3[29] = v18;
  v19 = *(v18 - 8);
  v3[30] = v19;
  v20 = *(v19 + 64) + 15;
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();
  v3[33] = swift_task_alloc();
  v21 = *(*(sub_10004B564(&qword_1005AFFF8, &unk_1004D2ED0) - 8) + 64) + 15;
  v3[34] = swift_task_alloc();
  v3[35] = swift_task_alloc();
  v22 = _s12PersonEntityVMa();
  v3[36] = v22;
  v23 = async function pointer to static AppEntity.isObserved()[1];
  v24 = swift_task_alloc();
  v3[37] = v24;
  v25 = sub_1000093F8(&qword_1005A8D58, _s12PersonEntityVMa);
  v3[38] = v25;
  *v24 = v3;
  v24[1] = sub_1002222C0;

  return static AppEntity.isObserved()(v22, v25);
}

uint64_t sub_1002222C0(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 296);
  v6 = *v2;
  *(v4 + 312) = v1;

  v7 = *(v4 + 32);
  if (v1)
  {
    v8 = sub_100224A44;
  }

  else
  {
    *(v4 + 376) = a1 & 1;
    v8 = sub_100222400;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_100222400()
{
  v31 = v0;
  if (*(v0 + 376))
  {
    v1 = async function pointer to daemon.getter[1];
    v2 = swift_task_alloc();
    *(v0 + 320) = v2;
    *v2 = v0;
    v2[1] = sub_100222710;

    return daemon.getter();
  }

  else
  {
    if (qword_1005A7EA8 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_10000A6F0(v3, qword_1005DFAB8);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v30 = v7;
      *v6 = 136446210;
      *(v6 + 4) = sub_10000D01C(0xD00000000000003FLL, 0x80000001004E5910, &v30);
      _os_log_impl(&_mh_execute_header, v4, v5, "%{public}s: Won't publish - PersonEntity is not observed", v6, 0xCu);
      sub_100004984(v7);
    }

    v9 = *(v0 + 272);
    v8 = *(v0 + 280);
    v11 = *(v0 + 256);
    v10 = *(v0 + 264);
    v12 = *(v0 + 248);
    v13 = *(v0 + 216);
    v14 = *(v0 + 224);
    v16 = *(v0 + 200);
    v15 = *(v0 + 208);
    v19 = *(v0 + 176);
    v20 = *(v0 + 152);
    v21 = *(v0 + 144);
    v22 = *(v0 + 136);
    v23 = *(v0 + 128);
    v24 = *(v0 + 120);
    v25 = *(v0 + 112);
    v26 = *(v0 + 104);
    v27 = *(v0 + 80);
    v28 = *(v0 + 56);
    v29 = *(v0 + 48);
    sub_100037FC8(0);
    sub_100037FC8(0);
    sub_100037FC8(0);

    v17 = *(v0 + 8);

    return v17();
  }
}

uint64_t sub_100222710(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 320);
  v12 = *v1;
  *(v3 + 328) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 336) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for DataManager(0);
  v9 = sub_1000093F8(&unk_1005AFA50, &type metadata accessor for Daemon);
  v10 = sub_1000093F8(&qword_1005A90D0, type metadata accessor for DataManager);
  *v6 = v12;
  v6[1] = sub_1002228EC;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_1002228EC(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 336);
  v5 = *v2;
  *(*v2 + 344) = a1;

  v6 = *(v3 + 328);
  v7 = *(v3 + 32);
  if (v1)
  {

    v8 = sub_1002247B4;
  }

  else
  {

    v8 = sub_100222A50;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_100222A50()
{
  sub_10022AFA0(v0[2]);
  v0[44] = v1;
  v2 = swift_task_alloc();
  v0[45] = v2;
  *v2 = v0;
  v2[1] = sub_100222AEC;
  v3 = v0[43];

  return sub_100008CC0();
}

uint64_t sub_100222AEC(uint64_t a1)
{
  v2 = *(*v1 + 360);
  v3 = *(*v1 + 32);
  v5 = *v1;
  *(*v1 + 368) = a1;

  return _swift_task_switch(sub_100222C04, v3, 0);
}

uint64_t sub_100222C04()
{
  v302 = v0;
  v1 = v0[46];
  v2 = v0[30];
  v3 = v0[24];
  v4 = v0[21];
  v5 = v0[12];
  v6 = v0[3];
  sub_10022AFA0(v1);
  v252 = v7;

  v259 = sub_100209B48(_swiftEmptyArrayStorage);
  v257 = v6 + 64;
  v8 = -1;
  v9 = -1 << *(v6 + 32);
  if (-v9 < 64)
  {
    v8 = ~(-1 << -v9);
  }

  v10 = v8 & *(v6 + 64);
  v11 = (63 - v9) >> 6;
  v287 = (v2 + 16);
  v263 = (v3 + 16);
  v289 = (v3 + 32);
  v292 = (v2 + 32);
  v279 = (v4 + 8);
  v262 = v2;
  v277 = (v2 + 8);
  v281 = (v3 + 8);
  v261 = v3;
  v250 = (v3 + 88);
  v249 = enum case for FriendshipAction.add(_:);
  v245 = enum case for FriendshipAction.remove(_:);
  v244 = enum case for FriendshipAction.modify(_:);
  v242 = enum case for FriendshipAction.offer(_:);
  v241 = enum case for FriendshipAction.invite(_:);
  v243 = enum case for AppNotificationEvent.EventType.updated(_:);
  v251 = (v5 + 104);
  v258 = (v5 + 16);
  v248 = (v5 + 8);
  v239 = enum case for AppNotificationEvent.EventType.deleted(_:);
  v240 = enum case for AppNotificationEvent.EventType.created(_:);
  v260 = v6;

  v246 = 0;
  v247 = 0;
  v254 = 0;
  v255 = 0;
  v253 = 0;
  v256 = 0;
  v12 = 0;
  v284 = v11;
LABEL_4:
  v13 = v12;
  for (i = v300; ; i = v300)
  {
    if (!v10)
    {
      if (v11 <= v13 + 1)
      {
        v17 = v13 + 1;
      }

      else
      {
        v17 = v11;
      }

      v18 = v17 - 1;
      while (1)
      {
        v16 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v16 >= v11)
        {
          v58 = i[34];
          v59 = sub_10004B564(&qword_1005AFFE0, &qword_1004D6060);
          (*(*(v59 - 8) + 56))(v58, 1, 1, v59);
          v297 = 0;
          goto LABEL_17;
        }

        v10 = *(v257 + 8 * v16);
        ++v13;
        if (v10)
        {
          goto LABEL_16;
        }
      }

      __break(1u);
      goto LABEL_136;
    }

    v16 = v13;
LABEL_16:
    v19 = i[33];
    v20 = i[34];
    v22 = i[28];
    v21 = i[29];
    v23 = i[23];
    v297 = (v10 - 1) & v10;
    v24 = __clz(__rbit64(v10)) | (v16 << 6);
    (*(v262 + 16))(v19, *(v260 + 48) + *(v262 + 72) * v24, v21);
    (*(v261 + 16))(v22, *(v260 + 56) + *(v261 + 72) * v24, v23);
    v25 = sub_10004B564(&qword_1005AFFE0, &qword_1004D6060);
    v26 = *(v25 + 48);
    (*(v262 + 32))(v20, v19, v21);
    i = v300;
    (*(v261 + 32))(v20 + v26, v22, v23);
    (*(*(v25 - 8) + 56))(v20, 0, 1, v25);
    v18 = v16;
    v11 = v284;
LABEL_17:
    v27 = i[35];
    sub_1000176A8(i[34], v27, &qword_1005AFFF8, &unk_1004D2ED0);
    v28 = sub_10004B564(&qword_1005AFFE0, &qword_1004D6060);
    if ((*(*(v28 - 8) + 48))(v27, 1, v28) == 1)
    {
      break;
    }

    v295 = v18;
    v29 = i[35];
    v30 = i[32];
    v31 = i[29];
    v32 = i[27];
    v34 = i[22];
    v33 = i[23];
    v35 = i[20];
    v36 = *(v28 + 48);
    (*v292)(v30, v29, v31);
    (*v289)(v32, v29 + v36, v33);
    Friend.handle.getter();
    v37 = Handle.serverID.getter();
    v39 = v38;
    (*v279)(v34, v35);
    if (v39)
    {
      i = v300;
      v60 = v300[26];
      v61 = v300[23];
      v62 = *v263;
      (*v263)(v60, v300[27], v61);
      v63 = (*v250)(v60, v61);
      if (v63 == v249)
      {
        goto LABEL_44;
      }

      if (v63 != v245)
      {
        if (v63 != v244)
        {
          if (v63 != v242 && v63 != v241)
          {
            if (qword_1005A7EA8 != -1)
            {
              swift_once();
            }

            v64 = v300[27];
            v65 = v300[25];
            v66 = v300[23];
            v67 = type metadata accessor for Logger();
            sub_10000A6F0(v67, qword_1005DFAB8);
            v62(v65, v64, v66);
            v68 = Logger.logObject.getter();
            v69 = static os_log_type_t.error.getter();
            v70 = os_log_type_enabled(v68, v69);
            v71 = v300[25];
            v72 = v300[23];
            if (v70)
            {
              v73 = swift_slowAlloc();
              v301[0] = swift_slowAlloc();
              *v73 = 136446466;
              *(v73 + 4) = sub_10000D01C(0xD00000000000003FLL, 0x80000001004E5910, v301);
              *(v73 + 12) = 2080;
              sub_1000093F8(&qword_1005B0000, &type metadata accessor for FriendshipAction);
              v74 = dispatch thunk of CustomStringConvertible.description.getter();
              v76 = v75;
              v269 = *v281;
              (*v281)(v71, v72);
              v77 = sub_10000D01C(v74, v76, v301);

              *(v73 + 14) = v77;
              _os_log_impl(&_mh_execute_header, v68, v69, "%{public}s: Got unexpected action: %s", v73, 0x16u);
              swift_arrayDestroy();
            }

            else
            {

              v269 = *v281;
              (*v281)(v71, v72);
            }

            i = v300;
            v78 = v300[13];
            (*v251)(v78, v243, v300[11]);
            sub_100037FC8(v256);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v301[0] = v259;
            v81 = sub_1001FDCFC(v78);
            v82 = *(v259 + 16);
            v83 = (v80 & 1) == 0;
            result = v82 + v83;
            if (!__OFADD__(v82, v83))
            {
              v85 = v80;
              if (*(v259 + 24) >= result)
              {
                if (isUniquelyReferenced_nonNull_native)
                {
                  if (v80)
                  {
LABEL_42:
                    v265 = v300[32];
                    v90 = v300[29];
                    v91 = v300[27];
                    v267 = v300[26];
                    v92 = v300[23];
                    v93 = v300[13];
                    v94 = v300[11];
                    v95 = *(v259 + 56) + 8 * v81;
                    sub_1002345CC(v301, v37, v39);
                    (*v248)(v93, v94);

                    v269(v91, v92);
                    (*v277)(v265, v90);
                    v269(v267, v92);
                    v256 = sub_100241534;
LABEL_43:
                    v12 = v295;
                    v10 = v297;
                    goto LABEL_4;
                  }
                }

                else
                {
                  sub_10020474C();
                  v259 = v301[0];
                  if (v85)
                  {
                    goto LABEL_42;
                  }
                }

LABEL_41:
                v89 = v300[18];
                (*v258)(v89, v300[13], v300[11]);
                sub_1002342A8(v81, v89, &_swiftEmptySetSingleton, v259, &type metadata accessor for AppNotificationEvent.EventType);
                goto LABEL_42;
              }

              v86 = v300[13];
              sub_100230164(result, isUniquelyReferenced_nonNull_native);
              v259 = v301[0];
              v87 = sub_1001FDCFC(v86);
              if ((v85 & 1) == (v88 & 1))
              {
                v81 = v87;
                if (v85)
                {
                  goto LABEL_42;
                }

                goto LABEL_41;
              }

LABEL_136:
              v238 = i[11];

              return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
            }

            __break(1u);
LABEL_148:
            __break(1u);
LABEL_149:
            __break(1u);
LABEL_150:
            __break(1u);
LABEL_151:
            __break(1u);
LABEL_152:
            __break(1u);
            return result;
          }

LABEL_44:
          v96 = sub_10021B304(v37, v39, v300[44]);
          v97 = v300[11];
          if ((v96 & 1) == 0)
          {
            v98 = v300[17];
            (*v251)(v98, v240, v97);
            sub_100037FC8(v255);
            v99 = swift_isUniquelyReferenced_nonNull_native();
            v301[0] = v259;
            v101 = sub_1001FDCFC(v98);
            v102 = *(v259 + 16);
            v103 = (v100 & 1) == 0;
            result = v102 + v103;
            if (__OFADD__(v102, v103))
            {
              goto LABEL_148;
            }

            v104 = v100;
            if (*(v259 + 24) >= result)
            {
              if (v99)
              {
                if (v100)
                {
                  goto LABEL_64;
                }
              }

              else
              {
                sub_10020474C();
                v259 = v301[0];
                if (v104)
                {
                  goto LABEL_64;
                }
              }
            }

            else
            {
              v105 = v300[17];
              sub_100230164(result, v99);
              v259 = v301[0];
              v106 = sub_1001FDCFC(v105);
              if ((v104 & 1) != (v107 & 1))
              {
                goto LABEL_136;
              }

              v101 = v106;
              if (v104)
              {
LABEL_64:
                v270 = v300[32];
                v131 = v300[29];
                v132 = v300[27];
                v133 = v300[23];
                v134 = v300[17];
                v135 = v300[11];
                v136 = *(v259 + 56) + 8 * v101;
                sub_1002345CC(v301, v37, v39);
                (*v248)(v134, v135);

                (*v281)(v132, v133);
                (*v277)(v270, v131);
                v255 = sub_100241534;
                goto LABEL_43;
              }
            }

            v130 = v300[18];
            (*v258)(v130, v300[17], v300[11]);
            sub_1002342A8(v101, v130, &_swiftEmptySetSingleton, v259, &type metadata accessor for AppNotificationEvent.EventType);
            goto LABEL_64;
          }

          v151 = v300[19];
          (*v251)(v151, v243, v97);
          sub_100037FC8(v247);
          v152 = swift_isUniquelyReferenced_nonNull_native();
          v301[0] = v259;
          v154 = sub_1001FDCFC(v151);
          v155 = *(v259 + 16);
          v156 = (v153 & 1) == 0;
          result = v155 + v156;
          if (__OFADD__(v155, v156))
          {
            goto LABEL_151;
          }

          v157 = v153;
          if (*(v259 + 24) >= result)
          {
            if (v152)
            {
              if (v153)
              {
                goto LABEL_86;
              }
            }

            else
            {
              sub_10020474C();
              v259 = v301[0];
              if (v157)
              {
                goto LABEL_86;
              }
            }
          }

          else
          {
            v158 = v300[19];
            sub_100230164(result, v152);
            v259 = v301[0];
            v159 = sub_1001FDCFC(v158);
            if ((v157 & 1) != (v160 & 1))
            {
              goto LABEL_136;
            }

            v154 = v159;
            if (v157)
            {
LABEL_86:
              v273 = v300[32];
              v172 = v300[29];
              v173 = v300[27];
              v174 = v300[23];
              v175 = v300[19];
              v176 = v300[11];
              v177 = *(v259 + 56) + 8 * v154;
              sub_1002345CC(v301, v37, v39);
              (*v248)(v175, v176);

              (*v281)(v173, v174);
              (*v277)(v273, v172);
              v247 = sub_100241534;
              goto LABEL_43;
            }
          }

          v171 = v300[18];
          (*v258)(v171, v300[19], v300[11]);
          sub_1002342A8(v154, v171, &_swiftEmptySetSingleton, v259, &type metadata accessor for AppNotificationEvent.EventType);
          goto LABEL_86;
        }

        v120 = v300[16];
        (*v251)(v120, v243, v300[11]);
        sub_100037FC8(v253);
        v121 = swift_isUniquelyReferenced_nonNull_native();
        v301[0] = v259;
        v123 = sub_1001FDCFC(v120);
        v124 = *(v259 + 16);
        v125 = (v122 & 1) == 0;
        result = v124 + v125;
        if (__OFADD__(v124, v125))
        {
          goto LABEL_149;
        }

        v126 = v122;
        if (*(v259 + 24) >= result)
        {
          if (v121)
          {
            if (v122)
            {
              goto LABEL_72;
            }
          }

          else
          {
            sub_10020474C();
            v259 = v301[0];
            if (v126)
            {
              goto LABEL_72;
            }
          }
        }

        else
        {
          v127 = v300[16];
          sub_100230164(result, v121);
          v259 = v301[0];
          v128 = sub_1001FDCFC(v127);
          if ((v126 & 1) != (v129 & 1))
          {
            goto LABEL_136;
          }

          v123 = v128;
          if (v126)
          {
LABEL_72:
            v272 = v300[32];
            v145 = v300[29];
            v146 = v300[27];
            v147 = v300[23];
            v148 = v300[16];
            v149 = v300[11];
            v150 = *(v259 + 56) + 8 * v123;
            sub_1002345CC(v301, v37, v39);
            (*v248)(v148, v149);

            (*v281)(v146, v147);
            (*v277)(v272, v145);
            v253 = sub_100241534;
            goto LABEL_43;
          }
        }

        v144 = v300[18];
        (*v258)(v144, v300[16], v300[11]);
        sub_1002342A8(v123, v144, &_swiftEmptySetSingleton, v259, &type metadata accessor for AppNotificationEvent.EventType);
        goto LABEL_72;
      }

      v108 = sub_10021B304(v37, v39, v252);
      v109 = v300[11];
      if ((v108 & 1) == 0)
      {
        v110 = v300[14];
        (*v251)(v110, v239, v109);
        sub_100037FC8(v254);
        v111 = swift_isUniquelyReferenced_nonNull_native();
        v301[0] = v259;
        v113 = sub_1001FDCFC(v110);
        v114 = *(v259 + 16);
        v115 = (v112 & 1) == 0;
        result = v114 + v115;
        if (__OFADD__(v114, v115))
        {
          goto LABEL_150;
        }

        v116 = v112;
        if (*(v259 + 24) >= result)
        {
          if (v111)
          {
            if (v112)
            {
              goto LABEL_68;
            }
          }

          else
          {
            sub_10020474C();
            v259 = v301[0];
            if (v116)
            {
              goto LABEL_68;
            }
          }
        }

        else
        {
          v117 = v300[14];
          sub_100230164(result, v111);
          v259 = v301[0];
          v118 = sub_1001FDCFC(v117);
          if ((v116 & 1) != (v119 & 1))
          {
            goto LABEL_136;
          }

          v113 = v118;
          if (v116)
          {
LABEL_68:
            v271 = v300[32];
            v138 = v300[29];
            v139 = v300[27];
            v140 = v300[23];
            v141 = v300[14];
            v142 = v300[11];
            v143 = *(v259 + 56) + 8 * v113;
            sub_1002345CC(v301, v37, v39);
            (*v248)(v141, v142);

            (*v281)(v139, v140);
            (*v277)(v271, v138);
            v254 = sub_100241534;
            goto LABEL_43;
          }
        }

        v137 = v300[18];
        (*v258)(v137, v300[14], v300[11]);
        sub_1002342A8(v113, v137, &_swiftEmptySetSingleton, v259, &type metadata accessor for AppNotificationEvent.EventType);
        goto LABEL_68;
      }

      v161 = v300[15];
      (*v251)(v161, v243, v109);
      sub_100037FC8(v246);
      v162 = swift_isUniquelyReferenced_nonNull_native();
      v301[0] = v259;
      v164 = sub_1001FDCFC(v161);
      v165 = *(v259 + 16);
      v166 = (v163 & 1) == 0;
      result = v165 + v166;
      if (__OFADD__(v165, v166))
      {
        goto LABEL_152;
      }

      v167 = v163;
      if (*(v259 + 24) >= result)
      {
        if (v162)
        {
          if (v163)
          {
            goto LABEL_90;
          }
        }

        else
        {
          sub_10020474C();
          v259 = v301[0];
          if (v167)
          {
            goto LABEL_90;
          }
        }
      }

      else
      {
        v168 = v300[15];
        sub_100230164(result, v162);
        v259 = v301[0];
        v169 = sub_1001FDCFC(v168);
        if ((v167 & 1) != (v170 & 1))
        {
          goto LABEL_136;
        }

        v164 = v169;
        if (v167)
        {
LABEL_90:
          v274 = v300[32];
          v179 = v300[29];
          v180 = v300[27];
          v181 = v300[23];
          v182 = v300[15];
          v183 = v300[11];
          v184 = *(v259 + 56) + 8 * v164;
          sub_1002345CC(v301, v37, v39);
          (*v248)(v182, v183);

          (*v281)(v180, v181);
          (*v277)(v274, v179);
          v246 = sub_100241534;
          goto LABEL_43;
        }
      }

      v178 = v300[18];
      (*v258)(v178, v300[15], v300[11]);
      sub_1002342A8(v164, v178, &_swiftEmptySetSingleton, v259, &type metadata accessor for AppNotificationEvent.EventType);
      goto LABEL_90;
    }

    if (qword_1005A7EA8 != -1)
    {
      swift_once();
    }

    v40 = v300[31];
    v41 = v300[32];
    v42 = v300[29];
    v43 = type metadata accessor for Logger();
    sub_10000A6F0(v43, qword_1005DFAB8);
    (*v287)(v40, v41, v42);
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.error.getter();
    v46 = os_log_type_enabled(v44, v45);
    v47 = v300[31];
    v48 = v300[32];
    v49 = v300[29];
    v50 = v300[27];
    v51 = v300[23];
    if (v46)
    {
      v52 = swift_slowAlloc();
      v301[0] = swift_slowAlloc();
      *v52 = 136446723;
      *(v52 + 4) = sub_10000D01C(0xD00000000000003FLL, 0x80000001004E5910, v301);
      *(v52 + 12) = 2160;
      *(v52 + 14) = 1752392040;
      *(v52 + 22) = 2081;
      sub_1000093F8(&qword_1005AA720, &type metadata accessor for Friend);
      v264 = v50;
      v53 = dispatch thunk of CustomStringConvertible.description.getter();
      v55 = v54;
      v266 = v48;
      v56 = *v277;
      (*v277)(v47, v49);
      v57 = sub_10000D01C(v53, v55, v301);

      *(v52 + 24) = v57;
      _os_log_impl(&_mh_execute_header, v44, v45, "%{public}s: No serverID for %{private,mask.hash}s", v52, 0x20u);
      swift_arrayDestroy();

      (*v281)(v264, v51);
      v56(v266, v49);
      v11 = v284;
    }

    else
    {

      v15 = *v277;
      (*v277)(v47, v49);
      (*v281)(v50, v51);
      v15(v48, v49);
    }

    v13 = v295;
    v10 = v297;
  }

  v185 = i[3];

  v186 = v259;
  v187 = *(v259 + 16);
  if (v187)
  {
    v188 = i[12];
    v189 = i[9];
    v282 = i[5];
    sub_100239638(0, v187, 0);
    v190 = v259 + 64;
    v191 = -1 << *(v259 + 32);
    v192 = _HashTable.startBucket.getter();
    v193 = 0;
    v194 = *(v259 + 36);
    v285 = v188;
    v275 = v194;
    while ((v192 & 0x8000000000000000) == 0 && v192 < 1 << *(v186 + 32))
    {
      if ((*(v190 + 8 * (v192 >> 6)) & (1 << v192)) == 0)
      {
        goto LABEL_140;
      }

      if (v194 != *(v186 + 36))
      {
        goto LABEL_141;
      }

      v298 = v192 >> 6;
      v293 = v193;
      v196 = i[11];
      v198 = i[6];
      v197 = i[7];
      (*v258)(v197, *(v186 + 48) + *(v285 + 72) * v192, v196);
      v199 = *(*(v186 + 56) + 8 * v192);
      (*(v285 + 32))(v198, v197, v196);
      *(v198 + *(v282 + 48)) = v199;
      v200 = *(v199 + 16);
      if (v200)
      {
        sub_10004B564(&qword_1005AFA60, &unk_1004CE390);
        v201 = swift_allocObject();
        v202 = j__malloc_size(v201);
        v203 = v202 - 32;
        if (v202 < 32)
        {
          v203 = v202 - 17;
        }

        v201[2] = v200;
        v201[3] = 2 * (v203 >> 4);
        v290 = sub_10023E504(v301, v201 + 4, v200, v199);
        i = v301[0];
        swift_bridgeObjectRetain_n();
        sub_10000E3F8();
        if (v290 != v200)
        {
          goto LABEL_145;
        }

        i = v300;
        v186 = v259;
      }

      else
      {
      }

      v204 = i[38];
      v205 = i[10];
      v206 = i[6];
      v207 = i[36];
      static AppEntity.notificationEvent(for:identifiers:)();

      sub_100002CE0(v206, &qword_1005B0500, &qword_1004D1E30);
      v209 = _swiftEmptyArrayStorage[2];
      v208 = _swiftEmptyArrayStorage[3];
      v194 = v275;
      if (v209 >= v208 >> 1)
      {
        sub_100239638(v208 > 1, v209 + 1, 1);
      }

      v210 = i[10];
      v211 = i[8];
      _swiftEmptyArrayStorage[2] = v209 + 1;
      (*(v189 + 32))(_swiftEmptyArrayStorage + ((*(v189 + 80) + 32) & ~*(v189 + 80)) + *(v189 + 72) * v209, v210, v211);
      v195 = 1 << *(v186 + 32);
      if (v192 >= v195)
      {
        goto LABEL_142;
      }

      v190 = v259 + 64;
      v212 = *(v259 + 64 + 8 * v298);
      if ((v212 & (1 << v192)) == 0)
      {
        goto LABEL_143;
      }

      if (v275 != *(v186 + 36))
      {
        goto LABEL_144;
      }

      v213 = v212 & (-2 << (v192 & 0x3F));
      if (v213)
      {
        v195 = __clz(__rbit64(v213)) | v192 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v214 = v298 << 6;
        v215 = (v259 + 72 + 8 * v298);
        v216 = v298 + 1;
        while (v216 < (v195 + 63) >> 6)
        {
          v218 = *v215++;
          v217 = v218;
          v214 += 64;
          ++v216;
          if (v218)
          {
            sub_10002F14C(v192, v275, 0);
            v195 = __clz(__rbit64(v217)) + v214;
            goto LABEL_128;
          }
        }

        sub_10002F14C(v192, v275, 0);
LABEL_128:
        v186 = v259;
      }

      v193 = v293 + 1;
      v192 = v195;
      if (v293 + 1 == v187)
      {
        goto LABEL_129;
      }
    }

    __break(1u);
LABEL_140:
    __break(1u);
LABEL_141:
    __break(1u);
LABEL_142:
    __break(1u);
LABEL_143:
    __break(1u);
LABEL_144:
    __break(1u);
LABEL_145:
    __break(1u);
LABEL_146:
    swift_once();
  }

  else
  {
LABEL_129:
    v219 = i[44];

    Array<A>.send()();

    if (qword_1005A7EA8 != -1)
    {
      goto LABEL_146;
    }
  }

  v220 = type metadata accessor for Logger();
  sub_10000A6F0(v220, qword_1005DFAB8);
  v221 = Logger.logObject.getter();
  v222 = static os_log_type_t.default.getter();
  v223 = os_log_type_enabled(v221, v222);
  v224 = i[43];
  if (v223)
  {
    v225 = swift_slowAlloc();
    v226 = swift_slowAlloc();
    v301[0] = v226;
    *v225 = 136446210;
    *(v225 + 4) = sub_10000D01C(0xD00000000000003FLL, 0x80000001004E5910, v301);
    _os_log_impl(&_mh_execute_header, v221, v222, "%{public}s - Did send PersonEntity events", v225, 0xCu);
    sub_100004984(v226);
  }

  sub_100037FC8(v247);
  sub_100037FC8(v255);
  sub_100037FC8(v253);
  v228 = i[34];
  v227 = i[35];
  v230 = i[32];
  v229 = i[33];
  v231 = i[31];
  v232 = i;
  v233 = i[28];
  v234 = v232[26];
  v235 = v232[27];
  v236 = v232[25];
  v268 = v232[22];
  v276 = v232[19];
  v278 = v232[18];
  v280 = v232[17];
  v283 = v232[16];
  v286 = v232[15];
  v288 = v232[14];
  v291 = v232[13];
  v294 = v232[10];
  v296 = v232[7];
  v299 = v232[6];
  sub_100037FC8(v246);
  sub_100037FC8(v254);
  sub_100037FC8(v256);

  v237 = v232[1];

  return v237();
}

uint64_t sub_1002247B4()
{
  v29 = v0;
  if (qword_1005A7EA8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000A6F0(v1, qword_1005DFAB8);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v28 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_10000D01C(0xD00000000000003FLL, 0x80000001004E5910, &v28);
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s: Error getting dataManager", v4, 0xCu);
    sub_100004984(v5);
  }

  v7 = v0[34];
  v6 = v0[35];
  v9 = v0[32];
  v8 = v0[33];
  v10 = v0[31];
  v11 = v0[27];
  v12 = v0[28];
  v14 = v0[25];
  v13 = v0[26];
  v17 = v0[22];
  v18 = v0[19];
  v19 = v0[18];
  v20 = v0[17];
  v21 = v0[16];
  v22 = v0[15];
  v23 = v0[14];
  v24 = v0[13];
  v25 = v0[10];
  v26 = v0[7];
  v27 = v0[6];
  sub_100037FC8(0);
  sub_100037FC8(0);
  sub_100037FC8(0);

  v15 = v0[1];

  return v15();
}

uint64_t sub_100224A44()
{
  v15 = v0;
  if (qword_1005A7EA8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 312);
  v2 = type metadata accessor for Logger();
  sub_10000A6F0(v2, qword_1005DFAB8);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 312);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14 = v9;
    *v7 = 136446466;
    *(v7 + 4) = sub_10000D01C(0xD00000000000003FLL, 0x80000001004E5910, &v14);
    *(v7 + 12) = 2114;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v10;
    *v8 = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s: Error getting isObserved for PersonEntity - %{public}@", v7, 0x16u);
    sub_100002CE0(v8, &qword_1005A9670, &unk_1004C2480);

    sub_100004984(v9);
  }

  else
  {
  }

  v11 = async function pointer to daemon.getter[1];
  v12 = swift_task_alloc();
  *(v0 + 320) = v12;
  *v12 = v0;
  v12[1] = sub_100222710;

  return daemon.getter();
}

uint64_t sub_100224C80(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = *(*(sub_10004B564(&unk_1005AE5B0, &qword_1004C32F0) - 8) + 64) + 15;
  v2[4] = swift_task_alloc();
  v2[5] = swift_task_alloc();
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v4 = type metadata accessor for Handle();
  v2[8] = v4;
  v5 = *(v4 - 8);
  v2[9] = v5;
  v6 = *(v5 + 64) + 15;
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v7 = type metadata accessor for HandleType();
  v2[14] = v7;
  v8 = *(v7 - 8);
  v2[15] = v8;
  v9 = *(v8 + 64) + 15;
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v10 = type metadata accessor for FriendshipAction();
  v2[18] = v10;
  v11 = *(v10 - 8);
  v2[19] = v11;
  v12 = *(v11 + 64) + 15;
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v13 = type metadata accessor for Friend();
  v2[22] = v13;
  v14 = *(v13 - 8);
  v2[23] = v14;
  v15 = *(v14 + 64) + 15;
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  v16 = *(*(sub_10004B564(&qword_1005AFFF8, &unk_1004D2ED0) - 8) + 64) + 15;
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();

  return _swift_task_switch(sub_100224F60, v1, 0);
}

uint64_t sub_100224F60()
{
  v10 = v0;
  if (qword_1005A80B8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 248) = sub_10000A6F0(v1, qword_1005DFF18);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v9 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_10000D01C(0xD000000000000034, 0x80000001004E58D0, &v9);
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s start updateFriends", v4, 0xCu);
    sub_100004984(v5);
  }

  v6 = async function pointer to daemon.getter[1];
  v7 = swift_task_alloc();
  *(v0 + 256) = v7;
  *v7 = v0;
  v7[1] = sub_100225110;

  return daemon.getter();
}

uint64_t sub_100225110(uint64_t a1)
{
  v2 = *(*v1 + 256);
  v3 = *(*v1 + 24);
  v5 = *v1;
  *(*v1 + 264) = a1;

  return _swift_task_switch(sub_100225228, v3, 0);
}

void sub_100225228()
{
  v235 = v0;
  v1 = v0[33];
  v2 = v0[2];
  type metadata accessor for Daemon();
  sub_1000093F8(&qword_1005AF270, &type metadata accessor for Daemon);
  ActorDaemon.bundleIdentifier.getter();

  v3 = [BiomeLibrary() FindMy];
  swift_unknownObjectRelease();
  v4 = [v3 ContactActivity];
  swift_unknownObjectRelease();
  v191 = v4;
  v204 = [v4 source];
  v5 = *(v2 + 16);
  if (!v5)
  {
    goto LABEL_4;
  }

  v6 = v0[2];
  v7 = sub_10022BD44(v5, 0);
  v8 = *(sub_10004B564(&qword_1005AFFE0, &qword_1004D6060) - 8);
  v9 = sub_10023E7B4(v234, v7 + ((*(v8 + 80) + 32) & ~*(v8 + 80)), v5, v6);

  sub_10000E3F8();
  if (v9 != v5)
  {
    __break(1u);
LABEL_4:
    v7 = _swiftEmptyArrayStorage;
  }

  v234[0] = v7;
  sub_10023A438(v234);
  v10 = v0[31];
  v11 = v234[0];

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v234[0] = swift_slowAlloc();
    *v14 = 136446466;
    *(v14 + 4) = sub_10000D01C(0xD000000000000034, 0x80000001004E58D0, v234);
    *(v14 + 12) = 2080;
    sub_10004B564(&qword_1005AFFE0, &qword_1004D6060);
    v15 = Array.description.getter();
    v17 = sub_10000D01C(v15, v16, v234);

    *(v14 + 14) = v17;
    _os_log_impl(&_mh_execute_header, v12, v13, "%{public}s sortedFriendsArray: %s", v14, 0x16u);
    swift_arrayDestroy();
  }

  v18 = 0;
  v19 = v0[23];
  v20 = v0[19];
  v226 = (v20 + 32);
  v228 = (v19 + 32);
  v21 = v0[15];
  v222 = (v21 + 8);
  v224 = (v21 + 104);
  v218 = (v20 + 8);
  v230 = (v19 + 8);
  v213 = (v20 + 88);
  v214 = (v20 + 16);
  v206 = (v19 + 16);
  v215 = (v0[9] + 8);
  v22 = v11[2];
  v220 = enum case for HandleType.following(_:);
  v212 = enum case for FriendshipAction.add(_:);
  v198 = enum case for FriendshipAction.remove(_:);
  v205 = v11;
  for (i = v22; ; v22 = i)
  {
    if (v18 == v22)
    {
      v25 = v0[29];
      v26 = sub_10004B564(&qword_1005AFFE0, &qword_1004D6060);
      (*(*(v26 - 8) + 56))(v25, 1, 1, v26);
      v27 = v22;
    }

    else
    {
      if ((v18 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_65:
        __break(1u);
        return;
      }

      if (v18 >= v11[2])
      {
        goto LABEL_65;
      }

      v28 = v0[29];
      v29 = sub_10004B564(&qword_1005AFFE0, &qword_1004D6060);
      v30 = *(v29 - 8);
      sub_100005F04(v11 + ((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v18, v28, &qword_1005AFFE0, &qword_1004D6060);
      v27 = v18 + 1;
      (*(v30 + 56))(v28, 0, 1, v29);
    }

    v31 = v0[30];
    sub_1000176A8(v0[29], v31, &qword_1005AFFF8, &unk_1004D2ED0);
    v32 = sub_10004B564(&qword_1005AFFE0, &qword_1004D6060);
    if ((*(*(v32 - 8) + 48))(v31, 1, v32) == 1)
    {
      break;
    }

    v232 = v27;
    v33 = v0[30];
    v34 = v0[21];
    v36 = v0[17];
    v35 = v0[18];
    v37 = v0[16];
    v38 = v0[14];
    v39 = *(v32 + 48);
    (*v228)(v0[28], v33, v0[22]);
    (*v226)(v34, v33 + v39, v35);
    Friend.type.getter();
    (*v224)(v37, v220, v38);
    LOBYTE(v39) = static HandleType.== infix(_:_:)();
    v40 = *v222;
    (*v222)(v37, v38);
    v40(v36, v38);
    if ((v39 & 1) == 0)
    {
      v23 = v0[28];
      v24 = v0[22];
      (*v218)(v0[21], v0[18]);
      (*v230)(v23, v24);
      goto LABEL_9;
    }

    v41 = v0[20];
    v42 = v0[18];
    (*v214)(v41, v0[21], v42);
    v43 = (*v213)(v41, v42);
    if (v43 != v212)
    {
      if (v43 != v198)
      {
        v85 = v0[28];
        v86 = v0[22];
        v87 = v0[20];
        v88 = v0[18];
        v89 = *v218;
        (*v218)(v0[21], v88);
        (*v230)(v85, v86);
        v89(v87, v88);
        goto LABEL_9;
      }

      v72 = v0[31];
      (*v206)(v0[24], v0[28], v0[22]);
      v73 = Logger.logObject.getter();
      v74 = static os_log_type_t.default.getter();
      v75 = os_log_type_enabled(v73, v74);
      v76 = v0[24];
      v77 = v0[22];
      if (v75)
      {
        v78 = v0[12];
        v209 = v0[8];
        v79 = swift_slowAlloc();
        v234[0] = swift_slowAlloc();
        *v79 = 136446723;
        *(v79 + 4) = sub_10000D01C(0xD000000000000034, 0x80000001004E58D0, v234);
        *(v79 + 12) = 2160;
        *(v79 + 14) = 1752392040;
        *(v79 + 22) = 2081;
        Friend.handle.getter();
        v80 = Handle.identifier.getter();
        v82 = v81;
        v83 = v215;
        (*v215)(v78, v209);
        v208 = *v230;
        (*v230)(v76, v77);
        v84 = sub_10000D01C(v80, v82, v234);

        *(v79 + 24) = v84;
        _os_log_impl(&_mh_execute_header, v73, v74, "%{public}s Removed a Friend: %{private,mask.hash}s", v79, 0x20u);
        swift_arrayDestroy();
      }

      else
      {

        v208 = *v230;
        (*v230)(v76, v77);
        v83 = v215;
      }

      v107 = v0[28];
      v108 = v0[10];
      v109 = v0[8];
      v110 = v0[5];
      v201 = v0[4];
      Friend.handle.getter();
      Handle.identifier.getter();
      (*v83)(v108, v109);
      Friend.createdAt.getter();
      v111 = type metadata accessor for Date();
      v112 = *(v111 - 8);
      (*(v112 + 56))(v201, 1, 1, v111);
      v113 = String._bridgeToObjectiveC()();

      v114 = *(v112 + 48);
      isa = 0;
      if (v114(v110, 1, v111) != 1)
      {
        v116 = v0[5];
        isa = Date._bridgeToObjectiveC()().super.isa;
        (*(v112 + 8))(v116, v111);
      }

      v117 = v0[4];
      if (v114(v117, 1, v111) == 1)
      {
        v118 = 0;
      }

      else
      {
        v118 = Date._bridgeToObjectiveC()().super.isa;
        (*(v112 + 8))(v117, v111);
      }

      v119 = objc_allocWithZone(BMFindMyContactActivity);
      v120 = String._bridgeToObjectiveC()();
      v121 = [v119 initWithHandle:v113 actionType:3 eventTimestampBegin:isa eventTimestampEnd:v118 bundleID:v120];
LABEL_50:
      v133 = v121;
      v134 = v0[31];

      v135 = v133;
      [v204 sendEvent:v135];
      v136 = v135;
      v137 = Logger.logObject.getter();
      v138 = static os_log_type_t.default.getter();

      v139 = os_log_type_enabled(v137, v138);
      v140 = v0[28];
      v142 = v0[21];
      v141 = v0[22];
      v143 = v0[18];
      if (v139)
      {
        v144 = swift_slowAlloc();
        v202 = v141;
        v145 = swift_slowAlloc();
        v234[0] = v145;
        *v144 = 141558275;
        *(v144 + 4) = 1752392040;
        *(v144 + 12) = 2081;
        v196 = v140;
        v146 = [v136 description];
        v194 = v142;
        v147 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v149 = v148;

        v150 = sub_10000D01C(v147, v149, v234);

        *(v144 + 14) = v150;
        _os_log_impl(&_mh_execute_header, v137, v138, "Sent event: %{private,mask.hash}s", v144, 0x16u);
        sub_100004984(v145);

        (*v218)(v194, v143);
        v151 = v196;
        v152 = v202;
      }

      else
      {

        (*v218)(v142, v143);
        v151 = v140;
        v152 = v141;
      }

      (v208)(v151, v152);
      goto LABEL_54;
    }

    v44 = v0[28];
    v45 = v0[13];
    v46 = v0[8];
    Friend.handle.getter();
    v47 = Handle.serverID.getter();
    v49 = v48;
    v50 = *v215;
    (*v215)(v45, v46);
    if (v49)
    {
      if (!*(&_swiftEmptySetSingleton + 2) || (v51 = *(&_swiftEmptySetSingleton + 5), Hasher.init(_seed:)(), String.hash(into:)(), v52 = Hasher._finalize()(), v53 = -1 << *(&_swiftEmptySetSingleton + 32), v54 = v52 & ~v53, ((*(&_swiftEmptySetSingleton + ((v54 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v54) & 1) == 0))
      {
LABEL_28:
        v199 = v50;
        v58 = v0[31];
        (*v206)(v0[26], v0[28], v0[22]);

        v59 = Logger.logObject.getter();
        v60 = static os_log_type_t.default.getter();

        v61 = os_log_type_enabled(v59, v60);
        v62 = v0[26];
        v63 = v0[22];
        if (v61)
        {
          v64 = v0[12];
          v207 = v0[8];
          v65 = swift_slowAlloc();
          v234[0] = swift_slowAlloc();
          *v65 = 136447235;
          *(v65 + 4) = sub_10000D01C(0xD000000000000034, 0x80000001004E58D0, v234);
          *(v65 + 12) = 2160;
          *(v65 + 14) = 1752392040;
          *(v65 + 22) = 2081;
          v192 = v60;
          Friend.handle.getter();
          v66 = Handle.identifier.getter();
          v68 = v67;
          v69 = v64;
          v70 = v199;
          v199(v69, v207);
          v208 = *v230;
          (*v230)(v62, v63);
          v71 = sub_10000D01C(v66, v68, v234);

          *(v65 + 24) = v71;
          *(v65 + 32) = 2160;
          *(v65 + 34) = 1752392040;
          *(v65 + 42) = 2081;
          *(v65 + 44) = sub_10000D01C(v47, v49, v234);
          _os_log_impl(&_mh_execute_header, v59, v192, "%{public}s Added a Friend: %{private,mask.hash}s with serverId %{private,mask.hash}s", v65, 0x34u);
          swift_arrayDestroy();
        }

        else
        {

          v208 = *v230;
          (*v230)(v62, v63);
          v70 = v199;
        }

        v122 = v0[28];
        v123 = v0[11];
        v124 = v0[7];
        v125 = v0[8];
        v126 = v0[6];
        sub_1002345CC(v234, v47, v49);

        Friend.handle.getter();
        Handle.identifier.getter();
        v70(v123, v125);
        Friend.createdAt.getter();
        v127 = type metadata accessor for Date();
        v128 = *(v127 - 8);
        (*(v128 + 56))(v126, 1, 1, v127);
        v113 = String._bridgeToObjectiveC()();

        v129 = *(v128 + 48);
        isa = 0;
        if (v129(v124, 1, v127) != 1)
        {
          v130 = v0[7];
          isa = Date._bridgeToObjectiveC()().super.isa;
          (*(v128 + 8))(v130, v127);
        }

        v131 = v0[6];
        if (v129(v131, 1, v127) == 1)
        {
          v118 = 0;
        }

        else
        {
          v118 = Date._bridgeToObjectiveC()().super.isa;
          (*(v128 + 8))(v131, v127);
        }

        v132 = objc_allocWithZone(BMFindMyContactActivity);
        v120 = String._bridgeToObjectiveC()();
        v121 = [v132 initWithHandle:v113 actionType:2 eventTimestampBegin:isa eventTimestampEnd:v118 bundleID:v120];
        goto LABEL_50;
      }

      v55 = ~v53;
      while (1)
      {
        v56 = (*(&_swiftEmptySetSingleton + 6) + 16 * v54);
        v57 = *v56 == v47 && v49 == v56[1];
        if (v57 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          break;
        }

        v54 = (v54 + 1) & v55;
        if (((*(&_swiftEmptySetSingleton + ((v54 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v54) & 1) == 0)
        {
          goto LABEL_28;
        }
      }

      v154 = v0[31];
      (*v206)(v0[27], v0[28], v0[22]);

      v155 = Logger.logObject.getter();
      v156 = static os_log_type_t.default.getter();

      v157 = os_log_type_enabled(v155, v156);
      v158 = v0[27];
      v159 = v0[28];
      v160 = v0[22];
      v211 = v0[21];
      v203 = v0[18];
      if (v157)
      {
        v161 = v50;
        v162 = v0[12];
        v187 = v0[8];
        loga = v155;
        v163 = swift_slowAlloc();
        v234[0] = swift_slowAlloc();
        *v163 = 136447235;
        *(v163 + 4) = sub_10000D01C(0xD000000000000034, 0x80000001004E58D0, v234);
        *(v163 + 12) = 2160;
        *(v163 + 14) = 1752392040;
        *(v163 + 22) = 2081;
        v188 = v156;
        Friend.handle.getter();
        v164 = Handle.identifier.getter();
        v197 = v159;
        v166 = v165;
        v161(v162, v187);
        v167 = *v230;
        (*v230)(v158, v160);
        v168 = sub_10000D01C(v164, v166, v234);

        *(v163 + 24) = v168;
        *(v163 + 32) = 2160;
        *(v163 + 34) = 1752392040;
        *(v163 + 42) = 2081;
        v169 = sub_10000D01C(v47, v49, v234);

        *(v163 + 44) = v169;
        _os_log_impl(&_mh_execute_header, loga, v188, "%{public}s Friend: %{private,mask.hash}s has already added serverId %{private,mask.hash}s - skipping", v163, 0x34u);
        swift_arrayDestroy();

        (*v218)(v211, v203);
        (v167)(v197, v160);
      }

      else
      {

        v170 = *v230;
        (*v230)(v158, v160);
        (*v218)(v211, v203);
        (v170)(v159, v160);
      }

LABEL_54:
      v11 = v205;
      goto LABEL_9;
    }

    v90 = v0[31];
    (*v206)(v0[25], v0[28], v0[22]);
    v91 = Logger.logObject.getter();
    v92 = static os_log_type_t.error.getter();
    v93 = os_log_type_enabled(v91, v92);
    v94 = v0[28];
    v95 = v0[25];
    v96 = v0[22];
    v210 = v0[21];
    v195 = v0[18];
    if (v93)
    {
      v193 = v0[28];
      v97 = v0[12];
      log = v0[8];
      v200 = v50;
      v98 = swift_slowAlloc();
      v234[0] = swift_slowAlloc();
      *v98 = 136446723;
      *(v98 + 4) = sub_10000D01C(0xD000000000000034, 0x80000001004E58D0, v234);
      *(v98 + 12) = 2160;
      *(v98 + 14) = 1752392040;
      *(v98 + 22) = 2081;
      Friend.handle.getter();
      v99 = Handle.identifier.getter();
      v101 = v100;
      v200(v97, log);
      v102 = v96;
      v103 = *v230;
      v104 = v95;
      v105 = v102;
      (*v230)(v104);
      v106 = sub_10000D01C(v99, v101, v234);
      v11 = v205;

      *(v98 + 24) = v106;
      _os_log_impl(&_mh_execute_header, v91, v92, "%{public}s Friend: %{private,mask.hash}s has nil serverId", v98, 0x20u);
      swift_arrayDestroy();

      (*v218)(v210, v195);
      (v103)(v193, v105);
    }

    else
    {

      v153 = *v230;
      (*v230)(v95, v96);
      (*v218)(v210, v195);
      (v153)(v94, v96);
    }

LABEL_9:
    v18 = v232;
  }

  v171 = v0[31];

  v172 = Logger.logObject.getter();
  v173 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v172, v173))
  {
    v174 = swift_slowAlloc();
    v175 = swift_slowAlloc();
    v234[0] = v175;
    *v174 = 136446210;
    *(v174 + 4) = sub_10000D01C(0xD000000000000034, 0x80000001004E58D0, v234);
    _os_log_impl(&_mh_execute_header, v172, v173, "%{public}s end updateFriends", v174, 0xCu);
    sub_100004984(v175);
  }

  v177 = v0[29];
  v176 = v0[30];
  v179 = v0[27];
  v178 = v0[28];
  v180 = v0[25];
  v181 = v0[26];
  v182 = v0[24];
  v184 = v0[20];
  v183 = v0[21];
  v185 = v0[17];
  v217 = v0[16];
  v219 = v0[13];
  v221 = v0[12];
  v223 = v0[11];
  v225 = v0[10];
  v227 = v0[7];
  v229 = v0[6];
  v231 = v0[5];
  v233 = v0[4];

  v186 = v0[1];

  v186();
}

uint64_t sub_100226A40(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = async function pointer to daemon.getter[1];
  v4 = swift_task_alloc();
  v2[5] = v4;
  *v4 = v2;
  v4[1] = sub_100226AD4;

  return daemon.getter();
}

uint64_t sub_100226AD4(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 40);
  v12 = *v1;
  *(v3 + 48) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 56) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for FriendshipService();
  v9 = sub_1000093F8(&unk_1005AFA50, &type metadata accessor for Daemon);
  v10 = sub_1000093F8(&qword_1005AA6E0, type metadata accessor for FriendshipService);
  *v6 = v12;
  v6[1] = sub_100226CB0;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100226CB0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 56);
  v6 = *v2;
  *(*v2 + 64) = v1;

  if (v1)
  {
    v7 = v4[4];
    v8 = sub_100226E58;
  }

  else
  {
    v9 = v4[6];

    v4[9] = a1;
    v8 = sub_100226DEC;
    v7 = a1;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_100226DEC()
{
  v1 = v0[9];
  v2 = v0[4];
  sub_1002B4698(v0[3]);

  return _swift_task_switch(sub_100217E08, v2, 0);
}

uint64_t sub_100226E58()
{
  v15 = v0;
  v1 = v0[6];

  if (qword_1005A80B8 != -1)
  {
    swift_once();
  }

  v2 = v0[8];
  v3 = type metadata accessor for Logger();
  sub_10000A6F0(v3, qword_1005DFF18);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[8];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v8 = 136446466;
    *(v8 + 4) = sub_10000D01C(0xD000000000000031, 0x80000001004E5890, &v14);
    *(v8 + 12) = 2082;
    v0[2] = v7;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v9 = String.init<A>(describing:)();
    v11 = sub_10000D01C(v9, v10, &v14);

    *(v8 + 14) = v11;
    _os_log_impl(&_mh_execute_header, v4, v5, "%{public}s error %{public}s", v8, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_10022706C@<X0>(double *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v58 = a4;
  v7 = sub_10004B564(&qword_1005B3360, &unk_1004C6AA0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v57 = &v47 - v9;
  v10 = type metadata accessor for ClientOrigin();
  v54 = *(v10 - 8);
  v55 = v10;
  v11 = *(v54 + 64);
  __chkstk_darwin(v10);
  v56 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10004B564(&unk_1005AE5B0, &qword_1004C32F0);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13 - 8);
  v53 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v50 = &v47 - v17;
  v49 = type metadata accessor for HandleType();
  v52 = *(v49 - 8);
  v18 = *(v52 + 8);
  __chkstk_darwin(v49);
  v20 = &v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for Handle();
  v59 = *(v48 - 8);
  v21 = *(v59 + 64);
  v22 = __chkstk_darwin(v48);
  v24 = &v47 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v26 = &v47 - v25;
  v27 = sub_100209188(_swiftEmptyArrayStorage);
  v28 = *(a1 + 10);
  v29 = *(a1 + 11);
  v30 = a1[9];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v60 = v27;
  sub_100452A48(v28, v29, isUniquelyReferenced_nonNull_native, v30);
  v32 = *a1;
  v33 = *(a1 + 1);
  sub_10004B564(&qword_1005AFA60, &unk_1004CE390);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_1004C1900;
  *(v34 + 32) = a2;
  *(v34 + 40) = a3;
  swift_bridgeObjectRetain_n();

  v35 = v48;
  Handle.init(withID:serverID:pushIdentifiers:expiresByGroupId:siblingIdentifiers:favoriteOrder:)();
  v36 = *(v59 + 16);
  v51 = v24;
  v36(v24, v26, v35);
  v37 = *(v52 + 13);
  v52 = v20;
  v37(v20, enum case for HandleType.pendingOffer(_:), v49);
  if (v30 == 0.0)
  {
    v38 = 1;
    v39 = v50;
  }

  else
  {
    v39 = v50;
    Date.init(timeIntervalSince1970:)();
    v38 = 0;
  }

  v40 = type metadata accessor for Date();
  v41 = *(*(v40 - 8) + 56);
  v41(v39, v38, 1, v40);
  v42 = a1[8] / 1000.0;
  v43 = v53;
  Date.init(timeIntervalSince1970:)();
  v41(v43, 0, 1, v40);
  v44 = &enum case for ClientOrigin.messagesApp(_:);
  if ((a1[12] & 1) == 0)
  {
    v44 = &enum case for ClientOrigin.other(_:);
  }

  (*(v54 + 104))(v56, *v44, v55);
  v45 = v59;
  (*(v59 + 56))(v57, 1, 1, v35);
  Friend.init(handle:type:expiry:createdAt:origin:secureLocationsCapable:shallowOrLiveSecureLocationsCapable:fallbackToLegacyAllowed:fallbackToLegacy:optedNotToShare:ownerHandle:)();
  return (*(v45 + 8))(v26, v35);
}

uint64_t sub_100227594(uint64_t a1, char a2)
{
  *(v3 + 328) = a2;
  *(v3 + 24) = a1;
  *(v3 + 32) = v2;
  v4 = *(*(sub_10004B564(&qword_1005B0548, &qword_1004D1E90) - 8) + 64) + 15;
  *(v3 + 40) = swift_task_alloc();
  v5 = *(*(sub_10004B564(&qword_1005AFFF8, &unk_1004D2ED0) - 8) + 64) + 15;
  *(v3 + 48) = swift_task_alloc();
  *(v3 + 56) = swift_task_alloc();
  *(v3 + 64) = swift_task_alloc();
  *(v3 + 72) = swift_task_alloc();
  v6 = sub_10004B564(&qword_1005AFFE0, &qword_1004D6060);
  *(v3 + 80) = v6;
  v7 = *(v6 - 8);
  *(v3 + 88) = v7;
  v8 = *(v7 + 64) + 15;
  *(v3 + 96) = swift_task_alloc();
  *(v3 + 104) = swift_task_alloc();
  *(v3 + 112) = swift_task_alloc();
  *(v3 + 120) = swift_task_alloc();
  v9 = *(*(sub_10004B564(&qword_1005A9188, &unk_1004D80D0) - 8) + 64) + 15;
  *(v3 + 128) = swift_task_alloc();
  *(v3 + 136) = swift_task_alloc();
  *(v3 + 144) = swift_task_alloc();
  v10 = type metadata accessor for FriendshipAction();
  *(v3 + 152) = v10;
  v11 = *(v10 - 8);
  *(v3 + 160) = v11;
  v12 = *(v11 + 64) + 15;
  *(v3 + 168) = swift_task_alloc();
  *(v3 + 176) = swift_task_alloc();
  *(v3 + 184) = swift_task_alloc();
  v13 = type metadata accessor for Friend();
  *(v3 + 192) = v13;
  v14 = *(v13 - 8);
  *(v3 + 200) = v14;
  v15 = *(v14 + 64) + 15;
  *(v3 + 208) = swift_task_alloc();
  *(v3 + 216) = swift_task_alloc();
  *(v3 + 224) = swift_task_alloc();
  *(v3 + 232) = swift_task_alloc();
  *(v3 + 240) = swift_task_alloc();
  *(v3 + 248) = swift_task_alloc();
  *(v3 + 256) = swift_task_alloc();
  *(v3 + 264) = swift_task_alloc();
  *(v3 + 272) = swift_task_alloc();
  v16 = swift_task_alloc();
  *(v3 + 280) = v16;
  *v16 = v3;
  v16[1] = sub_1002278C8;

  return sub_100008CC0();
}

uint64_t sub_1002278C8(uint64_t a1)
{
  v2 = *(*v1 + 280);
  v3 = *(*v1 + 32);
  v5 = *v1;
  *(*v1 + 288) = a1;

  return _swift_task_switch(sub_1002279E0, v3, 0);
}

uint64_t sub_1002279E0()
{
  v162 = v0;
  v0[2] = _swiftEmptyDictionarySingleton;
  v1 = (v0 + 2);
  v2 = v0[36];
  v3 = v0[3];

  v5 = sub_10023F2F8(v4);

  v7 = sub_10023F2F8(v6);

  if (qword_1005A80B8 != -1)
  {
LABEL_70:
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_10000A6F0(v8, qword_1005DFF18);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  v143 = v5;
  v131 = v7;
  v157 = v0;
  v123 = v1;
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v161[0] = swift_slowAlloc();
    *v11 = 136315394;
    sub_10021BD68(v7);
    sub_10004B564(&qword_1005B0550, &qword_1004D1EA8);
    v12 = Array.description.getter();
    v14 = v13;

    v15 = sub_10000D01C(v12, v14, v161);
    v5 = v143;

    *(v11 + 4) = v15;
    *(v11 + 12) = 2080;
    sub_10021BD68(v143);
    v16 = Array.description.getter();
    v18 = v17;

    v19 = v16;
    v7 = v131;
    v20 = sub_10000D01C(v19, v18, v161);

    *(v11 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v9, v10, "cachedFriends: %s\ncurrentFriends: %s", v11, 0x16u);
    swift_arrayDestroy();

    v21 = *v1;
  }

  else
  {

    v21 = _swiftEmptyDictionarySingleton;
  }

  v145 = v21;
  v22 = v0[25];
  v23 = v0[20];
  v161[0] = v5;

  sub_10023CA4C(v7);
  v24 = 0;
  v25 = v161[0] + 56;
  v129 = v161[0];
  v26 = -1 << *(v161[0] + 32);
  if (-v26 < 64)
  {
    v27 = ~(-1 << -v26);
  }

  else
  {
    v27 = -1;
  }

  v7 = v27 & *(v161[0] + 56);
  v28 = (63 - v26) >> 6;
  v159 = v5 + 56;
  v138 = v22;
  v155 = (v22 + 8);
  v122 = enum case for FriendshipAction.add(_:);
  v128 = (v23 + 104);
  v124 = enum case for FriendshipAction.remove(_:);
  v133 = (v23 + 32);
  v29 = _swiftEmptyDictionarySingleton;
  v126 = v161[0] + 56;
  v127 = v23;
  v125 = v28;
  while (1)
  {
    if (!v7)
    {
      while (1)
      {
        v1 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
          __break(1u);
          goto LABEL_67;
        }

        if (v1 >= v28)
        {
          break;
        }

        v7 = *(v25 + 8 * v1);
        ++v24;
        if (v7)
        {
          goto LABEL_16;
        }
      }

      v149 = v29;
      v71 = v0[25];

      v72 = 0;
      v73 = -1;
      v74 = -1 << *(v5 + 32);
      if (-v74 < 64)
      {
        v73 = ~(-1 << -v74);
      }

      v5 = v73 & *(v5 + 56);
      v1 = (63 - v74) >> 6;
      v153 = (v71 + 48);
      v136 = enum case for FriendshipAction.modify(_:);
      v75 = v145;
LABEL_35:
      v76 = v72;
      v7 = v131;
      v146 = v75;
      if (!v5)
      {
        goto LABEL_37;
      }

      do
      {
        v72 = v76;
LABEL_40:
        v77 = v0[29];
        v78 = v0[30];
        v79 = v0[24];
        v80 = v157[18];
        v81 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        (*(v138 + 16))(v78, *(v143 + 48) + *(v138 + 72) * (v81 | (v72 << 6)), v79);
        v82 = *(v138 + 32);
        v82(v77, v78, v79);
        *(swift_task_alloc() + 16) = v77;
        sub_1004501CC(sub_10023FBB0, v7, v80);

        v0 = v157;
        v83 = (*v153)(v80, 1, v79);
        v84 = v157[29];
        if (v83 != 1)
        {
          v82(v157[28], v157[18], v157[24]);
          if (Friend.checkFriendUpdateNeeded(with:)())
          {
            v86 = v157[29];
            v150 = v157[28];
            v87 = v157[24];
            v88 = v157[21];
            (*v128)(v88, v136, v157[19]);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v161[0] = v146;
            v0 = v157;
            sub_100453958(v88, v86, isUniquelyReferenced_nonNull_native);
            v90 = *v155;
            (*v155)(v150, v87);
            v75 = v161[0];
            v149 = v161[0];
          }

          else
          {
            v90 = *v155;
            (*v155)(v157[28], v157[24]);
            v75 = v146;
          }

          v90(v0[29], v0[24]);
          goto LABEL_35;
        }

        v85 = v157[24];
        sub_100002CE0(v157[18], &qword_1005A9188, &unk_1004D80D0);
        (*v155)(v84, v85);
        v76 = v72;
        v7 = v131;
        v75 = v146;
      }

      while (v5);
LABEL_37:
      while (1)
      {
        v72 = v76 + 1;
        if (__OFADD__(v76, 1))
        {
          break;
        }

        if (v72 >= v1)
        {
          *v123 = v75;

          v91 = v149;
          if (*(v149 + 16))
          {
            if ((v0[41] & 1) == 0)
            {
              v108 = v0[4];

              v110 = sub_10024063C(v109, v108, v123);

              swift_bridgeObjectRelease_n();
              v91 = v110;
            }

            v111 = v0[36];
            v112 = sub_10023D234(v91, &enum case for HandleType.follower(_:), &enum case for FriendshipAction.add(_:));
            v113 = sub_10021B9A4(v112);

            v114 = sub_1002410F8(v91, v113);
            v0[37] = v114;
            v0[38] = 0;
            swift_bridgeObjectRelease_n();

            v0[2] = v114;
            v115 = *(v111 + 16);

            if (v115)
            {
              v116 = swift_task_alloc();
              v0[40] = v116;
              *v116 = v0;
              v116[1] = sub_1002292C8;
              v117 = v0[4];

              return sub_10022A3D0(v114);
            }

            else
            {
              v118 = swift_task_alloc();
              v0[39] = v118;
              *v118 = v0;
              v118[1] = sub_100228844;
              v119 = v0[3];
              v120 = v0[4];

              return sub_100229B00(v119);
            }
          }

          else
          {
            v92 = v0[36];

            v93 = Logger.logObject.getter();
            v94 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v93, v94))
            {
              v95 = swift_slowAlloc();
              *v95 = 0;
              _os_log_impl(&_mh_execute_header, v93, v94, "No friends to update.", v95, 2u);
            }

            v160 = sub_100209928(_swiftEmptyArrayStorage);

            v97 = v0[33];
            v96 = v0[34];
            v99 = v0[31];
            v98 = v0[32];
            v101 = v0[29];
            v100 = v0[30];
            v102 = v0[27];
            v103 = v0[28];
            v104 = v0[26];
            v105 = v0[23];
            v130 = v0[22];
            v132 = v0[21];
            v134 = v0[18];
            v137 = v0[17];
            v139 = v0[16];
            v140 = v0[15];
            v141 = v0[14];
            v142 = v0[13];
            v144 = v0[12];
            v147 = v0[9];
            v151 = v0[8];
            v154 = v0[7];
            v156 = v0[6];
            v158 = v0[5];

            v106 = v0[1];

            return v106(v160);
          }
        }

        v5 = *(v159 + 8 * v72);
        ++v76;
        if (v5)
        {
          goto LABEL_40;
        }
      }

LABEL_67:
      __break(1u);
LABEL_68:
      __break(1u);
LABEL_69:
      __break(1u);
      goto LABEL_70;
    }

    v1 = v24;
LABEL_16:
    v32 = v157[33];
    v33 = v157[34];
    v34 = v157[32];
    v35 = v157[24];
    v5 = v138;
    v148 = *(v138 + 72);
    v36 = *(v138 + 16);
    v36(v33, *(v129 + 48) + v148 * (__clz(__rbit64(v7)) | (v1 << 6)), v35);
    (*(v138 + 32))(v32, v33, v35);
    v152 = v36;
    v36(v34, v32, v35);
    if (*(v143 + 16) && (v37 = v157[33], v38 = v157[24], v39 = *(v143 + 40), sub_1000093F8(&qword_1005AE9B0, &type metadata accessor for Friend), v40 = dispatch thunk of Hashable._rawHashValue(seed:)(), v41 = -1 << *(v143 + 32), v42 = v40 & ~v41, ((*(v159 + ((v42 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v42) & 1) != 0))
    {
      v5 = ~v41;
      while (1)
      {
        v43 = v157[33];
        v44 = v157[31];
        v45 = v157[24];
        v36(v44, *(v143 + 48) + v42 * v148, v45);
        sub_1000093F8(&qword_1005AE9B8, &type metadata accessor for Friend);
        LOBYTE(v43) = dispatch thunk of static Equatable.== infix(_:_:)();
        (*v155)(v44, v45);
        if (v43)
        {
          break;
        }

        v42 = (v42 + 1) & v5;
        if (((*(v159 + ((v42 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v42) & 1) == 0)
        {
          goto LABEL_21;
        }
      }

      v46 = v122;
    }

    else
    {
LABEL_21:
      v46 = v124;
    }

    v0 = v157;
    v47 = v157[32];
    v49 = v157[22];
    v48 = v157[23];
    v50 = v157[19];
    (*v128)(v48, v46, v50);
    v51 = *v133;
    (*v133)(v49, v48, v50);
    v52 = swift_isUniquelyReferenced_nonNull_native();
    v161[0] = v145;
    v53 = sub_1001FDC28(v47);
    v55 = v145[2];
    v56 = (v54 & 1) == 0;
    v57 = __OFADD__(v55, v56);
    v58 = v55 + v56;
    if (v57)
    {
      goto LABEL_68;
    }

    v59 = v54;
    if (v145[3] < v58)
    {
      break;
    }

    if ((v52 & 1) == 0)
    {
      v70 = v53;
      sub_100204710();
      v53 = v70;
      v145 = v161[0];
    }

LABEL_28:
    v7 &= v7 - 1;
    v63 = v157[32];
    v135 = v157[33];
    v64 = v157[24];
    v65 = v157[22];
    v66 = v157[19];
    if (v59)
    {
      v30 = v145;
      (*(v127 + 40))(v145[7] + *(v127 + 72) * v53, v157[22], v157[19]);
      v31 = *v155;
      (*v155)(v63, v64);
      v31(v135, v64);
    }

    else
    {
      v30 = v145;
      v145[(v53 >> 6) + 8] |= 1 << v53;
      v5 = v53;
      v152(v145[6] + v53 * v148, v63, v64);
      v51(v145[7] + *(v127 + 72) * v5, v65, v66);
      v67 = *v155;
      (*v155)(v63, v64);
      v67(v135, v64);
      v68 = v145[2];
      v57 = __OFADD__(v68, 1);
      v69 = v68 + 1;
      if (v57)
      {
        goto LABEL_69;
      }

      v145[2] = v69;
    }

    v24 = v1;
    v29 = v30;
    v5 = v143;
    v28 = v125;
    v25 = v126;
  }

  v60 = v157[32];
  sub_10022FCBC(v58, v52);
  v61 = v161[0];
  v53 = sub_1001FDC28(v60);
  if ((v59 & 1) == (v62 & 1))
  {
    v145 = v61;
    goto LABEL_28;
  }

  v121 = v157[24];

  return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
}

uint64_t sub_100228844()
{
  v1 = *(*v0 + 312);
  v2 = *(*v0 + 32);
  v4 = *v0;

  return _swift_task_switch(sub_100228954, v2, 0);
}

uint64_t sub_100228954()
{
  v1 = v0[37];
  v2 = v0[38];
  v3 = v0[25];
  v4 = v0[20];
  v5 = v0[11];
  v121 = v0[10];
  v94 = sub_10023D234(v1, &enum case for HandleType.futureFollowing(_:), &enum case for FriendshipAction.remove(_:));
  result = sub_10023D234(v1, &enum case for HandleType.following(_:), &enum case for FriendshipAction.add(_:));
  v7 = 0;
  v8 = result + 64;
  v91 = result;
  v9 = -1;
  v10 = -1 << *(result + 32);
  if (-v10 < 64)
  {
    v9 = ~(-1 << -v10);
  }

  v11 = v9 & *(result + 64);
  v12 = (63 - v10) >> 6;
  v119 = (v4 + 16);
  v115 = (v3 + 56);
  v117 = (v5 + 48);
  v83 = (v4 + 8);
  v85 = v12;
  v88 = result + 64;
  while (v11)
  {
    v112 = v2;
LABEL_13:
    v17 = v0[24];
    v18 = v0[25];
    v20 = v0[19];
    v19 = v0[20];
    v22 = v0[14];
    v21 = v0[15];
    v100 = v17;
    v103 = v0[9];
    v106 = v0[8];
    v109 = v0[10];
    v23 = __clz(__rbit64(v11)) | (v7 << 6);
    (*(v18 + 16))(v21, *(v91 + 48) + *(v18 + 72) * v23);
    v24 = *(v91 + 56) + *(v19 + 72) * v23;
    v25 = *(v121 + 48);
    (*v119)(v21 + v25, v24, v20);
    v26 = *(v121 + 48);
    v97 = *(v18 + 32);
    v97(v22, v21, v100);
    (*(v19 + 32))(v22 + v26, v21 + v25, v20);
    v27 = swift_task_alloc();
    *(v27 + 16) = v22;
    v2 = v112;
    sub_1004501F8(sub_100241538, v27, v94, v103);

    sub_100005F04(v103, v106, &qword_1005AFFF8, &unk_1004D2ED0);
    if ((*v117)(v106, 1, v109) == 1)
    {
      v13 = v0[24];
      v14 = v0[17];
      v15 = v0[8];
      sub_100002CE0(v0[9], &qword_1005AFFF8, &unk_1004D2ED0);
      sub_100002CE0(v15, &qword_1005AFFF8, &unk_1004D2ED0);
      (*v115)(v14, 1, 1, v13);
LABEL_5:
      v12 = v85;
      v8 = v88;
      sub_100002CE0(v0[17], &qword_1005A9188, &unk_1004D80D0);
      goto LABEL_6;
    }

    v28 = v0[24];
    v29 = v0[25];
    v30 = v0[19];
    v31 = v0[17];
    v32 = v0[8];
    v33 = *(v121 + 48);
    v97(v31, v32, v28);
    (*v115)(v31, 0, 1, v28);
    (*v83)(v32 + v33, v30);
    if ((*(v29 + 48))(v31, 1, v28) == 1)
    {
      sub_100002CE0(v0[9], &qword_1005AFFF8, &unk_1004D2ED0);
      goto LABEL_5;
    }

    v34 = v0[27];
    v35 = v0[24];
    v36 = v0[25];
    v37 = v0[9];
    v38 = v0[5];
    v97(v34, v0[17], v35);
    sub_1001FF13C(v34, v38);
    sub_100002CE0(v38, &qword_1005B0548, &qword_1004D1E90);
    (*(v36 + 8))(v34, v35);
    sub_100002CE0(v37, &qword_1005AFFF8, &unk_1004D2ED0);
    v12 = v85;
    v8 = v88;
LABEL_6:
    v11 &= v11 - 1;
    result = sub_100002CE0(v0[14], &qword_1005AFFE0, &qword_1004D6060);
  }

  while (1)
  {
    v16 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
      goto LABEL_37;
    }

    if (v16 >= v12)
    {
      break;
    }

    v11 = *(v8 + 8 * v16);
    ++v7;
    if (v11)
    {
      v112 = v2;
      v7 = v16;
      goto LABEL_13;
    }
  }

  v39 = v0[2];
  v95 = sub_10023D234(v39, &enum case for HandleType.futureFollower(_:), &enum case for FriendshipAction.remove(_:));
  result = sub_10023D234(v39, &enum case for HandleType.follower(_:), &enum case for FriendshipAction.add(_:));
  v40 = 0;
  v41 = result + 64;
  v89 = result + 64;
  v92 = result;
  v42 = -1;
  v43 = -1 << *(result + 32);
  if (-v43 < 64)
  {
    v42 = ~(-1 << -v43);
  }

  v44 = v42 & *(result + 64);
  v45 = (63 - v43) >> 6;
  v86 = v45;
  while (2)
  {
    if (v44)
    {
      v113 = v2;
LABEL_28:
      v52 = v0[24];
      v53 = v0[25];
      v55 = v0[19];
      v54 = v0[20];
      v57 = v0[12];
      v56 = v0[13];
      v101 = v52;
      v104 = v0[7];
      v107 = v0[6];
      v110 = v0[10];
      v58 = __clz(__rbit64(v44)) | (v40 << 6);
      (*(v53 + 16))(v56, *(v92 + 48) + *(v53 + 72) * v58);
      v59 = *(v92 + 56) + *(v54 + 72) * v58;
      v60 = *(v121 + 48);
      (*v119)(v56 + v60, v59, v55);
      v61 = *(v121 + 48);
      v98 = *(v53 + 32);
      v98(v57, v56, v101);
      (*(v54 + 32))(v57 + v61, v56 + v60, v55);
      v62 = swift_task_alloc();
      *(v62 + 16) = v57;
      v2 = v113;
      sub_1004501F8(sub_1002412B8, v62, v95, v104);

      sub_100005F04(v104, v107, &qword_1005AFFF8, &unk_1004D2ED0);
      if ((*v117)(v107, 1, v110) == 1)
      {
        v63 = v0[24];
        v64 = v0[16];
        v65 = v0[6];
        sub_100002CE0(v0[7], &qword_1005AFFF8, &unk_1004D2ED0);
        sub_100002CE0(v65, &qword_1005AFFF8, &unk_1004D2ED0);
        (*v115)(v64, 1, 1, v63);
        goto LABEL_32;
      }

      v66 = v0[24];
      v67 = v0[25];
      v68 = v0[19];
      v69 = v0[16];
      v70 = v0[6];
      v71 = *(v121 + 48);
      v98(v69, v70, v66);
      (*v115)(v69, 0, 1, v66);
      (*v83)(v70 + v71, v68);
      if ((*(v67 + 48))(v69, 1, v66) == 1)
      {
        sub_100002CE0(v0[7], &qword_1005AFFF8, &unk_1004D2ED0);
LABEL_32:
        v45 = v86;
        v41 = v89;
        sub_100002CE0(v0[16], &qword_1005A9188, &unk_1004D80D0);
      }

      else
      {
        v47 = v0[25];
        v46 = v0[26];
        v48 = v0[24];
        v49 = v0[7];
        v50 = v0[5];
        v98(v46, v0[16], v48);
        sub_1001FF13C(v46, v50);
        sub_100002CE0(v50, &qword_1005B0548, &qword_1004D1E90);
        (*(v47 + 8))(v46, v48);
        sub_100002CE0(v49, &qword_1005AFFF8, &unk_1004D2ED0);
        v45 = v86;
        v41 = v89;
      }

      v44 &= v44 - 1;
      result = sub_100002CE0(v0[12], &qword_1005AFFE0, &qword_1004D6060);
      continue;
    }

    break;
  }

  while (1)
  {
    v51 = v40 + 1;
    if (__OFADD__(v40, 1))
    {
      break;
    }

    if (v51 >= v45)
    {

      v122 = v0[2];
      v73 = v0[33];
      v72 = v0[34];
      v75 = v0[31];
      v74 = v0[32];
      v77 = v0[29];
      v76 = v0[30];
      v78 = v0[27];
      v79 = v0[28];
      v80 = v0[26];
      v81 = v0[23];
      v84 = v0[22];
      v87 = v0[21];
      v90 = v0[18];
      v93 = v0[17];
      v96 = v0[16];
      v99 = v0[15];
      v102 = v0[14];
      v105 = v0[13];
      v108 = v0[12];
      v111 = v0[9];
      v114 = v0[8];
      v116 = v0[7];
      v118 = v0[6];
      v120 = v0[5];

      v82 = v0[1];

      return v82(v122);
    }

    v44 = *(v41 + 8 * v51);
    ++v40;
    if (v44)
    {
      v113 = v2;
      v40 = v51;
      goto LABEL_28;
    }
  }

LABEL_37:
  __break(1u);
  return result;
}

uint64_t sub_1002292C8()
{
  v1 = *(*v0 + 320);
  v2 = *(*v0 + 32);
  v4 = *v0;

  return _swift_task_switch(sub_100241554, v2, 0);
}

uint64_t sub_1002293D8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, int a8@<W7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v75 = a6;
  v82 = a7;
  v83 = a8;
  v72 = a5;
  v74 = a4;
  v73 = a3;
  v81 = a9;
  v13 = sub_10004B564(&qword_1005B3360, &unk_1004C6AA0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v80 = &v64 - v15;
  v16 = type metadata accessor for ClientOrigin();
  v77 = *(v16 - 8);
  v78 = v16;
  v17 = *(v77 + 64);
  __chkstk_darwin(v16);
  v79 = &v64 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10004B564(&unk_1005AE5B0, &qword_1004C32F0);
  v20 = *(*(v19 - 8) + 64);
  v21 = __chkstk_darwin(v19 - 8);
  v76 = &v64 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v24 = &v64 - v23;
  v71 = type metadata accessor for HandleType();
  v70 = *(v71 - 8);
  v25 = *(v70 + 64);
  __chkstk_darwin(v71);
  v66 = &v64 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = type metadata accessor for GroupID();
  v27 = *(v65 - 8);
  v28 = *(v27 + 64);
  __chkstk_darwin(v65);
  v30 = &v64 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for Handle();
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  v34 = __chkstk_darwin(v31);
  v87 = &v64 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __chkstk_darwin(v34);
  v88 = &v64 - v37;
  v38 = *a1;
  v39 = a1[1];
  v69 = v38;
  v40 = *(a2 + 56);
  v67 = *(a2 + 48);
  v41 = *(a2 + 136);
  v42 = *(a2 + 24);
  v85 = v36;
  v86 = v24;
  v84 = v32;
  v68 = v39;
  if (v42)
  {

    v43 = v66;
  }

  else
  {
    sub_10004B564(&qword_1005B0538, &qword_1004D1E80);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1004C1900;
    v45 = v65;
    (*(v27 + 104))(v30, enum case for GroupID.oneToOne(_:), v65);

    v64 = v40;

    v46 = GroupID.rawValue.getter();
    v48 = v47;
    (*(v27 + 8))(v30, v45);
    *(inited + 32) = v46;
    v49 = inited + 32;
    *(inited + 40) = v48;
    v32 = v84;
    v31 = v85;
    v43 = v66;
    *(inited + 48) = *(a2 + 16);
    sub_100209188(inited);
    v24 = v86;
    swift_setDeallocating();
    sub_100002CE0(v49, &qword_1005B0540, &qword_1004D1E88);
  }

  v50 = v88;
  Handle.init(withID:serverID:pushIdentifiers:expiresByGroupId:siblingIdentifiers:favoriteOrder:)();
  (*(v32 + 16))(v87, v50, v31);
  (*(v70 + 16))(v43, v75, v71);
  v51 = v76;
  if (*(a2 + 16) == 0.0)
  {
    v52 = 1;
  }

  else
  {
    Date.init(timeIntervalSince1970:)();
    v52 = 0;
  }

  v53 = type metadata accessor for Date();
  v54 = *(*(v53 - 8) + 56);
  v54(v24, v52, 1, v53);
  v55 = a2;
  if (*(a2 + 8) != 1)
  {
    goto LABEL_11;
  }

  if ((*(a2 + 128) & 1) == 0)
  {
    v55 = (a2 + 120);
LABEL_11:
    v57 = *v55 / 1000.0;
    Date.init(timeIntervalSince1970:)();
    v56 = 0;
    goto LABEL_12;
  }

  v56 = 1;
LABEL_12:
  v54(v51, v56, 1, v53);
  v58 = *(a2 + 146);
  if (v58 == 2 || (v58 & 1) == 0)
  {
    v61 = *(a2 + 104);
    v60 = *(a2 + 112);

    v89._countAndFlagsBits = v61;
    v89._object = v60;
    if (((sub_100163D00(v89) - 3) & 0xFE) != 0)
    {
      v59 = &enum case for ClientOrigin.findMyApp(_:);
    }

    else
    {
      v59 = &enum case for ClientOrigin.other(_:);
    }
  }

  else
  {
    v59 = &enum case for ClientOrigin.messagesApp(_:);
  }

  (*(v77 + 104))(v79, *v59, v78);
  v62 = *(a2 + 98);
  sub_100005F04(a11, v80, &qword_1005B3360, &unk_1004C6AA0);
  Friend.init(handle:type:expiry:createdAt:origin:secureLocationsCapable:shallowOrLiveSecureLocationsCapable:fallbackToLegacyAllowed:fallbackToLegacy:optedNotToShare:ownerHandle:)();
  return (*(v84 + 8))(v88, v85);
}

uint64_t sub_100229B00(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = async function pointer to daemon.getter[1];
  v4 = swift_task_alloc();
  v2[5] = v4;
  *v4 = v2;
  v4[1] = sub_100229B94;

  return daemon.getter();
}

uint64_t sub_100229B94(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 40);
  v12 = *v1;
  *(v3 + 48) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 56) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for LocalStorageService();
  v9 = sub_1000093F8(&unk_1005AFA50, &type metadata accessor for Daemon);
  v10 = sub_1000093F8(&qword_1005AAB88, type metadata accessor for LocalStorageService);
  *v6 = v12;
  v6[1] = sub_100229D70;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100229D70(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 56);
  v6 = *v2;
  v4[8] = a1;
  v4[9] = v1;

  if (v1)
  {
    v7 = v4[4];

    return _swift_task_switch(sub_10022A028, v7, 0);
  }

  else
  {
    v8 = v4[6];

    v9 = swift_task_alloc();
    v4[10] = v9;
    *v9 = v6;
    v9[1] = sub_100229F00;
    v10 = v4[3];

    return sub_100305C14(v10);
  }
}

uint64_t sub_100229F00()
{
  v2 = *(*v1 + 80);
  v3 = *(*v1 + 32);
  v6 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v4 = sub_10022A1FC;
  }

  else
  {
    v4 = sub_10024155C;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10022A028()
{
  v14 = v0;
  v1 = v0[9];
  v2 = v0[6];

  if (qword_1005A80B8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000A6F0(v3, qword_1005DFF18);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136446210;
    v0[2] = v1;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v8 = String.init<A>(describing:)();
    v10 = sub_10000D01C(v8, v9, &v13);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "DataManager storeIntoLocalStorage failed with error: %{public}s", v6, 0xCu);
    sub_100004984(v7);
  }

  else
  {
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_10022A1FC()
{
  v14 = v0;
  v1 = v0[11];
  v2 = v0[8];

  if (qword_1005A80B8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000A6F0(v3, qword_1005DFF18);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136446210;
    v0[2] = v1;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v8 = String.init<A>(describing:)();
    v10 = sub_10000D01C(v8, v9, &v13);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "DataManager storeIntoLocalStorage failed with error: %{public}s", v6, 0xCu);
    sub_100004984(v7);
  }

  else
  {
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_10022A3D0(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = async function pointer to daemon.getter[1];
  v4 = swift_task_alloc();
  v2[5] = v4;
  *v4 = v2;
  v4[1] = sub_10022A464;

  return daemon.getter();
}

uint64_t sub_10022A464(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 40);
  v12 = *v1;
  *(v3 + 48) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 56) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for LocalStorageService();
  v9 = sub_1000093F8(&unk_1005AFA50, &type metadata accessor for Daemon);
  v10 = sub_1000093F8(&qword_1005AAB88, type metadata accessor for LocalStorageService);
  *v6 = v12;
  v6[1] = sub_10022A640;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_10022A640(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 56);
  v6 = *v2;
  v4[8] = a1;
  v4[9] = v1;

  if (v1)
  {
    v7 = v4[4];

    return _swift_task_switch(sub_10022A958, v7, 0);
  }

  else
  {
    v8 = v4[6];

    v9 = swift_task_alloc();
    v4[10] = v9;
    *v9 = v6;
    v9[1] = sub_10022A7D0;
    v10 = v4[3];

    return sub_100305EC8(v10);
  }
}

uint64_t sub_10022A7D0()
{
  v2 = *(*v1 + 80);
  v3 = *(*v1 + 32);
  v6 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v4 = sub_10022AB2C;
  }

  else
  {
    v4 = sub_10022A8F8;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10022A8F8()
{
  v1 = *(v0 + 64);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10022A958()
{
  v14 = v0;
  v1 = v0[9];
  v2 = v0[6];

  if (qword_1005A80B8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000A6F0(v3, qword_1005DFF18);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136446210;
    v0[2] = v1;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v8 = String.init<A>(describing:)();
    v10 = sub_10000D01C(v8, v9, &v13);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "DataManager update LocalStorage failed with error: %{public}s", v6, 0xCu);
    sub_100004984(v7);
  }

  else
  {
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_10022AB2C()
{
  v14 = v0;
  v1 = v0[11];
  v2 = v0[8];

  if (qword_1005A80B8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000A6F0(v3, qword_1005DFF18);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136446210;
    v0[2] = v1;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v8 = String.init<A>(describing:)();
    v10 = sub_10000D01C(v8, v9, &v13);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "DataManager update LocalStorage failed with error: %{public}s", v6, 0xCu);
    sub_100004984(v7);
  }

  else
  {
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_10022AD00(uint64_t a1, uint64_t a2)
{
  v27 = a1;
  v3 = type metadata accessor for Handle();
  v28 = *(v3 - 8);
  v29 = v3;
  v4 = *(v28 + 64);
  v5 = __chkstk_darwin(v3);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v26 - v8;
  v10 = sub_10004B564(&qword_1005AFFE0, &qword_1004D6060);
  v11 = v10 - 8;
  v12 = *(*(v10 - 8) + 64);
  v13 = __chkstk_darwin(v10);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v26 - v16;
  sub_100005F04(a2, &v26 - v16, &qword_1005AFFE0, &qword_1004D6060);
  v26 = *(v11 + 56);
  Friend.handle.getter();
  v18 = type metadata accessor for Friend();
  v19 = *(*(v18 - 8) + 8);
  v19(v17, v18);
  sub_100005F04(v27, v15, &qword_1005AFFE0, &qword_1004D6060);
  v20 = *(v11 + 56);
  Friend.handle.getter();
  v19(v15, v18);
  LOBYTE(v18) = static Handle.== infix(_:_:)();
  v21 = v29;
  v22 = *(v28 + 8);
  v22(v7, v29);
  v22(v9, v21);
  v23 = type metadata accessor for FriendshipAction();
  v24 = *(*(v23 - 8) + 8);
  v24(&v15[v20], v23);
  v24(&v17[v26], v23);
  return v18 & 1;
}

void sub_10022AFA0(uint64_t a1)
{
  v2 = type metadata accessor for Friend();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = type metadata accessor for Handle();
  v7 = *(*(v43 - 8) + 64);
  __chkstk_darwin(v43);
  v42 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 16);
  if (v11)
  {
    v12 = 0;
    v41 = (v8 + 8);
    v38 = (v3 + 8);
    v39 = (v3 + 16);
    v36 = "ent(updatedFriends:)";
    v34 = _swiftEmptyArrayStorage;
    *&v9 = 136446723;
    v35 = v9;
    v40 = v11;
    do
    {
      v13 = v12;
      while (1)
      {
        if (v13 >= v11)
        {
          __break(1u);
LABEL_22:
          __break(1u);
          return;
        }

        if (__OFADD__(v13, 1))
        {
          goto LABEL_22;
        }

        v44 = v13 + 1;
        v14 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v13;
        v15 = v42;
        Friend.handle.getter();
        v16 = Handle.serverID.getter();
        v18 = v17;
        (*v41)(v15, v43);
        if (v18)
        {
          break;
        }

        if (qword_1005A7EA8 != -1)
        {
          swift_once();
        }

        v19 = type metadata accessor for Logger();
        sub_10000A6F0(v19, qword_1005DFAB8);
        (*v39)(v6, v14, v2);
        v20 = Logger.logObject.getter();
        v21 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v20, v21))
        {
          v22 = swift_slowAlloc();
          v37 = swift_slowAlloc();
          v45 = v37;
          *v22 = v35;
          *(v22 + 4) = sub_10000D01C(0xD00000000000003FLL, v36 | 0x8000000000000000, &v45);
          *(v22 + 12) = 2160;
          *(v22 + 14) = 1752392040;
          *(v22 + 22) = 2081;
          sub_1000093F8(&qword_1005AA720, &type metadata accessor for Friend);
          v23 = dispatch thunk of CustomStringConvertible.description.getter();
          v24 = v3;
          v25 = a1;
          v27 = v26;
          (*v38)(v6, v2);
          v28 = sub_10000D01C(v23, v27, &v45);
          a1 = v25;
          v3 = v24;

          *(v22 + 24) = v28;
          _os_log_impl(&_mh_execute_header, v20, v21, "%{public}s: ServerID is nil for friend: %{private,mask.hash}s", v22, 0x20u);
          swift_arrayDestroy();
        }

        else
        {

          (*v38)(v6, v2);
        }

        ++v13;
        v11 = v40;
        if (v44 == v40)
        {
          goto LABEL_20;
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v34 = sub_1001FC900(0, *(v34 + 2) + 1, 1, v34);
      }

      v12 = v44;
      v30 = *(v34 + 2);
      v29 = *(v34 + 3);
      if (v30 >= v29 >> 1)
      {
        v34 = sub_1001FC900((v29 > 1), v30 + 1, 1, v34);
      }

      v31 = v34;
      *(v34 + 2) = v30 + 1;
      v32 = &v31[16 * v30];
      *(v32 + 4) = v16;
      *(v32 + 5) = v18;
    }

    while (v12 != v11);
  }

  else
  {
    v34 = _swiftEmptyArrayStorage;
  }

LABEL_20:
  sub_10023F00C(v34);
}

uint64_t sub_10022B46C(uint64_t a1, uint64_t a2)
{
  v37 = a2;
  v3 = type metadata accessor for Handle();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v36 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v33 - v8;
  v38 = sub_10004B564(&qword_1005AFFE0, &qword_1004D6060);
  v10 = *(*(v38 - 8) + 64);
  v11 = __chkstk_darwin(v38);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v33 - v14;
  sub_100005F04(a1, &v33 - v14, &qword_1005AFFE0, &qword_1004D6060);
  Friend.handle.getter();
  v16 = type metadata accessor for Friend();
  v17 = *(*(v16 - 8) + 8);
  v17(v15, v16);
  v18 = Handle.identifier.getter();
  v34 = v19;
  v35 = v18;
  v20 = v4 + 8;
  v21 = *(v4 + 8);
  v33 = v20;
  v21(v9, v3);
  sub_100005F04(v37, v13, &qword_1005AFFE0, &qword_1004D6060);
  v22 = v36;
  Friend.handle.getter();
  v17(v13, v16);
  v23 = v22;
  v24 = Handle.identifier.getter();
  v26 = v25;
  v21(v23, v3);
  if (v35 == v24 && v34 == v26)
  {
    v28 = 0;
  }

  else
  {
    v28 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v29 = *(v38 + 48);
  v30 = type metadata accessor for FriendshipAction();
  v31 = *(*(v30 - 8) + 8);
  v31(&v13[v29], v30);
  v31(&v15[v29], v30);
  return v28 & 1;
}

uint64_t sub_10022B76C(uint64_t a1, void (*a2)(char *, uint64_t), unsigned int *a3)
{
  v40 = a3;
  v44 = a2;
  v4 = type metadata accessor for HandleType();
  v41 = *(v4 - 8);
  v42 = v4;
  v5 = *(v41 + 64);
  v6 = __chkstk_darwin(v4);
  v39 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v38 = &v35 - v8;
  v9 = type metadata accessor for Handle();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v35 - v15;
  v17 = sub_10004B564(&qword_1005AFFE0, &qword_1004D6060);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17);
  v20 = &v35 - v19;
  v37 = a1;
  sub_100005F04(a1, &v35 - v19, &qword_1005AFFE0, &qword_1004D6060);
  v43 = *(v17 + 48);
  Friend.handle.getter();
  v21 = type metadata accessor for Friend();
  v22 = *(v21 - 8);
  v23 = *(v22 + 8);
  v35 = v22 + 8;
  v36 = v23;
  v23(v20, v21);
  Friend.handle.getter();
  v24 = static Handle.== infix(_:_:)();
  v25 = *(v10 + 8);
  v25(v14, v9);
  v25(v16, v9);
  v26 = type metadata accessor for FriendshipAction();
  v27 = *(*(v26 - 8) + 8);
  v27(&v20[v43], v26);
  if (v24)
  {
    sub_100005F04(v37, v20, &qword_1005AFFE0, &qword_1004D6060);
    v43 = *(v17 + 48);
    v44 = v27;
    v28 = v38;
    Friend.type.getter();
    v36(v20, v21);
    v29 = v41;
    v30 = v39;
    v31 = v42;
    (*(v41 + 104))(v39, *v40, v42);
    v32 = static HandleType.== infix(_:_:)();
    v33 = *(v29 + 8);
    v33(v30, v31);
    v33(v28, v31);
    v44(&v20[v43], v26);
  }

  else
  {
    v32 = 0;
  }

  return v32 & 1;
}

uint64_t sub_10022BB24(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_10022BBB4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 48);
    v4 = (a2 + 48);
    do
    {
      v5 = *v3;
      v6 = *v4;
      if (*(v3 - 2) == *(v4 - 2) && *(v3 - 1) == *(v4 - 1))
      {
        if (v5 != v6)
        {
          return 0;
        }
      }

      else
      {
        v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
        result = 0;
        if ((v8 & 1) == 0 || v5 != v6)
        {
          return result;
        }
      }

      v3 += 3;
      v4 += 3;
      --v2;
    }

    while (v2);
  }

  return 1;
}

void *sub_10022BC70(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_10004B564(&qword_1005AFA60, &unk_1004CE390);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

void *sub_10022BD44(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_10004B564(&qword_1005B04F8, &qword_1004D1E20);
  v4 = *(sub_10004B564(&qword_1005AFFE0, &qword_1004D6060) - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = j__malloc_size(v7);
  if (v5)
  {
    if ((result - v6) != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10022BE4C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_10004B564(&qword_1005B0120, &qword_1004D16B0);
  v41 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v40 = v3;
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
      v21 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v24 = v21 | (v9 << 6);
      v25 = (*(v5 + 48) + 16 * v24);
      v26 = *v25;
      v27 = v25[1];
      v28 = (*(v5 + 56) + 48 * v24);
      if (v41)
      {
        v29 = *v28;
        v30 = v28[1];
        *(v43 + 9) = *(v28 + 25);
        v42 = v29;
        v43[0] = v30;
      }

      else
      {
        sub_1000534E8(v28, &v42);
      }

      v31 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v32 = -1 << *(v8 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v15 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v15 + 8 * v34);
          if (v38 != -1)
          {
            v16 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v33) & ~*(v15 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v26;
      v17[1] = v27;
      v18 = (*(v8 + 56) + 48 * v16);
      v19 = v42;
      v20 = v43[0];
      *(v18 + 25) = *(v43 + 9);
      *v18 = v19;
      v18[1] = v20;
      ++*(v8 + 16);
    }

    v22 = v9;
    while (1)
    {
      v9 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v23 = v10[v9];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v13 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    if ((v41 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_36;
    }

    v39 = 1 << *(v5 + 32);
    v3 = v40;
    if (v39 >= 64)
    {
      bzero((v5 + 64), ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v39;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_10022C11C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_10004B564(&qword_1005B0158, &qword_1004D16E8);
  v41 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v40 = v3;
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
      v21 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v24 = v21 | (v9 << 6);
      v25 = (*(v5 + 48) + 16 * v24);
      v26 = *v25;
      v27 = v25[1];
      v28 = (*(v5 + 56) + 48 * v24);
      if (v41)
      {
        v29 = *v28;
        v30 = v28[1];
        *(v43 + 10) = *(v28 + 26);
        v42 = v29;
        v43[0] = v30;
      }

      else
      {
        sub_10005345C(v28, &v42);
      }

      v31 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v32 = -1 << *(v8 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v15 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v15 + 8 * v34);
          if (v38 != -1)
          {
            v16 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v33) & ~*(v15 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v26;
      v17[1] = v27;
      v18 = (*(v8 + 56) + 48 * v16);
      v19 = v42;
      v20 = v43[0];
      *(v18 + 26) = *(v43 + 10);
      *v18 = v19;
      v18[1] = v20;
      ++*(v8 + 16);
    }

    v22 = v9;
    while (1)
    {
      v9 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v23 = v10[v9];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v13 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    if ((v41 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_36;
    }

    v39 = 1 << *(v5 + 32);
    v3 = v40;
    if (v39 >= 64)
    {
      bzero((v5 + 64), ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v39;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_10022C3EC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_10004B564(&qword_1005A8A40, &qword_1004C18E0);
  v39 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v37 = v3;
    v38 = v5;
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
      if ((v39 & 1) == 0)
      {
        v26 = v22[1];

        v27 = v25;
      }

      v28 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v29 = -1 << *(v8 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v38;
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

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_35;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v10, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_10022C6A4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_10004B564(&qword_1005B0090, &qword_1004D1620);
  v40 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v38 = v3;
    v39 = v5;
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
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = 16 * (v20 | (v9 << 6));
      v24 = (*(v5 + 48) + v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = (*(v5 + 56) + v23);
      v28 = v27[1];
      v41 = *v27;
      if ((v40 & 1) == 0)
      {
      }

      v29 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v30 = -1 << *(v8 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v15 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v15 + 8 * v32);
          if (v36 != -1)
          {
            v16 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v31) & ~*(v15 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v25;
      v18[1] = v26;
      v19 = (*(v8 + 56) + v17);
      *v19 = v41;
      v19[1] = v28;
      ++*(v8 + 16);
      v5 = v39;
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v10, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}