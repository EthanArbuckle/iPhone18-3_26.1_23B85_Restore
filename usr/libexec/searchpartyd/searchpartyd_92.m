uint64_t sub_1009A1178(uint64_t a1, uint64_t a2)
{
  sub_10001F280(a1, v85);
  sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
  if (swift_dynamicCast())
  {
    v80 = v84[0];
    v81 = v84[1];
    v82 = v84[2];
    v83 = v84[3];
    if (qword_1016946B0 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_1000076D4(v5, qword_10177ACB0);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "Received pairing status.", v8, 2u);
    }

    v9 = v81;
    sub_100017D5C(v81, *(&v81 + 1));
    v10 = sub_1008CDF88(v81, *(&v81 + 1));
    if (v10)
    {
      v11 = v10;
      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v76 = v15;
        *v14 = 136446210;
        v16 = sub_1008CDD10(v11);
        v18 = sub_1000136BC(v16, v17, &v76);

        *(v14 + 4) = v18;
        _os_log_impl(&_mh_execute_header, v12, v13, "Pairing failed with status %{public}s", v14, 0xCu);
        sub_100007BAC(v15);
      }

      sub_100413200();
      swift_allocError();
      v20 = 4;
LABEL_20:
      *v19 = v20;
      swift_willThrow();
      return sub_1001DA6B0(&v80);
    }

    sub_100017D5C(v80, *(&v80 + 1));
    sub_100496254(v80, *(&v80 + 1), &v76);
    if (v2)
    {

      sub_1001DA704(&v80, &v76);
      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.error.getter();
      sub_1001DA6B0(&v80);
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v76 = v35;
        *v34 = 136315138;
        v36 = Data.hexString.getter();
        v38 = sub_1000136BC(v36, v37, &v76);

        *(v34 + 4) = v38;
        _os_log_impl(&_mh_execute_header, v32, v33, "Invalid C3: %s", v34, 0xCu);
        sub_100007BAC(v35);
      }

      sub_100413200();
      swift_allocError();
      v20 = 9;
      goto LABEL_20;
    }

    v75 = v76;
    v74 = v77;
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.default.getter();
    v41 = os_log_type_enabled(v39, v40);
    v86 = a2;
    if (v41)
    {
      bufa = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v76 = v73;
      *bufa = 136446210;
      v42 = sub_1008CDD10(0);
      v44 = sub_1000136BC(v42, v43, &v76);

      *(bufa + 4) = v44;
      _os_log_impl(&_mh_execute_header, v39, v40, "status: %{public}s", bufa, 0xCu);
      sub_100007BAC(v73);
    }

    sub_1001DA704(&v80, &v76);
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v45, v46))
    {
      sub_1001DA6B0(&v80);
LABEL_36:

      sub_1001DA704(&v80, &v76);
      v57 = Logger.logObject.getter();
      v58 = static os_log_type_t.default.getter();
      sub_1001DA6B0(&v80);
      if (os_log_type_enabled(v57, v58))
      {
        v59 = swift_slowAlloc();
        v60 = swift_slowAlloc();
        v76 = v60;
        *v59 = 136315138;
        v61 = Data.hexString.getter();
        v63 = sub_1000136BC(v61, v62, &v76);

        *(v59 + 4) = v63;
        _os_log_impl(&_mh_execute_header, v57, v58, "C3: %s", v59, 0xCu);
        sub_100007BAC(v60);
      }

      v78 = &type metadata for CollaborativeKeyGen.v1.C3;
      v79 = sub_100101704();
      v76 = v75;
      v77 = v74;
      v64 = OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_collaborativeKeyC3;
      v65 = v86;
      swift_beginAccess();
      sub_10002311C(&v76, v65 + v64, &qword_101697320, &qword_10138BE90);
      swift_endAccess();
      v66 = *(v65 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_status);
      v67 = *(v65 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_status + 8);
      *(v65 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_status) = v9;
      sub_100017D5C(v9, *(&v9 + 1));
      sub_100006654(v66, v67);
      v68 = v82;
      sub_100017D5C(v82, *(&v82 + 1));
      sub_1001DA6B0(&v80);
      v69 = *(v65 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_payloadSignatureS4);
      v70 = *(v65 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_payloadSignatureS4 + 8);
      *(v65 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_payloadSignatureS4) = v68;
      return sub_100006654(v69, v70);
    }

    v47 = swift_slowAlloc();
    result = swift_slowAlloc();
    buf = result;
    v76 = result;
    *v47 = 134218242;
    v48 = v82;
    v49 = *(&v82 + 1) >> 62;
    if ((*(&v82 + 1) >> 62) > 1)
    {
      if (v49 != 2)
      {
        v50 = 0;
        goto LABEL_35;
      }

      v52 = *(v82 + 16);
      v51 = *(v82 + 24);
      v53 = __OFSUB__(v51, v52);
      v50 = v51 - v52;
      if (!v53)
      {
        goto LABEL_35;
      }

      __break(1u);
    }

    else if (!v49)
    {
      v50 = BYTE14(v82);
LABEL_35:
      *(v47 + 4) = v50;
      sub_1001DA6B0(&v80);
      *(v47 + 12) = 2080;
      v54 = Data.hexString.getter();
      v56 = sub_1000136BC(v54, v55, &v76);

      *(v47 + 14) = v56;
      _os_log_impl(&_mh_execute_header, v45, v46, "S4 count %ld: %s", v47, 0x16u);
      sub_100007BAC(buf);

      goto LABEL_36;
    }

    LODWORD(v50) = HIDWORD(v48) - v48;
    if (__OFSUB__(HIDWORD(v48), v48))
    {
      __break(1u);
      return result;
    }

    v50 = v50;
    goto LABEL_35;
  }

  if (qword_1016946B0 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  sub_1000076D4(v21, qword_10177ACB0);
  sub_10001F280(a1, v84);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v76 = v25;
    *v24 = 136446210;
    sub_10001F280(v84, &v80);
    v26 = String.init<A>(describing:)();
    v28 = v27;
    sub_100007BAC(v84);
    v29 = sub_1000136BC(v26, v28, &v76);

    *(v24 + 4) = v29;
    _os_log_impl(&_mh_execute_header, v22, v23, "Invalid sendPairingStatus payload %{public}s", v24, 0xCu);
    sub_100007BAC(v25);
  }

  else
  {

    sub_100007BAC(v84);
  }

  sub_100413200();
  swift_allocError();
  *v30 = 0;
  return swift_willThrow();
}

uint64_t sub_1009A1A8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  if (a3 >> 60 == 15)
  {
    sub_100413200();
    swift_allocError();
    *v5 = 9;
    return swift_willThrow();
  }

  v9 = v4;
  sub_10001F280(a1, v18);
  sub_100017D5C(a2, a3);
  sub_1000BC4D4(&qword_1016973C0, &unk_10138BF40);
  type metadata accessor for CollaborativeKeyGen.v1.OwnerContext();
  if (!swift_dynamicCast())
  {
    sub_100413200();
    swift_allocError();
    *v13 = 5;
    swift_willThrow();
    return sub_100006654(a2, a3);
  }

  v11 = CCCKGGetOpeningSize();

  sub_1003F141C(a2, a3, v17, v11, v16);
  if (v9)
  {

    sub_100413200();
    swift_allocError();
    *v12 = 10;
    swift_willThrow();

    return sub_100006654(a2, a3);
  }

  sub_100006654(a2, a3);

  v14 = v16[3];
  a4[2] = v16[2];
  a4[3] = v14;
  a4[4] = v16[4];
  v15 = v16[1];
  *a4 = v16[0];
  a4[1] = v15;
  return result;
}

uint64_t sub_1009A1C54(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AirPodsLEPairingLockCheckResponse();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1009A1CB8(uint64_t a1)
{
  v2 = type metadata accessor for AirPodsLEPairingLockCheckResponse();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1009A1D14(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AirPodsLEPairingLockCheckResponse();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1009A1D78(uint64_t result)
{
  v1 = *(result + 24) & 0xCFFFFFFFFFFFFFFFLL;
  v2 = *(result + 40) & 0xCFFFFFFFFFFFFFFFLL;
  v3 = *(result + 56) & 0xCFFFFFFFFFFFFFFFLL;
  v4 = *(result + 72) & 0xCFFFFFFFFFFFFFFFLL;
  v5 = *(result + 88) & 0xCFFFFFFFFFFFFFFFLL;
  v6 = *(result + 104) & 0xCFFFFFFFFFFFFFFFLL;
  v7 = *(result + 120) & 0xCFFFFFFFFFFFFFFFLL;
  v8 = *(result + 136) & 0xCFFFFFFFFFFFFFFFLL;
  v9 = *(result + 152) & 0xCFFFFFFFFFFFFFFFLL;
  v10 = *(result + 168) & 0xCFFFFFFFFFFFFFFFLL;
  v11 = *(result + 192) | 0x8000000000000000;
  v12 = *(result + 208) & 0xCFFFFFFFFFFFFFFFLL | 0x2000000000000000;
  *(result + 8) &= 0xCFFFFFFFFFFFFFFFLL;
  *(result + 24) = v1;
  *(result + 40) = v2;
  *(result + 56) = v3;
  *(result + 72) = v4;
  *(result + 88) = v5;
  *(result + 104) = v6;
  *(result + 120) = v7;
  *(result + 136) = v8;
  *(result + 152) = v9;
  *(result + 168) = v10;
  *(result + 192) = v11;
  *(result + 208) = v12;
  return result;
}

uint64_t sub_1009A1E1C(uint64_t result)
{
  v1 = *(result + 192);
  v2 = *(result + 24) & 0xCFFFFFFFFFFFFFFFLL;
  v3 = *(result + 40) & 0xCFFFFFFFFFFFFFFFLL;
  v4 = *(result + 56) & 0xCFFFFFFFFFFFFFFFLL;
  v5 = *(result + 72) & 0xCFFFFFFFFFFFFFFFLL;
  v6 = *(result + 88) & 0xCFFFFFFFFFFFFFFFLL;
  v7 = *(result + 104) & 0xCFFFFFFFFFFFFFFFLL;
  v8 = *(result + 120) & 0xCFFFFFFFFFFFFFFFLL;
  v9 = *(result + 136) & 0xCFFFFFFFFFFFFFFFLL;
  v10 = *(result + 152) & 0xCFFFFFFFFFFFFFFFLL;
  v11 = *(result + 168) & 0xCFFFFFFFFFFFFFFFLL;
  v12 = *(result + 208) & 0xCFFFFFFFFFFFFFFFLL | 0x1000000000000000;
  *(result + 8) &= 0xCFFFFFFFFFFFFFFFLL;
  *(result + 24) = v2;
  *(result + 40) = v3;
  *(result + 56) = v4;
  *(result + 72) = v5;
  *(result + 88) = v6;
  *(result + 104) = v7;
  *(result + 120) = v8;
  *(result + 136) = v9;
  *(result + 152) = v10;
  *(result + 168) = v11;
  *(result + 192) = v1;
  *(result + 208) = v12;
  return result;
}

uint64_t sub_1009A1EBC(uint64_t result)
{
  v1 = *(result + 192);
  v2 = *(result + 24) & 0xCFFFFFFFFFFFFFFFLL;
  v3 = *(result + 40) & 0xCFFFFFFFFFFFFFFFLL;
  v4 = *(result + 56) & 0xCFFFFFFFFFFFFFFFLL;
  v5 = *(result + 72) & 0xCFFFFFFFFFFFFFFFLL;
  v6 = *(result + 88) & 0xCFFFFFFFFFFFFFFFLL;
  v7 = *(result + 104) & 0xCFFFFFFFFFFFFFFFLL;
  v8 = *(result + 120) & 0xCFFFFFFFFFFFFFFFLL;
  v9 = *(result + 136) & 0xCFFFFFFFFFFFFFFFLL;
  v10 = *(result + 152) & 0xCFFFFFFFFFFFFFFFLL;
  v11 = *(result + 168) & 0xCFFFFFFFFFFFFFFFLL;
  v12 = *(result + 208) & 0xCFFFFFFFFFFFFFFFLL;
  *(result + 8) &= 0xCFFFFFFFFFFFFFFFLL;
  *(result + 24) = v2;
  *(result + 40) = v3;
  *(result + 56) = v4;
  *(result + 72) = v5;
  *(result + 88) = v6;
  *(result + 104) = v7;
  *(result + 120) = v8;
  *(result + 136) = v9;
  *(result + 152) = v10;
  *(result + 168) = v11;
  *(result + 192) = v1;
  *(result + 208) = v12;
  return result;
}

unint64_t sub_1009A1F58()
{
  result = qword_1016B0748;
  if (!qword_1016B0748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B0748);
  }

  return result;
}

unint64_t sub_1009A1FAC()
{
  result = qword_1016B0750;
  if (!qword_1016B0750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B0750);
  }

  return result;
}

unint64_t sub_1009A2000()
{
  result = qword_1016B0758;
  if (!qword_1016B0758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B0758);
  }

  return result;
}

uint64_t sub_1009A20A8(uint64_t a1)
{
  v1 = (*(a1 + 208) >> 59) & 6 | (*(a1 + 192) >> 63);
  if (v1 <= 4)
  {
    return v1;
  }

  else
  {
    return (*a1 + 5);
  }
}

uint64_t sub_1009A20D4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 216))
  {
    return *a1 + 0x80000000;
  }

  v2 = (*(a1 + 24) >> 58) & 0xC | (*(a1 + 8) >> 60) & 3 | *(a1 + 47) & 0x30 | (*(a1 + 56) >> 54) & 0xC0 | (*(a1 + 72) >> 52) & 0x300 | (*(a1 + 88) >> 50) & 0xC00 | *(a1 + 110) & 0x3000 | (*(a1 + 120) >> 46) & 0xC000 | (*(a1 + 136) >> 44) & 0x30000 | (*(a1 + 152) >> 42) & 0xC0000 | (*(a1 + 168) >> 40) & 0x300000 | (*(a1 + 192) >> 8 << 22);
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_1009A21C8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0u;
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
      *(result + 216) = 1;
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
      v3 = -a2;
      *result = 0;
      *(result + 8) = (-a2 & 3) << 60;
      *(result + 16) = 0;
      *(result + 24) = (v3 << 58) & 0x3000000000000000;
      *(result + 32) = 0;
      *(result + 40) = (v3 << 56) & 0x3000000000000000;
      *(result + 48) = 0;
      *(result + 56) = (v3 << 54) & 0x3000000000000000;
      *(result + 64) = 0;
      *(result + 72) = (v3 << 52) & 0x3000000000000000;
      *(result + 80) = 0;
      *(result + 88) = (v3 << 50) & 0x3000000000000000;
      *(result + 96) = 0;
      *(result + 104) = (v3 << 48) & 0x3000000000000000;
      *(result + 112) = 0;
      *(result + 120) = (v3 << 46) & 0x3000000000000000;
      *(result + 128) = 0;
      *(result + 136) = (v3 << 44) & 0x3000000000000000;
      *(result + 144) = 0;
      *(result + 152) = (v3 << 42) & 0x3000000000000000;
      *(result + 160) = 0;
      *(result + 168) = (v3 << 40) & 0x3000000000000000;
      *(result + 176) = 0;
      *(result + 184) = 0;
      *(result + 200) = 0;
      *(result + 208) = 0;
      *(result + 192) = (v3 >> 14) & 0x3FF00;
      return result;
    }

    *(result + 216) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1009A22CC(uint64_t result, unsigned int a2)
{
  if (a2 < 5)
  {
    v2 = *(result + 24) & 0xCFFFFFFFFFFFFFFFLL;
    v3 = *(result + 40) & 0xCFFFFFFFFFFFFFFFLL;
    v4 = *(result + 56) & 0xCFFFFFFFFFFFFFFFLL;
    v5 = *(result + 72) & 0xCFFFFFFFFFFFFFFFLL;
    v6 = *(result + 88) & 0xCFFFFFFFFFFFFFFFLL;
    v7 = *(result + 104) & 0xCFFFFFFFFFFFFFFFLL;
    v8 = *(result + 120) & 0xCFFFFFFFFFFFFFFFLL;
    v9 = *(result + 136) & 0xCFFFFFFFFFFFFFFFLL;
    v10 = *(result + 152) & 0xCFFFFFFFFFFFFFFFLL;
    v11 = *(result + 168) & 0xCFFFFFFFFFFFFFFFLL;
    v12 = a2 >> 1;
    v13 = *(result + 192) | (a2 << 63);
    v14 = *(result + 208) & 0xCFFFFFFFFFFFFFFFLL | ((v12 & 3) << 60);
    *(result + 8) &= 0xCFFFFFFFFFFFFFFFLL;
    *(result + 24) = v2;
    *(result + 40) = v3;
    *(result + 56) = v4;
    *(result + 72) = v5;
    *(result + 88) = v6;
    *(result + 104) = v7;
    *(result + 120) = v8;
    *(result + 136) = v9;
    *(result + 152) = v10;
    *(result + 168) = v11;
    *(result + 192) = v13;
    *(result + 208) = v14;
  }

  else
  {
    *result = a2 - 5;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    *(result + 56) = 0u;
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 104) = 0u;
    *(result + 120) = 0u;
    *(result + 136) = 0u;
    *(result + 152) = 0u;
    *(result + 168) = 0u;
    *(result + 184) = 0;
    *(result + 192) = xmmword_1013A1630;
    *(result + 208) = 0x2000000000000000;
  }

  return result;
}

unint64_t sub_1009A23EC(uint64_t a1)
{
  *(a1 + 8) = sub_1009A241C();
  result = sub_10027FBB8();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1009A241C()
{
  result = qword_1016B0760;
  if (!qword_1016B0760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B0760);
  }

  return result;
}

uint64_t sub_1009A2470(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1009A24B8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1009A2510(uint64_t a1)
{
  v2[9] = a1;
  v2[10] = v1;
  v3 = type metadata accessor for ManagedCBPeripheralManager.KeyType();
  v2[11] = v3;
  v4 = *(v3 - 8);
  v2[12] = v4;
  v5 = *(v4 + 64) + 15;
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v6 = type metadata accessor for SystemInfo.DeviceLockState();
  v2[15] = v6;
  v7 = *(v6 - 8);
  v2[16] = v7;
  v8 = *(v7 + 64) + 15;
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();

  return _swift_task_switch(sub_1009A2644, 0, 0);
}

uint64_t sub_1009A2644()
{
  if (qword_101694B98 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 72);
  v2 = type metadata accessor for Logger();
  *(v0 + 152) = sub_1000076D4(v2, qword_10177B810);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 72);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    *(v7 + 4) = v6;
    *v8 = v6;
    v9 = v6;
    _os_log_impl(&_mh_execute_header, v4, v5, "bluetoothConnectionKeys for request: %{public}@", v7, 0xCu);
    sub_10000B3A8(v8, &qword_10169BB30, &unk_10138B3C0);
  }

  if (qword_101694FA8 != -1)
  {
    swift_once();
  }

  *(v0 + 16) = 0x7365547265646E75;
  *(v0 + 24) = 0xE900000000000074;
  SynchronousCache.cachedValue<A>(key:computeBlock:)();
  if (*(v0 + 216))
  {
    goto LABEL_11;
  }

  type metadata accessor for Transaction();
  v10 = static Transaction.currentNSXPCConnection.getter();
  if (v10)
  {
    v11 = v10;
    sub_1009AB74C();
    if (NSXPCConnection.hasEntitlement<A>(_:)())
    {

LABEL_11:
      v13 = *(v0 + 136);
      v12 = *(v0 + 144);
      v14 = *(v0 + 120);
      v15 = *(v0 + 128);
      static SystemInfo.lockState.getter();
      (*(v15 + 104))(v13, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v14);
      sub_1009ABA98(&qword_10169F338, &type metadata accessor for SystemInfo.DeviceLockState);
      v16 = dispatch thunk of static Equatable.== infix(_:_:)();
      v17 = *(v15 + 8);
      v17(v13, v14);
      v17(v12, v14);
      if (v16)
      {
        v18 = Logger.logObject.getter();
        v19 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v18, v19))
        {
          v20 = swift_slowAlloc();
          *v20 = 0;
          _os_log_impl(&_mh_execute_header, v18, v19, "bluetoothConnectionKeys called while in .beforeFirstUnlock state", v20, 2u);
        }

        v21 = objc_allocWithZone(SPCBPeripheralKeyResponse);
        sub_100008BB8(0, &qword_1016B07A8, SPPeripheral_ptr);
        isa = Array._bridgeToObjectiveC()().super.isa;
        v23 = [v21 initWithPeripherals:isa];
        v25 = *(v0 + 136);
        v24 = *(v0 + 144);
        v27 = *(v0 + 104);
        v26 = *(v0 + 112);

        v28 = *(v0 + 8);

        return v28(v23);
      }

      else
      {
        v30 = sub_1000035D0(*(v0 + 80), *(*(v0 + 80) + 24));
        v32 = *v30;
        v31 = v30[1];
        v33 = v30[2];
        v34 = swift_task_alloc();
        *(v0 + 160) = v34;
        *v34 = v0;
        v34[1] = sub_1009A2C9C;

        return sub_100F12038(v32, v31, v33);
      }
    }

    type metadata accessor for SPCBPeripheralError(0);
    *(v0 + 56) = 1;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_1009ABA98(&qword_1016963B0, type metadata accessor for SPCBPeripheralError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v39 = *(v0 + 48);
    swift_willThrow();
  }

  else
  {
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&_mh_execute_header, v35, v36, "Unable to get current NSXPCConnection!", v37, 2u);
    }

    type metadata accessor for SPCBPeripheralError(0);
    *(v0 + 40) = 1;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_1009ABA98(&qword_1016963B0, type metadata accessor for SPCBPeripheralError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v38 = *(v0 + 32);
    swift_willThrow();
  }

  v41 = *(v0 + 136);
  v40 = *(v0 + 144);
  v43 = *(v0 + 104);
  v42 = *(v0 + 112);

  v44 = *(v0 + 8);

  return v44();
}

uint64_t sub_1009A2C9C(uint64_t a1)
{
  v2 = *(*v1 + 160);
  v4 = *v1;
  *(*v1 + 168) = a1;

  return _swift_task_switch(sub_1009A2D9C, 0, 0);
}

uint64_t sub_1009A2D9C()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 80);
  v3 = [*(v0 + 72) requestParameters];
  sub_100008BB8(0, &qword_1016B0788, SPCBPeripheralKeyRequestParameters_ptr);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 176) = v4;

  *(v0 + 64) = v4;
  v5 = swift_task_alloc();
  *(v0 + 184) = v5;
  *(v5 + 16) = v2;
  *(v5 + 24) = v1;
  v6 = async function pointer to Sequence.asyncMap<A>(_:)[1];
  v7 = swift_task_alloc();
  *(v0 + 192) = v7;
  v8 = sub_1000BC4D4(&qword_1016B0790, &qword_1013CF1A8);
  v9 = sub_1000BC4D4(&qword_1016B0798, &qword_1013CF1B0);
  v10 = sub_1000041A4(&qword_1016B07A0, &qword_1016B0790, &qword_1013CF1A8);
  *v7 = v0;
  v7[1] = sub_1009A2F38;

  return Sequence.asyncMap<A>(_:)(&unk_1013CF1A0, v5, v8, v9, v10);
}

uint64_t sub_1009A2F38(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 192);
  v13 = *v2;
  v3[25] = a1;
  v3[26] = v1;

  if (v1)
  {
    v5 = v3[22];
    v6 = v3[23];
    v7 = v3[21];

    v8 = sub_1009A382C;
  }

  else
  {
    v9 = v3[22];
    v10 = v3[23];
    v11 = v3[21];

    v8 = sub_1009A3084;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_1009A3084()
{
  v89 = v1;
  v2 = v1[25];
  isa = v2[2].isa;
  if (isa)
  {
    v4 = 0;
    v81 = v1[12];
    v83 = v1[11];
    v5 = v2 + 4;
    v6 = _swiftEmptyDictionarySingleton;
    v78 = v2[2].isa;
    v79 = v1[25];
    v77 = v2 + 4;
    while (1)
    {
      if (v4 >= v2[2].isa)
      {
        goto LABEL_63;
      }

      v7 = v5[2 * v4 + 1].isa;
      if (!(v7 >> 62))
      {
        v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v8)
        {
          break;
        }

        goto LABEL_4;
      }

      v0 = v2;
      if (v7 < 0)
      {
        v45 = v5[2 * v4 + 1].isa;
      }

      v8 = _CocoaArrayWrapper.endIndex.getter();
      v2 = v0;
      if (v8)
      {
        break;
      }

LABEL_4:
      v4 = (v4 + 1);
      if (v4 == isa)
      {
        while (1)
        {
          v50 = v1[25];

          v48 = v6[2].isa;
          if (!v48)
          {
            goto LABEL_41;
          }

LABEL_38:
          isa = sub_1003CC318(v48, 0);
          v49 = sub_1003AA840(&v88, (isa + 32), v48, v6);

          sub_1000128F8();
          if (v49 == v48)
          {
            goto LABEL_42;
          }

          __break(1u);
        }
      }
    }

    v80 = v4;
    v86 = v7 & 0xC000000000000001;
    v82 = v7 & 0xFFFFFFFFFFFFFF8;

    v9 = 0;
    v84 = v7;
    while (1)
    {
      if (v86)
      {
        v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v9 >= *(v82 + 16))
        {
          goto LABEL_61;
        }

        v13 = *(v7 + 8 * v9 + 32);
      }

      v14 = v13;
      v15 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
LABEL_62:
        __break(1u);
LABEL_63:
        __break(1u);
        goto LABEL_64;
      }

      v16 = v8;
      v17 = v1[14];
      v18 = [v13 userIdentifier];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v19 = [v14 beaconIdentifier];
      v20 = v17 + *(v83 + 20);
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      if (v6[2].isa)
      {
        v21 = sub_1007729CC(v1[14]);
        if (v22)
        {
          v23 = v1[14];
          v24 = v1[10];
          v25 = *(v6[7].isa + v21);
          isa = sub_1009AA1D8(v25, v14);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v88 = v6;
          v0 = &v88;
          sub_1010006B0(isa, v23, isUniquelyReferenced_nonNull_native);

          v6 = v88;
          v12 = v23;
          goto LABEL_10;
        }
      }

      v27 = v1[13];
      sub_1009AB854(v1[14], v27, type metadata accessor for ManagedCBPeripheralManager.KeyType);
      v28 = v14;
      v29 = swift_isUniquelyReferenced_nonNull_native();
      v88 = v6;
      v30 = v27;
      v0 = v6;
      v31 = sub_1007729CC(v30);
      v33 = v6[2].isa;
      v34 = (v32 & 1) == 0;
      v35 = __OFADD__(v33, v34);
      v36 = v33 + v34;
      if (v35)
      {
        goto LABEL_60;
      }

      v37 = v32;
      if (v6[3].isa >= v36)
      {
        if ((v29 & 1) == 0)
        {
          v44 = v31;
          sub_10100BC18();
          v31 = v44;
          v6 = v88;
          v40 = v1[13];
          v0 = v1[14];
          if ((v37 & 1) == 0)
          {
LABEL_26:
            v6[(v31 >> 6) + 8].isa = (v6[(v31 >> 6) + 8].isa | (1 << v31));
            v41 = v31;
            sub_1009AB854(v40, v6[6].isa + *(v81 + 72) * v31, type metadata accessor for ManagedCBPeripheralManager.KeyType);
            *(v6[7].isa + v41) = v28;

            isa = type metadata accessor for ManagedCBPeripheralManager.KeyType;
            sub_1009AB920(v40, type metadata accessor for ManagedCBPeripheralManager.KeyType);
            sub_1009AB920(v0, type metadata accessor for ManagedCBPeripheralManager.KeyType);
            v42 = v6[2].isa;
            v35 = __OFADD__(v42, 1);
            v43 = (v42 + 1);
            if (v35)
            {
              goto LABEL_62;
            }

            v6[2].isa = v43;
            goto LABEL_11;
          }

          goto LABEL_9;
        }
      }

      else
      {
        v38 = v1[13];
        sub_100FF3790(v36, v29);
        v6 = v88;
        v31 = sub_1007729CC(v38);
        if ((v37 & 1) != (v39 & 1))
        {
          v46 = v1[11];

          return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        }
      }

      v40 = v1[13];
      v0 = v1[14];
      if ((v37 & 1) == 0)
      {
        goto LABEL_26;
      }

LABEL_9:
      v10 = v6[7].isa;
      v11 = *(v10 + v31);
      *(v10 + v31) = v28;

      isa = type metadata accessor for ManagedCBPeripheralManager.KeyType;
      sub_1009AB920(v40, type metadata accessor for ManagedCBPeripheralManager.KeyType);
      v12 = v0;
LABEL_10:
      sub_1009AB920(v12, type metadata accessor for ManagedCBPeripheralManager.KeyType);
LABEL_11:
      v8 = v16;
      v7 = v84;
      ++v9;
      if (v15 == v8)
      {

        isa = v78;
        v2 = v79;
        v4 = v80;
        v5 = v77;
        goto LABEL_4;
      }
    }
  }

  v6 = _swiftEmptyDictionarySingleton;
  v48 = _swiftEmptyDictionarySingleton[2];
  if (v48)
  {
    goto LABEL_38;
  }

