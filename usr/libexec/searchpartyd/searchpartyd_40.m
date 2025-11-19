uint64_t sub_100427B68()
{
  v69 = v0;
  v1 = *(v0 + 1208);
  v2 = *(v0 + 1184);
  v3 = *(v0 + 1000);
  *(v0 + 304) = *(v0 + 984);
  *(v0 + 320) = v3;
  v4 = *(v0 + 1192);
  *(v0 + 336) = *(v0 + 624);
  *(v0 + 352) = v4;
  *(v0 + 368) = v1;
  sub_100429C80(v0 + 304);
  p_weak_ivar_lyt = &BeaconKeyManager.weak_ivar_lyt;
  if (!*(v2 + 16))
  {
    v6 = *(v0 + 1254);
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_101385D80;
    *(v7 + 56) = &type metadata for UInt8;
    *(v7 + 64) = &protocol witness table for UInt8;
    *(v7 + 32) = v6;
    v8 = String.init(format:_:)();
    v10 = v9;
    if (qword_101694B98 != -1)
    {
      swift_once();
    }

    v11 = *(v0 + 912);
    v12 = *(v0 + 808);
    v13 = type metadata accessor for Logger();
    sub_1000076D4(v13, qword_10177B810);
    sub_100429A68(v12, v11);

    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();

    v16 = os_log_type_enabled(v14, v15);
    v17 = *(v0 + 912);
    if (v16)
    {
      v62 = *(v0 + 896);
      v18 = v8;
      v19 = *(v0 + 824);
      v20 = *(v0 + 1253);
      v64 = v2;
      v21 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      *v21 = 136316163;
      if (v20)
      {
        v22 = 0x61646E6F6365732ELL;
      }

      else
      {
        v22 = 0x7972616D6972702ELL;
      }

      if (v20)
      {
        v23 = 0xEA00000000007972;
      }

      else
      {
        v23 = 0xE800000000000000;
      }

      v24 = sub_1000136BC(v22, v23, &v66);

      *(v21 + 4) = v24;
      *(v21 + 12) = 2048;
      *(v21 + 14) = v19;
      *(v21 + 22) = 2080;
      v25 = sub_1000136BC(v18, v10, &v66);

      *(v21 + 24) = v25;
      *(v21 + 32) = 2160;
      *(v21 + 34) = 1752392040;
      *(v21 + 42) = 2081;
      type metadata accessor for UUID();
      sub_100429D28(&qword_101696930, &type metadata accessor for UUID);
      v67 = dispatch thunk of CustomStringConvertible.description.getter();
      v68 = v26;
      v27._countAndFlagsBits = 47;
      v27._object = 0xE100000000000000;
      String.append(_:)(v27);
      v28 = v17 + *(v62 + 20);
      v29._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v29);

      v31 = v67;
      v30 = v68;
      sub_100429ACC(v17);
      v32 = sub_1000136BC(v31, v30, &v66);

      *(v21 + 44) = v32;
      _os_log_impl(&_mh_execute_header, v14, v15, "No match for sequence %s index %llu hint %s %{private,mask.hash}s", v21, 0x34u);
      swift_arrayDestroy();
      p_weak_ivar_lyt = (&BeaconKeyManager + 56);

      v2 = v64;
    }

    else
    {

      sub_100429ACC(v17);
    }
  }

  if (p_weak_ivar_lyt[371] != -1)
  {
    swift_once();
  }

  v33 = *(v0 + 904);
  v34 = *(v0 + 808);
  v35 = type metadata accessor for Logger();
  sub_1000076D4(v35, qword_10177B810);
  sub_100429A68(v34, v33);
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.debug.getter();
  v38 = os_log_type_enabled(v36, v37);
  v39 = *(v0 + 968);
  v40 = *(v0 + 960);
  v41 = *(v0 + 952);
  v42 = *(v0 + 904);
  if (v38)
  {
    v60 = *(v0 + 896);
    v65 = *(v0 + 816);
    v43 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    *v43 = 136315394;

    v61 = v41;
    v63 = v39;
    v44 = Array.description.getter();
    v46 = v45;

    v47 = sub_1000136BC(v44, v46, &v66);

    *(v43 + 4) = v47;
    *(v43 + 12) = 2080;
    type metadata accessor for UUID();
    sub_100429D28(&qword_101696930, &type metadata accessor for UUID);
    v67 = dispatch thunk of CustomStringConvertible.description.getter();
    v68 = v48;
    v49._countAndFlagsBits = 47;
    v49._object = 0xE100000000000000;
    String.append(_:)(v49);
    v50 = v42 + *(v60 + 20);
    v51._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v51);

    v52 = v67;
    v53 = v68;
    sub_100429ACC(v42);
    v54 = sub_1000136BC(v52, v53, &v66);

    *(v43 + 14) = v54;
    _os_log_impl(&_mh_execute_header, v36, v37, "primaryKeys: %s for beacon %s", v43, 0x16u);
    swift_arrayDestroy();

    sub_100429C08(v61, v40, v63);
    sub_100429C80(v0 + 16);

    sub_10000B3A8(v65, &qword_10169FCA8, &qword_1013A2B88);
  }

  else
  {
    sub_10000B3A8(*(v0 + 816), &qword_10169FCA8, &qword_1013A2B88);
    sub_100429C08(v41, v40, v39);
    sub_100429C80(v0 + 16);

    sub_100429ACC(v42);
  }

  v55 = *(v0 + 936);
  v56 = *(v0 + 912);
  v57 = *(v0 + 904);

  v58 = *(v0 + 8);

  return v58(v2);
}

uint64_t sub_100428218()
{
  if (static Task<>.isCancelled.getter())
  {
    v1 = *(v0 + 1240);
    v2 = *(v0 + 1128);
    *(v0 + 1200) = *(v0 + 1080);
    *(v0 + 1192) = v2;
    *(v0 + 1184) = v1;
    v3 = sub_100427B68;
  }

  else
  {
    v4 = *(v0 + 1232);
    v5 = *(v0 + 1216);
    v6 = *(v0 + 1128);
    v7 = *(v0 + 1088);
    v8 = *(v0 + 1080);
    *(v0 + 1040) = *(v0 + 1240);
    *(v0 + 1072) = v6;
    *(v0 + 1064) = v8;
    *(v0 + 1056) = v7;
    *(v0 + 1048) = v5;
    v9 = *(v0 + 1000);
    *(v0 + 160) = *(v0 + 984);
    *(v0 + 176) = v9;
    *(v0 + 192) = *(v0 + 624);
    *(v0 + 208) = v6;
    *(v0 + 216) = v8;
    *(v0 + 224) = v7;
    sub_100429C24(v0 + 160, v0 + 232);
    sub_100017D5C(v8, v7);
    sub_100017D5C(v8, v7);
    if (qword_101694FA8 != -1)
    {
      swift_once();
    }

    *(v0 + 640) = 0x7365547265646E75;
    *(v0 + 648) = 0xE900000000000074;
    SynchronousCache.cachedValue<A>(key:computeBlock:)();
    v10 = sub_100A7563C(v8, v7, 1);
    *(v0 + 1080) = v10;
    *(v0 + 1088) = v11;
    if (v4)
    {
      sub_100016590(v8, v7);
      sub_100016590(v8, v7);
      sub_100429C80(v0 + 160);
      *(v0 + 1176) = v7;
      *(v0 + 1168) = v8;
      *(v0 + 1160) = v6;
      static os_log_type_t.error.getter();
      if (qword_101694BE0 != -1)
      {
        swift_once();
      }

      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_101385D80;
      v26 = _convertErrorToNSError(_:)();
      *(v25 + 56) = sub_1003289A8();
      *(v25 + 64) = sub_100429D28(&qword_1016BC310, sub_1003289A8);
      *(v25 + 32) = v26;
      os_log(_:dso:log:_:_:)();

      v3 = sub_1004274B8;
    }

    else
    {
      v12 = v10;
      v13 = v11;
      v14 = String.utf8Data.getter();
      v16 = v15;
      v17 = sub_100A79CBC(v12, v13, v14, v15, 72);
      sub_100495DF4(v17, v18, (v0 + 656));
      v62 = *(v0 + 992);
      sub_100016590(v14, v16);
      v67 = *(v0 + 664);
      v66 = *(v0 + 656);
      if (v62 >> 60 == 15)
      {
        v19 = *(v0 + 1008);
        v20 = *(v0 + 1000);
        sub_100017D5C(*(v0 + 656), v67);
        v21 = sub_100A7A194(v20, v19);
        v64 = sub_100A7A73C(v21, 0, v66, v67);
        CCECCryptorRelease();
        sub_100016590(v66, v67);
        v29 = sub_100A7829C(v64, 0);
        v31 = v30;
        sub_100017D5C(v29, v30);
        v32 = sub_10049C0AC(v29, v31);
        v56 = v35;
        v57 = v32;
        CCECCryptorRelease();
        v36 = sub_100016590(v29, v31);
        v39 = *(v0 + 992);
        v40 = *(v0 + 984);
      }

      else
      {
        v63 = *(v0 + 992);
        v22 = *(v0 + 984);
        v23 = *(v0 + 656);
        sub_10002E98C(v22, v63);
        sub_100017D5C(v23, v67);
        v24 = sub_100A7A194(v22, v63);
        v27 = sub_100A7A73C(v24, 1, v66, v67);
        CCECCryptorRelease();
        sub_100016590(v66, v67);
        v28 = sub_100A7829C(v27, 1);
        v34 = v33;
        v65 = v28;
        v54 = sub_100A7829C(v27, 0);
        v55 = v46;
        sub_100017D5C(v65, v34);
        v59 = sub_10049BD68(v65, v34);
        v61 = v47;
        sub_100017D5C(v54, v55);
        v48 = sub_10049C0AC(v54, v55);
        v56 = v49;
        v57 = v48;
        v50 = *(v0 + 984);
        v52 = v50;
        v53 = *(v0 + 992);
        CCECCryptorRelease();
        sub_100016590(v54, v55);
        sub_100016590(v65, v34);
        v36 = sub_100006654(v52, v53);
        v40 = v59;
        v39 = v61;
      }

      v58 = v40;
      v60 = v39;
      *(v0 + 1104) = v39;
      *(v0 + 1096) = v40;
      *(v0 + 1112) = v56;
      *(v0 + 1120) = v57;
      *(v0 + 1128) = v6 + 1;
      if (v6 == -1)
      {
        __break(1u);
        return _swift_task_switch(v36, v37, v38);
      }

      sub_100017D5C(v12, v13);
      sub_100016590(v8, v7);
      v41 = String.utf8Data.getter();
      v43 = v42;
      v44 = sub_100A79CBC(v12, v13, v41, v42, 32);
      sub_1004A4714(v44, v45, (v0 + 672));
      *(v0 + 1136) = 0;
      sub_100016590(v41, v43);
      *(v0 + 1144) = *(v0 + 672);
      sub_100017D5C(v57, v56);
      sub_10002E98C(v58, v60);
      sub_100006654(v58, v60);
      sub_100016590(v57, v56);
      sub_100016590(v12, v13);
      sub_100016590(v66, v67);
      sub_100429C80(v0 + 160);
      sub_100016590(v8, v7);
      v3 = sub_100426428;
    }
  }

  v36 = v3;
  v37 = 0;
  v38 = 0;

  return _swift_task_switch(v36, v37, v38);
}

uint64_t sub_100428A3C()
{
  if (static Task<>.isCancelled.getter())
  {
    v1 = *(v0 + 1128);
    v2 = *(v0 + 1040);
    *(v0 + 1200) = *(v0 + 1080);
    *(v0 + 1192) = v1;
    *(v0 + 1184) = v2;
    v3 = sub_100427B68;
  }

  else
  {
    v4 = *(v0 + 1224);
    v5 = *(v0 + 1216);
    v6 = *(v0 + 1128);
    v7 = *(v0 + 1088);
    v8 = *(v0 + 1080);
    *(v0 + 1072) = v6;
    *(v0 + 1064) = v8;
    *(v0 + 1056) = v7;
    *(v0 + 1048) = v5;
    v9 = *(v0 + 1000);
    *(v0 + 160) = *(v0 + 984);
    *(v0 + 176) = v9;
    *(v0 + 192) = *(v0 + 624);
    *(v0 + 208) = v6;
    *(v0 + 216) = v8;
    *(v0 + 224) = v7;
    sub_100429C24(v0 + 160, v0 + 232);
    sub_100017D5C(v8, v7);
    sub_100017D5C(v8, v7);
    if (qword_101694FA8 != -1)
    {
      swift_once();
    }

    *(v0 + 640) = 0x7365547265646E75;
    *(v0 + 648) = 0xE900000000000074;
    SynchronousCache.cachedValue<A>(key:computeBlock:)();
    v10 = sub_100A7563C(v8, v7, 1);
    *(v0 + 1080) = v10;
    *(v0 + 1088) = v11;
    if (v4)
    {
      sub_100016590(v8, v7);
      sub_100016590(v8, v7);
      sub_100429C80(v0 + 160);
      *(v0 + 1176) = v7;
      *(v0 + 1168) = v8;
      *(v0 + 1160) = v6;
      static os_log_type_t.error.getter();
      if (qword_101694BE0 != -1)
      {
        swift_once();
      }

      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_101385D80;
      v26 = _convertErrorToNSError(_:)();
      *(v25 + 56) = sub_1003289A8();
      *(v25 + 64) = sub_100429D28(&qword_1016BC310, sub_1003289A8);
      *(v25 + 32) = v26;
      os_log(_:dso:log:_:_:)();

      v3 = sub_1004274B8;
    }

    else
    {
      v12 = v10;
      v13 = v11;
      v14 = String.utf8Data.getter();
      v16 = v15;
      v17 = sub_100A79CBC(v12, v13, v14, v15, 72);
      sub_100495DF4(v17, v18, (v0 + 656));
      v62 = *(v0 + 992);
      sub_100016590(v14, v16);
      v67 = *(v0 + 664);
      v66 = *(v0 + 656);
      if (v62 >> 60 == 15)
      {
        v19 = *(v0 + 1008);
        v20 = *(v0 + 1000);
        sub_100017D5C(*(v0 + 656), v67);
        v21 = sub_100A7A194(v20, v19);
        v64 = sub_100A7A73C(v21, 0, v66, v67);
        CCECCryptorRelease();
        sub_100016590(v66, v67);
        v29 = sub_100A7829C(v64, 0);
        v31 = v30;
        sub_100017D5C(v29, v30);
        v32 = sub_10049C0AC(v29, v31);
        v56 = v35;
        v57 = v32;
        CCECCryptorRelease();
        v36 = sub_100016590(v29, v31);
        v39 = *(v0 + 992);
        v40 = *(v0 + 984);
      }

      else
      {
        v63 = *(v0 + 992);
        v22 = *(v0 + 984);
        v23 = *(v0 + 656);
        sub_10002E98C(v22, v63);
        sub_100017D5C(v23, v67);
        v24 = sub_100A7A194(v22, v63);
        v27 = sub_100A7A73C(v24, 1, v66, v67);
        CCECCryptorRelease();
        sub_100016590(v66, v67);
        v28 = sub_100A7829C(v27, 1);
        v34 = v33;
        v65 = v28;
        v54 = sub_100A7829C(v27, 0);
        v55 = v46;
        sub_100017D5C(v65, v34);
        v59 = sub_10049BD68(v65, v34);
        v61 = v47;
        sub_100017D5C(v54, v55);
        v48 = sub_10049C0AC(v54, v55);
        v56 = v49;
        v57 = v48;
        v50 = *(v0 + 984);
        v52 = v50;
        v53 = *(v0 + 992);
        CCECCryptorRelease();
        sub_100016590(v54, v55);
        sub_100016590(v65, v34);
        v36 = sub_100006654(v52, v53);
        v40 = v59;
        v39 = v61;
      }

      v58 = v40;
      v60 = v39;
      *(v0 + 1104) = v39;
      *(v0 + 1096) = v40;
      *(v0 + 1112) = v56;
      *(v0 + 1120) = v57;
      *(v0 + 1128) = v6 + 1;
      if (v6 == -1)
      {
        __break(1u);
        return _swift_task_switch(v36, v37, v38);
      }

      sub_100017D5C(v12, v13);
      sub_100016590(v8, v7);
      v41 = String.utf8Data.getter();
      v43 = v42;
      v44 = sub_100A79CBC(v12, v13, v41, v42, 32);
      sub_1004A4714(v44, v45, (v0 + 672));
      *(v0 + 1136) = 0;
      sub_100016590(v41, v43);
      *(v0 + 1144) = *(v0 + 672);
      sub_100017D5C(v57, v56);
      sub_10002E98C(v58, v60);
      sub_100006654(v58, v60);
      sub_100016590(v57, v56);
      sub_100016590(v12, v13);
      sub_100016590(v66, v67);
      sub_100429C80(v0 + 160);
      sub_100016590(v8, v7);
      v3 = sub_100426428;
    }
  }

  v36 = v3;
  v37 = 0;
  v38 = 0;

  return _swift_task_switch(v36, v37, v38);
}

uint64_t sub_100429258(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[21] = a6;
  v7[22] = a7;
  v7[19] = a4;
  v7[20] = a5;
  v7[17] = a2;
  v7[18] = a3;
  v7[16] = a1;
  v8 = type metadata accessor for BeaconIdentifier();
  v7[23] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v7[24] = swift_task_alloc();

  return _swift_task_switch(sub_1004292F8, 0, 0);
}

uint64_t sub_1004292F8()
{
  v1 = v0[20];
  v2 = v1[3];
  v3 = v1[4];
  sub_1000035D0(v1, v2);
  v4 = sub_10002BD40(v2, v3);
  v5 = v1[4];
  sub_1000035D0(v1, v1[3]);
  v6 = *(v5 + 56);
  dispatch thunk of RawRepresentable.rawValue.getter();
  v7 = v0[13];
  v8 = swift_task_alloc();
  v0[25] = v8;
  *v8 = v0;
  v8[1] = sub_1004293F4;
  v9 = v0[21];
  v10 = v0[22];
  v11 = v0[18];
  v12 = v0[19];
  v13 = v0[17];

  return sub_1004240DC((v0 + 2), v13, v11, v12, v4 & 1, v7, v9, v10);
}

uint64_t sub_1004293F4()
{
  v2 = *(*v1 + 200);
  v5 = *v1;
  *(*v1 + 208) = v0;

  if (v0)
  {
    v3 = sub_100429A04;
  }

  else
  {
    v3 = sub_100429508;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100429508()
{
  v55 = v0;
  v1 = v0[2];
  v2 = v0[5];
  if (v2 >> 60 != 15)
  {
    v3 = v0[3];
    if (v3 >> 60 != 15)
    {
      v30 = v0[4];
      v31 = v0[20];
      v51 = v0[16];
      v32 = v31[3];
      v33 = v31[4];
      sub_1000035D0(v31, v32);
      sub_100017D5C(v1, v3);
      LOBYTE(v33) = sub_10002BD40(v32, v33);
      v34 = v31[4];
      sub_1000035D0(v31, v31[3]);
      v35 = *(v34 + 56);
      dispatch thunk of RawRepresentable.rawValue.getter();
      if (v33)
      {
        v50 = v0[14];
        v49 = PublicKey.advertisement.getter(v30, v2);
        v37 = v36;
        v38 = sub_100497AF4(v1, v3);
        v40 = v39;
        v41 = &type metadata for SecondaryKey;
        v42 = sub_100429D98();
      }

      else
      {
        v50 = v0[15];
        v49 = PublicKey.advertisement.getter(v30, v2);
        v37 = v43;
        v38 = sub_100497AF4(v1, v3);
        v40 = v44;
        v41 = &type metadata for PrimaryKey;
        v42 = sub_100429DEC();
      }

      *(v51 + 24) = v41;
      v45 = v0[24];
      v46 = v0[16];
      v46[4] = v42;
      v47 = swift_allocObject();
      sub_100006654(v1, v3);
      sub_10000B3A8((v0 + 2), &qword_10169FCA0, &unk_1013B32F0);
      v47[2] = v50;
      v47[3] = v49;
      v47[4] = v37;
      v47[5] = v38;
      v47[6] = v40;
      *v46 = v47;

      v29 = v0[1];
      goto LABEL_20;
    }

    sub_10000B3A8((v0 + 2), &qword_10169FCA0, &unk_1013B32F0);
  }

  if (qword_101694B98 != -1)
  {
    swift_once();
  }

  v4 = v0[24];
  v5 = v0[20];
  v6 = v0[17];
  v7 = type metadata accessor for Logger();
  sub_1000076D4(v7, qword_10177B810);
  sub_10001F280(v5, (v0 + 8));
  sub_100429A68(v6, v4);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();
  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[24];
  if (v10)
  {
    v12 = v0[23];
    v13 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    *v13 = 136446723;
    v14 = v0[11];
    v15 = v0[12];
    sub_1000035D0(v0 + 8, v14);
    v16 = sub_10002BD40(v14, v15);
    if (v16)
    {
      v17 = 0x61646E6F6365732ELL;
    }

    else
    {
      v17 = 0x7972616D6972702ELL;
    }

    if (v16)
    {
      v18 = 0xEA00000000007972;
    }

    else
    {
      v18 = 0xE800000000000000;
    }

    sub_100007BAC(v0 + 8);
    v19 = sub_1000136BC(v17, v18, &v52);

    *(v13 + 4) = v19;
    *(v13 + 12) = 2160;
    *(v13 + 14) = 1752392040;
    *(v13 + 22) = 2081;
    type metadata accessor for UUID();
    sub_100429D28(&qword_101696930, &type metadata accessor for UUID);
    v53 = dispatch thunk of CustomStringConvertible.description.getter();
    v54 = v20;
    v21._countAndFlagsBits = 47;
    v21._object = 0xE100000000000000;
    String.append(_:)(v21);
    v22 = v11 + *(v12 + 20);
    v23._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v23);

    v25 = v53;
    v24 = v54;
    sub_100429ACC(v11);
    v26 = sub_1000136BC(v25, v24, &v52);

    *(v13 + 24) = v26;
    _os_log_impl(&_mh_execute_header, v8, v9, "Failed to generate %{public}s key for %{private,mask.hash}s", v13, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    sub_100429ACC(v11);
    sub_100007BAC(v0 + 8);
  }

  sub_100429B28();
  swift_allocError();
  *v27 = 0;
  swift_willThrow();
  v28 = v0[24];

  v29 = v0[1];
LABEL_20:

  return v29();
}

uint64_t sub_100429A04()
{
  v1 = v0[26];
  v2 = v0[24];

  v3 = v0[1];

  return v3();
}

uint64_t sub_100429A68(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BeaconIdentifier();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100429ACC(uint64_t a1)
{
  v2 = type metadata accessor for BeaconIdentifier();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100429B28()
{
  result = qword_10169FC98;
  if (!qword_10169FC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169FC98);
  }

  return result;
}

uint64_t sub_100429B7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_10169FCA8, &qword_1013A2B88);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100429BEC(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 >> 60 != 15)
  {
    return sub_100017D5C(a2, a3);
  }

  return result;
}

uint64_t sub_100429C08(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 >> 60 != 15)
  {
    return sub_100016590(a2, a3);
  }

  return result;
}

uint64_t sub_100429D28(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100429D98()
{
  result = qword_10169FCC0;
  if (!qword_10169FCC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169FCC0);
  }

  return result;
}

unint64_t sub_100429DEC()
{
  result = qword_10169FCC8;
  if (!qword_10169FCC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169FCC8);
  }

  return result;
}

unint64_t sub_100429E54()
{
  result = qword_10169FCD0[0];
  if (!qword_10169FCD0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_10169FCD0);
  }

  return result;
}

uint64_t sub_100429EB4(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 24);
  type metadata accessor for AttachedAccessoryEvents.EventAtTimeWithType();
  result = type metadata accessor for Array();
  if (v4 <= 0x3F)
  {
    result = type metadata accessor for UUID();
    if (v5 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_100429F78(uint64_t a1)
{
  v1 = *(a1 + 16);
  swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    type metadata accessor for Date();
    if (v3 <= 0x3F)
    {
      sub_10042A7A4();
      if (v4 <= 0x3F)
      {
        sub_100395648();
        if (v5 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_10042A030(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v39 = type metadata accessor for Date();
  v8 = *(v39 - 8);
  v9 = *(v8 + 84);
  if (v9 <= v7)
  {
    v10 = v7;
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = *(type metadata accessor for UUID() - 8);
  v12 = v11;
  v13 = *(v11 + 84);
  v14 = v13 - 1;
  if (!v13)
  {
    v14 = 0;
  }

  if (v10 <= v14)
  {
    v15 = v14;
  }

  else
  {
    v15 = v10;
  }

  if (v15 <= 0x7FFFFFFF)
  {
    v16 = 0x7FFFFFFF;
  }

  else
  {
    v16 = v15;
  }

  v17 = *(v8 + 80);
  v18 = *(v11 + 80);
  v19 = *(v11 + 64);
  if (v13)
  {
    v20 = v19;
  }

  else
  {
    v20 = v19 + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v21 = *(v6 + 64) + v17;
  v22 = *(v8 + 64) + 7;
  v23 = v18 + 40;
  if (a2 <= v16)
  {
    goto LABEL_39;
  }

  v24 = v20 + ((v23 + ((v22 + (v21 & ~v17)) & 0xFFFFFFFFFFFFFFF8)) & ~v18);
  v25 = 8 * v24;
  if (v24 > 3)
  {
    goto LABEL_18;
  }

  v28 = ((a2 - v16 + ~(-1 << v25)) >> v25) + 1;
  if (HIWORD(v28))
  {
    v26 = *(a1 + v24);
    if (v26)
    {
      goto LABEL_26;
    }
  }

  else
  {
    if (v28 <= 0xFF)
    {
      if (v28 < 2)
      {
        goto LABEL_39;
      }

LABEL_18:
      v26 = *(a1 + v24);
      if (!*(a1 + v24))
      {
        goto LABEL_39;
      }

LABEL_26:
      v29 = (v26 - 1) << v25;
      if (v24 > 3)
      {
        v29 = 0;
      }

      if (v24)
      {
        if (v24 <= 3)
        {
          v30 = v24;
        }

        else
        {
          v30 = 4;
        }

        if (v30 > 2)
        {
          if (v30 == 3)
          {
            v31 = *a1 | (*(a1 + 2) << 16);
          }

          else
          {
            v31 = *a1;
          }
        }

        else if (v30 == 1)
        {
          v31 = *a1;
        }

        else
        {
          v31 = *a1;
        }
      }

      else
      {
        v31 = 0;
      }

      return v16 + (v31 | v29) + 1;
    }

    v26 = *(a1 + v24);
    if (*(a1 + v24))
    {
      goto LABEL_26;
    }
  }

LABEL_39:
  if (v7 == v16)
  {
    v32 = *(v6 + 48);
    v33 = a1;
    v34 = v7;
    v35 = v5;

    return v32(v33, v34, v35);
  }

  v33 = ((a1 + v21) & ~v17);
  if (v9 == v16)
  {
    v32 = *(v8 + 48);
    v34 = v9;
    v35 = v39;

    return v32(v33, v34, v35);
  }

  v36 = (v33 + v22) & 0xFFFFFFFFFFFFFFF8;
  if ((v15 & 0x80000000) != 0)
  {
    v38 = (*(v12 + 48))((v23 + v36) & ~v18);
    if (v38 >= 2)
    {
      return v38 - 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v37 = *(v36 + 24);
    if (v37 >= 0xFFFFFFFF)
    {
      LODWORD(v37) = -1;
    }

    return (v37 + 1);
  }
}

void sub_10042A3A8(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v43 = *(a4 + 16);
  v6 = *(v43 - 8);
  v42 = v6;
  v7 = *(v6 + 84);
  v41 = type metadata accessor for Date();
  v8 = *(v41 - 8);
  v9 = *(v8 + 84);
  if (v9 <= v7)
  {
    v10 = v7;
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = 0;
  v12 = *(type metadata accessor for UUID() - 8);
  v13 = v12;
  v14 = *(v12 + 84);
  v15 = *(v6 + 64);
  if (v14)
  {
    v16 = v14 - 1;
  }

  else
  {
    v16 = 0;
  }

  v17 = *(v8 + 80);
  v18 = *(v8 + 64);
  v19 = *(v12 + 80);
  v20 = *(v12 + 64);
  if (v10 <= v16)
  {
    v21 = v16;
  }

  else
  {
    v21 = v10;
  }

  if (v21 <= 0x7FFFFFFF)
  {
    v22 = 0x7FFFFFFF;
  }

  else
  {
    v22 = v21;
  }

  v23 = v15 + v17;
  v24 = (v15 + v17) & ~v17;
  v25 = v18 + 7;
  v26 = (v19 + 40 + ((v18 + 7 + v24) & 0xFFFFFFFFFFFFFFF8)) & ~v19;
  if (v14)
  {
    v27 = v20;
  }

  else
  {
    v27 = v20 + 1;
  }

  v28 = v26 + v27;
  if (a3 <= v22)
  {
    goto LABEL_27;
  }

  if (v28 <= 3)
  {
    v29 = ((a3 - v22 + ~(-1 << (8 * v28))) >> (8 * v28)) + 1;
    if (HIWORD(v29))
    {
      v11 = 4;
      if (v22 >= a2)
      {
        goto LABEL_37;
      }

LABEL_28:
      v31 = ~v22 + a2;
      if (v28 >= 4)
      {
        bzero(a1, v28);
        *a1 = v31;
        v32 = 1;
        if (v11 > 1)
        {
          goto LABEL_61;
        }

        goto LABEL_58;
      }

      v32 = (v31 >> (8 * v28)) + 1;
      if (v28)
      {
        v33 = v31 & ~(-1 << (8 * v28));
        bzero(a1, v28);
        if (v28 != 3)
        {
          if (v28 == 2)
          {
            *a1 = v33;
            if (v11 > 1)
            {
LABEL_61:
              if (v11 == 2)
              {
                *&a1[v28] = v32;
              }

              else
              {
                *&a1[v28] = v32;
              }

              return;
            }
          }

          else
          {
            *a1 = v31;
            if (v11 > 1)
            {
              goto LABEL_61;
            }
          }

LABEL_58:
          if (v11)
          {
            a1[v28] = v32;
          }

          return;
        }

        *a1 = v33;
        a1[2] = BYTE2(v33);
      }

      if (v11 > 1)
      {
        goto LABEL_61;
      }

      goto LABEL_58;
    }

    if (v29 < 0x100)
    {
      v30 = 1;
    }

    else
    {
      v30 = 2;
    }

    if (v29 >= 2)
    {
      v11 = v30;
    }

    else
    {
      v11 = 0;
    }

LABEL_27:
    if (v22 >= a2)
    {
      goto LABEL_37;
    }

    goto LABEL_28;
  }

  v11 = 1;
  if (v22 < a2)
  {
    goto LABEL_28;
  }

LABEL_37:
  v34 = a1;
  if (v11 > 1)
  {
    if (v11 != 2)
    {
      *&a1[v28] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_44;
    }

    *&a1[v28] = 0;
LABEL_43:
    if (!a2)
    {
      return;
    }

    goto LABEL_44;
  }

  if (!v11)
  {
    goto LABEL_43;
  }

  a1[v28] = 0;
  if (!a2)
  {
    return;
  }

LABEL_44:
  if (v7 == v22)
  {
    v35 = v43;
    v36 = *(v42 + 56);
    v37 = a2;
    v38 = v7;
LABEL_48:

    v36(v34, v37, v38, v35);
    return;
  }

  v34 = (&a1[v23] & ~v17);
  if (v9 == v22)
  {
    v36 = *(v8 + 56);
    v37 = a2;
    v38 = v9;
    v35 = v41;
    goto LABEL_48;
  }

  v39 = &v34[v25] & 0xFFFFFFFFFFFFFFF8;
  if ((v21 & 0x80000000) != 0)
  {
    v40 = *(v13 + 56);

    v40((v19 + 40 + v39) & ~v19, (a2 + 1));
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *(v39 + 8) = 0u;
    *(v39 + 24) = 0u;
    *v39 = a2 & 0x7FFFFFFF;
  }

  else
  {
    *(v39 + 24) = (a2 - 1);
  }
}

unint64_t sub_10042A7A4()
{
  result = qword_10169FDD8[0];
  if (!qword_10169FDD8[0])
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, qword_10169FDD8);
  }

  return result;
}

Swift::Int sub_10042A808()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1 + 1);
  return Hasher._finalize()();
}

Swift::Int sub_10042A880()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1 + 1);
  return Hasher._finalize()();
}

void *sub_10042A8C4@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result >= 4uLL)
  {
    v2 = 3;
  }

  else
  {
    v2 = 0x2010003u >> (8 * *result);
  }

  *a2 = v2;
  return result;
}

uint64_t sub_10042A8FC(uint64_t a1)
{
  if (a1 == 4)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (a1 == 1)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_10042A914(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return == infix<A>(_:_:)(a1, a2, a3, WitnessTable, &protocol witness table for Int);
}

uint64_t sub_10042A988(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return RawRepresentable<>.hashValue.getter(a1, a2, WitnessTable, &protocol witness table for Int);
}

uint64_t sub_10042A9F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return RawRepresentable<>.hash(into:)(a1, a2, a3, WitnessTable, &protocol witness table for Int);
}

uint64_t sub_10042AA64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return RawRepresentable<>._rawHashValue(seed:)(a1, a2, a3, WitnessTable, &protocol witness table for Int);
}

uint64_t sub_10042AAD4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v5 = *(a2 + 16);
  v4 = *(a2 + 24);
  result = sub_10042A8FC(*a1);
  *a3 = result;
  return result;
}

