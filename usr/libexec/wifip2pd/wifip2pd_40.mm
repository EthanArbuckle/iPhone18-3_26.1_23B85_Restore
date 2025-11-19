void sub_100319568(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  v96 = a2;
  v5 = *v2;
  v90 = type metadata accessor for DispatchTimeInterval();
  v89 = *(v90 - 8);
  v6 = *(v89 + 64);
  __chkstk_darwin();
  v92 = &v77[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v91 = &v77[-v8];
  __chkstk_darwin();
  v99 = &v77[-v9];
  v10 = type metadata accessor for DispatchTime();
  v97 = *(v10 - 8);
  v11 = v97[8];
  __chkstk_darwin();
  v13 = &v77[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v95 = *(v5 + 88);
  v14 = *(v95 + 8);
  v15 = *(v5 + 80);
  swift_getAssociatedTypeWitness();
  v94 = v15;
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v16 = type metadata accessor for Preferences();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin();
  v20 = &v77[-v19];
  v93 = qword_10059B9A8;
  v21 = *(v3 + qword_10059B9A8);
  swift_beginAccess();
  if (*(*(v21 + 24) + 16))
  {

    sub_100041DE8(a1 & 0xFFFFFFFFFFFFLL);
    v23 = v22;

    if (v23)
    {
      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        v27 = "Cannot add multicast receiver since receiver is already added";
LABEL_8:
        _os_log_impl(&_mh_execute_header, v24, v25, v27, v26, 2u);

        goto LABEL_9;
      }

      goto LABEL_9;
    }
  }

  v98 = a1;
  swift_beginAccess();
  v28 = sub_10005DC58(&qword_100596588, &qword_1004B0C08);
  IDPool.availableID()(v28, v100);
  swift_endAccess();
  if ((v100[0] & 0x10000) != 0)
  {
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      v27 = "Cannot add more multicast receiver because no more instance IDs were available";
      goto LABEL_8;
    }

LABEL_9:

    return;
  }

  v29 = LOWORD(v100[0]);
  sub_10031771C();
  v30 = Preferences.multicastRateAdapterHeartBeatInterval.getter(v16);
  (*(v17 + 8))(v20, v16);
  v31 = 3 * v30;
  if ((v31 & 0xFFFFFFFF00000000) != 0)
  {
    __break(1u);
    goto LABEL_29;
  }

  v32 = v98;
  v33 = v98 >> 40;
  v34 = HIDWORD(v98);
  v87 = v10;
  v35 = v98 >> 24;
  v36 = v98 >> 16;
  v37 = qword_10059B9A0;
  v85 = v13;
  v38 = v98 >> 8;
  v88 = v31;
  swift_beginAccess();
  v84 = v37;
  sub_10031CEF0(v3 + v37, &v109);
  v39 = v110;
  v86 = v110 != 0;
  sub_100016290(&v109, &unk_100595C70, &qword_1004B0C00);
  v40 = type metadata accessor for MulticastPeer(0);
  v41 = *(v40 + 48);
  v42 = *(v40 + 52);
  v43 = swift_allocObject();
  *(v43 + 16) = 0;
  *(v43 + 50) = 0;
  *(v43 + 56) = 0;
  *(v43 + 64) = 0;
  *(v43 + OBJC_IVAR____TtC12wifip2pdCore13MulticastPeer_receiverHeartBeatTimer) = 0;
  *(v43 + OBJC_IVAR____TtC12wifip2pdCore13MulticastPeer_heartbeatRequestCounter) = 0;
  v78 = v29;
  *(v43 + 40) = v29;
  *(v43 + 42) = v32;
  v79 = v38;
  *(v43 + 43) = BYTE1(v32);
  v80 = v36;
  *(v43 + 44) = BYTE2(v32);
  v81 = v35;
  *(v43 + 45) = BYTE3(v32);
  v82 = v34;
  *(v43 + 46) = BYTE4(v32);
  v83 = v33;
  *(v43 + 47) = BYTE5(v32);
  v44 = type metadata accessor for P2PTimer();

  v45 = v85;
  variable initialization expression of AWDLPeer.lastUpdated();
  (v97[4])(v43 + OBJC_IVAR____TtC12wifip2pdCore13MulticastPeer_lastModified, v45, v87);
  v46 = v88;
  *(v43 + 48) = 0;
  *(v43 + 50) = 256;
  *(v43 + 24) = sub_10031D084;
  *(v43 + 32) = v3;
  *(v43 + OBJC_IVAR____TtC12wifip2pdCore13MulticastPeer_receiverHeartBeatIntervalInSeconds) = v46;
  *(v43 + 49) = v86;
  if (v39)
  {
    v47 = 1000 * v46;
    if ((v47 & 0xFFFFFFFF00000000) != 0)
    {
LABEL_30:
      __break(1u);
      return;
    }

    *v99 = v47;
    v48 = enum case for DispatchTimeInterval.milliseconds(_:);
    v49 = *(v89 + 104);
    v50 = v90;
    v49();

    v97 = *OS_dispatch_queue.nan.unsafeMutableAddressor();
    v51 = swift_allocObject();
    swift_weakInit();
    v52 = v91;
    (v49)(v91, enum case for DispatchTimeInterval.never(_:), v50);
    v53 = v92;
    *v92 = 100;
    (v49)(v53, v48, v50);
    v54 = *(v44 + 48);
    v55 = *(v44 + 52);
    swift_allocObject();
    v56 = v97;

    v57 = P2PTimer.init(deadlineAfter:on:repeating:leeway:_:)(v99, v56, v52, v53, sub_10031D07C, v51);

    v58 = *(v43 + OBJC_IVAR____TtC12wifip2pdCore13MulticastPeer_receiverHeartBeatTimer);
    *(v43 + OBJC_IVAR____TtC12wifip2pdCore13MulticastPeer_receiverHeartBeatTimer) = v57;
  }

  v100[0] = v96;
  v59 = v98;
  v103 = v98;
  v104 = v79;
  v105 = v80;
  v106 = v81;
  v107 = v82;
  v108 = v83;
  swift_beginAccess();
  type metadata accessor for NANDeviceLink();
  sub_1002CAFC4();
  type metadata accessor for Dictionary();

  Dictionary.subscript.setter();
  swift_endAccess();
  v60 = *(v3 + v93);

  sub_1003354D4(v43);

  v61 = v84;
  sub_10031CEF0(v3 + v84, &v109);
  if (v110)
  {
    sub_10002B154(&v109, v100);
    sub_100016290(&v109, &unk_100595C70, &qword_1004B0C00);
    v62 = v101;
    v63 = v102;
    sub_100029B34(v100, v101);
    (*(v63 + 16))(v43, v62, v63);
    sub_100002A00(v100);
  }

  else
  {
    sub_100016290(&v109, &unk_100595C70, &qword_1004B0C00);
  }

  v64 = Logger.logObject.getter();
  v65 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v64, v65))
  {
    v66 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    v109 = v67;
    *v66 = 136315394;
    v68 = WiFiAddress.description.getter(v59 & 0xFFFFFFFFFFFFLL);
    v70 = sub_100002320(v68, v69, &v109);

    *(v66 + 4) = v70;
    *(v66 + 12) = 512;
    *(v66 + 14) = v78;
    _os_log_impl(&_mh_execute_header, v64, v65, "Multicast peer %s added with instance ID %hu", v66, 0x10u);
    sub_100002A00(v67);
  }

  v71 = *(v3 + qword_1005963C0) + 1;
  if ((v71 & 0x10000) != 0)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  *(v3 + qword_1005963C0) = v71;
  if (v71 == 1)
  {
    v72 = Logger.logObject.getter();
    v73 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      *v74 = 0;
      _os_log_impl(&_mh_execute_header, v72, v73, "Starting multicast rate adaptor", v74, 2u);
    }

    sub_10031CEF0(v3 + v61, &v109);
    if (v110)
    {
      sub_10002B154(&v109, v100);
      sub_100016290(&v109, &unk_100595C70, &qword_1004B0C00);
      v75 = v101;
      v76 = v102;
      sub_100029B34(v100, v101);
      (*(v76 + 32))(v75, v76);

      sub_100002A00(v100);
    }

    else
    {

      sub_100016290(&v109, &unk_100595C70, &qword_1004B0C00);
    }
  }

  else
  {
  }
}

BOOL sub_10031A0E8()
{
  v1 = *v0;
  v2 = qword_100596408;
  swift_beginAccess();
  v3 = *(v0 + v2);
  v4 = *(v1 + 80);
  v5 = *(v1 + 88);
  type metadata accessor for NANDeviceLink();
  sub_1002CAFC4();

  LOBYTE(v1) = Dictionary.isEmpty.getter();

  return (v1 & 1) == 0;
}

void sub_10031A1A4()
{
  v1 = qword_1005963D8;
  if ((*(v0 + qword_1005963D8) & 1) == 0)
  {
    v2 = v0;
    if (*(v0 + qword_1005963C8 + 6) & 1) != 0 || (v3 = (v0 + qword_1005963D0), (*(v0 + qword_1005963D0 + 6)))
    {
      *(v0 + qword_1005963D8) = 0;
      oslog = Logger.logObject.getter();
      v4 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(oslog, v4))
      {
        v5 = swift_slowAlloc();
        *v5 = 0;
        _os_log_impl(&_mh_execute_header, oslog, v4, "Multicast session not started, nothing to restore", v5, 2u);
      }
    }

    else
    {
      v6 = *(v0 + qword_1005963C8) | (*(v0 + qword_1005963C8 + 4) << 32);
      v7 = *(v3 + 2);
      v8 = *v3;
      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v9, v10))
      {
        osloga = v7;
        v11 = swift_slowAlloc();
        v21 = v8;
        v12 = swift_slowAlloc();
        v24 = v12;
        *v11 = 136315138;
        v13 = WiFiAddress.description.getter(v6 & 0xFFFFFFFFFFFFLL);
        v15 = sub_100002320(v13, v14, &v24);

        *(v11 + 4) = v15;
        _os_log_impl(&_mh_execute_header, v9, v10, "restoring GCR session with %s", v11, 0xCu);
        sub_100002A00(v12);
        v8 = v21;

        v7 = osloga;
      }

      v16 = v8 | (v7 << 32);
      v17 = (v2 + qword_1005963E8);
      if (*(v2 + qword_1005963E8 + 2))
      {
        v18 = 1;
      }

      else
      {
        v19 = *(v2 + qword_10059B990);
        v20 = *v17;
        swift_unownedRetainStrong();
        sub_10040DE8C();

        v18 = *(v17 + 2);
      }

      sub_1003182E8(v6 & 0xFFFFFFFFFFFFLL, v16 & 0xFFFFFFFFFFFFLL, *(v2 + qword_1005963E0) | (*(v2 + qword_1005963E0 + 4) << 32), *v17 | (v18 << 16));
      *(v2 + v1) = 1;
    }
  }
}

uint64_t sub_10031A4D0()
{
  v1 = v0;
  v2 = *(*(*v0 + 88) + 8);
  v3 = *(*v0 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v8 = v22 - v7 + 24;
  if (*(v1 + qword_1005963C8 + 6) & 1) != 0 || (*(v1 + qword_1005963D0 + 6))
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
    v16 = *(v1 + qword_1005963D0) | (*(v1 + qword_1005963D0 + 4) << 32);
    v17 = *(v1 + qword_1005963C8) | (*(v1 + qword_1005963C8 + 4) << 32);
    v18 = *(v1 + qword_10059B990);
    swift_unownedRetainStrong();
    v19 = *(*v18 + 96);
    swift_beginAccess();
    (*(v5 + 16))(v8, v18 + v19, AssociatedTypeWitness);

    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    (*(AssociatedConformanceWitness + 448))(v17, v16, AssociatedTypeWitness, AssociatedConformanceWitness);
    (*(v5 + 8))(v8, AssociatedTypeWitness);
  }

  *(v1 + qword_1005963D8) = 0;
  v12 = qword_10059B9A0;
  swift_beginAccess();
  sub_10031CEF0(v1 + v12, v25);
  if (!v26)
  {
    return sub_100016290(v25, &unk_100595C70, &qword_1004B0C00);
  }

  sub_10002B154(v25, v22);
  sub_100016290(v25, &unk_100595C70, &qword_1004B0C00);
  v13 = v23;
  v14 = v24;
  sub_100029B34(v22, v23);
  (*(v14 + 40))(v13, v14);
  return sub_100002A00(v22);
}

uint64_t sub_10031A918(uint64_t a1)
{
  v3 = *(*(type metadata accessor for DriverEvent(0) - 8) + 64);
  __chkstk_darwin();
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = &v23 - v6;
  __chkstk_darwin();
  v9 = &v23 - v8;
  sub_10031CFB4(a1, &v23 - v8, type metadata accessor for DriverEvent);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 6)
  {
    v20 = qword_100596428;
    v21 = *(v1 + qword_100596428) | 2;
  }

  else
  {
    if (EnumCaseMultiPayload != 4)
    {
LABEL_7:
      sub_10031CFB4(a1, v5, type metadata accessor for DriverEvent);
      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v24 = v15;
        *v14 = 136315138;
        v16 = DriverEvent.description.getter();
        v18 = v17;
        sub_10031D01C(v5, type metadata accessor for DriverEvent);
        v19 = sub_100002320(v16, v18, &v24);

        *(v14 + 4) = v19;
        _os_log_impl(&_mh_execute_header, v12, v13, "received an unexpected %s", v14, 0xCu);
        sub_100002A00(v15);
      }

      else
      {

        sub_10031D01C(v5, type metadata accessor for DriverEvent);
      }

      return sub_10031D01C(v9, type metadata accessor for DriverEvent);
    }

    sub_10031CFB4(v9, v7, type metadata accessor for DriverEvent);
    v11 = *v7;
    if (v11 == 2)
    {
LABEL_6:
      *(v1 + qword_100596428) = 0;
      *(v1 + qword_1005963D8) = 0;
      return sub_10031D01C(v9, type metadata accessor for DriverEvent);
    }

    if (v11 != 1)
    {
      if (!*v7)
      {
        goto LABEL_6;
      }

      goto LABEL_7;
    }

    v20 = qword_100596428;
    v21 = *(v1 + qword_100596428) | 1;
  }

  *(v1 + v20) = v21;
  if (v21 == 3)
  {
    sub_10031A1A4();
  }

  return sub_10031D01C(v9, type metadata accessor for DriverEvent);
}

CoreP2P::NANTimeSynchronizationFunction sub_10031AC04(unsigned int *a1)
{
  v3 = *v1;
  v181 = *(*v1 + 88);
  v4 = *(v181 + 8);
  v180 = *(v3 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin();
  v9 = &v158 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v179 = &v158 - v10;
  v11 = type metadata accessor for NANAttribute.CustomDeviceInformation(0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin();
  v14 = &v158 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v16 = &v158 - v15;
  v17 = *(*(type metadata accessor for DispatchTime() - 8) + 64);
  __chkstk_darwin();
  result.value = __chkstk_darwin();
  v23 = *a1 | (*(a1 + 2) << 32);
  if ((v23 & 0xFF00000000) == 0x300000000)
  {
    return result;
  }

  v24 = a1;
  v25 = a1[6];
  if (!v25)
  {
    return result;
  }

  v26 = *(a1 + 15);
  v27 = *(v26 + 16);
  if (!v27)
  {
    return result;
  }

  v28 = HIDWORD(v23);
  result.value = *(v24 + 104);
  v29.index = *(v24 + 112);
  v30 = *(v1 + qword_1005963E0) | (*(v1 + qword_1005963E0 + 4) << 32);
  if ((v30 & 0xFF00000000) == 0x300000000)
  {
    if (v28 != 1)
    {
      return result;
    }
  }

  else if (((0x801004u >> (8 * v28)) & 0xFFC) != ((0x801004u >> ((v30 >> 29) & 0xF8)) & 0xFFC))
  {
    return result;
  }

  v31 = 100 * *(v24 + 28);
  if ((v31 & 0xFFFFFFFF00000000) != 0)
  {
    LODWORD(v31) = v25 >> 22;
    if (v25 >> 22)
    {
      LODWORD(v177) = 0;
      goto LABEL_16;
    }

    LODWORD(v177) = 0;
  }

  else
  {
    LODWORD(v177) = 0;
    if (v25 >> 22)
    {
      goto LABEL_16;
    }
  }

  if (v25 << 10)
  {
    v32 = v31 / (v25 << 10);
    if (v32 > 0xFF)
    {
      v32 = 0;
    }

    LODWORD(v177) = v32;
  }

LABEL_16:
  v33 = 100 * *(v24 + 32);
  if ((v33 & 0xFFFFFFFF00000000) != 0)
  {
    LODWORD(v33) = v25 >> 22;
    if (v25 >> 22)
    {
      v176 = 0;
      goto LABEL_24;
    }

    v176 = 0;
  }

  else
  {
    v176 = 0;
    if (v25 >> 22)
    {
      goto LABEL_24;
    }
  }

  if (v25 << 10)
  {
    v34 = v33 / (v25 << 10);
    if (v34 > 0xFF)
    {
      v34 = 0;
    }

    v176 = v34;
  }

LABEL_24:
  v35 = 100 * *(v24 + 36);
  if ((v35 & 0xFFFFFFFF00000000) != 0)
  {
    LODWORD(v35) = v25 >> 22;
    if (v25 >> 22)
    {
      LODWORD(v175) = 0;
      goto LABEL_32;
    }

    LODWORD(v175) = 0;
  }

  else
  {
    LODWORD(v175) = 0;
    if (v25 >> 22)
    {
      goto LABEL_32;
    }
  }

  if (v25 << 10)
  {
    v36 = v35 / (v25 << 10);
    if (v36 > 0xFF)
    {
      v36 = 0;
    }

    LODWORD(v175) = v36;
  }

LABEL_32:
  v37 = 100 * *(v24 + 40);
  v178 = v1;
  v167 = v16;
  v166 = v14;
  v165 = AssociatedTypeWitness;
  v164 = v6;
  v163 = v9;
  v159 = qword_1005963E0;
  v162 = v11;
  v171 = v21;
  v170 = v22;
  v169 = v19;
  v168 = &v158 - v20;
  v172 = v24;
  if ((v37 & 0xFFFFFFFF00000000) != 0)
  {
    LODWORD(v37) = v25 >> 22;
    if (!(v25 >> 22))
    {
      LODWORD(v174) = 0;
      goto LABEL_36;
    }

    LODWORD(v174) = 0;
  }

  else
  {
    LODWORD(v174) = 0;
    if (!(v25 >> 22))
    {
LABEL_36:
      v38 = v25 << 10;
      if (v38)
      {
        v39 = v37 / v38;
        if (v39 > 0xFF)
        {
          v39 = 0;
        }

        LODWORD(v174) = v39;
      }
    }
  }

  index = v29.index;
  v192 = NANMulticastTxStats.init(tsf:dwIndex:)(result, v29);
  rawValue = v192.txStats._rawValue;
  v161 = v192.dwIndex.index;
  value = v192.tsf.value;
  v41 = 0;
  v42 = (v26 + 60);
  while (1)
  {
    v45 = *(v42 - 2);
    v44 = *(v42 - 1);
    v46 = *v42;
    if (*(rawValue + 16))
    {
      sub_10007CCC8(*v42);
      if (v47)
      {
        break;
      }
    }

    LODWORD(v183) = v41;
    v184 = v27;
    LODWORD(v182) = v44;
    v57 = 256;
    NANMulticastStatsPerMCS.init(packets:MPDU:snr:)(&v191, v44, v45, v57);
    v59 = v58;
    v61 = v60;
    v63 = v62;
    v45 = v64;
    v65 = rawValue;
    rawValue = swift_isUniquelyReferenced_nonNull_native();
    v185 = v65;
    v27 = sub_10007CCC8(v46);
    v67 = v65[2];
    v68 = (v66 & 1) == 0;
    v69 = v67 + v68;
    if (__OFADD__(v67, v68))
    {
      __break(1u);
LABEL_93:
      __break(1u);
LABEL_94:
      __break(1u);
LABEL_95:
      __break(1u);
      goto LABEL_96;
    }

    v70 = v66;
    if (v65[3] >= v69)
    {
      if ((rawValue & 1) == 0)
      {
        sub_100196294();
      }
    }

    else
    {
      sub_10018E770(v69, rawValue);
      v71 = sub_10007CCC8(v46);
      if ((v70 & 1) != (v72 & 1))
      {
        goto LABEL_118;
      }

      v27 = v71;
    }

    rawValue = v185;
    if (v70)
    {
      v43 = v185[7] + 32 * v27;
      *v43 = v59;
      *(v43 + 8) = v61;
      *(v43 + 16) = v63;
      *(v43 + 24) = v45 & 1;
    }

    else
    {
      v185[(v27 >> 6) + 8] |= 1 << v27;
      *(*(rawValue + 48) + v27) = v46;
      v73 = *(rawValue + 56) + 32 * v27;
      *v73 = v59;
      *(v73 + 8) = v61;
      *(v73 + 16) = v63;
      *(v73 + 24) = v45 & 1;
      v74 = *(rawValue + 16);
      v53 = __OFADD__(v74, 1);
      v75 = v74 + 1;
      if (v53)
      {
        goto LABEL_93;
      }

      *(rawValue + 16) = v75;
    }

    v27 = v184;
    v41 = v183;
    v44 = v182;
LABEL_43:
    v41 += v44;
    v42 += 64;
    if (!--v27)
    {
      goto LABEL_66;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v190 = rawValue;
  v49 = sub_10007CCC8(v46);
  v51 = *(rawValue + 16);
  v52 = (v50 & 1) == 0;
  v53 = __OFADD__(v51, v52);
  v54 = v51 + v52;
  if (v53)
  {
    goto LABEL_94;
  }

  v55 = v50;
  if (*(rawValue + 24) < v54)
  {
    sub_10018E770(v54, isUniquelyReferenced_nonNull_native);
    v49 = sub_10007CCC8(v46);
    if ((v55 & 1) != (v56 & 1))
    {
      goto LABEL_118;
    }

LABEL_60:
    if ((v55 & 1) == 0)
    {
      goto LABEL_65;
    }

    goto LABEL_61;
  }

  if (isUniquelyReferenced_nonNull_native)
  {
    goto LABEL_60;
  }

  v87 = v49;
  sub_100196294();
  v49 = v87;
  if (v55)
  {
LABEL_61:
    rawValue = v190;
    v76 = v49;
    v77 = 32 * v49;
    v78 = *(v190 + 56) + 32 * v49;
    v79 = *v78;
    v80 = *(v78 + 8);
    v81 = *(v78 + 16);
    LOBYTE(v78) = *(v78 + 24);
    v185 = v79;
    v186 = v80;
    v187 = v81;
    LOWORD(v188) = v78;
    v82 = 256;
    NANMulticastStatsPerMCS.addValues(packets:MPDU:snr:)(v44, v45, v82);
    if ((v188 & 0x100) != 0)
    {
      sub_1004691DC(v76, rawValue);
    }

    else
    {
      v83 = v188;
      v84 = v187;
      v85 = v186;
      v86 = *(rawValue + 56) + v77;
      *v86 = v185;
      *(v86 + 8) = v85;
      *(v86 + 16) = v84;
      *(v86 + 24) = v83 & 1;
    }

    goto LABEL_43;
  }

LABEL_65:
  __break(1u);
LABEL_66:
  v184 = rawValue;
  v45 = v178;
  rawValue = v178 + qword_10059B9B0;
  *rawValue = 0;
  v46 = rawValue + 4;
  *(rawValue + 4) += v41;
  *(rawValue + 12) = v177;
  *(rawValue + 13) = v176;
  *(rawValue + 14) = v175;
  *(rawValue + 15) = v174;
  if ((index | 8) != 8)
  {
    goto LABEL_104;
  }

  swift_retain_n();
  v88 = v172;
  sub_1001851D8(v172, &v185);
  v89 = Logger.logObject.getter();
  v90 = static os_log_type_t.default.getter();
  sub_10031CF60(v88);
  if (!os_log_type_enabled(v89, v90))
  {

    goto LABEL_103;
  }

  v176 = v90;
  v177 = v89;
  v91 = swift_slowAlloc();
  v175 = swift_slowAlloc();
  v190 = v175;
  *v91 = 136315906;
  v92 = NANTimeSynchronizationFunction.description.getter(*(v88 + 16));
  v94 = sub_100002320(v92, v93, &v190);

  *(v91 + 4) = v94;
  *(v91 + 12) = 2080;
  v95 = *rawValue;
  v96 = *(rawValue + 4);
  v97 = *(rawValue + 8);

  v98 = LinkStatistics.description.getter();
  v100 = v99;

  v101 = sub_100002320(v98, v100, &v190);

  *(v91 + 14) = v101;
  v183 = v91;
  *(v91 + 22) = 2048;
  v102 = *(v45 + qword_10059B9A8);
  swift_beginAccess();
  v103 = *(v102 + 24);
  v104 = *(v103 + 16);
  v182 = v102;
  if (!v104)
  {

    v27 = _swiftEmptyArrayStorage;
    goto LABEL_77;
  }

  index = rawValue + 4;
  v27 = sub_10036777C(v104, 0);
  v174 = sub_100315DC8(&v185, (v27 + 32), v104, v103);

  sub_1000E290C();
  if (v174 != v104)
  {
    __break(1u);
    goto LABEL_117;
  }

  v45 = v178;
  v46 = index;
LABEL_77:
  v185 = _swiftEmptyArrayStorage;
  if ((v27 & 0x8000000000000000) == 0 && (v27 & 0x4000000000000000) == 0)
  {
    v105 = *(v27 + 16);
    if (v105)
    {
      goto LABEL_80;
    }

LABEL_97:
    v110 = _swiftEmptyArrayStorage;
    goto LABEL_98;
  }

LABEL_96:
  v105 = _CocoaArrayWrapper.endIndex.getter();
  if (!v105)
  {
    goto LABEL_97;
  }

LABEL_80:
  v106 = 0;
  while (2)
  {
    if ((v27 & 0xC000000000000001) != 0)
    {
      v107 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v108 = v106 + 1;
      if (__OFADD__(v106, 1))
      {
        break;
      }

      goto LABEL_86;
    }

    if (v106 >= *(v27 + 16))
    {
      goto LABEL_95;
    }

    v107 = *(v27 + 8 * v106 + 32);

    v108 = v106 + 1;
    if (!__OFADD__(v106, 1))
    {
LABEL_86:
      if (*(v107 + 51))
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v109 = v185[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      else
      {
      }

      ++v106;
      v45 = v178;
      if (v108 == v105)
      {
        goto LABEL_91;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_91:
  v110 = v185;
LABEL_98:

  if ((v110 & 0x8000000000000000) != 0 || (v110 & 0x4000000000000000) != 0)
  {
    goto LABEL_115;
  }

  for (i = *(v110 + 16); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v112 = v183;

    *(v112 + 3) = i;

    *(v112 + 16) = 2048;
    type metadata accessor for P2PTimer();
    v113 = v168;
    variable initialization expression of AWDLPeer.lastUpdated();
    v114 = DispatchTime.uptimeNanoseconds.getter();
    v115 = v170;
    v116 = *(v170 + 8);
    v117 = v113;
    v118 = v171;
    v116(v117, v171);
    v119 = v169;
    (*(v115 + 16))(v169, v45 + qword_100596440, v118);
    v120 = DispatchTime.uptimeNanoseconds.getter();
    v116(v119, v118);

    if (v114 >= v120)
    {
      break;
    }

    __break(1u);
LABEL_115:
    ;
  }

  *(v112 + 34) = (v114 - v120) / 0x3B9ACA00;

  v121 = v177;
  _os_log_impl(&_mh_execute_header, v177, v176, "Multicast stats: TSF[%s], %s, activePeers[%ld], totalUptime s[%llu]", v112, 0x2Au);
  swift_arrayDestroy();

LABEL_103:
  *rawValue = 0;
  *v46 = 0;
  *(v46 + 8) = 0;
LABEL_104:
  v122 = qword_10059B9A0;
  swift_beginAccess();
  sub_10031CEF0(v45 + v122, &v185);
  if (!v188)
  {

    return sub_100016290(&v185, &unk_100595C70, &qword_1004B0C00);
  }

  sub_100016290(&v185, &unk_100595C70, &qword_1004B0C00);
  v123 = (v45 + qword_1005963C8);
  if (*(v45 + qword_1005963C8 + 6))
  {
  }

  v124 = v45;
  v125 = *(v45 + qword_10059B990);
  swift_unownedRetainStrong();
  v126 = *(*v125 + 96);
  swift_beginAccess();
  v183 = v123;
  v127 = v164;
  v128 = *(v164 + 16);
  v129 = v125 + v126;
  v130 = v179;
  v131 = v165;
  v128(v179, v129, v165);

  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v133 = (*(AssociatedConformanceWitness + 32))(v131, AssociatedConformanceWitness);
  v134 = *(v127 + 8);
  v134(v130, v131);
  swift_unownedRetainStrong();
  v135 = *(*v125 + 96);
  swift_beginAccess();
  v136 = v125 + v135;
  v137 = v163;
  v128(v163, v136, v131);

  LOBYTE(v128) = (*(AssociatedConformanceWitness + 24))(v131, AssociatedConformanceWitness);
  v134(v137, v131);
  v138 = v183;
  v139 = v167;
  v140 = &v167[*(v162 + 28)];
  NANAttribute.CustomDeviceInformation.CustomAttributes.init()(v140);
  *v139 = v133;
  *(v139 + 1) = v128;
  *(v139 + 4) = 0;
  v141 = (v140 + *(type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes(0) + 56));
  v142 = *v141;
  v143 = v184;

  v144 = v161;
  *v141 = v143;
  v141[1] = v144;
  v141[2] = value;
  v145 = v139;
  v146 = v166;
  sub_10031CFB4(v139, v166, type metadata accessor for NANAttribute.CustomDeviceInformation);
  v147 = NANActionFrame.init(customDeviceInformation:)(v146);
  v149 = v148;
  swift_unownedRetainStrong();
  sub_10040DD50();

  if (*(v138 + 6))
  {
LABEL_117:
    __break(1u);
    __break(1u);
LABEL_118:
    result.value = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v150 = v147;
  v151 = *v138 | (*(v138 + 2) << 32);

  v152 = TimeBitmap.multicastTxStatusOutOfBandActionFrameBitMap.unsafeMutableAddressor();
  v153 = *v152;
  v154 = v152[1];
  v155 = v152[2];
  v156 = *(v124 + v159 + 4);
  if (v156 << 32 == 0x300000000)
  {
    v157 = 1;
  }

  else
  {
    v157 = v156;
  }

  v185 = 0;
  v186 = v150;
  v187 = v149;
  v188 = 0;
  v189 = 2;
  sub_1003A8DBC(&v185, v151, 1, v153, v154, v155, 0, v157, 0x1F4u, NANBitmap.Channel.operatingClass.getter, 0);
  sub_100048C4C(v150);

  return sub_10031D01C(v145, type metadata accessor for NANAttribute.CustomDeviceInformation);
}

uint64_t sub_10031BEB8(uint64_t a1, unint64_t a2, uint64_t a3, int a4)
{
  v54 = a4;
  v53 = a3;
  v59 = a1;
  v60 = a2;
  v5 = *v4;
  v57 = *(*v4 + 88);
  v6 = *(v57 + 8);
  v7 = *(v5 + 80);
  v8 = v4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v11 = v10[8];
  __chkstk_darwin();
  v13 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v15 = &v53 - v14;
  v16 = (type metadata accessor for NANAttribute.CustomDeviceInformation(0) - 8);
  v17 = *(*v16 + 64);
  __chkstk_darwin();
  v58 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v55 = &v53 - v19;
  v20 = *(v8 + qword_10059B990);
  swift_unownedRetainStrong();
  v21 = *(*v20 + 96);
  swift_beginAccess();
  v22 = v10[2];
  v22(v15, v20 + v21, AssociatedTypeWitness);

  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  LODWORD(v57) = (*(AssociatedConformanceWitness + 32))(AssociatedTypeWitness, AssociatedConformanceWitness);
  v24 = v10[1];
  v24(v15, AssociatedTypeWitness);
  swift_unownedRetainStrong();
  v25 = *(*v20 + 96);
  swift_beginAccess();
  v22(v13, v20 + v25, AssociatedTypeWitness);
  v26 = v55;

  LOBYTE(AssociatedConformanceWitness) = (*(AssociatedConformanceWitness + 24))(AssociatedTypeWitness, AssociatedConformanceWitness);
  v24(v13, AssociatedTypeWitness);
  v27 = v56;
  v28 = v26 + v16[9];
  NANAttribute.CustomDeviceInformation.CustomAttributes.init()(v28);
  *v26 = v57;
  *(v26 + 1) = AssociatedConformanceWitness;
  *(v26 + 4) = 0;
  v29 = (v28 + *(type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes(0) + 60));
  v30 = *v29;
  v31 = v29[1];
  v32 = v59;
  v33 = v60;
  *v29 = v59;
  v29[1] = v33;
  sub_10000AB0C(v32, v33);
  sub_100017554(v30, v31);
  v34 = v58;
  sub_10031CFB4(v26, v58, type metadata accessor for NANAttribute.CustomDeviceInformation);
  v35 = NANActionFrame.init(customDeviceInformation:)(v34);
  v37 = v36;
  v38 = v35;
  if (*(v27 + qword_1005963C8 + 6) & 1) == 0 && (v54)
  {
    v39 = *(v27 + qword_1005963C8) | (*(v27 + qword_1005963C8 + 4) << 32);
    swift_unownedRetainStrong();
    sub_10040DD50();

    v40 = TimeBitmap.multicastTxStatusOutOfBandActionFrameBitMap.unsafeMutableAddressor();
    v41 = *v40;
    v42 = v40[1];
    v43 = v40[2];
    v44 = *(v27 + qword_1005963E0 + 4);
    if (v44 << 32 == 0x300000000)
    {
      v45 = 1;
    }

    else
    {
      v45 = v44;
    }

    v61 = 0;
    v62 = v38;
    v63 = v37;
    v64 = 0;
    v65 = 2;
    sub_1003A8DBC(&v61, v39, 1, v41, v42, v43, 0, v45, 0x1F4u, NANBitmap.Channel.operatingClass.getter, 0);
    goto LABEL_12;
  }

  v46 = v53;
  if ((v53 & 0x1000000000000) == 0)
  {
    swift_unownedRetainStrong();
    sub_10040DD50();

    v61 = 0;
    v62 = v38;
    v63 = v37;
    v64 = 0;
    v65 = 2;
    v47 = TimeBitmap.multicastTxStatusOutOfBandActionFrameBitMap.unsafeMutableAddressor();
    v48 = *v47;
    v49 = v47[1];
    v50 = v47[2];
    v51 = *(v27 + qword_1005963E0) | (*(v27 + qword_1005963E0 + 4) << 32);
    if ((v51 & 0xFF00000000) == 0x300000000)
    {
      sub_1003A8260(&v61, v46 & 0xFFFFFFFFFFFFLL, 1, v48, v49, v50, 0, 1, 500, NANBitmap.Channel.operatingClass.getter, 0);
    }

    else
    {
      sub_1003A8260(&v61, v46 & 0xFFFFFFFFFFFFLL, 1, v48, v49, v50, 0, SBYTE4(v51), 500, NANBitmap.Channel.operatingClass.getter, 0);
    }

LABEL_12:
    sub_100048C4C(v38);

    return sub_10031D01C(v26, type metadata accessor for NANAttribute.CustomDeviceInformation);
  }

  sub_100048C4C(v35);
  return sub_10031D01C(v26, type metadata accessor for NANAttribute.CustomDeviceInformation);
}

void sub_10031C6BC(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v8 = *(v3 + qword_10059B9A8);
  swift_beginAccess();
  if (*(*(v8 + 24) + 16) && (, , sub_100041DE8(a1 & 0xFFFFFFFFFFFFLL), v10 = v9, , , (v10 & 1) != 0))
  {
    if (a3 >> 60 != 15)
    {
      v22 = *(v3 + qword_10059B990);
      swift_unownedRetainStrong();
      sub_10000AB0C(a2, a3);
      sub_10040CAE8();

      sub_10033A9F0(*(v4 + qword_1005963B8), a1 & 0xFFFFFFFFFFFFLL, a2, a3);

      sub_100017554(a2, a3);
      return;
    }

    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v23 = v14;
      *v13 = 136315138;
      v15 = WiFiAddress.description.getter(a1 & 0xFFFFFFFFFFFFLL);
      v17 = sub_100002320(v15, v16, &v23);

      *(v13 + 4) = v17;
      v18 = "No blob data from %s";
LABEL_8:
      _os_log_impl(&_mh_execute_header, v11, v12, v18, v13, 0xCu);
      sub_100002A00(v14);
    }
  }

  else
  {
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v23 = v14;
      *v13 = 136315138;
      v19 = WiFiAddress.description.getter(a1 & 0xFFFFFFFFFFFFLL);
      v21 = sub_100002320(v19, v20, &v23);

      *(v13 + 4) = v21;
      v18 = "No valid peer with %s";
      goto LABEL_8;
    }
  }
}

uint64_t sub_10031C93C()
{
  v1 = qword_10059B988;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + qword_10059B990);
  swift_unownedRelease();
  sub_100016290(v0 + qword_10059B9A0, &unk_100595C70, &qword_1004B0C00);
  v4 = *(v0 + qword_100596400);
  v5 = *(v0 + qword_100596400 + 8);

  v6 = *(v0 + qword_100596408);

  v7 = *(v0 + qword_100596410);

  v8 = *(v0 + qword_10059B9A8);

  v9 = qword_100596440;
  v10 = type metadata accessor for DispatchTime();
  (*(*(v10 - 8) + 8))(v0 + v9, v10);
  return v0;
}

uint64_t sub_10031CA58()
{
  sub_10031C93C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_10031CAFC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 80);
  v3 = *(*(a2 + 88) + 8);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  return swift_getAssociatedConformanceWitness();
}

void *sub_10031CBB0(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = *v2;
  Logger.init(subsystem:category:)();
  *(v3 + qword_10059B998) = 1;
  v7 = v3 + qword_1005963C8;
  *(v7 + 2) = 0;
  *v7 = 0;
  v7[6] = 1;
  v8 = v3 + qword_1005963D0;
  *v8 = 0;
  *(v8 + 2) = 0;
  v8[6] = 1;
  v9 = v3 + qword_1005963E0;
  *v9 = 0;
  *(v9 + 2) = 3;
  v10 = v3 + qword_1005963E8;
  *v10 = 0;
  v10[2] = 1;
  v11 = v3 + qword_10059B9A0;
  *v11 = 0u;
  *(v11 + 1) = 0u;
  *(v11 + 4) = 0;
  *(v3 + qword_1005963F0) = 10;
  v12 = v3 + qword_1005963F8;
  *v12 = 197632;
  v12[4] = 1;
  v13 = (v3 + qword_100596400);
  *v13 = &_swiftEmptySetSingleton;
  v13[1] = 0;
  v14 = qword_100596408;
  v15 = *(v6 + 80);
  v16 = *(v6 + 88);
  type metadata accessor for NANDeviceLink();
  sub_1002CAFC4();
  *(v3 + v14) = Dictionary.init()();
  *(v3 + qword_100596410) = 0;
  *(v3 + qword_100596418) = 1;
  *(v3 + qword_100596420) = 2;
  *(v3 + qword_100596428) = 0;
  *(v3 + qword_100596430) = 0;
  *(v3 + qword_100596438) = 3;
  v17 = v3 + qword_10059B9B0;
  *v17 = 0;
  *(v17 + 4) = 0;
  *(v17 + 3) = 0;
  type metadata accessor for P2PTimer();
  variable initialization expression of AWDLPeer.lastUpdated();
  *(v3 + qword_100596448) = 0;
  *(v3 + qword_10059B990) = a1;
  *(v3 + qword_1005963C0) = 0;
  *(v3 + qword_100596428) = 0;
  v18 = type metadata accessor for NANMulticastPeers(0);
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  v21 = swift_allocObject();
  *(v21 + 16) = 3;
  swift_unownedRetain();
  *(v21 + 24) = sub_1002DE25C(_swiftEmptyArrayStorage);
  *(v21 + 32) = 0x4024000000000000;
  Logger.init(subsystem:category:)();
  *(v3 + qword_10059B9A8) = v21;
  *(v3 + qword_1005963D8) = 0;
  *(v3 + qword_1005963B8) = a2;
  return v3;
}

void *sub_10031CE9C(uint64_t a1, char a2)
{
  v5 = *(v2 + 80);
  v6 = *(v2 + 88);
  v7 = type metadata accessor for MulticastSenderManager();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  return sub_10031CBB0(a1, a2);
}

uint64_t sub_10031CEF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10005DC58(&unk_100595C70, &qword_1004B0C00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10031CFB4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10031D01C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_10031D090(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  if (v3 <= 0x3F)
  {
    v15 = *(v2 - 8) + 64;
    v4 = type metadata accessor for DispatchTime();
    if (v5 <= 0x3F)
    {
      v6 = *(v4 - 8) + 64;
      sub_100330C28(319, qword_100596670, &type metadata accessor for DispatchTime);
      if (v8 <= 0x3F)
      {
        v16 = *(v7 - 8) + 64;
        sub_100330C28(319, &qword_100593018, type metadata accessor for NANInternetSharingStatistics.Requester);
        if (v10 <= 0x3F)
        {
          v17 = *(v9 - 8) + 64;
          v11 = *(a1 + 80);
          v12 = *(a1 + 88);
          _s17InitiatorInstanceC12PeerIdentityVMa();
          v13 = type metadata accessor for Optional();
          if (v14 <= 0x3F)
          {
            v18 = *(v13 - 8) + 64;
            swift_initClassMetadata2();
          }
        }
      }
    }
  }
}

unint64_t sub_10031D44C(unint64_t result, uint64_t a2)
{
  v3 = result;
  if (result >> 62)
  {
    goto LABEL_13;
  }

  v4 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      while ((v3 & 0xC000000000000001) != 0)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v7 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_11;
        }

LABEL_7:
        [v6 datapathUpdatedInternetSharingPolicy:a2];
        result = swift_unknownObjectRelease();
        ++v5;
        if (v7 == v4)
        {
          return result;
        }
      }

      if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_12;
      }

      v6 = *(v3 + 8 * v5 + 32);
      swift_unknownObjectRetain();
      v7 = v5 + 1;
      if (!__OFADD__(v5, 1))
      {
        goto LABEL_7;
      }

LABEL_11:
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      result = _CocoaArrayWrapper.endIndex.getter();
      v4 = result;
    }

    while (result);
  }

  return result;
}

uint64_t sub_10031D544(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_10005DC58(&unk_1005968B0, &qword_1004B0FA8);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = (v2 + 8);

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v15 = v14[1];
    v16 = *(*(a1 + 56) + 8 * v13);
    *&v32[0] = *v14;
    *(&v32[0] + 1) = v15;

    swift_dynamicCast();
    sub_10005DC58(&qword_10058CBE0, &qword_100482CF0);
    swift_dynamicCast();
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_100085188(&v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_100085188(v31, v32);
    result = AnyHashable._rawHashValue(seed:)(v2[5]);
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*&v7[8 * (v18 >> 6)]) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *&v7[8 * v19];
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*&v7[8 * (v18 >> 6)])) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *&v7[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_100085188(v32, (v2[7] + 32 * v10));
    ++v2[2];
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_10031D810(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_10005DC58(&unk_1005968B0, &qword_1004B0FA8);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = (v2 + 8);

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_100002B30(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_100085188(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_100085188(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_100085188(v31, v32);
    result = AnyHashable._rawHashValue(seed:)(v2[5]);
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*&v7[8 * (v18 >> 6)]) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *&v7[8 * v19];
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*&v7[8 * (v18 >> 6)])) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *&v7[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_100085188(v32, (v2[7] + 32 * v10));
    ++v2[2];
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

void sub_10031DAD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = String._bridgeToObjectiveC()();
  (*(a4 + 16))(a4, a1, v6);
}

uint64_t sub_10031DB88@<X0>(uint64_t a1@<X8>)
{
  v3 = *((swift_isaMask & *v1) + 0x68);
  swift_beginAccess();
  return sub_1003336F4(v1 + v3, a1);
}

uint64_t sub_10031DBFC@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + *((swift_isaMask & *v1) + 0x78));
  if (v3)
  {
    ObjectType = swift_getObjectType();
  }

  else
  {
    ObjectType = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = v3;
  a1[3] = ObjectType;

  return swift_unknownObjectRetain();
}

uint64_t sub_10031DC78(uint64_t a1)
{
  if (!*(a1 + 24))
  {
    sub_100016290(a1, &qword_10058BA80, &qword_1004818C0);
    goto LABEL_5;
  }

  sub_10005DC58(&qword_1005968A8, &qword_1004B1790);
  if (!swift_dynamicCast())
  {
LABEL_5:
    v2 = 0;
    goto LABEL_6;
  }

  v2 = v6;
LABEL_6:
  v3 = *((swift_isaMask & *v1) + 0x78);
  v4 = *(v1 + v3);
  *(v1 + v3) = v2;
  return swift_unknownObjectRelease();
}

uint64_t sub_10031DD34@<X0>(uint64_t a1@<X8>)
{
  v3 = *((swift_isaMask & *v1) + 0x98);
  v4 = type metadata accessor for Logger();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, &v1[v3], v4);
}

