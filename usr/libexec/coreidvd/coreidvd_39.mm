uint64_t sub_1003DF808(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for RemoteDocumentProviderActor.RequestState(0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "RemoteDocumentProviderActor peer interrupted, setting current state to idle", v14, 2u);
  }

  (*(v8 + 8))(v11, v7);
  v15 = sub_100007224(&unk_100843210, &qword_1006E0550);
  (*(*(v15 - 8) + 56))(v6, 1, 1, v15);
  v16 = OBJC_IVAR____TtC8coreidvd27RemoteDocumentProviderActor_currentState;
  swift_beginAccess();
  sub_1003E471C(v6, a2 + v16);
  return swift_endAccess();
}

uint64_t sub_1003DFA0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v6[8] = a5;
  v6[9] = a6;
  v6[7] = a4;
  v7 = OBJC_IVAR____TtC8coreidvd27RemoteDocumentProviderActor__remoteWebPresentmentManager;
  v6[10] = *a6;
  v6[11] = v7;
  return _swift_task_switch(sub_1003DFA60, 0, 0);
}

uint64_t sub_1003DFA60()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = (v0[7] + v0[11]);
  v5 = sub_10000BA08(v4, v4[3]);
  v6 = (v2 + *(type metadata accessor for RemoteWebPresentmentRequest(0) + 20));
  v7 = *v6;
  v8 = v6[1];
  v0[5] = v1;
  v0[6] = &protocol witness table for WebPresentmentAnalyticsReporter;
  v0[2] = v3;
  v9 = *v5;

  v10 = swift_task_alloc();
  v0[12] = v10;
  *v10 = v0;
  v10[1] = sub_1003DFB64;
  v11 = v0[8];

  return sub_1004005DC(v11, v7, v8, (v0 + 2));
}

uint64_t sub_1003DFB64()
{
  v2 = *(*v1 + 96);
  v3 = *v1;
  v3[13] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1003DFCA0, 0, 0);
  }

  else
  {
    sub_10000BB78(v3 + 2);
    v4 = v3[1];

    return v4();
  }
}

uint64_t sub_1003DFCA0()
{
  sub_10000BB78(v0 + 2);
  v1 = v0[1];
  v2 = v0[13];

  return v1();
}

uint64_t sub_1003DFD04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  v5 = type metadata accessor for RemoteCallTarget();
  v4[7] = v5;
  v6 = *(v5 - 8);
  v4[8] = v6;
  v7 = *(v6 + 64) + 15;
  v4[9] = swift_task_alloc();
  v8 = sub_100007224(&qword_100842D78, &qword_1006E0448);
  v4[10] = v8;
  v9 = *(v8 - 8);
  v4[11] = v9;
  v10 = *(v9 + 64) + 15;
  v4[12] = swift_task_alloc();
  v11 = type metadata accessor for PartialWebPresentmentRequest();
  v4[13] = v11;
  v12 = *(v11 - 8);
  v4[14] = v12;
  v13 = *(v12 + 64) + 15;
  v4[15] = swift_task_alloc();
  v14 = sub_100007224(&qword_100842D80, &qword_1006E0450);
  v4[16] = v14;
  v15 = *(v14 - 8);
  v4[17] = v15;
  v16 = *(v15 + 64) + 15;
  v4[18] = swift_task_alloc();
  v17 = type metadata accessor for NWActorSystemInvocationEncoder();
  v4[19] = v17;
  v18 = *(v17 - 8);
  v4[20] = v18;
  v19 = *(v18 + 64) + 15;
  v4[21] = swift_task_alloc();

  return _swift_task_switch(sub_1003DFF50, 0, 0);
}

uint64_t sub_1003DFF50()
{
  v1 = v0[6];
  if (swift_distributed_actor_is_remote())
  {
    v2 = v0[21];
    v3 = v0[18];
    v5 = v0[14];
    v4 = v0[15];
    v6 = v0[13];
    v7 = v0[4];
    v8 = *(v0[6] + OBJC_IVAR____TtC8coreidvd27RemoteDocumentProviderActor_actorSystem);
    NWActorSystem.makeInvocationEncoder()();
    (*(v5 + 16))(v4, v7, v6);
    RemoteCallArgument.init(label:name:value:)();
    sub_1003DF7C0(&qword_100842D88, &type metadata accessor for PartialWebPresentmentRequest);
    sub_1003DF7C0(&qword_100842D90, &type metadata accessor for PartialWebPresentmentRequest);
    NWActorSystemInvocationEncoder.recordArgument<A>(_:)();
    v9 = v0[21];
    v16 = v0[12];
    v0[2] = v0[5];
    type metadata accessor for RemoteWebPresentmentRequestReleaser();

    RemoteCallArgument.init(label:name:value:)();
    sub_1003DF7C0(&qword_100842D98, type metadata accessor for RemoteWebPresentmentRequestReleaser);
    sub_1003DF7C0(&qword_100842DA0, type metadata accessor for RemoteWebPresentmentRequestReleaser);
    NWActorSystemInvocationEncoder.recordArgument<A>(_:)();
    v17 = v0[21];
    v18 = sub_100007224(&qword_100833B90, &qword_1006D95C0);
    NWActorSystemInvocationEncoder.recordErrorType<A>(_:)();
    v19 = v0[21];
    v20 = type metadata accessor for RemoteWebPresentmentResponse(0);
    sub_1003DF7C0(&qword_100842DA8, type metadata accessor for RemoteWebPresentmentResponse);
    sub_1003DF7C0(&qword_100842DB0, type metadata accessor for RemoteWebPresentmentResponse);
    NWActorSystemInvocationEncoder.recordReturnType<A>(_:)();
    v21 = v0[21];
    NWActorSystemInvocationEncoder.doneRecording()();
    if (v22)
    {
      v23 = v0[21];
      v24 = v0[19];
      v25 = v0[20];
      v27 = v0[17];
      v26 = v0[18];
      v28 = v0[16];
      (*(v0[11] + 8))(v0[12], v0[10]);
      (*(v27 + 8))(v26, v28);
      (*(v25 + 8))(v23, v24);
      v29 = v0[21];
      v30 = v0[18];
      v31 = v0[15];
      v32 = v0[12];
      v33 = v0[9];

      v34 = v0[1];

      return v34();
    }

    else
    {
      v35 = v0[9];
      RemoteCallTarget.init(_:)();
      v36 = async function pointer to NWActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)[1];
      v37 = swift_task_alloc();
      v0[22] = v37;
      v38 = type metadata accessor for RemoteDocumentProviderActor(0);
      sub_1003DF7C0(&qword_100843220, type metadata accessor for RemoteDocumentProviderActor);
      *v37 = v0;
      v37[1] = sub_1003E04D8;
      v39 = v0[21];
      v40 = v0[9];
      v41 = v0[6];
      v42 = v0[3];

      return NWActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)(v42, v41, v40, v39, v18, v20, v38, v18);
    }
  }

  else
  {
    v10 = swift_task_alloc();
    v0[24] = v10;
    *v10 = v0;
    v10[1] = sub_1003E0710;
    v11 = v0[5];
    v12 = v0[6];
    v13 = v0[3];
    v14 = v0[4];

    return sub_1003E0E74(v13, v14, v11);
  }
}

uint64_t sub_1003E04D8()
{
  v2 = *(*v1 + 176);
  v5 = *v1;
  *(*v1 + 184) = v0;

  if (v0)
  {
    v3 = sub_1003E08A0;
  }

  else
  {
    v3 = sub_1003E05EC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1003E05EC()
{
  v2 = v0[20];
  v1 = v0[21];
  v4 = v0[18];
  v3 = v0[19];
  v5 = v0[16];
  v6 = v0[17];
  v8 = v0[11];
  v7 = v0[12];
  v9 = v0[10];
  (*(v0[8] + 8))(v0[9], v0[7]);
  (*(v8 + 8))(v7, v9);
  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);
  v10 = v0[21];
  v11 = v0[18];
  v12 = v0[15];
  v13 = v0[12];
  v14 = v0[9];

  v15 = v0[1];

  return v15();
}

uint64_t sub_1003E0710()
{
  v1 = *v0;
  v2 = *(*v0 + 192);
  v10 = *v0;

  v3 = v1[21];
  v4 = v1[18];
  v5 = v1[15];
  v6 = v1[12];
  v7 = v1[9];

  v8 = *(v10 + 8);

  return v8();
}

uint64_t sub_1003E08A0()
{
  v2 = v0[20];
  v1 = v0[21];
  v4 = v0[18];
  v3 = v0[19];
  v5 = v0[16];
  v6 = v0[17];
  v8 = v0[11];
  v7 = v0[12];
  v9 = v0[10];
  (*(v0[8] + 8))(v0[9], v0[7]);
  (*(v8 + 8))(v7, v9);
  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);
  v10 = v0[23];
  v11 = v0[21];
  v12 = v0[18];
  v13 = v0[15];
  v14 = v0[12];
  v15 = v0[9];

  v16 = v0[1];

  return v16();
}

uint64_t sub_1003E09C4(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = *a2;
  v3[2] = *a2;
  v7 = *(v6 - 8);
  v3[3] = v7;
  v8 = *(v7 + 64) + 15;
  v9 = swift_task_alloc();
  v3[4] = v9;
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  NWActorSystemInvocationDecoder.decodeNextArgument<A>()();
  v11 = a2[1];
  v3[5] = v11;
  v12 = *(v11 - 8);
  v3[6] = v12;
  v13 = *(v12 + 64) + 15;
  v14 = swift_task_alloc();
  v3[7] = v14;
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  NWActorSystemInvocationDecoder.decodeNextArgument<A>()();
  v15 = *v14;
  v16 = swift_task_alloc();
  v3[8] = v16;
  *v16 = v3;
  v16[1] = sub_1003E0C78;

  return sub_1003DFD04(a3, v9, v15);
}

uint64_t sub_1003E0C78()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 56);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 40);
  v5 = *(*v0 + 32);
  v6 = *(*v0 + 24);
  v7 = *(*v0 + 16);
  v10 = *v0;

  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v2, v4);

  v8 = *(v10 + 8);

  return v8();
}

uint64_t sub_1003E0E74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[27] = a3;
  v4[28] = v3;
  v4[25] = a1;
  v4[26] = a2;
  v5 = type metadata accessor for PartialWebPresentmentRequest();
  v4[29] = v5;
  v6 = *(v5 - 8);
  v4[30] = v6;
  v4[31] = *(v6 + 64);
  v4[32] = swift_task_alloc();
  v7 = sub_100007224(&qword_100842FD0, &qword_1006E06E8);
  v4[33] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v4[34] = swift_task_alloc();
  v9 = *(*(sub_100007224(&qword_100842FD8, &qword_1006E06F0) - 8) + 64) + 15;
  v4[35] = swift_task_alloc();
  v4[36] = swift_task_alloc();
  v4[37] = swift_task_alloc();
  v10 = type metadata accessor for RemoteDocumentProviderActor.RequestState(0);
  v4[38] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v4[39] = swift_task_alloc();
  v4[40] = swift_task_alloc();
  v12 = type metadata accessor for NWEndpoint();
  v4[41] = v12;
  v13 = *(v12 - 8);
  v4[42] = v13;
  v14 = *(v13 + 64) + 15;
  v4[43] = swift_task_alloc();
  v4[44] = swift_task_alloc();
  v4[45] = swift_task_alloc();
  v15 = type metadata accessor for Logger();
  v4[46] = v15;
  v16 = *(v15 - 8);
  v4[47] = v16;
  v17 = *(v16 + 64) + 15;
  v4[48] = swift_task_alloc();
  v4[49] = swift_task_alloc();
  v4[50] = swift_task_alloc();

  return _swift_task_switch(sub_1003E10F0, v3, 0);
}

uint64_t sub_1003E10F0()
{
  v138 = v0;
  v1 = *(v0 + 400);
  v2 = *(v0 + 224);
  defaultLogger()();

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 400);
    v6 = *(v0 + 368);
    v7 = *(v0 + 376);
    v8 = *(v0 + 224);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v137[0] = v10;
    *v9 = 136315138;
    type metadata accessor for RemoteDocumentProviderActor(0);
    sub_1003DF7C0(&qword_100843220, type metadata accessor for RemoteDocumentProviderActor);
    DistributedActor<>.peer.getter();
    sub_100007224(&qword_100842FE8, &qword_1006E06F8);
    v11 = String.init<A>(describing:)();
    v13 = sub_100141FE4(v11, v12, v137);

    *(v9 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v3, v4, "RemoteDocumentProviderActor performRequest called by peer %s", v9, 0xCu);
    sub_10000BB78(v10);

    v14 = *(v7 + 8);
    v14(v5, v6);
  }

  else
  {
    v15 = *(v0 + 400);
    v16 = *(v0 + 368);
    v17 = *(v0 + 376);

    v14 = *(v17 + 8);
    v14(v15, v16);
  }

  v18 = *(v0 + 320);
  v19 = *(v0 + 224);
  v20 = OBJC_IVAR____TtC8coreidvd27RemoteDocumentProviderActor_currentState;
  swift_beginAccess();
  sub_1003E3BBC(v19 + v20, v18, type metadata accessor for RemoteDocumentProviderActor.RequestState);
  v21 = sub_100007224(&unk_100843210, &qword_1006E0550);
  if ((*(*(v21 - 8) + 48))(v18, 1, v21) == 1)
  {
    v22 = *(v0 + 384);
    v23 = *(v0 + 224);
    sub_1003E3B60(*(v0 + 320));
    defaultLogger()();

    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();

    v26 = os_log_type_enabled(v24, v25);
    v28 = *(v0 + 376);
    v27 = *(v0 + 384);
    v29 = *(v0 + 368);
    if (v26)
    {
      v130 = *(v0 + 384);
      v133 = *(v0 + 368);
      v30 = *(v0 + 304);
      v31 = *(v0 + 312);
      v135 = v14;
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v137[0] = v33;
      *v32 = 136315138;
      sub_1003E3BBC(v19 + v20, v31, type metadata accessor for RemoteDocumentProviderActor.RequestState);
      v34 = String.init<A>(describing:)();
      v36 = sub_100141FE4(v34, v35, v137);

      *(v32 + 4) = v36;
      _os_log_impl(&_mh_execute_header, v24, v25, "RemoteDocumentProviderActor performRequest was called in an invalid state: %s", v32, 0xCu);
      sub_10000BB78(v33);

      v135(v130, v133);
    }

    else
    {

      v14(v27, v29);
    }

    sub_1003E3C24();
    swift_allocError();
    *v45 = 3;
    swift_willThrow();
LABEL_22:
    v92 = *(v0 + 392);
    v91 = *(v0 + 400);
    v93 = *(v0 + 384);
    v95 = *(v0 + 352);
    v94 = *(v0 + 360);
    v96 = *(v0 + 344);
    v98 = *(v0 + 312);
    v97 = *(v0 + 320);
    v99 = *(v0 + 288);
    v100 = *(v0 + 296);
    v129 = *(v0 + 280);
    v132 = *(v0 + 272);
    v134 = *(v0 + 256);

    v101 = *(v0 + 8);

    return v101();
  }

  v136 = v14;
  v37 = *(v0 + 320);
  v38 = *(v0 + 224);
  v39 = *(v21 + 48);
  v127 = *(*(v0 + 336) + 32);
  v127(*(v0 + 360), v37, *(v0 + 328));
  sub_10001F358((v37 + v39), v0 + 16);
  type metadata accessor for RemoteDocumentProviderActor(0);
  sub_1003DF7C0(&qword_100843220, type metadata accessor for RemoteDocumentProviderActor);
  DistributedActor<>.peer.getter();
  v40 = *(v0 + 328);
  v41 = *(v0 + 336);
  v42 = *(v0 + 296);
  if (*(v0 + 80))
  {
    v43 = *(v0 + 88);
    sub_10000BA08((v0 + 56), *(v0 + 80));
    dispatch thunk of NWActorPeer.endpoint.getter();
    v44 = *(v41 + 56);
    v44(v42, 0, 1, v40);
    sub_10000BB78((v0 + 56));
  }

  else
  {
    sub_10000BE18(v0 + 56, &qword_100842FE8, &qword_1006E06F8);
    v44 = *(v41 + 56);
    v44(v42, 1, 1, v40);
  }

  v46 = *(v0 + 328);
  v47 = *(v0 + 336);
  v49 = *(v0 + 288);
  v48 = *(v0 + 296);
  v51 = *(v0 + 264);
  v50 = *(v0 + 272);
  v131 = *(v47 + 16);
  v131(v49, *(v0 + 360), v46);
  v44(v49, 0, 1, v46);
  v52 = *(v51 + 48);
  sub_1003E3C78(v48, v50);
  sub_1003E3C78(v49, v50 + v52);
  v53 = *(v47 + 48);
  v54 = v53(v50, 1, v46);
  v55 = *(v0 + 328);
  if (v54 != 1)
  {
    sub_1003E3C78(*(v0 + 272), *(v0 + 280));
    if (v53(v50 + v52, 1, v55) != 1)
    {
      v103 = *(v0 + 352);
      v104 = *(v0 + 328);
      v105 = *(v0 + 336);
      v106 = *(v0 + 288);
      v126 = *(v0 + 296);
      v108 = *(v0 + 272);
      v107 = *(v0 + 280);
      v127(v103, v50 + v52, v104);
      sub_1003DF7C0(&qword_100842FF0, &type metadata accessor for NWEndpoint);
      v109 = dispatch thunk of static Equatable.== infix(_:_:)();
      v110 = *(v105 + 8);
      v110(v103, v104);
      sub_10000BE18(v106, &qword_100842FD8, &qword_1006E06F0);
      sub_10000BE18(v126, &qword_100842FD8, &qword_1006E06F0);
      v110(v107, v104);
      sub_10000BE18(v108, &qword_100842FD8, &qword_1006E06F0);
      if (v109)
      {
        goto LABEL_26;
      }

LABEL_18:
      v61 = *(v0 + 392);
      v62 = *(v0 + 360);
      v63 = *(v0 + 344);
      v64 = *(v0 + 328);
      defaultLogger()();
      v131(v63, v62, v64);
      v65 = Logger.logObject.getter();
      v66 = static os_log_type_t.error.getter();
      v67 = os_log_type_enabled(v65, v66);
      v68 = *(v0 + 392);
      v69 = *(v0 + 368);
      v70 = *(v0 + 376);
      if (v67)
      {
        v125 = *(v0 + 376);
        v128 = *(v0 + 368);
        v71 = *(v0 + 344);
        v72 = *(v0 + 352);
        v74 = *(v0 + 328);
        v73 = *(v0 + 336);
        v124 = *(v0 + 392);
        v75 = swift_slowAlloc();
        v123 = swift_slowAlloc();
        v137[0] = v123;
        *v75 = 136315138;
        v76 = v71;
        v131(v72, v71, v74);
        v77 = String.init<A>(describing:)();
        v79 = v78;
        v80 = v74;
        v81 = *(v73 + 8);
        v81(v76, v80);
        v82 = sub_100141FE4(v77, v79, v137);

        *(v75 + 4) = v82;
        _os_log_impl(&_mh_execute_header, v65, v66, "RemoteDocumentProviderActor peer with endpoint %s tried to call performRequest without calling presentRequestNotification first, failing", v75, 0xCu);
        sub_10000BB78(v123);

        v83 = v124;
        v84 = v128;
      }

      else
      {
        v85 = *(v0 + 336);
        v86 = *(v0 + 344);
        v87 = *(v0 + 328);

        v81 = *(v85 + 8);
        v81(v86, v87);
        v83 = v68;
        v84 = v69;
      }

      v136(v83, v84);
      v88 = *(v0 + 360);
      v89 = *(v0 + 328);
      sub_1003E3C24();
      swift_allocError();
      *v90 = 3;
      swift_willThrow();
      sub_10000BB78((v0 + 16));
      v81(v88, v89);
      goto LABEL_22;
    }

    v57 = *(v0 + 328);
    v58 = *(v0 + 336);
    v59 = *(v0 + 296);
    v60 = *(v0 + 280);
    sub_10000BE18(*(v0 + 288), &qword_100842FD8, &qword_1006E06F0);
    sub_10000BE18(v59, &qword_100842FD8, &qword_1006E06F0);
    (*(v58 + 8))(v60, v57);
LABEL_17:
    sub_10000BE18(*(v0 + 272), &qword_100842FD0, &qword_1006E06E8);
    goto LABEL_18;
  }

  v56 = *(v0 + 296);
  sub_10000BE18(*(v0 + 288), &qword_100842FD8, &qword_1006E06F0);
  sub_10000BE18(v56, &qword_100842FD8, &qword_1006E06F0);
  if (v53(v50 + v52, 1, v55) != 1)
  {
    goto LABEL_17;
  }

  sub_10000BE18(*(v0 + 272), &qword_100842FD8, &qword_1006E06F0);
LABEL_26:
  v111 = *(v0 + 248);
  v112 = *(v0 + 256);
  v113 = *(v0 + 232);
  v114 = *(v0 + 240);
  v115 = *(v0 + 216);
  v116 = *(v0 + 224);
  (*(v114 + 16))(v112, *(v0 + 208), v113);
  sub_100020260(v0 + 16, v0 + 96);
  v117 = (*(v114 + 80) + 40) & ~*(v114 + 80);
  v118 = (v111 + v117 + 7) & 0xFFFFFFFFFFFFFFF8;
  v119 = swift_allocObject();
  *(v119 + 2) = 0;
  *(v119 + 3) = 0;
  *(v119 + 4) = v116;
  (*(v114 + 32))(&v119[v117], v112, v113);
  *&v119[v118] = v115;
  sub_10001F358((v0 + 96), &v119[(v118 + 15) & 0xFFFFFFFFFFFFFFF8]);

  v120 = swift_task_alloc();
  *(v0 + 408) = v120;
  *v120 = v0;
  v120[1] = sub_1003E1CD0;
  v121 = *(v0 + 224);
  v122 = *(v0 + 200);

  return sub_1003DCB88(v122, &unk_1006E0708, v119);
}

uint64_t sub_1003E1CD0()
{
  v2 = *v1;
  v3 = *(*v1 + 408);
  v4 = *v1;
  *(*v1 + 416) = v0;

  v5 = *(v2 + 224);
  if (v0)
  {
    v6 = sub_1003E1F30;
  }

  else
  {
    v6 = sub_1003E1DFC;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1003E1DFC()
{
  v2 = v0[49];
  v1 = v0[50];
  v3 = v0[48];
  v5 = v0[44];
  v4 = v0[45];
  v6 = v0[42];
  v7 = v0[43];
  v9 = v0[40];
  v8 = v0[41];
  v12 = v0[39];
  v13 = v0[37];
  v14 = v0[36];
  v15 = v0[35];
  v16 = v0[34];
  v17 = v0[32];
  sub_10000BB78(v0 + 2);
  (*(v6 + 8))(v4, v8);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1003E1F30()
{
  v1 = v0[52];
  v2 = v0[45];
  v4 = v0[41];
  v3 = v0[42];
  swift_errorRetain();
  v5 = sub_1003E53BC(v1);
  sub_1003E3C24();
  swift_allocError();
  *v6 = v5;
  swift_willThrow();

  sub_10000BB78(v0 + 2);
  (*(v3 + 8))(v2, v4);
  v8 = v0[49];
  v7 = v0[50];
  v9 = v0[48];
  v11 = v0[44];
  v10 = v0[45];
  v12 = v0[43];
  v14 = v0[39];
  v13 = v0[40];
  v15 = v0[36];
  v16 = v0[37];
  v19 = v0[35];
  v20 = v0[34];
  v21 = v0[32];

  v17 = v0[1];

  return v17();
}

uint64_t sub_1003E20AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[10] = a6;
  v7[11] = a7;
  v7[8] = a4;
  v7[9] = a5;
  v7[7] = a1;
  v8 = type metadata accessor for PartialWebPresentmentRequest();
  v7[12] = v8;
  v9 = *(v8 - 8);
  v7[13] = v9;
  v7[14] = *(v9 + 64);
  v7[15] = swift_task_alloc();
  v10 = *(*(sub_100007224(&unk_100845860, &unk_1006BF9D0) - 8) + 64) + 15;
  v7[16] = swift_task_alloc();

  return _swift_task_switch(sub_1003E21B4, 0, 0);
}

uint64_t sub_1003E21B4()
{
  v2 = *(v0 + 120);
  v1 = *(v0 + 128);
  v3 = *(v0 + 104);
  v4 = *(v0 + 112);
  v6 = *(v0 + 88);
  v5 = *(v0 + 96);
  v8 = *(v0 + 72);
  v7 = *(v0 + 80);
  v9 = *(v0 + 64);
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v1, 1, 1, v10);
  (*(v3 + 16))(v2, v8, v5);
  sub_100020260(v6, v0 + 16);
  v11 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v12 = (v4 + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = swift_allocObject();
  *(v13 + 2) = 0;
  *(v13 + 3) = 0;
  *(v13 + 4) = v9;
  (*(v3 + 32))(&v13[v11], v2, v5);
  *&v13[v12] = v7;
  sub_10001F358((v0 + 16), &v13[(v12 + 15) & 0xFFFFFFFFFFFFFFF8]);

  *(v0 + 136) = sub_100130958(0, 0, v1, &unk_1006E0748, v13);
  v14 = sub_10000BA08((v9 + OBJC_IVAR____TtC8coreidvd27RemoteDocumentProviderActor_activeTaskManager), *(v9 + OBJC_IVAR____TtC8coreidvd27RemoteDocumentProviderActor_activeTaskManager + 24));
  *(v0 + 144) = v14;
  v15 = *v14;

  return _swift_task_switch(sub_1003E2378, v15, 0);
}

uint64_t sub_1003E2378()
{
  sub_100501240(*(v0 + 136), **(v0 + 144));

  return _swift_task_switch(sub_1003E23E4, 0, 0);
}

uint64_t sub_1003E23E4()
{
  v1 = async function pointer to withTaskCancellationHandler<A>(operation:onCancel:isolation:)[1];
  v2 = swift_task_alloc();
  v0[19] = v2;
  type metadata accessor for RemoteWebPresentmentResponse(0);
  *v2 = v0;
  v2[1] = sub_1003E24C0;
  v3 = v0[17];
  v4 = v0[7];

  return withTaskCancellationHandler<A>(operation:onCancel:isolation:)(v4, &unk_1006E0758);
}

uint64_t sub_1003E24C0()
{
  v2 = *(*v1 + 152);
  v5 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v3 = sub_1003E264C;
  }

  else
  {
    v3 = sub_1003E25D4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1003E25D4()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[15];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1003E264C()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[15];

  v4 = v0[1];
  v5 = v0[20];

  return v4();
}

uint64_t sub_1003E26C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[9] = a5;
  v7[10] = a6;
  v7[7] = a1;
  v7[8] = a4;
  v8 = OBJC_IVAR____TtC8coreidvd27RemoteDocumentProviderActor__remoteWebPresentmentManager;
  v7[11] = a7;
  v7[12] = v8;
  return _swift_task_switch(sub_1003E26F4, 0, 0);
}

uint64_t sub_1003E26F4()
{
  v1 = v0[10];
  v2 = (v0[8] + v0[12]);
  v3 = sub_10000BA08(v2, v2[3]);
  v0[5] = type metadata accessor for RemoteWebPresentmentRequestReleaser();
  v0[6] = &off_10080FD40;
  v0[2] = v1;
  v4 = *v3;
  v0[13] = *v3;
  v5 = v4[10];
  v6 = v4[11];

  sub_10000BA08(v4 + 7, v5);
  v7 = *(v6 + 8);
  v12 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  v0[14] = v9;
  *v9 = v0;
  v9[1] = sub_1003E286C;
  v10 = v0[9];

  return v12(v10, v5, v6);
}

uint64_t sub_1003E286C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 112);
  v6 = *v2;
  v4[15] = a1;
  v4[16] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_1003E2B44, 0, 0);
  }

  else
  {
    v7 = swift_task_alloc();
    v4[17] = v7;
    *v7 = v6;
    v7[1] = sub_1003E2A00;
    v8 = v4[13];
    v9 = v4[11];
    v10 = v4[9];
    v11 = v4[7];

    return sub_100401E3C(v11, v10, (v4 + 2), a1, v9);
  }
}