uint64_t sub_10042AB08@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  result = sub_10005B458(*v2);
  *a2 = result;
  return result;
}

uint64_t sub_10042AB3C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  return sub_10005B458(*v1);
}

uint64_t sub_10042AB4C(uint64_t a1)
{
  if (a1 == 4)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (a1 == 2)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_10042AB64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return == infix<A>(_:_:)(a1, a2, a3, WitnessTable, &protocol witness table for Int);
}

uint64_t sub_10042ABD8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return RawRepresentable<>.hashValue.getter(a1, a2, WitnessTable, &protocol witness table for Int);
}

uint64_t sub_10042AC44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return RawRepresentable<>.hash(into:)(a1, a2, a3, WitnessTable, &protocol witness table for Int);
}

uint64_t sub_10042ACB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return RawRepresentable<>._rawHashValue(seed:)(a1, a2, a3, WitnessTable, &protocol witness table for Int);
}

uint64_t sub_10042AD24@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v5 = *(a2 + 16);
  v4 = *(a2 + 24);
  result = sub_10042AB4C(*a1);
  *a3 = result;
  return result;
}

uint64_t sub_10042AD58@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  result = sub_10005B484(*v2);
  *a2 = result;
  return result;
}

uint64_t sub_10042AD8C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  return sub_10005B484(*v1);
}

BOOL sub_10042ADBC()
{
  v0 = type metadata accessor for Date();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = v13 - v6;
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  v8 = *(qword_10177B348 + 40);
  OS_dispatch_queue.sync<A>(execute:)();
  sub_101073C8C(v13[1]);

  Date.addingTimeInterval(_:)();
  static Date.trustedNow.getter(v5);
  Date.timeIntervalSince(_:)();
  v10 = v9;
  v11 = *(v1 + 8);
  v11(v5, v0);
  v11(v7, v0);
  return v10 <= 0.0;
}

uint64_t sub_10042AF74(uint64_t a1)
{
  if (a1 == 4)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (a1 == 3)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_10042AF8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return == infix<A>(_:_:)(a1, a2, a3, WitnessTable, &protocol witness table for Int);
}

uint64_t sub_10042B000(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return RawRepresentable<>.hashValue.getter(a1, a2, WitnessTable, &protocol witness table for Int);
}

uint64_t sub_10042B06C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return RawRepresentable<>.hash(into:)(a1, a2, a3, WitnessTable, &protocol witness table for Int);
}

uint64_t sub_10042B0DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return RawRepresentable<>._rawHashValue(seed:)(a1, a2, a3, WitnessTable, &protocol witness table for Int);
}

uint64_t sub_10042B14C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v5 = *(a2 + 16);
  v4 = *(a2 + 24);
  result = sub_10042AF74(*a1);
  *a3 = result;
  return result;
}

uint64_t sub_10042B180@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  result = sub_10005B498(*v2);
  *a2 = result;
  return result;
}

uint64_t sub_10042B1B4(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  return sub_10005B498(*v1);
}

BOOL sub_10042B1C4(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  return sub_10042ADA4(a1, *v2);
}

BOOL sub_10042B1D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttachedAccessoryEvents.EventAtTimeWithType();
  v5 = (a1 + *(v4 + 40));
  v6 = v5[3];
  v7 = v5[4];
  sub_1000035D0(v5, v6);
  v8 = (*(v7 + 8))(v6, v7);
  v9 = (a2 + *(v4 + 40));
  v10 = v9[3];
  v11 = v9[4];
  sub_1000035D0(v9, v10);
  if (v8 != (*(v11 + 8))(v10, v11))
  {
    return 0;
  }

  v12 = *(v4 + 36);
  if ((static Date.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v13 = v5[3];
  v14 = v5[4];
  sub_1000035D0(v5, v13);
  LODWORD(v14) = (*(v14 + 16))(v13, v14);
  v15 = v9[3];
  v16 = v9[4];
  sub_1000035D0(v9, v15);
  return v14 == (*(v16 + 16))(v15, v16);
}

uint64_t sub_10042B330(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttachedAccessoryEvents.EventAtTimeWithType();
  v5 = (a1 + *(v4 + 40));
  v6 = v5[3];
  v7 = v5[4];
  sub_1000035D0(v5, v6);
  v8 = (*(v7 + 16))(v6, v7);
  v9 = (a2 + *(v4 + 40));
  v10 = v9[3];
  v11 = v9[4];
  sub_1000035D0(v9, v10);
  if (v8 == (*(v11 + 16))(v10, v11) || (v12 = v5[3], v13 = v5[4], sub_1000035D0(v5, v12), v14 = (*(v13 + 8))(v12, v13), v15 = v9[3], v16 = v9[4], sub_1000035D0(v9, v15), v14 == (*(v16 + 8))(v15, v16)))
  {
    v17 = *(v4 + 36);

    return static Date.> infix(_:_:)();
  }

  else
  {
    v19 = v5[3];
    v20 = v5[4];
    sub_1000035D0(v5, v19);
    v21 = (*(v20 + 8))(v19, v20);
    v22 = v9[3];
    v23 = v9[4];
    sub_1000035D0(v9, v22);
    return v21 < (*(v23 + 8))(v22, v23);
  }
}

uint64_t sub_10042B514(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v3 = *(a3 + 24);
  return sub_10042B330(a1, a2);
}

BOOL sub_10042B52C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v3 = *(a3 + 24);
  return sub_10042B1D4(a1, a2);
}

unint64_t sub_10042B5E4()
{
  result = qword_10169FFE0;
  if (!qword_10169FFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169FFE0);
  }

  return result;
}

uint64_t sub_10042B690(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to ActorServiceProtocol.initialLaunchProcessing()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = type metadata accessor for CompanionPublishActivity();
  *v5 = v2;
  v5[1] = sub_100014744;

  return ActorServiceProtocol.initialLaunchProcessing()(v6, a2);
}

uint64_t sub_10042B738(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to ActorServiceProtocol.migrate(from:to:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for CompanionPublishActivity();
  *v9 = v4;
  v9[1] = sub_100014744;

  return ActorServiceProtocol.migrate(from:to:)(a1, a2, v10, a4);
}

uint64_t sub_10042B7FC(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to ActorServiceProtocol.firstLaunchSinceReboot()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = type metadata accessor for CompanionPublishActivity();
  *v5 = v2;
  v5[1] = sub_100014650;

  return ActorServiceProtocol.firstLaunchSinceReboot()(v6, a2);
}

uint64_t sub_10042B8A4(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to ActorServiceProtocol.run()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = type metadata accessor for CompanionPublishActivity();
  *v5 = v2;
  v5[1] = sub_100014650;

  return ActorServiceProtocol.run()(v6, a2);
}

uint64_t sub_10042B94C()
{
  v1 = *v0;
  type metadata accessor for CompanionPublishActivity();
  sub_10042BA08(&qword_1016A00B0);
  return ActorServiceProtocol.description.getter();
}

uint64_t sub_10042BA08(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CompanionPublishActivity();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *sub_10042BA48(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1000BC4D4(&qword_1016A4190, &unk_1013A3550);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4);
  v68 = (&v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __chkstk_darwin(v6);
  v67 = (&v56 - v9);
  __chkstk_darwin(v8);
  v63 = (&v56 - v10);
  v11 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (!v11)
  {
    return result;
  }

  v75 = _swiftEmptyArrayStorage;
  sub_1011244D8(0, v11, 0);
  v69 = v75;
  v13 = a1 + 64;
  v14 = -1 << *(a1 + 32);
  result = _HashTable.startBucket.getter();
  v15 = result;
  v16 = 0;
  v70 = *(a1 + 36);
  v57 = a1 + 72;
  v61 = a1 + 64;
  v62 = a1;
  v59 = v11;
  v60 = v4;
  while ((v15 & 0x8000000000000000) == 0 && v15 < 1 << *(a1 + 32))
  {
    v18 = v15 >> 6;
    if ((*(v13 + 8 * (v15 >> 6)) & (1 << v15)) == 0)
    {
      goto LABEL_42;
    }

    if (v70 != *(a1 + 36))
    {
      goto LABEL_43;
    }

    v64 = v16;
    v65 = 1 << v15;
    v19 = *(v4 + 48);
    v20 = *(a1 + 56);
    v21 = v63;
    v66 = *(*(a1 + 48) + 16 * v15);
    *v63 = v66;
    v22 = type metadata accessor for OwnedBeaconGroup.PairingState(0);
    sub_10046A814(v20 + *(*(v22 - 8) + 72) * v15, v21 + v19, type metadata accessor for OwnedBeaconGroup.PairingState);
    v23 = v67;
    *v67 = *v21;
    sub_10046B7F0(v21 + v19, v23 + *(v4 + 48), type metadata accessor for OwnedBeaconGroup.PairingState);
    v24 = v68;
    result = sub_1000D2A70(v23, v68, &qword_1016A4190, &unk_1013A3550);
    v26 = *v24;
    v25 = v24[1];
    v73 = *v24;
    v74 = v25;
    v27 = v25 >> 62;
    if ((v25 >> 62) > 1)
    {
      v28 = 0;
      if (v27 != 2)
      {
        goto LABEL_19;
      }

      v30 = *(v26 + 16);
      v29 = *(v26 + 24);
      v28 = v29 - v30;
      if (__OFSUB__(v29, v30))
      {
        goto LABEL_49;
      }
    }

    else
    {
      if (!v27)
      {
        v28 = BYTE6(v25);
        goto LABEL_19;
      }

      if (__OFSUB__(HIDWORD(v26), v26))
      {
        goto LABEL_50;
      }

      v28 = HIDWORD(v26) - v26;
    }

    result = sub_100017D5C(v26, v25);
LABEL_19:
    v31 = 20 - v28;
    if (__OFSUB__(20, v28))
    {
      goto LABEL_44;
    }

    if (v31)
    {
      if (v31 <= 14)
      {
        if (v31 < 0)
        {
          goto LABEL_48;
        }

        v38 = v58 & 0xF00000000000000 | ((20 - v28) << 48);
        sub_100017D5C(v66, *(&v66 + 1));
        v36 = 0;
        v58 = v38;
        v37 = v38;
      }

      else
      {
        v32 = type metadata accessor for __DataStorage();
        v33 = *(v32 + 48);
        v34 = *(v32 + 52);
        swift_allocObject();
        sub_100017D5C(v66, *(&v66 + 1));
        v35 = __DataStorage.init(length:)();
        if (v31 >= 0x7FFFFFFF)
        {
          type metadata accessor for Data.RangeReference();
          v36 = swift_allocObject();
          *(v36 + 16) = 0;
          *(v36 + 24) = v31;
          v37 = v35 | 0x8000000000000000;
        }

        else
        {
          v36 = v31 << 32;
          v37 = v35 | 0x4000000000000000;
        }
      }
    }

    else
    {
      sub_100017D5C(v66, *(&v66 + 1));
      v36 = 0;
      v37 = 0xC000000000000000;
    }

    v39 = *(v4 + 48);
    v71 = v36;
    v72 = v37;
    v40 = v2;
    sub_100776394(&v71, 0);
    v41 = v71;
    v42 = v72;
    Data.append(_:)();
    sub_100016590(v41, v42);
    sub_100016590(v26, v25);
    v43 = v73;
    v44 = v74;
    sub_10046B858(v68 + v39, type metadata accessor for OwnedBeaconGroup.PairingState);
    result = sub_10000B3A8(v67, &qword_1016A4190, &unk_1013A3550);
    v45 = v69;
    v75 = v69;
    v47 = v69[2];
    v46 = v69[3];
    if (v47 >= v46 >> 1)
    {
      result = sub_1011244D8((v46 > 1), v47 + 1, 1);
      v45 = v75;
    }

    v45[2] = v47 + 1;
    v48 = &v45[2 * v47];
    v48[4] = v43;
    v48[5] = v44;
    a1 = v62;
    v17 = 1 << *(v62 + 32);
    if (v15 >= v17)
    {
      goto LABEL_45;
    }

    v13 = v61;
    v49 = *(v61 + 8 * v18);
    if ((v49 & v65) == 0)
    {
      goto LABEL_46;
    }

    v69 = v45;
    if (v70 != *(v62 + 36))
    {
      goto LABEL_47;
    }

    v50 = v49 & (-2 << (v15 & 0x3F));
    if (v50)
    {
      v17 = __clz(__rbit64(v50)) | v15 & 0x7FFFFFFFFFFFFFC0;
      v2 = v40;
    }

    else
    {
      v51 = v18 << 6;
      v52 = v18 + 1;
      v53 = (v57 + 8 * v18);
      v2 = v40;
      while (v52 < (v17 + 63) >> 6)
      {
        v55 = *v53++;
        v54 = v55;
        v51 += 64;
        ++v52;
        if (v55)
        {
          result = sub_10040BA00(v15, v70, 0);
          v17 = __clz(__rbit64(v54)) + v51;
          goto LABEL_4;
        }
      }

      result = sub_10040BA00(v15, v70, 0);
    }

LABEL_4:
    v16 = v64 + 1;
    v15 = v17;
    v4 = v60;
    if (v64 + 1 == v59)
    {
      return v69;
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
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
  return result;
}

uint64_t sub_10042BF98()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177AD08);
  sub_1000076D4(v0, qword_10177AD08);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10042C01C()
{
  if (qword_1016946F0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();

  return sub_1000076D4(v0, qword_10177AD08);
}

uint64_t sub_10042C0A4(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
  sub_100044B3C(v3, a2);
  sub_1000076D4(v3, a2);
  return static OS_dispatch_queue.SchedulerTimeType.Stride.seconds(_:)();
}

unint64_t sub_10042C0FC()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = (&v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + 48);
  *v5 = v6;
  (*(v2 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v1);
  v7 = v6;
  LOBYTE(v6) = _dispatchPreconditionTest(_:)();
  v9 = *(v2 + 8);
  v8 = v2 + 8;
  v9(v5, v1);
  if ((v6 & 1) == 0)
  {
    __break(1u);
    swift_once();
    v13 = type metadata accessor for Logger();
    sub_1000076D4(v13, qword_10177C418);
    swift_errorRetain();
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *&v28[0] = v17;
      *v16 = 136446210;
      *&v26 = v5;
      swift_errorRetain();
      sub_1000BC4D4(&qword_101696960, &unk_10138B220);
      v18 = String.init<A>(describing:)();
      v20 = sub_1000136BC(v18, v19, v28);

      *(v16 + 4) = v20;
      _os_log_impl(&_mh_execute_header, v14, v15, "Unable to retrieve lastPairingEvents due to %{public}s", v16, 0xCu);
      sub_100007BAC(v17);
    }

    v22 = sub_100909188(_swiftEmptyArrayStorage);

    goto LABEL_13;
  }

  v10 = [objc_opt_self() standardUserDefaults];
  v11 = String._bridgeToObjectiveC()();
  v12 = [v10 objectForKey:v11];

  if (v12)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v26 = 0u;
    v27 = 0u;
  }

  v28[0] = v26;
  v28[1] = v27;
  if (!*(&v27 + 1))
  {
    sub_10000B3A8(v28, &unk_1016A0B10, &qword_10139BF40);
    return sub_100909188(_swiftEmptyArrayStorage);
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    return sub_100909188(_swiftEmptyArrayStorage);
  }

  v1 = v24;
  v8 = v25;
  sub_100017D5C(v24, v25);
  type metadata accessor for MACAddress();
  sub_100019D54(&qword_1016A41D0, &type metadata accessor for MACAddress);
  sub_100019D54(&qword_10169B550, &type metadata accessor for MACAddress);
  sub_100019D54(&unk_1016BC080, &type metadata accessor for MACAddress);
  sub_10046BA30();
  sub_10046BA84();
  v22 = Dictionary<>.init(dataRepresentation:)();
LABEL_13:
  sub_100016590(v1, v8);
  return v22;
}

void sub_10042C564()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = (&v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + 48);
  *v5 = v6;
  (*(v2 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v1);
  v7 = v6;
  LOBYTE(v6) = _dispatchPreconditionTest(_:)();
  (*(v2 + 8))(v5, v1);
  if (v6)
  {
    v8 = [objc_opt_self() standardUserDefaults];
    type metadata accessor for MACAddress();
    sub_100019D54(&qword_1016A41D0, &type metadata accessor for MACAddress);
    sub_100019D54(&qword_10169B550, &type metadata accessor for MACAddress);
    sub_100019D54(&unk_1016BC080, &type metadata accessor for MACAddress);
    sub_10046BA30();
    sub_10046BA84();
    v9 = Dictionary<>.dataRepresentation.getter();
    v11 = v10;

    isa = Data._bridgeToObjectiveC()().super.isa;
    sub_100016590(v9, v11);
    v13 = String._bridgeToObjectiveC()();
    [v8 setObject:isa forKey:v13];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10042C7D8(uint64_t a1)
{
  v1[2] = a1;
  v2 = type metadata accessor for CBDiscovery.DiscoveryFlags();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();

  return _swift_task_switch(sub_10042C898, 0, 0);
}

uint64_t sub_10042C898()
{
  v1 = *(v0 + 40);
  type metadata accessor for CBDiscovery();
  static CBDiscovery.DiscoveryFlags.pairing.getter();
  v2 = async function pointer to static CBDiscovery.devices(with:)[1];
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  *v3 = v0;
  v3[1] = sub_10042C94C;
  v4 = *(v0 + 40);

  return static CBDiscovery.devices(with:)(v4);
}

uint64_t sub_10042C94C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 48);
  v6 = *v2;
  v4[7] = v1;

  v7 = v4[5];
  v8 = v4[4];
  v9 = v4[3];
  if (v1)
  {
    (*(v8 + 8))(v7, v9);
    v10 = sub_100274F20;
  }

  else
  {
    v4[8] = a1;
    (*(v8 + 8))(v7, v9);
    v10 = sub_10042CAD4;
  }

  return _swift_task_switch(v10, 0, 0);
}

uint64_t sub_10042CAD4()
{
  v1 = *(v0 + 40);
  **(v0 + 16) = *(v0 + 64);

  v2 = *(v0 + 8);

  return v2();
}

unint64_t sub_10042CB44()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = (&v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + 48);
  *v5 = v6;
  (*(v2 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v1);
  v7 = v6;
  LOBYTE(v6) = _dispatchPreconditionTest(_:)();
  v9 = *(v2 + 8);
  v8 = v2 + 8;
  v9(v5, v1);
  if ((v6 & 1) == 0)
  {
    __break(1u);
    swift_once();
    v13 = type metadata accessor for Logger();
    sub_1000076D4(v13, qword_10177C418);
    swift_errorRetain();
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *&v28[0] = v17;
      *v16 = 136446210;
      *&v26 = v5;
      swift_errorRetain();
      sub_1000BC4D4(&qword_101696960, &unk_10138B220);
      v18 = String.init<A>(describing:)();
      v20 = sub_1000136BC(v18, v19, v28);

      *(v16 + 4) = v20;
      _os_log_impl(&_mh_execute_header, v14, v15, "Unable to retrieve lastRetryAttempt due to %{public}s", v16, 0xCu);
      sub_100007BAC(v17);
    }

    v22 = sub_100909370(_swiftEmptyArrayStorage);

    goto LABEL_13;
  }

  v10 = [objc_opt_self() standardUserDefaults];
  v11 = String._bridgeToObjectiveC()();
  v12 = [v10 objectForKey:v11];

  if (v12)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v26 = 0u;
    v27 = 0u;
  }

  v28[0] = v26;
  v28[1] = v27;
  if (!*(&v27 + 1))
  {
    sub_10000B3A8(v28, &unk_1016A0B10, &qword_10139BF40);
    return sub_100909370(_swiftEmptyArrayStorage);
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    return sub_100909370(_swiftEmptyArrayStorage);
  }

  v1 = v24;
  v8 = v25;
  sub_100017D5C(v24, v25);
  type metadata accessor for MACAddress();
  type metadata accessor for Date();
  sub_100019D54(&qword_1016A41D0, &type metadata accessor for MACAddress);
  sub_100019D54(&qword_10169B550, &type metadata accessor for MACAddress);
  sub_100019D54(&unk_1016BC080, &type metadata accessor for MACAddress);
  sub_100019D54(&qword_101697F40, &type metadata accessor for Date);
  sub_100019D54(&unk_101697F60, &type metadata accessor for Date);
  v22 = Dictionary<>.init(dataRepresentation:)();
LABEL_13:
  sub_100016590(v1, v8);
  return v22;
}

void sub_10042D008()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = (&v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + 48);
  *v5 = v6;
  (*(v2 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v1);
  v7 = v6;
  LOBYTE(v6) = _dispatchPreconditionTest(_:)();
  (*(v2 + 8))(v5, v1);
  if (v6)
  {
    v8 = [objc_opt_self() standardUserDefaults];
    type metadata accessor for MACAddress();
    type metadata accessor for Date();
    sub_100019D54(&qword_1016A41D0, &type metadata accessor for MACAddress);
    sub_100019D54(&qword_10169B550, &type metadata accessor for MACAddress);
    sub_100019D54(&unk_1016BC080, &type metadata accessor for MACAddress);
    sub_100019D54(&qword_101697F40, &type metadata accessor for Date);
    sub_100019D54(&unk_101697F60, &type metadata accessor for Date);
    v9 = Dictionary<>.dataRepresentation.getter();
    v11 = v10;

    isa = Data._bridgeToObjectiveC()().super.isa;
    sub_100016590(v9, v11);
    v13 = String._bridgeToObjectiveC()();
    [v8 setObject:isa forKey:v13];
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_10042D2E0()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = (&v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + 48);
  *v5 = v6;
  (*(v2 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v1);
  v7 = v6;
  LOBYTE(v6) = _dispatchPreconditionTest(_:)();
  v9 = *(v2 + 8);
  v8 = v2 + 8;
  v9(v5, v1);
  if ((v6 & 1) == 0)
  {
    __break(1u);
    swift_once();
    v13 = type metadata accessor for Logger();
    sub_1000076D4(v13, qword_10177C418);
    swift_errorRetain();
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *&v28[0] = v17;
      *v16 = 136446210;
      *&v26 = v5;
      swift_errorRetain();
      sub_1000BC4D4(&qword_101696960, &unk_10138B220);
      v18 = String.init<A>(describing:)();
      v20 = sub_1000136BC(v18, v19, v28);

      *(v16 + 4) = v20;
      _os_log_impl(&_mh_execute_header, v14, v15, "Unable to retrieve lastRetryAttempt due to %{public}s", v16, 0xCu);
      sub_100007BAC(v17);
    }

    v22 = sub_100909590(_swiftEmptyArrayStorage);

    goto LABEL_13;
  }

  v10 = [objc_opt_self() standardUserDefaults];
  v11 = String._bridgeToObjectiveC()();
  v12 = [v10 objectForKey:v11];

  if (v12)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v26 = 0u;
    v27 = 0u;
  }

  v28[0] = v26;
  v28[1] = v27;
  if (!*(&v27 + 1))
  {
    sub_10000B3A8(v28, &unk_1016A0B10, &qword_10139BF40);
    return sub_100909590(_swiftEmptyArrayStorage);
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    return sub_100909590(_swiftEmptyArrayStorage);
  }

  v1 = v24;
  v8 = v25;
  sub_100017D5C(v24, v25);
  type metadata accessor for MACAddress();
  sub_100019D54(&qword_1016A41D0, &type metadata accessor for MACAddress);
  sub_100019D54(&qword_10169B550, &type metadata accessor for MACAddress);
  sub_100019D54(&unk_1016BC080, &type metadata accessor for MACAddress);
  v22 = Dictionary<>.init(dataRepresentation:)();
LABEL_13:
  sub_100016590(v1, v8);
  return v22;
}

void sub_10042D744()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = (&v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + 48);
  *v5 = v6;
  (*(v2 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v1);
  v7 = v6;
  LOBYTE(v6) = _dispatchPreconditionTest(_:)();
  (*(v2 + 8))(v5, v1);
  if (v6)
  {
    v8 = [objc_opt_self() standardUserDefaults];
    type metadata accessor for MACAddress();
    sub_100019D54(&qword_1016A41D0, &type metadata accessor for MACAddress);
    sub_100019D54(&qword_10169B550, &type metadata accessor for MACAddress);
    sub_100019D54(&unk_1016BC080, &type metadata accessor for MACAddress);
    v9 = Dictionary<>.dataRepresentation.getter();
    v11 = v10;

    isa = Data._bridgeToObjectiveC()().super.isa;
    sub_100016590(v9, v11);
    v13 = String._bridgeToObjectiveC()();
    [v8 setObject:isa forKey:v13];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10042D9A8()
{
  v1 = v0;
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  v2 = *(qword_10177B348 + 40);
  OS_dispatch_queue.sync<A>(execute:)();
  v3 = sub_1010748A8(v19);

  if (v3)
  {
    return 1;
  }

  if (qword_1016946F0 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_10177AD08);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Pairing retry on all devices is NOT allowed from server. Checking for Me device or only connectable device.", v8, 2u);
  }

  if (qword_101695510 != -1)
  {
    swift_once();
  }

  v9 = *(qword_10177CEA0 + 24);

  AnyCurrentValuePublisher.value.getter();

  v10 = *(v1 + 160);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 67240704;
    *(v13 + 4) = v19 == 1;
    *(v13 + 8) = 2048;
    *(v13 + 10) = v10;
    *(v13 + 18) = 1026;
    result = [objc_opt_self() defaultStore];
    if (!result)
    {
      __break(1u);
      goto LABEL_24;
    }

    v14 = result;
    v15 = [result aa_primaryAppleAccount];

    if (v15)
    {

      v16 = 1;
    }

    else
    {
      v16 = 0;
    }

    *(v13 + 20) = v16;
    _os_log_impl(&_mh_execute_header, v11, v12, "isPairingRetryAllowed: isMeDevice %{BOOL,public}d, connectableDevicesCount %ld, isiCloudSignedIn %{BOOL,public}d.", v13, 0x18u);
  }

  result = 1;
  if (v19 == 1 || v10 == 1)
  {
    return result;
  }

  result = [objc_opt_self() defaultStore];
  if (!result)
  {
LABEL_24:
    __break(1u);
    return result;
  }

  v17 = result;
  v18 = [result aa_primaryAppleAccount];

  if (!v18)
  {
    return 1;
  }

  return 0;
}

Swift::Int sub_10042DCF0()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10042DDC0()
{
  *v0;
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int sub_10042DE7C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_10042DF48@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100467074(*a1);
  *a2 = result;
  return result;
}

void sub_10042DF78(unint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x6E776F6E6B6E75;
  v4 = 0xEE00646572696170;
  v5 = 0x6E55794D646E6966;
  if (*v1 != 2)
  {
    v5 = 0x646572696170;
    v4 = 0xE600000000000000;
  }

  if (*v1)
  {
    v3 = 0xD000000000000011;
    v2 = 0x8000000101347C10;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_10042E0B4()
{
  if (*v0)
  {
    return 0x74756F656D69742ELL;
  }

  else
  {
    return 0x6E776F6E6B6E752ELL;
  }
}

uint64_t sub_10042E0E8()
{
  v1 = v0;
  v2 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v78 = v57 - v4;
  v5 = sub_1000BC4D4(&qword_10169BD08, &unk_101395B50);
  v6 = *(v5 - 8);
  v72 = v5;
  v73 = v6;
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v70 = v57 - v8;
  v9 = sub_1000BC4D4(&qword_1016A0680, &qword_1013A3778);
  v10 = *(v9 - 8);
  v74 = v9;
  v75 = v10;
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v69 = v57 - v12;
  v13 = sub_1000BC4D4(&qword_1016A0688, &qword_1013A3780);
  v14 = *(v13 - 8);
  v76 = v13;
  v77 = v14;
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v71 = v57 - v16;
  v17 = sub_1000BC4D4(&unk_1016B0FE0, &unk_101391980);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v79 = v57 - v19;
  v59 = sub_1000BC4D4(&qword_1016A0690, &qword_1013A3788);
  v20 = *(v59 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v59);
  v23 = v57 - v22;
  v24 = sub_1000BC4D4(&qword_1016A0698, &qword_1013A3790);
  v25 = *(v24 - 8);
  v61 = v24;
  v62 = v25;
  v26 = *(v25 + 64);
  __chkstk_darwin(v24);
  v28 = v57 - v27;
  v66 = sub_1000BC4D4(&qword_1016A06A0, &qword_1013A3798);
  v68 = *(v66 - 8);
  v29 = *(v68 + 64);
  __chkstk_darwin(v66);
  v31 = v57 - v30;
  v67 = *(v0 + 16);
  v80 = sub_100A96C40();
  sub_1000BC4D4(&qword_101698DA0, &unk_101390950);
  v65 = type metadata accessor for OwnedBeaconGroup(0);
  v64 = &protocol conformance descriptor for AnyPublisher<A, B>;
  sub_1000041A4(&qword_101698DA8, &qword_101698DA0, &unk_101390950);
  Publisher.compactMap<A>(_:)();

  v63 = &protocol conformance descriptor for Publishers.CompactMap<A, B>;
  sub_1000041A4(&qword_1016A06A8, &qword_1016A0690, &qword_1013A3788);
  v60 = sub_100019D54(&qword_1016A06B0, type metadata accessor for OwnedBeaconGroup);
  v32 = v59;
  Publisher<>.removeDuplicates()();
  (*(v20 + 8))(v23, v32);
  v80 = *(v0 + 48);
  v33 = v80;
  v34 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v35 = *(v34 - 8);
  v58 = *(v35 + 56);
  v59 = v35 + 56;
  v36 = v79;
  v58(v79, 1, 1, v34);
  v57[1] = sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
  sub_1000041A4(&qword_1016A06B8, &qword_1016A0698, &qword_1013A3790);
  sub_1004682F0();
  v57[0] = v33;
  v37 = v61;
  Publisher.receive<A>(on:options:)();
  sub_10000B3A8(v36, &unk_1016B0FE0, &unk_101391980);
  (*(v62 + 8))(v28, v37);
  sub_1000041A4(&qword_1016A06C0, &qword_1016A06A0, &qword_1013A3798);

  v38 = v66;
  v39 = Publisher<>.sink(receiveValue:)();

  (*(v68 + 8))(v31, v38);
  v40 = *(v1 + 88);
  *(v1 + 88) = v39;

  v80 = *(v67 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_recordDeletedPublisher);

  sub_1000BC4D4(&qword_1016B2880, &qword_1013CAF30);
  sub_1000041A4(&qword_101698DC0, &qword_1016B2880, &qword_1013CAF30);
  v41 = v70;
  Publisher.compactMap<A>(_:)();

  sub_1000041A4(&qword_10169BD18, &qword_10169BD08, &unk_101395B50);
  v42 = v69;
  v43 = v72;
  Publisher<>.removeDuplicates()();
  (*(v73 + 8))(v41, v43);
  v44 = v57[0];
  v80 = v57[0];
  v45 = v79;
  v58(v79, 1, 1, v34);
  sub_1000041A4(&qword_1016A06C8, &qword_1016A0680, &qword_1013A3778);
  v46 = v71;
  v47 = v74;
  Publisher.receive<A>(on:options:)();
  sub_10000B3A8(v45, &unk_1016B0FE0, &unk_101391980);

  (*(v75 + 8))(v42, v47);
  sub_1000041A4(&qword_1016A06D0, &qword_1016A0688, &qword_1013A3780);

  v48 = v76;
  v49 = Publisher<>.sink(receiveValue:)();

  (*(v77 + 8))(v46, v48);
  v50 = *(v1 + 96);
  *(v1 + 96) = v49;

  sub_10043DFA0();
  sub_100437944();
  v51 = type metadata accessor for TaskPriority();
  v52 = *(*(v51 - 8) + 56);
  v53 = v78;
  v52(v78, 1, 1, v51);
  v54 = swift_allocObject();
  v54[2] = 0;
  v54[3] = 0;
  v54[4] = v1;

  sub_1008CE048(0, 0, v53, &unk_1013A37A8, v54);

  sub_10000B3A8(v53, &qword_101698C00, &qword_10138B570);
  v52(v53, 1, 1, v51);
  v55 = swift_allocObject();
  v55[2] = 0;
  v55[3] = 0;
  v55[4] = v1;

  sub_1008CE048(0, 0, v53, &unk_1013A37B8, v55);

  return sub_10000B3A8(v53, &qword_101698C00, &qword_10138B570);
}

uint64_t sub_10042EBA0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  sub_10001F280(a1, v10);
  sub_1000BC4D4(a2, a3);
  v7 = type metadata accessor for OwnedBeaconGroup(0);
  v8 = swift_dynamicCast();
  return (*(*(v7 - 8) + 56))(a4, v8 ^ 1u, 1, v7);
}

uint64_t sub_10042EC4C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100014744;

  return sub_10042ECDC();
}

