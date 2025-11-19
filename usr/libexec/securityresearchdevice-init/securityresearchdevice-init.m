uint64_t sub_100001360()
{
  v0 = type metadata accessor for Logger();
  sub_100001E0C(v0, qword_1000286A8);
  sub_100001D14(v0, qword_1000286A8);
  return Logger.init(subsystem:category:)();
}

int main(int argc, const char **argv, const char **envp)
{
  swift_task_create();
  swift_task_getMainExecutor();
  swift_job_run();
  result = swift_task_asyncMainDrainQueue();
  __break(1u);
  return result;
}

uint64_t sub_100001440()
{
  v0[2] = type metadata accessor for MainActor();
  v0[3] = static MainActor.shared.getter();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_1000014F8;

  return sub_1000016E4();
}

uint64_t sub_1000014F8()
{
  v2 = v0;
  v3 = *(*v1 + 32);
  v4 = *(*v1 + 24);
  v5 = *(*v1 + 16);
  v10 = *v1;
  *(*v1 + 40) = v2;

  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v2)
  {
    v8 = sub_10000168C;
  }

  else
  {
    v8 = sub_100001654;
  }

  return _swift_task_switch(v8, v7, v6);
}

void sub_100001654()
{
  v1 = *(v0 + 24);

  exit(0);
}

uint64_t sub_10000168C()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 24);

  return _swift_errorInMain(v1);
}

uint64_t sub_1000016E4()
{
  v1 = *(*(type metadata accessor for SecurityResearchDeviceInitCore() - 8) + 64) + 15;
  v0[10] = swift_task_alloc();
  v0[11] = swift_task_alloc();
  type metadata accessor for MainActor();
  v0[12] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[13] = v3;
  v0[14] = v2;

  return _swift_task_switch(sub_1000017B0, v3, v2);
}

uint64_t sub_1000017B0()
{
  v1 = v0[10];
  v0[15] = os_transaction_create();
  SecurityResearchDeviceInitCore.init()(v1);
  sub_100001D4C(v0[10], v0[11]);
  v2 = swift_task_alloc();
  v0[16] = v2;
  *v2 = v0;
  v2[1] = sub_1000019D8;
  v3 = v0[11];

  return SecurityResearchDeviceInitCore.run()();
}

uint64_t sub_1000019D8()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v4 = *v1;
  *(*v1 + 136) = v0;

  v5 = *(v2 + 112);
  v6 = *(v2 + 104);
  if (v0)
  {
    v7 = sub_100001B9C;
  }

  else
  {
    v7 = sub_100001B14;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_100001B14()
{
  v1 = v0[15];
  v2 = v0[11];
  v3 = v0[12];
  swift_unknownObjectRelease();

  sub_100001DB0(v2);
  v5 = v0[10];
  v4 = v0[11];

  v6 = v0[1];

  return v6();
}

uint64_t sub_100001B9C()
{
  v1 = v0[12];

  if (qword_1000286A0 != -1)
  {
    swift_once();
  }

  v2 = v0[17];
  v3 = v0[15];
  v4 = v0[10];
  v5 = v0[11];
  v6 = type metadata accessor for Logger();
  sub_100001D14(v6, qword_1000286A8);
  _StringGuts.grow(_:)(38);
  v7._object = 0x800000010001D600;
  v7._countAndFlagsBits = 0xD000000000000024;
  String.append(_:)(v7);
  swift_getErrorValue();
  v8 = v0[5];
  v9 = v0[6];
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v10._countAndFlagsBits = 0;
  v11._countAndFlagsBits = 0x29286E69616DLL;
  v10._object = 0xE000000000000000;
  v11._object = 0xE600000000000000;
  Logger.errorWithMetadata(_:function:line:)(v10, v11, 28);

  swift_willThrow();
  swift_unknownObjectRelease();
  sub_100001DB0(v5);

  v12 = v0[1];
  v13 = v0[17];

  return v12();
}

uint64_t sub_100001D14(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_100001D4C(uint64_t a1, uint64_t a2)
{
  inited = type metadata accessor for SecurityResearchDeviceInitCore();
  (*(*(inited - 8) + 32))(a2, a1, inited);
  return a2;
}

uint64_t sub_100001DB0(uint64_t a1)
{
  inited = type metadata accessor for SecurityResearchDeviceInitCore();
  (*(*(inited - 8) + 8))(a1, inited);
  return a1;
}

uint64_t *sub_100001E0C(uint64_t a1, uint64_t *a2)
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

void SecurityResearchDeviceInitCore.init()(char *a1@<X8>)
{
  v2 = v1;
  v113 = a1;
  v111 = type metadata accessor for URL();
  v110 = *(v111 - 8);
  v3 = *(v110 + 64);
  __chkstk_darwin(v111);
  v112 = &v108 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100028188 != -1)
  {
LABEL_82:
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  v6 = sub_100001D14(v5, qword_100028190);
  v7 = sub_100019930(0x292874696E69, 0xE600000000000000, 45);
  if (!v2)
  {
    v9 = v7;
    v109 = 0;
    v2 = 0xD000000000000011;
    v121 = v7[2];
    v122 = v6;
    if (v121)
    {
      v10 = 0;
      v119 = "SYNCNOW-PROPERTY";
      v120 = (v7 + 4);
      v115 = "txm_research_extended_config=";
      *&v8 = 134218242;
      v114 = v8;
      v118 = v7;
      do
      {
        if (v10 >= v9[2])
        {
          __break(1u);
LABEL_79:
          __break(1u);
LABEL_80:
          __break(1u);
LABEL_81:
          __break(1u);
          goto LABEL_82;
        }

        v17 = (v120 + 32 * v10);
        v18 = *v17;
        v19 = v17[1];
        v20 = v17[2];
        v21 = v17[3];

        if (sub_100009C2C(0xD00000000000001DLL, v119 | 0x8000000000000000, v18, v19) & 1) != 0 || (sub_100009C2C(0xD000000000000014, v115 | 0x8000000000000000, v18, v19))
        {
          v123 = v10;
          v2 = v18 >> 14;
          v22 = v19 >> 14;
          v23 = &_swiftEmptyArrayStorage;
          if (v18 >> 14 == v19 >> 14)
          {
            goto LABEL_42;
          }

          v124 = &_swiftEmptyArrayStorage;
          v24 = v18;
          while (2)
          {
            v128 = v24;
            while (Substring.subscript.getter() != 61 || v28 != 0xE100000000000000)
            {
              v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if (v29)
              {
                goto LABEL_22;
              }

              v2 = Substring.index(after:)() >> 14;
              if (v2 == v22)
              {
                v24 = v128;
                goto LABEL_29;
              }
            }

LABEL_22:
            if (v128 >> 14 != v2)
            {
              if (v2 < v128 >> 14)
              {
                goto LABEL_79;
              }

              v30 = Substring.subscript.getter();
              v32 = v31;
              v116 = v34;
              v117 = v33;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v128 = v32;
              if (isUniquelyReferenced_nonNull_native)
              {
                v36 = v124;
              }

              else
              {
                v36 = sub_10000946C(0, *(v124 + 2) + 1, 1, v124);
              }

              v38 = *(v36 + 2);
              v37 = *(v36 + 3);
              if (v38 >= v37 >> 1)
              {
                v36 = sub_10000946C((v37 > 1), v38 + 1, 1, v36);
              }

              *(v36 + 2) = v38 + 1;
              v124 = v36;
              v25 = &v36[32 * v38];
              v26 = v128;
              *(v25 + 4) = v30;
              *(v25 + 5) = v26;
              v27 = v116;
              *(v25 + 6) = v117;
              *(v25 + 7) = v27;
            }

            v24 = Substring.index(after:)();
            v2 = v24 >> 14;
            if (v24 >> 14 != v22)
            {
              continue;
            }

            break;
          }

LABEL_29:
          if (v24 >> 14 == v22)
          {

            v23 = v124;
            v2 = *(v124 + 2);
          }

          else
          {
            if (v22 < v24 >> 14)
            {
              goto LABEL_80;
            }

            v128 = Substring.subscript.getter();
            v40 = v39;
            v42 = v41;
            v44 = v43;

            if (swift_isUniquelyReferenced_nonNull_native())
            {
              v23 = v124;
            }

            else
            {
              v23 = sub_10000946C(0, *(v124 + 2) + 1, 1, v124);
            }

            v46 = *(v23 + 2);
            v45 = *(v23 + 3);
            v2 = v46 + 1;
            if (v46 >= v45 >> 1)
            {
              v23 = sub_10000946C((v45 > 1), v46 + 1, 1, v23);
            }

            *(v23 + 2) = v2;
            v47 = &v23[32 * v46];
            *(v47 + 4) = v128;
            *(v47 + 5) = v40;
            *(v47 + 6) = v42;
            *(v47 + 7) = v44;
          }

          if (v2 != 2)
          {
LABEL_42:

            v48 = Logger.logObject.getter();
            v49 = static os_log_type_t.error.getter();

            if (os_log_type_enabled(v48, v49))
            {
              v11 = swift_slowAlloc();
              v128 = swift_slowAlloc();
              v125[0] = v128;
              *v11 = v114;
              v12 = *(v23 + 2);

              *(v11 + 4) = v12;

              *(v11 + 12) = 2080;
              v13 = static String._fromSubstring(_:)();
              v15 = v14;

              v16 = sub_100009778(v13, v15, v125);

              *(v11 + 14) = v16;
              _os_log_impl(&_mh_execute_header, v48, v49, "Malformed txm_research(_extended)_config != 2: count %ld, boot-arg %s", v11, 0x16u);
              sub_10000B9B0(v128);
            }

            else
            {

              swift_bridgeObjectRelease_n();
            }

            v10 = v123;
            v2 = 0xD000000000000011;
            v9 = v118;
          }

          else
          {

            v9 = v118;
            v10 = v123;
            if (*(v23 + 2) < 2uLL)
            {
              goto LABEL_81;
            }

            if (sub_10000AD68(*(v23 + 8), *(v23 + 9), *(v23 + 10), *(v23 + 11), 48, 0xE100000000000000))
            {

              v78 = Logger.logObject.getter();
              v79 = static os_log_type_t.default.getter();

              if (!os_log_type_enabled(v78, v79))
              {

                goto LABEL_62;
              }

              v80 = swift_slowAlloc();
              v81 = swift_slowAlloc();
              v125[0] = v81;
              *v80 = 136315138;
              if (*(v23 + 2))
              {
                v82 = v81;
                v83 = *(v23 + 4);
                v84 = *(v23 + 5);
                v85 = *(v23 + 6);
                v86 = *(v23 + 7);

                v87 = static String._fromSubstring(_:)();
                v89 = v88;

                v90 = sub_100009778(v87, v89, v125);

                *(v80 + 4) = v90;
                _os_log_impl(&_mh_execute_header, v78, v79, "Detected disabled research configuration for %s in bootargs, exiting", v80, 0xCu);
                sub_10000B9B0(v82);

LABEL_62:

                sub_100009D9C();
                swift_allocError();
                *v91 = xmmword_10001CD30;
                *(v91 + 16) = 2;
                swift_willThrow();
                return;
              }

              __break(1u);
              return;
            }

            v2 = 0xD000000000000011;
          }
        }

        else
        {
        }

        ++v10;
      }

      while (v10 != v121);
    }

    type metadata accessor for NVRAM();
    swift_initStackObject();
    NVRAM.init()();
    v123 = sub_10000BE08(0xD000000000000012, 0x800000010001D6C0);
    v51 = v50;
    v121 = sub_10000BE08(0xD000000000000011, 0x800000010001D6E0);
    v53 = v52;
    v119 = sub_10000BE08(0xD000000000000019, 0x800000010001D700);
    v55 = v54;
    v120 = sub_10000BE08(0xD000000000000017, 0x800000010001D720);
    v128 = v56;
    v124 = sub_10000BE08(0xD000000000000011, 0x800000010001D740);
    v58 = v57;
    sub_10000BE08(0x766F72702D647273, 0xEE006563726F662DLL);
    v60 = v59;
    if (v51 | v53)
    {
      if (v58)
      {
        v118 = v58;
        v61 = Logger.logObject.getter();
        v62 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v61, v62))
        {
          v63 = swift_slowAlloc();
          *v63 = 0;
          _os_log_impl(&_mh_execute_header, v61, v62, "NVRAM variables for cryptex installation are set", v63, 2u);
        }

        v64 = v112;
        v65 = v109;
        sub_100019AD0(0x292874696E69, 0xE600000000000000, 83);
        v109 = v65;
        if (v65)
        {

          return;
        }

        inited = type metadata accessor for SecurityResearchDeviceInitCore();
        v69 = inited[10];
        (*(v110 + 32))(&v113[v69], v64, v111);
        v70 = Logger.logObject.getter();
        v71 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v70, v71))
        {
          v72 = swift_slowAlloc();
          v117 = inited;
          *v72 = 0;
          _os_log_impl(&_mh_execute_header, v70, v71, "Temporary directory created", v72, 2u);
          inited = v117;
        }

        if (v51)
        {

          v73 = v113;
          *v113 = 1;
          *(v73 + 1) = v123;
          *(v73 + 2) = v51;
          *(v73 + 3) = 0;
          *(v73 + 4) = 0;
          (*(v110 + 56))(&v73[inited[7]], 1, 1, v111);
          v74 = Logger.logObject.getter();
          v75 = static os_log_type_t.default.getter();
          if (!os_log_type_enabled(v74, v75))
          {
            v77 = v124;
            goto LABEL_74;
          }

          v76 = swift_slowAlloc();
          *v76 = 0;
          _os_log_impl(&_mh_execute_header, v74, v75, "Cryptex http download", v76, 2u);
          v77 = v124;
        }

        else
        {
          if (!v53)
          {

            v96 = Logger.logObject.getter();
            v97 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v96, v97))
            {
              v98 = swift_slowAlloc();
              *v98 = 0;
              _os_log_impl(&_mh_execute_header, v96, v97, "No valid configuration detected for securityresearchdevice-init", v98, 2u);
            }

            sub_100009D9C();
            swift_allocError();
            *v99 = xmmword_10001CD40;
            *(v99 + 16) = 2;
            swift_willThrow();

            (*(v110 + 8))(&v113[v69], v111);
            return;
          }

          v92 = v113;
          *v113 = 0;
          v93 = v120;
          *(v92 + 1) = v121;
          *(v92 + 2) = v53;
          v94 = v128;
          *(v92 + 3) = v93;
          *(v92 + 4) = v94;
          if (v55)
          {
            v95 = &v92[inited[7]];
            URL.init(string:)();
          }

          else
          {
            (*(v110 + 56))(&v92[inited[7]], 1, 1, v111);
          }

          v77 = v124;
          v74 = Logger.logObject.getter();
          v100 = static os_log_type_t.default.getter();
          if (!os_log_type_enabled(v74, v100))
          {
LABEL_74:

            v102 = v113;
            v103 = &v113[inited[8]];
            v104 = v118;
            *v103 = v77;
            v103[1] = v104;
            v102[inited[9]] = v60 != 0;

            v105 = Logger.logObject.getter();
            v106 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v105, v106))
            {
              v107 = swift_slowAlloc();
              *v107 = 67109120;

              *(v107 + 4) = v60 != 0;

              _os_log_impl(&_mh_execute_header, v105, v106, "Forced provisioning: %{BOOL}d", v107, 8u);
            }

            else
            {

              swift_bridgeObjectRelease_n();
            }

            return;
          }

          v101 = swift_slowAlloc();
          *v101 = 0;
          _os_log_impl(&_mh_execute_header, v74, v100, "Cryptex mobile asset download", v101, 2u);
        }

        goto LABEL_74;
      }
    }

    v127._countAndFlagsBits = 0;
    v127._object = 0xE000000000000000;
    v125[0] = 0xD000000000000011;
    v125[1] = 0x800000010001D740;
    v126 = 1;
    _print_unlocked<A, B>(_:_:)();
    v66._countAndFlagsBits = 0x292874696E69;
    v66._object = 0xE600000000000000;
    Logger.errorWithMetadata(_:function:line:)(v127, v66, 77);

    sub_100009D9C();
    swift_allocError();
    *v67 = 0xD000000000000011;
    *(v67 + 8) = 0x800000010001D740;
    *(v67 + 16) = 1;
    swift_willThrow();
  }
}

void sub_100002DA8()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v19 - v6;
  v8 = [objc_opt_self() defaultManager];
  v9 = [objc_allocWithZone(NSFileManager) init];
  v10 = [v9 temporaryDirectory];

  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  URL.absoluteURL.getter();
  v11 = *(v1 + 8);
  v11(v7, v0);
  URL._bridgeToObjectiveC()(v12);
  v14 = v13;
  v11(v5, v0);
  v19 = 0;
  v15 = [v8 URLForDirectory:99 inDomain:1 appropriateForURL:v14 create:1 error:&v19];

  v16 = v19;
  if (v15)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;
  }

  else
  {
    v18 = v19;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }
}

uint64_t SecurityResearchDeviceInitCore.run()()
{
  v1[7] = v0;
  v2 = type metadata accessor for URL();
  v1[8] = v2;
  v3 = *(v2 - 8);
  v1[9] = v3;
  v4 = *(v3 + 64) + 15;
  v1[10] = swift_task_alloc();
  v5 = *(*(sub_10000ADE0(&qword_100028218, &qword_10001D1D0) - 8) + 64) + 15;
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v6 = *(*(type metadata accessor for DownloadedEncryptedAsset() - 8) + 64) + 15;
  v1[13] = swift_task_alloc();

  return _swift_task_switch(sub_100003110, 0, 0);
}

uint64_t sub_100003110()
{
  if (qword_100028188 != -1)
  {
    swift_once();
  }

  v1 = v0[7];
  v2 = type metadata accessor for Logger();
  v0[14] = sub_100001D14(v2, qword_100028190);
  v3 = swift_task_alloc();
  v0[15] = v3;
  *(v3 + 16) = v1;
  v4 = swift_task_alloc();
  v0[16] = v4;
  *v4 = v0;
  v4[1] = sub_100003248;

  return sub_100005388(&unk_10001CD88, v3, 0x29286E7572, 0xE500000000000000, 120);
}

uint64_t sub_100003248(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 128);
  v6 = *v2;
  *(*v2 + 136) = v1;

  if (v1)
  {
    v7 = sub_100004598;
  }

  else
  {
    v8 = *(v4 + 120);
    *(v4 + 33) = a1 & 1;

    v7 = sub_10000337C;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10000337C()
{
  if (*(v0 + 33) == 1)
  {
    v1 = swift_task_alloc();
    *(v0 + 144) = v1;
    *v1 = v0;
    v1[1] = sub_1000034F4;
    v2 = *(v0 + 104);
    v3 = *(v0 + 56);

    return sub_100005F98(v2);
  }

  else
  {
    v5 = *(v0 + 112);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "Cryptex installation not needed.", v8, 2u);
    }

    v10 = *(v0 + 96);
    v9 = *(v0 + 104);
    v12 = *(v0 + 80);
    v11 = *(v0 + 88);

    v13 = *(v0 + 8);

    return v13();
  }
}

uint64_t sub_1000034F4()
{
  v2 = *(*v1 + 144);
  v5 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v3 = sub_100003AD0;
  }

  else
  {
    v3 = sub_100003608;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100003608()
{
  v39 = v0;
  v1 = *(v0 + 112);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Cryptex downloaded", v4, 2u);
  }

  v5 = *(v0 + 152);
  v6 = *(v0 + 96);
  v7 = *(v0 + 104);

  sub_10001335C(v6);
  if (v5)
  {
    v8 = *(v0 + 112);
    swift_errorRetain();
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v38 = v13;
      *v11 = 138412802;
      swift_errorRetain();
      v14 = _swift_stdlib_bridgeErrorToNSError();
      *(v11 + 4) = v14;
      *v12 = v14;
      *(v11 + 12) = 2080;
      *(v11 + 14) = sub_100009778(0x29286E7572, 0xE500000000000000, &v38);
      *(v11 + 22) = 2048;
      *(v11 + 24) = 133;
      _os_log_impl(&_mh_execute_header, v9, v10, "Error: %@, in %s, line: %ld", v11, 0x20u);
      sub_10000BAB8(v12, &qword_100028220, &qword_10001CDA0);

      sub_10000B9B0(v13);
    }

    v15 = *(v0 + 104);
    swift_willThrow();
    goto LABEL_9;
  }

  v16 = *(v0 + 88);
  v17 = *(v0 + 64);
  v18 = *(v0 + 72);
  sub_10000AF24(*(v0 + 96), v16);
  v19 = (*(v18 + 48))(v16, 1, v17);
  v20 = *(v0 + 112);
  if (v19 == 1)
  {
    v21 = *(v0 + 96);
    v15 = *(v0 + 104);
    sub_10000BAB8(*(v0 + 88), &qword_100028218, &qword_10001D1D0);
    *(v0 + 40) = 0;
    *(v0 + 48) = 0xE000000000000000;
    *(v0 + 16) = 0;
    *(v0 + 24) = 0;
    *(v0 + 32) = 2;
    _print_unlocked<A, B>(_:_:)();
    v22._countAndFlagsBits = 0x29286E7572;
    v22._object = 0xE500000000000000;
    Logger.errorWithMetadata(_:function:line:)(*(v0 + 40), v22, 139);

    sub_100009D9C();
    swift_allocError();
    *v23 = 0;
    *(v23 + 8) = 0;
    *(v23 + 16) = 2;
    swift_willThrow();
    sub_10000BAB8(v21, &qword_100028218, &qword_10001D1D0);
LABEL_9:
    sub_10000AEC8(v15);
    v25 = *(v0 + 96);
    v24 = *(v0 + 104);
    v27 = *(v0 + 80);
    v26 = *(v0 + 88);

    v28 = *(v0 + 8);

    return v28();
  }

  (*(*(v0 + 72) + 32))(*(v0 + 80), *(v0 + 88), *(v0 + 64));
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&_mh_execute_header, v30, v31, "Extracted local encrypted asset URL", v32, 2u);
  }

  v33 = *(v0 + 80);
  v34 = *(v0 + 56);

  v35 = swift_task_alloc();
  *(v0 + 160) = v35;
  *(v35 + 16) = v34;
  *(v35 + 24) = v33;
  v36 = swift_task_alloc();
  *(v0 + 168) = v36;
  *v36 = v0;
  v36[1] = sub_100003CB0;
  v37 = *(v0 + 112);

  return sub_100005790(&unk_10001CDB0, v35, 0x29286E7572, 0xE500000000000000, 144);
}

