id sub_10008DF90()
{
  v1 = *(v0 + 64);
  v2 = v1;
  if (v1 == 1)
  {
    v3 = objc_allocWithZone(WiFiSoftError);
    v4 = String._bridgeToObjectiveC()();
    v2 = [v3 initWithName:v4];

    v5 = *(v0 + 64);
    *(v0 + 64) = v2;
    v6 = v2;
    sub_1000AEAEC(v5);
  }

  sub_1000B1DC4(v1);
  return v2;
}

uint64_t AppleDevice.keychain.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 184);
}

uint64_t AppleDevice.keychain.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 184);
  *(v1 + 184) = a1;
}

uint64_t AppleDevice.preferencesStorage.getter()
{
  v1 = v0[24];
  v2 = v0[25];
  v3 = v0[26];

  v4 = v3;
  return v1;
}

IONotificationPort *AppleDevice.__allocating_init()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  return AppleDevice.init()();
}

IONotificationPort *AppleDevice.init()()
{
  v1 = v0;
  v80 = *v0;
  v75 = type metadata accessor for DispatchWorkItemFlags();
  v74 = *(v75 - 8);
  v2 = *(v74 + 64);
  __chkstk_darwin();
  v73 = &v69 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Logger();
  v81 = *(v4 - 8);
  v82 = v4;
  v5 = *(v81 + 64);
  __chkstk_darwin();
  v69 = v6;
  v70 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(*(sub_10005DC58(&qword_10058BC88, &unk_1004818B0) - 8) + 64);
  __chkstk_darwin();
  v79 = &v69 - v8;
  v9 = type metadata accessor for RoutingSocket();
  v77 = *(v9 - 8);
  v78 = v9;
  v10 = *(v77 + 64);
  __chkstk_darwin();
  v76 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v85 = *(v12 - 8);
  v86 = v12;
  v13 = *(v85 + 64);
  __chkstk_darwin();
  v84 = &v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(*(type metadata accessor for OS_dispatch_queue.Attributes() - 8) + 64);
  __chkstk_darwin();
  v72 = type metadata accessor for DispatchQoS();
  v71 = *(v72 - 8);
  v16 = *(v71 + 64);
  __chkstk_darwin();
  v18 = &v69 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = type metadata accessor for Lock();
  v19 = swift_allocObject();
  v20 = swift_slowAlloc();
  *(v19 + 16) = v20;
  *v20 = 0;
  v0[3] = v19;
  v0[4] = &_swiftEmptyDictionarySingleton;
  v0[5] = _swiftEmptyArrayStorage;
  v0[6] = [objc_allocWithZone(CWFInterface) initWithServiceType:1];
  sub_100018AB4(0, &qword_10058AC60, OS_dispatch_queue_ptr);
  static DispatchQoS.unspecified.getter();
  aBlock = _swiftEmptyArrayStorage;
  sub_10001F8F4(&qword_10058AC68, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_10005DC58(&qword_10058AC70, &qword_1004AE1F0);
  sub_10000CADC(&qword_10058AC78, &qword_10058AC70, &qword_1004AE1F0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v85 + 104))(v84, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v86);
  v86 = v18;
  v0[7] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v0[8] = 1;
  *(v0 + 9) = 0u;
  v0[19] = 0;
  *(v0 + 11) = 0u;
  *(v0 + 13) = 0u;
  *(v0 + 15) = 0u;
  v0[17] = 0;
  v0[20] = 0;
  v0[21] = 0;
  v0[22] = &_swiftEmptyDictionarySingleton;
  result = kSecAttrViewHintHome;
  if (kSecAttrViewHintHome)
  {
    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;
    v25 = type metadata accessor for AppleKeychain(0);
    v26 = *(v25 + 48);
    v27 = *(v25 + 52);
    swift_allocObject();
    *(v1 + 23) = AppleKeychain.init(accessGroup:view:)(0xD000000000000012, 0x80000001004B4EC0, v22, v24);
    if (qword_10058A838 != -1)
    {
      swift_once();
    }

    v28 = static SCPreferencesRef.p2pPreferences;
    type metadata accessor for InMemoryPreferenceStorage();
    v29 = swift_allocObject();
    *(v29 + 16) = &_swiftEmptyDictionarySingleton;
    v30 = swift_allocObject();
    v31 = v28;
    v32 = swift_slowAlloc();
    *(v30 + 16) = v32;
    *v32 = 0;
    *(v1 + 24) = v30;
    *(v1 + 25) = v29;
    *(v1 + 26) = v31;
    v33 = v1 + OBJC_IVAR____TtC7CoreP2P11AppleDevice_interfaceDiscoverer;
    *(v33 + 32) = 0;
    *v33 = 0u;
    *(v33 + 16) = 0u;
    v34 = OBJC_IVAR____TtC7CoreP2P11AppleDevice_logger;
    Logger.init(subsystem:category:)();
    type metadata accessor for Socket();
    swift_allocObject();
    v35 = Socket.init(domain:type:proto:)(2, 2, 0);
    if (!v35)
    {
      goto LABEL_7;
    }

    v36 = v35;
    v37 = v79;
    RoutingSocket.init()(v79);
    if ((*(v77 + 48))(v37, 1, v78) == 1)
    {

      sub_100016290(v37, &qword_10058BC88, &unk_1004818B0);
LABEL_7:
      v38 = *(v1 + 3);

      v39 = *(v1 + 4);

      v40 = *(v1 + 5);

      sub_1000AEAEC(*(v1 + 8));
      sub_100016290((v1 + 18), &qword_10058BA80, &qword_1004818C0);

      v41 = *(v1 + 15);

      v42 = *(v1 + 16);

      v43 = *(v1 + 22);

      v44 = *(v1 + 23);

      v45 = *(v1 + 24);
      v46 = *(v1 + 25);

      sub_100016290(v33, &qword_10058BCA8, &qword_1004818C8);
      (*(v81 + 8))(v1 + v34, v82);
      v47 = *(*v1 + 48);
      v48 = *(*v1 + 52);
      swift_deallocPartialClassInstance();
      return 0;
    }

    v49 = v76;
    sub_100016DFC(v37, v76, type metadata accessor for RoutingSocket);
    *(v1 + 2) = v36;
    sub_10001251C(v49, v1 + OBJC_IVAR____TtC7CoreP2P11AppleDevice_neighborDiscoveryRoutingSocket, type metadata accessor for RoutingSocket);

    result = IONotificationPortCreate(kIOMainPortDefault);
    if (result)
    {
      *(v1 + 18) = result;
      if (qword_10058AA38 != -1)
      {
        v68 = result;
        swift_once();
        result = v68;
      }

      IONotificationPortSetDispatchQueue(result, static OS_dispatch_queue.p2p);
      sub_1000824E4(&off_100556070);
      sub_100016290(&unk_100556090, &qword_10058BCB8, &qword_1004818D0);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      v51 = *(v1 + 18);
      swift_beginAccess();
      v52 = isa;
      LODWORD(isa) = IOServiceAddMatchingNotification(v51, "IOServiceMatched", v52, sub_100090D14, v1, v1 + 38);
      swift_endAccess();
      if (isa)
      {

        sub_100012468(v49, type metadata accessor for RoutingSocket);
      }

      else
      {
        v53 = *(v1 + 18);
        swift_beginAccess();
        LODWORD(v53) = IOServiceAddMatchingNotification(v53, "IOServiceTerminate", v52, sub_10009179C, v1, v1 + 39);
        swift_endAccess();
        if (!v53)
        {
          [*(v1 + 6) setTargetQueue:*(v1 + 7)];
          v54 = *(v1 + 6);
          v55 = swift_allocObject();
          swift_weakInit();
          v92 = sub_1000AED24;
          v93 = v55;
          aBlock = _NSConcreteStackBlock;
          v89 = 1107296256;
          v90 = sub_100091F90;
          v91 = &unk_10055EC90;
          v56 = _Block_copy(&aBlock);
          v57 = v54;

          [v57 setEventHandler:v56];
          _Block_release(v56);

          [*(v1 + 6) activate];
          v58 = *(v1 + 6);
          v85 = *(v1 + 7);
          v60 = v81;
          v59 = v82;
          v61 = v70;
          (*(v81 + 16))(v70, v1 + OBJC_IVAR____TtC7CoreP2P11AppleDevice_logger, v82);
          v62 = (*(v60 + 80) + 24) & ~*(v60 + 80);
          v63 = swift_allocObject();
          *(v63 + 16) = v58;
          (*(v60 + 32))(v63 + v62, v61, v59);
          v92 = sub_1000AED2C;
          v93 = v63;
          aBlock = _NSConcreteStackBlock;
          v89 = 1107296256;
          v90 = sub_10000C8B8;
          v91 = &unk_10055ECE0;
          v64 = _Block_copy(&aBlock);
          v84 = v58;
          v65 = v86;
          static DispatchQoS.unspecified.getter();
          v87 = _swiftEmptyArrayStorage;
          sub_10001F8F4(&qword_10058BCC0, &type metadata accessor for DispatchWorkItemFlags);
          sub_10005DC58(&unk_100595270, &unk_1004AEC80);
          sub_10000CADC(&qword_10058BCD0, &unk_100595270, &unk_1004AEC80);
          v66 = v73;
          v67 = v75;
          dispatch thunk of SetAlgebra.init<A>(_:)();
          OS_dispatch_queue.async(group:qos:flags:execute:)();
          _Block_release(v64);

          (*(v74 + 8))(v66, v67);
          (*(v71 + 8))(v65, v72);
          sub_100012468(v76, type metadata accessor for RoutingSocket);

          return v1;
        }

        sub_100012468(v49, type metadata accessor for RoutingSocket);
      }

      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_10008EF20(io_iterator_t a1)
{
  v2 = v1;
  v181 = *v1;
  v175 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v175 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v178 = &v151 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v174 = type metadata accessor for DispatchQoS();
  v7 = *(v174 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin();
  v179 = &v151 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v177 = type metadata accessor for Logger();
  v180 = *(v177 - 8);
  v10 = *(v180 + 64);
  __chkstk_darwin();
  v176 = &v151 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v182 = v2[3];
  os_unfair_lock_lock(*(v182 + 16));
  v11 = IOIteratorNext(a1);
  if (v11)
  {
    v12 = v11;
    v13 = OBJC_IVAR____TtC7CoreP2P11AppleDevice_logger;
    v14 = OBJC_IVAR____TtC7CoreP2P11AppleDevice_interfaceDiscoverer;
    swift_beginAccess();
    swift_beginAccess();
    v161 = v14;
    swift_beginAccess();
    v189 = 0;
    v15 = kCFAllocatorDefault;
    v172 = "IO80211VirtualInterfaceRole";
    v173 = "%02X:%02X:%02X:%02X:%02X:%02X";
    v162 = 0x80000001004B8250;
    v167 = v10 + 7;
    v168 = v180 + 16;
    v166 = v180 + 32;
    v171 = (v4 + 8);
    v169 = &v193;
    v170 = (v7 + 8);
    v159 = 0x80000001004B8230;
    v160 = &v198;
    *&v16 = 136315138;
    v184 = v16;
    *&v16 = 136315394;
    v163 = v16;
    *&v16 = 136315650;
    v164 = v16;
    v185 = a1;
    v186 = v13;
    v187 = kCFAllocatorDefault;
    v188 = v2;
    while (1)
    {
      v17 = String._bridgeToObjectiveC()();
      CFProperty = IORegistryEntryCreateCFProperty(v12, v17, v15, 0);

      if (!CFProperty || (*&v192 = CFProperty, (swift_dynamicCast() & 1) == 0))
      {
        v39 = Logger.logObject.getter();
        v40 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v39, v40))
        {
          v41 = swift_slowAlloc();
          *v41 = 0;
          _os_log_impl(&_mh_execute_header, v39, v40, "Matched a service but unable to query its interface name", v41, 2u);
        }

        goto LABEL_3;
      }

      v20 = *(&v197 + 1);
      v19 = v197;
      v21 = v2[4];
      if (*(v21 + 16))
      {
        v22 = v2[4];

        v23 = sub_1000102E8(v19, v20);
        if (v24)
        {
          v25 = v23;
          v26 = v15;
          v27 = v20;
          v28 = v19;
          v29 = *(v21 + 36);

          if (v25 < 0)
          {
            goto LABEL_153;
          }

          v30 = v188[4];
          if (v25 >= 1 << *(v30 + 32))
          {
            goto LABEL_153;
          }

          if (((*(v30 + 8 * (v25 >> 6) + 64) >> v25) & 1) == 0)
          {
            goto LABEL_154;
          }

          if (v29 != *(v30 + 36))
          {
            goto LABEL_155;
          }

          v31 = *(*(v30 + 56) + 8 * v25);
          v32 = OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A15InterfaceHandle_service;
          v33 = *(v31 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A15InterfaceHandle_service);
          *(v31 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A15InterfaceHandle_service) = v12;

          IOObjectRelease(v33);
          IOObjectRetain(*(v31 + v32));

          v34 = Logger.logObject.getter();
          v35 = static os_log_type_t.info.getter();

          if (os_log_type_enabled(v34, v35))
          {
            v36 = swift_slowAlloc();
            v37 = swift_slowAlloc();
            *&v197 = v37;
            *v36 = v184;
            v38 = sub_100002320(v28, v27, &v197);

            *(v36 + 4) = v38;
            v13 = v186;
            _os_log_impl(&_mh_execute_header, v34, v35, "Already discovered %s", v36, 0xCu);
            sub_100002A00(v37);
            a1 = v185;
          }

          else
          {
          }

          IOObjectRelease(v12);
          v12 = IOIteratorNext(a1);
          v15 = v26;
          v2 = v188;
          goto LABEL_5;
        }
      }

      memset(v202, 0, 44);
      KeyPath = swift_getKeyPath();

      v43 = v189;
      sub_1000AEE10(v19, v20, v202, KeyPath, 0x10uLL);

      v44 = *(v2[2] + 16);
      sub_10001C288(0);
      if (ioctl(_:_:_:)() || (v202[1] & 0xE0) != 0x80)
      {
        v189 = v43;

        v54 = Logger.logObject.getter();
        v55 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v54, v55))
        {
          v56 = v19;
          v57 = swift_slowAlloc();
          v58 = swift_slowAlloc();
          *&v197 = v58;
          *v57 = v184;
          v59 = sub_100002320(v56, v20, &v197);

          *(v57 + 4) = v59;
          v13 = v186;
          _os_log_impl(&_mh_execute_header, v54, v55, "Ignoring %s because its not a WiFi interface", v57, 0xCu);
          sub_100002A00(v58);
          a1 = v185;
        }

        else
        {
        }

        v15 = v187;
        goto LABEL_4;
      }

      sub_10001F8F4(&qword_10058BD10, type metadata accessor for AppleDevice);
      static ApplePlatform.withInterface<A>(_:matchingFamily:_:)(&type metadata for UInt32, &v197);
      v189 = v43;
      if (BYTE4(v197))
      {

        v39 = Logger.logObject.getter();
        v45 = static os_log_type_t.error.getter();

        v46 = os_log_type_enabled(v39, v45);
        v15 = v187;
        if (v46)
        {
          v47 = v19;
          v48 = swift_slowAlloc();
          v49 = swift_slowAlloc();
          *&v197 = v49;
          *v48 = v184;
          v50 = sub_100002320(v47, v20, &v197);

          *(v48 + 4) = v50;
          v13 = v186;
          v51 = v45;
          v52 = v39;
          v53 = "Ignoring %s because no interface index found";
          goto LABEL_150;
        }

LABEL_151:

LABEL_3:

LABEL_4:
        IOObjectRelease(v12);
        v12 = IOIteratorNext(a1);
        goto LABEL_5;
      }

      v183 = v19;
      LODWORD(v165) = v197;
      v60 = String._bridgeToObjectiveC()();
      v15 = v187;
      v61 = IORegistryEntryCreateCFProperty(v12, v60, v187, 0);

      if (v61 && (*&v191[0] = v61, (swift_dynamicCast() & 1) != 0))
      {
        v62 = *(&v192 + 1);
        v63 = v192;
        if (!*(&v192 + 1))
        {
          goto LABEL_148;
        }
      }

      else
      {
        v64 = String._bridgeToObjectiveC()();
        v65 = IORegistryEntryCreateCFProperty(v12, v64, v15, 0);

        if (!v65)
        {
          goto LABEL_148;
        }

        *&v192 = v65;
        v66 = swift_dynamicCast();
        v62 = *(&v197 + 1);
        if (v66)
        {
          v63 = v197;
        }

        else
        {
          v62 = 0;
          v63 = 0;
        }

        if (!v62)
        {
          goto LABEL_148;
        }
      }

      if (v63 == 0x7274736172666E49 && v62 == 0xEE00657275746375)
      {
        v156 = 0;
        v2 = v188;
        goto LABEL_52;
      }

      v158 = v62;
      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        v156 = 0;
        v2 = v188;
        goto LABEL_52;
      }

      v2 = v188;
      if (v63 == 0x6B6E694C726941 && v158 == 0xE700000000000000)
      {
        v156 = 1;
        goto LABEL_52;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        v156 = 1;
        goto LABEL_52;
      }

      if (v63 == 0xD000000000000014 && v162 == v158)
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        goto LABEL_124;
      }

      if (v63 == 0xD000000000000019 && v159 == v158)
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
LABEL_124:
        v156 = 2;
      }

      else if (v63 == 0x6177412D69466957 && v158 == 0xEF61746144206572)
      {
        v156 = 3;
      }

      else
      {
        if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          v147 = v183;
          if ((v63 != 0x6E6574614C776F4CLL || v158 != 0xEA00000000007963) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            if (v63 == 0x504174666F53 && v158 == 0xE600000000000000)
            {

LABEL_147:

              IOObjectRelease(v12);
              a1 = v185;
              v12 = IOIteratorNext(v185);
              v13 = v186;
              v15 = v187;
              v2 = v188;
              goto LABEL_5;
            }

            v148 = _stringCompareWithSmolCheck(_:_:expecting:)();

            a1 = v185;
            v13 = v186;
            v15 = v187;
            if (v148)
            {
              goto LABEL_147;
            }

LABEL_148:

            v2 = v188;
            v39 = Logger.logObject.getter();
            v149 = static os_log_type_t.error.getter();

            if (!os_log_type_enabled(v39, v149))
            {
              goto LABEL_151;
            }

            v48 = swift_slowAlloc();
            v49 = swift_slowAlloc();
            *&v197 = v49;
            *v48 = v184;
            v150 = sub_100002320(v183, v20, &v197);

            *(v48 + 4) = v150;
            v13 = v186;
            v51 = v149;
            v52 = v39;
            v53 = "Unable to find role for interface: %s";
LABEL_150:
            _os_log_impl(&_mh_execute_header, v52, v51, v53, v48, 0xCu);
            sub_100002A00(v49);
            a1 = v185;

            goto LABEL_3;
          }

          v69 = 4;
          v68 = v147;
LABEL_54:
          sub_100092524(v2, v69, v68, v20);

          goto LABEL_4;
        }

        v156 = 3;
      }

LABEL_52:

      v67 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v67)
      {
        v68 = v183;
        v69 = v156;
        goto LABEL_54;
      }

      v70 = type metadata accessor for AppleDevice.InterfaceHandle(0);
      v71 = *(v70 + 48);
      v72 = *(v70 + 52);
      swift_allocObject();

      v73 = v183;
      v74 = v189;
      v75 = sub_10008CA1C(v183, v20, v165, v12, v156);
      if (v74)
      {

        swift_errorRetain();
        v76 = Logger.logObject.getter();
        v77 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v76, v77))
        {
          v78 = swift_slowAlloc();
          LODWORD(v158) = v77;
          v79 = v78;
          v157 = swift_slowAlloc();
          v165 = swift_slowAlloc();
          *&v197 = v165;
          *v79 = v164;
          *(v79 + 4) = sub_100002320(v73, v20, &v197);
          *(v79 + 12) = 2080;
          v189 = v76;
          v80 = v156;
          v81 = 5128526;
          if (v156 != 2)
          {
            v81 = 0x61746144204E414ELL;
          }

          v82 = 0xE300000000000000;
          if (v156 != 2)
          {
            v82 = 0xE800000000000000;
          }

          v83 = 0x7274736172666E49;
          if (v156)
          {
            v83 = 1279547201;
          }

          v84 = 0xEE00657275746375;
          if (v156)
          {
            v84 = 0xE400000000000000;
          }

          if (v156 <= 1)
          {
            v85 = v83;
          }

          else
          {
            v85 = v81;
          }

          if (v156 <= 1)
          {
            v86 = v84;
          }

          else
          {
            v86 = v82;
          }

          v87 = sub_100002320(v85, v86, &v197);

          *(v79 + 14) = v87;
          a1 = v185;
          *(v79 + 22) = 2112;
          swift_errorRetain();
          v88 = _swift_stdlib_bridgeErrorToNSError();
          *(v79 + 24) = v88;
          v89 = v157;
          *v157 = v88;
          _os_log_impl(&_mh_execute_header, v189, v158, "Failed to bind to %s[%s]: %@", v79, 0x20u);
          sub_100016290(v89, &qword_10058B780, &qword_100480AC0);

          swift_arrayDestroy();

          v73 = v183;
        }

        else
        {

          v80 = v156;
        }

        sub_100092524(v2, v80, v73, v20);

        IOObjectRelease(v12);
        v12 = IOIteratorNext(a1);
        v189 = 0;
        v15 = v187;
        goto LABEL_5;
      }

      v90 = v75;

      v91 = Logger.logObject.getter();
      v92 = static os_log_type_t.default.getter();

      v93 = os_log_type_enabled(v91, v92);
      v152 = v90;
      if (v93)
      {
        LODWORD(v165) = v92;
        v189 = v91;
        v94 = swift_slowAlloc();
        *&v197 = swift_slowAlloc();
        *v94 = v163;
        *(v94 + 4) = sub_100002320(v73, v20, &v197);
        *(v94 + 12) = 2080;
        v95 = 5128526;
        if (v156 != 2)
        {
          v95 = 0x61746144204E414ELL;
        }

        v96 = 0xE300000000000000;
        if (v156 != 2)
        {
          v96 = 0xE800000000000000;
        }

        v97 = 0x7274736172666E49;
        if (v156)
        {
          v97 = 1279547201;
        }

        v98 = 0xEE00657275746375;
        if (v156)
        {
          v98 = 0xE400000000000000;
        }

        if (v156 <= 1)
        {
          v99 = v97;
        }

        else
        {
          v99 = v95;
        }

        if (v156 <= 1)
        {
          v100 = v98;
        }

        else
        {
          v100 = v96;
        }

        v101 = sub_100002320(v99, v100, &v197);

        *(v94 + 14) = v101;
        v102 = v189;
        _os_log_impl(&_mh_execute_header, v189, v165, "Found new interface %s with role %s", v94, 0x16u);
        swift_arrayDestroy();

        v73 = v183;
        v90 = v152;
      }

      else
      {
      }

      *&v199 = 0;
      v197 = 0u;
      v198 = 0u;
      __chkstk_darwin();
      *(&v151 - 6) = &v197;
      *(&v151 - 5) = v73;
      *(&v151 - 4) = v20;
      *(&v151 - 3) = v90;
      *(&v151 - 2) = v181;
      v103 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v189 = 0;
      v104 = (v90 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A15InterfaceHandle_parentInterfaceName);
      v105 = *(v90 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A15InterfaceHandle_parentInterfaceName + 8);
      *v104 = v103;
      v104[1] = v106;

      v15 = v187;
      swift_beginAccess();

      v107 = v2[4];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v192 = v2[4];
      sub_100080578(v90, v73, v20, isUniquelyReferenced_nonNull_native);

      v2[4] = v192;
      swift_endAccess();
      v165 = *(v2[5] + 16);
      if (v165)
      {
        v157 = 0;
        v109 = 0;
        LODWORD(v158) = 1;
        v110 = 32;
        v111 = _swiftEmptyArrayStorage;
        while (1)
        {
          v112 = v2[5];
          if (v109 >= *(v112 + 16))
          {
            goto LABEL_156;
          }

          v113 = (v112 + v110);
          v208 = *v113;
          v114 = v113[1];
          v115 = v113[2];
          v116 = v113[3];
          v211 = *(v113 + 8);
          *&v209[16] = v115;
          v210 = v116;
          *v209 = v114;
          if (v208 == __PAIR128__(v20, v183) || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            break;
          }

          if (*&v209[16] && (*&v209[8] == __PAIR128__(v20, v183) || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
          {
            v155 = *&v209[24];
            v119 = v180;
            (*(v180 + 16))(v176, v2 + v13, v177);
            v120 = (*(v119 + 80) + 88) & ~*(v119 + 80);
            v154 = (v167 + v120) & 0xFFFFFFFFFFFFFFF8;
            v153 = (v154 + 23) & 0xFFFFFFFFFFFFFFF8;
            v121 = swift_allocObject();
            v122 = v210;
            *(v121 + 48) = *&v209[16];
            *(v121 + 64) = v122;
            *(v121 + 80) = v211;
            v123 = *v209;
            *(v121 + 16) = v208;
            *(v121 + 32) = v123;
            (*(v119 + 32))(v121 + v120, v176, v177);
            v124 = (v121 + v154);
            *v124 = v183;
            v124[1] = v20;
            *(v121 + v153) = v2;
            *&v194 = sub_1000B2818;
            *(&v194 + 1) = v121;
            *&v192 = _NSConcreteStackBlock;
            *(&v192 + 1) = 1107296256;
            *&v193 = sub_10000C8B8;
            *(&v193 + 1) = &unk_10055FFC8;
            v154 = _Block_copy(&v192);
            sub_1000B22A8(&v208, &v197);

            sub_1000B22A8(&v208, &v197);

            static DispatchQoS.unspecified.getter();
            *&v197 = _swiftEmptyArrayStorage;
            v153 = sub_10001F8F4(&qword_10058BCC0, &type metadata accessor for DispatchWorkItemFlags);
            sub_10005DC58(&unk_100595270, &unk_1004AEC80);
            sub_10000CADC(&qword_10058BCD0, &unk_100595270, &unk_1004AEC80);
            v125 = v175;
            dispatch thunk of SetAlgebra.init<A>(_:)();
            v126 = v154;
            OS_dispatch_queue.async(group:qos:flags:execute:)();
            _Block_release(v126);
            v15 = v187;
            (*v171)(v178, v125);
            (*v170)(v179, v174);

            goto LABEL_99;
          }

LABEL_94:
          ++v109;
          v110 += 72;
          if (v165 == v109)
          {
            if (v158)
            {
              v73 = v183;
              goto LABEL_110;
            }

            if ((v157 & 0x8000000000000000) == 0)
            {
              v132 = v2[5];
              if (v157 < *(v132 + 16))
              {
                v133 = v132 + 72 * v157;
                v134 = *(v133 + 80);
                v135 = *(v133 + 96);
                v136 = *(v133 + 48);
                v205 = *(v133 + 64);
                v137 = *(v133 + 32);
                v207 = v135;
                v206 = v134;
                v203 = v137;
                v204 = v136;
                v165 = *(&v205 + 1);
                v138 = swift_allocObject();
                v139 = v203;
                *(v138 + 40) = v204;
                v140 = v206;
                *(v138 + 56) = v205;
                *(v138 + 72) = v140;
                *(v138 + 16) = v152;
                *(v138 + 88) = v207;
                *(v138 + 24) = v139;
                *&v194 = sub_1000B27EC;
                *(&v194 + 1) = v138;
                *&v192 = _NSConcreteStackBlock;
                *(&v192 + 1) = 1107296256;
                *&v193 = sub_10000C8B8;
                *(&v193 + 1) = &unk_10055FF78;
                v158 = _Block_copy(&v192);
                sub_1000B22A8(&v203, &v197);

                sub_1000B22A8(&v203, &v197);
                v141 = v179;
                static DispatchQoS.unspecified.getter();
                *&v197 = _swiftEmptyArrayStorage;
                sub_10001F8F4(&qword_10058BCC0, &type metadata accessor for DispatchWorkItemFlags);
                sub_10005DC58(&unk_100595270, &unk_1004AEC80);
                sub_10000CADC(&qword_10058BCD0, &unk_100595270, &unk_1004AEC80);
                v142 = v178;
                v143 = v175;
                dispatch thunk of SetAlgebra.init<A>(_:)();
                v144 = v158;
                OS_dispatch_queue.async(group:qos:flags:execute:)();
                _Block_release(v144);
                sub_1000B22E0(&v203);
                (*v171)(v142, v143);
                (*v170)(v141, v174);
                goto LABEL_121;
              }

LABEL_158:
              __break(1u);
            }

LABEL_157:
            __break(1u);
            goto LABEL_158;
          }
        }

        sub_1000B22A8(&v208, &v197);
        LODWORD(v158) = 0;
        v157 = v109;
LABEL_99:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v111 = sub_100116640(0, *(v111 + 2) + 1, 1, v111);
        }

        v118 = *(v111 + 2);
        v117 = *(v111 + 3);
        if (v118 >= v117 >> 1)
        {
          v111 = sub_100116640((v117 > 1), v118 + 1, 1, v111);
        }

        sub_1000B22E0(&v208);
        *(v111 + 2) = v118 + 1;
        *&v111[8 * v118 + 32] = v109;
        v13 = v186;
        goto LABEL_94;
      }

      v111 = _swiftEmptyArrayStorage;
LABEL_110:
      if (v156 > 1)
      {
        if (v156 != 2)
        {
          sub_1000956AC(v73, v20);
        }
      }

      else if (v156)
      {
        sub_10009550C(v73, v20);
      }

      else
      {
        sub_100012400(v2 + v161, &v197, &qword_10058BCA8, &qword_1004818C8);
        if (*(&v198 + 1))
        {
          sub_100029954(&v197, &v192);
          if (qword_10058AA38 != -1)
          {
            swift_once();
          }

          v165 = static OS_dispatch_queue.p2p;
          sub_10002B154(&v192, v191);
          v127 = swift_allocObject();
          sub_100029954(v191, v127 + 16);
          *(v127 + 56) = v2;
          *(v127 + 64) = 0;
          *(v127 + 72) = v183;
          *(v127 + 80) = v20;
          *&v199 = sub_1000B27D8;
          *(&v199 + 1) = v127;
          *&v197 = _NSConcreteStackBlock;
          *(&v197 + 1) = 1107296256;
          *&v198 = sub_10000C8B8;
          *(&v198 + 1) = &unk_10055FF28;
          v158 = _Block_copy(&v197);

          v128 = v179;
          static DispatchQoS.unspecified.getter();
          v190 = _swiftEmptyArrayStorage;
          sub_10001F8F4(&qword_10058BCC0, &type metadata accessor for DispatchWorkItemFlags);
          sub_10005DC58(&unk_100595270, &unk_1004AEC80);
          sub_10000CADC(&qword_10058BCD0, &unk_100595270, &unk_1004AEC80);
          v129 = v178;
          v130 = v175;
          dispatch thunk of SetAlgebra.init<A>(_:)();
          v131 = v158;
          OS_dispatch_queue.async(group:qos:flags:execute:)();
          _Block_release(v131);
          (*v171)(v129, v130);
          (*v170)(v128, v174);
          sub_100002A00(&v192);
LABEL_121:

          v13 = v186;
          v15 = v187;
        }

        else
        {
          sub_100016290(&v197, &qword_10058BCA8, &qword_1004818C8);
        }
      }

      v145 = *(v111 + 2);
      if (v145)
      {
        do
        {
          v146 = *&v111[8 * v145 + 24];
          swift_beginAccess();
          sub_10019957C(v146, &v192);
          swift_endAccess();
          v199 = v194;
          v200 = v195;
          v201 = v196;
          v197 = v192;
          v198 = v193;
          sub_1000B22E0(&v197);
          if (!--v145)
          {
            goto LABEL_136;
          }
        }

        while (v145 <= *(v111 + 2));
        __break(1u);
LABEL_153:
        __break(1u);
LABEL_154:
        __break(1u);
LABEL_155:
        __break(1u);
LABEL_156:
        __break(1u);
        goto LABEL_157;
      }

LABEL_136:

      sub_100092524(v2, v156, v183, v20);

      IOObjectRelease(v12);
      a1 = v185;
      v12 = IOIteratorNext(v185);
LABEL_5:
      if (!v12)
      {
        goto LABEL_152;
      }
    }

    v156 = 2;
    goto LABEL_52;
  }