uint64_t sub_10042ECDC()
{
  v1[6] = v0;
  v2 = sub_1000BC4D4(&qword_10169B780, &unk_101395260);
  v1[7] = v2;
  v3 = *(v2 - 8);
  v1[8] = v3;
  v4 = *(v3 + 64) + 15;
  v1[9] = swift_task_alloc();
  v5 = sub_1000BC4D4(&qword_10169B788, &qword_1013A3770);
  v1[10] = v5;
  v6 = *(v5 - 8);
  v1[11] = v6;
  v7 = *(v6 + 64) + 15;
  v1[12] = swift_task_alloc();
  v8 = async function pointer to daemon.getter[1];
  v9 = swift_task_alloc();
  v1[13] = v9;
  *v9 = v1;
  v9[1] = sub_10042EE40;

  return daemon.getter();
}

uint64_t sub_10042EE40(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 104);
  v12 = *v1;
  v3[14] = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  v3[15] = v6;
  v7 = type metadata accessor for Daemon();
  v3[16] = v7;
  v8 = type metadata accessor for LegacyServiceContainer();
  v9 = sub_100019D54(&qword_1016AA400, &type metadata accessor for Daemon);
  v10 = sub_100019D54(&unk_101698D70, type metadata accessor for LegacyServiceContainer);
  *v6 = v12;
  v6[1] = sub_10042F020;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_10042F020(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 120);
  v10 = *v2;
  v4[17] = a1;
  v4[18] = v1;

  if (v1)
  {
    v6 = v4[14];

    v7 = sub_10042F51C;
    v8 = 0;
  }

  else
  {
    v7 = sub_10042F15C;
    v8 = a1;
  }

  return _swift_task_switch(v7, v8, 0);
}

uint64_t sub_10042F15C()
{
  v1 = v0[17];
  v2 = v0[18];
  sub_10001B108();
  v0[19] = v3;
  v4 = v0[16];
  v5 = v0[14];
  if (v2)
  {

    sub_100019D54(&qword_1016969E0, &type metadata accessor for Daemon);
    v6 = dispatch thunk of Actor.unownedExecutor.getter();
    v8 = v7;
    v9 = sub_10042F4A8;
  }

  else
  {
    sub_100019D54(&qword_1016969E0, &type metadata accessor for Daemon);
    v6 = dispatch thunk of Actor.unownedExecutor.getter();
    v8 = v10;
    v9 = sub_10042F284;
  }

  return _swift_task_switch(v9, v6, v8);
}

uint64_t sub_10042F284()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 112);

  return _swift_task_switch(sub_10042F2F8, 0, 0);
}

uint64_t sub_10042F2F8()
{
  v1 = v0[12];
  v3 = v0[8];
  v2 = v0[9];
  v4 = v0[7];
  v5 = *(v0[19] + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_connectableDevicesChangedPublisher);
  v0[4] = AnyCurrentValuePublisher.publisher.getter();
  sub_1000BC4D4(&qword_10169B790, &unk_101395270);
  sub_1000041A4(&qword_10169B798, &qword_10169B790, &unk_101395270);
  Publisher<>.values.getter();

  AsyncPublisher.makeAsyncIterator()();
  (*(v3 + 8))(v2, v4);
  v6 = sub_1000041A4(&qword_10169B7A8, &qword_10169B788, &qword_1013A3770);
  v7 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
  v8 = swift_task_alloc();
  v0[20] = v8;
  *v8 = v0;
  v8[1] = sub_10042F5F4;
  v9 = v0[12];
  v10 = v0[10];

  return dispatch thunk of AsyncIteratorProtocol.next()(v0 + 2, v10, v6);
}

uint64_t sub_10042F4A8()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 112);

  return _swift_task_switch(sub_10042F51C, 0, 0);
}

uint64_t sub_10042F51C()
{
  static os_log_type_t.error.getter();
  if (qword_1016950B8 != -1)
  {
    swift_once();
  }

  os_log(_:dso:log:_:_:)();
  v1 = v0[12];
  v2 = v0[9];

  v3 = v0[1];

  return v3();
}

uint64_t sub_10042F5F4()
{
  v2 = *(*v1 + 160);
  v5 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v3 = sub_10042F88C;
  }

  else
  {
    v3 = sub_10042F708;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10042F708()
{
  *(v0 + 176) = *(v0 + 16);
  *(v0 + 25) = *(v0 + 24);
  return _swift_task_switch(sub_10042F734, 0, 0);
}

uint64_t sub_10042F734()
{
  if (*(v0 + 25))
  {
    v1 = *(v0 + 152);
    (*(*(v0 + 88) + 8))(*(v0 + 96), *(v0 + 80));

    v2 = *(v0 + 96);
    v3 = *(v0 + 72);

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    atomic_exchange((*(v0 + 48) + 160), *(v0 + 176));
    v6 = sub_1000041A4(&qword_10169B7A8, &qword_10169B788, &qword_1013A3770);
    v7 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
    v8 = swift_task_alloc();
    *(v0 + 160) = v8;
    *v8 = v0;
    v8[1] = sub_10042F5F4;
    v9 = *(v0 + 96);
    v10 = *(v0 + 80);

    return dispatch thunk of AsyncIteratorProtocol.next()(v0 + 16, v10, v6);
  }
}

uint64_t sub_10042F88C()
{
  *(v0 + 40) = *(v0 + 168);
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

uint64_t sub_10042F918(uint64_t a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v21 = *(v3 - 8);
  v4 = *(v21 + 64);
  __chkstk_darwin(v3);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v19 = *(v7 - 8);
  v20 = v7;
  v8 = *(v19 + 64);
  __chkstk_darwin(v7);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for MACAddress();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v18[1] = *(v1 + 48);
  (*(v12 + 16))(v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v11);
  v14 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v15 = swift_allocObject();
  (*(v12 + 32))(v15 + v14, v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v11);
  *(v15 + ((v13 + v14 + 7) & 0xFFFFFFFFFFFFFFF8)) = v1;
  aBlock[4] = sub_10046B60C;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_10161E030;
  v16 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v22 = _swiftEmptyArrayStorage;
  sub_100019D54(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);
  (*(v21 + 8))(v6, v3);
  (*(v19 + 8))(v10, v20);
}

void sub_10042FCB8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MACAddress();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1016946F0 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_1000076D4(v9, qword_10177AD08);
  (*(v5 + 16))(v8, a1, v4);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v20 = a2;
    v13 = v12;
    v21 = swift_slowAlloc();
    *v13 = 136315394;
    *(v13 + 4) = sub_1000136BC(0xD000000000000010, 0x80000001013552D0, &v21);
    *(v13 + 12) = 2082;
    sub_100019D54(&qword_1016A4210, &type metadata accessor for MACAddress);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    (*(v5 + 8))(v8, v4);
    v17 = sub_1000136BC(v14, v16, &v21);

    *(v13 + 14) = v17;
    _os_log_impl(&_mh_execute_header, v10, v11, "%s %{public}s", v13, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v5 + 8))(v8, v4);
  }

  v18 = sub_10042C0FC();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v21 = v18;
  sub_100FFCE84(2, a1, isUniquelyReferenced_nonNull_native);
  sub_10042C564();
}

uint64_t sub_10042FFA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100443154(a2, a3);
  }

  return result;
}

uint64_t sub_100430014@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v20[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = [*(a2 + OBJC_IVAR____TtC12searchpartyd10Peripheral_underlyingObject) identifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  swift_beginAccess();
  v12 = *(a1 + 192);
  if (!*(v12 + 16))
  {
    goto LABEL_5;
  }

  v13 = sub_1000210EC(v10);
  if ((v14 & 1) == 0)
  {

LABEL_5:
    result = (*(v7 + 8))(v10, v6);
    v19 = 0;
    goto LABEL_6;
  }

  v15 = *(*(v12 + 56) + 8 * v13);
  v16 = *(v7 + 8);

  v16(v10, v6);

  v17 = *(v15 + 24);
  QueueSynchronizer.conditionalSync<A>(_:)();

  v19 = v20[47];
LABEL_6:
  *a3 = v19;
  return result;
}

void sub_1004301E0(uint64_t a1)
{
  v2 = v1;
  v55 = a1;
  v3 = type metadata accessor for OwnedBeaconGroup(0);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3);
  v54 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v53 = &v52 - v7;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v52 - v14;
  v16 = type metadata accessor for DispatchPredicate();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = (&v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = v2[6];
  *v20 = v21;
  (*(v17 + 104))(v20, enum case for DispatchPredicate.onQueue(_:), v16);
  v22 = v21;
  v23 = _dispatchPreconditionTest(_:)();
  (*(v17 + 8))(v20, v16);
  if ((v23 & 1) == 0)
  {
    __break(1u);
    goto LABEL_18;
  }

  v24 = v55;
  (*(v9 + 16))(v13, v55 + *(v3 + 24), v8);
  swift_beginAccess();
  v25 = sub_100DE8BCC(v15, v13);
  (*(v9 + 8))(v15, v8);
  swift_endAccess();
  v23 = v3;
  v9 = v24;
  v20 = v2;
  if (v25)
  {
    if (qword_1016946F0 == -1)
    {
LABEL_4:
      v26 = type metadata accessor for Logger();
      sub_1000076D4(v26, qword_10177AD08);
      v27 = v53;
      sub_10046A814(v9, v53, type metadata accessor for OwnedBeaconGroup);
      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v56[0] = v31;
        *v30 = 141558275;
        *(v30 + 4) = 1752392040;
        *(v30 + 12) = 2081;
        v32 = *(v23 + 24);
        sub_100019D54(&qword_101696930, &type metadata accessor for UUID);
        v33 = dispatch thunk of CustomStringConvertible.description.getter();
        v35 = v34;
        sub_10046B858(v27, type metadata accessor for OwnedBeaconGroup);
        v36 = sub_1000136BC(v33, v35, v56);

        *(v30 + 14) = v36;
        _os_log_impl(&_mh_execute_header, v28, v29, "Posting SPAccessoryDidPair Darwin notification for %{private,mask.hash}s", v30, 0x16u);
        sub_100007BAC(v31);
      }

      else
      {

        sub_10046B858(v27, type metadata accessor for OwnedBeaconGroup);
      }

      v48 = v20[2] + OBJC_IVAR____TtC12searchpartyd11BeaconStore_didPairPoster;
      ThrottledDarwinPoster.post(bypassRateLimit:)(1);
      if (v49)
      {
      }

      My = type metadata accessor for Feature.FindMy();
      v56[3] = My;
      v56[4] = sub_100019D54(&qword_1016AF950, &type metadata accessor for Feature.FindMy);
      v51 = sub_1000280DC(v56);
      (*(*(My - 8) + 104))(v51, enum case for Feature.FindMy.managedCBPeripheral(_:), My);
      LOBYTE(My) = isFeatureEnabled(_:)();
      sub_100007BAC(v56);
      if (My)
      {
        static DarwinNotification.post(name:)();
      }

      return;
    }

LABEL_18:
    swift_once();
    goto LABEL_4;
  }

  if (qword_1016946F0 != -1)
  {
    swift_once();
  }

  v37 = type metadata accessor for Logger();
  sub_1000076D4(v37, qword_10177AD08);
  v38 = v54;
  sub_10046A814(v24, v54, type metadata accessor for OwnedBeaconGroup);
  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v56[0] = v42;
    *v41 = 141558275;
    *(v41 + 4) = 1752392040;
    *(v41 + 12) = 2081;
    v43 = *(v23 + 24);
    sub_100019D54(&qword_101696930, &type metadata accessor for UUID);
    v44 = dispatch thunk of CustomStringConvertible.description.getter();
    v46 = v45;
    sub_10046B858(v38, type metadata accessor for OwnedBeaconGroup);
    v47 = sub_1000136BC(v44, v46, v56);

    *(v41 + 14) = v47;
    _os_log_impl(&_mh_execute_header, v39, v40, "Already posted SPAccessoryDidPair for %{private,mask.hash}s", v41, 0x16u);
    sub_100007BAC(v42);
  }

  else
  {

    sub_10046B858(v38, type metadata accessor for OwnedBeaconGroup);
  }
}

void sub_100430904(void (*a1)(char *, uint64_t))
{
  v184 = a1;
  v2 = sub_1000BC4D4(&qword_101699860, &qword_1013A34D0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v168 = &v161 - v4;
  v171 = type metadata accessor for Device();
  v169 = *(v171 - 8);
  v5 = *(v169 + 64);
  v6 = __chkstk_darwin(v171);
  v7 = __chkstk_darwin(v6);
  v167 = &v161 - v8;
  v9 = __chkstk_darwin(v7);
  v166 = &v161 - v10;
  __chkstk_darwin(v9);
  v170 = &v161 - v11;
  v179 = type metadata accessor for UUID();
  v176 = *(v179 - 8);
  v12 = *(v176 + 64);
  __chkstk_darwin(v179);
  v177 = &v161 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v182 = sub_1000BC4D4(&qword_1016A40D0, &unk_10138BE70);
  v14 = *(*(v182 - 1) + 64);
  __chkstk_darwin(v182);
  v181 = &v161 - v15;
  v16 = type metadata accessor for OwnedBeaconGroup(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = __chkstk_darwin(v16);
  v178 = &v161 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v165 = &v161 - v21;
  v22 = __chkstk_darwin(v20);
  v175 = &v161 - v23;
  v24 = __chkstk_darwin(v22);
  v174 = &v161 - v25;
  v26 = __chkstk_darwin(v24);
  v172 = &v161 - v27;
  v28 = __chkstk_darwin(v26);
  v30 = &v161 - v29;
  __chkstk_darwin(v28);
  v32 = &v161 - v31;
  v33 = type metadata accessor for DispatchPredicate();
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  __chkstk_darwin(v33);
  v37 = (&v161 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  v183 = v1;
  v38 = *(v1 + 48);
  *v37 = v38;
  (*(v34 + 104))(v37, enum case for DispatchPredicate.onQueue(_:), v33);
  v39 = v38;
  LOBYTE(v38) = _dispatchPreconditionTest(_:)();
  (*(v34 + 8))(v37, v33);
  if (v38)
  {
    v164 = v5;
    v163 = &v161 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (qword_1016946F0 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v173 = type metadata accessor for Logger();
  v40 = sub_1000076D4(v173, qword_10177AD08);
  v41 = v184;
  sub_10046A814(v184, v32, type metadata accessor for OwnedBeaconGroup);
  sub_10046A814(v41, v30, type metadata accessor for OwnedBeaconGroup);
  v42 = Logger.logObject.getter();
  v43 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v180 = v40;
    v45 = v44;
    v185[0] = swift_slowAlloc();
    *v45 = 141558787;
    *(v45 + 4) = 1752392040;
    *(v45 + 12) = 2081;
    v46 = *(v16 + 24);
    sub_100019D54(&qword_101696930, &type metadata accessor for UUID);
    v47 = dispatch thunk of CustomStringConvertible.description.getter();
    v49 = v48;
    sub_10046B858(v32, type metadata accessor for OwnedBeaconGroup);
    v50 = sub_1000136BC(v47, v49, v185);

    *(v45 + 14) = v50;
    *(v45 + 22) = 2160;
    *(v45 + 24) = 1752392040;
    *(v45 + 32) = 2081;
    v51 = *(v16 + 28);
    type metadata accessor for MACAddress();
    sub_100019D54(&qword_1016A4210, &type metadata accessor for MACAddress);
    v52 = dispatch thunk of CustomStringConvertible.description.getter();
    v54 = v53;
    v41 = v184;
    sub_10046B858(v30, type metadata accessor for OwnedBeaconGroup);
    v55 = sub_1000136BC(v52, v54, v185);

    *(v45 + 34) = v55;
    _os_log_impl(&_mh_execute_header, v42, v43, "BA unpaired groupIdentifier: %{private,mask.hash}s,\nmac: %{private,mask.hash}s. Need to BT unpair.", v45, 0x2Au);
    swift_arrayDestroy();

    v40 = v180;
  }

  else
  {

    sub_10046B858(v30, type metadata accessor for OwnedBeaconGroup);
    sub_10046B858(v32, type metadata accessor for OwnedBeaconGroup);
  }

  v56 = v183;
  v57 = sub_100437674();
  v58 = v41 + *(v16 + 28);
  v59 = v57[3];
  *(&v161 - 2) = __chkstk_darwin(v57);
  *(&v161 - 1) = v58;
  v60 = v181;
  OS_dispatch_queue.sync<A>(execute:)();
  sub_10000B3A8(v60, &qword_1016A40D0, &unk_10138BE70);
  v61 = *(v56 + 16);
  v62 = sub_100AC607C(v58)[2];

  if (v62)
  {
    v64 = v178;
    sub_10046A814(v41, v178, type metadata accessor for OwnedBeaconGroup);
    v65 = Logger.logObject.getter();
    v66 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v185[0] = v68;
      *v67 = 141558275;
      *(v67 + 4) = 1752392040;
      *(v67 + 12) = 2081;
      v69 = *(v16 + 28);
      type metadata accessor for MACAddress();
      sub_100019D54(&qword_1016A4210, &type metadata accessor for MACAddress);
      v70 = dispatch thunk of CustomStringConvertible.description.getter();
      v72 = v71;
      sub_10046B858(v64, type metadata accessor for OwnedBeaconGroup);
      v73 = sub_1000136BC(v70, v72, v185);

      *(v67 + 14) = v73;
      v74 = "We have at least one beacon group for the same MAC: %{private,mask.hash}s, do NOT BT unpair.";
LABEL_26:
      _os_log_impl(&_mh_execute_header, v65, v66, v74, v67, 0x16u);
      sub_100007BAC(v68);

      goto LABEL_27;
    }

    goto LABEL_43;
  }

  v180 = v40;
  v75 = *(*(*(v56 + 32) + 24) + OBJC_IVAR____TtC12searchpartyd14CentralManager_lock);
  __chkstk_darwin(v63);
  *(&v161 - 2) = v58;
  *(&v161 - 1) = v76;
  sub_1000BC4D4(&unk_1016A6370, &unk_101391AA0);
  Lock.callAsFunction<A>(_:)();
  v77 = v56;
  v78 = v185[0];
  if (v185[0])
  {
    v79 = [*(v185[0] + OBJC_IVAR____TtC12searchpartyd10Peripheral_underlyingObject) identifier];
    v80 = v177;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    swift_beginAccess();
    v81 = *(v77 + 192);
    if (*(v81 + 16))
    {

      v82 = sub_1000210EC(v80);
      if (v83)
      {
        v162 = v57;
        v84 = *(*(v81 + 56) + 8 * v82);
        v85 = *(v176 + 8);

        v85(v80, v179);

        v86 = *(v84 + 24);
        QueueSynchronizer.conditionalSync<A>(_:)();
        if (LOBYTE(v185[0]) == 1)
        {
          v64 = v172;
          sub_10046A814(v184, v172, type metadata accessor for OwnedBeaconGroup);
          v65 = Logger.logObject.getter();
          v87 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v65, v87))
          {
            v88 = swift_slowAlloc();
            v89 = swift_slowAlloc();
            v185[0] = v89;
            *v88 = 141558275;
            *(v88 + 4) = 1752392040;
            *(v88 + 12) = 2081;
            v90 = *(v16 + 28);
            type metadata accessor for MACAddress();
            sub_100019D54(&qword_1016A4210, &type metadata accessor for MACAddress);
            v91 = dispatch thunk of CustomStringConvertible.description.getter();
            v93 = v92;
            sub_10046B858(v64, type metadata accessor for OwnedBeaconGroup);
            v94 = sub_1000136BC(v91, v93, v185);

            *(v88 + 14) = v94;
            _os_log_impl(&_mh_execute_header, v65, v87, "Pairing is in progress for %{private,mask.hash}s, do NOT BT unpair.", v88, 0x16u);
            sub_100007BAC(v89);

LABEL_27:

            return;
          }

          goto LABEL_44;
        }

        v41 = v184;
        v57 = v162;
        goto LABEL_18;
      }
    }

    (*(v176 + 8))(v80, v179);
  }

LABEL_18:
  v95 = sub_10042C0FC();
  if (!*(v95 + 16) || (v96 = sub_1007723C0(v58), (v97 & 1) == 0))
  {

    v64 = v175;
    sub_10046A814(v41, v175, type metadata accessor for OwnedBeaconGroup);
    v65 = Logger.logObject.getter();
    v66 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v185[0] = v68;
      *v67 = 141558275;
      *(v67 + 4) = 1752392040;
      *(v67 + 12) = 2081;
      v104 = *(v16 + 28);
      type metadata accessor for MACAddress();
      sub_100019D54(&qword_1016A4210, &type metadata accessor for MACAddress);
      v105 = dispatch thunk of CustomStringConvertible.description.getter();
      v107 = v106;
      sub_10046B858(v64, type metadata accessor for OwnedBeaconGroup);
      v108 = sub_1000136BC(v105, v107, v185);

      *(v67 + 14) = v108;
      v74 = "No previous BT pairing event when unpairing %{private,mask.hash}s, do NOT BT unpair.";
      goto LABEL_26;
    }

    goto LABEL_43;
  }

  v98 = *(*(v95 + 56) + v96);

  v99 = Logger.logObject.getter();
  v100 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v99, v100))
  {
    v101 = 0xD000000000000011;
    v102 = swift_slowAlloc();
    v185[0] = swift_slowAlloc();
    *v102 = 136315394;
    *(v102 + 4) = sub_1000136BC(0xD000000000000016, 0x80000001013552B0, v185);
    *(v102 + 12) = 2082;
    v161 = v16;
    if (v98 > 1)
    {
      if (v98 == 2)
      {
        v103 = 0xEE00646572696170;
        v101 = 0x6E55794D646E6966;
      }

      else
      {
        v103 = 0xE600000000000000;
        v101 = 0x646572696170;
      }
    }

    else if (v98)
    {
      v103 = 0x8000000101347C10;
    }

    else
    {
      v103 = 0xE700000000000000;
      v101 = 0x6E776F6E6B6E75;
    }

    v109 = sub_1000136BC(v101, v103, v185);

    *(v102 + 14) = v109;
    _os_log_impl(&_mh_execute_header, v99, v100, "%s lastPairingEvent %{public}s", v102, 0x16u);
    swift_arrayDestroy();

    v16 = v161;
    v41 = v184;
  }

  else
  {
  }

  if ((v98 - 1) >= 2)
  {
    v64 = v174;
    sub_10046A814(v41, v174, type metadata accessor for OwnedBeaconGroup);
    v65 = Logger.logObject.getter();
    v66 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v185[0] = v68;
      *v67 = 141558275;
      *(v67 + 4) = 1752392040;
      *(v67 + 12) = 2081;
      v111 = *(v16 + 28);
      type metadata accessor for MACAddress();
      sub_100019D54(&qword_1016A4210, &type metadata accessor for MACAddress);
      v112 = dispatch thunk of CustomStringConvertible.description.getter();
      v114 = v113;
      sub_10046B858(v64, type metadata accessor for OwnedBeaconGroup);
      v115 = sub_1000136BC(v112, v114, v185);

      *(v67 + 14) = v115;
      v74 = "We've already re-paired since last unpair %{private,mask.hash}s, do NOT BT unpair.";
      goto LABEL_26;
    }

    goto LABEL_43;
  }

  sub_1000BC4D4(&qword_1016A04C8, &unk_1013DD710);
  v110 = unsafeFromAsyncTask<A>(_:)();
  v116 = v185[0];
  __chkstk_darwin(v110);
  *(&v161 - 2) = v41;
  v117 = v168;
  sub_1012BC1FC(sub_10046B3AC, v116, v168);

  v118 = v169;
  v119 = v171;
  v120 = (*(v169 + 48))(v117, 1, v171);
  if (v120 == 1)
  {
    sub_10000B3A8(v117, &qword_101699860, &qword_1013A34D0);
    v64 = v165;
    sub_10046A814(v41, v165, type metadata accessor for OwnedBeaconGroup);
    v65 = Logger.logObject.getter();
    v66 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v185[0] = v68;
      *v67 = 141558275;
      *(v67 + 4) = 1752392040;
      *(v67 + 12) = 2081;
      v121 = *(v16 + 28);
      type metadata accessor for MACAddress();
      sub_100019D54(&qword_1016A4210, &type metadata accessor for MACAddress);
      v122 = dispatch thunk of CustomStringConvertible.description.getter();
      v124 = v123;
      sub_10046B858(v64, type metadata accessor for OwnedBeaconGroup);
      v125 = sub_1000136BC(v122, v124, v185);

      *(v67 + 14) = v125;
      v74 = "No BT device for %{private,mask.hash}s!";
      goto LABEL_26;
    }

LABEL_43:

LABEL_44:
    sub_10046B858(v64, type metadata accessor for OwnedBeaconGroup);
    return;
  }

  v183 = 0;
  v162 = v57;
  v126 = v170;
  v182 = v118[4];
  v182(v170, v117, v119);
  v127 = v166;
  v184 = v118[2];
  (v184)(v166, v126, v119);
  v128 = v119;
  v129 = v118;
  v130 = Logger.logObject.getter();
  v131 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v130, v131))
  {
    v132 = swift_slowAlloc();
    v133 = v118;
    v134 = swift_slowAlloc();
    v185[0] = v134;
    *v132 = 136446210;
    sub_100019D54(&unk_1016B7C90, &type metadata accessor for Device);
    v135 = dispatch thunk of CustomStringConvertible.description.getter();
    v136 = v127;
    v138 = v137;
    v139 = v133[1];
    v139(v136, v128);
    v140 = sub_1000136BC(v135, v138, v185);

    *(v132 + 4) = v140;
    _os_log_impl(&_mh_execute_header, v130, v131, "BT unpairing %{public}s...", v132, 0xCu);
    sub_100007BAC(v134);

    v129 = v169;
  }

  else
  {

    v139 = v118[1];
    v139(v127, v128);
  }

  v141 = v167;
  v142 = v184;
  (v184)(v167, v170, v128);
  v143 = (*(v129 + 80) + 16) & ~*(v129 + 80);
  v144 = swift_allocObject();
  v145 = v171;
  v182((v144 + v143), v141, v171);
  v146 = v183;
  unsafeFromAsyncTask<A>(_:)();
  if (v146)
  {

    if (qword_1016950D0 != -1)
    {
      swift_once();
    }

    sub_1000076D4(v173, qword_10177C418);
    v147 = v163;
    v145 = v171;
    v142(v163, v170, v171);
    swift_errorRetain();
    v148 = Logger.logObject.getter();
    v149 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v148, v149))
    {
      v150 = swift_slowAlloc();
      v151 = swift_slowAlloc();
      v152 = swift_slowAlloc();
      v184 = v139;
      v153 = v152;
      v185[0] = v152;
      *v150 = 136315394;
      sub_100019D54(&unk_1016B7C90, &type metadata accessor for Device);
      v154 = dispatch thunk of CustomStringConvertible.description.getter();
      v156 = v155;
      v184(v147, v145);
      v157 = sub_1000136BC(v154, v156, v185);

      *(v150 + 4) = v157;
      *(v150 + 12) = 2114;
      swift_errorRetain();
      v158 = _swift_stdlib_bridgeErrorToNSError();
      *(v150 + 14) = v158;
      *v151 = v158;
      _os_log_impl(&_mh_execute_header, v148, v149, "Failed to unpair %s due to %{public}@", v150, 0x16u);
      sub_10000B3A8(v151, &qword_10169BB30, &unk_10138B3C0);

      sub_100007BAC(v153);
      v139 = v184;
    }

    else
    {

      v139(v147, v145);
    }
  }

  else
  {
  }

  My = type metadata accessor for Feature.FindMy();
  v185[3] = My;
  v185[4] = sub_100019D54(&qword_1016AF950, &type metadata accessor for Feature.FindMy);
  v160 = sub_1000280DC(v185);
  (*(*(My - 8) + 104))(v160, enum case for Feature.FindMy.managedCBPeripheral(_:), My);
  LOBYTE(My) = isFeatureEnabled(_:)();
  sub_100007BAC(v185);
  if (My)
  {
    static DarwinNotification.post(name:)();

    v139(v170, v145);
  }

  else
  {
    v139(v170, v145);
  }
}

uint64_t sub_100432384()
{
  v0 = type metadata accessor for MACAddress();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  Device.btAddress.getter();
  v5 = *(type metadata accessor for OwnedBeaconGroup(0) + 28);
  v6 = static MACAddress.== infix(_:_:)();
  (*(v1 + 8))(v4, v0);
  return v6 & 1;
}

uint64_t sub_10043247C(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = type metadata accessor for Device();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v2[6] = *(v4 + 64);
  v2[7] = swift_task_alloc();

  return _swift_task_switch(sub_100432544, 0, 0);
}

uint64_t sub_100432544()
{
  v1 = v0[7];
  v2 = v0[4];
  v3 = v0[5];
  (*(v3 + 16))(v1, v0[3], v2);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = swift_allocObject();
  v0[8] = v5;
  (*(v3 + 32))(v5 + v4, v1, v2);
  v6 = async function pointer to withTimeout<A>(_:block:)[1];
  v7 = swift_task_alloc();
  v0[9] = v7;
  *v7 = v0;
  v7[1] = sub_10043268C;
  v8 = v0[2];

  return withTimeout<A>(_:block:)(v8, 0x40AAD21B3B700000, 3, &unk_1013A3760, v5, &type metadata for () + 8);
}

uint64_t sub_10043268C()
{
  v2 = *(*v1 + 72);
  v3 = *v1;
  v3[10] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1004327D4, 0, 0);
  }

  else
  {
    v5 = v3[7];
    v4 = v3[8];

    v6 = v3[1];

    return v6();
  }
}

uint64_t sub_1004327D4()
{
  v2 = v0[7];
  v1 = v0[8];

  v3 = v0[1];
  v4 = v0[10];

  return v3();
}

uint64_t sub_100432840(uint64_t a1, uint64_t a2)
{
  v2[2] = a2;
  v3 = type metadata accessor for Device();
  v2[3] = v3;
  v4 = *(v3 - 8);
  v2[4] = v4;
  v5 = *(v4 + 64) + 15;
  v2[5] = swift_task_alloc();

  return _swift_task_switch(sub_100432900, 0, 0);
}

uint64_t sub_100432900()
{
  type metadata accessor for Controller();
  v0[6] = Controller.__allocating_init()();
  v1 = *(&async function pointer to dispatch thunk of Controller.unpair(device:) + 1);
  v5 = (&async function pointer to dispatch thunk of Controller.unpair(device:) + async function pointer to dispatch thunk of Controller.unpair(device:));
  v2 = swift_task_alloc();
  v0[7] = v2;
  *v2 = v0;
  v2[1] = sub_1004329C0;
  v3 = v0[2];

  return v5(v3);
}

uint64_t sub_1004329C0()
{
  v2 = *(*v1 + 56);
  v5 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v3 = sub_100432D24;
  }

  else
  {
    v3 = sub_100432AD4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100432AD4()
{
  v25 = v0;
  if (qword_1016946F0 != -1)
  {
    swift_once();
  }

  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];
  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_10177AD08);
  (*(v2 + 16))(v1, v4, v3);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[5];
  v9 = v0[6];
  v12 = v0[3];
  v11 = v0[4];
  if (v8)
  {
    v23 = v0[6];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v24 = v14;
    *v13 = 136446210;
    sub_100019D54(&unk_1016B7C90, &type metadata accessor for Device);
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v16;
    (*(v11 + 8))(v10, v12);
    v18 = sub_1000136BC(v15, v17, &v24);

    *(v13 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v6, v7, "Successfully unpaired %{public}s!", v13, 0xCu);
    sub_100007BAC(v14);
  }

  else
  {
    v19 = v0[6];

    (*(v11 + 8))(v10, v12);
  }

  v20 = v0[5];

  v21 = v0[1];

  return v21();
}

uint64_t sub_100432D24()
{
  v2 = v0[5];
  v1 = v0[6];

  v3 = v0[1];
  v4 = v0[8];

  return v3();
}

