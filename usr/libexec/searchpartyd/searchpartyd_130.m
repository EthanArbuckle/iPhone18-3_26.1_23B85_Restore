uint64_t sub_100DA0D9C()
{
  v1 = v0[493];
  v2 = v0[466];
  v3 = v0[462];
  v4 = v0[458];
  v5 = v0[457];
  v6 = v0[451];
  v7 = v0[445];
  v8 = v0[442];

  sub_100DD92EC(v8, type metadata accessor for AccessoryProductInfo);
  sub_10000B3A8(v7, &qword_101697268, &qword_101394FE0);
  sub_100DD92EC(v6, type metadata accessor for AccessoryMetadata);
  (*(v4 + 8))(v3, v5);
  v34 = v0[496];
  v9 = v0[462];
  v10 = v0[461];
  v11 = v0[460];
  v12 = v0[459];
  v13 = v0[456];
  v14 = v0[455];
  v15 = v0[452];
  v16 = v0[451];
  v17 = v0[450];
  v18 = v0[449];
  v21 = v0[448];
  v22 = v0[446];
  v23 = v0[445];
  v24 = v0[444];
  v25 = v0[443];
  v26 = v0[442];
  v27 = v0[441];
  v28 = v0[438];
  v29 = v0[437];
  v30 = v0[434];
  v31 = v0[431];
  v32 = v0[428];
  v33 = v0[425];

  v19 = v0[1];

  return v19();
}

uint64_t sub_100DA0FE0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 4000);
  v6 = *v2;
  *(*v2 + 4008) = v1;

  v7 = *(v4 + 3384);
  if (v1)
  {
    v8 = sub_100DA1308;
  }

  else
  {
    *(v4 + 4016) = a1;
    v8 = sub_100DA110C;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_100DA110C()
{
  v1 = *(v0 + 4016);
  v2 = *(v0 + 3992);
  v3 = *(v0 + 3984);
  v4 = fragment(data:mtu:)();
  v5 = *(v0 + 512);
  *(v0 + 1104) = *(v0 + 528);
  v6 = *(v0 + 560);
  *(v0 + 1120) = *(v0 + 544);
  *(v0 + 1136) = v6;
  *(v0 + 1152) = *(v0 + 576);
  v7 = *(v0 + 448);
  *(v0 + 1040) = *(v0 + 464);
  v8 = *(v0 + 496);
  *(v0 + 1056) = *(v0 + 480);
  *(v0 + 1072) = v8;
  *(v0 + 1088) = v5;
  *(v0 + 1024) = v7;
  if (sub_10027EE64(v0 + 1024) == 4)
  {
    v9 = *(v0 + 3944);
    v10 = swift_allocObject();
    *(v0 + 4024) = v10;
    *(v10 + 16) = v9;
    *(v10 + 24) = v4;
    v11 = async function pointer to withTimeout<A>(_:block:)[1];

    v12 = swift_task_alloc();
    *(v0 + 4032) = v12;
    *v12 = v0;
    v12[1] = sub_100DA17E0;
    v13 = &unk_1013E88D0;
    v14 = &type metadata for () + 8;
  }

  else
  {
    v15 = *(v0 + 3944);
    v10 = swift_allocObject();
    *(v0 + 4048) = v10;
    *(v10 + 16) = v15;
    *(v10 + 24) = v4;
    v16 = async function pointer to withTimeout<A>(_:block:)[1];

    v17 = swift_task_alloc();
    *(v0 + 4056) = v17;
    *v17 = v0;
    v17[1] = sub_100DA1938;
    v14 = &type metadata for Data;
    v13 = &unk_1013E88B8;
    v12 = (v0 + 3304);
  }

  return withTimeout<A>(_:block:)(v12, 0x40AAD21B3B700000, 3, v13, v10, v14);
}

uint64_t sub_100DA1308()
{
  v55 = v0;
  sub_100016590(v0[498], v0[499]);
  sub_100DD9444((v0 + 56));
  v1 = v0[501];
  v2 = v0[474];
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138543362;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&_mh_execute_header, v3, v4, "Pairing command error: %{public}@", v5, 0xCu);
    sub_10000B3A8(v6, &qword_10169BB30, &unk_10138B3C0);
  }

  v8 = v0[474];
  sub_10000B3A8((v0 + 254), &qword_1016BB880, &qword_1013E88A8);

  swift_errorRetain();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v54 = v13;
    *v11 = 136446466;
    *(v11 + 4) = sub_1000136BC(0xD00000000000001BLL, 0x8000000101370CD0, &v54);
    *(v11 + 12) = 2114;
    swift_errorRetain();
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 14) = v14;
    *v12 = v14;
    _os_log_impl(&_mh_execute_header, v9, v10, "%{public}s failed with %{public}@", v11, 0x16u);
    sub_10000B3A8(v12, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v13);
  }

  v15 = v0[493];
  v16 = v0[466];
  v17 = v0[458];
  v50 = v0[457];
  v52 = v0[462];
  v46 = v0[445];
  v48 = v0[451];
  v42 = v0[431];
  v44 = v0[442];
  v18 = v0[430];
  v19 = v0[429];
  v20 = v0[428];
  v21 = v0[427];
  v22 = v0[426];
  swift_willThrow();

  (*(v21 + 8))(v20, v22);
  (*(v18 + 8))(v42, v19);
  sub_100DD92EC(v44, type metadata accessor for AccessoryProductInfo);
  sub_10000B3A8(v46, &qword_101697268, &qword_101394FE0);
  sub_100DD92EC(v48, type metadata accessor for AccessoryMetadata);
  (*(v17 + 8))(v52, v50);
  v23 = v0[462];
  v24 = v0[461];
  v25 = v0[460];
  v26 = v0[459];
  v27 = v0[456];
  v28 = v0[455];
  v29 = v0[452];
  v30 = v0[451];
  v31 = v0[450];
  v32 = v0[449];
  v35 = v0[448];
  v36 = v0[446];
  v37 = v0[445];
  v38 = v0[444];
  v39 = v0[443];
  v40 = v0[442];
  v41 = v0[441];
  v43 = v0[438];
  v45 = v0[437];
  v47 = v0[434];
  v49 = v0[431];
  v51 = v0[428];
  v53 = v0[425];

  v33 = v0[1];

  return v33();
}

uint64_t sub_100DA17E0()
{
  v2 = *v1;
  v3 = *(*v1 + 4032);
  v11 = *v1;
  *(*v1 + 4040) = v0;

  if (v0)
  {
    v4 = *(v2 + 4024);
    v5 = *(v2 + 3384);

    v6 = sub_100DA2114;
    v7 = v5;
  }

  else
  {
    v8 = *(v2 + 4024);
    v9 = *(v2 + 3384);
    sub_10000B3A8(v2 + 2032, &qword_1016BB880, &qword_1013E88A8);

    v6 = sub_100DA1A80;
    v7 = v9;
  }

  return _swift_task_switch(v6, v7, 0);
}

uint64_t sub_100DA1938()
{
  v2 = *v1;
  v3 = *(*v1 + 4056);
  v4 = *v1;
  *(*v1 + 4064) = v0;

  v5 = *(v2 + 4048);
  v6 = *(v2 + 3384);

  if (v0)
  {
    v7 = sub_100DA2FB0;
  }

  else
  {
    v7 = sub_100DA25E4;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_100DA1A80()
{
  v75 = v0;
  v1 = *(v0 + 3792);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 136315138;
    v6 = *(v0 + 512);
    *(v0 + 3120) = *(v0 + 528);
    v7 = *(v0 + 560);
    *(v0 + 3136) = *(v0 + 544);
    *(v0 + 3152) = v7;
    *(v0 + 3168) = *(v0 + 576);
    v8 = *(v0 + 448);
    *(v0 + 3056) = *(v0 + 464);
    v9 = *(v0 + 496);
    *(v0 + 3072) = *(v0 + 480);
    *(v0 + 3088) = v9;
    *(v0 + 3104) = v6;
    v74 = v5;
    *(v0 + 3040) = v8;
    v10 = String.init<A>(describing:)();
    v12 = sub_1000136BC(v10, v11, &v74);

    *(v4 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v2, v3, "Sent final command: %s", v4, 0xCu);
    sub_100007BAC(v5);
  }

  v13 = *(v0 + 3792);
  *(*(v0 + 3384) + 152) = 9;
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "Pairing completed succesfully!", v16, 2u);
  }

  v17 = *(v0 + 3992);
  v18 = *(v0 + 3984);
  v19 = *(v0 + 3792);
  v20 = *(v0 + 3400);
  v21 = *(v0 + 3392);
  v22 = *(v0 + 3384);
  v23 = *(v0 + 3376);

  v24 = type metadata accessor for TaskPriority();
  (*(*(v24 - 8) + 56))(v20, 1, 1, v24);
  v25 = sub_100D97688(&qword_1016BB850, type metadata accessor for PencilPairingService);
  v26 = swift_allocObject();
  v26[2] = v22;
  v26[3] = v25;
  v26[4] = v22;
  v26[5] = v23;
  v26[6] = v21;
  swift_retain_n();

  sub_10025EDD4(0, 0, v20, &unk_1013E88E0, v26);
  sub_100DD9444(v0 + 448);

  sub_100016590(v18, v17);
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.default.getter();
  v29 = os_log_type_enabled(v27, v28);
  v60 = *(v0 + 3728);
  v62 = *(v0 + 3944);
  v30 = *(v0 + 3696);
  v31 = *(v0 + 3664);
  v32 = *(v0 + 3656);
  v72 = *(v0 + 3608);
  v68 = *(v0 + 3536);
  v70 = *(v0 + 3560);
  v33 = *(v0 + 3440);
  v34 = *(v0 + 3432);
  v64 = v34;
  v66 = *(v0 + 3448);
  v35 = *(v0 + 3424);
  v36 = *(v0 + 3416);
  v37 = *(v0 + 3408);
  if (v29)
  {
    v58 = *(v0 + 3696);
    v38 = swift_slowAlloc();
    v56 = v32;
    v39 = swift_slowAlloc();
    v74 = v39;
    *v38 = 136446210;
    *(v38 + 4) = sub_1000136BC(0xD00000000000001BLL, 0x8000000101370CD0, &v74);
    _os_log_impl(&_mh_execute_header, v27, v28, "%{public}s completed successfully", v38, 0xCu);
    sub_100007BAC(v39);

    (*(v36 + 8))(v35, v37);
    (*(v33 + 8))(v66, v64);
    sub_100DD92EC(v68, type metadata accessor for AccessoryProductInfo);
    sub_10000B3A8(v70, &qword_101697268, &qword_101394FE0);
    sub_100DD92EC(v72, type metadata accessor for AccessoryMetadata);
    (*(v31 + 8))(v58, v56);
  }

  else
  {

    (*(v36 + 8))(v35, v37);
    (*(v33 + 8))(v66, v64);
    sub_100DD92EC(v68, type metadata accessor for AccessoryProductInfo);
    sub_10000B3A8(v70, &qword_101697268, &qword_101394FE0);
    sub_100DD92EC(v72, type metadata accessor for AccessoryMetadata);
    (*(v31 + 8))(v30, v32);
  }

  v40 = *(v0 + 3696);
  v41 = *(v0 + 3688);
  v42 = *(v0 + 3680);
  v43 = *(v0 + 3672);
  v44 = *(v0 + 3648);
  v45 = *(v0 + 3640);
  v46 = *(v0 + 3616);
  v47 = *(v0 + 3608);
  v48 = *(v0 + 3600);
  v49 = *(v0 + 3592);
  v52 = *(v0 + 3584);
  v53 = *(v0 + 3568);
  v54 = *(v0 + 3560);
  v55 = *(v0 + 3552);
  v57 = *(v0 + 3544);
  v59 = *(v0 + 3536);
  v61 = *(v0 + 3528);
  v63 = *(v0 + 3504);
  v65 = *(v0 + 3496);
  v67 = *(v0 + 3472);
  v69 = *(v0 + 3448);
  v71 = *(v0 + 3424);
  v73 = *(v0 + 3400);

  v50 = *(v0 + 8);

  return v50();
}

uint64_t sub_100DA2114()
{
  v55 = v0;
  sub_100016590(v0[498], v0[499]);
  v1 = v0[505];
  v2 = v0[474];
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138543362;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&_mh_execute_header, v3, v4, "Pairing command error: %{public}@", v5, 0xCu);
    sub_10000B3A8(v6, &qword_10169BB30, &unk_10138B3C0);
  }

  v8 = v0[474];
  sub_10000B3A8((v0 + 254), &qword_1016BB880, &qword_1013E88A8);

  swift_errorRetain();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v54 = v13;
    *v11 = 136446466;
    *(v11 + 4) = sub_1000136BC(0xD00000000000001BLL, 0x8000000101370CD0, &v54);
    *(v11 + 12) = 2114;
    swift_errorRetain();
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 14) = v14;
    *v12 = v14;
    _os_log_impl(&_mh_execute_header, v9, v10, "%{public}s failed with %{public}@", v11, 0x16u);
    sub_10000B3A8(v12, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v13);
  }

  v15 = v0[493];
  v16 = v0[466];
  v17 = v0[458];
  v50 = v0[457];
  v52 = v0[462];
  v46 = v0[445];
  v48 = v0[451];
  v42 = v0[431];
  v44 = v0[442];
  v18 = v0[430];
  v19 = v0[429];
  v20 = v0[428];
  v21 = v0[427];
  v22 = v0[426];
  swift_willThrow();

  (*(v21 + 8))(v20, v22);
  (*(v18 + 8))(v42, v19);
  sub_100DD92EC(v44, type metadata accessor for AccessoryProductInfo);
  sub_10000B3A8(v46, &qword_101697268, &qword_101394FE0);
  sub_100DD92EC(v48, type metadata accessor for AccessoryMetadata);
  (*(v17 + 8))(v52, v50);
  v23 = v0[462];
  v24 = v0[461];
  v25 = v0[460];
  v26 = v0[459];
  v27 = v0[456];
  v28 = v0[455];
  v29 = v0[452];
  v30 = v0[451];
  v31 = v0[450];
  v32 = v0[449];
  v35 = v0[448];
  v36 = v0[446];
  v37 = v0[445];
  v38 = v0[444];
  v39 = v0[443];
  v40 = v0[442];
  v41 = v0[441];
  v43 = v0[438];
  v45 = v0[437];
  v47 = v0[434];
  v49 = v0[431];
  v51 = v0[428];
  v53 = v0[425];

  v33 = v0[1];

  return v33();
}

uint64_t sub_100DA25E4()
{
  v112 = v0;
  v1 = *(v0 + 3792);
  v2 = *(v0 + 3304);
  *(v0 + 4072) = v2;
  v3 = *(v0 + 3312);
  *(v0 + 4080) = v3;
  sub_100DD93E8(v0 + 448, v0 + 1168);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();
  sub_100DD9444(v0 + 448);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v111[0] = v7;
    *v6 = 136315138;
    v8 = *(v0 + 560);
    *(v0 + 400) = *(v0 + 544);
    *(v0 + 416) = v8;
    *(v0 + 432) = *(v0 + 576);
    v9 = *(v0 + 496);
    *(v0 + 336) = *(v0 + 480);
    *(v0 + 352) = v9;
    v10 = *(v0 + 528);
    *(v0 + 368) = *(v0 + 512);
    *(v0 + 384) = v10;
    v11 = *(v0 + 464);
    *(v0 + 304) = *(v0 + 448);
    *(v0 + 320) = v11;
    sub_100DD93E8(v0 + 448, v0 + 1888);
    v12 = String.init<A>(describing:)();
    v14 = sub_1000136BC(v12, v13, v111);

    *(v6 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v4, v5, "Sent command: %s.", v6, 0xCu);
    sub_100007BAC(v7);
  }

  v15 = *(v0 + 3792);
  sub_100017D5C(v2, v3);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (!os_log_type_enabled(v16, v17))
  {
    sub_100016590(v2, v3);
    goto LABEL_16;
  }

  v18 = swift_slowAlloc();
  result = swift_slowAlloc();
  v20 = result;
  *(v0 + 3344) = result;
  *v18 = 134218242;
  v21 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    if (v21 != 2)
    {
      v22 = 0;
      goto LABEL_15;
    }

    v24 = *(v2 + 16);
    v23 = *(v2 + 24);
    v25 = __OFSUB__(v23, v24);
    v22 = v23 - v24;
    if (!v25)
    {
      goto LABEL_15;
    }

    __break(1u);
LABEL_12:
    LODWORD(v22) = HIDWORD(v2) - v2;
    if (__OFSUB__(HIDWORD(v2), v2))
    {
      __break(1u);
      return result;
    }

    v22 = v22;
    goto LABEL_15;
  }

  if (v21)
  {
    goto LABEL_12;
  }

  v22 = BYTE6(v3);
LABEL_15:
  *(v18 + 4) = v22;
  sub_100016590(v2, v3);
  *(v18 + 12) = 2080;
  v26 = Data.hexString.getter();
  v28 = sub_1000136BC(v26, v27, (v0 + 3344));

  *(v18 + 14) = v28;
  _os_log_impl(&_mh_execute_header, v16, v17, "length: %ld Received Response: %s", v18, 0x16u);
  sub_100007BAC(v20);

LABEL_16:

  v29 = *(v0 + 4064);
  v30 = *(v0 + 3424);
  v31 = sub_100DD9598();
  BinaryDecoder.decode<A>(_:from:)();
  if (v29)
  {
    v32 = *(v0 + 3992);
    v33 = *(v0 + 3984);
    sub_100016590(v2, v3);
    sub_100016590(v33, v32);
    sub_100DD9444(v0 + 448);
    v34 = *(v0 + 3792);
    swift_errorRetain();
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      *v37 = 138543362;
      swift_errorRetain();
      v39 = _swift_stdlib_bridgeErrorToNSError();
      *(v37 + 4) = v39;
      *v38 = v39;
      _os_log_impl(&_mh_execute_header, v35, v36, "Pairing command error: %{public}@", v37, 0xCu);
      sub_10000B3A8(v38, &qword_10169BB30, &unk_10138B3C0);
    }

    v40 = *(v0 + 3792);
    sub_10000B3A8(v0 + 2032, &qword_1016BB880, &qword_1013E88A8);

    swift_errorRetain();
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v111[0] = v45;
      *v43 = 136446466;
      *(v43 + 4) = sub_1000136BC(0xD00000000000001BLL, 0x8000000101370CD0, v111);
      *(v43 + 12) = 2114;
      swift_errorRetain();
      v46 = _swift_stdlib_bridgeErrorToNSError();
      *(v43 + 14) = v46;
      *v44 = v46;
      _os_log_impl(&_mh_execute_header, v41, v42, "%{public}s failed with %{public}@", v43, 0x16u);
      sub_10000B3A8(v44, &qword_10169BB30, &unk_10138B3C0);

      sub_100007BAC(v45);
    }

    v47 = *(v0 + 3944);
    v48 = *(v0 + 3728);
    v49 = *(v0 + 3664);
    v107 = *(v0 + 3656);
    v109 = *(v0 + 3696);
    v103 = *(v0 + 3560);
    v105 = *(v0 + 3608);
    v99 = *(v0 + 3448);
    v101 = *(v0 + 3536);
    v50 = *(v0 + 3440);
    v51 = *(v0 + 3432);
    v52 = *(v0 + 3424);
    v53 = *(v0 + 3416);
    v54 = *(v0 + 3408);
    swift_willThrow();

    (*(v53 + 8))(v52, v54);
    (*(v50 + 8))(v99, v51);
    sub_100DD92EC(v101, type metadata accessor for AccessoryProductInfo);
    sub_10000B3A8(v103, &qword_101697268, &qword_101394FE0);
    sub_100DD92EC(v105, type metadata accessor for AccessoryMetadata);
    (*(v49 + 8))(v109, v107);
    v55 = *(v0 + 3696);
    v56 = *(v0 + 3688);
    v57 = *(v0 + 3680);
    v58 = *(v0 + 3672);
    v59 = *(v0 + 3648);
    v60 = *(v0 + 3640);
    v61 = *(v0 + 3616);
    v62 = *(v0 + 3608);
    v63 = *(v0 + 3600);
    v64 = *(v0 + 3592);
    v92 = *(v0 + 3584);
    v93 = *(v0 + 3568);
    v94 = *(v0 + 3560);
    v95 = *(v0 + 3552);
    v96 = *(v0 + 3544);
    v97 = *(v0 + 3536);
    v98 = *(v0 + 3528);
    v100 = *(v0 + 3504);
    v102 = *(v0 + 3496);
    v104 = *(v0 + 3472);
    v106 = *(v0 + 3448);
    v108 = *(v0 + 3424);
    v110 = *(v0 + 3400);

    v65 = *(v0 + 8);

    return v65();
  }

  else
  {
    v66 = (v0 + 1456);
    v67 = *(v0 + 3792);
    v68 = *(v0 + 1424);
    *(v0 + 1552) = *(v0 + 1408);
    *(v0 + 1568) = v68;
    *(v0 + 1584) = *(v0 + 1440);
    v69 = *(v0 + 1360);
    *(v0 + 1488) = *(v0 + 1344);
    *(v0 + 1504) = v69;
    v70 = *(v0 + 1392);
    *(v0 + 1520) = *(v0 + 1376);
    *(v0 + 1536) = v70;
    v71 = *(v0 + 1328);
    *(v0 + 1456) = *(v0 + 1312);
    *(v0 + 1472) = v71;
    sub_100DD93E8(v0 + 1456, v0 + 1600);
    v72 = Logger.logObject.getter();
    v73 = static os_log_type_t.default.getter();
    sub_100DD9444(v0 + 1456);
    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      v111[0] = v75;
      *v74 = 136315138;
      v76 = *(v0 + 1568);
      *(v0 + 2848) = *(v0 + 1552);
      *(v0 + 2864) = v76;
      *(v0 + 2880) = *(v0 + 1584);
      v77 = *(v0 + 1504);
      *(v0 + 2784) = *(v0 + 1488);
      *(v0 + 2800) = v77;
      v78 = *(v0 + 1536);
      *(v0 + 2816) = *(v0 + 1520);
      *(v0 + 2832) = v78;
      v79 = *(v0 + 1472);
      *(v0 + 2752) = *v66;
      *(v0 + 2768) = v79;
      sub_100DD93E8(v0 + 1456, v0 + 2896);
      v80 = String.init<A>(describing:)();
      v82 = sub_1000136BC(v80, v81, v111);

      *(v74 + 4) = v82;
      _os_log_impl(&_mh_execute_header, v72, v73, "Received response: %s", v74, 0xCu);
      sub_100007BAC(v75);
    }

    v83 = *(v0 + 3976);
    *(v0 + 3208) = &type metadata for PencilPairingCommand;
    *(v0 + 3216) = v31;
    *(v0 + 3224) = v83;
    v84 = swift_allocObject();
    *(v0 + 3184) = v84;
    v85 = *(v0 + 1568);
    v84[7] = *(v0 + 1552);
    v84[8] = v85;
    v84[9] = *(v0 + 1584);
    v86 = *(v0 + 1504);
    v84[3] = *(v0 + 1488);
    v84[4] = v86;
    v87 = *(v0 + 1536);
    v84[5] = *(v0 + 1520);
    v84[6] = v87;
    v88 = *(v0 + 1472);
    v84[1] = *v66;
    v84[2] = v88;
    sub_100DD93E8(v0 + 1456, v0 + 1744);
    v89 = swift_task_alloc();
    *(v0 + 4088) = v89;
    *v89 = v0;
    v89[1] = sub_100DA3490;
    v90 = *(v0 + 3384);
    v91 = *(v0 + 3376);

    return sub_100DCEA4C(v0 + 16, v91, v0 + 3184);
  }
}

uint64_t sub_100DA2FB0()
{
  v57 = v0;
  v1 = v0[499];
  v2 = v0[498];
  sub_100DD9444((v0 + 56));
  sub_100016590(v2, v1);
  v3 = v0[508];
  v4 = v0[474];
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v5, v6, "Pairing command error: %{public}@", v7, 0xCu);
    sub_10000B3A8(v8, &qword_10169BB30, &unk_10138B3C0);
  }

  v10 = v0[474];
  sub_10000B3A8((v0 + 254), &qword_1016BB880, &qword_1013E88A8);

  swift_errorRetain();
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v56 = v15;
    *v13 = 136446466;
    *(v13 + 4) = sub_1000136BC(0xD00000000000001BLL, 0x8000000101370CD0, &v56);
    *(v13 + 12) = 2114;
    swift_errorRetain();
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 14) = v16;
    *v14 = v16;
    _os_log_impl(&_mh_execute_header, v11, v12, "%{public}s failed with %{public}@", v13, 0x16u);
    sub_10000B3A8(v14, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v15);
  }

  v17 = v0[493];
  v18 = v0[466];
  v19 = v0[458];
  v52 = v0[457];
  v54 = v0[462];
  v48 = v0[445];
  v50 = v0[451];
  v44 = v0[431];
  v46 = v0[442];
  v20 = v0[430];
  v21 = v0[429];
  v22 = v0[428];
  v23 = v0[427];
  v24 = v0[426];
  swift_willThrow();

  (*(v23 + 8))(v22, v24);
  (*(v20 + 8))(v44, v21);
  sub_100DD92EC(v46, type metadata accessor for AccessoryProductInfo);
  sub_10000B3A8(v48, &qword_101697268, &qword_101394FE0);
  sub_100DD92EC(v50, type metadata accessor for AccessoryMetadata);
  (*(v19 + 8))(v54, v52);
  v25 = v0[462];
  v26 = v0[461];
  v27 = v0[460];
  v28 = v0[459];
  v29 = v0[456];
  v30 = v0[455];
  v31 = v0[452];
  v32 = v0[451];
  v33 = v0[450];
  v34 = v0[449];
  v37 = v0[448];
  v38 = v0[446];
  v39 = v0[445];
  v40 = v0[444];
  v41 = v0[443];
  v42 = v0[442];
  v43 = v0[441];
  v45 = v0[438];
  v47 = v0[437];
  v49 = v0[434];
  v51 = v0[431];
  v53 = v0[428];
  v55 = v0[425];

  v35 = v0[1];

  return v35();
}

uint64_t sub_100DA3490()
{
  v2 = *v1;
  v3 = *(*v1 + 4088);
  v12 = *v1;
  *(*v1 + 4096) = v0;

  if (v0)
  {
    v4 = *(v2 + 3384);
    v5 = sub_100DA3E28;
  }

  else
  {
    v6 = *(v2 + 80);
    *(v2 + 2688) = *(v2 + 96);
    v7 = *(v2 + 128);
    *(v2 + 2704) = *(v2 + 112);
    *(v2 + 2720) = v7;
    *(v2 + 2736) = *(v2 + 144);
    v8 = *(v2 + 16);
    *(v2 + 2624) = *(v2 + 32);
    v9 = *(v2 + 64);
    *(v2 + 2640) = *(v2 + 48);
    *(v2 + 2656) = v9;
    *(v2 + 2672) = v6;
    v10 = *(v2 + 3384);
    *(v2 + 2608) = v8;
    sub_10000B3A8(v2 + 2032, &qword_1016BB880, &qword_1013E88A8);
    sub_100007BAC((v2 + 3184));
    v5 = sub_100DA3608;
    v4 = v10;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100DA3608()
{
  v86 = v0;
  v1 = *(v0 + 4080);
  v2 = *(v0 + 4072);
  v3 = *(v0 + 3992);
  v4 = *(v0 + 3984);
  sub_100DD9444(v0 + 448);
  sub_100016590(v2, v1);
  sub_100DD9444(v0 + 1456);
  sub_100016590(v4, v3);
  *(v0 + 2544) = *(v0 + 2688);
  *(v0 + 2560) = *(v0 + 2704);
  *(v0 + 2576) = *(v0 + 2720);
  *(v0 + 2592) = *(v0 + 2736);
  *(v0 + 2480) = *(v0 + 2624);
  *(v0 + 2496) = *(v0 + 2640);
  *(v0 + 2512) = *(v0 + 2656);
  *(v0 + 2528) = *(v0 + 2672);
  *(v0 + 2464) = *(v0 + 2608);
  SharingCircleWildAdvertisementKey.init(key:)(v0 + 2464);
  v5 = *(v0 + 2688);
  v6 = *(v0 + 2720);
  *(v0 + 544) = *(v0 + 2704);
  *(v0 + 560) = v6;
  *(v0 + 576) = *(v0 + 2736);
  v7 = *(v0 + 2624);
  v8 = *(v0 + 2656);
  *(v0 + 480) = *(v0 + 2640);
  *(v0 + 496) = v8;
  *(v0 + 512) = *(v0 + 2672);
  *(v0 + 528) = v5;
  *(v0 + 448) = *(v0 + 2608);
  *(v0 + 464) = v7;
  *(v0 + 2112) = *(v0 + 2544);
  *(v0 + 2128) = *(v0 + 2560);
  *(v0 + 2144) = *(v0 + 2576);
  *(v0 + 2160) = *(v0 + 2592);
  *(v0 + 2048) = *(v0 + 2480);
  *(v0 + 2064) = *(v0 + 2496);
  *(v0 + 2080) = *(v0 + 2512);
  *(v0 + 2096) = *(v0 + 2528);
  *(v0 + 2032) = *(v0 + 2464);
  v9 = *(v0 + 4096);
  v10 = *(v0 + 3792);
  sub_100DD93E8(v0 + 448, v0 + 592);
  sub_100DD93E8(v0 + 448, v0 + 736);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  sub_100DD9444(v0 + 448);
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 136315138;
    v15 = *(v0 + 512);
    *(v0 + 2400) = *(v0 + 528);
    v16 = *(v0 + 560);
    *(v0 + 2416) = *(v0 + 544);
    *(v0 + 2432) = v16;
    *(v0 + 2448) = *(v0 + 576);
    v17 = *(v0 + 448);
    *(v0 + 2336) = *(v0 + 464);
    v18 = *(v0 + 496);
    *(v0 + 2352) = *(v0 + 480);
    *(v0 + 2368) = v18;
    *(v0 + 2384) = v15;
    v85[0] = v14;
    *(v0 + 2320) = v17;
    sub_100DD93E8(v0 + 448, v0 + 2176);
    v19 = String.init<A>(describing:)();
    v21 = sub_1000136BC(v19, v20, v85);

    *(v13 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v11, v12, "Sending command: %s", v13, 0xCu);
    sub_100007BAC(v14);
  }

  v22 = *(v0 + 3448);
  v23 = *(v0 + 560);
  *(v0 + 976) = *(v0 + 544);
  *(v0 + 992) = v23;
  *(v0 + 1008) = *(v0 + 576);
  v24 = *(v0 + 496);
  *(v0 + 912) = *(v0 + 480);
  *(v0 + 928) = v24;
  v25 = *(v0 + 528);
  *(v0 + 944) = *(v0 + 512);
  *(v0 + 960) = v25;
  v26 = *(v0 + 464);
  *(v0 + 880) = *(v0 + 448);
  *(v0 + 896) = v26;
  *(v0 + 3976) = sub_100DD9498();
  *(v0 + 3984) = BinaryEncoder.encode<A>(_:)();
  *(v0 + 3992) = v27;
  if (v9)
  {
    sub_100DD9444(v0 + 448);
    v28 = *(v0 + 3792);
    swift_errorRetain();
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *v31 = 138543362;
      swift_errorRetain();
      v33 = _swift_stdlib_bridgeErrorToNSError();
      *(v31 + 4) = v33;
      *v32 = v33;
      _os_log_impl(&_mh_execute_header, v29, v30, "Pairing command error: %{public}@", v31, 0xCu);
      sub_10000B3A8(v32, &qword_10169BB30, &unk_10138B3C0);
    }

    v34 = *(v0 + 3792);
    sub_10000B3A8(v0 + 2032, &qword_1016BB880, &qword_1013E88A8);

    swift_errorRetain();
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v85[0] = v39;
      *v37 = 136446466;
      *(v37 + 4) = sub_1000136BC(0xD00000000000001BLL, 0x8000000101370CD0, v85);
      *(v37 + 12) = 2114;
      swift_errorRetain();
      v40 = _swift_stdlib_bridgeErrorToNSError();
      *(v37 + 14) = v40;
      *v38 = v40;
      _os_log_impl(&_mh_execute_header, v35, v36, "%{public}s failed with %{public}@", v37, 0x16u);
      sub_10000B3A8(v38, &qword_10169BB30, &unk_10138B3C0);

      sub_100007BAC(v39);
    }

    v41 = *(v0 + 3944);
    v42 = *(v0 + 3728);
    v43 = *(v0 + 3664);
    v81 = *(v0 + 3656);
    v83 = *(v0 + 3696);
    v77 = *(v0 + 3560);
    v79 = *(v0 + 3608);
    v73 = *(v0 + 3448);
    v75 = *(v0 + 3536);
    v44 = *(v0 + 3440);
    v45 = *(v0 + 3432);
    v46 = *(v0 + 3424);
    v47 = *(v0 + 3416);
    v48 = *(v0 + 3408);
    swift_willThrow();

    (*(v47 + 8))(v46, v48);
    (*(v44 + 8))(v73, v45);
    sub_100DD92EC(v75, type metadata accessor for AccessoryProductInfo);
    sub_10000B3A8(v77, &qword_101697268, &qword_101394FE0);
    sub_100DD92EC(v79, type metadata accessor for AccessoryMetadata);
    (*(v43 + 8))(v83, v81);
    v49 = *(v0 + 3696);
    v50 = *(v0 + 3688);
    v51 = *(v0 + 3680);
    v52 = *(v0 + 3672);
    v53 = *(v0 + 3648);
    v54 = *(v0 + 3640);
    v55 = *(v0 + 3616);
    v56 = *(v0 + 3608);
    v57 = *(v0 + 3600);
    v58 = *(v0 + 3592);
    v66 = *(v0 + 3584);
    v67 = *(v0 + 3568);
    v68 = *(v0 + 3560);
    v69 = *(v0 + 3552);
    v70 = *(v0 + 3544);
    v71 = *(v0 + 3536);
    v72 = *(v0 + 3528);
    v74 = *(v0 + 3504);
    v76 = *(v0 + 3496);
    v78 = *(v0 + 3472);
    v80 = *(v0 + 3448);
    v82 = *(v0 + 3424);
    v84 = *(v0 + 3400);

    v59 = *(v0 + 8);

    return v59();
  }

  else
  {
    v61 = sub_100D97688(&qword_1016972C0, &type metadata accessor for Characteristic);
    v62 = async function pointer to dispatch thunk of CharacteristicProtocol.mtu.getter[1];
    v63 = swift_task_alloc();
    *(v0 + 4000) = v63;
    *v63 = v0;
    v63[1] = sub_100DA0FE0;
    v64 = *(v0 + 3944);
    v65 = *(v0 + 3928);

    return dispatch thunk of CharacteristicProtocol.mtu.getter(v65, v61);
  }
}