uint64_t sub_1003E2A00()
{
  v2 = *(*v1 + 136);
  v3 = *v1;
  v3[18] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1003E2BA8, 0, 0);
  }

  else
  {
    v4 = v3[15];

    sub_10000BB78(v3 + 2);
    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_1003E2B44()
{
  v1 = v0[16];
  sub_10000BB78(v0 + 2);
  v2 = v0[1];

  return v2();
}

uint64_t sub_1003E2BA8()
{
  v1 = v0[15];

  v2 = v0[18];
  sub_10000BB78(v0 + 2);
  v3 = v0[1];

  return v3();
}

uint64_t sub_1003E2C14(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v4 = type metadata accessor for WebPresentmentResponse();
  v2[3] = v4;
  v5 = *(v4 - 8);
  v2[4] = v5;
  v6 = *(v5 + 64) + 15;
  v7 = swift_task_alloc();
  v2[5] = v7;
  v8 = async function pointer to Task.value.getter[1];
  v9 = swift_task_alloc();
  v2[6] = v9;
  v10 = sub_100007224(&qword_100833B90, &qword_1006D95C0);
  *v9 = v2;
  v9[1] = sub_1003E2D4C;

  return Task.value.getter(v7, a2, v4, v10, &protocol self-conformance witness table for Error);
}

uint64_t sub_1003E2D4C()
{
  v2 = *(*v1 + 48);
  v5 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v3 = sub_1003E2EE0;
  }

  else
  {
    v3 = sub_1003E2E60;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1003E2E60()
{
  (*(v0[4] + 32))(v0[2], v0[5], v0[3]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1003E2EE0()
{
  v1 = v0[5];

  v2 = v0[1];
  v3 = v0[7];

  return v2();
}

void sub_1003E2F44(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_100007224(&qword_100833B90, &qword_1006D95C0);

  Task.cancel()();
}

uint64_t sub_1003E2FAC()
{
  is_remote = swift_distributed_actor_is_remote();
  v2 = OBJC_IVAR____TtC8coreidvd27RemoteDocumentProviderActor_id;
  if (is_remote)
  {
    v3 = type metadata accessor for NWActorID();
    (*(*(v3 - 8) + 8))(v0 + v2, v3);
    v4 = *(v0 + OBJC_IVAR____TtC8coreidvd27RemoteDocumentProviderActor_actorSystem);
  }

  else
  {
    v5 = OBJC_IVAR____TtC8coreidvd27RemoteDocumentProviderActor_actorSystem;
    type metadata accessor for NWActorSystem();
    sub_1003DF7C0(&qword_100842FB8, &type metadata accessor for NWActorSystem);
    dispatch thunk of DistributedActorSystem.resignID(_:)();
    v6 = type metadata accessor for NWActorID();
    (*(*(v6 - 8) + 8))(v0 + v2, v6);
    v7 = *(v0 + v5);

    sub_10000BB78((v0 + OBJC_IVAR____TtC8coreidvd27RemoteDocumentProviderActor__remoteWebPresentmentManager));
    sub_10000BB78((v0 + OBJC_IVAR____TtC8coreidvd27RemoteDocumentProviderActor_activeTaskManager));
    sub_1003E3B60(v0 + OBJC_IVAR____TtC8coreidvd27RemoteDocumentProviderActor_currentState);
  }

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_1003E312C()
{
  result = type metadata accessor for NWActorID();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = type metadata accessor for RemoteDocumentProviderActor.RequestState(319);
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1003E3250(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007224(&unk_100843210, &qword_1006E0550);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1003E32DC(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_100007224(&unk_100843210, &qword_1006E0550);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_1003E3368()
{
  sub_1003E33C0();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

void sub_1003E33C0()
{
  if (!qword_100842F68)
  {
    type metadata accessor for NWEndpoint();
    sub_10000B870(&unk_100842F70, qword_1006E0568);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_100842F68);
    }
  }
}

uint64_t sub_1003E3454()
{
  if ((__isLocalActor(_:)() & 1) == 0)
  {
    type metadata accessor for RemoteDocumentProviderActor(0);
    return buildDefaultDistributedRemoteActorExecutor<A>(_:)();
  }

  return v0;
}

uint64_t sub_1003E34A8(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  type metadata accessor for RemoteDocumentProviderActor(0);
  type metadata accessor for NWActorSystem();
  sub_1003DF7C0(&qword_100842FB8, &type metadata accessor for NWActorSystem);
  result = dispatch thunk of DistributedActorSystem.resolve<A>(id:as:)();
  if (!v2 && !result)
  {
    v6 = swift_distributedActor_remote_initialize();
    v7 = OBJC_IVAR____TtC8coreidvd27RemoteDocumentProviderActor_id;
    v8 = type metadata accessor for NWActorID();
    (*(*(v8 - 8) + 16))(v6 + v7, a1, v8);
    *(v6 + OBJC_IVAR____TtC8coreidvd27RemoteDocumentProviderActor_actorSystem) = v4;

    return v6;
  }

  return result;
}

Swift::Int sub_1003E35D8()
{
  v2 = *v0;
  Hasher.init(_seed:)();
  type metadata accessor for RemoteDocumentProviderActor(0);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1003E3638()
{
  v1 = *v0;
  type metadata accessor for RemoteDocumentProviderActor(0);
  sub_1003DF7C0(&qword_100843220, type metadata accessor for RemoteDocumentProviderActor);
  return DistributedActor.hash(into:)();
}

Swift::Int sub_1003E36B4()
{
  v2 = *v0;
  Hasher.init(_seed:)();
  type metadata accessor for RemoteDocumentProviderActor(0);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1003E3710@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC8coreidvd27RemoteDocumentProviderActor_id;
  v5 = type metadata accessor for NWActorID();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_1003E378C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = type metadata accessor for RemoteDocumentProviderActor(0);
  v5 = sub_1003DF7C0(&qword_100843220, type metadata accessor for RemoteDocumentProviderActor);

  return static DistributedActor.== infix(_:_:)(v2, v3, v4, v5);
}

uint64_t sub_1003E3818()
{
  v1 = *v0;
  type metadata accessor for RemoteDocumentProviderActor(0);
  sub_1003DF7C0(&qword_100843220, type metadata accessor for RemoteDocumentProviderActor);
  sub_1003DF7C0(&qword_100842FC0, &type metadata accessor for NWActorID);
  return DistributedActor<>.encode(to:)();
}

uint64_t sub_1003E38E0@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for RemoteDocumentProviderActor(0);
  sub_1003DF7C0(&qword_100843220, type metadata accessor for RemoteDocumentProviderActor);
  sub_1003DF7C0(&qword_100842FC8, &type metadata accessor for NWActorID);
  result = DistributedActor<>.init(from:)();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1003E3B60(uint64_t a1)
{
  v2 = type metadata accessor for RemoteDocumentProviderActor.RequestState(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1003E3BBC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1003E3C24()
{
  result = qword_100842FE0;
  if (!qword_100842FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100842FE0);
  }

  return result;
}

uint64_t sub_1003E3C78(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007224(&qword_100842FD8, &qword_1006E06F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003E3CEC(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for PartialWebPresentmentRequest() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = v1[2];
  v10 = v1[3];
  v11 = v1[4];
  v12 = *(v1 + v7);
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_100041F04;

  return sub_1003E20AC(a1, v9, v10, v11, v1 + v6, v12, v1 + v8);
}

uint64_t sub_1003E3E2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a3;
  v6 = async function pointer to Task.value.getter[1];
  v7 = swift_task_alloc();
  *(v3 + 24) = v7;
  v8 = sub_100007224(&qword_100833B90, &qword_1006D95C0);
  *v7 = v3;
  v7[1] = sub_1003E3F08;

  return Task.value.getter(a1, a2, &type metadata for () + 8, v8, &protocol self-conformance witness table for Error);
}

uint64_t sub_1003E3F08()
{
  v2 = *(*v1 + 24);
  v3 = *v1;
  *(v3 + 32) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1003E4BE0, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_1003E403C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a3;
  v6 = async function pointer to Task.value.getter[1];
  v7 = swift_task_alloc();
  *(v3 + 24) = v7;
  v8 = type metadata accessor for RemoteWebPresentmentResponse(0);
  v9 = sub_100007224(&qword_100833B90, &qword_1006D95C0);
  *v7 = v3;
  v7[1] = sub_1003E411C;

  return Task.value.getter(a1, a2, v8, v9, &protocol self-conformance witness table for Error);
}

uint64_t sub_1003E411C()
{
  v2 = *(*v1 + 24);
  v3 = *v1;
  *(v3 + 32) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1003E4250, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_1003E4274(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100027B9C;

  return sub_1003DD408(a1, v5, v4);
}

uint64_t sub_1003E4358(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_100041F04;

  return sub_1003E403C(a1, v2, a2);
}

uint64_t sub_1003E4410()
{
  v1 = type metadata accessor for PartialWebPresentmentRequest();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + 16);
  swift_unknownObjectRelease();
  v8 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);
  v9 = *(v0 + v5);

  sub_10000BB78((v0 + v6));

  return _swift_deallocObject(v0, v6 + 40, v3 | 7);
}

uint64_t sub_1003E4508(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for PartialWebPresentmentRequest() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = v1[2];
  v10 = v1[3];
  v11 = v1[4];
  v12 = *(v1 + v7);
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_100041F04;

  return sub_1003E26C4(a1, v9, v10, v11, v1 + v6, v12, v1 + v8);
}

uint64_t sub_1003E4648(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100041F04;

  return sub_1003E2C14(a1, v1);
}

uint64_t sub_1003E471C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RemoteDocumentProviderActor.RequestState(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003E4780()
{
  v1 = (type metadata accessor for RemoteWebPresentmentRequest(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = *(v0 + 32);

  v7 = v0 + v3;
  v8 = type metadata accessor for PartialWebPresentmentRequest();
  (*(*(v8 - 8) + 8))(v7, v8);
  v9 = *(v7 + v1[7] + 8);

  v10 = *(v0 + v4);

  return _swift_deallocObject(v0, v4 + 8, v2 | 7);
}

uint64_t sub_1003E4890(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RemoteWebPresentmentRequest(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003E48F4(uint64_t a1)
{
  v4 = *(type metadata accessor for RemoteWebPresentmentRequest(0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100041F04;

  return sub_1003DFA0C(a1, v6, v7, v8, v1 + v5, v9);
}

uint64_t sub_1003E4A24(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100041F04;

  return sub_1003DD14C(a1, v5, v4);
}

void sub_1003E4AD0()
{
  sub_100007224(&qword_100833B90, &qword_1006D95C0);

  Task.cancel()();
}

uint64_t sub_1003E4B24(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_100041F04;

  return sub_1003E3E2C(a1, v2, a2);
}

uint64_t sub_1003E4BF0(void *a1, int a2)
{
  v35 = a2;
  v3 = sub_100007224(&qword_100843058, &qword_1006E08F0);
  v33 = *(v3 - 8);
  v34 = v3;
  v4 = *(v33 + 64);
  __chkstk_darwin(v3);
  v32 = &v26 - v5;
  v6 = sub_100007224(&qword_100843060, &qword_1006E08F8);
  v30 = *(v6 - 8);
  v31 = v6;
  v7 = *(v30 + 64);
  __chkstk_darwin(v6);
  v29 = &v26 - v8;
  v9 = sub_100007224(&qword_100843068, &qword_1006E0900);
  v27 = *(v9 - 8);
  v28 = v9;
  v10 = *(v27 + 64);
  __chkstk_darwin(v9);
  v12 = &v26 - v11;
  v13 = sub_100007224(&qword_100843070, &qword_1006E0908);
  v26 = *(v13 - 8);
  v14 = *(v26 + 64);
  __chkstk_darwin(v13);
  v16 = &v26 - v15;
  v17 = sub_100007224(&qword_100843078, &qword_1006E0910);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = &v26 - v20;
  v22 = a1[4];
  sub_10000BA08(a1, a1[3]);
  sub_1003E5F7C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (v35 > 1u)
  {
    if (v35 == 2)
    {
      v38 = 2;
      sub_1003E6024();
      v12 = v29;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v24 = v30;
      v23 = v31;
    }

    else
    {
      v39 = 3;
      sub_1003E5FD0();
      v12 = v32;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v24 = v33;
      v23 = v34;
    }

    goto LABEL_8;
  }

  if (v35)
  {
    v37 = 1;
    sub_1003E6078();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v24 = v27;
    v23 = v28;
LABEL_8:
    (*(v24 + 8))(v12, v23);
    return (*(v18 + 8))(v21, v17);
  }

  v36 = 0;
  sub_1003E60CC();
  KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  (*(v26 + 8))(v16, v13);
  return (*(v18 + 8))(v21, v17);
}

uint64_t sub_1003E502C@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_1003E505C(uint64_t a1)
{
  v2 = sub_1003E6078();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1003E5098(uint64_t a1)
{
  v2 = sub_1003E6078();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_1003E50D4()
{
  v1 = 0x6E776F6E6B6E75;
  v2 = 0xD000000000000011;
  if (*v0 != 2)
  {
    v2 = 0x5364696C61766E69;
  }

  if (*v0)
  {
    v1 = 0x656C6C65636E6163;
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

uint64_t sub_1003E5160@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1003E578C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1003E5188(uint64_t a1)
{
  v2 = sub_1003E5F7C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1003E51C4(uint64_t a1)
{
  v2 = sub_1003E5F7C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1003E5200(uint64_t a1)
{
  v2 = sub_1003E5FD0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1003E523C(uint64_t a1)
{
  v2 = sub_1003E5FD0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1003E5278(uint64_t a1)
{
  v2 = sub_1003E6024();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1003E52B4(uint64_t a1)
{
  v2 = sub_1003E6024();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1003E52F0(uint64_t a1)
{
  v2 = sub_1003E60CC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1003E532C(uint64_t a1)
{
  v2 = sub_1003E60CC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1003E5374@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1003E5904(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1003E53BC(uint64_t a1)
{
  v2 = type metadata accessor for CancellationError();
  v21 = *(v2 - 8);
  v3 = *(v21 + 64);
  __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DIPError.Code();
  v22 = *(v6 - 8);
  v7 = *(v22 + 64);
  __chkstk_darwin(v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DIPError();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v21 - v16;
  v24 = a1;
  swift_errorRetain();
  sub_100007224(&qword_100833B90, &qword_1006D95C0);
  if (swift_dynamicCast())
  {

    v18 = v23;
LABEL_3:

    return v18;
  }

  v24 = a1;
  swift_errorRetain();
  if (swift_dynamicCast())
  {
    (*(v11 + 32))(v15, v17, v10);
    DIPError.code.getter();

    (*(v11 + 8))(v15, v10);
    v20 = v22;
    if ((*(v22 + 88))(v9, v6) == enum case for DIPError.Code.webPresentmentCancelled(_:))
    {
      v18 = 1;
    }

    else
    {
      (*(v20 + 8))(v9, v6);
      v18 = 0;
    }

    goto LABEL_3;
  }

  v24 = a1;
  if (swift_dynamicCast())
  {
    (*(v21 + 8))(v5, v2);

    return 1;
  }

  else
  {

    return 0;
  }
}

unint64_t sub_1003E5738()
{
  result = qword_100842FF8;
  if (!qword_100842FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100842FF8);
  }

  return result;
}

uint64_t sub_1003E578C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C6C65636E6163 && a2 == 0xE900000000000064 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000100700D10 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x5364696C61766E69 && a2 == 0xEC00000065746174)
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

uint64_t sub_1003E5904(uint64_t *a1)
{
  v2 = sub_100007224(&qword_100843000, &qword_1006E08C0);
  v3 = *(v2 - 8);
  v52 = v2;
  v53 = v3;
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v55 = &v44 - v5;
  v6 = sub_100007224(&qword_100843008, &qword_1006E08C8);
  v7 = *(v6 - 8);
  v50 = v6;
  v51 = v7;
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v54 = &v44 - v9;
  v10 = sub_100007224(&qword_100843010, &qword_1006E08D0);
  v11 = *(v10 - 8);
  v48 = v10;
  v49 = v11;
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v44 - v13;
  v15 = sub_100007224(&qword_100843018, &qword_1006E08D8);
  v47 = *(v15 - 8);
  v16 = *(v47 + 64);
  __chkstk_darwin(v15);
  v18 = &v44 - v17;
  v19 = sub_100007224(&qword_100843020, &qword_1006E08E0);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v23 = &v44 - v22;
  v25 = a1[3];
  v24 = a1[4];
  v57 = a1;
  sub_10000BA08(a1, v25);
  sub_1003E5F7C();
  v26 = v56;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v26)
  {
    goto LABEL_16;
  }

  v45 = v15;
  v46 = v23;
  v28 = v54;
  v27 = v55;
  v56 = v20;
  v29 = KeyedDecodingContainer.allKeys.getter();
  v30 = *(v29 + 16);
  if (!v30 || ((v31 = *(v29 + 32), v30 == 1) ? (v32 = v31 == 4) : (v32 = 1), v32))
  {
    v33 = type metadata accessor for DecodingError();
    swift_allocError();
    v35 = v34;
    v36 = *(sub_100007224(&qword_100843030, &qword_1006E08E8) + 48);
    *v35 = &type metadata for RemoteDocumentProviderActorError;
    v37 = v46;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v33 - 8) + 104))(v35, enum case for DecodingError.typeMismatch(_:), v33);
    swift_willThrow();
    (*(v56 + 8))(v37, v19);
    swift_unknownObjectRelease();
LABEL_16:
    sub_10000BB78(v57);
    return 0;
  }

  v58 = *(v29 + 32);
  if (v31 > 1)
  {
    v39 = v56;
    if (v31 == 2)
    {
      v61 = 2;
      sub_1003E6024();
      v40 = v28;
      v41 = v46;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v51 + 8))(v40, v50);
      (*(v39 + 8))(v41, v19);
    }

    else
    {
      v62 = 3;
      sub_1003E5FD0();
      v42 = v46;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v53 + 8))(v27, v52);
      (*(v39 + 8))(v42, v19);
    }
  }

  else
  {
    if (v31)
    {
      v60 = 1;
      sub_1003E6078();
      v38 = v46;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v49 + 8))(v14, v48);
    }

    else
    {
      v59 = 0;
      sub_1003E60CC();
      v38 = v46;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v47 + 8))(v18, v45);
    }

    (*(v56 + 8))(v38, v19);
  }

  swift_unknownObjectRelease();
  sub_10000BB78(v57);
  return v58;
}

unint64_t sub_1003E5F7C()
{
  result = qword_100843028;
  if (!qword_100843028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100843028);
  }

  return result;
}

unint64_t sub_1003E5FD0()
{
  result = qword_100843038;
  if (!qword_100843038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100843038);
  }

  return result;
}

unint64_t sub_1003E6024()
{
  result = qword_100843040;
  if (!qword_100843040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100843040);
  }

  return result;
}

unint64_t sub_1003E6078()
{
  result = qword_100843048;
  if (!qword_100843048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100843048);
  }

  return result;
}

unint64_t sub_1003E60CC()
{
  result = qword_100843050;
  if (!qword_100843050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100843050);
  }

  return result;
}

unint64_t sub_1003E6174()
{
  result = qword_100843080;
  if (!qword_100843080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100843080);
  }

  return result;
}

unint64_t sub_1003E61CC()
{
  result = qword_100843088;
  if (!qword_100843088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100843088);
  }

  return result;
}

unint64_t sub_1003E6224()
{
  result = qword_100843090;
  if (!qword_100843090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100843090);
  }

  return result;
}

unint64_t sub_1003E627C()
{
  result = qword_100843098;
  if (!qword_100843098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100843098);
  }

  return result;
}

unint64_t sub_1003E62D4()
{
  result = qword_1008430A0;
  if (!qword_1008430A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008430A0);
  }

  return result;
}

unint64_t sub_1003E632C()
{
  result = qword_1008430A8;
  if (!qword_1008430A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008430A8);
  }

  return result;
}

unint64_t sub_1003E6384()
{
  result = qword_1008430B0;
  if (!qword_1008430B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008430B0);
  }

  return result;
}

unint64_t sub_1003E63DC()
{
  result = qword_1008430B8;
  if (!qword_1008430B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008430B8);
  }

  return result;
}

unint64_t sub_1003E6434()
{
  result = qword_1008430C0;
  if (!qword_1008430C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008430C0);
  }

  return result;
}

unint64_t sub_1003E648C()
{
  result = qword_1008430C8;
  if (!qword_1008430C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008430C8);
  }

  return result;
}

unint64_t sub_1003E64E4()
{
  result = qword_1008430D0;
  if (!qword_1008430D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008430D0);
  }

  return result;
}

uint64_t sub_1003E653C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_10000BBC4(a3, v27 - v11, &unk_100845860, &unk_1006BF9D0);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_10000BE18(v12, &unk_100845860, &unk_1006BF9D0);
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

      sub_10000BE18(a3, &unk_100845860, &unk_1006BF9D0);

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

  sub_10000BE18(a3, &unk_100845860, &unk_1006BF9D0);
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

uint64_t sub_1003E683C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_10000BBC4(a3, v27 - v11, &unk_100845860, &unk_1006BF9D0);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_10000BE18(v12, &unk_100845860, &unk_1006BF9D0);
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

      sub_100007224(&qword_100843250, &qword_1006E0DF0);
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

      sub_10000BE18(a3, &unk_100845860, &unk_1006BF9D0);

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

  sub_10000BE18(a3, &unk_100845860, &unk_1006BF9D0);
  v26 = swift_allocObject();
  *(v26 + 16) = a4;
  *(v26 + 24) = a5;
  sub_100007224(&qword_100843250, &qword_1006E0DF0);
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_1003E6B50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_10000BBC4(a3, v27 - v11, &unk_100845860, &unk_1006BF9D0);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_10000BE18(v12, &unk_100845860, &unk_1006BF9D0);
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
      v27[0] = a3;
      v21 = String.utf8CString.getter() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;
      type metadata accessor for IdentityProofingFlow();

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

      sub_10000BE18(v27[0], &unk_100845860, &unk_1006BF9D0);

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

  sub_10000BE18(a3, &unk_100845860, &unk_1006BF9D0);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  type metadata accessor for IdentityProofingFlow();
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_1003E6E5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_10000BBC4(a3, v27 - v11, &unk_100845860, &unk_1006BF9D0);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_10000BE18(v12, &unk_100845860, &unk_1006BF9D0);
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

      sub_100007224(&qword_1008402E8, &qword_1006E0E10);
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

      sub_10000BE18(a3, &unk_100845860, &unk_1006BF9D0);

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

  sub_10000BE18(a3, &unk_100845860, &unk_1006BF9D0);
  v26 = swift_allocObject();
  *(v26 + 16) = a4;
  *(v26 + 24) = a5;
  sub_100007224(&qword_1008402E8, &qword_1006E0E10);
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

void sub_1003E7170()
{
  v1 = *v0;
  v2 = v0[2];
  v3 = swift_allocObject();
  *(v3 + 16) = v0;
  *(v3 + 24) = v1;
  v5[4] = sub_1003E87AC;
  v5[5] = v3;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 1107296256;
  v5[2] = sub_1003E854C;
  v5[3] = &unk_10080EFB8;
  v4 = _Block_copy(v5);

  xpc_set_event_stream_handler("com.apple.rapport.matching", v2, v4);
  _Block_release(v4);
}

uint64_t sub_1003E7274(void *a1, uint64_t a2, uint64_t a3)
{
  v67 = a3;
  v68 = a2;
  v4 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v66 = &v62 - v6;
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v12 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = &v62 - v14;
  __chkstk_darwin(v13);
  v17 = &v62 - v16;
  defaultLogger()();
  swift_unknownObjectRetain();
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.debug.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v65 = v8;
    v21 = v20;
    v22 = swift_slowAlloc();
    v64 = v7;
    v23 = v22;
    v69 = v22;
    *v21 = 136315138;
    v24 = [a1 description];
    v63 = a1;
    v25 = v12;
    v26 = v24;
    v27 = v15;
    v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = v29;

    v31 = v28;
    v15 = v27;
    v32 = sub_100141FE4(v31, v30, &v69);

    *(v21 + 4) = v32;
    v12 = v25;
    a1 = v63;
    _os_log_impl(&_mh_execute_header, v18, v19, "Event published: %s", v21, 0xCu);
    sub_10000BB78(v23);
    v7 = v64;

    v8 = v65;
  }

  v33 = *(v8 + 8);
  v33(v17, v7);
  if (xpc_dictionary_get_string(a1, _xpc_event_key_name))
  {
    v35 = String.init(cString:)();
    v36 = v34;
    if (v35 == 0xD000000000000022 && 0x8000000100714FE0 == v34 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      v37 = type metadata accessor for TaskPriority();
      v38 = v66;
      (*(*(v37 - 8) + 56))(v66, 1, 1, v37);
      v39 = swift_allocObject();
      v39[2] = 0;
      v39[3] = 0;
      v40 = v67;
      v39[4] = v68;
      v39[5] = a1;
      v39[6] = v40;
      swift_unknownObjectRetain();

      sub_1003E653C(0, 0, v38, &unk_1006E0DA0, v39);
    }

    defaultLogger()();

    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v69 = v58;
      *v57 = 136315138;
      v59 = sub_100141FE4(v35, v36, &v69);
      v60 = v15;
      v61 = v59;

      *(v57 + 4) = v61;
      _os_log_impl(&_mh_execute_header, v55, v56, "Unrecognized application service name: %s", v57, 0xCu);
      sub_10000BB78(v58);

      v53 = v60;
    }

    else
    {

      v53 = v15;
    }

    goto LABEL_14;
  }

  defaultLogger()();
  swift_unknownObjectRetain();
  v42 = Logger.logObject.getter();
  v43 = static os_log_type_t.error.getter();
  swift_unknownObjectRelease();
  if (!os_log_type_enabled(v42, v43))
  {

    v53 = v12;
LABEL_14:
    v54 = v7;
    return (v33)(v53, v54);
  }

  v44 = swift_slowAlloc();
  v65 = v8;
  v45 = v44;
  v46 = v7;
  v47 = swift_slowAlloc();
  v69 = v47;
  *v45 = 136315138;
  v48 = [a1 description];
  v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v51 = v50;

  v52 = sub_100141FE4(v49, v51, &v69);

  *(v45 + 4) = v52;
  _os_log_impl(&_mh_execute_header, v42, v43, "Invalid Rapport XPC event name: %s", v45, 0xCu);
  sub_10000BB78(v47);

  v53 = v12;
  v54 = v46;
  return (v33)(v53, v54);
}

uint64_t sub_1003E7874(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v6 = type metadata accessor for Logger();
  v5[9] = v6;
  v7 = *(v6 - 8);
  v5[10] = v7;
  v8 = *(v7 + 64) + 15;
  v5[11] = swift_task_alloc();
  v5[12] = swift_task_alloc();
  v5[13] = swift_task_alloc();
  v5[14] = swift_task_alloc();
  v5[15] = swift_task_alloc();
  v9 = type metadata accessor for NWListener.Service();
  v5[16] = v9;
  v10 = *(v9 - 8);
  v5[17] = v10;
  v11 = *(v10 + 64) + 15;
  v5[18] = swift_task_alloc();
  v5[19] = swift_task_alloc();

  return _swift_task_switch(sub_1003E79CC, 0, 0);
}

uint64_t sub_1003E79CC()
{
  v1 = v0[18];
  v2 = v0[19];
  v3 = v0[16];
  v4 = v0[17];
  v5 = v0[15];
  v6 = v0[7];
  NWListener.Service.init(applicationService:)();
  (*(v4 + 16))(v1, v2, v3);
  type metadata accessor for NWParameters();
  static NWParameters.applicationService.getter();
  v7 = type metadata accessor for NWActorSystem();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  v10 = NWActorSystem.init(service:parameters:)();
  v0[20] = v10;
  v11 = sub_1003E9594(*(v6 + 24), *(v6 + 32));
  v0[21] = v11;
  sub_100020260(v6 + 40, (v0 + 2));
  v12 = v0[5];
  v13 = sub_10001F370((v0 + 2), v12);
  v14 = *(v12 - 8);
  v15 = *(v14 + 64) + 15;
  v16 = swift_task_alloc();
  (*(v14 + 16))(v16, v13, v12);
  v17 = *v16;

  v18 = sub_1003E8F84(v10, v11, v17);
  v0[22] = v18;
  sub_10000BB78(v0 + 2);

  defaultLogger()();
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&_mh_execute_header, v19, v20, "Publishing RemoteDocumentProviderActor…", v21, 2u);
  }

  v22 = v0[15];
  v23 = v0[9];
  v24 = v0[10];

  v25 = *(v24 + 8);
  v0[23] = v25;
  v25(v22, v23);
  v26 = async function pointer to NWActorSystem.publishAndWaitForReady<A>(_:)[1];
  v27 = swift_task_alloc();
  v0[24] = v27;
  v28 = type metadata accessor for RemoteDocumentProviderActor(0);
  v29 = sub_1003EAF14(&unk_100843200, type metadata accessor for RemoteDocumentProviderActor);
  *v27 = v0;
  v27[1] = sub_1003E7CCC;

  return NWActorSystem.publishAndWaitForReady<A>(_:)(v18, v28, v29);
}

