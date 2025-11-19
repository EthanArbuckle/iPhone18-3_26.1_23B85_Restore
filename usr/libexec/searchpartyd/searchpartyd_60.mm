uint64_t sub_10063B288(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  v5 = *(*v3 + 200);
  v7 = *v3;
  v4[26] = a1;
  v4[27] = a2;
  v4[28] = a3;

  return _swift_task_switch(sub_10063B38C, 0, 0);
}

uint64_t sub_10063B38C()
{
  v70 = v0;
  if (*(v0 + 208))
  {
    v68 = *(v0 + 208);
    if (qword_101694EC0 != -1)
    {
      swift_once();
    }

    v2 = *(v0 + 152);
    v1 = *(v0 + 160);
    v3 = *(v0 + 64);
    sub_1000076D4(*(v0 + 192), qword_10177C0F0);
    sub_10063F714(v1, v2, type metadata accessor for AccessoryMetadata);
    v4 = v3;
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v8 = *(v0 + 176);
      v7 = *(v0 + 184);
      v9 = *(v0 + 168);
      v66 = *(v0 + 152);
      v10 = *(v0 + 64);
      v11 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      *v11 = 136446466;
      v12 = [v10 identifier];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      sub_10063F9D8(&qword_101696930, &type metadata accessor for UUID);
      v13 = dispatch thunk of CustomStringConvertible.description.getter();
      v15 = v14;
      (*(v8 + 8))(v7, v9);
      v16 = sub_1000136BC(v13, v15, &v69);

      *(v11 + 4) = v16;
      *(v11 + 12) = 2082;
      v17 = sub_100230E34();
      v19 = v18;
      sub_10063F77C(v66, type metadata accessor for AccessoryMetadata);
      v20 = sub_1000136BC(v17, v19, &v69);

      *(v11 + 14) = v20;
      _os_log_impl(&_mh_execute_header, v5, v6, "%{public}s product info: %{public}s", v11, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
      v26 = *(v0 + 152);

      sub_10063F77C(v26, type metadata accessor for AccessoryMetadata);
    }

    if (qword_101694F58 != -1)
    {
      swift_once();
    }

    v27 = qword_10177C218;
    v28 = [objc_opt_self() sharedInstance];
    v29 = [v28 isInternalBuild];

    v30 = &enum case for FMNAccountType.accessory(_:);
    if (v29)
    {
      v31 = String._bridgeToObjectiveC()();
      v32 = [v27 BOOLForKey:v31];

      if (v32)
      {
        v30 = &enum case for FMNAccountType.none(_:);
      }
    }

    v34 = *(v0 + 216);
    v33 = *(v0 + 224);
    v67 = *(v0 + 160);
    v35 = *(v0 + 112);
    v36 = *(v0 + 120);
    v37 = *(v0 + 96);
    v38 = *(v0 + 104);
    v39 = *(v0 + 88);
    v64 = *(v0 + 208);
    v65 = *(v0 + 80);
    v40 = *v30;
    v41 = type metadata accessor for FMNAccountType();
    (*(*(v41 - 8) + 104))(v35, v40, v41);
    sub_10063F5C4(v35, v36, type metadata accessor for AccessoryInfoEndPoint);
    v42 = type metadata accessor for SearchPartyURLSessionFactory(0);
    v43 = *(v42 + 48);
    v44 = *(v42 + 52);
    swift_allocObject();
    v45 = type metadata accessor for FMNMockingPreferences();
    (*(*(v45 - 8) + 56))(v37, 1, 1, v45);
    v46 = FMNURLSessionFactory.init(mockSessionCreationBlock:preferences:)();
    v47 = type metadata accessor for ServerInteractionController(0);
    v48 = *(v47 + 48);
    v49 = *(v47 + 52);
    v50 = swift_allocObject();
    sub_10063F714(v36, v38, type metadata accessor for AccessoryInfoEndPoint);
    v51 = sub_100620924(v38, v46, v50);
    sub_10063F77C(v36, type metadata accessor for AccessoryInfoEndPoint);

    sub_100017D5C(v34, v33);
    sub_1004FC6D8(v68, v34, v33, 0, v51);
    sub_100165328(v64, v34, v33);
    v52 = swift_allocObject();
    *(v52 + 16) = v65;
    *(v52 + 24) = v39;

    Future.addFailure(block:)();

    v53 = swift_allocObject();
    *(v53 + 16) = v65;
    *(v53 + 24) = v39;

    Future.addSuccess(block:)();

    sub_100165328(v64, v34, v33);
    sub_10063F77C(v67, type metadata accessor for AccessoryMetadata);
  }

  else
  {
    sub_10063F77C(*(v0 + 160), type metadata accessor for AccessoryMetadata);
    if (qword_101694EC0 != -1)
    {
      swift_once();
    }

    sub_1000076D4(*(v0 + 192), qword_10177C0F0);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "retrieveProductInfo: invalid parameters", v23, 2u);
    }

    v24 = *(v0 + 80);
    v25 = *(v0 + 88);

    *(v0 + 16) = 6;
    *(v0 + 24) = 0u;
    *(v0 + 40) = 0u;
    *(v0 + 56) = 267;
    v24(v0 + 16);
    sub_10000B3A8(v0 + 16, &qword_1016A62A8, &qword_1013B3CA8);
  }

  v54 = *(v0 + 184);
  v55 = *(v0 + 152);
  v56 = *(v0 + 160);
  v58 = *(v0 + 120);
  v57 = *(v0 + 128);
  v60 = *(v0 + 104);
  v59 = *(v0 + 112);
  v61 = *(v0 + 96);

  v62 = *(v0 + 8);

  return v62();
}

uint64_t sub_10063BB2C(uint64_t a1, void (*a2)(uint64_t *), uint64_t a3)
{
  v32 = a3;
  v33 = a2;
  v3 = type metadata accessor for AccessoryInfoResponseContent(0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000BC4D4(&qword_101697268, &qword_101394FE0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v30 - v9;
  v11 = type metadata accessor for AccessoryProductInfo();
  v31 = *(v11 - 8);
  v12 = *(v31 + 64);
  __chkstk_darwin(v11);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_101694EC0 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_1000076D4(v15, qword_10177C0F0);
  swift_errorRetain();
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v18 = 138543362;
    swift_errorRetain();
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v18 + 4) = v20;
    *v19 = v20;
    _os_log_impl(&_mh_execute_header, v16, v17, "Error in product info request. Error - %{public}@", v18, 0xCu);
    sub_10000B3A8(v19, &qword_10169BB30, &unk_10138B3C0);
  }

  if (qword_101694F58 != -1)
  {
    swift_once();
  }

  v21 = qword_10177C218;
  v22 = [objc_opt_self() sharedInstance];
  v23 = [v22 isInternalBuild];

  if (!v23)
  {
    goto LABEL_13;
  }

  v24 = String._bridgeToObjectiveC()();
  v25 = [v21 BOOLForKey:v24];

  if (!v25)
  {
    goto LABEL_13;
  }

  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&_mh_execute_header, v26, v27, "AccessoryHardcodedPairingEnabled: bypassing product info check failure", v28, 2u);
  }

  sub_10074B008(v6);
  sub_10119A0F4(v6, v10);
  if ((*(v31 + 48))(v10, 1, v11) == 1)
  {
    sub_10000B3A8(v10, &qword_101697268, &qword_101394FE0);
LABEL_13:
    v34 = 6;
    v35 = 0u;
    v36 = 0u;
    v37 = 267;
    v33(&v34);
    return sub_10000B3A8(&v34, &qword_1016A62A8, &qword_1013B3CA8);
  }

  sub_10063F5C4(v10, v14, type metadata accessor for AccessoryProductInfo);
  v34 = sub_10119B27C();
  HIBYTE(v37) = 0;
  v33(&v34);
  sub_10000B3A8(&v34, &qword_1016A62A8, &qword_1013B3CA8);
  return sub_10063F77C(v14, type metadata accessor for AccessoryProductInfo);
}

uint64_t sub_10063BFCC(uint64_t a1, void (*a2)(uint64_t *), uint64_t a3)
{
  v6 = type metadata accessor for AccessoryInfoResponseContent(0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v100 = v96 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000BC4D4(&qword_101697268, &qword_101394FE0);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v96[1] = v96 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v97 = v96 - v13;
  v14 = type metadata accessor for AccessoryProductInfo();
  v98 = *(v14 - 8);
  v99 = v14;
  v15 = *(v98 + 64);
  v16 = __chkstk_darwin(v14);
  v18 = v96 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v96[0] = v96 - v19;
  v20 = type metadata accessor for FMNServerInteractionController.FMNResponseFields();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = __chkstk_darwin(v20);
  v25 = v96 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v27 = v96 - v26;
  v28 = type metadata accessor for String.Encoding();
  v29 = *(*(v28 - 8) + 64);
  __chkstk_darwin(v28 - 8);
  v30 = FMNServerInteractionController.FMNResponseFields.statusCode.getter();
  v102 = a2;
  if (v30 == 200)
  {
    v97 = v18;
    v101 = a3;
    v31 = FMNServerInteractionController.FMNResponseFields.data.getter();
    v33 = v32;
    static String.Encoding.utf8.getter();
    v34 = String.init(data:encoding:)();
    v36 = v35;
    sub_100016590(v31, v33);
    if (v36)
    {
      if (qword_101694EC0 != -1)
      {
        swift_once();
      }

      v37 = type metadata accessor for Logger();
      sub_1000076D4(v37, qword_10177C0F0);

      v38 = Logger.logObject.getter();
      v39 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v104 = v41;
        *v40 = 136315138;
        v42 = sub_1000136BC(v34, v36, &v104);

        *(v40 + 4) = v42;
        _os_log_impl(&_mh_execute_header, v38, v39, "response data: %s", v40, 0xCu);
        sub_100007BAC(v41);
      }

      else
      {
      }
    }

    if (qword_101694EC0 != -1)
    {
      swift_once();
    }

    v65 = type metadata accessor for Logger();
    v66 = sub_1000076D4(v65, qword_10177C0F0);
    (*(v21 + 16))(v27, a1, v20);
    v67 = Logger.logObject.getter();
    v68 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      v96[0] = v66;
      v70 = v69;
      v71 = swift_slowAlloc();
      v104 = v71;
      *v70 = 136446210;
      sub_10063F9D8(&qword_1016A62C0, &type metadata accessor for FMNServerInteractionController.FMNResponseFields);
      v72 = dispatch thunk of CustomStringConvertible.description.getter();
      v73 = v20;
      v75 = v74;
      (*(v21 + 8))(v27, v73);
      v76 = sub_1000136BC(v72, v75, &v104);
      v77 = v102;

      *(v70 + 4) = v76;
      _os_log_impl(&_mh_execute_header, v67, v68, "   %{public}s", v70, 0xCu);
      sub_100007BAC(v71);
    }

    else
    {

      (*(v21 + 8))(v27, v20);
      v77 = v102;
    }

    v78 = type metadata accessor for JSONDecoder();
    v79 = *(v78 + 48);
    v80 = *(v78 + 52);
    swift_allocObject();
    JSONDecoder.init()();
    v81 = FMNServerInteractionController.FMNResponseFields.data.getter();
    v83 = v82;
    sub_10063F51C();
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    sub_100016590(v81, v83);
    v84 = v104;

    v85 = Logger.logObject.getter();
    v86 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v85, v86))
    {
      v87 = swift_slowAlloc();
      v88 = swift_slowAlloc();
      v104 = v88;
      *v87 = 136446210;
      v103 = v84;
      sub_10063F570();
      v89 = dispatch thunk of CustomStringConvertible.description.getter();
      v91 = sub_1000136BC(v89, v90, &v104);

      *(v87 + 4) = v91;
      _os_log_impl(&_mh_execute_header, v85, v86, "decodedResponse %{public}s", v87, 0xCu);
      sub_100007BAC(v88);
    }

    v92 = sub_10063CE5C(v84);

    if (v92)
    {
      v104 = v92;
      HIBYTE(v107) = 0;
      v93 = v92;
      v77(&v104);
    }

    else
    {
      v104 = 6;
      v105 = 0u;
      v106 = 0u;
      v107 = 267;
      v77(&v104);
    }

    return sub_10000B3A8(&v104, &qword_1016A62A8, &qword_1013B3CA8);
  }

  if (qword_101694EC0 != -1)
  {
    swift_once();
  }

  v43 = type metadata accessor for Logger();
  sub_1000076D4(v43, qword_10177C0F0);
  v44 = v20;
  (*(v21 + 16))(v25, a1, v20);
  v45 = Logger.logObject.getter();
  v46 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    v101 = a3;
    v48 = v47;
    v49 = swift_slowAlloc();
    v104 = v49;
    *v48 = 136446210;
    sub_10063F9D8(&qword_1016A62C0, &type metadata accessor for FMNServerInteractionController.FMNResponseFields);
    v50 = dispatch thunk of CustomStringConvertible.description.getter();
    v52 = v51;
    (*(v21 + 8))(v25, v44);
    v53 = sub_1000136BC(v50, v52, &v104);

    *(v48 + 4) = v53;
    _os_log_impl(&_mh_execute_header, v45, v46, "Product info check failed %{public}s", v48, 0xCu);
    sub_100007BAC(v49);
  }

  else
  {

    (*(v21 + 8))(v25, v44);
  }

  v54 = v102;
  if (qword_101694F58 != -1)
  {
    swift_once();
  }

  v55 = qword_10177C218;
  v56 = [objc_opt_self() sharedInstance];
  v57 = [v56 isInternalBuild];

  if (!v57 || (v58 = String._bridgeToObjectiveC()(), v59 = [v55 BOOLForKey:v58], v58, !v59))
  {
LABEL_20:
    v104 = 6;
    v105 = 0u;
    v106 = 0u;
    v107 = 267;
    v54(&v104);
    return sub_10000B3A8(&v104, &qword_1016A62A8, &qword_1013B3CA8);
  }

  v60 = Logger.logObject.getter();
  v61 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v60, v61))
  {
    v62 = swift_slowAlloc();
    *v62 = 0;
    _os_log_impl(&_mh_execute_header, v60, v61, "AccessoryHardcodedPairingEnabled: bypassing product info check failure", v62, 2u);
  }

  v63 = v100;
  sub_10074B008(v100);
  v64 = v97;
  sub_10119A0F4(v63, v97);
  if ((*(v98 + 48))(v64, 1, v99) == 1)
  {
    sub_10000B3A8(v64, &qword_101697268, &qword_101394FE0);
    goto LABEL_20;
  }

  v95 = v96[0];
  sub_10063F5C4(v64, v96[0], type metadata accessor for AccessoryProductInfo);
  v104 = sub_10119B27C();
  HIBYTE(v107) = 0;
  v54(&v104);
  sub_10000B3A8(&v104, &qword_1016A62A8, &qword_1013B3CA8);
  return sub_10063F77C(v95, type metadata accessor for AccessoryProductInfo);
}

id sub_10063CE5C(uint64_t a1)
{
  v2 = type metadata accessor for LocalizationUtility.Table();
  v250 = *(v2 - 8);
  v251 = v2;
  v3 = *(v250 + 64);
  __chkstk_darwin(v2);
  v249 = v242 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v9 = v242 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = (v242 - v10);
  v12 = sub_1000BC4D4(&qword_1016A62E0, &unk_1013B8C30);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = v242 - v14;
  v16 = type metadata accessor for AccessoryInfoResponseContent.Assets(0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v252 = v242 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1000BC4D4(&qword_1016A62E8, &qword_1013B3CB0);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v23 = v242 - v22;
  v24 = type metadata accessor for AccessoryInfoResponseContent.Configuration(0);
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  __chkstk_darwin(v24);
  v254 = v242 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for AccessoryInfoResponseContent(0);
  v29 = *(*(v28 - 8) + 64);
  v30 = __chkstk_darwin(v28);
  __chkstk_darwin(v30);
  v35 = v242 - v32;
  if (*(a1 + 16))
  {
    v253 = v34;
    v255 = v11;
    v36 = v16;
    v37 = v33;
    sub_10063F714(a1 + ((*(v31 + 80) + 32) & ~*(v31 + 80)), v242 - v32, type metadata accessor for AccessoryInfoResponseContent);
    sub_1000D2A70(&v35[v37[6]], v23, &qword_1016A62E8, &qword_1013B3CB0);
    if ((*(v25 + 48))(v23, 1, v24) == 1)
    {
      v38 = &qword_1016A62E8;
      v39 = &qword_1013B3CB0;
      v40 = v23;
    }

    else
    {
      v246 = v24;
      v42 = v254;
      sub_10063F5C4(v23, v254, type metadata accessor for AccessoryInfoResponseContent.Configuration);
      v247 = v37;
      sub_1000D2A70(&v35[v37[7]], v15, &qword_1016A62E0, &unk_1013B8C30);
      v43 = v36;
      if ((*(v17 + 48))(v15, 1, v36) != 1)
      {
        v45 = v15;
        v46 = v252;
        sub_10063F5C4(v45, v252, type metadata accessor for AccessoryInfoResponseContent.Assets);
        v47 = *(v35 + 10);
        if (v47 != 2)
        {
          v244 = v35[92];
          v243 = *(v35 + 22);
          if (qword_101694EC0 != -1)
          {
            goto LABEL_93;
          }

          while (1)
          {
            v48 = type metadata accessor for Logger();
            v49 = sub_1000076D4(v48, qword_10177C0F0);
            v245 = v35;
            v50 = v253;
            sub_10063F714(v35, v253, type metadata accessor for AccessoryInfoResponseContent);
            v242[1] = v49;
            v51 = Logger.logObject.getter();
            v52 = static os_log_type_t.default.getter();
            v53 = v9;
            if (os_log_type_enabled(v51, v52))
            {
              v54 = swift_slowAlloc();
              v55 = swift_slowAlloc();
              v257[0] = v55;
              *v54 = 136315138;
              v56 = sub_100753C94();
              v58 = v57;
              sub_10063F77C(v50, type metadata accessor for AccessoryInfoResponseContent);
              v59 = sub_1000136BC(v56, v58, v257);

              *(v54 + 4) = v59;
              _os_log_impl(&_mh_execute_header, v51, v52, "Product info content: %s", v54, 0xCu);
              sub_100007BAC(v55);
            }

            else
            {

              sub_10063F77C(v50, type metadata accessor for AccessoryInfoResponseContent);
            }

            v60 = v254;
            if (qword_101694F58 != -1)
            {
              swift_once();
            }

            v61 = qword_10177C218;
            v62 = [objc_opt_self() sharedInstance];
            v63 = [v62 isInternalBuild];

            if (v63)
            {
              v64 = String._bridgeToObjectiveC()();
              v65 = [v61 BOOLForKey:v64];
            }

            else
            {
              v65 = 0;
            }

            v66 = v245;
            v67 = [objc_allocWithZone(SPDiscoveredAccessoryProductInformation) init];
            v68 = v67;
            if (v66[8])
            {
              v69 = 0;
            }

            else
            {
              v69 = *v66;
            }

            [v67 setBeaconGroupVersion:v69];
            if (v65)
            {
              v70 = 1;
            }

            else
            {
              v70 = v66[32];
            }

            [v68 setEligibleForPairing:v70 & 1];
            [v68 setHidden:v66[36] & 1];
            [v68 setIsHELEAccessory:v66[33] & 1];
            [v68 setSupportBeaconGroupInfo:v66[35] & 1];
            [v68 setIsManagedAccessory:v66[34] & 1];
            v71 = *(v66 + 2);
            v72 = *(v66 + 3);
            v73 = String._bridgeToObjectiveC()();
            [v68 setFindmyProductId:v73];

            v74 = v60[2];
            v75 = v60[3];
            v76 = String._bridgeToObjectiveC()();
            [v68 setManufacturerName:v76];

            v77 = v60[4];
            v78 = v60[5];
            v79 = String._bridgeToObjectiveC()();
            [v68 setModelName:v79];

            if (v60[1])
            {
              v80 = *v60;
              v81 = String._bridgeToObjectiveC()();
            }

            else
            {
              v81 = 0;
            }

            v82 = v246;
            v248 = v68;
            [v68 setAppBundleIdentifier:v81];

            v83 = v255;
            sub_1000D2A70(v60 + v82[11], v255, &unk_101696AC0, &qword_101390A60);
            v84 = type metadata accessor for URL();
            v85 = *(v84 - 8);
            v86 = *(v85 + 48);
            v88 = 0;
            if (v86(v83, 1, v84) != 1)
            {
              URL._bridgeToObjectiveC()(v87);
              v88 = v89;
              (*(v85 + 8))(v83, v84);
            }

            [v248 setLowBatteryInfoURL:v88];

            sub_1000D2A70(v254 + v82[12], v53, &unk_101696AC0, &qword_101390A60);
            if (v86(v53, 1, v84) == 1)
            {
              v91 = 0;
            }

            else
            {
              URL._bridgeToObjectiveC()(v90);
              v91 = v92;
              (*(v85 + 8))(v53, v84);
            }

            v93 = v243 | (v244 << 32);
            v94 = v248;
            [v248 setDisableURL:v91];

            v95 = &v245[v247[8]];
            v96 = v254;
            if (*(v95 + 1))
            {
              v97 = *v95;
              v98 = *(v95 + 1);
            }

            v99 = String._bridgeToObjectiveC()();

            [v94 setVersion:v99];

            v100 = v246;
            v101 = v96 + v246[13];
            v102 = *v101;
            if (*(v101 + 8))
            {
              v102 = 0.0;
            }

            [v94 setTxPower:v102];
            v103 = v96 + v100[14];
            v104 = *v103;
            if (*(v103 + 8))
            {
              v104 = 20.0;
            }

            [v94 setRangeDistanceInMeters:v104];
            [v94 setCapabilities:{sub_10074BC38(v47 & 0xFFFFFFFF01010101, v93 & 0xFFFFFFFFFFLL)}];
            URL._bridgeToObjectiveC()(v105);
            v107 = v106;
            [v94 setDefaultHeroIcon:v106];

            URL._bridgeToObjectiveC()(v43[5]);
            v109 = v108;
            [v94 setDefaultListIcon:v108];

            URL._bridgeToObjectiveC()(v43[6]);
            v111 = v110;
            [v94 setDefaultHeroIcon2x:v110];

            URL._bridgeToObjectiveC()(v43[7]);
            v113 = v112;
            [v94 setDefaultListIcon2x:v112];

            URL._bridgeToObjectiveC()(v43[8]);
            v115 = v114;
            [v94 setDefaultHeroIcon3x:v114];

            URL._bridgeToObjectiveC()(v43[9]);
            v117 = v116;
            [v94 setDefaultListIcon3x:v116];

            v118 = v100[16];
            v119 = (v96 + v100[15]);
            v120 = *v119;
            v121 = v119[1];
            if (*(v96 + v118))
            {
              v122 = *(v96 + v118);
            }

            v123 = v96 + v100[19];
            v124 = *v123;
            v125 = *(v123 + 8);
            v126 = *(v123 + 16);
            if (v126)
            {
              v127 = -1.0;
            }

            else
            {
              v127 = v125;
            }

            if (v126)
            {
              v128 = -1.0;
            }

            else
            {
              v128 = v124;
            }

            v129 = v43[10];
            v244 = v43[12];
            v255 = v43[14];
            v253 = objc_allocWithZone(SPUnknownProductMetadata);

            v130 = String._bridgeToObjectiveC()();
            isa = Array._bridgeToObjectiveC()().super.isa;

            URL._bridgeToObjectiveC()(v132);
            v134 = v133;
            URL._bridgeToObjectiveC()(v244);
            v136 = v135;
            URL._bridgeToObjectiveC()(v255);
            v138 = v137;
            v139 = [v253 initWithTitle:v130 description:isa percentageX:v134 percentageY:v136 image:v137 image2x:v128 image3x:v127];

            [v248 setLearnModeMetadata:v139];
            v140 = v100[18];
            v141 = (v96 + v100[17]);
            v142 = *v141;
            v143 = v141[1];
            if (*(v96 + v140))
            {
              v144 = *(v96 + v140);
            }

            v145 = v96 + v100[20];
            v146 = *v145;
            v147 = *(v145 + 8);
            v148 = *(v145 + 16);
            if (v148)
            {
              v149 = -1.0;
            }

            else
            {
              v149 = v147;
            }

            if (v148)
            {
              v150 = -1.0;
            }

            else
            {
              v150 = v146;
            }

            v151 = v43[11];
            v152 = v43[13];
            v153 = v43[15];
            v154 = objc_allocWithZone(SPUnknownProductMetadata);

            v155 = String._bridgeToObjectiveC()();
            v156 = Array._bridgeToObjectiveC()().super.isa;

            v41 = v248;
            URL._bridgeToObjectiveC()(v157);
            v159 = v158;
            URL._bridgeToObjectiveC()(v160);
            v162 = v161;
            URL._bridgeToObjectiveC()(v163);
            v165 = v164;
            v166 = [v154 initWithTitle:v155 description:v156 percentageX:v159 percentageY:v162 image:v164 image2x:v150 image3x:v149];

            [v41 setDisableMetadata:v166];
            v35 = v245;
            v167 = *&v245[v247[11]];
            if (v167)
            {
              v168 = *(v167 + 16);
              if (v168)
              {
                v257[0] = _swiftEmptyArrayStorage;
                specialized ContiguousArray.reserveCapacity(_:)();
                v169 = (v167 + 48);
                do
                {
                  v172 = *(v169 - 16);
                  v173 = *(v169 - 1);
                  v174 = *v169;
                  v176 = v169[1];
                  v175 = v169[2];
                  v177 = v169[4];
                  v253 = v169[3];
                  LODWORD(v255) = *(v169 + 40);
                  v178 = objc_allocWithZone(SPAccessoryLayoutTemplate);

                  v179 = [v178 init];
                  [v179 setPartIdentifier:v172];
                  v180 = String._bridgeToObjectiveC()();
                  [v179 setPartType:v180];

                  v181 = String._bridgeToObjectiveC()();
                  [v179 setPartName:v181];

                  if (v177)
                  {

                    v170 = String._bridgeToObjectiveC()();
                  }

                  else
                  {
                    v170 = 0;
                  }

                  v169 += 8;
                  [v179 setPartSymbol:v170];

                  [v179 setIsPrimary:v255 & 1];
                  specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
                  v171 = *(v257[0] + 16);
                  specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
                  specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                  specialized ContiguousArray._endMutation()();
                  --v168;
                }

                while (v168);
                v35 = v245;
                v41 = v248;
              }

              sub_100008BB8(0, &qword_1016A62F0, SPAccessoryLayoutTemplate_ptr);
              v182 = Array._bridgeToObjectiveC()().super.isa;

              [v41 setLayoutTemplate:v182];
            }

            v183 = v254;
            if (*(v254 + 88))
            {
              v184 = Logger.logObject.getter();
              v185 = static os_log_type_t.default.getter();
              if (os_log_type_enabled(v184, v185))
              {
                v186 = swift_slowAlloc();
                *v186 = 0;
                _os_log_impl(&_mh_execute_header, v184, v185, "No defaultRole provided. Fallback to custom role.", v186, 2u);
              }

              v188 = v249;
              v187 = v250;
              v189 = v251;
              (*(v250 + 104))(v249, enum case for LocalizationUtility.Table.default(_:), v251);
              static LocalizationUtility.localizedString(key:table:)();
              (*(v187 + 8))(v188, v189);
              v190 = objc_allocWithZone(SPBeaconRole);
              v191 = String._bridgeToObjectiveC()();

              v192 = String._bridgeToObjectiveC()();
              v193 = [v190 initWithRoleId:999 role:v191 roleEmoji:v192];

              [v41 setDefaultRole:v193];
              sub_10063F77C(v252, type metadata accessor for AccessoryInfoResponseContent.Assets);
              sub_10063F77C(v183, type metadata accessor for AccessoryInfoResponseContent.Configuration);
              goto LABEL_9;
            }

            v35 = *(v254 + 80);
            if (qword_101694940 != -1)
            {
              swift_once();
            }

            v194 = *(qword_10177B348 + 40);
            OS_dispatch_queue.sync<A>(execute:)();
            v47 = v257[0];
            v195 = sub_101073D24(v257[0]);

            v196 = *(v195 + 16);
            if (!v196)
            {
              break;
            }

            v9 = 0;
            v43 = (v195 + 32);
            while (v9 < *(v195 + 16))
            {
              v204 = *&v43[8 * v9++ + 6];
              v206 = *(v204 + 16);
              v205 = v204 + 16;
              v207 = v206 + 1;
              while (--v207)
              {
                v208 = (v205 + 40);
                v209 = *(v205 + 16);
                v205 += 40;
                if (v209 == v35)
                {
                  v197 = *(v208 - 2);
                  v198 = *(v208 - 1);
                  v199 = *v208;
                  v200 = v208[1];
                  v201 = objc_allocWithZone(SPBeaconRole);

                  v47 = String._bridgeToObjectiveC()();
                  v202 = String._bridgeToObjectiveC()();
                  v203 = [v201 initWithRoleId:v35 role:v47 roleEmoji:v202];

                  [v248 setDefaultRole:v203];
                  break;
                }
              }

              if (v9 == v196)
              {
                goto LABEL_81;
              }
            }

            __break(1u);
LABEL_93:
            swift_once();
          }

LABEL_81:

          v35 = v245;
          v210 = &v245[v247[9]];
          v211 = v210[1];
          v212 = v254;
          if (v211)
          {
            v214 = v210[4];
            v213 = v210[5];
            v215 = v210[2];
            v216 = v210[3];
            v257[0] = *v210;
            v257[1] = v211;
            v255 = v215;
            v257[2] = v215;
            v257[3] = v216;
            v257[4] = v214;
            v257[5] = v213;

            v217 = Logger.logObject.getter();
            v218 = static os_log_type_t.info.getter();

            if (os_log_type_enabled(v217, v218))
            {
              v219 = swift_slowAlloc();
              v253 = v214;
              v220 = v219;
              v221 = swift_slowAlloc();
              v256 = v221;
              *v220 = 136315138;
              v222 = sub_100751F34();
              v224 = sub_1000136BC(v222, v223, &v256);

              *(v220 + 4) = v224;
              _os_log_impl(&_mh_execute_header, v217, v218, "Received public keys from server: %s", v220, 0xCu);
              sub_100007BAC(v221);

              v212 = v254;
            }

            v225 = Data.init(base64Encoded:options:)();
            v227 = 0;
            if (v226 >> 60 != 15)
            {
              v228 = v225;
              v229 = v226;
              v227 = Data._bridgeToObjectiveC()().super.isa;
              sub_100006654(v228, v229);
            }

            [v248 setEncryptionKeyE1:v227];

            v230 = Data.init(base64Encoded:options:)();
            v232 = 0;
            if (v231 >> 60 != 15)
            {
              v233 = v230;
              v234 = v231;
              v232 = Data._bridgeToObjectiveC()().super.isa;
              sub_100006654(v233, v234);
            }

            [v248 setEncryptionKeyE2:v232];

            v235 = Data.init(base64Encoded:options:)();
            v237 = 0;
            if (v236 >> 60 != 15)
            {
              v238 = v235;
              v239 = v236;
              v237 = Data._bridgeToObjectiveC()().super.isa;
              sub_100006654(v238, v239);
            }

            v240 = v248;
            [v248 setVerificationKeyS2:v237];

            sub_10063F77C(v252, type metadata accessor for AccessoryInfoResponseContent.Assets);
            v241 = v212;
            v41 = v240;
            sub_10063F77C(v241, type metadata accessor for AccessoryInfoResponseContent.Configuration);
            v35 = v245;
          }

          else
          {
            sub_10063F77C(v252, type metadata accessor for AccessoryInfoResponseContent.Assets);
            sub_10063F77C(v212, type metadata accessor for AccessoryInfoResponseContent.Configuration);
            v41 = v248;
          }

          goto LABEL_9;
        }

        sub_10063F77C(v46, type metadata accessor for AccessoryInfoResponseContent.Assets);
        sub_10063F77C(v42, type metadata accessor for AccessoryInfoResponseContent.Configuration);
LABEL_8:
        v41 = 0;
LABEL_9:
        sub_10063F77C(v35, type metadata accessor for AccessoryInfoResponseContent);
        return v41;
      }

      sub_10063F77C(v42, type metadata accessor for AccessoryInfoResponseContent.Configuration);
      v38 = &qword_1016A62E0;
      v39 = &unk_1013B8C30;
      v40 = v15;
    }

    sub_10000B3A8(v40, v38, v39);
    goto LABEL_8;
  }

  return 0;
}

uint64_t sub_10063E4F8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [a2 identifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  swift_beginAccess();
  v12 = a2;
  v13 = *(a1 + 48);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(a1 + 48);
  *(a1 + 48) = 0x8000000000000000;
  sub_100FFEFD4(v12, v10, isUniquelyReferenced_nonNull_native);
  (*(v7 + 8))(v10, v6);
  *(a1 + 48) = v16;
  swift_endAccess();
  swift_beginAccess();
  *a3 = *(a1 + 32);
}

uint64_t sub_10063E678(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_1000BC4D4(&unk_1016A6020, &unk_101393420);
    sub_1000041A4(&qword_10169A0B0, &unk_1016A6020, &unk_101393420);
    result = Set.Iterator.init(_cocoa:)();
    v1 = v16;
    v3 = v17;
    v4 = v18;
    v5 = v19;
    v6 = v20;
  }

  else
  {
    v7 = -1 << *(a1 + 32);
    v3 = a1 + 56;
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(a1 + 56);

    v5 = 0;
  }

  while (v1 < 0)
  {
    if (!__CocoaSet.Iterator.next()())
    {
      return sub_1000128F8();
    }

    sub_1000BC4D4(&unk_1016A6020, &unk_101393420);
    swift_dynamicCast();
    v12 = v5;
    v13 = v6;
    if (!v21)
    {
      return sub_1000128F8();
    }

LABEL_17:
    XPCSession.proxy.getter();
    if (v21)
    {
      v15 = _convertErrorToNSError(_:)();
      [v21 accessoryDiscoveryError:v15];

      swift_unknownObjectRelease();
    }

    v5 = v12;
    v6 = v13;
  }

  v10 = v5;
  v11 = v6;
  v12 = v5;
  if (v6)
  {
LABEL_13:
    v13 = (v11 - 1) & v11;
    v14 = *(*(v1 + 48) + ((v12 << 9) | (8 * __clz(__rbit64(v11)))));

    if (!v14)
    {
      return sub_1000128F8();
    }

    goto LABEL_17;
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= ((v4 + 64) >> 6))
    {
      return sub_1000128F8();
    }

    v11 = *(v3 + 8 * v12);
    ++v10;
    if (v11)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

void sub_10063E8C4()
{
  v1 = *(v0 + 16);
  sub_1000BC4D4(&unk_10169A0A0, &unk_1013B3B60);
  OS_dispatch_queue.sync<A>(execute:)();
}

void sub_10063E9D0()
{
  if (!qword_10169AC00)
  {
    type metadata accessor for MACAddress();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_10169AC00);
    }
  }
}