LABEL_152:
  os_unfair_lock_unlock(*(v182 + 16));
}

void sub_100090D2C(uint64_t a1)
{
  v87 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v87 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v86 = &v79 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = type metadata accessor for DispatchQoS();
  v6 = *(v85 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin();
  v84 = &v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = v1;
  v79 = *(v1 + 24);
  os_unfair_lock_lock(*(v79 + 16));
  v9 = IOIteratorNext(a1);
  if (v9)
  {
    v11 = v9;
    v81 = 0;
    v12 = kCFAllocatorDefault;
    v82 = (v3 + 8);
    v83 = v97;
    v80 = (v6 + 8);
    *&v10 = 136315138;
    v89 = v10;
    v88 = a1;
    v90 = kCFAllocatorDefault;
    v92 = OBJC_IVAR____TtC7CoreP2P11AppleDevice_logger;
    while (1)
    {
      while (1)
      {
        v13 = String._bridgeToObjectiveC()();
        CFProperty = IORegistryEntryCreateCFProperty(v11, v13, v12, 0);

        if (CFProperty)
        {
          *&v98 = CFProperty;
          if (swift_dynamicCast())
          {
            break;
          }
        }

        v43 = Logger.logObject.getter();
        v44 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v43, v44))
        {
          v45 = swift_slowAlloc();
          *v45 = 0;
          _os_log_impl(&_mh_execute_header, v43, v44, "Unable to query interface name from service that was removed", v45, 2u);
        }

        IOObjectRelease(v11);
        v11 = IOIteratorNext(a1);
        if (!v11)
        {
          goto LABEL_38;
        }
      }

      v15 = v103;
      v16 = v104;

      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = v12;
        v20 = a1;
        v21 = v15;
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v103 = v23;
        *v22 = v89;
        *(v22 + 4) = sub_100002320(v21, v16, &v103);
        _os_log_impl(&_mh_execute_header, v17, v18, "Removed interface %s", v22, 0xCu);
        sub_100002A00(v23);

        v15 = v21;
        a1 = v20;
        v12 = v19;
      }

      v24 = v94;
      swift_beginAccess();
      v25 = *(v24 + 32);
      v26 = sub_1000102E8(v15, v16);
      if (v27)
      {
        break;
      }

      swift_endAccess();

      v46 = Logger.logObject.getter();
      v47 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v46, v47))
      {
        v48 = v15;
        v49 = swift_slowAlloc();
        v50 = swift_slowAlloc();
        v103 = v50;
        *v49 = v89;
        v51 = sub_100002320(v48, v16, &v103);

        *(v49 + 4) = v51;
        v12 = v90;
        _os_log_impl(&_mh_execute_header, v46, v47, "No handle found for %s", v49, 0xCu);
        sub_100002A00(v50);
      }

      else
      {
      }

      IOObjectRelease(v11);
      v11 = IOIteratorNext(a1);
LABEL_35:
      if (!v11)
      {
        goto LABEL_38;
      }
    }

    v28 = v26;
    v29 = v94;
    v30 = *(v94 + 32);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v32 = *(v29 + 32);
    *&v98 = v32;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1001968A8();
      v32 = v98;
    }

    v33 = *(*(v32 + 48) + 16 * v28 + 8);

    v93 = *(*(v32 + 56) + 8 * v28);
    sub_100193530(v28, v32);
    *(v94 + 32) = v32;
    swift_endAccess();
    v34 = String._bridgeToObjectiveC()();
    v35 = IORegistryEntryCreateCFProperty(v11, v34, v12, 0);

    v91 = v15;
    if (v35)
    {
      *&v98 = v35;
      if (swift_dynamicCast())
      {
        v36 = v103;
        v37 = v104;
        v38 = sub_100033AA8(_swiftEmptyArrayStorage);
        v39 = type metadata accessor for BinaryDecoder();
        v40 = swift_allocObject();
        v41 = 0;
        v40[5] = &_swiftEmptyDictionarySingleton;
        v40[2] = v36;
        v40[3] = v37;
        v42 = v37 >> 62;
        if ((v37 >> 62) > 1)
        {
          if (v42 == 2)
          {
            v41 = *(v36 + 16);
          }
        }

        else if (v42)
        {
          v41 = v36;
        }

        v40[4] = v41;
        swift_beginAccess();
        v40[5] = v38;
        v106 = v39;
        v107 = sub_10001F8F4(&qword_10058C7D0, type metadata accessor for BinaryDecoder);
        v103 = v40;
        sub_10000AB0C(v36, v37);

        v52 = v81;
        v53 = sub_1000380FC(&v103);
        if (!v52)
        {
          v35 = v53;
          v81 = 0;

          sub_1000124C8(v36, v37);
          v54 = 0;
          goto LABEL_28;
        }

        sub_1000124C8(v36, v37);
        v35 = 0;
        v81 = 0;
      }

      else
      {
        v35 = 0;
      }
    }

    v54 = 1;
LABEL_28:
    v55 = *(v93 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A15InterfaceHandle_role);
    v57 = *(v93 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A15InterfaceHandle_parentInterfaceName);
    v56 = *(v93 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A15InterfaceHandle_parentInterfaceName + 8);
    v58 = OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A15InterfaceHandle_queue;
    v59 = *(v93 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A15InterfaceHandle_queue);
    v60 = (v93 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A15InterfaceHandle_eventHandler);
    v61 = *(v93 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A15InterfaceHandle_eventHandler);
    v62 = *(v93 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A15InterfaceHandle_eventHandler + 8);
    LOBYTE(v95) = v54;
    *&v98 = v91;
    *(&v98 + 1) = v16;
    LOBYTE(v99) = v55;
    *(&v99 + 1) = v57;
    *&v100 = v56;
    *(&v100 + 1) = v59;
    WORD2(v101) = WORD2(v35);
    LODWORD(v101) = v35;
    BYTE6(v101) = v54;
    *(&v101 + 1) = v61;
    v102 = v62;
    v103 = v91;
    v104 = v16;
    v105 = v55;
    v106 = v57;
    v107 = v56;
    v108 = v59;
    v110 = WORD2(v35);
    v109 = v35;
    v111 = v54;
    v112 = v61;
    v113 = v62;

    v63 = v59;
    sub_10001F89C(v61);
    sub_1000B22A8(&v98, v96);
    sub_1000B22E0(&v103);
    v64 = v94;
    swift_beginAccess();
    v65 = *(v64 + 40);
    v66 = swift_isUniquelyReferenced_nonNull_native();
    *(v64 + 40) = v65;
    if ((v66 & 1) == 0)
    {
      v65 = sub_100116744(0, *(v65 + 2) + 1, 1, v65);
      *(v94 + 40) = v65;
    }

    v68 = *(v65 + 2);
    v67 = *(v65 + 3);
    if (v68 >= v67 >> 1)
    {
      v65 = sub_100116744((v67 > 1), v68 + 1, 1, v65);
    }

    *(v65 + 2) = v68 + 1;
    v69 = &v65[72 * v68];
    *(v69 + 2) = v98;
    v70 = v99;
    v71 = v100;
    v72 = v101;
    *(v69 + 12) = v102;
    *(v69 + 4) = v71;
    *(v69 + 5) = v72;
    *(v69 + 3) = v70;
    *(v94 + 40) = v65;
    swift_endAccess();
    if (*v60)
    {
      v73 = *(v93 + v58);
      v97[2] = sub_1000B2310;
      v97[3] = v93;
      v96[0] = _NSConcreteStackBlock;
      v96[1] = 1107296256;
      v97[0] = sub_10000C8B8;
      v97[1] = &unk_10055FE10;
      v74 = _Block_copy(v96);
      v75 = v73;

      v76 = v84;
      static DispatchQoS.unspecified.getter();
      v95 = _swiftEmptyArrayStorage;
      sub_10001F8F4(&qword_10058BCC0, &type metadata accessor for DispatchWorkItemFlags);
      sub_10005DC58(&unk_100595270, &unk_1004AEC80);
      sub_10000CADC(&qword_10058BCD0, &unk_100595270, &unk_1004AEC80);
      v78 = v86;
      v77 = v87;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v74);

      (*v82)(v78, v77);
      (*v80)(v76, v85);
    }

    IOObjectRelease(v11);
    a1 = v88;
    v11 = IOIteratorNext(v88);
    v12 = v90;
    goto LABEL_35;
  }

LABEL_38:
  os_unfair_lock_unlock(*(v79 + 16));
}

uint64_t sub_1000917B4(uint64_t result, uint64_t a2, void (*a3)(uint64_t))
{
  if (result)
  {

    a3(a2);
  }

  return result;
}

uint64_t sub_100091810(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchQoS();
  v9 = *(v18 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin();
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10058AA38 != -1)
  {
    swift_once();
  }

  v17[1] = static OS_dispatch_queue.p2p;
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a1;
  aBlock[4] = sub_1000B28B8;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000C8B8;
  aBlock[3] = &unk_100560018;
  v14 = _Block_copy(aBlock);

  v15 = a1;
  static DispatchQoS.unspecified.getter();
  v19 = _swiftEmptyArrayStorage;
  sub_10001F8F4(&qword_10058BCC0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10005DC58(&unk_100595270, &unk_1004AEC80);
  sub_10000CADC(&qword_10058BCD0, &unk_100595270, &unk_1004AEC80);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);
  (*(v5 + 8))(v8, v4);
  (*(v9 + 8))(v12, v18);
}

uint64_t sub_100091B20(uint64_t a1, void *a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100091B80(a2);
  }

  return result;
}

void sub_100091B80(void *a1)
{
  v3 = *(*(type metadata accessor for DriverEvent(0) - 8) + 64);
  __chkstk_darwin();
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin();
  v10 = (&v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_10058AA38 != -1)
  {
    swift_once();
  }

  v11 = static OS_dispatch_queue.p2p;
  *v10 = static OS_dispatch_queue.p2p;
  (*(v7 + 104))(v10, enum case for DispatchPredicate.onQueue(_:), v6);
  v12 = v11;
  LOBYTE(v11) = _dispatchPreconditionTest(_:)();
  (*(v7 + 8))(v10, v6);
  if ((v11 & 1) == 0)
  {
    __break(1u);
    return;
  }

  if ([a1 type] == 12)
  {
    v13 = [a1 info];
    if (v13)
    {
      v14 = v13;
      v15 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      if (*(v15 + 16))
      {
        v18 = v1;
        v19 = sub_1000102E8(v16, v17);
        v21 = v20;

        if (v21)
        {
          sub_100002B30(*(v15 + 56) + 32 * v19, v37);

          sub_100018AB4(0, &qword_10058C848, CWFAutoJoinStatus_ptr);
          if (swift_dynamicCast())
          {
            v22 = v36;
            v23 = [v36 interfaceName];
            if (v23)
            {
              v24 = v23;
              v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v27 = v26;

              v28 = v18;
              v29 = *(v18 + 24);
              os_unfair_lock_lock(*(v29 + 16));
              swift_beginAccess();
              v30 = *(v28 + 32);
              if (*(v30 + 16) && (v31 = sub_1000102E8(v25, v27), (v32 & 1) != 0))
              {
                v33 = *(*(v30 + 56) + 8 * v31);
                swift_endAccess();

                v34 = *(v33 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A15InterfaceHandle_eventHandler);
                sub_10001F89C(v34);

                os_unfair_lock_unlock(*(v29 + 16));
                if (v34)
                {

                  *v5 = [v22 state] == 0;
                  *(v5 + 8) = 0u;
                  *(v5 + 24) = 0u;
                  *(v5 + 20) = 0;
                  swift_storeEnumTagMultiPayload();
                  v34(v5);

                  sub_100010520(v34);
                  sub_100010520(v34);
                  sub_100012468(v5, type metadata accessor for DriverEvent);
                  return;
                }
              }

              else
              {
                swift_endAccess();

                os_unfair_lock_unlock(*(v29 + 16));
              }
            }
          }

          return;
        }
      }

      else
      {
      }
    }
  }
}

void sub_100091F90(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

void sub_100091FF8(void *a1)
{
  v10 = 0;
  v1 = [a1 startMonitoringEventType:12 error:&v10];
  v2 = v10;
  if (v1)
  {

    v3 = v2;
  }

  else
  {
    v4 = v10;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    swift_errorRetain();
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138412290;
      swift_errorRetain();
      v9 = _swift_stdlib_bridgeErrorToNSError();
      *(v7 + 4) = v9;
      *v8 = v9;
      _os_log_impl(&_mh_execute_header, v5, v6, "Failed to monitor for autjoin status changed event: %@", v7, 0xCu);
      sub_100016290(v8, &qword_10058B780, &qword_100480AC0);
    }

    else
    {
    }
  }
}

uint64_t AppleDevice.deinit()
{
  IONotificationPortDestroy(*(v0 + 144));
  swift_beginAccess();
  IOObjectRelease(*(v0 + 152));
  swift_beginAccess();
  IOObjectRelease(*(v0 + 156));
  [*(v0 + 48) stopMonitoringEventType:12];
  [*(v0 + 48) invalidate];
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 32);

  v4 = *(v0 + 40);

  sub_1000AEAEC(*(v0 + 64));
  sub_100016290(v0 + 72, &qword_10058BA80, &qword_1004818C0);

  v5 = *(v0 + 120);

  v6 = *(v0 + 128);

  v7 = *(v0 + 176);

  v8 = *(v0 + 184);

  v9 = *(v0 + 192);
  v10 = *(v0 + 200);

  sub_100012468(v0 + OBJC_IVAR____TtC7CoreP2P11AppleDevice_neighborDiscoveryRoutingSocket, type metadata accessor for RoutingSocket);
  sub_100016290(v0 + OBJC_IVAR____TtC7CoreP2P11AppleDevice_interfaceDiscoverer, &qword_10058BCA8, &qword_1004818C8);
  v11 = OBJC_IVAR____TtC7CoreP2P11AppleDevice_logger;
  v12 = type metadata accessor for Logger();
  (*(*(v12 - 8) + 8))(v0 + v11, v12);
  return v0;
}

uint64_t AppleDevice.__deallocating_deinit()
{
  AppleDevice.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1000923E4@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 24);
  if (v2)
  {
    *a2 = *(v2 + 2);
    *(a2 + 4) = 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void static ApplePlatform.withInterface<A>(_:matchingFamily:_:)(uint64_t a1@<X6>, uint64_t a2@<X8>)
{
  (*(*(a1 - 8) + 56))(a2, 1, 1, a1);
  static ApplePlatform.enumerateInterfaceAddresses(_:)(sub_1000AED90);
  if (v4)
  {
    v3 = type metadata accessor for Optional();
    (*(*(v3 - 8) + 8))(a2, v3);
  }
}

void sub_100092524(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  v8 = *(a1 + 176);
  if (*(v8 + 16) && (v9 = sub_10007D084(a2), (v10 & 1) != 0))
  {
    v11 = *(v8 + 56) + 24 * v9;
    v12 = *v11;
    v13 = *(v11 + 8);
    v14 = *(v11 + 16);

    v15 = v12;
    swift_endAccess();
    sub_1000AEDD0(v12);
    swift_beginAccess();
    v16 = v15;

    v17 = *(a1 + 176);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *(a1 + 176);
    *(a1 + 176) = 0x8000000000000000;
    sub_100080424(v16, a3, a4, a2, isUniquelyReferenced_nonNull_native);
    *(a1 + 176) = v19;
    swift_endAccess();
      ;
    }
  }

  else
  {
    swift_endAccess();
  }
}

uint64_t sub_100092660(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  KeyPath = swift_getKeyPath();

  sub_10000F344(a4, a5, a3, KeyPath, 0x10uLL);

  *(a3 + 16) = 97;
  if (a1)
  {
    v14 = a2;
  }

  else
  {
    v14 = 0;
  }

  if ((v14 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (HIDWORD(v14))
  {
LABEL_16:
    __break(1u);
    return result;
  }

  *(a3 + 24) = v14;
  *(a3 + 32) = a1;
  v15 = *(a6 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A15InterfaceHandle_reference);
  v16 = Apple80211RawGet();
  if (v16)
  {
    a2 = v16;
    sub_10000B02C();
    swift_allocError();
    *v17 = a2;
    *(v17 + 8) = 0;
    *(v17 + 16) = 0;
    swift_willThrow();
  }

  else if (a2)
  {
    v18 = 0;
    while (*(a1 + v18))
    {
      if (a2 == ++v18)
      {
        return a2;
      }
    }

    return v18;
  }

  return a2;
}

void sub_100092798(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  if (*(a1 + 54))
  {
    v9 = sub_1002AB05C();
    v10 = HIDWORD(v9);
    v11 = v9 >> 40;
    LOBYTE(v12) = v9 & 0xFC | 2;
    v45 = v9 >> 16;
    v46 = v9 >> 8;
    v44 = v9 >> 24;
  }

  else
  {
    LODWORD(v10) = *(a1 + 52);
    v12 = *(a1 + 48);
    v13 = v12 | (*(a1 + 52) << 32);
    v45 = v13 >> 16;
    v46 = v13 >> 8;
    v44 = v13 >> 24;
    LODWORD(v11) = v10 >> 8;
  }

  sub_1000B22A8(a1, v48);

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  sub_1000B22E0(a1);

  if (os_log_type_enabled(v14, v15))
  {
    v42 = a2;
    v43 = a5;
    v16 = swift_slowAlloc();
    v48[0] = swift_slowAlloc();
    *v16 = 136315906;
    *(v16 + 4) = sub_100002320(*a1, *(a1 + 8), v48);
    *(v16 + 12) = 2080;
    v17 = 0xEE00657275746375;
    v18 = 0x7274736172666E49;
    v19 = *(a1 + 16);
    v20 = 0xE300000000000000;
    v21 = 5128526;
    v22 = 0xE800000000000000;
    v23 = 0x61746144204E414ELL;
    if (v19 != 3)
    {
      v23 = 0x6574614C20776F4CLL;
      v22 = 0xEB0000000079636ELL;
    }

    if (v19 != 2)
    {
      v21 = v23;
      v20 = v22;
    }

    if (*(a1 + 16))
    {
      v18 = 1279547201;
      v17 = 0xE400000000000000;
    }

    if (*(a1 + 16) <= 1u)
    {
      v24 = v18;
    }

    else
    {
      v24 = v21;
    }

    if (*(a1 + 16) <= 1u)
    {
      v25 = v17;
    }

    else
    {
      v25 = v20;
    }

    v26 = sub_100002320(v24, v25, v48);

    *(v16 + 14) = v26;
    *(v16 + 22) = 2080;
    v27 = ((v10 << 32) | (v11 << 40) | (v44 << 24) | (v45 << 16) | (v46 << 8) | v12);
    v28 = WiFiAddress.description.getter(v27);
    v30 = sub_100002320(v28, v29, v48);

    *(v16 + 24) = v30;
    *(v16 + 32) = 2080;
    v31 = a3;
    *(v16 + 34) = sub_100002320(a3, a4, v48);
    _os_log_impl(&_mh_execute_header, v14, v15, "Attempting recovery for %s[%s] with %s on %s", v16, 0x2Au);
    swift_arrayDestroy();

    a2 = v42;
    a5 = v43;
  }

  else
  {

    v32 = (v10 << 32) | (v11 << 40) | (v44 << 24) | (v45 << 16);
    v31 = a3;
    v27 = (v32 & 0xFFFFFFFFFFFF0000 | (v46 << 8) | v12);
  }

  v33._countAndFlagsBits = v31;
  v33._object = a4;
  v34 = AppleDevice.findOrCreateInterface(for:on:with:)(*(a1 + 16), v33, v27);
  if (v34.value._object)
  {
    v35 = *(a5 + 24);
    os_unfair_lock_lock(*(v35 + 16));
    swift_beginAccess();
    v36 = *(a5 + 32);
    if (*(v36 + 16))
    {
      v37 = sub_1000102E8(v34.value._countAndFlagsBits, v34.value._object);
      if (v38)
      {
        v39 = *(*(v36 + 56) + 8 * v37);
        swift_endAccess();

        os_unfair_lock_unlock(*(v35 + 16));
        sub_10008D678(*(a1 + 56), *(a1 + 64));

        return;
      }
    }

    swift_endAccess();

    os_unfair_lock_unlock(*(v35 + 16));
    v40 = 0x80000001004B8270;
    v41 = 0xD000000000000010;
  }

  else
  {
    v41 = 0x6E6F697461657263;
    v40 = 0xEF64656C69616620;
  }

  sub_100092BB4(v41, v40, a2, a1, a5);
}

void sub_100092BB4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1000B22A8(a4, v32);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();
  sub_1000B22E0(a4);

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v32[0] = swift_slowAlloc();
    *v11 = 136315650;
    *(v11 + 4) = sub_100002320(*a4, *(a4 + 8), v32);
    *(v11 + 12) = 2080;
    v12 = 0xEE00657275746375;
    v13 = 0x7274736172666E49;
    v14 = *(a4 + 16);
    v15 = 0xE300000000000000;
    v16 = 5128526;
    v17 = 0xE800000000000000;
    v18 = 0x61746144204E414ELL;
    if (v14 != 3)
    {
      v18 = 0x6574614C20776F4CLL;
      v17 = 0xEB0000000079636ELL;
    }

    if (v14 != 2)
    {
      v16 = v18;
      v15 = v17;
    }

    if (*(a4 + 16))
    {
      v13 = 1279547201;
      v12 = 0xE400000000000000;
    }

    if (*(a4 + 16) <= 1u)
    {
      v19 = v13;
    }

    else
    {
      v19 = v16;
    }

    if (*(a4 + 16) <= 1u)
    {
      v20 = v12;
    }

    else
    {
      v20 = v15;
    }

    v21 = sub_100002320(v19, v20, v32);

    *(v11 + 14) = v21;
    *(v11 + 22) = 2080;
    *(v11 + 24) = sub_100002320(a1, a2, v32);
    _os_log_impl(&_mh_execute_header, v9, v10, "Failed to recover the interface for %s[%s] because %s", v11, 0x20u);
    swift_arrayDestroy();
  }

  v22 = *(a5 + 24);
  os_unfair_lock_lock(*(v22 + 16));
  swift_beginAccess();
  v23 = *(a5 + 40);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a5 + 40) = v23;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v23 = sub_100116744(0, *(v23 + 2) + 1, 1, v23);
    *(a5 + 40) = v23;
  }

  v26 = *(v23 + 2);
  v25 = *(v23 + 3);
  if (v26 >= v25 >> 1)
  {
    v23 = sub_100116744((v25 > 1), v26 + 1, 1, v23);
  }

  *(v23 + 2) = v26 + 1;
  v27 = &v23[72 * v26];
  *(v27 + 2) = *a4;
  v28 = *(a4 + 16);
  v29 = *(a4 + 32);
  v30 = *(a4 + 48);
  *(v27 + 12) = *(a4 + 64);
  *(v27 + 4) = v29;
  *(v27 + 5) = v30;
  *(v27 + 3) = v28;
  *(a5 + 40) = v23;
  swift_endAccess();
  v31 = *(v22 + 16);
  sub_1000B22A8(a4, v32);
  os_unfair_lock_unlock(v31);
}

uint64_t sub_1000953E0(void *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v8 = a1[3];
  v9 = a1[4];
  sub_100029B34(a1, v8);
  v10 = type metadata accessor for AppleIO80211Driver();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();

  v17 = AppleIO80211Driver.init(device:role:name:)(v13, a3, a4, a5);
  v14 = *(v9 + 8);
  v15 = sub_10001F8F4(&unk_10058C838, type metadata accessor for AppleIO80211Driver);
  v14(&v17, v10, &protocol witness table for AppleIO80211Driver, v15, &protocol witness table for AppleIO80211Driver, &protocol witness table for AppleIO80211Driver, v8, v9);
}

uint64_t sub_10009550C(uint64_t a1, unint64_t a2)
{
  v14 = 0;

  v5 = sub_1000AEF40(a1, a2, &v14, v2);
  v7 = v6;

  if (v7)
  {

    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v10 = 136315394;
      v11 = sub_100002320(v5, v7, &v13);

      *(v10 + 4) = v11;
      *(v10 + 12) = 2080;
      *(v10 + 14) = sub_100002320(a1, a2, &v13);
      _os_log_impl(&_mh_execute_header, v8, v9, "%s when removing %s from legacy preferences", v10, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }
  }

  return v14;
}

void sub_1000956AC(uint64_t a1, unint64_t a2)
{

  v4 = sub_1000AF1E4(a1, a2);
  v6 = v5;

  if (v6)
  {

    oslog = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v8 = 136315394;
      v9 = sub_100002320(v4, v6, &v11);

      *(v8 + 4) = v9;
      *(v8 + 12) = 2080;
      *(v8 + 14) = sub_100002320(a1, a2, &v11);
      _os_log_impl(&_mh_execute_header, oslog, v7, "%s when configuring DHCP networking for %s", v8, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }
  }
}

uint64_t sub_10009585C(uint64_t a1)
{
  v2 = *(*(type metadata accessor for DriverEvent(0) - 8) + 64);
  __chkstk_darwin();
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A15InterfaceHandle_eventHandler);
  if (v5)
  {
    v6 = *(a1 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A15InterfaceHandle_eventHandler + 8);
    *v4 = 2;
    swift_storeEnumTagMultiPayload();

    v5(v4);
    sub_100010520(v5);
    sub_100012468(v4, type metadata accessor for DriverEvent);
  }

  return sub_10008D540();
}

uint64_t sub_100095944(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);
  os_unfair_lock_lock(*(v5 + 16));
  swift_beginAccess();
  v6 = *(v2 + 32);
  if (*(v6 + 16) && (v7 = sub_1000102E8(a1, a2), (v8 & 1) != 0))
  {
    v9 = *(*(v6 + 56) + 8 * v7);
    swift_endAccess();
    v10 = v9 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A15InterfaceHandle_parentInterfaceName;
    v11 = *(v9 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A15InterfaceHandle_parentInterfaceName);
    v12 = *(v10 + 8);
  }

  else
  {
    swift_endAccess();
    v11 = 0;
  }

  os_unfair_lock_unlock(*(v5 + 16));
  return v11;
}

void AppleDevice.startMonitoringEvents(on:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v5;
  v11 = *(v4 + 24);
  os_unfair_lock_lock(*(v11 + 16));
  swift_beginAccess();
  v12 = *(v4 + 32);
  if (*(v12 + 16) && (v13 = sub_1000102E8(a1, a2), (v14 & 1) != 0))
  {
    v15 = *(*(v12 + 56) + 8 * v13);
    swift_endAccess();
    v16 = *(v11 + 16);
    swift_retain_n();
    os_unfair_lock_unlock(v16);
    v17 = swift_allocObject();
    *(v17 + 16) = a3;
    *(v17 + 24) = a4;

    sub_10008CF3C(0, sub_100003298, v17);
    if (v6)
    {
    }

    else
    {

      v19 = (v15 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A15InterfaceHandle_eventHandler);
      v20 = *(v15 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A15InterfaceHandle_eventHandler);
      v21 = *(v15 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A15InterfaceHandle_eventHandler + 8);
      *v19 = a3;
      v19[1] = a4;

      sub_100010520(v20);
    }
  }

  else
  {
    swift_endAccess();
    sub_10000B02C();
    swift_allocError();
    *v18 = xmmword_1004817F0;
    *(v18 + 16) = 0;
    swift_willThrow();
    os_unfair_lock_unlock(*(v11 + 16));
  }
}