LABEL_41:
  isa = _swiftEmptyArrayStorage;
LABEL_42:
  v51 = v1[19];

  v0 = Logger.logObject.getter();
  LOBYTE(v52) = static os_log_type_t.default.getter();
  if (!os_log_type_enabled(v0, v52))
  {

    goto LABEL_48;
  }

  v53 = swift_slowAlloc();
  *v53 = 134217984;
  if (isa < 0 || (isa & 0x4000000000000000) != 0)
  {
    goto LABEL_69;
  }

  v54 = *(isa + 16);
  while (1)
  {
    *(v53 + 4) = v54;
    v55 = v53;

    _os_log_impl(&_mh_execute_header, v0, v52, "Peripheral count: %ld", v55, 0xCu);

LABEL_48:

    if (isa < 0 || (isa & 0x4000000000000000) != 0)
    {
LABEL_64:
      v53 = _CocoaArrayWrapper.endIndex.getter();
      v52 = v53;
      if (!v53)
      {
        goto LABEL_65;
      }
    }

    else
    {
      v52 = *(isa + 16);
      if (!v52)
      {
        goto LABEL_65;
      }
    }

    if (v52 >= 1)
    {
      break;
    }

    __break(1u);
LABEL_69:
    v75 = isa;
    v76 = v53;
    v54 = _CocoaArrayWrapper.endIndex.getter();
    v53 = v76;
    isa = v75;
  }

  v56 = 0;
  v57 = isa & 0xC000000000000001;
  v85 = isa & 0xC000000000000001;
  v87 = v52;
  do
  {
    if (v57)
    {
      v58 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v58 = *(isa + 8 * v56 + 32);
    }

    v59 = v1[19];
    v60 = v58;
    v61 = Logger.logObject.getter();
    v62 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      *v63 = 138412290;
      *(v63 + 4) = v60;
      *v64 = v60;
      v65 = isa;
      v66 = v60;
      _os_log_impl(&_mh_execute_header, v61, v62, "Peripheral: %@", v63, 0xCu);
      sub_10000B3A8(v64, &qword_10169BB30, &unk_10138B3C0);

      v57 = v85;

      v60 = v61;
      v61 = v66;
      isa = v65;
      v52 = v87;
    }

    ++v56;
  }

  while (v52 != v56);
LABEL_65:
  v67 = objc_allocWithZone(SPCBPeripheralKeyResponse);
  sub_100008BB8(0, &qword_1016B07A8, SPPeripheral_ptr);
  v68 = Array._bridgeToObjectiveC()().super.isa;

  v69 = [v67 initWithPeripherals:v68];

  v71 = v1[17];
  v70 = v1[18];
  v73 = v1[13];
  v72 = v1[14];

  v74 = v1[1];

  return v74(v69);
}

uint64_t sub_1009A382C()
{
  v1 = v0[26];
  v3 = v0[17];
  v2 = v0[18];
  v5 = v0[13];
  v4 = v0[14];

  v6 = v0[1];

  return v6();
}

uint64_t sub_1009A38B4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a1;
  v6 = type metadata accessor for UUID();
  v4[5] = v6;
  v7 = *(v6 - 8);
  v4[6] = v7;
  v8 = *(v7 + 64) + 15;
  v9 = swift_task_alloc();
  v10 = *a2;
  v4[7] = v9;
  v4[8] = v10;

  return _swift_task_switch(sub_1009A3980, 0, 0);
}

char *sub_1009A3980()
{
  v1 = [*(v0 + 64) vendorIdentifierList];
  sub_100008BB8(0, &qword_1016AD650, NSNumber_ptr);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v2 >> 62)
  {
    v3 = _CocoaArrayWrapper.endIndex.getter();
    v28 = v0;
    if (!v3)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v28 = v0;
    if (!v3)
    {
      goto LABEL_13;
    }
  }

  result = sub_101125530(0, v3 & ~(v3 >> 63), 0);
  if (v3 < 0)
  {
    __break(1u);
    return result;
  }

  for (i = 0; i != v3; ++i)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v6 = *(v2 + 8 * i + 32);
    }

    v7 = v6;
    v8 = [v6 unsignedIntValue];

    v10 = _swiftEmptyArrayStorage[2];
    v9 = _swiftEmptyArrayStorage[3];
    if (v10 >= v9 >> 1)
    {
      sub_101125530((v9 > 1), v10 + 1, 1);
    }

    _swiftEmptyArrayStorage[2] = v10 + 1;
    *(&_swiftEmptyArrayStorage[4] + v10) = v8;
  }

LABEL_13:

  v11 = v28[7];
  v12 = v28[8];
  v13 = v28[6];
  v14 = v28[3];
  v15 = v28[4];
  v16 = [v12 sessionKey];
  v17 = [v16 userIdentifier];

  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = [v12 sessionKey];
  v19 = [v18 bundleId];

  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;

  v23 = sub_10112B534(_swiftEmptyArrayStorage);

  v24 = sub_1009A40C4(v11, v15, v20, v22, v23);
  v28[9] = v24;

  (*(v13 + 8))(v11, v27);

  v25 = swift_task_alloc();
  v28[10] = v25;
  *v25 = v28;
  v25[1] = sub_1009A3C94;
  v26 = v28[3];

  return sub_1009A49F8(v24);
}

uint64_t sub_1009A3C94(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 80);
  v6 = *(*v2 + 72);
  v7 = *v2;

  if (v1)
  {
    v8 = v4[9];
    v9 = v4[7];

    v10 = *(v7 + 8);

    return v10();
  }

  else
  {
    v4[11] = a1;

    return _swift_task_switch(sub_1009A3E1C, 0, 0);
  }
}

uint64_t sub_1009A3E1C()
{
  v1 = [*(v0 + 64) sessionKey];
  *(v0 + 96) = v1;
  v2 = swift_task_alloc();
  *(v0 + 104) = v2;
  *v2 = v0;
  v2[1] = sub_1009A3ED8;
  v3 = *(v0 + 88);
  v4 = *(v0 + 72);
  v5 = *(v0 + 24);

  return sub_1009A58E8(v1, v3, v4);
}

uint64_t sub_1009A3ED8(uint64_t a1)
{
  v2 = *(*v1 + 104);
  v3 = *(*v1 + 96);
  v4 = *(*v1 + 88);
  v5 = *(*v1 + 72);
  v7 = *v1;
  *(*v1 + 112) = a1;

  return _swift_task_switch(sub_1009A4034, 0, 0);
}

uint64_t sub_1009A4034()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 56);
  v3 = *(v0 + 16);
  *v3 = [*(v0 + 64) sessionKey];
  v3[1] = v1;

  v4 = *(v0 + 8);

  return v4();
}

void *sub_1009A40C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v81 = a5;
  v84 = a1;
  v8 = type metadata accessor for ManagedCBPeripheralBeaconInfo();
  v9 = *(v8 - 1);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v99 = &v79[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = __chkstk_darwin(v11);
  v15 = &v79[-v14];
  __chkstk_darwin(v13);
  v17 = &v79[-v16];
  v18._countAndFlagsBits = 0x6C7070612E6D6F63;
  v18._object = 0xEA00000000002E65;
  v19 = String.hasPrefix(_:)(v18);
  if (a3 == 0xD000000000000014 && 0x8000000101366FE0 == a4 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && !v81[2])
  {
    if (qword_101694B00 != -1)
    {
      goto LABEL_47;
    }

    goto LABEL_8;
  }

  v94 = 0;
  v80 = 0;
  if (v19)
  {
LABEL_9:
    v80 = v81[2] == 0;
  }

LABEL_11:
  v93 = *(a2 + 16);
  if (v93)
  {
    v21 = 0;
    v92 = a2 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v98 = _swiftEmptyDictionarySingleton;
    v95 = *(v9 + 72);
    v85 = v81 + 7;
    *(&v22 + 1) = 2;
    v91 = xmmword_101385D80;
    *&v22 = 141559043;
    v82 = v22;
    v83 = v17;
    while (1)
    {
      sub_1009AB854(v92 + v95 * v21, v17, type metadata accessor for ManagedCBPeripheralBeaconInfo);
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v25 = swift_allocObject();
      *(v25 + 16) = v91;
      v26 = *&v17[v8[9]];
      *(v25 + 56) = &type metadata for UInt32;
      *(v25 + 64) = &protocol witness table for UInt32;
      *(v25 + 32) = v26;
      v27 = String.init(format:_:)();
      v29 = v28;
      if (qword_101694B98 != -1)
      {
        swift_once();
      }

      v30 = type metadata accessor for Logger();
      v31 = sub_1000076D4(v30, qword_10177B810);
      sub_1009AB854(v17, v15, type metadata accessor for ManagedCBPeripheralBeaconInfo);
      sub_1009AB854(v17, v99, type metadata accessor for ManagedCBPeripheralBeaconInfo);

      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.info.getter();

      v96 = v33;
      v34 = os_log_type_enabled(v32, v33);
      v97 = v21;
      if (v34)
      {
        v35 = swift_slowAlloc();
        v87 = v27;
        v36 = v35;
        v88 = swift_slowAlloc();
        v100[0] = v88;
        *v36 = v82;
        *(v36 + 4) = 1752392040;
        *(v36 + 12) = 2081;
        type metadata accessor for UUID();
        sub_1009ABA98(&qword_101696930, &type metadata accessor for UUID);
        v90 = v26;
        v26 = v99;
        v86 = v32;
        v37 = dispatch thunk of CustomStringConvertible.description.getter();
        v39 = v38;
        v89 = v31;
        sub_1009AB920(v15, type metadata accessor for ManagedCBPeripheralBeaconInfo);
        v40 = sub_1000136BC(v37, v39, v100);

        *(v36 + 14) = v40;
        *(v36 + 22) = 2160;
        *(v36 + 24) = 1752392040;
        *(v36 + 32) = 2081;
        v41 = &v26[v8[5]];
        v17 = v83;
        v42 = v26;
        LODWORD(v26) = v90;
        v43 = dispatch thunk of CustomStringConvertible.description.getter();
        v45 = v44;
        sub_1009AB920(v42, type metadata accessor for ManagedCBPeripheralBeaconInfo);
        v46 = sub_1000136BC(v43, v45, v100);

        *(v36 + 34) = v46;
        *(v36 + 42) = 2082;
        v47 = sub_1000136BC(v87, v29, v100);

        *(v36 + 44) = v47;
        v48 = v86;
        _os_log_impl(&_mh_execute_header, v86, v96, "Process user: %{private,mask.hash}s beacon: %{private,mask.hash}s (vid: %{public}s)", v36, 0x34u);
        swift_arrayDestroy();

        if (v94)
        {
          goto LABEL_23;
        }
      }

      else
      {

        sub_1009AB920(v99, type metadata accessor for ManagedCBPeripheralBeaconInfo);
        sub_1009AB920(v15, type metadata accessor for ManagedCBPeripheralBeaconInfo);
        if (v94)
        {
          goto LABEL_23;
        }
      }

      if ((static UUID.== infix(_:_:)() & 1) == 0)
      {
        v64 = Logger.logObject.getter();
        v65 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v64, v65))
        {
          v66 = swift_slowAlloc();
          *v66 = 0;
          v67 = v65;
          v68 = v64;
          v69 = "Skipping beacon not belonging to allowed user session";
          goto LABEL_41;
        }

LABEL_42:

        goto LABEL_14;
      }

      if (!v80)
      {
        if (!v81[2] || (v70 = v81, v71 = v81[5], v72 = static Hasher._hash(seed:bytes:count:)(), v73 = -1 << *(v70 + 32), v74 = v72 & ~v73, ((*(v85 + ((v74 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v74) & 1) == 0))
        {
LABEL_39:
          v64 = Logger.logObject.getter();
          v76 = static os_log_type_t.info.getter();
          if (os_log_type_enabled(v64, v76))
          {
            v66 = swift_slowAlloc();
            *v66 = 0;
            v67 = v76;
            v68 = v64;
            v69 = "Skipping non-allowed vendorId";
LABEL_41:
            _os_log_impl(&_mh_execute_header, v68, v67, v69, v66, 2u);
          }

          goto LABEL_42;
        }

        v75 = ~v73;
        while (*(v81[6] + 4 * v74) != v26)
        {
          v74 = (v74 + 1) & v75;
          if (((*(v85 + ((v74 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v74) & 1) == 0)
          {
            goto LABEL_39;
          }
        }
      }

LABEL_23:
      v49 = &v17[v8[10]];
      v50 = *v49;
      a2 = v49[1];
      v19 = v17[v8[12]];

      v9 = v98;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v100[0] = v9;
      v52 = sub_100772A10(v17);
      v54 = *(v9 + 16);
      v55 = (v53 & 1) == 0;
      v56 = __OFADD__(v54, v55);
      v57 = v54 + v55;
      if (v56)
      {
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        swift_once();
LABEL_8:
        v20 = type metadata accessor for UUID();
        sub_1000076D4(v20, qword_1016B0768);
        v94 = static UUID.== infix(_:_:)();
        if (v19)
        {
          goto LABEL_9;
        }

        v80 = 0;
        goto LABEL_11;
      }

      v58 = v53;
      if (*(v9 + 24) >= v57)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v77 = v52;
          sub_10100BE60();
          v52 = v77;
        }
      }

      else
      {
        sub_100FF3B88(v57, isUniquelyReferenced_nonNull_native);
        v52 = sub_100772A10(v17);
        if ((v58 & 1) != (v59 & 1))
        {
          result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          return result;
        }
      }

      v98 = v100[0];
      if (v58)
      {
        v23 = *(v100[0] + 56) + 24 * v52;
        v24 = *(v23 + 8);
        *v23 = v50;
        *(v23 + 8) = a2;
        *(v23 + 16) = v19;
      }

      else
      {
        *(v100[0] + 8 * (v52 >> 6) + 64) |= 1 << v52;
        v9 = v52;
        sub_1009AB854(v17, v98[6] + v52 * v95, type metadata accessor for ManagedCBPeripheralBeaconInfo);
        v60 = v98;
        v61 = v98[7] + 24 * v9;
        *v61 = v50;
        *(v61 + 8) = a2;
        *(v61 + 16) = v19;
        v62 = v60[2];
        v56 = __OFADD__(v62, 1);
        v63 = v62 + 1;
        if (v56)
        {
          goto LABEL_46;
        }

        v60[2] = v63;
      }

LABEL_14:
      v21 = v97 + 1;
      sub_1009AB920(v17, type metadata accessor for ManagedCBPeripheralBeaconInfo);
      if (v21 == v93)
      {
        return v98;
      }
    }
  }

  return _swiftEmptyDictionarySingleton;
}

uint64_t sub_1009A49F8(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = type metadata accessor for BeaconIdentifier();
  v2[7] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v5 = type metadata accessor for ManagedCBPeripheralBeaconInfo();
  v2[10] = v5;
  v6 = *(v5 - 8);
  v2[11] = v6;
  v7 = *(v6 + 64) + 15;
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();

  return _swift_task_switch(sub_1009A4B18, 0, 0);
}

uint64_t sub_1009A4B18()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);
  v3 = *(v0 + 48);
  v4 = *(v0 + 56);
  v5 = *(v0 + 40);
  v6 = *(v5 + 32);
  *(v0 + 216) = v6;
  v7 = -1;
  v8 = -1 << v6;
  if (-(-1 << v6) < 64)
  {
    v7 = ~(-1 << -(-1 << v6));
  }

  v9 = v7 & *(v5 + 64);
  *(v0 + 128) = _swiftEmptyDictionarySingleton;
  *(v0 + 136) = _swiftEmptyDictionarySingleton;

  if (v9)
  {
    v11 = 0;
LABEL_8:
    *(v0 + 144) = v9;
    *(v0 + 152) = v11;
    v14 = *(v0 + 112);
    v13 = *(v0 + 120);
    v15 = *(v0 + 72);
    v16 = *(v10 + 48);
    v17 = *(v2 + 72);
    *(v0 + 160) = v17;
    sub_1009AB854(v16 + v17 * (__clz(__rbit64(v9)) | (v11 << 6)), v13, type metadata accessor for ManagedCBPeripheralBeaconInfo);
    sub_1009AB8BC(v13, v14);
    v18 = sub_1000035D0(v3, v3[3]);
    v19 = type metadata accessor for UUID();
    *(v0 + 168) = v19;
    v20 = *(v19 - 8);
    v21 = *(v20 + 16);
    *(v0 + 176) = v21;
    *(v0 + 184) = (v20 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v21(v15, v14, v19);
    v21(v15 + *(v4 + 20), v14 + *(v1 + 20), v19);
    v22 = *v18;
    v23 = v18[1];
    v24 = v18[2];
    v25 = swift_task_alloc();
    *(v0 + 192) = v25;
    *v25 = v0;
    v25[1] = sub_1009A4DB0;
    v26 = *(v0 + 72);

    return sub_100F16A4C(v26, v22, v23, v24);
  }

  else
  {
    v12 = 0;
    while (((63 - v8) >> 6) - 1 != v12)
    {
      v11 = v12 + 1;
      v9 = *(v10 + 8 * v12++ + 72);
      if (v9)
      {
        goto LABEL_8;
      }
    }

    v28 = *(v0 + 112);
    v29 = *(v0 + 120);
    v31 = *(v0 + 96);
    v30 = *(v0 + 104);
    v33 = *(v0 + 64);
    v32 = *(v0 + 72);

    v34 = *(v0 + 8);

    return v34(_swiftEmptyDictionarySingleton);
  }
}

uint64_t sub_1009A4DB0(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 192);
  v5 = *(*v2 + 72);
  v8 = *v2;
  *(v3 + 200) = a1;
  *(v3 + 208) = v1;

  sub_1009AB920(v5, type metadata accessor for BeaconIdentifier);
  if (v1)
  {
    v6 = sub_1009A4EF8;
  }

  else
  {
    v6 = sub_1009A5498;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1009A4EF8()
{
  v64 = v0;
  if (qword_101694B98 != -1)
  {
LABEL_19:
    swift_once();
  }

  v1 = *(v0 + 208);
  v2 = *(v0 + 104);
  v3 = *(v0 + 112);
  v4 = type metadata accessor for Logger();
  sub_1000076D4(v4, qword_10177B810);
  sub_1009AB854(v3, v2, type metadata accessor for ManagedCBPeripheralBeaconInfo);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 208);
  if (v7)
  {
    v61 = v6;
    v10 = *(v0 + 176);
    v9 = *(v0 + 184);
    v11 = *(v0 + 168);
    v12 = *(v0 + 104);
    v62 = *(v0 + 112);
    v13 = *(v0 + 80);
    v14 = *(v0 + 56);
    v15 = *(v0 + 64);
    v16 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v63 = v60;
    *v16 = 141558531;
    *(v16 + 4) = 1752392040;
    *(v16 + 12) = 2081;
    v10(v15, v12, v11);
    v10(v15 + *(v14 + 20), v12 + *(v13 + 20), v11);
    sub_1009ABA98(&qword_101696930, &type metadata accessor for UUID);
    *(v0 + 16) = dispatch thunk of CustomStringConvertible.description.getter();
    *(v0 + 24) = v17;
    v18._countAndFlagsBits = 47;
    v18._object = 0xE100000000000000;
    String.append(_:)(v18);
    v19._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v19);

    v20 = *(v0 + 16);
    v21 = *(v0 + 24);
    sub_1009AB920(v15, type metadata accessor for BeaconIdentifier);
    sub_1009AB920(v12, type metadata accessor for ManagedCBPeripheralBeaconInfo);
    v22 = sub_1000136BC(v20, v21, &v63);

    *(v16 + 14) = v22;
    *(v16 + 22) = 2114;
    swift_errorRetain();
    v23 = _swift_stdlib_bridgeErrorToNSError();
    *(v16 + 24) = v23;
    *v59 = v23;
    _os_log_impl(&_mh_execute_header, v5, v61, "Failed to retrieve keys for %{private,mask.hash}s error %{public}@", v16, 0x20u);
    sub_10000B3A8(v59, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v60);

    v24 = v62;
  }

  else
  {
    v26 = *(v0 + 104);
    v25 = *(v0 + 112);

    sub_1009AB920(v26, type metadata accessor for ManagedCBPeripheralBeaconInfo);
    v24 = v25;
  }

  sub_1009AB920(v24, type metadata accessor for ManagedCBPeripheralBeaconInfo);
  v27 = *(v0 + 152);
  v28 = (*(v0 + 144) - 1) & *(v0 + 144);
  if (v28)
  {
    v29 = *(v0 + 40);
LABEL_12:
    *(v0 + 144) = v28;
    *(v0 + 152) = v27;
    v33 = *(v0 + 112);
    v32 = *(v0 + 120);
    v34 = *(v0 + 80);
    v35 = *(v0 + 72);
    v36 = *(v0 + 48);
    v37 = *(v0 + 56);
    v38 = __clz(__rbit64(v28)) | (v27 << 6);
    v39 = *(v29 + 48);
    v40 = *(*(v0 + 88) + 72);
    *(v0 + 160) = v40;
    sub_1009AB854(v39 + v40 * v38, v32, type metadata accessor for ManagedCBPeripheralBeaconInfo);
    sub_1009AB8BC(v32, v33);
    v41 = sub_1000035D0(v36, v36[3]);
    v42 = type metadata accessor for UUID();
    *(v0 + 168) = v42;
    v43 = *(v42 - 8);
    v44 = *(v43 + 16);
    *(v0 + 176) = v44;
    *(v0 + 184) = (v43 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v44(v35, v33, v42);
    v44(v35 + *(v37 + 20), v33 + *(v34 + 20), v42);
    v45 = *v41;
    v46 = v41[1];
    v47 = v41[2];
    v48 = swift_task_alloc();
    *(v0 + 192) = v48;
    *v48 = v0;
    v48[1] = sub_1009A4DB0;
    v49 = *(v0 + 72);

    return sub_100F16A4C(v49, v45, v46, v47);
  }

  else
  {
    v30 = *(v0 + 136);
    while (1)
    {
      v31 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        __break(1u);
        goto LABEL_19;
      }

      if (v31 >= (((1 << *(v0 + 216)) + 63) >> 6))
      {
        break;
      }

      v29 = *(v0 + 40);
      v28 = *(v29 + 8 * v31 + 64);
      ++v27;
      if (v28)
      {
        v27 = v31;
        goto LABEL_12;
      }
    }

    v52 = *(v0 + 112);
    v51 = *(v0 + 120);
    v54 = *(v0 + 96);
    v53 = *(v0 + 104);
    v56 = *(v0 + 64);
    v55 = *(v0 + 72);
    v57 = *(v0 + 40);

    v58 = *(v0 + 8);

    return v58(v30);
  }
}

unint64_t sub_1009A5498()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 96);
  sub_1009AB854(*(v0 + 112), v2, type metadata accessor for ManagedCBPeripheralBeaconInfo);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v0 + 32) = v1;
  result = sub_100772A10(v2);
  v6 = *(v1 + 16);
  v7 = (v5 & 1) == 0;
  v8 = __OFADD__(v6, v7);
  v9 = v6 + v7;
  if (v8)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  LOBYTE(v2) = v5;
  if (*(*(v0 + 128) + 24) >= v9)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_8;
    }

LABEL_26:
    v55 = result;
    sub_10100C0D0();
    result = v55;
    goto LABEL_8;
  }

  v10 = *(v0 + 96);
  sub_100FF4230(v9, isUniquelyReferenced_nonNull_native);
  v11 = *(v0 + 32);
  result = sub_100772A10(v10);
  if ((v2 & 1) != (v12 & 1))
  {
    v13 = *(v0 + 80);

    return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  }

LABEL_8:
  v14 = *(v0 + 32);
  v15 = *(v0 + 200);
  if (v2)
  {
    v2 = *(v0 + 112);
    v16 = *(v0 + 96);
    v17 = v14[7];
    v18 = *(v17 + 8 * result);
    *(v17 + 8 * result) = v15;

    sub_1009AB920(v16, type metadata accessor for ManagedCBPeripheralBeaconInfo);
    result = sub_1009AB920(v2, type metadata accessor for ManagedCBPeripheralBeaconInfo);
  }

  else
  {
    v19 = *(v0 + 160);
    v2 = *(v0 + 112);
    v20 = *(v0 + 96);
    v14[(result >> 6) + 8] |= 1 << result;
    v21 = result;
    sub_1009AB854(v20, v14[6] + v19 * result, type metadata accessor for ManagedCBPeripheralBeaconInfo);
    *(v14[7] + 8 * v21) = v15;
    sub_1009AB920(v20, type metadata accessor for ManagedCBPeripheralBeaconInfo);
    result = sub_1009AB920(v2, type metadata accessor for ManagedCBPeripheralBeaconInfo);
    v22 = v14[2];
    v8 = __OFADD__(v22, 1);
    v23 = v22 + 1;
    if (v8)
    {
      __break(1u);
      return result;
    }

    v14[2] = v23;
  }

  v25 = *(v0 + 144);
  v24 = *(v0 + 152);
  *(v0 + 128) = v14;
  *(v0 + 136) = v14;
  v26 = (v25 - 1) & v25;
  if (v26)
  {
    v27 = *(v0 + 40);
LABEL_18:
    *(v0 + 144) = v26;
    *(v0 + 152) = v24;
    v30 = *(v0 + 112);
    v29 = *(v0 + 120);
    v31 = *(v0 + 80);
    v32 = *(v0 + 72);
    v33 = *(v0 + 48);
    v34 = *(v0 + 56);
    v35 = __clz(__rbit64(v26)) | (v24 << 6);
    v36 = *(v27 + 48);
    v37 = *(*(v0 + 88) + 72);
    *(v0 + 160) = v37;
    sub_1009AB854(v36 + v37 * v35, v29, type metadata accessor for ManagedCBPeripheralBeaconInfo);
    sub_1009AB8BC(v29, v30);
    v38 = sub_1000035D0(v33, v33[3]);
    v39 = type metadata accessor for UUID();
    *(v0 + 168) = v39;
    v40 = *(v39 - 8);
    v41 = *(v40 + 16);
    *(v0 + 176) = v41;
    *(v0 + 184) = (v40 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v41(v32, v30, v39);
    v41(v32 + *(v34 + 20), v30 + *(v31 + 20), v39);
    v42 = *v38;
    v43 = v38[1];
    v44 = v38[2];
    v45 = swift_task_alloc();
    *(v0 + 192) = v45;
    *v45 = v0;
    v45[1] = sub_1009A4DB0;
    v46 = *(v0 + 72);

    return sub_100F16A4C(v46, v42, v43, v44);
  }

  else
  {
    while (1)
    {
      v28 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v28 >= (((1 << *(v0 + 216)) + 63) >> 6))
      {
        break;
      }

      v27 = *(v0 + 40);
      v26 = *(v27 + 8 * v28 + 64);
      ++v24;
      if (v26)
      {
        v24 = v28;
        goto LABEL_18;
      }
    }

    v48 = *(v0 + 112);
    v47 = *(v0 + 120);
    v50 = *(v0 + 96);
    v49 = *(v0 + 104);
    v52 = *(v0 + 64);
    v51 = *(v0 + 72);
    v53 = *(v0 + 40);

    v54 = *(v0 + 8);

    return v54(v14);
  }
}

