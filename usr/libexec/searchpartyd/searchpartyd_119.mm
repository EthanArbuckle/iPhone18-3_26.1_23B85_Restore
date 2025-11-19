uint64_t sub_100C7A598()
{
  v2 = *(*v1 + 624);
  v3 = *v1;
  v3[79] = v0;

  if (v0)
  {
    v4 = v3[77];
    v5 = v3[75];
    v6 = v3[74];
    v7 = v3[71];
    v8 = v3[70];
    v9 = v3[69];
    v10 = v3[66];
    v11 = v3[63];
    v12 = v3[64];

    v13 = v3[1];

    return v13();
  }

  else
  {
    v15 = v3[60];

    return _swift_task_switch(sub_100C7A760, v15, 0);
  }
}

void sub_100C7A760()
{
  v119 = v0;
  v1 = *(v0 + 376);
  if (v1 >> 60 == 15)
  {
    sub_1001BAEE0();
    swift_allocError();
    *v2 = 15;
    swift_willThrow();
    sub_1001BAF34(v0 + 368);
LABEL_3:
    v3 = *(v0 + 616);
    v4 = *(v0 + 600);
    v5 = *(v0 + 592);
    v6 = *(v0 + 568);
    v7 = *(v0 + 560);
    v8 = *(v0 + 552);
    v9 = *(v0 + 528);
    v11 = *(v0 + 504);
    v10 = *(v0 + 512);

    v12 = *(v0 + 8);

    v12();
    return;
  }

  v13 = *(v0 + 368);
  v14 = *(v0 + 632);
  v15 = *(v0 + 600);
  v16 = *(v0 + 464);
  sub_100017D5C(v13, *(v0 + 376));
  v17 = objc_autoreleasePoolPush();
  sub_100E7AB5C(v16, v15);
  objc_autoreleasePoolPop(v17);
  if (v14)
  {
    return;
  }

  v18 = *(v0 + 592);
  v19 = *(v0 + 464);
  v20 = objc_autoreleasePoolPush();
  sub_100E7AB5C(v19, v18);
  objc_autoreleasePoolPop(v20);
  v21 = *(v0 + 616);
  v22 = *(v0 + 608);
  v23 = *(v0 + 592);
  v24 = *(v0 + 576);
  v25 = *(*(v0 + 584) + 32);
  v25(v21, *(v0 + 600), v24);
  *(v21 + *(v22 + 20)) = 0;
  v25(v21 + *(v22 + 24), v23, v24);
  v26 = type metadata accessor for PropertyListEncoder();
  v27 = *(v26 + 48);
  v28 = *(v26 + 52);
  swift_allocObject();
  PropertyListEncoder.init()();
  *(v0 + 432) = v13;
  *(v0 + 440) = v1;
  sub_100313230();
  v29 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v31 = v30;
  v114 = v26;
  v32 = *(v0 + 568);
  v33 = *(v0 + 472);
  v34 = v29;

  sub_1000BC4D4(&qword_1016B3D10, &unk_1013E35E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_101385D80;
  v36 = type metadata accessor for EncryptedData();
  v109 = *(*(v36 - 8) + 56);
  v111 = v36;
  v109(v32, 1, 1);
  sub_100017D5C(v34, v31);
  v117 = v34;
  sub_10125A120(0, v34, v31, v32, (v0 + 296));
  *(inited + 32) = *(v0 + 296);
  v37 = *(v0 + 312);
  v38 = *(v0 + 328);
  v39 = *(v0 + 344);
  *(inited + 96) = *(v0 + 360);
  *(inited + 64) = v38;
  *(inited + 80) = v39;
  *(inited + 48) = v37;
  v40 = (v33 + *(type metadata accessor for OwnerPeerTrust() + 36));
  v41 = *v40;
  v42 = v40[1];
  sub_100017D5C(*v40, v42);
  v43 = sub_100D11764(inited, v41, v42);
  v44 = *(v0 + 616);
  v99 = v40;
  v101 = v43;
  v107 = v31;
  v45 = *(v0 + 560);
  v46 = *(v0 + 536);
  v104 = *(v0 + 472);
  sub_100016590(v41, v42);
  swift_setDeallocating();
  sub_100391554(inited + 32);
  sub_100D11DC8(v44, &v45[*(v46 + 20)], type metadata accessor for KeyDropInterface.KeyAlignment);
  *v45 = 7;
  v98 = v46;
  *&v45[*(v46 + 24)] = v101;
  v47 = *(v0 + 400);
  v48 = swift_task_alloc();
  *(v48 + 16) = v104;

  v49 = sub_10013D028(sub_100D13A2C, v48, v47);

  v50 = *(v49 + 16);
  if (v50 > 1)
  {
    if (qword_101694DF8 != -1)
    {
      swift_once();
    }

    v51 = *(v0 + 528);
    v52 = *(v0 + 464);
    v53 = type metadata accessor for Logger();
    sub_1000076D4(v53, qword_10177BF08);
    sub_100D11DC8(v52, v51, type metadata accessor for OwnerSharingCircle);
    swift_bridgeObjectRetain_n();
    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.error.getter();
    v56 = os_log_type_enabled(v54, v55);
    v57 = *(v0 + 528);
    if (v56)
    {
      log = v54;
      v102 = v55;
      v58 = *(v0 + 520);
      v59 = *(v0 + 528);
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v118 = v61;
      *v60 = 141558531;
      *(v60 + 4) = 1752392040;
      *(v60 + 12) = 2081;
      v62 = *(v58 + 20);
      type metadata accessor for UUID();
      sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID);
      v63 = dispatch thunk of CustomStringConvertible.description.getter();
      v65 = v64;
      sub_100018D00(v59, type metadata accessor for OwnerSharingCircle);
      v66 = sub_1000136BC(v63, v65, &v118);

      *(v60 + 14) = v66;
      *(v60 + 22) = 2048;
      v67 = *(v49 + 16);

      *(v60 + 24) = v67;

      _os_log_impl(&_mh_execute_header, log, v102, "Multiple join tokens found for ownerCircle: %{private,mask.hash}s, count: %ld.", v60, 0x20u);
      sub_100007BAC(v61);
    }

    else
    {
      swift_bridgeObjectRelease_n();

      sub_100018D00(v57, type metadata accessor for OwnerSharingCircle);
    }

    v50 = *(v49 + 16);
  }

  if (!v50)
  {
    v74 = *(v0 + 616);
    v75 = *(v0 + 560);

    sub_1001BAEE0();
    swift_allocError();
    *v76 = 13;
    swift_willThrow();
    sub_100006654(v13, v1);
    sub_1001BAF34(v0 + 368);
    sub_100016590(v117, v107);
    sub_100018D00(v75, type metadata accessor for KeyDropInterface.KeyPackage);
    sub_100018D00(v74, type metadata accessor for KeyDropInterface.KeyAlignment);
    goto LABEL_3;
  }

  v68 = *(v0 + 504);
  v69 = *(v0 + 512);
  v105 = *(v0 + 488);
  v70 = *(*(v0 + 496) + 80);
  sub_100D11DC8(v49 + ((v70 + 32) & ~v70), v68, type metadata accessor for KeyDropJoinToken);

  sub_100D12974(v68, v69, type metadata accessor for KeyDropJoinToken);
  v71 = *(v114 + 48);
  v72 = *(v114 + 52);
  swift_allocObject();
  PropertyListEncoder.init()();
  sub_100D13BF8(&qword_1016B9BD8, type metadata accessor for KeyDropJoinToken);
  v73 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v77 = *(v0 + 568);
  v78 = v73;
  v80 = v79;

  v81 = swift_initStackObject();
  *(v81 + 16) = xmmword_101385D80;
  (v109)(v77, 1, 1, v111);
  sub_100017D5C(v78, v80);
  v115 = v78;
  v116 = v80;
  sub_10125A120(0, v78, v80, v77, (v0 + 224));
  *(v81 + 32) = *(v0 + 224);
  v82 = *(v0 + 240);
  v83 = *(v0 + 256);
  v84 = *(v0 + 272);
  *(v81 + 96) = *(v0 + 288);
  *(v81 + 64) = v83;
  *(v81 + 80) = v84;
  *(v81 + 48) = v82;
  v86 = *v99;
  v85 = v99[1];
  sub_100017D5C(*v99, v85);
  v87 = sub_100D11764(v81, v86, v85);
  v88 = *(v0 + 616);
  v108 = *(v0 + 592);
  v110 = *(v0 + 568);
  v100 = *(v0 + 560);
  v89 = *(v0 + 552);
  v90 = *(v0 + 544);
  v103 = *(v0 + 512);
  v106 = *(v0 + 600);
  v112 = *(v0 + 528);
  v113 = *(v0 + 504);
  loga = v87;
  sub_100016590(v86, v85);
  swift_setDeallocating();
  sub_100391554(v81 + 32);
  sub_100D11DC8(v88, &v89[*(v98 + 20)], type metadata accessor for KeyDropInterface.KeyAlignment);
  *v89 = 11;
  *&v89[*(v98 + 24)] = loga;
  sub_1000BC4D4(&qword_1016B3D18, &qword_1013E3760);
  v91 = *(v90 + 72);
  v92 = (*(v90 + 80) + 32) & ~*(v90 + 80);
  v93 = swift_allocObject();
  *(v93 + 16) = xmmword_10138BBE0;
  v94 = v93 + v92;
  sub_100D11DC8(v100, v94, type metadata accessor for KeyDropInterface.KeyPackage);
  sub_100D12974(v89, v94 + v91, type metadata accessor for KeyDropInterface.KeyPackage);
  sub_100006654(v13, v1);
  sub_1001BAF34(v0 + 368);
  sub_100016590(v115, v116);
  sub_100016590(v117, v107);
  sub_100018D00(v103, type metadata accessor for KeyDropJoinToken);
  sub_100018D00(v100, type metadata accessor for KeyDropInterface.KeyPackage);
  sub_100018D00(v88, type metadata accessor for KeyDropInterface.KeyAlignment);

  v95 = *(v0 + 8);

  v95(v93);
}

uint64_t sub_100C7B39C(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = type metadata accessor for UUID();
  v3[6] = v4;
  v5 = *(v4 - 8);
  v3[7] = v5;
  v3[8] = *(v5 + 64);
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();

  return _swift_task_switch(sub_100C7B474, 0, 0);
}

uint64_t sub_100C7B474()
{
  v1 = *(*(v0 + 40) + 120);
  *(v0 + 88) = v1;
  return _swift_task_switch(sub_100C7B498, v1, 0);
}

uint64_t sub_100C7B498()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[7];
  v4 = v0[6];
  v5 = v0[4];
  v6 = *(v3 + 16);
  v0[12] = v6;
  v0[13] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v5, v4);
  v7 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v8 = swift_allocObject();
  v0[14] = v8;
  *(v8 + 16) = v2;
  (*(v3 + 32))(v8 + v7, v1, v4);
  v9 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v10 = swift_task_alloc();
  v0[15] = v10;
  v11 = sub_1000BC4D4(&qword_10169C9A8, &qword_101398A30);
  *v10 = v0;
  v10[1] = sub_100C7B61C;

  return unsafeBlocking<A>(context:_:)(v0 + 2, 0xD000000000000010, 0x800000010134A8C0, sub_100D14924, v8, v11);
}

uint64_t sub_100C7B61C()
{
  v1 = *(*v0 + 120);
  v2 = *(*v0 + 112);
  v3 = *(*v0 + 88);
  v5 = *v0;

  return _swift_task_switch(sub_100C7B748, v3, 0);
}

uint64_t sub_100C7B76C()
{
  v27 = v0;
  if (qword_101694778 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 128);
  v3 = *(v0 + 96);
  v2 = *(v0 + 104);
  v4 = *(v0 + 72);
  v5 = *(v0 + 48);
  v6 = *(v0 + 32);
  v7 = type metadata accessor for Logger();
  sub_1000076D4(v7, qword_10177AE28);
  v3(v4, v6, v5);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 128);
  v12 = *(v0 + 72);
  v13 = *(v0 + 48);
  v14 = *(v0 + 56);
  if (v10)
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v26 = v16;
    *v15 = 134218499;
    *(v15 + 4) = *(v11 + 16);

    *(v15 + 12) = 2160;
    *(v15 + 14) = 1752392040;
    *(v15 + 22) = 2081;
    sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID);
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = v18;
    (*(v14 + 8))(v12, v13);
    v20 = sub_1000136BC(v17, v19, &v26);

    *(v15 + 24) = v20;
    _os_log_impl(&_mh_execute_header, v8, v9, "Got %ld keys in the delegated keychain for %{private,mask.hash}s.", v15, 0x20u);
    sub_100007BAC(v16);
  }

  else
  {
    v21 = *(v0 + 128);

    (*(v14 + 8))(v12, v13);
  }

  sub_100C72C38(*(v0 + 128), *(v0 + 24));
  v23 = *(v0 + 72);
  v22 = *(v0 + 80);

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_100C7BA0C(uint64_t a1, uint64_t a2)
{
  v3[12] = a2;
  v3[13] = v2;
  v3[11] = a1;
  v4 = type metadata accessor for UUID();
  v3[14] = v4;
  v5 = *(v4 - 8);
  v3[15] = v5;
  v3[16] = *(v5 + 64);
  v3[17] = swift_task_alloc();

  return _swift_task_switch(sub_100C7BAD8, 0, 0);
}

uint64_t sub_100C7BAD8()
{
  v1 = *(*(v0 + 104) + 120);
  *(v0 + 144) = v1;
  return _swift_task_switch(sub_100C7BAFC, v1, 0);
}

uint64_t sub_100C7BAFC()
{
  v1 = v0[17];
  v2 = v0[18];
  v3 = v0[15];
  v4 = v0[14];
  (*(v3 + 16))(v1, v0[12], v4);
  v5 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v6 = swift_allocObject();
  v0[19] = v6;
  *(v6 + 16) = v2;
  (*(v3 + 32))(v6 + v5, v1, v4);
  v7 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v8 = swift_task_alloc();
  v0[20] = v8;
  v9 = sub_1000BC4D4(&qword_10169C9A8, &qword_101398A30);
  *v8 = v0;
  v8[1] = sub_100C7BC74;

  return unsafeBlocking<A>(context:_:)(v0 + 10, 0xD000000000000010, 0x800000010134A8C0, sub_100D1398C, v6, v9);
}

uint64_t sub_100C7BC74()
{
  v1 = *(*v0 + 160);
  v2 = *(*v0 + 152);
  v3 = *(*v0 + 144);
  v5 = *v0;

  return _swift_task_switch(sub_100C7BDA0, v3, 0);
}

uint64_t sub_100C7BDC4()
{
  if (qword_101694DF8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 168);
  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_10177BF08);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 168);
  if (v5)
  {
    v7 = swift_slowAlloc();
    *v7 = 134217984;
    *(v7 + 4) = *(v6 + 16);

    _os_log_impl(&_mh_execute_header, v3, v4, "Got %ld keys in the sharing circle secrets keychain.", v7, 0xCu);
  }

  else
  {
    v8 = *(v0 + 168);
  }

  sub_100D0E5C0(*(v0 + 168), v0 + 16);
  v9 = *(v0 + 136);
  v10 = *(v0 + 88);
  v11 = *(v0 + 16);
  v12 = *(v0 + 32);
  v13 = *(v0 + 64);
  v10[2] = *(v0 + 48);
  v10[3] = v13;
  *v10 = v11;
  v10[1] = v12;

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_100C7BF64(uint64_t a1, char a2)
{
  *(v3 + 188) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  v4 = type metadata accessor for SharingCircleKeyManager.Instruction(0);
  *(v3 + 32) = v4;
  v5 = *(v4 - 8);
  *(v3 + 40) = v5;
  v6 = *(v5 + 64) + 15;
  *(v3 + 48) = swift_task_alloc();
  *(v3 + 56) = swift_task_alloc();
  *(v3 + 64) = swift_task_alloc();
  *(v3 + 72) = swift_task_alloc();
  *(v3 + 80) = swift_task_alloc();
  *(v3 + 88) = swift_task_alloc();
  *(v3 + 96) = swift_task_alloc();
  *(v3 + 104) = swift_task_alloc();

  return _swift_task_switch(sub_100C7C07C, v2, 0);
}

uint64_t sub_100C7C07C()
{
  v53 = v0;
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  *(v0 + 112) = v2;
  if (v2)
  {
    v3 = *(*(v0 + 40) + 80);
    *(v0 + 184) = v3;
    *(v0 + 189) = 0;
    *(v0 + 120) = 1;
    sub_100D11DC8(v1 + ((v3 + 32) & ~v3), *(v0 + 104), type metadata accessor for SharingCircleKeyManager.Instruction);
    if (qword_101694DF8 != -1)
    {
      swift_once();
    }

    v4 = *(v0 + 96);
    v5 = *(v0 + 104);
    v7 = *(v0 + 80);
    v6 = *(v0 + 88);
    v8 = type metadata accessor for Logger();
    *(v0 + 128) = sub_1000076D4(v8, qword_10177BF08);
    sub_100D11DC8(v5, v4, type metadata accessor for SharingCircleKeyManager.Instruction);
    sub_100D11DC8(v5, v6, type metadata accessor for SharingCircleKeyManager.Instruction);
    sub_100D11DC8(v5, v7, type metadata accessor for SharingCircleKeyManager.Instruction);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    v11 = os_log_type_enabled(v9, v10);
    v13 = *(v0 + 88);
    v12 = *(v0 + 96);
    v14 = *(v0 + 80);
    if (v11)
    {
      v15 = *(v0 + 32);
      v50 = v15;
      v51 = v10;
      v16 = swift_slowAlloc();
      v52[0] = swift_slowAlloc();
      *v16 = 136447235;
      v17 = sub_100C71778();
      v19 = v18;
      sub_100018D00(v12, type metadata accessor for SharingCircleKeyManager.Instruction);
      v20 = sub_1000136BC(v17, v19, v52);

      *(v16 + 4) = v20;
      *(v16 + 12) = 2160;
      *(v16 + 14) = 1752392040;
      *(v16 + 22) = 2081;
      v21 = *(v15 + 20);
      type metadata accessor for UUID();
      sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID);
      v22 = dispatch thunk of CustomStringConvertible.description.getter();
      v24 = v23;
      sub_100018D00(v13, type metadata accessor for SharingCircleKeyManager.Instruction);
      v25 = sub_1000136BC(v22, v24, v52);

      *(v16 + 24) = v25;
      *(v16 + 32) = 2160;
      *(v16 + 34) = 1752392040;
      *(v16 + 42) = 2081;
      v26 = v14 + *(v50 + 24);
      v27 = dispatch thunk of CustomStringConvertible.description.getter();
      v29 = v28;
      sub_100018D00(v14, type metadata accessor for SharingCircleKeyManager.Instruction);
      v30 = sub_1000136BC(v27, v29, v52);

      *(v16 + 44) = v30;
      _os_log_impl(&_mh_execute_header, v9, v51, "Upload keys: %{public}s, share-id: %{private,mask.hash}s,\nbeacon-id: %{private,mask.hash}s.", v16, 0x34u);
      swift_arrayDestroy();
    }

    else
    {

      sub_100018D00(v14, type metadata accessor for SharingCircleKeyManager.Instruction);
      sub_100018D00(v13, type metadata accessor for SharingCircleKeyManager.Instruction);
      sub_100018D00(v12, type metadata accessor for SharingCircleKeyManager.Instruction);
    }

    v42 = *(*(v0 + 104) + *(*(v0 + 32) + 36));
    *(v0 + 190) = v42;
    if (v42 == 4)
    {
      v43 = swift_task_alloc();
      *(v0 + 136) = v43;
      *v43 = v0;
      v43[1] = sub_100C7C5E4;
      v44 = *(v0 + 104);
      v45 = *(v0 + 24);

      return sub_100CAAC60(v44);
    }

    else
    {
      v46 = swift_task_alloc();
      *(v0 + 144) = v46;
      *v46 = v0;
      v46[1] = sub_100C7C710;
      v47 = *(v0 + 104);
      v48 = *(v0 + 24);
      v49 = *(v0 + 188);

      return sub_100CB753C(v47, v49);
    }
  }

  else
  {
    sub_1001BAEE0();
    swift_allocError();
    *v31 = 20;
    swift_willThrow();
    v33 = *(v0 + 96);
    v32 = *(v0 + 104);
    v35 = *(v0 + 80);
    v34 = *(v0 + 88);
    v37 = *(v0 + 64);
    v36 = *(v0 + 72);
    v39 = *(v0 + 48);
    v38 = *(v0 + 56);

    v40 = *(v0 + 8);

    return v40();
  }
}

uint64_t sub_100C7C5E4(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 136);
  v6 = *v2;

  if (v1)
  {
    v4[20] = v1;
    v7 = v4[3];
    v8 = sub_100C7D12C;
  }

  else
  {
    v7 = v4[3];
    v4[19] = a1;
    v8 = sub_100C7C83C;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_100C7C710(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 144);
  v6 = *v2;

  if (v1)
  {
    v4[20] = v1;
    v7 = v4[3];
    v8 = sub_100C7D12C;
  }

  else
  {
    v7 = v4[3];
    v4[19] = a1;
    v8 = sub_100C7C83C;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_100C7C83C()
{
  v92 = v0;
  if (*(*(v0 + 152) + 16))
  {
    v1 = *(v0 + 104);
    v2 = *(*(v0 + 24) + 112);
    v3 = *(*(v0 + 32) + 20);
    v4 = swift_task_alloc();
    *(v0 + 168) = v4;
    *v4 = v0;
    v4[1] = sub_100C7D208;
    v5 = *(v0 + 152);
    v6 = *(v0 + 190);

    return sub_10105B150(v1 + v3, v6, v5);
  }

  v8 = *(v0 + 128);
  v9 = *(v0 + 104);
  v11 = *(v0 + 48);
  v10 = *(v0 + 56);

  sub_100D11DC8(v9, v10, type metadata accessor for SharingCircleKeyManager.Instruction);
  sub_100D11DC8(v9, v11, type metadata accessor for SharingCircleKeyManager.Instruction);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  v14 = os_log_type_enabled(v12, v13);
  v15 = *(v0 + 104);
  v16 = *(v0 + 48);
  v17 = *(v0 + 56);
  if (v14)
  {
    v18 = *(v0 + 32);
    v86 = v18;
    v19 = swift_slowAlloc();
    v91[0] = swift_slowAlloc();
    *v19 = 141558787;
    *(v19 + 4) = 1752392040;
    *(v19 + 12) = 2081;
    v87 = v13;
    v20 = *(v18 + 20);
    type metadata accessor for UUID();
    v90 = v15;
    sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID);
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    v23 = v22;
    sub_100018D00(v17, type metadata accessor for SharingCircleKeyManager.Instruction);
    v24 = sub_1000136BC(v21, v23, v91);

    *(v19 + 14) = v24;
    *(v19 + 22) = 2160;
    *(v19 + 24) = 1752392040;
    *(v19 + 32) = 2081;
    v25 = v16 + *(v86 + 24);
    v26 = dispatch thunk of CustomStringConvertible.description.getter();
    v28 = v27;
    sub_100018D00(v16, type metadata accessor for SharingCircleKeyManager.Instruction);
    v29 = sub_1000136BC(v26, v28, v91);

    *(v19 + 34) = v29;
    _os_log_impl(&_mh_execute_header, v12, v87, "No keys to upload for share-id: %{private,mask.hash}s,\nbeacon-id: %{private,mask.hash}s.", v19, 0x2Au);
    swift_arrayDestroy();

    v30 = v90;
  }

  else
  {

    sub_100018D00(v16, type metadata accessor for SharingCircleKeyManager.Instruction);
    sub_100018D00(v17, type metadata accessor for SharingCircleKeyManager.Instruction);
    v30 = v15;
  }

  sub_100018D00(v30, type metadata accessor for SharingCircleKeyManager.Instruction);
  v32 = *(v0 + 112);
  v31 = *(v0 + 120);
  if (v31 == v32)
  {
    if (*(v0 + 189))
    {
      v34 = *(v0 + 96);
      v33 = *(v0 + 104);
      v36 = *(v0 + 80);
      v35 = *(v0 + 88);
      v38 = *(v0 + 64);
      v37 = *(v0 + 72);
      v40 = *(v0 + 48);
      v39 = *(v0 + 56);
    }

    else
    {
      sub_1001BAEE0();
      swift_allocError();
      *v69 = 20;
      swift_willThrow();
      v71 = *(v0 + 96);
      v70 = *(v0 + 104);
      v73 = *(v0 + 80);
      v72 = *(v0 + 88);
      v75 = *(v0 + 64);
      v74 = *(v0 + 72);
      v77 = *(v0 + 48);
      v76 = *(v0 + 56);
    }

    v41 = *(v0 + 8);

    return v41();
  }

  if (v31 >= v32)
  {
    __break(1u);
  }

  else
  {
    *(v0 + 120) = v31 + 1;
    if (!__OFADD__(v31, 1))
    {
      sub_100D11DC8(*(v0 + 16) + ((*(v0 + 184) + 32) & ~*(v0 + 184)) + *(*(v0 + 40) + 72) * v31, *(v0 + 104), type metadata accessor for SharingCircleKeyManager.Instruction);
      if (qword_101694DF8 == -1)
      {
        goto LABEL_14;
      }

      goto LABEL_30;
    }
  }

  __break(1u);
LABEL_30:
  swift_once();
LABEL_14:
  v42 = *(v0 + 96);
  v43 = *(v0 + 104);
  v45 = *(v0 + 80);
  v44 = *(v0 + 88);
  v46 = type metadata accessor for Logger();
  *(v0 + 128) = sub_1000076D4(v46, qword_10177BF08);
  sub_100D11DC8(v43, v42, type metadata accessor for SharingCircleKeyManager.Instruction);
  sub_100D11DC8(v43, v44, type metadata accessor for SharingCircleKeyManager.Instruction);
  sub_100D11DC8(v43, v45, type metadata accessor for SharingCircleKeyManager.Instruction);
  v47 = Logger.logObject.getter();
  v48 = static os_log_type_t.default.getter();
  v49 = os_log_type_enabled(v47, v48);
  v51 = *(v0 + 88);
  v50 = *(v0 + 96);
  v52 = *(v0 + 80);
  if (v49)
  {
    v53 = *(v0 + 32);
    v88 = v53;
    v89 = v48;
    v54 = swift_slowAlloc();
    v91[0] = swift_slowAlloc();
    *v54 = 136447235;
    v55 = sub_100C71778();
    v57 = v56;
    sub_100018D00(v50, type metadata accessor for SharingCircleKeyManager.Instruction);
    v58 = sub_1000136BC(v55, v57, v91);

    *(v54 + 4) = v58;
    *(v54 + 12) = 2160;
    *(v54 + 14) = 1752392040;
    *(v54 + 22) = 2081;
    v59 = *(v53 + 20);
    type metadata accessor for UUID();
    sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID);
    v60 = dispatch thunk of CustomStringConvertible.description.getter();
    v62 = v61;
    sub_100018D00(v51, type metadata accessor for SharingCircleKeyManager.Instruction);
    v63 = sub_1000136BC(v60, v62, v91);

    *(v54 + 24) = v63;
    *(v54 + 32) = 2160;
    *(v54 + 34) = 1752392040;
    *(v54 + 42) = 2081;
    v64 = v52 + *(v88 + 24);
    v65 = dispatch thunk of CustomStringConvertible.description.getter();
    v67 = v66;
    sub_100018D00(v52, type metadata accessor for SharingCircleKeyManager.Instruction);
    v68 = sub_1000136BC(v65, v67, v91);

    *(v54 + 44) = v68;
    _os_log_impl(&_mh_execute_header, v47, v89, "Upload keys: %{public}s, share-id: %{private,mask.hash}s,\nbeacon-id: %{private,mask.hash}s.", v54, 0x34u);
    swift_arrayDestroy();
  }

  else
  {

    sub_100018D00(v52, type metadata accessor for SharingCircleKeyManager.Instruction);
    sub_100018D00(v51, type metadata accessor for SharingCircleKeyManager.Instruction);
    sub_100018D00(v50, type metadata accessor for SharingCircleKeyManager.Instruction);
  }

  v78 = *(*(v0 + 104) + *(*(v0 + 32) + 36));
  *(v0 + 190) = v78;
  if (v78 == 4)
  {
    v79 = swift_task_alloc();
    *(v0 + 136) = v79;
    *v79 = v0;
    v79[1] = sub_100C7C5E4;
    v80 = *(v0 + 104);
    v81 = *(v0 + 24);

    return sub_100CAAC60(v80);
  }

  else
  {
    v82 = swift_task_alloc();
    *(v0 + 144) = v82;
    *v82 = v0;
    v82[1] = sub_100C7C710;
    v83 = *(v0 + 104);
    v84 = *(v0 + 24);
    v85 = *(v0 + 188);

    return sub_100CB753C(v83, v85);
  }
}

uint64_t sub_100C7D12C()
{
  sub_100018D00(v0[13], type metadata accessor for SharingCircleKeyManager.Instruction);
  v1 = v0[20];
  v3 = v0[12];
  v2 = v0[13];
  v5 = v0[10];
  v4 = v0[11];
  v7 = v0[8];
  v6 = v0[9];
  v9 = v0[6];
  v8 = v0[7];

  v10 = v0[1];

  return v10();
}

uint64_t sub_100C7D208()
{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v4 = *v1;
  *(*v1 + 176) = v0;

  v5 = *(v2 + 152);
  v6 = *(v2 + 24);

  if (v0)
  {
    v7 = sub_100C7DB10;
  }

  else
  {
    v7 = sub_100C7D350;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_100C7D350()
{
  v76 = v0;
  v1 = *(v0 + 128);
  v2 = *(v0 + 104);
  v3 = *(v0 + 64);
  sub_100D11DC8(v2, *(v0 + 72), type metadata accessor for SharingCircleKeyManager.Instruction);
  sub_100D11DC8(v2, v3, type metadata accessor for SharingCircleKeyManager.Instruction);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 104);
  v8 = *(v0 + 64);
  v9 = *(v0 + 72);
  if (v6)
  {
    v10 = *(v0 + 32);
    v70 = v10;
    v11 = swift_slowAlloc();
    v75 = swift_slowAlloc();
    *v11 = 141558787;
    *(v11 + 4) = 1752392040;
    *(v11 + 12) = 2081;
    v71 = v5;
    v12 = *(v10 + 20);
    type metadata accessor for UUID();
    v74 = v7;
    sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;
    sub_100018D00(v9, type metadata accessor for SharingCircleKeyManager.Instruction);
    v16 = sub_1000136BC(v13, v15, &v75);

    *(v11 + 14) = v16;
    *(v11 + 22) = 2160;
    *(v11 + 24) = 1752392040;
    *(v11 + 32) = 2081;
    v17 = v8 + *(v70 + 24);
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    v20 = v19;
    sub_100018D00(v8, type metadata accessor for SharingCircleKeyManager.Instruction);
    v21 = sub_1000136BC(v18, v20, &v75);

    *(v11 + 34) = v21;
    _os_log_impl(&_mh_execute_header, v4, v71, "Received key upload result for circle %{private,mask.hash}s beacon: %{private,mask.hash}s.", v11, 0x2Au);
    swift_arrayDestroy();

    v22 = v74;
  }

  else
  {

    sub_100018D00(v8, type metadata accessor for SharingCircleKeyManager.Instruction);
    sub_100018D00(v9, type metadata accessor for SharingCircleKeyManager.Instruction);
    v22 = v7;
  }

  sub_100018D00(v22, type metadata accessor for SharingCircleKeyManager.Instruction);
  v24 = *(v0 + 112);
  v23 = *(v0 + 120);
  if (v23 == v24)
  {
    v26 = *(v0 + 96);
    v25 = *(v0 + 104);
    v28 = *(v0 + 80);
    v27 = *(v0 + 88);
    v30 = *(v0 + 64);
    v29 = *(v0 + 72);
    v32 = *(v0 + 48);
    v31 = *(v0 + 56);

    v33 = *(v0 + 8);

    return v33();
  }

  *(v0 + 189) = 1;
  if (v23 >= v24)
  {
    __break(1u);
  }

  else
  {
    *(v0 + 120) = v23 + 1;
    if (!__OFADD__(v23, 1))
    {
      sub_100D11DC8(*(v0 + 16) + ((*(v0 + 184) + 32) & ~*(v0 + 184)) + *(*(v0 + 40) + 72) * v23, *(v0 + 104), type metadata accessor for SharingCircleKeyManager.Instruction);
      if (qword_101694DF8 == -1)
      {
        goto LABEL_11;
      }

      goto LABEL_23;
    }
  }

  __break(1u);
LABEL_23:
  swift_once();
LABEL_11:
  v35 = *(v0 + 96);
  v36 = *(v0 + 104);
  v38 = *(v0 + 80);
  v37 = *(v0 + 88);
  v39 = type metadata accessor for Logger();
  *(v0 + 128) = sub_1000076D4(v39, qword_10177BF08);
  sub_100D11DC8(v36, v35, type metadata accessor for SharingCircleKeyManager.Instruction);
  sub_100D11DC8(v36, v37, type metadata accessor for SharingCircleKeyManager.Instruction);
  sub_100D11DC8(v36, v38, type metadata accessor for SharingCircleKeyManager.Instruction);
  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.default.getter();
  v42 = os_log_type_enabled(v40, v41);
  v44 = *(v0 + 88);
  v43 = *(v0 + 96);
  v45 = *(v0 + 80);
  if (v42)
  {
    v46 = *(v0 + 32);
    v72 = v46;
    v73 = v41;
    v47 = swift_slowAlloc();
    v75 = swift_slowAlloc();
    *v47 = 136447235;
    v48 = sub_100C71778();
    v50 = v49;
    sub_100018D00(v43, type metadata accessor for SharingCircleKeyManager.Instruction);
    v51 = sub_1000136BC(v48, v50, &v75);

    *(v47 + 4) = v51;
    *(v47 + 12) = 2160;
    *(v47 + 14) = 1752392040;
    *(v47 + 22) = 2081;
    v52 = *(v46 + 20);
    type metadata accessor for UUID();
    sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID);
    v53 = dispatch thunk of CustomStringConvertible.description.getter();
    v55 = v54;
    sub_100018D00(v44, type metadata accessor for SharingCircleKeyManager.Instruction);
    v56 = sub_1000136BC(v53, v55, &v75);

    *(v47 + 24) = v56;
    *(v47 + 32) = 2160;
    *(v47 + 34) = 1752392040;
    *(v47 + 42) = 2081;
    v57 = v45 + *(v72 + 24);
    v58 = dispatch thunk of CustomStringConvertible.description.getter();
    v60 = v59;
    sub_100018D00(v45, type metadata accessor for SharingCircleKeyManager.Instruction);
    v61 = sub_1000136BC(v58, v60, &v75);

    *(v47 + 44) = v61;
    _os_log_impl(&_mh_execute_header, v40, v73, "Upload keys: %{public}s, share-id: %{private,mask.hash}s,\nbeacon-id: %{private,mask.hash}s.", v47, 0x34u);
    swift_arrayDestroy();
  }

  else
  {

    sub_100018D00(v45, type metadata accessor for SharingCircleKeyManager.Instruction);
    sub_100018D00(v44, type metadata accessor for SharingCircleKeyManager.Instruction);
    sub_100018D00(v43, type metadata accessor for SharingCircleKeyManager.Instruction);
  }

  v62 = *(*(v0 + 104) + *(*(v0 + 32) + 36));
  *(v0 + 190) = v62;
  if (v62 == 4)
  {
    v63 = swift_task_alloc();
    *(v0 + 136) = v63;
    *v63 = v0;
    v63[1] = sub_100C7C5E4;
    v64 = *(v0 + 104);
    v65 = *(v0 + 24);

    return sub_100CAAC60(v64);
  }

  else
  {
    v66 = swift_task_alloc();
    *(v0 + 144) = v66;
    *v66 = v0;
    v66[1] = sub_100C7C710;
    v67 = *(v0 + 104);
    v68 = *(v0 + 24);
    v69 = *(v0 + 188);

    return sub_100CB753C(v67, v69);
  }
}

uint64_t sub_100C7DB10()
{
  sub_100018D00(v0[13], type metadata accessor for SharingCircleKeyManager.Instruction);
  v1 = v0[22];
  v3 = v0[12];
  v2 = v0[13];
  v5 = v0[10];
  v4 = v0[11];
  v7 = v0[8];
  v6 = v0[9];
  v9 = v0[6];
  v8 = v0[7];

  v10 = v0[1];

  return v10();
}

uint64_t sub_100C7DBEC(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = type metadata accessor for SharingCircleKeyManager.Instruction(0);
  v2[5] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();

  return _swift_task_switch(sub_100C7DC98, v1, 0);
}

uint64_t sub_100C7DC98()
{
  v32 = v0;
  if (qword_101694DF8 != -1)
  {
    swift_once();
  }

  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[6];
  v4 = v0[3];
  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_10177BF08);
  sub_100D11DC8(v4, v2, type metadata accessor for SharingCircleKeyManager.Instruction);
  sub_100D11DC8(v4, v1, type metadata accessor for SharingCircleKeyManager.Instruction);
  sub_100D11DC8(v4, v3, type metadata accessor for SharingCircleKeyManager.Instruction);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[7];
  v9 = v0[8];
  v11 = v0[6];
  if (v8)
  {
    v12 = v0[5];
    v29 = v12;
    v30 = v7;
    v13 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    *v13 = 136447235;
    v14 = sub_100C71778();
    v16 = v15;
    sub_100018D00(v9, type metadata accessor for SharingCircleKeyManager.Instruction);
    v17 = sub_1000136BC(v14, v16, &v31);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2160;
    *(v13 + 14) = 1752392040;
    *(v13 + 22) = 2081;
    v18 = *(v12 + 20);
    type metadata accessor for UUID();
    sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID);
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    v21 = v20;
    sub_100018D00(v10, type metadata accessor for SharingCircleKeyManager.Instruction);
    v22 = sub_1000136BC(v19, v21, &v31);

    *(v13 + 24) = v22;
    *(v13 + 32) = 2160;
    *(v13 + 34) = 1752392040;
    *(v13 + 42) = 2081;
    v23 = v11 + *(v29 + 24);
    v24 = dispatch thunk of CustomStringConvertible.description.getter();
    v26 = v25;
    sub_100018D00(v11, type metadata accessor for SharingCircleKeyManager.Instruction);
    v27 = sub_1000136BC(v24, v26, &v31);

    *(v13 + 44) = v27;
    _os_log_impl(&_mh_execute_header, v6, v30, "Generate package requests: %{public}s,\nshare-id: %{private,mask.hash}s,\nbeacon-id: %{private,mask.hash}s.", v13, 0x34u);
    swift_arrayDestroy();
  }

  else
  {

    sub_100018D00(v11, type metadata accessor for SharingCircleKeyManager.Instruction);
    sub_100018D00(v10, type metadata accessor for SharingCircleKeyManager.Instruction);
    sub_100018D00(v9, type metadata accessor for SharingCircleKeyManager.Instruction);
  }

  if (qword_101694940 != -1)
  {
    swift_once();
  }

  v0[9] = qword_10177B348;

  return _swift_task_switch(sub_100C7E054, 0, 0);
}