uint64_t sub_10031DDC8(unint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
    if (a3)
    {
      return 0x6574736575716552;
    }

    else
    {
      return 0x696C616974696E49;
    }
  }

  else if (a3 == 2)
  {
    return 0x696D7269666E6F43;
  }

  else if (a3 == 3)
  {
    return 0x73696C6261747345;
  }

  else
  {
    if (a1 ^ 2 | a2)
    {
      v4 = 0x74616E696D726554;
    }

    else
    {
      v4 = 0x65736E6F70736552;
    }

    if (a1 | a2)
    {
      v5 = 0x20676E6974696157;
    }

    else
    {
      v5 = 0xD000000000000012;
    }

    if (a1 <= 1)
    {
      return v5;
    }

    else
    {
      return v4;
    }
  }
}

uint64_t sub_10031DF1C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v17[1] = a4;
  v7 = type metadata accessor for Mirror.AncestorRepresentation();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin();
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*(sub_10005DC58(&unk_10058FC10, &qword_100484170) - 8) + 64);
  __chkstk_darwin();
  v14 = v17 - v13;
  v17[3] = a1;
  v17[4] = a2;
  v18 = a3;
  v17[2] = _swiftEmptyArrayStorage;
  v15 = type metadata accessor for Mirror.DisplayStyle();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  _s17InitiatorInstanceC5StateOMa();
  sub_10005DC58(&qword_10058C7A0, &qword_100481FD0);
  sub_1000B9D64();
  (*(v8 + 104))(v11, enum case for Mirror.AncestorRepresentation.generated(_:), v7);
  sub_100333808(a1, a2, a3);
  return Mirror.init<A, B>(_:children:displayStyle:ancestorRepresentation:)();
}

uint64_t sub_10031E11C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  return sub_10031DDC8(*v1, *(v1 + 8), *(v1 + 16));
}

uint64_t sub_10031E130@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  return sub_10031DF1C(*v2, *(v2 + 8), *(v2 + 16), a2);
}

uint64_t sub_10031E144()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchTime();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for P2PTimer();
  variable initialization expression of AWDLPeer.lastUpdated();
  v7 = *((swift_isaMask & *v0) + 0xC8);
  swift_beginAccess();
  (*(v3 + 40))(&v1[v7], v6, v2);
  return swift_endAccess();
}

unint64_t sub_10031E264()
{
  v1 = v0 + *((swift_isaMask & *v0) + 0x68);
  swift_beginAccess();
  return *(v1 + 25) | (*(v1 + 27) << 16);
}

BOOL sub_10031E2D0()
{
  v1 = v0 + *((swift_isaMask & *v0) + 0xD0);
  v2 = v1[16];
  if ((v2 - 1) < 2)
  {
    return 1;
  }

  if (v2 == 4)
  {
    return (*v1 & 0xFFFFFFFFFFFFFFFELL ^ 2 | *(v1 + 1)) == 0;
  }

  return 0;
}

BOOL sub_10031E33C()
{
  v1 = v0 + *((swift_isaMask & *v0) + 0x68);
  swift_beginAccess();
  sub_100012400((v1 + 104), v4, &qword_1005914A8, &qword_100499048);
  v2 = v4[3] != 1;
  sub_100016290(v4, &qword_1005914A8, &qword_100499048);
  return v2;
}

uint64_t sub_10031E3E8()
{
  v1 = v0 + *((swift_isaMask & *v0) + 0xD0);
  if (v1[16] != 3)
  {
    return 0;
  }

  v2 = *(v1 + 1);
}

uint64_t sub_10031E444(uint64_t a1)
{
  v13 = a1;
  v2 = *(*(sub_10005DC58(&unk_100597330, &unk_100481FA0) - 8) + 64);
  __chkstk_darwin();
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v6 = &v12 - v5;
  v7 = *((swift_isaMask & *v1) + 0x110);
  swift_beginAccess();
  sub_100012400(v1 + v7, v6, &unk_100597330, &unk_100481FA0);
  v8 = type metadata accessor for DispatchTime();
  v9 = *(v8 - 8);
  v10 = (*(v9 + 48))(v6, 1, v8);
  result = sub_100016290(v6, &unk_100597330, &unk_100481FA0);
  if (v10 == 1 || *(v1 + *((swift_isaMask & *v1) + 0x108)) != v13)
  {
    type metadata accessor for P2PTimer();
    variable initialization expression of AWDLPeer.lastUpdated();
    (*(v9 + 56))(v4, 0, 1, v8);
    swift_beginAccess();
    sub_1000B1B78(v4, v1 + v7, &unk_100597330, &unk_100481FA0);
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_10031E688@<X0>(uint64_t a1@<X8>)
{
  v3 = *((swift_isaMask & *v1) + 0x110);
  swift_beginAccess();
  return sub_100012400(v1 + v3, a1, &unk_100597330, &unk_100481FA0);
}

uint64_t sub_10031E70C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v2 = (swift_isaMask & *v0);
  v3 = *(v0 + v2[12]);
  swift_unownedRetainStrong();
  sub_10040CAE8();

  v4 = sub_10033ABB0();

  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = v1 + *((swift_isaMask & *v1) + 0x68);
    v7 = *((swift_isaMask & *v1) + 0xE0);
    v8 = *(v1 + *((swift_isaMask & *v1) + 0xE8));
    v9 = v2[10];
    v10 = v2[11];
    v11 = type metadata accessor for LowLatencyInternetProviderPolicy();
    do
    {
      v29 = v11;
      v30 = &off_10057A368;
      v28[0] = v8;
      swift_beginAccess();
      v12 = v8;
      sub_1000B1B78(v28, (v6 + 104), &qword_1005914A8, &qword_100499048);
      swift_endAccess();
      if ((*(v1 + v7) & 1) == 0)
      {
        sub_100012400((v6 + 104), &v26, &qword_1005914A8, &qword_100499048);
        if (v27)
        {
          if (v27 == 1)
          {
            sub_100016290(&v26, &qword_1005914A8, &qword_100499048);
          }

          else
          {
            sub_100179C1C(&v26, v28);
            *(v1 + v7) = 1;
            v13 = v29;
            v14 = v30;
            sub_100029B34(v28, v29);
            v15 = *(v6 + 27);
            v24 = v14;
            v25 = v13;
            v23 = v6[25];
            v22 = v6[26];
            if (*(v6 + 12) == 1)
            {
              v16 = 0;
              v17 = 0xF000000000000000;
            }

            else
            {
              v16 = *(v6 + 7);
              v17 = *(v6 + 8);
              sub_10000AB0C(v16, v17);
            }

            WitnessTable = swift_getWitnessTable();
            v19 = sub_10036DB68(ObjectType, WitnessTable);
            (v24[1])(v23 | (v22 << 8) | (v15 << 16), v16, v17, v19 & 0xFFFFFFFFFFFFFFLL, v25);
            sub_100017554(v16, v17);
            sub_100002A00(v28);
          }
        }

        else
        {
          sub_10020C6CC(&v26);
        }
      }

      --v5;
    }

    while (v5);
  }

  else
  {
  }
}

uint64_t sub_10031EC38()
{
  v1 = v0;
  v2 = v0 + *((swift_isaMask & *v0) + 0x68);
  swift_beginAccess();
  v4 = *(v2 + 1);
  v3 = *(v2 + 2);

  v5 = NANServiceName.description.getter(v4, v3);
  v7 = v6;

  v8 = v1 + *((swift_isaMask & *v1) + 0x148);
  swift_beginAccess();
  v9 = *(v8 + 3);
  *(v8 + 2) = v5;
  *(v8 + 3) = v7;
  v8[64] = 3;

  v10 = *(v1 + *((swift_isaMask & *v1) + 0x60));
  swift_unownedRetainStrong();
  v11 = *(v10 + *(*v10 + 800));
  swift_unownedRetainStrong();

  v12 = sub_1003F06BC();

  *(v1 + *((swift_isaMask & *v1) + 0x150)) = v12;
  swift_unownedRetainStrong();
  v13 = *(v10 + *(*v10 + 800));
  swift_unownedRetainStrong();

  v14 = sub_1003F06D8();

  *(v1 + *((swift_isaMask & *v1) + 0x158)) = v14;
  swift_unownedRetainStrong();
  v15 = *(v10 + *(*v10 + 800));
  swift_unownedRetainStrong();

  (*(*v15 + 200))(v16);

  v23 = *WiFiDriverCapabilities.supportsSimultaneousDualBand.unsafeMutableAddressor();
  sub_1000C2A14();

  LOBYTE(v15) = dispatch thunk of SetAlgebra.isSuperset(of:)();

  v8[105] = v15 & 1;
  swift_unownedRetainStrong();
  v17 = *(v10 + *(*v10 + 800));
  swift_unownedRetainStrong();

  sub_1003EB084();
  v19 = v18;
  v21 = v20;

  if (v19)
  {
  }

  else
  {
    v21 = 0;
  }

  *(v8 + 25) = v21;
  return result;
}

uint64_t sub_10031EF0C(uint64_t a1, int a2)
{
  v3 = v2;
  LODWORD(v81) = a2;
  v80 = a1;
  v4 = *v2;
  v5 = swift_isaMask;
  v6 = swift_isaMask & *v2;
  v7 = *(*((swift_isaMask & v4) + 0x58) + 8);
  v8 = *((swift_isaMask & v4) + 0x50);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v87 = *(AssociatedTypeWitness - 8);
  v88 = AssociatedTypeWitness;
  v10 = *(v87 + 64);
  __chkstk_darwin();
  v86 = &v76 - v11;
  v12 = swift_checkMetadataState();
  v83 = *(v12 - 8);
  v84 = v12;
  v13 = *(v83 + 64);
  __chkstk_darwin();
  v82 = &v76 - v14;
  v79 = type metadata accessor for DispatchTime();
  v15 = *(v79 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin();
  v78 = &v76 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v19 = &v76 - v18;
  v20 = (v3 + *((v5 & v4) + 0x128));
  v21 = v20[1];
  v77 = v20;
  if (v21)
  {
    v22 = *v20;
    v23 = v21;
  }

  else
  {
    v22 = 0;
    v23 = 0xE000000000000000;
  }

  v24 = v3 + *(v6 + 328);
  swift_beginAccess();
  v25 = *(v24 + 1);
  *v24 = v22;
  *(v24 + 1) = v23;

  v24[68] = *(v3 + *((swift_isaMask & *v3) + 0x138));
  swift_endAccess();
  v26 = *(v3 + *((swift_isaMask & *v3) + 0x60));
  swift_unownedRetainStrong();
  sub_10040CAE8();

  v27 = sub_100337438();

  *(v24 + 6) = v27;
  swift_unownedRetainStrong();
  sub_10040CAE8();

  v28 = sub_10033746C();

  *(v24 + 5) = v28;
  swift_unownedRetainStrong();
  sub_10040CAE8();

  v29 = sub_100337590();

  *(v24 + 7) = v29;
  if ((v80 + 1) >= 6)
  {
    v30 = 5;
  }

  else
  {
    v30 = 0x50403020501uLL >> (8 * (v80 + 1));
  }

  v24[33] = v30;
  v24[34] = v81;
  type metadata accessor for P2PTimer();
  variable initialization expression of AWDLPeer.lastUpdated();
  v31 = DispatchTime.uptimeNanoseconds.getter();
  v32 = v15;
  v33 = *(v15 + 8);
  v34 = v19;
  v35 = v79;
  v33(v34, v79);
  v36 = v78;
  (*(v32 + 16))(v78, v3 + *((swift_isaMask & *v3) + 0x160), v35);
  v37 = DispatchTime.uptimeNanoseconds.getter();
  result = (v33)(v36, v35);
  if (v31 < v37)
  {
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  *(v24 + 11) = (v31 - v37) / 0xF4240;
  swift_unownedRetainStrong();
  v39 = *(v26 + *(*v26 + 800));
  swift_unownedRetainStrong();

  v40 = sub_1003F06BC();

  v41 = *(v3 + *((swift_isaMask & *v3) + 0x150));
  v42 = v40 >= v41;
  v43 = v40 - v41;
  if (!v42)
  {
    goto LABEL_35;
  }

  *(v24 + 33) = v43;
  swift_unownedRetainStrong();
  v44 = *(v26 + *(*v26 + 800));
  swift_unownedRetainStrong();

  v45 = sub_1003F06D8();

  v46 = *(v3 + *((swift_isaMask & *v3) + 0x158));
  v42 = v45 >= v46;
  v47 = v45 - v46;
  if (!v42)
  {
    goto LABEL_36;
  }

  *(v24 + 34) = v47;
  v48 = v3 + *((swift_isaMask & *v3) + 0x68);
  swift_beginAccess();
  if (v48[32])
  {
    v49 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  else
  {
    v49 = 1;
  }

  v24[65] = v49 & 1;
  if (v48[32] && v48[32] == 1)
  {
    v50 = 1;
  }

  else
  {
    v50 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v24[66] = v50 & 1;
  if (v48[32] && v48[32] != 1)
  {
    v51 = 1;
  }

  else
  {
    v51 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v24[67] = v51 & 1;
  v52 = *(v3 + *((swift_isaMask & *v3) + 0x70));
  if (v52)
  {
    v53 = OBJC_IVAR____TtC12wifip2pdCore22WiFiAwareMonitorClient_bksstatus;
    swift_beginAccess();
    v54 = *(v52 + v53);
    memcpy(v99, v24, sizeof(v99));
    v24[160] = NANWiFiAwareStatistics.convertToAppStatus(reason:)(v54);
  }

  v55 = v77[1];
  if (!v55)
  {
LABEL_33:
    swift_unownedRetainStrong();
    v69 = v82;
    v70 = v83;
    v71 = v84;
    (*(v83 + 16))(v82, v26 + *(*v26 + 112), v84);

    v72 = v86;
    (*(AssociatedConformanceWitness + 152))(v71, AssociatedConformanceWitness);
    (*(v70 + 8))(v69, v71);
    memcpy(v90, v24, sizeof(v90));
    v73 = v88;
    v74 = swift_getAssociatedConformanceWitness();
    v75 = *(v74 + 32);
    sub_1002CB02C(v90, &v89);
    v75(v90, v73, v74);
    sub_1002CB088(v90);
    return (*(v87 + 8))(v72, v73);
  }

  v56 = *v77;
  swift_unownedRetainStrong();

  sub_10040CAE8();

  v57 = sub_100337438();

  if ((v57 & 0x8000000000000000) != 0)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (v57 >> 16)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  swift_unownedRetainStrong();
  sub_10040CAE8();

  v58 = sub_10033746C();

  if ((v58 & 0x8000000000000000) != 0)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if (v58 >> 16)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  swift_unownedRetainStrong();
  sub_10040CAE8();

  v59 = sub_100337594();

  if ((v59 & 0x8000000000000000) != 0)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  if (!(v59 >> 16))
  {
    v81 = *(v24 + 11);
    LODWORD(v80) = v24[64];
    swift_unownedRetainStrong();
    v60 = *(*v26 + 112);
    v78 = v57;
    v79 = v55;
    v61 = v82;
    v62 = v83;
    v63 = *(v83 + 16);
    v77 = v56;
    v64 = v84;
    v63(v82, v26 + v60, v84);

    v65 = v58;
    v66 = v86;
    (*(AssociatedConformanceWitness + 152))(v64, AssociatedConformanceWitness);
    (*(v62 + 8))(v61, v64);
    v91[0] = v77;
    v91[1] = v79;
    v92 = v78;
    v93 = v65;
    v94 = v59;
    v95 = 0u;
    memset(v96, 0, 26);
    v96[26] = v80;
    *v97 = v90[0];
    *&v97[3] = *(v90 + 3);
    v98 = v81;
    v67 = v88;
    v68 = swift_getAssociatedConformanceWitness();
    (*(v68 + 40))(v91, v67, v68);
    sub_1002CB0DC(v91);
    (*(v87 + 8))(v66, v67);
    goto LABEL_33;
  }

LABEL_42:
  __break(1u);
  return result;
}

id sub_10031FA14()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v2 = *v0;
  v3 = swift_isaMask;
  v4 = swift_isaMask & *v0;
  v46 = *(v4 + 0x58);
  v5 = *(v46 + 8);
  v45 = *(v4 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin();
  v10 = &v40 - v9;
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin();
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *((v3 & v2) + 0xF8);
  swift_beginAccess();
  if (notify_is_valid_token(*&v1[v16]))
  {
    v17 = notify_cancel(*&v1[v16]);
    *&v1[v16] = -1;
    if (v17)
    {
      v44 = v17;
      (*(v12 + 16))(v15, &v1[*((swift_isaMask & *v1) + 0x98)], v11);
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v43 = v19;
        v21 = v20;
        v40 = v20;
        v42 = swift_slowAlloc();
        v48 = v42;
        *v21 = 136315138;
        v22 = static WiFiError.notifyErrorMessage(from:)(v44);
        v24 = sub_100002320(v22, v23, &v48);
        v41 = v18;
        v25 = v24;

        v26 = v40;
        *(v40 + 4) = v25;
        _os_log_impl(&_mh_execute_header, v18, v43, "Failed to cancel monitoring statistic reset events with error: %s", v26, 0xCu);
        sub_100002A00(v42);
      }

      else
      {
      }

      (*(v12 + 8))(v15, v11);
    }
  }

  v27 = &v1[*((swift_isaMask & *v1) + 0xD0)];
  if (v27[16] - 1 >= 3)
  {
    if (!v27[16])
    {
      goto LABEL_11;
    }

    v36 = *v27;
    v35 = *(v27 + 1);
    if (__PAIR128__(v35, v36) < 2)
    {
      goto LABEL_11;
    }

    if (v36 ^ 2 | v35)
    {
      goto LABEL_12;
    }
  }

  v28 = *&v1[*((swift_isaMask & *v1) + 0x60)];
  swift_unownedRetainStrong();
  v29 = *(*v28 + 96);
  swift_beginAccess();
  (*(v7 + 16))(v10, v28 + v29, AssociatedTypeWitness);

  v30 = &v1[*((swift_isaMask & *v1) + 0x68)];
  swift_beginAccess();
  v31 = *(v30 + 3);
  v32 = *(v30 + 1);
  v33 = *v30;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 240))(v33, v32 | (v31 << 16), AssociatedTypeWitness, AssociatedConformanceWitness);
  (*(v7 + 8))(v10, AssociatedTypeWitness);
LABEL_11:
  sub_100320050(-1, 0x64657361656C6572, 0xE800000000000000, 44);
  v37 = *((swift_isaMask & *v1) + 0x70);
  v38 = *&v1[v37];
  *&v1[v37] = 0;

LABEL_12:
  sub_10031FF1C(v1);
  v49.receiver = v1;
  v49.super_class = ObjectType;
  return objc_msgSendSuper2(&v49, "dealloc");
}

void sub_10031FF1C(void *a1)
{
  v2 = *((swift_isaMask & *a1) + 0x98);
  v3 = a1;
  oslog = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    *(v5 + 4) = v3;
    *v6 = a1;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, oslog, v4, "Destroyed %@", v5, 0xCu);
    sub_100016290(v6, &qword_10058B780, &qword_100480AC0);
  }
}