uint64_t sub_10063EA28@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [*(a3 + OBJC_IVAR____TtC12searchpartyd10Peripheral_underlyingObject) identifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  swift_beginAccess();
  v14 = sub_1007AA0E0(v12);
  (*(v9 + 8))(v12, v8);
  swift_endAccess();
  v15 = *a1;
  *a1 = v14;

  swift_beginAccess();
  *a4 = *(a2 + 32);
}

uint64_t sub_10063EB98(uint64_t a1, uint64_t a2, SEL *a3)
{
  v4 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_1000BC4D4(&unk_1016A6020, &unk_101393420);
    sub_1000041A4(&qword_10169A0B0, &unk_1016A6020, &unk_101393420);
    result = Set.Iterator.init(_cocoa:)();
    v4 = v19;
    v6 = v20;
    v7 = v21;
    v8 = v22;
    v9 = v23;
  }

  else
  {
    v10 = -1 << *(a1 + 32);
    v6 = a1 + 56;
    v7 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(a1 + 56);

    v8 = 0;
  }

  while (v4 < 0)
  {
    if (!__CocoaSet.Iterator.next()())
    {
      return sub_1000128F8();
    }

    sub_1000BC4D4(&unk_1016A6020, &unk_101393420);
    swift_dynamicCast();
    v15 = v8;
    v16 = v9;
    if (!v24)
    {
      return sub_1000128F8();
    }

LABEL_17:
    XPCSession.proxy.getter();
    if (v24)
    {
      [v24 *a3];
      swift_unknownObjectRelease();
    }

    v8 = v15;
    v9 = v16;
  }

  v13 = v8;
  v14 = v9;
  v15 = v8;
  if (v9)
  {
LABEL_13:
    v16 = (v14 - 1) & v14;
    v17 = *(*(v4 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));

    if (!v17)
    {
      return sub_1000128F8();
    }

    goto LABEL_17;
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= ((v7 + 64) >> 6))
    {
      return sub_1000128F8();
    }

    v14 = *(v6 + 8 * v15);
    ++v13;
    if (v14)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10063EE30@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = *a1;
  v6 = a1[1];
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;

  return sub_100017D5C(v5, v6);
}

void sub_10063EEA0(BOOL *a1@<X8>)
{
  if (*(v1 + 72))
  {
    *a1 = 0;
  }

  else
  {
    *a1 = *(v1 + 80) == 0;
  }
}

uint64_t sub_10063EEE4(uint64_t a1)
{
  v2 = sub_1000BC4D4(&qword_1016A62F8, &qword_1013B3CC8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v19 - v5;
  v20 = a1;
  *(swift_allocObject() + 16) = &off_101609910;

  static Subscribers.Demand.unlimited.getter();
  sub_1000BC4D4(&qword_1016993D0, &qword_101391970);
  v19[2] = type metadata accessor for Peripheral();
  sub_1000041A4(&qword_1016993D8, &qword_1016993D0, &qword_101391970);
  Publisher.flatMap<A, B>(maxPublishers:_:)();

  sub_1000041A4(&unk_1016A6300, &qword_1016A62F8, &qword_1013B3CC8);
  v7 = Publisher.eraseToAnyPublisher()();
  v8 = v3 + 8;
  v9 = *(v3 + 8);
  v10 = v2;
  v9(v6, v2);
  v20 = v7;
  *(swift_allocObject() + 16) = &off_101609940;

  static Subscribers.Demand.unlimited.getter();
  Publisher.flatMap<A, B>(maxPublishers:_:)();

  v11 = Publisher.eraseToAnyPublisher()();

  v19[1] = v8;
  v9(v6, v10);
  v12 = qword_101694EC0;

  if (v12 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_1000076D4(v13, qword_10177C0F0);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "AccessoryDiscoverySession Posh", v16, 2u);
  }

  v20 = v11;
  static Subscribers.Demand.unlimited.getter();
  Publisher.flatMap<A, B>(maxPublishers:_:)();

  v17 = Publisher.eraseToAnyPublisher()();

  v9(v6, v10);
  return v17;
}

id sub_10063F3D4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = *(v2 + 16);
  [v5 setProductInformation:*a1];
  *a2 = v5;

  return v5;
}

uint64_t sub_10063F430(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_100014744;

  return sub_10063ABB0(a1, v4, v5, v6, v7, v8, v9);
}

unint64_t sub_10063F51C()
{
  result = qword_1016A62C8;
  if (!qword_1016A62C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A62C8);
  }

  return result;
}

unint64_t sub_10063F570()
{
  result = qword_1016A62D0;
  if (!qword_1016A62D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A62D0);
  }

  return result;
}

uint64_t sub_10063F5C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10063F638(uint64_t a1)
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
  v11[1] = sub_100014650;

  return sub_100634368(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_10063F714(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10063F77C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10063F824(uint64_t *a1)
{
  v3 = *(sub_1000BC4D4(&qword_1016A40D0, &unk_10138BE70) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_100630AC8(a1, v1 + v4, v5);
}

uint64_t sub_10063F8E8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *a1;
  result = sub_100A255C8(v4);
  *a2 = result;
  return result;
}

uint64_t sub_10063F9D8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10063FA20@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  *a1 = *(v1 + 32);
}

uint64_t sub_10063FAB4()
{
  v1 = *(v0 + 72);
  *(v0 + 72) = 0;

  v2 = *(v0 + 80);
  *(v0 + 80) = 0;
}

void sub_10063FB48()
{
  v0 = type metadata accessor for Date();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v31 = &_swiftEmptyDictionarySingleton;
  sub_100FFACA0(1702195828, 0xE400000000000000, 0xD00000000000001BLL, 0x800000010134EA20, isUniquelyReferenced_nonNull_native);
  v6 = v31;
  v7 = [objc_opt_self() currentDevice];
  if (v7)
  {
    v8 = v7;
    v9 = [v7 serverFriendlyDescription];

    if (v9)
    {
      v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = v11;

      v13 = swift_isUniquelyReferenced_nonNull_native();
      v31 = v6;
      sub_100FFACA0(v10, v12, 0xD000000000000011, 0x800000010134EA40, v13);
      v14 = v31;
      Date.init()();
      v15 = Date.epoch.getter();
      (*(v1 + 8))(v4, v0);
      v31 = v15;
      v16 = dispatch thunk of CustomStringConvertible.description.getter();
      v18 = v17;
      v19 = swift_isUniquelyReferenced_nonNull_native();
      v31 = v14;
      sub_100FFACA0(v16, v18, 0xD000000000000015, 0x800000010134EA60, v19);
      v20 = v31;
      v31 = 1;
      v21 = dispatch thunk of CustomStringConvertible.description.getter();
      v23 = v22;
      v24 = swift_isUniquelyReferenced_nonNull_native();
      v31 = v20;
      sub_100FFACA0(v21, v23, 0xD000000000000013, 0x800000010134EA80, v24);
      v25 = v31;
      v26 = sub_1008D9A78();
      v28 = v27;
      v29 = swift_isUniquelyReferenced_nonNull_native();
      v31 = v25;
      sub_100FFACA0(v26, v28, 0x6567412D72657355, 0xEA0000000000746ELL, v29);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_10063FE14(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_1016A64B8, &qword_1013B4100);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v14 - v8;
  v10 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_100646528();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v16 = *v3;
  v15 = 0;
  sub_10064657C();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (!v2)
  {
    v11 = type metadata accessor for KeyDropDeleteRequest.DeleteRequestContent();
    v12 = *(v11 + 20);
    LOBYTE(v16) = 1;
    type metadata accessor for UUID();
    sub_100646624(&qword_101698330, &type metadata accessor for UUID);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v16) = *(v3 + *(v11 + 24));
    v15 = 2;
    sub_1001E8200();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_10064002C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v4 = type metadata accessor for UUID();
  v27 = *(v4 - 8);
  v5 = *(v27 + 64);
  __chkstk_darwin(v4);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000BC4D4(&qword_1016A64D0, &qword_1013B4108);
  v28 = *(v8 - 8);
  v29 = v8;
  v9 = *(v28 + 64);
  __chkstk_darwin(v8);
  v11 = v24 - v10;
  v12 = type metadata accessor for KeyDropDeleteRequest.DeleteRequestContent();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[3];
  v17 = a1[4];
  v30 = a1;
  sub_1000035D0(a1, v16);
  sub_100646528();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100007BAC(v30);
  }

  v25 = v12;
  v18 = v15;
  v19 = v27;
  v33 = 0;
  sub_1006465D0();
  v20 = v29;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v21 = v32;
  *v18 = v31;
  *(v18 + 1) = v21;
  v24[1] = v21;
  LOBYTE(v31) = 1;
  sub_100646624(&qword_101698300, &type metadata accessor for UUID);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v19 + 32))(&v18[*(v25 + 20)], v7, v4);
  v33 = 2;
  sub_10064666C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v28 + 8))(v11, v20);
  v22 = v26;
  v18[*(v25 + 24)] = v31;
  sub_1006466C0(v18, v22);
  sub_100007BAC(v30);
  return sub_1006461B8(v18);
}

uint64_t sub_100640430@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x526873696C627570 && a2 == 0xED00006E6F736165)
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

uint64_t sub_1006404C0(uint64_t a1)
{
  v2 = sub_100646724();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1006404FC(uint64_t a1)
{
  v2 = sub_100646724();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100640538@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1000BC4D4(&qword_1016A64E8, &qword_1013B4110);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_100646724();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100007BAC(a1);
  }

  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  v13 = v12;
  (*(v6 + 8))(v9, v5);
  result = sub_100007BAC(a1);
  *a2 = v11;
  a2[1] = v13;
  return result;
}

uint64_t sub_1006406B4(void *a1)
{
  v3 = sub_1000BC4D4(&qword_1016A64F8, &qword_1013B4118);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_100646724();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_1006407F0()
{
  v1 = 0x64496572616873;
  if (*v0 != 1)
  {
    v1 = 1701869940;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6F43746E65696C63;
  }
}

uint64_t sub_100640850@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100646AC0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100640878(uint64_t a1)
{
  v2 = sub_100646528();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1006408B4(uint64_t a1)
{
  v2 = sub_100646528();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100640920(uint64_t a1)
{
  v2 = sub_1006464D4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10064095C(uint64_t a1)
{
  v2 = sub_1006464D4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100640998@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = sub_1000BC4D4(&qword_1016A64A8, &qword_1013B40F8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v13 - v8;
  v10 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_1006464D4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100007BAC(a1);
  }

  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v6 + 8))(v9, v5);
  result = sub_100007BAC(a1);
  *a2 = v11 & 1;
  return result;
}

uint64_t sub_100640AFC(void *a1)
{
  v3 = sub_1000BC4D4(&qword_1016A6500, &qword_1013B4120);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_1006464D4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_100640C34(uint64_t a1, char a2, char a3)
{
  *(v4 + 145) = a3;
  *(v4 + 144) = a2;
  *(v4 + 56) = a1;
  *(v4 + 64) = v3;
  v5 = type metadata accessor for UUID();
  *(v4 + 72) = v5;
  v6 = *(v5 - 8);
  *(v4 + 80) = v6;
  v7 = *(v6 + 64) + 15;
  *(v4 + 88) = swift_task_alloc();
  *(v4 + 96) = swift_task_alloc();

  return _swift_task_switch(sub_100640D08, v3, 0);
}

uint64_t sub_100640D08()
{
  v41 = v0;
  if (qword_1016954C0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 96);
  v3 = *(v0 + 72);
  v2 = *(v0 + 80);
  v4 = *(v0 + 56);
  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_10177CDD0);
  v6 = *(v2 + 16);
  v6(v1, v4, v3);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 96);
  v12 = *(v0 + 72);
  v11 = *(v0 + 80);
  if (v9)
  {
    v39 = v6;
    v13 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v40[0] = v38;
    *v13 = 141558275;
    *(v13 + 4) = 1752392040;
    *(v13 + 12) = 2081;
    sub_100646624(&qword_101696930, &type metadata accessor for UUID);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    (*(v11 + 8))(v10, v12);
    v17 = sub_1000136BC(v14, v16, v40);

    *(v13 + 14) = v17;
    _os_log_impl(&_mh_execute_header, v7, v8, "Deleting share for id: %{private,mask.hash}s.", v13, 0x16u);
    sub_100007BAC(v38);

    v6 = v39;
  }

  else
  {

    (*(v11 + 8))(v10, v12);
  }

  v18 = *(v0 + 88);
  v19 = *(v0 + 144);
  v20 = *(v0 + 145);
  v6(v18, *(v0 + 56), *(v0 + 72));
  v21 = sub_100645CD8(v18, v19, v20);
  *(v0 + 104) = v21;
  *(v0 + 112) = v22;
  *(v0 + 120) = v23;
  v24 = v21;
  v25 = v22;
  v26 = v23;

  sub_100017D5C(v25, v26);
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.debug.getter();

  sub_100016590(v25, v26);
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v40[0] = v30;
    *v29 = 136315138;
    v31 = sub_10064140C();
    if (v32)
    {
      v33 = v32;
    }

    else
    {
      v31 = 7104878;
      v33 = 0xE300000000000000;
    }

    v34 = sub_1000136BC(v31, v33, v40);

    *(v29 + 4) = v34;
    _os_log_impl(&_mh_execute_header, v27, v28, "KeyDropDeleteRequest: %s", v29, 0xCu);
    sub_100007BAC(v30);
  }

  *(v0 + 40) = &type metadata for KeyDropDeleteRequest;
  *(v0 + 48) = sub_1006460C4();
  *(v0 + 16) = v24;
  *(v0 + 24) = v25;
  *(v0 + 32) = v26;

  sub_100017D5C(v25, v26);
  v35 = swift_task_alloc();
  *(v0 + 128) = v35;
  *v35 = v0;
  v35[1] = sub_1006411A4;
  v36 = *(v0 + 64);

  return sub_100642D20(v0 + 16, 3);
}

uint64_t sub_1006411A4(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 128);
  v6 = *v2;
  *(*v2 + 136) = v1;

  if (v1)
  {
    v7 = *(v4 + 64);
    v8 = sub_10064137C;
  }

  else
  {
    v9 = *(v4 + 64);
    *(v4 + 146) = a1 & 1;
    sub_100007BAC((v4 + 16));
    v8 = sub_1006412E8;
    v7 = v9;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_1006412E8()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);
  v4 = *(v0 + 96);
  v3 = *(v0 + 104);
  v5 = *(v0 + 88);

  sub_100016590(v1, v2);

  v6 = *(v0 + 8);
  v7 = *(v0 + 146);

  return v6(v7);
}

uint64_t sub_10064137C()
{
  v1 = v0[14];
  v2 = v0[15];
  v3 = v0[13];

  sub_100016590(v1, v2);
  sub_100007BAC(v0 + 2);
  v4 = v0[17];
  v6 = v0[11];
  v5 = v0[12];

  v7 = v0[1];

  return v7(0);
}

uint64_t sub_10064140C()
{
  v0 = type metadata accessor for String.Encoding();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  static String.Encoding.utf8.getter();
  result = String.init(data:encoding:)();
  if (!v3)
  {
    v4 = result;
    if (qword_1016954C0 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_1000076D4(v5, qword_10177CDD0);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "Empty description for request body.", v8, 2u);
    }

    return v4;
  }

  return result;
}

uint64_t sub_100641568(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 80) = a2;
  *(v4 + 88) = v3;
  *(v4 + 176) = a3;
  *(v4 + 72) = a1;
  v5 = type metadata accessor for FMNServerInteractionController.FMNResponseFields();
  *(v4 + 96) = v5;
  v6 = *(v5 - 8);
  *(v4 + 104) = v6;
  v7 = *(v6 + 64) + 15;
  *(v4 + 112) = swift_task_alloc();
  *(v4 + 120) = swift_task_alloc();
  *(v4 + 128) = swift_task_alloc();

  return _swift_task_switch(sub_100641648, v3, 0);
}

uint64_t sub_100641648()
{
  v1 = *(v0 + 88);
  v2 = *(v1 + 112);
  if (v2 && (v3 = *(v1 + 120), (v4 = v2()) != 0))
  {
    *(v0 + 136) = v4;
    v5 = *(v0 + 80);
    v6 = v5[3];
    v7 = v5[4];
    v8 = sub_1000035D0(v5, v6);
    *(v0 + 40) = v6;
    *(v0 + 48) = *(v7 + 8);
    v9 = sub_1000280DC((v0 + 16));
    (*(*(v6 - 8) + 16))(v9, v8, v6);

    v10 = swift_task_alloc();
    *(v0 + 144) = v10;
    *v10 = v0;
    v10[1] = sub_1006417E4;
    v11 = *(v0 + 128);

    return sub_1004E682C(v11, v0 + 16);
  }

  else
  {
    v13 = swift_task_alloc();
    *(v0 + 160) = v13;
    *v13 = v0;
    v13[1] = sub_100641ED8;
    v14 = *(v0 + 88);
    v15 = *(v0 + 176);

    return sub_1012588A0(v15);
  }
}

