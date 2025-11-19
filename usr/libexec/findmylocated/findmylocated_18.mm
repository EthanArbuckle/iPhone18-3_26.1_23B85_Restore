uint64_t sub_1001CEC24(void *a1, void *a2, uint64_t a3)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a3 + 20);

  return static URL.== infix(_:_:)();
}

unint64_t sub_1001CECAC()
{
  result = qword_1005AF700;
  if (!qword_1005AF700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AF700);
  }

  return result;
}

uint64_t sub_1001CED00(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (v3)
  {
    if (v4)
    {
      v5 = *a1 == *a2 && v3 == v4;
      if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        return 1;
      }
    }
  }

  else if (!v4)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_1001CED5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_10004B564(&qword_1005A9DB8, &unk_1004CC1D0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = v20 - v12;
  if (*(a1 + 16))
  {
    v14 = sub_1000110D8(a2, a3);
    if (v15)
    {
      sub_10000709C(*(a1 + 56) + 32 * v14, v20);
      if (swift_dynamicCast())
      {
        URL.init(string:)();

        v16 = type metadata accessor for URL();
        v17 = *(v16 - 8);
        if ((*(v17 + 48))(v13, 1, v16) != 1)
        {
          return (*(v17 + 32))(a5, v13, v16);
        }

        sub_100002CE0(v13, &qword_1005A9DB8, &unk_1004CC1D0);
      }
    }
  }

  v20[0] = a2;
  v20[1] = a3;
  v21 = 0;
  sub_1000C7488();
  swift_willThrowTypedImpl();

  *a4 = a2;
  *(a4 + 8) = a3;
  *(a4 + 16) = 0;
  return result;
}