void AppleDevice.startMonitoringEvents(on:customQueue:eventHandler:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v11 = *(v5 + 24);
  os_unfair_lock_lock(*(v11 + 16));
  swift_beginAccess();
  v12 = *(v5 + 32);
  if (*(v12 + 16) && (v13 = sub_1000102E8(a1, a2), (v14 & 1) != 0))
  {
    v15 = *(*(v12 + 56) + 8 * v13);
    swift_endAccess();
    v16 = *(v11 + 16);

    os_unfair_lock_unlock(v16);
    sub_10008CF3C(a3, a4, a5);
  }

  else
  {
    swift_endAccess();
    sub_10000B02C();
    swift_allocError();
    *v17 = xmmword_1004817F0;
    *(v17 + 16) = 0;
    swift_willThrow();
    os_unfair_lock_unlock(*(v11 + 16));
  }
}

Swift::Void __swiftcall AppleDevice.stopMonitoringEvents(on:)(Swift::String on)
{
  object = on._object;
  countAndFlagsBits = on._countAndFlagsBits;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin();
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v1 + 24);
  os_unfair_lock_lock(*(v14 + 16));
  swift_beginAccess();
  v15 = *(v1 + 32);
  if (*(v15 + 16) && (v16 = sub_1000102E8(countAndFlagsBits, object), (v17 & 1) != 0))
  {
    v18 = *(*(v15 + 56) + 8 * v16);
  }

  else
  {
    v18 = 0;
  }

  swift_endAccess();
  os_unfair_lock_unlock(*(v14 + 16));
  if (v18)
  {
    v19 = *(v18 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A15InterfaceHandle_queue);
    v20 = swift_allocObject();
    *(v20 + 16) = v18;
    aBlock[4] = sub_1000AF470;
    aBlock[5] = v20;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10000C8B8;
    aBlock[3] = &unk_10055ED58;
    v24 = _Block_copy(aBlock);
    v25 = v9;
    v23 = v19;

    static DispatchQoS.unspecified.getter();
    v26 = _swiftEmptyArrayStorage;
    sub_10001F8F4(&qword_10058BCC0, &type metadata accessor for DispatchWorkItemFlags);
    sub_10005DC58(&unk_100595270, &unk_1004AEC80);
    sub_10000CADC(&qword_10058BCD0, &unk_100595270, &unk_1004AEC80);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v21 = v23;
    v22 = v24;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v22);

    (*(v5 + 8))(v8, v4);
    (*(v10 + 8))(v13, v25);
  }
}

uint64_t AppleDevice.loadCapabilities(on:)(uint64_t a1, uint64_t a2)
{
  memset(v3, 0, sizeof(v3));
  v4 = 0;
  AppleDevice.getRequest(requestType:data:on:)(0xCuLL, v3 + 4, &v4 + 1, 0, a1, a2);
  return v3[0];
}

void AppleDevice.attachForDriverDiscovery<A>(_:)(uint64_t a1, void (__cdecl *a2)(const void *), CFStringRef (__cdecl *a3)(const void *))
{
  context.release = a2;
  context.copyDescription = a3;
  v6 = sub_1000297D4(&context.version);
  (*(*(a2 - 1) + 16))(v6, a1, a2);
  v7 = OBJC_IVAR____TtC7CoreP2P11AppleDevice_interfaceDiscoverer;
  swift_beginAccess();
  sub_1000B1B78(&context, v3 + v7, &qword_10058BCA8, &qword_1004818C8);
  swift_endAccess();
  v8 = *(v3 + 192);
  v9 = *(v3 + 208);
  os_unfair_lock_lock(*(v8 + 16));
  context.version = 0;
  context.info = v3;
  context.retain = j__swift_unknownObjectRetain;
  context.release = j__swift_unknownObjectRelease;
  context.copyDescription = sub_1000964EC;
  SCPreferencesSetCallback(v9, sub_100096574, &context);
  if (qword_10058AA38 != -1)
  {
    swift_once();
  }

  v10 = static OS_dispatch_queue.p2p;
  SCPreferencesSetDispatchQueue(v9, static OS_dispatch_queue.p2p);
  os_unfair_lock_unlock(*(v8 + 16));
  if (!*(v3 + 172))
  {
    swift_beginAccess();
    swift_beginAccess();
    v11 = IORegisterForSystemPower(v3, (v3 + 160), sub_10001F0F8, (v3 + 168));
    swift_endAccess();
    swift_endAccess();
    *(v3 + 172) = v11;
    v12 = *(v3 + 160);
    if (v12)
    {
      IONotificationPortSetDispatchQueue(v12, v10);
    }

    else
    {
      v13 = v3;
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&_mh_execute_header, v14, v15, "Failed to monitor for system power notifications", v16, 2u);
      }

      v3 = v13;
    }
  }

  swift_beginAccess();
  sub_10008EF20(*(v3 + 152));
  swift_beginAccess();
  sub_100090D2C(*(v3 + 156));
}

NSString sub_1000964EC()
{

  type metadata accessor for AppleDevice(0);
  _print_unlocked<A, B>(_:_:)();

  v0 = String._bridgeToObjectiveC()();

  return v0;
}

void sub_100096574(void *a1, uint64_t a2, void *a3)
{
  v4 = a1;
  sub_1000AF4C0(v4, a3);
}

Swift::Void __swiftcall AppleDevice.detachDriverDiscovery()()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v16 = *(v1 - 8);
  v2 = *(v16 + 64);
  __chkstk_darwin();
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS();
  v5 = *(v15 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (*(v0 + 168))
  {
    swift_beginAccess();
    IODeregisterForSystemPower((v0 + 168));
    swift_endAccess();
  }

  v9 = *(v0 + 172);
  if (v9)
  {
    IOObjectRelease(v9);
  }

  swift_beginAccess();
  v10 = *(v0 + 160);
  if (v10)
  {
    IONotificationPortDestroy(v10);
  }

  *(v0 + 160) = 0;
  *(v0 + 168) = 0;
  v11 = *(v0 + 192);
  v12 = *(v0 + 208);
  os_unfair_lock_lock(*(v11 + 16));
  SCPreferencesSetDispatchQueue(v12, 0);
  SCPreferencesSetCallback(v12, 0, 0);
  os_unfair_lock_unlock(*(v11 + 16));
  if (qword_10058AA38 != -1)
  {
    swift_once();
  }

  aBlock[4] = sub_1000AF498;
  aBlock[5] = v0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000C8B8;
  aBlock[3] = &unk_10055ED80;
  v13 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v17 = _swiftEmptyArrayStorage;
  sub_10001F8F4(&qword_10058BCC0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10005DC58(&unk_100595270, &unk_1004AEC80);
  sub_10000CADC(&qword_10058BCD0, &unk_100595270, &unk_1004AEC80);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v13);
  (*(v16 + 8))(v4, v1);
  (*(v5 + 8))(v8, v15);
}

uint64_t sub_100096950(uint64_t a1)
{
  v5 = 0;
  memset(v4, 0, sizeof(v4));
  v2 = OBJC_IVAR____TtC7CoreP2P11AppleDevice_interfaceDiscoverer;
  swift_beginAccess();
  sub_1000B1B78(v4, a1 + v2, &qword_10058BCA8, &qword_1004818C8);
  return swift_endAccess();
}

uint64_t sub_1000969C4(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v7 = *v4;
  if (!a1)
  {

    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *&v36 = v23;
      *v22 = 136315138;
      *(v22 + 4) = sub_100002320(a2, a3, &v36);
      _os_log_impl(&_mh_execute_header, v20, v21, "Failed to create low latency interface because parent %s was not found", v22, 0xCu);
      sub_100002A00(v23);
    }

    sub_10000B02C();
    swift_allocError();
    *v24 = xmmword_1004817E0;
    *(v24 + 16) = 0;
    swift_willThrow();
    return a2;
  }

  v34 = 0;
  v35 = 0;
  if ((a4 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_32:
    __break(1u);
  }

  if (HIDWORD(a4))
  {
    goto LABEL_32;
  }

  v33[0] = a4;
  v33[1] = 1;
  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  KeyPath = swift_getKeyPath();

  sub_10000F344(a2, a3, &v36, KeyPath, 0x10uLL);

  LODWORD(v37) = 293;
  DWORD2(v37) = 24;
  v38 = v33;
  v10 = *(a1 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A15InterfaceHandle_reference);
  v11 = Apple80211RawSet();
  if (v11)
  {
    v12 = v11;
    sub_10000B02C();
    swift_allocError();
    *v13 = v12;
    *(v13 + 8) = 0;
    *(v13 + 16) = 0;
    swift_willThrow();

    swift_errorRetain();
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v39[0] = v18;
      *v16 = 136315394;
      *(v16 + 4) = sub_100002320(a2, a3, v39);
      *(v16 + 12) = 2112;
      swift_errorRetain();
      v19 = _swift_stdlib_bridgeErrorToNSError();
      *(v16 + 14) = v19;
      *v17 = v19;
      _os_log_impl(&_mh_execute_header, v14, v15, "Failed to create low latency interface for %s because %@", v16, 0x16u);
      sub_100016290(v17, &qword_10058B780, &qword_100480AC0);

      sub_100002A00(v18);
    }

    swift_willThrow();

    return a2;
  }

  HIBYTE(v35) = 0;
  v26 = String.init(cString:)();
  v28 = HIBYTE(v27) & 0xF;
  if ((v27 & 0x2000000000000000) == 0)
  {
    v28 = v26 & 0xFFFFFFFFFFFFLL;
  }

  if (v28)
  {
    a2 = v26;
    sub_10001F8F4(&qword_10058BD10, type metadata accessor for AppleDevice);
    static ApplePlatform.withInterface<A>(_:matchingFamily:_:)(&type metadata for Bool, v39);
    if (LOBYTE(v39[0]) != 2 && (v39[0] & 1) != 0)
    {

      return a2;
    }
  }

  v29 = OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A15InterfaceHandle_role;
  if (*(a1 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A15InterfaceHandle_role) <= 1u && *(a1 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A15InterfaceHandle_role))
  {

    goto LABEL_22;
  }

  v30 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v30)
  {
LABEL_22:
    *v39 = xmmword_100481810;
    if (if_nametoindex(v39))
    {

      return 813132908;
    }
  }

  if (*(a1 + v29) == 2)
  {
  }

  else
  {
    v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v31 & 1) == 0)
    {

      return 0;
    }
  }

  *v39 = xmmword_100481820;
  v32 = if_nametoindex(v39);

  if (v32)
  {
    return 829910124;
  }

  else
  {
    return 0;
  }
}

BOOL sub_10009708C(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (!v1)
  {
    __break(1u);
  }

  v5 = *(v1 + 8);
  v6 = *(v1 + 16);
  v2 = sub_1002AAFAC(&v5 + *(v1 + 5), *(v1 + 6));
  return (sub_1000172CC(v2, v3) & 0x1000000000000) == 0;
}

BOOL sub_100097110@<W0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10009708C(a1);
  *a2 = result;
  return result;
}

uint64_t sub_100097170(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v5[0] = a1;
      v5[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      v3 = v5;
      return if_nametoindex(v3);
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v3 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
      return if_nametoindex(v3);
    }
  }

  result = _StringGuts._slowWithCString<A>(_:)();
  if (!v2)
  {
    return v6;
  }

  return result;
}

uint64_t sub_100097200(uint64_t result, uint64_t a2, char *__dst)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    return _StringGuts._slowWithCString<A>(_:)();
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    *__source = result;
    v5 = a2 & 0xFFFFFFFFFFFFFFLL;
    if (__dst)
    {
      v3 = __source;
      return strlcpy(__dst, v3, 0x10uLL);
    }

    __break(1u);
    goto LABEL_11;
  }

  if ((result & 0x1000000000000000) == 0)
  {
    return _StringGuts._slowWithCString<A>(_:)();
  }

  if (__dst)
  {
    v3 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    return strlcpy(__dst, v3, 0x10uLL);
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_1000972AC(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x1000000000000000) == 0 && ((a2 & 0x2000000000000000) != 0 || (a1 & 0x1000000000000000) != 0))
  {
    return nw_interface_create_with_name();
  }

  sub_10005DC58(&qword_10058C780, &qword_100481FB0);
  result = _StringGuts._slowWithCString<A>(_:)();
  if (!v2)
  {
    return v4;
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AppleDevice.neighborDiscoveryTableClear(on:)(Swift::String on)
{
  object = on._object;
  countAndFlagsBits = on._countAndFlagsBits;
  v4 = *v1;
  v5 = v1[3];
  os_unfair_lock_lock(*(v5 + 16));
  sub_10001F8F4(&qword_10058BD10, type metadata accessor for AppleDevice);
  static ApplePlatform.withInterface<A>(_:matchingFamily:_:)(&type metadata for WiFiAddress, &v13);
  v6 = v13 | (v14 << 32);
  v7 = v15;
  swift_beginAccess();
  v8 = v1[4];
  if (*(v8 + 16) && (v9 = sub_1000102E8(countAndFlagsBits, object), (v10 & 1) != 0))
  {
    v11 = *(*(v8 + 56) + 8 * v9);
    swift_endAccess();
    v12 = *(v11 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A15InterfaceHandle_interfaceIndex);
  }

  else
  {
    swift_endAccess();
    v12 = sub_100097170(countAndFlagsBits, object);
  }

  swift_beginAccess();
  sub_100200B90(v6 & 0xFFFFFFFFFFFFLL | (v7 << 48), v12);
  swift_endAccess();
  os_unfair_lock_unlock(*(v5 + 16));
}

uint64_t sub_100097578(const __SCPreferences *a1)
{
  v1 = SCNetworkSetCopyAll(a1);
  if (v1)
  {
    v2 = v1;
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      type metadata accessor for SCNetworkSet(0);
      static Array._conditionallyBridgeFromObjectiveC(_:result:)();
    }
  }

  return 0;
}

uint64_t sub_1000979A4(const __SCPreferences *a1, uint64_t a2, void *a3)
{
  v6 = String._bridgeToObjectiveC()();
  v7 = _SCNetworkInterfaceCreateWithBSDName();

  v14 = v7;
  if (v7)
  {
    v8 = SCNetworkSetCopyCurrent(a1);
    if (v8)
    {
      v9 = v8;
      if (SCNetworkSetEstablishDefaultInterfaceConfiguration() || !SCError())
      {
        v10 = SCNetworkServiceCopyAll(a1);
        if (v10)
        {
          v11 = v10;
          objc_opt_self();
          if (swift_dynamicCastObjCClass())
          {
            type metadata accessor for SCNetworkService(0);
            static Array._conditionallyBridgeFromObjectiveC(_:result:)();
          }
        }
      }

      return 0;
    }

    else
    {

      return 0;
    }
  }

  else
  {
    _StringGuts.grow(_:)(42);

    v15 = 0xD000000000000028;
    v16 = 0x80000001004B7E60;
    v12._countAndFlagsBits = a2;
    v12._object = a3;
    String.append(_:)(v12);
    return 0;
  }
}

id sub_1000985B8@<X0>(void *a1@<X8>)
{
  v2 = *(*v1 + 200);
  v4 = *(*v1 + 208);
  *a1 = *(*v1 + 192);
  a1[1] = v2;
  a1[2] = v4;

  return v4;
}

uint64_t sub_100098614@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  swift_beginAccess();
  *a1 = *(v3 + 184);
}

uint64_t sub_100098660(uint64_t *a1)
{
  v2 = *a1;
  v3 = *v1;
  swift_beginAccess();
  v4 = *(v3 + 184);
  *(v3 + 184) = v2;
}

uint64_t (*sub_1000986AC())()
{
  v1 = *v0;
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_100098728()
{
  v1 = type metadata accessor for Mirror.AncestorRepresentation();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin();
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(*(sub_10005DC58(&unk_10058FC10, &qword_100484170) - 8) + 64);
  __chkstk_darwin();
  v8 = v11 - v7;
  v11[1] = *v0;
  v11[0] = _swiftEmptyArrayStorage;
  v9 = type metadata accessor for Mirror.DisplayStyle();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  (*(v2 + 104))(v5, enum case for Mirror.AncestorRepresentation.generated(_:), v1);

  sub_10005DC58(&qword_10058C7A0, &qword_100481FD0);
  sub_10000CADC(&qword_10058C7A8, &qword_10058C7A0, &qword_100481FD0);
  return Mirror.init<A, B>(_:children:displayStyle:ancestorRepresentation:)();
}

void static ApplePlatform.enumerateInterfaceAddresses(_:)(uint64_t (*a1)(__int128 *))
{
  v8 = 0;
  if (!getifaddrs(&v8))
  {
    v3 = v8;
    if (v8)
    {
      while (1)
      {
        ifa_flags = v3->ifa_flags;
        v7 = *&v3->ifa_next;
        v9 = *&v3->ifa_next;
        v10 = ifa_flags;
        v11 = *&v3->ifa_addr;
        v12 = *&v3->ifa_dstaddr;
        v5 = a1(&v9);
        if (v1)
        {
          break;
        }

        v3 = v7;
        if ((v5 & (v7 != 0)) == 0)
        {
          v6 = v8;
          goto LABEL_7;
        }
      }

      freeifaddrs(v8);
    }

    else
    {
      v6 = 0;
LABEL_7:
      freeifaddrs(v6);
    }
  }
}

uint64_t sub_100098A14(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4, uint64_t a5, void (*a6)(uint64_t), _BOOL8 a7, uint64_t a8, uint64_t a9)
{
  v31 = a6;
  v27 = a5;
  v29 = a9;
  v30 = a7;
  v14 = type metadata accessor for Optional();
  v28 = *(v14 - 8);
  v15 = *(v28 + 64);
  __chkstk_darwin();
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v19 = &v27 - v18;
  result = *(a1 + 8);
  if (result)
  {
    result = String.init(cString:)();
    if (result != a2 || v21 != a3)
    {
      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if ((result & 1) == 0)
      {

        return 1;
      }
    }

    v23 = *(a1 + 24);
    if (v23)
    {

      if (*(v23 + 1) == a4)
      {
        v24 = v30;
        v31(a1);
        if (!v9)
        {
          v25 = v27;
          v26 = v28;
          (*(v28 + 40))(v27, v19, v14);
          (*(v26 + 16))(v17, v25, v14);
          v24 = (*(*(v29 - 8) + 48))(v17, 1) == 1;
          (*(v26 + 8))(v17, v14);
        }
      }

      else
      {
        return 1;
      }

      return v24;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t static ApplePlatform.withInterface<A>(_:matchingAllInFamily:_:)()
{
  v2 = Array.init()();
  static ApplePlatform.enumerateInterfaceAddresses(_:)(sub_1000AF6D0);
  if (v0)
  {
  }

  return v2;
}

uint64_t sub_100098D18(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4, void (*a5)(uint64_t), uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v30 = a7;
  v32 = a6;
  v33 = a5;
  v13 = type metadata accessor for Optional();
  v28 = *(v13 - 8);
  v29 = v13;
  v14 = *(v28 + 64);
  __chkstk_darwin();
  v16 = &v28 - v15;
  v31 = *(a9 - 8);
  v17 = *(v31 + 64);
  __chkstk_darwin();
  v19 = &v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v21 = &v28 - v20;
  result = *(a1 + 8);
  if (result)
  {
    result = String.init(cString:)();
    if (result != a2 || v23 != a3)
    {
      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if ((result & 1) == 0)
      {

        return 1;
      }
    }

    v25 = *(a1 + 24);
    if (v25)
    {

      if (*(v25 + 1) == a4)
      {
        v26 = v34;
        v33(a1);
        if (!v26)
        {
          v27 = v31;
          if ((*(v31 + 48))(v16, 1, a9) == 1)
          {
            (*(v28 + 8))(v16, v29);
          }

          else
          {
            (*(v27 + 32))(v21, v16, a9);
            (*(v27 + 16))(v19, v21, a9);
            type metadata accessor for Array();
            Array.append(_:)();
            (*(v27 + 8))(v21, a9);
          }
        }
      }

      return 1;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t AppleDevice.NetworkPathMonitor.__allocating_init(evaluator:queue:updatedHandler:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  v9 = swift_allocObject();
  *(v9 + 16) = a3;
  *(v9 + 24) = a4;
  v13[4] = sub_1000B01E4;
  v13[5] = v9;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = sub_1000991C0;
  v13[3] = &unk_10055EDD0;
  v10 = _Block_copy(v13);
  swift_unknownObjectRetain_n();
  v11 = a2;

  nw_path_evaluator_set_update_handler();
  _Block_release(v10);
  swift_unknownObjectRelease();

  nw_path_evaluator_start();
  swift_unknownObjectRelease();

  return v8;
}

uint64_t AppleDevice.NetworkPathMonitor.init(evaluator:queue:updatedHandler:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1000B00C8(a1, a2, a3, a4);
  swift_unknownObjectRelease();

  return v5;
}

uint64_t sub_100099168(uint64_t result, void (*a2)(uint64_t))
{
  if (result)
  {
    v3 = swift_unknownObjectRetain();
    a2(v3);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1000991C0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t AppleDevice.NetworkPathMonitor.deinit()
{
  v1 = *(v0 + 16);
  nw_path_evaluator_cancel();
  v2 = *(v0 + 16);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t AppleDevice.NetworkPathMonitor.__deallocating_deinit()
{
  v1 = *(v0 + 16);
  nw_path_evaluator_cancel();
  v2 = *(v0 + 16);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t AppleDevice.NetworkPathMonitor.path.getter()
{
  v1 = *(v0 + 16);
  result = nw_path_evaluator_copy_path();
  if (!result)
  {
    __break(1u);
  }

  return result;
}

uint64_t static AppleDevice.NetworkPathMonitor.statusDescription(from:)(int a1)
{
  if (a1 > 1)
  {
    if (a1 != 3)
    {
      if (a1 == 2)
      {
        return 0x6673697461736E75;
      }

      return 0x6E776F6E6B6E75;
    }

    return 0x6169667369746173;
  }

  else
  {
    if (a1)
    {
      if (a1 == 1)
      {
        return 0x6569667369746173;
      }

      return 0x6E776F6E6B6E75;
    }

    return 0x64696C61766E69;
  }
}

uint64_t sub_10009935C()
{
  if (!*(v0 + 16))
  {
    return 0x6E696469766F7250;
  }

  if (*(v0 + 16) == 1)
  {
    return 0x676E696764697242;
  }

  if (*v0 == 0)
  {
    result = 1701602377;
  }

  else
  {
    result = 0x74616E696D726554;
  }

  *v0;
  return result;
}

uint64_t sub_1000993E8(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  sub_1000509F8(a1, a2, a3);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  sub_100050988(a1, a2, a3);

  v10 = &unk_10058B000;
  if (os_log_type_enabled(v8, v9))
  {
    v11 = 0xE900000000000067;
    v12 = 0x6E696469766F7250;
    v13 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    *v13 = 136315394;
    if (a3)
    {
      if (a3 == 1)
      {
        v14 = 0x676E696764697242;
        v15 = 0xEF64656C69614620;
      }

      else
      {
        if (a1 | a2)
        {
          v14 = 0x74616E696D726554;
        }

        else
        {
          v14 = 1701602377;
        }

        if (a1 | a2)
        {
          v15 = 0xEA00000000006465;
        }

        else
        {
          v15 = 0xE400000000000000;
        }
      }
    }

    else
    {
      v14 = 0x6E696469766F7250;
      v15 = 0xE900000000000067;
    }

    v16 = sub_100002320(v14, v15, &v32);

    *(v13 + 4) = v16;
    *(v13 + 12) = 2080;
    v17 = (v4 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A30InternetSharingProviderSession_state);
    if (*(v4 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A30InternetSharingProviderSession_state + 16))
    {
      if (*(v4 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A30InternetSharingProviderSession_state + 16) == 1)
      {
        v12 = 0x676E696764697242;
        v11 = 0xEF64656C69614620;
      }

      else
      {
        if (*v17 == 0)
        {
          v12 = 1701602377;
        }

        else
        {
          v12 = 0x74616E696D726554;
        }

        if (*v17 == 0)
        {
          v11 = 0xE400000000000000;
        }

        else
        {
          v11 = 0xEA00000000006465;
        }
      }
    }

    v18 = sub_100002320(v12, v11, &v32);

    *(v13 + 14) = v18;
    _os_log_impl(&_mh_execute_header, v8, v9, "Provider state changed: %s -> %s", v13, 0x16u);
    swift_arrayDestroy();

    v10 = &unk_10058B000;
  }

  else
  {
  }

  v19 = v4 + v10[434];
  if (*(v19 + 16) == 1)
  {
    v20 = *v19;
    v21 = *(v19 + 8);

    sub_1000509F8(v20, v21, 1);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *v24 = 136315650;
      *(v24 + 4) = sub_100002320(*(v4 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A30InternetSharingProviderSession_sourceInterface), *(v4 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A30InternetSharingProviderSession_sourceInterface + 8), &v32);
      *(v24 + 12) = 2080;
      *(v24 + 14) = sub_100002320(*(v4 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A30InternetSharingProviderSession_destinationInterface), *(v4 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A30InternetSharingProviderSession_destinationInterface + 8), &v32);
      *(v24 + 22) = 2080;
      v25 = sub_100002320(v20, v21, &v32);
      sub_100050988(v20, v21, 1);
      *(v24 + 24) = v25;
      _os_log_impl(&_mh_execute_header, v22, v23, "Provider bridging failed from %s to %s because %s", v24, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      sub_100050988(v20, v21, 1);
    }
  }

  v27 = *(v4 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A30InternetSharingProviderSession_stateUpdatedHandler);
  v26 = *(v4 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A30InternetSharingProviderSession_stateUpdatedHandler + 8);
  v28 = *v19;
  v29 = *(v19 + 8);
  v30 = *(v19 + 16);
  sub_1000509F8(*v19, v29, *(v19 + 16));
  v27(v28, v29, v30);

  return sub_100050988(v28, v29, v30);
}

uint64_t sub_100099848()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v1 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A30InternetSharingProviderSession_state;
  if (*(v1 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A30InternetSharingProviderSession_state + 16))
  {
    (*(v3 + 8))(v1 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A30InternetSharingProviderSession_logger, v2);
  }

  else
  {
    (*(v3 + 16))(v6, v1 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A30InternetSharingProviderSession_logger, v2);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "Internet sharing provider session will automatically terminate because it was released", v10, 2u);
    }

    v11 = *(v3 + 8);
    v11(v6, v2);
    sub_100099A64();
    v11((v1 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A30InternetSharingProviderSession_logger), v2);
  }

  v12 = *(v1 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A30InternetSharingProviderSession_sourceInterface + 8);

  v13 = *(v1 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A30InternetSharingProviderSession_destinationInterface + 8);

  v14 = *(v1 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A30InternetSharingProviderSession_stateUpdatedHandler + 8);

  v15 = *(v1 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A30InternetSharingProviderSession_infraInterfaceName + 8);

  sub_100050988(*v7, *(v7 + 8), *(v7 + 16));

  return v1;
}

void sub_100099A64()
{
  v1 = v0 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A30InternetSharingProviderSession_state;
  if (!*(v0 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A30InternetSharingProviderSession_state + 16))
  {
    v2 = *v1;
    if ((_NETRBClientStopService() & 1) == 0)
    {
      v3 = Logger.logObject.getter();
      v4 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v3, v4))
      {
        v5 = swift_slowAlloc();
        *v5 = 0;
        _os_log_impl(&_mh_execute_header, v3, v4, "Failed to stop netrb client service", v5, 2u);
      }
    }

    if ((_NETRBClientDestroy() & 1) == 0)
    {
      v6 = Logger.logObject.getter();
      v7 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        *v8 = 0;
        _os_log_impl(&_mh_execute_header, v6, v7, "Failed to destroy netrb client", v8, 2u);
      }
    }

    v9 = *v1;
    v10 = *(v1 + 8);
    *v1 = xmmword_10047CE70;
    v11 = *(v1 + 16);
    *(v1 + 16) = 2;
    sub_1000993E8(v9, v10, v11);

    sub_100050988(v9, v10, v11);
  }
}

void sub_100099C3C()
{
  v1 = *(*(type metadata accessor for String.Encoding() - 8) + 64);
  __chkstk_darwin();
  v2 = type metadata accessor for DispatchTime();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v6 = &v104[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v8 = &v104[-v7];
  v9 = *(*(type metadata accessor for DispatchTimeInterval() - 8) + 64);
  v10 = __chkstk_darwin();
  v13 = v0 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A30InternetSharingProviderSession_state;
  if (*(v0 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A30InternetSharingProviderSession_state + 16) != 2 || *v13 != 0)
  {
    return;
  }

  v127 = v3;
  v128 = v10;
  v125 = v2;
  v129 = v12;
  v130 = &v104[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  v124 = (v14 + 16);
  v15 = dispatch_semaphore_create(0);
  v16 = *(v0 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A30InternetSharingProviderSession_internetSharingQueue);
  v17 = swift_allocObject();
  swift_weakInit();
  v18 = swift_allocObject();
  v18[2] = v17;
  v18[3] = v14;
  v18[4] = v15;
  aBlock[4] = sub_1000B1DE4;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10009B1FC;
  aBlock[3] = &unk_10055FBE0;
  v19 = _Block_copy(aBlock);

  v20 = v15;

  v21 = _NETRBClientCreate();
  _Block_release(v19);
  if (!v21)
  {
    sub_10009B268(0xD00000000000001DLL, 0x80000001004B8010);
LABEL_16:

    return;
  }

  v126 = v14;
  if (!_NETRBClientSetGlobalServiceState())
  {
    _NETRBClientDestroy();
    sub_10009B268(0xD000000000000025, 0x80000001004B8030);
    goto LABEL_16;
  }

  v121 = v20;
  v122 = v21;
  v22 = v130;
  *v130 = 2;
  (*(v129 + 104))(v22, enum case for DispatchTimeInterval.seconds(_:), v128);
  empty = xpc_dictionary_create_empty();
  v24 = netrbClientInterfaceName;
  if (!netrbClientInterfaceName)
  {
    __break(1u);
    goto LABEL_107;
  }

  v25 = empty;
  v26 = *(v0 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A30InternetSharingProviderSession_destinationInterface + 8);
  v115 = *(v0 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A30InternetSharingProviderSession_destinationInterface);
  v114 = v26;
  v27 = String.utf8CString.getter();
  v120 = v25;
  xpc_dictionary_set_string(v25, v24, (v27 + 32));

  v28 = *(v0 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A30InternetSharingProviderSession_bridgedMode);
  v29 = OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A30InternetSharingProviderSession_logger;
  v123 = v0;
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.default.getter();
  v32 = os_log_type_enabled(v30, v31);
  v116 = v28;
  if (v28 != 1)
  {
    if (v32)
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&_mh_execute_header, v30, v31, "Starting in internet sharing mode", v46, 2u);
    }

    if (netrbClientDeviceType)
    {
      xpc_dictionary_set_uint64(v120, netrbClientDeviceType, 6uLL);
      if (!_NETRBClientStartService())
      {
        goto LABEL_23;
      }

      static DispatchTime.now()();
      + infix(_:_:)();
      v47 = *(v127 + 8);
      v48 = v6;
      v49 = v125;
      v47(v48, v125);
      OS_dispatch_semaphore.wait(timeout:)();
      v47(v8, v49);
      if (static DispatchTimeoutResult.== infix(_:_:)())
      {
        goto LABEL_23;
      }

      v50 = v124;
      swift_beginAccess();
      v51 = 0;
      v52 = 0;
      if (*v50)
      {
LABEL_80:

        v82 = v123;

        v83 = v82;
        v84 = Logger.logObject.getter();
        v85 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v84, v85))
        {
          v86 = swift_slowAlloc();
          v133 = swift_slowAlloc();
          *v86 = 136315394;
          *(v86 + 4) = sub_100002320(v115, v114, &v133);
          *(v86 + 12) = 2080;
          v110 = v51;
          v87 = v51;
          v88 = v52;
          if (!v52)
          {
            v87 = *(v83 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A30InternetSharingProviderSession_sourceInterface);
            v52 = *(v83 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A30InternetSharingProviderSession_sourceInterface + 8);
          }

          v89 = sub_100002320(v87, v52, &v133);

          *(v86 + 14) = v89;
          _os_log_impl(&_mh_execute_header, v84, v85, "Configured infra relay bridge with internal interface %s external interface %s", v86, 0x16u);
          swift_arrayDestroy();

          v22 = v130;
          v52 = v88;
          v51 = v110;
        }

        else
        {
        }

        v90 = v116;
        v91 = *(v83 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A30InternetSharingProviderSession_infraInterfaceName);
        v92 = *(v83 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A30InternetSharingProviderSession_infraInterfaceName + 8);
        if (!v52)
        {
          v51 = *(v83 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A30InternetSharingProviderSession_sourceInterface);
          v52 = *(v83 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A30InternetSharingProviderSession_sourceInterface + 8);
        }

        v93 = v90 ^ 1u;
        if (v91 == v51 && v92 == v52)
        {

          v94 = 0;
        }

        else
        {
          v95 = _stringCompareWithSmolCheck(_:_:expecting:)();

          v94 = 256;
          if (v95)
          {
            v94 = 0;
          }
        }

        v96 = *v13;
        v97 = *(v13 + 8);
        *v13 = v122;
        *(v13 + 8) = v94 | v93;
        v98 = *(v13 + 16);
        *(v13 + 16) = 0;
        sub_1000993E8(v96, v97, v98);
        sub_100050988(v96, v97, v98);

        swift_unknownObjectRelease();
      }

      else
      {
LABEL_23:
        _NETRBClientDestroy();
        v131 = 0;
        v132 = 0xE000000000000000;
        _StringGuts.grow(_:)(40);

        v131 = 0xD000000000000026;
        v132 = 0x80000001004B8060;
        String.append(_:)(*(v123 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A30InternetSharingProviderSession_sourceInterface));
        sub_10009B268(v131, v132);

        swift_unknownObjectRelease();
      }

      (*(v129 + 8))(v22, v128);
      goto LABEL_96;
    }

    goto LABEL_108;
  }

  if (v32)
  {
    v33 = swift_slowAlloc();
    *v33 = 0;
    _os_log_impl(&_mh_execute_header, v30, v31, "Starting in bridged mode", v33, 2u);
  }

  v112 = v29;

  v34 = v123;
  if (!netrbClientDeviceType)
  {
LABEL_107:
    __break(1u);
LABEL_108:
    __break(1u);
    return;
  }

  xpc_dictionary_set_uint64(v120, netrbClientDeviceType, 2uLL);
  v35 = swift_slowAlloc();
  v36 = *(v34 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A30InternetSharingProviderSession_sourceInterface + 8);
  v118 = *(v34 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A30InternetSharingProviderSession_sourceInterface);
  v117 = v36;
  sub_100097200(v118, v36, v35);
  swift_unknownObjectRetain();
  v113 = v35;
  started = _NETRBClientStartService();
  static DispatchTime.now()();
  + infix(_:_:)();
  v39 = v127 + 8;
  v38 = *(v127 + 8);
  v40 = v125;
  v38(v6, v125);
  OS_dispatch_semaphore.wait(timeout:)();
  v127 = v39;
  v111 = v38;
  v38(v8, v40);
  if (static DispatchTimeoutResult.== infix(_:_:)())
  {

    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      aBlock[0] = v44;
      *v43 = 136315138;
      *(v43 + 4) = sub_100002320(v118, v117, aBlock);
      _os_log_impl(&_mh_execute_header, v41, v42, "Timed out while waiting to start the netrb service for %s", v43, 0xCu);
      sub_100002A00(v44);
    }

    v45 = v129;
    v22 = v130;
    swift_unknownObjectRelease();
    goto LABEL_95;
  }

  if (started)
  {
    v53 = v124;
    swift_beginAccess();
    if (*v53 == 1)
    {
      swift_unknownObjectRelease();
      v51 = 0;
      v52 = 0;
      v22 = v130;
      goto LABEL_79;
    }
  }

  v54 = nwi_state_copy();
  v22 = v130;
  v109 = v54;
  if (!v54)
  {
    swift_unknownObjectRelease();
    v45 = v129;
    goto LABEL_95;
  }

  v55 = Logger.logObject.getter();
  v56 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    aBlock[0] = v58;
    *v57 = 136315138;
    *(v57 + 4) = sub_100002320(v118, v117, aBlock);
    _os_log_impl(&_mh_execute_header, v55, v56, "Failed to start the netrb service for %s", v57, 0xCu);
    sub_100002A00(v58);
  }

  nwi_state_get_interface_names();
  v119 = swift_slowAlloc();
  interface_names = nwi_state_get_interface_names();
  if (!interface_names)
  {
    swift_unknownObjectRelease();
    v81 = 0;
    v51 = 0;
    v52 = 0;
    goto LABEL_78;
  }

  v60 = interface_names;
  swift_beginAccess();
  v61 = 0;
  v108 = 0;
  v110 = 0;
  v62 = 0;
  *&v63 = 136315138;
  v107 = v63;
  while (1)
  {
    v64 = v61 + 1;
    if (__OFADD__(v61, 1))
    {
      goto LABEL_100;
    }

    if (v62)
    {
      v22 = v110;
      v56 = v108;
      if (v64 == v60)
      {
        goto LABEL_98;
      }

      goto LABEL_35;
    }

    v65 = *(v119 + 8 * v61);
    if (!v65 || (static String.Encoding.utf8.getter(), v66 = String.init(cString:encoding:)(), !v67))
    {
      if (v64 == v60)
      {
        goto LABEL_75;
      }

      goto LABEL_49;
    }

    v56 = v67;
    v68 = v66 == v118 && v67 == v117;
    if (v68 || (v22 = v66, (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
    {

      v22 = v130;
      if (v64 == v60)
      {
LABEL_75:
        swift_unknownObjectRelease();
        v81 = 0;
        goto LABEL_76;
      }

LABEL_49:
      if (v64 < v60)
      {
        while (1)
        {
          v69 = v64 + 1;
          if (__OFADD__(v64, 1))
          {
            break;
          }

          v65 = *(v119 + 8 * v64);
          if (v65 && (static String.Encoding.utf8.getter(), v70 = String.init(cString:encoding:)(), v71))
          {
            v56 = v71;
            if (v70 != v118 || v71 != v117)
            {
              v22 = v70;
              if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
              {
                ++v64;
                goto LABEL_64;
              }
            }

            v22 = v130;
            if (v69 == v60)
            {
              goto LABEL_75;
            }
          }

          else if (v69 == v60)
          {
            goto LABEL_75;
          }

          ++v64;
          if (v69 >= v60)
          {
            goto LABEL_99;
          }
        }
      }

      else
      {
LABEL_99:
        __break(1u);
      }

LABEL_100:
      __break(1u);
LABEL_101:
      swift_unknownObjectRelease();

      v99 = Logger.logObject.getter();
      v100 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v99, v100))
      {
        v101 = swift_slowAlloc();
        v102 = swift_slowAlloc();
        v133 = v102;
        *v101 = v107;
        v103 = sub_100002320(v22, v56, &v133);

        *(v101 + 4) = v103;
        _os_log_impl(&_mh_execute_header, v99, v100, "Timed out while waiting to start the netrb service for %s", v101, 0xCu);
        sub_100002A00(v102);
      }

      else
      {
      }

      v81 = 0;
      v22 = v130;
LABEL_76:
      v52 = v108;
      v51 = v110;
      goto LABEL_78;
    }

LABEL_64:
    strlcpy(v113, v65, 0x10uLL);
    if (_NETRBClientStartService())
    {
      static DispatchTime.now()();
      + infix(_:_:)();
      v73 = v111;
      v111(v6, v125);
      OS_dispatch_semaphore.wait(timeout:)();
      v73(v8, v125);
      if (static DispatchTimeoutResult.== infix(_:_:)())
      {
        goto LABEL_101;
      }

      if (*v124)
      {

        if (v64 == v60)
        {
LABEL_98:
          swift_unknownObjectRelease();
          v81 = 1;
          v51 = v22;
          v52 = v56;
          v22 = v130;
          goto LABEL_78;
        }

LABEL_35:
        v62 = 1;
        v110 = v22;
        v108 = v56;
LABEL_36:
        v22 = v130;
        goto LABEL_37;
      }
    }

    v74 = Logger.logObject.getter();
    v75 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v74, v75))
    {
      break;
    }

    v22 = v130;
    if (v64 == v60)
    {
      goto LABEL_75;
    }

    v62 = 0;
LABEL_37:
    v61 = v64;
    if (v64 >= v60)
    {
      goto LABEL_99;
    }
  }

  v76 = swift_slowAlloc();
  v105 = v75;
  v77 = v76;
  v106 = swift_slowAlloc();
  v133 = v106;
  *v77 = v107;
  v78 = sub_100002320(v22, v56, &v133);
  v79 = v74;
  v80 = v78;

  *(v77 + 4) = v80;
  _os_log_impl(&_mh_execute_header, v79, v105, "Failed to start the netrb service for %s", v77, 0xCu);
  sub_100002A00(v106);

  if (v64 != v60)
  {
    v62 = 0;
    goto LABEL_36;
  }

  swift_unknownObjectRelease();
  v81 = 0;
  v52 = v108;
  v51 = v110;
  v22 = v130;
LABEL_78:

  nwi_state_release();
  v45 = v129;
  if (v81)
  {
LABEL_79:

    goto LABEL_80;
  }

LABEL_95:
  _NETRBClientDestroy();
  sub_10009B268(0xD00000000000004ALL, 0x80000001004B8090);

  swift_unknownObjectRelease();
  (*(v45 + 8))(v22, v128);
LABEL_96:
}