uint64_t sub_100320050(uint64_t a1, uint64_t a2, unint64_t a3, int a4)
{
  LODWORD(v5) = a4;
  v89 = (swift_isaMask & *v4);
  v9 = v89[19];
  v10 = v4;

  v93 = v4;
  v11 = Logger.logObject.getter();
  v94 = a1;
  if (a1 != 2)
  {
    v18 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v11, v18))
    {
      v13 = v5;
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *&v101[0] = v21;
      *v19 = 138412546;
      *(v19 + 4) = v10;
      *v20 = v93;
      *(v19 + 12) = 2080;
      v22 = v10;
      *(v19 + 14) = sub_100002320(a2, a3, v101);
      _os_log_impl(&_mh_execute_header, v11, v18, "%@ was terminated because %s", v19, 0x16u);
      sub_100016290(v20, &qword_10058B780, &qword_100480AC0);

      sub_100002A00(v21);
      a1 = v94;
      goto LABEL_6;
    }

LABEL_7:

    goto LABEL_8;
  }

  v12 = static os_log_type_t.default.getter();

  if (!os_log_type_enabled(v11, v12))
  {
    goto LABEL_7;
  }

  v13 = v5;
  v14 = swift_slowAlloc();
  v15 = swift_slowAlloc();
  v16 = swift_slowAlloc();
  *&v101[0] = v16;
  *v14 = 138412546;
  *(v14 + 4) = v10;
  *v15 = v93;
  *(v14 + 12) = 2080;
  v17 = v10;
  *(v14 + 14) = sub_100002320(a2, a3, v101);
  _os_log_impl(&_mh_execute_header, v11, v12, "%@ was terminated because %s", v14, 0x16u);
  sub_100016290(v15, &qword_10058B780, &qword_100480AC0);
  a1 = 2;

  sub_100002A00(v16);
LABEL_6:

  LODWORD(v5) = v13;

LABEL_8:
  v92 = (v10 + *((swift_isaMask & *v10) + 0xA0));
  if ((*(v92 + 6) & 1) == 0 && *(v10 + *((swift_isaMask & *v10) + 0xD8)) == 1)
  {
    v23 = *v92 | (*(v92 + 2) << 32);
    v24 = sub_1003236D8();
    v25 = (v10 + *((swift_isaMask & *v10) + 0xB8));
    v26 = v25[1];
    v88 = v5;
    v87 = v25;
    if (v26 >> 60 == 15)
    {
      v27 = v23 & 0xFFFFFFFFFFFFLL;
      v28 = WiFiAddress.ipv6LinkLocalAddress.getter(v23 & 0xFFFFFFFFFFFFLL);
      v30 = v29;
      v32 = v31;
      v34 = v33;
    }

    else
    {
      v35 = *v25;
      sub_10000AB0C(*v25, v26);
      v28 = InterfaceIdentifier.ipv6Address.getter(v35, v26);
      v30 = v36;
      v32 = v37;
      v34 = v38;
      sub_100017554(v35, v26);
      v27 = v23 & 0xFFFFFFFFFFFFLL;
    }

    v39 = (*(*v24 + 416))(v101);
    v40 = v89[10];
    v41 = *(v89[11] + 8);
    v42 = type metadata accessor for WiFiInterface.NeighborDiscoveryTable();
    v90 = v27;
    v43 = v32;
    v44 = v42;
    WiFiInterface.NeighborDiscoveryTable.postPeerAbsence(macAddress:ipv6Address:)(v27, v28, v30, v43, v34, v42);
    v39(v101, 0);

    v45 = sub_1003236D8();
    v46 = *(v10 + *((swift_isaMask & *v10) + 0x60));
    swift_unownedRetainStrong();
    v47 = *(v46 + *(*v46 + 472));

    if (v47)
    {

      v48 = v45 == v47;
      a1 = v94;
      LODWORD(v5) = v88;
      if (v48)
      {
        v85 = v44;
        v86 = 0;
        swift_unownedRetainStrong();
        v49 = v87[1];
        if (v49 >> 60 == 15)
        {
          v50 = v27;
          v51 = WiFiAddress.ipv6LinkLocalAddress.getter(v27);
          v53 = v52;
          v55 = v54;
          v57 = v56;
        }

        else
        {
          v5 = *v87;
          sub_10000AB0C(*v87, v87[1]);
          v51 = InterfaceIdentifier.ipv6Address.getter(v5, v49);
          v53 = v80;
          v55 = v81;
          v57 = v82;
          v83 = v5;
          LODWORD(v5) = v88;
          sub_100017554(v83, v49);
          v50 = v90;
        }

        v84 = *(*v46 + 152);
        swift_beginAccess();
        WiFiInterface.NeighborDiscoveryTable.postPeerAbsence(macAddress:ipv6Address:)(v50, v51, v53, v55, v57, v85);
LABEL_51:
        swift_endAccess();

        a1 = v94;
      }
    }

    else
    {

      a1 = v94;
      LODWORD(v5) = v88;
    }
  }

  sub_10031EF0C(a1, v5);
  sub_100332618(3, 0, 4);
  v58 = swift_isaMask & *v10;
  v59 = *(v58 + 0x78);
  v60 = *(v10 + v59);
  v5 = &unk_100588000;
  if (v60)
  {
    [v60 datapathTerminatedWithReason:a1];
    v58 = swift_isaMask & *v10;
  }

  v61 = *(v58 + 128);
  swift_beginAccess();
  v62 = *(v10 + v61);
  v91 = v10;
  if (v62 >> 62)
  {
    v63 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v63 = *((v62 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v63)
  {
    v64 = 0;
    v10 = (v62 & 0xC000000000000001);
    do
    {
      if (v10)
      {
        v65 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v66 = v64 + 1;
        if (__OFADD__(v64, 1))
        {
LABEL_32:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v64 >= *((v62 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_51;
        }

        v65 = *(v62 + 8 * v64 + 32);
        swift_unknownObjectRetain();
        v66 = v64 + 1;
        if (__OFADD__(v64, 1))
        {
          goto LABEL_32;
        }
      }

      [v65 datapathTerminatedWithReason:{v94, v85, v86}];
      swift_unknownObjectRelease();
      ++v64;
    }

    while (v66 != v63);
  }

  v67 = *(v91 + v59);
  *(v91 + v59) = 0;
  swift_unknownObjectRelease();
  v68 = *(v91 + v61);
  *(v91 + v61) = _swiftEmptyArrayStorage;

  if (v94 != -1)
  {
    v70 = *(v91 + *((swift_isaMask & *v91) + 0x60));
    swift_unownedRetainStrong();
    sub_10040CAE8();

    sub_10033AE18(v91);
  }

  v71 = *((swift_isaMask & *v91) + 0xE0);
  if (*(v91 + v71) == 1)
  {
    v72 = v91 + *((swift_isaMask & *v91) + 0x68);
    swift_beginAccess();
    sub_100012400((v72 + 104), &v98, &qword_1005914A8, &qword_100499048);
    if (*(&v99 + 1) == 1)
    {
      result = sub_100016290(&v98, &qword_1005914A8, &qword_100499048);
    }

    else
    {
      v101[0] = v98;
      v101[1] = v99;
      v102 = v100;
      sub_10020C694(v101, &v98);
      if (*(&v99 + 1))
      {
        sub_100179C1C(&v98, v95);
        v73 = v96;
        v74 = v97;
        sub_100029B34(v95, v96);
        (*(v74 + 16))(*(v72 + 25) | (*(v72 + 27) << 16), v73, v74);
        sub_10020C6CC(v101);
        result = sub_100002A00(v95);
      }

      else
      {
        sub_10032BAA8();
        result = sub_10020C6CC(v101);
      }

      *(v91 + v71) = 0;
    }
  }

  if ((*(v92 + 6) & 1) == 0)
  {
    v75 = *(v92 + 2);
    v76 = *v92;
    v77 = *((swift_isaMask & *v91) + 0xF0);
    swift_beginAccess();
    if (*(*(v91 + v77) + 16) && (v78 = v76 | (v75 << 32), sub_100041DE8(v78 & 0xFFFFFFFFFFFFLL), (v79 & 1) != 0))
    {
      swift_endAccess();
      swift_beginAccess();
      sub_1004208F0(v78 & 0xFFFFFFFFFFFFLL);
      swift_endAccess();
    }

    else
    {
      return swift_endAccess();
    }
  }

  return result;
}

uint64_t sub_100320C34(char *a1)
{
  v2 = *a1;
  v3 = swift_isaMask;
  v4 = *&a1[*((swift_isaMask & *a1) + 0x60)];
  swift_unownedRelease();
  sub_100333750(&a1[*((swift_isaMask & *a1) + 0x68)]);
  v5 = *&a1[*((swift_isaMask & *a1) + 0x70)];

  v6 = *&a1[*((swift_isaMask & *a1) + 0x78)];
  swift_unknownObjectRelease();
  v7 = *&a1[*((swift_isaMask & *a1) + 0x80)];

  v8 = *((swift_isaMask & *a1) + 0x98);
  v9 = type metadata accessor for Logger();
  (*(*(v9 - 8) + 8))(&a1[v8], v9);
  v10 = &a1[*((swift_isaMask & *a1) + 0xB0)];
  sub_1001842D0(*v10, *(v10 + 1), *(v10 + 2));
  v11 = &a1[*((swift_isaMask & *a1) + 0xB8)];
  sub_100017554(*v11, *(v11 + 1));
  v12 = *((swift_isaMask & *a1) + 0xC0);
  swift_unknownObjectWeakDestroy();
  v13 = *((swift_isaMask & *a1) + 0xC8);
  v14 = type metadata accessor for DispatchTime();
  v15 = *(*(v14 - 8) + 8);
  v15(&a1[v13], v14);
  v16 = &a1[*((swift_isaMask & *a1) + 0xD0)];
  sub_100333850(*v16, *(v16 + 1), v16[16]);

  v17 = *&a1[*((swift_isaMask & *a1) + 0xF0)];

  sub_100016290(&a1[*((swift_isaMask & *a1) + 0x110)], &unk_100597330, &unk_100481FA0);
  sub_100016290(&a1[*((swift_isaMask & *a1) + 0x118)], &unk_100596870, &unk_1004B0F60);
  v18 = *&a1[*((swift_isaMask & *a1) + 0x128) + 8];

  v19 = *((swift_isaMask & *a1) + 0x140);
  v20 = *((v3 & v2) + 0x50);
  v21 = *((v3 & v2) + 0x58);
  _s17InitiatorInstanceC12PeerIdentityVMa();
  v22 = type metadata accessor for Optional();
  (*(*(v22 - 8) + 8))(&a1[v19], v22);
  memcpy(v25, &a1[*((swift_isaMask & *a1) + 0x148)], sizeof(v25));
  sub_1002CB088(v25);
  v15(&a1[*((swift_isaMask & *a1) + 0x160)], v14);
  v23 = *&a1[*((swift_isaMask & *a1) + 0x168)];
}

uint64_t sub_100321094()
{
  v2 = swift_isaMask & *v0;
  v63 = *(v2 + 0x58);
  v3 = *(v63 + 8);
  v62 = *(v2 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v64 = &v54 - v6;
  v7 = type metadata accessor for DispatchPredicate();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin();
  v11 = (&v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = OS_dispatch_queue.nan.unsafeMutableAddressor();
  v13 = *v12;
  *v11 = *v12;
  (*(v8 + 104))(v11, enum case for DispatchPredicate.onQueue(_:), v7);
  v14 = v13;
  LOBYTE(v13) = _dispatchPreconditionTest(_:)();
  result = (*(v8 + 8))(v11, v7);
  if (v13)
  {
    v16 = v0 + *((swift_isaMask & *v0) + 0xD0);
    if (!v16[16] && (*v16 & 1) != 0)
    {
      v17 = *(v0 + *((swift_isaMask & *v0) + 0x60));
      swift_unownedRetainStrong();
      sub_10040CAE8();

      v18 = *((swift_isaMask & *v0) + 0x68);
      v61 = v0;
      v19 = v0 + v18;
      swift_beginAccess();
      v20 = sub_10033ACA4(*(v19 + 25) | (*(v19 + 27) << 16));

      if ((v20 & 1) == 0)
      {
        v21 = *(v19 + 6);
        v22 = *(v19 + 12);
        if (v22 != 1 && *(v19 + 6) >= 6u)
        {
          v54 = v4;
          v60 = v21;
          v24 = *(v19 + 7);
          v25 = *(v19 + 8);
          v26 = *(v19 + 9);
          v27 = *(v19 + 10);
          v55 = *(v19 + 11);
          sub_10000AB0C(v24, v25);
          v56 = v27;
          v57 = v26;
          sub_10005D67C(v26, v27);
          v59 = v22;

          v28 = static NANPMK.zero.getter();
          v30 = v29;
          v58 = v24;
          v31 = v24;
          v32 = v25;
          LOBYTE(v25) = _s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(v31, v25, v28, v29);
          sub_1000124C8(v28, v30);
          if (v25)
          {
            v33 = sub_100332618(1, 0, 4);
            sub_100321744(v33);
            return sub_10011A270(v60, v58, v32, v57, v56, v55, v59);
          }

          sub_10011A270(v60, v58, v32, v57, v56, v55, v59);
          v4 = v54;
        }

        swift_unownedRetainStrong();
        sub_10040CBA8();

        if (!v1)
        {
          v34 = sub_1003236D8();
          (*(*v34 + 216))(1);

          swift_unownedRetainStrong();
          v35 = *(*v17 + 96);
          swift_beginAccess();
          v36 = v17 + v35;
          v37 = v64;
          v38 = AssociatedTypeWitness;
          (*(v4 + 16))(v64, v36, AssociatedTypeWitness);

          sub_1003336F4(v19, v65);
          AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
          (*(AssociatedConformanceWitness + 216))(v65, v38, AssociatedConformanceWitness);
          sub_100333750(v65);
          (*(v4 + 8))(v37, v38);
          v40 = v61;
          sub_100332618(0, 0, 1);
          v41 = *((swift_isaMask & *v40) + 0x98);
          v42 = v40;
          v43 = v40;
          v44 = Logger.logObject.getter();
          v45 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v44, v45))
          {
            v46 = swift_slowAlloc();
            v47 = swift_slowAlloc();
            *v46 = 138412290;
            *(v46 + 4) = v42;
            *v47 = v43;
            v48 = v42;
            _os_log_impl(&_mh_execute_header, v44, v45, "%@ was started", v46, 0xCu);
            sub_100016290(v47, &qword_10058B780, &qword_100480AC0);
          }

          v49 = *(v42 + *((swift_isaMask & *v42) + 0x78));
          if (v49)
          {
            v50 = *v19;
            v51 = *(v19 + 1) | (*(v19 + 3) << 16);
            swift_unknownObjectRetain();
            v52 = WiFiAddress.apiAddress.getter(v51);
            sub_1003236D8();
            v53 = WiFiInterface.interfaceIndex.getter();

            [v49 datapathStartedWithInstanceID:v50 initiatorDataAddress:v52 localInterfaceIndex:v53];

            swift_unknownObjectRelease();
          }

          return sub_10031EC38();
        }
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100321744()
{
  v1 = v0;
  v2 = *v0;
  v3 = swift_isaMask;
  BeaconInformation = type metadata accessor for NANPeer.LastBeaconInformation(0);
  v242 = *(BeaconInformation - 8);
  v4 = *(v242 + 64);
  __chkstk_darwin();
  v234 = &v230 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(*(sub_10005DC58(&qword_1005954D0, &unk_1004AF470) - 8) + 64);
  __chkstk_darwin();
  v244 = &v230 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v241 = &v230 - v8;
  v239 = type metadata accessor for NANPeer(0);
  v9 = *(*(v239 - 8) + 64);
  __chkstk_darwin();
  v240 = &v230 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v237 = *((v3 & v2) + 0x58);
  v11 = *(v237 + 8);
  v12 = *((v3 & v2) + 0x50);
  swift_getAssociatedTypeWitness();
  v236 = v12;
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v13 = type metadata accessor for Preferences();
  isa = v13[-1].isa;
  v247 = v13;
  v14 = *(isa + 8);
  __chkstk_darwin();
  v245 = &v230 - v15;
  v16 = type metadata accessor for DispatchTime();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin();
  v20 = &v230 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v22 = &v230 - v21;
  v23 = type metadata accessor for DispatchTimeInterval();
  v251 = *(v23 - 8);
  v24 = v251[8];
  __chkstk_darwin();
  v235 = &v230 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v232 = &v230 - v26;
  __chkstk_darwin();
  v238 = &v230 - v27;
  __chkstk_darwin();
  v250 = (&v230 - v28);
  __chkstk_darwin();
  v233 = &v230 - v29;
  __chkstk_darwin();
  v231 = &v230 - v30;
  __chkstk_darwin();
  v248 = (&v230 - v31);
  __chkstk_darwin();
  v33 = &v230 - v32;
  __chkstk_darwin();
  v35 = &v230 - v34;
  type metadata accessor for P2PTimer();
  variable initialization expression of AWDLPeer.lastUpdated();
  v36 = *((swift_isaMask & *v1) + 0xC8);
  swift_beginAccess();
  (*(v17 + 16))(v20, &v1[v36], v16);
  v252 = v35;
  DispatchTime.distance(to:)();
  v37 = *(v17 + 8);
  v37(v20, v16);
  v37(v22, v16);
  v38 = v33;
  v39 = v251;
  *v38 = 10;
  v40 = enum case for DispatchTimeInterval.seconds(_:);
  v41 = v39[13];
  v253 = v23;
  v41(v38, enum case for DispatchTimeInterval.seconds(_:), v23);
  v42 = (swift_isaMask & *v1);
  v43 = &v1[v42[26]];
  v44 = *v43;
  v45 = v43[16];
  if (v45 <= 1)
  {
    v83 = v250;
    if (v43[16])
    {
      v84 = v252;
      v117 = static DispatchTimeInterval.< infix(_:_:)();
      v47 = v253;
      if (v117)
      {
        v249 = v38;
        v118 = *((swift_isaMask & *v1) + 0x98);
        (v39[2])(v83, v84, v253);
        v119 = v1;
        v120 = Logger.logObject.getter();
        v121 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v120, v121))
        {
          v122 = v1;
          v123 = swift_slowAlloc();
          v124 = swift_slowAlloc();
          v248 = swift_slowAlloc();
          v259[0] = v248;
          *v123 = 138412802;
          *(v123 + 4) = v119;
          *v124 = v122;
          *(v123 + 12) = 2080;
          v125 = v119;
          v126 = DispatchTimeInterval.description.getter();
          v127 = v39;
          v129 = v128;
          (v127[1])(v83, v253);
          v130 = sub_100002320(v126, v129, v259);
          v39 = v127;

          *(v123 + 14) = v130;
          *(v123 + 22) = 2048;
          *(v123 + 24) = v44;
          _os_log_impl(&_mh_execute_header, v120, v121, "%@ did not get the datapath request acknowledgement for %s, retry #%ld", v123, 0x20u);
          sub_100016290(v124, &qword_10058B780, &qword_100480AC0);
          v84 = v252;

          sub_100002A00(v248);
          v47 = v253;
        }

        else
        {

          (v39[1])(v83, v47);
        }

        sub_100323854();
        goto LABEL_76;
      }

      goto LABEL_42;
    }

    v84 = v252;
    v47 = v253;
    if ((v44 & 1) == 0)
    {
      goto LABEL_42;
    }

    v249 = v38;
    v85 = *&v1[v42[12]];
    swift_unownedRetainStrong();
    sub_10040CAE8();

    v86 = &v1[*((swift_isaMask & *v1) + 0x68)];
    swift_beginAccess();
    LOBYTE(v86) = sub_10033ACA4(*(v86 + 25) | (*(v86 + 27) << 16));

    if ((v86 & 1) == 0)
    {
      sub_100321094();
      goto LABEL_76;
    }

    v87 = NANConstants.keepAliveTimeout.unsafeMutableAddressor();
    v88 = v248;
    (v39[2])(v248, v87, v47);
    v89 = static DispatchTimeInterval.< infix(_:_:)();
    v90 = v39[1];
    v90(v88, v47);
    if (v89)
    {
      sub_100320050(1, 0xD000000000000025, 0x80000001004BF920, 14);
    }

LABEL_22:
    v90(v249, v47);
    return (v90)(v84, v47);
  }

  v46 = *(v43 + 1);
  if (v45 == 2)
  {
    v84 = v252;
    if (!static DispatchTimeInterval.< infix(_:_:)())
    {
      v131 = v39[1];
      v132 = v38;
      v133 = v253;
      v131(v132, v253);
      return (v131)(v84, v133);
    }

    v249 = v38;
    v92 = *((swift_isaMask & *v1) + 0x98);
    v93 = v238;
    v47 = v253;
    (v39[2])(v238, v84, v253);
    v94 = v1;
    v95 = Logger.logObject.getter();
    v96 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v95, v96))
    {
      v97 = v93;
      v98 = swift_slowAlloc();
      v99 = swift_slowAlloc();
      v250 = swift_slowAlloc();
      v259[0] = v250;
      *v98 = 138412802;
      *(v98 + 4) = v94;
      *v99 = v1;
      *(v98 + 12) = 2080;
      v100 = v94;
      v101 = DispatchTimeInterval.description.getter();
      v102 = v39;
      v104 = v103;
      (v102[1])(v97, v253);
      v105 = sub_100002320(v101, v104, v259);
      v39 = v102;

      *(v98 + 14) = v105;
      *(v98 + 22) = 2048;
      *(v98 + 24) = v46;
      _os_log_impl(&_mh_execute_header, v95, v96, "%@ did not get the datapath confirmation acknowledgement for %s, retry #%ld", v98, 0x20u);
      sub_100016290(v99, &qword_10058B780, &qword_100480AC0);
      v47 = v253;

      sub_100002A00(v250);
      v84 = v252;
    }

    else
    {

      (v39[1])(v93, v47);
    }

    sub_1003244CC();
    goto LABEL_76;
  }

  v249 = v38;
  if (v45 == 3)
  {
    v47 = v253;
    if (v1[v42[18]] == 1)
    {
      v48 = *&v1[v42[12]];
      swift_unownedRetainStrong();
      v49 = sub_10031E264();
      v50 = v240;
      sub_10040CD68(v49, v240);

      v51 = v241;
      sub_100012400(v50 + *(v239 + 32), v241, &qword_1005954D0, &unk_1004AF470);
      sub_100023958(v50, type metadata accessor for NANPeer);
      v52 = v51;
      v53 = v244;
      sub_10001CEA8(v52, v244, &qword_1005954D0, &unk_1004AF470);
      if ((*(v242 + 48))(v53, 1, BeaconInformation) != 1)
      {
        v54 = v234;
        sub_1003337A4(v244, v234);
        v55 = *(v54 + 8);
        sub_100023958(v54, type metadata accessor for NANPeer.LastBeaconInformation);
        v56 = *&v1[*((swift_isaMask & *v1) + 0x78)];
        if (v56)
        {
          v57 = 0x7FFFFFFFLL;
          if (v55 < 0x7FFFFFFF)
          {
            v57 = v55;
          }

          if (v57 <= 0xFFFFFFFF80000000)
          {
            v58 = 0xFFFFFFFF80000000;
          }

          else
          {
            v58 = v57;
          }

          [v56 datapathUpdatedPeerRSSI:v58];
        }
      }
    }

    v59 = *&v1[*((swift_isaMask & *v1) + 0x60)];
    swift_unownedRetainStrong();
    v60 = v245;
    WiFiInterface.preferences.getter();

    v61 = v247;
    v62 = Preferences.enableUserspaceP2POptions.getter(v247);
    (*(isa + 1))(v60, v61);
    if ((*PreferenceDefaults.EnableUserspaceP2POptions.keepAliveTermination.unsafeMutableAddressor() & ~v62) != 0)
    {
      v68 = v39[1];
      v68(v249, v47);
    }

    else
    {
      v63 = NANConstants.keepAliveTimeout.unsafeMutableAddressor();
      v64 = v39[2];
      v65 = v248;
      v64(v248, v63, v47);
      v66 = v252;
      v67 = static DispatchTimeInterval.< infix(_:_:)();
      v68 = v39[1];
      v68(v65, v47);
      if (v67)
      {
        v69 = *((swift_isaMask & *v1) + 0x98);
        v70 = v235;
        v64(v235, v66, v47);
        v71 = v1;
        v72 = Logger.logObject.getter();
        v73 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v72, v73))
        {
          v74 = swift_slowAlloc();
          v75 = swift_slowAlloc();
          v250 = swift_slowAlloc();
          v259[0] = v250;
          *v74 = 138412546;
          *(v74 + 4) = v71;
          *v75 = v1;
          *(v74 + 12) = 2080;
          v76 = v71;
          v248 = v72;
          v77 = DispatchTimeInterval.description.getter();
          v78 = v39;
          v80 = v79;
          v68(v70, v253);
          v81 = sub_100002320(v77, v80, v259);
          v39 = v78;

          *(v74 + 14) = v81;
          v82 = v248;
          _os_log_impl(&_mh_execute_header, v248, v73, "%@ will be terminated because no keep alive was received for %s", v74, 0x16u);
          sub_100016290(v75, &qword_10058B780, &qword_100480AC0);
          v47 = v253;

          sub_100002A00(v250);
        }

        else
        {

          v68(v70, v47);
        }

        sub_100323CDC();
        v84 = v252;
        goto LABEL_76;
      }

      v68(v249, v47);
    }

    return (v68)(v252, v47);
  }

  if (v44 > 1)
  {
    if (!(v44 ^ 2 | v46))
    {
      v84 = v252;
      v134 = static DispatchTimeInterval.< infix(_:_:)();
      v47 = v253;
      if (v134)
      {
        v135 = *((swift_isaMask & *v1) + 0x98);
        v136 = v232;
        (v39[2])(v232, v84, v253);
        v137 = v1;
        v138 = Logger.logObject.getter();
        v139 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v138, v139))
        {
          v140 = swift_slowAlloc();
          v141 = swift_slowAlloc();
          v142 = swift_slowAlloc();
          v259[0] = v142;
          *v140 = 138412546;
          *(v140 + 4) = v137;
          *v141 = v1;
          *(v140 + 12) = 2080;
          v143 = v137;
          v144 = DispatchTimeInterval.description.getter();
          v145 = v39;
          v147 = v146;
          (v145[1])(v136, v253);
          v148 = sub_100002320(v144, v147, v259);
          v39 = v145;

          *(v140 + 14) = v148;
          _os_log_impl(&_mh_execute_header, v138, v139, "%@ will be terminated because no response was received for %s", v140, 0x16u);
          sub_100016290(v141, &qword_10058B780, &qword_100480AC0);
          v84 = v252;

          sub_100002A00(v142);
          v47 = v253;
        }

        else
        {

          (v39[1])(v136, v47);
        }

        sub_100323CDC();
        goto LABEL_76;
      }

LABEL_42:
      v149 = v39[1];
      v149(v38, v47);
      return (v149)(v84, v47);
    }

    v170 = NANConstants.serviceTerminateEventTimeout.unsafeMutableAddressor();
    v171 = v248;
    v47 = v253;
    (v39[2])(v248, v170, v253);
    v84 = v252;
    v172 = static DispatchTimeInterval.< infix(_:_:)();
    v90 = v39[1];
    v90(v171, v47);
    if (v172)
    {
      sub_100320050(2, 0xD000000000000026, 0x80000001004BE520, 42);
      goto LABEL_76;
    }

    goto LABEL_22;
  }

  if (v44 | v46)
  {
    v150 = *&v1[v42[12]];
    swift_unownedRetainStrong();
    v151 = v245;
    WiFiInterface.preferences.getter();

    v152 = v247;
    v153 = Preferences.enableNANPairingCertification.getter(v247);
    (*(isa + 1))(v151, v152);
    v154 = 60;
    if (v153)
    {
      v154 = 600;
    }

    v155 = v248;
    *v248 = v154;
    v156 = v40;
    v157 = v253;
    v41(v155, v156, v253);
    v84 = v252;
    v158 = static DispatchTimeInterval.< infix(_:_:)();
    v159 = v39[1];
    (v159)(v155, v157);
    v250 = v159;
    if (!v158)
    {
      v173 = *((swift_isaMask & *v1) + 0x98);
      v174 = v233;
      (v39[2])(v233, v84, v157);
      v175 = v1;
      v176 = Logger.logObject.getter();
      v177 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v176, v177))
      {
        v178 = swift_slowAlloc();
        v179 = swift_slowAlloc();
        v248 = v179;
        v251 = swift_slowAlloc();
        v259[0] = v251;
        *v178 = 138412546;
        *(v178 + 4) = v175;
        *v179 = v1;
        *(v178 + 12) = 2080;
        v180 = v175;
        v247 = v176;
        v181 = DispatchTimeInterval.description.getter();
        v183 = v182;
        (v250)(v174, v157);
        v184 = sub_100002320(v181, v183, v259);

        *(v178 + 14) = v184;
        v185 = v247;
        _os_log_impl(&_mh_execute_header, v247, v177, "%@ will be terminated because unable to pair for %s", v178, 0x16u);
        sub_100016290(v248, &qword_10058B780, &qword_100480AC0);
        v84 = v252;

        sub_100002A00(v251);
      }

      else
      {

        (v159)(v174, v157);
      }

      swift_unownedRetainStrong();
      v209 = sub_10040CAE8();

      v210 = qword_10059B9C8;
      swift_beginAccess();
      v211 = *(v209 + v210);

      v212 = &v175[*((swift_isaMask & *v175) + 0x68)];
      swift_beginAccess();
      v213 = *(v212 + 29);
      v254 = *(v212 + 25);
      v255 = v213;
      v214 = v236;
      v215 = v237;
      _s17InitiatorInstanceCMa_0();
      _s17ResponderInstanceCMa_0();
      type metadata accessor for Either();
      sub_1002CAFC4();
      Dictionary.subscript.getter();

      v216 = v257;
      if (v257 != 255)
      {
        v217 = v256;
        sub_100428B18(v256, v257 & 1, v214, v215);
        swift_unownedRetainStrong();
        sub_10040CAE8();

        sub_1003379B8(*(v212 + 25) | (*(v212 + 27) << 16));

        sub_1002CB018(v217, v216);
      }

      sub_100323CDC();
      v218 = v250;
      v219 = v253;
      (v250)(v249, v253);
      return (v218)(v84, v219);
    }

    swift_unownedRetainStrong();
    v160 = sub_10040CAE8();

    v161 = qword_10059B9C8;
    swift_beginAccess();
    v162 = *(v160 + v161);

    v163 = &v1[*((swift_isaMask & *v1) + 0x68)];
    swift_beginAccess();
    v164 = *(v163 + 29);
    v254 = *(v163 + 25);
    v255 = v164;
    _s17InitiatorInstanceCMa_0();
    _s17ResponderInstanceCMa_0();
    type metadata accessor for Either();
    sub_1002CAFC4();
    Dictionary.subscript.getter();

    v165 = v257;
    if (v257 == 255)
    {
LABEL_53:
      v168 = v250;
      v169 = v253;
      (v250)(v249, v253);
      return (v168)(v84, v169);
    }

    v248 = v256;
    v166 = sub_100428AB0(v256, v257 & 1);
    if (v167 >> 60 == 15)
    {
      sub_1002CB018(v248, v165);
      goto LABEL_53;
    }

    v220 = v166;
    v221 = v167;
    v222 = sub_100428AE0(v248);
    sub_10000AB0C(v220, v221);
    sub_100017554(0, 0xF000000000000000);
    sub_10000AB0C(v220, v221);
    sub_10005D67C(0, 0xF000000000000000);
    sub_1000124C8(v220, v221);
    sub_100017554(0, 0xF000000000000000);

    v223 = *(v163 + 6);
    v224 = *(v163 + 7);
    v225 = *(v163 + 8);
    v226 = *(v163 + 9);
    v227 = *(v163 + 10);
    v228 = *(v163 + 11);
    v229 = *(v163 + 12);
    *(v163 + 6) = v222;
    *(v163 + 7) = v220;
    *(v163 + 8) = v221;
    *(v163 + 72) = xmmword_100483C50;
    *(v163 + 11) = 0;
    *(v163 + 12) = 0;
    sub_10011A270(v223, v224, v225, v226, v227, v228, v229);
    sub_100332618(1, 0, 0);
    sub_100321094();
    sub_1002CB018(v248, v165);
    sub_100017554(v220, v221);
    v47 = v253;