uint64_t sub_100C7E054()
{
  v1 = *(v0 + 72);
  v2 = async function pointer to unsafeBlocking<A>(_:)[1];

  v3 = swift_task_alloc();
  *(v0 + 80) = v3;
  *v3 = v0;
  v3[1] = sub_100C7E118;
  v4 = *(v0 + 72);

  return unsafeBlocking<A>(_:)(v0 + 16, sub_1000DFF78, v4, &type metadata for Configuration);
}

uint64_t sub_100C7E118()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 72);
  v4 = *v0;

  return _swift_task_switch(sub_100C7E230, 0, 0);
}

uint64_t sub_100C7E230()
{
  v1 = v0[4];
  v0[11] = v0[2];
  return _swift_task_switch(sub_100C7E254, v1, 0);
}

uint64_t sub_100C7E254()
{
  v2 = v0[7];
  v1 = v0[8];
  v4 = v0[5];
  v3 = v0[6];
  v5 = v0[3];
  v6 = sub_101074B70(v0[11]);

  v7 = *(v5 + *(v4 + 44));
  v8 = *(v5 + *(v4 + 32));
  v9 = swift_task_alloc();
  v9[2] = v7;
  v9[3] = v5;
  v9[4] = v6;
  v10 = sub_1005C6A20(sub_100D1396C, v9, v8);

  v11 = v0[1];

  return v11(v10);
}

void sub_100C7E360(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v51 = a4;
  v52 = type metadata accessor for SharingCircleKeyManager.Instruction(0);
  v9 = *(*(v52 - 8) + 64);
  v10 = __chkstk_darwin(v52);
  v12 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v50 - v13;
  v15 = type metadata accessor for BookmarkMetaData();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15 - 8);
  v19 = &v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *a1;
  if (*(a2 + 16) && (v21 = sub_100771F0C(v20), (v22 & 1) != 0))
  {
    sub_100D11DC8(*(a2 + 56) + *(v16 + 72) * v21, v19, type metadata accessor for BookmarkMetaData);
    v23 = *(v19 + 1);
    sub_100018D00(v19, type metadata accessor for BookmarkMetaData);
  }

  else
  {
    v23 = 0;
  }

  if (((v20 - 10) < 9 || (v20 - 7) <= 1) && v23)
  {
    if (qword_101694DF8 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_1000076D4(v24, qword_10177BF08);
    sub_100D11DC8(a3, v12, type metadata accessor for SharingCircleKeyManager.Instruction);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      *v27 = 136315651;
      v28 = sub_10125403C(v20);
      v30 = sub_1000136BC(v28, v29, &v53);

      *(v27 + 4) = v30;
      *(v27 + 12) = 2160;
      *(v27 + 14) = 1752392040;
      *(v27 + 22) = 2081;
      v31 = *(v52 + 20);
      type metadata accessor for UUID();
      sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID);
      v32 = dispatch thunk of CustomStringConvertible.description.getter();
      v34 = v33;
      sub_100018D00(v12, type metadata accessor for SharingCircleKeyManager.Instruction);
      v35 = sub_1000136BC(v32, v34, &v53);

      *(v27 + 24) = v35;
      _os_log_impl(&_mh_execute_header, v25, v26, "Already downloaded key type %s (Skipped),\nnot including in request for circle %{private,mask.hash}s.", v27, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      sub_100018D00(v12, type metadata accessor for SharingCircleKeyManager.Instruction);
    }

    v36 = 0;
    *a5 = 0;
    a5[1] = 0;
    a5[2] = 2;
  }

  else
  {
    if (qword_101694DF8 != -1)
    {
      swift_once();
    }

    v37 = type metadata accessor for Logger();
    sub_1000076D4(v37, qword_10177BF08);
    sub_100D11DC8(a3, v14, type metadata accessor for SharingCircleKeyManager.Instruction);
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v38, v39))
    {
      goto LABEL_20;
    }

    v40 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v53 = v50;
    *v40 = 136315907;
    v41 = sub_10125403C(v20);
    v43 = sub_1000136BC(v41, v42, &v53);

    *(v40 + 4) = v43;
    *(v40 + 12) = 2048;
    *(v40 + 14) = v23;
    *(v40 + 22) = 2160;
    *(v40 + 24) = 1752392040;
    *(v40 + 32) = 2081;
    v44 = *(v52 + 20);
    type metadata accessor for UUID();
    sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID);
    v45 = dispatch thunk of CustomStringConvertible.description.getter();
    v47 = v46;
    sub_100018D00(v14, type metadata accessor for SharingCircleKeyManager.Instruction);
    v48 = sub_1000136BC(v45, v47, &v53);

    *(v40 + 34) = v48;
    _os_log_impl(&_mh_execute_header, v38, v39, "Downloading key type %s starting from last downloaded index %llu,\nfor circle %{private,mask.hash}s.", v40, 0x2Au);
    swift_arrayDestroy();

    if (v23)
    {
      while (1)
      {
        v49 = v23 + 1;
        if (v23 != -1)
        {
          break;
        }

        __break(1u);
LABEL_20:

        sub_100018D00(v14, type metadata accessor for SharingCircleKeyManager.Instruction);
        if (!v23)
        {
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_21:
      v49 = 0;
    }

    *a5 = v20;
    a5[1] = v49;
    a5[2] = 0;
    v36 = v51;
  }

  a5[3] = v36;
}

unint64_t sub_100C7E99C(char a1)
{
  result = 0x7972616D697270;
  switch(a1)
  {
    case 1:
      return 0x7261646E6F636573;
    case 2:
      v3 = 9;
      goto LABEL_12;
    case 3:
      v3 = 11;
      goto LABEL_12;
    case 4:
      return 0x646E7542646C6977;
    case 5:
      return 0x417972616D697270;
    case 6:
      return 0xD000000000000010;
    case 7:
      return 0xD000000000000012;
    case 8:
      return 0xD000000000000011;
    case 9:
      return 0x697463656E6E6F63;
    case 10:
      return 0x656E774F7261656ELL;
    case 11:
      return 0x656B6F546E696F6ALL;
    case 12:
      v3 = 5;
LABEL_12:
      result = v3 | 0xD000000000000010;
      break;
    case 13:
      result = 0xD000000000000010;
      break;
    case 14:
      result = 0x7461636F4C626577;
      break;
    case 15:
      result = 0x646174654D626577;
      break;
    case 16:
      result = 0x6D65744974736F6CLL;
      break;
    case 17:
      result = 0xD000000000000014;
      break;
    case 18:
      result = 0xD000000000000016;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100C7EC04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[11] = a3;
  v4[12] = v3;
  v4[9] = a1;
  v4[10] = a2;
  v5 = *(*(sub_1000BC4D4(&qword_101698C00, &qword_10138B570) - 8) + 64) + 15;
  v4[13] = swift_task_alloc();
  v6 = type metadata accessor for Connection.TransactionMode();
  v4[14] = v6;
  v7 = *(v6 - 8);
  v4[15] = v7;
  v8 = *(v7 + 64) + 15;
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v9 = type metadata accessor for Table();
  v4[18] = v9;
  v10 = *(v9 - 8);
  v4[19] = v10;
  v11 = *(v10 + 64) + 15;
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();
  v12 = type metadata accessor for SharingCircleKeyManager.Instruction(0);
  v4[22] = v12;
  v13 = *(v12 - 8);
  v4[23] = v13;
  v4[24] = *(v13 + 64);
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();
  v4[30] = swift_task_alloc();
  v4[31] = swift_task_alloc();
  v14 = type metadata accessor for UUID();
  v4[32] = v14;
  v15 = *(v14 - 8);
  v4[33] = v15;
  v16 = *(v15 + 64) + 15;
  v4[34] = swift_task_alloc();
  v4[35] = swift_task_alloc();
  v4[36] = swift_task_alloc();
  v17 = type metadata accessor for KeyDropDownloadKeysMetadataResponse(0);
  v4[37] = v17;
  v18 = *(*(v17 - 8) + 64) + 15;
  v4[38] = swift_task_alloc();
  v4[39] = swift_task_alloc();

  return _swift_task_switch(sub_100C7EED0, v3, 0);
}

uint64_t sub_100C7EED0()
{
  v1 = *(*(v0 + 96) + 120);
  *(v0 + 320) = v1;
  return _swift_task_switch(sub_100C7EEF4, v1, 0);
}

uint64_t sub_100C7EEF4()
{
  v1 = v0[40];
  v2 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v3 = swift_task_alloc();
  v0[41] = v3;
  v4 = type metadata accessor for BeaconKeyManager(0);
  v0[42] = v4;
  *v3 = v0;
  v3[1] = sub_100C7EFD8;
  v5 = v0[40];

  return unsafeBlocking<A>(context:_:)(v0 + 4, 0xD000000000000010, 0x800000010134A8C0, sub_1000D3168, v5, v4);
}

uint64_t sub_100C7EFD8()
{
  v1 = *(*v0 + 328);
  v2 = *(*v0 + 320);
  v4 = *v0;

  return _swift_task_switch(sub_100C7F0F0, v2, 0);
}

uint64_t sub_100C7F0F0()
{
  v1 = v0[12];
  v0[43] = v0[4];
  return _swift_task_switch(sub_100C7F114, v1, 0);
}

uint64_t sub_100C7F114()
{
  v1 = *(v0 + 288);
  v2 = *(v0 + 176);
  v3 = *(v0 + 72);
  *(v0 + 352) = *(*(v0 + 344) + OBJC_IVAR____TtC12searchpartyd16BeaconKeyManager_keyStore);

  v4 = *(v2 + 20);
  *(v0 + 28) = v4;
  v5 = *(v2 + 24);
  *(v0 + 576) = v5;
  v6 = getuid();
  sub_1000294F0(v6);
  v7 = swift_task_alloc();
  *(v0 + 360) = v7;
  *v7 = v0;
  v7[1] = sub_100C7F214;
  v8 = *(v0 + 288);

  return sub_10068D5D4(v3 + v4, v3 + v5, v8);
}

uint64_t sub_100C7F214(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 360);
  v6 = *v2;
  v4[46] = a1;
  v4[47] = v1;

  v7 = v3[44];
  v8 = v3[36];
  v9 = v3[33];
  v10 = v3[32];
  v11 = v3[12];
  v14 = *(v9 + 8);
  v12 = v9 + 8;
  v13 = v14;
  if (v1)
  {
    v13(v8, v10);

    v15 = sub_100C83EF0;
  }

  else
  {
    v4[48] = v13;
    v4[49] = v12 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v13(v8, v10);

    v15 = sub_100C7F3DC;
  }

  return _swift_task_switch(v15, v11, 0);
}

uint64_t sub_100C7F3DC()
{
  v75 = v0;
  v1 = *(v0 + 368);
  if (v1[2])
  {
    v2 = v1[4];
    *(v0 + 400) = v2;
    v3 = v1[5];
    *(v0 + 408) = v3;

    if (v3)
    {
      v4 = *(v0 + 28);
      v5 = *(v0 + 72);
      v6 = *(*(v0 + 96) + 112);
      v7 = swift_task_alloc();
      *(v0 + 416) = v7;
      *v7 = v0;
      v7[1] = sub_100C7FB84;
      v8 = *(v0 + 304);

      return sub_1011ADA9C(v8, v5 + v4, v2, v3);
    }
  }

  else
  {
    v10 = *(v0 + 368);
  }

  if (qword_101694780 != -1)
  {
    swift_once();
  }

  v11 = *(v0 + 216);
  v12 = *(v0 + 72);
  v13 = type metadata accessor for Logger();
  sub_1000076D4(v13, qword_10177AE40);
  sub_100D11DC8(v12, v11, type metadata accessor for SharingCircleKeyManager.Instruction);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = *(v0 + 256);
    v17 = *(v0 + 216);
    v18 = *(v0 + 176);
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v74[0] = v20;
    *v19 = 136315138;
    v21 = *(v18 + 20);
    sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID);
    v22 = dispatch thunk of CustomStringConvertible.description.getter();
    v24 = v23;
    sub_100018D00(v17, type metadata accessor for SharingCircleKeyManager.Instruction);
    v25 = sub_1000136BC(v22, v24, v74);

    *(v19 + 4) = v25;
    _os_log_impl(&_mh_execute_header, v14, v15, "Fetch token not found for imported share %s", v19, 0xCu);
    sub_100007BAC(v20);
  }

  else
  {
    v26 = *(v0 + 216);

    sub_100018D00(v26, type metadata accessor for SharingCircleKeyManager.Instruction);
  }

  sub_1001BAEE0();
  v27 = swift_allocError();
  *v28 = 31;
  swift_willThrow();
  if (qword_101694780 != -1)
  {
    swift_once();
  }

  v29 = *(v0 + 200);
  v30 = *(v0 + 72);
  sub_1000076D4(v13, qword_10177AE40);
  sub_100D11DC8(v30, v29, type metadata accessor for SharingCircleKeyManager.Instruction);
  swift_errorRetain();
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = *(v0 + 256);
    v34 = v27;
    v35 = *(v0 + 200);
    v36 = *(v0 + 176);
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v74[0] = v39;
    *v37 = 141558531;
    *(v37 + 4) = 1752392040;
    *(v37 + 12) = 2081;
    v40 = *(v36 + 20);
    sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID);
    v41 = dispatch thunk of CustomStringConvertible.description.getter();
    v43 = v42;
    v44 = v35;
    v27 = v34;
    sub_100018D00(v44, type metadata accessor for SharingCircleKeyManager.Instruction);
    v45 = sub_1000136BC(v41, v43, v74);

    *(v37 + 14) = v45;
    *(v37 + 22) = 2112;
    swift_errorRetain();
    v46 = _swift_stdlib_bridgeErrorToNSError();
    *(v37 + 24) = v46;
    *v38 = v46;
    _os_log_impl(&_mh_execute_header, v31, v32, "Server error downloading keys for imported share %{private,mask.hash}s: %@", v37, 0x20u);
    sub_10000B3A8(v38, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v39);
  }

  else
  {
    v47 = *(v0 + 200);

    sub_100018D00(v47, type metadata accessor for SharingCircleKeyManager.Instruction);
  }

  *(v0 + 40) = v27;
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  if ((swift_dynamicCast() & 1) != 0 && *(v0 + 24) == 1 && *(v0 + 16) > 5uLL)
  {
    v48 = *(v0 + 208);
    v50 = *(v0 + 184);
    v49 = *(v0 + 192);
    v51 = *(v0 + 104);
    v52 = *(v0 + 72);
    v53 = type metadata accessor for TaskPriority();
    (*(*(v53 - 8) + 56))(v51, 1, 1, v53);
    sub_100D11DC8(v52, v48, type metadata accessor for SharingCircleKeyManager.Instruction);
    v54 = (*(v50 + 80) + 32) & ~*(v50 + 80);
    v55 = swift_allocObject();
    *(v55 + 16) = 0;
    *(v55 + 24) = 0;
    sub_100D12974(v48, v55 + v54, type metadata accessor for SharingCircleKeyManager.Instruction);
    sub_100A838D4(0, 0, v51, &unk_1013E3750, v55);
  }

  swift_willThrow();
  v57 = *(v0 + 304);
  v56 = *(v0 + 312);
  v59 = *(v0 + 280);
  v58 = *(v0 + 288);
  v60 = *(v0 + 272);
  v61 = *(v0 + 240);
  v62 = *(v0 + 248);
  v64 = *(v0 + 224);
  v63 = *(v0 + 232);
  v65 = *(v0 + 216);
  v67 = *(v0 + 208);
  v68 = *(v0 + 200);
  v69 = *(v0 + 168);
  v70 = *(v0 + 160);
  v71 = *(v0 + 136);
  v72 = *(v0 + 128);
  v73 = *(v0 + 104);

  v66 = *(v0 + 8);

  return v66();
}

uint64_t sub_100C7FB84()
{
  v2 = *v1;
  v3 = *(*v1 + 416);
  v9 = *v1;
  *(*v1 + 424) = v0;

  if (v0)
  {
    v4 = *(v2 + 408);
    v5 = *(v2 + 96);

    v6 = sub_100C843C4;
    v7 = v5;
  }

  else
  {
    v7 = *(v2 + 96);
    v6 = sub_100C7FCAC;
  }

  return _swift_task_switch(v6, v7, 0);
}

uint64_t sub_100C7FCAC()
{
  v1 = v0[51];
  v2 = v0[39];
  v3 = v0[37];
  sub_100D12974(v0[38], v2, type metadata accessor for KeyDropDownloadKeysMetadataResponse);
  v4 = (v2 + *(v3 + 20));
  v5 = *v4;
  v6 = v4[1];
  v7 = swift_task_alloc();
  v0[54] = v7;
  *v7 = v0;
  v7[1] = sub_100C7FD8C;
  v8 = v0[50];
  v9 = v0[11];
  v10 = v0[12];
  v12 = v0[9];
  v11 = v0[10];

  return sub_100C9BFF8(v5, v6, v11, v9, v8, v1, v12);
}

uint64_t sub_100C7FD8C()
{
  v2 = *v1;
  v3 = *(*v1 + 432);
  v4 = *v1;
  v2[55] = v0;

  v5 = v2[51];
  if (v0)
  {
    v6 = v2[12];

    v7 = sub_100C84898;
  }

  else
  {
    v8 = v2[39];
    v6 = v2[40];
    v9 = v2[37];

    v2[56] = *(v8 + *(v9 + 24));
    v7 = sub_100C7FEDC;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_100C7FEDC()
{
  v1 = v0[40];
  v2 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v3 = swift_task_alloc();
  v0[57] = v3;
  *v3 = v0;
  v3[1] = sub_100C7FFB4;
  v4 = v0[42];
  v5 = v0[40];

  return unsafeBlocking<A>(context:_:)(v0 + 6, 0xD000000000000010, 0x800000010134A8C0, sub_1000D3168, v5, v4);
}

uint64_t sub_100C7FFB4()
{
  v1 = *(*v0 + 456);
  v2 = *(*v0 + 320);
  v4 = *v0;

  return _swift_task_switch(sub_100C800CC, v2, 0);
}

uint64_t sub_100C800CC()
{
  v1 = v0[12];
  v0[58] = v0[6];
  return _swift_task_switch(sub_100C800F0, v1, 0);
}

uint64_t sub_100C800F0()
{
  v158 = v0;
  v1 = *(*(v0 + 448) + 16);
  *(v0 + 472) = v1;
  if (v1)
  {
    v2 = 0;
    *(v0 + 480) = OBJC_IVAR____TtC12searchpartyd16BeaconKeyManager_keyStore;
    *(v0 + 580) = enum case for Connection.TransactionMode.deferred(_:);
    v3 = *(v0 + 440);
    do
    {
      *(v0 + 488) = v2;
      v4 = *(v0 + 448);
      if (v2 >= *(v4 + 16))
      {
        __break(1u);
        goto LABEL_52;
      }

      v5 = v4 + 16 * v2;
      v155 = *(v5 + 32);
      v6 = *(v5 + 40);
      v7 = qword_101694780;

      if (v7 != -1)
      {
        swift_once();
      }

      v8 = *(v0 + 240);
      v9 = *(v0 + 248);
      v10 = *(v0 + 232);
      v11 = *(v0 + 72);
      v147 = type metadata accessor for Logger();
      sub_1000076D4(v147, qword_10177AE40);
      sub_100D11DC8(v11, v9, type metadata accessor for SharingCircleKeyManager.Instruction);
      sub_100D11DC8(v11, v8, type metadata accessor for SharingCircleKeyManager.Instruction);
      sub_100D11DC8(v11, v10, type metadata accessor for SharingCircleKeyManager.Instruction);
      swift_bridgeObjectRetain_n();
      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v12, v13))
      {
        v142 = v13;
        v14 = *(v0 + 248);
        v134 = *(v0 + 240);
        v135 = *(v0 + 256);
        v139 = *(v0 + 232);
        v15 = *(v0 + 176);
        v16 = swift_slowAlloc();
        v157[0] = swift_slowAlloc();
        *v16 = 136447747;
        log = v12;
        v17 = sub_100C71778();
        v19 = v18;
        sub_100018D00(v14, type metadata accessor for SharingCircleKeyManager.Instruction);
        v20 = sub_1000136BC(v17, v19, v157);

        *(v16 + 4) = v20;
        *(v16 + 12) = 2080;
        v21 = sub_10125403C(v155);
        v23 = sub_1000136BC(v21, v22, v157);

        *(v16 + 14) = v23;
        *(v16 + 22) = 2160;
        *(v16 + 24) = 1752392040;
        *(v16 + 32) = 2081;
        v24 = *(v15 + 20);
        sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID);
        v25 = dispatch thunk of CustomStringConvertible.description.getter();
        v27 = v26;
        sub_100018D00(v134, type metadata accessor for SharingCircleKeyManager.Instruction);
        v28 = sub_1000136BC(v25, v27, v157);

        *(v16 + 34) = v28;
        *(v16 + 42) = 2160;
        *(v16 + 44) = 1752392040;
        *(v16 + 52) = 2081;
        v29 = v139 + *(v15 + 24);
        v30 = dispatch thunk of CustomStringConvertible.description.getter();
        v32 = v31;
        v0 = v150;
        sub_100018D00(v139, type metadata accessor for SharingCircleKeyManager.Instruction);
        v33 = sub_1000136BC(v30, v32, v157);

        *(v16 + 54) = v33;
        *(v16 + 62) = 2048;
        v34 = *(v6 + 16);

        *(v16 + 64) = v34;

        _os_log_impl(&_mh_execute_header, log, v142, "Save key package for imported share: %{public}s,\ntype: %s,\nshare-id: %{private,mask.hash}s,\nbeacon-id: %{private,mask.hash}s\nkeys: %ld.", v16, 0x48u);
        swift_arrayDestroy();

        if (!*(v6 + 16))
        {
          goto LABEL_22;
        }
      }

      else
      {
        v35 = *(v0 + 240);
        v36 = *(v0 + 248);
        v37 = *(v0 + 232);
        swift_bridgeObjectRelease_n();

        sub_100018D00(v37, type metadata accessor for SharingCircleKeyManager.Instruction);
        sub_100018D00(v35, type metadata accessor for SharingCircleKeyManager.Instruction);
        sub_100018D00(v36, type metadata accessor for SharingCircleKeyManager.Instruction);
        if (!*(v6 + 16))
        {
LABEL_22:
          sub_100D11DC8(*(v0 + 72), *(v0 + 224), type metadata accessor for SharingCircleKeyManager.Instruction);

          v60 = Logger.logObject.getter();
          v61 = static os_log_type_t.error.getter();

          v62 = os_log_type_enabled(v60, v61);
          v63 = *(v0 + 464);
          v64 = *(v0 + 224);
          if (v62)
          {
            v65 = swift_slowAlloc();
            v157[0] = swift_slowAlloc();
            *v65 = 136315394;
            v66 = sub_1012561CC(v155, v6);
            v68 = v67;

            v69 = sub_1000136BC(v66, v68, v157);

            *(v65 + 4) = v69;
            *(v65 + 12) = 2080;
            v70 = sub_100C71778();
            v72 = v71;
            sub_100018D00(v64, type metadata accessor for SharingCircleKeyManager.Instruction);
            v0 = v150;
            v73 = sub_1000136BC(v70, v72, v157);

            *(v65 + 14) = v73;
            _os_log_impl(&_mh_execute_header, v60, v61, "There are no keys to save for imported share in the package: %s, instruction: %s.", v65, 0x16u);
            swift_arrayDestroy();

            goto LABEL_17;
          }

          sub_100018D00(v64, type metadata accessor for SharingCircleKeyManager.Instruction);
          goto LABEL_18;
        }
      }

      v38 = sub_100D0F100(v155, v6, *(v0 + 80), *(v0 + 88));
      *(v0 + 496) = v3;
      *(v0 + 504) = v39;
      if (v3)
      {
        v74 = *(v0 + 464);

        if (qword_101694780 == -1)
        {
LABEL_25:
          v75 = *(v0 + 200);
          v76 = *(v0 + 72);
          sub_1000076D4(v147, qword_10177AE40);
          sub_100D11DC8(v76, v75, type metadata accessor for SharingCircleKeyManager.Instruction);
          swift_errorRetain();
          v77 = Logger.logObject.getter();
          v78 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v77, v78))
          {
            v79 = *(v0 + 256);
            v80 = *(v0 + 200);
            v81 = *(v0 + 176);
            v82 = swift_slowAlloc();
            v83 = swift_slowAlloc();
            v84 = swift_slowAlloc();
            v157[0] = v84;
            *v82 = 141558531;
            *(v82 + 4) = 1752392040;
            *(v82 + 12) = 2081;
            v85 = *(v81 + 20);
            sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID);
            v86 = dispatch thunk of CustomStringConvertible.description.getter();
            v88 = v87;
            sub_100018D00(v80, type metadata accessor for SharingCircleKeyManager.Instruction);
            v89 = sub_1000136BC(v86, v88, v157);

            *(v82 + 14) = v89;
            *(v82 + 22) = 2112;
            swift_errorRetain();
            v90 = _swift_stdlib_bridgeErrorToNSError();
            *(v82 + 24) = v90;
            *v83 = v90;
            _os_log_impl(&_mh_execute_header, v77, v78, "Server error downloading keys for imported share %{private,mask.hash}s: %@", v82, 0x20u);
            sub_10000B3A8(v83, &qword_10169BB30, &unk_10138B3C0);

            sub_100007BAC(v84);
          }

          else
          {
            v115 = *(v0 + 200);

            sub_100018D00(v115, type metadata accessor for SharingCircleKeyManager.Instruction);
          }

          *(v0 + 40) = v3;
          swift_errorRetain();
          sub_1000BC4D4(&qword_101696960, &unk_10138B220);
          if ((swift_dynamicCast() & 1) != 0 && *(v0 + 24) == 1 && *(v0 + 16) > 5uLL)
          {
            v116 = *(v0 + 208);
            v118 = *(v0 + 184);
            v117 = *(v0 + 192);
            v119 = *(v0 + 104);
            v120 = *(v0 + 72);
            v121 = type metadata accessor for TaskPriority();
            (*(*(v121 - 8) + 56))(v119, 1, 1, v121);
            sub_100D11DC8(v120, v116, type metadata accessor for SharingCircleKeyManager.Instruction);
            v122 = (*(v118 + 80) + 32) & ~*(v118 + 80);
            v123 = swift_allocObject();
            *(v123 + 16) = 0;
            *(v123 + 24) = 0;
            sub_100D12974(v116, v123 + v122, type metadata accessor for SharingCircleKeyManager.Instruction);
            sub_100A838D4(0, 0, v119, &unk_1013E3750, v123);
          }

          swift_willThrow();
          sub_100018D00(*(v0 + 312), type metadata accessor for KeyDropDownloadKeysMetadataResponse);
          v125 = *(v0 + 304);
          v124 = *(v0 + 312);
          v127 = *(v0 + 280);
          v126 = *(v0 + 288);
          v128 = *(v0 + 272);
          v129 = *(v0 + 240);
          v130 = *(v0 + 248);
          v132 = *(v0 + 224);
          v131 = *(v0 + 232);
          v133 = *(v0 + 216);
          logb = *(v0 + 208);
          v141 = *(v0 + 200);
          v144 = *(v0 + 168);
          v146 = *(v0 + 160);
          v149 = *(v0 + 136);
          v152 = *(v0 + 128);
          v154 = *(v0 + 104);

          v58 = *(v0 + 8);
          goto LABEL_19;
        }

LABEL_52:
        swift_once();
        goto LABEL_25;
      }

      v40 = v38;
      v41 = v39;

      if (v40 == 17)
      {
        v100 = *(v41 + 16);
        v101 = _swiftEmptyArrayStorage;
        if (v100)
        {
          *(v0 + 64) = _swiftEmptyArrayStorage;

          sub_101123DB0(0, v100, 0);
          v101 = *(v0 + 64);
          v102 = (v41 + 48);
          do
          {
            v104 = *(v102 - 2);
            v103 = *(v102 - 1);
            v105 = *v102;
            sub_100017D5C(v103, *v102);
            *(v150 + 64) = v101;
            v107 = v101[2];
            v106 = v101[3];
            if (v107 >= v106 >> 1)
            {
              sub_101123DB0((v106 > 1), v107 + 1, 1);
              v101 = *(v150 + 64);
            }

            v101[2] = v107 + 1;
            v108 = &v101[4 * v107];
            *(v108 + 32) = 0;
            v102 += 3;
            v108[5] = v104;
            v108[6] = v103;
            v108[7] = v105;
            --v100;
          }

          while (v100);

          v0 = v150;
        }

        *(v0 + 512) = v101;
        v113 = *(v0 + 280);
        v110 = *(*(v0 + 464) + *(v0 + 480));
        *(v0 + 520) = v110;
        v114 = getuid();
        sub_1000294F0(v114);
        v112 = sub_100C80FF0;
        goto LABEL_41;
      }

      if (v40 == 18)
      {
        v91 = *(v41 + 16);
        v92 = _swiftEmptyArrayStorage;
        if (v91)
        {
          *(v0 + 56) = _swiftEmptyArrayStorage;

          sub_101123DB0(0, v91, 0);
          v92 = *(v0 + 56);
          v93 = (v41 + 48);
          do
          {
            v95 = *(v93 - 2);
            v94 = *(v93 - 1);
            v96 = *v93;
            sub_100017D5C(v94, *v93);
            *(v0 + 56) = v92;
            v98 = v92[2];
            v97 = v92[3];
            if (v98 >= v97 >> 1)
            {
              sub_101123DB0((v97 > 1), v98 + 1, 1);
              v92 = *(v150 + 56);
            }

            v92[2] = v98 + 1;
            v99 = &v92[4 * v98];
            *(v99 + 32) = 1;
            v93 += 3;
            v99[5] = v95;
            v99[6] = v94;
            v99[7] = v96;
            --v91;
            v0 = v150;
          }

          while (v91);
        }

        *(v0 + 544) = v92;
        v109 = *(v0 + 272);
        v110 = *(*(v0 + 464) + *(v0 + 480));
        *(v0 + 552) = v110;
        v111 = getuid();
        sub_1000294F0(v111);
        v112 = sub_100C82770;
LABEL_41:

        return _swift_task_switch(v112, v110, 0);
      }

      v42 = Logger.logObject.getter();
      v43 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        v157[0] = v45;
        *v44 = 136315138;
        v46 = sub_10125403C(v40);
        v48 = sub_1000136BC(v46, v47, v157);

        *(v44 + 4) = v48;
        _os_log_impl(&_mh_execute_header, v42, v43, "unsupported package type for imported share: %s", v44, 0xCu);
        sub_100007BAC(v45);
      }

      v3 = 0;
      v2 = *(v0 + 488) + 1;
    }

    while (v2 != *(v0 + 472));
  }

  v49 = *(v0 + 464);
LABEL_17:

LABEL_18:
  v50 = *(v0 + 304);
  v51 = *(v0 + 280);
  v52 = *(v0 + 288);
  v53 = *(v0 + 272);
  v55 = *(v0 + 240);
  v54 = *(v0 + 248);
  v57 = *(v0 + 224);
  v56 = *(v0 + 232);
  loga = *(v0 + 216);
  v140 = *(v0 + 208);
  v143 = *(v0 + 200);
  v145 = *(v0 + 168);
  v148 = *(v0 + 160);
  v151 = *(v0 + 136);
  v153 = *(v0 + 128);
  v156 = *(v0 + 104);
  sub_100018D00(*(v0 + 312), type metadata accessor for KeyDropDownloadKeysMetadataResponse);

  v58 = *(v0 + 8);
LABEL_19:

  return v58();
}

uint64_t sub_100C80FF0()
{
  v1 = *(v0 + 520);
  v2 = *(v1 + 112);
  if (!v2)
  {
    v27 = *(v0 + 512);

    sub_10020223C();
    v19 = swift_allocError();
    *v28 = 2;
    *(v28 + 4) = 1;
    swift_willThrow();
    goto LABEL_8;
  }

  v3 = *(v2 + 32);
  v4 = *(v1 + 112);

  os_unfair_lock_lock((v3 + 20));
  v5 = *(v3 + 16);
  os_unfair_lock_unlock((v3 + 20));
  if (v5 != 1 || (v6 = sub_100D13BF8(&qword_101699E80, type metadata accessor for ItemSharingKeyDatabase), v7 = *(v6 + 16), v8 = type metadata accessor for ItemSharingKeyDatabase(), (v9 = v7(v8, v6)) == 0))
  {
    v25 = *(v0 + 512);

    sub_10020223C();
    v19 = swift_allocError();
    *v26 = 2;
    *(v26 + 4) = 1;
    swift_willThrow();

    goto LABEL_8;
  }

  v50 = *(v0 + 496);
  v47 = *(v0 + 580);
  v41 = *(v0 + 280);
  v10 = *(v0 + 168);
  v11 = *(v0 + 144);
  v12 = *(v0 + 152);
  v13 = *(v0 + 136);
  v14 = *(v0 + 120);
  v43 = *(v0 + 112);
  v45 = *(v0 + 512);
  v15 = *(v0 + 72);
  v16 = v15 + *(v0 + 576);
  v39 = v15 + *(v0 + 28);
  v17 = *(v9 + 24);

  (*(v12 + 16))(v10, v2 + OBJC_IVAR____TtC12searchpartyd22ItemSharingKeyDatabase_publicKeysSuffix, v11);
  v18 = swift_task_alloc();
  v18[2] = v45;
  v18[3] = v10;
  v18[4] = v16;
  v18[5] = v39;
  v18[6] = v41;
  v18[7] = v17;
  (*(v14 + 104))(v13, v47, v43);
  Connection.transaction(_:block:)();
  v19 = v50;
  *(v0 + 528) = v50;
  v20 = *(v0 + 512);
  if (v50)
  {
    v21 = *(v0 + 152);
    v48 = *(v0 + 144);
    v51 = *(v0 + 168);
    v22 = *(v0 + 136);
    v24 = *(v0 + 112);
    v23 = *(v0 + 120);

    (*(v23 + 8))(v22, v24);

    (*(v21 + 8))(v51, v48);
LABEL_8:
    *(v0 + 536) = v19;
    v29 = *(v0 + 392);
    v30 = *(v0 + 96);
    (*(v0 + 384))(*(v0 + 280), *(v0 + 256));
    v31 = sub_100C8226C;
    v32 = v30;
    goto LABEL_9;
  }

  v49 = *(v0 + 384);
  v52 = *(v0 + 392);
  v42 = *(v0 + 256);
  v44 = *(v0 + 280);
  v40 = *(v0 + 168);
  v34 = *(v0 + 144);
  v33 = *(v0 + 152);
  v35 = *(v0 + 136);
  v36 = *(v0 + 112);
  v37 = *(v0 + 120);
  v46 = *(v0 + 96);

  (*(v37 + 8))(v35, v36);

  (*(v33 + 8))(v40, v34);
  v49(v44, v42);
  v31 = sub_100C813A4;
  v32 = v46;
LABEL_9:

  return _swift_task_switch(v31, v32, 0);
}