uint64_t sub_10009AEA8(int a1, void *a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    return 0;
  }

  if (!a2)
  {

    return 0;
  }

  v7 = swift_unknownObjectRetain();
  type = xpc_get_type(v7);
  result = XPC_TYPE_DICTIONARY.getter();
  if (type != result || a1 != 1001)
  {
    goto LABEL_13;
  }

  if (netrbClientNotificationKey)
  {
    v10 = xpc_dictionary_get_value(a2, netrbClientNotificationKey);
    if (v10)
    {
      v11 = v10;
      v12 = xpc_get_type(v10);
      if (v12 == XPC_TYPE_UINT64.getter())
      {
        value = xpc_uint64_get_value(v11);
        swift_beginAccess();
        *(a4 + 16) = value == 5002;
        if (value == 5002)
        {
          v17 = Logger.logObject.getter();
          v18 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v17, v18))
          {
            v19 = swift_slowAlloc();
            *v19 = 0;
            _os_log_impl(&_mh_execute_header, v17, v18, "Successfully configured infra relay bridge service", v19, 2u);
LABEL_21:
          }

LABEL_22:

          OS_dispatch_semaphore.signal()();

          swift_unknownObjectRelease();
          goto LABEL_14;
        }
      }

      else
      {
        swift_beginAccess();
        *(a4 + 16) = 0;
      }

      swift_unknownObjectRetain();
      v17 = Logger.logObject.getter();
      v20 = static os_log_type_t.error.getter();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(v17, v20))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v26 = v22;
        *v21 = 136315138;
        xpc_copy_description(v11);
        v23 = String.init(cString:)();
        v25 = sub_100002320(v23, v24, &v26);

        *(v21 + 4) = v25;
        _os_log_impl(&_mh_execute_header, v17, v20, "Failed to start infra relay bridge service with error %s", v21, 0xCu);
        sub_100002A00(v22);

        goto LABEL_21;
      }

      goto LABEL_22;
    }

    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "Failed to get value from NETRB client", v15, 2u);
    }

    swift_beginAccess();
    *(a4 + 16) = 0;
    OS_dispatch_semaphore.signal()();
LABEL_13:

LABEL_14:
    swift_unknownObjectRelease();
    return 0;
  }

  __break(1u);
  return result;
}

uint64_t sub_10009B1FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  swift_unknownObjectRetain();
  v7 = v6(a2, a3);

  swift_unknownObjectRelease();
  return v7;
}

uint64_t sub_10009B268(uint64_t a1, unint64_t a2)
{
  v3 = v2;

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_100002320(a1, a2, &v15);
    _os_log_impl(&_mh_execute_header, v6, v7, "Tearing down infra relay bridge because: %s", v8, 0xCu);
    sub_100002A00(v9);
  }

  sub_100099A64();
  v10 = v3 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A30InternetSharingProviderSession_state;
  v11 = *(v3 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A30InternetSharingProviderSession_state);
  v12 = *(v3 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A30InternetSharingProviderSession_state + 8);
  *v10 = a1;
  *(v10 + 8) = a2;
  v13 = *(v10 + 16);
  *(v10 + 16) = 1;

  sub_1000993E8(v11, v12, v13);

  return sub_100050988(v11, v12, v13);
}

uint64_t sub_10009B3DC()
{
  v1 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v10 = *(v1 - 8);
  v11 = v1;
  v2 = *(v10 + 64);
  __chkstk_darwin();
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(*(type metadata accessor for OS_dispatch_queue.Attributes() - 8) + 64);
  __chkstk_darwin();
  v6 = *(*(type metadata accessor for DispatchQoS() - 8) + 64);
  __chkstk_darwin();
  v9[2] = sub_100018AB4(0, &qword_10058AC60, OS_dispatch_queue_ptr);
  if (qword_10058AA28 != -1)
  {
    swift_once();
  }

  v9[1] = "g for network path to satisfy";
  v7 = static OS_dispatch_queue.nan;
  static DispatchQoS.unspecified.getter();
  v12 = _swiftEmptyArrayStorage;
  sub_10001F8F4(&qword_10058AC68, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_10005DC58(&qword_10058AC70, &qword_1004AE1F0);
  sub_10000CADC(&qword_10058AC78, &qword_10058AC70, &qword_1004AE1F0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v10 + 104))(v4, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v11);
  *(v0 + 16) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v0 + 24) = 0;
  *(v0 + 32) = 2;
  *(v0 + 40) = NANBitmap.Channel.operatingClass.getter;
  *(v0 + 48) = 0;
  Logger.init(subsystem:category:)();
  return v0;
}

uint64_t sub_10009B6FC()
{
  if (*(v0 + 24))
  {
    sub_10009C6A8();
  }

  v1 = *(v0 + 24);

  v2 = *(v0 + 48);

  v3 = OBJC_IVAR____TtCCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A31InternetSharingRequesterSession26NetworkConnectivityMonitor_logger;
  v4 = type metadata accessor for Logger();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void sub_10009B7BC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v2 + 24);
  oslog = Logger.logObject.getter();
  if (v6)
  {
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v7, "Already monitoring network path status", v8, 2u);
    }

    return;
  }

  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v9, "Start monitoring network path status", v10, 2u);
  }

  v11 = nw_parameters_create();
  v12 = sub_1000972AC(a1, a2);
  nw_parameters_require_interface(v11, v12);
  swift_unknownObjectRelease();
  evaluator_for_endpoint = nw_path_create_evaluator_for_endpoint();
  if (!evaluator_for_endpoint)
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = evaluator_for_endpoint;
  v15 = *(v3 + 16);
  v16 = swift_allocObject();
  swift_weakInit();
  v17 = swift_allocObject();
  v17[2] = v16;
  v17[3] = a1;
  v17[4] = a2;
  type metadata accessor for AppleDevice.NetworkPathMonitor();
  v18 = swift_allocObject();
  *(v18 + 16) = v14;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_1000B1800;
  *(v19 + 24) = v17;
  aBlock[4] = sub_1000B2C08;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000991C0;
  aBlock[3] = &unk_10055F398;
  v20 = _Block_copy(aBlock);
  v21 = v15;
  swift_unknownObjectRetain_n();
  v22 = v21;

  nw_path_evaluator_set_update_handler();
  _Block_release(v20);
  swift_unknownObjectRelease();

  nw_path_evaluator_start();
  swift_unknownObjectRelease();

  v23 = *(v3 + 24);
  *(v3 + 24) = v18;

  v24 = *(v18 + 16);

  v25 = nw_path_evaluator_copy_path();
  if (!v25)
  {
LABEL_15:
    __break(1u);
    return;
  }

  status = nw_path_get_status(v25);

  swift_unknownObjectRelease();
  if (status != *(v3 + 32))
  {
    *(v3 + 32) = status;
    v28 = *(v3 + 40);
    v27 = *(v3 + 48);

    v28(status == nw_path_status_satisfied);
  }

  swift_unknownObjectRelease();
}

uint64_t sub_10009BB68@<X0>(uint64_t *a1@<X8>)
{
  result = nw_interface_create_with_name();
  *a1 = result;
  return result;
}

void sub_10009BB98(NSObject *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v8 = Strong;
  status = nw_path_get_status(a1);
  v80 = 0;
  if (getifaddrs(&v80))
  {
    v77 = 1;
    v78 = 0;
    goto LABEL_18;
  }

  v10 = v80;
  if (!v80)
  {
LABEL_5:
    v77 = 1;
    v78 = 0;
    goto LABEL_17;
  }

  while (1)
  {
    if (!v10->ifa_name)
    {
      goto LABEL_118;
    }

    ifa_addr = v10->ifa_addr;
    v10 = v10->ifa_next;
    v13 = String.init(cString:)() == a3 && v12 == a4;
    if (!v13 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {

      goto LABEL_7;
    }

    if (!ifa_addr)
    {
      goto LABEL_119;
    }

    if (ifa_addr->sa_family == 2)
    {
      break;
    }

LABEL_7:
    if (!v10)
    {
      goto LABEL_5;
    }
  }

  v77 = 0;
  v78 = *&ifa_addr->sa_data[2];
LABEL_17:
  freeifaddrs(v80);
LABEL_18:
  v80 = 0;

  if (getifaddrs(&v80))
  {
    v14 = _swiftEmptyArrayStorage;
  }

  else
  {
    v15 = v80;
    if (v80)
    {
      v14 = _swiftEmptyArrayStorage;
      while (v15->ifa_name)
      {
        v17 = v15->ifa_addr;
        v15 = v15->ifa_next;
        v19 = String.init(cString:)() == a3 && v18 == a4;
        if (v19 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          if (!v17)
          {
            goto LABEL_117;
          }

          if (v17->sa_family == 30)
          {
            v22 = &v17->sa_data[6];
            v21 = *&v17->sa_data[6];
            v20 = *(v22 + 1);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v14 = sub_100116970(0, *(v14 + 2) + 1, 1, v14);
            }

            v24 = *(v14 + 2);
            v23 = *(v14 + 3);
            if (v24 >= v23 >> 1)
            {
              v14 = sub_100116970((v23 > 1), v24 + 1, 1, v14);
            }

            *(v14 + 2) = v24 + 1;
            v16 = &v14[32 * v24];
            *(v16 + 4) = v21;
            *(v16 + 5) = v20;
            *(v16 + 6) = 0;
            *(v16 + 7) = 0;
          }

          if (!v15)
          {
LABEL_37:
            v25 = v80;
            goto LABEL_39;
          }
        }

        else
        {

          if (!v15)
          {
            goto LABEL_37;
          }
        }
      }

      __break(1u);
LABEL_117:
      __break(1u);
LABEL_118:
      __break(1u);
LABEL_119:
      __break(1u);
    }

    v25 = 0;
    v14 = _swiftEmptyArrayStorage;
LABEL_39:
    freeifaddrs(v25);
  }

  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.info.getter();

  if (!os_log_type_enabled(v26, v27))
  {

    if (status == nw_path_status_satisfied)
    {
      goto LABEL_58;
    }

    goto LABEL_46;
  }

  v28 = swift_slowAlloc();
  v80 = swift_slowAlloc();
  *v28 = 136315650;
  v75 = v8;
  if (status > nw_path_status_satisfied)
  {
    if (status == nw_path_status_unsatisfied)
    {
      v29 = 0x6673697461736E75;
      v31 = 6579561;
    }

    else
    {
      if (status != nw_path_status_satisfiable)
      {
        goto LABEL_50;
      }

      v29 = 0x6169667369746173;
      v31 = 6646882;
    }

    v30 = v31 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
  }

  else if (status)
  {
    if (status == nw_path_status_satisfied)
    {
      v29 = 0x6569667369746173;
      v30 = 0xE900000000000064;
      goto LABEL_54;
    }

LABEL_50:
    v30 = 0xE700000000000000;
    v29 = 0x6E776F6E6B6E75;
  }

  else
  {
    v29 = 0x64696C61766E69;
    v30 = 0xE700000000000000;
  }

LABEL_54:
  v32 = sub_100002320(v29, v30, &v80);

  *(v28 + 4) = v32;
  *(v28 + 12) = 2080;
  if (v77)
  {
    v33 = 0;
  }

  else
  {
    v33 = v78;
  }

  v34 = swift_slowAlloc();
  v79 = v33;
  inet_ntop(2, &v79, v34, 0x10u);
  v35 = String.init(cString:)();
  v37 = v36;

  v38 = sub_100002320(v35, v37, &v80);

  *(v28 + 14) = v38;
  *(v28 + 22) = 2080;
  v39 = Array.description.getter();
  v41 = sub_100002320(v39, v40, &v80);

  *(v28 + 24) = v41;
  _os_log_impl(&_mh_execute_header, v26, v27, "Path became %s with ipv4: %s, ipv6: %s", v28, 0x20u);
  swift_arrayDestroy();

  v8 = v75;
  if (status != nw_path_status_satisfied)
  {
LABEL_46:

    goto LABEL_66;
  }

LABEL_58:
  v42 = v77;
  if (v78 == 65193)
  {
    v42 = 1;
  }

  if (v42)
  {
    v43 = *(v14 + 2) + 1;
    v44 = 32;
    while (--v43)
    {
      v45 = *&v14[v44];
      if (v45 == 254)
      {
        v44 += 32;
        if ((v45 & 0xC000) == 0x8000)
        {
          continue;
        }
      }

      goto LABEL_65;
    }

    status = nw_path_status_unsatisfied;
  }

  else
  {
LABEL_65:

    status = nw_path_status_satisfied;
  }

LABEL_66:
  if (*(v8 + 32) != status)
  {

    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.default.getter();

    if (!os_log_type_enabled(v53, v54))
    {

LABEL_107:
      *(v8 + 32) = status;
      v69 = *(v8 + 40);
      v68 = *(v8 + 48);

      v69(status == nw_path_status_satisfied);

      if (*(v8 + 32) == 1)
      {
        if (qword_10058A758 != -1)
        {
          swift_once();
        }

        v70 = qword_10058BC80;
        v71 = String._bridgeToObjectiveC()();
        [v70 setLinkEvent:1 isInvoluntary:1 linkChangeReason:0 linkChangeSubreason:0 withNetworkDetails:0 forInterface:v71];

        v72 = String._bridgeToObjectiveC()();
        [v70 notifyInterfaceRankingState:1 forInterface:v72];
      }

      else
      {
        if (qword_10058A758 != -1)
        {
          swift_once();
        }

        v73 = qword_10058BC80;
        v74 = String._bridgeToObjectiveC()();
        [v73 notifyInterfaceRankingState:0 forInterface:v74];

        v72 = String._bridgeToObjectiveC()();
        [v73 setLinkEvent:0 isInvoluntary:1 linkChangeReason:0 linkChangeSubreason:0 withNetworkDetails:0 forInterface:v72];
      }

      return;
    }

    v55 = status;
    v56 = 0x64696C61766E69;
    v57 = swift_slowAlloc();
    v80 = swift_slowAlloc();
    *v57 = 136315650;
    *(v57 + 4) = sub_100002320(a3, a4, &v80);
    *(v57 + 12) = 2080;
    v58 = *(v8 + 32);
    v76 = v8;
    if (v58 > 1)
    {
      if (v58 == 2)
      {
        v59 = 0x6673697461736E75;
        v62 = 6579561;
      }

      else
      {
        if (v58 != 3)
        {
LABEL_86:
          v60 = 0xE700000000000000;
          v59 = 0x6E776F6E6B6E75;
          goto LABEL_95;
        }

        v59 = 0x6169667369746173;
        v62 = 6646882;
      }

      v60 = v62 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
    }

    else
    {
      if (v58)
      {
        if (v58 == 1)
        {
          v59 = 0x6569667369746173;
          v60 = 0xE900000000000064;
          goto LABEL_95;
        }

        goto LABEL_86;
      }

      v60 = 0xE700000000000000;
      v59 = 0x64696C61766E69;
    }

LABEL_95:
    v64 = sub_100002320(v59, v60, &v80);

    *(v57 + 14) = v64;
    *(v57 + 22) = 2080;
    if (v55 <= 1)
    {
      if (!v55)
      {
        v65 = 0xE700000000000000;
        goto LABEL_106;
      }

      if (v55 == 1)
      {
        v56 = 0x6569667369746173;
        v65 = 0xE900000000000064;
LABEL_106:
        v67 = sub_100002320(v56, v65, &v80);

        *(v57 + 24) = v67;
        _os_log_impl(&_mh_execute_header, v53, v54, "Network path status on %s changed from %s to %s", v57, 0x20u);
        swift_arrayDestroy();

        v8 = v76;
        status = v55;
        goto LABEL_107;
      }

LABEL_102:
      v65 = 0xE700000000000000;
      v56 = 0x6E776F6E6B6E75;
      goto LABEL_106;
    }

    if (v55 == 2)
    {
      v56 = 0x6673697461736E75;
      v66 = 6579561;
    }

    else
    {
      if (v55 != 3)
      {
        goto LABEL_102;
      }

      v56 = 0x6169667369746173;
      v66 = 6646882;
    }

    v65 = v66 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
    goto LABEL_106;
  }

  v46 = Logger.logObject.getter();
  v47 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v80 = v49;
    *v48 = 136315138;
    v50 = *(v8 + 32);
    if (v50 > 1)
    {
      if (v50 == 2)
      {
        v51 = 0x6673697461736E75;
        v61 = 6579561;
      }

      else
      {
        if (v50 != 3)
        {
          goto LABEL_85;
        }

        v51 = 0x6169667369746173;
        v61 = 6646882;
      }

      v52 = v61 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
    }

    else if (v50)
    {
      if (v50 == 1)
      {
        v51 = 0x6569667369746173;
        v52 = 0xE900000000000064;
        goto LABEL_91;
      }

LABEL_85:
      v52 = 0xE700000000000000;
      v51 = 0x6E776F6E6B6E75;
    }

    else
    {
      v51 = 0x64696C61766E69;
      v52 = 0xE700000000000000;
    }

LABEL_91:
    v63 = sub_100002320(v51, v52, &v80);

    *(v48 + 4) = v63;
    _os_log_impl(&_mh_execute_header, v46, v47, "Ignoring path status update when %s", v48, 0xCu);
    sub_100002A00(v49);
  }
}

void sub_10009C6A8()
{
  v1 = v0;
  v2 = *(v0 + 24);
  oslog = Logger.logObject.getter();
  if (v2)
  {
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v3, "Stop monitoring network path status", v4, 2u);
    }

    *(v1 + 32) = 2;
    v5 = *(v1 + 24);
    *(v1 + 24) = 0;
  }

  else
  {
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v6, "Already stopped monitoring network path status", v7, 2u);
    }
  }
}

uint64_t sub_10009C804()
{
  if (*(v0 + 16))
  {
    if (*(v0 + 16) == 1)
    {
      return 0x6961462050434844;
    }

    else if (*v0 == 0)
    {
      return 0x72756769666E6F43;
    }

    else
    {
      return 0x74616E696D726554;
    }
  }

  else
  {
    v2 = 0x6673697461736E55;
    if (*v0)
    {
      v2 = 0x6569667369746153;
    }

    v4 = v2;

    v3._countAndFlagsBits = 0x7473657571655220;
    v3._object = 0xEA00000000007265;
    String.append(_:)(v3);

    return v4;
  }
}

id sub_10009C91C()
{
  result = [objc_opt_self() sharedInstance];
  qword_10058BC80 = result;
  return result;
}