uint64_t sub_1006417E4()
{
  v2 = *v1;
  v3 = (*v1)[18];
  v8 = *v1;
  (*v1)[19] = v0;

  v4 = v2[17];
  if (v0)
  {
    v5 = v2[11];

    v6 = sub_100646BE4;
  }

  else
  {
    v5 = v2[11];

    sub_100007BAC(v2 + 2);
    v6 = sub_100641918;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100641918()
{
  v68 = v0;
  if (qword_1016954C8 != -1)
  {
    swift_once();
  }

  if (qword_1016954C0 != -1)
  {
    swift_once();
  }

  v2 = v0[15];
  v1 = v0[16];
  v4 = v0[12];
  v3 = v0[13];
  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_10177CDD0);
  v6 = *(v3 + 16);
  v6(v2, v1, v4);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[15];
  v12 = v0[12];
  v11 = v0[13];
  if (v9)
  {
    v65 = v6;
    v13 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    v67[0] = v64;
    *v13 = 136315138;
    sub_100646624(&qword_1016A62C0, &type metadata accessor for FMNServerInteractionController.FMNResponseFields);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    v17 = v12;
    v18 = *(v11 + 8);
    v18(v10, v17);
    v19 = sub_1000136BC(v14, v16, v67);

    *(v13 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v7, v8, "Response value is %s", v13, 0xCu);
    sub_100007BAC(v64);

    v6 = v65;
  }

  else
  {

    v20 = v12;
    v18 = *(v11 + 8);
    v18(v10, v20);
  }

  v6(v0[14], v0[16], v0[12]);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.info.getter();
  v23 = os_log_type_enabled(v21, v22);
  v24 = v0[14];
  if (v23)
  {
    v25 = swift_slowAlloc();
    v67[0] = swift_slowAlloc();
    *v25 = 136446466;
    *(v25 + 4) = sub_1000136BC(0xD000000000000023, 0x800000010135BB90, v67);
    *(v25 + 12) = 2082;
    v26 = FMNServerInteractionController.FMNResponseFields.responseHeaders.getter();
    v66 = v18;
    if (*(v26 + 16) && (v27 = sub_100771D58(0xD000000000000014, 0x800000010135BB50), (v28 & 1) != 0))
    {
      v29 = (*(v26 + 56) + 16 * v27);
      v31 = *v29;
      v30 = v29[1];
    }

    else
    {
      v31 = 0;
      v30 = 0;
    }

    v35 = v0[13];
    v34 = v0[14];
    v36 = v0[12];

    v0[7] = v31;
    v0[8] = v30;
    sub_1000BC4D4(&qword_1016A0AC0, &unk_1013926A0);
    v37 = String.init<A>(describing:)();
    v39 = v38;
    v40 = v36;
    v18 = v66;
    v66(v34, v40);
    v41 = sub_1000136BC(v37, v39, v67);

    *(v25 + 14) = v41;
    swift_arrayDestroy();
  }

  else
  {
    v32 = v0[12];
    v33 = v0[13];

    v18(v24, v32);
  }

  v42 = v0[19];
  v43 = v0[16];
  sub_101259EC4();
  if (v42)
  {
    v45 = v0[16];
    v44 = v0[17];
    v46 = v0[12];
    v47 = v0[13];

    v18(v45, v46);
    v56 = v0[15];
    v55 = v0[16];
    v57 = v0[14];
  }

  else
  {
    v48 = v0[16];
    v49 = v0[9];
    type metadata accessor for KeyDropDownloadKeysMetadataResponse(0);
    v50 = FMNServerInteractionController.FMNResponseFields.data.getter();
    v52 = v51;
    sub_100646624(&qword_1016A63D8, type metadata accessor for KeyDropDownloadKeysMetadataResponse);
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    v54 = v0[16];
    v53 = v0[17];
    v61 = v0[14];
    v60 = v0[15];
    v62 = v0[12];
    v63 = v0[13];

    sub_100016590(v50, v52);
    v18(v54, v62);
  }

  v58 = v0[1];

  return v58();
}

uint64_t sub_100641ED8(uint64_t a1)
{
  v2 = *(*v1 + 160);
  v3 = *(*v1 + 88);
  v5 = *v1;
  *(*v1 + 168) = a1;

  return _swift_task_switch(sub_100641FF0, v3, 0);
}

uint64_t sub_100641FF0()
{
  v0[17] = v0[21];
  v1 = v0[10];
  v2 = v1[3];
  v3 = v1[4];
  v4 = sub_1000035D0(v1, v2);
  v0[5] = v2;
  v0[6] = *(v3 + 8);
  v5 = sub_1000280DC(v0 + 2);
  (*(*(v2 - 8) + 16))(v5, v4, v2);

  v6 = swift_task_alloc();
  v0[18] = v6;
  *v6 = v0;
  v6[1] = sub_1006417E4;
  v7 = v0[16];

  return sub_1004E682C(v7, (v0 + 2));
}

uint64_t sub_1006420FC(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 80) = a2;
  *(v4 + 88) = v3;
  *(v4 + 176) = a3;
  *(v4 + 72) = a1;
  v5 = type metadata accessor for FMNServerInteractionController.FMNResponseFields();
  *(v4 + 96) = v5;
  v6 = *(v5 - 8);
  *(v4 + 104) = v6;
  v7 = *(v6 + 64) + 15;
  *(v4 + 112) = swift_task_alloc();
  *(v4 + 120) = swift_task_alloc();
  *(v4 + 128) = swift_task_alloc();

  return _swift_task_switch(sub_1006421DC, v3, 0);
}

uint64_t sub_1006421DC()
{
  v1 = *(v0 + 88);
  v2 = *(v1 + 112);
  if (v2 && (v3 = *(v1 + 120), (v4 = v2()) != 0))
  {
    *(v0 + 136) = v4;
    v5 = *(v0 + 80);
    v6 = v5[3];
    v7 = v5[4];
    v8 = sub_1000035D0(v5, v6);
    *(v0 + 40) = v6;
    *(v0 + 48) = *(v7 + 8);
    v9 = sub_1000280DC((v0 + 16));
    (*(*(v6 - 8) + 16))(v9, v8, v6);

    v10 = swift_task_alloc();
    *(v0 + 144) = v10;
    *v10 = v0;
    v10[1] = sub_100642378;
    v11 = *(v0 + 128);

    return sub_1004E682C(v11, v0 + 16);
  }

  else
  {
    v13 = swift_task_alloc();
    *(v0 + 160) = v13;
    *v13 = v0;
    v13[1] = sub_100642AFC;
    v14 = *(v0 + 88);
    v15 = *(v0 + 176);

    return sub_1012588A0(v15);
  }
}

uint64_t sub_100642378()
{
  v2 = *v1;
  v3 = (*v1)[18];
  v8 = *v1;
  (*v1)[19] = v0;

  v4 = v2[17];
  if (v0)
  {
    v5 = v2[11];

    v6 = sub_100642A6C;
  }

  else
  {
    v5 = v2[11];

    sub_100007BAC(v2 + 2);
    v6 = sub_1006424AC;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1006424AC()
{
  v68 = v0;
  if (qword_1016954C8 != -1)
  {
    swift_once();
  }

  if (qword_1016954C0 != -1)
  {
    swift_once();
  }

  v2 = v0[15];
  v1 = v0[16];
  v4 = v0[12];
  v3 = v0[13];
  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_10177CDD0);
  v6 = *(v3 + 16);
  v6(v2, v1, v4);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[15];
  v12 = v0[12];
  v11 = v0[13];
  if (v9)
  {
    v65 = v6;
    v13 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    v67[0] = v64;
    *v13 = 136315138;
    sub_100646624(&qword_1016A62C0, &type metadata accessor for FMNServerInteractionController.FMNResponseFields);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    v17 = v12;
    v18 = *(v11 + 8);
    v18(v10, v17);
    v19 = sub_1000136BC(v14, v16, v67);

    *(v13 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v7, v8, "Response value is %s", v13, 0xCu);
    sub_100007BAC(v64);

    v6 = v65;
  }

  else
  {

    v20 = v12;
    v18 = *(v11 + 8);
    v18(v10, v20);
  }

  v6(v0[14], v0[16], v0[12]);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.info.getter();
  v23 = os_log_type_enabled(v21, v22);
  v24 = v0[14];
  if (v23)
  {
    v25 = swift_slowAlloc();
    v67[0] = swift_slowAlloc();
    *v25 = 136446466;
    *(v25 + 4) = sub_1000136BC(0xD000000000000017, 0x800000010135BB70, v67);
    *(v25 + 12) = 2082;
    v26 = FMNServerInteractionController.FMNResponseFields.responseHeaders.getter();
    v66 = v18;
    if (*(v26 + 16) && (v27 = sub_100771D58(0xD000000000000014, 0x800000010135BB50), (v28 & 1) != 0))
    {
      v29 = (*(v26 + 56) + 16 * v27);
      v31 = *v29;
      v30 = v29[1];
    }

    else
    {
      v31 = 0;
      v30 = 0;
    }

    v35 = v0[13];
    v34 = v0[14];
    v36 = v0[12];

    v0[7] = v31;
    v0[8] = v30;
    sub_1000BC4D4(&qword_1016A0AC0, &unk_1013926A0);
    v37 = String.init<A>(describing:)();
    v39 = v38;
    v40 = v36;
    v18 = v66;
    v66(v34, v40);
    v41 = sub_1000136BC(v37, v39, v67);

    *(v25 + 14) = v41;
    swift_arrayDestroy();
  }

  else
  {
    v32 = v0[12];
    v33 = v0[13];

    v18(v24, v32);
  }

  v42 = v0[19];
  v43 = v0[16];
  sub_101259EC4();
  if (v42)
  {
    v45 = v0[16];
    v44 = v0[17];
    v46 = v0[12];
    v47 = v0[13];

    v18(v45, v46);
    v56 = v0[15];
    v55 = v0[16];
    v57 = v0[14];
  }

  else
  {
    v48 = v0[16];
    v49 = v0[9];
    type metadata accessor for KeyDropDownloadResponse(0);
    v50 = FMNServerInteractionController.FMNResponseFields.data.getter();
    v52 = v51;
    sub_100646624(&qword_1016A63D0, type metadata accessor for KeyDropDownloadResponse);
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    v54 = v0[16];
    v53 = v0[17];
    v61 = v0[14];
    v60 = v0[15];
    v62 = v0[12];
    v63 = v0[13];

    sub_100016590(v50, v52);
    v18(v54, v62);
  }

  v58 = v0[1];

  return v58();
}

uint64_t sub_100642A6C()
{
  v1 = v0[17];

  sub_100007BAC(v0 + 2);
  v2 = v0[19];
  v4 = v0[15];
  v3 = v0[16];
  v5 = v0[14];

  v6 = v0[1];

  return v6();
}

uint64_t sub_100642AFC(uint64_t a1)
{
  v2 = *(*v1 + 160);
  v3 = *(*v1 + 88);
  v5 = *v1;
  *(*v1 + 168) = a1;

  return _swift_task_switch(sub_100642C14, v3, 0);
}

uint64_t sub_100642C14()
{
  v0[17] = v0[21];
  v1 = v0[10];
  v2 = v1[3];
  v3 = v1[4];
  v4 = sub_1000035D0(v1, v2);
  v0[5] = v2;
  v0[6] = *(v3 + 8);
  v5 = sub_1000280DC(v0 + 2);
  (*(*(v2 - 8) + 16))(v5, v4, v2);

  v6 = swift_task_alloc();
  v0[18] = v6;
  *v6 = v0;
  v6[1] = sub_100642378;
  v7 = v0[16];

  return sub_1004E682C(v7, (v0 + 2));
}

uint64_t sub_100642D20(uint64_t a1, char a2)
{
  *(v3 + 169) = a2;
  *(v3 + 72) = a1;
  *(v3 + 80) = v2;
  v4 = type metadata accessor for FMNServerInteractionController.FMNResponseFields();
  *(v3 + 88) = v4;
  v5 = *(v4 - 8);
  *(v3 + 96) = v5;
  v6 = *(v5 + 64) + 15;
  *(v3 + 104) = swift_task_alloc();
  *(v3 + 112) = swift_task_alloc();
  *(v3 + 120) = swift_task_alloc();

  return _swift_task_switch(sub_100642DFC, v2, 0);
}

uint64_t sub_100642DFC()
{
  v1 = *(v0 + 80);
  v2 = *(v1 + 112);
  if (v2 && (v3 = *(v1 + 120), (v4 = v2()) != 0))
  {
    *(v0 + 128) = v4;
    v5 = *(v0 + 72);
    v6 = v5[3];
    v7 = v5[4];
    v8 = sub_1000035D0(v5, v6);
    *(v0 + 40) = v6;
    *(v0 + 48) = *(v7 + 8);
    v9 = sub_1000280DC((v0 + 16));
    (*(*(v6 - 8) + 16))(v9, v8, v6);

    v10 = swift_task_alloc();
    *(v0 + 136) = v10;
    *v10 = v0;
    v10[1] = sub_100642F98;
    v11 = *(v0 + 120);

    return sub_1004E682C(v11, v0 + 16);
  }

  else
  {
    v13 = swift_task_alloc();
    *(v0 + 152) = v13;
    *v13 = v0;
    v13[1] = sub_1006436F0;
    v14 = *(v0 + 80);
    v15 = *(v0 + 169);

    return sub_1012588A0(v15);
  }
}

uint64_t sub_100642F98()
{
  v2 = *v1;
  v3 = (*v1)[17];
  v8 = *v1;
  (*v1)[18] = v0;

  v4 = v2[16];
  if (v0)
  {
    v5 = v2[10];

    v6 = sub_10064365C;
  }

  else
  {
    v5 = v2[10];

    sub_100007BAC(v2 + 2);
    v6 = sub_1006430CC;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1006430CC()
{
  v69 = v0;
  if (qword_1016954C8 != -1)
  {
    swift_once();
  }

  if (qword_1016954C0 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 112);
  v1 = *(v0 + 120);
  v4 = *(v0 + 88);
  v3 = *(v0 + 96);
  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_10177CDD0);
  v6 = *(v3 + 16);
  v6(v2, v1, v4);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 112);
  v12 = *(v0 + 88);
  v11 = *(v0 + 96);
  if (v9)
  {
    v66 = v6;
    v13 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    v68[0] = v65;
    *v13 = 136315138;
    sub_100646624(&qword_1016A62C0, &type metadata accessor for FMNServerInteractionController.FMNResponseFields);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    v17 = v12;
    v18 = *(v11 + 8);
    v18(v10, v17);
    v19 = sub_1000136BC(v14, v16, v68);

    *(v13 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v7, v8, "Response value is %s", v13, 0xCu);
    sub_100007BAC(v65);

    v6 = v66;
  }

  else
  {

    v20 = v12;
    v18 = *(v11 + 8);
    v18(v10, v20);
  }

  v6(*(v0 + 104), *(v0 + 120), *(v0 + 88));
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.info.getter();
  v23 = os_log_type_enabled(v21, v22);
  v24 = *(v0 + 104);
  if (v23)
  {
    v25 = swift_slowAlloc();
    v68[0] = swift_slowAlloc();
    *v25 = 136446466;
    *(v25 + 4) = sub_1000136BC(0xD000000000000015, 0x80000001013B3D30, v68);
    *(v25 + 12) = 2082;
    v26 = FMNServerInteractionController.FMNResponseFields.responseHeaders.getter();
    v67 = v18;
    if (*(v26 + 16) && (v27 = sub_100771D58(0xD000000000000014, 0x800000010135BB50), (v28 & 1) != 0))
    {
      v29 = (*(v26 + 56) + 16 * v27);
      v31 = *v29;
      v30 = v29[1];
    }

    else
    {
      v31 = 0;
      v30 = 0;
    }

    v35 = *(v0 + 96);
    v34 = *(v0 + 104);
    v36 = *(v0 + 88);

    *(v0 + 56) = v31;
    *(v0 + 64) = v30;
    sub_1000BC4D4(&qword_1016A0AC0, &unk_1013926A0);
    v37 = String.init<A>(describing:)();
    v39 = v38;
    v40 = v36;
    v18 = v67;
    v67(v34, v40);
    v41 = sub_1000136BC(v37, v39, v68);

    *(v25 + 14) = v41;
    swift_arrayDestroy();
  }

  else
  {
    v32 = *(v0 + 88);
    v33 = *(v0 + 96);

    v18(v24, v32);
  }

  v42 = *(v0 + 144);
  v43 = *(v0 + 120);
  sub_101259EC4();
  if (v42)
  {
    v45 = *(v0 + 120);
    v44 = *(v0 + 128);
    v46 = *(v0 + 88);
    v47 = *(v0 + 96);

    v18(v45, v46);
    v55 = *(v0 + 112);
    v54 = *(v0 + 120);
    v56 = *(v0 + 104);

    v57 = *(v0 + 8);
    v58 = 0;
  }

  else
  {
    v48 = *(v0 + 120);
    v49 = FMNServerInteractionController.FMNResponseFields.data.getter();
    v51 = v50;
    sub_100646118();
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    v53 = *(v0 + 120);
    v52 = *(v0 + 128);
    v61 = *(v0 + 104);
    v60 = *(v0 + 112);
    v62 = *(v0 + 88);
    v63 = *(v0 + 96);

    sub_100016590(v49, v51);
    v18(v53, v62);
    v64 = *(v0 + 168);

    v57 = *(v0 + 8);
    v58 = v64;
  }

  return v57(v58);
}

uint64_t sub_10064365C()
{
  v1 = v0[16];

  sub_100007BAC(v0 + 2);
  v2 = v0[18];
  v4 = v0[14];
  v3 = v0[15];
  v5 = v0[13];

  v6 = v0[1];

  return v6(0);
}

uint64_t sub_1006436F0(uint64_t a1)
{
  v2 = *(*v1 + 152);
  v3 = *(*v1 + 80);
  v5 = *v1;
  *(*v1 + 160) = a1;

  return _swift_task_switch(sub_100643808, v3, 0);
}

uint64_t sub_100643808()
{
  v0[16] = v0[20];
  v1 = v0[9];
  v2 = v1[3];
  v3 = v1[4];
  v4 = sub_1000035D0(v1, v2);
  v0[5] = v2;
  v0[6] = *(v3 + 8);
  v5 = sub_1000280DC(v0 + 2);
  (*(*(v2 - 8) + 16))(v5, v4, v2);

  v6 = swift_task_alloc();
  v0[17] = v6;
  *v6 = v0;
  v6[1] = sub_100642F98;
  v7 = v0[15];

  return sub_1004E682C(v7, (v0 + 2));
}

uint64_t sub_100643914(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 128) = a2;
  *(v4 + 136) = v3;
  *(v4 + 224) = a3;
  *(v4 + 120) = a1;
  v5 = type metadata accessor for FMNServerInteractionController.FMNResponseFields();
  *(v4 + 144) = v5;
  v6 = *(v5 - 8);
  *(v4 + 152) = v6;
  v7 = *(v6 + 64) + 15;
  *(v4 + 160) = swift_task_alloc();
  *(v4 + 168) = swift_task_alloc();
  *(v4 + 176) = swift_task_alloc();

  return _swift_task_switch(sub_1006439F4, v3, 0);
}

uint64_t sub_1006439F4()
{
  v1 = *(v0 + 136);
  v2 = *(v1 + 112);
  if (v2 && (v3 = *(v1 + 120), (v4 = v2()) != 0))
  {
    *(v0 + 184) = v4;
    v5 = *(v0 + 128);
    v6 = v5[3];
    v7 = v5[4];
    v8 = sub_1000035D0(v5, v6);
    *(v0 + 88) = v6;
    *(v0 + 96) = *(v7 + 8);
    v9 = sub_1000280DC((v0 + 64));
    (*(*(v6 - 8) + 16))(v9, v8, v6);

    v10 = swift_task_alloc();
    *(v0 + 192) = v10;
    *v10 = v0;
    v10[1] = sub_100643B90;
    v11 = *(v0 + 176);

    return sub_1004E682C(v11, v0 + 64);
  }

  else
  {
    v13 = swift_task_alloc();
    *(v0 + 208) = v13;
    *v13 = v0;
    v13[1] = sub_1006442F4;
    v14 = *(v0 + 136);
    v15 = *(v0 + 224);

    return sub_1012588A0(v15);
  }
}

uint64_t sub_100643B90()
{
  v2 = *v1;
  v3 = (*v1)[24];
  v8 = *v1;
  (*v1)[25] = v0;

  v4 = v2[23];
  if (v0)
  {
    v5 = v2[17];

    v6 = sub_100644264;
  }

  else
  {
    v5 = v2[17];

    sub_100007BAC(v2 + 8);
    v6 = sub_100643CC4;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100643CC4()
{
  v70 = v0;
  if (qword_1016954C8 != -1)
  {
    swift_once();
  }

  if (qword_1016954C0 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 168);
  v1 = *(v0 + 176);
  v4 = *(v0 + 144);
  v3 = *(v0 + 152);
  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_10177CDD0);
  v6 = *(v3 + 16);
  v6(v2, v1, v4);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 168);
  v12 = *(v0 + 144);
  v11 = *(v0 + 152);
  if (v9)
  {
    v65 = v6;
    v13 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    v69[0] = v64;
    *v13 = 136315138;
    sub_100646624(&qword_1016A62C0, &type metadata accessor for FMNServerInteractionController.FMNResponseFields);
    v63 = v8;
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    v17 = *(v11 + 8);
    v17(v10, v12);
    v18 = sub_1000136BC(v14, v16, v69);

    *(v13 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v7, v63, "Response value is %s", v13, 0xCu);
    sub_100007BAC(v64);

    v6 = v65;
  }

  else
  {

    v17 = *(v11 + 8);
    v17(v10, v12);
  }

  v6(*(v0 + 160), *(v0 + 176), *(v0 + 144));
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.info.getter();
  v21 = os_log_type_enabled(v19, v20);
  v22 = *(v0 + 160);
  if (v21)
  {
    v23 = swift_slowAlloc();
    v69[0] = swift_slowAlloc();
    *v23 = 136446466;
    *(v23 + 4) = sub_1000136BC(0xD00000000000001BLL, 0x800000010135BC10, v69);
    *(v23 + 12) = 2082;
    v24 = FMNServerInteractionController.FMNResponseFields.responseHeaders.getter();
    v66 = v17;
    if (*(v24 + 16) && (v25 = sub_100771D58(0xD000000000000014, 0x800000010135BB50), (v26 & 1) != 0))
    {
      v27 = (*(v24 + 56) + 16 * v25);
      v29 = *v27;
      v28 = v27[1];
    }

    else
    {
      v29 = 0;
      v28 = 0;
    }

    v33 = *(v0 + 152);
    v32 = *(v0 + 160);
    v34 = *(v0 + 144);

    *(v0 + 104) = v29;
    *(v0 + 112) = v28;
    sub_1000BC4D4(&qword_1016A0AC0, &unk_1013926A0);
    v35 = String.init<A>(describing:)();
    v37 = v36;
    v17 = v66;
    v66(v32, v34);
    v38 = sub_1000136BC(v35, v37, v69);

    *(v23 + 14) = v38;
    swift_arrayDestroy();
  }

  else
  {
    v30 = *(v0 + 144);
    v31 = *(v0 + 152);

    v17(v22, v30);
  }

  v39 = *(v0 + 200);
  v40 = *(v0 + 176);
  sub_101259EC4();
  if (v39)
  {
    v42 = *(v0 + 176);
    v41 = *(v0 + 184);
    v43 = *(v0 + 144);
    v44 = *(v0 + 152);

    v17(v42, v43);
    v52 = *(v0 + 168);
    v51 = *(v0 + 176);
    v53 = *(v0 + 160);
  }

  else
  {
    v45 = *(v0 + 176);
    v46 = FMNServerInteractionController.FMNResponseFields.data.getter();
    v48 = v47;
    sub_100646268();
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    v50 = *(v0 + 176);
    v49 = *(v0 + 184);
    v57 = *(v0 + 160);
    v56 = *(v0 + 168);
    v58 = *(v0 + 144);
    v59 = *(v0 + 152);
    v60 = *(v0 + 120);

    sub_100016590(v46, v48);
    v17(v50, v58);
    v61 = *(v0 + 48);
    v62 = *(v0 + 56);
    v67 = *(v0 + 32);
    v68 = *(v0 + 16);

    *v60 = v68;
    *(v60 + 16) = v67;
    *(v60 + 32) = v61;
    *(v60 + 40) = v62;
  }

  v54 = *(v0 + 8);

  return v54();
}

uint64_t sub_100644264()
{
  v1 = v0[23];

  sub_100007BAC(v0 + 8);
  v2 = v0[25];
  v4 = v0[21];
  v3 = v0[22];
  v5 = v0[20];

  v6 = v0[1];

  return v6();
}

uint64_t sub_1006442F4(uint64_t a1)
{
  v2 = *(*v1 + 208);
  v3 = *(*v1 + 136);
  v5 = *v1;
  *(*v1 + 216) = a1;

  return _swift_task_switch(sub_10064440C, v3, 0);
}

uint64_t sub_10064440C()
{
  v0[23] = v0[27];
  v1 = v0[16];
  v2 = v1[3];
  v3 = v1[4];
  v4 = sub_1000035D0(v1, v2);
  v0[11] = v2;
  v0[12] = *(v3 + 8);
  v5 = sub_1000280DC(v0 + 8);
  (*(*(v2 - 8) + 16))(v5, v4, v2);

  v6 = swift_task_alloc();
  v0[24] = v6;
  *v6 = v0;
  v6[1] = sub_100643B90;
  v7 = v0[22];

  return sub_1004E682C(v7, (v0 + 8));
}

uint64_t sub_100644518(uint64_t a1, char a2)
{
  *(v3 + 200) = a2;
  *(v3 + 104) = a1;
  *(v3 + 112) = v2;
  v4 = type metadata accessor for FMNServerInteractionController.FMNResponseFields();
  *(v3 + 120) = v4;
  v5 = *(v4 - 8);
  *(v3 + 128) = v5;
  v6 = *(v5 + 64) + 15;
  *(v3 + 136) = swift_task_alloc();
  *(v3 + 144) = swift_task_alloc();
  *(v3 + 152) = swift_task_alloc();

  return _swift_task_switch(sub_1006445F4, v2, 0);
}