LABEL_76:
    v149 = v39[1];
    v149(v249, v47);
    return (v149)(v84, v47);
  }

  v250 = v1;
  v106 = v248;
  *v248 = 2;
  v107 = v253;
  v41(v106, v40, v253);
  v84 = v252;
  v108 = static DispatchTimeInterval.< infix(_:_:)();
  v109 = v39[1];
  v109(v106, v107);
  if (!v108)
  {
    v109(v249, v107);
    return (v109)(v84, v107);
  }

  v110 = v250;
  v111 = *(v250 + *((swift_isaMask & *v250) + 0x60));
  swift_unownedRetainStrong();
  sub_10040CAE8();

  v112 = v110 + *((swift_isaMask & *v110) + 0x68);
  swift_beginAccess();
  LOBYTE(v112) = sub_10033ACA4(*(v112 + 25) | (*(v112 + 27) << 16));

  if ((v112 & 1) == 0)
  {
    v186 = *((swift_isaMask & *v110) + 0x98);
    v187 = v231;
    v188 = v253;
    (v39[2])(v231, v84, v253);
    v189 = v110;
    v190 = Logger.logObject.getter();
    LODWORD(v248) = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v190, v248))
    {
      v191 = v187;
      v192 = swift_slowAlloc();
      v193 = swift_slowAlloc();
      isa = v193;
      v247 = swift_slowAlloc();
      v258 = v247;
      *v192 = 138412802;
      *(v192 + 4) = v189;
      *v193 = v110;
      *(v192 + 12) = 2080;
      v194 = v189;
      v195 = v190;
      v196 = DispatchTimeInterval.description.getter();
      v198 = v197;
      v199 = v191;
      v188 = v253;
      v109(v199, v253);
      v200 = sub_100002320(v196, v198, &v258);

      *(v192 + 14) = v200;
      *(v192 + 22) = 2080;
      v201 = *v43;
      v202 = *(v43 + 1);
      v203 = v43[16];
      sub_100333808(*v43, v202, v203);

      v204 = sub_10031DDC8(v201, v202, v203);
      v206 = v205;

      v207 = v202;
      v39 = v251;
      v84 = v252;
      sub_100333850(v201, v207, v203);
      v208 = sub_100002320(v204, v206, &v258);

      *(v192 + 24) = v208;
      _os_log_impl(&_mh_execute_header, v195, v248, "%@ will attempt to retry request since its been %s in %s", v192, 0x20u);
      sub_100016290(isa, &qword_10058B780, &qword_100480AC0);

      swift_arrayDestroy();
    }

    else
    {

      v109(v187, v188);
    }

    v47 = v188;
    sub_100332618(0, 0, 1);
    sub_100323854();
    goto LABEL_76;
  }

  v113 = NANConstants.keepAliveTimeout.unsafeMutableAddressor();
  v114 = v248;
  v115 = v253;
  (v39[2])(v248, v113, v253);
  v116 = static DispatchTimeInterval.< infix(_:_:)();
  v109(v114, v115);
  if (v116)
  {
    sub_100320050(1, 0xD000000000000027, 0x80000001004BF8F0, 14);
  }

  v109(v249, v115);
  return (v109)(v84, v115);
}

uint64_t sub_1003236D8()
{
  v1 = v0 + *((swift_isaMask & *v0) + 0x68);
  swift_beginAccess();
  sub_100012400((v1 + 104), v7, &qword_1005914A8, &qword_100499048);
  if (v8)
  {
    if (v8 == 1)
    {
      sub_100016290(v7, &qword_1005914A8, &qword_100499048);
    }

    else
    {
      sub_10020C6CC(v7);
    }

    v4 = v1[32];
    v2 = *(v0 + *((swift_isaMask & *v0) + 0x60));
    swift_unownedRetainStrong();
    if (v4 != 2)
    {
      return v2;
    }

    v3 = 472;
  }

  else
  {
    sub_10020C6CC(v7);
    v2 = *(v0 + *((swift_isaMask & *v0) + 0x60));
    swift_unownedRetainStrong();
    v3 = 480;
  }

  v5 = *(v2 + *(*v2 + v3));

  result = v5;
  if (!v5)
  {
    return swift_unownedRetainStrong();
  }

  return result;
}

void sub_100323854()
{
  v1 = v0;
  v2 = *v0;
  v3 = swift_isaMask;
  v4 = swift_isaMask & *v0;
  v5 = *(*((swift_isaMask & v2) + 0x58) + 8);
  v6 = *((swift_isaMask & v2) + 0x50);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(*(AssociatedTypeWitness - 8) + 64);
  __chkstk_darwin();
  v11 = &v27[-v10 - 8];
  v12 = v1 + *((v3 & v2) + 0xD0);
  if (v12[16] == 1)
  {
    v13 = *v12;
    if (*v12 > 2)
    {
      v19 = *(v4 + 152);
      v20 = v1;
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        *v23 = 138412290;
        *(v23 + 4) = v20;
        *v24 = v1;
        v25 = v20;
        _os_log_impl(&_mh_execute_header, v21, v22, "%@ is being terminated because request retries exceeded", v23, 0xCu);
        sub_100016290(v24, &qword_10058B780, &qword_100480AC0);
      }

      sub_100323CDC();
    }

    else
    {
      v26 = v9;
      v14 = *(v1 + *(v4 + 96));
      swift_unownedRetainStrong();
      sub_10040CBA8();

      v15 = sub_1003236D8();
      (*(*v15 + 216))(1);

      swift_unownedRetainStrong();
      v16 = *(*v14 + 96);
      swift_beginAccess();
      (*(v26 + 16))(v11, v14 + v16, AssociatedTypeWitness);

      v17 = *((swift_isaMask & *v1) + 0x68);
      swift_beginAccess();
      sub_1003336F4(v1 + v17, v27);
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      (*(AssociatedConformanceWitness + 216))(v27, AssociatedTypeWitness, AssociatedConformanceWitness);
      sub_100333750(v27);
      (*(v26 + 8))(v11, AssociatedTypeWitness);
      sub_100332618((v13 + 1), 0, 1);
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_100323CDC()
{
  v1 = v0;
  v2 = *((swift_isaMask & *v0) + 0x58);
  v3 = *(v2 + 8);
  v4 = *((swift_isaMask & *v0) + 0x50);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v56 = *(AssociatedTypeWitness - 8);
  v6 = *(v56 + 64);
  __chkstk_darwin();
  v8 = &v54 - v7;
  v9 = type metadata accessor for DispatchPredicate();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin();
  v13 = (&v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = OS_dispatch_queue.nan.unsafeMutableAddressor();
  v15 = *v14;
  *v13 = *v14;
  (*(v10 + 104))(v13, enum case for DispatchPredicate.onQueue(_:), v9);
  v16 = v15;
  LOBYTE(v15) = _dispatchPreconditionTest(_:)();
  (*(v10 + 8))(v13, v9);
  if ((v15 & 1) == 0)
  {
    __break(1u);
LABEL_19:
    __break(1u);
    return;
  }

  v17 = v1 + *((swift_isaMask & *v1) + 0xD0);
  if (v17[16] - 1 < 3)
  {
    goto LABEL_3;
  }

  if (!v17[16] || (v46 = *v17, v45 = *(v17 + 1), __PAIR128__(v45, v46) < 2))
  {
    sub_100320050(2, 0x7165722072657375, 0xEC00000074736575, 45);
    return;
  }

  if (!(v46 ^ 2 | v45))
  {
LABEL_3:
    v18 = *((swift_isaMask & *v1) + 0x98);
    v19 = v1;
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v55 = v4;
      v24 = v23;
      *v22 = 138412290;
      *(v22 + 4) = v19;
      *v23 = v1;
      v25 = v19;
      _os_log_impl(&_mh_execute_header, v20, v21, "%@ will attempt to stop", v22, 0xCu);
      sub_100016290(v24, &qword_10058B780, &qword_100480AC0);
      v4 = v55;
    }

    sub_100332618(3, 0, 4);
    v26 = (v19 + *((swift_isaMask & *v19) + 0xA0));
    if (*(v26 + 6))
    {
      goto LABEL_9;
    }

    v27 = *(v19 + *((swift_isaMask & *v19) + 0x60));
    swift_unownedRetainStrong();
    v28 = sub_10040CAE8();

    v29 = qword_10059B9C8;
    swift_beginAccess();
    v30 = *(v28 + v29);

    if ((*(v26 + 6) & 1) == 0)
    {
      v31 = *(v26 + 2);
      v32 = *v26 | (v31 << 32);
      v57 = *v26;
      v33.i64[0] = 0xFFFFFFFFFFFFLL;
      v33.i64[1] = 0xFFFFFFFFFFFFLL;
      v34 = vandq_s8(vdupq_n_s64(v32), v33);
      v35 = vshlq_u64(v34, xmmword_1004817A0);
      *v34.i8 = vmovn_s64(vshlq_u64(v34, xmmword_100481790));
      *v35.i8 = vmovn_s64(v35);
      v35.i16[1] = v35.i16[2];
      v35.i16[2] = v34.i16[0];
      v35.i16[3] = v34.i16[2];
      v58 = vmovn_s16(v35).u32[0];
      v59 = BYTE1(v31);
      _s17InitiatorInstanceCMa_0();
      _s17ResponderInstanceCMa_0();
      type metadata accessor for Either();
      sub_1002CAFC4();
      Dictionary.subscript.getter();

      v36 = v61;
      if (v61 != 255)
      {
        v37 = v60;
        sub_100428A84(v60, v61 & 1, v4, v2);
        sub_1002CB018(v37, v36);
      }

LABEL_9:
      v38 = *(v19 + *((swift_isaMask & *v19) + 0x60));
      swift_unownedRetainStrong();
      sub_10040CBA8();

      swift_unownedRetainStrong();
      v39 = *(*v38 + 96);
      swift_beginAccess();
      (*(v56 + 16))(v8, v38 + v39, AssociatedTypeWitness);

      v40 = v19 + *((swift_isaMask & *v19) + 0x68);
      swift_beginAccess();
      v41 = *(v40 + 3);
      v42 = *(v40 + 1);
      v43 = *v40;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      (*(AssociatedConformanceWitness + 240))(v43, v42 | (v41 << 16), AssociatedTypeWitness, AssociatedConformanceWitness);
      (*(v56 + 8))(v8, AssociatedTypeWitness);
      return;
    }

    goto LABEL_19;
  }

  v47 = *((swift_isaMask & *v1) + 0x98);
  v48 = v1;
  v49 = Logger.logObject.getter();
  v50 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    *v51 = 138412290;
    *(v51 + 4) = v48;
    *v52 = v1;
    v53 = v48;
    _os_log_impl(&_mh_execute_header, v49, v50, "%@ was already in process of termination, ignoring request to terminate", v51, 0xCu);
    sub_100016290(v52, &qword_10058B780, &qword_100480AC0);
  }
}

uint64_t sub_1003244CC()
{
  v1 = *v0;
  v2 = swift_isaMask;
  v3 = (swift_isaMask & *v0);
  v4 = *(v3[11] + 8);
  v5 = v3[10];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = *(v7 + 64);
  result = __chkstk_darwin();
  v11 = &v19 - v10;
  v12 = v0 + *((v2 & v1) + 0xD0);
  if (v12[16] == 2)
  {
    v13 = *(v12 + 1);
    if (v13 > 2)
    {

      return sub_100320050(1, 0xD00000000000001DLL, 0x80000001004BF9A0, 24);
    }

    else
    {
      v14 = *v12;
      v15 = v3[12];
      v19 = v0;
      v16 = *(v0 + v15);
      swift_unownedRetainStrong();
      sub_10040CBA8();

      swift_unownedRetainStrong();
      v17 = *(*v16 + 96);
      swift_beginAccess();
      (*(v7 + 16))(v11, v16 + v17, AssociatedTypeWitness);

      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      (*(AssociatedConformanceWitness + 288))(v14, AssociatedTypeWitness, AssociatedConformanceWitness);
      (*(v7 + 8))(v11, AssociatedTypeWitness);
      return sub_100332618(v14, v13 + 1, 2);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1003291E8()
{
  v1 = swift_isaMask & *v0;
  v73 = *(v1 + 0x58);
  v2 = *(v73 + 8);
  v3 = *(v1 + 80);
  swift_getAssociatedTypeWitness();
  v68 = v3;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v4 = type metadata accessor for Preferences();
  v5 = *(v4 - 8);
  v76 = v4;
  v77 = v5;
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v64 = &v62 - v7;
  v62 = swift_checkMetadataState();
  v8 = *(v62 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin();
  v11 = &v62 - v10;
  v12 = type metadata accessor for DispatchTimeInterval();
  v80 = *(v12 - 8);
  v81 = v12;
  v13 = *(v80 + 64);
  __chkstk_darwin();
  v78 = (&v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v79 = AssociatedTypeWitness;
  v70 = *(AssociatedTypeWitness - 8);
  v16 = v70;
  v17 = *(v70 + 64);
  __chkstk_darwin();
  v74 = &v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v20 = &v62 - v19;
  v69 = &v62 - v19;
  v21 = type metadata accessor for DispatchTime();
  v82 = *(v21 - 8);
  v83 = v21;
  v67 = *(v82 + 64);
  __chkstk_darwin();
  v63 = &v62 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v24 = &v62 - v23;
  type metadata accessor for P2PTimer();
  variable initialization expression of AWDLPeer.lastUpdated();
  v25 = *(v0 + *((swift_isaMask & *v0) + 0x60));
  swift_unownedRetainStrong();
  v26 = *(*v25 + 96);
  swift_beginAccess();
  v27 = *(v16 + 16);
  v71 = v16 + 16;
  v72 = v27;
  v27(v20, v25 + v26, AssociatedTypeWitness);

  v28 = sub_1003236D8();
  v29 = (v28 + *(*v28 + 104));
  v30 = v29[1];
  v66 = *v29;
  v65 = v30;

  swift_unownedRetainStrong();
  v31 = v62;
  (*(v8 + 16))(v11, v25 + *(*v25 + 112), v62);

  v32 = v64;
  (*(AssociatedConformanceWitness + 120))(v31);
  (*(v8 + 8))(v11, v31);
  v33 = v76;
  LODWORD(v26) = Preferences.linkTestIntervalMinutes.getter(v76);
  (*(v77 + 8))(v32, v33);
  *v78 = 60 * v26;
  (*(v80 + 104))();
  v34 = swift_allocObject();
  v77 = v34;
  swift_unknownObjectWeakInit();
  v35 = swift_allocObject();
  v64 = v35;
  v36 = v68;
  v37 = v73;
  *(v35 + 2) = v68;
  *(v35 + 3) = v37;
  *(v35 + 4) = v34;
  v38 = swift_allocObject();
  v76 = v38;
  swift_unknownObjectWeakInit();
  v39 = swift_allocObject();
  v39[2] = v36;
  v39[3] = v37;
  v39[4] = v38;
  v40 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v41 = v82;
  v42 = v83;
  v43 = *(v82 + 16);
  v44 = v63;
  AssociatedConformanceWitness = v24;
  v43(v63, v24, v83);
  v45 = v41;
  v46 = (*(v41 + 80) + 40) & ~*(v41 + 80);
  v47 = swift_allocObject();
  *(v47 + 2) = v36;
  *(v47 + 3) = v37;
  *(v47 + 4) = v40;
  v62 = v40;
  (*(v45 + 32))(&v47[v46], v44, v42);
  v48 = v79;
  v49 = swift_getAssociatedConformanceWitness();
  v50 = *(v49 + 8);
  v51 = *(v50 + 32);

  v60 = v48;
  v61 = v50;
  v52 = v78;
  v53 = v69;
  v51(v66, v65, v78, sub_100333904, v64, sub_100333910, v39, sub_10033391C, v47, v60, v61);

  v54 = v70;

  (*(v80 + 8))(v52, v81);
  v55 = *(v54 + 8);
  v56 = v79;
  v55(v53, v79);

  v57 = v74;

  swift_unownedRetainStrong();
  v58 = *(*v25 + 96);
  swift_beginAccess();
  v72(v57, v25 + v58, v56);

  (*(v49 + 408))(1, v56, v49);
  v55(v57, v56);
  return (*(v82 + 8))(AssociatedConformanceWitness, v83);
}

void sub_100329B08(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    a4();
  }
}

void sub_100329B64(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = (swift_isaMask & *v1);
  v6 = *((swift_isaMask & v4) + 0x50);
  v181 = *((swift_isaMask & v4) + 0x58);
  v182 = v6;
  v176 = _s17InitiatorInstanceC12PeerIdentityVMa();
  v7 = type metadata accessor for Optional();
  v177 = *(v7 - 8);
  v178 = v7;
  v8 = *(v177 + 64);
  __chkstk_darwin();
  v169 = &v154 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v175 = &v154 - v10;
  v11 = type metadata accessor for DispatchTime();
  v166 = *(v11 - 8);
  v167 = v11;
  v12 = *(v166 + 64);
  __chkstk_darwin();
  v164 = &v154 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v165 = &v154 - v14;
  v15 = *(*(sub_10005DC58(&qword_1005985E0, &unk_1004B0F80) - 8) + 64);
  __chkstk_darwin();
  v171 = &v154 - v16;
  v183 = type metadata accessor for UUID();
  v17 = *(v183 - 8);
  v18 = v17[8];
  __chkstk_darwin();
  v161 = &v154 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v162 = v21;
  v163 = &v154 - v20;
  __chkstk_darwin();
  v23 = &v154 - v22;
  v24 = type metadata accessor for NANPeer(0);
  v25 = *(*(v24 - 8) + 64);
  __chkstk_darwin();
  v27 = &v154 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = *(*(sub_10005DC58(&qword_10058F4D0, &qword_100491AB0) - 8) + 64);
  __chkstk_darwin();
  v174 = &v154 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v173 = &v154 - v30;
  __chkstk_darwin();
  __chkstk_darwin();
  v32 = &v154 - v31;
  __chkstk_darwin();
  v34 = &v154 - v33;
  v35 = __chkstk_darwin();
  v184 = (&v154 - v37);
  v179 = a1;
  if ((a1 & 0x1000000000000) == 0)
  {
    v172 = v35;
    v168 = v23;
    v38 = (v2 + v5[21]);
    v39 = *(v38 + 6);
    v180 = v17;
    v158 = v36;
    v159 = v38;
    if (v39)
    {
      v40 = v17[7];
      v41 = v17;
      v42 = v183;
      v40(v34, 1, 1, v183);
    }

    else
    {
      v47 = *v38 | (*(v38 + 2) << 32);
      v48 = *(v2 + v5[12]);
      swift_unownedRetainStrong();
      sub_10040CD68(v47, v27);

      sub_100012400(&v27[*(v24 + 88)], v34, &qword_10058F4D0, &qword_100491AB0);
      sub_100023958(v27, type metadata accessor for NANPeer);
      v49 = v17[6];
      v41 = v17;
      v42 = v183;
      if (v49(v34, 1, v183) != 1)
      {
        v160 = v49;
        v51 = v184;
        (v41[4])(v184, v34, v42);
        (v41[7])(v51, 0, 1, v42);
        goto LABEL_13;
      }
    }

    v50 = *(v2 + *((swift_isaMask & *v2) + 0x60));
    swift_unownedRetainStrong();
    sub_10040CD68(v179 & 0xFFFFFFFFFFFFLL, v27);

    sub_100012400(&v27[*(v24 + 88)], v184, &qword_10058F4D0, &qword_100491AB0);
    sub_100023958(v27, type metadata accessor for NANPeer);
    v160 = v41[6];
    if (v160(v34, 1, v42) != 1)
    {
      sub_100016290(v34, &qword_10058F4D0, &qword_100491AB0);
    }

LABEL_13:
    v52 = *((swift_isaMask & *v2) + 0x98);
    sub_100012400(v184, v32, &qword_10058F4D0, &qword_100491AB0);
    v53 = v2;
    v170 = v52;
    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v54, v55))
    {
      LODWORD(v157) = v55;
      v56 = swift_slowAlloc();
      v156 = swift_slowAlloc();
      v188 = v156;
      *v56 = 136315394;
      v57 = v53 + *((swift_isaMask & *v53) + 0x68);
      swift_beginAccess();
      v58 = *(v57 + 168);
      v59 = *(v57 + 200);
      v189[1] = *(v57 + 184);
      v189[2] = v59;
      v189[0] = v58;
      v60 = *(v57 + 216);
      v61 = *(v57 + 232);
      v62 = *(v57 + 248);
      v190 = *(v57 + 33);
      v189[4] = v61;
      v189[5] = v62;
      v189[3] = v60;
      v63 = *(v57 + 168);
      v64 = *(v57 + 184);
      v186[2] = *(v57 + 200);
      v186[0] = v63;
      v186[1] = v64;
      v65 = *(v57 + 216);
      v66 = *(v57 + 232);
      v67 = *(v57 + 248);
      v187 = *(v57 + 33);
      v186[4] = v66;
      v186[5] = v67;
      v186[3] = v65;
      sub_100012400(v189, &v185, &qword_1005968A0, &unk_100499050);
      sub_10005DC58(&qword_1005968A0, &unk_100499050);
      v68 = String.init<A>(describing:)();
      v70 = sub_100002320(v68, v69, &v188);

      *(v56 + 4) = v70;
      *(v56 + 12) = 2080;
      sub_100012400(v32, v158, &qword_10058F4D0, &qword_100491AB0);
      v71 = String.init<A>(describing:)();
      v73 = v72;
      sub_100016290(v32, &qword_10058F4D0, &qword_100491AB0);
      v74 = sub_100002320(v71, v73, &v188);

      *(v56 + 14) = v74;
      _os_log_impl(&_mh_execute_header, v54, v157, "Pairing Metadata: %s, PairingKeystoreUUID: %s", v56, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_100016290(v32, &qword_10058F4D0, &qword_100491AB0);
    }

    v75 = v183;
    v76 = v180;
    v77 = v53;
    v78 = Logger.logObject.getter();
    v79 = static os_log_type_t.default.getter();
    v172 = v77;

    if (os_log_type_enabled(v78, v79))
    {
      v80 = swift_slowAlloc();
      *&v189[0] = swift_slowAlloc();
      *v80 = 136315394;
      v81 = WiFiAddress.description.getter(v179 & 0xFFFFFFFFFFFFLL);
      v83 = sub_100002320(v81, v82, v189);

      *(v80 + 4) = v83;
      *(v80 + 12) = 2080;
      if (*(v159 + 6))
      {
        v84 = 0xE90000000000003ELL;
        v85 = 0x6E776F6E6B6E553CLL;
      }

      else
      {
        v85 = WiFiAddress.description.getter(*v159 | (*(v159 + 2) << 32));
        v84 = v86;
      }

      v87 = sub_100002320(v85, v84, v189);

      *(v80 + 14) = v87;
      _os_log_impl(&_mh_execute_header, v78, v79, "Peer: %s [NMI: %s]", v80, 0x16u);
      swift_arrayDestroy();

      v76 = v180;
    }

    else
    {
    }

    sub_10005DC58(&unk_10058F4C0, &unk_100492870);
    v179 = swift_allocBox();
    v89 = v88;
    v90 = type metadata accessor for WiFiAwarePairedDevice();
    v91 = *(v90 - 8);
    (*(v91 + 56))(v89, 1, 1, v90);
    v92 = v173;
    sub_100012400(v184, v173, &qword_10058F4D0, &qword_100491AB0);
    if (v160(v92, 1, v75) == 1)
    {
      sub_100016290(v92, &qword_10058F4D0, &qword_100491AB0);
      v93 = v174;
LABEL_24:
      v94 = Logger.logObject.getter();
      v95 = static os_log_type_t.error.getter();
      v96 = os_log_type_enabled(v94, v95);
      v97 = v172;
      if (v96)
      {
        v98 = swift_slowAlloc();
        *v98 = 0;
        _os_log_impl(&_mh_execute_header, v94, v95, "Unable to determine paired device. Missing Bundle ID or PairingKeyStoreUUID", v98, 2u);
      }

      goto LABEL_37;
    }

    v159 = v76[4];
    v160 = v90;
    (v159)(v168, v92, v75);
    v99 = v172;
    v100 = &v172[*((swift_isaMask & *v172) + 0x68)];
    swift_beginAccess();
    v101 = *(v100 + 22);
    if (v101)
    {
      v156 = v2;
      v157 = v91;
      v158 = v89;
      v102 = (v100 + 168);
    }

    else
    {
      v102 = (v99 + *((swift_isaMask & *v99) + 0x128));
      v101 = v102[1];
      if (!v101)
      {
        (v180[1])(v168, v75);
        v93 = v174;
        v90 = v160;
        goto LABEL_24;
      }

      v156 = v2;
      v157 = v91;
      v158 = v89;
    }

    v173 = *v102;
    v103 = v101;

    v104 = dispatch_semaphore_create(0);
    v105 = type metadata accessor for TaskPriority();
    (*(*(v105 - 8) + 56))(v171, 1, 1, v105);
    v106 = v180 + 2;
    v107 = v163;
    v155 = v180[2];
    v155(v163, v168, v75);
    v108 = (*(v106 + 64) + 88) & ~*(v106 + 64);
    v109 = swift_allocObject();
    v109[2] = 0;
    v109[3] = 0;
    v110 = v181;
    v109[4] = v182;
    v109[5] = v110;
    v111 = v179;
    v109[6] = v104;
    v109[7] = v111;
    v113 = v172;
    v112 = v173;
    v109[8] = v172;
    v109[9] = v112;
    v109[10] = v103;
    (v159)(v109 + v108, v107, v183);
    v114 = v113;
    v115 = v104;

    v116 = v103;

    sub_1003ACB3C(0, 0, v171, &unk_1004B0F98, v109);

    v117 = v164;
    static DispatchTime.now()();
    v118 = v165;
    + infix(_:_:)();
    v119 = v167;
    v120 = *(v166 + 8);
    v120(v117, v167);
    OS_dispatch_semaphore.wait(timeout:)();
    v120(v118, v119);
    if (static DispatchTimeoutResult.== infix(_:_:)())
    {
      v171 = v115;
      v121 = v161;
      v122 = v168;
      v155(v161, v168, v183);

      v123 = Logger.logObject.getter();
      v124 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v123, v124))
      {
        v125 = swift_slowAlloc();
        v167 = swift_slowAlloc();
        *&v189[0] = v167;
        *v125 = 136315394;
        v126 = sub_100002320(v173, v116, v189);
        LODWORD(v173) = v124;
        v127 = v126;

        *(v125 + 4) = v127;
        *(v125 + 12) = 2080;
        sub_10000BAD0();
        v128 = v183;
        v129 = dispatch thunk of CustomStringConvertible.description.getter();
        v131 = v130;
        v132 = v121;
        v133 = v180[1];
        v133(v132, v128);
        v134 = sub_100002320(v129, v131, v189);

        *(v125 + 14) = v134;
        _os_log_impl(&_mh_execute_header, v123, v173, "Timed out waiting to get paired device for %s [PairingKeyStoreID: %s]", v125, 0x16u);
        swift_arrayDestroy();

        v133(v122, v128);
      }

      else
      {

        v135 = v180[1];
        v136 = v121;
        v137 = v183;
        v135(v136, v183);
        v135(v122, v137);
      }

      v93 = v174;
      v97 = v172;
      v91 = v157;
      v89 = v158;
      v90 = v160;
    }

    else
    {
      (v180[1])(v168, v183);

      v93 = v174;
      v97 = v172;
      v91 = v157;
      v89 = v158;
      v90 = v160;
    }

LABEL_37:
    sub_100012400(v184, v93, &qword_10058F4D0, &qword_100491AB0);
    swift_beginAccess();
    v138 = (*(v91 + 48))(v89, 1, v90);
    v139 = 0;
    v140 = v178;
    if (!v138)
    {
      v139 = *(v89 + *(v90 + 20));
    }

    v141 = v93;
    v142 = v175;
    sub_10001CEA8(v141, v175, &qword_10058F4D0, &qword_100491AB0);
    *(v142 + *(_s17InitiatorInstanceC12PeerIdentityVMa() + 36)) = v139;
    (*(*(v176 - 8) + 56))(v142, 0, 1);
    v143 = *((swift_isaMask & *v97) + 0x140);
    swift_beginAccess();
    v144 = v177;
    (*(v177 + 40))(&v97[v143], v142, v140);
    swift_endAccess();
    v145 = v97;
    v146 = Logger.logObject.getter();
    v147 = v140;
    v148 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v146, v148))
    {
      v149 = swift_slowAlloc();
      v150 = swift_slowAlloc();
      *&v186[0] = v150;
      *v149 = 136315138;
      (*(v144 + 16))(v169, &v97[v143], v147);
      v151 = String.init<A>(describing:)();
      v153 = sub_100002320(v151, v152, v186);

      *(v149 + 4) = v153;
      _os_log_impl(&_mh_execute_header, v146, v148, "Resovled Peer Identity: %s", v149, 0xCu);
      sub_100002A00(v150);
    }

    sub_100016290(v184, &qword_10058F4D0, &qword_100491AB0);

    return;
  }

  v43 = v2 + v5[19];
  v184 = Logger.logObject.getter();
  v44 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v184, v44))
  {
    v45 = swift_slowAlloc();
    *v45 = 0;
    _os_log_impl(&_mh_execute_header, v184, v44, "Failed to resolve peer identity: responderDataAddress is nil", v45, 2u);
  }

  v46 = v184;
}