uint64_t sub_1009A58E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[27] = a3;
  v4[28] = v3;
  v4[25] = a1;
  v4[26] = a2;
  v5 = *(*(sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0) - 8) + 64) + 15;
  v4[29] = swift_task_alloc();
  v6 = type metadata accessor for BeaconIdentifier();
  v4[30] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v4[31] = swift_task_alloc();
  v8 = *(*(sub_1000BC4D4(&unk_1016C8FC0, &unk_10139D7D0) - 8) + 64) + 15;
  v4[32] = swift_task_alloc();
  v4[33] = swift_task_alloc();
  v4[34] = swift_task_alloc();
  v9 = *(*(sub_1000BC4D4(&qword_1016A40D0, &unk_10138BE70) - 8) + 64) + 15;
  v4[35] = swift_task_alloc();
  v4[36] = swift_task_alloc();
  v10 = type metadata accessor for MACAddress();
  v4[37] = v10;
  v11 = *(v10 - 8);
  v4[38] = v11;
  v12 = *(v11 + 64) + 15;
  v4[39] = swift_task_alloc();
  v4[40] = swift_task_alloc();
  v4[41] = swift_task_alloc();
  v13 = type metadata accessor for ManagedCBPeripheralBeaconInfo();
  v4[42] = v13;
  v14 = *(v13 - 8);
  v4[43] = v14;
  v15 = *(v14 + 64) + 15;
  v4[44] = swift_task_alloc();
  v4[45] = swift_task_alloc();
  v16 = *(*(sub_1000BC4D4(&qword_1016B07B8, &qword_1013CF1C8) - 8) + 64) + 15;
  v4[46] = swift_task_alloc();
  v4[47] = swift_task_alloc();

  return _swift_task_switch(sub_1009A5B98, 0, 0);
}

uint64_t sub_1009A5B98()
{
  *(v1 + 176) = _swiftEmptyArrayStorage;
  v125 = (v1 + 64);
  v2 = *(v1 + 208);
  v3 = *(v2 + 32);
  *(v1 + 536) = v3;
  v4 = 1 << v3;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(v2 + 64);

  v7 = 0;
  while (1)
  {
    if (v6)
    {
      v8 = *(v1 + 208);
LABEL_16:
      v13 = *(v1 + 360);
      v14 = *(v1 + 368);
      v15 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v16 = v15 | (v7 << 6);
      sub_1009AB854(*(v8 + 48) + *(*(v1 + 344) + 72) * v16, v13, type metadata accessor for ManagedCBPeripheralBeaconInfo);
      v17 = *(*(v8 + 56) + 8 * v16);
      v18 = sub_1000BC4D4(&qword_1016B07C0, &unk_1013CF1D0);
      v19 = *(v18 + 48);
      sub_1009AB8BC(v13, v14);
      *(v14 + v19) = v17;
      (*(*(v18 - 8) + 56))(v14, 0, 1, v18);
    }

    else
    {
      v9 = ((1 << *(v1 + 536)) + 63) >> 6;
      v10 = v9 <= v7 + 1 ? v7 + 1 : ((1 << *(v1 + 536)) + 63) >> 6;
      v11 = v10 - 1;
      while (1)
      {
        v12 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          __break(1u);
LABEL_87:
          v118 = 0;
          goto LABEL_92;
        }

        if (v12 >= v9)
        {
          break;
        }

        v8 = *(v1 + 208);
        v6 = *(v8 + 8 * v12 + 64);
        ++v7;
        if (v6)
        {
          v7 = v12;
          goto LABEL_16;
        }
      }

      v29 = *(v1 + 368);
      v30 = sub_1000BC4D4(&qword_1016B07C0, &unk_1013CF1D0);
      (*(*(v30 - 8) + 56))(v29, 1, 1, v30);
      v6 = 0;
      v7 = v11;
    }

    *(v1 + 384) = v6;
    *(v1 + 392) = v7;
    v20 = *(v1 + 376);
    sub_1000D2AD8(*(v1 + 368), v20, &qword_1016B07B8, &qword_1013CF1C8);
    v21 = sub_1000BC4D4(&qword_1016B07C0, &unk_1013CF1D0);
    if ((*(*(v21 - 8) + 48))(v20, 1, v21) == 1)
    {
      v32 = *(v1 + 368);
      v31 = *(v1 + 376);
      v34 = *(v1 + 352);
      v33 = *(v1 + 360);
      v36 = *(v1 + 320);
      v35 = *(v1 + 328);
      v37 = *(v1 + 312);
      v38 = *(v1 + 280);
      v39 = *(v1 + 288);
      v128 = *(v1 + 272);
      v131 = *(v1 + 264);
      v134 = *(v1 + 256);
      v137 = *(v1 + 248);
      v140 = *(v1 + 232);
      v40 = *(v1 + 208);

      v41 = *(v1 + 8);

      return v41(_swiftEmptyArrayStorage);
    }

    v22 = *(v1 + 376);
    v23 = *(v1 + 352);
    v24 = *(v1 + 216);
    v25 = *(v22 + *(v21 + 48));
    *(v1 + 400) = v25;
    sub_1009AB8BC(v22, v23);
    if (*(v24 + 16))
    {
      v26 = *(v1 + 216);
      v27 = sub_100772A10(*(v1 + 352));
      if (v28)
      {
        break;
      }
    }

    v0 = *(v1 + 352);

    sub_1009AB920(v0, type metadata accessor for ManagedCBPeripheralBeaconInfo);
  }

  v43 = (*(*(v1 + 216) + 56) + 24 * v27);
  *(v1 + 408) = *v43;
  *(v1 + 416) = v43[1];
  v126 = v25;
  v127 = v25[2];
  if (!v127)
  {

    v69 = _swiftEmptyDictionarySingleton;
    v75 = 1;
    v74 = _swiftEmptyArrayStorage;
    goto LABEL_43;
  }

  v123 = v25[5];

  v44 = 0;
  v45 = v25 + 9;
  v46 = _swiftEmptyDictionarySingleton;
  v47 = v1 + 176;
  do
  {
    if (v44 >= v25[2])
    {
      __break(1u);
LABEL_96:
      __break(1u);
LABEL_97:
      __break(1u);
LABEL_98:
      __break(1u);
LABEL_99:
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
      goto LABEL_105;
    }

    v50 = *(v45 - 1);
    v51 = *v45;
    v52 = *(v45 - 4);
    v129 = *(v45 - 3);
    v132 = *(v45 - 2);
    sub_100017D5C(v129, v132);
    sub_100017D5C(v50, v51);

    v135 = v51;
    v138 = v50;
    v53 = Data.subdata(in:)();
    v55 = v54;
    v141.super.super.isa = UInt64._bridgeToObjectiveC()().super.super.isa;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v57 = v47;
    v58 = isUniquelyReferenced_nonNull_native;
    *(v57 + 8) = v46;
    v60 = sub_100771E30(v53, v55);
    v61 = v46[2];
    v62 = (v59 & 1) == 0;
    v63 = v61 + v62;
    if (__OFADD__(v61, v62))
    {
      goto LABEL_96;
    }

    v64 = v59;
    if (v46[3] >= v63)
    {
      if (v58)
      {
        v47 = v1 + 176;
        v69 = *(v1 + 184);
        if (v59)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v47 = v1 + 176;
        sub_10100C34C();
        v69 = *(v1 + 184);
        if (v64)
        {
          goto LABEL_27;
        }
      }
    }

    else
    {
      v65 = v58;
      v47 = v1 + 176;
      sub_100FF4898(v63, v65);
      v66 = *(v1 + 184);
      v67 = sub_100771E30(v53, v55);
      if ((v64 & 1) != (v68 & 1))
      {

        return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      }

      v60 = v67;
      v69 = *(v1 + 184);
      if (v64)
      {
LABEL_27:
        v48 = v69[7];
        v49 = *(v48 + 8 * v60);
        *(v48 + 8 * v60) = v141;

        sub_100016590(v53, v55);

        goto LABEL_28;
      }
    }

    v69[(v60 >> 6) + 8] |= 1 << v60;
    v70 = (v69[6] + 16 * v60);
    *v70 = v53;
    v70[1] = v55;
    *(v69[7] + 8 * v60) = v141;

    v71 = v69[2];
    v72 = __OFADD__(v71, 1);
    v73 = v71 + 1;
    if (v72)
    {
      goto LABEL_98;
    }

    v69[2] = v73;
LABEL_28:
    ++v44;
    sub_100016590(v129, v132);
    sub_100016590(v138, v135);
    v45 += 6;
    v46 = v69;
    v25 = v126;
  }

  while (v127 != v44);
  v74 = _swiftEmptyArrayStorage;
  v75 = v123;
LABEL_43:
  v76 = 0;
  *(v1 + 424) = v75;
  *(v1 + 432) = v69;
  v77 = v25 + 9;
  *(v1 + 192) = _swiftEmptyArrayStorage;
  v122 = v25 + 9;
  while (2)
  {
    *(v1 + 440) = v74;
    v78 = &v77[6 * v76];
LABEL_45:
    if (v127 == v76)
    {
      v116 = async function pointer to daemon.getter[1];
      v117 = swift_task_alloc();
      *(v1 + 448) = v117;
      *v117 = v1;
      v117[1] = sub_1009A67FC;

      return daemon.getter();
    }

    if (v76 >= v25[2])
    {
      goto LABEL_97;
    }

    v136 = v76;
    v79 = *(v1 + 296);
    v80 = *(v1 + 304);
    v81 = *(v1 + 288);
    v82 = *(v78 - 3);
    v83 = *(v78 - 2);
    v84 = *(v78 - 1);
    v85 = *v78;
    sub_100017D5C(v82, v83);
    v142 = v84;
    v139 = v85;
    sub_100017D5C(v84, v85);
    v86 = Data.init(stringLiteral:)();
    v88 = v87;
    sub_100017D5C(v82, v83);
    v130 = v83;
    v133 = v82;
    MACAddress.init(addressToSanitize:type:)();
    if ((*(v80 + 48))(v81, 1, v79) == 1)
    {
      goto LABEL_106;
    }

    v89 = *(v1 + 328);
    v91 = *(v1 + 296);
    v90 = *(v1 + 304);
    (*(v90 + 32))(v89, *(v1 + 288), v91);
    v92 = MACAddress.data.getter();
    v94 = v93;
    (*(v90 + 8))(v89, v91);
    *(v1 + 144) = v86;
    *(v1 + 152) = v88;
    *(v1 + 88) = &type metadata for Data;
    *(v1 + 96) = &protocol witness table for Data;
    *(v1 + 64) = v92;
    *(v1 + 72) = v94;
    v95 = sub_1000035D0(v125, &type metadata for Data);
    v96 = *v95;
    v97 = v95[1];
    v98 = v97 >> 62;
    if ((v97 >> 62) > 1)
    {
      if (v98 == 2)
      {
        v99 = v94;
        v101 = *(v96 + 16);
        v100 = *(v96 + 24);
        sub_100017D5C(v86, v88);
        v124 = v99;
        sub_100017D5C(v92, v99);
        if (__DataStorage._bytes.getter() && __OFSUB__(v101, __DataStorage._offset.getter()))
        {
          goto LABEL_103;
        }

        if (__OFSUB__(v100, v101))
        {
          goto LABEL_102;
        }

        goto LABEL_59;
      }

      *(v1 + 528) = 0;
      *(v1 + 522) = 0;
LABEL_61:
      Data._Representation.append(contentsOf:)();
    }

    else
    {
      if (!v98)
      {
        *(v1 + 508) = v96;
        *(v1 + 516) = v97;
        *(v1 + 518) = BYTE2(v97);
        *(v1 + 519) = BYTE3(v97);
        *(v1 + 520) = BYTE4(v97);
        *(v1 + 521) = BYTE5(v97);
        goto LABEL_61;
      }

      v124 = v94;
      v102 = v96;
      if (v96 >> 32 < v96)
      {
        goto LABEL_101;
      }

      sub_100017D5C(v86, v88);
      sub_100017D5C(v92, v94);
      if (__DataStorage._bytes.getter() && __OFSUB__(v102, __DataStorage._offset.getter()))
      {
        goto LABEL_104;
      }

LABEL_59:
      __DataStorage._length.getter();
      Data._Representation.append(contentsOf:)();
      sub_100016590(v92, v124);
      sub_100016590(v86, v88);
    }

    sub_100007BAC(v125);
    v103 = *(v1 + 144);
    v104 = *(v1 + 152);
    v105 = Data.subdata(in:)();
    v11 = v105;
    v0 = v106;
    v107 = v106 >> 62;
    if ((v106 >> 62) > 1)
    {
      if (v107 != 2)
      {
        goto LABEL_87;
      }

      v109 = *(v105 + 16);
      v108 = *(v105 + 24);
      v72 = __OFSUB__(v108, v109);
      v110 = v108 - v109;
      if (v72)
      {
        goto LABEL_100;
      }

      if (v110 != 16)
      {
        break;
      }

      goto LABEL_72;
    }

    if (!v107)
    {
      if (BYTE6(v106) != 16)
      {
        break;
      }

      goto LABEL_72;
    }

    if (__OFSUB__(HIDWORD(v105), v105))
    {
      goto LABEL_99;
    }

    if (HIDWORD(v105) - v105 == 16)
    {
LABEL_72:
      v76 = v136 + 1;
      v78 += 6;
      v111 = objc_allocWithZone(SPCBPeripheralKeyAddressPair);
      isa = Data._bridgeToObjectiveC()().super.isa;
      v113 = Data._bridgeToObjectiveC()().super.isa;
      v114 = [v111 initWithLEMACAddress:isa longTermKey:v113];

      sub_100016590(v11, v0);
      sub_100016590(v103, v104);
      sub_100016590(v133, v130);
      sub_100016590(v142, v139);
      v25 = v126;
      if (v114)
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((*(v1 + 192) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + 192) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v115 = *((*(v1 + 192) & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v74 = *(v1 + 192);
        v77 = v122;
        continue;
      }

      goto LABEL_45;
    }

    break;
  }

  if (v107 == 2)
  {
    v120 = *(v105 + 16);
    v119 = *(v105 + 24);
    v118 = v119 - v120;
    if (!__OFSUB__(v119, v120))
    {
      goto LABEL_92;
    }

    __break(1u);
  }

  else if (v107 == 1)
  {
    if (!__OFSUB__(HIDWORD(v105), v105))
    {
      v118 = HIDWORD(v105) - v105;
      goto LABEL_92;
    }

LABEL_105:
    __break(1u);
LABEL_106:
    __break(1u);
  }

  v118 = BYTE6(v106);
LABEL_92:
  sub_100018350();
  swift_allocError();
  *v121 = 16;
  *(v121 + 8) = v118;
  *(v121 + 16) = 0;
  swift_willThrow();
  sub_100016590(v11, v0);

  return swift_unexpectedError();
}

uint64_t sub_1009A67FC(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 448);
  v12 = *v1;
  *(v3 + 456) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 464) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for ObservationStoreService();
  v9 = sub_1009ABA98(&qword_1016AA400, &type metadata accessor for Daemon);
  v10 = sub_1009ABA98(&qword_1016AA450, type metadata accessor for ObservationStoreService);
  *v6 = v12;
  v6[1] = sub_1009A6A04;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_1009A6A04(uint64_t a1)
{
  v5 = *v2;
  v4 = *v2;
  v6 = *(*v2 + 464);
  v7 = *v2;

  v8 = *(v4 + 456);
  if (v1)
  {
    v9 = *(v5 + 400);

    return _swift_task_switch(sub_1009A70A4, 0, 0);
  }

  else
  {
    v10 = *(v5 + 352);
    v11 = *(v5 + 336);

    *(v5 + 472) = a1;
    v12 = *(v11 + 20);
    *(v5 + 504) = v12;
    v13 = *(v11 + 28);
    v14 = swift_task_alloc();
    *(v5 + 480) = v14;
    *v14 = v7;
    v14[1] = sub_1009A6C38;
    v15 = *(v5 + 264);

    return sub_1010CD424(v15, v10 + v12, v10 + v13);
  }
}

uint64_t sub_1009A6C38()
{
  v1 = *(*v0 + 480);
  v3 = *v0;

  return _swift_task_switch(sub_1009A6D60, 0, 0);
}

uint64_t sub_1009A6D60()
{
  v1 = *(v0 + 504);
  v2 = *(v0 + 472);
  v3 = *(v0 + 352);
  v5 = *(v0 + 264);
  v4 = *(v0 + 272);
  v7 = *(v0 + 240);
  v6 = *(v0 + 248);
  v8 = *(v0 + 224);

  sub_1000D2AD8(v5, v4, &unk_1016C8FC0, &unk_10139D7D0);
  v9 = sub_1000035D0(v8, v8[3]);
  v10 = type metadata accessor for UUID();
  v11 = *(*(v10 - 8) + 16);
  v11(v6, v3, v10);
  v11(v6 + *(v7 + 20), v3 + v1, v10);
  v12 = *v4;
  v13 = *v9;
  v14 = v9[1];
  v15 = v9[2];
  v16 = swift_task_alloc();
  *(v0 + 488) = v16;
  *v16 = v0;
  v16[1] = sub_1009A6F08;
  v17 = *(v0 + 248);

  return sub_100F1753C(v0 + 16, v17, 0, v12, v13, v14, v15);
}

uint64_t sub_1009A6F08()
{
  v2 = *v1;
  v3 = *(*v1 + 488);
  v4 = *v1;
  *(*v1 + 496) = v0;

  v5 = *(v2 + 248);
  if (v0)
  {

    sub_1009AB920(v5, type metadata accessor for BeaconIdentifier);
    v6 = sub_1009A92B4;
  }

  else
  {
    sub_1009AB920(v5, type metadata accessor for BeaconIdentifier);
    v6 = sub_1009A7FA4;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1009A70A4()
{
  v1 = *(v0 + 352);
  v2 = *(v0 + 336);
  v3 = *(v0 + 232);
  v4 = *(v0 + 200);
  v5 = v2[5];
  sub_1000D2A70(v1 + v2[6], v3, &qword_1016980D0, &unk_10138F3B0);
  v6 = (v1 + v2[8]);
  v7 = *v6;
  v8 = v6[1];
  v160 = *(v1 + v2[12]);
  v152 = *(v1 + v2[11]);
  sub_1000BC4D4(&unk_10169BAE0, &unk_10138C430);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_10138C320;
  *(v9 + 32) = v4;
  sub_10002E98C(0, 0xF000000000000000);
  v10 = v4;
  v156.super.isa = UUID._bridgeToObjectiveC()().super.isa;
  v148.super.isa = UUID._bridgeToObjectiveC()().super.isa;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  isa = 0;
  if ((*(v12 + 48))(v3, 1, v11) != 1)
  {
    v14 = *(v0 + 232);
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v12 + 8))(v14, v11);
  }

  v15 = *(v0 + 432);
  v16 = *(v0 + 408);
  v17 = *(v0 + 416);
  v18 = String._bridgeToObjectiveC()();
  v19 = String._bridgeToObjectiveC()();

  sub_100008BB8(0, &qword_1016AD650, NSNumber_ptr);
  sub_1004695BC();
  v20 = Dictionary._bridgeToObjectiveC()().super.isa;

  v21 = *(v0 + 440);
  v22 = *(v0 + 424);
  v23 = objc_allocWithZone(SPPeripheral);
  sub_100008BB8(0, &qword_10169EF48, SPCBPeripheralManagerSessionKey_ptr);
  v24 = Array._bridgeToObjectiveC()().super.isa;

  sub_100008BB8(0, &qword_1016B07B0, SPCBPeripheralKeyAddressPair_ptr);
  v25 = Array._bridgeToObjectiveC()().super.isa;

  LOBYTE(v138) = v152;
  v26 = [v23 initWithUserIdentifier:v156.super.isa beaconIdentifier:v148.super.isa groupIdentifier:isa name:v18 partIdentifier:v160 serialNumber:v19 managedByFindMy:v138 primaryIndex:v22 ltkIndexMap:v20 lastConnectedLEMAC:0 allowedSessions:v24 keyAddressPairs:v25];

  isUniquelyReferenced_nonNull_native = v26;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(v0 + 176) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 176) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_101;
  }

LABEL_4:
  v28 = *(v0 + 352);
  v29 = v0 + 176;
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  sub_100006654(0, 0xF000000000000000);

  sub_1009AB920(v28, type metadata accessor for ManagedCBPeripheralBeaconInfo);
  v161 = *(v0 + 176);
  v31 = *(v0 + 384);
  v30 = *(v0 + 392);
  while (1)
  {
    if (v31)
    {
      v32 = *(v0 + 208);
LABEL_16:
      v38 = *(v0 + 360);
      v37 = *(v0 + 368);
      v39 = __clz(__rbit64(v31));
      v31 &= v31 - 1;
      v40 = v39 | (v30 << 6);
      sub_1009AB854(*(v32 + 48) + *(*(v0 + 344) + 72) * v40, v38, type metadata accessor for ManagedCBPeripheralBeaconInfo);
      v41 = *(*(v32 + 56) + 8 * v40);
      v42 = sub_1000BC4D4(&qword_1016B07C0, &unk_1013CF1D0);
      v43 = *(v42 + 48);
      sub_1009AB8BC(v38, v37);
      *(v37 + v43) = v41;
      (*(*(v42 - 8) + 56))(v37, 0, 1, v42);
    }

    else
    {
      v33 = ((1 << *(v0 + 536)) + 63) >> 6;
      v34 = v33 <= (v30 + 1) ? v30 + 1 : ((1 << *(v0 + 536)) + 63) >> 6;
      v35 = v34 - 1;
      while (1)
      {
        v36 = v30 + 1;
        if (__OFADD__(v30, 1))
        {
          __break(1u);
LABEL_87:
          v134 = 0;
          goto LABEL_92;
        }

        if (v36 >= v33)
        {
          break;
        }

        v32 = *(v0 + 208);
        v31 = *(v32 + 8 * v36 + 64);
        ++v30;
        if (v31)
        {
          v30 = v36;
          goto LABEL_16;
        }
      }

      v52 = *(v0 + 368);
      v53 = sub_1000BC4D4(&qword_1016B07C0, &unk_1013CF1D0);
      (*(*(v53 - 8) + 56))(v52, 1, 1, v53);
      v31 = 0;
      v30 = v35;
    }

    *(v0 + 384) = v31;
    *(v0 + 392) = v30;
    v44 = *(v0 + 376);
    sub_1000D2AD8(*(v0 + 368), v44, &qword_1016B07B8, &qword_1013CF1C8);
    v45 = sub_1000BC4D4(&qword_1016B07C0, &unk_1013CF1D0);
    if ((*(*(v45 - 8) + 48))(v44, 1, v45) == 1)
    {
      v55 = *(v0 + 368);
      v54 = *(v0 + 376);
      v57 = *(v0 + 352);
      v56 = *(v0 + 360);
      v59 = *(v0 + 320);
      v58 = *(v0 + 328);
      v60 = *(v0 + 312);
      v61 = *(v0 + 280);
      v62 = *(v0 + 288);
      v143 = *(v0 + 272);
      v145 = *(v0 + 264);
      v149 = *(v0 + 256);
      v153 = *(v0 + 248);
      v157 = *(v0 + 232);
      v63 = *(v0 + 208);

      v64 = *(v0 + 8);

      return v64(v161);
    }

    v46 = *(v0 + 376);
    v47 = *(v0 + 352);
    isUniquelyReferenced_nonNull_native = *(v0 + 216);
    v48 = *(v46 + *(v45 + 48));
    *(v0 + 400) = v48;
    sub_1009AB8BC(v46, v47);
    if (*(isUniquelyReferenced_nonNull_native + 16))
    {
      v49 = *(v0 + 216);
      v50 = sub_100772A10(*(v0 + 352));
      if (v51)
      {
        break;
      }
    }

    v29 = *(v0 + 352);

    sub_1009AB920(v29, type metadata accessor for ManagedCBPeripheralBeaconInfo);
  }

  v66 = (*(*(v0 + 216) + 56) + 24 * v50);
  *(v0 + 408) = *v66;
  *(v0 + 416) = v66[1];
  v142 = v48;
  v144 = v48[2];
  if (v144)
  {
    v140 = v48[5];

    v67 = 0;
    v68 = v48 + 9;
    v69 = _swiftEmptyDictionarySingleton;
    while (1)
    {
      if (v67 >= v142[2])
      {
        __break(1u);
LABEL_96:
        __break(1u);
LABEL_97:
        __break(1u);
LABEL_98:
        __break(1u);
LABEL_99:
        __break(1u);
LABEL_100:
        __break(1u);
LABEL_101:
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        goto LABEL_4;
      }

      v72 = *(v68 - 1);
      v73 = *v68;
      v74 = *(v68 - 4);
      v146 = *(v68 - 3);
      v150 = *(v68 - 2);
      sub_100017D5C(v146, v150);
      sub_100017D5C(v72, v73);

      v154 = v73;
      v158 = v72;
      v75 = Data.subdata(in:)();
      v77 = v76;
      v162.super.super.isa = UInt64._bridgeToObjectiveC()().super.super.isa;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v0 + 184) = v69;
      v79 = sub_100771E30(v75, v77);
      v80 = v69[2];
      v81 = (v78 & 1) == 0;
      v82 = v80 + v81;
      if (__OFADD__(v80, v81))
      {
        goto LABEL_96;
      }

      v83 = v78;
      if (v69[3] >= v82)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v87 = *(v0 + 184);
          if (v78)
          {
            goto LABEL_27;
          }
        }

        else
        {
          sub_10100C34C();
          v87 = *(v0 + 184);
          if (v83)
          {
            goto LABEL_27;
          }
        }
      }

      else
      {
        sub_100FF4898(v82, isUniquelyReferenced_nonNull_native);
        v84 = *(v0 + 184);
        v85 = sub_100771E30(v75, v77);
        if ((v83 & 1) != (v86 & 1))
        {

          return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        }

        v79 = v85;
        v87 = *(v0 + 184);
        if (v83)
        {
LABEL_27:
          v70 = v87[7];
          v71 = *(v70 + 8 * v79);
          *(v70 + 8 * v79) = v162;

          sub_100016590(v75, v77);

          goto LABEL_28;
        }
      }

      v87[(v79 >> 6) + 8] |= 1 << v79;
      v88 = (v87[6] + 16 * v79);
      *v88 = v75;
      v88[1] = v77;
      *(v87[7] + 8 * v79) = v162;

      v89 = v87[2];
      v90 = __OFADD__(v89, 1);
      v91 = v89 + 1;
      if (v90)
      {
        goto LABEL_98;
      }

      v87[2] = v91;
