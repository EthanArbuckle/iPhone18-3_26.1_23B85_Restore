uint64_t sub_100E854E0()
{
  v13 = v0;
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);
  v3 = *(v0 + 48);
  v4 = *(v0 + 56);
  v5 = *(v0 + 16);
  v6 = *(v4 + 16);
  *(v0 + 104) = v6;
  *(v0 + 112) = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v2, v5, v3);
  sub_100E90330(v2, v1, type metadata accessor for PeerTrustAckEnvelopeV1);
  sub_100539DD4(0, 1, v1, v10);
  *(v0 + 209) = v10[0];
  *(v0 + 120) = v11;
  *(v0 + 136) = v12;
  v7 = async function pointer to daemon.getter[1];
  v8 = swift_task_alloc();
  *(v0 + 144) = v8;
  *v8 = v0;
  v8[1] = sub_100E85688;

  return daemon.getter();
}

uint64_t sub_100E85688(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 144);
  v12 = *v1;
  *(v3 + 152) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 160) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for IDSTransportService_ItemSharingCrossAccount();
  v9 = sub_100E9056C(&qword_1016AA400, 255, &type metadata accessor for Daemon);
  v10 = sub_100E9056C(&qword_1016B1180, 255, type metadata accessor for IDSTransportService_ItemSharingCrossAccount);
  *v6 = v12;
  v6[1] = sub_100E8586C;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100E8586C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 160);
  v6 = *(*v2 + 152);
  v7 = *v2;
  *(v4 + 168) = a1;
  *(v4 + 176) = v1;

  v8 = *(v3 + 40);
  if (v1)
  {
    v9 = sub_100E85FC0;
  }

  else
  {
    v9 = sub_100E859BC;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_100E859BC()
{
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);
  v3 = *(v0 + 208);
  sub_1000BC4D4(&qword_101698CB8, &qword_101390860);
  v4 = swift_allocObject();
  *(v0 + 184) = v4;
  *(v4 + 16) = xmmword_101385D80;
  *(v4 + 32) = v3;
  *(v4 + 40) = v2;
  *(v4 + 48) = v1;

  v5 = swift_task_alloc();
  *(v0 + 192) = v5;
  *v5 = v0;
  v5[1] = sub_100E85ABC;
  v6 = *(v0 + 168);
  v7 = *(v0 + 128);
  v8 = *(v0 + 136);
  v9 = *(v0 + 120);
  v10 = *(v0 + 80);
  v11 = *(v0 + 209);

  return sub_100D1C9D8(v10, v11, v9, v7, v8, v4);
}

uint64_t sub_100E85ABC()
{
  v2 = *v1;
  v3 = *(*v1 + 192);
  v4 = *(*v1 + 184);
  v5 = *v1;
  *(*v1 + 200) = v0;

  v6 = *(v2 + 40);
  if (v0)
  {
    v7 = sub_100E86084;
  }

  else
  {
    v7 = sub_100E85C04;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_100E85C04()
{
  v46 = v0;
  if (qword_101694F20 != -1)
  {
    swift_once();
  }

  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[9];
  v4 = v0[10];
  v5 = v0[8];
  v6 = v0[6];
  v7 = v0[2];
  v8 = type metadata accessor for Logger();
  sub_1000076D4(v8, qword_10177C1A0);
  v2(v3, v7, v6);
  v2(v5, v4, v6);
  v9 = Logger.logObject.getter();
  v44 = static os_log_type_t.default.getter();
  v10 = os_log_type_enabled(v9, v44);
  v11 = v0[21];
  v13 = v0[16];
  v12 = v0[17];
  v14 = v0[12];
  v15 = v0[9];
  v16 = v0[10];
  v18 = v0[7];
  v17 = v0[8];
  v19 = v0[6];
  if (v10)
  {
    v42 = v0[21];
    v43 = v0[17];
    v20 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    *v20 = 141558531;
    *(v20 + 4) = 1752392040;
    *(v20 + 12) = 2081;
    sub_100E9056C(&qword_101696930, 255, &type metadata accessor for UUID);
    v40 = v13;
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    v41 = v14;
    v23 = v22;
    v24 = *(v18 + 8);
    v24(v15, v19);
    v25 = sub_1000136BC(v21, v23, &v45);

    *(v20 + 14) = v25;
    *(v20 + 22) = 2082;
    v26 = dispatch thunk of CustomStringConvertible.description.getter();
    v28 = v27;
    v24(v17, v19);
    v29 = sub_1000136BC(v26, v28, &v45);

    *(v20 + 24) = v29;
    _os_log_impl(&_mh_execute_header, v9, v44, "Successfully sent PeerTrustAck message for %{private,mask.hash}s [%{public}s]", v20, 0x20u);
    swift_arrayDestroy();

    sub_100016590(v40, v43);

    v24(v16, v19);
    v30 = v41;
  }

  else
  {
    v31 = v0[21];

    sub_100016590(v13, v12);

    v32 = *(v18 + 8);
    v32(v17, v19);
    v32(v15, v19);
    v32(v16, v19);
    v30 = v14;
  }

  sub_100E90398(v30, type metadata accessor for PeerTrustAckEnvelopeV1);
  v34 = v0[11];
  v33 = v0[12];
  v36 = v0[9];
  v35 = v0[10];
  v37 = v0[8];

  v38 = v0[1];

  return v38();
}

uint64_t sub_100E85FC0()
{
  v1 = v0[12];
  sub_100016590(v0[16], v0[17]);
  sub_100E90398(v1, type metadata accessor for PeerTrustAckEnvelopeV1);
  v2 = v0[22];
  v4 = v0[11];
  v3 = v0[12];
  v6 = v0[9];
  v5 = v0[10];
  v7 = v0[8];

  v8 = v0[1];

  return v8();
}

uint64_t sub_100E86084()
{
  v1 = v0[21];
  v2 = v0[16];
  v3 = v0[17];
  v4 = v0[12];

  sub_100016590(v2, v3);
  sub_100E90398(v4, type metadata accessor for PeerTrustAckEnvelopeV1);
  v5 = v0[25];
  v7 = v0[11];
  v6 = v0[12];
  v9 = v0[9];
  v8 = v0[10];
  v10 = v0[8];

  v11 = v0[1];

  return v11();
}

uint64_t sub_100E86158(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[11] = a3;
  v4[12] = v3;
  v4[10] = a2;
  v4[13] = *v3;
  v5 = *(*(sub_1000BC4D4(&qword_1016A4738, &qword_1013B10B0) - 8) + 64) + 15;
  v4[14] = swift_task_alloc();
  v6 = type metadata accessor for PeerCommunicationIdentifier();
  v4[15] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v4[16] = swift_task_alloc();
  v8 = type metadata accessor for OwnerPeerTrust();
  v4[17] = v8;
  v9 = *(v8 - 8);
  v4[18] = v9;
  v10 = *(v9 + 64) + 15;
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();
  v11 = async function pointer to daemon.getter[1];
  v12 = swift_task_alloc();
  v4[22] = v12;
  *v12 = v4;
  v12[1] = sub_100E862F4;

  return daemon.getter();
}

uint64_t sub_100E862F4(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 176);
  v12 = *v1;
  *(v3 + 184) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 192) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for BeaconStoreActor();
  v9 = sub_100E9056C(&qword_1016AA400, 255, &type metadata accessor for Daemon);
  v10 = sub_100E9056C(&qword_101698D20, 255, type metadata accessor for BeaconStoreActor);
  *v6 = v12;
  v6[1] = sub_100E864D8;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100E864D8(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 192);
  v10 = *v2;
  v3[25] = a1;
  v3[26] = v1;

  if (v1)
  {
    v5 = v3[12];
    v6 = sub_100E87804;
  }

  else
  {
    v7 = v3[23];
    v8 = v3[12];

    v6 = sub_100E86600;
    v5 = v8;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100E86600()
{
  v26 = v0;
  v1 = v0[10];
  v2 = v0[11];
  v3 = String._bridgeToObjectiveC()();
  v4 = [v3 _stripPotentialTokenURIWithToken:0];

  if (v4 && (static String._unconditionallyBridgeFromObjectiveC(_:)(), v4, _s12searchpartyd20MessagingDestinationV6stringACSgSS_tcfC_0(), v0[27] = v6, (v0[28] = v7) != 0))
  {
    v8 = v0[25];
    v0[29] = v5;

    return _swift_task_switch(sub_100E8686C, v8, 0);
  }

  else
  {
    if (qword_101694F20 != -1)
    {
      swift_once();
    }

    v9 = v0[11];
    v10 = type metadata accessor for Logger();
    sub_1000076D4(v10, qword_10177C1A0);

    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v14 = v0[10];
      v13 = v0[11];
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v25 = v16;
      *v15 = 136315138;
      *(v15 + 4) = sub_1000136BC(v14, v13, &v25);
      _os_log_impl(&_mh_execute_header, v11, v12, "Owner peer trusts could not correct destination : %s.", v15, 0xCu);
      sub_100007BAC(v16);
    }

    v17 = v0[25];

    v19 = v0[20];
    v18 = v0[21];
    v20 = v0[19];
    v21 = v0[16];
    v22 = v0[14];

    v23 = v0[1];

    return v23(_swiftEmptyArrayStorage);
  }
}

uint64_t sub_100E8686C()
{
  v1 = *(v0 + 200);
  v2 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v3 = swift_task_alloc();
  *(v0 + 240) = v3;
  v4 = sub_1000BC4D4(&qword_101697710, &unk_10138C3D0);
  *v3 = v0;
  v3[1] = sub_100E86958;
  v5 = *(v0 + 200);

  return unsafeBlocking<A>(context:_:)(v0 + 72, 0xD000000000000010, 0x800000010134A8C0, sub_100129E2C, v5, v4);
}

uint64_t sub_100E86958()
{
  v1 = *(*v0 + 240);
  v2 = *(*v0 + 200);
  v4 = *v0;

  return _swift_task_switch(sub_100E86A70, v2, 0);
}

uint64_t sub_100E86A70()
{
  v1 = v0[12];
  v0[31] = v0[9];
  return _swift_task_switch(sub_100E86A94, v1, 0);
}

uint64_t sub_100E86A94()
{
  if (qword_101694F20 != -1)
  {
    swift_once();
  }

  v1 = v0[31];
  v2 = type metadata accessor for Logger();
  v0[32] = sub_1000076D4(v2, qword_10177C1A0);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[31];
  if (v5)
  {
    v7 = swift_slowAlloc();
    *v7 = 134217984;
    *(v7 + 4) = *(v6 + 16);

    _os_log_impl(&_mh_execute_header, v3, v4, "Owner peer trusts found %ld records.", v7, 0xCu);
  }

  else
  {
    v8 = v0[31];
  }

  v9 = v0[31];
  v10 = *(v9 + 16);
  v0[33] = v10;
  if (v10)
  {
    v11 = v0[21];
    v12 = v0[18];
    v13 = v0[16];
    v14 = *(v0[17] + 28);
    v15 = v9 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v39 = *(v12 + 72);
    v16 = _swiftEmptyArrayStorage;
    v37 = v14;
    v38 = v11;
    while (1)
    {
      v17 = v0[21];
      v19 = v0[15];
      v18 = v0[16];
      sub_100E90330(v15, v17, type metadata accessor for OwnerPeerTrust);
      sub_100E90330(v11 + v14, v18, type metadata accessor for PeerCommunicationIdentifier);
      sub_100E90398(v17, type metadata accessor for OwnerPeerTrust);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload > 3)
      {
        if ((EnumCaseMultiPayload - 6) >= 2)
        {
          if (EnumCaseMultiPayload == 4)
          {
            v21 = *v0[16];
            v22 = v13[1];
            v23 = v13[2];
            v24 = v13[4];
          }

          else
          {
            v25 = v13[1];
            v21 = *(v13 + 16);
            v22 = v13[3];
            v23 = v13[4];
            v26 = v13[6];
          }

          goto LABEL_18;
        }
      }

      else
      {
        if (EnumCaseMultiPayload > 2)
        {
          v21 = *v0[16];
          v22 = v13[1];
          v23 = v13[2];
LABEL_18:
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v16 = sub_100A5C1F8(0, *(v16 + 2) + 1, 1, v16);
          }

          v28 = *(v16 + 2);
          v27 = *(v16 + 3);
          if (v28 >= v27 >> 1)
          {
            v16 = sub_100A5C1F8((v27 > 1), v28 + 1, 1, v16);
          }

          *(v16 + 2) = v28 + 1;
          v29 = &v16[24 * v28];
          v29[32] = v21;
          *(v29 + 5) = v22;
          *(v29 + 6) = v23;
          v14 = v37;
          v11 = v38;
          goto LABEL_9;
        }

        sub_100E90398(v0[16], type metadata accessor for PeerCommunicationIdentifier);
      }

LABEL_9:
      v15 += v39;
      if (!--v10)
      {
        goto LABEL_24;
      }
    }
  }

  v16 = _swiftEmptyArrayStorage;
LABEL_24:
  v30 = v0[28];
  v31 = v0[29];
  v32 = v0[27];
  sub_1000BC4D4(&qword_101698CB8, &qword_101390860);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_101385D80;
  *(inited + 32) = v31;
  *(inited + 40) = v32;
  *(inited + 48) = v30;

  sub_100398180(inited);
  v0[34] = v16;
  v34 = swift_task_alloc();
  v0[35] = v34;
  *v34 = v0;
  v34[1] = sub_100E86E68;
  v35 = v0[14];

  return sub_100E80604(v35, v16);
}

uint64_t sub_100E86E68()
{
  v1 = *(*v0 + 280);
  v2 = *(*v0 + 272);
  v3 = *(*v0 + 96);
  v5 = *v0;

  return _swift_task_switch(sub_100E86F94, v3, 0);
}

uint64_t sub_100E86F94()
{
  v39 = v0;
  if (*(v0 + 264))
  {
    v1 = *(v0 + 248);
    v3 = *(v0 + 136);
    v2 = *(v0 + 144);
    v4 = *(v2 + 80);
    *(v0 + 328) = v4;
    v5 = *(v2 + 72);
    *(v0 + 304) = _swiftEmptyArrayStorage;
    *(v0 + 312) = _swiftEmptyArrayStorage;
    *(v0 + 288) = v5;
    *(v0 + 296) = 0;
    v6 = *(v0 + 224);
    v7 = *(v0 + 160);
    v8 = *(v0 + 232);
    sub_100E90330(v1 + ((v4 + 32) & ~v4), v7, type metadata accessor for OwnerPeerTrust);
    v9 = *(v3 + 28);
    v10 = swift_task_alloc();
    *(v0 + 320) = v10;
    *v10 = v0;
    v10[1] = sub_100E872BC;
    v11 = *(v0 + 216);
    v12 = *(v0 + 112);

    return sub_100E8DCD0(v8, v11, v6, v7 + v9, v12);
  }

  else
  {
    v14 = *(v0 + 248);
    v15 = *(v0 + 256);
    v16 = *(v0 + 224);
    v17 = *(v0 + 88);

    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();

    v20 = os_log_type_enabled(v18, v19);
    v21 = *(v0 + 200);
    if (v20)
    {
      v22 = *(v0 + 136);
      v23 = *(v0 + 112);
      v25 = *(v0 + 80);
      v24 = *(v0 + 88);
      v26 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      *v26 = 136315394;
      *(v26 + 4) = sub_1000136BC(v25, v24, &v38);
      *(v26 + 12) = 2080;

      v27 = Array.description.getter();
      v29 = v28;

      v30 = sub_1000136BC(v27, v29, &v38);

      *(v26 + 14) = v30;
      _os_log_impl(&_mh_execute_header, v18, v19, "Owner peer trusts found %s matched %s.", v26, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
      v23 = *(v0 + 112);
      v31 = *(v0 + 200);
    }

    sub_10000B3A8(v23, &qword_1016A4738, &qword_1013B10B0);
    v33 = *(v0 + 160);
    v32 = *(v0 + 168);
    v34 = *(v0 + 152);
    v35 = *(v0 + 128);
    v36 = *(v0 + 112);

    v37 = *(v0 + 8);

    return v37(_swiftEmptyArrayStorage);
  }
}

uint64_t sub_100E872BC(char a1)
{
  v2 = *(*v1 + 320);
  v3 = *(*v1 + 96);
  v5 = *v1;
  *(*v1 + 332) = a1;

  return _swift_task_switch(sub_100E873D4, v3, 0);
}

uint64_t sub_100E873D4()
{
  v46 = v0;
  if (v0[20].i8[12])
  {
    v1 = v0[19].i64[1];
    sub_100E90330(v0[10].i64[0], v0[9].i64[1], type metadata accessor for OwnerPeerTrust);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v3 = v0[19].i64[1];
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v3 = sub_100A5C1D0(0, v3[2] + 1, 1, v0[19].i64[1]);
    }

    v5 = v3[2];
    v4 = v3[3];
    if (v5 >= v4 >> 1)
    {
      v3 = sub_100A5C1D0(v4 > 1, v5 + 1, 1, v3);
    }

    v6 = v0[18].i64[0];
    v7 = v0[9].i64[1];
    v8 = (v0[20].u8[8] + 32) & ~v0[20].u8[8];
    sub_100E90398(v0[10].i64[0], type metadata accessor for OwnerPeerTrust);
    v3[2] = v5 + 1;
    sub_100E90504(v7, v3 + v8 + v6 * v5, type metadata accessor for OwnerPeerTrust);
    v9 = vdupq_n_s64(v3);
  }

  else
  {
    sub_100E90398(v0[10].i64[0], type metadata accessor for OwnerPeerTrust);
    v9 = v0[19];
  }

  v10 = v0[18].i64[1] + 1;
  if (v10 == v0[16].i64[1])
  {
    v44 = v9.i64[0];
    v11 = v0[15].i64[1];
    v12 = v0[16].i64[0];
    v13 = v0[14].i64[0];
    v14 = v0[5].i64[1];

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();

    v17 = os_log_type_enabled(v15, v16);
    v18 = v0[12].i64[1];
    if (v17)
    {
      v19 = v0[8].i64[1];
      v20 = v0[7].i64[0];
      v22 = v0[5].i64[0];
      v21 = v0[5].u64[1];
      v23 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      *v23 = 136315394;
      *(v23 + 4) = sub_1000136BC(v22, v21, &v45);
      *(v23 + 12) = 2080;

      v24 = Array.description.getter();
      v26 = v25;

      v27 = sub_1000136BC(v24, v26, &v45);

      *(v23 + 14) = v27;
      _os_log_impl(&_mh_execute_header, v15, v16, "Owner peer trusts found %s matched %s.", v23, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
      v20 = v0[7].i64[0];
      v37 = v0[12].i64[1];
    }

    sub_10000B3A8(v20, &qword_1016A4738, &qword_1013B10B0);
    v39 = v0[10].i64[0];
    v38 = v0[10].i64[1];
    v40 = v0[9].i64[1];
    v41 = v0[8].i64[0];
    v42 = v0[7].i64[0];

    v43 = v0->i64[1];

    return v43(v44);
  }

  else
  {
    v0[19] = v9;
    v0[18].i64[1] = v10;
    v28 = v0[14].i64[0];
    v29 = v0[10].i64[0];
    v30 = v0[8].i64[1];
    v31 = v0[14].i8[8];
    sub_100E90330(v0[15].i64[1] + ((v0[20].u8[8] + 32) & ~v0[20].u8[8]) + v0[18].i64[0] * v10, v29, type metadata accessor for OwnerPeerTrust);
    v32 = *(v30 + 28);
    v33 = swift_task_alloc();
    v0[20].i64[0] = v33;
    *v33 = v0;
    v33[1] = sub_100E872BC;
    v34 = v0[13].i64[1];
    v35 = v0[7].i64[0];

    return sub_100E8DCD0(v31, v34, v28, v29 + v32, v35);
  }
}

uint64_t sub_100E87804()
{
  v1 = v0[23];
  v2 = v0[20];
  v3 = v0[21];
  v4 = v0[19];
  v5 = v0[16];
  v6 = v0[14];

  v7 = v0[1];
  v8 = v0[26];

  return v7();
}

uint64_t sub_100E878B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[15] = a3;
  v4[16] = v3;
  v4[14] = a2;
  v4[17] = *v3;
  v5 = *(*(sub_1000BC4D4(&qword_1016A4738, &qword_1013B10B0) - 8) + 64) + 15;
  v4[18] = swift_task_alloc();
  v6 = type metadata accessor for PeerCommunicationIdentifier();
  v4[19] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();
  v8 = type metadata accessor for MemberPeerTrust();
  v4[22] = v8;
  v9 = *(v8 - 8);
  v4[23] = v9;
  v10 = *(v9 + 64) + 15;
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  v4[27] = swift_task_alloc();
  v11 = async function pointer to daemon.getter[1];
  v12 = swift_task_alloc();
  v4[28] = v12;
  *v12 = v4;
  v12[1] = sub_100E87A64;

  return daemon.getter();
}

uint64_t sub_100E87A64(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 224);
  v12 = *v1;
  *(v3 + 232) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 240) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for BeaconStoreActor();
  v9 = sub_100E9056C(&qword_1016AA400, 255, &type metadata accessor for Daemon);
  v10 = sub_100E9056C(&qword_101698D20, 255, type metadata accessor for BeaconStoreActor);
  *v6 = v12;
  v6[1] = sub_100E87C48;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100E87C48(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 240);
  v6 = *v2;
  v4[31] = a1;
  v4[32] = v1;

  if (v1)
  {
    v7 = v4[16];
    v8 = sub_100E8964C;
  }

  else
  {
    v9 = v4[29];

    v8 = sub_100E87D80;
    v7 = a1;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_100E87D80()
{
  v1 = *(v0 + 248);
  v2 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v3 = swift_task_alloc();
  *(v0 + 264) = v3;
  v4 = sub_1000BC4D4(&qword_101697718, &unk_1013EBDF0);
  *v3 = v0;
  v3[1] = sub_100E87E6C;
  v5 = *(v0 + 248);

  return unsafeBlocking<A>(context:_:)(v0 + 104, 0xD000000000000010, 0x800000010134A8C0, sub_100129E34, v5, v4);
}

uint64_t sub_100E87E6C()
{
  v1 = *(*v0 + 264);
  v2 = *(*v0 + 248);
  v4 = *v0;

  return _swift_task_switch(sub_100E87F84, v2, 0);
}

uint64_t sub_100E87F84()
{
  v1 = v0[16];
  v0[34] = v0[13];
  return _swift_task_switch(sub_100E87FA8, v1, 0);
}

uint64_t sub_100E87FA8()
{
  v67 = v0;
  if (qword_101694F20 != -1)
  {
    swift_once();
  }

  v1 = v0[34];
  v2 = type metadata accessor for Logger();
  v0[35] = sub_1000076D4(v2, qword_10177C1A0);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[34];
  if (v5)
  {
    v7 = swift_slowAlloc();
    *v7 = 134217984;
    *(v7 + 4) = *(v6 + 16);

    _os_log_impl(&_mh_execute_header, v3, v4, "Member peer trusts found %ld records.", v7, 0xCu);
  }

  else
  {
    v8 = v0[34];
  }

  v9 = v0[14];
  v10 = v0[15];
  v11 = String._bridgeToObjectiveC()();
  v12 = [v11 _stripPotentialTokenURIWithToken:0];

  if (!v12)
  {
    goto LABEL_26;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  v0[36] = v14;

  _s12searchpartyd20MessagingDestinationV6stringACSgSS_tcfC_0();
  v0[37] = v16;
  v0[38] = v17;
  if (!v17)
  {

LABEL_26:
    v39 = v0[34];
    v40 = v0[15];

    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v41, v42))
    {
      v44 = v0[14];
      v43 = v0[15];
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v66 = v46;
      *v45 = 136315138;
      *(v45 + 4) = sub_1000136BC(v44, v43, &v66);
      _os_log_impl(&_mh_execute_header, v41, v42, "Member peer trusts could not correct destination : %s.", v45, 0xCu);
      sub_100007BAC(v46);
    }

    v47 = v0[31];

    v49 = v0[26];
    v48 = v0[27];
    v51 = v0[24];
    v50 = v0[25];
    v53 = v0[20];
    v52 = v0[21];
    v54 = v0[18];

    v55 = v0[1];

    return v55(_swiftEmptyArrayStorage);
  }

  v18 = v0[34];
  v0[39] = v15;
  v19 = *(v18 + 16);
  v0[40] = v19;
  v61 = v16;
  v62 = v17;
  v60 = v15;
  if (v19)
  {
    v20 = v0[27];
    v21 = v0[23];
    v22 = v0[21];
    v23 = *(v0[22] + 28);
    v24 = v18 + ((*(v21 + 80) + 32) & ~*(v21 + 80));
    v65 = *(v21 + 72);
    v25 = _swiftEmptyArrayStorage;
    v63 = v23;
    v64 = v20;
    while (1)
    {
      v26 = v0[27];
      v27 = v0[21];
      v28 = v0[19];
      sub_100E90330(v24, v26, type metadata accessor for MemberPeerTrust);
      sub_100E90330(v20 + v23, v27, type metadata accessor for PeerCommunicationIdentifier);
      sub_100E90398(v26, type metadata accessor for MemberPeerTrust);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload > 3)
      {
        if ((EnumCaseMultiPayload - 6) >= 2)
        {
          if (EnumCaseMultiPayload == 4)
          {
            v30 = *v0[21];
            v32 = v22[1];
            v31 = v22[2];
            v33 = v22[4];
          }

          else
          {
            v34 = v22[1];
            v30 = *(v22 + 16);
            v32 = v22[3];
            v31 = v22[4];
            v35 = v22[6];
          }

          goto LABEL_20;
        }
      }

      else
      {
        if (EnumCaseMultiPayload > 2)
        {
          v30 = *v0[21];
          v32 = v22[1];
          v31 = v22[2];
LABEL_20:
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v25 = sub_100A5C1F8(0, *(v25 + 2) + 1, 1, v25);
          }

          v37 = *(v25 + 2);
          v36 = *(v25 + 3);
          if (v37 >= v36 >> 1)
          {
            v25 = sub_100A5C1F8((v36 > 1), v37 + 1, 1, v25);
          }

          *(v25 + 2) = v37 + 1;
          v38 = &v25[24 * v37];
          v38[32] = v30;
          *(v38 + 5) = v32;
          *(v38 + 6) = v31;
          v23 = v63;
          v20 = v64;
          goto LABEL_11;
        }

        sub_100E90398(v0[21], type metadata accessor for PeerCommunicationIdentifier);
      }

LABEL_11:
      v24 += v65;
      if (!--v19)
      {
        goto LABEL_32;
      }
    }
  }

  v25 = _swiftEmptyArrayStorage;
LABEL_32:
  v0[41] = v25;
  sub_1000BC4D4(&qword_101698CB8, &qword_101390860);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_101385D80;
  *(inited + 32) = v60;
  *(inited + 40) = v61;
  *(inited + 48) = v62;
  v66 = v25;

  sub_100398180(inited);
  v0[42] = v25;
  v58 = swift_task_alloc();
  v0[43] = v58;
  *v58 = v0;
  v58[1] = sub_100E8856C;
  v59 = v0[18];

  return sub_100E80604(v59, v25);
}