uint64_t sub_10009C958(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  sub_1000509F8(a1, a2, a3);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  sub_100050988(a1, a2, a3);

  if (os_log_type_enabled(v8, v9))
  {
    v10 = 0x6961462050434844;
    v11 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    *v11 = 136315394;
    if (a3)
    {
      if (a3 == 1)
      {
        v12 = 0xEB0000000064656CLL;
        v13 = 0x6961462050434844;
      }

      else
      {
        if (a1 | a2)
        {
          v13 = 0x74616E696D726554;
        }

        else
        {
          v13 = 0x72756769666E6F43;
        }

        if (a1 | a2)
        {
          v12 = 0xEA00000000006465;
        }

        else
        {
          v12 = 0xEB00000000676E69;
        }
      }
    }

    else
    {
      v14 = 0x6673697461736E55;
      if (a1)
      {
        v14 = 0x6569667369746153;
        v15 = 0xE900000000000064;
      }

      else
      {
        v15 = 0xEB00000000646569;
      }

      v40 = v14;
      v41 = v15;

      v16._countAndFlagsBits = 0x7473657571655220;
      v16._object = 0xEA00000000007265;
      String.append(_:)(v16);

      v13 = v40;
      v12 = v15;
    }

    v17 = sub_100002320(v13, v12, &v42);

    *(v11 + 4) = v17;
    *(v11 + 12) = 2080;
    v18 = v4 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A31InternetSharingRequesterSession_state;
    v19 = *(v4 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A31InternetSharingRequesterSession_state);
    if (*(v4 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A31InternetSharingRequesterSession_state + 16))
    {
      if (*(v4 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A31InternetSharingRequesterSession_state + 16) == 1)
      {
        v20 = 0xEB0000000064656CLL;
      }

      else
      {
        if (v19 | *(v18 + 8))
        {
          v10 = 0x74616E696D726554;
        }

        else
        {
          v10 = 0x72756769666E6F43;
        }

        if (v19 | *(v18 + 8))
        {
          v20 = 0xEA00000000006465;
        }

        else
        {
          v20 = 0xEB00000000676E69;
        }
      }
    }

    else
    {
      v21 = (v19 & 1) == 0;
      v22 = 0x6673697461736E55;
      if (v21)
      {
        v23 = 0xEB00000000646569;
      }

      else
      {
        v22 = 0x6569667369746153;
        v23 = 0xE900000000000064;
      }

      v40 = v22;
      v41 = v23;

      v24._countAndFlagsBits = 0x7473657571655220;
      v24._object = 0xEA00000000007265;
      String.append(_:)(v24);

      v10 = v40;
      v20 = v41;
    }

    v25 = sub_100002320(v10, v20, &v42);

    *(v11 + 14) = v25;
    _os_log_impl(&_mh_execute_header, v8, v9, "Requester state changed: %s -> %s", v11, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v26 = v4 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A31InternetSharingRequesterSession_state;
  v27 = *(v4 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A31InternetSharingRequesterSession_state);
  v28 = *(v4 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A31InternetSharingRequesterSession_state + 8);
  v29 = *(v4 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A31InternetSharingRequesterSession_state + 16);
  if (v29 == 1)
  {

    sub_1000509F8(v27, v28, 1);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      *v32 = 136315394;
      *(v32 + 4) = sub_100002320(*(v4 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A31InternetSharingRequesterSession_interface), *(v4 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A31InternetSharingRequesterSession_interface + 8), &v40);
      *(v32 + 12) = 2080;
      v33 = sub_100002320(v27, v28, &v40);
      sub_100050988(v27, v28, 1);
      *(v32 + 14) = v33;
      _os_log_impl(&_mh_execute_header, v30, v31, "Requester DHCP failed on %s because %s", v32, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_100050988(v27, v28, 1);
    }

    v34 = *(v4 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A31InternetSharingRequesterSession_interface);
    v35 = *(v4 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A31InternetSharingRequesterSession_interface + 8);

    sub_1000AF710(v34, v35, 0);

    v27 = *v26;
    v28 = *(v26 + 8);
    v29 = *(v26 + 16);
  }

  v36 = v4 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A31InternetSharingRequesterSession_stateUpdatedHandler;
  v37 = *(v4 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A31InternetSharingRequesterSession_stateUpdatedHandler);
  v38 = *(v36 + 8);
  sub_1000509F8(v27, v28, v29);
  v37(v27, v28, v29);

  return sub_100050988(v27, v28, v29);
}

void sub_10009CEB8()
{
  v1 = v0 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A31InternetSharingRequesterSession_state;
  if (!*(v0 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A31InternetSharingRequesterSession_state + 16))
  {
    v2 = v0;
    v3 = *(v0 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A31InternetSharingRequesterSession_networkConnectivityMonitor);
    sub_10009C6A8();
    v4 = *(v2 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A31InternetSharingRequesterSession_interface);
    v5 = *(v2 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A31InternetSharingRequesterSession_interface + 8);

    sub_1000AF710(v4, v5, 0);

    v6 = *v1;
    v7 = *(v1 + 8);
    *v1 = xmmword_10047CE70;
    v8 = *(v1 + 16);
    *(v1 + 16) = 2;
    sub_10009C958(v6, v7, v8);

    sub_100050988(v6, v7, v8);
  }
}

uint64_t sub_10009CFAC()
{
  v1 = v0;
  v2 = v0 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A31InternetSharingRequesterSession_state;
  if (!*(v0 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A31InternetSharingRequesterSession_state + 16))
  {
    v3 = *(v0 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A31InternetSharingRequesterSession_networkConnectivityMonitor);
    sub_10009C6A8();
    v4 = *(v1 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A31InternetSharingRequesterSession_interface);
    v5 = *(v1 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A31InternetSharingRequesterSession_interface + 8);

    sub_1000AF710(v4, v5, 0);

    v6 = *v2;
    v7 = *(v2 + 8);
    *v2 = xmmword_10047CE70;
    v8 = *(v2 + 16);
    *(v2 + 16) = 2;
    sub_10009C958(v6, v7, v8);
    sub_100050988(v6, v7, v8);
  }

  v9 = OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A31InternetSharingRequesterSession_logger;
  v10 = type metadata accessor for Logger();
  (*(*(v10 - 8) + 8))(v1 + v9, v10);
  v11 = *(v1 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A31InternetSharingRequesterSession_interface + 8);

  v12 = *(v1 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A31InternetSharingRequesterSession_stateUpdatedHandler + 8);

  v13 = *(v1 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A31InternetSharingRequesterSession_networkConnectivityMonitor);

  sub_100050988(*v2, *(v2 + 8), *(v2 + 16));
  v14 = *(*v1 + 48);
  v15 = *(*v1 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_10009D140(const __SCPreferences *a1, uint64_t a2, void *a3)
{
  v6 = String._bridgeToObjectiveC()();
  v7 = _SCNetworkInterfaceCreateWithBSDName();

  if (v7)
  {
    v8 = SCNetworkServiceCopyAll(a1);
    if (v8)
    {
      v9 = v8;
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        type metadata accessor for SCNetworkService(0);
        static Array._conditionallyBridgeFromObjectiveC(_:result:)();
      }
    }

    return 0;
  }

  else
  {
    _StringGuts.grow(_:)(42);

    v12 = 0xD000000000000028;
    v13 = 0x80000001004B7E60;
    v10._countAndFlagsBits = a2;
    v10._object = a3;
    String.append(_:)(v10);
    return 0;
  }
}

uint64_t sub_10009D794()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A31InternetSharingRequesterSession_state;
    if (!*(result + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A31InternetSharingRequesterSession_state + 16))
    {
      v2 = *v1;
      if ((*v1 & 1) == 0)
      {
        v3 = *(v1 + 8);
        *v1 = 0xD00000000000002DLL;
        *(v1 + 8) = 0x80000001004B7F90;
        *(v1 + 16) = 1;
        sub_10009C958(v2, v3, 0);
      }
    }
  }

  return result;
}

uint64_t sub_10009D834(char a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A31InternetSharingRequesterSession_state;
    if (!*(result + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A31InternetSharingRequesterSession_state + 16))
    {
      v4 = *v3;
      if (*v3)
      {
        if ((a1 & 1) == 0)
        {
          sub_10009CEB8();
          v5 = *v3;
          v6 = *(v3 + 8);
          *v3 = 0xD000000000000018;
          *(v3 + 8) = 0x80000001004B7F70;
          v7 = *(v3 + 16);
          *(v3 + 16) = 1;
          sub_10009C958(v5, v6, v7);
          sub_100050988(v5, v6, v7);
        }
      }

      else if (a1)
      {
        v8 = *(v3 + 8);
        *v3 = xmmword_10047CE70;
        *(v3 + 16) = 0;
        sub_10009C958(v4, v8, 0);
      }
    }
  }

  return result;
}

uint64_t sub_10009D934(uint64_t a1)
{
  v2 = v1;
  Logger.init(subsystem:category:)();
  v4 = OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A14GatewayMonitor_monitor;
  *(v1 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A14GatewayMonitor_monitor) = 0;
  RoutingSocket.init()(v1 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A14GatewayMonitor_routingSocket);
  v5 = v1 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A14GatewayMonitor_lastGatewayIPAddress;
  *v5 = 0u;
  *(v5 + 16) = 0u;
  *(v5 + 32) = -1;
  v6 = v1 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A14GatewayMonitor_lastGatewayAddress;
  *(v6 + 4) = 0;
  *v6 = 0;
  *(v6 + 6) = 1;
  v7 = OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A14GatewayMonitor_lastGatewayUpdate;
  v8 = type metadata accessor for DispatchTime();
  (*(*(v8 - 8) + 56))(v2 + v7, 1, 1, v8);
  v9 = nw_parameters_create();
  v10 = *(a1 + 16);
  v11 = *(a1 + 24);

  v12 = sub_1000972AC(v10, v11);

  nw_parameters_require_interface(v9, v12);
  swift_unknownObjectRelease();
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "Start monitoring network path for gateway address updates", v15, 2u);
  }

  result = nw_path_create_evaluator_for_endpoint();
  if (result)
  {
    v17 = result;
    v27 = v4;
    if (qword_10058AA38 != -1)
    {
      swift_once();
    }

    v18 = static OS_dispatch_queue.p2p;
    v19 = swift_allocObject();
    swift_weakInit();
    v20 = swift_allocObject();
    *(v20 + 16) = v19;
    *(v20 + 24) = a1;
    type metadata accessor for AppleDevice.NetworkPathMonitor();
    v21 = swift_allocObject();
    *(v21 + 16) = v17;
    v22 = swift_allocObject();
    *(v22 + 16) = sub_1000B1C30;
    *(v22 + 24) = v20;
    aBlock[4] = sub_1000B2C08;
    aBlock[5] = v22;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000991C0;
    aBlock[3] = &unk_10055F8C0;
    v23 = _Block_copy(aBlock);
    v24 = v18;
    swift_unknownObjectRetain_n();
    v25 = v24;

    nw_path_evaluator_set_update_handler();
    _Block_release(v23);
    swift_unknownObjectRelease();

    nw_path_evaluator_start();

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    v26 = *(v2 + v27);
    *(v2 + v27) = v21;

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10009DD00(uint64_t a1)
{
  v2 = v1;
  Logger.init(subsystem:category:)();
  v4 = OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A14GatewayMonitor_monitor;
  *(v1 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A14GatewayMonitor_monitor) = 0;
  RoutingSocket.init()(v1 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A14GatewayMonitor_routingSocket);
  v5 = v1 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A14GatewayMonitor_lastGatewayIPAddress;
  *v5 = 0u;
  *(v5 + 16) = 0u;
  *(v5 + 32) = -1;
  v6 = v1 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A14GatewayMonitor_lastGatewayAddress;
  *(v6 + 4) = 0;
  *v6 = 0;
  *(v6 + 6) = 1;
  v7 = OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A14GatewayMonitor_lastGatewayUpdate;
  v8 = type metadata accessor for DispatchTime();
  (*(*(v8 - 8) + 56))(v2 + v7, 1, 1, v8);
  v9 = nw_parameters_create();
  v10 = *(a1 + 16);
  v11 = *(a1 + 24);

  v12 = sub_1000972AC(v10, v11);

  nw_parameters_require_interface(v9, v12);
  swift_unknownObjectRelease();
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "Start monitoring network path for gateway address updates", v15, 2u);
  }

  result = nw_path_create_evaluator_for_endpoint();
  if (result)
  {
    v17 = result;
    v27 = v4;
    if (qword_10058AA38 != -1)
    {
      swift_once();
    }

    v18 = static OS_dispatch_queue.p2p;
    v19 = swift_allocObject();
    swift_weakInit();
    v20 = swift_allocObject();
    *(v20 + 16) = v19;
    *(v20 + 24) = a1;
    type metadata accessor for AppleDevice.NetworkPathMonitor();
    v21 = swift_allocObject();
    *(v21 + 16) = v17;
    v22 = swift_allocObject();
    *(v22 + 16) = sub_1000B1B44;
    *(v22 + 24) = v20;
    aBlock[4] = sub_1000B2C08;
    aBlock[5] = v22;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000991C0;
    aBlock[3] = &unk_10055F528;
    v23 = _Block_copy(aBlock);
    v24 = v18;
    swift_unknownObjectRetain_n();
    v25 = v24;

    nw_path_evaluator_set_update_handler();
    _Block_release(v23);
    swift_unknownObjectRelease();

    nw_path_evaluator_start();

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    v26 = *(v2 + v27);
    *(v2 + v27) = v21;

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10009E0CC(NSObject *a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result;

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      aBlock[0] = v10;
      *v9 = 136315138;
      v11 = *(a3 + 16);
      v12 = *(a3 + 24);

      v13 = sub_100002320(v11, v12, aBlock);

      *(v9 + 4) = v13;
      _os_log_impl(&_mh_execute_header, v7, v8, "Network path for interface %s was updated", v9, 0xCu);
      sub_100002A00(v10);
    }

    else
    {
    }

    v14 = swift_allocObject();
    *(v14 + 16) = v6;
    *(v14 + 24) = a3;
    v15 = swift_allocObject();
    *(v15 + 16) = sub_1000B1C38;
    *(v15 + 24) = v14;
    aBlock[4] = sub_1000B2C10;
    aBlock[5] = v15;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000A08B8;
    aBlock[3] = &unk_10055F938;
    v16 = _Block_copy(aBlock);

    nw_path_enumerate_gateways(a1, v16);

    _Block_release(v16);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_10009E35C(NSObject *a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result;

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      aBlock[0] = v10;
      *v9 = 136315138;
      v11 = *(a3 + 16);
      v12 = *(a3 + 24);

      v13 = sub_100002320(v11, v12, aBlock);

      *(v9 + 4) = v13;
      _os_log_impl(&_mh_execute_header, v7, v8, "Network path for interface %s was updated", v9, 0xCu);
      sub_100002A00(v10);
    }

    else
    {
    }

    v14 = swift_allocObject();
    *(v14 + 16) = v6;
    *(v14 + 24) = a3;
    v15 = swift_allocObject();
    *(v15 + 16) = sub_1000B2A14;
    *(v15 + 24) = v14;
    aBlock[4] = sub_1000B1B4C;
    aBlock[5] = v15;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000A08B8;
    aBlock[3] = &unk_10055F5A0;
    v16 = _Block_copy(aBlock);

    nw_path_enumerate_gateways(a1, v16);

    _Block_release(v16);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_10009E5EC(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v35 = a1;
  v8 = *(a4 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin();
  __chkstk_darwin();
  v11 = &v29 - v10;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v13 = result;
    v33 = a3;
    v34 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    v32 = *(v8 + 16);
    v32(v11, a3, a4);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v29 = v16;
      v31 = swift_slowAlloc();
      aBlock[0] = v31;
      *v16 = 136315138;
      v17 = a5;
      v18 = *(*(a5 + 16) + 40);
      v30 = v15;
      v19 = v18(a4);
      v21 = v20;
      (*(v8 + 8))(v11, a4);
      v22 = sub_100002320(v19, v21, aBlock);
      a5 = v17;

      v23 = v29;
      *(v29 + 1) = v22;
      _os_log_impl(&_mh_execute_header, v14, v30, "Network path for interface %s was updated", v23, 0xCu);
      sub_100002A00(v31);
    }

    else
    {

      (*(v8 + 8))(v11, a4);
    }

    v24 = v34;
    v32(v34, v33, a4);
    v25 = (*(v8 + 80) + 40) & ~*(v8 + 80);
    v26 = swift_allocObject();
    *(v26 + 2) = a4;
    *(v26 + 3) = a5;
    *(v26 + 4) = v13;
    (*(v8 + 32))(&v26[v25], v24, a4);
    v27 = swift_allocObject();
    *(v27 + 16) = sub_1000B1F28;
    *(v27 + 24) = v26;
    aBlock[4] = sub_1000B2C10;
    aBlock[5] = v27;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000A08B8;
    aBlock[3] = &unk_10055FCD0;
    v28 = _Block_copy(aBlock);

    nw_path_enumerate_gateways(v35, v28);

    _Block_release(v28);
    LOBYTE(v28) = swift_isEscapingClosureAtFileLocation();

    if (v28)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_10009E9D4(NSObject *a1, uint64_t a2, void *a3)
{
  v106 = a3;
  v5 = *(*(sub_10005DC58(&qword_10058BC88, &unk_1004818B0) - 8) + 64);
  __chkstk_darwin();
  v111 = &v94 - v6;
  v110 = type metadata accessor for RoutingSocket();
  v109 = *(v110 - 8);
  v7 = *(v109 + 64);
  __chkstk_darwin();
  v112 = &v94 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchTimeInterval();
  v107 = *(v9 - 8);
  v10 = *(v107 + 64);
  __chkstk_darwin();
  v12 = &v94 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v14 = &v94 - v13;
  __chkstk_darwin();
  v16 = &v94 - v15;
  v17 = *(*(sub_10005DC58(&unk_100597330, &unk_100481FA0) - 8) + 64);
  __chkstk_darwin();
  v104 = &v94 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v20 = &v94 - v19;
  v21 = type metadata accessor for DispatchTime();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  __chkstk_darwin();
  v25 = &v94 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v108 = &v94 - v26;
  address = nw_endpoint_get_address(a1);
  if (address->sa_family != 2)
  {
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&_mh_execute_header, v30, v31, "Currently support gateway IP address translation for IPv4 only", v32, 2u);
    }

    return 0;
  }

  v105 = *&address->sa_data[2];
  v124[0] = v105;
  memset(&v124[1], 0, 24);
  v125 = 0;
  v28 = OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A14GatewayMonitor_lastGatewayUpdate;
  swift_beginAccess();
  v102 = v28;
  sub_100012400(a2 + v28, v20, &unk_100597330, &unk_100481FA0);
  v29 = v22;
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    sub_100016290(v20, &unk_100597330, &unk_100481FA0);
LABEL_12:
    v46 = v105;
    v48 = v111;
    v47 = v112;
    goto LABEL_13;
  }

  v33 = *(v22 + 32);
  v34 = v108;
  v33(v108, v20, v21);
  v35 = (a2 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A14GatewayMonitor_lastGatewayIPAddress);
  v36 = *(a2 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A14GatewayMonitor_lastGatewayIPAddress + 32);
  if (v36 == 255)
  {
    (*(v29 + 8))(v34, v21);
    goto LABEL_12;
  }

  v103 = v21;
  v101 = a2;
  v37 = *v35;
  v38 = v35[1];
  v39 = v35[2];
  v40 = v35[3];
  v98 = v36;
  v97 = v37;
  v94 = v38;
  v95 = v39;
  v96 = v40;
  sub_1000B1BE0(v37, v38, v39, v40, v36 & 1);
  if (qword_10058A890 != -1)
  {
    swift_once();
  }

  (*(*algn_10059B518 + 8))();
  DispatchTime.distance(to:)();
  v100 = v29;
  v99 = *(v29 + 8);
  v99(v25, v103);
  *v14 = 300;
  v41 = v107;
  v42 = *(v107 + 104);
  v42(v14, enum case for DispatchTimeInterval.seconds(_:), v9);
  v43 = enum case for DispatchTimeInterval.never(_:);
  v42(v12, enum case for DispatchTimeInterval.never(_:), v9);
  v44 = static DispatchTimeInterval.== infix(_:_:)();
  v107 = *(v41 + 8);
  (v107)(v12, v9);
  if (v44)
  {
    sub_1000B17D8(v97, v94, v95, v96, v98);
    v45 = v107;
    (v107)(v14, v9);
    v45(v16, v9);
    v21 = v103;
    v99(v108, v103);
    a2 = v101;
    v29 = v100;
    goto LABEL_12;
  }

  v42(v12, v43, v9);
  v77 = static DispatchTimeInterval.== infix(_:_:)();
  v78 = v107;
  (v107)(v12, v9);
  if (v77)
  {
    v78(v14, v9);
    v78(v16, v9);
    a2 = v101;
    v21 = v103;
    v29 = v100;
    v48 = v111;
    v47 = v112;
  }

  else
  {
    v79 = sub_100028EF8();
    v80 = sub_100028EF8();
    v78(v14, v9);
    v78(v16, v9);
    v81 = v79 < v80;
    a2 = v101;
    v21 = v103;
    v29 = v100;
    v48 = v111;
    v47 = v112;
    if (!v81)
    {
      v99(v108, v103);
      sub_1000B17D8(v97, v94, v95, v96, v98);
      v46 = v105;
      goto LABEL_13;
    }
  }

  v46 = v105;
  v82 = v99;
  if (v98)
  {
    sub_1000B17D8(v97, v94, v95, v96, v98);
  }

  else if (v105 == v97)
  {
    v83 = Logger.logObject.getter();
    v84 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v83, v84))
    {
      v85 = swift_slowAlloc();
      *v85 = 0;
      _os_log_impl(&_mh_execute_header, v83, v84, "Skip updating gateway IP address", v85, 2u);
    }

    v82(v108, v103);
    return 0;
  }

  v82(v108, v21);
LABEL_13:
  sub_100012400(a2 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A14GatewayMonitor_routingSocket, v48, &qword_10058BC88, &unk_1004818B0);
  if ((*(v109 + 48))(v48, 1, v110) == 1)
  {
    sub_100016290(v48, &qword_10058BC88, &unk_1004818B0);
    return 0;
  }

  v103 = v21;
  sub_100016DFC(v48, v47, type metadata accessor for RoutingSocket);
  v50 = RoutingSocket.macAddress(for:)(v124);
  sub_100012468(v47, type metadata accessor for RoutingSocket);
  if ((v50 & 0x1000000000000) != 0)
  {
    return 0;
  }

  v51 = a2 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A14GatewayMonitor_lastGatewayIPAddress;
  v52 = v50 >> 40;
  v112 = HIDWORD(v50);
  v53 = *(a2 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A14GatewayMonitor_lastGatewayIPAddress + 32);
  if (v53 == 255)
  {
    goto LABEL_27;
  }

  if (v53)
  {
    goto LABEL_27;
  }

  if (v46 != *v51)
  {
    goto LABEL_27;
  }

  v54 = (a2 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A14GatewayMonitor_lastGatewayAddress);
  if (*(a2 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A14GatewayMonitor_lastGatewayAddress + 6))
  {
    goto LABEL_27;
  }

  v55 = *(v54 + 2);
  v56 = *v54;
  LOWORD(v114) = v50;
  BYTE2(v114) = BYTE2(v50);
  BYTE3(v114) = BYTE3(v50);
  BYTE4(v114) = v112;
  BYTE5(v114) = BYTE5(v50);
  v113[0] = v56;
  v57.i64[0] = 0xFFFFFFFFFFFFLL;
  v57.i64[1] = 0xFFFFFFFFFFFFLL;
  v58 = vandq_s8(vdupq_n_s64(v56 | (v55 << 32)), v57);
  v59 = vshlq_u64(v58, xmmword_1004817A0);
  *v58.i8 = vmovn_s64(vshlq_u64(v58, xmmword_100481790));
  *v59.i8 = vmovn_s64(v59);
  v59.i16[1] = v59.i16[2];
  v59.i16[2] = v58.i16[0];
  v59.i16[3] = v58.i16[2];
  *&v113[1] = vmovn_s16(v59).u32[0];
  v113[5] = BYTE1(v55);
  if (v114 != *v113 || WORD2(v114) != *&v113[4])
  {
LABEL_27:
    v109 = v50 >> 8;
    v110 = v50 >> 16;
    v111 = (v50 >> 24);
    v108 = OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A14GatewayMonitor_logger;
    v61 = Logger.logObject.getter();
    v62 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v107 = v50 >> 40;
      v114 = v64;
      *v63 = 136315394;
      v65 = swift_slowAlloc();
      *v113 = v105;
      inet_ntop(2, v113, v65, 0x10u);
      v66 = String.init(cString:)();
      v101 = a2;
      v100 = v29;
      v67 = v66;
      v69 = v68;

      v70 = sub_100002320(v67, v69, &v114);

      *(v63 + 4) = v70;
      *(v63 + 12) = 2080;
      v71 = WiFiAddress.description.getter(v50 & 0xFFFFFFFFFFFFLL);
      v73 = sub_100002320(v71, v72, &v114);
      v46 = v105;

      *(v63 + 14) = v73;
      v29 = v100;
      a2 = v101;
      _os_log_impl(&_mh_execute_header, v61, v62, "Gateway (%s) has MAC address %s", v63, 0x16u);
      swift_arrayDestroy();
      LOBYTE(v52) = v107;
    }

    v122 = 0;
    v121 = 0u;
    LODWORD(v114) = 1;
    BYTE4(v114) = v50;
    BYTE5(v114) = v109;
    BYTE6(v114) = v110;
    HIBYTE(v114) = v111;
    v115 = v112;
    v116 = v52;
    v117 = 34603008;
    v118 = 0;
    v119 = v46;
    v120 = 0u;
    v74 = v106[5];
    v75 = v106[2];
    v76 = v106[3];

    AppleDevice.setRequest(requestType:data:on:)(0x1C2uLL, &v114, v123, 0, v75, v76);
  }

  if (qword_10058A890 != -1)
  {
    swift_once();
  }

  v86 = v104;
  (*(*algn_10059B518 + 8))();
  (*(v29 + 56))(v86, 0, 1, v103);
  v87 = v102;
  swift_beginAccess();
  sub_1000B1B78(v86, a2 + v87, &unk_100597330, &unk_100481FA0);
  swift_endAccess();
  v88 = *v51;
  v89 = *(v51 + 8);
  v90 = *(v51 + 16);
  v91 = *(v51 + 24);
  *v51 = v46;
  *(v51 + 8) = 0;
  *(v51 + 16) = 0;
  *(v51 + 24) = 0;
  v92 = *(v51 + 32);
  *(v51 + 32) = 0;
  sub_1000B17D8(v88, v89, v90, v91, v92);
  result = 1;
  v93 = a2 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A14GatewayMonitor_lastGatewayAddress;
  *(v93 + 4) = v112;
  *v93 = v50;
  *(v93 + 6) = 0;
  return result;
}

uint64_t sub_10009F99C(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v107 = a5;
  v106 = a4;
  v105 = a3;
  v7 = *(*(sub_10005DC58(&qword_10058BC88, &unk_1004818B0) - 8) + 64);
  __chkstk_darwin();
  v112 = &v93 - v8;
  v9 = type metadata accessor for RoutingSocket();
  v110 = *(v9 - 8);
  v111 = v9;
  v10 = *(v110 + 64);
  __chkstk_darwin();
  v113 = &v93 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchTimeInterval();
  v108 = *(v12 - 8);
  v13 = *(v108 + 64);
  __chkstk_darwin();
  v15 = &v93 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v17 = &v93 - v16;
  __chkstk_darwin();
  v19 = &v93 - v18;
  v20 = *(*(sub_10005DC58(&unk_100597330, &unk_100481FA0) - 8) + 64);
  __chkstk_darwin();
  v104 = &v93 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v23 = &v93 - v22;
  v24 = type metadata accessor for DispatchTime();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  __chkstk_darwin();
  v28 = &v93 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v109 = &v93 - v29;
  address = nw_endpoint_get_address(a1);
  if (address->sa_family != 2)
  {
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&_mh_execute_header, v32, v33, "Currently support gateway IP address translation for IPv4 only", v34, 2u);
    }

    return 0;
  }

  v102 = *&address->sa_data[2];
  v116[0] = v102;
  memset(&v116[1], 0, 24);
  v117 = 0;
  v31 = OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A14GatewayMonitor_lastGatewayUpdate;
  swift_beginAccess();
  v101 = v31;
  sub_100012400(a2 + v31, v23, &unk_100597330, &unk_100481FA0);
  if ((*(v25 + 48))(v23, 1, v24) == 1)
  {
    sub_100016290(v23, &unk_100597330, &unk_100481FA0);
LABEL_12:
    v48 = v113;
LABEL_13:
    v49 = v112;
    goto LABEL_14;
  }

  v35 = v109;
  (*(v25 + 32))(v109, v23, v24);
  v36 = (a2 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A14GatewayMonitor_lastGatewayIPAddress);
  v37 = *(a2 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A14GatewayMonitor_lastGatewayIPAddress + 32);
  if (v37 == 255)
  {
    (*(v25 + 8))(v35, v24);
    goto LABEL_12;
  }

  v103 = v24;
  v100 = a2;
  v38 = *v36;
  v39 = v36[1];
  v40 = v36[2];
  v41 = v36[3];
  v97 = v37;
  v96 = v38;
  v93 = v39;
  v94 = v40;
  v95 = v41;
  sub_1000B1BE0(v38, v39, v40, v41, v37 & 1);
  if (qword_10058A890 != -1)
  {
    swift_once();
  }

  (*(*algn_10059B518 + 8))();
  DispatchTime.distance(to:)();
  v99 = v25;
  v98 = *(v25 + 8);
  v98(v28, v103);
  *v17 = 300;
  v42 = v108;
  v43 = *(v108 + 104);
  v43(v17, enum case for DispatchTimeInterval.seconds(_:), v12);
  v44 = enum case for DispatchTimeInterval.never(_:);
  v43(v15, enum case for DispatchTimeInterval.never(_:), v12);
  v45 = static DispatchTimeInterval.== infix(_:_:)();
  v108 = *(v42 + 8);
  (v108)(v15, v12);
  if (v45)
  {
    sub_1000B17D8(v96, v93, v94, v95, v97);
    v46 = v108;
    (v108)(v17, v12);
    v46(v19, v12);
    v47 = v103;
    v98(v109, v103);
    a2 = v100;
    v24 = v47;
    v25 = v99;
    goto LABEL_12;
  }

  v43(v15, v44, v12);
  v75 = static DispatchTimeInterval.== infix(_:_:)();
  v76 = v108;
  (v108)(v15, v12);
  if (v75)
  {
    v76(v17, v12);
    v76(v19, v12);
    a2 = v100;
    v24 = v103;
    v25 = v99;
    v48 = v113;
  }

  else
  {
    v77 = sub_100028EF8();
    v78 = sub_100028EF8();
    v76(v17, v12);
    v76(v19, v12);
    v79 = v77 < v78;
    a2 = v100;
    v24 = v103;
    v25 = v99;
    v48 = v113;
    if (!v79)
    {
      v98(v109, v103);
      sub_1000B17D8(v96, v93, v94, v95, v97);
      goto LABEL_13;
    }
  }

  v49 = v112;
  v80 = v98;
  if (v97)
  {
    sub_1000B17D8(v96, v93, v94, v95, v97);
  }

  else if (v102 == v96)
  {
    v81 = Logger.logObject.getter();
    v82 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v81, v82))
    {
      v83 = swift_slowAlloc();
      *v83 = 0;
      _os_log_impl(&_mh_execute_header, v81, v82, "Skip updating gateway IP address", v83, 2u);
    }

    v80(v109, v103);
    return 0;
  }

  v80(v109, v24);