uint64_t sub_1001CEF30(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[3];
  v6 = a2[3];
  if (v5)
  {
    if (!v6)
    {
      return 0;
    }

    v7 = a1[2] == a2[2] && v5 == v6;
    if (!v7 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  if ((a1[4] != a2[4] || a1[5] != a2[5]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v8 = type metadata accessor for Credentials(0);
  v9 = v8[7];
  if ((static URL.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v10 = v8[8];
  v11 = *(a1 + v10) == *(a2 + v10) && *(a1 + v10 + 8) == *(a2 + v10 + 8);
  if (!v11 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v12 = *(type metadata accessor for Credentials.SecureLocationsProperties(0) + 20);
  if ((static URL.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v13 = v8[9];
  v14 = (a1 + v13);
  v15 = *(a1 + v13 + 8);
  v16 = (a2 + v13);
  v17 = v16[1];
  if (v15)
  {
    if (v17 && (*v14 == *v16 && v15 == v17 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v17)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_1001CF09C(void *a1, id a2)
{
  v4 = [a2 aa_fmfAccount];
  if (v4)
  {
    v5 = v4;
    v6 = [a1 credentialForAccount:v4];
    if (v6)
    {
      v7 = v6;
      v8 = [v6 credentialItemForKey:ACFindMyFriendsAppTokenKey];
      if (v8)
      {
        v9 = v8;
        v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();

        return v10;
      }

      else
      {
        sub_1000C7488();
        swift_willThrowTypedImpl();

        return 6;
      }
    }

    else
    {
      sub_1000C7488();
      swift_willThrowTypedImpl();

      return 5;
    }
  }

  else
  {
    sub_1000C7488();
    swift_willThrowTypedImpl();

    return 4;
  }
}

uint64_t sub_1001CF248(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1001CF2A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001CF310(void *a1, id a2)
{
  v4 = [a2 dataclassProperties];
  if (!v4)
  {
    v15 = 0u;
    v16 = 0u;
LABEL_13:
    sub_100002CE0(&v15, &qword_1005A9680, &qword_1004C32A0);
    goto LABEL_14;
  }

  v5 = v4;
  *&v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(&v13 + 1) = v6;
  v7 = [v5 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();

  if (v7)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v13 = 0u;
    v14 = 0u;
  }

  v15 = v13;
  v16 = v14;
  if (!*(&v14 + 1))
  {
    goto LABEL_13;
  }

  sub_10004B564(&qword_1005A9DC8, &unk_1004D0DC0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_14:
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *&v15 = v10;
    *(&v15 + 1) = v11;
    LOBYTE(v16) = 1;
    sub_1000C7488();
    swift_willThrowTypedImpl();

    return v10;
  }

  if (*(v13 + 16) && (v8 = sub_1000110D8(0x6E74736F48707061, 0xEB00000000656D61), (v9 & 1) != 0))
  {
    sub_10000709C(*(v13 + 56) + 32 * v8, &v15);

    if (swift_dynamicCast())
    {
      return v13;
    }

    else
    {
      return 0;
    }
  }

  else
  {

    return 0;
  }
}

unint64_t sub_1001CF554()
{
  result = qword_1005AF708;
  if (!qword_1005AF708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AF708);
  }

  return result;
}

uint64_t sub_1001CF5A8(uint64_t a1)
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

__n128 sub_1001CF5C4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1001CF5D8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_1001CF620(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_1001CF664(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_1001CF698()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t sub_1001CF6CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 288) = a8;
  *(v9 + 296) = v8;
  *(v9 + 272) = a6;
  *(v9 + 280) = a7;
  *(v9 + 576) = a5;
  *(v9 + 256) = a3;
  *(v9 + 264) = a4;
  *(v9 + 240) = a1;
  *(v9 + 248) = a2;
  v10 = type metadata accessor for URLError.Code();
  *(v9 + 304) = v10;
  v11 = *(v10 - 8);
  *(v9 + 312) = v11;
  v12 = *(v11 + 64) + 15;
  *(v9 + 320) = swift_task_alloc();
  *(v9 + 328) = swift_task_alloc();
  v13 = type metadata accessor for URLError();
  *(v9 + 336) = v13;
  v14 = *(v13 - 8);
  *(v9 + 344) = v14;
  v15 = *(v14 + 64) + 15;
  *(v9 + 352) = swift_task_alloc();
  *(v9 + 360) = swift_task_alloc();
  v16 = type metadata accessor for URLComponents();
  *(v9 + 368) = v16;
  v17 = *(v16 - 8);
  *(v9 + 376) = v17;
  v18 = *(v17 + 64) + 15;
  *(v9 + 384) = swift_task_alloc();
  *(v9 + 392) = swift_task_alloc();
  *(v9 + 400) = swift_task_alloc();
  v19 = *(*(sub_10004B564(&qword_1005A9DB8, &unk_1004CC1D0) - 8) + 64) + 15;
  *(v9 + 408) = swift_task_alloc();
  *(v9 + 416) = swift_task_alloc();
  *(v9 + 424) = swift_task_alloc();
  v20 = type metadata accessor for Response();
  *(v9 + 432) = v20;
  v21 = *(v20 - 8);
  *(v9 + 440) = v21;
  v22 = *(v21 + 64) + 15;
  *(v9 + 448) = swift_task_alloc();
  type metadata accessor for ServerInteractionController();
  sub_1001D2930(&qword_1005AF710, &type metadata accessor for ServerInteractionController);
  v24 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v9 + 456) = v24;
  *(v9 + 464) = v23;

  return _swift_task_switch(sub_1001CF984, v24, v23);
}

uint64_t sub_1001CF984()
{
  sub_10019DCA4(*(v0 + 272), *(v0 + 248), *(v0 + 256), *(v0 + 264), *(v0 + 576), v0 + 16);
  sub_100011004(v0 + 96, v0 + 136);
  *(v0 + 192) = 0u;
  *(v0 + 176) = 0u;
  *(v0 + 208) = 0;
  v1 = *(&async function pointer to dispatch thunk of ServerInteractionController.send(endpoint:content:credential:pinningCredential:) + 1);
  v6 = (&async function pointer to dispatch thunk of ServerInteractionController.send(endpoint:content:credential:pinningCredential:) + async function pointer to dispatch thunk of ServerInteractionController.send(endpoint:content:credential:pinningCredential:));
  v2 = swift_task_alloc();
  *(v0 + 472) = v2;
  *v2 = v0;
  v2[1] = sub_1001CFB50;
  v3 = *(v0 + 448);
  v4 = *(v0 + 296);

  return v6(v3, v0 + 16, v0 + 56, v0 + 136, v0 + 176);
}

uint64_t sub_1001CFB50()
{
  v2 = *v1;
  v3 = *(*v1 + 472);
  v4 = *v1;
  v2[60] = v0;

  sub_100002CE0((v2 + 22), &qword_1005AF718, &qword_1004D0EB0);
  sub_100002CE0((v2 + 17), &qword_1005A9138, &qword_1004C2600);
  v5 = v2[57];
  v6 = v2[58];
  if (v0)
  {
    v7 = sub_1001D1DD8;
  }

  else
  {
    v7 = sub_1001CFCA0;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_1001CFCA0()
{
  v53 = v0;
  v1 = *(v0 + 448);
  v2 = Response.statusCode.getter();
  if ((v2 - 500) <= 0x63)
  {
    v3 = *(v0 + 288);
    v4 = *(v0 + 448);
    if (v3 < *(v0 + 280))
    {
      v5 = *(v0 + 424);
      v6 = *(v0 + 400);
      v7 = *(v0 + 368);
      v8 = *(v0 + 376);
      v9 = Response.statusCode.getter();
      v10 = *(v0 + 48);
      sub_100011AEC((v0 + 16), *(v0 + 40));
      dispatch thunk of Endpoint.urlComponents.getter();
      URLComponents.url.getter();
      (*(v8 + 8))(v6, v7);
      v11 = type metadata accessor for URL();
      v12 = *(v11 - 8);
      v13 = (*(v12 + 48))(v5, 1, v11);
      v14 = *(v0 + 424);
      if (v13 == 1)
      {
        sub_100002CE0(*(v0 + 424), &qword_1005A9DB8, &unk_1004CC1D0);
        v15 = 0xE300000000000000;
        v16 = 7104878;
      }

      else
      {
        v16 = URL.absoluteString.getter();
        v15 = v33;
        (*(v12 + 8))(v14, v11);
      }

      v34 = v3 + 1;
      if (qword_1005A7F88 != -1)
      {
        swift_once();
      }

      v35 = type metadata accessor for Logger();
      sub_10000A6F0(v35, qword_1005DFC28);

      v36 = Logger.logObject.getter();
      v37 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v52 = v39;
        *v38 = 136446722;
        v40 = sub_10000D01C(v16, v15, &v52);

        *(v38 + 4) = v40;
        *(v38 + 12) = 2048;
        *(v38 + 14) = v9;
        *(v38 + 22) = 2048;
        *(v38 + 24) = v34;
        _os_log_impl(&_mh_execute_header, v36, v37, "Retrying request to %{public}s due to %ld response, retry attempt %ld  ", v38, 0x20u);
        sub_100004984(v39);
      }

      else
      {
      }

      v41 = swift_task_alloc();
      *(v0 + 488) = v41;
      *v41 = v0;
      v41[1] = sub_1001D0144;
      v42 = *(v0 + 296);
      v43 = *(v0 + 272);
      v44 = *(v0 + 280);
      v45 = *(v0 + 256);
      v46 = *(v0 + 264);
      v47 = *(v0 + 240);
      v48 = *(v0 + 248);
      v49 = *(v0 + 576);

      return sub_1001CF6CC(v47, v48, v45, v46, v49, v43, v44, v34);
    }

    goto LABEL_11;
  }

  if (v2 != 401 || *(v0 + 288) >= *(v0 + 280))
  {
    v4 = *(v0 + 448);
LABEL_11:
    v19 = *(v0 + 432);
    v20 = *(v0 + 440);
    v21 = *(v0 + 240);
    sub_10019E608(v0 + 16);
    (*(v20 + 32))(v21, v4, v19);
    v22 = *(v0 + 448);
    v23 = *(v0 + 416);
    v24 = *(v0 + 424);
    v26 = *(v0 + 400);
    v25 = *(v0 + 408);
    v28 = *(v0 + 384);
    v27 = *(v0 + 392);
    v30 = *(v0 + 352);
    v29 = *(v0 + 360);
    v31 = *(v0 + 328);
    v51 = *(v0 + 320);

    v32 = *(v0 + 8);

    return v32();
  }

  v17 = async function pointer to daemon.getter[1];
  v18 = swift_task_alloc();
  *(v0 + 504) = v18;
  *v18 = v0;
  v18[1] = sub_1001D0944;

  return daemon.getter();
}

uint64_t sub_1001D0144()
{
  v2 = *v1;
  v3 = *(*v1 + 488);
  v4 = *v1;
  *(*v1 + 496) = v0;

  v5 = *(v2 + 464);
  v6 = *(v2 + 456);
  if (v0)
  {
    v7 = sub_1001D038C;
  }

  else
  {
    v7 = sub_1001D0280;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_1001D0280()
{
  (*(v0[55] + 8))(v0[56], v0[54]);
  sub_10019E608((v0 + 2));
  v1 = v0[56];
  v2 = v0[52];
  v3 = v0[53];
  v5 = v0[50];
  v4 = v0[51];
  v7 = v0[48];
  v6 = v0[49];
  v9 = v0[44];
  v8 = v0[45];
  v10 = v0[41];
  v13 = v0[40];

  v11 = v0[1];

  return v11();
}

uint64_t sub_1001D038C()
{
  v57 = v0;
  (*(*(v0 + 440) + 8))(*(v0 + 448), *(v0 + 432));
  *(v0 + 216) = *(v0 + 496);
  v1 = *(v0 + 360);
  v2 = *(v0 + 336);
  swift_errorRetain();
  sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
  if (!swift_dynamicCast())
  {
    goto LABEL_7;
  }

  v4 = *(v0 + 320);
  v3 = *(v0 + 328);
  v6 = *(v0 + 304);
  v5 = *(v0 + 312);
  (*(*(v0 + 344) + 32))(*(v0 + 352), *(v0 + 360), *(v0 + 336));
  sub_1001D2930(&qword_1005AF720, &type metadata accessor for URLError);
  _BridgedStoredNSError.code.getter();
  static URLError.Code.timedOut.getter();
  sub_1001D2930(&qword_1005AF728, &type metadata accessor for URLError.Code);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v7 = *(v5 + 8);
  v7(v4, v6);
  v7(v3, v6);
  if (*(v0 + 224) != *(v0 + 232))
  {
    (*(*(v0 + 344) + 8))(*(v0 + 352), *(v0 + 336));
LABEL_7:
    v22 = *(v0 + 216);

    swift_willThrow();
    sub_10019E608(v0 + 16);
    goto LABEL_8;
  }

  v8 = *(v0 + 280);
  v9 = *(v0 + 288);

  if (v9 < v8)
  {
    v10 = *(v0 + 408);
    v12 = *(v0 + 376);
    v11 = *(v0 + 384);
    v13 = *(v0 + 368);
    v14 = *(v0 + 288);
    v15 = *(v0 + 48);
    sub_100011AEC((v0 + 16), *(v0 + 40));
    dispatch thunk of Endpoint.urlComponents.getter();
    URLComponents.url.getter();
    (*(v12 + 8))(v11, v13);
    v16 = type metadata accessor for URL();
    v17 = *(v16 - 8);
    v18 = (*(v17 + 48))(v10, 1, v16);
    v19 = *(v0 + 408);
    if (v18 == 1)
    {
      sub_100002CE0(*(v0 + 408), &qword_1005A9DB8, &unk_1004CC1D0);
      v20 = 0xE300000000000000;
      v21 = 7104878;
    }

    else
    {
      v21 = URL.absoluteString.getter();
      v20 = v39;
      (*(v17 + 8))(v19, v16);
    }

    if (qword_1005A7F88 != -1)
    {
      swift_once();
    }

    v40 = type metadata accessor for Logger();
    sub_10000A6F0(v40, qword_1005DFC28);

    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v56 = v44;
      *v43 = 136446466;
      v45 = sub_10000D01C(v21, v20, &v56);

      *(v43 + 4) = v45;
      *(v43 + 12) = 2048;
      *(v43 + 14) = v14 + 1;
      _os_log_impl(&_mh_execute_header, v41, v42, "Retrying request to %{public}s due to request time out, retry attempt %ld  ", v43, 0x16u);
      sub_100004984(v44);
    }

    else
    {
    }

    v46 = swift_task_alloc();
    *(v0 + 560) = v46;
    *v46 = v0;
    v46[1] = sub_1001D1A70;
    v47 = *(v0 + 296);
    v48 = *(v0 + 272);
    v49 = *(v0 + 280);
    v50 = *(v0 + 256);
    v51 = *(v0 + 264);
    v52 = *(v0 + 240);
    v53 = *(v0 + 248);
    v54 = *(v0 + 576);

    return sub_1001CF6CC(v52, v53, v50, v51, v54, v48, v49, v14 + 1);
  }

  v35 = *(v0 + 344);
  v36 = *(v0 + 352);
  v37 = *(v0 + 336);
  URLError._nsError.getter();
  swift_willThrow();
  (*(v35 + 8))(v36, v37);
  sub_10019E608(v0 + 16);
  v38 = *(v0 + 216);

LABEL_8:
  v23 = *(v0 + 448);
  v25 = *(v0 + 416);
  v24 = *(v0 + 424);
  v27 = *(v0 + 400);
  v26 = *(v0 + 408);
  v29 = *(v0 + 384);
  v28 = *(v0 + 392);
  v31 = *(v0 + 352);
  v30 = *(v0 + 360);
  v32 = *(v0 + 328);
  v55 = *(v0 + 320);

  v33 = *(v0 + 8);

  return v33();
}

uint64_t sub_1001D0944(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 504);
  v12 = *v1;
  *(v3 + 512) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 520) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for CredentialService();
  v9 = sub_1001D2930(&unk_1005AFA50, &type metadata accessor for Daemon);
  v10 = sub_1001D2930(&unk_1005AF9F0, type metadata accessor for CredentialService);
  *v6 = v12;
  v6[1] = sub_1001D0B20;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_1001D0B20(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 520);
  v6 = *v2;
  v4[66] = a1;
  v4[67] = v1;

  v7 = v4[64];

  if (v1)
  {
    v8 = v4[57];
    v9 = v4[58];
    v10 = sub_1001D2378;
  }

  else
  {
    v10 = sub_1001D0C70;
    v8 = a1;
    v9 = 0;
  }

  return _swift_task_switch(v10, v8, v9);
}

uint64_t sub_1001D0C70()
{
  v1 = *(*(v0 + 528) + 136);
  if (v1)
  {
    v2 = v1;
    v3 = [v2 aa_primaryAppleAccount];
    if (v3)
    {
      v4 = *(v0 + 528);
      v5 = v3;
      *(v0 + 577) = sub_1001D4FE4(v3) & 1;

      v6 = *(v0 + 456);
      v7 = *(v0 + 464);
      v8 = sub_1001D0D34;
      goto LABEL_6;
    }
  }

  v6 = *(v0 + 456);
  v7 = *(v0 + 464);
  v8 = sub_1001D112C;
LABEL_6:

  return _swift_task_switch(v8, v6, v7);
}

uint64_t sub_1001D0D34()
{
  v49 = v0;
  if (*(v0 + 577))
  {
    v1 = *(v0 + 416);
    v2 = *(v0 + 392);
    v3 = *(v0 + 368);
    v4 = *(v0 + 376);
    v5 = *(v0 + 288);
    v6 = *(v0 + 48);
    sub_100011AEC((v0 + 16), *(v0 + 40));
    dispatch thunk of Endpoint.urlComponents.getter();
    URLComponents.url.getter();
    (*(v4 + 8))(v2, v3);
    v7 = type metadata accessor for URL();
    v8 = *(v7 - 8);
    v9 = (*(v8 + 48))(v1, 1, v7);
    v10 = *(v0 + 416);
    if (v9 == 1)
    {
      sub_100002CE0(*(v0 + 416), &qword_1005A9DB8, &unk_1004CC1D0);
      v11 = 0xE300000000000000;
      v12 = 7104878;
    }

    else
    {
      v12 = URL.absoluteString.getter();
      v11 = v30;
      (*(v8 + 8))(v10, v7);
    }

    v31 = v5 + 1;
    if (qword_1005A7F88 != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    sub_10000A6F0(v32, qword_1005DFC28);

    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v48 = v36;
      *v35 = 136446466;
      v37 = sub_10000D01C(v12, v11, &v48);

      *(v35 + 4) = v37;
      *(v35 + 12) = 2048;
      *(v35 + 14) = v31;
      _os_log_impl(&_mh_execute_header, v33, v34, "Retrying request to %{public}s due to 401 and having new credentials, retry attempt %ld  ", v35, 0x16u);
      sub_100004984(v36);
    }

    else
    {
    }

    v38 = swift_task_alloc();
    *(v0 + 544) = v38;
    *v38 = v0;
    v38[1] = sub_1001D1250;
    v39 = *(v0 + 296);
    v40 = *(v0 + 272);
    v41 = *(v0 + 280);
    v42 = *(v0 + 256);
    v43 = *(v0 + 264);
    v44 = *(v0 + 240);
    v45 = *(v0 + 248);
    v46 = *(v0 + 576);

    return sub_1001CF6CC(v44, v45, v42, v43, v46, v40, v41, v31);
  }

  else
  {
    v13 = *(v0 + 528);

    v15 = *(v0 + 440);
    v14 = *(v0 + 448);
    v16 = *(v0 + 432);
    v17 = *(v0 + 240);
    sub_10019E608(v0 + 16);
    (*(v15 + 32))(v17, v14, v16);
    v18 = *(v0 + 448);
    v19 = *(v0 + 416);
    v20 = *(v0 + 424);
    v22 = *(v0 + 400);
    v21 = *(v0 + 408);
    v24 = *(v0 + 384);
    v23 = *(v0 + 392);
    v26 = *(v0 + 352);
    v25 = *(v0 + 360);
    v27 = *(v0 + 328);
    v47 = *(v0 + 320);

    v28 = *(v0 + 8);

    return v28();
  }
}

uint64_t sub_1001D112C()
{
  v1 = v0[66];

  v3 = v0[55];
  v2 = v0[56];
  v4 = v0[54];
  v5 = v0[30];
  sub_10019E608((v0 + 2));
  (*(v3 + 32))(v5, v2, v4);
  v6 = v0[56];
  v7 = v0[52];
  v8 = v0[53];
  v10 = v0[50];
  v9 = v0[51];
  v12 = v0[48];
  v11 = v0[49];
  v14 = v0[44];
  v13 = v0[45];
  v15 = v0[41];
  v18 = v0[40];

  v16 = v0[1];

  return v16();
}

uint64_t sub_1001D1250()
{
  v2 = *v1;
  v3 = *(*v1 + 544);
  v4 = *v1;
  *(*v1 + 552) = v0;

  v5 = *(v2 + 464);
  v6 = *(v2 + 456);
  if (v0)
  {
    v7 = sub_1001D14A8;
  }

  else
  {
    v7 = sub_1001D138C;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_1001D138C()
{
  v1 = v0[66];
  v3 = v0[55];
  v2 = v0[56];
  v4 = v0[54];

  (*(v3 + 8))(v2, v4);
  sub_10019E608((v0 + 2));
  v5 = v0[56];
  v6 = v0[52];
  v7 = v0[53];
  v9 = v0[50];
  v8 = v0[51];
  v11 = v0[48];
  v10 = v0[49];
  v13 = v0[44];
  v12 = v0[45];
  v14 = v0[41];
  v17 = v0[40];

  v15 = v0[1];

  return v15();
}

uint64_t sub_1001D14A8()
{
  v61 = v0;
  v1 = *(v0 + 528);
  v3 = *(v0 + 440);
  v2 = *(v0 + 448);
  v4 = *(v0 + 432);

  (*(v3 + 8))(v2, v4);
  *(v0 + 216) = *(v0 + 552);
  v5 = *(v0 + 360);
  v6 = *(v0 + 336);
  swift_errorRetain();
  sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
  if (!swift_dynamicCast())
  {
    goto LABEL_7;
  }

  v8 = *(v0 + 320);
  v7 = *(v0 + 328);
  v10 = *(v0 + 304);
  v9 = *(v0 + 312);
  (*(*(v0 + 344) + 32))(*(v0 + 352), *(v0 + 360), *(v0 + 336));
  sub_1001D2930(&qword_1005AF720, &type metadata accessor for URLError);
  _BridgedStoredNSError.code.getter();
  static URLError.Code.timedOut.getter();
  sub_1001D2930(&qword_1005AF728, &type metadata accessor for URLError.Code);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v11 = *(v9 + 8);
  v11(v8, v10);
  v11(v7, v10);
  if (*(v0 + 224) != *(v0 + 232))
  {
    (*(*(v0 + 344) + 8))(*(v0 + 352), *(v0 + 336));
LABEL_7:
    v26 = *(v0 + 216);

    swift_willThrow();
    sub_10019E608(v0 + 16);
    goto LABEL_8;
  }

  v12 = *(v0 + 280);
  v13 = *(v0 + 288);

  if (v13 < v12)
  {
    v14 = *(v0 + 408);
    v16 = *(v0 + 376);
    v15 = *(v0 + 384);
    v17 = *(v0 + 368);
    v18 = *(v0 + 288);
    v19 = *(v0 + 48);
    sub_100011AEC((v0 + 16), *(v0 + 40));
    dispatch thunk of Endpoint.urlComponents.getter();
    URLComponents.url.getter();
    (*(v16 + 8))(v15, v17);
    v20 = type metadata accessor for URL();
    v21 = *(v20 - 8);
    v22 = (*(v21 + 48))(v14, 1, v20);
    v23 = *(v0 + 408);
    if (v22 == 1)
    {
      sub_100002CE0(*(v0 + 408), &qword_1005A9DB8, &unk_1004CC1D0);
      v24 = 0xE300000000000000;
      v25 = 7104878;
    }

    else
    {
      v25 = URL.absoluteString.getter();
      v24 = v43;
      (*(v21 + 8))(v23, v20);
    }

    if (qword_1005A7F88 != -1)
    {
      swift_once();
    }

    v44 = type metadata accessor for Logger();
    sub_10000A6F0(v44, qword_1005DFC28);

    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v60 = v48;
      *v47 = 136446466;
      v49 = sub_10000D01C(v25, v24, &v60);

      *(v47 + 4) = v49;
      *(v47 + 12) = 2048;
      *(v47 + 14) = v18 + 1;
      _os_log_impl(&_mh_execute_header, v45, v46, "Retrying request to %{public}s due to request time out, retry attempt %ld  ", v47, 0x16u);
      sub_100004984(v48);
    }

    else
    {
    }

    v50 = swift_task_alloc();
    *(v0 + 560) = v50;
    *v50 = v0;
    v50[1] = sub_1001D1A70;
    v51 = *(v0 + 296);
    v52 = *(v0 + 272);
    v53 = *(v0 + 280);
    v54 = *(v0 + 256);
    v55 = *(v0 + 264);
    v56 = *(v0 + 240);
    v57 = *(v0 + 248);
    v58 = *(v0 + 576);

    return sub_1001CF6CC(v56, v57, v54, v55, v58, v52, v53, v18 + 1);
  }

  v39 = *(v0 + 344);
  v40 = *(v0 + 352);
  v41 = *(v0 + 336);
  URLError._nsError.getter();
  swift_willThrow();
  (*(v39 + 8))(v40, v41);
  sub_10019E608(v0 + 16);
  v42 = *(v0 + 216);

LABEL_8:
  v27 = *(v0 + 448);
  v29 = *(v0 + 416);
  v28 = *(v0 + 424);
  v31 = *(v0 + 400);
  v30 = *(v0 + 408);
  v33 = *(v0 + 384);
  v32 = *(v0 + 392);
  v35 = *(v0 + 352);
  v34 = *(v0 + 360);
  v36 = *(v0 + 328);
  v59 = *(v0 + 320);

  v37 = *(v0 + 8);

  return v37();
}

uint64_t sub_1001D1A70()
{
  v2 = *v1;
  v3 = *(*v1 + 560);
  v4 = *v1;
  *(*v1 + 568) = v0;

  v5 = *(v2 + 464);
  v6 = *(v2 + 456);
  if (v0)
  {
    v7 = sub_1001D1CC0;
  }

  else
  {
    v7 = sub_1001D1BAC;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_1001D1BAC()
{
  (*(v0[43] + 8))(v0[44], v0[42]);
  sub_10019E608((v0 + 2));
  v1 = v0[27];

  v2 = v0[56];
  v3 = v0[52];
  v4 = v0[53];
  v6 = v0[50];
  v5 = v0[51];
  v8 = v0[48];
  v7 = v0[49];
  v10 = v0[44];
  v9 = v0[45];
  v11 = v0[41];
  v14 = v0[40];

  v12 = v0[1];

  return v12();
}

uint64_t sub_1001D1CC0()
{
  (*(v0[43] + 8))(v0[44], v0[42]);
  sub_10019E608((v0 + 2));
  v1 = v0[27];

  v2 = v0[56];
  v4 = v0[52];
  v3 = v0[53];
  v6 = v0[50];
  v5 = v0[51];
  v8 = v0[48];
  v7 = v0[49];
  v10 = v0[44];
  v9 = v0[45];
  v11 = v0[41];
  v14 = v0[40];
  v15 = v0[71];

  v12 = v0[1];

  return v12();
}

uint64_t sub_1001D1DD8()
{
  v57 = v0;
  *(v0 + 216) = *(v0 + 480);
  v1 = *(v0 + 360);
  v2 = *(v0 + 336);
  swift_errorRetain();
  sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
  if (!swift_dynamicCast())
  {
    goto LABEL_7;
  }

  v4 = *(v0 + 320);
  v3 = *(v0 + 328);
  v6 = *(v0 + 304);
  v5 = *(v0 + 312);
  (*(*(v0 + 344) + 32))(*(v0 + 352), *(v0 + 360), *(v0 + 336));
  sub_1001D2930(&qword_1005AF720, &type metadata accessor for URLError);
  _BridgedStoredNSError.code.getter();
  static URLError.Code.timedOut.getter();
  sub_1001D2930(&qword_1005AF728, &type metadata accessor for URLError.Code);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v7 = *(v5 + 8);
  v7(v4, v6);
  v7(v3, v6);
  if (*(v0 + 224) != *(v0 + 232))
  {
    (*(*(v0 + 344) + 8))(*(v0 + 352), *(v0 + 336));
LABEL_7:
    v22 = *(v0 + 216);

    swift_willThrow();
    sub_10019E608(v0 + 16);
    goto LABEL_8;
  }

  v8 = *(v0 + 280);
  v9 = *(v0 + 288);

  if (v9 < v8)
  {
    v10 = *(v0 + 408);
    v12 = *(v0 + 376);
    v11 = *(v0 + 384);
    v13 = *(v0 + 368);
    v14 = *(v0 + 288);
    v15 = *(v0 + 48);
    sub_100011AEC((v0 + 16), *(v0 + 40));
    dispatch thunk of Endpoint.urlComponents.getter();
    URLComponents.url.getter();
    (*(v12 + 8))(v11, v13);
    v16 = type metadata accessor for URL();
    v17 = *(v16 - 8);
    v18 = (*(v17 + 48))(v10, 1, v16);
    v19 = *(v0 + 408);
    if (v18 == 1)
    {
      sub_100002CE0(*(v0 + 408), &qword_1005A9DB8, &unk_1004CC1D0);
      v20 = 0xE300000000000000;
      v21 = 7104878;
    }

    else
    {
      v21 = URL.absoluteString.getter();
      v20 = v39;
      (*(v17 + 8))(v19, v16);
    }

    if (qword_1005A7F88 != -1)
    {
      swift_once();
    }

    v40 = type metadata accessor for Logger();
    sub_10000A6F0(v40, qword_1005DFC28);

    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v56 = v44;
      *v43 = 136446466;
      v45 = sub_10000D01C(v21, v20, &v56);

      *(v43 + 4) = v45;
      *(v43 + 12) = 2048;
      *(v43 + 14) = v14 + 1;
      _os_log_impl(&_mh_execute_header, v41, v42, "Retrying request to %{public}s due to request time out, retry attempt %ld  ", v43, 0x16u);
      sub_100004984(v44);
    }

    else
    {
    }

    v46 = swift_task_alloc();
    *(v0 + 560) = v46;
    *v46 = v0;
    v46[1] = sub_1001D1A70;
    v47 = *(v0 + 296);
    v48 = *(v0 + 272);
    v49 = *(v0 + 280);
    v50 = *(v0 + 256);
    v51 = *(v0 + 264);
    v52 = *(v0 + 240);
    v53 = *(v0 + 248);
    v54 = *(v0 + 576);

    return sub_1001CF6CC(v52, v53, v50, v51, v54, v48, v49, v14 + 1);
  }

  v35 = *(v0 + 344);
  v36 = *(v0 + 352);
  v37 = *(v0 + 336);
  URLError._nsError.getter();
  swift_willThrow();
  (*(v35 + 8))(v36, v37);
  sub_10019E608(v0 + 16);
  v38 = *(v0 + 216);

LABEL_8:
  v23 = *(v0 + 448);
  v25 = *(v0 + 416);
  v24 = *(v0 + 424);
  v27 = *(v0 + 400);
  v26 = *(v0 + 408);
  v29 = *(v0 + 384);
  v28 = *(v0 + 392);
  v31 = *(v0 + 352);
  v30 = *(v0 + 360);
  v32 = *(v0 + 328);
  v55 = *(v0 + 320);

  v33 = *(v0 + 8);

  return v33();
}

uint64_t sub_1001D2378()
{
  v57 = v0;
  (*(*(v0 + 440) + 8))(*(v0 + 448), *(v0 + 432));
  *(v0 + 216) = *(v0 + 536);
  v1 = *(v0 + 360);
  v2 = *(v0 + 336);
  swift_errorRetain();
  sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
  if (!swift_dynamicCast())
  {
    goto LABEL_7;
  }

  v4 = *(v0 + 320);
  v3 = *(v0 + 328);
  v6 = *(v0 + 304);
  v5 = *(v0 + 312);
  (*(*(v0 + 344) + 32))(*(v0 + 352), *(v0 + 360), *(v0 + 336));
  sub_1001D2930(&qword_1005AF720, &type metadata accessor for URLError);
  _BridgedStoredNSError.code.getter();
  static URLError.Code.timedOut.getter();
  sub_1001D2930(&qword_1005AF728, &type metadata accessor for URLError.Code);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v7 = *(v5 + 8);
  v7(v4, v6);
  v7(v3, v6);
  if (*(v0 + 224) != *(v0 + 232))
  {
    (*(*(v0 + 344) + 8))(*(v0 + 352), *(v0 + 336));
LABEL_7:
    v22 = *(v0 + 216);

    swift_willThrow();
    sub_10019E608(v0 + 16);
    goto LABEL_8;
  }

  v8 = *(v0 + 280);
  v9 = *(v0 + 288);

  if (v9 < v8)
  {
    v10 = *(v0 + 408);
    v12 = *(v0 + 376);
    v11 = *(v0 + 384);
    v13 = *(v0 + 368);
    v14 = *(v0 + 288);
    v15 = *(v0 + 48);
    sub_100011AEC((v0 + 16), *(v0 + 40));
    dispatch thunk of Endpoint.urlComponents.getter();
    URLComponents.url.getter();
    (*(v12 + 8))(v11, v13);
    v16 = type metadata accessor for URL();
    v17 = *(v16 - 8);
    v18 = (*(v17 + 48))(v10, 1, v16);
    v19 = *(v0 + 408);
    if (v18 == 1)
    {
      sub_100002CE0(*(v0 + 408), &qword_1005A9DB8, &unk_1004CC1D0);
      v20 = 0xE300000000000000;
      v21 = 7104878;
    }

    else
    {
      v21 = URL.absoluteString.getter();
      v20 = v39;
      (*(v17 + 8))(v19, v16);
    }

    if (qword_1005A7F88 != -1)
    {
      swift_once();
    }

    v40 = type metadata accessor for Logger();
    sub_10000A6F0(v40, qword_1005DFC28);

    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v56 = v44;
      *v43 = 136446466;
      v45 = sub_10000D01C(v21, v20, &v56);

      *(v43 + 4) = v45;
      *(v43 + 12) = 2048;
      *(v43 + 14) = v14 + 1;
      _os_log_impl(&_mh_execute_header, v41, v42, "Retrying request to %{public}s due to request time out, retry attempt %ld  ", v43, 0x16u);
      sub_100004984(v44);
    }

    else
    {
    }

    v46 = swift_task_alloc();
    *(v0 + 560) = v46;
    *v46 = v0;
    v46[1] = sub_1001D1A70;
    v47 = *(v0 + 296);
    v48 = *(v0 + 272);
    v49 = *(v0 + 280);
    v50 = *(v0 + 256);
    v51 = *(v0 + 264);
    v52 = *(v0 + 240);
    v53 = *(v0 + 248);
    v54 = *(v0 + 576);

    return sub_1001CF6CC(v52, v53, v50, v51, v54, v48, v49, v14 + 1);
  }

  v35 = *(v0 + 344);
  v36 = *(v0 + 352);
  v37 = *(v0 + 336);
  URLError._nsError.getter();
  swift_willThrow();
  (*(v35 + 8))(v36, v37);
  sub_10019E608(v0 + 16);
  v38 = *(v0 + 216);

LABEL_8:
  v23 = *(v0 + 448);
  v25 = *(v0 + 416);
  v24 = *(v0 + 424);
  v27 = *(v0 + 400);
  v26 = *(v0 + 408);
  v29 = *(v0 + 384);
  v28 = *(v0 + 392);
  v31 = *(v0 + 352);
  v30 = *(v0 + 360);
  v32 = *(v0 + 328);
  v55 = *(v0 + 320);

  v33 = *(v0 + 8);

  return v33();
}

uint64_t sub_1001D2930(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for AnyEndpoint()
{
  result = qword_1005AF788;
  if (!qword_1005AF788)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001D29FC()
{
  v0 = sub_10004B564(&qword_1005A9DA8, &unk_1004D1130);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v10 - v2;
  v4 = sub_10004B564(&qword_1005A9DB0, &qword_1004C3270);
  sub_10004F154(v4, qword_1005AF7C0);
  v5 = sub_10000A6F0(v4, qword_1005AF7C0);
  v6 = type metadata accessor for Credentials(0);
  (*(*(v6 - 8) + 56))(v3, 1, 1, v6);
  *v5 = 0;
  v7 = *(v4 + 28);
  v8 = sub_10004B564(&qword_1005AFA40, &qword_1004D1170);
  bzero(v5 + v7, *(*(v8 - 8) + 64));
  return sub_1000176A8(v3, v5 + v7, &qword_1005A9DA8, &unk_1004D1130);
}

uint64_t sub_1001D2B44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v28 = a3;
  v5 = type metadata accessor for Credentials(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = (&v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_10004B564(&qword_1005AFA38, &qword_1004D1168);
  v11 = v10 - 8;
  v12 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v14 = &v27 - v13;
  v15 = sub_10004B564(&qword_1005A9DA8, &unk_1004D1130);
  v16 = *(*(v15 - 8) + 64);
  v17 = __chkstk_darwin(v15 - 8);
  v19 = (&v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v17);
  v21 = &v27 - v20;
  sub_1001D5D7C(a1, &v27 - v20);
  v22 = *(v11 + 56);
  sub_1001D5D7C(v21, v14);
  v27 = a2;
  sub_1001D5D7C(a2, &v14[v22]);
  v23 = *(v6 + 48);
  if (v23(v14, 1, v5) == 1)
  {
    sub_100002CE0(v21, &qword_1005A9DA8, &unk_1004D1130);
    if (v23(&v14[v22], 1, v5) == 1)
    {
      result = sub_100002CE0(v14, &qword_1005A9DA8, &unk_1004D1130);
LABEL_9:
      v25 = 0;
      goto LABEL_10;
    }

    goto LABEL_6;
  }

  sub_1001D5D7C(v14, v19);
  if (v23(&v14[v22], 1, v5) == 1)
  {
    sub_100002CE0(v21, &qword_1005A9DA8, &unk_1004D1130);
    sub_1001D5D20(v19);
LABEL_6:
    sub_100002CE0(v14, &qword_1005AFA38, &qword_1004D1168);
    goto LABEL_7;
  }

  sub_1001D5DEC(&v14[v22], v9);
  v26 = sub_1001CEF30(v19, v9);
  sub_1001D5D20(v9);
  sub_100002CE0(v21, &qword_1005A9DA8, &unk_1004D1130);
  sub_1001D5D20(v19);
  result = sub_100002CE0(v14, &qword_1005A9DA8, &unk_1004D1130);
  if (v26)
  {
    goto LABEL_9;
  }

LABEL_7:
  sub_100002CE0(a1, &qword_1005A9DA8, &unk_1004D1130);
  result = sub_1001D5D7C(v27, a1);
  v25 = 1;
LABEL_10:
  *v28 = v25;
  return result;
}

uint64_t sub_1001D2E74()
{
  swift_defaultActor_initialize();
  *(v0 + 112) = 0xD000000000000011;
  *(v0 + 120) = 0x80000001004D0F80;
  *(v0 + 128) = [objc_allocWithZone(type metadata accessor for AccountStoreDelegate()) init];
  *(v0 + 136) = 0;
  *(v0 + 144) = sub_1002094DC(_swiftEmptyArrayStorage);
  *(v0 + 152) = _swiftEmptyArrayStorage;
  *(v0 + 160) = 0;
  return v0;
}

uint64_t sub_1001D2F08()
{
  if (qword_1005A80A8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000A6F0(v1, qword_1005AF7D8);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Startup", v4, 2u);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1001D3020()
{
  v1[25] = v0;
  v2 = sub_10004B564(&qword_1005AFA48, &unk_1004D1178);
  v1[26] = v2;
  v3 = *(v2 - 8);
  v1[27] = v3;
  v4 = *(v3 + 64) + 15;
  v1[28] = swift_task_alloc();
  v5 = *(*(sub_10004B564(&qword_1005A9DA8, &unk_1004D1130) - 8) + 64) + 15;
  v1[29] = swift_task_alloc();

  return _swift_task_switch(sub_1001D3124, v0, 0);
}

uint64_t sub_1001D3124()
{
  if (qword_1005A80A8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 240) = sub_10000A6F0(v1, qword_1005AF7D8);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Run - awaiting first unlock", v4, 2u);
  }

  v5 = async function pointer to daemon.getter[1];
  v6 = swift_task_alloc();
  *(v0 + 248) = v6;
  *v6 = v0;
  v6[1] = sub_1001D3274;

  return daemon.getter();
}

uint64_t sub_1001D3274(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 248);
  v12 = *v1;
  *(v3 + 256) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 264) = v6;
  v7 = type metadata accessor for Daemon();
  UnlockService = type metadata accessor for FirstUnlockService();
  v9 = sub_1001D5E50(&unk_1005AFA50, 255, &type metadata accessor for Daemon);
  v10 = sub_1001D5E50(&qword_1005AD510, 255, &type metadata accessor for FirstUnlockService);
  *v6 = v12;
  v6[1] = sub_1001D3458;

  return ActorServiceDaemon.getService<A>()(v7, UnlockService, v9, v10);
}

uint64_t sub_1001D3458(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 264);
  v6 = *v2;
  v4[34] = a1;
  v4[35] = v1;

  if (v1)
  {
    v7 = v4[25];

    return _swift_task_switch(sub_1001D3E14, v7, 0);
  }

  else
  {
    v8 = v4[32];

    v9 = *(&async function pointer to dispatch thunk of FirstUnlockService.waitForFirstUnlock() + 1);
    v12 = (&async function pointer to dispatch thunk of FirstUnlockService.waitForFirstUnlock() + async function pointer to dispatch thunk of FirstUnlockService.waitForFirstUnlock());
    v10 = swift_task_alloc();
    v4[36] = v10;
    *v10 = v6;
    v10[1] = sub_1001D35FC;

    return v12();
  }
}

uint64_t sub_1001D35FC()
{
  v1 = *(*v0 + 288);
  v2 = *(*v0 + 200);
  v4 = *v0;

  return _swift_task_switch(sub_1001D370C, v2, 0);
}

uint64_t sub_1001D370C()
{
  v1 = v0[30];
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Run - monitoring account changes", v4, 2u);
  }

  v5 = v0[25];

  v6 = *(v5 + 128);
  v7 = swift_allocObject();
  swift_weakInit();
  v8 = &v6[OBJC_IVAR____TtC13findmylocatedP33_874828DF94C32697BE3DA9E598B1955920AccountStoreDelegate_callback];
  v9 = *&v6[OBJC_IVAR____TtC13findmylocatedP33_874828DF94C32697BE3DA9E598B1955920AccountStoreDelegate_callback];
  v10 = *&v6[OBJC_IVAR____TtC13findmylocatedP33_874828DF94C32697BE3DA9E598B1955920AccountStoreDelegate_callback + 8];
  *v8 = sub_1001D5E98;
  v8[1] = v7;

  sub_100037FC8(v9);

  sub_10004B564(&qword_1005AFA60, &unk_1004CE390);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004C1900;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v12;
  sub_10025EF38(inited);
  swift_setDeallocating();
  sub_10007C2B8(inited + 32);
  v13 = objc_allocWithZone(ACMonitoredAccountStore);
  v14 = v6;
  isa = Set._bridgeToObjectiveC()().super.isa;

  v16 = [v13 initWithAccountTypes:isa propertiesToPrefetch:0 delegate:v14];
  v0[37] = v16;

  v17 = *(v5 + 136);
  *(v5 + 136) = v16;
  v18 = v16;

  v0[2] = v0;
  v0[7] = v0 + 24;
  v0[3] = sub_1001D39EC;
  v19 = swift_continuation_init();
  v0[17] = sub_10004B564(&qword_1005AFA68, &qword_1004D1188);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_1001D5400;
  v0[13] = &unk_100596FE8;
  v0[14] = v19;
  [v18 registerWithCompletion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1001D39EC()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 304) = v3;
  v4 = *(v1 + 200);
  if (v3)
  {
    v5 = sub_1001D3E8C;
  }

  else
  {
    v5 = sub_1001D3B0C;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_1001D3B0C()
{
  v1 = *(v0 + 192);
  if (v1)
  {
    if (v1 >> 62)
    {
      goto LABEL_16;
    }

    for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v3 = 0;
      v4 = AAAccountClassPrimary;
      while (1)
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_15;
          }

          v5 = *(v1 + 8 * v3 + 32);
        }

        v6 = v5;
        v7 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          break;
        }

        if ([v5 aa_isAccountClass:v4])
        {
          v8 = *(v0 + 200);

          sub_1001D4FE4(v6);

          goto LABEL_19;
        }

        ++v3;
        if (v7 == i)
        {
          goto LABEL_17;
        }
      }

      __break(1u);
LABEL_15:
      __break(1u);
LABEL_16:
      ;
    }

LABEL_17:
  }

  v9 = *(v0 + 232);
  v10 = *(v0 + 200);
  v11 = type metadata accessor for Credentials(0);
  (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
  sub_1001D47C0(v9);
  sub_100002CE0(v9, &qword_1005A9DA8, &unk_1004D1130);
LABEL_19:
  v12 = *(v0 + 200);
  *(v12 + 160) = 1;
  v13 = *(v12 + 152);
  v14 = *(v13 + 16);
  if (v14)
  {
    v33 = v12;
    v15 = *(v0 + 216);
    v18 = *(v15 + 16);
    v16 = v15 + 16;
    v17 = v18;
    v19 = v13 + ((*(v16 + 64) + 32) & ~*(v16 + 64));
    v20 = *(v16 + 56);

    do
    {
      v21 = *(v0 + 224);
      v22 = *(v0 + 208);
      v17(v21, v19, v22);
      CheckedContinuation.resume(returning:)();
      (*(v16 - 8))(v21, v22);
      v19 += v20;
      --v14;
    }

    while (v14);

    v12 = v33;
    v23 = *(v33 + 152);
  }

  v24 = *(v0 + 240);
  *(v12 + 152) = _swiftEmptyArrayStorage;

  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&_mh_execute_header, v25, v26, "Run - initialized", v27, 2u);
  }

  v28 = *(v0 + 272);
  v30 = *(v0 + 224);
  v29 = *(v0 + 232);

  v31 = *(v0 + 8);

  return v31();
}

uint64_t sub_1001D3E14()
{
  v1 = v0[32];
  v2 = v0[28];
  v3 = v0[29];

  v4 = v0[1];
  v5 = v0[35];

  return v4();
}

uint64_t sub_1001D3E8C()
{
  v1 = *(v0 + 304);
  v2 = *(v0 + 240);
  swift_willThrow();
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 304);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v3, v4, "Registering for account changes failed %@", v6, 0xCu);
    sub_100002CE0(v7, &qword_1005A9670, &unk_1004C2480);
  }

  v9 = *(v0 + 304);
  v10 = *(v0 + 232);
  v11 = *(v0 + 200);

  v12 = type metadata accessor for Credentials(0);
  (*(*(v12 - 8) + 56))(v10, 1, 1, v12);
  sub_1001D47C0(v10);

  sub_100002CE0(v10, &qword_1005A9DA8, &unk_1004D1130);
  v13 = *(v0 + 200);
  *(v13 + 160) = 1;
  v14 = *(v13 + 152);
  v15 = *(v14 + 16);
  if (v15)
  {
    v34 = v13;
    v16 = *(v0 + 216);
    v19 = *(v16 + 16);
    v17 = v16 + 16;
    v18 = v19;
    v20 = v14 + ((*(v17 + 64) + 32) & ~*(v17 + 64));
    v21 = *(v17 + 56);

    do
    {
      v22 = *(v0 + 224);
      v23 = *(v0 + 208);
      v18(v22, v20, v23);
      CheckedContinuation.resume(returning:)();
      (*(v17 - 8))(v22, v23);
      v20 += v21;
      --v15;
    }

    while (v15);

    v13 = v34;
    v24 = *(v34 + 152);
  }

  v25 = *(v0 + 240);
  *(v13 + 152) = _swiftEmptyArrayStorage;

  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&_mh_execute_header, v26, v27, "Run - initialized", v28, 2u);
  }

  v29 = *(v0 + 272);
  v31 = *(v0 + 224);
  v30 = *(v0 + 232);

  v32 = *(v0 + 8);

  return v32();
}

id sub_1001D41B0(void *a1, char a2, uint64_t a3)
{
  v6 = sub_10004B564(&qword_1005A9690, &qword_1004C2A00);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v14 - v8;
  result = [a1 aa_isAccountClass:AAAccountClassPrimary];
  if (result)
  {
    v11 = type metadata accessor for TaskPriority();
    (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
    v12 = swift_allocObject();
    *(v12 + 16) = 0;
    *(v12 + 24) = 0;
    *(v12 + 32) = a2;
    *(v12 + 40) = a3;
    *(v12 + 48) = a1;

    v13 = a1;
    sub_1001D7F30(0, 0, v9, &unk_1004D1198, v12);
  }

  return result;
}

uint64_t sub_1001D42F4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 64) = a5;
  *(v6 + 72) = a6;
  *(v6 + 104) = a4;
  v7 = *(*(sub_10004B564(&qword_1005A9DA8, &unk_1004D1130) - 8) + 64) + 15;
  *(v6 + 80) = swift_task_alloc();

  return _swift_task_switch(sub_1001D4394, 0, 0);
}

uint64_t sub_1001D4394()
{
  v1 = *(v0 + 64);
  if (*(v0 + 104) == 1)
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    *(v0 + 96) = Strong;
    if (Strong)
    {
      v3 = Strong;
      v4 = *(v0 + 80);
      v5 = type metadata accessor for Credentials(0);
      (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
      v6 = sub_1001D4614;
      v7 = v3;
LABEL_6:

      return _swift_task_switch(v6, v7, 0);
    }

    if (qword_1005A80A8 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_10000A6F0(v9, qword_1005AF7D8);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "Account removed", v12, 2u);
    }
  }

  else
  {
    swift_beginAccess();
    v8 = swift_weakLoadStrong();
    *(v0 + 88) = v8;
    if (v8)
    {
      v7 = v8;
      v6 = sub_1001D45A0;
      goto LABEL_6;
    }
  }

  v13 = *(v0 + 80);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_1001D45A0()
{
  v1 = *(v0 + 88);
  sub_1001D4FE4(*(v0 + 72));

  v2 = *(v0 + 80);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1001D4614()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 80);
  sub_1001D47C0(v2);

  sub_100002CE0(v2, &qword_1005A9DA8, &unk_1004D1130);

  return _swift_task_switch(sub_1001D46A4, 0, 0);
}

uint64_t sub_1001D46A4()
{
  if (qword_1005A80A8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000A6F0(v1, qword_1005AF7D8);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Account removed", v4, 2u);
  }

  v5 = *(v0 + 80);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1001D47C0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10004B564(&qword_1005A9DA8, &unk_1004D1130);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v80 = &v60[-v6];
  v79 = sub_10004B564(&qword_1005AFA10, &qword_1004D1140);
  v7 = *(v79 - 8);
  v8 = *(v7 + 8);
  __chkstk_darwin(v79);
  v78 = &v60[-v9];
  v83 = sub_10004B564(&qword_1005AFA18, &qword_1004D1148);
  v73 = *(v83 - 8);
  v10 = *(v73 + 64);
  __chkstk_darwin(v83);
  v81 = &v60[-v11];
  v82 = type metadata accessor for UUID();
  v72 = *(v82 - 8);
  v12 = *(v72 + 64);
  __chkstk_darwin(v82);
  v70 = &v60[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = sub_10004B564(&unk_1005AFA20, &unk_1004D1150);
  v15 = *(*(v14 - 8) + 64);
  v16 = __chkstk_darwin(v14 - 8);
  v71 = &v60[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v16);
  v19 = &v60[-v18];
  if (qword_1005A8098 != -1)
  {
    goto LABEL_31;
  }

  while (1)
  {
    v20 = sub_10004B564(&qword_1005A9DB0, &qword_1004C3270);
    v21 = sub_10000A6F0(v20, qword_1005AF7C0);
    os_unfair_lock_lock(v21);
    sub_1001D2B44(v21 + *(v20 + 28), a1, v84);
    os_unfair_lock_unlock(v21);
    v22 = v84[0];
    if (v84[0] != 1)
    {
      if (qword_1005A80A8 != -1)
      {
        swift_once();
      }

      v55 = type metadata accessor for Logger();
      sub_10000A6F0(v55, qword_1005AF7D8);
      v56 = Logger.logObject.getter();
      v57 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        *v58 = 0;
        _os_log_impl(&_mh_execute_header, v56, v57, "Credentials haven't changed, not pushing to stream", v58, 2u);
      }

      return v22;
    }

    if (qword_1005A80A8 != -1)
    {
      swift_once();
    }

    v61 = 1;
    v77 = a1;
    v23 = type metadata accessor for Logger();
    sub_10000A6F0(v23, qword_1005AF7D8);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "Credentials updated", v26, 2u);
    }

    v27 = *(v2 + 144);
    v28 = *(v27 + 64);
    v63 = v27 + 64;
    v29 = 1 << *(v27 + 32);
    v30 = -1;
    if (v29 < 64)
    {
      v30 = ~(-1 << v29);
    }

    v31 = v30 & v28;
    v62 = (v29 + 63) >> 6;
    v66 = v73 + 16;
    v67 = v72 + 16;
    v65 = v72 + 32;
    v32 = (v73 + 32);
    v75 = (v73 + 8);
    v76 = (v7 + 8);
    v74 = (v72 + 8);
    v69 = v27;

    v33 = 0;
    v7 = &qword_1005AFA30;
    v34 = v71;
    v68 = v19;
    v64 = v32;
    if (v31)
    {
      break;
    }

LABEL_11:
    if (v62 <= v33 + 1)
    {
      v36 = v33 + 1;
    }

    else
    {
      v36 = v62;
    }

    v2 = v36 - 1;
    while (1)
    {
      v35 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        break;
      }

      if (v35 >= v62)
      {
        v54 = sub_10004B564(&qword_1005AFA30, &qword_1004D1160);
        (*(*(v54 - 8) + 56))(v34, 1, 1, v54);
        v31 = 0;
        goto LABEL_19;
      }

      v31 = *(v63 + 8 * v35);
      ++v33;
      if (v31)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_31:
    swift_once();
  }

  while (1)
  {
    v35 = v33;
LABEL_18:
    v37 = __clz(__rbit64(v31));
    v31 &= v31 - 1;
    v38 = v37 | (v35 << 6);
    v39 = v69;
    v40 = v70;
    v41 = v72;
    v42 = v82;
    (*(v72 + 16))(v70, *(v69 + 48) + *(v72 + 72) * v38, v82);
    v43 = v73;
    v44 = *(v39 + 56) + *(v73 + 72) * v38;
    v45 = v81;
    v46 = v83;
    (*(v73 + 16))(v81, v44, v83);
    v47 = sub_10004B564(&qword_1005AFA30, &qword_1004D1160);
    v48 = *(v47 + 48);
    v49 = *(v41 + 32);
    v34 = v71;
    v50 = v40;
    v7 = &qword_1005AFA30;
    v49(v71, v50, v42);
    v32 = v64;
    (*(v43 + 32))(v34 + v48, v45, v46);
    (*(*(v47 - 8) + 56))(v34, 0, 1, v47);
    v2 = v35;
    v19 = v68;
LABEL_19:
    sub_1000176A8(v34, v19, &unk_1005AFA20, &unk_1004D1150);
    v51 = sub_10004B564(&qword_1005AFA30, &qword_1004D1160);
    if ((*(*(v51 - 8) + 48))(v19, 1, v51) == 1)
    {
      break;
    }

    a1 = v81;
    v52 = v83;
    (*v32)(v81, &v19[*(v51 + 48)], v83);
    sub_1001D5D7C(v77, v80);
    v53 = v78;
    AsyncStream.Continuation.yield(_:)();
    (*v76)(v53, v79);
    (*v75)(a1, v52);
    (*v74)(v19, v82);
    v33 = v2;
    if (!v31)
    {
      goto LABEL_11;
    }
  }

  return v61;
}