void sub_10032AEC4()
{
  v1 = v0;
  v2 = *v0;
  v3 = swift_isaMask;
  v4 = swift_isaMask & *v0;
  v5 = *((swift_isaMask & v2) + 0x50);
  v6 = *((swift_isaMask & v2) + 0x58);
  v7 = _s17InitiatorInstanceC12PeerIdentityVMa();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin();
  v120 = &v111 - v10;
  v11 = *(*(sub_10005DC58(&qword_10058F4D0, &qword_100491AB0) - 8) + 64);
  __chkstk_darwin();
  v13 = &v111 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v15 = &v111 - v14;
  v16 = *((v3 & v2) + 0xD8);
  if ((*(v1 + v16) & 1) == 0)
  {
    v17 = (v1 + *(v4 + 208));
    if (*(v17 + 16) == 3)
    {
      v18 = *v17;
      v19 = (v1 + *((swift_isaMask & *v1) + 0xA0));
      if (*(v19 + 6))
      {
      }

      else
      {
        v112 = v8;
        v113 = v7;
        v114 = v13;
        v115 = v15;
        v119 = v18;
        v20 = *v19 | (*(v19 + 2) << 32);
        *(v1 + v16) = 1;
        v21 = sub_1003236D8();
        v22 = (v1 + *((swift_isaMask & *v1) + 0xB8));
        v23 = v22[1];
        v117 = v22;
        if (v23 >> 60 == 15)
        {
          v24 = v20 & 0xFFFFFFFFFFFFLL;
          v116 = WiFiAddress.ipv6LinkLocalAddress.getter(v24);
          v26 = v25;
          v28 = v27;
          v30 = v29;
        }

        else
        {
          v31 = *v22;
          sub_10000AB0C(*v22, v23);
          v116 = InterfaceIdentifier.ipv6Address.getter(v31, v23);
          v26 = v32;
          v28 = v33;
          v30 = v34;
          sub_100017554(v31, v23);
          v24 = v20 & 0xFFFFFFFFFFFFLL;
        }

        v35 = (*(*v21 + 416))(v121);
        v36 = *(v6 + 8);
        v37 = type metadata accessor for WiFiInterface.NeighborDiscoveryTable();
        v118 = v24;
        WiFiInterface.NeighborDiscoveryTable.postPeerPresence(macAddress:ipv6Address:)(v24, v116, v26, v28, v30, v37);
        v35(v121, 0);

        v38 = sub_1003236D8();
        v39 = *(v1 + *((swift_isaMask & *v1) + 0x60));
        swift_unownedRetainStrong();
        v40 = *(v39 + *(*v39 + 472));

        if (v40)
        {

          if (v38 == v40)
          {
            swift_unownedRetainStrong();
            v41 = v117[1];
            if (v41 >> 60 == 15)
            {
              v42 = v118;
              v43 = WiFiAddress.ipv6LinkLocalAddress.getter(v118);
              v45 = v44;
              v47 = v46;
              v49 = v48;
            }

            else
            {
              v106 = *v117;
              sub_10000AB0C(*v117, v117[1]);
              v43 = InterfaceIdentifier.ipv6Address.getter(v106, v41);
              v45 = v107;
              v47 = v108;
              v49 = v109;
              sub_100017554(v106, v41);
              v42 = v118;
            }

            v110 = *(*v39 + 152);
            swift_beginAccess();
            WiFiInterface.NeighborDiscoveryTable.postPeerPresence(macAddress:ipv6Address:)(v42, v43, v45, v47, v49, v37);
            swift_endAccess();
          }
        }

        else
        {
        }

        v50 = v1 + *((swift_isaMask & *v1) + 0x68);
        swift_beginAccess();
        v51 = *v1;
        v52 = swift_isaMask;
        if (v50[32] == 2)
        {
          v53 = *(v1 + *((swift_isaMask & v51) + 0x78));
          if (v53)
          {
            v54 = v50[25];
            v55 = v50[26];
            v116 = *(v50 + 27) << 16;
            v56 = v117[1];
            if (v56 >> 60 == 15)
            {
              swift_unknownObjectRetain();
              v57 = 0;
              v58 = 0;
              v59 = 0;
              v60 = 1;
            }

            else
            {
              v111 = v54;
              v61 = *v117;
              swift_unknownObjectRetain();
              sub_10005D67C(v61, v56);
              v57 = InterfaceIdentifier.ipv6Address.getter(v61, v56);
              v58 = v62;
              v59 = v63;
              v60 = v64;
              v65 = v61;
              v54 = v111;
              sub_100017554(v65, v56);
            }

            v66 = WiFiAddress.apiAddress(with:)(v57, v58, v59, v60, v54 | (v55 << 8) | v116);
            sub_10011AF40(v57, v58, v59, v60);
            v67 = *(v1 + *((swift_isaMask & *v1) + 0x60));
            swift_unownedRetainStrong();
            v68 = WiFiInterface.interfaceIndex.getter();

            [v53 datapathReceivedControlDataAddress:v66 serviceSpecificInfo:v119 onInterfaceIndex:v68];

            swift_unknownObjectRelease();
            v51 = *v1;
            v52 = swift_isaMask;
          }
        }

        v69 = *((v52 & v51) + 0x78);
        v70 = *(v1 + v69);
        if (!v70)
        {
          goto LABEL_29;
        }

        v71 = v117[1];
        if (v71 >> 60 == 15)
        {
          v72 = *(v1 + v69);
          swift_unknownObjectRetain();
          v73 = 0;
          v74 = 0;
          v75 = 0;
          v76 = 1;
        }

        else
        {
          v77 = *v117;
          v78 = *(v1 + v69);
          swift_unknownObjectRetain();
          sub_10005D67C(v77, v71);
          v73 = InterfaceIdentifier.ipv6Address.getter(v77, v71);
          v74 = v79;
          v75 = v80;
          v76 = v81;
          sub_100017554(v77, v71);
        }

        v82 = WiFiAddress.apiAddress(with:)(v73, v74, v75, v76, v118);
        sub_10011AF40(v73, v74, v75, v76);
        [v70 datapathConfirmedForPeerDataAddress:v82 serviceSpecificInfo:v119];

        swift_unknownObjectRelease();
        v83 = *(v1 + v69);
        if (v83 && ([v83 respondsToSelector:"datapathConfirmedForPeerDataAddress:serviceSpecificInfo:pairingKeyStoreID:deviceID:"] & 1) != 0)
        {
          v84 = v117[1];
          if (v84 >> 60 == 15)
          {
            swift_unknownObjectRetain();
            v85 = 0;
            v86 = 0;
            v87 = 0;
            v88 = 1;
          }

          else
          {
            v89 = *v117;
            swift_unknownObjectRetain();
            sub_10005D67C(v89, v84);
            v85 = InterfaceIdentifier.ipv6Address.getter(v89, v84);
            v86 = v90;
            v87 = v91;
            v88 = v92;
            sub_100017554(v89, v84);
          }

          v93 = WiFiAddress.apiAddress(with:)(v85, v86, v87, v88, v118);
          sub_10011AF40(v85, v86, v87, v88);
          v94 = v1 + *((swift_isaMask & *v1) + 0x140);
          swift_beginAccess();
          v96 = v112;
          v95 = v113;
          v97 = *(v112 + 48);
          if (v97(v94, 1, v113))
          {
            v98 = type metadata accessor for UUID();
            v99 = v115;
            (*(*(v98 - 8) + 56))(v115, 1, 1, v98);
          }

          else
          {
            v100 = v120;
            (*(v96 + 16))(v120, v94, v95);
            v99 = v115;
            sub_10001CEA8(v100, v115, &qword_10058F4D0, &qword_100491AB0);
          }

          v101 = v114;
          if (v97(v94, 1, v95))
          {
            v102 = 0;
          }

          else
          {
            v102 = *&v94[*(v95 + 36)];
          }

          sub_100012400(v99, v101, &qword_10058F4D0, &qword_100491AB0);
          v103 = type metadata accessor for UUID();
          v104 = *(v103 - 8);
          isa = 0;
          if ((*(v104 + 48))(v101, 1, v103) != 1)
          {
            isa = UUID._bridgeToObjectiveC()().super.isa;
            (*(v104 + 8))(v101, v103);
          }

          [v83 datapathConfirmedForPeerDataAddress:v93 serviceSpecificInfo:v119 pairingKeyStoreID:isa deviceID:v102];

          swift_unknownObjectRelease();
          sub_100016290(v99, &qword_10058F4D0, &qword_100491AB0);
        }

        else
        {
LABEL_29:
        }
      }
    }
  }
}

uint64_t sub_10032BAA8()
{
  v1 = v0;
  v2 = *v0;
  v3 = swift_isaMask;
  v4 = *(*((swift_isaMask & *v0) + 0x58) + 8);
  v5 = *((swift_isaMask & *v0) + 0x50);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = v7[8];
  __chkstk_darwin();
  v32 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = &v31 - v10;
  __chkstk_darwin();
  v13 = &v31 - v12;
  v14 = *(v0 + *((v3 & v2) + 0x60));
  swift_unownedRetainStrong();
  v15 = *(*v14 + 96);
  swift_beginAccess();
  v16 = v7[2];
  v31 = v7 + 2;
  v34 = v16;
  v16(v13, v14 + v15, AssociatedTypeWitness);

  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(*(AssociatedConformanceWitness + 8) + 40))(AssociatedTypeWitness);
  v33 = v7[1];
  v33(v13, AssociatedTypeWitness);
  v18 = *((swift_isaMask & *v0) + 0x100);
  if (*(v0 + v18) == 1)
  {
    v19 = v0 + *((swift_isaMask & *v0) + 0x98);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "Restarting infrastructure WiFi connectivity", v22, 2u);
    }

    swift_unownedRetainStrong();
    v23 = *(v14 + *(*v14 + 800));
    swift_unownedRetainStrong();

    sub_1003EFBF8();

    *(v1 + v18) = 0;
  }

  swift_unownedRetainStrong();
  v24 = *(*v14 + 96);
  swift_beginAccess();
  v34(v11, v14 + v24, AssociatedTypeWitness);

  (*(AssociatedConformanceWitness + 408))(0, AssociatedTypeWitness, AssociatedConformanceWitness);
  v25 = v32;
  v33(v11, AssociatedTypeWitness);
  swift_unownedRetainStrong();
  v26 = v14 + *(*v14 + 760);
  swift_beginAccess();
  v27 = *(v26 + 8);
  *(v26 + 16) = 0;
  *v26 = 0;
  *(v26 + 8) = 0;

  swift_unownedRetainStrong();
  v28 = *(*v14 + 96);
  swift_beginAccess();
  v34(v25, v14 + v28, AssociatedTypeWitness);

  (*(AssociatedConformanceWitness + 416))(256, AssociatedTypeWitness, AssociatedConformanceWitness);
  v33(v25, AssociatedTypeWitness);
  v29 = sub_1003236D8();
  (*(*v29 + 216))(0);
}

uint64_t sub_10032BFB0(uint64_t a1)
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v7 = (&v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = OS_dispatch_queue.nan.unsafeMutableAddressor();
  v9 = *v8;
  *v7 = *v8;
  (*(v4 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v3);
  v10 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  result = (*(v4 + 8))(v7, v3);
  if (v9)
  {
    v12 = *((swift_isaMask & *v1) + 0x68);
    swift_beginAccess();
    sub_100333AD0(a1, v1 + v12);
    return swift_endAccess();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10032C110(uint64_t a1, unint64_t a2, int a3)
{
  v4 = v3;
  v8 = *((swift_isaMask & *v3) + 0x98);
  v9 = v4;

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v20 = v14;
    *v12 = 138412802;
    *(v12 + 4) = v9;
    *v13 = v4;
    *(v12 + 12) = 2080;
    v15 = v9;
    *(v12 + 14) = sub_100002320(a1, a2, &v20);
    *(v12 + 22) = 1024;
    *(v12 + 24) = a3;
    _os_log_impl(&_mh_execute_header, v10, v11, "%@ updated bundleID to: %s and pid to %d", v12, 0x1Cu);
    sub_100016290(v13, &qword_10058B780, &qword_100480AC0);

    sub_100002A00(v14);
  }

  v16 = (v9 + *((swift_isaMask & *v9) + 0x128));
  v17 = v16[1];
  *v16 = a1;
  v16[1] = a2;

  v18 = v9 + *((swift_isaMask & *v9) + 0x130);
  *v18 = a3;
  v18[4] = 0;

  result = static LaunchServiceRecord.isExternalApi(for:)(a1, a2);
  *(v9 + *((swift_isaMask & *v9) + 0x138)) = result & 1;
  return result;
}

void sub_10032C348(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = *(v2 + *((swift_isaMask & *v2) + 0x60));
  swift_unownedRetainStrong();
  v7 = sub_10040E40C();

  if (v7)
  {
    v8 = v3 + *((swift_isaMask & *v3) + 0x68);
    swift_beginAccess();
    sub_100012400((v8 + 104), &v57, &qword_1005914A8, &qword_100499048);
    if (v58)
    {
      if (v58 == 1)
      {
        sub_100016290(&v57, &qword_1005914A8, &qword_100499048);
      }

      else
      {
        sub_100179C1C(&v57, v59);
        v9 = *((swift_isaMask & *v3) + 0xE0);
        if (*(v3 + v9) == 1)
        {
          v10 = v60;
          v11 = v61;
          sub_100029B34(v59, v60);
          (*(v11 + 16))(*(v8 + 25) | (*(v8 + 27) << 16), v10, v11);
          *(v3 + v9) = 0;
          sub_100002A00(v59);
          return;
        }

        sub_100002A00(v59);
      }
    }

    else
    {
      sub_10020C6CC(&v57);
    }
  }

  v12 = *((swift_isaMask & *v3) + 0x98);
  v13 = v3;

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v59[0] = v18;
    *v16 = 138412546;
    *(v16 + 4) = v13;
    *v17 = v3;
    *(v16 + 12) = 2080;
    v19 = v13;
    *(v16 + 14) = sub_100002320(a1, a2, v59);
    _os_log_impl(&_mh_execute_header, v14, v15, "%@ is unsatisfiable, will terminate because %s", v16, 0x16u);
    sub_100016290(v17, &qword_10058B780, &qword_100480AC0);

    sub_100002A00(v18);
  }

  if (*(v13 + *((swift_isaMask & *v13) + 0xD0) + 16) == 3)
  {
    v20 = v13 + *((swift_isaMask & *v13) + 0x68);
    swift_beginAccess();
    sub_100012400((v20 + 104), &v57, &qword_1005914A8, &qword_100499048);
    if (!v58)
    {
      sub_10020C6CC(&v57);
      goto LABEL_61;
    }

    if (v58 == 1)
    {
      sub_100016290(&v57, &qword_1005914A8, &qword_100499048);
      goto LABEL_61;
    }

    sub_100179C1C(&v57, v59);
    v21 = v60;
    v22 = v61;
    sub_100029B34(v59, v60);
    v23 = (*(v22 + 32))(*(v20 + 25) | (*(v20 + 27) << 16), v21, v22);
    if (!v23)
    {
LABEL_60:
      sub_100002A00(v59);
      goto LABEL_61;
    }

    v24 = v23;
    v25 = v13;
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();

    v53 = v25;
    if (!os_log_type_enabled(v26, v27))
    {

      goto LABEL_31;
    }

    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *&v57 = v30;
    *v28 = 138412546;
    *(v28 + 4) = v25;
    *v29 = v3;
    *(v28 + 12) = 2080;
    v55 = v30;
    if (v24 > 2)
    {
      if (v24 == 3)
      {
        v33 = 0x80000001004BA690;
        v31 = 0xD00000000000001BLL;
        goto LABEL_30;
      }

      if (v24 == 4)
      {
        v33 = 0xEE006F7475412079;
        v31 = 0x63696C6F50205249;
LABEL_30:
        v34 = v53;
        v35 = sub_100002320(v31, v33, &v57);
        v25 = v53;

        *(v28 + 14) = v35;
        _os_log_impl(&_mh_execute_header, v26, v27, "%@ terminating because of unsatisfiable internet sharing policy %s", v28, 0x16u);
        sub_100016290(v29, &qword_10058B780, &qword_100480AC0);

        sub_100002A00(v55);

LABEL_31:
        v36 = swift_isaMask & *v25;
        v56 = *(v36 + 0x78);
        v37 = *(v25 + v56);
        v38 = &unk_100588000;
        if (v37)
        {
          [v37 datapathUpdatedInternetSharingPolicy:v24];
          v36 = swift_isaMask & *v25;
        }

        v39 = *(v36 + 128);
        swift_beginAccess();
        v54 = v39;
        v40 = *(v25 + v39);
        if (v40 >> 62)
        {
          goto LABEL_64;
        }

        v41 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_35:

        if (v41)
        {
          v42 = 0;
          do
          {
            if ((v40 & 0xC000000000000001) != 0)
            {
              v43 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              v44 = v42 + 1;
              if (__OFADD__(v42, 1))
              {
LABEL_44:
                __break(1u);
                break;
              }
            }

            else
            {
              if (v42 >= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                __break(1u);
LABEL_63:
                __break(1u);
LABEL_64:
                v41 = _CocoaArrayWrapper.endIndex.getter();
                goto LABEL_35;
              }

              v43 = *(v40 + 8 * v42 + 32);
              swift_unknownObjectRetain();
              v44 = v42 + 1;
              if (__OFADD__(v42, 1))
              {
                goto LABEL_44;
              }
            }

            [v43 v38[398]];
            swift_unknownObjectRelease();
            ++v42;
          }

          while (v44 != v41);
        }

        v45 = v53;
        v46 = *&v53[v56];
        if (v46)
        {
          [v46 datapathTerminatedWithReason:4];
        }

        v40 = *&v53[v54];
        if (v40 >> 62)
        {
          if (v40 < 0)
          {
            v52 = *&v53[v54];
          }

          v47 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v47 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v47)
        {
          v24 = 0;
          v38 = (v40 & 0xC000000000000001);
          do
          {
            if (v38)
            {
              v48 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              v49 = v24 + 1;
              if (__OFADD__(v24, 1))
              {
                goto LABEL_58;
              }
            }

            else
            {
              if (v24 >= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_63;
              }

              v48 = *(v40 + 8 * v24 + 32);
              swift_unknownObjectRetain();
              v49 = v24 + 1;
              if (__OFADD__(v24, 1))
              {
LABEL_58:
                __break(1u);
                break;
              }
            }

            [v48 datapathTerminatedWithReason:{4, v53}];
            swift_unknownObjectRelease();
            ++v24;
          }

          while (v49 != v47);
        }

        v50 = *&v45[v56];
        *&v45[v56] = 0;
        swift_unknownObjectRelease();
        v51 = *&v45[v54];
        *&v45[v54] = _swiftEmptyArrayStorage;

        goto LABEL_60;
      }
    }

    else
    {
      if (v24 == 1)
      {
        v33 = 0x80000001004BA6D0;
        v31 = 0xD000000000000014;
        goto LABEL_30;
      }

      if (v24 == 2)
      {
        v31 = 0xD000000000000011;
        v32 = "IR Policy for DFS";
LABEL_27:
        v33 = (v32 - 32) | 0x8000000000000000;
        goto LABEL_30;
      }
    }

    v31 = 0xD000000000000011;
    v32 = "Unknown IR Policy";
    goto LABEL_27;
  }

LABEL_61:
  sub_100323CDC();
}

uint64_t sub_10032CB88(uint64_t a1)
{
  v3 = *(*(sub_10005DC58(&unk_100596870, &unk_1004B0F60) - 8) + 64);
  __chkstk_darwin();
  v5 = &v11 - v4;
  v6 = *((swift_isaMask & *v1) + 0x118);
  swift_beginAccess();
  v7 = a1 + *(type metadata accessor for NANAttribute.CustomDeviceInformation(0) + 28);
  v8 = *(type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes(0) + 48);
  sub_100016290(v7 + v8, &unk_100596870, &unk_1004B0F60);
  sub_100012400(v1 + v6, v7 + v8, &unk_100596870, &unk_1004B0F60);
  swift_endAccess();
  v9 = type metadata accessor for NANInternetSharingStatistics.Requester();
  (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
  swift_beginAccess();
  sub_1000B1B78(v5, v1 + v6, &unk_100596870, &unk_1004B0F60);
  return swift_endAccess();
}

uint64_t sub_10032CD0C()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchTime();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  result = __chkstk_darwin();
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v0[*((swift_isaMask & *v0) + 0xD0) + 16] == 3)
  {
    type metadata accessor for P2PTimer();
    variable initialization expression of AWDLPeer.lastUpdated();
    v8 = *((swift_isaMask & *v0) + 0xC8);
    swift_beginAccess();
    (*(v3 + 40))(&v1[v8], v7, v2);
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_10032CE58()
{
  v1 = v0;
  v2 = *v0;
  v3 = swift_isaMask;
  v4 = swift_isaMask & *v0;
  v5 = *(*((swift_isaMask & v2) + 0x58) + 8);
  v6 = *((swift_isaMask & v2) + 0x50);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 64);
  result = __chkstk_darwin();
  v12 = &v23 - v11;
  v13 = v1 + *((v3 & v2) + 0xD0);
  if (v13[16] - 1 < 3)
  {
LABEL_2:
    v14 = *(v1 + *(v4 + 96));
    swift_unownedRetainStrong();
    sub_10040CBA8();

    swift_unownedRetainStrong();
    v15 = *(*v14 + 96);
    swift_beginAccess();
    (*(v8 + 16))(v12, v14 + v15, AssociatedTypeWitness);

    v16 = v1 + *((swift_isaMask & *v1) + 0x68);
    swift_beginAccess();
    v23 = *(v16 + 3);
    v17 = *(v16 + 1);
    v18 = *v16;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    (*(AssociatedConformanceWitness + 240))(v18, v17 | (v23 << 16), AssociatedTypeWitness, AssociatedConformanceWitness);
    (*(v8 + 8))(v12, AssociatedTypeWitness);
    sub_100332618(0, 0, 4);
    sub_100012400((v16 + 104), &v24, &qword_1005914A8, &qword_100499048);
    if (v25)
    {
      if (v25 == 1)
      {
        return sub_100016290(&v24, &qword_1005914A8, &qword_100499048);
      }

      else
      {
        return sub_10020C6CC(&v24);
      }
    }

    else
    {
      result = sub_10020C6CC(&v24);
      v22 = *((swift_isaMask & *v1) + 0xE0);
      if (*(v1 + v22) == 1)
      {
        result = sub_10032BAA8();
        *(v1 + v22) = 0;
      }
    }

    return result;
  }

  if (!v13[16])
  {
    return sub_100321094();
  }

  v21 = *v13;
  v20 = *(v13 + 1);
  if (v21 > 1)
  {
    if (v21 ^ 2 | v20)
    {
      return result;
    }

    goto LABEL_2;
  }

  if (!(v21 | v20))
  {

    return sub_100320050(1, 0xD000000000000030, 0x80000001004BE490, 38);
  }

  return result;
}

uint64_t sub_10032D358(uint64_t a1)
{
  sub_100002B30(a1, v3);
  sub_10005DC58(&qword_1005968A8, &qword_1004B1790);
  result = swift_dynamicCast();
  if (result)
  {
    sub_10032D3D0(v2);
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_10032D3D0(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = swift_isaMask;
  v6 = swift_isaMask & *v2;
  v7 = *(type metadata accessor for DispatchTimeInterval() - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin();
  v11 = &v51[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = *((v5 & v4) + 0x78);
  v13 = *(v2 + v12);
  v14 = *((v5 & v4) + 0x80);
  if (v13)
  {
    v15 = v13 == a1;
  }

  else
  {
    v15 = 0;
  }

  if (!v15)
  {
    swift_beginAccess();
    swift_unknownObjectRetain();
    v16 = sub_100333298((v2 + v14), a1);
    swift_unknownObjectRelease();
    v17 = *(v2 + v14);
    if (v17 >> 62)
    {
      if (v17 < 0)
      {
        v49 = *(v2 + v14);
      }

      v18 = _CocoaArrayWrapper.endIndex.getter();
      if (v18 >= v16)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v18 >= v16)
      {
LABEL_7:
        sub_1003335EC(v16, v18);
        swift_endAccess();
        return;
      }
    }

    __break(1u);
    goto LABEL_35;
  }

  v19 = v9;
  swift_beginAccess();
  v20 = *(v2 + v14);
  if (v20 >> 62)
  {
    if (v20 < 0)
    {
      v28 = *(v2 + v14);
    }

    if (_CocoaArrayWrapper.endIndex.getter())
    {
LABEL_10:
      swift_beginAccess();
      v21 = *(v2 + v14);
      if (!(v21 >> 62))
      {
        if (!*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_36:
          __break(1u);
          goto LABEL_37;
        }

LABEL_12:
        v22 = sub_1003325B4();
        if (v22)
        {
LABEL_16:
          swift_endAccess();
          v27 = *(v2 + v12);
          *(v2 + v12) = v22;
          swift_unknownObjectRelease();
          return;
        }

        v23 = *(v2 + v14);
        if (!(v23 >> 62))
        {
          v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v25 = __OFSUB__(v24, 1);
          v26 = v24 - 1;
          if (!v25)
          {
LABEL_15:
            v22 = sub_10044BF80(v26);
            goto LABEL_16;
          }

          goto LABEL_39;
        }

LABEL_37:
        v50 = _CocoaArrayWrapper.endIndex.getter();
        v25 = __OFSUB__(v50, 1);
        v26 = v50 - 1;
        if (!v25)
        {
          goto LABEL_15;
        }

LABEL_39:
        __break(1u);
        swift_endAccess();
        __break(1u);
        return;
      }

LABEL_35:
      if (!_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_36;
      }

      goto LABEL_12;
    }
  }

  else if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_10;
  }

  v29 = *(v2 + v12);
  *(v2 + v12) = 0;
  swift_unknownObjectRelease();
  v30 = v2 + *((swift_isaMask & *v2) + 0x68);
  swift_beginAccess();
  sub_100012400((v30 + 104), v51, &qword_1005914A8, &qword_100499048);
  if (v52)
  {
    if (v52 == 1)
    {
      sub_100016290(v51, &qword_1005914A8, &qword_100499048);
    }

    else
    {
      sub_10020C6CC(v51);
    }

    goto LABEL_28;
  }

  sub_10020C6CC(v51);
  if (*(v2 + *((swift_isaMask & *v2) + 0xD0) + 16) != 3)
  {
LABEL_28:
    v42 = *((swift_isaMask & *v2) + 0x98);
    v43 = v2;
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      *v46 = 138412290;
      *(v46 + 4) = v43;
      *v47 = v2;
      v48 = v43;
      _os_log_impl(&_mh_execute_header, v44, v45, "Terminating %@ because it's client was invalidated", v46, 0xCu);
      sub_100016290(v47, &qword_10058B780, &qword_100480AC0);
    }

    sub_100323CDC();
    return;
  }

  v31 = *((swift_isaMask & *v2) + 0x98);
  v32 = v2;
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    *v35 = 138412290;
    *(v35 + 4) = v32;
    *v36 = v2;
    v37 = v32;
    _os_log_impl(&_mh_execute_header, v33, v34, "Delaying termination of %@ after client invalidation because it is an internet sharing requester", v35, 0xCu);
    sub_100016290(v36, &qword_10058B780, &qword_100480AC0);
  }

  type metadata accessor for P2PTimer();
  *v11 = 10;
  (*(v7 + 104))(v11, enum case for DispatchTimeInterval.seconds(_:), v19);
  v38 = *OS_dispatch_queue.nan.unsafeMutableAddressor();
  v39 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v40 = swift_allocObject();
  v40[2] = *(v6 + 80);
  v40[3] = *(v6 + 88);
  v40[4] = v39;
  v41 = v38;

  static P2PTimer.async(after:on:execute:)(v11, v41, sub_100333AC4, v40);

  (*(v7 + 8))(v11, v19);
}

BOOL sub_10032DA28(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v9 = v4 + *((swift_isaMask & *v4) + 0x68);
  swift_beginAccess();
  v10 = *(v9 + 1) == a1 && *(v9 + 2) == a2;
  return (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0) && v9[24] == a3 && static NANClusterChangeEvent.__derived_struct_equals(_:_:)(a4 & 0xFFFFFFFFFFFFLL, *(v9 + 25) | (*(v9 + 27) << 16));
}

void sub_10032DAF8()
{
  v0 = type metadata accessor for DispatchPredicate();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin();
  v4 = (&v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = OS_dispatch_queue.nan.unsafeMutableAddressor();
  v6 = *v5;
  *v4 = *v5;
  (*(v1 + 104))(v4, enum case for DispatchPredicate.onQueue(_:), v0);
  v7 = v6;
  LOBYTE(v6) = _dispatchPreconditionTest(_:)();
  (*(v1 + 8))(v4, v0);
  if (v6)
  {
    sub_100323CDC();
  }

  else
  {
    __break(1u);
  }
}

void sub_10032DC08(void *a1)
{
  v1 = a1;
  sub_10032DAF8();
}

uint64_t sub_10032DC50(uint64_t (*a1)(uint64_t, uint64_t, unint64_t))
{
  v3 = swift_isaMask & *v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v8 = &v44[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = OS_dispatch_queue.nan.unsafeMutableAddressor();
  v10 = *v9;
  *v8 = *v9;
  (*(v5 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v4);
  v11 = v10;
  LOBYTE(v10) = _dispatchPreconditionTest(_:)();
  result = (*(v5 + 8))(v8, v4);
  if ((v10 & 1) == 0)
  {
    __break(1u);
    return result;
  }

  v13 = (v1 + *((swift_isaMask & *v1) + 0xA0));
  if ((*(v13 + 6) & 1) == 0)
  {
    v18 = *(v13 + 2);
    v19 = *v13;
    v20 = v19 | (v18 << 32);
    v21 = v18 >> 8;
    v22 = v1;
    v23 = *(v1 + *((swift_isaMask & *v1) + 0x60));
    swift_unownedRetainStrong();
    v24 = sub_10040CAE8();

    v25 = qword_10059B9C8;
    swift_beginAccess();
    v26 = *(v24 + v25);

    v44[2] = v19;
    v27.i64[0] = 0xFFFFFFFFFFFFLL;
    v27.i64[1] = 0xFFFFFFFFFFFFLL;
    v28 = vandq_s8(vdupq_n_s64(v20), v27);
    v29 = vshlq_u64(v28, xmmword_1004817A0);
    *v28.i8 = vmovn_s64(vshlq_u64(v28, xmmword_100481790));
    *v29.i8 = vmovn_s64(v29);
    v29.i16[1] = v29.i16[2];
    v29.i16[2] = v28.i16[0];
    v29.i16[3] = v28.i16[2];
    v45 = vmovn_s16(v29).u32[0];
    v46 = v21;
    v31 = *(v3 + 80);
    v30 = *(v3 + 88);
    _s17InitiatorInstanceCMa_0();
    _s17ResponderInstanceCMa_0();
    type metadata accessor for Either();
    sub_1002CAFC4();
    Dictionary.subscript.getter();

    v32 = v48;
    if (v48 != 255)
    {
      v33 = v47;
      v34 = sub_100440B3C(v47);
      v36 = v35;

      a1(0, v34, v36);

      return sub_1002CB018(v33, v32);
    }

    v37 = v22 + *((swift_isaMask & *v22) + 0x98);
    v15 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v15, v38))
    {
      goto LABEL_10;
    }

    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v47 = v40;
    *v39 = 136315138;
    v41 = WiFiAddress.description.getter(v20 & 0xFFFFFFFFFFFFLL);
    v43 = sub_100002320(v41, v42, &v47);

    *(v39 + 4) = v43;
    _os_log_impl(&_mh_execute_header, v15, v38, "Unable to get diversified pin for %s because there is no active pairing session", v39, 0xCu);
    sub_100002A00(v40);

    goto LABEL_9;
  }

  v14 = v1 + *((swift_isaMask & *v1) + 0x98);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "Unable to get a diversified pin because the datapath referenced doesn't exist or isn't established yet", v17, 2u);
LABEL_9:
  }

LABEL_10:

  return a1(3, 0x303030303030, 0xE600000000000000);
}