uint64_t sub_100E8856C()
{
  v1 = *(*v0 + 344);
  v2 = *(*v0 + 128);
  v4 = *v0;

  return _swift_task_switch(sub_100E8867C, v2, 0);
}

void sub_100E8867C()
{
  v42 = v0;
  if (*(v0 + 320))
  {
    v1 = *(v0 + 272);
    v3 = *(v0 + 176);
    v2 = *(v0 + 184);
    v4 = *(v2 + 80);
    *(v0 + 400) = v4;
    *(v0 + 360) = _swiftEmptyArrayStorage;
    *(v0 + 368) = _swiftEmptyArrayStorage;
    *(v0 + 352) = 0;
    if (*(v1 + 16))
    {
      v5 = *(v0 + 304);
      v6 = *(v0 + 208);
      *(v0 + 376) = *(v2 + 72);
      v7 = *(v0 + 312);
      sub_100E90330(v1 + ((v4 + 32) & ~v4), v6, type metadata accessor for MemberPeerTrust);
      v8 = *(v3 + 28);
      v9 = swift_task_alloc();
      *(v0 + 384) = v9;
      *v9 = v0;
      v9[1] = sub_100E889E4;
      v10 = *(v0 + 296);
      v11 = *(v0 + 144);

      sub_100E8DCD0(v7, v10, v5, v6 + v8, v11);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v12 = *(v0 + 328);
    v13 = *(v0 + 336);
    v14 = *(v0 + 304);
    v16 = *(v0 + 280);
    v15 = *(v0 + 288);
    v17 = *(v0 + 272);
    v18 = *(v0 + 120);

    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();

    v21 = os_log_type_enabled(v19, v20);
    v22 = *(v0 + 248);
    if (v21)
    {
      v23 = *(v0 + 176);
      v24 = *(v0 + 144);
      v26 = *(v0 + 112);
      v25 = *(v0 + 120);
      v27 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      *v27 = 136315394;
      *(v27 + 4) = sub_1000136BC(v26, v25, &v41);
      *(v27 + 12) = 2080;

      v28 = Array.description.getter();
      v30 = v29;

      v31 = sub_1000136BC(v28, v30, &v41);

      *(v27 + 14) = v31;
      _os_log_impl(&_mh_execute_header, v19, v20, "Owner peer trusts found %s matched %s.", v27, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
      v24 = *(v0 + 144);
      v32 = *(v0 + 248);
    }

    sub_10000B3A8(v24, &qword_1016A4738, &qword_1013B10B0);
    v34 = *(v0 + 208);
    v33 = *(v0 + 216);
    v36 = *(v0 + 192);
    v35 = *(v0 + 200);
    v38 = *(v0 + 160);
    v37 = *(v0 + 168);
    v39 = *(v0 + 144);

    v40 = *(v0 + 8);

    v40(_swiftEmptyArrayStorage);
  }
}

uint64_t sub_100E889E4(char a1)
{
  v2 = *(*v1 + 384);
  v3 = *(*v1 + 128);
  v5 = *v1;
  *(*v1 + 404) = a1;

  return _swift_task_switch(sub_100E88AFC, v3, 0);
}

void sub_100E88AFC()
{
  v71 = v0;
  v1 = *(v0 + 208);
  if ((*(v0 + 404) & 1) == 0)
  {
    v31 = (v1 + *(*(v0 + 176) + 32));
    v32 = v31[1];
    *(v0 + 72) = *v31;
    *(v0 + 80) = v32;
    *(v0 + 88) = 64;
    *(v0 + 96) = 0xE100000000000000;
    sub_1000DF96C();
    v33 = StringProtocol.contains<A>(_:)();
    v34 = String._bridgeToObjectiveC()();
    if (v33)
    {
      v35 = IDSCopyIDForEmailAddress();

      if (!v35)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v36 = 0;
    }

    else
    {
      v35 = IDSCopyIDForPhoneNumber();

      if (!v35)
      {
LABEL_26:
        __break(1u);
        return;
      }

      v36 = 1;
    }

    v51 = *(v0 + 304);
    v53 = *(v0 + 152);
    v52 = *(v0 + 160);
    v54 = *(v0 + 312);
    v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v57 = v56;

    *v52 = v36;
    *(v52 + 8) = v55;
    *(v52 + 16) = v57;
    swift_storeEnumTagMultiPayload();
    v58 = swift_task_alloc();
    *(v0 + 392) = v58;
    *v58 = v0;
    v58[1] = sub_100E89080;
    v46 = *(v0 + 296);
    v48 = *(v0 + 160);
    v47 = *(v0 + 144);
    v49 = v54;
    v50 = v51;
    goto LABEL_17;
  }

  v2 = *(v0 + 368);
  sub_100E90330(v1, *(v0 + 200), type metadata accessor for MemberPeerTrust);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + 368);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = sub_100A5C318(0, v4[2] + 1, 1, *(v0 + 368));
  }

  v6 = v4[2];
  v5 = v4[3];
  if (v6 >= v5 >> 1)
  {
    v4 = sub_100A5C318(v5 > 1, v6 + 1, 1, v4);
  }

  v7 = *(v0 + 376);
  v8 = *(v0 + 200);
  v9 = (*(v0 + 400) + 32) & ~*(v0 + 400);
  sub_100E90398(*(v0 + 208), type metadata accessor for MemberPeerTrust);
  v4[2] = v6 + 1;
  sub_100E90504(v8, v4 + v9 + v7 * v6, type metadata accessor for MemberPeerTrust);
  v10 = *(v0 + 352) + 1;
  if (v10 == *(v0 + 320))
  {
    v11 = *(v0 + 328);
    v12 = *(v0 + 336);
    v13 = *(v0 + 304);
    v15 = *(v0 + 280);
    v14 = *(v0 + 288);
    v16 = *(v0 + 272);
    v17 = *(v0 + 120);

    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();

    v20 = os_log_type_enabled(v18, v19);
    v21 = *(v0 + 248);
    if (v20)
    {
      v22 = *(v0 + 176);
      v69 = *(v0 + 144);
      v23 = *(v0 + 112);
      v24 = *(v0 + 120);
      v25 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      *v25 = 136315394;
      *(v25 + 4) = sub_1000136BC(v23, v24, &v70);
      *(v25 + 12) = 2080;

      v26 = Array.description.getter();
      v28 = v27;

      v29 = sub_1000136BC(v26, v28, &v70);

      *(v25 + 14) = v29;
      _os_log_impl(&_mh_execute_header, v18, v19, "Owner peer trusts found %s matched %s.", v25, 0x16u);
      swift_arrayDestroy();

      v30 = v69;
    }

    else
    {
      v59 = *(v0 + 144);
      v60 = *(v0 + 248);

      v30 = v59;
    }

    sub_10000B3A8(v30, &qword_1016A4738, &qword_1013B10B0);
    v62 = *(v0 + 208);
    v61 = *(v0 + 216);
    v64 = *(v0 + 192);
    v63 = *(v0 + 200);
    v66 = *(v0 + 160);
    v65 = *(v0 + 168);
    v67 = *(v0 + 144);

    v68 = *(v0 + 8);

    v68(v4);
    return;
  }

  *(v0 + 360) = v4;
  *(v0 + 368) = v4;
  *(v0 + 352) = v10;
  v37 = *(v0 + 272);
  if (v10 >= *(v37 + 16))
  {
    __break(1u);
    goto LABEL_25;
  }

  v38 = *(v0 + 304);
  v39 = *(v0 + 208);
  v40 = *(v0 + 176);
  v41 = v37 + ((*(v0 + 400) + 32) & ~*(v0 + 400));
  v42 = *(*(v0 + 184) + 72);
  *(v0 + 376) = v42;
  v43 = *(v0 + 312);
  sub_100E90330(v41 + v42 * v10, v39, type metadata accessor for MemberPeerTrust);
  v44 = *(v40 + 28);
  v45 = swift_task_alloc();
  *(v0 + 384) = v45;
  *v45 = v0;
  v45[1] = sub_100E889E4;
  v46 = *(v0 + 296);
  v47 = *(v0 + 144);
  v48 = v39 + v44;
  v49 = v43;
  v50 = v38;
LABEL_17:

  sub_100E8DCD0(v49, v46, v50, v48, v47);
}

uint64_t sub_100E89080(char a1)
{
  v2 = *(*v1 + 392);
  v3 = *(*v1 + 160);
  v4 = *(*v1 + 128);
  v6 = *v1;
  *(*v1 + 405) = a1;

  sub_100E90398(v3, type metadata accessor for PeerCommunicationIdentifier);

  return _swift_task_switch(sub_100E891C8, v4, 0);
}

uint64_t sub_100E891C8()
{
  v55 = v0;
  if (*(v0 + 405))
  {
    v1 = *(v0 + 368);
    sub_100E90330(*(v0 + 208), *(v0 + 192), type metadata accessor for MemberPeerTrust);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v3 = *(v0 + 368);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v3 = sub_100A5C318(0, v3[2] + 1, 1, *(v0 + 368));
    }

    v5 = v3[2];
    v4 = v3[3];
    if (v5 >= v4 >> 1)
    {
      v3 = sub_100A5C318(v4 > 1, v5 + 1, 1, v3);
    }

    v6 = *(v0 + 376);
    v7 = *(v0 + 192);
    v8 = (*(v0 + 400) + 32) & ~*(v0 + 400);
    sub_100E90398(*(v0 + 208), type metadata accessor for MemberPeerTrust);
    v3[2] = v5 + 1;
    result = sub_100E90504(v7, v3 + v8 + v6 * v5, type metadata accessor for MemberPeerTrust);
    v10 = v3;
  }

  else
  {
    result = sub_100E90398(*(v0 + 208), type metadata accessor for MemberPeerTrust);
    v3 = *(v0 + 360);
    v10 = *(v0 + 368);
  }

  v11 = *(v0 + 352) + 1;
  if (v11 == *(v0 + 320))
  {
    v12 = *(v0 + 328);
    v13 = *(v0 + 336);
    v14 = *(v0 + 304);
    v16 = *(v0 + 280);
    v15 = *(v0 + 288);
    v17 = *(v0 + 272);
    v18 = *(v0 + 120);

    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();

    v21 = os_log_type_enabled(v19, v20);
    v22 = *(v0 + 248);
    if (v21)
    {
      v23 = *(v0 + 176);
      v53 = *(v0 + 144);
      v24 = *(v0 + 112);
      v25 = *(v0 + 120);
      v26 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      *v26 = 136315394;
      *(v26 + 4) = sub_1000136BC(v24, v25, &v54);
      *(v26 + 12) = 2080;

      v27 = Array.description.getter();
      v29 = v28;

      v30 = sub_1000136BC(v27, v29, &v54);

      *(v26 + 14) = v30;
      _os_log_impl(&_mh_execute_header, v19, v20, "Owner peer trusts found %s matched %s.", v26, 0x16u);
      swift_arrayDestroy();

      v31 = v53;
    }

    else
    {
      v43 = *(v0 + 144);
      v44 = *(v0 + 248);

      v31 = v43;
    }

    sub_10000B3A8(v31, &qword_1016A4738, &qword_1013B10B0);
    v46 = *(v0 + 208);
    v45 = *(v0 + 216);
    v48 = *(v0 + 192);
    v47 = *(v0 + 200);
    v50 = *(v0 + 160);
    v49 = *(v0 + 168);
    v51 = *(v0 + 144);

    v52 = *(v0 + 8);

    return v52(v3);
  }

  else
  {
    *(v0 + 360) = v3;
    *(v0 + 368) = v10;
    *(v0 + 352) = v11;
    v32 = *(v0 + 272);
    if (v11 >= *(v32 + 16))
    {
      __break(1u);
    }

    else
    {
      v33 = *(v0 + 304);
      v34 = *(v0 + 208);
      v35 = *(v0 + 176);
      v36 = v32 + ((*(v0 + 400) + 32) & ~*(v0 + 400));
      v37 = *(*(v0 + 184) + 72);
      *(v0 + 376) = v37;
      v38 = *(v0 + 312);
      sub_100E90330(v36 + v37 * v11, v34, type metadata accessor for MemberPeerTrust);
      v39 = *(v35 + 28);
      v40 = swift_task_alloc();
      *(v0 + 384) = v40;
      *v40 = v0;
      v40[1] = sub_100E889E4;
      v41 = *(v0 + 296);
      v42 = *(v0 + 144);

      return sub_100E8DCD0(v38, v41, v33, v34 + v39, v42);
    }
  }

  return result;
}

uint64_t sub_100E8964C()
{
  v1 = v0[29];
  v2 = v0[26];
  v3 = v0[27];
  v5 = v0[24];
  v4 = v0[25];
  v7 = v0[20];
  v6 = v0[21];
  v8 = v0[18];

  v9 = v0[1];
  v10 = v0[32];

  return v9();
}

uint64_t sub_100E8973C@<X0>(void *a1@<X8>)
{
  if (qword_1016944B0 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&qword_1016A4768, &unk_1013B10E0);
  result = OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  if (v4)
  {
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    return swift_willThrowTypedImpl();
  }

  else
  {
    *a1 = v3;
  }

  return result;
}

uint64_t sub_100E89850(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to ActorServiceProtocol.initialLaunchProcessing()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = type metadata accessor for PeerTrustService();
  *v5 = v2;
  v5[1] = sub_100014744;

  return ActorServiceProtocol.initialLaunchProcessing()(v6, a2);
}

uint64_t sub_100E898F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to ActorServiceProtocol.migrate(from:to:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for PeerTrustService();
  *v9 = v4;
  v9[1] = sub_100014744;

  return ActorServiceProtocol.migrate(from:to:)(a1, a2, v10, a4);
}

uint64_t sub_100E899BC(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to ActorServiceProtocol.firstLaunchSinceReboot()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = type metadata accessor for PeerTrustService();
  *v5 = v2;
  v5[1] = sub_100014650;

  return ActorServiceProtocol.firstLaunchSinceReboot()(v6, a2);
}

uint64_t sub_100E89A64()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100014744;

  return sub_100E80EF4();
}

uint64_t sub_100E89AF0(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to ActorServiceProtocol.run()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = type metadata accessor for PeerTrustService();
  *v5 = v2;
  v5[1] = sub_100014650;

  return ActorServiceProtocol.run()(v6, a2);
}

uint64_t sub_100E89B98()
{
  v1 = *v0;
  type metadata accessor for PeerTrustService();
  sub_100E9056C(&qword_1016B1190, v2, type metadata accessor for PeerTrustService);
  return ActorServiceProtocol.description.getter();
}

uint64_t sub_100E89C00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = *(*(sub_1000BC4D4(&qword_1016975C8, &qword_10138C1F0) - 8) + 64) + 15;
  v4[3] = swift_task_alloc();
  v6 = sub_1000BC4D4(&qword_101697798, &unk_10138C4F0);
  v4[4] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v4[5] = swift_task_alloc();
  v8 = type metadata accessor for OwnerPeerTrust();
  v4[6] = v8;
  v9 = *(v8 - 8);
  v4[7] = v9;
  v10 = *(v9 + 64) + 15;
  v4[8] = swift_task_alloc();
  v11 = type metadata accessor for UUID();
  v4[9] = v11;
  v12 = *(v11 - 8);
  v4[10] = v12;
  v4[11] = *(v12 + 64);
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();

  return _swift_task_switch(sub_100E89DBC, 0, 0);
}

uint64_t sub_100E89DBC()
{
  v23 = v0;
  if (qword_101694F20 != -1)
  {
    swift_once();
  }

  v1 = v0[15];
  v2 = v0[9];
  v3 = v0[10];
  v4 = v0[2];
  v5 = type metadata accessor for Logger();
  v0[16] = sub_1000076D4(v5, qword_10177C1A0);
  v6 = *(v3 + 16);
  v0[17] = v6;
  v0[18] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[15];
  v11 = v0[9];
  v12 = v0[10];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v22 = v14;
    *v13 = 141558275;
    *(v13 + 4) = 1752392040;
    *(v13 + 12) = 2081;
    sub_100E9056C(&qword_101696930, 255, &type metadata accessor for UUID);
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v16;
    (*(v12 + 8))(v10, v11);
    v18 = sub_1000136BC(v15, v17, &v22);

    *(v13 + 14) = v18;
    _os_log_impl(&_mh_execute_header, v7, v8, "Received handlePeerTrustAck -- identifier: %{private,mask.hash}s", v13, 0x16u);
    sub_100007BAC(v14);
  }

  else
  {

    (*(v12 + 8))(v10, v11);
  }

  v19 = async function pointer to daemon.getter[1];
  v20 = swift_task_alloc();
  v0[19] = v20;
  *v20 = v0;
  v20[1] = sub_100E8A050;

  return daemon.getter();
}

uint64_t sub_100E8A050(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 152);
  v12 = *v1;
  *(v3 + 160) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 168) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for BeaconStoreActor();
  v9 = sub_100E9056C(&qword_1016AA400, 255, &type metadata accessor for Daemon);
  v10 = sub_100E9056C(&qword_101698D20, 255, type metadata accessor for BeaconStoreActor);
  *v6 = v12;
  v6[1] = sub_100E8A234;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100E8A234(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 168);
  v6 = *v2;
  v4[22] = a1;
  v4[23] = v1;

  if (v1)
  {
    v7 = sub_100E8B3AC;
    v8 = 0;
  }

  else
  {
    v9 = v4[20];

    v7 = sub_100E8A36C;
    v8 = a1;
  }

  return _swift_task_switch(v7, v8, 0);
}

uint64_t sub_100E8A394()
{
  v1 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
  v2 = swift_task_alloc();
  *(v0 + 200) = v2;
  *v2 = v0;
  v2[1] = sub_100E8A470;
  v3 = *(v0 + 192);

  return withCheckedContinuation<A>(isolation:function:_:)(v2, 0, 0, 0x696176416E656877, 0xEF2928656C62616CLL, sub_100111E60, v3, &type metadata for () + 8);
}

uint64_t sub_100E8A470()
{
  v1 = *(*v0 + 200);
  v3 = *v0;

  return _swift_task_switch(sub_100E8A56C, 0, 0);
}

uint64_t sub_100E8A588()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 144);
  v3 = *(v0 + 112);
  v5 = *(v0 + 80);
  v4 = *(v0 + 88);
  v6 = *(v0 + 72);
  (*(v0 + 136))(v3, *(v0 + 16), v6);
  v7 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v8 = swift_allocObject();
  *(v0 + 208) = v8;
  *(v8 + 16) = v1;
  (*(v5 + 32))(v8 + v7, v3, v6);
  v9 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v10 = swift_task_alloc();
  *(v0 + 216) = v10;
  *v10 = v0;
  v10[1] = sub_100E8A6E0;
  v12 = *(v0 + 32);
  v11 = *(v0 + 40);

  return unsafeBlocking<A>(context:_:)(v11, 0xD000000000000010, 0x800000010134A8C0, sub_1002EB3A8, v8, v12);
}

uint64_t sub_100E8A6E0()
{
  v1 = *(*v0 + 216);
  v2 = *(*v0 + 208);
  v4 = *v0;

  return _swift_task_switch(sub_100E8A7F8, 0, 0);
}

uint64_t sub_100E8A7F8()
{
  v45 = v0;
  v1 = v0[5];
  if ((*(v0[7] + 48))(v1, 1, v0[6]) == 1)
  {
    v3 = v0[17];
    v2 = v0[18];
    v4 = v0[16];
    v5 = v0[12];
    v6 = v0[9];
    v7 = v0[2];
    sub_10000B3A8(v1, &qword_101697798, &unk_10138C4F0);
    v3(v5, v7, v6);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    v10 = os_log_type_enabled(v8, v9);
    v11 = v0[12];
    v12 = v0[9];
    v13 = v0[10];
    if (v10)
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v44 = v15;
      *v14 = 141558275;
      *(v14 + 4) = 1752392040;
      *(v14 + 12) = 2081;
      sub_100E9056C(&qword_101696930, 255, &type metadata accessor for UUID);
      v16 = dispatch thunk of CustomStringConvertible.description.getter();
      v18 = v17;
      (*(v13 + 8))(v11, v12);
      v19 = sub_1000136BC(v16, v18, &v44);

      *(v14 + 14) = v19;
      _os_log_impl(&_mh_execute_header, v8, v9, "Received PeerTrustAck for unknown record: %{private,mask.hash}s", v14, 0x16u);
      sub_100007BAC(v15);
    }

    else
    {

      (*(v13 + 8))(v11, v12);
    }

    v27 = v0[22];
    sub_100E8FB24();
    swift_allocError();
    *v28 = 0;
    swift_willThrow();

    goto LABEL_8;
  }

  v20 = v0[23];
  v21 = v0[8];
  v22 = v0[3];
  sub_100E90504(v1, v21, type metadata accessor for OwnerPeerTrust);
  *(swift_task_alloc() + 16) = v21;
  sub_100EC0C48(sub_100E8FB78, v22);
  v23 = v20;
  v24 = v0[22];
  if (v23)
  {
    v25 = v0[8];
    v26 = v0[22];

    sub_100E90398(v25, type metadata accessor for OwnerPeerTrust);
LABEL_8:
    v29 = v0[16];
    swift_errorRetain();
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *v32 = 138412290;
      v34 = _convertErrorToNSError(_:)();
      *(v32 + 4) = v34;
      *v33 = v34;
      _os_log_impl(&_mh_execute_header, v30, v31, "Error in handlePeerTrustAck: %@", v32, 0xCu);
      sub_10000B3A8(v33, &qword_10169BB30, &unk_10138B3C0);
    }

    else
    {
    }

    v36 = v0[14];
    v35 = v0[15];
    v38 = v0[12];
    v37 = v0[13];
    v39 = v0[8];
    v40 = v0[5];
    v41 = v0[3];

    v42 = v0[1];

    return v42();
  }

  return _swift_task_switch(sub_100E8AC88, v24, 0);
}

uint64_t sub_100E8ACB0()
{
  v1 = v0[28];
  v2 = v0[3];
  v3 = swift_task_alloc();
  v0[29] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v5 = swift_task_alloc();
  v0[30] = v5;
  *v5 = v0;
  v5[1] = sub_100E8ADA8;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v5, 0, 0, 0xD000000000000011, 0x800000010134B790, sub_10011191C, v3, &type metadata for () + 8);
}

uint64_t sub_100E8ADA8()
{
  v2 = *v1;
  v3 = *(*v1 + 240);
  v7 = *v1;
  *(*v1 + 248) = v0;

  if (v0)
  {
    v4 = sub_100E8B164;
  }

  else
  {
    v5 = *(v2 + 232);

    v4 = sub_100E8AEC4;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100E8AEC4()
{
  v31 = v0;
  v1 = *(v0 + 144);
  v2 = *(v0 + 128);
  (*(v0 + 136))(*(v0 + 104), *(v0 + 16), *(v0 + 72));
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 176);
  v7 = *(v0 + 104);
  v9 = *(v0 + 72);
  v8 = *(v0 + 80);
  v10 = *(v0 + 24);
  if (v5)
  {
    v29 = *(v0 + 176);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v30 = v12;
    *v11 = 141558275;
    *(v11 + 4) = 1752392040;
    *(v11 + 12) = 2081;
    sub_100E9056C(&qword_101696930, 255, &type metadata accessor for UUID);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v28 = v10;
    v15 = v14;
    (*(v8 + 8))(v7, v9);
    v16 = sub_1000136BC(v13, v15, &v30);

    *(v11 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v3, v4, "OwnerPeerTrust %{private,mask.hash}s state changed to .acknowledged", v11, 0x16u);
    sub_100007BAC(v12);

    v17 = v28;
  }

  else
  {
    v18 = *(v0 + 176);

    (*(v8 + 8))(v7, v9);
    v17 = v10;
  }

  sub_10000B3A8(v17, &qword_1016975C8, &qword_10138C1F0);
  sub_100E90398(*(v0 + 64), type metadata accessor for OwnerPeerTrust);
  v20 = *(v0 + 112);
  v19 = *(v0 + 120);
  v22 = *(v0 + 96);
  v21 = *(v0 + 104);
  v23 = *(v0 + 64);
  v24 = *(v0 + 40);
  v25 = *(v0 + 24);

  v26 = *(v0 + 8);

  return v26();
}

uint64_t sub_100E8B164()
{
  v1 = *(v0 + 232);

  return _swift_task_switch(sub_100E8B1CC, 0, 0);
}

uint64_t sub_100E8B1CC()
{
  v1 = v0[22];
  v2 = v0[8];
  v3 = v0[3];

  sub_10000B3A8(v3, &qword_1016975C8, &qword_10138C1F0);
  sub_100E90398(v2, type metadata accessor for OwnerPeerTrust);
  v4 = v0[31];
  v5 = v0[16];
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = _convertErrorToNSError(_:)();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, v6, v7, "Error in handlePeerTrustAck: %@", v8, 0xCu);
    sub_10000B3A8(v9, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  v12 = v0[14];
  v11 = v0[15];
  v14 = v0[12];
  v13 = v0[13];
  v15 = v0[8];
  v16 = v0[5];
  v17 = v0[3];

  v18 = v0[1];

  return v18();
}

uint64_t sub_100E8B3AC()
{
  v1 = v0[20];

  v2 = v0[23];
  v3 = v0[16];
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
    _os_log_impl(&_mh_execute_header, v4, v5, "Error in handlePeerTrustAck: %@", v6, 0xCu);
    sub_10000B3A8(v7, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  v10 = v0[14];
  v9 = v0[15];
  v12 = v0[12];
  v11 = v0[13];
  v13 = v0[8];
  v14 = v0[5];
  v15 = v0[3];

  v16 = v0[1];

  return v16();
}

uint64_t sub_100E8B550(uint64_t a1)
{
  v3 = *v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v15 - v9;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  (*(v5 + 16))(&v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  v12 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *(v13 + 24) = 0;
  (*(v5 + 32))(v13 + v12, &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  *(v13 + ((v6 + v12 + 7) & 0xFFFFFFFFFFFFFFF8)) = v3;
  sub_10025EDD4(0, 0, v10, &unk_1013EBD98, v13);
}

uint64_t sub_100E8B778()
{
  v14 = v0;
  if (qword_101694F20 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_10177C1A0);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 16);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136315138;
    sub_10058BB20();
    v8 = Set.description.getter();
    v10 = sub_1000136BC(v8, v9, &v13);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "Messaging accounts changed. Accounts: %s", v6, 0xCu);
    sub_100007BAC(v7);
  }

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_100E8B93C()
{
  v14 = v0;
  if (qword_101694F20 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_10177C1A0);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 16);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136315138;
    sub_100D48DC8();
    v8 = Set.description.getter();
    v10 = sub_1000136BC(v8, v9, &v13);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "Messaging devices changed. Devices: %s", v6, 0xCu);
    sub_100007BAC(v7);
  }

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_100E8BAE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *v6;
  v13 = swift_task_alloc();
  *(v7 + 16) = v13;
  *v13 = v7;
  v13[1] = sub_100014744;

  return sub_100E8FB98(a3, a4, a5, a6);
}

uint64_t sub_100E8BBB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  v14 = a6[1];
  v15 = a6[2];
  v16 = a6[3];
  v17 = *v8;
  v18 = *a6;
  v19 = swift_task_alloc();
  *(v9 + 16) = v19;
  *v19 = v9;
  v19[1] = sub_100014744;

  return sub_100E8FEF0(a3, a4, a5, v18, v14, v15, v16, a7, a8);
}