uint64_t sub_1001D4FE4(void *a1)
{
  v3 = sub_10004B564(&qword_1005A9DA8, &unk_1004D1130);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v20 - v5;
  v7 = type metadata accessor for Credentials(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = (&v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(v1 + 136);
  if (v12)
  {
    v13 = v12;
    sub_1001CE140(v13, a1, &v21, v11);
    sub_1001D5CBC(v11, v6);
    (*(v8 + 56))(v6, 0, 1, v7);
    v18 = sub_1001D47C0(v6);

    sub_100002CE0(v6, &qword_1005A9DA8, &unk_1004D1130);
    sub_1001D5D20(v11);
  }

  else
  {
    if (qword_1005A80A8 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_10000A6F0(v14, qword_1005AF7D8);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "Account store is nil", v17, 2u);
    }

    v18 = 0;
  }

  return v18 & 1;
}

uint64_t sub_1001D5400(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *sub_100011AEC((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return _swift_continuation_throwingResumeWithError(v5, v6);
  }

  else
  {
    v9 = 0;
    if (a2)
    {
      sub_1001D5EA0();
      v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    }

    **(*(v5 + 64) + 40) = v9;

    return _swift_continuation_throwingResume(v5);
  }
}

uint64_t sub_1001D54E4()
{
  v1 = *(v0 + 120);

  v2 = *(v0 + 144);

  v3 = *(v0 + 152);

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_1001D5560(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to ActorServiceProtocol.initialLaunchProcessing()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = type metadata accessor for CredentialService();
  *v5 = v2;
  v5[1] = sub_10000368C;

  return ActorServiceProtocol.initialLaunchProcessing()(v6, a2);
}

uint64_t sub_1001D5608(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to ActorServiceProtocol.migrate(from:to:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for CredentialService();
  *v9 = v4;
  v9[1] = sub_10000368C;

  return ActorServiceProtocol.migrate(from:to:)(a1, a2, v10, a4);
}

uint64_t sub_1001D56CC(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to ActorServiceProtocol.firstLaunchSinceReboot()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = type metadata accessor for CredentialService();
  *v5 = v2;
  v5[1] = sub_100003690;

  return ActorServiceProtocol.firstLaunchSinceReboot()(v6, a2);
}

uint64_t sub_1001D5774()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000368C;

  return sub_1001D2EEC();
}

uint64_t sub_1001D5800()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100003690;

  return sub_1001D3020();
}

uint64_t sub_1001D588C()
{
  v1 = *v0;
  type metadata accessor for CredentialService();
  sub_1001D5E50(&unk_1005AF9F0, v2, type metadata accessor for CredentialService);
  return ActorServiceProtocol.description.getter();
}

uint64_t sub_1001D5914(uint64_t result, uint64_t a2, void *a3, uint64_t a4)
{
  v4 = *(result + OBJC_IVAR____TtC13findmylocatedP33_874828DF94C32697BE3DA9E598B1955920AccountStoreDelegate_callback);
  if (v4)
  {
    v6 = result;
    v7 = *(result + OBJC_IVAR____TtC13findmylocatedP33_874828DF94C32697BE3DA9E598B1955920AccountStoreDelegate_callback + 8);
    v8 = a3;
    v9 = v6;
    sub_10004B0C8(v4);
    v4(v8, a4);

    return sub_100037FC8(v4);
  }

  return result;
}

unint64_t sub_1001D5A60()
{
  result = qword_1005AF9D8;
  if (!qword_1005AF9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AF9D8);
  }

  return result;
}

uint64_t sub_1001D5B44()
{
  v0 = type metadata accessor for Logger();
  sub_10004F154(v0, qword_1005DFEE8);
  sub_10000A6F0(v0, qword_1005DFEE8);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1001D5BC4()
{
  v0 = type metadata accessor for Logger();
  sub_10004F154(v0, qword_1005AF7D8);
  v1 = sub_10000A6F0(v0, qword_1005AF7D8);
  if (qword_1005A80A0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000A6F0(v0, qword_1005DFEE8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1001D5C8C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t sub_1001D5CA4(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t sub_1001D5CBC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Credentials(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001D5D20(uint64_t a1)
{
  v2 = type metadata accessor for Credentials(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1001D5D7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004B564(&qword_1005A9DA8, &unk_1004D1130);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001D5DEC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Credentials(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001D5E50(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

unint64_t sub_1001D5EA0()
{
  result = qword_1005AFA70;
  if (!qword_1005AFA70)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1005AFA70);
  }

  return result;
}

uint64_t sub_1001D5EEC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 40);
  v7 = *(v1 + 48);
  v8 = *(v1 + 32);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100003690;

  return sub_1001D42F4(a1, v4, v5, v8, v6, v7);
}

uint64_t sub_1001D5FB4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEA00000000006E6FLL;
  v3 = 0x697461636F4C6F6ELL;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x64657269707865;
    }

    else
    {
      v5 = 0x755364656C696166;
    }

    if (v4 == 2)
    {
      v6 = 0xE700000000000000;
    }

    else
    {
      v6 = 0xE900000000000062;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x64696C6176;
    }

    else
    {
      v5 = 0x697461636F4C6F6ELL;
    }

    if (v4)
    {
      v6 = 0xE500000000000000;
    }

    else
    {
      v6 = 0xEA00000000006E6FLL;
    }
  }

  v7 = 0xE700000000000000;
  v8 = 0x64657269707865;
  if (a2 != 2)
  {
    v8 = 0x755364656C696166;
    v7 = 0xE900000000000062;
  }

  if (a2)
  {
    v3 = 0x64696C6176;
    v2 = 0xE500000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v7;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

uint64_t sub_1001D60F8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v3 = 0xD000000000000014;
    }

    else
    {
      v3 = 0xD000000000000015;
    }

    if (v2 == 2)
    {
      v4 = 0x80000001004DE390;
    }

    else
    {
      v4 = 0x80000001004DE3B0;
    }
  }

  else
  {
    if (a1)
    {
      v3 = 1818322280;
    }

    else
    {
      v3 = 0x7562697274736964;
    }

    if (v2)
    {
      v4 = 0xE400000000000000;
    }

    else
    {
      v4 = 0xEE007379654B6574;
    }
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v7 = 0xD000000000000014;
    }

    else
    {
      v7 = 0xD000000000000015;
    }

    if (a2 == 2)
    {
      v6 = 0x80000001004DE390;
    }

    else
    {
      v6 = 0x80000001004DE3B0;
    }

    if (v3 != v7)
    {
      goto LABEL_32;
    }
  }

  else
  {
    if (a2)
    {
      v5 = 1818322280;
    }

    else
    {
      v5 = 0x7562697274736964;
    }

    if (a2)
    {
      v6 = 0xE400000000000000;
    }

    else
    {
      v6 = 0xEE007379654B6574;
    }

    if (v3 != v5)
    {
      goto LABEL_32;
    }
  }

  if (v4 != v6)
  {
LABEL_32:
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_33;
  }

  v8 = 1;
LABEL_33:

  return v8 & 1;
}

uint64_t sub_1001D6234(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE900000000000053;
  v3 = 0x54646E6553706174;
  v4 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 29556;
    }

    else
    {
      v5 = 0x54646E6553706174;
    }

    if (v4)
    {
      v6 = 0xE200000000000000;
    }

    else
    {
      v6 = 0xE900000000000053;
    }
  }

  else if (a1 == 2)
  {
    v6 = 0xE500000000000000;
    v5 = 0x6449646D63;
  }

  else
  {
    if (a1 == 3)
    {
      v5 = 0x737574617473;
    }

    else
    {
      v5 = 0x6F43746E65696C63;
    }

    if (v4 == 3)
    {
      v6 = 0xE600000000000000;
    }

    else
    {
      v6 = 0xED0000747865746ELL;
    }
  }

  v7 = 0xE500000000000000;
  v8 = 0x6449646D63;
  v9 = 0xE600000000000000;
  v10 = 0x737574617473;
  if (a2 != 3)
  {
    v10 = 0x6F43746E65696C63;
    v9 = 0xED0000747865746ELL;
  }

  if (a2 != 2)
  {
    v8 = v10;
    v7 = v9;
  }

  if (a2)
  {
    v3 = 29556;
    v2 = 0xE200000000000000;
  }

  if (a2 <= 1u)
  {
    v11 = v3;
  }

  else
  {
    v11 = v8;
  }

  if (a2 <= 1u)
  {
    v12 = v2;
  }

  else
  {
    v12 = v7;
  }

  if (v5 == v11 && v6 == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v13 & 1;
}

uint64_t sub_1001D63A8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 7627116;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 1667457384;
    }

    else
    {
      v4 = 29556;
    }

    if (v3 == 2)
    {
      v5 = 0xE400000000000000;
    }

    else
    {
      v5 = 0xE200000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 7237484;
    }

    else
    {
      v4 = 7627116;
    }

    v5 = 0xE300000000000000;
  }

  v6 = 0xE400000000000000;
  v7 = 1667457384;
  if (a2 != 2)
  {
    v7 = 29556;
    v6 = 0xE200000000000000;
  }

  if (a2)
  {
    v2 = 7237484;
  }

  if (a2 <= 1u)
  {
    v8 = v2;
  }

  else
  {
    v8 = v7;
  }

  if (a2 <= 1u)
  {
    v9 = 0xE300000000000000;
  }

  else
  {
    v9 = v6;
  }

  if (v4 == v8 && v5 == v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v10 & 1;
}

uint64_t sub_1001D64AC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEE00455649544341;
  v3 = 0x5F454D5F4F545541;
  v4 = a1;
  v5 = 0x80000001004DDDD0;
  if (a1 == 4)
  {
    v6 = 0x5F454D5F4F545541;
  }

  else
  {
    v6 = 0xD000000000000010;
  }

  if (a1 == 4)
  {
    v5 = 0xEE00455649544341;
  }

  if (a1 == 3)
  {
    v6 = 0xD000000000000018;
    v7 = 0x80000001004DDDA0;
  }

  else
  {
    v7 = v5;
  }

  v8 = 0x80000001004DDD40;
  v9 = 0xD000000000000014;
  v10 = 0x80000001004DDD60;
  v11 = 0xD000000000000017;
  if (v4 != 1)
  {
    v11 = 0xD000000000000013;
    v10 = 0x80000001004DDD80;
  }

  if (v4)
  {
    v9 = v11;
    v8 = v10;
  }

  if (v4 <= 2)
  {
    v12 = v8;
  }

  else
  {
    v9 = v6;
    v12 = v7;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v2 = 0x80000001004DDDA0;
      v3 = 0xD000000000000018;
    }

    else if (a2 != 4)
    {
      v2 = 0x80000001004DDDD0;
      if (v9 != 0xD000000000000010)
      {
        goto LABEL_32;
      }

      goto LABEL_29;
    }

    if (v9 != v3)
    {
LABEL_32:
      v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
      goto LABEL_33;
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0x80000001004DDD60;
      if (v9 != 0xD000000000000017)
      {
        goto LABEL_32;
      }
    }

    else
    {
      v2 = 0x80000001004DDD80;
      if (v9 != 0xD000000000000013)
      {
        goto LABEL_32;
      }
    }
  }

  else
  {
    v2 = 0x80000001004DDD40;
    if (v9 != 0xD000000000000014)
    {
      goto LABEL_32;
    }
  }

LABEL_29:
  if (v12 != v2)
  {
    goto LABEL_32;
  }

  v13 = 1;
LABEL_33:

  return v13 & 1;
}

uint64_t sub_1001D6658(unsigned __int8 a1, unsigned __int8 a2)
{
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 12656;
    }

    else
    {
      v3 = 12400;
    }

    v2 = 0xE200000000000000;
  }

  else if (a1 == 2)
  {
    v3 = 0xD000000000000015;
    v2 = 0x80000001004DDC10;
  }

  else if (a1 == 3)
  {
    v2 = 0xE100000000000000;
    v3 = 118;
  }

  else
  {
    v3 = 0x64726F6365526B63;
    v2 = 0xEC000000656D614ELL;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v5 = 12656;
    }

    else
    {
      v5 = 12400;
    }

    v4 = 0xE200000000000000;
    if (v3 != v5)
    {
      goto LABEL_26;
    }
  }

  else if (a2 == 2)
  {
    v4 = 0x80000001004DDC10;
    if (v3 != 0xD000000000000015)
    {
      goto LABEL_26;
    }
  }

  else if (a2 == 3)
  {
    v4 = 0xE100000000000000;
    if (v3 != 118)
    {
      goto LABEL_26;
    }
  }

  else
  {
    v4 = 0xEC000000656D614ELL;
    if (v3 != 0x64726F6365526B63)
    {
LABEL_26:
      v6 = _stringCompareWithSmolCheck(_:_:expecting:)();
      goto LABEL_27;
    }
  }

  if (v2 != v4)
  {
    goto LABEL_26;
  }

  v6 = 1;
LABEL_27:

  return v6 & 1;
}

uint64_t sub_1001D67D4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE400000000000000;
  v4 = 0xE400000000000000;
  v5 = 1702125924;
  if (a1 != 5)
  {
    v5 = 0x6E6F697461636F6CLL;
    v4 = 0xE800000000000000;
  }

  v6 = 0x5372656767697274;
  v7 = 0xED00007375746174;
  if (a1 != 3)
  {
    v6 = 118;
    v7 = 0xE100000000000000;
  }

  if (a1 > 4u)
  {
    v8 = v4;
  }

  else
  {
    v5 = v6;
    v8 = v7;
  }

  v9 = 0xD000000000000015;
  v10 = 0x444965636E6566;
  if (a1 == 1)
  {
    v10 = 1684632949;
  }

  else
  {
    v3 = 0xE700000000000000;
  }

  if (a1)
  {
    v9 = v10;
  }

  else
  {
    v3 = 0x80000001004DDC10;
  }

  if (a1 <= 2u)
  {
    v11 = v9;
  }

  else
  {
    v11 = v5;
  }

  if (v2 <= 2)
  {
    v12 = v3;
  }

  else
  {
    v12 = v8;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v13 = 0xE400000000000000;
        if (v11 != 1684632949)
        {
          goto LABEL_41;
        }
      }

      else
      {
        v13 = 0xE700000000000000;
        if (v11 != 0x444965636E6566)
        {
          goto LABEL_41;
        }
      }
    }

    else
    {
      v13 = 0x80000001004DDC10;
      if (v11 != 0xD000000000000015)
      {
        goto LABEL_41;
      }
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v13 = 0xE400000000000000;
      if (v11 != 1702125924)
      {
        goto LABEL_41;
      }
    }

    else
    {
      v13 = 0xE800000000000000;
      if (v11 != 0x6E6F697461636F6CLL)
      {
LABEL_41:
        v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
        goto LABEL_42;
      }
    }
  }

  else if (a2 == 3)
  {
    v13 = 0xED00007375746174;
    if (v11 != 0x5372656767697274)
    {
      goto LABEL_41;
    }
  }

  else
  {
    v13 = 0xE100000000000000;
    if (v11 != 118)
    {
      goto LABEL_41;
    }
  }

  if (v12 != v13)
  {
    goto LABEL_41;
  }

  v14 = 1;
LABEL_42:

  return v14 & 1;
}

uint64_t sub_1001D69E8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 7632239;
    }

    else
    {
      v3 = 28265;
    }

    if (v2)
    {
      v4 = 0xE300000000000000;
    }

    else
    {
      v4 = 0xE200000000000000;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0xE500000000000000;
    v3 = 0x7265746E65;
  }

  else
  {
    if (a1 == 3)
    {
      v3 = 1953069157;
    }

    else
    {
      v3 = 0x6D72657465646E75;
    }

    if (v2 == 3)
    {
      v4 = 0xE400000000000000;
    }

    else
    {
      v4 = 0xEC00000064656E69;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v6 = 7632239;
    }

    else
    {
      v6 = 28265;
    }

    if (a2)
    {
      v5 = 0xE300000000000000;
    }

    else
    {
      v5 = 0xE200000000000000;
    }

    if (v3 != v6)
    {
      goto LABEL_34;
    }
  }

  else if (a2 == 2)
  {
    v5 = 0xE500000000000000;
    if (v3 != 0x7265746E65)
    {
      goto LABEL_34;
    }
  }

  else if (a2 == 3)
  {
    v5 = 0xE400000000000000;
    if (v3 != 1953069157)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v5 = 0xEC00000064656E69;
    if (v3 != 0x6D72657465646E75)
    {
LABEL_34:
      v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
      goto LABEL_35;
    }
  }

  if (v4 != v5)
  {
    goto LABEL_34;
  }

  v7 = 1;
LABEL_35:

  return v7 & 1;
}

uint64_t sub_1001D6B64(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE900000000000070;
  v3 = 0x614D737574617473;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x5474736575716572;
    }

    else
    {
      v5 = 7107189;
    }

    if (v4 == 2)
    {
      v6 = 0xED0000736E656B6FLL;
    }

    else
    {
      v6 = 0xE300000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x6F43737574617473;
    }

    else
    {
      v5 = 0x614D737574617473;
    }

    if (v4)
    {
      v6 = 0xEA00000000006564;
    }

    else
    {
      v6 = 0xE900000000000070;
    }
  }

  v7 = 0x5474736575716572;
  v8 = 0xED0000736E656B6FLL;
  if (a2 != 2)
  {
    v7 = 7107189;
    v8 = 0xE300000000000000;
  }

  if (a2)
  {
    v3 = 0x6F43737574617473;
    v2 = 0xEA00000000006564;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

uint64_t sub_1001D6CB8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE200000000000000;
  v4 = 25705;
  v5 = 0xE800000000000000;
  v6 = 0x7354657461647075;
  if (a1 != 5)
  {
    v6 = 0x644972657375;
    v5 = 0xE600000000000000;
  }

  v7 = 0xE800000000000000;
  v8 = 0x656475746974616CLL;
  if (a1 != 3)
  {
    v8 = 0x64757469676E6F6CLL;
    v7 = 0xE900000000000065;
  }

  if (a1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE500000000000000;
  v10 = 0x6C6562616CLL;
  if (a1 != 1)
  {
    v10 = 0x7079546C6562616CLL;
    v9 = 0xE900000000000065;
  }

  if (a1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (a1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (v2 <= 2)
  {
    v12 = v3;
  }

  else
  {
    v12 = v5;
  }

  if (a2 <= 2u)
  {
    if (!a2)
    {
      v13 = 0xE200000000000000;
      if (v11 != 25705)
      {
        goto LABEL_38;
      }

      goto LABEL_36;
    }

    if (a2 == 1)
    {
      v13 = 0xE500000000000000;
      if (v11 != 0x6C6562616CLL)
      {
        goto LABEL_38;
      }

      goto LABEL_36;
    }

    v14 = 0x7079546C6562616CLL;
    goto LABEL_33;
  }

  if (a2 <= 4u)
  {
    if (a2 == 3)
    {
      v13 = 0xE800000000000000;
      if (v11 != 0x656475746974616CLL)
      {
        goto LABEL_38;
      }

      goto LABEL_36;
    }

    v14 = 0x64757469676E6F6CLL;
LABEL_33:
    v13 = 0xE900000000000065;
    if (v11 != v14)
    {
      goto LABEL_38;
    }

    goto LABEL_36;
  }

  if (a2 == 5)
  {
    v13 = 0xE800000000000000;
    if (v11 != 0x7354657461647075)
    {
      goto LABEL_38;
    }
  }

  else
  {
    v13 = 0xE600000000000000;
    if (v11 != 0x644972657375)
    {
LABEL_38:
      v15 = _stringCompareWithSmolCheck(_:_:expecting:)();
      goto LABEL_39;
    }
  }

LABEL_36:
  if (v12 != v13)
  {
    goto LABEL_38;
  }

  v15 = 1;
LABEL_39:

  return v15 & 1;
}

uint64_t sub_1001D6EC8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 2u)
  {
    if (a1 == 3)
    {
      v5 = 0xD000000000000013;
      v6 = 0x80000001004DDFE0;
    }

    else
    {
      if (a1 == 4)
      {
        v5 = 0x457972616D697270;
      }

      else
      {
        v5 = 0x657469726F766166;
      }

      if (v2 == 4)
      {
        v6 = 0xEC0000006C69616DLL;
      }

      else
      {
        v6 = 0xE900000000000073;
      }
    }
  }

  else
  {
    v3 = 0x80000001004DDFC0;
    v4 = 0xD000000000000011;
    if (a1 != 1)
    {
      v4 = 0x61636F4C65646968;
      v3 = 0xEC0000006E6F6974;
    }

    if (a1)
    {
      v5 = v4;
    }

    else
    {
      v5 = 0xD000000000000013;
    }

    if (v2)
    {
      v6 = v3;
    }

    else
    {
      v6 = 0x80000001004DDFA0;
    }
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v7 = 0xD000000000000011;
      }

      else
      {
        v7 = 0x61636F4C65646968;
      }

      if (a2 == 1)
      {
        v8 = 0x80000001004DDFC0;
      }

      else
      {
        v8 = 0xEC0000006E6F6974;
      }

      if (v5 != v7)
      {
        goto LABEL_39;
      }

      goto LABEL_37;
    }

    v9 = "allowFriendRequests";
    goto LABEL_34;
  }

  if (a2 == 3)
  {
    v9 = "shouldReceiveEmails";
LABEL_34:
    v8 = (v9 - 32) | 0x8000000000000000;
    if (v5 != 0xD000000000000013)
    {
      goto LABEL_39;
    }

    goto LABEL_37;
  }

  if (a2 == 4)
  {
    v8 = 0xEC0000006C69616DLL;
    if (v5 != 0x457972616D697270)
    {
      goto LABEL_39;
    }
  }

  else
  {
    v8 = 0xE900000000000073;
    if (v5 != 0x657469726F766166)
    {
LABEL_39:
      v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
      goto LABEL_40;
    }
  }