LABEL_28:
      ++v67;
      sub_100016590(v146, v150);
      sub_100016590(v158, v154);
      v68 += 6;
      v69 = v87;
      if (v144 == v67)
      {
        v92 = v140;
        v48 = v142;
        goto LABEL_43;
      }
    }
  }

  v87 = _swiftEmptyDictionarySingleton;
  v92 = 1;
LABEL_43:
  v93 = 0;
  *(v0 + 424) = v92;
  *(v0 + 432) = v87;
  v94 = _swiftEmptyArrayStorage;
  *(v0 + 192) = _swiftEmptyArrayStorage;
  v95 = v48 + 9;
  v139 = v48 + 9;
LABEL_44:
  *(v0 + 440) = v94;
  v96 = &v95[6 * v93];
  while (1)
  {
    if (v144 == v93)
    {
      v132 = async function pointer to daemon.getter[1];
      v133 = swift_task_alloc();
      *(v0 + 448) = v133;
      *v133 = v0;
      v133[1] = sub_1009A67FC;

      return daemon.getter();
    }

    if (v93 >= v48[2])
    {
      goto LABEL_97;
    }

    v97 = *(v0 + 296);
    v98 = *(v0 + 304);
    v99 = *(v0 + 288);
    v100 = *(v96 - 3);
    v101 = *(v96 - 2);
    v102 = *(v96 - 1);
    v103 = *v96;
    sub_100017D5C(v100, v101);
    v159 = v103;
    v163 = v102;
    sub_100017D5C(v102, v103);
    v104 = Data.init(stringLiteral:)();
    v106 = v105;
    sub_100017D5C(v100, v101);
    v147 = v101;
    v151 = v100;
    MACAddress.init(addressToSanitize:type:)();
    if ((*(v98 + 48))(v99, 1, v97) == 1)
    {
      goto LABEL_107;
    }

    v107 = *(v0 + 328);
    v109 = *(v0 + 296);
    v108 = *(v0 + 304);
    (*(v108 + 32))(v107, *(v0 + 288), v109);
    v110 = MACAddress.data.getter();
    v112 = v111;
    (*(v108 + 8))(v107, v109);
    *(v0 + 144) = v104;
    *(v0 + 152) = v106;
    *(v0 + 88) = &type metadata for Data;
    *(v0 + 96) = &protocol witness table for Data;
    *(v0 + 64) = v110;
    *(v0 + 72) = v112;
    v155 = v112;
    v113 = sub_1000035D0((v0 + 64), &type metadata for Data);
    v114 = *v113;
    v115 = v113[1];
    v116 = v115 >> 62;
    if ((v115 >> 62) > 1)
    {
      if (v116 != 2)
      {
        *(v0 + 528) = 0;
        *(v0 + 522) = 0;
        goto LABEL_61;
      }

      v141 = v93;
      v118 = *(v114 + 16);
      v117 = *(v114 + 24);
      sub_100017D5C(v104, v106);
      sub_100017D5C(v110, v155);
      if (__DataStorage._bytes.getter() && __OFSUB__(v118, __DataStorage._offset.getter()))
      {
        goto LABEL_104;
      }

      if (__OFSUB__(v117, v118))
      {
        goto LABEL_103;
      }

LABEL_59:
      __DataStorage._length.getter();
      Data._Representation.append(contentsOf:)();
      sub_100016590(v110, v155);
      sub_100016590(v104, v106);
      v93 = v141;
      goto LABEL_62;
    }

    if (v116)
    {
      v141 = v93;
      v119 = v114;
      if (v114 >> 32 < v114)
      {
        __break(1u);
LABEL_103:
        __break(1u);
LABEL_104:
        __break(1u);
LABEL_105:
        __break(1u);
        goto LABEL_106;
      }

      sub_100017D5C(v104, v106);
      sub_100017D5C(v110, v155);
      if (__DataStorage._bytes.getter() && __OFSUB__(v119, __DataStorage._offset.getter()))
      {
        goto LABEL_105;
      }

      goto LABEL_59;
    }

    *(v0 + 508) = v114;
    *(v0 + 516) = v115;
    *(v0 + 518) = BYTE2(v115);
    *(v0 + 519) = BYTE3(v115);
    *(v0 + 520) = BYTE4(v115);
    *(v0 + 521) = BYTE5(v115);
LABEL_61:
    Data._Representation.append(contentsOf:)();
LABEL_62:
    sub_100007BAC((v0 + 64));
    v120 = *(v0 + 144);
    v121 = *(v0 + 152);
    v122 = Data.subdata(in:)();
    isUniquelyReferenced_nonNull_native = v122;
    v29 = v123;
    v124 = v123 >> 62;
    if ((v123 >> 62) > 1)
    {
      if (v124 != 2)
      {
        goto LABEL_87;
      }

      v126 = *(v122 + 16);
      v125 = *(v122 + 24);
      v90 = __OFSUB__(v125, v126);
      v127 = v125 - v126;
      if (v90)
      {
        goto LABEL_100;
      }

      if (v127 != 16)
      {
        goto LABEL_79;
      }

      goto LABEL_72;
    }

    if (v124)
    {
      break;
    }

    if (BYTE6(v123) != 16)
    {
      goto LABEL_79;
    }

LABEL_72:
    ++v93;
    v96 += 6;
    v128 = objc_allocWithZone(SPCBPeripheralKeyAddressPair);
    v129 = Data._bridgeToObjectiveC()().super.isa;
    v130 = Data._bridgeToObjectiveC()().super.isa;
    v131 = [v128 initWithLEMACAddress:v129 longTermKey:v130];

    sub_100016590(isUniquelyReferenced_nonNull_native, v29);
    sub_100016590(v120, v121);
    sub_100016590(v151, v147);
    sub_100016590(v163, v159);
    v48 = v142;
    if (v131)
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*(v0 + 192) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 192) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        isUniquelyReferenced_nonNull_native = *((*(v0 + 192) & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v94 = *(v0 + 192);
      v95 = v139;
      goto LABEL_44;
    }
  }

  if (__OFSUB__(HIDWORD(v122), v122))
  {
    goto LABEL_99;
  }

  if (HIDWORD(v122) - v122 == 16)
  {
    goto LABEL_72;
  }

LABEL_79:
  if (v124 == 2)
  {
    v136 = *(v122 + 16);
    v135 = *(v122 + 24);
    v134 = v135 - v136;
    if (!__OFSUB__(v135, v136))
    {
      goto LABEL_92;
    }

    __break(1u);
  }

  else if (v124 == 1)
  {
    if (!__OFSUB__(HIDWORD(v122), v122))
    {
      v134 = HIDWORD(v122) - v122;
      goto LABEL_92;
    }

LABEL_106:
    __break(1u);
LABEL_107:
    __break(1u);
  }

  v134 = BYTE6(v123);
LABEL_92:
  sub_100018350();
  swift_allocError();
  *v137 = 16;
  *(v137 + 8) = v134;
  *(v137 + 16) = 0;
  swift_willThrow();
  sub_100016590(isUniquelyReferenced_nonNull_native, v29);

  return swift_unexpectedError();
}

uint64_t sub_1009A7FA4()
{
  v209 = v0;
  if (*(v0 + 16) == 2 || (v2 = *(v0 + 32), v1 = *(v0 + 40), sub_100017D5C(v2, v1), sub_10000B3A8(v0 + 16, &qword_1016B07C8, &unk_1013CF1E0), v1 >> 60 == 15))
  {
    v3 = *(v0 + 400);
    sub_10000B3A8(*(v0 + 272), &unk_1016C8FC0, &unk_10139D7D0);

    v4 = 0;
    v5 = 0xF000000000000000;
    goto LABEL_10;
  }

  v6 = *(v0 + 296);
  v7 = *(v0 + 304);
  v8 = *(v0 + 280);
  sub_10002E98C(v2, v1);
  sub_100017D5C(v2, v1);
  MACAddress.init(addressToSanitize:type:)();
  if ((*(v7 + 48))(v8, 1, v6) == 1)
  {
    __break(1u);
    return daemon.getter();
  }

  v9 = *(v0 + 400);
  v10 = *(v0 + 312);
  v11 = *(v0 + 320);
  v12 = *(v0 + 296);
  v13 = *(v0 + 304);
  v14 = *(v0 + 280);

  v206 = v1;
  sub_100006654(v2, v1);
  v15 = *(v13 + 32);
  v15(v10, v14, v12);
  v15(v11, v10, v12);
  if (qword_101694B98 == -1)
  {
    goto LABEL_6;
  }

LABEL_116:
  swift_once();
LABEL_6:
  v202 = v2;
  v16 = *(v0 + 272);
  v17 = *(v0 + 256);
  v18 = type metadata accessor for Logger();
  sub_1000076D4(v18, qword_10177B810);
  sub_1000D2A70(v16, v17, &unk_1016C8FC0, &unk_10139D7D0);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();
  v21 = os_log_type_enabled(v19, v20);
  v22 = *(v0 + 256);
  if (v21)
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v208 = v24;
    *v23 = 136446210;
    v25 = sub_1009AB5AC();
    v27 = v26;
    sub_10000B3A8(v22, &unk_1016C8FC0, &unk_10139D7D0);
    v28 = sub_1000136BC(v25, v27, &v208);

    *(v23 + 4) = v28;
    _os_log_impl(&_mh_execute_header, v19, v20, "lastConnectedLEMAC based on latestIndexObserved %{public}s", v23, 0xCu);
    sub_100007BAC(v24);
  }

  else
  {

    sub_10000B3A8(v22, &unk_1016C8FC0, &unk_10139D7D0);
  }

  v29 = *(v0 + 496);
  v30 = *(v0 + 320);
  v31 = *(v0 + 304);
  v191 = *(v0 + 296);
  v197 = *(v0 + 272);
  v32 = Data.init(stringLiteral:)();
  v34 = v33;
  v35 = MACAddress.data.getter();
  v37 = v36;
  *(v0 + 160) = v32;
  *(v0 + 168) = v34;
  *(v0 + 128) = &type metadata for Data;
  *(v0 + 136) = &protocol witness table for Data;
  *(v0 + 104) = v35;
  *(v0 + 112) = v36;
  v38 = sub_1000035D0((v0 + 104), &type metadata for Data);
  v40 = *v38;
  v39 = v38[1];
  sub_100017D5C(v32, v34);
  sub_100017D5C(v35, v37);
  sub_100017DB0(v40, v39);
  sub_100016590(v35, v37);
  sub_100016590(v32, v34);
  sub_100006654(v202, v206);
  (*(v31 + 8))(v30, v191);
  sub_10000B3A8(v197, &unk_1016C8FC0, &unk_10139D7D0);
  sub_100007BAC((v0 + 104));
  v4 = *(v0 + 160);
  v5 = *(v0 + 168);
LABEL_10:
  v41 = *(v0 + 352);
  v42 = *(v0 + 336);
  v43 = *(v0 + 232);
  v44 = *(v0 + 200);
  v45 = v42[5];
  sub_1000D2A70(v41 + v42[6], v43, &qword_1016980D0, &unk_10138F3B0);
  v46 = (v41 + v42[8]);
  v47 = v46[1];
  v203 = *v46;
  v192 = *(v41 + v42[12]);
  v187 = *(v41 + v42[11]);
  sub_1000BC4D4(&unk_10169BAE0, &unk_10138C430);
  v48 = swift_allocObject();
  *(v48 + 16) = xmmword_10138C320;
  *(v48 + 32) = v44;
  v206 = v4;
  sub_10002E98C(v4, v5);
  v49 = v44;
  v198.super.isa = UUID._bridgeToObjectiveC()().super.isa;
  v185.super.isa = UUID._bridgeToObjectiveC()().super.isa;
  v50 = type metadata accessor for UUID();
  v51 = *(v50 - 8);
  isa = 0;
  v53 = v5;
  if ((*(v51 + 48))(v43, 1, v50) != 1)
  {
    v54 = *(v0 + 232);
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v51 + 8))(v54, v50);
  }

  v55 = isa;
  v56 = *(v0 + 432);
  v58 = *(v0 + 408);
  v57 = *(v0 + 416);
  v183 = String._bridgeToObjectiveC()();
  v180 = String._bridgeToObjectiveC()();

  sub_100008BB8(0, &qword_1016AD650, NSNumber_ptr);
  sub_1004695BC();
  v59.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v60 = 0;
  if (v53 >> 60 != 15)
  {
    v60 = Data._bridgeToObjectiveC()().super.isa;
    sub_100006654(v206, v53);
  }

  v204 = v53;
  v61 = *(v0 + 440);
  v62 = *(v0 + 424);
  v63 = objc_allocWithZone(SPPeripheral);
  sub_100008BB8(0, &qword_10169EF48, SPCBPeripheralManagerSessionKey_ptr);
  v64 = Array._bridgeToObjectiveC()().super.isa;

  sub_100008BB8(0, &qword_1016B07B0, SPCBPeripheralKeyAddressPair_ptr);
  v65 = Array._bridgeToObjectiveC()().super.isa;

  LOBYTE(v177) = v187;
  v193 = [v63 initWithUserIdentifier:v198.super.isa beaconIdentifier:v185.super.isa groupIdentifier:v55 name:v183 partIdentifier:v192 serialNumber:v180 managedByFindMy:v177 primaryIndex:v62 ltkIndexMap:v59.super.isa lastConnectedLEMAC:v60 allowedSessions:v64 keyAddressPairs:v65];

  v66 = v0 + 16;
  isUniquelyReferenced_nonNull_native = v193;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(v0 + 176) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 176) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
LABEL_111:
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  v179 = (v66 + 506);
  v68 = *(v0 + 352);
  v69 = v66 + 160;
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  sub_100006654(v206, v204);

  sub_1009AB920(v68, type metadata accessor for ManagedCBPeripheralBeaconInfo);
  v206 = *(v0 + 176);
  v66 = &qword_1016B07C0;
  v71 = *(v0 + 384);
  v70 = *(v0 + 392);
  while (1)
  {
    if (v71)
    {
      v72 = *(v0 + 208);
LABEL_27:
      v76 = *(v0 + 360);
      v77 = *(v0 + 368);
      v78 = __clz(__rbit64(v71));
      v71 &= v71 - 1;
      v79 = v78 | (v70 << 6);
      sub_1009AB854(*(v72 + 48) + *(*(v0 + 344) + 72) * v79, v76, type metadata accessor for ManagedCBPeripheralBeaconInfo);
      v80 = *(*(v72 + 56) + 8 * v79);
      v81 = sub_1000BC4D4(&qword_1016B07C0, &unk_1013CF1D0);
      v82 = *(v81 + 48);
      sub_1009AB8BC(v76, v77);
      *(v77 + v82) = v80;
      (*(*(v81 - 8) + 56))(v77, 0, 1, v81);
    }

    else
    {
      v73 = ((1 << *(v0 + 536)) + 63) >> 6;
      v74 = v73 <= v70 + 1 ? v70 + 1 : ((1 << *(v0 + 536)) + 63) >> 6;
      isUniquelyReferenced_nonNull_native = v74 - 1;
      while (1)
      {
        v75 = v70 + 1;
        if (__OFADD__(v70, 1))
        {
          __break(1u);
LABEL_97:
          v173 = 0;
          goto LABEL_102;
        }

        if (v75 >= v73)
        {
          break;
        }

        v72 = *(v0 + 208);
        v71 = *(v72 + 8 * v75 + 64);
        ++v70;
        if (v71)
        {
          v70 = v75;
          goto LABEL_27;
        }
      }

      v92 = *(v0 + 368);
      v93 = sub_1000BC4D4(&qword_1016B07C0, &unk_1013CF1D0);
      (*(*(v93 - 8) + 56))(v92, 1, 1, v93);
      v71 = 0;
      v70 = isUniquelyReferenced_nonNull_native;
    }

    *(v0 + 384) = v71;
    *(v0 + 392) = v70;
    v83 = *(v0 + 376);
    sub_1000D2AD8(*(v0 + 368), v83, &qword_1016B07B8, &qword_1013CF1C8);
    v84 = sub_1000BC4D4(&qword_1016B07C0, &unk_1013CF1D0);
    v85 = (*(*(v84 - 8) + 48))(v83, 1, v84);
    v86 = *(v0 + 376);
    if (v85 == 1)
    {
      v95 = *(v0 + 360);
      v94 = *(v0 + 368);
      v96 = *(v0 + 352);
      v98 = *(v0 + 320);
      v97 = *(v0 + 328);
      v99 = *(v0 + 312);
      v100 = *(v0 + 280);
      v101 = *(v0 + 288);
      v188 = *(v0 + 272);
      v194 = *(v0 + 264);
      v199 = *(v0 + 256);
      v205 = *(v0 + 248);
      v207 = *(v0 + 232);
      v102 = *(v0 + 208);

      v103 = *(v0 + 8);

      return v103(v206);
    }

    v87 = *(v0 + 352);
    isUniquelyReferenced_nonNull_native = *(v0 + 216);
    v88 = *(v86 + *(v84 + 48));
    *(v0 + 400) = v88;
    sub_1009AB8BC(v86, v87);
    if (*(isUniquelyReferenced_nonNull_native + 16))
    {
      v89 = *(v0 + 216);
      v90 = sub_100772A10(*(v0 + 352));
      if (v91)
      {
        break;
      }
    }

    v69 = *(v0 + 352);

    sub_1009AB920(v69, type metadata accessor for ManagedCBPeripheralBeaconInfo);
  }

  v105 = (*(*(v0 + 216) + 56) + 24 * v90);
  *(v0 + 408) = *v105;
  *(v0 + 416) = v105[1];
  v184 = v88;
  v186 = v88[2];
  if (v186)
  {
    v181 = v88[5];

    v106 = 0;
    v107 = v88 + 9;
    v108 = _swiftEmptyDictionarySingleton;
    v66 = v0 + 16;
    while (v106 < v88[2])
    {
      v111 = *(v107 - 1);
      v112 = *v107;
      v113 = *(v107 - 4);
      v189 = *(v107 - 3);
      v195 = *(v107 - 2);
      sub_100017D5C(v189, v195);
      sub_100017D5C(v111, v112);

      v204 = v111;
      v200 = v112;
      v114 = Data.subdata(in:)();
      v116 = v115;
      v206 = UInt64._bridgeToObjectiveC()().super.super.isa;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v66 + 168) = v108;
      v66 = sub_100771E30(v114, v116);
      v118 = v108[2];
      v119 = (v117 & 1) == 0;
      v120 = v118 + v119;
      if (__OFADD__(v118, v119))
      {
        goto LABEL_106;
      }

      v121 = v117;
      if (v108[3] >= v120)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_10100C34C();
        }
      }

      else
      {
        sub_100FF4898(v120, isUniquelyReferenced_nonNull_native);
        v122 = *(v0 + 184);
        v123 = sub_100771E30(v114, v116);
        if ((v121 & 1) != (v124 & 1))
        {

          return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        }

        v66 = v123;
      }

      v125 = *(v0 + 184);
      if (v121)
      {
        v109 = v125[7];
        v110 = *(v109 + 8 * v66);
        *(v109 + 8 * v66) = v206;

        sub_100016590(v114, v116);
      }

      else
      {
        v125[(v66 >> 6) + 8] |= 1 << v66;
        v126 = (v125[6] + 16 * v66);
        *v126 = v114;
        v126[1] = v116;
        *(v125[7] + 8 * v66) = v206;

        v127 = v125[2];
        v128 = __OFADD__(v127, 1);
        v129 = v127 + 1;
        if (v128)
        {
          goto LABEL_108;
        }

        v125[2] = v129;
      }

      ++v106;
      sub_100016590(v189, v195);
      sub_100016590(v204, v200);
      v107 += 6;
      v108 = v125;
      v88 = v184;
      v66 = v0 + 16;
      if (v186 == v106)
      {
        v130 = v181;
        goto LABEL_52;
      }
    }

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
    goto LABEL_111;
  }

  v125 = _swiftEmptyDictionarySingleton;
  v130 = 1;
LABEL_52:
  v131 = 0;
  *(v0 + 424) = v130;
  *(v0 + 432) = v125;
  v132 = _swiftEmptyArrayStorage;
  *(v0 + 192) = _swiftEmptyArrayStorage;
  v133 = v88 + 9;
  v178 = v88 + 9;
LABEL_53:
  *(v0 + 440) = v132;
  v134 = &v133[6 * v131];
  while (1)
  {
    if (v186 == v131)
    {
      v171 = async function pointer to daemon.getter[1];
      v172 = swift_task_alloc();
      *(v0 + 448) = v172;
      *v172 = v0;
      v172[1] = sub_1009A67FC;

      return daemon.getter();
    }

    if (v131 >= v88[2])
    {
      goto LABEL_107;
    }

    v201 = v131;
    v135 = *(v0 + 296);
    v136 = *(v0 + 304);
    v137 = *(v0 + 288);
    v138 = *(v134 - 3);
    v139 = *(v134 - 2);
    v140 = *(v134 - 1);
    v141 = *v134;
    sub_100017D5C(v138, v139);
    v204 = v141;
    v206 = v140;
    sub_100017D5C(v140, v141);
    v142 = Data.init(stringLiteral:)();
    v144 = v143;
    sub_100017D5C(v138, v139);
    v190 = v139;
    v196 = v138;
    MACAddress.init(addressToSanitize:type:)();
    if ((*(v136 + 48))(v137, 1, v135) == 1)
    {
      goto LABEL_118;
    }

    v145 = *(v0 + 328);
    v2 = *(v0 + 296);
    v146 = *(v0 + 304);
    (*(v146 + 32))(v145, *(v0 + 288), v2);
    v147 = MACAddress.data.getter();
    v149 = v148;
    (*(v146 + 8))(v145, v2);
    *(v0 + 144) = v142;
    *(v0 + 152) = v144;
    *(v0 + 88) = &type metadata for Data;
    *(v0 + 96) = &protocol witness table for Data;
    *(v0 + 64) = v147;
    *(v0 + 72) = v149;
    v150 = v0 + 16;
    v151 = sub_1000035D0((v0 + 64), &type metadata for Data);
    v152 = *v151;
    v153 = v151[1];
    v154 = v153 >> 62;
    if ((v153 >> 62) > 1)
    {
      if (v154 != 2)
      {
        *(v179 + 6) = 0;
        *v179 = 0;
        goto LABEL_71;
      }

      v155 = v149;
      v157 = *(v152 + 16);
      v156 = *(v152 + 24);
      sub_100017D5C(v142, v144);
      v182 = v155;
      sub_100017D5C(v147, v155);
      v2 = __DataStorage._bytes.getter();
      if (v2)
      {
        v158 = __DataStorage._offset.getter();
        if (__OFSUB__(v157, v158))
        {
          goto LABEL_114;
        }

        v2 += v157 - v158;
      }

      if (__OFSUB__(v156, v157))
      {
        goto LABEL_113;
      }

LABEL_69:
      __DataStorage._length.getter();
      v150 = v0 + 16;
      Data._Representation.append(contentsOf:)();
      sub_100016590(v147, v182);
      sub_100016590(v142, v144);
      goto LABEL_72;
    }

    if (v154)
    {
      v182 = v149;
      v159 = v152;
      if (v152 >> 32 >= v152)
      {
        sub_100017D5C(v142, v144);
        sub_100017D5C(v147, v149);
        v2 = __DataStorage._bytes.getter();
        if (v2 && __OFSUB__(v159, __DataStorage._offset.getter()))
        {
          goto LABEL_115;
        }

        goto LABEL_69;
      }

      __break(1u);
LABEL_113:
      __break(1u);
LABEL_114:
      __break(1u);
LABEL_115:
      __break(1u);
      goto LABEL_116;
    }

    *(v0 + 508) = v152;
    *(v0 + 516) = v153;
    *(v0 + 518) = BYTE2(v153);
    *(v0 + 519) = BYTE3(v153);
    *(v0 + 520) = BYTE4(v153);
    *(v0 + 521) = BYTE5(v153);
LABEL_71:
    Data._Representation.append(contentsOf:)();
LABEL_72:
    sub_100007BAC((v150 + 48));
    v66 = *(v0 + 144);
    v160 = *(v0 + 152);
    v161 = Data.subdata(in:)();
    isUniquelyReferenced_nonNull_native = v161;
    v69 = v162;
    v163 = v162 >> 62;
    if ((v162 >> 62) > 1)
    {
      if (v163 != 2)
      {
        goto LABEL_97;
      }

      v165 = *(v161 + 16);
      v164 = *(v161 + 24);
      v128 = __OFSUB__(v164, v165);
      v166 = v164 - v165;
      if (v128)
      {
        goto LABEL_110;
      }

      if (v166 != 16)
      {
        break;
      }

      goto LABEL_82;
    }

    if (!v163)
    {
      if (BYTE6(v162) != 16)
      {
        break;
      }

      goto LABEL_82;
    }

    if (__OFSUB__(HIDWORD(v161), v161))
    {
      goto LABEL_109;
    }

    if (HIDWORD(v161) - v161 != 16)
    {
      break;
    }

LABEL_82:
    v131 = v201 + 1;
    v134 += 6;
    v167 = objc_allocWithZone(SPCBPeripheralKeyAddressPair);
    v168 = Data._bridgeToObjectiveC()().super.isa;
    v169 = Data._bridgeToObjectiveC()().super.isa;
    v170 = [v167 initWithLEMACAddress:v168 longTermKey:v169];

    sub_100016590(isUniquelyReferenced_nonNull_native, v69);
    sub_100016590(v66, v160);
    sub_100016590(v196, v190);
    sub_100016590(v206, v204);
    v88 = v184;
    if (v170)
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*(v0 + 192) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 192) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        isUniquelyReferenced_nonNull_native = *((*(v0 + 192) & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v132 = *(v0 + 192);
      v133 = v178;
      goto LABEL_53;
    }
  }

  if (v163 == 2)
  {
    v175 = *(v161 + 16);
    v174 = *(v161 + 24);
    v173 = v174 - v175;
    if (!__OFSUB__(v174, v175))
    {
      goto LABEL_102;
    }

    __break(1u);
    goto LABEL_101;
  }

  if (v163 != 1)
  {
LABEL_101:
    v173 = BYTE6(v162);
    goto LABEL_102;
  }

  if (__OFSUB__(HIDWORD(v161), v161))
  {
    __break(1u);
LABEL_118:
    __break(1u);
  }

  v173 = HIDWORD(v161) - v161;
LABEL_102:
  sub_100018350();
  swift_allocError();
  *v176 = 16;
  *(v176 + 8) = v173;
  *(v176 + 16) = 0;
  swift_willThrow();
  sub_100016590(isUniquelyReferenced_nonNull_native, v69);

  return swift_unexpectedError();
}