uint64_t sub_100432D90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a4;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v4[11] = v5;
  v6 = *(v5 - 8);
  v4[12] = v6;
  v7 = *(v6 + 64) + 15;
  v4[13] = swift_task_alloc();
  v8 = type metadata accessor for DispatchQoS();
  v4[14] = v8;
  v9 = *(v8 - 8);
  v4[15] = v9;
  v10 = *(v9 + 64) + 15;
  v4[16] = swift_task_alloc();
  v11 = type metadata accessor for Device();
  v4[17] = v11;
  v12 = *(v11 - 8);
  v4[18] = v12;
  v4[19] = *(v12 + 64);
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();
  v13 = type metadata accessor for DeviceChange();
  v4[23] = v13;
  v14 = *(v13 - 8);
  v4[24] = v14;
  v15 = *(v14 + 64) + 15;
  v4[25] = swift_task_alloc();
  v16 = *(*(sub_1000BC4D4(&qword_1016A06D8, &unk_1013A37C0) - 8) + 64) + 15;
  v4[26] = swift_task_alloc();
  v17 = sub_1000BC4D4(&qword_1016B7C40, &unk_1013DD720);
  v4[27] = v17;
  v18 = *(v17 - 8);
  v4[28] = v18;
  v19 = *(v18 + 64) + 15;
  v4[29] = swift_task_alloc();
  v20 = sub_1000BC4D4(&unk_1016B7C80, &unk_1013A37D0);
  v4[30] = v20;
  v21 = *(v20 - 8);
  v4[31] = v21;
  v22 = *(v21 + 64) + 15;
  v4[32] = swift_task_alloc();
  v23 = type metadata accessor for RSSIValue();
  v4[33] = v23;
  v24 = *(v23 - 8);
  v4[34] = v24;
  v25 = *(v24 + 64) + 15;
  v4[35] = swift_task_alloc();
  v26 = type metadata accessor for ScanRate();
  v4[36] = v26;
  v27 = *(v26 - 8);
  v4[37] = v27;
  v28 = *(v27 + 64) + 15;
  v4[38] = swift_task_alloc();

  return _swift_task_switch(sub_100433144, 0, 0);
}

uint64_t sub_100433144()
{
  v2 = v0[37];
  v1 = v0[38];
  v4 = v0[35];
  v3 = v0[36];
  v5 = v0[33];
  v6 = v0[34];
  type metadata accessor for CBDiscovery();
  (*(v2 + 104))(v1, enum case for ScanRate.default(_:), v3);
  (*(v6 + 104))(v4, enum case for RSSIValue.unknown(_:), v5);
  v7 = async function pointer to CBDiscovery.__allocating_init(scanRate:rssiThreshold:)[1];
  v8 = swift_task_alloc();
  v0[39] = v8;
  *v8 = v0;
  v8[1] = sub_10043325C;
  v9 = v0[38];
  v10 = v0[35];

  return CBDiscovery.__allocating_init(scanRate:rssiThreshold:)(v9, v10);
}

uint64_t sub_10043325C(uint64_t a1)
{
  v2 = *(*v1 + 312);
  v4 = *v1;
  *(*v1 + 320) = a1;

  return _swift_task_switch(sub_10043335C, 0, 0);
}

uint64_t sub_10043335C()
{
  v1 = v0[10];
  v2 = *(v1 + 136);
  *(v1 + 136) = v0[40];

  v3 = *(&async function pointer to dispatch thunk of CBDiscovery.subscribeToAttributesChanges() + 1);
  v8 = (&async function pointer to dispatch thunk of CBDiscovery.subscribeToAttributesChanges() + async function pointer to dispatch thunk of CBDiscovery.subscribeToAttributesChanges());
  v4 = swift_task_alloc();
  v0[41] = v4;
  *v4 = v0;
  v4[1] = sub_100433424;
  v5 = v0[40];
  v6 = v0[29];

  return v8(v6);
}

uint64_t sub_100433424()
{
  v2 = *(*v1 + 328);
  v5 = *v1;
  *(*v1 + 336) = v0;

  if (v0)
  {
    v3 = sub_100433D88;
  }

  else
  {
    v3 = sub_100433538;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100433538()
{
  v1 = v0[32];
  v3 = v0[28];
  v2 = v0[29];
  v4 = v0[27];
  AsyncThrowingStream.makeAsyncIterator()();
  (*(v3 + 8))(v2, v4);
  v5 = _sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKFTu[1];
  v6 = swift_task_alloc();
  v0[43] = v6;
  *v6 = v0;
  v6[1] = sub_100433618;
  v7 = v0[32];
  v8 = v0[30];
  v9 = v0[26];

  return __sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v9, 0, 0, v8, v0 + 8);
}

uint64_t sub_100433618()
{
  v2 = *(*v1 + 344);
  v5 = *v1;

  if (v0)
  {
    v3 = sub_100433FC8;
  }

  else
  {
    v3 = sub_100433728;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100433728()
{
  v61 = v0;
  v1 = v0[26];
  if ((*(v0[24] + 48))(v1, 1, v0[23]) == 1)
  {
    v2 = v0[40];
    (*(v0[31] + 8))(v0[32], v0[30]);

    v3 = v0[38];
    v4 = v0[35];
    v5 = v0[32];
    v6 = v0[29];
    v8 = v0[25];
    v7 = v0[26];
    v10 = v0[21];
    v9 = v0[22];
    v11 = v0[20];
    v12 = v0[16];
    aBlock = v0[13];

    v13 = v0[1];

    return v13();
  }

  else
  {
    sub_10046B7F0(v1, v0[25], &type metadata accessor for DeviceChange);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v58 = (v0[18] + 32);
      v57 = *v58;
      (*v58)(v0[22], v0[25], v0[17]);
      if (qword_1016946F0 != -1)
      {
        swift_once();
      }

      v16 = v0[21];
      v15 = v0[22];
      v18 = v0[17];
      v17 = v0[18];
      v19 = type metadata accessor for Logger();
      sub_1000076D4(v19, qword_10177AD08);
      v55 = *(v17 + 16);
      v55(v16, v15, v18);
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.default.getter();
      v22 = os_log_type_enabled(v20, v21);
      v23 = v0[21];
      v25 = v0[17];
      v24 = v0[18];
      if (v22)
      {
        v26 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        v60 = v53;
        *v26 = 136446210;
        sub_100019D54(&unk_1016B7C90, &type metadata accessor for Device);
        v27 = dispatch thunk of CustomStringConvertible.description.getter();
        v29 = v28;
        v56 = *(v24 + 8);
        v56(v23, v25);
        v30 = sub_1000136BC(v27, v29, &v60);

        *(v26 + 4) = v30;
        _os_log_impl(&_mh_execute_header, v20, v21, "Attributes changed: %{public}s", v26, 0xCu);
        sub_100007BAC(v53);
      }

      else
      {

        v56 = *(v24 + 8);
        v56(v23, v25);
      }

      v31 = v0[22];
      v33 = v0[19];
      v32 = v0[20];
      v34 = v0[17];
      v35 = v0[18];
      v51 = v31;
      v52 = v0[15];
      v54 = v0[14];
      v47 = v0[16];
      v48 = v0[13];
      v36 = v0[11];
      v37 = v0[10];
      v49 = *(v37 + 56);
      v50 = v0[12];
      (v55)(v32);
      v38 = (*(v35 + 80) + 16) & ~*(v35 + 80);
      v39 = swift_allocObject();
      v57(v39 + v38, v32, v34);
      *(v39 + ((v33 + v38 + 7) & 0xFFFFFFFFFFFFFFF8)) = v37;
      v0[6] = sub_10046B95C;
      v0[7] = v39;
      v0[2] = _NSConcreteStackBlock;
      v0[3] = 1107296256;
      v0[4] = sub_100006684;
      v0[5] = &unk_10161E0D0;
      v40 = _Block_copy(v0 + 2);

      static DispatchQoS.unspecified.getter();
      v0[9] = _swiftEmptyArrayStorage;
      sub_100019D54(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
      sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
      sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v40);
      (*(v50 + 8))(v48, v36);
      (*(v52 + 8))(v47, v54);
      v56(v51, v34);
      v41 = v0[7];
    }

    else
    {
      sub_10046B858(v0[25], &type metadata accessor for DeviceChange);
    }

    v42 = _sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKFTu[1];
    v43 = swift_task_alloc();
    v0[43] = v43;
    *v43 = v0;
    v43[1] = sub_100433618;
    v44 = v0[32];
    v45 = v0[30];
    v46 = v0[26];

    return __sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v46, 0, 0, v45, v0 + 8);
  }
}

uint64_t sub_100433D88()
{
  v1 = v0[42];
  if (qword_1016946F0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_10177AD08);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[40];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "Error subscribing to device changes: %{public}@", v7, 0xCu);
    sub_10000B3A8(v8, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
    v10 = v0[40];
  }

  v11 = v0[38];
  v12 = v0[35];
  v13 = v0[32];
  v14 = v0[29];
  v16 = v0[25];
  v15 = v0[26];
  v18 = v0[21];
  v17 = v0[22];
  v19 = v0[20];
  v20 = v0[16];
  v23 = v0[13];

  v21 = v0[1];

  return v21();
}

uint64_t sub_100433FC8()
{
  (*(v0[31] + 8))(v0[32], v0[30]);
  v1 = v0[8];
  if (qword_1016946F0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_10177AD08);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[40];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "Error subscribing to device changes: %{public}@", v7, 0xCu);
    sub_10000B3A8(v8, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
    v10 = v0[40];
  }

  v11 = v0[38];
  v12 = v0[35];
  v13 = v0[32];
  v14 = v0[29];
  v16 = v0[25];
  v15 = v0[26];
  v18 = v0[21];
  v17 = v0[22];
  v19 = v0[20];
  v20 = v0[16];
  v23 = v0[13];

  v21 = v0[1];

  return v21();
}

void sub_100434220(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MACAddress();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Device();
  v10 = *(v9 - 8);
  v11 = v10[8];
  v12 = __chkstk_darwin(v9);
  v55 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v48 - v14;
  if (qword_1016946F0 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  v17 = sub_1000076D4(v16, qword_10177AD08);
  v18 = v10[2];
  v57 = a1;
  v51 = v18;
  v52 = v10 + 2;
  v18(v15, a1, v9);
  v53 = v17;
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();
  v21 = os_log_type_enabled(v19, v20);
  v56 = v10;
  if (v21)
  {
    v22 = swift_slowAlloc();
    v50 = a2;
    v23 = v22;
    v49 = swift_slowAlloc();
    v58 = v49;
    *v23 = 136446210;
    sub_100019D54(&unk_1016B7C90, &type metadata accessor for Device);
    v24 = dispatch thunk of CustomStringConvertible.description.getter();
    v25 = v10;
    v26 = v5;
    v27 = v4;
    v29 = v28;
    v54 = v25[1];
    v54(v15, v9);
    v30 = sub_1000136BC(v24, v29, &v58);
    v4 = v27;
    v5 = v26;

    *(v23 + 4) = v30;
    _os_log_impl(&_mh_execute_header, v19, v20, "pairedDeviceNameChanged: %{public}s", v23, 0xCu);
    sub_100007BAC(v49);

    a2 = v50;
  }

  else
  {

    v54 = v10[1];
    v54(v15, v9);
  }

  v31 = *(a2 + 32);
  v32 = v57;
  v33 = Device.btAddress.getter();
  v34 = *(*(v31 + 24) + OBJC_IVAR____TtC12searchpartyd14CentralManager_lock);
  __chkstk_darwin(v33);
  *(&v48 - 2) = v8;
  *(&v48 - 1) = v35;
  sub_1000BC4D4(&unk_1016A6370, &unk_101391AA0);
  Lock.callAsFunction<A>(_:)();
  v36 = v58;
  v37 = *(v5 + 8);
  v37(v8, v4);
  if (v36)
  {
    sub_1004347D0(v36, v32);
  }

  else
  {
    v38 = v55;
    v51(v55, v32, v9);
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      LODWORD(v57) = v40;
      v42 = v41;
      v53 = swift_slowAlloc();
      v58 = v53;
      *v42 = 136446210;
      Device.btAddress.getter();
      sub_100019D54(&qword_1016A4210, &type metadata accessor for MACAddress);
      v43 = dispatch thunk of CustomStringConvertible.description.getter();
      v44 = v38;
      v46 = v45;
      v37(v8, v4);
      v54(v44, v9);
      v47 = sub_1000136BC(v43, v46, &v58);

      *(v42 + 4) = v47;
      _os_log_impl(&_mh_execute_header, v39, v57, "Unable to retrieve peripheral for %{public}s", v42, 0xCu);
      sub_100007BAC(v53);
    }

    else
    {

      v54(v38, v9);
    }
  }
}

void sub_1004347D0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v239 = a2;
  v5 = type metadata accessor for Device();
  p_isa = *(v5 - 8);
  v237 = v5;
  v6 = p_isa[8];
  v7 = __chkstk_darwin(v5);
  v234 = &v212 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v227 = &v212 - v10;
  __chkstk_darwin(v9);
  v225 = &v212 - v11;
  v12 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v235 = &v212 - v14;
  v224 = type metadata accessor for DispatchTime();
  v223 = *(v224 - 8);
  v15 = *(v223 + 64);
  v16 = __chkstk_darwin(v224);
  v220 = &v212 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v221 = &v212 - v18;
  v233 = type metadata accessor for MACAddress();
  v230 = *(v233 - 8);
  v19 = v230[8];
  __chkstk_darwin(v233);
  v232 = &v212 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1000BC4D4(&unk_1016AF8B0, &unk_1013A0700);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v24 = &v212 - v23;
  v231 = type metadata accessor for OwnedBeaconGroup(0);
  v229 = *(v231 - 8);
  v25 = *(v229 + 64);
  v26 = __chkstk_darwin(v231);
  v226 = &v212 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __chkstk_darwin(v26);
  v222 = &v212 - v29;
  v30 = __chkstk_darwin(v28);
  v218 = &v212 - v31;
  v32 = __chkstk_darwin(v30);
  v219 = &v212 - v33;
  __chkstk_darwin(v32);
  v228 = (&v212 - v34);
  v241 = sub_1000BC4D4(&unk_1016B7C30, &qword_1013DBFD0);
  v35 = *(v241 - 8);
  v36 = *(v35 + 64);
  __chkstk_darwin(v241);
  v240 = &v212 - v37;
  v238 = type metadata accessor for UUID();
  v38 = *(v238 - 8);
  v39 = *(v38 + 64);
  v40 = __chkstk_darwin(v238);
  v42 = &v212 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v40);
  v242 = &v212 - v43;
  v44 = type metadata accessor for DispatchPredicate();
  v45 = *(v44 - 8);
  v46 = *(v45 + 64);
  __chkstk_darwin(v44);
  v48 = (&v212 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0));
  v49 = *(v3 + 56);
  *v48 = v49;
  (*(v45 + 104))(v48, enum case for DispatchPredicate.onQueue(_:), v44);
  v50 = v49;
  LOBYTE(v49) = _dispatchPreconditionTest(_:)();
  v51 = (*(v45 + 8))(v48, v44);
  if ((v49 & 1) == 0)
  {
    __break(1u);
    goto LABEL_60;
  }

  v52 = *(v3 + 72);
  __chkstk_darwin(v51);
  *(&v212 - 2) = v3;
  *(&v212 - 1) = a1;
  QueueSynchronizer.conditionalSync<A>(_:)();
  if (v243[0])
  {
    if (qword_1016946F0 == -1)
    {
LABEL_4:
      v53 = type metadata accessor for Logger();
      sub_1000076D4(v53, qword_10177AD08);
      v54 = Logger.logObject.getter();
      v55 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(v54, v55))
      {
LABEL_18:

        return;
      }

      v56 = swift_slowAlloc();
      *v56 = 0;
      _os_log_impl(&_mh_execute_header, v54, v55, "Pairing in progress. Ignore name change.", v56, 2u);
LABEL_17:

      goto LABEL_18;
    }

LABEL_60:
    swift_once();
    goto LABEL_4;
  }

  v57 = v3;
  v58 = v239;
  v59 = v240;
  Device.id.getter();
  v60 = v241;
  Identifier.id.getter();
  v61 = *(v35 + 8);
  v217 = v35 + 8;
  v61(v59, v60);
  swift_beginAccess();
  v62 = v242;
  v63 = sub_100DE8BCC(v242, v42);
  v66 = *(v38 + 8);
  v64 = (v38 + 8);
  v65 = v66;
  v67 = v62;
  v68 = v238;
  v66(v67, v238);
  swift_endAccess();
  if (v63)
  {
    v234 = v64;
    v69 = Device.name.getter();
    if (!v70)
    {
      if (qword_1016946F0 != -1)
      {
        swift_once();
      }

      v105 = v61;
      v106 = type metadata accessor for Logger();
      sub_1000076D4(v106, qword_10177AD08);
      v107 = Logger.logObject.getter();
      v108 = static os_log_type_t.error.getter();
      v109 = os_log_type_enabled(v107, v108);
      v110 = v235;
      if (v109)
      {
        v111 = swift_slowAlloc();
        *v111 = 0;
        _os_log_impl(&_mh_execute_header, v107, v108, "Device name is not available!", v111, 2u);
      }

      v112 = v240;
      Device.id.getter();
      v114 = v241;
      v113 = v242;
      Identifier.id.getter();
      v105(v112, v114);
      swift_beginAccess();
      sub_1010F6584(v113, v110);
      v65(v113, v68);
      v115 = v110;
      goto LABEL_35;
    }

    v214 = v69;
    v215 = v61;
    v71 = v70;
    v216 = v57;
    v72 = *(v57 + 16);
    v73 = v232;
    Device.btAddress.getter();
    sub_100AC5D4C(v73, v24);
    v74 = v230[1];
    v74(v73, v233);
    v75 = v231;
    if ((*(v229 + 48))(v24, 1, v231) == 1)
    {
      v231 = v65;

      sub_10000B3A8(v24, &unk_1016AF8B0, &unk_1013A0700);
      if (qword_1016946F0 != -1)
      {
        swift_once();
      }

      v76 = type metadata accessor for Logger();
      sub_1000076D4(v76, qword_10177AD08);
      v77 = p_isa;
      v78 = v237;
      v79 = v227;
      (p_isa[2])(v227, v58, v237);
      v80 = Logger.logObject.getter();
      v81 = static os_log_type_t.error.getter();
      v82 = os_log_type_enabled(v80, v81);
      v83 = v215;
      if (v82)
      {
        v84 = swift_slowAlloc();
        v228 = v84;
        v230 = swift_slowAlloc();
        v243[0] = v230;
        *v84 = 136446210;
        v85 = v232;
        LODWORD(v229) = v81;
        Device.btAddress.getter();
        sub_100019D54(&qword_1016A4210, &type metadata accessor for MACAddress);
        v86 = v233;
        v226 = dispatch thunk of CustomStringConvertible.description.getter();
        v87 = v83;
        v88 = v79;
        v90 = v89;
        v74(v85, v86);
        v91 = v88;
        v83 = v87;
        (v77[1])(v91, v78);
        v92 = sub_1000136BC(v226, v90, v243);

        v93 = v228;
        *(v228 + 1) = v92;
        _os_log_impl(&_mh_execute_header, v80, v229, "No beacon group for paired device: %{public}s", v93, 0xCu);
        sub_100007BAC(v230);
      }

      else
      {

        (v77[1])(v79, v78);
      }

      v135 = v235;
      v136 = v240;
      Device.id.getter();
      v138 = v241;
      v137 = v242;
      Identifier.id.getter();
      v83(v136, v138);
      swift_beginAccess();
      sub_1010F6584(v137, v135);
      (v231)(v137, v238);
      v115 = v135;
LABEL_35:
      sub_10000B3A8(v115, &qword_1016980D0, &unk_10138F3B0);
      swift_endAccess();
      return;
    }

    v116 = v24;
    v117 = v228;
    sub_10046B7F0(v116, v228, type metadata accessor for OwnedBeaconGroup);
    v118 = v71;
    if (sub_100518118())
    {
      v119 = (v117 + *(v75 + 36));
      v120 = v216;
      v121 = v215;
      if (v214 == *v119 && v118 == v119[1] || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v231 = v65;

        if (qword_1016946F0 != -1)
        {
          swift_once();
        }

        v122 = type metadata accessor for Logger();
        sub_1000076D4(v122, qword_10177AD08);
        v123 = p_isa;
        v124 = v237;
        v125 = v225;
        (p_isa[2])(v225, v58, v237);
        v126 = Logger.logObject.getter();
        v127 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v126, v127))
        {
          v128 = swift_slowAlloc();
          v129 = swift_slowAlloc();
          v243[0] = v129;
          *v128 = 136446210;
          sub_100019D54(&unk_1016B7C90, &type metadata accessor for Device);
          v130 = dispatch thunk of CustomStringConvertible.description.getter();
          v131 = v125;
          v133 = v132;
          (v123[1])(v131, v124);
          v134 = sub_1000136BC(v130, v133, v243);

          *(v128 + 4) = v134;
          _os_log_impl(&_mh_execute_header, v126, v127, "Name has not changed for %{public}s!", v128, 0xCu);
          sub_100007BAC(v129);
        }

        else
        {

          (v123[1])(v125, v124);
        }

        v160 = v240;
        Device.id.getter();
        v161 = v241;
        v162 = v242;
        Identifier.id.getter();
        v121(v160, v161);
        swift_beginAccess();
        v163 = v235;
        sub_1010F6584(v162, v235);
        (v231)(v162, v238);
        sub_10000B3A8(v163, &qword_1016980D0, &unk_10138F3B0);
        swift_endAccess();
        v159 = v117;
        goto LABEL_45;
      }

      if (qword_1016946F0 != -1)
      {
        swift_once();
      }

      v164 = type metadata accessor for Logger();
      v165 = sub_1000076D4(v164, qword_10177AD08);
      v166 = v219;
      sub_10046A814(v117, v219, type metadata accessor for OwnedBeaconGroup);

      v237 = v165;
      v167 = v118;
      v168 = Logger.logObject.getter();
      v169 = static os_log_type_t.default.getter();

      v170 = os_log_type_enabled(v168, v169);
      v213 = v167;
      if (v170)
      {
        v171 = swift_slowAlloc();
        p_isa = swift_slowAlloc();
        v243[0] = p_isa;
        *v171 = 141558787;
        *(v171 + 4) = 1752392040;
        *(v171 + 12) = 2081;
        v172 = v167;
        v173 = *(v231 + 24);
        sub_100019D54(&qword_101696930, &type metadata accessor for UUID);
        v174 = dispatch thunk of CustomStringConvertible.description.getter();
        v176 = v175;
        sub_10046B858(v166, type metadata accessor for OwnedBeaconGroup);
        v177 = sub_1000136BC(v174, v176, v243);

        *(v171 + 14) = v177;
        *(v171 + 22) = 2160;
        *(v171 + 24) = 1752392040;
        *(v171 + 32) = 2081;
        v120 = v216;
        v178 = v214;
        *(v171 + 34) = sub_1000136BC(v214, v172, v243);
        _os_log_impl(&_mh_execute_header, v168, v169, "Updating %{private,mask.hash}s with new name %{private,mask.hash}s", v171, 0x2Au);
        swift_arrayDestroy();
        v117 = v228;

        v179 = v224;
        v180 = v223;
      }

      else
      {

        sub_10046B858(v166, type metadata accessor for OwnedBeaconGroup);
        v179 = v224;
        v180 = v223;
        v178 = v214;
      }

      v181 = dispatch_group_create();
      dispatch_group_enter(v181);
      v182 = type metadata accessor for Transaction();
      __chkstk_darwin(v182);
      *(&v212 - 6) = v120;
      *(&v212 - 5) = v117;
      *(&v212 - 4) = v178;
      v183 = v213;
      *(&v212 - 3) = v213;
      *(&v212 - 2) = v181;
      static Transaction.named<A>(_:with:)();
      v184 = v220;
      static DispatchTime.now()();
      v185 = v221;
      + infix(_:_:)();
      v186 = *(v180 + 8);
      v186(v184, v179);
      p_isa = &v181->isa;
      OS_dispatch_group.wait(timeout:)();
      v186(v185, v179);
      if (static DispatchTimeoutResult.== infix(_:_:)())
      {
        v187 = v218;
        sub_10046A814(v117, v218, type metadata accessor for OwnedBeaconGroup);

        v188 = Logger.logObject.getter();
        v189 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v188, v189))
        {
          v190 = swift_slowAlloc();
          v243[0] = swift_slowAlloc();
          *v190 = 141558787;
          *(v190 + 4) = 1752392040;
          *(v190 + 12) = 2081;
          v191 = *(v231 + 24);
          sub_100019D54(&qword_101696930, &type metadata accessor for UUID);
          v192 = dispatch thunk of CustomStringConvertible.description.getter();
          v194 = v193;
          sub_10046B858(v187, type metadata accessor for OwnedBeaconGroup);
          v195 = sub_1000136BC(v192, v194, v243);
          v117 = v228;

          *(v190 + 14) = v195;
          *(v190 + 22) = 2160;
          *(v190 + 24) = 1752392040;
          *(v190 + 32) = 2081;
          *(v190 + 34) = sub_1000136BC(v214, v183, v243);
          _os_log_impl(&_mh_execute_header, v188, v189, "Timed out updating %{private,mask.hash}s with new name %{private,mask.hash}s", v190, 0x2Au);
          swift_arrayDestroy();
        }

        else
        {

          sub_10046B858(v187, type metadata accessor for OwnedBeaconGroup);
        }
      }

      v196 = v222;
      sub_10046A814(v117, v222, type metadata accessor for OwnedBeaconGroup);

      v197 = Logger.logObject.getter();
      v198 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v197, v198))
      {
        v199 = swift_slowAlloc();
        v243[0] = swift_slowAlloc();
        *v199 = 141558787;
        *(v199 + 4) = 1752392040;
        *(v199 + 12) = 2081;
        v200 = *(v231 + 24);
        sub_100019D54(&qword_101696930, &type metadata accessor for UUID);
        v201 = v196;
        v202 = v238;
        v203 = dispatch thunk of CustomStringConvertible.description.getter();
        v205 = v204;
        sub_10046B858(v201, type metadata accessor for OwnedBeaconGroup);
        v206 = sub_1000136BC(v203, v205, v243);

        *(v199 + 14) = v206;
        *(v199 + 22) = 2160;
        *(v199 + 24) = 1752392040;
        *(v199 + 32) = 2081;
        v207 = sub_1000136BC(v214, v183, v243);

        *(v199 + 34) = v207;
        _os_log_impl(&_mh_execute_header, v197, v198, "Finished updating %{private,mask.hash}s with new name %{private,mask.hash}s", v199, 0x2Au);
        swift_arrayDestroy();

        v208 = v235;
      }

      else
      {

        sub_10046B858(v196, type metadata accessor for OwnedBeaconGroup);
        v208 = v235;
        v202 = v238;
      }

      v209 = v240;
      Device.id.getter();
      v211 = v241;
      v210 = v242;
      Identifier.id.getter();
      v215(v209, v211);
      swift_beginAccess();
      sub_1010F6584(v210, v208);
      v65(v210, v202);
      sub_10000B3A8(v208, &qword_1016980D0, &unk_10138F3B0);
      swift_endAccess();
    }

    else
    {

      v139 = v215;
      if (qword_1016946F0 != -1)
      {
        swift_once();
      }

      v140 = type metadata accessor for Logger();
      sub_1000076D4(v140, qword_10177AD08);
      v141 = v226;
      sub_10046A814(v117, v226, type metadata accessor for OwnedBeaconGroup);
      v142 = Logger.logObject.getter();
      v143 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v142, v143))
      {
        v144 = swift_slowAlloc();
        v145 = swift_slowAlloc();
        v146 = v75;
        v147 = v145;
        v243[0] = v145;
        *v144 = 141558275;
        *(v144 + 4) = 1752392040;
        *(v144 + 12) = 2081;
        v148 = *(v146 + 24);
        sub_100019D54(&qword_101696930, &type metadata accessor for UUID);
        v149 = v238;
        v150 = dispatch thunk of CustomStringConvertible.description.getter();
        v151 = v141;
        v153 = v152;
        sub_10046B858(v151, type metadata accessor for OwnedBeaconGroup);
        v154 = sub_1000136BC(v150, v153, v243);

        *(v144 + 14) = v154;
        _os_log_impl(&_mh_execute_header, v142, v143, "Ignore name change while beacon group pending pairing: %{private,mask.hash}s.", v144, 0x16u);
        sub_100007BAC(v147);
      }

      else
      {

        sub_10046B858(v141, type metadata accessor for OwnedBeaconGroup);
        v149 = v238;
      }

      v155 = v240;
      Device.id.getter();
      v157 = v241;
      v156 = v242;
      Identifier.id.getter();
      v139(v155, v157);
      swift_beginAccess();
      v158 = v235;
      sub_1010F6584(v156, v235);
      v65(v156, v149);
      sub_10000B3A8(v158, &qword_1016980D0, &unk_10138F3B0);
      swift_endAccess();
    }

    v159 = v228;
LABEL_45:
    sub_10046B858(v159, type metadata accessor for OwnedBeaconGroup);
    return;
  }

  if (qword_1016946F0 != -1)
  {
    swift_once();
  }

  v94 = type metadata accessor for Logger();
  sub_1000076D4(v94, qword_10177AD08);
  v96 = p_isa;
  v95 = v237;
  v97 = v234;
  (p_isa[2])(v234, v58, v237);
  v54 = Logger.logObject.getter();
  v98 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v54, v98))
  {
    v99 = swift_slowAlloc();
    v100 = swift_slowAlloc();
    v243[0] = v100;
    *v99 = 136446210;
    sub_100019D54(&unk_1016B7C90, &type metadata accessor for Device);
    v101 = dispatch thunk of CustomStringConvertible.description.getter();
    v103 = v102;
    (v96[1])(v97, v95);
    v104 = sub_1000136BC(v101, v103, v243);

    *(v99 + 4) = v104;
    _os_log_impl(&_mh_execute_header, v54, v98, "Already handling name change event for this %{public}s.", v99, 0xCu);
    sub_100007BAC(v100);

    goto LABEL_17;
  }

  (v96[1])(v97, v95);
}