LABEL_37:
  if (v6 != v8)
  {
    goto LABEL_39;
  }

  v10 = 1;
LABEL_40:

  return v10 & 1;
}

uint64_t sub_1001D70CC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v3 = 0x6E6F697461636F6CLL;
    }

    else
    {
      v3 = 0x737574617473;
    }

    if (v2 == 2)
    {
      v4 = 0xEE00737574617453;
    }

    else
    {
      v4 = 0xE600000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v3 = 0x6E6F697461636F6CLL;
    }

    else
    {
      v3 = 25705;
    }

    if (v2)
    {
      v4 = 0xE800000000000000;
    }

    else
    {
      v4 = 0xE200000000000000;
    }
  }

  v5 = 0xE200000000000000;
  v6 = 25705;
  v7 = 0x6E6F697461636F6CLL;
  v8 = 0xEE00737574617453;
  if (a2 != 2)
  {
    v7 = 0x737574617473;
    v8 = 0xE600000000000000;
  }

  if (a2)
  {
    v6 = 0x6E6F697461636F6CLL;
    v5 = 0xE800000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v6;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v5;
  }

  else
  {
    v10 = v8;
  }

  if (v3 == v9 && v4 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

uint64_t sub_1001D7218(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE700000000000000;
  v4 = 0xE900000000000070;
  if (a1 == 6)
  {
    v5 = 0x6D617473656D6974;
  }

  else
  {
    v5 = 0xD000000000000010;
  }

  if (a1 != 6)
  {
    v4 = 0x80000001004DDC90;
  }

  v6 = 0xE800000000000000;
  v7 = 0x64757469676E6F6CLL;
  if (a1 == 4)
  {
    v7 = 0x656475746974616CLL;
  }

  else
  {
    v6 = 0xE900000000000065;
  }

  if (a1 > 5u)
  {
    v6 = v4;
  }

  else
  {
    v5 = v7;
  }

  v8 = 0xD000000000000012;
  if (a1 == 2)
  {
    v8 = 0x76654C726F6F6C66;
    v9 = 0xEA00000000006C65;
  }

  else
  {
    v9 = 0x80000001004DDCB0;
  }

  v10 = 0x6564757469746C61;
  if (a1)
  {
    v3 = 0xE800000000000000;
  }

  else
  {
    v10 = 0x73736572646461;
  }

  if (a1 > 1u)
  {
    v3 = v9;
  }

  else
  {
    v8 = v10;
  }

  if (a1 <= 3u)
  {
    v11 = v8;
  }

  else
  {
    v11 = v5;
  }

  if (v2 <= 3)
  {
    v12 = v3;
  }

  else
  {
    v12 = v6;
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v13 = 0xE900000000000070;
        if (v11 != 0x6D617473656D6974)
        {
          goto LABEL_51;
        }
      }

      else
      {
        v13 = 0x80000001004DDC90;
        if (v11 != 0xD000000000000010)
        {
LABEL_51:
          v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
          goto LABEL_52;
        }
      }
    }

    else if (a2 == 4)
    {
      v13 = 0xE800000000000000;
      if (v11 != 0x656475746974616CLL)
      {
        goto LABEL_51;
      }
    }

    else
    {
      v13 = 0xE900000000000065;
      if (v11 != 0x64757469676E6F6CLL)
      {
        goto LABEL_51;
      }
    }
  }

  else if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v13 = 0xEA00000000006C65;
      if (v11 != 0x76654C726F6F6C66)
      {
        goto LABEL_51;
      }
    }

    else
    {
      v13 = 0x80000001004DDCB0;
      if (v11 != 0xD000000000000012)
      {
        goto LABEL_51;
      }
    }
  }

  else if (a2)
  {
    v13 = 0xE800000000000000;
    if (v11 != 0x6564757469746C61)
    {
      goto LABEL_51;
    }
  }

  else
  {
    v13 = 0xE700000000000000;
    if (v11 != 0x73736572646461)
    {
      goto LABEL_51;
    }
  }

  if (v12 != v13)
  {
    goto LABEL_51;
  }

  v14 = 1;
LABEL_52:

  return v14 & 1;
}

uint64_t sub_1001D7490()
{
  String.hash(into:)();
}

Swift::Int sub_1001D75C8()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_1001D7714()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_1001D7834()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_1001D7944()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_1001D7A5C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1001D7B78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[106] = v4;
  v5[105] = a4;
  v5[104] = a3;
  v5[103] = a2;
  v5[102] = a1;
  v5[107] = *v4;
  return _swift_task_switch(sub_1001D7BD0, v4, 0);
}

uint64_t sub_1001D7BD0()
{
  v1 = *(v0 + 856);
  v2 = *(v0 + 848);
  v3 = *(v0 + 840);
  v4 = sub_1001E6D00(&qword_1005AFFB0, type metadata accessor for DataManager);
  v5 = swift_task_alloc();
  *(v0 + 864) = v5;
  *(v5 + 16) = *(v0 + 824);
  *(v5 + 32) = v2;
  *(v5 + 40) = v3;
  *(v5 + 48) = v1;
  v6 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v7 = swift_task_alloc();
  *(v0 + 872) = v7;
  *v7 = v0;
  v7[1] = sub_1001D7D28;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 16, v2, v4, 0xD000000000000025, 0x80000001004E5170, sub_1001EA540, v5, &type metadata for ServerBaseResponse);
}

uint64_t sub_1001D7D28()
{
  v2 = *v1;
  v3 = *(*v1 + 872);
  v4 = *v1;
  *(*v1 + 880) = v0;

  v5 = *(v2 + 848);
  if (v0)
  {
    v6 = sub_1001D7ECC;
  }

  else
  {
    v6 = sub_1001D7E54;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1001D7E54()
{
  v1 = *(v0 + 864);
  memcpy(*(v0 + 816), (v0 + 16), 0x320uLL);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1001D7ECC()
{
  v1 = v0[108];

  v2 = v0[1];
  v3 = v0[110];

  return v2();
}

uint64_t sub_1001D7F30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10004B564(&qword_1005A9690, &qword_1004C2A00);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_100005F04(a3, v27 - v11, &qword_1005A9690, &qword_1004C2A00);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_100002CE0(v12, &qword_1005A9690, &qword_1004C2A00);
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

      sub_100002CE0(a3, &qword_1005A9690, &qword_1004C2A00);

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

  sub_100002CE0(a3, &qword_1005A9690, &qword_1004C2A00);
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

uint64_t sub_1001D8230(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10004B564(&qword_1005A9690, &qword_1004C2A00);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_100005F04(a3, v27 - v11, &qword_1005A9690, &qword_1004C2A00);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_100002CE0(v12, &qword_1005A9690, &qword_1004C2A00);
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

      sub_10004B564(&qword_1005A9630, &qword_1004C5680);
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

      sub_100002CE0(a3, &qword_1005A9690, &qword_1004C2A00);

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

  sub_100002CE0(a3, &qword_1005A9690, &qword_1004C2A00);
  v26 = swift_allocObject();
  *(v26 + 16) = a4;
  *(v26 + 24) = a5;
  sub_10004B564(&qword_1005A9630, &qword_1004C5680);
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_1001D8544(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10004B564(&qword_1005A9690, &qword_1004C2A00);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_100005F04(a3, v27 - v11, &qword_1005A9690, &qword_1004C2A00);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_100002CE0(v12, &qword_1005A9690, &qword_1004C2A00);
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
      type metadata accessor for SecureLocationsManagerAdapter();

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

      sub_100002CE0(v27[0], &qword_1005A9690, &qword_1004C2A00);

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

  sub_100002CE0(a3, &qword_1005A9690, &qword_1004C2A00);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  type metadata accessor for SecureLocationsManagerAdapter();
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_1001D8850(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10004B564(&qword_1005A9690, &qword_1004C2A00);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_100005F04(a3, v27 - v11, &qword_1005A9690, &qword_1004C2A00);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_100002CE0(v12, &qword_1005A9690, &qword_1004C2A00);
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

      sub_10004B564(&qword_1005B0220, &qword_1004D17A8);
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

      sub_100002CE0(a3, &qword_1005A9690, &qword_1004C2A00);

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

  sub_100002CE0(a3, &qword_1005A9690, &qword_1004C2A00);
  v26 = swift_allocObject();
  *(v26 + 16) = a4;
  *(v26 + 24) = a5;
  sub_10004B564(&qword_1005B0220, &qword_1004D17A8);
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_1001D8B64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10004B564(&qword_1005A9690, &qword_1004C2A00);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_100005F04(a3, v27 - v11, &qword_1005A9690, &qword_1004C2A00);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_100002CE0(v12, &qword_1005A9690, &qword_1004C2A00);
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

      sub_10004B564(&qword_1005AA728, &unk_1004C4378);
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

      sub_100002CE0(a3, &qword_1005A9690, &qword_1004C2A00);

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

  sub_100002CE0(a3, &qword_1005A9690, &qword_1004C2A00);
  v26 = swift_allocObject();
  *(v26 + 16) = a4;
  *(v26 + 24) = a5;
  sub_10004B564(&qword_1005AA728, &unk_1004C4378);
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

BOOL sub_1001D8E78(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DataManager.State(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v20 - v9;
  sub_10020AABC(a2, &v20 - v9, type metadata accessor for DataManager.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload == 6)
      {
        v12 = 1;
      }

      else
      {
        v12 = 5;
      }
    }

    else if (EnumCaseMultiPayload == 4)
    {
      v12 = 7;
    }

    else
    {
      v12 = 0;
    }
  }

  else if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v13 = type metadata accessor for Friend();
      (*(*(v13 - 8) + 8))(v10, v13);
      v12 = 4;
    }

    else
    {
      v12 = 6;
    }
  }

  else if (EnumCaseMultiPayload)
  {
    v14 = type metadata accessor for Friend();
    (*(*(v14 - 8) + 8))(v10, v14);
    v12 = 3;
  }

  else
  {
    sub_100002CE0(v10, &qword_1005AA718, &qword_1004C4370);
    v12 = 2;
  }

  sub_10020AABC(a1, v8, type metadata accessor for DataManager.State);
  v15 = swift_getEnumCaseMultiPayload();
  if (v15 > 3)
  {
    if (v15 > 5)
    {
      if (v15 == 6)
      {
        v16 = 1;
      }

      else
      {
        v16 = 5;
      }
    }

    else if (v15 == 4)
    {
      v16 = 7;
    }

    else
    {
      v16 = 0;
    }
  }

  else if (v15 > 1)
  {
    if (v15 == 2)
    {
      v17 = type metadata accessor for Friend();
      (*(*(v17 - 8) + 8))(v8, v17);
      v16 = 4;
    }

    else
    {
      v16 = 6;
    }
  }

  else if (v15)
  {
    v18 = type metadata accessor for Friend();
    (*(*(v18 - 8) + 8))(v8, v18);
    v16 = 3;
  }

  else
  {
    sub_100002CE0(v8, &qword_1005AA718, &qword_1004C4370);
    v16 = 2;
  }

  return v12 < v16;
}

uint64_t sub_1001D9164(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = sub_1001FDA80(a1);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  v7 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *v2;
  v14 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_10020612C(&type metadata accessor for Destination, &qword_1005B0298, &qword_1004D1840);
    v9 = v14;
  }

  v10 = *(v9 + 48);
  v11 = type metadata accessor for Destination();
  (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v6, v11);
  v12 = *(*(v9 + 56) + 8 * v6);
  sub_100200814(v6, v9);
  *v2 = v9;
  return v12;
}

uint64_t sub_1001D9250(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = sub_1001FD93C(a1);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  v7 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *v2;
  v14 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_100205358(&type metadata accessor for Handle, &qword_1005B01F8, &qword_1004D1780);
    v9 = v14;
  }

  v10 = *(v9 + 48);
  v11 = type metadata accessor for Handle();
  (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v6, v11);
  v12 = *(*(v9 + 56) + 8 * v6);
  sub_1002016B4(v6, v9);
  *v2 = v9;
  return v12;
}

uint64_t sub_1001D933C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = sub_1001FD868(a1);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  v7 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *v2;
  v17 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_10020596C();
    v9 = v17;
  }

  v10 = *(v9 + 48);
  v11 = type metadata accessor for UUID();
  (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v6, v11);
  v12 = (*(v9 + 56) + 24 * v6);
  v13 = *v12;
  v14 = v12[1];
  v15 = v12[2];
  sub_100201D18(v6, v9);
  *v2 = v9;
  return v13;
}

BOOL sub_1001D9428(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DataManager.State(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v20 - v9;
  sub_10020AABC(a2, &v20 - v9, type metadata accessor for DataManager.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload == 6)
      {
        v12 = 1;
      }

      else
      {
        v12 = 5;
      }
    }

    else if (EnumCaseMultiPayload == 4)
    {
      v12 = 7;
    }

    else
    {
      v12 = 0;
    }
  }

  else if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v13 = type metadata accessor for Friend();
      (*(*(v13 - 8) + 8))(v10, v13);
      v12 = 4;
    }

    else
    {
      v12 = 6;
    }
  }

  else if (EnumCaseMultiPayload)
  {
    v14 = type metadata accessor for Friend();
    (*(*(v14 - 8) + 8))(v10, v14);
    v12 = 3;
  }

  else
  {
    sub_100002CE0(v10, &qword_1005AA718, &qword_1004C4370);
    v12 = 2;
  }

  sub_10020AABC(a1, v8, type metadata accessor for DataManager.State);
  v15 = swift_getEnumCaseMultiPayload();
  if (v15 > 3)
  {
    if (v15 > 5)
    {
      if (v15 == 6)
      {
        v16 = 1;
      }

      else
      {
        v16 = 5;
      }
    }

    else if (v15 == 4)
    {
      v16 = 7;
    }

    else
    {
      v16 = 0;
    }
  }

  else if (v15 > 1)
  {
    if (v15 == 2)
    {
      v17 = type metadata accessor for Friend();
      (*(*(v17 - 8) + 8))(v8, v17);
      v16 = 4;
    }

    else
    {
      v16 = 6;
    }
  }

  else if (v15)
  {
    v18 = type metadata accessor for Friend();
    (*(*(v18 - 8) + 8))(v8, v18);
    v16 = 3;
  }

  else
  {
    sub_100002CE0(v8, &qword_1005AA718, &qword_1004C4370);
    v16 = 2;
  }

  return v12 >= v16;
}

uint64_t sub_1001D9714()
{
  v0 = type metadata accessor for Logger();
  sub_10004F154(v0, qword_1005DFF00);
  sub_10000A6F0(v0, qword_1005DFF00);
  return Logger.init(subsystem:category:)();
}

Swift::Int sub_1001D9794()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_1001D9808()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1001D985C@<X0>(Swift::String *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_10058BB18, *a1);

  *a2 = v3 != 0;
  return result;
}

uint64_t sub_1001D98EC@<X0>(Swift::String string@<0:X0, 8:X1>, BOOL *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&off_10058BB50, v3);

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_1001D9944(uint64_t a1)
{
  v2 = sub_10020C01C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001D9980(uint64_t a1)
{
  v2 = sub_10020C01C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001D99BC(void *a1)
{
  v2 = type metadata accessor for Locale();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_10004B564(&qword_1005B0480, &qword_1004D1C58);
  v7 = *(v20 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v20);
  v10 = &v19 - v9;
  v11 = a1[4];
  sub_100011AEC(a1, a1[3]);
  sub_10020C01C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v12 = [objc_allocWithZone(NSDateFormatter) init];
  Locale.init(identifier:)();
  isa = Locale._bridgeToObjectiveC()().super.isa;
  (*(v3 + 8))(v6, v2);
  [v12 setLocale:isa];

  v14 = String._bridgeToObjectiveC()();
  [v12 setDateFormat:v14];

  v15 = Date._bridgeToObjectiveC()().super.isa;
  v16 = [v12 stringFromDate:v15];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v20;
  KeyedEncodingContainer.encode(_:forKey:)();
  (*(v7 + 8))(v10, v17);
}

uint64_t sub_1001D9C7C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v3 = type metadata accessor for Locale();
  v46 = *(v3 - 8);
  v47 = v3;
  v4 = *(v46 + 64);
  __chkstk_darwin(v3);
  v49 = v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v43 = v6;
  v44 = v7;
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v39 - v12;
  v14 = sub_10004B564(&qword_1005B0470, &qword_1004D1C50);
  v48 = *(v14 - 8);
  v15 = *(v48 + 64);
  __chkstk_darwin(v14);
  v17 = v39 - v16;
  v18 = type metadata accessor for FMFAPSMessage(0);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v21 = v39 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = a1[4];
  sub_100011AEC(a1, a1[3]);
  sub_10020C01C();
  v23 = v50;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v23)
  {
    v40 = v21;
    v41 = v13;
    v50 = a1;
    v42 = v11;
    v25 = v48;
    v24 = v49;
    v39[1] = KeyedDecodingContainer.decode(_:forKey:)();
    v28 = [objc_allocWithZone(NSDateFormatter) init];
    Locale.init(identifier:)();
    isa = Locale._bridgeToObjectiveC()().super.isa;
    (*(v46 + 8))(v24, v47);
    [v28 setLocale:isa];

    v30 = String._bridgeToObjectiveC()();
    [v28 setDateFormat:v30];

    v31 = String._bridgeToObjectiveC()();

    v32 = [v28 dateFromString:v31];

    if (v32)
    {
      v33 = v42;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      (*(v25 + 8))(v17, v14);
      v34 = v43;
      v35 = *(v44 + 32);
      v36 = v41;
      v35(v41, v33, v43);
      v37 = v40;
      v35(v40, v36, v34);
      sub_10020AE30(v37, v45, type metadata accessor for FMFAPSMessage);
      v26 = v50;
      return sub_100004984(v26);
    }

    sub_10020ADDC();
    swift_allocError();
    *v38 = 0;
    swift_willThrow();
    (*(v25 + 8))(v17, v14);
    a1 = v50;
  }

  v26 = a1;
  return sub_100004984(v26);
}

uint64_t sub_1001DA128()
{
  v0._countAndFlagsBits = Date.localISO8601.getter();
  String.append(_:)(v0);

  return 0x54646E6553706174;
}