uint64_t sub_100E8BCB4(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100014744;

  return sub_100E8B758(a1);
}

uint64_t sub_100E8BD4C(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100014744;

  return sub_100E8B91C(a1);
}

uint64_t sub_100E8BE74()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177C1B8);
  sub_1000076D4(v0, qword_10177C1B8);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100E8BEF8(uint64_t a1)
{
  v1[10] = a1;
  v2 = type metadata accessor for PeerCommunicationIdentifier();
  v1[11] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();

  return _swift_task_switch(sub_100E8BFEC, 0, 0);
}

uint64_t sub_100E8BFEC()
{
  v77 = v0;
  if (qword_101694F20 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 160);
  v2 = *(v0 + 80);
  v3 = type metadata accessor for Logger();
  *(v0 + 168) = sub_1000076D4(v3, qword_10177C1A0);
  sub_100E90330(v2, v1, type metadata accessor for PeerCommunicationIdentifier);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 160);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v76[0] = v9;
    *v8 = 136315138;
    v10 = sub_100988F40();
    v12 = v11;
    sub_100E90398(v7, type metadata accessor for PeerCommunicationIdentifier);
    v13 = sub_1000136BC(v10, v12, v76);

    *(v8 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v4, v5, "Using MessagingQueryController to query %s.", v8, 0xCu);
    sub_100007BAC(v9);
  }

  else
  {

    sub_100E90398(v7, type metadata accessor for PeerCommunicationIdentifier);
  }

  v14 = *(v0 + 88);
  sub_100E90330(*(v0 + 80), *(v0 + 152), type metadata accessor for PeerCommunicationIdentifier);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload < 3)
    {
      sub_100E90398(*(v0 + 152), type metadata accessor for PeerCommunicationIdentifier);
LABEL_17:
      sub_100E90330(*(v0 + 80), *(v0 + 144), type metadata accessor for PeerCommunicationIdentifier);
      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.default.getter();
      v24 = os_log_type_enabled(v22, v23);
      v25 = *(v0 + 144);
      if (v24)
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v76[0] = v27;
        *v26 = 136315138;
        v28 = sub_100988F40();
        v30 = v29;
        sub_100E90398(v25, type metadata accessor for PeerCommunicationIdentifier);
        v31 = sub_1000136BC(v28, v30, v76);

        *(v26 + 4) = v31;
        _os_log_impl(&_mh_execute_header, v22, v23, "MessagingQueryController does not support %s type.", v26, 0xCu);
        sub_100007BAC(v27);
      }

      else
      {

        sub_100E90398(v25, type metadata accessor for PeerCommunicationIdentifier);
      }

      sub_100E8FB24();
      swift_allocError();
      *v32 = 2;
      swift_willThrow();
      v34 = *(v0 + 152);
      v33 = *(v0 + 160);
      v36 = *(v0 + 136);
      v35 = *(v0 + 144);
      v38 = *(v0 + 120);
      v37 = *(v0 + 128);
      v40 = *(v0 + 104);
      v39 = *(v0 + 112);
      v41 = *(v0 + 96);

      v42 = *(v0 + 8);

      return v42();
    }

    v43 = *(v0 + 152);
    v44 = *v43;
    v45 = *(v43 + 1);
    v46 = *(v43 + 2);
    sub_100E90330(*(v0 + 80), *(v0 + 136), type metadata accessor for PeerCommunicationIdentifier);

    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.default.getter();

    v49 = os_log_type_enabled(v47, v48);
    v50 = *(v0 + 136);
    v75 = v44;
    if (v49)
    {
      v51 = swift_slowAlloc();
      v76[0] = swift_slowAlloc();
      *v51 = 136315394;
      v52 = sub_100988F40();
      v54 = v53;
      sub_100E90398(v50, type metadata accessor for PeerCommunicationIdentifier);
      v55 = sub_1000136BC(v52, v54, v76);

      *(v51 + 4) = v55;
      *(v51 + 12) = 2080;

      v56 = v45;
      v57 = sub_1000136BC(v45, v46, v76);
      v58 = v46;

      *(v51 + 14) = v57;
      _os_log_impl(&_mh_execute_header, v47, v48, "MessagingQueryController found %s destination %s.", v51, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
      v58 = v46;
      v56 = v45;

      sub_100E90398(v50, type metadata accessor for PeerCommunicationIdentifier);
    }

    v74 = v56;
    v63 = v58;
    goto LABEL_31;
  }

  if (EnumCaseMultiPayload > 5)
  {
    if (EnumCaseMultiPayload == 6)
    {
      goto LABEL_17;
    }

    v74 = 0;
    v75 = 0;
    v63 = 0;
LABEL_31:
    v65 = *(v0 + 152);
    v64 = *(v0 + 160);
    v67 = *(v0 + 136);
    v66 = *(v0 + 144);
    v69 = *(v0 + 120);
    v68 = *(v0 + 128);
    v71 = *(v0 + 104);
    v70 = *(v0 + 112);
    v72 = *(v0 + 96);

    v73 = *(v0 + 8);

    return v73(v75, v74, v63);
  }

  if (EnumCaseMultiPayload == 4)
  {
    v16 = *(v0 + 152);
    v17 = *v16;
    *(v0 + 336) = *v16;
    v18 = *(v16 + 8);
    *(v0 + 176) = v18;
    v19 = *(v16 + 16);
    *(v0 + 184) = v19;
    *(v0 + 192) = *(v16 + 24);
    *(v0 + 200) = *(v16 + 32);
    if (qword_1016944B8 != -1)
    {
      swift_once();
    }

    v20 = swift_task_alloc();
    *(v0 + 208) = v20;
    *v20 = v0;
    v20[1] = sub_100E8C860;

    return sub_101269AA4(v17, v18, v19);
  }

  else
  {
    v59 = *(v0 + 152);
    *(v0 + 240) = *v59;
    *(v0 + 248) = *(v59 + 8);
    *(v0 + 337) = *(v59 + 16);
    *(v0 + 256) = *(v59 + 24);
    *(v0 + 264) = *(v59 + 32);
    *(v0 + 272) = *(v59 + 40);
    *(v0 + 280) = *(v59 + 48);
    v60 = async function pointer to unsafeBlocking<A>(context:_:)[1];
    v61 = swift_task_alloc();
    *(v0 + 288) = v61;
    v62 = sub_1000BC4D4(&qword_1016BA708, &qword_1013EBDD0);
    *v61 = v0;
    v61[1] = sub_100E8CE88;

    return unsafeBlocking<A>(context:_:)(v0 + 56, 0xD000000000000010, 0x80000001013EBBC0, sub_100E89710, 0, v62);
  }
}

uint64_t sub_100E8C860(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 208);
  v10 = *v3;
  v4[27] = a1;
  v4[28] = a2;
  v4[29] = v2;

  if (v2)
  {
    v6 = v4[25];
    v7 = v4[23];

    v8 = sub_100E8CDB4;
  }

  else
  {
    v8 = sub_100E8C98C;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_100E8C98C()
{
  v51 = v0;
  v1 = *(v0 + 224);
  if (!v1)
  {
    v6 = *(v0 + 200);

    goto LABEL_9;
  }

  if (*(v0 + 192) != *(v0 + 216) || v1 != *(v0 + 200))
  {
    v3 = *(v0 + 200);
    v4 = *(v0 + 224);
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      goto LABEL_12;
    }

LABEL_9:
    v7 = *(v0 + 184);
    v8 = *(v0 + 168);
    v9 = *(v0 + 120);
    v10 = *(v0 + 80);

    sub_100E90330(v10, v9, type metadata accessor for PeerCommunicationIdentifier);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    v13 = os_log_type_enabled(v11, v12);
    v14 = *(v0 + 120);
    if (v13)
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v50 = v16;
      *v15 = 136315138;
      v17 = sub_100988F40();
      v19 = v18;
      sub_100E90398(v14, type metadata accessor for PeerCommunicationIdentifier);
      v20 = sub_1000136BC(v17, v19, &v50);

      *(v15 + 4) = v20;
      _os_log_impl(&_mh_execute_header, v11, v12, "MessagingQueryController cannot reach %s because the correlation id changed.", v15, 0xCu);
      sub_100007BAC(v16);
    }

    else
    {

      sub_100E90398(v14, type metadata accessor for PeerCommunicationIdentifier);
    }

    v35 = 0;
    v48 = 0;
    v49 = 0;
    goto LABEL_18;
  }

  v21 = *(v0 + 224);

LABEL_12:
  v22 = *(v0 + 184);
  v23 = *(v0 + 168);
  sub_100E90330(*(v0 + 80), *(v0 + 128), type metadata accessor for PeerCommunicationIdentifier);

  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v24, v25))
  {
    v27 = *(v0 + 176);
    v26 = *(v0 + 184);
    v28 = *(v0 + 128);
    v29 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    *v29 = 136315394;
    v30 = sub_100988F40();
    v32 = v31;
    sub_100E90398(v28, type metadata accessor for PeerCommunicationIdentifier);
    v33 = sub_1000136BC(v30, v32, &v50);

    *(v29 + 4) = v33;
    *(v29 + 12) = 2080;

    v34 = sub_1000136BC(v27, v26, &v50);

    *(v29 + 14) = v34;
    _os_log_impl(&_mh_execute_header, v24, v25, "MessagingQueryController found %s ids destination %s.", v29, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v36 = *(v0 + 128);

    sub_100E90398(v36, type metadata accessor for PeerCommunicationIdentifier);
  }

  v48 = *(v0 + 184);
  v49 = *(v0 + 176);
  v35 = *(v0 + 336);
LABEL_18:
  v38 = *(v0 + 152);
  v37 = *(v0 + 160);
  v40 = *(v0 + 136);
  v39 = *(v0 + 144);
  v42 = *(v0 + 120);
  v41 = *(v0 + 128);
  v43 = *(v0 + 104);
  v44 = *(v0 + 112);
  v45 = *(v0 + 96);

  v46 = *(v0 + 8);

  return v46(v35, v49, v48);
}

uint64_t sub_100E8CDB4()
{
  v1 = v0[29];
  v3 = v0[19];
  v2 = v0[20];
  v5 = v0[17];
  v4 = v0[18];
  v7 = v0[15];
  v6 = v0[16];
  v9 = v0[13];
  v8 = v0[14];
  v10 = v0[12];

  v11 = v0[1];

  return v11();
}

uint64_t sub_100E8CE88()
{
  v2 = *v1;
  v3 = *(*v1 + 288);
  v9 = *v1;
  *(*v1 + 296) = v0;

  if (v0)
  {
    v4 = v2[35];
    v5 = v2[33];
    v6 = v2[31];

    v7 = sub_100E8DBFC;
  }

  else
  {
    v7 = sub_100E8CFC4;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100E8CFC4()
{
  v71 = v0;
  v1 = *(v0 + 56);
  if ((v1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_100D4F6A8();
    sub_100E9056C(&qword_1016A4758, 255, sub_100D4F6A8);
    Set.Iterator.init(_cocoa:)();
    v1 = *(v0 + 16);
    v2 = *(v0 + 24);
    v3 = *(v0 + 32);
    v4 = *(v0 + 40);
    v5 = *(v0 + 48);
  }

  else
  {
    v6 = -1 << *(v1 + 32);
    v2 = v1 + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(v1 + 56);

    v4 = 0;
  }

  v65 = v3;
  v9 = (v3 + 64) >> 6;
  while (1)
  {
    if (v1 < 0)
    {
      v15 = __CocoaSet.Iterator.next()();
      if (!v15 || (*(v0 + 72) = v15, sub_100D4F6A8(), swift_dynamicCast(), v14 = *(v0 + 64), v12 = v4, v13 = v5, !v14))
      {
LABEL_25:
        v26 = *(v0 + 248);

        sub_1000128F8();

        goto LABEL_26;
      }
    }

    else
    {
      v10 = v4;
      v11 = v5;
      v12 = v4;
      if (!v5)
      {
        while (1)
        {
          v12 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
            break;
          }

          if (v12 >= v9)
          {
            goto LABEL_25;
          }

          v11 = *(v2 + 8 * v12);
          ++v10;
          if (v11)
          {
            goto LABEL_14;
          }
        }

        __break(1u);
        goto LABEL_41;
      }

LABEL_14:
      v13 = (v11 - 1) & v11;
      v14 = *(*(v1 + 48) + ((v12 << 9) | (8 * __clz(__rbit64(v11)))));
      if (!v14)
      {
        goto LABEL_25;
      }
    }

    v16 = [v14 altDSID];
    if (!v16)
    {
      goto LABEL_8;
    }

    v17 = v13;
    v66 = *(v0 + 240);
    v68 = *(v0 + 248);
    v18 = v16;
    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;

    if (v19 == v66 && v21 == v68)
    {
      break;
    }

    v23 = *(v0 + 240);
    v24 = *(v0 + 248);
    v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v13 = v17;
    if (v25)
    {
      goto LABEL_31;
    }

LABEL_8:

    v4 = v12;
    v5 = v13;
  }

LABEL_31:
  sub_1000128F8();
  v32 = *(v0 + 248);

  v33 = [v14 appleID];
  if (!v33 || (v34 = v33, static String._unconditionallyBridgeFromObjectiveC(_:)(), v34, _s12searchpartyd20MessagingDestinationV6stringACSgSS_tcfC_0(), !v37))
  {

LABEL_26:
    if (qword_1016944B8 == -1)
    {
LABEL_27:
      v27 = swift_task_alloc();
      *(v0 + 304) = v27;
      *v27 = v0;
      v27[1] = sub_100E8D5CC;
      v28 = *(v0 + 256);
      v29 = *(v0 + 264);
      v30 = *(v0 + 337);

      return sub_101269AA4(v30, v28, v29);
    }

LABEL_41:
    swift_once();
    goto LABEL_27;
  }

  v38 = v36;
  v39 = v37;
  v69 = v35;
  v40 = *(v0 + 280);
  v41 = *(v0 + 264);
  v42 = *(v0 + 168);
  v43 = *(v0 + 112);
  v44 = *(v0 + 80);

  sub_100E90330(v44, v43, type metadata accessor for PeerCommunicationIdentifier);

  v45 = Logger.logObject.getter();
  v46 = static os_log_type_t.default.getter();

  v47 = os_log_type_enabled(v45, v46);
  v48 = *(v0 + 112);
  v67 = v38;
  if (v47)
  {
    v49 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    *v49 = 136315394;
    v50 = sub_100988F40();
    v52 = v51;
    sub_100E90398(v48, type metadata accessor for PeerCommunicationIdentifier);
    v53 = sub_1000136BC(v50, v52, &v70);

    *(v49 + 4) = v53;
    *(v49 + 12) = 2080;

    v54 = sub_1000136BC(v38, v39, &v70);

    *(v49 + 14) = v54;
    _os_log_impl(&_mh_execute_header, v45, v46, "MessagingQueryController found %s is a family member %s.", v49, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_100E90398(v48, type metadata accessor for PeerCommunicationIdentifier);
  }

  v56 = *(v0 + 152);
  v55 = *(v0 + 160);
  v58 = *(v0 + 136);
  v57 = *(v0 + 144);
  v60 = *(v0 + 120);
  v59 = *(v0 + 128);
  v62 = *(v0 + 104);
  v61 = *(v0 + 112);
  v63 = *(v0 + 96);

  v64 = *(v0 + 8);

  return v64(v69, v67, v39);
}

uint64_t sub_100E8D5CC(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 304);
  v10 = *v3;
  v4[39] = a1;
  v4[40] = a2;
  v4[41] = v2;

  if (v2)
  {
    v6 = v4[35];
    v7 = v4[33];

    v8 = sub_100E8DB28;
  }

  else
  {
    v8 = sub_100E8D6F8;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_100E8D6F8()
{
  v52 = v0;
  v1 = *(v0 + 320);
  if (!v1)
  {
    v7 = *(v0 + 264);

    v6 = 280;
    goto LABEL_9;
  }

  if (*(v0 + 272) == *(v0 + 312) && v1 == *(v0 + 280))
  {
    v22 = *(v0 + 280);

    goto LABEL_12;
  }

  v3 = *(v0 + 280);
  v4 = *(v0 + 320);
  v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v5)
  {
LABEL_12:
    v23 = *(v0 + 264);
    v24 = *(v0 + 168);
    sub_100E90330(*(v0 + 80), *(v0 + 96), type metadata accessor for PeerCommunicationIdentifier);

    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v25, v26))
    {
      v28 = *(v0 + 256);
      v27 = *(v0 + 264);
      v29 = *(v0 + 96);
      v30 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      *v30 = 136315394;
      v31 = sub_100988F40();
      v33 = v32;
      sub_100E90398(v29, type metadata accessor for PeerCommunicationIdentifier);
      v34 = sub_1000136BC(v31, v33, &v51);

      *(v30 + 4) = v34;
      *(v30 + 12) = 2080;

      v35 = sub_1000136BC(v28, v27, &v51);

      *(v30 + 14) = v35;
      _os_log_impl(&_mh_execute_header, v25, v26, "MessagingQueryController found %s is no longer a family member %s.", v30, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
      v37 = *(v0 + 96);

      sub_100E90398(v37, type metadata accessor for PeerCommunicationIdentifier);
    }

    v49 = *(v0 + 264);
    v50 = *(v0 + 256);
    v36 = *(v0 + 337);
    goto LABEL_18;
  }

  v6 = 264;
LABEL_9:
  v8 = *(v0 + v6);
  v9 = *(v0 + 168);
  v10 = *(v0 + 104);
  v11 = *(v0 + 80);

  sub_100E90330(v11, v10, type metadata accessor for PeerCommunicationIdentifier);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  v14 = os_log_type_enabled(v12, v13);
  v15 = *(v0 + 104);
  if (v14)
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v51 = v17;
    *v16 = 136315138;
    v18 = sub_100988F40();
    v20 = v19;
    sub_100E90398(v15, type metadata accessor for PeerCommunicationIdentifier);
    v21 = sub_1000136BC(v18, v20, &v51);

    *(v16 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v12, v13, "MessagingQueryController cannot reach family member %s.", v16, 0xCu);
    sub_100007BAC(v17);
  }

  else
  {

    sub_100E90398(v15, type metadata accessor for PeerCommunicationIdentifier);
  }

  v36 = 0;
  v49 = 0;
  v50 = 0;
LABEL_18:
  v39 = *(v0 + 152);
  v38 = *(v0 + 160);
  v41 = *(v0 + 136);
  v40 = *(v0 + 144);
  v43 = *(v0 + 120);
  v42 = *(v0 + 128);
  v44 = *(v0 + 104);
  v45 = *(v0 + 112);
  v46 = *(v0 + 96);

  v47 = *(v0 + 8);

  return v47(v36, v50, v49);
}

uint64_t sub_100E8DB28()
{
  v1 = v0[41];
  v3 = v0[19];
  v2 = v0[20];
  v5 = v0[17];
  v4 = v0[18];
  v7 = v0[15];
  v6 = v0[16];
  v9 = v0[13];
  v8 = v0[14];
  v10 = v0[12];

  v11 = v0[1];

  return v11();
}

uint64_t sub_100E8DBFC()
{
  v1 = v0[37];
  v3 = v0[19];
  v2 = v0[20];
  v5 = v0[17];
  v4 = v0[18];
  v7 = v0[15];
  v6 = v0[16];
  v9 = v0[13];
  v8 = v0[14];
  v10 = v0[12];

  v11 = v0[1];

  return v11();
}

uint64_t sub_100E8DCD0(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 32) = a4;
  *(v5 + 40) = a5;
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;
  *(v5 + 216) = a1;
  v7 = *(*(sub_1000BC4D4(&qword_1016A4738, &qword_1013B10B0) - 8) + 64) + 15;
  *(v5 + 48) = swift_task_alloc();
  v8 = type metadata accessor for CorrelationIdentifierMap();
  *(v5 + 56) = v8;
  v9 = *(v8 - 8);
  *(v5 + 64) = v9;
  v10 = *(v9 + 64) + 15;
  *(v5 + 72) = swift_task_alloc();
  v11 = *(*(type metadata accessor for PeerCommunicationIdentifier() - 8) + 64) + 15;
  *(v5 + 80) = swift_task_alloc();
  *(v5 + 88) = swift_task_alloc();
  v12 = swift_task_alloc();
  *(v5 + 96) = v12;
  *v12 = v5;
  v12[1] = sub_100E8DE54;

  return sub_100E8BEF8(a4);
}

uint64_t sub_100E8DE54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v6 = *(*v4 + 96);
  v9 = *v4;
  v5[13] = a1;
  v5[14] = a2;
  v5[15] = a3;
  v5[16] = v3;

  if (v3)
  {
    v7 = sub_100E8E9FC;
  }

  else
  {
    v7 = sub_100E8DF6C;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100E8DF6C()
{
  v90 = v0;
  v1 = *(v0 + 120);
  p_weak_ivar_lyt = &BeaconKeyManager.weak_ivar_lyt;
  if (v1)
  {
    v3 = *(v0 + 56);
    v4 = *(v0 + 64);
    v5 = *(v0 + 48);
    v6 = *(v0 + 104);
    sub_100E902C0(*(v0 + 40), v5);
    if ((*(v4 + 48))(v5, 1, v3) == 1)
    {
      sub_10000B3A8(*(v0 + 48), &qword_1016A4738, &qword_1013B10B0);
      if (qword_101694F20 != -1)
      {
        swift_once();
      }

      v7 = *(v0 + 24);
      v8 = type metadata accessor for Logger();
      sub_1000076D4(v8, qword_10177C1A0);

      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v9, v10))
      {
        v11 = *(v0 + 112);
        v12 = v6;
        v6 = *(v0 + 16);
        v13 = *(v0 + 24);
        v14 = swift_slowAlloc();
        v89[0] = swift_slowAlloc();
        *v14 = 136315394;
        v15 = v6;
        LOBYTE(v6) = v12;
        *(v14 + 4) = sub_1000136BC(v15, v13, v89);
        *(v14 + 12) = 2080;

        v16 = sub_1000136BC(v11, v1, v89);

        *(v14 + 14) = v16;
        p_weak_ivar_lyt = (&BeaconKeyManager + 56);
        _os_log_impl(&_mh_execute_header, v9, v10, "No map provided while looking up messaging destination %s and peer trust %s.", v14, 0x16u);
        swift_arrayDestroy();
      }

LABEL_24:
      if (p_weak_ivar_lyt[484] != -1)
      {
        swift_once();
      }

      v58 = *(v0 + 24);
      v59 = type metadata accessor for Logger();
      *(v0 + 136) = sub_1000076D4(v59, qword_10177C1A0);

      v60 = Logger.logObject.getter();
      v61 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v60, v61))
      {
        v63 = *(v0 + 16);
        v62 = *(v0 + 24);
        v64 = swift_slowAlloc();
        v65 = swift_slowAlloc();
        v89[0] = v65;
        *v64 = 136315138;
        *(v64 + 4) = sub_1000136BC(v63, v62, v89);
        _os_log_impl(&_mh_execute_header, v60, v61, "Using fallback logic to determine match for %s.", v64, 0xCu);
        sub_100007BAC(v65);
      }

      if (qword_1016944B8 != -1)
      {
        swift_once();
      }

      *(v0 + 144) = qword_101699690;
      v66 = swift_task_alloc();
      *(v0 + 152) = v66;
      *v66 = v0;
      v66[1] = sub_100E8ECA4;
      v67 = *(v0 + 112);

      return sub_101269AA4(v6, v67, v1);
    }

    v30 = *(v0 + 128);
    v31 = *(v0 + 112);
    (*(*(v0 + 64) + 32))(*(v0 + 72), *(v0 + 48), *(v0 + 56));
    v32 = sub_1004F0890(v6, v31, v1);
    if (v30)
    {
      if (qword_101694F20 != -1)
      {
        swift_once();
      }

      v39 = *(v0 + 24);
      v40 = type metadata accessor for Logger();
      sub_1000076D4(v40, qword_10177C1A0);

      swift_errorRetain();
      v41 = Logger.logObject.getter();
      v42 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v41, v42))
      {
        v83 = *(v0 + 112);
        v84 = *(v0 + 64);
        v85 = *(v0 + 56);
        v86 = *(v0 + 72);
        v43 = *(v0 + 16);
        v82 = *(v0 + 24);
        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        v89[0] = swift_slowAlloc();
        *v44 = 138543874;
        swift_errorRetain();
        v46 = _swift_stdlib_bridgeErrorToNSError();
        *(v44 + 4) = v46;
        *v45 = v46;
        *(v44 + 12) = 2080;
        *(v44 + 14) = sub_1000136BC(v43, v82, v89);
        *(v44 + 22) = 2080;

        v47 = sub_1000136BC(v83, v1, v89);

        *(v44 + 24) = v47;
        _os_log_impl(&_mh_execute_header, v41, v42, "Map lookup error: %{public}@ for messaging destination %s peer trust %s.", v44, 0x20u);
        sub_10000B3A8(v45, &qword_10169BB30, &unk_10138B3C0);

        swift_arrayDestroy();

        p_weak_ivar_lyt = (&BeaconKeyManager + 56);

        (*(v84 + 8))(v86, v85);
      }

      else
      {
        v56 = *(v0 + 64);
        v55 = *(v0 + 72);
        v57 = *(v0 + 56);

        (*(v56 + 8))(v55, v57);
      }

      goto LABEL_24;
    }

    v34 = v33;
    v35 = v32;
    v36 = *(v0 + 72);
    v37 = sub_1004F0890(*(v0 + 216), *(v0 + 16), *(v0 + 24));
    if (v35 == v37 && v34 == v38)
    {

LABEL_37:
      (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));

      v48 = 1;
      goto LABEL_20;
    }

    v68 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v68)
    {
      goto LABEL_37;
    }

    if (qword_101694F20 != -1)
    {
      swift_once();
    }

    v69 = *(v0 + 24);
    v70 = type metadata accessor for Logger();
    sub_1000076D4(v70, qword_10177C1A0);

    v71 = Logger.logObject.getter();
    v72 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v71, v72))
    {
      v73 = *(v0 + 112);
      v74 = *(v0 + 64);
      v87 = *(v0 + 56);
      v88 = *(v0 + 72);
      v75 = *(v0 + 16);
      v76 = *(v0 + 24);
      v77 = swift_slowAlloc();
      v89[0] = swift_slowAlloc();
      *v77 = 136315394;
      *(v77 + 4) = sub_1000136BC(v75, v76, v89);
      *(v77 + 12) = 2080;
      v78 = sub_1000136BC(v73, v1, v89);

      *(v77 + 14) = v78;
      _os_log_impl(&_mh_execute_header, v71, v72, "Did not find matching correlation identifier for messaging destination %s and peer trust %s in map.", v77, 0x16u);
      swift_arrayDestroy();

      (*(v74 + 8))(v88, v87);
    }

    else
    {
      v80 = *(v0 + 64);
      v79 = *(v0 + 72);
      v81 = *(v0 + 56);

      (*(v80 + 8))(v79, v81);
    }
  }

  else
  {
    if (qword_101694F20 != -1)
    {
      swift_once();
    }

    v17 = *(v0 + 80);
    v18 = *(v0 + 32);
    v19 = type metadata accessor for Logger();
    sub_1000076D4(v19, qword_10177C1A0);
    sub_100E90330(v18, v17, type metadata accessor for PeerCommunicationIdentifier);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();
    v22 = os_log_type_enabled(v20, v21);
    v23 = *(v0 + 80);
    if (v22)
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v89[0] = v25;
      *v24 = 136315138;
      v26 = sub_100988F40(v25);
      v28 = v27;
      sub_100E90398(v23, type metadata accessor for PeerCommunicationIdentifier);
      v29 = sub_1000136BC(v26, v28, v89);

      *(v24 + 4) = v29;
      _os_log_impl(&_mh_execute_header, v20, v21, "Did not find messagingDestination for %s.", v24, 0xCu);
      sub_100007BAC(v25);
    }

    else
    {

      sub_100E90398(v23, type metadata accessor for PeerCommunicationIdentifier);
    }
  }

  v48 = 0;