uint64_t sub_1009A92B4()
{
  v1 = *(v0 + 400);
  sub_10000B3A8(*(v0 + 272), &unk_1016C8FC0, &unk_10139D7D0);

  v2 = *(v0 + 352);
  v3 = *(v0 + 336);
  v4 = *(v0 + 232);
  v5 = *(v0 + 200);
  v6 = v3[5];
  sub_1000D2A70(v2 + v3[6], v4, &qword_1016980D0, &unk_10138F3B0);
  v7 = (v2 + v3[8]);
  v8 = *v7;
  v9 = v7[1];
  v161 = *(v2 + v3[12]);
  v153 = *(v2 + v3[11]);
  sub_1000BC4D4(&unk_10169BAE0, &unk_10138C430);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_10138C320;
  *(v10 + 32) = v5;
  sub_10002E98C(0, 0xF000000000000000);
  v11 = v5;
  v157.super.isa = UUID._bridgeToObjectiveC()().super.isa;
  v149.super.isa = UUID._bridgeToObjectiveC()().super.isa;
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  isa = 0;
  if ((*(v13 + 48))(v4, 1, v12) != 1)
  {
    v15 = *(v0 + 232);
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v13 + 8))(v15, v12);
  }

  v16 = *(v0 + 432);
  v17 = *(v0 + 408);
  v18 = *(v0 + 416);
  v19 = String._bridgeToObjectiveC()();
  v20 = String._bridgeToObjectiveC()();

  sub_100008BB8(0, &qword_1016AD650, NSNumber_ptr);
  sub_1004695BC();
  v21 = Dictionary._bridgeToObjectiveC()().super.isa;

  v22 = *(v0 + 440);
  v23 = *(v0 + 424);
  v24 = objc_allocWithZone(SPPeripheral);
  sub_100008BB8(0, &qword_10169EF48, SPCBPeripheralManagerSessionKey_ptr);
  v25 = Array._bridgeToObjectiveC()().super.isa;

  sub_100008BB8(0, &qword_1016B07B0, SPCBPeripheralKeyAddressPair_ptr);
  v26 = Array._bridgeToObjectiveC()().super.isa;

  LOBYTE(v139) = v153;
  v27 = [v24 initWithUserIdentifier:v157.super.isa beaconIdentifier:v149.super.isa groupIdentifier:isa name:v19 partIdentifier:v161 serialNumber:v20 managedByFindMy:v139 primaryIndex:v23 ltkIndexMap:v21 lastConnectedLEMAC:0 allowedSessions:v25 keyAddressPairs:v26];

  isUniquelyReferenced_nonNull_native = v27;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(v0 + 176) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 176) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_101;
  }

LABEL_4:
  v29 = *(v0 + 352);
  v30 = v0 + 176;
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  sub_100006654(0, 0xF000000000000000);

  sub_1009AB920(v29, type metadata accessor for ManagedCBPeripheralBeaconInfo);
  v162 = *(v0 + 176);
  v32 = *(v0 + 384);
  v31 = *(v0 + 392);
  while (1)
  {
    if (v32)
    {
      v33 = *(v0 + 208);
LABEL_16:
      v39 = *(v0 + 360);
      v38 = *(v0 + 368);
      v40 = __clz(__rbit64(v32));
      v32 &= v32 - 1;
      v41 = v40 | (v31 << 6);
      sub_1009AB854(*(v33 + 48) + *(*(v0 + 344) + 72) * v41, v39, type metadata accessor for ManagedCBPeripheralBeaconInfo);
      v42 = *(*(v33 + 56) + 8 * v41);
      v43 = sub_1000BC4D4(&qword_1016B07C0, &unk_1013CF1D0);
      v44 = *(v43 + 48);
      sub_1009AB8BC(v39, v38);
      *(v38 + v44) = v42;
      (*(*(v43 - 8) + 56))(v38, 0, 1, v43);
    }

    else
    {
      v34 = ((1 << *(v0 + 536)) + 63) >> 6;
      v35 = v34 <= (v31 + 1) ? v31 + 1 : ((1 << *(v0 + 536)) + 63) >> 6;
      v36 = v35 - 1;
      while (1)
      {
        v37 = v31 + 1;
        if (__OFADD__(v31, 1))
        {
          __break(1u);
LABEL_87:
          v135 = 0;
          goto LABEL_92;
        }

        if (v37 >= v34)
        {
          break;
        }

        v33 = *(v0 + 208);
        v32 = *(v33 + 8 * v37 + 64);
        ++v31;
        if (v32)
        {
          v31 = v37;
          goto LABEL_16;
        }
      }

      v53 = *(v0 + 368);
      v54 = sub_1000BC4D4(&qword_1016B07C0, &unk_1013CF1D0);
      (*(*(v54 - 8) + 56))(v53, 1, 1, v54);
      v32 = 0;
      v31 = v36;
    }

    *(v0 + 384) = v32;
    *(v0 + 392) = v31;
    v45 = *(v0 + 376);
    sub_1000D2AD8(*(v0 + 368), v45, &qword_1016B07B8, &qword_1013CF1C8);
    v46 = sub_1000BC4D4(&qword_1016B07C0, &unk_1013CF1D0);
    if ((*(*(v46 - 8) + 48))(v45, 1, v46) == 1)
    {
      v56 = *(v0 + 368);
      v55 = *(v0 + 376);
      v58 = *(v0 + 352);
      v57 = *(v0 + 360);
      v60 = *(v0 + 320);
      v59 = *(v0 + 328);
      v61 = *(v0 + 312);
      v62 = *(v0 + 280);
      v63 = *(v0 + 288);
      v144 = *(v0 + 272);
      v146 = *(v0 + 264);
      v150 = *(v0 + 256);
      v154 = *(v0 + 248);
      v158 = *(v0 + 232);
      v64 = *(v0 + 208);

      v65 = *(v0 + 8);

      return v65(v162);
    }

    v47 = *(v0 + 376);
    v48 = *(v0 + 352);
    isUniquelyReferenced_nonNull_native = *(v0 + 216);
    v49 = *(v47 + *(v46 + 48));
    *(v0 + 400) = v49;
    sub_1009AB8BC(v47, v48);
    if (*(isUniquelyReferenced_nonNull_native + 16))
    {
      v50 = *(v0 + 216);
      v51 = sub_100772A10(*(v0 + 352));
      if (v52)
      {
        break;
      }
    }

    v30 = *(v0 + 352);

    sub_1009AB920(v30, type metadata accessor for ManagedCBPeripheralBeaconInfo);
  }

  v67 = (*(*(v0 + 216) + 56) + 24 * v51);
  *(v0 + 408) = *v67;
  *(v0 + 416) = v67[1];
  v143 = v49;
  v145 = v49[2];
  if (v145)
  {
    v141 = v49[5];

    v68 = 0;
    v69 = v49 + 9;
    v70 = _swiftEmptyDictionarySingleton;
    while (1)
    {
      if (v68 >= v143[2])
      {
        __break(1u);
LABEL_96:
        __break(1u);
LABEL_97:
        __break(1u);
LABEL_98:
        __break(1u);
LABEL_99:
        __break(1u);
LABEL_100:
        __break(1u);
LABEL_101:
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        goto LABEL_4;
      }

      v73 = *(v69 - 1);
      v74 = *v69;
      v75 = *(v69 - 4);
      v147 = *(v69 - 3);
      v151 = *(v69 - 2);
      sub_100017D5C(v147, v151);
      sub_100017D5C(v73, v74);

      v155 = v74;
      v159 = v73;
      v76 = Data.subdata(in:)();
      v78 = v77;
      v163.super.super.isa = UInt64._bridgeToObjectiveC()().super.super.isa;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v0 + 184) = v70;
      v80 = sub_100771E30(v76, v78);
      v81 = v70[2];
      v82 = (v79 & 1) == 0;
      v83 = v81 + v82;
      if (__OFADD__(v81, v82))
      {
        goto LABEL_96;
      }

      v84 = v79;
      if (v70[3] >= v83)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v88 = *(v0 + 184);
          if (v79)
          {
            goto LABEL_27;
          }
        }

        else
        {
          sub_10100C34C();
          v88 = *(v0 + 184);
          if (v84)
          {
            goto LABEL_27;
          }
        }
      }

      else
      {
        sub_100FF4898(v83, isUniquelyReferenced_nonNull_native);
        v85 = *(v0 + 184);
        v86 = sub_100771E30(v76, v78);
        if ((v84 & 1) != (v87 & 1))
        {

          return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        }

        v80 = v86;
        v88 = *(v0 + 184);
        if (v84)
        {
LABEL_27:
          v71 = v88[7];
          v72 = *(v71 + 8 * v80);
          *(v71 + 8 * v80) = v163;

          sub_100016590(v76, v78);

          goto LABEL_28;
        }
      }

      v88[(v80 >> 6) + 8] |= 1 << v80;
      v89 = (v88[6] + 16 * v80);
      *v89 = v76;
      v89[1] = v78;
      *(v88[7] + 8 * v80) = v163;

      v90 = v88[2];
      v91 = __OFADD__(v90, 1);
      v92 = v90 + 1;
      if (v91)
      {
        goto LABEL_98;
      }

      v88[2] = v92;
LABEL_28:
      ++v68;
      sub_100016590(v147, v151);
      sub_100016590(v159, v155);
      v69 += 6;
      v70 = v88;
      if (v145 == v68)
      {
        v93 = v141;
        v49 = v143;
        goto LABEL_43;
      }
    }
  }

  v88 = _swiftEmptyDictionarySingleton;
  v93 = 1;
LABEL_43:
  v94 = 0;
  *(v0 + 424) = v93;
  *(v0 + 432) = v88;
  v95 = _swiftEmptyArrayStorage;
  *(v0 + 192) = _swiftEmptyArrayStorage;
  v96 = v49 + 9;
  v140 = v49 + 9;
LABEL_44:
  *(v0 + 440) = v95;
  v97 = &v96[6 * v94];
  while (1)
  {
    if (v145 == v94)
    {
      v133 = async function pointer to daemon.getter[1];
      v134 = swift_task_alloc();
      *(v0 + 448) = v134;
      *v134 = v0;
      v134[1] = sub_1009A67FC;

      return daemon.getter();
    }

    if (v94 >= v49[2])
    {
      goto LABEL_97;
    }

    v98 = *(v0 + 296);
    v99 = *(v0 + 304);
    v100 = *(v0 + 288);
    v101 = *(v97 - 3);
    v102 = *(v97 - 2);
    v103 = *(v97 - 1);
    v104 = *v97;
    sub_100017D5C(v101, v102);
    v160 = v104;
    v164 = v103;
    sub_100017D5C(v103, v104);
    v105 = Data.init(stringLiteral:)();
    v107 = v106;
    sub_100017D5C(v101, v102);
    v148 = v102;
    v152 = v101;
    MACAddress.init(addressToSanitize:type:)();
    if ((*(v99 + 48))(v100, 1, v98) == 1)
    {
      goto LABEL_107;
    }

    v108 = *(v0 + 328);
    v110 = *(v0 + 296);
    v109 = *(v0 + 304);
    (*(v109 + 32))(v108, *(v0 + 288), v110);
    v111 = MACAddress.data.getter();
    v113 = v112;
    (*(v109 + 8))(v108, v110);
    *(v0 + 144) = v105;
    *(v0 + 152) = v107;
    *(v0 + 88) = &type metadata for Data;
    *(v0 + 96) = &protocol witness table for Data;
    *(v0 + 64) = v111;
    *(v0 + 72) = v113;
    v156 = v113;
    v114 = sub_1000035D0((v0 + 64), &type metadata for Data);
    v115 = *v114;
    v116 = v114[1];
    v117 = v116 >> 62;
    if ((v116 >> 62) > 1)
    {
      if (v117 != 2)
      {
        *(v0 + 528) = 0;
        *(v0 + 522) = 0;
        goto LABEL_61;
      }

      v142 = v94;
      v119 = *(v115 + 16);
      v118 = *(v115 + 24);
      sub_100017D5C(v105, v107);
      sub_100017D5C(v111, v156);
      if (__DataStorage._bytes.getter() && __OFSUB__(v119, __DataStorage._offset.getter()))
      {
        goto LABEL_104;
      }

      if (__OFSUB__(v118, v119))
      {
        goto LABEL_103;
      }

LABEL_59:
      __DataStorage._length.getter();
      Data._Representation.append(contentsOf:)();
      sub_100016590(v111, v156);
      sub_100016590(v105, v107);
      v94 = v142;
      goto LABEL_62;
    }

    if (v117)
    {
      v142 = v94;
      v120 = v115;
      if (v115 >> 32 < v115)
      {
        __break(1u);
LABEL_103:
        __break(1u);
LABEL_104:
        __break(1u);
LABEL_105:
        __break(1u);
        goto LABEL_106;
      }

      sub_100017D5C(v105, v107);
      sub_100017D5C(v111, v156);
      if (__DataStorage._bytes.getter() && __OFSUB__(v120, __DataStorage._offset.getter()))
      {
        goto LABEL_105;
      }

      goto LABEL_59;
    }

    *(v0 + 508) = v115;
    *(v0 + 516) = v116;
    *(v0 + 518) = BYTE2(v116);
    *(v0 + 519) = BYTE3(v116);
    *(v0 + 520) = BYTE4(v116);
    *(v0 + 521) = BYTE5(v116);
LABEL_61:
    Data._Representation.append(contentsOf:)();
LABEL_62:
    sub_100007BAC((v0 + 64));
    v121 = *(v0 + 144);
    v122 = *(v0 + 152);
    v123 = Data.subdata(in:)();
    isUniquelyReferenced_nonNull_native = v123;
    v30 = v124;
    v125 = v124 >> 62;
    if ((v124 >> 62) > 1)
    {
      if (v125 != 2)
      {
        goto LABEL_87;
      }

      v127 = *(v123 + 16);
      v126 = *(v123 + 24);
      v91 = __OFSUB__(v126, v127);
      v128 = v126 - v127;
      if (v91)
      {
        goto LABEL_100;
      }

      if (v128 != 16)
      {
        goto LABEL_79;
      }

      goto LABEL_72;
    }

    if (v125)
    {
      break;
    }

    if (BYTE6(v124) != 16)
    {
      goto LABEL_79;
    }

LABEL_72:
    ++v94;
    v97 += 6;
    v129 = objc_allocWithZone(SPCBPeripheralKeyAddressPair);
    v130 = Data._bridgeToObjectiveC()().super.isa;
    v131 = Data._bridgeToObjectiveC()().super.isa;
    v132 = [v129 initWithLEMACAddress:v130 longTermKey:v131];

    sub_100016590(isUniquelyReferenced_nonNull_native, v30);
    sub_100016590(v121, v122);
    sub_100016590(v152, v148);
    sub_100016590(v164, v160);
    v49 = v143;
    if (v132)
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*(v0 + 192) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 192) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        isUniquelyReferenced_nonNull_native = *((*(v0 + 192) & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v95 = *(v0 + 192);
      v96 = v140;
      goto LABEL_44;
    }
  }

  if (__OFSUB__(HIDWORD(v123), v123))
  {
    goto LABEL_99;
  }

  if (HIDWORD(v123) - v123 == 16)
  {
    goto LABEL_72;
  }

LABEL_79:
  if (v125 == 2)
  {
    v137 = *(v123 + 16);
    v136 = *(v123 + 24);
    v135 = v136 - v137;
    if (!__OFSUB__(v136, v137))
    {
      goto LABEL_92;
    }

    __break(1u);
  }

  else if (v125 == 1)
  {
    if (!__OFSUB__(HIDWORD(v123), v123))
    {
      v135 = HIDWORD(v123) - v123;
      goto LABEL_92;
    }

LABEL_106:
    __break(1u);
LABEL_107:
    __break(1u);
  }

  v135 = BYTE6(v124);
LABEL_92:
  sub_100018350();
  swift_allocError();
  *v138 = 16;
  *(v138 + 8) = v135;
  *(v138 + 16) = 0;
  swift_willThrow();
  sub_100016590(isUniquelyReferenced_nonNull_native, v30);

  return swift_unexpectedError();
}

id sub_1009AA1D8(void *a1, void *a2)
{
  v4 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v62 - v6;
  v8 = type metadata accessor for UUID();
  v76 = *(v8 - 8);
  v9 = *(v76 + 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v62 - v13;
  v15 = [a1 allowedSessions];
  v16 = sub_100008BB8(0, &qword_10169EF48, SPCBPeripheralManagerSessionKey_ptr);
  v17 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v18 = sub_10112B504(v17);

  v19 = [a2 allowedSessions];
  v74 = v16;
  v20 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v21 = sub_10112B504(v20);

  sub_10039E088(v21, v18);
  v73 = sub_1003A8DB0(v22);

  v23 = [a1 userIdentifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v24 = [a1 beaconIdentifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v25 = [a1 groupIdentifier];
  if (v25)
  {
    v26 = v25;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v27 = 0;
  }

  else
  {
    v27 = 1;
  }

  (*(v76 + 7))(v7, v27, 1, v8);
  v28 = [a1 name];
  if (!v28)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = String._bridgeToObjectiveC()();
  }

  v71 = [a1 partIdentifier];
  v29 = [a1 serialNumber];
  if (!v29)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = String._bridgeToObjectiveC()();

    v29 = v30;
  }

  v70 = v29;
  v69 = [a1 managedByFindMy];
  v68 = [a1 primaryIndex];
  v31 = [a1 ltkIndexMap];
  v32 = sub_100008BB8(0, &qword_1016AD650, NSNumber_ptr);
  sub_1004695BC();
  v67 = v32;
  v66 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v33 = [a1 lastConnectedLEMAC];
  if (v33)
  {
    v34 = v33;
    v62 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v36 = v35;
  }

  else
  {
    v62 = 0;
    v36 = 0xF000000000000000;
  }

  v72 = v28;
  v77 = v8;
  isa = [a1 keyAddressPairs];
  if (!isa)
  {
    sub_100008BB8(0, &qword_1016B07B0, SPCBPeripheralKeyAddressPair_ptr);
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  v38 = v14;
  v65 = UUID._bridgeToObjectiveC()().super.isa;
  v75 = v12;
  v64 = UUID._bridgeToObjectiveC()().super.isa;
  v39 = v76;
  v40 = v7;
  v41 = v7;
  v42 = v77;
  if ((*(v76 + 6))(v41, 1, v77) == 1)
  {
    v43 = v39;
    v63 = 0;
  }

  else
  {
    v63 = UUID._bridgeToObjectiveC()().super.isa;
    v43 = v39;
    v39[1](v40, v42);
  }

  v44.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v76 = v38;
  if (v36 >> 60 == 15)
  {
    v45 = 0;
  }

  else
  {
    v46 = v62;
    v45 = Data._bridgeToObjectiveC()().super.isa;
    sub_100006654(v46, v36);
  }

  v47 = v43;
  v48 = objc_allocWithZone(SPPeripheral);
  v49 = Array._bridgeToObjectiveC()().super.isa;

  v61 = v44.super.isa;
  LOBYTE(v60) = v69;
  v50 = v48;
  v51 = v44.super.isa;
  v53 = v64;
  v52 = v65;
  v54 = v63;
  v55 = v72;
  v56 = v70;
  v74 = [v50 initWithUserIdentifier:v65 beaconIdentifier:v64 groupIdentifier:v63 name:v72 partIdentifier:v71 serialNumber:v70 managedByFindMy:v60 primaryIndex:v68 ltkIndexMap:v61 lastConnectedLEMAC:v45 allowedSessions:v49 keyAddressPairs:isa];

  v57 = v47[1];
  v58 = v77;
  v57(v75, v77);
  v57(v76, v58);
  return v74;
}

uint64_t sub_1009AA7E8(uint64_t a1, int a2)
{
  *(v2 + 24) = a2;
  *(v2 + 16) = a1;
  return _swift_task_switch(sub_1009AA80C, 0, 0);
}

uint64_t sub_1009AA80C()
{
  v15 = v0;
  if (qword_101694B98 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_10177B810);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 24);
    v6 = *(v0 + 16);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v14 = v8;
    *v7 = 136315394;
    v9 = Dictionary.description.getter();
    v11 = sub_1000136BC(v9, v10, &v14);

    *(v7 + 4) = v11;
    *(v7 + 12) = 1024;
    *(v7 + 14) = v5;
    _os_log_impl(&_mh_execute_header, v3, v4, "TRACE: leechScannerDiscovered: %s rssi: %d", v7, 0x12u);
    sub_100007BAC(v8);
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_1009AA9CC(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();

  return _swift_task_switch(sub_1009AAA98, 0, 0);
}

uint64_t sub_1009AAA98()
{
  v22 = v0;
  if (qword_101694B98 != -1)
  {
    swift_once();
  }

  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];
  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_10177B810);
  (*(v2 + 16))(v1, v4, v3);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[4];
  v9 = v0[5];
  v11 = v0[3];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v21 = v13;
    *v12 = 136315138;
    sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    (*(v10 + 8))(v9, v11);
    v17 = sub_1000136BC(v14, v16, &v21);

    *(v12 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v6, v7, "TRACE: pairPencil: %s", v12, 0xCu);
    sub_100007BAC(v13);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v18 = v0[5];

  v19 = v0[1];

  return v19();
}

uint64_t sub_1009AACCC(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();

  return _swift_task_switch(sub_1009AAD98, 0, 0);
}

uint64_t sub_1009AAD98()
{
  v22 = v0;
  if (qword_101694B98 != -1)
  {
    swift_once();
  }

  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];
  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_10177B810);
  (*(v2 + 16))(v1, v4, v3);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[4];
  v9 = v0[5];
  v11 = v0[3];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v21 = v13;
    *v12 = 136315138;
    sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    (*(v10 + 8))(v9, v11);
    v17 = sub_1000136BC(v14, v16, &v21);

    *(v12 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v6, v7, "TRACE: unpairPencil: %s", v12, 0xCu);
    sub_100007BAC(v13);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v18 = v0[5];

  v19 = v0[1];

  return v19();
}

uint64_t sub_1009AAFCC()
{
  v0 = type metadata accessor for UUID();
  sub_100044B3C(v0, qword_1016B0768);
  sub_1000076D4(v0, qword_1016B0768);
  return sub_1000294F0(0);
}

uint64_t sub_1009AB01C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000D2118;

  return sub_1009A2510(a1);
}

uint64_t sub_1009AB0B0(uint64_t a1, int a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100014650;

  return sub_1009AA7E8(a1, a2);
}

uint64_t sub_1009AB14C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10003633C;

  return sub_1009AA9CC(a1);
}

uint64_t sub_1009AB1E0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100036434;

  return sub_1009AACCC(a1);
}

Swift::Int sub_1009AB274()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_1009AB2E8()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1009AB33C@<X0>(Swift::String *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_10160CCD0, *a1);

  *a2 = v3 != 0;
  return result;
}