uint64_t sub_100C813A4()
{
  v157 = v0;
  v1 = *(v0 + 504);

  v2 = *(v0 + 488) + 1;
  if (v2 != *(v0 + 472))
  {
    v14 = *(v0 + 528);
    do
    {
      *(v0 + 488) = v2;
      v15 = *(v0 + 448);
      if (v2 >= *(v15 + 16))
      {
        __break(1u);
        goto LABEL_52;
      }

      v16 = v15 + 16 * v2;
      v155 = *(v16 + 32);
      v17 = *(v16 + 40);
      v18 = qword_101694780;

      if (v18 != -1)
      {
        swift_once();
      }

      v19 = *(v0 + 240);
      v20 = *(v0 + 248);
      v21 = *(v0 + 232);
      v22 = *(v0 + 72);
      v149 = type metadata accessor for Logger();
      sub_1000076D4(v149, qword_10177AE40);
      sub_100D11DC8(v22, v20, type metadata accessor for SharingCircleKeyManager.Instruction);
      sub_100D11DC8(v22, v19, type metadata accessor for SharingCircleKeyManager.Instruction);
      sub_100D11DC8(v22, v21, type metadata accessor for SharingCircleKeyManager.Instruction);
      swift_bridgeObjectRetain_n();
      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v23, v24))
      {
        v135 = *(v0 + 256);
        v145 = v24;
        v26 = *(v0 + 240);
        v25 = *(v0 + 248);
        v142 = *(v0 + 232);
        v27 = *(v0 + 176);
        v28 = swift_slowAlloc();
        v156[0] = swift_slowAlloc();
        *v28 = 136447747;
        loga = v23;
        v29 = sub_100C71778();
        v31 = v30;
        sub_100018D00(v25, type metadata accessor for SharingCircleKeyManager.Instruction);
        v32 = sub_1000136BC(v29, v31, v156);

        *(v28 + 4) = v32;
        *(v28 + 12) = 2080;
        v33 = sub_10125403C(v155);
        v35 = sub_1000136BC(v33, v34, v156);

        *(v28 + 14) = v35;
        *(v28 + 22) = 2160;
        *(v28 + 24) = 1752392040;
        *(v28 + 32) = 2081;
        v36 = *(v27 + 20);
        sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID);
        v37 = dispatch thunk of CustomStringConvertible.description.getter();
        v39 = v38;
        sub_100018D00(v26, type metadata accessor for SharingCircleKeyManager.Instruction);
        v40 = sub_1000136BC(v37, v39, v156);

        *(v28 + 34) = v40;
        *(v28 + 42) = 2160;
        *(v28 + 44) = 1752392040;
        *(v28 + 52) = 2081;
        v41 = v142 + *(v27 + 24);
        v42 = dispatch thunk of CustomStringConvertible.description.getter();
        v44 = v43;
        sub_100018D00(v142, type metadata accessor for SharingCircleKeyManager.Instruction);
        v45 = sub_1000136BC(v42, v44, v156);

        *(v28 + 54) = v45;
        *(v28 + 62) = 2048;
        v46 = *(v17 + 16);

        *(v28 + 64) = v46;

        _os_log_impl(&_mh_execute_header, loga, v145, "Save key package for imported share: %{public}s,\ntype: %s,\nshare-id: %{private,mask.hash}s,\nbeacon-id: %{private,mask.hash}s\nkeys: %ld.", v28, 0x48u);
        swift_arrayDestroy();

        if (!*(v17 + 16))
        {
          goto LABEL_22;
        }
      }

      else
      {
        v47 = *(v0 + 240);
        v48 = *(v0 + 248);
        v49 = *(v0 + 232);
        swift_bridgeObjectRelease_n();

        sub_100018D00(v49, type metadata accessor for SharingCircleKeyManager.Instruction);
        sub_100018D00(v47, type metadata accessor for SharingCircleKeyManager.Instruction);
        sub_100018D00(v48, type metadata accessor for SharingCircleKeyManager.Instruction);
        if (!*(v17 + 16))
        {
LABEL_22:
          sub_100D11DC8(*(v0 + 72), *(v0 + 224), type metadata accessor for SharingCircleKeyManager.Instruction);

          v61 = Logger.logObject.getter();
          v62 = static os_log_type_t.error.getter();

          v63 = os_log_type_enabled(v61, v62);
          v64 = *(v0 + 464);
          v65 = *(v0 + 224);
          if (v63)
          {
            v66 = swift_slowAlloc();
            v156[0] = swift_slowAlloc();
            *v66 = 136315394;
            v67 = sub_1012561CC(v155, v17);
            v69 = v68;

            v70 = sub_1000136BC(v67, v69, v156);

            *(v66 + 4) = v70;
            *(v66 + 12) = 2080;
            v71 = sub_100C71778();
            v73 = v72;
            sub_100018D00(v65, type metadata accessor for SharingCircleKeyManager.Instruction);
            v74 = sub_1000136BC(v71, v73, v156);

            *(v66 + 14) = v74;
            _os_log_impl(&_mh_execute_header, v61, v62, "There are no keys to save for imported share in the package: %s, instruction: %s.", v66, 0x16u);
            swift_arrayDestroy();

            goto LABEL_3;
          }

          sub_100018D00(v65, type metadata accessor for SharingCircleKeyManager.Instruction);
          goto LABEL_4;
        }
      }

      v50 = sub_100D0F100(v155, v17, *(v0 + 80), *(v0 + 88));
      *(v0 + 496) = v14;
      *(v0 + 504) = v51;
      if (v14)
      {
        v75 = *(v0 + 464);

        if (qword_101694780 == -1)
        {
LABEL_25:
          v76 = *(v0 + 200);
          v77 = *(v0 + 72);
          sub_1000076D4(v149, qword_10177AE40);
          sub_100D11DC8(v77, v76, type metadata accessor for SharingCircleKeyManager.Instruction);
          swift_errorRetain();
          v78 = Logger.logObject.getter();
          v79 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v78, v79))
          {
            v80 = *(v0 + 256);
            v81 = *(v0 + 200);
            v82 = *(v0 + 176);
            v83 = swift_slowAlloc();
            v84 = swift_slowAlloc();
            v85 = swift_slowAlloc();
            v156[0] = v85;
            *v83 = 141558531;
            *(v83 + 4) = 1752392040;
            *(v83 + 12) = 2081;
            v86 = *(v82 + 20);
            sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID);
            v87 = dispatch thunk of CustomStringConvertible.description.getter();
            v89 = v88;
            sub_100018D00(v81, type metadata accessor for SharingCircleKeyManager.Instruction);
            v90 = sub_1000136BC(v87, v89, v156);

            *(v83 + 14) = v90;
            *(v83 + 22) = 2112;
            swift_errorRetain();
            v91 = _swift_stdlib_bridgeErrorToNSError();
            *(v83 + 24) = v91;
            *v84 = v91;
            _os_log_impl(&_mh_execute_header, v78, v79, "Server error downloading keys for imported share %{private,mask.hash}s: %@", v83, 0x20u);
            sub_10000B3A8(v84, &qword_10169BB30, &unk_10138B3C0);

            sub_100007BAC(v85);
          }

          else
          {
            v116 = *(v0 + 200);

            sub_100018D00(v116, type metadata accessor for SharingCircleKeyManager.Instruction);
          }

          *(v0 + 40) = v14;
          swift_errorRetain();
          sub_1000BC4D4(&qword_101696960, &unk_10138B220);
          if ((swift_dynamicCast() & 1) != 0 && *(v0 + 24) == 1 && *(v0 + 16) > 5uLL)
          {
            v117 = *(v0 + 208);
            v119 = *(v0 + 184);
            v118 = *(v0 + 192);
            v120 = *(v0 + 104);
            v121 = *(v0 + 72);
            v122 = type metadata accessor for TaskPriority();
            (*(*(v122 - 8) + 56))(v120, 1, 1, v122);
            sub_100D11DC8(v121, v117, type metadata accessor for SharingCircleKeyManager.Instruction);
            v123 = (*(v119 + 80) + 32) & ~*(v119 + 80);
            v124 = swift_allocObject();
            *(v124 + 16) = 0;
            *(v124 + 24) = 0;
            sub_100D12974(v117, v124 + v123, type metadata accessor for SharingCircleKeyManager.Instruction);
            sub_100A838D4(0, 0, v120, &unk_1013E3750, v124);
          }

          swift_willThrow();
          sub_100018D00(*(v0 + 312), type metadata accessor for KeyDropDownloadKeysMetadataResponse);
          v126 = *(v0 + 304);
          v125 = *(v0 + 312);
          v128 = *(v0 + 280);
          v127 = *(v0 + 288);
          v129 = *(v0 + 272);
          v130 = *(v0 + 240);
          v131 = *(v0 + 248);
          v133 = *(v0 + 224);
          v132 = *(v0 + 232);
          v134 = *(v0 + 216);
          v137 = *(v0 + 208);
          logb = *(v0 + 200);
          v143 = *(v0 + 168);
          v146 = *(v0 + 160);
          v148 = *(v0 + 136);
          v151 = *(v0 + 128);
          v153 = *(v0 + 104);

          v12 = *(v0 + 8);
          goto LABEL_5;
        }

LABEL_52:
        swift_once();
        goto LABEL_25;
      }

      v52 = v50;
      v53 = v51;

      if (v52 == 17)
      {
        v101 = *(v53 + 16);
        v102 = _swiftEmptyArrayStorage;
        if (v101)
        {
          *(v0 + 64) = _swiftEmptyArrayStorage;

          sub_101123DB0(0, v101, 0);
          v102 = *(v0 + 64);
          v103 = (v53 + 48);
          do
          {
            v105 = *(v103 - 2);
            v104 = *(v103 - 1);
            v106 = *v103;
            sub_100017D5C(v104, *v103);
            *(v0 + 64) = v102;
            v108 = v102[2];
            v107 = v102[3];
            if (v108 >= v107 >> 1)
            {
              sub_101123DB0((v107 > 1), v108 + 1, 1);
              v102 = *(v0 + 64);
            }

            v102[2] = v108 + 1;
            v109 = &v102[4 * v108];
            *(v109 + 32) = 0;
            v103 += 3;
            v109[5] = v105;
            v109[6] = v104;
            v109[7] = v106;
            --v101;
          }

          while (v101);
        }

        *(v0 + 512) = v102;
        v114 = *(v0 + 280);
        v111 = *(*(v0 + 464) + *(v0 + 480));
        *(v0 + 520) = v111;
        v115 = getuid();
        sub_1000294F0(v115);
        v113 = sub_100C80FF0;
        goto LABEL_41;
      }

      if (v52 == 18)
      {
        v92 = *(v53 + 16);
        v93 = _swiftEmptyArrayStorage;
        if (v92)
        {
          *(v0 + 56) = _swiftEmptyArrayStorage;

          sub_101123DB0(0, v92, 0);
          v93 = *(v0 + 56);
          v94 = (v53 + 48);
          do
          {
            v96 = *(v94 - 2);
            v95 = *(v94 - 1);
            v97 = *v94;
            sub_100017D5C(v95, *v94);
            *(v0 + 56) = v93;
            v99 = v93[2];
            v98 = v93[3];
            if (v99 >= v98 >> 1)
            {
              sub_101123DB0((v98 > 1), v99 + 1, 1);
              v93 = *(v0 + 56);
            }

            v93[2] = v99 + 1;
            v100 = &v93[4 * v99];
            *(v100 + 32) = 1;
            v94 += 3;
            v100[5] = v96;
            v100[6] = v95;
            v100[7] = v97;
            --v92;
          }

          while (v92);
        }

        *(v0 + 544) = v93;
        v110 = *(v0 + 272);
        v111 = *(*(v0 + 464) + *(v0 + 480));
        *(v0 + 552) = v111;
        v112 = getuid();
        sub_1000294F0(v112);
        v113 = sub_100C82770;
LABEL_41:

        return _swift_task_switch(v113, v111, 0);
      }

      v54 = Logger.logObject.getter();
      v55 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v54, v55))
      {
        v56 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        v156[0] = v57;
        *v56 = 136315138;
        v58 = sub_10125403C(v52);
        v60 = sub_1000136BC(v58, v59, v156);

        *(v56 + 4) = v60;
        _os_log_impl(&_mh_execute_header, v54, v55, "unsupported package type for imported share: %s", v56, 0xCu);
        sub_100007BAC(v57);
      }

      v14 = 0;
      v2 = *(v0 + 488) + 1;
    }

    while (v2 != *(v0 + 472));
  }

  v3 = *(v0 + 464);
LABEL_3:

LABEL_4:
  v4 = *(v0 + 304);
  v5 = *(v0 + 280);
  v6 = *(v0 + 288);
  v7 = *(v0 + 272);
  v9 = *(v0 + 240);
  v8 = *(v0 + 248);
  v11 = *(v0 + 224);
  v10 = *(v0 + 232);
  v136 = *(v0 + 216);
  log = *(v0 + 208);
  v141 = *(v0 + 200);
  v144 = *(v0 + 168);
  v147 = *(v0 + 160);
  v150 = *(v0 + 136);
  v152 = *(v0 + 128);
  v154 = *(v0 + 104);
  sub_100018D00(*(v0 + 312), type metadata accessor for KeyDropDownloadKeysMetadataResponse);

  v12 = *(v0 + 8);
LABEL_5:

  return v12();
}

uint64_t sub_100C8226C()
{
  v50 = v0;
  v1 = *(v0 + 504);
  v2 = *(v0 + 464);

  v3 = *(v0 + 536);
  if (qword_101694780 != -1)
  {
    swift_once();
  }

  v4 = *(v0 + 200);
  v5 = *(v0 + 72);
  v6 = type metadata accessor for Logger();
  sub_1000076D4(v6, qword_10177AE40);
  sub_100D11DC8(v5, v4, type metadata accessor for SharingCircleKeyManager.Instruction);
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = *(v0 + 256);
    v10 = *(v0 + 200);
    v11 = *(v0 + 176);
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v49 = v14;
    *v12 = 141558531;
    *(v12 + 4) = 1752392040;
    *(v12 + 12) = 2081;
    v15 = *(v11 + 20);
    sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID);
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    v18 = v17;
    sub_100018D00(v10, type metadata accessor for SharingCircleKeyManager.Instruction);
    v19 = sub_1000136BC(v16, v18, &v49);

    *(v12 + 14) = v19;
    *(v12 + 22) = 2112;
    swift_errorRetain();
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 24) = v20;
    *v13 = v20;
    _os_log_impl(&_mh_execute_header, v7, v8, "Server error downloading keys for imported share %{private,mask.hash}s: %@", v12, 0x20u);
    sub_10000B3A8(v13, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v14);
  }

  else
  {
    v21 = *(v0 + 200);

    sub_100018D00(v21, type metadata accessor for SharingCircleKeyManager.Instruction);
  }

  *(v0 + 40) = v3;
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  if ((swift_dynamicCast() & 1) != 0 && *(v0 + 24) == 1 && *(v0 + 16) > 5uLL)
  {
    v22 = *(v0 + 208);
    v24 = *(v0 + 184);
    v23 = *(v0 + 192);
    v25 = *(v0 + 104);
    v26 = *(v0 + 72);
    v27 = type metadata accessor for TaskPriority();
    (*(*(v27 - 8) + 56))(v25, 1, 1, v27);
    sub_100D11DC8(v26, v22, type metadata accessor for SharingCircleKeyManager.Instruction);
    v28 = (*(v24 + 80) + 32) & ~*(v24 + 80);
    v29 = swift_allocObject();
    *(v29 + 16) = 0;
    *(v29 + 24) = 0;
    sub_100D12974(v22, v29 + v28, type metadata accessor for SharingCircleKeyManager.Instruction);
    sub_100A838D4(0, 0, v25, &unk_1013E3750, v29);
  }

  swift_willThrow();
  sub_100018D00(*(v0 + 312), type metadata accessor for KeyDropDownloadKeysMetadataResponse);
  v31 = *(v0 + 304);
  v30 = *(v0 + 312);
  v33 = *(v0 + 280);
  v32 = *(v0 + 288);
  v34 = *(v0 + 272);
  v35 = *(v0 + 240);
  v36 = *(v0 + 248);
  v38 = *(v0 + 224);
  v37 = *(v0 + 232);
  v39 = *(v0 + 216);
  v42 = *(v0 + 208);
  v43 = *(v0 + 200);
  v44 = *(v0 + 168);
  v45 = *(v0 + 160);
  v46 = *(v0 + 136);
  v47 = *(v0 + 128);
  v48 = *(v0 + 104);

  v40 = *(v0 + 8);

  return v40();
}

uint64_t sub_100C82770()
{
  v1 = *(v0 + 552);
  v2 = *(v1 + 112);
  if (!v2)
  {
    v27 = *(v0 + 544);

    sub_10020223C();
    v19 = swift_allocError();
    *v28 = 2;
    *(v28 + 4) = 1;
    swift_willThrow();
    goto LABEL_8;
  }

  v3 = *(v2 + 32);
  v4 = *(v1 + 112);

  os_unfair_lock_lock((v3 + 20));
  v5 = *(v3 + 16);
  os_unfair_lock_unlock((v3 + 20));
  if (v5 != 1 || (v6 = sub_100D13BF8(&qword_101699E80, type metadata accessor for ItemSharingKeyDatabase), v7 = *(v6 + 16), v8 = type metadata accessor for ItemSharingKeyDatabase(), (v9 = v7(v8, v6)) == 0))
  {
    v25 = *(v0 + 544);

    sub_10020223C();
    v19 = swift_allocError();
    *v26 = 2;
    *(v26 + 4) = 1;
    swift_willThrow();

    goto LABEL_8;
  }

  v50 = *(v0 + 496);
  v47 = *(v0 + 580);
  v41 = *(v0 + 272);
  v10 = *(v0 + 152);
  v11 = *(v0 + 160);
  v12 = *(v0 + 144);
  v14 = *(v0 + 120);
  v13 = *(v0 + 128);
  v43 = *(v0 + 112);
  v45 = *(v0 + 544);
  v15 = *(v0 + 72);
  v16 = v15 + *(v0 + 576);
  v39 = v15 + *(v0 + 28);
  v17 = *(v9 + 24);

  (*(v10 + 16))(v11, v2 + OBJC_IVAR____TtC12searchpartyd22ItemSharingKeyDatabase_publicKeysSuffix, v12);
  v18 = swift_task_alloc();
  v18[2] = v45;
  v18[3] = v11;
  v18[4] = v16;
  v18[5] = v39;
  v18[6] = v41;
  v18[7] = v17;
  (*(v14 + 104))(v13, v47, v43);
  Connection.transaction(_:block:)();
  v19 = v50;
  *(v0 + 560) = v50;
  v20 = *(v0 + 544);
  if (v50)
  {
    v21 = *(v0 + 152);
    v48 = *(v0 + 144);
    v51 = *(v0 + 160);
    v22 = *(v0 + 120);
    v23 = *(v0 + 128);
    v24 = *(v0 + 112);

    (*(v22 + 8))(v23, v24);

    (*(v21 + 8))(v51, v48);
LABEL_8:
    *(v0 + 568) = v19;
    v29 = *(v0 + 392);
    v30 = *(v0 + 96);
    (*(v0 + 384))(*(v0 + 272), *(v0 + 256));
    v31 = sub_100C839EC;
    v32 = v30;
    goto LABEL_9;
  }

  v49 = *(v0 + 384);
  v52 = *(v0 + 392);
  v42 = *(v0 + 256);
  v44 = *(v0 + 272);
  v33 = *(v0 + 152);
  v40 = *(v0 + 160);
  v34 = *(v0 + 144);
  v35 = *(v0 + 120);
  v36 = *(v0 + 128);
  v37 = *(v0 + 112);
  v46 = *(v0 + 96);

  (*(v35 + 8))(v36, v37);

  (*(v33 + 8))(v40, v34);
  v49(v44, v42);
  v31 = sub_100C82B24;
  v32 = v46;
LABEL_9:

  return _swift_task_switch(v31, v32, 0);
}

uint64_t sub_100C82B24()
{
  v157 = v0;
  v1 = *(v0 + 504);

  v2 = *(v0 + 488) + 1;
  if (v2 != *(v0 + 472))
  {
    v14 = *(v0 + 560);
    do
    {
      *(v0 + 488) = v2;
      v15 = *(v0 + 448);
      if (v2 >= *(v15 + 16))
      {
        __break(1u);
        goto LABEL_52;
      }

      v16 = v15 + 16 * v2;
      v155 = *(v16 + 32);
      v17 = *(v16 + 40);
      v18 = qword_101694780;

      if (v18 != -1)
      {
        swift_once();
      }

      v19 = *(v0 + 240);
      v20 = *(v0 + 248);
      v21 = *(v0 + 232);
      v22 = *(v0 + 72);
      v149 = type metadata accessor for Logger();
      sub_1000076D4(v149, qword_10177AE40);
      sub_100D11DC8(v22, v20, type metadata accessor for SharingCircleKeyManager.Instruction);
      sub_100D11DC8(v22, v19, type metadata accessor for SharingCircleKeyManager.Instruction);
      sub_100D11DC8(v22, v21, type metadata accessor for SharingCircleKeyManager.Instruction);
      swift_bridgeObjectRetain_n();
      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v23, v24))
      {
        v135 = *(v0 + 256);
        v145 = v24;
        v26 = *(v0 + 240);
        v25 = *(v0 + 248);
        v142 = *(v0 + 232);
        v27 = *(v0 + 176);
        v28 = swift_slowAlloc();
        v156[0] = swift_slowAlloc();
        *v28 = 136447747;
        loga = v23;
        v29 = sub_100C71778();
        v31 = v30;
        sub_100018D00(v25, type metadata accessor for SharingCircleKeyManager.Instruction);
        v32 = sub_1000136BC(v29, v31, v156);

        *(v28 + 4) = v32;
        *(v28 + 12) = 2080;
        v33 = sub_10125403C(v155);
        v35 = sub_1000136BC(v33, v34, v156);

        *(v28 + 14) = v35;
        *(v28 + 22) = 2160;
        *(v28 + 24) = 1752392040;
        *(v28 + 32) = 2081;
        v36 = *(v27 + 20);
        sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID);
        v37 = dispatch thunk of CustomStringConvertible.description.getter();
        v39 = v38;
        sub_100018D00(v26, type metadata accessor for SharingCircleKeyManager.Instruction);
        v40 = sub_1000136BC(v37, v39, v156);

        *(v28 + 34) = v40;
        *(v28 + 42) = 2160;
        *(v28 + 44) = 1752392040;
        *(v28 + 52) = 2081;
        v41 = v142 + *(v27 + 24);
        v42 = dispatch thunk of CustomStringConvertible.description.getter();
        v44 = v43;
        sub_100018D00(v142, type metadata accessor for SharingCircleKeyManager.Instruction);
        v45 = sub_1000136BC(v42, v44, v156);

        *(v28 + 54) = v45;
        *(v28 + 62) = 2048;
        v46 = *(v17 + 16);

        *(v28 + 64) = v46;

        _os_log_impl(&_mh_execute_header, loga, v145, "Save key package for imported share: %{public}s,\ntype: %s,\nshare-id: %{private,mask.hash}s,\nbeacon-id: %{private,mask.hash}s\nkeys: %ld.", v28, 0x48u);
        swift_arrayDestroy();

        if (!*(v17 + 16))
        {
          goto LABEL_22;
        }
      }

      else
      {
        v47 = *(v0 + 240);
        v48 = *(v0 + 248);
        v49 = *(v0 + 232);
        swift_bridgeObjectRelease_n();

        sub_100018D00(v49, type metadata accessor for SharingCircleKeyManager.Instruction);
        sub_100018D00(v47, type metadata accessor for SharingCircleKeyManager.Instruction);
        sub_100018D00(v48, type metadata accessor for SharingCircleKeyManager.Instruction);
        if (!*(v17 + 16))
        {
LABEL_22:
          sub_100D11DC8(*(v0 + 72), *(v0 + 224), type metadata accessor for SharingCircleKeyManager.Instruction);

          v61 = Logger.logObject.getter();
          v62 = static os_log_type_t.error.getter();

          v63 = os_log_type_enabled(v61, v62);
          v64 = *(v0 + 464);
          v65 = *(v0 + 224);
          if (v63)
          {
            v66 = swift_slowAlloc();
            v156[0] = swift_slowAlloc();
            *v66 = 136315394;
            v67 = sub_1012561CC(v155, v17);
            v69 = v68;

            v70 = sub_1000136BC(v67, v69, v156);

            *(v66 + 4) = v70;
            *(v66 + 12) = 2080;
            v71 = sub_100C71778();
            v73 = v72;
            sub_100018D00(v65, type metadata accessor for SharingCircleKeyManager.Instruction);
            v74 = sub_1000136BC(v71, v73, v156);

            *(v66 + 14) = v74;
            _os_log_impl(&_mh_execute_header, v61, v62, "There are no keys to save for imported share in the package: %s, instruction: %s.", v66, 0x16u);
            swift_arrayDestroy();

            goto LABEL_3;
          }

          sub_100018D00(v65, type metadata accessor for SharingCircleKeyManager.Instruction);
          goto LABEL_4;
        }
      }

      v50 = sub_100D0F100(v155, v17, *(v0 + 80), *(v0 + 88));
      *(v0 + 496) = v14;
      *(v0 + 504) = v51;
      if (v14)
      {
        v75 = *(v0 + 464);

        if (qword_101694780 == -1)
        {
LABEL_25:
          v76 = *(v0 + 200);
          v77 = *(v0 + 72);
          sub_1000076D4(v149, qword_10177AE40);
          sub_100D11DC8(v77, v76, type metadata accessor for SharingCircleKeyManager.Instruction);
          swift_errorRetain();
          v78 = Logger.logObject.getter();
          v79 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v78, v79))
          {
            v80 = *(v0 + 256);
            v81 = *(v0 + 200);
            v82 = *(v0 + 176);
            v83 = swift_slowAlloc();
            v84 = swift_slowAlloc();
            v85 = swift_slowAlloc();
            v156[0] = v85;
            *v83 = 141558531;
            *(v83 + 4) = 1752392040;
            *(v83 + 12) = 2081;
            v86 = *(v82 + 20);
            sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID);
            v87 = dispatch thunk of CustomStringConvertible.description.getter();
            v89 = v88;
            sub_100018D00(v81, type metadata accessor for SharingCircleKeyManager.Instruction);
            v90 = sub_1000136BC(v87, v89, v156);

            *(v83 + 14) = v90;
            *(v83 + 22) = 2112;
            swift_errorRetain();
            v91 = _swift_stdlib_bridgeErrorToNSError();
            *(v83 + 24) = v91;
            *v84 = v91;
            _os_log_impl(&_mh_execute_header, v78, v79, "Server error downloading keys for imported share %{private,mask.hash}s: %@", v83, 0x20u);
            sub_10000B3A8(v84, &qword_10169BB30, &unk_10138B3C0);

            sub_100007BAC(v85);
          }

          else
          {
            v116 = *(v0 + 200);

            sub_100018D00(v116, type metadata accessor for SharingCircleKeyManager.Instruction);
          }

          *(v0 + 40) = v14;
          swift_errorRetain();
          sub_1000BC4D4(&qword_101696960, &unk_10138B220);
          if ((swift_dynamicCast() & 1) != 0 && *(v0 + 24) == 1 && *(v0 + 16) > 5uLL)
          {
            v117 = *(v0 + 208);
            v119 = *(v0 + 184);
            v118 = *(v0 + 192);
            v120 = *(v0 + 104);
            v121 = *(v0 + 72);
            v122 = type metadata accessor for TaskPriority();
            (*(*(v122 - 8) + 56))(v120, 1, 1, v122);
            sub_100D11DC8(v121, v117, type metadata accessor for SharingCircleKeyManager.Instruction);
            v123 = (*(v119 + 80) + 32) & ~*(v119 + 80);
            v124 = swift_allocObject();
            *(v124 + 16) = 0;
            *(v124 + 24) = 0;
            sub_100D12974(v117, v124 + v123, type metadata accessor for SharingCircleKeyManager.Instruction);
            sub_100A838D4(0, 0, v120, &unk_1013E3750, v124);
          }

          swift_willThrow();
          sub_100018D00(*(v0 + 312), type metadata accessor for KeyDropDownloadKeysMetadataResponse);
          v126 = *(v0 + 304);
          v125 = *(v0 + 312);
          v128 = *(v0 + 280);
          v127 = *(v0 + 288);
          v129 = *(v0 + 272);
          v130 = *(v0 + 240);
          v131 = *(v0 + 248);
          v133 = *(v0 + 224);
          v132 = *(v0 + 232);
          v134 = *(v0 + 216);
          v137 = *(v0 + 208);
          logb = *(v0 + 200);
          v143 = *(v0 + 168);
          v146 = *(v0 + 160);
          v148 = *(v0 + 136);
          v151 = *(v0 + 128);
          v153 = *(v0 + 104);

          v12 = *(v0 + 8);
          goto LABEL_5;
        }

LABEL_52:
        swift_once();
        goto LABEL_25;
      }

      v52 = v50;
      v53 = v51;

      if (v52 == 17)
      {
        v101 = *(v53 + 16);
        v102 = _swiftEmptyArrayStorage;
        if (v101)
        {
          *(v0 + 64) = _swiftEmptyArrayStorage;

          sub_101123DB0(0, v101, 0);
          v102 = *(v0 + 64);
          v103 = (v53 + 48);
          do
          {
            v105 = *(v103 - 2);
            v104 = *(v103 - 1);
            v106 = *v103;
            sub_100017D5C(v104, *v103);
            *(v0 + 64) = v102;
            v108 = v102[2];
            v107 = v102[3];
            if (v108 >= v107 >> 1)
            {
              sub_101123DB0((v107 > 1), v108 + 1, 1);
              v102 = *(v0 + 64);
            }

            v102[2] = v108 + 1;
            v109 = &v102[4 * v108];
            *(v109 + 32) = 0;
            v103 += 3;
            v109[5] = v105;
            v109[6] = v104;
            v109[7] = v106;
            --v101;
          }

          while (v101);
        }

        *(v0 + 512) = v102;
        v114 = *(v0 + 280);
        v111 = *(*(v0 + 464) + *(v0 + 480));
        *(v0 + 520) = v111;
        v115 = getuid();
        sub_1000294F0(v115);
        v113 = sub_100C80FF0;
        goto LABEL_41;
      }

      if (v52 == 18)
      {
        v92 = *(v53 + 16);
        v93 = _swiftEmptyArrayStorage;
        if (v92)
        {
          *(v0 + 56) = _swiftEmptyArrayStorage;

          sub_101123DB0(0, v92, 0);
          v93 = *(v0 + 56);
          v94 = (v53 + 48);
          do
          {
            v96 = *(v94 - 2);
            v95 = *(v94 - 1);
            v97 = *v94;
            sub_100017D5C(v95, *v94);
            *(v0 + 56) = v93;
            v99 = v93[2];
            v98 = v93[3];
            if (v99 >= v98 >> 1)
            {
              sub_101123DB0((v98 > 1), v99 + 1, 1);
              v93 = *(v0 + 56);
            }

            v93[2] = v99 + 1;
            v100 = &v93[4 * v99];
            *(v100 + 32) = 1;
            v94 += 3;
            v100[5] = v96;
            v100[6] = v95;
            v100[7] = v97;
            --v92;
          }

          while (v92);
        }

        *(v0 + 544) = v93;
        v110 = *(v0 + 272);
        v111 = *(*(v0 + 464) + *(v0 + 480));
        *(v0 + 552) = v111;
        v112 = getuid();
        sub_1000294F0(v112);
        v113 = sub_100C82770;
LABEL_41:

        return _swift_task_switch(v113, v111, 0);
      }

      v54 = Logger.logObject.getter();
      v55 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v54, v55))
      {
        v56 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        v156[0] = v57;
        *v56 = 136315138;
        v58 = sub_10125403C(v52);
        v60 = sub_1000136BC(v58, v59, v156);

        *(v56 + 4) = v60;
        _os_log_impl(&_mh_execute_header, v54, v55, "unsupported package type for imported share: %s", v56, 0xCu);
        sub_100007BAC(v57);
      }

      v14 = 0;
      v2 = *(v0 + 488) + 1;
    }

    while (v2 != *(v0 + 472));
  }

  v3 = *(v0 + 464);
LABEL_3:

LABEL_4:
  v4 = *(v0 + 304);
  v5 = *(v0 + 280);
  v6 = *(v0 + 288);
  v7 = *(v0 + 272);
  v9 = *(v0 + 240);
  v8 = *(v0 + 248);
  v11 = *(v0 + 224);
  v10 = *(v0 + 232);
  v136 = *(v0 + 216);
  log = *(v0 + 208);
  v141 = *(v0 + 200);
  v144 = *(v0 + 168);
  v147 = *(v0 + 160);
  v150 = *(v0 + 136);
  v152 = *(v0 + 128);
  v154 = *(v0 + 104);
  sub_100018D00(*(v0 + 312), type metadata accessor for KeyDropDownloadKeysMetadataResponse);

  v12 = *(v0 + 8);
LABEL_5:

  return v12();
}

uint64_t sub_100C839EC()
{
  v50 = v0;
  v1 = *(v0 + 504);
  v2 = *(v0 + 464);

  v3 = *(v0 + 568);
  if (qword_101694780 != -1)
  {
    swift_once();
  }

  v4 = *(v0 + 200);
  v5 = *(v0 + 72);
  v6 = type metadata accessor for Logger();
  sub_1000076D4(v6, qword_10177AE40);
  sub_100D11DC8(v5, v4, type metadata accessor for SharingCircleKeyManager.Instruction);
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = *(v0 + 256);
    v10 = *(v0 + 200);
    v11 = *(v0 + 176);
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v49 = v14;
    *v12 = 141558531;
    *(v12 + 4) = 1752392040;
    *(v12 + 12) = 2081;
    v15 = *(v11 + 20);
    sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID);
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    v18 = v17;
    sub_100018D00(v10, type metadata accessor for SharingCircleKeyManager.Instruction);
    v19 = sub_1000136BC(v16, v18, &v49);

    *(v12 + 14) = v19;
    *(v12 + 22) = 2112;
    swift_errorRetain();
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 24) = v20;
    *v13 = v20;
    _os_log_impl(&_mh_execute_header, v7, v8, "Server error downloading keys for imported share %{private,mask.hash}s: %@", v12, 0x20u);
    sub_10000B3A8(v13, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v14);
  }

  else
  {
    v21 = *(v0 + 200);

    sub_100018D00(v21, type metadata accessor for SharingCircleKeyManager.Instruction);
  }

  *(v0 + 40) = v3;
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  if ((swift_dynamicCast() & 1) != 0 && *(v0 + 24) == 1 && *(v0 + 16) > 5uLL)
  {
    v22 = *(v0 + 208);
    v24 = *(v0 + 184);
    v23 = *(v0 + 192);
    v25 = *(v0 + 104);
    v26 = *(v0 + 72);
    v27 = type metadata accessor for TaskPriority();
    (*(*(v27 - 8) + 56))(v25, 1, 1, v27);
    sub_100D11DC8(v26, v22, type metadata accessor for SharingCircleKeyManager.Instruction);
    v28 = (*(v24 + 80) + 32) & ~*(v24 + 80);
    v29 = swift_allocObject();
    *(v29 + 16) = 0;
    *(v29 + 24) = 0;
    sub_100D12974(v22, v29 + v28, type metadata accessor for SharingCircleKeyManager.Instruction);
    sub_100A838D4(0, 0, v25, &unk_1013E3750, v29);
  }

  swift_willThrow();
  sub_100018D00(*(v0 + 312), type metadata accessor for KeyDropDownloadKeysMetadataResponse);
  v31 = *(v0 + 304);
  v30 = *(v0 + 312);
  v33 = *(v0 + 280);
  v32 = *(v0 + 288);
  v34 = *(v0 + 272);
  v35 = *(v0 + 240);
  v36 = *(v0 + 248);
  v38 = *(v0 + 224);
  v37 = *(v0 + 232);
  v39 = *(v0 + 216);
  v42 = *(v0 + 208);
  v43 = *(v0 + 200);
  v44 = *(v0 + 168);
  v45 = *(v0 + 160);
  v46 = *(v0 + 136);
  v47 = *(v0 + 128);
  v48 = *(v0 + 104);

  v40 = *(v0 + 8);

  return v40();
}

uint64_t sub_100C83EF0()
{
  v48 = v0;
  v1 = *(v0 + 376);
  if (qword_101694780 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 200);
  v3 = *(v0 + 72);
  v4 = type metadata accessor for Logger();
  sub_1000076D4(v4, qword_10177AE40);
  sub_100D11DC8(v3, v2, type metadata accessor for SharingCircleKeyManager.Instruction);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 256);
    v8 = *(v0 + 200);
    v9 = *(v0 + 176);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v47 = v12;
    *v10 = 141558531;
    *(v10 + 4) = 1752392040;
    *(v10 + 12) = 2081;
    v13 = *(v9 + 20);
    sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    sub_100018D00(v8, type metadata accessor for SharingCircleKeyManager.Instruction);
    v17 = sub_1000136BC(v14, v16, &v47);

    *(v10 + 14) = v17;
    *(v10 + 22) = 2112;
    swift_errorRetain();
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 24) = v18;
    *v11 = v18;
    _os_log_impl(&_mh_execute_header, v5, v6, "Server error downloading keys for imported share %{private,mask.hash}s: %@", v10, 0x20u);
    sub_10000B3A8(v11, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v12);
  }

  else
  {
    v19 = *(v0 + 200);

    sub_100018D00(v19, type metadata accessor for SharingCircleKeyManager.Instruction);
  }

  *(v0 + 40) = v1;
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  if ((swift_dynamicCast() & 1) != 0 && *(v0 + 24) == 1 && *(v0 + 16) > 5uLL)
  {
    v20 = *(v0 + 208);
    v22 = *(v0 + 184);
    v21 = *(v0 + 192);
    v23 = *(v0 + 104);
    v24 = *(v0 + 72);
    v25 = type metadata accessor for TaskPriority();
    (*(*(v25 - 8) + 56))(v23, 1, 1, v25);
    sub_100D11DC8(v24, v20, type metadata accessor for SharingCircleKeyManager.Instruction);
    v26 = (*(v22 + 80) + 32) & ~*(v22 + 80);
    v27 = swift_allocObject();
    *(v27 + 16) = 0;
    *(v27 + 24) = 0;
    sub_100D12974(v20, v27 + v26, type metadata accessor for SharingCircleKeyManager.Instruction);
    sub_100A838D4(0, 0, v23, &unk_1013E3750, v27);
  }

  swift_willThrow();
  v29 = *(v0 + 304);
  v28 = *(v0 + 312);
  v31 = *(v0 + 280);
  v30 = *(v0 + 288);
  v32 = *(v0 + 272);
  v33 = *(v0 + 240);
  v34 = *(v0 + 248);
  v36 = *(v0 + 224);
  v35 = *(v0 + 232);
  v37 = *(v0 + 216);
  v40 = *(v0 + 208);
  v41 = *(v0 + 200);
  v42 = *(v0 + 168);
  v43 = *(v0 + 160);
  v44 = *(v0 + 136);
  v45 = *(v0 + 128);
  v46 = *(v0 + 104);

  v38 = *(v0 + 8);

  return v38();
}

uint64_t sub_100C843C4()
{
  v48 = v0;
  v1 = *(v0 + 424);
  if (qword_101694780 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 200);
  v3 = *(v0 + 72);
  v4 = type metadata accessor for Logger();
  sub_1000076D4(v4, qword_10177AE40);
  sub_100D11DC8(v3, v2, type metadata accessor for SharingCircleKeyManager.Instruction);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 256);
    v8 = *(v0 + 200);
    v9 = *(v0 + 176);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v47 = v12;
    *v10 = 141558531;
    *(v10 + 4) = 1752392040;
    *(v10 + 12) = 2081;
    v13 = *(v9 + 20);
    sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    sub_100018D00(v8, type metadata accessor for SharingCircleKeyManager.Instruction);
    v17 = sub_1000136BC(v14, v16, &v47);

    *(v10 + 14) = v17;
    *(v10 + 22) = 2112;
    swift_errorRetain();
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 24) = v18;
    *v11 = v18;
    _os_log_impl(&_mh_execute_header, v5, v6, "Server error downloading keys for imported share %{private,mask.hash}s: %@", v10, 0x20u);
    sub_10000B3A8(v11, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v12);
  }

  else
  {
    v19 = *(v0 + 200);

    sub_100018D00(v19, type metadata accessor for SharingCircleKeyManager.Instruction);
  }

  *(v0 + 40) = v1;
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  if ((swift_dynamicCast() & 1) != 0 && *(v0 + 24) == 1 && *(v0 + 16) > 5uLL)
  {
    v20 = *(v0 + 208);
    v22 = *(v0 + 184);
    v21 = *(v0 + 192);
    v23 = *(v0 + 104);
    v24 = *(v0 + 72);
    v25 = type metadata accessor for TaskPriority();
    (*(*(v25 - 8) + 56))(v23, 1, 1, v25);
    sub_100D11DC8(v24, v20, type metadata accessor for SharingCircleKeyManager.Instruction);
    v26 = (*(v22 + 80) + 32) & ~*(v22 + 80);
    v27 = swift_allocObject();
    *(v27 + 16) = 0;
    *(v27 + 24) = 0;
    sub_100D12974(v20, v27 + v26, type metadata accessor for SharingCircleKeyManager.Instruction);
    sub_100A838D4(0, 0, v23, &unk_1013E3750, v27);
  }

  swift_willThrow();
  v29 = *(v0 + 304);
  v28 = *(v0 + 312);
  v31 = *(v0 + 280);
  v30 = *(v0 + 288);
  v32 = *(v0 + 272);
  v33 = *(v0 + 240);
  v34 = *(v0 + 248);
  v36 = *(v0 + 224);
  v35 = *(v0 + 232);
  v37 = *(v0 + 216);
  v40 = *(v0 + 208);
  v41 = *(v0 + 200);
  v42 = *(v0 + 168);
  v43 = *(v0 + 160);
  v44 = *(v0 + 136);
  v45 = *(v0 + 128);
  v46 = *(v0 + 104);

  v38 = *(v0 + 8);

  return v38();
}