uint64_t sub_100DA3E28()
{
  v59 = v0;
  v1 = v0[510];
  v2 = v0[509];
  v3 = v0[499];
  v4 = v0[498];
  sub_100DD9444((v0 + 56));
  sub_100016590(v2, v1);
  sub_100DD9444((v0 + 182));
  sub_100016590(v4, v3);
  sub_100007BAC(v0 + 398);
  v5 = v0[512];
  v6 = v0[474];
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138543362;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v11;
    *v10 = v11;
    _os_log_impl(&_mh_execute_header, v7, v8, "Pairing command error: %{public}@", v9, 0xCu);
    sub_10000B3A8(v10, &qword_10169BB30, &unk_10138B3C0);
  }

  v12 = v0[474];
  sub_10000B3A8((v0 + 254), &qword_1016BB880, &qword_1013E88A8);

  swift_errorRetain();
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v58 = v17;
    *v15 = 136446466;
    *(v15 + 4) = sub_1000136BC(0xD00000000000001BLL, 0x8000000101370CD0, &v58);
    *(v15 + 12) = 2114;
    swift_errorRetain();
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 14) = v18;
    *v16 = v18;
    _os_log_impl(&_mh_execute_header, v13, v14, "%{public}s failed with %{public}@", v15, 0x16u);
    sub_10000B3A8(v16, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v17);
  }

  v19 = v0[493];
  v20 = v0[466];
  v21 = v0[458];
  v54 = v0[457];
  v56 = v0[462];
  v50 = v0[445];
  v52 = v0[451];
  v46 = v0[431];
  v48 = v0[442];
  v22 = v0[430];
  v23 = v0[429];
  v24 = v0[428];
  v25 = v0[427];
  v26 = v0[426];
  swift_willThrow();

  (*(v25 + 8))(v24, v26);
  (*(v22 + 8))(v46, v23);
  sub_100DD92EC(v48, type metadata accessor for AccessoryProductInfo);
  sub_10000B3A8(v50, &qword_101697268, &qword_101394FE0);
  sub_100DD92EC(v52, type metadata accessor for AccessoryMetadata);
  (*(v21 + 8))(v56, v54);
  v27 = v0[462];
  v28 = v0[461];
  v29 = v0[460];
  v30 = v0[459];
  v31 = v0[456];
  v32 = v0[455];
  v33 = v0[452];
  v34 = v0[451];
  v35 = v0[450];
  v36 = v0[449];
  v39 = v0[448];
  v40 = v0[446];
  v41 = v0[445];
  v42 = v0[444];
  v43 = v0[443];
  v44 = v0[442];
  v45 = v0[441];
  v47 = v0[438];
  v49 = v0[437];
  v51 = v0[434];
  v53 = v0[431];
  v55 = v0[428];
  v57 = v0[425];

  v37 = v0[1];

  return v37();
}

uint64_t sub_100DA432C()
{
  v47 = v0;
  if (*(v0 + 4107) > 4u)
  {
    v8 = *(v0 + 3792);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v46 = v12;
      *v11 = 136446210;
      *(v11 + 4) = sub_1000136BC(0xD00000000000001BLL, 0x8000000101370CD0, &v46);
      _os_log_impl(&_mh_execute_header, v9, v10, "%{public}s Not your pencil!", v11, 0xCu);
      sub_100007BAC(v12);
    }

    v13 = *(v0 + 3728);
    v14 = *(v0 + 3696);
    v15 = *(v0 + 3664);
    v16 = *(v0 + 3656);
    v17 = *(v0 + 3608);
    v18 = *(v0 + 3560);
    v19 = *(v0 + 3536);
    sub_100500BC4();
    swift_allocError();
    *v20 = xmmword_1013E84E0;
    *(v20 + 16) = 3;
    swift_willThrow();

    sub_100DD92EC(v19, type metadata accessor for AccessoryProductInfo);
    sub_10000B3A8(v18, &qword_101697268, &qword_101394FE0);
    sub_100DD92EC(v17, type metadata accessor for AccessoryMetadata);
    (*(v15 + 8))(v14, v16);
    v21 = *(v0 + 3696);
    v22 = *(v0 + 3688);
    v23 = *(v0 + 3680);
    v24 = *(v0 + 3672);
    v25 = *(v0 + 3648);
    v26 = *(v0 + 3640);
    v27 = *(v0 + 3616);
    v28 = *(v0 + 3608);
    v29 = *(v0 + 3600);
    v30 = *(v0 + 3592);
    v33 = *(v0 + 3584);
    v34 = *(v0 + 3568);
    v35 = *(v0 + 3560);
    v36 = *(v0 + 3552);
    v37 = *(v0 + 3544);
    v38 = *(v0 + 3536);
    v39 = *(v0 + 3528);
    v40 = *(v0 + 3504);
    v41 = *(v0 + 3496);
    v42 = *(v0 + 3472);
    v43 = *(v0 + 3448);
    v44 = *(v0 + 3424);
    v45 = *(v0 + 3400);

    v31 = *(v0 + 8);

    return v31();
  }

  else
  {
    v1 = *(v0 + 3496);
    *(v0 + 3896) = type metadata accessor for Service();
    Identifier.init(stringLiteral:)();
    v2 = async function pointer to dispatch thunk of PeripheralProtocol.subscript.getter[1];
    v3 = swift_task_alloc();
    *(v0 + 3904) = v3;
    *v3 = v0;
    v3[1] = sub_100D9F78C;
    v4 = *(v0 + 3752);
    v5 = *(v0 + 3744);
    v6 = *(v0 + 3496);
    v7 = *(v0 + 3376);

    return dispatch thunk of PeripheralProtocol.subscript.getter(v6, v5, v4);
  }
}

uint64_t sub_100DA472C()
{
  v1 = v0[466];
  v2 = v0[462];
  v3 = v0[458];
  v4 = v0[457];
  v5 = v0[451];
  v6 = v0[445];
  v7 = v0[442];

  sub_100DD92EC(v7, type metadata accessor for AccessoryProductInfo);
  sub_10000B3A8(v6, &qword_101697268, &qword_101394FE0);
  sub_100DD92EC(v5, type metadata accessor for AccessoryMetadata);
  (*(v3 + 8))(v2, v4);
  v33 = v0[486];
  v8 = v0[462];
  v9 = v0[461];
  v10 = v0[460];
  v11 = v0[459];
  v12 = v0[456];
  v13 = v0[455];
  v14 = v0[452];
  v15 = v0[451];
  v16 = v0[450];
  v17 = v0[449];
  v20 = v0[448];
  v21 = v0[446];
  v22 = v0[445];
  v23 = v0[444];
  v24 = v0[443];
  v25 = v0[442];
  v26 = v0[441];
  v27 = v0[438];
  v28 = v0[437];
  v29 = v0[434];
  v30 = v0[431];
  v31 = v0[428];
  v32 = v0[425];

  v18 = v0[1];

  return v18();
}

uint64_t sub_100DA4964()
{
  v68 = v0;
  sub_1000D2AD8(v0[444], v0[445], &qword_101697268, &qword_101394FE0);
  v1 = v0[481];
  v2 = v0[443];
  v3 = v0[440];
  v4 = v0[439];
  sub_1000D2A70(v0[445], v2, &qword_101697268, &qword_101394FE0);
  v5 = (*(v3 + 48))(v2, 1, v4);
  v6 = v0[474];
  v7 = v0[443];
  if (v5 == 1)
  {
    sub_10000B3A8(v7, &qword_101697268, &qword_101394FE0);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "Missing product info!", v10, 2u);
    }

    v11 = v0[466];
    v12 = v0[462];
    v13 = v0[458];
    v14 = v0[457];
    v15 = v0[451];
    v16 = v0[445];

    sub_100500BC4();
    swift_allocError();
    *v17 = xmmword_1013E84D0;
    *(v17 + 16) = 3;
    swift_willThrow();

    sub_10000B3A8(v16, &qword_101697268, &qword_101394FE0);
    sub_100DD92EC(v15, type metadata accessor for AccessoryMetadata);
    (*(v13 + 8))(v12, v14);
    goto LABEL_10;
  }

  v18 = v0[442];
  v19 = v0[441];
  sub_100DD921C(v7, v18, type metadata accessor for AccessoryProductInfo);
  sub_100DD9284(v18, v19, type metadata accessor for AccessoryProductInfo);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();
  v22 = os_log_type_enabled(v20, v21);
  v23 = v0[441];
  if (v22)
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v67 = v25;
    *v24 = 136446210;
    v26 = sub_1011A0624(v25);
    v28 = v27;
    sub_100DD92EC(v23, type metadata accessor for AccessoryProductInfo);
    v29 = sub_1000136BC(v26, v28, &v67);

    *(v24 + 4) = v29;
    _os_log_impl(&_mh_execute_header, v20, v21, "Product info: %{public}s)", v24, 0xCu);
    sub_100007BAC(v25);
  }

  else
  {

    sub_100DD92EC(v23, type metadata accessor for AccessoryProductInfo);
  }

  v30 = v0[423];
  sub_100DBD674(v0[451], v0[442]);
  if (v1)
  {
    v31 = v0[466];
    v32 = v0[462];
    v33 = v0[458];
    v34 = v0[457];
    v35 = v0[451];
    v36 = v0[445];
    v37 = v0[442];

    sub_100DD92EC(v37, type metadata accessor for AccessoryProductInfo);
    sub_10000B3A8(v36, &qword_101697268, &qword_101394FE0);
    sub_100DD92EC(v35, type metadata accessor for AccessoryMetadata);
    (*(v33 + 8))(v32, v34);
LABEL_10:
    v38 = v0[462];
    v39 = v0[461];
    v40 = v0[460];
    v41 = v0[459];
    v42 = v0[456];
    v43 = v0[455];
    v44 = v0[452];
    v45 = v0[451];
    v46 = v0[450];
    v47 = v0[449];
    v54 = v0[448];
    v55 = v0[446];
    v56 = v0[445];
    v57 = v0[444];
    v58 = v0[443];
    v59 = v0[442];
    v60 = v0[441];
    v61 = v0[438];
    v62 = v0[437];
    v63 = v0[434];
    v64 = v0[431];
    v65 = v0[428];
    v66 = v0[425];

    v48 = v0[1];

    return v48();
  }

  v50 = v0[422];
  v51 = async function pointer to withTimeout<A>(_:block:)[1];

  v52 = swift_task_alloc();
  v0[482] = v52;
  *v52 = v0;
  v52[1] = sub_100D9ED54;
  v53 = v0[422];

  return withTimeout<A>(_:block:)(v52, 0xA055690D9DB80000, 1, &unk_1013E8898, v53, &type metadata for () + 8);
}

uint64_t sub_100DA4F5C()
{
  v1 = v0[466];
  v2 = v0[462];
  v3 = v0[458];
  v4 = v0[457];
  v5 = v0[451];

  sub_100DD92EC(v5, type metadata accessor for AccessoryMetadata);
  (*(v3 + 8))(v2, v4);
  v31 = v0[481];
  v6 = v0[462];
  v7 = v0[461];
  v8 = v0[460];
  v9 = v0[459];
  v10 = v0[456];
  v11 = v0[455];
  v12 = v0[452];
  v13 = v0[451];
  v14 = v0[450];
  v15 = v0[449];
  v18 = v0[448];
  v19 = v0[446];
  v20 = v0[445];
  v21 = v0[444];
  v22 = v0[443];
  v23 = v0[442];
  v24 = v0[441];
  v25 = v0[438];
  v26 = v0[437];
  v27 = v0[434];
  v28 = v0[431];
  v29 = v0[428];
  v30 = v0[425];

  v16 = v0[1];

  return v16();
}

uint64_t sub_100DA5158(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v3 = type metadata accessor for UUID();
  v2[10] = v3;
  v4 = *(v3 - 8);
  v2[11] = v4;
  v5 = *(v4 + 64) + 15;
  v2[12] = swift_task_alloc();
  v6 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
  v2[13] = v6;
  v7 = *(v6 - 8);
  v2[14] = v7;
  v8 = *(v7 + 64) + 15;
  v2[15] = swift_task_alloc();

  return _swift_task_switch(sub_100DA5280, v1, 0);
}

uint64_t sub_100DA5280()
{
  v20 = v0;
  if (qword_101694EA0 != -1)
  {
    swift_once();
  }

  v1 = v0[8];
  v2 = type metadata accessor for Logger();
  v0[16] = sub_1000076D4(v2, qword_1016BB490);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[14];
    v5 = v0[15];
    v7 = v0[13];
    v8 = v0[8];
    v9 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v9 = 136446466;
    *(v9 + 4) = sub_1000136BC(0xD000000000000018, 0x8000000101370EA0, &v19);
    *(v9 + 12) = 2082;
    type metadata accessor for Peripheral();
    sub_100D97688(&qword_1016972A0, &type metadata accessor for Peripheral);
    dispatch thunk of PeripheralProtocol.id.getter();
    sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00);
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    v12 = v11;

    (*(v6 + 8))(v5, v7);
    v13 = sub_1000136BC(v10, v12, &v19);

    *(v9 + 14) = v13;
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s for peripheral: %{public}s", v9, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v14 = v0[8];
  }

  v15 = swift_task_alloc();
  v0[17] = v15;
  *v15 = v0;
  v15[1] = sub_100DA5568;
  v16 = v0[8];
  v17 = v0[9];

  return sub_100DBB6E8(v16);
}

uint64_t sub_100DA5568(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 136);
  v6 = *v3;
  v4[18] = a1;
  v4[19] = a2;

  if (v2)
  {
    v7 = v4[15];
    v8 = v4[12];

    v9 = *(v6 + 8);

    return v9();
  }

  else
  {
    v11 = v4[9];

    return _swift_task_switch(sub_100DA56C4, v11, 0);
  }
}

uint64_t sub_100DA56C4()
{
  v31 = v0;
  if ((v0[19] & 0x3000000000000000) == 0x1000000000000000)
  {
    v1 = v0[18];
    v2 = v0[16];
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = 0xD000000000000010;
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v30 = v7;
      *v6 = 136446210;
      if (v1)
      {
        if (v1 == 1)
        {
          v5 = 0xD000000000000014;
        }

        else
        {
          v5 = 0xD000000000000017;
        }

        if (v1 == 1)
        {
          v8 = ".pairedToAnotherAccount";
        }

        else
        {
          v8 = "lastProactiveSubscribeTime";
        }
      }

      else
      {
        v8 = ".pairedToThisAccount";
      }

      v20 = sub_1000136BC(v5, v8 | 0x8000000000000000, &v30);

      *(v6 + 4) = v20;
      _os_log_impl(&_mh_execute_header, v3, v4, "FMND status: %{public}s", v6, 0xCu);
      sub_100007BAC(v7);
    }

    v22 = v0[14];
    v21 = v0[15];
    v24 = v0[12];
    v23 = v0[13];
    v25 = v0[8];
    v0[20] = type metadata accessor for Peripheral();
    v0[21] = sub_100D97688(&qword_1016972A0, &type metadata accessor for Peripheral);
    dispatch thunk of PeripheralProtocol.id.getter();
    Identifier.id.getter();
    v26 = *(v22 + 8);
    v0[22] = v26;
    v0[23] = (v22 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v26(v21, v23);
    v27 = swift_task_alloc();
    v0[24] = v27;
    *v27 = v0;
    v27[1] = sub_100DA5A14;
    v28 = v0[12];
    v29 = v0[9];

    return sub_100D927C4(v28, 0, 0x2000000000000000);
  }

  else
  {
    v9 = v0[16];
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    v12 = os_log_type_enabled(v10, v11);
    v14 = v0[18];
    v13 = v0[19];
    if (v12)
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "Unexpected FMND ID response!", v15, 2u);
    }

    sub_100DD9F00(v14, v13);
    v16 = v0[15];
    v17 = v0[12];

    v18 = v0[1];

    return v18(0);
  }
}

uint64_t sub_100DA5A14()
{
  v1 = *v0;
  v2 = *(*v0 + 192);
  v3 = *(*v0 + 96);
  v4 = *(*v0 + 88);
  v5 = *(*v0 + 80);
  v6 = *v0;

  v7 = *(v4 + 8);
  v1[25] = v7;
  v1[26] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v7(v3, v5);
  v8 = swift_task_alloc();
  v1[27] = v8;
  *v8 = v6;
  v8[1] = sub_100DA5BD4;
  v9 = v1[9];
  v10 = v1[8];

  return sub_100DB1524(v10);
}

uint64_t sub_100DA5BD4(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v6 = *(*v3 + 216);
  v7 = *v3;
  v5[28] = a1;
  v5[29] = a2;
  v5[30] = v2;

  v8 = v4[9];
  if (v2)
  {
    v9 = sub_100DA61A8;
  }

  else
  {
    v9 = sub_100DA5D0C;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_100DA5D0C()
{
  v2 = v0[28];
  v1 = v0[29];
  v4 = v0[22];
  v3 = v0[23];
  v5 = v0[20];
  v6 = v0[21];
  v7 = v0[15];
  v9 = v0[12];
  v8 = v0[13];
  v10 = v0[8];
  dispatch thunk of PeripheralProtocol.id.getter();
  Identifier.id.getter();
  v4(v7, v8);
  sub_100017D5C(v2, v1);
  v11 = swift_task_alloc();
  v0[31] = v11;
  *v11 = v0;
  v11[1] = sub_100DA5E08;
  v12 = v0[28];
  v13 = v0[29];
  v14 = v0[12];
  v15 = v0[9];

  return sub_100D927C4(v14, v12, v13);
}

uint64_t sub_100DA5E08()
{
  v1 = *(*v0 + 248);
  v2 = *(*v0 + 232);
  v3 = *(*v0 + 224);
  v4 = *(*v0 + 208);
  v5 = *(*v0 + 200);
  v6 = *(*v0 + 96);
  v7 = *(*v0 + 80);
  v8 = *(*v0 + 72);
  v10 = *v0;

  sub_100016590(v3, v2);
  v5(v6, v7);

  return _swift_task_switch(sub_100DA5FC0, v8, 0);
}

uint64_t sub_100DA5FC0()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 232);
  v3 = *(*(v0 + 72) + 136);
  *(v0 + 16) = v1;
  *(v0 + 24) = v2;
  *(v0 + 32) = 0;
  *(v0 + 40) = 1;
  *(v0 + 48) = 0;
  *(v0 + 56) = 1;
  sub_100017D5C(v1, v2);
  v4 = swift_task_alloc();
  *(v0 + 256) = v4;
  *v4 = v0;
  v4[1] = sub_100DA607C;

  return sub_100B9F4F8(v0 + 16);
}

uint64_t sub_100DA607C(char a1)
{
  v3 = *v2;
  v4 = *(*v2 + 256);
  v9 = *v2;
  *(v3 + 57) = a1;
  *(v3 + 264) = v1;

  if (v1)
  {
    v5 = *(v3 + 72);
    v6 = sub_100DA6754;
  }

  else
  {
    v7 = *(v3 + 72);
    sub_100016590(*(v3 + 224), *(v3 + 232));
    v6 = sub_100DA6394;
    v5 = v7;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100DA61A8()
{
  v15 = v0;
  v1 = *(v0 + 240);
  v2 = *(v0 + 128);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v5 = 136446466;
    *(v5 + 4) = sub_1000136BC(0xD000000000000018, 0x8000000101370EA0, &v14);
    *(v5 + 12) = 2114;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 14) = v8;
    *v6 = v8;
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s error %{public}@", v5, 0x16u);
    sub_10000B3A8(v6, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v7);
  }

  else
  {
  }

  v9 = 0x50304u >> (8 * *(v0 + 144));
  v10 = *(v0 + 120);
  v11 = *(v0 + 96);

  v12 = *(v0 + 8);

  return v12(v9);
}

uint64_t sub_100DA6394()
{
  v40 = v0;
  v1 = *(v0 + 128);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 57);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v39 = v6;
    *v5 = 136446210;
    v7 = sub_100B9EF08(v4);
    v9 = sub_1000136BC(v7, v8, &v39);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v2, v3, "AccountCheckResult.SeverStatus: %{public}s", v5, 0xCu);
    sub_100007BAC(v6);
  }

  v10 = *(v0 + 57);
  v11 = 0x50402u >> (8 * v10);
  if (v10 >= 2)
  {
    v12 = 5;
  }

  else
  {
    v12 = 3;
  }

  v13 = 0x50103u >> (8 * v10);
  if (*(v0 + 144) == 1)
  {
    LOBYTE(v10) = 0;
    v13 = v12;
  }

  if (*(v0 + 144))
  {
    v14 = v10;
  }

  else
  {
    v14 = 0;
  }

  if (*(v0 + 144))
  {
    v15 = v13;
  }

  else
  {
    v15 = v11;
  }

  v16 = *(v0 + 128);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v39 = v20;
    *v19 = 136446210;
    v21 = sub_100B9F190(v15);
    v23 = sub_1000136BC(v21, v22, &v39);

    *(v19 + 4) = v23;
    _os_log_impl(&_mh_execute_header, v17, v18, "AccountCheckResult: %{public}s", v19, 0xCu);
    sub_100007BAC(v20);
  }

  if (v14)
  {
    v24 = *(v0 + 128);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v39 = v28;
      *v27 = 136315138;
      v29 = sub_100B9F190(1u);
      v31 = sub_1000136BC(v29, v30, &v39);

      *(v27 + 4) = v31;
      _os_log_impl(&_mh_execute_header, v25, v26, "Handling %s", v27, 0xCu);
      sub_100007BAC(v28);
    }

    v32 = swift_task_alloc();
    *(v0 + 272) = v32;
    *v32 = v0;
    v32[1] = sub_100DA695C;
    v33 = *(v0 + 64);
    v34 = *(v0 + 72);

    return sub_100DC96E4(v33);
  }

  else
  {
    sub_100016590(*(v0 + 224), *(v0 + 232));
    v36 = *(v0 + 120);
    v37 = *(v0 + 96);

    v38 = *(v0 + 8);

    return v38(v15);
  }
}

uint64_t sub_100DA6754()
{
  v17 = v0;
  v1 = *(v0 + 224);
  v2 = *(v0 + 232);
  sub_100016590(v1, v2);
  sub_100016590(v1, v2);
  v3 = *(v0 + 264);
  v4 = *(v0 + 128);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v7 = 136446466;
    *(v7 + 4) = sub_1000136BC(0xD000000000000018, 0x8000000101370EA0, &v16);
    *(v7 + 12) = 2114;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v10;
    *v8 = v10;
    _os_log_impl(&_mh_execute_header, v5, v6, "%{public}s error %{public}@", v7, 0x16u);
    sub_10000B3A8(v8, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v9);
  }

  else
  {
  }

  v11 = 0x50304u >> (8 * *(v0 + 144));
  v12 = *(v0 + 120);
  v13 = *(v0 + 96);

  v14 = *(v0 + 8);

  return v14(v11);
}

uint64_t sub_100DA695C()
{
  v2 = *v1;
  v3 = *(*v1 + 272);
  v4 = *v1;
  *(*v1 + 280) = v0;

  v5 = *(v2 + 72);
  if (v0)
  {
    v6 = sub_100DA6B04;
  }

  else
  {
    v6 = sub_100DA6A88;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100DA6A88()
{
  sub_100016590(v0[28], v0[29]);
  v1 = v0[15];
  v2 = v0[12];

  v3 = v0[1];

  return v3(4);
}

uint64_t sub_100DA6B04()
{
  v15 = v0;
  sub_100016590(*(v0 + 224), *(v0 + 232));
  v1 = *(v0 + 280);
  v2 = *(v0 + 128);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v5 = 136446466;
    *(v5 + 4) = sub_1000136BC(0xD000000000000018, 0x8000000101370EA0, &v14);
    *(v5 + 12) = 2114;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 14) = v8;
    *v6 = v8;
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s error %{public}@", v5, 0x16u);
    sub_10000B3A8(v6, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v7);
  }

  else
  {
  }

  v9 = 0x50304u >> (8 * *(v0 + 144));
  v10 = *(v0 + 120);
  v11 = *(v0 + 96);

  v12 = *(v0 + 8);

  return v12(v9);
}

uint64_t sub_100DA6CF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = *(*(type metadata accessor for String.Encoding() - 8) + 64) + 15;
  v4[6] = swift_task_alloc();
  v6 = type metadata accessor for UUID();
  v4[7] = v6;
  v7 = *(v6 - 8);
  v4[8] = v7;
  v8 = *(v7 + 64) + 15;
  v4[9] = swift_task_alloc();
  v4[10] = swift_task_alloc();
  v9 = async function pointer to daemon.getter[1];
  v10 = swift_task_alloc();
  v4[11] = v10;
  *v10 = v4;
  v10[1] = sub_100DA6E24;

  return daemon.getter();
}