void sub_1004363C8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, void *a6)
{
  v35 = a6;
  v11 = type metadata accessor for OwnedBeaconGroup(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = *(a2 + 16);
  v15 = swift_allocObject();
  *(v15 + 16) = a4;
  *(v15 + 24) = a5;
  v41 = v15;
  v36 = a3;
  sub_10046A814(a3, v14, type metadata accessor for OwnedBeaconGroup);
  v16 = *(v12 + 80);
  v17 = (v16 + 48) & ~v16;
  v37 = v13;
  v38 = v13 + 7;
  v18 = swift_allocObject();
  *(v18 + 2) = a1;
  *(v18 + 3) = a4;
  *(v18 + 4) = a5;
  *(v18 + 5) = a2;
  sub_10046B7F0(v14, v18 + v17, type metadata accessor for OwnedBeaconGroup);
  v19 = v35;
  *(v18 + ((v13 + v17 + 7) & 0xFFFFFFFFFFFFFFF8)) = v35;
  swift_bridgeObjectRetain_n();

  v20 = v19;
  static os_log_type_t.default.getter();
  if (qword_101695038 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_101385D80;
  *(v21 + 56) = &type metadata for String;
  *(v21 + 64) = sub_100008C00();
  *(v21 + 32) = 0x65736C6166;
  *(v21 + 40) = 0xE500000000000000;
  os_log(_:dso:log:_:_:)();

  v22 = objc_autoreleasePoolPush();
  v23 = v36;
  v24 = v39;
  sub_1011218E0(v36);
  v39 = v25;
  if (v24)
  {
    objc_autoreleasePoolPop(v22);
    __break(1u);
  }

  else
  {
    v34 = ~v16;
    objc_autoreleasePoolPop(v22);
    v26 = *(v40 + 184);
    sub_1000BC4D4(&unk_1016B14B0, &qword_1013A08F0);
    type metadata accessor for CloudKitCoordinator();
    OSAllocatedUnfairLock.callAsFunction<A>(_:)();
    v35 = 0;
    sub_10046A814(v23, v14, type metadata accessor for OwnedBeaconGroup);
    v27 = swift_allocObject();
    v28 = v41;
    *(v27 + 16) = sub_10046B300;
    *(v27 + 24) = v28;
    v37 = type metadata accessor for OwnedBeaconGroup;
    sub_10046B7F0(v14, v27 + ((v16 + 32) & ~v16), type metadata accessor for OwnedBeaconGroup);

    sub_100FDCA40(v39, sub_1001DA038, v27);

    v29 = swift_allocObject();
    *(v29 + 16) = sub_10046B308;
    *(v29 + 24) = v18;

    Future.addFailure(block:)();

    sub_10046A814(v23, v14, type metadata accessor for OwnedBeaconGroup);
    v30 = (v16 + 16) & v34;
    v31 = &v38[v30] & 0xFFFFFFFFFFFFFFF8;
    v32 = swift_allocObject();
    sub_10046B7F0(v14, v32 + v30, v37);
    *(v32 + v31) = v40;
    v33 = (v32 + ((v31 + 15) & 0xFFFFFFFFFFFFFFF8));
    *v33 = sub_10046B308;
    v33[1] = v18;

    Future.addSuccess(block:)();
  }
}

uint64_t sub_1004368C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (a1 + *(type metadata accessor for OwnedBeaconGroup(0) + 36));
  v6 = v5[1];

  *v5 = a2;
  v5[1] = a3;
  return result;
}

void sub_10043691C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, NSObject *a7)
{
  v50 = a5;
  v51 = a7;
  v47 = a3;
  v48 = a4;
  v49 = type metadata accessor for OwnedBeaconGroup(0);
  v9 = *(*(v49 - 8) + 64);
  v10 = __chkstk_darwin(v49);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = &v47 - v14;
  __chkstk_darwin(v13);
  v17 = &v47 - v16;
  v18 = sub_1000BC4D4(&qword_101699398, &qword_101391900);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18);
  v21 = (&v47 - v20);
  Transaction.capture()();
  sub_1000D2A70(a1, v21, &qword_101699398, &qword_101391900);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_10046B7F0(v21, v17, type metadata accessor for OwnedBeaconGroup);
    if (qword_1016946F0 != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for Logger();
    sub_1000076D4(v35, qword_10177AD08);
    sub_10046A814(v17, v15, type metadata accessor for OwnedBeaconGroup);
    v36 = v48;

    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      *v39 = 141558787;
      *(v39 + 4) = 1752392040;
      *(v39 + 12) = 2081;
      v40 = *(v49 + 24);
      type metadata accessor for UUID();
      sub_100019D54(&qword_101696930, &type metadata accessor for UUID);
      v41 = dispatch thunk of CustomStringConvertible.description.getter();
      v43 = v42;
      sub_10046B858(v15, type metadata accessor for OwnedBeaconGroup);
      v44 = sub_1000136BC(v41, v43, &v52);

      *(v39 + 14) = v44;
      *(v39 + 22) = 2160;
      *(v39 + 24) = 1752392040;
      *(v39 + 32) = 2081;
      *(v39 + 34) = sub_1000136BC(v47, v36, &v52);
      _os_log_impl(&_mh_execute_header, v37, v38, "Successfully updated %{private,mask.hash}s\nwith new name %{private,mask.hash}s", v39, 0x2Au);
      swift_arrayDestroy();
    }

    else
    {

      sub_10046B858(v15, type metadata accessor for OwnedBeaconGroup);
    }

    v46 = *(v50 + 16);
    sub_100A8306C(13);
    v45 = v17;
    goto LABEL_13;
  }

  v22 = *v21;
  if (qword_1016946F0 != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  sub_1000076D4(v23, qword_10177AD08);
  sub_10046A814(a6, v12, type metadata accessor for OwnedBeaconGroup);
  swift_errorRetain();
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.error.getter();

  if (!os_log_type_enabled(v24, v25))
  {

    v45 = v12;
LABEL_13:
    sub_10046B858(v45, type metadata accessor for OwnedBeaconGroup);
    goto LABEL_14;
  }

  v26 = swift_slowAlloc();
  v27 = swift_slowAlloc();
  v28 = swift_slowAlloc();
  v52 = v28;
  *v26 = 141558531;
  *(v26 + 4) = 1752392040;
  *(v26 + 12) = 2081;
  v29 = *(v49 + 24);
  type metadata accessor for UUID();
  sub_100019D54(&qword_101696930, &type metadata accessor for UUID);
  v30 = dispatch thunk of CustomStringConvertible.description.getter();
  v32 = v31;
  sub_10046B858(v12, type metadata accessor for OwnedBeaconGroup);
  v33 = sub_1000136BC(v30, v32, &v52);

  *(v26 + 14) = v33;
  *(v26 + 22) = 2114;
  swift_errorRetain();
  v34 = _swift_stdlib_bridgeErrorToNSError();
  *(v26 + 24) = v34;
  *v27 = v34;
  _os_log_impl(&_mh_execute_header, v24, v25, "Failed to save new name for %{private,mask.hash}s. Error %{public}@)", v26, 0x20u);
  sub_10000B3A8(v27, &qword_10169BB30, &unk_10138B3C0);

  sub_100007BAC(v28);

LABEL_14:
  dispatch_group_leave(v51);
}

uint64_t sub_100436F60(char *a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v61 - v10;
  v12 = type metadata accessor for DispatchPredicate();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = (&v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = v2[6];
  *v16 = v17;
  (*(v13 + 104))(v16, enum case for DispatchPredicate.onQueue(_:), v12);
  v18 = v17;
  v19 = _dispatchPreconditionTest(_:)();
  v21 = *(v13 + 8);
  v20 = (v13 + 8);
  v21(v16, v12);
  if ((v19 & 1) == 0)
  {
    __break(1u);
LABEL_20:
    swift_once();
    goto LABEL_11;
  }

  v16 = *&a1[OBJC_IVAR____TtC12searchpartyd10Peripheral_underlyingObject];
  v22 = [v16 identifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  swift_beginAccess();
  v23 = v2[24];
  if (*(v23 + 16))
  {
    v24 = v2[24];

    v25 = sub_1000210EC(v11);
    if (v26)
    {
      v27 = *(*(v23 + 56) + 8 * v25);
      v28 = *(v5 + 8);

      v28(v11, v4);

      if (qword_1016946F0 != -1)
      {
        swift_once();
      }

      v29 = type metadata accessor for Logger();
      sub_1000076D4(v29, qword_10177AD08);

      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v63[0] = v33;
        *v32 = 136315138;

        v35 = sub_100E22F58(v34);
        v37 = v36;

        v38 = sub_1000136BC(v35, v37, v63);

        *(v32 + 4) = v38;
        _os_log_impl(&_mh_execute_header, v30, v31, "Found existing pairing manager %s", v32, 0xCu);
        sub_100007BAC(v33);
      }

      return v27;
    }
  }

  v61 = v4;
  v62 = v9;
  (*(v5 + 8))(v11, v4);
  v19 = v2[2];
  v39 = swift_allocObject();
  v39[2] = v2;
  v39[3] = a1;
  v39[4] = v19;

  v20 = a1;

  unsafeFromAsyncTask<A>(_:)();

  LODWORD(a1) = LOBYTE(v63[0]);
  v5 = "Core BT peripheral:";
  if (qword_1016946F0 != -1)
  {
    goto LABEL_20;
  }

LABEL_11:
  v40 = type metadata accessor for Logger();
  sub_1000076D4(v40, qword_10177AD08);
  sub_100A245E8(0xD000000000000032, v5 | 0x8000000000000000);
  v41 = v2[3];
  v42 = v2[5];
  type metadata accessor for AirPodsPairingManager();
  swift_allocObject();
  v43 = v20;

  v44 = sub_100E23114(v19, v41, v43, v42, a1);
  if (v44)
  {
    v27 = v44;
    v45 = [v16 identifier];
    v46 = v62;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    swift_beginAccess();
    v47 = swift_retain_n();
    sub_1001DE870(v47, v46);
    swift_endAccess();

    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v63[0] = v51;
      *v50 = 136315138;
      v52 = v2[24];
      sub_100019D54(&qword_1016967B0, &type metadata accessor for UUID);

      v53 = Dictionary.description.getter();
      v55 = v54;

      v56 = sub_1000136BC(v53, v55, v63);

      *(v50 + 4) = v56;
      _os_log_impl(&_mh_execute_header, v48, v49, "pairingManagers: %s", v50, 0xCu);
      sub_100007BAC(v51);
    }
  }

  else
  {
    v57 = Logger.logObject.getter();
    v58 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      *v59 = 0;
      _os_log_impl(&_mh_execute_header, v57, v58, "Unable to create a new AirPodsPairingManager!", v59, 2u);
    }

    return 0;
  }

  return v27;
}

void *sub_100437674()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = (&v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = v1[6];
  *v6 = v7;
  (*(v3 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v2);
  v8 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v6, v2);
  if ((v7 & 1) == 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v6 = v1[13];
  if (v6)
  {
    v9 = qword_1016946F0;

    if (v9 == -1)
    {
LABEL_4:
      v10 = type metadata accessor for Logger();
      sub_1000076D4(v10, qword_10177AD08);
      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 0;
        _os_log_impl(&_mh_execute_header, v11, v12, "Found existing PrivacyAlertSupport.", v13, 2u);
      }

      return v6;
    }

LABEL_14:
    swift_once();
    goto LABEL_4;
  }

  if (qword_1016946F0 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_1000076D4(v14, qword_10177AD08);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "Creating new PrivacyAlertSupport.", v17, 2u);
  }

  v18 = v1[2];
  type metadata accessor for PrivacyAlertSupport();
  swift_allocObject();

  v6 = sub_100ED4D08(v19);
  v20 = v1[13];
  v1[13] = v6;

  return v6;
}

uint64_t sub_100437944()
{
  v1 = v0;
  v2 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v13 - v4;
  if (qword_1016946F0 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_1000076D4(v6, qword_10177AD08);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "classicPairingInitialSetup", v9, 2u);
  }

  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v5, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = v1;

  sub_10025EDD4(0, 0, v5, &unk_1013A3738, v11);
}

uint64_t sub_100437B0C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100014650;

  return sub_100437B9C();
}

uint64_t sub_100437B9C()
{
  v1[2] = v0;
  v2 = *(*(sub_1000BC4D4(&qword_101698C00, &qword_10138B570) - 8) + 64) + 15;
  v1[3] = swift_task_alloc();
  v3 = async function pointer to daemon.getter[1];
  v4 = swift_task_alloc();
  v1[4] = v4;
  *v4 = v1;
  v4[1] = sub_100437C68;

  return daemon.getter();
}

uint64_t sub_100437C68(uint64_t a1)
{
  v3 = *(*v1 + 32);
  v7 = *v1;
  *(*v1 + 40) = a1;

  type metadata accessor for Daemon();
  sub_100019D54(&qword_1016969E0, &type metadata accessor for Daemon);
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100437DC0, v5, v4);
}

uint64_t sub_100437DC0()
{
  v1 = *(v0 + 40);
  *(v0 + 48) = Daemon.darwinNotificationHandler.getter();

  return _swift_task_switch(sub_100437E34, 0, 0);
}

uint64_t sub_100437E34()
{
  v1 = v0[2];
  v2 = swift_allocObject();
  v0[7] = v2;
  swift_weakInit();
  v3 = *(&async function pointer to dispatch thunk of DarwinNotificationHandler.listen(name:handler:) + 1);
  v7 = (&async function pointer to dispatch thunk of DarwinNotificationHandler.listen(name:handler:) + async function pointer to dispatch thunk of DarwinNotificationHandler.listen(name:handler:));

  v4 = swift_task_alloc();
  v0[8] = v4;
  *v4 = v0;
  v4[1] = sub_100437F48;
  v5 = v0[6];

  return v7(0xD000000000000025, 0x80000001013551A0, &unk_1013A3710, v2);
}

uint64_t sub_100437F48(uint64_t a1)
{
  v2 = *(*v1 + 64);
  v3 = *(*v1 + 56);
  v5 = *v1;
  *(*v1 + 72) = a1;

  return _swift_task_switch(sub_10043806C, 0, 0);
}

uint64_t sub_10043806C()
{
  v1 = v0[9];
  v2 = v0[6];
  v3 = v0[3];
  v4 = type metadata accessor for TaskPriority();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v1;

  sub_100BB9ADC(0, 0, v3, &unk_1013A3720, v5);

  sub_10000B3A8(v3, &qword_101698C00, &qword_10138B570);

  v6 = v0[1];

  return v6();
}

uint64_t sub_10043819C(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return _swift_task_switch(sub_1004381BC, 0, 0);
}

uint64_t sub_1004381BC()
{
  v1 = v0[6];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = v0[5];
    v5 = DarwinNotification.value.getter();
    type metadata accessor for Transaction();
    v6 = swift_task_alloc();
    *(v6 + 16) = v3;
    *(v6 + 24) = v5;
    static Transaction.named<A>(_:with:)();
  }

  v7 = v0[1];

  return v7();
}

uint64_t sub_1004382C4(void *a1)
{
  v2 = v1;
  v4 = sub_1000BC4D4(&unk_1016B0FE0, &unk_101391980);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v43 - v6;
  v8 = sub_1000BC4D4(&qword_1016A0640, &qword_1013A36E0);
  v46 = *(v8 - 8);
  v47 = v8;
  v9 = *(v46 + 64);
  __chkstk_darwin(v8);
  v11 = &v43 - v10;
  v12 = sub_1000BC4D4(&qword_1016A0648, &qword_1013A36E8);
  v49 = *(v12 - 8);
  v50 = v12;
  v13 = *(v49 + 64);
  __chkstk_darwin(v12);
  v48 = &v43 - v14;
  v15 = sub_1000BC4D4(&qword_1016A0650, &qword_1013A36F0);
  v52 = *(v15 - 8);
  v16 = *(v52 + 64);
  __chkstk_darwin(v15);
  v51 = &v43 - v17;
  v18 = type metadata accessor for DispatchPredicate();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v22 = (&v43 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = *(v2 + 48);
  *v22 = v23;
  (*(v19 + 104))(v22, enum case for DispatchPredicate.onQueue(_:), v18);
  v24 = v23;
  v25 = _dispatchPreconditionTest(_:)();
  (*(v19 + 8))(v22, v18);
  if ((v25 & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  v44 = v15;
  v45 = a1;
  v26 = sub_1000BC4D4(&qword_1016A05E8, &qword_1013A36C0);
  v27 = *(v26 + 48);
  v28 = *(v26 + 52);
  swift_allocObject();
  v29 = PassthroughSubject.init()();
  v30 = *(v2 + 144);
  *(v2 + 144) = v29;

  v53 = v29;
  sub_1000041A4(&qword_1016A05F0, &qword_1016A05E8, &qword_1013A36C0);
  v53 = Publisher.eraseToAnyPublisher()();
  v43 = v2;
  if (qword_1016946F8 != -1)
  {
LABEL_5:
    swift_once();
  }

  v31 = type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
  sub_1000076D4(v31, qword_1016A00B8);
  v54 = v24;
  v32 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  (*(*(v32 - 8) + 56))(v7, 1, 1, v32);
  sub_1000BC4D4(&qword_1016A05F8, &qword_1013A36C8);
  sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
  sub_1000041A4(&qword_1016A0600, &qword_1016A05F8, &qword_1013A36C8);
  sub_1004682F0();
  Publisher.timeout<A>(_:scheduler:options:customError:)();
  sub_10000B3A8(v7, &unk_1016B0FE0, &unk_101391980);

  sub_1000BC4D4(&qword_1016A0610, &qword_1013A36D0);
  sub_1000041A4(&qword_1016A0658, &qword_1016A0640, &qword_1013A36E0);
  v33 = v47;
  v34 = v48;
  Publisher.map<A>(_:)();
  (*(v46 + 8))(v11, v33);
  sub_1000BC4D4(&qword_1016A0620, &qword_1013A36D8);
  sub_1000041A4(&qword_1016A0660, &qword_1016A0648, &qword_1013A36E8);
  sub_1000041A4(&qword_1016A0630, &qword_1016A0620, &qword_1013A36D8);
  v35 = v50;
  v36 = v51;
  Publisher.catch<A>(_:)();
  (*(v49 + 8))(v34, v35);
  v37 = swift_allocObject();
  swift_weakInit();
  v38 = swift_allocObject();
  v39 = v45;
  *(v38 + 16) = v37;
  *(v38 + 24) = v39;
  sub_1000041A4(&qword_1016A0668, &qword_1016A0650, &qword_1013A36F0);
  v40 = v39;
  v41 = v44;
  Publisher<>.sink(receiveValue:)();

  (*(v52 + 8))(v36, v41);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();
}

uint64_t sub_1004391DC(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return _swift_task_switch(sub_1004391FC, 0, 0);
}

uint64_t sub_1004391FC()
{
  v1 = v0[5];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[7] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[8] = v3;
    *v3 = v0;
    v3[1] = sub_1004392EC;
    v4 = v0[6];

    return sub_10044DEFC(v4);
  }

  else
  {
    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_1004392EC(char a1)
{
  v2 = *(*v1 + 64);
  v4 = *v1;
  *(*v1 + 72) = a1;

  return _swift_task_switch(sub_1004393EC, 0, 0);
}

uint64_t sub_1004393EC()
{
  if (*(v0 + 72))
  {
    v2 = *(v0 + 48);
    v1 = *(v0 + 56);
    type metadata accessor for Transaction();
    v3 = swift_task_alloc();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    static Transaction.named<A>(_:with:)();
  }

  else
  {
    if (qword_1016946F0 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_1000076D4(v4, qword_10177AD08);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.debug.getter();
    v7 = os_log_type_enabled(v5, v6);
    v8 = *(v0 + 56);
    if (v7)
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Got connection event but timed out waiting for pairing event.", v9, 2u);
    }
  }

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_10043958C(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v20 = *(v6 - 8);
  v7 = *(v20 + 64);
  __chkstk_darwin(v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DispatchQoS();
  v10 = *(v19 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v19);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(a2 + 48);
  v14 = swift_allocObject();
  v14[2] = a2;
  v14[3] = a3;
  v14[4] = a1;
  aBlock[4] = sub_10046B028;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_10161DE00;
  v15 = _Block_copy(aBlock);

  v16 = a3;

  static DispatchQoS.unspecified.getter();
  aBlock[7] = _swiftEmptyArrayStorage;
  sub_100019D54(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v15);
  (*(v20 + 8))(v9, v6);
  (*(v10 + 8))(v13, v19);
}

uint64_t sub_100439880(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v19 = *(v6 - 8);
  v7 = *(v19 + 64);
  __chkstk_darwin(v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchQoS();
  v10 = *(v18 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v18);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a2 + 48);
  v14 = swift_allocObject();
  v14[2] = a1;
  v14[3] = a3;
  v14[4] = a2;
  aBlock[4] = sub_10046B1C4;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_10161DE78;
  v15 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[7] = _swiftEmptyArrayStorage;
  sub_100019D54(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v15);
  (*(v19 + 8))(v9, v6);
  (*(v10 + 8))(v13, v18);
}

void sub_100439B70(uint64_t a1, uint64_t a2, void *a3)
{
  v205 = a3;
  v4 = sub_1000BC4D4(&unk_1016AF8B0, &unk_1013A0700);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v195 = &v186 - v6;
  v194 = type metadata accessor for OwnedBeaconGroup(0);
  v193 = *(v194 - 8);
  v7 = *(v193 + 64);
  v8 = __chkstk_darwin(v194);
  v190 = &v186 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v186 - v10;
  v12 = sub_1000BC4D4(&qword_1016A40D0, &unk_10138BE70);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v198 = &v186 - v14;
  v15 = type metadata accessor for BluetoothPairingState.Reason();
  v200 = *(v15 - 8);
  v201 = v15;
  v16 = *(v200 + 64);
  __chkstk_darwin(v15);
  v203 = &v186 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for MACAddress();
  v209 = *(v18 - 8);
  v19 = *(v209 + 8);
  v20 = __chkstk_darwin(v18);
  v197 = &v186 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v204 = &v186 - v23;
  __chkstk_darwin(v22);
  v202 = (&v186 - v24);
  v25 = sub_1000BC4D4(&qword_1016A0670, &qword_1013A3728);
  v26 = *(*(v25 - 8) + 64);
  __chkstk_darwin(v25 - 8);
  v206 = (&v186 - v27);
  v28 = type metadata accessor for BluetoothPairingState();
  v29 = *(v28 - 8);
  v30 = *(v29 + 8);
  v31 = __chkstk_darwin(v28);
  v192 = &v186 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __chkstk_darwin(v31);
  v189 = &v186 - v34;
  v35 = __chkstk_darwin(v33);
  v196 = &v186 - v36;
  v37 = __chkstk_darwin(v35);
  v207 = &v186 - v38;
  __chkstk_darwin(v37);
  v40 = &v186 - v39;
  Transaction.capture()();
  if (qword_1016946F0 != -1)
  {
    swift_once();
  }

  v41 = type metadata accessor for Logger();
  v42 = sub_1000076D4(v41, qword_10177AD08);
  v43 = Logger.logObject.getter();
  v44 = static os_log_type_t.info.getter();
  v45 = os_log_type_enabled(v43, v44);
  v208 = v18;
  v191 = v11;
  if (v45)
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v199 = v40;
    v188 = v28;
    v187 = v47;
    v211[0] = v47;
    *v46 = 134218242;
    *(v46 + 4) = a2;
    *(v46 + 12) = 2080;
    v210 = a2;
    sub_100235658();
    v48 = FixedWidthInteger.data.getter();
    v49 = v42;
    v51 = v50;
    v52 = v29;
    v53 = Data.hexString.getter();
    v55 = v54;
    v56 = v51;
    v42 = v49;
    sub_100016590(v48, v56);
    v57 = v53;
    v29 = v52;
    v58 = sub_1000136BC(v57, v55, v211);

    *(v46 + 14) = v58;
    _os_log_impl(&_mh_execute_header, v43, v44, "handlePairingNotification. State %llu. Raw %s", v46, 0x16u);
    sub_100007BAC(v187);
    v28 = v188;
    v40 = v199;
  }

  v59 = v206;
  BluetoothPairingState.init(rawValue:)();
  v60 = (*(v29 + 6))(v59, 1, v28);
  v61 = v207;
  if (v60 != 1)
  {
    (*(v29 + 4))(v40, v59, v28);
    v206 = *(v29 + 2);
    (v206)(v61, v40, v28);
    v65 = Logger.logObject.getter();
    v66 = static os_log_type_t.default.getter();
    v67 = os_log_type_enabled(v65, v66);
    v186 = v42;
    if (v67)
    {
      v68 = swift_slowAlloc();
      v69 = v28;
      v70 = swift_slowAlloc();
      v211[0] = v70;
      *v68 = 136446210;
      sub_100019D54(&qword_1016A0678, &type metadata accessor for BluetoothPairingState);
      v71 = dispatch thunk of CustomStringConvertible.description.getter();
      v72 = v61;
      v74 = v73;
      v207 = *(v29 + 1);
      (v207)(v72, v69);
      v75 = sub_1000136BC(v71, v74, v211);

      *(v68 + 4) = v75;
      _os_log_impl(&_mh_execute_header, v65, v66, "BluetoothPairingState %{public}s", v68, 0xCu);
      sub_100007BAC(v70);
      v28 = v69;
    }

    else
    {

      v207 = *(v29 + 1);
      (v207)(v61, v28);
    }

    v76 = v205;
    v77 = v209;
    v78 = v202;
    BluetoothPairingState.macAddress.getter();
    v79 = v203;
    BluetoothPairingState.reason.getter();
    v81 = v200;
    v80 = v201;
    v82 = (*(v200 + 88))(v79, v201);
    if (v82 == enum case for BluetoothPairingState.Reason.unknown(_:))
    {
      goto LABEL_13;
    }

    if (v82 == enum case for BluetoothPairingState.Reason.paired(_:))
    {
      v83 = 3;
      goto LABEL_18;
    }

    if (v82 == enum case for BluetoothPairingState.Reason.unpaired(_:))
    {
      v83 = 1;
      goto LABEL_18;
    }

    if (v82 != enum case for BluetoothPairingState.Reason.unpairedUserSwitch(_:))
    {
      v83 = 1;
      if (v82 == enum case for BluetoothPairingState.Reason.unpairedCloud(_:) || v82 == enum case for BluetoothPairingState.Reason.unpairMagnet(_:))
      {
LABEL_18:
        v84 = sub_10042C0FC();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v211[0] = v84;
        sub_100FFCE84(v83, v78, isUniquelyReferenced_nonNull_native);
        v88 = *(v77 + 1);
        v86 = v77 + 8;
        v87 = v88;
        v89 = v208;
        (v88)(v78, v208);
        sub_10042C564();
        if (BluetoothPairingState.isUnpaired.getter())
        {
          v203 = v29;
          v90 = v87;
          v91 = v76[4];
          v92 = v204;
          v93 = BluetoothPairingState.macAddress.getter();
          v94 = *(*(v91 + 24) + OBJC_IVAR____TtC12searchpartyd14CentralManager_lock);
          __chkstk_darwin(v93);
          *(&v186 - 2) = v92;
          *(&v186 - 1) = v95;
          sub_1000BC4D4(&unk_1016A6370, &unk_101391AA0);
          v209 = v86;
          Lock.callAsFunction<A>(_:)();
          v96 = v208;
          v97 = v211[0];
          (v90)(v92, v208);
          if (v97)
          {
            sub_100A245E8(0xD000000000000013, 0x8000000101355220);
            BluetoothPairingState.macAddress.getter();
            sub_10043B150(v97, v92);

            (v90)(v92, v96);
LABEL_26:
            v119 = v40;
LABEL_27:
            (v207)(v119, v28);
            return;
          }

          v202 = v90;
          v120 = v196;
          v199 = v40;
          (v206)(v196, v40, v28);
          v121 = Logger.logObject.getter();
          v122 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v121, v122))
          {
            v123 = swift_slowAlloc();
            v206 = swift_slowAlloc();
            v211[0] = v206;
            *v123 = 136315138;
            v124 = v204;
            BluetoothPairingState.macAddress.getter();
            sub_100019D54(&qword_1016A4210, &type metadata accessor for MACAddress);
            v125 = dispatch thunk of CustomStringConvertible.description.getter();
            v126 = v28;
            v128 = v127;
            v129 = v202;
            (v202)(v124, v208);
            v130 = v120;
            v131 = v207;
            (v207)(v130, v126);
            v132 = sub_1000136BC(v125, v128, v211);
            v28 = v126;

            *(v123 + 4) = v132;
            _os_log_impl(&_mh_execute_header, v121, v122, "Unable to retrieve peripheral from %s", v123, 0xCu);
            sub_100007BAC(v206);
            v96 = v208;
          }

          else
          {

            v147 = v120;
            v131 = v207;
            (v207)(v147, v28);
            v124 = v204;
            v129 = v202;
          }

          v148 = v199;
          BluetoothPairingState.macAddress.getter();
          swift_beginAccess();
          v149 = v198;
          sub_1010F701C(v124, v198);
          (v129)(v124, v96);
          v150 = v149;
        }

        else
        {
          if ((BluetoothPairingState.isPaired.getter() & 1) == 0)
          {
            goto LABEL_26;
          }

          v209 = v29 + 16;
          v98 = v89;
          v99 = v197;
          BluetoothPairingState.macAddress.getter();
          swift_beginAccess();
          v100 = v204;
          v101 = sub_100DED164(v204, v99);
          v102 = v87;
          LOBYTE(v99) = v101;
          v103 = v98;
          v104 = v98;
          v105 = v102;
          (v102)(v100, v104);
          swift_endAccess();
          if ((v99 & 1) == 0)
          {
            v202 = v105;
            v133 = v192;
            (v206)(v192, v40, v28);
            v134 = Logger.logObject.getter();
            v135 = v40;
            v136 = static os_log_type_t.info.getter();
            if (os_log_type_enabled(v134, v136))
            {
              v137 = swift_slowAlloc();
              v209 = v86;
              v138 = v137;
              v139 = swift_slowAlloc();
              v140 = v208;
              v199 = v135;
              v206 = v139;
              v211[0] = v139;
              *v138 = 136315138;
              v141 = v204;
              BluetoothPairingState.macAddress.getter();
              sub_100019D54(&qword_1016A4210, &type metadata accessor for MACAddress);
              v142 = dispatch thunk of CustomStringConvertible.description.getter();
              v144 = v143;
              (v202)(v141, v140);
              v145 = v207;
              (v207)(v133, v28);
              v146 = sub_1000136BC(v142, v144, v211);

              *(v138 + 4) = v146;
              _os_log_impl(&_mh_execute_header, v134, v136, "Already handling pairing event for this MAC %s.", v138, 0xCu);
              sub_100007BAC(v206);

              v145(v199, v28);
            }

            else
            {

              v163 = v207;
              (v207)(v133, v28);
              v163(v135, v28);
            }

            return;
          }

          v203 = v29;
          v106 = v76[2];
          BluetoothPairingState.macAddress.getter();
          v107 = v195;
          sub_100AC5D4C(v100, v195);
          v108 = v107;
          (v105)(v100, v103);
          v109 = (*(v193 + 48))(v107, 1, v194);
          v110 = v86;
          if (v109 != 1)
          {
            v202 = v105;
            v209 = v86;
            v199 = v40;
            v151 = v191;
            sub_10046B7F0(v108, v191, type metadata accessor for OwnedBeaconGroup);
            v152 = v190;
            sub_10046A814(v151, v190, type metadata accessor for OwnedBeaconGroup);
            v153 = Logger.logObject.getter();
            v154 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v153, v154))
            {
              v155 = v152;
              v156 = swift_slowAlloc();
              v157 = v28;
              v158 = swift_slowAlloc();
              v211[0] = v158;
              *v156 = 136315138;
              v159 = sub_10051F7B0(v158);
              v161 = v160;
              sub_10046B858(v155, type metadata accessor for OwnedBeaconGroup);
              v162 = sub_1000136BC(v159, v161, v211);

              *(v156 + 4) = v162;
              _os_log_impl(&_mh_execute_header, v153, v154, "Received pairing event for existing %s", v156, 0xCu);
              sub_100007BAC(v158);
              v28 = v157;
            }

            else
            {

              sub_10046B858(v152, type metadata accessor for OwnedBeaconGroup);
            }

            ThrottledDarwinPoster.post(bypassRateLimit:)(1);
            v164 = v199;
            if (v165)
            {
            }

            v166 = v204;
            BluetoothPairingState.macAddress.getter();
            swift_beginAccess();
            v167 = v198;
            sub_1010F701C(v166, v198);
            (v202)(v166, v208);
            sub_10000B3A8(v167, &qword_1016A40D0, &unk_10138BE70);
            swift_endAccess();
            sub_10046B858(v151, type metadata accessor for OwnedBeaconGroup);
            v119 = v164;
            goto LABEL_27;
          }

          sub_10000B3A8(v108, &unk_1016AF8B0, &unk_1013A0700);
          v111 = v76[4];
          v112 = BluetoothPairingState.macAddress.getter();
          v202 = &v186;
          v113 = *(*(v111 + 24) + OBJC_IVAR____TtC12searchpartyd14CentralManager_lock);
          __chkstk_darwin(v112);
          *(&v186 - 2) = v100;
          *(&v186 - 1) = v114;
          sub_1000BC4D4(&unk_1016A6370, &unk_101391AA0);
          Lock.callAsFunction<A>(_:)();
          v115 = v208;
          v116 = v211[0];
          (v105)(v100, v208);
          if (v116)
          {
            sub_100A245E8(0xD000000000000013, 0x8000000101355220);
            v117 = v76[18];
            v211[0] = v116;

            PassthroughSubject.send(_:)();

            v118 = v76[18];
            LOBYTE(v211[0]) = 2;

            PassthroughSubject.send(completion:)();

            sub_10043CD48(v116);

            goto LABEL_26;
          }

          v168 = v110;
          v202 = v105;
          v169 = v189;
          v199 = v40;
          (v206)(v189, v40, v28);
          v170 = Logger.logObject.getter();
          v171 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v170, v171))
          {
            v172 = swift_slowAlloc();
            v209 = v168;
            v173 = v172;
            v174 = swift_slowAlloc();
            v211[0] = v174;
            *v173 = 136315138;
            v175 = v204;
            LODWORD(v206) = v171;
            BluetoothPairingState.macAddress.getter();
            sub_100019D54(&qword_1016A4210, &type metadata accessor for MACAddress);
            v176 = dispatch thunk of CustomStringConvertible.description.getter();
            v177 = v28;
            v179 = v178;
            v180 = v202;
            (v202)(v175, v208);
            v181 = v169;
            v131 = v207;
            (v207)(v181, v177);
            v182 = sub_1000136BC(v176, v179, v211);
            v28 = v177;

            *(v173 + 4) = v182;
            _os_log_impl(&_mh_execute_header, v170, v206, "Unable to retrieve peripheral from %s", v173, 0xCu);
            sub_100007BAC(v174);
            v183 = v208;
          }

          else
          {

            v184 = v169;
            v131 = v207;
            (v207)(v184, v28);
            v175 = v204;
            v180 = v202;
            v183 = v115;
          }

          v148 = v199;
          BluetoothPairingState.macAddress.getter();
          swift_beginAccess();
          v185 = v198;
          sub_1010F701C(v175, v198);
          (v180)(v175, v183);
          v150 = v185;
        }

        sub_10000B3A8(v150, &qword_1016A40D0, &unk_10138BE70);
        swift_endAccess();
        v131(v148, v28);
        return;
      }

      (*(v81 + 8))(v203, v80);
    }

LABEL_13:
    v83 = 0;
    goto LABEL_18;
  }

  sub_10000B3A8(v59, &qword_1016A0670, &qword_1013A3728);
  v62 = Logger.logObject.getter();
  v63 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v62, v63))
  {
    v64 = swift_slowAlloc();
    *v64 = 0;
    _os_log_impl(&_mh_execute_header, v62, v63, "Invalid bluetooth pairing state.", v64, 2u);
  }
}