LABEL_20:
  v50 = *(v0 + 80);
  v49 = *(v0 + 88);
  v51 = *(v0 + 72);
  v52 = *(v0 + 48);

  v53 = *(v0 + 8);

  return v53(v48);
}

uint64_t sub_100E8E9FC()
{
  v26 = v0;
  if (qword_101694F20 != -1)
  {
    swift_once();
  }

  v1 = v0[16];
  v2 = v0[11];
  v3 = v0[4];
  v4 = type metadata accessor for Logger();
  sub_1000076D4(v4, qword_10177C1A0);
  sub_100E90330(v3, v2, type metadata accessor for PeerCommunicationIdentifier);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[16];
  v9 = v0[11];
  if (v7)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v25 = v12;
    *v10 = 136315394;
    v13 = sub_100988F40(v12);
    v15 = v14;
    sub_100E90398(v9, type metadata accessor for PeerCommunicationIdentifier);
    v16 = sub_1000136BC(v13, v15, &v25);

    *(v10 + 4) = v16;
    *(v10 + 12) = 2114;
    swift_errorRetain();
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v17;
    *v11 = v17;
    _os_log_impl(&_mh_execute_header, v5, v6, "Error finding messaging destination for %s, %{public}@.", v10, 0x16u);
    sub_10000B3A8(v11, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v12);
  }

  else
  {
    v18 = v0[16];

    sub_100E90398(v9, type metadata accessor for PeerCommunicationIdentifier);
  }

  v20 = v0[10];
  v19 = v0[11];
  v21 = v0[9];
  v22 = v0[6];

  v23 = v0[1];

  return v23(0);
}

uint64_t sub_100E8ECA4(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 152);
  v8 = *v3;
  v4[20] = a1;
  v4[21] = a2;
  v4[22] = v2;

  if (v2)
  {
    v6 = sub_100E8F0F0;
  }

  else
  {
    v6 = sub_100E8EDBC;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100E8EDBC()
{
  v23 = v0;
  if (*(v0 + 168))
  {
    v1 = swift_task_alloc();
    *(v0 + 184) = v1;
    *v1 = v0;
    v1[1] = sub_100E8EFD0;
    v2 = *(v0 + 144);
    v3 = *(v0 + 16);
    v4 = *(v0 + 24);
    v5 = *(v0 + 216);

    return sub_101269AA4(v5, v3, v4);
  }

  else
  {
    v7 = *(v0 + 136);
    v8 = *(v0 + 120);

    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();

    v11 = os_log_type_enabled(v9, v10);
    v12 = *(v0 + 120);
    if (v11)
    {
      v13 = *(v0 + 112);
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v22 = v15;
      *v14 = 136315138;
      v16 = sub_1000136BC(v13, v12, &v22);

      *(v14 + 4) = v16;
      _os_log_impl(&_mh_execute_header, v9, v10, "Did not find correlation identifier for peer trust %s.", v14, 0xCu);
      sub_100007BAC(v15);
    }

    else
    {
    }

    v18 = *(v0 + 80);
    v17 = *(v0 + 88);
    v19 = *(v0 + 72);
    v20 = *(v0 + 48);

    v21 = *(v0 + 8);

    return v21(0);
  }
}

uint64_t sub_100E8EFD0(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 184);
  v9 = *v3;
  v4[24] = a1;
  v4[25] = a2;
  v4[26] = v2;

  if (v2)
  {
    v6 = v4[21];

    v7 = sub_100E8F668;
  }

  else
  {
    v7 = sub_100E8F348;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100E8F0F0()
{
  v23 = v0;
  v1 = v0[22];
  v2 = v0[17];
  v3 = v0[15];
  v4 = v0[3];

  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[15];
    v21 = v0[14];
    v8 = v0[2];
    v9 = v0[3];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v10 = 136315650;
    *(v10 + 4) = sub_1000136BC(v8, v9, &v22);
    *(v10 + 12) = 2080;
    v12 = sub_1000136BC(v21, v7, &v22);

    *(v10 + 14) = v12;
    *(v10 + 22) = 2114;
    swift_errorRetain();
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 24) = v13;
    *v11 = v13;
    _os_log_impl(&_mh_execute_header, v5, v6, "Correlation identifier messaging destination %s peer trust %s lookup error: %{public}@.", v10, 0x20u);
    sub_10000B3A8(v11, &qword_10169BB30, &unk_10138B3C0);

    swift_arrayDestroy();
  }

  else
  {
    v14 = v0[15];
  }

  v16 = v0[10];
  v15 = v0[11];
  v17 = v0[9];
  v18 = v0[6];

  v19 = v0[1];

  return v19(0);
}

uint64_t sub_100E8F348()
{
  v38 = v0;
  v1 = v0[25];
  if (v1)
  {
    if (v0[20] == v0[24] && v0[21] == v1)
    {
      v17 = v0[15];
      v18 = v0[25];
      swift_bridgeObjectRelease_n();
      goto LABEL_11;
    }

    v3 = v0[21];
    v4 = v0[25];
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      v6 = v0[15];
LABEL_11:

      v19 = 1;
      goto LABEL_17;
    }

    v20 = v0[17];
    v21 = v0[15];
    v22 = v0[3];

    v11 = Logger.logObject.getter();
    v23 = static os_log_type_t.debug.getter();

    v24 = os_log_type_enabled(v11, v23);
    v25 = v0[15];
    if (!v24)
    {

      goto LABEL_16;
    }

    v26 = v0[14];
    v28 = v0[2];
    v27 = v0[3];
    v29 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    *v29 = 136315394;
    *(v29 + 4) = sub_1000136BC(v28, v27, &v37);
    *(v29 + 12) = 2080;
    v30 = sub_1000136BC(v26, v25, &v37);

    *(v29 + 14) = v30;
    _os_log_impl(&_mh_execute_header, v11, v23, "The messaging destination %s does not match correlation identifier for peer trust %s.", v29, 0x16u);
    swift_arrayDestroy();

    goto LABEL_14;
  }

  v7 = v0[21];
  v8 = v0[17];
  v9 = v0[15];
  v10 = v0[3];

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v14 = v0[2];
    v13 = v0[3];
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v37 = v16;
    *v15 = 136315138;
    *(v15 + 4) = sub_1000136BC(v14, v13, &v37);
    _os_log_impl(&_mh_execute_header, v11, v12, "Did not find correlation identifier for messaging destination %s.", v15, 0xCu);
    sub_100007BAC(v16);

LABEL_14:
  }

LABEL_16:
  v19 = 0;
LABEL_17:
  v32 = v0[10];
  v31 = v0[11];
  v33 = v0[9];
  v34 = v0[6];

  v35 = v0[1];

  return v35(v19);
}

uint64_t sub_100E8F668()
{
  v23 = v0;
  v1 = v0[26];
  v2 = v0[17];
  v3 = v0[15];
  v4 = v0[3];

  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[15];
    v21 = v0[14];
    v8 = v0[2];
    v9 = v0[3];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v10 = 136315650;
    *(v10 + 4) = sub_1000136BC(v8, v9, &v22);
    *(v10 + 12) = 2080;
    v12 = sub_1000136BC(v21, v7, &v22);

    *(v10 + 14) = v12;
    *(v10 + 22) = 2114;
    swift_errorRetain();
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 24) = v13;
    *v11 = v13;
    _os_log_impl(&_mh_execute_header, v5, v6, "Correlation identifier messaging destination %s peer trust %s lookup error: %{public}@.", v10, 0x20u);
    sub_10000B3A8(v11, &qword_10169BB30, &unk_10138B3C0);

    swift_arrayDestroy();
  }

  else
  {
    v14 = v0[15];
  }

  v16 = v0[10];
  v15 = v0[11];
  v17 = v0[9];
  v18 = v0[6];

  v19 = v0[1];

  return v19(0);
}

uint64_t sub_100E8F8C0()
{
  if (qword_101694FA8 != -1)
  {
    swift_once();
  }

  SynchronousCache.cachedValue<A>(key:computeBlock:)();
  if (v6)
  {
    return 0;
  }

  v1 = objc_opt_self();
  v2 = [v1 sharedInstance];
  v3 = [v2 primaryAuthKitAccount];

  if (!v3)
  {
    return 1;
  }

  v4 = [v1 sharedInstance];
  v5 = [v4 userUnderAgeForAccount:v3];

  return v5;
}

uint64_t sub_100E8FA04(uint64_t a1)
{
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100014650;

  return sub_100E89C00(a1, v6, v7, v1 + v5);
}

unint64_t sub_100E8FB24()
{
  result = qword_1016BD738;
  if (!qword_1016BD738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BD738);
  }

  return result;
}

uint64_t sub_100E8FB98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[3] = a3;
  v5[4] = a4;
  v5[2] = a1;
  v6 = type metadata accessor for UUID();
  v5[5] = v6;
  v7 = *(v6 - 8);
  v5[6] = v7;
  v8 = *(v7 + 64) + 15;
  v5[7] = swift_task_alloc();

  return _swift_task_switch(sub_100E8FC5C, v4, 0);
}

uint64_t sub_100E8FC5C()
{
  v24 = v0;
  if (qword_101694F20 != -1)
  {
    swift_once();
  }

  v2 = v0[6];
  v1 = v0[7];
  v4 = v0[4];
  v3 = v0[5];
  v5 = v0[2];
  v6 = type metadata accessor for Logger();
  sub_1000076D4(v6, qword_10177C1A0);
  (*(v2 + 16))(v1, v5, v3);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  v9 = os_log_type_enabled(v7, v8);
  v11 = v0[6];
  v10 = v0[7];
  v12 = v0[5];
  if (v9)
  {
    v21 = v0[3];
    v22 = v0[4];
    v13 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v13 = 136446723;
    sub_100E9056C(&qword_101696930, 255, &type metadata accessor for UUID);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    (*(v11 + 8))(v10, v12);
    v17 = sub_1000136BC(v14, v16, &v23);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2160;
    *(v13 + 14) = 1752392040;
    *(v13 + 22) = 2081;
    *(v13 + 24) = sub_1000136BC(v21, v22, &v23);
    _os_log_impl(&_mh_execute_header, v7, v8, "Message %{public}s delivered successfully from %{private,mask.hash}s.", v13, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v11 + 8))(v10, v12);
  }

  v18 = v0[7];

  v19 = v0[1];

  return v19();
}

uint64_t sub_100E8FEF0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 72) = v11;
  *(v9 + 80) = v8;
  *(v9 + 56) = a7;
  *(v9 + 64) = a8;
  *(v9 + 40) = a5;
  *(v9 + 48) = a6;
  *(v9 + 88) = a4;
  *(v9 + 24) = a2;
  *(v9 + 32) = a3;
  return _swift_task_switch(sub_100E8FF28, v8, 0);
}

uint64_t sub_100E8FF28()
{
  v36 = v0;
  if (qword_101694F20 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = *(v0 + 32);
  v4 = type metadata accessor for Logger();
  sub_1000076D4(v4, qword_10177C1A0);
  sub_100017D5C(v2, v1);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  sub_100016590(v2, v1);

  if (os_log_type_enabled(v5, v6))
  {
    v8 = *(v0 + 48);
    v7 = *(v0 + 56);
    v9 = *(v0 + 40);
    v33 = *(v0 + 24);
    v34 = *(v0 + 32);
    v10 = *(v0 + 88);
    v11 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    *v11 = 136446723;
    sub_100D47A68(v10, v9, v8, v7);
    v14 = sub_1000136BC(v12, v13, &v35);

    *(v11 + 4) = v14;
    *(v11 + 12) = 2160;
    *(v11 + 14) = 1752392040;
    *(v11 + 22) = 2081;
    *(v11 + 24) = sub_1000136BC(v33, v34, &v35);
    _os_log_impl(&_mh_execute_header, v5, v6, "Message %{public}s received from %{private,mask.hash}s.", v11, 0x20u);
    swift_arrayDestroy();
  }

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v35 = v18;
    *v17 = 136315138;
    type metadata accessor for Transaction();
    result = static Transaction.current.getter();
    if (!result)
    {
      __break(1u);
      return result;
    }

    *(v0 + 16) = result;
    sub_100E9056C(&qword_1016BA4E8, 255, &type metadata accessor for Transaction);
    v20 = dispatch thunk of CustomStringConvertible.description.getter();
    v22 = v21;

    v23 = sub_1000136BC(v20, v22, &v35);

    *(v17 + 4) = v23;
    _os_log_impl(&_mh_execute_header, v15, v16, "txn: %s", v17, 0xCu);
    sub_100007BAC(v18);
  }

  v24 = *(v0 + 80);
  if (*(v24 + 128))
  {
    v26 = *(v0 + 64);
    v25 = *(v0 + 72);
    v28 = *(v0 + 48);
    v27 = *(v0 + 56);
    v29 = *(v0 + 40);
    v30 = *(v0 + 88);
    v31 = *(v24 + 128);

    sub_1010C8C10(v30, v29, v28, v27, v26, v25);
  }

  v32 = *(v0 + 8);

  return v32();
}