uint64_t sub_100C84898()
{
  v48 = v0;
  v1 = *(v0 + 440);
  if (qword_101694780 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 200);
  v3 = *(v0 + 72);
  v4 = type metadata accessor for Logger();
  sub_1000076D4(v4, qword_10177AE40);
  sub_100D11DC8(v3, v2, type metadata accessor for SharingCircleKeyManager.Instruction);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 256);
    v8 = *(v0 + 200);
    v9 = *(v0 + 176);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v47 = v12;
    *v10 = 141558531;
    *(v10 + 4) = 1752392040;
    *(v10 + 12) = 2081;
    v13 = *(v9 + 20);
    sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    sub_100018D00(v8, type metadata accessor for SharingCircleKeyManager.Instruction);
    v17 = sub_1000136BC(v14, v16, &v47);

    *(v10 + 14) = v17;
    *(v10 + 22) = 2112;
    swift_errorRetain();
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 24) = v18;
    *v11 = v18;
    _os_log_impl(&_mh_execute_header, v5, v6, "Server error downloading keys for imported share %{private,mask.hash}s: %@", v10, 0x20u);
    sub_10000B3A8(v11, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v12);
  }

  else
  {
    v19 = *(v0 + 200);

    sub_100018D00(v19, type metadata accessor for SharingCircleKeyManager.Instruction);
  }

  *(v0 + 40) = v1;
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  if ((swift_dynamicCast() & 1) != 0 && *(v0 + 24) == 1 && *(v0 + 16) > 5uLL)
  {
    v20 = *(v0 + 208);
    v22 = *(v0 + 184);
    v21 = *(v0 + 192);
    v23 = *(v0 + 104);
    v24 = *(v0 + 72);
    v25 = type metadata accessor for TaskPriority();
    (*(*(v25 - 8) + 56))(v23, 1, 1, v25);
    sub_100D11DC8(v24, v20, type metadata accessor for SharingCircleKeyManager.Instruction);
    v26 = (*(v22 + 80) + 32) & ~*(v22 + 80);
    v27 = swift_allocObject();
    *(v27 + 16) = 0;
    *(v27 + 24) = 0;
    sub_100D12974(v20, v27 + v26, type metadata accessor for SharingCircleKeyManager.Instruction);
    sub_100A838D4(0, 0, v23, &unk_1013E3750, v27);
  }

  swift_willThrow();
  sub_100018D00(*(v0 + 312), type metadata accessor for KeyDropDownloadKeysMetadataResponse);
  v29 = *(v0 + 304);
  v28 = *(v0 + 312);
  v31 = *(v0 + 280);
  v30 = *(v0 + 288);
  v32 = *(v0 + 272);
  v33 = *(v0 + 240);
  v34 = *(v0 + 248);
  v36 = *(v0 + 224);
  v35 = *(v0 + 232);
  v37 = *(v0 + 216);
  v40 = *(v0 + 208);
  v41 = *(v0 + 200);
  v42 = *(v0 + 168);
  v43 = *(v0 + 160);
  v44 = *(v0 + 136);
  v45 = *(v0 + 128);
  v46 = *(v0 + 104);

  v38 = *(v0 + 8);

  return v38();
}

uint64_t sub_100C84D88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v6 = type metadata accessor for SharingCircleKeyManager.Instruction(0);
  v4[3] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v4[4] = swift_task_alloc();
  v4[5] = swift_task_alloc();
  v8 = *(v6 + 20);
  v9 = swift_task_alloc();
  v4[6] = v9;
  *v9 = v4;
  v9[1] = sub_100C84E8C;

  return sub_1003C1EE0(a4 + v8, 2);
}

uint64_t sub_100C84E8C()
{
  v2 = *(*v1 + 48);
  v3 = *v1;
  v3[7] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100C84FD4, 0, 0);
  }

  else
  {
    v5 = v3[4];
    v4 = v3[5];

    v6 = v3[1];

    return v6();
  }
}

uint64_t sub_100C84FD4()
{
  v35 = v0;
  if (qword_101694780 != -1)
  {
    swift_once();
  }

  v1 = v0[7];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[2];
  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_10177AE40);
  sub_100D11DC8(v4, v3, type metadata accessor for SharingCircleKeyManager.Instruction);
  sub_100D11DC8(v4, v2, type metadata accessor for SharingCircleKeyManager.Instruction);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v33 = v0[7];
    v8 = v0[5];
    v9 = v0[3];
    v30 = v9;
    v31 = v0[4];
    v10 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v34[0] = swift_slowAlloc();
    *v10 = 141559043;
    *(v10 + 4) = 1752392040;
    *(v10 + 12) = 2081;
    v11 = *(v9 + 20);
    type metadata accessor for UUID();
    sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID);
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    v14 = v13;
    sub_100018D00(v8, type metadata accessor for SharingCircleKeyManager.Instruction);
    v15 = sub_1000136BC(v12, v14, v34);

    *(v10 + 14) = v15;
    *(v10 + 22) = 2160;
    *(v10 + 24) = 1752392040;
    *(v10 + 32) = 2081;
    v16 = v31 + *(v30 + 24);
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = v18;
    sub_100018D00(v31, type metadata accessor for SharingCircleKeyManager.Instruction);
    v20 = sub_1000136BC(v17, v19, v34);

    *(v10 + 34) = v20;
    *(v10 + 42) = 2112;
    swift_errorRetain();
    v21 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 44) = v21;
    *v32 = v21;
    _os_log_impl(&_mh_execute_header, v6, v7, "Failed to stop imported share for share identifier %{private,mask.hash}s, beaconIdentifier: %{private,mask.hash}s: %@.", v10, 0x34u);
    sub_10000B3A8(v32, &qword_10169BB30, &unk_10138B3C0);

    swift_arrayDestroy();
  }

  else
  {
    v23 = v0[4];
    v22 = v0[5];

    sub_100018D00(v23, type metadata accessor for SharingCircleKeyManager.Instruction);
    sub_100018D00(v22, type metadata accessor for SharingCircleKeyManager.Instruction);
  }

  v24 = v0[7];
  v25 = v0[4];
  v26 = v0[5];
  swift_willThrow();

  v27 = v0[1];
  v28 = v0[7];

  return v27();
}

uint64_t sub_100C85380(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = type metadata accessor for UUID();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  v6 = type metadata accessor for SymmetricKey256();
  v2[8] = v6;
  v7 = *(v6 - 8);
  v2[9] = v7;
  v8 = *(v7 + 64) + 15;
  v2[10] = swift_task_alloc();
  v9 = *(*(sub_1000BC4D4(&qword_101697610, &unk_10138C4B0) - 8) + 64) + 15;
  v2[11] = swift_task_alloc();
  v10 = type metadata accessor for SharingCircleSecretValue();
  v2[12] = v10;
  v11 = *(v10 - 8);
  v2[13] = v11;
  v12 = *(v11 + 64) + 15;
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v13 = type metadata accessor for SharingCircleSecret();
  v2[18] = v13;
  v14 = *(v13 - 8);
  v2[19] = v14;
  v15 = *(v14 + 64) + 15;
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();

  return _swift_task_switch(sub_100C855BC, v1, 0);
}

uint64_t sub_100C855BC()
{
  v1 = *(*(v0 + 32) + 120);
  *(v0 + 176) = v1;
  return _swift_task_switch(sub_100C855E0, v1, 0);
}

uint64_t sub_100C855E0()
{
  v1 = *(v0 + 176);
  v2 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v3 = swift_task_alloc();
  *(v0 + 184) = v3;
  v4 = type metadata accessor for BeaconKeyManager(0);
  *v3 = v0;
  v3[1] = sub_100C856C0;
  v5 = *(v0 + 176);

  return unsafeBlocking<A>(context:_:)(v0 + 16, 0xD000000000000010, 0x800000010134A8C0, sub_1000D3168, v5, v4);
}

uint64_t sub_100C856C0()
{
  v1 = *(*v0 + 184);
  v2 = *(*v0 + 176);
  v4 = *v0;

  return _swift_task_switch(sub_100C857D8, v2, 0);
}

uint64_t sub_100C857D8()
{
  v1 = v0[4];
  v0[24] = v0[2];
  return _swift_task_switch(sub_100C857FC, v1, 0);
}

uint64_t sub_100C857FC()
{
  v0[25] = *(v0[24] + OBJC_IVAR____TtC12searchpartyd16BeaconKeyManager_keyStore);

  v1 = swift_task_alloc();
  v0[26] = v1;
  *v1 = v0;
  v1[1] = sub_100C858BC;
  v2 = v0[3];

  return sub_10069176C(v2);
}

uint64_t sub_100C858BC(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 208);
  v10 = *v2;
  v3[27] = a1;
  v3[28] = v1;

  if (v1)
  {
    v5 = v3[4];
    v6 = sub_100C861D0;
  }

  else
  {
    v7 = v3[25];
    v8 = v3[4];

    v6 = sub_100C859E4;
    v5 = v8;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100C859E4()
{
  v88 = v0;
  v1 = v0[27];
  if (*(v1 + 16))
  {
    v2 = v0[28];
    v3 = v0[20];
    v4 = v0[21];
    v5 = v0[18];
    v6 = v0[11];
    v7 = *(v0[19] + 80);
    sub_100D11DC8(v1 + ((v7 + 32) & ~v7), v3, type metadata accessor for SharingCircleSecret);

    sub_100D12974(v3, v4, type metadata accessor for SharingCircleSecret);
    v8 = (v4 + *(v5 + 32));
    v9 = *v8;
    v10 = v8[1];
    v11 = (v4 + *(v5 + 28));
    v12 = *v11;
    v13 = v11[1];
    sub_100017D5C(*v8, v10);

    sub_101316078(v9, v10, v12, v13, v6);
    v14 = v2;
    v15 = v0[17];
    v16 = v0[12];
    v17 = v0[13];
    v18 = v0[11];
    if (v14)
    {

      (*(v17 + 56))(v18, 1, 1, v16);
      v19 = *v8;
      v20 = v8[1];
      *v15 = *v8;
      v15[1] = v20;
      swift_storeEnumTagMultiPayload();
      sub_100017D5C(v19, v20);
    }

    else
    {
      (*(v17 + 56))(v0[11], 0, 1, v0[12]);
      sub_100D12974(v18, v15, type metadata accessor for SharingCircleSecretValue);
    }

    if (qword_101694780 != -1)
    {
      swift_once();
    }

    v24 = v0[16];
    v23 = v0[17];
    v25 = type metadata accessor for Logger();
    sub_1000076D4(v25, qword_10177AE40);
    sub_100D11DC8(v23, v24, type metadata accessor for SharingCircleSecretValue);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();
    v28 = os_log_type_enabled(v26, v27);
    v29 = v0[16];
    if (v28)
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v87[0] = v31;
      *v30 = 136315138;
      v32 = sub_101315964();
      v34 = v33;
      sub_100018D00(v29, type metadata accessor for SharingCircleSecretValue);
      v35 = sub_1000136BC(v32, v34, v87);

      *(v30 + 4) = v35;
      _os_log_impl(&_mh_execute_header, v26, v27, "Reading decryption key for imported share for secret value type string %s", v30, 0xCu);
      sub_100007BAC(v31);
    }

    else
    {

      sub_100018D00(v29, type metadata accessor for SharingCircleSecretValue);
    }

    v36 = v0[12];
    sub_100D11DC8(v0[17], v0[15], type metadata accessor for SharingCircleSecretValue);
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      v38 = v0[20];
      v37 = v0[21];
      v40 = v0[16];
      v39 = v0[17];
      v41 = v0[14];
      v42 = v0[10];
      v43 = v0[8];
      v44 = v0[9];
      v85 = v0[11];
      v86 = v0[7];
      (*(v44 + 32))(v42, v0[15], v43);
      v45 = SymmetricKey256.data.getter();
      v83 = v46;
      v84 = v45;
      (*(v44 + 8))(v42, v43);
      sub_100018D00(v39, type metadata accessor for SharingCircleSecretValue);
      sub_100018D00(v37, type metadata accessor for SharingCircleSecret);

      v47 = v0[1];

      return v47(v84, v83);
    }

    v50 = v0[6];
    v49 = v0[7];
    v51 = v0[5];
    v52 = v0[3];
    sub_100D11DC8(v0[17], v0[14], type metadata accessor for SharingCircleSecretValue);
    (*(v50 + 16))(v49, v52, v51);
    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.error.getter();
    v55 = os_log_type_enabled(v53, v54);
    v56 = v0[14];
    v57 = v0[6];
    v58 = v0[7];
    v59 = v0[5];
    if (v55)
    {
      v60 = swift_slowAlloc();
      v87[0] = swift_slowAlloc();
      *v60 = 136315651;
      v61 = sub_101315964();
      v63 = v62;
      sub_100018D00(v56, type metadata accessor for SharingCircleSecretValue);
      v64 = sub_1000136BC(v61, v63, v87);

      *(v60 + 4) = v64;
      *(v60 + 12) = 2160;
      *(v60 + 14) = 1752392040;
      *(v60 + 22) = 2081;
      sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID);
      v65 = dispatch thunk of CustomStringConvertible.description.getter();
      v67 = v66;
      (*(v57 + 8))(v58, v59);
      v68 = sub_1000136BC(v65, v67, v87);

      *(v60 + 24) = v68;
      _os_log_impl(&_mh_execute_header, v53, v54, "Incompatible secret value type string %s for importing\nshare-id: %{private,mask.hash}s.", v60, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v57 + 8))(v58, v59);
      sub_100018D00(v56, type metadata accessor for SharingCircleSecretValue);
    }

    v69 = v0[21];
    v70 = v0[17];
    v71 = v0[15];
    sub_1001BAEE0();
    swift_allocError();
    *v72 = 17;
    swift_willThrow();
    sub_100018D00(v70, type metadata accessor for SharingCircleSecretValue);
    sub_100018D00(v69, type metadata accessor for SharingCircleSecret);
    sub_100018D00(v71, type metadata accessor for SharingCircleSecretValue);
  }

  else
  {
    v21 = v0[27];

    sub_1001BAEE0();
    swift_allocError();
    *v22 = 28;
    swift_willThrow();
  }

  v74 = v0[20];
  v73 = v0[21];
  v76 = v0[16];
  v75 = v0[17];
  v78 = v0[14];
  v77 = v0[15];
  v80 = v0[10];
  v79 = v0[11];
  v81 = v0[7];

  v82 = v0[1];

  return v82();
}

uint64_t sub_100C861D0()
{
  v1 = v0[25];

  v2 = v0[28];
  v4 = v0[20];
  v3 = v0[21];
  v6 = v0[16];
  v5 = v0[17];
  v8 = v0[14];
  v7 = v0[15];
  v10 = v0[10];
  v9 = v0[11];
  v11 = v0[7];

  v12 = v0[1];

  return v12();
}

uint64_t sub_100C862AC(uint64_t a1)
{
  v2[29] = a1;
  v2[30] = v1;
  v3 = *(type metadata accessor for KeyDropInterface.KeyPackage(0) - 8);
  v2[31] = v3;
  v4 = *(v3 + 64) + 15;
  v2[32] = swift_task_alloc();
  v2[33] = swift_task_alloc();
  v2[34] = swift_task_alloc();
  v2[35] = swift_task_alloc();
  v5 = type metadata accessor for KeyDropDownloadResponse(0);
  v2[36] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v2[37] = swift_task_alloc();
  v2[38] = swift_task_alloc();
  v7 = *(*(sub_1000BC4D4(&qword_1016B9AF8, &unk_1013E35F8) - 8) + 64) + 15;
  v2[39] = swift_task_alloc();
  v8 = type metadata accessor for KeyDropJoinToken(0);
  v2[40] = v8;
  v9 = *(v8 - 8);
  v2[41] = v9;
  v10 = *(v9 + 64) + 15;
  v2[42] = swift_task_alloc();
  v2[43] = swift_task_alloc();
  v11 = type metadata accessor for SharingCircleKeyManager.Instruction(0);
  v2[44] = v11;
  v12 = *(v11 - 8);
  v2[45] = v12;
  v13 = *(v12 + 64) + 15;
  v2[46] = swift_task_alloc();
  v2[47] = swift_task_alloc();
  v2[48] = swift_task_alloc();
  v2[49] = swift_task_alloc();
  v2[50] = swift_task_alloc();
  v2[51] = swift_task_alloc();
  v2[52] = swift_task_alloc();
  v2[53] = swift_task_alloc();
  v2[54] = swift_task_alloc();
  v2[55] = swift_task_alloc();
  v2[56] = swift_task_alloc();
  v2[57] = swift_task_alloc();
  v2[58] = swift_task_alloc();
  v2[59] = swift_task_alloc();
  v2[60] = swift_task_alloc();
  v2[61] = swift_task_alloc();
  v2[62] = swift_task_alloc();

  return _swift_task_switch(sub_100C86584, v1, 0);
}

uint64_t sub_100C86584()
{
  v71 = v0;
  v1 = *(v0 + 232);
  v2 = *(v1 + 16);
  *(v0 + 504) = v2;
  if (v2)
  {
    v3 = *(v0 + 360);
    v4 = *(v3 + 80);
    *(v0 + 736) = v4;
    *(v0 + 512) = *(v3 + 72);
    *(v0 + 528) = _swiftEmptyArrayStorage;
    *(v0 + 520) = 0;
    sub_100D11DC8(v1 + ((v4 + 32) & ~v4), *(v0 + 496), type metadata accessor for SharingCircleKeyManager.Instruction);
    if (qword_101694DF8 != -1)
    {
      swift_once();
    }

    v5 = *(v0 + 488);
    v6 = *(v0 + 496);
    v8 = *(v0 + 472);
    v7 = *(v0 + 480);
    v9 = type metadata accessor for Logger();
    *(v0 + 536) = v9;
    *(v0 + 544) = sub_1000076D4(v9, qword_10177BF08);
    sub_100D11DC8(v6, v5, type metadata accessor for SharingCircleKeyManager.Instruction);
    sub_100D11DC8(v6, v7, type metadata accessor for SharingCircleKeyManager.Instruction);
    sub_100D11DC8(v6, v8, type metadata accessor for SharingCircleKeyManager.Instruction);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    v12 = os_log_type_enabled(v10, v11);
    v14 = *(v0 + 480);
    v13 = *(v0 + 488);
    v15 = *(v0 + 472);
    if (v12)
    {
      v16 = *(v0 + 352);
      v65 = v16;
      v67 = v11;
      v17 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      *v17 = 136447235;
      v18 = sub_100C71778();
      v20 = v19;
      sub_100018D00(v13, type metadata accessor for SharingCircleKeyManager.Instruction);
      v21 = sub_1000136BC(v18, v20, &v70);

      *(v17 + 4) = v21;
      *(v17 + 12) = 2160;
      *(v17 + 14) = 1752392040;
      *(v17 + 22) = 2081;
      v22 = *(v16 + 20);
      type metadata accessor for UUID();
      sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID);
      v23 = dispatch thunk of CustomStringConvertible.description.getter();
      v25 = v24;
      sub_100018D00(v14, type metadata accessor for SharingCircleKeyManager.Instruction);
      v26 = sub_1000136BC(v23, v25, &v70);

      *(v17 + 24) = v26;
      *(v17 + 32) = 2160;
      *(v17 + 34) = 1752392040;
      *(v17 + 42) = 2081;
      v27 = v15 + *(v65 + 24);
      v28 = dispatch thunk of CustomStringConvertible.description.getter();
      v30 = v29;
      sub_100018D00(v15, type metadata accessor for SharingCircleKeyManager.Instruction);
      v31 = sub_1000136BC(v28, v30, &v70);

      *(v17 + 44) = v31;
      _os_log_impl(&_mh_execute_header, v10, v67, "Download keys: %{public}s,\nshare-id: %{private,mask.hash}s,\nbeacon-id: %{private,mask.hash}s.", v17, 0x34u);
      swift_arrayDestroy();
    }

    else
    {

      sub_100018D00(v15, type metadata accessor for SharingCircleKeyManager.Instruction);
      sub_100018D00(v14, type metadata accessor for SharingCircleKeyManager.Instruction);
      sub_100018D00(v13, type metadata accessor for SharingCircleKeyManager.Instruction);
    }

    v44 = *(v0 + 496);
    v45 = *(v0 + 352);
    v46 = *(v44 + *(v45 + 36));
    *(v0 + 744) = v46;
    v47 = *(v45 + 20);
    if (v46 == 5)
    {
      v48 = swift_task_alloc();
      *(v0 + 552) = v48;
      *v48 = v0;
      v48[1] = sub_100C86BB4;
      v49 = *(v0 + 240);

      return sub_100C85380(v44 + v47);
    }

    else
    {
      v50 = swift_task_alloc();
      *(v0 + 584) = v50;
      *v50 = v0;
      v50[1] = sub_100C87600;
      v51 = *(v0 + 240);

      return sub_100C7BA0C(v0 + 16, v44 + v47);
    }
  }

  else
  {
    v33 = *(v0 + 488);
    v32 = *(v0 + 496);
    v35 = *(v0 + 472);
    v34 = *(v0 + 480);
    v36 = *(v0 + 456);
    v37 = *(v0 + 464);
    v39 = *(v0 + 440);
    v38 = *(v0 + 448);
    v41 = *(v0 + 424);
    v40 = *(v0 + 432);
    v52 = *(v0 + 416);
    v53 = *(v0 + 408);
    v54 = *(v0 + 400);
    v55 = *(v0 + 392);
    v56 = *(v0 + 384);
    v57 = *(v0 + 376);
    v58 = *(v0 + 368);
    v59 = *(v0 + 344);
    v60 = *(v0 + 336);
    v61 = *(v0 + 312);
    v62 = *(v0 + 304);
    v63 = *(v0 + 296);
    v64 = *(v0 + 280);
    v66 = *(v0 + 272);
    v68 = *(v0 + 264);
    v69 = *(v0 + 256);

    v42 = *(v0 + 8);

    return v42(_swiftEmptyArrayStorage);
  }
}

uint64_t sub_100C86BB4(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v6 = *(*v3 + 552);
  v7 = *v3;
  v5[70] = a1;
  v5[71] = a2;
  v5[72] = v2;

  v8 = v4[30];
  if (v2)
  {
    v9 = sub_100C8B0C8;
  }

  else
  {
    v9 = sub_100C86CF0;
  }

  return _swift_task_switch(v9, v8, 0);
}

void sub_100C86CF0()
{
  v103 = v0;
  v1 = *(v0 + 568);
  v2 = v1 >> 62;
  if ((v1 >> 62) <= 1)
  {
    if (!v2)
    {
      if (BYTE6(v1) != 32)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }

    goto LABEL_12;
  }

  if (v2 != 2)
  {
    v7 = 0;
    goto LABEL_23;
  }

  v8 = *(v0 + 560);
  v10 = *(v8 + 16);
  v9 = *(v8 + 24);
  v11 = v9 - v10;
  if (__OFSUB__(v9, v10))
  {
    __break(1u);
LABEL_12:
    v8 = *(v0 + 560);
    if (__OFSUB__(HIDWORD(v8), v8))
    {
      __break(1u);
      goto LABEL_43;
    }

    v11 = HIDWORD(v8) - v8;
  }

  sub_100017D5C(v8, v1);
  if (v11 != 32)
  {
LABEL_4:
    if (v2 == 2)
    {
      v20 = *(*(v0 + 560) + 16);
      v21 = *(*(v0 + 560) + 24);
      v7 = v21 - v20;
      if (!__OFSUB__(v21, v20))
      {
LABEL_23:
        v22 = *(v0 + 568);
        v23 = *(v0 + 560);
        sub_100018350();
        swift_allocError();
        *v24 = 32;
        *(v24 + 8) = v7;
        *(v24 + 16) = 0;
        swift_willThrow();
        sub_100016590(v23, v22);
        v25 = *(v0 + 568);
        v26 = *(v0 + 560);
        v27 = *(v0 + 544);
        swift_errorRetain();
        v28 = Logger.logObject.getter();
        v29 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v28, v29))
        {
          v30 = swift_slowAlloc();
          v31 = swift_slowAlloc();
          *v30 = 138412290;
          swift_errorRetain();
          v32 = _swift_stdlib_bridgeErrorToNSError();
          *(v30 + 4) = v32;
          *v31 = v32;
          _os_log_impl(&_mh_execute_header, v28, v29, "Failed to read circleSharedSecret %@.", v30, 0xCu);
          sub_10000B3A8(v31, &qword_10169BB30, &unk_10138B3C0);
        }

        else
        {
        }

        sub_100016590(v26, v25);
        v33 = *(v0 + 528);
        v34 = *(v0 + 504);
        v35 = *(v0 + 520) + 1;
        sub_100018D00(*(v0 + 496), type metadata accessor for SharingCircleKeyManager.Instruction);
        if (v35 == v34)
        {
          v37 = *(v0 + 488);
          v36 = *(v0 + 496);
          v101 = v33;
          v39 = *(v0 + 472);
          v38 = *(v0 + 480);
          v41 = *(v0 + 456);
          v40 = *(v0 + 464);
          v42 = *(v0 + 440);
          v43 = *(v0 + 448);
          v45 = *(v0 + 424);
          v44 = *(v0 + 432);
          v83 = *(v0 + 416);
          v84 = *(v0 + 408);
          v85 = *(v0 + 400);
          v86 = *(v0 + 392);
          v87 = *(v0 + 384);
          v88 = *(v0 + 376);
          v89 = *(v0 + 368);
          v90 = *(v0 + 344);
          v91 = *(v0 + 336);
          v92 = *(v0 + 312);
          v93 = *(v0 + 304);
          v94 = *(v0 + 296);
          v95 = *(v0 + 280);
          v96 = *(v0 + 272);
          v97 = *(v0 + 264);
          v99 = *(v0 + 256);

          v46 = *(v0 + 8);

          v46(v101);
        }

        else
        {
          v47 = *(v0 + 520) + 1;
          *(v0 + 528) = v33;
          *(v0 + 520) = v47;
          sub_100D11DC8(*(v0 + 232) + ((*(v0 + 736) + 32) & ~*(v0 + 736)) + *(v0 + 512) * v47, *(v0 + 496), type metadata accessor for SharingCircleKeyManager.Instruction);
          if (qword_101694DF8 != -1)
          {
            swift_once();
          }

          v48 = *(v0 + 488);
          v49 = *(v0 + 496);
          v51 = *(v0 + 472);
          v50 = *(v0 + 480);
          v52 = type metadata accessor for Logger();
          *(v0 + 536) = v52;
          *(v0 + 544) = sub_1000076D4(v52, qword_10177BF08);
          sub_100D11DC8(v49, v48, type metadata accessor for SharingCircleKeyManager.Instruction);
          sub_100D11DC8(v49, v50, type metadata accessor for SharingCircleKeyManager.Instruction);
          sub_100D11DC8(v49, v51, type metadata accessor for SharingCircleKeyManager.Instruction);
          v53 = Logger.logObject.getter();
          v54 = static os_log_type_t.default.getter();
          v55 = os_log_type_enabled(v53, v54);
          v57 = *(v0 + 480);
          v56 = *(v0 + 488);
          v58 = *(v0 + 472);
          if (v55)
          {
            v59 = *(v0 + 352);
            v98 = v59;
            v100 = v54;
            v60 = swift_slowAlloc();
            v102[0] = swift_slowAlloc();
            *v60 = 136447235;
            v61 = sub_100C71778();
            v63 = v62;
            sub_100018D00(v56, type metadata accessor for SharingCircleKeyManager.Instruction);
            v64 = sub_1000136BC(v61, v63, v102);

            *(v60 + 4) = v64;
            *(v60 + 12) = 2160;
            *(v60 + 14) = 1752392040;
            *(v60 + 22) = 2081;
            v65 = *(v59 + 20);
            type metadata accessor for UUID();
            sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID);
            v66 = dispatch thunk of CustomStringConvertible.description.getter();
            v68 = v67;
            sub_100018D00(v57, type metadata accessor for SharingCircleKeyManager.Instruction);
            v69 = sub_1000136BC(v66, v68, v102);

            *(v60 + 24) = v69;
            *(v60 + 32) = 2160;
            *(v60 + 34) = 1752392040;
            *(v60 + 42) = 2081;
            v70 = v58 + *(v98 + 24);
            v71 = dispatch thunk of CustomStringConvertible.description.getter();
            v73 = v72;
            sub_100018D00(v58, type metadata accessor for SharingCircleKeyManager.Instruction);
            v74 = sub_1000136BC(v71, v73, v102);

            *(v60 + 44) = v74;
            _os_log_impl(&_mh_execute_header, v53, v100, "Download keys: %{public}s,\nshare-id: %{private,mask.hash}s,\nbeacon-id: %{private,mask.hash}s.", v60, 0x34u);
            swift_arrayDestroy();
          }

          else
          {

            sub_100018D00(v58, type metadata accessor for SharingCircleKeyManager.Instruction);
            sub_100018D00(v57, type metadata accessor for SharingCircleKeyManager.Instruction);
            sub_100018D00(v56, type metadata accessor for SharingCircleKeyManager.Instruction);
          }

          v75 = *(v0 + 496);
          v76 = *(v0 + 352);
          v77 = *(v75 + *(v76 + 36));
          *(v0 + 744) = v77;
          v78 = *(v76 + 20);
          if (v77 == 5)
          {
            v79 = swift_task_alloc();
            *(v0 + 552) = v79;
            *v79 = v0;
            v79[1] = sub_100C86BB4;
            v80 = *(v0 + 240);

            sub_100C85380(v75 + v78);
          }

          else
          {
            v81 = swift_task_alloc();
            *(v0 + 584) = v81;
            *v81 = v0;
            v81[1] = sub_100C87600;
            v82 = *(v0 + 240);

            sub_100C7BA0C(v0 + 16, v75 + v78);
          }
        }

        return;
      }

      __break(1u);
    }

    else if (v2 == 1)
    {
      v3 = *(v0 + 560);
      v4 = *(v0 + 564);
      v5 = __OFSUB__(v4, v3);
      v6 = v4 - v3;
      if (!v5)
      {
        v7 = v6;
        goto LABEL_23;
      }

LABEL_43:
      __break(1u);
      return;
    }

    v7 = *(v0 + 574);
    goto LABEL_23;
  }

LABEL_15:
  v12 = *(v0 + 528);
  v13 = *(v0 + 344);
  v14 = *(v0 + 320);
  UUID.init()();
  *(v13 + *(v14 + 20)) = xmmword_10138C660;

  v15 = *(v0 + 568);
  v16 = *(v0 + 560);
  *(v0 + 624) = v16;
  *(v0 + 616) = v15;
  v17 = swift_task_alloc();
  *(v0 + 632) = v17;
  *v17 = v0;
  v17[1] = sub_100C88500;
  v18 = *(v0 + 496);
  v19 = *(v0 + 240);

  sub_100C7EC04(v18, v16, v15);
}

uint64_t sub_100C87600()
{
  v2 = *v1;
  v3 = *(*v1 + 584);
  v4 = *v1;
  *(*v1 + 592) = v0;

  v5 = *(v2 + 240);
  if (v0)
  {
    v6 = sub_100C8B804;
  }

  else
  {
    v6 = sub_100C8772C;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100C8772C()
{
  v127 = v0;
  *(v0 + 152) = *(v0 + 16);
  v1 = *(v0 + 152);
  v2 = *(v0 + 160);
  *(v0 + 600) = v1;
  *(v0 + 608) = v2;
  if (v2 >> 60 == 15)
  {
    v3 = *(v0 + 544);
    sub_100D11DC8(*(v0 + 496), *(v0 + 464), type metadata accessor for SharingCircleKeyManager.Instruction);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    v6 = os_log_type_enabled(v4, v5);
    v7 = *(v0 + 464);
    if (v6)
    {
      v8 = *(v0 + 352);
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v126[0] = v10;
      *v9 = 141558275;
      *(v9 + 4) = 1752392040;
      *(v9 + 12) = 2081;
      v11 = *(v8 + 20);
      type metadata accessor for UUID();
      sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID);
      v12 = dispatch thunk of CustomStringConvertible.description.getter();
      v14 = v13;
      sub_100018D00(v7, type metadata accessor for SharingCircleKeyManager.Instruction);
      v15 = sub_1000136BC(v12, v14, v126);

      *(v9 + 14) = v15;
      _os_log_impl(&_mh_execute_header, v4, v5, "No circleSharedSecret found for shareId: %{private,mask.hash}s.", v9, 0x16u);
      sub_100007BAC(v10);

      sub_1001BAF34(v0 + 16);
    }

    else
    {
      sub_1001BAF34(v0 + 16);

      sub_100018D00(v7, type metadata accessor for SharingCircleKeyManager.Instruction);
    }

    goto LABEL_14;
  }

  v124 = v1;
  v16 = *(v0 + 592);
  v17 = *(v0 + 496);
  v19 = *(v0 + 320);
  v18 = *(v0 + 328);
  v20 = *(v0 + 312);
  v21 = *(v0 + 48);
  *(swift_task_alloc() + 16) = v17;
  sub_1000D2A70(v0 + 152, v0 + 168, &qword_1016977A8, &qword_1013D6820);
  sub_1000D2A70(v0 + 152, v0 + 184, &qword_1016977A8, &qword_1013D6820);

  sub_1012BB600(sub_100D1377C, v21, v20);

  if ((*(v18 + 48))(v20, 1, v19) == 1)
  {
    v22 = *(v0 + 544);
    v23 = *(v0 + 496);
    v25 = *(v0 + 448);
    v24 = *(v0 + 456);
    sub_10000B3A8(*(v0 + 312), &qword_1016B9AF8, &unk_1013E35F8);
    sub_100D11DC8(v23, v24, type metadata accessor for SharingCircleKeyManager.Instruction);
    sub_100D11DC8(v23, v25, type metadata accessor for SharingCircleKeyManager.Instruction);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();
    v28 = os_log_type_enabled(v26, v27);
    v29 = *(v0 + 448);
    v30 = *(v0 + 456);
    if (v28)
    {
      v31 = *(v0 + 352);
      v32 = swift_slowAlloc();
      v126[0] = swift_slowAlloc();
      *v32 = 141558787;
      *(v32 + 4) = 1752392040;
      *(v32 + 12) = 2081;
      v121 = v27;
      v33 = *(v31 + 20);
      type metadata accessor for UUID();
      sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID);
      v34 = dispatch thunk of CustomStringConvertible.description.getter();
      v36 = v35;
      sub_100018D00(v30, type metadata accessor for SharingCircleKeyManager.Instruction);
      v37 = sub_1000136BC(v34, v36, v126);

      *(v32 + 14) = v37;
      *(v32 + 22) = 2160;
      *(v32 + 24) = 1752392040;
      *(v32 + 32) = 2081;
      v38 = v29 + *(v31 + 28);
      v39 = dispatch thunk of CustomStringConvertible.description.getter();
      v41 = v40;
      sub_100018D00(v29, type metadata accessor for SharingCircleKeyManager.Instruction);
      v42 = sub_1000136BC(v39, v41, v126);

      *(v32 + 34) = v42;
      _os_log_impl(&_mh_execute_header, v26, v121, "No joinTokens found for shareId: %{private,mask.hash}s,\nmemberId: %{private,mask.hash}s.", v32, 0x2Au);
      swift_arrayDestroy();

      sub_10000B3A8(v0 + 152, &qword_1016977A8, &qword_1013D6820);

      sub_1001BAF34(v0 + 16);
    }

    else
    {

      sub_10000B3A8(v0 + 152, &qword_1016977A8, &qword_1013D6820);
      sub_1001BAF34(v0 + 16);
      sub_100018D00(v29, type metadata accessor for SharingCircleKeyManager.Instruction);
      sub_100018D00(v30, type metadata accessor for SharingCircleKeyManager.Instruction);
    }

    sub_10000B3A8(v0 + 152, &qword_1016977A8, &qword_1013D6820);
LABEL_14:
    v52 = *(v0 + 528);
    v53 = *(v0 + 504);
    v54 = *(v0 + 520) + 1;
    sub_100018D00(*(v0 + 496), type metadata accessor for SharingCircleKeyManager.Instruction);
    if (v54 == v53)
    {
      v56 = *(v0 + 488);
      v55 = *(v0 + 496);
      v125 = v52;
      v58 = *(v0 + 472);
      v57 = *(v0 + 480);
      v60 = *(v0 + 456);
      v59 = *(v0 + 464);
      v61 = *(v0 + 440);
      v62 = *(v0 + 448);
      v64 = *(v0 + 424);
      v63 = *(v0 + 432);
      v105 = *(v0 + 416);
      v106 = *(v0 + 408);
      v107 = *(v0 + 400);
      v108 = *(v0 + 392);
      v109 = *(v0 + 384);
      v110 = *(v0 + 376);
      v111 = *(v0 + 368);
      v112 = *(v0 + 344);
      v113 = *(v0 + 336);
      v114 = *(v0 + 312);
      v115 = *(v0 + 304);
      v116 = *(v0 + 296);
      v117 = *(v0 + 280);
      v118 = *(v0 + 272);
      v119 = *(v0 + 264);
      v122 = *(v0 + 256);

      v65 = *(v0 + 8);

      return v65(v125);
    }

    else
    {
      v66 = *(v0 + 520) + 1;
      *(v0 + 528) = v52;
      *(v0 + 520) = v66;
      sub_100D11DC8(*(v0 + 232) + ((*(v0 + 736) + 32) & ~*(v0 + 736)) + *(v0 + 512) * v66, *(v0 + 496), type metadata accessor for SharingCircleKeyManager.Instruction);
      if (qword_101694DF8 != -1)
      {
        swift_once();
      }

      v67 = *(v0 + 488);
      v68 = *(v0 + 496);
      v70 = *(v0 + 472);
      v69 = *(v0 + 480);
      v71 = type metadata accessor for Logger();
      *(v0 + 536) = v71;
      *(v0 + 544) = sub_1000076D4(v71, qword_10177BF08);
      sub_100D11DC8(v68, v67, type metadata accessor for SharingCircleKeyManager.Instruction);
      sub_100D11DC8(v68, v69, type metadata accessor for SharingCircleKeyManager.Instruction);
      sub_100D11DC8(v68, v70, type metadata accessor for SharingCircleKeyManager.Instruction);
      v72 = Logger.logObject.getter();
      v73 = static os_log_type_t.default.getter();
      v74 = os_log_type_enabled(v72, v73);
      v76 = *(v0 + 480);
      v75 = *(v0 + 488);
      v77 = *(v0 + 472);
      if (v74)
      {
        v78 = *(v0 + 352);
        v120 = v78;
        v123 = v73;
        v79 = swift_slowAlloc();
        v126[0] = swift_slowAlloc();
        *v79 = 136447235;
        v80 = sub_100C71778();
        v82 = v81;
        sub_100018D00(v75, type metadata accessor for SharingCircleKeyManager.Instruction);
        v83 = sub_1000136BC(v80, v82, v126);

        *(v79 + 4) = v83;
        *(v79 + 12) = 2160;
        *(v79 + 14) = 1752392040;
        *(v79 + 22) = 2081;
        v84 = *(v78 + 20);
        type metadata accessor for UUID();
        sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID);
        v85 = dispatch thunk of CustomStringConvertible.description.getter();
        v87 = v86;
        sub_100018D00(v76, type metadata accessor for SharingCircleKeyManager.Instruction);
        v88 = sub_1000136BC(v85, v87, v126);

        *(v79 + 24) = v88;
        *(v79 + 32) = 2160;
        *(v79 + 34) = 1752392040;
        *(v79 + 42) = 2081;
        v89 = v77 + *(v120 + 24);
        v90 = dispatch thunk of CustomStringConvertible.description.getter();
        v92 = v91;
        sub_100018D00(v77, type metadata accessor for SharingCircleKeyManager.Instruction);
        v93 = sub_1000136BC(v90, v92, v126);

        *(v79 + 44) = v93;
        _os_log_impl(&_mh_execute_header, v72, v123, "Download keys: %{public}s,\nshare-id: %{private,mask.hash}s,\nbeacon-id: %{private,mask.hash}s.", v79, 0x34u);
        swift_arrayDestroy();
      }

      else
      {

        sub_100018D00(v77, type metadata accessor for SharingCircleKeyManager.Instruction);
        sub_100018D00(v76, type metadata accessor for SharingCircleKeyManager.Instruction);
        sub_100018D00(v75, type metadata accessor for SharingCircleKeyManager.Instruction);
      }

      v94 = *(v0 + 496);
      v95 = *(v0 + 352);
      v96 = *(v94 + *(v95 + 36));
      *(v0 + 744) = v96;
      v97 = *(v95 + 20);
      if (v96 == 5)
      {
        v98 = swift_task_alloc();
        *(v0 + 552) = v98;
        *v98 = v0;
        v98[1] = sub_100C86BB4;
        v99 = *(v0 + 240);

        return sub_100C85380(v94 + v97);
      }

      else
      {
        v100 = swift_task_alloc();
        *(v0 + 584) = v100;
        *v100 = v0;
        v100[1] = sub_100C87600;
        v101 = *(v0 + 240);

        return sub_100C7BA0C(v0 + 16, v94 + v97);
      }
    }
  }

  v43 = *(v0 + 744);
  v45 = *(v0 + 336);
  v44 = *(v0 + 344);
  v46 = *(v0 + 312);
  sub_1001BAF34(v0 + 16);
  sub_100D12974(v46, v45, type metadata accessor for KeyDropJoinToken);
  sub_100D12974(v45, v44, type metadata accessor for KeyDropJoinToken);
  LOBYTE(v45) = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v45)
  {
    v47 = *(v0 + 528);

    *(v0 + 624) = v124;
    *(v0 + 616) = v2;
    v48 = swift_task_alloc();
    *(v0 + 632) = v48;
    *v48 = v0;
    v48[1] = sub_100C88500;
    v49 = *(v0 + 496);
    v50 = *(v0 + 240);

    return sub_100C7EC04(v49, v124, v2);
  }

  else
  {
    v102 = swift_task_alloc();
    *(v0 + 648) = v102;
    *v102 = v0;
    v102[1] = sub_100C88838;
    v103 = *(v0 + 496);
    v104 = *(v0 + 240);

    return sub_100C7DBEC(v103);
  }
}