LABEL_14:
  sub_100012400(a2 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A14GatewayMonitor_routingSocket, v49, &qword_10058BC88, &unk_1004818B0);
  if ((*(v110 + 48))(v49, 1, v111) == 1)
  {
    sub_100016290(v49, &qword_10058BC88, &unk_1004818B0);
    return 0;
  }

  v103 = v24;
  sub_100016DFC(v49, v48, type metadata accessor for RoutingSocket);
  v51 = RoutingSocket.macAddress(for:)(v116);
  sub_100012468(v48, type metadata accessor for RoutingSocket);
  if ((v51 & 0x1000000000000) != 0)
  {
    return 0;
  }

  v100 = a2;
  v52 = a2 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A14GatewayMonitor_lastGatewayIPAddress;
  v53 = *(v52 + 32);
  if (v53 == 255)
  {
    goto LABEL_28;
  }

  if (v53)
  {
    goto LABEL_28;
  }

  if (v102 != *v52)
  {
    goto LABEL_28;
  }

  v54 = (v100 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A14GatewayMonitor_lastGatewayAddress);
  if (*(v100 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A14GatewayMonitor_lastGatewayAddress + 6))
  {
    goto LABEL_28;
  }

  v55 = *(v54 + 2);
  v56 = *v54;
  LOWORD(v115[0]) = v51;
  BYTE2(v115[0]) = BYTE2(v51);
  BYTE3(v115[0]) = BYTE3(v51);
  BYTE4(v115[0]) = BYTE4(v51);
  BYTE5(v115[0]) = BYTE5(v51);
  v114[0] = v56;
  v57.i64[0] = 0xFFFFFFFFFFFFLL;
  v57.i64[1] = 0xFFFFFFFFFFFFLL;
  v58 = vandq_s8(vdupq_n_s64(v56 | (v55 << 32)), v57);
  v59 = vshlq_u64(v58, xmmword_1004817A0);
  *v58.i8 = vmovn_s64(vshlq_u64(v58, xmmword_100481790));
  *v59.i8 = vmovn_s64(v59);
  v59.i16[1] = v59.i16[2];
  v59.i16[2] = v58.i16[0];
  v59.i16[3] = v58.i16[2];
  *&v114[1] = vmovn_s16(v59).u32[0];
  v114[5] = BYTE1(v55);
  if (LODWORD(v115[0]) != *v114 || WORD2(v115[0]) != *&v114[4])
  {
LABEL_28:
    v61 = OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A14GatewayMonitor_logger;
    v62 = Logger.logObject.getter();
    v63 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      v112 = swift_slowAlloc();
      v115[0] = v112;
      *v64 = 136315394;
      v65 = swift_slowAlloc();
      *v114 = v102;
      inet_ntop(2, v114, v65, 0x10u);
      v66 = String.init(cString:)();
      v113 = v61;
      v67 = v66;
      v69 = v68;

      v70 = sub_100002320(v67, v69, v115);

      *(v64 + 4) = v70;
      *(v64 + 12) = 2080;
      v71 = v51 & 0xFFFFFFFFFFFFLL;
      v72 = WiFiAddress.description.getter(v51 & 0xFFFFFFFFFFFFLL);
      v74 = sub_100002320(v72, v73, v115);

      *(v64 + 14) = v74;
      _os_log_impl(&_mh_execute_header, v62, v63, "Gateway (%s) has MAC address %s", v64, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      v71 = v51 & 0xFFFFFFFFFFFFLL;
    }

    (*(v107 + 128))(v71, v116, v106);
  }

  if (qword_10058A890 != -1)
  {
    swift_once();
  }

  v84 = v104;
  (*(*algn_10059B518 + 8))();
  (*(v25 + 56))(v84, 0, 1, v103);
  v85 = v100;
  v86 = v101;
  swift_beginAccess();
  sub_1000B1B78(v84, v85 + v86, &unk_100597330, &unk_100481FA0);
  swift_endAccess();
  v87 = *v52;
  v88 = *(v52 + 8);
  v89 = *(v52 + 16);
  v90 = *(v52 + 24);
  *v52 = v102;
  *(v52 + 8) = 0;
  *(v52 + 16) = 0;
  *(v52 + 24) = 0;
  v91 = *(v52 + 32);
  *(v52 + 32) = 0;
  sub_1000B17D8(v87, v88, v89, v90, v91);
  result = 1;
  v92 = v85 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A14GatewayMonitor_lastGatewayAddress;
  *(v92 + 4) = WORD2(v51);
  *v92 = v51;
  *(v92 + 6) = 0;
  return result;
}

uint64_t sub_1000A08B8(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  swift_unknownObjectRetain();
  LOBYTE(v3) = v4(a2);
  swift_unknownObjectRelease();
  return v3 & 1;
}

uint64_t sub_1000A0908()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A14GatewayMonitor_logger;
  (*(v3 + 16))(v6, v1 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A14GatewayMonitor_logger, v2);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "Stop monitoring network path for gateway address updates", v10, 2u);
  }

  v11 = *(v3 + 8);
  v11(v6, v2);
  v11((v1 + v7), v2);
  v12 = *(v1 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A14GatewayMonitor_monitor);

  sub_100016290(v1 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A14GatewayMonitor_routingSocket, &qword_10058BC88, &unk_1004818B0);
  sub_1000B17D8(*(v1 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A14GatewayMonitor_lastGatewayIPAddress), *(v1 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A14GatewayMonitor_lastGatewayIPAddress + 8), *(v1 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A14GatewayMonitor_lastGatewayIPAddress + 16), *(v1 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A14GatewayMonitor_lastGatewayIPAddress + 24), *(v1 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A14GatewayMonitor_lastGatewayIPAddress + 32));
  sub_100016290(v1 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A14GatewayMonitor_lastGatewayUpdate, &unk_100597330, &unk_100481FA0);
  return v1;
}

uint64_t sub_1000A0B04(uint64_t (*a1)(void))
{
  v1 = *a1();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1000A0B5C()
{
  v1 = v0;
  v2 = *(*(sub_10005DC58(&unk_100597330, &unk_100481FA0) - 8) + 64);
  __chkstk_darwin();
  v4 = &v18 - v3;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Resetting gateway IP address", v7, 2u);
  }

  v8 = type metadata accessor for DispatchTime();
  (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
  v9 = OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A14GatewayMonitor_lastGatewayUpdate;
  swift_beginAccess();
  sub_1000B1B78(v4, v1 + v9, &unk_100597330, &unk_100481FA0);
  swift_endAccess();
  v10 = v1 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A14GatewayMonitor_lastGatewayIPAddress;
  v11 = *(v1 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A14GatewayMonitor_lastGatewayIPAddress);
  v12 = *(v1 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A14GatewayMonitor_lastGatewayIPAddress + 8);
  v13 = *(v1 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A14GatewayMonitor_lastGatewayIPAddress + 16);
  v14 = *(v1 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A14GatewayMonitor_lastGatewayIPAddress + 24);
  *v10 = 0u;
  *(v10 + 16) = 0u;
  v15 = *(v10 + 32);
  *(v10 + 32) = -1;
  result = sub_1000B17D8(v11, v12, v13, v14, v15);
  v17 = v1 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A14GatewayMonitor_lastGatewayAddress;
  *(v17 + 4) = 0;
  *v17 = 0;
  *(v17 + 6) = 1;
  return result;
}

uint64_t sub_1000A0D20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v44 = a3;
  v9 = *(*(sub_10005DC58(&qword_10058BC88, &unk_1004818B0) - 8) + 64);
  __chkstk_darwin();
  v11 = &v35 - v10;
  v12 = type metadata accessor for RoutingSocket();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin();
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100012400(v5 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A14GatewayMonitor_routingSocket, v11, &qword_10058BC88, &unk_1004818B0);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    v17 = &qword_10058BC88;
    v18 = &unk_1004818B0;
    v19 = v11;
  }

  else
  {
    sub_100016DFC(v11, v16, type metadata accessor for RoutingSocket);
    RoutingSocket.ipAddress(for:)(a1 & 0xFFFFFFFFFFFFLL, v47);
    v43 = a2;
    v40 = v47[1];
    v41 = v47[0];
    v38 = v47[3];
    v39 = v47[2];
    sub_100012400(v47, v46, &unk_10058C790, qword_100481FB8);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.debug.getter();
    sub_100016290(v47, &unk_10058C790, qword_100481FB8);
    v42 = v22;
    if (os_log_type_enabled(v21, v22))
    {
      v37 = v21;
      v23 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v46[0] = v36;
      *v23 = 136315394;
      v24 = WiFiAddress.description.getter(a1 & 0xFFFFFFFFFFFFLL);
      v26 = sub_100002320(v24, v25, v46);

      *(v23 + 4) = v26;
      *(v23 + 12) = 2080;
      if (v48)
      {
        v27 = IPv6Address.description.getter(v41, v40, v39, v38);
        v29 = v28;
      }

      else
      {
        v30 = swift_slowAlloc();
        v45[0] = v41;
        inet_ntop(2, v45, v30, 0x10u);
        v31 = String.init(cString:)();
        v29 = v32;

        v27 = v31;
      }

      v33 = sub_100002320(v27, v29, v46);

      *(v23 + 14) = v33;
      v34 = v37;
      _os_log_impl(&_mh_execute_header, v37, v42, "Infra peer (%s) has IP address %s", v23, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    (*(a4 + 136))(a1 & 0xFFFFFFFFFFFFLL, v47, v44, a4);
    sub_100012468(v16, type metadata accessor for RoutingSocket);
    v17 = &unk_10058C790;
    v18 = qword_100481FB8;
    v19 = v47;
  }

  return sub_100016290(v19, v17, v18);
}

uint64_t static DeviceDriver<>.interfaceName(for:)(unsigned int a1)
{
  v2 = swift_slowAlloc();
  if (if_indextoname(a1, v2))
  {
    v3 = String.init(cString:)();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t DeviceDriver<>.linkState.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  (*(a3 + 40))(a1, a3);
  static ApplePlatform.withInterface<A>(_:matchingFamily:_:)(&type metadata for WiFiInterfaceLinkState, &v6);

  return v6;
}

uint64_t DeviceDriver<>.update(linkState:)(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v22 = a5;
  v23 = a3;
  v24 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v25 = *(AssociatedTypeWitness - 8);
  v8 = *(v25 + 64);
  __chkstk_darwin();
  v21 = &v20 - v9;
  v28 = 0u;
  v29 = 0u;
  v10 = *(a4 + 40);
  v11 = v10(a2, a4);
  v13 = v12;
  KeyPath = swift_getKeyPath();

  sub_10000F344(v11, v13, &v28, KeyPath, 0x10uLL);

  v10(a2, a4);
  v15 = v22;
  static ApplePlatform.withInterface<A>(_:matchingFamily:_:)(&type metadata for UInt32, &v26);
  v16 = v21;

  v17 = v26 & 0xFFBE;
  if (v27)
  {
    v17 = 0;
  }

  if (v24)
  {
    v18 = 65;
  }

  else
  {
    v18 = 0;
  }

  LOWORD(v29) = v17 | v18;
  (*(v23 + 56))(a2);
  (*(v15 + 16))(1, &v28, AssociatedTypeWitness, v15);
  return (*(v25 + 8))(v16, AssociatedTypeWitness);
}

uint64_t sub_1000A16C4@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *(result + 16);
  *(a2 + 4) = 0;
  return result;
}

unint64_t DeviceDriver<>.macAddress.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  (*(a3 + 40))(a1, a3);
  static ApplePlatform.withInterface<A>(_:matchingFamily:_:)(&type metadata for WiFiAddress, &v6);

  return v6 | (v7 << 32) | (v8 << 48);
}

uint64_t sub_1000A17B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 24);
  if (!v3)
  {
    __break(1u);
  }

  v4 = *(v3 + 5);
  v5 = *(v3 + 6);
  v11 = *(v3 + 8);
  v12 = *(v3 + 16);
  v9 = v11;
  v10 = v12;
  v6 = sub_1002AAFAC(&v9 + v4, v5);
  result = sub_1000172CC(v6, v7);
  *a2 = result;
  *(a2 + 4) = WORD2(result);
  *(a2 + 6) = BYTE6(result) & 1;
  return result;
}

uint64_t sub_1000A1860(unint64_t a1)
{
  v2 = a1;
  v3 = a1 >> 8;
  v4 = a1 >> 16;
  v5 = a1 >> 24;
  v15 = HIDWORD(a1);
  v16 = a1 >> 40;
  v18 = 0u;
  v19 = 0u;
  v6 = v1[2];
  v7 = v1[3];
  KeyPath = swift_getKeyPath();

  sub_10000F344(v6, v7, &v18, KeyPath, 0x10uLL);

  v17 = v19;
  sub_10005DC58(&qword_10058B3C0, &qword_100481920);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1004817D0;
  *(v9 + 32) = v2;
  *(v9 + 33) = v3;
  *(v9 + 34) = v4;
  *(v9 + 35) = v5;
  *(v9 + 36) = v15;
  *(v9 + 37) = v16;
  v10 = sub_10002D874(v9);
  v12 = v11;

  sub_1000A1CDC(v10, v12, &v17 + 2, &v18);
  sub_1000124C8(v10, v12);
  v19 = v17;
  LOWORD(v19) = 4614;
  v13 = v1[5];

  AppleDevice.send(request:data:)(2u);
}

uint64_t DeviceDriver<>.update(macAddress:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v33 = a5;
  v8 = a1;
  v27 = a1 >> 8;
  v29 = a1 >> 16;
  v31 = a1 >> 24;
  v28 = HIDWORD(a1);
  v30 = a1 >> 40;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin();
  v12 = &v26 - v11;
  v35 = 0u;
  v36 = 0u;
  v13 = (*(a4 + 40))(a2, a4);
  v15 = v14;
  KeyPath = swift_getKeyPath();

  v17 = v26;
  sub_10000F344(v13, v15, &v35, KeyPath, 0x10uLL);
  v26 = v17;

  v34 = v36;
  sub_10005DC58(&qword_10058B3C0, &qword_100481920);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1004817D0;
  *(v18 + 32) = v8;
  *(v18 + 33) = v27;
  *(v18 + 34) = v29;
  *(v18 + 35) = v31;
  *(v18 + 36) = v28;
  *(v18 + 37) = v30;
  v19 = sub_10002D874(v18);
  v21 = v20;

  sub_1000A1CDC(v19, v21, &v34 + 2, &v35);
  sub_1000124C8(v19, v21);
  v36 = v34;
  LOWORD(v36) = 4614;
  v22 = *(a3 + 56);
  v23 = a3;
  v24 = AssociatedTypeWitness;
  v22(a2, v23);
  (*(v33 + 16))(2, &v35, v24);
  return (*(v9 + 8))(v12, v24);
}

uint64_t sub_1000A1CDC(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_10005DC58(&qword_10058C7B8, &qword_100481FD8);
  v9 = *(*(v8 - 8) + 64);
  result = __chkstk_darwin();
  v12 = &v17[-v11];
  v19 = a1;
  v20 = a2;
  if (!a3)
  {
    return result;
  }

  __chkstk_darwin();
  *&v17[-32] = &v19;
  *&v17[-24] = a3;
  *&v17[-16] = a4;
  *&v17[-8] = a3;
  result = sub_1000AEAFC(sub_1000B1F68, &v17[-48], a1, a2);
  if ((result & 1) == 0)
  {
    return result;
  }

  v13 = v20 >> 62;
  if ((v20 >> 62) > 1)
  {
    if (v13 != 2)
    {
      goto LABEL_9;
    }

    v14 = *(v19 + 16);
  }

  else if (!v13)
  {
    goto LABEL_9;
  }

  sub_10000AB0C(v19, v20);
LABEL_9:
  Data.Iterator.init(_:at:)();
  type metadata accessor for Data.Iterator();
  sub_10001F8F4(&qword_10058C7C0, &type metadata accessor for Data.Iterator);
  result = dispatch thunk of IteratorProtocol.next()();
  v15 = 0;
  if (v18)
  {
LABEL_13:
    *&v12[*(v8 + 36)] = v15;
    return sub_100016290(v12, &qword_10058C7B8, &qword_100481FD8);
  }

  else
  {
    v16 = 0;
    while (1)
    {
      v15 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      *(a3 + v16) = v17[6];
      result = dispatch thunk of IteratorProtocol.next()();
      ++v16;
      if (v18 == 1)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  return result;
}

unint64_t DeviceDriver<>.ipv4Address.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  (*(a3 + 40))(a1, a3);
  static ApplePlatform.withInterface<A>(_:matchingFamily:_:)(&type metadata for IPv4Address, &v6);

  return v6 | (v7 << 32);
}

uint64_t sub_1000A1FBC@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 24);
  if (v2)
  {
    *a2 = *(v2 + 4);
    *(a2 + 4) = 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000A1FD8(uint64_t a1)
{
  v9 = 0u;
  v10 = 0u;
  v3 = v1[2];
  v4 = v1[3];
  KeyPath = swift_getKeyPath();

  sub_10000F344(v3, v4, &v9, KeyPath, 0x10uLL);

  if ((a1 & 0x100000000) != 0)
  {
    v6 = 4;
  }

  else
  {
    LODWORD(v10) = 528;
    DWORD1(v10) = a1;
    *(&v10 + 1) = 0;
    v6 = 3;
  }

  v7 = v1[5];

  AppleDevice.send(request:data:)(v6);
}

uint64_t DeviceDriver<>.update(ipv4Address:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v20 = a1;
  v21 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin();
  v11 = &v19 - v10;
  v23 = 0u;
  v24 = 0u;
  v12 = (*(a4 + 40))(a2, a4);
  v14 = v13;
  KeyPath = swift_getKeyPath();

  sub_10000F344(v12, v14, &v23, KeyPath, 0x10uLL);

  if ((v20 & 0x100000000) != 0)
  {
    v16 = 4;
  }

  else
  {
    LODWORD(v24) = 528;
    DWORD1(v24) = v20;
    *(&v24 + 1) = 0;
    v16 = 3;
  }

  (*(a3 + 56))(a2, a3);
  v17 = AssociatedTypeWitness;
  (*(v21 + 16))(v16, &v23, AssociatedTypeWitness);
  return (*(v8 + 8))(v11, v17);
}

uint64_t DeviceDriver<>.ipv6Addresses.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  (*(a3 + 40))(a1, a3);
  v5 = static ApplePlatform.withInterface<A>(_:matchingAllInFamily:_:)();

  return v5;
}

uint64_t sub_1000A23B8@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 24);
  if (v2)
  {
    v3 = *(v2 + 16);
    *a2 = *(v2 + 8);
    a2[1] = v3;
    a2[2] = 0;
    a2[3] = 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000A23D4(unint64_t a1, unsigned int a2)
{
  v3 = a1;
  v4 = a1 >> 8;
  v5 = a1 >> 16;
  v6 = a1 >> 24;
  v16 = HIDWORD(a1);
  v17 = a1 >> 40;
  v20 = 0u;
  v21 = 0u;
  v7 = v2[2];
  v8 = v2[3];
  KeyPath = swift_getKeyPath();

  sub_10000F344(v7, v8, &v20, KeyPath, 0x10uLL);

  v19 = v21;
  LOWORD(v19) = 4628;
  BYTE4(v19) = 6;
  BYTE6(v19) = 6;
  sub_10005DC58(&qword_10058B3C0, &qword_100481920);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1004817D0;
  *(v10 + 32) = v3;
  *(v10 + 33) = v4;
  *(v10 + 34) = v5;
  *(v10 + 35) = v6;
  *(v10 + 36) = v16;
  *(v10 + 37) = v17;
  v11 = sub_10002D874(v10);
  v13 = v12;

  sub_1000A1CDC(v11, v13, &v19 + 8, &v20 + 4);
  sub_1000124C8(v11, v13);
  v21 = v19;
  v14 = v2[5];

  AppleDevice.send(request:data:)(a2);
}

uint64_t sub_1000A2598(unint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v33 = a6;
  v34 = a2;
  v9 = a1;
  v27 = a1 >> 8;
  v29 = a1 >> 16;
  v31 = a1 >> 24;
  v28 = HIDWORD(a1);
  v30 = a1 >> 40;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin();
  v13 = &v25 - v12;
  v36 = 0u;
  v37 = 0u;
  v14 = (*(a5 + 40))(a3, a5);
  v16 = v15;
  KeyPath = swift_getKeyPath();

  v18 = v26;
  sub_10000F344(v14, v16, &v36, KeyPath, 0x10uLL);
  v26 = v18;

  v35 = v37;
  LOWORD(v35) = 4628;
  BYTE4(v35) = 6;
  BYTE6(v35) = 6;
  sub_10005DC58(&qword_10058B3C0, &qword_100481920);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1004817D0;
  *(v19 + 32) = v9;
  *(v19 + 33) = v27;
  *(v19 + 34) = v29;
  *(v19 + 35) = v31;
  *(v19 + 36) = v28;
  *(v19 + 37) = v30;
  v20 = sub_10002D874(v19);
  v22 = v21;

  v23 = AssociatedTypeWitness;
  sub_1000A1CDC(v20, v22, &v35 + 8, &v36 + 4);
  sub_1000124C8(v20, v22);
  v37 = v35;
  (*(a4 + 56))(a3, a4);
  (*(v33 + 16))(v34, &v36, v23);
  return (*(v10 + 8))(v13, v23);
}

uint64_t sub_1000A292C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned int a10)
{
  v26 = a4;
  v27 = a5;
  v23 = a2;
  v24 = a3;
  v25 = a10;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = *(AssociatedTypeWitness - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin();
  v18 = &v22 - v17;
  (*(a7 + 56))(a6, a7);
  v19 = (*(a8 + 40))(a6, a8);
  (*(a9 + 24))(a1 & 0xFFFFFFFFFFFFLL, v23, v24, v26, v27, v19, v20, v25, AssociatedTypeWitness, a9);
  (*(v15 + 8))(v18, AssociatedTypeWitness);
}

uint64_t DeviceDriver<>.clearAllPeerPresence()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin();
  v12 = &v15 - v11;
  (*(a2 + 56))(a1, a2);
  v13 = (*(a3 + 40))(a1, a3);
  (*(a4 + 32))(v13);
  (*(v9 + 8))(v12, AssociatedTypeWitness);
}

uint64_t sub_1000A2C30(void *a1)
{
  type metadata accessor for Socket();
  swift_initStackObject();
  v3 = Socket.init(domain:type:proto:)(30, 2, 0);
  if (!v3)
  {
    v13 = errno.getter();
    sub_10000B02C();
    swift_allocError();
    *v14 = v13;
    *(v14 + 8) = 0;
    *(v14 + 16) = 0;
    return swift_willThrow();
  }

  v4 = v3;
  memset(v27, 0, 288);
  v6 = *(v1 + 16);
  v5 = *(v1 + 24);
  KeyPath = swift_getKeyPath();

  sub_10000F344(v6, v5, v27, KeyPath, 0x10uLL);

  v8 = *(v4 + 4);
  sub_10001C288(6u);
  v9 = ioctl(_:_:_:)();
  if (v9 == -1)
  {
    goto LABEL_9;
  }

  if (v9)
  {
LABEL_10:
    v16 = v9;
    sub_10000B02C();
    swift_allocError();
    *v17 = v16;
    *(v17 + 8) = 0;
    *(v17 + 16) = 0;
    swift_willThrow();
  }

  if (!a1[2])
  {
  }

  v10 = a1[5];
  v18 = a1[4];
  v11 = a1[7];
  v26 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v19 = 0u;
  v12 = swift_getKeyPath();

  sub_10000F344(v6, v5, &v19, v12, 0x10uLL);

  LOWORD(v20) = 7708;

  *(&v20 + 1) = v18;
  *&v21 = v10;
  sub_10001C288(5u);
  v9 = ioctl(_:_:_:)();
  if (v9 == -1)
  {
LABEL_9:
    v9 = errno.getter();
    goto LABEL_10;
  }

  if (v9)
  {
    goto LABEL_10;
  }
}

uint64_t DeviceDriver<>.update(ipv6Addresses:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Socket();
  swift_initStackObject();
  v7 = Socket.init(domain:type:proto:)(30, 2, 0);
  if (!v7)
  {
    v21 = errno.getter();
    sub_10000B02C();
    swift_allocError();
    *v22 = v21;
    *(v22 + 8) = 0;
    *(v22 + 16) = 0;
    return swift_willThrow();
  }

  v8 = v7;
  memset(v37, 0, 288);
  v9 = *(a4 + 40);
  v28 = a2;
  v10 = v9(a2, a4);
  v12 = v11;
  KeyPath = swift_getKeyPath();

  sub_10000F344(v10, v12, v37, KeyPath, 0x10uLL);

  v14 = *(v8 + 4);
  sub_10001C288(6u);
  v15 = ioctl(_:_:_:)();
  if (v15 == -1)
  {
    goto LABEL_9;
  }

  if (v15)
  {
LABEL_10:
    v24 = v15;
    sub_10000B02C();
    swift_allocError();
    *v25 = v24;
    *(v25 + 8) = 0;
    *(v25 + 16) = 0;
    swift_willThrow();
  }

  if (!a1[2])
  {
  }

  v26 = a1[5];
  v27 = a1[4];
  v16 = a1[7];
  v36 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v29 = 0u;

  v17 = v9(v28, a4);
  v19 = v18;
  v20 = swift_getKeyPath();

  sub_10000F344(v17, v19, &v29, v20, 0x10uLL);

  LOWORD(v30) = 7708;

  *(&v30 + 1) = v27;
  *&v31 = v26;
  sub_10001C288(5u);
  v15 = ioctl(_:_:_:)();
  if (v15 == -1)
  {
LABEL_9:
    v15 = errno.getter();
    goto LABEL_10;
  }

  if (v15)
  {
    goto LABEL_10;
  }
}

BOOL sub_1000A31A0()
{
  v5 = 0;
  v6 = 0;
  v7 = 0;
  v1 = v0[5];
  v2 = v0[2];
  v3 = v0[3];

  AppleDevice.getRequest(requestType:data:on:)(0x13uLL, &v5, &v8, 0, v2, v3);

  result = HIDWORD(v5) != 0;
  if (HIDWORD(v5))
  {
    if (!v6)
    {
      result = HIDWORD(v5) != 1;
      if (HIDWORD(v5) != 1 && !HIDWORD(v6))
      {
        result = HIDWORD(v5) != 2;
        if (HIDWORD(v5) != 2 && !v7)
        {
          if (HIDWORD(v5) != 3 && HIDWORD(v7) == 0)
          {
            return HIDWORD(v5) < 4;
          }

          else
          {
            return HIDWORD(v5) != 3;
          }
        }
      }
    }
  }

  return result;
}

BOOL DeviceDriver<>.powerOn.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = 0;
  v10 = 0;
  v11 = 0;
  sub_1000A3AF4(&v9, &v12, v4, a1, a2, a3, a4, &v8, 19);
  result = HIDWORD(v9) != 0;
  if (HIDWORD(v9))
  {
    v6 = v10 == 0;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    result = HIDWORD(v9) != 1;
    if (HIDWORD(v9) != 1 && HIDWORD(v10) == 0)
    {
      result = HIDWORD(v9) != 2;
      if (HIDWORD(v9) != 2 && !v11)
      {
        if (HIDWORD(v9) != 3 && HIDWORD(v11) == 0)
        {
          return HIDWORD(v9) < 4;
        }

        else
        {
          return HIDWORD(v9) != 3;
        }
      }
    }
  }

  return result;
}

uint64_t sub_1000A33D0()
{
  v1 = v0;
  v11 = 0;
  v10 = 0;
  v2 = v0[5];
  v4 = v1[2];
  v3 = v1[3];

  AppleDevice.getRequest(requestType:data:on:)(9uLL, &v10, &v12, 0, v4, v3);

  v6 = sub_1000A373C(v13, &v14, v1);
  v7 = 0;
  v8 = 0;

  AppleDevice.getRequest(requestType:data:on:)(4uLL, &v7, &v9, 0, v4, v3);

  if ((sub_100032064(v8, HIDWORD(v8)) & 0xFF00000000) != 0x300000000)
  {
    return v6;
  }

  return 0;
}

uint64_t DeviceDriver<>.wifiNetwork.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v17 = 0;
  v16 = 0;
  sub_1000A3AF4(&v16, &v18, v5, a1, a2, a3, a4, &v13, 9);
  sub_1000A3880(v19, &v20, a1, a2, a3, a4, &v13);
  v10 = v13;
  v13 = 0;
  v14 = 0;
  sub_1000A3AF4(&v13, &v15, v5, a1, a2, a3, a4, &v12, 4);
  if ((sub_100032064(v14, HIDWORD(v14)) & 0xFF00000000) != 0x300000000)
  {
    return v10;
  }

  return 0;
}