uint64_t sub_100DA6E24(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 88);
  v12 = *v1;
  *(v3 + 96) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 104) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for CloudStorageService();
  v9 = sub_100D97688(&qword_1016AA400, &type metadata accessor for Daemon);
  v10 = sub_100D97688(&unk_1016AA520, type metadata accessor for CloudStorageService);
  *v6 = v12;
  v6[1] = sub_100DA7000;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100DA7000(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 104);
  v10 = *v2;
  v3[14] = a1;
  v3[15] = v1;

  if (v1)
  {
    v5 = v3[5];
    v6 = sub_100DA7964;
  }

  else
  {
    v7 = v3[12];
    v8 = v3[5];

    v6 = sub_100DA7128;
    v5 = v8;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100DA7128()
{
  v32 = v0;
  if (qword_101694EA0 != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v2 = v0[7];
  v3 = v0[8];
  v5 = v0[3];
  v4 = v0[4];
  v6 = v0[2];
  v7 = type metadata accessor for Logger();
  sub_1000076D4(v7, qword_1016BB490);
  (*(v3 + 16))(v1, v6, v2);
  sub_10002E98C(v5, v4);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  sub_100006654(v5, v4);
  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[10];
  v12 = v0[7];
  v13 = v0[8];
  if (v10)
  {
    v30 = v0[4];
    v14 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    *v14 = 141558787;
    *(v14 + 4) = 1752392040;
    *(v14 + 12) = 2081;
    sub_100D97688(&qword_101696930, &type metadata accessor for UUID);
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v16;
    (*(v13 + 8))(v11, v12);
    v18 = sub_1000136BC(v15, v17, &v31);

    *(v14 + 14) = v18;
    *(v14 + 22) = 2160;
    *(v14 + 24) = 1752392040;
    *(v14 + 32) = 2081;
    if (v30 >> 60 == 15)
    {
      v19 = 0;
      v20 = 0xE000000000000000;
    }

    else
    {
      v21 = v0[6];
      v23 = v0[3];
      v22 = v0[4];
      static String.Encoding.utf8.getter();
      v19 = String.init(data:encoding:)();
      if (!v24)
      {
        v25 = v0[3];
        v26 = v0[4];
        v19 = Data.hexString.getter();
      }

      v20 = v24;
    }

    v27 = sub_1000136BC(v19, v20, &v31);

    *(v14 + 34) = v27;
    _os_log_impl(&_mh_execute_header, v8, v9, "Delete accessory info for %{private,mask.hash}s\nSN: %{private,mask.hash}s", v14, 0x2Au);
    swift_arrayDestroy();
  }

  else
  {

    (*(v13 + 8))(v11, v12);
  }

  v28 = v0[14];

  return _swift_task_switch(sub_100DA7430, v28, 0);
}

uint64_t sub_100DA7430()
{
  v1 = *(v0[14] + 128);
  v2 = swift_task_alloc();
  v0[16] = v2;
  *v2 = v0;
  v2[1] = sub_100DA74D0;
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[2];

  return sub_100C5969C(v5, v3, v4);
}

uint64_t sub_100DA74D0()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v4 = *v1;
  *(*v1 + 136) = v0;

  v5 = *(v2 + 40);
  if (v0)
  {
    v6 = sub_100DA7678;
  }

  else
  {
    v6 = sub_100DA75FC;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100DA75FC()
{
  v1 = v0[14];

  v3 = v0[9];
  v2 = v0[10];
  v4 = v0[6];

  v5 = v0[1];

  return v5();
}

uint64_t sub_100DA7678()
{
  v28 = v0;
  v1 = v0[14];

  v2 = v0[17];
  if (qword_101694EA0 != -1)
  {
    swift_once();
  }

  v4 = v0[8];
  v3 = v0[9];
  v5 = v0[7];
  v6 = v0[2];
  v7 = type metadata accessor for Logger();
  sub_1000076D4(v7, qword_1016BB490);
  (*(v4 + 16))(v3, v6, v5);
  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  v10 = os_log_type_enabled(v8, v9);
  v12 = v0[8];
  v11 = v0[9];
  v13 = v0[7];
  if (v10)
  {
    v14 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v27 = v26;
    *v14 = 141558531;
    *(v14 + 4) = 1752392040;
    *(v14 + 12) = 2081;
    sub_100D97688(&qword_101696930, &type metadata accessor for UUID);
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v16;
    (*(v12 + 8))(v11, v13);
    v18 = sub_1000136BC(v15, v17, &v27);

    *(v14 + 14) = v18;
    *(v14 + 22) = 2114;
    swift_errorRetain();
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 24) = v19;
    *v25 = v19;
    _os_log_impl(&_mh_execute_header, v8, v9, "Failed to delete accessory info for %{private,mask.hash}s, error %{public}@", v14, 0x20u);
    sub_10000B3A8(v25, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v26);
  }

  else
  {

    (*(v12 + 8))(v11, v13);
  }

  v21 = v0[9];
  v20 = v0[10];
  v22 = v0[6];

  v23 = v0[1];

  return v23();
}

uint64_t sub_100DA7964()
{
  v28 = v0;
  v1 = v0[12];

  v2 = v0[15];
  if (qword_101694EA0 != -1)
  {
    swift_once();
  }

  v4 = v0[8];
  v3 = v0[9];
  v5 = v0[7];
  v6 = v0[2];
  v7 = type metadata accessor for Logger();
  sub_1000076D4(v7, qword_1016BB490);
  (*(v4 + 16))(v3, v6, v5);
  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  v10 = os_log_type_enabled(v8, v9);
  v12 = v0[8];
  v11 = v0[9];
  v13 = v0[7];
  if (v10)
  {
    v14 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v27 = v26;
    *v14 = 141558531;
    *(v14 + 4) = 1752392040;
    *(v14 + 12) = 2081;
    sub_100D97688(&qword_101696930, &type metadata accessor for UUID);
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v16;
    (*(v12 + 8))(v11, v13);
    v18 = sub_1000136BC(v15, v17, &v27);

    *(v14 + 14) = v18;
    *(v14 + 22) = 2114;
    swift_errorRetain();
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 24) = v19;
    *v25 = v19;
    _os_log_impl(&_mh_execute_header, v8, v9, "Failed to delete accessory info for %{private,mask.hash}s, error %{public}@", v14, 0x20u);
    sub_10000B3A8(v25, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v26);
  }

  else
  {

    (*(v12 + 8))(v11, v13);
  }

  v21 = v0[9];
  v20 = v0[10];
  v22 = v0[6];

  v23 = v0[1];

  return v23();
}

uint64_t sub_100DA7C50(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 32) = a3;
  *(v4 + 40) = a4;
  *(v4 + 80) = a2;
  *(v4 + 24) = a1;
  v5 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
  *(v4 + 48) = v5;
  v6 = *(v5 - 8);
  *(v4 + 56) = v6;
  v7 = *(v6 + 64) + 15;
  *(v4 + 64) = swift_task_alloc();
  *(v4 + 72) = swift_task_alloc();

  return _swift_task_switch(sub_100DA7D30, 0, 0);
}

uint64_t sub_100DA7D30()
{
  v48 = v0;
  if (*(v0 + 80))
  {
    v1 = *(v0 + 24);
    v2 = v1;
    if (qword_101694EA0 != -1)
    {
      swift_once();
      v2 = *(v0 + 24);
    }

    v4 = *(v0 + 56);
    v3 = *(v0 + 64);
    v5 = *(v0 + 48);
    v6 = *(v0 + 32);
    v7 = type metadata accessor for Logger();
    sub_1000076D4(v7, qword_1016BB490);
    (*(v4 + 16))(v3, v6, v5);
    swift_errorRetain();
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    sub_1000BB584(v2, 1);
    v10 = os_log_type_enabled(v8, v9);
    v12 = *(v0 + 56);
    v11 = *(v0 + 64);
    v13 = *(v0 + 48);
    if (v10)
    {
      v14 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      *v14 = 136446722;
      *(v14 + 4) = sub_1000136BC(0xD000000000000029, 0x8000000101370C70, &v47);
      *(v14 + 12) = 2082;
      sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00);
      v45 = v9;
      v15 = dispatch thunk of CustomStringConvertible.description.getter();
      v17 = v16;
      (*(v12 + 8))(v11, v13);
      v18 = sub_1000136BC(v15, v17, &v47);

      *(v14 + 14) = v18;
      *(v14 + 22) = 2114;
      swift_errorRetain();
      v19 = _swift_stdlib_bridgeErrorToNSError();
      *(v14 + 24) = v19;
      *v46 = v19;
      _os_log_impl(&_mh_execute_header, v8, v45, "%{public}s failed for %{public}s. Error %{public}@", v14, 0x20u);
      sub_10000B3A8(v46, &qword_10169BB30, &unk_10138B3C0);

      swift_arrayDestroy();

      if ((static Task<>.isCancelled.getter() & 1) == 0)
      {
LABEL_6:
        v20 = *(v0 + 40);
        *(v0 + 16) = v1;
        swift_errorRetain();
        sub_1000BC4D4(&unk_1016B1770, &qword_1013AC3F0);
        CheckedContinuation.resume(throwing:)();
        goto LABEL_16;
      }
    }

    else
    {

      (*(v12 + 8))(v11, v13);
      if ((static Task<>.isCancelled.getter() & 1) == 0)
      {
        goto LABEL_6;
      }
    }

    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v47 = v40;
      *v39 = 136446210;
      *(v39 + 4) = sub_1000136BC(0xD000000000000029, 0x8000000101370C70, &v47);
      _os_log_impl(&_mh_execute_header, v37, v38, "%{public}s Not resuming continuation in cancelled task.", v39, 0xCu);
      sub_100007BAC(v40);
    }
  }

  else
  {
    if (qword_101694EA0 != -1)
    {
      swift_once();
    }

    v21 = *(v0 + 72);
    v22 = *(v0 + 48);
    v23 = *(v0 + 56);
    v24 = *(v0 + 32);
    v25 = type metadata accessor for Logger();
    sub_1000076D4(v25, qword_1016BB490);
    (*(v23 + 16))(v21, v24, v22);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();
    v28 = os_log_type_enabled(v26, v27);
    v29 = *(v0 + 72);
    v30 = *(v0 + 48);
    v31 = *(v0 + 56);
    if (v28)
    {
      v32 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      *v32 = 136446466;
      *(v32 + 4) = sub_1000136BC(0xD000000000000029, 0x8000000101370C70, &v47);
      *(v32 + 12) = 2082;
      sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00);
      v33 = dispatch thunk of CustomStringConvertible.description.getter();
      v35 = v34;
      (*(v31 + 8))(v29, v30);
      v36 = sub_1000136BC(v33, v35, &v47);

      *(v32 + 14) = v36;
      _os_log_impl(&_mh_execute_header, v26, v27, "%{public}s succeeded for %{public}s", v32, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v31 + 8))(v29, v30);
    }
  }

LABEL_16:
  v42 = *(v0 + 64);
  v41 = *(v0 + 72);

  v43 = *(v0 + 8);

  return v43();
}

uint64_t sub_100DA8340(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v2[5] = *v1;
  return _swift_task_switch(sub_100DA8388, v1, 0);
}

uint64_t sub_100DA8388()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[3];
  v4 = sub_100D97688(&qword_1016BB850, type metadata accessor for PencilPairingService);
  v5 = swift_task_alloc();
  v0[6] = v5;
  v5[2] = v1;
  v5[3] = v3;
  v5[4] = v2;
  v6 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v7 = swift_task_alloc();
  v0[7] = v7;
  v8 = sub_1000BC4D4(&qword_1016B55F0, &qword_1013D6BE0);
  *v7 = v0;
  v7[1] = sub_1008EE19C;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 2, v1, v4, 0xD000000000000017, 0x8000000101371200, sub_100DDD480, v5, v8);
}

uint64_t sub_100DA84D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a2;
  v31 = a4;
  v29 = a1;
  v5 = sub_1000BC4D4(&qword_101699888, &unk_1013D68A0);
  v27 = v5;
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v26 - v8;
  v28 = &v26 - v8;
  v10 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v26 - v13;
  v15 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v26 - v17;
  v19 = type metadata accessor for TaskPriority();
  (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
  (*(v11 + 16))(v14, a3, v10);
  (*(v6 + 16))(v9, v29, v5);
  v20 = sub_100D97688(&qword_1016BB850, type metadata accessor for PencilPairingService);
  v21 = (*(v11 + 80) + 40) & ~*(v11 + 80);
  v22 = (v12 + *(v6 + 80) + v21) & ~*(v6 + 80);
  v23 = swift_allocObject();
  v24 = v30;
  *(v23 + 2) = v30;
  *(v23 + 3) = v20;
  *(v23 + 4) = v24;
  (*(v11 + 32))(&v23[v21], v14, v10);
  (*(v6 + 32))(&v23[v22], v28, v27);
  *&v23[(v7 + v22 + 7) & 0xFFFFFFFFFFFFFFF8] = v31;
  swift_retain_n();
  sub_10025EDD4(0, 0, v18, &unk_1013E8C68, v23);
}

uint64_t sub_100DA8804(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v9 = sub_1000BC4D4(&qword_101699888, &unk_1013D68A0);
  v7[6] = v9;
  v10 = *(v9 - 8);
  v7[7] = v10;
  v7[8] = *(v10 + 64);
  v7[9] = swift_task_alloc();
  v7[10] = swift_task_alloc();
  v11 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
  v7[11] = v11;
  v12 = *(v11 - 8);
  v7[12] = v12;
  v7[13] = *(v12 + 64);
  v7[14] = swift_task_alloc();
  v7[15] = swift_task_alloc();
  v13 = type metadata accessor for UUID();
  v7[16] = v13;
  v14 = *(v13 - 8);
  v7[17] = v14;
  v15 = *(v14 + 64) + 15;
  v7[18] = swift_task_alloc();

  return _swift_task_switch(sub_100DA89C4, a4, 0);
}

uint64_t sub_100DA89C4()
{
  v1 = v0[18];
  v2 = v0[11];
  v3 = v0[3];
  Identifier.id.getter();
  v4 = swift_task_alloc();
  v0[19] = v4;
  *v4 = v0;
  v4[1] = sub_100DA8A74;
  v5 = v0[18];
  v6 = v0[2];

  return sub_100D927C4(v5, 1, 0x1000000000000000);
}

uint64_t sub_100DA8A74()
{
  v1 = *(*v0 + 152);
  v2 = *(*v0 + 144);
  v3 = *(*v0 + 136);
  v4 = *(*v0 + 128);
  v5 = *(*v0 + 16);
  v7 = *v0;

  (*(v3 + 8))(v2, v4);

  return _swift_task_switch(sub_100DA8BE0, v5, 0);
}

uint64_t sub_100DA8BE0()
{
  v29 = v0[18];
  v1 = v0[15];
  v27 = v0[14];
  v2 = v0[12];
  v3 = v0[13];
  v4 = v0[10];
  v5 = v0[11];
  v34 = v4;
  v6 = v0[8];
  v28 = v0[9];
  v7 = v0[6];
  v35 = v0[7];
  v31 = v7;
  v8 = v0[4];
  v33 = v0[5];
  v24 = v8;
  v9 = v0[3];
  v26 = v9;
  v32 = v0[2];
  v30 = *(v32 + OBJC_IVAR____TtC12searchpartyd20PencilPairingService_queue);
  type metadata accessor for WorkItemQueue.WorkItem();
  v25 = *(v2 + 16);
  v25(v1, v9, v5);
  v23 = *(v35 + 16);
  v23(v4, v8, v7);
  v10 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v22 = v10 + v3;
  v11 = (v10 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(v35 + 80);
  v13 = (v12 + v11 + 8) & ~v12;
  v21 = v6 + 7;
  v14 = swift_allocObject();
  v20 = *(v2 + 32);
  v20(v14 + v10, v1, v5);
  *(v14 + v11) = v32;
  v15 = *(v35 + 32);
  v15(v14 + v13, v34, v31);
  *(v14 + ((v13 + v6 + 7) & 0xFFFFFFFFFFFFFFF8)) = v33;
  v25(v27, v26, v5);
  v23(v28, v24, v31);
  v16 = (v22 + v12) & ~v12;
  v17 = swift_allocObject();
  v20(v17 + v10, v27, v5);
  v15(v17 + v16, v28, v31);
  *(v17 + ((v16 + v21) & 0xFFFFFFFFFFFFFFF8)) = v33;

  UUID.init()();
  WorkItemQueue.WorkItem.__allocating_init(identifier:block:completion:)();
  dispatch thunk of WorkItemQueue.enqueue(_:)();

  v18 = v0[1];

  return v18();
}

uint64_t sub_100DA8F08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a2;
  v3[6] = a3;
  v3[4] = a1;
  v4 = *(*(sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0) - 8) + 64) + 15;
  v3[7] = swift_task_alloc();
  v5 = type metadata accessor for UUID();
  v3[8] = v5;
  v6 = *(v5 - 8);
  v3[9] = v6;
  v7 = *(v6 + 64) + 15;
  v3[10] = swift_task_alloc();
  v8 = *(*(sub_1000BC4D4(&qword_101699E50, &qword_1013D97C0) - 8) + 64) + 15;
  v3[11] = swift_task_alloc();
  v9 = type metadata accessor for Date();
  v3[12] = v9;
  v10 = *(v9 - 8);
  v3[13] = v10;
  v11 = *(v10 + 64) + 15;
  v3[14] = swift_task_alloc();
  v12 = *(*(sub_1000BC4D4(&qword_101698C00, &qword_10138B570) - 8) + 64) + 15;
  v3[15] = swift_task_alloc();
  v13 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
  v3[16] = v13;
  v14 = *(v13 - 8);
  v3[17] = v14;
  v15 = *(v14 + 64) + 15;
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();

  return _swift_task_switch(sub_100DA9144, 0, 0);
}

uint64_t sub_100DA9144()
{
  v21 = v0;
  if (qword_101694EA0 != -1)
  {
    swift_once();
  }

  v1 = v0[19];
  v2 = v0[16];
  v3 = v0[17];
  v4 = v0[4];
  v5 = type metadata accessor for Logger();
  v0[20] = sub_1000076D4(v5, qword_1016BB490);
  (*(v3 + 16))(v1, v4, v2);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[19];
  v10 = v0[16];
  v11 = v0[17];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v12 = 136446466;
    *(v12 + 4) = sub_1000136BC(0xD000000000000017, 0x8000000101371200, &v20);
    *(v12 + 12) = 2082;
    sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;
    v16 = *(v11 + 8);
    v16(v9, v10);
    v17 = sub_1000136BC(v13, v15, &v20);

    *(v12 + 14) = v17;
    _os_log_impl(&_mh_execute_header, v6, v7, "%{public}s %{public}s", v12, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v16 = *(v11 + 8);
    v16(v9, v10);
  }

  v0[21] = v16;
  v18 = *(v0[5] + OBJC_IVAR____TtC12searchpartyd20PencilPairingService_locationPublisher);
  v0[22] = v18;

  return _swift_task_switch(sub_100DA93D0, v18, 0);
}

uint64_t sub_100DA93D0()
{
  v1 = v0[22];
  v2 = v0[15];
  v3 = type metadata accessor for TaskPriority();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = sub_100D97688(&qword_1016BB928, type metadata accessor for PencilLocationsPublisher);
  v5 = swift_allocObject();
  v5[2] = v1;
  v5[3] = v4;
  v5[4] = v1;
  swift_retain_n();
  v0[23] = sub_100A83BA8(0, 0, v2, &unk_1013E8C90, v5);
  type metadata accessor for CentralManager();
  v6 = async function pointer to static CentralManager.pairingCentralManager.getter[1];
  v7 = swift_task_alloc();
  v0[24] = v7;
  *v7 = v0;
  v7[1] = sub_100DA954C;

  return static CentralManager.pairingCentralManager.getter();
}

uint64_t sub_100DA954C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 192);
  v6 = *v2;
  v4[25] = a1;
  v4[26] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_100DAA104, 0, 0);
  }

  else
  {
    v7 = swift_task_alloc();
    v4[27] = v7;
    *v7 = v6;
    v7[1] = sub_100DA96EC;
    v8 = v4[4];
    v9 = v4[5];

    return sub_100DAA404(a1, v8);
  }
}

uint64_t sub_100DA96EC(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 216);
  v7 = *v2;
  *(v3 + 224) = a1;
  *(v3 + 232) = v1;

  if (v1)
  {
    v5 = sub_100DAA1C4;
  }

  else
  {
    v5 = sub_100DA9800;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100DA9800()
{
  static Date.trustedNow.getter(v0[14]);
  v1 = async function pointer to Task.value.getter[1];
  v2 = swift_task_alloc();
  v0[30] = v2;
  v3 = sub_1000BC4D4(&qword_1016B55F0, &qword_1013D6BE0);
  v4 = sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  *v2 = v0;
  v2[1] = sub_100DA98E0;
  v5 = v0[23];

  return Task.value.getter(v0 + 2, v5, v3, v4, &protocol self-conformance witness table for Error);
}

uint64_t sub_100DA98E0()
{
  v2 = *(*v1 + 240);
  v5 = *v1;
  *(*v1 + 248) = v0;

  if (v0)
  {

    v3 = sub_100DAA290;
  }

  else
  {
    v3 = sub_100DA99FC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100DA99FC()
{
  v37 = v0;
  v1 = v0[2];
  if (v1)
  {
    v2 = v0[20];
    v3 = v1;
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v36 = v8;
      *v6 = 136315394;
      *(v6 + 4) = sub_1000136BC(0xD000000000000017, 0x8000000101371200, &v36);
      *(v6 + 12) = 2112;
      *(v6 + 14) = v3;
      *v7 = v1;
      v9 = v3;
      _os_log_impl(&_mh_execute_header, v4, v5, "%s Got one shot location %@", v6, 0x16u);
      sub_10000B3A8(v7, &qword_10169BB30, &unk_10138B3C0);

      sub_100007BAC(v8);
    }

    v10 = v0[11];
    [v3 coordinate];
    *v10 = v11;
    [v3 coordinate];
    v10[1] = v12;
    [v3 horizontalAccuracy];
    v10[2] = v13;
    v14 = [v3 timestamp];
    v15 = type metadata accessor for DeviceEvent.Location(0);
    v16 = v10 + *(v15 + 28);
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    (*(*(v15 - 8) + 56))(v10, 0, 1, v15);
    v17 = v0[31];
  }

  else
  {
    v17 = v0[31];
    v18 = v0[11];
    v19 = type metadata accessor for DeviceEvent.Location(0);
    (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
  }

  v0[32] = v17;
  v0[33] = v1;
  v20 = v0[28];
  v21 = v0[21];
  v23 = v0[17];
  v22 = v0[18];
  v24 = v0[16];
  v26 = v0[9];
  v25 = v0[10];
  v28 = v0[7];
  v27 = v0[8];
  Peripheral.id.getter();
  Identifier.id.getter();
  v21(v22, v24);
  (*(v26 + 56))(v28, 1, 1, v27);
  v29 = swift_task_alloc();
  v0[34] = v29;
  *v29 = v0;
  v29[1] = sub_100DA9D5C;
  v30 = v0[14];
  v32 = v0[10];
  v31 = v0[11];
  v33 = v0[7];
  v34 = v0[5];

  return sub_100DAB1EC(v32, 7, v30, v33, v31);
}

uint64_t sub_100DA9D5C()
{
  v1 = *(*v0 + 272);
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 72);
  v4 = *(*v0 + 64);
  v5 = *(*v0 + 56);
  v7 = *v0;

  sub_10000B3A8(v5, &qword_1016980D0, &unk_10138F3B0);
  (*(v3 + 8))(v2, v4);

  return _swift_task_switch(sub_100DA9EE0, 0, 0);
}

uint64_t sub_100DA9EE0()
{
  v1 = v0[32];
  static Task<>.checkCancellation()();
  if (v1)
  {
    v2 = v0[33];
    v3 = v0[28];
    v4 = v0[25];
    v5 = v0[23];
    v7 = v0[13];
    v6 = v0[14];
    v9 = v0[11];
    v8 = v0[12];

    sub_10000B3A8(v9, &qword_101699E50, &qword_1013D97C0);
    (*(v7 + 8))(v6, v8);
    v11 = v0[18];
    v10 = v0[19];
    v13 = v0[14];
    v12 = v0[15];
    v15 = v0[10];
    v14 = v0[11];
    v16 = v0[7];
  }

  else
  {
    v18 = v0[33];
    v19 = v0[28];
    v20 = v0[25];
    v21 = v0[23];
    v29 = v0[19];
    v30 = v0[18];
    v22 = v0[14];
    v23 = v0[13];
    v28 = v0[12];
    v24 = v0[11];
    v31 = v0[15];
    v32 = v0[10];
    v25 = v0[6];
    v33 = v0[7];
    v0[3] = v18;
    v26 = v18;
    sub_1000BC4D4(&qword_101699888, &unk_1013D68A0);
    CheckedContinuation.resume(returning:)();

    sub_10000B3A8(v24, &qword_101699E50, &qword_1013D97C0);
    (*(v23 + 8))(v22, v28);
  }

  v17 = v0[1];

  return v17();
}

uint64_t sub_100DAA104()
{
  v1 = v0[23];

  v2 = v0[26];
  v4 = v0[18];
  v3 = v0[19];
  v6 = v0[14];
  v5 = v0[15];
  v8 = v0[10];
  v7 = v0[11];
  v9 = v0[7];

  v10 = v0[1];

  return v10();
}

uint64_t sub_100DAA1C4()
{
  v1 = v0[25];
  v2 = v0[23];

  v3 = v0[29];
  v5 = v0[18];
  v4 = v0[19];
  v7 = v0[14];
  v6 = v0[15];
  v9 = v0[10];
  v8 = v0[11];
  v10 = v0[7];

  v11 = v0[1];

  return v11();
}

uint64_t sub_100DAA290()
{
  v1 = v0[11];
  v2 = type metadata accessor for DeviceEvent.Location(0);
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v0[32] = 0;
  v0[33] = 0;
  v3 = v0[28];
  v4 = v0[21];
  v6 = v0[17];
  v5 = v0[18];
  v7 = v0[16];
  v9 = v0[9];
  v8 = v0[10];
  v11 = v0[7];
  v10 = v0[8];
  Peripheral.id.getter();
  Identifier.id.getter();
  v4(v5, v7);
  (*(v9 + 56))(v11, 1, 1, v10);
  v12 = swift_task_alloc();
  v0[34] = v12;
  *v12 = v0;
  v12[1] = sub_100DA9D5C;
  v13 = v0[14];
  v15 = v0[10];
  v14 = v0[11];
  v16 = v0[7];
  v17 = v0[5];

  return sub_100DAB1EC(v15, 7, v13, v16, v14);
}

uint64_t sub_100DAA404(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v3[6] = *v2;
  v4 = type metadata accessor for CentralManager.State();
  v3[7] = v4;
  v5 = *(v4 - 8);
  v3[8] = v5;
  v6 = *(v5 + 64) + 15;
  v3[9] = swift_task_alloc();
  v7 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
  v3[10] = v7;
  v8 = *(v7 - 8);
  v3[11] = v8;
  v3[12] = *(v8 + 64);
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();

  return _swift_task_switch(sub_100DAA578, v2, 0);
}

uint64_t sub_100DAA578()
{
  v28 = v0;
  if (qword_101694EA0 != -1)
  {
    swift_once();
  }

  v1 = v0[15];
  v2 = v0[10];
  v3 = v0[11];
  v4 = v0[4];
  v5 = type metadata accessor for Logger();
  v0[16] = sub_1000076D4(v5, qword_1016BB490);
  v6 = *(v3 + 16);
  v0[17] = v6;
  v0[18] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[15];
  v11 = v0[10];
  v12 = v0[11];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v27 = v26;
    *v13 = 136315138;
    sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    v17 = *(v12 + 8);
    v17(v10, v11);
    v18 = sub_1000136BC(v14, v16, &v27);

    *(v13 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v7, v8, "Pairing Pencil with identifier %s", v13, 0xCu);
    sub_100007BAC(v26);
  }

  else
  {

    v17 = *(v12 + 8);
    v17(v10, v11);
  }

  v0[19] = v17;
  (*(v0[8] + 104))(v0[9], enum case for CentralManager.State.poweredOn(_:), v0[7]);
  v19 = type metadata accessor for CentralManager();
  v20 = sub_100D97688(&unk_1016C1160, &type metadata accessor for CentralManager);
  v21 = async function pointer to dispatch thunk of CentralManagerProtocol.await(state:)[1];
  v22 = swift_task_alloc();
  v0[20] = v22;
  *v22 = v0;
  v22[1] = sub_100DAA870;
  v23 = v0[9];
  v24 = v0[3];

  return dispatch thunk of CentralManagerProtocol.await(state:)(v23, v19, v20);
}

uint64_t sub_100DAA870()
{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v4 = *(*v1 + 72);
  v5 = *(*v1 + 64);
  v6 = *(*v1 + 56);
  v7 = *v1;
  *(*v1 + 168) = v0;

  (*(v5 + 8))(v4, v6);
  v8 = *(v2 + 40);
  if (v0)
  {
    v9 = sub_100DAAD04;
  }

  else
  {
    v9 = sub_100DAA9F8;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_100DAA9F8()
{
  v30 = v0;
  v1 = *(v0 + 144);
  v2 = *(v0 + 128);
  (*(v0 + 136))(*(v0 + 112), *(v0 + 32), *(v0 + 80));
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 152);
  v7 = *(v0 + 112);
  v9 = *(v0 + 80);
  v8 = *(v0 + 88);
  if (v5)
  {
    v10 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *v10 = 136446466;
    *(v10 + 4) = sub_1000136BC(0xD000000000000026, 0x8000000101371220, &v29);
    *(v10 + 12) = 2080;
    sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00);
    v11 = dispatch thunk of CustomStringConvertible.description.getter();
    v13 = v12;
    v6(v7, v9);
    v14 = sub_1000136BC(v11, v13, &v29);

    *(v10 + 14) = v14;
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s Retrieving peripheral matching identifier: %s", v10, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v6(v7, v9);
  }

  v15 = *(v0 + 144);
  v17 = *(v0 + 96);
  v16 = *(v0 + 104);
  v18 = *(v0 + 80);
  v19 = *(v0 + 88);
  v20 = *(v0 + 48);
  v21 = *(v0 + 24);
  (*(v0 + 136))(v16, *(v0 + 32), v18);
  v22 = (*(v19 + 80) + 24) & ~*(v19 + 80);
  v23 = (v17 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  *(v0 + 176) = v24;
  *(v24 + 16) = v21;
  (*(v19 + 32))(v24 + v22, v16, v18);
  *(v24 + v23) = v20;
  v25 = async function pointer to withTimeout<A>(_:block:)[1];

  v26 = swift_task_alloc();
  *(v0 + 184) = v26;
  v27 = type metadata accessor for Peripheral();
  *v26 = v0;
  v26[1] = sub_100DAAD90;

  return withTimeout<A>(_:block:)(v0 + 16, 0x40AAD21B3B700000, 3, &unk_1013E8CA8, v24, v27);
}

uint64_t sub_100DAAD04()
{
  v1 = v0[21];
  v3 = v0[14];
  v2 = v0[15];
  v4 = v0[13];
  v5 = v0[9];

  v6 = v0[1];

  return v6();
}

uint64_t sub_100DAAD90()
{
  v2 = *v1;
  v3 = *(*v1 + 184);
  v9 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v4 = *(v2 + 40);
    v5 = sub_100DAB0C4;
  }

  else
  {
    v6 = *(v2 + 176);
    v7 = *(v2 + 40);

    v5 = sub_100DAAEB8;
    v4 = v7;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100DAAEB8()
{
  v1 = v0[2];
  v0[25] = v1;
  v2 = swift_task_alloc();
  v0[26] = v2;
  *v2 = v0;
  v2[1] = sub_100DAAF54;
  v3 = v0[5];

  return sub_100D9BE04(v1);
}

uint64_t sub_100DAAF54()
{
  v2 = *(*v1 + 208);
  v3 = *v1;
  v3[27] = v0;

  if (v0)
  {
    v4 = v3[5];

    return _swift_task_switch(sub_100DAB158, v4, 0);
  }

  else
  {
    v6 = v3[14];
    v5 = v3[15];
    v7 = v3[13];
    v8 = v3[9];

    v9 = v3[1];
    v10 = v3[25];

    return v9(v10);
  }
}

uint64_t sub_100DAB0C4()
{
  v1 = v0[22];

  v2 = v0[24];
  v4 = v0[14];
  v3 = v0[15];
  v5 = v0[13];
  v6 = v0[9];

  v7 = v0[1];

  return v7();
}

uint64_t sub_100DAB158()
{
  v1 = v0[25];

  v2 = v0[27];
  v4 = v0[14];
  v3 = v0[15];
  v5 = v0[13];
  v6 = v0[9];

  v7 = v0[1];

  return v7();
}

uint64_t sub_100DAB1EC(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 48) = a5;
  *(v6 + 56) = v5;
  *(v6 + 32) = a3;
  *(v6 + 40) = a4;
  *(v6 + 360) = a2;
  *(v6 + 24) = a1;
  v7 = type metadata accessor for Date();
  *(v6 + 64) = v7;
  v8 = *(v7 - 8);
  *(v6 + 72) = v8;
  v9 = *(v8 + 64) + 15;
  *(v6 + 80) = swift_task_alloc();
  v10 = type metadata accessor for DeviceEvent(0);
  *(v6 + 88) = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  *(v6 + 96) = swift_task_alloc();
  v12 = type metadata accessor for BeaconIdentifier();
  *(v6 + 104) = v12;
  v13 = *(*(v12 - 8) + 64) + 15;
  *(v6 + 112) = swift_task_alloc();
  v14 = type metadata accessor for OwnedBeaconRecord();
  *(v6 + 120) = v14;
  v15 = *(v14 - 8);
  *(v6 + 128) = v15;
  v16 = *(v15 + 64) + 15;
  *(v6 + 136) = swift_task_alloc();
  *(v6 + 144) = swift_task_alloc();
  v17 = *(*(sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0) - 8) + 64) + 15;
  *(v6 + 152) = swift_task_alloc();
  v18 = *(*(sub_1000BC4D4(&unk_1016AA510, &unk_101393150) - 8) + 64) + 15;
  *(v6 + 160) = swift_task_alloc();
  v19 = *(*(sub_1000BC4D4(&qword_101699E50, &qword_1013D97C0) - 8) + 64) + 15;
  *(v6 + 168) = swift_task_alloc();
  v20 = type metadata accessor for UUID();
  *(v6 + 176) = v20;
  v21 = *(v20 - 8);
  *(v6 + 184) = v21;
  v22 = *(v21 + 64) + 15;
  *(v6 + 192) = swift_task_alloc();
  *(v6 + 200) = swift_task_alloc();
  *(v6 + 208) = swift_task_alloc();
  *(v6 + 216) = swift_task_alloc();
  *(v6 + 224) = swift_task_alloc();

  return _swift_task_switch(sub_100DAB4B4, v5, 0);
}

uint64_t sub_100DAB4B4()
{
  v60 = v0;
  if (qword_101694EA0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 224);
  v2 = *(v0 + 176);
  v3 = *(v0 + 184);
  v4 = *(v0 + 168);
  v5 = *(v0 + 48);
  v6 = *(v0 + 24);
  v7 = type metadata accessor for Logger();
  *(v0 + 232) = sub_1000076D4(v7, qword_1016BB490);
  v8 = *(v3 + 16);
  *(v0 + 240) = v8;
  *(v0 + 248) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v8(v1, v6, v2);
  sub_1000D2A70(v5, v4, &qword_101699E50, &qword_1013D97C0);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  v11 = os_log_type_enabled(v9, v10);
  v12 = *(v0 + 224);
  v14 = *(v0 + 176);
  v13 = *(v0 + 184);
  v15 = *(v0 + 168);
  if (v11)
  {
    v56 = v10;
    log = v9;
    v58 = v8;
    v16 = *(v0 + 360);
    v17 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    *v17 = 136316163;
    *(v17 + 4) = sub_1000136BC(0xD000000000000044, 0x8000000101370E40, &v59);
    *(v17 + 12) = 2160;
    *(v17 + 14) = 1752392040;
    *(v17 + 22) = 2081;
    sub_100D97688(&qword_101696930, &type metadata accessor for UUID);
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    v20 = v19;
    v21 = *(v13 + 8);
    v21(v12, v14);
    v22 = sub_1000136BC(v18, v20, &v59);

    *(v17 + 24) = v22;
    *(v17 + 32) = 1024;
    v23 = type metadata accessor for DeviceEvent.Location(0);
    LODWORD(v22) = (*(*(v23 - 8) + 48))(v15, 1, v23) != 1;
    sub_10000B3A8(v15, &qword_101699E50, &qword_1013D97C0);
    v24 = 0xE800000000000000;
    *(v17 + 34) = v22;
    v25 = 0x6E776F6E6B6E752ELL;
    *(v17 + 38) = 2082;
    v26 = 0xEC00000064657261;
    v27 = 0x657070617369642ELL;
    if (v16 != 6)
    {
      v27 = 0x726961702ELL;
      v26 = 0xE500000000000000;
    }

    v28 = 0xE700000000000000;
    v29 = 0x6863617465642ELL;
    if (v16 != 4)
    {
      v29 = 0x657463657465642ELL;
      v28 = 0xEF79627261654E64;
    }

    if (v16 <= 5)
    {
      v27 = v29;
      v26 = v28;
    }

    v30 = 0xEB00000000746365;
    v31 = 0x6E6E6F637369642ELL;
    if (v16 != 2)
    {
      v31 = 0x6863617474612ELL;
      v30 = 0xE700000000000000;
    }

    if (v16)
    {
      v25 = 0x7463656E6E6F632ELL;
      v24 = 0xE800000000000000;
    }

    if (v16 > 1)
    {
      v25 = v31;
      v24 = v30;
    }

    if (v16 <= 3)
    {
      v32 = v25;
    }

    else
    {
      v32 = v27;
    }

    if (v16 <= 3)
    {
      v33 = v24;
    }

    else
    {
      v33 = v26;
    }

    v34 = sub_1000136BC(v32, v33, &v59);

    *(v17 + 40) = v34;
    _os_log_impl(&_mh_execute_header, log, v56, "%s for beacon: %{private,mask.hash}s hasLocation? %{BOOL}d, source: %{public}s.", v17, 0x30u);
    swift_arrayDestroy();

    v8 = v58;
  }

  else
  {
    sub_10000B3A8(*(v0 + 168), &qword_101699E50, &qword_1013D97C0);

    v21 = *(v13 + 8);
    v21(v12, v14);
  }

  *(v0 + 256) = v21;
  v35 = *(v0 + 176);
  v36 = *(v0 + 184);
  v37 = *(v0 + 152);
  sub_1000D2A70(*(v0 + 40), v37, &qword_1016980D0, &unk_10138F3B0);
  if ((*(v36 + 48))(v37, 1, v35) == 1)
  {
    sub_10000B3A8(*(v0 + 152), &qword_1016980D0, &unk_10138F3B0);
    v38 = async function pointer to daemon.getter[1];
    v39 = swift_task_alloc();
    *(v0 + 264) = v39;
    *v39 = v0;
    v40 = sub_100DABB18;
  }

  else
  {
    v41 = *(v0 + 216);
    v42 = *(v0 + 176);
    v43 = *(v0 + 184);
    v44 = *(v0 + 160);
    (*(v43 + 32))(v41, *(v0 + 152), v42);
    v8(v44, v41, v42);
    v45 = type metadata accessor for DeviceEvent.AttachmentInfo(0);
    v46 = *(v45 + 20);
    static SystemInfo.bootSessionUUID.getter();
    v21(v41, v42);
    (*(v43 + 56))(v44 + v46, 0, 1, v42);
    (*(*(v45 - 8) + 56))(v44, 0, 1, v45);
    v48 = *(v0 + 240);
    v47 = *(v0 + 248);
    v49 = *(v0 + 176);
    v51 = *(v0 + 104);
    v50 = *(v0 + 112);
    v52 = *(v0 + 24);
    v53 = getuid();
    sub_1000294F0(v53);
    v48(v50 + *(v51 + 20), v52, v49);
    v54 = async function pointer to daemon.getter[1];
    v39 = swift_task_alloc();
    *(v0 + 312) = v39;
    *v39 = v0;
    v40 = sub_100DAC7D4;
  }

  v39[1] = v40;

  return daemon.getter();
}

uint64_t sub_100DABB18(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 264);
  v12 = *v1;
  *(v3 + 272) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 280) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for BeaconStoreActor();
  v9 = sub_100D97688(&qword_1016AA400, &type metadata accessor for Daemon);
  v10 = sub_100D97688(&qword_101698D20, type metadata accessor for BeaconStoreActor);
  *v6 = v12;
  v6[1] = sub_100DABCF4;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100DABCF4(uint64_t a1)
{
  v5 = *v2;
  v4 = *v2;
  v6 = *(*v2 + 280);
  v7 = *v2;

  v8 = *(v4 + 272);
  if (v1)
  {
    a1 = *(v5 + 56);

    v9 = sub_100DAC490;
  }

  else
  {

    *(v5 + 288) = a1;
    v9 = sub_100DABE4C;
  }

  return _swift_task_switch(v9, a1, 0);
}