uint64_t sub_10032E120(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = swift_isaMask & *v1;
  v29 = *(v5 + 0x58);
  v6 = *(v29 + 8);
  v28[1] = *(v5 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin();
  v11 = v28 - v10;
  v12 = type metadata accessor for DispatchPredicate();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin();
  v16 = (v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = OS_dispatch_queue.nan.unsafeMutableAddressor();
  v18 = *v17;
  *v16 = *v17;
  (*(v13 + 104))(v16, enum case for DispatchPredicate.onQueue(_:), v12);
  v19 = v18;
  LOBYTE(v18) = _dispatchPreconditionTest(_:)();
  result = (*(v13 + 8))(v16, v12);
  if (v18)
  {
    v21 = *((swift_isaMask & *v2) + 0x108);
    v22 = *(v2 + v21);
    *(v2 + v21) = a1;
    sub_10031E444(v22);
    v23 = *(v2 + *((swift_isaMask & *v2) + 0x60));
    swift_unownedRetainStrong();
    sub_10040CAE8();

    sub_100339E28();

    swift_unownedRetainStrong();
    sub_10040CAE8();

    sub_100339E54();

    swift_unownedRetainStrong();
    v24 = *(*v23 + 96);
    swift_beginAccess();
    (*(v8 + 16))(v11, v23 + v24, AssociatedTypeWitness);

    WitnessTable = swift_getWitnessTable();
    v28[0] = ObjectType;
    v26 = sub_10036DB68(ObjectType, WitnessTable);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    (*(AssociatedConformanceWitness + 400))(a1, v26 & 0xFFFFFFFFFFFFFFLL, AssociatedTypeWitness, AssociatedConformanceWitness);
    return (*(v8 + 8))(v11, AssociatedTypeWitness);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10032E678(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  sub_10032E120(a3);
}

uint64_t sub_10032E6CC(void (*a1)(void, uint64_t), uint64_t a2)
{
  v48 = a2;
  v49 = a1;
  v3 = *(*((swift_isaMask & *v2) + 0x58) + 8);
  v4 = *((swift_isaMask & *v2) + 0x50);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v47 = *(AssociatedTypeWitness - 8);
  v6 = *(v47 + 64);
  __chkstk_darwin();
  v46 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = &v41 - v8;
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin();
  v14 = (&v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = OS_dispatch_queue.nan.unsafeMutableAddressor();
  v16 = *v15;
  *v14 = *v15;
  (*(v11 + 104))(v14, enum case for DispatchPredicate.onQueue(_:), v10);
  v17 = v16;
  LOBYTE(v16) = _dispatchPreconditionTest(_:)();
  result = (*(v11 + 8))(v14, v10);
  if (v16)
  {
    v19 = v2 + *((swift_isaMask & *v2) + 0x68);
    swift_beginAccess();
    sub_100012400((v19 + 104), v50, &qword_1005914A8, &qword_100499048);
    if (v54)
    {
      if (v54 == 1)
      {
        sub_100016290(v50, &qword_1005914A8, &qword_100499048);
      }

      else
      {
        sub_10020C6CC(v50);
      }

      return (v49)(3, 0);
    }

    sub_10020C6CC(v50);
    v20 = swift_isaMask & *v2;
    v21 = (v2 + *(v20 + 0xA0));
    if (*(v21 + 6))
    {
      return (v49)(3, 0);
    }

    v22 = *(v21 + 2);
    v43 = *v21;
    v44 = v43 & 0xFFFF0000FFFFFFFFLL | (v22 << 32);
    v23 = vdupq_n_s64(v44);
    v24 = vmovn_s32(vuzp1q_s32(vshlq_u64(v23, xmmword_1004817A0), vshlq_u64(v23, xmmword_100481790)));
    v41 = v22 >> 8;
    v25 = *(v19 + 2);
    v42 = *(v19 + 1);
    v26 = *(v2 + *(v20 + 96));
    swift_unownedRetainStrong();
    v27 = *(*v26 + 96);
    swift_beginAccess();
    v28 = v47;
    v29 = *(v47 + 16);
    v29(v9, v26 + v27, AssociatedTypeWitness);
    v45 = v25;

    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v31 = v28;
    v32 = (*(AssociatedConformanceWitness + 136))(AssociatedTypeWitness, AssociatedConformanceWitness);
    v33 = *(v31 + 8);
    v33(v9, AssociatedTypeWitness);
    if ((v32 & 0xFF00000000) == 0x300000000)
    {
      swift_unownedRetainStrong();
      v35 = *(*v26 + 96);
      swift_beginAccess();
      v36 = v26 + v35;
      v37 = v46;
      v29(v46, v36, AssociatedTypeWitness);

      v32 = (*(AssociatedConformanceWitness + 120))(AssociatedTypeWitness, AssociatedConformanceWitness);
      v33(v37, AssociatedTypeWitness);
      if ((v32 & 0xFF00000000) == 0x300000000)
      {
        swift_unownedRetainStrong();
        v32 = sub_100019B10();
      }
    }

    v38 = v49;
    v50[0] = v42;
    v50[1] = v45;
    v51 = v43;
    v52 = vuzp1_s8(v24, v34).u32[0];
    v53 = v41;
    LODWORD(v54) = v32;
    BYTE4(v54) = BYTE4(v32);
    BYTE5(v54) = BYTE5(v32);
    v39 = WiFiNetwork.createRecord()(v42, v45, v44, v32 & 0xFFFFFFFFFFFFLL);
    sub_100333B64(v50);
    v40 = sub_10031D810(v39);

    v38(0, v40);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10032EC8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v5.super.isa = 0;
  }

  isa = v5.super.isa;
  (*(a3 + 16))(a3, a1);
}

uint64_t sub_10032ED1C(char a1, uint64_t (*a2)(void))
{
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin();
  v9 = (&v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = OS_dispatch_queue.nan.unsafeMutableAddressor();
  v11 = *v10;
  *v9 = *v10;
  (*(v6 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v5);
  v12 = v11;
  LOBYTE(v11) = _dispatchPreconditionTest(_:)();
  result = (*(v6 + 8))(v9, v5);
  if (v11)
  {
    *(v2 + *((swift_isaMask & *v2) + 0x90)) = a1 & 1;
    return a2(0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10032EE78(void *a1, int a2, char a3, void *aBlock)
{
  v6 = _Block_copy(aBlock);
  *(swift_allocObject() + 16) = v6;
  v7 = a1;
  sub_10032ED1C(a3, sub_1000104E4);
}

void sub_10032EF0C(void (*a1)(uint64_t, id), uint64_t a2)
{
  v3 = v2;
  v65 = a2;
  v66 = a1;
  v4 = swift_isaMask & *v2;
  v64 = *(v4 + 0x58);
  v5 = *(v64 + 8);
  v6 = *(v4 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin();
  v11 = &v62 - v10;
  v12 = type metadata accessor for DispatchPredicate();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin();
  v16 = (&v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v63 = OS_dispatch_queue.nan.unsafeMutableAddressor();
  v17 = *v63;
  *v16 = *v63;
  (*(v13 + 104))(v16, enum case for DispatchPredicate.onQueue(_:), v12);
  v18 = v17;
  LOBYTE(v17) = _dispatchPreconditionTest(_:)();
  (*(v13 + 8))(v16, v12);
  if ((v17 & 1) == 0)
  {
    __break(1u);
    return;
  }

  v19 = (v3 + *((swift_isaMask & *v3) + 0xA0));
  if ((*(v19 + 6) & 1) == 0)
  {
    v24 = *(v19 + 2);
    v25 = *v19;
    v26 = *v19 | (v24 << 32);
    v27 = *(v3 + *((swift_isaMask & *v3) + 0x60));
    swift_unownedRetainStrong();
    v28 = *(*v27 + 96);
    swift_beginAccess();
    (*(v8 + 16))(v11, v27 + v28, AssociatedTypeWitness);

    v29 = v64;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v62 = (*(AssociatedConformanceWitness + 480))(v26, AssociatedTypeWitness, AssociatedConformanceWitness);
    (*(v8 + 8))(v11, AssociatedTypeWitness);
    v31 = v3 + *((swift_isaMask & *v3) + 0x68);
    swift_beginAccess();
    sub_100012400((v31 + 104), &v71, &qword_1005914A8, &qword_100499048);
    if (v72)
    {
      if (v72 == 1)
      {
        sub_100016290(&v71, &qword_1005914A8, &qword_100499048);
      }

      else
      {
        sub_100179C1C(&v71, aBlock);
        v32 = v68;
        v33 = v69;
        sub_100029B34(aBlock, v68);
        v34 = (*(v33 + 5))(v32, v33) != 0;
        v35 = v62;
        [v62 setInfraRelayOperationStatus:v34];
        isa = Int._bridgeToObjectiveC()().super.super.isa;
        [v35 setInfraRelayRequestersCount:isa];

        sub_100002A00(aBlock);
      }
    }

    else
    {
      sub_10020C6CC(&v71);
    }

    v37 = *((swift_isaMask & *v3) + 0x88);
    v38 = *(v3 + v37);
    if (v38)
    {
      v39 = v38;
      WiFiAwareDataSessionStatisticsReport.difference(from:)(v39);
    }

    else
    {
      v40 = v62;
      *(v3 + v37) = v62;
      v41 = *((swift_isaMask & *v3) + 0xF8);
      swift_beginAccess();
      v42 = *(v3 + v41);
      v43 = v40;
      if (notify_is_valid_token(v42))
      {
        goto LABEL_18;
      }

      v44 = vdupq_n_s64(v26);
      v45 = vmovn_s32(vuzp1q_s32(vshlq_u64(v44, xmmword_1004817A0), vshlq_u64(v44, xmmword_100481790)));
      v46 = *v63;
      v47 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v48 = swift_allocObject();
      *(v48 + 16) = v6;
      *(v48 + 24) = v29;
      *(v48 + 32) = v47;
      *(v48 + 40) = v25;
      *(v48 + 41) = vuzp1_s8(v45, v49).u32[0];
      *(v48 + 45) = HIBYTE(v24);
      v69 = sub_100333B44;
      v70 = v48;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1001C5BEC;
      v68 = &unk_100576858;
      v50 = _Block_copy(aBlock);
      v51 = v46;

      swift_beginAccess();
      v52 = notify_register_dispatch("com.apple.airplay.isPlayingAmbientAudioChanged", (v3 + v41), v51, v50);
      swift_endAccess();
      _Block_release(v50);

      if (!v52)
      {
        goto LABEL_18;
      }

      v53 = v3 + *((swift_isaMask & *v3) + 0x98);
      v39 = Logger.logObject.getter();
      v54 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v39, v54))
      {
        v55 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        aBlock[0] = v56;
        *v55 = 136315138;
        v57 = static WiFiError.notifyErrorMessage(from:)(v52);
        v59 = sub_100002320(v57, v58, aBlock);

        *(v55 + 4) = v59;
        _os_log_impl(&_mh_execute_header, v39, v54, "Failed to start monitoring statistic reset events with error: %s", v55, 0xCu);
        sub_100002A00(v56);
      }
    }

LABEL_18:
    v60 = v62;
    v61 = v62;
    v66(0, v60);

    return;
  }

  v20 = v3 + *((swift_isaMask & *v3) + 0x98);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&_mh_execute_header, v21, v22, "Unable to generate a data session statistics because the datapath referenced doesn't exist or isn't established yet", v23, 2u);
  }

  v66(3, 0);
}

void sub_10032F890(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a5 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin();
  v11 = &v20 - v10;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    v14 = *(Strong + *((swift_isaMask & *Strong) + 0x60));
    swift_unownedRetainStrong();
    v15 = *(*v14 + 96);
    swift_beginAccess();
    (*(v8 + 16))(v11, v14 + v15, AssociatedTypeWitness);

    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v17 = (*(AssociatedConformanceWitness + 480))(a3 & 0xFFFFFFFFFFFFLL, AssociatedTypeWitness, AssociatedConformanceWitness);
    (*(v8 + 8))(v11, AssociatedTypeWitness);
    v18 = *((swift_isaMask & *v13) + 0x88);
    v19 = *(v13 + v18);
    *(v13 + v18) = v17;
  }
}

uint64_t sub_10032FC3C(void *a1, int a2, void *aBlock, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t))
{
  v9 = _Block_copy(aBlock);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  v11 = a1;
  a6(a5, v10);
}

uint64_t sub_10032FCD0(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v8 = (&v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = OS_dispatch_queue.nan.unsafeMutableAddressor();
  v10 = *v9;
  *v8 = *v9;
  (*(v5 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v4);
  v11 = v10;
  LOBYTE(v10) = _dispatchPreconditionTest(_:)();
  result = (*(v5 + 8))(v8, v4);
  if (v10)
  {
    if (*(v2 + *((swift_isaMask & *v2) + 0xD0) + 16) == 3)
    {
      v13 = *((swift_isaMask & *v2) + 0x98);
      v14 = v2;
      v15 = a1;
      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        *v18 = 138412546;
        *(v18 + 4) = v14;
        *(v18 + 12) = 2112;
        *(v18 + 14) = v15;
        *v19 = v2;
        v19[1] = v15;
        v20 = v14;
        v21 = v15;
        _os_log_impl(&_mh_execute_header, v16, v17, "%@ got an issue report: %@", v18, 0x16u);
        sub_10005DC58(&qword_10058B780, &qword_100480AC0);
        swift_arrayDestroy();
      }

      v22 = *(v14 + *((swift_isaMask & *v14) + 0x60));
      swift_unownedRetainStrong();
      v46 = 0;
      v47 = 0xE000000000000000;
      v23 = v14 + *((swift_isaMask & *v14) + 0x68);
      swift_beginAccess();
      v25 = (v14 + *((swift_isaMask & *v14) + 0xA0));
      if (*(v25 + 6))
      {
        LOBYTE(v26) = v23[25];
        LOBYTE(v27) = v23[26];
        v24.i32[0] = *(v23 + 27);
        v28 = vmovl_u8(v24);
      }

      else
      {
        v29 = *(v25 + 2);
        v26 = *v25;
        v30 = v26 | (v29 << 32);
        v31.i64[0] = 0xFFFFFFFFFFFFLL;
        v31.i64[1] = 0xFFFFFFFFFFFFLL;
        v28 = vandq_s8(vdupq_n_s64(v30), v31);
        *v28.i8 = vmovn_s32(vuzp1q_s32(vshlq_u64(v28, xmmword_1004841E0), vshlq_u64(v28, xmmword_1004841F0)));
        v27 = v30 >> 8;
      }

      v32 = vmovl_u16((v28.i64[0] & 0xFF00FF00FF00FFLL));
      v33.i64[0] = v32.u32[0];
      v33.i64[1] = v32.u32[1];
      v34 = v33;
      v33.i64[0] = v32.u32[2];
      v33.i64[1] = v32.u32[3];
      v35 = vorrq_s8(vshlq_u64(v34, xmmword_1004AD2B0), vshlq_u64(v33, xmmword_1004B0C10));
      v36._countAndFlagsBits = NANPeerServiceIdentifier.description.getter(*&vorr_s8(*v35.i8, *&vextq_s8(v35, v35, 8uLL)) | (v27 << 16) | *v23 | (v26 << 8));
      String.append(_:)(v36);

      v37._countAndFlagsBits = 0x6374696C47202D20;
      v37._object = 0xEA00000000002068;
      String.append(_:)(v37);
      v38 = [v15 rtpSequenceNumber];
      if (v38)
      {
        v39 = v38;
        v40 = [v38 description];

        v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v43 = v42;
      }

      else
      {
        v41 = 0;
        v43 = 0xE000000000000000;
      }

      v44._countAndFlagsBits = v41;
      v44._object = v43;
      String.append(_:)(v44);

      sub_10040D52C(v46, v47);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100330134(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_10032FCD0(v4);
}

uint64_t sub_10033019C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  v8[11] = a8;
  v8[12] = v16;
  v8[9] = a6;
  v8[10] = a7;
  v8[8] = a4;
  v9 = swift_isaMask & *a6;
  v8[13] = *(*(v9 + 0x58) + 8);
  v8[14] = *(v9 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8[15] = AssociatedTypeWitness;
  v11 = *(AssociatedTypeWitness - 8);
  v8[16] = v11;
  v12 = *(v11 + 64) + 15;
  v8[17] = swift_task_alloc();
  v13 = *(*(sub_10005DC58(&unk_10058F4C0, &unk_100492870) - 8) + 64) + 15;
  v8[18] = swift_task_alloc();
  v8[19] = swift_projectBox();

  return _swift_task_switch(sub_100330308, 0, 0);
}

uint64_t sub_100330308()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[14];
  v4 = v0[15];
  v5 = v0[13];
  v6 = v0[9];
  v7 = *(v6 + *((swift_isaMask & *v6) + 0x60));
  swift_unownedRetainStrong();
  (*(v2 + 16))(v1, v7 + *(*v7 + 112), v4);

  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v9 = (*(AssociatedConformanceWitness + 136))(v4, AssociatedConformanceWitness);
  v0[20] = v9;
  (*(v2 + 8))(v1, v4);
  v10 = v6 + *((swift_isaMask & *v6) + 0x68);
  swift_beginAccess();
  if (*(v10 + 22))
  {
    v11 = *(v10 + 25);
  }

  else
  {
    v11 = 1;
  }

  v0[21] = v11;
  v12 = *v9 + 392;
  v0[22] = *v12;
  v0[23] = v12 & 0xFFFFFFFFFFFFLL | 0xD6F0000000000000;

  return _swift_task_switch(sub_1003304CC, v9, 0);
}

uint64_t sub_1003304CC()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 160);
  *(v0 + 192) = (*(v0 + 176))(*(v0 + 80), *(v0 + 88), *(v0 + 168), 0);
  *(v0 + 200) = 0;
  v3 = *(v0 + 160);

  return _swift_task_switch(sub_1002C7D78, 0, 0);
}

uint64_t sub_10033056C()
{
  v1 = v0[25];
  v2 = v0[20];
  v3 = v0[9];

  v4 = *((swift_isaMask & *v3) + 0x98);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[25];
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v11;
    *v10 = v11;
    _os_log_impl(&_mh_execute_header, v5, v6, "Failed to get paired device from WiFiAwarePairedDevicesStore: %@", v9, 0xCu);
    sub_100016290(v10, &qword_10058B780, &qword_100480AC0);
  }

  else
  {
  }

  v13 = v0[17];
  v12 = v0[18];
  v14 = v0[8];
  OS_dispatch_semaphore.signal()();

  v15 = v0[1];

  return v15();
}

id sub_100330718(void *a1)
{
  v1 = a1;
  sub_100330780();

  v2 = String._bridgeToObjectiveC()();

  return v2;
}

unint64_t sub_100330780()
{
  v1 = v0;
  _StringGuts.grow(_:)(32);

  v2 = v1 + *((swift_isaMask & *v1) + 0x68);
  swift_beginAccess();
  v28 = *v2;
  v3._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v3);

  v4._countAndFlagsBits = 0x203A6F543C205DLL;
  v4._object = 0xE700000000000000;
  String.append(_:)(v4);
  v6 = (v1 + *((swift_isaMask & *v1) + 0xA0));
  if (*(v6 + 6))
  {
    LOBYTE(v7) = v2[25];
    LOBYTE(v8) = v2[26];
    v5.i32[0] = *(v2 + 27);
    v9 = vmovl_u8(v5);
  }

  else
  {
    v10 = *(v6 + 2);
    v7 = *v6;
    v11 = v7 | (v10 << 32);
    v8 = v11 >> 8;
    v12.i64[0] = 0xFFFFFFFFFFFFLL;
    v12.i64[1] = 0xFFFFFFFFFFFFLL;
    v9 = vandq_s8(vdupq_n_s64(v11), v12);
    *v9.i8 = vmovn_s32(vuzp1q_s32(vshlq_u64(v9, xmmword_1004841E0), vshlq_u64(v9, xmmword_1004841F0)));
  }

  v13 = vmovl_u16((v9.i64[0] & 0xFF00FF00FF00FFLL));
  v14.i64[0] = v13.u32[0];
  v14.i64[1] = v13.u32[1];
  v15 = v14;
  v14.i64[0] = v13.u32[2];
  v14.i64[1] = v13.u32[3];
  v16 = vorrq_s8(vshlq_u64(v15, xmmword_1004AD2A0), vshlq_u64(v14, xmmword_1004AD290));
  v17._countAndFlagsBits = WiFiAddress.description.getter(*&vorr_s8(*v16.i8, *&vextq_s8(v16, v16, 8uLL)) | (v8 << 8) | v7);
  String.append(_:)(v17);

  v18._countAndFlagsBits = 8250;
  v18._object = 0xE200000000000000;
  String.append(_:)(v18);
  v29 = v2[24];
  v19._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v19);

  v20._countAndFlagsBits = 8254;
  v20._object = 0xE200000000000000;
  String.append(_:)(v20);
  v22 = *(v2 + 1);
  v21 = *(v2 + 2);

  v23 = NANServiceName.description.getter(v22, v21);
  v25 = v24;

  v26._countAndFlagsBits = v23;
  v26._object = v25;
  String.append(_:)(v26);

  return 0xD000000000000016;
}

void sub_1003309EC(void *a1)
{
  v1 = *((swift_isaMask & *a1) + 0x50);
  v2 = *((swift_isaMask & *a1) + 0x58);
  sub_1003336C4();
}

uint64_t sub_100330A5C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_100330A98(uint64_t a1)
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

uint64_t sub_100330AB4(uint64_t a1, unsigned int a2)
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

uint64_t sub_100330AFC(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_100330B40(uint64_t result, unsigned int a2)
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

void sub_100330B70()
{
  sub_100330C28(319, &qword_100593008, &type metadata accessor for UUID);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_100330C28(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_100330CA0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1002CA2BC;

  return sub_100330D2C();
}

uint64_t sub_100330D4C()
{
  v1 = v0[5];
  if (*(v1 + *((swift_isaMask & *v1) + 0xD0) + 16) == 3)
  {
    v2 = *(v1 + *((swift_isaMask & *v1) + 0x168));
    v0[6] = v2;
    if (v2)
    {

      return _swift_task_switch(sub_1002CA578, v2, 0);
    }
  }

  else
  {
    v3 = *((swift_isaMask & *v1) + 0x98);
    v4 = v1;
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    v7 = os_log_type_enabled(v5, v6);
    v8 = v0[5];
    if (v7)
    {
      v9 = swift_slowAlloc();
      *v9 = 16777472;
      v10 = *((swift_isaMask & *v8) + 0x68);
      swift_beginAccess();
      v9[4] = *(v8 + v10);

      _os_log_impl(&_mh_execute_header, v5, v6, "Datapath Initiator ID: %hhu is not established yet.", v9, 5u);
    }

    else
    {
    }
  }

  v11 = v0[1];

  return v11(0);
}

void *sub_100330F38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, int a6)
{
  v6 = sub_100332FA0(a1, a2, a3, a4, a5 | ((HIDWORD(a5) & 1) << 32), a6);

  return v6;
}

uint64_t sub_100330FE4(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100331024()
{
  result = qword_1005967E0;
  if (!qword_1005967E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005967E0);
  }

  return result;
}

uint64_t sub_100331078(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1003310B4(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v3;
  v7 = swift_isaMask;
  v8 = *((swift_isaMask & *v3) + 0x50);
  v9 = *((swift_isaMask & *v3) + 0x58);
  v10 = _s17InitiatorInstanceC12PeerIdentityVMa();
  v50 = *(v10 - 8);
  v11 = *(v50 + 64);
  __chkstk_darwin();
  v13 = &v48 - v12;
  v14 = *(*(sub_10005DC58(&qword_10058F4D0, &qword_100491AB0) - 8) + 64);
  __chkstk_darwin();
  v16 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v18 = &v48 - v17;
  v19 = (v3 + *((v7 & v6) + 0xD0));
  if (*(v19 + 16) != 3)
  {
    return 0;
  }

  v20 = *v19;
  v21 = swift_isaMask & *v3;
  v22 = (v3 + *(v21 + 0xA0));
  if (*(v22 + 6))
  {

    return 0;
  }

  v24 = *v22 | (*(v22 + 2) << 32);
  v48 = v20;
  v25 = *(v21 + 104);
  v26 = swift_beginAccess();
  v49 = a1;
  v27 = *(v3 + v25);
  v28 = (*(*a2 + 256))(v26);
  v29 = WiFiAddress.apiAddress.getter(v28 & 0xFFFFFFFFFFFFLL);
  v30 = WiFiInterface.interfaceIndex.getter();
  v31 = v27;
  v32 = v49;
  [v49 datapathStartedWithInstanceID:v31 initiatorDataAddress:v29 localInterfaceIndex:v30];

  v33 = v48;
  v34 = WiFiAddress.apiAddress.getter(v24);
  [v32 datapathConfirmedForPeerDataAddress:v34 serviceSpecificInfo:v33];

  if ([v32 respondsToSelector:"datapathConfirmedForPeerDataAddress:serviceSpecificInfo:pairingKeyStoreID:deviceID:"])
  {
    v35 = WiFiAddress.apiAddress.getter(v24);
    v36 = v3 + *((swift_isaMask & *v3) + 0x140);
    swift_beginAccess();
    v37 = v50;
    v38 = *(v50 + 48);
    if (v38(v36, 1, v10))
    {
      v39 = type metadata accessor for UUID();
      (*(*(v39 - 8) + 56))(v18, 1, 1, v39);
    }

    else
    {
      (*(v37 + 16))(v13, v36, v10);
      sub_10001CEA8(v13, v18, &qword_10058F4D0, &qword_100491AB0);
    }

    if (v38(v36, 1, v10))
    {
      v40 = 0;
    }

    else
    {
      v40 = *&v36[*(v10 + 36)];
    }

    v33 = v48;
    v32 = v49;
    sub_100012400(v18, v16, &qword_10058F4D0, &qword_100491AB0);
    v41 = type metadata accessor for UUID();
    v42 = *(v41 - 8);
    isa = 0;
    if ((*(v42 + 48))(v16, 1, v41) != 1)
    {
      isa = UUID._bridgeToObjectiveC()().super.isa;
      (*(v42 + 8))(v16, v41);
    }

    [v32 datapathConfirmedForPeerDataAddress:v35 serviceSpecificInfo:v33 pairingKeyStoreID:isa deviceID:v40];

    sub_100016290(v18, &qword_10058F4D0, &qword_100491AB0);
  }

  v44 = *((swift_isaMask & *v3) + 0x78);
  if (*(v3 + v44))
  {
    v45 = *((swift_isaMask & *v3) + 0x80);
    swift_beginAccess();
    swift_unknownObjectRetain();
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*(v3 + v45) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v3 + v45) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v47 = *((*(v3 + v45) & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      v33 = v48;
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    swift_endAccess();

    return 1;
  }

  else
  {

    v46 = *(v3 + v44);
    *(v3 + v44) = v32;
    swift_unknownObjectRelease();
    swift_unknownObjectRetain();
    return 1;
  }
}

void sub_100331680()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (!*(Strong + *((swift_isaMask & *Strong) + 0x78)))
    {
      v2 = *((swift_isaMask & *Strong) + 0x98);
      v3 = Strong;
      v4 = Logger.logObject.getter();
      v5 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v4, v5))
      {
        v6 = swift_slowAlloc();
        v7 = swift_slowAlloc();
        *v6 = 138412290;
        *(v6 + 4) = v3;
        *v7 = v1;
        v8 = v3;
        _os_log_impl(&_mh_execute_header, v4, v5, "Terminating %@ (after delay) because it's client was invalidated", v6, 0xCu);
        sub_100016290(v7, &qword_10058B780, &qword_100480AC0);
      }

      sub_100323CDC();
    }
  }
}

void *sub_100331808(uint64_t a1, uint64_t a2)
{
  swift_getAssociatedTypeWitness();
  v4 = *(swift_getAssociatedConformanceWitness() + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin();
  v9 = &v16 - v8;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v11 = result;
    v12 = *(result + *((swift_isaMask & *result) + 0x60));
    swift_unownedRetainStrong();
    v13 = *(v12 + *(*v12 + 800));
    swift_unownedRetainStrong();

    (*(*v13 + 168))(v14);

    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    (*(AssociatedConformanceWitness + 168))(a1, a2, AssociatedTypeWitness, AssociatedConformanceWitness);

    return (*(v6 + 8))(v9, AssociatedTypeWitness);
  }

  return result;
}

void sub_100331BE4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *((swift_isaMask & *Strong) + 0x98);
    v3 = Strong;
    swift_errorRetain();
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v15 = v14;
      *v6 = 138412802;
      *(v6 + 4) = v3;
      *v7 = v1;
      *(v6 + 12) = 2080;
      v8 = v3;
      sub_1003236D8();

      v9 = WiFiInterface.description.getter();
      v11 = v10;

      v12 = sub_100002320(v9, v11, &v15);

      *(v6 + 14) = v12;
      *(v6 + 22) = 2112;
      swift_errorRetain();
      v13 = _swift_stdlib_bridgeErrorToNSError();
      *(v6 + 24) = v13;
      v7[1] = v13;
      _os_log_impl(&_mh_execute_header, v4, v5, "%@ internet sharing on %s failed because %@", v6, 0x20u);
      sub_10005DC58(&qword_10058B780, &qword_100480AC0);
      swift_arrayDestroy();

      sub_100002A00(v14);
    }

    else
    {
    }

    sub_100323CDC();
  }
}