uint64_t sub_1006445F4()
{
  v1 = *(v0 + 112);
  v2 = *(v1 + 112);
  if (v2 && (v3 = *(v1 + 120), (v4 = v2()) != 0))
  {
    *(v0 + 160) = v4;
    v5 = *(v0 + 104);
    v6 = v5[3];
    v7 = v5[4];
    v8 = sub_1000035D0(v5, v6);
    *(v0 + 40) = v6;
    *(v0 + 48) = *(v7 + 8);
    v9 = sub_1000280DC((v0 + 16));
    (*(*(v6 - 8) + 16))(v9, v8, v6);

    v10 = swift_task_alloc();
    *(v0 + 168) = v10;
    *v10 = v0;
    v10[1] = sub_100644790;
    v11 = *(v0 + 152);

    return sub_1004E682C(v11, v0 + 16);
  }

  else
  {
    v13 = swift_task_alloc();
    *(v0 + 184) = v13;
    *v13 = v0;
    v13[1] = sub_100644F20;
    v14 = *(v0 + 112);
    v15 = *(v0 + 200);

    return sub_1012588A0(v15);
  }
}

uint64_t sub_100644790()
{
  v2 = *v1;
  v3 = (*v1)[21];
  v8 = *v1;
  (*v1)[22] = v0;

  v4 = v2[20];
  if (v0)
  {
    v5 = v2[14];

    v6 = sub_100644E90;
  }

  else
  {
    v5 = v2[14];

    sub_100007BAC(v2 + 2);
    v6 = sub_1006448C4;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1006448C4()
{
  v72 = v0;
  if (qword_1016954C8 != -1)
  {
    swift_once();
  }

  if (qword_1016954C0 != -1)
  {
    swift_once();
  }

  v2 = v0[18];
  v1 = v0[19];
  v4 = v0[15];
  v3 = v0[16];
  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_10177CDD0);
  v6 = *(v3 + 16);
  v6(v2, v1, v4);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[18];
  v12 = v0[15];
  v11 = v0[16];
  if (v9)
  {
    v69 = v6;
    v13 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    v71[0] = v68;
    *v13 = 136315138;
    sub_100646624(&qword_1016A62C0, &type metadata accessor for FMNServerInteractionController.FMNResponseFields);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    v17 = v12;
    v18 = *(v11 + 8);
    v18(v10, v17);
    v19 = sub_1000136BC(v14, v16, v71);

    *(v13 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v7, v8, "Response value is %s", v13, 0xCu);
    sub_100007BAC(v68);

    v6 = v69;
  }

  else
  {

    v20 = v12;
    v18 = *(v11 + 8);
    v18(v10, v20);
  }

  v6(v0[17], v0[19], v0[15]);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.info.getter();
  v23 = os_log_type_enabled(v21, v22);
  v24 = v0[17];
  if (v23)
  {
    v25 = swift_slowAlloc();
    v71[0] = swift_slowAlloc();
    *v25 = 136446466;
    *(v25 + 4) = sub_1000136BC(0xD000000000000014, 0x800000010135BBC0, v71);
    *(v25 + 12) = 2082;
    v26 = FMNServerInteractionController.FMNResponseFields.responseHeaders.getter();
    v70 = v18;
    if (*(v26 + 16) && (v27 = sub_100771D58(0xD000000000000014, 0x800000010135BB50), (v28 & 1) != 0))
    {
      v29 = (*(v26 + 56) + 16 * v27);
      v31 = *v29;
      v30 = v29[1];
    }

    else
    {
      v31 = 0;
      v30 = 0;
    }

    v35 = v0[16];
    v34 = v0[17];
    v36 = v0[15];

    v0[11] = v31;
    v0[12] = v30;
    sub_1000BC4D4(&qword_1016A0AC0, &unk_1013926A0);
    v37 = String.init<A>(describing:)();
    v39 = v38;
    v40 = v36;
    v18 = v70;
    v70(v34, v40);
    v41 = sub_1000136BC(v37, v39, v71);

    *(v25 + 14) = v41;
    swift_arrayDestroy();
  }

  else
  {
    v32 = v0[15];
    v33 = v0[16];

    v18(v24, v32);
  }

  v42 = v0[22];
  v43 = v0[19];
  sub_101259EC4();
  if (v42)
  {
    v45 = v0[19];
    v44 = v0[20];
    v46 = v0[15];
    v47 = v0[16];

    v18(v45, v46);
    v55 = v0[18];
    v54 = v0[19];
    v56 = v0[17];

    v57 = v0[1];

    return v57();
  }

  else
  {
    v48 = v0[19];
    v49 = FMNServerInteractionController.FMNResponseFields.data.getter();
    v51 = v50;
    sub_100646214();
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    v53 = v0[19];
    v52 = v0[20];
    v60 = v0[17];
    v59 = v0[18];
    v61 = v0[15];
    v62 = v0[16];

    sub_100016590(v49, v51);
    v18(v53, v61);
    v63 = v0[7];
    v64 = v0[8];
    v65 = v0[9];
    v66 = v0[10];

    v67 = v0[1];

    return v67(v63, v64, v65, v66);
  }
}

uint64_t sub_100644E90()
{
  v1 = v0[20];

  sub_100007BAC(v0 + 2);
  v2 = v0[22];
  v4 = v0[18];
  v3 = v0[19];
  v5 = v0[17];

  v6 = v0[1];

  return v6();
}

uint64_t sub_100644F20(uint64_t a1)
{
  v2 = *(*v1 + 184);
  v3 = *(*v1 + 112);
  v5 = *v1;
  *(*v1 + 192) = a1;

  return _swift_task_switch(sub_100645038, v3, 0);
}

uint64_t sub_100645038()
{
  v0[20] = v0[24];
  v1 = v0[13];
  v2 = v1[3];
  v3 = v1[4];
  v4 = sub_1000035D0(v1, v2);
  v0[5] = v2;
  v0[6] = *(v3 + 8);
  v5 = sub_1000280DC(v0 + 2);
  (*(*(v2 - 8) + 16))(v5, v4, v2);

  v6 = swift_task_alloc();
  v0[21] = v6;
  *v6 = v0;
  v6[1] = sub_100644790;
  v7 = v0[19];

  return sub_1004E682C(v7, (v0 + 2));
}

uint64_t sub_100645144(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 80) = a2;
  *(v4 + 88) = v3;
  *(v4 + 176) = a3;
  *(v4 + 72) = a1;
  v5 = type metadata accessor for FMNServerInteractionController.FMNResponseFields();
  *(v4 + 96) = v5;
  v6 = *(v5 - 8);
  *(v4 + 104) = v6;
  v7 = *(v6 + 64) + 15;
  *(v4 + 112) = swift_task_alloc();
  *(v4 + 120) = swift_task_alloc();
  *(v4 + 128) = swift_task_alloc();

  return _swift_task_switch(sub_100645224, v3, 0);
}

uint64_t sub_100645224()
{
  v1 = *(v0 + 88);
  v2 = *(v1 + 112);
  if (v2 && (v3 = *(v1 + 120), (v4 = v2()) != 0))
  {
    *(v0 + 136) = v4;
    v5 = *(v0 + 80);
    v6 = v5[3];
    v7 = v5[4];
    v8 = sub_1000035D0(v5, v6);
    *(v0 + 40) = v6;
    *(v0 + 48) = *(v7 + 8);
    v9 = sub_1000280DC((v0 + 16));
    (*(*(v6 - 8) + 16))(v9, v8, v6);

    v10 = swift_task_alloc();
    *(v0 + 144) = v10;
    *v10 = v0;
    v10[1] = sub_1006453C0;
    v11 = *(v0 + 128);

    return sub_1004E682C(v11, v0 + 16);
  }

  else
  {
    v13 = swift_task_alloc();
    *(v0 + 160) = v13;
    *v13 = v0;
    v13[1] = sub_100645AB4;
    v14 = *(v0 + 88);
    v15 = *(v0 + 176);

    return sub_1012588A0(v15);
  }
}

uint64_t sub_1006453C0()
{
  v2 = *v1;
  v3 = (*v1)[18];
  v8 = *v1;
  (*v1)[19] = v0;

  v4 = v2[17];
  if (v0)
  {
    v5 = v2[11];

    v6 = sub_100646BE4;
  }

  else
  {
    v5 = v2[11];

    sub_100007BAC(v2 + 2);
    v6 = sub_1006454F4;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1006454F4()
{
  v68 = v0;
  if (qword_1016954C8 != -1)
  {
    swift_once();
  }

  if (qword_1016954C0 != -1)
  {
    swift_once();
  }

  v2 = v0[15];
  v1 = v0[16];
  v4 = v0[12];
  v3 = v0[13];
  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_10177CDD0);
  v6 = *(v3 + 16);
  v6(v2, v1, v4);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[15];
  v12 = v0[12];
  v11 = v0[13];
  if (v9)
  {
    v65 = v6;
    v13 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    v67[0] = v64;
    *v13 = 136315138;
    sub_100646624(&qword_1016A62C0, &type metadata accessor for FMNServerInteractionController.FMNResponseFields);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    v17 = v12;
    v18 = *(v11 + 8);
    v18(v10, v17);
    v19 = sub_1000136BC(v14, v16, v67);

    *(v13 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v7, v8, "Response value is %s", v13, 0xCu);
    sub_100007BAC(v64);

    v6 = v65;
  }

  else
  {

    v20 = v12;
    v18 = *(v11 + 8);
    v18(v10, v20);
  }

  v6(v0[14], v0[16], v0[12]);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.info.getter();
  v23 = os_log_type_enabled(v21, v22);
  v24 = v0[14];
  if (v23)
  {
    v25 = swift_slowAlloc();
    v67[0] = swift_slowAlloc();
    *v25 = 136446466;
    *(v25 + 4) = sub_1000136BC(0xD000000000000024, 0x800000010135BBE0, v67);
    *(v25 + 12) = 2082;
    v26 = FMNServerInteractionController.FMNResponseFields.responseHeaders.getter();
    v66 = v18;
    if (*(v26 + 16) && (v27 = sub_100771D58(0xD000000000000014, 0x800000010135BB50), (v28 & 1) != 0))
    {
      v29 = (*(v26 + 56) + 16 * v27);
      v31 = *v29;
      v30 = v29[1];
    }

    else
    {
      v31 = 0;
      v30 = 0;
    }

    v35 = v0[13];
    v34 = v0[14];
    v36 = v0[12];

    v0[7] = v31;
    v0[8] = v30;
    sub_1000BC4D4(&qword_1016A0AC0, &unk_1013926A0);
    v37 = String.init<A>(describing:)();
    v39 = v38;
    v40 = v36;
    v18 = v66;
    v66(v34, v40);
    v41 = sub_1000136BC(v37, v39, v67);

    *(v25 + 14) = v41;
    swift_arrayDestroy();
  }

  else
  {
    v32 = v0[12];
    v33 = v0[13];

    v18(v24, v32);
  }

  v42 = v0[19];
  v43 = v0[16];
  sub_101259EC4();
  if (v42)
  {
    v45 = v0[16];
    v44 = v0[17];
    v46 = v0[12];
    v47 = v0[13];

    v18(v45, v46);
    v56 = v0[15];
    v55 = v0[16];
    v57 = v0[14];
  }

  else
  {
    v48 = v0[16];
    v49 = v0[9];
    type metadata accessor for KeyDropImportedLocationFetchResponse(0);
    v50 = FMNServerInteractionController.FMNResponseFields.data.getter();
    v52 = v51;
    sub_100646624(&qword_1016A63E8, type metadata accessor for KeyDropImportedLocationFetchResponse);
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    v54 = v0[16];
    v53 = v0[17];
    v61 = v0[14];
    v60 = v0[15];
    v62 = v0[12];
    v63 = v0[13];

    sub_100016590(v50, v52);
    v18(v54, v62);
  }

  v58 = v0[1];

  return v58();
}

uint64_t sub_100645AB4(uint64_t a1)
{
  v2 = *(*v1 + 160);
  v3 = *(*v1 + 88);
  v5 = *v1;
  *(*v1 + 168) = a1;

  return _swift_task_switch(sub_100645BCC, v3, 0);
}

uint64_t sub_100645BCC()
{
  v0[17] = v0[21];
  v1 = v0[10];
  v2 = v1[3];
  v3 = v1[4];
  v4 = sub_1000035D0(v1, v2);
  v0[5] = v2;
  v0[6] = *(v3 + 8);
  v5 = sub_1000280DC(v0 + 2);
  (*(*(v2 - 8) + 16))(v5, v4, v2);

  v6 = swift_task_alloc();
  v0[18] = v6;
  *v6 = v0;
  v6[1] = sub_1006453C0;
  v7 = v0[16];

  return sub_1004E682C(v7, (v0 + 2));
}

uint64_t sub_100645CD8(uint64_t a1, char a2, char a3)
{
  v34 = a1;
  v5 = type metadata accessor for KeyDropDeleteRequest.DeleteRequestContent();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v8 = (&v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for JSONEncoder.DateEncodingStrategy();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = (&v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10063FB48();
  v15 = v14;
  v16 = type metadata accessor for JSONEncoder();
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  JSONEncoder.init()();
  *v13 = sub_100281AE0;
  v13[1] = 0;
  (*(v10 + 104))(v13, enum case for JSONEncoder.DateEncodingStrategy.custom(_:), v9);
  dispatch thunk of JSONEncoder.dateEncodingStrategy.setter();
  v35 = v15;
  if (a2 == 4)
  {

LABEL_4:
    v20 = *&aUserActownerRe[8 * a3];
    v21 = *&aUserActownerRe[8 * a3 + 32];
    goto LABEL_6;
  }

  v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v19)
  {
    goto LABEL_4;
  }

  v20 = 0;
  v21 = 0;
LABEL_6:
  v22 = *(v5 + 20);
  v23 = type metadata accessor for UUID();
  v24 = *(v23 - 8);
  v25 = v8 + v22;
  v26 = v34;
  (*(v24 + 16))(v25, v34, v23);
  *v8 = v20;
  v8[1] = v21;
  *(v8 + *(v5 + 24)) = a2;
  sub_100646624(&qword_1016A63C8, type metadata accessor for KeyDropDeleteRequest.DeleteRequestContent);
  v27 = v33;
  v28 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  if (v27)
  {

    (*(v24 + 8))(v26, v23);
    sub_1006461B8(v8);
  }

  else
  {
    v30 = v28;
    v31 = v29;

    (*(v24 + 8))(v26, v23);
    sub_1006461B8(v8);
    v26 = v35;

    sub_100017D5C(v30, v31);

    sub_100016590(v30, v31);
  }

  return v26;
}

unint64_t sub_1006460C4()
{
  result = qword_1016A63B8;
  if (!qword_1016A63B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A63B8);
  }

  return result;
}

unint64_t sub_100646118()
{
  result = qword_1016A63C0;
  if (!qword_1016A63C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A63C0);
  }

  return result;
}

uint64_t type metadata accessor for KeyDropDeleteRequest.DeleteRequestContent()
{
  result = qword_1016A6450;
  if (!qword_1016A6450)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1006461B8(uint64_t a1)
{
  v2 = type metadata accessor for KeyDropDeleteRequest.DeleteRequestContent();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100646214()
{
  result = qword_1016A63E0;
  if (!qword_1016A63E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A63E0);
  }

  return result;
}

unint64_t sub_100646268()
{
  result = qword_1016A63F0;
  if (!qword_1016A63F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A63F0);
  }

  return result;
}

void sub_1006462F4()
{
  sub_100646380();
  if (v0 <= 0x3F)
  {
    type metadata accessor for UUID();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100646380()
{
  if (!qword_1016A6460)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1016A6460);
    }
  }
}

unint64_t sub_100646404()
{
  result = qword_1016A6498;
  if (!qword_1016A6498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A6498);
  }

  return result;
}

unint64_t sub_100646458(uint64_t a1)
{
  result = sub_100646480();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100646480()
{
  result = qword_1016A64A0;
  if (!qword_1016A64A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A64A0);
  }

  return result;
}

unint64_t sub_1006464D4()
{
  result = qword_1016A64B0;
  if (!qword_1016A64B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A64B0);
  }

  return result;
}

unint64_t sub_100646528()
{
  result = qword_1016A64C0;
  if (!qword_1016A64C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A64C0);
  }

  return result;
}

unint64_t sub_10064657C()
{
  result = qword_1016A64C8;
  if (!qword_1016A64C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A64C8);
  }

  return result;
}

unint64_t sub_1006465D0()
{
  result = qword_1016A64D8;
  if (!qword_1016A64D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A64D8);
  }

  return result;
}

uint64_t sub_100646624(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10064666C()
{
  result = qword_1016A64E0;
  if (!qword_1016A64E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A64E0);
  }

  return result;
}

uint64_t sub_1006466C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for KeyDropDeleteRequest.DeleteRequestContent();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100646724()
{
  result = qword_1016A64F0;
  if (!qword_1016A64F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A64F0);
  }

  return result;
}

unint64_t sub_1006467AC()
{
  result = qword_1016A6508;
  if (!qword_1016A6508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A6508);
  }

  return result;
}

unint64_t sub_100646804()
{
  result = qword_1016A6510;
  if (!qword_1016A6510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A6510);
  }

  return result;
}

unint64_t sub_10064685C()
{
  result = qword_1016A6518;
  if (!qword_1016A6518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A6518);
  }

  return result;
}

unint64_t sub_1006468B4()
{
  result = qword_1016A6520;
  if (!qword_1016A6520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A6520);
  }

  return result;
}

unint64_t sub_10064690C()
{
  result = qword_1016A6528;
  if (!qword_1016A6528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A6528);
  }

  return result;
}

unint64_t sub_100646964()
{
  result = qword_1016A6530;
  if (!qword_1016A6530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A6530);
  }

  return result;
}

unint64_t sub_1006469BC()
{
  result = qword_1016A6538;
  if (!qword_1016A6538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A6538);
  }

  return result;
}

unint64_t sub_100646A14()
{
  result = qword_1016A6540;
  if (!qword_1016A6540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A6540);
  }

  return result;
}

unint64_t sub_100646A6C()
{
  result = qword_1016A6548;
  if (!qword_1016A6548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A6548);
  }

  return result;
}

uint64_t sub_100646AC0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F43746E65696C63 && a2 == 0xED0000747865746ELL;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x64496572616873 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000)
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

Swift::Int sub_100646C10()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_1013B4860[v1]);
  return Hasher._finalize()();
}

Swift::Int sub_100646C98()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_1013B4860[v1]);
  return Hasher._finalize()();
}

uint64_t *sub_100646CE4@<X0>(uint64_t *result@<X0>, char *a2@<X8>)
{
  v2 = *result;
  if (*result)
  {
    v3 = 3;
  }

  else
  {
    v3 = 0;
  }

  if (v2 == 200)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (v2 == 409)
  {
    v5 = 2;
  }

  else
  {
    v5 = v4;
  }

  *a2 = v5;
  return result;
}

uint64_t sub_100646D2C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100646D74(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

Swift::Int sub_100646E40()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100646F2C()
{
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int sub_100647004()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1006470EC@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10064734C(*a1);
  *a2 = result;
  return result;
}

void sub_10064711C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x5364656573;
  v5 = 0x6F43737574617473;
  v6 = 0xE500000000000000;
  v7 = 0x7374726563;
  if (v2 != 3)
  {
    v7 = 0x704164656B73616DLL;
    v6 = 0xED00006449656C70;
  }

  if (v2 == 2)
  {
    v6 = 0xEA00000000006564;
  }

  else
  {
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x6953726576726573;
    v3 = 0xEA00000000006E67;
  }

  if (*v1 <= 1u)
  {
    v8 = v4;
  }

  else
  {
    v8 = v5;
  }

  if (*v1 > 1u)
  {
    v3 = v6;
  }

  *a1 = v8;
  a1[1] = v3;
}

uint64_t sub_1006471C4()
{
  v1 = *v0;
  v2 = 0x5364656573;
  v3 = 0x6F43737574617473;
  v4 = 0x7374726563;
  if (v1 != 3)
  {
    v4 = 0x704164656B73616DLL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6953726576726573;
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

unint64_t sub_100647268@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_10064734C(a1);
  *a2 = result;
  return result;
}

uint64_t sub_100647290(uint64_t a1)
{
  v2 = sub_1006476A8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1006472CC(uint64_t a1)
{
  v2 = sub_1006476A8();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_100647308@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_100647398(a1, v7);
  if (!v2)
  {
    v5 = v7[1];
    *a2 = v7[0];
    a2[1] = v5;
    result = *&v8;
    v6 = v9;
    a2[2] = v8;
    a2[3] = v6;
  }

  return result;
}

unint64_t sub_10064734C(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_101609998, v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100647398@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1000BC4D4(&qword_1016A6550, &unk_1013B4628);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v20 - v8;
  v10 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_1006476A8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100007BAC(a1);
  }

  LOBYTE(v24) = 2;
  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  v13 = v11 == 200;
  if (v11 == 409)
  {
    v13 = 2;
  }

  v26 = v13;
  v27 = 0;
  sub_1000E307C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v23 = v24;
  v22 = v25;
  v27 = 1;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v21 = v24;
  v20 = v25;
  sub_1000BC4D4(&qword_101699EB8, &qword_101398AA0);
  v27 = 3;
  sub_1006476FC();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v14 = v24;
  LOBYTE(v24) = 4;
  v15 = KeyedDecodingContainer.decode(_:forKey:)();
  v17 = v16;
  (*(v6 + 8))(v9, v5);
  result = sub_100007BAC(a1);
  *a2 = v26;
  v18 = v22;
  *(a2 + 8) = v23;
  *(a2 + 16) = v18;
  v19 = v20;
  *(a2 + 24) = v21;
  *(a2 + 32) = v19;
  *(a2 + 40) = v14;
  *(a2 + 48) = v15;
  *(a2 + 56) = v17;
  return result;
}

unint64_t sub_1006476A8()
{
  result = qword_1016A6558;
  if (!qword_1016A6558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A6558);
  }

  return result;
}

unint64_t sub_1006476FC()
{
  result = qword_10169F5A0;
  if (!qword_10169F5A0)
  {
    sub_1000BC580(&qword_101699EB8, &qword_101398AA0);
    sub_1000E307C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169F5A0);
  }

  return result;
}

unint64_t sub_1006477A4()
{
  result = qword_1016A6560;
  if (!qword_1016A6560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A6560);
  }

  return result;
}

unint64_t sub_1006477FC()
{
  result = qword_1016A6568;
  if (!qword_1016A6568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A6568);
  }

  return result;
}

unint64_t sub_100647854()
{
  result = qword_1016A6570;
  if (!qword_1016A6570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A6570);
  }

  return result;
}

unint64_t sub_1006478AC()
{
  result = qword_1016A6578;
  if (!qword_1016A6578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A6578);
  }

  return result;
}

unint64_t sub_100647900()
{
  result = qword_1016A6580;
  if (!qword_1016A6580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A6580);
  }

  return result;
}

uint64_t sub_10064797C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x4449657571696E75 && a2 == 0xE800000000000000)
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

uint64_t sub_100647A04(uint64_t a1)
{
  v2 = sub_100647C80();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100647A40(uint64_t a1)
{
  v2 = sub_100647C80();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100647A7C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1000BC4D4(&qword_1016A6590, &qword_1013B4948);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_100647C80();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100007BAC(a1);
  }

  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  v13 = v12;
  (*(v6 + 8))(v9, v5);
  result = sub_100007BAC(a1);
  *a2 = v11;
  a2[1] = v13;
  return result;
}

uint64_t sub_100647BF8(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

unint64_t sub_100647C2C()
{
  result = qword_1016A6588;
  if (!qword_1016A6588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A6588);
  }

  return result;
}

unint64_t sub_100647C80()
{
  result = qword_1016A6598;
  if (!qword_1016A6598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A6598);
  }

  return result;
}

unint64_t sub_100647CE8()
{
  result = qword_1016A65A0;
  if (!qword_1016A65A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A65A0);
  }

  return result;
}

unint64_t sub_100647D40()
{
  result = qword_1016A65A8;
  if (!qword_1016A65A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A65A8);
  }

  return result;
}

unint64_t sub_100647D98()
{
  result = qword_1016A65B0;
  if (!qword_1016A65B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A65B0);
  }

  return result;
}

uint64_t sub_100647DEC()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DiscoveryState.Mode(0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10064C3D4(v1, v10, type metadata accessor for DiscoveryState.Mode);
  v11 = sub_1000BC4D4(&unk_1016B7BF0, &qword_1013B4AF0);
  v12 = (*(*(v11 - 8) + 48))(v10, 4, v11);
  if (v12 <= 1)
  {
    if (v12)
    {
      return 0xD000000000000012;
    }

    else
    {
      (*(v3 + 32))(v6, v10, v2);
      v17 = 0;
      v18 = 0xE000000000000000;
      _StringGuts.grow(_:)(20);

      v17 = 0xD000000000000011;
      v18 = 0x800000010135BD90;
      sub_10064C43C(&qword_101696930, &type metadata accessor for UUID);
      v14._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v14);

      v15._countAndFlagsBits = 41;
      v15._object = 0xE100000000000000;
      String.append(_:)(v15);
      v16 = v17;
      (*(v3 + 8))(v6, v2);
      return v16;
    }
  }

  else if (v12 == 2)
  {
    return 0xD000000000000014;
  }

  else if (v12 == 3)
  {
    return 0x6E5572657466612ELL;
  }

  else
  {
    return 0x696E49726573752ELL;
  }
}