uint64_t sub_100C88500()
{
  v2 = *v1;
  v3 = *(*v1 + 632);
  v4 = *v1;
  *(*v1 + 640) = v0;

  v5 = *(v2 + 240);
  if (v0)
  {
    v6 = sub_100C8BF40;
  }

  else
  {
    v6 = sub_100C8862C;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100C8862C()
{
  v1 = v0[78];
  v2 = v0[77];
  v3 = v0[62];
  v4 = v0[43];
  sub_100016590(v1, v2);
  sub_100018D00(v4, type metadata accessor for KeyDropJoinToken);
  sub_100016590(v1, v2);
  sub_100018D00(v3, type metadata accessor for SharingCircleKeyManager.Instruction);
  v6 = v0[61];
  v5 = v0[62];
  v8 = v0[59];
  v7 = v0[60];
  v9 = v0[57];
  v10 = v0[58];
  v12 = v0[55];
  v11 = v0[56];
  v14 = v0[53];
  v13 = v0[54];
  v17 = v0[52];
  v18 = v0[51];
  v19 = v0[50];
  v20 = v0[49];
  v21 = v0[48];
  v22 = v0[47];
  v23 = v0[46];
  v24 = v0[43];
  v25 = v0[42];
  v26 = v0[39];
  v27 = v0[38];
  v28 = v0[37];
  v29 = v0[35];
  v30 = v0[34];
  v31 = v0[33];
  v32 = v0[32];

  v15 = v0[1];

  return v15(_swiftEmptyArrayStorage);
}

uint64_t sub_100C88838(uint64_t a1)
{
  v2 = *(*v1 + 648);
  v3 = *(*v1 + 240);
  v5 = *v1;
  *(*v1 + 656) = a1;

  return _swift_task_switch(sub_100C88950, v3, 0);
}

uint64_t sub_100C88950()
{
  v1 = *(v0 + 496);
  v2 = *(v0 + 352);
  v3 = *(*(v0 + 240) + 112);
  v4 = *(v2 + 20);
  v5 = *(v2 + 28);
  v6 = swift_task_alloc();
  *(v0 + 664) = v6;
  *v6 = v0;
  v6[1] = sub_100C88A18;
  v7 = *(v0 + 656);
  v8 = *(v0 + 344);
  v9 = *(v0 + 296);
  v10 = *(v0 + 744);

  return sub_1011AE538(v9, v1 + v4, v1 + v5, v10, v8, v7);
}

uint64_t sub_100C88A18()
{
  v2 = *v1;
  v3 = *(*v1 + 664);
  v4 = *v1;
  v2[84] = v0;

  v5 = v2[82];
  if (v0)
  {
    v6 = v2[66];
    v7 = v2[30];

    v8 = sub_100C8C4B0;
    v9 = v7;
  }

  else
  {
    v10 = v2[30];

    v8 = sub_100C88B70;
    v9 = v10;
  }

  return _swift_task_switch(v8, v9, 0);
}

uint64_t sub_100C88B70()
{
  v164 = v0;
  v1 = *(v0 + 304);
  v2 = *(v0 + 288);
  sub_100D12974(*(v0 + 296), v1, type metadata accessor for KeyDropDownloadResponse);
  v3 = *(v1 + *(v2 + 28));
  *(v0 + 680) = v3;
  v4 = *(v3 + 16);
  *(v0 + 688) = v4;
  if (!v4)
  {
LABEL_32:
    v73 = *(v0 + 528);
    v74 = sub_100D100F8(*(*(v0 + 304) + *(*(v0 + 288) + 24)), *(v0 + 600), *(v0 + 608), *(v0 + 496));
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v76 = *(v0 + 528);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v76 = sub_100A5B9D4(0, *(v76 + 2) + 1, 1, *(v0 + 528));
    }

    v78 = *(v76 + 2);
    v77 = *(v76 + 3);
    if (v78 >= v77 >> 1)
    {
      v76 = sub_100A5B9D4((v77 > 1), v78 + 1, 1, v76);
    }

    v79 = *(v0 + 608);
    v80 = *(v0 + 600);
    v81 = *(v0 + 344);
    v82 = *(v0 + 304);
    sub_100016590(v80, v79);
    sub_100018D00(v81, type metadata accessor for KeyDropJoinToken);
    *(v76 + 2) = v78 + 1;
    *&v76[8 * v78 + 32] = v74;
    sub_100018D00(v82, type metadata accessor for KeyDropDownloadResponse);
    sub_100016590(v80, v79);
    v83 = *(v0 + 504);
    v84 = *(v0 + 520) + 1;
    sub_100018D00(*(v0 + 496), type metadata accessor for SharingCircleKeyManager.Instruction);
    if (v84 == v83)
    {
      v86 = *(v0 + 488);
      v85 = *(v0 + 496);
      v88 = *(v0 + 472);
      v87 = *(v0 + 480);
      v90 = *(v0 + 456);
      v89 = *(v0 + 464);
      v92 = *(v0 + 440);
      v91 = *(v0 + 448);
      v93 = *(v0 + 432);
      v136 = *(v0 + 424);
      v137 = *(v0 + 416);
      v138 = *(v0 + 408);
      v139 = *(v0 + 400);
      v140 = *(v0 + 392);
      v141 = *(v0 + 384);
      v142 = *(v0 + 376);
      v143 = *(v0 + 368);
      v144 = *(v0 + 344);
      v145 = *(v0 + 336);
      v147 = *(v0 + 312);
      v149 = *(v0 + 304);
      *typea = *(v0 + 296);
      v153 = *(v0 + 280);
      v155 = *(v0 + 272);
      v158 = *(v0 + 264);
      v162 = *(v0 + 256);

      v94 = *(v0 + 8);

      return v94(v76);
    }

    else
    {
      v96 = *(v0 + 520) + 1;
      *(v0 + 528) = v76;
      *(v0 + 520) = v96;
      sub_100D11DC8(*(v0 + 232) + ((*(v0 + 736) + 32) & ~*(v0 + 736)) + *(v0 + 512) * v96, *(v0 + 496), type metadata accessor for SharingCircleKeyManager.Instruction);
      if (qword_101694DF8 != -1)
      {
        swift_once();
      }

      v97 = *(v0 + 488);
      v98 = *(v0 + 496);
      v100 = *(v0 + 472);
      v99 = *(v0 + 480);
      v101 = type metadata accessor for Logger();
      *(v0 + 536) = v101;
      *(v0 + 544) = sub_1000076D4(v101, qword_10177BF08);
      sub_100D11DC8(v98, v97, type metadata accessor for SharingCircleKeyManager.Instruction);
      sub_100D11DC8(v98, v99, type metadata accessor for SharingCircleKeyManager.Instruction);
      sub_100D11DC8(v98, v100, type metadata accessor for SharingCircleKeyManager.Instruction);
      v102 = Logger.logObject.getter();
      v103 = static os_log_type_t.default.getter();
      v104 = os_log_type_enabled(v102, v103);
      v106 = *(v0 + 480);
      v105 = *(v0 + 488);
      v107 = *(v0 + 472);
      if (v104)
      {
        v108 = *(v0 + 352);
        v156 = v108;
        v159 = v103;
        v109 = swift_slowAlloc();
        v163[0] = swift_slowAlloc();
        *v109 = 136447235;
        v110 = sub_100C71778();
        v112 = v111;
        sub_100018D00(v105, type metadata accessor for SharingCircleKeyManager.Instruction);
        v113 = sub_1000136BC(v110, v112, v163);

        *(v109 + 4) = v113;
        *(v109 + 12) = 2160;
        *(v109 + 14) = 1752392040;
        *(v109 + 22) = 2081;
        v114 = *(v108 + 20);
        type metadata accessor for UUID();
        sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID);
        v115 = dispatch thunk of CustomStringConvertible.description.getter();
        v117 = v116;
        sub_100018D00(v106, type metadata accessor for SharingCircleKeyManager.Instruction);
        v118 = sub_1000136BC(v115, v117, v163);

        *(v109 + 24) = v118;
        *(v109 + 32) = 2160;
        *(v109 + 34) = 1752392040;
        *(v109 + 42) = 2081;
        v119 = v107 + *(v156 + 24);
        v120 = dispatch thunk of CustomStringConvertible.description.getter();
        v122 = v121;
        sub_100018D00(v107, type metadata accessor for SharingCircleKeyManager.Instruction);
        v123 = sub_1000136BC(v120, v122, v163);

        *(v109 + 44) = v123;
        _os_log_impl(&_mh_execute_header, v102, v159, "Download keys: %{public}s,\nshare-id: %{private,mask.hash}s,\nbeacon-id: %{private,mask.hash}s.", v109, 0x34u);
        swift_arrayDestroy();
      }

      else
      {

        sub_100018D00(v107, type metadata accessor for SharingCircleKeyManager.Instruction);
        sub_100018D00(v106, type metadata accessor for SharingCircleKeyManager.Instruction);
        sub_100018D00(v105, type metadata accessor for SharingCircleKeyManager.Instruction);
      }

      v128 = *(v0 + 496);
      v129 = *(v0 + 352);
      v130 = *(v128 + *(v129 + 36));
      *(v0 + 744) = v130;
      v131 = *(v129 + 20);
      if (v130 == 5)
      {
        v132 = swift_task_alloc();
        *(v0 + 552) = v132;
        *v132 = v0;
        v132[1] = sub_100C86BB4;
        v133 = *(v0 + 240);

        return sub_100C85380(v128 + v131);
      }

      else
      {
        v134 = swift_task_alloc();
        *(v0 + 584) = v134;
        *v134 = v0;
        v134[1] = sub_100C87600;
        v135 = *(v0 + 240);

        return sub_100C7BA0C(v0 + 16, v128 + v131);
      }
    }
  }

  v5 = 0;
  v6 = *(v0 + 248);
  *(v0 + 696) = *(*(v0 + 496) + *(*(v0 + 352) + 32));
  *(v0 + 740) = *(v6 + 80);
  *(v0 + 704) = *(v6 + 72);
  v7 = *(v0 + 672);
  while (1)
  {
    *(v0 + 712) = v5;
    v11 = *(v0 + 696);
    v12 = *(v0 + 280);
    sub_100D11DC8(*(v0 + 680) + ((*(v0 + 740) + 32) & ~*(v0 + 740)) + *(v0 + 704) * v5, v12, type metadata accessor for KeyDropInterface.KeyPackage);
    if ((sub_10111EFE8(*v12, v11) & 1) == 0)
    {
      v53 = *(v0 + 544);
      v54 = *(v0 + 496);
      v55 = *(v0 + 440);
      sub_100D11DC8(*(v0 + 280), *(v0 + 264), type metadata accessor for KeyDropInterface.KeyPackage);
      sub_100D11DC8(v54, v55, type metadata accessor for SharingCircleKeyManager.Instruction);
      v56 = Logger.logObject.getter();
      v57 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v56, v57))
      {
        v58 = *(v0 + 264);
        v59 = swift_slowAlloc();
        *(v0 + 208) = swift_slowAlloc();
        *v59 = 136446723;
        v60 = *v58;
        v61 = 0xE700000000000000;
        v62 = 0x7972616D697270;
        v161 = v7;
        switch(v60)
        {
          case 1:
            v61 = 0xE900000000000079;
            v62 = 0x7261646E6F636573;
            break;
          case 2:
            v62 = 0xD000000000000019;
            v61 = 0x8000000101348160;
            break;
          case 3:
            v62 = 0xD00000000000001BLL;
            v61 = 0x8000000101348180;
            break;
          case 4:
            v61 = 0xEA0000000000656CLL;
            v62 = 0x646E7542646C6977;
            break;
          case 5:
            v62 = 0x417972616D697270;
            v61 = 0xEE00737365726464;
            break;
          case 6:
            v62 = 0xD000000000000010;
            v61 = 0x80000001013481C0;
            break;
          case 7:
            v62 = 0xD000000000000012;
            v61 = 0x80000001013475D0;
            break;
          case 8:
            v62 = 0xD000000000000011;
            v61 = 0x80000001013475F0;
            break;
          case 9:
            v62 = 0x697463656E6E6F63;
            v61 = 0xED000079654B6E6FLL;
            break;
          case 10:
            v62 = 0x656E774F7261656ELL;
            v61 = 0xEC00000079654B72;
            break;
          case 11:
            v61 = 0xE90000000000006ELL;
            v62 = 0x656B6F546E696F6ALL;
            break;
          case 12:
            v62 = 0xD000000000000015;
            v61 = 0x80000001013481F0;
            break;
          case 13:
            v62 = 0xD000000000000010;
            v61 = 0x8000000101348210;
            break;
          case 14:
            v62 = 0x7461636F4C626577;
            v61 = 0xEE0079654B6E6F69;
            break;
          case 15:
            v62 = 0x646174654D626577;
            v61 = 0xEB00000000617461;
            break;
          case 16:
            v62 = 0x6D65744974736F6CLL;
            v61 = 0xED00007365746144;
            break;
          case 17:
            v62 = 0xD000000000000014;
            v61 = 0x8000000101348240;
            break;
          case 18:
            v62 = 0xD000000000000016;
            v61 = 0x8000000101348260;
            break;
          default:
            break;
        }

        v65 = *(v0 + 440);
        v66 = *(v0 + 352);
        v157 = *(v0 + 280);
        sub_100018D00(*(v0 + 264), type metadata accessor for KeyDropInterface.KeyPackage);
        v67 = sub_1000136BC(v62, v61, (v0 + 208));

        *(v59 + 4) = v67;
        *(v59 + 12) = 2160;
        *(v59 + 14) = 1752392040;
        *(v59 + 22) = 2081;
        v68 = *(v66 + 20);
        type metadata accessor for UUID();
        sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID);
        v69 = dispatch thunk of CustomStringConvertible.description.getter();
        v71 = v70;
        sub_100018D00(v65, type metadata accessor for SharingCircleKeyManager.Instruction);
        v72 = sub_1000136BC(v69, v71, (v0 + 208));

        *(v59 + 24) = v72;
        _os_log_impl(&_mh_execute_header, v56, v57, "Received package of type %{public}s\nfor shareId: %{private,mask.hash}s - ignoring unrequested package.", v59, 0x20u);
        swift_arrayDestroy();

        sub_100018D00(v157, type metadata accessor for KeyDropInterface.KeyPackage);
        v7 = v161;
      }

      else
      {
        v8 = *(v0 + 440);
        v9 = *(v0 + 280);
        v10 = *(v0 + 264);

        sub_100018D00(v8, type metadata accessor for SharingCircleKeyManager.Instruction);
        sub_100018D00(v10, type metadata accessor for KeyDropInterface.KeyPackage);
        sub_100018D00(v9, type metadata accessor for KeyDropInterface.KeyPackage);
      }

      goto LABEL_4;
    }

    sub_100CA0FC8(*(v0 + 280), *(v0 + 600), *(v0 + 608), *(v0 + 272));
    if (!v7)
    {
      break;
    }

    v13 = *(v0 + 544);
    v14 = *(v0 + 496);
    v15 = *(v0 + 376);
    v16 = *(v0 + 368);
    v17 = *(v0 + 280);
    v18 = *(v0 + 256);
    sub_100D11DC8(v14, *(v0 + 384), type metadata accessor for SharingCircleKeyManager.Instruction);
    sub_100D11DC8(v14, v15, type metadata accessor for SharingCircleKeyManager.Instruction);
    sub_100D11DC8(v14, v16, type metadata accessor for SharingCircleKeyManager.Instruction);
    sub_100D11DC8(v17, v18, type metadata accessor for KeyDropInterface.KeyPackage);
    swift_errorRetain();
    v19 = Logger.logObject.getter();
    LOBYTE(v13) = static os_log_type_t.error.getter();

    v20 = v13;
    v21 = os_log_type_enabled(v19, v13);
    v23 = *(v0 + 376);
    v22 = *(v0 + 384);
    v24 = *(v0 + 368);
    if (v21)
    {
      v25 = *(v0 + 352);
      v146 = v25;
      v160 = *(v0 + 280);
      v148 = *(v0 + 256);
      v154 = v19;
      v26 = swift_slowAlloc();
      v152 = swift_slowAlloc();
      v163[0] = swift_slowAlloc();
      *v26 = 136448003;
      v27 = sub_100C71778();
      v29 = v28;
      type = v20;
      sub_100018D00(v22, type metadata accessor for SharingCircleKeyManager.Instruction);
      v30 = sub_1000136BC(v27, v29, v163);

      *(v26 + 4) = v30;
      *(v26 + 12) = 2160;
      *(v26 + 14) = 1752392040;
      *(v26 + 22) = 2081;
      v31 = *(v25 + 20);
      type metadata accessor for UUID();
      sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID);
      v32 = dispatch thunk of CustomStringConvertible.description.getter();
      v34 = v33;
      sub_100018D00(v23, type metadata accessor for SharingCircleKeyManager.Instruction);
      v35 = sub_1000136BC(v32, v34, v163);

      *(v26 + 24) = v35;
      *(v26 + 32) = 2160;
      *(v26 + 34) = 1752392040;
      *(v26 + 42) = 2081;
      v36 = v24 + *(v146 + 24);
      v37 = dispatch thunk of CustomStringConvertible.description.getter();
      v39 = v38;
      sub_100018D00(v24, type metadata accessor for SharingCircleKeyManager.Instruction);
      v40 = sub_1000136BC(v37, v39, v163);

      *(v26 + 44) = v40;
      *(v26 + 52) = 2080;
      v41 = sub_10125403C(*v148);
      v43 = v42;
      sub_100018D00(v148, type metadata accessor for KeyDropInterface.KeyPackage);
      v44 = sub_1000136BC(v41, v43, v163);

      *(v26 + 54) = v44;
      *(v26 + 62) = 2082;
      swift_getErrorValue();
      v46 = *(v0 + 104);
      v45 = *(v0 + 112);
      v47 = *(v0 + 120);
      v48 = Error.localizedDescription.getter();
      v50 = sub_1000136BC(v48, v49, v163);

      *(v26 + 64) = v50;
      *(v26 + 72) = 2112;
      swift_errorRetain();
      v51 = _swift_stdlib_bridgeErrorToNSError();
      *(v26 + 74) = v51;
      *v152 = v51;
      _os_log_impl(&_mh_execute_header, v154, type, "Failed to save key package %{public}s,\nsharing-id: %{private,mask.hash}s,\n beacon-id: %{private,mask.hash}s,\npackageType: %s, error: %{public}s. %@.", v26, 0x52u);
      sub_10000B3A8(v152, &qword_10169BB30, &unk_10138B3C0);

      swift_arrayDestroy();

      v52 = v160;
    }

    else
    {
      v63 = *(v0 + 280);
      v64 = *(v0 + 256);

      sub_100018D00(v64, type metadata accessor for KeyDropInterface.KeyPackage);
      sub_100018D00(v24, type metadata accessor for SharingCircleKeyManager.Instruction);
      sub_100018D00(v23, type metadata accessor for SharingCircleKeyManager.Instruction);
      sub_100018D00(v22, type metadata accessor for SharingCircleKeyManager.Instruction);
      v52 = v63;
    }

    sub_100018D00(v52, type metadata accessor for KeyDropInterface.KeyPackage);
    v7 = 0;
LABEL_4:
    v5 = *(v0 + 712) + 1;
    if (v5 == *(v0 + 688))
    {
      goto LABEL_32;
    }
  }

  v124 = swift_task_alloc();
  *(v0 + 720) = v124;
  *v124 = v0;
  v124[1] = sub_100C89DA0;
  v125 = *(v0 + 496);
  v126 = *(v0 + 272);
  v127 = *(v0 + 240);

  return sub_100C8DBA8(v126, v125);
}

uint64_t sub_100C89DA0()
{
  v2 = *v1;
  v3 = *(*v1 + 720);
  v4 = *v1;
  *(*v1 + 728) = v0;

  v5 = *(v2 + 240);
  if (v0)
  {
    v6 = sub_100C8C9D8;
  }

  else
  {
    v6 = sub_100C89ECC;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100C89ECC()
{
  v160 = v0;
  v1 = *(v0 + 280);
  sub_100018D00(*(v0 + 272), type metadata accessor for KeyDropInterface.KeyPackage);
  sub_100018D00(v1, type metadata accessor for KeyDropInterface.KeyPackage);
  v2 = *(v0 + 712) + 1;
  if (v2 == *(v0 + 688))
  {
LABEL_2:
    v3 = *(v0 + 528);
    v4 = sub_100D100F8(*(*(v0 + 304) + *(*(v0 + 288) + 24)), *(v0 + 600), *(v0 + 608), *(v0 + 496));
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v0 + 528);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v6 = sub_100A5B9D4(0, *(v6 + 2) + 1, 1, *(v0 + 528));
    }

    v8 = *(v6 + 2);
    v7 = *(v6 + 3);
    if (v8 >= v7 >> 1)
    {
      v6 = sub_100A5B9D4((v7 > 1), v8 + 1, 1, v6);
    }

    v9 = *(v0 + 608);
    v10 = *(v0 + 600);
    v11 = *(v0 + 344);
    v12 = *(v0 + 304);
    sub_100016590(v10, v9);
    sub_100018D00(v11, type metadata accessor for KeyDropJoinToken);
    *(v6 + 2) = v8 + 1;
    *&v6[8 * v8 + 32] = v4;
    sub_100018D00(v12, type metadata accessor for KeyDropDownloadResponse);
    sub_100016590(v10, v9);
    v13 = *(v0 + 504);
    v14 = *(v0 + 520) + 1;
    sub_100018D00(*(v0 + 496), type metadata accessor for SharingCircleKeyManager.Instruction);
    if (v14 == v13)
    {
      v16 = *(v0 + 488);
      v15 = *(v0 + 496);
      v18 = *(v0 + 472);
      v17 = *(v0 + 480);
      v20 = *(v0 + 456);
      v19 = *(v0 + 464);
      v22 = *(v0 + 440);
      v21 = *(v0 + 448);
      v23 = *(v0 + 432);
      v133 = *(v0 + 424);
      *type = *(v0 + 416);
      v137 = *(v0 + 408);
      v139 = *(v0 + 400);
      v141 = *(v0 + 392);
      v142 = *(v0 + 384);
      v143 = *(v0 + 376);
      v144 = *(v0 + 368);
      v145 = *(v0 + 344);
      v146 = *(v0 + 336);
      v147 = *(v0 + 312);
      v148 = *(v0 + 304);
      v149 = *(v0 + 296);
      v150 = *(v0 + 280);
      v151 = *(v0 + 272);
      v154 = *(v0 + 264);
      v156 = *(v0 + 256);

      v24 = *(v0 + 8);

      return v24(v6);
    }

    else
    {
      v92 = *(v0 + 520) + 1;
      *(v0 + 528) = v6;
      *(v0 + 520) = v92;
      sub_100D11DC8(*(v0 + 232) + ((*(v0 + 736) + 32) & ~*(v0 + 736)) + *(v0 + 512) * v92, *(v0 + 496), type metadata accessor for SharingCircleKeyManager.Instruction);
      if (qword_101694DF8 != -1)
      {
        swift_once();
      }

      v93 = *(v0 + 488);
      v94 = *(v0 + 496);
      v96 = *(v0 + 472);
      v95 = *(v0 + 480);
      v97 = type metadata accessor for Logger();
      *(v0 + 536) = v97;
      *(v0 + 544) = sub_1000076D4(v97, qword_10177BF08);
      sub_100D11DC8(v94, v93, type metadata accessor for SharingCircleKeyManager.Instruction);
      sub_100D11DC8(v94, v95, type metadata accessor for SharingCircleKeyManager.Instruction);
      sub_100D11DC8(v94, v96, type metadata accessor for SharingCircleKeyManager.Instruction);
      v98 = Logger.logObject.getter();
      v99 = static os_log_type_t.default.getter();
      v100 = os_log_type_enabled(v98, v99);
      v102 = *(v0 + 480);
      v101 = *(v0 + 488);
      v103 = *(v0 + 472);
      if (v100)
      {
        v104 = *(v0 + 352);
        v153 = v104;
        v155 = v99;
        v105 = swift_slowAlloc();
        v159[0] = swift_slowAlloc();
        *v105 = 136447235;
        v106 = sub_100C71778();
        v108 = v107;
        sub_100018D00(v101, type metadata accessor for SharingCircleKeyManager.Instruction);
        v109 = sub_1000136BC(v106, v108, v159);

        *(v105 + 4) = v109;
        *(v105 + 12) = 2160;
        *(v105 + 14) = 1752392040;
        *(v105 + 22) = 2081;
        v110 = *(v104 + 20);
        type metadata accessor for UUID();
        sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID);
        v111 = dispatch thunk of CustomStringConvertible.description.getter();
        v113 = v112;
        sub_100018D00(v102, type metadata accessor for SharingCircleKeyManager.Instruction);
        v114 = sub_1000136BC(v111, v113, v159);

        *(v105 + 24) = v114;
        *(v105 + 32) = 2160;
        *(v105 + 34) = 1752392040;
        *(v105 + 42) = 2081;
        v115 = v103 + *(v153 + 24);
        v116 = dispatch thunk of CustomStringConvertible.description.getter();
        v118 = v117;
        sub_100018D00(v103, type metadata accessor for SharingCircleKeyManager.Instruction);
        v119 = sub_1000136BC(v116, v118, v159);

        *(v105 + 44) = v119;
        _os_log_impl(&_mh_execute_header, v98, v155, "Download keys: %{public}s,\nshare-id: %{private,mask.hash}s,\nbeacon-id: %{private,mask.hash}s.", v105, 0x34u);
        swift_arrayDestroy();
      }

      else
      {

        sub_100018D00(v103, type metadata accessor for SharingCircleKeyManager.Instruction);
        sub_100018D00(v102, type metadata accessor for SharingCircleKeyManager.Instruction);
        sub_100018D00(v101, type metadata accessor for SharingCircleKeyManager.Instruction);
      }

      v120 = *(v0 + 496);
      v121 = *(v0 + 352);
      v122 = *(v120 + *(v121 + 36));
      *(v0 + 744) = v122;
      v123 = *(v121 + 20);
      if (v122 == 5)
      {
        v124 = swift_task_alloc();
        *(v0 + 552) = v124;
        *v124 = v0;
        v124[1] = sub_100C86BB4;
        v125 = *(v0 + 240);

        return sub_100C85380(v120 + v123);
      }

      else
      {
        v126 = swift_task_alloc();
        *(v0 + 584) = v126;
        *v126 = v0;
        v126[1] = sub_100C87600;
        v127 = *(v0 + 240);

        return sub_100C7BA0C(v0 + 16, v120 + v123);
      }
    }
  }

  v152 = *(v0 + 728);
  while (1)
  {
    *(v0 + 712) = v2;
    v26 = *(v0 + 696);
    v27 = *(v0 + 280);
    sub_100D11DC8(*(v0 + 680) + ((*(v0 + 740) + 32) & ~*(v0 + 740)) + *(v0 + 704) * v2, v27, type metadata accessor for KeyDropInterface.KeyPackage);
    if ((sub_10111EFE8(*v27, v26) & 1) == 0)
    {
      v28 = *(v0 + 544);
      v29 = *(v0 + 496);
      v30 = *(v0 + 440);
      sub_100D11DC8(*(v0 + 280), *(v0 + 264), type metadata accessor for KeyDropInterface.KeyPackage);
      sub_100D11DC8(v29, v30, type metadata accessor for SharingCircleKeyManager.Instruction);
      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = *(v0 + 264);
        v34 = swift_slowAlloc();
        *(v0 + 208) = swift_slowAlloc();
        *v34 = 136446723;
        v35 = *v33;
        v36 = 0xE700000000000000;
        v37 = 0x7972616D697270;
        switch(v35)
        {
          case 1:
            v36 = 0xE900000000000079;
            v37 = 0x7261646E6F636573;
            break;
          case 2:
            v37 = 0xD000000000000019;
            v36 = 0x8000000101348160;
            break;
          case 3:
            v37 = 0xD00000000000001BLL;
            v36 = 0x8000000101348180;
            break;
          case 4:
            v36 = 0xEA0000000000656CLL;
            v37 = 0x646E7542646C6977;
            break;
          case 5:
            v37 = 0x417972616D697270;
            v36 = 0xEE00737365726464;
            break;
          case 6:
            v37 = 0xD000000000000010;
            v36 = 0x80000001013481C0;
            break;
          case 7:
            v37 = 0xD000000000000012;
            v36 = 0x80000001013475D0;
            break;
          case 8:
            v37 = 0xD000000000000011;
            v36 = 0x80000001013475F0;
            break;
          case 9:
            v37 = 0x697463656E6E6F63;
            v36 = 0xED000079654B6E6FLL;
            break;
          case 10:
            v37 = 0x656E774F7261656ELL;
            v36 = 0xEC00000079654B72;
            break;
          case 11:
            v37 = 0x656B6F546E696F6ALL;
            v36 = 0xE90000000000006ELL;
            break;
          case 12:
            v37 = 0xD000000000000015;
            v36 = 0x80000001013481F0;
            break;
          case 13:
            v37 = 0xD000000000000010;
            v36 = 0x8000000101348210;
            break;
          case 14:
            v37 = 0x7461636F4C626577;
            v36 = 0xEE0079654B6E6F69;
            break;
          case 15:
            v37 = 0x646174654D626577;
            v36 = 0xEB00000000617461;
            break;
          case 16:
            v37 = 0x6D65744974736F6CLL;
            v36 = 0xED00007365746144;
            break;
          case 17:
            v37 = 0xD000000000000014;
            v36 = 0x8000000101348240;
            break;
          case 18:
            v37 = 0xD000000000000016;
            v36 = 0x8000000101348260;
            break;
          default:
            break;
        }

        v82 = *(v0 + 440);
        v83 = *(v0 + 352);
        v158 = *(v0 + 280);
        sub_100018D00(*(v0 + 264), type metadata accessor for KeyDropInterface.KeyPackage);
        v84 = sub_1000136BC(v37, v36, (v0 + 208));

        *(v34 + 4) = v84;
        *(v34 + 12) = 2160;
        *(v34 + 14) = 1752392040;
        *(v34 + 22) = 2081;
        v85 = *(v83 + 20);
        type metadata accessor for UUID();
        sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID);
        v86 = dispatch thunk of CustomStringConvertible.description.getter();
        v88 = v87;
        sub_100018D00(v82, type metadata accessor for SharingCircleKeyManager.Instruction);
        v89 = sub_1000136BC(v86, v88, (v0 + 208));

        *(v34 + 24) = v89;
        _os_log_impl(&_mh_execute_header, v31, v32, "Received package of type %{public}s\nfor shareId: %{private,mask.hash}s - ignoring unrequested package.", v34, 0x20u);
        swift_arrayDestroy();

        v41 = v158;
      }

      else
      {
        v38 = *(v0 + 440);
        v39 = *(v0 + 280);
        v40 = *(v0 + 264);

        sub_100018D00(v38, type metadata accessor for SharingCircleKeyManager.Instruction);
        sub_100018D00(v40, type metadata accessor for KeyDropInterface.KeyPackage);
        v41 = v39;
      }

      sub_100018D00(v41, type metadata accessor for KeyDropInterface.KeyPackage);
      goto LABEL_38;
    }

    sub_100CA0FC8(*(v0 + 280), *(v0 + 600), *(v0 + 608), *(v0 + 272));
    if (!v152)
    {
      break;
    }

    v42 = *(v0 + 544);
    v43 = *(v0 + 496);
    v44 = *(v0 + 376);
    v45 = *(v0 + 368);
    v46 = *(v0 + 280);
    v47 = *(v0 + 256);
    sub_100D11DC8(v43, *(v0 + 384), type metadata accessor for SharingCircleKeyManager.Instruction);
    sub_100D11DC8(v43, v44, type metadata accessor for SharingCircleKeyManager.Instruction);
    sub_100D11DC8(v43, v45, type metadata accessor for SharingCircleKeyManager.Instruction);
    sub_100D11DC8(v46, v47, type metadata accessor for KeyDropInterface.KeyPackage);
    swift_errorRetain();
    v48 = Logger.logObject.getter();
    LOBYTE(v42) = static os_log_type_t.error.getter();

    v49 = v42;
    v50 = os_log_type_enabled(v48, v42);
    v52 = *(v0 + 376);
    v51 = *(v0 + 384);
    v53 = *(v0 + 368);
    if (v50)
    {
      v54 = *(v0 + 352);
      v132 = v54;
      v157 = *(v0 + 280);
      v134 = *(v0 + 256);
      v140 = v48;
      v55 = swift_slowAlloc();
      v138 = swift_slowAlloc();
      v159[0] = swift_slowAlloc();
      *v55 = 136448003;
      v56 = sub_100C71778();
      v58 = v57;
      typea = v49;
      sub_100018D00(v51, type metadata accessor for SharingCircleKeyManager.Instruction);
      v59 = sub_1000136BC(v56, v58, v159);

      *(v55 + 4) = v59;
      *(v55 + 12) = 2160;
      *(v55 + 14) = 1752392040;
      *(v55 + 22) = 2081;
      v60 = *(v54 + 20);
      type metadata accessor for UUID();
      sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID);
      v61 = dispatch thunk of CustomStringConvertible.description.getter();
      v63 = v62;
      sub_100018D00(v52, type metadata accessor for SharingCircleKeyManager.Instruction);
      v64 = sub_1000136BC(v61, v63, v159);

      *(v55 + 24) = v64;
      *(v55 + 32) = 2160;
      *(v55 + 34) = 1752392040;
      *(v55 + 42) = 2081;
      v65 = v53 + *(v132 + 24);
      v66 = dispatch thunk of CustomStringConvertible.description.getter();
      v68 = v67;
      sub_100018D00(v53, type metadata accessor for SharingCircleKeyManager.Instruction);
      v69 = sub_1000136BC(v66, v68, v159);

      *(v55 + 44) = v69;
      *(v55 + 52) = 2080;
      v70 = sub_10125403C(*v134);
      v72 = v71;
      sub_100018D00(v134, type metadata accessor for KeyDropInterface.KeyPackage);
      v73 = sub_1000136BC(v70, v72, v159);

      *(v55 + 54) = v73;
      *(v55 + 62) = 2082;
      swift_getErrorValue();
      v75 = *(v0 + 104);
      v74 = *(v0 + 112);
      v76 = *(v0 + 120);
      v77 = Error.localizedDescription.getter();
      v79 = sub_1000136BC(v77, v78, v159);

      *(v55 + 64) = v79;
      *(v55 + 72) = 2112;
      swift_errorRetain();
      v80 = _swift_stdlib_bridgeErrorToNSError();
      *(v55 + 74) = v80;
      *v138 = v80;
      _os_log_impl(&_mh_execute_header, v140, typea, "Failed to save key package %{public}s,\nsharing-id: %{private,mask.hash}s,\n beacon-id: %{private,mask.hash}s,\npackageType: %s, error: %{public}s. %@.", v55, 0x52u);
      sub_10000B3A8(v138, &qword_10169BB30, &unk_10138B3C0);

      swift_arrayDestroy();

      v81 = v157;
    }

    else
    {
      v90 = *(v0 + 280);
      v91 = *(v0 + 256);

      sub_100018D00(v91, type metadata accessor for KeyDropInterface.KeyPackage);
      sub_100018D00(v53, type metadata accessor for SharingCircleKeyManager.Instruction);
      sub_100018D00(v52, type metadata accessor for SharingCircleKeyManager.Instruction);
      sub_100018D00(v51, type metadata accessor for SharingCircleKeyManager.Instruction);
      v81 = v90;
    }

    sub_100018D00(v81, type metadata accessor for KeyDropInterface.KeyPackage);
    v152 = 0;