uint64_t sub_1003E7CCC()
{
  v2 = *(*v1 + 192);
  v5 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    v3 = sub_1003E8340;
  }

  else
  {
    v3 = sub_1003E7DE0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1003E7DE0()
{
  v78 = v0;
  v1 = *(v0 + 112);
  v2 = *(v0 + 56);
  v3 = *(v2 + 80);
  *(v2 + 80) = *(v0 + 176);

  defaultLogger()();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "Published RemoteDocumentProviderActor", v6, 2u);
  }

  v7 = *(v0 + 184);
  v8 = *(v0 + 112);
  v9 = *(v0 + 72);
  v10 = *(v0 + 80);
  v11 = *(v0 + 64);

  v7(v8, v9);
  if (xpc_dictionary_get_BOOL(v11, "replyRequired") && xpc_dictionary_create_reply(*(v0 + 64)))
  {
    v12 = *(v0 + 104);
    v13 = *(v0 + 64);
    xpc_dictionary_send_reply();
    defaultLogger()();
    swift_unknownObjectRetain();
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.debug.getter();
    swift_unknownObjectRelease();
    v16 = os_log_type_enabled(v14, v15);
    v17 = *(v0 + 176);
    v18 = *(v0 + 184);
    v72 = *(v0 + 168);
    v19 = *(v0 + 152);
    v20 = *(v0 + 128);
    v21 = *(v0 + 136);
    v22 = *(v0 + 104);
    v24 = *(v0 + 72);
    v23 = *(v0 + 80);
    v75 = *(v0 + 160);
    if (v16)
    {
      v69 = *(v0 + 128);
      v25 = *(v0 + 64);
      v67 = *(v0 + 152);
      v26 = swift_slowAlloc();
      v65 = v18;
      v27 = swift_slowAlloc();
      v77 = v27;
      *v26 = 136315138;
      v28 = [v25 description];
      v62 = v24;
      v63 = v22;
      v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v31 = v30;

      v32 = sub_100141FE4(v29, v31, &v77);

      *(v26 + 4) = v32;
      _os_log_impl(&_mh_execute_header, v14, v15, "Replied to Rapport XPC event: %s", v26, 0xCu);
      sub_10000BB78(v27);

      swift_unknownObjectRelease();

      v65(v63, v62);
      (*(v21 + 8))(v67, v69);
    }

    else
    {
      swift_unknownObjectRelease();

      v18(v22, v24);
      (*(v21 + 8))(v19, v20);
    }
  }

  else
  {
    v33 = *(v0 + 96);
    v34 = *(v0 + 64);
    defaultLogger()();
    swift_unknownObjectRetain();
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();
    swift_unknownObjectRelease();
    v37 = os_log_type_enabled(v35, v36);
    v39 = *(v0 + 176);
    v38 = *(v0 + 184);
    v76 = *(v0 + 160);
    v40 = *(v0 + 152);
    v41 = *(v0 + 128);
    v42 = *(v0 + 136);
    v43 = *(v0 + 96);
    v44 = *(v0 + 72);
    v73 = *(v0 + 168);
    v74 = *(v0 + 80);
    if (v37)
    {
      v71 = *(v0 + 128);
      v45 = *(v0 + 64);
      v70 = *(v0 + 152);
      v46 = swift_slowAlloc();
      v68 = v38;
      v47 = swift_slowAlloc();
      v77 = v47;
      *v46 = 136315138;
      v48 = [v45 description];
      v64 = v44;
      v66 = v43;
      v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v51 = v50;

      v52 = sub_100141FE4(v49, v51, &v77);

      *(v46 + 4) = v52;
      _os_log_impl(&_mh_execute_header, v35, v36, "Failed to create reply for Rapport XPC event: %s", v46, 0xCu);
      sub_10000BB78(v47);

      v68(v66, v64);
      (*(v42 + 8))(v70, v71);
    }

    else
    {

      v38(v43, v44);
      (*(v42 + 8))(v40, v41);
    }
  }

  v54 = *(v0 + 144);
  v53 = *(v0 + 152);
  v56 = *(v0 + 112);
  v55 = *(v0 + 120);
  v58 = *(v0 + 96);
  v57 = *(v0 + 104);
  v59 = *(v0 + 88);

  v60 = *(v0 + 8);

  return v60();
}

uint64_t sub_1003E8340()
{
  v1 = *(v0 + 200);
  v3 = *(v0 + 168);
  v2 = *(v0 + 176);
  v5 = *(v0 + 152);
  v4 = *(v0 + 160);
  v6 = *(v0 + 128);
  v7 = *(v0 + 136);
  v8 = *(v0 + 88);

  (*(v7 + 8))(v5, v6);
  defaultLogger()();
  swift_errorRetain();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();

  v11 = os_log_type_enabled(v9, v10);
  v12 = *(v0 + 200);
  if (v11)
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 138412290;
    swift_errorRetain();
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 4) = v15;
    *v14 = v15;
    _os_log_impl(&_mh_execute_header, v9, v10, "Failed to publish RemoteDocumentProviderActor: %@", v13, 0xCu);
    sub_10000BE18(v14, &unk_100833B50, &unk_1006D8FB0);
  }

  else
  {
    v16 = *(v0 + 200);
  }

  v17 = *(v0 + 80) + 8;
  (*(v0 + 184))(*(v0 + 88), *(v0 + 72));
  v19 = *(v0 + 144);
  v18 = *(v0 + 152);
  v21 = *(v0 + 112);
  v20 = *(v0 + 120);
  v23 = *(v0 + 96);
  v22 = *(v0 + 104);
  v24 = *(v0 + 88);

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_1003E854C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t sub_1003E85AC@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for RemoteMobileDocumentProviderUIPresenter();
  memset(v12, 0, sizeof(v12));
  v13 = 0;
  v3 = swift_allocObject();
  sub_10000BBC4(v12, &v9, &qword_100843248, &qword_1006E0DD8);
  if (v10)
  {
    sub_10000BE18(v12, &qword_100843248, &qword_1006E0DD8);
    sub_10001F358(&v9, v11);
    result = sub_10001F358(v11, (v3 + 2));
  }

  else
  {
    sub_10000BE18(&v9, &qword_100843248, &qword_1006E0DD8);
    v5 = type metadata accessor for RemoteMobileDocumentProviderUIConnectionManager(0);
    v6 = *(v5 + 48);
    v7 = *(v5 + 52);
    swift_allocObject();
    v8 = sub_1003FAA9C();
    v3[5] = v5;
    v3[6] = &off_10080F3A8;
    v3[2] = v8;
    result = sub_10000BE18(v12, &qword_100843248, &qword_1006E0DD8);
  }

  a1[3] = v2;
  a1[4] = &off_10080FAC0;
  *a1 = v3;
  return result;
}

uint64_t sub_1003E86DC()
{
  v1 = *(v0 + 24);
  swift_unknownObjectRelease();
  sub_10000BB78((v0 + 40));
  v2 = *(v0 + 80);

  return swift_deallocClassInstance();
}

uint64_t sub_1003E8774()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1003E87B4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1003E87CC(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1001AFE54;

  return v7(a1);
}

uint64_t sub_1003E88C4()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1003E890C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100027B9C;

  return sub_1003E7874(a1, v4, v5, v6, v7);
}

uint64_t sub_1003E89D4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100041F04;

  return sub_1003E87CC(a1, v5);
}

uint64_t sub_1003E8A8C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1003E8AC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = type metadata accessor for NWActorID();
  v8 = *(v16 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v16);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19[3] = type metadata accessor for RemoteWebPresentmentManager();
  v19[4] = &off_10080FC08;
  v19[0] = a2;
  v18[3] = type metadata accessor for ActiveTaskManager();
  v18[4] = &off_100812348;
  v18[0] = a3;
  swift_defaultActor_initialize();
  v12 = OBJC_IVAR____TtC8coreidvd27RemoteDocumentProviderActor_currentState;
  v13 = sub_100007224(&unk_100843210, &qword_1006E0550);
  (*(*(v13 - 8) + 56))(a4 + v12, 1, 1, v13);
  v14 = OBJC_IVAR____TtC8coreidvd27RemoteDocumentProviderActor_actorSystem;
  *(a4 + OBJC_IVAR____TtC8coreidvd27RemoteDocumentProviderActor_actorSystem) = a1;
  type metadata accessor for RemoteDocumentProviderActor(0);
  v17 = a1;
  type metadata accessor for NWActorSystem();
  sub_1003EAF14(&qword_100842FB8, &type metadata accessor for NWActorSystem);
  sub_1003EAF14(&qword_100843220, type metadata accessor for RemoteDocumentProviderActor);

  dispatch thunk of DistributedActorSystem.assignID<A>(_:)();
  (*(v8 + 32))(a4 + OBJC_IVAR____TtC8coreidvd27RemoteDocumentProviderActor_id, v11, v16);
  sub_100020260(v18, a4 + OBJC_IVAR____TtC8coreidvd27RemoteDocumentProviderActor_activeTaskManager);
  sub_100020260(v19, a4 + OBJC_IVAR____TtC8coreidvd27RemoteDocumentProviderActor__remoteWebPresentmentManager);
  v17 = *(a4 + v14);

  dispatch thunk of DistributedActorSystem.actorReady<A>(_:)();

  sub_10000BB78(v18);
  sub_10000BB78(v19);

  return a4;
}

uint64_t sub_1003E8D7C(uint64_t a1, int *a2)
{
  *(v2 + 32) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 40) = v4;
  *v4 = v2;
  v4[1] = sub_1003E8E70;

  return v6(v2 + 16);
}

uint64_t sub_1003E8E70()
{
  v1 = *v0;
  v2 = *(*v0 + 40);
  v3 = *(*v0 + 32);
  v6 = *v0;

  *v3 = *(v1 + 16);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_1003E8F84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for RemoteWebPresentmentManager();
  v27[3] = v6;
  v27[4] = &off_10080FC08;
  v27[0] = a2;
  active = type metadata accessor for ActiveTaskManager();
  v26 = &off_100812348;
  v24[0] = a3;
  v7 = type metadata accessor for RemoteDocumentProviderActor(0);
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  v10 = swift_allocObject();
  v11 = sub_10001F370(v27, v6);
  v12 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = (v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v15 + 16))(v14);
  v16 = active;
  v17 = sub_10001F370(v24, active);
  v18 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v17);
  v20 = (v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v21 + 16))(v20);
  v22 = sub_1003E8AC4(a1, *v14, *v20, v10);
  sub_10000BB78(v24);
  sub_10000BB78(v27);
  return v22;
}

uint64_t sub_1003E9168(uint64_t a1, int *a2)
{
  *(v2 + 24) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 32) = v4;
  *v4 = v2;
  v4[1] = sub_1003E925C;

  return v6(v2 + 16);
}

uint64_t sub_1003E925C()
{
  v1 = *v0;
  v2 = *(*v0 + 32);
  v3 = *(*v0 + 24);
  v6 = *v0;

  *v3 = *(v1 + 16);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_1003E938C(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_1003E9480;

  return v6(v2 + 32);
}

uint64_t sub_1003E9480()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v6 = *v0;

  *v3 = *(v1 + 32);
  v4 = *(v6 + 8);

  return v4();
}