uint64_t sub_1006480D0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for DiscoveryState(0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DiscoveryState.Mode(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10064C3D4(v2, v7, type metadata accessor for DiscoveryState);
  if (swift_getEnumCaseMultiPayload() > 3)
  {
    v13 = 1;
  }

  else
  {
    sub_10064C36C(v7, v12, type metadata accessor for DiscoveryState.Mode);
    sub_10064C36C(v12, a1, type metadata accessor for DiscoveryState.Mode);
    v13 = 0;
  }

  return (*(v9 + 56))(a1, v13, 1, v8);
}

uint64_t sub_100648264()
{
  v1 = v0;
  v2 = type metadata accessor for DiscoveryState.Mode(0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DiscoveryState(0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10064C3D4(v1, v9, type metadata accessor for DiscoveryState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        sub_10064C36C(v9, v5, type metadata accessor for DiscoveryState.Mode);
        v16 = 0;
        v17 = 0xE000000000000000;
        _StringGuts.grow(_:)(20);

        v12 = 0x800000010135BCF0;
        v13 = 0xD000000000000012;
      }

      else
      {
        sub_10064C36C(v9, v5, type metadata accessor for DiscoveryState.Mode);
        v16 = 0;
        v17 = 0xE000000000000000;
        _StringGuts.grow(_:)(23);

        v12 = 0x800000010135BCD0;
        v13 = 0xD000000000000015;
      }
    }

    else
    {
      if (!EnumCaseMultiPayload)
      {
        sub_10064C36C(v9, v5, type metadata accessor for DiscoveryState.Mode);
        v16 = 0x65766F637369642ELL;
        v17 = 0xEA00000000007972;
LABEL_16:
        v14._countAndFlagsBits = sub_100647DEC();
        String.append(_:)(v14);

        v11 = v16;
        sub_10064C30C(v5, type metadata accessor for DiscoveryState.Mode);
        return v11;
      }

      sub_10064C36C(v9, v5, type metadata accessor for DiscoveryState.Mode);
      v16 = 0;
      v17 = 0xE000000000000000;
      _StringGuts.grow(_:)(27);

      v12 = 0x800000010135BD10;
      v13 = 0xD000000000000019;
    }

    v16 = v13;
    v17 = v12;
    goto LABEL_16;
  }

  if (EnumCaseMultiPayload > 5)
  {
    if (EnumCaseMultiPayload == 6)
    {
      return 0xD000000000000011;
    }

    else
    {
      return 0x676E69726961702ELL;
    }
  }

  else if (EnumCaseMultiPayload == 4)
  {
    return 0x656C64692ELL;
  }

  else
  {
    return 0xD000000000000014;
  }
}

uint64_t sub_10064858C()
{
  v0 = type metadata accessor for DiscoveryState.Mode(0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000BC4D4(&unk_1016B7C00, &qword_1013B4C50);
  v6 = v5 - 8;
  v7 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v9 = &v25 - v8;
  v10 = sub_1000BC4D4(&qword_1016A68C8, &qword_1013B4C58);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v17 = &v25 - v16;
  __chkstk_darwin(v15);
  v19 = &v25 - v18;
  sub_100648FF4(&v25 - v18);
  v20 = sub_1000BC4D4(&unk_1016B7BF0, &qword_1013B4AF0);
  (*(*(v20 - 8) + 56))(v17, 2, 4, v20);
  (*(v1 + 56))(v17, 0, 1, v0);
  v21 = *(v6 + 56);
  sub_10064C484(v19, v9);
  sub_10064C484(v17, &v9[v21]);
  v22 = *(v1 + 48);
  if (v22(v9, 1, v0) != 1)
  {
    sub_10064C484(v9, v14);
    if (v22(&v9[v21], 1, v0) != 1)
    {
      sub_10064C36C(&v9[v21], v4, type metadata accessor for DiscoveryState.Mode);
      v23 = sub_100649A24(v14, v4);
      sub_10064C30C(v4, type metadata accessor for DiscoveryState.Mode);
      sub_10000B3A8(v17, &qword_1016A68C8, &qword_1013B4C58);
      sub_10000B3A8(v19, &qword_1016A68C8, &qword_1013B4C58);
      sub_10064C30C(v14, type metadata accessor for DiscoveryState.Mode);
      sub_10000B3A8(v9, &qword_1016A68C8, &qword_1013B4C58);
      return v23 & 1;
    }

    sub_10000B3A8(v17, &qword_1016A68C8, &qword_1013B4C58);
    sub_10000B3A8(v19, &qword_1016A68C8, &qword_1013B4C58);
    sub_10064C30C(v14, type metadata accessor for DiscoveryState.Mode);
    goto LABEL_6;
  }

  sub_10000B3A8(v17, &qword_1016A68C8, &qword_1013B4C58);
  sub_10000B3A8(v19, &qword_1016A68C8, &qword_1013B4C58);
  if (v22(&v9[v21], 1, v0) != 1)
  {
LABEL_6:
    sub_10000B3A8(v9, &unk_1016B7C00, &qword_1013B4C50);
    v23 = 0;
    return v23 & 1;
  }

  sub_10000B3A8(v9, &qword_1016A68C8, &qword_1013B4C58);
  v23 = 1;
  return v23 & 1;
}

uint64_t sub_100648974()
{
  v1 = type metadata accessor for DiscoveryState.Mode(0);
  v52 = *(v1 - 8);
  v53 = v1;
  v2 = *(v52 + 64);
  __chkstk_darwin(v1);
  v47 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_1000BC4D4(&unk_1016B7C00, &qword_1013B4C50);
  v4 = *(*(v49 - 8) + 64);
  __chkstk_darwin(v49);
  v51 = &v47 - v5;
  v6 = sub_1000BC4D4(&qword_1016A68C8, &qword_1013B4C58);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v48 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v12 = &v47 - v11;
  v13 = __chkstk_darwin(v10);
  v50 = &v47 - v14;
  __chkstk_darwin(v13);
  v16 = &v47 - v15;
  v17 = type metadata accessor for DiscoveryState(0);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = __chkstk_darwin(v17);
  v22 = &v47 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v24 = &v47 - v23;
  swift_beginAccess();
  v25 = *(v0 + 136);
  swift_storeEnumTagMultiPayload();
  v26 = *(v25 + 16);

  v27 = 0;
  while (v26 != v27)
  {
    v28 = v27 + 1;
    v29 = sub_100649DB4(v25 + ((*(v18 + 80) + 32) & ~*(v18 + 80)) + *(v18 + 72) * v27, v24);
    v27 = v28;
    if (v29)
    {

      sub_10064C30C(v24, type metadata accessor for DiscoveryState);
      v30 = v53;
      goto LABEL_6;
    }
  }

  sub_10064C30C(v24, type metadata accessor for DiscoveryState);
  sub_100648FF4(v16);
  v30 = v53;
  v31 = 1;
  v32 = (*(v52 + 48))(v16, 1, v53);
  sub_10000B3A8(v16, &qword_1016A68C8, &qword_1013B4C58);
  if (v32 != 1)
  {
    return v31 & 1;
  }

LABEL_6:
  v33 = *(v0 + 136);
  swift_storeEnumTagMultiPayload();
  v34 = *(v33 + 16);

  v35 = 0;
  do
  {
    if (v34 == v35)
    {

      sub_10064C30C(v22, type metadata accessor for DiscoveryState);
      v31 = 0;
      return v31 & 1;
    }

    v36 = v35 + 1;
    v37 = sub_100649DB4(v33 + ((*(v18 + 80) + 32) & ~*(v18 + 80)) + *(v18 + 72) * v35, v22);
    v35 = v36;
  }

  while ((v37 & 1) == 0);

  sub_10064C30C(v22, type metadata accessor for DiscoveryState);
  v38 = v50;
  sub_100648FF4(v50);
  v39 = sub_1000BC4D4(&unk_1016B7BF0, &qword_1013B4AF0);
  (*(*(v39 - 8) + 56))(v12, 2, 4, v39);
  v40 = v52;
  (*(v52 + 56))(v12, 0, 1, v30);
  v41 = *(v49 + 48);
  v42 = v51;
  sub_10064C484(v38, v51);
  sub_10064C484(v12, v42 + v41);
  v43 = *(v40 + 48);
  if (v43(v42, 1, v30) == 1)
  {
    sub_10000B3A8(v12, &qword_1016A68C8, &qword_1013B4C58);
    sub_10000B3A8(v38, &qword_1016A68C8, &qword_1013B4C58);
    if (v43(v42 + v41, 1, v30) == 1)
    {
      sub_10000B3A8(v42, &qword_1016A68C8, &qword_1013B4C58);
      v31 = 1;
      return v31 & 1;
    }
  }

  else
  {
    v44 = v48;
    sub_10064C484(v42, v48);
    if (v43(v42 + v41, 1, v30) != 1)
    {
      v45 = v47;
      sub_10064C36C(v42 + v41, v47, type metadata accessor for DiscoveryState.Mode);
      v31 = sub_100649A24(v44, v45);
      sub_10064C30C(v45, type metadata accessor for DiscoveryState.Mode);
      sub_10000B3A8(v12, &qword_1016A68C8, &qword_1013B4C58);
      sub_10000B3A8(v38, &qword_1016A68C8, &qword_1013B4C58);
      sub_10064C30C(v44, type metadata accessor for DiscoveryState.Mode);
      sub_10000B3A8(v42, &qword_1016A68C8, &qword_1013B4C58);
      return v31 & 1;
    }

    sub_10000B3A8(v12, &qword_1016A68C8, &qword_1013B4C58);
    sub_10000B3A8(v38, &qword_1016A68C8, &qword_1013B4C58);
    sub_10064C30C(v44, type metadata accessor for DiscoveryState.Mode);
  }

  sub_10000B3A8(v42, &unk_1016B7C00, &qword_1013B4C50);
  v31 = 0;
  return v31 & 1;
}

uint64_t sub_100648FF4@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for DiscoveryState(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v20 - v10;
  __chkstk_darwin(v9);
  v13 = &v20 - v12;
  swift_beginAccess();
  v14 = *(v1 + 136);
  v15 = *(v14 + 16);

  if (v15)
  {
    while (v15 <= *(v14 + 16))
    {
      --v15;
      v18 = v14 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v15;
      sub_10064C3D4(v18, v11, type metadata accessor for DiscoveryState);
      sub_10064C36C(v11, v8, type metadata accessor for DiscoveryState);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload <= 3 && EnumCaseMultiPayload != 2)
      {
        sub_10064C30C(v8, type metadata accessor for DiscoveryState);
        sub_10064C3D4(v18, v13, type metadata accessor for DiscoveryState);

        sub_1006480D0(a1);
        return sub_10064C30C(v13, type metadata accessor for DiscoveryState);
      }

      result = sub_10064C30C(v8, type metadata accessor for DiscoveryState);
      if (!v15)
      {
        goto LABEL_2;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_2:

    v17 = type metadata accessor for DiscoveryState.Mode(0);
    return (*(*(v17 - 8) + 56))(a1, 1, 1, v17);
  }

  return result;
}

uint64_t sub_100649254()
{
  v1 = type metadata accessor for DiscoveryState(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v1);
  v31 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v30 = &v30 - v7;
  v8 = __chkstk_darwin(v6);
  v10 = &v30 - v9;
  __chkstk_darwin(v8);
  v12 = &v30 - v11;
  v13 = sub_1000BC4D4(&qword_1016A68C0, &qword_1013B4C48);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v33 = &v30 - v15;
  swift_beginAccess();
  v32 = v0;
  v16 = *(v0 + 136);
  v17 = *(v16 + 16);

  if (v17)
  {
    while (v17 <= *(v16 + 16))
    {
      --v17;
      v19 = v16 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v17;
      sub_10064C3D4(v19, v12, type metadata accessor for DiscoveryState);
      sub_10064C36C(v12, v10, type metadata accessor for DiscoveryState);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      result = sub_10064C30C(v10, type metadata accessor for DiscoveryState);
      if (EnumCaseMultiPayload == 3)
      {
        v23 = v33;
        sub_10064C3D4(v19, v33, type metadata accessor for DiscoveryState);

        (*(v2 + 56))(v23, 0, 1, v1);
        sub_10000B3A8(v23, &qword_1016A68C0, &qword_1013B4C48);
        v24 = OBJC_IVAR____TtC12searchpartyd28DiscoveryServiceStateManager_state;
        v25 = v32;
        swift_beginAccess();
        v26 = v25 + v24;
        v27 = v30;
        sub_10064C3D4(v26, v30, type metadata accessor for DiscoveryState);
        v28 = v31;
        swift_storeEnumTagMultiPayload();
        v29 = sub_100649DB4(v27, v28);
        sub_10064C30C(v28, type metadata accessor for DiscoveryState);
        sub_10064C30C(v27, type metadata accessor for DiscoveryState);
        v22 = v29 ^ 1;
        return v22 & 1;
      }

      if (!v17)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_5:

    v21 = v33;
    (*(v2 + 56))(v33, 1, 1, v1);
    sub_10000B3A8(v21, &qword_1016A68C0, &qword_1013B4C48);
    v22 = 0;
    return v22 & 1;
  }

  return result;
}

uint64_t sub_1006495A8()
{
  v1 = v0[15];
  sub_1000BB27C(v0[14]);
  v2 = v0[16];

  v3 = v0[17];

  sub_10064C30C(v0 + OBJC_IVAR____TtC12searchpartyd28DiscoveryServiceStateManager_state, type metadata accessor for DiscoveryState);
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_10064963C()
{
  result = type metadata accessor for DiscoveryState(319);
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

uint64_t sub_1006496F0()
{
  result = type metadata accessor for DiscoveryState.Mode(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100649768()
{
  sub_1006497C0();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

void sub_1006497C0()
{
  if (!qword_1016A6880)
  {
    v0 = type metadata accessor for UUID();
    if (!v1)
    {
      atomic_store(v0, &qword_1016A6880);
    }
  }
}

uint64_t sub_100649850()
{
  swift_beginAccess();
  v1 = *(v0 + 136);
}

uint64_t sub_100649888@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12searchpartyd28DiscoveryServiceStateManager_state;
  swift_beginAccess();
  return sub_10064C3D4(v1 + v3, a1, type metadata accessor for DiscoveryState);
}

uint64_t sub_1006498F4()
{
  swift_beginAccess();
  v1 = *(v0 + 128);
}

uint64_t sub_10064992C(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 112);
  v4 = *(v2 + 120);
  *(v2 + 112) = a1;
  *(v2 + 120) = a2;

  return sub_1000BB27C(v3);
}

uint64_t sub_100649978(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100014650;

  return (sub_10064A314)(a1);
}

uint64_t sub_100649A24(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DiscoveryState.Mode(0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000BC4D4(&qword_1016A68B8, &qword_1013B4C40);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13 - 8);
  v17 = &v25 - v16;
  v18 = *(v15 + 56);
  sub_10064C3D4(a1, &v25 - v16, type metadata accessor for DiscoveryState.Mode);
  sub_10064C3D4(a2, &v17[v18], type metadata accessor for DiscoveryState.Mode);
  v19 = sub_1000BC4D4(&unk_1016B7BF0, &qword_1013B4AF0);
  v20 = *(*(v19 - 8) + 48);
  v21 = v20(v17, 4, v19);
  if (v21 <= 1)
  {
    if (!v21)
    {
      sub_10064C3D4(v17, v12, type metadata accessor for DiscoveryState.Mode);
      if (!v20(&v17[v18], 4, v19))
      {
        (*(v5 + 32))(v8, &v17[v18], v4);
        v22 = static UUID.== infix(_:_:)();
        v24 = *(v5 + 8);
        v24(v8, v4);
        v24(v12, v4);
        sub_10064C30C(v17, type metadata accessor for DiscoveryState.Mode);
        return v22 & 1;
      }

      (*(v5 + 8))(v12, v4);
      goto LABEL_12;
    }

    if (v20(&v17[v18], 4, v19) == 1)
    {
      goto LABEL_10;
    }

LABEL_12:
    sub_10000B3A8(v17, &qword_1016A68B8, &qword_1013B4C40);
    v22 = 0;
    return v22 & 1;
  }

  if (v21 == 2)
  {
    if (v20(&v17[v18], 4, v19) == 2)
    {
      goto LABEL_10;
    }

    goto LABEL_12;
  }

  if (v21 != 3)
  {
    if (v20(&v17[v18], 4, v19) == 4)
    {
      goto LABEL_10;
    }

    goto LABEL_12;
  }

  if (v20(&v17[v18], 4, v19) != 3)
  {
    goto LABEL_12;
  }

LABEL_10:
  sub_10064C30C(v17, type metadata accessor for DiscoveryState.Mode);
  v22 = 1;
  return v22 & 1;
}

uint64_t sub_100649DB4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DiscoveryState.Mode(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v43 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v42 = &v40 - v9;
  v10 = __chkstk_darwin(v8);
  v41 = &v40 - v11;
  __chkstk_darwin(v10);
  v40 = &v40 - v12;
  v13 = type metadata accessor for DiscoveryState(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v15);
  v20 = &v40 - v19;
  v21 = __chkstk_darwin(v18);
  v23 = &v40 - v22;
  __chkstk_darwin(v21);
  v25 = &v40 - v24;
  v26 = sub_1000BC4D4(&qword_1016A68B0, &qword_1013B4C38);
  v27 = *(*(v26 - 8) + 64);
  v28 = __chkstk_darwin(v26 - 8);
  v30 = &v40 - v29;
  v31 = *(v28 + 56);
  sub_10064C3D4(a1, &v40 - v29, type metadata accessor for DiscoveryState);
  sub_10064C3D4(a2, &v30[v31], type metadata accessor for DiscoveryState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        sub_10064C3D4(v30, v20, type metadata accessor for DiscoveryState);
        if (swift_getEnumCaseMultiPayload() != 2)
        {
          v17 = v20;
          goto LABEL_26;
        }

        v33 = v42;
        sub_10064C36C(&v30[v31], v42, type metadata accessor for DiscoveryState.Mode);
        v34 = sub_100649A24(v20, v33);
        sub_10064C30C(v33, type metadata accessor for DiscoveryState.Mode);
        v35 = v20;
      }

      else
      {
        sub_10064C3D4(v30, v17, type metadata accessor for DiscoveryState);
        if (swift_getEnumCaseMultiPayload() != 3)
        {
          goto LABEL_26;
        }

        v37 = v43;
        sub_10064C36C(&v30[v31], v43, type metadata accessor for DiscoveryState.Mode);
        v34 = sub_100649A24(v17, v37);
        sub_10064C30C(v37, type metadata accessor for DiscoveryState.Mode);
        v35 = v17;
      }
    }

    else if (EnumCaseMultiPayload)
    {
      sub_10064C3D4(v30, v23, type metadata accessor for DiscoveryState);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        v17 = v23;
        goto LABEL_26;
      }

      v36 = v41;
      sub_10064C36C(&v30[v31], v41, type metadata accessor for DiscoveryState.Mode);
      v34 = sub_100649A24(v23, v36);
      sub_10064C30C(v36, type metadata accessor for DiscoveryState.Mode);
      v35 = v23;
    }

    else
    {
      sub_10064C3D4(v30, v25, type metadata accessor for DiscoveryState);
      if (swift_getEnumCaseMultiPayload())
      {
        v17 = v25;
LABEL_26:
        sub_10064C30C(v17, type metadata accessor for DiscoveryState.Mode);
        goto LABEL_27;
      }

      v38 = v40;
      sub_10064C36C(&v30[v31], v40, type metadata accessor for DiscoveryState.Mode);
      v34 = sub_100649A24(v25, v38);
      sub_10064C30C(v38, type metadata accessor for DiscoveryState.Mode);
      v35 = v25;
    }

    sub_10064C30C(v35, type metadata accessor for DiscoveryState.Mode);
    sub_10064C30C(v30, type metadata accessor for DiscoveryState);
    return v34 & 1;
  }

  if (EnumCaseMultiPayload > 5)
  {
    if (EnumCaseMultiPayload == 6)
    {
      if (swift_getEnumCaseMultiPayload() != 6)
      {
        goto LABEL_27;
      }
    }

    else if (swift_getEnumCaseMultiPayload() != 7)
    {
LABEL_27:
      sub_10000B3A8(v30, &qword_1016A68B0, &qword_1013B4C38);
      v34 = 0;
      return v34 & 1;
    }
  }

  else if (EnumCaseMultiPayload == 4)
  {
    if (swift_getEnumCaseMultiPayload() != 4)
    {
      goto LABEL_27;
    }
  }

  else if (swift_getEnumCaseMultiPayload() != 5)
  {
    goto LABEL_27;
  }

  sub_10064C30C(v30, type metadata accessor for DiscoveryState);
  v34 = 1;
  return v34 & 1;
}

uint64_t sub_10064A314(uint64_t a1)
{
  v2[81] = v1;
  v2[80] = a1;
  v3 = type metadata accessor for StateManagerError();
  v2[82] = v3;
  v4 = *(v3 - 8);
  v2[83] = v4;
  v5 = *(v4 + 64) + 15;
  v2[84] = swift_task_alloc();
  v6 = *(*(type metadata accessor for DiscoveryState.Mode(0) - 8) + 64) + 15;
  v2[85] = swift_task_alloc();
  v2[86] = swift_task_alloc();
  v2[87] = swift_task_alloc();
  v2[88] = swift_task_alloc();
  v2[89] = swift_task_alloc();
  v7 = sub_1000BC4D4(&qword_1016A68B0, &qword_1013B4C38);
  v2[90] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v2[91] = swift_task_alloc();
  v9 = type metadata accessor for DiscoveryState(0);
  v2[92] = v9;
  v10 = *(v9 - 8);
  v2[93] = v10;
  v11 = *(v10 + 64) + 15;
  v2[94] = swift_task_alloc();
  v2[95] = swift_task_alloc();
  v2[96] = swift_task_alloc();
  v2[97] = swift_task_alloc();
  v2[98] = swift_task_alloc();
  v2[99] = swift_task_alloc();
  v2[100] = swift_task_alloc();
  v2[101] = swift_task_alloc();
  v2[102] = swift_task_alloc();
  v2[103] = swift_task_alloc();
  v2[104] = swift_task_alloc();
  v2[105] = swift_task_alloc();
  v2[106] = swift_task_alloc();
  v2[107] = swift_task_alloc();
  v2[108] = swift_task_alloc();
  v2[109] = swift_task_alloc();
  v2[110] = swift_task_alloc();
  v2[111] = swift_task_alloc();
  v2[112] = swift_task_alloc();

  return _swift_task_switch(sub_10064A5A4, v1, 0);
}

uint64_t sub_10064A5A4()
{
  v174 = v0;
  v1 = v0[112];
  v2 = v0[81];
  v3 = v0[80];
  v4 = OBJC_IVAR____TtC12searchpartyd28DiscoveryServiceStateManager_state;
  swift_beginAccess();
  sub_10064C3D4(v2 + v4, v1, type metadata accessor for DiscoveryState);
  LOBYTE(v3) = sub_100649DB4(v1, v3);
  sub_10064C30C(v1, type metadata accessor for DiscoveryState);
  if (v3)
  {
    goto LABEL_114;
  }

  v5 = v0[92];
  v6 = v0[91];
  v7 = v0[80];
  v8 = *(v0[90] + 48);
  sub_10064C3D4(v2 + v4, v6, type metadata accessor for DiscoveryState);
  sub_10064C3D4(v7, v6 + v8, type metadata accessor for DiscoveryState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload != 6)
      {
        v33 = v0[92];
        v34 = swift_getEnumCaseMultiPayload();
        if (v34 == 4)
        {
          v55 = v0[91];
          v56 = v0[81];
          v57 = v0[80];
          swift_beginAccess();
          v58 = *(v56 + 136);
          *(v56 + 136) = _swiftEmptyArrayStorage;

          swift_beginAccess();
          sub_10064C2A8(v57, v2 + v4);
LABEL_59:
          swift_endAccess();
          sub_10064C30C(v6 + v8, type metadata accessor for DiscoveryState);
          v41 = v55;
          goto LABEL_60;
        }

        if (v34)
        {
          goto LABEL_104;
        }

        v35 = v0[96];
        sub_10064C3D4(v6 + v8, v35, type metadata accessor for DiscoveryState);
        v36 = sub_1000BC4D4(&unk_1016B7BF0, &qword_1013B4AF0);
        if ((*(*(v36 - 8) + 48))(v35, 4, v36) == 2)
        {
          goto LABEL_94;
        }

        v22 = v0[96];
        goto LABEL_103;
      }

      v23 = v0[92];
      v24 = swift_getEnumCaseMultiPayload();
      if (v24 == 4)
      {
        v18 = v0[91];
        v52 = v0[81];
        v53 = v0[80];
        swift_beginAccess();
        v54 = *(v52 + 136);
        *(v52 + 136) = _swiftEmptyArrayStorage;

        swift_beginAccess();
        sub_10064C2A8(v53, v2 + v4);
        goto LABEL_57;
      }

      if (v24 != 7)
      {
        goto LABEL_104;
      }
    }

    else
    {
      if (EnumCaseMultiPayload != 4)
      {
        v27 = v0[92];
        if (!swift_getEnumCaseMultiPayload())
        {
          goto LABEL_94;
        }

        goto LABEL_104;
      }

      v16 = v0[92];
      v17 = swift_getEnumCaseMultiPayload();
      if (!v17)
      {
        goto LABEL_94;
      }

      if (v17 != 5)
      {
        goto LABEL_104;
      }
    }

    v18 = v0[91];
    v19 = v0[80];
    swift_beginAccess();
    sub_10064C2A8(v19, v2 + v4);
LABEL_57:
    swift_endAccess();
    v41 = v18;
    goto LABEL_60;
  }

  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v20 = v0[92];
      sub_10064C3D4(v0[91], v0[102], type metadata accessor for DiscoveryState);
      v21 = swift_getEnumCaseMultiPayload();
      if (!v21)
      {
        v49 = v0[102];
        v50 = v0[101];
        sub_10064C3D4(v6 + v8, v50, type metadata accessor for DiscoveryState);
        v51 = sub_100649A24(v49, v50);
        sub_10064C30C(v50, type metadata accessor for DiscoveryState.Mode);
        sub_10064C30C(v49, type metadata accessor for DiscoveryState.Mode);
        if (v51)
        {
          goto LABEL_94;
        }

        goto LABEL_104;
      }

      v10 = v0 + 102;
      if (v21 == 6)
      {
        goto LABEL_41;
      }

      goto LABEL_18;
    }

    v10 = v0 + 100;
    v28 = v0[92];
    sub_10064C3D4(v0[91], v0[100], type metadata accessor for DiscoveryState);
    v29 = swift_getEnumCaseMultiPayload();
    v22 = v0[100];
    if (v29 > 2)
    {
      if (v29 != 3)
      {
        if (v29 != 6)
        {
          goto LABEL_103;
        }

        goto LABEL_45;
      }

      v42 = v0 + 99;
      v169 = v0;
      sub_10064C3D4(v6 + v8, v0[99], type metadata accessor for DiscoveryState);
      v89 = sub_1000BC4D4(&unk_1016B7BF0, &qword_1013B4AF0);
      v90 = *(*(v89 - 8) + 48);
      v91 = v90(v22, 4, v89);
      if (v91 == 3 || v91 == 1)
      {
        v22 = *v42;
        if (v90(*v42, 4, v89) != 4)
        {
          goto LABEL_103;
        }

        goto LABEL_102;
      }

      if (v91)
      {
        goto LABEL_87;
      }

      v92 = *v10;
      v93 = v90(*v42, 4, v89);
      v94 = type metadata accessor for UUID();
      (*(*(v94 - 8) + 8))(v92, v94);
      if (v93 == 4)
      {
LABEL_102:
        v105 = v0[91];
        v106 = v0[80];
        sub_10064C30C(v6 + v8, type metadata accessor for DiscoveryState);
        sub_10064C30C(v105, type metadata accessor for DiscoveryState);
        swift_beginAccess();
        sub_10064C2A8(v106, v2 + v4);
        goto LABEL_42;
      }

LABEL_86:
      v22 = *v42;
      goto LABEL_103;
    }

    if (v29 == 1)
    {
      v42 = v0 + 98;
      v169 = v0;
      sub_10064C3D4(v6 + v8, v0[98], type metadata accessor for DiscoveryState);
      v80 = sub_1000BC4D4(&unk_1016B7BF0, &qword_1013B4AF0);
      v81 = *(*(v80 - 8) + 48);
      v82 = v81(v22, 4, v80);
      if (v82 == 3 || v82 == 1)
      {
        v22 = *v42;
        if (v81(*v42, 4, v80) != 4)
        {
          goto LABEL_103;
        }

        goto LABEL_102;
      }

      if (v82)
      {
        goto LABEL_87;
      }

      v83 = *v10;
      v84 = v81(*v42, 4, v80);
      v85 = type metadata accessor for UUID();
      (*(*(v85 - 8) + 8))(v83, v85);
      if (v84 == 4)
      {
        goto LABEL_102;
      }

      goto LABEL_86;
    }

    if (v29 == 2)
    {
      v30 = v0[97];
      v31 = v0[85];
      sub_10064C3D4(v6 + v8, v30, type metadata accessor for DiscoveryState);
      sub_10064C36C(v22, v31, type metadata accessor for DiscoveryState.Mode);
      v32 = sub_100649A24(v31, v30);
      sub_10064C30C(v30, type metadata accessor for DiscoveryState.Mode);
      sub_10064C30C(v31, type metadata accessor for DiscoveryState.Mode);
      if (v32)
      {
        goto LABEL_94;
      }

      goto LABEL_104;
    }

LABEL_103:
    sub_10064C30C(v22, type metadata accessor for DiscoveryState.Mode);
    goto LABEL_104;
  }

  if (!EnumCaseMultiPayload)
  {
    v10 = v0 + 111;
    v11 = v0[92];
    sub_10064C3D4(v0[91], v0[111], type metadata accessor for DiscoveryState);
    v12 = swift_getEnumCaseMultiPayload();
    if (v12 <= 1)
    {
      if (v12)
      {
        if (v12 == 1)
        {
          v13 = v0[111];
          v14 = v0[108];
          v15 = v0[89];
          sub_10064C3D4(v6 + v8, v14, type metadata accessor for DiscoveryState);
          sub_10064C36C(v13, v15, type metadata accessor for DiscoveryState.Mode);
          LOBYTE(v13) = sub_100649A24(v15, v14);
          sub_10064C30C(v14, type metadata accessor for DiscoveryState.Mode);
          sub_10064C30C(v15, type metadata accessor for DiscoveryState.Mode);
          if (v13)
          {
            goto LABEL_94;
          }

          goto LABEL_104;
        }

        goto LABEL_18;
      }

      v73 = v0[111];
      v42 = v0 + 110;
      v169 = v0;
      sub_10064C3D4(v6 + v8, v0[110], type metadata accessor for DiscoveryState);
      v74 = sub_1000BC4D4(&unk_1016B7BF0, &qword_1013B4AF0);
      v75 = *(*(v74 - 8) + 48);
      v76 = v75(v73, 4, v74);
      if (v76 != 3 && v76 != 1)
      {
        if (!v76)
        {
          v77 = *v10;
          v78 = v75(*v42, 4, v74);
          v79 = type metadata accessor for UUID();
          (*(*(v79 - 8) + 8))(v77, v79);
          if (v78 != 4)
          {
            goto LABEL_86;
          }

          goto LABEL_102;
        }

LABEL_87:
        v22 = *v10;
        sub_10064C30C(*v42, type metadata accessor for DiscoveryState.Mode);
        v0 = v169;
        goto LABEL_103;
      }

      v22 = *v42;
      if (v75(*v42, 4, v74) != 4)
      {
        goto LABEL_103;
      }

      goto LABEL_102;
    }

    if (v12 == 2)
    {
      v86 = v0[111];
      v42 = v0 + 109;
      v169 = v0;
      sub_10064C3D4(v6 + v8, v0[109], type metadata accessor for DiscoveryState);
      v87 = sub_1000BC4D4(&unk_1016B7BF0, &qword_1013B4AF0);
      v88 = *(*(v87 - 8) + 48);
      if (v88(v86, 4, v87) == 4)
      {
        v22 = *v42;
        if (v88(*v42, 4, v87) == 4)
        {
          goto LABEL_94;
        }

        goto LABEL_103;
      }

      goto LABEL_87;
    }

    if (v12 == 6)
    {
LABEL_41:
      v37 = v0[91];
      v38 = v0[80];
      sub_10064C30C(*v10, type metadata accessor for DiscoveryState.Mode);
      sub_10064C30C(v6 + v8, type metadata accessor for DiscoveryState);
      sub_10064C30C(v37, type metadata accessor for DiscoveryState);
      swift_beginAccess();
      sub_10064C2A8(v38, v2 + v4);
LABEL_42:
      swift_endAccess();
      goto LABEL_61;
    }

LABEL_18:
    v22 = *v10;
    goto LABEL_103;
  }

  v25 = v0[92];
  sub_10064C3D4(v0[91], v0[107], type metadata accessor for DiscoveryState);
  v26 = swift_getEnumCaseMultiPayload();
  v22 = v0[107];
  if (v26 <= 1)
  {
    if (!v26)
    {
      v101 = v0[103];
      v102 = v0[86];
      sub_10064C3D4(v6 + v8, v101, type metadata accessor for DiscoveryState);
      sub_10064C36C(v22, v102, type metadata accessor for DiscoveryState.Mode);
      v103 = sub_100649A24(v102, v101);
      sub_10064C30C(v101, type metadata accessor for DiscoveryState.Mode);
      sub_10064C30C(v102, type metadata accessor for DiscoveryState.Mode);
      if (v103)
      {
LABEL_94:
        v55 = v0[91];
        v104 = v0[80];
        swift_beginAccess();
        sub_10064C2A8(v104, v2 + v4);
        goto LABEL_59;
      }

LABEL_104:
      v107 = v0[112];
      v108 = v0[84];
      v109 = v0[83];
      v110 = v0[82];
      v111 = v0[81];
      v112 = v0[80];
      sub_10064C3D4(v2 + v4, v107, type metadata accessor for DiscoveryState);
      v172 = sub_100648264();
      v173 = v113;
      sub_10064C30C(v107, type metadata accessor for DiscoveryState);
      v114._countAndFlagsBits = 540945696;
      v114._object = 0xE400000000000000;
      String.append(_:)(v114);
      v115._countAndFlagsBits = sub_100648264();
      String.append(_:)(v115);

      v116._countAndFlagsBits = 46;
      v116._object = 0xE100000000000000;
      String.append(_:)(v116);
      v117 = v173;
      *v108 = v172;
      v108[1] = v117;
      (*(v109 + 104))(v108, enum case for StateManagerError.unsupportedTransition(_:), v110);
      swift_beginAccess();
      v118 = *(v111 + 128);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v111 + 128) = v118;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v118 = sub_100A5D7CC(0, v118[2] + 1, 1, v118);
        *(v111 + 128) = v118;
      }

      v121 = v118[2];
      v120 = v118[3];
      if (v121 >= v120 >> 1)
      {
        v118 = sub_100A5D7CC(v120 > 1, v121 + 1, 1, v118);
      }

      v122 = v0[84];
      v123 = v0[83];
      v124 = v0[82];
      v118[2] = v121 + 1;
      (*(v123 + 32))(v118 + ((*(v123 + 80) + 32) & ~*(v123 + 80)) + *(v123 + 72) * v121, v122, v124);
      *(v111 + 128) = v118;
      swift_endAccess();
      if (qword_101694D40 != -1)
      {
        swift_once();
      }

      v125 = v0[95];
      v126 = v0[81];
      v127 = v0[80];
      v128 = type metadata accessor for Logger();
      sub_1000076D4(v128, qword_10177BCD0);
      sub_10064C3D4(v127, v125, type metadata accessor for DiscoveryState);

      v129 = Logger.logObject.getter();
      v130 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v129, v130))
      {
        v131 = v0[112];
        v132 = v0[95];
        v133 = swift_slowAlloc();
        v172 = swift_slowAlloc();
        *v133 = 136446466;
        sub_10064C3D4(v2 + v4, v131, type metadata accessor for DiscoveryState);
        v134 = sub_100648264();
        v136 = v135;
        sub_10064C30C(v131, type metadata accessor for DiscoveryState);
        v137 = sub_1000136BC(v134, v136, &v172);

        *(v133 + 4) = v137;
        *(v133 + 12) = 2082;
        v138 = sub_100648264();
        v140 = v139;
        sub_10064C30C(v132, type metadata accessor for DiscoveryState);
        v141 = sub_1000136BC(v138, v140, &v172);

        *(v133 + 14) = v141;
        _os_log_impl(&_mh_execute_header, v129, v130, "Unsupported state transition: %{public}s -> %{public}s.", v133, 0x16u);
        swift_arrayDestroy();
      }

      else
      {
        v142 = v0[95];

        sub_10064C30C(v142, type metadata accessor for DiscoveryState);
      }

      sub_10000B3A8(v0[91], &qword_1016A68B0, &qword_1013B4C38);
      goto LABEL_114;
    }

    if (v26 == 1)
    {
      v42 = v0 + 106;
      v169 = v0;
      sub_10064C3D4(v6 + v8, v0[106], type metadata accessor for DiscoveryState);
      v43 = sub_1000BC4D4(&unk_1016B7BF0, &qword_1013B4AF0);
      v44 = *(*(v43 - 8) + 48);
      v45 = v44(v22, 4, v43);
      if (v45 == 3 || v45 == 1)
      {
        v22 = *v42;
        if (v44(*v42, 4, v43) != 4)
        {
          goto LABEL_103;
        }

        goto LABEL_102;
      }

      v10 = v0 + 107;
      if (v45)
      {
        goto LABEL_87;
      }

      v46 = *v10;
      v47 = v44(*v42, 4, v43);
      v48 = type metadata accessor for UUID();
      (*(*(v48 - 8) + 8))(v46, v48);
      if (v47 == 4)
      {
        goto LABEL_102;
      }

      goto LABEL_86;
    }

    goto LABEL_103;
  }

  if (v26 == 2)
  {
    v95 = v0[105];
    v96 = v0[88];
    sub_10064C3D4(v6 + v8, v95, type metadata accessor for DiscoveryState);
    sub_10064C36C(v22, v96, type metadata accessor for DiscoveryState.Mode);
    v97 = sub_100649A24(v96, v95);
    sub_10064C30C(v95, type metadata accessor for DiscoveryState.Mode);
    sub_10064C30C(v96, type metadata accessor for DiscoveryState.Mode);
    if (v97)
    {
      goto LABEL_94;
    }

    goto LABEL_104;
  }

  if (v26 == 3)
  {
    v98 = v0[104];
    v99 = v0[87];
    sub_10064C3D4(v6 + v8, v98, type metadata accessor for DiscoveryState);
    sub_10064C36C(v22, v99, type metadata accessor for DiscoveryState.Mode);
    v100 = sub_100649A24(v99, v98);
    sub_10064C30C(v98, type metadata accessor for DiscoveryState.Mode);
    sub_10064C30C(v99, type metadata accessor for DiscoveryState.Mode);
    if (v100)
    {
      goto LABEL_94;
    }

    goto LABEL_104;
  }

  if (v26 != 6)
  {
    goto LABEL_103;
  }