uint64_t sub_100DABE4C()
{
  v1 = *(v0 + 288);
  v2 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v3 = swift_task_alloc();
  *(v0 + 296) = v3;
  v4 = sub_1000BC4D4(&qword_101698C80, &unk_1013A23F0);
  *v3 = v0;
  v3[1] = sub_100DABF38;
  v5 = *(v0 + 288);

  return unsafeBlocking<A>(context:_:)(v0 + 16, 0xD000000000000010, 0x800000010134A8C0, sub_1004216C0, v5, v4);
}

uint64_t sub_100DABF38()
{
  v1 = *(*v0 + 296);
  v2 = *(*v0 + 288);
  v4 = *v0;

  return _swift_task_switch(sub_100DAC050, v2, 0);
}

uint64_t sub_100DAC050()
{
  v1 = v0[36];
  v2 = v0[7];

  v0[38] = v0[2];

  return _swift_task_switch(sub_100DAC0C4, v2, 0);
}

uint64_t sub_100DAC0C4()
{
  v45 = v0;
  v1 = v0[38];
  v3 = v0[30];
  v2 = v0[31];
  if (*(v1 + 16))
  {
    v4 = v0[22];
    v5 = v0[23];
    v6 = v0[20];
    v8 = v0[17];
    v7 = v0[18];
    v9 = v0[15];
    v10 = *(v0[16] + 80);
    v11 = v0[38];
    sub_100DD9284(v1 + ((v10 + 32) & ~v10), v8, type metadata accessor for OwnedBeaconRecord);

    sub_100DD921C(v8, v7, type metadata accessor for OwnedBeaconRecord);
    v3(v6, v7 + *(v9 + 20), v4);
    v12 = type metadata accessor for DeviceEvent.AttachmentInfo(0);
    v13 = *(v12 + 20);
    static SystemInfo.bootSessionUUID.getter();
    sub_100DD92EC(v7, type metadata accessor for OwnedBeaconRecord);
    (*(v5 + 56))(v6 + v13, 0, 1, v4);
    (*(*(v12 - 8) + 56))(v6, 0, 1, v12);
  }

  else
  {
    v14 = v0[29];
    v15 = v0[26];
    v16 = v0[22];
    v17 = v0[20];
    v18 = v0[3];

    v19 = type metadata accessor for DeviceEvent.AttachmentInfo(0);
    (*(*(v19 - 8) + 56))(v17, 1, 1, v19);
    v3(v15, v18, v16);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    v22 = os_log_type_enabled(v20, v21);
    v23 = v0[32];
    v24 = v0[26];
    v25 = v0[22];
    v26 = v0[23];
    if (v22)
    {
      v43 = v0[32];
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v44 = v28;
      *v27 = 141558275;
      *(v27 + 4) = 1752392040;
      *(v27 + 12) = 2081;
      sub_100D97688(&qword_101696930, &type metadata accessor for UUID);
      v29 = dispatch thunk of CustomStringConvertible.description.getter();
      v31 = v30;
      v43(v24, v25);
      v32 = sub_1000136BC(v29, v31, &v44);

      *(v27 + 14) = v32;
      _os_log_impl(&_mh_execute_header, v20, v21, "Error could not get self-beacon UUID for device event for beacon: %{private,mask.hash}s.", v27, 0x16u);
      sub_100007BAC(v28);
    }

    else
    {

      v23(v24, v25);
    }
  }

  v34 = v0[30];
  v33 = v0[31];
  v35 = v0[22];
  v37 = v0[13];
  v36 = v0[14];
  v38 = v0[3];
  v39 = getuid();
  sub_1000294F0(v39);
  v34(v36 + *(v37 + 20), v38, v35);
  v40 = async function pointer to daemon.getter[1];
  v41 = swift_task_alloc();
  v0[39] = v41;
  *v41 = v0;
  v41[1] = sub_100DAC7D4;

  return daemon.getter();
}

uint64_t sub_100DAC490()
{
  v36 = v0;
  sub_100500BC4();
  swift_allocError();
  *v1 = xmmword_1013E84B0;
  *(v1 + 16) = 3;
  swift_willThrow();
  v2 = *(v0 + 248);
  v3 = *(v0 + 232);
  (*(v0 + 240))(*(v0 + 192), *(v0 + 24), *(v0 + 176));
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 256);
  v9 = *(v0 + 184);
  v8 = *(v0 + 192);
  v10 = *(v0 + 176);
  if (v6)
  {
    v29 = *(v0 + 256);
    v11 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v35 = v33;
    *v11 = 138543875;
    swift_errorRetain();
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v12;
    *v31 = v12;
    *(v11 + 12) = 2160;
    *(v11 + 14) = 1752392040;
    *(v11 + 22) = 2081;
    sub_100D97688(&qword_101696930, &type metadata accessor for UUID);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;
    v29(v8, v10);
    v16 = sub_1000136BC(v13, v15, &v35);

    *(v11 + 24) = v16;
    _os_log_impl(&_mh_execute_header, v4, v5, "Error while saving peripheral event: %{public}@, beacon: %{private,mask.hash}s.", v11, 0x20u);
    sub_10000B3A8(v31, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v33);
  }

  else
  {

    v7(v8, v10);
  }

  v18 = *(v0 + 216);
  v17 = *(v0 + 224);
  v20 = *(v0 + 200);
  v19 = *(v0 + 208);
  v21 = *(v0 + 192);
  v23 = *(v0 + 160);
  v22 = *(v0 + 168);
  v25 = *(v0 + 144);
  v24 = *(v0 + 152);
  v26 = *(v0 + 136);
  v30 = *(v0 + 112);
  v32 = *(v0 + 96);
  v34 = *(v0 + 80);

  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_100DAC7D4(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 312);
  v12 = *v1;
  *(v3 + 320) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 328) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for ObservationStoreService();
  v9 = sub_100D97688(&qword_1016AA400, &type metadata accessor for Daemon);
  v10 = sub_100D97688(&qword_1016AA450, type metadata accessor for ObservationStoreService);
  *v6 = v12;
  v6[1] = sub_100DAC9B0;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100DAC9B0(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 328);
  v5 = *v2;
  *(*v2 + 336) = a1;

  v6 = *(v3 + 320);
  v7 = *(v3 + 56);
  if (v1)
  {

    v8 = sub_100DACDE8;
  }

  else
  {

    v8 = sub_100DACB14;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_100DACB14()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 112);
  v4 = *(v0 + 88);
  v3 = *(v0 + 96);
  v5 = *(v0 + 48);
  v6 = *(v0 + 360);
  (*(*(v0 + 72) + 16))(v3 + v4[6], *(v0 + 32), *(v0 + 64));
  sub_1000D2A70(v5, v3 + v4[7], &qword_101699E50, &qword_1013D97C0);
  sub_1000D2A70(v1, v3 + v4[8], &unk_1016AA510, &unk_101393150);
  sub_100DD9284(v2, v3 + v4[9], type metadata accessor for BeaconIdentifier);
  static Date.trustedNow.getter(v3 + v4[10]);
  *v3 = 0;
  *(v3 + 8) = 1;
  *(v3 + 9) = v6;
  v7 = swift_task_alloc();
  *(v0 + 344) = v7;
  *v7 = v0;
  v7[1] = sub_100DACC70;
  v8 = *(v0 + 336);
  v9 = *(v0 + 96);

  return sub_1010D02E4(v9);
}

uint64_t sub_100DACC70()
{
  v2 = *v1;
  v3 = *(*v1 + 344);
  v4 = *v1;
  *(*v1 + 352) = v0;

  v5 = v2[42];
  v6 = v2[12];
  v7 = v2[7];
  sub_100DD92EC(v6, type metadata accessor for DeviceEvent);

  if (v0)
  {
    v8 = sub_100DAD50C;
  }

  else
  {
    v8 = sub_100DAD168;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_100DACDE8()
{
  v38 = v0;
  v1 = *(v0 + 160);
  v2 = *(v0 + 112);
  sub_100500BC4();
  swift_allocError();
  *v3 = xmmword_1013E84A0;
  *(v3 + 16) = 3;
  swift_willThrow();
  sub_100DD92EC(v2, type metadata accessor for BeaconIdentifier);
  sub_10000B3A8(v1, &unk_1016AA510, &unk_101393150);
  v4 = *(v0 + 248);
  v5 = *(v0 + 232);
  (*(v0 + 240))(*(v0 + 192), *(v0 + 24), *(v0 + 176));
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 256);
  v11 = *(v0 + 184);
  v10 = *(v0 + 192);
  v12 = *(v0 + 176);
  if (v8)
  {
    v31 = *(v0 + 256);
    v13 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v37 = v35;
    *v13 = 138543875;
    swift_errorRetain();
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 4) = v14;
    *v33 = v14;
    *(v13 + 12) = 2160;
    *(v13 + 14) = 1752392040;
    *(v13 + 22) = 2081;
    sub_100D97688(&qword_101696930, &type metadata accessor for UUID);
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v16;
    v31(v10, v12);
    v18 = sub_1000136BC(v15, v17, &v37);

    *(v13 + 24) = v18;
    _os_log_impl(&_mh_execute_header, v6, v7, "Error while saving peripheral event: %{public}@, beacon: %{private,mask.hash}s.", v13, 0x20u);
    sub_10000B3A8(v33, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v35);
  }

  else
  {

    v9(v10, v12);
  }

  v20 = *(v0 + 216);
  v19 = *(v0 + 224);
  v22 = *(v0 + 200);
  v21 = *(v0 + 208);
  v23 = *(v0 + 192);
  v25 = *(v0 + 160);
  v24 = *(v0 + 168);
  v27 = *(v0 + 144);
  v26 = *(v0 + 152);
  v28 = *(v0 + 136);
  v32 = *(v0 + 112);
  v34 = *(v0 + 96);
  v36 = *(v0 + 80);

  v29 = *(v0 + 8);

  return v29();
}

uint64_t sub_100DAD168()
{
  v46 = v0;
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v3 = *(v0 + 64);
  v4 = *(v0 + 32);
  static Date.trustedNow.getter(v1);
  Date.timeIntervalSince(_:)();
  v6 = v5;
  (*(v2 + 8))(v1, v3);
  if (v6 <= 1.0)
  {
    v25 = *(v0 + 160);
    sub_100DD92EC(*(v0 + 112), type metadata accessor for BeaconIdentifier);
    v24 = v25;
  }

  else
  {
    v7 = *(v0 + 248);
    v8 = *(v0 + 232);
    (*(v0 + 240))(*(v0 + 200), *(v0 + 24), *(v0 + 176));
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    v11 = os_log_type_enabled(v9, v10);
    v12 = *(v0 + 256);
    v13 = *(v0 + 200);
    v15 = *(v0 + 176);
    v14 = *(v0 + 184);
    v16 = *(v0 + 160);
    v17 = *(v0 + 112);
    if (v11)
    {
      v41 = *(v0 + 360);
      v43 = *(v0 + 112);
      v18 = swift_slowAlloc();
      v38 = v12;
      v19 = swift_slowAlloc();
      v45 = v19;
      *v18 = 141558787;
      *(v18 + 4) = 1752392040;
      *(v18 + 12) = 2081;
      sub_100D97688(&qword_101696930, &type metadata accessor for UUID);
      v20 = dispatch thunk of CustomStringConvertible.description.getter();
      v39 = v16;
      v22 = v21;
      v38(v13, v15);
      v23 = sub_1000136BC(v20, v22, &v45);

      *(v18 + 14) = v23;
      *(v18 + 22) = 2048;
      *(v18 + 24) = v6;
      *(v18 + 32) = 1026;
      *(v18 + 34) = v41;
      _os_log_impl(&_mh_execute_header, v9, v10, "Device event for beacon: %{private,mask.hash}s stored in %fs, source: %{public}u.", v18, 0x26u);
      sub_100007BAC(v19);

      sub_100DD92EC(v43, type metadata accessor for BeaconIdentifier);
      v24 = v39;
    }

    else
    {

      v12(v13, v15);
      sub_100DD92EC(v17, type metadata accessor for BeaconIdentifier);
      v24 = v16;
    }
  }

  sub_10000B3A8(v24, &unk_1016AA510, &unk_101393150);
  v27 = *(v0 + 216);
  v26 = *(v0 + 224);
  v29 = *(v0 + 200);
  v28 = *(v0 + 208);
  v30 = *(v0 + 192);
  v32 = *(v0 + 160);
  v31 = *(v0 + 168);
  v34 = *(v0 + 144);
  v33 = *(v0 + 152);
  v35 = *(v0 + 136);
  v40 = *(v0 + 112);
  v42 = *(v0 + 96);
  v44 = *(v0 + 80);

  v36 = *(v0 + 8);

  return v36();
}

uint64_t sub_100DAD50C()
{
  v37 = v0;
  v1 = *(v0 + 160);
  sub_100DD92EC(*(v0 + 112), type metadata accessor for BeaconIdentifier);
  sub_10000B3A8(v1, &unk_1016AA510, &unk_101393150);
  v2 = *(v0 + 352);
  v3 = *(v0 + 248);
  v4 = *(v0 + 232);
  (*(v0 + 240))(*(v0 + 192), *(v0 + 24), *(v0 + 176));
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 256);
  v10 = *(v0 + 184);
  v9 = *(v0 + 192);
  v11 = *(v0 + 176);
  if (v7)
  {
    v30 = *(v0 + 256);
    v12 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v36 = v34;
    *v12 = 138543875;
    swift_errorRetain();
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 4) = v13;
    *v32 = v13;
    *(v12 + 12) = 2160;
    *(v12 + 14) = 1752392040;
    *(v12 + 22) = 2081;
    sub_100D97688(&qword_101696930, &type metadata accessor for UUID);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    v30(v9, v11);
    v17 = sub_1000136BC(v14, v16, &v36);

    *(v12 + 24) = v17;
    _os_log_impl(&_mh_execute_header, v5, v6, "Error while saving peripheral event: %{public}@, beacon: %{private,mask.hash}s.", v12, 0x20u);
    sub_10000B3A8(v32, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v34);
  }

  else
  {

    v8(v9, v11);
  }

  v19 = *(v0 + 216);
  v18 = *(v0 + 224);
  v21 = *(v0 + 200);
  v20 = *(v0 + 208);
  v22 = *(v0 + 192);
  v24 = *(v0 + 160);
  v23 = *(v0 + 168);
  v26 = *(v0 + 144);
  v25 = *(v0 + 152);
  v27 = *(v0 + 136);
  v31 = *(v0 + 112);
  v33 = *(v0 + 96);
  v35 = *(v0 + 80);

  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_100DAD850(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 32) = a3;
  *(v4 + 40) = a4;
  *(v4 + 80) = a2;
  *(v4 + 24) = a1;
  v5 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
  *(v4 + 48) = v5;
  v6 = *(v5 - 8);
  *(v4 + 56) = v6;
  v7 = *(v6 + 64) + 15;
  *(v4 + 64) = swift_task_alloc();
  *(v4 + 72) = swift_task_alloc();

  return _swift_task_switch(sub_100DAD930, 0, 0);
}

uint64_t sub_100DAD930()
{
  v48 = v0;
  if (*(v0 + 80))
  {
    v1 = *(v0 + 24);
    v2 = v1;
    if (qword_101694EA0 != -1)
    {
      swift_once();
      v2 = *(v0 + 24);
    }

    v4 = *(v0 + 56);
    v3 = *(v0 + 64);
    v5 = *(v0 + 48);
    v6 = *(v0 + 32);
    v7 = type metadata accessor for Logger();
    sub_1000076D4(v7, qword_1016BB490);
    (*(v4 + 16))(v3, v6, v5);
    swift_errorRetain();
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    sub_1000BB584(v2, 1);
    v10 = os_log_type_enabled(v8, v9);
    v12 = *(v0 + 56);
    v11 = *(v0 + 64);
    v13 = *(v0 + 48);
    if (v10)
    {
      v14 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      *v14 = 136446722;
      *(v14 + 4) = sub_1000136BC(0xD000000000000017, 0x8000000101371200, &v47);
      *(v14 + 12) = 2082;
      sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00);
      v45 = v9;
      v15 = dispatch thunk of CustomStringConvertible.description.getter();
      v17 = v16;
      (*(v12 + 8))(v11, v13);
      v18 = sub_1000136BC(v15, v17, &v47);

      *(v14 + 14) = v18;
      *(v14 + 22) = 2114;
      swift_errorRetain();
      v19 = _swift_stdlib_bridgeErrorToNSError();
      *(v14 + 24) = v19;
      *v46 = v19;
      _os_log_impl(&_mh_execute_header, v8, v45, "%{public}s failed for %{public}s. Error %{public}@", v14, 0x20u);
      sub_10000B3A8(v46, &qword_10169BB30, &unk_10138B3C0);

      swift_arrayDestroy();

      if ((static Task<>.isCancelled.getter() & 1) == 0)
      {
LABEL_6:
        v20 = *(v0 + 40);
        *(v0 + 16) = v1;
        swift_errorRetain();
        sub_1000BC4D4(&qword_101699888, &unk_1013D68A0);
        CheckedContinuation.resume(throwing:)();
        goto LABEL_16;
      }
    }

    else
    {

      (*(v12 + 8))(v11, v13);
      if ((static Task<>.isCancelled.getter() & 1) == 0)
      {
        goto LABEL_6;
      }
    }

    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v47 = v40;
      *v39 = 136446210;
      *(v39 + 4) = sub_1000136BC(0xD000000000000017, 0x8000000101371200, &v47);
      _os_log_impl(&_mh_execute_header, v37, v38, "%{public}s Not resuming continuation in cancelled task.", v39, 0xCu);
      sub_100007BAC(v40);
    }
  }

  else
  {
    if (qword_101694EA0 != -1)
    {
      swift_once();
    }

    v21 = *(v0 + 72);
    v22 = *(v0 + 48);
    v23 = *(v0 + 56);
    v24 = *(v0 + 32);
    v25 = type metadata accessor for Logger();
    sub_1000076D4(v25, qword_1016BB490);
    (*(v23 + 16))(v21, v24, v22);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();
    v28 = os_log_type_enabled(v26, v27);
    v29 = *(v0 + 72);
    v30 = *(v0 + 48);
    v31 = *(v0 + 56);
    if (v28)
    {
      v32 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      *v32 = 136446466;
      *(v32 + 4) = sub_1000136BC(0xD000000000000017, 0x8000000101371200, &v47);
      *(v32 + 12) = 2082;
      sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00);
      v33 = dispatch thunk of CustomStringConvertible.description.getter();
      v35 = v34;
      (*(v31 + 8))(v29, v30);
      v36 = sub_1000136BC(v33, v35, &v47);

      *(v32 + 14) = v36;
      _os_log_impl(&_mh_execute_header, v26, v27, "%{public}s succeeded for %{public}s", v32, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v31 + 8))(v29, v30);
    }
  }

LABEL_16:
  v42 = *(v0 + 64);
  v41 = *(v0 + 72);

  v43 = *(v0 + 8);

  return v43();
}

uint64_t sub_100DADF40(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v2[5] = *v1;
  v3 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
  v2[6] = v3;
  v4 = *(v3 - 8);
  v2[7] = v4;
  v5 = *(v4 + 64) + 15;
  v2[8] = swift_task_alloc();

  return _swift_task_switch(sub_100DAE034, v1, 0);
}

uint64_t sub_100DAE034()
{
  v28 = v0;
  if (qword_101694EA0 != -1)
  {
    swift_once();
  }

  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  v4 = v0[3];
  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_1016BB490);
  (*(v2 + 16))(v1, v4, v3);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[7];
  v10 = v0[8];
  v11 = v0[6];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 136446466;
    v27 = v13;
    *(v12 + 4) = sub_1000136BC(0xD00000000000001ELL, 0x80000001013711E0, &v27);
    *(v12 + 12) = 2082;
    sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    (*(v9 + 8))(v10, v11);
    v17 = sub_1000136BC(v14, v16, &v27);

    *(v12 + 14) = v17;
    _os_log_impl(&_mh_execute_header, v6, v7, "%{public}s for identifier %{public}s", v12, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v9 + 8))(v10, v11);
  }

  v19 = v0[4];
  v18 = v0[5];
  v20 = v0[3];
  v21 = sub_100D97688(&qword_1016BB850, type metadata accessor for PencilPairingService);
  v22 = swift_task_alloc();
  v0[9] = v22;
  v22[2] = v19;
  v22[3] = v20;
  v22[4] = v18;
  v23 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v24 = swift_task_alloc();
  v0[10] = v24;
  type metadata accessor for SPAccessoryPairingStatus(0);
  *v24 = v0;
  v24[1] = sub_100DAE384;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 2, v19, v21, 0xD00000000000001ELL, 0x80000001013711E0, sub_100DDCE20, v22, v25);
}

uint64_t sub_100DAE384()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v9 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v4 = *(v2 + 32);
    v5 = sub_100DDDDBC;
  }

  else
  {
    v6 = *(v2 + 72);
    v7 = *(v2 + 32);

    v5 = sub_100DDDDF0;
    v4 = v7;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100DAE4AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v4[8] = *(v6 + 64);
  v4[9] = swift_task_alloc();
  v7 = sub_1000BC4D4(&qword_1016BB920, &qword_1013E8BE8);
  v4[10] = v7;
  v8 = *(v7 - 8);
  v4[11] = v8;
  v4[12] = *(v8 + 64);
  v4[13] = swift_task_alloc();

  return _swift_task_switch(sub_100DAE5F4, 0, 0);
}

