uint64_t sub_10086CFA4()
{
  v1 = *(*v0 + 112);
  v3 = *v0;

  return _swift_task_switch(sub_10086D0A0, 0, 0);
}

uint64_t sub_10086D0A0()
{
  v1 = v0[11];
  sub_10001F1B0(v0[13], type metadata accessor for BeaconKeyServiceBuilder.WorkItem);

  v2 = v0[1];

  return v2();
}

uint64_t sub_10086D14C()
{
  v1 = *(v0 + 16);
  sub_1000BC4D4(&qword_1016972D8, &qword_1013AAC60);
  CheckedContinuation.resume(returning:)();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10086D1C4(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = *(*(type metadata accessor for BeaconIdentifier() - 8) + 64) + 15;
  v3[5] = swift_task_alloc();

  return _swift_task_switch(sub_10086D258, v2, 0);
}

uint64_t sub_10086D258()
{
  v1 = *(v0[4] + 152);
  v2 = *(v1 + 16);

  if (v2 && (v3 = sub_100038994(v0[2]), (v4 & 1) != 0))
  {
    v5 = *(*(v1 + 56) + 8 * v3);
  }

  else
  {
    v6 = v0[5];
    sub_1000295D4(v0[2], v6, type metadata accessor for BeaconIdentifier);
    v7 = type metadata accessor for BeaconKeyServiceBuilder.QueueWorker(0);
    v8 = *(v7 + 48);
    v9 = *(v7 + 52);
    v5 = swift_allocObject();
    swift_defaultActor_initialize();
    *(v5 + OBJC_IVAR____TtCC12searchpartyd23BeaconKeyServiceBuilderP33_8A37076506AEEBCEAD161117E4752B2811QueueWorker_queue) = _swiftEmptyArrayStorage;
    sub_10087EE70(v6, v5 + OBJC_IVAR____TtCC12searchpartyd23BeaconKeyServiceBuilderP33_8A37076506AEEBCEAD161117E4752B2811QueueWorker_identifier, type metadata accessor for BeaconIdentifier);
  }

  v0[6] = v5;

  return _swift_task_switch(sub_10086D380, v5, 0);
}

uint64_t sub_10086D380()
{
  v1 = v0[6];
  v2 = v0[4];
  sub_10086D524(v0[3]);

  return _swift_task_switch(sub_10086D3EC, v2, 0);
}

uint64_t sub_10086D3EC()
{
  v2 = v0[5];
  v1 = v0[6];

  v3 = v0[1];

  return v3();
}

uint64_t sub_10086D460(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for Logger();
  sub_100044B3C(v3, a2);
  v4 = sub_1000076D4(v3, a2);
  if (qword_101694A10 != -1)
  {
    swift_once();
  }

  v5 = sub_1000076D4(v3, qword_10177B520);
  v6 = *(*(v3 - 8) + 16);

  return v6(v4, v5, v3);
}

uint64_t sub_10086D524(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v18[-v6];
  v8 = sub_1000BC4D4(&qword_1016ABF38, &qword_1013BFE10);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v18[-v10];
  v12 = OBJC_IVAR____TtCC12searchpartyd23BeaconKeyServiceBuilderP33_8A37076506AEEBCEAD161117E4752B2811QueueWorker_queue;
  swift_beginAccess();
  v13 = *(*(v2 + v12) + 16);
  swift_beginAccess();
  sub_1000295D4(a1, v11, type metadata accessor for BeaconKeyServiceBuilder.WorkItem);
  sub_100A05428(0, 0, v11);
  result = swift_endAccess();
  if (!v13)
  {
    v15 = type metadata accessor for TaskPriority();
    (*(*(v15 - 8) + 56))(v7, 1, 1, v15);
    v16 = sub_10087E3E8(&qword_1016ABF40, type metadata accessor for BeaconKeyServiceBuilder.QueueWorker);
    v17 = swift_allocObject();
    v17[2] = v2;
    v17[3] = v16;
    v17[4] = v2;
    swift_retain_n();
    sub_100A838D4(0, 0, v7, &unk_1013BFE20, v17);
  }

  return result;
}

uint64_t sub_10086D740()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100014650;

  return sub_10086D7D0();
}

uint64_t sub_10086D7D0()
{
  v1[8] = v0;
  v2 = *(*(sub_1000BC4D4(&qword_1016ABF30, &qword_1013BFE08) - 8) + 64) + 15;
  v1[9] = swift_task_alloc();
  v3 = type metadata accessor for BeaconKeyServiceBuilder.WorkItem(0);
  v1[10] = v3;
  v4 = *(v3 - 8);
  v1[11] = v4;
  v5 = *(v4 + 64) + 15;
  v1[12] = swift_task_alloc();

  return _swift_task_switch(sub_10086D8C8, v0, 0);
}

uint64_t sub_10086D8C8()
{
  v32 = v0;
  v1 = v0[8];
  v2 = OBJC_IVAR____TtCC12searchpartyd23BeaconKeyServiceBuilderP33_8A37076506AEEBCEAD161117E4752B2811QueueWorker_queue;
  v0[13] = OBJC_IVAR____TtCC12searchpartyd23BeaconKeyServiceBuilderP33_8A37076506AEEBCEAD161117E4752B2811QueueWorker_queue;
  swift_beginAccess();
  v3 = *(v1 + v2);
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = v0[12];
    v6 = v0[10];
    sub_1000295D4(v3 + ((*(v0[11] + 80) + 32) & ~*(v0[11] + 80)) + *(v0[11] + 72) * (v4 - 1), v5, type metadata accessor for BeaconKeyServiceBuilder.WorkItem);
    v7 = (v5 + *(v6 + 20));
    v8 = v7[1];
    v28 = (*v7 + **v7);
    v9 = (*v7)[1];
    v10 = swift_task_alloc();
    v0[14] = v10;
    *v10 = v0;
    v10[1] = sub_10086DC64;

    return v28();
  }

  else
  {
    if (qword_101694A08 != -1)
    {
      swift_once();
    }

    v12 = v0[8];
    v13 = type metadata accessor for Logger();
    sub_1000076D4(v13, qword_1016ABAC0);

    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = v0[8];
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v29 = v18;
      *v17 = 136315138;
      v19 = v16 + OBJC_IVAR____TtCC12searchpartyd23BeaconKeyServiceBuilderP33_8A37076506AEEBCEAD161117E4752B2811QueueWorker_identifier;
      type metadata accessor for UUID();
      sub_10087E3E8(&qword_101696930, &type metadata accessor for UUID);
      v30 = dispatch thunk of CustomStringConvertible.description.getter();
      v31 = v20;
      v21._countAndFlagsBits = 47;
      v21._object = 0xE100000000000000;
      String.append(_:)(v21);
      v22 = v19 + *(type metadata accessor for BeaconIdentifier() + 20);
      v23._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v23);

      v24 = sub_1000136BC(v30, v31, &v29);

      *(v17 + 4) = v24;
      _os_log_impl(&_mh_execute_header, v14, v15, "process queue for %s -- no more WorkItems", v17, 0xCu);
      sub_100007BAC(v18);
    }

    v25 = v0[12];
    v26 = v0[9];

    v27 = v0[1];

    return v27();
  }
}

uint64_t sub_10086DC64()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v4 = *v1;
  *(*v1 + 120) = v0;

  v5 = *(v2 + 64);
  if (v0)
  {
    v6 = sub_10086E2AC;
  }

  else
  {
    v6 = sub_10086DD90;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10086DD90()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[9];
  v4 = v0[10];
  v5 = v0[8];
  swift_beginAccess();
  sub_1008653D0(v3);
  sub_10000B3A8(v3, &qword_1016ABF30, &qword_1013BFE08);
  swift_endAccess();
  v6 = (v2 + *(v4 + 24));
  v7 = v6[1];
  v11 = (*v6 + **v6);
  v8 = (*v6)[1];
  v9 = swift_task_alloc();
  v0[16] = v9;
  *v9 = v0;
  v9[1] = sub_10086DEDC;

  return v11();
}

uint64_t sub_10086DEDC()
{
  v1 = *(*v0 + 128);
  v2 = *(*v0 + 64);
  v4 = *v0;

  return _swift_task_switch(sub_10086DFEC, v2, 0);
}

uint64_t sub_10086DFEC()
{
  if (*(*(v0[8] + v0[13]) + 16))
  {
    v1 = swift_task_alloc();
    v0[17] = v1;
    *v1 = v0;
    v1[1] = sub_10086E0F4;
    v2 = v0[8];

    return sub_10086D7D0();
  }

  else
  {
    sub_10001F1B0(v0[12], type metadata accessor for BeaconKeyServiceBuilder.WorkItem);
    v4 = v0[12];
    v5 = v0[9];

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_10086E0F4()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v4 = *v1;
  *(*v1 + 144) = v0;

  v5 = *(v2 + 64);
  if (v0)
  {
    v6 = sub_10086E344;
  }

  else
  {
    v6 = sub_10086E220;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10086E220()
{
  sub_10001F1B0(v0[12], type metadata accessor for BeaconKeyServiceBuilder.WorkItem);
  v1 = v0[12];
  v2 = v0[9];

  v3 = v0[1];

  return v3();
}

uint64_t sub_10086E2AC()
{
  v1 = v0[15];
  v2 = v0[9];
  sub_10001F1B0(v0[12], type metadata accessor for BeaconKeyServiceBuilder.WorkItem);

  v3 = v0[1];

  return v3();
}

uint64_t sub_10086E344()
{
  v1 = v0[18];
  v2 = v0[9];
  sub_10001F1B0(v0[12], type metadata accessor for BeaconKeyServiceBuilder.WorkItem);

  v3 = v0[1];

  return v3();
}

uint64_t sub_10086E3DC()
{
  sub_10001F1B0(v0 + OBJC_IVAR____TtCC12searchpartyd23BeaconKeyServiceBuilderP33_8A37076506AEEBCEAD161117E4752B2811QueueWorker_identifier, type metadata accessor for BeaconIdentifier);
  v1 = *(v0 + OBJC_IVAR____TtCC12searchpartyd23BeaconKeyServiceBuilderP33_8A37076506AEEBCEAD161117E4752B2811QueueWorker_queue);

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_10086E468()
{
  result = type metadata accessor for BeaconIdentifier();
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

unint64_t sub_10086E558()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    result = sub_10086E5DC();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_10086E5DC()
{
  result = qword_1016ABDA0;
  if (!qword_1016ABDA0)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_1016ABDA0);
  }

  return result;
}

uint64_t sub_10086E674()
{
  result = type metadata accessor for BeaconIdentifier();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10086E6E8(int *a1)
{
  v5 = (a1 + *a1);
  v2 = a1[1];
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10003633C;

  return v5();
}

uint64_t sub_10086E7D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 16) = a1;
  v11 = swift_task_alloc();
  *(v6 + 24) = v11;
  *v11 = v6;
  v11[1] = sub_1003A1238;

  return sub_10086E8A0(a3, a4, 0, a5, a6, 1);
}

uint64_t sub_10086E8A0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 728) = v6;
  *(v7 + 720) = a6;
  *(v7 + 712) = a5;
  *(v7 + 704) = a4;
  *(v7 + 1357) = a3;
  *(v7 + 696) = a2;
  *(v7 + 688) = a1;
  v8 = type metadata accessor for BeaconKeyServiceBuilder.FileSwapInfo(0);
  *(v7 + 736) = v8;
  v9 = *(v8 - 8);
  *(v7 + 744) = v9;
  v10 = *(v9 + 64) + 15;
  *(v7 + 752) = swift_task_alloc();
  v11 = type metadata accessor for KeyGenerationBeaconInfo();
  *(v7 + 760) = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  *(v7 + 768) = swift_task_alloc();
  v13 = *(*(sub_1000BC4D4(&qword_1016ABE88, &unk_1013BFCF0) - 8) + 64) + 15;
  *(v7 + 776) = swift_task_alloc();
  v14 = type metadata accessor for DirectorySequence();
  *(v7 + 784) = v14;
  v15 = *(v14 - 8);
  *(v7 + 792) = v15;
  v16 = *(v15 + 64) + 15;
  *(v7 + 800) = swift_task_alloc();
  v17 = *(*(sub_1000BC4D4(&unk_101696AC0, &qword_101390A60) - 8) + 64) + 15;
  *(v7 + 808) = swift_task_alloc();
  *(v7 + 816) = swift_task_alloc();
  *(v7 + 824) = swift_task_alloc();
  v18 = type metadata accessor for UUID();
  *(v7 + 832) = v18;
  v19 = *(v18 - 8);
  *(v7 + 840) = v19;
  v20 = *(v19 + 64) + 15;
  *(v7 + 848) = swift_task_alloc();
  v21 = type metadata accessor for URL();
  *(v7 + 856) = v21;
  v22 = *(v21 - 8);
  *(v7 + 864) = v22;
  v23 = *(v22 + 64) + 15;
  *(v7 + 872) = swift_task_alloc();
  *(v7 + 880) = swift_task_alloc();
  *(v7 + 888) = swift_task_alloc();

  return _swift_task_switch(sub_10086EB5C, 0, 0);
}

uint64_t sub_10086EB5C()
{
  v164 = v0;
  v1 = (v0[87] + *(v0[95] + 24));
  v2 = *v1;
  v0[112] = *v1;
  v3 = v1[1];
  v0[113] = v3;
  v4 = v1[2];
  v0[114] = v4;
  v5 = v1[3];
  v0[115] = v5;
  v6 = v1[4];
  v0[116] = v6;
  v7 = v1[5];
  v0[117] = v7;
  if (v3 >> 60 != 15)
  {
    v9 = v0[106];
    v10 = v0[105];
    v159 = v0;
    v11 = v0[104];
    v149 = v0[111];
    v151 = v0[103];
    v12 = v0;
    v13 = v5;
    v14 = v12[100];
    v153 = v159[99];
    v156 = v159[98];
    log = v11;
    v147 = v159[86];
    v15 = objc_allocWithZone(NSProcessInfo);
    sub_100017D5C(v2, v3);
    v155 = v13;
    sub_100017D5C(v4, v13);
    v144 = v6;
    v145 = v7;
    sub_10002E98C(v6, v7);
    v16 = [v15 init];
    v17 = v3;
    v18 = [v16 processIdentifier];

    _StringGuts.grow(_:)(22);

    v162 = 46;
    v163 = 0xE100000000000000;
    UUID.init()();
    v143 = v2;
    v19 = UUID.uuidString.getter();
    v20 = v4;
    v22 = v21;
    (*(v10 + 8))(v9, log);
    v23._countAndFlagsBits = v19;
    v23._object = v22;
    String.append(_:)(v23);

    v24._object = 0x8000000101361B30;
    v24._countAndFlagsBits = 0xD000000000000011;
    String.append(_:)(v24);
    *(v159 + 338) = v18;
    v25._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v25);

    URL.appendingPathComponent(_:)();

    v26 = [objc_opt_self() defaultManager];
    NSFileManager.flatSequence(at:includingPropertiesForKeys:)();
    DirectorySequence.next()();

    (*(v153 + 8))(v14, v156);
    v27 = sub_100880D44(v151);
    v157 = v20;
    v154 = v17;
    v43 = v159[108];
    v44 = v159[107];
    v45 = v159[103];
    v46 = v159[102];
    if (v29)
    {
      v47 = 0;
    }

    else
    {
      v47 = v27;
    }

    if (v29)
    {
      v48 = 0;
    }

    else
    {
      v48 = v28;
    }

    sub_1000D2A70(v159[103], v159[102], &unk_101696AC0, &qword_101390A60);
    if ((*(v43 + 48))(v46, 1, v44) == 1)
    {
      sub_10000B3A8(v159[102], &unk_101696AC0, &qword_101390A60);
      v49 = 1;
    }

    else
    {
      v50 = v159[110];
      v51 = v159[107];
      v52 = v159[97];
      v53 = v159[92];
      v54 = *(v159[108] + 32);
      v54(v50, v159[102], v51);
      v54(v52, v50, v51);
      v49 = 0;
      v55 = (v52 + *(v53 + 20));
      *v55 = v47;
      v55[1] = v48;
    }

    v56 = v13;
    v57 = v159[89];
    v58 = v159[88];
    v59 = *(v159 + 1357);
    (*(v159[93] + 56))(v159[97], v49, 1, v159[92]);
    v60 = sub_100880F5C(v47, v48, v58, v57);
    v63 = v60;
    v64 = v61;
    if (v59)
    {
      v65 = v145;
      if (v145 >> 60 == 15)
      {
        __break(1u);
        return _swift_task_switch(v60, v65, v62);
      }

      v66 = v159[89];
      v67 = v159[88];
      sub_10002E98C(v144, v145);
      v68 = sub_100881154(v67, v66, v63, v64);
      v70 = v69;
      v63 = v144;
      v64 = v145;
      goto LABEL_31;
    }

    v71 = v61 - v60;
    if (v61 >= v60)
    {
      v72 = v20;
      if ((v61 - v60) >= 0)
      {
LABEL_23:
        v73 = v71 + 1;
        if (__OFADD__(v71, 1))
        {
          goto LABEL_50;
        }

        sub_100017D5C(v72, v13);
        if (v73 <= 1344)
        {
          goto LABEL_29;
        }

        if (qword_101694A00 == -1)
        {
LABEL_26:
          v74 = v159[96];
          v75 = v159[87];
          v76 = type metadata accessor for Logger();
          sub_1000076D4(v76, qword_1016ABAA8);
          sub_1000295D4(v75, v74, type metadata accessor for KeyGenerationBeaconInfo);
          v77 = Logger.logObject.getter();
          v78 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v77, v78))
          {
            v79 = v159[104];
            v80 = v159[96];
            v150 = v159[89];
            v148 = v159[88];
            v81 = swift_slowAlloc();
            v161 = swift_slowAlloc();
            *v81 = 136447235;
            v159[82] = v63;
            v159[83] = v64;
            v159[75] = 0;
            v159[76] = 0xE000000000000000;
            _print_unlocked<A, B>(_:_:)();
            v152 = v78;
            v82._countAndFlagsBits = 3026478;
            v82._object = 0xE300000000000000;
            String.append(_:)(v82);
            _print_unlocked<A, B>(_:_:)();
            v83 = sub_1000136BC(v159[75], v159[76], &v161);

            *(v81 + 4) = v83;
            *(v81 + 12) = 2160;
            *(v81 + 14) = 1752392040;
            *(v81 + 22) = 2081;
            sub_10087E3E8(&qword_101696930, &type metadata accessor for UUID);
            v162 = dispatch thunk of CustomStringConvertible.description.getter();
            v163 = v84;
            v85._countAndFlagsBits = 47;
            v85._object = 0xE100000000000000;
            String.append(_:)(v85);
            v86 = v80 + *(type metadata accessor for BeaconIdentifier() + 20);
            v87._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
            String.append(_:)(v87);

            v89 = v162;
            v88 = v163;
            sub_10001F1B0(v80, type metadata accessor for KeyGenerationBeaconInfo);
            v90 = sub_1000136BC(v89, v88, &v161);

            *(v81 + 24) = v90;
            *(v81 + 32) = 2082;
            v159[84] = v148;
            v159[85] = v150;
            v159[77] = 0;
            v159[78] = 0xE000000000000000;
            _print_unlocked<A, B>(_:_:)();
            v91._countAndFlagsBits = 3026478;
            v91._object = 0xE300000000000000;
            String.append(_:)(v91);
            _print_unlocked<A, B>(_:_:)();
            v92 = sub_1000136BC(v159[77], v159[78], &v161);

            *(v81 + 34) = v92;
            *(v81 + 42) = 2082;
            *(v81 + 44) = sub_1000136BC(0x7972616D6972702ELL, 0xE800000000000000, &v161);
            _os_log_impl(&_mh_execute_header, v77, v152, "Large hole %{public}s would be created for %{private,mask.hash}s: %{public}s - %{public}s", v81, 0x34u);
            swift_arrayDestroy();

            v56 = v13;

            v47 = 0;
            v48 = 0;
            v70 = v159[89];
            v68 = v159[88];
            v63 = v20;
LABEL_30:
            v64 = v56;
LABEL_31:
            v159[119] = v64;
            v159[118] = v63;
            v94 = sub_1008815E8(v47, v48, v68, v70);
            v159[120] = v94;
            v95 = *(v94 + 2);
            v159[121] = v95;
            if (!v95)
            {

              if (qword_101694A00 == -1)
              {
LABEL_35:
                v106 = type metadata accessor for Logger();
                sub_1000076D4(v106, qword_1016ABAA8);
                v107 = Logger.logObject.getter();
                v108 = static os_log_type_t.info.getter();
                v109 = os_log_type_enabled(v107, v108);
                v110 = v159[111];
                v111 = v159[108];
                v112 = v159[107];
                v113 = v159[103];
                v114 = v159[97];
                if (v109)
                {
                  v115 = swift_slowAlloc();
                  *v115 = 0;
                  _os_log_impl(&_mh_execute_header, v107, v108, "No work to be done", v115, 2u);
                  v56 = v155;
                }

                sub_100883574(v143, v154, v157, v56, v144, v145);
                sub_100016590(v63, v64);
                sub_10000B3A8(v114, &qword_1016ABE88, &unk_1013BFCF0);
                sub_10000B3A8(v113, &unk_101696AC0, &qword_101390A60);
                (*(v111 + 8))(v110, v112);
                v116 = v159[111];
                v117 = v159[110];
                v118 = v159[109];
                v119 = v159[106];
                v120 = v159[103];
                v121 = v159[102];
                v122 = v159[101];
                v123 = v159[100];
                v124 = v159[97];
                v125 = v159[96];
                v158 = v159[94];

                v40 = v159[1];
                v41 = v159[121] != 0;
                goto LABEL_4;
              }

LABEL_51:
              swift_once();
              goto LABEL_35;
            }

            v96 = v159[108];
            v159[122] = 0;
            if (*(v94 + 2))
            {
              v97 = v159[111];
              v98 = v159[109];
              v99 = v159[107];
              v100 = v159[103];
              v101 = v159[101];
              v102 = v159[90];
              v104 = *(v94 + 4);
              v103 = *(v94 + 5);
              v105 = *(v96 + 16);
              v159[123] = v105;
              v159[124] = (v96 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
              v105(v98, v97, v99);
              sub_1000D2A70(v100, v101, &unk_101696AC0, &qword_101390A60);
              v159[125] = sub_100873960(v98, v104, v103, v101, v102);
              if (v104 < 2)
              {
                v129 = 0;
                v130 = 0;
                v131 = 0;
                v132 = 0xF000000000000000;
              }

              else
              {
                v126 = sub_1009C475C(v159[87], v104, *(v159[91] + 144));
                v130 = v126;
                v131 = v127;
                v132 = v128;
                if (v128 >> 60 == 15)
                {
                  v129 = 0;
                }

                else
                {
                  v129 = v126;
                }
              }

              v159[129] = v132;
              v159[128] = v131;
              v159[127] = v130;
              v159[126] = v129;
              v133 = v159[113];
              v134 = v159[112];
              sub_100017D5C(v134, v133);
              sub_100017D5C(v134, v133);
              sub_10002EA98(57, v134, v133, v159 + 67);
              sub_100496F68(v159[67], v159[68], v159 + 71);
              v135 = v159[72];
              if (v135 >> 60 == 15)
              {
                return _assertionFailure(_:_:file:line:flags:)();
              }

              v136 = v159[119];
              v137 = v159[118];
              v138 = v159[113];
              v139 = v159[112];
              v140 = v159[71];
              sub_100017D5C(v137, v136);
              sub_100429BEC(v130, v131, v132);
              sub_10099B5CC(v139, v138, v140, v135, v137, v136, v130, v131, (v159 + 20), v132, v104);
              v159[130] = 0;
              v141 = *(v159 + 11);
              *(v159 + 131) = *(v159 + 10);
              *(v159 + 133) = v141;
              v142 = *(v159 + 13);
              *(v159 + 135) = *(v159 + 12);
              *(v159 + 137) = v142;
              v159[139] = v159[28];
              sub_100429BEC(v130, v131, v132);
              sub_100429C24((v159 + 20), (v159 + 29));
              v60 = sub_10086FC18;
              v65 = 0;
              v62 = 0;

              return _swift_task_switch(v60, v65, v62);
            }

            __break(1u);
LABEL_50:
            __break(1u);
            goto LABEL_51;
          }

          v93 = v159[96];

          sub_10001F1B0(v93, type metadata accessor for KeyGenerationBeaconInfo);
          v47 = 0;
          v48 = 0;
LABEL_29:
          v70 = v159[89];
          v68 = v159[88];
          v63 = v72;
          goto LABEL_30;
        }

LABEL_54:
        swift_once();
        goto LABEL_26;
      }
    }

    else
    {
      v72 = v20;
      if ((v60 - v61) >= 0)
      {
        v71 = v61 - v60;
        goto LABEL_23;
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_54;
  }

  sub_100883394();
  swift_allocError();
  *v8 = 1;
  swift_willThrow();
  v30 = v0[111];
  v31 = v0[110];
  v32 = v0[109];
  v33 = v0[106];
  v34 = v0[103];
  v35 = v0[102];
  v36 = v0[101];
  v37 = v0[100];
  v38 = v0[97];
  v39 = v0[96];
  v160 = v0[94];

  v40 = v0[1];
  v41 = 0;
LABEL_4:

  return v40(v41);
}

uint64_t sub_10086FC18()
{
  if (static Task<>.isCancelled.getter())
  {
    v1 = *(v0 + 1096);
    v2 = *(v0 + 1040);
    v3 = *(v0 + 1008);
    *(v0 + 1328) = *(v0 + 1024);
    *(v0 + 1312) = v3;
    *(v0 + 1296) = *(v0 + 1104);
    *(v0 + 1288) = v1;
    *(v0 + 1280) = v2;
    v4 = sub_1008723A4;
  }

  else
  {
    v5 = *(v0 + 1112);
    v6 = *(v0 + 1104);
    v7 = *(v0 + 1096);
    v8 = *(v0 + 1040);
    v9 = *(v0 + 1032);
    v10 = *(v0 + 1024);
    v11 = *(v0 + 1016);
    v12 = *(v0 + 1008);
    *(v0 + 1168) = v7;
    *(v0 + 1160) = v6;
    *(v0 + 1152) = v5;
    *(v0 + 1144) = v12;
    *(v0 + 1136) = v11;
    *(v0 + 1128) = v10;
    *(v0 + 1120) = v9;
    v13 = *(v0 + 1064);
    *(v0 + 304) = *(v0 + 1048);
    *(v0 + 320) = v13;
    *(v0 + 336) = *(v0 + 1080);
    *(v0 + 352) = v7;
    *(v0 + 360) = v6;
    *(v0 + 368) = v5;
    sub_100429C24(v0 + 304, v0 + 16);
    sub_100017D5C(v6, v5);
    sub_100017D5C(v6, v5);
    if (qword_101694FA8 != -1)
    {
      swift_once();
    }

    *(v0 + 520) = 0x7365547265646E75;
    *(v0 + 528) = 0xE900000000000074;
    SynchronousCache.cachedValue<A>(key:computeBlock:)();
    v14 = sub_100A7563C(v6, v5, 1);
    *(v0 + 1176) = v14;
    *(v0 + 1184) = v15;
    if (v8)
    {
      sub_100016590(v6, v5);
      sub_100016590(v6, v5);
      sub_100429C80(v0 + 304);
      *(v0 + 1272) = v5;
      *(v0 + 1264) = v6;
      *(v0 + 1256) = v7;
      static os_log_type_t.error.getter();
      if (qword_101694BE0 != -1)
      {
        swift_once();
      }

      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_101385D80;
      v24 = _convertErrorToNSError(_:)();
      *(v23 + 56) = sub_100008BB8(0, &qword_10169E020, NSError_ptr);
      *(v23 + 64) = sub_100009D18(&qword_1016BC310, &qword_10169E020, NSError_ptr);
      *(v23 + 32) = v24;
      os_log(_:dso:log:_:_:)();

      v4 = sub_100871668;
    }

    else
    {
      v16 = v14;
      v17 = v15;
      v18 = String.utf8Data.getter();
      v20 = v19;
      v21 = sub_100A79CBC(v16, v17, v18, v19, 72);
      sub_100495DF4(v21, v22, (v0 + 552));
      v28 = *(v0 + 1056);
      sub_100016590(v18, v20);
      v74 = *(v0 + 552);
      v29 = *(v0 + 560);
      if (v28 >> 60 == 15)
      {
        v30 = *(v0 + 1072);
        v31 = *(v0 + 1064);
        sub_100017D5C(v74, *(v0 + 560));
        v32 = sub_100A7A194(v31, v30);
        v36 = v29;
        v39 = sub_100A7A73C(v32, 0, v74, v29);
        CCECCryptorRelease();
        sub_100016590(v74, v36);
        v40 = sub_100A7829C(v39, 0);
        v42 = v41;
        sub_100017D5C(v40, v41);
        v70 = sub_10049C0AC(v40, v42);
        v71 = v48;
        CCECCryptorRelease();
        v25 = sub_100016590(v40, v42);
        v49 = *(v0 + 1056);
        v50 = *(v0 + 1048);
      }

      else
      {
        v33 = *(v0 + 1056);
        v34 = *(v0 + 1048);
        sub_10002E98C(v34, v33);
        sub_100017D5C(v74, v29);
        v35 = sub_100A7A194(v34, v33);
        v37 = sub_100A7A73C(v35, 1, v74, v29);
        v38 = v29;
        v43 = v37;
        v44 = v38;
        CCECCryptorRelease();
        sub_100016590(v74, v44);
        v73 = v43;
        v45 = sub_100A7829C(v43, 1);
        v47 = v46;
        v72 = v45;
        v64 = sub_100A7829C(v73, 0);
        v65 = v56;
        sub_100017D5C(v72, v47);
        v63 = v47;
        v67 = sub_10049BD68(v72, v47);
        v69 = v57;
        sub_100017D5C(v64, v65);
        v70 = sub_10049C0AC(v64, v65);
        v71 = v58;
        v59 = *(v0 + 1056);
        v62 = *(v0 + 1048);
        CCECCryptorRelease();
        sub_100016590(v64, v65);
        sub_100016590(v72, v63);
        v25 = sub_100006654(v62, v59);
        v36 = v44;
        v50 = v67;
        v49 = v69;
      }

      v66 = v50;
      v68 = v49;
      *(v0 + 1200) = v49;
      *(v0 + 1192) = v50;
      *(v0 + 1208) = v71;
      *(v0 + 1216) = v70;
      *(v0 + 1224) = v7 + 1;
      if (v7 == -1)
      {
        __break(1u);
        return _swift_task_switch(v25, v26, v27);
      }

      sub_100017D5C(v16, v17);
      sub_100016590(v6, v5);
      v51 = String.utf8Data.getter();
      v53 = v52;
      v54 = sub_100A79CBC(v16, v17, v51, v52, 32);
      sub_1004A4714(v54, v55, (v0 + 504));
      *(v0 + 1232) = 0;
      sub_100016590(v51, v53);
      v60 = *(v0 + 512);
      *(v0 + 1240) = *(v0 + 504);
      *(v0 + 1248) = v60;
      sub_100017D5C(v70, v71);
      sub_10002E98C(v66, v68);
      sub_100006654(v66, v68);
      sub_100016590(v70, v71);
      sub_100016590(v16, v17);
      sub_100016590(v74, v36);
      sub_100429C80(v0 + 304);
      sub_100016590(v6, v5);
      v4 = sub_100870494;
    }
  }

  v25 = v4;
  v26 = 0;
  v27 = 0;

  return _swift_task_switch(v25, v26, v27);
}