LABEL_45:
  v39 = v0[91];
  v40 = v0[80];
  swift_beginAccess();
  sub_10064C2A8(v40, v2 + v4);
  swift_endAccess();
  sub_10064C30C(v22, type metadata accessor for DiscoveryState.Mode);
  sub_10064C30C(v6 + v8, type metadata accessor for DiscoveryState);
  v41 = v39;
LABEL_60:
  sub_10064C30C(v41, type metadata accessor for DiscoveryState);
LABEL_61:
  v59 = v0[81];
  sub_10064C3D4(v2 + v4, v0[94], type metadata accessor for DiscoveryState);
  swift_beginAccess();
  v60 = *(v59 + 136);
  v61 = swift_isUniquelyReferenced_nonNull_native();
  *(v59 + 136) = v60;
  if ((v61 & 1) == 0)
  {
    v60 = sub_100A5D7A4(0, v60[2] + 1, 1, v60);
    *(v59 + 136) = v60;
  }

  v63 = v60[2];
  v62 = v60[3];
  if (v63 >= v62 >> 1)
  {
    v60 = sub_100A5D7A4(v62 > 1, v63 + 1, 1, v60);
  }

  v64 = v0[94];
  v65 = v0[93];
  v66 = v0[81];
  v60[2] = v63 + 1;
  sub_10064C36C(v64, v60 + ((*(v65 + 80) + 32) & ~*(v65 + 80)) + *(v65 + 72) * v63, type metadata accessor for DiscoveryState);
  *(v59 + 136) = v60;
  swift_endAccess();
  v67 = *(v66 + 112);
  v0[113] = v67;
  if (v67)
  {
    v68 = v0[112];
    v0[114] = *(v0[81] + 120);
    sub_10064C3D4(v2 + v4, v68, type metadata accessor for DiscoveryState);

    v170 = (v67 + *v67);
    v69 = v67[1];
    v70 = swift_task_alloc();
    v0[115] = v70;
    *v70 = v0;
    v70[1] = sub_10064BE2C;
    v71 = v0[112];

    return v170(v71);
  }

LABEL_114:
  v143 = v0[112];
  v144 = v0[111];
  v145 = v0[110];
  v146 = v0[109];
  v147 = v0[108];
  v148 = v0[107];
  v149 = v0[106];
  v150 = v0[105];
  v151 = v0[104];
  v152 = v0[103];
  v154 = v0[102];
  v155 = v0[101];
  v156 = v0[100];
  v157 = v0[99];
  v158 = v0[98];
  v159 = v0[97];
  v160 = v0[96];
  v161 = v0[95];
  v162 = v0[94];
  v163 = v0[91];
  v164 = v0[89];
  v165 = v0[88];
  v166 = v0[87];
  v167 = v0[86];
  v168 = v0[85];
  v171 = v0[84];

  v153 = v0[1];

  return v153();
}

uint64_t sub_10064BE2C()
{
  v1 = *v0;
  v2 = *(*v0 + 920);
  v3 = *(*v0 + 912);
  v4 = *(*v0 + 904);
  v5 = *(*v0 + 896);
  v34 = *v0;

  sub_1000BB27C(v4);
  sub_10064C30C(v5, type metadata accessor for DiscoveryState);
  v6 = v1[112];
  v7 = v1[111];
  v8 = v1[110];
  v9 = v1[109];
  v10 = v1[108];
  v11 = v1[107];
  v12 = v1[106];
  v13 = v1[105];
  v14 = v1[104];
  v18 = v1[103];
  v19 = v1[102];
  v20 = v1[101];
  v21 = v1[100];
  v22 = v1[99];
  v23 = v1[98];
  v24 = v1[97];
  v25 = v1[96];
  v26 = v1[95];
  v27 = v1[94];
  v28 = v1[91];
  v29 = v1[89];
  v30 = v1[88];
  v31 = v1[87];
  v32 = v1[86];
  v33 = v1[85];
  v15 = v1[84];

  v16 = *(v34 + 8);

  return v16();
}

uint64_t sub_10064C2A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DiscoveryState(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_10064C30C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10064C36C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10064C3D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10064C43C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10064C484(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_1016A68C8, &qword_1013B4C58);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

ValueMetadata *sub_10064C4F4(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    if (a1 > 8u)
    {
      if (a1 == 9)
      {
        goto LABEL_16;
      }

      if (a1 == 10)
      {
        v1 = &type metadata for VerifyFindMyNetworkIdResponseV2Payload;
        sub_10064D6C4();
        return v1;
      }
    }

    else if (a1 != 6)
    {
      if (a1 != 7)
      {
        v1 = &type metadata for VerifyFindMyNetworkIdResponsePayload;
        sub_10064D718();
        return v1;
      }

LABEL_16:
      v1 = &type metadata for VerifyFindMyNetworkIdPayload;
      sub_10064D76C();
      return v1;
    }

    v1 = &type metadata for AccessoryCommandResponsePayload;
    sub_1003101C0();
    return v1;
  }

  if (a1 > 2u)
  {
    if (a1 == 3)
    {
      v1 = &type metadata for iCloudIdentifierResponsePayload;
      sub_10064D814();
    }

    else if (a1 == 4)
    {
      v1 = &type metadata for AccessoryGenericPayload;
      sub_10030FF74();
    }

    else
    {
      v1 = &type metadata for EncryptedSerialNumberResponsePayload;
      sub_10064D7C0();
    }
  }

  else if (a1)
  {
    if (a1 == 1)
    {
      v1 = &type metadata for GetiCloudIdentifierPayload;
      sub_10064D8BC();
    }

    else
    {
      v1 = &type metadata for PrimaryKeyResponsePayload;
      sub_10064D868();
    }
  }

  else
  {
    v1 = &type metadata for GetPrimaryKeyPayload;
    sub_10064D910();
  }

  return v1;
}

uint64_t sub_10064C60C(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    if (a1 > 8u)
    {
      v6 = 0xD000000000000018;
      v7 = 0xD000000000000023;
      if (a1 == 10)
      {
        v7 = 0xD000000000000020;
      }

      v8 = a1 == 9;
    }

    else
    {
      v6 = 0xD000000000000010;
      v7 = 0xD00000000000001ELL;
      if (a1 == 7)
      {
        v7 = 0xD000000000000016;
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
    v1 = 0x7972616D6972702ELL;
    v2 = 0xD000000000000019;
    v3 = 0xD00000000000001ELL;
    if (a1 == 4)
    {
      v3 = 0xD000000000000019;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0xD000000000000013;
    if (a1 == 1)
    {
      v4 = 0xD000000000000011;
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

uint64_t sub_10064C7A0()
{
  v1 = *(v0 + 24);
  v2 = (v1 >> 60) & 3 | (4 * *(v0 + 32));
  if (v2 <= 3)
  {
    if (v2 == 2)
    {
      v4 = 5;
    }

    else
    {
      v4 = 6;
    }

    if ((v1 >> 60) & 3 | (4 * *(v0 + 32)))
    {
      v5 = 3;
    }

    else
    {
      v5 = 2;
    }

    if (v2 <= 1)
    {
      return v5;
    }

    else
    {
      return v4;
    }
  }

  else if (((v1 >> 60) & 3 | (4 * *(v0 + 32))) <= 5u)
  {
    if (v2 == 4)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }

  else if (v2 == 6)
  {
    return 9;
  }

  else if (v2 == 7)
  {
    return 10;
  }

  else
  {
    v6 = *(v0 + 8);
    v7 = *(v0 + 16);
    v8 = v1 | *v0 | v7 | v6;
    if (v7 | v1 | v6)
    {
      v9 = 0;
    }

    else
    {
      v9 = *v0 == 1;
    }

    if (v9)
    {
      v10 = 1;
    }

    else
    {
      v10 = 4;
    }

    if (v8)
    {
      return v10;
    }

    else
    {
      return 0;
    }
  }
}

unint64_t sub_10064C85C@<X0>(uint64_t a1@<X8>)
{
  v4 = *v1;
  v3 = *(v1 + 8);
  v6 = *(v1 + 16);
  v5 = *(v1 + 24);
  v7 = (v5 >> 60) & 3 | (4 * *(v1 + 32));
  if (v7 <= 3)
  {
    if (((v5 >> 60) & 3 | (4 * *(v1 + 32))) > 1u)
    {
      if (v7 != 2)
      {
        v14 = v5 & 0xCFFFFFFFFFFFFFFFLL;
        *(a1 + 24) = &type metadata for AccessoryCommandResponsePayload;
        *(a1 + 32) = sub_1003101C0();
        v15 = swift_allocObject();
        *a1 = v15;
        *(v15 + 16) = v4;
        *(v15 + 22) = HIWORD(v4);
        *(v15 + 18) = v4 >> 16;
        *(v15 + 24) = v3;
        *(v15 + 32) = v6;
        *(v15 + 40) = v14;
        sub_100017D5C(v4, v3);
        v12 = v6;
        v13 = v14;
        goto LABEL_17;
      }

      v9 = v4 >> 16;
      v10 = v4 >> 8;
      *(a1 + 24) = &type metadata for EncryptedSerialNumberResponsePayload;
      v11 = sub_10064D7C0();
    }

    else
    {
      v9 = v4 >> 16;
      v10 = v4 >> 8;
      if (v7)
      {
        *(a1 + 24) = &type metadata for iCloudIdentifierResponsePayload;
        v11 = sub_10064D814();
      }

      else
      {
        *(a1 + 24) = &type metadata for PrimaryKeyResponsePayload;
        v11 = sub_10064D868();
      }
    }
  }

  else
  {
    if (((v5 >> 60) & 3 | (4 * *(v1 + 32))) <= 5u)
    {
      if (v7 != 4)
      {
        *(a1 + 24) = &type metadata for VerifyFindMyNetworkIdResponsePayload;
        result = sub_10064D718();
        *(a1 + 32) = result;
        *a1 = v4 & 1;
        return result;
      }
    }

    else if (v7 != 6)
    {
      if (v7 == 7)
      {
        *(a1 + 24) = &type metadata for VerifyFindMyNetworkIdResponseV2Payload;
        *(a1 + 32) = sub_10064D6C4();
        *a1 = v4;
        *(a1 + 8) = v3;
      }

      else
      {
        v16 = v6 | v3 | v5;
        if (v16 | v4)
        {
          if (v16 || v4 != 1)
          {
            *(a1 + 24) = &type metadata for AccessoryGenericPayload;
            result = sub_10030FF74();
          }

          else
          {
            *(a1 + 24) = &type metadata for GetiCloudIdentifierPayload;
            result = sub_10064D8BC();
          }
        }

        else
        {
          *(a1 + 24) = &type metadata for GetPrimaryKeyPayload;
          result = sub_10064D910();
        }

        *(a1 + 32) = result;
      }

      return result;
    }

    v9 = v4 >> 16;
    v10 = v4 >> 8;
    *(a1 + 24) = &type metadata for VerifyFindMyNetworkIdPayload;
    v11 = sub_10064D76C();
  }

  *(a1 + 32) = v11;
  *a1 = v4;
  *(a1 + 1) = v10;
  *(a1 + 6) = HIWORD(v4);
  *(a1 + 2) = v9;
  *(a1 + 8) = v3;
  v12 = v4;
  v13 = v3;
LABEL_17:

  return sub_100017D5C(v12, v13);
}

uint64_t sub_10064CACC(void *a1)
{
  v3 = type metadata accessor for Endianness();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1[4];
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of BinaryEncoding.container()();
  v9 = sub_10064C7A0();
  LOWORD(v16) = v9 | 0x400;
  static Endianness.current.getter();
  sub_1002053B0();
  FixedWidthInteger.convert(to:)();
  (*(v4 + 8))(v7, v3);
  LOWORD(v16) = v20;
  sub_10015049C(v24, v25);
  dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
  if (!v1)
  {
    if (v9 <= 4u)
    {
      if (v9 <= 1u)
      {
        if (v9)
        {
          sub_10064C85C(&v20);
          sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
          if (!swift_dynamicCast())
          {
            goto LABEL_35;
          }

          sub_10015049C(v24, v25);
          sub_10064D61C();
        }

        else
        {
          sub_10064C85C(&v20);
          sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
          if (!swift_dynamicCast())
          {
            goto LABEL_35;
          }

          sub_10015049C(v24, v25);
          sub_10064D670();
        }
      }

      else
      {
        if (v9 == 2)
        {
          sub_10064C85C(&v20);
          sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
          if (!swift_dynamicCast())
          {
            goto LABEL_35;
          }

          v12 = v16;
          v13 = v17;
          v20 = v16;
          v21 = v17;
          sub_10015049C(v24, v25);
          sub_10064D5C8();
          goto LABEL_24;
        }

        if (v9 == 3)
        {
          sub_10064C85C(&v20);
          sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
          if (!swift_dynamicCast())
          {
            goto LABEL_35;
          }

          v12 = v16;
          v13 = v17;
          v20 = v16;
          v21 = v17;
          sub_10015049C(v24, v25);
          sub_10064D574();
LABEL_24:
          dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
          goto LABEL_25;
        }

        sub_10064C85C(&v20);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if (!swift_dynamicCast())
        {
          goto LABEL_35;
        }

        sub_10015049C(v24, v25);
        sub_10030FB84();
      }
    }

    else
    {
      if (v9 <= 7u)
      {
        if (v9 == 5)
        {
          sub_10064C85C(&v20);
          sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
          if (!swift_dynamicCast())
          {
            goto LABEL_35;
          }

          v12 = v16;
          v13 = v17;
          v20 = v16;
          v21 = v17;
          sub_10015049C(v24, v25);
          sub_10064D520();
          goto LABEL_24;
        }

        if (v9 == 6)
        {
          sub_10064C85C(&v20);
          sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
          if (swift_dynamicCast())
          {
            v10 = v16;
            v11 = v17;
            v12 = v18;
            v13 = v19;
            v20 = v16;
            v21 = v17;
            v22 = v18;
            v23 = v19;
            sub_10015049C(v24, v25);
            sub_10030FDD0();
            dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
            sub_100016590(v10, v11);
LABEL_25:
            sub_100016590(v12, v13);
            return sub_100007BAC(v24);
          }

LABEL_35:
          sub_10064D424();
          swift_allocError();
          *v14 = 0;
          swift_willThrow();
          return sub_100007BAC(v24);
        }

        goto LABEL_15;
      }

      if (v9 != 8)
      {
        if (v9 != 9)
        {
          sub_10064C85C(&v20);
          sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
          if (swift_dynamicCast())
          {
            LOWORD(v20) = v16;
            v21 = v17;
            sub_10015049C(v24, v25);
            sub_1002F1338();
            dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();

            return sub_100007BAC(v24);
          }

          goto LABEL_35;
        }

LABEL_15:
        sub_10064C85C(&v20);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if (!swift_dynamicCast())
        {
          goto LABEL_35;
        }

        v12 = v16;
        v13 = v17;
        v20 = v16;
        v21 = v17;
        sub_10015049C(v24, v25);
        sub_10064D4CC();
        goto LABEL_24;
      }

      sub_10064C85C(&v20);
      sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
      if (!swift_dynamicCast())
      {
        goto LABEL_35;
      }

      LOBYTE(v20) = v16;
      sub_10015049C(v24, v25);
      sub_10064D478();
    }

    dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
  }

  return sub_100007BAC(v24);
}

double sub_10064D1A4@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_10064DE80(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

uint64_t sub_10064D204(unsigned __int16 a1)
{
  if (a1 > 0x404u)
  {
    if (a1 > 0x407u)
    {
      switch(a1)
      {
        case 0x408u:
          return 8;
        case 0x409u:
          return 9;
        case 0x40Au:
          return 10;
      }
    }

    else
    {
      switch(a1)
      {
        case 0x405u:
          return 5;
        case 0x406u:
          return 6;
        case 0x407u:
          return 7;
      }
    }
  }

  else if (a1 > 0x401u)
  {
    switch(a1)
    {
      case 0x402u:
        return 2;
      case 0x403u:
        return 3;
      case 0x404u:
        return 4;
    }
  }

  else
  {
    switch(a1)
    {
      case 0x302u:
        return 11;
      case 0x400u:
        return 0;
      case 0x401u:
        return 1;
    }
  }

  return 12;
}

uint64_t sub_10064D2E8(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (((4 * v1) & 8) != 0)
  {
    return (*a1 + 8);
  }

  else
  {
    return (*(a1 + 24) >> 60) & 3 | (4 * (v1 & 3u));
  }
}

__n128 sub_10064D310(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10064D324(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3F8 && *(a1 + 33))
  {
    return (*a1 + 1016);
  }

  v3 = ((*(a1 + 24) >> 60) & 3 | (4 * *(a1 + 32))) ^ 0x3FF;
  if (v3 >= 0x3F7)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_10064D378(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3F7)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 1016;
    *(result + 8) = 0;
    if (a3 >= 0x3F8)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3F8)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 0;
      *(result + 24) = (-a2 & 3) << 60;
      *(result + 32) = -a2 >> 2;
    }
  }

  return result;
}

uint64_t sub_10064D3E0(uint64_t result, unsigned int a2)
{
  if (a2 < 8)
  {
    *(result + 24) = *(result + 24) & 0xCFFFFFFFFFFFFFFFLL | ((a2 & 3) << 60);
    *(result + 32) = a2 >> 2;
  }

  else
  {
    *result = a2 - 8;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 2;
  }

  return result;
}

unint64_t sub_10064D424()
{
  result = qword_1016A68D0;
  if (!qword_1016A68D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A68D0);
  }

  return result;
}

unint64_t sub_10064D478()
{
  result = qword_1016A68D8;
  if (!qword_1016A68D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A68D8);
  }

  return result;
}

unint64_t sub_10064D4CC()
{
  result = qword_1016A68E0;
  if (!qword_1016A68E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A68E0);
  }

  return result;
}