uint64_t sub_100DAE5F4()
{
  v1 = v0[13];
  v2 = v0[10];
  v3 = v0[11];
  v4 = v0[9];
  v15 = v0[8];
  v16 = v0[12];
  v5 = v0[6];
  v6 = v0[7];
  v17 = v4;
  v7 = v0[4];
  v18 = v0[5];
  v8 = v0[2];
  (*(v3 + 16))(v1, v0[3], v2);
  (*(v6 + 16))(v4, v7, v5);
  v9 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v10 = (v16 + *(v6 + 80) + v9) & ~*(v6 + 80);
  v11 = swift_allocObject();
  v0[14] = v11;
  *(v11 + 16) = v8;
  (*(v3 + 32))(v11 + v9, v1, v2);
  (*(v6 + 32))(v11 + v10, v17, v5);
  *(v11 + ((v15 + v10 + 7) & 0xFFFFFFFFFFFFFFF8)) = v18;
  v12 = async function pointer to withTimeout<A>(_:block:)[1];

  v13 = swift_task_alloc();
  v0[15] = v13;
  *v13 = v0;
  v13[1] = sub_100DAE7D4;

  return withTimeout<A>(_:block:)(v13, 0x40AAD21B3B700000, 3, &unk_1013E8C50, v11, &type metadata for () + 8);
}

uint64_t sub_100DAE7D4()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v7 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v4 = sub_100DDDDB4;
  }

  else
  {
    v5 = *(v2 + 112);

    v4 = sub_100DDDDC0;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100DAE8F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[16] = a3;
  v4[17] = a4;
  v4[15] = a2;
  v5 = *(*(type metadata accessor for String.Encoding() - 8) + 64) + 15;
  v4[18] = swift_task_alloc();
  v6 = *(type metadata accessor for LocalFindableAccessoryRecord() - 8);
  v4[19] = v6;
  v7 = *(v6 + 64) + 15;
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();
  v8 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
  v4[22] = v8;
  v9 = *(v8 - 8);
  v4[23] = v9;
  v10 = *(v9 + 64) + 15;
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  v11 = type metadata accessor for UUID();
  v4[26] = v11;
  v12 = *(v11 - 8);
  v4[27] = v12;
  v13 = *(v12 + 64) + 15;
  v4[28] = swift_task_alloc();
  v14 = type metadata accessor for CentralManager.State();
  v4[29] = v14;
  v15 = *(v14 - 8);
  v4[30] = v15;
  v16 = *(v15 + 64) + 15;
  v4[31] = swift_task_alloc();
  v17 = *(*(sub_1000BC4D4(&unk_1016C1200, &qword_1013B6240) - 8) + 64) + 15;
  v4[32] = swift_task_alloc();

  return _swift_task_switch(sub_100DAEB4C, 0, 0);
}

uint64_t sub_100DAEB4C()
{
  v36 = v0;
  My = type metadata accessor for Feature.FindMy();
  v0[5] = My;
  v0[6] = sub_100D97688(&qword_1016AF950, &type metadata accessor for Feature.FindMy);
  v2 = sub_1000280DC(v0 + 2);
  (*(*(My - 8) + 104))(v2, enum case for Feature.FindMy.lineUp(_:), My);
  LOBYTE(My) = isFeatureEnabled(_:)();
  sub_100007BAC(v0 + 2);
  if (My)
  {
    v3 = *(v0[15] + 128);
    if (sub_1004F21B4())
    {
      v4 = async function pointer to daemon.getter[1];
      v5 = swift_task_alloc();
      v0[33] = v5;
      *v5 = v0;
      v5[1] = sub_100DAEFC8;

      return daemon.getter();
    }

    if (qword_101694EA0 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_1000076D4(v20, qword_1016BB490);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v35 = v24;
      *v23 = 136446210;
      *(v23 + 4) = sub_1000136BC(0xD00000000000001ELL, 0x80000001013711E0, &v35);
      _os_log_impl(&_mh_execute_header, v21, v22, "%{public}s FMIP is disabled!", v23, 0xCu);
      sub_100007BAC(v24);
    }

    v25 = v0[16];
    v0[9] = 6;
    sub_1000BC4D4(&qword_1016BB920, &qword_1013E8BE8);
    CheckedContinuation.resume(returning:)();
    v27 = v0[31];
    v26 = v0[32];
    v28 = v0[28];
    v30 = v0[24];
    v29 = v0[25];
    v32 = v0[20];
    v31 = v0[21];
    v33 = v0[18];

    v19 = v0[1];
  }

  else
  {
    if (qword_101694EA0 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_1000076D4(v6, qword_1016BB490);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "Feature.FindMy.lineUp is disabled!", v9, 2u);
    }

    sub_100500BC4();
    swift_allocError();
    *v10 = xmmword_10139D960;
    *(v10 + 16) = 3;
    swift_willThrow();
    v12 = v0[31];
    v11 = v0[32];
    v13 = v0[28];
    v15 = v0[24];
    v14 = v0[25];
    v17 = v0[20];
    v16 = v0[21];
    v18 = v0[18];

    v19 = v0[1];
  }

  return v19();
}

uint64_t sub_100DAEFC8(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 264);
  v12 = *v1;
  *(v3 + 272) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 280) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for CloudStorageService();
  v9 = sub_100D97688(&qword_1016AA400, &type metadata accessor for Daemon);
  v10 = sub_100D97688(&unk_1016AA520, type metadata accessor for CloudStorageService);
  *v6 = v12;
  v6[1] = sub_100DAF1A4;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100DAF1A4(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 280);
  v6 = *v2;
  v4[36] = a1;
  v4[37] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_100DB11B8, 0, 0);
  }

  else
  {
    v7 = v4[34];

    v8 = swift_task_alloc();
    v4[38] = v8;
    *v8 = v6;
    v8[1] = sub_100DAF32C;

    return sub_10084B7B8();
  }
}

uint64_t sub_100DAF32C(char a1)
{
  v2 = *(*v1 + 304);
  v4 = *v1;
  *(*v1 + 504) = a1;

  return _swift_task_switch(sub_100DAF42C, 0, 0);
}

uint64_t sub_100DAF42C()
{
  v24 = v0;
  if (*(v0 + 504) == 1)
  {
    v1 = *(v0 + 256);
    *(v0 + 312) = type metadata accessor for CentralManager();
    v2 = type metadata accessor for CentralManager.Options();
    (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
    v3 = async function pointer to CentralManager.__allocating_init(options:)[1];
    v4 = swift_task_alloc();
    *(v0 + 320) = v4;
    *v4 = v0;
    v4[1] = sub_100DAF718;
    v5 = *(v0 + 256);

    return CentralManager.__allocating_init(options:)(v5);
  }

  else
  {
    if (qword_101694EA0 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_1000076D4(v6, qword_1016BB490);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v23 = v10;
      *v9 = 136446210;
      *(v9 + 4) = sub_1000136BC(0xD00000000000001ELL, 0x80000001013711E0, &v23);
      _os_log_impl(&_mh_execute_header, v7, v8, "%{public}s Account is not ready!", v9, 0xCu);
      sub_100007BAC(v10);
    }

    v11 = *(v0 + 288);
    v12 = *(v0 + 128);
    *(v0 + 80) = 5;
    sub_1000BC4D4(&qword_1016BB920, &qword_1013E8BE8);
    CheckedContinuation.resume(returning:)();

    v14 = *(v0 + 248);
    v13 = *(v0 + 256);
    v15 = *(v0 + 224);
    v17 = *(v0 + 192);
    v16 = *(v0 + 200);
    v19 = *(v0 + 160);
    v18 = *(v0 + 168);
    v20 = *(v0 + 144);

    v21 = *(v0 + 8);

    return v21();
  }
}

uint64_t sub_100DAF718(uint64_t a1)
{
  v2 = *(*v1 + 320);
  v4 = *v1;
  *(*v1 + 328) = a1;

  return _swift_task_switch(sub_100DAF818, 0, 0);
}

uint64_t sub_100DAF818()
{
  (*(v0[30] + 104))(v0[31], enum case for CentralManager.State.poweredOn(_:), v0[29]);
  v1 = async function pointer to CentralManagerProtocol.await(state:)[1];
  v2 = swift_task_alloc();
  v0[42] = v2;
  v3 = sub_100D97688(&unk_1016C1160, &type metadata accessor for CentralManager);
  *v2 = v0;
  v2[1] = sub_100DAF914;
  v4 = v0[41];
  v5 = v0[39];
  v6 = v0[31];

  return CentralManagerProtocol.await(state:)(v6, v5, v3);
}

uint64_t sub_100DAF914()
{
  v2 = *v1;
  v3 = *(*v1 + 336);
  v4 = *v1;
  *(*v1 + 344) = v0;

  (*(v2[30] + 8))(v2[31], v2[29]);
  if (v0)
  {
    v5 = sub_100DB1284;
  }

  else
  {
    v5 = sub_100DAFA7C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100DAFA7C()
{
  v33 = v0;
  if (qword_101694EA0 != -1)
  {
    swift_once();
  }

  v1 = v0[41];
  v2 = type metadata accessor for Logger();
  v0[44] = sub_1000076D4(v2, qword_1016BB490);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[41];
    v6 = v0[39];
    v7 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    *v7 = 136446466;
    *(v7 + 4) = sub_1000136BC(0xD00000000000001ELL, 0x80000001013711E0, &v32);
    *(v7 + 12) = 2080;
    v0[14] = v5;
    sub_100D97688(&qword_1016B8628, &type metadata accessor for CentralManager);
    v8 = dispatch thunk of CustomStringConvertible.description.getter();
    v10 = sub_1000136BC(v8, v9, &v32);

    *(v7 + 14) = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s %s has powered on!", v7, 0x16u);
    swift_arrayDestroy();
  }

  v30 = v0[28];
  v11 = v0[25];
  v12 = v0[22];
  v13 = v0[23];
  v14 = v0[17];
  sub_1000BC4D4(&qword_1016BB870, &unk_1013F6290);
  v15 = *(v13 + 72);
  v16 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_101385D80;
  v18 = *(v13 + 16);
  v0[45] = v18;
  v0[46] = (v13 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v18(v17 + v16, v14, v12);
  v32 = _swiftEmptyArrayStorage;
  sub_101123D4C(0, 1, 0);
  v19 = v32;
  v18(v11, v17 + v16, v12);

  Identifier.id.getter();
  v20 = *(v13 + 8);
  v0[47] = v20;
  v0[48] = (v13 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v20(v11, v12);
  v22 = v19[2];
  v21 = v19[3];
  if (v22 >= v21 >> 1)
  {
    sub_101123D4C(v21 > 1, v22 + 1, 1);
    v19 = v32;
  }

  v0[49] = v19;
  v24 = v0[27];
  v23 = v0[28];
  v25 = v0[26];
  v19[2] = v22 + 1;
  (*(v24 + 32))(v19 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v22, v23, v25);
  v26 = *(&async function pointer to dispatch thunk of CentralManager.retrievePeripherals(identifiers:) + 1);
  v31 = (&async function pointer to dispatch thunk of CentralManager.retrievePeripherals(identifiers:) + async function pointer to dispatch thunk of CentralManager.retrievePeripherals(identifiers:));
  v27 = swift_task_alloc();
  v0[50] = v27;
  *v27 = v0;
  v27[1] = sub_100DAFE4C;
  v28 = v0[41];

  return v31(v19);
}

uint64_t sub_100DAFE4C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 400);
  v8 = *v2;
  v3[51] = a1;
  v3[52] = v1;

  if (v1)
  {
    v5 = sub_100DB135C;
  }

  else
  {
    v6 = v3[49];

    v5 = sub_100DAFF68;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100DAFF68()
{
  v49 = v0;
  v1 = v0[51];
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v13 = v0[51];
    }

    result = _CocoaArrayWrapper.endIndex.getter();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_14:
    v14 = v0[51];
    v16 = v0[45];
    v15 = v0[46];
    v17 = v0[44];
    v18 = v0[24];
    v19 = v0[22];
    v20 = v0[17];

    v16(v18, v20, v19);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    v23 = os_log_type_enabled(v21, v22);
    v24 = v0[47];
    v25 = v0[24];
    v26 = v0[22];
    if (v23)
    {
      v47 = v0[48];
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v48[0] = v28;
      *v27 = 136446210;
      sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00);
      v29 = dispatch thunk of CustomStringConvertible.description.getter();
      v31 = v30;
      v24(v25, v26);
      v32 = sub_1000136BC(v29, v31, v48);

      *(v27 + 4) = v32;
      _os_log_impl(&_mh_execute_header, v21, v22, "Missing peripheral for %{public}s", v27, 0xCu);
      sub_100007BAC(v28);
    }

    else
    {

      v24(v25, v26);
    }

    v33 = v0[41];
    v34 = v0[36];
    sub_100500BC4();
    swift_allocError();
    *v35 = xmmword_1013E84C0;
    *(v35 + 16) = 3;
    swift_willThrow();

    v37 = v0[31];
    v36 = v0[32];
    v38 = v0[28];
    v40 = v0[24];
    v39 = v0[25];
    v42 = v0[20];
    v41 = v0[21];
    v43 = v0[18];

    v44 = v0[1];

    return v44();
  }

  result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_14;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v45 = v0[51];
    v3 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v46 = v0[51];
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v3 = *(v0[51] + 32);
  }

  v0[53] = v3;
  v4 = v0[44];

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v48[0] = swift_slowAlloc();
    *v7 = 136446466;
    *(v7 + 4) = sub_1000136BC(0xD00000000000001ELL, 0x80000001013711E0, v48);
    *(v7 + 12) = 2080;
    v0[13] = v3;
    type metadata accessor for Peripheral();
    sub_100D97688(&qword_1016972D0, &type metadata accessor for Peripheral);
    v8 = dispatch thunk of CustomStringConvertible.description.getter();
    v10 = sub_1000136BC(v8, v9, v48);

    *(v7 + 14) = v10;
    _os_log_impl(&_mh_execute_header, v5, v6, "%{public}s Retrieved peripheral: %s", v7, 0x16u);
    swift_arrayDestroy();
  }

  v11 = swift_task_alloc();
  v0[54] = v11;
  *v11 = v0;
  v11[1] = sub_100DB043C;
  v12 = v0[15];

  return sub_100DB1524(v3);
}

uint64_t sub_100DB043C(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 432);
  v8 = *v3;
  v4[55] = a1;
  v4[56] = a2;
  v4[57] = v2;

  if (v2)
  {
    v6 = sub_100DB1440;
  }

  else
  {
    v6 = sub_100DB0554;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100DB0554()
{
  v38 = v0;
  v1 = v0[55];
  v0[7] = v1;
  v2 = v0[56];
  v0[8] = v2;
  sub_100017D5C(v1, v2);
  sub_1000E0A3C();
  v3 = DataProtocol.isNull.getter();
  v4 = v0[56];
  v5 = v0[55];
  if (v3)
  {
    v6 = v0[44];
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    sub_100016590(v5, v4);
    if (os_log_type_enabled(v7, v8))
    {
      v10 = v0[55];
      v9 = v0[56];
      v11 = swift_slowAlloc();
      v37[0] = swift_slowAlloc();
      *v11 = 136446466;
      *(v11 + 4) = sub_1000136BC(0xD00000000000001ELL, 0x80000001013711E0, v37);
      *(v11 + 12) = 2082;
      v12 = Data.hexString.getter();
      v14 = sub_1000136BC(v12, v13, v37);

      *(v11 + 14) = v14;
      _os_log_impl(&_mh_execute_header, v7, v8, "%{public}s Invalid serial number %{public}s!", v11, 0x16u);
      swift_arrayDestroy();
    }

    v16 = v0[55];
    v15 = v0[56];
    v17 = v0[53];
    v18 = v0[41];
    v19 = v0[36];
    sub_100500BC4();
    swift_allocError();
    *v20 = xmmword_1013E84F0;
    *(v20 + 16) = 3;
    swift_willThrow();
    sub_100016590(v16, v15);

    v22 = v0[31];
    v21 = v0[32];
    v23 = v0[28];
    v25 = v0[24];
    v24 = v0[25];
    v27 = v0[20];
    v26 = v0[21];
    v28 = v0[18];

    v29 = v0[1];

    return v29();
  }

  else
  {
    v31 = v0[36];
    v32 = v0[55];
    v33 = v0[56];
    v34 = Data.trimmed.getter();
    v36 = v35;
    v0[58] = v34;
    v0[59] = v35;
    sub_100016590(v5, v4);
    sub_100017D5C(v34, v36);

    return _swift_task_switch(sub_100DB0858, v31, 0);
  }
}

uint64_t sub_100DB0858()
{
  v1 = *(v0[36] + 128);
  v2 = swift_task_alloc();
  v0[60] = v2;
  *v2 = v0;
  v2[1] = sub_100DB08F4;
  v4 = v0[58];
  v3 = v0[59];

  return sub_100C580A0(v4, v3);
}

uint64_t sub_100DB08F4(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 480);
  v7 = *v2;
  v3[61] = a1;
  v3[62] = v1;

  if (v1)
  {
    sub_100016590(v3[58], v3[59]);
    v5 = sub_100DB10B4;
  }

  else
  {
    v5 = sub_100DB0A10;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100DB0A10()
{
  v89 = v0;
  v1 = v0[61];
  v3 = v0[58];
  v2 = v0[59];
  v4 = v0[44];
  if (*(v1 + 16))
  {
    v6 = v0[20];
    v5 = v0[21];
    v7 = *(v0[19] + 80);
    sub_100DD9284(v1 + ((v7 + 32) & ~v7), v5, type metadata accessor for LocalFindableAccessoryRecord);

    sub_100DD9284(v5, v6, type metadata accessor for LocalFindableAccessoryRecord);
    sub_100017D5C(v3, v2);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    sub_100016590(v3, v2);
    v10 = os_log_type_enabled(v8, v9);
    v12 = v0[58];
    v11 = v0[59];
    if (v10)
    {
      v13 = v0[26];
      v14 = v0[20];
      v15 = v0[18];
      v16 = swift_slowAlloc();
      v88[0] = swift_slowAlloc();
      *v16 = 141558787;
      *(v16 + 4) = 1752392040;
      *(v16 + 12) = 2081;
      sub_100D97688(&qword_101696930, &type metadata accessor for UUID);
      v17 = dispatch thunk of CustomStringConvertible.description.getter();
      v19 = v18;
      sub_100DD92EC(v14, type metadata accessor for LocalFindableAccessoryRecord);
      v20 = sub_1000136BC(v17, v19, v88);

      *(v16 + 14) = v20;
      *(v16 + 22) = 2160;
      *(v16 + 24) = 1752392040;
      *(v16 + 32) = 2081;
      static String.Encoding.utf8.getter();
      v21 = String.init(data:encoding:)();
      v23 = v22;
      v24 = v0[58];
      v25 = v0[59];
      if (!v23)
      {
        v26 = v0[58];
        v27 = v0[59];
        v21 = Data.hexString.getter();
        v23 = v28;
        v24 = v26;
        v25 = v27;
      }

      sub_100016590(v24, v25);
      v29 = sub_1000136BC(v21, v23, v88);

      *(v16 + 34) = v29;
      _os_log_impl(&_mh_execute_header, v8, v9, "Found existing record %{private,mask.hash}s matching\n%{private,mask.hash}s", v16, 0x2Au);
      swift_arrayDestroy();
    }

    else
    {
      v48 = v0[20];
      sub_100016590(v0[58], v0[59]);

      sub_100DD92EC(v48, type metadata accessor for LocalFindableAccessoryRecord);
    }

    v49 = v0[62];
    static Task<>.checkCancellation()();
    v51 = v0[58];
    v50 = v0[59];
    v53 = v0[55];
    v52 = v0[56];
    v54 = v0[53];
    v55 = v0[41];
    v56 = v0[36];
    v57 = v0[21];
    if (v49)
    {
      sub_100DD92EC(v0[21], type metadata accessor for LocalFindableAccessoryRecord);

      sub_100016590(v53, v52);
      sub_100016590(v51, v50);
LABEL_17:

      v69 = v0[31];
      v68 = v0[32];
      v70 = v0[28];
      v72 = v0[24];
      v71 = v0[25];
      v74 = v0[20];
      v73 = v0[21];
      v75 = v0[18];

      v76 = v0[1];
      goto LABEL_20;
    }

    v58 = v0[36];
    v59 = v0[16];
    v0[11] = 2;
    sub_1000BC4D4(&qword_1016BB920, &qword_1013E8BE8);
    CheckedContinuation.resume(returning:)();

    sub_100016590(v51, v50);
    sub_100016590(v53, v52);

    sub_100DD92EC(v57, type metadata accessor for LocalFindableAccessoryRecord);
  }

  else
  {
    v30 = v0[61];

    sub_100017D5C(v3, v2);
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();
    sub_100016590(v3, v2);
    v33 = os_log_type_enabled(v31, v32);
    v35 = v0[58];
    v34 = v0[59];
    if (v33)
    {
      v36 = v0[18];
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v88[0] = v38;
      *v37 = 141558275;
      *(v37 + 4) = 1752392040;
      *(v37 + 12) = 2081;
      static String.Encoding.utf8.getter();
      v39 = String.init(data:encoding:)();
      v41 = v40;
      v42 = v0[58];
      v43 = v0[59];
      if (!v41)
      {
        v44 = v0[58];
        v45 = v0[59];
        v39 = Data.hexString.getter();
        v41 = v46;
        v42 = v44;
        v43 = v45;
      }

      sub_100016590(v42, v43);
      v47 = sub_1000136BC(v39, v41, v88);

      *(v37 + 14) = v47;
      _os_log_impl(&_mh_execute_header, v31, v32, "Missing record for %{private,mask.hash}s!", v37, 0x16u);
      sub_100007BAC(v38);
    }

    else
    {
      sub_100016590(v0[58], v0[59]);
    }

    v60 = v0[62];
    static Task<>.checkCancellation()();
    v62 = v0[58];
    v61 = v0[59];
    v64 = v0[55];
    v63 = v0[56];
    v65 = v0[53];
    v66 = v0[41];
    v67 = v0[36];
    if (v60)
    {
      sub_100016590(v0[58], v0[59]);
      sub_100016590(v64, v63);

      goto LABEL_17;
    }

    v77 = v0[36];
    v78 = v0[16];
    v0[12] = 0;
    sub_1000BC4D4(&qword_1016BB920, &qword_1013E8BE8);
    CheckedContinuation.resume(returning:)();

    sub_100016590(v64, v63);
    sub_100016590(v62, v61);
  }

  v80 = v0[31];
  v79 = v0[32];
  v81 = v0[28];
  v83 = v0[24];
  v82 = v0[25];
  v85 = v0[20];
  v84 = v0[21];
  v86 = v0[18];

  v76 = v0[1];
LABEL_20:

  return v76();
}

uint64_t sub_100DB10B4()
{
  v1 = v0[58];
  v2 = v0[59];
  v4 = v0[55];
  v3 = v0[56];
  v5 = v0[53];
  v6 = v0[41];
  v7 = v0[36];

  sub_100016590(v4, v3);
  sub_100016590(v1, v2);

  v8 = v0[62];
  v10 = v0[31];
  v9 = v0[32];
  v11 = v0[28];
  v13 = v0[24];
  v12 = v0[25];
  v15 = v0[20];
  v14 = v0[21];
  v16 = v0[18];

  v17 = v0[1];

  return v17();
}

uint64_t sub_100DB11B8()
{
  v1 = v0[34];

  v2 = v0[37];
  v4 = v0[31];
  v3 = v0[32];
  v5 = v0[28];
  v7 = v0[24];
  v6 = v0[25];
  v9 = v0[20];
  v8 = v0[21];
  v10 = v0[18];

  v11 = v0[1];

  return v11();
}

uint64_t sub_100DB1284()
{
  v1 = v0[41];
  v2 = v0[36];

  v3 = v0[43];
  v5 = v0[31];
  v4 = v0[32];
  v6 = v0[28];
  v8 = v0[24];
  v7 = v0[25];
  v10 = v0[20];
  v9 = v0[21];
  v11 = v0[18];

  v12 = v0[1];

  return v12();
}

uint64_t sub_100DB135C()
{
  v1 = v0[49];
  v2 = v0[41];
  v3 = v0[36];

  v4 = v0[52];
  v6 = v0[31];
  v5 = v0[32];
  v7 = v0[28];
  v9 = v0[24];
  v8 = v0[25];
  v11 = v0[20];
  v10 = v0[21];
  v12 = v0[18];

  v13 = v0[1];

  return v13();
}

uint64_t sub_100DB1440()
{
  v1 = v0[53];
  v2 = v0[41];
  v3 = v0[36];

  v4 = v0[57];
  v6 = v0[31];
  v5 = v0[32];
  v7 = v0[28];
  v9 = v0[24];
  v8 = v0[25];
  v11 = v0[20];
  v10 = v0[21];
  v12 = v0[18];

  v13 = v0[1];

  return v13();
}

uint64_t sub_100DB1524(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v3 = *(*(type metadata accessor for String.Encoding() - 8) + 64) + 15;
  v2[8] = swift_task_alloc();
  v4 = sub_1000BC4D4(&qword_1016973C8, &qword_1013B6210);
  v2[9] = v4;
  v5 = *(v4 - 8);
  v2[10] = v5;
  v6 = *(v5 + 64) + 15;
  v2[11] = swift_task_alloc();
  v7 = sub_1000BC4D4(&qword_101697240, &unk_10138BDA0);
  v2[12] = v7;
  v8 = *(v7 - 8);
  v2[13] = v8;
  v9 = *(v8 + 64) + 15;
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v10 = sub_1000BC4D4(&qword_101697248, &qword_1013DC4D0);
  v2[16] = v10;
  v11 = *(v10 - 8);
  v2[17] = v11;
  v12 = *(v11 + 64) + 15;
  v2[18] = swift_task_alloc();
  v13 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
  v2[19] = v13;
  v14 = *(v13 - 8);
  v2[20] = v14;
  v15 = *(v14 + 64) + 15;
  v2[21] = swift_task_alloc();

  return _swift_task_switch(sub_100DB1760, v1, 0);
}

uint64_t sub_100DB1760()
{
  v22 = v0;
  if (qword_101694EA0 != -1)
  {
    swift_once();
  }

  v1 = v0[6];
  v2 = type metadata accessor for Logger();
  v0[22] = sub_1000076D4(v2, qword_1016BB490);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[20];
    v5 = v0[21];
    v7 = v0[19];
    v8 = v0[6];
    v9 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v9 = 136446466;
    *(v9 + 4) = sub_1000136BC(0xD00000000000001DLL, 0x8000000101370EE0, &v21);
    *(v9 + 12) = 2080;
    type metadata accessor for Peripheral();
    sub_100D97688(&qword_1016972A0, &type metadata accessor for Peripheral);
    dispatch thunk of PeripheralProtocol.id.getter();
    sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00);
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    v12 = v11;

    (*(v6 + 8))(v5, v7);
    v13 = sub_1000136BC(v10, v12, &v21);

    *(v9 + 14) = v13;
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s for peripheral: %s", v9, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v14 = v0[6];
  }

  v15 = v0[18];
  v16 = v0[6];
  v0[23] = type metadata accessor for Service();
  Identifier.init(stringLiteral:)();
  v17 = async function pointer to withTimeout<A>(_:block:)[1];

  v18 = swift_task_alloc();
  v0[24] = v18;
  *v18 = v0;
  v18[1] = sub_100DB1AB4;
  v19 = v0[6];

  return withTimeout<A>(_:block:)(v18, 0xA055690D9DB80000, 1, &unk_1013E89C8, v19, &type metadata for () + 8);
}

uint64_t sub_100DB1AB4()
{
  v2 = *v1;
  v3 = *(*v1 + 192);
  v4 = *v1;
  v2[25] = v0;

  v5 = v2[7];
  if (v0)
  {
    v6 = sub_100DB1E10;
  }

  else
  {
    v7 = v2[6];

    v6 = sub_100DB1BEC;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100DB1BEC()
{
  v1 = type metadata accessor for Peripheral();
  v2 = sub_100D97688(&qword_1016972A0, &type metadata accessor for Peripheral);
  v3 = async function pointer to dispatch thunk of PeripheralProtocol.subscript.getter[1];
  v4 = swift_task_alloc();
  v0[26] = v4;
  *v4 = v0;
  v4[1] = sub_100DB1CDC;
  v5 = v0[18];
  v6 = v0[6];

  return dispatch thunk of PeripheralProtocol.subscript.getter(v5, v1, v2);
}

uint64_t sub_100DB1CDC(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 208);
  v6 = *v2;
  *(v4 + 216) = a1;
  *(v4 + 224) = v1;

  v7 = *(v3 + 56);
  if (v1)
  {
    v8 = sub_100DB2354;
  }

  else
  {
    v8 = sub_100DB2034;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_100DB1E10()
{
  v21 = v0;
  v1 = v0[6];

  v2 = v0[25];
  v3 = v0[22];
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v20 = v8;
    *v6 = 136446466;
    *(v6 + 4) = sub_1000136BC(0xD00000000000001DLL, 0x8000000101370EE0, &v20);
    *(v6 + 12) = 2114;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v9;
    *v7 = v9;
    _os_log_impl(&_mh_execute_header, v4, v5, "%{public}s error %{public}@", v6, 0x16u);
    sub_10000B3A8(v7, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v8);
  }

  v10 = v0[21];
  v11 = v0[17];
  v12 = v0[18];
  v14 = v0[15];
  v13 = v0[16];
  v15 = v0[14];
  v16 = v0[11];
  v19 = v0[8];
  swift_willThrow();
  (*(v11 + 8))(v12, v13);

  v17 = v0[1];

  return v17();
}

uint64_t sub_100DB2034()
{
  v1 = v0[13];
  sub_101123C58(0, 3, 0);
  type metadata accessor for Characteristic();
  v2 = v0[15];
  Identifier.init(stringLiteral:)();
  v4 = _swiftEmptyArrayStorage[2];
  v3 = _swiftEmptyArrayStorage[3];
  if (v4 >= v3 >> 1)
  {
    sub_101123C58(v3 > 1, v4 + 1, 1);
  }

  v0[29] = _swiftEmptyArrayStorage;
  v5 = v0[15];
  v6 = v0[12];
  _swiftEmptyArrayStorage[2] = v4 + 1;
  v7 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v8 = *(v1 + 72);
  v9 = *(v1 + 32);
  v9(_swiftEmptyArrayStorage + v7 + v8 * v4, v5, v6);
  v10 = v0[15];
  Identifier.init(stringLiteral:)();
  v12 = _swiftEmptyArrayStorage[2];
  v11 = _swiftEmptyArrayStorage[3];
  if (v12 >= v11 >> 1)
  {
    sub_101123C58(v11 > 1, v12 + 1, 1);
  }

  v0[29] = _swiftEmptyArrayStorage;
  v13 = v0[15];
  v14 = v0[12];
  _swiftEmptyArrayStorage[2] = v12 + 1;
  v9(_swiftEmptyArrayStorage + v7 + v8 * v12, v13, v14);
  v15 = v0[15];
  Identifier.init(stringLiteral:)();
  v17 = _swiftEmptyArrayStorage[2];
  v16 = _swiftEmptyArrayStorage[3];
  if (v17 >= v16 >> 1)
  {
    sub_101123C58(v16 > 1, v17 + 1, 1);
  }

  v0[29] = _swiftEmptyArrayStorage;
  v18 = v0[15];
  v19 = v0[12];
  _swiftEmptyArrayStorage[2] = v17 + 1;
  v9(_swiftEmptyArrayStorage + v7 + v8 * v17, v18, v19);
  v20 = sub_100D97688(&qword_1016972A8, &type metadata accessor for Service);
  v0[30] = v20;
  v21 = async function pointer to dispatch thunk of ServiceProtocol.discover(characteristicIdentifiers:)[1];
  v22 = swift_task_alloc();
  v0[31] = v22;
  *v22 = v0;
  v22[1] = sub_100DB2570;
  v23 = v0[27];
  v24 = v0[23];

  return dispatch thunk of ServiceProtocol.discover(characteristicIdentifiers:)(_swiftEmptyArrayStorage, v24, v20);
}

uint64_t sub_100DB2354()
{
  v20 = v0;
  v1 = v0[28];
  v2 = v0[22];
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v19 = v7;
    *v5 = 136446466;
    *(v5 + 4) = sub_1000136BC(0xD00000000000001DLL, 0x8000000101370EE0, &v19);
    *(v5 + 12) = 2114;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 14) = v8;
    *v6 = v8;
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s error %{public}@", v5, 0x16u);
    sub_10000B3A8(v6, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v7);
  }

  v9 = v0[21];
  v10 = v0[17];
  v11 = v0[18];
  v13 = v0[15];
  v12 = v0[16];
  v14 = v0[14];
  v15 = v0[11];
  v18 = v0[8];
  swift_willThrow();
  (*(v10 + 8))(v11, v12);

  v16 = v0[1];

  return v16();
}