void *sub_1003E9594(uint64_t a1, uint64_t a2)
{
  v188 = a2;
  v195 = a1;
  v2 = type metadata accessor for DateProvider();
  v3 = *(v2 - 8);
  v4 = v3[8];
  v5 = __chkstk_darwin(v2);
  v7 = &v168 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v168 - v8;
  v191 = type metadata accessor for WalletPassPresentmentInternalSettingsProvider();
  v10 = *(*(v191 - 1) + 64);
  __chkstk_darwin(v191);
  v12 = &v168 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DeviceInformationProvider();
  v262[3] = v13;
  v262[4] = &protocol witness table for DeviceInformationProvider;
  sub_100032DBC(v262);
  DeviceInformationProvider.init()();
  v192 = type metadata accessor for UserDefaultsConfiguration();
  v262[5] = static UserDefaultsConfiguration.standard.getter();
  v14 = sub_100134AD0();
  if (sub_100134AD0())
  {
    v15 = 0xED0000747365742DLL;
  }

  else
  {
    v15 = 0xE800000000000000;
  }

  v16 = type metadata accessor for DigitalPresentmentSessionManager();
  swift_allocObject();
  v17 = sub_10015D65C(v14 & 1, 0x797469746E656469, v15, 2);
  v175 = type metadata accessor for PassManager();
  v187 = swift_allocObject();
  v190 = type metadata accessor for DigitalPresentmentLocalAuthenticationManager();
  v189 = type metadata accessor for DigitalPresentmentUIPresenter();

  v193 = v12;
  DeviceInformationProvider.init()();
  v186 = v13;
  *(&v236 + 1) = v13;
  *&v237 = &protocol witness table for DeviceInformationProvider;
  sub_100032DBC(&v235);
  DeviceInformationProvider.init()();
  v18 = type metadata accessor for KRLTrustValidator();
  v221 = 0u;
  v222 = 0u;
  *&v223[0] = 0;
  v172 = v18;
  swift_allocObject();
  v19 = sub_10010F338();

  DateProvider.init()();
  v170 = v3[2];
  v171 = v3 + 2;
  v170(v7, v9, v2);
  v178 = v7;
  v20 = sub_1003A0748(&v221, v19, v7);

  v21 = v3[1];
  v179 = v9;
  v180 = v3 + 1;
  v196 = v2;
  v169 = v21;
  v21(v9, v2);
  *&v223[0] = &off_100809E48;
  *(&v222 + 1) = v16;
  v194 = v17;
  *&v221 = v17;
  v22 = v191;
  v248 = v191;
  v249 = &off_100810218;
  v23 = sub_100032DBC(v247);
  sub_1003EADF0(v12, v23);
  v24 = type metadata accessor for PresentmentKeyRevocationValidator();
  v232 = &off_100809510;
  v231 = v24;
  *&v230 = v20;
  v25 = type metadata accessor for WalletPassPresentmentManager();
  v26 = swift_allocObject();
  v27 = sub_10001F370(&v221, v16);
  v184 = &v168;
  v28 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v27);
  v30 = (&v168 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  v32 = *(v31 + 16);
  v176 = v31 + 16;
  v173 = v32;
  v174 = v29;
  v32(v30);
  v33 = v248;
  v34 = sub_10001F370(v247, v248);
  v183 = &v168;
  v35 = *(*(v33 - 8) + 64);
  __chkstk_darwin(v34);
  v37 = &v168 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v38 + 16))(v37);
  v39 = v231;
  v40 = sub_10001F370(&v230, v231);
  v182 = &v168;
  v41 = *(*(v39 - 8) + 64);
  __chkstk_darwin(v40);
  v43 = (&v168 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v44 + 16))(v43);
  v45 = *v30;
  v46 = *v43;
  v260 = v16;
  v261 = &off_100809E48;
  v185 = v16;
  *&v259 = v45;
  *(&v257 + 1) = v22;
  v258 = &off_100810218;
  v47 = sub_100032DBC(&v256);
  sub_1003EAE54(v37, v47);
  v255 = &off_100809510;
  v177 = v24;
  v254 = v24;
  *&v253 = v46;
  swift_defaultActor_initialize();
  sub_1003EAEB8(v193);
  *(v26 + 272) = 0u;
  *(v26 + 288) = 0u;
  *(v26 + 304) = 0;
  sub_10001F358(&v259, v26 + 112);
  v48 = v190;
  *(v26 + 152) = v187;
  *(v26 + 160) = v48;
  v49 = v189;
  *(v26 + 168) = &off_100809DF0;
  *(v26 + 176) = v49;
  *(v26 + 184) = &off_100809F18;
  sub_10001F358(&v256, v26 + 192);
  sub_10001F358(&v235, v26 + 232);
  sub_10001F358(&v253, v26 + 312);
  sub_10000BB78(&v230);
  sub_10000BB78(v247);
  sub_10000BB78(&v221);
  v252[9] = &off_100810230;
  v181 = v25;
  v252[8] = v25;
  v252[5] = v26;
  if (qword_100832B60 != -1)
  {
    swift_once();
  }

  v50 = *(qword_100881E78 + 16);
  os_unfair_lock_lock(v50 + 54);
  sub_1000318FC(&v50[4], &v235);
  os_unfair_lock_unlock(v50 + 54);
  v51 = *(&v239 + 1);

  sub_100031918(&v235);
  *(&v222 + 1) = type metadata accessor for MobileDocumentRegistrationDataContainer();
  *&v223[0] = sub_1003EAF14(&qword_100843228, type metadata accessor for MobileDocumentRegistrationDataContainer);
  *&v221 = v51;
  *(&v236 + 1) = type metadata accessor for MobileDocumentProviderRegistrationValidator();
  *&v237 = &protocol witness table for MobileDocumentProviderRegistrationValidator;
  sub_100032DBC(&v235);
  MobileDocumentProviderRegistrationValidator.init()();
  v52 = type metadata accessor for MobileDocumentProviderRegistrationStorage();
  v53 = swift_allocObject();
  sub_10001F358(&v221, v53 + 16);
  sub_10001F358(&v235, v53 + 56);
  v249 = &off_10080DE08;
  v248 = v52;
  v247[0] = v53;
  v54 = type metadata accessor for MobileDocumentProviderRegistrationEntitlementChecker();
  v252[3] = v196;
  v252[4] = &protocol witness table for DateProvider;
  sub_100032DBC(v252);
  DateProvider.init()();
  v250 = v54;
  v251 = &protocol witness table for MobileDocumentProviderRegistrationEntitlementChecker;
  static MobileDocumentProvider.extensionPointIdentifier.getter();
  v55 = type metadata accessor for ExtensionPointManager();
  v56 = *(v55 + 48);
  v57 = *(v55 + 52);
  swift_allocObject();
  v58 = ExtensionPointManager.init(extensionPointIdentifier:)();
  *&v237 = &protocol witness table for ExtensionPointManager;
  *(&v236 + 1) = v55;
  *&v235 = v58;
  *(&v222 + 1) = type metadata accessor for BundleRecordFetcher();
  *&v223[0] = &protocol witness table for BundleRecordFetcher;
  sub_100032DBC(&v221);
  BundleRecordFetcher.init()();
  v59 = v186;
  v260 = v186;
  v261 = &protocol witness table for DeviceInformationProvider;
  sub_100032DBC(&v259);
  DeviceInformationProvider.init()();
  static UserDefaultsConfiguration.standard.getter();
  v231 = type metadata accessor for WebPresentmentDeviceSupportProvider();
  v232 = &protocol witness table for WebPresentmentDeviceSupportProvider;
  sub_100032DBC(&v230);
  WebPresentmentDeviceSupportProvider.init(deviceInfoProvider:userDefaultaConfiguration:)();
  PartyDocumentProviderPreferencesManager = type metadata accessor for FirstPartyDocumentProviderPreferencesManager();
  v61 = *(PartyDocumentProviderPreferencesManager + 48);
  v62 = *(PartyDocumentProviderPreferencesManager + 52);
  swift_allocObject();
  v63 = FirstPartyDocumentProviderPreferencesManager.init(userDefaults:)();
  v260 = &type metadata for MobileDocumentProviderFilter;
  v261 = &off_10080DCC8;
  *&v259 = swift_allocObject();
  sub_1003EAFA4(v247, v259 + 16);
  v187 = type metadata accessor for MobileDocumentProviderDataSource();
  v64 = swift_allocObject();
  v65 = sub_10001F370(&v259, &type metadata for MobileDocumentProviderFilter);
  __chkstk_darwin(v65);
  v67 = &v168 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v68 + 16))(v67);
  *(&v257 + 1) = &type metadata for MobileDocumentProviderFilter;
  v258 = &off_10080DCC8;
  v69 = swift_allocObject();
  *&v256 = v69;
  v70 = *(v67 + 7);
  *(v69 + 112) = *(v67 + 6);
  *(v69 + 128) = v70;
  *(v69 + 144) = *(v67 + 16);
  v71 = *(v67 + 3);
  *(v69 + 48) = *(v67 + 2);
  *(v69 + 64) = v71;
  v72 = *(v67 + 5);
  *(v69 + 80) = *(v67 + 4);
  *(v69 + 96) = v72;
  v73 = *(v67 + 1);
  *(v69 + 16) = *v67;
  *(v69 + 32) = v73;
  swift_defaultActor_initialize();
  *(v64 + 280) = 0;
  sub_10001F358(&v235, v64 + 112);
  sub_10001F358(&v221, v64 + 152);
  sub_10001F358(&v230, v64 + 192);
  sub_10001F358(&v256, v64 + 232);
  v182 = v64;
  *(v64 + 272) = v63;
  sub_10000BB78(&v259);
  v74 = sub_100134AD0();
  v75 = type metadata accessor for WebPresentmentBrandStore();
  v76 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v76 + 112) = [objc_allocWithZone(DIWebPresentmentBrandStore) init];
  v231 = v75;
  *&v230 = v76;
  v232 = &off_1008109F0;
  v234[3] = v59;
  v234[4] = &protocol witness table for DeviceInformationProvider;
  sub_100032DBC(v234);
  DeviceInformationProvider.init()();
  v77 = static UserDefaultsConfiguration.standard.getter();
  v233 = v74 & 1;
  v234[5] = v77;
  v78 = v185;
  v260 = v185;
  v261 = &off_100809E48;
  v258 = 0;
  *&v259 = v194;
  v256 = 0u;
  v257 = 0u;
  v254 = &type metadata for WebPresentmentBrandConfigurationManager;
  v255 = &off_1008109C8;
  *&v253 = swift_allocObject();
  sub_1003EB048(&v230, v253 + 16);
  v183 = type metadata accessor for WebPresentmentResponseBuilder();
  v227 = 0u;
  v228 = 0u;
  v229 = 0;

  v184 = static UserDefaultsConfiguration.standard.getter();
  sub_100020260(&v259, &v221);
  sub_10000BBC4(&v256, &v218, &qword_100843230, &qword_1006E0DC0);
  v79 = v196;
  if (v219)
  {
    sub_10001F358(&v218, &v235);
  }

  else
  {
    v80 = v59;
    sub_100020260(&v259, &v235);
    v175 = swift_allocObject();
    v81 = v193;
    DeviceInformationProvider.init()();
    v216 = v80;
    v217 = &protocol witness table for DeviceInformationProvider;
    sub_100032DBC(&v215);
    DeviceInformationProvider.init()();
    v214 = 0;
    v212 = 0u;
    v213 = 0u;
    swift_allocObject();
    v82 = sub_10010F338();

    v83 = v179;
    DateProvider.init()();
    v84 = v178;
    v170(v178, v83, v79);
    v85 = sub_1003A0748(&v212, v82, v84);

    v169(v83, v79);
    v86 = *(&v236 + 1);
    v87 = sub_10001F370(&v235, *(&v236 + 1));
    v186 = &v168;
    v88 = *(*(v86 - 8) + 64);
    __chkstk_darwin(v87);
    v90 = (&v168 - ((v89 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v91 + 16))(v90);
    v92 = *v90;
    *(&v213 + 1) = v78;
    v214 = &off_100809E48;
    *&v212 = v92;
    v93 = v191;
    v210 = v191;
    v211 = &off_100810218;
    v94 = sub_100032DBC(v209);
    sub_1003EADF0(v81, v94);
    v95 = v177;
    v207 = v177;
    v208 = &off_100809510;
    v206[0] = v85;
    v96 = swift_allocObject();
    v97 = sub_10001F370(&v212, v78);
    v180 = &v168;
    __chkstk_darwin(v97);
    v99 = (&v168 - ((v98 + 15) & 0xFFFFFFFFFFFFFFF0));
    v173(v99);
    v100 = v78;
    v101 = v210;
    v102 = sub_10001F370(v209, v210);
    v179 = &v168;
    v103 = *(*(v101 - 8) + 64);
    __chkstk_darwin(v102);
    v105 = &v168 - ((v104 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v106 + 16))(v105);
    v107 = v207;
    v108 = sub_10001F370(v206, v207);
    v178 = &v168;
    v109 = *(*(v107 - 8) + 64);
    __chkstk_darwin(v108);
    v111 = (&v168 - ((v110 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v112 + 16))(v111);
    v113 = *v99;
    v114 = *v111;
    v204 = v100;
    v205 = &off_100809E48;
    *&v203 = v113;
    v201 = v93;
    v202 = &off_100810218;
    v115 = sub_100032DBC(&v200);
    sub_1003EAE54(v105, v115);
    v198 = v95;
    v199 = &off_100809510;
    *&v197 = v114;
    swift_defaultActor_initialize();
    sub_1003EAEB8(v193);
    *(v96 + 272) = 0u;
    *(v96 + 288) = 0u;
    *(v96 + 304) = 0;
    sub_10001F358(&v203, v96 + 112);
    v116 = v190;
    *(v96 + 152) = v175;
    *(v96 + 160) = v116;
    v117 = v189;
    *(v96 + 168) = &off_100809DF0;
    *(v96 + 176) = v117;
    *(v96 + 184) = &off_100809F18;
    sub_10001F358(&v200, v96 + 192);
    sub_10001F358(&v215, v96 + 232);
    sub_10001F358(&v197, v96 + 312);
    sub_10000BB78(v206);
    sub_10000BB78(v209);
    sub_10000BB78(&v212);
    sub_10000BB78(&v235);
    *&v237 = &off_100810230;
    *(&v236 + 1) = v181;
    *&v235 = v96;
    if (v219)
    {
      sub_10000BE18(&v218, &qword_100843230, &qword_1006E0DC0);
    }
  }

  sub_10001F358(&v235, v223 + 8);
  *&v224 = v183;
  *(&v224 + 1) = &off_100811FB0;
  sub_100020260(&v253, v225);
  sub_10000BBC4(&v227, &v218, &qword_100843238, &qword_1006E0DC8);
  v118 = v195;
  if (v219)
  {
    sub_10000BE18(&v227, &qword_100843238, &qword_1006E0DC8);
    sub_10000BE18(&v256, &qword_100843230, &qword_1006E0DC0);
    sub_10000BB78(&v253);
    sub_10000BB78(&v259);
    sub_10001F358(&v218, &v235);
    v119 = v196;
  }

  else
  {
    sub_100020260(&v253, &v215);
    v120 = static UserDefaultsConfiguration.standard.getter();
    *(&v236 + 1) = &type metadata for WebPresentmentResponsePermissionsFilter;
    *&v237 = &off_100812070;
    *&v235 = swift_allocObject();
    sub_10046D410(&v215, v120, v235 + 16);
    sub_10000BE18(&v227, &qword_100843238, &qword_1006E0DC8);
    sub_10000BE18(&v256, &qword_100843230, &qword_1006E0DC0);
    sub_10000BB78(&v253);
    sub_10000BB78(&v259);
    v119 = v196;
    if (v219)
    {
      sub_10000BE18(&v218, &qword_100843238, &qword_1006E0DC8);
    }
  }

  sub_10001F358(&v235, v226 + 8);
  v246 = v184;
  v243 = v226[0];
  v244 = v226[1];
  v245 = v226[2];
  v239 = v223[2];
  v240 = v224;
  v241 = v225[0];
  v242 = v225[1];
  v235 = v221;
  v236 = v222;
  v237 = v223[0];
  v238 = v223[1];
  swift_unknownObjectRetain();
  sub_1003E85AC(&v221);
  v260 = type metadata accessor for PartialWebPresentmentRequestParser();
  v261 = &protocol witness table for PartialWebPresentmentRequestParser;
  sub_100032DBC(&v259);
  PartialWebPresentmentRequestParser.init()();
  sub_100007224(&qword_100843240, &qword_1006E0DD0);
  v121 = swift_allocObject();
  v122 = type metadata accessor for WebPresentmentSelectionBypasser();
  v121[1] = 0u;
  v121[2] = 0u;
  *(v121 + 44) = 0u;
  v123 = v122;
  v124 = swift_allocObject();
  *(&v257 + 1) = v119;
  v258 = &protocol witness table for DateProvider;
  sub_100032DBC(&v256);
  DateProvider.init()();
  if (qword_100832C78 != -1)
  {
    swift_once();
  }

  if (v118)
  {
    v125 = v188;
  }

  else
  {
    v125 = 0;
  }

  v192 = qword_100882378;
  v193 = v125;
  v126 = *(&v222 + 1);
  v127 = sub_10001F370(&v221, *(&v222 + 1));
  v196 = &v168;
  v128 = *(*(v126 - 8) + 64);
  __chkstk_darwin(v127);
  v130 = (&v168 - ((v129 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v131 + 16))(v130);
  v132 = *v130;
  v254 = &type metadata for WebPresentmentWalletPassPresenter;
  v255 = &off_100812298;
  *&v253 = swift_allocObject();
  sub_1003EB13C(&v235, v253 + 16);
  v229 = &off_10080DC28;
  *(&v228 + 1) = v187;
  *&v227 = v182;
  v133 = type metadata accessor for RemoteMobileDocumentProviderUIPresenter();
  v220 = &off_10080FAC0;
  v219 = v133;
  *&v218 = v132;
  v216 = &type metadata for MobileDocumentProviderPresentmentSceneDecider;
  v217 = &off_10080DD00;
  *&v215 = v121;
  *(&v213 + 1) = v123;
  v214 = &off_100812108;
  *&v212 = v124;
  type metadata accessor for RemoteWebPresentmentManager();
  v134 = swift_allocObject();
  v135 = sub_10001F370(&v253, &type metadata for WebPresentmentWalletPassPresenter);
  v191 = &v168;
  __chkstk_darwin(v135);
  v137 = &v168 - ((v136 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v138 + 16))(v137);
  v139 = sub_10001F370(&v218, v133);
  v190 = &v168;
  v140 = *(*(v133 - 8) + 64);
  __chkstk_darwin(v139);
  v142 = (&v168 - ((v141 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v143 + 16))(v142);
  v144 = v216;
  v145 = sub_10001F370(&v215, v216);
  v189 = &v168;
  v146 = *(v144[-1].Description + 8);
  __chkstk_darwin(v145);
  v148 = (&v168 - ((v147 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v149 + 16))(v148);
  v150 = *(&v213 + 1);
  v151 = sub_10001F370(&v212, *(&v213 + 1));
  v152 = *(*(v150 - 8) + 64);
  __chkstk_darwin(v151);
  v154 = (&v168 - ((v153 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v155 + 16))(v154);
  v156 = *v142;
  v157 = *v148;
  v158 = *v154;
  v134[5] = &type metadata for WebPresentmentWalletPassPresenter;
  v134[6] = &off_100812298;
  v159 = swift_allocObject();
  v134[2] = v159;
  v160 = *(v137 + 9);
  *(v159 + 144) = *(v137 + 8);
  *(v159 + 160) = v160;
  *(v159 + 176) = *(v137 + 10);
  *(v159 + 192) = *(v137 + 22);
  v161 = *(v137 + 5);
  *(v159 + 80) = *(v137 + 4);
  *(v159 + 96) = v161;
  v162 = *(v137 + 7);
  *(v159 + 112) = *(v137 + 6);
  *(v159 + 128) = v162;
  v163 = *(v137 + 1);
  *(v159 + 16) = *v137;
  *(v159 + 32) = v163;
  v164 = *(v137 + 3);
  *(v159 + 48) = *(v137 + 2);
  *(v159 + 64) = v164;
  v134[15] = v133;
  v134[16] = &off_10080FAC0;
  v134[12] = v156;
  v134[27] = &type metadata for MobileDocumentProviderPresentmentSceneDecider;
  v134[28] = &off_10080DD00;
  v134[24] = v157;
  v134[32] = v123;
  v134[33] = &off_100812108;
  v165 = v192;

  v134[29] = v158;
  sub_1003EB198(&v235);
  v166 = v193;
  v134[17] = v195;
  v134[18] = v166;
  sub_10001F358(&v227, (v134 + 7));
  sub_10001F358(&v259, (v134 + 19));
  sub_10001F358(&v256, (v134 + 34));
  v134[39] = v165;
  sub_10000BB78(&v212);
  sub_10000BB78(&v215);
  sub_10000BB78(&v218);
  sub_10000BB78(&v253);
  sub_1003EB1EC(&v230);
  sub_1003EB240(v247);
  sub_10000BB78(&v221);
  sub_100108074(v262);
  return v134;
}

uint64_t sub_1003EADF0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WalletPassPresentmentInternalSettingsProvider();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003EAE54(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WalletPassPresentmentInternalSettingsProvider();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003EAEB8(uint64_t a1)
{
  v2 = type metadata accessor for WalletPassPresentmentInternalSettingsProvider();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1003EAF14(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1003EAF5C()
{
  sub_10000BB78(v0 + 2);
  sub_10000BB78(v0 + 9);
  sub_10000BB78(v0 + 14);

  return _swift_deallocObject(v0, 152, 7);
}

uint64_t sub_1003EB000()
{
  sub_10000BB78(v0 + 2);
  sub_10000BB78(v0 + 8);
  v1 = v0[13];

  return _swift_deallocObject(v0, 112, 7);
}

uint64_t sub_1003EB0A4()
{
  sub_10000BB78((v0 + 16));
  v1 = *(v0 + 56);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1003EB0E4()
{
  sub_10000BB78(v0 + 2);
  sub_10000BB78(v0 + 7);
  sub_10000BB78(v0 + 14);
  sub_10000BB78(v0 + 19);
  v1 = v0[24];

  return _swift_deallocObject(v0, 200, 7);
}

uint64_t sub_1003EB294(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100041F04;

  return sub_1003E8D7C(a1, v5);
}

uint64_t sub_1003EB34C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100041F04;

  return sub_1003E938C(a1, v5);
}

uint64_t sub_1003EB404(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100041F04;

  return sub_1003E9168(a1, v5);
}

uint64_t sub_1003EB4BC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100027B9C;

  return sub_1003E9168(a1, v5);
}

uint64_t sub_1003EB5C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x726556726F746361 && a2 == 0xEC0000006E6F6973)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1003EB64C(uint64_t a1)
{
  v2 = sub_1003EB97C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1003EB688(uint64_t a1)
{
  v2 = sub_1003EB97C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1003EB6C4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_100007224(&qword_100843258, &qword_1006E0ED8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  sub_10000BA08(a1, a1[3]);
  sub_1003EB97C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000BB78(a1);
  }

  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  v13 = v12;
  (*(v6 + 8))(v9, v5);
  result = sub_10000BB78(a1);
  *a2 = v11;
  a2[1] = v13;
  return result;
}

uint64_t sub_1003EB840(void *a1)
{
  v3 = sub_100007224(&qword_100843268, &qword_1006E0EE0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  sub_10000BA08(a1, a1[3]);
  sub_1003EB97C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1003EB97C()
{
  result = qword_100843260;
  if (!qword_100843260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100843260);
  }

  return result;
}

unint64_t sub_1003EB9E4()
{
  result = qword_100843270;
  if (!qword_100843270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100843270);
  }

  return result;
}

unint64_t sub_1003EBA3C()
{
  result = qword_100843278;
  if (!qword_100843278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100843278);
  }

  return result;
}

unint64_t sub_1003EBA94()
{
  result = qword_100843280;
  if (!qword_100843280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100843280);
  }

  return result;
}

uint64_t sub_1003EBAE8(uint64_t a1, uint64_t a2)
{
  v3[10] = a2;
  v3[11] = v2;
  v3[9] = a1;
  v5 = type metadata accessor for DIPError.Code();
  v3[12] = v5;
  v6 = *(v5 - 8);
  v3[13] = v6;
  v7 = *(v6 + 64) + 15;
  v3[14] = swift_task_alloc();
  v8 = *(*(type metadata accessor for RemoteWebPresentmentResponse(0) - 8) + 64) + 15;
  v3[15] = swift_task_alloc();
  v9 = swift_task_alloc();
  v3[16] = v9;
  *v9 = v3;
  v9[1] = sub_1003EBC0C;

  return sub_1003EC76C(a2);
}

uint64_t sub_1003EBC0C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 128);
  v5 = *v2;
  *(*v2 + 136) = a1;

  if (v1)
  {
    v7 = *(v3 + 112);
    v6 = *(v3 + 120);

    v8 = *(v5 + 8);

    return v8();
  }

  else
  {

    return _swift_task_switch(sub_1003EBD64, 0, 0);
  }
}

uint64_t sub_1003EBD64()
{
  v1 = *(v0 + 88);
  v2 = v1[5];
  v3 = v1[6];
  sub_10000BA08(v1 + 2, v2);
  v4 = *(v3 + 8);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 144) = v6;
  *v6 = v0;
  v6[1] = sub_1003EBE8C;

  return v8(v2, v3);
}

uint64_t sub_1003EBE8C()
{
  v2 = *(*v1 + 144);
  v5 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v3 = sub_1003EC3A4;
  }

  else
  {
    v3 = sub_1003EBFA0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1003EBFA0()
{
  v1 = v0[17];
  v2 = *(*(v1 + 24) + OBJC_IVAR____TtC8coreidvd27RemoteDocumentProviderActor_actorSystem);
  sub_100020260(v0[11] + 16, (v0 + 2));
  v3 = type metadata accessor for RemoteWebPresentmentRequestReleaser();
  v0[20] = v3;
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();

  v7 = sub_1004091E8(v6, (v0 + 2));
  v0[21] = v7;
  v0[7] = v7;

  String.init<A>(describing:)();
  v8 = type metadata accessor for OSTransaction();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  v0[22] = OSTransaction.init(_:)();
  v0[23] = *(v1 + 24);

  v11 = swift_task_alloc();
  v0[24] = v11;
  *v11 = v0;
  v11[1] = sub_1003EC110;
  v12 = v0[15];
  v13 = v0[10];

  return sub_1003DFD04(v12, v13, v7);
}

uint64_t sub_1003EC110()
{
  v2 = *v1;
  v3 = *(*v1 + 192);
  v8 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    v4 = sub_1003EC418;
  }

  else
  {
    v5 = *(v2 + 184);
    v6 = *(v2 + 168);

    v4 = sub_1003EC238;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1003EC238()
{
  v1 = v0[22];
  v2 = v0[20];
  v3 = v0[17];
  v4 = v0[14];
  v5 = v0[15];
  v6 = v0[9];
  v7 = *(v0[21] + OBJC_IVAR____TtC8coreidvd35RemoteWebPresentmentRequestReleaser_actorSystem);
  sub_1003F1A8C(&qword_100843328, type metadata accessor for RemoteWebPresentmentRequestReleaser);

  NWActorSystem.invalidateActor<A>(_:)();

  v8 = type metadata accessor for WebPresentmentResponse();
  (*(*(v8 - 8) + 32))(v6, v5, v8);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1003EC3A4()
{
  v1 = v0[17];

  v2 = v0[19];
  v4 = v0[14];
  v3 = v0[15];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1003EC418()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 184);
  v3 = *(v0 + 168);

  *(v0 + 64) = v1;
  swift_errorRetain();
  sub_100007224(&qword_100833B90, &qword_1006D95C0);
  if (swift_dynamicCast() && *(v0 + 208) == 1)
  {
    v4 = *(v0 + 200);
    v6 = *(v0 + 168);
    v5 = *(v0 + 176);
    v7 = *(v0 + 160);
    v23 = *(v0 + 136);
    v9 = *(v0 + 104);
    v8 = *(v0 + 112);
    v10 = *(v0 + 96);

    (*(v9 + 104))(v8, enum case for DIPError.Code.webPresentmentCancelled(_:), v10);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1003F1A8C(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v11 = *(v6 + OBJC_IVAR____TtC8coreidvd35RemoteWebPresentmentRequestReleaser_actorSystem);
    sub_1003F1A8C(&qword_100843328, type metadata accessor for RemoteWebPresentmentRequestReleaser);

    NWActorSystem.invalidateActor<A>(_:)();

    v12 = *(v0 + 64);
  }

  else
  {
    v13 = *(v0 + 176);
    v14 = *(v0 + 160);
    v15 = *(v0 + 136);
    v16 = *(*(v0 + 168) + OBJC_IVAR____TtC8coreidvd35RemoteWebPresentmentRequestReleaser_actorSystem);
    sub_1003F1A8C(&qword_100843328, type metadata accessor for RemoteWebPresentmentRequestReleaser);

    NWActorSystem.invalidateActor<A>(_:)();

    v17 = *(v0 + 64);

    v18 = *(v0 + 200);
  }

  v20 = *(v0 + 112);
  v19 = *(v0 + 120);

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_1003EC76C(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = sub_100007224(&qword_100843330, &qword_1006E1090);
  v2[6] = v3;
  v4 = *(v3 - 8);
  v2[7] = v4;
  v5 = *(v4 + 64) + 15;
  v2[8] = swift_task_alloc();
  v6 = type metadata accessor for RemoteWebPresentmentRequest(0);
  v2[9] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v2[10] = swift_task_alloc();
  v8 = type metadata accessor for DeviceInformationProvider();
  v2[11] = v8;
  v9 = *(v8 - 8);
  v2[12] = v9;
  v10 = *(v9 + 64) + 15;
  v2[13] = swift_task_alloc();

  return _swift_task_switch(sub_1003EC8C4, 0, 0);
}

uint64_t sub_1003EC8C4()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[10];
  v4 = v0[11];
  v5 = v0[8];
  v6 = v0[9];
  v7 = v0[4];
  v21 = v0[5];
  DeviceInformationProvider.init()();
  v8 = DeviceInformationProvider.userAssignedDeviceName.getter();
  v10 = v9;
  (*(v2 + 8))(v1, v4);
  v11 = type metadata accessor for PartialWebPresentmentRequest();
  (*(*(v11 - 8) + 16))(v3, v7, v11);
  v12 = (v3 + *(v6 + 20));
  *v12 = v8;
  v12[1] = v10;
  v13 = sub_1003ECD50(v5);
  v0[14] = v13;
  v0[2] = &_swiftEmptySetSingleton;
  v14 = sub_100007224(&qword_100843338, &qword_1006E1098);
  v15 = swift_task_alloc();
  v0[15] = v15;
  v15[2] = v5;
  v15[3] = v0 + 2;
  v15[4] = v3;
  v15[5] = v13;
  v16 = sub_100007224(&qword_100843340, &qword_1006E10B0);
  v17 = *(&async function pointer to withThrowingTaskGroup<A, B>(of:returning:isolation:body:) + 1);
  v18 = swift_task_alloc();
  v0[16] = v18;
  *v18 = v0;
  v18[1] = sub_1003ECAA4;

  return withThrowingTaskGroup<A, B>(of:returning:isolation:body:)(v0 + 3, v14, v16, 0, 0, &unk_1006E10A8, v15, v14);
}

uint64_t sub_1003ECAA4()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v7 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v4 = sub_1003ECC84;
  }

  else
  {
    v5 = *(v2 + 120);

    v4 = sub_1003ECBC0;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1003ECBC0()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[10];
  v5 = v0[7];
  v4 = v0[8];
  v6 = v0[6];

  v7 = v0[2];
  v8 = v0[3];

  (*(v5 + 8))(v4, v6);
  sub_1003F10CC(v3);

  v9 = v0[1];

  return v9(v8);
}

uint64_t sub_1003ECC84()
{
  v1 = v0[14];
  v2 = v0[15];
  v3 = v0[13];
  v4 = v0[10];
  v6 = v0[7];
  v5 = v0[8];
  v7 = v0[6];

  v8 = v0[2];

  (*(v6 + 8))(v5, v7);
  sub_1003F10CC(v4);

  v9 = v0[1];
  v10 = v0[17];

  return v9();
}

uint64_t sub_1003ECD50(void (*a1)(char *, char *, uint64_t))
{
  v37 = a1;
  v1 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v43 = *(v1 - 8);
  v44 = v1;
  v2 = *(v43 + 64);
  __chkstk_darwin(v1);
  v42 = v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for OS_dispatch_queue.Attributes();
  v4 = *(*(v41 - 8) + 64);
  __chkstk_darwin(v41);
  v40 = v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v39 = v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100007224(&qword_100843358, &qword_1006E10E0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v35 - v12;
  v14 = sub_100007224(&qword_100843360, &unk_1006E10E8);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v14);
  v18 = v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35[1] = v16;
  __chkstk_darwin(v17);
  v20 = v35 - v19;
  v21 = sub_1003F15B4();
  type metadata accessor for NWEndpoint();
  (*(v10 + 104))(v13, enum case for AsyncThrowingStream.Continuation.BufferingPolicy.unbounded<A, B>(_:), v9);
  static AsyncThrowingStream.makeStream<>(of:throwing:bufferingPolicy:)();
  (*(v10 + 8))(v13, v9);
  v36 = v21;

  v22 = v14;
  AsyncThrowingStream.Continuation.onTermination.setter();
  v23 = v15;
  v37 = *(v15 + 16);
  v24 = v20;
  v37(v18, v20, v14);
  v25 = *(v23 + 80);
  v38 = v23;
  v26 = (v25 + 16) & ~v25;
  v27 = swift_allocObject();
  v35[0] = *(v23 + 32);
  (v35[0])(v27 + v26, v18, v22);
  sub_10001F640(sub_1003F18F0);
  v28 = v36;
  NWBrowser.browseResultsChangedHandler.setter();

  v29 = v18;
  v30 = v18;
  v31 = v24;
  v37(v30, v24, v22);
  v32 = swift_allocObject() + v26;
  (v35[0])(v32, v29, v22);
  sub_10001F640(sub_1003F1A10);
  NWBrowser.stateUpdateHandler.setter();

  sub_10017ABC8();
  static DispatchQoS.userInitiated.getter();
  v45 = _swiftEmptyArrayStorage;
  sub_1003F1A8C(&qword_1008465A0, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100007224(&unk_1008458B0, &qword_1006BF8A0);
  sub_10031ABF4();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v43 + 104))(v42, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v44);
  v33 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  NWBrowser.start(queue:)();

  (*(v38 + 8))(v31, v22);
  return v28;
}

uint64_t sub_1003ED2D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[18] = a5;
  v6[19] = a6;
  v6[16] = a3;
  v6[17] = a4;
  v6[14] = a1;
  v6[15] = a2;
  v7 = type metadata accessor for DIPError.Code();
  v6[20] = v7;
  v8 = *(v7 - 8);
  v6[21] = v8;
  v9 = *(v8 + 64) + 15;
  v6[22] = swift_task_alloc();
  v10 = type metadata accessor for Logger();
  v6[23] = v10;
  v11 = *(v10 - 8);
  v6[24] = v11;
  v12 = *(v11 + 64) + 15;
  v6[25] = swift_task_alloc();
  v6[26] = swift_task_alloc();
  v13 = *(type metadata accessor for RemoteWebPresentmentRequest(0) - 8);
  v6[27] = v13;
  v6[28] = *(v13 + 64);
  v6[29] = swift_task_alloc();
  v14 = *(*(sub_100007224(&unk_100845860, &unk_1006BF9D0) - 8) + 64) + 15;
  v6[30] = swift_task_alloc();
  v6[31] = swift_task_alloc();
  v15 = type metadata accessor for NWEndpoint();
  v6[32] = v15;
  v16 = *(v15 - 8);
  v6[33] = v16;
  v6[34] = *(v16 + 64);
  v6[35] = swift_task_alloc();
  v6[36] = swift_task_alloc();
  v17 = *(*(sub_100007224(&qword_100842FD8, &qword_1006E06F0) - 8) + 64) + 15;
  v6[37] = swift_task_alloc();
  v18 = sub_100007224(&qword_100843348, &qword_1006E10B8);
  v6[38] = v18;
  v19 = *(v18 - 8);
  v6[39] = v19;
  v20 = *(v19 + 64) + 15;
  v6[40] = swift_task_alloc();

  return _swift_task_switch(sub_1003ED5BC, 0, 0);
}

uint64_t sub_1003ED5BC()
{
  v1 = v0[40];
  v2 = v0[16];
  sub_100007224(&qword_100843330, &qword_1006E1090);
  AsyncThrowingStream.makeAsyncIterator()();
  v3 = _sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKFTu[1];
  v4 = swift_task_alloc();
  v0[41] = v4;
  *v4 = v0;
  v4[1] = sub_1003ED688;
  v5 = v0[40];
  v6 = v0[37];
  v7 = v0[38];

  return __sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v6, 0, 0, v7, v0 + 13);
}

uint64_t sub_1003ED688()
{
  v2 = *(*v1 + 328);
  v5 = *v1;

  if (v0)
  {
    v3 = sub_1003EE4E8;
  }

  else
  {
    v3 = sub_1003ED798;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1003ED798()
{
  v87 = v0;
  v1 = v0[37];
  v2 = v0[32];
  v3 = v0[33];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = v0[15];
    (*(v0[39] + 8))(v0[40], v0[38]);
    v5 = *v4;
    sub_100007224(&qword_100843338, &qword_1006E1098);
    sub_100007224(&qword_100833B90, &qword_1006D95C0);
    ThrowingTaskGroup.cancelAll()();
    v6 = async function pointer to ThrowingTaskGroup.nextResult()[1];
    v7 = swift_task_alloc();
    v0[42] = v7;
    v8 = sub_100007224(&qword_100843350, &qword_1006E10C0);
    *v7 = v0;
    v7[1] = sub_1003EDF5C;
    v9 = v0[15];

    return ThrowingTaskGroup.nextResult()(v0 + 11, v8);
  }

  v10 = *(v3 + 32);
  v10(v0[36], v1, v2);
  v11 = NWEndpoint.deviceID.getter();
  if (!v12)
  {
    goto LABEL_11;
  }

  v13 = v11;
  v14 = v12;
  v15 = v0[36];
  v16 = NWEndpoint.deviceName.getter();
  if (!v17)
  {

LABEL_11:
    v32 = v0[25];
    defaultLogger()();
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.debug.getter();
    v35 = os_log_type_enabled(v33, v34);
    v36 = v0[36];
    v37 = v0[32];
    v38 = v0[33];
    v40 = v0[24];
    v39 = v0[25];
    v41 = v0[23];
    if (v35)
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&_mh_execute_header, v33, v34, "Ignoring endpoint due to lack of identifier and name", v42, 2u);
    }

    (*(v40 + 8))(v39, v41);
    (*(v38 + 8))(v36, v37);
    goto LABEL_24;
  }

  v18 = v16;
  v19 = v17;
  v20 = v0[17];

  LOBYTE(v20) = sub_100151120(v0 + 9, v13, v14);
  v21 = v0[10];

  if (v20)
  {
    v22 = v0[35];
    v73 = v0[36];
    v78 = v0[34];
    v85 = v18;
    v23 = v0[33];
    v24 = v0[31];
    v25 = v0[29];
    v72 = v25;
    v75 = v0[28];
    v74 = v0[27];
    v81 = v0[19];
    v83 = v0[30];
    v70 = v0[18];
    v71 = v0[32];

    v26 = type metadata accessor for TaskPriority();
    v76 = *(v26 - 8);
    (*(v76 + 56))(v24, 1, 1, v26);
    (*(v23 + 16))(v22, v73, v71);
    sub_1003F1170(v70, v25);
    v27 = (*(v23 + 80) + 48) & ~*(v23 + 80);
    v28 = (v78 + *(v74 + 80) + v27) & ~*(v74 + 80);
    v29 = swift_allocObject();
    v29[2] = 0;
    v79 = v29 + 2;
    v29[3] = 0;
    v29[4] = v85;
    v29[5] = v19;
    v10(v29 + v27, v22, v71);
    sub_1003E4890(v72, v29 + v28);
    *(v29 + ((v75 + v28 + 7) & 0xFFFFFFFFFFFFFFF8)) = v81;
    sub_1003F1504(v24, v83);
    v30 = (*(v76 + 48))(v83, 1, v26);

    v31 = v0[30];
    if (v30 == 1)
    {
      sub_10000BE18(v0[30], &unk_100845860, &unk_1006BF9D0);
    }

    else
    {
      TaskPriority.rawValue.getter();
      (*(v76 + 8))(v31, v26);
    }

    if (*v79)
    {
      v53 = v29[3];
      v54 = *v79;
      swift_getObjectType();
      swift_unknownObjectRetain();
      v55 = dispatch thunk of Actor.unownedExecutor.getter();
      v57 = v56;
      swift_unknownObjectRelease();
    }

    else
    {
      v55 = 0;
      v57 = 0;
    }

    v58 = *v0[15];

    sub_100007224(&qword_100843338, &qword_1006E1098);
    v59 = (v57 | v55);
    if (v57 | v55)
    {
      v59 = v0 + 2;
      v0[2] = 0;
      v0[3] = 0;
      v0[4] = v55;
      v0[5] = v57;
    }

    v60 = v0[36];
    v61 = v0[32];
    v62 = v0[33];
    v63 = v0[31];
    v0[6] = 1;
    v0[7] = v59;
    v0[8] = v58;
    swift_task_create();

    sub_10000BE18(v63, &unk_100845860, &unk_1006BF9D0);
    (*(v62 + 8))(v60, v61);
  }

  else
  {
    v43 = v0[26];
    defaultLogger()();

    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.debug.getter();

    v46 = os_log_type_enabled(v44, v45);
    v47 = v0[36];
    v48 = v0[33];
    v82 = v0[26];
    v84 = v0[32];
    v49 = v0[24];
    v80 = v0[23];
    if (v46)
    {
      v77 = v0[36];
      v50 = swift_slowAlloc();
      v86 = swift_slowAlloc();
      *v50 = 136315394;
      v51 = sub_100141FE4(v13, v14, &v86);

      *(v50 + 4) = v51;
      *(v50 + 12) = 2080;
      v52 = sub_100141FE4(v18, v19, &v86);

      *(v50 + 14) = v52;
      _os_log_impl(&_mh_execute_header, v44, v45, "Already encountered endpoint with identifier: %s (%s), ignoring", v50, 0x16u);
      swift_arrayDestroy();

      (*(v49 + 8))(v82, v80);
      (*(v48 + 8))(v77, v84);
    }

    else
    {

      (*(v49 + 8))(v82, v80);
      (*(v48 + 8))(v47, v84);
    }
  }

LABEL_24:
  v64 = _sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKFTu[1];
  v65 = swift_task_alloc();
  v0[41] = v65;
  *v65 = v0;
  v65[1] = sub_1003ED688;
  v66 = v0[40];
  v67 = v0[37];
  v68 = v0[38];

  return __sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v67, 0, 0, v68, v0 + 13);
}