uint64_t sub_100E902C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_1016A4738, &qword_1013B10B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100E90330(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100E90398(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100E903F8(void *a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1001BA6C8;

  return sub_100E85040(a1, v5, v4);
}

unint64_t sub_100E904A0()
{
  result = qword_1016BD740;
  if (!qword_1016BD740)
  {
    sub_1000BC580(&qword_1016BA708, &qword_1013EBDD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BD740);
  }

  return result;
}

uint64_t sub_100E90504(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100E9056C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

unint64_t sub_100E905C8()
{
  result = qword_1016BD750;
  if (!qword_1016BD750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BD750);
  }

  return result;
}

uint64_t sub_100E9063C(void *a1)
{
  v2 = v1;
  v4 = sub_1000BC4D4(&unk_1016B0FE0, &unk_101391980);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v26 - v6;
  v8 = sub_1000BC4D4(&qword_1016BD988, &qword_1013EBF58);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v26 - v11;
  v13 = sub_1000BC4D4(&qword_1016BD990, &qword_1013EBF60);
  v14 = *(v13 - 8);
  v27 = v13;
  v28 = v14;
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v26 - v16;
  v29 = a1;

  sub_1000BC4D4(&qword_1016BD998, &qword_1013EBF68);
  sub_1000BC4D4(&qword_1016BD9A0, &qword_1013EBF70);
  sub_1000041A4(&qword_1016BD9A8, &qword_1016BD998, &qword_1013EBF68);
  Publisher.compactMap<A>(_:)();

  v29 = *(v2 + 24);
  v18 = v29;
  v19 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  (*(*(v19 - 8) + 56))(v7, 1, 1, v19);
  sub_1000BC488();
  sub_1000041A4(&qword_1016BD9B0, &qword_1016BD988, &qword_1013EBF58);
  sub_100E92FE0(&qword_1016AF9C0, sub_1000BC488);
  v20 = v18;
  Publisher.receive<A>(on:options:)();
  sub_10000B3A8(v7, &unk_1016B0FE0, &unk_101391980);

  (*(v9 + 8))(v12, v8);
  v21 = swift_allocObject();
  *(v21 + 16) = sub_100E923C8;
  *(v21 + 24) = v2;
  sub_1000041A4(&qword_1016BD9B8, &qword_1016BD990, &qword_1013EBF60);

  v22 = v27;
  v23 = Publisher<>.sink(receiveValue:)();

  (*(v28 + 8))(v17, v22);
  v24 = *(v2 + 40);
  *(v2 + 40) = v23;
}

uint64_t sub_100E90A5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for BeaconKeyManager.KeyCriteria(0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v26 - v12;
  v14 = type metadata accessor for OwnedBeaconRecord();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(a2 + 48);
  swift_unownedRetainStrong();
  v20 = type metadata accessor for BeaconKeyManager.PersistenceInstruction(0);
  sub_100E92F78(a1 + *(v20 + 24), v9, type metadata accessor for BeaconKeyManager.KeyCriteria);
  sub_100AA33AC(v9, v13);

  v21 = type metadata accessor for UUID();
  (*(*(v21 - 8) + 8))(v9, v21);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_10000B3A8(v13, &unk_1016A9A20, &qword_10138B280);
    v22 = sub_1000BC4D4(&qword_1016BD9A0, &qword_1013EBF70);
    return (*(*(v22 - 8) + 56))(a3, 1, 1, v22);
  }

  else
  {
    sub_100E92E80(v13, v18, type metadata accessor for OwnedBeaconRecord);
    v24 = sub_1000BC4D4(&qword_1016BD9A0, &qword_1013EBF70);
    v25 = *(v24 + 48);
    sub_100E92E80(v18, a3, type metadata accessor for OwnedBeaconRecord);
    sub_100E92F78(a1, a3 + v25, type metadata accessor for BeaconKeyManager.PersistenceInstruction);
    return (*(*(v24 - 8) + 56))(a3, 0, 1, v24);
  }
}

uint64_t sub_100E90D54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v15[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = *(a3 + 24);
  *v10 = v11;
  (*(v7 + 104))(v10, enum case for DispatchPredicate.onQueue(_:), v6);
  v12 = v11;
  LOBYTE(v11) = _dispatchPreconditionTest(_:)();
  result = (*(v7 + 8))(v10, v6);
  if (v11)
  {
    v14 = type metadata accessor for Transaction();
    __chkstk_darwin(v14);
    *&v15[-32] = a3;
    *&v15[-24] = a1;
    *&v15[-16] = a2;
    return static Transaction.named<A>(_:with:)();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100E90EEC()
{
  v94 = type metadata accessor for UUID();
  v88 = *(v94 - 8);
  v1 = *(v88 + 64);
  v2 = __chkstk_darwin(v94);
  v90 = &v77 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v80 = &v77 - v4;
  v5 = sub_1000BC4D4(&qword_1016BD978, &qword_1013EBF48);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v9 = &v77 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v77 - v10;
  v86 = type metadata accessor for Date();
  v12 = *(v86 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v86);
  v83 = &v77 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v77 - v16;
  v18 = type metadata accessor for DispatchPredicate();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v22 = (&v77 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = *(v0 + 24);
  *v22 = v23;
  (*(v19 + 104))(v22, enum case for DispatchPredicate.onQueue(_:), v18);
  v24 = v23;
  v25 = _dispatchPreconditionTest(_:)();
  result = (*(v19 + 8))(v22, v18);
  if (v25)
  {
    v85 = v17;
    Date.init()();
    swift_beginAccess();
    v78 = v0;
    v27 = *(v0 + 56);
    v28 = *(v27 + 64);
    v87 = v27 + 64;
    v29 = 1 << *(v27 + 32);
    v30 = -1;
    if (v29 < 64)
    {
      v30 = ~(-1 << v29);
    }

    v31 = v30 & v28;
    v32 = (v29 + 63) >> 6;
    v79 = v88 + 16;
    v92 = (v88 + 32);
    v82 = (v12 + 16);
    v84 = (v12 + 8);
    v89 = (v88 + 8);
    v81 = v27;

    v33 = 0;
    v77 = xmmword_101385D80;
    v34 = v90;
    v91 = v9;
    v93 = v11;
    v35 = v87;
    if (!v31)
    {
      goto LABEL_8;
    }

    do
    {
      while (1)
      {
        v36 = v33;
LABEL_16:
        v39 = __clz(__rbit64(v31));
        v31 &= v31 - 1;
        v40 = v39 | (v36 << 6);
        v41 = v81;
        v42 = v88;
        v43 = v80;
        v44 = v94;
        (*(v88 + 16))(v80, *(v81 + 48) + *(v88 + 72) * v40, v94);
        v45 = *(*(v41 + 56) + 8 * v40);
        v46 = sub_1000BC4D4(&qword_1016BD980, &qword_1013EBF50);
        v47 = *(v46 + 48);
        v48 = *(v42 + 32);
        v9 = v91;
        v48(v91, v43, v44);
        *&v9[v47] = v45;
        (*(*(v46 - 8) + 56))(v9, 0, 1, v46);

        v34 = v90;
        v11 = v93;
LABEL_17:
        sub_100E92350(v9, v11);
        v49 = sub_1000BC4D4(&qword_1016BD980, &qword_1013EBF50);
        if ((*(*(v49 - 8) + 48))(v11, 1, v49) == 1)
        {

          return (*v84)(v85, v86);
        }

        v50 = v9;
        v51 = *&v11[*(v49 + 48)];
        v52 = v94;
        (*v92)(v34, v11, v94);
        v53 = v34;
        v54 = OBJC_IVAR____TtCC12searchpartyd25InstructionEventCoalescerP33_3B6F52EF81004A05C130335557FA073612BufferRecord_timestamp;
        swift_beginAccess();
        v55 = v83;
        v56 = v86;
        (*v82)(v83, v51 + v54, v86);
        Date.timeIntervalSince(_:)();
        v58 = v57;
        (*v84)(v55, v56);
        if (v58 > 60.0)
        {
          break;
        }

        (*v89)(v53, v52);

        v11 = v93;
        v9 = v50;
        v34 = v53;
        v35 = v87;
        if (!v31)
        {
          goto LABEL_8;
        }
      }

      static os_log_type_t.error.getter();
      if (qword_101695038 != -1)
      {
        swift_once();
      }

      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v59 = swift_allocObject();
      *(v59 + 16) = v77;
      v60 = UUID.uuidString.getter();
      v62 = v61;
      *(v59 + 56) = &type metadata for String;
      *(v59 + 64) = sub_100008C00();
      *(v59 + 32) = v60;
      *(v59 + 40) = v62;
      v63 = v90;
      os_log(_:dso:log:_:_:)();

      v64 = v78;
      swift_beginAccess();
      v65 = *(v64 + 56);
      v66 = v63;
      v67 = sub_1000210EC(v63);
      v11 = v93;
      v68 = v94;
      v9 = v91;
      if (v69)
      {
        v70 = v67;
        v71 = v78;
        v72 = *(v78 + 56);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v74 = *(v71 + 56);
        v95 = v74;
        *(v71 + 56) = 0x8000000000000000;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_10100DBCC();
          v74 = v95;
        }

        (*(v88 + 8))(*(v74 + 48) + *(v88 + 72) * v70, v68);
        v75 = *(*(v74 + 56) + 8 * v70);

        sub_100B27F6C(v70, v74);
        *(v71 + 56) = v74;
        v9 = v91;
      }

      swift_endAccess();

      v34 = v66;
      result = (*v89)(v66, v68);
      v35 = v87;
    }

    while (v31);
LABEL_8:
    if (v32 <= v33 + 1)
    {
      v37 = v33 + 1;
    }

    else
    {
      v37 = v32;
    }

    v38 = v37 - 1;
    while (1)
    {
      v36 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        break;
      }

      if (v36 >= v32)
      {
        v76 = sub_1000BC4D4(&qword_1016BD980, &qword_1013EBF50);
        (*(*(v76 - 8) + 56))(v9, 1, 1, v76);
        v31 = 0;
        v33 = v38;
        goto LABEL_17;
      }

      v31 = *(v35 + 8 * v36);
      ++v33;
      if (v31)
      {
        v33 = v36;
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100E91778(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v45 = a1;
  v7 = type metadata accessor for UUID();
  v51 = *(v7 - 8);
  v52 = v7;
  v8 = *(v51 + 64);
  __chkstk_darwin(v7);
  v53 = v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v49 = *(v10 - 8);
  v50 = v10;
  v11 = *(v49 + 64);
  __chkstk_darwin(v10);
  v46 = v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS();
  v47 = *(v13 - 8);
  v48 = v13;
  v14 = *(v47 + 64);
  __chkstk_darwin(v13);
  v44 = v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for OwnedBeaconRecord();
  v43 = *(v16 - 8);
  v17 = *(v43 + 64);
  v18 = *(__chkstk_darwin(v16 - 8) + 28);
  swift_beginAccess();
  v19 = *(a2 + 56);
  v20 = *(v19 + 16);

  if (v20 && (v21 = sub_1000210EC(a3 + v18), (v22 & 1) != 0))
  {
    v23 = *(*(v19 + 56) + 8 * v21);
  }

  else
  {
    v24 = type metadata accessor for InstructionEventCoalescer.BufferRecord();
    v25 = *(v24 + 48);
    v26 = *(v24 + 52);
    v23 = swift_allocObject();
    Date.init()();
    *(v23 + OBJC_IVAR____TtCC12searchpartyd25InstructionEventCoalescerP33_3B6F52EF81004A05C130335557FA073612BufferRecord_list) = _swiftEmptyArrayStorage;
  }

  sub_100E91EB4(a4);
  swift_beginAccess();

  v27 = *(a2 + 56);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v55 = *(a2 + 56);
  *(a2 + 56) = 0x8000000000000000;
  sub_101001A44(v23, a3 + v18, isUniquelyReferenced_nonNull_native);
  *(a2 + 56) = v55;
  swift_endAccess();
  v29 = OBJC_IVAR____TtCC12searchpartyd25InstructionEventCoalescerP33_3B6F52EF81004A05C130335557FA073612BufferRecord_list;
  swift_beginAccess();
  v30 = *(v23 + v29);

  v32 = sub_100E927F0(v31, a3);

  if (v32)
  {
    v41[1] = *(a2 + 32);
    sub_100E92F78(a3, v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for OwnedBeaconRecord);
    v33 = (*(v43 + 80) + 24) & ~*(v43 + 80);
    v34 = swift_allocObject();
    v43 = v18;
    v42 = a3;
    *(v34 + 16) = v45;
    sub_100E92E80(v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), v34 + v33, type metadata accessor for OwnedBeaconRecord);
    *(v34 + ((v17 + v33 + 7) & 0xFFFFFFFFFFFFFFF8)) = a2;
    aBlock[4] = sub_100E92EE8;
    aBlock[5] = v34;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100006684;
    aBlock[3] = &unk_1016578F8;
    v35 = _Block_copy(aBlock);

    v36 = v44;
    static DispatchQoS.unspecified.getter();
    v56 = _swiftEmptyArrayStorage;
    sub_100E92FE0(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
    v37 = v46;
    v38 = v50;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v35);
    (*(v49 + 8))(v37, v38);
    (*(v47 + 8))(v36, v48);

    v39 = v53;
    (*(v51 + 16))(v53, v42 + v43, v52);
    swift_beginAccess();
    sub_1001E1664(0, v39);
    swift_endAccess();
  }

  sub_100E90EEC();
}

uint64_t sub_100E91D90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Transaction.capture()();
  static os_log_type_t.default.getter();
  if (qword_101695038 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_101385D80;
  v6 = a2 + *(type metadata accessor for OwnedBeaconRecord() + 20);
  v7 = UUID.uuidString.getter();
  v9 = v8;
  *(v5 + 56) = &type metadata for String;
  *(v5 + 64) = sub_100008C00();
  *(v5 + 32) = v7;
  *(v5 + 40) = v9;
  os_log(_:dso:log:_:_:)();

  v10 = *(a3 + 16);
  return PassthroughSubject.send(_:)();
}

uint64_t sub_100E91EB4(uint64_t a1)
{
  v3 = type metadata accessor for BeaconKeyManager.PersistenceInstruction(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3 - 8);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  Date.init()();
  v13 = OBJC_IVAR____TtCC12searchpartyd25InstructionEventCoalescerP33_3B6F52EF81004A05C130335557FA073612BufferRecord_timestamp;
  swift_beginAccess();
  (*(v9 + 40))(v1 + v13, v12, v8);
  swift_endAccess();
  sub_100E92F78(a1, v7, type metadata accessor for BeaconKeyManager.PersistenceInstruction);
  v14 = OBJC_IVAR____TtCC12searchpartyd25InstructionEventCoalescerP33_3B6F52EF81004A05C130335557FA073612BufferRecord_list;
  swift_beginAccess();
  v15 = *(v1 + v14);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + v14) = v15;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v15 = sub_100A5EBD0(0, v15[2] + 1, 1, v15);
    *(v1 + v14) = v15;
  }

  v18 = v15[2];
  v17 = v15[3];
  if (v18 >= v17 >> 1)
  {
    v15 = sub_100A5EBD0(v17 > 1, v18 + 1, 1, v15);
  }

  v15[2] = v18 + 1;
  sub_100E92E80(v7, v15 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v18, type metadata accessor for BeaconKeyManager.PersistenceInstruction);
  *(v1 + v14) = v15;
  return swift_endAccess();
}

uint64_t sub_100E9210C()
{
  v1 = OBJC_IVAR____TtCC12searchpartyd25InstructionEventCoalescerP33_3B6F52EF81004A05C130335557FA073612BufferRecord_timestamp;
  v2 = type metadata accessor for Date();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtCC12searchpartyd25InstructionEventCoalescerP33_3B6F52EF81004A05C130335557FA073612BufferRecord_list);

  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_100E921B8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  v3 = *(v0 + 48);
  swift_unownedRelease();
  v4 = *(v0 + 56);

  v5 = *(v0 + 64);

  return v0;
}

uint64_t sub_100E92208()
{
  sub_100E921B8();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for InstructionEventCoalescer.BufferRecord()
{
  result = qword_1016BD8B0;
  if (!qword_1016BD8B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100E922B4()
{
  result = type metadata accessor for Date();
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

uint64_t sub_100E92350(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_1016BD978, &qword_1013EBF48);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100E923D0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = sub_1000BC4D4(&qword_1016BD9A0, &qword_1013EBF70);
  return v4(a1, a1 + *(v5 + 48));
}

void *sub_100E92444(uint64_t a1)
{
  v20 = a1;
  v14 = type metadata accessor for OS_dispatch_queue.Attributes();
  v2 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14);
  v17 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v3 = *(v17 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v17);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v19 = sub_1000BC4D4(&qword_1016BD9C0, &qword_1013EBF78);
  v9 = *(v19 + 48);
  v10 = *(v19 + 52);
  swift_allocObject();
  v1[2] = PassthroughSubject.init()();
  sub_1000BC488();
  v13[1] = "scer event for %@";
  static DispatchQoS.default.getter();
  v15 = enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:);
  v11 = *(v3 + 104);
  v16 = v3 + 104;
  v18 = v11;
  v11(v6);
  v21 = _swiftEmptyArrayStorage;
  v13[0] = sub_100E92FE0(&qword_10169BB60, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_1000BC4D4(&unk_101695580, &qword_101385D90);
  sub_1000041A4(&qword_10169BB70, &unk_101695580, &qword_101385D90);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v1[3] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  static DispatchQoS.default.getter();
  v18(v6, v15, v17);
  v21 = _swiftEmptyArrayStorage;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v1[4] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v1[5] = 0;
  v1[6] = v20;
  v1[7] = _swiftEmptyDictionarySingleton;
  v21 = v1[2];
  swift_unownedRetain();
  sub_1000041A4(&qword_1016BD9C8, &qword_1016BD9C0, &qword_1013EBF78);
  v1[8] = Publisher.eraseToAnyPublisher()();
  return v1;
}

BOOL sub_100E927F0(uint64_t a1, uint64_t a2)
{
  v54 = type metadata accessor for BeaconKeyManager.KeyCriteria(0);
  v4 = *(*(v54 - 8) + 64);
  __chkstk_darwin(v54);
  v6 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for BeaconKeyManager.PersistenceInstruction(0);
  v8 = *(v7 - 8);
  v52 = v7;
  v53 = v8;
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v12 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v51 - v13;
  v15 = type metadata accessor for StableIdentifier();
  v16 = *(*(v15 - 8) + 64);
  v17 = __chkstk_darwin(v15);
  v19 = &v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v51 - v20;
  v22 = *(type metadata accessor for OwnedBeaconRecord() + 24);
  sub_100E92F78(a2 + v22, v21, type metadata accessor for StableIdentifier);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_100032764(v21, type metadata accessor for StableIdentifier);
  if (EnumCaseMultiPayload == 1)
  {
    goto LABEL_7;
  }

  sub_100E92F78(a2 + v22, v19, type metadata accessor for StableIdentifier);
  v24 = swift_getEnumCaseMultiPayload();
  if (v24 == 2)
  {
    v29 = sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);
    v30 = *&v19[v29[12] + 8];

    v31 = *&v19[v29[16] + 8];

    v32 = *&v19[v29[20] + 8];

    v28 = v29[28];
    goto LABEL_6;
  }

  if (v24 == 3)
  {
    v25 = sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);
    v26 = *&v19[v25[12] + 8];

    v27 = *&v19[v25[16] + 8];

    v28 = v25[20];
LABEL_6:
    v33 = *&v19[v28 + 8];

    v34 = type metadata accessor for UUID();
    (*(*(v34 - 8) + 8))(v19, v34);
LABEL_7:
    if (*(a1 + 16) == 2)
    {
      v35 = *(v52 + 24);
      v36 = a1 + ((*(v53 + 80) + 32) & ~*(v53 + 80));
      v37 = *(v53 + 72);
      sub_100E92F78(v36, v14, type metadata accessor for BeaconKeyManager.PersistenceInstruction);
      sub_100E92F78(&v14[v35], v6, type metadata accessor for BeaconKeyManager.KeyCriteria);
      sub_100032764(v14, type metadata accessor for BeaconKeyManager.PersistenceInstruction);
      v38 = v54;
      v39 = v6[*(v54 + 20)];
      sub_100032764(v6, type metadata accessor for BeaconKeyManager.KeyCriteria);
      if (v39 == 1)
      {
        sub_100E92F78(v36 + v37, v14, type metadata accessor for BeaconKeyManager.PersistenceInstruction);
        sub_100E92F78(&v14[v35], v6, type metadata accessor for BeaconKeyManager.KeyCriteria);
        sub_100032764(v14, type metadata accessor for BeaconKeyManager.PersistenceInstruction);
        v40 = v6[*(v38 + 20)];
        sub_100032764(v6, type metadata accessor for BeaconKeyManager.KeyCriteria);
        return (v40 & 1) == 0;
      }

      sub_100E92F78(v36 + v37, v14, type metadata accessor for BeaconKeyManager.PersistenceInstruction);
      sub_100E92F78(&v14[v35], v6, type metadata accessor for BeaconKeyManager.KeyCriteria);
      sub_100032764(v14, type metadata accessor for BeaconKeyManager.PersistenceInstruction);
      v41 = v6[*(v38 + 20)];
      sub_100032764(v6, type metadata accessor for BeaconKeyManager.KeyCriteria);
      if ((v41 | v39))
      {
        return 1;
      }
    }

    return 0;
  }

  sub_100032764(v19, type metadata accessor for StableIdentifier);
  v43 = sub_100DDE094();
  v44 = *(a1 + 16);
  if (v43)
  {
    if (v44 == 2)
    {
      v45 = a1 + ((*(v53 + 80) + 32) & ~*(v53 + 80));
      v46 = *(v53 + 72);
      sub_100E92F78(v45, v12, type metadata accessor for BeaconKeyManager.PersistenceInstruction);
      v47 = v12[48];
      sub_100032764(v12, type metadata accessor for BeaconKeyManager.PersistenceInstruction);
      if (v47 == 1)
      {
        sub_100E92F78(v45 + v46, v12, type metadata accessor for BeaconKeyManager.PersistenceInstruction);
        v48 = v12[48];
        sub_100032764(v12, type metadata accessor for BeaconKeyManager.PersistenceInstruction);
        if ((v48 & 1) == 0)
        {
          return 1;
        }
      }

      else
      {
        sub_100E92F78(v45 + v46, v12, type metadata accessor for BeaconKeyManager.PersistenceInstruction);
        v49 = v12[48];
        sub_100032764(v12, type metadata accessor for BeaconKeyManager.PersistenceInstruction);
        if ((v49 | v47))
        {
          return 1;
        }
      }
    }

    return 0;
  }

  if (v44 != 1)
  {
    return 0;
  }

  if (*(a1 + *(v52 + 24) + ((*(v53 + 80) + 32) & ~*(v53 + 80)) + *(v54 + 20)))
  {
    v50 = _stringCompareWithSmolCheck(_:_:expecting:)();

    return (v50 & 1) != 0;
  }

  return 1;
}

uint64_t sub_100E92E80(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100E92EE8()
{
  v1 = *(type metadata accessor for OwnedBeaconRecord() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_100E91D90(v3, v0 + v2, v4);
}

uint64_t sub_100E92F78(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100E92FE0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for AirPodsSWPairingLockCheckResponse()
{
  result = qword_1016BDA28;
  if (!qword_1016BDA28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100E9309C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v3 = type metadata accessor for UUID();
  v37 = *(v3 - 8);
  v4 = *(v37 + 64);
  __chkstk_darwin(v3);
  v6 = v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000BC4D4(&qword_1016BDA78, &qword_1013EBFE0);
  v38 = *(v7 - 8);
  v39 = v7;
  v8 = *(v38 + 64);
  __chkstk_darwin(v7);
  v10 = v33 - v9;
  v11 = type metadata accessor for AirPodsSWPairingLockCheckResponse();
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11);
  v15 = v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v15[*(v13 + 44)] = 0;
  v17 = a1[3];
  v16 = a1[4];
  v41 = a1;
  sub_1000035D0(a1, v17);
  sub_100E9372C();
  v18 = v10;
  v19 = v40;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v19)
  {
    return sub_100007BAC(v41);
  }

  v34 = v6;
  v35 = v3;
  v20 = v38;
  v40 = v11;
  v43 = 0;
  v21 = sub_1000E307C();
  v22 = v18;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v23 = *(&v42 + 1);
  *v15 = v42;
  *(v15 + 1) = v23;
  v43 = 1;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v24 = v21;
  *(v15 + 1) = v42;
  v43 = 2;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v25 = v15;
  *(v15 + 2) = v42;
  v43 = 3;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v33[1] = v24;
  *(v15 + 3) = v42;
  LOBYTE(v42) = 4;
  sub_100395BEC();
  v26 = v34;
  v27 = v35;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v28 = v40;
  (*(v37 + 32))(v25 + *(v40 + 32), v26, v27);
  LOBYTE(v42) = 5;
  v29 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v30 = (v25 + *(v28 + 36));
  *v30 = v29;
  v30[1] = v31;
  v43 = 6;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v20 + 8))(v22, v39);
  *(v25 + *(v28 + 40)) = v42;
  sub_100E93780(v25, v36);
  sub_100007BAC(v41);
  return sub_100E937E4(v25);
}

unint64_t sub_100E93644@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100E93958(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_100E93674@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_100E93958(a1);
  *a2 = result;
  return result;
}

uint64_t sub_100E9369C(uint64_t a1)
{
  v2 = sub_100E9372C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100E936D8(uint64_t a1)
{
  v2 = sub_100E9372C();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_100E9372C()
{
  result = qword_1016BDA80;
  if (!qword_1016BDA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BDA80);
  }

  return result;
}

uint64_t sub_100E93780(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AirPodsSWPairingLockCheckResponse();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100E937E4(uint64_t a1)
{
  v2 = type metadata accessor for AirPodsSWPairingLockCheckResponse();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100E93854()
{
  result = qword_1016BDA88;
  if (!qword_1016BDA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BDA88);
  }

  return result;
}

unint64_t sub_100E938AC()
{
  result = qword_1016BDA90;
  if (!qword_1016BDA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BDA90);
  }

  return result;
}

unint64_t sub_100E93904()
{
  result = qword_1016BDA98;
  if (!qword_1016BDA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BDA98);
  }

  return result;
}

unint64_t sub_100E93958(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10160CBB8, v2);

  if (v3 >= 7)
  {
    return 7;
  }

  else
  {
    return v3;
  }
}

void sub_100E939A4(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v70 = a2;
  v3 = type metadata accessor for PeerCommunicationIdentifier();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v72 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v59 - v8;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (CKRecord.recordType.getter() == 0x65507265626D654DLL && v15 == 0xEF74737572547265)
  {
  }

  else
  {
    v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v16 & 1) == 0)
    {
      sub_100E955EC();
      swift_allocError();
      *v24 = 0;
      goto LABEL_16;
    }
  }

  v17 = [a1 recordID];
  v18 = [v17 recordName];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  UUID.init(uuidString:)();

  if ((*(v11 + 48))(v9, 1, v10) != 1)
  {
    v69 = *(v11 + 32);
    v69(v14, v9, v10);
    v20 = [a1 encryptedValues];
    v21 = String._bridgeToObjectiveC()();
    v22 = [v20 objectForKeyedSubscript:v21];

    if (v22)
    {
      v73 = v22;
      sub_1000BC4D4(&unk_101698140, &unk_10138ED80);
      if (swift_dynamicCast())
      {
        if (!v75)
        {
          v68 = v20;
          v67 = 0;
LABEL_20:
          v25 = String._bridgeToObjectiveC()();
          v26 = [v68 objectForKeyedSubscript:v25];

          if (v26)
          {
            v75 = v26;
            if (swift_dynamicCast())
            {
              v27 = v73;
              v66 = v74;
              v28 = type metadata accessor for PropertyListDecoder();
              v29 = *(v28 + 48);
              v30 = *(v28 + 52);
              swift_allocObject();
              PropertyListDecoder.init()();
              sub_100E95D2C(&qword_10169D970, type metadata accessor for PeerCommunicationIdentifier);
              v31 = v71;
              v65 = v27;
              v32 = v66;
              dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
              if (v31)
              {
                (*(v11 + 8))(v14, v10);

                sub_100016590(v65, v32);
                swift_unknownObjectRelease();
                goto LABEL_17;
              }

              v34 = String._bridgeToObjectiveC()();
              v35 = [v68 objectForKeyedSubscript:v34];

              v36 = v65;
              if (v35 && (v75 = v35, (swift_dynamicCast() & 1) != 0))
              {
                v64 = v73;
                v71 = v74;
                v37 = String._bridgeToObjectiveC()();
                v38 = [v68 objectForKeyedSubscript:v37];

                if (v38)
                {
                  v75 = v38;
                  v39 = swift_dynamicCast();
                  v40 = v66;
                  if (v39)
                  {
                    v41 = v73;
                    v42 = v74;
                    sub_100017D5C(v73, v74);
                    sub_1004A4740(v41, v42);
                    if (v74 >> 60 != 15)
                    {
                      v62 = v74;
                      v63 = v73;
                      v61 = objc_autoreleasePoolPush();
                      v47 = [objc_allocWithZone(NSKeyedArchiver) initRequiringSecureCoding:1];
                      [a1 encodeSystemFieldsWithCoder:v47];
                      [v47 finishEncoding];
                      v48 = v41;
                      v49 = [v47 encodedData];
                      v50 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
                      v59 = v51;
                      v60 = v50;

                      objc_autoreleasePoolPop(v61);
                      sub_100016590(v65, v66);
                      sub_100016590(v48, v42);
                      swift_unknownObjectRelease();

                      v52 = v70;
                      v53 = v59;
                      *v70 = v60;
                      v52[1] = v53;
                      v54 = type metadata accessor for MemberPeerTrust();
                      v69(v52 + v54[5], v14, v10);
                      *(v52 + v54[6]) = v67;
                      sub_100312F64(v72, v52 + v54[7]);
                      v55 = (v52 + v54[8]);
                      v56 = v71;
                      *v55 = v64;
                      v55[1] = v56;
                      v57 = (v52 + v54[9]);
                      v58 = v62;
                      *v57 = v63;
                      v57[1] = v58;
                      return;
                    }

                    sub_100016590(v41, v42);
                  }

                  v43 = v72;
                }

                else
                {

                  v43 = v72;
                  v40 = v66;
                }

                sub_100E955EC();
                swift_allocError();
                *v46 = 5;
                swift_willThrow();
                sub_100016590(v65, v40);
                swift_unknownObjectRelease();

                v45 = v43;
              }

              else
              {
                sub_100E955EC();
                swift_allocError();
                *v44 = 4;
                swift_willThrow();
                sub_100016590(v36, v66);
                swift_unknownObjectRelease();

                v45 = v72;
              }

              sub_100E956F8(v45, type metadata accessor for PeerCommunicationIdentifier);
LABEL_14:
              (*(v11 + 8))(v14, v10);
              return;
            }
          }

          sub_100E955EC();
          swift_allocError();
          *v33 = 3;
          swift_willThrow();
LABEL_13:
          swift_unknownObjectRelease();

          goto LABEL_14;
        }

        if (v75 == 1)
        {
          v68 = v20;
          v67 = 1;
          goto LABEL_20;
        }
      }
    }

    sub_100E955EC();
    swift_allocError();
    *v23 = 2;
    swift_willThrow();
    goto LABEL_13;
  }

  sub_1002EA198(v9);
  sub_100E955EC();
  swift_allocError();
  *v19 = 1;
LABEL_16:
  swift_willThrow();
LABEL_17:
}