LABEL_38:
    v2 = *(v0 + 712) + 1;
    if (v2 == *(v0 + 688))
    {
      goto LABEL_2;
    }
  }

  v128 = swift_task_alloc();
  *(v0 + 720) = v128;
  *v128 = v0;
  v128[1] = sub_100C89DA0;
  v129 = *(v0 + 496);
  v130 = *(v0 + 272);
  v131 = *(v0 + 240);

  return sub_100C8DBA8(v130, v129);
}

uint64_t sub_100C8B0C8()
{
  v79 = v0;
  v1 = *(v0 + 576);
  v2 = *(v0 + 544);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failed to read circleSharedSecret %@.", v5, 0xCu);
    sub_10000B3A8(v6, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  v8 = *(v0 + 528);
  v9 = *(v0 + 504);
  v10 = *(v0 + 520) + 1;
  sub_100018D00(*(v0 + 496), type metadata accessor for SharingCircleKeyManager.Instruction);
  if (v10 == v9)
  {
    v12 = *(v0 + 488);
    v11 = *(v0 + 496);
    v77 = v8;
    v14 = *(v0 + 472);
    v13 = *(v0 + 480);
    v16 = *(v0 + 456);
    v15 = *(v0 + 464);
    v17 = *(v0 + 440);
    v18 = *(v0 + 448);
    v20 = *(v0 + 424);
    v19 = *(v0 + 432);
    v59 = *(v0 + 416);
    v60 = *(v0 + 408);
    v61 = *(v0 + 400);
    v62 = *(v0 + 392);
    v63 = *(v0 + 384);
    v64 = *(v0 + 376);
    v65 = *(v0 + 368);
    v66 = *(v0 + 344);
    v67 = *(v0 + 336);
    v68 = *(v0 + 312);
    v69 = *(v0 + 304);
    v70 = *(v0 + 296);
    v71 = *(v0 + 280);
    v72 = *(v0 + 272);
    v73 = *(v0 + 264);
    v75 = *(v0 + 256);

    v21 = *(v0 + 8);

    return v21(v77);
  }

  else
  {
    v23 = *(v0 + 520) + 1;
    *(v0 + 528) = v8;
    *(v0 + 520) = v23;
    sub_100D11DC8(*(v0 + 232) + ((*(v0 + 736) + 32) & ~*(v0 + 736)) + *(v0 + 512) * v23, *(v0 + 496), type metadata accessor for SharingCircleKeyManager.Instruction);
    if (qword_101694DF8 != -1)
    {
      swift_once();
    }

    v24 = *(v0 + 488);
    v25 = *(v0 + 496);
    v27 = *(v0 + 472);
    v26 = *(v0 + 480);
    v28 = type metadata accessor for Logger();
    *(v0 + 536) = v28;
    *(v0 + 544) = sub_1000076D4(v28, qword_10177BF08);
    sub_100D11DC8(v25, v24, type metadata accessor for SharingCircleKeyManager.Instruction);
    sub_100D11DC8(v25, v26, type metadata accessor for SharingCircleKeyManager.Instruction);
    sub_100D11DC8(v25, v27, type metadata accessor for SharingCircleKeyManager.Instruction);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.default.getter();
    v31 = os_log_type_enabled(v29, v30);
    v33 = *(v0 + 480);
    v32 = *(v0 + 488);
    v34 = *(v0 + 472);
    if (v31)
    {
      v35 = *(v0 + 352);
      v74 = v35;
      v76 = v30;
      v36 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      *v36 = 136447235;
      v37 = sub_100C71778();
      v39 = v38;
      sub_100018D00(v32, type metadata accessor for SharingCircleKeyManager.Instruction);
      v40 = sub_1000136BC(v37, v39, &v78);

      *(v36 + 4) = v40;
      *(v36 + 12) = 2160;
      *(v36 + 14) = 1752392040;
      *(v36 + 22) = 2081;
      v41 = *(v35 + 20);
      type metadata accessor for UUID();
      sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID);
      v42 = dispatch thunk of CustomStringConvertible.description.getter();
      v44 = v43;
      sub_100018D00(v33, type metadata accessor for SharingCircleKeyManager.Instruction);
      v45 = sub_1000136BC(v42, v44, &v78);

      *(v36 + 24) = v45;
      *(v36 + 32) = 2160;
      *(v36 + 34) = 1752392040;
      *(v36 + 42) = 2081;
      v46 = v34 + *(v74 + 24);
      v47 = dispatch thunk of CustomStringConvertible.description.getter();
      v49 = v48;
      sub_100018D00(v34, type metadata accessor for SharingCircleKeyManager.Instruction);
      v50 = sub_1000136BC(v47, v49, &v78);

      *(v36 + 44) = v50;
      _os_log_impl(&_mh_execute_header, v29, v76, "Download keys: %{public}s,\nshare-id: %{private,mask.hash}s,\nbeacon-id: %{private,mask.hash}s.", v36, 0x34u);
      swift_arrayDestroy();
    }

    else
    {

      sub_100018D00(v34, type metadata accessor for SharingCircleKeyManager.Instruction);
      sub_100018D00(v33, type metadata accessor for SharingCircleKeyManager.Instruction);
      sub_100018D00(v32, type metadata accessor for SharingCircleKeyManager.Instruction);
    }

    v51 = *(v0 + 496);
    v52 = *(v0 + 352);
    v53 = *(v51 + *(v52 + 36));
    *(v0 + 744) = v53;
    v54 = *(v52 + 20);
    if (v53 == 5)
    {
      v55 = swift_task_alloc();
      *(v0 + 552) = v55;
      *v55 = v0;
      v55[1] = sub_100C86BB4;
      v56 = *(v0 + 240);

      return sub_100C85380(v51 + v54);
    }

    else
    {
      v57 = swift_task_alloc();
      *(v0 + 584) = v57;
      *v57 = v0;
      v57[1] = sub_100C87600;
      v58 = *(v0 + 240);

      return sub_100C7BA0C(v0 + 16, v51 + v54);
    }
  }
}

uint64_t sub_100C8B804()
{
  v79 = v0;
  v1 = *(v0 + 592);
  v2 = *(v0 + 544);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failed to read circleSharedSecret %@.", v5, 0xCu);
    sub_10000B3A8(v6, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  v8 = *(v0 + 528);
  v9 = *(v0 + 504);
  v10 = *(v0 + 520) + 1;
  sub_100018D00(*(v0 + 496), type metadata accessor for SharingCircleKeyManager.Instruction);
  if (v10 == v9)
  {
    v12 = *(v0 + 488);
    v11 = *(v0 + 496);
    v77 = v8;
    v14 = *(v0 + 472);
    v13 = *(v0 + 480);
    v16 = *(v0 + 456);
    v15 = *(v0 + 464);
    v17 = *(v0 + 440);
    v18 = *(v0 + 448);
    v20 = *(v0 + 424);
    v19 = *(v0 + 432);
    v59 = *(v0 + 416);
    v60 = *(v0 + 408);
    v61 = *(v0 + 400);
    v62 = *(v0 + 392);
    v63 = *(v0 + 384);
    v64 = *(v0 + 376);
    v65 = *(v0 + 368);
    v66 = *(v0 + 344);
    v67 = *(v0 + 336);
    v68 = *(v0 + 312);
    v69 = *(v0 + 304);
    v70 = *(v0 + 296);
    v71 = *(v0 + 280);
    v72 = *(v0 + 272);
    v73 = *(v0 + 264);
    v75 = *(v0 + 256);

    v21 = *(v0 + 8);

    return v21(v77);
  }

  else
  {
    v23 = *(v0 + 520) + 1;
    *(v0 + 528) = v8;
    *(v0 + 520) = v23;
    sub_100D11DC8(*(v0 + 232) + ((*(v0 + 736) + 32) & ~*(v0 + 736)) + *(v0 + 512) * v23, *(v0 + 496), type metadata accessor for SharingCircleKeyManager.Instruction);
    if (qword_101694DF8 != -1)
    {
      swift_once();
    }

    v24 = *(v0 + 488);
    v25 = *(v0 + 496);
    v27 = *(v0 + 472);
    v26 = *(v0 + 480);
    v28 = type metadata accessor for Logger();
    *(v0 + 536) = v28;
    *(v0 + 544) = sub_1000076D4(v28, qword_10177BF08);
    sub_100D11DC8(v25, v24, type metadata accessor for SharingCircleKeyManager.Instruction);
    sub_100D11DC8(v25, v26, type metadata accessor for SharingCircleKeyManager.Instruction);
    sub_100D11DC8(v25, v27, type metadata accessor for SharingCircleKeyManager.Instruction);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.default.getter();
    v31 = os_log_type_enabled(v29, v30);
    v33 = *(v0 + 480);
    v32 = *(v0 + 488);
    v34 = *(v0 + 472);
    if (v31)
    {
      v35 = *(v0 + 352);
      v74 = v35;
      v76 = v30;
      v36 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      *v36 = 136447235;
      v37 = sub_100C71778();
      v39 = v38;
      sub_100018D00(v32, type metadata accessor for SharingCircleKeyManager.Instruction);
      v40 = sub_1000136BC(v37, v39, &v78);

      *(v36 + 4) = v40;
      *(v36 + 12) = 2160;
      *(v36 + 14) = 1752392040;
      *(v36 + 22) = 2081;
      v41 = *(v35 + 20);
      type metadata accessor for UUID();
      sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID);
      v42 = dispatch thunk of CustomStringConvertible.description.getter();
      v44 = v43;
      sub_100018D00(v33, type metadata accessor for SharingCircleKeyManager.Instruction);
      v45 = sub_1000136BC(v42, v44, &v78);

      *(v36 + 24) = v45;
      *(v36 + 32) = 2160;
      *(v36 + 34) = 1752392040;
      *(v36 + 42) = 2081;
      v46 = v34 + *(v74 + 24);
      v47 = dispatch thunk of CustomStringConvertible.description.getter();
      v49 = v48;
      sub_100018D00(v34, type metadata accessor for SharingCircleKeyManager.Instruction);
      v50 = sub_1000136BC(v47, v49, &v78);

      *(v36 + 44) = v50;
      _os_log_impl(&_mh_execute_header, v29, v76, "Download keys: %{public}s,\nshare-id: %{private,mask.hash}s,\nbeacon-id: %{private,mask.hash}s.", v36, 0x34u);
      swift_arrayDestroy();
    }

    else
    {

      sub_100018D00(v34, type metadata accessor for SharingCircleKeyManager.Instruction);
      sub_100018D00(v33, type metadata accessor for SharingCircleKeyManager.Instruction);
      sub_100018D00(v32, type metadata accessor for SharingCircleKeyManager.Instruction);
    }

    v51 = *(v0 + 496);
    v52 = *(v0 + 352);
    v53 = *(v51 + *(v52 + 36));
    *(v0 + 744) = v53;
    v54 = *(v52 + 20);
    if (v53 == 5)
    {
      v55 = swift_task_alloc();
      *(v0 + 552) = v55;
      *v55 = v0;
      v55[1] = sub_100C86BB4;
      v56 = *(v0 + 240);

      return sub_100C85380(v51 + v54);
    }

    else
    {
      v57 = swift_task_alloc();
      *(v0 + 584) = v57;
      *v57 = v0;
      v57[1] = sub_100C87600;
      v58 = *(v0 + 240);

      return sub_100C7BA0C(v0 + 16, v51 + v54);
    }
  }
}

uint64_t sub_100C8BF40()
{
  v70 = v0;
  if (qword_101694780 != -1)
  {
    swift_once();
  }

  v1 = v0[80];
  v2 = v0[62];
  v4 = v0[53];
  v3 = v0[54];
  v5 = v0[52];
  sub_1000076D4(v0[67], qword_10177AE40);
  sub_100D11DC8(v2, v3, type metadata accessor for SharingCircleKeyManager.Instruction);
  sub_100D11DC8(v2, v4, type metadata accessor for SharingCircleKeyManager.Instruction);
  sub_100D11DC8(v2, v5, type metadata accessor for SharingCircleKeyManager.Instruction);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v62 = v7;
    v9 = v0[53];
    v8 = v0[54];
    v64 = v0[52];
    v66 = v0[80];
    v10 = v0[44];
    v11 = swift_slowAlloc();
    v69[0] = swift_slowAlloc();
    *v11 = 136447491;
    v12 = sub_100C71778();
    v14 = v13;
    sub_100018D00(v8, type metadata accessor for SharingCircleKeyManager.Instruction);
    v15 = sub_1000136BC(v12, v14, v69);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2160;
    *(v11 + 14) = 1752392040;
    *(v11 + 22) = 2081;
    v16 = *(v10 + 20);
    type metadata accessor for UUID();
    sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID);
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = v18;
    sub_100018D00(v9, type metadata accessor for SharingCircleKeyManager.Instruction);
    v20 = sub_1000136BC(v17, v19, v69);

    *(v11 + 24) = v20;
    *(v11 + 32) = 2160;
    *(v11 + 34) = 1752392040;
    *(v11 + 42) = 2081;
    v21 = v64 + *(v10 + 24);
    v22 = dispatch thunk of CustomStringConvertible.description.getter();
    v24 = v23;
    sub_100018D00(v64, type metadata accessor for SharingCircleKeyManager.Instruction);
    v25 = sub_1000136BC(v22, v24, v69);

    *(v11 + 44) = v25;
    *(v11 + 52) = 2082;
    swift_getErrorValue();
    v27 = v0[16];
    v26 = v0[17];
    v28 = v0[18];
    v29 = Error.localizedDescription.getter();
    v31 = sub_1000136BC(v29, v30, v69);

    *(v11 + 54) = v31;
    _os_log_impl(&_mh_execute_header, v6, v62, "Failed to process downloaded keys for imported share %{public}s,\nsharing-id: %{private,mask.hash}s,\n beacon-id: %{private,mask.hash}s, error: %{public}s.", v11, 0x3Eu);
    swift_arrayDestroy();
  }

  else
  {
    v33 = v0[53];
    v32 = v0[54];
    v34 = v0[52];

    sub_100018D00(v34, type metadata accessor for SharingCircleKeyManager.Instruction);
    sub_100018D00(v33, type metadata accessor for SharingCircleKeyManager.Instruction);
    sub_100018D00(v32, type metadata accessor for SharingCircleKeyManager.Instruction);
  }

  v68 = v0[80];
  v35 = v0[78];
  v36 = v0[77];
  v37 = v0[61];
  v38 = v0[62];
  v39 = v0[59];
  v40 = v0[60];
  v41 = v0[58];
  v45 = v0[57];
  v46 = v0[56];
  v47 = v0[55];
  v48 = v0[54];
  v49 = v0[53];
  v50 = v0[52];
  v51 = v0[51];
  v52 = v0[50];
  v53 = v0[49];
  v54 = v0[48];
  v55 = v0[47];
  v56 = v0[46];
  v42 = v0[43];
  v57 = v0[42];
  v58 = v0[39];
  v59 = v0[38];
  v60 = v0[37];
  v61 = v0[35];
  v63 = v0[34];
  v65 = v0[33];
  v67 = v0[32];
  swift_willThrow();
  sub_100016590(v35, v36);
  sub_100018D00(v42, type metadata accessor for KeyDropJoinToken);
  sub_100016590(v35, v36);
  sub_100018D00(v38, type metadata accessor for SharingCircleKeyManager.Instruction);

  v43 = v0[1];

  return v43();
}

uint64_t sub_100C8C4B0()
{
  v70 = v0;
  v1 = v0[84];
  v2 = v0[68];
  v3 = v0[62];
  v4 = v0[50];
  v5 = v0[49];
  sub_100D11DC8(v3, v0[51], type metadata accessor for SharingCircleKeyManager.Instruction);
  sub_100D11DC8(v3, v4, type metadata accessor for SharingCircleKeyManager.Instruction);
  sub_100D11DC8(v3, v5, type metadata accessor for SharingCircleKeyManager.Instruction);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v62 = v7;
    v9 = v0[50];
    v8 = v0[51];
    v64 = v0[49];
    v66 = v0[84];
    v10 = v0[44];
    v11 = swift_slowAlloc();
    v69[0] = swift_slowAlloc();
    *v11 = 136447491;
    v12 = sub_100C71778();
    v14 = v13;
    sub_100018D00(v8, type metadata accessor for SharingCircleKeyManager.Instruction);
    v15 = sub_1000136BC(v12, v14, v69);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2160;
    *(v11 + 14) = 1752392040;
    *(v11 + 22) = 2081;
    v16 = *(v10 + 20);
    type metadata accessor for UUID();
    sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID);
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = v18;
    sub_100018D00(v9, type metadata accessor for SharingCircleKeyManager.Instruction);
    v20 = sub_1000136BC(v17, v19, v69);

    *(v11 + 24) = v20;
    *(v11 + 32) = 2160;
    *(v11 + 34) = 1752392040;
    *(v11 + 42) = 2081;
    v21 = v64 + *(v10 + 24);
    v22 = dispatch thunk of CustomStringConvertible.description.getter();
    v24 = v23;
    sub_100018D00(v64, type metadata accessor for SharingCircleKeyManager.Instruction);
    v25 = sub_1000136BC(v22, v24, v69);

    *(v11 + 44) = v25;
    *(v11 + 52) = 2082;
    swift_getErrorValue();
    v27 = v0[10];
    v26 = v0[11];
    v28 = v0[12];
    v29 = Error.localizedDescription.getter();
    v31 = sub_1000136BC(v29, v30, v69);

    *(v11 + 54) = v31;
    _os_log_impl(&_mh_execute_header, v6, v62, "Failed to process downloaded keys %{public}s,\nsharing-id: %{private,mask.hash}s,\n beacon-id: %{private,mask.hash}s, error: %{public}s.", v11, 0x3Eu);
    swift_arrayDestroy();
  }

  else
  {
    v33 = v0[50];
    v32 = v0[51];
    v34 = v0[49];

    sub_100018D00(v34, type metadata accessor for SharingCircleKeyManager.Instruction);
    sub_100018D00(v33, type metadata accessor for SharingCircleKeyManager.Instruction);
    sub_100018D00(v32, type metadata accessor for SharingCircleKeyManager.Instruction);
  }

  v68 = v0[84];
  v35 = v0[75];
  v36 = v0[76];
  v37 = v0[61];
  v38 = v0[62];
  v39 = v0[59];
  v40 = v0[60];
  v41 = v0[58];
  v45 = v0[57];
  v46 = v0[56];
  v47 = v0[55];
  v48 = v0[54];
  v49 = v0[53];
  v50 = v0[52];
  v51 = v0[51];
  v52 = v0[50];
  v53 = v0[49];
  v54 = v0[48];
  v55 = v0[47];
  v56 = v0[46];
  v42 = v0[43];
  v57 = v0[42];
  v58 = v0[39];
  v59 = v0[38];
  v60 = v0[37];
  v61 = v0[35];
  v63 = v0[34];
  v65 = v0[33];
  v67 = v0[32];
  swift_willThrow();
  sub_100016590(v35, v36);
  sub_100018D00(v42, type metadata accessor for KeyDropJoinToken);
  sub_100016590(v35, v36);
  sub_100018D00(v38, type metadata accessor for SharingCircleKeyManager.Instruction);

  v43 = v0[1];

  return v43();
}

uint64_t sub_100C8C9D8()
{
  v158 = v0;
  sub_100018D00(*(v0 + 272), type metadata accessor for KeyDropInterface.KeyPackage);
  v1 = *(v0 + 728);
  v2 = *(v0 + 544);
  v3 = *(v0 + 496);
  v4 = *(v0 + 376);
  v5 = *(v0 + 368);
  v6 = *(v0 + 280);
  v7 = *(v0 + 256);
  sub_100D11DC8(v3, *(v0 + 384), type metadata accessor for SharingCircleKeyManager.Instruction);
  sub_100D11DC8(v3, v4, type metadata accessor for SharingCircleKeyManager.Instruction);
  sub_100D11DC8(v3, v5, type metadata accessor for SharingCircleKeyManager.Instruction);
  sub_100D11DC8(v6, v7, type metadata accessor for KeyDropInterface.KeyPackage);
  swift_errorRetain();
  v8 = Logger.logObject.getter();
  LOBYTE(v2) = static os_log_type_t.error.getter();

  v9 = v2;
  v10 = os_log_type_enabled(v8, v2);
  v12 = *(v0 + 376);
  v11 = *(v0 + 384);
  v13 = *(v0 + 368);
  if (v10)
  {
    v14 = *(v0 + 352);
    v139 = v14;
    v154 = *(v0 + 280);
    v141 = *(v0 + 256);
    v15 = swift_slowAlloc();
    v147 = swift_slowAlloc();
    v157[0] = swift_slowAlloc();
    *v15 = 136448003;
    type = v9;
    v16 = sub_100C71778();
    log = v8;
    v18 = v17;
    sub_100018D00(v11, type metadata accessor for SharingCircleKeyManager.Instruction);
    v19 = sub_1000136BC(v16, v18, v157);

    *(v15 + 4) = v19;
    *(v15 + 12) = 2160;
    *(v15 + 14) = 1752392040;
    *(v15 + 22) = 2081;
    v20 = *(v14 + 20);
    type metadata accessor for UUID();
    sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID);
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    v23 = v22;
    sub_100018D00(v12, type metadata accessor for SharingCircleKeyManager.Instruction);
    v24 = sub_1000136BC(v21, v23, v157);

    *(v15 + 24) = v24;
    *(v15 + 32) = 2160;
    *(v15 + 34) = 1752392040;
    *(v15 + 42) = 2081;
    v25 = v13 + *(v139 + 24);
    v26 = dispatch thunk of CustomStringConvertible.description.getter();
    v28 = v27;
    sub_100018D00(v13, type metadata accessor for SharingCircleKeyManager.Instruction);
    v29 = sub_1000136BC(v26, v28, v157);

    *(v15 + 44) = v29;
    *(v15 + 52) = 2080;
    v30 = sub_10125403C(*v141);
    v32 = v31;
    sub_100018D00(v141, type metadata accessor for KeyDropInterface.KeyPackage);
    v33 = sub_1000136BC(v30, v32, v157);

    *(v15 + 54) = v33;
    *(v15 + 62) = 2082;
    swift_getErrorValue();
    v35 = *(v0 + 104);
    v34 = *(v0 + 112);
    v36 = *(v0 + 120);
    v37 = Error.localizedDescription.getter();
    v39 = sub_1000136BC(v37, v38, v157);

    *(v15 + 64) = v39;
    *(v15 + 72) = 2112;
    swift_errorRetain();
    v40 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 74) = v40;
    *v147 = v40;
    _os_log_impl(&_mh_execute_header, log, type, "Failed to save key package %{public}s,\nsharing-id: %{private,mask.hash}s,\n beacon-id: %{private,mask.hash}s,\npackageType: %s, error: %{public}s. %@.", v15, 0x52u);
    sub_10000B3A8(v147, &qword_10169BB30, &unk_10138B3C0);

    swift_arrayDestroy();

    v41 = v154;
  }

  else
  {
    v42 = *(v0 + 280);
    v43 = *(v0 + 256);

    sub_100018D00(v43, type metadata accessor for KeyDropInterface.KeyPackage);
    sub_100018D00(v13, type metadata accessor for SharingCircleKeyManager.Instruction);
    sub_100018D00(v12, type metadata accessor for SharingCircleKeyManager.Instruction);
    sub_100018D00(v11, type metadata accessor for SharingCircleKeyManager.Instruction);
    v41 = v42;
  }

  while (1)
  {
    sub_100018D00(v41, type metadata accessor for KeyDropInterface.KeyPackage);
    v47 = *(v0 + 712) + 1;
    if (v47 == *(v0 + 688))
    {
      break;
    }

    *(v0 + 712) = v47;
    v48 = *(v0 + 696);
    v49 = *(v0 + 280);
    sub_100D11DC8(*(v0 + 680) + ((*(v0 + 740) + 32) & ~*(v0 + 740)) + *(v0 + 704) * v47, v49, type metadata accessor for KeyDropInterface.KeyPackage);
    if (sub_10111EFE8(*v49, v48))
    {
      sub_100CA0FC8(*(v0 + 280), *(v0 + 600), *(v0 + 608), *(v0 + 272));
      v68 = swift_task_alloc();
      *(v0 + 720) = v68;
      *v68 = v0;
      v68[1] = sub_100C89DA0;
      v69 = *(v0 + 496);
      v70 = *(v0 + 272);
      v71 = *(v0 + 240);

      return sub_100C8DBA8(v70, v69);
    }

    v50 = *(v0 + 544);
    v51 = *(v0 + 496);
    v52 = *(v0 + 440);
    sub_100D11DC8(*(v0 + 280), *(v0 + 264), type metadata accessor for KeyDropInterface.KeyPackage);
    sub_100D11DC8(v51, v52, type metadata accessor for SharingCircleKeyManager.Instruction);
    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = *(v0 + 264);
      v56 = swift_slowAlloc();
      *(v0 + 208) = swift_slowAlloc();
      *v56 = 136446723;
      v57 = *v55;
      v58 = 0xE700000000000000;
      v59 = 0x7972616D697270;
      switch(v57)
      {
        case 1:
          v58 = 0xE900000000000079;
          v59 = 0x7261646E6F636573;
          break;
        case 2:
          v59 = 0xD000000000000019;
          v58 = 0x8000000101348160;
          break;
        case 3:
          v59 = 0xD00000000000001BLL;
          v58 = 0x8000000101348180;
          break;
        case 4:
          v58 = 0xEA0000000000656CLL;
          v59 = 0x646E7542646C6977;
          break;
        case 5:
          v59 = 0x417972616D697270;
          v58 = 0xEE00737365726464;
          break;
        case 6:
          v59 = 0xD000000000000010;
          v58 = 0x80000001013481C0;
          break;
        case 7:
          v59 = 0xD000000000000012;
          v58 = 0x80000001013475D0;
          break;
        case 8:
          v59 = 0xD000000000000011;
          v58 = 0x80000001013475F0;
          break;
        case 9:
          v59 = 0x697463656E6E6F63;
          v58 = 0xED000079654B6E6FLL;
          break;
        case 10:
          v59 = 0x656E774F7261656ELL;
          v58 = 0xEC00000079654B72;
          break;
        case 11:
          v59 = 0x656B6F546E696F6ALL;
          v58 = 0xE90000000000006ELL;
          break;
        case 12:
          v59 = 0xD000000000000015;
          v58 = 0x80000001013481F0;
          break;
        case 13:
          v59 = 0xD000000000000010;
          v58 = 0x8000000101348210;
          break;
        case 14:
          v59 = 0x7461636F4C626577;
          v58 = 0xEE0079654B6E6F69;
          break;
        case 15:
          v59 = 0x646174654D626577;
          v58 = 0xEB00000000617461;
          break;
        case 16:
          v59 = 0x6D65744974736F6CLL;
          v58 = 0xED00007365746144;
          break;
        case 17:
          v59 = 0xD000000000000014;
          v58 = 0x8000000101348240;
          break;
        case 18:
          v59 = 0xD000000000000016;
          v58 = 0x8000000101348260;
          break;
        default:
          break;
      }

      v60 = *(v0 + 440);
      v61 = *(v0 + 352);
      v155 = *(v0 + 280);
      sub_100018D00(*(v0 + 264), type metadata accessor for KeyDropInterface.KeyPackage);
      v62 = sub_1000136BC(v59, v58, (v0 + 208));

      *(v56 + 4) = v62;
      *(v56 + 12) = 2160;
      *(v56 + 14) = 1752392040;
      *(v56 + 22) = 2081;
      v63 = *(v61 + 20);
      type metadata accessor for UUID();
      sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID);
      v64 = dispatch thunk of CustomStringConvertible.description.getter();
      v66 = v65;
      sub_100018D00(v60, type metadata accessor for SharingCircleKeyManager.Instruction);
      v67 = sub_1000136BC(v64, v66, (v0 + 208));

      *(v56 + 24) = v67;
      _os_log_impl(&_mh_execute_header, v53, v54, "Received package of type %{public}s\nfor shareId: %{private,mask.hash}s - ignoring unrequested package.", v56, 0x20u);
      swift_arrayDestroy();

      v41 = v155;
    }

    else
    {
      v44 = *(v0 + 440);
      v45 = *(v0 + 280);
      v46 = *(v0 + 264);

      sub_100018D00(v44, type metadata accessor for SharingCircleKeyManager.Instruction);
      sub_100018D00(v46, type metadata accessor for KeyDropInterface.KeyPackage);
      v41 = v45;
    }
  }

  v73 = *(v0 + 528);
  v74 = sub_100D100F8(*(*(v0 + 304) + *(*(v0 + 288) + 24)), *(v0 + 600), *(v0 + 608), *(v0 + 496));
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v76 = *(v0 + 528);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v76 = sub_100A5B9D4(0, *(v76 + 2) + 1, 1, *(v0 + 528));
  }

  v78 = *(v76 + 2);
  v77 = *(v76 + 3);
  if (v78 >= v77 >> 1)
  {
    v76 = sub_100A5B9D4((v77 > 1), v78 + 1, 1, v76);
  }

  v79 = *(v0 + 608);
  v80 = *(v0 + 600);
  v81 = *(v0 + 344);
  v82 = *(v0 + 304);
  sub_100016590(v80, v79);
  sub_100018D00(v81, type metadata accessor for KeyDropJoinToken);
  *(v76 + 2) = v78 + 1;
  *&v76[8 * v78 + 32] = v74;
  sub_100018D00(v82, type metadata accessor for KeyDropDownloadResponse);
  sub_100016590(v80, v79);
  v83 = *(v0 + 504);
  v84 = *(v0 + 520) + 1;
  sub_100018D00(*(v0 + 496), type metadata accessor for SharingCircleKeyManager.Instruction);
  if (v84 == v83)
  {
    v86 = *(v0 + 488);
    v85 = *(v0 + 496);
    v88 = *(v0 + 472);
    v87 = *(v0 + 480);
    v90 = *(v0 + 456);
    v89 = *(v0 + 464);
    v92 = *(v0 + 440);
    v91 = *(v0 + 448);
    v93 = *(v0 + 432);
    v131 = *(v0 + 424);
    v132 = *(v0 + 416);
    v133 = *(v0 + 408);
    v134 = *(v0 + 400);
    v135 = *(v0 + 392);
    v136 = *(v0 + 384);
    v137 = *(v0 + 376);
    v138 = *(v0 + 368);
    v140 = *(v0 + 344);
    v142 = *(v0 + 336);
    loga = *(v0 + 312);
    *typea = *(v0 + 304);
    v148 = *(v0 + 296);
    v149 = *(v0 + 280);
    v150 = *(v0 + 272);
    v152 = *(v0 + 264);
    v156 = *(v0 + 256);

    v94 = *(v0 + 8);

    return v94(v76);
  }

  else
  {
    v95 = *(v0 + 520) + 1;
    *(v0 + 528) = v76;
    *(v0 + 520) = v95;
    sub_100D11DC8(*(v0 + 232) + ((*(v0 + 736) + 32) & ~*(v0 + 736)) + *(v0 + 512) * v95, *(v0 + 496), type metadata accessor for SharingCircleKeyManager.Instruction);
    if (qword_101694DF8 != -1)
    {
      swift_once();
    }

    v96 = *(v0 + 488);
    v97 = *(v0 + 496);
    v99 = *(v0 + 472);
    v98 = *(v0 + 480);
    v100 = type metadata accessor for Logger();
    *(v0 + 536) = v100;
    *(v0 + 544) = sub_1000076D4(v100, qword_10177BF08);
    sub_100D11DC8(v97, v96, type metadata accessor for SharingCircleKeyManager.Instruction);
    sub_100D11DC8(v97, v98, type metadata accessor for SharingCircleKeyManager.Instruction);
    sub_100D11DC8(v97, v99, type metadata accessor for SharingCircleKeyManager.Instruction);
    v101 = Logger.logObject.getter();
    v102 = static os_log_type_t.default.getter();
    v103 = os_log_type_enabled(v101, v102);
    v105 = *(v0 + 480);
    v104 = *(v0 + 488);
    v106 = *(v0 + 472);
    if (v103)
    {
      v153 = v101;
      v107 = *(v0 + 352);
      v108 = swift_slowAlloc();
      v157[0] = swift_slowAlloc();
      *v108 = 136447235;
      v109 = sub_100C71778();
      v111 = v110;
      sub_100018D00(v104, type metadata accessor for SharingCircleKeyManager.Instruction);
      v112 = sub_1000136BC(v109, v111, v157);

      *(v108 + 4) = v112;
      *(v108 + 12) = 2160;
      *(v108 + 14) = 1752392040;
      *(v108 + 22) = 2081;
      v113 = *(v107 + 20);
      type metadata accessor for UUID();
      sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID);
      v114 = dispatch thunk of CustomStringConvertible.description.getter();
      v151 = v102;
      v116 = v115;
      sub_100018D00(v105, type metadata accessor for SharingCircleKeyManager.Instruction);
      v117 = sub_1000136BC(v114, v116, v157);

      *(v108 + 24) = v117;
      *(v108 + 32) = 2160;
      *(v108 + 34) = 1752392040;
      *(v108 + 42) = 2081;
      v118 = v106 + *(v107 + 24);
      v119 = dispatch thunk of CustomStringConvertible.description.getter();
      v121 = v120;
      sub_100018D00(v106, type metadata accessor for SharingCircleKeyManager.Instruction);
      v122 = sub_1000136BC(v119, v121, v157);

      *(v108 + 44) = v122;
      _os_log_impl(&_mh_execute_header, v153, v151, "Download keys: %{public}s,\nshare-id: %{private,mask.hash}s,\nbeacon-id: %{private,mask.hash}s.", v108, 0x34u);
      swift_arrayDestroy();
    }

    else
    {

      sub_100018D00(v106, type metadata accessor for SharingCircleKeyManager.Instruction);
      sub_100018D00(v105, type metadata accessor for SharingCircleKeyManager.Instruction);
      sub_100018D00(v104, type metadata accessor for SharingCircleKeyManager.Instruction);
    }

    v123 = *(v0 + 496);
    v124 = *(v0 + 352);
    v125 = *(v123 + *(v124 + 36));
    *(v0 + 744) = v125;
    v126 = *(v124 + 20);
    if (v125 == 5)
    {
      v127 = swift_task_alloc();
      *(v0 + 552) = v127;
      *v127 = v0;
      v127[1] = sub_100C86BB4;
      v128 = *(v0 + 240);

      return sub_100C85380(v123 + v126);
    }

    else
    {
      v129 = swift_task_alloc();
      *(v0 + 584) = v129;
      *v129 = v0;
      v129[1] = sub_100C87600;
      v130 = *(v0 + 240);

      return sub_100C7BA0C(v0 + 16, v123 + v126);
    }
  }
}