uint64_t sub_1003EDF5C()
{
  v2 = *v1;
  v3 = *(*v1 + 336);
  v6 = *v1;
  *(*v1 + 344) = v0;

  if (v0)
  {
    v4 = sub_1003EE4CC;
  }

  else
  {
    *(v2 + 352) = *(v2 + 88);
    *(v2 + 97) = *(v2 + 96);
    v4 = sub_1003EE080;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1003EE080()
{
  v1 = *(v0 + 97);
  if (v1 == 255)
  {
    (*(*(v0 + 168) + 104))(*(v0 + 176), enum case for DIPError.Code.unexpectedDaemonState(_:), *(v0 + 160));
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1003F1A8C(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    goto LABEL_5;
  }

  v2 = *(v0 + 352);
  if (v1)
  {
    (*(*(v0 + 168) + 104))(*(v0 + 176), enum case for DIPError.Code.webPresentmentCancelled(_:), *(v0 + 160));
    sub_1003F1128(v2, v1);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1003F1A8C(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    sub_1003F114C(v2, v1);
LABEL_5:
    v3 = *(v0 + 320);
    v5 = *(v0 + 288);
    v4 = *(v0 + 296);
    v6 = *(v0 + 280);
    v8 = *(v0 + 240);
    v7 = *(v0 + 248);
    v9 = *(v0 + 232);
    v11 = *(v0 + 200);
    v10 = *(v0 + 208);
    v12 = *(v0 + 176);

    v13 = *(v0 + 8);
LABEL_8:

    return v13();
  }

  if (v2)
  {
    v14 = *(v0 + 320);
    v16 = *(v0 + 288);
    v15 = *(v0 + 296);
    v17 = *(v0 + 280);
    v19 = *(v0 + 240);
    v18 = *(v0 + 248);
    v20 = *(v0 + 232);
    v22 = *(v0 + 200);
    v21 = *(v0 + 208);
    v28 = *(v0 + 176);
    **(v0 + 112) = v2;

    v13 = *(v0 + 8);
    goto LABEL_8;
  }

  sub_1003F114C(0, *(v0 + 97));
  v24 = async function pointer to ThrowingTaskGroup.nextResult()[1];
  v25 = swift_task_alloc();
  *(v0 + 336) = v25;
  v26 = sub_100007224(&qword_100843350, &qword_1006E10C0);
  *v25 = v0;
  v25[1] = sub_1003EDF5C;
  v27 = *(v0 + 120);

  return ThrowingTaskGroup.nextResult()(v0 + 88, v26);
}

uint64_t sub_1003EE4E8()
{
  (*(v0[39] + 8))(v0[40], v0[38]);
  v13 = v0[13];
  v1 = v0[40];
  v3 = v0[36];
  v2 = v0[37];
  v4 = v0[35];
  v6 = v0[30];
  v5 = v0[31];
  v7 = v0[29];
  v9 = v0[25];
  v8 = v0[26];
  v10 = v0[22];

  v11 = v0[1];

  return v11();
}

uint64_t sub_1003EE5EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a7;
  v8[9] = a8;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a1;
  v8[5] = a4;
  v9 = type metadata accessor for DIPError.Code();
  v8[10] = v9;
  v10 = *(v9 - 8);
  v8[11] = v10;
  v11 = *(v10 + 64) + 15;
  v8[12] = swift_task_alloc();
  v12 = type metadata accessor for Logger();
  v8[13] = v12;
  v13 = *(v12 - 8);
  v8[14] = v13;
  v14 = *(v13 + 64) + 15;
  v8[15] = swift_task_alloc();
  v8[16] = swift_task_alloc();
  v8[17] = swift_task_alloc();
  v8[18] = swift_task_alloc();
  v8[19] = swift_task_alloc();

  return _swift_task_switch(sub_1003EE740, 0, 0);
}

uint64_t sub_1003EE740()
{
  v41 = v0;
  v1 = v0[19];
  v2 = v0[6];
  defaultLogger()();

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[19];
  v7 = v0[13];
  v8 = v0[14];
  if (v5)
  {
    v10 = v0[5];
    v9 = v0[6];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v40[0] = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_100141FE4(v10, v9, v40);
    _os_log_impl(&_mh_execute_header, v3, v4, "Instantiating remote actor for: %s…", v11, 0xCu);
    sub_10000BB78(v12);
  }

  v13 = *(v8 + 8);
  v13(v6, v7);
  v0[20] = v13;
  v15 = v0[6];
  v14 = v0[7];
  v16 = v0[5];
  type metadata accessor for RemoteDocumentProviderActor(0);
  type metadata accessor for NWParameters();
  static NWParameters.applicationService.getter();
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  *(v17 + 24) = v15;
  type metadata accessor for NWActorSystem();

  static NWActorSystem.default.getter();
  sub_1003F1A8C(&qword_100843220, type metadata accessor for RemoteDocumentProviderActor);
  v18 = static DistributedActor<>.discover(_:connectionParameters:using:invalidationHandler:)();
  v39 = v13;
  v19 = v0[18];
  v20 = v0[6];

  sub_100007224(&qword_100843340, &qword_1006E10B0);
  v21 = swift_allocObject();
  v0[21] = v21;
  v0[3] = v18;

  String.init<A>(describing:)();
  v22 = type metadata accessor for OSTransaction();
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  swift_allocObject();
  *(v21 + 16) = OSTransaction.init(_:)();
  *(v21 + 24) = v18;
  defaultLogger()();

  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.debug.getter();

  v27 = os_log_type_enabled(v25, v26);
  v28 = v0[18];
  v30 = v0[13];
  v29 = v0[14];
  if (v27)
  {
    v38 = v0[18];
    v32 = v0[5];
    v31 = v0[6];
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v40[0] = v34;
    *v33 = 136315138;
    *(v33 + 4) = sub_100141FE4(v32, v31, v40);
    _os_log_impl(&_mh_execute_header, v25, v26, "Connecting to %s…", v33, 0xCu);
    sub_10000BB78(v34);

    v35 = v38;
  }

  else
  {

    v35 = v28;
  }

  v39(v35, v30);
  v0[22] = *(v21 + 24);

  v36 = swift_task_alloc();
  v0[23] = v36;
  *v36 = v0;
  v36[1] = sub_1003EEF70;

  return sub_1003DD6E0();
}

uint64_t sub_1003EEF70(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 184);
  v9 = *v3;
  v4[24] = a1;
  v4[25] = a2;
  v4[26] = v2;

  if (v2)
  {
    v6 = sub_1003EF5F0;
  }

  else
  {
    v7 = v4[22];

    v6 = sub_1003EF090;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1003EF090()
{
  v25 = v0;
  v1 = v0[25];
  v2 = v0[17];
  v3 = v0[6];
  defaultLogger()();

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v7 = v0[24];
    v6 = v0[25];
    v22 = v0[17];
    v23 = v0[20];
    v8 = v0[14];
    v21 = v0[13];
    v9 = v0[5];
    v10 = v0[6];
    v11 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v11 = 136315394;
    *(v11 + 4) = sub_100141FE4(v9, v10, &v24);
    *(v11 + 12) = 2080;
    v12 = sub_100141FE4(v7, v6, &v24);

    *(v11 + 14) = v12;
    _os_log_impl(&_mh_execute_header, v4, v5, "Connected to device: %s with actor version: %s", v11, 0x16u);
    swift_arrayDestroy();

    v23(v22, v21);
  }

  else
  {
    v13 = v0[25];
    v14 = v0[20];
    v15 = v0[17];
    v16 = v0[13];
    v17 = v0[14];

    v14(v15, v16);
  }

  v0[27] = *(v0[21] + 24);

  v18 = swift_task_alloc();
  v0[28] = v18;
  *v18 = v0;
  v18[1] = sub_1003EF2E4;
  v19 = v0[8];

  return sub_1003DDFA8(v19);
}

uint64_t sub_1003EF2E4()
{
  v2 = *v1;
  v3 = *(*v1 + 224);
  v7 = *v1;
  *(*v1 + 232) = v0;

  if (v0)
  {
    v4 = sub_1003EFA20;
  }

  else
  {
    v5 = *(v2 + 216);

    v4 = sub_1003EF400;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1003EF400()
{
  v26 = v0;
  v1 = *(v0 + 128);
  v2 = *(v0 + 48);
  defaultLogger()();

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 160);
  v7 = *(v0 + 128);
  v8 = *(v0 + 104);
  v9 = *(v0 + 112);
  if (v5)
  {
    v24 = *(v0 + 160);
    v11 = *(v0 + 40);
    v10 = *(v0 + 48);
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v25 = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_100141FE4(v11, v10, &v25);
    _os_log_impl(&_mh_execute_header, v3, v4, "Device '%s' accepted notification prompt", v12, 0xCu);
    sub_10000BB78(v13);

    v24(v7, v8);
  }

  else
  {

    v6(v7, v8);
  }

  v14 = *(v0 + 168);
  v15 = *(v0 + 72);
  NWBrowser.cancel()();
  v17 = *(v0 + 144);
  v16 = *(v0 + 152);
  v19 = *(v0 + 128);
  v18 = *(v0 + 136);
  v20 = *(v0 + 120);
  v21 = *(v0 + 96);
  **(v0 + 32) = v14;

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_1003EF5F0()
{
  v42 = v0;
  v2 = *(v0 + 168);
  v1 = *(v0 + 176);

  *(v0 + 16) = *(v0 + 208);
  swift_errorRetain();
  sub_100007224(&qword_100833B90, &qword_1006D95C0);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 240) == 1;
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {
    v20 = *(v0 + 144);
    v21 = *(v0 + 152);
    v22 = *(v0 + 136);
    v38 = *(v0 + 128);
    v40 = *(v0 + 120);
    v24 = *(v0 + 88);
    v23 = *(v0 + 96);
    v25 = *(v0 + 72);
    v26 = *(v0 + 80);

    NWBrowser.cancel()();
    (*(v24 + 104))(v23, enum case for DIPError.Code.webPresentmentCancelled(_:), v26);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1003F1A8C(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v27 = *(v0 + 16);

    v28 = *(v0 + 8);
  }

  else
  {
    v4 = *(v0 + 120);
    v5 = *(v0 + 48);
    v6 = *(v0 + 16);

    defaultLogger()();

    swift_errorRetain();
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.debug.getter();

    v9 = os_log_type_enabled(v7, v8);
    v10 = *(v0 + 160);
    v11 = *(v0 + 112);
    v12 = *(v0 + 120);
    v13 = *(v0 + 104);
    if (v9)
    {
      v39 = *(v0 + 160);
      v14 = *(v0 + 40);
      v15 = *(v0 + 48);
      v37 = *(v0 + 120);
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v36 = v13;
      v18 = swift_slowAlloc();
      v41 = v18;
      *v16 = 136315394;
      *(v16 + 4) = sub_100141FE4(v14, v15, &v41);
      *(v16 + 12) = 2112;
      swift_errorRetain();
      v19 = _swift_stdlib_bridgeErrorToNSError();
      *(v16 + 14) = v19;
      *v17 = v19;
      _os_log_impl(&_mh_execute_header, v7, v8, "Error whilst communicating with: %s. Error: %@", v16, 0x16u);
      sub_10000BE18(v17, &unk_100833B50, &unk_1006D8FB0);

      sub_10000BB78(v18);

      v39(v37, v36);
    }

    else
    {

      v10(v12, v13);
    }

    v30 = *(v0 + 144);
    v29 = *(v0 + 152);
    v32 = *(v0 + 128);
    v31 = *(v0 + 136);
    v33 = *(v0 + 120);
    v34 = *(v0 + 96);
    **(v0 + 32) = 0;

    v28 = *(v0 + 8);
  }

  return v28();
}

uint64_t sub_1003EFA20()
{
  v42 = v0;
  v1 = *(v0 + 216);
  v2 = *(v0 + 168);

  *(v0 + 16) = *(v0 + 232);
  swift_errorRetain();
  sub_100007224(&qword_100833B90, &qword_1006D95C0);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 240) == 1;
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {
    v20 = *(v0 + 144);
    v21 = *(v0 + 152);
    v22 = *(v0 + 136);
    v38 = *(v0 + 128);
    v40 = *(v0 + 120);
    v24 = *(v0 + 88);
    v23 = *(v0 + 96);
    v25 = *(v0 + 72);
    v26 = *(v0 + 80);

    NWBrowser.cancel()();
    (*(v24 + 104))(v23, enum case for DIPError.Code.webPresentmentCancelled(_:), v26);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1003F1A8C(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v27 = *(v0 + 16);

    v28 = *(v0 + 8);
  }

  else
  {
    v4 = *(v0 + 120);
    v5 = *(v0 + 48);
    v6 = *(v0 + 16);

    defaultLogger()();

    swift_errorRetain();
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.debug.getter();

    v9 = os_log_type_enabled(v7, v8);
    v10 = *(v0 + 160);
    v11 = *(v0 + 112);
    v12 = *(v0 + 120);
    v13 = *(v0 + 104);
    if (v9)
    {
      v39 = *(v0 + 160);
      v14 = *(v0 + 40);
      v15 = *(v0 + 48);
      v37 = *(v0 + 120);
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v36 = v13;
      v18 = swift_slowAlloc();
      v41 = v18;
      *v16 = 136315394;
      *(v16 + 4) = sub_100141FE4(v14, v15, &v41);
      *(v16 + 12) = 2112;
      swift_errorRetain();
      v19 = _swift_stdlib_bridgeErrorToNSError();
      *(v16 + 14) = v19;
      *v17 = v19;
      _os_log_impl(&_mh_execute_header, v7, v8, "Error whilst communicating with: %s. Error: %@", v16, 0x16u);
      sub_10000BE18(v17, &unk_100833B50, &unk_1006D8FB0);

      sub_10000BB78(v18);

      v39(v37, v36);
    }

    else
    {

      v10(v12, v13);
    }

    v30 = *(v0 + 144);
    v29 = *(v0 + 152);
    v32 = *(v0 + 128);
    v31 = *(v0 + 136);
    v33 = *(v0 + 120);
    v34 = *(v0 + 96);
    **(v0 + 32) = 0;

    v28 = *(v0 + 8);
  }

  return v28();
}

uint64_t sub_1003EFE54(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();

  swift_errorRetain();
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v20 = v6;
    v13 = a2;
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v21 = v16;
    *v14 = 136315394;
    *(v14 + 4) = sub_100141FE4(v13, a3, &v21);
    *(v14 + 12) = 2112;
    if (a1)
    {
      swift_errorRetain();
      v17 = _swift_stdlib_bridgeErrorToNSError();
      v18 = v17;
    }

    else
    {
      v17 = 0;
      v18 = 0;
    }

    v6 = v20;
    *(v14 + 14) = v17;
    *v15 = v18;
    _os_log_impl(&_mh_execute_header, v11, v12, "Invalidation handler of %s called: %@", v14, 0x16u);
    sub_10000BE18(v15, &unk_100833B50, &unk_1006D8FB0);

    sub_10000BB78(v16);
  }

  return (*(v7 + 8))(v10, v6);
}

void sub_1003F0088(uint64_t a1)
{
  v2 = sub_100007224(&qword_100843378, &qword_1006E1100);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v8 - v5;
  (*(v3 + 16))(&v8 - v5, a1, v2);
  LODWORD(a1) = (*(v3 + 88))(v6, v2);
  v7 = enum case for AsyncThrowingStream.Continuation.Termination.cancelled<A, B>(_:);
  (*(v3 + 8))(v6, v2);
  if (a1 == v7)
  {
    NWBrowser.cancel()();
  }
}

uint64_t sub_1003F01B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v51 = a3;
  v4 = type metadata accessor for NWEndpoint();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v50 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_100007224(&qword_100843370, &qword_1006E10F8);
  v39 = *(v49 - 8);
  v7 = *(v39 + 64);
  __chkstk_darwin(v49);
  v48 = &v38 - v8;
  v55 = type metadata accessor for NWBrowser.Result();
  v9 = *(v55 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v55);
  v46 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for NWBrowser.Result.Change();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v38 - v18;
  v20 = a2 + 56;
  v21 = 1 << *(a2 + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & *(a2 + 56);
  v24 = (v21 + 63) >> 6;
  v25 = v13 + 16;
  v53 = v13 + 88;
  v54 = v13 + 32;
  v52 = enum case for NWBrowser.Result.Change.added(_:);
  v41 = (v13 + 96);
  v42 = (v13 + 8);
  v39 += 8;
  v40 = (v9 + 32);
  v38 = (v9 + 8);
  v26 = a2;

  v28 = 0;
  v47 = a2;
  v44 = v17;
  v45 = v13;
  v43 = v19;
  while (v23)
  {
    v29 = v28;
LABEL_11:
    v30 = __clz(__rbit64(v23));
    v23 &= v23 - 1;
    (*(v13 + 16))(v19, *(v26 + 48) + *(v13 + 72) * (v30 | (v29 << 6)), v12);
    (*(v13 + 32))(v17, v19, v12);
    v31 = (*(v13 + 88))(v17, v12);
    if (v31 == v52)
    {
      (*v41)(v17, v12);
      v32 = v46;
      (*v40)(v46, v17, v55);
      NWBrowser.Result.endpoint.getter();
      sub_100007224(&qword_100843360, &unk_1006E10E8);
      v33 = v25;
      v34 = v12;
      v35 = v48;
      v13 = v45;
      AsyncThrowingStream.Continuation.yield(_:)();
      v26 = v47;
      v36 = v35;
      v12 = v34;
      v25 = v33;
      (*v39)(v36, v49);
      v37 = v32;
      v19 = v43;
      v17 = v44;
      result = (*v38)(v37, v55);
    }

    else
    {
      result = (*v42)(v17, v12);
    }

    v28 = v29;
  }

  while (1)
  {
    v29 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      break;
    }

    if (v29 >= v24)
    {
    }

    v23 = *(v20 + 8 * v29);
    ++v28;
    if (v23)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1003F060C(uint64_t a1, uint64_t a2)
{
  v75 = a2;
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v76 = v3;
  v77 = v4;
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v74 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v72 = &v69 - v9;
  v10 = __chkstk_darwin(v8);
  v71 = (&v69 - v11);
  v12 = __chkstk_darwin(v10);
  v70 = &v69 - v13;
  __chkstk_darwin(v12);
  v15 = &v69 - v14;
  v16 = type metadata accessor for NWError();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = __chkstk_darwin(v16);
  v21 = &v69 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v19);
  v73 = &v69 - v23;
  v24 = __chkstk_darwin(v22);
  v26 = &v69 - v25;
  __chkstk_darwin(v24);
  v28 = &v69 - v27;
  v29 = type metadata accessor for NWBrowser.State();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  __chkstk_darwin(v29);
  v33 = &v69 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v30 + 16))(v33, a1, v29);
  v34 = (*(v30 + 88))(v33, v29);
  if (v34 == enum case for NWBrowser.State.failed(_:))
  {
    (*(v30 + 96))(v33, v29);
    (*(v17 + 32))(v28, v33, v16);
    defaultLogger()();
    v35 = *(v17 + 16);
    v35(v26, v28, v16);
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.debug.getter();
    v38 = v15;
    if (os_log_type_enabled(v36, v37))
    {
      v39 = swift_slowAlloc();
      v72 = v39;
      v73 = swift_slowAlloc();
      *v39 = 138412290;
      sub_1003F1A8C(&qword_100843368, &type metadata accessor for NWError);
      swift_allocError();
      v74 = v38;
      v35(v40, v26, v16);
      v41 = _swift_stdlib_bridgeErrorToNSError();
      v42 = *(v17 + 8);
      v71 = v35;
      v42(v26, v16);
      v43 = v72;
      v44 = v73;
      *(v72 + 4) = v41;
      *v44 = v41;
      v38 = v74;
      _os_log_impl(&_mh_execute_header, v36, v37, "Browser failed due to %@", v43, 0xCu);
      sub_10000BE18(v44, &unk_100833B50, &unk_1006D8FB0);

      v45 = v71;
    }

    else
    {

      v42 = *(v17 + 8);
      v45 = v35;
      v42(v26, v16);
    }

    (*(v77 + 8))(v38, v76);
    sub_1003F1A8C(&qword_100843368, &type metadata accessor for NWError);
    v57 = swift_allocError();
    v45(v58, v28, v16);
    v78 = v57;
    sub_100007224(&qword_100843360, &unk_1006E10E8);
    AsyncThrowingStream.Continuation.finish(throwing:)();
    return (v42)(v28, v16);
  }

  if (v34 == enum case for NWBrowser.State.waiting(_:))
  {
    (*(v30 + 96))(v33, v29);
    v46 = v73;
    (*(v17 + 32))(v73, v33, v16);
    v47 = v74;
    defaultLogger()();
    v48 = *(v17 + 16);
    v48(v21, v46, v16);
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      *v51 = 138412290;
      sub_1003F1A8C(&qword_100843368, &type metadata accessor for NWError);
      swift_allocError();
      v48(v53, v21, v16);
      v54 = _swift_stdlib_bridgeErrorToNSError();
      v55 = *(v17 + 8);
      v55(v21, v16);
      *(v51 + 4) = v54;
      *v52 = v54;
      _os_log_impl(&_mh_execute_header, v49, v50, "Browser waiting for connectivity due to %@", v51, 0xCu);
      sub_10000BE18(v52, &unk_100833B50, &unk_1006D8FB0);

      (*(v77 + 8))(v74, v76);
      return (v55)(v73, v16);
    }

    else
    {

      v64 = *(v17 + 8);
      v64(v21, v16);
      (*(v77 + 8))(v47, v76);
      return (v64)(v46, v16);
    }
  }

  if (v34 == enum case for NWBrowser.State.setup(_:))
  {
    v59 = v72;
    defaultLogger()();
    v60 = Logger.logObject.getter();
    v61 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      *v62 = 0;
      v63 = "Browser in setup mode";
LABEL_16:
      _os_log_impl(&_mh_execute_header, v60, v61, v63, v62, 2u);

      goto LABEL_17;
    }

    goto LABEL_17;
  }

  if (v34 == enum case for NWBrowser.State.ready(_:))
  {
    v59 = v71;
    defaultLogger()();
    v60 = Logger.logObject.getter();
    v61 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      *v62 = 0;
      v63 = "Browser is ready";
      goto LABEL_16;
    }

LABEL_17:

    return (*(v77 + 8))(v59, v76);
  }

  if (v34 != enum case for NWBrowser.State.cancelled(_:))
  {
    return (*(v30 + 8))(v33, v29);
  }

  v65 = v70;
  defaultLogger()();
  v66 = Logger.logObject.getter();
  v67 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v66, v67))
  {
    v68 = swift_slowAlloc();
    *v68 = 0;
    _os_log_impl(&_mh_execute_header, v66, v67, "Browser was cancelled", v68, 2u);
  }

  (*(v77 + 8))(v65, v76);
  v78 = 0;
  sub_100007224(&qword_100843360, &unk_1006E10E8);
  return AsyncThrowingStream.Continuation.finish(throwing:)();
}

uint64_t sub_1003F1004(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_100041F04;

  return sub_1003ED2D8(a1, a2, v6, v7, v9, v8);
}