Swift::Int sub_100E94264()
{
  v1 = v0;
  Hasher.init(_seed:)();
  v2 = *v0;
  v3 = v0[1];
  Data.hash(into:)();
  v4 = type metadata accessor for MemberPeerTrust();
  v5 = v4[5];
  type metadata accessor for UUID();
  sub_100E95D2C(&qword_1016967B0, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  Hasher._combine(_:)(*(v1 + v4[6]));
  v6 = v1 + v4[7];
  sub_10098A0BC();
  v7 = (v1 + v4[8]);
  v8 = *v7;
  v9 = v7[1];
  String.hash(into:)();
  v10 = (v1 + v4[9]);
  v11 = *v10;
  v12 = v10[1];
  sub_100017D5C(*v10, v12);
  Data.hash(into:)();
  sub_100016590(v11, v12);
  return Hasher._finalize()();
}

unint64_t sub_100E94380()
{
  v1 = *v0;
  v2 = 0x696669746E656469;
  v3 = 0xD000000000000015;
  if (v1 == 4)
  {
    v3 = 0xD000000000000011;
  }

  if (v1 == 3)
  {
    v3 = 0xD000000000000018;
  }

  if (v1 != 1)
  {
    v2 = 1701869940;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100E94448@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100E95B20(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100E94470(uint64_t a1)
{
  v2 = sub_100E95640();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100E944AC(uint64_t a1)
{
  v2 = sub_100E95640();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100E944EC(uint64_t a1, int *a2)
{
  v4 = v2;
  v5 = *v2;
  v6 = v2[1];
  Data.hash(into:)();
  v7 = a2[5];
  type metadata accessor for UUID();
  sub_100E95D2C(&qword_1016967B0, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  Hasher._combine(_:)(*(v4 + a2[6]));
  v8 = v4 + a2[7];
  sub_10098A0BC();
  v9 = (v4 + a2[8]);
  v10 = *v9;
  v11 = v9[1];
  String.hash(into:)();
  v12 = (v4 + a2[9]);
  v13 = *v12;
  v14 = v12[1];
  sub_100017D5C(*v12, v14);
  Data.hash(into:)();

  return sub_100016590(v13, v14);
}

Swift::Int sub_100E945F8(uint64_t a1, int *a2)
{
  v4 = v2;
  Hasher.init(_seed:)();
  v5 = *v2;
  v6 = v2[1];
  Data.hash(into:)();
  v7 = a2[5];
  type metadata accessor for UUID();
  sub_100E95D2C(&qword_1016967B0, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  Hasher._combine(_:)(*(v4 + a2[6]));
  v8 = v4 + a2[7];
  sub_10098A0BC();
  v9 = (v4 + a2[8]);
  v10 = *v9;
  v11 = v9[1];
  String.hash(into:)();
  v12 = (v4 + a2[9]);
  v13 = *v12;
  v14 = v12[1];
  sub_100017D5C(*v12, v14);
  Data.hash(into:)();
  sub_100016590(v13, v14);
  return Hasher._finalize()();
}

uint64_t sub_100E9470C()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100044B3C(v3, qword_10177C1D0);
  sub_1000076D4(v0, qword_10177C1D0);
  if (qword_101694C10 != -1)
  {
    swift_once();
  }

  v6 = sub_1000076D4(v0, qword_10177BA58);
  (*(v1 + 16))(v5, v6, v0);
  URL.appendingPathComponent(_:isDirectory:)();
  return (*(v1 + 8))(v5, v0);
}

uint64_t sub_100E94870(id *a1)
{
  v2 = *a1;
  [*a1 encryptedValues];
  swift_getObjectType();
  static os_log_type_t.debug.getter();
  if (qword_101695040 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_101385D80;
  v4 = v2;
  v5 = [v4 description];
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  *(v3 + 56) = &type metadata for String;
  *(v3 + 64) = sub_100008C00();
  *(v3 + 32) = v6;
  *(v3 + 40) = v8;
  os_log(_:dso:log:_:_:)();

  v9 = type metadata accessor for MemberPeerTrust();
  v16 = *(v1 + v9[6]);
  CKRecordKeyValueSetting.subscript.setter();
  v10 = type metadata accessor for PropertyListEncoder();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  PropertyListEncoder.init()();
  v13 = v9[7];
  type metadata accessor for PeerCommunicationIdentifier();
  sub_100E95D2C(&qword_10169D978, type metadata accessor for PeerCommunicationIdentifier);
  dispatch thunk of PropertyListEncoder.encode<A>(_:)();

  CKRecordKeyValueSetting.subscript.setter();
  v14 = (v1 + v9[8]);
  v17 = *v14;
  v18 = v14[1];

  CKRecordKeyValueSetting.subscript.setter();
  sub_100017D5C(*(v1 + v9[9]), *(v1 + v9[9] + 8));
  CKRecordKeyValueSetting.subscript.setter();

  return swift_unknownObjectRelease();
}

uint64_t sub_100E94BBC(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&unk_1016BDAD0, &qword_1013EC1C8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v21 - v8;
  v10 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_100E95640();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = v3[1];
  v23 = *v3;
  v24 = v11;
  v22 = 0;
  sub_100017D5C(v23, v11);
  sub_1000E3190();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    sub_100016590(v23, v24);
    v12 = type metadata accessor for MemberPeerTrust();
    v13 = v12[5];
    LOBYTE(v23) = 1;
    type metadata accessor for UUID();
    sub_100E95D2C(&qword_101698330, &type metadata accessor for UUID);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v23) = *(v3 + v12[6]);
    v22 = 2;
    sub_1003131DC();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v14 = v12[7];
    LOBYTE(v23) = 3;
    type metadata accessor for PeerCommunicationIdentifier();
    sub_100E95D2C(&qword_10169D978, type metadata accessor for PeerCommunicationIdentifier);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v15 = (v3 + v12[8]);
    v16 = *v15;
    v17 = v15[1];
    LOBYTE(v23) = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    v19 = (v3 + v12[9]);
    v20 = v19[1];
    v23 = *v19;
    v24 = v20;
    v22 = 5;
    sub_100017D5C(v23, v20);
    sub_100313230();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  sub_100016590(v23, v24);
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_100E94EE0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v28 = type metadata accessor for PeerCommunicationIdentifier();
  v3 = *(*(v28 - 8) + 64);
  __chkstk_darwin(v28);
  v29 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for UUID();
  v30 = *(v5 - 8);
  v6 = *(v30 + 64);
  __chkstk_darwin(v5);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000BC4D4(&qword_1016BDAC0, &qword_1013EC1C0);
  v31 = *(v9 - 8);
  v32 = v9;
  v10 = *(v31 + 64);
  __chkstk_darwin(v9);
  v12 = &v27 - v11;
  v13 = type metadata accessor for MemberPeerTrust();
  v14 = *(*(v13 - 1) + 64);
  __chkstk_darwin(v13);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[3];
  v18 = a1[4];
  v34 = a1;
  sub_1000035D0(a1, v17);
  sub_100E95640();
  v19 = v33;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v19)
  {
    return sub_100007BAC(v34);
  }

  v20 = v30;
  v36 = 0;
  sub_1000E307C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *v16 = v35;
  LOBYTE(v35) = 1;
  sub_100E95D2C(&qword_101698300, &type metadata accessor for UUID);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v20 + 32))(&v16[v13[5]], v8, v5);
  v36 = 2;
  sub_10031301C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v16[v13[6]] = v35;
  LOBYTE(v35) = 3;
  sub_100E95D2C(&qword_10169D970, type metadata accessor for PeerCommunicationIdentifier);
  v21 = v29;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v22 = v31;
  sub_100312F64(v21, &v16[v13[7]]);
  LOBYTE(v35) = 4;
  v23 = KeyedDecodingContainer.decode(_:forKey:)();
  v24 = &v16[v13[8]];
  *v24 = v23;
  v24[1] = v25;
  v36 = 5;
  sub_100313070();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v22 + 8))(v12, v32);
  *&v16[v13[9]] = v35;
  sub_100E95694(v16, v27);
  sub_100007BAC(v34);
  return sub_100E956F8(v16, type metadata accessor for MemberPeerTrust);
}

uint64_t sub_100E954C4(uint64_t a1)
{
  *(a1 + 8) = sub_100E95D2C(&unk_1016BDAA0, type metadata accessor for MemberPeerTrust);
  result = sub_100E95D2C(&qword_1016B15F8, type metadata accessor for MemberPeerTrust);
  *(a1 + 16) = result;
  return result;
}

uint64_t type metadata accessor for MemberPeerTrust()
{
  result = qword_1016BDB40;
  if (!qword_1016BDB40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100E95594(uint64_t a1)
{
  result = sub_100E95D2C(&qword_1016B15F0, type metadata accessor for MemberPeerTrust);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100E955EC()
{
  result = qword_1016BDAB0;
  if (!qword_1016BDAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BDAB0);
  }

  return result;
}

unint64_t sub_100E95640()
{
  result = qword_1016BDAC8;
  if (!qword_1016BDAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BDAC8);
  }

  return result;
}

uint64_t sub_100E95694(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MemberPeerTrust();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100E956F8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100E95758(uint64_t a1, uint64_t a2)
{
  if ((_s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(*a1, *(a1 + 8), *a2, *(a2 + 8)) & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for MemberPeerTrust();
  v5 = v4[5];
  if ((static UUID.== infix(_:_:)() & 1) == 0 || *(a1 + v4[6]) != *(a2 + v4[6]) || (sub_10098BFC0(a1 + v4[7], a2 + v4[7]) & 1) == 0)
  {
    return 0;
  }

  v6 = v4[8];
  v7 = *(a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  v10 = v7 == *v9 && v8 == v9[1];
  if (!v10 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v11 = v4[9];
  v12 = a1 + v11;
  v13 = *(a1 + v11);
  v14 = *(v12 + 8);
  v15 = (a2 + v11);
  v16 = *v15;
  v17 = v15[1];
  sub_100017D5C(v13, v14);
  sub_100017D5C(v16, v17);
  v18 = _s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(v13, v14, v16, v17);
  sub_100016590(v16, v17);
  sub_100016590(v13, v14);
  return v18 & 1;
}

uint64_t sub_100E958C4()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for PeerCommunicationIdentifier();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_100E959C4()
{
  result = qword_1016BDB90;
  if (!qword_1016BDB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BDB90);
  }

  return result;
}

unint64_t sub_100E95A1C()
{
  result = qword_1016BDB98;
  if (!qword_1016BDB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BDB98);
  }

  return result;
}

unint64_t sub_100E95A74()
{
  result = qword_1016BDBA0;
  if (!qword_1016BDBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BDBA0);
  }

  return result;
}

unint64_t sub_100E95ACC()
{
  result = qword_1016BDBA8;
  if (!qword_1016BDBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BDBA8);
  }

  return result;
}

uint64_t sub_100E95B20(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x8000000101347C50 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000018 && 0x8000000101351010 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000101351030 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000101351050 == a2)
  {

    return 5;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_100E95D2C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100E95D84(void *a1, uint64_t a2)
{
  v3 = a1[4];
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of BinaryEncoding.container()();
  v8[6] = a2;
  sub_100235658();
  v6 = FixedWidthInteger.data.getter();
  v7 = v4;
  sub_10015049C(v8, v8[3]);
  sub_100165078();
  dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
  sub_100016590(v6, v7);
  return sub_100007BAC(v8);
}

uint64_t sub_100E95E50@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100E95F1C(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_100E95E98(uint64_t a1)
{
  *(a1 + 8) = sub_100E95EC8();
  result = sub_10059BFF4();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_100E95EC8()
{
  result = qword_1016BDBB0;
  if (!qword_1016BDBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BDBB0);
  }

  return result;
}

uint64_t sub_100E95F1C(uint64_t *a1)
{
  v3 = type metadata accessor for Endianness();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v5 = a1[4];
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of BinaryDecoding.container()();
  v6 = sub_10015049C(v15, v15[3]);
  v7 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  if (!v1)
  {
    v9 = v7;
    v10 = v8;
    sub_100017D5C(v7, v8);
    static Endianness.current.getter();
    sub_100235658();
    FixedWidthInteger.init(data:ofEndianness:)();
    if (v14 != 1)
    {
      v6 = v13;
      sub_100016590(v9, v10);
      sub_100007BAC(v15);
      sub_100007BAC(a1);
      return v6;
    }

    v6 = type metadata accessor for BinaryEncodingError();
    sub_100205404();
    swift_allocError();
    (*(*(v6 - 8) + 104))(v11, enum case for BinaryEncodingError.encodingError(_:), v6);
    swift_willThrow();
    sub_100016590(v9, v10);
  }

  sub_100007BAC(v15);
  sub_100007BAC(a1);
  return v6;
}

uint64_t sub_100E960EC(uint64_t a1)
{
  v1[2] = a1;
  v2 = type metadata accessor for FMNAccountType();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v5 = *(*(sub_1000BC4D4(&unk_101696AC0, &qword_101390A60) - 8) + 64) + 15;
  v1[6] = swift_task_alloc();
  v6 = type metadata accessor for URL();
  v1[7] = v6;
  v7 = *(v6 - 8);
  v1[8] = v7;
  v8 = *(v7 + 64) + 15;
  v1[9] = swift_task_alloc();

  return _swift_task_switch(sub_100E96240, 0, 0);
}

uint64_t sub_100E96240()
{
  v1 = v0[7];
  v2 = v0[8];
  v4 = v0[5];
  v3 = v0[6];
  v5 = v0[3];
  v6 = v0[4];
  type metadata accessor for FMNAuthenticationProvider();
  (*(v6 + 104))(v4, enum case for FMNAccountType.itemSharing(_:), v5);
  static FMNAuthenticationProvider.configurationURL(accountType:)();
  (*(v6 + 8))(v4, v5);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1002815B4(v0[6]);
  }

  else
  {
    (*(v0[8] + 32))(v0[9], v0[6], v0[7]);
    v7 = URL.host(percentEncoded:)(1);
    v9 = v0[8];
    v8 = v0[9];
    v10 = v0[7];
    if (v7.value._object)
    {
      v11 = v0[2];
      v12 = v0[9];
      URL.path(percentEncoded:)(1);
      URLComponents.init()();
      URLComponents.scheme.setter();
      URLComponents.host.setter();
      URLComponents.path.setter();
      (*(v9 + 8))(v8, v10);
      goto LABEL_7;
    }

    (*(v9 + 8))(v0[9], v0[7]);
  }

  v13 = v0[2];
  sub_100E9642C();
LABEL_7:
  v14 = v0[9];
  v15 = v0[5];
  v16 = v0[6];

  v17 = v0[1];

  return v17();
}

uint64_t sub_100E9642C()
{
  if (qword_1016954C0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_1000076D4(v0, qword_10177CDD0);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "No url found in account bag.", v3, 2u);
  }

  URLComponents.init()();
  URLComponents.scheme.setter();
  URLComponents.path.setter();
  return URLComponents.host.setter();
}

uint64_t sub_100E96578(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0xD000000000000014;
  }

  else
  {
    v4 = 0x6E776F6E6B6E75;
  }

  if (v3)
  {
    v5 = 0xE700000000000000;
  }

  else
  {
    v5 = 0x800000010134A000;
  }

  if (*a2)
  {
    v6 = 0xD000000000000014;
  }

  else
  {
    v6 = 0x6E776F6E6B6E75;
  }

  if (*a2)
  {
    v7 = 0x800000010134A000;
  }

  else
  {
    v7 = 0xE700000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

Swift::Int sub_100E96624()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100E966AC()
{
  *v0;
  String.hash(into:)();
}

Swift::Int sub_100E96720()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100E967A4@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_10160C6A8, *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_100E96804(unint64_t *a1@<X8>)
{
  v2 = 0x800000010134A000;
  v3 = 0x6E776F6E6B6E75;
  if (*v1)
  {
    v3 = 0xD000000000000014;
  }

  else
  {
    v2 = 0xE700000000000000;
  }

  *a1 = v3;
  a1[1] = v2;
}

unint64_t sub_100E968F8()
{
  if (*v0)
  {
    result = 0xD000000000000014;
  }

  else
  {
    result = 0x6E776F6E6B6E75;
  }

  *v0;
  return result;
}

uint64_t sub_100E96938@<X0>(Swift::String string@<0:X0, 8:X1>, char *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&off_10160C6A8, v3);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

uint64_t sub_100E9699C(uint64_t a1)
{
  v2 = sub_1009AC944();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100E969D8(uint64_t a1)
{
  v2 = sub_1009AC944();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100E96A14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = type metadata accessor for SystemVersionNumber();
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12);
  v16 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14);
  v19 = &v54 - v18;
  v20 = __chkstk_darwin(v17);
  v22 = &v54 - v21;
  v23 = __chkstk_darwin(v20);
  v26 = &v54 - v25;
  if (*v6 != 1)
  {
    return 0;
  }

  v59 = a5;
  v60 = v24;
  v61 = v23;
  v27 = *(type metadata accessor for FeatureSupportMatrix() + 36);
  sub_1000BC4D4(&qword_1016BDBB8, &unk_1013EC550);
  v28 = CustomCodableKeyDictionary.wrappedValue.getter();
  if (v28)
  {
    v29 = v28;
    if (*(v28 + 16))
    {
      v30 = sub_1007722A0(a1, a2, a3, a4);
      if (v31)
      {
        v32 = *(*(v29 + 56) + v30);

        return v32;
      }
    }
  }

  v34 = *(v6 + 8);
  if (!*(v34 + 16))
  {
    return 0;
  }

  v35 = sub_100771D58(a1, a2);
  if ((v36 & 1) == 0)
  {
    return 0;
  }

  if (*(*(v34 + 56) + 8 * v35) > a3)
  {
    return 0;
  }

  v37 = *(v6 + 24);
  if (!*(v37 + 16))
  {
    return 0;
  }

  v38 = sub_100771D58(a1, a2);
  if ((v39 & 1) == 0)
  {
    return 0;
  }

  v40 = *(v37 + 56);
  v41 = v60;
  v42 = v61;
  v55 = v60[9];
  v57 = v60[2];
  v58 = v60 + 2;
  v57(v22, v40 + v55 * v38, v61);
  v43 = v41[4];
  v56 = v41 + 4;
  v54 = v43;
  v43(v26, v22, v42);
  sub_100E980A0(&qword_101697BD0);
  if (dispatch thunk of static Comparable.< infix(_:_:)())
  {
    (v41[1])(v26, v61);
  }

  else
  {
    v44 = *(v6 + 16);
    if (!v44 || !*(v44 + 16) || (v45 = sub_100771D58(a1, a2), (v46 & 1) == 0) || *(*(v44 + 56) + 8 * v45) >= a3)
    {
      v47 = *(v6 + 32);
      if (v47 && *(v47 + 16) && (v48 = sub_100771D58(a1, a2), (v49 & 1) != 0))
      {
        v50 = *(v47 + 56) + v48 * v55;
        v51 = v61;
        v57(v16, v50, v61);
        v54(v19, v16, v51);
        v52 = dispatch thunk of static Comparable.< infix(_:_:)();
        v53 = v60[1];
        v53(v19, v51);
        v53(v26, v51);
        if (v52)
        {
          return 0;
        }
      }

      else
      {
        (v60[1])(v26, v61);
      }

      return 1;
    }

    (v60[1])(v26, v61);
  }

  return 0;
}

uint64_t sub_100E96DE8(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_1016BDCE8, &qword_1013EC7F0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v14 - v8;
  v10 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_100E97D78();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  LOBYTE(v15) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v15 = v3[1];
    HIBYTE(v14) = 1;
    sub_1000BC4D4(&qword_1016BDC38, &qword_1013EC578);
    sub_100E97F88(&qword_1016BDCF0);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v15 = v3[2];
    HIBYTE(v14) = 2;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v15 = v3[3];
    HIBYTE(v14) = 3;
    sub_1000BC4D4(&qword_1016BDC50, &unk_1013EC580);
    sub_100E97FF8();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v15 = v3[4];
    HIBYTE(v14) = 4;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v12 = *(type metadata accessor for FeatureSupportMatrix() + 36);
    LOBYTE(v15) = 5;
    sub_1000BC4D4(&qword_1016BDBB8, &unk_1013EC550);
    sub_100E980E4();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_100E970C8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v34 = sub_1000BC4D4(&qword_1016BDBB8, &unk_1013EC550);
  v32 = *(v34 - 8);
  v3 = *(v32 + 64);
  __chkstk_darwin(v34);
  v5 = &v26 - v4;
  v6 = sub_1000BC4D4(&qword_1016BDCB8, &qword_1013EC7E8);
  v28 = *(v6 - 8);
  v29 = v6;
  v7 = *(v28 + 64);
  __chkstk_darwin(v6);
  v9 = &v26 - v8;
  v10 = type metadata accessor for FeatureSupportMatrix();
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v12 + 44);
  v16 = sub_10088D764();
  v17 = sub_10090C518();
  v33 = v15;
  CustomCodableKeyDictionary.init(wrappedValue:)();
  v18 = a1[3];
  v19 = a1[4];
  v31 = a1;
  sub_1000035D0(a1, v18);
  sub_100E97D78();
  v20 = v30;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v20)
  {
    sub_100007BAC(v31);
    return (*(v32 + 8))(&v14[v33], v34);
  }

  else
  {
    v26 = v17;
    v30 = v16;
    v21 = v5;
    v22 = v28;
    LOBYTE(v36) = 0;
    *v14 = KeyedDecodingContainer.decode(_:forKey:)() & 1;
    sub_1000BC4D4(&qword_1016BDC38, &qword_1013EC578);
    v35 = 1;
    sub_100E97F88(&qword_1016BDCC8);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v23 = v22;
    *(v14 + 1) = v36;
    v35 = 2;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    *(v14 + 2) = v36;
    sub_1000BC4D4(&qword_1016BDC50, &unk_1013EC580);
    v35 = 3;
    sub_100E97DCC();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *(v14 + 3) = v36;
    v35 = 4;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    *(v14 + 4) = v36;
    LOBYTE(v36) = 5;
    sub_100E97E74();
    v24 = v29;
    KeyedDecodingContainer.decode<A, B>(_:forKey:)();
    (*(v23 + 8))(v9, v24);
    (*(v32 + 40))(&v14[v33], v21, v34);
    sub_100E97EC8(v14, v27);
    sub_100007BAC(v31);
    return sub_100E97F2C(v14);
  }
}

unint64_t sub_100E9765C()
{
  v1 = *v0;
  v2 = 0x64656C62616E65;
  v3 = 0xD000000000000013;
  if (v1 == 4)
  {
    v3 = 0xD000000000000016;
  }

  if (v1 == 3)
  {
    v4 = 0xD000000000000016;
  }

  else
  {
    v4 = v3;
  }

  if (*v0)
  {
    v2 = 0xD000000000000015;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_100E97720@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100E982B4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100E97748(uint64_t a1)
{
  v2 = sub_100E97D78();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100E97784(uint64_t a1)
{
  v2 = sub_100E97D78();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100E977F4(uint64_t *a1, uint64_t *a2)
{
  if (*a1 != *a2 || (sub_100DE764C(a1[1], a2[1]) & 1) == 0)
  {
    return 0;
  }

  v4 = a1[2];
  v5 = a2[2];
  if (v4)
  {
    if (!v5)
    {
      return 0;
    }

    v6 = a2[2];

    v7 = sub_100DE764C(v4, v5);

    if ((v7 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  if (sub_100DE7780(a1[3], a2[3]))
  {
    v8 = a1[4];
    v9 = a2[4];
    if (v8)
    {
      if (v9)
      {
        v10 = a2[4];

        v11 = sub_100DE7780(v8, v9);

        if (v11)
        {
          goto LABEL_12;
        }
      }
    }

    else if (!v9)
    {
LABEL_12:
      v12 = *(type metadata accessor for FeatureSupportMatrix() + 36);
      sub_10088D764();
      sub_10090C518();
      return static CustomCodableKeyDictionary<>.== infix(_:_:)() & 1;
    }
  }

  return 0;
}

uint64_t type metadata accessor for FeatureSupportMatrix()
{
  result = qword_1016BDC18;
  if (!qword_1016BDC18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100E979A4()
{
  sub_100E97AB0();
  if (v0 <= 0x3F)
  {
    sub_1002ECE54(319, &qword_1016BDC30, &qword_1016BDC38, &qword_1013EC578);
    if (v1 <= 0x3F)
    {
      sub_100E97B10();
      if (v2 <= 0x3F)
      {
        sub_1002ECE54(319, &qword_1016BDC48, &qword_1016BDC50, &unk_1013EC580);
        if (v3 <= 0x3F)
        {
          sub_100E97B78();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_100E97AB0()
{
  if (!qword_1016BDC28)
  {
    v0 = type metadata accessor for Dictionary();
    if (!v1)
    {
      atomic_store(v0, &qword_1016BDC28);
    }
  }
}

void sub_100E97B10()
{
  if (!qword_1016BDC40)
  {
    type metadata accessor for SystemVersionNumber();
    v0 = type metadata accessor for Dictionary();
    if (!v1)
    {
      atomic_store(v0, &qword_1016BDC40);
    }
  }
}

void sub_100E97B78()
{
  if (!qword_1016BDC58)
  {
    sub_10088D764();
    sub_10090C518();
    v0 = type metadata accessor for CustomCodableKeyDictionary();
    if (!v1)
    {
      atomic_store(v0, &qword_1016BDC58);
    }
  }
}

unint64_t sub_100E97C1C()
{
  result = qword_1016BDC98;
  if (!qword_1016BDC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BDC98);
  }

  return result;
}

unint64_t sub_100E97C74()
{
  result = qword_1016BDCA0;
  if (!qword_1016BDCA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BDCA0);
  }

  return result;
}

unint64_t sub_100E97CCC()
{
  result = qword_1016BDCA8;
  if (!qword_1016BDCA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BDCA8);
  }

  return result;
}

unint64_t sub_100E97D24()
{
  result = qword_1016BDCB0;
  if (!qword_1016BDCB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BDCB0);
  }

  return result;
}

unint64_t sub_100E97D78()
{
  result = qword_1016BDCC0;
  if (!qword_1016BDCC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BDCC0);
  }

  return result;
}

unint64_t sub_100E97DCC()
{
  result = qword_1016BDCD0;
  if (!qword_1016BDCD0)
  {
    sub_1000BC580(&qword_1016BDC50, &unk_1013EC580);
    sub_100E980A0(&qword_1016BDCD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BDCD0);
  }

  return result;
}

unint64_t sub_100E97E74()
{
  result = qword_1016BDCE0;
  if (!qword_1016BDCE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BDCE0);
  }

  return result;
}

uint64_t sub_100E97EC8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FeatureSupportMatrix();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100E97F2C(uint64_t a1)
{
  v2 = type metadata accessor for FeatureSupportMatrix();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100E97F88(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1000BC580(&qword_1016BDC38, &qword_1013EC578);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100E97FF8()
{
  result = qword_1016BDCF8;
  if (!qword_1016BDCF8)
  {
    sub_1000BC580(&qword_1016BDC50, &unk_1013EC580);
    sub_100E980A0(&qword_1016BDD00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BDCF8);
  }

  return result;
}

uint64_t sub_100E980A0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SystemVersionNumber();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100E980E4()
{
  result = qword_1016BDD08;
  if (!qword_1016BDD08)
  {
    sub_1000BC580(&qword_1016BDBB8, &unk_1013EC550);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BDD08);
  }

  return result;
}

unint64_t sub_100E98148()
{
  result = qword_1016BDD10;
  if (!qword_1016BDD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BDD10);
  }

  return result;
}

unint64_t sub_100E981B0()
{
  result = qword_1016BDD18;
  if (!qword_1016BDD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BDD18);
  }

  return result;
}

unint64_t sub_100E98208()
{
  result = qword_1016BDD20;
  if (!qword_1016BDD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BDD20);
  }

  return result;
}

unint64_t sub_100E98260()
{
  result = qword_1016BDD28;
  if (!qword_1016BDD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BDD28);
  }

  return result;
}

uint64_t sub_100E982B4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64656C62616E65 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001013728E0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000101372900 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000101372920 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000101372940 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000101372960 == a2)
  {

    return 5;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

unint64_t sub_100E984B8(char a1)
{
  result = 0x4E6E6F6973736573;
  switch(a1)
  {
    case 1:
      result = 0x737574617473;
      break;
    case 2:
      result = 1684628325;
      break;
    case 3:
      result = 0x644970696863;
      break;
    case 4:
      result = 0x754E6C6169726573;
      break;
    case 5:
      result = 0x7374726563;
      break;
    case 6:
      result = 0x726F737365636361;
      break;
    case 7:
      result = 0xD000000000000013;
      break;
    case 8:
      result = 0xD000000000000011;
      break;
    case 9:
      result = 0x69634572656E776FLL;
      break;
    case 10:
      result = 0x69684372656E776FLL;
      break;
    case 11:
      result = 0x7372655663657073;
      break;
    case 12:
      result = 0x657261776D726966;
      break;
    case 13:
      result = 0x49746375646F7270;
      break;
    case 14:
      result = 0x6449726F646E6576;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100E98674(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_1016BDD38, &qword_1013ECE10);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v28[-v8 - 8];
  v10 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_100E9A794();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v37 = *v3;
  v30 = *v3;
  v29 = 0;
  sub_1001022C4(&v37, v28);
  sub_1000E3190();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  sub_100016590(v30, *(&v30 + 1));
  if (!v2)
  {
    v11 = *(v3 + 2);
    LOBYTE(v30) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v36 = *(v3 + 24);
    v30 = *(v3 + 24);
    v29 = 2;
    sub_1001022C4(&v36, v28);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100016590(v30, *(&v30 + 1));
    v35 = *(v3 + 40);
    v30 = *(v3 + 40);
    v29 = 3;
    sub_1001022C4(&v35, v28);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100016590(v30, *(&v30 + 1));
    v34 = *(v3 + 56);
    v30 = *(v3 + 56);
    v29 = 4;
    sub_1001022C4(&v34, v28);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100016590(v30, *(&v30 + 1));
    v33 = *(v3 + 72);
    v30 = *(v3 + 72);
    v29 = 5;
    sub_1001022C4(&v33, v28);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100016590(v30, *(&v30 + 1));
    v32 = *(v3 + 88);
    v30 = *(v3 + 88);
    v29 = 6;
    sub_1001022C4(&v32, v28);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100016590(v30, *(&v30 + 1));
    v30 = *(v3 + 104);
    v31 = v30;
    v29 = 7;
    sub_1000D2A70(&v31, v28, &qword_1016A40E0, &unk_101396F30);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_100006654(v30, *(&v30 + 1));
    v13 = *(v3 + 15);
    v14 = *(v3 + 16);
    LOBYTE(v30) = 8;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v15 = *(v3 + 17);
    v16 = *(v3 + 18);
    LOBYTE(v30) = 9;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v17 = *(v3 + 19);
    v18 = *(v3 + 20);
    LOBYTE(v30) = 10;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v19 = *(v3 + 21);
    v20 = *(v3 + 22);
    LOBYTE(v30) = 11;
    KeyedEncodingContainer.encode(_:forKey:)();
    v21 = *(v3 + 23);
    v22 = *(v3 + 24);
    LOBYTE(v30) = 12;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v23 = *(v3 + 25);
    v24 = *(v3 + 26);
    LOBYTE(v30) = 13;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v25 = *(v3 + 27);
    v26 = *(v3 + 28);
    LOBYTE(v30) = 14;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_100E98B68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100E9A900(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100E98B9C(uint64_t a1)
{
  v2 = sub_100E9A794();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100E98BD8(uint64_t a1)
{
  v2 = sub_100E9A794();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100E98C14(void *a1)
{
  v15 = v1[12];
  v16 = v1[13];
  v17 = *(v1 + 28);
  v11 = v1[8];
  v12 = v1[9];
  v13 = v1[10];
  v14 = v1[11];
  v7 = v1[4];
  v8 = v1[5];
  v9 = v1[6];
  v10 = v1[7];
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  return sub_100E98674(a1);
}

uint64_t sub_100E98C80@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a1[7];
  v45 = v56;
  v55 = a1[9];
  sub_1001022C4(&v56, &v54);
  sub_1000E0A3C();
  v4 = DataProtocol.intValue.getter();
  v5 = a1[2];
  v55 = a1[3];
  v6 = a1[4];
  v53 = a1[5];
  v54 = v6;
  v43 = v6;
  v44 = v55;
  v41 = a1[6];
  v42 = v53;
  v51 = a1[8];
  v52 = v41;
  v7 = a1[10];
  v8 = a1[11];
  v49 = v5;
  v50 = v7;
  v39 = a1[10];
  v40 = v51;
  v9 = *a1;
  v47 = a1[1];
  v48 = v9;
  v37 = v9;
  v38 = v5;
  v36 = v47;
  v10 = *(a1 + 25);
  v46 = v8;
  if (v10 >> 60 == 15)
  {
    sub_1001022C4(&v55, v35);
    sub_1001022C4(&v54, v35);
    sub_1001022C4(&v53, v35);
    sub_1001022C4(&v52, v35);
    sub_1001022C4(&v51, v35);
    sub_1000D2A70(&v50, v35, &qword_1016A40E0, &unk_101396F30);
    sub_1000D2A70(&v49, v35, &qword_1016A0AC0, &unk_1013926A0);
    sub_1000D2A70(&v48, v35, &qword_1016A0AC0, &unk_1013926A0);
    sub_1000D2A70(&v47, v35, &qword_1016A0AC0, &unk_1013926A0);
    result = sub_1000D2A70(&v46, v35, &qword_1016A0AC0, &unk_1013926A0);
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
LABEL_15:
    v30 = v44;
    *a2 = v45;
    *(a2 + 16) = v4;
    *(a2 + 24) = v30;
    v31 = v42;
    *(a2 + 40) = v43;
    *(a2 + 56) = v31;
    v32 = v40;
    *(a2 + 72) = v41;
    *(a2 + 88) = v32;
    v33 = v38;
    *(a2 + 104) = v39;
    *(a2 + 120) = v33;
    v34 = v36;
    *(a2 + 136) = v37;
    *(a2 + 152) = v34;
    *(a2 + 168) = 0x302E302E31;
    *(a2 + 176) = 0xE500000000000000;
    *(a2 + 184) = a1[11];
    *(a2 + 200) = v12;
    *(a2 + 208) = v13;
    *(a2 + 216) = v14;
    *(a2 + 224) = v15;
    return result;
  }

  v16 = *(a1 + 24);
  sub_1001022C4(&v55, v35);
  sub_1001022C4(&v54, v35);
  sub_1001022C4(&v53, v35);
  sub_1001022C4(&v52, v35);
  sub_1001022C4(&v51, v35);
  sub_1000D2A70(&v50, v35, &qword_1016A40E0, &unk_101396F30);
  sub_1000D2A70(&v49, v35, &qword_1016A0AC0, &unk_1013926A0);
  sub_1000D2A70(&v48, v35, &qword_1016A0AC0, &unk_1013926A0);
  sub_1000D2A70(&v47, v35, &qword_1016A0AC0, &unk_1013926A0);
  sub_1000D2A70(&v46, v35, &qword_1016A0AC0, &unk_1013926A0);
  v17 = sub_100313B54(v16, v10);
  v19 = v18;
  v12 = Data.hexString.getter();
  v13 = v20;
  result = sub_100016590(v17, v19);
  v21 = v10 >> 62;
  if ((v10 >> 62) > 1)
  {
    if (v21 != 2)
    {
LABEL_14:
      v26 = Data.subdata(in:)();
      v28 = v27;
      v14 = Data.hexString.getter();
      v15 = v29;
      result = sub_100016590(v26, v28);
      goto LABEL_15;
    }

    v23 = *(v16 + 16);
    v22 = *(v16 + 24);
    v24 = __OFSUB__(v22, v23);
    v25 = v22 - v23;
    if (!v24)
    {
LABEL_12:
      if (v25 < -1)
      {
        __break(1u);
      }

      goto LABEL_14;
    }

    __break(1u);
  }

  else if (!v21)
  {
    goto LABEL_14;
  }

  LODWORD(v25) = HIDWORD(v16) - v16;
  if (!__OFSUB__(HIDWORD(v16), v16))
  {
    v25 = v25;
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t sub_100E99008(uint64_t a1, uint64_t a2)
{
  v2[213] = a2;
  v2[212] = a1;
  v3 = type metadata accessor for HashAlgorithm();
  v2[214] = v3;
  v4 = *(v3 - 8);
  v2[215] = v4;
  v5 = *(v4 + 64) + 15;
  v2[216] = swift_task_alloc();
  v6 = type metadata accessor for Locale();
  v2[217] = v6;
  v7 = *(v6 - 8);
  v2[218] = v7;
  v8 = *(v7 + 64) + 15;
  v2[219] = swift_task_alloc();
  v9 = type metadata accessor for Date();
  v2[220] = v9;
  v10 = *(v9 - 8);
  v2[221] = v10;
  v11 = *(v10 + 64) + 15;
  v2[222] = swift_task_alloc();

  return _swift_task_switch(sub_100E99184, 0, 0);
}

void sub_100E99184()
{
  v1 = sub_100907E70(_swiftEmptyArrayStorage);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_100FFACA0(1702195828, 0xE400000000000000, 0xD00000000000001BLL, 0x800000010134EA20, isUniquelyReferenced_nonNull_native);
  v3 = [objc_opt_self() currentDevice];
  if (!v3)
  {
    __break(1u);
    goto LABEL_12;
  }

  v4 = v3;
  v5 = [v3 serverFriendlyDescription];

  if (!v5)
  {
LABEL_12:
    __break(1u);
    return;
  }

  v6 = *(v0 + 1776);
  v7 = *(v0 + 1768);
  v8 = *(v0 + 1760);
  v9 = *(v0 + 1752);
  v55 = *(v0 + 1744);
  v56 = *(v0 + 1736);
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  v13 = swift_isUniquelyReferenced_nonNull_native();
  sub_100FFACA0(v10, v12, 0xD000000000000011, 0x800000010134EA40, v13);
  v14 = v1;
  Date.init()();
  v15 = Date.epoch.getter();
  (*(v7 + 8))(v6, v8);
  *(v0 + 1672) = v15;
  v16 = dispatch thunk of CustomStringConvertible.description.getter();
  v18 = v17;
  v19 = swift_isUniquelyReferenced_nonNull_native();
  sub_100FFACA0(v16, v18, 0xD000000000000015, 0x800000010134EA60, v19);
  *(v0 + 1680) = 1;
  v20 = dispatch thunk of CustomStringConvertible.description.getter();
  v22 = v21;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v24 = sub_100FFACA0(v20, v22, 0xD000000000000013, 0x800000010134EA80, v23);
  v25 = v14;
  v26 = sub_100EB2DF0(v24);
  v28 = v27;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  sub_100FFACA0(v26, v28, 0x6567412D72657355, 0xEA0000000000746ELL, v29);
  static Locale.current.getter();
  v30 = Locale.acceptLanguageCode.getter();
  v32 = v31;
  (*(v55 + 8))(v9, v56);
  v33 = swift_isUniquelyReferenced_nonNull_native();
  sub_100FFACA0(v30, v32, 0x4C2D747065636341, 0xEF65676175676E61, v33);
  v34 = v25;
  if (qword_101694F58 != -1)
  {
    swift_once();
  }

  v35 = qword_10177C218;
  v36 = [objc_opt_self() sharedInstance];
  v37 = [v36 isInternalBuild];

  if (v37)
  {
    v38 = String._bridgeToObjectiveC()();
    v39 = [v35 BOOLForKey:v38];

    if (v39)
    {
      v40 = swift_isUniquelyReferenced_nonNull_native();
      sub_100FFACA0(0x7465722C6C616572, 0xEF302D726F727245, 0xD000000000000012, 0x800000010134F950, v40);
    }
  }

  *(v0 + 1784) = v34;
  v41 = *(v0 + 1696);
  sub_10093DFCC(v41, v0 + 1408);
  sub_100E98C80(v41, v0 + 16);
  sub_100E9A558(v41);
  v42 = type metadata accessor for JSONEncoder();
  v43 = *(v42 + 48);
  v44 = *(v42 + 52);
  swift_allocObject();
  *(v0 + 1792) = JSONEncoder.init()();
  v45 = *(v0 + 224);
  *(v0 + 440) = *(v0 + 208);
  *(v0 + 456) = v45;
  *(v0 + 472) = *(v0 + 240);
  v46 = *(v0 + 160);
  *(v0 + 376) = *(v0 + 144);
  *(v0 + 392) = v46;
  v47 = *(v0 + 192);
  *(v0 + 408) = *(v0 + 176);
  *(v0 + 424) = v47;
  v48 = *(v0 + 96);
  *(v0 + 312) = *(v0 + 80);
  *(v0 + 328) = v48;
  v49 = *(v0 + 128);
  *(v0 + 344) = *(v0 + 112);
  *(v0 + 360) = v49;
  v50 = *(v0 + 32);
  *(v0 + 248) = *(v0 + 16);
  *(v0 + 264) = v50;
  v51 = *(v0 + 64);
  *(v0 + 280) = *(v0 + 48);
  *(v0 + 296) = v51;
  sub_100E9A5AC();
  v52 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  *(v0 + 1800) = 0;
  *(v0 + 1808) = v52;
  *(v0 + 1816) = v53;
  sub_100017D5C(v52, v53);
  v54 = swift_task_alloc();
  *(v0 + 1824) = v54;
  *v54 = v0;
  v54[1] = sub_100E99864;

  sub_100EA6FC4();
}

uint64_t sub_100E99864(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 1824);
  v6 = *v2;
  *(v3 + 1832) = a1;
  *(v3 + 1840) = a2;

  return _swift_task_switch(sub_100E99968, 0, 0);
}

uint64_t sub_100E99968()
{
  v1 = *(v0 + 1840);
  v2 = *(v0 + 1832);
  v3 = *(v0 + 1800);
  v4 = *(v0 + 1728);
  v5 = *(v0 + 1720);
  v6 = *(v0 + 1712);
  *(v0 + 1656) = v2;
  *(v0 + 1664) = v1;
  *(v0 + 1640) = &type metadata for Data;
  *(v0 + 1648) = &protocol witness table for Data;
  *(v0 + 1616) = *(v0 + 1808);
  v7 = sub_1000035D0((v0 + 1616), &type metadata for Data);
  v8 = *v7;
  v9 = v7[1];
  sub_100017D5C(v2, v1);
  sub_100017DB0(v8, v9);
  sub_100016590(v2, v1);
  sub_100007BAC((v0 + 1616));
  *(v0 + 1848) = *(v0 + 1656);
  *(v0 + 1856) = *(v0 + 1664);
  (*(v5 + 104))(v4, enum case for HashAlgorithm.sha256(_:), v6);
  v10 = Data.hash(algorithm:)();
  v12 = v11;
  *(v0 + 1864) = v10;
  *(v0 + 1872) = v11;
  (*(v5 + 8))(v4, v6);
  v13 = swift_task_alloc();
  *(v0 + 1880) = v13;
  *v13 = v0;
  v13[1] = sub_100E99B20;
  v14 = *(v0 + 1704);

  return sub_100EA87F4(v10, v12, v14);
}

uint64_t sub_100E99B20(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 1880);
  v6 = *v2;
  *(*v2 + 1888) = v1;

  if (v1)
  {
    v7 = sub_100E9A08C;
  }

  else
  {
    v8 = v4[234];
    v9 = v4[233];
    v4[237] = a1;
    sub_100016590(v9, v8);
    v7 = sub_100E99C54;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100E99C54()
{
  v53 = v0;
  v1 = v0[237];
  v2 = v0[236];
  v3 = v0[232];
  v4 = v0[231];
  v5 = v0[223];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v52 = v5;
  sub_10028709C(v1, sub_100EB00A4, 0, isUniquelyReferenced_nonNull_native, &v52);

  sub_100016590(v4, v3);
  v7 = v52;
  static os_log_type_t.debug.getter();
  if (qword_1016950C8 != -1)
  {
LABEL_17:
    swift_once();
  }

  os_log(_:dso:log:_:_:)();
  v8 = v7 + 8;
  v9 = -1;
  v10 = -1 << *(v7 + 32);
  if (-v10 < 64)
  {
    v9 = ~(-1 << -v10);
  }

  v11 = v9 & v7[8];
  v12 = (63 - v10) >> 6;
  v49 = v7;

  v13 = 0;
  while (v11)
  {
    v14 = v13;
    v15 = v49;
LABEL_11:
    v16 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v17 = (v14 << 10) | (16 * v16);
    v18 = v15[7];
    v19 = (v15[6] + v17);
    v20 = *v19;
    v21 = v19[1];
    v22 = (v18 + v17);
    v23 = v22[1];
    v50 = *v22;

    static os_log_type_t.debug.getter();
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_10138BBE0;
    v7 = &type metadata for String;
    *(v24 + 56) = &type metadata for String;
    v25 = sub_100008C00();
    *(v24 + 32) = v20;
    *(v24 + 40) = v21;
    *(v24 + 96) = &type metadata for String;
    *(v24 + 104) = v25;
    *(v24 + 64) = v25;
    *(v24 + 72) = v50;
    *(v24 + 80) = v23;
    os_log(_:dso:log:_:_:)();
  }

  v15 = v49;
  while (1)
  {
    v14 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
      goto LABEL_17;
    }

    if (v14 >= v12)
    {
      break;
    }

    v11 = v8[v14];
    ++v13;
    if (v11)
    {
      v13 = v14;
      goto LABEL_11;
    }
  }

  v26 = *(v48 + 1816);
  v27 = *(v48 + 1808);
  v28 = *(v48 + 1792);
  v51 = *(v48 + 1704);
  v29 = *(v48 + 1696);

  static os_log_type_t.debug.getter();
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_101385D80;
  v31 = *(v48 + 176);
  *(v48 + 1120) = *(v48 + 192);
  v32 = *(v48 + 224);
  *(v48 + 1136) = *(v48 + 208);
  *(v48 + 1152) = v32;
  v33 = *(v48 + 112);
  *(v48 + 1056) = *(v48 + 128);
  v34 = *(v48 + 160);
  *(v48 + 1072) = *(v48 + 144);
  *(v48 + 1168) = *(v48 + 240);
  *(v48 + 1088) = v34;
  *(v48 + 1104) = v31;
  v35 = *(v48 + 96);
  *(v48 + 1008) = *(v48 + 80);
  *(v48 + 1024) = v35;
  *(v48 + 1040) = v33;
  v36 = *(v48 + 32);
  *(v48 + 944) = *(v48 + 16);
  *(v48 + 960) = v36;
  v37 = *(v48 + 64);
  *(v48 + 976) = *(v48 + 48);
  *(v48 + 992) = v37;
  sub_100E9A600(v48 + 16, v48 + 1176);
  v38 = String.init<A>(describing:)();
  v40 = v39;
  *(v30 + 56) = &type metadata for String;
  *(v30 + 64) = sub_100008C00();
  *(v30 + 32) = v38;
  *(v30 + 40) = v40;
  os_log(_:dso:log:_:_:)();

  sub_100E9A558(v29);

  sub_100E9A638(v48 + 16);

  sub_100017D5C(v27, v26);

  sub_100016590(v27, v26);
  v41 = *(v48 + 1816);
  v42 = *(v48 + 1808);
  v43 = *(v48 + 1776);
  v44 = *(v48 + 1752);
  v45 = *(v48 + 1728);

  v46 = *(v48 + 8);

  return v46(v49, v42, v41);
}

uint64_t sub_100E9A08C()
{
  v1 = *(v0 + 1856);
  v2 = *(v0 + 1848);
  sub_100016590(*(v0 + 1864), *(v0 + 1872));
  sub_100016590(v2, v1);
  static os_log_type_t.error.getter();
  v3 = &qword_101695000;
  if (qword_1016950C8 != -1)
  {
LABEL_19:
    swift_once();
  }

  v4 = *(v0 + 1888);
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_101385D80;
  *(v0 + 1688) = v4;
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  v6 = String.init<A>(describing:)();
  v8 = v7;
  *(v5 + 56) = &type metadata for String;
  v48 = sub_100008C00();
  *(v5 + 64) = v48;
  *(v5 + 32) = v6;
  *(v5 + 40) = v8;
  os_log(_:dso:log:_:_:)();

  v47 = v0;
  v0 = *(v0 + 1784);
  static os_log_type_t.debug.getter();
  if (*(v3 + 200) != -1)
  {
    swift_once();
  }

  os_log(_:dso:log:_:_:)();
  v9 = v0 + 64;
  v10 = -1;
  v11 = -1 << *(v0 + 32);
  if (-v11 < 64)
  {
    v10 = ~(-1 << -v11);
  }

  v3 = v10 & *(v0 + 64);
  v12 = (63 - v11) >> 6;
  v49 = v0;

  v13 = 0;
  while (v3)
  {
    v14 = v13;
    v15 = v49;
LABEL_13:
    v16 = __clz(__rbit64(v3));
    v3 &= v3 - 1;
    v17 = (v14 << 10) | (16 * v16);
    v18 = *(v15 + 56);
    v19 = (*(v15 + 48) + v17);
    v20 = *v19;
    v21 = v19[1];
    v22 = (v18 + v17);
    v0 = *v22;
    v23 = v22[1];

    static os_log_type_t.debug.getter();
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_10138BBE0;
    *(v24 + 56) = &type metadata for String;
    *(v24 + 64) = v48;
    *(v24 + 32) = v20;
    *(v24 + 40) = v21;
    *(v24 + 96) = &type metadata for String;
    *(v24 + 104) = v48;
    *(v24 + 72) = v0;
    *(v24 + 80) = v23;
    os_log(_:dso:log:_:_:)();
  }

  v15 = v49;
  while (1)
  {
    v14 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
      goto LABEL_19;
    }

    if (v14 >= v12)
    {
      break;
    }

    v3 = *(v9 + 8 * v14);
    ++v13;
    if (v3)
    {
      v13 = v14;
      goto LABEL_13;
    }
  }

  v25 = *(v47 + 1816);
  v26 = *(v47 + 1808);
  v27 = *(v47 + 1792);
  v28 = *(v47 + 1704);
  v29 = *(v47 + 1696);

  static os_log_type_t.debug.getter();
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_101385D80;
  v31 = *(v47 + 176);
  *(v47 + 1120) = *(v47 + 192);
  v32 = *(v47 + 224);
  *(v47 + 1136) = *(v47 + 208);
  *(v47 + 1152) = v32;
  v33 = *(v47 + 112);
  *(v47 + 1056) = *(v47 + 128);
  v34 = *(v47 + 160);
  *(v47 + 1072) = *(v47 + 144);
  *(v47 + 1168) = *(v47 + 240);
  *(v47 + 1088) = v34;
  *(v47 + 1104) = v31;
  v35 = *(v47 + 96);
  *(v47 + 1008) = *(v47 + 80);
  *(v47 + 1024) = v35;
  *(v47 + 1040) = v33;
  v36 = *(v47 + 32);
  *(v47 + 944) = *(v47 + 16);
  *(v47 + 960) = v36;
  v37 = *(v47 + 64);
  *(v47 + 976) = *(v47 + 48);
  *(v47 + 992) = v37;
  sub_100E9A600(v47 + 16, v47 + 1176);
  v38 = String.init<A>(describing:)();
  *(v30 + 56) = &type metadata for String;
  *(v30 + 64) = v48;
  *(v30 + 32) = v38;
  *(v30 + 40) = v39;
  os_log(_:dso:log:_:_:)();

  sub_100E9A558(v29);

  sub_100E9A638(v47 + 16);

  sub_100017D5C(v26, v25);

  sub_100016590(v26, v25);
  v40 = *(v47 + 1816);
  v41 = *(v47 + 1808);
  v42 = *(v47 + 1776);
  v43 = *(v47 + 1752);
  v44 = *(v47 + 1728);

  v45 = *(v47 + 8);

  return v45(v49, v41, v40);
}

unint64_t sub_100E9A5AC()
{
  result = qword_1016BDD30;
  if (!qword_1016BDD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BDD30);
  }

  return result;
}

__n128 sub_100E9A668(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  v7 = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  result = a2[11];
  v11 = a2[12];
  v12 = a2[13];
  *(a1 + 224) = *(a2 + 28);
  *(a1 + 192) = v11;
  *(a1 + 208) = v12;
  *(a1 + 176) = result;
  return result;
}

uint64_t sub_100E9A6B4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 232))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 176);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100E9A6FC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0u;
    *(result + 216) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 232) = 1;
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
      *(result + 176) = (a2 - 1);
      return result;
    }

    *(result + 232) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100E9A794()
{
  result = qword_1016BDD40;
  if (!qword_1016BDD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BDD40);
  }

  return result;
}

unint64_t sub_100E9A7FC()
{
  result = qword_1016BDD48;
  if (!qword_1016BDD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BDD48);
  }

  return result;
}

unint64_t sub_100E9A854()
{
  result = qword_1016BDD50;
  if (!qword_1016BDD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BDD50);
  }

  return result;
}

unint64_t sub_100E9A8AC()
{
  result = qword_1016BDD58;
  if (!qword_1016BDD58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BDD58);
  }

  return result;
}

uint64_t sub_100E9A900(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4E6E6F6973736573 && a2 == 0xEC00000065636E6FLL;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x737574617473 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1684628325 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x644970696863 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x754E6C6169726573 && a2 == 0xEC0000007265626DLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7374726563 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x726F737365636361 && a2 == 0xED00006E67695379 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000101347DB0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000011 && 0x800000010134F970 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x69634572656E776FLL && a2 == 0xE900000000000064 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x69684372656E776FLL && a2 == 0xEB00000000644970 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x7372655663657073 && a2 == 0xEB000000006E6F69 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x657261776D726966 && a2 == 0xEF6E6F6973726556 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x49746375646F7270 && a2 == 0xE900000000000064 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x6449726F646E6576 && a2 == 0xE800000000000000)
  {

    return 14;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 14;
    }

    else
    {
      return 15;
    }
  }
}