unint64_t sub_10064D520()
{
  result = qword_1016A68E8;
  if (!qword_1016A68E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A68E8);
  }

  return result;
}

unint64_t sub_10064D574()
{
  result = qword_1016A68F0;
  if (!qword_1016A68F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A68F0);
  }

  return result;
}

unint64_t sub_10064D5C8()
{
  result = qword_1016A68F8;
  if (!qword_1016A68F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A68F8);
  }

  return result;
}

unint64_t sub_10064D61C()
{
  result = qword_1016A6900;
  if (!qword_1016A6900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A6900);
  }

  return result;
}

unint64_t sub_10064D670()
{
  result = qword_1016A6908;
  if (!qword_1016A6908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A6908);
  }

  return result;
}

unint64_t sub_10064D6C4()
{
  result = qword_1016A6910;
  if (!qword_1016A6910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A6910);
  }

  return result;
}

unint64_t sub_10064D718()
{
  result = qword_1016A6918;
  if (!qword_1016A6918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A6918);
  }

  return result;
}

unint64_t sub_10064D76C()
{
  result = qword_1016A6920;
  if (!qword_1016A6920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A6920);
  }

  return result;
}

unint64_t sub_10064D7C0()
{
  result = qword_1016A6928;
  if (!qword_1016A6928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A6928);
  }

  return result;
}

unint64_t sub_10064D814()
{
  result = qword_1016A6930;
  if (!qword_1016A6930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A6930);
  }

  return result;
}

unint64_t sub_10064D868()
{
  result = qword_1016A6938;
  if (!qword_1016A6938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A6938);
  }

  return result;
}

unint64_t sub_10064D8BC()
{
  result = qword_1016A6940;
  if (!qword_1016A6940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A6940);
  }

  return result;
}

unint64_t sub_10064D910()
{
  result = qword_1016A6948;
  if (!qword_1016A6948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A6948);
  }

  return result;
}

uint64_t sub_10064D964@<X0>(unsigned __int8 a1@<W0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_10064C4F4(a1);
  sub_1000035D0(a2, a2[3]);
  result = swift_getDynamicType();
  if (v6 == result)
  {
    if (a1 <= 5u)
    {
      if (a1 <= 2u)
      {
        if (a1)
        {
          if (a1 == 1)
          {
            sub_10001F280(a2, v18);
            sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
            if (swift_dynamicCast())
            {
              result = sub_100007BAC(a2);
              v8 = 0;
              v9 = 0;
              v10 = xmmword_10139D920;
              v11 = 2;
LABEL_36:
              *a3 = v10;
              *(a3 + 16) = v8;
              *(a3 + 24) = v9;
              *(a3 + 32) = v11;
              return result;
            }
          }

          else
          {
            sub_10001F280(a2, v18);
            sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
            if (swift_dynamicCast())
            {
              result = sub_100007BAC(a2);
              v10 = v15;
              v8 = 0;
              v9 = 0;
              v11 = 0;
              goto LABEL_36;
            }
          }
        }

        else
        {
          sub_10001F280(a2, v18);
          sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
          if (swift_dynamicCast())
          {
            result = sub_100007BAC(a2);
            v8 = 0;
            v9 = 0;
            v10 = 0uLL;
            v11 = 2;
            goto LABEL_36;
          }
        }

        goto LABEL_37;
      }

      if (a1 == 3)
      {
        sub_10001F280(a2, v18);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if (swift_dynamicCast())
        {
          result = sub_100007BAC(a2);
          v10 = v15;
          v8 = 0;
          v11 = 0;
          v9 = 0x1000000000000000;
          goto LABEL_36;
        }
      }

      else
      {
        if (a1 == 4)
        {
          sub_10001F280(a2, v18);
          sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
          if (swift_dynamicCast())
          {
            result = sub_100007BAC(a2);
            v8 = 0;
            v9 = 0;
            v10 = xmmword_10139D930;
            v11 = 2;
            goto LABEL_36;
          }

          goto LABEL_37;
        }

        sub_10001F280(a2, v18);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if (swift_dynamicCast())
        {
          result = sub_100007BAC(a2);
          v10 = v15;
          v8 = 0;
          v11 = 0;
          goto LABEL_35;
        }
      }

      goto LABEL_37;
    }

    if (a1 > 8u)
    {
      if (a1 == 9)
      {
        sub_10001F280(a2, v18);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if (swift_dynamicCast())
        {
          result = sub_100007BAC(a2);
          v10 = v15;
          v8 = 0;
          v11 = 1;
LABEL_35:
          v9 = 0x2000000000000000;
          goto LABEL_36;
        }

LABEL_37:
        sub_10064D424();
        swift_allocError();
        *v13 = 0;
        swift_willThrow();
        return sub_100007BAC(a2);
      }

      if (a1 == 10)
      {
        sub_10001F280(a2, v18);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if (swift_dynamicCast())
        {
          *&v12 = v15;
          *(&v12 + 1) = *(&v15 + 1);
          v14 = v12;
          result = sub_100007BAC(a2);
          v10 = v14;
          v8 = 0;
          v11 = 1;
          v9 = 0x3000000000000000;
          goto LABEL_36;
        }

        goto LABEL_37;
      }
    }

    else if (a1 != 6)
    {
      if (a1 == 7)
      {
        sub_10001F280(a2, v18);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if (swift_dynamicCast())
        {
          result = sub_100007BAC(a2);
          v10 = v15;
          v8 = 0;
          v9 = 0;
          v11 = 1;
          goto LABEL_36;
        }
      }

      else
      {
        sub_10001F280(a2, v18);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if (swift_dynamicCast())
        {
          result = sub_100007BAC(a2);
          v8 = 0;
          v10 = v15;
          v11 = 1;
          v9 = 0x1000000000000000;
          goto LABEL_36;
        }
      }

      goto LABEL_37;
    }

    sub_10001F280(a2, v18);
    sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
    if (swift_dynamicCast())
    {
      v8 = v16;
      result = sub_100007BAC(a2);
      v10 = v15;
      v11 = 0;
      v9 = v17 | 0x3000000000000000;
      goto LABEL_36;
    }

    goto LABEL_37;
  }

  __break(1u);
  return result;
}

uint64_t sub_10064DE80@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v4 = type metadata accessor for Endianness();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v21[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1[4];
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of BinaryDecoding.container()();
  sub_10015049C(v23, v23[3]);
  sub_1002053B0();
  dispatch thunk of BinaryDecodingContaining.decode<A>(_:)();
  if (!v2)
  {
    v10 = v20;
    v26 = v21[0];
    static Endianness.current.getter();
    FixedWidthInteger.convert(to:)();
    (*(v5 + 8))(v8, v4);
    v11 = sub_10064D204(v22[0]);
    if (v11 != 12)
    {
      v13 = v11;
      v14 = sub_10064C4F4(v11);
      v16 = v15;
      sub_10001F280(a1, v21);
      v22[3] = v14;
      v22[4] = v16;
      sub_1000280DC(v22);
      v17 = *(v16 + 8);
      dispatch thunk of BinaryDecodable.init(from:)();
      sub_10001F280(v22, v21);
      sub_10064D964(v13, v21, v24);
      sub_100007BAC(v22);
      sub_100007BAC(v23);
      result = sub_100007BAC(a1);
      v19 = v24[1];
      *v10 = v24[0];
      *(v10 + 16) = v19;
      *(v10 + 32) = v25;
      return result;
    }

    sub_10064D424();
    swift_allocError();
    *v12 = 1;
    swift_willThrow();
  }

  sub_100007BAC(v23);
  return sub_100007BAC(a1);
}

unint64_t sub_10064E110()
{
  result = qword_1016A6950;
  if (!qword_1016A6950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A6950);
  }

  return result;
}

uint64_t sub_10064E164(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v31 - v6;
  v8 = sub_1000BC4D4(&qword_1016B7D80, &unk_1013B52B0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = (&v31 - v10);
  v12 = type metadata accessor for PairingSuccessResult();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v16 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v31 - v17;
  sub_1000D2A70(a2, v34, &qword_1016A6A40, &qword_1013DD950);
  if (v35 == 1)
  {
    v19 = &qword_1016A6A40;
    v20 = &qword_1013DD950;
    v21 = v34;
  }

  else
  {
    sub_10000A748(v34, v36);
    sub_10001F280(v36, v34);
    sub_1000BC4D4(&unk_1016B7D90, &qword_1013B52C0);
    v22 = swift_dynamicCast();
    v23 = *(v13 + 56);
    if (v22)
    {
      v23(v11, 0, 1, v12);
      v33 = *(v13 + 32);
      v33(v18, v11, v12);
      v24 = type metadata accessor for TaskPriority();
      (*(*(v24 - 8) + 56))(v7, 1, 1, v24);
      (*(v13 + 16))(v16, v18, v12);
      v26 = sub_100650D80(&qword_1016A6A28, v25, type metadata accessor for BackgroundPairingResultListener);
      v27 = (*(v13 + 80) + 32) & ~*(v13 + 80);
      v32 = v7;
      v28 = (v14 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
      v29 = swift_allocObject();
      *(v29 + 16) = v2;
      *(v29 + 24) = v26;
      v33((v29 + v27), v16, v12);
      *(v29 + v28) = v2;
      swift_retain_n();
      sub_100A838D4(0, 0, v32, &unk_1013B52D0, v29);

      (*(v13 + 8))(v18, v12);
      return sub_100007BAC(v36);
    }

    v23(v11, 1, 1, v12);
    sub_100007BAC(v36);
    v19 = &qword_1016B7D80;
    v20 = &unk_1013B52B0;
    v21 = v11;
  }

  return sub_10000B3A8(v21, v19, v20);
}

uint64_t sub_10064E534(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 56) = a4;
  *(v5 + 64) = a5;
  return _swift_task_switch(sub_10064E554, a5, 0);
}

uint64_t sub_10064E554()
{
  v1 = v0[7];
  v2 = PairingSuccessResult.beaconIds.getter();
  v0[9] = v2;
  PairingSuccessResult.location.getter();
  v3 = swift_task_alloc();
  v0[10] = v3;
  *v3 = v0;
  v3[1] = sub_10064E608;
  v4 = v0[8];

  return sub_10064E8E8((v0 + 2), v2);
}

uint64_t sub_10064E608()
{
  v2 = *(*v1 + 80);
  v3 = *v1;
  v3[11] = v0;

  if (v0)
  {
    v5 = v3[8];
    v4 = v3[9];
    sub_10000B3A8((v3 + 2), &qword_1016A6A30, &unk_1013B52A0);

    return _swift_task_switch(sub_10064E8D0, v5, 0);
  }

  else
  {
    sub_10000B3A8((v3 + 2), &qword_1016A6A30, &unk_1013B52A0);
    v6 = swift_task_alloc();
    v3[12] = v6;
    *v6 = v3;
    v6[1] = sub_10064E7C0;
    v7 = v3[8];
    v8 = v3[9];

    return sub_10064FAAC(v8);
  }
}

uint64_t sub_10064E7C0()
{
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 72);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_10064E8E8(uint64_t a1, uint64_t a2)
{
  v3[29] = a2;
  v3[30] = v2;
  v3[28] = a1;
  v4 = type metadata accessor for UUID();
  v3[31] = v4;
  v5 = *(v4 - 8);
  v3[32] = v5;
  v6 = *(v5 + 64) + 15;
  v3[33] = swift_task_alloc();
  v3[34] = swift_task_alloc();
  v3[35] = swift_task_alloc();

  return _swift_task_switch(sub_10064E9C4, v2, 0);
}

uint64_t sub_10064E9C4()
{
  v30 = v0;
  if (qword_101694818 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 232);
  v2 = type metadata accessor for Logger();
  *(v0 + 288) = v2;
  *(v0 + 296) = sub_1000076D4(v2, qword_1016A6958);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 248);
    v6 = *(v0 + 232);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v29 = v8;
    *v7 = 141558275;
    *(v7 + 4) = 1752392040;
    *(v7 + 12) = 2081;
    v9 = Array.description.getter();
    v11 = sub_1000136BC(v9, v10, &v29);

    *(v7 + 14) = v11;
    _os_log_impl(&_mh_execute_header, v3, v4, "Storing pairing location for paired beacons with UUIDs: %{private,mask.hash}s", v7, 0x16u);
    sub_100007BAC(v8);
  }

  sub_1000D2A70(*(v0 + 224), v0 + 56, &qword_1016A6A30, &unk_1013B52A0);
  if (*(v0 + 80))
  {
    sub_10000A748((v0 + 56), v0 + 16);
    v12 = async function pointer to daemon.getter[1];
    v13 = swift_task_alloc();
    *(v0 + 304) = v13;
    *v13 = v0;
    v13[1] = sub_10064ED50;

    return daemon.getter();
  }

  else
  {
    v14 = *(v0 + 232);
    sub_10000B3A8(v0 + 56, &qword_1016A6A30, &unk_1013B52A0);

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = *(v0 + 248);
      v18 = *(v0 + 232);
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v29 = v20;
      *v19 = 141558275;
      *(v19 + 4) = 1752392040;
      *(v19 + 12) = 2081;
      v21 = Array.description.getter();
      v23 = sub_1000136BC(v21, v22, &v29);

      *(v19 + 14) = v23;
      _os_log_impl(&_mh_execute_header, v15, v16, "No location for paired beacons: %{private,mask.hash}s", v19, 0x16u);
      sub_100007BAC(v20);
    }

    v25 = *(v0 + 272);
    v24 = *(v0 + 280);
    v26 = *(v0 + 264);

    v27 = *(v0 + 8);

    return v27();
  }
}

