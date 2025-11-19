uint64_t sub_1000153F0()
{
  sub_100002BAC();
  *(v1 + 40) = v0;
  *(v1 + 88) = v2;
  v3 = sub_100065020(&qword_1001BB050, &qword_10016F6E0);
  sub_100002F04(v3);
  v5 = *(v4 + 64);
  *(v1 + 48) = sub_100002C58();
  v6 = sub_100065020(&qword_1001BC0B0, &qword_100172970);
  *(v1 + 56) = v6;
  v7 = *(v6 - 8);
  *(v1 + 64) = v7;
  v8 = *(v7 + 64);
  *(v1 + 72) = sub_100002C58();
  v9 = sub_100002C10();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_1000154D8()
{
  sub_100002BAC();
  sub_100001EF4();
  v2 = *(v1 + 512);
  v3 = *(v1 + 264);
  v4 = *v0;
  sub_100002B9C();
  *v5 = v4;

  v6 = sub_100002C10();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_1000155D0()
{
  sub_100002BAC();
  v1 = v0[33];
  v0[63] = *(v0[62] + 192);

  sub_1000071A8();

  return _swift_task_switch(v2, v3, v4);
}

uint64_t sub_100015640()
{
}

uint64_t sub_100015660()
{
  v2 = v0[35];
  v4 = v0[31];
  v3 = v0[32];
  v5 = v0[28];
  v6 = v0[25];
  v7 = v0[22];
}

uint64_t sub_100015684(uint64_t a1)
{
  sub_10000C6C0(v3, 1, a1);

  return sub_10000ECD8(v3, v1, v2);
}

uint64_t sub_1000156D8()
{

  return dispatch thunk of CustomStringConvertible.description.getter();
}

uint64_t sub_100015718()
{
  v0 = sub_100065020(&qword_1001BD098, &qword_100173978);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v7 - v2;
  v4 = enum case for GenerativeFunctionsInstrumentationMetadata.ModelManagerSessionEvent.SessionEventType.add(_:);
  v5 = type metadata accessor for GenerativeFunctionsInstrumentationMetadata.ModelManagerSessionEvent.SessionEventType();
  (*(*(v5 - 8) + 104))(v3, v4, v5);
  sub_100009BFC(v3, 0, 1, v5);
  GenerativeFunctionsInstrumentationMetadata.ModelManagerSessionEvent.sessionEventType.setter();

  GenerativeFunctionsInstrumentationMetadata.ModelManagerSessionEvent.supportedAssetBundleIdentifiers.setter();
  GenerativeFunctionsInstrumentationMetadata.ModelManagerSessionEvent.onBehalfOfPID.setter();
  GenerativeFunctionsInstrumentationMetadata.ModelManagerSessionEvent.createdByPID.setter();
  return GenerativeFunctionsInstrumentationMetadata.ModelManagerSessionEvent.containsSensitiveData.setter();
}

uint64_t sub_100015854()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 28);
  v4 = *(v0 + 32);
  return sub_100015718();
}

uint64_t sub_100015884(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v38 = a5;
  v35 = a3;
  v33 = a2;
  v34 = a1;
  v41 = type metadata accessor for DispatchWorkItemFlags();
  v43 = *(v41 - 8);
  v7 = *(v43 + 64);
  __chkstk_darwin(v41);
  v39 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = type metadata accessor for DispatchQoS();
  v40 = *(v42 - 8);
  v9 = *(v40 + 64);
  __chkstk_darwin(v42);
  v36 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100065020(&qword_1001B9CE0, &qword_100170F90);
  v31 = v11;
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v31 - v14;
  v32 = &v31 - v14;
  v16 = type metadata accessor for Session.Metadata();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v19 = &v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = *(a2 + 120);
  (*(v17 + 16))(v19, v35, v16);
  sub_100007130(a4, v46);
  (*(v12 + 16))(v15, v34, v11);
  v20 = (*(v17 + 80) + 16) & ~*(v17 + 80);
  v21 = (v18 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = (v21 + 47) & 0xFFFFFFFFFFFFFFF8;
  v23 = (v22 + 15) & 0xFFFFFFFFFFFFFFF8;
  v24 = (*(v12 + 80) + v23 + 8) & ~*(v12 + 80);
  v25 = swift_allocObject();
  (*(v17 + 32))(v25 + v20, v19, v16);
  sub_100004A04(v46, v25 + v21);
  *(v25 + v22) = v33;
  *(v25 + v23) = v38;
  (*(v12 + 32))(v25 + v24, v32, v31);
  aBlock[4] = sub_10001C340;
  aBlock[5] = v25;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000E6BC;
  aBlock[3] = &unk_1001B0A40;
  v26 = _Block_copy(aBlock);

  v27 = v36;
  static DispatchQoS.unspecified.getter();
  v44 = &_swiftEmptyArrayStorage;
  sub_100015F10(&qword_1001B9CE8, 255, &type metadata accessor for DispatchWorkItemFlags);
  sub_100065020(&unk_1001BD3B0, &qword_100172950);
  sub_10001B27C(&qword_1001B9CF0, &unk_1001BD3B0, &qword_100172950);
  v28 = v39;
  v29 = v41;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v26);
  (*(v43 + 8))(v28, v29);
  (*(v40 + 8))(v27, v42);
}