uint64_t sub_1000A373C(void *a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v8 = *(*(type metadata accessor for String.Encoding() - 8) + 64);
  result = __chkstk_darwin();
  if (!a1)
  {
    goto LABEL_11;
  }

  v10 = a2 - a1;
  bzero(a1, a2 - a1);
  v11 = a3[5];
  v12 = a3[2];
  v13 = a3[3];

  AppleDevice.getRequest(requestType:data:on:)(1uLL, a1, a2, 0, v12, v13);

  if (v4)
  {
    return result;
  }

  v14 = v10 - 1;
  if (__OFSUB__(v10, 1))
  {
    __break(1u);
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    return result;
  }

  if (v14 < 0 || v14 >= v10)
  {
    goto LABEL_10;
  }

  *(a1 + v14) = 0;
  static String.Encoding.utf8.getter();
  result = String.init(cString:encoding:)();
  if (!v15)
  {
    return 0;
  }

  return result;
}

uint64_t sub_1000A3880@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t *a7@<X8>)
{
  v30 = a5;
  v31 = a6;
  v29 = a7;
  v11 = *(*(type metadata accessor for String.Encoding() - 8) + 64);
  __chkstk_darwin();
  v28 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = *(AssociatedTypeWitness - 8);
  v15 = *(v14 + 64);
  result = __chkstk_darwin();
  v18 = &v28 - v17;
  if (!a1)
  {
    goto LABEL_16;
  }

  v19 = a2 - a1;
  bzero(a1, a2 - a1);
  (*(a4 + 56))(a3, a4);
  v20 = (*(*(v30 + 16) + 40))(a3);
  v21 = v32;
  (*(*(v31 + 8) + 24))(1, a1, a2, 0, v20, v22, AssociatedTypeWitness);
  if (v21)
  {
    (*(v14 + 8))(v18, AssociatedTypeWitness);
  }

  (*(v14 + 8))(v18, AssociatedTypeWitness);

  v23 = v19 - 1;
  if (__OFSUB__(v19, 1))
  {
    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    return result;
  }

  if (v23 < 0 || v23 >= v19)
  {
    goto LABEL_15;
  }

  *(a1 + v23) = 0;
  static String.Encoding.utf8.getter();
  result = String.init(cString:encoding:)();
  if (v24)
  {
    v25 = result;
  }

  else
  {
    v25 = 0;
  }

  v26 = 0xE000000000000000;
  if (v24)
  {
    v26 = v24;
  }

  v27 = v29;
  *v29 = v25;
  v27[1] = v26;
  return result;
}

uint64_t sub_1000A3AF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9)
{
  v23 = a8;
  v24 = a1;
  v25 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = *(AssociatedTypeWitness - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin();
  v17 = &v22 - v16;
  (*(a5 + 56))(a4, a5);
  v18 = (*(*(a6 + 16) + 40))(a4);
  v19 = v26;
  (*(*(a7 + 8) + 24))(a9, v24, v25, 0, v18, v20, AssociatedTypeWitness);
  (*(v14 + 8))(v17, AssociatedTypeWitness);

  if (v19)
  {
    *v23 = v19;
  }

  return result;
}

BOOL sub_1000A3CBC()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  __chkstk_darwin();
  v6 = &v14 - v5;
  Logger.init(subsystem:category:)();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Getting powerOn state from driver", v9, 2u);
  }

  (*(v3 + 8))(v6, v2);
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v10 = v1[5];
  v12 = v1[2];
  v11 = v1[3];

  AppleDevice.getRequest(requestType:data:on:)(0x13uLL, &v15, &v18, 0, v12, v11);

  result = HIDWORD(v15) != 0;
  if (HIDWORD(v15))
  {
    if (!v16)
    {
      result = HIDWORD(v15) != 1;
      if (HIDWORD(v15) != 1 && !HIDWORD(v16))
      {
        result = HIDWORD(v15) != 2;
        if (HIDWORD(v15) != 2 && !v17)
        {
          if (HIDWORD(v15) != 3 && HIDWORD(v17) == 0)
          {
            return HIDWORD(v15) < 4;
          }

          else
          {
            return HIDWORD(v15) != 3;
          }
        }
      }
    }
  }

  return result;
}