uint64_t sub_1001DA188()
{
  v0 = type metadata accessor for Logger();
  sub_10004F154(v0, qword_1005DFF18);
  v1 = sub_10000A6F0(v0, qword_1005DFF18);
  if (qword_1005A80B0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000A6F0(v0, qword_1005DFF00);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1001DAB14(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    if (a1 > 8u)
    {
      v6 = 0xD000000000000017;
      v7 = 0xD000000000000019;
      if (a1 != 10)
      {
        v7 = 0xD000000000000017;
      }

      v8 = a1 == 9;
    }

    else
    {
      v6 = 0xD000000000000012;
      if (a1 == 7)
      {
        v7 = 0xD000000000000016;
      }

      else
      {
        v7 = 0xD000000000000014;
      }

      v8 = a1 == 6;
    }

    if (v8)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v1 = 0x6E776F6E6B6E752ELL;
    v2 = 0xD000000000000013;
    v3 = 0xD000000000000013;
    if (a1 != 4)
    {
      v3 = 0xD00000000000001BLL;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0x74756F656D69742ELL;
    if (a1 != 1)
    {
      v4 = 0x6F707075736E752ELL;
    }

    if (a1)
    {
      v1 = v4;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1001DACA0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10020C070(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1001DACCC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10020BFC8();
  v5 = sub_10004E724();

  return Error<>._code.getter(a1, a2, v4, v5);
}

uint64_t sub_1001DAD2C()
{
  v0 = type metadata accessor for PrefixedDefaults();
  sub_10004F154(v0, qword_1005AFA78);
  sub_10000A6F0(v0, qword_1005AFA78);
  return PrefixedDefaults.init(prefix:)();
}

uint64_t sub_1001DAD98()
{
  v0 = type metadata accessor for PrefixedDefaults();
  sub_10004F154(v0, qword_1005DFF30);
  v1 = sub_10000A6F0(v0, qword_1005DFF30);
  if (qword_1005A80C0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000A6F0(v0, qword_1005AFA78);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1001DAE60()
{
  v0 = type metadata accessor for PrefixedDefaults();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10004B564(&qword_1005B02D8, &qword_1004D1868);
  sub_10004F154(v5, qword_1005AFA90);
  sub_10000A6F0(v5, qword_1005AFA90);
  if (qword_1005A80C8 != -1)
  {
    swift_once();
  }

  v6 = sub_10000A6F0(v0, qword_1005DFF30);
  (*(v1 + 16))(v4, v6, v0);
  type metadata accessor for Date();
  return ManagedDefault.init(prefixedDefaults:key:)();
}

uint64_t sub_1001DAFD4()
{
  v0 = type metadata accessor for PrefixedDefaults();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10004B564(&qword_1005AFFF0, &qword_1004D1520);
  sub_10004F154(v5, qword_1005AFAA8);
  sub_10000A6F0(v5, qword_1005AFAA8);
  if (qword_1005A80C8 != -1)
  {
    swift_once();
  }

  v6 = sub_10000A6F0(v0, qword_1005DFF30);
  (*(v1 + 16))(v4, v6, v0);
  return ManagedDefault.init(prefixedDefaults:key:)();
}

uint64_t sub_1001DB14C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for Device();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = swift_task_alloc();
  v2[7] = v6;
  *v6 = v2;
  v6[1] = sub_1001DB238;

  return sub_100245198();
}

uint64_t sub_1001DB238(uint64_t a1)
{
  v2 = *(*v1 + 56);
  v3 = *(*v1 + 24);
  v5 = *v1;
  *(*v1 + 64) = a1;

  return _swift_task_switch(sub_1001DB350, v3, 0);
}

void sub_1001DB350()
{
  v1 = v0[8];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = v0[5];
    while (v3 < *(v1 + 16))
    {
      (*(v4 + 16))(v0[6], v0[8] + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v3, v0[4]);
      if (Device.isActive.getter())
      {
        v7 = v0[8];
        v9 = v0[5];
        v8 = v0[6];
        v10 = v0[4];
        v11 = v0[2];

        (*(v9 + 32))(v11, v8, v10);
        v6 = 0;
        goto LABEL_9;
      }

      ++v3;
      (*(v4 + 8))(v0[6], v0[4]);
      if (v2 == v3)
      {
        v5 = v0[8];
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_7:

    v6 = 1;
LABEL_9:
    v12 = v0[6];
    (*(v0[5] + 56))(v0[2], v6, 1, v0[4]);

    v13 = v0[1];

    v13();
  }
}

uint64_t sub_1001DB4C0(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for Device();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v6 = *(*(sub_10004B564(&qword_1005AA718, &qword_1004C4370) - 8) + 64) + 15;
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v7 = swift_task_alloc();
  v2[10] = v7;
  *v7 = v2;
  v7[1] = sub_1001DB5FC;

  return sub_100245198();
}

uint64_t sub_1001DB5FC(uint64_t a1)
{
  v2 = *(*v1 + 80);
  v3 = *(*v1 + 24);
  v5 = *v1;
  *(*v1 + 88) = a1;

  return _swift_task_switch(sub_1001DB714, v3, 0);
}

void sub_1001DB714()
{
  v1 = v0[11];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = v0[5];
    while (v3 < *(v1 + 16))
    {
      (*(v4 + 16))(v0[7], v0[11] + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v3, v0[4]);
      if (Device.isThisDevice.getter())
      {
        v7 = v0[11];
        v8 = v0[9];
        v9 = v0[7];
        v10 = v0[4];
        v11 = v0[5];

        (*(v11 + 32))(v8, v9, v10);
        v6 = 0;
        goto LABEL_9;
      }

      ++v3;
      (*(v4 + 8))(v0[7], v0[4]);
      if (v2 == v3)
      {
        v5 = v0[11];
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_7:

    v6 = 1;
LABEL_9:
    v12 = v0[9];
    v13 = v0[4];
    v14 = *(v0[5] + 56);
    v0[12] = v14;
    v14(v12, v6, 1, v13);
    v15 = swift_task_alloc();
    v0[13] = v15;
    *v15 = v0;
    v15[1] = sub_1001DB8B4;
    v16 = v0[3];

    sub_100245198();
  }
}

uint64_t sub_1001DB8B4(uint64_t a1)
{
  v2 = *(*v1 + 104);
  v3 = *(*v1 + 24);
  v5 = *v1;
  *(*v1 + 112) = a1;

  return _swift_task_switch(sub_1001DB9CC, v3, 0);
}

void sub_1001DB9CC()
{
  v1 = *(v0 + 112);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = *(v0 + 40);
    while (v3 < *(v1 + 16))
    {
      (*(v4 + 16))(*(v0 + 48), *(v0 + 112) + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v3, *(v0 + 32));
      if (Device.isCompanion.getter())
      {
        v7 = *(v0 + 112);
        v8 = *(v0 + 64);
        v10 = *(v0 + 40);
        v9 = *(v0 + 48);
        v11 = *(v0 + 32);

        (*(v10 + 32))(v8, v9, v11);
        v6 = 0;
        goto LABEL_9;
      }

      ++v3;
      (*(v4 + 8))(*(v0 + 48), *(v0 + 32));
      if (v2 == v3)
      {
        v5 = *(v0 + 112);
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_7:

    v6 = 1;
LABEL_9:
    v12 = *(v0 + 72);
    v14 = *(v0 + 48);
    v13 = *(v0 + 56);
    v15 = *(v0 + 16);
    v16 = *(v0 + 40) + 56;
    (*(v0 + 96))(*(v0 + 64), v6, 1, *(v0 + 32));
    DeviceWithCompanion.init(thisDevice:companion:)();

    v17 = *(v0 + 8);

    v17();
  }
}

uint64_t sub_1001DBB70()
{
  *(v1 + 1184) = v0;
  v2 = swift_task_alloc();
  *(v1 + 1192) = v2;
  *v2 = v1;
  v2[1] = sub_1001DBC08;

  return sub_100245BB8(v1 + 496);
}

uint64_t sub_1001DBC08()
{
  v1 = *(*v0 + 1192);
  v2 = *(*v0 + 1184);
  v4 = *v0;

  return _swift_task_switch(sub_1001DBD18, v2, 0);
}

uint64_t sub_1001DBD18()
{
  memcpy((v0 + 16), (v0 + 496), 0x1E0uLL);
  if (sub_100033B90(v0 + 16) == 1)
  {
    goto LABEL_4;
  }

  v1 = *(v0 + 464);
  *(v0 + 1008) = *(v0 + 448);
  *(v0 + 1024) = v1;
  *(v0 + 1040) = *(v0 + 480);
  v2 = *(v0 + 432);
  *(v0 + 976) = *(v0 + 416);
  *(v0 + 992) = v2;
  sub_100005F04(v0 + 976, v0 + 1056, &qword_1005AD7A8, &qword_1004CA280);
  sub_100002CE0(v0 + 496, &qword_1005A90D8, &unk_1004C6AB0);
  v3 = *(v0 + 1016);
  if (!v3)
  {
LABEL_4:
    v5 = 0;
  }

  else
  {
    *(v0 + 1136) = *(v0 + 1008);
    *(v0 + 1144) = v3;
    *(v0 + 1152) = *(v0 + 1136);
    *(v0 + 1168) = 28494;
    *(v0 + 1176) = 0xE200000000000000;
    sub_1000246F4();

    v4 = StringProtocol.caseInsensitiveCompare<A>(_:)();
    sub_100002CE0(v0 + 976, &qword_1005AD7A8, &qword_1004CA280);
    sub_10007C2B8(v0 + 1136);
    v5 = v4 == 0;
  }

  v6 = *(v0 + 8);

  return v6(v5);
}

uint64_t sub_1001DBE84()
{
  *(v1 + 1184) = v0;
  v2 = swift_task_alloc();
  *(v1 + 1192) = v2;
  *v2 = v1;
  v2[1] = sub_1001DBF1C;

  return sub_100245BB8(v1 + 496);
}

uint64_t sub_1001DBF1C()
{
  v1 = *(*v0 + 1192);
  v2 = *(*v0 + 1184);
  v4 = *v0;

  return _swift_task_switch(sub_1001DC02C, v2, 0);
}

uint64_t sub_1001DC02C()
{
  memcpy((v0 + 16), (v0 + 496), 0x1E0uLL);
  if (sub_100033B90(v0 + 16) == 1)
  {
    goto LABEL_4;
  }

  v1 = *(v0 + 464);
  *(v0 + 1008) = *(v0 + 448);
  *(v0 + 1024) = v1;
  *(v0 + 1040) = *(v0 + 480);
  v2 = *(v0 + 432);
  *(v0 + 976) = *(v0 + 416);
  *(v0 + 992) = v2;
  sub_100005F04(v0 + 976, v0 + 1056, &qword_1005AD7A8, &qword_1004CA280);
  sub_100002CE0(v0 + 496, &qword_1005A90D8, &unk_1004C6AB0);
  if (!*(v0 + 1016))
  {
LABEL_4:
    v6 = 0;
  }

  else
  {
    v3 = *(v0 + 1024);
    *(v0 + 1136) = v3;
    *(v0 + 1152) = v3;
    *(v0 + 1168) = 7562585;
    *(v0 + 1176) = 0xE300000000000000;
    v4 = *(v0 + 1144);
    sub_1000246F4();

    v5 = StringProtocol.caseInsensitiveCompare<A>(_:)();
    sub_100002CE0(v0 + 976, &qword_1005AD7A8, &qword_1004CA280);
    sub_10007C2B8(v0 + 1136);
    v6 = v5 == 0;
  }

  v7 = *(v0 + 8);

  return v7(v6);
}

uint64_t sub_1001DC198(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v31 = a4;
  v9 = type metadata accessor for UUID();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v11 = sub_10004B564(&qword_1005B0370, &unk_1004D2410);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v28 - v13;
  swift_defaultActor_initialize();
  *(v4 + 112) = 0;
  *(v4 + 120) = 0;
  *(v4 + 136) = 0;
  *(v4 + 128) = 0;
  *(v4 + 144) = 0x616E614D61746144;
  *(v4 + 152) = 0xEB00000000726567;
  v15 = type metadata accessor for WorkItemQueue();
  v16 = type metadata accessor for WorkItemQueue.WarningOptions();
  v17 = *(v16 - 8);
  v18 = *(v17 + 56);
  v28 = v17 + 56;
  v29 = v18;
  v18(v14, 1, 1, v16);
  UUID.init()();
  v30 = v15;
  *(v4 + 160) = WorkItemQueue.__allocating_init(name:identifier:warningOptions:)();
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;
  *(v4 + 184) = _swiftEmptyArrayStorage;
  v19 = OBJC_IVAR____TtC13findmylocated11DataManager_accountStateStream;
  v20 = sub_10004B564(&unk_1005AFB18, &qword_1004D12E8);
  (*(*(v20 - 8) + 56))(v4 + v19, 1, 1, v20);
  *(v4 + OBJC_IVAR____TtC13findmylocated11DataManager_retryCount) = 0;
  *(v4 + OBJC_IVAR____TtC13findmylocated11DataManager_stateContinuations) = _swiftEmptyDictionarySingleton;
  *(v4 + OBJC_IVAR____TtC13findmylocated11DataManager__apnsRefreshTimestamps) = _swiftEmptyArrayStorage;
  *(v4 + OBJC_IVAR____TtC13findmylocated11DataManager_lastSuccessfulResponseTimestamp) = 0;
  *(v4 + OBJC_IVAR____TtC13findmylocated11DataManager_apnsToken) = xmmword_1004C43F0;
  type metadata accessor for DataManager.State(0);
  v21 = a3;
  swift_storeEnumTagMultiPayload();
  *(v4 + OBJC_IVAR____TtC13findmylocated11DataManager_handlesSharingLocation) = _swiftEmptyArrayStorage;
  *(v4 + OBJC_IVAR____TtC13findmylocated11DataManager_legacyLocationsForHandles) = _swiftEmptyDictionarySingleton;
  *(v4 + 168) = a1;
  *(v4 + 176) = a2;
  sub_100005F04(a3, &v32, &qword_1005B0378, &qword_1004D19B0);
  if (v33)
  {
    sub_100010BD4(&v32, &v34);
    swift_unknownObjectRetain();
  }

  else
  {
    v22 = type metadata accessor for ServerInteractionController();
    swift_unknownObjectRetain();
    sub_1004B885C(3u);
    v23 = ServerInteractionController.__allocating_init(bundleIdentifier:)();
    v35 = v22;
    v36 = &protocol witness table for ServerInteractionController;
    *&v34 = v23;
    if (v33)
    {
      sub_100002CE0(&v32, &qword_1005B0378, &qword_1004D19B0);
    }
  }

  sub_100010BD4(&v34, v5 + OBJC_IVAR____TtC13findmylocated11DataManager_sic);
  v24 = v31;
  sub_100005F04(v31, &v32, &qword_1005B0380, &qword_1004D19B8);
  if (v33)
  {
    swift_unknownObjectRelease();
    sub_100002CE0(v24, &qword_1005B0380, &qword_1004D19B8);
    sub_100002CE0(v21, &qword_1005B0378, &qword_1004D19B0);
    sub_100010BD4(&v32, &v34);
  }

  else
  {
    v25 = type metadata accessor for ServerAlertPresenter();
    v26 = swift_allocObject();
    v29(v14, 1, 1, v16);
    UUID.init()();
    *(v26 + 16) = WorkItemQueue.__allocating_init(name:identifier:warningOptions:)();
    v35 = v25;
    v36 = &off_100595FB8;
    swift_unknownObjectRelease();
    *&v34 = v26;
    sub_100002CE0(v24, &qword_1005B0380, &qword_1004D19B8);
    sub_100002CE0(v21, &qword_1005B0378, &qword_1004D19B0);
    if (v33)
    {
      sub_100002CE0(&v32, &qword_1005B0380, &qword_1004D19B8);
    }
  }

  sub_100010BD4(&v34, v5 + OBJC_IVAR____TtC13findmylocated11DataManager_serverAlertPresenter);
  return v5;
}

uint64_t sub_1001DC630()
{
  v1[2] = v0;
  v1[3] = *v0;
  v2 = *(*(type metadata accessor for DispatchQoS() - 8) + 64) + 15;
  v1[4] = swift_task_alloc();

  return _swift_task_switch(sub_1001DC6E8, v0, 0);
}

uint64_t sub_1001DC6E8()
{
  if (qword_1005A80B8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000A6F0(v1, qword_1005DFF18);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
  }

  v6 = v0[3];
  v5 = v0[4];
  v7 = v0[2];

  type metadata accessor for XPCActivity();
  static DispatchQoS.background.getter();
  v8 = swift_allocObject();
  swift_weakInit();
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = v6;
  v10 = async function pointer to XPCActivity.__allocating_init(name:qos:criteriaBlock:handler:)[1];
  v11 = swift_task_alloc();
  v0[5] = v11;
  *v11 = v0;
  v11[1] = sub_1001DC8E4;
  v12 = v0[4];

  return XPCActivity.__allocating_init(name:qos:criteriaBlock:handler:)(0xD00000000000002BLL, 0x80000001004E5560, v12, &unk_1004D1948, 0, &unk_1004D1958, v9);
}

uint64_t sub_1001DC8E4(uint64_t a1)
{
  v2 = *(*v1 + 40);
  v3 = *(*v1 + 16);
  v5 = *v1;
  *(*v1 + 48) = a1;

  return _swift_task_switch(sub_1001DC9FC, v3, 0);
}

uint64_t sub_1001DC9FC()
{
  v1 = v0[4];
  v2 = v0[2];
  v3 = *(v2 + 128);
  *(v2 + 128) = v0[6];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1001DCA78(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_1001DCA98, 0, 0);
}

uint64_t sub_1001DCA98()
{
  sub_100005F04(v0[3], v0[2], &qword_1005B0338, &qword_1004D1960);
  v1 = v0[1];

  return v1();
}

uint64_t sub_1001DCB08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[107] = a3;
  v3[106] = a2;
  v3[105] = a1;
  v4 = type metadata accessor for XPCActivity.State();
  v3[108] = v4;
  v5 = *(v4 - 8);
  v3[109] = v5;
  v6 = *(v5 + 64) + 15;
  v3[110] = swift_task_alloc();

  return _swift_task_switch(sub_1001DCBD0, 0, 0);
}

uint64_t sub_1001DCBD0()
{
  v1 = v0[110];
  v2 = v0[109];
  v3 = v0[108];
  (*(v2 + 16))(v1, v0[106], v3);
  v4 = (*(v2 + 88))(v1, v3);
  if (v4 == enum case for XPCActivity.State.run(_:))
  {
    if (qword_1005A80B8 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_10000A6F0(v5, qword_1005DFF18);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
    }

    v9 = v0[107];

    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    v0[111] = Strong;
    if (Strong)
    {
      v11 = swift_task_alloc();
      v0[112] = v11;
      *v11 = v0;
      v11[1] = sub_1001DCFBC;

      return sub_1001E17C0((v0 + 2));
    }

    v24 = v0[105];
    type metadata accessor for XPCActivity();
    sub_1001E6D00(&qword_1005B0330, &type metadata accessor for XPCActivity);
    v18 = dispatch thunk of Actor.unownedExecutor.getter();
    v20 = v25;
    v21 = sub_1001DD15C;
    goto LABEL_20;
  }

  if (v4 == enum case for XPCActivity.State.defer(_:))
  {
    if (qword_1005A80B8 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_10000A6F0(v13, qword_1005DFF18);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
    }

    v17 = v0[105];

    type metadata accessor for XPCActivity();
    sub_1001E6D00(&qword_1005B0330, &type metadata accessor for XPCActivity);
    v18 = dispatch thunk of Actor.unownedExecutor.getter();
    v20 = v19;
    v21 = sub_1001DD224;
LABEL_20:

    return _swift_task_switch(v21, v18, v20);
  }

  (*(v0[109] + 8))(v0[110], v0[108]);
  v22 = v0[110];

  v23 = v0[1];

  return v23();
}

uint64_t sub_1001DCFBC()
{
  v1 = *v0;
  v2 = *(*v0 + 896);
  v3 = *(*v0 + 888);
  v8 = *v0;

  sub_100002CE0(v1 + 16, &qword_1005B02C0, &unk_1004D5E90);

  v4 = *(v1 + 840);
  type metadata accessor for XPCActivity();
  sub_1001E6D00(&qword_1005B0330, &type metadata accessor for XPCActivity);
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1001DD15C, v6, v5);
}

uint64_t sub_1001DD15C()
{
  v1 = *(v0 + 840);
  dispatch thunk of XPCActivity.done()();

  return _swift_task_switch(sub_1001DD1C4, 0, 0);
}

uint64_t sub_1001DD1C4()
{
  v1 = *(v0 + 880);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1001DD224()
{
  v1 = *(v0 + 840);
  dispatch thunk of XPCActivity.defer()();

  return _swift_task_switch(sub_10020C19C, 0, 0);
}

uint64_t sub_1001DD28C()
{
  v1[95] = v0;
  v2 = sub_10004B564(&qword_1005B0328, &unk_1004D6A60);
  v1[101] = v2;
  v3 = *(v2 - 8);
  v1[102] = v3;
  v4 = *(v3 + 64) + 15;
  v1[103] = swift_task_alloc();
  v5 = *(*(sub_10004B564(&qword_1005B02F8, &qword_1004D1870) - 8) + 64) + 15;
  v1[104] = swift_task_alloc();

  return _swift_task_switch(sub_1001DD390, v0, 0);
}

uint64_t sub_1001DD390()
{
  if (qword_1005A80B8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000A6F0(v1, qword_1005DFF18);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "DataManager: run", v4, 2u);
  }

  v5 = async function pointer to daemon.getter[1];
  v6 = swift_task_alloc();
  *(v0 + 840) = v6;
  *v6 = v0;
  v6[1] = sub_1001DD4DC;

  return daemon.getter();
}

uint64_t sub_1001DD4DC(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 840);
  v12 = *v1;
  v3[106] = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  v3[107] = v6;
  v7 = type metadata accessor for Daemon();
  v3[108] = v7;
  UnlockService = type metadata accessor for FirstUnlockService();
  v9 = sub_1001E6D00(&unk_1005AFA50, &type metadata accessor for Daemon);
  v3[109] = v9;
  v10 = sub_1001E6D00(&qword_1005AD510, &type metadata accessor for FirstUnlockService);
  *v6 = v12;
  v6[1] = sub_1001DD6BC;

  return ActorServiceDaemon.getService<A>()(v7, UnlockService, v9, v10);
}

uint64_t sub_1001DD6BC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 856);
  v6 = *v2;
  v4[110] = a1;
  v4[111] = v1;

  if (v1)
  {
    v7 = v4[95];

    return _swift_task_switch(sub_1001DE0F4, v7, 0);
  }

  else
  {
    v8 = v4[106];

    v9 = *(&async function pointer to dispatch thunk of FirstUnlockService.waitForFirstUnlock() + 1);
    v12 = (&async function pointer to dispatch thunk of FirstUnlockService.waitForFirstUnlock() + async function pointer to dispatch thunk of FirstUnlockService.waitForFirstUnlock());
    v10 = swift_task_alloc();
    v4[112] = v10;
    *v10 = v6;
    v10[1] = sub_1001DD864;

    return v12();
  }
}

uint64_t sub_1001DD864()
{
  v1 = *v0;
  v2 = *(*v0 + 896);
  v3 = *v0;

  v4 = swift_task_alloc();
  *(v1 + 904) = v4;
  *v4 = v3;
  v4[1] = sub_1001DD9A4;
  v5 = *(v1 + 760);

  return sub_1001DE29C();
}

uint64_t sub_1001DD9A4()
{
  v1 = *v0;
  v2 = *(*v0 + 904);
  v6 = *v0;

  v3 = async function pointer to daemon.getter[1];
  v4 = swift_task_alloc();
  *(v1 + 912) = v4;
  *v4 = v6;
  v4[1] = sub_1001DDAD0;

  return daemon.getter();
}

uint64_t sub_1001DDAD0(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 912);
  v5 = *v1;
  v3[115] = a1;

  v6 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v7 = swift_task_alloc();
  v3[116] = v7;
  v8 = type metadata accessor for AccountService(0);
  v9 = sub_1001E6D00(&qword_1005A9118, type metadata accessor for AccountService);
  *v7 = v5;
  v7[1] = sub_1001DDC84;
  v10 = v3[109];
  v11 = v3[108];

  return ActorServiceDaemon.getService<A>()(v11, v8, v10, v9);
}

uint64_t sub_1001DDC84(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 928);
  v6 = *v2;
  v4[117] = a1;
  v4[118] = v1;

  if (v1)
  {
    v7 = v4[95];
    v8 = sub_1001DE16C;
  }

  else
  {
    v9 = v4[115];

    v8 = sub_1001DDDC0;
    v7 = a1;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_1001DDDC0()
{
  v1 = v0[117];
  v2 = v0[104];
  v3 = v0[103];
  v4 = v0[102];
  v5 = v0[101];
  v6 = v0[95];
  swift_allocObject();
  swift_weakInit();
  type metadata accessor for AccountService.State(0);
  (*(v4 + 104))(v3, enum case for AsyncStream.Continuation.BufferingPolicy.unbounded<A>(_:), v5);
  AsyncStream.init(_:bufferingPolicy:_:)();

  return _swift_task_switch(sub_1001DDED8, v6, 0);
}

uint64_t sub_1001DDED8()
{
  v1 = *(v0 + 832);
  v2 = *(v0 + 760);
  v3 = sub_10004B564(&unk_1005AFB18, &qword_1004D12E8);
  (*(*(v3 - 8) + 56))(v1, 0, 1, v3);
  v4 = OBJC_IVAR____TtC13findmylocated11DataManager_accountStateStream;
  swift_beginAccess();
  sub_10020BAB0(v1, v2 + v4);
  swift_endAccess();

  swift_asyncLet_begin();

  return _swift_asyncLet_get_throwing(v0 + 16);
}

uint64_t sub_1001DDFFC(uint64_t a1, uint64_t a2)
{
  *(v3 + 952) = v2;
  if (v2)
  {
    v4 = sub_1001DE1F0;
    v5 = v3 + 16;
    v6 = v3 + 720;
  }

  else
  {
    v4 = sub_1001DE03C;
    v5 = v3 + 16;
    v6 = v3 + 768;
  }

  return _swift_asyncLet_finish(v5, a2, v4, v6);
}

uint64_t sub_1001DE058()
{
  v1 = v0[117];
  v2 = v0[110];
  v3 = v0[104];
  v4 = v0[103];
  v5 = v0[95];

  v6 = v0[1];

  return v6();
}

uint64_t sub_1001DE0F4()
{
  v1 = v0[106];

  v2 = v0[111];
  v3 = v0[104];
  v4 = v0[103];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1001DE16C()
{
  v1 = v0[115];
  v2 = v0[110];

  v3 = v0[118];
  v4 = v0[104];
  v5 = v0[103];

  v6 = v0[1];

  return v6();
}

uint64_t sub_1001DE20C()
{
  v1 = v0[117];
  v2 = v0[110];
  v3 = v0[95];

  v4 = v0[119];
  v5 = v0[104];
  v6 = v0[103];

  v7 = v0[1];

  return v7();
}

uint64_t sub_1001DE29C()
{
  v1[5] = v0;
  v1[6] = *v0;
  v2 = *(*(sub_10004B564(&qword_1005A9690, &qword_1004C2A00) - 8) + 64) + 15;
  v1[7] = swift_task_alloc();
  v3 = type metadata accessor for DataManager.State(0);
  v1[8] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v1[9] = swift_task_alloc();
  v5 = sub_10004B564(&qword_1005AFFF0, &qword_1004D1520);
  v1[10] = v5;
  v6 = *(v5 - 8);
  v1[11] = v6;
  v7 = *(v6 + 64) + 15;
  v1[12] = swift_task_alloc();

  return _swift_task_switch(sub_1001DE3F8, v0, 0);
}

uint64_t sub_1001DE3F8()
{
  v19 = v0;
  if (qword_1005A80D8 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v3 = *(v0 + 80);
  v4 = sub_10000A6F0(v3, qword_1005AFAA8);
  swift_beginAccess();
  (*(v2 + 16))(v1, v4, v3);
  ManagedDefault.wrappedValue.getter();
  (*(v2 + 8))(v1, v3);
  v5 = *(v0 + 136);
  *(v0 + 137) = v5;
  if (qword_1005A80B8 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  *(v0 + 104) = sub_10000A6F0(v6, qword_1005DFF18);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v18 = v10;
    *v9 = 136446466;
    *(v9 + 4) = sub_10000D01C(0x65696C4374696E69, 0xEC0000002928746ELL, &v18);
    *(v9 + 12) = 1024;
    v11 = v5 & 1;
    *(v9 + 14) = v11;
    _os_log_impl(&_mh_execute_header, v7, v8, "%{public}s isInitialized:%{BOOL}d", v9, 0x12u);
    sub_100004984(v10);
  }

  else
  {

    LOBYTE(v11) = v5 & 1;
  }

  v12 = *(v0 + 40);
  v13 = *(v0 + 48);
  v14 = swift_allocObject();
  *(v0 + 112) = v14;
  *(v14 + 16) = v12;
  *(v14 + 24) = v11;
  *(v14 + 32) = v13;
  v15 = async function pointer to withTimeout<A>(_:block:)[1];

  v16 = swift_task_alloc();
  *(v0 + 120) = v16;
  *v16 = v0;
  v16[1] = sub_1001DE6DC;

  return withTimeout<A>(_:block:)(v16, 0x8155A43676E00000, 6, &unk_1004D1900, v14, &type metadata for () + 8);
}

uint64_t sub_1001DE6DC()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v9 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v4 = *(v2 + 40);
    v5 = sub_1001DE87C;
  }

  else
  {
    v6 = *(v2 + 112);
    v7 = *(v2 + 40);

    v5 = sub_1001DE804;
    v4 = v7;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_1001DE804()
{
  v1 = v0[12];
  v2 = v0[9];
  v3 = v0[7];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1001DE87C()
{
  v1 = *(v0 + 128);
  v3 = *(v0 + 104);
  v2 = *(v0 + 112);

  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 128);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v4, v5, "Init client failed due to %{public}@", v7, 0xCu);
    sub_100002CE0(v8, &qword_1005A9670, &unk_1004C2480);
  }

  v10 = *(v0 + 137);

  if (v10)
  {
    v11 = *(v0 + 104);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "Daemon has already initialized, updating DataManager state so we can respond to incoming requests", v14, 2u);
    }

    v15 = *(v0 + 128);
    v17 = *(v0 + 64);
    v16 = *(v0 + 72);
    v19 = *(v0 + 48);
    v18 = *(v0 + 56);
    v20 = *(v0 + 40);

    swift_storeEnumTagMultiPayload();
    sub_100241560(v16);
    sub_10020A58C(v16, type metadata accessor for DataManager.State);
    v21 = type metadata accessor for TaskPriority();
    (*(*(v21 - 8) + 56))(v18, 1, 1, v21);
    v22 = sub_1001E6D00(&qword_1005AFFB0, type metadata accessor for DataManager);
    v23 = swift_allocObject();
    v23[2] = v20;
    v23[3] = v22;
    v23[4] = v20;
    v23[5] = v19;
    swift_retain_n();
    sub_1001D7F30(0, 0, v18, &unk_1004D1910, v23);
  }

  else
  {
    v24 = *(v0 + 128);
  }

  v25 = *(v0 + 96);
  v26 = *(v0 + 72);
  v27 = *(v0 + 56);

  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_1001DEB98()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000368C;

  return sub_1001DEC28();
}

uint64_t sub_1001DEC28()
{
  v1[18] = v0;
  v1[19] = *v0;
  v2 = *(*(type metadata accessor for UUID() - 8) + 64) + 15;
  v1[20] = swift_task_alloc();
  v3 = sub_10004B564(&qword_1005AFFF0, &qword_1004D1520);
  v1[21] = v3;
  v4 = *(v3 - 8);
  v1[22] = v4;
  v5 = *(v4 + 64) + 15;
  v1[23] = swift_task_alloc();
  v6 = type metadata accessor for Account();
  v1[24] = v6;
  v7 = *(v6 - 8);
  v1[25] = v7;
  v1[26] = *(v7 + 64);
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v8 = type metadata accessor for AccountService.State(0);
  v1[30] = v8;
  v9 = *(v8 - 8);
  v1[31] = v9;
  v10 = *(v9 + 64) + 15;
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();
  v1[38] = swift_task_alloc();
  v1[39] = swift_task_alloc();
  v11 = *(*(sub_10004B564(&qword_1005B02E8, &unk_1004D7BA0) - 8) + 64) + 15;
  v1[40] = swift_task_alloc();
  v12 = sub_10004B564(&qword_1005B02F0, &unk_1004D6A70);
  v1[41] = v12;
  v13 = *(v12 - 8);
  v1[42] = v13;
  v14 = *(v13 + 64) + 15;
  v1[43] = swift_task_alloc();
  v15 = *(*(sub_10004B564(&qword_1005B02F8, &qword_1004D1870) - 8) + 64) + 15;
  v1[44] = swift_task_alloc();
  v16 = sub_10004B564(&unk_1005AFB18, &qword_1004D12E8);
  v1[45] = v16;
  v17 = *(v16 - 8);
  v1[46] = v17;
  v18 = *(v17 + 64) + 15;
  v1[47] = swift_task_alloc();

  return _swift_task_switch(sub_1001DEFB4, v0, 0);
}

uint64_t sub_1001DEFB4()
{
  if (static SystemInfo.underTest.getter())
  {
LABEL_10:
    v13 = v0[47];
    v15 = v0[43];
    v14 = v0[44];
    v17 = v0[39];
    v16 = v0[40];
    v19 = v0[37];
    v18 = v0[38];
    v20 = v0[35];
    v21 = v0[36];
    v22 = v0[34];
    v33 = v0[33];
    v34 = v0[32];
    v35 = v0[29];
    v36 = v0[28];
    v37 = v0[27];
    v38 = v0[23];
    v39 = v0[20];

    v23 = v0[1];

    return v23();
  }

  if (qword_1005A80B8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[48] = sub_10000A6F0(v1, qword_1005DFF18);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Monitoring AccountState stream", v4, 2u);
  }

  v5 = v0[45];
  v6 = v0[46];
  v7 = v0[44];
  v8 = v0[18];

  v9 = OBJC_IVAR____TtC13findmylocated11DataManager_accountStateStream;
  swift_beginAccess();
  sub_100005F04(v8 + v9, v7, &qword_1005B02F8, &qword_1004D1870);
  if ((*(v6 + 48))(v7, 1, v5) == 1)
  {
    sub_100002CE0(v0[44], &qword_1005B02F8, &qword_1004D1870);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "accountStateStream should be available by now!", v12, 2u);
    }

    goto LABEL_10;
  }

  v25 = v0[43];
  (*(v0[46] + 32))(v0[47], v0[44], v0[45]);
  AsyncStream.makeAsyncIterator()();
  v26 = sub_1001E6D00(&qword_1005AFFB0, type metadata accessor for DataManager);
  v0[49] = v26;
  v0[50] = 0;
  v27 = v0[18];
  v28 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v29 = swift_task_alloc();
  v0[51] = v29;
  *v29 = v0;
  v29[1] = sub_1001DF398;
  v30 = v0[43];
  v31 = v0[40];
  v32 = v0[41];

  return AsyncStream.Iterator.next(isolation:)(v31, v27, v26, v32);
}