void sub_10043B150(char *a1, uint64_t a2)
{
  v3 = v2;
  v112 = a2;
  v109 = a1;
  v105 = sub_1000BC4D4(&qword_1016A40D0, &unk_10138BE70);
  v4 = *(*(v105 - 8) + 64);
  __chkstk_darwin(v105);
  v108 = &v92 - v5;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v103 = *(v6 - 8);
  v104 = v6;
  v7 = *(v103 + 64);
  __chkstk_darwin(v6);
  v101 = &v92 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = type metadata accessor for DispatchQoS();
  v100 = *(v102 - 8);
  v9 = *(v100 + 64);
  __chkstk_darwin(v102);
  v99 = &v92 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for MACAddress();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v107 = &v92 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v106 = &v92 - v17;
  v18 = __chkstk_darwin(v16);
  v20 = &v92 - v19;
  v98 = v21;
  __chkstk_darwin(v18);
  v23 = &v92 - v22;
  v24 = type metadata accessor for DispatchPredicate();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  __chkstk_darwin(v24);
  v28 = (&v92 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = *(v3 + 48);
  *v28 = v29;
  (*(v25 + 104))(v28, enum case for DispatchPredicate.onQueue(_:), v24);
  v30 = v29;
  v31 = _dispatchPreconditionTest(_:)();
  (*(v25 + 8))(v28, v24);
  if ((v31 & 1) == 0)
  {
    __break(1u);
LABEL_23:
    swift_once();
LABEL_4:
    v107 = v23;
    v33 = type metadata accessor for Logger();
    v34 = sub_1000076D4(v33, qword_10177AD08);
    v35 = v106;
    v111(v106, v30, v11);
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.default.getter();
    v38 = os_log_type_enabled(v36, v37);
    v95 = v11;
    if (v38)
    {
      v39 = swift_slowAlloc();
      v94 = v34;
      v40 = v39;
      v93 = swift_slowAlloc();
      aBlock[0] = v93;
      *v40 = 136446210;
      sub_100019D54(&qword_1016A4210, &type metadata accessor for MACAddress);
      v41 = dispatch thunk of CustomStringConvertible.description.getter();
      v43 = v42;
      (v12)(v35, v11);
      v44 = sub_1000136BC(v41, v43, aBlock);

      *(v40 + 4) = v44;
      _os_log_impl(&_mh_execute_header, v36, v37, "Received unpair event for address %{public}s.", v40, 0xCu);
      sub_100007BAC(v93);
    }

    else
    {

      (v12)(v35, v11);
    }

    v56 = sub_100436F60(v109);
    v57 = v110;
    if (v56)
    {
      v58 = v56;
      v59 = *(v56 + 24);
      QueueSynchronizer.conditionalSync<A>(_:)();
      if (aBlock[0])
      {
        v60 = Logger.logObject.getter();
        v61 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v60, v61))
        {
          v62 = swift_slowAlloc();
          *v62 = 0;
          _os_log_impl(&_mh_execute_header, v60, v61, "Pairing is in progress. Deferring unpair!", v62, 2u);
        }

        swift_beginAccess();
        v63 = v108;
        sub_1010F701C(v112, v108);
        sub_10000B3A8(v63, &qword_1016A40D0, &unk_10138BE70);
        swift_endAccess();
      }

      else
      {
        v68 = dispatch_group_create();
        dispatch_group_enter(v68);
        v69 = v112;
        v94 = 0;
        v111(v107, v112, v95);
        v70 = *(v57 + 80);
        v71 = v57;
        v106 = v58;
        v72 = ((v70 + 16) & ~v70);
        v93 = v72;
        v73 = (v72 + v98 + 7) & 0xFFFFFFFFFFFFFFF8;
        v74 = swift_allocObject();
        v75 = *(v71 + 32);
        v110 = v71 + 32;
        v76 = v72 + v74;
        v77 = v107;
        v78 = v95;
        v75(v76, v107, v95);
        *(v74 + v73) = v68;
        v98 = v68;
        sub_100E25204(v69, sub_10046AE8C, v74);

        v111(v77, v69, v78);
        v79 = swift_allocObject();
        v75(v93 + v79, v77, v78);
        *(v79 + v73) = v97;
        v80 = v109;
        *(v79 + ((v73 + 15) & 0xFFFFFFFFFFFFFFF8)) = v109;
        aBlock[4] = sub_10046AEB8;
        aBlock[5] = v79;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_100006684;
        aBlock[3] = &unk_10161DD60;
        v81 = _Block_copy(aBlock);

        v82 = v80;
        v83 = v99;
        static DispatchQoS.unspecified.getter();
        v113 = _swiftEmptyArrayStorage;
        sub_100019D54(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
        sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
        sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
        v84 = v101;
        v85 = v104;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v86 = v98;
        OS_dispatch_group.notify(qos:flags:queue:execute:)();
        _Block_release(v81);
        (*(v103 + 8))(v84, v85);
        (*(v100 + 8))(v83, v102);

        v87 = sub_100437674();
        v88 = v87[3];
        v89 = __chkstk_darwin(v87);
        v90 = v112;
        *(&v92 - 2) = v89;
        *(&v92 - 1) = v90;
        v91 = v108;
        OS_dispatch_queue.sync<A>(execute:)();

        sub_10000B3A8(v91, &qword_1016A40D0, &unk_10138BE70);
      }
    }

    else
    {
      v64 = Logger.logObject.getter();
      v65 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v64, v65))
      {
        v66 = swift_slowAlloc();
        *v66 = 0;
        _os_log_impl(&_mh_execute_header, v64, v65, "Unable to create a new pairing manager to handle unpair!", v66, 2u);
      }

      swift_beginAccess();
      v67 = v108;
      sub_1010F701C(v112, v108);
      sub_10000B3A8(v67, &qword_1016A40D0, &unk_10138BE70);
      swift_endAccess();
    }

    return;
  }

  v96 = v30;
  v30 = v112;
  v111 = *(v12 + 16);
  v111(v20, v112, v11);
  swift_beginAccess();
  v32 = sub_100DED164(v23, v20);
  v110 = v12;
  v12 = *(v12 + 8);
  (v12)(v23, v11);
  swift_endAccess();
  if (v32)
  {
    v97 = v3;
    if (qword_1016946F0 == -1)
    {
      goto LABEL_4;
    }

    goto LABEL_23;
  }

  if (qword_1016946F0 != -1)
  {
    swift_once();
  }

  v45 = type metadata accessor for Logger();
  sub_1000076D4(v45, qword_10177AD08);
  v46 = v107;
  v111(v107, v30, v11);
  v47 = Logger.logObject.getter();
  v48 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    v50 = v12;
    v51 = swift_slowAlloc();
    aBlock[0] = v51;
    *v49 = 136446210;
    sub_100019D54(&qword_1016A4210, &type metadata accessor for MACAddress);
    v52 = dispatch thunk of CustomStringConvertible.description.getter();
    v54 = v53;
    v50(v46, v11);
    v55 = sub_1000136BC(v52, v54, aBlock);

    *(v49 + 4) = v55;
    _os_log_impl(&_mh_execute_header, v47, v48, "Already handling unpairing event for this MAC %{public}s.", v49, 0xCu);
    sub_100007BAC(v51);
  }

  else
  {

    (v12)(v46, v11);
  }
}

void sub_10043BE28(uint64_t a1, NSObject *a2)
{
  v4 = type metadata accessor for MACAddress();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v21[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1016946F0 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_1000076D4(v9, qword_10177AD08);
  (*(v5 + 16))(v8, a1, v4);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v21[0] = v13;
    *v12 = 136446210;
    sub_100019D54(&qword_1016A4210, &type metadata accessor for MACAddress);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    (*(v5 + 8))(v8, v4);
    v17 = sub_1000136BC(v14, v16, v21);

    *(v12 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v10, v11, "Unpair completed for address %{public}s.", v12, 0xCu);
    sub_100007BAC(v13);
  }

  else
  {

    (*(v5 + 8))(v8, v4);
  }

  My = type metadata accessor for Feature.FindMy();
  v21[3] = My;
  v21[4] = sub_100019D54(&qword_1016AF950, &type metadata accessor for Feature.FindMy);
  v19 = sub_1000280DC(v21);
  (*(*(My - 8) + 104))(v19, enum case for Feature.FindMy.managedCBPeripheral(_:), My);
  LOBYTE(My) = isFeatureEnabled(_:)();
  sub_100007BAC(v21);
  if (My)
  {
    static DarwinNotification.post(name:)();
  }

  dispatch_group_leave(a2);
}

void sub_10043C154(void *a1, uint64_t a2, uint64_t a3)
{
  v91 = a3;
  v95 = a2;
  v4 = sub_1000BC4D4(&qword_101699860, &qword_1013A34D0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v83 - v6;
  v88 = type metadata accessor for Device();
  v86 = *(v88 - 8);
  v8 = *(v86 + 64);
  v9 = __chkstk_darwin(v88);
  v11 = &v83 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v87 = &v83 - v12;
  v13 = type metadata accessor for UUID();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v89 = &v83 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1000BC4D4(&qword_1016A40D0, &unk_10138BE70);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v19 = &v83 - v18;
  v20 = type metadata accessor for MACAddress();
  v21 = *(v20 - 8);
  v22 = v21[8];
  v23 = __chkstk_darwin(v20);
  v83 = &v83 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23);
  v92 = &v83 - v26;
  v27 = __chkstk_darwin(v25);
  v90 = &v83 - v28;
  __chkstk_darwin(v27);
  v30 = &v83 - v29;
  if (qword_1016946F0 != -1)
  {
    swift_once();
  }

  v31 = type metadata accessor for Logger();
  v32 = sub_1000076D4(v31, qword_10177AD08);
  v33 = v21[2];
  v98 = v21 + 2;
  v99 = v33;
  (v33)(v30, a1, v20);
  v93 = v32;
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.default.getter();
  v36 = os_log_type_enabled(v34, v35);
  v84 = v11;
  v94 = v7;
  v97 = v21;
  if (v36)
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v85 = a1;
    v39 = v38;
    v100[0] = v38;
    *v37 = 136446210;
    sub_100019D54(&qword_1016A4210, &type metadata accessor for MACAddress);
    v40 = dispatch thunk of CustomStringConvertible.description.getter();
    v42 = v41;
    v96 = v21[1];
    v96(v30, v20);
    v43 = sub_1000136BC(v40, v42, v100);

    *(v37 + 4) = v43;
    _os_log_impl(&_mh_execute_header, v34, v35, "Removing %{public}s from unpairing addresses.", v37, 0xCu);
    sub_100007BAC(v39);
    a1 = v85;
  }

  else
  {

    v96 = v21[1];
    v96(v30, v20);
  }

  v44 = v95;
  swift_beginAccess();
  sub_1010F701C(a1, v19);
  sub_10000B3A8(v19, &qword_1016A40D0, &unk_10138BE70);
  swift_endAccess();
  v45 = [*(v91 + OBJC_IVAR____TtC12searchpartyd10Peripheral_underlyingObject) identifier];
  v46 = v89;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  swift_beginAccess();
  sub_1001DE870(0, v46);
  swift_endAccess();
  v47 = v90;
  v48 = v99;
  (v99)(v90, a1, v20);
  v49 = Logger.logObject.getter();
  v50 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    v52 = a1;
    v53 = swift_slowAlloc();
    v100[0] = v53;
    *v51 = 136446210;
    sub_100019D54(&qword_1016A4210, &type metadata accessor for MACAddress);
    v54 = dispatch thunk of CustomStringConvertible.description.getter();
    v55 = v47;
    v57 = v56;
    v96(v55, v20);
    v58 = sub_1000136BC(v54, v57, v100);

    *(v51 + 4) = v58;
    _os_log_impl(&_mh_execute_header, v49, v50, "Resetting attempted retries for %{public}s.", v51, 0xCu);
    sub_100007BAC(v53);
    a1 = v52;

    v48 = v99;
  }

  else
  {

    v96(v47, v20);
  }

  v59 = v94;
  v60 = v92;
  (v48)(v92, a1, v20);
  v100[0] = sub_10042D2E0();
  sub_1001DEA30(0, 1, v60);
  sub_10042D744();
  sub_10044DA44(v59);
  v61 = v86;
  v62 = v88;
  if ((*(v86 + 48))(v59, 1, v88) == 1)
  {
    sub_10000B3A8(v59, &qword_101699860, &qword_1013A34D0);
    v63 = v83;
    (v99)(v83, a1, v20);
    v64 = Logger.logObject.getter();
    v65 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v100[0] = v67;
      *v66 = 136446210;
      sub_100019D54(&qword_1016A4210, &type metadata accessor for MACAddress);
      v68 = dispatch thunk of CustomStringConvertible.description.getter();
      v70 = v69;
      v96(v63, v20);
      v71 = sub_1000136BC(v68, v70, v100);

      *(v66 + 4) = v71;
      _os_log_impl(&_mh_execute_header, v64, v65, "No BT device matching %{public}s after unpair as expected.", v66, 0xCu);
      sub_100007BAC(v67);
    }

    else
    {

      v96(v63, v20);
    }
  }

  else
  {
    v72 = v87;
    (*(v61 + 32))(v87, v59, v62);
    v73 = v84;
    (*(v61 + 16))(v84, v72, v62);
    v74 = v62;
    v75 = Logger.logObject.getter();
    v76 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      v99 = swift_slowAlloc();
      v100[0] = v99;
      *v77 = 136315138;
      sub_100019D54(&unk_1016B7C90, &type metadata accessor for Device);
      LODWORD(v98) = v76;
      v78 = dispatch thunk of CustomStringConvertible.description.getter();
      v85 = a1;
      v80 = v79;
      v81 = *(v61 + 8);
      v81(v73, v74);
      v82 = sub_1000136BC(v78, v80, v100);
      a1 = v85;

      *(v77 + 4) = v82;
      _os_log_impl(&_mh_execute_header, v75, v98, "Found paired BT device %s after unpair. Need to pair.", v77, 0xCu);
      sub_100007BAC(v99);
    }

    else
    {

      v81 = *(v61 + 8);
      v81(v73, v74);
    }

    sub_101320F88(a1, *(*(v44 + 32) + 24));
    v81(v87, v74);
  }
}