uint64_t sub_100C8DBA8(uint64_t a1, uint64_t a2)
{
  v3[206] = v2;
  v3[205] = a2;
  v3[204] = a1;
  v4 = sub_1000BC4D4(&unk_1016B1660, &unk_10138CE10);
  v3[207] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[208] = swift_task_alloc();
  v6 = *(*(sub_1000BC4D4(&unk_101698C20, &qword_101390748) - 8) + 64) + 15;
  v3[209] = swift_task_alloc();
  v7 = *(*(sub_1000BC4D4(&unk_101696900, &unk_10138B1E0) - 8) + 64) + 15;
  v3[210] = swift_task_alloc();
  v3[211] = swift_task_alloc();
  v8 = type metadata accessor for KeyDropLostItemDates(0);
  v3[212] = v8;
  v9 = *(v8 - 8);
  v3[213] = v9;
  v10 = *(v9 + 64) + 15;
  v3[214] = swift_task_alloc();
  v11 = type metadata accessor for KeyDropBeaconGroupAttributes();
  v3[215] = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  v3[216] = swift_task_alloc();
  v3[217] = swift_task_alloc();
  v3[218] = swift_task_alloc();
  v13 = type metadata accessor for Connection.TransactionMode();
  v3[219] = v13;
  v14 = *(v13 - 8);
  v3[220] = v14;
  v15 = *(v14 + 64) + 15;
  v3[221] = swift_task_alloc();
  v16 = type metadata accessor for Table();
  v3[222] = v16;
  v17 = *(v16 - 8);
  v3[223] = v17;
  v18 = *(v17 + 64) + 15;
  v3[224] = swift_task_alloc();
  v19 = type metadata accessor for KeyDropJoinToken(0);
  v3[225] = v19;
  v20 = *(*(v19 - 8) + 64) + 15;
  v3[226] = swift_task_alloc();
  v21 = type metadata accessor for KeySyncMetadata();
  v3[227] = v21;
  v22 = *(*(v21 - 8) + 64) + 15;
  v3[228] = swift_task_alloc();
  v3[229] = swift_task_alloc();
  v23 = type metadata accessor for UUID();
  v3[230] = v23;
  v24 = *(v23 - 8);
  v3[231] = v24;
  v3[232] = *(v24 + 64);
  v3[233] = swift_task_alloc();
  v3[234] = swift_task_alloc();
  v3[235] = swift_task_alloc();
  v3[236] = swift_task_alloc();
  v25 = sub_1000BC4D4(&unk_101698C30, &unk_101392630);
  v3[237] = v25;
  v26 = *(*(v25 - 8) + 64) + 15;
  v3[238] = swift_task_alloc();
  v3[239] = swift_task_alloc();
  v3[240] = swift_task_alloc();
  v27 = type metadata accessor for SharedBeaconRecord(0);
  v3[241] = v27;
  v28 = *(v27 - 8);
  v3[242] = v28;
  v3[243] = *(v28 + 64);
  v3[244] = swift_task_alloc();
  v3[245] = swift_task_alloc();
  v3[246] = swift_task_alloc();
  v3[247] = swift_task_alloc();
  v29 = type metadata accessor for SharingCircleSecretValue();
  v3[248] = v29;
  v30 = *(*(v29 - 8) + 64) + 15;
  v3[249] = swift_task_alloc();
  v3[250] = swift_task_alloc();
  v3[251] = swift_task_alloc();
  v3[252] = swift_task_alloc();
  v31 = type metadata accessor for Date();
  v3[253] = v31;
  v32 = *(v31 - 8);
  v3[254] = v32;
  v33 = *(v32 + 64) + 15;
  v3[255] = swift_task_alloc();
  v3[256] = swift_task_alloc();
  v3[257] = swift_task_alloc();
  v34 = type metadata accessor for KeyDropInterface.KeyPackage(0);
  v3[258] = v34;
  v35 = *(*(v34 - 8) + 64) + 15;
  v3[259] = swift_task_alloc();
  v3[260] = swift_task_alloc();
  v3[261] = swift_task_alloc();
  v36 = type metadata accessor for SharingCircleKeyManager.Instruction(0);
  v3[262] = v36;
  v37 = *(v36 - 8);
  v3[263] = v37;
  v3[264] = *(v37 + 64);
  v3[265] = swift_task_alloc();
  v3[266] = swift_task_alloc();
  v3[267] = swift_task_alloc();
  v3[268] = swift_task_alloc();
  v3[269] = swift_task_alloc();
  v3[270] = swift_task_alloc();
  v3[271] = swift_task_alloc();
  v3[272] = swift_task_alloc();
  v3[273] = swift_task_alloc();
  v3[274] = swift_task_alloc();
  v3[275] = swift_task_alloc();
  v3[276] = swift_task_alloc();

  return _swift_task_switch(sub_100C8E1F0, v2, 0);
}

uint64_t sub_100C8E1F0()
{
  v46 = v0;
  if (qword_101694DF8 != -1)
  {
    swift_once();
  }

  v1 = v0[276];
  v2 = v0[275];
  v3 = v0[274];
  v4 = v0[261];
  v5 = v0[260];
  v6 = v0[205];
  v7 = v0[204];
  v8 = type metadata accessor for Logger();
  v0[277] = sub_1000076D4(v8, qword_10177BF08);
  sub_100D11DC8(v6, v1, type metadata accessor for SharingCircleKeyManager.Instruction);
  sub_100D11DC8(v7, v4, type metadata accessor for KeyDropInterface.KeyPackage);
  sub_100D11DC8(v6, v2, type metadata accessor for SharingCircleKeyManager.Instruction);
  sub_100D11DC8(v6, v3, type metadata accessor for SharingCircleKeyManager.Instruction);
  sub_100D11DC8(v7, v5, type metadata accessor for KeyDropInterface.KeyPackage);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[276];
  v13 = v0[275];
  v14 = v0[274];
  if (v11)
  {
    v40 = v0[262];
    v41 = v0[274];
    v15 = v0[261];
    v43 = v0[258];
    v44 = v0[260];
    v16 = v0[230];
    v17 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    *v17 = 136447747;
    v18 = sub_100C71778();
    v42 = v10;
    v20 = v19;
    sub_100018D00(v12, type metadata accessor for SharingCircleKeyManager.Instruction);
    v21 = sub_1000136BC(v18, v20, &v45);

    *(v17 + 4) = v21;
    *(v17 + 12) = 2080;
    v22 = sub_10125403C(*v15);
    v24 = v23;
    sub_100018D00(v15, type metadata accessor for KeyDropInterface.KeyPackage);
    v25 = sub_1000136BC(v22, v24, &v45);

    *(v17 + 14) = v25;
    *(v17 + 22) = 2160;
    *(v17 + 24) = 1752392040;
    *(v17 + 32) = 2081;
    v26 = *(v40 + 20);
    sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID);
    v27 = dispatch thunk of CustomStringConvertible.description.getter();
    v29 = v28;
    sub_100018D00(v13, type metadata accessor for SharingCircleKeyManager.Instruction);
    v30 = sub_1000136BC(v27, v29, &v45);

    *(v17 + 34) = v30;
    *(v17 + 42) = 2160;
    *(v17 + 44) = 1752392040;
    *(v17 + 52) = 2081;
    v31 = v41 + *(v40 + 24);
    v32 = dispatch thunk of CustomStringConvertible.description.getter();
    v34 = v33;
    sub_100018D00(v41, type metadata accessor for SharingCircleKeyManager.Instruction);
    v35 = sub_1000136BC(v32, v34, &v45);

    *(v17 + 54) = v35;
    *(v17 + 62) = 2048;
    v36 = *(*(v44 + *(v43 + 24)) + 16);
    sub_100018D00(v44, type metadata accessor for KeyDropInterface.KeyPackage);
    *(v17 + 64) = v36;
    _os_log_impl(&_mh_execute_header, v9, v42, "Save key package: %{public}s,\ntype: %s,\nshare-id: %{private,mask.hash}s,\nbeacon-id: %{private,mask.hash}s\nkeys: %ld.", v17, 0x48u);
    swift_arrayDestroy();
  }

  else
  {
    v37 = v0[261];
    sub_100018D00(v0[260], type metadata accessor for KeyDropInterface.KeyPackage);

    sub_100018D00(v14, type metadata accessor for SharingCircleKeyManager.Instruction);
    sub_100018D00(v13, type metadata accessor for SharingCircleKeyManager.Instruction);
    sub_100018D00(v37, type metadata accessor for KeyDropInterface.KeyPackage);
    sub_100018D00(v12, type metadata accessor for SharingCircleKeyManager.Instruction);
  }

  v38 = *(v0[206] + 120);
  v0[278] = v38;

  return _swift_task_switch(sub_100C8E680, v38, 0);
}

uint64_t sub_100C8E680()
{
  v1 = v0[278];
  v2 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v3 = swift_task_alloc();
  v0[279] = v3;
  v4 = type metadata accessor for BeaconKeyManager(0);
  v0[280] = v4;
  *v3 = v0;
  v3[1] = sub_100C8E764;
  v5 = v0[278];

  return unsafeBlocking<A>(context:_:)(v0 + 202, 0xD000000000000010, 0x800000010134A8C0, sub_1000D3168, v5, v4);
}

uint64_t sub_100C8E764()
{
  v1 = *(*v0 + 2232);
  v2 = *(*v0 + 2224);
  v4 = *v0;

  return _swift_task_switch(sub_100C8E87C, v2, 0);
}

uint64_t sub_100C8E87C()
{
  v1 = v0[206];
  v0[281] = v0[202];
  return _swift_task_switch(sub_100C8E8A0, v1, 0);
}

uint64_t sub_100C8E8A0()
{
  v251 = v0;
  v1 = *(v0 + 2064);
  v2 = *(v0 + 1632);
  v3 = *&v2[*(v1 + 24)];
  if (*(v3 + 16))
  {
    v4 = *(v0 + 2056);
    v5 = *(v0 + 2032);
    v6 = *(v0 + 2024);
    *(v0 + 160) = *(v3 + 32);
    v7 = *(v3 + 48);
    v8 = *(v3 + 64);
    v9 = *(v3 + 80);
    *(v0 + 224) = *(v3 + 96);
    *(v0 + 192) = v8;
    *(v0 + 208) = v9;
    *(v0 + 176) = v7;
    v11 = *(v0 + 168);
    v10 = *(v0 + 176);
    v12 = &v2[*(v1 + 20)];
    v13 = type metadata accessor for KeyDropInterface.KeyAlignment(0);
    *(v0 + 2256) = *&v12[*(v13 + 20)];
    v14 = *(v13 + 24);
    v15 = *(v5 + 16);
    *(v0 + 2264) = v15;
    *(v0 + 2272) = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v15(v4, &v12[v14], v6);
    switch(*v2)
    {
      case 0:
        v16 = *(v0 + 2248);
        v17 = *(v0 + 2056);
        v18 = *(v0 + 2032);
        v19 = *(v0 + 2024);
        v20 = v0 + 160;
        v21 = v0 + 664;
        goto LABEL_22;
      case 1:
        v109 = *(v0 + 1632);
        sub_1003914F8(v0 + 160, v0 + 1024);
        v96 = sub_100D0FEE0(v109);
        *(v0 + 2592) = v96;
        v173 = v96[2];
        *(v0 + 2600) = v173;
        if (!v173)
        {
          v202 = *(v0 + 2248);
          v203 = *(v0 + 2056);
          v204 = *(v0 + 2032);
          v205 = *(v0 + 2024);

          sub_100391554(v0 + 160);

          (*(v204 + 8))(v203, v205);
          goto LABEL_23;
        }

        *(v0 + 2836) = *(*(v0 + 2096) + 24);
        *(v0 + 2840) = enum case for Connection.TransactionMode.deferred(_:);
        *(v0 + 2608) = 0u;
        if (v96[2])
        {
          v123 = *(v0 + 2224);
          *(v0 + 2624) = v96[4];
          v174 = v96[5];
          *(v0 + 2632) = v174;
          v175 = v96[6];
          *(v0 + 2640) = v175;
          sub_100017D5C(v174, v175);
          v124 = sub_100C9495C;
LABEL_28:
          v96 = v124;
          v97 = v123;
LABEL_29:
          v110 = 0;
        }

        else
        {
          __break(1u);
        }

        result = _swift_task_switch(v96, v97, v110);
        break;
      case 2:
        v98 = *(v0 + 2248);
        v17 = *(v0 + 2056);
        v18 = *(v0 + 2032);
        v19 = *(v0 + 2024);
        v20 = v0 + 160;
        v21 = v0 + 592;
        goto LABEL_22;
      case 3:
        v100 = *(v0 + 2248);
        v17 = *(v0 + 2056);
        v18 = *(v0 + 2032);
        v19 = *(v0 + 2024);
        v20 = v0 + 160;
        v21 = v0 + 520;
        goto LABEL_22;
      case 4:
        v84 = *(v0 + 2248);
        v17 = *(v0 + 2056);
        v18 = *(v0 + 2032);
        v19 = *(v0 + 2024);
        v20 = v0 + 160;
        v21 = v0 + 736;
        goto LABEL_22;
      case 5:
        v123 = *(v0 + 2224);
        *(v0 + 2824) = *(*(v0 + 2096) + 24);
        sub_1003914F8(v0 + 160, v0 + 1312);
        v124 = sub_100C906E8;
        goto LABEL_28;
      case 6:
        v123 = *(v0 + 2224);
        *(v0 + 2828) = *(*(v0 + 2096) + 24);
        sub_1003914F8(v0 + 160, v0 + 16);
        v124 = sub_100C91BD4;
        goto LABEL_28;
      case 7:
        v101 = type metadata accessor for PropertyListDecoder();
        v102 = *(v101 + 48);
        v103 = *(v101 + 52);
        swift_allocObject();
        sub_1003914F8(v0 + 160, v0 + 1240);
        *(v0 + 2528) = PropertyListDecoder.init()();
        sub_100313070();
        dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
        v104 = *(v0 + 2000);
        v105 = *(v0 + 1984);
        v106 = *(v0 + 1584);
        *(v0 + 2536) = v106;
        v107 = *(v0 + 1592);
        *(v0 + 2544) = v107;
        *v104 = v106;
        v104[1] = v107;
        swift_storeEnumTagMultiPayload();
        sub_100017D5C(v106, v107);
        v108 = swift_task_alloc();
        *(v0 + 2552) = v108;
        *v108 = v0;
        v108[1] = sub_100C94038;
        v83 = *(v0 + 2000);
        goto LABEL_47;
      case 8:
        sub_1003914F8(v0 + 160, v0 + 1384);
        sub_100017D5C(v11, v10);
        sub_1004A4714(v11, v10, v250);
        v191 = *(v0 + 2008);
        v192 = *(v0 + 1984);
        v194 = v250[0];
        v193 = v250[1];
        *(v0 + 2496) = v250[0];
        *(v0 + 2504) = v193;
        *v191 = v194;
        v191[1] = v193;
        swift_storeEnumTagMultiPayload();
        sub_100017D5C(v194, v193);
        v195 = swift_task_alloc();
        *(v0 + 2512) = v195;
        *v195 = v0;
        v195[1] = sub_100C93BB4;
        v83 = *(v0 + 2008);
        goto LABEL_47;
      case 9:
        v90 = *(v0 + 2216);
        sub_1003914F8(v0 + 160, v0 + 1456);
        v91 = Logger.logObject.getter();
        v92 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v91, v92))
        {
          v93 = swift_slowAlloc();
          *v93 = 0;
          _os_log_impl(&_mh_execute_header, v91, v92, "Processing connection keys.", v93, 2u);
        }

        v94 = *(v0 + 2224);
        v95 = *(v0 + 2096);

        *(v0 + 2832) = *(v95 + 24);
        v96 = sub_100C930C4;
        v97 = v94;
        goto LABEL_29;
      case 0xA:
        v147 = type metadata accessor for PropertyListDecoder();
        v148 = *(v147 + 48);
        v149 = *(v147 + 52);
        swift_allocObject();
        sub_1003914F8(v0 + 160, v0 + 88);
        *(v0 + 2280) = PropertyListDecoder.init()();
        sub_10049DECC();
        dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
        v186 = *(v0 + 2016);
        v187 = *(v0 + 1984);
        v188 = *(v0 + 1568);
        *(v0 + 2288) = v188;
        v189 = *(v0 + 1576);
        *(v0 + 2296) = v189;
        *v186 = v188;
        v186[1] = v189;
        swift_storeEnumTagMultiPayload();
        sub_100017D5C(v188, v189);
        v190 = swift_task_alloc();
        *(v0 + 2304) = v190;
        *v190 = v0;
        v190[1] = sub_100C9025C;
        v83 = *(v0 + 2016);
        goto LABEL_47;
      case 0xB:
        v68 = *(v0 + 1808);
        v69 = *(v0 + 1800);
        v70 = type metadata accessor for PropertyListDecoder();
        v71 = *(v70 + 48);
        v72 = *(v70 + 52);
        swift_allocObject();
        sub_1003914F8(v0 + 160, v0 + 1168);
        *(v0 + 2568) = PropertyListDecoder.init()();
        sub_100D13BF8(&qword_1016B9BB8, type metadata accessor for KeyDropJoinToken);
        dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
        v73 = *(v0 + 1992);
        v74 = *(v0 + 1984);
        v75 = *(v0 + 1808);
        v76 = *(v0 + 1800);
        (*(*(v0 + 1848) + 16))(v73, *(v0 + 1640) + *(*(v0 + 2096) + 28), *(v0 + 1840));
        v77 = *(v76 + 20);
        v78 = v75 + v77;
        v79 = *(v75 + v77);
        v80 = *(v78 + 8);
        v81 = (v73 + v77);
        *v81 = v79;
        v81[1] = v80;
        swift_storeEnumTagMultiPayload();
        sub_100017D5C(v79, v80);
        v82 = swift_task_alloc();
        *(v0 + 2576) = v82;
        *v82 = v0;
        v82[1] = sub_100C944C4;
        v83 = *(v0 + 1992);
LABEL_47:
        v196 = *(v0 + 1648);
        v197 = *(v0 + 1640);

        return sub_100C9CF9C(v83, v197);
      case 0xC:
        v85 = *(v0 + 1744);
        v86 = *(v0 + 1720);
        v87 = type metadata accessor for PropertyListDecoder();
        v88 = *(v87 + 48);
        v89 = *(v87 + 52);
        swift_allocObject();
        sub_1003914F8(v0 + 160, v0 + 808);
        PropertyListDecoder.init()();
        sub_100D13BF8(&qword_1016B9BA8, type metadata accessor for KeyDropBeaconGroupAttributes);
        dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
        v154 = *(v0 + 2216);
        v155 = *(v0 + 1744);
        v156 = *(v0 + 1736);
        v157 = *(v0 + 1728);

        sub_100D11DC8(v155, v156, type metadata accessor for KeyDropBeaconGroupAttributes);
        sub_100D11DC8(v155, v157, type metadata accessor for KeyDropBeaconGroupAttributes);
        v158 = Logger.logObject.getter();
        v159 = static os_log_type_t.default.getter();
        v160 = os_log_type_enabled(v158, v159);
        v161 = *(v0 + 2248);
        v162 = *(v0 + 2056);
        v163 = *(v0 + 2032);
        v164 = *(v0 + 2024);
        if (v160)
        {
          v165 = *(v0 + 1840);
          v249 = *(v0 + 1744);
          v166 = *(v0 + 1736);
          v237 = *(v0 + 1720);
          v239 = *(v0 + 1728);
          v247 = *(v0 + 2024);
          v167 = swift_slowAlloc();
          v168 = swift_slowAlloc();
          v250[0] = v168;
          *v167 = 141558531;
          *(v167 + 4) = 1752392040;
          *(v167 + 12) = 2081;
          sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID);
          v169 = dispatch thunk of CustomStringConvertible.description.getter();
          v241 = v162;
          v171 = v170;
          sub_100018D00(v166, type metadata accessor for KeyDropBeaconGroupAttributes);
          v172 = sub_1000136BC(v169, v171, v250);

          *(v167 + 14) = v172;
          *(v167 + 22) = 256;
          LOBYTE(v172) = *(v239 + *(v237 + 20));
          sub_100018D00(v239, type metadata accessor for KeyDropBeaconGroupAttributes);
          *(v167 + 24) = v172;
          _os_log_impl(&_mh_execute_header, v158, v159, "Received and logging group attributes: %{private,mask.hash}s, partId: %hhu.", v167, 0x19u);
          sub_100007BAC(v168);

          sub_100391554(v0 + 160);

          sub_100018D00(v249, type metadata accessor for KeyDropBeaconGroupAttributes);
          (*(v163 + 8))(v241, v247);
        }

        else
        {
          v200 = *(v0 + 1744);
          v201 = *(v0 + 1736);
          sub_100018D00(*(v0 + 1728), type metadata accessor for KeyDropBeaconGroupAttributes);

          sub_100391554(v0 + 160);

          sub_100018D00(v201, type metadata accessor for KeyDropBeaconGroupAttributes);
          sub_100018D00(v200, type metadata accessor for KeyDropBeaconGroupAttributes);
          (*(v163 + 8))(v162, v164);
        }

        goto LABEL_23;
      case 0xD:
        v125 = v0 + 952;
        v126 = *(v0 + 2216);
        v127 = *(v0 + 2168);
        v128 = *(v0 + 1640);
        sub_100D11DC8(v128, *(v0 + 2176), type metadata accessor for SharingCircleKeyManager.Instruction);
        sub_100D11DC8(v128, v127, type metadata accessor for SharingCircleKeyManager.Instruction);
        sub_1003914F8(v0 + 160, v0 + 880);
        v129 = Logger.logObject.getter();
        v130 = static os_log_type_t.default.getter();
        v131 = os_log_type_enabled(v129, v130);
        v132 = *(v0 + 2176);
        v133 = *(v0 + 2168);
        if (v131)
        {
          v134 = *(v0 + 2096);
          v135 = *(v0 + 1840);
          v243 = *(v0 + 2168);
          v136 = swift_slowAlloc();
          v250[0] = swift_slowAlloc();
          *v136 = 141558531;
          *(v136 + 4) = 1752392040;
          *(v136 + 12) = 2081;
          v246 = v129;
          v137 = *(v134 + 24);
          sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID);
          v138 = dispatch thunk of CustomStringConvertible.description.getter();
          v140 = v139;
          sub_100018D00(v132, type metadata accessor for SharingCircleKeyManager.Instruction);
          v141 = sub_1000136BC(v138, v140, v250);
          v125 = v0 + 952;

          *(v136 + 14) = v141;
          *(v136 + 22) = 2080;
          v142 = v243 + *(v134 + 20);
          v143 = dispatch thunk of CustomStringConvertible.description.getter();
          v145 = v144;
          sub_100018D00(v243, type metadata accessor for SharingCircleKeyManager.Instruction);
          v146 = sub_1000136BC(v143, v145, v250);

          *(v136 + 24) = v146;
          _os_log_impl(&_mh_execute_header, v246, v130, "Updating beacon attributes for beacon: %{private,mask.hash}s, shareId: %s.", v136, 0x20u);
          swift_arrayDestroy();
        }

        else
        {

          sub_100018D00(v133, type metadata accessor for SharingCircleKeyManager.Instruction);
          sub_100018D00(v132, type metadata accessor for SharingCircleKeyManager.Instruction);
        }

        v150 = type metadata accessor for PropertyListDecoder();
        v151 = *(v150 + 48);
        v152 = *(v150 + 52);
        swift_allocObject();
        PropertyListDecoder.init()();
        sub_100D12F40();
        dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
        v176 = *(v0 + 2096);
        v177 = *(v0 + 1872);
        v178 = *(v0 + 1640);

        v179 = *(v125 + 48);
        *(v0 + 1128) = *(v125 + 32);
        *(v0 + 1144) = v179;
        *(v0 + 1160) = *(v125 + 64);
        v180 = *(v125 + 16);
        *(v0 + 1096) = *v125;
        *(v0 + 1112) = v180;
        v181 = *(v176 + 24);
        v182 = getuid();
        sub_1000294F0(v182);
        v183 = swift_task_alloc();
        *(v0 + 2688) = v183;
        *v183 = v0;
        v183[1] = sub_100C9578C;
        v184 = *(v0 + 2248);
        v185 = *(v0 + 1872);

        return sub_1012D7224(v0 + 1096, v178 + v181, v185);
      case 0xE:
        v67 = *(v0 + 2248);
        v17 = *(v0 + 2056);
        v18 = *(v0 + 2032);
        v19 = *(v0 + 2024);
        v20 = v0 + 160;
        v21 = v0 + 448;
        goto LABEL_22;
      case 0xF:
        v99 = *(v0 + 2248);
        v17 = *(v0 + 2056);
        v18 = *(v0 + 2032);
        v19 = *(v0 + 2024);
        v20 = v0 + 160;
        v21 = v0 + 376;
        goto LABEL_22;
      case 0x10:
        v40 = *(v0 + 1712);
        v41 = *(v0 + 1696);
        v42 = type metadata accessor for PropertyListDecoder();
        v43 = *(v42 + 48);
        v44 = *(v42 + 52);
        swift_allocObject();
        sub_1003914F8(v0 + 160, v0 + 304);
        PropertyListDecoder.init()();
        sub_100D13BF8(&qword_1016B9BA0, type metadata accessor for KeyDropLostItemDates);
        dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
        v45 = *(v0 + 2216);
        v46 = *(v0 + 2160);
        v47 = *(v0 + 2152);
        v48 = *(v0 + 1640);

        sub_100D11DC8(v48, v46, type metadata accessor for SharingCircleKeyManager.Instruction);
        sub_100D11DC8(v48, v47, type metadata accessor for SharingCircleKeyManager.Instruction);
        v49 = Logger.logObject.getter();
        v50 = static os_log_type_t.default.getter();
        v51 = os_log_type_enabled(v49, v50);
        v52 = *(v0 + 2160);
        v53 = *(v0 + 2152);
        if (v51)
        {
          v54 = *(v0 + 2096);
          v55 = *(v0 + 1840);
          v56 = swift_slowAlloc();
          v250[0] = swift_slowAlloc();
          *v56 = 141558531;
          *(v56 + 4) = 1752392040;
          *(v56 + 12) = 2081;
          v244 = v50;
          v57 = *(v54 + 24);
          sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID);
          v58 = dispatch thunk of CustomStringConvertible.description.getter();
          v60 = v59;
          sub_100018D00(v52, type metadata accessor for SharingCircleKeyManager.Instruction);
          v61 = sub_1000136BC(v58, v60, v250);

          *(v56 + 14) = v61;
          *(v56 + 22) = 2080;
          v62 = v53 + *(v54 + 20);
          v63 = dispatch thunk of CustomStringConvertible.description.getter();
          v65 = v64;
          sub_100018D00(v53, type metadata accessor for SharingCircleKeyManager.Instruction);
          v66 = sub_1000136BC(v63, v65, v250);

          *(v56 + 24) = v66;
          _os_log_impl(&_mh_execute_header, v49, v244, "Updating lost item dates for beacon: %{private,mask.hash}s, shareId: %s.", v56, 0x20u);
          swift_arrayDestroy();
        }

        else
        {

          sub_100018D00(v53, type metadata accessor for SharingCircleKeyManager.Instruction);
          sub_100018D00(v52, type metadata accessor for SharingCircleKeyManager.Instruction);
        }

        v198 = *(v0 + 1864);
        *(v0 + 2844) = *(*(v0 + 2096) + 24);
        v199 = getuid();
        sub_1000294F0(v199);
        v96 = sub_100C95E68;
        v97 = 0;
        goto LABEL_29;
      default:
        v111 = *(v0 + 2248);
        v17 = *(v0 + 2056);
        v18 = *(v0 + 2032);
        v19 = *(v0 + 2024);
        v20 = v0 + 160;
        v21 = v0 + 232;
LABEL_22:
        sub_1003914F8(v20, v21);
        (*(v18 + 8))(v17, v19);

        sub_100391554(v0 + 160);
        goto LABEL_23;
    }
  }

  else
  {
    v22 = *(v0 + 2216);
    v23 = *(v0 + 2144);
    v24 = *(v0 + 1640);
    sub_100D11DC8(*(v0 + 1632), *(v0 + 2072), type metadata accessor for KeyDropInterface.KeyPackage);
    sub_100D11DC8(v24, v23, type metadata accessor for SharingCircleKeyManager.Instruction);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();
    v27 = os_log_type_enabled(v25, v26);
    v28 = *(v0 + 2248);
    v29 = *(v0 + 2144);
    v30 = *(v0 + 2072);
    if (v27)
    {
      v31 = swift_slowAlloc();
      v250[0] = swift_slowAlloc();
      *v31 = 136315394;
      v32 = sub_101255410();
      v34 = v33;
      sub_100018D00(v30, type metadata accessor for KeyDropInterface.KeyPackage);
      v35 = sub_1000136BC(v32, v34, v250);

      *(v31 + 4) = v35;
      *(v31 + 12) = 2080;
      v36 = sub_100C71778();
      v38 = v37;
      sub_100018D00(v29, type metadata accessor for SharingCircleKeyManager.Instruction);
      v39 = sub_1000136BC(v36, v38, v250);

      *(v31 + 14) = v39;
      _os_log_impl(&_mh_execute_header, v25, v26, "There are no keys to save in the package: %s, instruction: %s.", v31, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_100018D00(v29, type metadata accessor for SharingCircleKeyManager.Instruction);
      sub_100018D00(v30, type metadata accessor for KeyDropInterface.KeyPackage);
    }

LABEL_23:
    v112 = *(v0 + 2208);
    v113 = *(v0 + 2200);
    v114 = *(v0 + 2192);
    v115 = *(v0 + 2184);
    v116 = *(v0 + 2176);
    v117 = *(v0 + 2168);
    v118 = *(v0 + 2160);
    v119 = *(v0 + 2152);
    v120 = *(v0 + 2144);
    v121 = *(v0 + 2136);
    v206 = *(v0 + 2128);
    v207 = *(v0 + 2120);
    v208 = *(v0 + 2088);
    v209 = *(v0 + 2080);
    v210 = *(v0 + 2072);
    v211 = *(v0 + 2056);
    v212 = *(v0 + 2048);
    v213 = *(v0 + 2040);
    v214 = *(v0 + 2016);
    v215 = *(v0 + 2008);
    v216 = *(v0 + 2000);
    v217 = *(v0 + 1992);
    v218 = *(v0 + 1976);
    v219 = *(v0 + 1968);
    v220 = *(v0 + 1960);
    v221 = *(v0 + 1952);
    v222 = *(v0 + 1920);
    v223 = *(v0 + 1912);
    v224 = *(v0 + 1904);
    v225 = *(v0 + 1888);
    v226 = *(v0 + 1880);
    v227 = *(v0 + 1872);
    v228 = *(v0 + 1864);
    v229 = *(v0 + 1832);
    v230 = *(v0 + 1824);
    v231 = *(v0 + 1808);
    v232 = *(v0 + 1792);
    v233 = *(v0 + 1768);
    v234 = *(v0 + 1744);
    v235 = *(v0 + 1736);
    v236 = *(v0 + 1728);
    v238 = *(v0 + 1712);
    v240 = *(v0 + 1688);
    v242 = *(v0 + 1680);
    v245 = *(v0 + 1672);
    v248 = *(v0 + 1664);

    v122 = *(v0 + 8);

    return v122();
  }

  return result;
}