uint64_t sub_1003F10CC(uint64_t a1)
{
  v2 = type metadata accessor for RemoteWebPresentmentRequest(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1003F1128(uint64_t result, char a2)
{
  if (a2 != -1)
  {
    return sub_1003F1140(result, a2 & 1);
  }

  return result;
}

uint64_t sub_1003F1140(uint64_t a1, char a2)
{
  if (a2)
  {
    return swift_errorRetain();
  }

  else
  {
  }
}

uint64_t sub_1003F114C(uint64_t result, char a2)
{
  if (a2 != -1)
  {
    return sub_1003F1164(result, a2 & 1);
  }

  return result;
}

uint64_t sub_1003F1164(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_1003F1170(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RemoteWebPresentmentRequest(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003F11D4()
{
  v1 = type metadata accessor for NWEndpoint();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);
  v6 = (type metadata accessor for RemoteWebPresentmentRequest(0) - 8);
  v7 = *(*v6 + 80);
  v8 = (v4 + v5 + v7) & ~v7;
  v9 = v3 | v7;
  v10 = (*(*v6 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v0 + 16);
  swift_unknownObjectRelease();
  v12 = *(v0 + 40);

  (*(v2 + 8))(v0 + v4, v1);
  v13 = type metadata accessor for PartialWebPresentmentRequest();
  (*(*(v13 - 8) + 8))(v0 + v8, v13);
  v14 = *(v0 + v8 + v6[7] + 8);

  v15 = *(v0 + v10);

  return _swift_deallocObject(v0, v10 + 8, v9 | 7);
}

uint64_t sub_1003F1368(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for NWEndpoint() - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for RemoteWebPresentmentRequest(0) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = v1[5];
  v14 = *(v1 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_100027B9C;

  return sub_1003EE5EC(a1, v10, v11, v12, v13, v1 + v6, v1 + v9, v14);
}

uint64_t sub_1003F1504(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003F1574()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1003F15B4()
{
  v0 = type metadata accessor for NWBrowser.Descriptor();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v23 - v6;
  v8 = type metadata accessor for NWBrowser.Descriptor.Options.DeviceType();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v10 = type metadata accessor for NWBrowser.Descriptor.Options.Scope();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v12 = type metadata accessor for NWBrowser.Descriptor.Options();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  static NWBrowser.Descriptor.Options.Scope.personal.getter();
  static NWBrowser.Descriptor.Options.DeviceType.iphone.getter();
  NWBrowser.Descriptor.Options.init(scope:deviceFilter:deviceTypes:)();
  NWBrowser.Descriptor.Options.applicationServiceEndpointsOnly.setter();
  v17 = *(sub_100007224(&unk_100843380, &qword_1006E1108) + 48);
  *v7 = 0xD000000000000022;
  *(v7 + 1) = 0x8000000100714FE0;
  (*(v13 + 16))(&v7[v17], v16, v12);
  (*(v1 + 104))(v7, enum case for NWBrowser.Descriptor.applicationServiceWithOptions(_:), v0);
  type metadata accessor for NWParameters();
  static NWParameters.applicationService.getter();
  NWParameters.includePeerToPeer.setter();
  NWParameters.requiredNetworkAgents.setter();
  (*(v1 + 16))(v5, v7, v0);
  v18 = type metadata accessor for NWBrowser();
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  v21 = NWBrowser.init(for:using:)();
  (*(v1 + 8))(v7, v0);
  (*(v13 + 8))(v16, v12);
  return v21;
}

uint64_t sub_1003F18F0(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_100007224(&qword_100843360, &unk_1006E10E8) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1003F01B0(a1, a2, v6);
}

uint64_t sub_1003F197C()
{
  v1 = sub_100007224(&qword_100843360, &unk_1006E10E8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1003F1A10(uint64_t a1)
{
  v3 = *(sub_100007224(&qword_100843360, &unk_1006E10E8) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1003F060C(a1, v4);
}

uint64_t sub_1003F1A8C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1003F1AD8()
{
  v0 = type metadata accessor for IDVUIServiceConfigurationIdentifier();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = String._bridgeToObjectiveC()();
  v6 = [objc_opt_self() identityForApplicationJobLabel:v5];

  (*(v1 + 104))(v4, enum case for IDVUIServiceConfigurationIdentifier.mobileDocumentProvider(_:), v0);
  IDVUIServiceConfigurationIdentifier.rawValue.getter();
  (*(v1 + 8))(v4, v0);
  v7 = objc_allocWithZone(SBSRemoteAlertDefinition);
  v8 = String._bridgeToObjectiveC()();

  v9 = [v7 initWithSceneProvidingProcess:v6 configurationIdentifier:v8];

  qword_100843390 = v9;
}

uint64_t sub_1003F1C6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v29 = a3;
  v25 = a2;
  v27 = a1;
  v3 = sub_100007224(&qword_1008434A8, &qword_1006E11F0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v28 = &v24 - v6;
  v7 = type metadata accessor for MobileDocumentProviderViewServiceIdentifier();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v24 - v13;
  v26 = &v24 - v13;
  swift_allocObject();
  swift_weakInit();
  v15 = v3;
  v16 = v27;
  AsyncThrowingStream.Continuation.onTermination.setter();
  v17 = type metadata accessor for TaskPriority();
  (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
  (*(v8 + 16))(v10, v29, v7);
  v18 = v28;
  v19 = v15;
  (*(v4 + 16))(v28, v16, v15);
  v20 = (*(v8 + 80) + 40) & ~*(v8 + 80);
  v21 = (v9 + *(v4 + 80) + v20) & ~*(v4 + 80);
  v22 = swift_allocObject();
  *(v22 + 2) = 0;
  *(v22 + 3) = 0;
  *(v22 + 4) = v25;
  (*(v8 + 32))(&v22[v20], v10, v7);
  (*(v4 + 32))(&v22[v21], v18, v19);

  sub_1003E653C(0, 0, v26, &unk_1006E12A0, v22);
}

uint64_t sub_1003F1F94(uint64_t a1)
{
  v2 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v16 - v4;
  v6 = sub_100007224(&qword_100843588, &qword_1006E12B0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v16 - v9;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v12 = result;
    (*(v7 + 16))(v10, a1, v6);
    v13 = (*(v7 + 88))(v10, v6);
    if (v13 == enum case for AsyncThrowingStream.Continuation.Termination.finished<A, B>(_:) || v13 != enum case for AsyncThrowingStream.Continuation.Termination.cancelled<A, B>(_:))
    {

      return (*(v7 + 8))(v10, v6);
    }

    else
    {
      v14 = type metadata accessor for TaskPriority();
      (*(*(v14 - 8) + 56))(v5, 1, 1, v14);
      v15 = swift_allocObject();
      v15[2] = 0;
      v15[3] = 0;
      v15[4] = v12;
      sub_1003E653C(0, 0, v5, &unk_1006E12C0, v15);
    }
  }

  return result;
}

uint64_t sub_1003F21F0()
{
  v1 = *(v0 + 16);
  sub_1003F2DD8();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1003F2250(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = *(*(sub_100007224(&qword_100843580, &qword_1006E12A8) - 8) + 64) + 15;
  v6[5] = swift_task_alloc();

  return _swift_task_switch(sub_1003F22F0, 0, 0);
}

uint64_t sub_1003F22F0()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[2];
  v4 = sub_100007224(&qword_1008434A8, &qword_1006E11F0);
  v5 = *(v4 - 8);
  (*(v5 + 16))(v2, v1, v4);
  (*(v5 + 56))(v2, 0, 1, v4);

  return _swift_task_switch(sub_1003F23E8, v3, 0);
}

uint64_t sub_1003F23E8()
{
  v1 = v0[5];
  v2 = v0[2];
  sub_1003F4358(v0[3], v1);
  sub_10000BE18(v1, &qword_100843580, &qword_1006E12A8);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1003F2470(uint64_t a1, uint64_t a2)
{
  v2[18] = a1;
  v2[19] = a2;
  v3 = type metadata accessor for MobileDocumentProviderLocalOptionUIConfiguration();
  v2[20] = v3;
  v4 = *(v3 - 8);
  v2[21] = v4;
  v5 = *(v4 + 64) + 15;
  v2[22] = swift_task_alloc();

  return _swift_task_switch(sub_1003F2530, 0, 0);
}

uint64_t sub_1003F2530()
{
  v1 = v0[18];
  (*(v0[21] + 16))(v0[22], v0[19], v0[20]);
  v2 = objc_allocWithZone(type metadata accessor for XPCMobileDocumentProviderLocalOptionUIConfiguration());
  v3 = XPCMobileDocumentProviderLocalOptionUIConfiguration.init(value:)();
  v0[23] = v3;
  v0[2] = v0;
  v0[3] = sub_1003F2690;
  v4 = swift_continuation_init();
  v0[17] = sub_100007224(&unk_100843590, &qword_1006D8B10);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100429100;
  v0[13] = &unk_10080F4A8;
  v0[14] = v4;
  [v1 presentSelectionViewFromAuxiliaryViewWithConfiguration:v3 completionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1003F2690()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 192) = v2;
  if (v2)
  {
    v3 = sub_1003FD4D0;
  }

  else
  {
    v3 = sub_1003FD440;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1003F27A0(uint64_t a1, uint64_t a2)
{
  v2[18] = a1;
  v2[19] = a2;
  v3 = type metadata accessor for MobileDocumentProviderPresentmentRequest();
  v2[20] = v3;
  v4 = *(v3 - 8);
  v2[21] = v4;
  v5 = *(v4 + 64) + 15;
  v2[22] = swift_task_alloc();

  return _swift_task_switch(sub_1003F2860, 0, 0);
}

uint64_t sub_1003F2860()
{
  v1 = v0[18];
  (*(v0[21] + 16))(v0[22], v0[19], v0[20]);
  v2 = objc_allocWithZone(type metadata accessor for XPCMobileDocumentProviderPresentmentRequest());
  v3 = XPCMobileDocumentProviderPresentmentRequest.init(value:)();
  v0[23] = v3;
  v0[2] = v0;
  v0[3] = sub_1003F2690;
  v4 = swift_continuation_init();
  v0[17] = sub_100007224(&unk_100843590, &qword_1006D8B10);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100429100;
  v0[13] = &unk_10080F458;
  v0[14] = v4;
  [v1 presentAuthorizationViewFromSelectionViewWithRequest:v3 completionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1003F29C0(uint64_t a1, uint64_t a2)
{
  v2[18] = a1;
  v2[19] = a2;
  v3 = type metadata accessor for MobileDocumentProviderAuxiliaryView();
  v2[20] = v3;
  v4 = *(v3 - 8);
  v2[21] = v4;
  v5 = *(v4 + 64) + 15;
  v2[22] = swift_task_alloc();

  return _swift_task_switch(sub_1003F2A80, 0, 0);
}

uint64_t sub_1003F2A80()
{
  v1 = v0[18];
  (*(v0[21] + 16))(v0[22], v0[19], v0[20]);
  v2 = objc_allocWithZone(type metadata accessor for XPCMobileDocumentProviderAuxiliaryView());
  v3 = XPCMobileDocumentProviderAuxiliaryView.init(value:)();
  v0[23] = v3;
  v0[2] = v0;
  v0[3] = sub_1003F2BE0;
  v4 = swift_continuation_init();
  v0[17] = sub_100007224(&unk_100843590, &qword_1006D8B10);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100429100;
  v0[13] = &unk_10080F480;
  v0[14] = v4;
  [v1 presentAuxiliaryView:v3 completionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1003F2BE0()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 192) = v2;
  if (v2)
  {
    v3 = sub_1003F2D5C;
  }

  else
  {
    v3 = sub_1003F2CF0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1003F2CF0()
{
  v1 = *(v0 + 176);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1003F2D5C()
{
  v1 = v0[23];
  v2 = v0[24];
  v3 = v0[22];
  swift_willThrow();

  v4 = v0[1];
  v5 = v0[24];

  return v4();
}

uint64_t sub_1003F2DD8()
{
  v1 = v0;
  v2 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v19 - v4;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v20 = v14;
    *v13 = 136446210;
    *(v13 + 4) = sub_100141FE4(0x287373696D736964, 0xE900000000000029, &v20);
    _os_log_impl(&_mh_execute_header, v11, v12, "RemoteMobileDocumentProviderUIConnectionManager %{public}s", v13, 0xCu);
    sub_10000BB78(v14);
  }

  (*(v7 + 8))(v10, v6);
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
  v16 = sub_1003FB71C(&qword_1008435D0, type metadata accessor for RemoteMobileDocumentProviderUIConnectionManager);
  v17 = swift_allocObject();
  v17[2] = v1;
  v17[3] = v16;
  v17[4] = v1;
  swift_retain_n();
  sub_1003E653C(0, 0, v5, &unk_1006E1378, v17);
}

uint64_t sub_1003F3098(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v6 = type metadata accessor for Logger();
  v4[3] = v6;
  v7 = *(v6 - 8);
  v4[4] = v7;
  v8 = *(v7 + 64) + 15;
  v4[5] = swift_task_alloc();
  v4[6] = swift_task_alloc();

  return _swift_task_switch(sub_1003F3168, a4, 0);
}

uint64_t sub_1003F3168()
{
  v1 = v0[2];
  v2 = swift_task_alloc();
  v0[7] = v2;
  v2[2] = v1;
  v2[3] = &unk_1006E1380;
  v2[4] = 0;
  sub_1003FB71C(&qword_1008435D0, type metadata accessor for RemoteMobileDocumentProviderUIConnectionManager);
  v3 = async function pointer to withTaskCancellationHandler<A>(operation:onCancel:isolation:)[1];
  v4 = swift_task_alloc();
  v0[8] = v4;
  *v4 = v0;
  v4[1] = sub_1003F32A8;
  v5 = v0[2];

  return withTaskCancellationHandler<A>(operation:onCancel:isolation:)(v4, &unk_1006E1388);
}

uint64_t sub_1003F32A8()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v9 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v4 = *(v2 + 16);
    v5 = sub_1003F3540;
  }

  else
  {
    v6 = *(v2 + 56);
    v7 = *(v2 + 16);

    v5 = sub_1003F33D0;
    v4 = v7;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_1003F33D0()
{
  v15 = v0;
  v1 = v0[6];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[6];
  v6 = v0[3];
  v7 = v0[4];
  if (v4)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14 = v9;
    *v8 = 136446210;
    *(v8 + 4) = sub_100141FE4(0x287373696D736964, 0xE900000000000029, &v14);
    _os_log_impl(&_mh_execute_header, v2, v3, "RemoteMobileDocumentProviderUIConnectionManager %{public}s successfully dismissed.", v8, 0xCu);
    sub_10000BB78(v9);
  }

  (*(v7 + 8))(v5, v6);
  v11 = v0[5];
  v10 = v0[6];

  v12 = v0[1];

  return v12();
}

uint64_t sub_1003F3540()
{
  v21 = v0;
  v1 = v0[9];
  v2 = v0[7];
  v3 = v0[5];

  defaultLogger()();
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[9];
  v9 = v0[4];
  v8 = v0[5];
  v10 = v0[3];
  if (v6)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v20 = v13;
    *v11 = 136446466;
    *(v11 + 4) = sub_100141FE4(0x287373696D736964, 0xE900000000000029, &v20);
    *(v11 + 12) = 2112;
    swift_errorRetain();
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 14) = v14;
    *v12 = v14;
    _os_log_impl(&_mh_execute_header, v4, v5, "RemoteMobileDocumentProviderUIConnectionManager %{public}s failed to dismiss: %@", v11, 0x16u);
    sub_10000BE18(v12, &unk_100833B50, &unk_1006D8FB0);

    sub_10000BB78(v13);
  }

  else
  {
    v15 = v0[9];
  }

  (*(v9 + 8))(v8, v10);
  v17 = v0[5];
  v16 = v0[6];

  v18 = v0[1];

  return v18();
}

uint64_t sub_1003F3768()
{
  v1 = v0[18];
  v0[2] = v0;
  v0[3] = sub_1003247BC;
  v2 = swift_continuation_init();
  v0[17] = sub_100007224(&unk_1008435E0, &qword_1006E1390);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_1004290CC;
  v0[13] = &unk_10080F5C0;
  v0[14] = v2;
  [v1 dismissWithCompletionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1003F387C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 80) = a5;
  *(v6 + 88) = v5;
  *(v6 + 64) = a2;
  *(v6 + 72) = a4;
  *(v6 + 224) = a3;
  *(v6 + 56) = a1;
  v7 = type metadata accessor for DIPError.Code();
  *(v6 + 96) = v7;
  v8 = *(v7 - 8);
  *(v6 + 104) = v8;
  v9 = *(v8 + 64) + 15;
  *(v6 + 112) = swift_task_alloc();
  v10 = *(*(sub_100007224(&qword_1008435C8, &unk_1006E1310) - 8) + 64) + 15;
  *(v6 + 120) = swift_task_alloc();
  v11 = type metadata accessor for MobileDocumentProviderRemoteUIError();
  *(v6 + 128) = v11;
  v12 = *(v11 - 8);
  *(v6 + 136) = v12;
  v13 = *(v12 + 64) + 15;
  *(v6 + 144) = swift_task_alloc();
  v14 = type metadata accessor for Logger();
  *(v6 + 152) = v14;
  v15 = *(v14 - 8);
  *(v6 + 160) = v15;
  v16 = *(v15 + 64) + 15;
  *(v6 + 168) = swift_task_alloc();
  *(v6 + 176) = swift_task_alloc();

  return _swift_task_switch(sub_1003F3A44, v5, 0);
}

uint64_t sub_1003F3A44()
{
  v28 = v0;
  v1 = *(v0 + 176);
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 176);
  v7 = *(v0 + 152);
  v6 = *(v0 + 160);
  if (v4)
  {
    v9 = *(v0 + 56);
    v8 = *(v0 + 64);
    v10 = *(v0 + 224);
    v26 = *(v0 + 176);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v27 = v12;
    *v11 = 136446210;
    v13 = StaticString.description.getter();
    v15 = sub_100141FE4(v13, v14, &v27);

    *(v11 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v2, v3, "MobileDocumentProviderUIConnectionManager %{public}s", v11, 0xCu);
    sub_10000BB78(v12);

    v16 = *(v6 + 8);
    v16(v26, v7);
  }

  else
  {

    v16 = *(v6 + 8);
    v16(v5, v7);
  }

  *(v0 + 184) = v16;
  v17 = *(v0 + 80);
  v18 = *(v0 + 88);
  v19 = *(v0 + 72);
  v20 = swift_allocObject();
  *(v0 + 192) = v20;
  *(v20 + 16) = v19;
  *(v20 + 24) = v17;

  v21 = swift_task_alloc();
  *(v0 + 200) = v21;
  v21[2] = v18;
  v21[3] = &unk_1006E1320;
  v21[4] = v20;
  sub_1003FB71C(&qword_1008435D0, type metadata accessor for RemoteMobileDocumentProviderUIConnectionManager);
  v22 = async function pointer to withTaskCancellationHandler<A>(operation:onCancel:isolation:)[1];
  v23 = swift_task_alloc();
  *(v0 + 208) = v23;
  *v23 = v0;
  v23[1] = sub_1003F3CE0;
  v24 = *(v0 + 88);

  return withTaskCancellationHandler<A>(operation:onCancel:isolation:)(v23, &unk_1006E1330);
}

uint64_t sub_1003F3CE0()
{
  v2 = *v1;
  v3 = *(*v1 + 208);
  v10 = *v1;
  *(*v1 + 216) = v0;

  if (v0)
  {
    v4 = v2[11];
    v5 = sub_1003F3EA4;
  }

  else
  {
    v6 = v2[24];
    v7 = v2[25];
    v8 = v2[11];

    v5 = sub_1003F3E10;
    v4 = v8;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_1003F3E10()
{
  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[18];
  v5 = v0[14];
  v4 = v0[15];

  v6 = v0[1];

  return v6();
}

uint64_t sub_1003F3EA4()
{
  v51 = v0;
  v1 = *(v0 + 216);
  v2 = *(v0 + 192);
  v3 = *(v0 + 200);
  v4 = *(v0 + 168);

  defaultLogger()();
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 216);
    v8 = *(v0 + 160);
    v48 = *(v0 + 168);
    v49 = *(v0 + 184);
    v47 = *(v0 + 152);
    v10 = *(v0 + 56);
    v9 = *(v0 + 64);
    v11 = *(v0 + 224);
    v12 = swift_slowAlloc();
    v50[0] = swift_slowAlloc();
    *v12 = 136446466;
    v13 = StaticString.description.getter();
    v15 = sub_100141FE4(v13, v14, v50);

    *(v12 + 4) = v15;
    *(v12 + 12) = 2080;
    swift_getErrorValue();
    v17 = *(v0 + 16);
    v16 = *(v0 + 24);
    v18 = *(v0 + 32);
    v19 = Error.localizedDescription.getter();
    v21 = sub_100141FE4(v19, v20, v50);

    *(v12 + 14) = v21;
    _os_log_impl(&_mh_execute_header, v5, v6, "MobileDocumentProviderUIConnectionManager %{public}s received error %s", v12, 0x16u);
    swift_arrayDestroy();

    v49(v48, v47);
  }

  else
  {
    v22 = *(v0 + 184);
    v24 = *(v0 + 160);
    v23 = *(v0 + 168);
    v25 = *(v0 + 152);

    v22(v23, v25);
  }

  v26 = *(v0 + 128);
  v27 = *(v0 + 136);
  v28 = *(v0 + 120);
  *(v0 + 40) = *(v0 + 216);
  swift_errorRetain();
  sub_100007224(&qword_100833B90, &qword_1006D95C0);
  v29 = swift_dynamicCast();
  v30 = *(v27 + 56);
  v31 = *(v0 + 216);
  if (v29)
  {
    v33 = *(v0 + 136);
    v32 = *(v0 + 144);
    v34 = *(v0 + 120);
    v35 = *(v0 + 128);
    v30(v34, 0, 1, v35);
    (*(v33 + 32))(v32, v34, v35);
    type metadata accessor for DIPError();
    sub_1003FB71C(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    MobileDocumentProviderRemoteUIError.dipErrorRepresentation.getter();
    swift_willThrow();

    (*(v33 + 8))(v32, v35);
  }

  else
  {
    v36 = *(v0 + 120);
    v38 = *(v0 + 104);
    v37 = *(v0 + 112);
    v39 = *(v0 + 96);
    v30(v36, 1, 1, *(v0 + 128));
    sub_10000BE18(v36, &qword_1008435C8, &unk_1006E1310);
    (*(v38 + 104))(v37, enum case for DIPError.Code.internalError(_:), v39);
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1003FB71C(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }

  v41 = *(v0 + 168);
  v40 = *(v0 + 176);
  v42 = *(v0 + 144);
  v44 = *(v0 + 112);
  v43 = *(v0 + 120);

  v45 = *(v0 + 8);

  return v45();
}

void sub_1003F4358(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_100007224(&qword_100843580, &qword_1006E12A8);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v19[-v8];
  v10 = *(v3 + 120);
  v20 = a1;
  v11 = *(*v10 + class metadata base offset for ManagedBuffer + 16);
  v12 = (*(*v10 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v10 + v12));
  sub_1003FB544(v10 + v11);
  os_unfair_lock_unlock((v10 + v12));
  sub_10000BBC4(a2, v9, &qword_100843580, &qword_1006E12A8);
  v13 = OBJC_IVAR____TtC8coreidvd47RemoteMobileDocumentProviderUIConnectionManager_continuation;
  swift_beginAccess();
  sub_1003FB4D4(v9, v3 + v13);
  swift_endAccess();
  v14 = sub_1003F462C();
  v15 = objc_opt_self();
  if (qword_100832C68 != -1)
  {
    v18 = v15;
    swift_once();
    v15 = v18;
  }

  v16 = [v15 newHandleWithDefinition:qword_100843390 configurationContext:v14];
  [v16 registerObserver:v3];
  v17 = [objc_allocWithZone(SBSRemoteAlertActivationContext) init];
  [v16 activateWithContext:v17];
}

uint64_t sub_1003F4568(uint64_t a1, uint64_t a2)
{
  sub_10000BE18(a1, &qword_100843558, &qword_1006E1270);
  v4 = type metadata accessor for MobileDocumentProviderViewServiceIdentifier();
  v5 = *(v4 - 8);
  (*(v5 + 16))(a1, a2, v4);
  return (*(v5 + 56))(a1, 0, 1, v4);
}

id sub_1003F462C()
{
  v1 = [objc_opt_self() anonymousListener];
  [v1 setDelegate:v0];
  [v1 activate];
  v2 = [objc_allocWithZone(SBSRemoteAlertConfigurationContext) init];
  v3 = [v1 endpoint];
  v4 = [v3 _endpoint];

  [v2 setXpcEndpoint:v4];
  swift_unknownObjectRelease();
  return v2;
}

id sub_1003F470C@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = aBlock - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1)
  {
    defaultLogger()();
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "Multiple connections are not supported.", v15, 2u);
    }

    result = (*(v9 + 8))(v12, v8);
    *a4 = 0;
  }

  else
  {
    v17 = objc_opt_self();
    v18 = [v17 interfaceWithProtocol:&OBJC_PROTOCOL____TtP13CoreIDVShared50MobileDocumentProviderViewServiceDelegateInterface_];
    [a2 setRemoteObjectInterface:v18];

    v19 = [v17 interfaceWithProtocol:&OBJC_PROTOCOL____TtP13CoreIDVShared42MobileDocumentProviderViewServiceInterface_];
    [a2 setExportedInterface:v19];

    [a2 setExportedObject:a3];
    v20 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = sub_1003FD35C;
    aBlock[5] = v20;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100503A7C;
    aBlock[3] = &unk_10080FA70;
    v21 = _Block_copy(aBlock);

    [a2 setInvalidationHandler:v21];
    _Block_release(v21);
    [a2 activate];
    *a1 = a2;
    *a4 = 1;
    return a2;
  }

  return result;
}

uint64_t sub_1003F49DC()
{
  v0 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v16 - v2;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "RemoteMobileDocumentProviderUIConnectionManager connection invalidated", v11, 2u);
  }

  (*(v5 + 8))(v8, v4);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v13 = result;
    v14 = type metadata accessor for TaskPriority();
    (*(*(v14 - 8) + 56))(v3, 1, 1, v14);
    v15 = swift_allocObject();
    v15[2] = 0;
    v15[3] = 0;
    v15[4] = v13;
    sub_1003E653C(0, 0, v3, &unk_1006E1500, v15);
  }

  return result;
}

uint64_t sub_1003F4C38()
{
  v1 = *(v0 + 16);
  sub_1003F4CFC();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1003F4CFC()
{
  v1 = v0;
  v2 = type metadata accessor for DIPError.Code();
  v36 = *(v2 - 8);
  v37 = v2;
  v3 = *(v36 + 64);
  __chkstk_darwin(v2);
  v39 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100007224(&qword_1008434A8, &qword_1006E11F0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v38 = &v35 - v8;
  v9 = sub_100007224(&qword_100843580, &qword_1006E12A8);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v40 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v35 - v13;
  v15 = type metadata accessor for Logger();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&_mh_execute_header, v20, v21, "RemoteMobileDocumentProviderUIConnectionManager viewServiceInvalidated", v22, 2u);
  }

  (*(v16 + 8))(v19, v15);
  v23 = *(v1 + 120);
  v24 = *(*v23 + class metadata base offset for ManagedBuffer + 16);
  v25 = (*(*v23 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v23 + v25));
  sub_10000BE18(v23 + v24, &qword_100843558, &qword_1006E1270);
  v26 = type metadata accessor for MobileDocumentProviderViewServiceIdentifier();
  (*(*(v26 - 8) + 56))(v23 + v24, 1, 1, v26);
  os_unfair_lock_unlock((v23 + v25));
  v27 = *(v1 + 112);
  os_unfair_lock_lock((v27 + 24));
  v28 = *(v27 + 16);
  if (v28)
  {
    [v28 setExportedObject:0];
    v29 = *(v27 + 16);
  }

  else
  {
    v29 = 0;
  }

  *(v27 + 16) = 0;

  os_unfair_lock_unlock((v27 + 24));
  v30 = OBJC_IVAR____TtC8coreidvd47RemoteMobileDocumentProviderUIConnectionManager_continuation;
  swift_beginAccess();
  sub_10000BBC4(v1 + v30, v14, &qword_100843580, &qword_1006E12A8);
  if ((*(v6 + 48))(v14, 1, v5))
  {
    sub_10000BE18(v14, &qword_100843580, &qword_1006E12A8);
  }

  else
  {
    v31 = v38;
    (*(v6 + 16))(v38, v14, v5);
    sub_10000BE18(v14, &qword_100843580, &qword_1006E12A8);
    v35 = "ifier";
    (*(v36 + 104))(v39, enum case for DIPError.Code.webPresentmentCancelled(_:), v37);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1003FB71C(&qword_100834130, &type metadata accessor for DIPError);
    v32 = swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    v41 = v32;
    AsyncThrowingStream.Continuation.finish(throwing:)();
    (*(v6 + 8))(v31, v5);
  }

  v33 = v40;
  (*(v6 + 56))(v40, 1, 1, v5);
  swift_beginAccess();
  sub_1003FB4D4(v33, v1 + v30);
  return swift_endAccess();
}

uint64_t sub_1003F5348(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = type metadata accessor for RemoteMobileDocumentProviderUIState(0);
  v2[7] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[8] = swift_task_alloc();
  v5 = sub_100007224(&qword_1008434A8, &qword_1006E11F0);
  v2[9] = v5;
  v6 = *(v5 - 8);
  v2[10] = v6;
  v7 = *(v6 + 64) + 15;
  v2[11] = swift_task_alloc();
  v8 = *(*(sub_100007224(&qword_100843580, &qword_1006E12A8) - 8) + 64) + 15;
  v2[12] = swift_task_alloc();
  v9 = *(*(sub_100007224(&qword_1008435B0, &qword_1006E12F8) - 8) + 64) + 15;
  v2[13] = swift_task_alloc();
  v10 = type metadata accessor for MobileDocumentProviderUserSelection();
  v2[14] = v10;
  v11 = *(v10 - 8);
  v2[15] = v11;
  v12 = *(v11 + 64) + 15;
  v2[16] = swift_task_alloc();
  v13 = type metadata accessor for Logger();
  v2[17] = v13;
  v14 = *(v13 - 8);
  v2[18] = v14;
  v15 = *(v14 + 64) + 15;
  v2[19] = swift_task_alloc();

  return _swift_task_switch(sub_1003F556C, v1, 0);
}

uint64_t sub_1003F556C()
{
  v44 = v0;
  v1 = v0[19];
  v2 = v0[5];
  defaultLogger()();
  v3 = v2;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();

  v6 = os_log_type_enabled(v4, v5);
  v8 = v0[18];
  v7 = v0[19];
  v9 = v0[17];
  if (v6)
  {
    v11 = v0[15];
    v10 = v0[16];
    v40 = v0[14];
    v42 = v0[19];
    v12 = v0[5];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v43 = v14;
    *v13 = 136315138;
    XPCMobileDocumentProviderUserSelection.value.getter();
    v15 = MobileDocumentProviderUserSelection.recordIdentifier.getter();
    v41 = v9;
    v17 = v16;
    (*(v11 + 8))(v10, v40);
    v18 = sub_100141FE4(v15, v17, &v43);

    *(v13 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v4, v5, "RemoteMobileDocumentProviderUIConnectionManager selectionViewUserDidTapSelection called with selection %s", v13, 0xCu);
    sub_10000BB78(v14);

    (*(v8 + 8))(v42, v41);
  }

  else
  {

    (*(v8 + 8))(v7, v9);
  }

  v19 = v0[12];
  v20 = v0[9];
  v21 = v0[10];
  v22 = v0[6];
  v23 = OBJC_IVAR____TtC8coreidvd47RemoteMobileDocumentProviderUIConnectionManager_continuation;
  swift_beginAccess();
  sub_10000BBC4(v22 + v23, v19, &qword_100843580, &qword_1006E12A8);
  if ((*(v21 + 48))(v19, 1, v20))
  {
    sub_10000BE18(v0[12], &qword_100843580, &qword_1006E12A8);
    v24 = 1;
  }

  else
  {
    v25 = v0[12];
    v27 = v0[10];
    v26 = v0[11];
    v28 = v0[9];
    v29 = v0[7];
    v30 = v0[5];
    (*(v27 + 16))(v26, v25, v28);
    sub_10000BE18(v25, &qword_100843580, &qword_1006E12A8);
    XPCMobileDocumentProviderUserSelection.value.getter();
    swift_storeEnumTagMultiPayload();
    AsyncThrowingStream.Continuation.yield(_:)();
    (*(v27 + 8))(v26, v28);
    v24 = 0;
  }

  v31 = v0[19];
  v32 = v0[16];
  v34 = v0[12];
  v33 = v0[13];
  v35 = v0[11];
  v36 = v0[8];
  v37 = sub_100007224(&unk_1008435B8, &unk_1006E1300);
  (*(*(v37 - 8) + 56))(v33, v24, 1, v37);
  sub_10000BE18(v33, &qword_1008435B0, &qword_1006E12F8);

  v38 = v0[1];

  return v38();
}

uint64_t sub_1003F5A84(void *a1, void *aBlock, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v5 = a1;

  v6 = swift_task_alloc();
  v3[5] = v6;
  *v6 = v3;
  v6[1] = sub_1003FD44C;

  return sub_1003F5348(v5);
}

uint64_t sub_1003F5B48(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = type metadata accessor for RemoteMobileDocumentProviderUIState(0);
  v2[7] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[8] = swift_task_alloc();
  v5 = sub_100007224(&qword_1008434A8, &qword_1006E11F0);
  v2[9] = v5;
  v6 = *(v5 - 8);
  v2[10] = v6;
  v7 = *(v6 + 64) + 15;
  v2[11] = swift_task_alloc();
  v8 = *(*(sub_100007224(&qword_100843580, &qword_1006E12A8) - 8) + 64) + 15;
  v2[12] = swift_task_alloc();
  v9 = *(*(sub_100007224(&qword_1008435B0, &qword_1006E12F8) - 8) + 64) + 15;
  v2[13] = swift_task_alloc();

  return _swift_task_switch(sub_1003F5CB4, v1, 0);
}

uint64_t sub_1003F5CB4()
{
  v1 = v0[12];
  v2 = v0[9];
  v3 = v0[10];
  v4 = v0[6];
  v5 = OBJC_IVAR____TtC8coreidvd47RemoteMobileDocumentProviderUIConnectionManager_continuation;
  swift_beginAccess();
  sub_10000BBC4(v4 + v5, v1, &qword_100843580, &qword_1006E12A8);
  if ((*(v3 + 48))(v1, 1, v2))
  {
    sub_10000BE18(v0[12], &qword_100843580, &qword_1006E12A8);
    v6 = 1;
  }

  else
  {
    v7 = v0[12];
    v9 = v0[10];
    v8 = v0[11];
    v10 = v0[9];
    v11 = v0[7];
    v12 = v0[5];
    (*(v9 + 16))(v8, v7, v10);
    sub_10000BE18(v7, &qword_100843580, &qword_1006E12A8);
    XPCMobileDocumentProviderUserSelection.value.getter();
    swift_storeEnumTagMultiPayload();
    AsyncThrowingStream.Continuation.yield(_:)();
    (*(v9 + 8))(v8, v10);
    v6 = 0;
  }

  v14 = v0[12];
  v13 = v0[13];
  v15 = v0[11];
  v16 = v0[8];
  v17 = sub_100007224(&unk_1008435B8, &unk_1006E1300);
  (*(*(v17 - 8) + 56))(v13, v6, 1, v17);
  sub_10000BE18(v13, &qword_1008435B0, &qword_1006E12F8);

  v18 = v0[1];

  return v18();
}

uint64_t sub_1003F6058(void *a1, void *aBlock, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v5 = a1;

  v6 = swift_task_alloc();
  v3[5] = v6;
  *v6 = v3;
  v6[1] = sub_1003FD44C;

  return sub_1003F5B48(v5);
}

uint64_t sub_1003F611C(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = type metadata accessor for RemoteMobileDocumentProviderUIState(0);
  v2[7] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[8] = swift_task_alloc();
  v5 = sub_100007224(&qword_1008434A8, &qword_1006E11F0);
  v2[9] = v5;
  v6 = *(v5 - 8);
  v2[10] = v6;
  v7 = *(v6 + 64) + 15;
  v2[11] = swift_task_alloc();
  v8 = *(*(sub_100007224(&qword_100843580, &qword_1006E12A8) - 8) + 64) + 15;
  v2[12] = swift_task_alloc();
  v9 = *(*(sub_100007224(&qword_1008435B0, &qword_1006E12F8) - 8) + 64) + 15;
  v2[13] = swift_task_alloc();
  v10 = type metadata accessor for Logger();
  v2[14] = v10;
  v11 = *(v10 - 8);
  v2[15] = v11;
  v12 = *(v11 + 64) + 15;
  v2[16] = swift_task_alloc();

  return _swift_task_switch(sub_1003F62E4, v1, 0);
}

uint64_t sub_1003F62E4()
{
  v1 = v0[16];
  v2 = v0[5];
  defaultLogger()();
  v3 = v2;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[5];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v6;
    *v8 = v6;
    v9 = v6;
    _os_log_impl(&_mh_execute_header, v4, v5, "RemoteMobileDocumentProviderUIConnectionManager didAuthorizeRequest called with response %@", v7, 0xCu);
    sub_10000BE18(v8, &unk_100833B50, &unk_1006D8FB0);
  }

  v11 = v0[15];
  v10 = v0[16];
  v12 = v0[14];
  v13 = v0[12];
  v14 = v0[9];
  v15 = v0[10];
  v16 = v0[6];

  (*(v11 + 8))(v10, v12);
  v17 = OBJC_IVAR____TtC8coreidvd47RemoteMobileDocumentProviderUIConnectionManager_continuation;
  swift_beginAccess();
  sub_10000BBC4(v16 + v17, v13, &qword_100843580, &qword_1006E12A8);
  if ((*(v15 + 48))(v13, 1, v14))
  {
    sub_10000BE18(v0[12], &qword_100843580, &qword_1006E12A8);
    v18 = 1;
  }

  else
  {
    v19 = v0[12];
    v21 = v0[10];
    v20 = v0[11];
    v22 = v0[9];
    v23 = v0[7];
    v24 = v0[5];
    (*(v21 + 16))(v20, v19, v22);
    sub_10000BE18(v19, &qword_100843580, &qword_1006E12A8);
    XPCMobileDocumentProviderPresentmentResponse.value.getter();
    swift_storeEnumTagMultiPayload();
    AsyncThrowingStream.Continuation.yield(_:)();
    (*(v21 + 8))(v20, v22);
    v18 = 0;
  }

  v25 = v0[16];
  v27 = v0[12];
  v26 = v0[13];
  v28 = v0[11];
  v29 = v0[8];
  v30 = sub_100007224(&unk_1008435B8, &unk_1006E1300);
  (*(*(v30 - 8) + 56))(v26, v18, 1, v30);
  sub_10000BE18(v26, &qword_1008435B0, &qword_1006E12F8);

  v31 = v0[1];

  return v31();
}

uint64_t sub_1003F678C(void *a1, void *aBlock, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v5 = a1;

  v6 = swift_task_alloc();
  v3[5] = v6;
  *v6 = v3;
  v6[1] = sub_1003F6850;

  return sub_1003F611C(v5);
}

uint64_t sub_1003F6850()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 32);
  v3 = *(*v0 + 24);
  v4 = *(*v0 + 16);
  v7 = *v0;

  v2[2](v2);
  _Block_release(v2);
  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_1003F69AC()
{
  v2 = type metadata accessor for Logger();
  v1[2] = v2;
  v3 = *(v2 - 8);
  v1[3] = v3;
  v4 = *(v3 + 64) + 15;
  v1[4] = swift_task_alloc();

  return _swift_task_switch(sub_1003F6A68, v0, 0);
}

uint64_t sub_1003F6A68()
{
  v1 = v0[4];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "RemoteMobileDocumentProviderUIConnectionManager viewServiceWillTerminate", v4, 2u);
  }

  v6 = v0[3];
  v5 = v0[4];
  v7 = v0[2];

  (*(v6 + 8))(v5, v7);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1003F6CE0(const void *a1, uint64_t a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);

  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_1003FD448;

  return sub_1003F69AC();
}

uint64_t sub_1003F6F00(const void *a1)
{
  v2 = _Block_copy(a1);
  v2[2]();
  _Block_release(v2);
  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_1003F6F74()
{
  v1[5] = v0;
  v2 = type metadata accessor for RemoteMobileDocumentProviderUIState(0);
  v1[6] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[7] = swift_task_alloc();
  v4 = sub_100007224(&qword_1008434A8, &qword_1006E11F0);
  v1[8] = v4;
  v5 = *(v4 - 8);
  v1[9] = v5;
  v6 = *(v5 + 64) + 15;
  v1[10] = swift_task_alloc();
  v7 = *(*(sub_100007224(&qword_100843580, &qword_1006E12A8) - 8) + 64) + 15;
  v1[11] = swift_task_alloc();
  v8 = *(*(sub_100007224(&qword_1008435B0, &qword_1006E12F8) - 8) + 64) + 15;
  v1[12] = swift_task_alloc();
  v9 = type metadata accessor for Logger();
  v1[13] = v9;
  v10 = *(v9 - 8);
  v1[14] = v10;
  v11 = *(v10 + 64) + 15;
  v1[15] = swift_task_alloc();

  return _swift_task_switch(sub_1003F713C, v0, 0);
}

uint64_t sub_1003F713C()
{
  v1 = v0[15];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "RemoteMobileDocumentProviderUIConnectionManager didSelectEnableBluetooth", v4, 2u);
  }

  v6 = v0[14];
  v5 = v0[15];
  v7 = v0[13];
  v8 = v0[11];
  v9 = v0[8];
  v10 = v0[9];
  v11 = v0[5];

  (*(v6 + 8))(v5, v7);
  v12 = OBJC_IVAR____TtC8coreidvd47RemoteMobileDocumentProviderUIConnectionManager_continuation;
  swift_beginAccess();
  sub_10000BBC4(v11 + v12, v8, &qword_100843580, &qword_1006E12A8);
  if ((*(v10 + 48))(v8, 1, v9))
  {
    sub_10000BE18(v0[11], &qword_100843580, &qword_1006E12A8);
    v13 = 1;
  }

  else
  {
    v14 = v0[11];
    v16 = v0[9];
    v15 = v0[10];
    v17 = v0[8];
    v18 = v0[6];
    (*(v16 + 16))(v15, v14, v17);
    sub_10000BE18(v14, &qword_100843580, &qword_1006E12A8);
    swift_storeEnumTagMultiPayload();
    AsyncThrowingStream.Continuation.yield(_:)();
    (*(v16 + 8))(v15, v17);
    v13 = 0;
  }

  v19 = v0[15];
  v21 = v0[11];
  v20 = v0[12];
  v22 = v0[10];
  v23 = v0[7];
  v24 = sub_100007224(&unk_1008435B8, &unk_1006E1300);
  (*(*(v24 - 8) + 56))(v20, v13, 1, v24);
  sub_10000BE18(v20, &qword_1008435B0, &qword_1006E12F8);

  v25 = v0[1];

  return v25();
}

uint64_t sub_1003F7564(const void *a1, uint64_t a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);

  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_1003F760C;

  return sub_1003F6F74();
}

uint64_t sub_1003F760C()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v6 = *v0;

  v2[2](v2);
  _Block_release(v2);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_1003F7748(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = type metadata accessor for RemoteMobileDocumentProviderUIState(0);
  v2[7] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[8] = swift_task_alloc();
  v5 = sub_100007224(&qword_1008434A8, &qword_1006E11F0);
  v2[9] = v5;
  v6 = *(v5 - 8);
  v2[10] = v6;
  v7 = *(v6 + 64) + 15;
  v2[11] = swift_task_alloc();
  v8 = *(*(sub_100007224(&qword_100843580, &qword_1006E12A8) - 8) + 64) + 15;
  v2[12] = swift_task_alloc();
  v9 = *(*(sub_100007224(&qword_1008435B0, &qword_1006E12F8) - 8) + 64) + 15;
  v2[13] = swift_task_alloc();
  v10 = type metadata accessor for MobileDocumentProviderViewServiceIdentifier();
  v2[14] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v2[15] = swift_task_alloc();
  v12 = type metadata accessor for Logger();
  v2[16] = v12;
  v13 = *(v12 - 8);
  v2[17] = v13;
  v14 = *(v13 + 64) + 15;
  v2[18] = swift_task_alloc();

  return _swift_task_switch(sub_1003F7940, v1, 0);
}

uint64_t sub_1003F7940()
{
  v41 = v0;
  v1 = v0[18];
  v2 = v0[5];
  defaultLogger()();
  v3 = v2;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();

  v6 = os_log_type_enabled(v4, v5);
  v8 = v0[17];
  v7 = v0[18];
  v9 = v0[16];
  if (v6)
  {
    v11 = v0[14];
    v10 = v0[15];
    v39 = v0[18];
    v12 = v0[5];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v40 = v14;
    *v13 = 136315138;
    XPCMobileDocumentProviderViewServiceIdentifier.value.getter();
    v15 = String.init<A>(describing:)();
    v17 = sub_100141FE4(v15, v16, &v40);

    *(v13 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v4, v5, "RemoteMobileDocumentProviderUIConnectionManager remoteViewDidAppear called with viewIdentifier %s", v13, 0xCu);
    sub_10000BB78(v14);

    (*(v8 + 8))(v39, v9);
  }

  else
  {

    (*(v8 + 8))(v7, v9);
  }

  v18 = v0[12];
  v19 = v0[9];
  v20 = v0[10];
  v21 = v0[6];
  v22 = OBJC_IVAR____TtC8coreidvd47RemoteMobileDocumentProviderUIConnectionManager_continuation;
  swift_beginAccess();
  sub_10000BBC4(v21 + v22, v18, &qword_100843580, &qword_1006E12A8);
  if ((*(v20 + 48))(v18, 1, v19))
  {
    sub_10000BE18(v0[12], &qword_100843580, &qword_1006E12A8);
    v23 = 1;
  }

  else
  {
    v24 = v0[12];
    v26 = v0[10];
    v25 = v0[11];
    v27 = v0[9];
    v28 = v0[7];
    v29 = v0[5];
    (*(v26 + 16))(v25, v24, v27);
    sub_10000BE18(v24, &qword_100843580, &qword_1006E12A8);
    XPCMobileDocumentProviderViewServiceIdentifier.value.getter();
    swift_storeEnumTagMultiPayload();
    AsyncThrowingStream.Continuation.yield(_:)();
    (*(v26 + 8))(v25, v27);
    v23 = 0;
  }

  v30 = v0[18];
  v31 = v0[15];
  v33 = v0[12];
  v32 = v0[13];
  v34 = v0[11];
  v35 = v0[8];
  v36 = sub_100007224(&unk_1008435B8, &unk_1006E1300);
  (*(*(v36 - 8) + 56))(v32, v23, 1, v36);
  sub_10000BE18(v32, &qword_1008435B0, &qword_1006E12F8);

  v37 = v0[1];

  return v37();
}

uint64_t sub_1003F7E2C(void *a1, void *aBlock, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v5 = a1;

  v6 = swift_task_alloc();
  v3[5] = v6;
  *v6 = v3;
  v6[1] = sub_1003FD44C;

  return sub_1003F7748(v5);
}

uint64_t sub_1003F7EF0(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = type metadata accessor for RemoteMobileDocumentProviderUIState(0);
  v2[7] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[8] = swift_task_alloc();
  v5 = sub_100007224(&qword_1008434A8, &qword_1006E11F0);
  v2[9] = v5;
  v6 = *(v5 - 8);
  v2[10] = v6;
  v7 = *(v6 + 64) + 15;
  v2[11] = swift_task_alloc();
  v8 = *(*(sub_100007224(&qword_100843580, &qword_1006E12A8) - 8) + 64) + 15;
  v2[12] = swift_task_alloc();
  v9 = *(*(sub_100007224(&qword_1008435B0, &qword_1006E12F8) - 8) + 64) + 15;
  v2[13] = swift_task_alloc();
  v10 = type metadata accessor for MobileDocumentProviderViewServiceIdentifier();
  v2[14] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v2[15] = swift_task_alloc();
  v12 = type metadata accessor for Logger();
  v2[16] = v12;
  v13 = *(v12 - 8);
  v2[17] = v13;
  v14 = *(v13 + 64) + 15;
  v2[18] = swift_task_alloc();

  return _swift_task_switch(sub_1003F80E8, v1, 0);
}

uint64_t sub_1003F80E8()
{
  v41 = v0;
  v1 = v0[18];
  v2 = v0[5];
  defaultLogger()();
  v3 = v2;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();

  v6 = os_log_type_enabled(v4, v5);
  v8 = v0[17];
  v7 = v0[18];
  v9 = v0[16];
  if (v6)
  {
    v11 = v0[14];
    v10 = v0[15];
    v39 = v0[18];
    v12 = v0[5];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v40 = v14;
    *v13 = 136315138;
    XPCMobileDocumentProviderViewServiceIdentifier.value.getter();
    v15 = String.init<A>(describing:)();
    v17 = sub_100141FE4(v15, v16, &v40);

    *(v13 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v4, v5, "MobileDocumentProviderUIConnectionManager remoteViewDidCancel called with viewIdentifier %s", v13, 0xCu);
    sub_10000BB78(v14);

    (*(v8 + 8))(v39, v9);
  }

  else
  {

    (*(v8 + 8))(v7, v9);
  }

  v18 = v0[12];
  v19 = v0[9];
  v20 = v0[10];
  v21 = v0[6];
  v22 = OBJC_IVAR____TtC8coreidvd47RemoteMobileDocumentProviderUIConnectionManager_continuation;
  swift_beginAccess();
  sub_10000BBC4(v21 + v22, v18, &qword_100843580, &qword_1006E12A8);
  if ((*(v20 + 48))(v18, 1, v19))
  {
    sub_10000BE18(v0[12], &qword_100843580, &qword_1006E12A8);
    v23 = 1;
  }

  else
  {
    v24 = v0[12];
    v26 = v0[10];
    v25 = v0[11];
    v27 = v0[9];
    v28 = v0[7];
    v29 = v0[5];
    (*(v26 + 16))(v25, v24, v27);
    sub_10000BE18(v24, &qword_100843580, &qword_1006E12A8);
    XPCMobileDocumentProviderViewServiceIdentifier.value.getter();
    swift_storeEnumTagMultiPayload();
    AsyncThrowingStream.Continuation.yield(_:)();
    (*(v26 + 8))(v25, v27);
    v23 = 0;
  }

  v30 = v0[18];
  v31 = v0[15];
  v33 = v0[12];
  v32 = v0[13];
  v34 = v0[11];
  v35 = v0[8];
  v36 = sub_100007224(&unk_1008435B8, &unk_1006E1300);
  (*(*(v36 - 8) + 56))(v32, v23, 1, v36);
  sub_10000BE18(v32, &qword_1008435B0, &qword_1006E12F8);

  v37 = v0[1];

  return v37();
}

uint64_t sub_1003F85D4(void *a1, void *aBlock, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v5 = a1;

  v6 = swift_task_alloc();
  v3[5] = v6;
  *v6 = v3;
  v6[1] = sub_1003FD44C;

  return sub_1003F7EF0(v5);
}

uint64_t sub_1003F8698()
{
  v1[15] = v0;
  v2 = type metadata accessor for DIPError.Code();
  v1[16] = v2;
  v3 = *(v2 - 8);
  v1[17] = v3;
  v4 = *(v3 + 64) + 15;
  v1[18] = swift_task_alloc();
  v5 = type metadata accessor for WebPresentmentRequest();
  v1[19] = v5;
  v6 = *(v5 - 8);
  v1[20] = v6;
  v7 = *(v6 + 64) + 15;
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();

  return _swift_task_switch(sub_1003F87C0, v0, 0);
}

uint64_t sub_1003F87C0()
{
  v1 = *(v0 + 120);
  v2 = OBJC_IVAR____TtC8coreidvd47RemoteMobileDocumentProviderUIConnectionManager_requestReleaser;
  swift_beginAccess();
  sub_10000BBC4(v1 + v2, v0 + 56, &qword_100841378, &qword_1006E12F0);
  if (*(v0 + 80))
  {
    sub_10001F358((v0 + 56), v0 + 16);
    v3 = *(v0 + 40);
    v4 = *(v0 + 48);
    sub_10000BA08((v0 + 16), v3);
    v5 = *(v4 + 24);
    v17 = (v5 + *v5);
    v6 = v5[1];
    v7 = swift_task_alloc();
    *(v0 + 184) = v7;
    *v7 = v0;
    v7[1] = sub_1003F8AC4;
    v8 = *(v0 + 176);

    return v17(v8, v3, v4);
  }

  else
  {
    v11 = *(v0 + 136);
    v10 = *(v0 + 144);
    v12 = *(v0 + 128);
    sub_10000BE18(v0 + 56, &qword_100841378, &qword_1006E12F0);
    (*(v11 + 104))(v10, enum case for DIPError.Code.unexpectedDaemonState(_:), v12);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1003FB71C(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v14 = *(v0 + 168);
    v13 = *(v0 + 176);
    v15 = *(v0 + 144);

    v16 = *(v0 + 8);

    return v16();
  }
}

uint64_t sub_1003F8AC4()
{
  v2 = *v1;
  v3 = *(*v1 + 184);
  v4 = *v1;
  *(*v1 + 192) = v0;

  v5 = *(v2 + 120);
  if (v0)
  {
    v6 = sub_1003F8CE0;
  }

  else
  {
    v6 = sub_1003F8BF0;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1003F8BF0()
{
  v1 = v0[22];
  v2 = v0[19];
  v3 = v0[20];
  v4 = v0[18];
  (*(v3 + 16))(v0[21], v1, v2);
  v5 = objc_allocWithZone(type metadata accessor for XPCWebPresentmentRequest());
  v6 = XPCWebPresentmentRequest.init(value:)();
  (*(v3 + 8))(v1, v2);
  sub_10000BB78(v0 + 2);

  v7 = v0[1];

  return v7(v6);
}

uint64_t sub_1003F8CE0()
{
  sub_10000BB78(v0 + 2);
  v1 = v0[24];
  v3 = v0[21];
  v2 = v0[22];
  v4 = v0[18];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1003F8EE0(const void *a1, uint64_t a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);

  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_1003F8F88;

  return sub_1003F8698();
}

uint64_t sub_1003F8F88(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 32);
  v7 = *(*v2 + 16);
  v8 = *v2;

  v9 = *(v5 + 24);
  if (v3)
  {
    v10 = _convertErrorToNSError(_:)();

    (v9)[2](v9, 0, v10);

    _Block_release(v9);
  }

  else
  {
    (v9)[2](v9, a1, 0);
    _Block_release(v9);
  }

  v11 = *(v8 + 8);

  return v11();
}

void sub_1003F912C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DIPError.Code();
  v44 = *(v4 - 8);
  v45 = v4;
  v5 = *(v44 + 64);
  __chkstk_darwin(v4);
  v47 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100007224(&qword_1008434A8, &qword_1006E11F0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v46 = &v40 - v10;
  v11 = sub_100007224(&qword_100843580, &qword_1006E12A8);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v40 - v16;
  v18 = type metadata accessor for Logger();
  v49 = *(v18 - 8);
  v19 = *(v49 + 64);
  __chkstk_darwin(v18);
  v21 = &v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();
  swift_errorRetain();
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.debug.getter();

  v24 = os_log_type_enabled(v22, v23);
  v48 = a1;
  if (v24)
  {
    v25 = swift_slowAlloc();
    v43 = v15;
    v26 = v25;
    v42 = swift_slowAlloc();
    v51[0] = v42;
    *v26 = 136446466;
    *(v26 + 4) = sub_100141FE4(0xD00000000000001CLL, 0x8000000100715420, v51);
    *(v26 + 12) = 2080;
    v50 = a1;
    swift_errorRetain();
    sub_100007224(&unk_1008435A0, &qword_1006E12E8);
    v27 = String.init<A>(describing:)();
    v29 = sub_100141FE4(v27, v28, v51);
    v41 = v18;
    v30 = v17;
    v31 = v8;
    v32 = v7;
    v33 = v2;
    v34 = v29;

    *(v26 + 14) = v34;
    v2 = v33;
    v7 = v32;
    v8 = v31;
    v17 = v30;
    _os_log_impl(&_mh_execute_header, v22, v23, "RemoteMobileDocumentProviderUIConnectionManager %{public}s %s", v26, 0x16u);
    swift_arrayDestroy();

    v15 = v43;

    (*(v49 + 8))(v21, v41);
  }

  else
  {

    (*(v49 + 8))(v21, v18);
  }

  v35 = OBJC_IVAR____TtC8coreidvd47RemoteMobileDocumentProviderUIConnectionManager_continuation;
  swift_beginAccess();
  sub_10000BBC4(v2 + v35, v17, &qword_100843580, &qword_1006E12A8);
  if ((*(v8 + 48))(v17, 1, v7))
  {
    sub_10000BE18(v17, &qword_100843580, &qword_1006E12A8);
  }

  else
  {
    v36 = v46;
    (*(v8 + 16))(v46, v17, v7);
    sub_10000BE18(v17, &qword_100843580, &qword_1006E12A8);
    v43 = "ifier";
    (*(v44 + 104))(v47, enum case for DIPError.Code.webPresentmentCancelled(_:), v45);
    v49 = v8;
    swift_errorRetain();
    v45 = sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    v37 = v2;
    sub_1003FB71C(&qword_100834130, &type metadata accessor for DIPError);
    v38 = swift_allocError();
    v8 = v49;
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    v50 = v38;
    v2 = v37;
    AsyncThrowingStream.Continuation.finish(throwing:)();
    (*(v8 + 8))(v36, v7);
  }

  (*(v8 + 56))(v15, 1, 1, v7);
  swift_beginAccess();
  sub_1003FB4D4(v15, v2 + v35);
  swift_endAccess();
  v39 = *(v2 + 112);
  os_unfair_lock_lock((v39 + 24));
  [*(v39 + 16) invalidate];
  os_unfair_lock_unlock((v39 + 24));
}

uint64_t sub_1003F979C()
{
  v1 = *(v0 + 16);
  sub_1003F912C(0);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1003F984C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return _swift_task_switch(sub_1003F986C, a4, 0);
}

uint64_t sub_1003F986C()
{
  v1 = v0[2];
  sub_1003F912C(v0[3]);
  v2 = v0[1];

  return v2();
}

uint64_t sub_1003F9940(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return _swift_task_switch(sub_1003F9960, a2, 0);
}

uint64_t sub_1003F9960()
{
  v1 = *(v0 + 40);
  v2 = sub_1003FB71C(&qword_1008435D0, type metadata accessor for RemoteMobileDocumentProviderUIConnectionManager);
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  v8 = *(v0 + 24);
  *(v3 + 16) = v8;
  *(v3 + 32) = v1;
  v4 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v5 = swift_task_alloc();
  *(v0 + 56) = v5;
  *v5 = v0;
  v5[1] = sub_1003F9AAC;
  v6 = *(v0 + 16);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v6, v8, v2, 0xD000000000000020, 0x8000000100715510, sub_1003FB818, v3, &type metadata for () + 8);
}

uint64_t sub_1003F9AAC()
{
  v2 = *(*v1 + 56);
  v3 = *v1;
  v3[8] = v0;

  if (v0)
  {
    v4 = v3[3];

    return _swift_task_switch(sub_1003F9BE8, v4, 0);
  }

  else
  {
    v5 = v3[6];

    v6 = v3[1];

    return v6();
  }
}

uint64_t sub_1003F9BE8()
{
  v1 = v0[6];

  v2 = v0[1];
  v3 = v0[8];

  return v2();
}

uint64_t sub_1003F9C4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = a3;
  v7 = sub_100007224(&qword_100834120, &unk_1006BFBA0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v23 - v10;
  v12 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v23 - v14;
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  (*(v8 + 16))(v11, a1, v7);
  v17 = sub_1003FB71C(&qword_1008435D0, type metadata accessor for RemoteMobileDocumentProviderUIConnectionManager);
  v18 = (*(v8 + 80) + 40) & ~*(v8 + 80);
  v19 = (v9 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  *(v20 + 2) = a2;
  *(v20 + 3) = v17;
  *(v20 + 4) = a2;
  (*(v8 + 32))(&v20[v18], v11, v7);
  v21 = &v20[v19];
  *v21 = v24;
  *(v21 + 1) = a4;
  swift_retain_n();

  sub_100130390(0, 0, v15, &unk_1006E1360, v20);
}

uint64_t sub_1003F9EA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a4;
  v7[4] = a5;
  return _swift_task_switch(sub_1003F9ECC, a4, 0);
}

uint64_t sub_1003F9ECC()
{
  v10 = v0;
  v1 = v0[4];
  v2 = *(v0[3] + 112);
  *(swift_task_alloc() + 16) = v1;
  os_unfair_lock_lock((v2 + 24));
  sub_1003FBA5C((v2 + 16), &v9);
  os_unfair_lock_unlock((v2 + 24));
  v3 = v0[5];
  v0[7] = v9;

  v8 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  v0[8] = v5;
  *v5 = v0;
  v5[1] = sub_1003FA05C;
  v6 = v0[6];

  return v8();
}

uint64_t sub_1003FA05C()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v4 = *v1;
  *(*v1 + 72) = v0;

  v5 = *(v2 + 24);
  if (v0)
  {
    v6 = sub_1003FA210;
  }

  else
  {
    v6 = sub_1003FA188;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1003FA188()
{
  v1 = v0[7];
  v2 = v0[4];
  sub_100007224(&qword_100834120, &unk_1006BFBA0);
  CheckedContinuation.resume(returning:)();
  swift_unknownObjectRelease();
  v3 = v0[1];

  return v3();
}

uint64_t sub_1003FA210()
{
  v1 = v0[7];
  v2 = v0[4];
  v0[2] = v0[9];
  swift_errorRetain();
  sub_100007224(&qword_100834120, &unk_1006BFBA0);
  CheckedContinuation.resume(throwing:)();
  swift_unknownObjectRelease();

  v3 = v0[1];

  return v3();
}

uint64_t sub_1003FA2C0(void **a1, uint64_t a2)
{
  v4 = type metadata accessor for DIPError.Code();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100007224(&qword_100834120, &unk_1006BFBA0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = aBlock - v12;
  v14 = *a1;
  if (v14)
  {
    (*(v10 + 16))(v13, a2, v9);
    v15 = (*(v10 + 80) + 16) & ~*(v10 + 80);
    v16 = swift_allocObject();
    (*(v10 + 32))(v16 + v15, v13, v9);
    aBlock[4] = sub_1003FBB20;
    aBlock[5] = v16;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1004DB3EC;
    aBlock[3] = &unk_10080F570;
    v17 = _Block_copy(aBlock);
    v18 = v14;

    v19 = [v18 remoteObjectProxyWithErrorHandler:v17];
    _Block_release(v17);
    _bridgeAnyObjectToAny(_:)();

    swift_unknownObjectRelease();
    sub_100007224(&qword_1008435D8, &qword_1006E2730);
    swift_dynamicCast();
    return aBlock[7];
  }

  else
  {
    (*(v5 + 104))(v8, enum case for DIPError.Code.unexpectedDaemonState(_:), v4);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1003FB71C(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    return swift_willThrow();
  }
}

uint64_t sub_1003FA678()
{
  swift_errorRetain();
  sub_100007224(&qword_100834120, &unk_1006BFBA0);
  return CheckedContinuation.resume(throwing:)();
}

uint64_t sub_1003FA6C8(uint64_t a1)
{
  v2 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v9 - v4;
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = a1;

  sub_1003E653C(0, 0, v5, &unk_1006E1348, v7);
}

uint64_t sub_1003FA7D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = type metadata accessor for Logger();
  v4[3] = v5;
  v6 = *(v5 - 8);
  v4[4] = v6;
  v7 = *(v6 + 64) + 15;
  v4[5] = swift_task_alloc();

  return _swift_task_switch(sub_1003FA894, 0, 0);
}

uint64_t sub_1003FA894()
{
  v13 = v0;
  v1 = v0[5];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  v4 = os_log_type_enabled(v2, v3);
  v6 = v0[4];
  v5 = v0[5];
  v7 = v0[3];
  if (v4)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v12 = v9;
    *v8 = 136446210;
    *(v8 + 4) = sub_100141FE4(0xD000000000000020, 0x8000000100715510, &v12);
    _os_log_impl(&_mh_execute_header, v2, v3, "MobileDocumentProviderUIConnectionManager %{public}s task cancelled, invalidating.", v8, 0xCu);
    sub_10000BB78(v9);
  }

  (*(v6 + 8))(v5, v7);
  v10 = v0[2];

  return _swift_task_switch(sub_1003FA9FC, v10, 0);
}

uint64_t sub_1003FA9FC()
{
  v1 = v0[5];
  v2 = v0[2];
  sub_1003F2DD8();

  v3 = v0[1];

  return v3();
}

id sub_1003FAA68()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  return sub_1003FAA9C();
}

id sub_1003FAA9C()
{
  v1 = sub_100007224(&qword_100843558, &qword_1006E1270);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v16 - v3;
  swift_defaultActor_initialize();
  sub_100007224(&unk_100843560, &qword_1006E1278);
  v5 = swift_allocObject();
  *(v5 + 24) = 0;
  *(v5 + 16) = 0;
  *(v0 + 14) = v5;
  v6 = type metadata accessor for MobileDocumentProviderViewServiceIdentifier();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  v7 = sub_100007224(&qword_100844300, &qword_1006E1280);
  v8 = *(v7 + 52);
  v9 = (*(v7 + 48) + 3) & 0x1FFFFFFFCLL;
  v10 = swift_allocObject();
  *(v10 + ((*(*v10 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  sub_1003FB06C(v4, v10 + *(*v10 + class metadata base offset for ManagedBuffer + 16));
  *(v0 + 15) = v10;
  v11 = OBJC_IVAR____TtC8coreidvd47RemoteMobileDocumentProviderUIConnectionManager_continuation;
  v12 = sub_100007224(&qword_1008434A8, &qword_1006E11F0);
  (*(*(v12 - 8) + 56))(&v0[v11], 1, 1, v12);
  v13 = &v0[OBJC_IVAR____TtC8coreidvd47RemoteMobileDocumentProviderUIConnectionManager_requestReleaser];
  v14 = type metadata accessor for RemoteMobileDocumentProviderUIConnectionManager(0);
  *v13 = 0u;
  *(v13 + 1) = 0u;
  *(v13 + 4) = 0;
  v16.receiver = v0;
  v16.super_class = v14;
  return objc_msgSendSuper2(&v16, "init");
}

uint64_t sub_1003FACE4()
{
  v1 = *(v0 + 112);

  v2 = *(v0 + 120);

  sub_10000BE18(v0 + OBJC_IVAR____TtC8coreidvd47RemoteMobileDocumentProviderUIConnectionManager_continuation, &qword_100843580, &qword_1006E12A8);
  sub_10000BE18(v0 + OBJC_IVAR____TtC8coreidvd47RemoteMobileDocumentProviderUIConnectionManager_requestReleaser, &qword_100841378, &qword_1006E12F0);
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

void sub_1003FAD8C()
{
  sub_1003FAE40();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_1003FAE40()
{
  if (!qword_1008434A0)
  {
    sub_10000B870(&qword_1008434A8, &qword_1006E11F0);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1008434A0);
    }
  }
}

uint64_t sub_1003FAEC4()
{
  result = type metadata accessor for MobileDocumentProviderViewServiceIdentifier();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for MobileDocumentProviderUserSelection();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for MobileDocumentProviderPresentmentResponse();
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1003FAF4C(uint64_t a1)
{
  v3 = sub_100007224(&unk_100843570, &unk_1006E1288);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v9[-v6];
  v10 = *v1;
  v11 = a1;
  type metadata accessor for RemoteMobileDocumentProviderUIState(0);
  (*(v4 + 104))(v7, enum case for AsyncThrowingStream.Continuation.BufferingPolicy.unbounded<A, B>(_:), v3);
  return AsyncThrowingStream.init<>(_:bufferingPolicy:_:)();
}

uint64_t sub_1003FB06C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007224(&qword_100843558, &qword_1006E1270);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003FB0E4()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1003FB124()
{
  v1 = type metadata accessor for MobileDocumentProviderViewServiceIdentifier();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = v4 + *(v2 + 64);
  v6 = sub_100007224(&qword_1008434A8, &qword_1006E11F0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  v12 = *(v0 + 16);
  swift_unknownObjectRelease();
  v13 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v9 + v10, v11 | 7);
}

uint64_t sub_1003FB288(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for MobileDocumentProviderViewServiceIdentifier() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(sub_100007224(&qword_1008434A8, &qword_1006E11F0) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_100041F04;

  return sub_1003F2250(a1, v10, v11, v12, v1 + v6, v1 + v9);
}

uint64_t sub_1003FB3F4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100041F04;

  return sub_1003F21D0(a1, v4, v5, v6);
}

uint64_t sub_1003FB4D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007224(&qword_100843580, &qword_1006E12A8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003FB560()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1003FB598(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_100027B9C;

  return sub_1004291AC(a1, a2, v7);
}

uint64_t sub_1003FB660(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100041F04;

  return sub_1003F9940(a1, v4, v5, v6);
}

uint64_t sub_1003FB71C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1003FB764(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100027B9C;

  return sub_1003FA7D4(a1, v4, v5, v6);
}

uint64_t sub_1003FB824()
{
  v1 = sub_100007224(&qword_100834120, &unk_1006BFBA0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);
  v8 = *(v0 + v5 + 8);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_1003FB914(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_100007224(&qword_100834120, &unk_1006BFBA0) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_100041F04;

  return sub_1003F9EA8(a1, v7, v8, v9, v1 + v6, v11, v12);
}

uint64_t sub_1003FBA5C@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1003FA2C0(a1, *(v2 + 16));
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1003FBA8C()
{
  v1 = sub_100007224(&qword_100834120, &unk_1006BFBA0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1003FBB20()
{
  v0 = *(*(sub_100007224(&qword_100834120, &unk_1006BFBA0) - 8) + 80);

  return sub_1003FA678();
}

uint64_t sub_1003FBB9C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100041F04;

  return sub_1003F3098(a1, v4, v5, v6);
}

uint64_t sub_1003FBC50(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = v23 - v10;
  defaultLogger()();
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v23[0] = v15;
    *v14 = 136446210;
    *(v14 + 4) = sub_100141FE4(0xD000000000000026, 0x8000000100715680, v23);
    _os_log_impl(&_mh_execute_header, v12, v13, "RemoteMobileDocumentProviderUIConnectionManager %{public}s", v14, 0xCu);
    sub_10000BB78(v15);
  }

  v16 = *(v5 + 8);
  v16(v11, v4);
  v17._countAndFlagsBits = 0xD000000000000037;
  v17._object = 0x8000000100715640;
  if (NSXPCConnection.isEntitled(_:)(v17))
  {
    v18 = *(v2 + 112);
    os_unfair_lock_lock((v18 + 24));
    sub_1003F470C((v18 + 16), a1, v2, v23);
    os_unfair_lock_unlock((v18 + 24));
    return LOBYTE(v23[0]);
  }

  else
  {
    defaultLogger()();
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "RemoteMobileDocumentProviderUIConnectionManager caller not entitled, rejecting.", v22, 2u);
    }

    v16(v9, v4);
    return 0;
  }
}

uint64_t sub_1003FBF14(uint64_t a1, uint64_t a2)
{
  v29 = a2;
  v3 = type metadata accessor for DIPError.Code();
  v26 = *(v3 - 8);
  v27 = v3;
  v4 = *(v26 + 64);
  __chkstk_darwin(v3);
  v28 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100007224(&qword_100843558, &qword_1006E1270);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v26 - v8;
  v10 = type metadata accessor for MobileDocumentProviderViewServiceIdentifier();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v26 - v16;
  v18 = *(a1 + 120);
  KeyPath = swift_getKeyPath();
  v30 = sub_1003FD338;
  v31 = KeyPath;
  v20 = *(*v18 + class metadata base offset for ManagedBuffer + 16);
  v21 = (*(*v18 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v18 + v21));
  sub_1003FD340(v18 + v20);
  os_unfair_lock_unlock((v18 + v21));

  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_10000BE18(v9, &qword_100843558, &qword_1006E1270);
    (*(v26 + 104))(v28, enum case for DIPError.Code.unexpectedDaemonState(_:), v27);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1003FB71C(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    v22 = _convertErrorToNSError(_:)();
    (*(v29 + 16))(v29, 0, v22);
  }

  else
  {
    (*(v11 + 32))(v17, v9, v10);
    (*(v11 + 16))(v15, v17, v10);
    v24 = objc_allocWithZone(type metadata accessor for XPCMobileDocumentProviderViewServiceIdentifier());
    v25 = XPCMobileDocumentProviderViewServiceIdentifier.init(value:)();
    (*(v29 + 16))(v29, v25, 0);

    return (*(v11 + 8))(v17, v10);
  }
}

uint64_t sub_1003FC4F4()
{
  v1 = v0;
  v2 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v18 - v4;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v19 = v14;
    *v13 = 136446210;
    *(v13 + 4) = sub_100141FE4(0xD000000000000022, 0x8000000100715590, &v19);
    _os_log_impl(&_mh_execute_header, v11, v12, "RemoteMobileDocumentProviderUIConnectionManager %{public}s", v13, 0xCu);
    sub_10000BB78(v14);
  }

  (*(v7 + 8))(v10, v6);
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = v1;

  sub_1003E653C(0, 0, v5, &unk_1006E13B0, v16);
}

uint64_t sub_1003FC778(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v23 - v6;
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();
  swift_errorRetain();
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v23 = v2;
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v24 = v17;
    *v15 = 136446466;
    *(v15 + 4) = sub_100141FE4(0xD00000000000002CLL, 0x8000000100715560, &v24);
    *(v15 + 12) = 2112;
    if (a1)
    {
      swift_errorRetain();
      v18 = _swift_stdlib_bridgeErrorToNSError();
      v19 = v18;
    }

    else
    {
      v18 = 0;
      v19 = 0;
    }

    *(v15 + 14) = v18;
    *v16 = v19;
    _os_log_impl(&_mh_execute_header, v13, v14, "RemoteMobileDocumentProviderUIConnectionManager %{public}s %@", v15, 0x16u);
    sub_10000BE18(v16, &unk_100833B50, &unk_1006D8FB0);

    sub_10000BB78(v17);

    result = (*(v9 + 8))(v12, v8);
    v2 = v23;
    if (a1)
    {
      goto LABEL_8;
    }
  }

  else
  {

    result = (*(v9 + 8))(v12, v8);
    if (a1)
    {
LABEL_8:
      v21 = type metadata accessor for TaskPriority();
      (*(*(v21 - 8) + 56))(v7, 1, 1, v21);
      v22 = swift_allocObject();
      v22[2] = 0;
      v22[3] = 0;
      v22[4] = v2;
      v22[5] = a1;
      swift_errorRetain();

      sub_1003E653C(0, 0, v7, &unk_1006E13A0, v22);
    }
  }

  return result;
}

uint64_t sub_1003FCAB4()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1003FCAFC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100041F04;

  return sub_1003F984C(a1, v4, v5, v7, v6);
}

uint64_t sub_1003FCBBC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100041F04;

  return sub_1003F977C(a1, v4, v5, v6);
}

uint64_t sub_1003FCC70()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100041F04;

  return sub_1003F8EE0(v2, v3);
}

uint64_t sub_1003FCD20()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100041F04;

  return sub_1003F85D4(v2, v3, v4);
}

uint64_t sub_1003FCDD8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100041F04;

  return sub_1003F7E2C(v2, v3, v4);
}

uint64_t sub_1003FCE90()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100041F04;

  return sub_1003F7564(v2, v3);
}

uint64_t sub_1003FCF3C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100041F04;

  return sub_1003F6F00(v2);
}