uint64_t sub_10043CD48(void *a1)
{
  v2 = v1;
  v4 = sub_1000BC4D4(&unk_1016B0FE0, &unk_101391980);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v54 = v49 - v6;
  v57 = sub_1000BC4D4(&qword_1016A05C8, &qword_1013A36A0);
  v55 = *(v57 - 8);
  v7 = *(v55 + 64);
  __chkstk_darwin(v57);
  v63 = v49 - v8;
  v9 = sub_1000BC4D4(&qword_1016A05D0, &qword_1013A36A8);
  v58 = *(v9 - 8);
  v59 = v9;
  v10 = *(v58 + 64);
  __chkstk_darwin(v9);
  v56 = v49 - v11;
  v12 = sub_1000BC4D4(&qword_1016A05D8, &qword_1013A36B0);
  v61 = *(v12 - 8);
  v62 = v12;
  v13 = *(v61 + 64);
  __chkstk_darwin(v12);
  v60 = v49 - v14;
  v15 = sub_1000BC4D4(&qword_1016A05E0, &qword_1013A36B8);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = v49 - v18;
  v20 = type metadata accessor for DispatchPredicate();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20);
  v24 = (v49 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = *(v2 + 48);
  *v24 = v25;
  (*(v21 + 104))(v24, enum case for DispatchPredicate.onQueue(_:), v20);
  v26 = v25;
  LOBYTE(v25) = _dispatchPreconditionTest(_:)();
  v28 = *(v21 + 8);
  v27 = v21 + 8;
  v28(v24, v20);
  if ((v25 & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  v50 = v19;
  v51 = v16;
  v52 = v15;
  v53 = a1;
  v29 = sub_1000BC4D4(&qword_1016A05E8, &qword_1013A36C0);
  v30 = *(v29 + 48);
  v31 = *(v29 + 52);
  swift_allocObject();
  v32 = PassthroughSubject.init()();
  v33 = *(v2 + 152);
  *(v2 + 152) = v32;

  v49[2] = v32;
  v64 = v32;
  sub_1000041A4(&qword_1016A05F0, &qword_1016A05E8, &qword_1013A36C0);
  v64 = Publisher.eraseToAnyPublisher()();
  v65 = v26;
  v27 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v34 = *(v27 - 8);
  v49[1] = v2;
  v19 = v54;
  v49[0] = *(v34 + 56);
  (v49[0])(v54, 1, 1, v27);
  sub_1000BC4D4(&qword_1016A05F8, &qword_1013A36C8);
  sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
  sub_1000041A4(&qword_1016A0600, &qword_1016A05F8, &qword_1013A36C8);
  sub_1004682F0();
  Publisher.receive<A>(on:options:)();
  sub_10000B3A8(v19, &unk_1016B0FE0, &unk_101391980);

  if (qword_1016946F8 != -1)
  {
LABEL_5:
    swift_once();
  }

  v35 = type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
  sub_1000076D4(v35, qword_1016A00B8);
  v64 = v26;
  (v49[0])(v19, 1, 1, v27);
  sub_1000041A4(&qword_1016A0608, &qword_1016A05C8, &qword_1013A36A0);
  v36 = v56;
  v37 = v57;
  v38 = v63;
  Publisher.timeout<A>(_:scheduler:options:customError:)();
  sub_10000B3A8(v19, &unk_1016B0FE0, &unk_101391980);

  (*(v55 + 8))(v38, v37);
  sub_1000BC4D4(&qword_1016A0610, &qword_1013A36D0);
  sub_1000041A4(&qword_1016A0618, &qword_1016A05D0, &qword_1013A36A8);
  v39 = v59;
  v40 = v60;
  Publisher.map<A>(_:)();
  (*(v58 + 8))(v36, v39);
  sub_1000BC4D4(&qword_1016A0620, &qword_1013A36D8);
  sub_1000041A4(&qword_1016A0628, &qword_1016A05D8, &qword_1013A36B0);
  sub_1000041A4(&qword_1016A0630, &qword_1016A0620, &qword_1013A36D8);
  v41 = v50;
  v42 = v62;
  Publisher.catch<A>(_:)();
  (*(v61 + 8))(v40, v42);
  v43 = swift_allocObject();
  swift_weakInit();
  v44 = swift_allocObject();
  v45 = v53;
  *(v44 + 16) = v43;
  *(v44 + 24) = v45;
  sub_1000041A4(&qword_1016A0638, &qword_1016A05E0, &qword_1013A36B8);
  v46 = v45;
  v47 = v52;
  Publisher<>.sink(receiveValue:)();

  (*(v51 + 8))(v41, v47);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();
}

uint64_t sub_10043D608(unsigned __int8 *a1)
{
  v2 = *a1;
  sub_1000BC4D4(&qword_1016A0610, &qword_1013A36D0);
  return Just.init(_:)();
}

uint64_t sub_10043DFA0()
{
  v1 = v0;
  v2 = sub_1000BC4D4(&unk_1016B0FE0, &unk_101391980);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v32 - v4;
  v6 = sub_1000BC4D4(&qword_1016A0558, &qword_1013A35A0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v32 - v9;
  v11 = sub_1000BC4D4(&qword_1016A0560, &qword_1013A35A8);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v32 - v14;
  if (qword_101694FA8 != -1)
  {
    swift_once();
  }

  v36 = 0x7365547265646E75;
  v37 = 0xE900000000000074;
  result = SynchronousCache.cachedValue<A>(key:computeBlock:)();
  if ((v38 & 1) == 0)
  {
    v33 = v6;
    if (qword_1016946F0 != -1)
    {
      swift_once();
    }

    v32 = v7;
    v34 = v12;
    v35 = v11;
    v17 = type metadata accessor for Logger();
    sub_1000076D4(v17, qword_10177AD08);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "connectionEventInitialSetup", v20, 2u);
    }

    v21 = *(v1 + 32);
    sub_1000BC4D4(&qword_1016A61D0, &unk_1013A3540);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_101385D80;
    *(v22 + 56) = &type metadata for BAServiceIdentifier;
    *(v22 + 64) = &off_10162CAF0;
    *(v22 + 32) = 1;
    v23 = *(v21 + 24);
    v24 = sub_1013229A8(v22);

    v36 = v24;
    v38 = *(v1 + 48);
    v25 = v38;
    v26 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
    (*(*(v26 - 8) + 56))(v5, 1, 1, v26);
    v27 = v25;
    sub_1000BC4D4(&qword_1016A0568, &qword_1013A35B0);
    sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
    sub_1000041A4(&qword_1016A0570, &qword_1016A0568, &qword_1013A35B0);
    sub_1004682F0();
    Publisher.receive<A>(on:options:)();
    sub_10000B3A8(v5, &unk_1016B0FE0, &unk_101391980);

    sub_1000BC4D4(&qword_1016A0578, &qword_1013A35B8);
    sub_1000041A4(&qword_1016A0580, &qword_1016A0558, &qword_1013A35A0);
    v28 = v33;
    Publisher.compactMap<A>(_:)();

    (*(v32 + 8))(v10, v28);
    v29 = swift_allocObject();
    swift_weakInit();
    v30 = swift_allocObject();
    *(v30 + 16) = sub_100468DF8;
    *(v30 + 24) = v29;
    sub_1000041A4(&qword_1016A0588, &qword_1016A0560, &qword_1013A35A8);
    v31 = v35;
    Publisher<>.sink(receiveValue:)();

    (*(v34 + 8))(v15, v31);
    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();
  }

  return result;
}

void sub_10043E590(char **a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1000BC4D4(&unk_1016B0FE0, &unk_101391980);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v215 = &v178[-v8];
  v196 = sub_1000BC4D4(&qword_10169E848, &unk_10139DC30);
  v195 = *(v196 - 8);
  v9 = *(v195 + 64);
  __chkstk_darwin(v196);
  v194 = &v178[-v10];
  v200 = sub_1000BC4D4(&qword_10169E850, &unk_1013A3500);
  v199 = *(v200 - 8);
  v11 = *(v199 + 64);
  __chkstk_darwin(v200);
  v197 = &v178[-v12];
  v202 = sub_1000BC4D4(&qword_10169E858, &unk_10139DC40);
  v201 = *(v202 - 8);
  v13 = *(v201 + 64);
  __chkstk_darwin(v202);
  v198 = &v178[-v14];
  v206 = sub_1000BC4D4(&qword_10169E860, &unk_1013A3510);
  v204 = *(v206 - 8);
  v15 = *(v204 + 64);
  __chkstk_darwin(v206);
  v203 = &v178[-v16];
  v208 = sub_1000BC4D4(&qword_10169E868, &qword_10139DC50);
  v207 = *(v208 - 8);
  v17 = *(v207 + 64);
  __chkstk_darwin(v208);
  v205 = &v178[-v18];
  v211 = sub_1000BC4D4(&qword_1016A0590, &qword_1013A35C0);
  v210 = *(v211 - 8);
  v19 = *(v210 + 64);
  __chkstk_darwin(v211);
  v209 = &v178[-v20];
  v214 = sub_1000BC4D4(&qword_1016A0598, &unk_1013A35C8);
  v213 = *(v214 - 8);
  v21 = *(v213 + 64);
  __chkstk_darwin(v214);
  v212 = &v178[-v22];
  v189 = type metadata accessor for DispatchWorkItemFlags();
  v188 = *(v189 - 8);
  v23 = *(v188 + 64);
  __chkstk_darwin(v189);
  v186 = &v178[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v187 = type metadata accessor for DispatchQoS();
  v185 = *(v187 - 8);
  v25 = *(v185 + 64);
  __chkstk_darwin(v187);
  v184 = &v178[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v27 = sub_1000BC4D4(&qword_101699860, &qword_1013A34D0);
  v28 = *(*(v27 - 8) + 64);
  __chkstk_darwin(v27 - 8);
  v30 = &v178[-v29];
  v31 = type metadata accessor for Device();
  v193 = *(v31 - 8);
  v32 = *(v193 + 64);
  v33 = __chkstk_darwin(v31);
  v183 = &v178[-((v34 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v182 = v34;
  __chkstk_darwin(v33);
  v190 = &v178[-v35];
  v36 = type metadata accessor for BeaconObservation();
  v37 = *(v36 - 8);
  v224 = v36;
  v225 = v37;
  v38 = *(v37 + 64);
  __chkstk_darwin(v36);
  v226 = &v178[-((v39 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v40 = sub_1000BC4D4(&unk_1016AF8B0, &unk_1013A0700);
  v41 = *(*(v40 - 8) + 64);
  v42 = __chkstk_darwin(v40 - 8);
  v44 = &v178[-((v43 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v42);
  v219 = &v178[-v45];
  v46 = type metadata accessor for OwnedBeaconGroup(0);
  v227 = *(v46 - 8);
  v228 = v46;
  v47 = *(v227 + 64);
  v48 = __chkstk_darwin(v46);
  v217 = &v178[-((v49 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v50 = __chkstk_darwin(v48);
  v218 = &v178[-v51];
  v52 = __chkstk_darwin(v50);
  v191 = &v178[-v53];
  __chkstk_darwin(v52);
  v55 = &v178[-v54];
  v56 = *a1;
  v57 = *(a1 + 8);
  if (qword_1016946F0 != -1)
  {
    swift_once();
  }

  v223 = type metadata accessor for Logger();
  v58 = sub_1000076D4(v223, qword_10177AD08);
  LocationDecryptionKey.rawValue.getter(v56);
  v220 = v58;
  v59 = Logger.logObject.getter();
  v60 = static os_log_type_t.debug.getter();

  v61 = os_log_type_enabled(v59, v60);
  v216 = v31;
  v192 = v30;
  if (v61)
  {
    v62 = swift_slowAlloc();
    v221 = v55;
    v63 = v62;
    v64 = swift_slowAlloc();
    aBlock[0] = v64;
    *v63 = 136315138;
    LocationDecryptionKey.rawValue.getter(v56);
    v65 = sub_101318004(v56, v57);
    v222 = a2;
    v66 = a3;
    v67 = v65;
    v69 = v68;

    v70 = sub_1000136BC(v67, v69, aBlock);

    *(v63 + 4) = v70;
    a3 = v66;
    a2 = v222;
    _os_log_impl(&_mh_execute_header, v59, v60, "connectionEvent: %s", v63, 0xCu);
    sub_100007BAC(v64);

    v55 = v221;
  }

  v71 = OBJC_IVAR____TtC12searchpartyd10Peripheral_underlyingObject;
  v72 = *&v56[OBJC_IVAR____TtC12searchpartyd10Peripheral_underlyingObject];
  if ((v57 & 0x80000000) == 0)
  {
    if ([*&v56[OBJC_IVAR____TtC12searchpartyd10Peripheral_underlyingObject] connectedTransport] == 1)
    {
      v73 = a2[2];
      sub_100440548(v56, v44);
      if ((*(v227 + 48))(v44, 1, v228) == 1)
      {
        sub_10000B3A8(v44, &unk_1016AF8B0, &unk_1013A0700);
      }

      else
      {
        v95 = v218;
        sub_10046B7F0(v44, v218, type metadata accessor for OwnedBeaconGroup);
        if (qword_101694B70 != -1)
        {
          swift_once();
        }

        sub_1000076D4(v223, qword_10177B780);
        v96 = v217;
        sub_10046A814(v95, v217, type metadata accessor for OwnedBeaconGroup);
        v97 = Logger.logObject.getter();
        v98 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v97, v98))
        {
          v99 = swift_slowAlloc();
          v100 = swift_slowAlloc();
          aBlock[0] = v100;
          *v99 = 136315138;
          v101 = *(v228 + 24);
          type metadata accessor for UUID();
          sub_100019D54(&qword_101696930, &type metadata accessor for UUID);
          v102 = dispatch thunk of CustomStringConvertible.description.getter();
          v104 = v103;
          sub_10046B858(v96, type metadata accessor for OwnedBeaconGroup);
          v105 = sub_1000136BC(v102, v104, aBlock);

          *(v99 + 4) = v105;
          _os_log_impl(&_mh_execute_header, v97, v98, "Saving classic bluetooth disconnect event for: %s", v99, 0xCu);
          sub_100007BAC(v100);
        }

        else
        {

          sub_10046B858(v96, type metadata accessor for OwnedBeaconGroup);
        }

        if (qword_101694920 != -1)
        {
          swift_once();
        }

        v118 = qword_10177B2E8;
        v119 = *(v228 + 24);
        v120 = type metadata accessor for UUID();
        v121 = v226;
        (*(*(v120 - 8) + 16))(v226, &v95[v119], v120);
        v122 = v224;
        static Date.trustedNow.getter(v121 + v224[5]);
        *(v121 + v122[6]) = 38;
        sub_1000BC4D4(&qword_1016AC9D0, &unk_10139D760);
        v123 = *(v225 + 72);
        v124 = (*(v225 + 80) + 32) & ~*(v225 + 80);
        v125 = swift_allocObject();
        *(v125 + 16) = xmmword_101385D80;
        sub_10046A814(v121, v125 + v124, type metadata accessor for BeaconObservation);
        v126 = type metadata accessor for Transaction();
        __chkstk_darwin(v126);
        *&v178[-32] = v118;
        *&v178[-24] = v125;
        *&v178[-16] = 0;
        *&v178[-8] = 0;
        static Transaction.named<A>(_:with:)();

        sub_10046B858(v121, type metadata accessor for BeaconObservation);
        sub_100A8306C(21);
        sub_100A83364(0);
        sub_10046B858(v95, type metadata accessor for OwnedBeaconGroup);
      }
    }

    goto LABEL_46;
  }

  v74 = v56;
  if ([v72 connectedTransport] != 1)
  {
    v86 = v74;
    v87 = Logger.logObject.getter();
    v88 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v87, v88))
    {
      v89 = v56;
      v90 = swift_slowAlloc();
      v91 = swift_slowAlloc();
      aBlock[0] = v91;
      *v90 = 136315138;
      v92 = [*&v89[v71] connectedTransport];
      if (v92 == 2)
      {
        v93 = 0xEA00000000007967;
        v94 = 0x72656E45776F6C2ELL;
      }

      else
      {
        v93 = 0xE800000000000000;
        if (v92 == 1)
        {
          v94 = 0x63697373616C632ELL;
        }

        else
        {
          v94 = 0x6E776F6E6B6E752ELL;
        }
      }

      v165 = sub_1000136BC(v94, v93, aBlock);

      *(v90 + 4) = v165;
      _os_log_impl(&_mh_execute_header, v87, v88, "Ignoring non-classic connection: %s", v90, 0xCu);
      sub_100007BAC(v91);

      v117 = v89;
    }

    else
    {

      v117 = v56;
    }

LABEL_46:
    v56 = 0;
    v164 = 0;
    goto LABEL_47;
  }

  v75 = v74;
  v76 = a2[2];
  v77 = swift_allocObject();
  v77[2] = a2;
  v77[3] = v74;
  v77[4] = v76;
  LocationDecryptionKey.rawValue.getter(v56);

  unsafeFromAsyncTask<A>(_:)();

  v78 = aBlock[0];
  v79 = v219;
  v218 = v75;
  sub_100440548(v75, v219);
  if ((*(v227 + 48))(v79, 1, v228) == 1)
  {
    sub_10000B3A8(v79, &unk_1016AF8B0, &unk_1013A0700);
    v80 = v218;
    if (v78)
    {
      if (qword_101694940 != -1)
      {
        swift_once();
      }

      v81 = *(qword_10177B348 + 40);
      OS_dispatch_queue.sync<A>(execute:)();
      LOBYTE(v81) = sub_1010748C0(aBlock[0]);

      if (v81)
      {
        v82 = Logger.logObject.getter();
        v83 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v82, v83))
        {
          v84 = swift_slowAlloc();
          *v84 = 0;
          _os_log_impl(&_mh_execute_header, v82, v83, "Checking if force pair is needed when no iCloud", v84, 2u);
        }

        type metadata accessor for Transaction();
        v85 = swift_allocObject();
        *(v85 + 16) = a2;
        *(v85 + 24) = v80;
        LocationDecryptionKey.rawValue.getter(v56);

        static Transaction.asyncTask(name:block:)();
      }
    }
  }

  else
  {
    sub_10046B7F0(v79, v55, type metadata accessor for OwnedBeaconGroup);
    if (qword_101694B70 != -1)
    {
      swift_once();
    }

    sub_1000076D4(v223, qword_10177B780);
    v106 = v191;
    sub_10046A814(v55, v191, type metadata accessor for OwnedBeaconGroup);
    v107 = Logger.logObject.getter();
    v108 = static os_log_type_t.debug.getter();
    v109 = os_log_type_enabled(v107, v108);
    v222 = a2;
    v181 = v56;
    v221 = v55;
    if (v109)
    {
      v110 = swift_slowAlloc();
      v111 = swift_slowAlloc();
      aBlock[0] = v111;
      *v110 = 136315138;
      v112 = *(v228 + 24);
      type metadata accessor for UUID();
      sub_100019D54(&qword_101696930, &type metadata accessor for UUID);
      v113 = dispatch thunk of CustomStringConvertible.description.getter();
      v115 = v114;
      sub_10046B858(v106, type metadata accessor for OwnedBeaconGroup);
      v116 = sub_1000136BC(v113, v115, aBlock);
      v55 = v221;

      *(v110 + 4) = v116;
      _os_log_impl(&_mh_execute_header, v107, v108, "Saving classic bluetooth connect event for: %s", v110, 0xCu);
      sub_100007BAC(v111);
      a2 = v222;
    }

    else
    {

      sub_10046B858(v106, type metadata accessor for OwnedBeaconGroup);
    }

    if (qword_101694920 != -1)
    {
      swift_once();
    }

    v127 = qword_10177B2E8;
    v128 = *(v228 + 24);
    v129 = type metadata accessor for UUID();
    v130 = v226;
    (*(*(v129 - 8) + 16))(v226, &v55[v128], v129);
    v131 = v224;
    static Date.trustedNow.getter(v130 + v224[5]);
    *(v130 + v131[6]) = 37;
    sub_1000BC4D4(&qword_1016AC9D0, &unk_10139D760);
    v132 = *(v225 + 72);
    v133 = (*(v225 + 80) + 32) & ~*(v225 + 80);
    v134 = swift_allocObject();
    *(v134 + 16) = xmmword_101385D80;
    sub_10046A814(v130, v134 + v133, type metadata accessor for BeaconObservation);
    v135 = type metadata accessor for Transaction();
    __chkstk_darwin(v135);
    *&v178[-32] = v127;
    *&v178[-24] = v134;
    *&v178[-16] = 0;
    *&v178[-8] = 0;
    static Transaction.named<A>(_:with:)();

    sub_10046B858(v130, type metadata accessor for BeaconObservation);
    sub_100A8306C(21);
    sub_100A83364(0);
    v136 = v192;
    v137 = v218;
    sub_100452870(v218, v192);
    v180 = a3;
    v179 = v57;
    v138 = v193;
    v139 = v216;
    if ((*(v193 + 48))(v136, 1, v216) == 1)
    {
      sub_10000B3A8(v136, &qword_101699860, &qword_1013A34D0);
    }

    else
    {
      v166 = *(v138 + 32);
      v167 = v190;
      v166(v190, v136, v139);
      v228 = a2[7];
      v168 = v183;
      v169 = v167;
      v170 = v139;
      (*(v138 + 16))(v183, v169, v139);
      v171 = v138;
      v172 = (*(v138 + 80) + 32) & ~*(v138 + 80);
      v173 = swift_allocObject();
      *(v173 + 16) = a2;
      *(v173 + 24) = v137;
      v166((v173 + v172), v168, v170);
      aBlock[4] = sub_100468F6C;
      aBlock[5] = v173;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100006684;
      aBlock[3] = &unk_10161D748;
      v174 = _Block_copy(aBlock);
      LocationDecryptionKey.rawValue.getter(v181);

      v175 = v184;
      static DispatchQoS.unspecified.getter();
      v230 = _swiftEmptyArrayStorage;
      sub_100019D54(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
      sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
      sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
      v176 = v186;
      v177 = v189;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v174);
      (*(v188 + 8))(v176, v177);
      (*(v185 + 8))(v175, v187);
      (*(v171 + 8))(v190, v216);
    }

    aBlock[0] = sub_100448730(v137);
    v230 = a2[6];
    v140 = v230;
    v141 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
    v142 = *(v141 - 8);
    v225 = *(v142 + 56);
    v226 = (v142 + 56);
    v143 = v215;
    v223 = v141;
    (v225)(v215, 1, 1, v141);
    v224 = v140;
    v144 = sub_1000BC4D4(&qword_1016993D0, &qword_101391970);
    v228 = sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
    sub_1000041A4(&qword_1016993D8, &qword_1016993D0, &qword_101391970);
    v227 = sub_1004682F0();
    v145 = v194;
    v220 = v144;
    Publisher.receive<A>(on:options:)();
    sub_10000B3A8(v143, &unk_1016B0FE0, &unk_101391980);

    static Subscribers.Demand.unlimited.getter();
    v219 = type metadata accessor for Peripheral();
    sub_1000041A4(&qword_10169E898, &qword_10169E848, &unk_10139DC30);
    v146 = v197;
    v147 = v196;
    Publisher.flatMap<A, B>(maxPublishers:_:)();
    (*(v195 + 8))(v145, v147);
    v57 = v224;
    aBlock[0] = v224;
    v148 = v141;
    v149 = v225;
    (v225)(v143, 1, 1, v148);
    v217 = &protocol conformance descriptor for Publishers.FlatMap<A, B>;
    sub_1000041A4(&qword_10169E8A0, &qword_10169E850, &unk_1013A3500);
    v150 = v198;
    v151 = v200;
    Publisher.receive<A>(on:options:)();
    sub_10000B3A8(v143, &unk_1016B0FE0, &unk_101391980);

    (*(v199 + 8))(v146, v151);
    static Subscribers.Demand.unlimited.getter();
    sub_1000041A4(&qword_10169E8A8, &qword_10169E858, &unk_10139DC40);
    v152 = v203;
    v153 = v202;
    a2 = v222;
    Publisher.flatMap<A, B>(maxPublishers:_:)();
    v154 = v150;
    v80 = v218;
    (*(v201 + 8))(v154, v153);
    aBlock[0] = v57;
    v149(v143, 1, 1, v223);
    sub_1000041A4(&qword_10169E8B0, &qword_10169E860, &unk_1013A3510);
    v155 = v205;
    v156 = v206;
    Publisher.receive<A>(on:options:)();
    sub_10000B3A8(v143, &unk_1016B0FE0, &unk_101391980);

    (*(v204 + 8))(v152, v156);
    sub_1000BC4D4(&unk_1016A6150, &unk_10139DB30);
    sub_1000041A4(&qword_10169E8B8, &qword_10169E868, &qword_10139DC50);
    v157 = v209;
    v158 = v208;
    Publisher.map<A>(_:)();
    (*(v207 + 8))(v155, v158);
    sub_1000BC4D4(&qword_1016A6160, &unk_10139DC80);
    sub_1000041A4(&qword_1016A05A0, &qword_1016A0590, &qword_1013A35C0);
    sub_1000041A4(&qword_1016A6170, &qword_1016A6160, &unk_10139DC80);
    v159 = v212;
    v160 = v211;
    Publisher.catch<A>(_:)();
    (*(v210 + 8))(v157, v160);
    swift_allocObject();
    swift_weakInit();
    sub_1000041A4(&qword_1016A05A8, &qword_1016A0598, &unk_1013A35C8);
    v161 = v214;
    Publisher<>.sink(receiveValue:)();

    (*(v213 + 8))(v159, v161);
    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();

    sub_10046B858(v221, type metadata accessor for OwnedBeaconGroup);
    a3 = v180;
    v56 = v181;
    LOBYTE(v57) = v179;
  }

  sub_100450A8C(v80);
  v162 = a2[19];
  aBlock[0] = v80;

  PassthroughSubject.send(_:)();

  v163 = a2[19];
  LOBYTE(aBlock[0]) = 2;

  PassthroughSubject.send(completion:)();

  v164 = v57 & 1;
LABEL_47:
  *a3 = v56;
  *(a3 + 8) = v164;
}

uint64_t sub_100440548@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for MACAddress();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v27[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = v2;
  sub_100A22DF0(v9);
  v10 = MACAddress.data.getter();
  v12 = v11;
  v13 = *(v6 + 8);
  v13(v9, v5);
  v27[0] = v10;
  v27[1] = v12;
  sub_1000E0A3C();
  v14 = DataProtocol.isNull.getter();
  sub_100016590(v10, v12);
  if (v14)
  {
    v15 = sub_100008CA0();
    if (qword_1016950D0 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_1000076D4(v16, qword_10177C418);

    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v27[0] = v20;
      *v19 = 136315138;
      type metadata accessor for OwnedBeaconGroup(0);
      v21 = Array.description.getter();
      v23 = sub_1000136BC(v21, v22, v27);

      *(v19 + 4) = v23;
      _os_log_impl(&_mh_execute_header, v17, v18, "All groups: %s", v19, 0xCu);
      sub_100007BAC(v20);
    }

    __chkstk_darwin(v24);
    *(&v26 - 2) = &v28;
    *(&v26 - 1) = a1;
    sub_1012BC0C4(sub_100468238, v15, a2);
  }

  else
  {
    sub_100A22DF0(v9);
    sub_100AC5D4C(v9, a2);
    return (v13)(v9, v5);
  }
}

uint64_t sub_10044083C@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1000BC4D4(&qword_1016995B0, &unk_101391A80);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v30 - v7;
  v9 = sub_1000BC4D4(&unk_1016A6310, &unk_10139DC90);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v30 - v12;
  v14 = *a1;
  v34[3] = &type metadata for BAServiceIdentifier;
  v34[4] = &off_10162CAF0;
  LOBYTE(v34[0]) = 1;
  v15 = OBJC_IVAR____TtC12searchpartyd10Peripheral_services;
  swift_beginAccess();
  v16 = *&v14[v15];
  v33 = v34;

  v17 = sub_1012BBDB4(sub_1001DB3F8, v32, v16);

  sub_100007BAC(v34);
  if (v17)
  {
    v18 = sub_10039C428(&off_101608E80);
    v19 = swift_allocObject();
    *(v19 + 16) = v17;
    *(v19 + 24) = v18;
    v20 = sub_1000BC4D4(&unk_1016CDD30, &unk_101391A90);
    v21 = *(v20 + 48);
    v22 = *(v20 + 52);
    swift_allocObject();

    v34[0] = Future.init(_:)();
    sub_1000041A4(&qword_1016A6330, &unk_1016CDD30, &unk_101391A90);
    v23 = Publisher.eraseToAnyPublisher()();
  }

  else
  {
    if (qword_1016946F0 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    sub_1000076D4(v25, qword_10177AD08);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v31 = v10;
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v26, v27, "No FindMy service", v28, 2u);
      v10 = v31;
    }

    v34[0] = v14;
    type metadata accessor for Peripheral();
    v29 = v14;
    Just.init(_:)();
    sub_100101B58();
    Just.setFailureType<A>(to:)();
    (*(v5 + 8))(v8, v4);
    sub_1000041A4(&qword_1016995B8, &unk_1016A6310, &unk_10139DC90);
    v23 = Publisher.eraseToAnyPublisher()();
    result = (*(v10 + 8))(v13, v9);
  }

  *a2 = v23;
  return result;
}

uint64_t sub_100440C74(uint64_t a1)
{
  v2 = sub_1000BC4D4(&qword_101699860, &qword_1013A34D0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v39[-v4];
  v6 = type metadata accessor for Device();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v39[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  sub_1000D2A70(a1, &v43, &unk_1016A6150, &unk_10139DB30);
  if (v45)
  {
    v41 = v43;
    *v42 = *v44;
    *&v42[9] = *&v44[9];
    if (qword_1016946F0 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_1000076D4(v12, qword_10177AD08);
    sub_100101AA8(&v41, v40);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = 138543362;
      sub_100101B58();
      swift_allocError();
      sub_100101AA8(v40, v17);
      v18 = _swift_stdlib_bridgeErrorToNSError();
      sub_100101B04(v40);
      *(v15 + 4) = v18;
      *v16 = v18;
      _os_log_impl(&_mh_execute_header, v13, v14, "registerForConnectionEvents error: %{public}@", v15, 0xCu);
      sub_10000B3A8(v16, &qword_10169BB30, &unk_10138B3C0);
    }

    else
    {

      sub_100101B04(v40);
    }

    return sub_100101B04(&v41);
  }

  v19 = v43;
  *&v42[8] = &type metadata for BAServiceIdentifier;
  *&v42[16] = &off_10162CAF0;
  LOBYTE(v41) = 1;
  v20 = OBJC_IVAR____TtC12searchpartyd10Peripheral_services;
  v21 = swift_beginAccess();
  v22 = *&v19[v20];
  __chkstk_darwin(v21);
  *&v39[-16] = &v41;

  v23 = sub_1012BBDB4(sub_1001DB3F8, &v39[-32], v22);

  sub_100007BAC(&v41);
  if (!v23)
  {
    if (qword_1016946F0 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_1000076D4(v24, qword_10177AD08);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, v25, v26, "Owner characteristic not available. ", v27, 2u);
    }
  }

  sub_100452870(v19, v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_10000B3A8(v5, &qword_101699860, &qword_1013A34D0);
    if (qword_1016946F0 != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    sub_1000076D4(v28, qword_10177AD08);
    v29 = v19;
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *v32 = 138412290;
      *(v32 + 4) = v29;
      *v33 = v29;
      v34 = v29;
      _os_log_impl(&_mh_execute_header, v30, v31, "Missing BT device for %@", v32, 0xCu);
      sub_10000B3A8(v33, &qword_10169BB30, &unk_10138B3C0);
    }
  }

  (*(v7 + 32))(v10, v5, v6);
  if (qword_1016946F0 != -1)
  {
    swift_once();
  }

  v35 = type metadata accessor for Logger();
  sub_1000076D4(v35, qword_10177AD08);
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    *v38 = 0;
    _os_log_impl(&_mh_execute_header, v36, v37, "Owner characteristic available. Check verifyFindMyNetworkId for unpaired parts.", v38, 2u);
  }

  sub_10044137C(v23, v19, v10);

  return (*(v7 + 8))(v10, v6);
}

void sub_10044137C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for DispatchPredicate();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v23[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = *(v3 + 48);
  *v11 = v12;
  (*(v8 + 104))(v11, enum case for DispatchPredicate.onQueue(_:), v7);
  v13 = v12;
  LOBYTE(v12) = _dispatchPreconditionTest(_:)();
  (*(v8 + 8))(v11, v7);
  if ((v12 & 1) == 0)
  {
    __break(1u);
LABEL_9:
    swift_once();
    goto LABEL_5;
  }

  v24[3] = &type metadata for BACharacteristicIdentifier.FindMy;
  v24[4] = &off_10162CAD0;
  LOBYTE(v24[0]) = 3;
  v14 = swift_beginAccess();
  v15 = *(a1 + 40);
  __chkstk_darwin(v14);
  *&v23[-16] = v24;

  v16 = sub_1012BBE10(sub_10038C458, &v23[-32], v15);

  sub_100007BAC(v24);
  if (v16)
  {
    v17 = sub_100437674();
    v18 = type metadata accessor for Transaction();
    __chkstk_darwin(v18);
    *&v23[-48] = v17;
    *&v23[-40] = a2;
    *&v23[-32] = v16;
    *&v23[-24] = a3;
    *&v23[-16] = v3;
    *&v23[-8] = a1;
    static Transaction.named<A>(_:with:)();

    return;
  }

  if (qword_1016946F0 != -1)
  {
    goto LABEL_9;
  }

LABEL_5:
  v19 = type metadata accessor for Logger();
  sub_1000076D4(v19, qword_10177AD08);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&_mh_execute_header, v20, v21, "Missing Paired Owner Characteristic!", v22, 2u);
  }
}

uint64_t sub_100441814(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = *(type metadata accessor for StandaloneBeacon() - 8);
  v2[4] = v3;
  v2[5] = *(v3 + 64);
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v4 = type metadata accessor for MACAddress();
  v2[8] = v4;
  v5 = *(v4 - 8);
  v2[9] = v5;
  v6 = *(v5 + 64) + 15;
  v2[10] = swift_task_alloc();
  v7 = *(*(sub_1000BC4D4(&qword_1016A04D0, &qword_1013A34A8) - 8) + 64) + 15;
  v2[11] = swift_task_alloc();
  v8 = async function pointer to daemon.getter[1];
  v9 = swift_task_alloc();
  v2[12] = v9;
  *v9 = v2;
  v9[1] = sub_1004419A8;

  return daemon.getter();
}

uint64_t sub_1004419A8(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 96);
  v12 = *v1;
  *(v3 + 104) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 112) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for StandaloneBeaconService();
  v9 = sub_100019D54(&qword_1016AA400, &type metadata accessor for Daemon);
  v10 = sub_100019D54(&qword_10169F450, type metadata accessor for StandaloneBeaconService);
  *v6 = v12;
  v6[1] = sub_100441B84;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100441B84(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 112);
  v8 = *v2;
  v3[15] = a1;
  v3[16] = v1;

  if (v1)
  {
    v5 = sub_100442420;
  }

  else
  {
    v6 = v3[13];

    v5 = sub_100441CA0;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100441CA0()
{
  v1 = v0[11];
  v2 = v0[2];
  sub_100447E44(v0[3], v1);
  v3 = sub_1000BC4D4(&qword_1016A04D8, &qword_1013A34B0);
  if ((*(*(v3 - 8) + 48))(v1, 1, v3) == 1)
  {
    sub_10000B3A8(v0[11], &qword_1016A04D0, &qword_1013A34A8);
    if (qword_1016946F0 != -1)
    {
      swift_once();
    }

    v4 = v0[3];
    v5 = type metadata accessor for Logger();
    sub_1000076D4(v5, qword_10177AD08);
    v6 = v4;
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();

    v9 = os_log_type_enabled(v7, v8);
    v10 = v0[15];
    if (v9)
    {
      v11 = v0[3];
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 138412290;
      *(v12 + 4) = v11;
      *v13 = v11;
      v14 = v11;
      _os_log_impl(&_mh_execute_header, v7, v8, "Unable to get MAC address for %@", v12, 0xCu);
      sub_10000B3A8(v13, &qword_10169BB30, &unk_10138B3C0);
    }

    v16 = v0[10];
    v15 = v0[11];
    v18 = v0[6];
    v17 = v0[7];

    v19 = v0[1];

    return v19();
  }

  else
  {
    v21 = v0[15];
    v22 = v0[10];
    v23 = v0[11];
    v0[17] = *v23;
    v24 = *(v3 + 48);
    v25 = type metadata accessor for Device();
    (*(*(v25 - 8) + 8))(&v23[v24], v25);
    sub_100A22DF0(v22);

    return _swift_task_switch(sub_100441F5C, v21, 0);
  }
}

uint64_t sub_100441F5C()
{
  v1 = v0[16];
  sub_100F85A84(v0[10], *(v0[15] + 128));
  v0[18] = v1;
  v3 = v0[9];
  v2 = v0[10];
  v4 = v0[8];
  if (v1)
  {
    (*(v3 + 8))(v0[10], v0[8]);
    v5 = sub_100442254;
  }

  else
  {
    v0[19] = dispatch thunk of _AnySequenceBox.__copyToContiguousArray()();

    (*(v3 + 8))(v2, v4);
    v5 = sub_100442040;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100442040()
{
  v18 = v0;
  v1 = v0[18];
  v17 = v0[19];

  sub_10046080C(&v17);
  if (v1)
  {
  }

  else
  {
    v3 = v0[19];

    v4 = v0[17];
    v5 = v0[15];
    if (v17[2])
    {
      v7 = v0[6];
      v6 = v0[7];
      v8 = v0[5];
      v9 = v0[2];
      v10 = *(v0[4] + 80);
      sub_10046A814(v17 + ((v10 + 32) & ~v10), v6, type metadata accessor for StandaloneBeacon);

      sub_10046A814(v6, v7, type metadata accessor for StandaloneBeacon);
      v11 = swift_allocObject();
      *(v11 + 16) = v9;
      sub_10046B7F0(v7, v11 + ((v10 + 24) & ~v10), type metadata accessor for StandaloneBeacon);

      sub_100442F0C(v6, sub_10046A87C, v11);

      sub_10046B858(v6, type metadata accessor for StandaloneBeacon);
    }

    else
    {
    }

    v13 = v0[10];
    v12 = v0[11];
    v15 = v0[6];
    v14 = v0[7];

    v16 = v0[1];

    return v16();
  }
}

uint64_t sub_100442254()
{
  v1 = v0[17];
  v2 = v0[15];

  v3 = v0[18];
  if (qword_1016946F0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000076D4(v4, qword_10177AD08);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = _convertErrorToNSError(_:)();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v5, v6, "Error in shouldForcePair: %@", v7, 0xCu);
    sub_10000B3A8(v8, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  v11 = v0[10];
  v10 = v0[11];
  v13 = v0[6];
  v12 = v0[7];

  v14 = v0[1];

  return v14();
}

uint64_t sub_100442420()
{
  v1 = v0[13];

  v2 = v0[16];
  if (qword_1016946F0 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_1000076D4(v3, qword_10177AD08);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = _convertErrorToNSError(_:)();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v4, v5, "Error in shouldForcePair: %@", v6, 0xCu);
    sub_10000B3A8(v7, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  v10 = v0[10];
  v9 = v0[11];
  v12 = v0[6];
  v11 = v0[7];

  v13 = v0[1];

  return v13();
}

void sub_1004425E4(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v32 = *(v8 - 8);
  v9 = *(v32 + 64);
  __chkstk_darwin(v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v13 = *(v12 - 8);
  v30 = v12;
  v31 = v13;
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for StandaloneBeacon();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17 - 8);
  if (a2)
  {
    aBlock[0] = a1;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    swift_willThrowTypedImpl();
    if (qword_1016946F0 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_1000076D4(v20, qword_10177AD08);
    swift_errorRetain();
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    sub_1000BB584(a1, 1);
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *v23 = 138412290;
      v25 = _convertErrorToNSError(_:)();
      *(v23 + 4) = v25;
      *v24 = v25;
      _os_log_impl(&_mh_execute_header, v21, v22, "forcePair error: %@", v23, 0xCu);
      sub_10000B3A8(v24, &qword_10169BB30, &unk_10138B3C0);

      sub_1000BB584(a1, 1);
    }

    else
    {

      sub_1000BB584(a1, 1);
    }
  }

  else if (a1)
  {
    v26 = *(a3 + 64);
    sub_10046A814(a4, &v30 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for StandaloneBeacon);
    v27 = (*(v18 + 80) + 24) & ~*(v18 + 80);
    v28 = swift_allocObject();
    *(v28 + 16) = a3;
    sub_10046B7F0(&v30 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), v28 + v27, type metadata accessor for StandaloneBeacon);
    aBlock[4] = sub_10046AC40;
    aBlock[5] = v28;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100006684;
    aBlock[3] = &unk_10161DBF8;
    v29 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    v33 = _swiftEmptyArrayStorage;
    sub_100019D54(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v29);
    (*(v32 + 8))(v11, v8);
    (*(v31 + 8))(v16, v30);
  }
}

uint64_t sub_100442B14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v28 = a2;
  v29 = a3;
  v27 = *v3;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v33 = *(v6 - 8);
  v7 = *(v33 + 64);
  __chkstk_darwin(v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v31 = *(v10 - 8);
  v32 = v10;
  v11 = *(v31 + 64);
  __chkstk_darwin(v10);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for StandaloneBeacon();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = v3[6];
  sub_10046A814(a1, v17, type metadata accessor for StandaloneBeacon);
  v18 = (*(v15 + 80) + 16) & ~*(v15 + 80);
  v19 = (v16 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v19 + 15) & 0xFFFFFFFFFFFFFFF8;
  v21 = (v20 + 23) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  sub_10046B7F0(v17, v22 + v18, type metadata accessor for StandaloneBeacon);
  *(v22 + v19) = v4;
  v23 = (v22 + v20);
  v24 = v29;
  *v23 = v28;
  v23[1] = v24;
  *(v22 + v21) = v27;
  aBlock[4] = sub_10046ACBC;
  aBlock[5] = v22;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_10161DC48;
  v25 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v34 = _swiftEmptyArrayStorage;
  sub_100019D54(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v25);
  (*(v33 + 8))(v9, v6);
  (*(v31 + 8))(v13, v32);
}

uint64_t sub_100442F0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23 = a2;
  v6 = *v3;
  v7 = type metadata accessor for StandaloneBeacon();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v22 - v13;
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  sub_10046A814(a1, v10, type metadata accessor for StandaloneBeacon);
  v16 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v17 = (v9 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = (v17 + 15) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  *(v19 + 24) = 0;
  sub_10046B7F0(v10, v19 + v16, type metadata accessor for StandaloneBeacon);
  *(v19 + v17) = v3;
  v20 = (v19 + v18);
  *v20 = v23;
  v20[1] = a3;
  *(v19 + ((v18 + 23) & 0xFFFFFFFFFFFFFFF8)) = v6;

  sub_10025EDD4(0, 0, v14, &unk_1013A3688, v19);
}

uint64_t sub_100443154(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v55 = a2;
  v5 = type metadata accessor for MACAddress();
  v53 = *(v5 - 8);
  v54 = v5;
  v6 = *(v53 + 64);
  __chkstk_darwin(v5);
  v52 = &v46[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_1000BC4D4(&qword_1016A04D0, &qword_1013A34A8);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v46[-v10];
  v57 = type metadata accessor for Device();
  v12 = *(v57 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v57);
  v15 = &v46[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v14);
  v56 = &v46[-v16];
  v17 = type metadata accessor for DispatchPredicate();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = &v46[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = *(v3 + 48);
  *v21 = v22;
  (*(v18 + 104))(v21, enum case for DispatchPredicate.onQueue(_:), v17);
  v23 = v22;
  v24 = _dispatchPreconditionTest(_:)();
  v26 = *(v18 + 8);
  v25 = v18 + 8;
  v26(v21, v17);
  if ((v24 & 1) == 0)
  {
    __break(1u);
LABEL_10:
    swift_once();
    goto LABEL_5;
  }

  sub_100447E44(a1, v11);
  v27 = sub_1000BC4D4(&qword_1016A04D8, &qword_1013A34B0);
  v25 = v3;
  if ((*(*(v27 - 8) + 48))(v11, 1, v27) == 1)
  {
    sub_10000B3A8(v11, &qword_1016A04D0, &qword_1013A34A8);
    static Device.emptyDevice.getter();
    sub_1004490E8(a1, v15, 0, 0, _swiftEmptyArrayStorage);
    v28 = &v46[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
    v3 = v57;
    return (*(v12 + 8))(v28, v3);
  }

  v24 = *v11;
  v29 = v11 + *(v27 + 48);
  v3 = v57;
  v50 = *(v12 + 32);
  v51 = v12 + 32;
  v50(v56, v29, v57);
  if (qword_1016946F0 != -1)
  {
    goto LABEL_10;
  }

LABEL_5:
  v30 = type metadata accessor for Logger();
  sub_1000076D4(v30, qword_10177AD08);
  v31 = v24;
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v49 = v25;
    v35 = v34;
    v48 = swift_slowAlloc();
    v58 = v48;
    *v35 = 136446210;
    v36 = v52;
    sub_100A22DF0(v52);
    sub_100019D54(&qword_1016A4210, &type metadata accessor for MACAddress);
    v37 = v54;
    v38 = dispatch thunk of CustomStringConvertible.description.getter();
    v47 = v33;
    v40 = v39;
    (*(v53 + 8))(v36, v37);
    v41 = sub_1000136BC(v38, v40, &v58);

    *(v35 + 4) = v41;
    _os_log_impl(&_mh_execute_header, v32, v47, "Unpairing LE with classic MAC address: %{public}s", v35, 0xCu);
    sub_100007BAC(v48);

    v25 = v49;
    v3 = v57;
  }

  type metadata accessor for Transaction();
  v28 = v56;
  (*(v12 + 16))(v15, v56, v3);
  v42 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v43 = swift_allocObject();
  *(v43 + 16) = v31;
  *(v43 + 24) = v25;
  v50((v43 + v42), v15, v3);
  *(v43 + ((v13 + v42 + 7) & 0xFFFFFFFFFFFFFFF8)) = v55;
  v44 = v31;

  static Transaction.asyncTask(name:block:)();

  return (*(v12 + 8))(v28, v3);
}

uint64_t sub_100443754(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  v5 = type metadata accessor for MACAddress();
  v4[7] = v5;
  v6 = *(v5 - 8);
  v4[8] = v6;
  v7 = *(v6 + 64) + 15;
  v4[9] = swift_task_alloc();
  v8 = async function pointer to daemon.getter[1];
  v9 = swift_task_alloc();
  v4[10] = v9;
  *v9 = v4;
  v9[1] = sub_100443848;

  return daemon.getter();
}

uint64_t sub_100443848(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 80);
  v12 = *v1;
  *(v3 + 88) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 96) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for StandaloneBeaconService();
  v9 = sub_100019D54(&qword_1016AA400, &type metadata accessor for Daemon);
  v10 = sub_100019D54(&qword_10169F450, type metadata accessor for StandaloneBeaconService);
  *v6 = v12;
  v6[1] = sub_100443A24;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100443A24(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 96);
  v5 = *v2;
  *(*v2 + 104) = a1;

  v6 = *(v3 + 88);
  if (v1)
  {

    v7 = sub_100443B74;
  }

  else
  {

    v7 = sub_100443C90;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100443B74()
{
  if (qword_1016950D0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177C418);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Missing StandaloneBeaconService!", v4, 2u);
  }

  v5 = *(v0 + 72);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_100443C90()
{
  v1 = *(v0 + 24);
  sub_100A22DF0(*(v0 + 72));
  v2 = swift_task_alloc();
  *(v0 + 112) = v2;
  *v2 = v0;
  v2[1] = sub_100443D48;
  v3 = *(v0 + 104);
  v4 = *(v0 + 72);

  return sub_10132CF38(v4);
}

uint64_t sub_100443D48()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v4 = *v1;
  *(*v1 + 120) = v0;

  (*(v2[8] + 8))(v2[9], v2[7]);
  if (v0)
  {
    v5 = sub_100443F98;
  }

  else
  {
    v5 = sub_100443EB0;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100443EB0()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 104);
  type metadata accessor for Transaction();
  v3 = swift_task_alloc();
  v4 = *(v0 + 40);
  *(v3 + 16) = vextq_s8(*(v0 + 24), *(v0 + 24), 8uLL);
  *(v3 + 32) = v4;
  static Transaction.named<A>(_:with:)();

  v5 = *(v0 + 72);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_100443F98()
{
  v19 = v0;
  if (qword_1016946F0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 120);
  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_10177AD08);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 120);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v18 = v8;
    *v7 = 136446210;
    *(v0 + 16) = v6;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v9 = String.init<A>(describing:)();
    v11 = sub_1000136BC(v9, v10, &v18);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v3, v4, "Unable to remove standalone beacons due to %{public}s.", v7, 0xCu);
    sub_100007BAC(v8);
  }

  else
  {
  }

  v12 = *(v0 + 104);
  type metadata accessor for Transaction();
  v13 = swift_task_alloc();
  v14 = *(v0 + 40);
  *(v13 + 16) = vextq_s8(*(v0 + 24), *(v0 + 24), 8uLL);
  *(v13 + 32) = v14;
  static Transaction.named<A>(_:with:)();

  v15 = *(v0 + 72);

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_1004441E8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v26 = a5;
  v24 = a3;
  v30 = type metadata accessor for DispatchWorkItemFlags();
  v32 = *(v30 - 8);
  v8 = *(v32 + 64);
  __chkstk_darwin(v30);
  v28 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for DispatchQoS();
  v29 = *(v31 - 8);
  v10 = *(v29 + 64);
  __chkstk_darwin(v31);
  v25 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Device();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v27 = *(a2 + 48);
  (*(v13 + 16))(&v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), a4, v12);
  v15 = (*(v13 + 80) + 40) & ~*(v13 + 80);
  v16 = swift_allocObject();
  *(v16 + 2) = a1;
  *(v16 + 3) = a2;
  v17 = v24;
  *(v16 + 4) = v24;
  (*(v13 + 32))(&v16[v15], &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v12);
  *&v16[(v14 + v15 + 7) & 0xFFFFFFFFFFFFFFF8] = v26;
  aBlock[4] = sub_100468D34;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_10161D680;
  v18 = _Block_copy(aBlock);

  v19 = v17;

  v20 = v25;
  static DispatchQoS.unspecified.getter();
  aBlock[7] = _swiftEmptyArrayStorage;
  sub_100019D54(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  v21 = v28;
  v22 = v30;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);
  (*(v32 + 8))(v21, v22);
  (*(v29 + 8))(v20, v31);
}

void sub_1004445E0(uint64_t (*a1)(uint64_t a1))
{
  v2 = v1;
  v389 = a1;
  v3 = sub_1000BC4D4(&unk_1016B0FE0, &unk_101391980);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v360 = &v332 - v5;
  v363 = sub_1000BC4D4(&qword_1016A04E0, &qword_1013A34C0);
  v362 = *(v363 - 8);
  v6 = *(v362 + 64);
  __chkstk_darwin(v363);
  v361 = &v332 - v7;
  v352 = type metadata accessor for StableIdentifier();
  v8 = *(*(v352 - 8) + 64);
  v9 = __chkstk_darwin(v352);
  v350 = &v332 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v349 = &v332 - v11;
  v348 = type metadata accessor for OwnedBeaconRecord();
  v345 = *(v348 - 1);
  v12 = *(v345 + 64);
  __chkstk_darwin(v348);
  v358 = &v332 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v377 = sub_1000BC4D4(&qword_1016A4190, &unk_1013A3550);
  v14 = *(*(v377 - 8) + 64);
  v15 = __chkstk_darwin(v377);
  v354 = (&v332 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = __chkstk_darwin(v15);
  v355 = &v332 - v18;
  v19 = __chkstk_darwin(v17);
  v351 = (&v332 - v20);
  v21 = __chkstk_darwin(v19);
  v346 = (&v332 - v22);
  v23 = __chkstk_darwin(v21);
  v375 = (&v332 - v24);
  v25 = __chkstk_darwin(v23);
  v376 = &v332 - v26;
  v27 = __chkstk_darwin(v25);
  v367 = (&v332 - v28);
  __chkstk_darwin(v27);
  v353 = &v332 - v29;
  v368 = type metadata accessor for OwnedBeaconGroup.PairingState(0);
  v366 = *(v368 - 8);
  v30 = *(v366 + 64);
  v31 = __chkstk_darwin(v368);
  v357 = &v332 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __chkstk_darwin(v31);
  v378 = &v332 - v34;
  __chkstk_darwin(v33);
  v356 = &v332 - v35;
  v36 = sub_1000BC4D4(&unk_1016AF8B0, &unk_1013A0700);
  v37 = *(*(v36 - 8) + 64);
  __chkstk_darwin(v36 - 8);
  v371 = &v332 - v38;
  v374 = type metadata accessor for OwnedBeaconGroup(0);
  v370 = *(v374 - 1);
  v39 = *(v370 + 64);
  v40 = __chkstk_darwin(v374);
  v364 = &v332 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v40);
  v369 = &v332 - v42;
  v43 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v44 = *(*(v43 - 8) + 64);
  v45 = __chkstk_darwin(v43 - 8);
  v365 = &v332 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __chkstk_darwin(v45);
  v372 = &v332 - v48;
  __chkstk_darwin(v47);
  v50 = &v332 - v49;
  v51 = type metadata accessor for MACAddress();
  v386 = *(v51 - 8);
  v387 = v51;
  v52 = *(v386 + 64);
  v53 = __chkstk_darwin(v51);
  v344 = &v332 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = __chkstk_darwin(v53);
  v347 = &v332 - v55;
  v56 = __chkstk_darwin(v54);
  v373 = &v332 - v57;
  v58 = __chkstk_darwin(v56);
  v60 = &v332 - v59;
  v61 = __chkstk_darwin(v58);
  v379 = &v332 - v62;
  __chkstk_darwin(v61);
  v64 = &v332 - v63;
  v388 = type metadata accessor for Date();
  v382 = *(v388 - 8);
  v65 = *(v382 + 64);
  v66 = __chkstk_darwin(v388);
  v380 = &v332 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v66);
  v381 = &v332 - v68;
  v69 = sub_1000BC4D4(&qword_1016A04D0, &qword_1013A34A8);
  v70 = *(*(v69 - 8) + 64);
  __chkstk_darwin(v69 - 8);
  v72 = (&v332 - v71);
  v73 = type metadata accessor for Device();
  v74 = *(v73 - 8);
  v384 = v73;
  v385 = v74;
  v75 = *(v74 + 64);
  __chkstk_darwin(v73);
  v383 = &v332 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = type metadata accessor for DispatchPredicate();
  v78 = *(v77 - 8);
  v79 = *(v78 + 64);
  __chkstk_darwin(v77);
  v81 = (&v332 - ((v80 + 15) & 0xFFFFFFFFFFFFFFF0));
  v82 = *(v2 + 48);
  *v81 = v82;
  (*(v78 + 104))(v81, enum case for DispatchPredicate.onQueue(_:), v77);
  v359 = v82;
  v83 = _dispatchPreconditionTest(_:)();
  (*(v78 + 8))(v81, v77);
  if ((v83 & 1) == 0)
  {
    __break(1u);
    goto LABEL_103;
  }

  if ((sub_10042D9A8() & 1) == 0)
  {
    if (qword_1016946F0 != -1)
    {
      swift_once();
    }

    v98 = type metadata accessor for Logger();
    sub_1000076D4(v98, qword_10177AD08);
    v99 = Logger.logObject.getter();
    v100 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v99, v100))
    {
      goto LABEL_18;
    }

    v101 = swift_slowAlloc();
    *v101 = 0;
    _os_log_impl(&_mh_execute_header, v99, v100, "Pairing retry is NOT allowed on this device!", v101, 2u);
    goto LABEL_17;
  }

  sub_1000BC4D4(&unk_1016A6140, &unk_1013D4EB0);
  v84 = unsafeFromAsyncTask<A>(_:)();
  v83 = v390[0];
  if (!v390[0])
  {
    sub_100101B58();
    swift_allocError();
    *v102 = 16;
    *(v102 + 8) = 0u;
    *(v102 + 24) = 0u;
    *(v102 + 40) = 11;
    swift_willThrow();

    if (qword_1016946F0 == -1)
    {
LABEL_15:
      v103 = type metadata accessor for Logger();
      sub_1000076D4(v103, qword_10177AD08);
      v99 = Logger.logObject.getter();
      v104 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v99, v104))
      {
LABEL_18:

        return;
      }

      v105 = swift_slowAlloc();
      v106 = swift_slowAlloc();
      v390[0] = v106;
      *v105 = 136315138;
      *(v105 + 4) = sub_1000136BC(0xD00000000000001ALL, 0x8000000101354E70, v390);
      _os_log_impl(&_mh_execute_header, v99, v104, "%s Missing central manager service!", v105, 0xCu);
      sub_100007BAC(v106);

LABEL_17:

      goto LABEL_18;
    }

LABEL_108:
    swift_once();
    goto LABEL_15;
  }

  if (*(v390[0] + OBJC_IVAR____TtC12searchpartyd14CentralManager_isSharedPairingAgent) != 1)
  {
    __break(1u);
    goto LABEL_108;
  }

  v343 = v2;
  v85 = *(v390[0] + OBJC_IVAR____TtC12searchpartyd14CentralManager_lock);
  __chkstk_darwin(v84);
  *(&v332 - 2) = v83;
  type metadata accessor for SharedPairingAgent();
  v86 = 0;
  Lock.callAsFunction<A>(_:)();
  v88 = v389;
  v87 = v390[0];
  LOBYTE(v85) = [*(v390[0] + OBJC_IVAR____TtC12searchpartyd18SharedPairingAgent_underlyingObject) isPeerPaired:*(v389 + OBJC_IVAR____TtC12searchpartyd10Peripheral_underlyingObject)];

  if (v85)
  {
    if (qword_1016946F0 != -1)
    {
      swift_once();
    }

    v90 = type metadata accessor for Logger();
    sub_1000076D4(v90, qword_10177AD08);
    v91 = v88;
    v92 = Logger.logObject.getter();
    v93 = static os_log_type_t.default.getter();

    if (!os_log_type_enabled(v92, v93))
    {
      goto LABEL_37;
    }

    v94 = swift_slowAlloc();
    v95 = swift_slowAlloc();
    v96 = swift_slowAlloc();
    v390[0] = v96;
    *v94 = 136315394;
    *(v94 + 4) = sub_1000136BC(0xD00000000000001ALL, 0x8000000101354E70, v390);
    *(v94 + 12) = 2112;
    *(v94 + 14) = v91;
    *v95 = v91;
    v97 = v91;
    _os_log_impl(&_mh_execute_header, v92, v93, "%s Ignoring connected, already paired peripheral: %@", v94, 0x16u);
    sub_10000B3A8(v95, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v96);

    goto LABEL_24;
  }

  v107 = v343;
  v108 = *(v343 + 72);
  __chkstk_darwin(v89);
  *(&v332 - 2) = v107;
  *(&v332 - 1) = v109;
  QueueSynchronizer.conditionalSync<A>(_:)();
  if (v390[0])
  {
    if (qword_1016946F0 != -1)
    {
      swift_once();
    }

    v110 = type metadata accessor for Logger();
    sub_1000076D4(v110, qword_10177AD08);
    v111 = v389;
    v92 = Logger.logObject.getter();
    v112 = static os_log_type_t.default.getter();

    if (!os_log_type_enabled(v92, v112))
    {
      goto LABEL_37;
    }

    v113 = swift_slowAlloc();
    v114 = swift_slowAlloc();
    *v113 = 138412290;
    *(v113 + 4) = v111;
    *v114 = v111;
    v115 = v111;
    _os_log_impl(&_mh_execute_header, v92, v112, "Pairing in progress. Not retrying %@", v113, 0xCu);
    sub_10000B3A8(v114, &qword_10169BB30, &unk_10138B3C0);

LABEL_24:

LABEL_37:

    return;
  }

  v116 = sub_100437674();
  v117 = v116[3];
  v342 = v116;
  OS_dispatch_queue.sync<A>(execute:)();
  if (v390[0])
  {
    if (qword_1016946F0 != -1)
    {
      swift_once();
    }

    v118 = type metadata accessor for Logger();
    sub_1000076D4(v118, qword_10177AD08);
    v92 = Logger.logObject.getter();
    v119 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v92, v119))
    {
      goto LABEL_36;
    }

    v120 = swift_slowAlloc();
    *v120 = 0;
    v121 = "Handling Privacy Alert. Not retrying";