uint64_t sub_100003AD0()
{
  v19 = v0;
  v1 = v0[19];
  v2 = v0[14];
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[19];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v18 = v8;
    *v6 = 138412802;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    *(v6 + 12) = 2080;
    *(v6 + 14) = sub_100009778(0x29286E7572, 0xE500000000000000, &v18);
    *(v6 + 22) = 2048;
    *(v6 + 24) = 128;
    _os_log_impl(&_mh_execute_header, v3, v4, "Error: %@, in %s, line: %ld", v6, 0x20u);
    sub_10000BAB8(v7, &qword_100028220, &qword_10001CDA0);

    sub_10000B9B0(v8);
  }

  v10 = v0[19];
  swift_willThrow();
  v11 = v0[19];
  v13 = v0[12];
  v12 = v0[13];
  v15 = v0[10];
  v14 = v0[11];

  v16 = v0[1];

  return v16();
}

uint64_t sub_100003CB0(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v6 = *(*v3 + 168);
  v7 = *v3;
  v5[22] = a1;
  v5[23] = a2;
  v5[24] = v2;

  v8 = v4[20];

  if (v2)
  {
    v9 = sub_100004628;
  }

  else
  {
    v9 = sub_100003DF0;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_100003DF0()
{
  v1 = v0[14];
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Cryptex decrypted", v4, 2u);
  }

  v5 = v0[23];

  v6 = swift_task_alloc();
  v0[25] = v6;
  *v6 = v0;
  v6[1] = sub_100003F34;
  v7 = v0[22];
  v8 = v0[23];
  v9 = v0[14];

  return sub_10001A1D0(sub_10001A1D0, 0x29286E7572, 0xE500000000000000, 150, v9, v7, v8);
}

uint64_t sub_100003F34()
{
  v2 = *v1;
  v3 = *(*v1 + 200);
  v4 = *v1;
  *(*v1 + 208) = v0;

  v5 = *(v2 + 184);

  if (v0)
  {
    v6 = sub_1000046F0;
  }

  else
  {
    v6 = sub_100004068;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100004068()
{
  v1 = v0[14];
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Cryptex personalized and installed", v4, 2u);
  }

  v5 = swift_task_alloc();
  v0[27] = v5;
  *v5 = v0;
  v5[1] = sub_100004170;
  v6 = v0[13];

  return sub_100013974();
}

uint64_t sub_100004170()
{
  v2 = *(*v1 + 216);
  v5 = *v1;
  *(*v1 + 224) = v0;

  if (v0)
  {
    v3 = sub_1000047B8;
  }

  else
  {
    v3 = sub_100004284;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100004284()
{
  v34 = v0;
  v1 = v0[28];
  v2 = v0[7];
  sub_100007134();
  v3 = v0[14];
  if (v1)
  {
    swift_errorRetain();
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v33 = v8;
      *v6 = 138412802;
      swift_errorRetain();
      v9 = _swift_stdlib_bridgeErrorToNSError();
      *(v6 + 4) = v9;
      *v7 = v9;
      *(v6 + 12) = 2080;
      *(v6 + 14) = sub_100009778(0x29286E7572, 0xE500000000000000, &v33);
      *(v6 + 22) = 2048;
      *(v6 + 24) = 161;
      _os_log_impl(&_mh_execute_header, v4, v5, "Error: %@, in %s, line: %ld", v6, 0x20u);
      sub_10000BAB8(v7, &qword_100028220, &qword_10001CDA0);

      sub_10000B9B0(v8);
    }

    v11 = v0[12];
    v10 = v0[13];
    v13 = v0[9];
    v12 = v0[10];
    v14 = v0[8];
    swift_willThrow();
    sub_10000BAB8(v11, &qword_100028218, &qword_10001D1D0);
    (*(v13 + 8))(v12, v14);
    sub_10000AEC8(v10);
    v16 = v0[12];
    v15 = v0[13];
    v18 = v0[10];
    v17 = v0[11];

    v19 = v0[1];
  }

  else
  {
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "Cleanup performed", v22, 2u);
    }

    v24 = v0[12];
    v23 = v0[13];
    v26 = v0[9];
    v25 = v0[10];
    v27 = v0[8];

    sub_10000BAB8(v24, &qword_100028218, &qword_10001D1D0);
    (*(v26 + 8))(v25, v27);
    sub_10000AEC8(v23);
    v29 = v0[12];
    v28 = v0[13];
    v31 = v0[10];
    v30 = v0[11];

    v19 = v0[1];
  }

  return v19();
}

uint64_t sub_100004598()
{
  v1 = v0[15];

  v2 = v0[17];
  v4 = v0[12];
  v3 = v0[13];
  v6 = v0[10];
  v5 = v0[11];

  v7 = v0[1];

  return v7();
}

uint64_t sub_100004628()
{
  v1 = v0[13];
  v3 = v0[9];
  v2 = v0[10];
  v4 = v0[8];
  sub_10000BAB8(v0[12], &qword_100028218, &qword_10001D1D0);
  (*(v3 + 8))(v2, v4);
  sub_10000AEC8(v1);
  v5 = v0[24];
  v7 = v0[12];
  v6 = v0[13];
  v9 = v0[10];
  v8 = v0[11];

  v10 = v0[1];

  return v10();
}

uint64_t sub_1000046F0()
{
  v1 = v0[13];
  v3 = v0[9];
  v2 = v0[10];
  v4 = v0[8];
  sub_10000BAB8(v0[12], &qword_100028218, &qword_10001D1D0);
  (*(v3 + 8))(v2, v4);
  sub_10000AEC8(v1);
  v5 = v0[26];
  v7 = v0[12];
  v6 = v0[13];
  v9 = v0[10];
  v8 = v0[11];

  v10 = v0[1];

  return v10();
}

uint64_t sub_1000047B8()
{
  v1 = v0[28];
  v2 = v0[14];
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[28];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failed to delete downloaded asset: %@", v7, 0xCu);
    sub_10000BAB8(v8, &qword_100028220, &qword_10001CDA0);
  }

  else
  {
  }

  v10 = v0[7];
  sub_100007134();
  v11 = v0[14];
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "Cleanup performed", v14, 2u);
  }

  v16 = v0[12];
  v15 = v0[13];
  v18 = v0[9];
  v17 = v0[10];
  v19 = v0[8];

  sub_10000BAB8(v16, &qword_100028218, &qword_10001D1D0);
  (*(v18 + 8))(v17, v19);
  sub_10000AEC8(v15);
  v21 = v0[12];
  v20 = v0[13];
  v23 = v0[10];
  v22 = v0[11];

  v24 = v0[1];

  return v24();
}

uint64_t sub_100004BC4(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100004C58;

  return sub_100004DCC();
}

uint64_t sub_100004C58(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *v2;

  if (v1)
  {
    v7 = *(v6 + 8);

    return v7();
  }

  else
  {
    *(v4 + 32) = a1 & 1;

    return _swift_task_switch(sub_100004DA8, 0, 0);
  }
}

uint64_t sub_100004DEC()
{
  v1 = objc_opt_self();
  v0[3] = v1;
  v2 = [v1 defaultManager];
  v3 = String._bridgeToObjectiveC()();
  v4 = [v2 fileExistsAtPath:v3];

  if (v4)
  {
    if (qword_100028188 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_100001D14(v5, qword_100028190);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v6, v7))
    {
      v12 = 0;
      goto LABEL_16;
    }

    v8 = swift_slowAlloc();
    *v8 = 0;
    v9 = "SecurityResearchDeviceInit was already run, exiting";
LABEL_11:
    _os_log_impl(&_mh_execute_header, v6, v7, v9, v8, 2u);
    v12 = v4 ^ 1;

LABEL_16:

    goto LABEL_17;
  }

  v10 = v0[2];
  if (*(v10 + *(type metadata accessor for SecurityResearchDeviceInitCore() + 36)) == 1)
  {
    if (qword_100028188 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_100001D14(v11, qword_100028190);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v6, v7))
    {
      v12 = 1;
      goto LABEL_16;
    }

    v8 = swift_slowAlloc();
    *v8 = 0;
    v9 = "Provisioning forced by NVRAM configuration";
    goto LABEL_11;
  }

  v13 = [v1 defaultManager];
  v14 = String._bridgeToObjectiveC()();
  v15 = [v13 fileExistsAtPath:v14];

  if (v15)
  {
    v12 = 0;
LABEL_17:
    v16 = v0[1];

    return v16(v12);
  }

  if (qword_100028188 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  v19 = sub_100001D14(v18, qword_100028190);
  v20 = swift_task_alloc();
  v0[4] = v20;
  *v20 = v0;
  v20[1] = sub_100005194;

  return sub_10001A708(sub_10001A708, 0xD00000000000001BLL, 0x800000010001D830, 204, v19);
}

uint64_t sub_100005194()
{
  v2 = *(*v1 + 32);
  v5 = *v1;
  *(*v1 + 40) = v0;

  if (v0)
  {
    v3 = sub_10000536C;
  }

  else
  {
    v3 = sub_1000052A8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000052A8()
{
  v1 = [*(v0 + 24) defaultManager];
  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 fileExistsAtPath:v2];

  v4 = *(v0 + 8);

  return v4(v3 ^ 1);
}

uint64_t sub_100005388(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[4] = a5;
  v6[5] = v5;
  v6[2] = a3;
  v6[3] = a4;
  v10 = (a1 + *a1);
  v7 = a1[1];
  v8 = swift_task_alloc();
  v6[6] = v8;
  *v8 = v6;
  v8[1] = sub_100005488;

  return v10(v6 + 8);
}

uint64_t sub_100005488()
{
  v2 = *(*v1 + 48);
  v5 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v3 = sub_1000055B8;
  }

  else
  {
    v3 = sub_10000559C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000055B8()
{
  v19 = v0;
  v1 = v0[7];
  v2 = v0[5];
  v3 = v0[3];
  swift_errorRetain();

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[7];
    v7 = v0[3];
    v8 = v0[4];
    v9 = v0[2];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v18 = v12;
    *v10 = 138412802;
    swift_errorRetain();
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *v11 = v13;
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_100009778(v9, v7, &v18);
    *(v10 + 22) = 2048;
    *(v10 + 24) = v8;
    _os_log_impl(&_mh_execute_header, v4, v5, "Error: %@, in %s, line: %ld", v10, 0x20u);
    sub_10000BAB8(v11, &qword_100028220, &qword_10001CDA0);

    sub_10000B9B0(v12);
  }

  v14 = v0[7];
  swift_willThrow();
  v15 = v0[1];
  v16 = v0[7];

  return v15(0);
}

uint64_t sub_100005790(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v10 = (a1 + *a1);
  v7 = a1[1];
  v8 = swift_task_alloc();
  v6[8] = v8;
  *v8 = v6;
  v8[1] = sub_100005890;

  return v10(v6 + 2);
}

uint64_t sub_100005890()
{
  v2 = *(*v1 + 64);
  v5 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = sub_1000059C0;
  }

  else
  {
    v3 = sub_1000059A4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000059C0()
{
  v19 = v0;
  v1 = v0[9];
  v2 = v0[7];
  v3 = v0[5];
  swift_errorRetain();

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[9];
    v7 = v0[5];
    v8 = v0[6];
    v9 = v0[4];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v18 = v12;
    *v10 = 138412802;
    swift_errorRetain();
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *v11 = v13;
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_100009778(v9, v7, &v18);
    *(v10 + 22) = 2048;
    *(v10 + 24) = v8;
    _os_log_impl(&_mh_execute_header, v4, v5, "Error: %@, in %s, line: %ld", v10, 0x20u);
    sub_10000BAB8(v11, &qword_100028220, &qword_10001CDA0);

    sub_10000B9B0(v12);
  }

  v14 = v0[9];
  swift_willThrow();
  v15 = v0[1];
  v16 = v0[9];

  return v15();
}

uint64_t sub_100005B94(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[5] = a5;
  v6[6] = v5;
  v6[3] = a3;
  v6[4] = a4;
  v10 = (a1 + *a1);
  v7 = a1[1];
  v8 = swift_task_alloc();
  v6[7] = v8;
  *v8 = v6;
  v8[1] = sub_100005C94;

  return v10(v6 + 2);
}

uint64_t sub_100005C94()
{
  v2 = *(*v1 + 56);
  v5 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v3 = sub_100005DC4;
  }

  else
  {
    v3 = sub_100005DA8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100005DC4()
{
  v19 = v0;
  v1 = v0[8];
  v2 = v0[6];
  v3 = v0[4];
  swift_errorRetain();

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[8];
    v7 = v0[4];
    v8 = v0[5];
    v9 = v0[3];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v18 = v12;
    *v10 = 138412802;
    swift_errorRetain();
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *v11 = v13;
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_100009778(v9, v7, &v18);
    *(v10 + 22) = 2048;
    *(v10 + 24) = v8;
    _os_log_impl(&_mh_execute_header, v4, v5, "Error: %@, in %s, line: %ld", v10, 0x20u);
    sub_10000BAB8(v11, &qword_100028220, &qword_10001CDA0);

    sub_10000B9B0(v12);
  }

  v14 = v0[8];
  swift_willThrow();
  v15 = v0[1];
  v16 = v0[8];

  return v15();
}

uint64_t sub_100005F98(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = *(*(sub_10000ADE0(&qword_100028218, &qword_10001D1D0) - 8) + 64) + 15;
  v2[9] = swift_task_alloc();
  v4 = type metadata accessor for URL();
  v2[10] = v4;
  v5 = *(v4 - 8);
  v2[11] = v5;
  v6 = *(v5 + 64) + 15;
  v2[12] = swift_task_alloc();

  return _swift_task_switch(sub_100006090, 0, 0);
}

uint64_t sub_100006090()
{
  v1 = *(v0 + 64);
  if (*v1 == 1)
  {
    v2 = *(v0 + 80);
    v3 = *(v0 + 88);
    v4 = *(v0 + 72);
    v6 = *(v1 + 8);
    v5 = *(v1 + 16);
    URL.init(string:)();
    if ((*(v3 + 48))(v4, 1, v2) == 1)
    {
      sub_10000BAB8(*(v0 + 72), &qword_100028218, &qword_10001D1D0);
      if (qword_100028188 != -1)
      {
        swift_once();
      }

      v7 = type metadata accessor for Logger();
      sub_100001D14(v7, qword_100028190);
      *(v0 + 40) = 0;
      *(v0 + 48) = 0xE000000000000000;
      *(v0 + 16) = v6;
      *(v0 + 24) = v5;
      *(v0 + 32) = 0;
      _print_unlocked<A, B>(_:_:)();
      v8._object = 0x800000010001D7C0;
      v8._countAndFlagsBits = 0xD000000000000011;
      Logger.errorWithMetadata(_:function:line:)(*(v0 + 40), v8, 215);

      sub_100009D9C();
      swift_allocError();
      *v9 = v6;
      *(v9 + 8) = v5;
      *(v9 + 16) = 0;
      swift_willThrow();
      v10 = *(v0 + 96);
      v11 = *(v0 + 72);

      v12 = *(v0 + 8);

      return v12();
    }

    else
    {
      (*(*(v0 + 88) + 32))(*(v0 + 96), *(v0 + 72), *(v0 + 80));
      if (qword_100028188 != -1)
      {
        swift_once();
      }

      v23 = type metadata accessor for Logger();
      *(v0 + 104) = sub_100001D14(v23, qword_100028190);
      v24 = swift_task_alloc();
      *(v0 + 112) = v24;
      *v24 = v0;
      v24[1] = sub_100006448;
      v25 = *(v0 + 96);
      v26 = *(v0 + 56);

      return sub_10001421C(v26, v25);
    }
  }

  else
  {
    sub_1000077F4();
    if (qword_100028188 != -1)
    {
      swift_once();
    }

    v14 = *(v0 + 64);
    v15 = type metadata accessor for Logger();
    *(v0 + 128) = sub_100001D14(v15, qword_100028190);
    v17 = v14[1];
    v16 = v14[2];
    v18 = v14[3];
    v19 = v14[4];
    v20 = *(type metadata accessor for SecurityResearchDeviceInitCore() + 28);
    v21 = swift_task_alloc();
    *(v0 + 136) = v21;
    *v21 = v0;
    v21[1] = sub_1000067DC;
    v22 = *(v0 + 56);

    return sub_100014E8C(v22, v17, v16, v18, v19, v14 + v20);
  }
}

uint64_t sub_100006448()
{
  v2 = *(*v1 + 112);
  v5 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = sub_1000065E4;
  }

  else
  {
    v3 = sub_10000655C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10000655C()
{
  (*(v0[11] + 8))(v0[12], v0[10]);
  v1 = v0[12];
  v2 = v0[9];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1000065E4()
{
  v20 = v0;
  v1 = v0[15];
  v2 = v0[13];
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[15];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v19 = v8;
    *v6 = 138412802;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    *(v6 + 12) = 2080;
    *(v6 + 14) = sub_100009778(0xD000000000000011, 0x800000010001D7C0, &v19);
    *(v6 + 22) = 2048;
    *(v6 + 24) = 218;
    _os_log_impl(&_mh_execute_header, v3, v4, "Error: %@, in %s, line: %ld", v6, 0x20u);
    sub_10000BAB8(v7, &qword_100028220, &qword_10001CDA0);

    sub_10000B9B0(v8);
  }

  v10 = v0[15];
  v12 = v0[11];
  v11 = v0[12];
  v13 = v0[10];
  swift_willThrow();
  (*(v12 + 8))(v11, v13);
  v14 = v0[15];
  v15 = v0[12];
  v16 = v0[9];

  v17 = v0[1];

  return v17();
}

uint64_t sub_1000067DC()
{
  v2 = *(*v1 + 136);
  v3 = *v1;
  v3[18] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100006928, 0, 0);
  }

  else
  {
    v4 = v3[12];
    v5 = v3[9];

    v6 = v3[1];

    return v6();
  }
}

uint64_t sub_100006928()
{
  v17 = v0;
  v1 = v0[18];
  v2 = v0[16];
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[18];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v6 = 138412802;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    *(v6 + 12) = 2080;
    *(v6 + 14) = sub_100009778(0xD000000000000011, 0x800000010001D7C0, &v16);
    *(v6 + 22) = 2048;
    *(v6 + 24) = 223;
    _os_log_impl(&_mh_execute_header, v3, v4, "Error: %@, in %s, line: %ld", v6, 0x20u);
    sub_10000BAB8(v7, &qword_100028220, &qword_10001CDA0);

    sub_10000B9B0(v8);
  }

  v10 = v0[18];
  swift_willThrow();
  v11 = v0[18];
  v12 = v0[12];
  v13 = v0[9];

  v14 = v0[1];

  return v14();
}

uint64_t sub_100006B00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v5 = swift_task_alloc();
  *(v3 + 24) = v5;
  *v5 = v3;
  v5[1] = sub_100006BA0;

  return sub_100006D20(a3);
}

uint64_t sub_100006BA0(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 24);
  v8 = *v3;

  if (v2)
  {
    v9 = *(v8 + 8);

    return v9();
  }

  else
  {
    *(v6 + 32) = a2;
    *(v6 + 40) = a1;

    return _swift_task_switch(sub_100006CFC, 0, 0);
  }
}

uint64_t sub_100006CFC()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);
  *v2 = *(v0 + 40);
  v2[1] = v1;
  return (*(v0 + 8))();
}

uint64_t sub_100006D20(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = type metadata accessor for P256.KeyAgreement.PrivateKey();
  v2[6] = v3;
  v4 = *(v3 - 8);
  v2[7] = v4;
  v5 = *(v4 + 64) + 15;
  v2[8] = swift_task_alloc();

  return _swift_task_switch(sub_100006DE0, 0, 0);
}

uint64_t sub_100006DE0()
{
  if (qword_100028188 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 40);
  v2 = type metadata accessor for Logger();
  sub_100001D14(v2, qword_100028190);
  inited = type metadata accessor for SecurityResearchDeviceInitCore();
  v4 = sub_100007C24(*(v1 + *(inited + 32)), *(v1 + *(inited + 32) + 8));
  v5 = *(v0 + 64);
  *(v0 + 16) = v4;
  *(v0 + 24) = v6;
  P256.KeyAgreement.PrivateKey.init<A>(rawRepresentation:)();
  v7 = *(v0 + 64);
  v8 = swift_task_alloc();
  *(v8 + 16) = *(v0 + 32);
  *(v8 + 32) = v7;
  v9 = sub_10000F2C0(sub_10000B5E4, v8, 0xD00000000000001DLL, 0x800000010001D780, 239);
  v11 = *(v0 + 56);
  v10 = *(v0 + 64);
  v12 = *(v0 + 48);
  v13 = v9;
  v15 = v14;

  (*(v11 + 8))(v10, v12);

  v16 = *(v0 + 8);

  return v16(v13, v15);
}