uint64_t sub_1001DF398()
{
  v1 = *(*v0 + 408);
  v2 = *(*v0 + 144);
  v4 = *v0;

  return _swift_task_switch(sub_1001DF4A8, v2, 0);
}

uint64_t sub_1001DF4A8()
{
  v1 = *(v0 + 320);
  if ((*(*(v0 + 248) + 48))(v1, 1, *(v0 + 240)) == 1)
  {
    v2 = *(v0 + 384);
    (*(*(v0 + 336) + 8))(*(v0 + 344), *(v0 + 328));
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.fault.getter();
    v5 = os_log_type_enabled(v3, v4);
    v7 = *(v0 + 368);
    v6 = *(v0 + 376);
    v8 = *(v0 + 360);
    if (v5)
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Stopped processing accountStateStream!", v9, 2u);
    }

    (*(v7 + 8))(v6, v8);
    v10 = *(v0 + 376);
    v12 = *(v0 + 344);
    v11 = *(v0 + 352);
    v14 = *(v0 + 312);
    v13 = *(v0 + 320);
    v16 = *(v0 + 296);
    v15 = *(v0 + 304);
    v17 = *(v0 + 280);
    v18 = *(v0 + 288);
    v19 = *(v0 + 272);
    v129 = *(v0 + 264);
    v131 = *(v0 + 256);
    v133 = *(v0 + 232);
    v135 = *(v0 + 224);
    v137 = *(v0 + 216);
    v139 = *(v0 + 184);
    v142 = *(v0 + 160);

    v20 = *(v0 + 8);
    goto LABEL_7;
  }

  v21 = *(v0 + 400);
  sub_10020AE30(v1, *(v0 + 312), type metadata accessor for AccountService.State);
  static Task<>.checkCancellation()();
  *(v0 + 416) = v21;
  if (v21)
  {
    v22 = *(v0 + 368);
    v23 = *(v0 + 376);
    v25 = *(v0 + 352);
    v24 = *(v0 + 360);
    v27 = *(v0 + 336);
    v26 = *(v0 + 344);
    v28 = *(v0 + 328);
    v123 = *(v0 + 320);
    v124 = *(v0 + 304);
    v125 = *(v0 + 296);
    v126 = *(v0 + 288);
    v127 = *(v0 + 280);
    v128 = *(v0 + 272);
    v130 = *(v0 + 264);
    v132 = *(v0 + 256);
    v134 = *(v0 + 232);
    v136 = *(v0 + 224);
    v138 = *(v0 + 216);
    v140 = *(v0 + 184);
    v143 = *(v0 + 160);
    sub_10020A58C(*(v0 + 312), type metadata accessor for AccountService.State);
    (*(v27 + 8))(v26, v28);
    (*(v22 + 8))(v23, v24);

    v20 = *(v0 + 8);
LABEL_7:

    return v20();
  }

  v30 = *(v0 + 384);
  sub_10020AABC(*(v0 + 312), *(v0 + 304), type metadata accessor for AccountService.State);
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.default.getter();
  v33 = os_log_type_enabled(v31, v32);
  v34 = *(v0 + 304);
  if (v33)
  {
    v36 = *(v0 + 288);
    v35 = *(v0 + 296);
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    *(v0 + 136) = v38;
    *v37 = 136315138;
    sub_10020AABC(v34, v35, type metadata accessor for AccountService.State);
    sub_10020AABC(v35, v36, type metadata accessor for AccountService.State);
    v39 = sub_10004B564(&qword_1005AFFD8, &qword_1004D14D8);
    v40 = (*(*(v39 - 8) + 48))(v36, 3, v39);
    if (v40 > 1)
    {
      if (v40 == 2)
      {
        v48 = 0x6C696176616E752ELL;
      }

      else
      {
        v48 = 0x756F6363416F6E2ELL;
      }

      if (v40 == 2)
      {
        v47 = 0xEC000000656C6261;
      }

      else
      {
        v47 = 0xEA0000000000746ELL;
      }
    }

    else if (v40)
    {
      v48 = 0x6E776F6E6B6E752ELL;
      v47 = 0xE800000000000000;
    }

    else
    {
      v41 = *(v0 + 232);
      v42 = *(v0 + 192);
      v43 = *(v0 + 200);
      (*(v43 + 32))(v41, *(v0 + 288), v42);
      *(v0 + 112) = 0;
      *(v0 + 120) = 0xE000000000000000;
      _StringGuts.grow(_:)(23);
      v44 = *(v0 + 120);
      *(v0 + 96) = *(v0 + 112);
      *(v0 + 104) = v44;
      v45._object = 0x80000001004E5490;
      v45._countAndFlagsBits = 0xD000000000000014;
      String.append(_:)(v45);
      _print_unlocked<A, B>(_:_:)();
      v46._countAndFlagsBits = 41;
      v46._object = 0xE100000000000000;
      String.append(_:)(v46);
      v48 = *(v0 + 96);
      v47 = *(v0 + 104);
      (*(v43 + 8))(v41, v42);
    }

    v49 = *(v0 + 304);
    sub_10020A58C(*(v0 + 296), type metadata accessor for AccountService.State);
    sub_10020A58C(v49, type metadata accessor for AccountService.State);
    v50 = sub_10000D01C(v48, v47, (v0 + 136));

    *(v37 + 4) = v50;
    _os_log_impl(&_mh_execute_header, v31, v32, "accountStateStream event: %s", v37, 0xCu);
    sub_100004984(v38);
  }

  else
  {

    sub_10020A58C(v34, type metadata accessor for AccountService.State);
  }

  v51 = *(v0 + 280);
  sub_10020AABC(*(v0 + 312), v51, type metadata accessor for AccountService.State);
  v52 = sub_10004B564(&qword_1005AFFD8, &qword_1004D14D8);
  v53 = *(*(v52 - 8) + 48);
  v54 = v53(v51, 3, v52);
  if ((v54 - 1) < 2)
  {
    v55 = *(v0 + 384);
    sub_10020AABC(*(v0 + 312), *(v0 + 272), type metadata accessor for AccountService.State);
    v56 = Logger.logObject.getter();
    v57 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v56, v57))
    {
      v144 = v57;
      v59 = *(v0 + 264);
      v58 = *(v0 + 272);
      v60 = *(v0 + 256);
      v61 = swift_slowAlloc();
      v141 = swift_slowAlloc();
      *(v0 + 128) = v141;
      *v61 = 136315138;
      sub_10020AABC(v58, v59, type metadata accessor for AccountService.State);
      sub_10020AABC(v59, v60, type metadata accessor for AccountService.State);
      v62 = v53(v60, 3, v52);
      if (v62 > 1)
      {
        if (v62 == 2)
        {
          v70 = 0x6C696176616E752ELL;
        }

        else
        {
          v70 = 0x756F6363416F6E2ELL;
        }

        if (v62 == 2)
        {
          v69 = 0xEC000000656C6261;
        }

        else
        {
          v69 = 0xEA0000000000746ELL;
        }
      }

      else if (v62)
      {
        v70 = 0x6E776F6E6B6E752ELL;
        v69 = 0xE800000000000000;
      }

      else
      {
        v63 = *(v0 + 232);
        v65 = *(v0 + 192);
        v64 = *(v0 + 200);
        (*(v64 + 32))(v63, *(v0 + 256), v65);
        *(v0 + 80) = 0;
        *(v0 + 88) = 0xE000000000000000;
        _StringGuts.grow(_:)(23);
        v66 = *(v0 + 88);
        *(v0 + 64) = *(v0 + 80);
        *(v0 + 72) = v66;
        v67._object = 0x80000001004E5490;
        v67._countAndFlagsBits = 0xD000000000000014;
        String.append(_:)(v67);
        _print_unlocked<A, B>(_:_:)();
        v68._countAndFlagsBits = 41;
        v68._object = 0xE100000000000000;
        String.append(_:)(v68);
        v70 = *(v0 + 64);
        v69 = *(v0 + 72);
        (*(v64 + 8))(v63, v65);
      }

      v113 = *(v0 + 312);
      v114 = *(v0 + 272);
      sub_10020A58C(*(v0 + 264), type metadata accessor for AccountService.State);
      sub_10020A58C(v114, type metadata accessor for AccountService.State);
      v115 = sub_10000D01C(v70, v69, (v0 + 128));

      *(v61 + 4) = v115;
      _os_log_impl(&_mh_execute_header, v56, v144, "Ignoring %s", v61, 0xCu);
      sub_100004984(v141);

      v98 = v113;
    }

    else
    {
      v96 = *(v0 + 312);
      v97 = *(v0 + 272);

      sub_10020A58C(v97, type metadata accessor for AccountService.State);
      v98 = v96;
    }

LABEL_57:
    sub_10020A58C(v98, type metadata accessor for AccountService.State);
    *(v0 + 400) = 0;
    v116 = *(v0 + 392);
    v117 = *(v0 + 144);
    v118 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
    v119 = swift_task_alloc();
    *(v0 + 408) = v119;
    *v119 = v0;
    v119[1] = sub_1001DF398;
    v120 = *(v0 + 344);
    v121 = *(v0 + 320);
    v122 = *(v0 + 328);

    return AsyncStream.Iterator.next(isolation:)(v121, v117, v116, v122);
  }

  if (v54)
  {
    v99 = *(v0 + 384);
    v100 = Logger.logObject.getter();
    v101 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v100, v101))
    {
      v102 = swift_slowAlloc();
      *v102 = 0;
      _os_log_impl(&_mh_execute_header, v100, v101, "Account is .noAccount. Resetting localDB and removing UserDefaults.", v102, 2u);
    }

    v103 = *(v0 + 312);
    v104 = *(v0 + 160);
    v105 = *(v0 + 144);

    sub_1000545A4(0, &qword_1005B0300, NSUserDefaults_ptr);
    sub_1001E100C();
    v106 = *(v105 + 160);
    type metadata accessor for WorkItemQueue.WorkItem();
    UUID.init()();
    WorkItemQueue.WorkItem.__allocating_init(identifier:block:completion:)();
    dispatch thunk of WorkItemQueue.enqueue(_:)();

    v98 = v103;
    goto LABEL_57;
  }

  v71 = *(v0 + 384);
  v72 = *(*(v0 + 200) + 32);
  v72(*(v0 + 224), *(v0 + 280), *(v0 + 192));
  v73 = Logger.logObject.getter();
  v74 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v73, v74))
  {
    v75 = swift_slowAlloc();
    *v75 = 0;
    _os_log_impl(&_mh_execute_header, v73, v74, "Account is available", v75, 2u);
  }

  if (qword_1005A80D8 != -1)
  {
    swift_once();
  }

  v77 = *(v0 + 176);
  v76 = *(v0 + 184);
  v78 = *(v0 + 168);
  v79 = sub_10000A6F0(v78, qword_1005AFAA8);
  swift_beginAccess();
  (*(v77 + 16))(v76, v79, v78);
  ManagedDefault.wrappedValue.getter();
  (*(v77 + 8))(v76, v78);
  v80 = *(v0 + 464);
  if (v80 == 2 || (v80 & 1) == 0)
  {
    v107 = *(v0 + 384);
    v108 = Logger.logObject.getter();
    v109 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v108, v109))
    {
      v110 = swift_slowAlloc();
      *v110 = 0;
      _os_log_impl(&_mh_execute_header, v108, v109, "Account is available and need to initClient", v110, 2u);
    }

    v111 = swift_task_alloc();
    *(v0 + 424) = v111;
    *v111 = v0;
    v111[1] = sub_1001E03B0;
    v112 = *(v0 + 144);

    return sub_1001DE29C();
  }

  else
  {
    v81 = *(v0 + 384);
    v82 = Logger.logObject.getter();
    v83 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v82, v83))
    {
      v84 = swift_slowAlloc();
      *v84 = 0;
      _os_log_impl(&_mh_execute_header, v82, v83, "Already initialized.", v84, 2u);
    }

    v86 = *(v0 + 216);
    v85 = *(v0 + 224);
    v88 = *(v0 + 200);
    v87 = *(v0 + 208);
    v89 = *(v0 + 192);
    v90 = *(v0 + 144);
    v145 = *(v0 + 152);

    v91 = *(v90 + 160);
    (*(v88 + 16))(v86, v85, v89);
    v92 = (*(v88 + 80) + 24) & ~*(v88 + 80);
    v93 = swift_allocObject();
    *(v0 + 432) = v93;
    *(v93 + 16) = v90;
    v72(v93 + v92, v86, v89);
    *(v93 + ((v87 + v92 + 7) & 0xFFFFFFFFFFFFFFF8)) = v145;
    v94 = *(&async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult(_:) + 1);
    v146 = (&async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult(_:) + async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult(_:));

    v95 = swift_task_alloc();
    *(v0 + 440) = v95;
    *v95 = v0;
    v95[1] = sub_1001E05B4;

    return v146(&unk_1004D1898, v93);
  }
}

uint64_t sub_1001E03B0()
{
  v1 = *(*v0 + 424);
  v2 = *(*v0 + 144);
  v4 = *v0;

  return _swift_task_switch(sub_1001E04C0, v2, 0);
}

uint64_t sub_1001E04C0()
{
  v1 = v0[39];
  (*(v0[25] + 8))(v0[28], v0[24]);
  sub_10020A58C(v1, type metadata accessor for AccountService.State);
  v0[50] = v0[52];
  v2 = v0[49];
  v3 = v0[18];
  v4 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v5 = swift_task_alloc();
  v0[51] = v5;
  *v5 = v0;
  v5[1] = sub_1001DF398;
  v6 = v0[43];
  v7 = v0[40];
  v8 = v0[41];

  return AsyncStream.Iterator.next(isolation:)(v7, v3, v2, v8);
}

uint64_t sub_1001E05B4()
{
  v2 = *v1;
  v3 = *(*v1 + 440);
  v4 = *v1;
  v2[56] = v0;

  v5 = v2[54];
  if (v0)
  {
    v6 = v2[18];

    return _swift_task_switch(sub_1001E0950, v6, 0);
  }

  else
  {

    v7 = swift_task_alloc();
    v2[57] = v7;
    *v7 = v4;
    v7[1] = sub_1001E074C;
    v8 = v2[18];

    return sub_1001E31FC();
  }
}

uint64_t sub_1001E074C()
{
  v1 = *(*v0 + 456);
  v2 = *(*v0 + 144);
  v4 = *v0;

  return _swift_task_switch(sub_1001E085C, v2, 0);
}

uint64_t sub_1001E085C()
{
  v1 = v0[39];
  (*(v0[25] + 8))(v0[28], v0[24]);
  sub_10020A58C(v1, type metadata accessor for AccountService.State);
  v0[50] = v0[56];
  v2 = v0[49];
  v3 = v0[18];
  v4 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v5 = swift_task_alloc();
  v0[51] = v5;
  *v5 = v0;
  v5[1] = sub_1001DF398;
  v6 = v0[43];
  v7 = v0[40];
  v8 = v0[41];

  return AsyncStream.Iterator.next(isolation:)(v7, v3, v2, v8);
}

uint64_t sub_1001E0950()
{
  v27 = v0;
  v1 = v0[56];
  v2 = v0[48];
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[56];
  v7 = v0[39];
  v8 = v0[28];
  v10 = v0[24];
  v9 = v0[25];
  if (v5)
  {
    v25 = v0[39];
    v24 = v0[28];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v26 = v13;
    *v11 = 136446466;
    *(v11 + 4) = sub_10000D01C(0xD000000000000015, 0x80000001004E54B0, &v26);
    *(v11 + 12) = 2114;
    swift_errorRetain();
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 14) = v14;
    *v12 = v14;
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s failed to setup APNS account %{public}@", v11, 0x16u);
    sub_100002CE0(v12, &qword_1005A9670, &unk_1004C2480);

    sub_100004984(v13);

    (*(v9 + 8))(v24, v10);
    v15 = v25;
  }

  else
  {

    (*(v9 + 8))(v8, v10);
    v15 = v7;
  }

  sub_10020A58C(v15, type metadata accessor for AccountService.State);
  v0[50] = 0;
  v16 = v0[49];
  v17 = v0[18];
  v18 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v19 = swift_task_alloc();
  v0[51] = v19;
  *v19 = v0;
  v19[1] = sub_1001DF398;
  v20 = v0[43];
  v21 = v0[40];
  v22 = v0[41];

  return AsyncStream.Iterator.next(isolation:)(v21, v17, v16, v22);
}

uint64_t sub_1001E0BE8(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  v3 = type metadata accessor for Account();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v2[7] = *(v4 + 64);
  v2[8] = swift_task_alloc();

  return _swift_task_switch(sub_1001E0CD8, v1, 0);
}

uint64_t sub_1001E0CD8()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[3];
  v6 = v0[4];
  v7 = *(v5 + 160);
  (*(v4 + 16))(v1, v0[2], v3);
  v8 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v9 = (v2 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = swift_allocObject();
  v0[9] = v10;
  *(v10 + 16) = v5;
  (*(v4 + 32))(v10 + v8, v1, v3);
  *(v10 + v9) = v6;
  v11 = *(&async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult(_:) + 1);
  v14 = (&async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult(_:) + async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult(_:));

  v12 = swift_task_alloc();
  v0[10] = v12;
  *v12 = v0;
  v12[1] = sub_1001E0E44;

  return v14(&unk_1004D1930, v10);
}

uint64_t sub_1001E0E44()
{
  v2 = *(*v1 + 80);
  v3 = *(*v1 + 72);
  v4 = *v1;
  v4[11] = v0;

  if (v0)
  {
    v5 = v4[3];

    return _swift_task_switch(sub_1001E0FA8, v5, 0);
  }

  else
  {
    v6 = v4[8];

    v7 = v4[1];

    return v7();
  }
}

uint64_t sub_1001E0FA8()
{
  v1 = v0[8];

  v2 = v0[1];
  v3 = v0[11];

  return v2();
}

void sub_1001E100C()
{
  v0 = [objc_opt_self() mainBundle];
  oslog = [v0 bundleIdentifier];

  if (oslog)
  {
    if (qword_1005A80B8 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_10000A6F0(v1, qword_1005DFF18);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v12 = v5;
      *v4 = 136446210;
      *(v4 + 4) = sub_10000D01C(0x29287261656C63, 0xE700000000000000, &v12);
      _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s UserDefaults clear all", v4, 0xCu);
      sub_100004984(v5);
    }

    v6 = [swift_getObjCClassFromMetadata() standardUserDefaults];
    [v6 removePersistentDomainForName:oslog];
  }

  else
  {
    if (qword_1005A80B8 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_10000A6F0(v7, qword_1005DFF18);
    oslog = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v12 = v10;
      *v9 = 136446210;
      *(v9 + 4) = sub_10000D01C(0x29287261656C63, 0xE700000000000000, &v12);
      _os_log_impl(&_mh_execute_header, oslog, v8, "%{public}s UserDefaults failed with no bundle identifier", v9, 0xCu);
      sub_100004984(v10);
    }
  }
}

uint64_t sub_1001E12F8()
{
  if (qword_1005A80B8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000A6F0(v1, qword_1005DFF18);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "DataManager: initialLaunchProcessing", v4, 2u);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1001E140C(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  v4 = type metadata accessor for SystemVersionNumber();
  v3[4] = v4;
  v5 = *(v4 - 8);
  v3[5] = v5;
  v6 = *(v5 + 64) + 15;
  v3[6] = swift_task_alloc();
  v3[7] = swift_task_alloc();

  return _swift_task_switch(sub_1001E14D8, v2, 0);
}

uint64_t sub_1001E14D8()
{
  v33 = v0;
  if (qword_1005A80B8 != -1)
  {
    swift_once();
  }

  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[4];
  v4 = v0[5];
  v6 = v0[2];
  v5 = v0[3];
  v7 = type metadata accessor for Logger();
  sub_10000A6F0(v7, qword_1005DFF18);
  v8 = *(v4 + 16);
  v8(v2, v6, v3);
  v8(v1, v5, v3);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();
  v11 = os_log_type_enabled(v9, v10);
  v13 = v0[6];
  v12 = v0[7];
  v15 = v0[4];
  v14 = v0[5];
  if (v11)
  {
    v31 = v10;
    v16 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    *v16 = 136315394;
    sub_1001E6D00(&qword_1005B02E0, &type metadata accessor for SystemVersionNumber);
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = v18;
    v20 = *(v14 + 8);
    v20(v12, v15);
    v21 = sub_10000D01C(v17, v19, &v32);

    *(v16 + 4) = v21;
    *(v16 + 12) = 2080;
    v22 = dispatch thunk of CustomStringConvertible.description.getter();
    v24 = v23;
    v20(v13, v15);
    v25 = sub_10000D01C(v22, v24, &v32);

    *(v16 + 14) = v25;
    _os_log_impl(&_mh_execute_header, v9, v31, "DataManager: migrate from %s to %s", v16, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v26 = *(v14 + 8);
    v26(v13, v15);
    v26(v12, v15);
  }

  v28 = v0[6];
  v27 = v0[7];

  v29 = v0[1];

  return v29();
}

uint64_t sub_1001E17C0(uint64_t a1)
{
  v2[726] = v1;
  v2[725] = a1;
  v2[727] = *v1;
  v3 = *(*(sub_10004B564(&unk_1005AE5B0, &qword_1004C32F0) - 8) + 64) + 15;
  v2[728] = swift_task_alloc();
  v2[729] = swift_task_alloc();
  refreshed = type metadata accessor for RefreshClientEndpoint();
  v2[730] = refreshed;
  v5 = *(*(refreshed - 8) + 64) + 15;
  v2[731] = swift_task_alloc();
  v6 = *(*(sub_10004B564(&qword_1005A9110, &qword_1004C25F8) - 8) + 64) + 15;
  v2[732] = swift_task_alloc();
  v7 = type metadata accessor for Account();
  v2[733] = v7;
  v8 = *(v7 - 8);
  v2[734] = v8;
  v9 = *(v8 + 64) + 15;
  v2[735] = swift_task_alloc();
  v2[736] = swift_task_alloc();
  v2[737] = swift_task_alloc();

  return _swift_task_switch(sub_1001E1970, v1, 0);
}

uint64_t sub_1001E1970()
{
  if (qword_1005A80B8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 5904) = sub_10000A6F0(v1, qword_1005DFF18);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Refresh client", v4, 2u);
  }

  v5 = async function pointer to daemon.getter[1];
  v6 = swift_task_alloc();
  *(v0 + 5912) = v6;
  *v6 = v0;
  v6[1] = sub_1001E1AC0;

  return daemon.getter();
}

uint64_t sub_1001E1AC0(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 5912);
  v12 = *v1;
  *(v3 + 5920) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 5928) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for AccountService(0);
  v9 = sub_1001E6D00(&unk_1005AFA50, &type metadata accessor for Daemon);
  v10 = sub_1001E6D00(&qword_1005A9118, type metadata accessor for AccountService);
  *v6 = v12;
  v6[1] = sub_1001E1C9C;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_1001E1C9C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 5928);
  v6 = *v2;
  v4[742] = a1;
  v4[743] = v1;

  if (v1)
  {
    v7 = v4[726];

    return _swift_task_switch(sub_1001E2FFC, v7, 0);
  }

  else
  {
    v8 = v4[740];

    v9 = swift_task_alloc();
    v4[744] = v9;
    *v9 = v6;
    v9[1] = sub_1001E1E2C;
    v10 = v4[732];

    return sub_10000EB24(v10);
  }
}

uint64_t sub_1001E1E2C()
{
  v1 = *(*v0 + 5952);
  v2 = *(*v0 + 5808);
  v4 = *v0;

  return _swift_task_switch(sub_1001E1F3C, v2, 0);
}

uint64_t sub_1001E1F3C()
{
  v1 = *(v0 + 5872);
  v2 = *(v0 + 5864);
  v3 = *(v0 + 5856);
  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {
    v4 = *(v0 + 5904);
    sub_100002CE0(v3, &qword_1005A9110, &qword_1004C25F8);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Missing primary account to send refresh client!", v7, 2u);
    }

    v8 = *(v0 + 5936);

    sub_10020B2CC((v0 + 816));
    v9 = *(v0 + 5896);
    v10 = *(v0 + 5888);
    v11 = *(v0 + 5880);
    v12 = *(v0 + 5856);
    v13 = *(v0 + 5848);
    v14 = *(v0 + 5832);
    v15 = *(v0 + 5824);
    memcpy(*(v0 + 5800), (v0 + 816), 0x320uLL);

    v16 = *(v0 + 8);

    return v16();
  }

  else
  {
    v18 = *(v0 + 5896);
    v19 = *(v0 + 5888);
    v27 = *(v0 + 5880);
    v20 = *(v0 + 5848);
    (*(v1 + 32))(v18, v3, v2);
    v21 = *(v1 + 16);
    v21(v19, v18, v2);
    sub_10006DF9C(v19);
    v22 = URLComponents.path.modify();
    v23._countAndFlagsBits = 0x4368736572666572;
    v23._object = 0xED0000746E65696CLL;
    String.append(_:)(v23);
    v22(v0 + 5736, 0);
    v24 = *(v1 + 8);
    *(v0 + 5960) = v24;
    *(v0 + 5968) = (v1 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v24(v19, v2);
    v21(v27, v18, v2);
    v25 = swift_task_alloc();
    *(v0 + 5976) = v25;
    *v25 = v0;
    v25[1] = sub_1001E226C;
    v26 = *(v0 + 5880);

    return sub_10015D684(v26);
  }
}