uint64_t sub_10064ED50(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 304);
  v12 = *v1;
  *(v3 + 312) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 320) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for BeaconStoreActor();
  v9 = sub_100650D80(&qword_1016AA400, 255, &type metadata accessor for Daemon);
  v10 = sub_100650D80(&qword_101698D20, 255, type metadata accessor for BeaconStoreActor);
  *v6 = v12;
  v6[1] = sub_10064EF34;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_10064EF34(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 320);
  v6 = *v2;
  *(v4 + 328) = a1;
  *(v4 + 336) = v1;

  v7 = *(v3 + 312);
  v8 = *(v3 + 240);

  if (v1)
  {
    v9 = sub_10064FA20;
  }

  else
  {
    v9 = sub_10064F084;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_10064F084()
{
  v1 = *(v0 + 232);
  v2 = *(v1 + 16);
  *(v0 + 344) = v2;
  if (v2)
  {
    v3 = *(v0 + 248);
    v4 = *(v0 + 256);
    v5 = *(v4 + 16);
    v4 += 16;
    v6 = *(v4 + 64);
    *(v0 + 416) = v6;
    *(v0 + 352) = *(v4 + 56);
    *(v0 + 360) = v5;
    v7 = *(v0 + 328);
    *(v0 + 368) = *(v0 + 336);
    *(v0 + 376) = 0;
    v8 = *(v0 + 280);
    *(v0 + 384) = v4 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v5(v8, v1 + ((v6 + 32) & ~v6), v3);

    return _swift_task_switch(sub_10064F1A0, v7, 0);
  }

  else
  {
    v9 = *(v0 + 328);

    sub_100007BAC((v0 + 16));
    v11 = *(v0 + 272);
    v10 = *(v0 + 280);
    v12 = *(v0 + 264);

    v13 = *(v0 + 8);

    return v13();
  }
}

uint64_t sub_10064F1A0()
{
  v34 = v0;
  sub_10001F280((v0 + 2), (v0 + 12));
  sub_1000BC4D4(&qword_1016B7DA0, &qword_1013DD970);
  sub_100650E24();
  if (swift_dynamicCast())
  {
    v1 = v0[46];
    v2 = v0[35];
    v3 = v0[30];
    v4 = v0[27];
    v5 = *(v0[41] + 128);
    type metadata accessor for Transaction();
    v6 = swift_task_alloc();
    *(v6 + 16) = 0;
    *(v6 + 24) = v4;
    *(v6 + 32) = v2;
    *(v6 + 40) = v5;
    static Transaction.named<A>(_:with:)();
    v0[49] = v1;

    v7 = sub_10064F564;
    v8 = v3;
  }

  else
  {
    if (qword_101694D58 != -1)
    {
      swift_once();
    }

    v9 = v0[48];
    v10 = v0[45];
    v11 = v0[35];
    v12 = v0[34];
    v13 = v0[31];
    sub_1000076D4(v0[36], qword_10177BD00);
    sub_10001F280((v0 + 2), (v0 + 17));
    v10(v12, v11, v13);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    v16 = os_log_type_enabled(v14, v15);
    v17 = v0[34];
    v18 = v0[31];
    v19 = v0[32];
    if (v16)
    {
      v20 = swift_slowAlloc();
      v33[0] = swift_slowAlloc();
      *v20 = 136380931;
      sub_10001F280((v0 + 17), (v0 + 22));
      v21 = String.init<A>(describing:)();
      v23 = v22;
      sub_100007BAC(v0 + 17);
      v24 = sub_1000136BC(v21, v23, v33);

      *(v20 + 4) = v24;
      *(v20 + 12) = 2080;
      sub_100650D80(&qword_101696930, 255, &type metadata accessor for UUID);
      v25 = dispatch thunk of CustomStringConvertible.description.getter();
      v27 = v26;
      v28 = *(v19 + 8);
      v28(v17, v18);
      v29 = sub_1000136BC(v25, v27, v33);

      *(v20 + 14) = v29;
      _os_log_impl(&_mh_execute_header, v14, v15, "Attempt to store invalid location: %{private}s for UUID %s)", v20, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      v28 = *(v19 + 8);
      v28(v17, v18);
      sub_100007BAC(v0 + 17);
    }

    v0[50] = v28;
    v30 = v0[30];
    sub_100650E70();
    v0[51] = swift_allocError();
    *v31 = 14;
    swift_willThrow();
    v7 = sub_10064F69C;
    v8 = v30;
  }

  return _swift_task_switch(v7, v8, 0);
}

uint64_t sub_10064F564()
{
  (*(*(v0 + 256) + 8))(*(v0 + 280), *(v0 + 248));
  v1 = *(v0 + 376) + 1;
  if (v1 == *(v0 + 344))
  {
    v2 = *(v0 + 328);

    sub_100007BAC((v0 + 16));
    v4 = *(v0 + 272);
    v3 = *(v0 + 280);
    v5 = *(v0 + 264);

    v6 = *(v0 + 8);

    return v6();
  }

  else
  {
    *(v0 + 368) = *(v0 + 392);
    *(v0 + 376) = v1;
    v8 = *(v0 + 360);
    v9 = *(v0 + 328);
    v10 = *(v0 + 280);
    v11 = *(v0 + 248);
    v12 = *(v0 + 232) + ((*(v0 + 416) + 32) & ~*(v0 + 416)) + *(v0 + 352) * v1;
    *(v0 + 384) = (*(v0 + 256) + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v8(v10, v12, v11);

    return _swift_task_switch(sub_10064F1A0, v9, 0);
  }
}

uint64_t sub_10064F69C()
{
  v36 = v0;
  v1 = *(v0 + 408);
  v2 = *(v0 + 384);
  v3 = *(v0 + 296);
  (*(v0 + 360))(*(v0 + 264), *(v0 + 280), *(v0 + 248));
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v8 = *(v0 + 400);
  v7 = *(v0 + 408);
  v9 = *(v0 + 280);
  v11 = *(v0 + 256);
  v10 = *(v0 + 264);
  v12 = *(v0 + 248);
  if (v6)
  {
    v32 = *(v0 + 408);
    v13 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v35 = v34;
    *v13 = 141558531;
    *(v13 + 4) = 1752392040;
    *(v13 + 12) = 2081;
    sub_100650D80(&qword_101696930, 255, &type metadata accessor for UUID);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v33 = v9;
    v16 = v15;
    v8(v10, v12);
    v17 = sub_1000136BC(v14, v16, &v35);

    *(v13 + 14) = v17;
    *(v13 + 22) = 2112;
    swift_errorRetain();
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 24) = v18;
    *v31 = v18;
    _os_log_impl(&_mh_execute_header, v4, v5, "Error storing pairing location for %{private,mask.hash}s: %@", v13, 0x20u);
    sub_10000B3A8(v31, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v34);

    v8(v33, v12);
  }

  else
  {

    v8(v10, v12);
    v8(v9, v12);
  }

  v19 = *(v0 + 376) + 1;
  if (v19 == *(v0 + 344))
  {
    v20 = *(v0 + 328);

    sub_100007BAC((v0 + 16));
    v22 = *(v0 + 272);
    v21 = *(v0 + 280);
    v23 = *(v0 + 264);

    v24 = *(v0 + 8);

    return v24();
  }

  else
  {
    *(v0 + 368) = 0;
    *(v0 + 376) = v19;
    v26 = *(v0 + 360);
    v27 = *(v0 + 328);
    v28 = *(v0 + 280);
    v29 = *(v0 + 248);
    v30 = *(v0 + 232) + ((*(v0 + 416) + 32) & ~*(v0 + 416)) + *(v0 + 352) * v19;
    *(v0 + 384) = (*(v0 + 256) + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v26(v28, v30, v29);

    return _swift_task_switch(sub_10064F1A0, v27, 0);
  }
}

uint64_t sub_10064FA20()
{
  v1 = v0[34];
  v2 = v0[35];
  v3 = v0[33];
  sub_100007BAC(v0 + 2);

  v4 = v0[1];
  v5 = v0[42];

  return v4();
}

uint64_t sub_10064FAAC(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  v2[4] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[5] = swift_task_alloc();
  v5 = type metadata accessor for OwnedBeaconRecord();
  v2[6] = v5;
  v6 = *(v5 - 8);
  v2[7] = v6;
  v7 = *(v6 + 64) + 15;
  v2[8] = swift_task_alloc();
  v8 = type metadata accessor for UUID();
  v2[9] = v8;
  v9 = *(v8 - 8);
  v2[10] = v9;
  v2[11] = *(v9 + 64);
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v10 = async function pointer to daemon.getter[1];
  v11 = swift_task_alloc();
  v2[15] = v11;
  *v11 = v2;
  v11[1] = sub_10064FC54;

  return daemon.getter();
}

uint64_t sub_10064FC54(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 120);
  v12 = *v1;
  v3[16] = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  v3[17] = v6;
  v7 = type metadata accessor for Daemon();
  v3[18] = v7;
  v8 = type metadata accessor for BeaconStoreActor();
  v9 = sub_100650D80(&qword_1016AA400, 255, &type metadata accessor for Daemon);
  v3[19] = v9;
  v10 = sub_100650D80(&qword_101698D20, 255, type metadata accessor for BeaconStoreActor);
  *v6 = v12;
  v6[1] = sub_10064FE48;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_10064FE48(uint64_t a1)
{
  v3 = *(*v2 + 136);
  v4 = *v2;
  v4[20] = a1;
  v4[21] = v1;

  if (v1)
  {
    v5 = v4[3];

    return _swift_task_switch(sub_100650A68, v5, 0);
  }

  else
  {
    v6 = v4[16];

    v7 = async function pointer to daemon.getter[1];
    v8 = swift_task_alloc();
    v4[22] = v8;
    *v8 = v4;
    v8[1] = sub_10064FFBC;

    return daemon.getter();
  }
}

uint64_t sub_10064FFBC(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 176);
  v5 = *v1;
  v3[23] = a1;

  v6 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v7 = swift_task_alloc();
  v3[24] = v7;
  v8 = type metadata accessor for LocalPairingMonitorService();
  v9 = sub_100650D80(&qword_1016B1130, 255, type metadata accessor for LocalPairingMonitorService);
  *v7 = v5;
  v7[1] = sub_100650174;
  v10 = v3[19];
  v11 = v3[18];

  return ActorServiceDaemon.getService<A>()(v11, v8, v10, v9);
}

uint64_t sub_100650174(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 192);
  v10 = *v2;
  v3[25] = a1;
  v3[26] = v1;

  if (v1)
  {
    v5 = v3[3];
    v6 = sub_100650B14;
  }

  else
  {
    v7 = v3[23];
    v8 = v3[3];

    v6 = sub_10065029C;
    v5 = v8;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10065029C()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  *(v0 + 216) = v2;
  if (v2)
  {
    v3 = *(v0 + 160);
    v4 = *(v0 + 72);
    v5 = *(v0 + 80);
    v6 = *(v5 + 16);
    v5 += 16;
    v7 = *(v5 + 64);
    *(v0 + 272) = v7;
    *(v0 + 224) = *(v5 + 56);
    *(v0 + 232) = v6;
    v8 = *(v0 + 112);
    *(v0 + 240) = 0;
    *(v0 + 248) = v5 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v6(v8, v1 + ((v7 + 32) & ~v7), v4);

    return _swift_task_switch(sub_1006503EC, v3, 0);
  }

  else
  {
    v9 = *(v0 + 200);
    v10 = *(v0 + 160);
    v12 = *(v0 + 104);
    v11 = *(v0 + 112);
    v13 = *(v0 + 96);
    v14 = *(v0 + 64);
    v15 = *(v0 + 40);

    v16 = *(v0 + 8);

    return v16();
  }
}

uint64_t sub_1006503EC()
{
  v1 = *(v0 + 248);
  v2 = *(v0 + 160);
  v3 = *(v0 + 104);
  v5 = *(v0 + 80);
  v4 = *(v0 + 88);
  v6 = *(v0 + 72);
  v7 = (*(v0 + 272) + 24) & ~*(v0 + 272);
  (*(v0 + 232))(v3, *(v0 + 112), v6);
  v8 = swift_allocObject();
  *(v0 + 256) = v8;
  *(v8 + 16) = v2;
  (*(v5 + 32))(v8 + v7, v3, v6);
  v9 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v10 = swift_task_alloc();
  *(v0 + 264) = v10;
  *v10 = v0;
  v10[1] = sub_100650544;
  v12 = *(v0 + 32);
  v11 = *(v0 + 40);

  return unsafeBlocking<A>(context:_:)(v11, 0xD000000000000010, 0x800000010134A8C0, sub_1000D2DB4, v8, v12);
}

uint64_t sub_100650544()
{
  v1 = *(*v0 + 264);
  v2 = *(*v0 + 256);
  v3 = *(*v0 + 24);
  v5 = *v0;

  return _swift_task_switch(sub_100650670, v3, 0);
}

uint64_t sub_100650670()
{
  v47 = v0;
  v1 = *(v0 + 40);
  if ((*(*(v0 + 56) + 48))(v1, 1, *(v0 + 48)) == 1)
  {
    sub_10000B3A8(v1, &unk_1016A9A20, &qword_10138B280);
    if (qword_101694818 != -1)
    {
      swift_once();
    }

    v2 = *(v0 + 248);
    v3 = *(v0 + 232);
    v4 = *(v0 + 112);
    v5 = *(v0 + 96);
    v6 = *(v0 + 72);
    v7 = type metadata accessor for Logger();
    sub_1000076D4(v7, qword_1016A6958);
    v3(v5, v4, v6);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    v10 = os_log_type_enabled(v8, v9);
    v11 = *(v0 + 112);
    v12 = *(v0 + 96);
    v14 = *(v0 + 72);
    v13 = *(v0 + 80);
    if (v10)
    {
      v45 = *(v0 + 112);
      v15 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v46 = v44;
      *v15 = 141558275;
      *(v15 + 4) = 1752392040;
      *(v15 + 12) = 2081;
      sub_100650D80(&qword_101696930, 255, &type metadata accessor for UUID);
      v16 = dispatch thunk of CustomStringConvertible.description.getter();
      v18 = v17;
      v19 = *(v13 + 8);
      v19(v12, v14);
      v20 = sub_1000136BC(v16, v18, &v46);

      *(v15 + 14) = v20;
      _os_log_impl(&_mh_execute_header, v8, v9, "No beacons for UUID: %{private,mask.hash}s", v15, 0x16u);
      sub_100007BAC(v44);

      v19(v45, v14);
    }

    else
    {

      v27 = *(v13 + 8);
      v27(v12, v14);
      v27(v11, v14);
    }
  }

  else
  {
    v21 = *(v0 + 200);
    v22 = *(v0 + 112);
    v23 = *(v0 + 72);
    v24 = *(v0 + 80);
    v25 = *(v0 + 64);
    sub_100132D2C(v1, v25);
    v26 = *(v21 + 128);
    sub_100A5187C(v25);
    sub_100650DC8(v25);
    (*(v24 + 8))(v22, v23);
  }

  v28 = *(v0 + 240) + 1;
  if (v28 == *(v0 + 216))
  {
    v29 = *(v0 + 200);
    v30 = *(v0 + 160);
    v32 = *(v0 + 104);
    v31 = *(v0 + 112);
    v33 = *(v0 + 96);
    v34 = *(v0 + 64);
    v35 = *(v0 + 40);

    v36 = *(v0 + 8);

    return v36();
  }

  else
  {
    v38 = *(v0 + 232);
    v39 = *(v0 + 160);
    v40 = *(v0 + 112);
    v41 = *(v0 + 72);
    v42 = *(v0 + 16) + ((*(v0 + 272) + 32) & ~*(v0 + 272)) + *(v0 + 224) * v28;
    v43 = (*(v0 + 80) + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    *(v0 + 240) = v28;
    *(v0 + 248) = v43;
    v38(v40, v42, v41);

    return _swift_task_switch(sub_1006503EC, v39, 0);
  }
}

uint64_t sub_100650A68()
{
  v1 = v0[21];
  v2 = v0[16];
  v4 = v0[13];
  v3 = v0[14];
  v5 = v0[12];
  v6 = v0[8];
  v7 = v0[5];

  v8 = v0[1];

  return v8();
}

uint64_t sub_100650B14()
{
  v1 = v0[20];

  v2 = v0[26];
  v3 = v0[23];
  v5 = v0[13];
  v4 = v0[14];
  v6 = v0[12];
  v7 = v0[8];
  v8 = v0[5];

  v9 = v0[1];

  return v9();
}

uint64_t sub_100650C38()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_1016A6958);
  v1 = sub_1000076D4(v0, qword_1016A6958);
  if (qword_101694820 != -1)
  {
    swift_once();
  }

  v2 = sub_1000076D4(v0, &unk_10177AFF0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100650D00()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, &unk_10177AFF0);
  sub_1000076D4(v0, &unk_10177AFF0);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100650D80(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_100650DC8(uint64_t a1)
{
  v2 = type metadata accessor for OwnedBeaconRecord();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100650E24()
{
  result = qword_1016A3160;
  if (!qword_1016A3160)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1016A3160);
  }

  return result;
}

unint64_t sub_100650E70()
{
  result = qword_1016A6A38;
  if (!qword_1016A6A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A6A38);
  }

  return result;
}

uint64_t sub_100650EC4(uint64_t a1)
{
  v4 = *(type metadata accessor for PairingSuccessResult() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100014650;

  return sub_10064E534(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_100650FF4(void *a1, char a2)
{
  v5 = sub_1000BC4D4(&qword_1016A6A68, &qword_1013B5410);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v12[-v8];
  v10 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_100651A48();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v12[15] = a2;
  v12[14] = 0;
  sub_100651AF0();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v12[13] = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  v12[12] = 2;
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1006511A8@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100651734(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100651284()
{
  v1 = 1886351212;
  if (*v0 != 1)
  {
    v1 = 0x6E6F697461727564;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7465737361;
  }
}

uint64_t sub_1006512D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100651748(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1006512FC(uint64_t a1)
{
  v2 = sub_100651A48();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100651338(uint64_t a1)
{
  v2 = sub_100651A48();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100651374@<X0>(uint64_t *a1@<X0>, _DWORD *a2@<X8>)
{
  result = sub_10065185C(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1006513CC(void *a1, uint64_t a2)
{
  v4 = a1[4];
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of BinaryEncoding.container()();
  v5 = *(a2 + 16);
  if (v5)
  {
    sub_1000198E8();
    v6 = (a2 + 34);
    do
    {
      v12 = v5;
      v7 = *(v6 - 1);
      v21 = *v6;
      LOBYTE(v22) = *(v6 - 2);
      v13 = FixedWidthInteger.data.getter();
      v16 = v8;
      sub_10015049C(v19, v20);
      sub_100165078();
      dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
      sub_100016590(v13, v16);
      if (v2)
      {
        break;
      }

      LOBYTE(v22) = v7;
      v14 = FixedWidthInteger.data.getter();
      v17 = v9;
      sub_10015049C(v19, v20);
      dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
      sub_100016590(v14, v17);
      v22 = v21;
      sub_1002053B0();
      v15 = FixedWidthInteger.data.getter();
      v18 = v10;
      sub_10015049C(v19, v20);
      dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
      sub_100016590(v15, v18);
      v6 += 2;
      --v5;
    }

    while (v12 != 1);
  }

  return sub_100007BAC(v19);
}

uint64_t sub_1006515BC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_100007BAC(a1);
  *a2 = _swiftEmptyArrayStorage;
  return result;
}

unint64_t sub_100651610(uint64_t a1)
{
  *(a1 + 8) = sub_100651640();
  result = sub_100422224();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_100651640()
{
  result = qword_1016A6A48;
  if (!qword_1016A6A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A6A48);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AirTagSoundSequence(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFA && a1[4])
  {
    return (*a1 + 250);
  }

  v3 = *a1;
  v4 = v3 >= 7;
  v5 = v3 - 7;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for AirTagSoundSequence(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF9)
  {
    *result = a2 - 250;
    if (a3 >= 0xFA)
    {
      *(result + 4) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFA)
    {
      *(result + 4) = 0;
    }

    if (a2)
    {
      *result = a2 + 6;
    }
  }

  return result;
}

uint64_t sub_100651734(uint64_t result)
{
  if (result >= 7u)
  {
    return 7;
  }

  else
  {
    return result;
  }
}

uint64_t sub_100651748(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7465737361 && a2 == 0xE500000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1886351212 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000)
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

uint64_t sub_10065185C(uint64_t *a1)
{
  v3 = sub_1000BC4D4(&qword_1016A6A50, &qword_1013B5408);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v13[-v6];
  v8 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_100651A48();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    return sub_100007BAC(a1);
  }

  v13[14] = 0;
  sub_100651A9C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v9 = v13[15];
  v13[13] = 1;
  v10 = KeyedDecodingContainer.decode(_:forKey:)();
  v13[12] = 2;
  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v4 + 8))(v7, v3);
  sub_100007BAC(a1);
  return (v10 << 8) | (v11 << 16) | v9;
}

unint64_t sub_100651A48()
{
  result = qword_1016A6A58;
  if (!qword_1016A6A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A6A58);
  }

  return result;
}

unint64_t sub_100651A9C()
{
  result = qword_1016A6A60;
  if (!qword_1016A6A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A6A60);
  }

  return result;
}

unint64_t sub_100651AF0()
{
  result = qword_1016A6A70;
  if (!qword_1016A6A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A6A70);
  }

  return result;
}

unint64_t sub_100651B68()
{
  result = qword_1016A6A78;
  if (!qword_1016A6A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A6A78);
  }

  return result;
}

unint64_t sub_100651BC0()
{
  result = qword_1016A6A80;
  if (!qword_1016A6A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A6A80);
  }

  return result;
}

unint64_t sub_100651C18()
{
  result = qword_1016A6A88;
  if (!qword_1016A6A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A6A88);
  }

  return result;
}

unint64_t sub_100651C70()
{
  result = qword_1016A6A90;
  if (!qword_1016A6A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A6A90);
  }

  return result;
}

unint64_t sub_100651CC4()
{
  result = qword_1016A6A98;
  if (!qword_1016A6A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A6A98);
  }

  return result;
}

uint64_t sub_100651DB8@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v21 - v10;
  __chkstk_darwin(v9);
  v13 = &v21 - v12;
  if (!a1)
  {
    UUID.init(uuidString:)();
    v17 = type metadata accessor for UUID();
    v18 = *(v17 - 8);
    result = (*(v18 + 48))(v13, 1, v17);
    if (result != 1)
    {
      return (*(v18 + 32))(a2, v13, v17);
    }

    goto LABEL_11;
  }

  if (a1 == 1)
  {
    UUID.init(uuidString:)();
    v14 = type metadata accessor for UUID();
    v15 = *(v14 - 8);
    result = (*(v15 + 48))(v11, 1, v14);
    if (result != 1)
    {
      return (*(v15 + 32))(a2, v11, v14);
    }

    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  UUID.init(uuidString:)();
  v19 = type metadata accessor for UUID();
  v20 = *(v19 - 8);
  result = (*(v20 + 48))(v8, 1, v19);
  if (result == 1)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  return (*(v20 + 32))(a2, v8, v19);
}

unint64_t sub_10065207C()
{
  result = qword_1016A6AB0;
  if (!qword_1016A6AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A6AB0);
  }

  return result;
}

uint64_t sub_100652100@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v3 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v7 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = &v50 - v9;
  v11 = __chkstk_darwin(v8);
  v13 = &v50 - v12;
  v14 = __chkstk_darwin(v11);
  v16 = &v50 - v15;
  v17 = __chkstk_darwin(v14);
  v19 = &v50 - v18;
  v20 = __chkstk_darwin(v17);
  v22 = &v50 - v21;
  v23 = __chkstk_darwin(v20);
  v25 = &v50 - v24;
  v26 = __chkstk_darwin(v23);
  v28 = &v50 - v27;
  __chkstk_darwin(v26);
  v30 = &v50 - v29;
  if (a1 <= 3u)
  {
    if (a1 > 1u)
    {
      if (a1 != 2)
      {
        UUID.init(uuidString:)();
        v44 = type metadata accessor for UUID();
        v45 = *(v44 - 8);
        result = (*(v45 + 48))(v22, 1, v44);
        if (result != 1)
        {
          return (*(v45 + 32))(v51, v22, v44);
        }

        goto LABEL_33;
      }

      UUID.init(uuidString:)();
      v36 = type metadata accessor for UUID();
      v37 = *(v36 - 8);
      result = (*(v37 + 48))(v25, 1, v36);
      if (result != 1)
      {
        return (*(v37 + 32))(v51, v25, v36);
      }
    }

    else
    {
      if (a1)
      {
        UUID.init(uuidString:)();
        v42 = type metadata accessor for UUID();
        v43 = *(v42 - 8);
        result = (*(v43 + 48))(v28, 1, v42);
        if (result != 1)
        {
          return (*(v43 + 32))(v51, v28, v42);
        }

        goto LABEL_32;
      }

      UUID.init(uuidString:)();
      v34 = type metadata accessor for UUID();
      v35 = *(v34 - 8);
      result = (*(v35 + 48))(v30, 1, v34);
      if (result != 1)
      {
        return (*(v35 + 32))(v51, v30, v34);
      }

      __break(1u);
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (a1 <= 5u)
  {
    if (a1 == 4)
    {
      UUID.init(uuidString:)();
      v38 = type metadata accessor for UUID();
      v39 = *(v38 - 8);
      result = (*(v39 + 48))(v19, 1, v38);
      if (result != 1)
      {
        return (*(v39 + 32))(v51, v19, v38);
      }

      goto LABEL_35;
    }

    UUID.init(uuidString:)();
    v48 = type metadata accessor for UUID();
    v49 = *(v48 - 8);
    result = (*(v49 + 48))(v16, 1, v48);
    if (result == 1)
    {
LABEL_37:
      __break(1u);
      return result;
    }

    return (*(v49 + 32))(v51, v16, v48);
  }

  if (a1 == 6)
  {
    UUID.init(uuidString:)();
    v40 = type metadata accessor for UUID();
    v41 = *(v40 - 8);
    result = (*(v41 + 48))(v13, 1, v40);
    if (result != 1)
    {
      return (*(v41 + 32))(v51, v13, v40);
    }

    goto LABEL_31;
  }

  if (a1 == 7)
  {
    UUID.init(uuidString:)();
    v31 = type metadata accessor for UUID();
    v32 = *(v31 - 8);
    result = (*(v32 + 48))(v10, 1, v31);
    if (result != 1)
    {
      return (*(v32 + 32))(v51, v10, v31);
    }

    goto LABEL_34;
  }

  UUID.init(uuidString:)();
  v46 = type metadata accessor for UUID();
  v47 = *(v46 - 8);
  result = (*(v47 + 48))(v7, 1, v46);
  if (result == 1)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  return (*(v47 + 32))(v51, v7, v46);
}

unint64_t sub_100652828()
{
  result = qword_1016A6AC8;
  if (!qword_1016A6AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A6AC8);
  }

  return result;
}

unint64_t sub_100652880()
{
  result = qword_1016A6AD0;
  if (!qword_1016A6AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A6AD0);
  }

  return result;
}

uint64_t sub_1006528D4@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X8>)
{
  v4 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v31 - v10;
  v12 = __chkstk_darwin(v9);
  v14 = &v31 - v13;
  v15 = __chkstk_darwin(v12);
  v17 = &v31 - v16;
  __chkstk_darwin(v15);
  v19 = &v31 - v18;
  if (a1 <= 1u)
  {
    if (!a1)
    {
      UUID.init(uuidString:)();
      v23 = type metadata accessor for UUID();
      v24 = *(v23 - 8);
      result = (*(v24 + 48))(v19, 1, v23);
      if (result != 1)
      {
        return (*(v24 + 32))(a2, v19, v23);
      }

      goto LABEL_19;
    }

    UUID.init(uuidString:)();
    v29 = type metadata accessor for UUID();
    v30 = *(v29 - 8);
    result = (*(v30 + 48))(v17, 1, v29);
    if (result == 1)
    {
LABEL_21:
      __break(1u);
      return result;
    }

    return (*(v30 + 32))(a2, v17, v29);
  }

  else
  {
    if (a1 == 2)
    {
      UUID.init(uuidString:)();
      v25 = type metadata accessor for UUID();
      v26 = *(v25 - 8);
      result = (*(v26 + 48))(v14, 1, v25);
      if (result != 1)
      {
        return (*(v26 + 32))(a2, v14, v25);
      }

      __break(1u);
      goto LABEL_18;
    }

    if (a1 == 3)
    {
      UUID.init(uuidString:)();
      v20 = type metadata accessor for UUID();
      v21 = *(v20 - 8);
      result = (*(v21 + 48))(v11, 1, v20);
      if (result != 1)
      {
        return (*(v21 + 32))(a2, v11, v20);
      }

LABEL_18:
      __break(1u);
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    UUID.init(uuidString:)();
    v27 = type metadata accessor for UUID();
    v28 = *(v27 - 8);
    result = (*(v28 + 48))(v8, 1, v27);
    if (result == 1)
    {
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    return (*(v28 + 32))(a2, v8, v27);
  }
}

uint64_t sub_100652D24(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000BC580(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100652D80@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v16 - v9;
  if (a1)
  {
    UUID.init(uuidString:)();
    v11 = type metadata accessor for UUID();
    v12 = *(v11 - 8);
    result = (*(v12 + 48))(v8, 1, v11);
    if (result != 1)
    {
      return (*(v12 + 32))(a2, v8, v11);
    }

    __break(1u);
    goto LABEL_8;
  }

  UUID.init(uuidString:)();
  v14 = type metadata accessor for UUID();
  v15 = *(v14 - 8);
  result = (*(v15 + 48))(v10, 1, v14);
  if (result == 1)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  return (*(v15 + 32))(a2, v10, v14);
}

uint64_t sub_100652F5C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v9 - v4;
  UUID.init(uuidString:)();
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  result = (*(v7 + 48))(v5, 1, v6);
  if (result != 1)
  {
    return (*(v7 + 32))(a1, v5, v6);
  }

  __break(1u);
  return result;
}

unint64_t sub_100653084()
{
  result = qword_1016A6AE8;
  if (!qword_1016A6AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A6AE8);
  }

  return result;
}

unint64_t sub_1006530DC()
{
  result = qword_1016A6AF0;
  if (!qword_1016A6AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A6AF0);
  }

  return result;
}

unint64_t sub_100653134()
{
  result = qword_1016A6AF8;
  if (!qword_1016A6AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A6AF8);
  }

  return result;
}

uint64_t sub_100653188@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v9 - v4;
  UUID.init(uuidString:)();
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  result = (*(v7 + 48))(v5, 1, v6);
  if (result != 1)
  {
    return (*(v7 + 32))(a1, v5, v6);
  }

  __break(1u);
  return result;
}

uint64_t type metadata accessor for AirPodsSWPairingLockAckResponse()
{
  result = qword_1016A6B58;
  if (!qword_1016A6B58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100653310()
{
  sub_1003955F8();
  if (v0 <= 0x3F)
  {
    sub_100395648();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_100653394@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v4 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v23 - v6;
  v25 = sub_1000BC4D4(&qword_1016A6B98, &qword_1013B5AD8);
  v8 = *(v25 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v25);
  v11 = &v23 - v10;
  v12 = type metadata accessor for AirPodsSWPairingLockAckResponse();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[3];
  v17 = a1[4];
  v26 = a1;
  sub_1000035D0(a1, v16);
  sub_1006537F0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100007BAC(v26);
  }

  v18 = v15;
  v23 = v7;
  v28 = 0;
  sub_1000E307C();
  v19 = v25;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v20 = v18;
  *v18 = v27;
  v28 = 1;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v18[1] = v27;
  type metadata accessor for UUID();
  LOBYTE(v27) = 2;
  sub_100395BEC();
  v21 = v23;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v8 + 8))(v11, v19);
  sub_10012C154(v21, v20 + *(v12 + 24));
  sub_100653844(v20, v24);
  sub_100007BAC(v26);
  return sub_1006538A8(v20);
}

uint64_t sub_1006536CC()
{
  v1 = 0x6169726553746C61;
  if (*v0 != 1)
  {
    v1 = 0x6449616E6D66;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x754E6C6169726573;
  }
}

uint64_t sub_100653738@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100653A1C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100653760(uint64_t a1)
{
  v2 = sub_1006537F0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10065379C(uint64_t a1)
{
  v2 = sub_1006537F0();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_1006537F0()
{
  result = qword_1016A6BA0;
  if (!qword_1016A6BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A6BA0);
  }

  return result;
}

uint64_t sub_100653844(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AirPodsSWPairingLockAckResponse();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1006538A8(uint64_t a1)
{
  v2 = type metadata accessor for AirPodsSWPairingLockAckResponse();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100653918()
{
  result = qword_1016A6BA8;
  if (!qword_1016A6BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A6BA8);
  }

  return result;
}

unint64_t sub_100653970()
{
  result = qword_1016A6BB0;
  if (!qword_1016A6BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A6BB0);
  }

  return result;
}

unint64_t sub_1006539C8()
{
  result = qword_1016A6BB8;
  if (!qword_1016A6BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A6BB8);
  }

  return result;
}

uint64_t sub_100653A1C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x754E6C6169726573 && a2 == 0xEC0000007265626DLL;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6169726553746C61 && a2 == 0xEF7265626D754E6CLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6449616E6D66 && a2 == 0xE600000000000000)
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

uint64_t sub_100653B3C()
{
  v2 = type metadata accessor for SharingCircleSecret();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = (&v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for OwnerSharingCircle();
  (*(v8 + 16))(v11, v0 + *(v12 + 20), v7);
  v13 = *(v0 + *(v12 + 32));
  v24 = v11;

  v14 = sub_100653ED8(sub_100654830, v23, v13);
  if (v1)
  {

    (*(v8 + 8))(v11, v7);
  }

  else
  {
    v15 = v14;

    if (qword_101694560 != -1)
    {
      swift_once();
    }

    v16 = sub_1000076D4(v7, qword_10177A900);
    sub_100D6A5C4(v16, v11, v6);
    sub_1000BC4D4(&qword_101698D88, &qword_101390910);
    v17 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v22 = *(v3 + 72);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_101391790;
    v19 = (v18 + v17);
    sub_100D6A9A4(v11, v19);
    sub_100D6A9C0(v11, &v19[v22]);
    sub_100D6AC94(v11, &v19[2 * v22]);
    sub_1006548A4(v6, &v19[3 * v22]);
    v25 = v15;
    sub_1003980F8(v18);
    sub_100654848(v6);
    v13 = v25;
    (*(v8 + 8))(v11, v7);
  }

  return v13;
}