uint64_t sub_100015D90()
{
  v21 = type metadata accessor for Session.Metadata();
  sub_100002BDC(v21);
  v2 = v1;
  v3 = *(v1 + 80);
  v4 = (v3 + 16) & ~v3;
  v6 = (*(v5 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 47) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = sub_100065020(&qword_1001B9CE0, &qword_100170F90);
  sub_100002BDC(v9);
  v11 = v10;
  v13 = v12;
  v14 = *(v11 + 80);
  v15 = (v14 + v8 + 8) & ~v14;
  v20 = *(v13 + 64);
  v16 = v3 | v14;
  (*(v2 + 8))(v0 + v4, v21);
  sub_100003324((v0 + v6));
  v17 = *(v0 + v7);

  v18 = *(v0 + v8);

  (*(v11 + 8))(v0 + v15, v9);

  return _swift_deallocObject(v0, v15 + v20, v16 | 7);
}

uint64_t sub_100015F10(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    sub_1000055A4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100015F54(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100015F9C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100015FE4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10001602C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t sub_10001641C(uint64_t a1)
{
  *(v1 + 160) = a1;

  return type metadata accessor for DaemonRequest(0);
}

uint64_t sub_100016434()
{

  return swift_retain_n();
}

uint64_t sub_100016484(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100016494(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_1000164E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, void (*a7)(uint64_t), uint64_t (*a8)(uint64_t, uint64_t))
{
  v14 = sub_100065020(&qword_1001B9060, &unk_10016FCD0);
  sub_100002F04(v14);
  v16 = *(v15 + 64);
  sub_100004B1C();
  __chkstk_darwin(v17);
  sub_100003C70();
  sub_100065020(a5, a6);
  UUIDIdentifier.uuid.getter();
  type metadata accessor for UUID();
  sub_1000039A8();
  sub_100009BFC(v18, v19, v20, v21);
  a7(v8);

  return a8(a3, a4);
}

unint64_t sub_100016624()
{
  result = qword_1001BB9A0;
  if (!qword_1001BB9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001BB9A0);
  }

  return result;
}

void sub_1000166A4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_1000166C4()
{
  v3 = v0[37];
  v2 = v0[38];
  v4 = v0[32];
  v5 = v0[29];

  return static Task<>.isCancelled.getter();
}

uint64_t sub_1000166E4()
{
  *(v0 + 4) = v1;
  *(v0 + 12) = 2080;
}

void sub_100016704()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v5 = *(v0 + 40);
  v4 = *(v0 + 48);
}

unint64_t sub_100016730()
{
  v1 = v0[5];
  v2 = sub_10004B7DC(v0[2]);
  v0[26] = v2;
  v3 = v2;
  v4 = (v2 + OBJC_IVAR____TtC13modelmanagerd13DaemonSession_unsafeManagerOwnedState);
  v5 = *(v2 + OBJC_IVAR____TtC13modelmanagerd13DaemonSession_unsafeManagerOwnedState + 16);
  *v4 = 1;
  v4[16] = v5;
  v6 = sub_10001CFA8();
  v0[27] = v6;
  v7 = v6;
  sub_10001D000(v0[25]);
  v76 = v7;
  v77 = sub_10004BB90();
  v72 = v8;
  v9 = v0[16];
  v11 = v0[13];
  v10 = v0[14];
  v12 = v0[4];
  v78 = OBJC_IVAR____TtC13modelmanagerd13DaemonSession_auditToken;
  (*(v0[18] + 16))(v0[19], v3 + OBJC_IVAR____TtC13modelmanagerd13DaemonSession_auditToken, v0[17]);
  v13 = OBJC_IVAR____TtC13modelmanagerd13DaemonSession_metadata;
  Session.Metadata.id.getter();
  v14 = type metadata accessor for UUID();
  v15 = sub_100002BDC(v14);
  v74 = v16;
  v75 = v15;
  v71 = *(v17 + 64) + 15;
  swift_task_alloc();
  UUIDIdentifier.uuid.getter();
  v0[28] = *(v10 + 8);
  v0[29] = (v10 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v18 = sub_10000A9EC();
  v19(v18);
  Session.Metadata.useCaseID.getter();
  v79 = v3;
  v73 = v13;
  Session.Metadata.onBehalfOfPID.getter();
  v20 = *(v12 + 16);
  v21 = _swiftEmptyArrayStorage;
  if (v20)
  {
    v22 = v0[11];
    v84 = v0[7];
    v85 = v0[8];
    v83 = v0[6];
    v23 = v0[4];
    sub_100070BF0();
    v21 = _swiftEmptyArrayStorage;
    result = sub_10014AFA0(v23);
    v27 = v23;
    v28 = 0;
    v29 = v23 + 64;
    v80 = v23 + 72;
    v87 = v23;
    v81 = v20;
    v82 = v23 + 64;
    if ((result & 0x8000000000000000) == 0)
    {
      while (result < 1 << *(v27 + 32))
      {
        if ((*(v29 + 8 * (result >> 6)) & (1 << result)) == 0)
        {
          goto LABEL_25;
        }

        if (*(v27 + 36) != v25)
        {
          goto LABEL_26;
        }

        v90 = 1 << result;
        v91 = result >> 6;
        v86 = v26;
        v88 = v28;
        v89 = v25;
        v30 = *(v83 + 48);
        v31 = v0[9];
        v32 = v0[10];
        v94 = result;
        v95 = v21;
        v34 = v0[7];
        v33 = v0[8];
        v35 = (*(v27 + 48) + 16 * result);
        v36 = *v35;
        v37 = v35[1];
        v92 = v0[12];
        v93 = *(v22 + 72);
        (*(v22 + 16))(v31 + v30, *(v27 + 56) + v93 * result, v32);
        *v33 = v36;
        *(v85 + 8) = v37;
        v38 = *(v22 + 32);
        v38(&v33[*(v83 + 48)], v31 + v30, v32);
        sub_10009FF08(v33, v34);
        v39 = *(v84 + 8);

        v40 = v34 + *(v83 + 48);
        v21 = v95;
        v38(v92, v40, v32);
        v41 = v95[2];
        if (v41 >= v95[3] >> 1)
        {
          sub_100070BF0();
          v21 = v95;
        }

        v42 = v0[12];
        v43 = v0[10];
        v21[2] = v41 + 1;
        v38(v21 + ((*(v22 + 80) + 32) & ~*(v22 + 80)) + v41 * v93, v42, v43);
        v27 = v87;
        v44 = 1 << *(v87 + 32);
        result = v94;
        if (v94 >= v44)
        {
          goto LABEL_27;
        }

        v29 = v82;
        v45 = *(v82 + 8 * v91);
        if ((v45 & v90) == 0)
        {
          goto LABEL_28;
        }

        if (*(v87 + 36) != v89)
        {
          goto LABEL_29;
        }

        v46 = v45 & (-2 << (v94 & 0x3F));
        if (v46)
        {
          v44 = __clz(__rbit64(v46)) | v94 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v47 = v91 << 6;
          v48 = (v80 + 8 * v91);
          v49 = v91 + 1;
          while (v49 < (v44 + 63) >> 6)
          {
            v51 = *v48++;
            v50 = v51;
            v47 += 64;
            ++v49;
            if (v51)
            {
              sub_100016E94(v94, v89, v86 & 1);
              v27 = v87;
              v44 = __clz(__rbit64(v50)) + v47;
              goto LABEL_18;
            }
          }

          sub_100016E94(v94, v89, v86 & 1);
          v27 = v87;
        }

LABEL_18:
        v28 = v88 + 1;
        if (v88 + 1 == v81)
        {
          goto LABEL_21;
        }

        v26 = 0;
        v25 = *(v27 + 36);
        result = v44;
        if (v44 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }

  else
  {
LABEL_21:
    v52 = v0[25];
    v53 = v0[22];
    v54 = v0[19];
    v55 = v0[5];
    v56 = v0[3];
    v96 = v0[2];
    v97 = v0[13];

    InferenceProviderPrewarmInformation.init(bundleIdentifier:requestorAuditToken:sessionUUID:useCaseIdentifier:onBehalfOfPid:metadata:customAssetConfigurations:)();

    v57 = v55[41];
    v58 = v55[42];
    sub_100003370(v55 + 38, v57);
    v59 = InferenceProviderDescriptor.id.getter();
    (*(v58 + 88))(v96, v59, v60, v77, v72, v79 + v78, v57, v58, v21);

    v61 = v55[50];
    v62 = v55[51];
    sub_100003370(v55 + 47, v61);
    v63 = swift_task_alloc();
    UUIDIdentifier.uuid.getter();
    Session.Metadata.useCaseID.getter();
    sub_1000294D0();
    v64 = sub_100091E08(v76);
    (*(v62 + 24))(v63, 2, v79 + v73, v96, v64, v61, v62);

    (*(v74 + 8))(v63, v75);

    v65 = v55[21];
    v66 = swift_task_alloc();
    v0[30] = v66;
    *v66 = v0;
    v66[1] = sub_100054794;
    v67 = v0[25];
    v68 = v0[22];
    v69 = v0[4];
    v70 = v0[2];

    return sub_100017038();
  }

  return result;
}

uint64_t sub_100016E94(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

void sub_100016EA0()
{
  sub_1000055B0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  if (sub_1000136A8())
  {
    v14 = *(v0 + 80);
    sub_10004BE14();
  }

  v15 = sub_100065020(&qword_1001BD070, &qword_100173948);
  sub_100002F04(v15);
  v17 = *(v16 + 64);
  sub_100004B1C();
  __chkstk_darwin(v18);
  sub_100003C70();
  v19 = sub_100003370((v1 + 40), *(v1 + 64));
  __chkstk_darwin(v19);
  sub_10000A328();
  *(v20 - 48) = v13;
  *(v20 - 40) = v11;
  *(v20 - 32) = v9;
  *(v20 - 24) = v1;
  *(v20 - 16) = v7;
  *(v20 - 8) = v5;
  sub_1000084CC(v21);
  sub_1000030E4();
  if (v5)
  {
  }

  v22 = type metadata accessor for GenerativeFunctionsInstrumentationEvent();
  sub_10000A6F0(v22);
  sub_10000ECD8(v3, &qword_1001BD070, &qword_100173948);
  sub_100002EEC();
}

void sub_100016FE0()
{
  v1 = *v0;
  sub_10001B4AC();
  *v0 = v2;
}

uint64_t sub_100017038()
{
  sub_100002BAC();
  v1[25] = v2;
  v1[26] = v0;
  v1[23] = v3;
  v1[24] = v4;
  v1[21] = v5;
  v1[22] = v6;
  v1[20] = v7;
  v8 = type metadata accessor for InferenceProviderDescriptor();
  v1[27] = v8;
  sub_100002F44(v8);
  v1[28] = v9;
  v11 = *(v10 + 64);
  v1[29] = sub_100002C58();
  v12 = sub_100065020(&qword_1001BB3F8, &qword_100171D50);
  sub_100002F04(v12);
  v14 = *(v13 + 64);
  v1[30] = sub_100002C58();
  v15 = sub_100065020(&qword_1001BB408, &unk_100171DC0);
  sub_100002F04(v15);
  v17 = *(v16 + 64);
  v1[31] = sub_100002C58();
  v18 = sub_100065020(&qword_1001BB410, &unk_100172340);
  sub_100002F04(v18);
  v20 = *(v19 + 64);
  v1[32] = sub_100002C58();
  v21 = type metadata accessor for AssetPolicy();
  v1[33] = v21;
  sub_100002F44(v21);
  v1[34] = v22;
  v24 = *(v23 + 64);
  v1[35] = sub_10000F0C0();
  v1[36] = swift_task_alloc();
  v25 = sub_100065020(&qword_1001B94F0, &unk_100172060);
  v1[37] = v25;
  sub_100002F44(v25);
  v1[38] = v26;
  v28 = *(v27 + 64);
  v1[39] = sub_10000F0C0();
  v1[40] = swift_task_alloc();
  v1[41] = swift_task_alloc();
  v1[42] = swift_task_alloc();
  v29 = sub_100002C10();

  return _swift_task_switch(v29, v30, v31);
}

uint64_t sub_100017264()
{
  sub_100001ED0();
  v1 = v0[18];
  v2 = v0[8];
  sub_100002EC0(v0[7]);
  v0[39] = *(v3 + 128);

  ModelXPCRequest.PrewarmSession.sessionID.getter();
  v0[40] = ModelXPCRequest.PrewarmSession.metadata.getter();
  v4 = swift_task_alloc();
  v0[41] = v4;
  *v4 = v0;
  v4[1] = sub_100054604;
  v5 = v0[37];
  sub_1000031B8(v0[18]);

  return sub_100017334();
}

uint64_t sub_100017334()
{
  sub_100002BAC();
  v1[4] = v2;
  v1[5] = v0;
  v1[2] = v3;
  v1[3] = v4;
  v5 = sub_100065020(&qword_1001B9C60, &qword_1001706B8);
  v1[6] = v5;
  sub_100002F04(v5);
  v7 = *(v6 + 64);
  v1[7] = sub_10000F0C0();
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v8 = type metadata accessor for CustomAssetConfiguration();
  v1[10] = v8;
  sub_100002F44(v8);
  v1[11] = v9;
  v11 = *(v10 + 64);
  v1[12] = sub_100002C58();
  v12 = sub_100065020(&qword_1001B94F0, &unk_100172060);
  v1[13] = v12;
  sub_100002F44(v12);
  v1[14] = v13;
  v15 = *(v14 + 64);
  v1[15] = sub_10000F0C0();
  v1[16] = swift_task_alloc();
  v16 = type metadata accessor for AuditToken();
  v1[17] = v16;
  sub_100002F44(v16);
  v1[18] = v17;
  v19 = *(v18 + 64);
  v1[19] = sub_100002C58();
  v20 = type metadata accessor for InferenceProviderPrewarmInformation();
  v1[20] = v20;
  sub_100002F44(v20);
  v1[21] = v21;
  v23 = *(v22 + 64);
  v1[22] = sub_100002C58();
  v24 = type metadata accessor for InferenceProviderDescriptor();
  v1[23] = v24;
  sub_100002F44(v24);
  v1[24] = v25;
  v27 = *(v26 + 64);
  v1[25] = sub_100002C58();
  v28 = sub_100002C10();

  return _swift_task_switch(v28, v29, v30);
}

uint64_t sub_10001756C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_100002BAC();
  sub_100003324((v14 + 176));
  v15 = async function pointer to Task<>.value.getter[1];
  swift_task_alloc();
  sub_100004B34();
  *(v14 + 624) = v16;
  *v16 = v17;
  sub_100002FAC(v16);
  v18 = sub_1000A0258();

  return Task<>.value.getter(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1000175F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_10000385C();
  sub_100003284();
  if (*(v14 + 320))
  {
    v16 = *(v14 + 264);
  }

  else
  {
    v17 = *(v14 + 296);
    v18 = *(v14 + 280);
    (*(v14 + 288))(*(v14 + 224), *(v14 + 152), *(v14 + 208));
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();
    v21 = sub_1000038BC(v20);
    v22 = *(v14 + 304);
    v24 = *(v14 + 216);
    v23 = *(v14 + 224);
    v25 = *(v14 + 208);
    if (v21)
    {
      sub_10000A05C();
      swift_slowAlloc();
      a9 = v22;
      sub_10000A45C();
      swift_slowAlloc();
      sub_1000265BC();
      *v22 = 136315138;
      sub_1000281BC(&qword_1001B9C68, &qword_1001B94F0, &unk_100172060);
      sub_100042FBC();
      v26 = sub_1000DABA4();
      (v22)(v26);
      v27 = sub_10000CD1C();
      sub_100004A3C(v27, v28, v29);
      sub_100005974();

      *(v22 + 4) = v23;
      sub_1000033FC();
      _os_log_impl(v30, v31, v32, v33, v34, 0xCu);
      sub_100003324(v15);
      sub_1000039CC();

      sub_10000BFCC();
    }

    else
    {

      v35 = sub_100011BF0();
      (v22)(v35);
    }

    v36 = *(v14 + 264);
    v37 = *(v14 + 272);
    v38 = *(v14 + 176);
    v39 = *(v14 + 152);
    v40 = swift_task_alloc();
    *(v40 + 16) = v38;
    *(v40 + 24) = v39;
    v41 = sub_100032338();
    sub_100028248(v41, v42, v43);
  }

  v44 = *(v14 + 224);
  v45 = *(v14 + 232);
  v46 = *(v14 + 200);
  sub_100003324((v14 + 56));
  sub_10000ED84(v14 + 16, &unk_1001B9CB0);

  sub_100002F54();
  sub_100003540();

  return v48(v47, v48, v49, v50, v51, v52, v53, v54, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1000177D8()
{
  sub_100001ED0();
  sub_10000D554();
  sub_100004B40();
  *v4 = v3;
  v5 = *(v1 + 256);
  v6 = *v2;
  sub_100003744();
  *v7 = v6;
  *(v9 + 264) = v8;
  *(v9 + 272) = v0;

  sub_10000A9E0();
  v11 = *(v10 + 176);
  sub_10000E700();

  return _swift_task_switch(v12, v13, v14);
}

uint64_t sub_1000178EC()
{
  sub_10000385C();
  sub_100003284();
  v2 = *v1;
  sub_100004B40();
  *v4 = v3;
  v5 = v2[55];
  *v4 = *v1;
  *(v3 + 448) = v0;

  sub_10000A9E0();
  v7 = *(v6 + 432);
  v8 = v2[53];
  v9 = v2[52];
  v10 = v2[33];
  v11 = v2[32];
  v12 = v2[31];
  v13 = v2[29];
  v14 = v2[28];
  v15 = v2[27];
  v16 = v2[25];

  v17 = *(v14 + 8);
  v18 = sub_10000CF10();
  v19(v18);
  (*(v11 + 8))(v10, v12);
  sub_100003540();

  return _swift_task_switch(v20, v21, v22);
}

void sub_100017B34()
{
  sub_1000055B0();
  v88 = v1;
  v89 = v0;
  v87 = v2;
  v4 = v3;
  v6 = v5;
  v78 = type metadata accessor for AppleIntelligenceReportingError();
  v7 = sub_100002BDC(v78);
  v76 = v8;
  v10 = *(v9 + 64);
  __chkstk_darwin(v7);
  sub_100009C24();
  v80 = v11;
  sub_100002F1C();
  __chkstk_darwin(v12);
  sub_1000079F8();
  v77 = v13;
  sub_100002F1C();
  __chkstk_darwin(v14);
  sub_1000079F8();
  v79 = v15;
  sub_100002F1C();
  __chkstk_darwin(v16);
  v73[1] = v73 - v17;
  v18 = sub_100065020(&qword_1001B9048, &qword_10016FCB8);
  sub_100002F04(v18);
  v20 = *(v19 + 64);
  sub_100004B1C();
  __chkstk_darwin(v21);
  v86 = v73 - v22;
  v23 = sub_100065020(&qword_1001B9050, &qword_10016FCC0);
  sub_100002F04(v23);
  v25 = *(v24 + 64);
  sub_100004B1C();
  __chkstk_darwin(v26);
  v27 = sub_100065020(&qword_1001B9058, &qword_10016FCC8);
  sub_100002F04(v27);
  v29 = *(v28 + 64);
  sub_100004B1C();
  __chkstk_darwin(v30);
  v31 = type metadata accessor for AppleIntelligenceEvent();
  v32 = sub_100002BDC(v31);
  v91 = v33;
  v92 = v32;
  v35 = *(v34 + 64);
  __chkstk_darwin(v32);
  sub_100002B8C();
  v90 = v37 - v36;
  v38 = subsystemName.getter();
  v84 = v39;
  v85 = v38;
  v40 = sub_100065020(&qword_1001B9060, &unk_10016FCD0);
  v41 = sub_100002F04(v40);
  v43 = *(v42 + 64);
  __chkstk_darwin(v41);
  v44 = type metadata accessor for UUID();
  v74 = *(v44 - 8);
  v75 = v6;
  v73[0] = *(v74 + 16);
  (v73[0])(v73 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0), v6, v44);
  sub_1000039A8();
  sub_100009BFC(v45, v46, v47, v44);
  v48 = *&aExecuterqueuer[8 * v4];
  v82 = *&aExecuterqueuer[8 * v4 + 24];
  v83 = v48;
  type metadata accessor for UUIDIdentifier();
  sub_100003978();
  v53 = sub_100009BFC(v49, v50, v51, v52);
  v81 = v73;
  __chkstk_darwin(v53);
  sub_100003978();
  v57 = sub_100009BFC(v54, v55, v56, v44);
  __chkstk_darwin(v57);
  sub_100003978();
  sub_100009BFC(v58, v59, v60, v44);

  Dictionary.init(dictionaryLiteral:)();
  AppleIntelligenceUseCase.init(useCaseIdentifier:parameters:)();
  type metadata accessor for AppleIntelligenceUseCase();
  sub_1000039A8();
  sub_100009BFC(v61, v62, v63, v64);
  type metadata accessor for AppleIntelligenceReportingMetadata();
  sub_100003978();
  sub_100009BFC(v65, v66, v67, v68);

  v69 = v92;
  sub_100005600();
  v70 = v90;
  v71 = v91;
  AppleIntelligenceInferenceEvent.init(subsystem:sessionIdentifier:stepIdentifier:invocationRequestIdentifier:clientRequestIdentifier:modelManagerRequestIdentifier:errors:useCaseIdentifier:additionalUseCaseIdentifiers:requestorBundleIdentifier:onBehalfOfBundleIdentifier:inferenceProviderIdentifier:assetBundleIdentifier:assets:metadata:)();
  (*(v71 + 104))(v70, enum case for AppleIntelligenceEvent.inference(_:), v69);
  if (*(v89 + 16))
  {
    v72 = *(v89 + 16);

    _s26AppleIntelligenceReporting13EventReporterC04emitabD09eventInfoyAA0abD0O_tAA0abC5ErrorOYKF();
    (*(v71 + 8))(v70, v69);
  }

  else
  {
    (*(v71 + 8))(v70, v69);
  }

  sub_100002EEC();
}

unint64_t sub_100018380()
{
  result = qword_1001BB998;
  if (!qword_1001BB998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001BB998);
  }

  return result;
}

void sub_1000183D4(uint64_t a1@<X3>, uint64_t a2@<X4>, uint64_t a3@<X5>, uint64_t a4@<X6>, uint64_t a5@<X7>, uint64_t a6@<X8>, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{

  sub_100026D78(a6 + 1, v30, v31, a1, a2, a3, a4, a5, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30);
}

uint64_t sub_100018404()
{
  v3 = v0[31];
  v2 = v0[32];
  v4 = v0[28];
  v5 = v0[25];
  v7 = v0[21];
  v6 = v0[22];
  v9 = v0[19];
  v8 = v0[20];
}

uint64_t sub_100018428()
{
  sub_100004A04((v0 + 96), v0 + 56);
  v1 = *(v0 + 88);
  sub_100003370((v0 + 56), *(v0 + 80));
  result = v1 + 16;
  v3 = *(v1 + 16);
  return result;
}

uint64_t (*sub_100018478(uint64_t *a1))()
{
  *(v1 + 56) = a1;
  v2 = *a1;
  return sub_10012C434;
}

uint64_t sub_100018498()
{
  v2 = v0[14];
  v3 = v0[11];
  v4 = v0[10];
  v5 = v0[8];
  v7 = v0[7];

  return swift_slowAlloc();
}

uint64_t sub_1000184C4()
{
  v2 = *(v0 + 40);

  return Hasher.init(_seed:)();
}

uint64_t sub_1000184E0(uint64_t a1)
{
  v2 = ((*(a1 + 48) + 3) & 0x1FFFFFFFCLL) + 4;
  v3 = *(a1 + 52) | 3;

  return swift_allocObject();
}

uint64_t sub_100018508(void *a1)
{
  a1[2] = v1;
  a1[3] = v2;
  a1[4] = v1;

  return swift_retain_n();
}

void sub_10001852C(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

uint64_t sub_10001855C()
{
  v2 = v0[46];
  v3 = v0[26];
  v4 = v0[27];
  v6 = v0[22];
  v5 = v0[23];
  v7 = v0[21];
}

void sub_10001857C()
{
  *(v2 - 144) = 0;
  *(v2 - 136) = 0;
  *(v2 - 128) = v0;
  *(v2 - 120) = v1;
}

uint64_t sub_1000185C4@<X0>(uint64_t a1@<X8>)
{
  *(v1 + 184) = a1;
  v3 = *(v1 + 112) + ((*(v1 + 248) + 32) & ~*(v1 + 248)) + *(v1 + 176) * a1;
  v4 = *(v1 + 120) + 112;

  return sub_10006ABDC(v4, v1 + 16);
}

uint64_t sub_100018630()
{
  v13 = v0[32];
  v8 = v0[31];
  v3 = v0[28];
  *(v1 - 120) = v0[29];
  v4 = v0[25];
  *(v1 - 168) = v0[26];
  v5 = v0[24];
  v9 = v0[23];
  v10 = v0[22];
  v11 = v0[21];
  v12 = v0[20];
  v6 = v0[17];

  return type metadata accessor for RequestMetadata();
}

uint64_t sub_100018688()
{
  v2 = *(v1 - 112);
  v3 = *(*(v1 - 120) + 16);
  return v0;
}

void sub_1000186A4()
{

  sub_1000652FC();
}

uint64_t sub_100018720(uint64_t a1)
{
  *(a1 + 8) = sub_10012D078;
  v2 = *(v1 + 48);
  return *(v1 + 40);
}

double sub_10001874C(uint64_t a1, double result)
{
  if (*&a1 < result)
  {
    return *&a1;
  }

  return result;
}

uint64_t sub_10001875C()
{
  *(v0 + 4) = v1;
  *(v0 + 12) = 2112;

  return swift_errorRetain();
}

void sub_10001878C()
{
  v3 = v0[34];
  v2 = v0[35];
  v4 = v0[33];
  v5 = v0[19];

  sub_10003E244();
}

uint64_t sub_1000187B4()
{

  return swift_task_alloc();
}

uint64_t sub_1000187D8()
{

  return swift_beginAccess();
}

uint64_t sub_1000187F4()
{
  v2 = v0[27];
  v3 = v0[28];
  v5 = v0[25];
  v4 = v0[26];
  v6 = v0[23];
  v7 = v0[20];
  v8 = v0[18];
  v9 = v0[13];
}

uint64_t sub_100018830(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_100004A3C(a1, a2, &a9);
}

uint64_t sub_100018884(uint64_t a1)
{
  *(a1 + 8) = sub_1000C8744;
  v2 = v1[5];
  v3 = v1[6];
  return v1[20];
}

uint64_t sub_1000188B4()
{
}

uint64_t sub_1000188CC()
{
  v3 = v0[21];
  v2 = v0[22];
  v4 = v0[20];
  v5 = v0[18];
  v7 = v0[14];
  v6 = v0[15];
  v8 = v0[11];
}

uint64_t sub_1000188F0()
{

  return swift_arrayDestroy();
}

uint64_t sub_10001890C()
{

  return _CocoaArrayWrapper.endIndex.getter();
}

uint64_t sub_100018958()
{

  return Set.description.getter();
}

void sub_1000189C8()
{
  v1 = v0[39];
  v2 = v0[34];
  v3 = *(v0[25] + 168);
}

uint64_t sub_1000189DC()
{
  v1 = v0[5];
  v2 = v0[6];
  sub_100003370(v0 + 2, v1);
  v3 = *(v2 + 32);
  return v1;
}

uint64_t sub_100018A38(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = *(v2 + 152);
  return v3;
}

uint64_t sub_100018A64()
{

  return dispatch thunk of static Comparable.>= infix(_:_:)();
}

uint64_t sub_100018AB0()
{

  return swift_slowAlloc();
}

void sub_100018ACC(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 8u);
}

uint64_t sub_100018AEC()
{
  v0 = sub_100065020(&qword_1001B9060, &unk_10016FCD0);
  sub_100002F04(v0);
  v2 = *(v1 + 64);
  sub_100004B1C();
  __chkstk_darwin(v3);
  sub_100065020(&qword_1001B94F0, &unk_100172060);
  UUIDIdentifier.uuid.getter();
  type metadata accessor for UUID();
  sub_1000039A8();
  sub_100009BFC(v4, v5, v6, v7);
  return GenerativeFunctionsInstrumentationEvent.Identifiers.modelManagerSessionIdentifier.setter();
}

uint64_t sub_100018C30(uint64_t a1)
{
  v1[2] = a1;
  v3 = v1[7];
  v4 = v1[5];

  return swift_errorRetain();
}

uint64_t sub_100018CAC()
{
  v2 = v0[36];
  v4 = v0[33];
  v3 = v0[34];
  v5 = v0[32];
  v6 = v0[29];
}

void sub_100018CCC(void *a1@<X0>, const char *a2@<X3>, os_log_type_t a3@<W8>)
{

  _os_log_impl(a1, v3, a3, a2, v4, 0x16u);
}

uint64_t sub_100018D00()
{
  v4 = v1[28];
  v5 = v1[29];
  v6 = v1[27];

  return sub_100019334(v6, v4, v5, v0, v2);
}

uint64_t sub_100018D38(_WORD *a1)
{
  *a1 = 0;
}

uint64_t sub_100018D54(uint64_t a1)
{
  *(a1 + 16) = v1;

  return sub_1001281F8(sub_10014A580, v3, v2);
}

uint64_t sub_100018D8C()
{
  v2 = v0[46];
  v4 = v0[42];
  v3 = v0[43];
  v5 = v0[31];
  v6 = v0[28];
  v7 = v0[14];

  return type metadata accessor for Logger();
}

uint64_t sub_100018DC4()
{
  v2 = *(v0 + 408);
  v3 = *(v0 + 312);
}

uint64_t sub_100018DEC(uint64_t a1)
{

  return sub_100009BFC(v1, 1, 1, a1);
}

void sub_100018E18(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 0x16u);
}

uint64_t sub_100018E50()
{

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_100018E6C(uint64_t (*a1)(uint64_t *), uint64_t a2, uint64_t a3, void (*a4)(void), unint64_t *a5, void (*a6)(uint64_t))
{
  v8 = v7;
  if ((a3 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    a4(0);
    sub_10005FAF0(a5, a6);
    Set.Iterator.init(_cocoa:)();
    result = v31;
    v13 = v32;
    v6 = v33;
    v14 = v34;
    v15 = v35;
  }

  else
  {
    v16 = *(a3 + 32);
    sub_100011E24();
    v13 = v17;
    sub_10000CFD8();
    v15 = v18 & v19;
    v21 = v20;

    result = v21;
    v14 = 0;
  }

  v30 = result;
  if (result < 0)
  {
    goto LABEL_11;
  }

LABEL_5:
  v22 = v14;
  v23 = v15;
  v24 = v14;
  if (v15)
  {
LABEL_9:
    v25 = (v23 - 1) & v23;
    v26 = *(*(result + 48) + ((v24 << 9) | (8 * __clz(__rbit64(v23)))));

    if (v26)
    {
      while (1)
      {
        v36 = v26;
        v27 = a1(&v36);
        if (v8)
        {
          break;
        }

        if (v27)
        {
          goto LABEL_19;
        }

        v14 = v24;
        v15 = v25;
        result = v30;
        if ((v30 & 0x8000000000000000) == 0)
        {
          goto LABEL_5;
        }

LABEL_11:
        if (__CocoaSet.Iterator.next()())
        {
          a4(0);
          sub_1000358A4();
          swift_dynamicCast();
          v26 = v36;
          v24 = v14;
          v25 = v15;
          if (v36)
          {
            continue;
          }
        }

        goto LABEL_17;
      }

LABEL_19:
      sub_10014B068();
      sub_100007F18();
    }

    else
    {
LABEL_17:
      sub_10014B068();
      sub_100007F18();
      return 0;
    }

    return v26;
  }

  else
  {
    while (1)
    {
      v24 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v24 >= ((v6 + 64) >> 6))
      {
        goto LABEL_17;
      }

      v23 = *(v13 + 8 * v24);
      ++v22;
      if (v23)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1000190A0(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);

  return sub_100004A3C(v2, v3, va);
}

void *sub_1000190BC(unint64_t a1)
{

  return sub_100140DC4(a1, sub_100149310);
}

uint64_t sub_1000190EC(uint64_t a1)
{
  v4 = *(v2 + 56) + 40 * a1;

  return sub_100007130(v4, v1);
}

uint64_t sub_10001910C()
{

  return swift_dynamicCast();
}

uint64_t sub_100019130()
{
}

uint64_t sub_100019148(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v21 = *(a20 + 40);

  return Hasher.init(_seed:)();
}

uint64_t sub_100019164()
{
  v2 = v0[10];
  v3 = v0[11];
  v4 = v0[8];
  *(v4 + 164) = 0;
  v5 = *(v4 + 144);
  *(v4 + 144) = 0;
}

uint64_t sub_100019194(void *a1)
{
  a1[2] = v1;
  a1[3] = v3;
  a1[4] = v2;
  a1[5] = v1;

  return swift_retain_n();
}

uint64_t sub_1000191D4()
{
  v1 = v0[11];
  sub_100003370(v0 + 7, v0[10]);
  result = v1 + 40;
  v3 = *(v1 + 40);
  return result;
}

void sub_100019200()
{
  *(v0 + 136) = 0;
  *(v0 + 144) = 0xE000000000000000;

  _StringGuts.grow(_:)(29);
}

uint64_t sub_10001922C@<X0>(uint64_t a1@<X8>)
{
  result = v2[41];
  v4 = v2[36];
  v5 = *(v2[37] + 16);
  v6 = a1 + *(v1 + 20);
  return result;
}

uint64_t sub_100019244()
{
  result = v0;
  v3 = *(v1 - 140);
  v4 = *(v1 - 136);
  v5 = *(v1 - 152);
  return result;
}

void sub_100019280()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
}

__n128 sub_1000192C0()
{
  v1 = *(v0 - 128);
  *(v0 - 224) = *(v0 - 144);
  *(v0 - 208) = v1;
  result = *(v0 - 112);
  *(v0 - 192) = result;
  *(v0 - 176) = *(v0 - 96);
  return result;
}

uint64_t sub_1000192DC(uint64_t a1, uint64_t a2)
{
  v3 = sub_100005B00();
  v5 = v4(v3);
  sub_100002C00(v5);
  v7 = *(v6 + 16);
  v8 = sub_1000062B0();
  v9(v8);
  return a2;
}

uint64_t sub_100019338()
{
  v1 = sub_10002A104();
  v3 = v2(v1);
  sub_100002C00(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t sub_10001938C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InferenceProviderAsset.ManagerOwnedState(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000193F0(uint64_t a1)
{
  v2 = type metadata accessor for InferenceProviderAsset.ManagerOwnedState(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10001944C()
{

  return swift_task_create();
}

uint64_t sub_1000194D4()
{
  v3 = v0[51];
  v2 = v0[52];
  v4 = v0[49];
  v5 = v0[50];
  v7 = v0[47];
  v6 = v0[48];
  v9 = v0[45];
  v8 = v0[46];
  v11 = v0[43];
  v10 = v0[44];
  v13 = v0[42];
  v14 = v0[41];
  v15 = v0[40];
  v16 = v0[37];
  v17 = v0[36];
  v18 = v0[35];
  v19 = v0[34];
  v20 = v0[32];
  v21 = v0[29];
}

uint64_t sub_100019540()
{
  v2 = v0[42];
  v4 = v0[38];
  v3 = v0[39];
  v5 = (v0[41] + 15) & 0xFFFFFFFFFFFFFFF0;

  return swift_task_alloc();
}

uint64_t sub_100019560()
{
  v10 = v0[47];
  v11 = v0[48];
  v2 = v0[36];
  v9 = v0[34];
  v3 = v0[32];
  v4 = v0[29];
  v12 = v0[28];
  v14 = v0[24];
  v13 = v0[21];
  v5 = v0[18];
  v6 = v0[19];
  v7 = v0[17];

  return swift_slowAlloc();
}

void sub_1000195D4(void *a1)
{

  _os_log_impl(a1, v2, v1, v3, v4, 2u);
}

uint64_t sub_1000195F8(float a1)
{
  *v1 = a1;

  return type metadata accessor for InferenceProviderAssetDescriptor();
}

uint64_t sub_10001961C()
{

  return sub_10000D4B4(v1, v0);
}

uint64_t sub_100019648()
{
  *(v1 + 4) = v0;
  *(v1 + 12) = 2112;

  return swift_errorRetain();
}

uint64_t sub_100019684()
{
  v27 = type metadata accessor for InferenceProviderAsset.ManagerOwnedState(0);
  sub_100006098(v27);
  v3 = *(v2 + 64);
  __chkstk_darwin(v4);
  sub_100007CB0();
  v5 = OBJC_IVAR____TtC13modelmanagerd29InferenceProviderAssetManager_assets;
  sub_100004BA0();
  v6 = *&v5[v0];
  if ((v6 & 0xC000000000000001) != 0)
  {

    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_10001C150();
    sub_100011434();
    sub_1000EE39C(v7, v8);
    result = Set.Iterator.init(_cocoa:)();
    v6 = v29;
    v10 = v30;
    v0 = v31;
    v11 = v32;
    v12 = v33;
  }

  else
  {
    v13 = -1 << *(v6 + 32);
    v10 = v6 + 56;
    v14 = *(v6 + 56);
    sub_100018A20();
    v12 = v15 & v16;
    result = swift_bridgeObjectRetain_n();
    v11 = 0;
  }

  v26 = v0;
  v17 = (v0 + 64) >> 6;
  while (1)
  {
    v18 = v12;
    v19 = v11;
    if ((v6 & 0x8000000000000000) == 0)
    {
      break;
    }

    if (!__CocoaSet.Iterator.next()())
    {
LABEL_17:
      v24 = 0;
      goto LABEL_18;
    }

    type metadata accessor for InferenceProviderAsset(0);
    sub_100009E64();
    v24 = v28;
    if (!v28)
    {
      goto LABEL_18;
    }

LABEL_14:
    v25 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState;
    sub_100004BA0();
    sub_10001938C(v25 + v24, v1);

    LODWORD(v25) = *(v1 + *(v27 + 56));
    result = sub_1000193F0(v1);
    if (v25 == 1)
    {
      v24 = 1;
LABEL_18:
      sub_100019334(v6, v10, v26, v19, v18);

      return v24;
    }
  }

  v20 = v11;
  if (v12)
  {
LABEL_10:
    sub_1000062A0();
    v12 = v22 & v21;
    v24 = *(*(v6 + 48) + ((v11 << 9) | (8 * v23)));

    if (!v24)
    {
      goto LABEL_18;
    }

    goto LABEL_14;
  }

  while (1)
  {
    v11 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v11 >= v17)
    {
      v18 = 0;
      goto LABEL_17;
    }

    ++v20;
    if (*(v10 + 8 * v11))
    {
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

void sub_1000198F0(uint64_t a1@<X8>)
{
  *(a1 + ((v1 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= v4 << v1;
  *(*(v2 + 48) + 8 * v1) = v3;
  ++*(v2 + 16);
}

uint64_t sub_100019948()
{
  *(v2 + 4) = v3;
  v4 = *(v1 + 8);
  return v0;
}

uint64_t sub_10001995C()
{
  v2 = *(v0 + 424);
  result = *(v0 + 160);
  v4 = *(v1 + 8);
  return result;
}

uint64_t sub_10001998C()
{
  *(v2 - 88) = v1;
  result = v0[26];
  v4 = v0[21];
  v5 = v0[22];
  v0[49] = *(v5 + 8);
  v0[50] = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  return result;
}

uint64_t sub_100019A1C()
{

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_100019A38()
{
  result = v0;
  v3 = **(v1 - 128);
  return result;
}

uint64_t sub_100019A50(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = *(v3 + 32);
  return v2;
}

BOOL sub_100019A64()
{

  return os_log_type_enabled(v0, v1);
}

void sub_100019B18(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v6, a4, v4, 0xCu);
}

void sub_100019B38(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v6, a4, v4, 0x16u);
}

void sub_100019B58()
{
  v2 = v0[34];
  v3 = v0[31];
  v4 = v0[32];
  v5 = v0[30];
  v6 = v0[25];
  v0[17] = 0;
  v0[18] = 0xE000000000000000;

  _StringGuts.grow(_:)(29);
}

uint64_t sub_100019B9C()
{
  v3 = v0[34];
  v2 = v0[35];
  v4 = v0[30] + v0[42];

  return swift_beginAccess();
}

uint64_t sub_100019BD8()
{
  v4 = v0[44];
  v5 = v0[43];
  v6 = v0[42];
  v7 = v0[41];
  v8 = v0[40];
  v9 = v0[37];
  v10 = v0[36];
  v11 = v0[35];
  v12 = v0[34];
  v13 = v0[32];
  *(v1 - 88) = v0[29];
}

BOOL sub_100019C50()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t sub_100019CC8()
{

  return sub_10009F90C(v0, v2, v1);
}

uint64_t sub_100019CE4(uint64_t a1, uint64_t a2)
{
  v86 = type metadata accessor for CustomAssetConfiguration();
  v4 = sub_100002BDC(v86);
  v80 = v5;
  v7 = *(v6 + 64);
  __chkstk_darwin(v4);
  sub_100002B8C();
  v77 = v9 - v8;
  v82 = sub_100065020(&qword_1001BB450, &qword_100171E68);
  v10 = sub_100002C00(v82);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v85 = &v76 - v13;
  v14 = sub_100065020(&qword_1001B9D00, &qword_100171E00);
  v15 = sub_100002F04(v14);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  sub_100005630();
  v79 = v18 - v19;
  v21 = __chkstk_darwin(v20);
  v83 = &v76 - v22;
  __chkstk_darwin(v21);
  v84 = &v76 - v23;
  v24 = type metadata accessor for InferenceProviderDescriptor();
  v25 = sub_100002BDC(v24);
  v27 = v26;
  v29 = *(v28 + 64);
  __chkstk_darwin(v25);
  sub_100005630();
  v32 = v30 - v31;
  __chkstk_darwin(v33);
  v35 = &v76 - v34;
  v81 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_descriptor;
  v36 = InferenceProviderAssetDescriptor.identifier.getter();
  v38 = v37;
  v39 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_descriptor;
  v87 = a2;
  if (v36 == InferenceProviderAssetDescriptor.identifier.getter() && v38 == v40)
  {
  }

  else
  {
    v42 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v42 & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  v78 = v39;
  v43 = *(a1 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection + 32);
  sub_100013D6C((a1 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection), *(a1 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection + 24));
  v44 = sub_10000E86C();
  v45(v44, v43);
  v46 = *(v87 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection + 32);
  sub_100013D6C((v87 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection), *(v87 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection + 24));
  v47 = sub_10000E86C();
  v48(v47, v46);
  v49 = static InferenceProviderDescriptor.== infix(_:_:)();
  v50 = *(v27 + 8);
  v50(v32, v24);
  v50(v35, v24);
  if ((v49 & 1) == 0)
  {
LABEL_15:
    v62 = 0;
    return v62 & 1;
  }

  v51 = v84;
  InferenceProviderAssetDescriptor.customAssetConfiguration.getter();
  v52 = v83;
  InferenceProviderAssetDescriptor.customAssetConfiguration.getter();
  v53 = *(v82 + 48);
  v54 = v85;
  sub_10001E72C(v51, v85, &qword_1001B9D00, &qword_100171E00);
  sub_10001E72C(v52, v54 + v53, &qword_1001B9D00, &qword_100171E00);
  v55 = v86;
  if (sub_10000C6C0(v54, 1, v86) != 1)
  {
    v63 = v79;
    sub_10001E72C(v54, v79, &qword_1001B9D00, &qword_100171E00);
    if (sub_10000C6C0(v54 + v53, 1, v55) != 1)
    {
      v71 = v80;
      v72 = v77;
      (*(v80 + 32))(v77, v54 + v53, v55);
      sub_100035324();
      sub_100011B5C(v73, v74);
      v62 = dispatch thunk of static Equatable.== infix(_:_:)();
      v75 = *(v71 + 8);
      v75(v72, v55);
      sub_10000ECD8(v52, &qword_1001B9D00, &qword_100171E00);
      sub_10000ECD8(v51, &qword_1001B9D00, &qword_100171E00);
      v75(v63, v55);
      sub_10000ECD8(v54, &qword_1001B9D00, &qword_100171E00);
      return v62 & 1;
    }

    sub_10000D154();
    sub_10000ECD8(v64, v65, v66);
    sub_10000D154();
    sub_10000ECD8(v67, v68, v69);
    (*(v80 + 8))(v63, v55);
    goto LABEL_14;
  }

  sub_10000D154();
  sub_10000ECD8(v56, v57, v58);
  sub_10000D154();
  sub_10000ECD8(v59, v60, v61);
  if (sub_10000C6C0(v54 + v53, 1, v55) != 1)
  {
LABEL_14:
    sub_10000ECD8(v54, &qword_1001BB450, &qword_100171E68);
    goto LABEL_15;
  }

  sub_10000ECD8(v54, &qword_1001B9D00, &qword_100171E00);
  v62 = 1;
  return v62 & 1;
}

void sub_10001A5E0()
{
  sub_10000A274();
  v65 = v1;
  v69 = v2;
  v4 = v3;
  sub_100005B00();
  v5 = type metadata accessor for InferenceProviderDescriptor();
  v6 = sub_100002BDC(v5);
  v66 = v7;
  v67 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v6);
  sub_100009C24();
  v64 = v10;
  sub_100002F1C();
  __chkstk_darwin(v11);
  sub_1000DB284();
  v63[1] = v12;
  v13 = type metadata accessor for CustomAssetConfiguration();
  v14 = sub_100002BDC(v13);
  v68 = v15;
  v17 = *(v16 + 64);
  __chkstk_darwin(v14);
  sub_100002B8C();
  v63[0] = v19 - v18;
  v20 = sub_100065020(&qword_1001BB450, &qword_100171E68);
  v21 = sub_100002C00(v20);
  v23 = *(v22 + 64);
  __chkstk_darwin(v21);
  v25 = v63 - v24;
  v26 = sub_100065020(&qword_1001B9D00, &qword_100171E00);
  v27 = sub_100002F04(v26);
  v29 = *(v28 + 64);
  v30 = __chkstk_darwin(v27);
  v32 = v63 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v34 = v63 - v33;
  v35 = *v0;
  if (InferenceProviderAssetDescriptor.modelCatalogIdentifier.getter() == *v4 && v36 == v4[1])
  {
  }

  else
  {
    v38 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v38 & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  InferenceProviderAssetDescriptor.customAssetConfiguration.getter();
  v39 = *(v20 + 48);
  sub_10001E72C(v34, v25, &qword_1001B9D00, &qword_100171E00);
  sub_10001E72C(v69, &v25[v39], &qword_1001B9D00, &qword_100171E00);
  sub_1000DB308();
  if (sub_10000C6C0(v40, v41, v42) != 1)
  {
    sub_10001E72C(v25, v32, &qword_1001B9D00, &qword_100171E00);
    sub_1000DB308();
    if (sub_10000C6C0(v46, v47, v48) != 1)
    {
      v49 = v68;
      (*(v68 + 32))(v63[0], &v25[v39], v13);
      sub_100011B14(&qword_1001BB458, &type metadata accessor for CustomAssetConfiguration);
      LODWORD(v69) = dispatch thunk of static Equatable.== infix(_:_:)();
      v50 = *(v49 + 8);
      v51 = sub_100007B78();
      v50(v51);
      sub_10000ED84(v34, &qword_1001B9D00);
      (v50)(v32, v13);
      sub_10000ED84(v25, &qword_1001B9D00);
      if ((v69 & 1) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }

    sub_10000ED84(v34, &qword_1001B9D00);
    (*(v68 + 8))(v32, v13);
LABEL_13:
    sub_10000ED84(v25, &qword_1001BB450);
    goto LABEL_17;
  }

  sub_10000ED84(v34, &qword_1001B9D00);
  sub_1000DB308();
  if (sub_10000C6C0(v43, v44, v45) != 1)
  {
    goto LABEL_13;
  }

  sub_10000ED84(v25, &qword_1001B9D00);
LABEL_16:
  v52 = *(v35 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection + 32);
  sub_100003370((v35 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection), *(v35 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection + 24));
  v53 = *(v52 + 8);
  v54 = sub_100003170();
  v55(v54, v52);
  v56 = v65[4];
  sub_100003370(v65, v65[3]);
  v57 = *(v56 + 8);
  v58 = v64;
  v59 = sub_100003170();
  v60(v59, v56);
  static InferenceProviderDescriptor.== infix(_:_:)();
  v61 = *(v66 + 8);
  v61(v58, v67);
  v62 = sub_1000DAE34();
  (v61)(v62);
LABEL_17:
  sub_100005874();
}

void sub_10001AACC(uint64_t *a1)
{
  v4 = a1[1];
  v3 = a1[2];
  v5 = *(a1 + 6);
  if (qword_1001B89C0 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10000641C(v6, qword_1001BC8F8);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v13 = v10;
    *v9 = 136315394;
    v11 = sub_100004A3C(v4, v3, &v13);

    *(v9 + 4) = v11;
    *(v9 + 12) = 1024;
    *(v9 + 14) = v5;
    _os_log_impl(&_mh_execute_header, v7, v8, "Locking %s [%u]", v9, 0x12u);
    sub_100003324(v10);
  }

  else
  {
  }

  if (v5 || (v12 = *a1, dispatch thunk of CoherentAssetLock.lock()(), !v1))
  {
    if (v5 == -1)
    {
      __break(1u);
    }

    else
    {
      *(a1 + 6) = v5 + 1;
    }
  }
}

uint64_t sub_10001AC70()
{
  sub_100001ED0();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = sub_100004B00(v3);
  *v4 = v5;
  v6 = sub_100012A10(v4);

  return sub_10001AD04(v6);
}

uint64_t sub_10001AD24()
{
  **(v0 + 16) = 0;
  sub_100001F00();
  return v1();
}

uint64_t sub_10001AD4C()
{
  sub_100002BAC();
  sub_100001EF4();
  v2 = *(v1 + 24);
  v3 = *(v1 + 16);
  v4 = *v0;
  sub_100002B9C();
  *v5 = v4;

  sub_100013CFC();

  return v6();
}

void sub_10001AE40()
{
  sub_10000A274();
  v2 = type metadata accessor for URL();
  v3 = sub_100002BDC(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3);
  sub_100002B8C();
  v10 = v9 - v8;
  Session.Metadata.assetBundleURI.getter();
  v11 = *sub_100003370((v0 + OBJC_IVAR____TtC13modelmanagerd13DaemonSession_modelCatalog), *(v0 + OBJC_IVAR____TtC13modelmanagerd13DaemonSession_modelCatalog + 24));
  sub_100003E80(v10);
  if (v1)
  {
    (*(v5 + 8))(v10, v2);
  }

  else
  {
    sub_10001EA70();
    (*(v5 + 8))(v10, v2);
  }

  sub_100005874();
}

uint64_t sub_10001AF98(void *a1)
{
  a1[2] = 0;
  a1[3] = 0;
  a1[4] = v4;
  a1[5] = v3;
  a1[6] = v1;
  return v2;
}

uint64_t sub_10001AFBC()
{
}

uint64_t sub_10001AFF8()
{
  v0 = sub_100065020(&qword_1001B94F0, &unk_100172060);
  v1 = sub_100002BDC(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  __chkstk_darwin(v1);
  v7 = v13 - v6;
  v13[0] = 40;
  v13[1] = 0xE100000000000000;
  Session.Metadata.id.getter();
  sub_1000130C8(&qword_1001B9C68);
  v8._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v8);

  (*(v3 + 8))(v7, v0);
  v9._countAndFlagsBits = 58;
  v9._object = 0xE100000000000000;
  String.append(_:)(v9);
  v10._countAndFlagsBits = Session.Metadata.loggingIdentifier.getter();
  String.append(_:)(v10);

  v11._countAndFlagsBits = 41;
  v11._object = 0xE100000000000000;
  String.append(_:)(v11);
  return v13[0];
}

uint64_t *sub_10001B160(unint64_t a1, uint64_t a2, char a3)
{
  v4 = *v3;
  v3[4] = 0;
  v3[3] = 0;
  v3[2] = sub_10001B6F8(a1, a2, a3, &_mh_execute_header);
  swift_beginAccess();
  v5 = swift_unknownObjectRetain();
  os_activity_scope_enter(v5, (v3 + 3));
  swift_endAccess();
  swift_unknownObjectRelease();
  return v3;
}

uint64_t sub_10001B234(uint64_t a1)
{
  v3 = v2[42];
  v4 = v2[36];
  v5 = *(v2[37] + 16);
  v6 = a1 + *(v1 + 20);
  return v2[41];
}

uint64_t sub_10001B250()
{
}

uint64_t sub_10001B27C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10006A614(a2, a3);
    sub_1000055A4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10001B2C0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    v4 = sub_100005F38(0, a2);
    sub_10006A614(v4, v5);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10001B304(uint64_t a1, uint64_t a2)
{
  v5 = sub_100003370((v2 + 128), *(v2 + 152));
  v6 = AuditToken.processIdentifier.getter();
  v7 = *v5;
  sub_100021CF4(v6, v15);
  v8 = Session.Metadata.customAssetConfigurations.getter();
  if (v8)
  {
    v9 = v8;
    __chkstk_darwin(v8);
    v13 = a2;
    v14 = v15;
    sub_100027298(sub_1000A01D0, v12, v9);
    v10 = sub_10001301C(v15, &unk_1001B9CF8);
    if (!v3)
    {
      __chkstk_darwin(v10);
      v13 = a2;
      a2 = sub_100027358(&_swiftEmptyDictionarySingleton, sub_1000A01EC, v12, v9);
    }
  }

  else
  {
    sub_10001301C(v15, &unk_1001B9CF8);
    type metadata accessor for CustomAssetConfiguration();
    return Dictionary.init(dictionaryLiteral:)();
  }

  return a2;
}

void sub_10001B4AC()
{
  sub_1000055B0();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  if (v12)
  {
    sub_100012660();
    if (v14 != v15)
    {
      sub_100005FE0();
      if (v14)
      {
LABEL_24:
        __break(1u);
        return;
      }

      sub_10000A210();
    }
  }

  else
  {
    v13 = v1;
  }

  v16 = *(v9 + 16);
  if (v13 <= v16)
  {
    v17 = *(v9 + 16);
  }

  else
  {
    v17 = v13;
  }

  if (!v17)
  {
    v19 = &_swiftEmptyArrayStorage;
    goto LABEL_18;
  }

  sub_100065020(v2, v3);
  v18 = *(*(v7(0) - 8) + 72);
  v19 = sub_1000129D8();
  v20 = j__malloc_size(v19);
  if (!v18)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v20 - v0 == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_23;
  }

  sub_10000886C(v20 - v0);
LABEL_18:
  v22 = *(v7(0) - 8);
  if (v11)
  {
    v23 = (*(v22 + 80) + 32) & ~*(v22 + 80);
    sub_10000957C(v9 + v23, v16, v19 + v23, v5);
    *(v9 + 16) = 0;
  }

  else
  {
    sub_10000781C();
  }

  sub_100002EEC();
}

id sub_10001B620(uint64_t a1)
{
  v5 = 0;
  v1 = [swift_getObjCClassFromMetadata() handleForIdentifier:a1 error:&v5];
  if (v1)
  {
    v2 = v5;
  }

  else
  {
    v3 = v5;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  swift_unknownObjectRelease();
  return v1;
}

uint64_t sub_10001B6F8(unint64_t a1, uint64_t a2, char a3, void *a4)
{
  if (a3)
  {
    if (!HIDWORD(a1))
    {
      v8 = a1 & 0xFFFFF800;
      v9 = 55296;
      if (v8 != 55296)
      {
        v8 = a1 >> 16;
        if (a1 >> 16 > 0x10)
        {
          __break(1u);
        }

        else if (a1 <= 0x7F)
        {
          v10 = a1 + 1;
          goto LABEL_12;
        }

        v9 = (a1 & 0x3F) << 8;
        if (a1 >= 0x800)
        {
          goto LABEL_33;
        }

        v10 = (a1 >> 6) + v9 + 33217;
        goto LABEL_12;
      }

      __break(1u);
      goto LABEL_31;
    }

    goto LABEL_25;
  }

  if (!a1)
  {
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    swift_once();
    goto LABEL_5;
  }

  if (!a4)
  {
LABEL_36:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  if (qword_1001B8A80 != -1)
  {
    goto LABEL_26;
  }

LABEL_5:
  v6 = off_1001BCDA0;
  os_unfair_lock_lock(off_1001BCDA0 + 6);
  if (*(v6 + 2))
  {
    v7 = *(v6 + 2);
    goto LABEL_19;
  }

  v13 = dlsym(0xFFFFFFFFFFFFFFFELL, "_os_activity_current");
  *(v6 + 2) = v13;
  if (!v13)
  {
LABEL_31:
    __break(1u);
    while (1)
    {
      __break(1u);
LABEL_33:
      v17 = (v9 | (a1 >> 6) & 0x3F) << 8;
      v18 = (a1 >> 18) + ((v17 | (a1 >> 12) & 0x3F) << 8) - 2122219023;
      v19 = (a1 >> 12) + v17 + 8487393;
      if (v8)
      {
        v10 = v18;
      }

      else
      {
        v10 = v19;
      }

LABEL_12:
      *description = (v10 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (32 - (__clz(v10) & 0x18)));
      if (!a4)
      {
        goto LABEL_36;
      }

      if (qword_1001B8A80 != -1)
      {
        swift_once();
      }

      v11 = off_1001BCDA0;
      os_unfair_lock_lock(off_1001BCDA0 + 6);
      if (*(v11 + 2))
      {
        break;
      }

      v15 = dlsym(0xFFFFFFFFFFFFFFFELL, "_os_activity_current");
      *(v11 + 2) = v15;
      if (v15)
      {
        v12 = v15;
        swift_unknownObjectRetain_n();
        goto LABEL_22;
      }
    }

    v12 = *(v11 + 2);
LABEL_22:
    swift_unknownObjectRetain();
    os_unfair_lock_unlock(v11 + 6);
    v14 = _os_activity_create(a4, description, v12, OS_ACTIVITY_FLAG_DEFAULT);
    goto LABEL_23;
  }

  v7 = v13;
  swift_unknownObjectRetain_n();
LABEL_19:
  swift_unknownObjectRetain();
  os_unfair_lock_unlock(v6 + 6);
  v14 = _os_activity_create(a4, a1, v7, OS_ACTIVITY_FLAG_DEFAULT);
LABEL_23:
  swift_unknownObjectRelease();
  return v14;
}

void sub_10001B9B4(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = objc_opt_self();
  v5 = [objc_opt_self() predicateMatchingIdentifier:a1];
  if (qword_1001B8970 != -1)
  {
    swift_once();
  }

  v11 = 0;
  v6 = [v4 statesForPredicate:v5 withDescriptor:qword_1001BE8C0 error:&v11];

  v7 = v11;
  if (v6)
  {
    sub_10000E2C0(0, &qword_1001BC0A0, RBSProcessState_ptr);
    v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v7;

    *a2 = v8;
  }

  else
  {
    v10 = v11;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }
}

uint64_t sub_10001BB20(void (*a1)(uint64_t *__return_ptr))
{
  a1(&v2);
  sub_100065020(&qword_1001BC098, &qword_100172948);
  return CheckedContinuation.resume(returning:)();
}

uint64_t sub_10001BBC0()
{
  **(v0 + 16) = *(v0 + 44);
  sub_100001F00();
  return v1();
}

uint64_t sub_10001BBEC()
{
  sub_100002BAC();
  v1 = *(*v0 + 224);
  v2 = *(*v0 + 136);
  v3 = *v0;
  sub_100002B9C();
  *v4 = v3;

  sub_1000071A8();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_10001BD18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_100005F88();
  sub_1000033DC();
  v15 = *(v14 + 264) | (*(v14 + 268) << 32);
  if ((v15 & 0xFF00000000) == 0x500000000)
  {
    v16 = *(v14 + 176);
    v18 = *(v14 + 144);
    v17 = *(v14 + 152);
    (*(*(v14 + 192) + 8))(*(v14 + 200), *(v14 + 184));

    sub_100001F00();
    sub_1000062BC();

    return v20(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, a11, a12);
  }

  else
  {
    v28 = *(v14 + 216);
    v29 = *(v14 + 144);
    v30 = *(v14 + 152);
    v31 = *(v14 + 136);
    type metadata accessor for _OSActivity();
    *(v14 + 232) = swift_initStackObject();
    *(v14 + 240) = sub_10001B160("Process State Update", 20, 2);
    v32 = type metadata accessor for TaskPriority();
    sub_100003978();
    sub_100009BFC(v33, v34, v35, v32);
    v36 = swift_allocObject();
    *(v36 + 16) = v31;
    *(v36 + 24) = v28;
    *(v36 + 32) = v31;
    *(v36 + 40) = v15;
    *(v36 + 44) = BYTE4(v15);
    sub_100012EA4(v30, v29, &qword_1001BB050, &qword_10016F6E0);
    LODWORD(v29) = sub_10000C6C0(v29, 1, v32);
    swift_retain_n();

    if (v29 == 1)
    {
      sub_10001301C(*(v14 + 144), &qword_1001BB050);
    }

    else
    {
      TaskPriority.rawValue.getter();
      sub_100006098(v32);
      v38 = *(v37 + 8);
      v39 = sub_100005E98();
      v40(v39);
    }

    v41 = *(v36 + 16);
    v42 = *(v36 + 24);
    swift_unknownObjectRetain();

    if (v41)
    {
      swift_getObjectType();
      v43 = dispatch thunk of Actor.unownedExecutor.getter();
      v45 = v44;
      swift_unknownObjectRelease();
    }

    else
    {
      v43 = 0;
      v45 = 0;
    }

    v46 = String.utf8CString.getter();
    sub_100002EE0();
    v47 = swift_allocObject();
    *(v47 + 16) = &unk_100170738;
    *(v47 + 24) = v36;

    if (v45 | v43)
    {
      v48 = v14 + 56;
      *(v14 + 56) = 0;
      *(v14 + 64) = 0;
      *(v14 + 72) = v43;
      *(v14 + 80) = v45;
    }

    else
    {
      v48 = 0;
    }

    v49 = *(v14 + 152);
    v50 = *(v14 + 136);
    *(v14 + 88) = 7;
    *(v14 + 96) = v48;
    *(v14 + 104) = v46 + 32;
    v51 = swift_task_create();

    *(v14 + 248) = v51;
    sub_10001301C(v49, &qword_1001BB050);

    v52 = *(v50 + 456);
    *(v50 + 456) = v51;

    v53 = async function pointer to Task<>.value.getter[1];
    v54 = swift_task_alloc();
    *(v14 + 256) = v54;
    *v54 = v14;
    v54[1] = sub_10002A8F8;
    sub_1000062BC();

    return Task<>.value.getter(v55, v56, v57, v58, v59, v60, v61, v62, a9, a10, a11, a12, a13, a14);
  }
}

uint64_t sub_10001C0F0()
{
  v1 = *(v0 + 24);

  sub_100002EE0();

  return _swift_deallocObject(v2, v3, v4);
}

uint64_t sub_10001C130()
{
  v3 = v0[41];
  v2 = v0[42];
  v4 = v0[40];
  v5 = v0[37];
  v6 = v0[34];
}

uint64_t sub_10001C150()
{

  return type metadata accessor for InferenceProviderAsset(0);
}

uint64_t sub_10001C168(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  v12 = *(v10 + 392);

  return sub_10001A264(va, v12);
}

uint64_t sub_10001C184()
{

  return swift_allocError();
}

uint64_t sub_10001C19C(void *a1)
{
  if (!a1)
  {
    return 3;
  }

  v1 = a1;
  v2 = sub_10001E964(v1);
  if (v2)
  {
    v3 = sub_10000A130(0xD00000000000001FLL, 0x8000000100175740, v2);
  }

  else
  {
    v3 = 0;
  }

  v5 = [v1 taskState];

  if (v3)
  {
    return 0;
  }

  if (v5 <= 4)
  {
    return (0x102010304uLL >> (8 * (v5 & 0x1F)));
  }

  return 4;
}

uint64_t sub_10001C260()
{
  sub_100002BAC();
  sub_100001EF4();
  v2 = *(v1 + 16);
  v3 = *v0;
  sub_100002B9C();
  *v4 = v3;

  sub_100002F54();

  return v5();
}

uint64_t sub_10001C340()
{
  v1 = type metadata accessor for Session.Metadata();
  sub_100002F44(v1);
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 47) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = sub_100065020(&qword_1001B9CE0, &qword_100170F90);
  sub_100002F04(v8);
  v10 = *(v0 + v6);
  v11 = *(v0 + v7);
  v12 = v0 + ((*(v9 + 80) + v7 + 8) & ~*(v9 + 80));

  return sub_10001C43C(v0 + v4, (v0 + v5), v10, v11, v12);
}

uint64_t sub_10001C43C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v37 = a3;
  v38 = a4;
  v7 = sub_100065020(&qword_1001B9CE0, &qword_100170F90);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v36 = &v31 - v10;
  v11 = sub_100065020(&qword_1001BB050, &qword_10016F6E0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v31 - v13;
  v15 = type metadata accessor for URL();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  Session.Metadata.assetBundleURI.getter();
  v20 = *sub_100003370(a2, a2[3]);
  v21 = sub_100003E80(v19);
  v32 = v22;
  v33 = v21;
  v34 = v23;
  v24 = type metadata accessor for TaskPriority();
  v35 = v14;
  sub_100009BFC(v14, 1, 1, v24);
  v25 = v36;
  (*(v8 + 16))(v36, a5, v7);
  v26 = (*(v8 + 80) + 72) & ~*(v8 + 80);
  v27 = swift_allocObject();
  *(v27 + 2) = 0;
  *(v27 + 3) = 0;
  v28 = v38;
  *(v27 + 4) = v37;
  *(v27 + 5) = v28;
  v29 = v32;
  *(v27 + 6) = v33;
  *(v27 + 7) = v29;
  *(v27 + 8) = v34;
  (*(v8 + 32))(&v27[v26], v25, v7);

  sub_1000652FC();

  return (*(v16 + 8))(v19, v15);
}

uint64_t sub_10001C734()
{
  v1 = sub_100065020(&qword_1001B9CE0, &qword_100170F90);
  sub_100002BDC(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 72) & ~v4;
  v7 = *(v6 + 64);
  v8 = *(v0 + 2);
  swift_unknownObjectRelease();
  v9 = *(v0 + 4);

  v10 = *(v0 + 5);

  v11 = *(v0 + 7);

  v12 = *(v0 + 8);

  (*(v3 + 8))(&v0[v5], v1);

  return _swift_deallocObject(v0, v5 + v7, v4 | 7);
}

uint64_t sub_10001C820()
{
  sub_100002BAC();
  sub_100001EF4();
  v2 = *(v1 + 56);
  v3 = *(v1 + 48);
  v4 = *v0;
  sub_100002B9C();
  *v5 = v4;

  sub_100001F00();

  return v6();
}

uint64_t sub_10001C91C()
{
  sub_100002BAC();
  sub_100001EF4();
  v2 = v1[16];
  v3 = v1[15];
  v4 = v1[10];
  v5 = *v0;
  sub_100002B9C();
  *v6 = v5;

  return _swift_task_switch(sub_10001CA38, v4, 0);
}

uint64_t sub_10001CA38()
{
  sub_100002BAC();
  v1 = *(v0 + 104);

  sub_100001F00();

  return v2();
}

uint64_t sub_10001CA9C()
{
  sub_100002BAC();
  sub_100001EF4();
  v3 = v2;
  sub_100004B40();
  *v4 = v3;
  v6 = *(v5 + 24);
  v7 = *v1;
  sub_100002B9C();
  *v8 = v7;

  if (!v0)
  {
    v10 = *(v3 + 16);

    v11 = sub_100002C10();

    return _swift_task_switch(v11, v12, v13);
  }

  return result;
}

uint64_t sub_10001CB98()
{
  sub_100002BAC();
  sub_100001EF4();
  v2 = *(v1 + 24);
  v3 = *v0;
  sub_100002B9C();
  *v4 = v3;

  sub_100001F00();

  return v5();
}

uint64_t sub_10001CC78()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

void sub_10001CCB8(uint64_t a1, void *a2, void *a3, void *a4)
{
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);

  v11 = a2;
  v9 = a3;
  v10 = a4;
  v8(v11, v9, v10);
}

uint64_t sub_10001CD58(uint64_t a1, void *a2, void *a3)
{
  v6 = sub_100065020(&qword_1001BC138, &qword_1001729C0);
  sub_100002F04(v6);
  v8 = *(v7 + 80);

  return sub_10001CDE8(a1, a2, a3);
}

uint64_t sub_10001CDE8(uint64_t a1, void *a2, void *a3)
{
  v5 = sub_100065020(&qword_1001BC140, &qword_1001729C8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v11 - v8;
  LOBYTE(a3) = sub_10001C19C([a3 state]);
  v11[2] = [a2 pid];
  v12 = a3;
  sub_100065020(&qword_1001BC138, &qword_1001729C0);
  AsyncStream.Continuation.yield(_:)();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_10001CF1C(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t sub_10001CF30(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 4) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 5) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 5) = 0;
    }

    if (a2)
    {
      *(result + 4) = a2 + 4;
    }
  }

  return result;
}

uint64_t sub_10001CF88()
{
  v3 = v0[40];
  v2 = v0[41];
  v4 = v0[36];
  v5 = v0[30];

  return type metadata accessor for Logger();
}

uint64_t sub_10001CFA8()
{
  swift_getKeyPath();
  sub_10001D17C();
  v1 = v0;

  return v1;
}

uint64_t sub_10001D000@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_10002218C(a1);
}

uint64_t sub_10001D058(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_10001AD4C;

  return v6(v2 + 32);
}

uint64_t sub_10001D14C(uint64_t a1)
{
  *(v1 + 176) = a1;

  return type metadata accessor for DaemonSession(0);
}

uint64_t sub_10001D164()
{
  v2 = *v0;
  v3 = v0[1];
}

void sub_10001D17C()
{
  v2 = type metadata accessor for DaemonSession.LazyState(0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + OBJC_IVAR____TtC13modelmanagerd13DaemonSession__lazyState);
  v7 = *(*v6 + class metadata base offset for ManagedBuffer + 16);
  v8 = (*(*v6 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v6 + v8));
  sub_1000219DC(&v10);
  if (v1)
  {
    goto LABEL_7;
  }

  os_unfair_lock_unlock((v6 + v8));
  if (v10)
  {
    return;
  }

  sub_10001AE40();
  swift_getAtKeyPath();
  if (!v10)
  {
    __break(1u);
LABEL_7:
    os_unfair_lock_unlock((v6 + v8));
    __break(1u);
    return;
  }

  sub_1000125E8(v5, type metadata accessor for DaemonSession.LazyState);
}

uint64_t sub_10001D320()
{
  v2 = *(v0 + 80);
  v3 = *(v0 + 56);
}

uint64_t sub_10001D344()
{

  return swift_dynamicCast();
}

uint64_t sub_10001D35C()
{
  sub_100002BAC();
  v1[21] = v2;
  v1[22] = v0;
  v1[19] = v3;
  v1[20] = v4;
  v1[17] = v5;
  v1[18] = v6;
  v7 = type metadata accessor for InferenceProviderDescriptor();
  v1[23] = v7;
  sub_100002F44(v7);
  v1[24] = v8;
  v10 = *(v9 + 64);
  v1[25] = sub_100002C58();
  v11 = sub_100065020(&qword_1001B94F0, &unk_100172060);
  v1[26] = v11;
  sub_100002F44(v11);
  v1[27] = v12;
  v14 = *(v13 + 64);
  v1[28] = sub_10000F0C0();
  v1[29] = swift_task_alloc();
  v15 = sub_100002C10();

  return _swift_task_switch(v15, v16, v17);
}

uint64_t sub_10001D46C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  v3 = sub_100001F70();

  return _swift_deallocObject(v3, v4, 7);
}

uint64_t sub_10001D4B4()
{
  sub_10000639C();
  sub_100003884();
  sub_1000089AC();
  v1 = *(v0 + 32);
  v2 = *(v0 + 40) | (*(v0 + 44) << 32);
  v3 = swift_task_alloc();
  v4 = sub_100004B00(v3);
  *v4 = v5;
  sub_100007D94(v4);
  sub_100003D20();

  return sub_10001D554(v6, v7, v8, v9, v10);
}

uint64_t sub_10001D554(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[25] = a4;
  v5[26] = a5;
  v7 = type metadata accessor for InferenceProviderDescriptor();
  v5[27] = v7;
  v8 = *(v7 - 8);
  v5[28] = v8;
  v9 = *(v8 + 64) + 15;
  v5[29] = swift_task_alloc();
  v10 = *(*(sub_100065020(&qword_1001BB050, &qword_10016F6E0) - 8) + 64) + 15;
  v5[30] = swift_task_alloc();
  v11 = sub_100065020(&qword_1001B94F0, &unk_100172060);
  v5[31] = v11;
  v12 = *(v11 - 8);
  v5[32] = v12;
  v13 = *(v12 + 64) + 15;
  v5[33] = swift_task_alloc();
  v5[34] = swift_task_alloc();

  return _swift_task_switch(sub_10001D6F8, a4, 0);
}

uint64_t sub_10001E430()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  sub_100002EE0();

  return _swift_deallocObject(v2, v3, v4);
}

void sub_10001E49C()
{
  v2 = v0[38];
  v1 = v0[39];
  v3 = v0[25];
}

uint64_t sub_10001E4C0()
{

  return __CocoaSet.makeIterator()();
}

uint64_t sub_10001E4DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(*(a1 + 48) + ((v2 << 9) | (8 * a2)));
}

uint64_t sub_10001E504()
{

  return dispatch thunk of CustomStringConvertible.description.getter();
}

void sub_10001E52C()
{
  v3 = v0[32];
  v5 = v0[28];
  v4 = v0[29];
  v6 = v0[24];
  v7 = v0[21];
}

uint64_t sub_10001E564()
{
  v4 = *(*(v2 + 48) + ((v1 << 9) | (8 * __clz(__rbit64(v0)))));
}

uint64_t sub_10001E598()
{
}

uint64_t sub_10001E5B8()
{
  v3 = v0[41];
  v2 = v0[42];
  v5 = v0[39];
  v4 = v0[40];
  v7 = v0[35];
  v6 = v0[36];
  v9 = v0[31];
  v8 = v0[32];
  v10 = v0[29];
  v11 = v0[30];
}

uint64_t sub_10001E618()
{
  *(v0 + 4) = v1;
  *(v0 + 12) = 2080;
}

uint64_t sub_10001E638(uint64_t a1, ...)
{
  va_start(va, a1);

  return sub_100004A3C(v1, v2, va);
}

uint64_t sub_10001E654(uint64_t result)
{
  *(v2 - 88) = result;
  v3 = *(v1 + 16);
  return result;
}

uint64_t sub_10001E660()
{
  v3 = v0[56];
  v2 = v0[57];
  v5 = v0[52];
  v4 = v0[53];
  v6 = v0[49];
  v7 = v0[47];
  v8 = v0[44];
  v10 = v0[40];
  v9 = v0[41];
}

uint64_t sub_10001E6A4()
{
}

uint64_t sub_10001E6BC()
{
}

BOOL sub_10001E6D8()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t sub_10001E6F0()
{
}

uint64_t sub_10001E72C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = sub_10000CBE4(a1, a2, a3, a4);
  sub_100002C00(v5);
  v7 = *(v6 + 16);
  v8 = sub_1000062B0();
  v9(v8);
  return v4;
}

uint64_t sub_10001E778(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a8;
  v8[7] = v13;
  v8[4] = a6;
  v8[5] = a7;
  v8[3] = a5;
  v10 = *(*(type metadata accessor for DaemonSession.LazyState(0) - 8) + 64) + 15;
  v8[8] = swift_task_alloc();

  return _swift_task_switch(sub_10001E9C4, a4, 0);
}

uint64_t sub_10001E81C()
{
  sub_1000033DC();
  v1 = sub_100065020(&qword_1001B9CE0, &qword_100170F90);
  sub_100002F04(v1);
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[7];
  v9 = v0[8];
  v10 = v0 + ((*(v2 + 80) + 72) & ~*(v2 + 80));
  v11 = swift_task_alloc();
  v12 = sub_100004B00(v11);
  *v12 = v13;
  v12[1] = sub_10006FA64;
  sub_1000135D0();
  sub_1000062BC();

  return sub_10001E778(v14, v15, v16, v17, v18, v19, v20, v21);
}

uint64_t sub_10001E964(void *a1)
{
  v1 = [a1 endowmentNamespaces];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_10001E9C4()
{
  sub_100001ED0();
  v1 = v0[8];
  v2 = v0[5];
  v3 = v0[6];
  v5 = v0[3];
  v4 = v0[4];
  sub_10001EA70();
  v0[9] = 0;
  sub_10000AAD0(v0[8], type metadata accessor for DaemonSession.LazyState);

  return _swift_task_switch(sub_100021908, 0, 0);
}

void sub_10001EA70()
{
  sub_10000A274();
  v3 = v2;
  v30 = v4;
  v6 = v5;
  v31 = v7;
  v8 = *v0;
  v9 = type metadata accessor for InferenceProviderDescriptor();
  v10 = sub_100002BDC(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  __chkstk_darwin(v10);
  sub_100005630();
  v17 = v15 - v16;
  __chkstk_darwin(v18);
  v20 = &v29 - v19;
  sub_10001ED00(v3, v0 + OBJC_IVAR____TtC13modelmanagerd13DaemonSession_sysctl);
  if (v1)
  {
    v21 = *(v0 + OBJC_IVAR____TtC13modelmanagerd13DaemonSession__lazyState);
    v22 = *(*v21 + class metadata base offset for ManagedBuffer + 16);
    v23 = (*(*v21 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((v21 + v23));
    sub_100109D18((v21 + v22));
    os_unfair_lock_unlock((v21 + v23));
    swift_willThrow();
  }

  else
  {
    v24 = (*(v12 + 32))(v20, v17, v9);
    v29 = &v29;
    v25 = *(v0 + OBJC_IVAR____TtC13modelmanagerd13DaemonSession__lazyState);
    __chkstk_darwin(v24);
    v26 = v30;
    *(&v29 - 6) = v6;
    *(&v29 - 5) = v26;
    *(&v29 - 4) = v3;
    *(&v29 - 3) = v0;
    *(&v29 - 2) = v20;
    v27 = *(*v25 + class metadata base offset for ManagedBuffer + 16);
    v28 = (*(*v25 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((v25 + v28));
    sub_1000218E4((v25 + v27), v31);
    os_unfair_lock_unlock((v25 + v28));
    (*(v12 + 8))(v20, v9);
  }

  sub_100005874();
}

void sub_10001F04C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_10000A274();
  a19 = v22;
  a20 = v23;
  v148 = v20;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v172 = type metadata accessor for InferenceProviderDescriptor.Instance();
  v30 = sub_100002BDC(v172);
  v149 = v31;
  v33 = *(v32 + 64);
  __chkstk_darwin(v30);
  sub_100005630();
  v171 = v34 - v35;
  v37 = __chkstk_darwin(v36);
  v170 = (&v148 - v38);
  __chkstk_darwin(v37);
  v169 = &v148 - v39;
  v168 = type metadata accessor for InferenceProviderDescriptor();
  v40 = sub_100002BDC(v168);
  v173 = v41;
  v43 = *(v42 + 64);
  __chkstk_darwin(v40);
  sub_100002B8C();
  v167 = v45 - v44;
  v46 = type metadata accessor for ModelCatalogAsset(0);
  v47 = sub_100002F44(v46);
  v158 = v48;
  v50 = *(v49 + 64);
  __chkstk_darwin(v47);
  sub_100002B8C();
  v53 = v52 - v51;
  v180[2] = v25;
  v181 = v27;
  v54 = sub_10002047C(0, _swiftEmptyArrayStorage, sub_10001E930, v180, v29);
  v56 = v55;
  v150 = v21;
  v57 = v29 + 56;
  v58 = 1 << *(v29 + 32);
  if (v58 < 64)
  {
    v59 = ~(-1 << v58);
  }

  else
  {
    v59 = -1;
  }

  v60 = v59 & *(v29 + 56);
  v61 = (v58 + 63) >> 6;

  v62 = 0;
  v152 = v54;
  v162 = v54;
  v151 = v56;
  v156 = v29 + 56;
  v154 = v29;
  v157 = v53;
  v155 = v61;
LABEL_5:
  v175 = v56;
  if (!v60)
  {
    while (1)
    {
      v63 = v62 + 1;
      if (__OFADD__(v62, 1))
      {
        goto LABEL_87;
      }

      if (v63 >= v61)
      {
        break;
      }

      v60 = *(v57 + 8 * v63);
      ++v62;
      if (v60)
      {
        goto LABEL_10;
      }
    }

    v54 = *(v56 + 16);
    if (v54)
    {
      v182[0] = _swiftEmptyArrayStorage;
      sub_100021200();
      v118 = 0;
      v119 = v182[0];
      LODWORD(v163) = enum case for InferenceProviderDescriptor.Instance.specificInstance(_:);
      v176 = v149 + 104;
      v174 = v149 + 32;
      LODWORD(v161) = enum case for InferenceProviderDescriptor.Instance.defaultInstance(_:);
      v166 = (v149 + 16);
      v165 = v149 + 8;
      v164 = v173 + 32;
      v120 = (v56 + 64);
      v177 = v54;
      v121 = v172;
      do
      {
        if (v118 >= *(v56 + 16))
        {
          goto LABEL_88;
        }

        v122 = *(v120 - 3);
        v123 = *(v120 - 1);
        v124 = *v120;
        v179 = *(v120 - 4);
        LODWORD(v178) = v124;
        v125 = v170;
        if (v123)
        {
          *v170 = *(v120 - 2);
          v125[1] = v123;
        }

        sub_100019AE8(&a17);
        v126(v125);
        sub_100019AE8(&a15);
        v127 = v169;
        v128(v169, v125, v121);
        sub_100019AE8(&v187);
        v54 = v171;
        v129(v171, v127, v121);
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();
        v130 = v167;
        InferenceProviderDescriptor.init(id:instance:hostedOnServer:)();
        sub_100019AE8(&v186 + 8);
        v131(v127, v121);

        v182[0] = v119;
        v132 = *(v119 + 16);
        if (v132 >= *(v119 + 24) >> 1)
        {
          sub_100021200();
          v119 = v182[0];
        }

        ++v118;
        *(v119 + 16) = v132 + 1;
        (*(v173 + 32))(v119 + ((*(v173 + 80) + 32) & ~*(v173 + 80)) + *(v173 + 72) * v132, v130, v168);
        v120 += 40;
        v56 = v175;
      }

      while (v177 != v118);
      sub_100021248(v119);
      sub_100003AD0();

LABEL_84:
      sub_1000062B0();
      sub_100005874();
      return;
    }

    sub_100108D28();
    v54 = sub_100077254(v133);
    if (qword_1001B89B0 == -1)
    {
LABEL_81:
      v134 = type metadata accessor for Logger();
      sub_10000641C(v134, qword_1001BC6C0);

      v135 = Logger.logObject.getter();
      v136 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v135, v136))
      {
        v137 = swift_slowAlloc();
        v182[0] = swift_slowAlloc();
        *v137 = 136315394;
        v138 = _typeName(_:qualified:)();
        v140 = sub_100004A3C(v138, v139, v182);

        *(v137 + 4) = v140;
        *(v137 + 12) = 2080;
        v141 = Set.description.getter();
        v143 = sub_100004A3C(v141, v142, v182);

        *(v137 + 14) = v143;
        _os_log_impl(&_mh_execute_header, v135, v136, "Session %s assets %s don't have a common inference provider", v137, 0x16u);
        swift_arrayDestroy();
        sub_100002BB8();
        sub_100002BB8();
      }

      v144 = type metadata accessor for ModelManagerError();
      sub_1000114EC();
      sub_1000218A0(v145, v146);
      sub_1000055A4();
      swift_allocError();
      *v147 = v54;
      (*(*(v144 - 8) + 104))(v147, enum case for ModelManagerError.noCommonInferenceProviderForAssets(_:), v144);
      swift_willThrow();

      goto LABEL_84;
    }

LABEL_89:
    sub_100008724();
    goto LABEL_81;
  }

  v63 = v62;
LABEL_10:
  v164 = (v60 - 1) & v60;
  v163 = v63;
  v64 = *(v29 + 48);
  v65 = sub_100005D58(__clz(__rbit64(v60)) | (v63 << 6));
  sub_100009370(v65, v53, v66);
  v67 = *(v53 + 24);

  v69 = sub_100020A18(v68);
  v54 = v70;
  v71 = *(v53 + 32);

  v159 = sub_100020A18(v72);
  v74 = v73;
  v75 = *(v73 + 16);

  v76 = 0;
  v161 = v69;
  v160 = v54;
  v165 = v74;
  v178 = v75;
  while (2)
  {
    v153 = v69;
    while (1)
    {
      v166 = (v54 + 64);
LABEL_13:
      v77 = 40 * v76 + 32;
      v78 = v76;
      while (1)
      {
        if (v75 == v78)
        {

          v162 = sub_100020000(v69, v54, v162, v175);
          v56 = v117;

          v53 = v157;
          sub_1000125E8(v157, type metadata accessor for ModelCatalogAsset);
          v62 = v163;
          v57 = v156;
          v61 = v155;
          v60 = v164;
          goto LABEL_5;
        }

        if (v78 >= v75)
        {
          __break(1u);
LABEL_86:
          __break(1u);
LABEL_87:
          __break(1u);
LABEL_88:
          __break(1u);
          goto LABEL_89;
        }

        v79 = *(v74 + v77);
        v80 = *(v74 + v77 + 16);
        v185 = *(v74 + v77 + 32);
        v183 = v79;
        v184 = v80;
        v186 = *(v74 + v77);
        if (__OFADD__(v78, 1))
        {
          goto LABEL_86;
        }

        v179 = v78 + 1;
        v81 = *(&v184 + 1);
        v82 = *(v54 + 16);
        if (!v69)
        {
          break;
        }

        sub_100020E14(&v186, v182);

        v83 = v54;
        sub_100142F9C(&v183, v54 + 32, v82, (v69 + 16));
        v85 = v84;
        v87 = v86;

        if (v85)
        {
          v177 = v69;
          goto LABEL_44;
        }

        sub_100021010(&v186);

        ++v78;
        v77 += 40;
        v75 = v178;
        v54 = v83;
      }

      v83 = v54;
      if (v82)
      {
        v174 = v184;
        v89 = *(&v186 + 1);
        v88 = v186;
        v90 = v166;
        LODWORD(v176) = v185;
        v177 = v186;
        while (1)
        {
          v91 = *(v90 - 2);
          v74 = *(v90 - 1);
          v92 = *v90;
          if (*(v90 - 4) != v88 || *(v90 - 3) != v89)
          {
            v94 = _stringCompareWithSmolCheck(_:_:expecting:)();
            v88 = v177;
            if ((v94 & 1) == 0)
            {
              goto LABEL_39;
            }
          }

          if (!v74)
          {
            break;
          }

          if (!v81)
          {
            goto LABEL_39;
          }

          if (v91 != v174 || v74 != v81)
          {
            v96 = _stringCompareWithSmolCheck(_:_:expecting:)();
            v88 = v177;
            if ((v96 & 1) == 0)
            {
              goto LABEL_39;
            }

LABEL_36:
            if (((v92 ^ v176) & 1) == 0)
            {
              goto LABEL_41;
            }

            goto LABEL_39;
          }

          if (v92 == (v176 & 1))
          {
LABEL_41:
            v69 = 0;
            v29 = v154;
            sub_100012B24();
            v75 = v178;
            v76 = v179;
            v54 = v83;
            goto LABEL_13;
          }

LABEL_39:
          v90 += 40;
          if (!--v82)
          {
            goto LABEL_43;
          }
        }

        if (v81)
        {
          goto LABEL_39;
        }

        goto LABEL_36;
      }

LABEL_43:
      sub_100020E14(&v186, v182);

      v177 = 0;
      v87 = 0;
      v29 = v154;
LABEL_44:
      sub_100020E14(&v186, v182);

      v54 = v83;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_10000C958(0, *(v83 + 16) + 1, 1);
        v54 = v83;
      }

      v74 = *(v54 + 16);
      v97 = *(v54 + 24);
      if (v74 >= v97 >> 1)
      {
        sub_10000C958((v97 > 1), v74 + 1, 1);
        v54 = v83;
      }

      *(v54 + 16) = v74 + 1;
      v98 = v54 + 40 * v74;
      v99 = v183;
      v100 = v184;
      *(v98 + 64) = v185;
      *(v98 + 32) = v99;
      *(v98 + 48) = v100;
      if (v69)
      {
        break;
      }

      if (v74 > 0xE)
      {
        v103 = v54;
        goto LABEL_55;
      }

      sub_100021010(&v186);

      v69 = 0;
      sub_100012B24();
      v75 = v178;
      v76 = v179;
    }

    v101 = v177;
    swift_beginAccess();
    v102 = *(v101 + 16);
    if (static _HashTable.maximumCapacity(forScale:)() <= v74)
    {
      v103 = v54;
      v104 = *(v101 + 24) & 0x3FLL;
      if (v74 <= 0xE)
      {
        sub_100012B24();
        if (!v104)
        {

          v69 = 0;
          v54 = v103;
          goto LABEL_57;
        }

LABEL_56:
        static _HashTable.scale(forCapacity:)();
        v54 = v103;
        v69 = sub_100141AFC(v103);

        goto LABEL_57;
      }

LABEL_55:
      sub_100012B24();
      goto LABEL_56;
    }

    v69 = v153;
    if (swift_isUniquelyReferenced_native())
    {
      v74 = v165;
      goto LABEL_63;
    }

    v74 = v165;
    if (!v69)
    {
      goto LABEL_92;
    }

    v105 = v54;
    v106 = _HashTable.copy()();

    v69 = v106;
    v54 = v105;
LABEL_63:
    if (!v69)
    {
      goto LABEL_91;
    }

    v107 = *(v69 + 16);
    v108 = *(v54 + 16) + ~(*(v69 + 24) >> 6);
    v109 = (-1 << v107) ^ ~(((v108 >> 63) & ~(-1 << v107)) + v108);
    v110 = (v107 & 0x3F) * v87;
    v111 = v110 >> 6;
    *(v69 + 32 + 8 * (v110 >> 6)) = (v109 << v110) | ((((-1 << v107) + 1) << v110) - 1) & *(v69 + 32 + 8 * (v110 >> 6));
    v112 = 64 - (v110 & 0x3F);
    if (v112 >= (v107 & 0x3Fu))
    {
      goto LABEL_57;
    }

    v113 = (v107 & 0x3F) << (v107 & 0x3F);
    v114 = __OFADD__(v113, 64);
    v115 = v113 + 64;
    if (!v114)
    {
      if (v111 + 1 == (v115 - 1) / 64)
      {
        v116 = 0;
      }

      else
      {
        v116 = v111 + 1;
      }

      *(v69 + 32 + 8 * v116) = *(v69 + 32 + 8 * v116) & (-1 << (v107 - v112)) | (v109 >> v112);
LABEL_57:
      sub_100021010(&v186);

      v75 = v178;
      v76 = v179;
      continue;
    }

    break;
  }

  __break(1u);
LABEL_91:
  __break(1u);
LABEL_92:
  __break(1u);
}

void sub_10001FE30(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v4 = *(a2 + 16);
  v5 = a2 + 32;
  v23 = a2 + 32;
  v24 = v4;
LABEL_2:
  while (2)
  {
    if (v3 != v4)
    {
      v6 = v5 + 40 * v3;
      v7 = *(v6 + 16);
      v27 = *v6;
      v28 = v7;
      v29 = *(v6 + 32);
      v30 = v27;
      v8 = *(&v7 + 1);
      ++v3;
      v9 = *v2;
      v10 = v2[1];
      v11 = *(v10 + 16);
      if (*v2)
      {
        sub_100020E14(&v30, v26);

        sub_100142F9C(&v27, v10 + 32, v11, (v9 + 16));
        v13 = v12;

        if ((v13 & 1) == 0)
        {
          goto LABEL_28;
        }

        goto LABEL_27;
      }

      if (!v11)
      {
LABEL_26:
        sub_100020E14(&v30, v26);

        v2 = v25;
        v5 = v23;
        v4 = v24;
LABEL_27:
        sub_100020E70(&v27);
LABEL_28:
        sub_100021010(&v30);

        continue;
      }

      v14 = v28;
      v15 = v30;
      v16 = (v10 + 64);
      v17 = v29;
      while (1)
      {
        v19 = *(v16 - 2);
        v18 = *(v16 - 1);
        v20 = *v16;
        v21 = *(v16 - 4) == v15 && *(v16 - 3) == *(&v15 + 1);
        if (!v21 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          goto LABEL_25;
        }

        if (!v18)
        {
          break;
        }

        if (!v8)
        {
          goto LABEL_25;
        }

        if (v19 != v14 || v18 != v8)
        {
          if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            goto LABEL_25;
          }

LABEL_22:
          if (((v20 ^ v17) & 1) == 0)
          {
            goto LABEL_29;
          }

          goto LABEL_25;
        }

        if (v20 == (v17 & 1))
        {
LABEL_29:
          v2 = v25;
          v5 = v23;
          v4 = v24;
          goto LABEL_2;
        }

LABEL_25:
        v16 += 40;
        if (!--v11)
        {
          goto LABEL_26;
        }
      }

      if (v8)
      {
        goto LABEL_25;
      }

      goto LABEL_22;
    }

    break;
  }
}

uint64_t sub_100020000(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = 0;
  v30 = &_swiftEmptyArrayStorage;
  v4 = *(a4 + 16);
  if (v4)
  {
    v5 = a2;
    v6 = result;
    v7 = 0;
    v23 = a4 + 32;
    v24 = result;
    v22 = (a2 + 64);
    while (v7 < v4)
    {
      v8 = (v23 + 40 * v7);
      v9 = v8[1];
      v31 = *v8;
      v32 = v9;
      v33 = *(v8 + 32);
      v34[0] = v31;
      v10 = *(&v9 + 1);
      v11 = *(v5 + 16);
      if (v6)
      {
        sub_100020E14(v34, v28);

        sub_100142F9C(&v31, v5 + 32, v11, (v6 + 16));
        v13 = v12;

        if ((v13 & 1) == 0)
        {
          goto LABEL_27;
        }

        goto LABEL_28;
      }

      if (v11)
      {
        v14 = v32;
        v15 = v34[0];
        v16 = v22;
        v27 = v33;
        do
        {
          result = *(v16 - 4);
          v17 = *(v16 - 2);
          v18 = *(v16 - 1);
          v19 = *v16;
          if (result != v15 || *(v16 - 3) != *(&v15 + 1))
          {
            result = _stringCompareWithSmolCheck(_:_:expecting:)();
            if ((result & 1) == 0)
            {
              goto LABEL_24;
            }
          }

          if (v18)
          {
            if (!v10)
            {
              goto LABEL_24;
            }

            if (v17 != v14 || v18 != v10)
            {
              result = _stringCompareWithSmolCheck(_:_:expecting:)();
              if ((result & 1) == 0)
              {
                goto LABEL_24;
              }
            }
          }

          else if (v10)
          {
            goto LABEL_24;
          }

          if (((v19 ^ v27) & 1) == 0)
          {
            sub_100020E14(v34, v28);

LABEL_27:
            sub_100021064(&v31);
LABEL_28:
            sub_100021010(v34);

            break;
          }

LABEL_24:
          v16 += 40;
          --v11;
        }

        while (v11);
      }

      ++v7;
      v5 = a2;
      v4 = *(a4 + 16);
      v6 = v24;
      if (v7 == v4)
      {

        return v29;
      }
    }

    __break(1u);
  }

  else
  {

    return 0;
  }

  return result;
}

uint64_t sub_100020210@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v8 = v7;
  v16 = sub_100065020(&qword_1001B9CD0, &qword_100170778);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v19 = &v29 - v18;
  if (a1[1])
  {
    return sub_100009370(a1, a7, type metadata accessor for DaemonSession.LazyState);
  }

  *a1 = a2;
  a1[1] = a3;
  v21 = a1[2];

  a1[2] = a4;
  type metadata accessor for DaemonSession(0);
  Session.Metadata.useCaseID.getter();
  v22 = *(a5 + OBJC_IVAR____TtC13modelmanagerd13DaemonSession_isFoundationModelsEligible);
  sub_100009648();
  if (!v8)
  {
    v24 = v23;

    v25 = type metadata accessor for DaemonSession.LazyState(0);
    *(a1 + *(v25 + 32)) = v24 & 1;
    v26 = *(v25 + 24);
    sub_10010C4AC(a1 + v26, v19, &qword_1001B9CD0, &qword_100170778);
    v27 = type metadata accessor for InferenceProviderDescriptor();
    v28 = sub_10000C6C0(v19, 1, v27);
    sub_10000ECD8(v19, &qword_1001B9CD0, &qword_100170778);
    if (v28 == 1)
    {
      sub_10000ECD8(a1 + v26, &qword_1001B9CD0, &qword_100170778);
      (*(*(v27 - 8) + 16))(a1 + v26, a6, v27);
      sub_100009BFC(a1 + v26, 0, 1, v27);
    }

    return sub_100009370(a1, a7, type metadata accessor for DaemonSession.LazyState);
  }
}

char *sub_10002045C(char *a1, int64_t a2, char a3)
{
  result = sub_100025020(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_10002047C(uint64_t a1, uint64_t a2, void (*a3)(void *, char *), uint64_t a4, uint64_t a5)
{
  v24 = a3;
  v9 = type metadata accessor for ModelCatalogAsset(0);
  v22 = *(v9 - 8);
  v10 = *(v22 + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23[0] = a1;
  v23[1] = a2;
  v13 = 1 << *(a5 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(a5 + 56);
  v16 = (v13 + 63) >> 6;

  v18 = 0;
  while (v15)
  {
    v19 = v18;
LABEL_10:
    v20 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
    sub_100009370(*(a5 + 48) + *(v22 + 72) * (v20 | (v19 << 6)), v12, type metadata accessor for ModelCatalogAsset);
    v24(v23, v12);
    result = sub_1000125E8(v12, type metadata accessor for ModelCatalogAsset);
    if (v5)
    {
    }
  }

  while (1)
  {
    v19 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v19 >= v16)
    {

      return v23[0];
    }

    v15 = *(a5 + 56 + 8 * v19);
    ++v18;
    if (v15)
    {
      v18 = v19;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100020654(uint64_t a1, uint64_t a2, void *a3, char a4)
{
  v24 = &type metadata for ModelManager;
  v7 = sub_1000207F8();
  v25 = v7;
  LOBYTE(v23[0]) = 1;
  v8 = isFeatureEnabled(_:)();
  sub_100003324(v23);
  if (v8)
  {
    v9 = a3[3];
    v10 = a3[4];
    sub_100003370(a3, v9);
    if ((*(v10 + 8))(v9, v10))
    {
      goto LABEL_5;
    }
  }

  v24 = &type metadata for ModelManager;
  v25 = v7;
  LOBYTE(v23[0]) = 2;
  v11 = isFeatureEnabled(_:)();
  sub_100003324(v23);
  if (v11)
  {
    v12 = a3[3];
    v13 = a3[4];
    sub_100003370(a3, v12);
    if ((*(v13 + 16))(v12, v13))
    {
LABEL_5:
      if (a4)
      {
        v14 = *(a2 + 32);

        v16 = sub_100020A18(v15);
        sub_10001FE30(v16, v17);
      }
    }
  }

  v18 = *(a2 + 24);

  v20 = sub_100020A18(v19);
  sub_10001FE30(v20, v21);
}

unint64_t sub_1000207F8()
{
  result = qword_1001B8AF0;
  if (!qword_1001B8AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001B8AF0);
  }

  return result;
}

BOOL sub_1000208BC()
{
  v5 = 8;
  v6 = 0;
  if (sysctlbyname("kern.hv_vmm_present", &v6, &v5, 0, 0))
  {
    if (qword_1001B8978 != -1)
    {
      swift_once();
    }

    v0 = type metadata accessor for Logger();
    sub_10000641C(v0, qword_1001BC168);
    v1 = Logger.logObject.getter();
    v2 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v1, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      _os_log_impl(&_mh_execute_header, v1, v2, "Sysctl failed to get VM state, assuming physical device", v3, 2u);
    }
  }

  return v6 != 0;
}

uint64_t sub_100020A18(uint64_t a1)
{
  v6 = variable initialization expression of InferenceProviderManager.updatesReceived();
  result = sub_100020D4C(&v37, a1, 0, 1, v6);
  v8 = *(a1 + 16);
  v9 = v37;
  if (v37 != v8)
  {
    if ((v37 & 0x8000000000000000) != 0)
    {
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

    v32 = result;
    v1 = sub_10010C36C(0, v37, a1);
    v2 = v10;
    v3 = v11;
    v4 = v12;
    if (v12)
    {
      type metadata accessor for __ContiguousArrayStorageBase();
      swift_unknownObjectRetain_n();
      v14 = swift_dynamicCastClass();
      if (!v14)
      {
        swift_unknownObjectRelease();
        v14 = &_swiftEmptyArrayStorage;
      }

      v15 = v14[2];

      if (__OFSUB__(v4 >> 1, v3))
      {
        goto LABEL_48;
      }

      if (v15 != (v4 >> 1) - v3)
      {
        goto LABEL_49;
      }

      v2 = swift_dynamicCastClass();
      swift_unknownObjectRelease();
      if (v2)
      {
        goto LABEL_12;
      }

      v2 = &_swiftEmptyArrayStorage;
      goto LABEL_11;
    }

    while (1)
    {
      sub_10010A680(v1, v2, v3, v4);
      v2 = v13;
LABEL_11:
      swift_unknownObjectRelease();
LABEL_12:
      v38 = v32;
      v39 = v2;
      if (v8 >= v9)
      {
        break;
      }

LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      swift_unknownObjectRelease();
    }

    sub_10010C36C(v9, v8, a1);
    v9 = v16;
    v1 = v17;
    v8 = v18;

    v4 = v8 >> 1;
    v33 = v8 >> 1;
    v34 = v9;
LABEL_14:
    while (2)
    {
      if (v1 == v4)
      {
        swift_unknownObjectRelease();

        return v38;
      }

      if (v1 >= v4)
      {
        __break(1u);
        goto LABEL_46;
      }

      v19 = v9 + 40 * v1;
      v20 = *v19;
      v21 = *(v19 + 16);
      v42 = *(v19 + 32);
      v40 = v20;
      v41 = v21;
      v43 = *v19;
      v2 = *(&v21 + 1);
      ++v1;
      v8 = v38;
      v22 = v39;
      a1 = *(v39 + 2);
      if (v38)
      {
        sub_100020E14(&v43, v36);

        sub_100142F9C(&v40, (v22 + 32), a1, (v8 + 16));
        a1 = v23;
        v3 = v24;

        if ((a1 & 1) == 0)
        {
          goto LABEL_42;
        }

        goto LABEL_41;
      }

      v35 = v1;
      if (!a1)
      {
LABEL_40:
        sub_100020E14(&v43, v36);

        v3 = 0;
        v9 = v34;
        v1 = v35;
        v4 = v33;
LABEL_41:
        a1 = &v38;
        sub_100020E70(&v40);
LABEL_42:
        sub_100021010(&v43);

        continue;
      }

      break;
    }

    v3 = v41;
    v25 = v43;
    v26 = (v39 + 64);
    v27 = v42;
    while (1)
    {
      v8 = *(v26 - 2);
      v28 = *(v26 - 1);
      v29 = *v26;
      v30 = *(v26 - 4) == v25 && *(v26 - 3) == *(&v25 + 1);
      if (!v30 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        goto LABEL_39;
      }

      if (!v28)
      {
        break;
      }

      if (!v2)
      {
        goto LABEL_39;
      }

      if (v8 != v3 || v28 != v2)
      {
        if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          goto LABEL_39;
        }

LABEL_36:
        if (((v29 ^ v27) & 1) == 0)
        {
          goto LABEL_43;
        }

        goto LABEL_39;
      }

      if (v29 == (v27 & 1))
      {
LABEL_43:
        v9 = v34;
        v1 = v35;
        v4 = v33;
        goto LABEL_14;
      }

LABEL_39:
      v26 += 40;
      if (!--a1)
      {
        goto LABEL_40;
      }
    }

    if (v2)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  return result;
}

uint64_t sub_100020D4C(uint64_t *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v8 = *(a2 + 16);
  if (a4)
  {
    v9 = 0;
  }

  else
  {
    v9 = a3;
  }

  v10 = *(a2 + 16);
  v11 = static _HashTable.scale(forCapacity:)();
  if (v11 <= v9)
  {
    v12 = v9;
  }

  else
  {
    v12 = v11;
  }

  if (v12 <= a5)
  {
    v13 = a5;
  }

  else
  {
    v13 = v12;
  }

  if (v13 > 4)
  {
    v14 = _HashTable.init(scale:reservedScale:)();
    sub_10010BA6C(a2 + 32, v8, (v14 + 16), v14 + 32);
    *a1 = v15;
  }

  else
  {
    v14 = 0;
    if (v8 >= 2)
    {
      *a1 = sub_10010B0EC(a2 + 32, v8);
    }

    else
    {
      *a1 = v8;
    }
  }

  return v14;
}

uint64_t sub_100020E70(__int128 *a1)
{
  v2 = v1;
  v4 = *a1;
  v23 = a1[1];
  v24 = v4;
  v7 = v1[1];
  v5 = v1 + 1;
  v6 = v7;
  sub_100020E14(&v24, v22);
  sub_10001E72C(&v23, v22, &qword_1001BC8C8, &qword_100172F48);
  result = swift_isUniquelyReferenced_nonNull_native();
  *v5 = v7;
  if ((result & 1) == 0)
  {
    v9 = *(v6 + 16);
    v10 = sub_1000080E4();
    result = sub_10000C958(v10, v11, v12);
    v6 = *v5;
  }

  v14 = *(v6 + 16);
  v13 = *(v6 + 24);
  if (v14 >= v13 >> 1)
  {
    result = sub_10000C958((v13 > 1), v14 + 1, 1);
    v6 = *v5;
  }

  *(v6 + 16) = v14 + 1;
  v15 = v6 + 40 * v14;
  v16 = *a1;
  v17 = a1[1];
  *(v15 + 64) = *(a1 + 32);
  *(v15 + 32) = v16;
  *(v15 + 48) = v17;
  v2[1] = v6;
  v18 = *v2;
  if (!*v2)
  {
    if (v14 <= 0xE)
    {
      return result;
    }

    v20 = 0;
    goto LABEL_14;
  }

  sub_100004CBC();
  swift_beginAccess();
  v19 = *(v18 + 16);
  if (static _HashTable.maximumCapacity(forScale:)() <= v14)
  {
    v20 = *(v18 + 24) & 0x3FLL;
    if (v14 <= 0xE && !v20)
    {

      *v2 = 0;
      return result;
    }

LABEL_14:
    v21 = static _HashTable.scale(forCapacity:)();
    return sub_100141A44(v21, v20, sub_1001422A0, sub_100141B14);
  }

  result = sub_100141958();
  if (*v2)
  {
    return sub_100009EB0(*v2);
  }

  __break(1u);
  return result;
}

uint64_t sub_100021064(uint64_t a1)
{
  v2 = v1;
  v4 = *a1;
  v21 = *(a1 + 16);
  v22 = v4;
  v7 = v1[1];
  v5 = v1 + 1;
  v6 = v7;
  sub_100020E14(&v22, v20);
  sub_10010C4AC(&v21, v20, &qword_1001BC8C8, &qword_100172F48);
  result = swift_isUniquelyReferenced_nonNull_native();
  *v5 = v7;
  if ((result & 1) == 0)
  {
    result = sub_10000C958(0, *(v6 + 16) + 1, 1);
    v6 = *v5;
  }

  v10 = *(v6 + 16);
  v9 = *(v6 + 24);
  if (v10 >= v9 >> 1)
  {
    result = sub_10000C958((v9 > 1), v10 + 1, 1);
    v6 = *v5;
  }

  *(v6 + 16) = v10 + 1;
  v11 = v6 + 40 * v10;
  v12 = *a1;
  v13 = *(a1 + 16);
  *(v11 + 64) = *(a1 + 32);
  *(v11 + 32) = v12;
  *(v11 + 48) = v13;
  v2[1] = v6;
  v14 = *v2;
  if (!*v2)
  {
    if (v10 <= 0xE)
    {
      return result;
    }

    v18 = 0;
    goto LABEL_14;
  }

  swift_beginAccess();
  v15 = *(v14 + 16);
  if (static _HashTable.maximumCapacity(forScale:)() <= v10)
  {
    v18 = *(v14 + 24) & 0x3FLL;
    if (v10 <= 0xE && !v18)
    {

      *v2 = 0;
      return result;
    }

LABEL_14:
    v19 = static _HashTable.scale(forCapacity:)();
    return sub_100141A18(v19, v18);
  }

  result = sub_10014AF9C();
  v16 = *v2;
  if (*v2)
  {
    v17 = *v2;

    sub_10010C050((v16 + 16), v16 + 32, a1, v2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100021200()
{
  v1 = *v0;
  sub_100007D68();
  sub_10001B4AC();
  *v0 = v2;
}

uint64_t sub_100021248(uint64_t a1)
{
  v4 = type metadata accessor for InferenceProviderDescriptor();
  v35 = *(v4 - 8);
  v5 = v35[8];
  v6 = __chkstk_darwin(v4);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v31 - v9;
  v11 = variable initialization expression of InferenceProviderManager.updatesReceived();
  v12 = sub_1000216AC(&v38, a1, 0, 1, v11, &type metadata accessor for InferenceProviderDescriptor, sub_10010B6FC, sub_10010AE04);
  v13 = *(a1 + 16);
  i = v38;
  if (v38 != v13)
  {
    if ((v38 & 0x8000000000000000) != 0)
    {
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    v1 = sub_10010C2C4(0, v38, a1, &type metadata accessor for InferenceProviderDescriptor);
    v2 = v17;
    v32 = v12;
    if (v17)
    {
      v36 = v15;
      v37 = v16;
      type metadata accessor for __ContiguousArrayStorageBase();
      swift_unknownObjectRetain_n();
      v19 = swift_dynamicCastClass();
      if (!v19)
      {
        swift_unknownObjectRelease();
        v19 = &_swiftEmptyArrayStorage;
      }

      v20 = v19[2];

      if (__OFSUB__(v2 >> 1, v37))
      {
        goto LABEL_30;
      }

      if (v20 != (v2 >> 1) - v37)
      {
        goto LABEL_31;
      }

      v2 = swift_dynamicCastClass();
      swift_unknownObjectRelease();
      v12 = v32;
      if (v2)
      {
        goto LABEL_12;
      }

      v2 = &_swiftEmptyArrayStorage;
      goto LABEL_11;
    }

    while (1)
    {
      sub_10010A594(v1, v15, v16, v2, sub_100140564, &type metadata accessor for InferenceProviderDescriptor);
      v2 = v18;
LABEL_11:
      swift_unknownObjectRelease();
LABEL_12:
      v39 = v12;
      v40 = v2;
      if (v13 >= i)
      {
        break;
      }

LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      swift_unknownObjectRelease();
      v15 = v36;
      v16 = v37;
      v12 = v32;
    }

    v31 = sub_10010C2C4(i, v13, a1, &type metadata accessor for InferenceProviderDescriptor);
    v33 = v21;
    v13 = v22;
    v24 = v23;

    v34 = v24 >> 1;
    v37 = v35 + 2;
    v25 = (v35 + 1);
    for (i = v10; ; (*v25)(i, v4))
    {
      if (v13 == v34)
      {
        swift_unknownObjectRelease();

        return v39;
      }

      if (v13 >= v34)
      {
        __break(1u);
        goto LABEL_28;
      }

      v26 = v35;
      v2 = v35[9];
      v36 = v13;
      v1 = v35[2];
      v1(v10, v33 + v2 * v13, v4);
      a1 = v40 + ((*(v26 + 80) + 32) & ~*(v26 + 80));
      if (!v39)
      {
        break;
      }

      sub_100142DCC();
      a1 = v27;

      if (a1)
      {
        goto LABEL_24;
      }

LABEL_25:
      v13 = v36 + 1;
      v10 = i;
    }

    v28 = *(v40 + 16) + 1;
    while (--v28)
    {
      v1(v8, a1, v4);
      sub_1000218A0(&qword_1001BBE20, &type metadata accessor for InferenceProviderDescriptor);
      v29 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*v25)(v8, v4);
      a1 += v2;
      if (v29)
      {
        goto LABEL_25;
      }
    }

LABEL_24:
    a1 = &v39;
    sub_100141374();
    goto LABEL_25;
  }

  return v12;
}

uint64_t sub_1000216AC(uint64_t *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t (*a6)(void), void (*a7)(unint64_t, uint64_t, uint64_t, uint64_t), uint64_t (*a8)(unint64_t, uint64_t))
{
  v14 = *(a2 + 16);
  if (a4)
  {
    v15 = 0;
  }

  else
  {
    v15 = a3;
  }

  v16 = *(a2 + 16);
  v17 = static _HashTable.scale(forCapacity:)();
  if (v17 <= v15)
  {
    v18 = v15;
  }

  else
  {
    v18 = v17;
  }

  if (v18 <= a5)
  {
    v19 = a5;
  }

  else
  {
    v19 = v18;
  }

  if (v19 > 4)
  {
    v20 = _HashTable.init(scale:reservedScale:)();
    v21 = a6(0);
    sub_100002F04(v21);
    a7(a2 + ((*(v22 + 80) + 32) & ~*(v22 + 80)), v14, v20 + 16, v20 + 32);
    *a1 = v23;
  }

  else if (v14 >= 2)
  {
    v24 = a6(0);
    sub_100002F04(v24);
    v26 = a8(a2 + ((*(v25 + 80) + 32) & ~*(v25 + 80)), v14);
    v20 = 0;
    *a1 = v26;
  }

  else
  {
    v20 = 0;
    *a1 = v14;
  }

  return v20;
}

unint64_t sub_100021800@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v5 = result;
  if (*(a2 + 16) <= result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v7 = a3(0);
  v8 = sub_100002C00(v7);
  v10 = *(v9 + 16);
  v11 = a2 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v5;

  return v10(a4, v11, v8);
}

uint64_t sub_1000218A0(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    sub_1000055A4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100021908()
{
  sub_100002BAC();
  v1 = *(v0 + 56);
  sub_100065020(&qword_1001B9CE0, &qword_100170F90);
  CheckedContinuation.resume(returning:)();
  v2 = *(v0 + 64);

  sub_100001F00();

  return v3();
}

uint64_t sub_1000219B0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100021980();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1000219F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_10000385C();
  sub_100003284();
  sub_100024640(v16, v17, &qword_1001B9CB0, &qword_100171E70);
  if (v14[15])
  {
    sub_1000DB4A4();
    v18 = swift_task_alloc();
    v14[32] = v18;
    *v18 = v14;
    v18[1] = sub_1000177D8;
    v19 = v14[22];
    v20 = v14[18];
    sub_1000031B8(v14[17]);
    sub_100003540();

    return sub_100023A48(v21, v22, v23);
  }

  else
  {
    sub_10000ED84((v14 + 12), &qword_1001B9CB0);
    if (qword_1001B8930 != -1)
    {
      sub_100005154();
      swift_once();
    }

    v27 = v14[24];
    v26 = v14[25];
    v28 = v14[23];
    v29 = v14[21];
    v30 = type metadata accessor for Logger();
    sub_10000641C(v30, qword_1001BB110);
    v31 = sub_100008440();
    v32(v31);
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.error.getter();
    v35 = sub_1000038BC(v34);
    v37 = v14[24];
    v36 = v14[25];
    v38 = v14[23];
    if (v35)
    {
      sub_10000A05C();
      swift_slowAlloc();
      sub_10000A45C();
      swift_slowAlloc();
      sub_1000265BC();
      *v15 = 136315138;
      sub_10000950C();
      sub_100011B14(v39, v40);
      sub_100042FBC();
      sub_100045E40();
      v41 = sub_1000194A4();
      v42(v41);
      v43 = sub_10000CD1C();
      sub_100004A3C(v43, v44, v45);
      sub_100005974();

      *(v15 + 4) = v36;
      sub_1000033FC();
      _os_log_impl(v46, v47, v48, v49, v50, 0xCu);
      sub_100003324(v27);
      sub_1000039CC();

      sub_10000BFCC();
    }

    else
    {

      v51 = sub_1000194A4();
      v52(v51);
    }

    v53 = v14[21];
    type metadata accessor for ModelManagerError();
    sub_1000113B0();
    sub_100011B14(v54, v55);
    sub_100013D58();
    swift_allocError();
    v57 = v56;
    *v56 = InferenceProviderDescriptor.description.getter();
    v57[1] = v58;
    sub_1000076C8();
    (*(v59 + 104))(v57);
    swift_willThrow();
    sub_10000ED84((v14 + 2), &qword_1001B9CB0);
    v61 = v14[28];
    v60 = v14[29];
    v62 = v14[25];

    sub_100001F00();
    sub_100003540();

    return v64(v63, v64, v65, v66, v67, v68, v69, v70, a9, a10, a11, a12, a13, a14);
  }
}

void sub_100021CF4(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1;
  v4 = [objc_opt_self() identifierWithPid:a1];
  if (v4)
  {
    v5 = v4;
    sub_10000E2C0(0, &qword_1001BA4A0, RBSProcessHandle_ptr);
    v6 = v5;
    v7 = sub_10001B620(v6);
    sub_100021FA0(v7, v19);
    v12 = v19[0];
    v17 = v21;
    v18 = v20;
    v16 = v22;

    v14 = v16;
    v13 = v17;
    v15 = v18;
  }

  else
  {
    if (qword_1001B8968 != -1)
    {
      sub_100005224();
    }

    v8 = type metadata accessor for Logger();
    sub_100002FD0(v8, qword_1001BBF20);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = sub_100003788();
      *v11 = 67109120;
      *(v11 + 4) = v2;
      _os_log_impl(&_mh_execute_header, v9, v10, "Failed to get RBSProcessIdentifier for %d.", v11, 8u);
      sub_100002BB8();
    }

    v12 = 0;
    v15 = xmmword_10016FF50;
    v13 = 0uLL;
    v14 = 0uLL;
  }

  *a2 = v12;
  *(a2 + 8) = v15;
  *(a2 + 24) = v13;
  *(a2 + 40) = v14;
}

void sub_100021FA0(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 isDaemon];
  v5 = sub_1000220B8(a1);
  v7 = v6;
  v8 = [a1 bundle];
  if (v8)
  {
    v9 = sub_10002211C(v8);
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  v12 = [a1 bundle];
  v13 = v12;
  if (!v12)
  {

LABEL_9:
    v16 = 0;
    goto LABEL_10;
  }

  v14 = [v12 executablePath];

  if (!v14)
  {

    v13 = 0;
    goto LABEL_9;
  }

  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

LABEL_10:
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v7;
  *(a2 + 24) = v9;
  *(a2 + 32) = v11;
  *(a2 + 40) = v13;
  *(a2 + 48) = v16;
}

uint64_t sub_1000220B8(void *a1)
{
  v1 = [a1 daemonJobLabel];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_10002211C(void *a1)
{
  v2 = [a1 identifier];

  if (!v2)
  {
    return 0;
  }

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

void sub_10002218C(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for DaemonSession.LazyState(0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100065020(&qword_1001B9CD0, &qword_100170778);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v15 - v12;
  sub_100022368();
  v14 = type metadata accessor for InferenceProviderDescriptor();
  if (sub_10000C6C0(v13, 1, v14) == 1)
  {
    sub_10000ECD8(v13, &qword_1001B9CD0, &qword_100170778);
    sub_10001AE40();
    if (v1)
    {
      return;
    }

    swift_getAtKeyPath();
    if (sub_10000C6C0(v11, 1, v14) == 1)
    {
      __break(1u);
      return;
    }

    sub_1000125E8(v6, type metadata accessor for DaemonSession.LazyState);
  }

  else
  {
    v11 = v13;
  }

  (*(*(v14 - 8) + 32))(a1, v11, v14);
}

void sub_100022368()
{
  v1 = *(v0 + OBJC_IVAR____TtC13modelmanagerd13DaemonSession__lazyState);
  v2 = *(*v1 + class metadata base offset for ManagedBuffer + 16);
  v3 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v1 + v3));
  sub_100022424();

  os_unfair_lock_unlock((v1 + v3));
}

uint64_t sub_100022450()
{
  sub_100001ED0();
  sub_100004B10();
  v0 = swift_task_alloc();
  v1 = sub_100004B00(v0);
  *v1 = v2;
  v3 = sub_100004F40(v1);

  return v4(v3);
}

uint64_t sub_1000224E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_10000385C();
  sub_100003284();
  v16 = v14[73];
  v17 = v14[69];
  v18 = *(v14[33] + 168);
  v14[74] = sub_10001CFA8();
  if (v16)
  {
    sub_100003324(v14 + 22);
    if (qword_1001B88F0 != -1)
    {
      sub_10000505C();
      swift_once();
    }

    v23 = v14[69];
    v24 = type metadata accessor for Logger();
    sub_10000641C(v24, qword_1001B9A18);
    sub_10000D0E8();

    swift_errorRetain();
    v25 = Logger.logObject.getter();
    static os_log_type_t.error.getter();
    sub_10001E6F0();

    if (os_log_type_enabled(v25, v15))
    {
      v26 = v14[69];
      sub_1000267F8();
      v27 = sub_1000039DC();
      sub_1000033D0();
      a10 = swift_slowAlloc();
      sub_100026B40(4.8151e-34);
      sub_10001AFF8();
      sub_10000CD00();
      v28 = sub_10000CF10();
      sub_100004A3C(v28, v29, v30);
      sub_10000A08C();

      sub_100003760();
      swift_errorRetain();
      v31 = _swift_stdlib_bridgeErrorToNSError();
      sub_10003DDBC(v31);
      sub_100005A04();
      _os_log_impl(v32, v33, v34, v35, v36, 0x16u);
      sub_10001301C(v27, &qword_1001B8F68);
      sub_100002BD0();

      sub_100003324(a10);
      sub_100007C2C();

      sub_100002BD0();
    }

    else
    {
    }

    v37 = async function pointer to Task<>.value.getter[1];
    swift_task_alloc();
    sub_100004B34();
    v14[78] = v38;
    *v38 = v39;
    sub_100002FAC(v38);
    sub_1000A0258();
    sub_100003540();

    return Task<>.value.getter(v40, v41, v42, v43, v44, v45, v46, v47, a9, a10, a11, a12, a13, a14);
  }

  else
  {
    v19 = v14[33];
    v14[75] = sub_10001B304(v14[30], v14[31]);
    v20 = v14[69];
    v21 = v14[53];
    v22 = v14[38];
    Session.Metadata.id.getter();
    sub_10001D000(v22);
    v48 = swift_task_alloc();
    v14[76] = v48;
    *v48 = v14;
    v48[1] = sub_1000292C8;
    v49 = v14[70];
    v50 = v14[53];
    v51 = v14[38];
    sub_10001B228();
    sub_100003540();

    return sub_10001D35C();
  }
}

uint64_t sub_1000227C8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 56))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10002281C()
{
  sub_100002BAC();
  sub_100001EF4();
  v3 = v2;
  sub_100004B40();
  *v4 = v3;
  v6 = *(v5 + 576);
  v7 = *v1;
  sub_100002B9C();
  *v8 = v7;
  v3[73] = v0;

  if (v0)
  {
    v9 = v3[33];
    v10 = sub_100092580;
  }

  else
  {
    v11 = v3[71];
    v12 = v3[33];

    v10 = sub_1000224E0;
    v9 = v12;
  }

  return _swift_task_switch(v10, v9, 0);
}

uint64_t sub_10002292C(int a1)
{
  *(v2 + 16) = v1;
  *(v2 + 64) = a1;
  return sub_100004B70(sub_100022F30, 0);
}

uint64_t sub_10002294C()
{
  sub_100001ED0();
  v1 = *(v0 + 40);
  v2 = swift_task_alloc();
  sub_100012AE8(v2);
  v3 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  sub_100065020(&qword_1001BC090, &qword_100172940);
  *v4 = v0;
  v4[1] = sub_100022DE8;
  sub_10000895C();

  return withCheckedThrowingContinuation<A>(isolation:function:_:)();
}

uint64_t sub_100022A84()
{
  sub_100002BAC();
  sub_100001EF4();
  sub_100003744();
  *v2 = v1;
  v4 = *(v3 + 32);
  v5 = *(v3 + 24);
  v6 = *v0;
  sub_100002B9C();
  *v7 = v6;
  *(v9 + 44) = v8;

  v10 = sub_100002C10();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_100022B7C()
{
  sub_100003884();
  if (sub_10000E8DC(*(v0 + 48)))
  {
    v1 = *(v0 + 48) & 0xC000000000000001;
    sub_100022A7C(0);
    if (v1)
    {
      v16 = *(v0 + 48);
      v2 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v17 = *(v0 + 48);
    }

    else
    {
      v2 = *(*(v0 + 48) + 32);
    }

    v3 = *(v0 + 24);

    v4 = sub_10001C19C(v2);
  }

  else
  {
    v5 = *(v0 + 48);

    if (qword_1001B8968 != -1)
    {
      sub_100005224();
    }

    v6 = type metadata accessor for Logger();
    sub_100002FD0(v6, qword_1001BBF20);
    v3 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    v8 = sub_100002F80(v7);
    v9 = *(v0 + 24);
    if (v8)
    {
      v10 = *(v0 + 64);
      v11 = sub_100003788();
      *v11 = 67109120;
      v11[1] = v10;
      sub_100002DA4(&_mh_execute_header, v12, v13, "Failed to get RBSProcessHandle for %d. Interpreting as process terminated");
      sub_100002F64();
    }

    v4 = 3;
  }

  sub_100001F7C();

  return v14(v4);
}

uint64_t sub_100022CDC()
{
  sub_100002BAC();
  sub_100001EF4();
  v3 = v2;
  sub_100004B40();
  *v4 = v3;
  v6 = *(v5 + 40);
  *v4 = *v1;
  v3[6] = v7;
  v3[7] = v0;

  if (v0)
  {
    v8 = sub_1000FC428;
  }

  else
  {
    v9 = v3[4];

    v8 = sub_100022B7C;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_100022DE8()
{
  sub_100002BAC();
  sub_100001EF4();
  v3 = v2;
  sub_100004B40();
  *v4 = v3;
  v6 = *(v5 + 56);
  v7 = *v1;
  sub_100002B9C();
  *v8 = v7;
  v3[8] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10009BC88, 0, 0);
  }

  else
  {
    v9 = v3[6];

    v10 = v3[2];
    sub_100001F7C();

    return v11();
  }
}

unint64_t sub_100022F0C(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_100022F30()
{
  sub_100003884();
  v1 = [objc_opt_self() identifierWithPid:*(v0 + 64)];
  *(v0 + 24) = v1;
  if (v1)
  {
    v2 = v1;
    v3 = *(*(v0 + 16) + OBJC_IVAR____TtC13modelmanagerd20RunningBoardProvider_queue);
    v4 = swift_allocObject();
    *(v0 + 32) = v4;
    *(v4 + 16) = v2;
    v5 = v2;
    v6 = swift_task_alloc();
    *(v0 + 40) = v6;
    *v6 = v0;
    v6[1] = sub_100022CDC;

    return (sub_100023268)(sub_100022A60, v4);
  }

  else
  {
    if (qword_1001B8968 != -1)
    {
      sub_100005224();
    }

    v8 = type metadata accessor for Logger();
    sub_100002FD0(v8, qword_1001BBF20);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (sub_100002F80(v10))
    {
      v11 = *(v0 + 64);
      v12 = sub_100003788();
      sub_10000A300(v12, 1.5047e-36);
      sub_100002DA4(&_mh_execute_header, v13, v14, "Failed to get RBSProcessIdentifier for %d. Interpreting as process terminated");
      sub_100002F64();
    }

    sub_100001F7C();

    return v15(3);
  }
}

uint64_t sub_100023110()
{
  sub_10000639C();
  sub_100003884();
  sub_1000089AC();
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = swift_task_alloc();
  v4 = sub_100004B00(v3);
  *v4 = v5;
  sub_100007D94(v4);
  sub_100003D20();

  return sub_100023244(v6, v7, v8, v9, v10);
}

uint64_t sub_1000231A8()
{
  sub_100002BAC();
  v1 = *sub_10000D070(*(v0 + 24));
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  v2[1] = sub_100022A84;
  v3 = *(v0 + 40);

  return sub_10002292C(v3);
}

uint64_t sub_100023244(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  *(v5 + 40) = a5;
  *(v5 + 16) = a1;
  *(v5 + 24) = a4;
  return _swift_task_switch(sub_1000231A8, a4, 0);
}

uint64_t sub_100023268(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  return _swift_task_switch(sub_10002294C, 0, 0);
}

uint64_t sub_100023298()
{
  sub_100002BAC();
  sub_1000264C4(**(v0 + 32), *(*(v0 + 32) + 8), *(v0 + 40), *(v0 + 56));
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = sub_100027638;
  v3 = *(v0 + 48);
  v2 = *(v0 + 56);
  v4 = *(v0 + 24);
  sub_1000031B8(*(v0 + 32));

  return sub_100023338();
}

uint64_t sub_100023338()
{
  sub_100002BAC();
  v1[90] = v0;
  v1[89] = v2;
  v1[88] = v3;
  v1[87] = v4;
  State = type metadata accessor for LoadState();
  v1[91] = State;
  sub_100002F44(State);
  v1[92] = v6;
  v8 = *(v7 + 64);
  v1[93] = sub_100002C58();
  v9 = type metadata accessor for AssetCost();
  v1[94] = v9;
  sub_100002F44(v9);
  v1[95] = v10;
  v12 = *(v11 + 64);
  v1[96] = sub_100002C58();
  v13 = type metadata accessor for InferenceProviderAssetDescriptor();
  v1[97] = v13;
  sub_100002F44(v13);
  v1[98] = v14;
  v16 = *(v15 + 64);
  v1[99] = sub_10000F0C0();
  v1[100] = swift_task_alloc();
  v17 = sub_100065020(&qword_1001B9D00, &qword_100171E00);
  sub_100002F04(v17);
  v19 = *(v18 + 64);
  v1[101] = sub_10000F0C0();
  v1[102] = swift_task_alloc();
  v1[103] = swift_task_alloc();
  v1[104] = swift_task_alloc();
  v20 = type metadata accessor for ModelCatalogAsset(0);
  v1[105] = v20;
  sub_100002F04(v20);
  v22 = *(v21 + 64);
  v1[106] = sub_10000F0C0();
  v1[107] = swift_task_alloc();
  v23 = type metadata accessor for InferenceProviderDescriptor();
  v1[108] = v23;
  sub_100002F44(v23);
  v1[109] = v24;
  v26 = *(v25 + 64);
  v1[110] = sub_100002C58();
  v27 = type metadata accessor for ModelCatalogAssetVersionedData(0);
  v1[111] = v27;
  sub_100002F04(v27);
  v29 = *(v28 + 64);
  v1[112] = sub_10000F0C0();
  v1[113] = swift_task_alloc();
  v30 = type metadata accessor for InferenceProviderAsset.ManagerOwnedState(0);
  v1[114] = v30;
  sub_100002F04(v30);
  v32 = *(v31 + 64);
  v1[115] = sub_100002C58();
  v33 = sub_100002C10();

  return _swift_task_switch(v33, v34, v35);
}

uint64_t sub_1000235AC()
{
  sub_100001ED0();
  v1 = *(v0 + 16);
  if (sub_100019684())
  {
    v2 = swift_task_alloc();
    *(v0 + 24) = v2;
    *v2 = v0;
    v2[1] = sub_10001CB98;
    v3 = *(v0 + 16);

    return sub_1000E6EBC();
  }

  else
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
    if (sub_100002F80(v7))
    {
      v8 = sub_100007648();
      sub_10000A240(v8);
      sub_1000059D8(&_mh_execute_header, v9, v10, "No assets have a pending version change");
      sub_100002BD0();
    }

    sub_100001F00();

    return v11();
  }
}

unint64_t sub_1000236F4(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();

  return sub_1000256A8(a1, a2, v6);
}

void (*sub_10002376C(void *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t a1, char a2)
{
  v5 = v4;
  v9 = sub_1000B7230(0x68uLL);
  *a1 = v9;
  v9[1] = a3;
  v9[2] = v4;
  *v9 = a2;
  v10 = type metadata accessor for InferenceProviderManager.ConnectionCollection.Group(0);
  v9[3] = v10;
  v11 = *(v10 - 8);
  v12 = v11;
  v9[4] = v11;
  v13 = *(v11 + 64);
  v9[5] = sub_1000B7230(v13);
  v9[6] = sub_1000B7230(v13);
  v9[7] = sub_1000B7230(v13);
  v14 = *(*(sub_100065020(&qword_1001BAA00, &qword_100171578) - 8) + 64);
  v9[8] = sub_1000B7230(v14);
  v9[9] = sub_1000B7230(v14);
  v15 = sub_1000B7230(v14);
  v9[10] = v15;
  v16 = *v4;
  v17 = sub_1000236F4(a2, a3);
  *(v9 + 96) = v18 & 1;
  v19 = *(v16 + 16);
  v20 = (v18 & 1) == 0;
  v21 = v19 + v20;
  if (__OFADD__(v19, v20))
  {
    __break(1u);
    goto LABEL_10;
  }

  v22 = v17;
  v23 = v18;
  sub_100065020(&qword_1001BAA08, &qword_100171580);
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(a4 & 1, v21))
  {
    v24 = *v5;
    v25 = sub_1000236F4(a2, a3);
    if ((v23 & 1) == (v26 & 1))
    {
      v22 = v25;
      goto LABEL_5;
    }

LABEL_10:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_5:
  v9[11] = v22;
  if (v23)
  {
    v27 = *(*v5 + 56);
    v28 = *(v12 + 72);
    sub_1000BA610();
    v29 = 0;
  }

  else
  {
    v29 = 1;
  }

  sub_100009BFC(v15, v29, 1, v10);
  return sub_100025AEC;
}

uint64_t sub_1000239D4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);

  return sub_100004A3C(a1, a2, va);
}

uint64_t sub_1000239EC()
{
  v2 = *v0;

  return static _SetStorage.copy(original:)();
}

uint64_t sub_100023A08()
{
  v2 = v0[16];
  v3 = v0[17];
  v4 = v0[13];
  v5 = v0[9];
  v6 = v0[7];
  v7 = v0[10] + 304;

  return sub_100007130(v7, (v0 + 2));
}

uint64_t sub_100023A48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[11] = a3;
  v4[12] = v3;
  v4[9] = a1;
  v4[10] = a2;
  return sub_100004B70(sub_100024DE8, v3);
}

uint64_t sub_100023A68()
{
  sub_100002BAC();
  sub_1000DAF50(v0[22]);
  swift_task_alloc();
  sub_100004B34();
  v0[30] = v1;
  *v1 = v2;
  v1[1] = sub_100024724;
  v3 = v0[21];
  v4 = sub_10004AE38();

  return sub_1000253E8(v4, v5);
}

uint64_t sub_100023B04()
{
  v1 = *(v0 + 720);
  v2 = *(v0 + 712);
  v3 = OBJC_IVAR____TtC13modelmanagerd29InferenceProviderAssetManager_assets;
  *(v0 + 928) = OBJC_IVAR____TtC13modelmanagerd29InferenceProviderAssetManager_assets;
  v69 = *(v0 + 696);
  sub_100004CBC();
  swift_beginAccess();
  v4 = *&v3[v1];
  v5 = swift_task_alloc();
  *(v5 + 16) = v69;
  *(v5 + 32) = v2;

  v6 = sub_1000241C8(sub_1000241A4, v5, v4);
  *(v0 + 936) = v6;

  if (v6)
  {
    if (qword_1001B8930 != -1)
    {
      sub_100005154();
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    *(v0 + 944) = sub_10000641C(v7, qword_1001BB110);

    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v8, v9))
    {
      sub_10000A05C();
      v10 = swift_slowAlloc();
      sub_1000033D0();
      v72 = swift_slowAlloc();
      *v10 = 136315138;

      v11 = sub_100027434();

      v12 = sub_1000037BC();
      sub_100004A3C(v12, v13, v14);
      sub_10000A08C();

      *(v10 + 4) = v11;
      _os_log_impl(&_mh_execute_header, v8, v9, "assetFromModelCatalogAsset found existing: %s", v10, 0xCu);
      sub_100003324(v72);
      sub_100002BD0();

      sub_100005864();
    }

    v15 = *(v0 + 912);
    v16 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState;
    *(v0 + 952) = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState;
    v17 = &v16[v6];
    sub_100004CBC();
    swift_beginAccess();
    sub_100007130(&v17[*(v15 + 60)], v0 + 416);
    v18 = *(v0 + 448);
    sub_100003370((v0 + 416), *(v0 + 440));
    v19 = *(v18 + 16);
    v20 = sub_100007B78();
    v22 = v21(v20);
    sub_100003324((v0 + 416));
    sub_100007130(&v17[*(v15 + 60)], v0 + 456);
    v23 = *(v0 + 488);
    sub_100003370((v0 + 456), *(v0 + 480));
    sub_1000DAFA0();
    v24 = sub_10000CD1C();
    v25(v24);
    v51 = *(v0 + 912);
    sub_100003324((v0 + 456));
    if (v22 & 1 | ((v17[*(v51 + 56)] & 1) == 0))
    {
      v52 = *(v0 + 920);
      v53 = *(v0 + 904);
      sub_100010C60();
      v65 = *(v0 + 808);
      v66 = *(v0 + 800);
      v67 = *(v0 + 792);
      v68 = *(v0 + 768);
      v70 = *(v0 + 744);

      sub_10000EEAC();
      sub_1000135DC();

      __asm { BRAA            X2, X16 }
    }

    sub_100007130(&v17[*(v15 + 60)], v0 + 496);
    v56 = *(v0 + 520);
    v57 = *(v0 + 528);
    sub_100010BB8((v0 + 496));
    v58 = *(v57 + 40);
    sub_100004B94();
    v71 = v59 + *v59;
    v61 = *(v60 + 4);
    v62 = swift_task_alloc();
    *(v0 + 960) = v62;
    *v62 = v0;
    sub_1000071DC(v62);
    sub_1000135DC();

    __asm { BRAA            X2, X16 }
  }

  v26 = *(v0 + 880);
  v27 = *(v0 + 872);
  v28 = *(v0 + 864);
  v29 = *(v0 + 712);
  v30 = *(v0 + 696);
  v31 = sub_100003370((*(v0 + 720) + OBJC_IVAR____TtC13modelmanagerd29InferenceProviderAssetManager_modelCatalog), *(*(v0 + 720) + OBJC_IVAR____TtC13modelmanagerd29InferenceProviderAssetManager_modelCatalog + 24));
  v32 = *v30;
  v33 = v30[1];
  v35 = *(v29 + 24);
  v34 = *(v29 + 32);
  v36 = sub_100008004();
  sub_100003370(v36, v37);
  v38 = *(v34 + 8);
  v39 = sub_10000D048();
  v40(v39);
  v41 = InferenceProviderDescriptor.id.getter();
  v43 = v42;
  (*(v27 + 8))(v26, v28);
  if (v41 != 0x666E692D74736F68 || v43 != 0xEE0065636E657265)
  {
    sub_100008004();
    _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v45 = *v31;
  swift_task_alloc();
  sub_100004B34();
  *(v0 + 976) = v46;
  *v46 = v47;
  v46[1] = sub_1000CA708;
  v48 = *(v0 + 904);
  sub_1000135DC();

  return sub_1001107EC();
}

uint64_t sub_1000241A4()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  sub_10001A5E0();
  return v4 & 1;
}

void sub_100024224()
{
  sub_1000055B0();
  v1 = v0;
  v3 = v2;
  v4 = type metadata accessor for ModelCatalogAsset(0);
  v5 = sub_100002F44(v4);
  v70 = v6;
  v8 = *(v7 + 64);
  __chkstk_darwin(v5);
  sub_100009C24();
  v72 = v9;
  sub_100002F1C();
  __chkstk_darwin(v10);
  v12 = (&v65 - v11);
  v75[3] = &type metadata for GenerativeModels;
  v75[4] = sub_100026664();
  v13 = isFeatureEnabled(_:)();
  sub_100003324(v75);
  sub_100065020(&qword_1001B9F78, &qword_100171DF0);
  v14 = Dictionary.init(dictionaryLiteral:)();
  v15 = v14;
  v71 = v3;
  if (v13)
  {
    v74 = v14;
    v16 = *(v3 + 56);
    v17 = *(v3 + 32);
    sub_100002F28();
    v20 = v19 & v18;
    v22 = (v21 + 63) >> 6;

    v23 = 0;
    if (v20)
    {
      while (1)
      {
        v24 = v23;
LABEL_7:
        sub_1000DB34C();
        v25 = *(v71 + 48);
        v26 = *(v70 + 72);
        sub_100007E28();
        sub_1000192DC(v27, v12);
        v28 = v12[2];
        v29 = *(v28 + 16);
        for (i = (v28 + 40); v29; --v29)
        {
          v31 = *i;
          v75[0] = *(i - 1);
          v75[1] = v31;

          sub_1000CC24C(v75, &v74, v1, v12);

          i += 2;
        }

        sub_100019A7C();
        sub_100019338();
        v23 = v24;
      }
    }

    while (1)
    {
      v24 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v24 >= v22)
      {
        goto LABEL_26;
      }

      ++v23;
      if (*(v3 + 56 + 8 * v24))
      {
        goto LABEL_7;
      }
    }

LABEL_28:
    __break(1u);
  }

  else
  {
    v33 = v3 + 56;
    v32 = *(v3 + 56);
    v34 = *(v3 + 32);
    sub_100002F28();
    v69 = v36 & v35;
    v67 = (v37 + 63) >> 6;

    v38 = 0;
    for (j = v3 + 56; ; v33 = j)
    {
      v39 = v69;
      if (!v69)
      {
        break;
      }

      v40 = v38;
LABEL_16:
      v68 = v40;
      v69 = (v39 - 1) & v39;
      v41 = *(v3 + 48);
      v42 = *(v70 + 72);
      sub_100007E28();
      v43 = v72;
      sub_1000192DC(v44, v72);
      v45 = v43[2];
      v46 = *(v45 + 16);
      v47 = (v45 + 40);
      if (v46)
      {
        while (1)
        {
          v73 = v46;
          v48 = *(v47 - 1);
          v49 = *v47;
          v50 = v47;
          v52 = *v72;
          v51 = v72[1];
          swift_bridgeObjectRetain_n();

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v75[0] = v15;
          v54 = sub_1000236F4(v48, v49);
          v56 = *(v15 + 16);
          v57 = (v55 & 1) == 0;
          v58 = v56 + v57;
          if (__OFADD__(v56, v57))
          {
            break;
          }

          v59 = v54;
          v60 = v55;
          sub_100065020(&qword_1001BB428, &qword_100171DF8);
          v61 = _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v58);
          v15 = v75[0];
          if (v61)
          {
            v62 = sub_1000236F4(v48, v49);
            if ((v60 & 1) != (v63 & 1))
            {
              goto LABEL_30;
            }

            v59 = v62;
          }

          if (v60)
          {
          }

          else
          {
            sub_1001185E0(v59, v48, v49, &_swiftEmptySetSingleton, v15);
          }

          v64 = *(v15 + 56) + 8 * v59;
          sub_10007CC90();

          v47 = v50 + 2;
          v46 = v73 - 1;
          if (v73 == 1)
          {
            goto LABEL_25;
          }
        }

        __break(1u);
        goto LABEL_28;
      }

LABEL_25:
      sub_100019A7C();
      sub_100019338();
      v38 = v68;
      v3 = v71;
    }

    while (1)
    {
      v40 = v38 + 1;
      if (__OFADD__(v38, 1))
      {
        break;
      }

      if (v40 >= v67)
      {
LABEL_26:

        sub_100002EEC();
        return;
      }

      v39 = *(v33 + 8 * v40);
      ++v38;
      if (v39)
      {
        goto LABEL_16;
      }
    }
  }

  __break(1u);
LABEL_30:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

uint64_t sub_100024640(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_10001E72C(v4 + 16, v4 + 96, a3, a4);
}

uint64_t sub_100024658()
{
  v2 = *(v0 + 409);
}

uint64_t sub_100024670()
{
  sub_1000094B0();
  sub_10000636C();
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[9];
  v4 = v0[10];
  v5 = swift_task_alloc();
  v6 = sub_100004B00(v5);
  *v6 = v7;
  v6[1] = sub_10006FA64;
  sub_10000CD38();
  sub_100006378();

  return sub_100025A20(v8, v9, v10, v11, v12, v13, v14);
}

uint64_t sub_100024724()
{
  sub_100001ED0();
  sub_10000D554();
  sub_100004B40();
  *v4 = v3;
  v5 = *(v1 + 240);
  *v4 = *v2;
  *(v3 + 248) = v0;

  sub_10000A9E0();
  v7 = *(v6 + 176);
  sub_10000E700();

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_100024838(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v72 = *(v10 + 216);
  v11 = *(v10 + 136);
  v14 = *(v11 + 56);
  v13 = v11 + 56;
  v12 = v14;
  v15 = -1;
  v16 = -1 << *(*(v10 + 136) + 32);
  if (-v16 < 64)
  {
    v15 = ~(-1 << -v16);
  }

  v17 = v15 & v12;
  v18 = (63 - v16) >> 6;
  v68 = *(v10 + 224) + 7;
  v71 = *(v10 + 136);

  v27 = 0;
  v69 = v18;
  v70 = v13;
  if (v17)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v28 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      __break(1u);
      return TaskGroup.Iterator.next(isolation:)(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10);
    }

    if (v28 >= v18)
    {
      break;
    }

    v17 = *(v13 + 8 * v28);
    ++v27;
    if (v17)
    {
      v27 = v28;
      do
      {
LABEL_8:
        v29 = *(v10 + 232);
        v30 = *(v10 + 240);
        v31 = *(v10 + 208);
        v32 = *(v10 + 160);
        v75 = *(v10 + 152);
        v76 = *(v10 + 200);
        v73 = v31;
        v74 = *(v10 + 144);
        v33 = *(v71 + 48);
        v34 = *(v72 + 72);
        sub_100007E28();
        sub_1000192DC(v35, v30);
        v36 = type metadata accessor for TaskPriority();
        sub_100003978();
        sub_100009BFC(v37, v38, v39, v36);
        sub_100025814(v30, v29);
        sub_100007130(v32, v10 + 16);
        v40 = (*(v72 + 80) + 40) & ~*(v72 + 80);
        v41 = (v68 + v40) & 0xFFFFFFFFFFFFFFF8;
        v42 = swift_allocObject();
        v42[2] = 0;
        v77 = v42 + 2;
        v42[3] = 0;
        v42[4] = v74;
        sub_100025814(v29, v42 + v40);
        *(v42 + v41) = v75;
        sub_100004A04((v10 + 16), v42 + ((v41 + 15) & 0xFFFFFFFFFFFFFFF8));
        sub_10001E72C(v73, v76, &qword_1001BB050, &qword_10016F6E0);
        sub_10000C6C0(v76, 1, v36);
        sub_100046BD0();

        if (v36 == 1)
        {
          sub_10000ED84(*(v10 + 200), &qword_1001BB050);
        }

        else
        {
          TaskPriority.rawValue.getter();
          sub_100006098(v36);
          v44 = *(v43 + 8);
          v45 = sub_100004CB0();
          v46(v45);
        }

        if (*v77)
        {
          v47 = v42[3];
          v48 = *v77;
          swift_getObjectType();
          swift_unknownObjectRetain();
          sub_100004CA4();
          v49 = dispatch thunk of Actor.unownedExecutor.getter();
          v51 = v50;
          swift_unknownObjectRelease();
        }

        else
        {
          v49 = 0;
          v51 = 0;
        }

        v52 = **(v10 + 128);
        sub_100002EE0();
        v53 = swift_allocObject();
        *(v53 + 16) = &unk_100171E50;
        *(v53 + 24) = v42;

        sub_100065020(&qword_1001BB440, &unk_1001742C0);
        v54 = v51 | v49;
        if (v51 | v49)
        {
          v54 = v10 + 56;
          *(v10 + 56) = 0;
          *(v10 + 64) = 0;
          *(v10 + 72) = v49;
          *(v10 + 80) = v51;
        }

        v55 = *(v10 + 208);
        v17 &= v17 - 1;
        *(v10 + 88) = 1;
        *(v10 + 96) = v54;
        *(v10 + 104) = v52;
        swift_task_create();
        sub_10000A08C();

        v19 = sub_10000ED84(v55, &qword_1001BB050);
        v18 = v69;
        v13 = v70;
      }

      while (v17);
    }
  }

  v56 = *(v10 + 192);
  v58 = *(v10 + 128);
  v57 = *(v10 + 136);

  v59 = *v58;
  sub_100065020(&qword_1001BB440, &unk_1001742C0);
  TaskGroup.makeAsyncIterator()();
  sub_10001E600();
  v62 = sub_100011B14(v60, v61);
  *(v10 + 248) = v62;
  v63 = *(v10 + 144);
  v64 = async function pointer to TaskGroup.Iterator.next(isolation:)[1];
  swift_task_alloc();
  sub_100004B34();
  *(v10 + 256) = v65;
  *v65 = v66;
  sub_1000DACA8(v65);
  v19 = v10 + 112;
  v20 = v63;
  v21 = v62;

  return TaskGroup.Iterator.next(isolation:)(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10);
}

uint64_t sub_100024C74()
{
  v1 = (type metadata accessor for ModelCatalogAsset(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 32);

  v8 = (v0 + v3);
  v9 = *(v8 + 1);

  v10 = *(v8 + 2);

  v11 = *(v8 + 3);

  v12 = *(v8 + 4);

  v13 = v1[10];
  v14 = type metadata accessor for AssetCost();
  sub_100002C00(v14);
  (*(v15 + 8))(&v8[v13]);
  v16 = *&v8[v1[16]];

  v17 = *(v0 + v4);

  sub_100003324((v0 + v5));

  return _swift_deallocObject(v0, v5 + 40, v2 | 7);
}

uint64_t sub_100024DB4()
{
  v1 = *(v0 + 24);

  sub_100002EE0();

  return _swift_deallocObject(v2, v3, v4);
}

uint64_t sub_100024DE8()
{
  sub_10000636C();
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);
  v4 = *(v0 + 72);
  v3 = *(v0 + 80);
  sub_10000CF04();
  sub_100024224();
  v6 = v5;
  sub_100007130(v1, v0 + 16);
  v7 = swift_allocObject();
  *(v0 + 104) = v7;
  sub_100004A04((v0 + 16), (v7 + 2));
  v7[7] = v2;
  v7[8] = v4;
  v7[9] = v3;
  v7[10] = v6;
  v8 = _s20ModelManagerServices9WorkQueueV15runBlockAndWait11description10isolatedTo7performqd__SS_xYiqd__yYaqd_0_YKctYaqd_0_YKs8SendableRd__s5ErrorRd_0_r0_lFTu[1];

  v9 = swift_task_alloc();
  *(v0 + 112) = v9;
  sub_100065020(&qword_1001BB430, &qword_100171E18);
  sub_100065020(&qword_1001BB438, &unk_100171E20);
  sub_100065020(&qword_1001B8F60, &unk_100171260);
  *v9 = v0;
  v9[1] = sub_100026F84;
  v10 = *(v0 + 96);
  sub_100023A30();

  return __s20ModelManagerServices9WorkQueueV15runBlockAndWait11description10isolatedTo7performqd__SS_xYiqd__yYaqd_0_YKctYaqd_0_YKs8SendableRd__s5ErrorRd_0_r0_lF();
}

uint64_t sub_100024F9C()
{
  sub_100003324(v0 + 2);
  v1 = v0[7];

  v2 = v0[8];

  v3 = v0[9];

  v4 = v0[10];

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_100024FF4(uint64_t a1)
{
  *(v1 + 432) = a1;

  return sub_10001D000(v2);
}

uint64_t sub_100025014()
{
  v2 = v0[40];
  result = v0[41];
  v4 = v0[38];
  v3 = v0[39];
  return result;
}

char *sub_100025020(char *result, int64_t a2, char a3, char *a4)
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
    sub_100065020(&qword_1001B9090, &unk_100172C70);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_100025128(uint64_t a1)
{
  v2 = *(a1 + 32);
  sub_100011E24();
  result = _HashTable.startBucket.getter();
  v4 = *(a1 + 36);
  return result;
}

double sub_100025164@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*(a3 + 16) && (v5 = sub_1000236F4(a1, a2), (v6 & 1) != 0))
  {
    sub_1000190EC(v5);
  }

  else
  {
    *(a4 + 32) = 0;
    result = 0.0;
    *a4 = 0u;
    *(a4 + 16) = 0u;
  }

  return result;
}

uint64_t sub_1000251D8()
{
  sub_100001ED0();
  if (*(v0[7] + 168) <= 0)
  {
    if (qword_1001B8910 != -1)
    {
      sub_100005C4C();
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_10000641C(v5, qword_1001BA630);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      *swift_slowAlloc() = 0;
      sub_10000EDF4(&_mh_execute_header, v8, v9, "Waiting for first extension query to finish");
      sub_100002BB8();
    }

    v10 = v0[7];

    sub_1000BA43C(&qword_1001B8B08, type metadata accessor for InferenceProviderManager);
    v11 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
    v12 = swift_task_alloc();
    v0[8] = v12;
    *v12 = v0;
    v12[1] = sub_1000B995C;
    v13 = v0[7];

    return withCheckedContinuation<A>(isolation:function:_:)();
  }

  else
  {
    v2 = v0[5];
    v1 = v0[6];
    sub_100004B50();
    sub_100025EF0(v1, v2);
    swift_endAccess();
    sub_100001F00();

    return v3();
  }
}

uint64_t sub_1000253E8(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  return sub_100004B70(sub_1000251D8, v2);
}

uint64_t sub_100025414@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for InferenceProviderDescriptor.Instance();
  v7 = sub_100002BDC(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  __chkstk_darwin(v7);
  sub_100002B8C();
  v14 = (v13 - v12);
  InferenceProviderDescriptor.instance.getter();
  v15 = (*(v9 + 88))(v14, v6);
  if (v15 == enum case for InferenceProviderDescriptor.Instance.specificInstance(_:))
  {
    (*(v9 + 96))(v14, v6);
    v17 = *v14;
    v16 = v14[1];
    v18 = type metadata accessor for InferenceProviderManager.ConnectionCollection.Group(0);
    sub_100025164(v17, v16, *(v3 + *(v18 + 24)), &v21);
    if (v22)
    {

LABEL_6:
      sub_100004A04(&v21, v23);
      return sub_100004A04(v23, a2);
    }

    sub_10000ECD8(&v21, &qword_1001B9CB0, &qword_100171E70);
    sub_1000B5B74(a1, &v21);
    if (v22)
    {
      sub_100004A04(&v21, v23);
      sub_1000480AC(v23, &v21);
      sub_1000FF310();
      return sub_100004A04(v23, a2);
    }

    result = sub_10000ECD8(&v21, &qword_1001B9CB0, &qword_100171E70);
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  else if (v15 == enum case for InferenceProviderDescriptor.Instance.defaultInstance(_:))
  {
    v19 = *(type metadata accessor for InferenceProviderManager.ConnectionCollection.Group(0) + 20);
    sub_100012F04();
    if (v22)
    {
      goto LABEL_6;
    }

    sub_10000ECD8(&v21, &qword_1001B9CB0, &qword_100171E70);
    sub_1000B5B74(a1, a2);
    return sub_1000BA48C(a2, v3 + v19);
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

unint64_t sub_1000256A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_10002575C()
{
  sub_1000094B0();
  sub_10000636C();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = swift_task_alloc();
  v7 = sub_100004B00(v6);
  *v7 = v8;
  v7[1] = sub_10006FA64;
  sub_1000DACD0();
  sub_100006378();

  return sub_100025878(v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_100025814(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ModelCatalogAsset(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100025878(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[20] = a6;
  v7[21] = a7;
  v7[18] = a4;
  v7[19] = a5;
  v7[16] = a2;
  v7[17] = a3;
  v9 = sub_100065020(&qword_1001BB448, &qword_100171E40);
  v7[22] = v9;
  v10 = *(v9 - 8);
  v7[23] = v10;
  v11 = *(v10 + 64) + 15;
  v7[24] = swift_task_alloc();
  v12 = *(*(sub_100065020(&qword_1001BB050, &qword_10016F6E0) - 8) + 64) + 15;
  v7[25] = swift_task_alloc();
  v7[26] = swift_task_alloc();
  v13 = *(type metadata accessor for ModelCatalogAsset(0) - 8);
  v7[27] = v13;
  v7[28] = *(v13 + 64);
  v7[29] = swift_task_alloc();
  v7[30] = swift_task_alloc();

  return _swift_task_switch(sub_100024838, a4, 0);
}

uint64_t sub_100025A20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[22] = a6;
  v7[23] = a7;
  v7[20] = a4;
  v7[21] = a5;
  v7[18] = a2;
  v7[19] = a3;
  v7[17] = a1;
  v9 = type metadata accessor for InferenceProviderAsset.ManagerOwnedState(0);
  v7[24] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v7[25] = swift_task_alloc();

  return _swift_task_switch(sub_1000CB700, a3, 0);
}

void sub_100025AEC(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 80);
  v4 = *(v2 + 3);
  if (a2)
  {
    v5 = *(v2 + 8);
    sub_100012F04();
    v6 = sub_10000C6C0(v5, 1, v4);
    v7 = *(v2 + 96);
    v8 = *(v2 + 8);
    if (v6 != 1)
    {
      v9 = *(v2 + 6);
      v10 = *(v2 + 2);
      sub_1000050EC();
      sub_1000BA610();
      v11 = *v10;
      v12 = *(v2 + 11);
      v13 = *(v2 + 6);
      if ((v7 & 1) == 0)
      {
LABEL_4:
        v14 = *(v2 + 5);
        v16 = *v2;
        v15 = *(v2 + 1);
        sub_1000050EC();
        sub_1000BA610();
        sub_100118154(v12, v16, v15, v14, v11);

        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v17 = *(v2 + 9);
    sub_100012F04();
    v18 = sub_10000C6C0(v17, 1, v4);
    v7 = *(v2 + 96);
    v8 = *(v2 + 9);
    if (v18 != 1)
    {
      v20 = *(v2 + 7);
      v21 = *(v2 + 2);
      sub_1000050EC();
      sub_1000BA610();
      v11 = *v21;
      v12 = *(v2 + 11);
      v22 = *(v2 + 7);
      if ((v7 & 1) == 0)
      {
        goto LABEL_4;
      }

LABEL_9:
      v23 = *(v11 + 56);
      v24 = *(*(v2 + 4) + 72);
      sub_1000050EC();
      sub_1000BA610();
      goto LABEL_10;
    }
  }

  sub_10000ECD8(v8, &qword_1001BAA00, &qword_100171578);
  if (v7)
  {
    v19 = *(v2 + 3);
    sub_100021010(*(**(v2 + 2) + 48) + 16 * *(v2 + 11));
    _NativeDictionary._delete(at:)();
  }

LABEL_10:
  v25 = *(v2 + 9);
  v26 = *(v2 + 10);
  v28 = *(v2 + 7);
  v27 = *(v2 + 8);
  v30 = *(v2 + 5);
  v29 = *(v2 + 6);
  sub_10000ECD8(v26, &qword_1001BAA00, &qword_100171578);
  free(v26);
  free(v25);
  free(v27);
  free(v28);
  free(v29);
  free(v30);

  free(v2);
}

void sub_100025CFC(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

void sub_100025D54(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

uint64_t sub_100025DC8()
{
  v3 = v0[29];
  v2 = v0[30];
  v4 = v0[26];
}

uint64_t sub_100025DE0()
{
  result = v0;
  v3 = *(v1 - 96);
  return result;
}

uint64_t (*sub_100025DF0(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_100025D48;
}

uint64_t sub_100025E18(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InferenceProviderManager.ConnectionCollection.Group(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void (*sub_100025E7C(void *a1, uint64_t a2, uint64_t a3))(void *a1)
{
  v6 = sub_1000B7230(0x28uLL);
  *a1 = v6;
  v6[4] = sub_100026160(v6, a2, a3);
  return sub_100025CFC;
}

uint64_t sub_100025EF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = InferenceProviderDescriptor.id.getter();
  v6 = sub_100025E7C(v11, v4, v5);
  v8 = v7;
  v9 = type metadata accessor for InferenceProviderManager.ConnectionCollection.Group(0);
  if (sub_10000C6C0(v8, 1, v9))
  {
    (v6)(v11, 0);

    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  else
  {
    sub_100025414(a1, a2);
    (v6)(v11, 0);
  }

  return result;
}

uint64_t sub_100026004(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for InferenceProviderManager.ConnectionCollection.Group.Prototype(0);
  if (*(*(v6 - 8) + 84) != a2)
  {
    return sub_1000062F4(*(a1 + *(a3 + 24)));
  }

  return sub_10000C6C0(a1, a2, v6);
}

uint64_t sub_1000260B8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for InferenceProviderManager.ConnectionCollection.Group.Prototype(0);
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_100009BFC(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

void (*sub_100026160(void *a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  v7 = sub_1000B7230(0x50uLL);
  *a1 = v7;
  v8 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7[8] = sub_100025DF0(v7);
  v7[9] = sub_10002376C(v7 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_100025D54;
}

uint64_t sub_1000261F8()
{
  sub_100001ED0();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = sub_100004B00(v3);
  *v4 = v5;
  v4[1] = sub_10006FA64;
  sub_100036708();

  return v6();
}

uint64_t sub_1000262A0(uint64_t a1, int *a2)
{
  *(v2 + 32) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 40) = v4;
  *v4 = v2;
  v4[1] = sub_100027868;

  return v6(v2 + 16);
}

uint64_t sub_100026394()
{
  sub_100046544();
  sub_10000636C();
  v2 = sub_1000494E8();
  v3 = type metadata accessor for ModelCatalogAsset(v2);
  sub_100002F44(v3);
  v6 = v0[2];
  v7 = v0[3];
  v8 = v0[4];
  v9 = *(v0 + ((*(v5 + 64) + ((*(v4 + 80) + 40) & ~*(v4 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v1 + 16) = v10;
  *v10 = v1;
  v10[1] = sub_10006F558;
  sub_100036708();
  sub_10000CD38();
  sub_100023A30();

  return sub_1000264DC(v11, v12, v13, v14, v15, v16, v17);
}

BOOL sub_1000264AC()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t sub_1000264DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a4;
  v7[4] = a5;
  v7[2] = a1;
  v8 = *(*(sub_100065020(&qword_1001B9D00, &qword_100171E00) - 8) + 64) + 15;
  v7[7] = swift_task_alloc();

  return _swift_task_switch(sub_100023298, 0, 0);
}

void sub_1000265D4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 2u);
}

BOOL sub_10002660C(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void sub_100026628(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, os_log_type_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, os_log_t log)
{

  _os_log_impl(a1, log, a14, a4, v19, 0x16u);
}

unint64_t sub_100026664()
{
  result = qword_1001BB420;
  if (!qword_1001BB420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001BB420);
  }

  return result;
}

uint64_t sub_1000266B8(uint64_t a1, char a2)
{
  if (a2)
  {
    return swift_errorRetain();
  }

  else
  {
  }
}

uint64_t sub_1000266C4()
{
  sub_100002BAC();
  sub_100001EF4();
  v2 = *(v1 + 256);
  v3 = *(v1 + 144);
  v4 = *v0;
  sub_100002B9C();
  *v5 = v4;

  v6 = sub_100002C10();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_1000267D0()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_1000267F8()
{

  return swift_slowAlloc();
}

void sub_100026810(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, os_log_type_t a11, os_log_t log)
{

  _os_log_impl(a1, log, a11, a4, v12, 0x16u);
}

BOOL sub_100026838(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_100026850()
{
}

unint64_t sub_100026868()
{
  *(v1 + 16) = v0;
  v4 = *(v2 + 32);
  return v1 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v3;
}

uint64_t sub_100026894(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1000094B0();
  sub_10000636C();
  v11 = *(v10 + 112);
  v12 = *(v10 + 120);
  if (v12 == 255)
  {
    v32 = *(v10 + 232);
    v33 = *(v10 + 240);
    v35 = *(v10 + 200);
    v34 = *(v10 + 208);
    (*(*(v10 + 184) + 8))(*(v10 + 192), *(v10 + 176));

    sub_100001F00();
    sub_100006378();

    return v37(v36, v37, v38, v39, v40, v41, v42, v43, a9, a10);
  }

  else
  {
    v13 = *(v10 + 168);
    v14 = *v13;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v13 = v14;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v44 = *(v10 + 168);
      v45 = *(v14 + 16);
      sub_100031654();
      sub_100026A30();
      v14 = v46;
      *v44 = v46;
    }

    v17 = *(v14 + 16);
    v16 = *(v14 + 24);
    if (v17 >= v16 >> 1)
    {
      v47 = *(v10 + 168);
      sub_1000127D4(v16);
      sub_100031654();
      sub_100026A30();
      v14 = v48;
      *v47 = v48;
    }

    *(v14 + 16) = v17 + 1;
    v18 = v14 + 16 * v17;
    *(v18 + 32) = v11;
    *(v18 + 40) = v12 & 1;
    v19 = *(v10 + 248);
    v20 = *(v10 + 144);
    v21 = async function pointer to TaskGroup.Iterator.next(isolation:)[1];
    swift_task_alloc();
    sub_100004B34();
    *(v10 + 256) = v22;
    *v22 = v23;
    sub_1000DACA8();
    sub_100036708();
    sub_100006378();

    return TaskGroup.Iterator.next(isolation:)(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10);
  }
}

void sub_100026A30()
{
  sub_100004D68();
  if ((v5 & 1) == 0)
  {
    v6 = v4;
    goto LABEL_7;
  }

  sub_100012660();
  if (v7 == v8)
  {
LABEL_7:
    sub_100006184(v6);
    if (v3)
    {
      sub_100065020(&qword_1001BDC38, &qword_1001742B8);
      v9 = sub_10014B308();
      j__malloc_size(v9);
      sub_100057A74();
      v9[2] = v2;
      v9[3] = v10;
      if (v1)
      {
LABEL_9:
        v11 = sub_10001997C();
        sub_100026AFC(v11, v12, v13);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    sub_100065020(&qword_1001BB440, &unk_1001742C0);
    sub_10000D5B4();
    swift_arrayInitWithCopy();
    goto LABEL_12;
  }

  sub_100005FE0();
  if (!v7)
  {
    sub_10000A210();
    goto LABEL_7;
  }

  __break(1u);
}

char *sub_100026AFC(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return sub_100004FA4(a3, result);
  }

  return result;
}

uint64_t sub_100026B40(float a1)
{
  *v1 = a1;
}

uint64_t sub_100026B80()
{
  v2 = *(v0 + 312);

  return type metadata accessor for Logger();
}

uint64_t sub_100026BBC(void *a1)
{
  a1[2] = 0;
  a1[3] = 0;
  a1[4] = v1;
}

void sub_100026BDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  sub_100003728();
  a31 = v33;
  a32 = v36;
  v69 = v37;
  v38 = v32;
  v39 = *v32;
  if (*(*v32 + 24) > v34)
  {
    v40 = *(*v32 + 24);
  }

  v41 = sub_100005F38(v34, v35);
  sub_100065020(v41, v42);
  v43 = static _SetStorage.resize(original:capacity:move:)();
  if (*(v39 + 16))
  {
    v68 = v38;
    v44 = 0;
    v45 = *(v39 + 56);
    v46 = *(v39 + 32);
    sub_10002B00C();
    sub_100035380();
    v49 = v48 & v47;
    v51 = (v50 + 63) >> 6;
    v52 = v43 + 56;
    if ((v48 & v47) != 0)
    {
      while (1)
      {
        sub_100012F5C();
LABEL_11:
        v58 = *(*(v39 + 48) + 8 * (v53 | (v44 << 6)));
        v59 = *(v43 + 40);
        Hasher.init(_seed:)();

        v69(&a12);
        v60 = Hasher._finalize()();
        sub_10008D2F8(v60, *(v43 + 32));
        if (v61)
        {
          break;
        }

        sub_1000033E8();
LABEL_21:
        sub_100045670();
        *(v52 + v65) |= v66;
        *(*(v43 + 48) + 8 * v67) = v58;
        ++*(v43 + 16);
        if (!v49)
        {
          goto LABEL_6;
        }
      }

      sub_10000783C();
      while (1)
      {
        sub_100060714();
        if (v61)
        {
          if (v63)
          {
            break;
          }
        }

        if (v62 == v64)
        {
          v62 = 0;
        }

        if (*(v52 + 8 * v62) != -1)
        {
          sub_1000081CC();
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_6:
      v54 = v44;
      while (1)
      {
        v44 = v54 + 1;
        if (__OFADD__(v54, 1))
        {
          break;
        }

        if (v44 >= v51)
        {

          v38 = v68;
          goto LABEL_25;
        }

        sub_100005968();
        if (v55)
        {
          sub_1000062A0();
          v49 = v57 & v56;
          goto LABEL_11;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v38 = v43;
    sub_100007F20();
  }
}

void sub_100026D78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  sub_100003728();
  a31 = v33;
  a32 = v36;
  v72 = v37;
  v38 = v32;
  v39 = *v32;
  if (*(*v32 + 24) > v34)
  {
    v40 = *(*v32 + 24);
  }

  v41 = sub_100005F38(v34, v35);
  sub_100065020(v41, v42);
  sub_10000D01C();
  v43 = static _SetStorage.resize(original:capacity:move:)();
  if (!*(v39 + 16))
  {
LABEL_27:

    *v38 = v43;
    sub_100007F20();
    return;
  }

  v71 = v38;
  v44 = 0;
  v46 = (v39 + 56);
  v45 = *(v39 + 56);
  v47 = *(v39 + 32);
  sub_10002B00C();
  sub_100035380();
  v50 = v49 & v48;
  v52 = (v51 + 63) >> 6;
  v53 = v43 + 56;
  if ((v49 & v48) == 0)
  {
LABEL_6:
    v55 = v44;
    while (1)
    {
      v44 = v55 + 1;
      if (__OFADD__(v55, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v44 >= v52)
      {
        break;
      }

      ++v55;
      if (v46[v44])
      {
        sub_1000062A0();
        v50 = v57 & v56;
        goto LABEL_11;
      }
    }

    v68 = *(v39 + 32);
    sub_100003878();
    if (v69 >= 64)
    {
      sub_100011624(0, (v69 + 63) >> 6, v39 + 56);
    }

    else
    {
      sub_100011E24();
      *v46 = v70;
    }

    v38 = v71;
    *(v39 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v54 = __clz(__rbit64(v50));
    v50 &= v50 - 1;
LABEL_11:
    v58 = *(*(v39 + 48) + 8 * (v54 | (v44 << 6)));
    v59 = *(v43 + 40);
    Hasher.init(_seed:)();
    v72(&a12);
    v60 = Hasher._finalize()();
    sub_10008D2F8(v60, *(v43 + 32));
    if (v61)
    {
      break;
    }

    sub_1000033E8();
LABEL_21:
    sub_100045670();
    *(v53 + v65) |= v66;
    *(*(v43 + 48) + 8 * v67) = v58;
    ++*(v43 + 16);
    if (!v50)
    {
      goto LABEL_6;
    }
  }

  sub_10000783C();
  while (1)
  {
    sub_100060714();
    if (v61)
    {
      if (v63)
      {
        break;
      }
    }

    if (v62 == v64)
    {
      v62 = 0;
    }

    if (*(v53 + 8 * v62) != -1)
    {
      sub_1000081CC();
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
}

uint64_t sub_100026F6C()
{

  return RequestMetadata.id.getter();
}

uint64_t sub_100026F84()
{
  sub_100001ED0();
  sub_100001EF4();
  v3 = v2;
  sub_100004B40();
  *v4 = v3;
  v6 = *(v5 + 112);
  v7 = *(v5 + 104);
  v8 = *v1;
  sub_100002B9C();
  *v9 = v8;

  v10 = *(v3 + 96);
  if (v0)
  {
    v11 = sub_1000CB6DC;
  }

  else
  {
    v11 = sub_100027EFC;
  }

  return _swift_task_switch(v11, v10, 0);
}

void sub_1000270A4()
{
  sub_1000055B0();
  v1 = sub_100065020(&qword_1001B94F0, &unk_100172060);
  sub_100002BDC(v1);
  v3 = v2;
  v5 = *(v4 + 64);
  sub_100004B1C();
  __chkstk_darwin(v6);
  sub_10008D314();
  sub_1000081B4();
  sub_10001B2C0(v7, &qword_1001B94F0);
  sub_100012484();
  dispatch thunk of Hashable._rawHashValue(seed:)();
  v8 = *(v0 + 32);
  sub_100011E24();
  sub_1000294B8();
  while (1)
  {
    v10 = v9 & v0;
    sub_100006358((v9 & v0) >> 3);
    if (((v11 << v10) & v12) == 0)
    {
      v16 = *v24;
      swift_isUniquelyReferenced_nonNull_native();
      v17 = v3[2];
      sub_10002AB2C();
      v18();
      v19 = sub_1000265A0();
      sub_100085F08(v19, v20, v21);
      *v24 = v25;
      v22 = v3[4];
      sub_10002AB2C();
      v23();
      goto LABEL_7;
    }

    v13 = sub_10008D2D0();
    (qword_1001B94F0)(v13);
    sub_1000039B4();
    sub_10001B2C0(&qword_1001B9508, &qword_1001B94F0);
    sub_10008D330();
    v14 = sub_100035368();
    v15 = v3[1];
    sub_10000CBD8();
    v15();
    if (v14)
    {
      break;
    }

    v9 = v10 + 1;
  }

  sub_10000CBD8();
  v15();
  sub_10000A050();
  sub_100036E1C();
  (qword_1001B94F0)();
LABEL_7:
  sub_100002EEC();
}

uint64_t sub_100027298(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = result;
  v5 = 0;
  v6 = *(a3 + 16);
  do
  {
    if (v6 == v5)
    {
      break;
    }

    v7 = type metadata accessor for CustomAssetConfiguration();
    sub_100002F44(v7);
    v9 = *(v8 + 80);
    sub_100004B94();
    result = v4(v11 + *(v10 + 72) * v5++);
  }

  while (!v3);
  return result;
}

uint64_t sub_100027358(uint64_t a1, void (*a2)(uint64_t *, unint64_t), uint64_t a3, uint64_t a4)
{
  v7 = 0;
  v13 = a1;
  v8 = *(a4 + 16);
  while (v8 != v7)
  {
    v9 = type metadata accessor for CustomAssetConfiguration();
    sub_100002F44(v9);
    a2(&v13, a4 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v11 + 72) * v7++);
    if (v4)
    {
    }
  }

  return v13;
}

uint64_t sub_100027434()
{
  v1 = type metadata accessor for InferenceProviderDescriptor();
  v2 = sub_100002BDC(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v2);
  sub_100002B8C();
  v18 = InferenceProviderAssetDescriptor.description.getter();

  v7._countAndFlagsBits = 8250;
  v7._object = 0xE200000000000000;
  String.append(_:)(v7);

  v8 = *(v0 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection + 24);
  v9 = *(v0 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection + 32);
  sub_100003370((v0 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection), v8);
  (*(v9 + 8))(v8, v9);
  v10 = InferenceProviderDescriptor.description.getter();
  v12 = v11;
  v13 = *(v4 + 8);
  v14 = sub_100002CBC();
  v15(v14);

  v16._countAndFlagsBits = v10;
  v16._object = v12;
  String.append(_:)(v16);

  return v18;
}

uint64_t sub_1000275C8()
{
  sub_100002BAC();
  v1 = v0[7];
  v2 = v0[2];
  v3 = v0[9] != 0;
  *v2 = v0[10];
  *(v2 + 8) = v3;

  sub_100001F00();

  return v4();
}

uint64_t sub_100027638()
{
  sub_10000639C();
  sub_100003884();
  v3 = v2;
  v4 = *v1;
  v5 = *v1;
  sub_100002B9C();
  *v6 = v5;
  v7 = *(v4 + 64);
  *v6 = *v1;
  *(v5 + 72) = v0;

  v8 = *(v4 + 56);
  if (!v0)
  {
    *(v5 + 80) = v3;
  }

  sub_10000ED84(v8, &qword_1001B9D00);
  sub_1000059F8();
  sub_100003D20();

  return _swift_task_switch(v9, v10, v11);
}

void sub_100027788()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 44));
  sub_10001AACC((v1 + 16));
  os_unfair_lock_unlock((v1 + 44));
}

BOOL sub_1000277D0()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock(v1 + 11);
  v2 = v1[10]._os_unfair_lock_opaque != 0;
  os_unfair_lock_unlock(v1 + 11);
  return v2;
}

uint64_t sub_100027848()
{

  return swift_arrayInitWithCopy();
}

uint64_t sub_100027868()
{
  sub_100001ED0();
  sub_100025408();
  sub_100002B9C();
  *v2 = v0;
  v3 = *(v0 + 40);
  v4 = *(v0 + 32);
  v5 = *v1;
  *v2 = *v1;

  v6 = *(v0 + 24);
  *v4 = *(v0 + 16);
  *(v4 + 8) = v6;
  v7 = *(v5 + 8);

  return v7();
}

void sub_1000279B0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_1000279CC();
}

void sub_1000279CC()
{
  sub_10000A274();
  v44 = v0;
  v2 = v1;
  v3 = sub_100065020(&qword_1001B94F0, &unk_100172060);
  v4 = sub_100002BDC(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v4);
  sub_100009C24();
  v41 = v9;
  sub_100002F1C();
  v11 = __chkstk_darwin(v10);
  v13 = &v40 - v12;
  __chkstk_darwin(v11);
  v15 = &v40 - v14;
  v16 = type metadata accessor for InferenceProviderAsset.ManagerOwnedState(0);
  v17 = v16 - 8;
  v18 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16);
  sub_100002B8C();
  v21 = v20 - v19;
  v22 = *v2;
  v23 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState;
  sub_100004CBC();
  swift_beginAccess();
  sub_100005C78();
  sub_1000192DC(v23 + v22, v21);
  v40 = *(v6 + 16);
  v40(v13, v44, v3);
  v24 = *(v17 + 52);
  sub_100019678();
  sub_1000270A4();
  v25 = *(v6 + 8);
  v42 = v6 + 8;
  v25(v15, v3);
  sub_100002D24();
  swift_beginAccess();
  sub_10003DA78(v21, v23 + v22);
  swift_endAccess();
  if (qword_1001B8930 != -1)
  {
    sub_100005154();
    swift_once();
  }

  v26 = type metadata accessor for Logger();
  sub_10000641C(v26, qword_1001BB110);
  v40(v41, v44, v3);

  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v27, v28))
  {
    sub_100002F10();
    v45 = v25;
    v29 = swift_slowAlloc();
    sub_100011828();
    v43 = swift_slowAlloc();
    *v29 = 136315394;

    v30 = sub_100027434();

    v31 = sub_1000062B0();
    sub_100004A3C(v31, v32, v33);
    sub_100009540();

    *(v29 + 4) = v30;
    *(v29 + 12) = 2080;
    sub_1000281BC(&qword_1001B9C68, &qword_1001B94F0, &unk_100172060);
    v34 = dispatch thunk of CustomStringConvertible.description.getter();
    v35 = sub_1000DAE34();
    v45(v35);
    v36 = sub_1000062B0();
    sub_100004A3C(v36, v37, v38);
    sub_100009540();

    *(v29 + 14) = v34;
    _os_log_impl(&_mh_execute_header, v27, v28, "Marked asset %s as associated with foreground session %s", v29, 0x16u);
    swift_arrayDestroy();
    sub_100002BD0();

    sub_100005864();
  }

  else
  {

    v39 = sub_1000DB0D4();
    (v25)(v39);
  }

  sub_100005874();
}

void sub_100027D74()
{
  sub_1000055B0();
  v3 = v2;
  v5 = v4;
  v8 = sub_100065020(v6, v7);
  sub_100002BDC(v8);
  v10 = *(v9 + 64);
  sub_100004B1C();
  __chkstk_darwin(v11);
  sub_100011D6C();
  v12 = sub_100007748();
  if (*(v3 + 16))
  {
    sub_10000A874();
    sub_100013AA0();
    if (v16)
    {
      v17 = v13 >= v15;
    }

    else
    {
      v17 = 1;
    }

    if (v17)
    {
      memmove(v13, v5, 8 * v14);
    }

    v18 = 0;
    *(v12 + 16) = *(v3 + 16);
    v19 = *(v3 + 32);
    sub_100003878();
    v20 = *(v3 + 56);
    sub_100012714();
    sub_100018C90();
    while (v1)
    {
      sub_100011268();
LABEL_15:
      sub_10000949C(v21);
      v26 = sub_100030274();
      v27(v26);
      v28 = sub_100046488();
      v29(v28);
    }

    v22 = v18;
    while (1)
    {
      v18 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v18 >= v0)
      {
        goto LABEL_17;
      }

      sub_100005968();
      if (v23)
      {
        sub_1000062A0();
        v1 = v25 & v24;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    sub_10001E490();
    sub_100002EEC();
  }
}

uint64_t sub_100027ED4()
{
  v2 = *(v0 + 216);
  v3 = *(v0 + 112);
}

uint64_t sub_100027F18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  sub_10000385C();
  a21 = v23;
  a22 = v24;
  sub_100003284();
  a20 = v22;
  if (qword_1001B8930 != -1)
  {
    sub_100005154();
    swift_once();
  }

  v25 = v22[33];
  v26 = v22[29];
  v27 = v22[26];
  v28 = v22[27];
  v29 = v22[19];
  v30 = type metadata accessor for Logger();
  v22[35] = sub_10000641C(v30, qword_1001BB110);
  v22[36] = *(v28 + 16);
  v22[37] = (v28 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v31 = sub_10000CC04();
  v32(v31);

  v33 = Logger.logObject.getter();
  static os_log_type_t.info.getter();
  sub_100019920();

  if (sub_10000A384())
  {
    a9 = v22[33];
    v34 = v22[29];
    v36 = v22[26];
    v35 = v22[27];
    sub_100002F10();
    v37 = swift_slowAlloc();
    sub_100011828();
    a10 = swift_slowAlloc();
    a11 = a10;
    *v37 = 136315394;
    sub_1000281BC(&qword_1001B9C68, &qword_1001B94F0, &unk_100172060);
    v38 = dispatch thunk of CustomStringConvertible.description.getter();
    v40 = v39;
    v41 = *(v35 + 8);
    v42 = sub_100008004();
    v41(v42);
    sub_100004A3C(v38, v40, &a11);
    sub_10000A08C();

    *(v37 + 4) = v34;
    *(v37 + 12) = 2080;
    type metadata accessor for InferenceProviderAsset(0);
    sub_1000056C4();
    sub_100011B14(v43, v44);
    v45 = Set.description.getter();
    sub_100004A3C(v45, v46, &a11);
    sub_100007BA0();
    *(v37 + 14) = v35 + 8;
    sub_1000033FC();
    _os_log_impl(v47, v48, v49, v50, v51, 0x16u);
    sub_100057A54();
    sub_100061AD8();

    sub_10000BFCC();
  }

  else
  {
    v52 = v22[29];
    v53 = v22[26];
    v54 = v22[27];

    v41 = *(v54 + 8);
    v55 = sub_100007660();
    v41(v55);
  }

  v22[38] = v41;
  sub_1000286AC(v22[33]);
  v56 = async function pointer to Task<>.value.getter[1];
  swift_task_alloc();
  sub_100004B34();
  v22[39] = v57;
  *v57 = v58;
  v57[1] = sub_1000288D0;
  v59 = v22[20];
  sub_100003540();

  return Task<>.value.getter(v60, v61, v62, v63, v64, v65, v66, v67, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1000281BC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10006A614(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100028210()
{
}

uint64_t sub_100028228()
{
  v2 = *(*(v0 + 8) + 16);

  return static _HashTable.scale(forCapacity:)();
}

uint64_t sub_100028248(void (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = a3;
  if ((a3 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for InferenceProviderAsset(0);
    sub_100011B14(&qword_1001B94B0, type metadata accessor for InferenceProviderAsset);
    result = Set.Iterator.init(_cocoa:)();
    v5 = v22;
    v7 = v23;
    v8 = v24;
    v9 = v25;
    v10 = v26;
  }

  else
  {
    v11 = -1 << *(a3 + 32);
    v7 = a3 + 56;
    v8 = ~v11;
    v12 = -v11;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v10 = v13 & *(a3 + 56);

    v9 = 0;
  }

  v21 = v5;
  if (v5 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v14 = v9;
  v15 = v10;
  v16 = v9;
  if (v10)
  {
LABEL_12:
    v17 = (v15 - 1) & v15;
    v18 = *(*(v5 + 48) + ((v16 << 9) | (8 * __clz(__rbit64(v15)))));

    if (v18)
    {
      while (1)
      {
        v27 = v18;
        a1(&v27);

        if (v4)
        {
          break;
        }

        v9 = v16;
        v10 = v17;
        v5 = v21;
        if ((v21 & 0x8000000000000000) == 0)
        {
          goto LABEL_8;
        }

LABEL_14:
        if (!__CocoaSet.Iterator.next()())
        {
          goto LABEL_20;
        }

        type metadata accessor for InferenceProviderAsset(0);
        swift_dynamicCast();
        v18 = v27;
        v16 = v9;
        v17 = v10;
        if (!v27)
        {
          goto LABEL_22;
        }
      }

      v19 = v21;
    }

    else
    {
LABEL_22:
      v5 = v21;
LABEL_20:
      v19 = v5;
    }

    return sub_100019334(v19, v7, v8, v9, v10);
  }

  else
  {
    while (1)
    {
      v16 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v16 >= ((v8 + 64) >> 6))
      {
        v10 = 0;
        goto LABEL_20;
      }

      v15 = *(v7 + 8 * v16);
      ++v14;
      if (v15)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_1000284A0()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 44));
  sub_1000284F8((v1 + 16));

  os_unfair_lock_unlock((v1 + 44));
}

void sub_1000284F8(uint64_t *a1)
{
  v3 = a1[1];
  v2 = a1[2];
  v4 = *(a1 + 6);
  if (qword_1001B89C0 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_10000641C(v5, qword_1001BC8F8);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v12 = v9;
    *v8 = 136315394;
    v10 = sub_100004A3C(v3, v2, &v12);

    *(v8 + 4) = v10;
    *(v8 + 12) = 1024;
    *(v8 + 14) = v4;
    _os_log_impl(&_mh_execute_header, v6, v7, "Unlocking %s [%u]", v8, 0x12u);
    sub_100003324(v9);
  }

  else
  {
  }

  if (v4)
  {
    *(a1 + 6) = v4 - 1;
    if (v4 == 1)
    {
      v11 = *a1;
      dispatch thunk of CoherentAssetLock.unlock()();
    }
  }
}

uint64_t sub_1000286AC(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    v2 = sub_10002A104();
    type metadata accessor for InferenceProviderAsset(v2);
    sub_1000056C4();
    sub_100011B14(v3, v4);
    sub_1000062B0();
    result = Set.Iterator.init(_cocoa:)();
    v1 = v32[8];
    v6 = v32[9];
    v7 = v32[10];
    v8 = v32[11];
    v9 = v32[12];
  }

  else
  {
    v10 = *(a1 + 32);
    sub_100011E24();
    v6 = v1 + 56;
    v11 = *(v1 + 56);
    v7 = ~v12;
    sub_10000A5E8();
    v9 = v13 & v14;

    v8 = 0;
  }

  v31 = v7;
  v15 = (v7 + 64) >> 6;
  if (v1 < 0)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v16 = v8;
    v17 = v8;
    if (!v9)
    {
      break;
    }

LABEL_9:
    sub_1000062A0();
    v20 = v19 & v18;
    v22 = *(*(v1 + 48) + ((v17 << 9) | (8 * v21)));

    if (!v22)
    {
LABEL_16:
      v29 = sub_1000060A4();
      return sub_100019334(v29, v30, v31, v8, v9);
    }

    while (1)
    {
      v23 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState + v22;
      sub_100004CBC();
      swift_beginAccess();
      v24 = type metadata accessor for InferenceProviderAsset.ManagerOwnedState(0);
      sub_100007130(&v23[*(v24 + 60)], v32);
      v25 = v32[4];
      sub_100003370(v32, v32[3]);
      v26 = *(v25 + 32);
      v27 = sub_10000D0E8();
      v28(v27, v25);

      result = sub_100003324(v32);
      v8 = v17;
      v9 = v20;
      if ((v1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_11:
      if (__CocoaSet.Iterator.next()())
      {
        type metadata accessor for InferenceProviderAsset(0);
        sub_1000358A4();
        swift_dynamicCast();
        v22 = v32[0];
        v17 = v8;
        v20 = v9;
        if (v32[0])
        {
          continue;
        }
      }

      goto LABEL_16;
    }
  }

  while (1)
  {
    v17 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v17 >= v15)
    {
      v9 = 0;
      goto LABEL_16;
    }

    ++v16;
    if (*(v6 + 8 * v17))
    {
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000288D0()
{
  sub_100002BAC();
  sub_100001EF4();
  v2 = *(v1 + 312);
  v3 = *(v1 + 176);
  v4 = *v0;
  sub_100002B9C();
  *v5 = v4;

  v6 = sub_100002C10();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_1000292C8()
{
  sub_100005F88();
  sub_1000033DC();
  sub_10000D554();
  sub_100004B40();
  *v4 = v3;
  v5 = v1[76];
  *v4 = *v2;
  *(v3 + 616) = v0;

  sub_10000A9E0();
  v7 = *(v6 + 600);
  v8 = v1[74];
  v9 = v1[53];
  v10 = v1[50];
  v11 = v1[49];
  v12 = v1[38];
  v13 = v1[37];
  v14 = v1[36];
  v15 = v1[33];

  v16 = *(v13 + 8);
  v17 = sub_10000CD1C();
  v18(v17);
  v19 = *(v10 + 8);
  v20 = sub_10000A9EC();
  v21(v20);
  sub_1000062BC();

  return _swift_task_switch(v22, v23, v24);
}

uint64_t sub_1000294E8()
{
  v2 = *(v0 + 296);

  return type metadata accessor for AuditToken();
}

uint64_t sub_100029510()
{
  v3 = *(v0 + 8);
  result = v1;
  v5 = *(v2 - 88);
  return result;
}

uint64_t sub_100029524()
{
  sub_100002BAC();
  sub_100001EF4();
  v2 = *(v1 + 624);
  v3 = *(v1 + 264);
  v4 = *v0;
  sub_100002B9C();
  *v5 = v4;

  v6 = sub_100002C10();

  return _swift_task_switch(v6, v7, v8);
}

void sub_10002961C()
{
  v1 = *(v0 + 644);
  if (qword_1001B88F0 != -1)
  {
    sub_10000505C();
    swift_once();
  }

  v2 = *(v0 + 552);
  v3 = type metadata accessor for Logger();
  sub_100002FD0(v3, qword_1001B9A18);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 552);
    v7 = *(v0 + 636);
    v8 = swift_slowAlloc();
    v104 = swift_slowAlloc();
    *v8 = 136315650;

    sub_10001AFF8();
    sub_100045E40();

    v9 = sub_10000CD1C();
    sub_100004A3C(v9, v10, v11);
    sub_100005974();

    *(v8 + 4) = v6;
    *(v8 + 12) = 1024;
    *(v8 + 14) = v7;
    *(v8 + 18) = 2080;
    *(v0 + 645) = v1;
    v12 = String.init<A>(describing:)();
    v14 = sub_100004A3C(v12, v13, &v104);

    *(v8 + 20) = v14;
    _os_log_impl(&_mh_execute_header, v4, v5, "Created session %s on behalf of pid %d with priority %s", v8, 0x1Cu);
    swift_arrayDestroy();
    sub_100007C2C();

    sub_1000039CC();
  }

  v102 = *(v0 + 528);
  v15 = *(v0 + 488);
  v95 = *(v0 + 464);
  v97 = *(v0 + 480);
  v16 = *(v0 + 448);
  v88 = *(v0 + 520);
  v91 = *(v0 + 440);
  v17 = *(v0 + 432);
  v18 = *(v0 + 416);
  v19 = *(v0 + 392);
  v20 = *(v0 + 400);
  v83 = *(v0 + 376);
  v84 = *(v0 + 360);
  v21 = *(v0 + 264);
  v22 = *(v0 + 240);
  v86 = *(v0 + 456) + 15;
  v24 = v21[41];
  v23 = v21[42];
  sub_100003370(v21 + 38, v24);
  (*(v23 + 64))(v17, 0, 1, v15, v24, v23);
  (*(v20 + 16))(v18, v17, v19);
  v88(v83, v22, v84);
  v103 = swift_task_alloc();
  (*(v16 + 16))(v103, v95, v91);

  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.default.getter();

  v100 = v25;
  v27 = os_log_type_enabled(v25, v26);
  v28 = *(v0 + 560);
  v98 = *(v0 + 552);
  if (v27)
  {
    v76 = *(v0 + 640);
    v77 = *(v0 + 636);
    v79 = *(v0 + 472);
    v80 = *(v0 + 480);
    v81 = *(v0 + 440);
    v82 = *(v0 + 448);
    v89 = *(v0 + 432);
    v92 = *(v0 + 464);
    v29 = *(v0 + 416);
    v31 = *(v0 + 392);
    v30 = *(v0 + 400);
    v85 = v26;
    v32 = *(v0 + 368);
    v33 = *(v0 + 376);
    v78 = *(v0 + 360);
    v87 = *(v0 + 488);
    v34 = swift_slowAlloc();
    v104 = swift_slowAlloc();
    *v34 = 136316418;
    sub_100005070();
    sub_10001B27C(v35, v36, v37);
    v38 = dispatch thunk of CustomStringConvertible.description.getter();
    v40 = v39;
    v41 = *(v30 + 8);
    v42 = sub_100036724();
    v41(v42);
    sub_100004A3C(v38, v40, &v104);
    sub_100019498();

    *(v34 + 4) = v29;
    *(v34 + 12) = 1024;
    *(v34 + 14) = v76;
    *(v34 + 18) = 1024;
    *(v34 + 20) = v77;
    *(v34 + 24) = 2080;
    Session.Metadata.loggingIdentifier.getter();
    sub_1000294D0();
    v43 = sub_100012F70();
    v44(v43, v78);
    v45 = sub_100005E8C();
    sub_100004A3C(v45, v46, v47);
    sub_100019498();

    *(v34 + 26) = v33;
    *(v34 + 34) = 2080;
    v48 = sub_100004A3C(v79, v80, &v104);

    *(v34 + 36) = v48;
    *(v34 + 44) = 2080;
    sub_100007238();
    dispatch thunk of CustomStringConvertible.description.getter();
    sub_1000294D0();
    v49 = *(v82 + 8);
    v49(v103, v81);
    v50 = sub_100005E8C();
    sub_100004A3C(v50, v51, v52);
    sub_100019498();

    *(v34 + 46) = v103;
    _os_log_impl(&_mh_execute_header, v100, v85, "Added session %s for pid %d (on behalf of pid %d), loggingIdentifier: %s, useCaseIdentifier: %s, supportedAssets: %s", v34, 0x36u);
    swift_arrayDestroy();
    sub_100007C2C();

    sub_100002BD0();

    (v41)(v89, v31);
    v49(v92, v81);
  }

  else
  {
    v53 = *(v0 + 480);
    v55 = *(v0 + 440);
    v54 = *(v0 + 448);
    v90 = *(v0 + 432);
    v93 = *(v0 + 464);
    v56 = *(v0 + 416);
    v58 = *(v0 + 392);
    v57 = *(v0 + 400);
    v59 = *(v0 + 368);
    v60 = *(v0 + 376);
    v61 = *(v0 + 360);

    v62 = *(v54 + 8);
    v62(v103, v55);
    (*(v59 + 8))(v60, v61);
    v63 = *(v57 + 8);
    v64 = sub_10000CD1C();
    v63(v64);
    (v63)(v90, v58);
    v62(v93, v55);
  }

  v65 = *(v0 + 464);
  v67 = *(v0 + 424);
  v66 = *(v0 + 432);
  v69 = *(v0 + 408);
  v68 = *(v0 + 416);
  v71 = *(v0 + 376);
  v70 = *(v0 + 384);
  v72 = *(v0 + 352);
  v73 = *(v0 + 328);
  v94 = *(v0 + 312);
  v96 = *(v0 + 304);
  v99 = *(v0 + 280);
  v101 = *(v0 + 272);

  sub_100002F54();
  sub_10000D138();

  __asm { BRAA            X1, X16 }
}

void sub_100029D2C()
{
  sub_1000055B0();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  if (sub_1000136A8())
  {
    v11 = sub_100065020(&qword_1001BD070, &qword_100173948);
    v24[0] = v24;
    sub_100002F04(v11);
    v13 = *(v12 + 64);
    sub_100004B1C();
    __chkstk_darwin(v14);
    v16 = v24 - v15;
    v17 = sub_100003370(v0 + 5, v0[8]);
    __chkstk_darwin(v17);
    sub_100009CB4();
    *(v18 - 32) = v10;
    *(v18 - 24) = v8;
    *(v18 - 16) = v6 & 1;
    sub_1000084CC(v19);
    EventReporter.send(eventBuiltWithPresetsAnd:)();
    v20 = type metadata accessor for GenerativeFunctionsInstrumentationEvent();
    sub_100005914(v16, v21, v22, v20);
    sub_10000ECD8(v16, &qword_1001BD070, &qword_100173948);
  }

  v23 = v0[10];
  v2(v10, v8, v6 & 1, v4);
  sub_100002EEC();
}

uint64_t sub_100029E84(uint64_t a1, uint64_t a2, char a3, unsigned int *a4)
{
  v7 = sub_100065020(&qword_1001BD098, &qword_100173978);
  sub_100002F04(v7);
  v9 = *(v8 + 64);
  sub_100004B1C();
  __chkstk_darwin(v10);
  v12 = v29 - v11;
  v13 = *a4;
  v14 = type metadata accessor for GenerativeFunctionsInstrumentationMetadata.ModelManagerSessionEvent.SessionEventType();
  sub_100002C00(v14);
  (*(v15 + 104))(v12, v13, v14);
  sub_1000039A8();
  sub_100009BFC(v16, v17, v18, v14);
  GenerativeFunctionsInstrumentationMetadata.ModelManagerSessionEvent.sessionEventType.setter();
  v19 = sub_100065020(&qword_1001BD0A0, &qword_100173980);
  sub_100002F04(v19);
  v21 = *(v20 + 64);
  sub_100004B1C();
  __chkstk_darwin(v22);
  sub_100029FE0(a2, a3 & 1, (v29 - v23));
  type metadata accessor for GenerativeFunctionsInstrumentationMetadata.ModelManagerSessionEvent.SessionEventResult();
  sub_1000039A8();
  sub_100009BFC(v24, v25, v26, v27);
  return GenerativeFunctionsInstrumentationMetadata.ModelManagerSessionEvent.sessionEventResult.setter();
}

uint64_t sub_100029FE0@<X0>(uint64_t a1@<X0>, char a2@<W1>, void *a3@<X8>)
{
  if (a2)
  {
    v5 = type metadata accessor for GenerativeFunctionsInstrumentationMetadata.ModelManagerSessionEvent.SessionEventResult();
    v6 = sub_100002C00(v5);
    v8 = *(v7 + 104);
    v9 = v6;
    switch(a1)
    {
      case 1:
        v10 = &enum case for GenerativeFunctionsInstrumentationMetadata.ModelManagerSessionEvent.SessionEventResult.failedDueToUseCaseDisabled(_:);
        break;
      case 2:
        v10 = &enum case for GenerativeFunctionsInstrumentationMetadata.ModelManagerSessionEvent.SessionEventResult.failedDueToSessionNotFound(_:);
        break;
      case 3:
        v10 = &enum case for GenerativeFunctionsInstrumentationMetadata.ModelManagerSessionEvent.SessionEventResult.failedForUnknownReason(_:);
        break;
      default:
        v10 = &enum case for GenerativeFunctionsInstrumentationMetadata.ModelManagerSessionEvent.SessionEventResult.success(_:);
        break;
    }

    v16 = *v10;
    v15 = a3;
  }

  else
  {
    *a3 = a1;
    v11 = enum case for GenerativeFunctionsInstrumentationMetadata.ModelManagerSessionEvent.SessionEventResult.unknown(_:);
    v12 = type metadata accessor for GenerativeFunctionsInstrumentationMetadata.ModelManagerSessionEvent.SessionEventResult();
    v13 = sub_100002C00(v12);
    v8 = *(v14 + 104);
    v9 = v13;
    v15 = a3;
    v16 = v11;
  }

  return v8(v15, v16, v9);
}

uint64_t sub_10002A0E4()
{

  return dispatch thunk of CustomStringConvertible.description.getter();
}

uint64_t sub_10002A110()
{

  return swift_arrayDestroy();
}

uint64_t sub_10002A148()
{
  v3 = v0[24];
  v2 = v0[25];
  v4 = v0[23];
  v5 = v0[14];

  return swift_slowAlloc();
}

uint64_t sub_10002A16C()
{
  v10 = v0[47];
  v11 = v0[48];
  v13 = v0[46];
  v2 = v0[36];
  v3 = v0[31];
  v9 = v0[34];
  v4 = v0[29];
  v12 = v0[28];
  v5 = v0[18];
  v6 = v0[19];
  v7 = v0[17];

  return swift_slowAlloc();
}

uint64_t sub_10002A1B4()
{
  sub_100002BAC();
  v1 = *(v0 + 240);
  swift_beginAccess();
  *(v0 + 248) = *(v1 + 112);

  v2 = sub_100003000();

  return _swift_task_switch(v2, v3, v4);
}

uint64_t sub_10002A234(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
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

void sub_10002A544()
{
  sub_1000055B0();
  sub_1000031F8(v1, v2, v3);
  v4 = sub_100065020(&qword_1001B94F0, &unk_100172060);
  sub_100002BDC(v4);
  v6 = *(v5 + 64);
  sub_100004B1C();
  __chkstk_darwin(v7);
  sub_100008290();
  sub_100008458(OBJC_IVAR____TtC13modelmanagerd19TelemetrySignposter_addSessionPostString);
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
      v59 = "uuid: %{public, signpost.description=attribute,public}s\nresult: %{public, signpost.description=attribute,public}ld";
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

uint64_t sub_10002A8F8()
{
  sub_100001ED0();
  v1 = *(*v0 + 256);
  v2 = *(*v0 + 248);
  v3 = *(*v0 + 136);
  v4 = *v0;
  sub_100002B9C();
  *v5 = v4;

  sub_1000071A8();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_10002AA48()
{
  sub_100001ED0();
  v1 = v0[30];
  v2 = v0[17];
  v3 = *(v2 + 456);
  *(v2 + 456) = 0;

  sub_100004B50();
  os_activity_scope_leave((v1 + 24));
  swift_endAccess();

  v4 = v0[27];
  v5 = v0[17];
  v6 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v7 = swift_task_alloc();
  v0[28] = v7;
  *v7 = v0;
  sub_100011910();
  v8 = sub_10001646C();

  return AsyncStream.Iterator.next(isolation:)(v8);
}

uint64_t sub_10002AB6C()
{
  v2 = *(*(v0 + 288) + *(v0 + 408));
}

uint64_t sub_10002AB8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  *(v12 + 4) = a1;
  *(v12 + 12) = 2080;

  return sub_100004A3C(v11, v10, va);
}

uint64_t sub_10002ABB4()
{
  *(v3 + 18) = v1;
  v5 = *(v0 + *v2);
}

uint64_t sub_10002ABD4()
{

  return static Date.+ infix(_:_:)();
}

void sub_10002ABF0()
{
  v1 = v0[6];
  v2 = v0[2];
  v3 = v0[3];
}

void sub_10002ABFC()
{
  sub_10000A274();
  v2 = v1;
  v62 = type metadata accessor for InferenceProviderAsset.ManagerOwnedState(0);
  v3 = sub_100002C00(v62);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  sub_100009C24();
  v72 = v6;
  sub_100002F1C();
  __chkstk_darwin(v7);
  sub_1000DB284();
  v71 = v8;
  v9 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = sub_10014AFE0(v9);
    *v2 = v9;
  }

  v11 = *(v9 + 16);
  v56 = (v9 + 32);
  v75[0] = v9 + 32;
  v75[1] = v11;
  v12 = _minimumMergeRunLength(_:)(v11);
  if (v12 >= v11)
  {
    if (v11 >= 2)
    {
      v53 = v2;
      v54 = v0;
      v60 = type metadata accessor for Date();
      v61 = v60 - 8;
      v21 = -1;
      v22 = 1;
      v23 = v56;
      v55 = v11;
      do
      {
        v58 = v22;
        v24 = v56[v22];
        v59 = v21;
        v63 = v21;
        v57 = v23;
        do
        {
          v25 = *v23;
          v26 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState;
          v27 = v24;
          sub_100004CBC();
          swift_beginAccess();
          sub_100018C50();
          v28 = v71;
          v70 = v29;
          sub_1000192DC(v26 + v27, v71);
          v30 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState;
          sub_100004CBC();
          swift_beginAccess();
          v68 = v25;
          v31 = sub_1000192DC(v30 + v25, v72);
          v32 = v60;
          v69 = &v52;
          v65 = *(v60 - 8);
          v33 = v65;
          v34 = *(v65 + 64);
          __chkstk_darwin(v31);
          v66 = (v34 + 15) & 0xFFFFFFFFFFFFFFF0;
          v35 = &v52 - v66;
          v36 = v62;
          v37 = v28 + *(v62 + 36);
          v38 = v28 + *(v62 + 32);
          v64 = sub_10002B0EC();

          sub_100004CA4();
          v39 = sub_1000DB224();
          v40 = *(v33 + 16);
          if (v39)
          {
            v41 = v38;
          }

          else
          {
            v41 = v37;
          }

          v42 = v40(v35, v41, v32);
          v67 = &v52;
          __chkstk_darwin(v42);
          v43 = &v52 - v66;
          v44 = v72 + *(v36 + 36);
          v45 = v72 + *(v36 + 32);
          sub_10000D048();
          if (dispatch thunk of static Comparable.>= infix(_:_:)())
          {
            v46 = v45;
          }

          else
          {
            v46 = v44;
          }

          v40(v43, v46, v32);
          sub_1000DAEF4();
          v47 = static Date.< infix(_:_:)();
          v48 = *(v65 + 8);
          v49 = sub_10000CDA4();
          v48(v49);
          (v48)(v35, v32);
          sub_1000DB0D4();
          sub_100019338();
          sub_100019338();

          if ((v47 & 1) == 0)
          {
            break;
          }

          v50 = *v23;
          v24 = v23[1];
          *v23 = v24;
          v23[1] = v50;
          --v23;
        }

        while (!__CFADD__(v63++, 1));
        v22 = v58 + 1;
        v23 = v57 + 1;
        v21 = v59 - 1;
      }

      while (v58 + 1 != v55);
    }
  }

  else
  {
    v13 = v12;
    v14 = v11 >> 1;
    v15 = sub_100065B18(v14);
    v74[0] = v16;
    v74[1] = v14;
    sub_1000D8A7C(v74, &v73, v75, v13, v17, v18, v19, v20, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63);
    *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;
  }

  specialized ContiguousArray._endMutation()();
  sub_100005874();
}

uint64_t sub_10002B030()
{
  v3 = v0[41];
  v2 = v0[42];
  v4 = v0[40];
  v5 = v0[37];
  v6 = v0[34];
}