void sub_100331E20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v60 = a2;
  v5 = *(*(sub_10005DC58(&unk_100596870, &unk_1004B0F60) - 8) + 64);
  __chkstk_darwin();
  v7 = &v53 - v6;
  v8 = type metadata accessor for DispatchTime();
  v58 = *(v8 - 8);
  v59 = v8;
  v9 = *(v58 + 64);
  __chkstk_darwin();
  v11 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchTimeInterval();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin();
  v61 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v62 = &v53 - v16;
  v17 = *(a4 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v19 = *(AssociatedTypeWitness - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin();
  v22 = &v53 - v21;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v24 = Strong;
    v55 = v13;
    v56 = v12;
    v57 = v7;
    v25 = *((swift_isaMask & *Strong) + 0x60);
    v26 = *(Strong + v25);
    swift_unownedRetainStrong();
    v27 = *(*v26 + 96);
    swift_beginAccess();
    (*(v19 + 16))(v22, v26 + v27, AssociatedTypeWitness);

    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    (*(AssociatedConformanceWitness + 416))(65792, AssociatedTypeWitness, AssociatedConformanceWitness);
    (*(v19 + 8))(v22, AssociatedTypeWitness);
    v29 = swift_isaMask & *v24;
    v30 = v24 + *(v29 + 0x120);
    if ((v30[8] & 1) == 0)
    {
      v54 = *v30;
      v31 = *(v29 + 152);
      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        *v34 = 0;
        _os_log_impl(&_mh_execute_header, v32, v33, "Triggering infrastructure WiFi disconnect", v34, 2u);
      }

      *(v24 + *((swift_isaMask & *v24) + 0x100)) = 1;
      v35 = *(v24 + v25);
      swift_unownedRetainStrong();
      v36 = *(v35 + *(*v35 + 800));
      swift_unownedRetainStrong();

      sub_1003EFB38(0);

      type metadata accessor for P2PTimer();
      variable initialization expression of AWDLPeer.lastUpdated();
      v37 = v62;
      DispatchTime.distance(to:)();
      (*(v58 + 8))(v11, v59);
      v39 = v55;
      v38 = v56;
      v40 = v61;
      (*(v55 + 16))(v61, v37, v56);
      v41 = Logger.logObject.getter();
      v42 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        v63 = v44;
        *v43 = 136315138;
        v45 = DispatchTimeInterval.description.getter();
        v47 = v46;
        (*(v39 + 8))(v40, v38);
        v48 = sub_100002320(v45, v47, &v63);

        *(v43 + 4) = v48;
        _os_log_impl(&_mh_execute_header, v41, v42, "DHCP took %s", v43, 0xCu);
        sub_100002A00(v44);
      }

      else
      {

        (*(v39 + 8))(v40, v38);
      }

      v49 = v57;
      if (v54 >= 5)
      {
        v50 = 0;
      }

      else
      {
        v50 = 0x3040102uLL >> (8 * v54);
      }

      (*(v39 + 32))(v57, v62, v38);
      v51 = type metadata accessor for NANInternetSharingStatistics.Requester();
      *(v49 + *(v51 + 20)) = v50;
      (*(*(v51 - 8) + 56))(v49, 0, 1, v51);
      v52 = *((swift_isaMask & *v24) + 0x118);
      swift_beginAccess();
      sub_1000B1B78(v49, v24 + v52, &unk_100596870, &unk_1004B0F60);
      swift_endAccess();
    }
  }
}

uint64_t sub_100332514(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    _CocoaArrayWrapper.endIndex.getter();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v1 = result;
  return result;
}

uint64_t sub_1003325B4()
{
  v1 = *v0;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || v1 < 0 || (v1 & 0x4000000000000000) != 0)
  {
    result = sub_1004770C8(v1);
    v1 = result;
  }

  v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v3)
  {
    v4 = v3 - 1;
    result = *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v4 + 0x20);
    *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10) = v4;
    *v0 = v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100332618(void *a1, uint64_t a2, char a3)
{
  v4 = v3 + *((swift_isaMask & *v3) + 0xD0);
  v5 = *v4;
  v6 = *(v4 + 1);
  *v4 = a1;
  *(v4 + 1) = a2;
  v7 = v4[16];
  v4[16] = a3;
  sub_100333808(a1, a2, a3);
  sub_100333850(v5, v6, v7);

  return sub_10031E144();
}

void *sub_100332698(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v7 = v6;
  v60 = a6;
  v59 = a5;
  v56 = a3;
  v57 = a4;
  v64 = a2;
  ObjectType = swift_getObjectType();
  v9 = *v6;
  v10 = swift_isaMask;
  v54 = type metadata accessor for Logger();
  v61 = *(v54 - 8);
  v11 = *(v61 + 64);
  __chkstk_darwin();
  v58 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v6 + *((v10 & v9) + 0x70)) = 0;
  *(v6 + *((swift_isaMask & *v6) + 0x78)) = 0;
  *(v6 + *((swift_isaMask & *v6) + 0x80)) = _swiftEmptyArrayStorage;
  *(v6 + *((swift_isaMask & *v6) + 0x88)) = 0;
  *(v6 + *((swift_isaMask & *v6) + 0x90)) = 0;
  v13 = v6 + *((swift_isaMask & *v6) + 0x98);
  Logger.init(subsystem:category:)();
  v14 = v6 + *((swift_isaMask & *v6) + 0xA0);
  *(v14 + 2) = 0;
  *v14 = 0;
  v14[6] = 1;
  v15 = v6 + *((swift_isaMask & *v6) + 0xA8);
  *(v15 + 2) = 0;
  *v15 = 0;
  v15[6] = 1;
  v16 = (v6 + *((swift_isaMask & *v6) + 0xB0));
  v16[1] = 0;
  v16[2] = 0;
  *v16 = 4;
  *(v6 + *((swift_isaMask & *v6) + 0xB8)) = xmmword_100483C50;
  v17 = *((swift_isaMask & *v6) + 0xC0);
  swift_unknownObjectWeakInit();
  v18 = *((swift_isaMask & *v6) + 0xC8);
  type metadata accessor for P2PTimer();
  variable initialization expression of AWDLPeer.lastUpdated();
  v19 = v7 + *((swift_isaMask & *v7) + 0xD0);
  *v19 = xmmword_10047CE70;
  v19[16] = 0;
  *(v6 + *((swift_isaMask & *v6) + 0xD8)) = 0;
  *(v6 + *((swift_isaMask & *v6) + 0xE0)) = 0;
  *(v6 + *((swift_isaMask & *v6) + 0xF0)) = &_swiftEmptyDictionarySingleton;
  *(v6 + *((swift_isaMask & *v6) + 0xF8)) = -1;
  *(v6 + *((swift_isaMask & *v6) + 0x100)) = 0;
  *(v6 + *((swift_isaMask & *v6) + 0x108)) = 1;
  v20 = *((swift_isaMask & *v6) + 0x110);
  v21 = type metadata accessor for DispatchTime();
  (*(*(v21 - 8) + 56))(v6 + v20, 1, 1, v21);
  v22 = *((swift_isaMask & *v6) + 0x118);
  v23 = type metadata accessor for NANInternetSharingStatistics.Requester();
  (*(*(v23 - 8) + 56))(v6 + v22, 1, 1, v23);
  v24 = v7 + *((swift_isaMask & *v7) + 0x120);
  *v24 = 0;
  v24[8] = 1;
  v25 = (v7 + *((swift_isaMask & *v7) + 0x128));
  *v25 = 0;
  v25[1] = 0;
  v26 = v7 + *((swift_isaMask & *v7) + 0x130);
  *v26 = 0;
  v26[4] = 1;
  *(v6 + *((swift_isaMask & *v6) + 0x138)) = 0;
  v27 = *((swift_isaMask & *v6) + 0x140);
  v28 = *((v10 & v9) + 0x50);
  v29 = *((v10 & v9) + 0x58);
  v30 = _s17InitiatorInstanceC12PeerIdentityVMa();
  v31 = v6 + v27;
  v32 = v54;
  (*(*(v30 - 8) + 56))(v31, 1, 1, v30);
  v33 = *((swift_isaMask & *v6) + 0x148);
  NANWiFiAwareStatistics.init()(&v63);
  memcpy(v6 + v33, &v63, 0x120uLL);
  *(v6 + *((swift_isaMask & *v6) + 0x150)) = 0;
  *(v6 + *((swift_isaMask & *v6) + 0x158)) = 0;
  v34 = v7 + *((swift_isaMask & *v7) + 0x160);
  variable initialization expression of AWDLPeer.lastUpdated();
  *(v6 + *((swift_isaMask & *v6) + 0x168)) = 0;
  *(v6 + *((swift_isaMask & *v6) + 0x60)) = a1;
  sub_1003336F4(v64, v7 + *((swift_isaMask & *v7) + 0x68));
  type metadata accessor for LowLatencyInternetProviderPolicy();
  swift_unownedRetain();

  v36 = sub_100408E0C(v35);

  *(v7 + *((swift_isaMask & *v7) + 0xE8)) = v36;
  v62.receiver = v7;
  v62.super_class = ObjectType;
  v37 = objc_msgSendSuper2(&v62, "init");
  v38 = (v37 + *((swift_isaMask & *v37) + 0x128));
  v39 = v38[1];
  v40 = v57;
  *v38 = v56;
  v38[1] = v40;
  v41 = v37;

  v42 = v41 + *((swift_isaMask & *v41) + 0x130);
  v43 = v58;
  v44 = BYTE4(v59);
  *v42 = v59;
  v42[4] = v44 & 1;
  *(v41 + *((swift_isaMask & *v41) + 0x138)) = v60;
  v45 = *((swift_isaMask & *v41) + 0x98);
  v46 = v32;
  v47 = v43;
  (*(v61 + 16))();
  v48 = Logger.logObject.getter();
  v49 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    *v50 = 138412290;
    *(v50 + 4) = v41;
    *v51 = v37;
    v52 = v41;
    _os_log_impl(&_mh_execute_header, v48, v49, "Created %@", v50, 0xCu);
    sub_100016290(v51, &qword_10058B780, &qword_100480AC0);
  }

  sub_100333750(v64);
  (*(v61 + 8))(v47, v46);
  return v41;
}

unint64_t sub_10033302C(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 32 * result;
  sub_10005DC58(&unk_1005968C0, &qword_1004AF230);
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 32 * a3;
  v13 = (v7 + 32 + 32 * a2);
  v14 = 32 * v12;
  v15 = &v13[32 * v12];
  if (result != v13 || result >= v15)
  {
    result = memmove(result, v13, v14);
  }

  v17 = *(v7 + 16);
  v9 = __OFADD__(v17, v10);
  v18 = v17 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v18;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t sub_1003330FC(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = a3 - v4;
  if (__OFSUB__(a3, v4))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = *v3;
  v7 = *(v6 + 16);
  v8 = __OFSUB__(v7, a2);
  v9 = v7 - a2;
  if (v8)
  {
    goto LABEL_17;
  }

  result = v6 + 32 + 10 * result + 10 * a3;
  v10 = (v6 + 32 + 10 * a2);
  v11 = 10 * v9;
  if (result != v10 || result >= v10 + v11)
  {
    v13 = a3;
    result = memmove(result, v10, v11);
    a3 = v13;
  }

  v14 = *(v6 + 16);
  v8 = __OFADD__(v14, v5);
  v15 = v14 + v5;
  if (v8)
  {
    goto LABEL_18;
  }

  *(v6 + 16) = v15;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t sub_1003331B0(unint64_t a1, uint64_t a2)
{
  v4 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_17:
    v5 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = 0;
  while (1)
  {
    if (v5 == v6)
    {
      return 0;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v6 >= *(v4 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v7 = *(a1 + 8 * v6 + 32);
      swift_unknownObjectRetain();
    }

    swift_unknownObjectRelease();
    if (v7 == a2)
    {
      return v6;
    }

    if (__OFADD__(v6++, 1))
    {
      goto LABEL_16;
    }
  }
}

uint64_t sub_100333298(unint64_t *a1, uint64_t a2)
{
  v7 = *a1;
  v8 = sub_1003331B0(*a1, a2);
  v10 = v8;
  if (v2)
  {
    return v10;
  }

  if (v9)
  {
    if (v7 >> 62)
    {
      return _CocoaArrayWrapper.endIndex.getter();
    }

    return *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = v8 + 1;
  if (__OFADD__(v8, 1))
  {
    __break(1u);
    goto LABEL_8;
  }

  while (1)
  {
    if (v7 >> 62)
    {
      if (v11 == _CocoaArrayWrapper.endIndex.getter())
      {
        return v10;
      }
    }

    else if (v11 == *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v10;
    }

    if ((v7 & 0xC000000000000001) != 0)
    {
      v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_17;
    }

    if ((v11 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v11 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_42;
    }

    v15 = *(v7 + 8 * v11 + 32);
    swift_unknownObjectRetain();
LABEL_17:
    swift_unknownObjectRelease();
    if (v15 != a2)
    {
      if (v10 != v11)
      {
        if ((v7 & 0xC000000000000001) != 0)
        {
          v3 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if ((v10 & 0x8000000000000000) != 0)
          {
            goto LABEL_46;
          }

          v17 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v10 >= v17)
          {
            goto LABEL_47;
          }

          if (v11 >= v17)
          {
            goto LABEL_48;
          }

          v3 = *(v7 + 32 + 8 * v10);
          v16 = *(v7 + 32 + 8 * v11);
          swift_unknownObjectRetain();
          swift_unknownObjectRetain();
        }

        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v7 & 0x8000000000000000) != 0 || (v7 & 0x4000000000000000) != 0)
        {
          v7 = sub_1004770C8(v7);
          v18 = (v7 >> 62) & 1;
        }

        else
        {
          LODWORD(v18) = 0;
        }

        v4 = v7 & 0xFFFFFFFFFFFFFF8;
        v19 = *((v7 & 0xFFFFFFFFFFFFFF8) + 8 * v10 + 0x20);
        *((v7 & 0xFFFFFFFFFFFFFF8) + 8 * v10 + 0x20) = v16;
        swift_unknownObjectRelease();
        if ((v7 & 0x8000000000000000) != 0 || v18)
        {
          v7 = sub_1004770C8(v7);
          v4 = v7 & 0xFFFFFFFFFFFFFF8;
          if ((v11 & 0x8000000000000000) != 0)
          {
LABEL_39:
            __break(1u);
            return v10;
          }
        }

        else if ((v11 & 0x8000000000000000) != 0)
        {
          goto LABEL_39;
        }

        if (v11 >= *(v4 + 16))
        {
          goto LABEL_45;
        }

LABEL_8:
        v12 = v4 + 8 * v11;
        v13 = *(v12 + 32);
        *(v12 + 32) = v3;
        swift_unknownObjectRelease();
        *a1 = v7;
      }

      v14 = __OFADD__(v10++, 1);
      if (v14)
      {
        goto LABEL_44;
      }
    }

    v14 = __OFADD__(v11++, 1);
    if (v14)
    {
      goto LABEL_43;
    }
  }

  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
  return _CocoaArrayWrapper.endIndex.getter();
}

uint64_t sub_1003334E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  sub_10005DC58(&qword_1005968A8, &qword_1004B1790);
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = _CocoaArrayWrapper.endIndex.getter();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_1003335EC(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = a2;
    v4 = a1;
    v5 = *v3;
    v6 = *v3 >> 62;
    if (!v6)
    {
      result = *((*v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (result < v2)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v2, v4))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v4 - v2;
  if (__OFSUB__(0, v2 - v4))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v6)
  {
    v9 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v9 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = __OFADD__(v9, v8);
  result = v9 + v8;
  if (v10)
  {
    goto LABEL_18;
  }

  sub_100332514(result);

  return sub_1003334E0(v4, v2, 0);
}

uint64_t sub_1003337A4(uint64_t a1, uint64_t a2)
{
  BeaconInformation = type metadata accessor for NANPeer.LastBeaconInformation(0);
  (*(*(BeaconInformation - 8) + 32))(a2, a1, BeaconInformation);
  return a2;
}

void *sub_100333808(void *result, uint64_t a2, char a3)
{
  if (a3 == 3)
  {
    v4 = result;
  }

  return result;
}

void sub_100333850(void *a1, uint64_t a2, char a3)
{
  if (a3 == 3)
  {
  }
}

void *sub_100333904(uint64_t a1, uint64_t a2)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[4];
  return sub_100331808(a1, a2);
}

void sub_100333910()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  sub_100331BE4();
}

void sub_10033391C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = *(type metadata accessor for DispatchTime() - 8);
  v4 = v0[4];
  v5 = v0 + ((*(v3 + 80) + 40) & ~*(v3 + 80));

  sub_100331E20(v4, v5, v1, v2);
}

uint64_t sub_10033399C(uint64_t a1)
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

  return sub_10033019C(a1, v5, v6, v7, v8, v9, v10, v11);
}

void sub_100333AC4()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  sub_100331680();
}

void sub_100333BB8(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = String._bridgeToObjectiveC()();
  (*(v3 + 16))(v3, a1, v4);
}

uint64_t sub_100333C24()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchTime();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v0 + 51) & 1) == 0)
  {
    v7 = *(v0 + OBJC_IVAR____TtC12wifip2pdCore13MulticastPeer_receiverHeartBeatTimer);
    *(v0 + OBJC_IVAR____TtC12wifip2pdCore13MulticastPeer_receiverHeartBeatTimer) = 0;

    *(v0 + 50) = 0;
    *(v0 + OBJC_IVAR____TtC12wifip2pdCore13MulticastPeer_heartbeatRequestCounter) = 0;
    type metadata accessor for P2PTimer();
    variable initialization expression of AWDLPeer.lastUpdated();
    v8 = OBJC_IVAR____TtC12wifip2pdCore13MulticastPeer_lastModified;
    swift_beginAccess();
    (*(v3 + 24))(v1 + v8, v6, v2);
    swift_endAccess();
    sub_1003341C4();
    (*(v3 + 8))(v6, v2);
  }

  type metadata accessor for P2PTimer();
  variable initialization expression of AWDLPeer.lastUpdated();
  v9 = OBJC_IVAR____TtC12wifip2pdCore13MulticastPeer_lastModified;
  swift_beginAccess();
  (*(v3 + 24))(v1 + v9, v6, v2);
  swift_endAccess();
  sub_1003341C4();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_100333DF0(double a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchTime();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v1 + 56) = a1;
  *(v1 + 50) = 1;
  *(v1 + OBJC_IVAR____TtC12wifip2pdCore13MulticastPeer_heartbeatRequestCounter) = 0;
  type metadata accessor for P2PTimer();
  variable initialization expression of AWDLPeer.lastUpdated();
  v9 = OBJC_IVAR____TtC12wifip2pdCore13MulticastPeer_lastModified;
  swift_beginAccess();
  (*(v5 + 24))(v2 + v9, v8, v4);
  swift_endAccess();
  sub_1003341C4();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_100333F3C(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchTime();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + 64) = a1;
  *(v2 + 50) = 1;
  *(v2 + OBJC_IVAR____TtC12wifip2pdCore13MulticastPeer_heartbeatRequestCounter) = 0;
  type metadata accessor for P2PTimer();
  variable initialization expression of AWDLPeer.lastUpdated();
  v9 = OBJC_IVAR____TtC12wifip2pdCore13MulticastPeer_lastModified;
  swift_beginAccess();
  (*(v5 + 24))(v2 + v9, v8, v4);
  swift_endAccess();
  sub_1003341C4();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_100334080(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchTime();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + 65) = a1;
  *(v2 + 50) = 1;
  *(v2 + OBJC_IVAR____TtC12wifip2pdCore13MulticastPeer_heartbeatRequestCounter) = 0;
  type metadata accessor for P2PTimer();
  variable initialization expression of AWDLPeer.lastUpdated();
  v9 = OBJC_IVAR____TtC12wifip2pdCore13MulticastPeer_lastModified;
  swift_beginAccess();
  (*(v5 + 24))(v2 + v9, v8, v4);
  swift_endAccess();
  sub_1003341C4();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1003341C4()
{
  v1 = *(type metadata accessor for DispatchTimeInterval() - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin();
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v6 = &v21 - v5;
  result = __chkstk_darwin();
  v9 = (&v21 - v8);
  if (*(v0 + 51) == 1 && *(v0 + 49) == 1)
  {
    v10 = 1000 * *(v0 + OBJC_IVAR____TtC12wifip2pdCore13MulticastPeer_receiverHeartBeatIntervalInSeconds);
    if ((v10 & 0xFFFFFFFF00000000) != 0)
    {
      __break(1u);
    }

    else
    {
      *v9 = v10;
      v11 = enum case for DispatchTimeInterval.milliseconds(_:);
      v12 = *(v1 + 104);
      v13 = result;
      v12(&v21 - v8, enum case for DispatchTimeInterval.milliseconds(_:), result);
      v14 = *OS_dispatch_queue.nan.unsafeMutableAddressor();
      v15 = swift_allocObject();
      swift_weakInit();
      v12(v6, enum case for DispatchTimeInterval.never(_:), v13);
      *v4 = 100;
      v12(v4, v11, v13);
      v16 = type metadata accessor for P2PTimer();
      v17 = *(v16 + 48);
      v18 = *(v16 + 52);
      swift_allocObject();
      v19 = P2PTimer.init(deadlineAfter:on:repeating:leeway:_:)(v9, v14, v6, v4, sub_100336A88, v15);
      v20 = *(v0 + OBJC_IVAR____TtC12wifip2pdCore13MulticastPeer_receiverHeartBeatTimer);
      *(v0 + OBJC_IVAR____TtC12wifip2pdCore13MulticastPeer_receiverHeartBeatTimer) = v19;
    }
  }

  return result;
}

uint64_t sub_1003343F8()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = *(result + 32);
    (*(result + 24))();
  }

  return result;
}