uint64_t sub_100C9025C()
{
  v2 = *v1;
  v3 = *(*v1 + 2304);
  v4 = *v1;
  *(*v1 + 2312) = v0;

  v5 = *(v2 + 1648);
  if (v0)
  {
    v6 = sub_100C97B18;
  }

  else
  {
    v6 = sub_100C90388;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100C90388()
{
  v1 = v0[287];
  v2 = v0[286];
  v3 = v0[285];
  v4 = v0[281];
  v5 = v0[257];
  v6 = v0[254];
  v7 = v0[253];
  v8 = v0[252];

  sub_100391554((v0 + 20));
  sub_100016590(v2, v1);

  sub_100018D00(v8, type metadata accessor for SharingCircleSecretValue);
  (*(v6 + 8))(v5, v7);
  v9 = v0[276];
  v10 = v0[275];
  v11 = v0[274];
  v12 = v0[273];
  v13 = v0[272];
  v14 = v0[271];
  v15 = v0[270];
  v16 = v0[269];
  v17 = v0[268];
  v18 = v0[267];
  v21 = v0[266];
  v22 = v0[265];
  v23 = v0[261];
  v24 = v0[260];
  v25 = v0[259];
  v26 = v0[257];
  v27 = v0[256];
  v28 = v0[255];
  v29 = v0[252];
  v30 = v0[251];
  v31 = v0[250];
  v32 = v0[249];
  v33 = v0[247];
  v34 = v0[246];
  v35 = v0[245];
  v36 = v0[244];
  v37 = v0[240];
  v38 = v0[239];
  v39 = v0[238];
  v40 = v0[236];
  v41 = v0[235];
  v42 = v0[234];
  v43 = v0[233];
  v44 = v0[229];
  v45 = v0[228];
  v46 = v0[226];
  v47 = v0[224];
  v48 = v0[221];
  v49 = v0[218];
  v50 = v0[217];
  v51 = v0[216];
  v52 = v0[214];
  v53 = v0[211];
  v54 = v0[210];
  v55 = v0[209];
  v56 = v0[208];

  v19 = v0[1];

  return v19();
}

uint64_t sub_100C906E8()
{
  v1 = *(v0 + 2824);
  v2 = *(v0 + 2224);
  v3 = *(v0 + 1888);
  v4 = *(v0 + 1856);
  v5 = *(v0 + 1848);
  v6 = *(v0 + 1840);
  v7 = *(v0 + 1640);
  v8 = *(v5 + 16);
  *(v0 + 2320) = v8;
  *(v0 + 2328) = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v8(v3, v7 + v1, v6);
  v9 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v10 = swift_allocObject();
  *(v0 + 2336) = v10;
  *(v10 + 16) = v2;
  (*(v5 + 32))(v10 + v9, v3, v6);
  v11 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v12 = swift_task_alloc();
  *(v0 + 2344) = v12;
  *v12 = v0;
  v12[1] = sub_100C90864;
  v13 = *(v0 + 1920);
  v14 = *(v0 + 1896);

  return unsafeBlocking<A>(context:_:)(v13, 0xD000000000000010, 0x800000010134A8C0, sub_100D14908, v10, v14);
}

uint64_t sub_100C90864()
{
  v1 = *(*v0 + 2344);
  v2 = *(*v0 + 2336);
  v3 = *(*v0 + 1648);
  v5 = *v0;

  return _swift_task_switch(sub_100C90990, v3, 0);
}

uint64_t sub_100C90990()
{
  v1 = v0[240];
  if ((*(v0[242] + 48))(v1, 1, v0[241]) == 1)
  {
    v2 = v0[281];
    v3 = v0[257];
    v4 = v0[254];
    v5 = v0[253];
    sub_10000B3A8(v1, &unk_101698C30, &unk_101392630);
    sub_1001BAEE0();
    swift_allocError();
    *v6 = 0;
    swift_willThrow();
    sub_100391554((v0 + 20));

    (*(v4 + 8))(v3, v5);
    v11 = v0[276];
    v12 = v0[275];
    v13 = v0[274];
    v14 = v0[273];
    v15 = v0[272];
    v16 = v0[271];
    v17 = v0[270];
    v18 = v0[269];
    v19 = v0[268];
    v20 = v0[267];
    v39 = v0[266];
    v40 = v0[265];
    v41 = v0[261];
    v42 = v0[260];
    v43 = v0[259];
    v44 = v0[257];
    v45 = v0[256];
    v46 = v0[255];
    v47 = v0[252];
    v48 = v0[251];
    v49 = v0[250];
    v50 = v0[249];
    v51 = v0[247];
    v52 = v0[246];
    v53 = v0[245];
    v54 = v0[244];
    v55 = v0[240];
    v56 = v0[239];
    v57 = v0[238];
    v58 = v0[236];
    v59 = v0[235];
    v60 = v0[234];
    v61 = v0[233];
    v62 = v0[229];
    v63 = v0[228];
    v64 = v0[226];
    v65 = v0[224];
    v66 = v0[221];
    v67 = v0[218];
    v68 = v0[217];
    v69 = v0[216];
    v70 = v0[214];
    v71 = v0[211];
    v72 = v0[210];
    v74 = v0[209];
    v76 = v0[208];

    v21 = v0[1];

    return v21();
  }

  else
  {
    v7 = v0[204];
    sub_100D12974(v1, v0[247], type metadata accessor for SharedBeaconRecord);
    v8 = sub_100D0F3AC(v7);
    v9 = v0[281];
    v10 = v0[247];
    v24 = v23;
    v26 = v25;
    v27 = v0[273];
    v73 = v0[263];
    v75 = v0[264];
    v28 = v0[246];
    v29 = v0[243];
    v30 = v0[242];
    v31 = v0[205];
    v77 = v8;
    type metadata accessor for Transaction();
    sub_100D11DC8(v10, v28, type metadata accessor for SharedBeaconRecord);
    sub_100D11DC8(v31, v27, type metadata accessor for SharingCircleKeyManager.Instruction);
    v32 = (*(v30 + 80) + 24) & ~*(v30 + 80);
    v33 = (v29 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
    v34 = (*(v73 + 80) + v33 + 24) & ~*(v73 + 80);
    v35 = swift_allocObject();
    *(v35 + 16) = v9;
    sub_100D12974(v28, v35 + v32, type metadata accessor for SharedBeaconRecord);
    v36 = (v35 + v33);
    *v36 = v77;
    v36[1] = v24;
    v36[2] = v26;
    sub_100D12974(v27, v35 + v34, type metadata accessor for SharingCircleKeyManager.Instruction);

    static Transaction.asyncTask(name:block:)();

    v37 = async function pointer to daemon.getter[1];
    v38 = swift_task_alloc();
    v0[294] = v38;
    *v38 = v0;
    v38[1] = sub_100C90F88;

    return daemon.getter();
  }
}

uint64_t sub_100C90F88(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 2352);
  v12 = *v1;
  *(v3 + 2360) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 2368) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for ObservationStoreService();
  v9 = sub_100D13BF8(&qword_1016AA400, &type metadata accessor for Daemon);
  v10 = sub_100D13BF8(&qword_1016AA450, type metadata accessor for ObservationStoreService);
  *v6 = v12;
  v6[1] = sub_100C91164;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100C91164(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 2368);
  v5 = *v2;
  *(*v2 + 2376) = a1;

  v6 = *(v3 + 2360);
  v7 = *(v3 + 1648);
  if (v1)
  {

    v8 = sub_100C912C8;
  }

  else
  {

    v8 = sub_100C9160C;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_100C912C8()
{
  v1 = v0[281];
  v2 = v0[257];
  v3 = v0[254];
  v4 = v0[253];
  v5 = v0[247];
  sub_100391554((v0 + 20));

  sub_100018D00(v5, type metadata accessor for SharedBeaconRecord);
  (*(v3 + 8))(v2, v4);
  v6 = v0[276];
  v7 = v0[275];
  v8 = v0[274];
  v9 = v0[273];
  v10 = v0[272];
  v11 = v0[271];
  v12 = v0[270];
  v13 = v0[269];
  v14 = v0[268];
  v15 = v0[267];
  v18 = v0[266];
  v19 = v0[265];
  v20 = v0[261];
  v21 = v0[260];
  v22 = v0[259];
  v23 = v0[257];
  v24 = v0[256];
  v25 = v0[255];
  v26 = v0[252];
  v27 = v0[251];
  v28 = v0[250];
  v29 = v0[249];
  v30 = v0[247];
  v31 = v0[246];
  v32 = v0[245];
  v33 = v0[244];
  v34 = v0[240];
  v35 = v0[239];
  v36 = v0[238];
  v37 = v0[236];
  v38 = v0[235];
  v39 = v0[234];
  v40 = v0[233];
  v41 = v0[229];
  v42 = v0[228];
  v43 = v0[226];
  v44 = v0[224];
  v45 = v0[221];
  v46 = v0[218];
  v47 = v0[217];
  v48 = v0[216];
  v49 = v0[214];
  v50 = v0[211];
  v51 = v0[210];
  v52 = v0[209];
  v53 = v0[208];

  v16 = v0[1];

  return v16();
}

uint64_t sub_100C9160C()
{
  v1 = *(v0 + 2328);
  v2 = *(v0 + 2272);
  v3 = *(v0 + 2264);
  v4 = *(v0 + 2256);
  v5 = *(v0 + 2056);
  v6 = *(v0 + 2024);
  v7 = *(v0 + 1832);
  v8 = *(v0 + 1816);
  (*(v0 + 2320))(v7, *(v0 + 1976) + *(*(v0 + 1928) + 20), *(v0 + 1840));
  v9 = (v7 + v8[6]);
  v9[3] = &type metadata for PrimaryIndex;
  v9[4] = sub_10002A2B8();
  *v9 = v4;
  v3(v7 + v8[7], v5, v6);
  *(v7 + v8[5]) = 7;
  v10 = swift_task_alloc();
  *(v0 + 2384) = v10;
  *v10 = v0;
  v10[1] = sub_100C9173C;
  v11 = *(v0 + 2376);
  v12 = *(v0 + 1832);

  return sub_1010CDAC4(v12);
}

uint64_t sub_100C9173C()
{
  v2 = *v1;
  v3 = *(*v1 + 2384);
  v4 = *v1;
  *(*v1 + 2392) = v0;

  v5 = *(v2 + 1648);
  if (v0)
  {
    v6 = sub_100C97E7C;
  }

  else
  {
    v6 = sub_100C91868;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100C91868()
{
  v1 = v0[297];
  v2 = v0[281];
  v3 = v0[257];
  v4 = v0[254];
  v5 = v0[253];
  v6 = v0[247];
  v7 = v0[229];

  sub_100391554((v0 + 20));

  sub_100018D00(v6, type metadata accessor for SharedBeaconRecord);
  (*(v4 + 8))(v3, v5);
  sub_100018D00(v7, type metadata accessor for KeySyncMetadata);
  v8 = v0[276];
  v9 = v0[275];
  v10 = v0[274];
  v11 = v0[273];
  v12 = v0[272];
  v13 = v0[271];
  v14 = v0[270];
  v15 = v0[269];
  v16 = v0[268];
  v17 = v0[267];
  v20 = v0[266];
  v21 = v0[265];
  v22 = v0[261];
  v23 = v0[260];
  v24 = v0[259];
  v25 = v0[257];
  v26 = v0[256];
  v27 = v0[255];
  v28 = v0[252];
  v29 = v0[251];
  v30 = v0[250];
  v31 = v0[249];
  v32 = v0[247];
  v33 = v0[246];
  v34 = v0[245];
  v35 = v0[244];
  v36 = v0[240];
  v37 = v0[239];
  v38 = v0[238];
  v39 = v0[236];
  v40 = v0[235];
  v41 = v0[234];
  v42 = v0[233];
  v43 = v0[229];
  v44 = v0[228];
  v45 = v0[226];
  v46 = v0[224];
  v47 = v0[221];
  v48 = v0[218];
  v49 = v0[217];
  v50 = v0[216];
  v51 = v0[214];
  v52 = v0[211];
  v53 = v0[210];
  v54 = v0[209];
  v55 = v0[208];

  v18 = v0[1];

  return v18();
}

uint64_t sub_100C91BD4()
{
  v1 = *(v0 + 2828);
  v2 = *(v0 + 2224);
  v3 = *(v0 + 1888);
  v4 = *(v0 + 1856);
  v5 = *(v0 + 1848);
  v6 = *(v0 + 1840);
  v7 = *(v0 + 1640);
  v8 = *(v5 + 16);
  *(v0 + 2400) = v8;
  *(v0 + 2408) = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v8(v3, v7 + v1, v6);
  v9 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v10 = swift_allocObject();
  *(v0 + 2416) = v10;
  *(v10 + 16) = v2;
  (*(v5 + 32))(v10 + v9, v3, v6);
  v11 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v12 = swift_task_alloc();
  *(v0 + 2424) = v12;
  *v12 = v0;
  v12[1] = sub_100C91D50;
  v13 = *(v0 + 1912);
  v14 = *(v0 + 1896);

  return unsafeBlocking<A>(context:_:)(v13, 0xD000000000000010, 0x800000010134A8C0, sub_100D14908, v10, v14);
}

uint64_t sub_100C91D50()
{
  v1 = *(*v0 + 2424);
  v2 = *(*v0 + 2416);
  v3 = *(*v0 + 1648);
  v5 = *v0;

  return _swift_task_switch(sub_100C91E7C, v3, 0);
}

uint64_t sub_100C91E7C()
{
  v1 = v0[239];
  if ((*(v0[242] + 48))(v1, 1, v0[241]) == 1)
  {
    v2 = v0[281];
    v3 = v0[257];
    v4 = v0[254];
    v5 = v0[253];
    sub_10000B3A8(v1, &unk_101698C30, &unk_101392630);
    sub_1001BAEE0();
    swift_allocError();
    *v6 = 0;
    swift_willThrow();
    sub_100391554((v0 + 20));

    (*(v4 + 8))(v3, v5);
    v10 = v0[276];
    v11 = v0[275];
    v12 = v0[274];
    v13 = v0[273];
    v14 = v0[272];
    v15 = v0[271];
    v16 = v0[270];
    v17 = v0[269];
    v18 = v0[268];
    v19 = v0[267];
    v39 = v0[266];
    v40 = v0[265];
    v41 = v0[261];
    v42 = v0[260];
    v43 = v0[259];
    v44 = v0[257];
    v45 = v0[256];
    v46 = v0[255];
    v47 = v0[252];
    v48 = v0[251];
    v49 = v0[250];
    v50 = v0[249];
    v51 = v0[247];
    v52 = v0[246];
    v53 = v0[245];
    v54 = v0[244];
    v55 = v0[240];
    v56 = v0[239];
    v57 = v0[238];
    v58 = v0[236];
    v59 = v0[235];
    v60 = v0[234];
    v61 = v0[233];
    v62 = v0[229];
    v63 = v0[228];
    v64 = v0[226];
    v65 = v0[224];
    v66 = v0[221];
    v67 = v0[218];
    v68 = v0[217];
    v69 = v0[216];
    v70 = v0[214];
    v71 = v0[211];
    v72 = v0[210];
    v74 = v0[209];
    v76 = v0[208];

    v20 = v0[1];

    return v20();
  }

  else
  {
    v7 = v0[204];
    sub_100D12974(v1, v0[245], type metadata accessor for SharedBeaconRecord);
    v8 = sub_100D0F3AC(v7);
    v9 = v0[281];
    v23 = v22;
    v25 = v24;
    v26 = v0[273];
    v73 = v0[263];
    v75 = v0[264];
    v27 = v0[246];
    v28 = v0[245];
    v29 = v0[243];
    v30 = v0[242];
    v31 = v0[205];
    v77 = v8;
    type metadata accessor for Transaction();
    sub_100D11DC8(v28, v27, type metadata accessor for SharedBeaconRecord);
    sub_100D11DC8(v31, v26, type metadata accessor for SharingCircleKeyManager.Instruction);
    v32 = (*(v30 + 80) + 24) & ~*(v30 + 80);
    v33 = (v29 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
    v34 = (*(v73 + 80) + v33 + 24) & ~*(v73 + 80);
    v35 = swift_allocObject();
    *(v35 + 16) = v9;
    sub_100D12974(v27, v35 + v32, type metadata accessor for SharedBeaconRecord);
    v36 = (v35 + v33);
    *v36 = v77;
    v36[1] = v23;
    v36[2] = v25;
    sub_100D12974(v26, v35 + v34, type metadata accessor for SharingCircleKeyManager.Instruction);

    static Transaction.asyncTask(name:block:)();

    v37 = async function pointer to daemon.getter[1];
    v38 = swift_task_alloc();
    v0[304] = v38;
    *v38 = v0;
    v38[1] = sub_100C92478;

    return daemon.getter();
  }
}

uint64_t sub_100C92478(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 2432);
  v12 = *v1;
  *(v3 + 2440) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 2448) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for ObservationStoreService();
  v9 = sub_100D13BF8(&qword_1016AA400, &type metadata accessor for Daemon);
  v10 = sub_100D13BF8(&qword_1016AA450, type metadata accessor for ObservationStoreService);
  *v6 = v12;
  v6[1] = sub_100C92654;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100C92654(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 2448);
  v5 = *v2;
  *(*v2 + 2456) = a1;

  v6 = *(v3 + 2440);
  v7 = *(v3 + 1648);
  if (v1)
  {

    v8 = sub_100C927B8;
  }

  else
  {

    v8 = sub_100C92AFC;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_100C927B8()
{
  v1 = v0[281];
  v2 = v0[257];
  v3 = v0[254];
  v4 = v0[253];
  v5 = v0[245];
  sub_100391554((v0 + 20));

  sub_100018D00(v5, type metadata accessor for SharedBeaconRecord);
  (*(v3 + 8))(v2, v4);
  v6 = v0[276];
  v7 = v0[275];
  v8 = v0[274];
  v9 = v0[273];
  v10 = v0[272];
  v11 = v0[271];
  v12 = v0[270];
  v13 = v0[269];
  v14 = v0[268];
  v15 = v0[267];
  v18 = v0[266];
  v19 = v0[265];
  v20 = v0[261];
  v21 = v0[260];
  v22 = v0[259];
  v23 = v0[257];
  v24 = v0[256];
  v25 = v0[255];
  v26 = v0[252];
  v27 = v0[251];
  v28 = v0[250];
  v29 = v0[249];
  v30 = v0[247];
  v31 = v0[246];
  v32 = v0[245];
  v33 = v0[244];
  v34 = v0[240];
  v35 = v0[239];
  v36 = v0[238];
  v37 = v0[236];
  v38 = v0[235];
  v39 = v0[234];
  v40 = v0[233];
  v41 = v0[229];
  v42 = v0[228];
  v43 = v0[226];
  v44 = v0[224];
  v45 = v0[221];
  v46 = v0[218];
  v47 = v0[217];
  v48 = v0[216];
  v49 = v0[214];
  v50 = v0[211];
  v51 = v0[210];
  v52 = v0[209];
  v53 = v0[208];

  v16 = v0[1];

  return v16();
}

uint64_t sub_100C92AFC()
{
  v1 = *(v0 + 2408);
  v2 = *(v0 + 2272);
  v3 = *(v0 + 2264);
  v4 = *(v0 + 2256);
  v5 = *(v0 + 2056);
  v6 = *(v0 + 2024);
  v7 = *(v0 + 1824);
  v8 = *(v0 + 1816);
  (*(v0 + 2400))(v7, *(v0 + 1960) + *(*(v0 + 1928) + 20), *(v0 + 1840));
  v9 = (v7 + v8[6]);
  v9[3] = &type metadata for PrimaryIndex;
  v9[4] = sub_10002A2B8();
  *v9 = v4;
  v3(v7 + v8[7], v5, v6);
  *(v7 + v8[5]) = 7;
  v10 = swift_task_alloc();
  *(v0 + 2464) = v10;
  *v10 = v0;
  v10[1] = sub_100C92C2C;
  v11 = *(v0 + 2456);
  v12 = *(v0 + 1824);

  return sub_1010CDAC4(v12);
}

uint64_t sub_100C92C2C()
{
  v2 = *v1;
  v3 = *(*v1 + 2464);
  v4 = *v1;
  *(*v1 + 2472) = v0;

  v5 = *(v2 + 1648);
  if (v0)
  {
    v6 = sub_100C98578;
  }

  else
  {
    v6 = sub_100C92D58;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100C92D58()
{
  v1 = v0[307];
  v2 = v0[281];
  v3 = v0[257];
  v4 = v0[254];
  v5 = v0[253];
  v6 = v0[245];
  v7 = v0[228];

  sub_100391554((v0 + 20));

  sub_100018D00(v6, type metadata accessor for SharedBeaconRecord);
  (*(v4 + 8))(v3, v5);
  sub_100018D00(v7, type metadata accessor for KeySyncMetadata);
  v8 = v0[276];
  v9 = v0[275];
  v10 = v0[274];
  v11 = v0[273];
  v12 = v0[272];
  v13 = v0[271];
  v14 = v0[270];
  v15 = v0[269];
  v16 = v0[268];
  v17 = v0[267];
  v20 = v0[266];
  v21 = v0[265];
  v22 = v0[261];
  v23 = v0[260];
  v24 = v0[259];
  v25 = v0[257];
  v26 = v0[256];
  v27 = v0[255];
  v28 = v0[252];
  v29 = v0[251];
  v30 = v0[250];
  v31 = v0[249];
  v32 = v0[247];
  v33 = v0[246];
  v34 = v0[245];
  v35 = v0[244];
  v36 = v0[240];
  v37 = v0[239];
  v38 = v0[238];
  v39 = v0[236];
  v40 = v0[235];
  v41 = v0[234];
  v42 = v0[233];
  v43 = v0[229];
  v44 = v0[228];
  v45 = v0[226];
  v46 = v0[224];
  v47 = v0[221];
  v48 = v0[218];
  v49 = v0[217];
  v50 = v0[216];
  v51 = v0[214];
  v52 = v0[211];
  v53 = v0[210];
  v54 = v0[209];
  v55 = v0[208];

  v18 = v0[1];

  return v18();
}

uint64_t sub_100C930C4()
{
  v1 = *(v0 + 2224);
  v2 = *(v0 + 1888);
  v3 = *(v0 + 1856);
  v4 = *(v0 + 1848);
  v5 = *(v0 + 1840);
  (*(v4 + 16))(v2, *(v0 + 1640) + *(v0 + 2832), v5);
  v6 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v7 = swift_allocObject();
  *(v0 + 2480) = v7;
  *(v7 + 16) = v1;
  (*(v4 + 32))(v7 + v6, v2, v5);
  v8 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v9 = swift_task_alloc();
  *(v0 + 2488) = v9;
  *v9 = v0;
  v9[1] = sub_100C93230;
  v10 = *(v0 + 1904);
  v11 = *(v0 + 1896);

  return unsafeBlocking<A>(context:_:)(v10, 0xD000000000000010, 0x800000010134A8C0, sub_100D14908, v7, v11);
}

uint64_t sub_100C93230()
{
  v1 = *(*v0 + 2488);
  v2 = *(*v0 + 2480);
  v3 = *(*v0 + 1648);
  v5 = *v0;

  return _swift_task_switch(sub_100C9335C, v3, 0);
}

uint64_t sub_100C9335C()
{
  v1 = v0[238];
  if ((*(v0[242] + 48))(v1, 1, v0[241]) == 1)
  {
    v2 = v0[281];
    v3 = v0[257];
    v4 = v0[254];
    v5 = v0[253];
    sub_10000B3A8(v1, &unk_101698C30, &unk_101392630);
    sub_1001BAEE0();
    swift_allocError();
    *v6 = 0;
    swift_willThrow();
    sub_100391554((v0 + 20));

    (*(v4 + 8))(v3, v5);
    v10 = v0[276];
    v11 = v0[275];
    v12 = v0[274];
    v13 = v0[273];
    v14 = v0[272];
    v15 = v0[271];
    v16 = v0[270];
    v17 = v0[269];
    v18 = v0[268];
    v19 = v0[267];
    v47 = v0[266];
    v48 = v0[265];
    v50 = v0[261];
    v52 = v0[260];
    v54 = v0[259];
    v56 = v0[257];
    v58 = v0[256];
    v60 = v0[255];
    v62 = v0[252];
    v64 = v0[251];
    v66 = v0[250];
    v68 = v0[249];
    v70 = v0[247];
    v72 = v0[246];
    v74 = v0[245];
    v76 = v0[244];
    v78 = v0[240];
    v80 = v0[239];
    v82 = v0[238];
    v84 = v0[236];
    v86 = v0[235];
    v88 = v0[234];
    v90 = v0[233];
    v92 = v0[229];
    v94 = v0[228];
    v96 = v0[226];
    v98 = v0[224];
    v100 = v0[221];
    v102 = v0[218];
    v104 = v0[217];
    v107 = v0[216];
    v110 = v0[214];
    v113 = v0[211];
    v115 = v0[210];
    v118 = v0[209];
    v121 = v0[208];
  }

  else
  {
    v7 = v0[204];
    sub_100D12974(v1, v0[244], type metadata accessor for SharedBeaconRecord);
    v8 = sub_100D0FC60(v7);
    v9 = v0[281];
    v23 = v22;
    v25 = v24;
    v26 = v0[273];
    v105 = v0[263];
    v108 = v0[264];
    v122 = v0[253];
    v124 = v0[257];
    v27 = v0[246];
    v28 = v0[244];
    v116 = v28;
    v119 = v0[254];
    v29 = v0[243];
    v30 = v0[242];
    v31 = v0[205];
    v111 = v8;
    type metadata accessor for Transaction();
    sub_100D11DC8(v28, v27, type metadata accessor for SharedBeaconRecord);
    sub_100D11DC8(v31, v26, type metadata accessor for SharingCircleKeyManager.Instruction);
    v32 = (*(v30 + 80) + 24) & ~*(v30 + 80);
    v33 = (v29 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
    v34 = (*(v105 + 80) + v33 + 24) & ~*(v105 + 80);
    v35 = swift_allocObject();
    *(v35 + 16) = v9;
    sub_100D12974(v27, v35 + v32, type metadata accessor for SharedBeaconRecord);
    v36 = (v35 + v33);
    *v36 = v111;
    v36[1] = v23;
    v36[2] = v25;
    sub_100D12974(v26, v35 + v34, type metadata accessor for SharingCircleKeyManager.Instruction);

    static Transaction.asyncTask(name:block:)();

    sub_100391554((v0 + 20));

    sub_100018D00(v116, type metadata accessor for SharedBeaconRecord);
    (*(v119 + 8))(v124, v122);
    v37 = v0[276];
    v38 = v0[275];
    v39 = v0[274];
    v40 = v0[273];
    v41 = v0[272];
    v42 = v0[271];
    v43 = v0[270];
    v44 = v0[269];
    v45 = v0[268];
    v46 = v0[267];
    v49 = v0[266];
    v51 = v0[265];
    v53 = v0[261];
    v55 = v0[260];
    v57 = v0[259];
    v59 = v0[257];
    v61 = v0[256];
    v63 = v0[255];
    v65 = v0[252];
    v67 = v0[251];
    v69 = v0[250];
    v71 = v0[249];
    v73 = v0[247];
    v75 = v0[246];
    v77 = v0[245];
    v79 = v0[244];
    v81 = v0[240];
    v83 = v0[239];
    v85 = v0[238];
    v87 = v0[236];
    v89 = v0[235];
    v91 = v0[234];
    v93 = v0[233];
    v95 = v0[229];
    v97 = v0[228];
    v99 = v0[226];
    v101 = v0[224];
    v103 = v0[221];
    v106 = v0[218];
    v109 = v0[217];
    v112 = v0[216];
    v114 = v0[214];
    v117 = v0[211];
    v120 = v0[210];
    v123 = v0[209];
    v125 = v0[208];
  }

  v20 = v0[1];

  return v20();
}

uint64_t sub_100C93BB4()
{
  v2 = *v1;
  v3 = *(*v1 + 2512);
  v4 = *v1;
  *(*v1 + 2520) = v0;

  v5 = *(v2 + 1648);
  if (v0)
  {
    v6 = sub_100C98C74;
  }

  else
  {
    v6 = sub_100C93CE0;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100C93CE0()
{
  v1 = v0[313];
  v2 = v0[312];
  v3 = v0[281];
  v4 = v0[257];
  v5 = v0[254];
  v6 = v0[253];
  v7 = v0[251];
  sub_100391554((v0 + 20));

  sub_100016590(v2, v1);
  sub_100018D00(v7, type metadata accessor for SharingCircleSecretValue);
  (*(v5 + 8))(v4, v6);
  v8 = v0[276];
  v9 = v0[275];
  v10 = v0[274];
  v11 = v0[273];
  v12 = v0[272];
  v13 = v0[271];
  v14 = v0[270];
  v15 = v0[269];
  v16 = v0[268];
  v17 = v0[267];
  v20 = v0[266];
  v21 = v0[265];
  v22 = v0[261];
  v23 = v0[260];
  v24 = v0[259];
  v25 = v0[257];
  v26 = v0[256];
  v27 = v0[255];
  v28 = v0[252];
  v29 = v0[251];
  v30 = v0[250];
  v31 = v0[249];
  v32 = v0[247];
  v33 = v0[246];
  v34 = v0[245];
  v35 = v0[244];
  v36 = v0[240];
  v37 = v0[239];
  v38 = v0[238];
  v39 = v0[236];
  v40 = v0[235];
  v41 = v0[234];
  v42 = v0[233];
  v43 = v0[229];
  v44 = v0[228];
  v45 = v0[226];
  v46 = v0[224];
  v47 = v0[221];
  v48 = v0[218];
  v49 = v0[217];
  v50 = v0[216];
  v51 = v0[214];
  v52 = v0[211];
  v53 = v0[210];
  v54 = v0[209];
  v55 = v0[208];

  v18 = v0[1];

  return v18();
}

uint64_t sub_100C94038()
{
  v2 = *v1;
  v3 = *(*v1 + 2552);
  v4 = *v1;
  *(*v1 + 2560) = v0;

  v5 = *(v2 + 1648);
  if (v0)
  {
    v6 = sub_100C98FD0;
  }

  else
  {
    v6 = sub_100C94164;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100C94164()
{
  v1 = v0[318];
  v2 = v0[317];
  v3 = v0[316];
  v4 = v0[281];
  v5 = v0[257];
  v6 = v0[254];
  v7 = v0[253];
  v8 = v0[250];

  sub_100391554((v0 + 20));

  sub_100016590(v2, v1);
  sub_100018D00(v8, type metadata accessor for SharingCircleSecretValue);
  (*(v6 + 8))(v5, v7);
  v9 = v0[276];
  v10 = v0[275];
  v11 = v0[274];
  v12 = v0[273];
  v13 = v0[272];
  v14 = v0[271];
  v15 = v0[270];
  v16 = v0[269];
  v17 = v0[268];
  v18 = v0[267];
  v21 = v0[266];
  v22 = v0[265];
  v23 = v0[261];
  v24 = v0[260];
  v25 = v0[259];
  v26 = v0[257];
  v27 = v0[256];
  v28 = v0[255];
  v29 = v0[252];
  v30 = v0[251];
  v31 = v0[250];
  v32 = v0[249];
  v33 = v0[247];
  v34 = v0[246];
  v35 = v0[245];
  v36 = v0[244];
  v37 = v0[240];
  v38 = v0[239];
  v39 = v0[238];
  v40 = v0[236];
  v41 = v0[235];
  v42 = v0[234];
  v43 = v0[233];
  v44 = v0[229];
  v45 = v0[228];
  v46 = v0[226];
  v47 = v0[224];
  v48 = v0[221];
  v49 = v0[218];
  v50 = v0[217];
  v51 = v0[216];
  v52 = v0[214];
  v53 = v0[211];
  v54 = v0[210];
  v55 = v0[209];
  v56 = v0[208];

  v19 = v0[1];

  return v19();
}

uint64_t sub_100C944C4()
{
  v2 = *v1;
  v3 = *(*v1 + 2576);
  v4 = *v1;
  *(*v1 + 2584) = v0;

  v5 = *(v2 + 1648);
  if (v0)
  {
    v6 = sub_100C99334;
  }

  else
  {
    v6 = sub_100C945F0;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100C945F0()
{
  v1 = v0[321];
  v2 = v0[281];
  v3 = v0[257];
  v4 = v0[254];
  v5 = v0[253];
  v6 = v0[249];
  v7 = v0[226];

  sub_100391554((v0 + 20));

  sub_100018D00(v6, type metadata accessor for SharingCircleSecretValue);
  sub_100018D00(v7, type metadata accessor for KeyDropJoinToken);
  (*(v4 + 8))(v3, v5);
  v8 = v0[276];
  v9 = v0[275];
  v10 = v0[274];
  v11 = v0[273];
  v12 = v0[272];
  v13 = v0[271];
  v14 = v0[270];
  v15 = v0[269];
  v16 = v0[268];
  v17 = v0[267];
  v20 = v0[266];
  v21 = v0[265];
  v22 = v0[261];
  v23 = v0[260];
  v24 = v0[259];
  v25 = v0[257];
  v26 = v0[256];
  v27 = v0[255];
  v28 = v0[252];
  v29 = v0[251];
  v30 = v0[250];
  v31 = v0[249];
  v32 = v0[247];
  v33 = v0[246];
  v34 = v0[245];
  v35 = v0[244];
  v36 = v0[240];
  v37 = v0[239];
  v38 = v0[238];
  v39 = v0[236];
  v40 = v0[235];
  v41 = v0[234];
  v42 = v0[233];
  v43 = v0[229];
  v44 = v0[228];
  v45 = v0[226];
  v46 = v0[224];
  v47 = v0[221];
  v48 = v0[218];
  v49 = v0[217];
  v50 = v0[216];
  v51 = v0[214];
  v52 = v0[211];
  v53 = v0[210];
  v54 = v0[209];
  v55 = v0[208];

  v18 = v0[1];

  return v18();
}

uint64_t sub_100C9495C()
{
  v1 = v0[278];
  v2 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v3 = swift_task_alloc();
  v0[331] = v3;
  *v3 = v0;
  v3[1] = sub_100C94A34;
  v4 = v0[280];
  v5 = v0[278];

  return unsafeBlocking<A>(context:_:)(v0 + 203, 0xD000000000000010, 0x800000010134A8C0, sub_1000D3168, v5, v4);
}

uint64_t sub_100C94A34()
{
  v1 = *(*v0 + 2648);
  v2 = *(*v0 + 2224);
  v4 = *v0;

  return _swift_task_switch(sub_100C94B4C, v2, 0);
}

uint64_t sub_100C94B4C()
{
  v1 = v0[206];
  v0[332] = v0[203];
  return _swift_task_switch(sub_100C94B70, v1, 0);
}

uint64_t sub_100C94B70()
{
  v1 = v0[328];
  v2 = v0[235];
  v3 = *(v0[332] + OBJC_IVAR____TtC12searchpartyd16BeaconKeyManager_keyStore);
  v0[333] = v3;

  v0[194] = &type metadata for SecondaryIndex;
  v0[195] = sub_10022A4D4();
  v0[191] = v1;
  v4 = getuid();
  sub_1000294F0(v4);

  return _swift_task_switch(sub_100C94C2C, v3, 0);
}

uint64_t sub_100C94C2C()
{
  v1 = *(v0 + 2664);
  v2 = *(v1 + 112);
  if (!v2)
  {
    goto LABEL_7;
  }

  v3 = *(v2 + 32);
  v4 = *(v1 + 112);

  os_unfair_lock_lock((v3 + 20));
  v5 = *(v3 + 16);
  os_unfair_lock_unlock((v3 + 20));
  if (v5 != 1 || (v6 = sub_100D13BF8(&qword_101699E80, type metadata accessor for ItemSharingKeyDatabase), v7 = *(v6 + 16), v8 = type metadata accessor for ItemSharingKeyDatabase(), (v9 = v7(v8, v6)) == 0))
  {
    v25 = *(v0 + 2664);

LABEL_7:

    v24 = *(v0 + 2608);
    goto LABEL_8;
  }

  v39 = *(v0 + 2632);
  v41 = *(v0 + 2640);
  v46 = *(v0 + 2608);
  v43 = *(v0 + 2840);
  v10 = *(v0 + 1792);
  v11 = *(v0 + 1784);
  v12 = *(v0 + 1776);
  v13 = *(v0 + 1768);
  v14 = *(v0 + 1760);
  v36 = *(v0 + 1880);
  v37 = *(v0 + 1752);
  v35 = *(v0 + 1640) + *(v0 + 2836);
  v15 = *(v9 + 24);

  (*(v11 + 16))(v10, v2 + OBJC_IVAR____TtC12searchpartyd22ItemSharingKeyDatabase_keys, v12);
  v16 = *(v0 + 1552);
  v17 = *(v0 + 1560);
  sub_1000035D0((v0 + 1528), v16);
  LOBYTE(v16) = sub_10002BD40(v16, v17);
  v18 = swift_task_alloc();
  *(v18 + 16) = v10;
  *(v18 + 24) = v36;
  *(v18 + 32) = v35;
  *(v18 + 40) = v16 & 1;
  *(v18 + 48) = v0 + 1528;
  *(v18 + 56) = v39;
  *(v18 + 64) = v41;
  *(v18 + 72) = v15;
  (*(v14 + 104))(v13, v43, v37);
  Connection.transaction(_:block:)();
  *(v0 + 2672) = v46;
  v19 = *(v0 + 2664);
  if (v46)
  {
    v20 = *(v0 + 1784);
    v44 = *(v0 + 1776);
    v47 = *(v0 + 1792);
    v21 = *(v0 + 1768);
    v22 = *(v0 + 1760);
    v23 = *(v0 + 1752);

    (*(v22 + 8))(v21, v23);

    (*(v20 + 8))(v47, v44);

    v24 = 0;
LABEL_8:
    *(v0 + 2680) = v24;
    v26 = *(v0 + 1648);
    (*(*(v0 + 1848) + 8))(*(v0 + 1880), *(v0 + 1840));
    v27 = sub_100C953AC;
    v28 = v26;
    goto LABEL_9;
  }

  v29 = *(v0 + 1848);
  v42 = *(v0 + 1840);
  v45 = *(v0 + 1880);
  v30 = *(v0 + 1784);
  v38 = *(v0 + 1776);
  v40 = *(v0 + 1792);
  v31 = *(v0 + 1768);
  v32 = *(v0 + 1760);
  v33 = *(v0 + 1752);
  v48 = *(v0 + 1648);

  (*(v32 + 8))(v31, v33);

  (*(v30 + 8))(v40, v38);
  (*(v29 + 8))(v45, v42);
  sub_100007BAC((v0 + 1528));
  v27 = sub_100C94FD4;
  v28 = v48;
LABEL_9:

  return _swift_task_switch(v27, v28, 0);
}

uint64_t sub_100C94FD4()
{
  v1 = sub_100016590(v0[329], v0[330]);
  v4 = v0[327] + 1;
  if (v4 == v0[325])
  {
    v5 = v0[324];
    v6 = v0[281];
    v7 = v0[257];
    v8 = v0[254];
    v9 = v0[253];

    sub_100391554((v0 + 20));

    (*(v8 + 8))(v7, v9);
    v10 = v0[276];
    v11 = v0[275];
    v12 = v0[274];
    v13 = v0[273];
    v14 = v0[272];
    v15 = v0[271];
    v16 = v0[270];
    v17 = v0[269];
    v18 = v0[268];
    v19 = v0[267];
    v28 = v0[266];
    v29 = v0[265];
    v30 = v0[261];
    v31 = v0[260];
    v32 = v0[259];
    v33 = v0[257];
    v34 = v0[256];
    v35 = v0[255];
    v36 = v0[252];
    v37 = v0[251];
    v38 = v0[250];
    v39 = v0[249];
    v40 = v0[247];
    v41 = v0[246];
    v42 = v0[245];
    v43 = v0[244];
    v44 = v0[240];
    v45 = v0[239];
    v46 = v0[238];
    v47 = v0[236];
    v48 = v0[235];
    v49 = v0[234];
    v50 = v0[233];
    v51 = v0[229];
    v52 = v0[228];
    v53 = v0[226];
    v54 = v0[224];
    v55 = v0[221];
    v56 = v0[218];
    v57 = v0[217];
    v58 = v0[216];
    v59 = v0[214];
    v60 = v0[211];
    v61 = v0[210];
    v62 = v0[209];
    v63 = v0[208];

    v20 = v0[1];

    return v20();
  }

  else
  {
    v22 = v0[334];
    v0[327] = v4;
    v0[326] = v22;
    v23 = v0[324];
    if (v4 >= *(v23 + 16))
    {
      __break(1u);
    }

    else
    {
      v24 = v0[278];
      v25 = (v23 + 24 * v4);
      v0[328] = v25[4];
      v26 = v25[5];
      v0[329] = v26;
      v27 = v25[6];
      v0[330] = v27;
      sub_100017D5C(v26, v27);
      v1 = sub_100C9495C;
      v2 = v24;
      v3 = 0;
    }

    return _swift_task_switch(v1, v2, v3);
  }
}

uint64_t sub_100C953AC()
{
  sub_100016590(v0[329], v0[330]);
  v1 = sub_100007BAC(v0 + 191);
  v4 = v0[327] + 1;
  if (v4 == v0[325])
  {
    v5 = v0[324];
    v6 = v0[281];
    v7 = v0[257];
    v8 = v0[254];
    v9 = v0[253];

    sub_100391554((v0 + 20));

    (*(v8 + 8))(v7, v9);
    v10 = v0[276];
    v11 = v0[275];
    v12 = v0[274];
    v13 = v0[273];
    v14 = v0[272];
    v15 = v0[271];
    v16 = v0[270];
    v17 = v0[269];
    v18 = v0[268];
    v19 = v0[267];
    v28 = v0[266];
    v29 = v0[265];
    v30 = v0[261];
    v31 = v0[260];
    v32 = v0[259];
    v33 = v0[257];
    v34 = v0[256];
    v35 = v0[255];
    v36 = v0[252];
    v37 = v0[251];
    v38 = v0[250];
    v39 = v0[249];
    v40 = v0[247];
    v41 = v0[246];
    v42 = v0[245];
    v43 = v0[244];
    v44 = v0[240];
    v45 = v0[239];
    v46 = v0[238];
    v47 = v0[236];
    v48 = v0[235];
    v49 = v0[234];
    v50 = v0[233];
    v51 = v0[229];
    v52 = v0[228];
    v53 = v0[226];
    v54 = v0[224];
    v55 = v0[221];
    v56 = v0[218];
    v57 = v0[217];
    v58 = v0[216];
    v59 = v0[214];
    v60 = v0[211];
    v61 = v0[210];
    v62 = v0[209];
    v63 = v0[208];

    v20 = v0[1];

    return v20();
  }

  else
  {
    v22 = v0[335];
    v0[327] = v4;
    v0[326] = v22;
    v23 = v0[324];
    if (v4 >= *(v23 + 16))
    {
      __break(1u);
    }

    else
    {
      v24 = v0[278];
      v25 = (v23 + 24 * v4);
      v0[328] = v25[4];
      v26 = v25[5];
      v0[329] = v26;
      v27 = v25[6];
      v0[330] = v27;
      sub_100017D5C(v26, v27);
      v1 = sub_100C9495C;
      v2 = v24;
      v3 = 0;
    }

    return _swift_task_switch(v1, v2, v3);
  }
}

uint64_t sub_100C9578C()
{
  v2 = *v1;
  v3 = *(*v1 + 2688);
  v7 = *v1;
  *(*v1 + 2696) = v0;

  if (v0)
  {
    v4 = v2[206];
    (*(v2[231] + 8))(v2[234], v2[230]);
    sub_1002497F0((v2 + 137));
    v5 = sub_100C996A4;
  }

  else
  {
    v4 = v2[278];
    (*(v2[231] + 8))(v2[234], v2[230]);
    sub_1002497F0((v2 + 137));
    v5 = sub_100C958F0;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100C958F0()
{
  v1 = v0[278];
  v2 = swift_allocObject();
  v0[338] = v2;
  *(v2 + 16) = v1;
  *(v2 + 24) = 13;
  v3 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v4 = swift_task_alloc();
  v0[339] = v4;
  *v4 = v0;
  v4[1] = sub_100C959FC;

  return unsafeBlocking<A>(context:_:)(v4, 0xD000000000000010, 0x800000010134A8C0, sub_1001BA7C4, v2, &type metadata for () + 8);
}

uint64_t sub_100C959FC()
{
  v1 = *(*v0 + 2712);
  v2 = *(*v0 + 2704);
  v3 = *(*v0 + 2224);
  v5 = *v0;

  return _swift_task_switch(sub_100C95B28, v3, 0);
}

uint64_t sub_100C95B44()
{
  v1 = v0[281];
  v2 = v0[257];
  v3 = v0[254];
  v4 = v0[253];
  sub_100391554((v0 + 20));

  (*(v3 + 8))(v2, v4);
  v5 = v0[276];
  v6 = v0[275];
  v7 = v0[274];
  v8 = v0[273];
  v9 = v0[272];
  v10 = v0[271];
  v11 = v0[270];
  v12 = v0[269];
  v13 = v0[268];
  v14 = v0[267];
  v17 = v0[266];
  v18 = v0[265];
  v19 = v0[261];
  v20 = v0[260];
  v21 = v0[259];
  v22 = v0[257];
  v23 = v0[256];
  v24 = v0[255];
  v25 = v0[252];
  v26 = v0[251];
  v27 = v0[250];
  v28 = v0[249];
  v29 = v0[247];
  v30 = v0[246];
  v31 = v0[245];
  v32 = v0[244];
  v33 = v0[240];
  v34 = v0[239];
  v35 = v0[238];
  v36 = v0[236];
  v37 = v0[235];
  v38 = v0[234];
  v39 = v0[233];
  v40 = v0[229];
  v41 = v0[228];
  v42 = v0[226];
  v43 = v0[224];
  v44 = v0[221];
  v45 = v0[218];
  v46 = v0[217];
  v47 = v0[216];
  v48 = v0[214];
  v49 = v0[211];
  v50 = v0[210];
  v51 = v0[209];
  v52 = v0[208];

  v15 = v0[1];

  return v15();
}

uint64_t sub_100C95E68()
{
  v1 = *(v0 + 2844);
  v2 = *(v0 + 1640);
  v3 = *(*(v0 + 2248) + OBJC_IVAR____TtC12searchpartyd16BeaconKeyManager_keyStore);
  v4 = swift_task_alloc();
  *(v0 + 2720) = v4;
  *v4 = v0;
  v4[1] = sub_100C95F28;
  v5 = *(v0 + 1864);
  v6 = *(v0 + 1672);

  return sub_10068A150(v6, v2 + v1);
}

uint64_t sub_100C95F28()
{
  v2 = *v1;
  v3 = *(*v1 + 2720);
  v8 = *v1;
  *(*v1 + 2728) = v0;

  if (v0)
  {
    v4 = sub_100C961D8;
    v5 = 0;
  }

  else
  {
    v6 = v2[206];
    (*(v2[231] + 8))(v2[233], v2[230]);
    v4 = sub_100C96064;
    v5 = v6;
  }

  return _swift_task_switch(v4, v5, 0);
}