LABEL_35:
    _os_log_impl(&_mh_execute_header, v92, v119, v121, v120, 2u);

LABEL_36:

    goto LABEL_37;
  }

  v122 = v107;
  sub_100447E44(v389, v72);
  v123 = sub_1000BC4D4(&qword_1016A04D8, &qword_1013A34B0);
  if ((*(*(v123 - 8) + 48))(v72, 1, v123) == 1)
  {
    sub_10000B3A8(v72, &qword_1016A04D0, &qword_1013A34A8);
    if (qword_1016946F0 != -1)
    {
      swift_once();
    }

    v124 = type metadata accessor for Logger();
    sub_1000076D4(v124, qword_10177AD08);
    v92 = Logger.logObject.getter();
    v119 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v92, v119))
    {
      goto LABEL_36;
    }

    v120 = swift_slowAlloc();
    *v120 = 0;
    v121 = "Unable to sanitize MAC address for retry pairing";
    goto LABEL_35;
  }

  v125 = *v72;
  (*(v385 + 32))(v383, v72 + *(v123 + 48), v384);
  sub_100A22DF0(v64);
  v126 = sub_10042CB44();
  if (*(v126 + 16) && (v127 = sub_1007723C0(v64), (v128 & 1) != 0))
  {
    v129 = v382;
    v130 = *(v126 + 56) + *(v382 + 72) * v127;
    v131 = *(v382 + 16);
    v336 = 0;
    v132 = v125;
    v133 = v388;
    v131(v50, v130, v388);
    v134 = v64;
    v135 = v129;
    v341 = *(v386 + 8);
    v341(v134, v387);

    v337 = *(v129 + 56);
    v337(v50, 0, 1, v133);
    v136 = *(v129 + 32);
    v137 = v381;
    v138 = v133;
    v125 = v132;
    v86 = v336;
    v136(v381, v50, v138);
  }

  else
  {

    v341 = *(v386 + 8);
    v341(v64, v387);
    v135 = v382;
    v139 = v388;
    v337 = *(v382 + 56);
    v337(v50, 1, 1, v388);
    v137 = v381;
    static Date.distantPast.getter();
    if ((*(v135 + 48))(v50, 1, v139) != 1)
    {
      sub_10000B3A8(v50, &unk_101696900, &unk_10138B1E0);
    }
  }

  v140 = v380;
  static Date.trustedNow.getter(v380);
  Date.timeIntervalSince(_:)();
  v142 = v141;
  v143 = *(v135 + 8);
  v340 = v135 + 8;
  v339 = v143;
  v143(v140, v388);
  v144 = *(v122 + 176);
  if (v144 >= v142)
  {
    if (qword_1016946F0 != -1)
    {
      swift_once();
    }

    v157 = type metadata accessor for Logger();
    sub_1000076D4(v157, qword_10177AD08);

    v158 = Logger.logObject.getter();
    v159 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v158, v159))
    {
      v160 = swift_slowAlloc();
      *v160 = 134218240;
      *(v160 + 4) = v142;
      *(v160 + 12) = 2048;
      *(v160 + 14) = v144;
      _os_log_impl(&_mh_execute_header, v158, v159, "Time since last attempt %f. Threshold %f. Not retrying.", v160, 0x16u);
    }

    v339(v137, v388);
    goto LABEL_80;
  }

  if (v142 > 86400.0)
  {
    v145 = v86;
    v146 = v125;
    v147 = v379;
    sub_100A22DF0(v379);
    v148 = sub_10042D2E0();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v390[0] = v148;
    sub_100FFD49C(0, v147, isUniquelyReferenced_nonNull_native);
    v150 = v147;
    v125 = v146;
    v86 = v145;
    v341(v150, v387);
    sub_10042D744();
  }

  sub_100A22DF0(v60);
  v151 = sub_10042D2E0();
  v152 = *(v151 + 16);
  v338 = v125;
  if (v152 && (v153 = sub_1007723C0(v60), (v154 & 1) != 0))
  {
    v155 = v137;
    v156 = *(*(v151 + 56) + 8 * v153);
    v341(v60, v387);
  }

  else
  {
    v155 = v137;

    v341(v60, v387);
    v156 = 0;
  }

  v161 = *(v122 + 184);
  if (!__OFSUB__(v161, v156))
  {
    if (v161 - v156 >= 1)
    {
      if (qword_1016946F0 == -1)
      {
        goto LABEL_58;
      }

      goto LABEL_130;
    }

    if (qword_1016946F0 != -1)
    {
      swift_once();
    }

    v172 = type metadata accessor for Logger();
    sub_1000076D4(v172, qword_10177AD08);

    v173 = Logger.logObject.getter();
    v174 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v173, v174))
    {
      v175 = swift_slowAlloc();
      *v175 = 134218240;
      *(v175 + 4) = v161;

      *(v175 + 12) = 2048;
      *(v175 + 14) = v156;
      _os_log_impl(&_mh_execute_header, v173, v174, "Exceeded number of retries per day %ld. Attempted: %ld", v175, 0x16u);
    }

    else
    {
    }

    v339(v155, v388);
LABEL_80:
    (*(v385 + 8))(v383, v384);
    return;
  }

  __break(1u);
LABEL_130:
  swift_once();
LABEL_58:
  v335 = v156;
  v162 = type metadata accessor for Logger();
  v163 = sub_1000076D4(v162, qword_10177AD08);
  swift_retain_n();
  v164 = v389;
  v334 = v163;
  v165 = v164;
  v166 = Logger.logObject.getter();
  v167 = static os_log_type_t.default.getter();

  v168 = os_log_type_enabled(v166, v167);
  v333 = v165;
  if (v168)
  {
    v169 = swift_slowAlloc();
    v170 = swift_slowAlloc();
    *v169 = 138412802;
    *(v169 + 4) = v165;
    *v170 = v165;
    *(v169 + 12) = 2048;
    *(v169 + 14) = v335;
    *(v169 + 22) = 2048;
    v171 = v165;

    *(v169 + 24) = v161;

    _os_log_impl(&_mh_execute_header, v166, v167, "Retry pairing for peripheral %@. Attempted %ld. Daily limit %ld", v169, 0x20u);
    sub_10000B3A8(v170, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  v176 = v379;
  v177 = v373;
  v178 = v372;
  v336 = v86;
  sub_100A22DF0(v373);
  static Date.trustedNow.getter(v178);
  v179 = v382;
  v180 = v388;
  v337(v178, 0, 1, v388);
  v390[0] = sub_10042CB44();
  if ((*(v179 + 48))(v178, 1, v180) == 1)
  {
    sub_10000B3A8(v178, &unk_101696900, &unk_10138B1E0);
    v181 = v365;
    sub_1001E5198(v365);
    sub_10000B3A8(v181, &unk_101696900, &unk_10138B1E0);
  }

  else
  {
    v182 = v380;
    (*(v179 + 32))(v380, v178, v388);
    v183 = v390[0];
    v184 = swift_isUniquelyReferenced_nonNull_native();
    v391 = v183;
    sub_100FFD238(v182, v177, v184);
  }

  v341(v177, v387);
  sub_10042D008();
  sub_100A22DF0(v176);
  v185 = v335 + 1;
  if (__OFADD__(v335, 1))
  {
    __break(1u);
LABEL_132:

LABEL_134:
    v277 = v346;
    sub_1000D2AD8(v355, v346, &qword_1016A4190, &unk_1013A3550);
    v279 = *v277;
    v278 = v277[1];
    sub_10046B858(v277 + *(v377 + 48), type metadata accessor for OwnedBeaconGroup.PairingState);
    v376 = v279;
    v377 = v278;
    v378 = sub_100AA372C(v279, v278);
    v280 = *(v378 + 16);
    if (v280)
    {
      v281 = v378 + ((*(v345 + 80) + 32) & ~*(v345 + 80));
      v282 = v348[6];
      v382 = v350 + 8;
      v283 = _swiftEmptyArrayStorage;
      v389 = *(v345 + 72);
      while (1)
      {
        v284 = v358;
        sub_10046A814(v281, v358, type metadata accessor for OwnedBeaconRecord);
        v285 = v284 + v282;
        v286 = v349;
        sub_10046A814(v285, v349, type metadata accessor for StableIdentifier);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        sub_10046B858(v286, type metadata accessor for StableIdentifier);
        if (EnumCaseMultiPayload == 1)
        {
          goto LABEL_144;
        }

        sub_10046A814(v358 + v282, v350, type metadata accessor for StableIdentifier);
        v288 = swift_getEnumCaseMultiPayload();
        if (v288 == 2)
        {
          break;
        }

        if (v288 == 3)
        {
          v289 = sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);
          v290 = v382;
          v291 = *(v382 + v289[12]);

          v292 = *(v290 + v289[16]);

          v293 = v289[20];
LABEL_143:
          v298 = *(v290 + v293);

          v299 = type metadata accessor for UUID();
          (*(*(v299 - 8) + 8))(v350, v299);
LABEL_144:
          v300 = v358;
          v301 = sub_100314604(*(v358 + v348[16]), *(v358 + v348[17]));
          v303 = v302;
          sub_10046B858(v300, type metadata accessor for OwnedBeaconRecord);
          if (v303 >> 60 != 15)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v283 = sub_100A5CCC0(0, *(v283 + 2) + 1, 1, v283);
            }

            v305 = *(v283 + 2);
            v304 = *(v283 + 3);
            if (v305 >= v304 >> 1)
            {
              v283 = sub_100A5CCC0((v304 > 1), v305 + 1, 1, v283);
            }

            *(v283 + 2) = v305 + 1;
            v306 = &v283[16 * v305];
            *(v306 + 4) = v301;
            *(v306 + 5) = v303;
          }

          goto LABEL_137;
        }

        sub_10046B858(v350, type metadata accessor for StableIdentifier);
        sub_10046B858(v358, type metadata accessor for OwnedBeaconRecord);
LABEL_137:
        v281 += v389;
        if (!--v280)
        {

          goto LABEL_152;
        }
      }

      v294 = sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);
      v290 = v382;
      v295 = *(v382 + v294[12]);

      v296 = *(v290 + v294[16]);

      v297 = *(v290 + v294[20]);

      v293 = v294[28];
      goto LABEL_143;
    }

    v283 = _swiftEmptyArrayStorage;
LABEL_152:
    if (*(v283 + 2))
    {
      v307 = *(v283 + 5);
      v389 = *(v283 + 4);
      v382 = v307;
      sub_100017D5C(v389, v307);

      v308 = swift_allocObject();
      v309 = v333;
      v308[2] = v343;
      v308[3] = v309;
      v308[4] = v380;

      v310 = v309;

      unsafeFromAsyncTask<A>(_:)();

      LODWORD(v380) = LOBYTE(v390[0]);
      My = type metadata accessor for Feature.FindMy();
      v390[3] = My;
      v390[4] = sub_100019D54(&qword_1016AF950, &type metadata accessor for Feature.FindMy);
      v312 = sub_1000280DC(v390);
      (*(*(My - 8) + 104))(v312, enum case for Feature.FindMy.smilingWheel(_:), My);
      LOBYTE(My) = isFeatureEnabled(_:)();
      sub_100007BAC(v390);
      if ((My & 1) != 0 && sub_100DE6630(v389, v382))
      {
        v313 = Logger.logObject.getter();
        v314 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v313, v314))
        {
          v315 = swift_slowAlloc();
          *v315 = 0;
          _os_log_impl(&_mh_execute_header, v313, v314, "Starting AirPods LE pairing retry using FindMyBluetooth", v315, 2u);
        }

        v316 = v369 + v374[7];
        v317 = Logger.logObject.getter();
        v318 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v317, v318))
        {
          v319 = swift_slowAlloc();
          *v319 = 0;
          _os_log_impl(&_mh_execute_header, v317, v318, "Starting AirPods LE force pair using FindMyBluetooth", v319, 2u);
        }

        v378 = type metadata accessor for Transaction();
        v320 = v387;
        v322 = v386 + 16;
        v321 = *(v386 + 16);
        v323 = v379;
        v321(v379, v316, v387);
        v324 = v344;
        v321(v344, v347, v320);
        v325 = *(v322 + 64);
        v326 = (v325 + 24) & ~v325;
        v327 = (v52 + v325 + v326) & ~v325;
        v328 = swift_allocObject();
        *(v328 + 16) = v343;
        v329 = v328 + v326;
        v330 = v373;
        (v373)(v329, v323, v320);
        (v330)(v328 + v327, v324, v320);
        *(v328 + v327 + v52) = v380;
        v331 = v328 + ((v327 + v52) & 0xFFFFFFFFFFFFFFF8);
        *(v331 + 8) = 0;
        *(v331 + 16) = 0;

        static Transaction.asyncTask(name:block:)();

        sub_100016590(v376, v377);
        sub_100016590(v389, v382);

        v341(v347, v320);
        goto LABEL_106;
      }

      sub_100016590(v376, v377);
      sub_100016590(v389, v382);
LABEL_127:
      v341(v347, v387);
    }

    else
    {
      v341(v347, v387);
      sub_100016590(v376, v377);
    }

LABEL_128:
    v72 = v338;
    v176 = v379;
LABEL_100:
    v236 = sub_100436F60(v333);
    if (v236)
    {
      v237 = v236;
      v238 = sub_100A22DF0(v176);
      v239 = *(v237 + 16);
      __chkstk_darwin(v238);
      *(&v332 - 4) = v237;
      *(&v332 - 3) = v176;
      *(&v332 - 1) = xmmword_10138BBF0;
      v389 = v237;
      sub_1000BC4D4(&qword_1016A04E8, &qword_1013A34C8);
      OS_dispatch_queue.sync<A>(execute:)();
      v240 = v390[0];
      v341(v176, v387);
      v390[0] = v240;
      v241 = v359;
      v391 = v359;
      v242 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
      v243 = v360;
      (*(*(v242 - 8) + 56))(v360, 1, 1, v242);
      sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
      sub_1000041A4(&qword_1016A04F0, &qword_1016A04E8, &qword_1013A34C8);
      sub_1004682F0();
      v244 = v241;
      v245 = v361;
      Publisher.receive<A>(on:options:)();
      sub_10000B3A8(v243, &unk_1016B0FE0, &unk_101391980);

      v246 = swift_allocObject();
      swift_weakInit();
      v247 = swift_allocObject();
      *(v247 + 16) = sub_1004688A0;
      *(v247 + 24) = v246;
      sub_1000041A4(&qword_1016A04F8, &qword_1016A04E0, &qword_1013A34C0);
      v248 = v363;
      Publisher<>.sink(receiveValue:)();

      (*(v362 + 8))(v245, v248);
      swift_beginAccess();
      AnyCancellable.store(in:)();
      swift_endAccess();

LABEL_106:
      v339(v381, v388);
      (*(v385 + 8))(v383, v384);
      sub_10046B858(v369, type metadata accessor for OwnedBeaconGroup);
      return;
    }

LABEL_103:
    v249 = Logger.logObject.getter();
    v250 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v249, v250))
    {
      v251 = swift_slowAlloc();
      *v251 = 0;
      _os_log_impl(&_mh_execute_header, v249, v250, "Unable to create a new pairing manager to handle retry!", v251, 2u);
    }

    goto LABEL_106;
  }

  v186 = sub_10042D2E0();
  v187 = swift_isUniquelyReferenced_nonNull_native();
  v390[0] = v186;
  sub_100FFD49C(v185, v176, v187);
  v188 = v387;
  v189 = v386 + 8;
  v190 = v341;
  v341(v176, v387);
  sub_10042D744();
  v191 = *(v122 + 16);
  sub_100A22DF0(v176);
  v192 = v371;
  v380 = v191;
  sub_100AC5D4C(v176, v371);
  v190(v176, v188);
  if ((*(v370 + 48))(v192, 1, v374) == 1)
  {
    sub_10000B3A8(v192, &unk_1016AF8B0, &unk_1013A0700);
    v72 = v338;
LABEL_77:
    v204 = v383;
    sub_1004490E8(v72, v383, 0, 1, _swiftEmptyArrayStorage);

    v339(v381, v388);
    (*(v385 + 8))(v204, v384);
    return;
  }

  v193 = v369;
  sub_10046B7F0(v192, v369, type metadata accessor for OwnedBeaconGroup);
  v194 = sub_10051FCAC();
  v72 = v338;
  if ((v194 & 1) == 0 && (*(v193 + v374[8]) & 1) != 0 || (sub_10051FA1C() & 1) == 0)
  {
    sub_10046B858(v193, type metadata accessor for OwnedBeaconGroup);
    goto LABEL_77;
  }

  v365 = v189;
  v195 = v364;
  sub_10046A814(v193, v364, type metadata accessor for OwnedBeaconGroup);
  v196 = Logger.logObject.getter();
  v197 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v196, v197))
  {
    v198 = swift_slowAlloc();
    v199 = swift_slowAlloc();
    v390[0] = v199;
    *v198 = 136315138;
    v200 = sub_10051F7B0(v199);
    v202 = v201;
    sub_10046B858(v195, type metadata accessor for OwnedBeaconGroup);
    v203 = sub_1000136BC(v200, v202, v390);
    v72 = v338;

    *(v198 + 4) = v203;
    _os_log_impl(&_mh_execute_header, v196, v197, "Retry LE pairing for %s.", v198, 0xCu);
    sub_100007BAC(v199);
    v176 = v379;
  }

  else
  {

    sub_10046B858(v195, type metadata accessor for OwnedBeaconGroup);
  }

  v205 = *(v369 + v374[10]);
  v206 = (v205 + 64);
  v207 = 1 << *(v205 + 32);
  v208 = -1;
  if (v207 < 64)
  {
    v208 = ~(-1 << v207);
  }

  v209 = v208 & *(v205 + 64);
  v370 = v378 + 2;
  v210 = ((v207 + 63) >> 6);
  v382 = v205;

  v211 = 0;
  v372 = v206;
  v373 = v210;
  while (1)
  {
    if (!v209)
    {
      while (1)
      {
        v212 = v211 + 1;
        if (__OFADD__(v211, 1))
        {
          break;
        }

        if (v212 >= v210)
        {

          goto LABEL_100;
        }

        v209 = *&v206[8 * v212];
        ++v211;
        if (v209)
        {
          v211 = v212;
          goto LABEL_92;
        }
      }

      __break(1u);
LABEL_126:

      goto LABEL_127;
    }

LABEL_92:
    v213 = __clz(__rbit64(v209)) | (v211 << 6);
    v214 = *(v382 + 56);
    v215 = (*(v382 + 48) + 16 * v213);
    v216 = *v215;
    v217 = v215[1];
    v371 = *(v366 + 72);
    v218 = v214 + v371 * v213;
    v219 = *(v377 + 48);
    v389 = type metadata accessor for OwnedBeaconGroup.PairingState;
    v220 = v367;
    sub_10046A814(v218, v367 + v219, type metadata accessor for OwnedBeaconGroup.PairingState);
    *v220 = v216;
    v220[1] = v217;
    v221 = v220;
    v222 = v376;
    sub_1000D2AD8(v221, v376, &qword_1016A4190, &unk_1013A3550);
    v223 = v375;
    sub_1000D2A70(v222, v375, &qword_1016A4190, &unk_1013A3550);
    v224 = *v223;
    v225 = v223[1];
    sub_100017D5C(v216, v217);
    sub_100016590(v224, v225);
    v226 = *(v377 + 48);
    sub_10046A814(v223 + v226, v378, v389);
    v227 = swift_getEnumCaseMultiPayload();
    if (v227)
    {
      if (v227 != 1)
      {
        sub_10046B858(v378, type metadata accessor for OwnedBeaconGroup.PairingState);
        sub_10046B858(v375 + v226, type metadata accessor for OwnedBeaconGroup.PairingState);
        v72 = v338;
        v210 = v373;
        goto LABEL_86;
      }

      v228 = sub_1000BC4D4(&qword_10169BCC0, &unk_1013AFF70);
      v229 = v378;
      sub_100006654(*(v378 + v228[16]), *(v378 + v228[16] + 8));
      v230 = *(v370 + v228[24]);
      sub_10000B3A8(v229 + v228[12], &qword_1016A40D0, &unk_10138BE70);
      v231 = type metadata accessor for UUID();
      (*(*(v231 - 8) + 8))(v229, v231);
    }

    else
    {
      v232 = sub_1000BC4D4(&qword_1016A4230, &unk_101391950);
      v230 = *(v370 + *(v232 + 48));
      sub_10000B3A8(v378, &qword_1016A40D0, &unk_10138BE70);
    }

    v72 = v338;
    v210 = v373;
    sub_10046B858(v375 + v226, type metadata accessor for OwnedBeaconGroup.PairingState);
    if (v230 == 2)
    {
      break;
    }

LABEL_86:
    v209 &= v209 - 1;
    sub_10000B3A8(v376, &qword_1016A4190, &unk_1013A3550);
    v176 = v379;
    v206 = v372;
  }

  v233 = v353;
  sub_1000D2AD8(v376, v353, &qword_1016A4190, &unk_1013A3550);
  sub_100016590(*v233, *(v233 + 8));
  v234 = v233 + *(v377 + 48);
  v235 = v356;
  sub_10046B7F0(v234, v356, type metadata accessor for OwnedBeaconGroup.PairingState);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_10046B858(v235, type metadata accessor for OwnedBeaconGroup.PairingState);
    v176 = v379;
    goto LABEL_100;
  }

  if ((*(v386 + 48))(v235, 1, v387) == 1)
  {
    sub_10000B3A8(v356, &qword_1016A40D0, &unk_10138BE70);
    goto LABEL_128;
  }

  v252 = *(v386 + 32);
  v375 = (v386 + 32);
  v373 = v252;
  (v252)(v347, v356, v387);
  v253 = 1 << *(v382 + 32);
  v254 = -1;
  if (v253 < 64)
  {
    v254 = ~(-1 << v253);
  }

  v255 = v254 & *(v382 + 64);
  v378 = v357 + 2;
  v376 = (v253 + 63) >> 6;

  for (i = 0; v255; i = v257)
  {
    v257 = i;
LABEL_118:
    v258 = __clz(__rbit64(v255)) | (v257 << 6);
    v259 = (*(v382 + 48) + 16 * v258);
    v260 = *v259;
    v261 = v259[1];
    v262 = *(v382 + 56) + v258 * v371;
    v263 = *(v377 + 48);
    v389 = type metadata accessor for OwnedBeaconGroup.PairingState;
    v264 = v351;
    sub_10046A814(v262, v351 + v263, type metadata accessor for OwnedBeaconGroup.PairingState);
    *v264 = v260;
    v264[1] = v261;
    v265 = v264;
    v266 = v355;
    sub_1000D2AD8(v265, v355, &qword_1016A4190, &unk_1013A3550);
    v267 = v354;
    sub_1000D2A70(v266, v354, &qword_1016A4190, &unk_1013A3550);
    v268 = *v267;
    v269 = v267[1];
    sub_100017D5C(v260, v261);
    sub_100016590(v268, v269);
    v270 = *(v377 + 48);
    sub_10046A814(v267 + v270, v357, v389);
    v271 = swift_getEnumCaseMultiPayload();
    if (v271)
    {
      if (v271 != 1)
      {

        sub_10046B858(v357, type metadata accessor for OwnedBeaconGroup.PairingState);
        sub_10046B858(v354 + v270, type metadata accessor for OwnedBeaconGroup.PairingState);
        goto LABEL_134;
      }

      v272 = sub_1000BC4D4(&qword_10169BCC0, &unk_1013AFF70);
      v273 = v357;
      sub_100006654(*(v357 + v272[16]), *(v357 + v272[16] + 8));
      v274 = *(v378 + v272[24]);
      sub_10000B3A8(v273 + v272[12], &qword_1016A40D0, &unk_10138BE70);
      v275 = type metadata accessor for UUID();
      (*(*(v275 - 8) + 8))(v273, v275);
    }

    else
    {
      v276 = sub_1000BC4D4(&qword_1016A4230, &unk_101391950);
      v274 = *(v378 + *(v276 + 48));
      sub_10000B3A8(v357, &qword_1016A40D0, &unk_10138BE70);
    }

    sub_10046B858(v354 + v270, type metadata accessor for OwnedBeaconGroup.PairingState);
    if (v274 != 2)
    {
      goto LABEL_132;
    }

    v255 &= v255 - 1;
    sub_10000B3A8(v355, &qword_1016A4190, &unk_1013A3550);
  }

  while (1)
  {
    v257 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v257 >= v376)
    {
      goto LABEL_126;
    }

    v255 = *&v372[8 * v257];
    ++i;
    if (v255)
    {
      goto LABEL_118;
    }
  }

  __break(1u);
}