uint64_t sub_100DB2570()
{
  v2 = *v1;
  v3 = *(*v1 + 248);
  v4 = *v1;
  *(*v1 + 256) = v0;

  if (v0)
  {
    v5 = *(v2 + 56);
    v6 = sub_100DB29B8;
  }

  else
  {
    v7 = *(v2 + 232);
    v8 = *(v2 + 56);

    v6 = sub_100DB26B8;
    v5 = v8;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100DB26B8()
{
  v1 = v0[14];
  v0[33] = type metadata accessor for Characteristic();
  Identifier.init(stringLiteral:)();
  v2 = async function pointer to dispatch thunk of ServiceProtocol.subscript.getter[1];
  v3 = swift_task_alloc();
  v0[34] = v3;
  *v3 = v0;
  v3[1] = sub_100DB2788;
  v4 = v0[30];
  v5 = v0[27];
  v6 = v0[23];
  v7 = v0[14];

  return dispatch thunk of ServiceProtocol.subscript.getter(v7, v6, v4);
}

uint64_t sub_100DB2788(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 272);
  v6 = *v2;
  v4[35] = a1;
  v4[36] = v1;

  v7 = v4[14];
  v8 = v4[13];
  v9 = v4[12];
  if (v1)
  {
    v10 = v4[7];
    (*(v8 + 8))(v7, v9);

    return _swift_task_switch(sub_100DB2DAC, v10, 0);
  }

  else
  {
    (*(v8 + 8))(v7, v9);
    v11 = sub_100D97688(&qword_1016972C0, &type metadata accessor for Characteristic);
    v12 = async function pointer to dispatch thunk of CharacteristicProtocol.read()[1];
    v13 = swift_task_alloc();
    v4[37] = v13;
    *v13 = v6;
    v13[1] = sub_100DB2BE8;
    v14 = v4[33];
    v15 = v4[11];

    return dispatch thunk of CharacteristicProtocol.read()(v15, v14, v11);
  }
}

uint64_t sub_100DB29B8()
{
  v22 = v0;
  v1 = v0[29];
  v2 = v0[27];

  v3 = v0[32];
  v4 = v0[22];
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v21 = v9;
    *v7 = 136446466;
    *(v7 + 4) = sub_1000136BC(0xD00000000000001DLL, 0x8000000101370EE0, &v21);
    *(v7 + 12) = 2114;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v10;
    *v8 = v10;
    _os_log_impl(&_mh_execute_header, v5, v6, "%{public}s error %{public}@", v7, 0x16u);
    sub_10000B3A8(v8, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v9);
  }

  v11 = v0[21];
  v12 = v0[17];
  v13 = v0[18];
  v15 = v0[15];
  v14 = v0[16];
  v16 = v0[14];
  v17 = v0[11];
  v20 = v0[8];
  swift_willThrow();
  (*(v12 + 8))(v13, v14);

  v18 = v0[1];

  return v18();
}

uint64_t sub_100DB2BE8()
{
  v2 = *(*v1 + 296);
  v3 = *v1;
  v3[38] = v0;

  if (v0)
  {
    v4 = v3[7];

    return _swift_task_switch(sub_100DB314C, v4, 0);
  }

  else
  {
    v5 = v3[35];

    v6 = async function pointer to AsyncSequence.first()[1];
    v7 = swift_task_alloc();
    v3[39] = v7;
    v8 = sub_1000041A4(&qword_1016C11D0, &qword_1016973C8, &qword_1013B6210);
    *v7 = v3;
    v7[1] = sub_100DB2FD0;
    v9 = v3[11];
    v10 = v3[9];

    return AsyncSequence.first()(v3 + 2, v10, v8);
  }
}

uint64_t sub_100DB2DAC()
{
  v21 = v0;
  v1 = v0[27];

  v2 = v0[36];
  v3 = v0[22];
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v20 = v8;
    *v6 = 136446466;
    *(v6 + 4) = sub_1000136BC(0xD00000000000001DLL, 0x8000000101370EE0, &v20);
    *(v6 + 12) = 2114;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v9;
    *v7 = v9;
    _os_log_impl(&_mh_execute_header, v4, v5, "%{public}s error %{public}@", v6, 0x16u);
    sub_10000B3A8(v7, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v8);
  }

  v10 = v0[21];
  v11 = v0[17];
  v12 = v0[18];
  v14 = v0[15];
  v13 = v0[16];
  v15 = v0[14];
  v16 = v0[11];
  v19 = v0[8];
  swift_willThrow();
  (*(v11 + 8))(v12, v13);

  v17 = v0[1];

  return v17();
}

uint64_t sub_100DB2FD0()
{
  v2 = *v1;
  v3 = *(*v1 + 312);
  v4 = *v1;
  *(*v1 + 320) = v0;

  v5 = v2[11];
  v6 = v2[10];
  v7 = v2[9];
  v8 = v2[7];
  (*(v6 + 8))(v5, v7);
  if (v0)
  {
    v9 = sub_100DB3B00;
  }

  else
  {
    v9 = sub_100DB337C;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_100DB314C()
{
  v22 = v0;
  v1 = v0[35];
  v2 = v0[27];

  v3 = v0[38];
  v4 = v0[22];
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v21 = v9;
    *v7 = 136446466;
    *(v7 + 4) = sub_1000136BC(0xD00000000000001DLL, 0x8000000101370EE0, &v21);
    *(v7 + 12) = 2114;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v10;
    *v8 = v10;
    _os_log_impl(&_mh_execute_header, v5, v6, "%{public}s error %{public}@", v7, 0x16u);
    sub_10000B3A8(v8, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v9);
  }

  v11 = v0[21];
  v12 = v0[17];
  v13 = v0[18];
  v15 = v0[15];
  v14 = v0[16];
  v16 = v0[14];
  v17 = v0[11];
  v20 = v0[8];
  swift_willThrow();
  (*(v12 + 8))(v13, v14);

  v18 = v0[1];

  return v18();
}

uint64_t sub_100DB337C()
{
  v66 = v0;
  v1 = v0[3];
  if (v1 >> 60 == 15)
  {
    v2 = v0[22];
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v65[0] = v6;
      *v5 = 136446210;
      *(v5 + 4) = sub_1000136BC(0xD00000000000001DLL, 0x8000000101370EE0, v65);
      _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s Failed to read serial number!", v5, 0xCu);
      sub_100007BAC(v6);
    }

    v7 = v0[27];
    sub_100500BC4();
    swift_allocError();
    *v8 = xmmword_1013E84F0;
    *(v8 + 16) = 3;
    swift_willThrow();
LABEL_9:

    v20 = v0[22];
    swift_errorRetain();
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v65[0] = v25;
      *v23 = 136446466;
      *(v23 + 4) = sub_1000136BC(0xD00000000000001DLL, 0x8000000101370EE0, v65);
      *(v23 + 12) = 2114;
      swift_errorRetain();
      v26 = _swift_stdlib_bridgeErrorToNSError();
      *(v23 + 14) = v26;
      *v24 = v26;
      _os_log_impl(&_mh_execute_header, v21, v22, "%{public}s error %{public}@", v23, 0x16u);
      sub_10000B3A8(v24, &qword_10169BB30, &unk_10138B3C0);

      sub_100007BAC(v25);
    }

    v27 = v0[21];
    v29 = v0[17];
    v28 = v0[18];
    v31 = v0[15];
    v30 = v0[16];
    v32 = v0[14];
    v33 = v0[11];
    v63 = v0[8];
    swift_willThrow();
    (*(v29 + 8))(v28, v30);

    v34 = v0[1];

    return v34();
  }

  v9 = v0[2];
  v0[4] = v9;
  v0[5] = v1;
  sub_100017D5C(v9, v1);
  sub_1000E0A3C();
  v10 = DataProtocol.isNull.getter();
  v11 = v0[22];
  if (v10)
  {
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    sub_100006654(v9, v1);
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v65[0] = swift_slowAlloc();
      *v14 = 136446466;
      *(v14 + 4) = sub_1000136BC(0xD00000000000001DLL, 0x8000000101370EE0, v65);
      *(v14 + 12) = 2080;
      v15 = Data.hexString.getter();
      v17 = sub_1000136BC(v15, v16, v65);

      *(v14 + 14) = v17;
      _os_log_impl(&_mh_execute_header, v12, v13, "%{public}s Invalid serial number %s!", v14, 0x16u);
      swift_arrayDestroy();
    }

    v18 = v0[27];
    sub_100500BC4();
    swift_allocError();
    *v19 = xmmword_1013E84F0;
    *(v19 + 16) = 3;
    swift_willThrow();
    sub_100006654(v9, v1);
    goto LABEL_9;
  }

  v36 = Data.trimmed.getter();
  v38 = v37;
  sub_100006654(v9, v1);
  sub_100017D5C(v36, v38);
  sub_100017D5C(v36, v38);
  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.default.getter();
  sub_100016590(v36, v38);
  if (os_log_type_enabled(v39, v40))
  {
    v64 = v40;
    v41 = v0[8];
    v42 = swift_slowAlloc();
    v65[0] = swift_slowAlloc();
    *v42 = 136446466;
    *(v42 + 4) = sub_1000136BC(0xD00000000000001DLL, 0x8000000101370EE0, v65);
    *(v42 + 12) = 2080;
    sub_100017D5C(v36, v38);
    static String.Encoding.utf8.getter();
    v43 = String.init(data:encoding:)();
    if (!v44)
    {
      v43 = Data.hexString.getter();
    }

    v45 = v43;
    v46 = v44;
    sub_100016590(v36, v38);
    sub_100016590(v36, v38);
    v47 = v0[17];
    v62 = v0[18];
    v60 = v0[27];
    v61 = v0[16];
    v48 = sub_1000136BC(v45, v46, v65);

    *(v42 + 14) = v48;
    _os_log_impl(&_mh_execute_header, v39, v64, "%{public}s %s", v42, 0x16u);
    swift_arrayDestroy();

    sub_100016590(v36, v38);
    (*(v47 + 8))(v62, v61);
  }

  else
  {
    v49 = v0[27];
    v51 = v0[17];
    v50 = v0[18];
    v52 = v0[16];
    sub_100016590(v36, v38);

    sub_100016590(v36, v38);

    (*(v51 + 8))(v50, v52);
  }

  v53 = v0[21];
  v54 = v0[18];
  v56 = v0[14];
  v55 = v0[15];
  v57 = v0[11];
  v58 = v0[8];

  v59 = v0[1];

  return v59(v9, v1);
}

uint64_t sub_100DB3B00()
{
  v21 = v0;
  v1 = v0[27];

  v2 = v0[40];
  v3 = v0[22];
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v20 = v8;
    *v6 = 136446466;
    *(v6 + 4) = sub_1000136BC(0xD00000000000001DLL, 0x8000000101370EE0, &v20);
    *(v6 + 12) = 2114;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v9;
    *v7 = v9;
    _os_log_impl(&_mh_execute_header, v4, v5, "%{public}s error %{public}@", v6, 0x16u);
    sub_10000B3A8(v7, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v8);
  }

  v10 = v0[21];
  v11 = v0[17];
  v12 = v0[18];
  v14 = v0[15];
  v13 = v0[16];
  v15 = v0[14];
  v16 = v0[11];
  v19 = v0[8];
  swift_willThrow();
  (*(v11 + 8))(v12, v13);

  v17 = v0[1];

  return v17();
}

uint64_t sub_100DB3D24(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 32) = a3;
  *(v4 + 40) = a4;
  *(v4 + 80) = a2;
  *(v4 + 24) = a1;
  v5 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
  *(v4 + 48) = v5;
  v6 = *(v5 - 8);
  *(v4 + 56) = v6;
  v7 = *(v6 + 64) + 15;
  *(v4 + 64) = swift_task_alloc();
  *(v4 + 72) = swift_task_alloc();

  return _swift_task_switch(sub_100DB3E04, 0, 0);
}

uint64_t sub_100DB3E04()
{
  v48 = v0;
  if (*(v0 + 80))
  {
    v1 = *(v0 + 24);
    v2 = v1;
    if (qword_101694EA0 != -1)
    {
      swift_once();
      v2 = *(v0 + 24);
    }

    v4 = *(v0 + 56);
    v3 = *(v0 + 64);
    v5 = *(v0 + 48);
    v6 = *(v0 + 32);
    v7 = type metadata accessor for Logger();
    sub_1000076D4(v7, qword_1016BB490);
    (*(v4 + 16))(v3, v6, v5);
    swift_errorRetain();
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    sub_1000BB584(v2, 1);
    v10 = os_log_type_enabled(v8, v9);
    v12 = *(v0 + 56);
    v11 = *(v0 + 64);
    v13 = *(v0 + 48);
    if (v10)
    {
      v14 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      *v14 = 136446722;
      *(v14 + 4) = sub_1000136BC(0xD00000000000001ELL, 0x80000001013711E0, &v47);
      *(v14 + 12) = 2082;
      sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00);
      v45 = v9;
      v15 = dispatch thunk of CustomStringConvertible.description.getter();
      v17 = v16;
      (*(v12 + 8))(v11, v13);
      v18 = sub_1000136BC(v15, v17, &v47);

      *(v14 + 14) = v18;
      *(v14 + 22) = 2114;
      swift_errorRetain();
      v19 = _swift_stdlib_bridgeErrorToNSError();
      *(v14 + 24) = v19;
      *v46 = v19;
      _os_log_impl(&_mh_execute_header, v8, v45, "%{public}s failed for %{public}s. Error %{public}@", v14, 0x20u);
      sub_10000B3A8(v46, &qword_10169BB30, &unk_10138B3C0);

      swift_arrayDestroy();

      if ((static Task<>.isCancelled.getter() & 1) == 0)
      {
LABEL_6:
        v20 = *(v0 + 40);
        *(v0 + 16) = v1;
        swift_errorRetain();
        sub_1000BC4D4(&qword_1016BB920, &qword_1013E8BE8);
        CheckedContinuation.resume(throwing:)();
        goto LABEL_16;
      }
    }

    else
    {

      (*(v12 + 8))(v11, v13);
      if ((static Task<>.isCancelled.getter() & 1) == 0)
      {
        goto LABEL_6;
      }
    }

    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v47 = v40;
      *v39 = 136446210;
      *(v39 + 4) = sub_1000136BC(0xD00000000000001ELL, 0x80000001013711E0, &v47);
      _os_log_impl(&_mh_execute_header, v37, v38, "%{public}s Not resuming continuation in cancelled task.", v39, 0xCu);
      sub_100007BAC(v40);
    }
  }

  else
  {
    if (qword_101694EA0 != -1)
    {
      swift_once();
    }

    v21 = *(v0 + 72);
    v22 = *(v0 + 48);
    v23 = *(v0 + 56);
    v24 = *(v0 + 32);
    v25 = type metadata accessor for Logger();
    sub_1000076D4(v25, qword_1016BB490);
    (*(v23 + 16))(v21, v24, v22);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();
    v28 = os_log_type_enabled(v26, v27);
    v29 = *(v0 + 72);
    v30 = *(v0 + 48);
    v31 = *(v0 + 56);
    if (v28)
    {
      v32 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      *v32 = 136446466;
      *(v32 + 4) = sub_1000136BC(0xD00000000000001ELL, 0x80000001013711E0, &v47);
      *(v32 + 12) = 2082;
      sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00);
      v33 = dispatch thunk of CustomStringConvertible.description.getter();
      v35 = v34;
      (*(v31 + 8))(v29, v30);
      v36 = sub_1000136BC(v33, v35, &v47);

      *(v32 + 14) = v36;
      _os_log_impl(&_mh_execute_header, v26, v27, "%{public}s succeeded for %{public}s", v32, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v31 + 8))(v29, v30);
    }
  }

LABEL_16:
  v42 = *(v0 + 64);
  v41 = *(v0 + 72);

  v43 = *(v0 + 8);

  return v43();
}

uint64_t sub_100DB4414(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v2[5] = *v1;
  v3 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
  v2[6] = v3;
  v4 = *(v3 - 8);
  v2[7] = v4;
  v5 = *(v4 + 64) + 15;
  v2[8] = swift_task_alloc();

  return _swift_task_switch(sub_100DB4508, v1, 0);
}

uint64_t sub_100DB4508()
{
  v28 = v0;
  if (qword_101694EA0 != -1)
  {
    swift_once();
  }

  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  v4 = v0[3];
  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_1016BB490);
  (*(v2 + 16))(v1, v4, v3);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[7];
  v10 = v0[8];
  v11 = v0[6];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 136446466;
    v27 = v13;
    *(v12 + 4) = sub_1000136BC(0xD00000000000001ALL, 0x80000001013711C0, &v27);
    *(v12 + 12) = 2082;
    sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    (*(v9 + 8))(v10, v11);
    v17 = sub_1000136BC(v14, v16, &v27);

    *(v12 + 14) = v17;
    _os_log_impl(&_mh_execute_header, v6, v7, "%{public}s for identifier %{public}s", v12, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v9 + 8))(v10, v11);
  }

  v19 = v0[4];
  v18 = v0[5];
  v20 = v0[3];
  v21 = sub_100D97688(&qword_1016BB850, type metadata accessor for PencilPairingService);
  v22 = swift_task_alloc();
  v0[9] = v22;
  v22[2] = v19;
  v22[3] = v20;
  v22[4] = v18;
  v23 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v24 = swift_task_alloc();
  v0[10] = v24;
  type metadata accessor for SPAccessoryPairingStatus(0);
  *v24 = v0;
  v24[1] = sub_100DB4858;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 2, v19, v21, 0xD00000000000001ALL, 0x80000001013711C0, sub_100DDC924, v22, v25);
}

uint64_t sub_100DB4858()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v9 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v4 = *(v2 + 32);
    v5 = sub_100DB49EC;
  }

  else
  {
    v6 = *(v2 + 72);
    v7 = *(v2 + 32);

    v5 = sub_100DB4980;
    v4 = v7;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100DB4980()
{
  v1 = v0[8];
  v2 = v0[2];

  v3 = v0[1];

  return v3(v2);
}

uint64_t sub_100DB49EC()
{
  v2 = v0[8];
  v1 = v0[9];

  v3 = v0[1];
  v4 = v0[11];

  return v3();
}

uint64_t sub_100DB4A58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v61 = a7;
  v62 = a8;
  v60 = a6;
  v57 = a5;
  v65 = a4;
  v47 = a3;
  v51 = a1;
  v11 = type metadata accessor for UUID();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v59 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
  v63 = v14;
  v66 = *(v14 - 8);
  v64 = v66[8];
  v15 = __chkstk_darwin(v14);
  v55 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v44 - v17;
  v45 = &v44 - v17;
  v19 = sub_1000BC4D4(&qword_1016BB920, &qword_1013E8BE8);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = __chkstk_darwin(v19);
  v54 = &v44 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = v21;
  __chkstk_darwin(v22);
  v24 = &v44 - v23;
  v44 = &v44 - v23;
  v58 = *(a2 + OBJC_IVAR____TtC12searchpartyd20PencilPairingService_queue);
  v53 = a2;
  v56 = type metadata accessor for WorkItemQueue.WorkItem();
  v25 = *(v20 + 16);
  v50 = v20 + 16;
  v52 = v25;
  v25(v24, a1, v19);
  v26 = v66;
  v46 = v66[2];
  v46(v18, a3, v14);
  v27 = *(v20 + 80);
  v28 = (v27 + 24) & ~v27;
  v29 = *(v26 + 80);
  v30 = (v21 + v29 + v28) & ~v29;
  v48 = v27 | v29;
  v31 = (v64 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
  v32 = swift_allocObject();
  *(v32 + 16) = a2;
  v33 = v20 + 32;
  v34 = *(v20 + 32);
  v57 = v33;
  v34(v32 + v28, v44, v19);
  v35 = v66[4];
  v66 += 4;
  v44 = v35;
  v36 = v63;
  (v35)(v32 + v30, v45, v63);
  *(v32 + v31) = v65;
  v37 = v55;
  v46(v55, v47, v36);
  v38 = v54;
  v52(v54, v51, v19);
  v39 = (v29 + 16) & ~v29;
  v40 = (v64 + v27 + v39) & ~v27;
  v41 = (v49 + v40 + 7) & 0xFFFFFFFFFFFFFFF8;
  v42 = swift_allocObject();
  (v44)(v42 + v39, v37, v63);
  v34(v42 + v40, v38, v19);
  *(v42 + v41) = v65;

  UUID.init()();
  WorkItemQueue.WorkItem.__allocating_init(identifier:block:completion:)();
  dispatch thunk of WorkItemQueue.enqueue(_:)();
}

uint64_t sub_100DB4E98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v4[8] = *(v6 + 64);
  v4[9] = swift_task_alloc();
  v7 = sub_1000BC4D4(&qword_1016BB920, &qword_1013E8BE8);
  v4[10] = v7;
  v8 = *(v7 - 8);
  v4[11] = v8;
  v4[12] = *(v8 + 64);
  v4[13] = swift_task_alloc();

  return _swift_task_switch(sub_100DB4FE0, 0, 0);
}

uint64_t sub_100DB4FE0()
{
  v1 = v0[13];
  v2 = v0[10];
  v3 = v0[11];
  v4 = v0[9];
  v15 = v0[8];
  v16 = v0[12];
  v5 = v0[6];
  v6 = v0[7];
  v17 = v4;
  v7 = v0[4];
  v18 = v0[5];
  v8 = v0[2];
  (*(v3 + 16))(v1, v0[3], v2);
  (*(v6 + 16))(v4, v7, v5);
  v9 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v10 = (v16 + *(v6 + 80) + v9) & ~*(v6 + 80);
  v11 = swift_allocObject();
  v0[14] = v11;
  *(v11 + 16) = v8;
  (*(v3 + 32))(v11 + v9, v1, v2);
  (*(v6 + 32))(v11 + v10, v17, v5);
  *(v11 + ((v15 + v10 + 7) & 0xFFFFFFFFFFFFFFF8)) = v18;
  v12 = async function pointer to withTimeout<A>(_:block:)[1];

  v13 = swift_task_alloc();
  v0[15] = v13;
  *v13 = v0;
  v13[1] = sub_100DB51C0;

  return withTimeout<A>(_:block:)(v13, 0x40AAD21B3B700000, 3, &unk_1013E8C18, v11, &type metadata for () + 8);
}

uint64_t sub_100DB51C0()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v7 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v4 = sub_100DB534C;
  }

  else
  {
    v5 = *(v2 + 112);

    v4 = sub_100DB52DC;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100DB52DC()
{
  v1 = v0[13];
  v2 = v0[9];

  v3 = v0[1];

  return v3();
}

uint64_t sub_100DB534C()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[9];

  v4 = v0[1];
  v5 = v0[16];

  return v4();
}

uint64_t sub_100DB53C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[13] = a3;
  v4[14] = a4;
  v4[12] = a2;
  v5 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
  v4[15] = v5;
  v6 = *(v5 - 8);
  v4[16] = v6;
  v7 = *(v6 + 64) + 15;
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  v8 = type metadata accessor for UUID();
  v4[19] = v8;
  v9 = *(v8 - 8);
  v4[20] = v9;
  v10 = *(v9 + 64) + 15;
  v4[21] = swift_task_alloc();
  v11 = type metadata accessor for CentralManager.State();
  v4[22] = v11;
  v12 = *(v11 - 8);
  v4[23] = v12;
  v13 = *(v12 + 64) + 15;
  v4[24] = swift_task_alloc();
  v14 = *(*(sub_1000BC4D4(&unk_1016C1200, &qword_1013B6240) - 8) + 64) + 15;
  v4[25] = swift_task_alloc();

  return _swift_task_switch(sub_100DB5590, 0, 0);
}

uint64_t sub_100DB5590()
{
  v30 = v0;
  My = type metadata accessor for Feature.FindMy();
  v0[5] = My;
  v0[6] = sub_100D97688(&qword_1016AF950, &type metadata accessor for Feature.FindMy);
  v2 = sub_1000280DC(v0 + 2);
  (*(*(My - 8) + 104))(v2, enum case for Feature.FindMy.lineUp(_:), My);
  LOBYTE(My) = isFeatureEnabled(_:)();
  sub_100007BAC(v0 + 2);
  if (My)
  {
    v3 = *(v0[12] + 128);
    if (sub_1004F21B4())
    {
      v4 = async function pointer to daemon.getter[1];
      v5 = swift_task_alloc();
      v0[26] = v5;
      *v5 = v0;
      v5[1] = sub_100DB59B4;

      return daemon.getter();
    }

    if (qword_101694EA0 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_1000076D4(v17, qword_1016BB490);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v29 = v21;
      *v20 = 136446210;
      *(v20 + 4) = sub_1000136BC(0xD00000000000001ALL, 0x80000001013711C0, &v29);
      _os_log_impl(&_mh_execute_header, v18, v19, "%{public}s FMIP is disabled!", v20, 0xCu);
      sub_100007BAC(v21);
    }

    v22 = v0[13];
    v0[7] = 6;
    sub_1000BC4D4(&qword_1016BB920, &qword_1013E8BE8);
    CheckedContinuation.resume(returning:)();
    v24 = v0[24];
    v23 = v0[25];
    v25 = v0[21];
    v27 = v0[17];
    v26 = v0[18];

    v16 = v0[1];
  }

  else
  {
    if (qword_101694EA0 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_1000076D4(v6, qword_1016BB490);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "Feature.FindMy.lineUp is disabled!", v9, 2u);
    }

    sub_100500BC4();
    swift_allocError();
    *v10 = xmmword_10139D960;
    *(v10 + 16) = 3;
    swift_willThrow();
    v12 = v0[24];
    v11 = v0[25];
    v13 = v0[21];
    v15 = v0[17];
    v14 = v0[18];

    v16 = v0[1];
  }

  return v16();
}

uint64_t sub_100DB59B4(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 208);
  v12 = *v1;
  *(v3 + 216) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 224) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for CloudStorageService();
  v9 = sub_100D97688(&qword_1016AA400, &type metadata accessor for Daemon);
  v10 = sub_100D97688(&unk_1016AA520, type metadata accessor for CloudStorageService);
  *v6 = v12;
  v6[1] = sub_100DB5B90;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100DB5B90(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 224);
  v6 = *v2;
  v4[29] = a1;
  v4[30] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_100DB705C, 0, 0);
  }

  else
  {
    v7 = v4[27];

    v8 = swift_task_alloc();
    v4[31] = v8;
    *v8 = v6;
    v8[1] = sub_100DB5D18;

    return sub_10084B7B8();
  }
}

uint64_t sub_100DB5D18(char a1)
{
  v2 = *(*v1 + 248);
  v4 = *v1;
  *(*v1 + 392) = a1;

  return _swift_task_switch(sub_100DB5E18, 0, 0);
}