uint64_t sub_1003FCFE8()
{
  _Block_release(*(v0 + 16));
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1003FD028()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100041F04;

  return sub_1003F6CE0(v2, v3);
}

uint64_t sub_1003FD0D4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100041F04;

  return sub_1003F678C(v2, v3, v4);
}

uint64_t sub_1003FD188()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100041F04;

  return sub_1003F6058(v2, v3, v4);
}

uint64_t sub_1003FD23C()
{
  _Block_release(*(v0 + 24));
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1003FD284()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100041F04;

  return sub_1003F5A84(v2, v3, v4);
}

uint64_t sub_1003FD364(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1003FD380(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100041F04;

  return sub_1003F4C18(a1, v4, v5, v6);
}

uint64_t sub_1003FD4D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v34[2] = a2;
  v34[3] = a3;
  v34[1] = a4;
  v7 = sub_100007224(&unk_100844340, &qword_1006E15B0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = v34 - v9;
  v11 = type metadata accessor for MobileDocumentProviderOption();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v39 = v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v38 = v34 - v16;
  v17 = *(a1 + 16);
  if (v17)
  {
    v18 = *(type metadata accessor for MobileDocumentProviderRecord(0) - 8);
    v19 = (v12 + 48);
    v37 = v12;
    v20 = (v12 + 32);
    v21 = a1 + ((*(v18 + 80) + 32) & ~*(v18 + 80));
    v22 = *(v18 + 72);
    v23 = _swiftEmptyArrayStorage;
    v35 = v22;
    v36 = v19;
    do
    {
      v24 = v5;
      sub_1003FD9AC(v21, v10);
      if ((*v19)(v10, 1, v11) == 1)
      {
        sub_10000BE18(v10, &unk_100844340, &qword_1006E15B0);
      }

      else
      {
        v25 = *v20;
        v26 = v38;
        (*v20)(v38, v10, v11);
        v25(v39, v26, v11);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v23 = sub_1003C6640(0, v23[2] + 1, 1, v23);
        }

        v28 = v23[2];
        v27 = v23[3];
        v29 = v23;
        if (v28 >= v27 >> 1)
        {
          v29 = sub_1003C6640(v27 > 1, v28 + 1, 1, v23);
        }

        *(v29 + 16) = v28 + 1;
        v23 = v29;
        v25((v29 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v28), v39, v11);
        v5 = v24;
        v22 = v35;
        v19 = v36;
      }

      v21 += v22;
      --v17;
    }

    while (v17);
  }

  else
  {
    v23 = _swiftEmptyArrayStorage;
  }

  v41 = v23;
  sub_100007224(&qword_100843690, &qword_1006E15B8);
  v39 = sub_100007224(&qword_100843698, &qword_1006E15C0);
  v30 = *(*(v39 - 1) + 72);
  v31 = (*(*(v39 - 1) + 80) + 32) & ~*(*(v39 - 1) + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_1006BF520;
  swift_getKeyPath();
  KeyPathComparator.init<A>(_:order:)();
  v40 = v32;
  v38 = sub_100007224(&unk_100844350, &qword_1006E15F8);
  sub_100007224(&qword_1008436A0, &unk_1006E1600);
  sub_1000BA30C(&qword_1008436A8, &unk_100844350, &qword_1006E15F8);
  sub_1000BA30C(&qword_1008436B0, &qword_1008436A0, &unk_1006E1600);
  sub_1000BA30C(&unk_100844360, &qword_100843698, &qword_1006E15C0);
  Sequence.sorted<A, B>(using:)();

  return MobileDocumentProviderLocalOptionUIConfiguration.init(options:formattedOriginURL:)();
}

uint64_t sub_1003FD9AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v80 = type metadata accessor for MobileDocumentProviderRecord(0);
  v4 = *(*(v80 - 8) + 64);
  v5 = __chkstk_darwin(v80);
  v76 = &v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v75 = &v72 - v8;
  __chkstk_darwin(v7);
  v73 = &v72 - v9;
  v10 = type metadata accessor for Logger();
  v78 = *(v10 - 8);
  v79 = v10;
  v11 = *(v78 + 64);
  v12 = __chkstk_darwin(v10);
  v77 = &v72 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v74 = &v72 - v14;
  v15 = type metadata accessor for MobileDocumentProviderRecord.RecordSource(0);
  v16 = *(*(v15 - 8) + 64);
  v17 = __chkstk_darwin(v15);
  v19 = &v72 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v72 - v20;
  v22 = sub_100007224(&qword_10083ACF8, &qword_1006D8FC0);
  v23 = *(*(v22 - 8) + 64);
  v24 = __chkstk_darwin(v22 - 8);
  v26 = &v72 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v28 = &v72 - v27;
  sub_100400304(a1, v21, type metadata accessor for MobileDocumentProviderRecord.RecordSource);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v81 = a2;
  if (EnumCaseMultiPayload == 1)
  {
    v30 = *&v21[*(sub_100007224(&unk_100844370, &unk_1006DDF00) + 48)];

    v31 = type metadata accessor for BundleRecord();
    v32 = *(v31 - 8);
    (*(v32 + 32))(v28, v21, v31);
    (*(v32 + 56))(v28, 0, 1, v31);
  }

  else
  {
    v33 = sub_100007224(&unk_100844380, &unk_1006DDD60);
    sub_100330950(&v21[*(v33 + 48)], v28);
    v31 = type metadata accessor for BundleRecord();
    (*(*(v31 - 8) + 8))(v21, v31);
  }

  type metadata accessor for BundleRecord();
  v34 = *(v31 - 8);
  v35 = *(v34 + 48);
  if (v35(v28, 1, v31) == 1)
  {
    sub_10000BE18(v28, &qword_10083ACF8, &qword_1006D8FC0);
    sub_100400304(a1, v19, type metadata accessor for MobileDocumentProviderRecord.RecordSource);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v36 = *&v19[*(sub_100007224(&unk_100844370, &unk_1006DDF00) + 48)];

      (*(v34 + 56))(v26, 1, 1, v31);
      (*(v34 + 8))(v19, v31);
    }

    else
    {
      v37 = *(sub_100007224(&unk_100844380, &unk_1006DDD60) + 48);
      (*(v34 + 32))(v26, v19, v31);
      (*(v34 + 56))(v26, 0, 1, v31);
      sub_10000BE18(&v19[v37], &qword_10083ACF8, &qword_1006D8FC0);
    }

    if (v35(v26, 1, v31) == 1)
    {
      sub_10000BE18(v26, &qword_10083ACF8, &qword_1006D8FC0);
      v38 = v81;
      goto LABEL_15;
    }

    v28 = v26;
  }

  v38 = v81;
  v39 = BundleRecord.localizedName.getter();
  v41 = v40;
  (*(v34 + 8))(v28, v31);
  v83[0] = v39;
  v83[1] = v41;
  sub_1000ACCA0();
  Collection.nilIfEmpty.getter();

  if (!v82)
  {
LABEL_15:
    v46 = v77;
    defaultLogger()();
    v47 = v76;
    sub_100400304(a1, v76, type metadata accessor for MobileDocumentProviderRecord);
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = v46;
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v83[0] = v52;
      *v51 = 136315138;
      sub_100400304(v47, v75, type metadata accessor for MobileDocumentProviderRecord);
      v53 = String.init<A>(describing:)();
      v54 = v47;
      v55 = v53;
      v57 = v56;
      sub_100326E1C(v54);
      v58 = sub_100141FE4(v55, v57, v83);

      *(v51 + 4) = v58;
      _os_log_impl(&_mh_execute_header, v48, v49, "RemoteMobileDocumentProviderUIPresenter could not find localized display name for record %s. Not sending to selection UI", v51, 0xCu);
      sub_10000BB78(v52);

      (*(v78 + 8))(v50, v79);
    }

    else
    {

      sub_100326E1C(v47);
      (*(v78 + 8))(v46, v79);
    }