Swift::Int sub_1009AB3B0(uint64_t a1)
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_1009ABA98(&qword_1016967B0, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  v3 = v1 + *(a1 + 20);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1009AB460(uint64_t a1, uint64_t a2)
{
  type metadata accessor for UUID();
  sub_1009ABA98(&qword_1016967B0, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  v4 = v2 + *(a2 + 20);
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int sub_1009AB500(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_1009ABA98(&qword_1016967B0, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  v4 = v2 + *(a2 + 20);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1009AB5AC()
{
  v9 = *v0;
  v1._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v1);

  v2._countAndFlagsBits = 41;
  v2._object = 0xE100000000000000;
  String.append(_:)(v2);
  v3._countAndFlagsBits = 0x7972616D6972702ELL;
  v3._object = 0xE900000000000028;
  String.append(_:)(v3);

  v4._countAndFlagsBits = 8236;
  v4._object = 0xE200000000000000;
  String.append(_:)(v4);
  v5 = *(sub_1000BC4D4(&unk_1016C8FC0, &unk_10139D7D0) + 36);
  type metadata accessor for Date();
  sub_1009ABA98(&qword_1016969A0, &type metadata accessor for Date);
  v6._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v6);

  v7._countAndFlagsBits = 41;
  v7._object = 0xE100000000000000;
  String.append(_:)(v7);
  return 40;
}

uint64_t type metadata accessor for ManagedCBPeripheralManager.KeyType()
{
  result = qword_1016B0828;
  if (!qword_1016B0828)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1009AB74C()
{
  result = qword_1016B0780;
  if (!qword_1016B0780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B0780);
  }

  return result;
}

uint64_t sub_1009AB7A0(uint64_t a1, uint64_t *a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_100014650;

  return sub_1009A38B4(a1, a2, v7, v6);
}

uint64_t sub_1009AB854(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1009AB8BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ManagedCBPeripheralBeaconInfo();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1009AB920(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1009AB980(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_1009AB9C8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1009ABA98(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1009ABAE4()
{
  result = qword_1016B0868;
  if (!qword_1016B0868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B0868);
  }

  return result;
}

unint64_t sub_1009ABB3C()
{
  result = qword_1016B0870;
  if (!qword_1016B0870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B0870);
  }

  return result;
}

uint64_t sub_1009ABBA4(uint64_t a1)
{
  v2 = (v1 + *(a1 + 164));
  result = *v2;
  v4 = *(v2 + 8);
  return result;
}

uint64_t sub_1009ABBB8(uint64_t a1)
{
  v2 = (v1 + *(a1 + 168));
  result = *v2;
  v4 = *(v2 + 8);
  return result;
}

uint64_t sub_1009ABBCC(uint64_t a1)
{
  v2 = (v1 + *(a1 + 172));
  result = *v2;
  v4 = *(v2 + 8);
  return result;
}

uint64_t sub_1009ABBE0()
{
  result = *(v0 + 64);
  v2 = *(v0 + 72);
  return result;
}

uint64_t sub_1009ABBEC()
{
  result = *(v0 + 104);
  v2 = *(v0 + 112);
  return result;
}

uint64_t sub_1009ABBF8()
{
  result = *(v0 + 120);
  v2 = *(v0 + 128);
  return result;
}

uint64_t sub_1009ABC04()
{
  result = *(v0 + 136);
  v2 = *(v0 + 144);
  return result;
}

uint64_t sub_1009ABC10()
{
  result = *(v0 + 152);
  v2 = *(v0 + 160);
  return result;
}

uint64_t sub_1009ABC1C()
{
  result = *(v0 + 168);
  v2 = *(v0 + 176);
  return result;
}

uint64_t sub_1009ABC28()
{
  result = *(v0 + 184);
  v2 = *(v0 + 192);
  return result;
}

uint64_t sub_1009ABC34()
{
  result = *(v0 + 200);
  v2 = *(v0 + 208);
  return result;
}

uint64_t sub_1009ABC40()
{
  result = *(v0 + 216);
  v2 = *(v0 + 224);
  return result;
}

uint64_t sub_1009ABC4C()
{
  result = *(v0 + 232);
  v2 = *(v0 + 240);
  return result;
}

uint64_t sub_1009ABC60(uint64_t a1)
{
  v1 = *(a1 + 96);
  sub_1000BC4D4(&qword_1016B0878, &qword_1013CF3B8);
  return CustomCodableKeyDictionary.wrappedValue.getter();
}

uint64_t sub_1009ABC9C(uint64_t a1)
{
  v2 = (v1 + *(a1 + 104));
  result = *v2;
  v4 = *(v2 + 8);
  return result;
}

uint64_t sub_1009ABCB0(uint64_t a1)
{
  v2 = (v1 + *(a1 + 108));
  result = *v2;
  v4 = *(v2 + 8);
  return result;
}

uint64_t sub_1009ABCC4(uint64_t a1)
{
  v2 = (v1 + *(a1 + 112));
  result = *v2;
  v4 = *(v2 + 8);
  return result;
}

uint64_t sub_1009ABCD8(uint64_t a1)
{
  v2 = (v1 + *(a1 + 116));
  result = *v2;
  v4 = *(v2 + 8);
  return result;
}

uint64_t sub_1009ABCEC(uint64_t a1)
{
  v2 = (v1 + *(a1 + 120));
  result = *v2;
  v4 = *(v2 + 8);
  return result;
}

uint64_t sub_1009ABD00(uint64_t a1)
{
  v2 = (v1 + *(a1 + 124));
  result = *v2;
  v4 = *(v2 + 8);
  return result;
}

uint64_t sub_1009ABD14(uint64_t a1)
{
  v2 = (v1 + *(a1 + 128));
  result = *v2;
  v4 = *(v2 + 8);
  return result;
}

uint64_t sub_1009ABD28(uint64_t a1)
{
  v2 = (v1 + *(a1 + 132));
  result = *v2;
  v4 = *(v2 + 8);
  return result;
}

uint64_t sub_1009ABD3C(uint64_t a1)
{
  v2 = (v1 + *(a1 + 136));
  result = *v2;
  v4 = *(v2 + 8);
  return result;
}

uint64_t sub_1009ABD50(uint64_t a1)
{
  v2 = (v1 + *(a1 + 140));
  result = *v2;
  v4 = *(v2 + 8);
  return result;
}

uint64_t sub_1009ABD70(uint64_t a1)
{
  v2 = (v1 + *(a1 + 148));
  result = *v2;
  v4 = *(v2 + 8);
  return result;
}

uint64_t sub_1009ABD84(uint64_t a1)
{
  v2 = (v1 + *(a1 + 152));
  result = *v2;
  v4 = *(v2 + 8);
  return result;
}

uint64_t sub_1009ABD98(uint64_t a1)
{
  v2 = (v1 + *(a1 + 156));
  result = *v2;
  v4 = *(v2 + 8);
  return result;
}

uint64_t sub_1009ABDAC(uint64_t a1)
{
  v2 = (v1 + *(a1 + 176));
  result = *v2;
  v4 = *(v2 + 8);
  return result;
}

uint64_t sub_1009ABDC0(uint64_t a1)
{
  v2 = (v1 + *(a1 + 180));
  result = *v2;
  v4 = *(v2 + 8);
  return result;
}

uint64_t sub_1009ABDD4(uint64_t a1)
{
  v2 = (v1 + *(a1 + 184));
  result = *v2;
  v4 = *(v2 + 8);
  return result;
}

uint64_t sub_1009ABDE8(uint64_t a1)
{
  v2 = (v1 + *(a1 + 188));
  result = *v2;
  v4 = *(v2 + 8);
  return result;
}

uint64_t sub_1009ABDFC(uint64_t a1)
{
  v2 = (v1 + *(a1 + 192));
  result = *v2;
  v4 = *(v2 + 8);
  return result;
}

uint64_t sub_1009ABE10(uint64_t a1)
{
  v2 = (v1 + *(a1 + 196));
  result = *v2;
  v4 = *(v2 + 8);
  return result;
}

uint64_t sub_1009ABE24(uint64_t a1)
{
  v2 = (v1 + *(a1 + 200));
  result = *v2;
  v4 = *(v2 + 8);
  return result;
}

uint64_t sub_1009ABE38(uint64_t a1)
{
  v2 = (v1 + *(a1 + 204));
  result = *v2;
  v4 = *(v2 + 8);
  return result;
}

uint64_t sub_1009ABE4C(uint64_t a1)
{
  v2 = (v1 + *(a1 + 208));
  result = *v2;
  v4 = *(v2 + 8);
  return result;
}

uint64_t sub_1009ABE60(uint64_t a1)
{
  v2 = (v1 + *(a1 + 212));
  result = *v2;
  v4 = *(v2 + 8);
  return result;
}

uint64_t sub_1009ABE74(uint64_t a1)
{
  v2 = (v1 + *(a1 + 216));
  result = *v2;
  v4 = *(v2 + 8);
  return result;
}

uint64_t sub_1009ABE94(uint64_t a1)
{
  v2 = (v1 + *(a1 + 224));
  result = *v2;
  v4 = *(v2 + 8);
  return result;
}

uint64_t sub_1009ABEA8(uint64_t a1)
{
  v2 = (v1 + *(a1 + 228));
  result = *v2;
  v4 = *(v2 + 8);
  return result;
}

uint64_t sub_1009ABEBC(uint64_t a1)
{
  v2 = (v1 + *(a1 + 232));
  result = *v2;
  v4 = *(v2 + 8);
  return result;
}

uint64_t sub_1009ABED0(uint64_t a1)
{
  v2 = (v1 + *(a1 + 236));
  result = *v2;
  v4 = *(v2 + 8);
  return result;
}

uint64_t sub_1009ABEE4(uint64_t a1)
{
  v2 = (v1 + *(a1 + 240));
  result = *v2;
  v4 = *(v2 + 8);
  return result;
}

uint64_t sub_1009ABEF8(uint64_t a1)
{
  v2 = (v1 + *(a1 + 244));
  result = *v2;
  v4 = *(v2 + 8);
  return result;
}

uint64_t sub_1009ABF34(uint64_t a1)
{
  v2 = (v1 + *(a1 + 280));
  result = *v2;
  v4 = *(v2 + 8);
  return result;
}

uint64_t sub_1009ABF48(uint64_t a1)
{
  v2 = (v1 + *(a1 + 284));
  result = *v2;
  v4 = *(v2 + 8);
  return result;
}

uint64_t sub_1009ABF5C(uint64_t a1)
{
  v2 = (v1 + *(a1 + 604));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

uint64_t sub_1009ABF94(uint64_t a1)
{
  v2 = (v1 + *(a1 + 612));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

uint64_t sub_1009ABFFC(uint64_t a1)
{
  v2 = (v1 + *(a1 + 288));
  result = *v2;
  v4 = *(v2 + 8);
  return result;
}

uint64_t sub_1009AC010(uint64_t a1)
{
  v2 = (v1 + *(a1 + 292));
  result = *v2;
  v4 = *(v2 + 8);
  return result;
}

uint64_t sub_1009AC024(uint64_t a1)
{
  v2 = (v1 + *(a1 + 100));
  result = *v2;
  v4 = *(v2 + 8);
  return result;
}

uint64_t sub_1009AC038(uint64_t a1)
{
  v2 = (v1 + *(a1 + 332));
  result = *v2;
  v4 = *(v2 + 8);
  return result;
}

uint64_t sub_1009AC04C(uint64_t a1)
{
  v2 = (v1 + *(a1 + 348));
  result = *v2;
  v4 = *(v2 + 8);
  return result;
}

uint64_t sub_1009AC060(uint64_t a1)
{
  v2 = (v1 + *(a1 + 352));
  result = *v2;
  v4 = *(v2 + 8);
  return result;
}

uint64_t sub_1009AC074(uint64_t a1)
{
  v2 = (v1 + *(a1 + 360));
  result = *v2;
  v4 = *(v2 + 8);
  return result;
}

uint64_t sub_1009AC088(uint64_t a1)
{
  v2 = (v1 + *(a1 + 364));
  result = *v2;
  v4 = *(v2 + 8);
  return result;
}

uint64_t sub_1009AC09C(uint64_t a1)
{
  v2 = (v1 + *(a1 + 368));
  result = *v2;
  v4 = *(v2 + 8);
  return result;
}

uint64_t sub_1009AC0B0(uint64_t a1)
{
  v2 = (v1 + *(a1 + 372));
  result = *v2;
  v4 = *(v2 + 8);
  return result;
}

uint64_t sub_1009AC130(uint64_t a1)
{
  v2 = (v1 + *(a1 + 480));
  result = *v2;
  v4 = *(v2 + 8);
  return result;
}

uint64_t sub_1009AC144(uint64_t a1)
{
  v2 = (v1 + *(a1 + 484));
  result = *v2;
  v4 = *(v2 + 8);
  return result;
}

uint64_t sub_1009AC158(uint64_t a1)
{
  v2 = (v1 + *(a1 + 488));
  result = *v2;
  v4 = *(v2 + 8);
  return result;
}

uint64_t sub_1009AC16C(uint64_t a1)
{
  v2 = (v1 + *(a1 + 524));
  result = *v2;
  v4 = *(v2 + 8);
  return result;
}

uint64_t sub_1009AC180(uint64_t a1)
{
  v2 = (v1 + *(a1 + 532));
  result = *v2;
  v4 = *(v2 + 8);
  return result;
}

uint64_t sub_1009AC194(uint64_t a1)
{
  v2 = (v1 + *(a1 + 636));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

uint64_t sub_1009AC1CC(uint64_t a1)
{
  v2 = (v1 + *(a1 + 640));
  result = *v2;
  v4 = *(v2 + 8);
  return result;
}

uint64_t sub_1009AC1F8(uint64_t a1)
{
  v2 = (v1 + *(a1 + 548));
  result = *v2;
  v4 = *(v2 + 8);
  return result;
}

uint64_t sub_1009AC240(uint64_t a1)
{
  v2 = (v1 + *(a1 + 564));
  result = *v2;
  v4 = *(v2 + 8);
  return result;
}

uint64_t sub_1009AC280(uint64_t a1)
{
  v2 = (v1 + *(a1 + 656));
  result = *v2;
  v4 = *(v2 + 8);
  return result;
}

uint64_t sub_1009AC294(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_1016ADCE8, &qword_1013C53A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for ConfigurationResponse()
{
  result = qword_1016B08D8;
  if (!qword_1016B08D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1009AC378()
{
  sub_1002359B8(319, &qword_1016A8838);
  if (v0 <= 0x3F)
  {
    sub_1002ECE54(319, &qword_1016A8840, &qword_1016B0470, &qword_10138EB80);
    if (v1 <= 0x3F)
    {
      sub_1002359B8(319, &unk_1016A0CD8);
      if (v2 <= 0x3F)
      {
        sub_1002359B8(319, &qword_1016ADEF8);
        if (v3 <= 0x3F)
        {
          sub_1002359B8(319, &qword_10169D5F0);
          if (v4 <= 0x3F)
          {
            sub_1009AC868();
            if (v5 <= 0x3F)
            {
              sub_1002359B8(319, &qword_1016ADF20);
              if (v6 <= 0x3F)
              {
                sub_1002ECE54(319, &qword_1016ADF28, &qword_101697E40, qword_1013C5620);
                if (v7 <= 0x3F)
                {
                  sub_1002ECE54(319, &qword_1016ADF30, &qword_101697E28, &qword_10138EA70);
                  if (v8 <= 0x3F)
                  {
                    sub_1002359B8(319, &qword_1016ADF38);
                    if (v9 <= 0x3F)
                    {
                      sub_1002359B8(319, &qword_1016BD350);
                      if (v10 <= 0x3F)
                      {
                        sub_1002359B8(319, &unk_1016ADF40);
                        if (v11 <= 0x3F)
                        {
                          swift_cvw_initStructMetadataWithLayoutString();
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_1009AC868()
{
  if (!qword_1016B08E8)
  {
    type metadata accessor for FeatureSupportMatrix();
    sub_1009AC944();
    sub_1009AC998();
    sub_1009AC9EC(&qword_1016AE268);
    sub_1009AC9EC(&qword_1016AE2B8);
    v0 = type metadata accessor for CustomCodableKeyDictionary();
    if (!v1)
    {
      atomic_store(v0, &qword_1016B08E8);
    }
  }
}

unint64_t sub_1009AC944()
{
  result = qword_1016B08F0;
  if (!qword_1016B08F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B08F0);
  }

  return result;
}

unint64_t sub_1009AC998()
{
  result = qword_1016B08F8;
  if (!qword_1016B08F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B08F8);
  }

  return result;
}

uint64_t sub_1009AC9EC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FeatureSupportMatrix();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1009ACA40(char a1)
{
  result = 0x6F43737574617473;
  switch(a1)
  {
    case 1:
      result = 0x7470697263736564;
      break;
    case 2:
    case 35:
    case 60:
    case 113:
    case 114:
    case -101:
      result = 0xD000000000000010;
      break;
    case 3:
    case 74:
    case 83:
    case 98:
    case 112:
      result = 0xD000000000000019;
      break;
    case 4:
    case 5:
    case 29:
    case 40:
    case 63:
    case 85:
    case -106:
      result = 0xD000000000000025;
      break;
    case 6:
    case 77:
    case 81:
    case 97:
    case 126:
    case -115:
    case -107:
    case -97:
      result = 0xD000000000000018;
      break;
    case 7:
      result = 0x754E6C6169726573;
      break;
    case 8:
      result = 0x6E457265646E6966;
      break;
    case 9:
    case 21:
    case 58:
    case 76:
    case 107:
    case -109:
    case -96:
      result = 0xD000000000000015;
      break;
    case 10:
    case 53:
    case 56:
    case 57:
    case -124:
    case -122:
    case -117:
    case -104:
      result = 0xD00000000000001ELL;
      break;
    case 11:
    case 45:
    case 117:
      result = 0xD000000000000016;
      break;
    case 12:
    case 34:
    case 46:
    case 67:
    case 88:
    case -99:
      result = 0xD000000000000017;
      break;
    case 13:
    case 24:
    case 70:
    case 125:
      result = 0xD000000000000024;
      break;
    case 14:
      result = 0xD00000000000003ALL;
      break;
    case 15:
      result = 0xD000000000000043;
      break;
    case 16:
    case 42:
    case 43:
    case 49:
    case 54:
    case 55:
    case 61:
    case 62:
    case 87:
    case 93:
    case 121:
      result = 0xD00000000000001CLL;
      break;
    case 17:
    case 64:
    case 102:
      result = 0xD000000000000028;
      break;
    case 18:
    case 22:
    case 26:
    case 36:
    case 86:
    case 96:
    case 111:
    case -121:
      result = 0xD00000000000001FLL;
      break;
    case 19:
    case 32:
    case 37:
    case 39:
    case 66:
    case 68:
    case 71:
    case -102:
      result = 0xD000000000000021;
      break;
    case 20:
    case 118:
    case -100:
      result = 0xD000000000000014;
      break;
    case 23:
    case 27:
    case 41:
    case 69:
    case 75:
    case 84:
    case 123:
    case 124:
    case -126:
    case -114:
      result = 0xD000000000000023;
      break;
    case 25:
    case 44:
      result = 0xD000000000000026;
      break;
    case 28:
    case 38:
      result = 0xD00000000000002ALL;
      break;
    case 30:
      result = 0xD00000000000002CLL;
      break;
    case 31:
      result = 0xD00000000000001DLL;
      break;
    case 33:
      result = 0xD00000000000001DLL;
      break;
    case 47:
      result = 0xD000000000000012;
      break;
    case 48:
    case 78:
    case 90:
    case 91:
    case 95:
    case 120:
    case -123:
    case -120:
      result = 0xD00000000000001ALL;
      break;
    case 50:
    case -112:
      result = 0xD000000000000011;
      break;
    case 51:
    case 82:
    case -105:
      result = 0xD000000000000013;
      break;
    case 52:
      result = 0xD00000000000001DLL;
      break;
    case 59:
      result = 0x724473776F6C6C61;
      break;
    case 65:
    case 73:
    case 92:
    case 110:
    case -125:
    case -98:
      result = 0xD000000000000020;
      break;
    case 72:
      result = 0xD00000000000001DLL;
      break;
    case 79:
      result = 0xD00000000000001DLL;
      break;
    case 80:
      result = 0x6941656C65487369;
      break;
    case 89:
      result = 0xD00000000000001DLL;
      break;
    case 94:
    case 101:
    case 122:
    case -118:
    case -108:
      result = 0xD000000000000022;
      break;
    case 99:
    case 103:
    case 127:
      result = 0xD00000000000002BLL;
      break;
    case 100:
    case 119:
      result = 0xD00000000000001BLL;
      break;
    case 104:
      result = 0xD00000000000001DLL;
      break;
    case 105:
      result = 0xD00000000000001DLL;
      break;
    case 106:
      result = 0xD000000000000032;
      break;
    case 108:
      result = 0xD00000000000001DLL;
      break;
    case 109:
      result = 0xD00000000000001DLL;
      break;
    case 115:
    case 116:
      result = 0x657261685378616DLL;
      break;
    case -128:
    case -119:
      result = 0xD00000000000002DLL;
      break;
    case -127:
      result = 0xD00000000000001DLL;
      break;
    case -116:
      result = 0xD00000000000001DLL;
      break;
    case -113:
      result = 0xD000000000000029;
      break;
    case -111:
      result = 0xD00000000000001DLL;
      break;
    case -110:
      result = 0xD00000000000001DLL;
      break;
    case -103:
      result = 0xD00000000000001DLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1009AD57C(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_1009ACA40(*a1);
  v5 = v4;
  if (v3 == sub_1009ACA40(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_1009AD604()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_1009ACA40(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1009AD668()
{
  sub_1009ACA40(*v0);
  String.hash(into:)();
}

Swift::Int sub_1009AD6BC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_1009ACA40(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1009AD71C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1009B1404();
  *a2 = result;
  return result;
}

unint64_t sub_1009AD74C@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1009ACA40(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1009AD780@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1009B1404();
  *a1 = result;
  return result;
}

uint64_t sub_1009AD7B4(uint64_t a1)
{
  v2 = sub_1009B0E9C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1009AD7F0(uint64_t a1)
{
  v2 = sub_1009B0E9C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1009AD82C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 3158066;
  }

  else
  {
    v4 = 0x726F7272456F6ELL;
  }

  if (v3)
  {
    v5 = 0xE700000000000000;
  }

  else
  {
    v5 = 0xE300000000000000;
  }

  if (*a2)
  {
    v6 = 3158066;
  }

  else
  {
    v6 = 0x726F7272456F6ELL;
  }

  if (*a2)
  {
    v7 = 0xE300000000000000;
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

Swift::Int sub_1009AD8CC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1009AD948()
{
  *v0;
  String.hash(into:)();
}

Swift::Int sub_1009AD9B0()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1009ADA28@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_10160C1E0, *a1);

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

void sub_1009ADA88(uint64_t *a1@<X8>)
{
  v2 = 3158066;
  if (!*v1)
  {
    v2 = 0x726F7272456F6ELL;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xE300000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

unint64_t sub_1009ADB74()
{
  result = qword_1016B0BA8;
  if (!qword_1016B0BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B0BA8);
  }

  return result;
}

uint64_t sub_1009ADBC8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v594 = a2;
  v3 = sub_1000BC4D4(&qword_1016B0878, &qword_1013CF3B8);
  v602 = *(v3 - 8);
  v603 = v3;
  v4 = *(v602 + 64);
  __chkstk_darwin(v3);
  v596 = &v590 - v5;
  v598 = sub_1000BC4D4(&qword_1016B0BB0, &qword_1013CF500);
  v597 = *(v598 - 8);
  v6 = *(v597 + 64);
  __chkstk_darwin(v598);
  v8 = &v590 - v7;
  v9 = type metadata accessor for ConfigurationResponse();
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9);
  v13 = &v590 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v604 = v11;
  v14 = *(v11 + 96);
  v15 = type metadata accessor for FeatureSupportMatrix();
  sub_1009AC944();
  v16 = sub_1009AC998();
  v17 = sub_1009AC9EC(&qword_1016AE268);
  sub_1009AC9EC(&qword_1016AE2B8);
  v605 = v13;
  v601 = v14;
  v595 = v15;
  CustomCodableKeyDictionary.init(wrappedValue:)();
  v18 = a1[3];
  v19 = a1[4];
  v600 = a1;
  sub_1000035D0(a1, v18);
  sub_1009B0E9C();
  v599 = v8;
  v20 = v606;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v20)
  {
    v606 = v20;
    v22 = v605;
    sub_100007BAC(v600);
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v29 = 0;
    goto LABEL_4;
  }

  v592 = v17;
  v593 = v16;
  v21 = v596;
  LOBYTE(v607) = 0;
  sub_1009B0F58();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v42 = v605;
  *v605 = v608;
  LOBYTE(v608) = 1;
  *(v42 + 1) = KeyedDecodingContainer.decode(_:forKey:)();
  *(v42 + 2) = v43;
  LOBYTE(v607) = 2;
  sub_1000E307C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v591 = 0;
  *(v42 + 24) = v608;
  LOBYTE(v608) = 3;
  KeyedDecodingContainer.decode(_:forKey:)();
  *(v42 + 5) = v44;
  LOBYTE(v608) = 4;
  KeyedDecodingContainer.decode(_:forKey:)();
  *(v42 + 6) = v45;
  LOBYTE(v608) = 5;
  KeyedDecodingContainer.decode(_:forKey:)();
  *(v42 + 7) = v46;
  LOBYTE(v608) = 6;
  *(v42 + 8) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v42[72] = v47 & 1;
  LOBYTE(v608) = 7;
  *(v42 + 10) = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v608) = 8;
  v50 = KeyedDecodingContainer.decode(_:forKey:)();
  v606 = 0;
  v42[88] = v50 & 1;
  sub_1000BC4D4(&qword_1016B0470, &qword_10138EB80);
  LOBYTE(v607) = 9;
  sub_1009B0FAC(&qword_1016A8A58, &qword_1016B0470, &qword_10138EB80);
  v51 = v606;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v606 = v51;
  if (v51)
  {
    (*(v597 + 8))(v599, v598);
    LODWORD(v599) = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v29 = 0;
    v22 = v605;
    goto LABEL_20;
  }

  *(v605 + 12) = v608;
  LOBYTE(v608) = 10;
  v52 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v606 = 0;
  v53 = v605;
  *(v605 + 13) = v52;
  v53[112] = v54 & 1;
  LOBYTE(v608) = 11;
  v55 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v606 = 0;
  v56 = v605;
  *(v605 + 15) = v55;
  v56[128] = v57 & 1;
  LOBYTE(v608) = 12;
  v58 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v606 = 0;
  v59 = v605;
  *(v605 + 17) = v58;
  v59[144] = v60 & 1;
  LOBYTE(v608) = 13;
  v61 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v606 = 0;
  v62 = v605;
  *(v605 + 19) = v61;
  v62[160] = v63 & 1;
  LOBYTE(v608) = 14;
  v64 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v606 = 0;
  v65 = v605;
  *(v605 + 21) = v64;
  v65[176] = v66 & 1;
  LOBYTE(v608) = 15;
  v67 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v606 = 0;
  v68 = v605;
  *(v605 + 23) = v67;
  v68[192] = v69 & 1;
  LOBYTE(v608) = 16;
  v70 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v606 = 0;
  v71 = v605;
  *(v605 + 25) = v70;
  v71[208] = v72 & 1;
  LOBYTE(v608) = 17;
  v73 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v606 = 0;
  v74 = v605;
  *(v605 + 27) = v73;
  v74[224] = v75 & 1;
  LOBYTE(v608) = 18;
  v76 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v606 = 0;
  v77 = v605;
  *(v605 + 29) = v76;
  v77[240] = v78 & 1;
  LOBYTE(v608) = 19;
  v79 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v606 = 0;
  v605[241] = v79;
  LOBYTE(v608) = 20;
  sub_10090CE50();
  v80 = v606;
  KeyedDecodingContainer.decode<A, B>(_:forKey:)();
  v606 = v80;
  if (v80)
  {
    goto LABEL_43;
  }

  (*(v602 + 40))(&v605[v601], v21, v603);
  LOBYTE(v608) = 21;
  v81 = v606;
  v82 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v606 = v81;
  if (v81)
  {
    goto LABEL_43;
  }

  v84 = &v605[v604[26]];
  *v84 = v82;
  v84[8] = v83 & 1;
  LOBYTE(v608) = 22;
  v85 = v606;
  v86 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v606 = v85;
  if (v85)
  {
    goto LABEL_43;
  }

  v88 = &v605[v604[27]];
  *v88 = v86;
  v88[8] = v87 & 1;
  LOBYTE(v608) = 23;
  v89 = v606;
  v90 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v606 = v89;
  if (v89)
  {
    goto LABEL_43;
  }

  v92 = &v605[v604[28]];
  *v92 = v90;
  v92[8] = v91 & 1;
  LOBYTE(v608) = 24;
  v93 = v606;
  v94 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v606 = v93;
  if (v93)
  {
    goto LABEL_43;
  }

  v96 = &v605[v604[29]];
  *v96 = v94;
  v96[8] = v95 & 1;
  LOBYTE(v608) = 25;
  v97 = v606;
  v98 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v606 = v97;
  if (v97)
  {
    goto LABEL_43;
  }

  v100 = &v605[v604[30]];
  *v100 = v98;
  v100[8] = v99 & 1;
  LOBYTE(v608) = 26;
  v101 = v606;
  v102 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v606 = v101;
  if (v101)
  {
    goto LABEL_43;
  }

  v104 = &v605[v604[31]];
  *v104 = v102;
  v104[8] = v103 & 1;
  LOBYTE(v608) = 27;
  v105 = v606;
  v106 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v606 = v105;
  if (v105)
  {
    goto LABEL_43;
  }

  v108 = &v605[v604[32]];
  *v108 = v106;
  v108[8] = v107 & 1;
  LOBYTE(v608) = 28;
  v109 = v606;
  v110 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v606 = v109;
  if (v109)
  {
    goto LABEL_43;
  }

  v112 = &v605[v604[33]];
  *v112 = v110;
  v112[8] = v111 & 1;
  LOBYTE(v608) = 29;
  v113 = v606;
  v114 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v606 = v113;
  if (v113)
  {
    goto LABEL_43;
  }

  v116 = &v605[v604[34]];
  *v116 = v114;
  v116[8] = v115 & 1;
  LOBYTE(v608) = 30;
  v117 = v606;
  v118 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v606 = v117;
  if (v117)
  {
    goto LABEL_43;
  }

  v120 = &v605[v604[35]];
  *v120 = v118;
  v120[8] = v119 & 1;
  LOBYTE(v608) = 31;
  v121 = v606;
  v122 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v606 = v121;
  if (v121)
  {
    goto LABEL_43;
  }

  v605[v604[36]] = v122;
  LOBYTE(v608) = 32;
  v123 = v606;
  v124 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v606 = v123;
  if (v123)
  {
    goto LABEL_43;
  }

  v126 = &v605[v604[37]];
  *v126 = v124;
  v126[8] = v125 & 1;
  LOBYTE(v608) = 33;
  v127 = v606;
  v128 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v606 = v127;
  if (v127)
  {
    goto LABEL_43;
  }

  v130 = &v605[v604[38]];
  *v130 = v128;
  v130[8] = v129 & 1;
  LOBYTE(v608) = 34;
  v131 = v606;
  v132 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v606 = v131;
  if (v131)
  {
    goto LABEL_43;
  }

  v134 = &v605[v604[39]];
  *v134 = v132;
  v134[8] = v133 & 1;
  LOBYTE(v608) = 35;
  v135 = v606;
  v136 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v606 = v135;
  if (v135)
  {
    goto LABEL_43;
  }

  v605[v604[40]] = v136;
  LOBYTE(v608) = 36;
  v137 = v606;
  v138 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v606 = v137;
  if (v137)
  {
    goto LABEL_43;
  }

  v140 = &v605[v604[41]];
  *v140 = v138;
  v140[8] = v139 & 1;
  LOBYTE(v608) = 37;
  v141 = v606;
  v142 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v606 = v141;
  if (v141)
  {
    goto LABEL_43;
  }

  v144 = &v605[v604[42]];
  *v144 = v142;
  v144[8] = v143 & 1;
  LOBYTE(v608) = 38;
  v145 = v606;
  v146 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v606 = v145;
  if (v145)
  {
    goto LABEL_43;
  }

  v148 = &v605[v604[43]];
  *v148 = v146;
  v148[8] = v147 & 1;
  LOBYTE(v608) = 39;
  v149 = v606;
  v150 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v606 = v149;
  if (v149)
  {
    goto LABEL_43;
  }

  v152 = &v605[v604[44]];
  *v152 = v150;
  v152[8] = v151 & 1;
  LOBYTE(v608) = 40;
  v153 = v606;
  v154 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v606 = v153;
  if (v153)
  {
    goto LABEL_43;
  }

  v156 = &v605[v604[45]];
  *v156 = v154;
  v156[8] = v155 & 1;
  LOBYTE(v608) = 41;
  v157 = v606;
  v158 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v606 = v157;
  if (v157)
  {
    goto LABEL_43;
  }

  v160 = &v605[v604[46]];
  *v160 = v158;
  v160[8] = v159 & 1;
  LOBYTE(v608) = 42;
  v161 = v606;
  v162 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v606 = v161;
  if (v161)
  {
    goto LABEL_43;
  }

  v164 = &v605[v604[47]];
  *v164 = v162;
  v164[8] = v163 & 1;
  LOBYTE(v608) = 43;
  v165 = v606;
  v166 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v606 = v165;
  if (v165)
  {
    goto LABEL_43;
  }

  v168 = &v605[v604[48]];
  *v168 = v166;
  v168[8] = v167 & 1;
  LOBYTE(v608) = 44;
  v169 = v606;
  v170 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v606 = v169;
  if (v169)
  {
    goto LABEL_43;
  }

  v172 = &v605[v604[49]];
  *v172 = v170;
  v172[8] = v171 & 1;
  LOBYTE(v608) = 45;
  v173 = v606;
  v174 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v606 = v173;
  if (v173)
  {
    goto LABEL_43;
  }

  v176 = &v605[v604[25]];
  *v176 = v174;
  v176[8] = v175 & 1;
  LOBYTE(v608) = 46;
  v177 = v606;
  v178 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v606 = v177;
  if (v177)
  {
    goto LABEL_43;
  }

  v180 = &v605[v604[50]];
  *v180 = v178;
  v180[8] = v179 & 1;
  LOBYTE(v608) = 47;
  v181 = v606;
  v182 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v606 = v181;
  if (v181)
  {
    goto LABEL_43;
  }

  v184 = &v605[v604[51]];
  *v184 = v182;
  v184[8] = v183 & 1;
  LOBYTE(v608) = 48;
  v185 = v606;
  v186 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v606 = v185;
  if (v185)
  {
    goto LABEL_43;
  }

  v188 = &v605[v604[52]];
  *v188 = v186;
  v188[8] = v187 & 1;
  LOBYTE(v608) = 49;
  v189 = v606;
  v190 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v606 = v189;
  if (v189)
  {
    goto LABEL_43;
  }

  v192 = &v605[v604[53]];
  *v192 = v190;
  v192[8] = v191 & 1;
  LOBYTE(v608) = 50;
  v193 = v606;
  v194 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v606 = v193;
  if (v193)
  {
    goto LABEL_43;
  }

  v196 = &v605[v604[54]];
  *v196 = v194;
  v196[8] = v195 & 1;
  LOBYTE(v608) = 51;
  v197 = v606;
  v198 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v606 = v197;
  if (v197)
  {
    goto LABEL_43;
  }

  v605[v604[55]] = v198;
  LOBYTE(v608) = 52;
  v199 = v606;
  v200 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v606 = v199;
  if (v199)
  {
    goto LABEL_43;
  }

  v202 = &v605[v604[56]];
  *v202 = v200;
  v202[8] = v201 & 1;
  LOBYTE(v608) = 53;
  v203 = v606;
  v204 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v606 = v203;
  if (v203)
  {
    goto LABEL_43;
  }

  v206 = &v605[v604[57]];
  *v206 = v204;
  v206[8] = v205 & 1;
  LOBYTE(v608) = 54;
  v207 = v606;
  v208 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v606 = v207;
  if (v207)
  {
    goto LABEL_43;
  }

  v210 = &v605[v604[58]];
  *v210 = v208;
  v210[8] = v209 & 1;
  LOBYTE(v608) = 55;
  v211 = v606;
  v212 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v606 = v211;
  if (v211)
  {
    goto LABEL_43;
  }

  v214 = &v605[v604[59]];
  *v214 = v212;
  v214[8] = v213 & 1;
  LOBYTE(v608) = 56;
  v215 = v606;
  v216 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v606 = v215;
  if (v215)
  {
    goto LABEL_43;
  }

  v218 = &v605[v604[60]];
  *v218 = v216;
  v218[8] = v217 & 1;
  LOBYTE(v608) = 57;
  v219 = v606;
  v220 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v606 = v219;
  if (v219)
  {
    goto LABEL_43;
  }

  v222 = &v605[v604[61]];
  *v222 = v220;
  v222[8] = v221 & 1;
  LOBYTE(v608) = 58;
  v223 = v606;
  v224 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v606 = v223;
  if (v223)
  {
    goto LABEL_43;
  }

  v605[v604[62]] = v224;
  LOBYTE(v608) = 59;
  v225 = v606;
  v226 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v606 = v225;
  if (v225 || (v605[v604[63]] = v226, v616 = 60, sub_10090CF40(), v227 = v606, KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)(), (v606 = v227) != 0))
  {
LABEL_43:
    (*(v597 + 8))(v599, v598);
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v29 = 0;
    LODWORD(v599) = 1;
    v22 = v605;
    goto LABEL_20;
  }

  v228 = &v605[v604[64]];
  v229 = v613;
  *(v228 + 4) = v612;
  *(v228 + 5) = v229;
  *(v228 + 6) = v614;
  v230 = v609;
  *v228 = v608;
  *(v228 + 1) = v230;
  v231 = v611;
  *(v228 + 2) = v610;
  *(v228 + 3) = v231;
  LOBYTE(v607) = 61;
  v232 = v606;
  v233 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v606 = v232;
  if (v232)
  {
    goto LABEL_114;
  }

  v235 = &v605[v604[65]];
  *v235 = v233;
  v235[8] = v234 & 1;
  LOBYTE(v607) = 62;
  v236 = v606;
  v237 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v606 = v236;
  if (v236)
  {
    goto LABEL_114;
  }

  v239 = &v605[v604[66]];
  *v239 = v237;
  v239[8] = v238 & 1;
  LOBYTE(v607) = 63;
  v240 = v606;
  v241 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v606 = v240;
  if (v240)
  {
    goto LABEL_114;
  }

  v243 = &v605[v604[67]];
  *v243 = v241;
  v243[8] = v242 & 1;
  LOBYTE(v607) = 64;
  v244 = v606;
  v245 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v606 = v244;
  if (v244)
  {
    goto LABEL_114;
  }

  v247 = &v605[v604[68]];
  *v247 = v245;
  v247[8] = v246 & 1;
  LOBYTE(v607) = 65;
  v248 = v606;
  v249 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v606 = v248;
  if (v248)
  {
    goto LABEL_114;
  }

  v251 = &v605[v604[69]];
  *v251 = v249;
  v251[8] = v250 & 1;
  LOBYTE(v607) = 66;
  v252 = v606;
  v253 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v606 = v252;
  if (v252)
  {
    goto LABEL_114;
  }

  v255 = &v605[v604[70]];
  *v255 = v253;
  v255[8] = v254 & 1;
  LOBYTE(v607) = 67;
  v256 = v606;
  v257 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v606 = v256;
  if (v256)
  {
    goto LABEL_114;
  }

  v259 = &v605[v604[71]];
  *v259 = v257;
  v259[8] = v258 & 1;
  LOBYTE(v607) = 68;
  v260 = v606;
  v261 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v606 = v260;
  if (v260)
  {
    goto LABEL_114;
  }

  v263 = &v605[v604[72]];
  *v263 = v261;
  v263[8] = v262 & 1;
  LOBYTE(v607) = 69;
  v264 = v606;
  v265 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v606 = v264;
  if (v264)
  {
    goto LABEL_114;
  }

  v267 = &v605[v604[73]];
  *v267 = v265;
  v267[8] = v266 & 1;
  LOBYTE(v607) = 70;
  v268 = v606;
  v269 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v606 = v268;
  if (v268)
  {
    goto LABEL_114;
  }

  v271 = &v605[v604[74]];
  *v271 = v269;
  v271[8] = v270 & 1;
  LOBYTE(v607) = 71;
  v272 = v606;
  v273 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v606 = v272;
  if (v272)
  {
    goto LABEL_114;
  }

  v275 = &v605[v604[75]];
  *v275 = v273;
  v275[8] = v274 & 1;
  LOBYTE(v607) = 72;
  v276 = v606;
  v277 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v606 = v276;
  if (v276)
  {
    goto LABEL_114;
  }

  v279 = &v605[v604[76]];
  *v279 = v277;
  v279[8] = v278 & 1;
  LOBYTE(v607) = 73;
  v280 = v606;
  v281 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v606 = v280;
  if (v280)
  {
    goto LABEL_114;
  }

  v283 = &v605[v604[77]];
  *v283 = v281;
  v283[8] = v282 & 1;
  LOBYTE(v607) = 74;
  v284 = v606;
  v285 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v606 = v284;
  if (v284)
  {
    goto LABEL_114;
  }

  v287 = &v605[v604[78]];
  *v287 = v285;
  v287[8] = v286 & 1;
  LOBYTE(v607) = 75;
  v288 = v606;
  v289 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v606 = v288;
  if (v288)
  {
    goto LABEL_114;
  }

  v291 = &v605[v604[79]];
  *v291 = v289;
  v291[8] = v290 & 1;
  LOBYTE(v607) = 76;
  v292 = v606;
  v293 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v606 = v292;
  if (v292)
  {
    goto LABEL_114;
  }

  v295 = &v605[v604[80]];
  *v295 = v293;
  v295[8] = v294 & 1;
  LOBYTE(v607) = 77;
  v296 = v606;
  v297 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v606 = v296;
  if (v296)
  {
    goto LABEL_114;
  }

  v299 = &v605[v604[81]];
  *v299 = v297;
  v299[8] = v298 & 1;
  LOBYTE(v607) = 78;
  v300 = v606;
  v301 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v606 = v300;
  if (v300)
  {
    goto LABEL_114;
  }

  v303 = &v605[v604[82]];
  *v303 = v301;
  v303[8] = v302 & 1;
  LOBYTE(v607) = 79;
  v304 = v606;
  v305 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v606 = v304;
  if (v304)
  {
    goto LABEL_114;
  }

  v307 = &v605[v604[83]];
  *v307 = v305;
  v307[8] = v306 & 1;
  LOBYTE(v607) = 80;
  v308 = v606;
  v309 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v606 = v308;
  if (v308)
  {
    goto LABEL_114;
  }

  v605[v604[84]] = v309;
  LOBYTE(v607) = 81;
  v310 = v606;
  v311 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v606 = v310;
  if (v310)
  {
    goto LABEL_114;
  }

  v605[v604[85]] = v311;
  LOBYTE(v607) = 82;
  v312 = v606;
  v313 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v606 = v312;
  if (v312)
  {
    goto LABEL_114;
  }

  v605[v604[86]] = v313;
  LOBYTE(v607) = 83;
  v314 = v606;
  v315 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v606 = v314;
  if (v314)
  {
    goto LABEL_114;
  }

  v317 = &v605[v604[87]];
  *v317 = v315;
  v317[8] = v316 & 1;
  LOBYTE(v607) = 84;
  v318 = v606;
  v319 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v606 = v318;
  if (v318)
  {
    goto LABEL_114;
  }

  v321 = &v605[v604[88]];
  *v321 = v319;
  v321[8] = v320 & 1;
  LOBYTE(v607) = 85;
  v322 = v606;
  v323 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v606 = v322;
  if (v322)
  {
    goto LABEL_114;
  }

  v325 = &v605[v604[89]];
  *v325 = v323;
  v325[8] = v324 & 1;
  LOBYTE(v607) = 86;
  v326 = v606;
  v327 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v606 = v326;
  if (v326)
  {
    goto LABEL_114;
  }

  v329 = &v605[v604[90]];
  *v329 = v327;
  v329[8] = v328 & 1;
  LOBYTE(v607) = 87;
  v330 = v606;
  v331 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v606 = v330;
  if (v330)
  {
    goto LABEL_114;
  }

  v333 = &v605[v604[91]];
  *v333 = v331;
  v333[8] = v332 & 1;
  LOBYTE(v607) = 88;
  v334 = v606;
  v335 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v606 = v334;
  if (v334)
  {
    goto LABEL_114;
  }

  v337 = &v605[v604[92]];
  *v337 = v335;
  v337[8] = v336 & 1;
  LOBYTE(v607) = 89;
  v338 = v606;
  v339 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v606 = v338;
  if (v338)
  {
    goto LABEL_114;
  }

  v341 = &v605[v604[93]];
  *v341 = v339;
  v341[8] = v340 & 1;
  LOBYTE(v607) = 90;
  v342 = v606;
  v343 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v606 = v342;
  if (v342)
  {
    goto LABEL_114;
  }

  v345 = &v605[v604[94]];
  *v345 = v343;
  v345[8] = v344 & 1;
  LOBYTE(v607) = 91;
  v346 = v606;
  v347 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v606 = v346;
  if (v346)
  {
    goto LABEL_114;
  }

  v349 = &v605[v604[95]];
  *v349 = v347;
  v349[8] = v348 & 1;
  LOBYTE(v607) = 92;
  v350 = v606;
  v351 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v606 = v350;
  if (v350)
  {
    goto LABEL_114;
  }

  v605[v604[96]] = v351;
  LOBYTE(v607) = 93;
  v352 = v606;
  v353 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v606 = v352;
  if (v352)
  {
    goto LABEL_114;
  }

  v355 = &v605[v604[97]];
  *v355 = v353;
  v355[8] = v354 & 1;
  LOBYTE(v607) = 94;
  v356 = v606;
  v357 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v606 = v356;
  if (v356)
  {
    goto LABEL_114;
  }

  v359 = &v605[v604[98]];
  *v359 = v357;
  v359[8] = v358 & 1;
  LOBYTE(v607) = 95;
  v360 = v606;
  v361 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v606 = v360;
  if (v360)
  {
    goto LABEL_114;
  }

  v363 = &v605[v604[99]];
  *v363 = v361;
  v363[8] = v362 & 1;
  LOBYTE(v607) = 96;
  v364 = v606;
  v365 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v606 = v364;
  if (v364)
  {
    goto LABEL_114;
  }

  v605[v604[100]] = v365;
  LOBYTE(v607) = 97;
  v366 = v606;
  v367 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v606 = v366;
  if (v366)
  {
    goto LABEL_114;
  }

  v605[v604[101]] = v367;
  LOBYTE(v607) = 98;
  v368 = v606;
  v369 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v606 = v368;
  if (v368)
  {
    goto LABEL_114;
  }

  v605[v604[102]] = v369;
  LOBYTE(v607) = 99;
  v370 = v606;
  v371 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v606 = v370;
  if (v370)
  {
    goto LABEL_114;
  }

  v373 = &v605[v604[103]];
  *v373 = v371;
  v373[8] = v372 & 1;
  LOBYTE(v607) = 100;
  v374 = v606;
  v375 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v606 = v374;
  if (v374)
  {
    goto LABEL_114;
  }

  v377 = &v605[v604[104]];
  *v377 = v375;
  v377[8] = v376 & 1;
  LOBYTE(v607) = 101;
  v378 = v606;
  v379 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v606 = v378;
  if (v378)
  {
    goto LABEL_114;
  }

  v381 = &v605[v604[105]];
  *v381 = v379;
  v381[8] = v380 & 1;
  LOBYTE(v607) = 102;
  v382 = v606;
  v383 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v606 = v382;
  if (v382)
  {
    goto LABEL_114;
  }

  v385 = &v605[v604[106]];
  *v385 = v383;
  v385[8] = v384 & 1;
  LOBYTE(v607) = 103;
  v386 = v606;
  v387 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v606 = v386;
  if (v386)
  {
    goto LABEL_114;
  }

  v605[v604[107]] = v387;
  LOBYTE(v607) = 104;
  v388 = v606;
  v389 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v606 = v388;
  if (v388)
  {
    goto LABEL_114;
  }

  v391 = &v605[v604[108]];
  *v391 = v389;
  v391[8] = v390 & 1;
  sub_1000BC4D4(&qword_101697E40, qword_1013C5620);
  v615 = 105;
  sub_1009B0FAC(&qword_10169EA80, &qword_101697E40, qword_1013C5620);
  v392 = v606;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v606 = v392;
  if (v392)
  {
LABEL_114:
    (*(v597 + 8))(v599, v598);
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v29 = 0;
    LODWORD(v599) = 1;
    v23 = 1;
    v22 = v605;
    goto LABEL_20;
  }

  *&v605[v604[109]] = v607;
  LOBYTE(v607) = 106;
  v393 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v606 = 0;
  v394 = &v605[v604[110]];
  *v394 = v393;
  v394[8] = v395 & 1;
  LOBYTE(v607) = 107;
  v396 = v606;
  v397 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v606 = v396;
  if (v396 || (v605[v604[111]] = v397, sub_1000BC4D4(&qword_101697E28, &qword_10138EA70), v615 = 108, sub_1009B1014(), v398 = v606, KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)(), (v606 = v398) != 0))
  {
    (*(v597 + 8))(v599, v598);
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v29 = 0;
    LODWORD(v599) = 1;
    v23 = 1;
    v24 = 1;
    v22 = v605;
    goto LABEL_20;
  }

  *&v605[v604[112]] = v607;
  LOBYTE(v607) = 109;
  v399 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v606 = 0;
  v400 = &v605[v604[113]];
  *v400 = v399;
  v400[8] = v401 & 1;
  LOBYTE(v607) = 110;
  v402 = v606;
  v403 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v606 = v402;
  if (v402)
  {
    goto LABEL_144;
  }

  v405 = &v605[v604[114]];
  *v405 = v403;
  v405[8] = v404 & 1;
  LOBYTE(v607) = 111;
  v406 = v606;
  v407 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v606 = v406;
  if (v406)
  {
    goto LABEL_144;
  }

  v605[v604[115]] = v407;
  LOBYTE(v607) = 112;
  v408 = v606;
  v409 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v606 = v408;
  if (v408)
  {
    goto LABEL_144;
  }

  v605[v604[116]] = v409;
  LOBYTE(v607) = 113;
  v410 = v606;
  v411 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v606 = v410;
  if (v410)
  {
    goto LABEL_144;
  }

  v413 = &v605[v604[117]];
  *v413 = v411;
  v413[8] = v412 & 1;
  LOBYTE(v607) = 114;
  v414 = v606;
  v415 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v606 = v414;
  if (v414)
  {
    goto LABEL_144;
  }

  v417 = &v605[v604[118]];
  *v417 = v415;
  v417[8] = v416 & 1;
  LOBYTE(v607) = 115;
  v418 = v606;
  v419 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v606 = v418;
  if (v418)
  {
    goto LABEL_144;
  }

  v421 = &v605[v604[119]];
  *v421 = v419;
  v421[8] = v420 & 1;
  LOBYTE(v607) = 116;
  v422 = v606;
  v423 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v606 = v422;
  if (v422)
  {
    goto LABEL_144;
  }

  v425 = &v605[v604[120]];
  *v425 = v423;
  v425[8] = v424 & 1;
  LOBYTE(v607) = 117;
  v426 = v606;
  v427 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v606 = v426;
  if (v426)
  {
    goto LABEL_144;
  }

  v429 = &v605[v604[121]];
  *v429 = v427;
  v429[8] = v428 & 1;
  LOBYTE(v607) = 118;
  v430 = v606;
  v431 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v606 = v430;
  if (v430)
  {
    goto LABEL_144;
  }

  v433 = &v605[v604[122]];
  *v433 = v431;
  v433[8] = v432 & 1;
  LOBYTE(v607) = 119;
  v434 = v606;
  v435 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v606 = v434;
  if (v434)
  {
    goto LABEL_144;
  }

  v437 = &v605[v604[123]];
  *v437 = v435;
  v437[8] = v436 & 1;
  LOBYTE(v607) = 120;
  v438 = v606;
  v439 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v606 = v438;
  if (v438)
  {
    goto LABEL_144;
  }

  v441 = &v605[v604[124]];
  *v441 = v439;
  v441[8] = v440 & 1;
  LOBYTE(v607) = 121;
  v442 = v606;
  v443 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v606 = v442;
  if (v442)
  {
    goto LABEL_144;
  }

  v445 = &v605[v604[125]];
  *v445 = v443;
  v445[8] = v444 & 1;
  LOBYTE(v607) = 122;
  v446 = v606;
  v447 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v606 = v446;
  if (v446)
  {
    goto LABEL_144;
  }

  v449 = &v605[v604[126]];
  *v449 = v447;
  v449[8] = v448 & 1;
  LOBYTE(v607) = 123;
  v450 = v606;
  v451 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v606 = v450;
  if (v450)
  {
    goto LABEL_144;
  }

  v453 = &v605[v604[127]];
  *v453 = v451;
  v453[8] = v452 & 1;
  LOBYTE(v607) = 124;
  v454 = v606;
  v455 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v606 = v454;
  if (v454)
  {
    goto LABEL_144;
  }

  v457 = &v605[v604[128]];
  *v457 = v455;
  v457[8] = v456 & 1;
  LOBYTE(v607) = 125;
  v458 = v606;
  v459 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v606 = v458;
  if (v458)
  {
    goto LABEL_144;
  }

  v461 = &v605[v604[129]];
  *v461 = v459;
  v461[8] = v460 & 1;
  LOBYTE(v607) = 126;
  v462 = v606;
  v463 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v606 = v462;
  if (v462)
  {
    goto LABEL_144;
  }

  v465 = &v605[v604[130]];
  *v465 = v463;
  v465[8] = v464 & 1;
  LOBYTE(v607) = 127;
  v466 = v606;
  v467 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v606 = v466;
  if (v466)
  {
    goto LABEL_144;
  }

  v469 = &v605[v604[131]];
  *v469 = v467;
  v469[8] = v468 & 1;
  LOBYTE(v607) = 0x80;
  v470 = v606;
  v471 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v606 = v470;
  if (v470)
  {
    goto LABEL_144;
  }

  v473 = &v605[v604[132]];
  *v473 = v471;
  v473[8] = v472 & 1;
  LOBYTE(v607) = -127;
  v474 = v606;
  v475 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v606 = v474;
  if (v474)
  {
    goto LABEL_144;
  }

  v477 = &v605[v604[133]];
  *v477 = v475;
  v477[8] = v476 & 1;
  LOBYTE(v607) = -126;
  v478 = v606;
  v479 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v606 = v478;
  if (v478)
  {
    goto LABEL_144;
  }

  v481 = &v605[v604[134]];
  *v481 = v479;
  v481[8] = v480 & 1;
  LOBYTE(v607) = -125;
  v482 = v606;
  v483 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v606 = v482;
  if (v482)
  {
    goto LABEL_144;
  }

  v605[v604[135]] = v483;
  LOBYTE(v607) = -124;
  v484 = v606;
  v485 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v606 = v484;
  if (v484)
  {
    goto LABEL_144;
  }

  v605[v604[136]] = v485;
  LOBYTE(v607) = -123;
  v486 = v606;
  v487 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v606 = v486;
  if (v486)
  {
    goto LABEL_144;
  }

  v489 = &v605[v604[137]];
  *v489 = v487;
  v489[8] = v488 & 1;
  LOBYTE(v607) = -122;
  v490 = v606;
  v491 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v606 = v490;
  if (v490 || (v493 = &v605[v604[138]], *v493 = v491, v493[8] = v492 & 1, LOBYTE(v607) = -121, v494 = v606, v495 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)(), (v606 = v494) != 0))
  {
LABEL_144:
    (*(v597 + 8))(v599, v598);
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v29 = 0;
    LODWORD(v599) = 1;
    v23 = 1;
LABEL_158:
    v24 = 1;
    v25 = 1;
    v22 = v605;
    goto LABEL_20;
  }

  v605[v604[139]] = v495;
  LOBYTE(v607) = -120;
  v496 = v606;
  v497 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v606 = v496;
  if (v496)
  {
    goto LABEL_157;
  }

  v498 = &v605[v604[140]];
  *v498 = v497;
  v498[4] = BYTE4(v497) & 1;
  LOBYTE(v607) = -119;
  v499 = v606;
  v500 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v606 = v499;
  if (v499)
  {
    goto LABEL_157;
  }

  v502 = &v605[v604[141]];
  *v502 = v500;
  v502[8] = v501 & 1;
  LOBYTE(v607) = -118;
  v503 = v606;
  v504 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v606 = v503;
  if (v503)
  {
    goto LABEL_157;
  }

  v506 = &v605[v604[142]];
  *v506 = v504;
  v506[8] = v505 & 1;
  LOBYTE(v607) = -117;
  v507 = v606;
  v508 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v606 = v507;
  if (v507)
  {
    goto LABEL_157;
  }

  v510 = &v605[v604[143]];
  *v510 = v508;
  v510[8] = v509 & 1;
  LOBYTE(v607) = -116;
  v511 = v606;
  v512 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v606 = v511;
  if (v511)
  {
    goto LABEL_157;
  }

  v514 = &v605[v604[144]];
  *v514 = v512;
  v514[8] = v513 & 1;
  LOBYTE(v607) = -115;
  v515 = v606;
  v516 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v606 = v515;
  if (v515)
  {
    goto LABEL_157;
  }

  v518 = &v605[v604[145]];
  *v518 = v516;
  v518[8] = v517 & 1;
  LOBYTE(v607) = -114;
  v519 = v606;
  v520 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v606 = v519;
  if (v519)
  {
    goto LABEL_157;
  }

  v522 = &v605[v604[146]];
  *v522 = v520;
  v522[8] = v521 & 1;
  LOBYTE(v607) = -113;
  v523 = v606;
  v524 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v606 = v523;
  if (v523)
  {
    goto LABEL_157;
  }

  v526 = &v605[v604[147]];
  *v526 = v524;
  v526[8] = v525 & 1;
  LOBYTE(v607) = -112;
  v527 = v606;
  v528 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v606 = v527;
  if (v527)
  {
    goto LABEL_157;
  }

  v605[v604[148]] = v528;
  LOBYTE(v607) = -111;
  v529 = v606;
  v530 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v606 = v529;
  if (v529)
  {
    goto LABEL_157;
  }

  v532 = &v605[v604[149]];
  *v532 = v530;
  v532[8] = v531 & 1;
  LOBYTE(v607) = -110;
  v533 = v606;
  v534 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v606 = v533;
  if (v533 || (v536 = &v605[v604[150]], *v536 = v534, v536[8] = v535 & 1, LOBYTE(v607) = -109, v537 = v606, v538 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)(), (v606 = v537) != 0))
  {
LABEL_157:
    (*(v597 + 8))(v599, v598);
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v29 = 0;
    v23 = 1;
    LODWORD(v599) = 1;
    goto LABEL_158;
  }

  v540 = &v605[v604[151]];
  *v540 = v538;
  v540[1] = v539;
  LOBYTE(v607) = -108;
  v541 = v606;
  v542 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v606 = v541;
  if (v541 || (v544 = &v605[v604[152]], *v544 = v542, v544[8] = v543 & 1, LOBYTE(v607) = -107, v545 = v606, v546 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)(), (v606 = v545) != 0))
  {
    (*(v597 + 8))(v599, v598);
    v27 = 0;
    v28 = 0;
    v29 = 0;
    v23 = 1;
    LODWORD(v599) = 1;
    v24 = 1;
    v25 = 1;
    v26 = 1;
    v22 = v605;
  }

  else
  {
    v548 = &v605[v604[153]];
    *v548 = v546;
    v548[1] = v547;
    LOBYTE(v607) = -106;
    v549 = v606;
    v550 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v606 = v549;
    if (v549 || (v552 = &v605[v604[154]], *v552 = v550, v552[8] = v551 & 1, v615 = -105, v553 = v606, KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)(), (v606 = v553) != 0))
    {
      (*(v597 + 8))(v599, v598);
      v28 = 0;
      v29 = 0;
      v23 = 1;
      LODWORD(v599) = 1;
      v24 = 1;
      v25 = 1;
      v26 = 1;
      v27 = 1;
      v22 = v605;
    }

    else
    {
      *&v605[v604[155]] = v607;
      LOBYTE(v607) = -104;
      v554 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
      v606 = 0;
      v555 = &v605[v604[156]];
      *v555 = v554;
      v555[8] = v556 & 1;
      LOBYTE(v607) = -103;
      v557 = v606;
      v558 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
      v606 = v557;
      if (v557)
      {
        goto LABEL_168;
      }

      v560 = &v605[v604[157]];
      *v560 = v558;
      v560[8] = v559 & 1;
      LOBYTE(v607) = -102;
      v561 = v606;
      v562 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
      v606 = v561;
      if (v561 || (v564 = &v605[v604[158]], *v564 = v562, v564[8] = v563 & 1, LOBYTE(v607) = -101, v565 = v606, v566 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)(), (v606 = v565) != 0))
      {
LABEL_168:
        (*(v597 + 8))(v599, v598);
        v29 = 0;
        v23 = 1;
        LODWORD(v599) = 1;
        v24 = 1;
        v25 = 1;
        v26 = 1;
        v27 = 1;
        v28 = 1;
        v22 = v605;
      }

      else
      {
        v568 = &v605[v604[159]];
        *v568 = v566;
        v568[1] = v567;
        LOBYTE(v607) = -100;
        v569 = v606;
        v570 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
        v606 = v569;
        if (!v569)
        {
          v572 = &v605[v604[160]];
          *v572 = v570;
          v572[8] = v571 & 1;
          LOBYTE(v607) = -99;
          v573 = v606;
          v574 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
          v606 = v573;
          if (!v573)
          {
            v605[v604[161]] = v574;
            LOBYTE(v607) = -98;
            v575 = v606;
            v576 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
            v606 = v575;
            if (!v575)
            {
              v578 = &v605[v604[162]];
              *v578 = v576;
              v578[8] = v577 & 1;
              LOBYTE(v607) = -97;
              v579 = v606;
              v580 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
              v606 = v579;
              if (!v579)
              {
                v581 = &v605[v604[163]];
                *v581 = v580;
                v581[1] = HIBYTE(v580) & 1;
                LOBYTE(v607) = -96;
                v582 = v606;
                v583 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
                v606 = v582;
                if (!v582)
                {
                  v586 = v583;
                  v587 = v584;
                  (*(v597 + 8))(v599, v598);
                  v588 = v605;
                  v589 = &v605[v604[164]];
                  *v589 = v586;
                  v589[8] = v587 & 1;
                  sub_1009B1098(v588, v594);
                  sub_100007BAC(v600);
                  return sub_1009B10FC(v588);
                }

                (*(v597 + 8))(v599, v598);
                sub_100007BAC(v600);
                v22 = v605;
                v585 = *(v605 + 2);

                sub_100016590(*(v22 + 3), *(v22 + 4));
                v23 = 1;
                v24 = 1;
                v25 = 1;
                v26 = 1;
                v27 = 1;
                v28 = 1;
                v29 = 1;
                goto LABEL_24;
              }
            }
          }
        }

        (*(v597 + 8))(v599, v598);
        v23 = 1;
        LODWORD(v599) = 1;
        v24 = 1;
        v25 = 1;
        v26 = 1;
        v27 = 1;
        v28 = 1;
        v29 = 1;
        v22 = v605;
      }
    }
  }

LABEL_20:
  sub_100007BAC(v600);
  v48 = *(v22 + 2);

  if (v591)
  {
    if (!v599)
    {
      goto LABEL_4;
    }
  }

  else
  {
    sub_100016590(*(v22 + 3), *(v22 + 4));
    if ((v599 & 1) == 0)
    {
      goto LABEL_4;
    }
  }

LABEL_24:
  v49 = *(v22 + 12);

LABEL_4:
  result = (*(v602 + 8))(&v22[v601], v603);
  v31 = v604;
  if (v23)
  {
    v32 = &v22[v604[64]];
    v33 = *(v32 + 5);
    v612 = *(v32 + 4);
    v613 = v33;
    v614 = *(v32 + 6);
    v34 = *(v32 + 1);
    v608 = *v32;
    v609 = v34;
    v35 = *(v32 + 3);
    v610 = *(v32 + 2);
    v611 = v35;
    result = sub_1009B0EF0(&v608);
    if (!v24)
    {
LABEL_6:
      if (!v25)
      {
        goto LABEL_7;
      }

      goto LABEL_14;
    }
  }

  else if (!v24)
  {
    goto LABEL_6;
  }

  v36 = *&v22[v31[109]];

  if (!v25)
  {
LABEL_7:
    if (!v26)
    {
      goto LABEL_8;
    }

    goto LABEL_15;
  }

LABEL_14:
  v37 = *&v22[v31[112]];

  if (!v26)
  {
LABEL_8:
    if (!v27)
    {
      goto LABEL_9;
    }

    goto LABEL_16;
  }

LABEL_15:
  v38 = *&v22[v31[151] + 8];

  if (!v27)
  {
LABEL_9:
    if (!v28)
    {
      goto LABEL_10;
    }

LABEL_17:
    v40 = *&v22[v31[155]];

    if (!v29)
    {
      return result;
    }

    goto LABEL_18;
  }

LABEL_16:
  v39 = *&v22[v31[153] + 8];

  if (v28)
  {
    goto LABEL_17;
  }

LABEL_10:
  if (!v29)
  {
    return result;
  }

LABEL_18:
  v41 = *&v22[v31[159] + 8];
}

unint64_t sub_1009B0E9C()
{
  result = qword_1016B0BB8;
  if (!qword_1016B0BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B0BB8);
  }

  return result;
}

uint64_t sub_1009B0EF0(uint64_t a1)
{
  v2 = sub_1000BC4D4(&qword_1016ADCE8, &qword_1013C53A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1009B0F58()
{
  result = qword_1016B0BC0;
  if (!qword_1016B0BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B0BC0);
  }

  return result;
}

uint64_t sub_1009B0FAC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

unint64_t sub_1009B1014()
{
  result = qword_1016AE290;
  if (!qword_1016AE290)
  {
    sub_1000BC580(&qword_101697E28, &qword_10138EA70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AE290);
  }

  return result;
}

uint64_t sub_1009B1098(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConfigurationResponse();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1009B10FC(uint64_t a1)
{
  v2 = type metadata accessor for ConfigurationResponse();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1009B1158()
{
  result = qword_1016B0BC8;
  if (!qword_1016B0BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B0BC8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ConfigurationResponse.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x60)
  {
    goto LABEL_17;
  }

  if (a2 + 160 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 160) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 160;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 160;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 160;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA1;
  v8 = v6 - 161;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ConfigurationResponse.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 160 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 160) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x60)
  {
    v4 = 0;
  }

  if (a2 > 0x5F)
  {
    v5 = ((a2 - 96) >> 8) + 1;
    *result = a2 - 96;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 - 96;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1009B1300()
{
  result = qword_1016B0BD0;
  if (!qword_1016B0BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B0BD0);
  }

  return result;
}

unint64_t sub_1009B1358()
{
  result = qword_1016B0BD8;
  if (!qword_1016B0BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B0BD8);
  }

  return result;
}

unint64_t sub_1009B13B0()
{
  result = qword_1016B0BE0;
  if (!qword_1016B0BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B0BE0);
  }

  return result;
}

uint64_t sub_1009B1404()
{
  v0 = _findStringSwitchCaseWithCache(cases:string:cache:)();

  v1 = 0;
  result = 53;
  switch(v0)
  {
    case 0:
      goto LABEL_121;
    case 1:
      v1 = 1;
      goto LABEL_121;
    case 2:
      v1 = 2;
      goto LABEL_121;
    case 3:
      v1 = 3;
      goto LABEL_121;
    case 4:
      v1 = 4;
      goto LABEL_121;
    case 5:
      v1 = 5;
      goto LABEL_121;
    case 6:
      v1 = 6;
      goto LABEL_121;
    case 7:
      v1 = 7;
      goto LABEL_121;
    case 8:
      v1 = 8;
      goto LABEL_121;
    case 9:
      v1 = 9;
      goto LABEL_121;
    case 10:
      v1 = 10;
      goto LABEL_121;
    case 11:
      v1 = 11;
      goto LABEL_121;
    case 12:
      v1 = 12;
      goto LABEL_121;
    case 13:
      v1 = 13;
      goto LABEL_121;
    case 14:
      v1 = 14;
      goto LABEL_121;
    case 15:
      v1 = 15;
      goto LABEL_121;
    case 16:
      v1 = 16;
      goto LABEL_121;
    case 17:
      v1 = 17;
      goto LABEL_121;
    case 18:
      v1 = 18;
      goto LABEL_121;
    case 19:
      v1 = 19;
      goto LABEL_121;
    case 20:
      v1 = 20;
      goto LABEL_121;
    case 21:
      v1 = 21;
      goto LABEL_121;
    case 22:
      v1 = 22;
      goto LABEL_121;
    case 23:
      v1 = 23;
      goto LABEL_121;
    case 24:
      v1 = 24;
      goto LABEL_121;
    case 25:
      v1 = 25;
      goto LABEL_121;
    case 26:
      v1 = 26;
      goto LABEL_121;
    case 27:
      v1 = 27;
      goto LABEL_121;
    case 28:
      v1 = 28;
      goto LABEL_121;
    case 29:
      v1 = 29;
      goto LABEL_121;
    case 30:
      v1 = 30;
      goto LABEL_121;
    case 31:
      v1 = 31;
      goto LABEL_121;
    case 32:
      v1 = 32;
      goto LABEL_121;
    case 33:
      v1 = 33;
      goto LABEL_121;
    case 34:
      v1 = 34;
      goto LABEL_121;
    case 35:
      v1 = 35;
      goto LABEL_121;
    case 36:
      v1 = 36;
      goto LABEL_121;
    case 37:
      v1 = 37;
      goto LABEL_121;
    case 38:
      v1 = 38;
      goto LABEL_121;
    case 39:
      v1 = 39;
      goto LABEL_121;
    case 40:
      v1 = 40;
      goto LABEL_121;
    case 41:
      v1 = 41;
      goto LABEL_121;
    case 42:
      v1 = 42;
      goto LABEL_121;
    case 43:
      v1 = 43;
      goto LABEL_121;
    case 44:
      v1 = 44;
      goto LABEL_121;
    case 45:
      v1 = 45;
      goto LABEL_121;
    case 46:
      v1 = 46;
      goto LABEL_121;
    case 47:
      v1 = 47;
      goto LABEL_121;
    case 48:
      v1 = 48;
      goto LABEL_121;
    case 49:
      v1 = 49;
      goto LABEL_121;
    case 50:
      v1 = 50;
      goto LABEL_121;
    case 51:
      v1 = 51;
      goto LABEL_121;
    case 52:
      v1 = 52;
LABEL_121:
      result = v1;
      break;
    case 53:
      return result;
    case 54:
      result = 54;
      break;
    case 55:
      result = 55;
      break;
    case 56:
      result = 56;
      break;
    case 57:
      result = 57;
      break;
    case 58:
      result = 58;
      break;
    case 59:
      result = 59;
      break;
    case 60:
      result = 60;
      break;
    case 61:
      result = 61;
      break;
    case 62:
      result = 62;
      break;
    case 63:
      result = 63;
      break;
    case 64:
      result = 64;
      break;
    case 65:
      result = 65;
      break;
    case 66:
      result = 66;
      break;
    case 67:
      result = 67;
      break;
    case 68:
      result = 68;
      break;
    case 69:
      result = 69;
      break;
    case 70:
      result = 70;
      break;
    case 71:
      result = 71;
      break;
    case 72:
      result = 72;
      break;
    case 73:
      result = 73;
      break;
    case 74:
      result = 74;
      break;
    case 75:
      result = 75;
      break;
    case 76:
      result = 76;
      break;
    case 77:
      result = 77;
      break;
    case 78:
      result = 78;
      break;
    case 79:
      result = 79;
      break;
    case 80:
      result = 80;
      break;
    case 81:
      result = 81;
      break;
    case 82:
      result = 82;
      break;
    case 83:
      result = 83;
      break;
    case 84:
      result = 84;
      break;
    case 85:
      result = 85;
      break;
    case 86:
      result = 86;
      break;
    case 87:
      result = 87;
      break;
    case 88:
      result = 88;
      break;
    case 89:
      result = 89;
      break;
    case 90:
      result = 90;
      break;
    case 91:
      result = 91;
      break;
    case 92:
      result = 92;
      break;
    case 93:
      result = 93;
      break;
    case 94:
      result = 94;
      break;
    case 95:
      result = 95;
      break;
    case 96:
      result = 96;
      break;
    case 97:
      result = 97;
      break;
    case 98:
      result = 98;
      break;
    case 99:
      result = 99;
      break;
    case 100:
      result = 100;
      break;
    case 101:
      result = 101;
      break;
    case 102:
      result = 102;
      break;
    case 103:
      result = 103;
      break;
    case 104:
      result = 104;
      break;
    case 105:
      result = 105;
      break;
    case 106:
      result = 106;
      break;
    case 107:
      result = 107;
      break;
    case 108:
      result = 108;
      break;
    case 109:
      result = 109;
      break;
    case 110:
      result = 110;
      break;
    case 111:
      result = 111;
      break;
    case 112:
      result = 112;
      break;
    case 113:
      result = 113;
      break;
    case 114:
      result = 114;
      break;
    case 115:
      result = 115;
      break;
    case 116:
      result = 116;
      break;
    case 117:
      result = 117;
      break;
    case 118:
      result = 118;
      break;
    case 119:
      result = 119;
      break;
    case 120:
      result = 120;
      break;
    case 121:
      result = 121;
      break;
    case 122:
      result = 122;
      break;
    case 123:
      result = 123;
      break;
    case 124:
      result = 124;
      break;
    case 125:
      result = 125;
      break;
    case 126:
      result = 126;
      break;
    case 127:
      result = 127;
      break;
    default:
      if ((v0 - 128) >= 0x21)
      {
        result = 4294967201;
      }

      else
      {
        result = v0;
      }

      break;
  }

  return result;
}

uint64_t sub_1009B1884(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 1684628325;
    v7 = 0x754E6C6169726573;
    v8 = 0x49746375646F7270;
    if (a1 != 3)
    {
      v8 = 0x6449726F646E6576;
    }

    if (a1 != 2)
    {
      v7 = v8;
    }

    if (a1)
    {
      v6 = 0x644970696863;
    }

    if (a1 <= 1u)
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
    v1 = 0x5364656573;
    v2 = 0x737574617473;
    if (a1 != 9)
    {
      v2 = 0x7374726563;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0x6F69737265567766;
    v4 = 0x727574616E676973;
    if (a1 != 6)
    {
      v4 = 0x4E6E6F6973736573;
    }

    if (a1 != 5)
    {
      v3 = v4;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1009B19E8(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_1016B0BE8, &unk_1013CF9B0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v23[-v8 - 8];
  v10 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_1009B1F84();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v25) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v13 = v3[2];
    v14 = v3[3];
    LOBYTE(v25) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v15 = v3[4];
    v16 = v3[5];
    LOBYTE(v25) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v17 = v3[6];
    LOBYTE(v25) = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    v18 = v3[7];
    LOBYTE(v25) = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    v19 = v3[8];
    v20 = v3[9];
    LOBYTE(v25) = 5;
    KeyedEncodingContainer.encode(_:forKey:)();
    v29 = *(v3 + 5);
    v25 = *(v3 + 5);
    v24 = 6;
    sub_1001022C4(&v29, v23);
    sub_1000E3190();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100016590(v25, *(&v25 + 1));
    v28 = *(v3 + 6);
    v25 = *(v3 + 6);
    v24 = 7;
    sub_1001022C4(&v28, v23);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100016590(v25, *(&v25 + 1));
    v27 = *(v3 + 7);
    v25 = *(v3 + 7);
    v24 = 8;
    sub_1001022C4(&v27, v23);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100016590(v25, *(&v25 + 1));
    v25 = *(v3 + 8);
    v26 = v25;
    v24 = 9;
    sub_1001022C4(&v26, v23);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100016590(v25, *(&v25 + 1));
    *&v25 = v3[18];
    v23[0] = 10;
    sub_1000BC4D4(&qword_101699EB8, &qword_101398AA0);
    sub_1002DE008();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1009B1DBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1009B20F0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1009B1DE4(uint64_t a1)
{
  v2 = sub_1009B1F84();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1009B1E20(uint64_t a1)
{
  v2 = sub_1009B1F84();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1009B1E5C(void *a1)
{
  v9 = v1[6];
  v10 = v1[7];
  v11 = v1[8];
  v12 = *(v1 + 18);
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1[5];
  v3 = *v1;
  v4 = v1[1];
  return sub_1009B19E8(a1);
}

uint64_t sub_1009B1EC8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 152))
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

uint64_t sub_1009B1F10(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
      *(result + 152) = 1;
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

    *(result + 152) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1009B1F84()
{
  result = qword_1016B0BF0;
  if (!qword_1016B0BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B0BF0);
  }

  return result;
}

unint64_t sub_1009B1FEC()
{
  result = qword_1016B0BF8;
  if (!qword_1016B0BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B0BF8);
  }

  return result;
}

unint64_t sub_1009B2044()
{
  result = qword_1016B0C00;
  if (!qword_1016B0C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B0C00);
  }

  return result;
}

unint64_t sub_1009B209C()
{
  result = qword_1016B0C08;
  if (!qword_1016B0C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B0C08);
  }

  return result;
}

uint64_t sub_1009B20F0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1684628325 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x644970696863 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x754E6C6169726573 && a2 == 0xEC0000007265626DLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x49746375646F7270 && a2 == 0xE900000000000064 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6449726F646E6576 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6F69737265567766 && a2 == 0xE90000000000006ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x727574616E676973 && a2 == 0xE900000000000065 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x4E6E6F6973736573 && a2 == 0xEC00000065636E6FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x5364656573 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x737574617473 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x7374726563 && a2 == 0xE500000000000000)
  {

    return 10;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 10;
    }

    else
    {
      return 11;
    }
  }
}

Swift::Int sub_1009B2468()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_1009B24DC()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1009B2530@<X0>(Swift::String *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_10160C6F8, *a1);

  *a2 = v3 != 0;
  return result;
}

id sub_1009B27FC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SecureLocationsTrampoline();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_1009B2878()
{
  v1 = *(v0 + 56);
  if (v1)
  {
    v2 = *(v0 + 56);
  }

  else
  {
    v3 = type metadata accessor for SecureLocationsService();
    v18[3] = v3;
    v18[4] = &off_101641638;
    v18[0] = v0;
    v4 = type metadata accessor for SecureLocationsTrampoline();
    v5 = objc_allocWithZone(v4);
    v6 = sub_10015049C(v18, v3);
    v7 = *(*(v3 - 8) + 64);
    __chkstk_darwin(v6);
    v9 = (&v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v10 + 16))(v9);
    v11 = *v9;
    v17[3] = v3;
    v17[4] = &off_101641638;
    v17[0] = v11;
    sub_10001F280(v17, v5 + OBJC_IVAR____TtC12searchpartyd25SecureLocationsTrampoline_implementation);
    v16.receiver = v5;
    v16.super_class = v4;

    v12 = objc_msgSendSuper2(&v16, "init");
    sub_100007BAC(v17);
    sub_100007BAC(v18);
    v13 = *(v0 + 56);
    *(v0 + 56) = v12;
    v2 = v12;

    v1 = 0;
  }

  v14 = v1;
  return v2;
}

void *sub_1009B29FC(uint64_t a1, uint64_t a2)
{
  v30 = a2;
  v31 = a1;
  v25 = type metadata accessor for OS_dispatch_queue.Attributes();
  v3 = *(*(v25 - 8) + 64);
  __chkstk_darwin(v25);
  v4 = type metadata accessor for DispatchQoS();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v28 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v6 = *(v28 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v28);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = v2;
  v2[2] = 0xD00000000000002DLL;
  v2[3] = 0x80000001013670A0;
  v24[2] = sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
  v24[3] = "ureLocationsTrampoline";
  v27 = enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:);
  v26 = *(v6 + 104);
  v26(v9);
  static DispatchQoS.unspecified.getter();
  v32 = _swiftEmptyArrayStorage;
  v24[1] = sub_100003F1C(&qword_10169BB60, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_1000BC4D4(&unk_101695580, &qword_101385D90);
  sub_100014084(&qword_10169BB70, &unk_101695580, &qword_101385D90);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v10 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v11 = v28;
  v12 = v29;
  v29[4] = v10;
  (v26)(v9, v27, v11);
  static DispatchQoS.unspecified.getter();
  v32 = _swiftEmptyArrayStorage;
  v13 = v30;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v14 = v31;
  v12[5] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v15 = type metadata accessor for XPCSessionManager();
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  v18 = v12;
  v12[6] = XPCSessionManager.init(name:)();
  v12[7] = 0;
  v12[8] = v14;
  v12[9] = v13;
  type metadata accessor for SecureLocationsKeyManager();
  swift_allocObject();
  swift_retain_n();

  v12[10] = sub_100B64B7C(v14);
  if (qword_101694E48 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  sub_1000076D4(v19, qword_10177BFF8);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&_mh_execute_header, v20, v21, "SecureLocationsService inited", v22, 2u);
  }

  return v18;
}

uint64_t sub_1009B2E78()
{
  v1 = v0;
  v2 = *v0;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v21 = *(v3 - 8);
  v4 = *(v21 + 64);
  __chkstk_darwin(v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for DispatchQoS();
  v7 = *(v20 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v20);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_101694E48 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_1000076D4(v11, qword_10177BFF8);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "Starting SecureLocations Service", v14, 2u);
  }

  v15 = v1[4];
  v16 = swift_allocObject();
  *(v16 + 16) = v1;
  *(v16 + 24) = v2;
  aBlock[4] = sub_1009B3518;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_1016416B0;
  v17 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v22 = _swiftEmptyArrayStorage;
  sub_100003F1C(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_100014084(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v17);
  (*(v21 + 8))(v6, v3);
  (*(v7 + 8))(v10, v20);
}

uint64_t sub_1009B3210(uint64_t a1)
{
  v2 = type metadata accessor for MachServiceName();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v4 = type metadata accessor for XPCServiceDescription();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MachServiceName.init(_:)();
  sub_1009B2878();
  if (qword_101694B08 != -1)
  {
    swift_once();
  }

  v9 = qword_1016B0C10;

  XPCServiceDescription.init(name:options:exportedObject:exportedInterface:shouldAccept:interruptionHandler:invalidationHandler:)();
  v10 = *(a1 + 48);
  XPCSessionManager.register(service:)();
  return (*(v5 + 8))(v8, v4);
}

void sub_1009B33DC()
{
  v0 = objc_opt_self();
  v1 = &OBJC_PROTOCOL___SPSecureLocationsXPCProtocol;
  v2 = [v0 interfaceWithProtocol:v1];

  qword_1016B0C10 = v2;
}

uint64_t sub_1009B3444()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);

  v3 = *(v0 + 64);

  v4 = *(v0 + 72);

  v5 = *(v0 + 80);

  return v0;
}

uint64_t sub_1009B349C()
{
  sub_1009B3444();

  return swift_deallocClassInstance();
}

unint64_t sub_1009B3558()
{
  result = qword_1016B0DF8;
  if (!qword_1016B0DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B0DF8);
  }

  return result;
}

uint64_t sub_1009B35AC(uint64_t a1, uint64_t a2)
{
  v45 = a2;
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  v5 = v4[8];
  __chkstk_darwin(v3);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v40 - v10;
  v12 = type metadata accessor for DirectorySequence();
  v41 = *(v12 - 8);
  v42 = v12;
  v13 = *(v41 + 64);
  __chkstk_darwin(v12);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a1 + 64);
  v46 = *(v16 + 168);
  v17 = qword_101694CD0;
  v44 = v16;

  if (v17 != -1)
  {
    swift_once();
  }

  v18 = sub_1000076D4(v3, qword_10177BC20);
  v48 = _swiftEmptyArrayStorage;
  v49 = _swiftEmptyArrayStorage;
  v19 = [objc_opt_self() defaultManager];
  v43 = v18;
  NSFileManager.deepSequence(at:includingPropertiesForKeys:options:)();

  v47 = v15;
  DirectorySequence.next()();
  v20 = v4[6];
  if (v20(v11, 1, v3) != 1)
  {
    v21 = v4 + 4;
    v22 = v4[4];
    v23 = (v21 - 3);
    do
    {
      v22(v7, v11, v3);
      v24 = objc_autoreleasePoolPush();
      sub_100604DCC(v7, v46, &v49, &v48);
      objc_autoreleasePoolPop(v24);
      (*v23)(v7, v3);
      DirectorySequence.next()();
    }

    while (v20(v11, 1, v3) != 1);
  }

  (*(v41 + 8))(v47, v42);
  static os_log_type_t.debug.getter();
  sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
  v25 = static OS_os_log.default.getter();
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_10138BBE0;
  v27 = v49;
  v28 = v49[2];
  *(v26 + 56) = &type metadata for Int;
  *(v26 + 64) = &protocol witness table for Int;
  *(v26 + 32) = v28;
  sub_100003F1C(&qword_1016B14E0, &type metadata accessor for URL);

  v29 = dispatch thunk of CustomStringConvertible.description.getter();
  v31 = v30;
  *(v26 + 96) = &type metadata for String;
  *(v26 + 104) = sub_100008C00();
  *(v26 + 72) = v29;
  *(v26 + 80) = v31;
  os_log(_:dso:log:_:_:)();

  v32 = type metadata accessor for PropertyListEncoder();
  v33 = *(v32 + 48);
  v34 = *(v32 + 52);
  swift_allocObject();
  PropertyListEncoder.init()();
  v49 = v27;
  sub_1000BC4D4(&qword_1016B0E08, &unk_1013CFBA0);
  sub_1009B3CD0();
  v35 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v37 = v36;

  sub_100017D5C(v35, v37);
  isa = Data._bridgeToObjectiveC()().super.isa;
  (*(v45 + 16))(v45, isa, 0);

  sub_100016590(v35, v37);
  sub_100016590(v35, v37);
}