uint64_t sub_100DB5E18()
{
  v21 = v0;
  if (*(v0 + 392) == 1)
  {
    v1 = *(v0 + 200);
    *(v0 + 256) = type metadata accessor for CentralManager();
    v2 = type metadata accessor for CentralManager.Options();
    (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
    v3 = async function pointer to CentralManager.__allocating_init(options:)[1];
    v4 = swift_task_alloc();
    *(v0 + 264) = v4;
    *v4 = v0;
    v4[1] = sub_100DB60D8;
    v5 = *(v0 + 200);

    return CentralManager.__allocating_init(options:)(v5);
  }

  else
  {
    if (qword_101694EA0 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_1000076D4(v6, qword_1016BB490);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v20 = v10;
      *v9 = 136446210;
      *(v9 + 4) = sub_1000136BC(0xD00000000000001ALL, 0x80000001013711C0, &v20);
      _os_log_impl(&_mh_execute_header, v7, v8, "%{public}s Account is not ready!", v9, 0xCu);
      sub_100007BAC(v10);
    }

    v11 = *(v0 + 232);
    v12 = *(v0 + 104);
    *(v0 + 64) = 5;
    sub_1000BC4D4(&qword_1016BB920, &qword_1013E8BE8);
    CheckedContinuation.resume(returning:)();

    v14 = *(v0 + 192);
    v13 = *(v0 + 200);
    v15 = *(v0 + 168);
    v17 = *(v0 + 136);
    v16 = *(v0 + 144);

    v18 = *(v0 + 8);

    return v18();
  }
}

uint64_t sub_100DB60D8(uint64_t a1)
{
  v2 = *(*v1 + 264);
  v4 = *v1;
  *(*v1 + 272) = a1;

  return _swift_task_switch(sub_100DB61D8, 0, 0);
}

uint64_t sub_100DB61D8()
{
  (*(v0[23] + 104))(v0[24], enum case for CentralManager.State.poweredOn(_:), v0[22]);
  v1 = async function pointer to CentralManagerProtocol.await(state:)[1];
  v2 = swift_task_alloc();
  v0[35] = v2;
  v3 = sub_100D97688(&unk_1016C1160, &type metadata accessor for CentralManager);
  *v2 = v0;
  v2[1] = sub_100DB62D4;
  v4 = v0[34];
  v5 = v0[32];
  v6 = v0[24];

  return CentralManagerProtocol.await(state:)(v6, v5, v3);
}

uint64_t sub_100DB62D4()
{
  v2 = *v1;
  v3 = *(*v1 + 280);
  v4 = *v1;
  *(*v1 + 288) = v0;

  (*(v2[23] + 8))(v2[24], v2[22]);
  if (v0)
  {
    v5 = sub_100DB7100;
  }

  else
  {
    v5 = sub_100DB643C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100DB643C()
{
  v33 = v0;
  if (qword_101694EA0 != -1)
  {
    swift_once();
  }

  v1 = v0[34];
  v2 = type metadata accessor for Logger();
  v0[37] = sub_1000076D4(v2, qword_1016BB490);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[34];
    v6 = v0[32];
    v7 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    *v7 = 136446466;
    *(v7 + 4) = sub_1000136BC(0xD00000000000001ALL, 0x80000001013711C0, &v32);
    *(v7 + 12) = 2080;
    v0[11] = v5;
    sub_100D97688(&qword_1016B8628, &type metadata accessor for CentralManager);
    v8 = dispatch thunk of CustomStringConvertible.description.getter();
    v10 = sub_1000136BC(v8, v9, &v32);

    *(v7 + 14) = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s %s has powered on!", v7, 0x16u);
    swift_arrayDestroy();
  }

  v30 = v0[21];
  v11 = v0[18];
  v12 = v0[15];
  v13 = v0[16];
  v14 = v0[14];
  sub_1000BC4D4(&qword_1016BB870, &unk_1013F6290);
  v15 = *(v13 + 72);
  v16 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_101385D80;
  v18 = *(v13 + 16);
  v0[38] = v18;
  v0[39] = (v13 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v18(v17 + v16, v14, v12);
  v32 = _swiftEmptyArrayStorage;
  sub_101123D4C(0, 1, 0);
  v19 = v32;
  v18(v11, v17 + v16, v12);

  Identifier.id.getter();
  v20 = *(v13 + 8);
  v0[40] = v20;
  v0[41] = (v13 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v20(v11, v12);
  v22 = v19[2];
  v21 = v19[3];
  if (v22 >= v21 >> 1)
  {
    sub_101123D4C(v21 > 1, v22 + 1, 1);
    v19 = v32;
  }

  v0[42] = v19;
  v24 = v0[20];
  v23 = v0[21];
  v25 = v0[19];
  v19[2] = v22 + 1;
  (*(v24 + 32))(v19 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v22, v23, v25);
  v26 = *(&async function pointer to dispatch thunk of CentralManager.retrievePeripherals(identifiers:) + 1);
  v31 = (&async function pointer to dispatch thunk of CentralManager.retrievePeripherals(identifiers:) + async function pointer to dispatch thunk of CentralManager.retrievePeripherals(identifiers:));
  v27 = swift_task_alloc();
  v0[43] = v27;
  *v27 = v0;
  v27[1] = sub_100DB680C;
  v28 = v0[34];

  return v31(v19);
}

uint64_t sub_100DB680C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 344);
  v8 = *v2;
  v3[44] = a1;
  v3[45] = v1;

  if (v1)
  {
    v5 = sub_100DB71B0;
  }

  else
  {
    v6 = v3[42];

    v5 = sub_100DB6928;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100DB6928()
{
  v46 = v0;
  v1 = v0[44];
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v13 = v0[44];
    }

    result = _CocoaArrayWrapper.endIndex.getter();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_14:
    v14 = v0[44];
    v16 = v0[38];
    v15 = v0[39];
    v17 = v0[37];
    v18 = v0[17];
    v20 = v0[14];
    v19 = v0[15];

    v16(v18, v20, v19);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    v23 = os_log_type_enabled(v21, v22);
    v24 = v0[40];
    v25 = v0[17];
    v26 = v0[15];
    if (v23)
    {
      v44 = v0[41];
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v45[0] = v28;
      *v27 = 136446210;
      sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00);
      v29 = dispatch thunk of CustomStringConvertible.description.getter();
      v31 = v30;
      v24(v25, v26);
      v32 = sub_1000136BC(v29, v31, v45);

      *(v27 + 4) = v32;
      _os_log_impl(&_mh_execute_header, v21, v22, "Missing peripheral for %{public}s", v27, 0xCu);
      sub_100007BAC(v28);
    }

    else
    {

      v24(v25, v26);
    }

    v33 = v0[34];
    v34 = v0[29];
    sub_100500BC4();
    swift_allocError();
    *v35 = xmmword_1013E84C0;
    *(v35 + 16) = 3;
    swift_willThrow();

    v37 = v0[24];
    v36 = v0[25];
    v38 = v0[21];
    v40 = v0[17];
    v39 = v0[18];

    v41 = v0[1];

    return v41();
  }

  result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_14;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v42 = v0[44];
    v3 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v43 = v0[44];
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v3 = *(v0[44] + 32);
  }

  v0[46] = v3;
  v4 = v0[37];

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v45[0] = swift_slowAlloc();
    *v7 = 136446466;
    *(v7 + 4) = sub_1000136BC(0xD00000000000001ALL, 0x80000001013711C0, v45);
    *(v7 + 12) = 2080;
    v0[10] = v3;
    type metadata accessor for Peripheral();
    sub_100D97688(&qword_1016972D0, &type metadata accessor for Peripheral);
    v8 = dispatch thunk of CustomStringConvertible.description.getter();
    v10 = sub_1000136BC(v8, v9, v45);

    *(v7 + 14) = v10;
    _os_log_impl(&_mh_execute_header, v5, v6, "%{public}s Retrieved peripheral: %s", v7, 0x16u);
    swift_arrayDestroy();
  }

  v11 = swift_task_alloc();
  v0[47] = v11;
  *v11 = v0;
  v11[1] = sub_100DB6DDC;
  v12 = v0[12];

  return sub_100DA5158(v3);
}

uint64_t sub_100DB6DDC(char a1)
{
  v3 = *v2;
  v4 = *(*v2 + 376);
  v7 = *v2;
  *(v3 + 393) = a1;
  *(v3 + 384) = v1;

  if (v1)
  {
    v5 = sub_100DB726C;
  }

  else
  {
    v5 = sub_100DB6EF4;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100DB6EF4()
{
  v1 = *(v0 + 384);
  static Task<>.checkCancellation()();
  if (v1)
  {
    v2 = *(v0 + 368);
    v3 = *(v0 + 272);
    v4 = *(v0 + 232);

    v6 = *(v0 + 192);
    v5 = *(v0 + 200);
    v7 = *(v0 + 168);
    v9 = *(v0 + 136);
    v8 = *(v0 + 144);
  }

  else
  {
    v11 = *(v0 + 368);
    v12 = *(v0 + 272);
    v13 = *(v0 + 232);
    v14 = *(v0 + 104);
    *(v0 + 72) = qword_1013E8DD0[*(v0 + 393)];
    sub_1000BC4D4(&qword_1016BB920, &qword_1013E8BE8);
    CheckedContinuation.resume(returning:)();

    v16 = *(v0 + 192);
    v15 = *(v0 + 200);
    v17 = *(v0 + 168);
    v19 = *(v0 + 136);
    v18 = *(v0 + 144);
  }

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_100DB705C()
{
  v1 = v0[27];

  v2 = v0[30];
  v4 = v0[24];
  v3 = v0[25];
  v5 = v0[21];
  v7 = v0[17];
  v6 = v0[18];

  v8 = v0[1];

  return v8();
}

uint64_t sub_100DB7100()
{
  v1 = v0[34];
  v2 = v0[29];

  v3 = v0[36];
  v5 = v0[24];
  v4 = v0[25];
  v6 = v0[21];
  v8 = v0[17];
  v7 = v0[18];

  v9 = v0[1];

  return v9();
}

uint64_t sub_100DB71B0()
{
  v1 = v0[42];
  v2 = v0[34];
  v3 = v0[29];

  v4 = v0[45];
  v6 = v0[24];
  v5 = v0[25];
  v7 = v0[21];
  v9 = v0[17];
  v8 = v0[18];

  v10 = v0[1];

  return v10();
}

uint64_t sub_100DB726C()
{
  v1 = v0[46];
  v2 = v0[34];
  v3 = v0[29];

  v4 = v0[48];
  v6 = v0[24];
  v5 = v0[25];
  v7 = v0[21];
  v9 = v0[17];
  v8 = v0[18];

  v10 = v0[1];

  return v10();
}

uint64_t sub_100DB7328(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 32) = a3;
  *(v4 + 40) = a4;
  *(v4 + 80) = a2;
  *(v4 + 24) = a1;
  v5 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
  *(v4 + 48) = v5;
  v6 = *(v5 - 8);
  *(v4 + 56) = v6;
  v7 = *(v6 + 64) + 15;
  *(v4 + 64) = swift_task_alloc();
  *(v4 + 72) = swift_task_alloc();

  return _swift_task_switch(sub_100DB7408, 0, 0);
}

uint64_t sub_100DB7408()
{
  v48 = v0;
  if (*(v0 + 80))
  {
    v1 = *(v0 + 24);
    v2 = v1;
    if (qword_101694EA0 != -1)
    {
      swift_once();
      v2 = *(v0 + 24);
    }

    v4 = *(v0 + 56);
    v3 = *(v0 + 64);
    v5 = *(v0 + 48);
    v6 = *(v0 + 32);
    v7 = type metadata accessor for Logger();
    sub_1000076D4(v7, qword_1016BB490);
    (*(v4 + 16))(v3, v6, v5);
    swift_errorRetain();
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    sub_1000BB584(v2, 1);
    v10 = os_log_type_enabled(v8, v9);
    v12 = *(v0 + 56);
    v11 = *(v0 + 64);
    v13 = *(v0 + 48);
    if (v10)
    {
      v14 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      *v14 = 136446722;
      *(v14 + 4) = sub_1000136BC(0xD00000000000001ALL, 0x80000001013711C0, &v47);
      *(v14 + 12) = 2082;
      sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00);
      v45 = v9;
      v15 = dispatch thunk of CustomStringConvertible.description.getter();
      v17 = v16;
      (*(v12 + 8))(v11, v13);
      v18 = sub_1000136BC(v15, v17, &v47);

      *(v14 + 14) = v18;
      *(v14 + 22) = 2114;
      swift_errorRetain();
      v19 = _swift_stdlib_bridgeErrorToNSError();
      *(v14 + 24) = v19;
      *v46 = v19;
      _os_log_impl(&_mh_execute_header, v8, v45, "%{public}s failed for %{public}s. Error %{public}@", v14, 0x20u);
      sub_10000B3A8(v46, &qword_10169BB30, &unk_10138B3C0);

      swift_arrayDestroy();

      if ((static Task<>.isCancelled.getter() & 1) == 0)
      {
LABEL_6:
        v20 = *(v0 + 40);
        *(v0 + 16) = v1;
        swift_errorRetain();
        sub_1000BC4D4(&qword_1016BB920, &qword_1013E8BE8);
        CheckedContinuation.resume(throwing:)();
        goto LABEL_16;
      }
    }

    else
    {

      (*(v12 + 8))(v11, v13);
      if ((static Task<>.isCancelled.getter() & 1) == 0)
      {
        goto LABEL_6;
      }
    }

    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v47 = v40;
      *v39 = 136446210;
      *(v39 + 4) = sub_1000136BC(0xD00000000000001ALL, 0x80000001013711C0, &v47);
      _os_log_impl(&_mh_execute_header, v37, v38, "%{public}s Not resuming continuation in cancelled task.", v39, 0xCu);
      sub_100007BAC(v40);
    }
  }

  else
  {
    if (qword_101694EA0 != -1)
    {
      swift_once();
    }

    v21 = *(v0 + 72);
    v22 = *(v0 + 48);
    v23 = *(v0 + 56);
    v24 = *(v0 + 32);
    v25 = type metadata accessor for Logger();
    sub_1000076D4(v25, qword_1016BB490);
    (*(v23 + 16))(v21, v24, v22);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();
    v28 = os_log_type_enabled(v26, v27);
    v29 = *(v0 + 72);
    v30 = *(v0 + 48);
    v31 = *(v0 + 56);
    if (v28)
    {
      v32 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      *v32 = 136446466;
      *(v32 + 4) = sub_1000136BC(0xD00000000000001ALL, 0x80000001013711C0, &v47);
      *(v32 + 12) = 2082;
      sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00);
      v33 = dispatch thunk of CustomStringConvertible.description.getter();
      v35 = v34;
      (*(v31 + 8))(v29, v30);
      v36 = sub_1000136BC(v33, v35, &v47);

      *(v32 + 14) = v36;
      _os_log_impl(&_mh_execute_header, v26, v27, "%{public}s succeeded for %{public}s", v32, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v31 + 8))(v29, v30);
    }
  }

LABEL_16:
  v42 = *(v0 + 64);
  v41 = *(v0 + 72);

  v43 = *(v0 + 8);

  return v43();
}

uint64_t sub_100DB7A18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a2;
  v3[3] = a3;
  v4 = type metadata accessor for UUID();
  v3[4] = v4;
  v5 = *(v4 - 8);
  v3[5] = v5;
  v6 = *(v5 + 64) + 15;
  v3[6] = swift_task_alloc();
  v7 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
  v3[7] = v7;
  v8 = *(v7 - 8);
  v3[8] = v8;
  v9 = *(v8 + 64) + 15;
  v3[9] = swift_task_alloc();

  return _swift_task_switch(sub_100DB7B40, 0, 0);
}

uint64_t sub_100DB7B40()
{
  v1 = v0[9];
  (*(v0[5] + 16))(v0[6], v0[3], v0[4]);
  type metadata accessor for Peripheral();
  Identifier.init(_:)();
  v2 = swift_task_alloc();
  v0[10] = v2;
  *v2 = v0;
  v2[1] = sub_100DB7C10;
  v3 = v0[9];
  v4 = v0[2];

  return sub_100DB7E38(v3);
}

uint64_t sub_100DB7C10()
{
  v2 = *(*v1 + 80);
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 64);
  v5 = *(*v1 + 56);
  v6 = *v1;
  v6[11] = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {

    return _swift_task_switch(sub_100DB7DC8, 0, 0);
  }

  else
  {
    v7 = v6[9];
    v8 = v6[6];

    v9 = v6[1];

    return v9();
  }
}

uint64_t sub_100DB7DC8()
{
  v1 = v0[9];
  v2 = v0[6];

  v3 = v0[1];
  v4 = v0[11];

  return v3();
}

uint64_t sub_100DB7E38(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = type metadata accessor for CentralManager.State();
  v2[7] = v3;
  v4 = *(v3 - 8);
  v2[8] = v4;
  v5 = *(v4 + 64) + 15;
  v2[9] = swift_task_alloc();
  v6 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
  v2[10] = v6;
  v7 = *(v6 - 8);
  v2[11] = v7;
  v8 = *(v7 + 64) + 15;
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();

  return _swift_task_switch(sub_100DB7F78, v1, 0);
}

uint64_t sub_100DB7F78()
{
  v23 = v0;
  if (qword_101694EA0 != -1)
  {
    swift_once();
  }

  v1 = v0[14];
  v2 = v0[10];
  v3 = v0[11];
  v4 = v0[5];
  v5 = type metadata accessor for Logger();
  v0[15] = sub_1000076D4(v5, qword_1016BB490);
  v6 = *(v3 + 16);
  v0[16] = v6;
  v0[17] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[14];
  v11 = v0[10];
  v12 = v0[11];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v13 = 136446466;
    *(v13 + 4) = sub_1000136BC(0xD00000000000001CLL, 0x8000000101370C30, &v22);
    *(v13 + 12) = 2082;
    sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    v17 = *(v12 + 8);
    v17(v10, v11);
    v18 = sub_1000136BC(v14, v16, &v22);

    *(v13 + 14) = v18;
    _os_log_impl(&_mh_execute_header, v7, v8, "%{public}s for identifier: %{public}s", v13, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v17 = *(v12 + 8);
    v17(v10, v11);
  }

  v0[18] = v17;
  v0[19] = type metadata accessor for CentralManager();
  v19 = async function pointer to static CentralManager.pairingCentralManager.getter[1];
  v20 = swift_task_alloc();
  v0[20] = v20;
  *v20 = v0;
  v20[1] = sub_100DB8240;

  return static CentralManager.pairingCentralManager.getter();
}

uint64_t sub_100DB8240(uint64_t a1)
{
  v3 = *(*v2 + 160);
  v4 = *v2;
  v4[21] = a1;

  if (v1)
  {
    v6 = v4[13];
    v5 = v4[14];
    v7 = v4[12];
    v8 = v4[9];

    v9 = v4[1];

    return v9();
  }

  else
  {
    v11 = v4[6];

    return _swift_task_switch(sub_100DB83A8, v11, 0);
  }
}

uint64_t sub_100DB83A8()
{
  (*(v0[8] + 104))(v0[9], enum case for CentralManager.State.poweredOn(_:), v0[7]);
  v1 = async function pointer to CentralManagerProtocol.await(state:)[1];
  v2 = swift_task_alloc();
  v0[22] = v2;
  v3 = sub_100D97688(&unk_1016C1160, &type metadata accessor for CentralManager);
  *v2 = v0;
  v2[1] = sub_100DB84A4;
  v4 = v0[21];
  v5 = v0[19];
  v6 = v0[9];

  return CentralManagerProtocol.await(state:)(v6, v5, v3);
}

uint64_t sub_100DB84A4()
{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v4 = *v1;
  *(*v1 + 184) = v0;

  v5 = v2[9];
  v6 = v2[8];
  v7 = v2[7];
  v8 = v2[6];
  (*(v6 + 8))(v5, v7);
  if (v0)
  {
    v9 = sub_100DB96FC;
  }

  else
  {
    v9 = sub_100DB8620;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_100DB8620()
{
  v32 = v0;
  v1 = *(v0 + 120);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v31 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_1000136BC(0xD00000000000001CLL, 0x8000000101370C30, &v31);
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s CentralManager has powered on!", v4, 0xCu);
    sub_100007BAC(v5);
  }

  v6 = *(v0 + 136);
  v7 = *(v0 + 120);
  (*(v0 + 128))(*(v0 + 104), *(v0 + 40), *(v0 + 80));
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 144);
  v12 = *(v0 + 104);
  v14 = *(v0 + 80);
  v13 = *(v0 + 88);
  if (v10)
  {
    v15 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    *v15 = 136446466;
    *(v15 + 4) = sub_1000136BC(0xD00000000000001CLL, 0x8000000101370C30, &v31);
    *(v15 + 12) = 2082;
    sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00);
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    v18 = v17;
    v11(v12, v14);
    v19 = sub_1000136BC(v16, v18, &v31);

    *(v15 + 14) = v19;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s Retrieving peripheral matching identifier: %{public}s", v15, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v11(v12, v14);
  }

  v20 = *(v0 + 80);
  v21 = *(v0 + 40);
  sub_1000BC4D4(&unk_1016A9A10, &qword_1013A07C0);
  v22 = *(type metadata accessor for UUID() - 8);
  v23 = *(v22 + 72);
  v24 = (*(v22 + 80) + 32) & ~*(v22 + 80);
  v25 = swift_allocObject();
  *(v0 + 192) = v25;
  *(v25 + 16) = xmmword_101385D80;
  Identifier.id.getter();
  v26 = *(&async function pointer to dispatch thunk of CentralManager.retrievePeripherals(identifiers:) + 1);
  v30 = (&async function pointer to dispatch thunk of CentralManager.retrievePeripherals(identifiers:) + async function pointer to dispatch thunk of CentralManager.retrievePeripherals(identifiers:));
  v27 = swift_task_alloc();
  *(v0 + 200) = v27;
  *v27 = v0;
  v27[1] = sub_100DB89E8;
  v28 = *(v0 + 168);

  return v30(v25);
}

uint64_t sub_100DB89E8(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 200);
  v10 = *v2;
  v3[26] = a1;
  v3[27] = v1;

  if (v1)
  {
    v5 = v3[6];
    v6 = sub_100DB9790;
  }

  else
  {
    v7 = v3[24];
    v8 = v3[6];

    v6 = sub_100DB8B10;
    v5 = v8;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100DB8B10()
{
  v37 = v0;
  v1 = v0[26];
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v6 = v0[26];
    }

    result = _CocoaArrayWrapper.endIndex.getter();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_12:
    v7 = v0[26];
    v9 = v0[16];
    v8 = v0[17];
    v10 = v0[15];
    v11 = v0[12];
    v12 = v0[10];
    v13 = v0[5];

    v9(v11, v13, v12);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    v16 = os_log_type_enabled(v14, v15);
    v17 = v0[18];
    v19 = v0[11];
    v18 = v0[12];
    v20 = v0[10];
    if (v16)
    {
      v21 = swift_slowAlloc();
      v36[0] = swift_slowAlloc();
      *v21 = 136446466;
      *(v21 + 4) = sub_1000136BC(0xD00000000000001CLL, 0x8000000101370C30, v36);
      *(v21 + 12) = 2082;
      sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00);
      v22 = dispatch thunk of CustomStringConvertible.description.getter();
      v24 = v23;
      v17(v18, v20);
      v25 = sub_1000136BC(v22, v24, v36);

      *(v21 + 14) = v25;
      _os_log_impl(&_mh_execute_header, v14, v15, "%{public}s Missing peripheral for %{public}s", v21, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      v17(v18, v20);
    }

    v26 = v0[21];
    sub_100500BC4();
    swift_allocError();
    *v27 = xmmword_1013E84C0;
    *(v27 + 16) = 3;
    swift_willThrow();

    v29 = v0[13];
    v28 = v0[14];
    v30 = v0[12];
    v31 = v0[9];

    v32 = v0[1];

    return v32();
  }

  result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_12;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v33 = v0[26];
    v3 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v34 = v0[26];
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v3 = *(v0[26] + 32);
  }

  v0[28] = v3;

  v4 = *(&async function pointer to dispatch thunk of Peripheral.isPaired.getter + 1);
  v35 = (&async function pointer to dispatch thunk of Peripheral.isPaired.getter + async function pointer to dispatch thunk of Peripheral.isPaired.getter);
  v5 = swift_task_alloc();
  v0[29] = v5;
  *v5 = v0;
  v5[1] = sub_100DB8EAC;

  return v35();
}

uint64_t sub_100DB8EAC(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 232);
  v6 = *v2;
  *(v4 + 240) = v1;

  v7 = *(v4 + 48);
  if (v1)
  {
    v8 = sub_100DB9830;
  }

  else
  {
    *(v4 + 264) = a1 & 1;
    v8 = sub_100DB8FEC;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_100DB8FEC()
{
  v33 = v0;
  v1 = *(v0 + 264);
  v2 = *(v0 + 224);
  v3 = *(v0 + 120);

  v4 = Logger.logObject.getter();
  v5 = *(v0 + 224);
  if (v1 == 1)
  {
    v6 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v4, v6))
    {
      v7 = *(v0 + 224);
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v32 = v9;
      *v8 = 136446210;
      *(v0 + 32) = v7;
      type metadata accessor for Peripheral();
      sub_100D97688(&qword_1016972D0, &type metadata accessor for Peripheral);
      v10 = dispatch thunk of CustomStringConvertible.description.getter();
      v12 = sub_1000136BC(v10, v11, &v32);

      *(v8 + 4) = v12;
      _os_log_impl(&_mh_execute_header, v4, v6, "Now unpairing peripheral: %{public}s", v8, 0xCu);
      sub_100007BAC(v9);
    }

    v13 = *(&async function pointer to dispatch thunk of Peripheral.unpair() + 1);
    v31 = (&async function pointer to dispatch thunk of Peripheral.unpair() + async function pointer to dispatch thunk of Peripheral.unpair());
    v14 = swift_task_alloc();
    *(v0 + 248) = v14;
    *v14 = v0;
    v14[1] = sub_100DB93D0;
    v15 = *(v0 + 224);

    return v31();
  }

  else
  {
    v17 = static os_log_type_t.error.getter();

    v18 = os_log_type_enabled(v4, v17);
    v19 = *(v0 + 224);
    v20 = *(v0 + 168);
    if (v18)
    {
      v21 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *v21 = 136446466;
      *(v21 + 4) = sub_1000136BC(0xD00000000000001CLL, 0x8000000101370C30, &v32);
      *(v21 + 12) = 2082;
      *(v0 + 16) = v19;
      type metadata accessor for Peripheral();
      sub_100D97688(&qword_1016972D0, &type metadata accessor for Peripheral);
      v22 = dispatch thunk of CustomStringConvertible.description.getter();
      v24 = sub_1000136BC(v22, v23, &v32);

      *(v21 + 14) = v24;
      _os_log_impl(&_mh_execute_header, v4, v17, "%{public}s Peripheral is not paired. No need to unpair %{public}s", v21, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
      v25 = *(v0 + 168);
    }

    v27 = *(v0 + 104);
    v26 = *(v0 + 112);
    v28 = *(v0 + 96);
    v29 = *(v0 + 72);

    v30 = *(v0 + 8);

    return v30();
  }
}

uint64_t sub_100DB93D0()
{
  v2 = *v1;
  v3 = *(*v1 + 248);
  v4 = *v1;
  *(*v1 + 256) = v0;

  v5 = *(v2 + 48);
  if (v0)
  {
    v6 = sub_100DB98D0;
  }

  else
  {
    v6 = sub_100DB94FC;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100DB94FC()
{
  v21 = v0;
  v1 = v0[28];
  v2 = v0[15];

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[28];
    v6 = v0[21];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v20 = v8;
    *v7 = 136446210;
    v0[3] = v5;
    type metadata accessor for Peripheral();
    sub_100D97688(&qword_1016972D0, &type metadata accessor for Peripheral);
    v9 = dispatch thunk of CustomStringConvertible.description.getter();
    v11 = sub_1000136BC(v9, v10, &v20);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v3, v4, "Bluetooth device unpaired successfully! %{public}s", v7, 0xCu);
    sub_100007BAC(v8);
  }

  else
  {
    v12 = v0[28];
    v13 = v0[21];
  }

  v15 = v0[13];
  v14 = v0[14];
  v16 = v0[12];
  v17 = v0[9];

  v18 = v0[1];

  return v18();
}

uint64_t sub_100DB96FC()
{
  v1 = v0[21];

  v2 = v0[23];
  v4 = v0[13];
  v3 = v0[14];
  v5 = v0[12];
  v6 = v0[9];

  v7 = v0[1];

  return v7();
}

uint64_t sub_100DB9790()
{
  v1 = v0[24];
  v2 = v0[21];

  v3 = v0[27];
  v5 = v0[13];
  v4 = v0[14];
  v6 = v0[12];
  v7 = v0[9];

  v8 = v0[1];

  return v8();
}

uint64_t sub_100DB9830()
{
  v1 = v0[28];
  v2 = v0[21];

  v3 = v0[30];
  v5 = v0[13];
  v4 = v0[14];
  v6 = v0[12];
  v7 = v0[9];

  v8 = v0[1];

  return v8();
}

uint64_t sub_100DB98D0()
{
  v1 = v0[28];
  v2 = v0[21];

  v3 = v0[32];
  v5 = v0[13];
  v4 = v0[14];
  v6 = v0[12];
  v7 = v0[9];

  v8 = v0[1];

  return v8();
}

uint64_t sub_100DB9970(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a3;
  v4[8] = a4;
  v4[6] = a2;
  v6 = *(*(sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0) - 8) + 64) + 15;
  v4[9] = swift_task_alloc();
  v7 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
  v4[10] = v7;
  v8 = *(v7 - 8);
  v4[11] = v8;
  v9 = *(v8 + 64) + 15;
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  v10 = type metadata accessor for PencilPairingService.PeripheralDiscovery(0);
  v4[16] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  v12 = sub_1000BC4D4(&qword_10169A068, &qword_1013933F0);
  v4[19] = v12;
  v13 = *(*(v12 - 8) + 64) + 15;
  v4[20] = swift_task_alloc();

  return _swift_task_switch(sub_100DB9B18, a4, 0);
}

uint64_t sub_100DB9B18()
{
  v52 = v0;
  v1 = v0[19];
  sub_1000D2A70(v0[6], v0[20], &qword_10169A068, &qword_1013933F0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v3 = v0[20];
  if (EnumCaseMultiPayload == 1)
  {
    v4 = *v3;
    if (qword_101694EA0 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_1000076D4(v5, qword_1016BB490);
    swift_errorRetain();
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v51 = v9;
      *v8 = 136315138;
      swift_getErrorValue();
      v11 = v0[2];
      v10 = v0[3];
      v12 = v0[4];
      v13 = Error.localizedDescription.getter();
      v15 = sub_1000136BC(v13, v14, &v51);

      *(v8 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v6, v7, "Can't determine accessory state due to failure on peripheral discovery: %s", v8, 0xCu);
      sub_100007BAC(v9);
    }

    else
    {
    }

    v33 = v0[20];
    v34 = v0[17];
    v35 = v0[18];
    v37 = v0[14];
    v36 = v0[15];
    v39 = v0[12];
    v38 = v0[13];
    v40 = v0[9];

    v41 = v0[1];

    return v41();
  }

  else
  {
    v16 = v0[17];
    v17 = v0[18];
    v18 = v0[16];
    v19 = v0[11];
    sub_100DD921C(v3, v17, type metadata accessor for PencilPairingService.PeripheralDiscovery);
    sub_100DD9284(v17, v16, type metadata accessor for PencilPairingService.PeripheralDiscovery);
    v20 = swift_getEnumCaseMultiPayload();
    v21 = *(v19 + 32);
    v22 = v0[17];
    v23 = v0[10];
    if (v20 == 1)
    {
      v21(v0[13], v22, v0[10]);
      sub_1000BC4D4(&unk_1016A9A10, &qword_1013A07C0);
      v24 = type metadata accessor for UUID();
      v0[30] = v24;
      v25 = *(v24 - 8);
      v26 = v25;
      v0[31] = v25;
      v27 = *(v25 + 72);
      v28 = (*(v26 + 80) + 32) & ~*(v26 + 80);
      v29 = swift_allocObject();
      v0[32] = v29;
      *(v29 + 16) = xmmword_101385D80;
      Identifier.id.getter();
      v30 = *(&async function pointer to dispatch thunk of CentralManager.retrievePeripherals(identifiers:) + 1);
      v50 = (&async function pointer to dispatch thunk of CentralManager.retrievePeripherals(identifiers:) + async function pointer to dispatch thunk of CentralManager.retrievePeripherals(identifiers:));
      v31 = swift_task_alloc();
      v0[33] = v31;
      *v31 = v0;
      v32 = sub_100DBAA84;
    }

    else
    {
      v21(v0[15], v22, v0[10]);
      sub_1000BC4D4(&unk_1016A9A10, &qword_1013A07C0);
      v43 = type metadata accessor for UUID();
      v0[21] = v43;
      v44 = *(v43 - 8);
      v45 = v44;
      v0[22] = v44;
      v46 = *(v44 + 72);
      v47 = (*(v45 + 80) + 32) & ~*(v45 + 80);
      v29 = swift_allocObject();
      v0[23] = v29;
      *(v29 + 16) = xmmword_101385D80;
      Identifier.id.getter();
      v48 = *(&async function pointer to dispatch thunk of CentralManager.retrievePeripherals(identifiers:) + 1);
      v50 = (&async function pointer to dispatch thunk of CentralManager.retrievePeripherals(identifiers:) + async function pointer to dispatch thunk of CentralManager.retrievePeripherals(identifiers:));
      v31 = swift_task_alloc();
      v0[24] = v31;
      *v31 = v0;
      v32 = sub_100DBA028;
    }

    v31[1] = v32;
    v49 = v0[7];

    return v50(v29);
  }
}

uint64_t sub_100DBA028(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 192);
  v6 = *(*v2 + 184);
  v7 = *v2;
  *(v4 + 200) = a1;
  *(v4 + 208) = v1;

  v8 = *(v3 + 64);
  if (v1)
  {
    v9 = sub_100DBB4E0;
  }

  else
  {
    v9 = sub_100DBA178;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_100DBA178()
{
  v43 = v0;
  v1 = v0[25];
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v6 = v0[25];
    }

    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_3;
    }
  }

  else if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    if ((v1 & 0xC000000000000001) != 0)
    {
      v38 = v0[25];
      v2 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v39 = v0[25];
      goto LABEL_6;
    }

    if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v2 = *(v0[25] + 32);