void sub_100007134()
{
  v2 = v1;
  v3 = v0;
  v4 = [objc_opt_self() defaultManager];
  v5 = String._bridgeToObjectiveC()();
  [v4 createFileAtPath:v5 contents:0 attributes:0];

  if (qword_100028188 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100001D14(v6, qword_100028190);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Breadcrumb created", v9, 2u);
  }

  if (*(v3 + *(type metadata accessor for SecurityResearchDeviceInitCore() + 36)) == 1)
  {
    type metadata accessor for NVRAM();
    swift_initStackObject();
    NVRAM.init()();
    sub_10000C480(0x766F72702D647273, 0xEE006563726F662DLL);
    if (v1)
    {
      swift_errorRetain();
      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v30 = v14;
        *v12 = 138412802;
        swift_errorRetain();
        v15 = _swift_stdlib_bridgeErrorToNSError();
        *(v12 + 4) = v15;
        *v13 = v15;
        *(v12 + 12) = 2080;
        *(v12 + 14) = sub_100009778(0x2870756E61656C63, 0xE900000000000029, &v30);
        *(v12 + 22) = 2048;
        *(v12 + 24) = 309;
        _os_log_impl(&_mh_execute_header, v10, v11, "Error: %@, in %s, line: %ld", v12, 0x20u);
        sub_10000BAB8(v13, &qword_100028220, &qword_10001CDA0);

        sub_10000B9B0(v14);
      }

      swift_willThrow();

      return;
    }

    sub_10000C718();
    v2 = 0;
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      log = v16;
      v19 = swift_slowAlloc();
      v30 = v19;
      *v18 = 136315138;
      *(v18 + 4) = sub_100009778(0x766F72702D647273, 0xEE006563726F662DLL, &v30);
      _os_log_impl(&_mh_execute_header, log, v17, "Removed %s key from NVRAM", v18, 0xCu);
      sub_10000B9B0(v19);
    }

    else
    {
    }
  }

  sub_100008EE0();
  if (v2)
  {
    swift_errorRetain();
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v30 = v24;
      *v22 = 138412802;
      swift_errorRetain();
      v25 = _swift_stdlib_bridgeErrorToNSError();
      *(v22 + 4) = v25;
      *v23 = v25;
      *(v22 + 12) = 2080;
      *(v22 + 14) = sub_100009778(0x2870756E61656C63, 0xE900000000000029, &v30);
      *(v22 + 22) = 2048;
      *(v22 + 24) = 318;
      _os_log_impl(&_mh_execute_header, v20, v21, "Error: %@, in %s, line: %ld", v22, 0x20u);
      sub_10000BAB8(v23, &qword_100028220, &qword_10001CDA0);

      sub_10000B9B0(v24);
    }

    swift_willThrow();
  }

  else
  {
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v26, v27, "Temporary directory removed", v28, 2u);
    }
  }
}

void sub_1000077F4()
{
  v0 = type metadata accessor for DispatchQoS.QoSClass();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100028188 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100001D14(v5, qword_100028190);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "waiting for first unlock", v8, 2u);
  }

  if ((sub_10000866C() & 1) == 0)
  {
    v9 = dispatch_group_create();
    dispatch_group_enter(v9);
    v10 = swift_allocObject();
    *(v10 + 16) = -1;
    sub_10000BA0C();
    (*(v1 + 104))(v4, enum case for DispatchQoS.QoSClass.default(_:), v0);
    v11 = static OS_dispatch_queue.global(qos:)();
    (*(v1 + 8))(v4, v0);
    v12 = swift_allocObject();
    *(v12 + 16) = v9;
    *(v12 + 24) = v10;
    aBlock[4] = sub_10000BA98;
    aBlock[5] = v12;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100008E8C;
    aBlock[3] = &unk_100024CC8;
    v13 = _Block_copy(aBlock);
    v14 = v9;

    swift_beginAccess();
    LODWORD(v9) = notify_register_dispatch("com.apple.mobile.keybagd.lock_status", (v10 + 16), v11, v13);
    swift_endAccess();
    _Block_release(v13);

    if (v9 || *(v10 + 16) == -1)
    {
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        v18 = "failed to register for lock status notification";
LABEL_12:
        _os_log_impl(&_mh_execute_header, v15, v16, v18, v17, 2u);
      }
    }

    else
    {
      if (sub_10000866C())
      {

        goto LABEL_8;
      }

      OS_dispatch_group.wait()();
      if (sub_10000866C())
      {

        goto LABEL_14;
      }

      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        v18 = "device appears before first unlock even after notification";
        goto LABEL_12;
      }
    }

LABEL_14:
    goto LABEL_8;
  }

LABEL_8:
  sub_100008C90();
}

uint64_t *sub_100008604@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t **a4@<X8>)
{
  inited = type metadata accessor for SecurityResearchDeviceInitCore();
  result = sub_10000CF48(a1, a2 + *(inited + 40), a3);
  if (!v4)
  {
    *a4 = result;
    a4[1] = v11;
  }

  return result;
}

uint64_t sub_10000866C()
{
  v0 = type metadata accessor for AKSIdentity.State.State();
  v42 = *(v0 - 8);
  v43 = v0;
  v1 = *(v42 + 64);
  __chkstk_darwin(v0);
  v3 = &v39 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10000ADE0(&qword_100028310, &qword_10001CEC0);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v39 - v9;
  v11 = type metadata accessor for AKSIdentity.State();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v39 - v17;
  v19 = type metadata accessor for AKSHandle();
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v21 = type metadata accessor for AKSIdentity();
  v45 = *(v21 - 8);
  v22 = *(v45 + 64);
  __chkstk_darwin(v21);
  v24 = &v39 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  static AKSHandle.session.getter();
  AKSIdentity.init(_:)();
  v44 = v24;
  AKSIdentity.getIdentityState()();
  v40 = v11;
  v41 = v21;
  v39 = v12;
  (*(v12 + 32))(v18, v16, v11);
  AKSIdentity.State.state.getter();
  v26 = v42;
  v25 = v43;
  v27 = *(v42 + 48);
  LODWORD(v16) = v27(v10, 1, v43);
  sub_10000BAB8(v10, &qword_100028310, &qword_10001CEC0);
  if (v16 == 1)
  {
    if (qword_100028188 != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    sub_100001D14(v28, qword_100028190);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();
    v31 = os_log_type_enabled(v29, v30);
    v33 = v40;
    v32 = v41;
    v34 = v39;
    if (v31)
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&_mh_execute_header, v29, v30, "AKSIdentity.State.state appears nil, device appears to have never been unlocked", v35, 2u);
    }

    (*(v34 + 8))(v18, v33);
    (*(v45 + 8))(v44, v32);
    v36 = 0;
    return v36 & 1;
  }

  AKSIdentity.State.state.getter();
  result = v27(v8, 1, v25);
  if (result != 1)
  {
    static AKSIdentity.State.State.beenUnlocked.getter();
    sub_10000BB18();
    v36 = dispatch thunk of SetAlgebra.isSuperset(of:)();
    v38 = *(v26 + 8);
    v38(v3, v25);
    (*(v39 + 8))(v18, v40);
    (*(v45 + 8))(v44, v41);
    v38(v8, v25);
    return v36 & 1;
  }

  __break(1u);
  return result;
}

void sub_100008C90()
{
  if (qword_100028188 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100001D14(v0, qword_100028190);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v1, "returning after validating device has been through first unlock", v2, 2u);
  }
}

uint64_t sub_100008D78(uint64_t a1, NSObject *a2, uint64_t a3)
{
  if (qword_100028188 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100001D14(v5, qword_100028190);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "received lock status notification", v8, 2u);
  }

  dispatch_group_leave(a2);
  swift_beginAccess();
  return notify_cancel(*(a3 + 16));
}

uint64_t sub_100008E8C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

id sub_100008EE0()
{
  v0 = [objc_opt_self() defaultManager];
  inited = type metadata accessor for SecurityResearchDeviceInitCore();
  URL._bridgeToObjectiveC()(*(inited + 40));
  v3 = v2;
  v7 = 0;
  v4 = [v0 removeItemAtURL:v2 error:&v7];

  if (v4)
  {
    return v7;
  }

  v6 = v7;
  _convertNSErrorToError(_:)();

  return swift_willThrow();
}

uint64_t sub_100009004(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for Logger();
  sub_100001E0C(v3, a2);
  sub_100001D14(v3, a2);
  return Logger.init(subsystem:category:)();
}

void *sub_10000909C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