void sub_100870494()
{
  if (*(v0 + 1168) <= *(v0 + 712))
  {
    v31 = *(v0 + 1232);
    v32 = *(v0 + 1216);
    v33 = *(v0 + 1208);
    v34 = *(v0 + 1160);
    v35 = *(v0 + 1152);
    sub_100429C08(*(v0 + 1136), *(v0 + 1128), *(v0 + 1120));
    sub_100017D5C(v34, v35);
    v36 = sub_100A7A194(v32, v33);
    if (v31)
    {
      static os_log_type_t.error.getter();
      if (qword_101694BE0 != -1)
      {
        swift_once();
      }

      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v37 = swift_allocObject();
      *(v37 + 16) = xmmword_101385D80;
      *(v0 + 632) = v31;
      swift_errorRetain();
      sub_1000BC4D4(&qword_101696960, &unk_10138B220);
      v38 = String.init<A>(describing:)();
      v40 = v39;
      *(v37 + 56) = &type metadata for String;
      *(v37 + 64) = sub_100008C00();
      *(v37 + 32) = v38;
      *(v37 + 40) = v40;
      os_log(_:dso:log:_:_:)();

      sub_1001BAF88();
      v41 = swift_allocError();
      *v42 = 0;
      swift_willThrow();

      goto LABEL_8;
    }

    v15 = sub_100A7829C(v36, 0);
    v67 = v66;
    v18 = CCECCryptorRelease();
    v68 = v67 >> 62;
    if ((v67 >> 62) > 1)
    {
      if (v68 != 2)
      {
        v90 = 0;
        goto LABEL_52;
      }

      v77 = *(v15 + 16);
      v76 = *(v15 + 24);
      v78 = __OFSUB__(v76, v77);
      v69 = v76 - v77;
      if (v78)
      {
        __break(1u);
        goto LABEL_25;
      }
    }

    else if (v68)
    {
      LODWORD(v69) = HIDWORD(v15) - v15;
      if (__OFSUB__(HIDWORD(v15), v15))
      {
LABEL_63:
        __break(1u);
        goto LABEL_64;
      }

      v69 = v69;
    }

    else
    {
      v69 = BYTE6(v67);
    }

    if (v69 == 28)
    {
      v88 = *(v0 + 1000);
      v89 = objc_autoreleasePoolPush();
      sub_1008764E8(v88, v15, v67, v0 + 648, sub_1006073B0, sub_100DF0094);
      *(v0 + 1344) = 0;
      v131 = *(v0 + 1248);
      v132 = *(v0 + 1240);
      v133 = *(v0 + 1216);
      v134 = *(v0 + 1208);
      v184 = *(v0 + 1192);
      v189 = *(v0 + 1200);
      v135 = *(v0 + 1160);
      v136 = *(v0 + 1152);
      objc_autoreleasePoolPop(v89);
      sub_100016590(v135, v136);
      sub_100006654(v132, v131);
      sub_100016590(v133, v134);
      sub_100006654(v184, v189);
      sub_100016590(v15, v67);
      v137 = sub_1008730E0;
      goto LABEL_45;
    }

    if (v68 == 2)
    {
      v139 = *(v15 + 16);
      v138 = *(v15 + 24);
      v90 = v138 - v139;
      if (!__OFSUB__(v138, v139))
      {
        goto LABEL_52;
      }

      __break(1u);
    }

    else if (v68 == 1)
    {
      if (__OFSUB__(HIDWORD(v15), v15))
      {
LABEL_64:
        __break(1u);
_swift_task_switch:
        _swift_task_switch(v18, v19, v20);
        return;
      }

      v90 = HIDWORD(v15) - v15;
      goto LABEL_52;
    }

    v90 = BYTE6(v67);
LABEL_52:
    sub_100018350();
    v41 = swift_allocError();
    *v140 = 28;
    *(v140 + 8) = v90;
    *(v140 + 16) = 0;
    swift_willThrow();
    sub_100016590(v15, v67);
LABEL_8:
    _StringGuts.grow(_:)(35);
    *(v0 + 584) = 0;
    *(v0 + 592) = 0xE000000000000000;
    v43._countAndFlagsBits = 0xD000000000000021;
    v43._object = 0x800000010134CB30;
    String.append(_:)(v43);
    *(v0 + 640) = v41;
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    _print_unlocked<A, B>(_:_:)();
    v44 = *(v0 + 584);
    v45 = *(v0 + 592);
    goto LABEL_9;
  }

  v3 = (v0 + 1048);
  v4 = *(v0 + 1064);
  *(v0 + 88) = *(v0 + 1048);
  v5 = *(v0 + 1248);
  v6 = *(v0 + 1240);
  v7 = *(v0 + 1224);
  v8 = *(v0 + 1216);
  v9 = *(v0 + 1208);
  v186 = *(v0 + 1200);
  v10 = *(v0 + 1192);
  v11 = *(v0 + 1160);
  v12 = *(v0 + 1152);
  v13 = *(v0 + 1080);
  *(v0 + 104) = v4;
  *(v0 + 120) = v13;
  *(v0 + 136) = v7;
  *(v0 + 144) = *(v0 + 1176);
  sub_100429C80(v0 + 88);
  sub_100016590(v11, v12);
  sub_100006654(v6, v5);
  sub_100016590(v8, v9);
  sub_100006654(v10, v186);
  v14 = *(v0 + 1232);
  v15 = *(v0 + 1144);
  v16 = *(v0 + 1136);
  v2 = *(v0 + 1128);
  v1 = *(v0 + 1120);
  v17 = *(v0 + 1000);
  v18 = sub_100876778();
  v185 = v14;
  if (!v14)
  {
    v176 = v16;
    v46 = *(v0 + 1000);
    v47 = *(v46 + qword_1016AC3B0);
    v48 = *(v46 + qword_1016AC3B8);
    if (v48 < v47)
    {
      __break(1u);
      goto LABEL_61;
    }

    v49 = *(v0 + 992);
    v50 = *(v0 + 776);
    v51 = *(v0 + 752);
    v52 = *(v0 + 736);
    (*(v0 + 984))(v51, *(v0 + 888), *(v0 + 856));
    v53 = (v51 + *(v52 + 20));
    *v53 = v47;
    v53[1] = v48;
    v18 = sub_100881B1C(v50, v51);
    if (v1 >> 60 == 15)
    {
      v70 = *(v0 + 1032);
      v71 = *(v0 + 1024);
      v72 = *(v0 + 1016);
      v73 = *(v0 + 1000);
      sub_10001F1B0(*(v0 + 752), type metadata accessor for BeaconKeyServiceBuilder.FileSwapInfo);
      sub_100429C80(v0 + 160);

      v74 = v72;
      v75 = v71;
      goto LABEL_39;
    }

LABEL_25:
    if (v176 >= v15)
    {
      if (v176 - v15 >= 0xFA1)
      {
        v79 = *(v0 + 1357);
        v80 = *(v0 + 696);
        v81 = *(*(v0 + 728) + 144);
        sub_1000BC4D4(&qword_10169FCB8, &unk_1013BFD00);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_101385D80;
        *(inited + 32) = v176;
        v83 = inited + 32;
        *(inited + 40) = v2;
        *(inited + 48) = v1;
        sub_100429BEC(v176, v2, v1);
        sub_100017D5C(v2, v1);
        sub_1009BF638(v80, v79 & 1, inited, v81);
        v84 = *(v0 + 1032);
        v182 = *(v0 + 1024);
        v174 = *(v0 + 1016);
        v85 = *(v0 + 1000);
        if (v185)
        {
          v160 = *(v0 + 936);
          v162 = *(v0 + 960);
          v156 = *(v0 + 920);
          v158 = *(v0 + 928);
          v154 = *(v0 + 904);
          v155 = *(v0 + 912);
          v86 = *(v0 + 896);
          v87 = *(v0 + 864);
          v170 = *(v0 + 856);
          v172 = *(v0 + 888);
          v166 = *(v0 + 776);
          v168 = *(v0 + 824);
          v164 = *(v0 + 752);
          sub_100016590(*(v0 + 944), *(v0 + 952));
          sub_100429C80(v0 + 160);
          sub_100429C08(v176, v2, v1);
          sub_100429C08(v176, v2, v1);

          sub_100429C08(v174, v182, v84);
          sub_100883574(v86, v154, v155, v156, v158, v160);

          swift_setDeallocating();
          sub_100429CD4(v83);
          sub_10001F1B0(v164, type metadata accessor for BeaconKeyServiceBuilder.FileSwapInfo);
          sub_10000B3A8(v166, &qword_1016ABE88, &unk_1013BFCF0);
          sub_10000B3A8(v168, &unk_101696AC0, &qword_101390A60);
          (*(v87 + 8))(v172, v170);
          goto LABEL_12;
        }

        v141 = *(v0 + 752);
        sub_100429C80(v0 + 160);
        sub_100429C08(v176, v2, v1);
        swift_setDeallocating();
        sub_100429CD4(v83);
        sub_100429C08(v176, v2, v1);

        sub_100429C08(v174, v182, v84);
        v18 = sub_10001F1B0(v141, type metadata accessor for BeaconKeyServiceBuilder.FileSwapInfo);
LABEL_40:
        v95 = *(v0 + 976) + 1;
        if (v95 == *(v0 + 968))
        {
          v96 = *(v0 + 960);
          v175 = *(v0 + 952);
          v97 = *(v0 + 944);
          v98 = *(v0 + 936);
          v99 = *(v0 + 928);
          v100 = *(v0 + 920);
          v101 = *(v0 + 912);
          v102 = *(v0 + 904);
          v103 = *(v0 + 896);
          v104 = *(v0 + 864);
          v183 = *(v0 + 856);
          v187 = *(v0 + 888);
          v178 = *(v0 + 824);
          v105 = *(v0 + 776);

          sub_100883574(v103, v102, v101, v100, v99, v98);
          sub_100016590(v97, v175);
          sub_10000B3A8(v105, &qword_1016ABE88, &unk_1013BFCF0);
          sub_10000B3A8(v178, &unk_101696AC0, &qword_101390A60);
          (*(v104 + 8))(v187, v183);
          v106 = *(v0 + 888);
          v107 = *(v0 + 880);
          v108 = *(v0 + 872);
          v109 = *(v0 + 848);
          v110 = *(v0 + 824);
          v111 = *(v0 + 816);
          v112 = *(v0 + 808);
          v113 = *(v0 + 800);
          v114 = *(v0 + 776);
          v115 = *(v0 + 768);
          v188 = *(v0 + 752);

          v64 = *(v0 + 8);
          v65 = *(v0 + 968) != 0;
          goto LABEL_13;
        }

        *(v0 + 976) = v95;
        v116 = *(v0 + 960);
        if (v95 < *(v116 + 16))
        {
          v117 = *(v0 + 888);
          v118 = *(v0 + 872);
          v119 = *(v0 + 864);
          v120 = *(v0 + 856);
          v121 = *(v0 + 824);
          v122 = *(v0 + 808);
          v123 = *(v0 + 720);
          v124 = v116 + 16 * v95;
          v126 = *(v124 + 32);
          v125 = *(v124 + 40);
          v127 = *(v119 + 16);
          *(v0 + 984) = v127;
          *(v0 + 992) = (v119 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
          v127(v118, v117, v120);
          sub_1000D2A70(v121, v122, &unk_101696AC0, &qword_101390A60);
          *(v0 + 1000) = sub_100873960(v118, v126, v125, v122, v123);
          if (v126 < 2)
          {
            v142 = 0;
            v143 = 0;
            v144 = 0;
            v145 = 0xF000000000000000;
          }

          else
          {
            v128 = sub_1009C475C(*(v0 + 696), v126, *(*(v0 + 728) + 144));
            v143 = v128;
            v144 = v129;
            v145 = v130;
            if (v130 >> 60 == 15)
            {
              v142 = 0;
            }

            else
            {
              v142 = v128;
            }
          }

          *(v0 + 1032) = v145;
          *(v0 + 1024) = v144;
          *(v0 + 1016) = v143;
          *(v0 + 1008) = v142;
          v146 = *(v0 + 904);
          v147 = *(v0 + 896);
          sub_100017D5C(v147, v146);
          sub_100017D5C(v147, v146);
          sub_10002EA98(57, v147, v146, (v0 + 536));
          sub_100496F68(*(v0 + 536), *(v0 + 544), (v0 + 568));
          v148 = *(v0 + 576);
          if (v148 >> 60 != 15)
          {
            v149 = *(v0 + 952);
            v150 = *(v0 + 944);
            v190 = *(v0 + 904);
            v151 = *(v0 + 896);
            v179 = *(v0 + 568);
            sub_100017D5C(v150, v149);
            sub_100429BEC(v143, v144, v145);
            sub_10099B5CC(v151, v190, v179, v148, v150, v149, v143, v144, v0 + 160, v145, v126);
            *(v0 + 1040) = 0;
            v152 = *(v0 + 176);
            *v3 = *(v0 + 160);
            v3[1] = v152;
            v153 = *(v0 + 208);
            v3[2] = *(v0 + 192);
            v3[3] = v153;
            *(v0 + 1112) = *(v0 + 224);
            sub_100429BEC(v143, v144, v145);
            sub_100429C24(v0 + 160, v0 + 232);
            v137 = sub_10086FC18;
LABEL_45:
            v18 = v137;
            v19 = 0;
            v20 = 0;

            goto _swift_task_switch;
          }

LABEL_9:
          _assertionFailure(_:_:file:line:flags:)();
          return;
        }

        goto LABEL_62;
      }

      v70 = *(v0 + 1032);
      v91 = *(v0 + 1024);
      v92 = *(v0 + 1016);
      v93 = *(v0 + 1000);
      v94 = *(v0 + 752);
      sub_100017D5C(v2, v1);
      sub_10001F1B0(v94, type metadata accessor for BeaconKeyServiceBuilder.FileSwapInfo);
      sub_100429C80(v0 + 160);

      sub_100429C08(v176, v2, v1);
      sub_100429C08(v176, v2, v1);
      v74 = v92;
      v75 = v91;
LABEL_39:
      v18 = sub_100429C08(v74, v75, v70);
      goto LABEL_40;
    }

LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  v161 = *(v0 + 1016);
  v157 = v1;
  v21 = *(v0 + 1000);
  v22 = *(v0 + 960);
  v167 = *(v0 + 952);
  v169 = *(v0 + 1032);
  v163 = *(v0 + 944);
  v165 = *(v0 + 1024);
  v23 = *(v0 + 936);
  v24 = *(v0 + 928);
  v25 = *(v0 + 920);
  v26 = *(v0 + 912);
  v180 = v2;
  v27 = *(v0 + 904);
  v28 = *(v0 + 896);
  v29 = v16;
  v30 = *(v0 + 864);
  v173 = *(v0 + 856);
  v177 = *(v0 + 888);
  v171 = *(v0 + 824);
  v159 = *(v0 + 776);

  sub_100883574(v28, v27, v26, v25, v24, v23);
  sub_100429C08(v29, v180, v157);
  sub_100429C80(v0 + 160);
  sub_100429C08(v161, v165, v169);
  sub_100016590(v163, v167);
  sub_10000B3A8(v159, &qword_1016ABE88, &unk_1013BFCF0);
  sub_10000B3A8(v171, &unk_101696AC0, &qword_101390A60);
  (*(v30 + 8))(v177, v173);
LABEL_12:
  v54 = *(v0 + 888);
  v55 = *(v0 + 880);
  v56 = *(v0 + 872);
  v57 = *(v0 + 848);
  v58 = *(v0 + 824);
  v59 = *(v0 + 816);
  v60 = *(v0 + 808);
  v61 = *(v0 + 800);
  v62 = *(v0 + 776);
  v63 = *(v0 + 768);
  v181 = *(v0 + 752);

  v64 = *(v0 + 8);
  v65 = 0;
LABEL_13:

  v64(v65);
}

uint64_t sub_100871668()
{
  v1 = *(v0 + 1256);
  v2 = *(v0 + 1144);
  v3 = *(v0 + 1136);
  v4 = *(v0 + 1128);
  v5 = *(v0 + 1120);
  v6 = *(v0 + 1088);
  *(v0 + 376) = *(v0 + 1048);
  v7 = *(v0 + 1072);
  *(v0 + 384) = *(v0 + 1056);
  *(v0 + 400) = v7;
  *(v0 + 416) = v6;
  *(v0 + 424) = v1;
  *(v0 + 432) = *(v0 + 1264);
  sub_100429C80(v0 + 376);
  v8 = *(v0 + 1000);
  v9 = sub_100876778();
  v89 = v3;
  v12 = *(v0 + 1000);
  v13 = *(v12 + qword_1016AC3B0);
  v14 = *(v12 + qword_1016AC3B8);
  if (v14 < v13)
  {
    __break(1u);
    goto LABEL_28;
  }

  v15 = *(v0 + 992);
  v16 = *(v0 + 776);
  v17 = *(v0 + 752);
  v18 = *(v0 + 736);
  (*(v0 + 984))(v17, *(v0 + 888), *(v0 + 856));
  v19 = (v17 + *(v18 + 20));
  *v19 = v13;
  v19[1] = v14;
  v9 = sub_100881B1C(v16, v17);
  if (v5 >> 60 == 15)
  {
    v21 = *(v0 + 1032);
    v22 = *(v0 + 1024);
    v23 = *(v0 + 1016);
    v24 = *(v0 + 1000);
    sub_10001F1B0(*(v0 + 752), type metadata accessor for BeaconKeyServiceBuilder.FileSwapInfo);
    sub_100429C80(v0 + 160);

    goto LABEL_12;
  }

  if (v89 < v2)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (v89 - v2 >= 0xFA1)
  {
    v25 = *(v0 + 1357);
    v26 = *(v0 + 696);
    v27 = *(*(v0 + 728) + 144);
    sub_1000BC4D4(&qword_10169FCB8, &unk_1013BFD00);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_101385D80;
    *(inited + 32) = v89;
    *(inited + 40) = v4;
    *(inited + 48) = v5;
    sub_100429BEC(v89, v4, v5);
    sub_100017D5C(v4, v5);
    sub_1009BF638(v26, v25 & 1, inited, v27);
    v29 = *(v0 + 1032);
    v30 = *(v0 + 1024);
    v87 = *(v0 + 1016);
    v31 = *(v0 + 1000);
    v72 = *(v0 + 752);
    sub_100429C80(v0 + 160);
    sub_100429C08(v89, v4, v5);
    swift_setDeallocating();
    sub_100429CD4(inited + 32);
    sub_100429C08(v89, v4, v5);

    sub_100429C08(v87, v30, v29);
    v9 = sub_10001F1B0(v72, type metadata accessor for BeaconKeyServiceBuilder.FileSwapInfo);
    goto LABEL_13;
  }

  v21 = *(v0 + 1032);
  v22 = *(v0 + 1024);
  v23 = *(v0 + 1016);
  v32 = *(v0 + 1000);
  v33 = *(v0 + 752);
  sub_100017D5C(v4, v5);
  sub_10001F1B0(v33, type metadata accessor for BeaconKeyServiceBuilder.FileSwapInfo);
  sub_100429C80(v0 + 160);

  sub_100429C08(v89, v4, v5);
  sub_100429C08(v89, v4, v5);
LABEL_12:
  v9 = sub_100429C08(v23, v22, v21);
LABEL_13:
  v34 = *(v0 + 976) + 1;
  if (v34 != *(v0 + 968))
  {
    *(v0 + 976) = v34;
    v57 = *(v0 + 960);
    if (v34 < *(v57 + 16))
    {
      v58 = *(v0 + 888);
      v59 = *(v0 + 872);
      v60 = *(v0 + 864);
      v61 = *(v0 + 856);
      v62 = *(v0 + 824);
      v63 = *(v0 + 808);
      v64 = *(v0 + 720);
      v65 = v57 + 16 * v34;
      v67 = *(v65 + 32);
      v66 = *(v65 + 40);
      v68 = *(v60 + 16);
      *(v0 + 984) = v68;
      *(v0 + 992) = (v60 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v68(v59, v58, v61);
      sub_1000D2A70(v62, v63, &unk_101696AC0, &qword_101390A60);
      *(v0 + 1000) = sub_100873960(v59, v67, v66, v63, v64);
      if (v67 < 2)
      {
        v73 = 0;
        v74 = 0;
        v75 = 0;
        v76 = 0xF000000000000000;
      }

      else
      {
        v69 = sub_1009C475C(*(v0 + 696), v67, *(*(v0 + 728) + 144));
        v74 = v69;
        v75 = v70;
        v76 = v71;
        if (v71 >> 60 == 15)
        {
          v73 = 0;
        }

        else
        {
          v73 = v69;
        }
      }

      *(v0 + 1032) = v76;
      *(v0 + 1024) = v75;
      *(v0 + 1016) = v74;
      *(v0 + 1008) = v73;
      v77 = *(v0 + 904);
      v78 = *(v0 + 896);
      sub_100017D5C(v78, v77);
      sub_100017D5C(v78, v77);
      sub_10002EA98(57, v78, v77, (v0 + 536));
      sub_100496F68(*(v0 + 536), *(v0 + 544), (v0 + 568));
      v79 = *(v0 + 576);
      if (v79 >> 60 == 15)
      {
        return _assertionFailure(_:_:file:line:flags:)();
      }

      v80 = *(v0 + 952);
      v81 = *(v0 + 944);
      v93 = *(v0 + 904);
      v82 = *(v0 + 896);
      v83 = *(v0 + 568);
      sub_100017D5C(v81, v80);
      sub_100429BEC(v74, v75, v76);
      sub_10099B5CC(v82, v93, v83, v79, v81, v80, v74, v75, v0 + 160, v76, v67);
      *(v0 + 1040) = 0;
      v84 = *(v0 + 176);
      *(v0 + 1048) = *(v0 + 160);
      *(v0 + 1064) = v84;
      v85 = *(v0 + 208);
      *(v0 + 1080) = *(v0 + 192);
      *(v0 + 1096) = v85;
      *(v0 + 1112) = *(v0 + 224);
      sub_100429BEC(v74, v75, v76);
      sub_100429C24(v0 + 160, v0 + 232);
      v9 = sub_10086FC18;
      v10 = 0;
      v11 = 0;

      return _swift_task_switch(v9, v10, v11);
    }

LABEL_29:
    __break(1u);
    return _swift_task_switch(v9, v10, v11);
  }

  v35 = *(v0 + 960);
  v86 = *(v0 + 952);
  v36 = *(v0 + 944);
  v37 = *(v0 + 936);
  v38 = *(v0 + 928);
  v39 = *(v0 + 920);
  v40 = *(v0 + 912);
  v41 = *(v0 + 904);
  v42 = *(v0 + 896);
  v43 = *(v0 + 864);
  v90 = *(v0 + 856);
  v91 = *(v0 + 888);
  v88 = *(v0 + 824);
  v44 = *(v0 + 776);

  sub_100883574(v42, v41, v40, v39, v38, v37);
  sub_100016590(v36, v86);
  sub_10000B3A8(v44, &qword_1016ABE88, &unk_1013BFCF0);
  sub_10000B3A8(v88, &unk_101696AC0, &qword_101390A60);
  (*(v43 + 8))(v91, v90);
  v45 = *(v0 + 888);
  v46 = *(v0 + 880);
  v47 = *(v0 + 872);
  v48 = *(v0 + 848);
  v49 = *(v0 + 824);
  v50 = *(v0 + 816);
  v51 = *(v0 + 808);
  v52 = *(v0 + 800);
  v53 = *(v0 + 776);
  v54 = *(v0 + 768);
  v92 = *(v0 + 752);

  v55 = *(v0 + 8);
  v56 = *(v0 + 968) != 0;

  return v55(v56);
}

uint64_t sub_1008723A4()
{
  v1 = *(v0 + 1336);
  v2 = *(v0 + 1328);
  v3 = *(v0 + 1320);
  v4 = *(v0 + 1312);
  v5 = *(v0 + 1288);
  v6 = *(v0 + 1280);
  v7 = *(v0 + 1088);
  *(v0 + 376) = *(v0 + 1048);
  v8 = *(v0 + 1072);
  *(v0 + 384) = *(v0 + 1056);
  *(v0 + 400) = v8;
  *(v0 + 416) = v7;
  *(v0 + 424) = v5;
  *(v0 + 432) = *(v0 + 1296);
  sub_100429C80(v0 + 376);
  v9 = *(v0 + 1000);
  v10 = sub_100876778();
  v119 = v3;
  if (!v6)
  {
    v22 = *(v0 + 1000);
    v23 = *(v22 + qword_1016AC3B0);
    v24 = *(v22 + qword_1016AC3B8);
    if (v24 < v23)
    {
      __break(1u);
    }

    else
    {
      v25 = *(v0 + 992);
      v26 = *(v0 + 776);
      v27 = *(v0 + 752);
      v28 = *(v0 + 736);
      (*(v0 + 984))(v27, *(v0 + 888), *(v0 + 856));
      v29 = (v27 + *(v28 + 20));
      *v29 = v23;
      v29[1] = v24;
      v10 = sub_100881B1C(v26, v27);
      if (v1 >> 60 == 15)
      {
        v43 = *(v0 + 1032);
        v44 = *(v0 + 1024);
        v45 = *(v0 + 1016);
        v46 = *(v0 + 1000);
        sub_10001F1B0(*(v0 + 752), type metadata accessor for BeaconKeyServiceBuilder.FileSwapInfo);
        sub_100429C80(v0 + 160);

        goto LABEL_14;
      }

      if (v119 >= v4)
      {
        if (v119 - v4 >= 0xFA1)
        {
          v47 = *(v0 + 1357);
          v48 = *(v0 + 696);
          v49 = *(*(v0 + 728) + 144);
          sub_1000BC4D4(&qword_10169FCB8, &unk_1013BFD00);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_101385D80;
          *(inited + 32) = v119;
          *(inited + 40) = v2;
          *(inited + 48) = v1;
          sub_100429BEC(v119, v2, v1);
          sub_100017D5C(v2, v1);
          sub_1009BF638(v48, v47 & 1, inited, v49);
          v51 = *(v0 + 1032);
          v52 = *(v0 + 1024);
          v117 = *(v0 + 1016);
          v53 = *(v0 + 1000);
          v92 = *(v0 + 752);
          sub_100429C80(v0 + 160);
          sub_100429C08(v119, v2, v1);
          swift_setDeallocating();
          sub_100429CD4(inited + 32);
          sub_100429C08(v119, v2, v1);

          sub_100429C08(v117, v52, v51);
          v10 = sub_10001F1B0(v92, type metadata accessor for BeaconKeyServiceBuilder.FileSwapInfo);
          goto LABEL_15;
        }

        v43 = *(v0 + 1032);
        v44 = *(v0 + 1024);
        v45 = *(v0 + 1016);
        v54 = *(v0 + 1000);
        v55 = *(v0 + 752);
        sub_100017D5C(v2, v1);
        sub_10001F1B0(v55, type metadata accessor for BeaconKeyServiceBuilder.FileSwapInfo);
        sub_100429C80(v0 + 160);

        sub_100429C08(v119, v2, v1);
        sub_100429C08(v119, v2, v1);
LABEL_14:
        v10 = sub_100429C08(v45, v44, v43);
LABEL_15:
        v56 = *(v0 + 976) + 1;
        if (v56 == *(v0 + 968))
        {
          v57 = *(v0 + 960);
          v115 = *(v0 + 952);
          v58 = *(v0 + 944);
          v59 = *(v0 + 936);
          v60 = *(v0 + 928);
          v61 = *(v0 + 920);
          v62 = *(v0 + 912);
          v63 = *(v0 + 904);
          v64 = *(v0 + 896);
          v65 = *(v0 + 864);
          v121 = *(v0 + 856);
          v122 = *(v0 + 888);
          v118 = *(v0 + 824);
          v66 = *(v0 + 776);

          sub_100883574(v64, v63, v62, v61, v60, v59);
          sub_100016590(v58, v115);
          sub_10000B3A8(v66, &qword_1016ABE88, &unk_1013BFCF0);
          sub_10000B3A8(v118, &unk_101696AC0, &qword_101390A60);
          (*(v65 + 8))(v122, v121);
          v67 = *(v0 + 888);
          v68 = *(v0 + 880);
          v69 = *(v0 + 872);
          v70 = *(v0 + 848);
          v71 = *(v0 + 824);
          v72 = *(v0 + 816);
          v73 = *(v0 + 808);
          v74 = *(v0 + 800);
          v75 = *(v0 + 776);
          v76 = *(v0 + 768);
          v123 = *(v0 + 752);

          v40 = *(v0 + 8);
          v41 = *(v0 + 968) != 0;
          goto LABEL_5;
        }

        *(v0 + 976) = v56;
        v77 = *(v0 + 960);
        if (v56 < *(v77 + 16))
        {
          v78 = *(v0 + 888);
          v79 = *(v0 + 872);
          v80 = *(v0 + 864);
          v81 = *(v0 + 856);
          v82 = *(v0 + 824);
          v83 = *(v0 + 808);
          v84 = *(v0 + 720);
          v85 = v77 + 16 * v56;
          v87 = *(v85 + 32);
          v86 = *(v85 + 40);
          v88 = *(v80 + 16);
          *(v0 + 984) = v88;
          *(v0 + 992) = (v80 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
          v88(v79, v78, v81);
          sub_1000D2A70(v82, v83, &unk_101696AC0, &qword_101390A60);
          *(v0 + 1000) = sub_100873960(v79, v87, v86, v83, v84);
          if (v87 < 2)
          {
            v93 = 0;
            v94 = 0;
            v95 = 0;
            v96 = 0xF000000000000000;
          }

          else
          {
            v89 = sub_1009C475C(*(v0 + 696), v87, *(*(v0 + 728) + 144));
            v94 = v89;
            v95 = v90;
            v96 = v91;
            if (v91 >> 60 == 15)
            {
              v93 = 0;
            }

            else
            {
              v93 = v89;
            }
          }

          *(v0 + 1032) = v96;
          *(v0 + 1024) = v95;
          *(v0 + 1016) = v94;
          *(v0 + 1008) = v93;
          v97 = *(v0 + 904);
          v98 = *(v0 + 896);
          sub_100017D5C(v98, v97);
          sub_100017D5C(v98, v97);
          sub_10002EA98(57, v98, v97, (v0 + 536));
          sub_100496F68(*(v0 + 536), *(v0 + 544), (v0 + 568));
          v99 = *(v0 + 576);
          if (v99 >> 60 == 15)
          {
            return _assertionFailure(_:_:file:line:flags:)();
          }

          v100 = *(v0 + 952);
          v101 = *(v0 + 944);
          v124 = *(v0 + 904);
          v102 = *(v0 + 896);
          v103 = *(v0 + 568);
          sub_100017D5C(v101, v100);
          sub_100429BEC(v94, v95, v96);
          sub_10099B5CC(v102, v124, v103, v99, v101, v100, v94, v95, v0 + 160, v96, v87);
          *(v0 + 1040) = 0;
          v104 = *(v0 + 176);
          *(v0 + 1048) = *(v0 + 160);
          *(v0 + 1064) = v104;
          v105 = *(v0 + 208);
          *(v0 + 1080) = *(v0 + 192);
          *(v0 + 1096) = v105;
          *(v0 + 1112) = *(v0 + 224);
          sub_100429BEC(v94, v95, v96);
          sub_100429C24(v0 + 160, v0 + 232);
          v10 = sub_10086FC18;
          v11 = 0;
          v12 = 0;

          return _swift_task_switch(v10, v11, v12);
        }

LABEL_31:
        __break(1u);
        return _swift_task_switch(v10, v11, v12);
      }
    }

    __break(1u);
    goto LABEL_31;
  }

  v107 = *(v0 + 1016);
  v13 = *(v0 + 1000);
  v14 = *(v0 + 960);
  v110 = *(v0 + 952);
  v111 = *(v0 + 1032);
  v108 = *(v0 + 944);
  v109 = *(v0 + 1024);
  v15 = *(v0 + 936);
  v16 = *(v0 + 928);
  v17 = *(v0 + 920);
  v18 = *(v0 + 912);
  v116 = v1;
  v19 = *(v0 + 904);
  v20 = *(v0 + 896);
  v21 = *(v0 + 864);
  v113 = *(v0 + 856);
  v114 = *(v0 + 888);
  v112 = *(v0 + 824);
  v106 = *(v0 + 776);

  sub_100883574(v20, v19, v18, v17, v16, v15);
  sub_100429C08(v119, v2, v116);
  sub_100429C80(v0 + 160);
  sub_100429C08(v107, v109, v111);
  sub_100016590(v108, v110);
  sub_10000B3A8(v106, &qword_1016ABE88, &unk_1013BFCF0);
  sub_10000B3A8(v112, &unk_101696AC0, &qword_101390A60);
  (*(v21 + 8))(v114, v113);
  v30 = *(v0 + 888);
  v31 = *(v0 + 880);
  v32 = *(v0 + 872);
  v33 = *(v0 + 848);
  v34 = *(v0 + 824);
  v35 = *(v0 + 816);
  v36 = *(v0 + 808);
  v37 = *(v0 + 800);
  v38 = *(v0 + 776);
  v39 = *(v0 + 768);
  v120 = *(v0 + 752);

  v40 = *(v0 + 8);
  v41 = 0;
LABEL_5:

  return v40(v41);
}

uint64_t sub_1008730E0()
{
  if (static Task<>.isCancelled.getter())
  {
    v1 = *(v0 + 1344);
    v2 = *(v0 + 1224);
    v3 = *(v0 + 1168);
    v4 = *(v0 + 1160);
    *(v0 + 1336) = *(v0 + 1152);
    *(v0 + 1328) = v4;
    *(v0 + 1320) = v3;
    *(v0 + 1312) = v3;
    *(v0 + 1296) = *(v0 + 1176);
    *(v0 + 1288) = v2;
    *(v0 + 1280) = v1;
    v5 = sub_1008723A4;
  }

  else
  {
    v6 = *(v0 + 1344);
    v7 = *(v0 + 1224);
    v8 = *(v0 + 1184);
    v9 = *(v0 + 1176);
    v10 = *(v0 + 1168);
    *(v0 + 1168) = v7;
    *(v0 + 1144) = v10;
    *(v0 + 1136) = v10;
    v11 = *(v0 + 1152);
    *(v0 + 1160) = v9;
    *(v0 + 1152) = v8;
    *(v0 + 1120) = v11;
    v12 = *(v0 + 1064);
    *(v0 + 304) = *(v0 + 1048);
    *(v0 + 320) = v12;
    *(v0 + 336) = *(v0 + 1080);
    *(v0 + 352) = v7;
    *(v0 + 360) = v9;
    *(v0 + 368) = v8;
    sub_100429C24(v0 + 304, v0 + 16);
    sub_100017D5C(v9, v8);
    sub_100017D5C(v9, v8);
    if (qword_101694FA8 != -1)
    {
      swift_once();
    }

    *(v0 + 520) = 0x7365547265646E75;
    *(v0 + 528) = 0xE900000000000074;
    SynchronousCache.cachedValue<A>(key:computeBlock:)();
    v13 = sub_100A7563C(v9, v8, 1);
    *(v0 + 1176) = v13;
    *(v0 + 1184) = v14;
    if (v6)
    {
      sub_100016590(v9, v8);
      sub_100016590(v9, v8);
      sub_100429C80(v0 + 304);
      *(v0 + 1272) = v8;
      *(v0 + 1264) = v9;
      *(v0 + 1256) = v7;
      static os_log_type_t.error.getter();
      if (qword_101694BE0 != -1)
      {
        swift_once();
      }

      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_101385D80;
      v23 = _convertErrorToNSError(_:)();
      *(v22 + 56) = sub_100008BB8(0, &qword_10169E020, NSError_ptr);
      *(v22 + 64) = sub_100009D18(&qword_1016BC310, &qword_10169E020, NSError_ptr);
      *(v22 + 32) = v23;
      os_log(_:dso:log:_:_:)();

      v5 = sub_100871668;
    }

    else
    {
      v15 = v13;
      v16 = v14;
      v17 = String.utf8Data.getter();
      v19 = v18;
      v20 = sub_100A79CBC(v15, v16, v17, v18, 72);
      sub_100495DF4(v20, v21, (v0 + 552));
      v27 = *(v0 + 1056);
      sub_100016590(v17, v19);
      v73 = *(v0 + 552);
      v28 = *(v0 + 560);
      if (v27 >> 60 == 15)
      {
        v29 = *(v0 + 1072);
        v30 = *(v0 + 1064);
        sub_100017D5C(v73, *(v0 + 560));
        v31 = sub_100A7A194(v30, v29);
        v35 = v28;
        v38 = sub_100A7A73C(v31, 0, v73, v28);
        CCECCryptorRelease();
        sub_100016590(v73, v35);
        v39 = sub_100A7829C(v38, 0);
        v41 = v40;
        sub_100017D5C(v39, v40);
        v69 = sub_10049C0AC(v39, v41);
        v70 = v47;
        CCECCryptorRelease();
        v24 = sub_100016590(v39, v41);
        v48 = *(v0 + 1056);
        v49 = *(v0 + 1048);
      }

      else
      {
        v32 = *(v0 + 1056);
        v33 = *(v0 + 1048);
        sub_10002E98C(v33, v32);
        sub_100017D5C(v73, v28);
        v34 = sub_100A7A194(v33, v32);
        v36 = sub_100A7A73C(v34, 1, v73, v28);
        v37 = v28;
        v42 = v36;
        v43 = v37;
        CCECCryptorRelease();
        sub_100016590(v73, v43);
        v72 = v42;
        v44 = sub_100A7829C(v42, 1);
        v46 = v45;
        v71 = v44;
        v63 = sub_100A7829C(v72, 0);
        v64 = v55;
        sub_100017D5C(v71, v46);
        v62 = v46;
        v66 = sub_10049BD68(v71, v46);
        v68 = v56;
        sub_100017D5C(v63, v64);
        v69 = sub_10049C0AC(v63, v64);
        v70 = v57;
        v58 = *(v0 + 1056);
        v61 = *(v0 + 1048);
        CCECCryptorRelease();
        sub_100016590(v63, v64);
        sub_100016590(v71, v62);
        v24 = sub_100006654(v61, v58);
        v35 = v43;
        v49 = v66;
        v48 = v68;
      }

      v65 = v49;
      v67 = v48;
      *(v0 + 1200) = v48;
      *(v0 + 1192) = v49;
      *(v0 + 1208) = v70;
      *(v0 + 1216) = v69;
      *(v0 + 1224) = v7 + 1;
      if (v7 == -1)
      {
        __break(1u);
        return _swift_task_switch(v24, v25, v26);
      }

      sub_100017D5C(v15, v16);
      sub_100016590(v9, v8);
      v50 = String.utf8Data.getter();
      v52 = v51;
      v53 = sub_100A79CBC(v15, v16, v50, v51, 32);
      sub_1004A4714(v53, v54, (v0 + 504));
      *(v0 + 1232) = 0;
      sub_100016590(v50, v52);
      v59 = *(v0 + 512);
      *(v0 + 1240) = *(v0 + 504);
      *(v0 + 1248) = v59;
      sub_100017D5C(v69, v70);
      sub_10002E98C(v65, v67);
      sub_100006654(v65, v67);
      sub_100016590(v69, v70);
      sub_100016590(v15, v16);
      sub_100016590(v73, v35);
      sub_100429C80(v0 + 304);
      sub_100016590(v9, v8);
      v5 = sub_100870494;
    }
  }

  v24 = v5;
  v25 = 0;
  v26 = 0;

  return _swift_task_switch(v24, v25, v26);
}

uint64_t sub_100873960(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  v49 = a1;
  v10 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v47 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v43 - v14;
  v16 = type metadata accessor for URL();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = __chkstk_darwin(v16);
  v46 = &v43 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v22 = &v43 - v21;
  if (!a2)
  {
    v26 = &unk_1013BFC70;
    sub_1000BC4D4(&qword_1016ABE70, &unk_1013BFC70);
    sub_1000041A4(&qword_1016ABE78, &qword_1016ABE70, &unk_1013BFC70);
    swift_allocError();
    *v27 = 2;
    *(v27 + 4) = 2;
    swift_willThrow();
    sub_10000B3A8(a4, &unk_101696AC0, &qword_101390A60);
    (*(v17 + 8))(v49, v16);
    return v26;
  }

  v43 = a5;
  v48 = a4;
  v23 = *(v17 + 16);
  result = v23(&v43 - v21, v49, v16);
  v25 = a3 - a2;
  if (a3 >= a2)
  {
    if ((a3 - a2) < 0)
    {
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }
  }

  else
  {
    if ((a2 - a3) < 0)
    {
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    v25 = a3 - a2;
  }

  v45 = v5;
  v28 = v25 + 1;
  if (__OFADD__(v25, 1))
  {
    __break(1u);
    goto LABEL_19;
  }

  sub_1000D2A70(v48, v15, &unk_101696AC0, &qword_101390A60);
  v29 = sub_1000BC4D4(&qword_1016ABE98, &qword_1013BFD18);
  v30 = *(v29 + 48);
  v31 = *(v29 + 52);
  v26 = swift_allocObject();
  *(v26 + qword_1016AC3C8) = 0;
  result = v23(v26 + qword_1016AC3A0, v22, v16);
  if (HIDWORD(a2))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v44 = v22;
  *(v26 + qword_1016AC3B0) = a2;
  *(v26 + qword_1016AC3B8) = a2;
  *(v26 + qword_1016AC3C0) = a2;
  *(v26 + qword_1016AC3A8) = v28;
  sub_1000BC4D4(&qword_1016BBE40, &qword_1013BFD20);
  sub_1000041A4(&qword_1016ABEA0, &qword_1016BBE40, &qword_1013BFD20);
  v32 = Set.init(minimumCapacity:)();
  sub_1000BC4D4(&qword_1016ABEA8, &qword_1013BFD28);
  v33 = static Array._allocateBufferUninitialized(minimumCapacity:)();
  *(v33 + 16) = 256;
  *(v33 + 32) = v32;
  for (i = 40; i != 2080; i += 8)
  {
    *(v33 + i) = v32;
  }

  *(v26 + qword_1016AC3D0) = v33;
  v35 = v47;
  sub_1000D2A70(v15, v47, &unk_101696AC0, &qword_101390A60);
  v36 = (*(v17 + 48))(v35, 1, v16);
  v38 = v45;
  v37 = v46;
  v39 = v48;
  if (v36 == 1)
  {
    sub_10000B3A8(v48, &unk_101696AC0, &qword_101390A60);
    v40 = *(v17 + 8);
    v40(v49, v16);
    sub_10000B3A8(v15, &unk_101696AC0, &qword_101390A60);
    v40(v44, v16);
    sub_10000B3A8(v35, &unk_101696AC0, &qword_101390A60);
    return v26;
  }

  result = (*(v17 + 32))(v46, v35, v16);
  if (!HIDWORD(v43))
  {
    sub_100879B74(v37, v43);
    if (v38)
    {

      v26 = &qword_101390A60;
      sub_10000B3A8(v39, &unk_101696AC0, &qword_101390A60);
      v41 = *(v17 + 8);
      v41(v49, v16);
      v41(v37, v16);
      sub_10000B3A8(v15, &unk_101696AC0, &qword_101390A60);
      v41(v44, v16);
    }

    else
    {
      sub_10000B3A8(v39, &unk_101696AC0, &qword_101390A60);
      v42 = *(v17 + 8);
      v42(v49, v16);
      v42(v37, v16);
      sub_10000B3A8(v15, &unk_101696AC0, &qword_101390A60);
      v42(v44, v16);
    }

    return v26;
  }

LABEL_22:
  __break(1u);
  return result;
}

uint64_t sub_100873F40(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  v49 = a1;
  v10 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v47 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v43 - v14;
  v16 = type metadata accessor for URL();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = __chkstk_darwin(v16);
  v46 = &v43 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v22 = &v43 - v21;
  if (!a2)
  {
    v26 = &qword_1013BFD88;
    sub_1000BC4D4(&qword_1016ABEB8, &qword_1013BFD88);
    sub_1000041A4(&qword_1016ABEC0, &qword_1016ABEB8, &qword_1013BFD88);
    swift_allocError();
    *v27 = 2;
    *(v27 + 4) = 2;
    swift_willThrow();
    sub_10000B3A8(a4, &unk_101696AC0, &qword_101390A60);
    (*(v17 + 8))(v49, v16);
    return v26;
  }

  v43 = a5;
  v48 = a4;
  v23 = *(v17 + 16);
  result = v23(&v43 - v21, v49, v16);
  v25 = a3 - a2;
  if (a3 >= a2)
  {
    if ((a3 - a2) < 0)
    {
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }
  }

  else
  {
    if ((a2 - a3) < 0)
    {
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    v25 = a3 - a2;
  }

  v45 = v5;
  v28 = v25 + 1;
  if (__OFADD__(v25, 1))
  {
    __break(1u);
    goto LABEL_19;
  }

  sub_1000D2A70(v48, v15, &unk_101696AC0, &qword_101390A60);
  v29 = sub_1000BC4D4(&qword_1016ABEC8, &qword_1013BFD90);
  v30 = *(v29 + 48);
  v31 = *(v29 + 52);
  v26 = swift_allocObject();
  *(v26 + qword_1016AC3C8) = 0;
  result = v23(v26 + qword_1016AC3A0, v22, v16);
  if (HIDWORD(a2))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v44 = v22;
  *(v26 + qword_1016AC3B0) = a2;
  *(v26 + qword_1016AC3B8) = a2;
  *(v26 + qword_1016AC3C0) = a2;
  *(v26 + qword_1016AC3A8) = v28;
  sub_1000BC4D4(&qword_1016ABED0, &qword_1013BFD98);
  sub_1000041A4(&qword_1016ABED8, &qword_1016ABED0, &qword_1013BFD98);
  v32 = Set.init(minimumCapacity:)();
  sub_1000BC4D4(&qword_1016ABEE0, &qword_1013BFDA0);
  v33 = static Array._allocateBufferUninitialized(minimumCapacity:)();
  *(v33 + 16) = 256;
  *(v33 + 32) = v32;
  for (i = 40; i != 2080; i += 8)
  {
    *(v33 + i) = v32;
  }

  *(v26 + qword_1016AC3D0) = v33;
  v35 = v47;
  sub_1000D2A70(v15, v47, &unk_101696AC0, &qword_101390A60);
  v36 = (*(v17 + 48))(v35, 1, v16);
  v38 = v45;
  v37 = v46;
  v39 = v48;
  if (v36 == 1)
  {
    sub_10000B3A8(v48, &unk_101696AC0, &qword_101390A60);
    v40 = *(v17 + 8);
    v40(v49, v16);
    sub_10000B3A8(v15, &unk_101696AC0, &qword_101390A60);
    v40(v44, v16);
    sub_10000B3A8(v35, &unk_101696AC0, &qword_101390A60);
    return v26;
  }

  result = (*(v17 + 32))(v46, v35, v16);
  if (!HIDWORD(v43))
  {
    sub_100879FD8(v37, v43);
    if (v38)
    {

      v26 = &qword_101390A60;
      sub_10000B3A8(v39, &unk_101696AC0, &qword_101390A60);
      v41 = *(v17 + 8);
      v41(v49, v16);
      v41(v37, v16);
      sub_10000B3A8(v15, &unk_101696AC0, &qword_101390A60);
      v41(v44, v16);
    }

    else
    {
      sub_10000B3A8(v39, &unk_101696AC0, &qword_101390A60);
      v42 = *(v17 + 8);
      v42(v49, v16);
      v42(v37, v16);
      sub_10000B3A8(v15, &unk_101696AC0, &qword_101390A60);
      v42(v44, v16);
    }

    return v26;
  }

LABEL_22:
  __break(1u);
  return result;
}

uint64_t sub_100874520(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  v49 = a1;
  v10 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v47 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v43 - v14;
  v16 = type metadata accessor for URL();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = __chkstk_darwin(v16);
  v46 = &v43 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v22 = &v43 - v21;
  if (!a2)
  {
    v26 = &qword_1013BFDA8;
    sub_1000BC4D4(&qword_1016ABEE8, &qword_1013BFDA8);
    sub_1000041A4(&qword_1016ABEF0, &qword_1016ABEE8, &qword_1013BFDA8);
    swift_allocError();
    *v27 = 2;
    *(v27 + 4) = 2;
    swift_willThrow();
    sub_10000B3A8(a4, &unk_101696AC0, &qword_101390A60);
    (*(v17 + 8))(v49, v16);
    return v26;
  }

  v43 = a5;
  v48 = a4;
  v23 = *(v17 + 16);
  result = v23(&v43 - v21, v49, v16);
  v25 = a3 - a2;
  if (a3 >= a2)
  {
    if ((a3 - a2) < 0)
    {
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }
  }

  else
  {
    if ((a2 - a3) < 0)
    {
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    v25 = a3 - a2;
  }

  v45 = v5;
  v28 = v25 + 1;
  if (__OFADD__(v25, 1))
  {
    __break(1u);
    goto LABEL_19;
  }

  sub_1000D2A70(v48, v15, &unk_101696AC0, &qword_101390A60);
  v29 = sub_1000BC4D4(&qword_1016ABEF8, &qword_1013BFDB0);
  v30 = *(v29 + 48);
  v31 = *(v29 + 52);
  v26 = swift_allocObject();
  *(v26 + qword_1016AC3C8) = 0;
  result = v23(v26 + qword_1016AC3A0, v22, v16);
  if (HIDWORD(a2))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v44 = v22;
  *(v26 + qword_1016AC3B0) = a2;
  *(v26 + qword_1016AC3B8) = a2;
  *(v26 + qword_1016AC3C0) = a2;
  *(v26 + qword_1016AC3A8) = v28;
  sub_1000BC4D4(&qword_1016ABF00, &qword_1013BFDB8);
  sub_1000041A4(&qword_1016ABF08, &qword_1016ABF00, &qword_1013BFDB8);
  v32 = Set.init(minimumCapacity:)();
  sub_1000BC4D4(&qword_1016ABF10, &qword_1013BFDC0);
  v33 = static Array._allocateBufferUninitialized(minimumCapacity:)();
  *(v33 + 16) = 256;
  *(v33 + 32) = v32;
  for (i = 40; i != 2080; i += 8)
  {
    *(v33 + i) = v32;
  }

  *(v26 + qword_1016AC3D0) = v33;
  v35 = v47;
  sub_1000D2A70(v15, v47, &unk_101696AC0, &qword_101390A60);
  v36 = (*(v17 + 48))(v35, 1, v16);
  v38 = v45;
  v37 = v46;
  v39 = v48;
  if (v36 == 1)
  {
    sub_10000B3A8(v48, &unk_101696AC0, &qword_101390A60);
    v40 = *(v17 + 8);
    v40(v49, v16);
    sub_10000B3A8(v15, &unk_101696AC0, &qword_101390A60);
    v40(v44, v16);
    sub_10000B3A8(v35, &unk_101696AC0, &qword_101390A60);
    return v26;
  }

  result = (*(v17 + 32))(v46, v35, v16);
  if (!HIDWORD(v43))
  {
    sub_10087A454(v37, v43);
    if (v38)
    {

      v26 = &qword_101390A60;
      sub_10000B3A8(v39, &unk_101696AC0, &qword_101390A60);
      v41 = *(v17 + 8);
      v41(v49, v16);
      v41(v37, v16);
      sub_10000B3A8(v15, &unk_101696AC0, &qword_101390A60);
      v41(v44, v16);
    }

    else
    {
      sub_10000B3A8(v39, &unk_101696AC0, &qword_101390A60);
      v42 = *(v17 + 8);
      v42(v49, v16);
      v42(v37, v16);
      sub_10000B3A8(v15, &unk_101696AC0, &qword_101390A60);
      v42(v44, v16);
    }

    return v26;
  }

LABEL_22:
  __break(1u);
  return result;
}

uint64_t sub_100874B00(uint64_t a1, int a2)
{
  v4 = type metadata accessor for BeaconIdentifier();
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4);
  v8 = &v44[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __chkstk_darwin(v6);
  v11 = &v44[-v10];
  __chkstk_darwin(v9);
  v13 = &v44[-v12];
  v14 = a2 & 1;
  v15 = sub_100875000(a1, a2 & 1);
  if (!v15)
  {
    return 0;
  }

  v16 = v15;
  if (qword_101694A00 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_1000076D4(v17, qword_1016ABAA8);
  sub_1000295D4(a1, v13, type metadata accessor for BeaconIdentifier);
  sub_1000295D4(a1, v11, type metadata accessor for BeaconIdentifier);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v46 = v4;
    v21 = v20;
    v49 = swift_slowAlloc();
    v52 = v49;
    *v21 = 141559043;
    *(v21 + 4) = 1752392040;
    *(v21 + 12) = 2081;
    type metadata accessor for UUID();
    v48 = v18;
    sub_10087E3E8(&qword_101696930, &type metadata accessor for UUID);
    v51 = a2 & 1;
    v47 = v19;
    v22 = dispatch thunk of CustomStringConvertible.description.getter();
    v45 = a2;
    v23 = v8;
    v25 = v24;
    v50 = v16;
    sub_10001F1B0(v13, type metadata accessor for BeaconIdentifier);
    v26 = sub_1000136BC(v22, v25, &v52);
    v8 = v23;

    *(v21 + 14) = v26;
    *(v21 + 22) = 2160;
    *(v21 + 24) = 1752392040;
    *(v21 + 32) = 2081;
    v27 = &v11[*(v46 + 20)];
    v14 = v51;
    v28 = dispatch thunk of CustomStringConvertible.description.getter();
    v30 = v29;
    v16 = v50;
    sub_10001F1B0(v11, type metadata accessor for BeaconIdentifier);
    v31 = sub_1000136BC(v28, v30, &v52);

    *(v21 + 34) = v31;
    *(v21 + 42) = 2082;
    if (v45)
    {
      v32 = 0x61646E6F6365732ELL;
    }

    else
    {
      v32 = 0x7972616D6972702ELL;
    }

    if (v45)
    {
      v33 = 0xEA00000000007972;
    }

    else
    {
      v33 = 0xE800000000000000;
    }

    v34 = sub_1000136BC(v32, v33, &v52);

    *(v21 + 44) = v34;
    v35 = v48;
    _os_log_impl(&_mh_execute_header, v48, v47, "opened keymap: %{private,mask.hash}s/%{private,mask.hash}s/%{public}s)", v21, 0x34u);
    swift_arrayDestroy();
  }

  else
  {

    sub_10001F1B0(v11, type metadata accessor for BeaconIdentifier);
    sub_10001F1B0(v13, type metadata accessor for BeaconIdentifier);
  }

  sub_1000295D4(a1, v8, type metadata accessor for BeaconIdentifier);
  v36 = type metadata accessor for BeaconKeyIndexMap();
  v37 = *(v36 + 48);
  v38 = *(v36 + 52);
  v39 = swift_allocObject();
  [v16 fileDescriptor];
  handle_from_file_descriptor = sp_key_index_map_create_handle_from_file_descriptor();

  if (!handle_from_file_descriptor)
  {
    sub_10001F1B0(v8, type metadata accessor for BeaconIdentifier);
    v41 = *(*v39 + 48);
    v42 = *(*v39 + 52);
    swift_deallocPartialClassInstance();
    return 0;
  }

  sub_10087EE70(v8, v39 + OBJC_IVAR____TtC12searchpartyd17BeaconKeyIndexMap_beaconIdentifier, type metadata accessor for BeaconIdentifier);
  *(v39 + OBJC_IVAR____TtC12searchpartyd17BeaconKeyIndexMap_sequence) = v14;
  *(v39 + OBJC_IVAR____TtC12searchpartyd17BeaconKeyIndexMap_mapHandle) = handle_from_file_descriptor;
  return v39;
}

id sub_100875000(uint64_t a1, int a2)
{
  v55 = type metadata accessor for BeaconIdentifier();
  v4 = *(*(v55 - 8) + 64);
  v5 = __chkstk_darwin(v55);
  v7 = &v52[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __chkstk_darwin(v5);
  v10 = &v52[-v9];
  __chkstk_darwin(v8);
  v11 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v52[-v13];
  v15 = type metadata accessor for URL();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v52[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_100875AD0(a1, a2 & 1, v14);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_10000B3A8(v14, &unk_101696AC0, &qword_101390A60);
    if (qword_101694A00 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_1000076D4(v20, qword_1016ABAA8);
    sub_1000295D4(a1, v7, type metadata accessor for BeaconIdentifier);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      *v23 = 141558531;
      *(v23 + 4) = 1752392040;
      *(v23 + 12) = 2081;
      type metadata accessor for UUID();
      sub_10087E3E8(&qword_101696930, &type metadata accessor for UUID);
      v56 = dispatch thunk of CustomStringConvertible.description.getter();
      v57 = v24;
      v25._countAndFlagsBits = 47;
      v25._object = 0xE100000000000000;
      String.append(_:)(v25);
      v26 = &v7[*(v55 + 20)];
      v27._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v27);

      v28 = v56;
      v29 = v57;
      sub_10001F1B0(v7, type metadata accessor for BeaconIdentifier);
      v30 = sub_1000136BC(v28, v29, &v58);

      *(v23 + 14) = v30;
      *(v23 + 22) = 2082;
      if (a2)
      {
        v31 = 0x61646E6F6365732ELL;
      }

      else
      {
        v31 = 0x7972616D6972702ELL;
      }

      if (a2)
      {
        v32 = 0xEA00000000007972;
      }

      else
      {
        v32 = 0xE800000000000000;
      }

      v33 = sub_1000136BC(v31, v32, &v58);

      *(v23 + 24) = v33;
      _os_log_impl(&_mh_execute_header, v21, v22, "no keymap URL for identifier %{private,mask.hash}s, sequence: %{public}s", v23, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      sub_10001F1B0(v7, type metadata accessor for BeaconIdentifier);
    }
  }

  else
  {
    (*(v16 + 32))(v19, v14, v15);
    v34 = objc_autoreleasePoolPush();
    sub_10087E430(v19);
    objc_autoreleasePoolPop(v34);
    URL.path.getter();
    v35 = String._bridgeToObjectiveC()();

    v36 = [objc_opt_self() fileHandleForReadingAtPath:v35];

    if (v36)
    {
      (*(v16 + 8))(v19, v15);
      return v36;
    }

    if (qword_101694A00 != -1)
    {
      swift_once();
    }

    v38 = type metadata accessor for Logger();
    sub_1000076D4(v38, qword_1016ABAA8);
    sub_1000295D4(a1, v10, type metadata accessor for BeaconIdentifier);
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v58 = v53;
      *v41 = 141558531;
      *(v41 + 4) = 1752392040;
      *(v41 + 12) = 2081;
      type metadata accessor for UUID();
      v54 = a2;
      sub_10087E3E8(&qword_101696930, &type metadata accessor for UUID);
      v56 = dispatch thunk of CustomStringConvertible.description.getter();
      v57 = v42;
      v43._countAndFlagsBits = 47;
      v43._object = 0xE100000000000000;
      String.append(_:)(v43);
      v44 = &v10[*(v55 + 20)];
      v45._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v45);

      v46 = v56;
      v47 = v57;
      sub_10001F1B0(v10, type metadata accessor for BeaconIdentifier);
      v48 = sub_1000136BC(v46, v47, &v58);

      *(v41 + 14) = v48;
      *(v41 + 22) = 2082;
      if (v54)
      {
        v49 = 0x61646E6F6365732ELL;
      }

      else
      {
        v49 = 0x7972616D6972702ELL;
      }

      if (v54)
      {
        v50 = 0xEA00000000007972;
      }

      else
      {
        v50 = 0xE800000000000000;
      }

      v51 = sub_1000136BC(v49, v50, &v58);

      *(v41 + 24) = v51;
      _os_log_impl(&_mh_execute_header, v39, v40, "could not open keymap for reading identifier: %{private,mask.hash}s, sequence: %{public}s", v41, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      sub_10001F1B0(v10, type metadata accessor for BeaconIdentifier);
    }

    (*(v16 + 8))(v19, v15);
  }

  return 0;
}

uint64_t sub_100875AD0@<X0>(uint64_t a1@<X0>, char a2@<W1>, char *a3@<X8>)
{
  v35 = a3;
  v5 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v31 - v7;
  v9 = type metadata accessor for DirectorySequence();
  v33 = *(v9 - 8);
  v34 = v9;
  v10 = *(v33 + 64);
  __chkstk_darwin(v9);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for URL();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v31 - v19;
  sub_100875E7C(a1, a2 & 1, &v31 - v19);
  v21 = [objc_opt_self() defaultManager];
  v32 = v20;
  NSFileManager.flatSequence(at:includingPropertiesForKeys:)();

  v38 = v12;
  DirectorySequence.next()();
  v36 = v14;
  v22 = *(v14 + 48);
  if (v22(v8, 1, v13) == 1)
  {
LABEL_7:
    (*(v33 + 8))(v38, v34);
    v26 = v36;
    (*(v36 + 8))(v32, v13);
    v27 = 1;
    v28 = v35;
  }

  else
  {
    v37 = *(v36 + 32);
    v23 = (v36 + 8);
    while (1)
    {
      v37(v18, v8, v13);
      if (URL.pathExtension.getter() == 0x70616D79656BLL && v24 == 0xE600000000000000)
      {
        break;
      }

      v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v25)
      {
        goto LABEL_9;
      }

      (*v23)(v18, v13);
      DirectorySequence.next()();
      if (v22(v8, 1, v13) == 1)
      {
        goto LABEL_7;
      }
    }

LABEL_9:
    (*(v33 + 8))(v38, v34);
    (*v23)(v32, v13);
    v29 = v35;
    v37(v35, v18, v13);
    v28 = v29;
    v27 = 0;
    v26 = v36;
  }

  return (*(v26 + 56))(v28, v27, 1, v13);
}

uint64_t sub_100875E7C@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v22[1] = a3;
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v12 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = v22 - v13;
  UUID.uuidString.getter();
  URL.appendingPathComponent(_:isDirectory:)();

  v15 = a1 + *(type metadata accessor for BeaconIdentifier() + 20);
  UUID.uuidString.getter();
  URL.appendingPathComponent(_:isDirectory:)();

  v16 = *(v8 + 8);
  v16(v12, v7);
  v17 = 112;
  if (a2)
  {
    v17 = 128;
  }

  v18 = 120;
  if (a2)
  {
    v18 = 136;
  }

  v19 = *(v4 + v17);
  v20 = *(v4 + v18);
  URL.appendingPathComponent(_:isDirectory:)();
  return (v16)(v14, v7);
}

Swift::Int sub_100876024(uint64_t a1)
{
  v3 = v1;
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_10087E3E8(&qword_1016967B0, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  v4 = v1 + *(type metadata accessor for BeaconIdentifier() + 20);
  dispatch thunk of Hashable.hash(into:)();
  *(v3 + *(a1 + 20));
  *(v3 + *(a1 + 20));
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10087613C(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  type metadata accessor for UUID();
  sub_10087E3E8(&qword_1016967B0, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  v5 = v2 + *(type metadata accessor for BeaconIdentifier() + 20);
  dispatch thunk of Hashable.hash(into:)();
  *(v4 + *(a2 + 20));
  String.hash(into:)();
}

Swift::Int sub_100876248(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_10087E3E8(&qword_1016967B0, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  v5 = v2 + *(type metadata accessor for BeaconIdentifier() + 20);
  dispatch thunk of Hashable.hash(into:)();
  *(v4 + *(a2 + 20));
  *(v4 + *(a2 + 20));
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1008763A8()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177B520);
  sub_1000076D4(v0, qword_10177B520);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1008764E8(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t), unint64_t a6)
{
  v14 = *(a1 + qword_1016AC3A8);
  if (__OFSUB__(v14, 1))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = a6;
  v9 = a3;
  v10 = a2;
  v8 = a1;
  v26 = a5;
  v6 = qword_1016AC3C8;
  if (v14 - 1 >= *(a1 + qword_1016AC3C8))
  {
    goto LABEL_6;
  }

  static os_log_type_t.error.getter();
  if (qword_101694A20 != -1)
  {
    goto LABEL_20;
  }

  while (1)
  {
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    result = swift_allocObject();
    *(result + 16) = xmmword_10138BBE0;
    *(result + 56) = &type metadata for Int;
    *(result + 64) = &protocol witness table for Int;
    *(result + 32) = v14;
    v16 = *&v6[v8];
    v17 = __OFADD__(v16, 1);
    v18 = v16 + 1;
    if (v17)
    {
      break;
    }

    *(result + 96) = &type metadata for Int;
    *(result + 104) = &protocol witness table for Int;
    *(result + 72) = v18;
    os_log(_:dso:log:_:_:)();

LABEL_6:
    v28 = v6;
    v6 = v7;
    v7 = Data._Representation.subscript.getter();
    v13 = qword_1016AC3C0;
    v11 = *(v8 + qword_1016AC3C0);
    v14 = qword_1016AC3D0;
    swift_beginAccess();
    v12 = *(v8 + v14);
    sub_100017D5C(v10, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v8 + v14) = v12;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
LABEL_16:
      v12 = v26(v12);
      *(v8 + v14) = v12;
    }

    if (*(v12 + 16) <= v7)
    {
      __break(1u);
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    sub_100017D5C(v10, v9);
    v7 = v12 + 8 * v7 + 32;
    (v6)(v27, v10, v9, v11);
    sub_100016590(v27[0], v27[1]);
    *(v8 + v14) = v12;
    swift_endAccess();
    result = sub_100016590(v10, v9);
    v20 = *(v8 + v13);
    if (v20 < *(v8 + qword_1016AC3B0))
    {
      *(v8 + qword_1016AC3B0) = v20;
    }

    v21 = v28;
    if (*(v8 + qword_1016AC3B8) < v20)
    {
      *(v8 + qword_1016AC3B8) = v20;
    }

    v22 = __CFADD__(v20, 1);
    v23 = v20 + 1;
    if (v22)
    {
      goto LABEL_18;
    }

    *(v8 + v13) = v23;
    v24 = *&v21[v8];
    v17 = __OFADD__(v24, 1);
    v25 = v24 + 1;
    if (!v17)
    {
      *&v21[v8] = v25;
      return result;
    }

LABEL_19:
    __break(1u);
LABEL_20:
    swift_once();
  }

  __break(1u);
  return result;
}

uint64_t *sub_100876778()
{
  v1 = v0;
  v117 = type metadata accessor for URLResourceValues();
  v116 = *(v117 - 8);
  v2 = *(v116 + 64);
  __chkstk_darwin(v117);
  v118 = &v104 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = type metadata accessor for URL();
  v127 = *(v126 - 8);
  v4 = *(v127 + 64);
  v5 = __chkstk_darwin(v126);
  v115 = &v104 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v125 = &v104 - v8;
  __chkstk_darwin(v7);
  v10 = &v104 - v9;
  v11 = qword_1016AC3C8;
  v12 = *(v0 + qword_1016AC3A8);
  if (*(v0 + qword_1016AC3C8) < v12)
  {
    static os_log_type_t.error.getter();
    if (qword_101694A20 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_10138BBE0;
    *(v13 + 56) = &type metadata for Int;
    *(v13 + 64) = &protocol witness table for Int;
    *(v13 + 32) = v12;
    v14 = *(v0 + v11);
    *(v13 + 96) = &type metadata for Int;
    *(v13 + 104) = &protocol witness table for Int;
    *(v13 + 72) = v14;
    os_log(_:dso:log:_:_:)();
  }

  v134 = 32;
  v15 = sub_100260884(&v134, &v135);
  v17 = v16;
  v133 = *(v0 + qword_1016AC3B0);
  v18 = sub_100260884(&v133, &v134);
  v20 = v19;
  v132 = *(v0 + qword_1016AC3B8);
  v21 = sub_100260884(&v132, &v133);
  v23 = v22;
  v24 = type metadata accessor for __DataStorage();
  v25 = *(v24 + 48);
  v26 = *(v24 + 52);
  swift_allocObject();
  v27 = __DataStorage.init(length:)();
  v141 = 0x102000000000;
  v142 = (v27 | 0x4000000000000000);
  Data._Representation.subscript.setter();
  Data._Representation.subscript.setter();
  Data._Representation.subscript.setter();
  Data._Representation.subscript.setter();
  v122 = v15;
  v123 = v17;
  v28 = v124;
  sub_10087DED0(v15, v17);
  v121 = v18;
  v124 = v20;
  sub_10087DED0(v18, v20);
  v119 = v21;
  v120 = v23;
  sub_10087DED0(v21, v23);
  v29 = [objc_opt_self() defaultManager];
  sub_100008BB8(0, &qword_10169F448, NSFileManager_ptr);
  v30 = qword_1016AC3A0;
  URL.deletingLastPathComponent()();
  static NSFileManager.createDirectoryIfNecessary(url:attributes:)();
  v31 = v127;
  v32 = v127 + 8;
  v33 = v10;
  v34 = v126;
  v114 = *(v127 + 8);
  v114(v33, v126);
  URL.path.getter();
  v35 = String._bridgeToObjectiveC()();

  v36 = [v29 fileExistsAtPath:v35];

  if ((v36 & 1) == 0)
  {
    URL.path.getter();
    v37 = String._bridgeToObjectiveC()();

    [v29 createFileAtPath:v37 contents:0 attributes:0];
  }

  sub_100008BB8(0, &unk_1016B2A60, NSFileHandle_ptr);
  v39 = *(v31 + 16);
  v38 = v31 + 16;
  v40 = v125;
  v41 = v34;
  v42 = v39;
  v39(v125, v1 + v30, v41);
  v43 = sub_100878D64(v40, &selRef_fileHandleForUpdatingURL_error_);
  if (v28)
  {
    sub_100016590(v141, v142);

LABEL_9:
    sub_100016590(v119, v120);
    sub_100016590(v121, v124);
    v44 = v122;
    v45 = v123;
    return sub_100016590(v44, v45);
  }

  v46 = v38;
  v47 = v43;
  v127 = v46;
  v113 = v32;
  v135 = 0;
  v48 = [v43 truncateAtOffset:0 error:&v135];
  v49 = v135;
  if ((v48 & 1) == 0)
  {
    v55 = v135;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    sub_100016590(v119, v120);
    sub_100016590(v121, v124);
    sub_100016590(v122, v123);
LABEL_13:
    v44 = v141;
    v45 = v142;
    return sub_100016590(v44, v45);
  }

  v112 = v42;
  v51 = v141;
  v50 = v142;
  v52 = v47;
  v135 = v141;
  v136 = v142;
  v53 = v49;
  sub_100017D5C(v51, v50);
  v54 = sub_1000E0A3C();
  v125 = v52;
  NSFileHandle.write<A>(contentsOf:)();
  v111 = v54;
  sub_100016590(v135, v136);
  v57 = v125;
  NSFileHandle.seekToEnd()();
  if (v58)
  {
    sub_100016590(v51, v50);

    goto LABEL_9;
  }

  v110 = 0;
  sub_1000BC4D4(&qword_1016ABE90, &qword_1013D7400);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_101385D80;
  *(inited + 32) = NSFileProtectionKey;
  *(inited + 40) = NSFileProtectionCompleteUntilFirstUserAuthentication;
  v60 = NSFileProtectionKey;
  v61 = NSFileProtectionCompleteUntilFirstUserAuthentication;
  v62 = sub_100908390(inited);
  swift_setDeallocating();
  sub_10000B3A8(inited + 32, &unk_1016B14F0, &qword_1013BFD10);
  v63 = v118;
  URLResourceValues.init()();
  sub_100695108(v62);

  type metadata accessor for FileAttributeKey(0);
  sub_10087E3E8(&qword_1016964F0, type metadata accessor for FileAttributeKey);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  URL.path.getter();
  v65 = String._bridgeToObjectiveC()();

  v135 = 0;
  v66 = [v29 setAttributes:isa ofItemAtPath:v65 error:&v135];

  if ((v66 & 1) == 0)
  {
    v72 = v135;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    sub_100016590(v119, v120);
    sub_100016590(v121, v124);
    sub_100016590(v122, v123);
    (*(v116 + 8))(v63, v117);
    goto LABEL_13;
  }

  v109 = v29;
  v67 = v135;
  URLResourceValues.isExcludedFromBackup.setter();
  v68 = v115;
  v69 = v126;
  v112(v115, v1 + v30, v126);
  v70 = v110;
  URL.setResourceValues(_:)();
  v71 = v63;
  if (v70)
  {

    sub_100016590(v119, v120);
    sub_100016590(v121, v124);
    sub_100016590(v122, v123);
    v114(v68, v69);
    (*(v116 + 8))(v63, v117);
    goto LABEL_13;
  }

  v73 = static Array._allocateBufferUninitialized(minimumCapacity:)();
  v73[2] = 256;
  bzero(v73 + 4, 0x800uLL);
  v131 = v73;
  v74 = static Array._allocateBufferUninitialized(minimumCapacity:)();
  *(v74 + 16) = 256;
  bzero((v74 + 32), 0x800uLL);
  v130 = v74;
  v75 = objc_autoreleasePoolPush();
  sub_100878EBC(v1, 0, &v130, &v131);
  for (i = 1; ; ++i)
  {
    objc_autoreleasePoolPop(v75);
    if (i == 256)
    {
      break;
    }

    v75 = objc_autoreleasePoolPush();
    sub_100878EBC(v1, i, &v130, &v131);
  }

  v135 = 0;
  v77 = v125;
  if ([v125 seekToOffset:32 error:&v135])
  {
    v78 = v130;
    v79 = v135;
    v80 = v131;
    v81 = objc_autoreleasePoolPush();
    v82 = v111;
    if (!*(v78 + 16))
    {
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
    }

    v83 = v81;
    v84 = 0;
    v85 = -255;
    v104 = v78;
    while (1)
    {
      v129 = *(v78 + v84 + 32);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v80 = sub_10060739C(v80);
      }

      if ((v85 + 255) >= *(v80 + 2))
      {
        goto LABEL_54;
      }

      v86 = v82;
      v87 = sub_100260884(&v80[v84 + 32], &v80[v84 + 40]);
      v89 = v88;
      v90 = sub_100260884(&v129, &v130);
      v107 = v87;
      v139 = v87;
      v140 = v89;
      v127 = v89;
      v137 = &type metadata for Data;
      v138 = &protocol witness table for Data;
      v108 = v90;
      v135 = v90;
      v136 = v91;
      v112 = v91;
      result = sub_1000035D0(&v135, &type metadata for Data);
      v92 = *result;
      v93 = result[1];
      v94 = v93 >> 62;
      v106 = v80;
      v105 = v83;
      v110 = 0;
      if ((v93 >> 62) > 1)
      {
        if (v94 != 2)
        {
          memset(v128, 0, 14);
          v95 = v107;
          sub_100017D5C(v107, v127);
          sub_100017D5C(v108, v112);
          goto LABEL_44;
        }

        v97 = *(v92 + 16);
        v96 = *(v92 + 24);
        v95 = v107;
        sub_100017D5C(v107, v127);
        sub_100017D5C(v108, v112);
        result = __DataStorage._bytes.getter();
        if (result)
        {
          result = __DataStorage._offset.getter();
          if (__OFSUB__(v97, result))
          {
            goto LABEL_57;
          }
        }

        if (__OFSUB__(v96, v97))
        {
          goto LABEL_56;
        }

        __DataStorage._length.getter();
        Data._Representation.append(contentsOf:)();
        v82 = v111;
      }

      else
      {
        if (!v94)
        {
          v128[0] = v92;
          LOWORD(v128[1]) = v93;
          BYTE2(v128[1]) = BYTE2(v93);
          BYTE3(v128[1]) = BYTE3(v93);
          BYTE4(v128[1]) = BYTE4(v93);
          BYTE5(v128[1]) = BYTE5(v93);
          v95 = v107;
          sub_100017D5C(v107, v127);
          sub_100017D5C(v108, v112);
LABEL_44:
          Data._Representation.append(contentsOf:)();
          v82 = v86;
          goto LABEL_45;
        }

        v98 = v92;
        v95 = v107;
        if (v92 >> 32 < v92)
        {
          __break(1u);
LABEL_56:
          __break(1u);
LABEL_57:
          __break(1u);
LABEL_58:
          __break(1u);
          return result;
        }

        sub_100017D5C(v107, v127);
        sub_100017D5C(v108, v112);
        if (__DataStorage._bytes.getter())
        {
          result = __DataStorage._offset.getter();
          if (__OFSUB__(v98, result))
          {
            goto LABEL_58;
          }
        }

        v82 = v111;
        __DataStorage._length.getter();
        Data._Representation.append(contentsOf:)();
      }

LABEL_45:
      sub_100007BAC(&v135);
      v99 = v139;
      v100 = v140;
      v135 = v139;
      v136 = v140;
      v101 = v110;
      NSFileHandle.write<A>(contentsOf:)();
      if (v101)
      {
        v131 = v106;
        sub_100016590(v108, v112);
        sub_100016590(v95, v127);
        sub_100016590(v99, v100);
        objc_autoreleasePoolPop(v105);

        sub_100016590(v119, v120);
        sub_100016590(v121, v124);
        sub_100016590(v122, v123);
        v114(v115, v126);
        (*(v116 + 8))(v118, v117);
        sub_100016590(v141, v142);
LABEL_52:
      }

      sub_100016590(v108, v112);
      sub_100016590(v95, v127);
      sub_100016590(v99, v100);
      objc_autoreleasePoolPop(v105);
      if (!v85)
      {
        v131 = v106;

        sub_100016590(v119, v120);
        sub_100016590(v121, v124);
        sub_100016590(v122, v123);
        v114(v115, v126);
        (*(v116 + 8))(v118, v117);
        sub_100016590(v141, v142);
        goto LABEL_52;
      }

      v83 = objc_autoreleasePoolPush();
      v78 = v104;
      v102 = v85 + 256;
      ++v85;
      v84 += 8;
      v80 = v106;
      if (v102 >= *(v104 + 16))
      {
        goto LABEL_53;
      }
    }
  }

  v103 = v135;
  _convertNSErrorToError(_:)();

  swift_willThrow();
  sub_100016590(v119, v120);
  sub_100016590(v121, v124);
  sub_100016590(v122, v123);
  v114(v68, v126);
  (*(v116 + 8))(v71, v117);
  sub_100016590(v141, v142);
}

uint64_t *sub_100877A44()
{
  v1 = v0;
  v117 = type metadata accessor for URLResourceValues();
  v116 = *(v117 - 8);
  v2 = *(v116 + 64);
  __chkstk_darwin(v117);
  v118 = &v104 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = type metadata accessor for URL();
  v127 = *(v126 - 8);
  v4 = *(v127 + 64);
  v5 = __chkstk_darwin(v126);
  v115 = &v104 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v125 = &v104 - v8;
  __chkstk_darwin(v7);
  v10 = &v104 - v9;
  v11 = qword_1016AC3C8;
  v12 = *(v0 + qword_1016AC3A8);
  if (*(v0 + qword_1016AC3C8) < v12)
  {
    static os_log_type_t.error.getter();
    if (qword_101694A20 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_10138BBE0;
    *(v13 + 56) = &type metadata for Int;
    *(v13 + 64) = &protocol witness table for Int;
    *(v13 + 32) = v12;
    v14 = *(v0 + v11);
    *(v13 + 96) = &type metadata for Int;
    *(v13 + 104) = &protocol witness table for Int;
    *(v13 + 72) = v14;
    os_log(_:dso:log:_:_:)();
  }

  v134 = 10;
  v15 = sub_100260884(&v134, &v135);
  v17 = v16;
  v133 = *(v0 + qword_1016AC3B0);
  v18 = sub_100260884(&v133, &v134);
  v20 = v19;
  v132 = *(v0 + qword_1016AC3B8);
  v21 = sub_100260884(&v132, &v133);
  v23 = v22;
  v24 = type metadata accessor for __DataStorage();
  v25 = *(v24 + 48);
  v26 = *(v24 + 52);
  swift_allocObject();
  v27 = __DataStorage.init(length:)();
  v141 = 0x102000000000;
  v142 = (v27 | 0x4000000000000000);
  Data._Representation.subscript.setter();
  Data._Representation.subscript.setter();
  Data._Representation.subscript.setter();
  Data._Representation.subscript.setter();
  v122 = v15;
  v123 = v17;
  v28 = v124;
  sub_10087DED0(v15, v17);
  v121 = v18;
  v124 = v20;
  sub_10087DED0(v18, v20);
  v119 = v21;
  v120 = v23;
  sub_10087DED0(v21, v23);
  v29 = [objc_opt_self() defaultManager];
  sub_100008BB8(0, &qword_10169F448, NSFileManager_ptr);
  v30 = qword_1016AC3A0;
  URL.deletingLastPathComponent()();
  static NSFileManager.createDirectoryIfNecessary(url:attributes:)();
  v31 = v127;
  v32 = v127 + 8;
  v33 = v10;
  v34 = v126;
  v114 = *(v127 + 8);
  v114(v33, v126);
  URL.path.getter();
  v35 = String._bridgeToObjectiveC()();

  v36 = [v29 fileExistsAtPath:v35];

  if ((v36 & 1) == 0)
  {
    URL.path.getter();
    v37 = String._bridgeToObjectiveC()();

    [v29 createFileAtPath:v37 contents:0 attributes:0];
  }

  sub_100008BB8(0, &unk_1016B2A60, NSFileHandle_ptr);
  v39 = *(v31 + 16);
  v38 = v31 + 16;
  v40 = v125;
  v41 = v34;
  v42 = v39;
  v39(v125, v1 + v30, v41);
  v43 = sub_100878D64(v40, &selRef_fileHandleForUpdatingURL_error_);
  if (v28)
  {
    sub_100016590(v141, v142);

LABEL_9:
    sub_100016590(v119, v120);
    sub_100016590(v121, v124);
    v44 = v122;
    v45 = v123;
    return sub_100016590(v44, v45);
  }

  v46 = v38;
  v47 = v43;
  v127 = v46;
  v113 = v32;
  v135 = 0;
  v48 = [v43 truncateAtOffset:0 error:&v135];
  v49 = v135;
  if ((v48 & 1) == 0)
  {
    v55 = v135;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    sub_100016590(v119, v120);
    sub_100016590(v121, v124);
    sub_100016590(v122, v123);
LABEL_13:
    v44 = v141;
    v45 = v142;
    return sub_100016590(v44, v45);
  }

  v112 = v42;
  v51 = v141;
  v50 = v142;
  v52 = v47;
  v135 = v141;
  v136 = v142;
  v53 = v49;
  sub_100017D5C(v51, v50);
  v54 = sub_1000E0A3C();
  v125 = v52;
  NSFileHandle.write<A>(contentsOf:)();
  v111 = v54;
  sub_100016590(v135, v136);
  v57 = v125;
  NSFileHandle.seekToEnd()();
  if (v58)
  {
    sub_100016590(v51, v50);

    goto LABEL_9;
  }

  v110 = 0;
  sub_1000BC4D4(&qword_1016ABE90, &qword_1013D7400);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_101385D80;
  *(inited + 32) = NSFileProtectionKey;
  *(inited + 40) = NSFileProtectionCompleteUntilFirstUserAuthentication;
  v60 = NSFileProtectionKey;
  v61 = NSFileProtectionCompleteUntilFirstUserAuthentication;
  v62 = sub_100908390(inited);
  swift_setDeallocating();
  sub_10000B3A8(inited + 32, &unk_1016B14F0, &qword_1013BFD10);
  v63 = v118;
  URLResourceValues.init()();
  sub_100695108(v62);

  type metadata accessor for FileAttributeKey(0);
  sub_10087E3E8(&qword_1016964F0, type metadata accessor for FileAttributeKey);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  URL.path.getter();
  v65 = String._bridgeToObjectiveC()();

  v135 = 0;
  v66 = [v29 setAttributes:isa ofItemAtPath:v65 error:&v135];

  if ((v66 & 1) == 0)
  {
    v72 = v135;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    sub_100016590(v119, v120);
    sub_100016590(v121, v124);
    sub_100016590(v122, v123);
    (*(v116 + 8))(v63, v117);
    goto LABEL_13;
  }

  v109 = v29;
  v67 = v135;
  URLResourceValues.isExcludedFromBackup.setter();
  v68 = v115;
  v69 = v126;
  v112(v115, v1 + v30, v126);
  v70 = v110;
  URL.setResourceValues(_:)();
  v71 = v63;
  if (v70)
  {

    sub_100016590(v119, v120);
    sub_100016590(v121, v124);
    sub_100016590(v122, v123);
    v114(v68, v69);
    (*(v116 + 8))(v63, v117);
    goto LABEL_13;
  }

  v73 = static Array._allocateBufferUninitialized(minimumCapacity:)();
  v73[2] = 256;
  bzero(v73 + 4, 0x800uLL);
  v131 = v73;
  v74 = static Array._allocateBufferUninitialized(minimumCapacity:)();
  *(v74 + 16) = 256;
  bzero((v74 + 32), 0x800uLL);
  v130 = v74;
  v75 = objc_autoreleasePoolPush();
  sub_100879518(v1, 0, &v130, &v131);
  for (i = 1; ; ++i)
  {
    objc_autoreleasePoolPop(v75);
    if (i == 256)
    {
      break;
    }

    v75 = objc_autoreleasePoolPush();
    sub_100879518(v1, i, &v130, &v131);
  }

  v135 = 0;
  v77 = v125;
  if ([v125 seekToOffset:32 error:&v135])
  {
    v78 = v130;
    v79 = v135;
    v80 = v131;
    v81 = objc_autoreleasePoolPush();
    v82 = v111;
    if (!*(v78 + 16))
    {
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
    }

    v83 = v81;
    v84 = 0;
    v85 = -255;
    v104 = v78;
    while (1)
    {
      v129 = *(v78 + v84 + 32);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v80 = sub_10060739C(v80);
      }

      if ((v85 + 255) >= *(v80 + 2))
      {
        goto LABEL_54;
      }

      v86 = v82;
      v87 = sub_100260884(&v80[v84 + 32], &v80[v84 + 40]);
      v89 = v88;
      v90 = sub_100260884(&v129, &v130);
      v107 = v87;
      v139 = v87;
      v140 = v89;
      v127 = v89;
      v137 = &type metadata for Data;
      v138 = &protocol witness table for Data;
      v108 = v90;
      v135 = v90;
      v136 = v91;
      v112 = v91;
      result = sub_1000035D0(&v135, &type metadata for Data);
      v92 = *result;
      v93 = result[1];
      v94 = v93 >> 62;
      v106 = v80;
      v105 = v83;
      v110 = 0;
      if ((v93 >> 62) > 1)
      {
        if (v94 != 2)
        {
          memset(v128, 0, 14);
          v95 = v107;
          sub_100017D5C(v107, v127);
          sub_100017D5C(v108, v112);
          goto LABEL_44;
        }

        v97 = *(v92 + 16);
        v96 = *(v92 + 24);
        v95 = v107;
        sub_100017D5C(v107, v127);
        sub_100017D5C(v108, v112);
        result = __DataStorage._bytes.getter();
        if (result)
        {
          result = __DataStorage._offset.getter();
          if (__OFSUB__(v97, result))
          {
            goto LABEL_57;
          }
        }

        if (__OFSUB__(v96, v97))
        {
          goto LABEL_56;
        }

        __DataStorage._length.getter();
        Data._Representation.append(contentsOf:)();
        v82 = v111;
      }

      else
      {
        if (!v94)
        {
          v128[0] = v92;
          LOWORD(v128[1]) = v93;
          BYTE2(v128[1]) = BYTE2(v93);
          BYTE3(v128[1]) = BYTE3(v93);
          BYTE4(v128[1]) = BYTE4(v93);
          BYTE5(v128[1]) = BYTE5(v93);
          v95 = v107;
          sub_100017D5C(v107, v127);
          sub_100017D5C(v108, v112);
LABEL_44:
          Data._Representation.append(contentsOf:)();
          v82 = v86;
          goto LABEL_45;
        }

        v98 = v92;
        v95 = v107;
        if (v92 >> 32 < v92)
        {
          __break(1u);
LABEL_56:
          __break(1u);
LABEL_57:
          __break(1u);
LABEL_58:
          __break(1u);
          return result;
        }

        sub_100017D5C(v107, v127);
        sub_100017D5C(v108, v112);
        if (__DataStorage._bytes.getter())
        {
          result = __DataStorage._offset.getter();
          if (__OFSUB__(v98, result))
          {
            goto LABEL_58;
          }
        }

        v82 = v111;
        __DataStorage._length.getter();
        Data._Representation.append(contentsOf:)();
      }

LABEL_45:
      sub_100007BAC(&v135);
      v99 = v139;
      v100 = v140;
      v135 = v139;
      v136 = v140;
      v101 = v110;
      NSFileHandle.write<A>(contentsOf:)();
      if (v101)
      {
        v131 = v106;
        sub_100016590(v108, v112);
        sub_100016590(v95, v127);
        sub_100016590(v99, v100);
        objc_autoreleasePoolPop(v105);

        sub_100016590(v119, v120);
        sub_100016590(v121, v124);
        sub_100016590(v122, v123);
        v114(v115, v126);
        (*(v116 + 8))(v118, v117);
        sub_100016590(v141, v142);
LABEL_52:
      }

      sub_100016590(v108, v112);
      sub_100016590(v95, v127);
      sub_100016590(v99, v100);
      objc_autoreleasePoolPop(v105);
      if (!v85)
      {
        v131 = v106;

        sub_100016590(v119, v120);
        sub_100016590(v121, v124);
        sub_100016590(v122, v123);
        v114(v115, v126);
        (*(v116 + 8))(v118, v117);
        sub_100016590(v141, v142);
        goto LABEL_52;
      }

      v83 = objc_autoreleasePoolPush();
      v78 = v104;
      v102 = v85 + 256;
      ++v85;
      v84 += 8;
      v80 = v106;
      if (v102 >= *(v104 + 16))
      {
        goto LABEL_53;
      }
    }
  }

  v103 = v135;
  _convertNSErrorToError(_:)();

  swift_willThrow();
  sub_100016590(v119, v120);
  sub_100016590(v121, v124);
  sub_100016590(v122, v123);
  v114(v68, v126);
  (*(v116 + 8))(v71, v117);
  sub_100016590(v141, v142);
}

id sub_100878D64(uint64_t a1, SEL *a2)
{
  URL._bridgeToObjectiveC()(__stack_chk_guard);
  v5 = v4;
  v14 = 0;
  v6 = [swift_getObjCClassFromMetadata() *a2];

  v7 = v14;
  if (v6)
  {
    v8 = type metadata accessor for URL();
    v9 = *(*(v8 - 8) + 8);
    v10 = v7;
    v9(a1, v8);
  }

  else
  {
    v11 = v14;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v12 = type metadata accessor for URL();
    (*(*(v12 - 8) + 8))(a1, v12);
  }

  return v6;
}

uint64_t sub_100878EBC(uint64_t *a1, unint64_t a2, uint64_t *a3, uint64_t **a4)
{
  v9 = qword_1016AC3D0;
  swift_beginAccess();
  if ((a2 & 0x8000000000000000) != 0)
  {
LABEL_50:
    __break(1u);
  }

  else
  {
    v10 = *(a1 + v9);
    if (*(v10 + 16) > a2)
    {
      v4 = *(*(v10 + 8 * a2 + 32) + 16);
      v5 = *a3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *a3 = v5;
      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_4;
      }

      goto LABEL_52;
    }
  }

  __break(1u);
LABEL_52:
  v5 = sub_10060739C(v5);
  *a3 = v5;
LABEL_4:
  if (*(v5 + 16) <= a2)
  {
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  *(v5 + 8 * a2 + 32) = v4;
  if (!v4)
  {
    v9 = a4;
    a1 = *a4;
    result = swift_isUniquelyReferenced_nonNull_native();
    *a4 = a1;
    if (result)
    {
LABEL_47:
      if (a1[2] > a2)
      {
        a1[a2 + 4] = 0;
        return result;
      }

      __break(1u);
LABEL_62:
      v5 = sub_10060739C(v5);
      *a4 = v5;
      goto LABEL_43;
    }

LABEL_60:
    result = sub_10060739C(a1);
    a1 = result;
    *a4 = result;
    goto LABEL_47;
  }

  v12 = *(a1 + v9);
  if (*(v12 + 16) <= a2)
  {
    goto LABEL_56;
  }

  v13 = *(a1 + qword_1016AC3A8);
  if ((v13 * 28) >> 64 != (28 * v13) >> 63)
  {
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  v49 = a2;
  v14 = *(v12 + 8 * a2 + 32);
  v15 = 28 * v13 / 256;

  v60 = sub_100881A78(v15);
  v61 = v16;
  a2 = v14 + 56;
  v17 = 1 << *(v14 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v4 = v18 & *(v14 + 56);
  v19 = (v17 + 63) >> 6;
  v51 = v14;

  v9 = 0;
  while (v4)
  {
LABEL_18:
    v23 = *(v51 + 48) + 24 * (__clz(__rbit64(v4)) | (v9 << 6));
    v24 = *v23;
    v53 = *(v23 + 8);
    v54 = *(v23 + 16);
    v58 = &type metadata for UnsafeRawBufferPointer;
    v59 = &protocol witness table for UnsafeRawBufferPointer;
    v56 = &v54;
    p_dst = &__dst;
    v25 = sub_1000035D0(&v56, &type metadata for UnsafeRawBufferPointer);
    v26 = *v25;
    if (*v25 && (v27 = v25[1], v28 = v27 - v26, v27 != v26))
    {
      if (v28 <= 14)
      {
        *(&__dst + 6) = 0;
        *&__dst = 0;
        BYTE14(__dst) = v27 - v26;
        memcpy(&__dst, v26, v27 - v26);
        a1 = __dst;
        v29 = v48 & 0xF00000000000000 | DWORD2(__dst) | ((WORD6(__dst) | (BYTE14(__dst) << 16)) << 32);
        v5 = v53;
        sub_100017D5C(v24, v53);
        v48 = v29;
      }

      else
      {
        v37 = type metadata accessor for __DataStorage();
        v38 = *(v37 + 48);
        v39 = *(v37 + 52);
        swift_allocObject();
        sub_100017D5C(v24, v53);
        v40 = __DataStorage.init(bytes:length:)();
        v41 = v40;
        if (v28 >= 0x7FFFFFFF)
        {
          type metadata accessor for Data.RangeReference();
          a1 = swift_allocObject();
          a1[2] = 0;
          a1[3] = v28;
          v29 = v41 | 0x8000000000000000;
        }

        else
        {
          a1 = (v28 << 32);
          v29 = v40 | 0x4000000000000000;
        }

        v5 = v53;
      }
    }

    else
    {
      v5 = v53;
      sub_100017D5C(v24, v53);
      a1 = 0;
      v29 = 0xC000000000000000;
    }

    sub_100007BAC(&v56);
    v52 = v24;
    *&__dst = v24;
    *(&__dst + 1) = v5;
    v58 = &type metadata for Data;
    v59 = &protocol witness table for Data;
    v56 = a1;
    p_dst = v29;
    v30 = sub_1000035D0(&v56, &type metadata for Data);
    v31 = *v30;
    v32 = v30[1];
    v33 = v32 >> 62;
    if ((v32 >> 62) > 1)
    {
      if (v33 != 2)
      {
        a3 = v24;
        sub_100017D5C(v24, v5);
        Data._Representation.append(contentsOf:)();
        v20 = v5;
        goto LABEL_12;
      }

      a3 = *(v31 + 16);
      v34 = *(v31 + 24);
      sub_100017D5C(v52, v5);
      a1 = (v32 & 0x3FFFFFFFFFFFFFFFLL);
      v5 = __DataStorage._bytes.getter();
      if (v5)
      {
        a1 = (v32 & 0x3FFFFFFFFFFFFFFFLL);
        v35 = __DataStorage._offset.getter();
        if (__OFSUB__(a3, v35))
        {
          goto LABEL_58;
        }

        v5 += a3 - v35;
      }

      v36 = __OFSUB__(v34, a3);
      a3 = (v34 - a3);
      if (v36)
      {
        goto LABEL_55;
      }
    }

    else
    {
      if (!v33)
      {
        a3 = v24;
        v20 = v53;
        sub_100017D5C(v52, v53);
        Data._Representation.append(contentsOf:)();
        goto LABEL_12;
      }

      v42 = v31;
      v43 = v31 >> 32;
      a3 = (v43 - v42);
      if (v43 < v42)
      {
        goto LABEL_54;
      }

      sub_100017D5C(v52, v53);
      v5 = __DataStorage._bytes.getter();
      if (v5)
      {
        a1 = (v32 & 0x3FFFFFFFFFFFFFFFLL);
        if (__OFSUB__(v42, __DataStorage._offset.getter()))
        {
          goto LABEL_59;
        }
      }
    }

    __DataStorage._length.getter();
    Data._Representation.append(contentsOf:)();
    a3 = v52;
    v20 = v53;
LABEL_12:
    v4 &= v4 - 1;
    sub_100007BAC(&v56);
    v21 = *(&__dst + 1);
    v5 = __dst;
    a1 = &v60;
    Data.append(_:)();
    sub_100016590(v5, v21);
    sub_100016590(a3, v20);
  }

  while (1)
  {
    v22 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
      goto LABEL_50;
    }

    if (v22 >= v19)
    {
      break;
    }

    v4 = *(a2 + 8 * v22);
    ++v9;
    if (v4)
    {
      v9 = v22;
      goto LABEL_18;
    }
  }

  a2 = v60;
  a3 = v61;
  v44 = NSFileHandle.offset()();
  if (v45)
  {
    return sub_100016590(a2, a3);
  }

  v9 = v44;
  v5 = *a4;
  v46 = swift_isUniquelyReferenced_nonNull_native();
  *a4 = v5;
  if ((v46 & 1) == 0)
  {
    goto LABEL_62;
  }

LABEL_43:
  if (*(v5 + 16) <= v49)
  {
    __break(1u);
  }

  *(v5 + 8 * v49 + 32) = v9;
  v56 = a2;
  p_dst = a3;
  sub_1000E0A3C();
  NSFileHandle.write<A>(contentsOf:)();
  return sub_100016590(a2, a3);
}

uint64_t sub_100879518(uint64_t *a1, unint64_t a2, uint64_t *a3, uint64_t **a4)
{
  v9 = qword_1016AC3D0;
  swift_beginAccess();
  if ((a2 & 0x8000000000000000) != 0)
  {
LABEL_50:
    __break(1u);
  }

  else
  {
    v10 = *(a1 + v9);
    if (*(v10 + 16) > a2)
    {
      v4 = *(*(v10 + 8 * a2 + 32) + 16);
      v5 = *a3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *a3 = v5;
      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_4;
      }

      goto LABEL_52;
    }
  }

  __break(1u);
LABEL_52:
  v5 = sub_10060739C(v5);
  *a3 = v5;
LABEL_4:
  if (*(v5 + 16) <= a2)
  {
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  *(v5 + 8 * a2 + 32) = v4;
  if (!v4)
  {
    v9 = a4;
    a1 = *a4;
    result = swift_isUniquelyReferenced_nonNull_native();
    *a4 = a1;
    if (result)
    {
LABEL_47:
      if (a1[2] > a2)
      {
        a1[a2 + 4] = 0;
        return result;
      }

      __break(1u);
LABEL_62:
      v5 = sub_10060739C(v5);
      *a4 = v5;
      goto LABEL_43;
    }

LABEL_60:
    result = sub_10060739C(a1);
    a1 = result;
    *a4 = result;
    goto LABEL_47;
  }

  v12 = *(a1 + v9);
  if (*(v12 + 16) <= a2)
  {
    goto LABEL_56;
  }

  v13 = *(a1 + qword_1016AC3A8);
  v14 = (v13 * 6) >> 64;
  v15 = 6 * v13;
  if (v14 != v15 >> 63)
  {
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  v51 = a2;
  v16 = *(v12 + 8 * a2 + 32);
  v17 = v15 / 256;

  v62 = sub_100881A78(v17);
  v63 = v18;
  a2 = v16 + 56;
  v19 = 1 << *(v16 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v4 = v20 & *(v16 + 56);
  v21 = (v19 + 63) >> 6;
  v53 = v16;

  v9 = 0;
  while (v4)
  {
LABEL_18:
    v25 = *(v53 + 48) + 24 * (__clz(__rbit64(v4)) | (v9 << 6));
    v26 = *v25;
    v55 = *(v25 + 8);
    v56 = *(v25 + 16);
    v60 = &type metadata for UnsafeRawBufferPointer;
    v61 = &protocol witness table for UnsafeRawBufferPointer;
    v58 = &v56;
    p_dst = &__dst;
    v27 = sub_1000035D0(&v58, &type metadata for UnsafeRawBufferPointer);
    v28 = *v27;
    if (*v27 && (v29 = v27[1], v30 = v29 - v28, v29 != v28))
    {
      if (v30 <= 14)
      {
        *(&__dst + 6) = 0;
        *&__dst = 0;
        BYTE14(__dst) = v29 - v28;
        memcpy(&__dst, v28, v29 - v28);
        a1 = __dst;
        v31 = v50 & 0xF00000000000000 | DWORD2(__dst) | ((WORD6(__dst) | (BYTE14(__dst) << 16)) << 32);
        v5 = v55;
        sub_100017D5C(v26, v55);
        v50 = v31;
      }

      else
      {
        v39 = type metadata accessor for __DataStorage();
        v40 = *(v39 + 48);
        v41 = *(v39 + 52);
        swift_allocObject();
        sub_100017D5C(v26, v55);
        v42 = __DataStorage.init(bytes:length:)();
        v43 = v42;
        if (v30 >= 0x7FFFFFFF)
        {
          type metadata accessor for Data.RangeReference();
          a1 = swift_allocObject();
          a1[2] = 0;
          a1[3] = v30;
          v31 = v43 | 0x8000000000000000;
        }

        else
        {
          a1 = (v30 << 32);
          v31 = v42 | 0x4000000000000000;
        }

        v5 = v55;
      }
    }

    else
    {
      v5 = v55;
      sub_100017D5C(v26, v55);
      a1 = 0;
      v31 = 0xC000000000000000;
    }

    sub_100007BAC(&v58);
    v54 = v26;
    *&__dst = v26;
    *(&__dst + 1) = v5;
    v60 = &type metadata for Data;
    v61 = &protocol witness table for Data;
    v58 = a1;
    p_dst = v31;
    v32 = sub_1000035D0(&v58, &type metadata for Data);
    v33 = *v32;
    v34 = v32[1];
    v35 = v34 >> 62;
    if ((v34 >> 62) > 1)
    {
      if (v35 != 2)
      {
        a3 = v26;
        sub_100017D5C(v26, v5);
        Data._Representation.append(contentsOf:)();
        v22 = v5;
        goto LABEL_12;
      }

      a3 = *(v33 + 16);
      v36 = *(v33 + 24);
      sub_100017D5C(v54, v5);
      a1 = (v34 & 0x3FFFFFFFFFFFFFFFLL);
      v5 = __DataStorage._bytes.getter();
      if (v5)
      {
        a1 = (v34 & 0x3FFFFFFFFFFFFFFFLL);
        v37 = __DataStorage._offset.getter();
        if (__OFSUB__(a3, v37))
        {
          goto LABEL_58;
        }

        v5 += a3 - v37;
      }

      v38 = __OFSUB__(v36, a3);
      a3 = (v36 - a3);
      if (v38)
      {
        goto LABEL_55;
      }
    }

    else
    {
      if (!v35)
      {
        a3 = v26;
        v22 = v55;
        sub_100017D5C(v54, v55);
        Data._Representation.append(contentsOf:)();
        goto LABEL_12;
      }

      v44 = v33;
      v45 = v33 >> 32;
      a3 = (v45 - v44);
      if (v45 < v44)
      {
        goto LABEL_54;
      }

      sub_100017D5C(v54, v55);
      v5 = __DataStorage._bytes.getter();
      if (v5)
      {
        a1 = (v34 & 0x3FFFFFFFFFFFFFFFLL);
        if (__OFSUB__(v44, __DataStorage._offset.getter()))
        {
          goto LABEL_59;
        }
      }
    }

    __DataStorage._length.getter();
    Data._Representation.append(contentsOf:)();
    a3 = v54;
    v22 = v55;
LABEL_12:
    v4 &= v4 - 1;
    sub_100007BAC(&v58);
    v23 = *(&__dst + 1);
    v5 = __dst;
    a1 = &v62;
    Data.append(_:)();
    sub_100016590(v5, v23);
    sub_100016590(a3, v22);
  }

  while (1)
  {
    v24 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
      goto LABEL_50;
    }

    if (v24 >= v21)
    {
      break;
    }

    v4 = *(a2 + 8 * v24);
    ++v9;
    if (v4)
    {
      v9 = v24;
      goto LABEL_18;
    }
  }

  a2 = v62;
  a3 = v63;
  v46 = NSFileHandle.offset()();
  if (v47)
  {
    return sub_100016590(a2, a3);
  }

  v9 = v46;
  v5 = *a4;
  v48 = swift_isUniquelyReferenced_nonNull_native();
  *a4 = v5;
  if ((v48 & 1) == 0)
  {
    goto LABEL_62;
  }

LABEL_43:
  if (*(v5 + 16) <= v51)
  {
    __break(1u);
  }

  *(v5 + 8 * v51 + 32) = v9;
  v58 = a2;
  p_dst = a3;
  sub_1000E0A3C();
  NSFileHandle.write<A>(contentsOf:)();
  return sub_100016590(a2, a3);
}

void sub_100879B74(uint64_t a1, unsigned int a2)
{
  v4 = v2;
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = objc_autoreleasePoolPush();
  sub_10087E430(a1);
  if (v3)
  {
    objc_autoreleasePoolPop(v12);
  }

  else
  {
    v43 = a2;
    v14 = v13;
    objc_autoreleasePoolPop(v12);
    sub_100008BB8(0, &unk_1016B2A60, NSFileHandle_ptr);
    (*(v8 + 16))(v11, a1, v7);
    v15 = sub_100878D64(v11, &selRef_fileHandleForReadingFromURL_error_);
    v16 = v15;
    v17 = v43;
    if (v14 <= v43)
    {
      v18 = v43;
    }

    else
    {
      v18 = v14;
    }

    v41 = qword_1016AC3B0;
    if (v18 < *(v4 + qword_1016AC3B0))
    {
      *(v4 + v41) = v18;
    }

    v40 = qword_1016AC3B8;
    if (*(v4 + qword_1016AC3B8) < HIDWORD(v14))
    {
      *(v4 + v40) = HIDWORD(v14);
    }

    v48[0] = 0;
    if ([v15 seekToOffset:4128 error:v48])
    {
      v45 = qword_1016AC3D0;
      v19 = v48[0];
      for (i = v16; ; v16 = i)
      {
        v20 = objc_autoreleasePoolPush();
        v21 = [v16 readDataOfLength:32];
        v22 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v24 = v23;

        v25 = v24 >> 62;
        if ((v24 >> 62) > 1)
        {
          if (v25 != 2)
          {
            break;
          }

          v28 = *(v22 + 16);
          v27 = *(v22 + 24);
          v29 = __OFSUB__(v27, v28);
          v26 = v27 - v28;
          if (v29)
          {
            goto LABEL_38;
          }
        }

        else if (v25)
        {
          LODWORD(v26) = HIDWORD(v22) - v22;
          if (__OFSUB__(HIDWORD(v22), v22))
          {
            goto LABEL_37;
          }

          v26 = v26;
        }

        else
        {
          v26 = BYTE6(v24);
        }

        if (v26 < 32)
        {
          break;
        }

        sub_100017D5C(v22, v24);
        sub_10087A8D0(v22, v24, &v49);
        v46 = v20;
        v30 = v51;
        v32 = v49;
        v31 = v50;
        if (v51 < v17)
        {
          sub_100016590(v49, v50);
          sub_100016590(v22, v24);
        }

        else
        {
          sub_100017D5C(v49, v50);
          v42 = Data._Representation.subscript.getter();
          sub_100016590(v32, v31);
          if (v30 < *(v4 + v41))
          {
            *(v4 + v41) = v30;
          }

          if (*(v4 + v40) < v30)
          {
            *(v4 + v40) = v30;
          }

          v33 = v45;
          swift_beginAccess();
          v34 = *(v4 + v33);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *(v4 + v33) = v34;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {

            v37 = sub_1006073B0(v36);
            *(v4 + v45) = v37;

            v34 = v37;
          }

          if (v34[2] <= v42)
          {
            __break(1u);
LABEL_37:
            __break(1u);
LABEL_38:
            __break(1u);
          }

          sub_100017D5C(v32, v31);
          sub_100DF0094(v47, v32, v31, v30);
          sub_100016590(v47[0], v47[1]);
          *(v4 + v45) = v34;
          swift_endAccess();
          sub_100016590(v22, v24);
          sub_100016590(v49, v50);
          v17 = v43;
        }

        objc_autoreleasePoolPop(v46);
      }

      sub_100016590(v22, v24);
      objc_autoreleasePoolPop(v20);
    }

    else
    {
      v38 = v48[0];
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }
  }
}

void sub_100879FD8(uint64_t a1, unsigned int a2)
{
  v4 = v2;
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = objc_autoreleasePoolPush();
  sub_1008839A4(a1, &qword_1016ABEB8, &qword_1013BFD88, &qword_1016ABEC0);
  if (v3)
  {
    objc_autoreleasePoolPop(v12);
  }

  else
  {
    v43 = a2;
    v14 = v13;
    objc_autoreleasePoolPop(v12);
    sub_100008BB8(0, &unk_1016B2A60, NSFileHandle_ptr);
    (*(v8 + 16))(v11, a1, v7);
    v15 = sub_100878D64(v11, &selRef_fileHandleForReadingFromURL_error_);
    v16 = v15;
    v17 = v43;
    if (v14 <= v43)
    {
      v18 = v43;
    }

    else
    {
      v18 = v14;
    }

    v41 = qword_1016AC3B0;
    if (v18 < *(v4 + qword_1016AC3B0))
    {
      *(v4 + v41) = v18;
    }

    v40 = qword_1016AC3B8;
    if (*(v4 + qword_1016AC3B8) < HIDWORD(v14))
    {
      *(v4 + v40) = HIDWORD(v14);
    }

    v48[0] = 0;
    if ([v15 seekToOffset:4128 error:v48])
    {
      v45 = qword_1016AC3D0;
      v19 = v48[0];
      for (i = v16; ; v16 = i)
      {
        v20 = objc_autoreleasePoolPush();
        v21 = [v16 readDataOfLength:10];
        v22 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v24 = v23;

        v25 = v24 >> 62;
        if ((v24 >> 62) > 1)
        {
          if (v25 != 2)
          {
            break;
          }

          v28 = *(v22 + 16);
          v27 = *(v22 + 24);
          v29 = __OFSUB__(v27, v28);
          v26 = v27 - v28;
          if (v29)
          {
            goto LABEL_38;
          }
        }

        else if (v25)
        {
          LODWORD(v26) = HIDWORD(v22) - v22;
          if (__OFSUB__(HIDWORD(v22), v22))
          {
            goto LABEL_37;
          }

          v26 = v26;
        }

        else
        {
          v26 = BYTE6(v24);
        }

        if (v26 < 10)
        {
          break;
        }

        sub_100017D5C(v22, v24);
        sub_10087AC44(v22, v24, &v49);
        v46 = v20;
        v30 = v51;
        v32 = v49;
        v31 = v50;
        if (v51 < v17)
        {
          sub_100016590(v49, v50);
          sub_100016590(v22, v24);
        }

        else
        {
          sub_100017D5C(v49, v50);
          v42 = Data._Representation.subscript.getter();
          sub_100016590(v32, v31);
          if (v30 < *(v4 + v41))
          {
            *(v4 + v41) = v30;
          }

          if (*(v4 + v40) < v30)
          {
            *(v4 + v40) = v30;
          }

          v33 = v45;
          swift_beginAccess();
          v34 = *(v4 + v33);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *(v4 + v33) = v34;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {

            v37 = sub_100607478(v36);
            *(v4 + v45) = v37;

            v34 = v37;
          }

          if (v34[2] <= v42)
          {
            __break(1u);
LABEL_37:
            __break(1u);
LABEL_38:
            __break(1u);
          }

          sub_100017D5C(v32, v31);
          sub_100DF290C(v47, v32, v31, v30);
          sub_100016590(v47[0], v47[1]);
          *(v4 + v45) = v34;
          swift_endAccess();
          sub_100016590(v22, v24);
          sub_100016590(v49, v50);
          v17 = v43;
        }

        objc_autoreleasePoolPop(v46);
      }

      sub_100016590(v22, v24);
      objc_autoreleasePoolPop(v20);
    }

    else
    {
      v38 = v48[0];
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }
  }
}

void sub_10087A454(uint64_t a1, unsigned int a2)
{
  v4 = v2;
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = objc_autoreleasePoolPush();
  sub_1008839A4(a1, &qword_1016ABEE8, &qword_1013BFDA8, &qword_1016ABEF0);
  if (v3)
  {
    objc_autoreleasePoolPop(v12);
  }

  else
  {
    v43 = a2;
    v14 = v13;
    objc_autoreleasePoolPop(v12);
    sub_100008BB8(0, &unk_1016B2A60, NSFileHandle_ptr);
    (*(v8 + 16))(v11, a1, v7);
    v15 = sub_100878D64(v11, &selRef_fileHandleForReadingFromURL_error_);
    v16 = v15;
    v17 = v43;
    if (v14 <= v43)
    {
      v18 = v43;
    }

    else
    {
      v18 = v14;
    }

    v41 = qword_1016AC3B0;
    if (v18 < *(v4 + qword_1016AC3B0))
    {
      *(v4 + v41) = v18;
    }

    v40 = qword_1016AC3B8;
    if (*(v4 + qword_1016AC3B8) < HIDWORD(v14))
    {
      *(v4 + v40) = HIDWORD(v14);
    }

    v48[0] = 0;
    if ([v15 seekToOffset:4128 error:v48])
    {
      v45 = qword_1016AC3D0;
      v19 = v48[0];
      for (i = v16; ; v16 = i)
      {
        v20 = objc_autoreleasePoolPush();
        v21 = [v16 readDataOfLength:10];
        v22 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v24 = v23;

        v25 = v24 >> 62;
        if ((v24 >> 62) > 1)
        {
          if (v25 != 2)
          {
            break;
          }

          v28 = *(v22 + 16);
          v27 = *(v22 + 24);
          v29 = __OFSUB__(v27, v28);
          v26 = v27 - v28;
          if (v29)
          {
            goto LABEL_38;
          }
        }

        else if (v25)
        {
          LODWORD(v26) = HIDWORD(v22) - v22;
          if (__OFSUB__(HIDWORD(v22), v22))
          {
            goto LABEL_37;
          }

          v26 = v26;
        }

        else
        {
          v26 = BYTE6(v24);
        }

        if (v26 < 10)
        {
          break;
        }

        sub_100017D5C(v22, v24);
        sub_10087AFD0(v22, v24, &v49);
        v46 = v20;
        v30 = v51;
        v32 = v49;
        v31 = v50;
        if (v51 < v17)
        {
          sub_100016590(v49, v50);
          sub_100016590(v22, v24);
        }

        else
        {
          sub_100017D5C(v49, v50);
          v42 = Data._Representation.subscript.getter();
          sub_100016590(v32, v31);
          if (v30 < *(v4 + v41))
          {
            *(v4 + v41) = v30;
          }

          if (*(v4 + v40) < v30)
          {
            *(v4 + v40) = v30;
          }

          v33 = v45;
          swift_beginAccess();
          v34 = *(v4 + v33);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *(v4 + v33) = v34;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {

            v37 = sub_10060748C(v36);
            *(v4 + v45) = v37;

            v34 = v37;
          }

          if (v34[2] <= v42)
          {
            __break(1u);
LABEL_37:
            __break(1u);
LABEL_38:
            __break(1u);
          }

          sub_100017D5C(v32, v31);
          sub_100DF2984(v47, v32, v31, v30);
          sub_100016590(v47[0], v47[1]);
          *(v4 + v45) = v34;
          swift_endAccess();
          sub_100016590(v22, v24);
          sub_100016590(v49, v50);
          v17 = v43;
        }

        objc_autoreleasePoolPop(v46);
      }

      sub_100016590(v22, v24);
      objc_autoreleasePoolPop(v20);
    }

    else
    {
      v38 = v48[0];
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }
  }
}

uint64_t sub_10087A8D0@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_100017D5C(a1, a2);
  sub_100035310(4, a1, a2, &v36);
  v7 = v36;
  v8 = v37;
  v9 = v37 >> 62;
  if ((v37 >> 62) > 1)
  {
    if (v9 != 2)
    {
LABEL_13:
      sub_1000BC4D4(&qword_1016ABE70, &unk_1013BFC70);
      sub_1000041A4(&qword_1016ABE78, &qword_1016ABE70, &unk_1013BFC70);
      swift_allocError();
      *v19 = 1;
      *(v19 + 4) = 2;
      swift_willThrow();
LABEL_25:
      sub_100016590(a1, a2);
      return sub_100016590(v7, v8);
    }

    v34 = a3;
    v12 = *(v36 + 16);
    v11 = *(v36 + 24);
    v13 = __DataStorage._bytes.getter();
    if (v13)
    {
      v14 = __DataStorage._offset.getter();
      if (__OFSUB__(v12, v14))
      {
LABEL_44:
        __break(1u);
        goto LABEL_45;
      }

      v13 = (v13 + v12 - v14);
    }

    v15 = __OFSUB__(v11, v12);
    v16 = v11 - v12;
    if (v15)
    {
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    v17 = __DataStorage._length.getter();
    if (v17 >= v16)
    {
      v18 = v16;
    }

    else
    {
      v18 = v17;
    }
  }

  else
  {
    if (!v9)
    {
      if ((v37 & 0xFC000000000000) != 0)
      {
        v10 = v36;
        goto LABEL_27;
      }

      goto LABEL_13;
    }

    v20 = (v36 >> 32) - v36;
    if (v36 >> 32 < v36)
    {
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    v34 = a3;
    v13 = __DataStorage._bytes.getter();
    if (v13)
    {
      v21 = __DataStorage._offset.getter();
      if (__OFSUB__(v7, v21))
      {
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
      }

      v13 = (v13 + v7 - v21);
    }

    v22 = __DataStorage._length.getter();
    if (v22 >= v20)
    {
      v18 = (v7 >> 32) - v7;
    }

    else
    {
      v18 = v22;
    }
  }

  v23 = v13 + v18;
  if (v13)
  {
    v24 = v23;
  }

  else
  {
    v24 = 0;
  }

  v25 = sub_10087B35C(v13, v24);
  if (v3)
  {
    goto LABEL_25;
  }

  v10 = v25;
  a3 = v34;
LABEL_27:
  sub_100016590(v7, v8);
  v27 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v27)
    {
      v28 = BYTE6(a2);
      goto LABEL_37;
    }

    goto LABEL_34;
  }

  if (v27 != 2)
  {
    v28 = 0;
    goto LABEL_37;
  }

  v30 = *(a1 + 16);
  v29 = *(a1 + 24);
  v15 = __OFSUB__(v29, v30);
  v28 = v29 - v30;
  if (v15)
  {
    __break(1u);
LABEL_34:
    LODWORD(v28) = HIDWORD(a1) - a1;
    if (__OFSUB__(HIDWORD(a1), a1))
    {
      goto LABEL_46;
    }

    v28 = v28;
  }

LABEL_37:
  v31 = v28 - 4;
  if (__OFSUB__(v28, 4))
  {
    __break(1u);
    goto LABEL_42;
  }

  sub_100017D5C(a1, a2);
  sub_10002EA98(v31, a1, a2, v35);
  sub_100497060(v35[0], v35[1], &v36);
  v32 = v37;
  if (v37 >> 60 == 15)
  {
    sub_100006654(v36, v37);
    sub_1000BC4D4(&qword_1016ABE70, &unk_1013BFC70);
    sub_1000041A4(&qword_1016ABE78, &qword_1016ABE70, &unk_1013BFC70);
    swift_allocError();
    *v33 = 1;
    *(v33 + 4) = 2;
    swift_willThrow();
    return sub_100016590(a1, a2);
  }

  else
  {
    result = sub_100016590(a1, a2);
    *a3 = v36;
    *(a3 + 8) = v32;
    *(a3 + 16) = v10;
  }

  return result;
}

uint64_t sub_10087AC44@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_100017D5C(a1, a2);
  sub_100035310(4, a1, a2, &v36);
  v7 = v36;
  v8 = v37;
  v9 = v37 >> 62;
  if ((v37 >> 62) > 1)
  {
    if (v9 != 2)
    {
LABEL_13:
      sub_1000BC4D4(&qword_1016ABEB8, &qword_1013BFD88);
      sub_1000041A4(&qword_1016ABEC0, &qword_1016ABEB8, &qword_1013BFD88);
      swift_allocError();
      *v19 = 1;
      *(v19 + 4) = 2;
      swift_willThrow();
LABEL_25:
      sub_100016590(a1, a2);
      return sub_100016590(v7, v8);
    }

    v34 = a3;
    v12 = *(v36 + 16);
    v11 = *(v36 + 24);
    v13 = __DataStorage._bytes.getter();
    if (v13)
    {
      v14 = __DataStorage._offset.getter();
      if (__OFSUB__(v12, v14))
      {
LABEL_44:
        __break(1u);
        goto LABEL_45;
      }

      v13 = (v13 + v12 - v14);
    }

    v15 = __OFSUB__(v11, v12);
    v16 = v11 - v12;
    if (v15)
    {
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    v17 = __DataStorage._length.getter();
    if (v17 >= v16)
    {
      v18 = v16;
    }

    else
    {
      v18 = v17;
    }
  }

  else
  {
    if (!v9)
    {
      if ((v37 & 0xFC000000000000) != 0)
      {
        v10 = v36;
        goto LABEL_27;
      }

      goto LABEL_13;
    }

    v20 = (v36 >> 32) - v36;
    if (v36 >> 32 < v36)
    {
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    v34 = a3;
    v13 = __DataStorage._bytes.getter();
    if (v13)
    {
      v21 = __DataStorage._offset.getter();
      if (__OFSUB__(v7, v21))
      {
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
      }

      v13 = (v13 + v7 - v21);
    }

    v22 = __DataStorage._length.getter();
    if (v22 >= v20)
    {
      v18 = (v7 >> 32) - v7;
    }

    else
    {
      v18 = v22;
    }
  }

  v23 = v13 + v18;
  if (v13)
  {
    v24 = v23;
  }

  else
  {
    v24 = 0;
  }

  v25 = sub_10087B41C(v13, v24, &qword_1016ABEB8, &qword_1013BFD88, &qword_1016ABEC0);
  if (v3)
  {
    goto LABEL_25;
  }

  v10 = v25;
  a3 = v34;
LABEL_27:
  sub_100016590(v7, v8);
  v27 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v27)
    {
      v28 = BYTE6(a2);
      goto LABEL_37;
    }

    goto LABEL_34;
  }

  if (v27 != 2)
  {
    v28 = 0;
    goto LABEL_37;
  }

  v30 = *(a1 + 16);
  v29 = *(a1 + 24);
  v15 = __OFSUB__(v29, v30);
  v28 = v29 - v30;
  if (v15)
  {
    __break(1u);
LABEL_34:
    LODWORD(v28) = HIDWORD(a1) - a1;
    if (__OFSUB__(HIDWORD(a1), a1))
    {
      goto LABEL_46;
    }

    v28 = v28;
  }

LABEL_37:
  v31 = v28 - 4;
  if (__OFSUB__(v28, 4))
  {
    __break(1u);
    goto LABEL_42;
  }

  sub_100017D5C(a1, a2);
  sub_10002EA98(v31, a1, a2, v35);
  sub_1004A4744(&v36, v35[0], v35[1]);
  v32 = v37;
  if (v37 >> 60 == 15)
  {
    sub_100006654(v36, v37);
    sub_1000BC4D4(&qword_1016ABEB8, &qword_1013BFD88);
    sub_1000041A4(&qword_1016ABEC0, &qword_1016ABEB8, &qword_1013BFD88);
    swift_allocError();
    *v33 = 1;
    *(v33 + 4) = 2;
    swift_willThrow();
    return sub_100016590(a1, a2);
  }

  else
  {
    result = sub_100016590(a1, a2);
    *a3 = v36;
    *(a3 + 8) = v32;
    *(a3 + 16) = v10;
  }

  return result;
}

uint64_t sub_10087AFD0@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_100017D5C(a1, a2);
  sub_100035310(4, a1, a2, &v36);
  v7 = v36;
  v8 = v37;
  v9 = v37 >> 62;
  if ((v37 >> 62) > 1)
  {
    if (v9 != 2)
    {
LABEL_13:
      sub_1000BC4D4(&qword_1016ABEE8, &qword_1013BFDA8);
      sub_1000041A4(&qword_1016ABEF0, &qword_1016ABEE8, &qword_1013BFDA8);
      swift_allocError();
      *v19 = 1;
      *(v19 + 4) = 2;
      swift_willThrow();
LABEL_25:
      sub_100016590(a1, a2);
      return sub_100016590(v7, v8);
    }

    v34 = a3;
    v12 = *(v36 + 16);
    v11 = *(v36 + 24);
    v13 = __DataStorage._bytes.getter();
    if (v13)
    {
      v14 = __DataStorage._offset.getter();
      if (__OFSUB__(v12, v14))
      {
LABEL_44:
        __break(1u);
        goto LABEL_45;
      }

      v13 = (v13 + v12 - v14);
    }

    v15 = __OFSUB__(v11, v12);
    v16 = v11 - v12;
    if (v15)
    {
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    v17 = __DataStorage._length.getter();
    if (v17 >= v16)
    {
      v18 = v16;
    }

    else
    {
      v18 = v17;
    }
  }

  else
  {
    if (!v9)
    {
      if ((v37 & 0xFC000000000000) != 0)
      {
        v10 = v36;
        goto LABEL_27;
      }

      goto LABEL_13;
    }

    v20 = (v36 >> 32) - v36;
    if (v36 >> 32 < v36)
    {
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    v34 = a3;
    v13 = __DataStorage._bytes.getter();
    if (v13)
    {
      v21 = __DataStorage._offset.getter();
      if (__OFSUB__(v7, v21))
      {
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
      }

      v13 = (v13 + v7 - v21);
    }

    v22 = __DataStorage._length.getter();
    if (v22 >= v20)
    {
      v18 = (v7 >> 32) - v7;
    }

    else
    {
      v18 = v22;
    }
  }

  v23 = v13 + v18;
  if (v13)
  {
    v24 = v23;
  }

  else
  {
    v24 = 0;
  }

  v25 = sub_10087B41C(v13, v24, &qword_1016ABEE8, &qword_1013BFDA8, &qword_1016ABEF0);
  if (v3)
  {
    goto LABEL_25;
  }

  v10 = v25;
  a3 = v34;
LABEL_27:
  sub_100016590(v7, v8);
  v27 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v27)
    {
      v28 = BYTE6(a2);
      goto LABEL_37;
    }

    goto LABEL_34;
  }

  if (v27 != 2)
  {
    v28 = 0;
    goto LABEL_37;
  }

  v30 = *(a1 + 16);
  v29 = *(a1 + 24);
  v15 = __OFSUB__(v29, v30);
  v28 = v29 - v30;
  if (v15)
  {
    __break(1u);
LABEL_34:
    LODWORD(v28) = HIDWORD(a1) - a1;
    if (__OFSUB__(HIDWORD(a1), a1))
    {
      goto LABEL_46;
    }

    v28 = v28;
  }

LABEL_37:
  v31 = v28 - 4;
  if (__OFSUB__(v28, 4))
  {
    __break(1u);
    goto LABEL_42;
  }

  sub_100017D5C(a1, a2);
  sub_10002EA98(v31, a1, a2, v35);
  sub_1004A4744(&v36, v35[0], v35[1]);
  v32 = v37;
  if (v37 >> 60 == 15)
  {
    sub_100006654(v36, v37);
    sub_1000BC4D4(&qword_1016ABEE8, &qword_1013BFDA8);
    sub_1000041A4(&qword_1016ABEF0, &qword_1016ABEE8, &qword_1013BFDA8);
    swift_allocError();
    *v33 = 1;
    *(v33 + 4) = 2;
    swift_willThrow();
    return sub_100016590(a1, a2);
  }

  else
  {
    result = sub_100016590(a1, a2);
    *a3 = v36;
    *(a3 + 8) = v32;
    *(a3 + 16) = v10;
  }

  return result;
}

uint64_t sub_10087B35C(unsigned int *a1, uint64_t a2)
{
  if (a1 && (a2 - a1 + 3) >= 7)
  {
    return *a1;
  }

  sub_1000BC4D4(&qword_1016ABE70, &unk_1013BFC70);
  sub_1000041A4(&qword_1016ABE78, &qword_1016ABE70, &unk_1013BFC70);
  swift_allocError();
  *v3 = 1;
  *(v3 + 4) = 2;
  return swift_willThrow();
}

uint64_t sub_10087B41C(unsigned int *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, unint64_t *a5)
{
  if (a1 && (a2 - a1 + 3) >= 7)
  {
    return *a1;
  }

  sub_1000BC4D4(a3, a4);
  sub_1000041A4(a5, a3, a4);
  swift_allocError();
  *v9 = 1;
  *(v9 + 4) = 2;
  return swift_willThrow();
}

Swift::Int sub_10087B4D0(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        type metadata accessor for BeaconKeyServiceBuilder.KeyIndexMapInfo(0);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v6[2] = v5;
      }

      v7 = *(type metadata accessor for BeaconKeyServiceBuilder.KeyIndexMapInfo(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_10087B9FC(v8, v9, a1, v4);
      v6[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_10087B704(0, v2, 1, a1);
  }

  return result;
}

Swift::Int sub_10087B5FC(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_1000BC4D4(&qword_1016ABEB0, &unk_1013BFD40);
        v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v5[2] = v2 / 2;
      }

      v7[0] = v5 + 4;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_10087C374(v7, v8, a1, v4);
      v6[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_10087B988(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_10087B704(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for BeaconKeyServiceBuilder.KeyIndexMapInfo(0);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8);
  v38 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v42 = &v29 - v13;
  result = __chkstk_darwin(v12);
  v41 = &v29 - v16;
  v31 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v18 = *(v15 + 72);
    v39 = v42 + 8;
    v40 = v41 + 8;
    v19 = v17 + v18 * (a3 - 1);
    v36 = -v18;
    v37 = v17;
    v20 = a1 - a3;
    v30 = v18;
    v21 = v17 + v18 * a3;
LABEL_5:
    v34 = v19;
    v35 = a3;
    v32 = v21;
    v33 = v20;
    while (1)
    {
      v22 = v41;
      sub_1000295D4(v21, v41, type metadata accessor for BeaconKeyServiceBuilder.KeyIndexMapInfo);
      v23 = v42;
      sub_1000295D4(v19, v42, type metadata accessor for BeaconKeyServiceBuilder.KeyIndexMapInfo);
      v24 = *(v8 + 20);
      v25 = *(v40 + v24);
      v26 = *(v39 + v24);
      sub_10001F1B0(v23, type metadata accessor for BeaconKeyServiceBuilder.KeyIndexMapInfo);
      result = sub_10001F1B0(v22, type metadata accessor for BeaconKeyServiceBuilder.KeyIndexMapInfo);
      if (v25 >= v26)
      {
LABEL_4:
        a3 = v35 + 1;
        v19 = v34 + v30;
        v20 = v33 - 1;
        v21 = v32 + v30;
        if (v35 + 1 == v31)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v37)
      {
        break;
      }

      v27 = v38;
      sub_10087EE70(v21, v38, type metadata accessor for BeaconKeyServiceBuilder.KeyIndexMapInfo);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_10087EE70(v27, v19, type metadata accessor for BeaconKeyServiceBuilder.KeyIndexMapInfo);
      v19 += v36;
      v21 += v36;
      if (__CFADD__(v20++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10087B988(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 8 * a3 - 8;
    v6 = result - a3;
LABEL_5:
    v7 = *(v4 + 8 * a3);
    v8 = v6;
    v9 = v5;
    while (1)
    {
      if (v7 >= *v9)
      {
LABEL_4:
        ++a3;
        v5 += 8;
        --v6;
        if (a3 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v4)
      {
        break;
      }

      v10 = *(v9 + 12);
      *(v9 + 8) = *v9;
      *v9 = v7;
      *(v9 + 4) = v10;
      v9 -= 8;
      if (__CFADD__(v8++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10087B9FC(unint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = v4;
  v112 = a1;
  v129 = type metadata accessor for BeaconKeyServiceBuilder.KeyIndexMapInfo(0);
  v9 = *(v129 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v129);
  v116 = &v109 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v124 = &v109 - v14;
  v15 = __chkstk_darwin(v13);
  result = __chkstk_darwin(v15);
  v19 = a3[1];
  v117 = v9;
  if (v19 < 1)
  {
    v21 = _swiftEmptyArrayStorage;
LABEL_99:
    v5 = *v112;
    if (!*v112)
    {
      goto LABEL_137;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_101:
      v130 = v21;
      v105 = *(v21 + 2);
      if (v105 >= 2)
      {
        while (*a3)
        {
          v106 = *&v21[16 * v105];
          v107 = *&v21[16 * v105 + 24];
          sub_10087C8E8(*a3 + *(v117 + 72) * v106, *a3 + *(v117 + 72) * *&v21[16 * v105 + 16], *a3 + *(v117 + 72) * v107, v5);
          if (v6)
          {
          }

          if (v107 < v106)
          {
            goto LABEL_124;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v21 = sub_100B31E68(v21);
          }

          if (v105 - 2 >= *(v21 + 2))
          {
            goto LABEL_125;
          }

          v108 = &v21[16 * v105];
          *v108 = v106;
          *(v108 + 1) = v107;
          v130 = v21;
          result = sub_100B31DDC(v105 - 1);
          v21 = v130;
          v105 = *(v130 + 2);
          if (v105 <= 1)
          {
          }
        }

        goto LABEL_135;
      }
    }

LABEL_131:
    result = sub_100B31E68(v21);
    v21 = result;
    goto LABEL_101;
  }

  v110 = a4;
  v20 = 0;
  v127 = &v109 - v17;
  v128 = v18;
  v125 = v18 + 8;
  v126 = &v109 - v17 + 8;
  v21 = _swiftEmptyArrayStorage;
  v113 = a3;
  while (1)
  {
    v22 = v20;
    v114 = v20;
    if (v20 + 1 >= v19)
    {
      v19 = v20 + 1;
    }

    else
    {
      v111 = v6;
      v23 = *a3;
      v6 = *(v9 + 72);
      v5 = v23 + v6 * (v20 + 1);
      v24 = v20;
      v25 = v127;
      sub_1000295D4(v5, v127, type metadata accessor for BeaconKeyServiceBuilder.KeyIndexMapInfo);
      v26 = v128;
      sub_1000295D4(v23 + v6 * v24, v128, type metadata accessor for BeaconKeyServiceBuilder.KeyIndexMapInfo);
      v27 = *(v129 + 20);
      LODWORD(v120) = *&v126[v27];
      LODWORD(v119) = *(v125 + v27);
      sub_10001F1B0(v26, type metadata accessor for BeaconKeyServiceBuilder.KeyIndexMapInfo);
      result = sub_10001F1B0(v25, type metadata accessor for BeaconKeyServiceBuilder.KeyIndexMapInfo);
      v28 = v24 + 2;
      v121 = v6;
      v122 = v19;
      v29 = v23 + v6 * v28;
      while (v19 != v28)
      {
        LODWORD(v123) = v120 < v119;
        v30 = v127;
        sub_1000295D4(v29, v127, type metadata accessor for BeaconKeyServiceBuilder.KeyIndexMapInfo);
        v31 = v128;
        sub_1000295D4(v5, v128, type metadata accessor for BeaconKeyServiceBuilder.KeyIndexMapInfo);
        v32 = *(v129 + 20);
        v6 = v21;
        v33 = *&v126[v32];
        v34 = *(v125 + v32);
        sub_10001F1B0(v31, type metadata accessor for BeaconKeyServiceBuilder.KeyIndexMapInfo);
        v19 = v122;
        result = sub_10001F1B0(v30, type metadata accessor for BeaconKeyServiceBuilder.KeyIndexMapInfo);
        v35 = v33 >= v34;
        v21 = v6;
        v36 = v35;
        ++v28;
        v29 += v121;
        v5 += v121;
        if (((v123 ^ v36) & 1) == 0)
        {
          v19 = v28 - 1;
          break;
        }
      }

      a3 = v113;
      v22 = v114;
      v9 = v117;
      if (v120 >= v119)
      {
        goto LABEL_26;
      }

      if (v19 < v114)
      {
        goto LABEL_128;
      }

      if (v114 >= v19)
      {
LABEL_26:
        v6 = v111;
      }

      else
      {
        v37 = v121 * (v19 - 1);
        v38 = v19 * v121;
        v39 = v19;
        v40 = v19;
        v41 = v114;
        v42 = v114 * v121;
        do
        {
          if (v41 != --v40)
          {
            v43 = *v113;
            if (!*v113)
            {
              goto LABEL_134;
            }

            v5 = v43 + v42;
            sub_10087EE70(v43 + v42, v116, type metadata accessor for BeaconKeyServiceBuilder.KeyIndexMapInfo);
            if (v42 < v37 || v5 >= v43 + v38)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v42 != v37)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            result = sub_10087EE70(v116, v43 + v37, type metadata accessor for BeaconKeyServiceBuilder.KeyIndexMapInfo);
            v9 = v117;
          }

          ++v41;
          v37 -= v121;
          v38 -= v121;
          v42 += v121;
        }

        while (v41 < v40);
        v6 = v111;
        a3 = v113;
        v22 = v114;
        v19 = v39;
      }
    }

    v44 = a3[1];
    if (v19 >= v44)
    {
      goto LABEL_37;
    }

    if (__OFSUB__(v19, v22))
    {
      goto LABEL_127;
    }

    if (v19 - v22 >= v110)
    {
LABEL_37:
      v46 = v19;
      goto LABEL_38;
    }

    if (__OFADD__(v22, v110))
    {
      goto LABEL_129;
    }

    if (v22 + v110 >= v44)
    {
      v45 = a3[1];
    }

    else
    {
      v45 = v22 + v110;
    }

    if (v45 < v22)
    {
LABEL_130:
      __break(1u);
      goto LABEL_131;
    }

    if (v19 == v45)
    {
      goto LABEL_37;
    }

    v109 = v21;
    v111 = v6;
    v92 = *a3;
    v93 = *(v9 + 72);
    v94 = *a3 + v93 * (v19 - 1);
    v95 = -v93;
    v96 = v114 - v19;
    v123 = v92;
    v115 = v93;
    v5 = v92 + v19 * v93;
    v97 = v129;
    v118 = v45;
LABEL_91:
    v121 = v94;
    v122 = v19;
    v119 = v5;
    v120 = v96;
    v98 = v94;
LABEL_92:
    v99 = v127;
    sub_1000295D4(v5, v127, type metadata accessor for BeaconKeyServiceBuilder.KeyIndexMapInfo);
    v100 = v128;
    sub_1000295D4(v98, v128, type metadata accessor for BeaconKeyServiceBuilder.KeyIndexMapInfo);
    v101 = *(v97 + 20);
    v102 = *&v126[v101];
    v103 = *(v125 + v101);
    sub_10001F1B0(v100, type metadata accessor for BeaconKeyServiceBuilder.KeyIndexMapInfo);
    result = sub_10001F1B0(v99, type metadata accessor for BeaconKeyServiceBuilder.KeyIndexMapInfo);
    if (v102 < v103)
    {
      break;
    }

    v97 = v129;
LABEL_90:
    v19 = v122 + 1;
    v94 = v121 + v115;
    v96 = v120 - 1;
    v5 = v119 + v115;
    v46 = v118;
    if (v122 + 1 != v118)
    {
      goto LABEL_91;
    }

    v6 = v111;
    a3 = v113;
    v9 = v117;
    v21 = v109;
LABEL_38:
    if (v46 < v114)
    {
      goto LABEL_126;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_100A5B430(0, *(v21 + 2) + 1, 1, v21);
      v21 = result;
    }

    v48 = *(v21 + 2);
    v47 = *(v21 + 3);
    v5 = v48 + 1;
    if (v48 >= v47 >> 1)
    {
      result = sub_100A5B430((v47 > 1), v48 + 1, 1, v21);
      v21 = result;
    }

    *(v21 + 2) = v5;
    v49 = &v21[16 * v48];
    *(v49 + 4) = v114;
    *(v49 + 5) = v46;
    v50 = *v112;
    if (!*v112)
    {
      goto LABEL_136;
    }

    v118 = v46;
    if (v48)
    {
      while (2)
      {
        v51 = v5 - 1;
        if (v5 >= 4)
        {
          v56 = &v21[16 * v5 + 32];
          v57 = *(v56 - 64);
          v58 = *(v56 - 56);
          v62 = __OFSUB__(v58, v57);
          v59 = v58 - v57;
          if (v62)
          {
            goto LABEL_113;
          }

          v61 = *(v56 - 48);
          v60 = *(v56 - 40);
          v62 = __OFSUB__(v60, v61);
          v54 = v60 - v61;
          v55 = v62;
          if (v62)
          {
            goto LABEL_114;
          }

          v63 = &v21[16 * v5];
          v65 = *v63;
          v64 = *(v63 + 1);
          v62 = __OFSUB__(v64, v65);
          v66 = v64 - v65;
          if (v62)
          {
            goto LABEL_116;
          }

          v62 = __OFADD__(v54, v66);
          v67 = v54 + v66;
          if (v62)
          {
            goto LABEL_119;
          }

          if (v67 >= v59)
          {
            v85 = &v21[16 * v51 + 32];
            v87 = *v85;
            v86 = *(v85 + 1);
            v62 = __OFSUB__(v86, v87);
            v88 = v86 - v87;
            if (v62)
            {
              goto LABEL_123;
            }

            if (v54 < v88)
            {
              v51 = v5 - 2;
            }
          }

          else
          {
LABEL_58:
            if (v55)
            {
              goto LABEL_115;
            }

            v68 = &v21[16 * v5];
            v70 = *v68;
            v69 = *(v68 + 1);
            v71 = __OFSUB__(v69, v70);
            v72 = v69 - v70;
            v73 = v71;
            if (v71)
            {
              goto LABEL_118;
            }

            v74 = &v21[16 * v51 + 32];
            v76 = *v74;
            v75 = *(v74 + 1);
            v62 = __OFSUB__(v75, v76);
            v77 = v75 - v76;
            if (v62)
            {
              goto LABEL_121;
            }

            if (__OFADD__(v72, v77))
            {
              goto LABEL_122;
            }

            if (v72 + v77 < v54)
            {
              goto LABEL_72;
            }

            if (v54 < v77)
            {
              v51 = v5 - 2;
            }
          }
        }

        else
        {
          if (v5 == 3)
          {
            v52 = *(v21 + 4);
            v53 = *(v21 + 5);
            v62 = __OFSUB__(v53, v52);
            v54 = v53 - v52;
            v55 = v62;
            goto LABEL_58;
          }

          v78 = &v21[16 * v5];
          v80 = *v78;
          v79 = *(v78 + 1);
          v62 = __OFSUB__(v79, v80);
          v72 = v79 - v80;
          v73 = v62;
LABEL_72:
          if (v73)
          {
            goto LABEL_117;
          }

          v81 = &v21[16 * v51];
          v83 = *(v81 + 4);
          v82 = *(v81 + 5);
          v62 = __OFSUB__(v82, v83);
          v84 = v82 - v83;
          if (v62)
          {
            goto LABEL_120;
          }

          if (v84 < v72)
          {
            break;
          }
        }

        v89 = v51 - 1;
        if (v51 - 1 >= v5)
        {
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
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
          goto LABEL_130;
        }

        if (!*a3)
        {
          goto LABEL_133;
        }

        v90 = *&v21[16 * v89 + 32];
        v5 = *&v21[16 * v51 + 40];
        sub_10087C8E8(*a3 + *(v9 + 72) * v90, *a3 + *(v9 + 72) * *&v21[16 * v51 + 32], *a3 + *(v9 + 72) * v5, v50);
        if (v6)
        {
        }

        if (v5 < v90)
        {
          goto LABEL_111;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v21 = sub_100B31E68(v21);
        }

        if (v89 >= *(v21 + 2))
        {
          goto LABEL_112;
        }

        v91 = &v21[16 * v89];
        *(v91 + 4) = v90;
        *(v91 + 5) = v5;
        v130 = v21;
        result = sub_100B31DDC(v51);
        v21 = v130;
        v5 = *(v130 + 2);
        if (v5 <= 1)
        {
          break;
        }

        continue;
      }
    }

    v19 = a3[1];
    v20 = v118;
    if (v118 >= v19)
    {
      goto LABEL_99;
    }
  }

  if (v123)
  {
    v104 = v124;
    sub_10087EE70(v5, v124, type metadata accessor for BeaconKeyServiceBuilder.KeyIndexMapInfo);
    v97 = v129;
    swift_arrayInitWithTakeFrontToBack();
    sub_10087EE70(v104, v98, type metadata accessor for BeaconKeyServiceBuilder.KeyIndexMapInfo);
    v98 += v95;
    v5 += v95;
    v35 = __CFADD__(v96++, 1);
    if (v35)
    {
      goto LABEL_90;
    }

    goto LABEL_92;
  }

  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
LABEL_137:
  __break(1u);
  return result;
}

uint64_t sub_10087C374(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v85 = result;
  v7 = a3[1];
  if (v7 < 1)
  {
    v10 = _swiftEmptyArrayStorage;
LABEL_88:
    v5 = *v85;
    if (!*v85)
    {
      goto LABEL_126;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_120:
      result = sub_100B31E68(v10);
      v10 = result;
    }

    v80 = *(v10 + 2);
    if (v80 >= 2)
    {
      while (*a3)
      {
        v81 = *&v10[16 * v80];
        v82 = *&v10[16 * v80 + 24];
        sub_10087CE30((*a3 + 8 * v81), (*a3 + 8 * *&v10[16 * v80 + 16]), (*a3 + 8 * v82), v5);
        if (v4)
        {
        }

        if (v82 < v81)
        {
          goto LABEL_113;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_100B31E68(v10);
        }

        if (v80 - 2 >= *(v10 + 2))
        {
          goto LABEL_114;
        }

        v83 = &v10[16 * v80];
        *v83 = v81;
        *(v83 + 1) = v82;
        result = sub_100B31DDC(v80 - 1);
        v80 = *(v10 + 2);
        if (v80 <= 1)
        {
        }
      }

      goto LABEL_124;
    }
  }

  v8 = a4;
  v9 = 0;
  v10 = _swiftEmptyArrayStorage;
  while (1)
  {
    v11 = v9++;
    if (v9 < v7)
    {
      v12 = *(*a3 + 8 * v9);
      v13 = 8 * v11;
      v14 = (*a3 + 8 * v11);
      v17 = *v14;
      v16 = v14 + 4;
      v15 = v17;
      v18 = v11 + 2;
      v19 = v12;
      while (v7 != v18)
      {
        v20 = *v16;
        v16 += 2;
        v21 = (v12 < v15) ^ (v20 >= v19);
        ++v18;
        v19 = v20;
        if ((v21 & 1) == 0)
        {
          v9 = v18 - 1;
          if (v12 >= v15)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v9 = v7;
      if (v12 >= v15)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v9 < v11)
      {
        goto LABEL_117;
      }

      if (v11 < v9)
      {
        v22 = 8 * v9 - 8;
        v23 = v9;
        v24 = v11;
        do
        {
          if (v24 != --v23)
          {
            v26 = *a3;
            if (!*a3)
            {
              goto LABEL_123;
            }

            v25 = *(v26 + v13);
            *(v26 + v13) = *(v26 + v22);
            *(v26 + v22) = v25;
          }

          ++v24;
          v22 -= 8;
          v13 += 8;
        }

        while (v24 < v23);
        v7 = a3[1];
      }
    }

LABEL_20:
    if (v9 < v7)
    {
      if (__OFSUB__(v9, v11))
      {
        goto LABEL_116;
      }

      if (v9 - v11 < v8)
      {
        if (__OFADD__(v11, v8))
        {
          goto LABEL_118;
        }

        if (v11 + v8 < v7)
        {
          v7 = v11 + v8;
        }

        if (v7 < v11)
        {
LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

        if (v9 != v7)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v9 < v11)
    {
      goto LABEL_115;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_100A5B430(0, *(v10 + 2) + 1, 1, v10);
      v10 = result;
    }

    v5 = *(v10 + 2);
    v35 = *(v10 + 3);
    v36 = v5 + 1;
    if (v5 >= v35 >> 1)
    {
      result = sub_100A5B430((v35 > 1), v5 + 1, 1, v10);
      v10 = result;
    }

    *(v10 + 2) = v36;
    v37 = &v10[16 * v5];
    *(v37 + 4) = v11;
    *(v37 + 5) = v9;
    v38 = *v85;
    if (!*v85)
    {
      goto LABEL_125;
    }

    if (v5)
    {
      while (1)
      {
        v39 = v36 - 1;
        if (v36 >= 4)
        {
          break;
        }

        if (v36 == 3)
        {
          v40 = *(v10 + 4);
          v41 = *(v10 + 5);
          v50 = __OFSUB__(v41, v40);
          v42 = v41 - v40;
          v43 = v50;
LABEL_57:
          if (v43)
          {
            goto LABEL_104;
          }

          v56 = &v10[16 * v36];
          v58 = *v56;
          v57 = *(v56 + 1);
          v59 = __OFSUB__(v57, v58);
          v60 = v57 - v58;
          v61 = v59;
          if (v59)
          {
            goto LABEL_107;
          }

          v62 = &v10[16 * v39 + 32];
          v64 = *v62;
          v63 = *(v62 + 1);
          v50 = __OFSUB__(v63, v64);
          v65 = v63 - v64;
          if (v50)
          {
            goto LABEL_110;
          }

          if (__OFADD__(v60, v65))
          {
            goto LABEL_111;
          }

          if (v60 + v65 >= v42)
          {
            if (v42 < v65)
            {
              v39 = v36 - 2;
            }

            goto LABEL_78;
          }

          goto LABEL_71;
        }

        v66 = &v10[16 * v36];
        v68 = *v66;
        v67 = *(v66 + 1);
        v50 = __OFSUB__(v67, v68);
        v60 = v67 - v68;
        v61 = v50;
LABEL_71:
        if (v61)
        {
          goto LABEL_106;
        }

        v69 = &v10[16 * v39];
        v71 = *(v69 + 4);
        v70 = *(v69 + 5);
        v50 = __OFSUB__(v70, v71);
        v72 = v70 - v71;
        if (v50)
        {
          goto LABEL_109;
        }

        if (v72 < v60)
        {
          goto LABEL_3;
        }

LABEL_78:
        v77 = v39 - 1;
        if (v39 - 1 >= v36)
        {
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
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
          goto LABEL_119;
        }

        if (!*a3)
        {
          goto LABEL_122;
        }

        v78 = *&v10[16 * v77 + 32];
        v5 = *&v10[16 * v39 + 40];
        sub_10087CE30((*a3 + 8 * v78), (*a3 + 8 * *&v10[16 * v39 + 32]), (*a3 + 8 * v5), v38);
        if (v4)
        {
        }

        if (v5 < v78)
        {
          goto LABEL_100;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_100B31E68(v10);
        }

        if (v77 >= *(v10 + 2))
        {
          goto LABEL_101;
        }

        v79 = &v10[16 * v77];
        *(v79 + 4) = v78;
        *(v79 + 5) = v5;
        result = sub_100B31DDC(v39);
        v36 = *(v10 + 2);
        if (v36 <= 1)
        {
          goto LABEL_3;
        }
      }

      v44 = &v10[16 * v36 + 32];
      v45 = *(v44 - 64);
      v46 = *(v44 - 56);
      v50 = __OFSUB__(v46, v45);
      v47 = v46 - v45;
      if (v50)
      {
        goto LABEL_102;
      }

      v49 = *(v44 - 48);
      v48 = *(v44 - 40);
      v50 = __OFSUB__(v48, v49);
      v42 = v48 - v49;
      v43 = v50;
      if (v50)
      {
        goto LABEL_103;
      }

      v51 = &v10[16 * v36];
      v53 = *v51;
      v52 = *(v51 + 1);
      v50 = __OFSUB__(v52, v53);
      v54 = v52 - v53;
      if (v50)
      {
        goto LABEL_105;
      }

      v50 = __OFADD__(v42, v54);
      v55 = v42 + v54;
      if (v50)
      {
        goto LABEL_108;
      }

      if (v55 >= v47)
      {
        v73 = &v10[16 * v39 + 32];
        v75 = *v73;
        v74 = *(v73 + 1);
        v50 = __OFSUB__(v74, v75);
        v76 = v74 - v75;
        if (v50)
        {
          goto LABEL_112;
        }

        if (v42 < v76)
        {
          v39 = v36 - 2;
        }

        goto LABEL_78;
      }

      goto LABEL_57;
    }

LABEL_3:
    v7 = a3[1];
    v8 = a4;
    if (v9 >= v7)
    {
      goto LABEL_88;
    }
  }

  v27 = *a3;
  v28 = *a3 + 8 * v9 - 8;
  v29 = v11 - v9;
LABEL_30:
  v30 = *(v27 + 8 * v9);
  v31 = v29;
  v32 = v28;
  while (1)
  {
    if (v30 >= *v32)
    {
LABEL_29:
      ++v9;
      v28 += 8;
      --v29;
      if (v9 != v7)
      {
        goto LABEL_30;
      }

      v9 = v7;
      goto LABEL_37;
    }

    if (!v27)
    {
      break;
    }

    v33 = *(v32 + 12);
    *(v32 + 8) = *v32;
    *v32 = v30;
    *(v32 + 4) = v33;
    v32 -= 8;
    if (__CFADD__(v31++, 1))
    {
      goto LABEL_29;
    }
  }

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
  return result;
}

uint64_t sub_10087C8E8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v49 = type metadata accessor for BeaconKeyServiceBuilder.KeyIndexMapInfo(0);
  v8 = *(*(v49 - 8) + 64);
  v9 = __chkstk_darwin(v49);
  v48 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v9);
  v47 = &v37 - v12;
  v14 = *(v13 + 72);
  if (!v14)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_61;
  }

  v15 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_62;
  }

  v16 = (a2 - a1) / v14;
  v52 = a1;
  v51 = a4;
  if (v16 >= v15 / v14)
  {
    v18 = v15 / v14 * v14;
    if (a4 < a2 || a2 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v26 = a4 + v18;
    if (v18 >= 1)
    {
      v39 = v48 + 8;
      v40 = v47 + 8;
      v27 = -v14;
      v28 = v26;
      v41 = a4;
      v42 = a1;
      v43 = v27;
      do
      {
        v37 = v26;
        v29 = a2 + v27;
        v44 = a2;
        v45 = a2 + v27;
        while (1)
        {
          if (a2 <= a1)
          {
            v52 = a2;
            v50 = v37;
            goto LABEL_59;
          }

          v31 = a3;
          v38 = v26;
          a3 += v27;
          v32 = v28 + v27;
          v33 = v47;
          sub_1000295D4(v28 + v27, v47, type metadata accessor for BeaconKeyServiceBuilder.KeyIndexMapInfo);
          v34 = v48;
          v35 = v49;
          sub_1000295D4(v29, v48, type metadata accessor for BeaconKeyServiceBuilder.KeyIndexMapInfo);
          v36 = *(v35 + 20);
          LODWORD(v46) = *(v40 + v36);
          LODWORD(v35) = *(v39 + v36);
          sub_10001F1B0(v34, type metadata accessor for BeaconKeyServiceBuilder.KeyIndexMapInfo);
          sub_10001F1B0(v33, type metadata accessor for BeaconKeyServiceBuilder.KeyIndexMapInfo);
          if (v46 < v35)
          {
            break;
          }

          v26 = v32;
          if (v31 < v28 || a3 >= v28)
          {
            swift_arrayInitWithTakeFrontToBack();
            v29 = v45;
            v27 = v43;
          }

          else
          {
            v29 = v45;
            v27 = v43;
            if (v31 != v28)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v28 = v32;
          a1 = v42;
          v30 = v32 > v41;
          a2 = v44;
          if (!v30)
          {
            goto LABEL_57;
          }
        }

        if (v31 < v44 || a3 >= v44)
        {
          a2 = v45;
          swift_arrayInitWithTakeFrontToBack();
          v26 = v38;
          v27 = v43;
        }

        else
        {
          a2 = v45;
          v26 = v38;
          v27 = v43;
          if (v31 != v44)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        a1 = v42;
      }

      while (v28 > v41);
    }

LABEL_57:
    v52 = a2;
    v50 = v26;
  }

  else
  {
    v17 = v16 * v14;
    if (a4 < a1 || a1 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v46 = a4 + v17;
    v50 = a4 + v17;
    if (v17 >= 1 && a2 < a3)
    {
      v43 = v48 + 8;
      v44 = v47 + 8;
      v45 = a3;
      do
      {
        v20 = v47;
        sub_1000295D4(a2, v47, type metadata accessor for BeaconKeyServiceBuilder.KeyIndexMapInfo);
        v21 = v48;
        sub_1000295D4(a4, v48, type metadata accessor for BeaconKeyServiceBuilder.KeyIndexMapInfo);
        v22 = *(v49 + 20);
        v23 = *(v44 + v22);
        v24 = *(v43 + v22);
        sub_10001F1B0(v21, type metadata accessor for BeaconKeyServiceBuilder.KeyIndexMapInfo);
        sub_10001F1B0(v20, type metadata accessor for BeaconKeyServiceBuilder.KeyIndexMapInfo);
        if (v23 >= v24)
        {
          if (a1 < a4 || a1 >= a4 + v14)
          {
            swift_arrayInitWithTakeFrontToBack();
            v25 = v45;
          }

          else
          {
            v25 = v45;
            if (a1 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v51 = a4 + v14;
          a4 += v14;
        }

        else if (a1 < a2 || a1 >= a2 + v14)
        {
          swift_arrayInitWithTakeFrontToBack();
          a2 += v14;
          v25 = v45;
        }

        else
        {
          v25 = v45;
          if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v14;
        }

        a1 += v14;
        v52 = a1;
      }

      while (a4 < v46 && a2 < v25);
    }
  }

LABEL_59:
  sub_10060ABD4(&v52, &v51, &v50);
  return 1;
}

uint64_t sub_10087CE30(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[8 * v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      if (*v6 < *v4)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 8;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 8;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[8 * v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[8 * v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 8;
    v5 -= 8;
    v18 = v14;
    do
    {
      v19 = v5 + 8;
      v20 = *(v18 - 2);
      v18 -= 8;
      if (v20 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 8, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 8;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v21 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= &v4[v21 & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * (v21 >> 3));
  }

  return 1;
}

uint64_t sub_10087D034(uint64_t a1)
{
  v3 = sub_1000BC4D4(&unk_101698C30, &unk_101392630);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v20 - v5;
  v7 = type metadata accessor for SharedBeaconRecord(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  result = __chkstk_darwin(v7 - 8);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*v1 + 16))
  {
    v13 = 1 << *(a1 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(a1 + 56);
    v16 = (v13 + 63) >> 6;

    for (i = 0; v15; result = sub_10000B3A8(v6, &unk_101698C30, &unk_101392630))
    {
      v18 = i;
LABEL_10:
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      sub_1000295D4(*(a1 + 48) + *(v8 + 72) * (v19 | (v18 << 6)), v12, type metadata accessor for SharedBeaconRecord);
      sub_1010F5A64(v12, v6);
      sub_10001F1B0(v12, type metadata accessor for SharedBeaconRecord);
    }

    while (1)
    {
      v18 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v18 >= v16)
      {
      }

      v15 = *(a1 + 56 + 8 * v18);
      ++i;
      if (v15)
      {
        i = v18;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10087D23C(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = *(v2 + 48) + 24 * (v10 | (v9 << 6));
        v12 = *v11;
        v13 = *(v11 + 8);
        v14 = *(v11 + 16);

        sub_1010F5CB0(v12, v13, v14);

        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

uint64_t sub_10087D37C(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
        v12 = *v11;
        v13 = v11[1];
        sub_100017D5C(*v11, v13);
        sub_1010F6048(v12, v13, &v14);
        sub_100016590(v12, v13);
        result = sub_100006654(v14, *(&v14 + 1));
        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

uint64_t sub_10087D4BC(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        result = sub_1010F6494(*(*(v2 + 48) + ((v9 << 9) | (8 * v10))));
        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

uint64_t sub_10087D5F0(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        result = sub_1010F6870(*(*(v2 + 48) + (v10 | (v9 << 6))));
        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

void sub_10087D6E4(uint64_t a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    if (!__CocoaSet.count.getter())
    {
      return;
    }
  }

  else if (!*(v3 + 16))
  {
    return;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_100008BB8(0, &qword_101698D00, SPHandle_ptr);
    sub_100009D18(&qword_101698E28, &qword_101698D00, SPHandle_ptr);
    Set.Iterator.init(_cocoa:)();
    a1 = v20;
    v5 = v21;
    v6 = v22;
    v7 = v23;
    v8 = v24;
  }

  else
  {
    v9 = -1 << *(a1 + 32);
    v5 = a1 + 56;
    v6 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = v11 & *(a1 + 56);

    v7 = 0;
  }

  v12 = (v6 + 64) >> 6;
  if (a1 < 0)
  {
    goto LABEL_20;
  }

  while (1)
  {
    v13 = v7;
    v14 = v8;
    v15 = v7;
    if (!v8)
    {
      break;
    }

LABEL_18:
    v16 = (v14 - 1) & v14;
    v17 = *(*(a1 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
    if (!v17)
    {
LABEL_24:
      sub_1000128F8();
      return;
    }

    while (1)
    {
      v18 = sub_1010F6FE0(v17);

      v7 = v15;
      v8 = v16;
      if ((a1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_20:
      if (__CocoaSet.Iterator.next()())
      {
        sub_100008BB8(0, &qword_101698D00, SPHandle_ptr);
        swift_dynamicCast();
        v17 = v19;
        v15 = v7;
        v16 = v8;
        if (v19)
        {
          continue;
        }
      }

      goto LABEL_24;
    }
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= v12)
    {
      goto LABEL_24;
    }

    v14 = *(v5 + 8 * v15);
    ++v13;
    if (v14)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
}

uint64_t sub_10087D930(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = *(v2 + 48) + 24 * (v10 | (v9 << 6));
        v12 = *(v11 + 8);
        v13 = *(v11 + 16);
        v14 = *v11;

        sub_1010F7524(v14, v12, v13);

        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

uint64_t sub_10087DAAC(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void), void (*a5)(char *))
{
  v27 = a3;
  v28 = a5;
  v26 = a2;
  v8 = sub_1000BC4D4(a2, a3);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v25 - v10;
  v12 = a4(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  result = __chkstk_darwin(v12);
  v17 = v25 - v16;
  if (*(*v5 + 16))
  {
    v18 = 1 << *(a1 + 32);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    v20 = v19 & *(a1 + 56);
    v21 = (v18 + 63) >> 6;
    v25[1] = v13 + 8;
    v25[2] = v13 + 16;

    for (i = 0; v20; result = sub_10000B3A8(v11, v26, v27))
    {
      v23 = i;
LABEL_10:
      v24 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
      (*(v13 + 16))(v17, *(a1 + 48) + *(v13 + 72) * (v24 | (v23 << 6)), v12);
      v28(v17);
      (*(v13 + 8))(v17, v12);
    }

    while (1)
    {
      v23 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v23 >= v21)
      {
      }

      v20 = *(a1 + 56 + 8 * v23);
      ++i;
      if (v20)
      {
        i = v23;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10087DCC8(uint64_t a1)
{
  v3 = sub_1000BC4D4(&qword_1016A59B8, &qword_1013B34D8);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v20 - v5;
  v7 = type metadata accessor for BeaconIdentifier();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  result = __chkstk_darwin(v7 - 8);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*v1 + 16))
  {
    v13 = 1 << *(a1 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(a1 + 56);
    v16 = (v13 + 63) >> 6;

    for (i = 0; v15; result = sub_10000B3A8(v6, &qword_1016A59B8, &qword_1013B34D8))
    {
      v18 = i;
LABEL_10:
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      sub_1000295D4(*(a1 + 48) + *(v8 + 72) * (v19 | (v18 << 6)), v12, type metadata accessor for BeaconIdentifier);
      sub_1010F7F58(v6);
      sub_10001F1B0(v12, type metadata accessor for BeaconIdentifier);
    }

    while (1)
    {
      v18 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v18 >= v16)
      {
      }

      v15 = *(a1 + 56 + 8 * v18);
      ++i;
      if (v15)
      {
        i = v18;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10087DED0(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v2)
    {
      return Data._Representation.replaceSubrange(_:with:count:)();
    }

    goto LABEL_10;
  }

  if (v2 == 2)
  {
    v3 = *(a1 + 16);
    v4 = *(a1 + 24);
    a1 = __DataStorage._bytes.getter();
    if (a1)
    {
      a1 = __DataStorage._offset.getter();
      if (__OFSUB__(v3, a1))
      {
        goto LABEL_16;
      }
    }

    if (!__OFSUB__(v4, v3))
    {
LABEL_13:
      __DataStorage._length.getter();
      return Data._Representation.replaceSubrange(_:with:count:)();
    }

    __break(1u);
LABEL_10:
    v5 = a1;
    if (a1 >> 32 >= a1)
    {
      if (!__DataStorage._bytes.getter() || !__OFSUB__(v5, __DataStorage._offset.getter()))
      {
        goto LABEL_13;
      }

LABEL_17:
      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  return Data._Representation.replaceSubrange(_:with:count:)();
}

uint64_t sub_10087E0A8(uint64_t a1, uint64_t a2)
{
  if (static UUID.== infix(_:_:)() & 1) != 0 && (v4 = *(type metadata accessor for BeaconIdentifier() + 20), (static UUID.== infix(_:_:)()))
  {
    v5 = *(type metadata accessor for BeaconKeyServiceBuilder.FileKey(0) + 20);
    v6 = *(a1 + v5);
    v7 = *(a2 + v5);
    if (v6)
    {
      v8 = 0x7261646E6F636553;
    }

    else
    {
      v8 = 0x7972616D697250;
    }

    if (v6)
    {
      v9 = 0xE900000000000079;
    }

    else
    {
      v9 = 0xE700000000000000;
    }

    if (v7)
    {
      v10 = 0x7261646E6F636553;
    }

    else
    {
      v10 = 0x7972616D697250;
    }

    if (v7)
    {
      v11 = 0xE900000000000079;
    }

    else
    {
      v11 = 0xE700000000000000;
    }

    if (v8 == v10 && v9 == v11)
    {
      v13 = 1;
    }

    else
    {
      v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

uint64_t sub_10087E194()
{
  v2 = *(type metadata accessor for URL() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(type metadata accessor for BeaconIdentifier() - 8);
  v6 = (v3 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = *(v0 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_100014744;

  return sub_100869810(v0 + v3, v0 + v6);
}

uint64_t sub_10087E2F8(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2[6];
  v11 = v2[7];
  v12 = v2[8];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_100014650;

  return sub_100869EA0(a1, a2, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_10087E3E8(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_10087E430(uint64_t a1)
{
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v86 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100008BB8(0, &unk_1016B2A60, NSFileHandle_ptr);
  v10 = *(v4 + 16);
  v9 = v4 + 16;
  v10(v7, a1, v3);
  v11 = sub_100878D64(v7, &selRef_fileHandleForReadingFromURL_error_);
  if (!v1)
  {
    v12 = v11;
    v96 = 0;
    if (([v11 seekToOffset:0 error:&v96] & 1) == 0)
    {
      v19 = v96;
      _convertNSErrorToError(_:)();

      swift_willThrow();
LABEL_22:

      return;
    }

    v13 = v96;
    v14 = [v12 readDataOfLength:3];
    v15 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;

    v18 = v17 >> 62;
    if ((v17 >> 62) > 1)
    {
      if (v18 != 2)
      {
        goto LABEL_20;
      }

      v21 = *(v15 + 16);
      v20 = *(v15 + 24);
      v22 = __OFSUB__(v20, v21);
      v23 = v20 - v21;
      if (!v22)
      {
        if (v23 != 3)
        {
          goto LABEL_20;
        }

        goto LABEL_14;
      }

      __break(1u);
    }

    else
    {
      if (!v18)
      {
        if (BYTE6(v17) != 3)
        {
          goto LABEL_20;
        }

LABEL_14:
        if (Data._Representation.subscript.getter() != 75 || Data._Representation.subscript.getter() != 73 || Data._Representation.subscript.getter() != 77)
        {
          goto LABEL_20;
        }

        v24 = [v12 readDataOfLength:1];
        v9 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v8 = v25;

        v26 = v8 >> 62;
        if ((v8 >> 62) > 1)
        {
          if (v26 != 2)
          {
            goto LABEL_36;
          }

          v30 = *(v9 + 16);
          v29 = *(v9 + 24);
          v22 = __OFSUB__(v29, v30);
          v27 = v29 - v30;
          if (!v22)
          {
LABEL_30:
            if (v27 == 1 && Data._Representation.subscript.getter() == 1)
            {
              v31 = [v12 readDataOfLength:4];
              v95 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
              v33 = v32;

              v34 = v33 >> 62;
              v94 = v33;
              if ((v33 >> 62) > 1)
              {
                if (v34 != 2)
                {
                  goto LABEL_66;
                }

                v38 = *(v95 + 16);
                v92 = *(v95 + 24);
                v93 = v38;
                v39 = __DataStorage._bytes.getter();
                if (v39)
                {
                  v91 = v39;
                  v40 = __DataStorage._offset.getter();
                  v41 = v93;
                  if (__OFSUB__(v93, v40))
                  {
LABEL_117:
                    __break(1u);
                    goto LABEL_118;
                  }

                  v91 += v93 - v40;
                }

                else
                {
                  v91 = 0;
                  v41 = v93;
                }

                v47 = v92 - v41;
                if (!__OFSUB__(v92, v41))
                {
                  v48 = __DataStorage._length.getter();
                  if (v48 >= v47)
                  {
                    v46 = v47;
                  }

                  else
                  {
                    v46 = v48;
                  }

                  v45 = v91;
                  if (!v91)
                  {
                    goto LABEL_66;
                  }

LABEL_55:
                  if ((v46 + 3) >= 7)
                  {
                    v35 = *v45;
                    goto LABEL_57;
                  }

LABEL_66:
                  sub_1000BC4D4(&qword_1016ABE70, &unk_1013BFC70);
                  sub_1000041A4(&qword_1016ABE78, &qword_1016ABE70, &unk_1013BFC70);
                  swift_allocError();
                  *v58 = 0;
                  *(v58 + 4) = 1;
                  swift_willThrow();
LABEL_113:
                  sub_100016590(v95, v94);
                  goto LABEL_37;
                }
              }

              else
              {
                if (!v34)
                {
                  if ((v33 & 0xFC000000000000) != 0)
                  {
                    v35 = v95;
LABEL_57:
                    v90 = v35;
                    v49 = [v12 readDataOfLength:4];
                    v93 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
                    v51 = v50;

                    v52 = v51 >> 62;
                    v92 = v51;
                    if ((v51 >> 62) > 1)
                    {
                      if (v52 != 2)
                      {
                        goto LABEL_98;
                      }

                      v54 = *(v93 + 24);
                      v91 = *(v93 + 16);
                      v89 = v54;
                      v55 = __DataStorage._bytes.getter();
                      if (v55)
                      {
                        v56 = v55;
                        v57 = __DataStorage._offset.getter();
                        if (__OFSUB__(v91, v57))
                        {
LABEL_121:
                          __break(1u);
                          goto LABEL_122;
                        }

                        v88 = v91 - v57 + v56;
                      }

                      else
                      {
                        v88 = 0;
                      }

                      v63 = v89 - v91;
                      if (!__OFSUB__(v89, v91))
                      {
                        v64 = __DataStorage._length.getter();
                        if (v64 >= v63)
                        {
                          v62 = v63;
                        }

                        else
                        {
                          v62 = v64;
                        }

                        v61 = v88;
                        if (!v88)
                        {
                          goto LABEL_98;
                        }

LABEL_80:
                        if ((v62 + 3) >= 7)
                        {
                          v53 = *v61;
                          goto LABEL_82;
                        }

LABEL_98:
                        sub_1000BC4D4(&qword_1016ABE70, &unk_1013BFC70);
                        sub_1000041A4(&qword_1016ABE78, &qword_1016ABE70, &unk_1013BFC70);
                        swift_allocError();
                        *v76 = 1;
                        *(v76 + 4) = 2;
                        swift_willThrow();
LABEL_112:
                        sub_100016590(v93, v92);
                        goto LABEL_113;
                      }

LABEL_120:
                      __break(1u);
                      goto LABEL_121;
                    }

                    if (!v52)
                    {
                      if ((v51 & 0xFC000000000000) != 0)
                      {
                        v53 = v93;
LABEL_82:
                        LODWORD(v88) = v53;
                        v65 = [v12 readDataOfLength:4];
                        v89 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
                        v67 = v66;

                        v91 = v67;
                        v68 = v67 >> 62;
                        if ((v67 >> 62) > 1)
                        {
                          if (v68 != 2)
                          {
                            goto LABEL_111;
                          }

                          v69 = *(v89 + 16);
                          v87 = *(v89 + 24);
                          v70 = __DataStorage._bytes.getter();
                          if (v70)
                          {
                            v71 = __DataStorage._offset.getter();
                            if (__OFSUB__(v69, v71))
                            {
LABEL_125:
                              __break(1u);
                              goto LABEL_126;
                            }

                            v70 = (v70 + v69 - v71);
                          }

                          v22 = __OFSUB__(v87, v69);
                          v72 = v87 - v69;
                          if (!v22)
                          {
                            v73 = __DataStorage._length.getter();
                            if (v73 >= v72)
                            {
                              v74 = v72;
                            }

                            else
                            {
                              v74 = v73;
                            }

                            if (v70 && (v74 + 3) >= 7)
                            {
                              v75 = *v70;
LABEL_107:
                              Data._Representation.subscript.getter();
                              sub_100016590(v15, v17);
                              sub_100016590(v9, v8);
                              sub_100016590(v95, v94);

                              sub_100016590(v93, v92);
                              sub_100016590(v89, v91);
                              return;
                            }

LABEL_111:
                            sub_1000BC4D4(&qword_1016ABE70, &unk_1013BFC70);
                            sub_1000041A4(&qword_1016ABE78, &qword_1016ABE70, &unk_1013BFC70);
                            swift_allocError();
                            *v85 = 1;
                            *(v85 + 4) = 2;
                            swift_willThrow();
                            sub_100016590(v89, v91);
                            goto LABEL_112;
                          }

LABEL_124:
                          __break(1u);
                          goto LABEL_125;
                        }

                        if (!v68)
                        {
                          if ((v91 & 0xFC000000000000) != 0)
                          {
                            goto LABEL_107;
                          }

                          goto LABEL_111;
                        }

                        v77 = v89;
                        v87 = (v89 >> 32) - v89;
                        if (v89 >> 32 >= v89)
                        {
                          v78 = __DataStorage._bytes.getter();
                          if (v78)
                          {
                            v79 = v78;
                            v80 = __DataStorage._offset.getter();
                            if (!__OFSUB__(v77, v80))
                            {
                              v81 = (v77 - v80 + v79);
                              v82 = __DataStorage._length.getter();
                              if (v81)
                              {
                                v83 = v87;
                                if (v82 < v87)
                                {
                                  v83 = v82;
                                }

                                if ((v83 + 3) >= 7)
                                {
                                  v84 = *v81;
                                  goto LABEL_107;
                                }
                              }

                              goto LABEL_111;
                            }

LABEL_126:
                            __break(1u);
                            return;
                          }

LABEL_110:
                          __DataStorage._length.getter();
                          goto LABEL_111;
                        }

LABEL_123:
                        __break(1u);
                        goto LABEL_124;
                      }

                      goto LABEL_98;
                    }

                    v91 = v93;
                    v88 = (v93 >> 32) - v93;
                    if (v93 >> 32 >= v93)
                    {
                      v89 = __DataStorage._bytes.getter();
                      if (!v89)
                      {
                        __DataStorage._length.getter();
                        goto LABEL_98;
                      }

                      v59 = __DataStorage._offset.getter();
                      if (!__OFSUB__(v91, v59))
                      {
                        v91 = v91 - v59 + v89;
                        v60 = __DataStorage._length.getter();
                        if (!v91)
                        {
                          goto LABEL_98;
                        }

                        v61 = v91;
                        v62 = v88;
                        if (v60 < v88)
                        {
                          v62 = v60;
                        }

                        goto LABEL_80;
                      }

LABEL_122:
                      __break(1u);
                      goto LABEL_123;
                    }

LABEL_119:
                    __break(1u);
                    goto LABEL_120;
                  }

                  goto LABEL_66;
                }

                v92 = (v95 >> 32) - v95;
                v93 = v95;
                if (v95 >> 32 >= v95)
                {
                  v42 = __DataStorage._bytes.getter();
                  if (!v42)
                  {
                    __DataStorage._length.getter();
                    goto LABEL_66;
                  }

                  v91 = v42;
                  v43 = __DataStorage._offset.getter();
                  if (!__OFSUB__(v93, v43))
                  {
                    v93 = v93 - v43 + v91;
                    v44 = __DataStorage._length.getter();
                    v45 = v93;
                    if (!v93)
                    {
                      goto LABEL_66;
                    }

                    v46 = v92;
                    if (v44 < v92)
                    {
                      v46 = v44;
                    }

                    goto LABEL_55;
                  }

LABEL_118:
                  __break(1u);
                  goto LABEL_119;
                }

                __break(1u);
              }

              __break(1u);
              goto LABEL_117;
            }

LABEL_36:
            v36 = Data._Representation.subscript.getter();
            sub_1000BC4D4(&qword_1016ABE70, &unk_1013BFC70);
            sub_1000041A4(&qword_1016ABE78, &qword_1016ABE70, &unk_1013BFC70);
            swift_allocError();
            *v37 = v36;
            *(v37 + 4) = 0;
            swift_willThrow();
LABEL_37:
            sub_100016590(v9, v8);
            goto LABEL_21;
          }

          __break(1u);
        }

        else if (!v26)
        {
          v27 = BYTE6(v8);
          goto LABEL_30;
        }

        LODWORD(v27) = HIDWORD(v9) - v9;
        if (__OFSUB__(HIDWORD(v9), v9))
        {
          __break(1u);
        }

        v27 = v27;
        goto LABEL_30;
      }

      if (!__OFSUB__(HIDWORD(v15), v15))
      {
        if (HIDWORD(v15) - v15 == 3)
        {
          goto LABEL_14;
        }

LABEL_20:
        sub_1000BC4D4(&qword_1016ABE70, &unk_1013BFC70);
        sub_1000041A4(&qword_1016ABE78, &qword_1016ABE70, &unk_1013BFC70);
        swift_allocError();
        *v28 = 0;
        *(v28 + 4) = 2;
        swift_willThrow();
LABEL_21:
        sub_100016590(v15, v17);
        goto LABEL_22;
      }
    }

    __break(1u);
    goto LABEL_110;
  }
}

uint64_t sub_10087EE70(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10087EED8(uint64_t a1)
{
  v3 = v2;
  v4 = *(type metadata accessor for KeyGenerationBeaconInfo() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = v1[3];
  v19 = v1[2];
  v11 = v1[4];
  v12 = *(v1 + v6);
  v13 = *(v1 + v7);
  v14 = *(v1 + v8);
  v15 = *(v1 + v9);
  v16 = *(v1 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8));
  v17 = swift_task_alloc();
  *(v3 + 16) = v17;
  *v17 = v3;
  v17[1] = sub_100014744;

  return sub_10086A3B0(a1, v19, v10, v11, v1 + v5, v12, v13, v14);
}

uint64_t sub_10087F054()
{
  v2 = *(type metadata accessor for KeyGenerationBeaconInfo() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + 16);
  v9 = *(v0 + v4);
  v10 = *(v0 + v5);
  v11 = *(v0 + v6);
  v12 = *(v0 + v7);
  v13 = *(v0 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
  v14 = swift_task_alloc();
  *(v1 + 16) = v14;
  *v14 = v1;
  v14[1] = sub_100014744;

  return sub_10086A8A8(v8, v0 + v3, v9, v10, v11, v12);
}

uint64_t sub_10087F1BC(uint64_t a1)
{
  v1[11] = a1;
  v2 = type metadata accessor for BeaconKeyServiceBuilder.KeyIndexMapInfo(0);
  v1[12] = v2;
  v3 = *(v2 - 8);
  v1[13] = v3;
  v4 = *(v3 + 64) + 15;
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v5 = *(*(sub_1000BC4D4(&unk_101696AC0, &qword_101390A60) - 8) + 64) + 15;
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  v6 = type metadata accessor for DirectorySequence();
  v1[31] = v6;
  v7 = *(v6 - 8);
  v1[32] = v7;
  v8 = *(v7 + 64) + 15;
  v1[33] = swift_task_alloc();
  v9 = type metadata accessor for URL();
  v1[34] = v9;
  v10 = *(v9 - 8);
  v1[35] = v10;
  v11 = *(v10 + 64) + 15;
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();
  v1[38] = swift_task_alloc();
  v1[39] = swift_task_alloc();
  v1[40] = swift_task_alloc();
  v1[41] = swift_task_alloc();

  return _swift_task_switch(sub_10087F488, 0, 0);
}

uint64_t sub_10087F488()
{
  v211 = v0;
  v203 = [objc_opt_self() defaultManager];
  if (qword_101694A00 != -1)
  {
    goto LABEL_79;
  }

  while (1)
  {
    v1 = v0[41];
    v2 = v0[34];
    v3 = v0[35];
    v4 = v0[11];
    v5 = type metadata accessor for Logger();
    sub_1000076D4(v5, qword_1016ABAA8);
    v191 = *(v3 + 16);
    v191(v1, v4, v2);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    v8 = os_log_type_enabled(v6, v7);
    v9 = v0[41];
    v10 = v0[34];
    v11 = v0[35];
    if (v8)
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v210[0] = v13;
      *v12 = 141558275;
      *(v12 + 4) = 1752392040;
      *(v12 + 12) = 2081;
      sub_10087E3E8(&qword_1016B14E0, &type metadata accessor for URL);
      v14 = dispatch thunk of CustomStringConvertible.description.getter();
      v16 = v15;
      v204 = *(v11 + 8);
      v204(v9, v10);
      v17 = sub_1000136BC(v14, v16, v210);

      *(v12 + 14) = v17;
      _os_log_impl(&_mh_execute_header, v6, v7, "Verify file integrity for directory: %{private,mask.hash}s", v12, 0x16u);
      sub_100007BAC(v13);
    }

    else
    {

      v204 = *(v11 + 8);
      v204(v9, v10);
    }

    v18 = v0[34];
    v19 = v0[35];
    v20 = v0[33];
    v21 = v0[30];
    v22 = v0[11];
    NSFileManager.flatSequence(at:includingPropertiesForKeys:)();
    DirectorySequence.next()();
    v200 = *(v19 + 48);
    if (v200(v21, 1, v18) == 1)
    {
      v23 = _swiftEmptyArrayStorage;
    }

    else
    {
      v185 = *(v0[35] + 32);
      v23 = _swiftEmptyArrayStorage;
      v174 = v0[12];
      v177 = v0[13];
      do
      {
        v182 = v23;
        while (1)
        {
          v185(v0[40], v0[30], v0[34]);
          if (URL.pathExtension.getter() == 0x70616D79656BLL && v27 == 0xE600000000000000)
          {
            break;
          }

          v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v29)
          {
            goto LABEL_18;
          }

          v191(v0[39], v0[40], v0[34]);
          v30 = Logger.logObject.getter();
          v31 = static os_log_type_t.error.getter();
          v32 = os_log_type_enabled(v30, v31);
          v33 = v0[39];
          v34 = v0[34];
          if (v32)
          {
            v35 = swift_slowAlloc();
            v36 = swift_slowAlloc();
            v210[0] = v36;
            *v35 = 136315138;
            v37 = URL.path.getter();
            v39 = v38;
            v204(v33, v34);
            v40 = sub_1000136BC(v37, v39, v210);

            *(v35 + 4) = v40;
            _os_log_impl(&_mh_execute_header, v30, v31, "Removing unexpected file: %s", v35, 0xCu);
            sub_100007BAC(v36);
          }

          else
          {

            v204(v33, v34);
          }

          v44 = v0[40];
          URL._bridgeToObjectiveC()(v41);
          v46 = v45;
          v0[6] = 0;
          v47 = [v203 removeItemAtURL:v45 error:v0 + 6];

          v48 = v0[6];
          if (v47)
          {
            v49 = v48;
          }

          else
          {
            v50 = v48;
            _convertNSErrorToError(_:)();

            swift_willThrow();
          }

          v204(v0[40], v0[34]);
          v25 = v0[33];
          v24 = v0[34];
          v26 = v0[30];
          DirectorySequence.next()();
          if (v200(v26, 1, v24) == 1)
          {
            v23 = v182;
            goto LABEL_32;
          }
        }

LABEL_18:
        v42 = v0[40];
        v43 = objc_autoreleasePoolPush();
        sub_10087E430(v42);
        v51 = v0[40];
        v52 = v0[34];
        v54 = HIDWORD(v53);
        v56 = HIDWORD(v55);
        v58 = v0[25];
        v57 = v0[26];
        v59 = v55;
        v60 = v43;
        LODWORD(v43) = v53;
        objc_autoreleasePoolPop(v60);
        v191(v57, v51, v52);
        v61 = v57 + *(v174 + 20);
        *v61 = v59;
        *(v61 + 4) = v56;
        *(v61 + 8) = v43;
        *(v61 + 12) = v54;
        sub_1000295D4(v57, v58, type metadata accessor for BeaconKeyServiceBuilder.KeyIndexMapInfo);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (isUniquelyReferenced_nonNull_native)
        {
          v23 = v182;
        }

        else
        {
          v23 = sub_100A5E0B4(0, v182[2] + 1, 1, v182);
        }

        v64 = v23[2];
        v63 = v23[3];
        if (v64 >= v63 >> 1)
        {
          v23 = sub_100A5E0B4(v63 > 1, v64 + 1, 1, v23);
        }

        v65 = v0[40];
        v66 = v0[33];
        v67 = v0[34];
        v68 = v0[30];
        v69 = v0[25];
        sub_10001F1B0(v0[26], type metadata accessor for BeaconKeyServiceBuilder.KeyIndexMapInfo);
        v204(v65, v67);
        v23[2] = v64 + 1;
        sub_10087EE70(v69, v23 + ((*(v177 + 80) + 32) & ~*(v177 + 80)) + *(v177 + 72) * v64, type metadata accessor for BeaconKeyServiceBuilder.KeyIndexMapInfo);
        DirectorySequence.next()();
      }

      while (v200(v68, 1, v67) != 1);
    }

LABEL_32:
    (*(v0[32] + 8))(v0[33], v0[31]);
    v70 = v23[2];
    v71 = _swiftEmptyArrayStorage;
    v183 = v23;
    if (v70)
    {
      v73 = v0[12];
      v72 = v0[13];
      v210[0] = _swiftEmptyArrayStorage;
      sub_101125314(0, v70, 0);
      v71 = v210[0];
      v74 = v23 + ((*(v72 + 80) + 32) & ~*(v72 + 80));
      v75 = *(v72 + 72);
      while (1)
      {
        v76 = v0[24];
        sub_1000295D4(v74, v76, type metadata accessor for BeaconKeyServiceBuilder.KeyIndexMapInfo);
        v206 = *(v76 + *(v73 + 20) + 8);
        sub_10001F1B0(v76, type metadata accessor for BeaconKeyServiceBuilder.KeyIndexMapInfo);
        v77 = v206;
        if (vcgt_u32(v206, vdup_lane_s32(v206, 1)).u8[0])
        {
          break;
        }

        v210[0] = v71;
        v79 = v71[2];
        v78 = v71[3];
        if (v79 >= v78 >> 1)
        {
          sub_101125314((v78 > 1), v79 + 1, 1);
          v77 = v206;
          v71 = v210[0];
        }

        v71[2] = v79 + 1;
        v71[v79 + 4] = v77;
        v74 += v75;
        if (!--v70)
        {
          goto LABEL_38;
        }
      }

      __break(1u);
      goto LABEL_78;
    }

LABEL_38:
    v210[0] = v71;

    sub_100865634(v210);

    if (!v210[0][2])
    {
      v95 = v0[34];
      v96 = v0[35];
      v97 = v0[29];

      (*(v96 + 56))(v97, 1, 1, v95);
      goto LABEL_57;
    }

    v80 = *(v210[0] + 8);
    v207 = *(v210[0] + 9);

    v81 = v183;
    v82 = v183[2];
    if (!v82)
    {
      break;
    }

    v83 = 0;
    v85 = v0[12];
    v84 = v0[13];
    v86 = _swiftEmptyArrayStorage;
    v195 = v80;
    while (v83 < v81[2])
    {
      v87 = v0[23];
      v88 = (*(v84 + 80) + 32) & ~*(v84 + 80);
      v89 = *(v84 + 72);
      sub_1000295D4(v81 + v88 + v89 * v83, v87, type metadata accessor for BeaconKeyServiceBuilder.KeyIndexMapInfo);
      v90 = v87 + *(v85 + 20);
      if (*(v90 + 8) == v80 && *(v90 + 12) == v207)
      {
        sub_10087EE70(v0[23], v0[22], type metadata accessor for BeaconKeyServiceBuilder.KeyIndexMapInfo);
        v91 = swift_isUniquelyReferenced_nonNull_native();
        v210[0] = v86;
        if ((v91 & 1) == 0)
        {
          sub_1011252D0(0, v86[2] + 1, 1);
          v86 = v210[0];
        }

        v93 = v86[2];
        v92 = v86[3];
        if (v93 >= v92 >> 1)
        {
          sub_1011252D0(v92 > 1, v93 + 1, 1);
          v86 = v210[0];
        }

        v94 = v0[22];
        v86[2] = v93 + 1;
        sub_10087EE70(v94, v86 + v88 + v93 * v89, type metadata accessor for BeaconKeyServiceBuilder.KeyIndexMapInfo);
        v80 = v195;
      }

      else
      {
        sub_10001F1B0(v0[23], type metadata accessor for BeaconKeyServiceBuilder.KeyIndexMapInfo);
      }

      ++v83;
      v81 = v183;
      if (v82 == v83)
      {
        goto LABEL_53;
      }
    }

LABEL_78:
    __break(1u);
LABEL_79:
    swift_once();
  }

  v86 = _swiftEmptyArrayStorage;
LABEL_53:
  v210[0] = v86;

  sub_10086558C(v210);

  if (v210[0][2])
  {
    v98 = v0[34];
    v99 = v0[35];
    v100 = v0[28];
    v101 = v0[21];
    v102 = *(v0[13] + 80);
    sub_1000295D4(v210[0] + ((v102 + 32) & ~v102), v101, type metadata accessor for BeaconKeyServiceBuilder.KeyIndexMapInfo);

    (*(v99 + 32))(v100, v101, v98);
    v103 = 0;
  }

  else
  {

    v103 = 1;
  }

  v104 = v0[28];
  v105 = v0[29];
  (*(v0[35] + 56))(v104, v103, 1, v0[34]);
  sub_1000D2AD8(v104, v105, &unk_101696AC0, &qword_101390A60);
LABEL_57:
  v106 = v183[2];
  if (v106)
  {
    v107 = v0[13];
    v186 = v0[12];
    v108 = v183 + ((*(v107 + 80) + 32) & ~*(v107 + 80));
    v208 = *(v107 + 72);
    v166 = v0[17] + 12;
    v167 = v0[18] + 8;
    v172 = v0[14] + 12;
    v175 = v0[15] + 8;
    v180 = (v0[35] + 32);
    while (1)
    {
      v111 = v0[34];
      v112 = v0[29];
      v113 = v0[27];
      sub_1000295D4(v108, v0[20], type metadata accessor for BeaconKeyServiceBuilder.KeyIndexMapInfo);
      sub_1000D2A70(v112, v113, &unk_101696AC0, &qword_101390A60);
      if (v200(v113, 1, v111) == 1)
      {
        break;
      }

      v114 = v0[20];
      (*v180)(v0[38], v0[27], v0[34]);
      if ((static URL.== infix(_:_:)() & 1) == 0)
      {
        v204(v0[38], v0[34]);
        goto LABEL_68;
      }

      v115 = v0[20];
      v117 = v0[17];
      v116 = v0[18];
      sub_1000295D4(v115, v0[19], type metadata accessor for BeaconKeyServiceBuilder.KeyIndexMapInfo);
      sub_1000295D4(v115, v116, type metadata accessor for BeaconKeyServiceBuilder.KeyIndexMapInfo);
      sub_1000295D4(v115, v117, type metadata accessor for BeaconKeyServiceBuilder.KeyIndexMapInfo);
      v118 = Logger.logObject.getter();
      v119 = static os_log_type_t.default.getter();
      v120 = os_log_type_enabled(v118, v119);
      v188 = v0[34];
      v192 = v0[38];
      v121 = v0[19];
      v122 = v0[20];
      v123 = v0[17];
      v124 = v0[18];
      if (v120)
      {
        v169 = v0[17];
        v170 = v119;
        v125 = swift_slowAlloc();
        v196 = v106;
        v126 = swift_slowAlloc();
        v210[0] = v126;
        *v125 = 136315650;
        v171 = v122;
        v127 = URL.path.getter();
        log = v118;
        v128 = v108;
        v130 = v129;
        sub_10001F1B0(v121, type metadata accessor for BeaconKeyServiceBuilder.KeyIndexMapInfo);
        v131 = sub_1000136BC(v127, v130, v210);
        v108 = v128;

        *(v125 + 4) = v131;
        *(v125 + 12) = 1024;
        LODWORD(v131) = *(v167 + *(v186 + 20));
        sub_10001F1B0(v124, type metadata accessor for BeaconKeyServiceBuilder.KeyIndexMapInfo);
        *(v125 + 14) = v131;
        *(v125 + 18) = 1024;
        LODWORD(v131) = *(v166 + *(v186 + 20));
        sub_10001F1B0(v169, type metadata accessor for BeaconKeyServiceBuilder.KeyIndexMapInfo);
        *(v125 + 20) = v131;
        _os_log_impl(&_mh_execute_header, log, v170, "KEEP: %s [%u...%u]", v125, 0x18u);
        sub_100007BAC(v126);
        v106 = v196;

        v204(v192, v188);
        v110 = v171;
      }

      else
      {
        sub_10001F1B0(v0[17], type metadata accessor for BeaconKeyServiceBuilder.KeyIndexMapInfo);
        sub_10001F1B0(v124, type metadata accessor for BeaconKeyServiceBuilder.KeyIndexMapInfo);

        sub_10001F1B0(v121, type metadata accessor for BeaconKeyServiceBuilder.KeyIndexMapInfo);
        v204(v192, v188);
        v110 = v122;
      }

LABEL_61:
      sub_10001F1B0(v110, type metadata accessor for BeaconKeyServiceBuilder.KeyIndexMapInfo);
      v108 += v208;
      if (!--v106)
      {
        goto LABEL_74;
      }
    }

    sub_10000B3A8(v0[27], &unk_101696AC0, &qword_101390A60);
LABEL_68:
    v132 = v0[20];
    v133 = v0[15];
    v134 = v0[14];
    sub_1000295D4(v132, v0[16], type metadata accessor for BeaconKeyServiceBuilder.KeyIndexMapInfo);
    sub_1000295D4(v132, v133, type metadata accessor for BeaconKeyServiceBuilder.KeyIndexMapInfo);
    sub_1000295D4(v132, v134, type metadata accessor for BeaconKeyServiceBuilder.KeyIndexMapInfo);
    v135 = Logger.logObject.getter();
    v136 = static os_log_type_t.default.getter();
    v137 = os_log_type_enabled(v135, v136);
    v139 = v0[15];
    v138 = v0[16];
    v140 = v0[14];
    if (v137)
    {
      v189 = v0[14];
      v141 = swift_slowAlloc();
      v197 = v106;
      v142 = swift_slowAlloc();
      v210[0] = v142;
      *v141 = 136315650;
      v193 = v108;
      v143 = URL.path.getter();
      v145 = v144;
      sub_10001F1B0(v138, type metadata accessor for BeaconKeyServiceBuilder.KeyIndexMapInfo);
      v146 = sub_1000136BC(v143, v145, v210);

      *(v141 + 4) = v146;
      *(v141 + 12) = 1024;
      LODWORD(v146) = *(v175 + *(v186 + 20));
      sub_10001F1B0(v139, type metadata accessor for BeaconKeyServiceBuilder.KeyIndexMapInfo);
      *(v141 + 14) = v146;
      *(v141 + 18) = 1024;
      v108 = v193;
      LODWORD(v146) = *(v172 + *(v186 + 20));
      sub_10001F1B0(v189, type metadata accessor for BeaconKeyServiceBuilder.KeyIndexMapInfo);
      *(v141 + 20) = v146;
      _os_log_impl(&_mh_execute_header, v135, v136, "TOSS: %s [%u...%u]", v141, 0x18u);
      sub_100007BAC(v142);
      v106 = v197;
    }

    else
    {
      sub_10001F1B0(v0[14], type metadata accessor for BeaconKeyServiceBuilder.KeyIndexMapInfo);
      sub_10001F1B0(v139, type metadata accessor for BeaconKeyServiceBuilder.KeyIndexMapInfo);

      sub_10001F1B0(v138, type metadata accessor for BeaconKeyServiceBuilder.KeyIndexMapInfo);
    }

    v148 = v0[20];
    URL._bridgeToObjectiveC()(v147);
    v150 = v149;
    v0[5] = 0;
    v151 = [v203 removeItemAtURL:v149 error:v0 + 5];

    v152 = v0[5];
    v153 = v0[20];
    if (v151)
    {
      v109 = v152;
    }

    else
    {
      v154 = v152;
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }

    v110 = v153;
    goto LABEL_61;
  }

LABEL_74:

  v155 = v0[40];
  v156 = v0[41];
  v158 = v0[38];
  v157 = v0[39];
  v160 = v0[36];
  v159 = v0[37];
  v161 = v0[33];
  v163 = v0[29];
  v162 = v0[30];
  v173 = v0[28];
  v176 = v0[27];
  v178 = v0[26];
  v179 = v0[25];
  v181 = v0[24];
  v184 = v0[23];
  v187 = v0[22];
  v190 = v0[21];
  v194 = v0[20];
  v198 = v0[19];
  v199 = v0[18];
  v201 = v0[17];
  v202 = v0[16];
  v205 = v0[15];
  v209 = v0[14];

  sub_10000B3A8(v163, &unk_101696AC0, &qword_101390A60);

  v164 = v0[1];

  return v164();
}