uint64_t sub_1001E226C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v6 = *v4;
  v7 = *(*v4 + 5976);
  v8 = *v4;
  v6[748] = a1;
  v6[749] = a2;
  v6[750] = a3;
  v6[751] = v3;

  v9 = v5[726];
  if (v3)
  {
    v10 = sub_1001E2738;
  }

  else
  {
    v10 = sub_1001E23AC;
  }

  return _swift_task_switch(v10, v9, 0);
}

uint64_t sub_1001E23AC()
{
  v1 = v0[750];
  v2 = v0[749];
  v3 = v0[748];
  v4 = v0[737];
  v5 = v0[731];
  v6 = v0[727];
  v7 = v0[726];
  v0[705] = v0[730];
  v0[706] = sub_1001E6D00(&qword_1005B02D0, type metadata accessor for RefreshClientEndpoint);
  v8 = sub_10000331C(v0 + 702);
  sub_10020AABC(v5, v8, type metadata accessor for RefreshClientEndpoint);
  v0[710] = &type metadata for RefreshClientRequest;
  v0[711] = sub_10015EAC8();
  v0[707] = v3;
  v0[708] = v2;
  v0[709] = v1;

  sub_10002CF44(v2, v1);
  Account.dsid.getter();
  Account.appToken.getter();
  v0[715] = type metadata accessor for BasicCredential();
  v0[716] = &protocol witness table for BasicCredential;
  sub_10000331C(v0 + 712);
  BasicCredential.init(username:password:)();
  v9 = sub_1001E6D00(&qword_1005AFFB0, type metadata accessor for DataManager);
  v10 = swift_task_alloc();
  v0[752] = v10;
  v10[2] = v0 + 702;
  v10[3] = v0 + 707;
  v10[4] = v7;
  v10[5] = v0 + 712;
  v10[6] = v6;
  v11 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v12 = swift_task_alloc();
  v0[753] = v12;
  *v12 = v0;
  v12[1] = sub_1001E2620;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 202, v7, v9, 0xD000000000000025, 0x80000001004E5170, sub_10020C1A8, v10, &type metadata for ServerBaseResponse);
}

uint64_t sub_1001E2620()
{
  v2 = *v1;
  v3 = *(*v1 + 6024);
  v7 = *v1;
  *(*v1 + 6032) = v0;

  v4 = *(v2 + 5808);
  if (v0)
  {
    v5 = sub_1001E2D58;
  }

  else
  {
    v5 = sub_1001E2974;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_1001E2738()
{
  v26 = v0;
  v1 = *(v0 + 5968);
  v2 = *(v0 + 5960);
  v3 = *(v0 + 5936);
  v4 = *(v0 + 5896);
  v5 = *(v0 + 5864);
  v6 = *(v0 + 5848);

  sub_10020A58C(v6, type metadata accessor for RefreshClientEndpoint);
  v2(v4, v5);
  v7 = *(v0 + 6008);
  v8 = *(v0 + 5904);
  swift_errorRetain();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v25 = v12;
    *v11 = 136446210;
    *(v0 + 5792) = v7;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v13 = String.init<A>(describing:)();
    v15 = sub_10000D01C(v13, v14, &v25);

    *(v11 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v9, v10, "Refresh client failed due to %{public}s", v11, 0xCu);
    sub_100004984(v12);
  }

  else
  {
  }

  sub_10020B2CC((v0 + 816));
  v16 = *(v0 + 5896);
  v17 = *(v0 + 5888);
  v18 = *(v0 + 5880);
  v19 = *(v0 + 5856);
  v20 = *(v0 + 5848);
  v21 = *(v0 + 5832);
  v22 = *(v0 + 5824);
  memcpy(*(v0 + 5800), (v0 + 816), 0x320uLL);

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_1001E2974()
{
  v37 = v0;
  v1 = *(v0 + 5904);
  memcpy((v0 + 16), (v0 + 1616), 0x320uLL);
  memcpy((v0 + 2416), (v0 + 1616), 0x320uLL);
  sub_100002CE0(v0 + 5696, &qword_1005A9138, &qword_1004C2600);
  sub_100004984((v0 + 5656));
  sub_100004984((v0 + 5616));
  sub_10006DAC8(v0 + 16, v0 + 3216);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  sub_10005D06C(v0 + 16);
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v36 = v5;
    *v4 = 136315138;
    sub_10006DAC8(v0 + 16, v0 + 4816);
    v6 = sub_100176040();
    v8 = v7;
    sub_10005D06C(v0 + 16);
    v9 = sub_10000D01C(v6, v8, &v36);

    *(v4 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v2, v3, "Received refresh client response: %s", v4, 0xCu);
    sub_100004984(v5);
  }

  v10 = *(v0 + 5832);
  static Date.trustedNow.getter(v10);
  v11 = type metadata accessor for Date();
  (*(*(v11 - 8) + 56))(v10, 0, 1, v11);
  if (qword_1005A80D0 != -1)
  {
    swift_once();
  }

  v12 = *(v0 + 6000);
  v13 = *(v0 + 5992);
  v14 = *(v0 + 5984);
  v34 = *(v0 + 5968);
  v35 = *(v0 + 6016);
  v15 = *(v0 + 5936);
  v32 = *(v0 + 5896);
  v33 = *(v0 + 5960);
  v30 = *(v0 + 5848);
  v31 = *(v0 + 5864);
  v16 = *(v0 + 5832);
  v17 = *(v0 + 5824);
  v18 = sub_10004B564(&qword_1005B02D8, &qword_1004D1868);
  sub_10000A6F0(v18, qword_1005AFA90);
  sub_100005F04(v16, v17, &unk_1005AE5B0, &qword_1004C32F0);
  swift_beginAccess();
  ManagedDefault.wrappedValue.setter();
  swift_endAccess();

  sub_10001A794(v13, v12);
  sub_100002CE0(v16, &unk_1005AE5B0, &qword_1004C32F0);
  sub_10020A58C(v30, type metadata accessor for RefreshClientEndpoint);
  v33(v32, v31);
  memcpy((v0 + 4016), (v0 + 2416), 0x320uLL);
  v19._countAndFlagsBits = v0 + 4016;
  DarwinNotification.init(name:value:)(v19, v20);
  memcpy((v0 + 816), (v0 + 4016), 0x320uLL);

  v21 = *(v0 + 5896);
  v22 = *(v0 + 5888);
  v23 = *(v0 + 5880);
  v24 = *(v0 + 5856);
  v25 = *(v0 + 5848);
  v26 = *(v0 + 5832);
  v27 = *(v0 + 5824);
  memcpy(*(v0 + 5800), (v0 + 816), 0x320uLL);

  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_1001E2D58()
{
  v30 = v0;
  v1 = *(v0 + 6016);
  v2 = *(v0 + 6000);
  v3 = *(v0 + 5992);
  v4 = *(v0 + 5984);
  v5 = *(v0 + 5968);
  v6 = *(v0 + 5960);
  v7 = *(v0 + 5936);
  v8 = *(v0 + 5896);
  v9 = *(v0 + 5864);
  v10 = *(v0 + 5848);

  sub_100002CE0(v0 + 5696, &qword_1005A9138, &qword_1004C2600);

  sub_10001A794(v3, v2);
  sub_10020A58C(v10, type metadata accessor for RefreshClientEndpoint);
  v6(v8, v9);
  sub_100004984((v0 + 5656));
  sub_100004984((v0 + 5616));
  v11 = *(v0 + 6032);
  v12 = *(v0 + 5904);
  swift_errorRetain();
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v29 = v16;
    *v15 = 136446210;
    *(v0 + 5792) = v11;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v17 = String.init<A>(describing:)();
    v19 = sub_10000D01C(v17, v18, &v29);

    *(v15 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v13, v14, "Refresh client failed due to %{public}s", v15, 0xCu);
    sub_100004984(v16);
  }

  else
  {
  }

  sub_10020B2CC((v0 + 816));
  v20 = *(v0 + 5896);
  v21 = *(v0 + 5888);
  v22 = *(v0 + 5880);
  v23 = *(v0 + 5856);
  v24 = *(v0 + 5848);
  v25 = *(v0 + 5832);
  v26 = *(v0 + 5824);
  memcpy(*(v0 + 5800), (v0 + 816), 0x320uLL);

  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_1001E2FFC()
{
  v21 = v0;
  v1 = *(v0 + 5920);

  v2 = *(v0 + 5944);
  v3 = *(v0 + 5904);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v20 = v7;
    *v6 = 136446210;
    *(v0 + 5792) = v2;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v8 = String.init<A>(describing:)();
    v10 = sub_10000D01C(v8, v9, &v20);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "Refresh client failed due to %{public}s", v6, 0xCu);
    sub_100004984(v7);
  }

  else
  {
  }

  sub_10020B2CC((v0 + 816));
  v11 = *(v0 + 5896);
  v12 = *(v0 + 5888);
  v13 = *(v0 + 5880);
  v14 = *(v0 + 5856);
  v15 = *(v0 + 5848);
  v16 = *(v0 + 5832);
  v17 = *(v0 + 5824);
  memcpy(*(v0 + 5800), (v0 + 816), 0x320uLL);

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_1001E321C()
{
  v10 = v0;
  if (qword_1005A80B8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[691] = sub_10000A6F0(v1, qword_1005DFF18);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v9 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_10000D01C(0xD00000000000003DLL, 0x80000001004E5430, &v9);
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s", v4, 0xCu);
    sub_100004984(v5);
  }

  v6 = swift_task_alloc();
  v0[692] = v6;
  *v6 = v0;
  v6[1] = sub_1001E33D4;
  v7 = v0[690];

  return sub_100245BB8((v0 + 462));
}

uint64_t sub_1001E33D4()
{
  v1 = *v0;
  v2 = *(*v0 + 5536);
  v3 = *(*v0 + 5520);
  v5 = *v0;

  memcpy((v1 + 4176), (v1 + 3696), 0x1E0uLL);

  return _swift_task_switch(sub_1001E3500, v3, 0);
}

uint64_t sub_1001E3500()
{
  v27 = v0;
  memcpy((v0 + 3216), (v0 + 3696), 0x1E0uLL);
  if (sub_100033B90(v0 + 3216) == 1)
  {
    goto LABEL_2;
  }

  v8 = *(v0 + 3552);
  v9 = *(v0 + 3584);
  *(v0 + 5392) = *(v0 + 3568);
  *(v0 + 5408) = v9;
  *(v0 + 5424) = *(v0 + 3600);
  v10 = *(v0 + 3488);
  v11 = *(v0 + 3520);
  *(v0 + 5328) = *(v0 + 3504);
  *(v0 + 5344) = v11;
  *(v0 + 5360) = *(v0 + 3536);
  *(v0 + 5376) = v8;
  *(v0 + 5296) = *(v0 + 3472);
  *(v0 + 5312) = v10;
  if (sub_10005A3B0(v0 + 5296) != 1)
  {
    goto LABEL_11;
  }

  memcpy((v0 + 4656), (v0 + 4176), 0x1E0uLL);
  v12 = *(v0 + 4384);
  *(v0 + 5232) = *(v0 + 4368);
  *(v0 + 5248) = v12;
  v13 = *(v0 + 4416);
  *(v0 + 5264) = *(v0 + 4400);
  *(v0 + 5280) = v13;
  v14 = *(v0 + 4320);
  *(v0 + 5168) = *(v0 + 4304);
  *(v0 + 5184) = v14;
  v15 = *(v0 + 4352);
  *(v0 + 5200) = *(v0 + 4336);
  *(v0 + 5216) = v15;
  v16 = *(v0 + 4288);
  *(v0 + 5136) = *(v0 + 4272);
  *(v0 + 5152) = v16;
  if (sub_10002D650(v0 + 5136) == 1)
  {
    sub_100005F04(v0 + 5056, v0 + 5440, &qword_1005AD7A8, &qword_1004CA280);
    sub_100002CE0(v0 + 3696, &qword_1005A90D8, &unk_1004C6AB0);
    if (!*(v0 + 5096))
    {
LABEL_2:
      v1 = *(v0 + 5528);
      v2 = Logger.logObject.getter();
      v3 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v2, v3))
      {
        v4 = swift_slowAlloc();
        *v4 = 0;
        _os_log_impl(&_mh_execute_header, v2, v3, "Force refreshClient, since we have nil server settings in local DB.", v4, 2u);
      }

      v5 = swift_task_alloc();
      *(v0 + 5544) = v5;
      *v5 = v0;
      v5[1] = sub_1001E3864;
      v6 = *(v0 + 5520);

      return sub_1001E17C0(v0 + 1616);
    }

    v17 = &qword_1005AD7A8;
    v18 = &qword_1004CA280;
    v19 = v0 + 5056;
  }

  else
  {
LABEL_11:
    v17 = &qword_1005A90D8;
    v18 = &unk_1004C6AB0;
    v19 = v0 + 3696;
  }

  sub_100002CE0(v19, v17, v18);
  v20 = *(v0 + 5528);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v26 = v24;
    *v23 = 136446210;
    *(v23 + 4) = sub_10000D01C(0xD00000000000003DLL, 0x80000001004E5430, &v26);
    _os_log_impl(&_mh_execute_header, v21, v22, "%{public}s not eligible, since we have non-nil serverSettings already.", v23, 0xCu);
    sub_100004984(v24);
  }

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_1001E3864()
{
  v1 = *(*v0 + 5544);
  v2 = *(*v0 + 5520);
  v4 = *v0;

  return _swift_task_switch(sub_1001E3974, v2, 0);
}

uint64_t sub_1001E3974()
{
  v21 = v0;
  memcpy((v0 + 16), (v0 + 1616), 0x320uLL);
  if (sub_100033B90(v0 + 16) == 1 || *(v0 + 296) != 1)
  {
    v7 = *(v0 + 5528);
    sub_100005F04(v0 + 1616, v0 + 2416, &qword_1005B02C0, &unk_1004D5E90);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    sub_100002CE0(v0 + 1616, &qword_1005B02C0, &unk_1004D5E90);
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v20 = v11;
      *v10 = 136446466;
      memcpy((v0 + 816), (v0 + 1616), 0x320uLL);
      v12 = sub_100033B90(v0 + 816);
      v13 = *(v0 + 1096);
      if (v12 == 1)
      {
        v13 = 21;
      }

      *(v0 + 5560) = v13;
      sub_10004B564(&qword_1005AD7D8, &unk_1004CA2B0);
      v14 = String.init<A>(describing:)();
      v16 = v15;
      sub_100002CE0(v0 + 1616, &qword_1005B02C0, &unk_1004D5E90);
      v17 = sub_10000D01C(v14, v16, &v20);

      *(v10 + 4) = v17;
      *(v10 + 12) = 2050;
      *(v10 + 14) = 0x40AC200000000000;
      _os_log_impl(&_mh_execute_header, v8, v9, "Force refreshClient call failed with %{public}s\nre-register an XPC activity fired after %{public}f", v10, 0x16u);
      sub_100004984(v11);
    }

    else
    {

      sub_100002CE0(v0 + 1616, &qword_1005B02C0, &unk_1004D5E90);
    }

    v18 = swift_task_alloc();
    *(v0 + 5552) = v18;
    *v18 = v0;
    v18[1] = sub_1001E3CA8;
    v19 = *(v0 + 5520);

    return sub_100243AA0();
  }

  else
  {
    v1 = *(v0 + 5528);
    sub_100002CE0(v0 + 1616, &qword_1005B02C0, &unk_1004D5E90);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "Force refreshClient call succeed, terminate scheduling XPC Activity to force refreshClient.", v4, 2u);
    }

    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_1001E3CA8()
{
  v1 = *(*v0 + 5552);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1001E3D9C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 840) = v4;
  *(v5 + 1000) = a4;
  *(v5 + 832) = a3;
  *(v5 + 824) = a2;
  *(v5 + 816) = a1;
  v6 = type metadata accessor for Handle();
  *(v5 + 848) = v6;
  v7 = *(v6 - 8);
  *(v5 + 856) = v7;
  v8 = *(v7 + 64) + 15;
  *(v5 + 864) = swift_task_alloc();
  v9 = *(*(sub_10004B564(&qword_1005A9188, &unk_1004D80D0) - 8) + 64) + 15;
  *(v5 + 872) = swift_task_alloc();
  v10 = type metadata accessor for Friend();
  *(v5 + 880) = v10;
  v11 = *(v10 - 8);
  *(v5 + 888) = v11;
  v12 = *(v11 + 64) + 15;
  *(v5 + 896) = swift_task_alloc();
  *(v5 + 904) = swift_task_alloc();
  v13 = type metadata accessor for HandleType();
  *(v5 + 912) = v13;
  v14 = *(v13 - 8);
  *(v5 + 920) = v14;
  v15 = *(v14 + 64) + 15;
  *(v5 + 928) = swift_task_alloc();
  *(v5 + 936) = swift_task_alloc();

  return _swift_task_switch(sub_1001E3F74, v4, 0);
}

uint64_t sub_1001E3F74()
{
  v27 = v0;
  if (qword_1005A80B8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 936);
  v2 = *(v0 + 920);
  v3 = *(v0 + 912);
  v4 = *(v0 + 832);
  v5 = type metadata accessor for Logger();
  *(v0 + 944) = sub_10000A6F0(v5, qword_1005DFF18);
  v6 = *(v2 + 16);
  *(v0 + 952) = v6;
  *(v0 + 960) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4, v3);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 936);
  v11 = *(v0 + 920);
  v12 = *(v0 + 912);
  if (v9)
  {
    v25 = *(v0 + 1000);
    v13 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *v13 = 136446722;
    *(v13 + 4) = sub_10000D01C(0xD00000000000002BLL, 0x80000001004E5400, &v26);
    *(v13 + 12) = 2082;
    sub_1001E6D00(&qword_1005A9198, &type metadata accessor for HandleType);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    v17 = *(v11 + 8);
    v17(v10, v12);
    v18 = sub_10000D01C(v14, v16, &v26);

    *(v13 + 14) = v18;
    *(v13 + 22) = 1026;
    *(v13 + 24) = v25;
    _os_log_impl(&_mh_execute_header, v7, v8, "%{public}s type: %{public}s shouldRefresh: %{BOOL,public}d", v13, 0x1Cu);
    swift_arrayDestroy();
  }

  else
  {

    v17 = *(v11 + 8);
    v17(v10, v12);
  }

  *(v0 + 968) = v17;
  v19 = swift_task_alloc();
  *(v0 + 976) = v19;
  *v19 = v0;
  v19[1] = sub_1001E4264;
  v20 = *(v0 + 872);
  v21 = *(v0 + 840);
  v22 = *(v0 + 832);
  v23 = *(v0 + 824);

  return sub_10021D300(v20, v23, v22);
}

uint64_t sub_1001E4264()
{
  v1 = *(*v0 + 976);
  v2 = *(*v0 + 840);
  v4 = *v0;

  return _swift_task_switch(sub_1001E4374, v2, 0);
}

uint64_t sub_1001E4374()
{
  v64 = v0;
  v1 = *(v0 + 888);
  v2 = *(v0 + 880);
  v3 = *(v0 + 872);
  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {
    v4 = *(v0 + 1000);
    sub_100002CE0(v3, &qword_1005A9188, &unk_1004D80D0);
    if (v4 == 1)
    {
      v5 = *(v0 + 960);
      v6 = *(v0 + 952);
      v7 = *(v0 + 944);
      v8 = *(v0 + 928);
      v9 = *(v0 + 912);
      v10 = *(v0 + 832);
      (*(*(v0 + 856) + 16))(*(v0 + 864), *(v0 + 824), *(v0 + 848));
      v6(v8, v10, v9);
      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.default.getter();
      v13 = os_log_type_enabled(v11, v12);
      v14 = *(v0 + 968);
      v15 = *(v0 + 928);
      v16 = *(v0 + 920);
      v17 = *(v0 + 912);
      v18 = *(v0 + 864);
      v19 = *(v0 + 856);
      v20 = *(v0 + 848);
      if (v13)
      {
        v61 = v12;
        v21 = swift_slowAlloc();
        v63 = swift_slowAlloc();
        *v21 = 141558787;
        *(v21 + 4) = 1752392040;
        *(v21 + 12) = 2081;
        sub_1001E6D00(&qword_1005B02C8, &type metadata accessor for Handle);
        v60 = v14;
        v22 = dispatch thunk of CustomStringConvertible.description.getter();
        v24 = v23;
        (*(v19 + 8))(v18, v20);
        v25 = sub_10000D01C(v22, v24, &v63);

        *(v21 + 14) = v25;
        *(v21 + 22) = 2160;
        *(v21 + 24) = 1752392040;
        *(v21 + 32) = 2081;
        sub_1001E6D00(&qword_1005A9198, &type metadata accessor for HandleType);
        v26 = dispatch thunk of CustomStringConvertible.description.getter();
        v28 = v27;
        v60(v15, v17);
        v29 = sub_10000D01C(v26, v28, &v63);

        *(v21 + 34) = v29;
        _os_log_impl(&_mh_execute_header, v11, v61, "Handle %{private,mask.hash}s\nwith type: %{private,mask.hash}s not found. Refreshing...", v21, 0x2Au);
        swift_arrayDestroy();
      }

      else
      {

        v14(v15, v17);
        (*(v19 + 8))(v18, v20);
      }

      v58 = swift_task_alloc();
      *(v0 + 984) = v58;
      *v58 = v0;
      v58[1] = sub_1001E49F8;
      v59 = *(v0 + 840);

      return sub_1001E17C0(v0 + 16);
    }

    (*(*(v0 + 888) + 56))(*(v0 + 816), 1, 1, *(v0 + 880));
  }

  else
  {
    v30 = *(v0 + 944);
    v31 = *(v0 + 904);
    v32 = *(v0 + 896);
    v33 = *(v1 + 32);
    v33(v31, v3, v2);
    (*(v1 + 16))(v32, v31, v2);
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.default.getter();
    v36 = os_log_type_enabled(v34, v35);
    v37 = *(v0 + 896);
    v38 = *(v0 + 888);
    v39 = *(v0 + 880);
    if (v36)
    {
      v62 = v35;
      v40 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      *v40 = 136446723;
      *(v40 + 4) = sub_10000D01C(0xD00000000000002BLL, 0x80000001004E5400, &v63);
      *(v40 + 12) = 2160;
      *(v40 + 14) = 1752392040;
      *(v40 + 22) = 2081;
      sub_1001E6D00(&qword_1005AA720, &type metadata accessor for Friend);
      v41 = v33;
      v42 = dispatch thunk of CustomStringConvertible.description.getter();
      v44 = v43;
      (*(v38 + 8))(v37, v39);
      v45 = v42;
      v33 = v41;
      v46 = sub_10000D01C(v45, v44, &v63);

      *(v40 + 24) = v46;
      _os_log_impl(&_mh_execute_header, v34, v62, "%{public}s found friend:%{private,mask.hash}s", v40, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v38 + 8))(v37, v39);
    }

    v47 = *(v0 + 888);
    v48 = *(v0 + 880);
    v49 = *(v0 + 816);
    v33(v49, *(v0 + 904), v48);
    (*(v47 + 56))(v49, 0, 1, v48);
  }

  v50 = *(v0 + 936);
  v51 = *(v0 + 928);
  v52 = *(v0 + 904);
  v53 = *(v0 + 896);
  v54 = *(v0 + 872);
  v55 = *(v0 + 864);

  v56 = *(v0 + 8);

  return v56();
}

uint64_t sub_1001E49F8()
{
  v1 = *v0;
  v2 = *(*v0 + 984);
  v3 = *v0;

  sub_100002CE0((v1 + 2), &qword_1005B02C0, &unk_1004D5E90);
  v4 = swift_task_alloc();
  v1[124] = v4;
  *v4 = v3;
  v4[1] = sub_1001E4B94;
  v5 = v1[105];
  v6 = v1[104];
  v7 = v1[103];
  v8 = v1[102];

  return sub_1001E3D9C(v8, v7, v6, 0);
}

uint64_t sub_1001E4B94()
{
  v1 = *v0;
  v2 = *(*v0 + 992);
  v11 = *v0;

  v3 = v1[117];
  v4 = v1[116];
  v5 = v1[113];
  v6 = v1[112];
  v7 = v1[109];
  v8 = v1[108];

  v9 = *(v11 + 8);

  return v9();
}

uint64_t sub_1001E4D40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 848) = v5;
  *(v6 + 1024) = a5;
  *(v6 + 840) = a4;
  *(v6 + 832) = a3;
  *(v6 + 824) = a2;
  *(v6 + 816) = a1;
  v7 = type metadata accessor for Handle();
  *(v6 + 856) = v7;
  v8 = *(v7 - 8);
  *(v6 + 864) = v8;
  v9 = *(v8 + 64) + 15;
  *(v6 + 872) = swift_task_alloc();
  v10 = type metadata accessor for Friend();
  *(v6 + 880) = v10;
  v11 = *(v10 - 8);
  *(v6 + 888) = v11;
  v12 = *(v11 + 64) + 15;
  *(v6 + 896) = swift_task_alloc();
  *(v6 + 904) = swift_task_alloc();
  *(v6 + 912) = swift_task_alloc();
  v13 = type metadata accessor for HandleType();
  *(v6 + 920) = v13;
  v14 = *(v13 - 8);
  *(v6 + 928) = v14;
  v15 = *(v14 + 64) + 15;
  *(v6 + 936) = swift_task_alloc();
  *(v6 + 944) = swift_task_alloc();

  return _swift_task_switch(sub_1001E4EF0, v5, 0);
}