uint64_t sub_100E9ADF4(_BYTE *a1, char *a2)
{
  v4 = sub_1000BC4D4(&qword_101697240, &unk_10138BDA0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v11 = &v15[-v10];
  v12 = *a2;
  v15[15] = *a1;
  v15[14] = v12;
  sub_100E9B43C();
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  sub_100E9B490(&qword_1016BDD70);
  LOBYTE(a2) = dispatch thunk of static Equatable.== infix(_:_:)();
  v13 = *(v5 + 8);
  v13(v9, v4);
  v13(v11, v4);
  return a2 & 1;
}

Swift::Int sub_100E9AF8C()
{
  v1 = sub_1000BC4D4(&qword_101697240, &unk_10138BDA0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v8[-v4];
  v6 = *v0;
  Hasher.init(_seed:)();
  v8[7] = v6;
  sub_100E9B43C();
  dispatch thunk of RawRepresentable.rawValue.getter();
  sub_100E9B490(&qword_1016BDD78);
  dispatch thunk of Hashable.hash(into:)();
  (*(v2 + 8))(v5, v1);
  return Hasher._finalize()();
}

uint64_t sub_100E9B0C4()
{
  v1 = sub_1000BC4D4(&qword_101697240, &unk_10138BDA0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v7[-v4];
  v7[15] = *v0;
  sub_100E9B43C();
  dispatch thunk of RawRepresentable.rawValue.getter();
  sub_100E9B490(&qword_1016BDD78);
  dispatch thunk of Hashable.hash(into:)();
  return (*(v2 + 8))(v5, v1);
}

Swift::Int sub_100E9B1EC()
{
  v1 = sub_1000BC4D4(&qword_101697240, &unk_10138BDA0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v8[-v4];
  v6 = *v0;
  Hasher.init(_seed:)();
  v8[7] = v6;
  sub_100E9B43C();
  dispatch thunk of RawRepresentable.rawValue.getter();
  sub_100E9B490(&qword_1016BDD78);
  dispatch thunk of Hashable.hash(into:)();
  (*(v2 + 8))(v5, v1);
  return Hasher._finalize()();
}

uint64_t sub_100E9B328@<X0>(char *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100E9B4E0(a1);
  *a2 = result;
  return result;
}

uint64_t sub_100E9B350()
{
  v1 = *v0;
  type metadata accessor for Characteristic();

  return Identifier.init(stringLiteral:)();
}

unint64_t sub_100E9B3E8()
{
  result = qword_1016BDD60;
  if (!qword_1016BDD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BDD60);
  }

  return result;
}

unint64_t sub_100E9B43C()
{
  result = qword_1016BDD68;
  if (!qword_1016BDD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BDD68);
  }

  return result;
}

uint64_t sub_100E9B490(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1000BC580(&qword_101697240, &unk_10138BDA0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100E9B4E0(char *a1)
{
  v2 = sub_1000BC4D4(&qword_101697240, &unk_10138BDA0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v17 - v8;
  (*(v3 + 16))(&v17 - v8, a1, v2);
  type metadata accessor for Characteristic();
  Identifier.init(stringLiteral:)();
  sub_100E9B490(&qword_1016BDD70);
  v10 = dispatch thunk of static Equatable.== infix(_:_:)();
  v11 = *(v3 + 8);
  v11(v7, v2);
  if (v10)
  {
    v11(a1, v2);
    v11(v9, v2);
    return 0;
  }

  else
  {
    Identifier.init(stringLiteral:)();
    v13 = dispatch thunk of static Equatable.== infix(_:_:)();
    v11(v7, v2);
    if (v13)
    {
      v11(a1, v2);
      v11(v9, v2);
      return 1;
    }

    else
    {
      Identifier.init(stringLiteral:)();
      v14 = dispatch thunk of static Equatable.== infix(_:_:)();
      v11(v7, v2);
      if (v14)
      {
        v11(a1, v2);
        v11(v9, v2);
        return 2;
      }

      else
      {
        Identifier.init(stringLiteral:)();
        v15 = dispatch thunk of static Equatable.== infix(_:_:)();
        v11(v7, v2);
        if (v15)
        {
          v11(a1, v2);
          v11(v9, v2);
          return 3;
        }

        else
        {
          Identifier.init(stringLiteral:)();
          v16 = dispatch thunk of static Equatable.== infix(_:_:)();
          v11(a1, v2);
          v11(v7, v2);
          v11(v9, v2);
          if (v16)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

uint64_t sub_100E9B888()
{
  v1 = v0;
  v2 = *(*(v0 + 280) + OBJC_IVAR____TtC12searchpartyd11BeaconStore_beaconKeyManagerLock);
  type metadata accessor for BeaconKeyManager(0);
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  v3 = *(v9 + OBJC_IVAR____TtC12searchpartyd16BeaconKeyManager_urlPublisher);

  v4 = swift_allocObject();
  swift_weakInit();
  v5 = swift_allocObject();
  *(v5 + 16) = sub_100E9BB0C;
  *(v5 + 24) = v4;
  swift_retain_n();
  sub_1000BC4D4(&qword_1016BDD80, &qword_1013ECFF8);
  sub_100E9BB1C();
  v6 = Publisher<>.sink(receiveValue:)();

  v7 = *(v1 + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_beaconKeyManagerURLChangedSubscription);
  *(v1 + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_beaconKeyManagerURLChangedSubscription) = v6;
  return sub_100A4E478(v7);
}

uint64_t sub_100E9BA10(uint64_t a1, char a2)
{
  v4 = sub_1000BC4D4(&qword_101699900, &qword_101411880);
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v8 = &v11 - v7;
  v9 = type metadata accessor for URL();
  (*(*(v9 - 8) + 16))(v8, a1, v9);
  v8[*(v5 + 56)] = a2;
  swift_beginAccess();
  swift_weakLoadStrong();

  return sub_100E9BB80(v8);
}

unint64_t sub_100E9BB1C()
{
  result = qword_1016BDD88;
  if (!qword_1016BDD88)
  {
    sub_1000BC580(&qword_1016BDD80, &qword_1013ECFF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BDD88);
  }

  return result;
}

uint64_t sub_100E9BB80(uint64_t a1)
{
  v2 = sub_1000BC4D4(&qword_101699900, &qword_101411880);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100E9BBE8()
{
  result = kFMIPLocatableStateReportedNotification;
  if (kFMIPLocatableStateReportedNotification)
  {
    result = static String._unconditionallyBridgeFromObjectiveC(_:)();
    qword_1016BDD90 = result;
    *algn_1016BDD98 = v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100E9BC20()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100014650;

  return sub_100E9BCB0();
}

uint64_t sub_100E9BCB0()
{
  v1[2] = v0;
  v1[3] = *v0;
  v2 = *(*(sub_1000BC4D4(&qword_101698C00, &qword_10138B570) - 8) + 64) + 15;
  v1[4] = swift_task_alloc();
  v3 = async function pointer to daemon.getter[1];
  v4 = swift_task_alloc();
  v1[5] = v4;
  *v4 = v1;
  v4[1] = sub_100E9BDA4;

  return daemon.getter();
}

uint64_t sub_100E9BDA4(uint64_t a1)
{
  v3 = *(*v1 + 40);
  v7 = *v1;
  *(*v1 + 48) = a1;

  type metadata accessor for Daemon();
  sub_1000196F0(&qword_1016969E0, &type metadata accessor for Daemon);
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100E9BEFC, v5, v4);
}

uint64_t sub_100E9BEFC()
{
  v1 = v0[6];
  v2 = v0[2];
  v0[7] = Daemon.darwinNotificationHandler.getter();

  return _swift_task_switch(sub_100E9BF74, v2, 0);
}

uint64_t sub_100E9BF74()
{
  if (qword_101694F48 != -1)
  {
    swift_once();
  }

  v1 = v0[2];
  v2 = v0[3];
  v3 = qword_1016BDD90;
  v4 = *algn_1016BDD98;
  v5 = swift_allocObject();
  v0[8] = v5;
  *(v5 + 16) = v1;
  *(v5 + 24) = v2;
  v6 = *(&async function pointer to dispatch thunk of DarwinNotificationHandler.listen(name:handler:) + 1);
  v10 = (&async function pointer to dispatch thunk of DarwinNotificationHandler.listen(name:handler:) + async function pointer to dispatch thunk of DarwinNotificationHandler.listen(name:handler:));

  v7 = swift_task_alloc();
  v0[9] = v7;
  *v7 = v0;
  v7[1] = sub_100E9C0B4;
  v8 = v0[7];

  return v10(v3, v4, &unk_1013ED070, v5);
}

uint64_t sub_100E9C0B4(uint64_t a1)
{
  v2 = *(*v1 + 72);
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 16);
  v6 = *v1;
  *(*v1 + 80) = a1;

  return _swift_task_switch(sub_100E9C1E8, v4, 0);
}

uint64_t sub_100E9C1E8()
{
  v1 = v0[10];
  v2 = v0[7];
  v3 = v0[4];
  v4 = type metadata accessor for TaskPriority();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v1;

  sub_100BB9ADC(0, 0, v3, &unk_1013ED080, v5);

  sub_10000B3A8(v3, &qword_101698C00, &qword_10138B570);

  v6 = v0[1];

  return v6();
}

uint64_t sub_100E9C318(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 32) = a2;
  *(v3 + 40) = a3;
  return _swift_task_switch(sub_100E9C338, 0, 0);
}

uint64_t sub_100E9C338()
{
  v5 = *(v0 + 32);
  *(v0 + 48) = *(v5 + 112);
  *(v0 + 16) = 0xD000000000000016;
  *(v0 + 24) = 0x8000000101372A20;
  v1 = swift_allocObject();
  *(v0 + 56) = v1;
  *(v1 + 16) = v5;

  sub_1000BC4D4(&qword_1016B1270, &qword_101390A00);
  sub_100E9D000();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000447EC, v3, v2);
}

uint64_t sub_100E9C428()
{
  v1 = *(*v0 + 24);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2(1);
}

uint64_t sub_100E9C520()
{
  *(v1 + 32) = v0;
  v2 = async function pointer to daemon.getter[1];
  v3 = swift_task_alloc();
  *(v1 + 40) = v3;
  *v3 = v1;
  v3[1] = sub_100E9C5B4;

  return daemon.getter();
}

uint64_t sub_100E9C5B4(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 40);
  v12 = *v1;
  *(v3 + 48) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 56) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for DeviceBeaconPayloadPublisher();
  v9 = sub_1000196F0(&qword_1016AA400, &type metadata accessor for Daemon);
  v10 = sub_1000196F0(&qword_101698D50, type metadata accessor for DeviceBeaconPayloadPublisher);
  *v6 = v12;
  v6[1] = sub_100E9C790;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100E9C790(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 56);
  v6 = *v2;
  v4[8] = a1;
  v4[9] = v1;

  if (v1)
  {
    v7 = v4[4];
    v8 = sub_100E9CCD8;
  }

  else
  {
    v9 = v4[6];

    v8 = sub_100E9C8C8;
    v7 = a1;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_100E9C8C8()
{
  v1 = *(v0[8] + 136);
  v0[2] = 0xD000000000000013;
  v0[3] = 0x800000010134CBD0;
  v2 = *(&async function pointer to dispatch thunk of AsyncKeyedThrottle.throttle(key:block:skipBlock:) + 1);
  v6 = &async function pointer to dispatch thunk of AsyncKeyedThrottle.throttle(key:block:skipBlock:) + async function pointer to dispatch thunk of AsyncKeyedThrottle.throttle(key:block:skipBlock:);

  v3 = swift_task_alloc();
  v0[10] = v3;
  *v3 = v0;
  v3[1] = sub_100E9C9D8;
  v4 = v0[8];

  return (v6)(v0 + 2, &unk_10139D750, v4, sub_100853598, 0);
}

uint64_t sub_100E9C9D8()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 64);
  v8 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v5 = *(v2 + 64);
    v6 = sub_100E9CB14;
  }

  else
  {
    v5 = *(v2 + 32);
    v6 = sub_100D3B7CC;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100E9CB30()
{
  v1 = v0[8];

  v2 = v0[11];
  if (qword_101694F40 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_1000076D4(v3, qword_10177C200);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138543362;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v4, v5, "Own device publish activity failed: %{public}@.", v6, 0xCu);
    sub_10000B3A8(v7, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_100E9CCD8()
{
  v1 = v0[6];

  v2 = v0[9];
  if (qword_101694F40 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_1000076D4(v3, qword_10177C200);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138543362;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v4, v5, "Own device publish activity failed: %{public}@.", v6, 0xCu);
    sub_10000B3A8(v7, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_100E9CEA4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100014650;

  return sub_100E9C318(a1, v5, v4);
}

uint64_t sub_100E9CF4C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100014650;

  return sub_1002ECF7C();
}

unint64_t sub_100E9D000()
{
  result = qword_101698E00;
  if (!qword_101698E00)
  {
    sub_1000BC580(&qword_1016B1270, &qword_101390A00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101698E00);
  }

  return result;
}

uint64_t sub_100E9D064(uint64_t a1, void *a2)
{
  v64 = type metadata accessor for HashAlgorithm();
  v4 = *(*(v64 - 8) + 64);
  result = __chkstk_darwin(v64);
  v63 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  if (v8)
  {
    v9 = (a1 + 32);
    v62 = enum case for HashAlgorithm.sha256(_:);
    v60 = (v6 + 8);
    v61 = (v6 + 104);
    do
    {
      v16 = *v9;
      v71 = v9[1];
      v17 = v16;
      v67 = v16;
      v18 = *(&v16 + 1);
      sub_100017D5C(v16, *(&v16 + 1));
      v69 = *(&v71 + 1);
      v70 = v71;
      sub_100017D5C(v71, *(&v71 + 1));
      v19 = v68;
      v20 = sub_100A7A194(v17, v18);
      if (v19)
      {
        goto LABEL_41;
      }

      v21 = sub_100A7829C(v20, 0);
      v68 = 0;
      v23 = v21;
      v24 = v22;
      CCECCryptorRelease();
      v25 = v24 >> 62;
      if ((v24 >> 62) > 1)
      {
        if (v25 != 2)
        {
          goto LABEL_47;
        }

        v28 = *(v23 + 16);
        v27 = *(v23 + 24);
        v29 = __OFSUB__(v27, v28);
        v26 = v27 - v28;
        if (v29)
        {
          goto LABEL_32;
        }
      }

      else if (v25)
      {
        LODWORD(v26) = HIDWORD(v23) - v23;
        if (__OFSUB__(HIDWORD(v23), v23))
        {
          goto LABEL_31;
        }

        v26 = v26;
      }

      else
      {
        v26 = BYTE6(v24);
      }

      v65 = v9;
      v66 = v8;
      if (v26 != 28)
      {
        goto LABEL_33;
      }

      v31 = v63;
      v30 = v64;
      (*v61)(v63, v62, v64);
      v32 = Data.hash(algorithm:)();
      v34 = v33;
      sub_100016590(v23, v24);
      (*v60)(v31, v30);
      sub_100017D5C(v17, v18);
      sub_100017D5C(v70, v69);
      v35 = *a2;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v72[0] = *a2;
      v24 = v72[0];
      v37 = a2;
      *a2 = 0x8000000000000000;
      v39 = sub_100772794(v32, v34);
      v25 = *(v24 + 16);
      v40 = (v38 & 1) == 0;
      v41 = v25 + v40;
      if (__OFADD__(v25, v40))
      {
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        if (v25 == 1)
        {
          LODWORD(v25) = HIDWORD(v23) - v23;
          if (!__OFSUB__(HIDWORD(v23), v23))
          {
            v58 = v25;
            goto LABEL_48;
          }

          __break(1u);
        }

        if (v25 == 2)
        {
          v50 = *(v23 + 16);
          v49 = *(v23 + 24);
          v58 = v49 - v50;
          if (__OFSUB__(v49, v50))
          {
            __break(1u);
LABEL_41:
            v68 = v19;
            static os_log_type_t.error.getter();
            if (qword_101694BE0 != -1)
            {
              swift_once();
            }

            sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
            v23 = swift_allocObject();
            *(v23 + 16) = xmmword_101385D80;
            v72[0] = v68;
            swift_errorRetain();
            sub_1000BC4D4(&qword_101696960, &unk_10138B220);
            v51 = String.init<A>(describing:)();
            v53 = v52;
            *(v23 + 56) = &type metadata for String;
            *(v23 + 64) = sub_100008C00();
            *(v23 + 32) = v51;
            *(v23 + 40) = v53;
            os_log(_:dso:log:_:_:)();

            sub_1001BAF88();
            v54 = swift_allocError();
            *v55 = 0;
            swift_willThrow();

            goto LABEL_45;
          }
        }

        else
        {
          v58 = BYTE6(v24);
        }

        while (1)
        {
LABEL_48:
          sub_100018350();
          v54 = swift_allocError();
          *v57 = 28;
          *(v57 + 8) = v58;
          *(v57 + 16) = 0;
          swift_willThrow();
          sub_100016590(v23, v24);
LABEL_45:
          v72[0] = 0;
          v72[1] = 0xE000000000000000;
          v24 = v72;
          _StringGuts.grow(_:)(35);
          v56._object = 0x800000010134CB30;
          v56._countAndFlagsBits = 0xD000000000000021;
          String.append(_:)(v56);
          v72[3] = v54;
          sub_1000BC4D4(&qword_101696960, &unk_10138B220);
          _print_unlocked<A, B>(_:_:)();
          _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
LABEL_46:
          KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
LABEL_47:
          v58 = 0;
        }
      }

      v23 = v38;
      if (*(v24 + 24) >= v41)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v44 = v72[0];
          if (v38)
          {
            goto LABEL_3;
          }
        }

        else
        {
          v24 = v72;
          sub_101009E2C();
          v44 = v72[0];
          if (v23)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
        sub_100FEFFD8(v41, isUniquelyReferenced_nonNull_native);
        v24 = v72[0];
        v42 = sub_100772794(v32, v34);
        if ((v23 & 1) != (v43 & 1))
        {
          goto LABEL_46;
        }

        v39 = v42;
        v44 = v72[0];
        if (v23)
        {
LABEL_3:
          v10 = (v44[7] + 32 * v39);
          v11 = *v10;
          v12 = v10[1];
          v13 = v10[2];
          v14 = v10[3];
          v15 = v71;
          *v10 = v67;
          *(v10 + 1) = v15;
          sub_100016590(v11, v12);
          sub_100016590(v13, v14);
          sub_100016590(v32, v34);
          goto LABEL_4;
        }
      }

      v44[(v39 >> 6) + 8] |= 1 << v39;
      v45 = (v44[6] + 16 * v39);
      *v45 = v32;
      v45[1] = v34;
      v46 = (v44[7] + 32 * v39);
      v47 = v71;
      *v46 = v67;
      v46[1] = v47;
      v48 = v44[2];
      v29 = __OFADD__(v48, 1);
      v25 = v48 + 1;
      if (v29)
      {
        goto LABEL_30;
      }

      v44[2] = v25;
LABEL_4:
      a2 = v37;
      *v37 = v44;
      sub_100016590(v17, v18);
      result = sub_100016590(v70, v69);
      v9 = v65 + 2;
      v8 = v66 - 1;
    }

    while (v66 != 1);
  }

  return result;
}

uint64_t sub_100E9D67C()
{
  v1 = type metadata accessor for String.Encoding();
  v0[2] = v1;
  v2 = *(v1 - 8);
  v0[3] = v2;
  v3 = *(v2 + 64) + 15;
  v0[4] = swift_task_alloc();
  v4 = *(*(sub_1000BC4D4(&qword_1016BDED8, &unk_1013ED120) - 8) + 64) + 15;
  v5 = swift_task_alloc();
  v0[5] = v5;
  v6 = type metadata accessor for SearchpartyAccount();
  v0[6] = v6;
  v7 = *(v6 - 8);
  v0[7] = v7;
  v8 = *(v7 + 64) + 15;
  v0[8] = swift_task_alloc();
  v9 = async function pointer to static AppleAccount.searchpartyAccount.getter[1];
  v10 = swift_task_alloc();
  v0[9] = v10;
  *v10 = v0;
  v10[1] = sub_100E9D808;

  return static AppleAccount.searchpartyAccount.getter(v5);
}

uint64_t sub_100E9D808()
{
  v2 = *(*v1 + 72);
  v5 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = sub_100E9DC64;
  }

  else
  {
    v3 = sub_100E9D91C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100E9D91C()
{
  v33 = v0;
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[5];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_10000B3A8(v3, &qword_1016BDED8, &unk_1013ED120);
  }

  else
  {
    (*(v2 + 32))(v0[8], v3, v1);
    v4 = RequestCredential.authHeaders.getter();
    if (*(v4 + 16))
    {
      v5 = sub_100771D58(0x7A69726F68747541, 0xED00006E6F697461);
      v7 = v0[7];
      v6 = v0[8];
      v8 = v0[6];
      if (v9)
      {
        v11 = v0[3];
        v10 = v0[4];
        v12 = v0[2];
        v13 = (*(v4 + 56) + 16 * v5);
        v14 = *v13;
        v15 = v13[1];

        static String.Encoding.utf8.getter();
        v16 = String.data(using:allowLossyConversion:)();
        v18 = v17;

        (*(v11 + 8))(v10, v12);
        (*(v7 + 8))(v6, v8);
        if (v18 >> 60 != 15)
        {
          goto LABEL_14;
        }
      }

      else
      {

        (*(v7 + 8))(v6, v8);
      }
    }

    else
    {
      v20 = v0[7];
      v19 = v0[8];
      v21 = v0[6];

      (*(v20 + 8))(v19, v21);
    }
  }

  if (qword_1016951C0 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  sub_1000076D4(v22, qword_10177C548);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v32 = v26;
    *v25 = 136446210;
    *(v25 + 4) = sub_1000136BC(0xD000000000000023, 0x8000000101372CA0, &v32);
    _os_log_impl(&_mh_execute_header, v23, v24, "%{public}s Could not read credential data.", v25, 0xCu);
    sub_100007BAC(v26);
  }

  v16 = 0;
  v18 = 0xC000000000000000;
LABEL_14:
  v27 = v0[8];
  v29 = v0[4];
  v28 = v0[5];

  v30 = v0[1];

  return v30(v16, v18);
}

uint64_t sub_100E9DC64()
{
  v17 = v0;
  if (qword_1016951C0 != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_10177C548);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[10];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v7 = 136446466;
    *(v7 + 4) = sub_1000136BC(0xD000000000000023, 0x8000000101372CA0, &v16);
    *(v7 + 12) = 2114;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v10;
    *v8 = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s Cannot get authorization header %{public}@.", v7, 0x16u);
    sub_10000B3A8(v8, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v9);
  }

  else
  {
  }

  v11 = v0[8];
  v12 = v0[4];
  v13 = v0[5];

  v14 = v0[1];

  return v14(0, 0xC000000000000000);
}

uint64_t sub_100E9DE8C()
{
  v1 = type metadata accessor for String.Encoding();
  v0[2] = v1;
  v2 = *(v1 - 8);
  v0[3] = v2;
  v3 = *(v2 + 64) + 15;
  v0[4] = swift_task_alloc();
  v4 = *(*(sub_1000BC4D4(&qword_1016BDED8, &unk_1013ED120) - 8) + 64) + 15;
  v5 = swift_task_alloc();
  v0[5] = v5;
  v6 = type metadata accessor for SearchpartyAccount();
  v0[6] = v6;
  v7 = *(v6 - 8);
  v0[7] = v7;
  v8 = *(v7 + 64) + 15;
  v0[8] = swift_task_alloc();
  v9 = async function pointer to static AppleAccount.searchpartyAccount.getter[1];
  v10 = swift_task_alloc();
  v0[9] = v10;
  *v10 = v0;
  v10[1] = sub_100E9E018;

  return static AppleAccount.searchpartyAccount.getter(v5);
}

uint64_t sub_100E9E018()
{
  v2 = *(*v1 + 72);
  v5 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = sub_100E9E474;
  }

  else
  {
    v3 = sub_100E9E12C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100E9E12C()
{
  v33 = v0;
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[5];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_10000B3A8(v3, &qword_1016BDED8, &unk_1013ED120);
  }

  else
  {
    (*(v2 + 32))(v0[8], v3, v1);
    v4 = RequestCredential.authHeaders.getter();
    if (*(v4 + 16))
    {
      v5 = sub_100771D58(0x7A69726F68747541, 0xED00006E6F697461);
      v7 = v0[7];
      v6 = v0[8];
      v8 = v0[6];
      if (v9)
      {
        v11 = v0[3];
        v10 = v0[4];
        v12 = v0[2];
        v13 = (*(v4 + 56) + 16 * v5);
        v14 = *v13;
        v15 = v13[1];

        static String.Encoding.utf8.getter();
        v16 = String.data(using:allowLossyConversion:)();
        v18 = v17;

        (*(v11 + 8))(v10, v12);
        (*(v7 + 8))(v6, v8);
        if (v18 >> 60 != 15)
        {
          goto LABEL_14;
        }
      }

      else
      {

        (*(v7 + 8))(v6, v8);
      }
    }

    else
    {
      v20 = v0[7];
      v19 = v0[8];
      v21 = v0[6];

      (*(v20 + 8))(v19, v21);
    }
  }

  if (qword_1016951C0 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  sub_1000076D4(v22, qword_10177C548);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v32 = v26;
    *v25 = 136446210;
    *(v25 + 4) = sub_1000136BC(0xD000000000000010, 0x8000000101372DA0, &v32);
    _os_log_impl(&_mh_execute_header, v23, v24, "%{public}s Could not read credential data.", v25, 0xCu);
    sub_100007BAC(v26);
  }

  v16 = 0;
  v18 = 0xC000000000000000;
LABEL_14:
  v27 = v0[8];
  v29 = v0[4];
  v28 = v0[5];

  v30 = v0[1];

  return v30(v16, v18);
}

uint64_t sub_100E9E474()
{
  v17 = v0;
  if (qword_1016951C0 != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_10177C548);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[10];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v7 = 136446466;
    *(v7 + 4) = sub_1000136BC(0xD000000000000010, 0x8000000101372DA0, &v16);
    *(v7 + 12) = 2114;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v10;
    *v8 = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s Cannot get authorization header %{public}@.", v7, 0x16u);
    sub_10000B3A8(v8, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v9);
  }

  else
  {
  }

  v11 = v0[8];
  v12 = v0[4];
  v13 = v0[5];

  v14 = v0[1];

  return v14(0, 0xC000000000000000);
}

uint64_t sub_100E9E69C()
{
  v1 = type metadata accessor for String.Encoding();
  v0[2] = v1;
  v2 = *(v1 - 8);
  v0[3] = v2;
  v3 = *(v2 + 64) + 15;
  v0[4] = swift_task_alloc();
  v4 = *(*(sub_1000BC4D4(&qword_1016BDED8, &unk_1013ED120) - 8) + 64) + 15;
  v5 = swift_task_alloc();
  v0[5] = v5;
  v6 = type metadata accessor for SearchpartyAccount();
  v0[6] = v6;
  v7 = *(v6 - 8);
  v0[7] = v7;
  v8 = *(v7 + 64) + 15;
  v0[8] = swift_task_alloc();
  v9 = async function pointer to static AppleAccount.searchpartyAccount.getter[1];
  v10 = swift_task_alloc();
  v0[9] = v10;
  *v10 = v0;
  v10[1] = sub_100E9E828;

  return static AppleAccount.searchpartyAccount.getter(v5);
}

uint64_t sub_100E9E828()
{
  v2 = *(*v1 + 72);
  v5 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = sub_100E9EC84;
  }

  else
  {
    v3 = sub_100E9E93C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100E9E93C()
{
  v33 = v0;
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[5];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_10000B3A8(v3, &qword_1016BDED8, &unk_1013ED120);
  }

  else
  {
    (*(v2 + 32))(v0[8], v3, v1);
    v4 = RequestCredential.authHeaders.getter();
    if (*(v4 + 16))
    {
      v5 = sub_100771D58(0x7A69726F68747541, 0xED00006E6F697461);
      v7 = v0[7];
      v6 = v0[8];
      v8 = v0[6];
      if (v9)
      {
        v11 = v0[3];
        v10 = v0[4];
        v12 = v0[2];
        v13 = (*(v4 + 56) + 16 * v5);
        v14 = *v13;
        v15 = v13[1];

        static String.Encoding.utf8.getter();
        v16 = String.data(using:allowLossyConversion:)();
        v18 = v17;

        (*(v11 + 8))(v10, v12);
        (*(v7 + 8))(v6, v8);
        if (v18 >> 60 != 15)
        {
          goto LABEL_14;
        }
      }

      else
      {

        (*(v7 + 8))(v6, v8);
      }
    }

    else
    {
      v20 = v0[7];
      v19 = v0[8];
      v21 = v0[6];

      (*(v20 + 8))(v19, v21);
    }
  }

  if (qword_1016951C0 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  sub_1000076D4(v22, qword_10177C548);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v32 = v26;
    *v25 = 136446210;
    *(v25 + 4) = sub_1000136BC(0xD000000000000020, 0x8000000101372CD0, &v32);
    _os_log_impl(&_mh_execute_header, v23, v24, "%{public}s Could not read credential data.", v25, 0xCu);
    sub_100007BAC(v26);
  }

  v16 = 0;
  v18 = 0xC000000000000000;
LABEL_14:
  v27 = v0[8];
  v29 = v0[4];
  v28 = v0[5];

  v30 = v0[1];

  return v30(v16, v18);
}

uint64_t sub_100E9EC84()
{
  v17 = v0;
  if (qword_1016951C0 != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_10177C548);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[10];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v7 = 136446466;
    *(v7 + 4) = sub_1000136BC(0xD000000000000020, 0x8000000101372CD0, &v16);
    *(v7 + 12) = 2114;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v10;
    *v8 = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s Cannot get authorization header %{public}@.", v7, 0x16u);
    sub_10000B3A8(v8, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v9);
  }

  else
  {
  }

  v11 = v0[8];
  v12 = v0[4];
  v13 = v0[5];

  v14 = v0[1];

  return v14(0, 0xC000000000000000);
}

uint64_t sub_100E9EEAC()
{
  v1 = type metadata accessor for String.Encoding();
  v0[2] = v1;
  v2 = *(v1 - 8);
  v0[3] = v2;
  v3 = *(v2 + 64) + 15;
  v0[4] = swift_task_alloc();
  v4 = *(*(sub_1000BC4D4(&qword_1016BDED8, &unk_1013ED120) - 8) + 64) + 15;
  v5 = swift_task_alloc();
  v0[5] = v5;
  v6 = type metadata accessor for SearchpartyAccount();
  v0[6] = v6;
  v7 = *(v6 - 8);
  v0[7] = v7;
  v8 = *(v7 + 64) + 15;
  v0[8] = swift_task_alloc();
  v9 = async function pointer to static AppleAccount.searchpartyAccount.getter[1];
  v10 = swift_task_alloc();
  v0[9] = v10;
  *v10 = v0;
  v10[1] = sub_100E9F038;

  return static AppleAccount.searchpartyAccount.getter(v5);
}

uint64_t sub_100E9F038()
{
  v2 = *(*v1 + 72);
  v5 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = sub_100E9F494;
  }

  else
  {
    v3 = sub_100E9F14C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100E9F14C()
{
  v33 = v0;
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[5];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_10000B3A8(v3, &qword_1016BDED8, &unk_1013ED120);
  }

  else
  {
    (*(v2 + 32))(v0[8], v3, v1);
    v4 = RequestCredential.authHeaders.getter();
    if (*(v4 + 16))
    {
      v5 = sub_100771D58(0x7A69726F68747541, 0xED00006E6F697461);
      v7 = v0[7];
      v6 = v0[8];
      v8 = v0[6];
      if (v9)
      {
        v11 = v0[3];
        v10 = v0[4];
        v12 = v0[2];
        v13 = (*(v4 + 56) + 16 * v5);
        v14 = *v13;
        v15 = v13[1];

        static String.Encoding.utf8.getter();
        v16 = String.data(using:allowLossyConversion:)();
        v18 = v17;

        (*(v11 + 8))(v10, v12);
        (*(v7 + 8))(v6, v8);
        if (v18 >> 60 != 15)
        {
          goto LABEL_14;
        }
      }

      else
      {

        (*(v7 + 8))(v6, v8);
      }
    }

    else
    {
      v20 = v0[7];
      v19 = v0[8];
      v21 = v0[6];

      (*(v20 + 8))(v19, v21);
    }
  }

  if (qword_1016951C0 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  sub_1000076D4(v22, qword_10177C548);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v32 = v26;
    *v25 = 136446210;
    *(v25 + 4) = sub_1000136BC(0xD00000000000001ELL, 0x8000000101372D00, &v32);
    _os_log_impl(&_mh_execute_header, v23, v24, "%{public}s Could not read credential data.", v25, 0xCu);
    sub_100007BAC(v26);
  }

  v16 = 0;
  v18 = 0xC000000000000000;
LABEL_14:
  v27 = v0[8];
  v29 = v0[4];
  v28 = v0[5];

  v30 = v0[1];

  return v30(v16, v18);
}

uint64_t sub_100E9F494()
{
  v17 = v0;
  if (qword_1016951C0 != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_10177C548);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[10];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v7 = 136446466;
    *(v7 + 4) = sub_1000136BC(0xD00000000000001ELL, 0x8000000101372D00, &v16);
    *(v7 + 12) = 2114;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v10;
    *v8 = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s Cannot get authorization header %{public}@.", v7, 0x16u);
    sub_10000B3A8(v8, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v9);
  }

  else
  {
  }

  v11 = v0[8];
  v12 = v0[4];
  v13 = v0[5];

  v14 = v0[1];

  return v14(0, 0xC000000000000000);
}

uint64_t sub_100E9F6BC()
{
  v1 = type metadata accessor for String.Encoding();
  v0[2] = v1;
  v2 = *(v1 - 8);
  v0[3] = v2;
  v3 = *(v2 + 64) + 15;
  v0[4] = swift_task_alloc();
  v4 = *(*(sub_1000BC4D4(&qword_1016BDED8, &unk_1013ED120) - 8) + 64) + 15;
  v5 = swift_task_alloc();
  v0[5] = v5;
  v6 = type metadata accessor for SearchpartyAccount();
  v0[6] = v6;
  v7 = *(v6 - 8);
  v0[7] = v7;
  v8 = *(v7 + 64) + 15;
  v0[8] = swift_task_alloc();
  v9 = async function pointer to static AppleAccount.searchpartyAccount.getter[1];
  v10 = swift_task_alloc();
  v0[9] = v10;
  *v10 = v0;
  v10[1] = sub_100E9F848;

  return static AppleAccount.searchpartyAccount.getter(v5);
}

uint64_t sub_100E9F848()
{
  v2 = *(*v1 + 72);
  v5 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = sub_100E9FCA4;
  }

  else
  {
    v3 = sub_100E9F95C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100E9F95C()
{
  v33 = v0;
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[5];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_10000B3A8(v3, &qword_1016BDED8, &unk_1013ED120);
  }

  else
  {
    (*(v2 + 32))(v0[8], v3, v1);
    v4 = RequestCredential.authHeaders.getter();
    if (*(v4 + 16))
    {
      v5 = sub_100771D58(0x7A69726F68747541, 0xED00006E6F697461);
      v7 = v0[7];
      v6 = v0[8];
      v8 = v0[6];
      if (v9)
      {
        v11 = v0[3];
        v10 = v0[4];
        v12 = v0[2];
        v13 = (*(v4 + 56) + 16 * v5);
        v14 = *v13;
        v15 = v13[1];

        static String.Encoding.utf8.getter();
        v16 = String.data(using:allowLossyConversion:)();
        v18 = v17;

        (*(v11 + 8))(v10, v12);
        (*(v7 + 8))(v6, v8);
        if (v18 >> 60 != 15)
        {
          goto LABEL_14;
        }
      }

      else
      {

        (*(v7 + 8))(v6, v8);
      }
    }

    else
    {
      v20 = v0[7];
      v19 = v0[8];
      v21 = v0[6];

      (*(v20 + 8))(v19, v21);
    }
  }

  if (qword_1016951C0 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  sub_1000076D4(v22, qword_10177C548);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v32 = v26;
    *v25 = 136446210;
    *(v25 + 4) = sub_1000136BC(0xD00000000000001ALL, 0x8000000101372E30, &v32);
    _os_log_impl(&_mh_execute_header, v23, v24, "%{public}s Could not read credential data.", v25, 0xCu);
    sub_100007BAC(v26);
  }

  v16 = 0;
  v18 = 0xC000000000000000;
LABEL_14:
  v27 = v0[8];
  v29 = v0[4];
  v28 = v0[5];

  v30 = v0[1];

  return v30(v16, v18);
}