LABEL_6:
      v0[27] = v2;

      v3 = swift_task_alloc();
      v0[28] = v3;
      *v3 = v0;
      v3[1] = sub_100DBA570;
      v4 = v0[8];

      return sub_100D94F40(v2);
    }

    __break(1u);
    goto LABEL_21;
  }

  v7 = v0[25];

  if (qword_101694EA0 != -1)
  {
LABEL_21:
    swift_once();
  }

  v8 = v0[14];
  v9 = v0[15];
  v10 = v0[10];
  v11 = v0[11];
  v12 = type metadata accessor for Logger();
  sub_1000076D4(v12, qword_1016BB490);
  (*(v11 + 16))(v8, v9, v10);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.error.getter();
  v15 = os_log_type_enabled(v13, v14);
  v16 = v0[18];
  v17 = v0[14];
  v18 = v0[15];
  v20 = v0[10];
  v19 = v0[11];
  if (v15)
  {
    v41 = v0[18];
    v21 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v42 = v40;
    *v21 = 141558275;
    *(v21 + 4) = 1752392040;
    *(v21 + 12) = 2081;
    sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00);
    v22 = dispatch thunk of CustomStringConvertible.description.getter();
    v24 = v23;
    v25 = *(v19 + 8);
    v25(v17, v20);
    v26 = sub_1000136BC(v22, v24, &v42);

    *(v21 + 14) = v26;
    _os_log_impl(&_mh_execute_header, v13, v14, "Unable to retrieve a Peripheral for %{private,mask.hash}s", v21, 0x16u);
    sub_100007BAC(v40);

    v25(v18, v20);
    v27 = v41;
  }

  else
  {

    v28 = *(v19 + 8);
    v28(v17, v20);
    v28(v18, v20);
    v27 = v16;
  }

  sub_100DD92EC(v27, type metadata accessor for PencilPairingService.PeripheralDiscovery);
  v29 = v0[20];
  v30 = v0[17];
  v31 = v0[18];
  v33 = v0[14];
  v32 = v0[15];
  v35 = v0[12];
  v34 = v0[13];
  v36 = v0[9];

  v37 = v0[1];

  return v37();
}

uint64_t sub_100DBA570(char a1)
{
  v2 = *(*v1 + 224);
  v3 = *(*v1 + 64);
  v5 = *v1;
  *(*v1 + 312) = a1;

  return _swift_task_switch(sub_100DBA688, v3, 0);
}

uint64_t sub_100DBA688()
{
  if (*(v0 + 312) == 1)
  {
    (*(*(v0 + 176) + 56))(*(v0 + 72), 1, 1, *(v0 + 168));
    v1 = swift_task_alloc();
    *(v0 + 232) = v1;
    *v1 = v0;
    v1[1] = sub_100DBA83C;
    v2 = *(v0 + 120);
    v4 = *(v0 + 64);
    v3 = *(v0 + 72);

    return sub_100D71518(v2, v3);
  }

  else
  {
    v6 = *(v0 + 216);
    v7 = *(v0 + 144);
    v8 = *(v0 + 120);
    v9 = *(v0 + 80);
    v10 = *(v0 + 88);

    (*(v10 + 8))(v8, v9);
    sub_100DD92EC(v7, type metadata accessor for PencilPairingService.PeripheralDiscovery);
    v11 = *(v0 + 160);
    v12 = *(v0 + 136);
    v13 = *(v0 + 144);
    v15 = *(v0 + 112);
    v14 = *(v0 + 120);
    v17 = *(v0 + 96);
    v16 = *(v0 + 104);
    v18 = *(v0 + 72);

    v19 = *(v0 + 8);

    return v19();
  }
}

uint64_t sub_100DBA83C()
{
  v1 = *(*v0 + 232);
  v2 = *(*v0 + 72);
  v3 = *(*v0 + 64);
  v5 = *v0;

  sub_10000B3A8(v2, &qword_1016980D0, &unk_10138F3B0);

  return _swift_task_switch(sub_100DBA978, v3, 0);
}

uint64_t sub_100DBA978()
{
  v1 = v0[27];
  v2 = v0[18];
  v3 = v0[15];
  v4 = v0[10];
  v5 = v0[11];

  (*(v5 + 8))(v3, v4);
  sub_100DD92EC(v2, type metadata accessor for PencilPairingService.PeripheralDiscovery);
  v6 = v0[20];
  v7 = v0[17];
  v8 = v0[18];
  v10 = v0[14];
  v9 = v0[15];
  v12 = v0[12];
  v11 = v0[13];
  v13 = v0[9];

  v14 = v0[1];

  return v14();
}

uint64_t sub_100DBAA84(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 264);
  v6 = *(*v2 + 256);
  v7 = *v2;
  *(v4 + 272) = a1;
  *(v4 + 280) = v1;

  v8 = *(v3 + 64);
  if (v1)
  {
    v9 = sub_100DBB5E4;
  }

  else
  {
    v9 = sub_100DBABD4;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_100DBABD4()
{
  v43 = v0;
  v1 = v0[34];
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v6 = v0[34];
    }

    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_3;
    }
  }

  else if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    if ((v1 & 0xC000000000000001) != 0)
    {
      v38 = v0[34];
      v2 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v39 = v0[34];
      goto LABEL_6;
    }

    if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v2 = *(v0[34] + 32);

LABEL_6:
      v0[36] = v2;

      v3 = swift_task_alloc();
      v0[37] = v3;
      *v3 = v0;
      v3[1] = sub_100DBAFCC;
      v4 = v0[8];

      return sub_100D94F40(v2);
    }

    __break(1u);
    goto LABEL_21;
  }

  v7 = v0[34];

  if (qword_101694EA0 != -1)
  {
LABEL_21:
    swift_once();
  }

  v8 = v0[12];
  v9 = v0[13];
  v10 = v0[10];
  v11 = v0[11];
  v12 = type metadata accessor for Logger();
  sub_1000076D4(v12, qword_1016BB490);
  (*(v11 + 16))(v8, v9, v10);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.error.getter();
  v15 = os_log_type_enabled(v13, v14);
  v16 = v0[18];
  v17 = v0[12];
  v18 = v0[13];
  v20 = v0[10];
  v19 = v0[11];
  if (v15)
  {
    v41 = v0[18];
    v21 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v42 = v40;
    *v21 = 141558275;
    *(v21 + 4) = 1752392040;
    *(v21 + 12) = 2081;
    sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00);
    v22 = dispatch thunk of CustomStringConvertible.description.getter();
    v24 = v23;
    v25 = *(v19 + 8);
    v25(v17, v20);
    v26 = sub_1000136BC(v22, v24, &v42);

    *(v21 + 14) = v26;
    _os_log_impl(&_mh_execute_header, v13, v14, "Unable to retrieve a Peripheral for %{private,mask.hash}s", v21, 0x16u);
    sub_100007BAC(v40);

    v25(v18, v20);
    v27 = v41;
  }

  else
  {

    v28 = *(v19 + 8);
    v28(v17, v20);
    v28(v18, v20);
    v27 = v16;
  }

  sub_100DD92EC(v27, type metadata accessor for PencilPairingService.PeripheralDiscovery);
  v29 = v0[20];
  v30 = v0[17];
  v31 = v0[18];
  v33 = v0[14];
  v32 = v0[15];
  v35 = v0[12];
  v34 = v0[13];
  v36 = v0[9];

  v37 = v0[1];

  return v37();
}

uint64_t sub_100DBAFCC(char a1)
{
  v2 = *(*v1 + 296);
  v3 = *(*v1 + 64);
  v5 = *v1;
  *(*v1 + 313) = a1;

  return _swift_task_switch(sub_100DBB0E4, v3, 0);
}

uint64_t sub_100DBB0E4()
{
  if (*(v0 + 313) == 1)
  {
    (*(*(v0 + 248) + 56))(*(v0 + 72), 1, 1, *(v0 + 240));
    v1 = swift_task_alloc();
    *(v0 + 304) = v1;
    *v1 = v0;
    v1[1] = sub_100DBB298;
    v2 = *(v0 + 104);
    v4 = *(v0 + 64);
    v3 = *(v0 + 72);

    return sub_100D71C7C(v2, v3);
  }

  else
  {
    v6 = *(v0 + 288);
    v7 = *(v0 + 144);
    v8 = *(v0 + 104);
    v9 = *(v0 + 80);
    v10 = *(v0 + 88);

    (*(v10 + 8))(v8, v9);
    sub_100DD92EC(v7, type metadata accessor for PencilPairingService.PeripheralDiscovery);
    v11 = *(v0 + 160);
    v12 = *(v0 + 136);
    v13 = *(v0 + 144);
    v15 = *(v0 + 112);
    v14 = *(v0 + 120);
    v17 = *(v0 + 96);
    v16 = *(v0 + 104);
    v18 = *(v0 + 72);

    v19 = *(v0 + 8);

    return v19();
  }
}

uint64_t sub_100DBB298()
{
  v1 = *(*v0 + 304);
  v2 = *(*v0 + 72);
  v3 = *(*v0 + 64);
  v5 = *v0;

  sub_10000B3A8(v2, &qword_1016980D0, &unk_10138F3B0);

  return _swift_task_switch(sub_100DBB3D4, v3, 0);
}

uint64_t sub_100DBB3D4()
{
  v1 = v0[36];
  v2 = v0[18];
  v3 = v0[13];
  v4 = v0[10];
  v5 = v0[11];

  (*(v5 + 8))(v3, v4);
  sub_100DD92EC(v2, type metadata accessor for PencilPairingService.PeripheralDiscovery);
  v6 = v0[20];
  v7 = v0[17];
  v8 = v0[18];
  v10 = v0[14];
  v9 = v0[15];
  v12 = v0[12];
  v11 = v0[13];
  v13 = v0[9];

  v14 = v0[1];

  return v14();
}

uint64_t sub_100DBB4E0()
{
  v1 = v0[26];
  v2 = v0[14];
  v3 = v0[20];
  v5 = v0[17];
  v4 = v0[18];
  v7 = v0[12];
  v6 = v0[13];
  v8 = v0[9];
  (*(v0[11] + 8))(v0[15], v0[10]);
  sub_100DD92EC(v4, type metadata accessor for PencilPairingService.PeripheralDiscovery);

  v9 = v0[1];

  return v9();
}

uint64_t sub_100DBB5E4()
{
  v1 = v0[35];
  v2 = v0[20];
  v4 = v0[17];
  v3 = v0[18];
  v6 = v0[14];
  v5 = v0[15];
  v7 = v0[12];
  v8 = v0[9];
  (*(v0[11] + 8))(v0[13], v0[10]);
  sub_100DD92EC(v3, type metadata accessor for PencilPairingService.PeripheralDiscovery);

  v9 = v0[1];

  return v9();
}

uint64_t sub_100DBB6E8(uint64_t a1)
{
  v2[22] = a1;
  v2[23] = v1;
  v3 = sub_1000BC4D4(&qword_101697240, &unk_10138BDA0);
  v2[24] = v3;
  v4 = *(v3 - 8);
  v2[25] = v4;
  v5 = *(v4 + 64) + 15;
  v2[26] = swift_task_alloc();
  v6 = sub_1000BC4D4(&qword_101697248, &qword_1013DC4D0);
  v2[27] = v6;
  v7 = *(v6 - 8);
  v2[28] = v7;
  v8 = *(v7 + 64) + 15;
  v2[29] = swift_task_alloc();
  v9 = type metadata accessor for BinaryDecoder();
  v2[30] = v9;
  v10 = *(v9 - 8);
  v2[31] = v10;
  v11 = *(v10 + 64) + 15;
  v2[32] = swift_task_alloc();
  v12 = type metadata accessor for BinaryEncoder();
  v2[33] = v12;
  v13 = *(v12 - 8);
  v2[34] = v13;
  v14 = *(v13 + 64) + 15;
  v2[35] = swift_task_alloc();
  v15 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
  v2[36] = v15;
  v16 = *(v15 - 8);
  v2[37] = v16;
  v17 = *(v16 + 64) + 15;
  v2[38] = swift_task_alloc();

  return _swift_task_switch(sub_100DBB93C, v1, 0);
}

uint64_t sub_100DBB93C()
{
  v21 = v0;
  if (qword_101694EA0 != -1)
  {
    swift_once();
  }

  v1 = v0[22];
  v2 = type metadata accessor for Logger();
  v0[39] = sub_1000076D4(v2, qword_1016BB490);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[37];
    v5 = v0[38];
    v7 = v0[36];
    v8 = v0[22];
    v9 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v9 = 136446466;
    *(v9 + 4) = sub_1000136BC(0xD000000000000027, 0x8000000101370F00, &v20);
    *(v9 + 12) = 2082;
    type metadata accessor for Peripheral();
    sub_100D97688(&qword_1016972A0, &type metadata accessor for Peripheral);
    dispatch thunk of PeripheralProtocol.id.getter();
    sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00);
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    v12 = v11;

    (*(v6 + 8))(v5, v7);
    v13 = sub_1000136BC(v10, v12, &v20);

    *(v9 + 14) = v13;
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s for peripheral: %{public}s", v9, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v14 = v0[22];
  }

  v15 = v0[22];
  v16 = async function pointer to withTimeout<A>(_:block:)[1];

  v17 = swift_task_alloc();
  v0[40] = v17;
  *v17 = v0;
  v17[1] = sub_100DBBC60;
  v18 = v0[22];

  return withTimeout<A>(_:block:)(v17, 0xA055690D9DB80000, 1, &unk_1013E89D8, v18, &type metadata for () + 8);
}

uint64_t sub_100DBBC60()
{
  v2 = *v1;
  v3 = *(*v1 + 320);
  v4 = *v1;
  v2[41] = v0;

  v5 = v2[23];
  if (v0)
  {
    v6 = sub_100DBC05C;
  }

  else
  {
    v7 = v2[22];

    v6 = sub_100DBBD98;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100DBBD98()
{
  v23 = v0;
  v1 = v0[39];
  v2 = v0[22];

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[22];
    v6 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v6 = 136315394;
    *(v6 + 4) = sub_1000136BC(0xD000000000000027, 0x8000000101370F00, &v22);
    *(v6 + 12) = 2082;
    v0[21] = v5;
    type metadata accessor for Peripheral();
    sub_100D97688(&qword_1016972D0, &type metadata accessor for Peripheral);
    v7 = dispatch thunk of CustomStringConvertible.description.getter();
    v9 = v8;

    v10 = sub_1000136BC(v7, v9, &v22);

    *(v6 + 14) = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "%s Connected to peripheral: %{public}s", v6, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v11 = v0[22];
  }

  v12 = v0[35];
  v13 = v0[32];
  v14 = v0[29];
  BinaryEncoder.init()();
  BinaryDecoder.init()();
  v0[42] = type metadata accessor for Service();
  Identifier.init(stringLiteral:)();
  v15 = type metadata accessor for Peripheral();
  v16 = sub_100D97688(&qword_1016972A0, &type metadata accessor for Peripheral);
  v17 = async function pointer to dispatch thunk of PeripheralProtocol.subscript.getter[1];
  v18 = swift_task_alloc();
  v0[43] = v18;
  *v18 = v0;
  v18[1] = sub_100DBC108;
  v19 = v0[29];
  v20 = v0[22];

  return dispatch thunk of PeripheralProtocol.subscript.getter(v19, v15, v16);
}

uint64_t sub_100DBC05C()
{
  v1 = v0[22];

  v2 = v0[41];
  v3 = v0[38];
  v4 = v0[35];
  v5 = v0[32];
  v6 = v0[29];
  v7 = v0[26];

  v8 = v0[1];

  return v8();
}

uint64_t sub_100DBC108(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 344);
  v6 = *v2;
  v4[44] = a1;
  v4[45] = v1;

  v7 = v3[29];
  v8 = v3[28];
  v9 = v3[27];
  v10 = v3[23];
  (*(v8 + 8))(v7, v9);
  if (v1)
  {
    v11 = sub_100DBC534;
  }

  else
  {
    v11 = sub_100DBC28C;
  }

  return _swift_task_switch(v11, v10, 0);
}

uint64_t sub_100DBC28C()
{
  v1 = v0[26];
  v0[46] = type metadata accessor for Characteristic();
  Identifier.init(stringLiteral:)();
  v2 = sub_100D97688(&qword_1016972A8, &type metadata accessor for Service);
  v3 = async function pointer to dispatch thunk of ServiceProtocol.subscript.getter[1];
  v4 = swift_task_alloc();
  v0[47] = v4;
  *v4 = v0;
  v4[1] = sub_100DBC394;
  v5 = v0[44];
  v6 = v0[42];
  v7 = v0[26];

  return dispatch thunk of ServiceProtocol.subscript.getter(v7, v6, v2);
}

uint64_t sub_100DBC394(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 376);
  v6 = *v2;
  v4[48] = a1;
  v4[49] = v1;

  v7 = v3[44];
  v8 = v3[26];
  v9 = v3[25];
  v10 = v3[24];
  v11 = v3[23];
  (*(v9 + 8))(v8, v10);

  if (v1)
  {
    v12 = sub_100DBCB00;
  }

  else
  {
    v12 = sub_100DBC60C;
  }

  return _swift_task_switch(v12, v11, 0);
}

uint64_t sub_100DBC534()
{
  v2 = v0[34];
  v1 = v0[35];
  v3 = v0[33];
  (*(v0[31] + 8))(v0[32], v0[30]);
  (*(v2 + 8))(v1, v3);
  v4 = v0[45];
  v5 = v0[38];
  v6 = v0[35];
  v7 = v0[32];
  v8 = v0[29];
  v9 = v0[26];

  v10 = v0[1];

  return v10();
}

uint64_t sub_100DBC60C()
{
  v55 = v0;
  v1 = *(v0 + 312);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Discovered FindMy services and Paired Owner characteristic.", v4, 2u);
  }

  v5 = sub_100F54748();
  *(v0 + 400) = v5;
  *(v0 + 408) = v6;
  if (v6 >> 60 == 15)
  {
    v7 = *(v0 + 312);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "Unable to generate FindMyNetworkId!", v10, 2u);
    }

    v11 = *(v0 + 384);
    v13 = *(v0 + 272);
    v12 = *(v0 + 280);
    v15 = *(v0 + 256);
    v14 = *(v0 + 264);
    v16 = *(v0 + 240);
    v17 = *(v0 + 248);

    sub_100500BC4();
    swift_allocError();
    *v18 = xmmword_1013E8500;
    *(v18 + 16) = 3;
    swift_willThrow();

    (*(v17 + 8))(v15, v16);
    (*(v13 + 8))(v12, v14);
    goto LABEL_22;
  }

  v19 = v5;
  v20 = v6;
  v21 = v6 >> 62;
  if ((v6 >> 62) > 1)
  {
    if (v21 != 2)
    {
LABEL_29:
      __break(1u);
      return dispatch thunk of CharacteristicProtocol.mtu.getter(v5, v6);
    }

    v24 = *(v5 + 16);
    v23 = *(v5 + 24);
    v22 = v23 - v24;
    if (!__OFSUB__(v23, v24))
    {
      goto LABEL_16;
    }

    __break(1u);
  }

  else if (!v21)
  {
    v22 = BYTE6(v6);
    goto LABEL_17;
  }

  if (__OFSUB__(HIDWORD(v5), v5))
  {
    __break(1u);
    goto LABEL_29;
  }

  v22 = HIDWORD(v5) - v5;
LABEL_16:
  v5 = sub_100017D5C(v5, v6);
LABEL_17:
  if (v22 != 32)
  {
    goto LABEL_29;
  }

  v25 = *(v0 + 312);
  sub_100017D5C(v19, v20);
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();
  sub_100006654(v19, v20);
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v54 = v29;
    *v28 = 136315138;
    *(v0 + 96) = v19;
    *(v0 + 104) = v20;
    *(v0 + 112) = 0;
    *(v0 + 120) = 0;
    *(v0 + 128) = 1;
    sub_100017D5C(v19, v20);
    v30 = String.init<A>(describing:)();
    v32 = sub_1000136BC(v30, v31, &v54);

    *(v28 + 4) = v32;
    _os_log_impl(&_mh_execute_header, v26, v27, "Sending .verifyFindMyNetworkId command: %s", v28, 0xCu);
    sub_100007BAC(v29);
  }

  v33 = *(v0 + 392);
  v34 = *(v0 + 280);
  *(v0 + 16) = v19;
  *(v0 + 24) = v20;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  *(v0 + 48) = 1;
  sub_100DDA200();
  *(v0 + 416) = BinaryEncoder.encode<A>(_:)();
  *(v0 + 424) = v35;
  if (!v33)
  {
    v49 = sub_100D97688(&qword_1016972C0, &type metadata accessor for Characteristic);
    v50 = async function pointer to dispatch thunk of CharacteristicProtocol.mtu.getter[1];
    v51 = swift_task_alloc();
    *(v0 + 432) = v51;
    *v51 = v0;
    v51[1] = sub_100DBCBD8;
    v52 = *(v0 + 384);
    v5 = *(v0 + 368);
    v6 = v49;

    return dispatch thunk of CharacteristicProtocol.mtu.getter(v5, v6);
  }

  v36 = *(v0 + 384);
  v37 = *(v0 + 272);
  v53 = *(v0 + 280);
  v39 = *(v0 + 256);
  v38 = *(v0 + 264);
  v41 = *(v0 + 240);
  v40 = *(v0 + 248);
  sub_100006654(v19, v20);

  (*(v40 + 8))(v39, v41);
  (*(v37 + 8))(v53, v38);
  sub_100006654(v19, v20);
LABEL_22:
  v42 = *(v0 + 304);
  v43 = *(v0 + 280);
  v44 = *(v0 + 256);
  v45 = *(v0 + 232);
  v46 = *(v0 + 208);

  v47 = *(v0 + 8);

  return v47();
}

uint64_t sub_100DBCB00()
{
  v2 = v0[34];
  v1 = v0[35];
  v3 = v0[33];
  (*(v0[31] + 8))(v0[32], v0[30]);
  (*(v2 + 8))(v1, v3);
  v4 = v0[49];
  v5 = v0[38];
  v6 = v0[35];
  v7 = v0[32];
  v8 = v0[29];
  v9 = v0[26];

  v10 = v0[1];

  return v10();
}

uint64_t sub_100DBCBD8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 432);
  v6 = *v2;
  v4[55] = v1;

  v7 = v4[23];
  if (v1)
  {
    v8 = sub_100DBCF6C;
  }

  else
  {
    v4[56] = a1;
    v8 = sub_100DBCD14;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_100DBCD14()
{
  v1 = v0[56];
  v2 = v0[52];
  v3 = v0[53];
  v4 = v0[48];
  v5 = fragment(data:mtu:)();
  v6 = swift_allocObject();
  v0[57] = v6;
  *(v6 + 16) = v4;
  *(v6 + 24) = v5;
  v7 = async function pointer to withTimeout<A>(_:block:)[1];

  v8 = swift_task_alloc();
  v0[58] = v8;
  *v8 = v0;
  v8[1] = sub_100DBCE24;

  return withTimeout<A>(_:block:)(v0 + 17, 0x40AAD21B3B700000, 3, &unk_1013E89E8, v6, &type metadata for Data);
}

uint64_t sub_100DBCE24()
{
  v2 = *v1;
  v3 = *(*v1 + 464);
  v4 = *v1;
  *(*v1 + 472) = v0;

  v5 = *(v2 + 456);
  v6 = *(v2 + 184);

  if (v0)
  {
    v7 = sub_100DBD554;
  }

  else
  {
    v7 = sub_100DBD08C;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_100DBCF6C()
{
  v1 = v0[50];
  v2 = v0[51];
  v3 = v0[48];
  v5 = v0[34];
  v4 = v0[35];
  v7 = v0[32];
  v6 = v0[33];
  v8 = v0[30];
  v9 = v0[31];
  sub_100016590(v0[52], v0[53]);
  sub_100006654(v1, v2);

  sub_100006654(v1, v2);
  (*(v9 + 8))(v7, v8);
  (*(v5 + 8))(v4, v6);
  v10 = v0[55];
  v11 = v0[38];
  v12 = v0[35];
  v13 = v0[32];
  v14 = v0[29];
  v15 = v0[26];

  v16 = v0[1];

  return v16();
}

uint64_t sub_100DBD08C()
{
  v62 = v0;
  v2 = *(v0 + 400);
  v1 = *(v0 + 408);
  v3 = *(v0 + 312);
  v5 = *(v0 + 136);
  v4 = *(v0 + 144);
  sub_100017D5C(v2, v1);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();
  sub_100006654(v2, v1);
  if (os_log_type_enabled(v6, v7))
  {
    v9 = *(v0 + 400);
    v8 = *(v0 + 408);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v61[0] = v11;
    *(v0 + 56) = v9;
    *v10 = 136315138;
    *(v0 + 72) = 0;
    *(v0 + 80) = 0;
    *(v0 + 64) = v8;
    *(v0 + 88) = 1;
    sub_100017D5C(v9, v8);
    v12 = String.init<A>(describing:)();
    v14 = sub_1000136BC(v12, v13, v61);

    *(v10 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v6, v7, "Sent command: %s.", v10, 0xCu);
    sub_100007BAC(v11);
  }

  v15 = *(v0 + 312);
  sub_100017D5C(v5, v4);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (!os_log_type_enabled(v16, v17))
  {
    sub_100016590(v5, v4);
    goto LABEL_16;
  }

  v18 = swift_slowAlloc();
  result = swift_slowAlloc();
  v20 = result;
  v61[0] = result;
  *v18 = 134218242;
  v21 = v4 >> 62;
  if ((v4 >> 62) > 1)
  {
    if (v21 != 2)
    {
      v22 = 0;
      goto LABEL_15;
    }

    v24 = *(v5 + 16);
    v23 = *(v5 + 24);
    v25 = __OFSUB__(v23, v24);
    v22 = v23 - v24;
    if (!v25)
    {
      goto LABEL_15;
    }

    __break(1u);
LABEL_12:
    LODWORD(v22) = HIDWORD(v5) - v5;
    if (__OFSUB__(HIDWORD(v5), v5))
    {
      __break(1u);
      return result;
    }

    v22 = v22;
    goto LABEL_15;
  }

  if (v21)
  {
    goto LABEL_12;
  }

  v22 = BYTE6(v4);
LABEL_15:
  *(v18 + 4) = v22;
  sub_100016590(v5, v4);
  *(v18 + 12) = 2080;
  v26 = Data.hexString.getter();
  v28 = sub_1000136BC(v26, v27, v61);

  *(v18 + 14) = v28;
  _os_log_impl(&_mh_execute_header, v16, v17, "Length: %ld received response: %s", v18, 0x16u);
  sub_100007BAC(v20);

LABEL_16:

  v29 = *(v0 + 472);
  v30 = *(v0 + 256);
  sub_100DDA300();
  BinaryDecoder.decode<A>(_:from:)();
  v31 = *(v0 + 416);
  v32 = *(v0 + 424);
  v34 = *(v0 + 400);
  v33 = *(v0 + 408);
  v35 = *(v0 + 384);
  if (v29)
  {
    v36 = v5;
    v37 = *(v0 + 272);
    v57 = *(v0 + 264);
    v59 = *(v0 + 280);
    v38 = *(v0 + 248);
    v55 = *(v0 + 256);
    v39 = *(v0 + 240);
    sub_100016590(v31, v32);
    sub_100006654(v34, v33);
    sub_100016590(v36, v4);

    sub_100006654(v34, v33);
    (*(v38 + 8))(v55, v39);
    (*(v37 + 8))(v59, v57);
    v40 = *(v0 + 304);
    v41 = *(v0 + 280);
    v42 = *(v0 + 256);
    v43 = *(v0 + 232);
    v44 = *(v0 + 208);

    v45 = *(v0 + 8);

    return v45();
  }

  else
  {
    v46 = *(v0 + 272);
    v47 = *(v0 + 280);
    v48 = *(v0 + 256);
    v54 = *(v0 + 264);
    v56 = *(v0 + 304);
    v49 = *(v0 + 248);
    v53 = *(v0 + 240);
    v58 = *(v0 + 232);
    v60 = *(v0 + 208);
    sub_100016590(v31, v32);
    sub_100006654(v34, v33);
    sub_100016590(v5, v4);

    sub_100006654(v34, v33);
    (*(v49 + 8))(v48, v53);
    (*(v46 + 8))(v47, v54);
    v51 = *(v0 + 152);
    v50 = *(v0 + 160);

    v52 = *(v0 + 8);

    return v52(v51, v50);
  }
}

uint64_t sub_100DBD554()
{
  v1 = v0[50];
  v2 = v0[51];
  v3 = v0[48];
  v5 = v0[34];
  v4 = v0[35];
  v7 = v0[32];
  v6 = v0[33];
  v8 = v0[30];
  v9 = v0[31];
  sub_100016590(v0[52], v0[53]);
  sub_100006654(v1, v2);

  sub_100006654(v1, v2);
  (*(v9 + 8))(v7, v8);
  (*(v5 + 8))(v4, v6);
  v10 = v0[59];
  v11 = v0[38];
  v12 = v0[35];
  v13 = v0[32];
  v14 = v0[29];
  v15 = v0[26];

  v16 = v0[1];

  return v16();
}