uint64_t sub_1001E4EF0()
{
  v34 = v0;
  if (qword_1005A80B8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 944);
  v2 = *(v0 + 928);
  v3 = *(v0 + 920);
  v4 = *(v0 + 840);
  v5 = type metadata accessor for Logger();
  *(v0 + 952) = sub_10000A6F0(v5, qword_1005DFF18);
  v6 = *(v2 + 16);
  *(v0 + 960) = v6;
  *(v0 + 968) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4, v3);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 944);
  v11 = *(v0 + 928);
  v12 = *(v0 + 920);
  if (v9)
  {
    v32 = *(v0 + 1024);
    v31 = v8;
    v13 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    *v13 = 136446722;
    *(v13 + 4) = sub_10000D01C(0xD000000000000020, 0x80000001004E53D0, &v33);
    *(v13 + 12) = 2080;
    sub_1001E6D00(&qword_1005A9198, &type metadata accessor for HandleType);
    log = v7;
    v14 = v6;
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v16;
    v18 = *(v11 + 8);
    v18(v10, v12);
    v19 = v15;
    v6 = v14;
    v20 = sub_10000D01C(v19, v17, &v33);

    *(v13 + 14) = v20;
    *(v13 + 22) = 1026;
    *(v13 + 24) = v32;
    _os_log_impl(&_mh_execute_header, log, v31, "%{public}s type: %s shouldRefresh: %{BOOL,public}d", v13, 0x1Cu);
    swift_arrayDestroy();
  }

  else
  {

    v18 = *(v11 + 8);
    v18(v10, v12);
  }

  *(v0 + 976) = v18;
  v21 = *(v0 + 928);
  v22 = *(v0 + 920);
  v23 = *(v0 + 840);
  sub_10004B564(&qword_1005A92A8, &qword_1004C4330);
  v24 = *(v21 + 72);
  v25 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  v26 = swift_allocObject();
  *(v0 + 984) = v26;
  *(v26 + 16) = xmmword_1004C1900;
  v6(v26 + v25, v23, v22);
  v27 = swift_task_alloc();
  *(v0 + 992) = v27;
  *v27 = v0;
  v27[1] = sub_1001E5254;
  v28 = *(v0 + 848);

  return sub_10001C61C(v26, 1);
}

uint64_t sub_1001E5254(uint64_t a1)
{
  v2 = *(*v1 + 992);
  v3 = *(*v1 + 984);
  v4 = *(*v1 + 848);
  v6 = *v1;
  *(*v1 + 1000) = a1;

  return _swift_task_switch(sub_1001E5388, v4, 0);
}

void sub_1001E5388()
{
  v72 = v0;
  v1 = v0[125];
  v68 = *(v1 + 16);
  if (v68)
  {
    v2 = 0;
    v3 = v0[111];
    v63 = v0[104];
    v66 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v4 = (v0[108] + 8);
    v65 = (v3 + 8);
    while (1)
    {
      if (v2 >= *(v1 + 16))
      {
        __break(1u);
        return;
      }

      v5 = v0[109];
      v6 = v70[107];
      v64 = *(v3 + 16);
      v64(v0[113], v66 + *(v3 + 72) * v2, v0[110]);
      Friend.handle.getter();
      v7 = Handle.serverID.getter();
      v9 = v8;
      v0 = v70;
      (*v4)(v5, v6);
      if (v9)
      {
        if (v7 == v70[103] && v9 == v63)
        {
          v31 = v70[125];

LABEL_18:
          v32 = v70[119];
          v33 = v70[114];
          v34 = v70[113];
          v35 = v70[112];
          v36 = v70[111];
          v37 = v70[110];

          v38 = *(v36 + 32);
          v38(v33, v34, v37);
          v0 = v70;
          v64(v35, v33, v37);
          v39 = Logger.logObject.getter();
          v40 = static os_log_type_t.default.getter();
          v41 = os_log_type_enabled(v39, v40);
          v42 = v70[112];
          v43 = v70[110];
          if (v41)
          {
            v44 = swift_slowAlloc();
            v71 = swift_slowAlloc();
            *v44 = 136446723;
            *(v44 + 4) = sub_10000D01C(0xD000000000000020, 0x80000001004E53D0, &v71);
            *(v44 + 12) = 2160;
            *(v44 + 14) = 1752392040;
            *(v44 + 22) = 2081;
            sub_1001E6D00(&qword_1005AA720, &type metadata accessor for Friend);
            v45 = v38;
            v46 = dispatch thunk of CustomStringConvertible.description.getter();
            v48 = v47;
            (*v65)(v42, v43);
            v49 = v46;
            v38 = v45;
            v0 = v70;
            v50 = sub_10000D01C(v49, v48, &v71);

            *(v44 + 24) = v50;
            _os_log_impl(&_mh_execute_header, v39, v40, "%{public}s found friend:%{private,mask.hash}s", v44, 0x20u);
            swift_arrayDestroy();
          }

          else
          {

            (*v65)(v42, v43);
          }

          v51 = v0[111];
          v52 = v0[110];
          v53 = v0[102];
          v38(v53, v0[114], v52);
          (*(v51 + 56))(v53, 0, 1, v52);
LABEL_22:
          v54 = v0[118];
          v55 = v0[117];
          v56 = v0[114];
          v57 = v0[113];
          v58 = v0[112];
          v59 = v0[109];

          v60 = v0[1];

          v60();
          return;
        }

        v11 = v70[104];
        v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v12)
        {
          v13 = v70[125];
          goto LABEL_18;
        }
      }

      ++v2;
      (*v65)(v70[113], v70[110]);
      if (v68 == v2)
      {
        v14 = v70[125];
        break;
      }
    }
  }

  v15 = *(v0 + 1024);

  if (v15 != 1)
  {
    (*(v0[111] + 56))(v0[102], 1, 1, v0[110]);
    goto LABEL_22;
  }

  v16 = v0[121];
  v17 = v0[119];
  v18 = v0[104];
  (v0[120])(v0[117], v0[105], v0[115]);

  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();

  v21 = os_log_type_enabled(v19, v20);
  v22 = v0[122];
  v23 = v0[117];
  v24 = v0[116];
  v25 = v0[115];
  if (v21)
  {
    v67 = v0[103];
    v69 = v0[104];
    v26 = swift_slowAlloc();
    v71 = swift_slowAlloc();
    *v26 = 141558787;
    *(v26 + 4) = 1752392040;
    *(v26 + 12) = 2081;
    *(v26 + 14) = sub_10000D01C(v67, v69, &v71);
    *(v26 + 22) = 2160;
    *(v26 + 24) = 1752392040;
    *(v26 + 32) = 2081;
    sub_1001E6D00(&qword_1005A9198, &type metadata accessor for HandleType);
    v27 = dispatch thunk of CustomStringConvertible.description.getter();
    v29 = v28;
    v22(v23, v25);
    v30 = sub_10000D01C(v27, v29, &v71);

    *(v26 + 34) = v30;
    _os_log_impl(&_mh_execute_header, v19, v20, "Handle.serverID %{private,mask.hash}s\nwith type: %{private,mask.hash}s not found. Refreshing...", v26, 0x2Au);
    swift_arrayDestroy();
  }

  else
  {

    v22(v23, v25);
  }

  v61 = swift_task_alloc();
  v0[126] = v61;
  *v61 = v0;
  v61[1] = sub_1001E5A74;
  v62 = v0[106];

  sub_1001E17C0((v0 + 2));
}

uint64_t sub_1001E5A74()
{
  v1 = *v0;
  v2 = *(*v0 + 1008);
  v3 = *v0;

  sub_100002CE0((v1 + 2), &qword_1005B02C0, &unk_1004D5E90);
  v4 = swift_task_alloc();
  v1[127] = v4;
  *v4 = v3;
  v4[1] = sub_1001E5C24;
  v5 = v1[106];
  v6 = v1[105];
  v7 = v1[104];
  v8 = v1[103];
  v9 = v1[102];

  return sub_1001E4D40(v9, v8, v7, v6, 0);
}

uint64_t sub_1001E5C24()
{
  v1 = *v0;
  v2 = *(*v0 + 1016);
  v11 = *v0;

  v3 = v1[118];
  v4 = v1[117];
  v5 = v1[114];
  v6 = v1[113];
  v7 = v1[112];
  v8 = v1[109];

  v9 = *(v11 + 8);

  return v9();
}

uint64_t sub_1001E5DD0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 88) = a4;
  *(v5 + 32) = a3;
  *(v5 + 40) = v4;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v6 = *(*(sub_10004B564(&qword_1005A9188, &unk_1004D80D0) - 8) + 64) + 15;
  *(v5 + 48) = swift_task_alloc();
  v7 = type metadata accessor for HandleType();
  *(v5 + 56) = v7;
  v8 = *(v7 - 8);
  *(v5 + 64) = v8;
  v9 = *(v8 + 64) + 15;
  *(v5 + 72) = swift_task_alloc();

  return _swift_task_switch(sub_1001E5ED0, v4, 0);
}

uint64_t sub_1001E5ED0()
{
  v26 = v0;
  if (qword_1005A80B8 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v3 = *(v0 + 56);
  v4 = *(v0 + 32);
  v5 = type metadata accessor for Logger();
  sub_10000A6F0(v5, qword_1005DFF18);
  (*(v2 + 16))(v1, v4, v3);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  v8 = os_log_type_enabled(v6, v7);
  v10 = *(v0 + 64);
  v9 = *(v0 + 72);
  v11 = *(v0 + 56);
  if (v8)
  {
    v24 = *(v0 + 88);
    v12 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *v12 = 136446722;
    *(v12 + 4) = sub_10000D01C(0xD00000000000002BLL, 0x80000001004DEAF0, &v25);
    *(v12 + 12) = 2080;
    sub_1001E6D00(&qword_1005A9198, &type metadata accessor for HandleType);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;
    (*(v10 + 8))(v9, v11);
    v16 = sub_10000D01C(v13, v15, &v25);

    *(v12 + 14) = v16;
    *(v12 + 22) = 1026;
    *(v12 + 24) = v24;
    _os_log_impl(&_mh_execute_header, v6, v7, "%{public}s type: %s shouldRefresh: %{BOOL,public}d", v12, 0x1Cu);
    swift_arrayDestroy();
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v17 = swift_task_alloc();
  *(v0 + 80) = v17;
  *v17 = v0;
  v17[1] = sub_1001E619C;
  v19 = *(v0 + 40);
  v18 = *(v0 + 48);
  v20 = *(v0 + 88);
  v21 = *(v0 + 24);
  v22 = *(v0 + 32);

  return sub_1001E3D9C(v18, v21, v22, v20);
}

uint64_t sub_1001E619C()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 40);
  v4 = *v0;

  return _swift_task_switch(sub_1001E62AC, v2, 0);
}

uint64_t sub_1001E62AC()
{
  v1 = v0[6];
  v2 = type metadata accessor for Friend();
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_100002CE0(v1, &qword_1005A9188, &unk_1004D80D0);
    v4 = 1;
  }

  else
  {
    v5 = v0[2];
    Friend.handle.getter();
    (*(v3 + 8))(v1, v2);
    v4 = 0;
  }

  v6 = v0[9];
  v7 = v0[6];
  v8 = v0[2];
  v9 = type metadata accessor for Handle();
  (*(*(v9 - 8) + 56))(v8, v4, 1, v9);

  v10 = v0[1];

  return v10();
}

void *sub_1001E6424()
{
  v1 = v0[14];

  v2 = v0[16];

  v3 = v0[19];

  v4 = v0[20];

  v5 = v0[21];
  swift_unknownObjectRelease();
  v6 = v0[23];

  sub_100002CE0(v0 + OBJC_IVAR____TtC13findmylocated11DataManager_accountStateStream, &qword_1005B02F8, &qword_1004D1870);
  v7 = *(v0 + OBJC_IVAR____TtC13findmylocated11DataManager_stateContinuations);

  v8 = *(v0 + OBJC_IVAR____TtC13findmylocated11DataManager__apnsRefreshTimestamps);

  sub_10001A794(*(v0 + OBJC_IVAR____TtC13findmylocated11DataManager_apnsToken), *(v0 + OBJC_IVAR____TtC13findmylocated11DataManager_apnsToken + 8));
  sub_10020A58C(v0 + OBJC_IVAR____TtC13findmylocated11DataManager_state, type metadata accessor for DataManager.State);
  sub_100004984((v0 + OBJC_IVAR____TtC13findmylocated11DataManager_sic));
  sub_100004984((v0 + OBJC_IVAR____TtC13findmylocated11DataManager_serverAlertPresenter));
  v9 = *(v0 + OBJC_IVAR____TtC13findmylocated11DataManager_handlesSharingLocation);

  v10 = *(v0 + OBJC_IVAR____TtC13findmylocated11DataManager_legacyLocationsForHandles);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1001E652C()
{
  sub_1001E6424();

  return _swift_defaultActor_deallocate(v0);
}

void sub_1001E6560()
{
  sub_1001E66B4();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    v2 = type metadata accessor for DataManager.State(319);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_1001E66B4()
{
  if (!qword_1005AFB10)
  {
    sub_10004B610(&unk_1005AFB18, &qword_1004D12E8);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1005AFB10);
    }
  }
}

void sub_1001E6738()
{
  sub_1001E6864(319, &qword_1005AFF50, sub_1001E680C);
  if (v0 <= 0x3F)
  {
    sub_1001E6864(319, &qword_1005AFF60, &type metadata accessor for Friend);
    if (v1 <= 0x3F)
    {
      sub_1001E68B0();
      if (v2 <= 0x3F)
      {
        sub_1001E68E0();
        if (v3 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

void sub_1001E680C()
{
  if (!qword_1005AFF58)
  {
    type metadata accessor for Device();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1005AFF58);
    }
  }
}

void sub_1001E6864(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void *sub_1001E68B0()
{
  result = qword_1005AFF68;
  if (!qword_1005AFF68)
  {
    result = &type metadata for Bool;
    atomic_store(&type metadata for Bool, &qword_1005AFF68);
  }

  return result;
}

void *sub_1001E68E0()
{
  result = qword_1005AFF70;
  if (!qword_1005AFF70)
  {
    result = &type metadata for Bool;
    atomic_store(&type metadata for Bool, &qword_1005AFF70);
  }

  return result;
}

uint64_t sub_1001E6958()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000368C;

  return sub_1001E12DC();
}

uint64_t sub_1001E69E4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000368C;

  return sub_1001E140C(a1, a2);
}

uint64_t sub_1001E6A88(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to ActorServiceProtocol.firstLaunchSinceReboot()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = type metadata accessor for DataManager(0);
  *v5 = v2;
  v5[1] = sub_100003690;

  return ActorServiceProtocol.firstLaunchSinceReboot()(v6, a2);
}

uint64_t sub_1001E6B34()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000368C;

  return sub_1001DC630();
}

uint64_t sub_1001E6BC0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100003690;

  return sub_1001DD28C();
}

uint64_t sub_1001E6C4C()
{
  v1 = *v0;
  type metadata accessor for DataManager(0);
  sub_1001E6D00(&qword_1005A90D0, type metadata accessor for DataManager);
  return ActorServiceProtocol.description.getter();
}

uint64_t sub_1001E6D00(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1001E6D90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8)
{
  v61 = a6;
  v62 = a8;
  v59 = a4;
  v60 = a5;
  v58 = a1;
  v11 = type metadata accessor for UUID();
  v54 = *(v11 - 8);
  v55 = v11;
  v12 = *(v54 + 64);
  __chkstk_darwin(v11);
  v65 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10004B564(&qword_1005B0138, &qword_1004D16C8);
  v56 = v14;
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v53 - v17;
  v53 = type metadata accessor for AckAlertEndpoint();
  v19 = *(v53 - 8);
  v20 = *(v19 + 64);
  v21 = __chkstk_darwin(v53);
  v63 = &v53 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v53 - v22;
  v57 = type metadata accessor for WorkItemQueue.WorkItem();
  v64 = a3;
  sub_10020AABC(a3, v23, type metadata accessor for AckAlertEndpoint);
  sub_100011004(a7, v66);
  (*(v15 + 16))(v18, v58, v14);
  v24 = (*(v19 + 80) + 24) & ~*(v19 + 80);
  v25 = (v20 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = (v25 + 31) & 0xFFFFFFFFFFFFFFF8;
  v27 = (*(v15 + 80) + v26 + 40) & ~*(v15 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = a2;
  v58 = v23;
  sub_10020AE30(v23, v28 + v24, type metadata accessor for AckAlertEndpoint);
  v29 = (v28 + v25);
  v30 = v60;
  *v29 = v59;
  v29[1] = v30;
  v31 = v61;
  v29[2] = v61;
  sub_100010BD4(v66, v28 + v26);
  (*(v15 + 32))(v28 + v27, v18, v56);
  *(v28 + ((v16 + v27 + 7) & 0xFFFFFFFFFFFFFFF8)) = v62;

  sub_10002CF44(v30, v31);
  UUID.init()();
  WorkItemQueue.WorkItem.__allocating_init(identifier:block:)();
  if (qword_1005A80B8 != -1)
  {
    swift_once();
  }

  v32 = type metadata accessor for Logger();
  sub_10000A6F0(v32, qword_1005DFF18);
  v33 = v63;
  sub_10020AABC(v64, v63, type metadata accessor for AckAlertEndpoint);

  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    *&v66[0] = swift_slowAlloc();
    *v36 = 136446722;
    sub_10020AABC(v33, v58, type metadata accessor for AckAlertEndpoint);
    v37 = String.init<A>(describing:)();
    v39 = v38;
    sub_10020A58C(v33, type metadata accessor for AckAlertEndpoint);
    v40 = sub_10000D01C(v37, v39, v66);

    *(v36 + 4) = v40;
    *(v36 + 12) = 2082;
    v41 = *(a2 + 160);
    v42 = WorkItemQueue.name.getter();
    v44 = sub_10000D01C(v42, v43, v66);

    *(v36 + 14) = v44;
    *(v36 + 22) = 2082;
    v45 = v65;
    WorkItemQueue.WorkItem.id.getter();
    sub_1001E6D00(&qword_1005A92C0, &type metadata accessor for UUID);
    v46 = v55;
    v47 = dispatch thunk of CustomStringConvertible.description.getter();
    v49 = v48;
    (*(v54 + 8))(v45, v46);
    v50 = sub_10000D01C(v47, v49, v66);

    *(v36 + 24) = v50;
    _os_log_impl(&_mh_execute_header, v34, v35, "Scheduling AckAlert command to %{public}s on %{public}s WorkItem: %{public}s", v36, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    sub_10020A58C(v33, type metadata accessor for AckAlertEndpoint);
  }

  v51 = *(a2 + 160);
  dispatch thunk of WorkItemQueue.enqueue(_:)();
}

uint64_t sub_1001E73A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[45] = a7;
  v8[46] = a8;
  v8[43] = a5;
  v8[44] = a6;
  v8[41] = a3;
  v8[42] = a4;
  v8[39] = a1;
  v8[40] = a2;
  v10 = sub_10004B564(&qword_1005B0140, &qword_1004D16E0);
  v8[47] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v8[48] = swift_task_alloc();
  v8[49] = swift_task_alloc();
  v8[50] = swift_task_alloc();
  v8[51] = swift_task_alloc();
  v12 = type metadata accessor for Response();
  v8[52] = v12;
  v13 = *(v12 - 8);
  v8[53] = v13;
  v14 = *(v13 + 64) + 15;
  v8[54] = swift_task_alloc();
  v8[55] = swift_task_alloc();
  v8[56] = swift_task_alloc();

  return _swift_task_switch(sub_1001E74F0, a1, 0);
}

uint64_t sub_1001E74F0()
{
  sub_100011004(*(v0 + 312) + OBJC_IVAR____TtC13findmylocated11DataManager_sic, v0 + 16);

  return _swift_task_switch(sub_1001E7568, 0, 0);
}

uint64_t sub_1001E7568()
{
  v1 = v0[43];
  v2 = v0[44];
  v4 = v0[41];
  v3 = v0[42];
  v5 = v0[40];
  v6 = v0[5];
  v7 = v0[6];
  sub_100011AEC(v0 + 2, v6);
  v8 = type metadata accessor for AckAlertEndpoint();
  v0[57] = v8;
  v0[10] = v8;
  v9 = sub_1001E6D00(&qword_1005B0148, type metadata accessor for AckAlertEndpoint);
  v0[58] = v9;
  v0[11] = v9;
  v10 = sub_10000331C(v0 + 7);
  sub_10020AABC(v5, v10, type metadata accessor for AckAlertEndpoint);
  v0[15] = &type metadata for AckAlertRequest;
  v11 = sub_100145368();
  v0[59] = v11;
  v0[16] = v11;
  v0[12] = v4;
  v0[13] = v3;
  v0[14] = v1;
  sub_100011004(v2, (v0 + 17));
  v12 = *(v7 + 8);

  sub_10002CF44(v3, v1);
  v17 = (v12 + *v12);
  v13 = v12[1];
  v14 = swift_task_alloc();
  v0[60] = v14;
  *v14 = v0;
  v14[1] = sub_1001E7780;
  v15 = v0[56];

  return (v17)(v15, v0 + 7, v0 + 12, v0 + 17, v6, v7);
}

uint64_t sub_1001E7780()
{
  v2 = *v1;
  v3 = *(*v1 + 480);
  v6 = *v1;
  *(*v1 + 488) = v0;

  sub_100002CE0(v2 + 136, &qword_1005A9138, &qword_1004C2600);
  if (v0)
  {
    v4 = sub_1001E7D9C;
  }

  else
  {
    sub_100004984((v2 + 96));
    sub_100004984((v2 + 56));
    v4 = sub_1001E78C4;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1001E78C4()
{
  v1 = *(v0 + 472);
  v2 = *(v0 + 336);
  v3 = *(v0 + 344);
  v5 = *(v0 + 320);
  v4 = *(v0 + 328);
  v12 = *(v0 + 456);
  sub_100004984((v0 + 16));
  *(v0 + 200) = v12;
  v6 = sub_10000331C((v0 + 176));
  sub_10020AABC(v5, v6, type metadata accessor for AckAlertEndpoint);
  *(v0 + 240) = &type metadata for AckAlertRequest;
  *(v0 + 248) = v1;
  *(v0 + 216) = v4;
  *(v0 + 224) = v2;
  *(v0 + 232) = v3;

  sub_10002CF44(v2, v3);
  v7 = swift_task_alloc();
  *(v0 + 496) = v7;
  *v7 = v0;
  v7[1] = sub_1001E79F0;
  v8 = *(v0 + 440);
  v9 = *(v0 + 448);
  v10 = *(v0 + 312);

  return sub_1001E827C(v8, v0 + 176, v0 + 216, v9);
}

uint64_t sub_1001E79F0()
{
  v2 = *v1;
  v3 = *(*v1 + 496);
  v6 = *v1;
  *(*v1 + 504) = v0;

  if (v0)
  {
    v4 = sub_1001E8004;
  }

  else
  {
    sub_100004984((v2 + 216));
    sub_100004984((v2 + 176));
    v4 = sub_1001E7B14;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1001E7B14()
{
  v1 = v0[63];
  v2 = v0[46];
  sub_1001E9AE0(v0[55], v0 + 37, v0[49]);
  v3 = v0[50];
  if (v1)
  {
    v4 = v0[47];
    *v3 = v0[37];
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    v5 = v0[49];
    v6 = v0[47];
    swift_storeEnumTagMultiPayload();
    sub_1000176A8(v5, v3, &qword_1005B0140, &qword_1004D16E0);
  }

  v7 = v0[51];
  v9 = v0[47];
  v8 = v0[48];
  sub_1000176A8(v0[50], v7, &qword_1005B0140, &qword_1004D16E0);
  sub_100005F04(v7, v8, &qword_1005B0140, &qword_1004D16E0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v12 = v0[55];
  v11 = v0[56];
  if (EnumCaseMultiPayload == 1)
  {
    v13 = v0[52];
    v14 = v0[53];
    v15 = v0[51];
    v16 = v0[45];
    v0[38] = *v0[48];
    sub_10004B564(&qword_1005B0138, &qword_1004D16C8);
    CheckedContinuation.resume(throwing:)();
    sub_100002CE0(v15, &qword_1005B0140, &qword_1004D16E0);
    v17 = *(v14 + 8);
    v17(v12, v13);
    v17(v11, v13);
  }

  else
  {
    v18 = v0[53];
    v20 = v0[51];
    v19 = v0[52];
    v21 = v0[45];
    (*(v18 + 32))(v0[54], v0[48], v19);
    sub_10004B564(&qword_1005B0138, &qword_1004D16C8);
    CheckedContinuation.resume(returning:)();
    sub_100002CE0(v20, &qword_1005B0140, &qword_1004D16E0);
    v22 = *(v18 + 8);
    v22(v12, v19);
    v22(v11, v19);
  }

  v24 = v0[55];
  v23 = v0[56];
  v25 = v0[54];
  v27 = v0[50];
  v26 = v0[51];
  v29 = v0[48];
  v28 = v0[49];

  v30 = v0[1];

  return v30();
}

uint64_t sub_1001E7D9C()
{
  v23 = v0;
  sub_100004984(v0 + 12);
  sub_100004984(v0 + 7);
  sub_100004984(v0 + 2);
  v1 = v0[61];
  if (qword_1005A80B8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A6F0(v2, qword_1005DFF18);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v5 = 136446467;
    *(v5 + 4) = sub_10000D01C(0xD00000000000002ALL, 0x80000001004E52E0, &v22);
    *(v5 + 12) = 2081;
    swift_getErrorValue();
    v7 = v0[32];
    v6 = v0[33];
    v8 = v0[34];
    v9 = Error.localizedDescription.getter();
    v11 = sub_10000D01C(v9, v10, &v22);

    *(v5 + 14) = v11;
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s: Sending command failed. Error: %{private}s", v5, 0x16u);
    swift_arrayDestroy();
  }

  v12 = v0[45];
  v0[35] = v1;
  sub_10004B564(&qword_1005B0138, &qword_1004D16C8);
  CheckedContinuation.resume(throwing:)();
  v14 = v0[55];
  v13 = v0[56];
  v15 = v0[54];
  v17 = v0[50];
  v16 = v0[51];
  v19 = v0[48];
  v18 = v0[49];

  v20 = v0[1];

  return v20();
}