BOOL DeviceDriver<>.getPowerState()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v17 = a3;
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin();
  __chkstk_darwin();
  v11 = &v16 - v10;
  Logger.init(subsystem:category:)();
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "Getting powerOn state from driver", v14, 2u);
  }

  (*(v8 + 8))(v11, v7);
  v19 = 0;
  v20 = 0;
  v21 = 0;
  sub_1000A4360(&v19, &v22, v4, a1, a2, v17, &v18);
  result = HIDWORD(v19) != 0;
  if (HIDWORD(v19))
  {
    if (!v20)
    {
      result = HIDWORD(v19) != 1;
      if (HIDWORD(v19) != 1 && !HIDWORD(v20))
      {
        result = HIDWORD(v19) != 2;
        if (HIDWORD(v19) != 2 && !v21)
        {
          if (HIDWORD(v19) != 3 && HIDWORD(v21) == 0)
          {
            return HIDWORD(v19) < 4;
          }

          else
          {
            return HIDWORD(v19) != 3;
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1000A4360(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  (*(a5 + 56))(&v16, a4, a5);
  v13 = (*(*(a6 + 16) + 40))(a4);
  AppleDevice.getRequest(requestType:data:on:)(0x13uLL, a1, a2, 0, v13, v14);

  if (v7)
  {
    *a7 = v7;
  }

  return result;
}

void sub_1000A449C(uint64_t a1)
{
  if (!*(a1 + 104))
  {
    v2 = [objc_opt_self() activityWithType:6 reason:0];
    v3 = *(a1 + 48);
    v14 = 0;
    v4 = [v3 beginActivity:v2 error:&v14];
    v5 = v14;
    if (v4)
    {
      v6 = *(a1 + 104);
      *(a1 + 104) = v2;
      v7 = v5;
    }

    else
    {
      v8 = v14;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      swift_errorRetain();
      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        *v11 = 138412290;
        swift_errorRetain();
        v13 = _swift_stdlib_bridgeErrorToNSError();
        *(v11 + 4) = v13;
        *v12 = v13;
        _os_log_impl(&_mh_execute_header, v9, v10, "Failed to disable auto join: %@", v11, 0xCu);
        sub_100016290(v12, &qword_10058B780, &qword_100480AC0);
      }

      else
      {
      }
    }
  }
}

uint64_t sub_1000A468C(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v20 = *(v5 - 8);
  v6 = *(v20 + 64);
  __chkstk_darwin();
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v18 = *(v9 - 8);
  v19 = v9;
  v10 = *(v18 + 64);
  __chkstk_darwin();
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v2 + 40);
  v14 = *(v13 + 56);
  aBlock[4] = a1;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000C8B8;
  aBlock[3] = a2;
  v15 = _Block_copy(aBlock);
  swift_retain_n();
  v16 = v14;
  static DispatchQoS.unspecified.getter();
  v21 = _swiftEmptyArrayStorage;
  sub_10001F8F4(&qword_10058BCC0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10005DC58(&unk_100595270, &unk_1004AEC80);
  sub_10000CADC(&qword_10058BCD0, &unk_100595270, &unk_1004AEC80);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v15);

  (*(v20 + 8))(v8, v5);
  (*(v18 + 8))(v12, v19);
}

uint64_t sub_1000A4968(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v20 = a4;
  v21 = a5;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v24 = *(v7 - 8);
  v8 = *(v24 + 64);
  __chkstk_darwin();
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v22 = *(v11 - 8);
  v23 = v11;
  v12 = *(v22 + 64);
  __chkstk_darwin();
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a2 + 56);
  v15(&v27, a1, a2);
  v16 = *(v27 + 56);

  v15(aBlock, a1, a2);
  aBlock[4] = v20;
  aBlock[5] = aBlock[0];
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000C8B8;
  aBlock[3] = v21;
  v17 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v25 = _swiftEmptyArrayStorage;
  sub_10001F8F4(&qword_10058BCC0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10005DC58(&unk_100595270, &unk_1004AEC80);
  sub_10000CADC(&qword_10058BCD0, &unk_100595270, &unk_1004AEC80);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v17);

  (*(v24 + 8))(v10, v7);
  (*(v22 + 8))(v14, v23);
}

void sub_1000A4C70(uint64_t a1)
{
  if (*(a1 + 104))
  {
    [*(a1 + 48) endActivity:?];
    v2 = *(a1 + 104);
    *(a1 + 104) = 0;
  }
}

uint64_t sub_1000A4CC8(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v34 = a4;
  v35 = a5;
  v33[1] = a3;
  v42 = a1;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v40 = *(v6 - 8);
  v41 = v6;
  v7 = *(v40 + 64);
  __chkstk_darwin();
  v38 = v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for DispatchQoS();
  v37 = *(v39 - 8);
  v9 = *(v37 + 64);
  result = __chkstk_darwin();
  v36 = v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16))
  {
    v12 = *(a2 + 40);
    Hasher.init(_seed:)();
    String.hash(into:)();
    result = Hasher._finalize()();
    v13 = a2 + 56;
    v14 = -1 << *(a2 + 32);
    v15 = result & ~v14;
    if ((*(a2 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
    {
      v16 = ~v14;
      while (1)
      {
        v17 = *(*(a2 + 48) + v15);
        if (v17 > 2 && v17 != 4)
        {
          break;
        }

        v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v18)
        {
          goto LABEL_10;
        }

        v15 = (v15 + 1) & v16;
        if (((*(v13 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
        {
          goto LABEL_13;
        }
      }

LABEL_10:
      if (qword_10058A758 != -1)
      {
        swift_once();
      }

      result = [qword_10058BC80 updateLinkRecoveryDisabled:v42 & 1];
    }

LABEL_13:
    if (*(a2 + 16))
    {
      v19 = *(a2 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v20 = -1 << *(a2 + 32);
      v21 = result & ~v20;
      if ((*(v13 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21))
      {
        v22 = ~v20;
        while (1)
        {
          v23 = *(*(a2 + 48) + v21);
          if (v23 <= 2 && v23 != 1 && v23 != 2)
          {
            break;
          }

          v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v24)
          {
            goto LABEL_23;
          }

          v21 = (v21 + 1) & v22;
          if (((*(v13 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
          {
            return result;
          }
        }

LABEL_23:
        v25 = *(v33[0] + 40);
        v26 = *(v25 + 56);
        v27 = swift_allocObject();
        *(v27 + 16) = v42 & 1;
        *(v27 + 24) = v25;
        aBlock[4] = v34;
        aBlock[5] = v27;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_10000C8B8;
        aBlock[3] = v35;
        v28 = _Block_copy(aBlock);
        swift_retain_n();
        v29 = v26;
        v30 = v36;
        static DispatchQoS.unspecified.getter();
        v43 = _swiftEmptyArrayStorage;
        sub_10001F8F4(&qword_10058BCC0, &type metadata accessor for DispatchWorkItemFlags);
        sub_10005DC58(&unk_100595270, &unk_1004AEC80);
        sub_10000CADC(&qword_10058BCD0, &unk_100595270, &unk_1004AEC80);
        v31 = v38;
        v32 = v41;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v28);

        (*(v40 + 8))(v31, v32);
        (*(v37 + 8))(v30, v39);
      }
    }
  }

  return result;
}

uint64_t DeviceDriver<>.updateLinkRecoveryDisabled(_:interfaces:)(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = a4;
  v36 = a3;
  v44 = a1;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v42 = *(v5 - 8);
  v43 = v5;
  v6 = *(v42 + 64);
  __chkstk_darwin();
  v40 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for DispatchQoS();
  v39 = *(v41 - 8);
  v8 = *(v39 + 64);
  result = __chkstk_darwin();
  v38 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16))
  {
    v11 = *(a2 + 40);
    Hasher.init(_seed:)();
    String.hash(into:)();
    result = Hasher._finalize()();
    v12 = a2 + 56;
    v13 = -1 << *(a2 + 32);
    v14 = result & ~v13;
    if ((*(a2 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
    {
      v15 = ~v13;
      while (1)
      {
        v16 = *(*(a2 + 48) + v14);
        if (v16 > 2 && v16 != 4)
        {
          break;
        }

        v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v17)
        {
          goto LABEL_10;
        }

        v14 = (v14 + 1) & v15;
        if (((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
        {
          goto LABEL_13;
        }
      }

LABEL_10:
      if (qword_10058A758 != -1)
      {
        swift_once();
      }

      result = [qword_10058BC80 updateLinkRecoveryDisabled:v44 & 1];
    }

LABEL_13:
    if (*(a2 + 16))
    {
      v18 = *(a2 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v19 = -1 << *(a2 + 32);
      v20 = result & ~v19;
      if ((*(v12 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20))
      {
        v21 = ~v19;
        while (1)
        {
          v22 = *(*(a2 + 48) + v20);
          if (v22 <= 2 && v22 != 1 && v22 != 2)
          {
            break;
          }

          v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v23)
          {
            goto LABEL_23;
          }

          v20 = (v20 + 1) & v21;
          if (((*(v12 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
          {
            return result;
          }
        }

LABEL_23:
        v24 = v37;
        v25 = *(v37 + 56);
        v26 = v36;
        v25(&v46, v36, v37);
        v35 = *(v46 + 56);

        v25(aBlock, v26, v24);
        v27 = aBlock[0];
        v28 = swift_allocObject();
        *(v28 + 16) = v44 & 1;
        *(v28 + 24) = v27;
        aBlock[4] = sub_1000B0220;
        aBlock[5] = v28;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_10000C8B8;
        aBlock[3] = &unk_10055EEC0;
        v29 = _Block_copy(aBlock);

        v30 = v38;
        static DispatchQoS.unspecified.getter();
        v45 = _swiftEmptyArrayStorage;
        sub_10001F8F4(&qword_10058BCC0, &type metadata accessor for DispatchWorkItemFlags);
        sub_10005DC58(&unk_100595270, &unk_1004AEC80);
        sub_10000CADC(&qword_10058BCD0, &unk_100595270, &unk_1004AEC80);
        v31 = v40;
        v32 = v43;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v33 = v35;
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v29);

        (*(v42 + 8))(v31, v32);
        (*(v39 + 8))(v30, v41);
      }
    }
  }

  return result;
}

void sub_1000A58BC(char a1, uint64_t a2)
{
  v3 = *(a2 + 136);
  if (a1)
  {
    if (!v3)
    {
      v4 = [objc_opt_self() activityWithType:12 reason:0];
      v5 = *(a2 + 48);
      v17 = 0;
      v6 = [v5 beginActivity:v4 error:&v17];
      v7 = v17;
      if (v6)
      {
        v8 = *(a2 + 136);
        *(a2 + 136) = v4;
        v9 = v7;
      }

      else
      {
        v11 = v17;
        _convertNSErrorToError(_:)();

        swift_willThrow();
        swift_errorRetain();
        v12 = Logger.logObject.getter();
        v13 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v12, v13))
        {
          v14 = swift_slowAlloc();
          v15 = swift_slowAlloc();
          *v14 = 138412290;
          swift_errorRetain();
          v16 = _swift_stdlib_bridgeErrorToNSError();
          *(v14 + 4) = v16;
          *v15 = v16;
          _os_log_impl(&_mh_execute_header, v12, v13, "Failed to update link recovery disabled: %@", v14, 0xCu);
          sub_100016290(v15, &qword_10058B780, &qword_100480AC0);
        }

        else
        {
        }
      }
    }
  }

  else if (v3)
  {
    [*(a2 + 48) endActivity:?];
    v10 = *(a2 + 136);
    *(a2 + 136) = 0;
  }
}

uint64_t sub_1000A5B0C(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v24 = *(v8 - 8);
  v9 = *(v24 + 64);
  __chkstk_darwin();
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v22 = *(v12 - 8);
  v23 = v12;
  v13 = *(v22 + 64);
  __chkstk_darwin();
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v4 + 40);
  v17 = *(v16 + 56);
  v18 = swift_allocObject();
  *(v18 + 16) = a1;
  *(v18 + 24) = v16;
  aBlock[4] = a3;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000C8B8;
  aBlock[3] = a4;
  v19 = _Block_copy(aBlock);
  swift_retain_n();
  v20 = v17;
  static DispatchQoS.unspecified.getter();
  v25 = _swiftEmptyArrayStorage;
  sub_10001F8F4(&qword_10058BCC0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10005DC58(&unk_100595270, &unk_1004AEC80);
  sub_10000CADC(&qword_10058BCD0, &unk_100595270, &unk_1004AEC80);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v19);

  (*(v24 + 8))(v11, v8);
  (*(v22 + 8))(v15, v23);
}

uint64_t DeviceDriver<>.update(isAirPlayingOverInfrastructure:)(int a1, uint64_t a2, uint64_t a3)
{
  v20 = a1;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v23 = *(v5 - 8);
  v6 = *(v23 + 64);
  __chkstk_darwin();
  v8 = &v19[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = type metadata accessor for DispatchQoS();
  v9 = *(v22 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin();
  v12 = &v19[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = *(a3 + 56);
  v13(&v26, a2, a3);
  v21 = *(v26 + 56);

  v13(aBlock, a2, a3);
  v14 = aBlock[0];
  v15 = swift_allocObject();
  *(v15 + 16) = v20;
  *(v15 + 24) = v14;
  aBlock[4] = sub_1000B022C;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000C8B8;
  aBlock[3] = &unk_10055EF10;
  v16 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v24 = _swiftEmptyArrayStorage;
  sub_10001F8F4(&qword_10058BCC0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10005DC58(&unk_100595270, &unk_1004AEC80);
  sub_10000CADC(&qword_10058BCD0, &unk_100595270, &unk_1004AEC80);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v17 = v21;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);

  (*(v23 + 8))(v8, v5);
  (*(v9 + 8))(v12, v22);
}

void sub_1000A6124(char a1, uint64_t a2)
{
  v3 = *(a2 + 112);
  if (a1)
  {
    if (!v3)
    {
      v4 = String._bridgeToObjectiveC()();
      v5 = [objc_opt_self() activityWithType:8 reason:v4];

      v6 = *(a2 + 48);
      v18 = 0;
      v7 = [v6 beginActivity:v5 error:&v18];
      v8 = v18;
      if (v7)
      {
        v9 = *(a2 + 112);
        *(a2 + 112) = v5;
        v10 = v8;
      }

      else
      {
        v12 = v18;
        _convertNSErrorToError(_:)();

        swift_willThrow();
        swift_errorRetain();
        v13 = Logger.logObject.getter();
        v14 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v13, v14))
        {
          v15 = swift_slowAlloc();
          v16 = swift_slowAlloc();
          *v15 = 138412290;
          swift_errorRetain();
          v17 = _swift_stdlib_bridgeErrorToNSError();
          *(v15 + 4) = v17;
          *v16 = v17;
          _os_log_impl(&_mh_execute_header, v13, v14, "Failed to begin AirPlay over Infrastructure CWFActivity: %@", v15, 0xCu);
          sub_100016290(v16, &qword_10058B780, &qword_100480AC0);
        }

        else
        {
        }
      }
    }
  }

  else if (v3)
  {
    [*(a2 + 48) endActivity:?];
    v11 = *(a2 + 112);
    *(a2 + 112) = 0;
  }
}

uint64_t sub_1000A6394(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v24 = *(v8 - 8);
  v9 = *(v24 + 64);
  __chkstk_darwin();
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v22 = *(v12 - 8);
  v23 = v12;
  v13 = *(v22 + 64);
  __chkstk_darwin();
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v4 + 40);
  v17 = *(v16 + 56);
  v18 = swift_allocObject();
  *(v18 + 16) = v16;
  *(v18 + 24) = a1;
  aBlock[4] = a3;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000C8B8;
  aBlock[3] = a4;
  v19 = _Block_copy(aBlock);
  swift_retain_n();
  v20 = v17;
  static DispatchQoS.unspecified.getter();
  v25 = _swiftEmptyArrayStorage;
  sub_10001F8F4(&qword_10058BCC0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10005DC58(&unk_100595270, &unk_1004AEC80);
  sub_10000CADC(&qword_10058BCD0, &unk_100595270, &unk_1004AEC80);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v19);

  (*(v24 + 8))(v11, v8);
  (*(v22 + 8))(v15, v23);
}

uint64_t sub_1000A6698(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v27 = a7;
  v25 = a6;
  v23[1] = a5;
  v24 = a1;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v29 = *(v9 - 8);
  v10 = *(v29 + 64);
  __chkstk_darwin();
  v12 = v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for DispatchQoS();
  v13 = *(v28 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin();
  v16 = v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a3 + 56);
  v17(&v32, a2, a3);
  v26 = *(v32 + 56);

  v17(aBlock, a2, a3);
  v18 = aBlock[0];
  v19 = swift_allocObject();
  *(v19 + 16) = v18;
  *(v19 + 24) = v24;
  aBlock[4] = v25;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000C8B8;
  aBlock[3] = v27;
  v20 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v30 = _swiftEmptyArrayStorage;
  sub_10001F8F4(&qword_10058BCC0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10005DC58(&unk_100595270, &unk_1004AEC80);
  sub_10000CADC(&qword_10058BCD0, &unk_100595270, &unk_1004AEC80);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v21 = v26;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v20);

  (*(v29 + 8))(v12, v9);
  (*(v13 + 8))(v16, v28);
}

uint64_t sub_1000A69CC(uint64_t (*a1)(uint64_t))
{
  v2 = *(v1 + 40);
  v3 = *(v2 + 128);
  if (v3)
  {
    v4 = *(v1 + 40);

    v5 = v3;
  }

  else
  {
    v7 = type metadata accessor for AppleDevice.GatewayMonitor(0);
    v8 = *(v7 + 48);
    v9 = *(v7 + 52);
    swift_allocObject();

    v5 = a1(v10);
    v11 = *(v2 + 128);
  }

  *(v2 + 128) = v5;
}

uint64_t DeviceDriver<>.startGatewayMonitor()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(a2 + 56);
  v8(&v19);
  v9 = v19;
  v18 = v3;
  (v8)(&v17, a1, a2);
  v10 = *(v17 + 128);

  if (!v10)
  {
    v11 = type metadata accessor for AppleDevice.GatewayMonitor(0);
    v16 = v4;
    v12 = *(v11 + 48);
    v13 = *(v11 + 52);
    swift_allocObject();
    v10 = sub_1000B0858(&v16, a1, a3);
  }

  v14 = *(v9 + 128);
  *(v9 + 128) = v10;
}

uint64_t DeviceDriver<>.stopGatewayMonitor()(uint64_t a1, uint64_t a2)
{
  (*(a2 + 56))(&v4);
  v2 = *(v4 + 128);
  *(v4 + 128) = 0;
}

uint64_t DeviceDriver<>.resolveIPForPeer(macAddress:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  (*(a3 + 56))(&v11, a2, a3);
  if (*(v11 + 128))
  {
    v8 = *(v11 + 128);

    v10 = v4;
    sub_1000A0D20(a1 & 0xFFFFFFFFFFFFLL, &v10, a2, a4);
  }
}

uint64_t DeviceDriver<>.resetGatewayIPAddress()(uint64_t a1, uint64_t a2)
{
  (*(a2 + 56))(&v4);
  if (*(v4 + 128))
  {
    v2 = *(v4 + 128);

    sub_1000A0B5C();
  }
}

uint64_t sub_1000A6CEC(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 40);
  v4 = *(v3 + 120);
  if (!v4)
  {

    result = nw_path_create_default_evaluator();
    if (!result)
    {
      goto LABEL_13;
    }

    v8 = result;
    if (qword_10058AA38 != -1)
    {
      swift_once();
    }

    v9 = static OS_dispatch_queue.p2p;
    v10 = swift_allocObject();
    *(v10 + 16) = a1;
    *(v10 + 24) = a2;
    type metadata accessor for AppleDevice.NetworkPathMonitor();
    v11 = swift_allocObject();
    *(v11 + 16) = v8;
    v12 = swift_allocObject();
    *(v12 + 16) = sub_1000B2C0C;
    *(v12 + 24) = v10;
    v21[4] = sub_1000B2C08;
    v21[5] = v12;
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 1107296256;
    v21[2] = sub_1000991C0;
    v21[3] = &unk_10055F848;
    v13 = _Block_copy(v21);
    v14 = v9;
    swift_unknownObjectRetain_n();
    v15 = v14;

    nw_path_evaluator_set_update_handler();
    _Block_release(v13);
    swift_unknownObjectRelease();

    nw_path_evaluator_start();
    swift_unknownObjectRelease();

    v16 = *(v3 + 120);
    *(v3 + 120) = v11;

    v4 = *(v3 + 120);
    if (!v4)
    {
      return 0;
    }
  }

  v17 = *(v4 + 16);

  result = nw_path_evaluator_copy_path();
  if (result)
  {
    v18 = result;

    if (nw_path_get_status(v18) == nw_path_status_satisfied)
    {
      v19 = nw_path_copy_interface();
      if (v19)
      {
        nw_interface_get_name(v19);
        v20 = String.init(cString:)();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        return v20;
      }
    }

    swift_unknownObjectRelease();
    return 0;
  }

  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_1000A6F6C(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 40);
  v4 = *(v3 + 120);
  if (!v4)
  {

    result = nw_path_create_default_evaluator();
    if (!result)
    {
      goto LABEL_13;
    }

    v8 = result;
    if (qword_10058AA38 != -1)
    {
      swift_once();
    }

    v9 = static OS_dispatch_queue.p2p;
    v10 = swift_allocObject();
    *(v10 + 16) = a1;
    *(v10 + 24) = a2;
    type metadata accessor for AppleDevice.NetworkPathMonitor();
    v11 = swift_allocObject();
    *(v11 + 16) = v8;
    v12 = swift_allocObject();
    *(v12 + 16) = sub_1000B2C0C;
    *(v12 + 24) = v10;
    v21[4] = sub_1000B2C08;
    v21[5] = v12;
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 1107296256;
    v21[2] = sub_1000991C0;
    v21[3] = &unk_10055F488;
    v13 = _Block_copy(v21);
    v14 = v9;
    swift_unknownObjectRetain_n();
    v15 = v14;

    nw_path_evaluator_set_update_handler();
    _Block_release(v13);
    swift_unknownObjectRelease();

    nw_path_evaluator_start();
    swift_unknownObjectRelease();

    v16 = *(v3 + 120);
    *(v3 + 120) = v11;

    v4 = *(v3 + 120);
    if (!v4)
    {
      return 0;
    }
  }

  v17 = *(v4 + 16);

  result = nw_path_evaluator_copy_path();
  if (result)
  {
    v18 = result;

    if (nw_path_get_status(v18) == nw_path_status_satisfied)
    {
      v19 = nw_path_copy_interface();
      if (v19)
      {
        nw_interface_get_name(v19);
        v20 = String.init(cString:)();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        return v20;
      }
    }

    swift_unknownObjectRelease();
    return 0;
  }

  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

uint64_t DeviceDriver<>.monitorSystemDefaultPath(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = *(a4 + 56);
  v10(&v32, a3, a4);
  v11 = *(v32 + 120);

  if (v11)
  {
  }

  else
  {
    v32 = v5;
    v10(&v31, a3, a4);
    v12 = v31;
    result = nw_path_create_default_evaluator();
    if (!result)
    {
      goto LABEL_16;
    }

    v14 = result;
    v29 = v12;
    if (qword_10058AA38 != -1)
    {
      swift_once();
    }

    v15 = static OS_dispatch_queue.p2p;
    v16 = swift_allocObject();
    *(v16 + 16) = a1;
    *(v16 + 24) = a2;
    type metadata accessor for AppleDevice.NetworkPathMonitor();
    v28 = swift_allocObject();
    *(v28 + 16) = v14;
    v17 = swift_allocObject();
    *(v17 + 16) = sub_1000B0CF4;
    *(v17 + 24) = v16;
    aBlock[4] = sub_1000B2C08;
    aBlock[5] = v17;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000991C0;
    aBlock[3] = &unk_10055EFD8;
    v18 = _Block_copy(aBlock);
    v19 = v15;
    swift_unknownObjectRetain_n();
    v20 = v19;

    nw_path_evaluator_set_update_handler();
    _Block_release(v18);
    swift_unknownObjectRelease();

    nw_path_evaluator_start();
    swift_unknownObjectRelease();

    v21 = *(v29 + 120);
    *(v29 + 120) = v28;
  }

  aBlock[0] = v5;
  v10(&v32, a3, a4);
  v22 = *(v32 + 120);
  if (!v22)
  {

    return 0;
  }

  v23 = *(v32 + 120);

  v24 = *(v22 + 16);
  result = nw_path_evaluator_copy_path();
  if (result)
  {
    v25 = result;

    if (nw_path_get_status(v25) == nw_path_status_satisfied)
    {
      v26 = nw_path_copy_interface();
      if (v26)
      {
        nw_interface_get_name(v26);
        v27 = String.init(cString:)();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        return v27;
      }
    }

    swift_unknownObjectRelease();
    return 0;
  }

  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_1000A7520(NSObject *a1, void (*a2)(void))
{
  if (nw_path_get_status(a1) != nw_path_status_satisfied)
  {
    return (a2)(0, 0);
  }

  v3 = nw_path_copy_interface();
  if (!v3)
  {
    return (a2)(0, 0);
  }

  nw_interface_get_name(v3);
  v4 = String.init(cString:)();
  a2(v4);
  swift_unknownObjectRelease();
}

uint64_t DeviceDriver<>.stopMonitoringSystemDefaultPath()(uint64_t a1, uint64_t a2)
{
  (*(a2 + 56))(&v4);
  v2 = *(v4 + 120);
  *(v4 + 120) = 0;
}

uint64_t sub_1000A7618(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v48 = a8;
  v55 = a2;
  v56 = a6;
  v54 = a5;
  v52 = a1;
  v53 = a3;
  v14 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v50 = *(v14 - 8);
  v51 = v14;
  v15 = *(v50 + 64);
  __chkstk_darwin();
  v49 = v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(*(type metadata accessor for OS_dispatch_queue.Attributes() - 8) + 64);
  __chkstk_darwin();
  v18 = *(*(type metadata accessor for DispatchQoS() - 8) + 64);
  __chkstk_darwin();
  v19 = v11[5];
  swift_beginAccess();
  sub_100012400(v19 + 72, v57, &qword_10058BA80, &qword_1004818C0);
  v20 = v58;
  sub_100016290(v57, &qword_10058BA80, &qword_1004818C0);
  if (v20)
  {
    sub_10000B02C();
    swift_allocError();
    *v21 = xmmword_100481830;
    *(v21 + 16) = 0;
    (v56)();
  }

  else
  {
    v46 = a4;
    v47 = a11;
    v24 = v11[2];
    v23 = v11[3];

    v25 = sub_100095944(v24, v23);
    v27 = v26;

    if (v27)
    {
      v28 = v25;
    }

    else
    {
      v28 = 0;
    }

    v45 = v28;
    v29 = 0xE000000000000000;
    if (v27)
    {
      v29 = v27;
    }

    v44 = v29;
    v30 = swift_allocObject();
    v30[2] = v56;
    v30[3] = a7;
    v30[4] = v48;
    v30[5] = a9;
    v56 = type metadata accessor for AppleDevice.InternetSharingProviderSession(0);
    v31 = *(v56 + 48);
    v32 = *(v56 + 52);
    v33 = swift_allocObject();

    Logger.init(subsystem:category:)();
    v34 = v33 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A30InternetSharingProviderSession_state;
    *v34 = 0;
    *(v34 + 8) = 0;
    *(v34 + 16) = 2;
    v48 = OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A30InternetSharingProviderSession_internetSharingQueue;
    v43[1] = sub_100018AB4(0, &qword_10058AC60, OS_dispatch_queue_ptr);
    v43[0] = "v16@?0@<OS_nw_path>8";
    static DispatchQoS.unspecified.getter();
    v57[0] = _swiftEmptyArrayStorage;
    sub_10001F8F4(&qword_10058AC68, &type metadata accessor for OS_dispatch_queue.Attributes);
    sub_10005DC58(&qword_10058AC70, &qword_1004AE1F0);
    sub_10000CADC(&qword_10058AC78, &qword_10058AC70, &qword_1004AE1F0);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    (*(v50 + 104))(v49, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v51);
    *(v33 + v48) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    v35 = (v33 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A30InternetSharingProviderSession_sourceInterface);
    v36 = v53;
    v37 = v55;
    *v35 = v52;
    v35[1] = v37;
    v38 = (v33 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A30InternetSharingProviderSession_destinationInterface);
    v39 = v46;
    *v38 = v36;
    v38[1] = v39;
    *(v33 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A30InternetSharingProviderSession_bridgedMode) = v54 & 1;
    v40 = (v33 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A30InternetSharingProviderSession_infraInterfaceName);
    v41 = v44;
    *v40 = v45;
    v40[1] = v41;
    v42 = (v33 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A30InternetSharingProviderSession_stateUpdatedHandler);
    *v42 = v47;
    v42[1] = v30;
    v58 = v56;
    v57[0] = v33;
    swift_beginAccess();

    sub_1000B1B78(v57, v19 + 72, &qword_10058BA80, &qword_1004818C0);
    swift_endAccess();

    sub_100099C3C();
  }
}

uint64_t DeviceDriver<>.startSharingInternet(from:to:useBridging:errorHandler:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, const char *a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v54 = a8;
  v64 = a6;
  v65 = a7;
  v62 = a5;
  v58 = a4;
  v60 = a1;
  v61 = a3;
  v63 = a2;
  v59 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v57 = *(v59 - 8);
  v13 = *(v57 + 64);
  __chkstk_darwin();
  v56 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(*(type metadata accessor for OS_dispatch_queue.Attributes() - 8) + 64);
  __chkstk_darwin();
  v55 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(*(type metadata accessor for DispatchQoS() - 8) + 64);
  __chkstk_darwin();
  v18 = v12;
  v66[0] = v12;
  v19 = *(a11 + 56);
  v19(&v70, a10, a11);
  v20 = v70;
  swift_beginAccess();
  sub_100012400(v20 + 72, v68, &qword_10058BA80, &qword_1004818C0);

  v21 = v69;
  sub_100016290(v68, &qword_10058BA80, &qword_1004818C0);
  if (v21)
  {
    sub_10000B02C();
    swift_allocError();
    *v22 = xmmword_100481830;
    *(v22 + 16) = 0;
    (v64)();
  }

  else
  {
    v48 = a9;
    v68[0] = v18;
    v52 = v18;
    v53 = v19;
    v19(v66, a10, a11);
    v70 = v18;
    v24 = (*(*(a12 + 16) + 40))(a10);
    v26 = sub_100095944(v24, v25);
    v51 = a10;
    v28 = v27;

    if (v28)
    {
      v29 = v26;
    }

    else
    {
      v29 = 0;
    }

    v50 = v29;
    v30 = 0xE000000000000000;
    if (v28)
    {
      v30 = v28;
    }

    v49 = v30;
    v31 = swift_allocObject();
    v32 = v65;
    *(v31 + 2) = v64;
    *(v31 + 3) = v32;
    v33 = v48;
    *(v31 + 4) = v54;
    *(v31 + 5) = v33;
    v64 = type metadata accessor for AppleDevice.InternetSharingProviderSession(0);
    v34 = *(v64 + 48);
    v35 = *(v64 + 52);
    v36 = swift_allocObject();

    Logger.init(subsystem:category:)();
    v37 = v36 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A30InternetSharingProviderSession_state;
    *v37 = 0;
    *(v37 + 8) = 0;
    *(v37 + 16) = 2;
    v65 = OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A30InternetSharingProviderSession_internetSharingQueue;
    v54 = sub_100018AB4(0, &qword_10058AC60, OS_dispatch_queue_ptr);
    v48 = "v16@?0@<OS_nw_path>8";
    static DispatchQoS.unspecified.getter();
    v68[0] = _swiftEmptyArrayStorage;
    sub_10001F8F4(&qword_10058AC68, &type metadata accessor for OS_dispatch_queue.Attributes);
    sub_10005DC58(&qword_10058AC70, &qword_1004AE1F0);
    sub_10000CADC(&qword_10058AC78, &qword_10058AC70, &qword_1004AE1F0);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    (*(v57 + 104))(v56, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v59);
    *(v36 + v65) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    v38 = (v36 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A30InternetSharingProviderSession_sourceInterface);
    v39 = v61;
    v40 = v63;
    *v38 = v60;
    v38[1] = v40;
    v41 = (v36 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A30InternetSharingProviderSession_destinationInterface);
    v42 = v58;
    *v41 = v39;
    v41[1] = v42;
    *(v36 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A30InternetSharingProviderSession_bridgedMode) = v62 & 1;
    v43 = (v36 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A30InternetSharingProviderSession_infraInterfaceName);
    v44 = v49;
    *v43 = v50;
    v43[1] = v44;
    v45 = (v36 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A30InternetSharingProviderSession_stateUpdatedHandler);
    *v45 = sub_1000B0D20;
    v45[1] = v31;
    v70 = v52;

    v53(&v67, v51, a11);
    v46 = v67;
    v69 = v64;
    v68[0] = v36;
    swift_beginAccess();

    sub_1000B1B78(v68, v46 + 72, &qword_10058BA80, &qword_1004818C0);
    swift_endAccess();

    sub_100099C3C();
  }
}

void sub_1000A81D8(uint64_t a1, __int16 a2, char a3, void (*a4)(void), uint64_t a5, void (*a6)(void))
{
  if (a3 == 1)
  {
    sub_10000B02C();
    swift_allocError();
    *v7 = xmmword_1004817F0;
    *(v7 + 16) = 0;
    a4();
  }

  else if (!a3)
  {
    a6(a2 & 0x101);
  }
}

uint64_t sub_1000A8284(unint64_t a1)
{
  v3 = *(v1 + 40);
  swift_beginAccess();
  sub_100012400(v3 + 72, v7, &qword_10058BA80, &qword_1004818C0);
  if (!v8)
  {
    return sub_100016290(v7, &qword_10058BA80, &qword_1004818C0);
  }

  type metadata accessor for AppleDevice.InternetSharingProviderSession(0);
  result = swift_dynamicCast();
  if (result)
  {
    result = v6;
    if (*(v6 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A30InternetSharingProviderSession_state + 16))
    {
    }

    *(v6 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A30InternetSharingProviderSession_bridgedMode);
    if ((a1 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (!HIDWORD(a1))
    {
      v5 = *(v6 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A30InternetSharingProviderSession_state);
      _NETRBClientSetHostCount();
    }

    __break(1u);
  }

  return result;
}

uint64_t DeviceDriver<>.updateInternetSharingRequesterCount(_:)(unint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(a3 + 56))(&v8, a2, a3);
  v4 = v8;
  swift_beginAccess();
  sub_100012400(v4 + 72, v9, &qword_10058BA80, &qword_1004818C0);

  if (!v10)
  {
    return sub_100016290(v9, &qword_10058BA80, &qword_1004818C0);
  }

  type metadata accessor for AppleDevice.InternetSharingProviderSession(0);
  result = swift_dynamicCast();
  if (result)
  {
    result = v7;
    if (*(v7 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A30InternetSharingProviderSession_state + 16))
    {
    }

    *(v7 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A30InternetSharingProviderSession_bridgedMode);
    if ((a1 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (!HIDWORD(a1))
    {
      v6 = *(v7 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A30InternetSharingProviderSession_state);
      _NETRBClientSetHostCount();
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1000A84CC(void (*a1)(void), void (*a2)(void))
{
  v5 = *(v2 + 40);
  swift_beginAccess();
  sub_100012400(v5 + 72, &v7, &qword_10058BA80, &qword_1004818C0);
  if (*(&v8 + 1))
  {
    a1(0);
    if (swift_dynamicCast())
    {
      a2();
    }
  }

  else
  {
    sub_100016290(&v7, &qword_10058BA80, &qword_1004818C0);
  }

  v7 = 0u;
  v8 = 0u;
  swift_beginAccess();

  sub_1000B1B78(&v7, v5 + 72, &qword_10058BA80, &qword_1004818C0);
  swift_endAccess();
}

uint64_t sub_1000A88EC(uint64_t result, uint64_t a2, char a3, void (*a4)(void), uint64_t a5, uint64_t (*a6)(void))
{
  if (a3 == 1)
  {
    sub_10000B02C();
    swift_allocError();
    *v7 = xmmword_1004817F0;
    *(v7 + 16) = 0;
    a4();
  }

  else if (!a3 && (result & 1) != 0)
  {
    return a6();
  }

  return result;
}

uint64_t sub_1000A89C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), void (*a6)(void))
{
  v9 = v6;
  v12 = *(a2 + 56);
  v12(&v17);
  v13 = v17;
  swift_beginAccess();
  sub_100012400(v13 + 72, &v18, &qword_10058BA80, &qword_1004818C0);

  if (*(&v19 + 1))
  {
    a5(0);
    if (swift_dynamicCast())
    {
      a6();
    }
  }

  else
  {
    sub_100016290(&v18, &qword_10058BA80, &qword_1004818C0);
  }

  v17 = v9;
  (v12)(&v16, a1, a2);
  v14 = v16;
  v18 = 0u;
  v19 = 0u;
  swift_beginAccess();
  sub_1000B1B78(&v18, v14 + 72, &qword_10058BA80, &qword_1004818C0);
  swift_endAccess();
}

void sub_1000A8B40()
{
  v1 = *(v0 + 40);
  swift_beginAccess();
  sub_100012400(v1 + 72, v8, &qword_10058BA80, &qword_1004818C0);
  if (v9)
  {
    type metadata accessor for AppleDevice.InternetSharingRequesterSession(0);
    if (swift_dynamicCast())
    {
      if (qword_10058A758 != -1)
      {
        swift_once();
      }

      v2 = qword_10058BC80;
      v3 = [objc_allocWithZone(WiFiUsageLQMUserSample) init];
      v4 = *(v7 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A31InternetSharingRequesterSession_interface);
      v5 = *(v7 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A31InternetSharingRequesterSession_interface + 8);
      v6 = String._bridgeToObjectiveC()();
      [v2 updateLinkQuality:v3 forInterface:v6 supportsLinkRecommendations:0];
    }
  }

  else
  {
    sub_100016290(v8, &qword_10058BA80, &qword_1004818C0);
  }
}

void DeviceDriver<>.performLinkTest()(uint64_t a1, uint64_t a2)
{
  (*(a2 + 56))(&v9);
  v2 = v9;
  swift_beginAccess();
  sub_100012400(v2 + 72, v10, &qword_10058BA80, &qword_1004818C0);

  if (v11)
  {
    type metadata accessor for AppleDevice.InternetSharingRequesterSession(0);
    if (swift_dynamicCast())
    {
      if (qword_10058A758 != -1)
      {
        swift_once();
      }

      v3 = qword_10058BC80;
      v4 = [objc_allocWithZone(WiFiUsageLQMUserSample) init];
      v5 = *(v8 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A31InternetSharingRequesterSession_interface);
      v6 = *(v8 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A31InternetSharingRequesterSession_interface + 8);
      v7 = String._bridgeToObjectiveC()();
      [v3 updateLinkQuality:v4 forInterface:v7 supportsLinkRecommendations:0];
    }
  }

  else
  {
    sub_100016290(v10, &qword_10058BA80, &qword_1004818C0);
  }
}

uint64_t sub_1000A8E00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v96 = a3;
  v97 = a4;
  v95 = a2;
  v6 = *(a1 + 8);
  v7 = *(*(sub_10005DC58(&qword_10058BDF0, &qword_100481968) - 8) + 64);
  __chkstk_darwin();
  v99 = &v85 - v8;
  v9 = type metadata accessor for URL();
  v100 = *(v9 - 8);
  v101 = v9;
  v10 = *(v100 + 64);
  __chkstk_darwin();
  v98 = &v85 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Logger();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin();
  v16 = &v85 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = v15;
  __chkstk_darwin();
  v18 = &v85 - v17;
  v19 = *(v4 + 40) + OBJC_IVAR____TtC7CoreP2P11AppleDevice_logger;
  v92 = *(v13 + 16);
  v93 = v13 + 16;
  v92(&v85 - v17, v19, v12);

  v20 = sub_10008DF90();

  if (!v20)
  {
    sub_10000B02C();
    swift_allocError();
    *v57 = xmmword_1004817E0;
    *(v57 + 16) = 0;
    swift_willThrow();
    return (*(v13 + 8))(v18, v12);
  }

  v89 = v16;
  v22 = *a1;
  v21 = *(a1 + 8);
  if ((*(a1 + 32) & 1) == 0)
  {
    v90 = *(a1 + 8);

    v58 = Logger.logObject.getter();
    v59 = static os_log_type_t.info.getter();
    sub_1000B0D98(a1);
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v105 = v18;
      v61 = v60;
      v62 = v20;
      v63 = swift_slowAlloc();
      v106 = v63;
      *v61 = 136315138;
      *(v61 + 4) = sub_100002320(v22, v90, &v106);
      _os_log_impl(&_mh_execute_header, v58, v59, "Would have displayed %s on HUD", v61, 0xCu);
      sub_100002A00(v63);

      v64 = *(v13 + 8);
      v65 = v105;
    }

    else
    {

      v64 = *(v13 + 8);
      v65 = v18;
    }

    return v64(v65, v12);
  }

  v105 = v18;
  v106 = 0;
  v88 = v13;
  v23 = v20;
  v24 = *(a1 + 16);
  v25 = *(a1 + 24);
  v104 = v24;
  v107 = 0xE000000000000000;
  v26 = v21;

  _StringGuts.grow(_:)(25);

  v106 = 0xD000000000000017;
  v107 = 0x80000001004B75A0;
  v27._countAndFlagsBits = v22;
  v27._object = v26;
  String.append(_:)(v27);
  v28 = String._bridgeToObjectiveC()();

  v29 = [v23 askToLaunchTapToRadarWithMessage:v28];

  if ((v29 & 1) == 0)
  {

    sub_10000B02C();
    swift_allocError();
    *v66 = xmmword_100481840;
    *(v66 + 16) = 0;
    swift_willThrow();

    v13 = v88;
    v18 = v105;
    return (*(v13 + 8))(v18, v12);
  }

  v86 = v23;
  v87 = v12;
  sub_10005DC58(&qword_10058BDF8, &qword_100481970);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100481850;
  *(inited + 32) = 0x656C746954;
  *(inited + 40) = 0xE500000000000000;
  v106 = 0;
  v107 = 0xE000000000000000;
  _StringGuts.grow(_:)(22);

  v106 = 0xD000000000000014;
  v107 = 0x80000001004B75C0;
  v85 = v22;
  v31._countAndFlagsBits = v22;
  v90 = v26;
  v31._object = v26;
  String.append(_:)(v31);
  v32 = v107;
  *(inited + 48) = v106;
  *(inited + 56) = v32;
  *(inited + 64) = 0x676169446F747541;
  *(inited + 72) = 0xEF73636974736F6ELL;
  *(inited + 80) = 0x656E6F6870;
  *(inited + 88) = 0xE500000000000000;
  *(inited + 96) = 0x7470697263736544;
  *(inited + 104) = 0xEB000000006E6F69;
  *(inited + 112) = v104;
  *(inited + 120) = v25;
  *(inited + 128) = 0x6E656E6F706D6F43;
  *(inited + 136) = 0xEB00000000444974;
  *(inited + 144) = 0x313433373535;
  *(inited + 152) = 0xE600000000000000;
  strcpy((inited + 160), "ComponentName");
  *(inited + 174) = -4864;
  *(inited + 176) = 0x5032502069466957;
  *(inited + 184) = 0xE800000000000000;
  *(inited + 192) = 0xD000000000000010;
  *(inited + 200) = 0x80000001004B75E0;
  *(inited + 208) = 5459817;
  *(inited + 216) = 0xE300000000000000;
  strcpy((inited + 224), "Classification");
  *(inited + 239) = -18;
  *(inited + 240) = 0x2073756F69726553;
  *(inited + 248) = 0xEB00000000677542;
  *(inited + 256) = 0xD000000000000014;
  *(inited + 264) = 0x80000001004B7600;
  *(inited + 272) = 0xD000000000000023;
  *(inited + 280) = 0x80000001004B7620;
  v33 = sub_1000824E4(inited);
  swift_setDeallocating();
  sub_10005DC58(&qword_10058BCB8, &qword_1004818D0);
  swift_arrayDestroy();
  v34 = v112;
  v35 = sub_1000AA480(v33);
  v112 = v34;

  v36 = v35 + 64;
  v37 = 1 << *(v35 + 32);
  v38 = -1;
  if (v37 < 64)
  {
    v38 = ~(-1 << v37);
  }

  v39 = v38 & *(v35 + 64);
  v40 = 0x80000001004B7650;
  v41 = (v37 + 63) >> 6;
  v91 = v35;

  v43 = 0;
  v44 = 0xD000000000000013;
  v18 = v105;
  if (v39)
  {
    while (1)
    {
      v45 = v43;
LABEL_12:
      v46 = __clz(__rbit64(v39));
      v39 &= v39 - 1;
      v47 = (v45 << 10) | (16 * v46);
      v48 = (*(v91 + 48) + v47);
      v49 = *v48;
      v50 = v48[1];
      v51 = (*(v91 + 56) + v47);
      v52 = v51[1];
      v102 = *v51;
      v103 = v50;
      v106 = v44;
      v107 = v40;

      v53._countAndFlagsBits = v49;
      v53._object = v50;
      String.append(_:)(v53);
      v104 = v40;

      v54._countAndFlagsBits = 61;
      v54._object = 0xE100000000000000;
      String.append(_:)(v54);

      v55._countAndFlagsBits = v102;
      v55._object = v52;
      String.append(_:)(v55);

      v56._countAndFlagsBits = 38;
      v56._object = 0xE100000000000000;
      String.append(_:)(v56);

      v44 = v106;
      v40 = v107;
      v18 = v105;
      if (!v39)
      {
        goto LABEL_8;
      }
    }
  }

  while (1)
  {
LABEL_8:
    v45 = v43 + 1;
    if (__OFADD__(v43, 1))
    {
      __break(1u);
      return result;
    }

    if (v45 >= v41)
    {
      break;
    }

    v39 = *(v36 + 8 * v45);
    ++v43;
    if (v39)
    {
      v43 = v45;
      goto LABEL_12;
    }
  }

  String.index(before:)();
  String.subscript.getter();

  static String._fromSubstring(_:)();

  v67 = v99;
  URL.init(string:)();

  v68 = v100;
  v69 = v101;
  if ((*(v100 + 48))(v67, 1, v101) == 1)
  {

    sub_100016290(v67, &qword_10058BDF0, &qword_100481968);
    sub_10000B02C();
    swift_allocError();
    *v70 = xmmword_100481860;
    *(v70 + 16) = 0;
    swift_willThrow();

    v12 = v87;
    v13 = v88;
    return (*(v13 + 8))(v18, v12);
  }

  (*(v68 + 32))(v98, v67, v69);
  URL._bridgeToObjectiveC()(v71);
  v104 = v72;
  v73 = v89;
  v74 = v87;
  v92(v89, v18, v87);
  v75 = v88;
  v76 = (*(v88 + 80) + 16) & ~*(v88 + 80);
  v77 = (v94 + v76 + 7) & 0xFFFFFFFFFFFFFFF8;
  v78 = swift_allocObject();
  (*(v75 + 32))(v78 + v76, v73, v74);
  v79 = (v78 + v77);
  v80 = v90;
  *v79 = v85;
  v79[1] = v80;
  v110 = v96;
  v111 = v78;
  v106 = _NSConcreteStackBlock;
  v107 = 1107296256;
  v108 = sub_1000AAA78;
  v109 = v97;
  v81 = _Block_copy(&v106);

  v82 = v86;
  v83 = v104;
  v84 = [v86 tapToRadarWithURL:v104 completionHandler:v81];
  _Block_release(v81);

  (*(v68 + 8))(v98, v69);
  return (*(v75 + 8))(v105, v74);
}

uint64_t DeviceDriver<>.report(softError:)(uint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v101 = a1;
  v100 = a1[1];
  v6 = *(*(sub_10005DC58(&qword_10058BDF0, &qword_100481968) - 8) + 64);
  __chkstk_darwin();
  v97 = &v87 - v7;
  v8 = type metadata accessor for URL();
  v98 = *(v8 - 8);
  v99 = v8;
  v9 = *(v98 + 64);
  __chkstk_darwin();
  v96 = &v87 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin();
  v94 = v14;
  v95 = &v87 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v16 = &v87 - v15;
  v105 = a4;
  v17 = a4[7];
  v17(&v106, a2, a4);
  v103 = v12;
  v19 = *(v12 + 16);
  v18 = v12 + 16;
  v112 = v16;
  v104 = v11;
  v93 = v19;
  v19(v16, v106 + OBJC_IVAR____TtC7CoreP2P11AppleDevice_logger, v11);

  v17(&v106, a2, v105);
  v20 = sub_10008DF90();

  if (!v20)
  {
    sub_10000B02C();
    swift_allocError();
    *v57 = xmmword_1004817E0;
    *(v57 + 16) = 0;
    swift_willThrow();
    return (*(v103 + 8))(v112, v104);
  }

  v21 = v101;
  v22 = *v101;
  v23 = *(v101 + 8);
  if ((*(v101 + 32) & 1) == 0)
  {
    v58 = *(v101 + 8);

    v59 = v112;
    v60 = Logger.logObject.getter();
    v61 = static os_log_type_t.info.getter();
    sub_1000B0D98(v21);
    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v64 = v22;
      v65 = v63;
      v106 = v63;
      *v62 = 136315138;
      *(v62 + 4) = sub_100002320(v64, v58, &v106);
      _os_log_impl(&_mh_execute_header, v60, v61, "Would have displayed %s on HUD", v62, 0xCu);
      sub_100002A00(v65);
    }

    return (*(v103 + 8))(v59, v104);
  }

  v91 = v18;
  v25 = *(v101 + 16);
  v24 = *(v101 + 24);
  v106 = 0;
  v107 = 0xE000000000000000;

  _StringGuts.grow(_:)(25);

  v106 = 0xD000000000000017;
  v107 = 0x80000001004B75A0;
  v26._countAndFlagsBits = v22;
  v26._object = v23;
  String.append(_:)(v26);
  v27 = v22;
  v28 = String._bridgeToObjectiveC()();

  v29 = [v20 askToLaunchTapToRadarWithMessage:v28];

  if (!v29)
  {

    sub_10000B02C();
    swift_allocError();
    *v66 = xmmword_100481840;
    *(v66 + 16) = 0;
    swift_willThrow();

    return (*(v103 + 8))(v112, v104);
  }

  v90 = v20;
  sub_10005DC58(&qword_10058BDF8, &qword_100481970);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100481850;
  *(inited + 32) = 0x656C746954;
  *(inited + 40) = 0xE500000000000000;
  v106 = 0;
  v107 = 0xE000000000000000;
  _StringGuts.grow(_:)(22);

  v106 = 0xD000000000000014;
  v107 = 0x80000001004B75C0;
  v88 = v27;
  v89 = v23;
  v31._countAndFlagsBits = v27;
  v31._object = v23;
  String.append(_:)(v31);
  v32 = v107;
  *(inited + 48) = v106;
  *(inited + 56) = v32;
  *(inited + 64) = 0x676169446F747541;
  *(inited + 72) = 0xEF73636974736F6ELL;
  *(inited + 80) = 0x656E6F6870;
  *(inited + 88) = 0xE500000000000000;
  *(inited + 96) = 0x7470697263736544;
  *(inited + 104) = 0xEB000000006E6F69;
  *(inited + 112) = v25;
  *(inited + 120) = v24;
  *(inited + 128) = 0x6E656E6F706D6F43;
  *(inited + 136) = 0xEB00000000444974;
  *(inited + 144) = 0x313433373535;
  *(inited + 152) = 0xE600000000000000;
  strcpy((inited + 160), "ComponentName");
  *(inited + 174) = -4864;
  *(inited + 176) = 0x5032502069466957;
  *(inited + 184) = 0xE800000000000000;
  *(inited + 192) = 0xD000000000000010;
  *(inited + 200) = 0x80000001004B75E0;
  *(inited + 208) = 5459817;
  *(inited + 216) = 0xE300000000000000;
  strcpy((inited + 224), "Classification");
  *(inited + 239) = -18;
  *(inited + 240) = 0x2073756F69726553;
  *(inited + 248) = 0xEB00000000677542;
  *(inited + 256) = 0xD000000000000014;
  *(inited + 264) = 0x80000001004B7600;
  *(inited + 272) = 0xD000000000000023;
  *(inited + 280) = 0x80000001004B7620;
  v33 = sub_1000824E4(inited);
  swift_setDeallocating();
  sub_10005DC58(&qword_10058BCB8, &qword_1004818D0);
  swift_arrayDestroy();
  v34 = v102;
  v35 = sub_1000AA480(v33);
  v102 = v34;

  v36 = v35 + 64;
  v37 = 1 << *(v35 + 32);
  v38 = -1;
  if (v37 < 64)
  {
    v38 = ~(-1 << v37);
  }

  v39 = v38 & *(v35 + 64);
  v40 = 0x80000001004B7650;
  v41 = (v37 + 63) >> 6;
  v92 = v35;

  v43 = 0;
  v44 = 0xD000000000000013;
  if (v39)
  {
    while (1)
    {
      v45 = v43;
LABEL_12:
      v46 = __clz(__rbit64(v39));
      v39 &= v39 - 1;
      v47 = (v45 << 10) | (16 * v46);
      v48 = (*(v92 + 48) + v47);
      v49 = *v48;
      v50 = v48[1];
      v51 = (*(v92 + 56) + v47);
      v52 = v51[1];
      v100 = *v51;
      v101 = v50;
      v106 = v44;
      v107 = v40;

      v53._countAndFlagsBits = v49;
      v53._object = v50;
      String.append(_:)(v53);
      v105 = v40;

      v54._countAndFlagsBits = 61;
      v54._object = 0xE100000000000000;
      String.append(_:)(v54);

      v55._countAndFlagsBits = v100;
      v55._object = v52;
      String.append(_:)(v55);

      v56._countAndFlagsBits = 38;
      v56._object = 0xE100000000000000;
      String.append(_:)(v56);

      v44 = v106;
      v40 = v107;
      if (!v39)
      {
        goto LABEL_8;
      }
    }
  }

  while (1)
  {
LABEL_8:
    v45 = v43 + 1;
    if (__OFADD__(v43, 1))
    {
      __break(1u);
      return result;
    }

    if (v45 >= v41)
    {
      break;
    }

    v39 = *(v36 + 8 * v45);
    ++v43;
    if (v39)
    {
      v43 = v45;
      goto LABEL_12;
    }
  }

  String.index(before:)();
  String.subscript.getter();

  static String._fromSubstring(_:)();

  v67 = v97;
  URL.init(string:)();

  v68 = v98;
  v69 = v99;
  if ((*(v98 + 48))(v67, 1, v99) == 1)
  {

    sub_100016290(v67, &qword_10058BDF0, &qword_100481968);
    sub_10000B02C();
    swift_allocError();
    *v70 = xmmword_100481860;
    *(v70 + 16) = 0;
    swift_willThrow();

    return (*(v103 + 8))(v112, v104);
  }

  v71 = v96;
  (*(v68 + 32))(v96, v67, v69);
  v72 = v68;
  URL._bridgeToObjectiveC()(v73);
  v105 = v74;
  v75 = v95;
  v76 = v104;
  v93(v95, v112, v104);
  v77 = v103;
  v78 = (*(v103 + 80) + 16) & ~*(v103 + 80);
  v79 = (v94 + v78 + 7) & 0xFFFFFFFFFFFFFFF8;
  v80 = swift_allocObject();
  (*(v77 + 32))(v80 + v78, v75, v76);
  v81 = (v80 + v79);
  v82 = v89;
  *v81 = v88;
  v81[1] = v82;
  v110 = sub_1000B0DEC;
  v111 = v80;
  v106 = _NSConcreteStackBlock;
  v107 = 1107296256;
  v108 = sub_1000AAA78;
  v109 = &unk_10055F078;
  v83 = _Block_copy(&v106);

  v84 = v90;
  v85 = v105;
  v86 = [v90 tapToRadarWithURL:v105 completionHandler:v83];
  _Block_release(v83);

  (*(v72 + 8))(v71, v99);
  return (*(v77 + 8))(v112, v76);
}