void *sub_1000090AC@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return &_swiftEmptyArrayStorage;
    }

    v7 = String.subscript.getter();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_10000946C(0, 1, 1, &_swiftEmptyArrayStorage);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = sub_10000946C((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = &_swiftEmptyArrayStorage;
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = String.subscript.getter();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = String.index(after:)();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = String.index(after:)();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = String.subscript.getter();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = sub_10000946C(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = String.subscript.getter();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_10000946C(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_10000946C((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = String.index(after:)();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

char *sub_10000946C(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000ADE0(&qword_100028320, &qword_10001CED0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100009578(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000ADE0(&qword_100028300, &qword_10001CEB8);
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

char *sub_10000966C(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000ADE0(&qword_1000282E0, &qword_10001CEA0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_100009778(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100009844(v11, 0, 0, 1, a1, a2);
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
    sub_10000BB70(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_10000B9B0(v11);
  return v7;
}

unint64_t sub_100009844(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100009950(a5, a6);
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

char *sub_100009950(uint64_t a1, unint64_t a2)
{
  v4 = sub_10000999C(a1, a2);
  sub_100009ACC(&off_100024B70);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_10000999C(uint64_t a1, unint64_t a2)
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

  v6 = sub_100009BB8(v5, 0);
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
        v7 = sub_100009BB8(v10, 0);
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

uint64_t sub_100009ACC(uint64_t result)
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

  result = sub_100009578(result, v12, 1, v3);
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

void *sub_100009BB8(uint64_t a1, uint64_t a2)
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

  sub_10000ADE0(&qword_100028300, &qword_10001CEB8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

uint64_t sub_100009C2C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a3 ^ a4;

  if (v5 >= 0x4000)
  {
    while (1)
    {
      v9 = Substring.subscript.getter();
      v11 = v10;
      v12 = Substring.index(after:)();
      v13 = String.Iterator.next()();
      if (!v13.value._object)
      {
        break;
      }

      if (v9 == v13.value._countAndFlagsBits && v13.value._object == v11)
      {
      }

      else
      {
        v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v8 & 1) == 0)
        {
          goto LABEL_3;
        }
      }

      if ((v12 ^ a4) < 0x4000)
      {
        goto LABEL_2;
      }
    }
  }

  else
  {
LABEL_2:
    object = String.Iterator.next()().value._object;

    if (object)
    {
LABEL_3:

      return 0;
    }
  }

  return 1;
}

unint64_t sub_100009D9C()
{
  result = qword_100028210;
  if (!qword_100028210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028210);
  }

  return result;
}

uint64_t type metadata accessor for SecurityResearchDeviceInitCore()
{
  result = qword_100028280;
  if (!qword_100028280)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

char *sub_100009E3C(char *a1, int64_t a2, char a3)
{
  result = sub_100009E5C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100009E5C(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000ADE0(&qword_1000282E0, &qword_10001CEA0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

_BYTE *sub_100009F68@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_10000B604(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_10000B6BC(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_10000B738(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

unsigned __int8 *sub_100009FFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v63 = a1;
  v64 = a2;

  result = String.init<A>(_:)();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_10000A5D0();
    v36 = v35;

    v5 = v36;
    if ((v36 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
      v7 = v62;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v20 = v7 - 1;
        if (v20)
        {
          v21 = a3 + 48;
          v22 = a3 + 55;
          v23 = a3 + 87;
          if (a3 > 10)
          {
            v21 = 58;
          }

          else
          {
            v23 = 97;
            v22 = 65;
          }

          if (result)
          {
            LOBYTE(v13) = 0;
            v24 = result + 1;
            v15 = 1;
            do
            {
              v25 = *v24;
              if (v25 < 0x30 || v25 >= v21)
              {
                if (v25 < 0x41 || v25 >= v22)
                {
                  v18 = 0;
                  if (v25 < 0x61 || v25 >= v23)
                  {
                    goto LABEL_127;
                  }

                  v26 = -87;
                }

                else
                {
                  v26 = -55;
                }
              }

              else
              {
                v26 = -48;
              }

              v27 = v13 * a3;
              if ((v27 & 0xFF00) != 0)
              {
                goto LABEL_126;
              }

              v13 = v27 + (v25 + v26);
              if ((v13 >> 8))
              {
                goto LABEL_126;
              }

              ++v24;
              --v20;
            }

            while (v20);
LABEL_46:
            v15 = 0;
            v18 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v18 = 0;
        v15 = 1;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v28 = a3 + 48;
        v29 = a3 + 55;
        v30 = a3 + 87;
        if (a3 > 10)
        {
          v28 = 58;
        }

        else
        {
          v30 = 97;
          v29 = 65;
        }

        if (result)
        {
          LOBYTE(v31) = 0;
          v15 = 1;
          do
          {
            v32 = *result;
            if (v32 < 0x30 || v32 >= v28)
            {
              if (v32 < 0x41 || v32 >= v29)
              {
                v18 = 0;
                if (v32 < 0x61 || v32 >= v30)
                {
                  goto LABEL_127;
                }

                v33 = -87;
              }

              else
              {
                v33 = -55;
              }
            }

            else
            {
              v33 = -48;
            }

            v34 = v31 * a3;
            if ((v34 & 0xFF00) != 0)
            {
              goto LABEL_126;
            }

            v31 = v34 + (v32 + v33);
            if ((v31 >> 8))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v15 = 0;
          v18 = v31;
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          LOBYTE(v13) = 0;
          v14 = result + 1;
          v15 = 1;
          while (1)
          {
            v16 = *v14;
            if (v16 < 0x30 || v16 >= v10)
            {
              if (v16 < 0x41 || v16 >= v11)
              {
                v18 = 0;
                if (v16 < 0x61 || v16 >= v12)
                {
                  goto LABEL_127;
                }

                v17 = -87;
              }

              else
              {
                v17 = -55;
              }
            }

            else
            {
              v17 = -48;
            }

            v19 = v13 * a3;
            if ((v19 & 0xFF00) != 0)
            {
              goto LABEL_126;
            }

            v13 = v19 - (v16 + v17);
            if ((v13 & 0xFFFFFF00) != 0)
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v18 = 0;
        v15 = 0;
LABEL_127:

        return (v18 | (v15 << 8));
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v37 = HIBYTE(v5) & 0xF;
  v63 = v6;
  v64 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v37)
      {
        LOBYTE(v39) = 0;
        v55 = a3 + 48;
        v56 = a3 + 55;
        v57 = a3 + 87;
        if (a3 > 10)
        {
          v55 = 58;
        }

        else
        {
          v57 = 97;
          v56 = 65;
        }

        v58 = &v63;
        v15 = 1;
        while (1)
        {
          v59 = *v58;
          if (v59 < 0x30 || v59 >= v55)
          {
            if (v59 < 0x41 || v59 >= v56)
            {
              v18 = 0;
              if (v59 < 0x61 || v59 >= v57)
              {
                goto LABEL_127;
              }

              v60 = -87;
            }

            else
            {
              v60 = -55;
            }
          }

          else
          {
            v60 = -48;
          }

          v61 = v39 * a3;
          if ((v61 & 0xFF00) != 0)
          {
            goto LABEL_126;
          }

          v39 = v61 + (v59 + v60);
          if ((v39 >> 8))
          {
            goto LABEL_126;
          }

          v58 = (v58 + 1);
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v37)
    {
      v38 = v37 - 1;
      if (v38)
      {
        LOBYTE(v39) = 0;
        v40 = a3 + 48;
        v41 = a3 + 55;
        v42 = a3 + 87;
        if (a3 > 10)
        {
          v40 = 58;
        }

        else
        {
          v42 = 97;
          v41 = 65;
        }

        v43 = &v63 + 1;
        v15 = 1;
        while (1)
        {
          v44 = *v43;
          if (v44 < 0x30 || v44 >= v40)
          {
            if (v44 < 0x41 || v44 >= v41)
            {
              v18 = 0;
              if (v44 < 0x61 || v44 >= v42)
              {
                goto LABEL_127;
              }

              v45 = -87;
            }

            else
            {
              v45 = -55;
            }
          }

          else
          {
            v45 = -48;
          }

          v46 = v39 * a3;
          if ((v46 & 0xFF00) != 0)
          {
            goto LABEL_126;
          }

          v39 = v46 - (v44 + v45);
          if ((v39 & 0xFFFFFF00) != 0)
          {
            goto LABEL_126;
          }

          ++v43;
          if (!--v38)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v37)
  {
    v47 = v37 - 1;
    if (v47)
    {
      LOBYTE(v39) = 0;
      v48 = a3 + 48;
      v49 = a3 + 55;
      v50 = a3 + 87;
      if (a3 > 10)
      {
        v48 = 58;
      }

      else
      {
        v50 = 97;
        v49 = 65;
      }

      v51 = &v63 + 1;
      v15 = 1;
      do
      {
        v52 = *v51;
        if (v52 < 0x30 || v52 >= v48)
        {
          if (v52 < 0x41 || v52 >= v49)
          {
            v18 = 0;
            if (v52 < 0x61 || v52 >= v50)
            {
              goto LABEL_127;
            }

            v53 = -87;
          }

          else
          {
            v53 = -55;
          }
        }

        else
        {
          v53 = -48;
        }

        v54 = v39 * a3;
        if ((v54 & 0xFF00) != 0)
        {
          goto LABEL_126;
        }

        v39 = v54 + (v52 + v53);
        if ((v39 >> 8))
        {
          goto LABEL_126;
        }

        ++v51;
        --v47;
      }

      while (v47);
LABEL_125:
      v15 = 0;
      v18 = v39;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_10000A5D0()
{
  v0 = String.subscript.getter();
  v4 = sub_10000A650(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_10000A650(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return static String._uncheckedFromUTF8(_:)();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = Substring.UTF8View.distance(from:to:)();
  if (!v9)
  {
    v11 = &_swiftEmptyArrayStorage;
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_100009BB8(v9, 0);
  v12 = sub_10000A7A8(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = static String._uncheckedFromUTF8(_:)();

    return v14;
  }

  __break(1u);
LABEL_11:
  _StringObject.sharedUTF8.getter();
LABEL_4:

  return static String._uncheckedFromUTF8(_:)();
}

unint64_t sub_10000A7A8(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_10000A9C8(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = String.UTF8View._foreignSubscript(position:)();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = _StringObject.sharedUTF8.getter();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_10000A9C8(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = String.UTF8View._foreignIndex(after:)();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_10000A9C8(unsigned __int16 a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = String.UTF16View.index(_:offsetBy:)();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = String.UTF8View._foreignIndex(_:offsetBy:)();
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_10000AA44(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    if (!*(a1 + 32))
    {
      return static String._fromUTF8Repairing(_:)(a1 + 32, 0);
    }

    a2 = 0;
    v3 = v2 - 1;
    while (v3 != a2)
    {
      if (!*(a1 + 33 + a2++))
      {
        a1 += 32;
        return static String._fromUTF8Repairing(_:)(a1, a2);
      }
    }

    __break(1u);
  }

  __break(1u);
  return static String._fromUTF8Repairing(_:)(a1, a2);
}

void *sub_10000AA90()
{
  v0 = type metadata accessor for CharacterSet();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  (__chkstk_darwin)();
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = 0;
  if (sysctlbyname("kern.bootargs", 0, &v24, 0, 0))
  {
    sub_10000ADE0(&qword_100028320, &qword_10001CED0);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_10001CD50;
    v6 = Substring.init(_:)();
    result = v5;
    *(v5 + 32) = v6;
    *(v5 + 40) = v8;
    *(v5 + 48) = v9;
    *(v5 + 56) = v10;
  }

  else
  {
    v11 = v24;
    if ((v24 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    if (v24)
    {
      v12 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      v12[2] = v11;
      bzero(v12 + 4, v11);
    }

    else
    {
      v12 = &_swiftEmptyArrayStorage;
    }

    if (sysctlbyname("kern.bootargs", v12 + 4, &v24, 0, 0))
    {

      sub_100009D9C();
      swift_allocError();
      *v14 = xmmword_10001CD60;
      *(v14 + 16) = 2;
      return swift_willThrow();
    }

    else
    {
      v15 = sub_10000AA44(v12, v13);
      v17 = v16;

      v22 = v15;
      v23 = v17;
      static CharacterSet.whitespacesAndNewlines.getter();
      sub_10000BBCC();
      v18 = StringProtocol.trimmingCharacters(in:)();
      v20 = v19;
      (*(v1 + 8))(v4, v0);

      v22 = 32;
      v23 = 0xE100000000000000;
      __chkstk_darwin(v21);
      *(&v22 - 2) = &v22;
      return sub_1000090AC(0x7FFFFFFFFFFFFFFFLL, 1, sub_10000BC20, (&v22 - 4), v18, v20, &v22);
    }
  }

  return result;
}

uint64_t sub_10000AD68(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(a6) & 0xF;
  }

  else
  {
    v6 = a5 & 0xFFFFFFFFFFFFLL;
  }

  if (a3 == a5 && a4 == a6 && !(a1 >> 16) && a2 >> 16 == v6)
  {
    return 1;
  }

  else
  {
    return _stringCompareInternal(_:_:_:_:expecting:)() & 1;
  }
}

uint64_t sub_10000ADE0(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_10000AE28(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000BDCC;

  return sub_100004BC4(a1);
}

uint64_t sub_10000AEC8(uint64_t a1)
{
  v2 = type metadata accessor for DownloadedEncryptedAsset();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000AF24(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000ADE0(&qword_100028218, &qword_10001D1D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000AF94(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000B040;

  return sub_100006B00(a1, v5, v4);
}

uint64_t sub_10000B040()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_10000B148(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_10000ADE0(&qword_100028218, &qword_10001D1D0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 28);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for URL();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 40);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_10000B28C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v8 = sub_10000ADE0(&qword_100028218, &qword_10001D1D0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 28);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for URL();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 40);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_10000B3BC()
{
  sub_10000BCC8(319, &qword_100028290, &type metadata for String, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    sub_10000B4A0();
    if (v1 <= 0x3F)
    {
      type metadata accessor for URL();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10000B4A0()
{
  if (!qword_100028298)
  {
    type metadata accessor for URL();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100028298);
    }
  }
}

uint64_t sub_10000B4F8(uint64_t a1)
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

__n128 sub_10000B514(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_10000B528(uint64_t a1, unsigned int a2)
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

uint64_t sub_10000B570(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_10000B5B8(uint64_t result, unsigned int a2)
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

uint64_t sub_10000B604(_BYTE *__src, _BYTE *a2)
{
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

uint64_t sub_10000B6BC(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = type metadata accessor for __DataStorage();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = __DataStorage.init(bytes:length:)();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    type metadata accessor for Data.RangeReference();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_10000B738(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = type metadata accessor for __DataStorage();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = __DataStorage.init(bytes:length:)();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_10000B7BC(uint64_t a1)
{
  v9 = sub_10000ADE0(&qword_1000282F0, &qword_10001CEB0);
  v10 = sub_10000B8C0();
  v8[0] = a1;
  v2 = sub_10000B96C(v8, v9);
  v3 = (*v2 + 32);
  v4 = *(*v2 + 16);

  sub_100009F68(v3, &v3[v4], &v7);
  v5 = v7;
  sub_10000B9B0(v8);
  return v5;
}

unint64_t sub_10000B86C()
{
  result = qword_1000282E8;
  if (!qword_1000282E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000282E8);
  }

  return result;
}

unint64_t sub_10000B8C0()
{
  result = qword_1000282F8;
  if (!qword_1000282F8)
  {
    sub_10000B924(&qword_1000282F0, &qword_10001CEB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000282F8);
  }

  return result;
}

uint64_t sub_10000B924(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

void *sub_10000B96C(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_10000B9B0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

unint64_t sub_10000BA0C()
{
  result = qword_100028308;
  if (!qword_100028308)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100028308);
  }

  return result;
}

uint64_t sub_10000BA58()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000BAA0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000BAB8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_10000ADE0(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_10000BB18()
{
  result = qword_100028318;
  if (!qword_100028318)
  {
    type metadata accessor for AKSIdentity.State.State();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028318);
  }

  return result;
}

uint64_t sub_10000BB70(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_10000BBCC()
{
  result = qword_100028328;
  if (!qword_100028328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028328);
  }

  return result;
}

uint64_t sub_10000BC20(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

void sub_10000BCC8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

__n128 sub_10000BD18(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_10000BD24(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10000BD6C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t NVRAM.__allocating_init()()
{
  v0 = swift_allocObject();
  NVRAM.init()();
  return v0;
}

uint64_t sub_10000BE08(uint64_t a1, unint64_t a2)
{
  v5 = *(*(type metadata accessor for String.Encoding() - 8) + 64);
  __chkstk_darwin();
  v6 = *(v2 + 16);
  v7 = String._bridgeToObjectiveC()();
  CFProperty = IORegistryEntryCreateCFProperty(v6, v7, kCFAllocatorDefault, 0);

  if (!CFProperty)
  {
    if (qword_1000281C8 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_100001D14(v23, qword_100028340);

    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v41 = v27;
      *v26 = 136315138;
      *(v26 + 4) = sub_100009778(a1, a2, &v41);
      _os_log_impl(&_mh_execute_header, v24, v25, "Unable to get value for key %s", v26, 0xCu);
      sub_10000B9B0(v27);
    }

    return 0;
  }

  v43 = CFProperty;
  swift_unknownObjectRetain();
  if (swift_dynamicCast())
  {
    v10 = v41;
    v9 = v42;
    static String.Encoding.utf8.getter();
    v11 = String.init(data:encoding:)();
    v13 = v12;
    if (qword_1000281C8 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_100001D14(v14, qword_100028340);

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v39 = a1;
      v17 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      *v17 = 136315394;
      if (v13)
      {
        v18 = v11;
      }

      else
      {
        v18 = 0;
      }

      v40 = v9;
      if (v13)
      {
        v19 = v13;
      }

      else
      {
        v19 = 0xE000000000000000;
      }

      v20 = sub_100009778(v18, v19, &v41);

      *(v17 + 4) = v20;
      *(v17 + 12) = 2080;
      *(v17 + 14) = sub_100009778(v39, a2, &v41);
      _os_log_impl(&_mh_execute_header, v15, v16, "Found NVRAM value %s for key %s", v17, 0x16u);
      swift_arrayDestroy();

      swift_unknownObjectRelease();
      v22 = v40;
      v21 = v10;
    }

    else
    {
      swift_unknownObjectRelease();
      v21 = v41;
      v22 = v42;
    }

    sub_10000CD7C(v21, v22);

    return v11;
  }

  v43 = CFProperty;
  swift_unknownObjectRetain();
  if (!swift_dynamicCast())
  {
    if (qword_1000281C8 != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    sub_100001D14(v33, qword_100028340);

    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v41 = v37;
      *v36 = 136315138;
      *(v36 + 4) = sub_100009778(a1, a2, &v41);
      _os_log_impl(&_mh_execute_header, v34, v35, "Unable to convert value for key %s into Data or String", v36, 0xCu);
      sub_10000B9B0(v37);
    }

    swift_unknownObjectRelease();
    return 0;
  }

  v11 = v41;
  v28 = v42;
  if (qword_1000281C8 != -1)
  {
    swift_once();
  }

  v29 = type metadata accessor for Logger();
  sub_100001D14(v29, qword_100028340);

  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    *v32 = 136315394;
    *(v32 + 4) = sub_100009778(v11, v28, &v41);
    *(v32 + 12) = 2080;
    *(v32 + 14) = sub_100009778(a1, a2, &v41);
    _os_log_impl(&_mh_execute_header, v30, v31, "Found NVRAM value %s for key %s", v32, 0x16u);
    swift_arrayDestroy();
  }

  swift_unknownObjectRelease();
  return v11;
}

void sub_10000C480(uint64_t a1, unint64_t a2)
{
  v5 = *(v2 + 16);
  v6 = String._bridgeToObjectiveC()();
  v7 = String._bridgeToObjectiveC()();
  v8 = IORegistryEntrySetCFProperty(v5, v6, v7);

  if (v8)
  {
    if (qword_1000281C8 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_100001D14(v9, qword_100028340);
    v18[0] = a1;
    v18[1] = a2;
    v19 = 0;
    v20 = 0;

    _print_unlocked<A, B>(_:_:)();
    v10._countAndFlagsBits = 0;
    v11._countAndFlagsBits = 0x662865766F6D6572;
    v11._object = 0xEF293A79654B726FLL;
    v10._object = 0xE000000000000000;
    Logger.errorWithMetadata(_:function:line:)(v10, v11, 74);

    sub_10000CD28();
    swift_allocError();
    *v12 = a1;
    *(v12 + 8) = a2;
    *(v12 + 16) = 0;
    *(v12 + 20) = 0;
    swift_willThrow();
  }

  else
  {
    if (qword_1000281C8 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_100001D14(v13, qword_100028340);

    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v18[0] = v17;
      *v16 = 136315138;
      *(v16 + 4) = sub_100009778(a1, a2, v18);
      _os_log_impl(&_mh_execute_header, v14, v15, "Removed NVRAM value for key %s", v16, 0xCu);
      sub_10000B9B0(v17);
    }
  }
}

void sub_10000C718()
{
  v1 = *(v0 + 16);
  v2 = String._bridgeToObjectiveC()();
  v3 = IORegistryEntrySetCFProperty(v1, @"IONVRAM-FORCESYNCNOW-PROPERTY", v2);

  if (v3)
  {
    if (qword_1000281C8 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_100001D14(v4, qword_100028340);
    _print_unlocked<A, B>(_:_:)();
    v5._countAndFlagsBits = 0;
    v6._object = 0x800000010001D900;
    v5._object = 0xE000000000000000;
    v6._countAndFlagsBits = 0xD000000000000014;
    Logger.errorWithMetadata(_:function:line:)(v5, v6, 65);

    sub_10000CD28();
    swift_allocError();
    *v7 = xmmword_10001CD60;
    *(v7 + 16) = 0;
    *(v7 + 20) = 2;
    swift_willThrow();
  }

  else
  {
    if (qword_1000281C8 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_100001D14(v8, qword_100028340);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "NVRAM synchronized", v11, 2u);
    }
  }
}

uint64_t sub_10000C920()
{
  v0 = type metadata accessor for Logger();
  sub_100001E0C(v0, qword_100028340);
  sub_100001D14(v0, qword_100028340);
  return Logger.init(subsystem:category:)();
}

uint64_t NVRAM.init()()
{
  v1 = v0;
  v2 = IORegistryEntryFromPath(kIOMainPortDefault, "IODeviceTree:/options");
  *(v0 + 16) = v2;
  if (v2)
  {
    if (qword_1000281C8 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_100001D14(v3, qword_100028340);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "NVRAM initialization successful", v6, 2u);
    }

    return v1;
  }

  else
  {
    if (qword_1000281C8 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_100001D14(v8, qword_100028340);
    _print_unlocked<A, B>(_:_:)();

    v9._countAndFlagsBits = 0x292874696E69;
    v10._countAndFlagsBits = 0;
    v10._object = 0xE000000000000000;
    v9._object = 0xE600000000000000;
    Logger.errorWithMetadata(_:function:line:)(v10, v9, 24);

    _print_unlocked<A, B>(_:_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t NVRAM.__deallocating_deinit()
{
  IOObjectRelease(*(v0 + 16));

  return _swift_deallocClassInstance(v0, 20, 7);
}

uint64_t sub_10000CC3C(uint64_t a1)
{
  if ((*(a1 + 20) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 20) & 3;
  }
}

__n128 sub_10000CC58(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 13) = *(a2 + 13);
  *a1 = result;
  return result;
}

uint64_t sub_10000CC6C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 21))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 20);
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

uint64_t sub_10000CCB4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 20) = 0;
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 21) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 21) = 0;
    }

    if (a2)
    {
      *(result + 20) = -a2;
    }
  }

  return result;
}

uint64_t sub_10000CCFC(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
    *(result + 16) = 0;
  }

  *(result + 20) = a2;
  return result;
}

unint64_t sub_10000CD28()
{
  result = qword_1000283F8;
  if (!qword_1000283F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000283F8);
  }

  return result;
}

uint64_t sub_10000CD7C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_10000CDD0()
{
  v0 = type metadata accessor for Logger();
  sub_100001E0C(v0, qword_100028400);
  sub_100001D14(v0, qword_100028400);
  return Logger.init(subsystem:category:)();
}

id sub_10000CE4C()
{
  v0 = [objc_opt_self() defaultManager];
  v1 = String._bridgeToObjectiveC()();
  v5 = 0;
  v2 = [v0 createDirectoryAtPath:v1 withIntermediateDirectories:0 attributes:0 error:&v5];

  if (v2)
  {
    return v5;
  }

  v4 = v5;
  _convertNSErrorToError(_:)();

  return swift_willThrow();
}

uint64_t *sub_10000CF48(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v135 = a2;
  v131 = a3;
  v137 = type metadata accessor for AEAHandler.Error();
  v4 = *(*(v137 - 1) + 64);
  __chkstk_darwin(v137);
  v136 = &v121 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ArchiveFlags();
  v128 = *(v6 - 8);
  v129 = v6;
  v7 = *(v128 + 64);
  v8 = __chkstk_darwin(v6);
  v127 = &v121 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v130 = &v121 - v10;
  v139 = type metadata accessor for URL();
  v11 = *(v139 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v139);
  v14 = &v121 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10000ADE0(&qword_100028418, &unk_10001D120);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v121 - v17;
  v19 = type metadata accessor for FilePath();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = __chkstk_darwin(v19);
  v133 = (&v121 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v22);
  v143 = &v121 - v24;
  if (qword_1000281D0 != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  v138 = sub_100001D14(v25, qword_100028400);
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 134217984;
    *(v28 + 4) = 1;
    _os_log_impl(&_mh_execute_header, v26, v27, "AEA decryption with %ld threads", v28, 0xCu);
  }

  v29 = v11;
  v32 = *(v11 + 16);
  v31 = v11 + 16;
  v30 = v32;
  v33 = v139;
  (v32)(v14, a1, v139);
  FilePath.init(_:)();
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    sub_10000BAB8(v18, &qword_100028418, &unk_10001D120);
    v142._countAndFlagsBits = 0;
    v142._object = 0xE000000000000000;
    v34 = v136;
    (v30)(v136, a1, v33);
    swift_storeEnumTagMultiPayload();
    _print_unlocked<A, B>(_:_:)();
    sub_10000E5C4(v34);
    v35._object = 0x800000010001D940;
    v35._countAndFlagsBits = 0xD000000000000036;
    Logger.errorWithMetadata(_:function:line:)(v142, v35, 110);

    sub_10000E620(&qword_100028420, type metadata accessor for AEAHandler.Error);
    swift_allocError();
    (v30)(v36, a1, v33);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return a1;
  }

  v124 = v31;
  v125 = v30;
  (*(v20 + 32))(v143, v18, v19);
  v37 = v33;
  v38 = URL.path.getter();
  v142._countAndFlagsBits = 47;
  v142._object = 0xE100000000000000;
  v140 = v38;
  v141 = v39;
  v140 = String.init<A>(_:)();
  v141 = v40;
  String.append<A>(contentsOf:)();
  v132 = v20;
  v126 = v19;
  v41 = v140;
  v42 = v141;
  URL.deletingPathExtension()();
  v43 = URL.lastPathComponent.getter();
  v45 = v44;
  v46 = v14;
  v47 = v37;
  (*(v29 + 8))(v46, v37);
  v142._countAndFlagsBits = v43;
  v142._object = v45;
  v140 = v41;
  v141 = v42;
  v140 = String.init<A>(_:)();
  v141 = v48;
  String.append<A>(contentsOf:)();

  a1 = v140;
  v49 = v141;
  v50 = [objc_opt_self() defaultManager];
  v51 = String._bridgeToObjectiveC()();
  LOBYTE(v42) = [v50 fileExistsAtPath:v51];

  if (v42)
  {

    v142._countAndFlagsBits = 0;
    v142._object = 0xE000000000000000;
    v53 = v135;
    v52 = v136;
    a1 = v125;
    (v125)(v136, v135, v47);
    swift_storeEnumTagMultiPayload();
    _print_unlocked<A, B>(_:_:)();
    sub_10000E5C4(v52);
    v54._object = 0x800000010001D940;
    v54._countAndFlagsBits = 0xD000000000000036;
    Logger.errorWithMetadata(_:function:line:)(v142, v54, 118);

    sub_10000E620(&qword_100028420, type metadata accessor for AEAHandler.Error);
    swift_allocError();
    (a1)(v55, v53, v47);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    (*(v132 + 8))(v143, v126);
    return a1;
  }

  v56 = v134;
  sub_10000CE4C();
  if (!v56)
  {
    v139 = "IONVRAM-DELETE-PROPERTY";

    v64 = v133;
    FilePath.init(_:)();
    type metadata accessor for ArchiveByteStream();
    v65 = v143;
    v66 = static ArchiveByteStream.fileStream(path:mode:options:permissions:)();
    v67 = v49;
    if (!v66)
    {

      v142._countAndFlagsBits = 0;
      v142._object = 0xE000000000000000;
      v75 = v136;
      a1 = v137;
      swift_storeEnumTagMultiPayload();
      _print_unlocked<A, B>(_:_:)();
      sub_10000E5C4(v75);
      v76._object = (v139 | 0x8000000000000000);
      v76._countAndFlagsBits = 0xD000000000000036;
      Logger.errorWithMetadata(_:function:line:)(v142, v76, 136);

      sub_10000E620(&qword_100028420, type metadata accessor for AEAHandler.Error);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      v77 = *(v132 + 8);
      v78 = v126;
      v77(v64, v126);
      v79 = v65;
LABEL_17:
      v80 = v78;
LABEL_18:
      v77(v79, v80);
      return a1;
    }

    v68 = v66;
    v135 = v67;
    v69 = type metadata accessor for ArchiveEncryptionContext();
    v70 = *(v69 + 48);
    v71 = *(v69 + 52);
    swift_allocObject();

    v72 = ArchiveEncryptionContext.init(from:)();
    v73 = v132;
    if (!v72)
    {

      v142._countAndFlagsBits = 0;
      v142._object = 0xE000000000000000;
      v81 = v136;
      a1 = v137;
      swift_storeEnumTagMultiPayload();
      _print_unlocked<A, B>(_:_:)();
      sub_10000E5C4(v81);
      v82._object = (v139 | 0x8000000000000000);
      v82._countAndFlagsBits = 0xD000000000000036;
      Logger.errorWithMetadata(_:function:line:)(v142, v82, 142);

      sub_10000E620(&qword_100028420, type metadata accessor for AEAHandler.Error);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

      v83 = *(v73 + 8);
      v84 = v126;
      v83(v133, v126);
      v83(v65, v84);
      return a1;
    }

    v74 = v72;
    v134 = v68;
    dispatch thunk of ArchiveEncryptionContext.setRecipientPrivateKey(_:)();
    v122 = 0;
    v142._countAndFlagsBits = &_swiftEmptyArrayStorage;
    sub_10000E620(&qword_100028428, &type metadata accessor for ArchiveFlags);
    v86 = sub_10000ADE0(&qword_100028430, &qword_10001D130);
    v87 = sub_10000E668();
    v88 = v130;
    v131 = v86;
    v125 = v87;
    v89 = v129;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v90 = static ArchiveByteStream.decryptionStream(readingFrom:encryptionContext:flags:threadCount:)();
    v91 = *(v128 + 8);
    v91(v88, v89);
    if (v90)
    {
      v123 = v74;
      v92 = v90;
      v93 = type metadata accessor for ArchiveStream();
      v142._countAndFlagsBits = &_swiftEmptyArrayStorage;
      v94 = v92;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v124 = v93;
      v95 = static ArchiveStream.decodeStream(readingFrom:selectUsing:flags:threadCount:)();
      v96 = v130;
      v97 = v95;
      v91(v130, v89);
      v128 = v97;
      if (v97)
      {
        v121 = v94;
        v142._countAndFlagsBits = &_swiftEmptyArrayStorage;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v98 = v133;
        v99 = static ArchiveStream.extractStream(extractingTo:selectUsing:flags:threadCount:)();
        v91(v96, v89);
        if (v99)
        {
          v137 = v91;
          v142._countAndFlagsBits = &_swiftEmptyArrayStorage;

          v100 = v127;
          dispatch thunk of SetAlgebra.init<A>(_:)();
          v101 = v122;
          static ArchiveStream.process(readingFrom:writingTo:selectUsing:flags:threadCount:)();
          if (!v101)
          {
            (v137)(v100, v89);

            dispatch thunk of ArchiveByteStream.close()();
            v117 = v132;
            v118 = v126;
            v119 = v143;
            dispatch thunk of ArchiveByteStream.close()();
            dispatch thunk of ArchiveStream.close()();
            dispatch thunk of ArchiveStream.close()();

            v120 = *(v117 + 8);
            v120(v133, v118);
            v120(v119, v118);
            return a1;
          }

          (v137)(v100, v89);
          swift_errorRetain();
          v102 = Logger.logObject.getter();
          v103 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v102, v103))
          {
            v104 = swift_slowAlloc();
            v105 = swift_slowAlloc();
            v106 = swift_slowAlloc();
            v142._countAndFlagsBits = v106;
            *v104 = 138412802;
            swift_errorRetain();
            v107 = _swift_stdlib_bridgeErrorToNSError();
            *(v104 + 4) = v107;
            *v105 = v107;
            *(v104 + 12) = 2080;
            *(v104 + 14) = sub_100009778(0xD000000000000036, v139 | 0x8000000000000000, &v142._countAndFlagsBits);
            *(v104 + 22) = 2048;
            *(v104 + 24) = 188;
            _os_log_impl(&_mh_execute_header, v102, v103, "Error: %@, in %s, line: %ld", v104, 0x20u);
            sub_10000BAB8(v105, &qword_100028220, &qword_10001CDA0);

            sub_10000B9B0(v106);
          }

          v108 = v132;
          v109 = v126;
          a1 = v143;
          swift_willThrow();

          dispatch thunk of ArchiveByteStream.close()();
          dispatch thunk of ArchiveByteStream.close()();
          dispatch thunk of ArchiveStream.close()();
          dispatch thunk of ArchiveStream.close()();

          v77 = *(v108 + 8);
          v77(v133, v109);
          v79 = a1;
          v80 = v109;
          goto LABEL_18;
        }

        v142._countAndFlagsBits = 0;
        v142._object = 0xE000000000000000;
        a1 = v98;
        v115 = v136;
        swift_storeEnumTagMultiPayload();
        _print_unlocked<A, B>(_:_:)();
        sub_10000E5C4(v115);
        v116._object = (v139 | 0x8000000000000000);
        v116._countAndFlagsBits = 0xD000000000000036;
        Logger.errorWithMetadata(_:function:line:)(v142, v116, 175);

        sub_10000E620(&qword_100028420, type metadata accessor for AEAHandler.Error);
        swift_allocError();
        swift_storeEnumTagMultiPayload();
        swift_willThrow();

        v77 = *(v132 + 8);
        v114 = a1;
        goto LABEL_31;
      }

      v142._countAndFlagsBits = 0;
      v142._object = 0xE000000000000000;
      a1 = v94;
      v112 = v136;
      swift_storeEnumTagMultiPayload();
      _print_unlocked<A, B>(_:_:)();
      sub_10000E5C4(v112);
      v113._object = (v139 | 0x8000000000000000);
      v113._countAndFlagsBits = 0xD000000000000036;
      Logger.errorWithMetadata(_:function:line:)(v142, v113, 166);

      sub_10000E620(&qword_100028420, type metadata accessor for AEAHandler.Error);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
    }

    else
    {

      v142._countAndFlagsBits = 0;
      v142._object = 0xE000000000000000;
      v110 = v136;
      a1 = v137;
      swift_storeEnumTagMultiPayload();
      _print_unlocked<A, B>(_:_:)();
      sub_10000E5C4(v110);
      v111._object = (v139 | 0x8000000000000000);
      v111._countAndFlagsBits = 0xD000000000000036;
      Logger.errorWithMetadata(_:function:line:)(v142, v111, 158);

      sub_10000E620(&qword_100028420, type metadata accessor for AEAHandler.Error);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
    }

    v114 = v133;
    v77 = *(v132 + 8);
LABEL_31:
    v78 = v126;
    v77(v114, v126);
    v79 = v143;
    goto LABEL_17;
  }

  swift_errorRetain();
  v57 = Logger.logObject.getter();
  v58 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v57, v58))
  {
    v59 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    a1 = swift_slowAlloc();
    v142._countAndFlagsBits = a1;
    *v59 = 138412802;
    swift_errorRetain();
    v61 = _swift_stdlib_bridgeErrorToNSError();
    *(v59 + 4) = v61;
    *v60 = v61;
    *(v59 + 12) = 2080;
    *(v59 + 14) = sub_100009778(0xD000000000000036, 0x800000010001D940, &v142._countAndFlagsBits);
    *(v59 + 22) = 2048;
    *(v59 + 24) = 121;
    _os_log_impl(&_mh_execute_header, v57, v58, "Error: %@, in %s, line: %ld", v59, 0x20u);
    sub_10000BAB8(v60, &qword_100028220, &qword_10001CDA0);

    sub_10000B9B0(a1);
  }

  v62 = v126;
  v63 = v143;
  swift_willThrow();

  (*(v132 + 8))(v63, v62);

  return a1;
}

uint64_t type metadata accessor for AEAHandler.Error()
{
  result = qword_1000284B0;
  if (!qword_1000284B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10000E5C4(uint64_t a1)
{
  v2 = type metadata accessor for AEAHandler.Error();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000E620(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10000E668()
{
  result = qword_100028438;
  if (!qword_100028438)
  {
    sub_10000B924(&qword_100028430, &qword_10001D130);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028438);
  }

  return result;
}

uint64_t sub_10000E71C()
{
  result = type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10000E780()
{
  v0 = type metadata accessor for Logger();
  sub_100001E0C(v0, qword_1000284E8);
  sub_100001D14(v0, qword_1000284E8);
  return Logger.init(subsystem:category:)();
}

unsigned __int8 *sub_10000E7F4()
{
  type metadata accessor for NVRAM();
  swift_initStackObject();
  NVRAM.init()();
  v0 = sub_10000BE08(0xD000000000000014, 0x800000010001D980);
  v2 = v1;

  if (!v2)
  {
    v30[0] = 0x7FFFFFFFFFFFFFFFLL;
    result = dispatch thunk of CustomStringConvertible.description.getter();
    v0 = result;
    v2 = v4;
  }

  v5 = HIBYTE(v2) & 0xF;
  v6 = v0 & 0xFFFFFFFFFFFFLL;
  if ((v2 & 0x2000000000000000) != 0)
  {
    v7 = HIBYTE(v2) & 0xF;
  }

  else
  {
    v7 = v0 & 0xFFFFFFFFFFFFLL;
  }

  if (!v7)
  {

    goto LABEL_65;
  }

  if ((v2 & 0x1000000000000000) != 0)
  {
    v31 = 0;
    v9 = sub_10000EB74(v0, v2, 10);
    v29 = v28;

    if ((v29 & 1) == 0)
    {
      goto LABEL_66;
    }

    goto LABEL_65;
  }

  if ((v2 & 0x2000000000000000) == 0)
  {
    if ((v0 & 0x1000000000000000) != 0)
    {
      result = ((v2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v6 >= 1)
      {
        v5 = v6 - 1;
        if (v6 != 1)
        {
          v9 = 0;
          if (result)
          {
            v16 = result + 1;
            while (1)
            {
              v17 = *v16 - 48;
              if (v17 > 9)
              {
                goto LABEL_63;
              }

              v18 = 10 * v9;
              if ((v9 * 10) >> 64 != (10 * v9) >> 63)
              {
                goto LABEL_63;
              }

              v9 = v18 + v17;
              if (__OFADD__(v18, v17))
              {
                goto LABEL_63;
              }

              ++v16;
              if (!--v5)
              {
                goto LABEL_64;
              }
            }
          }

          goto LABEL_55;
        }

        goto LABEL_63;
      }

      goto LABEL_73;
    }

    if (v8 != 45)
    {
      if (v6)
      {
        v9 = 0;
        if (result)
        {
          while (1)
          {
            v22 = *result - 48;
            if (v22 > 9)
            {
              goto LABEL_63;
            }

            v23 = 10 * v9;
            if ((v9 * 10) >> 64 != (10 * v9) >> 63)
            {
              goto LABEL_63;
            }

            v9 = v23 + v22;
            if (__OFADD__(v23, v22))
            {
              goto LABEL_63;
            }

            ++result;
            if (!--v6)
            {
              goto LABEL_55;
            }
          }
        }

        goto LABEL_55;
      }

LABEL_63:
      v9 = 0;
      LOBYTE(v5) = 1;
LABEL_64:
      v31 = v5;
      v27 = v5;

      if ((v27 & 1) == 0)
      {
LABEL_66:
        qword_100028500 = v9;
        return result;
      }

LABEL_65:
      v9 = 0x7FFFFFFFFFFFFFFFLL;
      goto LABEL_66;
    }

    if (v6 >= 1)
    {
      v5 = v6 - 1;
      if (v6 != 1)
      {
        v9 = 0;
        if (result)
        {
          v10 = result + 1;
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              goto LABEL_63;
            }

            v12 = 10 * v9;
            if ((v9 * 10) >> 64 != (10 * v9) >> 63)
            {
              goto LABEL_63;
            }

            v9 = v12 - v11;
            if (__OFSUB__(v12, v11))
            {
              goto LABEL_63;
            }

            ++v10;
            if (!--v5)
            {
              goto LABEL_64;
            }
          }
        }

LABEL_55:
        LOBYTE(v5) = 0;
        goto LABEL_64;
      }

      goto LABEL_63;
    }

    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  v30[0] = v0;
  v30[1] = v2 & 0xFFFFFFFFFFFFFFLL;
  if (v0 != 43)
  {
    if (v0 != 45)
    {
      if (v5)
      {
        v9 = 0;
        v24 = v30;
        while (1)
        {
          v25 = *v24 - 48;
          if (v25 > 9)
          {
            break;
          }

          v26 = 10 * v9;
          if ((v9 * 10) >> 64 != (10 * v9) >> 63)
          {
            break;
          }

          v9 = v26 + v25;
          if (__OFADD__(v26, v25))
          {
            break;
          }

          ++v24;
          if (!--v5)
          {
            goto LABEL_64;
          }
        }
      }

      goto LABEL_63;
    }

    if (v5)
    {
      if (--v5)
      {
        v9 = 0;
        v13 = v30 + 1;
        while (1)
        {
          v14 = *v13 - 48;
          if (v14 > 9)
          {
            break;
          }

          v15 = 10 * v9;
          if ((v9 * 10) >> 64 != (10 * v9) >> 63)
          {
            break;
          }

          v9 = v15 - v14;
          if (__OFSUB__(v15, v14))
          {
            break;
          }

          ++v13;
          if (!--v5)
          {
            goto LABEL_64;
          }
        }
      }

      goto LABEL_63;
    }

    goto LABEL_72;
  }

  if (v5)
  {
    if (--v5)
    {
      v9 = 0;
      v19 = v30 + 1;
      while (1)
      {
        v20 = *v19 - 48;
        if (v20 > 9)
        {
          break;
        }

        v21 = 10 * v9;
        if ((v9 * 10) >> 64 != (10 * v9) >> 63)
        {
          break;
        }

        v9 = v21 + v20;
        if (__OFADD__(v21, v20))
        {
          break;
        }

        ++v19;
        if (!--v5)
        {
          goto LABEL_64;
        }
      }
    }

    goto LABEL_63;
  }

LABEL_74:
  __break(1u);
  return result;
}

unsigned __int8 *sub_10000EB74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = String.init<A>(_:)();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_10000A5D0();
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_10000F100(void (*a1)(uint64_t *__return_ptr), uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  a1(&v17);
  if (!v5)
  {
    return v17;
  }

  swift_errorRetain();

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v16 = v13;
    *v11 = 138412802;
    swift_errorRetain();
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v14;
    *v12 = v14;
    *(v11 + 12) = 2080;
    *(v11 + 14) = sub_100009778(a3, a4, &v16);
    *(v11 + 22) = 2048;
    *(v11 + 24) = a5;
    _os_log_impl(&_mh_execute_header, v9, v10, "Error: %@, in %s, line: %ld", v11, 0x20u);
    sub_10000BAB8(v12, &qword_100028220, &qword_10001CDA0);

    sub_10000B9B0(v13);
  }

  return swift_willThrow();
}

uint64_t sub_10000F2C0(void (*a1)(uint64_t *__return_ptr), uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  a1(&v16);
  if (!v5)
  {
    return v16;
  }

  swift_errorRetain();

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v17 = v13;
    *v11 = 138412802;
    swift_errorRetain();
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v14;
    *v12 = v14;
    *(v11 + 12) = 2080;
    *(v11 + 14) = sub_100009778(a3, a4, &v17);
    *(v11 + 22) = 2048;
    *(v11 + 24) = a5;
    _os_log_impl(&_mh_execute_header, v9, v10, "Error: %@, in %s, line: %ld", v11, 0x20u);
    sub_10000BAB8(v12, &qword_100028220, &qword_10001CDA0);

    sub_10000B9B0(v13);
  }

  return swift_willThrow();
}

uint64_t sub_10000F480(uint64_t a1)
{
  v1[12] = a1;
  v2 = type metadata accessor for CryptexNonce();
  v1[13] = v2;
  v3 = *(v2 - 8);
  v1[14] = v3;
  v4 = *(v3 + 64) + 15;
  v1[15] = swift_task_alloc();
  v5 = type metadata accessor for CryptexIdentity();
  v1[16] = v5;
  v6 = *(v5 - 8);
  v1[17] = v6;
  v7 = *(v6 + 64) + 15;
  v1[18] = swift_task_alloc();

  return _swift_task_switch(sub_10000F59C, 0, 0);
}

uint64_t sub_10000F59C()
{
  type metadata accessor for CryptexLocalDevice();
  v0[19] = CryptexLocalDevice.__allocating_init()();
  if (qword_1000281E8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[20] = sub_100001D14(v1, qword_100028508);
  v2 = *(&async function pointer to dispatch thunk of CryptexLocalDevice.readIdentity() + 1);
  v6 = (&async function pointer to dispatch thunk of CryptexLocalDevice.readIdentity() + async function pointer to dispatch thunk of CryptexLocalDevice.readIdentity());

  v3 = swift_task_alloc();
  v0[21] = v3;
  *v3 = v0;
  v3[1] = sub_10000F6B4;
  v4 = v0[18];

  return v6(v4);
}

uint64_t sub_10000F6B4()
{
  v2 = *(*v1 + 168);
  v5 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v3 = sub_10000F974;
  }

  else
  {
    v3 = sub_10000F7C8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10000F7C8()
{
  v1 = v0[22];
  v2 = v0[19];
  v3 = v0[20];
  v4 = v0[12];

  v5 = swift_task_alloc();
  *(v5 + 16) = v4;
  v0[23] = sub_10000F100(sub_100011910, v5, 0xD000000000000020, 0x800000010001D9A0, 72);
  v6 = v0[19];
  if (v1)
  {
    v8 = v0[17];
    v7 = v0[18];
    v9 = v0[16];
    v10 = v0[19];

    (*(v8 + 8))(v7, v9);
    v11 = v0[18];
    v12 = v0[15];

    v13 = v0[1];

    return v13();
  }

  else
  {

    v15 = swift_task_alloc();
    v0[24] = v15;
    *v15 = v0;
    v15[1] = sub_10000FB5C;
    v16 = v0[19];
    v17 = v0[15];

    return sub_1000110EC(v17, v16);
  }
}

uint64_t sub_10000F974()
{
  v18 = v0;
  v1 = v0[22];
  v2 = v0[20];
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[22];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17 = v8;
    *v6 = 138412802;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    *(v6 + 12) = 2080;
    *(v6 + 14) = sub_100009778(0xD000000000000020, 0x800000010001D9A0, &v17);
    *(v6 + 22) = 2048;
    *(v6 + 24) = 69;
    _os_log_impl(&_mh_execute_header, v3, v4, "Error: %@, in %s, line: %ld", v6, 0x20u);
    sub_10000BAB8(v7, &qword_100028220, &qword_10001CDA0);

    sub_10000B9B0(v8);
  }

  v10 = v0[22];
  v11 = v0[19];
  swift_willThrow();

  v12 = v0[22];
  v13 = v0[18];
  v14 = v0[15];

  v15 = v0[1];

  return v15();
}

uint64_t sub_10000FB5C()
{
  v2 = *(*v1 + 192);
  v5 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    v3 = sub_10001006C;
  }

  else
  {
    v3 = sub_10000FC70;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10000FC70()
{
  v43 = v0;
  v1 = *(v0 + 200);
  v2 = *(v0 + 152);
  v3 = *(v0 + 160);
  v4 = *(v0 + 96);

  v5 = swift_task_alloc();
  *(v5 + 16) = v4;
  v6 = sub_10000F100(sub_10001192C, v5, 0xD000000000000020, 0x800000010001D9A0, 80);
  if (v1)
  {
    v7 = *(v0 + 184);
    v9 = *(v0 + 144);
    v8 = *(v0 + 152);
    v10 = *(v0 + 128);
    v11 = *(v0 + 136);
    (*(*(v0 + 112) + 8))(*(v0 + 120), *(v0 + 104));

    (*(v11 + 8))(v9, v10);
LABEL_10:
    v34 = *(v0 + 144);
    v35 = *(v0 + 120);

    v36 = *(v0 + 8);

    return v36();
  }

  v12 = v6;

  v13 = v12;
  v14 = *(v12 + 16);
  if (v14 != 1)
  {
    v29 = *(v0 + 152);
    v28 = *(v0 + 160);
    v30 = *(v0 + 136);
    v41 = *(v0 + 144);
    v39 = *(v0 + 184);
    v40 = *(v0 + 128);
    v31 = *(v0 + 112);
    v37 = *(v0 + 104);
    v38 = *(v0 + 120);

    *(v0 + 64) = 0;
    *(v0 + 72) = 0xE000000000000000;
    *(v0 + 16) = v14;
    *(v0 + 24) = 0;
    *(v0 + 32) = 3;
    _print_unlocked<A, B>(_:_:)();
    v32._object = 0x800000010001D9A0;
    v32._countAndFlagsBits = 0xD000000000000020;
    Logger.errorWithMetadata(_:function:line:)(*(v0 + 64), v32, 85);

    sub_10001195C();
    swift_allocError();
    *v33 = v14;
    *(v33 + 8) = 0;
    *(v33 + 16) = 3;
    swift_willThrow();

    (*(v31 + 8))(v38, v37);
    (*(v30 + 8))(v41, v40);
    goto LABEL_10;
  }

  v15 = *(v0 + 160);
  v17 = *(v13 + 32);
  v16 = *(v13 + 40);
  *(v0 + 208) = v16;
  swift_bridgeObjectRetain_n();

  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v42 = v21;
    *v20 = 136315138;
    *(v20 + 4) = sub_100009778(v17, v16, &v42);
    _os_log_impl(&_mh_execute_header, v18, v19, "Using variant: %s", v20, 0xCu);
    sub_10000B9B0(v21);
  }

  v22 = *(v0 + 184);
  v23 = *(v0 + 144);
  v24 = swift_task_alloc();
  *(v0 + 216) = v24;
  v24[2] = v22;
  v24[3] = v23;
  v24[4] = v17;
  v24[5] = v16;
  v25 = swift_task_alloc();
  *(v0 + 224) = v25;
  *v25 = v0;
  v25[1] = sub_10001027C;
  v26 = *(v0 + 160);

  return sub_100005B94(dword_10001D1C0, v24, 0xD000000000000020, 0x800000010001D9A0, 91);
}

uint64_t sub_10001006C()
{
  v22 = v0;
  v1 = v0[25];
  v2 = v0[20];
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[25];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v21 = v8;
    *v6 = 138412802;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    *(v6 + 12) = 2080;
    *(v6 + 14) = sub_100009778(0xD000000000000020, 0x800000010001D9A0, &v21);
    *(v6 + 22) = 2048;
    *(v6 + 24) = 76;
    _os_log_impl(&_mh_execute_header, v3, v4, "Error: %@, in %s, line: %ld", v6, 0x20u);
    sub_10000BAB8(v7, &qword_100028220, &qword_10001CDA0);

    sub_10000B9B0(v8);
  }

  v10 = v0[25];
  v11 = v0[23];
  v13 = v0[18];
  v12 = v0[19];
  v14 = v0[16];
  v15 = v0[17];
  swift_willThrow();

  (*(v15 + 8))(v13, v14);
  v16 = v0[25];
  v17 = v0[18];
  v18 = v0[15];

  v19 = v0[1];

  return v19();
}

uint64_t sub_10001027C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 224);
  v6 = *v2;
  *(v4 + 232) = a1;
  *(v4 + 240) = v1;

  v7 = *(v3 + 216);
  v8 = *(v3 + 208);

  if (v1)
  {
    v9 = sub_100010AA0;
  }

  else
  {
    v9 = sub_1000103D4;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_1000103D4()
{
  v1 = *(v0 + 232);
  if (v1)
  {
    v2 = swift_task_alloc();
    *(v0 + 248) = v2;
    *v2 = v0;
    v2[1] = sub_1000105EC;
    v3 = *(v0 + 144);
    v4 = *(v0 + 120);

    return sub_100011BA0(v1, v3, v4);
  }

  else
  {
    v7 = *(v0 + 152);
    v6 = *(v0 + 160);
    v8 = *(v0 + 136);
    v19 = *(v0 + 144);
    v17 = *(v0 + 184);
    v18 = *(v0 + 128);
    v16 = *(v0 + 120);
    v10 = *(v0 + 104);
    v9 = *(v0 + 112);
    *(v0 + 80) = 0;
    *(v0 + 88) = 0xE000000000000000;
    *(v0 + 48) = 0;
    *(v0 + 40) = 0;
    *(v0 + 56) = 4;
    _print_unlocked<A, B>(_:_:)();
    v11._object = 0x800000010001D9A0;
    v11._countAndFlagsBits = 0xD000000000000020;
    Logger.errorWithMetadata(_:function:line:)(*(v0 + 80), v11, 96);

    sub_10001195C();
    swift_allocError();
    *v12 = 0;
    *(v12 + 8) = 0;
    *(v12 + 16) = 4;
    swift_willThrow();

    (*(v9 + 8))(v16, v10);
    (*(v8 + 8))(v19, v18);
    v13 = *(v0 + 144);
    v14 = *(v0 + 120);

    v15 = *(v0 + 8);

    return v15();
  }
}

uint64_t sub_1000105EC()
{
  v1 = *(*v0 + 248);
  v3 = *v0;

  return _swift_task_switch(sub_1000106E8, 0, 0);
}

uint64_t sub_1000106E8()
{
  v1 = v0[20];
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Cryptex personalized", v4, 2u);
  }

  v5 = v0[29];

  v6 = swift_task_alloc();
  v0[32] = v6;
  *v6 = v0;
  v6[1] = sub_100010834;
  v7 = v0[20];

  return sub_10001A900(sub_10001A900, 0xD000000000000020, 0x800000010001D9A0, 103, v7, v5);
}

uint64_t sub_100010834()
{
  v2 = *(*v1 + 256);
  v5 = *v1;
  *(*v1 + 264) = v0;

  if (v0)
  {
    v3 = sub_100010B78;
  }

  else
  {
    v3 = sub_100010948;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100010948()
{
  v1 = v0[20];
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Cryptex installed successfully", v4, 2u);
  }

  v5 = v0[29];
  v6 = v0[23];
  v8 = v0[18];
  v7 = v0[19];
  v9 = v0[16];
  v10 = v0[17];
  v12 = v0[14];
  v11 = v0[15];
  v13 = v0[13];

  (*(v12 + 8))(v11, v13);
  (*(v10 + 8))(v8, v9);

  v14 = v0[1];

  return v14();
}

uint64_t sub_100010AA0()
{
  v1 = v0[23];
  v3 = v0[18];
  v2 = v0[19];
  v4 = v0[16];
  v5 = v0[17];
  v7 = v0[14];
  v6 = v0[15];
  v8 = v0[13];

  (*(v7 + 8))(v6, v8);
  (*(v5 + 8))(v3, v4);
  v9 = v0[30];
  v10 = v0[18];
  v11 = v0[15];

  v12 = v0[1];

  return v12();
}

uint64_t sub_100010B78()
{
  v1 = v0[29];
  v2 = v0[23];
  v4 = v0[18];
  v3 = v0[19];
  v5 = v0[16];
  v6 = v0[17];
  v8 = v0[14];
  v7 = v0[15];
  v9 = v0[13];

  (*(v8 + 8))(v7, v9);
  (*(v6 + 8))(v4, v5);
  v10 = v0[33];
  v11 = v0[18];
  v12 = v0[15];

  v13 = v0[1];

  return v13();
}

uint64_t sub_100010C5C()
{
  v0 = type metadata accessor for Logger();
  sub_100001E0C(v0, qword_100028508);
  sub_100001D14(v0, qword_100028508);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100010CDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v30 = a3;
  v5 = sub_10000ADE0(&qword_100028218, &qword_10001D1D0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v29 = v26 - v7;
  v8 = type metadata accessor for URL.DirectoryHint();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for FilePath();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  (*(v14 + 16))(v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v13);
  v17 = String.init(validating:)();
  if (v18)
  {
    v19 = *(v9 + 16);
    v26[1] = v17;
    v28 = v8;
    v19(v12, a2, v8);
    v20 = type metadata accessor for URL();
    v26[0] = a2;
    v21 = v20;
    v22 = *(*(v20 - 8) + 56);
    v27 = a1;
    v23 = v30;
    v22(v29, 1, 1, v20);
    URL.init(filePath:directoryHint:relativeTo:)();
    (*(v9 + 8))(v26[0], v28);
    (*(v14 + 8))(v27, v13);
    return (v22)(v23, 0, 1, v21);
  }

  else
  {
    (*(v9 + 8))(a2, v8);
    (*(v14 + 8))(a1, v13);
    v25 = type metadata accessor for URL();
    return (*(*(v25 - 8) + 56))(v30, 1, 1, v25);
  }
}

uint64_t sub_100010FF0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = type metadata accessor for FilePath();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CryptexBundle();
  (*(v6 + 16))(v9, a1, v5);
  result = CryptexBundle.__allocating_init(path:)();
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1000110EC(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = type metadata accessor for CryptexNonceSpec();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v6 = *(*(sub_10000ADE0(&qword_100028538, &qword_10001D1E8) - 8) + 64) + 15;
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  NonceOptions = type metadata accessor for CryptexReadNonceOptions();
  v2[10] = NonceOptions;
  v8 = *(NonceOptions - 8);
  v2[11] = v8;
  v9 = *(v8 + 64) + 15;
  v2[12] = swift_task_alloc();

  return _swift_task_switch(sub_100011258, 0, 0);
}

uint64_t sub_100011258()
{
  v1 = v0[12];
  v3 = v0[8];
  v2 = v0[9];
  v4 = v0[4];
  v5 = v0[5];
  *v2 = 9;
  (*(v5 + 104))(v2, enum case for CryptexNonceSpec.cryptex1(_:), v4);
  (*(v5 + 56))(v2, 0, 1, v4);
  CryptexReadNonceOptions.init()();
  sub_100013110(v2, v3);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    v6 = v0[8];
    sub_10000BAB8(v0[9], &qword_100028538, &qword_10001D1E8);
    sub_10000BAB8(v6, &qword_100028538, &qword_10001D1E8);
  }

  else
  {
    v7 = v0[12];
    v8 = v0[9];
    v10 = v0[6];
    v9 = v0[7];
    v11 = v0[4];
    v12 = v0[5];
    (*(v12 + 32))(v9, v0[8], v11);
    (*(v12 + 16))(v10, v9, v11);
    CryptexReadNonceOptions.nonceSpec.setter();
    sub_10000BAB8(v8, &qword_100028538, &qword_10001D1E8);
    (*(v12 + 8))(v9, v11);
  }

  v13 = *(&async function pointer to dispatch thunk of CryptexLocalDevice.readNonce(options:) + 1);
  v19 = (&async function pointer to dispatch thunk of CryptexLocalDevice.readNonce(options:) + async function pointer to dispatch thunk of CryptexLocalDevice.readNonce(options:));
  v14 = swift_task_alloc();
  v0[13] = v14;
  *v14 = v0;
  v14[1] = sub_100011468;
  v15 = v0[12];
  v16 = v0[2];
  v17 = v0[3];

  return v19(v16, v15);
}

uint64_t sub_100011468()
{
  v2 = *(*v1 + 104);
  v3 = *(*v1 + 96);
  v4 = *(*v1 + 88);
  v5 = *(*v1 + 80);
  v6 = *v1;
  v6[14] = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {

    return _swift_task_switch(sub_10001163C, 0, 0);
  }

  else
  {
    v7 = v6[12];
    v9 = v6[8];
    v8 = v6[9];
    v10 = v6[6];
    v11 = v6[7];

    v12 = v6[1];

    return v12();
  }
}

uint64_t sub_10001163C()
{
  v1 = v0[12];
  v2 = v0[8];
  v3 = v0[9];
  v5 = v0[6];
  v4 = v0[7];

  v6 = v0[1];
  v7 = v0[14];

  return v6();
}

uint64_t sub_1000116D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a1;
  v9 = *(&async function pointer to dispatch thunk of CryptexBundle.getCryptex(matching:variant:) + 1);
  v12 = (&async function pointer to dispatch thunk of CryptexBundle.getCryptex(matching:variant:) + async function pointer to dispatch thunk of CryptexBundle.getCryptex(matching:variant:));
  v10 = swift_task_alloc();
  *(v5 + 24) = v10;
  *v10 = v5;
  v10[1] = sub_1000117A0;

  return v12(a3, a4, a5);
}

uint64_t sub_1000117A0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *v2;

  if (v1)
  {
    v7 = *(v6 + 8);

    return v7();
  }

  else
  {
    *(v4 + 32) = a1;

    return _swift_task_switch(sub_1000118EC, 0, 0);
  }
}

uint64_t sub_10001192C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000122CC(*(v1 + 16));
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

unint64_t sub_10001195C()
{
  result = qword_100028520;
  if (!qword_100028520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028520);
  }

  return result;
}

uint64_t sub_1000119B0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000B040;

  return sub_1000116D0(a1, v4, v5, v7, v6);
}

unint64_t sub_100011A70(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();

  return sub_100011AE8(a1, a2, v6);
}

unint64_t sub_100011AE8(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_100011BA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  v4 = type metadata accessor for Cryptex.PersonalizeOptions();
  v3[10] = v4;
  v5 = *(v4 - 8);
  v3[11] = v5;
  v6 = *(v5 + 64) + 15;
  v3[12] = swift_task_alloc();
  v7 = swift_task_alloc();
  v3[13] = v7;
  *v7 = v3;
  v7[1] = sub_100011CA8;

  return sub_100018C28(1);
}

uint64_t sub_100011CA8()
{
  v1 = *(*v0 + 104);
  v3 = *v0;

  return _swift_task_switch(sub_100011DA4, 0, 0);
}

uint64_t sub_100011DA4()
{
  v1 = v0[12];
  Cryptex.PersonalizeOptions.init()();
  v2 = *(&async function pointer to dispatch thunk of Cryptex.personalize(for:nonce:options:) + 1);
  v9 = (&async function pointer to dispatch thunk of Cryptex.personalize(for:nonce:options:) + async function pointer to dispatch thunk of Cryptex.personalize(for:nonce:options:));
  v3 = swift_task_alloc();
  v0[14] = v3;
  *v3 = v0;
  v3[1] = sub_100011E5C;
  v4 = v0[12];
  v6 = v0[8];
  v5 = v0[9];
  v7 = v0[7];

  return v9(v6, v5, v4);
}

uint64_t sub_100011E5C()
{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 96);
  v4 = *(*v1 + 88);
  v5 = *(*v1 + 80);
  v8 = *v1;
  *(*v1 + 120) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = sub_1000120F8;
  }

  else
  {
    v6 = sub_100011FCC;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100011FCC()
{
  if (qword_1000281E8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100001D14(v1, qword_100028508);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 134217984;
    *(v4 + 4) = 1;
    _os_log_impl(&_mh_execute_header, v2, v3, "Personalize succeeded on iteration: %ld", v4, 0xCu);
  }

  v5 = *(v0 + 96);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1000120F8()
{
  if (qword_1000281E8 != -1)
  {
    swift_once();
  }

  v1 = v0[15];
  v2 = type metadata accessor for Logger();
  sub_100001D14(v2, qword_100028508);
  _StringGuts.grow(_:)(62);
  v3._countAndFlagsBits = 0xD000000000000021;
  v3._object = 0x800000010001D9D0;
  String.append(_:)(v3);
  v0[5] = 1;
  v4._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v4);

  v5._countAndFlagsBits = 0x7265206874697720;
  v5._object = 0xEC00000020726F72;
  String.append(_:)(v5);
  swift_getErrorValue();
  v6 = v0[2];
  v7 = v0[3];
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v8._countAndFlagsBits = 0x697972746572202CLL;
  v8._object = 0xED00002E2E2E676ELL;
  String.append(_:)(v8);
  v9._countAndFlagsBits = 0;
  v10._object = 0x800000010001DA00;
  v9._object = 0xE000000000000000;
  v10._countAndFlagsBits = 0xD00000000000001FLL;
  Logger.errorWithMetadata(_:function:line:)(v9, v10, 59);

  v11 = v0[12];

  v12 = v0[1];

  return v12();
}

uint64_t sub_1000122CC(uint64_t a1)
{
  v116 = a1;
  v112 = type metadata accessor for URL.DirectoryHint();
  v1 = *(v112 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v112);
  v4 = &v101 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000ADE0(&qword_100028218, &qword_10001D1D0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v101 - v7;
  v9 = type metadata accessor for URL();
  v117 = *(v9 - 8);
  v10 = *(v117 + 64);
  __chkstk_darwin(v9);
  v111 = &v101 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for FilePath();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v109 = &v101 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v19 = &v101 - v18;
  __chkstk_darwin(v17);
  v21 = &v101 - v20;
  v114 = v13;
  v22 = *(v13 + 16);
  v107 = v13 + 16;
  (v22)(v19, v116, v12);
  FilePath.appending(_:)();
  v113 = v21;
  v23 = v21;
  v24 = v9;
  v115 = v12;
  v25 = v12;
  v26 = v117;
  v108 = v22;
  (v22)(v19, v23, v25);
  (*(v1 + 104))(v4, enum case for URL.DirectoryHint.inferFromPath(_:), v112);
  sub_100010CDC(v19, v4, v8);
  if ((*(v26 + 48))(v8, 1, v9) == 1)
  {
    sub_10000BAB8(v8, &qword_100028218, &qword_10001D1D0);
    if (qword_1000281E8 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    sub_100001D14(v27, qword_100028508);
    v119._countAndFlagsBits = 0;
    v119._object = 0xE000000000000000;
    v28 = v113;
    v121[0] = FilePath.string.getter();
    v121[1] = v29;
    v122 = 0;
    _print_unlocked<A, B>(_:_:)();

    v30._countAndFlagsBits = 0x73746E6169726176;
    v30._object = 0xEF293A6D6F726628;
    Logger.errorWithMetadata(_:function:line:)(v119, v30, 21);

    v31 = FilePath.string.getter();
    v33 = v32;
    sub_10001195C();
    swift_allocError();
    *v34 = v31;
    *(v34 + 8) = v33;
    *(v34 + 16) = 0;
    swift_willThrow();
    (*(v114 + 8))(v28, v115);
    return v22;
  }

  v35 = v111;
  (*(v26 + 32))(v111, v8, v9);
  if (qword_1000281E8 != -1)
  {
    swift_once();
  }

  v36 = type metadata accessor for Logger();
  v37 = sub_100001D14(v36, qword_100028508);
  v38 = v110;
  v39 = Data.init(contentsOf:options:)();
  if (v38)
  {
    swift_errorRetain();
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = v35;
      v45 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v121[0] = v22;
      *v43 = 138412802;
      swift_errorRetain();
      v46 = _swift_stdlib_bridgeErrorToNSError();
      *(v43 + 4) = v46;
      *v45 = v46;
      *(v43 + 12) = 2080;
      *(v43 + 14) = sub_100009778(0x73746E6169726176, 0xEF293A6D6F726628, v121);
      *(v43 + 22) = 2048;
      *(v43 + 24) = 24;
      _os_log_impl(&_mh_execute_header, v41, v42, "Error: %@, in %s, line: %ld", v43, 0x20u);
      sub_10000BAB8(v45, &qword_100028220, &qword_10001CDA0);
      v35 = v44;

      sub_10000B9B0(v22);
    }

    v47 = v115;
    swift_willThrow();
    (*(v114 + 8))(v113, v47);
    (*(v26 + 8))(v35, v9);
    return v22;
  }

  v48 = v39;
  v49 = v40;
  v22 = 0x73746E6169726176;
  sub_1000130BC(v39, v40);
  sub_100019C60(0x73746E6169726176, 0xEF293A6D6F726628, 27, v37, v48, v49);
  v112 = v48;
  sub_10000BB70(v121, &v119);
  v51 = sub_10000ADE0(&qword_100028528, &qword_10001D1D8);
  if (!swift_dynamicCast())
  {
    v118._countAndFlagsBits = 0;
    v118._object = 0xE000000000000000;
    v69 = v26;
    v70 = v113;
    v119._countAndFlagsBits = FilePath.string.getter();
    v119._object = v71;
    v72 = v49;
    v120 = 1;
    _print_unlocked<A, B>(_:_:)();

    v73._countAndFlagsBits = 0x73746E6169726176;
    v73._object = 0xEF293A6D6F726628;
    Logger.errorWithMetadata(_:function:line:)(v118, v73, 31);

    v74 = FilePath.string.getter();
    v76 = v75;
    sub_10001195C();
    swift_allocError();
    *v77 = v74;
    *(v77 + 8) = v76;
    *(v77 + 16) = 1;
    swift_willThrow();
    sub_10000CD7C(v112, v72);
    sub_10000B9B0(v121);
    (*(v114 + 8))(v70, v115);
LABEL_35:
    (*(v69 + 8))(v111, v9);
    return v22;
  }

  v106 = v51;
  countAndFlagsBits = v118._countAndFlagsBits;
  v53 = *(v118._countAndFlagsBits + 16);
  v110 = v49;
  if (!v53 || (v54 = sub_100011A70(0x656449646C697542, 0xEF7365697469746ELL), (v55 & 1) == 0))
  {

LABEL_34:
    v118._countAndFlagsBits = 0;
    v118._object = 0xE000000000000000;
    v78 = v113;
    v119._countAndFlagsBits = FilePath.string.getter();
    v119._object = v79;
    v120 = 2;
    v22 = &type metadata for SecurityResearchDeviceCryptex.Error;
    _print_unlocked<A, B>(_:_:)();

    v80._countAndFlagsBits = 0x73746E6169726176;
    v80._object = 0xEF293A6D6F726628;
    Logger.errorWithMetadata(_:function:line:)(v118, v80, 35);

    v81 = FilePath.string.getter();
    v83 = v82;
    sub_10001195C();
    swift_allocError();
    *v84 = v81;
    *(v84 + 8) = v83;
    *(v84 + 16) = 2;
    swift_willThrow();
    sub_10000CD7C(v112, v110);
    sub_10000B9B0(v121);
    (*(v114 + 8))(v78, v115);
    v69 = v117;
    goto LABEL_35;
  }

  sub_10000BB70(*(countAndFlagsBits + 56) + 32 * v54, &v119);

  sub_10000ADE0(&qword_100028530, &qword_10001D1E0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_34;
  }

  v105 = v37;
  v56 = *(v118._countAndFlagsBits + 16);
  v104 = v118._countAndFlagsBits;
  if (v56)
  {
    v57 = v118._countAndFlagsBits + 32;
    v22 = &_swiftEmptyArrayStorage;
    while (1)
    {
      v58 = *v57;
      if (*(*v57 + 16))
      {
        v59 = *v57;

        v60 = sub_100011A70(1868983881, 0xE400000000000000);
        if (v61)
        {
          sub_10000BB70(*(v58 + 56) + 32 * v60, &v118);

          if ((swift_dynamicCast() & 1) == 0)
          {
            goto LABEL_20;
          }

          v62 = v123;
          if (*(v123 + 16))
          {
            v63 = sub_100011A70(0x746E6169726156, 0xE700000000000000);
            if (v64)
            {
              sub_10000BB70(*(v62 + 56) + 32 * v63, &v119);

              if (swift_dynamicCast())
              {
                v103 = v118._countAndFlagsBits;
                object = v118._object;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v22 = sub_10000966C(0, *(v22 + 16) + 1, 1, v22);
                }

                v66 = *(v22 + 16);
                v65 = *(v22 + 24);
                if (v66 >= v65 >> 1)
                {
                  v22 = sub_10000966C((v65 > 1), v66 + 1, 1, v22);
                }

                *(v22 + 16) = v66 + 1;
                v67 = v22 + 16 * v66;
                v68 = object;
                *(v67 + 32) = v103;
                *(v67 + 40) = v68;
                v49 = v110;
              }

              goto LABEL_20;
            }
          }
        }
      }

LABEL_20:
      v57 += 8;
      if (!--v56)
      {
        goto LABEL_38;
      }
    }
  }

  v22 = &_swiftEmptyArrayStorage;
LABEL_38:

  v85 = v109;
  v86 = v115;
  v108(v109, v116, v115);
  v87 = Logger.logObject.getter();
  v88 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v87, v88))
  {
    v89 = swift_slowAlloc();
    v116 = v9;
    v90 = v89;
    v108 = swift_slowAlloc();
    v119._countAndFlagsBits = v108;
    *v90 = 136315394;
    LODWORD(v107) = v88;
    v91 = FilePath.string.getter();
    v92 = v85;
    v94 = v93;
    v114 = *(v114 + 8);
    (v114)(v92, v86);
    v95 = sub_100009778(v91, v94, &v119._countAndFlagsBits);

    *(v90 + 4) = v95;
    *(v90 + 12) = 2080;

    v96 = Array.description.getter();
    v98 = v97;

    v99 = sub_100009778(v96, v98, &v119._countAndFlagsBits);

    *(v90 + 14) = v99;
    _os_log_impl(&_mh_execute_header, v87, v107, "Found variants for %s: %s", v90, 0x16u);
    swift_arrayDestroy();

    v24 = v116;

    sub_10000CD7C(v112, v110);

    sub_10000B9B0(v121);
    (v114)(v113, v86);
    v26 = v117;
  }

  else
  {
    sub_10000CD7C(v112, v49);

    v100 = *(v114 + 8);
    v100(v85, v86);
    sub_10000B9B0(v121);
    v100(v113, v86);
  }

  (*(v26 + 8))(v111, v24);
  return v22;
}

uint64_t sub_1000130BC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_100013110(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000ADE0(&qword_100028538, &qword_10001D1E8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100013180(uint64_t a1)
{
  if ((*(a1 + 16) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 16) & 7;
  }
}

uint64_t sub_10001319C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 17))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 16);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1000131E4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
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

uint64_t sub_100013228(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    *(result + 8) = 0;
    LOBYTE(a2) = 4;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t type metadata accessor for DownloadedEncryptedAsset()
{
  result = qword_100028600;
  if (!qword_100028600)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_10001329C()
{
  result = sub_100013310();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for URL();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_100013310()
{
  result = qword_100028610;
  if (!qword_100028610)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100028610);
  }

  return result;
}

void sub_10001335C(uint64_t a1@<X8>)
{
  v3 = v2;
  v5 = type metadata accessor for URL.DirectoryHint();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v58 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v62 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DownloadedEncryptedAsset();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = (&v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1000141B8(v1, v16);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v10 + 32))(a1, v16, v9);
LABEL_3:
    (*(v10 + 56))(a1, 0, 1, v9);
    return;
  }

  v55 = v6;
  v56 = v5;
  v57 = v10;
  v17 = *v16;
  if (qword_1000281F8 != -1)
  {
LABEL_30:
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  v19 = sub_100001D14(v18, qword_100028558);
  v20 = v17;
  v21 = sub_10001B2D0(0x7465737341746567, 0xEE00292868746150, 72, v19, v20);

  if (v3)
  {
    goto LABEL_28;
  }

  v52 = v19;
  v53 = v9;
  v54 = v20;
  v48 = a1;
  v49 = 0;
  a1 = *(v21 + 16);
  if (a1)
  {
    v9 = 0;
    v3 = v21 + 40;
    v50 = (a1 - 1);
    countAndFlagsBits = &_swiftEmptyArrayStorage;
    v51 = v21 + 40;
    do
    {
      v23 = (v3 + 16 * v9);
      v17 = v9;
      while (1)
      {
        if (v17 >= *(v21 + 16))
        {
          __break(1u);
          goto LABEL_30;
        }

        v25 = *(v23 - 1);
        v24 = *v23;
        v9 = (v17 + 1);

        v26._countAndFlagsBits = 1634033966;
        v26._object = 0xE400000000000000;
        if (String.hasSuffix(_:)(v26))
        {
          break;
        }

        v27._countAndFlagsBits = 1717662254;
        v27._object = 0xE400000000000000;
        if (String.hasSuffix(_:)(v27))
        {
          break;
        }

        v23 += 2;
        ++v17;
        if (a1 == v9)
        {
          goto LABEL_21;
        }
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v61._countAndFlagsBits = countAndFlagsBits;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_100009E3C(0, countAndFlagsBits[2] + 1, 1);
        countAndFlagsBits = v61._countAndFlagsBits;
      }

      v30 = countAndFlagsBits[2];
      v29 = countAndFlagsBits[3];
      v31 = v30 + 1;
      if (v30 >= v29 >> 1)
      {
        sub_100009E3C((v29 > 1), v30 + 1, 1);
        v31 = v30 + 1;
        countAndFlagsBits = v61._countAndFlagsBits;
      }

      countAndFlagsBits[2] = v31;
      v32 = &countAndFlagsBits[2 * v30];
      v32[4] = v25;
      v32[5] = v24;
      v3 = v51;
    }

    while (v50 != v17);
  }

  else
  {
    countAndFlagsBits = &_swiftEmptyArrayStorage;
  }

LABEL_21:
  v33 = countAndFlagsBits[2];
  v9 = v53;
  if (v33 != 1)
  {

    v61._countAndFlagsBits = 0;
    v61._object = 0xE000000000000000;
    v59 = v33;
    v60 = 1;
    _print_unlocked<A, B>(_:_:)();
    v45._countAndFlagsBits = 0x7465737341746567;
    v45._object = 0xEE00292868746150;
    Logger.errorWithMetadata(_:function:line:)(v61, v45, 77);

    sub_100018BD4();
    swift_allocError();
    *v46 = v33;
    *(v46 + 8) = 1;
    swift_willThrow();
    v20 = v54;
LABEL_28:

    return;
  }

  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 0;
    _os_log_impl(&_mh_execute_header, v34, v35, "Extracted asset path from downloaded MobileAsset", v36, 2u);
  }

  v37 = [v54 getLocalUrl];
  a1 = v48;
  if (v37)
  {
    v38 = v37;

    v39 = v62;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    if (countAndFlagsBits[2])
    {
      v40 = countAndFlagsBits[4];
      v41 = countAndFlagsBits[5];

      v61._countAndFlagsBits = v40;
      v61._object = v41;
      v43 = v55;
      v42 = v56;
      v44 = v58;
      (*(v55 + 104))(v58, enum case for URL.DirectoryHint.inferFromPath(_:), v56);
      sub_10000BBCC();
      URL.appending<A>(path:directoryHint:)();

      (*(v43 + 8))(v44, v42);

      v10 = v57;
      (*(v57 + 8))(v39, v9);
      goto LABEL_3;
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_100013974()
{
  v1[6] = v0;
  v2 = type metadata accessor for URL();
  v1[7] = v2;
  v3 = *(v2 - 8);
  v1[8] = v3;
  v4 = *(v3 + 64) + 15;
  v1[9] = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  v1[10] = v5;
  v6 = *(v5 - 8);
  v1[11] = v6;
  v7 = *(v6 + 64) + 15;
  v1[12] = swift_task_alloc();
  v8 = type metadata accessor for DownloadedEncryptedAsset();
  v1[13] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v1[14] = swift_task_alloc();

  return _swift_task_switch(sub_100013AC0, 0, 0);
}

void sub_100013AC0()
{
  v52 = v0;
  v1 = v0[13];
  sub_1000141B8(v0[6], v0[14]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v3 = v0[14];
  if (EnumCaseMultiPayload == 1)
  {
    (*(v0[8] + 32))(v0[9], v3, v0[7]);
    if (qword_1000281F8 != -1)
    {
      swift_once();
    }

    v4 = v0[9];
    sub_100001D14(v0[10], qword_100028558);
    sub_100015E48();
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "Deleted HTTP download successfully", v17, 2u);
    }

    v19 = v0[8];
    v18 = v0[9];
    v20 = v0[7];

    (*(v19 + 8))(v18, v20);
  }

  else
  {
    v5 = *v3;
    if ([*v3 purgeSync])
    {
      if (qword_1000281F8 != -1)
      {
        swift_once();
      }

      v7 = v0[11];
      v6 = v0[12];
      v8 = v0[10];
      v9 = sub_100001D14(v8, qword_100028558);
      (*(v7 + 16))(v6, v9, v8);
      _StringGuts.grow(_:)(44);

      v51._countAndFlagsBits = 0xD00000000000001CLL;
      v51._object = 0x800000010001DA60;
      v10 = [v5 assetId];
      if (v10)
      {
        v11 = v10;
        v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v14 = v13;
      }

      else
      {
        v12 = 0;
        v14 = 0;
      }

      v0[2] = v12;
      v0[3] = v14;
      sub_10000ADE0(&qword_100028640, &qword_10001D330);
      v31._countAndFlagsBits = String.init<A>(describing:)();
      String.append(_:)(v31);

      v32._countAndFlagsBits = 0x7265206874697720;
      v32._object = 0xEC00000020726F72;
      String.append(_:)(v32);
      v33 = MAStringForMAPurgeResult();
      if (v33)
      {
        v34 = v33;
        v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v37 = v36;
      }

      else
      {
        v35 = 0;
        v37 = 0;
      }

      v39 = v0[11];
      v38 = v0[12];
      v40 = v0[10];
      v0[4] = v35;
      v0[5] = v37;
      v41._countAndFlagsBits = String.init<A>(describing:)();
      String.append(_:)(v41);

      v42._countAndFlagsBits = 0x73416574656C6564;
      v42._object = 0xED00002928746573;
      Logger.errorWithMetadata(_:function:line:)(v51, v42, 56);

      (*(v39 + 8))(v38, v40);
      sub_100018BD4();
      swift_allocError();
      *v43 = 0;
      *(v43 + 8) = 2;
      swift_willThrow();

      v44 = v0[14];
      v45 = v0[12];
      v46 = v0[9];

      v47 = v0[1];
      goto LABEL_25;
    }

    if (qword_1000281F8 != -1)
    {
      swift_once();
    }

    sub_100001D14(v0[10], qword_100028558);
    v21 = v5;
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v51._countAndFlagsBits = v25;
      *v24 = 136315138;
      v26 = [v21 assetId];

      if (!v26)
      {
        __break(1u);
        return;
      }

      v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v29 = v28;

      v30 = sub_100009778(v27, v29, &v51._countAndFlagsBits);

      *(v24 + 4) = v30;
      _os_log_impl(&_mh_execute_header, v22, v23, "Deleted MobileAsset %s successfully", v24, 0xCu);
      sub_10000B9B0(v25);
    }

    else
    {
    }
  }

  v48 = v0[14];
  v49 = v0[12];
  v50 = v0[9];

  v47 = v0[1];
LABEL_25:

  v47();
}

uint64_t sub_1000141B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DownloadedEncryptedAsset();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001421C(uint64_t a1, uint64_t a2)
{
  v2[19] = a1;
  v2[20] = a2;
  v3 = type metadata accessor for ContinuousClock.Instant();
  v2[21] = v3;
  v4 = *(v3 - 8);
  v2[22] = v4;
  v5 = *(v4 + 64) + 15;
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v6 = type metadata accessor for ContinuousClock();
  v2[25] = v6;
  v7 = *(v6 - 8);
  v2[26] = v7;
  v8 = *(v7 + 64) + 15;
  v2[27] = swift_task_alloc();
  v9 = type metadata accessor for URL();
  v2[28] = v9;
  v10 = *(v9 - 8);
  v2[29] = v10;
  v11 = *(v10 + 64) + 15;
  v2[30] = swift_task_alloc();
  v12 = type metadata accessor for URLRequest();
  v2[31] = v12;
  v13 = *(v12 - 8);
  v2[32] = v13;
  v14 = *(v13 + 64) + 15;
  v2[33] = swift_task_alloc();

  return _swift_task_switch(sub_1000143FC, 0, 0);
}

uint64_t sub_1000143FC()
{
  v1 = v0[33];
  (*(v0[29] + 16))(v0[30], v0[20], v0[28]);
  URLRequest.init(url:cachePolicy:timeoutInterval:)();
  v2 = swift_task_alloc();
  v0[34] = v2;
  *v2 = v0;
  v2[1] = sub_1000144E0;

  return sub_100018C28(1);
}

uint64_t sub_1000144E0()
{
  v1 = *(*v0 + 272);
  v3 = *v0;

  return _swift_task_switch(sub_1000145DC, 0, 0);
}

uint64_t sub_1000145DC()
{
  if (qword_1000281E0 != -1)
  {
    swift_once();
  }

  v0[35] = qword_100028500;
  v0[36] = 1;
  v1 = swift_task_alloc();
  v0[37] = v1;
  *v1 = v0;
  v1[1] = sub_1000146B8;
  v2 = v0[33];
  v3 = v0[19];

  return sub_1000161D4(v3, 1, v2);
}

uint64_t sub_1000146B8()
{
  v2 = *(*v1 + 296);
  v5 = *v1;
  *(*v1 + 304) = v0;

  if (v0)
  {
    v3 = sub_100014884;
  }

  else
  {
    v3 = sub_1000147CC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000147CC()
{
  v1 = v0[30];
  v2 = v0[27];
  v4 = v0[23];
  v3 = v0[24];
  (*(v0[32] + 8))(v0[33], v0[31]);

  v5 = v0[1];

  return v5();
}

uint64_t sub_100014884()
{
  if (*(v0 + 288) < *(v0 + 280) && (v1 = *(v0 + 304), v2 = *(v0 + 160), (sub_100016BBC() & 1) != 0))
  {
    v3 = *(v0 + 216);
    v4 = *(v0 + 192);
    v5 = *(v0 + 200);
    v7 = *(v0 + 176);
    v6 = *(v0 + 184);
    v8 = *(v0 + 168);
    exp2(*(v0 + 288));
    v9 = static Duration.seconds(_:)();
    v11 = v10;
    static Clock<>.continuous.getter();
    *(v0 + 112) = v9;
    *(v0 + 120) = v11;
    *(v0 + 96) = 0;
    *(v0 + 88) = 0;
    *(v0 + 104) = 1;
    v12 = sub_100019560(&qword_100028668, &type metadata accessor for ContinuousClock);
    dispatch thunk of Clock.now.getter();
    sub_100019560(&qword_100028670, &type metadata accessor for ContinuousClock.Instant);
    dispatch thunk of InstantProtocol.advanced(by:)();
    v13 = *(v7 + 8);
    *(v0 + 312) = v13;
    *(v0 + 320) = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v13(v6, v8);
    v14 = async function pointer to dispatch thunk of Clock.sleep(until:tolerance:)[1];
    v15 = swift_task_alloc();
    *(v0 + 328) = v15;
    *v15 = v0;
    v15[1] = sub_100014B9C;
    v16 = *(v0 + 216);
    v18 = *(v0 + 192);
    v17 = *(v0 + 200);

    return dispatch thunk of Clock.sleep(until:tolerance:)(v18, v0 + 88, v17, v12);
  }

  else
  {
    if (qword_1000281D8 != -1)
    {
      swift_once();
    }

    v19 = *(v0 + 304);
    v20 = type metadata accessor for Logger();
    sub_100001D14(v20, qword_1000284E8);
    swift_getErrorValue();
    v21 = *(v0 + 16);
    v22 = *(v0 + 24);
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    v23._countAndFlagsBits = 0;
    v24._object = 0x800000010001DA80;
    v23._object = 0xE000000000000000;
    v24._countAndFlagsBits = 0xD000000000000033;
    Logger.errorWithMetadata(_:function:line:)(v23, v24, 69);

    swift_getErrorValue();
    v25 = *(v0 + 40);
    v26 = *(v0 + 48);
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    return _assertionFailure(_:_:file:line:flags:)();
  }
}

uint64_t sub_100014B9C()
{
  v2 = *v1;
  v3 = *(*v1 + 328);
  v10 = *v1;
  *(*v1 + 336) = v0;

  v4 = *(v2 + 320);
  if (v0)
  {
    (*(v2 + 312))(*(v2 + 192), *(v2 + 168));
    v5 = sub_100014DA4;
  }

  else
  {
    v7 = *(v2 + 208);
    v6 = *(v2 + 216);
    v8 = *(v2 + 200);
    (*(v2 + 312))(*(v2 + 192), *(v2 + 168));
    (*(v7 + 8))(v6, v8);
    v5 = sub_100014CF4;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100014CF4()
{
  v1 = v0[38];
  v2 = v0[36];

  v3 = v2 + 1;
  v0[36] = v3;
  v4 = swift_task_alloc();
  v0[37] = v4;
  *v4 = v0;
  v4[1] = sub_1000146B8;
  v5 = v0[33];
  v6 = v0[19];

  return sub_1000161D4(v6, v3, v5);
}

uint64_t sub_100014DA4()
{
  v1 = v0[42];
  (*(v0[26] + 8))(v0[27], v0[25]);
  _StringGuts.grow(_:)(32);
  v2._object = 0x800000010001DAF0;
  v2._countAndFlagsBits = 0xD00000000000001ELL;
  String.append(_:)(v2);
  swift_getErrorValue();
  v3 = v0[8];
  v4 = v0[9];
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  return _assertionFailure(_:_:file:line:flags:)();
}

uint64_t sub_100014E8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[29] = a5;
  v6[30] = a6;
  v6[27] = a3;
  v6[28] = a4;
  v6[25] = a1;
  v6[26] = a2;
  v7 = type metadata accessor for ContinuousClock.Instant();
  v6[31] = v7;
  v8 = *(v7 - 8);
  v6[32] = v8;
  v9 = *(v8 + 64) + 15;
  v6[33] = swift_task_alloc();
  v6[34] = swift_task_alloc();
  v10 = type metadata accessor for ContinuousClock();
  v6[35] = v10;
  v11 = *(v10 - 8);
  v6[36] = v11;
  v12 = *(v11 + 64) + 15;
  v6[37] = swift_task_alloc();
  v13 = *(*(sub_10000ADE0(&qword_100028218, &qword_10001D1D0) - 8) + 64) + 15;
  v6[38] = swift_task_alloc();
  v14 = type metadata accessor for URL();
  v6[39] = v14;
  v15 = *(v14 - 8);
  v6[40] = v15;
  v16 = *(v15 + 64) + 15;
  v6[41] = swift_task_alloc();
  v6[42] = swift_task_alloc();

  return _swift_task_switch(sub_10001505C, 0, 0);
}

uint64_t sub_10001505C()
{
  v41 = v0;
  if (v0[29])
  {
    v2 = v0[27];
    v1 = v0[28];
    v3 = v0[26];
    v4 = String._bridgeToObjectiveC()();
    v5 = String._bridgeToObjectiveC()();
    MASetPallasAudienceForType();
  }

  v6 = v0[39];
  v7 = v0[40];
  v8 = v0[38];
  sub_10000AF24(v0[30], v8);
  if ((*(v7 + 48))(v8, 1, v6) == 1)
  {
    sub_10000BAB8(v0[38], &qword_100028218, &qword_10001D1D0);
  }

  else
  {
    (*(v0[40] + 32))(v0[42], v0[38], v0[39]);
    if (qword_100028200 != -1)
    {
      swift_once();
    }

    v9 = v0[41];
    v10 = v0[42];
    v11 = v0[39];
    v12 = v0[40];
    v13 = type metadata accessor for Logger();
    sub_100001D14(v13, qword_100028570);
    (*(v12 + 16))(v9, v10, v11);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    v16 = os_log_type_enabled(v14, v15);
    v18 = v0[40];
    v17 = v0[41];
    v19 = v0[39];
    if (v16)
    {
      v20 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v40 = v39;
      *v20 = 136315138;
      v21 = URL.path(percentEncoded:)(1);
      v22 = *(v18 + 8);
      v22(v17, v19);
      v23 = sub_100009778(v21._countAndFlagsBits, v21._object, &v40);

      *(v20 + 4) = v23;
      _os_log_impl(&_mh_execute_header, v14, v15, "Pallas URL override set: %s", v20, 0xCu);
      sub_10000B9B0(v39);
      v24 = v22;
    }

    else
    {

      v24 = *(v18 + 8);
      v24(v17, v19);
    }

    v26 = v0[42];
    v27 = v0[39];
    v29 = v0[26];
    v28 = v0[27];
    URL._bridgeToObjectiveC()(v25);
    v31 = v30;
    v32 = String._bridgeToObjectiveC()();
    MASetPallasUrlForType();

    v24(v26, v27);
  }

  v33 = [objc_allocWithZone(MADownloadOptions) init];
  v0[43] = v33;
  [v33 setAllowsCellularAccess:1];
  [v33 setTimeoutIntervalForResource:1200];
  [v33 setAllowsExpensiveAccess:1];
  [v33 setDiscretionary:0];
  v0[21] = 0;
  if (qword_1000281E0 != -1)
  {
    swift_once();
  }

  v0[44] = qword_100028500;
  v0[45] = 1;
  v34 = swift_task_alloc();
  v0[46] = v34;
  *v34 = v0;
  v34[1] = sub_10001544C;
  v35 = v0[43];
  v36 = v0[26];
  v37 = v0[27];

  return sub_100016E70(v34, 1, v36, v37, v35, (v0 + 21));
}

uint64_t sub_10001544C()
{
  v2 = *(*v1 + 368);
  v5 = *v1;
  *(*v1 + 376) = v0;

  if (v0)
  {
    v3 = sub_1000157A8;
  }

  else
  {
    v3 = sub_100015560;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100015560()
{
  v1 = *(v0 + 168);
  if (v1)
  {
    v2 = *(v0 + 336);
    v3 = *(v0 + 344);
    v4 = *(v0 + 328);
    v6 = *(v0 + 296);
    v5 = *(v0 + 304);
    v8 = *(v0 + 264);
    v7 = *(v0 + 272);
    v9 = *(v0 + 200);
    v10 = v1;

    *v9 = v10;
    type metadata accessor for DownloadedEncryptedAsset();
    swift_storeEnumTagMultiPayload();

    v11 = *(v0 + 8);
  }

  else
  {
    if (qword_100028200 != -1)
    {
      swift_once();
    }

    v13 = *(v0 + 336);
    v12 = *(v0 + 344);
    v14 = *(v0 + 328);
    v15 = *(v0 + 296);
    v16 = *(v0 + 304);
    v21 = *(v0 + 272);
    v22 = *(v0 + 264);
    v17 = type metadata accessor for Logger();
    sub_100001D14(v17, qword_100028570);
    *(v0 + 152) = 0;
    *(v0 + 160) = 0xE000000000000000;
    *(v0 + 112) = xmmword_10001D2F0;
    *(v0 + 128) = 7;
    _print_unlocked<A, B>(_:_:)();
    v18._object = 0x800000010001DB50;
    v18._countAndFlagsBits = 0xD000000000000051;
    Logger.errorWithMetadata(_:function:line:)(*(v0 + 152), v18, 252);

    sub_1000195E4();
    swift_allocError();
    *v19 = xmmword_10001D2F0;
    *(v19 + 16) = 7;
    swift_willThrow();

    v11 = *(v0 + 8);
  }

  return v11();
}

uint64_t sub_1000157A8()
{
  v1 = *(v0 + 360);
  if (v1 >= *(v0 + 352))
  {
    if (qword_1000281D8 != -1)
    {
      swift_once();
    }

    v18 = *(v0 + 376);
    v19 = type metadata accessor for Logger();
    sub_100001D14(v19, qword_1000284E8);
    swift_getErrorValue();
    v20 = *(v0 + 16);
    v21 = *(v0 + 24);
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    v22._countAndFlagsBits = 0;
    v23._object = 0x800000010001DA80;
    v22._object = 0xE000000000000000;
    v23._countAndFlagsBits = 0xD000000000000033;
    Logger.errorWithMetadata(_:function:line:)(v22, v23, 69);

    swift_getErrorValue();
    v24 = *(v0 + 40);
    v25 = *(v0 + 48);
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    return _assertionFailure(_:_:file:line:flags:)();
  }

  else
  {
    v2 = *(v0 + 296);
    v3 = *(v0 + 272);
    v4 = *(v0 + 280);
    v6 = *(v0 + 256);
    v5 = *(v0 + 264);
    v7 = *(v0 + 248);
    exp2(v1);
    v8 = static Duration.seconds(_:)();
    v10 = v9;
    static Clock<>.continuous.getter();
    *(v0 + 136) = v8;
    *(v0 + 144) = v10;
    *(v0 + 96) = 0;
    *(v0 + 88) = 0;
    *(v0 + 104) = 1;
    v11 = sub_100019560(&qword_100028668, &type metadata accessor for ContinuousClock);
    dispatch thunk of Clock.now.getter();
    sub_100019560(&qword_100028670, &type metadata accessor for ContinuousClock.Instant);
    dispatch thunk of InstantProtocol.advanced(by:)();
    v12 = *(v6 + 8);
    *(v0 + 384) = v12;
    *(v0 + 392) = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v12(v5, v7);
    v13 = async function pointer to dispatch thunk of Clock.sleep(until:tolerance:)[1];
    v14 = swift_task_alloc();
    *(v0 + 400) = v14;
    *v14 = v0;
    v14[1] = sub_100015AAC;
    v15 = *(v0 + 296);
    v17 = *(v0 + 272);
    v16 = *(v0 + 280);

    return dispatch thunk of Clock.sleep(until:tolerance:)(v17, v0 + 88, v16, v11);
  }
}

uint64_t sub_100015AAC()
{
  v2 = *v1;
  v3 = *(*v1 + 400);
  v10 = *v1;
  *(*v1 + 408) = v0;

  v4 = *(v2 + 392);
  if (v0)
  {
    (*(v2 + 384))(*(v2 + 272), *(v2 + 248));
    v5 = sub_100015CB4;
  }

  else
  {
    v7 = *(v2 + 288);
    v6 = *(v2 + 296);
    v8 = *(v2 + 280);
    (*(v2 + 384))(*(v2 + 272), *(v2 + 248));
    (*(v7 + 8))(v6, v8);
    v5 = sub_100015C04;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100015C04()
{
  v1 = v0[47];
  v2 = v0[45];

  v3 = v2 + 1;
  v0[45] = v3;
  v4 = swift_task_alloc();
  v0[46] = v4;
  *v4 = v0;
  v4[1] = sub_10001544C;
  v5 = v0[43];
  v6 = v0[26];
  v7 = v0[27];

  return sub_100016E70(v4, v3, v6, v7, v5, (v0 + 21));
}

uint64_t sub_100015CB4()
{
  v1 = v0[51];
  (*(v0[36] + 8))(v0[37], v0[35]);
  _StringGuts.grow(_:)(32);
  v2._object = 0x800000010001DAF0;
  v2._countAndFlagsBits = 0xD00000000000001ELL;
  String.append(_:)(v2);
  swift_getErrorValue();
  v3 = v0[8];
  v4 = v0[9];
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  return _assertionFailure(_:_:file:line:flags:)();
}

uint64_t sub_100015DC8()
{
  v0 = type metadata accessor for Logger();
  sub_100001E0C(v0, qword_100028558);
  sub_100001D14(v0, qword_100028558);
  return Logger.init(subsystem:category:)();
}

id sub_100015E48()
{
  v0 = [objc_opt_self() defaultManager];
  URL._bridgeToObjectiveC()(v1);
  v3 = v2;
  v7 = 0;
  v4 = [v0 removeItemAtURL:v2 error:&v7];

  if (v4)
  {
    return v7;
  }

  v6 = v7;
  _convertNSErrorToError(_:)();

  return swift_willThrow();
}

void sub_100015F30(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [objc_opt_self() defaultManager];
  v10 = [a1 getLocalUrl];
  if (!v10)
  {
    __break(1u);
  }

  v11 = v10;
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  URL.path(percentEncoded:)(1);
  (*(v5 + 8))(v8, v4);
  v12 = String._bridgeToObjectiveC()();

  v18 = 0;
  v13 = [v9 contentsOfDirectoryAtPath:v12 error:&v18];

  v14 = v18;
  if (v13)
  {
    v15 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v14;

    *a2 = v15;
  }

  else
  {
    v17 = v18;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }
}

void sub_100016150()
{
  v0 = [objc_opt_self() ephemeralSessionConfiguration];
  [v0 setWaitsForConnectivity:1];
  v1 = [objc_opt_self() sessionWithConfiguration:v0];

  qword_100028588 = v1;
}

uint64_t sub_1000161D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[13] = a2;
  v3[14] = a3;
  v3[12] = a1;
  v4 = *(*(sub_10000ADE0(&qword_100028680, &qword_10001D360) - 8) + 64) + 15;
  v3[15] = swift_task_alloc();
  v5 = type metadata accessor for URL();
  v3[16] = v5;
  v6 = *(v5 - 8);
  v3[17] = v6;
  v7 = *(v6 + 64) + 15;
  v3[18] = swift_task_alloc();

  return _swift_task_switch(sub_1000162D0, 0, 0);
}

uint64_t sub_1000162D0()
{
  if (qword_100028200 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[19] = sub_100001D14(v1, qword_100028570);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[13];
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = v4;
    _os_log_impl(&_mh_execute_header, v2, v3, "HTTP download attempt iteration: %ld", v5, 0xCu);
  }

  if (qword_100028208 != -1)
  {
    swift_once();
  }

  v6 = async function pointer to NSURLSession.download(for:delegate:)[1];
  v7 = swift_task_alloc();
  v0[20] = v7;
  *v7 = v0;
  v7[1] = sub_100016474;
  v9 = v0[14];
  v8 = v0[15];

  return NSURLSession.download(for:delegate:)(v8, v9, 0);
}

uint64_t sub_100016474(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 160);
  v7 = *v2;
  *(v3 + 168) = a1;
  *(v3 + 176) = v1;

  if (v1)
  {
    v5 = sub_1000169E4;
  }

  else
  {
    v5 = sub_100016588;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100016588()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 152);
  v3 = *(*(v0 + 136) + 32);
  v3(*(v0 + 144), *(v0 + 120), *(v0 + 128));
  v4 = v1;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "HTTP download successful", v7, 2u);
  }

  v8 = *(v0 + 168);

  objc_opt_self();
  v9 = swift_dynamicCastObjCClass();
  if (!v9)
  {
    v22 = *(v0 + 168);
    v23 = *(v0 + 144);
    v24 = *(v0 + 152);
    v25 = *(v0 + 128);
    v26 = *(v0 + 136);

    *(v0 + 64) = 0;
    *(v0 + 72) = 0xE000000000000000;
    *(v0 + 16) = xmmword_10001CD60;
    *(v0 + 32) = 7;
    _print_unlocked<A, B>(_:_:)();
    v27._object = 0x800000010001DB30;
    v27._countAndFlagsBits = 0xD000000000000012;
    Logger.errorWithMetadata(_:function:line:)(*(v0 + 64), v27, 126);

    sub_1000195E4();
    swift_allocError();
    *v28 = xmmword_10001CD60;
    *(v28 + 16) = 7;
    swift_willThrow();

    (*(v26 + 8))(v23, v25);
    goto LABEL_9;
  }

  v10 = v9;
  v11 = *(v0 + 152);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "HTTP download has response", v14, 2u);
  }

  if ([v10 statusCode] - 300 < 0xFFFFFFFFFFFFFF9CLL)
  {
    v15 = *(v0 + 168);
    v16 = *(v0 + 152);
    v17 = *(v0 + 128);
    v18 = *(v0 + 136);
    v42 = v17;
    v43 = *(v0 + 144);
    *(v0 + 80) = 0;
    *(v0 + 88) = 0xE000000000000000;
    *(v0 + 40) = [v10 statusCode];
    *(v0 + 48) = 0;
    *(v0 + 56) = 1;
    _print_unlocked<A, B>(_:_:)();
    v19._object = 0x800000010001DB30;
    v19._countAndFlagsBits = 0xD000000000000012;
    Logger.errorWithMetadata(_:function:line:)(*(v0 + 80), v19, 132);

    v20 = [v10 statusCode];
    sub_1000195E4();
    swift_allocError();
    *v21 = v20;
    *(v21 + 8) = 0;
    *(v21 + 16) = 1;
    swift_willThrow();

    (*(v18 + 8))(v43, v42);
LABEL_9:
    v29 = *(v0 + 144);
    v30 = *(v0 + 120);

    v31 = *(v0 + 8);
    goto LABEL_13;
  }

  v32 = *(v0 + 152);
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    *v35 = 0;
    _os_log_impl(&_mh_execute_header, v33, v34, "HTTP download has correct status code", v35, 2u);
  }

  v36 = *(v0 + 168);
  v37 = *(v0 + 144);
  v39 = *(v0 + 120);
  v38 = *(v0 + 128);
  v40 = *(v0 + 96);

  v3(v40, v37, v38);
  type metadata accessor for DownloadedEncryptedAsset();
  swift_storeEnumTagMultiPayload();

  v31 = *(v0 + 8);
LABEL_13:

  return v31();
}

uint64_t sub_1000169E4()
{
  v17 = v0;
  v1 = v0[22];
  v2 = v0[19];
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[22];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v6 = 138412802;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    *(v6 + 12) = 2080;
    *(v6 + 14) = sub_100009778(0xD000000000000012, 0x800000010001DB30, &v16);
    *(v6 + 22) = 2048;
    *(v6 + 24) = 120;
    _os_log_impl(&_mh_execute_header, v3, v4, "Error: %@, in %s, line: %ld", v6, 0x20u);
    sub_10000BAB8(v7, &qword_100028220, &qword_10001CDA0);

    sub_10000B9B0(v8);
  }

  v10 = v0[22];
  swift_willThrow();
  v11 = v0[22];
  v12 = v0[18];
  v13 = v0[15];

  v14 = v0[1];

  return v14();
}

uint64_t sub_100016BBC()
{
  if (qword_100028200 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100001D14(v0, qword_100028570);
  *&v11 = 0;
  *(&v11 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(31);
  v1._countAndFlagsBits = 0x2074736575716552;
  v1._object = 0xE900000000000028;
  String.append(_:)(v1);
  type metadata accessor for URL();
  sub_100019560(&qword_100028678, &type metadata accessor for URL);
  v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v2);

  v3._object = 0x800000010001DB10;
  v3._countAndFlagsBits = 0xD000000000000012;
  String.append(_:)(v3);
  swift_getErrorValue();
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v4._countAndFlagsBits = 0;
  v5._object = 0x800000010001DB30;
  v4._object = 0xE000000000000000;
  v5._countAndFlagsBits = 0xD000000000000012;
  Logger.errorWithMetadata(_:function:line:)(v4, v5, 139);

  swift_errorRetain();
  sub_10000ADE0(&qword_100028660, &qword_10001D348);
  if ((swift_dynamicCast() & 1) == 0)
  {
    swift_getErrorValue();
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    v8._countAndFlagsBits = 0;
    v9._object = 0x800000010001DB30;
    v8._object = 0xE000000000000000;
    v9._countAndFlagsBits = 0xD000000000000012;
    Logger.errorWithMetadata(_:function:line:)(v8, v9, 141);

LABEL_12:
    v7 = 0;
    return v7 & 1;
  }

  if (!v12)
  {
    sub_1000195A8(0, 0xE000000000000000, 0);
    v7 = 1;
    return v7 & 1;
  }

  if (v12 == 7)
  {
    if (v11 < 3)
    {
      v7 = 1;
      return v7 & 1;
    }

    goto LABEL_11;
  }

  if (v12 != 1)
  {
LABEL_11:
    sub_1000195A8(0, 0xE000000000000000, v12);
    goto LABEL_12;
  }

  v6 = vdupq_n_s64(0);
  v7 = vmaxv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(xmmword_100024BB8, v6), vceqq_s64(unk_100024BC8, v6))));
  sub_1000195A8(0, 0xE000000000000000, 1u);
  return v7 & 1;
}

uint64_t sub_100016E70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[37] = a5;
  v6[38] = a6;
  v6[35] = a3;
  v6[36] = a4;
  v6[34] = a2;
  v7 = type metadata accessor for Logger();
  v6[39] = v7;
  v8 = *(v7 - 8);
  v6[40] = v8;
  v9 = *(v8 + 64) + 15;
  v6[41] = swift_task_alloc();
  v6[42] = swift_task_alloc();
  v6[43] = swift_task_alloc();
  v10 = swift_task_alloc();
  v6[44] = v10;
  *v10 = v6;
  v10[1] = sub_100016F94;

  return sub_100018C28(1);
}

uint64_t sub_100016F94()
{
  v1 = *(*v0 + 352);
  v3 = *v0;

  return _swift_task_switch(sub_100017090, 0, 0);
}

uint64_t sub_100017090()
{
  if (qword_100028200 != -1)
  {
    swift_once();
  }

  v1 = v0[36];
  v2 = v0[37];
  v3 = sub_100001D14(v0[39], qword_100028570);
  v0[45] = v3;

  v4 = v2;
  v5 = swift_task_alloc();
  v0[46] = v5;
  *v5 = v0;
  v5[1] = sub_1000171C4;
  v6 = v0[36];
  v7 = v0[37];
  v8 = v0[35];

  return sub_10001B478(0xD000000000000051, 0x800000010001DB50, 179, v3, v8, v6, v7);
}

uint64_t sub_1000171C4(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 368);
  v6 = *v2;
  *(v4 + 376) = a1;
  *(v4 + 384) = v1;

  v7 = *(v3 + 288);

  if (v1)
  {
    v8 = sub_100017E24;
  }

  else
  {
    v8 = sub_10001731C;
  }

  return _swift_task_switch(v8, 0, 0);
}

void sub_10001731C()
{
  v1 = *(v0 + 376);
  if (v1 != 10 && v1 != 0)
  {
    v23 = *(v0 + 272);
    (*(*(v0 + 320) + 16))(*(v0 + 344), *(v0 + 360), *(v0 + 312));
    _StringGuts.grow(_:)(83);
    v24._object = 0x800000010001DBB0;
    v24._countAndFlagsBits = 0xD000000000000035;
    String.append(_:)(v24);
    *(v0 + 216) = v23;
    v25._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v25);

    v26._countAndFlagsBits = 0x6572206874697720;
    v26._object = 0xED000020746C7573;
    String.append(_:)(v26);
    v27 = MAStringForMADownloadResult();
    if (v27)
    {
      v28 = v27;
      v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v31 = v30;
    }

    else
    {
      v58 = *(v0 + 376);
      _StringGuts.grow(_:)(19);
      *(v0 + 136) = 0;
      *(v0 + 144) = 0xE000000000000000;
      v59._countAndFlagsBits = 0xD000000000000011;
      v59._object = 0x800000010001DBF0;
      String.append(_:)(v59);
      *(v0 + 224) = v58;
      type metadata accessor for MADownloadResult(0);
      _print_unlocked<A, B>(_:_:)();
      v29 = *(v0 + 136);
      v31 = *(v0 + 144);
    }

    v60 = *(v0 + 344);
    v62 = *(v0 + 312);
    v61 = *(v0 + 320);
    v63._countAndFlagsBits = v29;
    v63._object = v31;
    String.append(_:)(v63);

    v64._countAndFlagsBits = 0x697972746572202CLL;
    v64._object = 0xED00002E2E2E676ELL;
    String.append(_:)(v64);
    v65._countAndFlagsBits = 0;
    v66._object = 0x800000010001DB50;
    v65._object = 0xE000000000000000;
    v66._countAndFlagsBits = 0xD000000000000051;
    Logger.errorWithMetadata(_:function:line:)(v65, v66, 186);

    (*(v61 + 8))(v60, v62);
    sub_1000195E4();
    swift_allocError();
    *v67 = xmmword_10001CD40;
    *(v67 + 16) = 7;
    swift_willThrow();
    v68 = *(v0 + 360);
    v69 = *(v0 + 272);
    _StringGuts.grow(_:)(82);
    v70._object = 0x800000010001DBB0;
    v70._countAndFlagsBits = 0xD000000000000035;
    String.append(_:)(v70);
    *(v0 + 200) = v69;
    v71._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v71);

    v72._countAndFlagsBits = 0x7265206874697720;
    v72._object = 0xEC00000020726F72;
    String.append(_:)(v72);
    swift_getErrorValue();
    v73 = *(v0 + 16);
    v74 = *(v0 + 24);
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    v75._countAndFlagsBits = 0x697972746572202CLL;
    v75._object = 0xED00002E2E2E676ELL;
    String.append(_:)(v75);
    v76._countAndFlagsBits = 0;
    v77._object = 0x800000010001DB50;
    v76._object = 0xE000000000000000;
    v77._countAndFlagsBits = 0xD000000000000051;
    Logger.errorWithMetadata(_:function:line:)(v76, v77, 193);

    goto LABEL_33;
  }

  v3 = *(v0 + 360);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "Mobile asset catalog download successful", v6, 2u);
  }

  v8 = *(v0 + 280);
  v7 = *(v0 + 288);

  v9 = objc_allocWithZone(MAAssetQuery);
  v10 = String._bridgeToObjectiveC()();
  v11 = [v9 initWithType:v10];
  *(v0 + 392) = v11;

  v12 = *(v0 + 360);
  if (!v11)
  {
    v33 = *(v0 + 280);
    v32 = *(v0 + 288);
    *(v0 + 152) = 0;
    *(v0 + 160) = 0xE000000000000000;
    *(v0 + 64) = v33;
    *(v0 + 72) = v32;
    *(v0 + 80) = 2;

    _print_unlocked<A, B>(_:_:)();
    v34._object = 0x800000010001DB50;
    v34._countAndFlagsBits = 0xD000000000000051;
    Logger.errorWithMetadata(_:function:line:)(*(v0 + 152), v34, 200);

    sub_1000195E4();
    swift_allocError();
    *v35 = v33;
    *(v35 + 8) = v32;
    *(v35 + 16) = 2;
LABEL_33:
    swift_willThrow();
LABEL_45:
    v97 = *(v0 + 336);
    v96 = *(v0 + 344);
    v98 = *(v0 + 328);

    v99 = *(v0 + 8);

    v99();
    return;
  }

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "Mobile asset query successful", v15, 2u);
  }

  v16 = [v11 queryMetaDataSync];
  v17 = *(v0 + 360);
  if (v16)
  {
    *(v0 + 232) = v16;
    type metadata accessor for MAQueryResult(0);
    v18 = String.init<A>(describing:)();
    v20 = v19;
    *(v0 + 168) = 0;
    *(v0 + 176) = 0xE000000000000000;
    *(v0 + 88) = v18;
    *(v0 + 96) = v19;
    *(v0 + 104) = 3;
    _print_unlocked<A, B>(_:_:)();
    v21._object = 0x800000010001DB50;
    v21._countAndFlagsBits = 0xD000000000000051;
    Logger.errorWithMetadata(_:function:line:)(*(v0 + 168), v21, 208);

    sub_1000195E4();
    swift_allocError();
    *v22 = v18;
    *(v22 + 8) = v20;
    *(v22 + 16) = 3;
LABEL_44:
    swift_willThrow();

    goto LABEL_45;
  }

  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    *v38 = 0;
    _os_log_impl(&_mh_execute_header, v36, v37, "Mobile asset query result successful", v38, 2u);
  }

  v39 = [v11 results];
  if (!v39)
  {
    goto LABEL_53;
  }

  v40 = v39;
  sub_100013310();
  v41 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v41 >> 62)
  {
    v42 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v42 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v42 != 1)
  {
    (*(*(v0 + 320) + 16))(*(v0 + 336), *(v0 + 360), *(v0 + 312));
    *(v0 + 184) = 0;
    *(v0 + 192) = 0xE000000000000000;
    v78 = [v11 results];
    if (v78)
    {
      v79 = v78;
      v80 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v80 >> 62)
      {
        v81 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v81 = *((v80 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v0 + 112) = v81;
      *(v0 + 120) = 0;
      *(v0 + 128) = 4;
      _print_unlocked<A, B>(_:_:)();
      v82._countAndFlagsBits = 8250;
      v82._object = 0xE200000000000000;
      String.append(_:)(v82);
      v83 = [v11 results];
      if (v83)
      {
        v84 = v83;
        v85 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
      }

      else
      {
        v85 = 0;
      }

      v86 = *(v0 + 336);
      v87 = *(v0 + 312);
      v88 = *(v0 + 320);
      *(v0 + 240) = v85;
      sub_10000ADE0(&qword_100028690, &qword_10001D380);
      v89._countAndFlagsBits = String.init<A>(describing:)();
      String.append(_:)(v89);

      v90._object = 0x800000010001DB50;
      v90._countAndFlagsBits = 0xD000000000000051;
      Logger.errorWithMetadata(_:function:line:)(*(v0 + 184), v90, 215);

      (*(v88 + 8))(v86, v87);
      v91 = [v11 results];
      if (v91)
      {
        v92 = v91;
        v93 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        if (v93 >> 62)
        {
          v94 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v94 = *((v93 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        sub_1000195E4();
        swift_allocError();
        *v95 = v94;
        *(v95 + 8) = 0;
        *(v95 + 16) = 4;
        goto LABEL_44;
      }

LABEL_56:
      __break(1u);
      return;
    }

LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v43 = *(v0 + 360);
  v44 = Logger.logObject.getter();
  v45 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    *v46 = 0;
    _os_log_impl(&_mh_execute_header, v44, v45, "Mobile asset query result count successful", v46, 2u);
  }

  v47 = [v11 results];
  if (!v47)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v48 = v47;
  v49 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if ((v49 & 0xC000000000000001) != 0)
  {
    v50 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_28;
  }

  if (!*((v49 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v50 = *(v49 + 32);
LABEL_28:
  v51 = v50;
  *(v0 + 400) = v50;
  v52 = *(v0 + 296);

  v53 = v52;
  v54 = v51;
  v55 = swift_task_alloc();
  *(v0 + 408) = v55;
  *v55 = v0;
  v55[1] = sub_100017FD4;
  v56 = *(v0 + 360);
  v57 = *(v0 + 296);

  sub_10001B8E4(0xD000000000000051, 0x800000010001DB50, 227, v56, v54, v57);
}