LABEL_18:
    v45 = 1;
    goto LABEL_19;
  }

  sub_100330A28();
  if (!v42)
  {
    sub_100330370();
    if (!v43)
    {

      v61 = v74;
      defaultLogger()();
      v62 = a1;
      v63 = v73;
      sub_100400304(v62, v73, type metadata accessor for MobileDocumentProviderRecord);
      v64 = Logger.logObject.getter();
      v65 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v64, v65))
      {
        v66 = swift_slowAlloc();
        v67 = swift_slowAlloc();
        v83[0] = v67;
        *v66 = 136315138;
        sub_100400304(v63, v75, type metadata accessor for MobileDocumentProviderRecord);
        v68 = String.init<A>(describing:)();
        v70 = v69;
        sub_100326E1C(v63);
        v71 = sub_100141FE4(v68, v70, v83);

        *(v66 + 4) = v71;
        _os_log_impl(&_mh_execute_header, v64, v65, "RemoteMobileDocumentProviderUIPresenter could not find bundleIdentifier %s. Not sending to selection UI", v66, 0xCu);
        sub_10000BB78(v67);
      }

      else
      {

        sub_100326E1C(v63);
      }

      (*(v78 + 8))(v61, v79);
      goto LABEL_18;
    }
  }

  sub_10032FA04();
  v44 = *(a1 + *(v80 + 20));

  MobileDocumentProviderOption.init(recordIdentifier:bundleIdentifier:localizedDisplayName:availableDocumentTypes:)();
  v45 = 0;
LABEL_19:
  v59 = type metadata accessor for MobileDocumentProviderOption();
  return (*(*(v59 - 8) + 56))(v38, v45, 1, v59);
}

uint64_t sub_1003FE2F4@<X0>(uint64_t *a1@<X8>)
{
  result = MobileDocumentProviderOption.localizedDisplayName.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1003FE320(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[14] = a5;
  v6[15] = v5;
  v6[12] = a3;
  v6[13] = a4;
  v6[10] = a1;
  v6[11] = a2;
  v7 = type metadata accessor for MobileDocumentProviderViewServiceIdentifier();
  v6[16] = v7;
  v8 = *(v7 - 8);
  v6[17] = v8;
  v9 = *(v8 + 64) + 15;
  v6[18] = swift_task_alloc();
  v10 = type metadata accessor for MobileDocumentProviderLocalOptionUIConfiguration();
  v6[19] = v10;
  v11 = *(v10 - 8);
  v6[20] = v11;
  v12 = *(v11 + 64) + 15;
  v6[21] = swift_task_alloc();
  v13 = type metadata accessor for Logger();
  v6[22] = v13;
  v14 = *(v13 - 8);
  v6[23] = v14;
  v15 = *(v14 + 64) + 15;
  v6[24] = swift_task_alloc();

  return _swift_task_switch(sub_1003FE4A0, 0, 0);
}

uint64_t sub_1003FE4A0()
{
  v1 = v0[24];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "RemoteMobileDocumentProviderUIPresenter presented user selection sheet", v4, 2u);
  }

  v6 = v0[23];
  v5 = v0[24];
  v7 = v0[22];
  v8 = v0[15];

  (*(v6 + 8))(v5, v7);
  v9 = sub_10000BA08((v8 + 16), *(v8 + 40));
  v10 = *v9;
  v0[25] = *v9;

  return _swift_task_switch(sub_1003FE5BC, v10, 0);
}

uint64_t sub_1003FE5BC()
{
  v1 = *(v0 + 200);
  sub_100020260(*(v0 + 112), v0 + 16);
  v2 = OBJC_IVAR____TtC8coreidvd47RemoteMobileDocumentProviderUIConnectionManager_requestReleaser;
  swift_beginAccess();
  sub_100400178(v0 + 16, v1 + v2);
  swift_endAccess();

  return _swift_task_switch(sub_1003FE65C, 0, 0);
}

uint64_t sub_1003FE65C()
{
  v1 = v0[15];
  sub_1003FD4D8(v0[11], v0[12], v0[13], v0[21]);
  v2 = v0[24];
  v3 = v0[21];
  v4 = v0[19];
  v5 = v0[20];
  v7 = v0[17];
  v6 = v0[18];
  v8 = v0[16];
  sub_10000BA08((v0[15] + 16), *(v0[15] + 40));
  (*(v5 + 16))(v6, v3, v4);
  (*(v7 + 104))(v6, enum case for MobileDocumentProviderViewServiceIdentifier.selectionView(_:), v8);
  type metadata accessor for RemoteMobileDocumentProviderUIConnectionManager(0);
  sub_1003FAF4C(v6);
  (*(v7 + 8))(v6, v8);
  (*(v5 + 8))(v3, v4);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1003FE810(uint64_t a1, uint64_t a2)
{
  v3[11] = a2;
  v3[12] = v2;
  v3[10] = a1;
  v4 = type metadata accessor for DIPError.Code();
  v3[13] = v4;
  v5 = *(v4 - 8);
  v3[14] = v5;
  v6 = *(v5 + 64) + 15;
  v3[15] = swift_task_alloc();
  v7 = type metadata accessor for MobileDocumentProviderPresentmentRequest();
  v3[16] = v7;
  v8 = *(v7 - 8);
  v3[17] = v8;
  v3[18] = *(v8 + 64);
  v3[19] = swift_task_alloc();

  return _swift_task_switch(sub_1003FE938, 0, 0);
}

uint64_t sub_1003FE938()
{
  v1 = sub_10000BA08((*(v0 + 96) + 16), *(*(v0 + 96) + 40));
  v2 = *v1;
  *(v0 + 160) = *v1;

  return _swift_task_switch(sub_1003FE9AC, v2, 0);
}

uint64_t sub_1003FE9AC()
{
  v1 = *(v0 + 160);
  sub_100020260(*(v0 + 88), v0 + 16);
  v2 = OBJC_IVAR____TtC8coreidvd47RemoteMobileDocumentProviderUIConnectionManager_requestReleaser;
  swift_beginAccess();
  sub_100400178(v0 + 16, v1 + v2);
  swift_endAccess();

  return _swift_task_switch(sub_1003FEA4C, 0, 0);
}

uint64_t sub_1003FEA4C()
{
  v1 = sub_10000BA08((*(v0 + 96) + 16), *(*(v0 + 96) + 40));
  v2 = *v1;
  *(v0 + 168) = *v1;

  return _swift_task_switch(sub_1003FEAC0, v2, 0);
}

uint64_t sub_1003FEAC0()
{
  v1 = v0[19];
  v2 = v0[16];
  v3 = v0[17];
  (*(v3 + 16))(v1, v0[10], v2);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = swift_allocObject();
  v0[22] = v5;
  (*(v3 + 32))(v5 + v4, v1, v2);
  v6 = swift_task_alloc();
  v0[23] = v6;
  *v6 = v0;
  v6[1] = sub_1003FEBF8;
  v7 = v0[21];

  return sub_1003F387C("updateToAuthorizationView(presentmentRequest:)", 46, 2, &unk_1006E15A0, v5);
}

uint64_t sub_1003FEBF8()
{
  v2 = *(*v1 + 184);
  v3 = *v1;
  v3[24] = v0;

  if (v0)
  {
    v4 = v3[21];

    return _swift_task_switch(sub_1003FED50, v4, 0);
  }

  else
  {
    v5 = v3[22];
    v6 = v3[19];
    v7 = v3[15];

    v8 = v3[1];

    return v8();
  }
}

uint64_t sub_1003FED50()
{
  v1 = *(v0 + 176);

  return _swift_task_switch(sub_1003FEDB8, 0, 0);
}

uint64_t sub_1003FEDB8()
{
  v1 = v0[24];
  v2 = v0[19];
  (*(v0[14] + 104))(v0[15], enum case for DIPError.Code.internalError(_:), v0[13]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100037214();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v3 = v0[1];

  return v3();
}

uint64_t sub_1003FEF1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[12] = a3;
  v4[13] = v3;
  v4[10] = a1;
  v4[11] = a2;
  v5 = type metadata accessor for MobileDocumentProviderViewServiceIdentifier();
  v4[14] = v5;
  v6 = *(v5 - 8);
  v4[15] = v6;
  v7 = *(v6 + 64) + 15;
  v4[16] = swift_task_alloc();

  return _swift_task_switch(sub_1003FEFE0, 0, 0);
}

uint64_t sub_1003FEFE0()
{
  v1 = sub_10000BA08((*(v0 + 104) + 16), *(*(v0 + 104) + 40));
  v2 = *v1;
  *(v0 + 136) = *v1;

  return _swift_task_switch(sub_1003FF054, v2, 0);
}

uint64_t sub_1003FF054()
{
  v1 = *(v0 + 136);
  sub_100020260(*(v0 + 96), v0 + 16);
  v2 = OBJC_IVAR____TtC8coreidvd47RemoteMobileDocumentProviderUIConnectionManager_requestReleaser;
  swift_beginAccess();
  sub_100400178(v0 + 16, v1 + v2);
  swift_endAccess();

  return _swift_task_switch(sub_1003FF0F4, 0, 0);
}

uint64_t sub_1003FF0F4()
{
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[14];
  v5 = v0[10];
  v4 = v0[11];
  sub_10000BA08((v0[13] + 16), *(v0[13] + 40));
  v6 = type metadata accessor for MobileDocumentProviderPresentmentRequest();
  (*(*(v6 - 8) + 16))(v1, v4, v6);
  (*(v2 + 104))(v1, enum case for MobileDocumentProviderViewServiceIdentifier.authorizationView(_:), v3);
  type metadata accessor for RemoteMobileDocumentProviderUIConnectionManager(0);
  sub_1003FAF4C(v1);
  (*(v2 + 8))(v1, v3);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1003FF244(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[13] = a4;
  v5[14] = v4;
  v5[11] = a2;
  v5[12] = a3;
  v5[10] = a1;
  v6 = type metadata accessor for DIPError.Code();
  v5[15] = v6;
  v7 = *(v6 - 8);
  v5[16] = v7;
  v8 = *(v7 + 64) + 15;
  v5[17] = swift_task_alloc();
  v9 = type metadata accessor for MobileDocumentProviderLocalOptionUIConfiguration();
  v5[18] = v9;
  v10 = *(v9 - 8);
  v5[19] = v10;
  v5[20] = *(v10 + 64);
  v5[21] = swift_task_alloc();
  v5[22] = swift_task_alloc();

  return _swift_task_switch(sub_1003FF37C, 0, 0);
}

uint64_t sub_1003FF37C()
{
  v1 = sub_10000BA08((*(v0 + 112) + 16), *(*(v0 + 112) + 40));
  v2 = *v1;
  *(v0 + 184) = *v1;

  return _swift_task_switch(sub_1003FF3F0, v2, 0);
}

uint64_t sub_1003FF3F0()
{
  v1 = *(v0 + 184);
  sub_100020260(*(v0 + 104), v0 + 16);
  v2 = OBJC_IVAR____TtC8coreidvd47RemoteMobileDocumentProviderUIConnectionManager_requestReleaser;
  swift_beginAccess();
  sub_100400178(v0 + 16, v1 + v2);
  swift_endAccess();

  return _swift_task_switch(sub_1003FF490, 0, 0);
}

uint64_t sub_1003FF490()
{
  v1 = v0[14];
  sub_1003FD4D8(v0[10], v0[11], v0[12], v0[22]);
  v2 = sub_10000BA08((v0[14] + 16), *(v0[14] + 40));
  v3 = *v2;
  v0[24] = *v2;

  return _swift_task_switch(sub_1003FF67C, v3, 0);
}

uint64_t sub_1003FF67C()
{
  v1 = v0[21];
  v2 = v0[19];
  v3 = v0[18];
  (*(v2 + 16))(v1, v0[22], v3);
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = swift_allocObject();
  v0[25] = v5;
  (*(v2 + 32))(v5 + v4, v1, v3);
  v6 = swift_task_alloc();
  v0[26] = v6;
  *v6 = v0;
  v6[1] = sub_1003FF7B4;
  v7 = v0[24];

  return sub_1003F387C("updateToSelectionView(configuration:)", 37, 2, &unk_1006E1628, v5);
}

uint64_t sub_1003FF7B4()
{
  v2 = *v1;
  v3 = *(*v1 + 208);
  v8 = *v1;
  *(*v1 + 216) = v0;

  if (v0)
  {
    v4 = *(v2 + 192);
    v5 = sub_1003FF974;
  }

  else
  {
    v6 = *(v2 + 200);

    v5 = sub_1003FF8D8;
    v4 = 0;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_1003FF8D8()
{
  v1 = v0[21];
  v2 = v0[17];
  (*(v0[19] + 8))(v0[22], v0[18]);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1003FF974()
{
  v1 = *(v0 + 200);

  return _swift_task_switch(sub_1003FF9DC, 0, 0);
}

uint64_t sub_1003FF9DC()
{
  (*(v0[19] + 8))(v0[22], v0[18]);
  v1 = v0[27];
  v2 = v0[21];
  v3 = v0[22];
  (*(v0[16] + 104))(v0[17], enum case for DIPError.Code.internalError(_:), v0[15]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100037214();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v4 = v0[1];

  return v4();
}