uint64_t sub_100334458(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for DispatchTimeInterval();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin();
  v12 = v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  result = __chkstk_darwin();
  v16 = (v31 - v14);
  v17 = *(v4 + OBJC_IVAR____TtC12wifip2pdCore13MulticastPeer_heartbeatRequestCounter);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(v4 + OBJC_IVAR____TtC12wifip2pdCore13MulticastPeer_heartbeatRequestCounter) = v19;
    *v16 = a1;
    v20 = enum case for DispatchTimeInterval.milliseconds(_:);
    v31[0] = a2;
    v31[1] = a3;
    v21 = *(v9 + 104);
    v32 = v15;
    v21(v31 - v14, enum case for DispatchTimeInterval.milliseconds(_:), v8);
    v33 = *OS_dispatch_queue.nan.unsafeMutableAddressor();
    v22 = swift_allocObject();
    swift_weakInit();
    v23 = swift_allocObject();
    v23[2] = v31[0];
    v23[3] = a3;
    v23[4] = v22;
    v24 = v32;
    v21(v32, enum case for DispatchTimeInterval.never(_:), v8);
    *v12 = 100;
    v21(v12, v20, v8);
    v25 = type metadata accessor for P2PTimer();
    v26 = *(v25 + 48);
    v27 = *(v25 + 52);
    swift_allocObject();
    v28 = v33;

    v29 = P2PTimer.init(deadlineAfter:on:repeating:leeway:_:)(v16, v28, v24, v12, sub_100336A7C, v23);
    v30 = *(v4 + OBJC_IVAR____TtC12wifip2pdCore13MulticastPeer_receiverHeartBeatTimer);
    *(v4 + OBJC_IVAR____TtC12wifip2pdCore13MulticastPeer_receiverHeartBeatTimer) = v29;
  }

  return result;
}

uint64_t sub_1003346C0(void (*a1)(void))
{
  swift_beginAccess();
  swift_weakLoadStrong();
  a1();
}

uint64_t sub_100334728()
{
  v1 = *(v0 + 4);

  v2 = OBJC_IVAR____TtC12wifip2pdCore13MulticastPeer_lastModified;
  v3 = type metadata accessor for DispatchTime();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);
  v4 = *&v0[OBJC_IVAR____TtC12wifip2pdCore13MulticastPeer_receiverHeartBeatTimer];

  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_100334804()
{
  result = type metadata accessor for DispatchTime();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    return swift_updateClassMetadata2();
  }

  return result;
}

Swift::Int sub_100334900()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(*(v1 + 40));
  NANClusterChangeEvent.hash(into:)(&v3, *(v1 + 42) | (*(v1 + 44) << 16));
  return Hasher._finalize()();
}

void sub_10033495C(int a1)
{
  v3 = *v1;
  Hasher._combine(_:)(*(*v1 + 40));
  v4 = *(v3 + 42) | (*(v3 + 44) << 16);

  NANClusterChangeEvent.hash(into:)(a1, v4);
}

Swift::Int sub_1003349B4()
{
  Hasher.init(_seed:)();
  v1 = *v0;
  Hasher._combine(_:)(*(*v0 + 40));
  NANClusterChangeEvent.hash(into:)(&v3, *(v1 + 42) | (*(v1 + 44) << 16));
  return Hasher._finalize()();
}

uint64_t sub_100334A60()
{
  v83 = type metadata accessor for DispatchTimeInterval();
  v84 = *(v83 - 8);
  v2 = v84[8];
  __chkstk_darwin();
  v82 = (&v77 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v86 = &v77 - v4;
  __chkstk_darwin();
  v85 = (&v77 - v5);
  v92 = type metadata accessor for DispatchTime();
  v87 = *(v92 - 8);
  v6 = *(v87 + 64);
  __chkstk_darwin();
  v91 = &v77 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v90 = v0;
  v8 = *(v0 + 24);
  v9 = *(v8 + 16);
  if (v9)
  {
    v10 = sub_10036777C(*(v8 + 16), 0);
    v11 = sub_100315DC8(&v94, (v10 + 32), v9, v8);
    v12 = v94;

    sub_1000E290C();
    if (v11 != v9)
    {
      __break(1u);
      goto LABEL_101;
    }

    v94 = _swiftEmptyArrayStorage;
    if ((v10 & 0x8000000000000000) != 0)
    {
      goto LABEL_87;
    }
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
    v94 = _swiftEmptyArrayStorage;
    if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0)
    {
      goto LABEL_87;
    }
  }

  if ((v10 & 0x4000000000000000) != 0)
  {
    goto LABEL_87;
  }

  for (i = *(v10 + 16); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v14 = 0;
    while ((v10 & 0xC000000000000001) != 0)
    {
      v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v16 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

LABEL_15:
      if (v15[50] == 1 && (v15[51] & 1) != 0 && (v15[48] & 1) == 0)
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v17 = v94[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      else
      {
      }

      ++v14;
      if (v16 == i)
      {
        goto LABEL_22;
      }
    }

    if (v14 < *(v10 + 16))
    {
      v15 = *(v10 + 8 * v14 + 32);

      v16 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        goto LABEL_21;
      }

      goto LABEL_15;
    }

    __break(1u);
LABEL_86:
    __break(1u);
LABEL_87:
    ;
  }

LABEL_22:

  v94 = sub_1003367BC(v18);
  sub_100335D04(&v94);

  v8 = v94;
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 134217984;
    v22 = v8 & 0x4000000000000000;
    if (v8 < 0 || v22)
    {
      v76 = v21;
      v23 = _CocoaArrayWrapper.endIndex.getter();
      v21 = v76;
    }

    else
    {
      v23 = *(v8 + 16);
    }

    *(v21 + 4) = v23;
    _os_log_impl(&_mh_execute_header, v19, v20, "Current peers with stats available is %ld", v21, 0xCu);
  }

  else
  {

    v22 = v8 & 0x4000000000000000;
  }

  v24 = v8 >= 0 && v22 == 0;
  v12 = !v24;
  if (v24)
  {
    v25 = *(v8 + 16);
    if (v25)
    {
      if (v25 >= 3)
      {
        v26 = 3;
      }

      else
      {
        v26 = *(v8 + 16);
      }

      goto LABEL_40;
    }

    goto LABEL_98;
  }

  if (_CocoaArrayWrapper.endIndex.getter() < 1)
  {
LABEL_98:

    v62 = 0.0;
    v64 = 1;
    goto LABEL_99;
  }

  v72 = _CocoaArrayWrapper.endIndex.getter();
  if ((v72 & 0x8000000000000000) != 0)
  {
    goto LABEL_110;
  }

  if (v72 >= 3)
  {
    v26 = 3;
  }

  else
  {
    v26 = v72;
  }

  if (!v72)
  {
    v28 = 0.0;
    v29 = 0.0;
    goto LABEL_95;
  }

LABEL_40:
  if ((v8 & 0xC000000000000001) == 0 && v26 > *(v8 + 16))
  {
    goto LABEL_102;
  }

  v27 = 0;
  v28 = 0.0;
  v29 = 0.0;
  do
  {
    if ((v8 & 0xC000000000000001) != 0)
    {
      v30 = *(specialized _ArrayBuffer._getElementSlowPath(_:)() + 56);

      v31 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v30 = *(*(v8 + 8 * v27 + 32) + 56);
    }

    ++v27;
    v29 = v29 + v30;
    LOBYTE(v30) = *(v31 + 64);

    v28 = v28 + log10(*&v30);
  }

  while (v26 != v27);
  if (v12)
  {
LABEL_95:
    v73 = _CocoaArrayWrapper.endIndex.getter();
    v74 = 3;
    if (v73 < 3)
    {
      v74 = v73;
    }

    v1 = v29 / v74;
    v32 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v32 = *(v8 + 16);
    v33 = 3;
    if (v32 < 3)
    {
      v33 = *(v8 + 16);
    }

    v1 = v29 / v33;
  }

  v34 = 3;
  if (v32 < 3)
  {
    v34 = v32;
  }

  v35 = __exp10(v28 / v34);
  if ((*&v35 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_101:
    __break(1u);
LABEL_102:
    __break(1u);
    goto LABEL_103;
  }

  if (v35 <= -1.0)
  {
LABEL_103:
    __break(1u);
    goto LABEL_104;
  }

  if (v35 >= 256.0)
  {
LABEL_104:
    __break(1u);
    goto LABEL_105;
  }

  if (v12)
  {
LABEL_105:
    v90 = _CocoaArrayWrapper.endIndex.getter();
    if (!v90)
    {
      goto LABEL_72;
    }

LABEL_58:
    v93 = _swiftEmptyArrayStorage;
    v36 = v90;

    sub_100367968(0, v36 & ~(v36 >> 63), 0);
    if ((v36 & 0x8000000000000000) == 0)
    {
      v77 = v12;
      v10 = v93;
      v37 = type metadata accessor for P2PTimer();
      v38 = 0;
      v88 = (v87 + 24);
      v89 = v8 & 0xC000000000000001;
      v87 += 8;
      v80 = enum case for DispatchTimeInterval.milliseconds(_:);
      v79 = v84 + 13;
      v78 = enum case for DispatchTimeInterval.never(_:);
      v39 = &unk_10059B000;
      p_prots = &OBJC_PROTOCOL___WiFiAwarePairedDevicesXPC.prots;
      v81 = v8;
      do
      {
        if (v89)
        {
          v41 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v41 = *(v8 + 8 * v38 + 32);
        }

        v41[50] = 0;
        *&v41[v39[311]] = 0;
        v42 = v91;
        variable initialization expression of AWDLPeer.lastUpdated();
        v43 = p_prots[282];
        swift_beginAccess();
        (*v88)(v43 + v41, v42, v92);
        swift_endAccess();
        if (v41[51] == 1 && (v41[49] & 1) != 0)
        {
          v44 = 1000 * *&v41[OBJC_IVAR____TtC12wifip2pdCore13MulticastPeer_receiverHeartBeatIntervalInSeconds];
          if ((v44 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_86;
          }

          *v85 = v44;
          v45 = *v79;
          v46 = v80;
          v47 = v83;
          (*v79)();
          v84 = *OS_dispatch_queue.nan.unsafeMutableAddressor();
          v48 = swift_allocObject();
          swift_weakInit();
          (v45)(v86, v78, v47);
          v49 = v82;
          *v82 = 100;
          v50 = v47;
          v51 = v91;
          (v45)(v49, v46, v50);
          p_prots = (&OBJC_PROTOCOL___WiFiAwarePairedDevicesXPC + 16);
          v52 = *(v37 + 48);
          v53 = *(v37 + 52);
          swift_allocObject();
          v54 = v84;

          v55 = v54;
          v39 = &unk_10059B000;
          v56 = v49;
          v8 = v81;
          v57 = P2PTimer.init(deadlineAfter:on:repeating:leeway:_:)(v85, v55, v86, v56, sub_1003369FC, v48);
          (*v87)(v51, v92);

          v58 = *&v41[OBJC_IVAR____TtC12wifip2pdCore13MulticastPeer_receiverHeartBeatTimer];
          *&v41[OBJC_IVAR____TtC12wifip2pdCore13MulticastPeer_receiverHeartBeatTimer] = v57;
        }

        else
        {

          (*v87)(v91, v92);
        }

        v93 = v10;
        v60 = *(v10 + 16);
        v59 = *(v10 + 24);
        v61 = v60 + 1;
        if (v60 >= v59 >> 1)
        {
          sub_100367968((v59 > 1), v60 + 1, 1);
          v10 = v93;
        }

        ++v38;
        *(v10 + 16) = v61;
      }

      while (v90 != v38);

      v12 = v77;
      goto LABEL_72;
    }

    __break(1u);
    goto LABEL_109;
  }

  v90 = *(v8 + 16);
  if (v90)
  {
    goto LABEL_58;
  }

LABEL_72:
  v62 = v1;
  if (v12)
  {
    v63 = _CocoaArrayWrapper.endIndex.getter();
    if (!v63)
    {
      goto LABEL_74;
    }

LABEL_76:
    v94 = _swiftEmptyArrayStorage;

    sub_100367968(0, v63 & ~(v63 >> 63), 0);
    if ((v63 & 0x8000000000000000) == 0)
    {
      v65 = 0;
      v66 = v94;
      do
      {
        if ((v8 & 0xC000000000000001) != 0)
        {
          v67 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v68 = *(v8 + 8 * v65 + 32);
        }

        *(v67 + 48) = 1;

        v94 = v66;
        v70 = v66[2];
        v69 = v66[3];
        v71 = v70 + 1;
        if (v70 >= v69 >> 1)
        {
          sub_100367968((v69 > 1), v70 + 1, 1);
          v66 = v94;
        }

        ++v65;
        v66[2] = v71;
      }

      while (v63 != v65);

      v64 = 0;
      goto LABEL_99;
    }

LABEL_109:
    __break(1u);
LABEL_110:
    __break(1u);

    __break(1u);
  }

  else
  {
    v63 = *(v8 + 16);
    if (v63)
    {
      goto LABEL_76;
    }

LABEL_74:

    v64 = 0;
LABEL_99:
    LOBYTE(v94) = v64;
    LOBYTE(v93) = v64;
    return *&v62;
  }

  return result;
}

uint64_t sub_1003354D4(uint64_t a1)
{
  swift_beginAccess();
  if (*(*(v1 + 24) + 16) >> 3 <= 0x270uLL)
  {
    v3 = *(a1 + 44);
    v4 = *(a1 + 42);
    swift_beginAccess();

    v5 = *(v1 + 24);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *(v1 + 24);
    *(v1 + 24) = 0x8000000000000000;
    sub_1003E14E4(a1, v4 | (v3 << 16), isUniquelyReferenced_nonNull_native);
    *(v1 + 24) = v9;
    swift_endAccess();
  }

  sub_10000B02C();
  swift_allocError();
  *v7 = xmmword_10048DED0;
  *(v7 + 16) = 1;
  return swift_willThrow();
}

uint64_t sub_1003355D0(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = *(v1 + 24);
  v5 = sub_100041DE8(a1 & 0xFFFFFFFFFFFFLL);
  if (v6)
  {
    v7 = v5;
    v8 = *(v2 + 24);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *(v2 + 24);
    *(v2 + 24) = 0x8000000000000000;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_10046A8A8();
    }

    v11 = v7;
    v12 = *(*(v10 + 56) + 8 * v7);
    sub_100477104(v11, v10);
    *(v2 + 24) = v10;
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v21 = v16;
      *v15 = 136315138;
      v17 = WiFiAddress.description.getter(a1 & 0xFFFFFFFFFFFFLL);
      v19 = sub_100002320(v17, v18, &v21);

      *(v15 + 4) = v19;
      _os_log_impl(&_mh_execute_header, v13, v14, "Peer %s not present in database", v15, 0xCu);
      sub_100002A00(v16);
    }

    return 0;
  }

  return v12;
}

void sub_100335764(uint64_t a1, double a2)
{
  swift_beginAccess();
  v5 = *(v2 + 24);
  if (*(v5 + 16))
  {

    v6 = sub_100041DE8(a1 & 0xFFFFFFFFFFFFLL);
    if (v7)
    {
      v8 = *(*(v5 + 56) + 8 * v6);

      sub_100333DF0(a2);

      return;
    }
  }

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v16 = v12;
    *v11 = 136315138;
    v13 = WiFiAddress.description.getter(a1 & 0xFFFFFFFFFFFFLL);
    v15 = sub_100002320(v13, v14, &v16);

    *(v11 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v9, v10, "Peer %s not present in database", v11, 0xCu);
    sub_100002A00(v12);
  }
}

void sub_100335918(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  swift_beginAccess();
  v7 = *(v3 + 24);
  if (*(v7 + 16))
  {

    v8 = sub_100041DE8(a1 & 0xFFFFFFFFFFFFLL);
    if (v9)
    {
      v10 = *(*(v7 + 56) + 8 * v8);

      a3(a2);

      return;
    }
  }

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v18 = v14;
    *v13 = 136315138;
    v15 = WiFiAddress.description.getter(a1 & 0xFFFFFFFFFFFFLL);
    v17 = sub_100002320(v15, v16, &v18);

    *(v13 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v11, v12, "Peer %s not present in database", v13, 0xCu);
    sub_100002A00(v14);
  }
}

uint64_t sub_100335A9C()
{
  v1 = *(v0 + 3);

  v2 = OBJC_IVAR____TtC12wifip2pdCore17NANMulticastPeers_logger;
  v3 = type metadata accessor for Logger();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_100335B68()
{
  result = type metadata accessor for Logger();
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

unint64_t sub_100335C24()
{
  result = qword_100596C68;
  if (!qword_100596C68)
  {
    type metadata accessor for MulticastPeer(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100596C68);
  }

  return result;
}

uint64_t (*sub_100335C7C(uint64_t (*result)(uint64_t *a1), unint64_t a2, uint64_t a3))(uint64_t *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);

LABEL_5:
    *v3 = v5;
    return sub_100335CFC;
  }

  __break(1u);
  return result;
}

uint64_t sub_100335D04(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_100315F8C(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v20[0] = v2 + 32;
  v20[1] = v4;
  v5 = _minimumMergeRunLength(_:)(v4);
  if (v5 >= v4)
  {
    if (v4 >= 2)
    {
      v9 = -1;
      v10 = 1;
      v11 = (v2 + 32);
      do
      {
        v12 = *(v2 + 32 + 8 * v10);
        v13 = v9;
        v14 = v11;
        do
        {
          v15 = *v14;
          if (*(v12 + 64) >= *(*v14 + 64))
          {
            break;
          }

          *v14 = v12;
          v14[1] = v15;
          --v14;
        }

        while (!__CFADD__(v13++, 1));
        ++v10;
        ++v11;
        --v9;
      }

      while (v10 != v4);
    }
  }

  else
  {
    v6 = v5;
    v7 = v4 >> 1;
    if (v4 >= 2)
    {
      type metadata accessor for MulticastPeer(0);
      v8 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) = v7;
    }

    else
    {
      v8 = _swiftEmptyArrayStorage;
    }

    v18[0] = (v8 & 0xFFFFFFFFFFFFFF8) + 32;
    v18[1] = v7;
    sub_100335E54(v18, v19, v20, v6);
    *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;
  }

  return specialized ContiguousArray._endMutation()();
}

uint64_t sub_100335E54(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v102 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = _swiftEmptyArrayStorage;
LABEL_124:
    v4 = *v102;
    if (*v102)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        goto LABEL_157;
      }

      goto LABEL_126;
    }

    goto LABEL_162;
  }

  v6 = 0;
  v7 = _swiftEmptyArrayStorage;
  while (1)
  {
    v8 = v6 + 1;
    if (v6 + 1 >= v5)
    {
      goto LABEL_19;
    }

    v9 = *(*(*a3 + 8 * v8) + 64);
    v10 = *(*(*a3 + 8 * v6) + 64);
    v11 = v6 + 2;
    v12 = v9;
    do
    {
      if (v5 == v11)
      {
        v8 = v5;
        if (v9 >= v10)
        {
          goto LABEL_19;
        }

        goto LABEL_11;
      }

      v13 = *(*(*a3 + 8 * v11) + 64);
      v14 = (v9 < v10) ^ (v13 >= v12);
      ++v11;
      v12 = v13;
    }

    while ((v14 & 1) != 0);
    v8 = v11 - 1;
    if (v9 >= v10)
    {
      goto LABEL_19;
    }

LABEL_11:
    if (v8 < v6)
    {
      goto LABEL_153;
    }

    if (v6 < v8)
    {
      v15 = 8 * v8 - 8;
      v16 = 8 * v6;
      v17 = v8;
      v18 = v6;
      do
      {
        if (v18 != --v17)
        {
          v19 = *a3;
          if (!*a3)
          {
            goto LABEL_159;
          }

          v20 = *(v19 + v16);
          *(v19 + v16) = *(v19 + v15);
          *(v19 + v15) = v20;
        }

        ++v18;
        v15 -= 8;
        v16 += 8;
      }

      while (v18 < v17);
      v5 = a3[1];
    }

LABEL_19:
    if (v8 < v5)
    {
      if (__OFSUB__(v8, v6))
      {
        goto LABEL_152;
      }

      if (v8 - v6 < a4)
      {
        if (__OFADD__(v6, a4))
        {
          goto LABEL_154;
        }

        if (v6 + a4 < v5)
        {
          v5 = v6 + a4;
        }

        if (v5 < v6)
        {
          goto LABEL_155;
        }

        if (v8 != v5)
        {
          v21 = *a3;
          v22 = *a3 + 8 * v8 - 8;
          v23 = v6 - v8;
          do
          {
            v24 = *(v21 + 8 * v8);
            v25 = v23;
            v26 = v22;
            do
            {
              v27 = *v26;
              if (*(v24 + 64) >= *(*v26 + 64))
              {
                break;
              }

              if (!v21)
              {
                goto LABEL_156;
              }

              *v26 = v24;
              v26[1] = v27;
              --v26;
            }

            while (!__CFADD__(v25++, 1));
            ++v8;
            v22 += 8;
            --v23;
          }

          while (v8 != v5);
          v8 = v5;
        }
      }
    }

    if (v8 < v6)
    {
      goto LABEL_149;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_10011707C(0, *(v7 + 2) + 1, 1, v7);
      v7 = result;
    }

    v30 = *(v7 + 2);
    v29 = *(v7 + 3);
    v31 = v30 + 1;
    if (v30 >= v29 >> 1)
    {
      result = sub_10011707C((v29 > 1), v30 + 1, 1, v7);
      v7 = result;
    }

    *(v7 + 2) = v31;
    v32 = &v7[16 * v30];
    *(v32 + 4) = v6;
    *(v32 + 5) = v8;
    v104 = v8;
    v33 = *v102;
    if (!*v102)
    {
LABEL_160:
      __break(1u);
      goto LABEL_161;
    }

    if (v30)
    {
      break;
    }

LABEL_3:
    v6 = v104;
    v5 = a3[1];
    if (v104 >= v5)
    {
      goto LABEL_124;
    }
  }

  while (1)
  {
    v34 = v31 - 1;
    if (v31 >= 4)
    {
      v39 = &v7[16 * v31 + 32];
      v40 = *(v39 - 64);
      v41 = *(v39 - 56);
      v45 = __OFSUB__(v41, v40);
      v42 = v41 - v40;
      if (v45)
      {
        goto LABEL_138;
      }

      v44 = *(v39 - 48);
      v43 = *(v39 - 40);
      v45 = __OFSUB__(v43, v44);
      v37 = v43 - v44;
      v38 = v45;
      if (v45)
      {
        goto LABEL_139;
      }

      v46 = &v7[16 * v31];
      v48 = *v46;
      v47 = *(v46 + 1);
      v45 = __OFSUB__(v47, v48);
      v49 = v47 - v48;
      if (v45)
      {
        goto LABEL_141;
      }

      v45 = __OFADD__(v37, v49);
      v50 = v37 + v49;
      if (v45)
      {
        goto LABEL_144;
      }

      if (v50 >= v42)
      {
        v68 = &v7[16 * v34 + 32];
        v70 = *v68;
        v69 = *(v68 + 1);
        v45 = __OFSUB__(v69, v70);
        v71 = v69 - v70;
        if (v45)
        {
          goto LABEL_148;
        }

        if (v37 < v71)
        {
          v34 = v31 - 2;
        }

        goto LABEL_77;
      }

      goto LABEL_56;
    }

    if (v31 == 3)
    {
      v35 = *(v7 + 4);
      v36 = *(v7 + 5);
      v45 = __OFSUB__(v36, v35);
      v37 = v36 - v35;
      v38 = v45;
LABEL_56:
      if (v38)
      {
        goto LABEL_140;
      }

      v51 = &v7[16 * v31];
      v53 = *v51;
      v52 = *(v51 + 1);
      v54 = __OFSUB__(v52, v53);
      v55 = v52 - v53;
      v56 = v54;
      if (v54)
      {
        goto LABEL_143;
      }

      v57 = &v7[16 * v34 + 32];
      v59 = *v57;
      v58 = *(v57 + 1);
      v45 = __OFSUB__(v58, v59);
      v60 = v58 - v59;
      if (v45)
      {
        goto LABEL_146;
      }

      if (__OFADD__(v55, v60))
      {
        goto LABEL_147;
      }

      if (v55 + v60 >= v37)
      {
        if (v37 < v60)
        {
          v34 = v31 - 2;
        }

        goto LABEL_77;
      }

      goto LABEL_70;
    }

    v61 = &v7[16 * v31];
    v63 = *v61;
    v62 = *(v61 + 1);
    v45 = __OFSUB__(v62, v63);
    v55 = v62 - v63;
    v56 = v45;
LABEL_70:
    if (v56)
    {
      goto LABEL_142;
    }

    v64 = &v7[16 * v34];
    v66 = *(v64 + 4);
    v65 = *(v64 + 5);
    v45 = __OFSUB__(v65, v66);
    v67 = v65 - v66;
    if (v45)
    {
      goto LABEL_145;
    }

    if (v67 < v55)
    {
      goto LABEL_3;
    }

LABEL_77:
    if (v34 - 1 >= v31)
    {
      break;
    }

    v72 = *a3;
    if (!*a3)
    {
      __break(1u);
LABEL_159:
      __break(1u);
      goto LABEL_160;
    }

    v109 = v34;
    v110 = v7;
    v106 = v34 - 1;
    v73 = *&v7[16 * v34 + 32];
    v74 = *&v7[16 * v34 + 40];
    v107 = *&v7[16 * v34 + 16];
    v108 = v74;
    v7 = (8 * v107);
    v75 = (v72 + 8 * v107);
    v76 = 8 * v73;
    v77 = (v72 + 8 * v73);
    v78 = 8 * v74;
    v79 = (v72 + 8 * v74);
    v80 = 8 * v73 - 8 * v107;
    v81 = 8 * v74 - 8 * v73;
    if (v80 < v81)
    {
      if (v75 != v33 || v77 <= v33)
      {
        memmove(v33, (v72 + 8 * v107), 8 * v73 - 8 * v107);
      }

      v82 = &v33[v80];
      v83 = v80 < 1;
      v4 = v110;
      v84 = v108;
      if (v83 || v78 <= v76)
      {
        v85 = v33;
        v90 = v75;
        v86 = v109;
        v87 = v107;
        goto LABEL_114;
      }

      v85 = v33;
      v86 = v109;
      v87 = v107;
      while (1)
      {
        v88 = *v77;
        if (*(*v77 + 64) >= *(*v85 + 64))
        {
          break;
        }

        v89 = v75 == v77;
        v77 += 8;
        if (!v89)
        {
          goto LABEL_91;
        }

LABEL_92:
        v75 += 8;
        if (v85 >= v82 || v77 >= v79)
        {
          v90 = v75;
          goto LABEL_114;
        }
      }

      v88 = *v85;
      v89 = v75 == v85;
      v85 += 8;
      if (v89)
      {
        goto LABEL_92;
      }

LABEL_91:
      *v75 = v88;
      goto LABEL_92;
    }

    if (v77 != v33 || v79 <= v33)
    {
      memmove(v33, (v72 + 8 * v73), 8 * v74 - 8 * v73);
    }

    v82 = &v33[v81];
    v86 = v109;
    if (v81 < 1 || v76 <= v7)
    {
      v85 = v33;
      v90 = v77;
      v4 = v110;
      v87 = v107;
      v84 = v108;
    }

    else
    {
      v4 = v110;
      v87 = v107;
      v84 = v108;
      do
      {
        v90 = v77 - 8;
        v79 -= 8;
        v91 = v82;
        while (1)
        {
          v92 = v79 + 8;
          v94 = *(v91 - 8);
          v91 -= 8;
          v93 = v94;
          if (*(v94 + 64) < *(*v90 + 64))
          {
            break;
          }

          if (v92 != v82)
          {
            *v79 = v93;
          }

          v79 -= 8;
          v82 = v91;
          if (v91 <= v33)
          {
            v82 = v91;
            v85 = v33;
            v90 = v77;
            goto LABEL_114;
          }
        }

        if (v92 != v77)
        {
          *v79 = *v90;
        }

        v85 = v33;
        if (v82 <= v33)
        {
          break;
        }

        v77 -= 8;
      }

      while (v75 < v90);
    }

LABEL_114:
    v95 = v82 - v85 + (v82 - v85 < 0 ? 7uLL : 0);
    if (v90 != v85 || v90 >= &v85[v95 & 0xFFFFFFFFFFFFFFF8])
    {
      memmove(v90, v85, 8 * (v95 >> 3));
    }

    if (v84 < v87)
    {
      goto LABEL_136;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_10016AD7C(v4);
    }

    if (v86 > *(v4 + 2))
    {
      goto LABEL_137;
    }

    v96 = &v4[16 * v106];
    *(v96 + 4) = v87;
    *(v96 + 5) = v84;
    result = sub_10016ACF0(v86);
    v7 = v4;
    v31 = *(v4 + 2);
    if (v31 <= 1)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
LABEL_136:
  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
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
  __break(1u);
LABEL_147:
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
LABEL_153:
  __break(1u);
LABEL_154:
  __break(1u);
LABEL_155:
  __break(1u);
LABEL_156:
  __break(1u);
LABEL_157:
  result = sub_10016AD7C(v7);
  v7 = result;
LABEL_126:
  v97 = *(v7 + 2);
  if (v97 < 2)
  {
  }

  while (*a3)
  {
    v98 = *&v7[16 * v97];
    v99 = *&v7[16 * v97 + 24];
    sub_1003365B8((*a3 + 8 * v98), (*a3 + 8 * *&v7[16 * v97 + 16]), (*a3 + 8 * v99), v4);
    if (v103)
    {
    }

    if (v99 < v98)
    {
      goto LABEL_150;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_10016AD7C(v7);
    }

    if (v97 - 2 >= *(v7 + 2))
    {
      goto LABEL_151;
    }

    v100 = &v7[16 * v97];
    *v100 = v98;
    *(v100 + 1) = v99;
    result = sub_10016ACF0(v97 - 1);
    v97 = *(v7 + 2);
    if (v97 <= 1)
    {
    }
  }

LABEL_161:
  __break(1u);
LABEL_162:
  __break(1u);
  return result;
}