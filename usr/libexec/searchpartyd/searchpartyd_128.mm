unint64_t sub_100D64EEC@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100D65C0C(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_100D64F1C@<X0>(unint64_t *a1@<X8>)
{
  result = sub_100D64960(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_100D64F64@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_100D65C0C(a1);
  *a2 = result;
  return result;
}

uint64_t sub_100D64F8C(uint64_t a1)
{
  v2 = sub_100D65990();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100D64FC8(uint64_t a1)
{
  v2 = sub_100D65990();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100D65004@<X0>(uint64_t a1@<X1>, char *a2@<X8>)
{
  v4 = sub_1000BC4D4(&unk_1016AF8C0, &unk_1013A07A0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v12 - v6;
  v8 = type metadata accessor for OwnedBeaconRecord();
  sub_100AC1584(a1 + *(v8 + 20), v7);
  v9 = type metadata accessor for BeaconProductInfoRecord();
  if ((*(*(v9 - 8) + 48))(v7, 1, v9) == 1)
  {
    result = sub_10000B3A8(v7, &unk_1016AF8C0, &unk_1013A07A0);
    v11 = 2;
  }

  else
  {
    v11 = v7[*(v9 + 20)];
    result = sub_100032704(v7, type metadata accessor for BeaconProductInfoRecord);
  }

  *a2 = v11;
  return result;
}

uint64_t sub_100D65130(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v70 - v11;
  v13 = sub_1000BC4D4(&qword_1016AF880, &unk_10138CE20);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = &v70 - v15;
  if ((_s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(*a1, *(a1 + 8), *a2, *(a2 + 8)) & 1) == 0)
  {
    goto LABEL_23;
  }

  v17 = type metadata accessor for OwnedBeaconRecord();
  v18 = v17[5];
  if ((static UUID.== infix(_:_:)() & 1) == 0 || (sub_1010DF484(a1 + v17[6], a2 + v17[6]) & 1) == 0)
  {
    goto LABEL_23;
  }

  v71 = v17;
  v19 = v17[7];
  v20 = *(v13 + 48);
  sub_1000D2A70(a1 + v19, v16, &qword_1016980D0, &unk_10138F3B0);
  sub_1000D2A70(a2 + v19, &v16[v20], &qword_1016980D0, &unk_10138F3B0);
  v21 = *(v5 + 48);
  if (v21(v16, 1, v4) == 1)
  {
    if (v21(&v16[v20], 1, v4) == 1)
    {
      sub_10000B3A8(v16, &qword_1016980D0, &unk_10138F3B0);
      goto LABEL_11;
    }

LABEL_9:
    sub_10000B3A8(v16, &qword_1016AF880, &unk_10138CE20);
    goto LABEL_23;
  }

  sub_1000D2A70(v16, v12, &qword_1016980D0, &unk_10138F3B0);
  if (v21(&v16[v20], 1, v4) == 1)
  {
    (*(v5 + 8))(v12, v4);
    goto LABEL_9;
  }

  (*(v5 + 32))(v8, &v16[v20], v4);
  sub_100D64C00(&qword_1016984A0, &type metadata accessor for UUID);
  v22 = dispatch thunk of static Equatable.== infix(_:_:)();
  v23 = *(v5 + 8);
  v23(v8, v4);
  v23(v12, v4);
  sub_10000B3A8(v16, &qword_1016980D0, &unk_10138F3B0);
  if ((v22 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_11:
  v24 = v71;
  v25 = v71[8];
  if ((static Date.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_23;
  }

  v26 = v24[9];
  v27 = *(a1 + v26);
  v28 = *(a1 + v26 + 8);
  v29 = (a2 + v26);
  v30 = *v29;
  v31 = v29[1];
  sub_100017D5C(v27, v28);
  sub_100017D5C(v30, v31);
  v32 = _s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(v27, v28, v30, v31);
  sub_100016590(v30, v31);
  sub_100016590(v27, v28);
  if ((v32 & 1) == 0)
  {
    goto LABEL_23;
  }

  v33 = v24[10];
  v35 = *(a1 + v33);
  v34 = *(a1 + v33 + 8);
  v36 = (a2 + v33);
  v38 = *v36;
  v37 = v36[1];
  if (v34 >> 60 == 15)
  {
    if (v37 >> 60 != 15)
    {
      goto LABEL_22;
    }

    sub_10002E98C(v35, v34);
    sub_10002E98C(v38, v37);
    sub_100006654(v35, v34);
  }

  else
  {
    if (v37 >> 60 == 15)
    {
      goto LABEL_22;
    }

    sub_10002E98C(v35, v34);
    sub_10002E98C(v38, v37);
    sub_10002E98C(v35, v34);
    sub_10002E98C(v38, v37);
    v39 = _s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(v35, v34, v38, v37);
    sub_100006654(v38, v37);
    sub_100006654(v35, v34);
    sub_100006654(v38, v37);
    sub_100006654(v35, v34);
    if ((v39 & 1) == 0)
    {
      goto LABEL_23;
    }
  }

  v40 = v24[11];
  v35 = *(a1 + v40);
  v34 = *(a1 + v40 + 8);
  v41 = (a2 + v40);
  v38 = *v41;
  v37 = v41[1];
  if (v34 >> 60 != 15)
  {
    if (v37 >> 60 != 15)
    {
      sub_10002E98C(v35, v34);
      sub_10002E98C(v38, v37);
      sub_10002E98C(v35, v34);
      sub_10002E98C(v38, v37);
      v44 = _s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(v35, v34, v38, v37);
      sub_100006654(v38, v37);
      sub_100006654(v35, v34);
      sub_100006654(v38, v37);
      sub_100006654(v35, v34);
      if ((v44 & 1) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_26;
    }

LABEL_22:
    sub_10002E98C(v35, v34);
    sub_10002E98C(v38, v37);
    sub_100006654(v35, v34);
    sub_100006654(v38, v37);
    goto LABEL_23;
  }

  if (v37 >> 60 != 15)
  {
    goto LABEL_22;
  }

  sub_10002E98C(v35, v34);
  sub_10002E98C(v38, v37);
  sub_100006654(v35, v34);
LABEL_26:
  v45 = v24[12];
  v46 = *(a1 + v45);
  v47 = *(a1 + v45 + 8);
  v48 = (a2 + v45);
  v49 = *v48;
  v50 = v48[1];
  sub_100017D5C(v46, v47);
  sub_100017D5C(v49, v50);
  v51 = _s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(v46, v47, v49, v50);
  sub_100016590(v49, v50);
  sub_100016590(v46, v47);
  if ((v51 & 1) == 0)
  {
    goto LABEL_23;
  }

  v52 = v24[13];
  v53 = *(a1 + v52);
  v54 = *(a1 + v52 + 8);
  v55 = (a2 + v52);
  v56 = *v55;
  v57 = v55[1];
  sub_100017D5C(v53, v54);
  sub_100017D5C(v56, v57);
  v58 = _s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(v53, v54, v56, v57);
  sub_100016590(v56, v57);
  sub_100016590(v53, v54);
  if ((v58 & 1) == 0)
  {
    goto LABEL_23;
  }

  v59 = v24[14];
  v60 = *(a1 + v59);
  v61 = *(a1 + v59 + 8);
  v62 = (a2 + v59);
  if ((v60 != *v62 || v61 != v62[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_23;
  }

  v63 = v24[15];
  v64 = *(a1 + v63);
  v65 = *(a1 + v63 + 8);
  v66 = (a2 + v63);
  if ((v64 != *v66 || v65 != v66[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_23;
  }

  if (*(a1 + v24[16]) != *(a2 + v24[16]) || *(a1 + v24[17]) != *(a2 + v24[17]))
  {
    goto LABEL_23;
  }

  v67 = v24[18];
  v68 = *(a1 + v67);
  v69 = *(a2 + v67);
  if (v68 == 3)
  {
    if (v69 != 3)
    {
      goto LABEL_23;
    }
  }

  else if (v68 != v69)
  {
    goto LABEL_23;
  }

  if (*(a1 + v71[19]) == *(a2 + v71[19]))
  {
    v42 = *(a1 + v71[20]) ^ *(a2 + v71[20]) ^ 1;
    return v42 & 1;
  }

LABEL_23:
  v42 = 0;
  return v42 & 1;
}

uint64_t sub_100D658B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100D6591C@<X0>(char *a1@<X8>)
{
  v3 = *(type metadata accessor for OwnedBeaconRecord() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_100D65004(v5, a1);
}

unint64_t sub_100D65990()
{
  result = qword_1016BB0B8;
  if (!qword_1016BB0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BB0B8);
  }

  return result;
}

unint64_t sub_100D659E4()
{
  result = qword_1016BB0E8;
  if (!qword_1016BB0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BB0E8);
  }

  return result;
}

unint64_t sub_100D65A38()
{
  result = qword_1016BB110;
  if (!qword_1016BB110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BB110);
  }

  return result;
}

unint64_t sub_100D65AB0()
{
  result = qword_1016BB118;
  if (!qword_1016BB118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BB118);
  }

  return result;
}

unint64_t sub_100D65B08()
{
  result = qword_1016BB120;
  if (!qword_1016BB120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BB120);
  }

  return result;
}

unint64_t sub_100D65B60()
{
  result = qword_1016BB128;
  if (!qword_1016BB128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BB128);
  }

  return result;
}

unint64_t sub_100D65BB8()
{
  result = qword_1016BB130;
  if (!qword_1016BB130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BB130);
  }

  return result;
}

unint64_t sub_100D65C0C(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10160AB98, v2);

  if (v3 >= 0x10)
  {
    return 16;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100D65C5C()
{
  result = Data.init(base64Encoded:options:)();
  qword_1016BB140 = result;
  qword_1016BB148 = v1;
  return result;
}

uint64_t sub_100D65C9C(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for HashAlgorithm();
  v85 = *(v4 - 1);
  v5 = *(v85 + 64);
  __chkstk_darwin(v4);
  v84 = &v81 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for String.Encoding();
  v88 = *(v7 - 8);
  v89 = v7;
  v8 = *(v88 + 64);
  __chkstk_darwin(v7);
  v87 = &v81 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1016950D0 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_1000076D4(v10, qword_10177C418);
  sub_10002E98C(a1, a2);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.info.getter();
  sub_100006654(a1, a2);
  if (os_log_type_enabled(v11, v12))
  {
    v90 = v4;
    v13 = v10;
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v92 = v15;
    *v14 = 136315138;
    if (a2 >> 60 == 15)
    {
      v16 = 0;
      v17 = 0xE000000000000000;
    }

    else
    {
      v16 = Data.hexString.getter();
      v17 = v18;
    }

    v19 = sub_1000136BC(v16, v17, &v92);

    *(v14 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v11, v12, " E1 encryption key from server: %s", v14, 0xCu);
    sub_100007BAC(v15);

    v10 = v13;
    v4 = v90;
  }

  else
  {
  }

  v90 = [objc_opt_self() defaultStore];
  if (v90)
  {
    v20 = a1;
    v21 = a2;
    if (a2 >> 60 == 15)
    {
      if (qword_101694E88 != -1)
      {
        swift_once();
      }

      v21 = qword_1016BB148;
      if (qword_1016BB148 >> 60 == 15)
      {
        if (qword_101694E98 != -1)
        {
          swift_once();
        }

        sub_1000076D4(v10, qword_10177C0A8);
        v22 = Logger.logObject.getter();
        v23 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v22, v23))
        {
          v24 = swift_slowAlloc();
          *v24 = 0;
          _os_log_impl(&_mh_execute_header, v22, v23, " Invalid server public key.", v24, 2u);
        }

        goto LABEL_44;
      }

      v20 = qword_1016BB140;
      sub_100017D5C(qword_1016BB140, qword_1016BB148);
    }

    sub_10002E98C(a1, a2);
    v25 = [v90 aa_primaryAppleAccount];
    v83 = v10;
    if (v25)
    {
      v26 = v25;
      v27 = [v25 aa_personID];
      if (v27)
      {
        v28 = v27;
        v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v31 = v30;

        if (qword_101694E98 != -1)
        {
          swift_once();
        }

        sub_1000076D4(v10, qword_10177C0A8);

        v32 = Logger.logObject.getter();
        v33 = static os_log_type_t.debug.getter();

        v34 = os_log_type_enabled(v32, v33);
        v82 = v29;
        if (v34)
        {
          v35 = swift_slowAlloc();
          v81 = v20;
          v36 = v35;
          v37 = swift_slowAlloc();
          v92 = v37;
          *v36 = 136315138;
          *(v36 + 4) = sub_1000136BC(v82, v31, &v92);
          _os_log_impl(&_mh_execute_header, v32, v33, "DSID: %s", v36, 0xCu);
          sub_100007BAC(v37);

          v20 = v81;
        }

        v38 = v87;
        static String.Encoding.utf8.getter();
        v39 = String.data(using:allowLossyConversion:)();
        v41 = v40;
        (*(v88 + 8))(v38, v89);
        if (v41 >> 60 == 15)
        {

          v42 = Logger.logObject.getter();
          v43 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v42, v43))
          {
            v44 = swift_slowAlloc();
            v45 = v20;
            v46 = swift_slowAlloc();
            v92 = v46;
            *v44 = 141558275;
            *(v44 + 4) = 1752392040;
            *(v44 + 12) = 2081;
            v47 = sub_1000136BC(v82, v31, &v92);

            *(v44 + 14) = v47;
            _os_log_impl(&_mh_execute_header, v42, v43, "Invalid DSID %{private,mask.hash}s", v44, 0x16u);
            sub_100007BAC(v46);

            v48 = v45;
LABEL_37:
            sub_100016590(v48, v21);
LABEL_43:

LABEL_44:
            return 0;
          }

          goto LABEL_42;
        }

        v63 = v84;
        v64 = v85;
        (*(v85 + 104))(v84, enum case for HashAlgorithm.sha256(_:), v4);
        v65 = Data.hash(algorithm:)();
        v67 = v70;

        v68 = v39;
        v69 = v41;
        goto LABEL_40;
      }
    }

    if (qword_101694E98 != -1)
    {
      swift_once();
    }

    sub_1000076D4(v10, qword_10177C0A8);
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&_mh_execute_header, v49, v50, "Failed to obtain DSID from account. Using device serial number instead to support account signed out.", v51, 2u);
    }

    v52 = v87;
    v53 = *(v86 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_serialNumber);
    v54 = *(v86 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_serialNumber + 8);
    static String.Encoding.utf8.getter();
    v55 = String.data(using:allowLossyConversion:)();
    v57 = v56;
    (*(v88 + 8))(v52, v89);
    if (v57 >> 60 == 15)
    {

      v42 = Logger.logObject.getter();
      v58 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v42, v58))
      {
        v59 = swift_slowAlloc();
        v60 = v20;
        v61 = swift_slowAlloc();
        v92 = v61;
        *v59 = 141558275;
        *(v59 + 4) = 1752392040;
        *(v59 + 12) = 2081;
        v62 = sub_1000136BC(v53, v54, &v92);

        *(v59 + 14) = v62;
        _os_log_impl(&_mh_execute_header, v42, v58, "Invalid serial number %{private,mask.hash}s", v59, 0x16u);
        sub_100007BAC(v61);

        v48 = v60;
        goto LABEL_37;
      }

LABEL_42:
      sub_100016590(v20, v21);

      goto LABEL_43;
    }

    v63 = v84;
    v64 = v85;
    (*(v85 + 104))(v84, enum case for HashAlgorithm.sha256(_:), v4);
    v65 = Data.hash(algorithm:)();
    v67 = v66;
    v68 = v55;
    v69 = v57;
LABEL_40:
    sub_100006654(v68, v69);
    (*(v64 + 8))(v63, v4);
    sub_100017D5C(v20, v21);
    v71 = sub_10049C290(v20, v21);
    v73 = v72;
    v74 = objc_autoreleasePoolPush();
    sub_100A79398(&v91, &v92);
    objc_autoreleasePoolPop(v74);
    sub_100495F0C(v92, v93, &v92);
    sub_100016590(v65, v67);
    sub_100016590(v20, v21);

    sub_100016590(v71, v73);
    v75 = v92;
    v76 = v93;
    v77 = v86;
    v78 = *(v86 + 40);
    v79 = *(v86 + 48);
    *(v86 + 40) = v92;
    *(v77 + 48) = v76;
    sub_100017D5C(v75, v76);
    sub_100006654(v78, v79);
    return v75;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void *sub_100D66838@<X0>(void *a1@<X8>)
{
  v3 = v1[6];
  if (v3 >> 60 == 15)
  {
    goto LABEL_10;
  }

  v4 = *(v1 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_authNonce + 8);
  if (v4 >> 60 == 15)
  {
    goto LABEL_10;
  }

  v5 = (v1 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessorySerialNumber);
  v6 = *(v1 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessorySerialNumber + 8);
  if (v6 >> 60 == 15)
  {
    goto LABEL_10;
  }

  v7 = (v1 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_alternateSerialNumber);
  v8 = *(v1 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_alternateSerialNumber + 8);
  if (v8 >> 60 == 15)
  {
    goto LABEL_10;
  }

  v9 = (v1 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryCerts);
  v10 = *(v1 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryCerts + 8);
  if (v10 >> 60 == 15)
  {
    goto LABEL_10;
  }

  v11 = (v1 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_csr);
  v12 = *(v1 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_csr + 8);
  if (v12 >> 60 == 15 || (v13 = (v1 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_seedK1), v14 = *(v1 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_seedK1 + 8), v14 >> 60 == 15) || (v15 = (v1 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_attestation), v16 = *(v1 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_attestation + 8), v16 >> 60 == 15) || (v17 = (v1 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessorySignature), v18 = *(v1 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessorySignature + 8), v18 >> 60 == 15))
  {
LABEL_10:
    if (qword_101694E98 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_1000076D4(v19, qword_10177C0A8);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "Missing pairing info to generate PencilPairingCheckData.", v22, 2u);
    }

    sub_100D67380(__src);
  }

  else
  {
    v65 = v1;
    v24 = v1[5];
    v25 = *(v1 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_authNonce);
    v26 = *v5;
    v70 = v14;
    v71 = v24;
    v75 = *v11;
    v76 = *v9;
    v73 = *v13;
    v74 = *v15;
    v68 = *v7;
    *&v69 = *v17;
    *(&v69 + 1) = v18;
    sub_10002E98C(v24, v3);
    v64 = v25;
    sub_10002E98C(v25, v4);
    v63 = v26;
    sub_10002E98C(v26, v6);
    sub_10002E98C(v68, v8);
    sub_10002E98C(v76, v10);
    sub_10002E98C(v75, v12);
    sub_10002E98C(v73, v70);
    sub_10002E98C(v74, v16);
    sub_10002E98C(v69, *(&v69 + 1));
    if (qword_101694E98 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    sub_1000076D4(v27, qword_10177C0A8);
    sub_10002E98C(v71, v3);
    sub_10002E98C(v76, v10);
    sub_10002E98C(v75, v12);
    sub_10002E98C(v73, v70);
    sub_10002E98C(v74, v16);
    oslog = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();
    sub_100006654(v71, v3);
    sub_100006654(v76, v10);
    sub_100006654(v75, v12);
    sub_100006654(v73, v70);
    sub_100006654(v74, v16);
    v62 = v28;
    v66 = v16;
    if (os_log_type_enabled(oslog, v28))
    {
      v29 = swift_slowAlloc();
      *&v77[0] = swift_slowAlloc();
      *v29 = 136316162;
      v30 = v29;
      *&__src[0] = v71;
      *(&__src[0] + 1) = v3;
      sub_100017D5C(v71, v3);
      v31 = String.init<A>(describing:)();
      v33 = sub_1000136BC(v31, v32, v77);

      *(v30 + 1) = v33;
      *(v30 + 6) = 2080;
      sub_100017D5C(v76, v10);
      v34 = Data.description.getter();
      v36 = v35;
      sub_100006654(v76, v10);
      v37 = sub_1000136BC(v34, v36, v77);

      *(v30 + 14) = v37;
      *(v30 + 11) = 2080;
      sub_100017D5C(v75, v12);
      v38 = Data.description.getter();
      v40 = v39;
      sub_100006654(v75, v12);
      v41 = sub_1000136BC(v38, v40, v77);

      *(v30 + 3) = v41;
      *(v30 + 16) = 2080;
      sub_100017D5C(v73, v70);
      v60 = Data.description.getter();
      v43 = v42;
      sub_100006654(v73, v70);
      v44 = sub_1000136BC(v60, v43, v77);

      *(v30 + 34) = v44;
      *(v30 + 21) = 2080;
      sub_100017D5C(v74, v66);
      v61 = Data.description.getter();
      v46 = v45;
      sub_100006654(v74, v66);
      v47 = sub_1000136BC(v61, v46, v77);

      *(v30 + 11) = v47;
      _os_log_impl(&_mh_execute_header, oslog, v62, "encryptedBlobE1: %s, accessoryCerts: %s, csr: %s seedK1: %s, accessoryAttestation: %s", v30, 0x34u);
      swift_arrayDestroy();

      v48 = v71;
      v49 = v65;
    }

    else
    {

      v49 = v65;
      v48 = v71;
    }

    v72 = *(v49 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_chipId);
    v50 = *(v49 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_serialNumber);
    v51 = *(v49 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_serialNumber + 8);
    v53 = v49[2];
    v52 = v49[3];
    v54 = v49[11];
    v55 = v49[12];
    v57 = v49[13];
    v56 = v49[14];
    v77[1] = *(v49 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_ecid);
    v77[2] = v72;
    v77[0] = xmmword_10138BBF0;
    *&v77[3] = v50;
    *(&v77[3] + 1) = v51;
    *&v77[4] = v64;
    *(&v77[4] + 1) = v4;
    *&v77[5] = v63;
    *(&v77[5] + 1) = v6;
    *&v77[6] = v68;
    *(&v77[6] + 1) = v8;
    *&v77[7] = 1;
    BYTE8(v77[7]) = 0;
    *&v77[8] = _swiftEmptyArrayStorage;
    *(&v77[8] + 1) = 0;
    *&v77[9] = v73;
    *(&v77[9] + 1) = v70;
    *&v77[10] = v76;
    *(&v77[10] + 1) = v10;
    *&v77[11] = v75;
    *(&v77[11] + 1) = v12;
    *&v77[12] = v74;
    *(&v77[12] + 1) = v66;
    v77[13] = v69;
    v77[14] = xmmword_10138BBF0;
    *&v77[15] = v53;
    *(&v77[15] + 1) = v52;
    v58 = v52;
    *&v77[16] = v48;
    *(&v77[16] + 1) = v3;
    *&v77[17] = v54;
    *(&v77[17] + 1) = v55;
    *&v77[18] = v57;
    *(&v77[18] + 1) = v56;
    v59 = v56;
    SharingCircleWildAdvertisementKey.init(key:)(v77);

    sub_100017D5C(v53, v58);

    sub_10002E98C(v57, v59);
    memcpy(__src, v77, sizeof(__src));
  }

  return memcpy(a1, __src, 0x130uLL);
}

__n128 sub_100D66FA0@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_attestation + 8);
  if (v3 >> 60 == 15 || (v4 = *(v1 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_authNonce + 8), v4 >> 60 == 15) || (v5 = *(v1 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessorySerialNumber + 8), v5 >> 60 == 15) || (v6 = *(v1 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_alternateSerialNumber + 8), v6 >> 60 == 15) || (v7 = *(v1 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_payloadSignatureS4 + 8), v7 >> 60 == 15) || (v8 = *(v1 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryCerts + 8), v8 >> 60 == 15) || (v9 = *(v1 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_csr + 8), v9 >> 60 == 15) || (v10 = *(v1 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_status + 8), v10 >> 60 == 15))
  {
    static os_log_type_t.error.getter();
    if (qword_1016950C8 != -1)
    {
      swift_once();
    }

    os_log(_:dso:log:_:_:)();
    sub_100D67350(&v51);
  }

  else
  {
    v18 = *(v1 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_attestation);
    v22 = *(v1 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_authNonce);
    v23 = *(v1 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessorySerialNumber);
    v24 = *(v1 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_payloadSignatureS4);
    v25 = *(v1 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_alternateSerialNumber);
    v27 = *(v1 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryCerts);
    v28 = *(v1 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_csr);
    v34 = *(v1 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_chipId);
    v26 = *(v1 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_status);
    v19 = *(v1 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_serialNumber);
    v35 = *(v1 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_serialNumber + 8);
    v29 = v1[3];
    v30 = v1[2];
    v20 = v1[11];
    v33 = v1[13];
    v31 = v1[12];
    v32 = v1[14];
    v36 = *(v1 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_ecid);
    v37 = v34;
    *&v38 = v19;
    *(&v38 + 1) = v35;
    v39.n128_u64[0] = v22;
    v39.n128_u64[1] = v4;
    *&v40 = v23;
    *(&v40 + 1) = v5;
    *&v41 = v25;
    *(&v41 + 1) = v6;
    *&v42 = v27;
    *(&v42 + 1) = v8;
    *&v43 = v28;
    *(&v43 + 1) = v9;
    *&v44 = v24;
    *(&v44 + 1) = v7;
    *&v45 = v18;
    *(&v45 + 1) = v3;
    v21 = v18;
    v46 = xmmword_10138BBF0;
    *&v47 = v30;
    *(&v47 + 1) = v29;
    *&v48 = v26;
    *(&v48 + 1) = v10;
    *&v49 = v20;
    *(&v49 + 1) = v31;
    *&v50 = v33;
    *(&v50 + 1) = v32;
    SharingCircleWildAdvertisementKey.init(key:)(&v36);
    sub_10002E98C(v21, v3);
    sub_10002E98C(v22, v4);
    sub_10002E98C(v23, v5);
    sub_10002E98C(v25, v6);
    sub_10002E98C(v24, v7);
    sub_10002E98C(v27, v8);
    sub_10002E98C(v28, v9);
    sub_10002E98C(v26, v10);

    sub_100017D5C(v30, v29);

    sub_10002E98C(v33, v32);
    v63 = v48;
    v64 = v49;
    v65 = v50;
    v59 = v44;
    v60 = v45;
    v61 = v46;
    v62 = v47;
    v55 = v40;
    v56 = v41;
    v57 = v42;
    v58 = v43;
    v51 = v36;
    v52 = v37;
    v53 = v38;
    v54 = v39;
  }

  v11 = v64;
  *(a1 + 192) = v63;
  *(a1 + 208) = v11;
  *(a1 + 224) = v65;
  v12 = v60;
  *(a1 + 128) = v59;
  *(a1 + 144) = v12;
  v13 = v62;
  *(a1 + 160) = v61;
  *(a1 + 176) = v13;
  v14 = v56;
  *(a1 + 64) = v55;
  *(a1 + 80) = v14;
  v15 = v58;
  *(a1 + 96) = v57;
  *(a1 + 112) = v15;
  v16 = v52;
  *a1 = v51;
  *(a1 + 16) = v16;
  result = v54;
  *(a1 + 32) = v53;
  *(a1 + 48) = result;
  return result;
}

double sub_100D67350(_OWORD *a1)
{
  result = 0.0;
  *a1 = xmmword_10139AE20;
  a1[1] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[11] = 0u;
  a1[12] = 0u;
  a1[13] = 0u;
  a1[14] = 0u;
  return result;
}

double sub_100D67380(_OWORD *a1)
{
  result = 0.0;
  a1[17] = 0u;
  a1[18] = 0u;
  a1[15] = 0u;
  a1[16] = 0u;
  a1[13] = 0u;
  a1[14] = 0u;
  a1[11] = 0u;
  a1[12] = 0u;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

void *sub_100D673B0(uint64_t a1, uint64_t a2)
{
  v16 = a1;
  v17 = a2;
  v3 = type metadata accessor for OS_dispatch_queue.Attributes();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v5 = type metadata accessor for DispatchQoS();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v7 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2[2] = 0xD000000000000025;
  v2[3] = 0x80000001013E8030;
  v15 = sub_1000BC488();
  (*(v8 + 104))(v11, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v7);
  static DispatchQoS.unspecified.getter();
  v18 = _swiftEmptyArrayStorage;
  sub_100D69E94(&qword_10169BB60, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_1000BC4D4(&unk_101695580, &qword_101385D90);
  sub_1000041A4(&qword_10169BB70, &unk_101695580, &qword_101385D90);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v12 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v2[7] = 0;
  v2[8] = 0;
  v13 = v17;
  v2[4] = v16;
  v2[5] = v13;
  v2[6] = v12;
  return v2;
}

uint64_t sub_100D67648(uint64_t a1)
{
  v2 = sub_1000BC4D4(&qword_1016B16B8, &qword_1013D0A98);
  v48 = *(v2 - 1);
  v49 = v2;
  v3 = *(v48 + 64);
  __chkstk_darwin(v2);
  v5 = v46 - v4;
  v56 = sub_1000BC4D4(&qword_1016BB2E0, &qword_1013E80E0);
  v54 = *(v56 - 8);
  v6 = *(v54 + 64);
  __chkstk_darwin(v56);
  v52 = v46 - v7;
  v57 = sub_1000BC4D4(&qword_1016BB2E8, &qword_1013E80E8);
  v55 = *(v57 - 8);
  v8 = *(v55 + 64);
  __chkstk_darwin(v57);
  v53 = v46 - v9;
  v10 = type metadata accessor for OwnedBeaconRecord();
  v47 = *(v10 - 8);
  v11 = *(v47 + 64);
  v12 = __chkstk_darwin(v10);
  v50 = v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = v13;
  __chkstk_darwin(v12);
  v15 = v46 - v14;
  if (qword_101694B70 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_1000076D4(v16, qword_10177B780);
  sub_100D69D20(a1, v15, type metadata accessor for OwnedBeaconRecord);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v59 = v20;
    *v19 = 136315138;
    v21 = *(v10 + 20);
    type metadata accessor for UUID();
    sub_100D69E94(&qword_101696930, &type metadata accessor for UUID);
    v22 = dispatch thunk of CustomStringConvertible.description.getter();
    v24 = v23;
    sub_100A51DCC(v15, type metadata accessor for OwnedBeaconRecord);
    v25 = sub_1000136BC(v22, v24, &v59);

    *(v19 + 4) = v25;
    _os_log_impl(&_mh_execute_header, v17, v18, "Handling freshly paired beacon: %s", v19, 0xCu);
    sub_100007BAC(v20);
  }

  else
  {

    sub_100A51DCC(v15, type metadata accessor for OwnedBeaconRecord);
  }

  v26 = v51;
  v27 = *(v51 + 32);
  sub_1000BC4D4(&unk_1016A9A10, &qword_1013A07C0);
  v28 = type metadata accessor for UUID();
  v29 = *(v28 - 8);
  v30 = *(v29 + 72);
  v31 = (*(v29 + 80) + 32) & ~*(v29 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_101385D80;
  v46[2] = v10;
  (*(v29 + 16))(v32 + v31, a1 + *(v10 + 20), v28);
  v33 = swift_allocObject();
  *(v33 + 16) = v27;
  *(v33 + 24) = v32;

  sub_1000BC4D4(&unk_1016B16A0, &unk_1013EE850);
  sub_1000041A4(&qword_1016B16D0, &unk_1016B16A0, &unk_1013EE850);
  Deferred.init(createPublisher:)();
  sub_1000041A4(&qword_1016B16D8, &qword_1016B16B8, &qword_1013D0A98);
  v34 = v49;
  v35 = Publisher.eraseToAnyPublisher()();
  v46[1] = v35;
  (*(v48 + 8))(v5, v34);
  v59 = v35;
  v49 = type metadata accessor for OwnedBeaconRecord;
  v36 = v50;
  sub_100D69D20(a1, v50, type metadata accessor for OwnedBeaconRecord);
  v37 = *(v47 + 80);
  v38 = swift_allocObject();
  *(v38 + 16) = v26;
  sub_100132D2C(v36, v38 + ((v37 + 24) & ~v37));

  static Subscribers.Demand.unlimited.getter();
  sub_1000BC4D4(&qword_1016BB2F0, &unk_1013E80F0);
  sub_1000BC4D4(&qword_1016B16E0, &qword_1013D0AB0);
  v51 = a1;
  sub_1000041A4(&qword_1016BB2F8, &qword_1016BB2F0, &unk_1013E80F0);
  sub_1000041A4(&qword_1016B16E8, &qword_1016B16E0, &qword_1013D0AB0);
  v39 = v52;
  Publisher<>.flatMap<A>(maxPublishers:_:)();

  sub_100D69D20(v51, v36, v49);
  v40 = swift_allocObject();
  sub_100132D2C(v36, v40 + ((v37 + 16) & ~v37));
  sub_1000041A4(&qword_1016BB300, &qword_1016BB2E0, &qword_1013E80E0);
  v41 = v53;
  v42 = v56;
  Publisher.map<A>(_:)();

  (*(v54 + 8))(v39, v42);
  sub_1000041A4(&qword_1016BB308, &qword_1016BB2E8, &qword_1013E80E8);
  v43 = v57;
  v44 = Publisher.eraseToAnyPublisher()();
  (*(v55 + 8))(v41, v43);
  return v44;
}

uint64_t sub_100D67EC8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v6 = sub_1000BC4D4(&qword_1016B16B8, &qword_1013D0A98);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v21 - v9;
  v11 = *(a1 + 32);
  sub_1000BC4D4(&unk_1016A9A10, &qword_1013A07C0);
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  v14 = *(v13 + 72);
  v15 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_101385D80;
  v17 = type metadata accessor for OwnedBeaconRecord();
  (*(v13 + 16))(v16 + v15, a2 + *(v17 + 20), v12);
  v18 = swift_allocObject();
  *(v18 + 16) = v11;
  *(v18 + 24) = v16;

  sub_1000BC4D4(&unk_1016B16A0, &unk_1013EE850);
  sub_1000041A4(&qword_1016B16D0, &unk_1016B16A0, &unk_1013EE850);
  Deferred.init(createPublisher:)();
  sub_1000041A4(&qword_1016B16D8, &qword_1016B16B8, &qword_1013D0A98);
  v19 = Publisher.eraseToAnyPublisher()();
  result = (*(v7 + 8))(v10, v6);
  *a3 = v19;
  return result;
}

uint64_t sub_100D68148()
{
  v1 = v0;
  v2 = sub_1000BC4D4(&unk_1016B0FE0, &unk_101391980);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v31 = &v29 - v4;
  v30 = sub_1000BC4D4(&qword_1016BB290, &qword_1013E80A8);
  v5 = *(v30 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v30);
  v8 = &v29 - v7;
  v9 = sub_1000BC4D4(&qword_1016BB298, &qword_1013E80B0);
  v10 = *(v9 - 8);
  v32 = v9;
  v33 = v10;
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v29 - v12;
  v14 = sub_1000BC4D4(&qword_1016BB2A0, &unk_1013E80B8);
  v15 = *(v14 - 8);
  v34 = v14;
  v35 = v15;
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v29 - v17;
  v36 = *(*(v0 + 40) + 24);

  sub_1000BC4D4(&qword_10169FBE8, &unk_1013A2760);
  type metadata accessor for OwnedBeaconRecord();
  sub_1000041A4(&qword_10169FBF0, &qword_10169FBE8, &unk_1013A2760);
  Publisher.compactMap<A>(_:)();

  static Subscribers.Demand.unlimited.getter();
  sub_1000BC4D4(&qword_1016BB2A8, &qword_1013E80C8);
  sub_1000041A4(&qword_1016BB2B0, &qword_1016BB290, &qword_1013E80A8);
  sub_1000041A4(&qword_1016BB2B8, &qword_1016BB2A8, &qword_1013E80C8);
  v19 = v30;
  Publisher<>.flatMap<A>(maxPublishers:_:)();

  (*(v5 + 8))(v8, v19);
  v36 = *(v0 + 48);
  v20 = v36;
  v21 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v22 = v31;
  (*(*(v21 - 8) + 56))(v31, 1, 1, v21);
  sub_1000BC488();
  sub_1000041A4(&qword_1016BB2C0, &qword_1016BB298, &qword_1013E80B0);
  sub_100D69E94(&qword_1016AF9C0, sub_1000BC488);
  v23 = v20;
  v24 = v32;
  Publisher.subscribe<A>(on:options:)();
  sub_10000B3A8(v22, &unk_1016B0FE0, &unk_101391980);

  (*(v33 + 8))(v13, v24);
  sub_1000041A4(&qword_1016BB2C8, &qword_1016BB2A0, &unk_1013E80B8);
  v25 = v34;
  v26 = Publisher<>.sink(receiveValue:)();
  (*(v35 + 8))(v18, v25);
  v27 = *(v1 + 56);
  *(v1 + 56) = v26;
}

uint64_t sub_100D68694@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for PairingEvent();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100D69D20(a1, v7, type metadata accessor for PairingEvent);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = type metadata accessor for OwnedBeaconRecord();
    (*(*(v8 - 8) + 56))(a2, 1, 1, v8);
    return sub_100A51DCC(v7, type metadata accessor for PairingEvent);
  }

  else
  {
    sub_100132D2C(v7, a2);
    v10 = type metadata accessor for OwnedBeaconRecord();
    return (*(*(v10 - 8) + 56))(a2, 0, 1, v10);
  }
}

uint64_t sub_100D687F0()
{
  type metadata accessor for Transaction();
  sub_1000BC4D4(&qword_1016BB2A8, &qword_1013E80C8);
  return static Transaction.named<A>(_:with:)();
}

uint64_t sub_100D68888(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100D67648(a3);

  sub_1000BC4D4(&qword_1016BB2D0, &unk_1013E80D0);
  sub_1000041A4(&qword_1016BB2D8, &qword_1016BB2D0, &unk_1013E80D0);
  Publisher.handleEvents(receiveSubscription:receiveOutput:receiveCompletion:receiveCancel:receiveRequest:)();
}

void sub_100D6898C(uint64_t a1)
{
  v2 = type metadata accessor for OwnedBeaconRecord();
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v34 - v7;
  v9 = sub_1000BC4D4(&qword_1016BB288, &unk_1013E8098);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = (&v34 - v11);
  sub_100D69C88(a1, &v34 - v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = *v12;
    if (qword_101694B70 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_1000076D4(v14, qword_10177B780);
    v15 = v13;
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v34 = v15;
      v35 = v19;
      *v18 = 136315138;
      type metadata accessor for SPSeparationMonitoringError(0);
      v20 = v15;
      v21 = String.init<A>(describing:)();
      v23 = sub_1000136BC(v21, v22, &v35);

      *(v18 + 4) = v23;
      _os_log_impl(&_mh_execute_header, v16, v17, "Failed to automatically enroll beacon due to: %s", v18, 0xCu);
      sub_100007BAC(v19);
    }

    else
    {
    }
  }

  else
  {
    sub_100132D2C(v12, v8);
    if (qword_101694B70 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_1000076D4(v24, qword_10177B780);
    sub_100D69D20(v8, v6, type metadata accessor for OwnedBeaconRecord);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v35 = v28;
      *v27 = 136315138;
      v29 = *(v2 + 20);
      type metadata accessor for UUID();
      sub_100D69E94(&qword_101696930, &type metadata accessor for UUID);
      v30 = dispatch thunk of CustomStringConvertible.description.getter();
      v32 = v31;
      sub_100A51DCC(v6, type metadata accessor for OwnedBeaconRecord);
      v33 = sub_1000136BC(v30, v32, &v35);

      *(v27 + 4) = v33;
      _os_log_impl(&_mh_execute_header, v25, v26, "Successfully enrolled beacon %s", v27, 0xCu);
      sub_100007BAC(v28);
    }

    else
    {

      sub_100A51DCC(v6, type metadata accessor for OwnedBeaconRecord);
    }

    sub_100A51DCC(v8, type metadata accessor for OwnedBeaconRecord);
  }
}

void sub_100D68DE8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OwnedBeaconRecord();
  v76 = *(v4 - 8);
  v77 = v4;
  v5 = *(v76 + 64);
  v6 = __chkstk_darwin(v4);
  v79 = &v66[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __chkstk_darwin(v6);
  v70 = &v66[-v9];
  v10 = __chkstk_darwin(v8);
  v75 = &v66[-v11];
  v71 = v12;
  __chkstk_darwin(v10);
  v14 = &v66[-v13];
  v15 = type metadata accessor for SystemVersionNumber();
  v16 = *(v15 - 8);
  v17 = v16[8];
  v18 = __chkstk_darwin(v15);
  v72 = &v66[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = __chkstk_darwin(v18);
  v22 = &v66[-v21];
  __chkstk_darwin(v20);
  v24 = &v66[-v23];
  if (qword_101694B70 != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  v26 = sub_1000076D4(v25, qword_10177B780);
  v27 = v16[2];
  v27(v24, a1, v15);
  v27(v22, a2, v15);
  v78 = v26;
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.default.getter();
  v30 = os_log_type_enabled(v28, v29);
  v73 = v16;
  v74 = a1;
  if (v30)
  {
    v31 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    v81[0] = v68;
    *v31 = 136315394;
    sub_100D69E94(&qword_1016A4928, &type metadata accessor for SystemVersionNumber);
    v69 = v14;
    v67 = v29;
    v32 = dispatch thunk of CustomStringConvertible.description.getter();
    v34 = v33;
    v35 = v16[1];
    v35(v24, v15);
    v36 = sub_1000136BC(v32, v34, v81);

    *(v31 + 4) = v36;
    *(v31 + 12) = 2080;
    v14 = v69;
    v37 = dispatch thunk of CustomStringConvertible.description.getter();
    v39 = v38;
    v35(v22, v15);
    v40 = v35;
    v41 = sub_1000136BC(v37, v39, v81);

    *(v31 + 14) = v41;
    _os_log_impl(&_mh_execute_header, v28, v67, "Handling local beacon migration from: %s to: %s", v31, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v40 = v16[1];
    v40(v22, v15);
    v40(v24, v15);
  }

  v42 = v80;
  v43 = *(v80 + 32);
  v44 = sub_100AA5C88();
  if (v44[2])
  {
    v45 = v75;
    v46 = *(v76 + 80);
    sub_100D69D20(v44 + ((v46 + 32) & ~v46), v75, type metadata accessor for OwnedBeaconRecord);

    sub_100132D2C(v45, v14);
    v47 = sub_1006FD6D0(v14, v43);
    v48 = sub_10111F67C(8, v47);

    v49 = &v14[*(v77 + 56)];
    v50 = *v49;
    v51 = v49[1];

    LOBYTE(v50) = sub_10013B9D8();

    if (v50 > 4u)
    {
      if (v48)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v55 = v72;
      SystemVersionNumber.init(stringLiteral:)();
      sub_100D69E94(&qword_101697BD0, &type metadata accessor for SystemVersionNumber);
      v56 = dispatch thunk of static Comparable.< infix(_:_:)();
      v40(v55, v15);
      if (v48 & v56)
      {
LABEL_13:
        v57 = v70;
        sub_100D69D20(v14, v70, type metadata accessor for OwnedBeaconRecord);
        sub_100D69D20(v57, v79, type metadata accessor for OwnedBeaconRecord);
        v58 = swift_allocObject();
        *(v58 + 16) = v42;
        sub_100132D2C(v57, v58 + ((v46 + 24) & ~v46));
        v59 = *(v43 + 184);
        swift_retain_n();
        sub_1000BC4D4(&unk_1016B14B0, &qword_1013A08F0);
        type metadata accessor for CloudKitCoordinator();
        OSAllocatedUnfairLock.callAsFunction<A>(_:)();
        v60 = v81[0];
        if (qword_101694FA8 != -1)
        {
          swift_once();
        }

        v81[0] = 0x7365547265646E75;
        v81[1] = 0xE900000000000074;
        SynchronousCache.cachedValue<A>(key:computeBlock:)();
        if (v82 == 1)
        {
          sub_100D69704(v42, v79);
        }

        else
        {
          v61 = type metadata accessor for Transaction();
          __chkstk_darwin(v61);
          *&v66[-32] = v60;
          *&v66[-24] = sub_100D69C24;
          *&v66[-16] = v58;
          static Transaction.named<A>(_:with:)();
        }

        sub_100A51DCC(v79, type metadata accessor for OwnedBeaconRecord);
        v62 = v14;
LABEL_23:
        sub_100A51DCC(v62, type metadata accessor for OwnedBeaconRecord);
        return;
      }
    }

    v63 = Logger.logObject.getter();
    v64 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      *v65 = 0;
      _os_log_impl(&_mh_execute_header, v63, v64, "Separation Monitoring migration not needed or not possible.", v65, 2u);
    }

    v62 = v14;
    goto LABEL_23;
  }

  v52 = Logger.logObject.getter();
  v53 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    *v54 = 0;
    _os_log_impl(&_mh_execute_header, v52, v53, "Local beacon not found, can't migrate", v54, 2u);
  }
}

uint64_t sub_100D69704(uint64_t a1, uint64_t a2)
{
  if (qword_101694B70 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000076D4(v4, qword_10177B780);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Will attempt to automatically enroll local beacon after migration", v7, 2u);
  }

  sub_100D67648(a2);
  sub_1000BC4D4(&qword_1016BB278, &qword_1013E8090);
  sub_1000041A4(&qword_1016BB280, &qword_1016BB278, &qword_1013E8090);
  v8 = Publisher<>.sink(receiveValue:)();

  v9 = *(a1 + 64);
  *(a1 + 64) = v8;
}

void sub_100D69890(uint64_t a1)
{
  v2 = sub_1000BC4D4(&qword_1016BB288, &unk_1013E8098);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v5 = (&v21 - v4);
  sub_100D69C88(a1, &v21 - v4);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = *v5;
    if (qword_101694B70 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_1000076D4(v7, qword_10177B780);
    v8 = v6;
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v21 = v8;
      v22 = v12;
      *v11 = 136315138;
      type metadata accessor for SPSeparationMonitoringError(0);
      v13 = v8;
      v14 = String.init<A>(describing:)();
      v16 = sub_1000136BC(v14, v15, &v22);

      *(v11 + 4) = v16;
      _os_log_impl(&_mh_execute_header, v9, v10, "Failed to automatically enroll beacon due to: %s", v11, 0xCu);
      sub_100007BAC(v12);
    }

    else
    {
    }
  }

  else
  {
    if (qword_101694B70 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_1000076D4(v17, qword_10177B780);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "Separation Monitoring auto-enrollment completed succesfully for local beacon.", v20, 2u);
    }

    sub_10000B3A8(v5, &qword_1016BB288, &unk_1013E8098);
  }
}

uint64_t sub_100D69B58()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  v4 = *(v0 + 56);

  v5 = *(v0 + 64);

  return swift_deallocClassInstance();
}

uint64_t sub_100D69C24()
{
  v1 = *(type metadata accessor for OwnedBeaconRecord() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_100D69704(v2, v3);
}

uint64_t sub_100D69C88(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_1016BB288, &unk_1013E8098);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100D69D20(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100D69D90@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(type metadata accessor for OwnedBeaconRecord() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_100D67EC8(v4, v5, a1);
}

uint64_t sub_100D69E94(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_100D69EDC(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v59 = a2;
  v4 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v51 - v9;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v16 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v60 = &v51 - v17;
  if (CKRecord.recordType.getter() == 0xD000000000000013 && 0x80000001013E8170 == v18)
  {
  }

  else
  {
    v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v19 & 1) == 0)
    {
      sub_100D6C4B0();
      swift_allocError();
      *v28 = 0;
      goto LABEL_13;
    }
  }

  v57 = v2;
  v58 = v16;
  v20 = [a1 recordID];
  v21 = [v20 recordName];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  UUID.init(uuidString:)();

  v22 = *(v12 + 48);
  if (v22(v10, 1, v11) == 1)
  {
    sub_1002EA198(v10);
    sub_100D6C4B0();
    swift_allocError();
    *v23 = 1;
LABEL_13:
    swift_willThrow();

    return;
  }

  v55 = *(v12 + 32);
  v56 = v12 + 32;
  v55(v60, v10, v11);
  v24 = [a1 encryptedValues];
  v25 = String._bridgeToObjectiveC()();
  v26 = [v24 objectForKeyedSubscript:v25];

  if (!v26 || (v63 = v26, sub_1000BC4D4(&unk_101698140, &unk_10138ED80), (swift_dynamicCast() & 1) == 0))
  {
LABEL_11:
    sub_100D6C4B0();
    swift_allocError();
    *v27 = 2;
    swift_willThrow();
    swift_unknownObjectRelease();

    (*(v12 + 8))(v60, v11);
    return;
  }

  UUID.init(uuidString:)();

  if (v22(v8, 1, v11) == 1)
  {
    sub_1002EA198(v8);
    goto LABEL_11;
  }

  v55(v58, v8, v11);
  v29 = String._bridgeToObjectiveC()();
  v30 = [v24 objectForKeyedSubscript:v29];

  if (v30 && (v63 = v30, (swift_dynamicCast() & 1) != 0))
  {
    v31 = v62;
    v54 = v61;
    v32 = String._bridgeToObjectiveC()();
    v33 = [v24 objectForKeyedSubscript:v32];

    v34 = v58;
    if (v33)
    {
      v63 = v33;
      if (swift_dynamicCast())
      {
        v52 = v62;
        v53 = v61;
        v51 = objc_autoreleasePoolPush();
        v35 = v34;
        v36 = [objc_allocWithZone(NSKeyedArchiver) initRequiringSecureCoding:1];
        [a1 encodeSystemFieldsWithCoder:v36];
        [v36 finishEncoding];
        v37 = [v36 encodedData];
        v38 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v40 = v39;

        objc_autoreleasePoolPop(v51);
        swift_unknownObjectRelease();

        v41 = v59;
        *v59 = v38;
        v41[1] = v40;
        v42 = type metadata accessor for SharingCircleSecret();
        v43 = v55;
        v55(v41 + v42[5], v60, v11);
        v43(v41 + v42[6], v35, v11);
        v44 = (v41 + v42[8]);
        v45 = v53;
        *v44 = v54;
        v44[1] = v31;
        v46 = (v41 + v42[7]);
        v47 = v52;
        *v46 = v45;
        v46[1] = v47;
        return;
      }
    }

    sub_100D6C4B0();
    swift_allocError();
    *v50 = 5;
    swift_willThrow();
    sub_100016590(v54, v31);
    swift_unknownObjectRelease();

    v49 = *(v12 + 8);
    v49(v34, v11);
  }

  else
  {
    sub_100D6C4B0();
    swift_allocError();
    *v48 = 4;
    swift_willThrow();
    swift_unknownObjectRelease();

    v49 = *(v12 + 8);
    v49(v58, v11);
  }

  v49(v60, v11);
}

uint64_t sub_100D6A5C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v56 = a3;
  v55 = a2;
  v4 = type metadata accessor for UUID();
  v53 = *(v4 - 8);
  v5 = v53;
  v6 = *(v53 + 64);
  v7 = __chkstk_darwin(v4);
  v58 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v57 = &v47 - v9;
  v48 = type metadata accessor for SharingCircleSecretValue();
  v10 = *(*(v48 - 8) + 64);
  v11 = __chkstk_darwin(v48);
  v52 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v47 - v13;
  v15 = type metadata accessor for P256.Signing.PrivateKey();
  v16 = *(v15 - 8);
  v17 = v16[8];
  v18 = __chkstk_darwin(v15);
  v20 = &v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v47 - v21;
  v54 = &v47 - v21;
  P256.Signing.PrivateKey.init(compactRepresentable:)();
  v23 = *(v5 + 16);
  v23(v14, a1, v4);
  v24 = v16[2];
  v50 = v15;
  v24(v20, v22, v15);
  v25 = P256.Signing.PrivateKey.rawRepresentation.getter();
  v27 = v26;
  v28 = v16[1];
  v49 = v16 + 1;
  v51 = v28;
  v28(v20, v15);
  v29 = &v14[*(type metadata accessor for KeyDropJoinToken(0) + 20)];
  *v29 = v25;
  v29[1] = v27;
  v47 = v14;
  swift_storeEnumTagMultiPayload();
  v30 = v57;
  UUID.init()();
  v31 = v58;
  v23(v58, v55, v4);
  v32 = v14;
  v33 = v52;
  sub_100D6C630(v32, v52, type metadata accessor for SharingCircleSecretValue);
  v34 = v56;
  *v56 = xmmword_10138C660;
  v35 = type metadata accessor for SharingCircleSecret();
  v23(&v34[v35[5]], v30, v4);
  v36 = v34;
  v23(&v34[v35[6]], v31, v4);
  v37 = sub_101315BA4();
  v38 = &v34[v35[8]];
  *v38 = v37;
  v38[1] = v39;
  v40 = v33;
  v41 = sub_101315964();
  v43 = v42;
  sub_100D6C698(v40, type metadata accessor for SharingCircleSecretValue);
  v44 = *(v53 + 8);
  v44(v58, v4);
  v44(v57, v4);
  sub_100D6C698(v47, type metadata accessor for SharingCircleSecretValue);
  result = v51(v54, v50);
  v46 = (v36 + v35[7]);
  *v46 = v41;
  v46[1] = v43;
  return result;
}

uint64_t sub_100D6A9DC@<X0>(uint64_t (*a1)()@<X0>, int a2@<W1>, char *a3@<X8>)
{
  v44 = a2;
  v45 = a3;
  v46 = a1;
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = v4;
  v42 = v3;
  v43 = v4;
  v6 = *(v4 + 64);
  v7 = __chkstk_darwin(v3);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v37 - v10;
  v12 = type metadata accessor for SharingCircleSecretValue();
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = (&v37 - v17);
  sub_1005CAD68(v47);
  v19 = v47[0];
  v20 = v47[1];
  *v18 = v47[0];
  v18[1] = v20;
  v40 = v20;
  v41 = v19;
  swift_storeEnumTagMultiPayload();
  sub_100017D5C(v19, v20);
  v39 = v11;
  UUID.init()();
  v21 = *(v5 + 16);
  v38 = v9;
  v22 = v42;
  v21(v9, v46, v42);
  v46 = type metadata accessor for SharingCircleSecretValue;
  sub_100D6C630(v18, v16, type metadata accessor for SharingCircleSecretValue);
  v23 = v45;
  *v45 = xmmword_10138C660;
  v24 = type metadata accessor for SharingCircleSecret();
  v21(&v23[v24[5]], v11, v22);
  v25 = v9;
  v26 = v22;
  v21(&v23[v24[6]], v25, v22);
  v27 = sub_101315BA4();
  v28 = &v23[v24[8]];
  *v28 = v27;
  v28[1] = v29;
  v30 = sub_101315964();
  v32 = v31;
  sub_100016590(v41, v40);
  v33 = v46;
  sub_100D6C698(v16, v46);
  v34 = *(v43 + 8);
  v34(v38, v26);
  v34(v39, v26);
  result = sub_100D6C698(v18, v33);
  v36 = &v23[v24[7]];
  *v36 = v30;
  v36[1] = v32;
  return result;
}

uint64_t sub_100D6ACB0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v42 = a1;
  v43 = a2;
  v41 = type metadata accessor for UUID();
  v35 = *(v41 - 8);
  v2 = v35;
  v3 = *(v35 + 64);
  v4 = __chkstk_darwin(v41);
  v37 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = &v34 - v6;
  v8 = type metadata accessor for SharingCircleSecretValue();
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v34 - v13;
  v15 = type metadata accessor for SymmetricKey256();
  v16 = *(v15 - 8);
  v17 = v16;
  v39 = v15;
  v40 = v16;
  v18 = *(v16 + 64);
  __chkstk_darwin(v15);
  v20 = &v34 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = v20;
  static SymmetricKey256.random()();
  (*(v17 + 16))(v14, v20, v15);
  v36 = v14;
  swift_storeEnumTagMultiPayload();
  UUID.init()();
  v21 = *(v2 + 16);
  v22 = v37;
  v23 = v41;
  v21(v37, v42, v41);
  sub_100D6C630(v14, v12, type metadata accessor for SharingCircleSecretValue);
  v24 = v43;
  *v43 = xmmword_10138C660;
  v25 = type metadata accessor for SharingCircleSecret();
  v21(&v24[v25[5]], v7, v23);
  v21(&v24[v25[6]], v22, v23);
  v26 = sub_101315BA4();
  v27 = &v24[v25[8]];
  *v27 = v26;
  v27[1] = v28;
  v42 = sub_101315964();
  v30 = v29;
  sub_100D6C698(v12, type metadata accessor for SharingCircleSecretValue);
  v31 = *(v35 + 8);
  v31(v22, v23);
  v31(v7, v23);
  sub_100D6C698(v36, type metadata accessor for SharingCircleSecretValue);
  result = (*(v40 + 8))(v38, v39);
  v33 = &v24[v25[7]];
  *v33 = v42;
  v33[1] = v30;
  return result;
}

uint64_t sub_100D6B014@<X0>(uint64_t (*a1)()@<X0>, char *a2@<X8>)
{
  v34 = a1;
  v39 = a2;
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = v4[8];
  v6 = __chkstk_darwin(v3);
  v8 = (v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v6);
  v10 = (v32 - v9);
  v11 = type metadata accessor for SharingCircleSecretValue();
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11);
  v15 = v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = (v32 - v16);
  result = sub_100A7F75C(v36);
  if (!v2)
  {
    v38 = v37;
    *v17 = v37;
    v32[1] = 0;
    swift_storeEnumTagMultiPayload();
    sub_10012C038(&v38, v35);
    UUID.init()();
    v19 = v39;
    v20 = v4[2];
    v33 = v8;
    v20(v8, v34, v3);
    v34 = type metadata accessor for SharingCircleSecretValue;
    sub_100D6C630(v17, v15, type metadata accessor for SharingCircleSecretValue);
    *v19 = xmmword_10138C660;
    v21 = type metadata accessor for SharingCircleSecret();
    v20(&v19[v21[5]], v10, v3);
    v20(&v19[v21[6]], v33, v3);
    v22 = sub_101315BA4();
    v23 = &v19[v21[8]];
    *v23 = v22;
    v23[1] = v24;
    v25 = sub_101315964();
    v32[0] = v26;
    sub_100A80F28(v36);
    v27 = v15;
    v28 = v34;
    sub_100D6C698(v27, v34);
    v29 = v4[1];
    v29(v33, v3);
    v29(v10, v3);
    result = sub_100D6C698(v17, v28);
    v30 = v32[0];
    v31 = &v19[v21[7]];
    *v31 = v25;
    v31[1] = v30;
  }

  return result;
}

unint64_t sub_100D6B2CC()
{
  v1 = *v0;
  v2 = 0x696669746E656469;
  v3 = 0xD000000000000017;
  v4 = 0x7954746572636573;
  if (v1 != 3)
  {
    v4 = 0x6144746572636573;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000010;
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

uint64_t sub_100D6B384@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100D6C970(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100D6B3AC(uint64_t a1)
{
  v2 = sub_100D6C504();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100D6B3E8(uint64_t a1)
{
  v2 = sub_100D6C504();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_100D6B428(int *a1)
{
  v3 = v1;
  Hasher.init(_seed:)();
  v4 = *v1;
  v5 = v1[1];
  Data.hash(into:)();
  v6 = a1[5];
  type metadata accessor for UUID();
  sub_100D6CB3C(&qword_1016967B0, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  v7 = v3 + a1[6];
  dispatch thunk of Hashable.hash(into:)();
  v8 = (v3 + a1[7]);
  v9 = *v8;
  v10 = v8[1];
  String.hash(into:)();
  v11 = (v3 + a1[8]);
  v12 = *v11;
  v13 = v11[1];
  Data.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100D6B520(uint64_t a1, int *a2)
{
  v4 = v2;
  v5 = *v2;
  v6 = v2[1];
  Data.hash(into:)();
  v7 = a2[5];
  type metadata accessor for UUID();
  sub_100D6CB3C(&qword_1016967B0, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  v8 = v4 + a2[6];
  dispatch thunk of Hashable.hash(into:)();
  v9 = (v4 + a2[7]);
  v10 = *v9;
  v11 = v9[1];
  String.hash(into:)();
  v12 = (v4 + a2[8]);
  v13 = *v12;
  v14 = v12[1];

  return Data.hash(into:)();
}

Swift::Int sub_100D6B608(uint64_t a1, int *a2)
{
  v4 = v2;
  Hasher.init(_seed:)();
  v5 = *v2;
  v6 = v2[1];
  Data.hash(into:)();
  v7 = a2[5];
  type metadata accessor for UUID();
  sub_100D6CB3C(&qword_1016967B0, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  v8 = v4 + a2[6];
  dispatch thunk of Hashable.hash(into:)();
  v9 = (v4 + a2[7]);
  v10 = *v9;
  v11 = v9[1];
  String.hash(into:)();
  v12 = (v4 + a2[8]);
  v13 = *v12;
  v14 = v12[1];
  Data.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100D6B6FC()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100044B3C(v3, qword_10177C090);
  sub_1000076D4(v0, qword_10177C090);
  if (qword_101694C10 != -1)
  {
    swift_once();
  }

  v6 = sub_1000076D4(v0, qword_10177BA58);
  (*(v1 + 16))(v5, v6, v0);
  URL.appendingPathComponent(_:isDirectory:)();
  return (*(v1 + 8))(v5, v0);
}

uint64_t sub_100D6B858(id *a1)
{
  v2 = v1;
  v3 = *a1;
  [*a1 encryptedValues];
  swift_getObjectType();
  static os_log_type_t.debug.getter();
  if (qword_101695040 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_101385D80;
  v5 = v3;
  v6 = [v5 description];
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  *(v4 + 56) = &type metadata for String;
  *(v4 + 64) = sub_100008C00();
  *(v4 + 32) = v7;
  *(v4 + 40) = v9;
  os_log(_:dso:log:_:_:)();

  v10 = type metadata accessor for SharingCircleSecret();
  v11 = v1 + v10[6];
  UUID.uuidString.getter();
  CKRecordKeyValueSetting.subscript.setter();
  sub_100017D5C(*(v2 + v10[8]), *(v2 + v10[8] + 8));
  CKRecordKeyValueSetting.subscript.setter();
  v12 = (v2 + v10[7]);
  v14 = *v12;
  v15 = v12[1];

  CKRecordKeyValueSetting.subscript.setter();

  return swift_unknownObjectRelease();
}

uint64_t sub_100D6BAA4(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_1016BB340, &qword_1013E81B8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v20 - v8;
  v10 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_100D6C504();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = v3[1];
  v22 = *v3;
  v23 = v11;
  v24 = 0;
  sub_100017D5C(v22, v11);
  sub_1000E3190();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    sub_100016590(v22, v23);
    v21 = type metadata accessor for SharingCircleSecret();
    v12 = v21[5];
    LOBYTE(v22) = 1;
    type metadata accessor for UUID();
    sub_100D6CB3C(&qword_101698330, &type metadata accessor for UUID);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v13 = v21[6];
    LOBYTE(v22) = 2;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v14 = (v3 + v21[7]);
    v15 = *v14;
    v16 = v14[1];
    LOBYTE(v22) = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    v18 = (v3 + v21[8]);
    v19 = v18[1];
    v22 = *v18;
    v23 = v19;
    v24 = 4;
    sub_100017D5C(v22, v19);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  sub_100016590(v22, v23);
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_100D6BD5C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v39 = v3;
  v40 = v4;
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v33 - v9;
  v11 = sub_1000BC4D4(&qword_1016BB330, &qword_1013E81B0);
  v41 = *(v11 - 8);
  v42 = v11;
  v12 = *(v41 + 64);
  __chkstk_darwin(v11);
  v14 = &v33 - v13;
  v15 = type metadata accessor for SharingCircleSecret();
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15);
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_100D6C504();
  v43 = v14;
  v20 = v44;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v20)
  {
    return sub_100007BAC(a1);
  }

  v21 = v10;
  v44 = v8;
  v46 = 0;
  v22 = sub_1000E307C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v37 = v22;
  *v18 = v45;
  LOBYTE(v45) = 1;
  sub_100D6CB3C(&qword_101698300, &type metadata accessor for UUID);
  v23 = v39;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v36 = v15;
  v24 = v23;
  v25 = &v18[*(v15 + 20)];
  v34 = *(v40 + 32);
  v34(v25, v21, v23);
  LOBYTE(v45) = 2;
  v26 = v44;
  v35 = 0;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v27 = v36;
  v34(&v18[*(v36 + 24)], v26, v24);
  LOBYTE(v45) = 3;
  v28 = v42;
  v29 = KeyedDecodingContainer.decode(_:forKey:)();
  v30 = &v18[*(v27 + 28)];
  *v30 = v29;
  v30[1] = v31;
  v46 = 4;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v41 + 8))(v43, v28);
  *&v18[*(v27 + 32)] = v45;
  sub_100D6C630(v18, v38, type metadata accessor for SharingCircleSecret);
  sub_100007BAC(a1);
  return sub_100D6C698(v18, type metadata accessor for SharingCircleSecret);
}

uint64_t sub_100D6C2B4(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (qword_101694E90 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for URL();
  sub_1000076D4(v2, qword_10177C090);
  UUID.uuidString.getter();
  URL.appendingPathComponent(_:isDirectory:)();
}

uint64_t sub_100D6C388(uint64_t a1)
{
  *(a1 + 8) = sub_100D6CB3C(&unk_1016BB310, type metadata accessor for SharingCircleSecret);
  result = sub_100D6CB3C(&qword_1016B1648, type metadata accessor for SharingCircleSecret);
  *(a1 + 16) = result;
  return result;
}

uint64_t type metadata accessor for SharingCircleSecret()
{
  result = qword_1016BB3A0;
  if (!qword_1016BB3A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100D6C458(uint64_t a1)
{
  result = sub_100D6CB3C(&qword_1016B1640, type metadata accessor for SharingCircleSecret);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100D6C4B0()
{
  result = qword_1016BB320;
  if (!qword_1016BB320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BB320);
  }

  return result;
}

unint64_t sub_100D6C504()
{
  result = qword_1016BB338;
  if (!qword_1016BB338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BB338);
  }

  return result;
}

uint64_t sub_100D6C558(uint64_t a1, uint64_t a2)
{
  if ((_s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(*a1, *(a1 + 8), *a2, *(a2 + 8)) & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for SharingCircleSecret();
  v5 = v4[5];
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v6 = v4[6];
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v7 = v4[7];
  v8 = *(a1 + v7);
  v9 = *(a1 + v7 + 8);
  v10 = (a2 + v7);
  v11 = v8 == *v10 && v9 == v10[1];
  if (!v11 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v12 = v4[8];
  v13 = *(a1 + v12);
  v14 = *(a1 + v12 + 8);
  v15 = (a2 + v12);
  v16 = *v15;
  v17 = v15[1];

  return _s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(v13, v14, v16, v17);
}

uint64_t sub_100D6C630(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100D6C698(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100D6C740()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_100D6C814()
{
  result = qword_1016BB3F0;
  if (!qword_1016BB3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BB3F0);
  }

  return result;
}

unint64_t sub_100D6C86C()
{
  result = qword_1016BB3F8;
  if (!qword_1016BB3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BB3F8);
  }

  return result;
}

unint64_t sub_100D6C8C4()
{
  result = qword_1016BB400;
  if (!qword_1016BB400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BB400);
  }

  return result;
}

unint64_t sub_100D6C91C()
{
  result = qword_1016BB408[0];
  if (!qword_1016BB408[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1016BB408);
  }

  return result;
}

uint64_t sub_100D6C970(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x8000000101347C50 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001013512F0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7954746572636573 && a2 == 0xEA00000000006570 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6144746572636573 && a2 == 0xEA00000000006174)
  {

    return 4;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_100D6CB3C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_100D6CBE8()
{
  v1 = *(v0 + 40);
  if (v1)
  {
    v2 = *(v0 + 48);

    v1(v3);
    sub_1000BB27C(v1);
  }

  if (qword_101694958 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000076D4(v4, qword_10177B368);
  oslog = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v5, "All location fetch subscriptions terminated.", v6, 2u);
  }
}

void sub_100D6CD54(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  XPCSession.identifier.getter();
  v19 = 0;
  memset(v18, 0, sizeof(v18));
  swift_beginAccess();
  swift_getTupleTypeMetadata2();
  sub_1000096E8(&qword_1016967B0);
  type metadata accessor for Dictionary();
  Dictionary.subscript.setter();
  swift_endAccess();
  if (qword_101694958 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_1000076D4(v9, qword_10177B368);

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *&v18[0] = v17;
    *v12 = 141558275;
    *(v12 + 4) = 1752392040;
    *(v12 + 12) = 2081;
    XPCSession.identifier.getter();
    sub_1000096E8(&qword_101696930);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v20 = v2;
    v15 = v14;

    (*(v5 + 8))(v8, v4);
    v16 = sub_1000136BC(v13, v15, v18);

    *(v12 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v10, v11, "Removed location fetch subscription %{private,mask.hash}s.", v12, 0x16u);
    sub_100007BAC(v17);
  }

  else
  {
  }
}

uint64_t sub_100D6D090()
{
  v1 = v0[6];
  sub_1000BB27C(v0[5]);
  v2 = v0[7];

  v3 = v0[8];

  v4 = v0[9];

  v5 = v0[10];
}

uint64_t *sub_100D6D0D8()
{
  v0 = sub_1010D71A8();
  v1 = v0[6];
  sub_1000BB27C(v0[5]);
  v2 = v0[7];

  v3 = v0[8];

  v4 = v0[9];

  v5 = v0[10];

  return v0;
}

uint64_t sub_100D6D12C()
{
  sub_100D6D0D8();

  return swift_deallocClassInstance();
}

uint64_t sub_100D6D190(uint64_t a1, uint64_t a2)
{
  v2[7] = a1;
  v2[8] = a2;
  v3 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
  v2[9] = v3;
  v4 = *(v3 - 8);
  v2[10] = v4;
  v5 = *(v4 + 64) + 15;
  v2[11] = swift_task_alloc();
  v6 = type metadata accessor for Duration.UnitsFormatStyle.Unit();
  v2[12] = v6;
  v7 = *(v6 - 8);
  v2[13] = v7;
  v8 = *(v7 + 64) + 15;
  v2[14] = swift_task_alloc();
  v9 = sub_1000BC4D4(&qword_1016973C8, &qword_1013B6210);
  v2[15] = v9;
  v10 = *(v9 - 8);
  v2[16] = v10;
  v11 = *(v10 + 64) + 15;
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v12 = sub_1000BC4D4(&qword_101697240, &unk_10138BDA0);
  v2[19] = v12;
  v13 = *(v12 - 8);
  v2[20] = v13;
  v14 = *(v13 + 64) + 15;
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v15 = *(*(sub_1000BC4D4(&qword_101697250, &unk_10138BDB0) - 8) + 64) + 15;
  v2[24] = swift_task_alloc();
  v16 = *(*(sub_1000BC4D4(&qword_101697258, &unk_1013DC4C0) - 8) + 64) + 15;
  v2[25] = swift_task_alloc();
  v17 = type metadata accessor for Peripheral.ConnectionOptions();
  v2[26] = v17;
  v18 = *(v17 - 8);
  v2[27] = v18;
  v19 = *(v18 + 64) + 15;
  v2[28] = swift_task_alloc();
  v20 = *(*(sub_1000BC4D4(&qword_101697260, &unk_10138BDC0) - 8) + 64) + 15;
  v2[29] = swift_task_alloc();
  v21 = *(*(sub_1000BC4D4(&qword_101697270, &qword_10138BDD0) - 8) + 64) + 15;
  v2[30] = swift_task_alloc();
  v22 = type metadata accessor for ContinuousClock.Instant();
  v2[31] = v22;
  v23 = *(v22 - 8);
  v2[32] = v23;
  v24 = *(v23 + 64) + 15;
  v2[33] = swift_task_alloc();
  v2[34] = swift_task_alloc();
  v2[35] = swift_task_alloc();
  v2[36] = swift_task_alloc();
  v25 = sub_1000BC4D4(&qword_101697248, &qword_1013DC4D0);
  v2[37] = v25;
  v26 = *(v25 - 8);
  v2[38] = v26;
  v27 = *(v26 + 64) + 15;
  v2[39] = swift_task_alloc();
  v28 = type metadata accessor for ContinuousClock();
  v2[40] = v28;
  v29 = *(v28 - 8);
  v2[41] = v29;
  v30 = *(v29 + 64) + 15;
  v2[42] = swift_task_alloc();

  return _swift_task_switch(sub_100D6D62C, 0, 0);
}

uint64_t sub_100D6D62C()
{
  v1 = v0[42];
  v2 = v0[39];
  v3 = v0[36];
  ContinuousClock.init()();
  v0[43] = type metadata accessor for Service();
  Identifier.init(stringLiteral:)();
  ContinuousClock.now.getter();
  static Task<>.checkCancellation()();
  v4 = v0[30];
  v25 = v0[29];
  v5 = v0[27];
  v6 = v0[28];
  v8 = v0[25];
  v7 = v0[26];
  v9 = v0[24];
  v10 = type metadata accessor for ConnectUseCase();
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  sub_1000BC4D4(&qword_101697280, &unk_1013B61F0);
  v11 = *(v5 + 72);
  v12 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_10138BBE0;
  static Peripheral.ConnectionOptions.hideFromBTSettings.getter();
  static Peripheral.ConnectionOptions.shouldSkipUnpair.getter();
  v0[6] = v13;
  sub_100D97688(&qword_101697288, &type metadata accessor for Peripheral.ConnectionOptions);
  sub_1000BC4D4(&qword_101697290, &qword_10138BDF0);
  sub_1000041A4(&qword_101697298, &qword_101697290, &qword_10138BDF0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v14 = type metadata accessor for PeripheralPairingInfo();
  (*(*(v14 - 8) + 56))(v8, 1, 1, v14);
  v15 = type metadata accessor for LongTermKey();
  (*(*(v15 - 8) + 56))(v9, 1, 1, v15);
  Peripheral.Options.init(connectionOptions:pairingInfo:temporaryLTK:)();
  v16 = type metadata accessor for Peripheral.Options();
  (*(*(v16 - 8) + 56))(v25, 0, 1, v16);
  v17 = type metadata accessor for Peripheral();
  v0[44] = v17;
  v18 = sub_100D97688(&qword_1016972A0, &type metadata accessor for Peripheral);
  v0[45] = v18;
  v19 = async function pointer to dispatch thunk of PeripheralProtocol.connect(useCase:options:)[1];
  v20 = swift_task_alloc();
  v0[46] = v20;
  *v20 = v0;
  v20[1] = sub_100D6DA94;
  v21 = v0[29];
  v22 = v0[30];
  v23 = v0[8];

  return dispatch thunk of PeripheralProtocol.connect(useCase:options:)(v22, v21, v17, v18);
}

uint64_t sub_100D6DA94()
{
  v2 = *v1;
  v3 = *(*v1 + 368);
  v4 = *v1;
  v2[47] = v0;

  v5 = v2[30];
  v6 = v2[29];
  if (v0)
  {
    sub_10000B3A8(v6, &qword_101697260, &unk_10138BDC0);
    sub_10000B3A8(v5, &qword_101697270, &qword_10138BDD0);

    return _swift_task_switch(sub_100D6DDAC, 0, 0);
  }

  else
  {
    sub_10000B3A8(v6, &qword_101697260, &unk_10138BDC0);
    sub_10000B3A8(v5, &qword_101697270, &qword_10138BDD0);
    v7 = async function pointer to dispatch thunk of PeripheralProtocol.subscript.getter[1];
    v8 = swift_task_alloc();
    v2[48] = v8;
    *v8 = v4;
    v8[1] = sub_100D6DC98;
    v9 = v2[44];
    v10 = v2[45];
    v11 = v2[8];
    v12 = v2[39];

    return dispatch thunk of PeripheralProtocol.subscript.getter(v12, v9, v10);
  }
}

uint64_t sub_100D6DC98(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 384);
  v7 = *v2;
  *(v3 + 392) = a1;
  *(v3 + 400) = v1;

  if (v1)
  {
    v5 = sub_100D6E2D0;
  }

  else
  {
    v5 = sub_100D6DEB4;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100D6DDAC()
{
  (*(v0[32] + 8))(v0[36], v0[31]);
  v0[80] = v0[47];
  v1 = type metadata accessor for Peripheral();
  v2 = sub_100D97688(&qword_1016972A0, &type metadata accessor for Peripheral);
  v3 = async function pointer to dispatch thunk of PeripheralProtocol.cancelConnection()[1];
  v4 = swift_task_alloc();
  v0[81] = v4;
  *v4 = v0;
  v4[1] = sub_100D703C0;
  v5 = v0[8];

  return dispatch thunk of PeripheralProtocol.cancelConnection()(v1, v2);
}

uint64_t sub_100D6DEB4()
{
  v1 = v0[50];
  static Task<>.checkCancellation()();
  if (v1)
  {
    v2 = v0[49];
    (*(v0[32] + 8))(v0[36], v0[31]);

    v0[80] = v1;
    v3 = type metadata accessor for Peripheral();
    v4 = sub_100D97688(&qword_1016972A0, &type metadata accessor for Peripheral);
    v5 = async function pointer to dispatch thunk of PeripheralProtocol.cancelConnection()[1];
    v6 = swift_task_alloc();
    v0[81] = v6;
    *v6 = v0;
    v6[1] = sub_100D703C0;
    v7 = v0[8];

    return dispatch thunk of PeripheralProtocol.cancelConnection()(v3, v4);
  }

  else
  {
    v8 = v0[20];
    sub_101123C58(0, 3, 0);
    type metadata accessor for Characteristic();
    v9 = v0[23];
    Identifier.init(stringLiteral:)();
    v11 = _swiftEmptyArrayStorage[2];
    v10 = _swiftEmptyArrayStorage[3];
    if (v11 >= v10 >> 1)
    {
      sub_101123C58(v10 > 1, v11 + 1, 1);
    }

    v0[51] = _swiftEmptyArrayStorage;
    v12 = v0[23];
    v13 = v0[19];
    _swiftEmptyArrayStorage[2] = v11 + 1;
    v14 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v15 = *(v8 + 72);
    v16 = *(v8 + 32);
    v16(_swiftEmptyArrayStorage + v14 + v15 * v11, v12, v13);
    v17 = v0[23];
    Identifier.init(stringLiteral:)();
    v19 = _swiftEmptyArrayStorage[2];
    v18 = _swiftEmptyArrayStorage[3];
    if (v19 >= v18 >> 1)
    {
      sub_101123C58(v18 > 1, v19 + 1, 1);
    }

    v0[51] = _swiftEmptyArrayStorage;
    v20 = v0[23];
    v21 = v0[19];
    _swiftEmptyArrayStorage[2] = v19 + 1;
    v16(_swiftEmptyArrayStorage + v14 + v15 * v19, v20, v21);
    v22 = v0[23];
    Identifier.init(stringLiteral:)();
    v24 = _swiftEmptyArrayStorage[2];
    v23 = _swiftEmptyArrayStorage[3];
    if (v24 >= v23 >> 1)
    {
      sub_101123C58(v23 > 1, v24 + 1, 1);
    }

    v0[51] = _swiftEmptyArrayStorage;
    v25 = v0[23];
    v26 = v0[19];
    _swiftEmptyArrayStorage[2] = v24 + 1;
    v16(_swiftEmptyArrayStorage + v14 + v15 * v24, v25, v26);
    v27 = sub_100D97688(&qword_1016972A8, &type metadata accessor for Service);
    v0[52] = v27;
    v28 = async function pointer to dispatch thunk of ServiceProtocol.discover(characteristicIdentifiers:)[1];
    v29 = swift_task_alloc();
    v0[53] = v29;
    *v29 = v0;
    v29[1] = sub_100D6E3D8;
    v30 = v0[49];
    v31 = v0[43];

    return dispatch thunk of ServiceProtocol.discover(characteristicIdentifiers:)(_swiftEmptyArrayStorage, v31, v27);
  }
}

uint64_t sub_100D6E2D0()
{
  (*(v0[32] + 8))(v0[36], v0[31]);
  v0[80] = v0[50];
  v1 = type metadata accessor for Peripheral();
  v2 = sub_100D97688(&qword_1016972A0, &type metadata accessor for Peripheral);
  v3 = async function pointer to dispatch thunk of PeripheralProtocol.cancelConnection()[1];
  v4 = swift_task_alloc();
  v0[81] = v4;
  *v4 = v0;
  v4[1] = sub_100D703C0;
  v5 = v0[8];

  return dispatch thunk of PeripheralProtocol.cancelConnection()(v1, v2);
}

uint64_t sub_100D6E3D8()
{
  v2 = *v1;
  v3 = *(*v1 + 424);
  v4 = *v1;
  *(*v1 + 432) = v0;

  v5 = *(v2 + 408);
  if (v0)
  {

    v6 = sub_100D6E6EC;
  }

  else
  {

    v6 = sub_100D6E524;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100D6E524()
{
  v1 = v0[54];
  static Task<>.checkCancellation()();
  if (v1)
  {
    v2 = v0[49];
    (*(v0[32] + 8))(v0[36], v0[31]);

    v0[80] = v1;
    v3 = type metadata accessor for Peripheral();
    v4 = sub_100D97688(&qword_1016972A0, &type metadata accessor for Peripheral);
    v5 = async function pointer to dispatch thunk of PeripheralProtocol.cancelConnection()[1];
    v6 = swift_task_alloc();
    v0[81] = v6;
    *v6 = v0;
    v6[1] = sub_100D703C0;
    v7 = v0[8];

    return dispatch thunk of PeripheralProtocol.cancelConnection()(v3, v4);
  }

  else
  {
    v8 = v0[22];
    v0[55] = type metadata accessor for Characteristic();
    Identifier.init(stringLiteral:)();
    v9 = async function pointer to dispatch thunk of ServiceProtocol.subscript.getter[1];
    v10 = swift_task_alloc();
    v0[56] = v10;
    *v10 = v0;
    v10[1] = sub_100D6E804;
    v11 = v0[52];
    v12 = v0[49];
    v13 = v0[43];
    v14 = v0[22];

    return dispatch thunk of ServiceProtocol.subscript.getter(v14, v13, v11);
  }
}

uint64_t sub_100D6E6EC()
{
  v1 = v0[49];
  v2 = v0[36];
  v3 = v0[31];
  v4 = v0[32];

  (*(v4 + 8))(v2, v3);
  v0[80] = v0[54];
  v5 = type metadata accessor for Peripheral();
  v6 = sub_100D97688(&qword_1016972A0, &type metadata accessor for Peripheral);
  v7 = async function pointer to dispatch thunk of PeripheralProtocol.cancelConnection()[1];
  v8 = swift_task_alloc();
  v0[81] = v8;
  *v8 = v0;
  v8[1] = sub_100D703C0;
  v9 = v0[8];

  return dispatch thunk of PeripheralProtocol.cancelConnection()(v5, v6);
}

uint64_t sub_100D6E804(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 448);
  v6 = *v2;
  v4[57] = a1;
  v4[58] = v1;

  v7 = v4[22];
  v8 = v4[20];
  v9 = v4[19];
  if (v1)
  {
    (*(v8 + 8))(v7, v9);

    return _swift_task_switch(sub_100D6EC10, 0, 0);
  }

  else
  {
    v10 = *(v8 + 8);
    v4[59] = v10;
    v4[60] = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v10(v7, v9);
    v11 = sub_100D97688(&qword_1016972C0, &type metadata accessor for Characteristic);
    v4[61] = v11;
    v12 = async function pointer to dispatch thunk of CharacteristicProtocol.read()[1];
    v13 = swift_task_alloc();
    v4[62] = v13;
    *v13 = v6;
    v13[1] = sub_100D6EA40;
    v14 = v4[55];
    v15 = v4[18];

    return dispatch thunk of CharacteristicProtocol.read()(v15, v14, v11);
  }
}

uint64_t sub_100D6EA40()
{
  v2 = *(*v1 + 496);
  v3 = *v1;
  v3[63] = v0;

  if (v0)
  {
    v4 = v3[57];

    return _swift_task_switch(sub_100D6EEAC, 0, 0);
  }

  else
  {
    v5 = v3[57];

    v6 = async function pointer to AsyncSequence.first()[1];
    v7 = swift_task_alloc();
    v3[64] = v7;
    v8 = sub_1000041A4(&qword_1016C11D0, &qword_1016973C8, &qword_1013B6210);
    v3[65] = v8;
    *v7 = v3;
    v7[1] = sub_100D6ED28;
    v9 = v3[18];
    v10 = v3[15];

    return AsyncSequence.first()(v3 + 2, v10, v8);
  }
}

uint64_t sub_100D6EC10()
{
  v1 = v0[49];
  v2 = v0[36];
  v3 = v0[31];
  v4 = v0[32];

  (*(v4 + 8))(v2, v3);
  v0[80] = v0[58];
  v5 = type metadata accessor for Peripheral();
  v6 = sub_100D97688(&qword_1016972A0, &type metadata accessor for Peripheral);
  v7 = async function pointer to dispatch thunk of PeripheralProtocol.cancelConnection()[1];
  v8 = swift_task_alloc();
  v0[81] = v8;
  *v8 = v0;
  v8[1] = sub_100D703C0;
  v9 = v0[8];

  return dispatch thunk of PeripheralProtocol.cancelConnection()(v5, v6);
}

uint64_t sub_100D6ED28()
{
  v2 = *v1;
  v3 = *(*v1 + 512);
  v4 = *v1;
  v2[66] = v0;

  v5 = v2[18];
  v6 = v2[16];
  v7 = v2[15];
  v10 = *(v6 + 8);
  v8 = v6 + 8;
  v9 = v10;
  if (v0)
  {
    v9(v5, v7);
    v11 = sub_100D6F3A0;
  }

  else
  {
    v2[67] = v9;
    v2[68] = v8 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v9(v5, v7);
    v11 = sub_100D6EFC4;
  }

  return _swift_task_switch(v11, 0, 0);
}

uint64_t sub_100D6EEAC()
{
  v1 = v0[49];
  v2 = v0[36];
  v3 = v0[31];
  v4 = v0[32];

  (*(v4 + 8))(v2, v3);
  v0[80] = v0[63];
  v5 = type metadata accessor for Peripheral();
  v6 = sub_100D97688(&qword_1016972A0, &type metadata accessor for Peripheral);
  v7 = async function pointer to dispatch thunk of PeripheralProtocol.cancelConnection()[1];
  v8 = swift_task_alloc();
  v0[81] = v8;
  *v8 = v0;
  v8[1] = sub_100D703C0;
  v9 = v0[8];

  return dispatch thunk of PeripheralProtocol.cancelConnection()(v5, v6);
}

uint64_t sub_100D6EFC4()
{
  v36 = v0;
  v1 = v0[2];
  v2 = v0[3];
  v0[69] = v1;
  v0[70] = v2;
  if (v2 >> 60 == 15)
  {
    v3 = 0;
    v4 = 0x8000000000000;
  }

  else
  {
    sub_100017D5C(v1, v2);
    sub_100017D5C(v1, v2);
    v5 = sub_100504370(v1, v2);
    if (v6 >> 60 == 15)
    {
      v3 = 0;
      v4 = 0x8000000000000;
    }

    else
    {
      v7 = v5;
      v8 = v6;
      if (qword_101694690 != -1)
      {
        swift_once();
      }

      v9 = type metadata accessor for Logger();
      sub_1000076D4(v9, qword_10177AC90);
      sub_100017D5C(v7, v8);
      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.default.getter();
      sub_100006654(v7, v8);
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v35 = v34;
        *v12 = 136315138;
        sub_100017D5C(v7, v8);
        v13 = sub_100503F40(v7, v8);
        v15 = v14;
        sub_100006654(v7, v8);
        v16 = sub_1000136BC(v13, v15, &v35);

        *(v12 + 4) = v16;
        _os_log_impl(&_mh_execute_header, v10, v11, "DISProductData: %s", v12, 0xCu);
        sub_100007BAC(v34);
      }

      v3 = sub_1005043E0(v7, v8);
      v4 = v17;
      sub_100006654(v7, v8);
    }

    sub_100006654(v1, v2);
  }

  v0[72] = v4;
  v0[71] = v3;
  v18 = v0[66];
  static Task<>.checkCancellation()();
  if (v18)
  {
    v19 = v0[49];
    (*(v0[32] + 8))(v0[36], v0[31]);

    sub_100006654(v1, v2);
    sub_100016590(v3, v4);
    v0[80] = v18;
    v20 = type metadata accessor for Peripheral();
    v21 = sub_100D97688(&qword_1016972A0, &type metadata accessor for Peripheral);
    v22 = async function pointer to dispatch thunk of PeripheralProtocol.cancelConnection()[1];
    v23 = swift_task_alloc();
    v0[81] = v23;
    *v23 = v0;
    v23[1] = sub_100D703C0;
    v24 = v0[8];

    return dispatch thunk of PeripheralProtocol.cancelConnection()(v20, v21);
  }

  else
  {
    v25 = v0[55];
    v26 = v0[21];
    Identifier.init(stringLiteral:)();
    v27 = async function pointer to dispatch thunk of ServiceProtocol.subscript.getter[1];
    v28 = swift_task_alloc();
    v0[73] = v28;
    *v28 = v0;
    v28[1] = sub_100D6F4B8;
    v29 = v0[52];
    v30 = v0[49];
    v31 = v0[43];
    v32 = v0[21];

    return dispatch thunk of ServiceProtocol.subscript.getter(v32, v31, v29);
  }
}

uint64_t sub_100D6F3A0()
{
  v1 = v0[49];
  v2 = v0[36];
  v3 = v0[31];
  v4 = v0[32];

  (*(v4 + 8))(v2, v3);
  v0[80] = v0[66];
  v5 = type metadata accessor for Peripheral();
  v6 = sub_100D97688(&qword_1016972A0, &type metadata accessor for Peripheral);
  v7 = async function pointer to dispatch thunk of PeripheralProtocol.cancelConnection()[1];
  v8 = swift_task_alloc();
  v0[81] = v8;
  *v8 = v0;
  v8[1] = sub_100D703C0;
  v9 = v0[8];

  return dispatch thunk of PeripheralProtocol.cancelConnection()(v5, v6);
}

uint64_t sub_100D6F4B8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 584);
  v6 = *v2;
  v4[74] = a1;
  v4[75] = v1;

  v7 = v4[60];
  v8 = v4[59];
  v9 = v4[21];
  v10 = v4[19];
  if (v1)
  {
    v8(v9, v10);

    return _swift_task_switch(sub_100D6F83C, 0, 0);
  }

  else
  {
    v8(v9, v10);
    v11 = async function pointer to dispatch thunk of CharacteristicProtocol.read()[1];
    v12 = swift_task_alloc();
    v4[76] = v12;
    *v12 = v6;
    v12[1] = sub_100D6F6AC;
    v13 = v4[61];
    v14 = v4[55];
    v15 = v4[17];

    return dispatch thunk of CharacteristicProtocol.read()(v15, v14, v13);
  }
}

uint64_t sub_100D6F6AC()
{
  v2 = *(*v1 + 608);
  v3 = *v1;
  v3[77] = v0;

  if (v0)
  {
    v4 = v3[74];

    return _swift_task_switch(sub_100D6FAFC, 0, 0);
  }

  else
  {
    v5 = v3[74];

    v6 = async function pointer to AsyncSequence.first()[1];
    v7 = swift_task_alloc();
    v3[78] = v7;
    *v7 = v3;
    v7[1] = sub_100D6F98C;
    v8 = v3[65];
    v9 = v3[17];
    v10 = v3[15];

    return AsyncSequence.first()(v3 + 4, v10, v8);
  }
}

uint64_t sub_100D6F83C()
{
  v1 = v0[72];
  v2 = v0[71];
  v3 = v0[70];
  v4 = v0[69];
  v5 = v0[49];
  v6 = v0[36];
  v7 = v0[31];
  v8 = v0[32];

  sub_100016590(v2, v1);
  sub_100006654(v4, v3);
  (*(v8 + 8))(v6, v7);
  v0[80] = v0[75];
  v9 = type metadata accessor for Peripheral();
  v10 = sub_100D97688(&qword_1016972A0, &type metadata accessor for Peripheral);
  v11 = async function pointer to dispatch thunk of PeripheralProtocol.cancelConnection()[1];
  v12 = swift_task_alloc();
  v0[81] = v12;
  *v12 = v0;
  v12[1] = sub_100D703C0;
  v13 = v0[8];

  return dispatch thunk of PeripheralProtocol.cancelConnection()(v9, v10);
}

uint64_t sub_100D6F98C()
{
  v2 = *v1;
  v3 = *(*v1 + 624);
  v4 = *v1;
  *(*v1 + 632) = v0;

  v5 = *(v2 + 544);
  (*(v2 + 536))(*(v2 + 136), *(v2 + 120));
  if (v0)
  {
    v6 = sub_100D70270;
  }

  else
  {
    v6 = sub_100D6FC4C;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100D6FAFC()
{
  v1 = v0[72];
  v2 = v0[71];
  v3 = v0[70];
  v4 = v0[69];
  v5 = v0[49];
  v6 = v0[36];
  v7 = v0[31];
  v8 = v0[32];

  sub_100016590(v2, v1);
  sub_100006654(v4, v3);
  (*(v8 + 8))(v6, v7);
  v0[80] = v0[77];
  v9 = type metadata accessor for Peripheral();
  v10 = sub_100D97688(&qword_1016972A0, &type metadata accessor for Peripheral);
  v11 = async function pointer to dispatch thunk of PeripheralProtocol.cancelConnection()[1];
  v12 = swift_task_alloc();
  v0[81] = v12;
  *v12 = v0;
  v12[1] = sub_100D703C0;
  v13 = v0[8];

  return dispatch thunk of PeripheralProtocol.cancelConnection()(v9, v10);
}

uint64_t sub_100D6FC4C()
{
  v81 = v0;
  v1 = v0[4];
  v2 = v0[5];
  if (qword_101694690 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_1000076D4(v3, qword_10177AC90);
  sub_10002E98C(v1, v2);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  sub_100006654(v1, v2);
  v78 = v2;
  v79 = v1;
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v80[0] = v7;
    *v6 = 136315138;
    if (v2 >> 60 == 15)
    {
      v8 = 0;
      v9 = 0xE000000000000000;
    }

    else
    {
      v8 = Data.hexString.getter();
      v9 = v10;
    }

    v11 = sub_1000136BC(v8, v9, v80);

    *(v6 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v4, v5, "DIS firmware version: %s", v6, 0xCu);
    sub_100007BAC(v7);
  }

  v12 = v0[42];
  v14 = v0[35];
  v13 = v0[36];
  v16 = v0[33];
  v15 = v0[34];
  v17 = v0[31];
  v18 = v0[32];
  ContinuousClock.now.getter();
  v19 = *(v18 + 16);
  v19(v15, v13, v17);
  v19(v16, v14, v17);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();
  v22 = os_log_type_enabled(v20, v21);
  v24 = v0[33];
  v23 = v0[34];
  v25 = v0[31];
  v26 = v0[32];
  if (v22)
  {
    v27 = v0[13];
    v28 = v0[14];
    v72 = v0[12];
    v74 = swift_slowAlloc();
    v76 = swift_slowAlloc();
    v80[0] = v76;
    *v74 = 136446210;
    static Duration.UnitsFormatStyle.Unit.milliseconds.getter();
    sub_100D97688(&qword_1016C11E0, &type metadata accessor for ContinuousClock.Instant);
    v70 = static Duration.description<A>(_:_:units:)();
    v30 = v29;
    (*(v27 + 8))(v28, v72);
    v31 = *(v26 + 8);
    v31(v24, v25);
    v73 = v31;
    v31(v23, v25);
    v32 = sub_1000136BC(v70, v30, v80);

    *(v74 + 4) = v32;
    _os_log_impl(&_mh_execute_header, v20, v21, "Raw metadata read time: %{public}s", v74, 0xCu);
    sub_100007BAC(v76);
  }

  else
  {

    v33 = *(v26 + 8);
    v33(v24, v25);
    v73 = v33;
    v33(v23, v25);
  }

  v58 = v0[71];
  v59 = v0[72];
  v34 = v0[49];
  v35 = v0[44];
  v36 = v0[45];
  v37 = v0[41];
  v56 = v0[40];
  v57 = v0[42];
  v38 = v0[38];
  v54 = v0[37];
  v55 = v0[39];
  v52 = v0[70];
  v53 = v0[36];
  v50 = v0[69];
  v51 = v0[35];
  v60 = v0[34];
  v61 = v0[33];
  v39 = v0[31];
  v62 = v0[30];
  v63 = v0[29];
  v64 = v0[28];
  v65 = v0[25];
  v66 = v0[24];
  v67 = v0[23];
  v68 = v0[22];
  v69 = v0[21];
  v71 = v0[18];
  v75 = v0[17];
  v77 = v0[14];
  v40 = v0[10];
  v41 = v0[11];
  v42 = v0[8];
  v43 = v0[9];
  v44 = v0[7];
  dispatch thunk of PeripheralProtocol.id.getter();
  Identifier.id.getter();

  sub_100006654(v50, v52);
  (*(v40 + 8))(v41, v43);
  v73(v51, v39);
  v73(v53, v39);
  (*(v38 + 8))(v55, v54);
  (*(v37 + 8))(v57, v56);
  v45 = type metadata accessor for RawAccessoryMetadata(0);
  v46 = (v44 + v45[5]);
  *v46 = v58;
  v46[1] = v59;
  *(v44 + v45[6]) = xmmword_10138BBF0;
  *(v44 + v45[7]) = xmmword_10138BBF0;
  *(v44 + v45[8]) = xmmword_10138BBF0;
  *(v44 + v45[9]) = xmmword_10138BBF0;
  *(v44 + v45[10]) = xmmword_10138BBF0;
  v47 = (v44 + v45[11]);
  *v47 = v79;
  v47[1] = v78;
  *(v44 + v45[12]) = xmmword_10138BBF0;
  *(v44 + v45[13]) = xmmword_10138BBF0;
  *(v44 + v45[14]) = xmmword_10138BBF0;
  *(v44 + v45[15]) = xmmword_10138BBF0;
  *(v44 + v45[16]) = xmmword_10138BBF0;

  v48 = v0[1];

  return v48();
}

uint64_t sub_100D70270()
{
  v1 = v0[72];
  v2 = v0[71];
  v3 = v0[70];
  v4 = v0[69];
  v5 = v0[49];
  v6 = v0[36];
  v7 = v0[31];
  v8 = v0[32];

  sub_100016590(v2, v1);
  sub_100006654(v4, v3);
  (*(v8 + 8))(v6, v7);
  v0[80] = v0[79];
  v9 = type metadata accessor for Peripheral();
  v10 = sub_100D97688(&qword_1016972A0, &type metadata accessor for Peripheral);
  v11 = async function pointer to dispatch thunk of PeripheralProtocol.cancelConnection()[1];
  v12 = swift_task_alloc();
  v0[81] = v12;
  *v12 = v0;
  v12[1] = sub_100D703C0;
  v13 = v0[8];

  return dispatch thunk of PeripheralProtocol.cancelConnection()(v9, v10);
}

uint64_t sub_100D703C0()
{
  v2 = *(*v1 + 648);
  v5 = *v1;
  *(*v1 + 656) = v0;

  if (v0)
  {
    v3 = sub_100D7066C;
  }

  else
  {
    v3 = sub_100D704D4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100D704D4()
{
  v1 = v0[80];
  v2 = v0[41];
  v3 = v0[42];
  v5 = v0[39];
  v4 = v0[40];
  v7 = v0[37];
  v6 = v0[38];
  v8 = v0[35];
  v9 = v0[36];
  v13 = v0[34];
  v14 = v0[33];
  v15 = v0[30];
  v16 = v0[29];
  v17 = v0[28];
  v18 = v0[25];
  v19 = v0[24];
  v20 = v0[23];
  v21 = v0[22];
  v22 = v0[21];
  v23 = v0[18];
  v24 = v0[17];
  v25 = v0[14];
  v26 = v0[11];
  swift_willThrow();
  (*(v6 + 8))(v5, v7);
  (*(v2 + 8))(v3, v4);

  v10 = v0[1];
  v11 = v0[80];

  return v10();
}

uint64_t sub_100D7066C()
{
  if (qword_101695010 != -1)
  {
    swift_once();
  }

  v1 = v0[82];
  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_10177C348);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[82];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    v9 = _convertErrorToNSError(_:)();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "cancelConnection error in readRawAccessoryMetadata() catch block: %{public}@", v7, 0xCu);
    sub_10000B3A8(v8, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  v10 = v0[80];
  v11 = v0[41];
  v12 = v0[42];
  v14 = v0[39];
  v13 = v0[40];
  v16 = v0[37];
  v15 = v0[38];
  v17 = v0[35];
  v18 = v0[36];
  v22 = v0[34];
  v23 = v0[33];
  v24 = v0[30];
  v25 = v0[29];
  v26 = v0[28];
  v27 = v0[25];
  v28 = v0[24];
  v29 = v0[23];
  v30 = v0[22];
  v31 = v0[21];
  v32 = v0[18];
  v33 = v0[17];
  v34 = v0[14];
  v35 = v0[11];
  swift_willThrow();
  (*(v15 + 8))(v14, v16);
  (*(v11 + 8))(v12, v13);

  v19 = v0[1];
  v20 = v0[80];

  return v19();
}

uint64_t sub_100D70938(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = *(*(sub_1000BC4D4(&qword_101699E50, &qword_1013D97C0) - 8) + 64) + 15;
  v3[5] = swift_task_alloc();
  v5 = type metadata accessor for Date();
  v3[6] = v5;
  v6 = *(v5 - 8);
  v3[7] = v6;
  v7 = *(v6 + 64) + 15;
  v3[8] = swift_task_alloc();
  v8 = type metadata accessor for UUID();
  v3[9] = v8;
  v9 = *(v8 - 8);
  v3[10] = v9;
  v10 = *(v9 + 64) + 15;
  v3[11] = swift_task_alloc();
  v11 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
  v3[12] = v11;
  v12 = *(v11 - 8);
  v3[13] = v12;
  v13 = *(v12 + 64) + 15;
  v3[14] = swift_task_alloc();

  return _swift_task_switch(sub_100D70AF8, v2, 0);
}

uint64_t sub_100D70AF8()
{
  v35 = v0;
  if (qword_101694EA0 != -1)
  {
    swift_once();
  }

  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];
  v4 = v0[2];
  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_1016BB490);
  (*(v2 + 16))(v1, v4, v3);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[13];
  v9 = v0[14];
  v11 = v0[12];
  if (v8)
  {
    v12 = v0[10];
    v13 = v0[11];
    log = v6;
    v14 = v0[9];
    v15 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *v15 = 136446466;
    *(v15 + 4) = sub_1000136BC(0xD000000000000023, 0x8000000101370E10, &v34);
    *(v15 + 12) = 2082;
    v32 = v7;
    Identifier.id.getter();
    sub_100D97688(&qword_101696930, &type metadata accessor for UUID);
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    v18 = v17;
    (*(v12 + 8))(v13, v14);
    (*(v10 + 8))(v9, v11);
    v19 = sub_1000136BC(v16, v18, &v34);

    *(v15 + 14) = v19;
    _os_log_impl(&_mh_execute_header, log, v32, "%{public}s for %{public}s", v15, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v20 = v0[11];
  v21 = v0[12];
  v22 = v0[5];
  v23 = v0[2];
  static Date.trustedNow.getter(v0[8]);
  Identifier.id.getter();
  v24 = type metadata accessor for DeviceEvent.Location(0);
  (*(*(v24 - 8) + 56))(v22, 1, 1, v24);
  v25 = swift_task_alloc();
  v0[15] = v25;
  *v25 = v0;
  v25[1] = sub_100D70E58;
  v26 = v0[11];
  v27 = v0[8];
  v29 = v0[4];
  v28 = v0[5];
  v30 = v0[3];

  return sub_100DAB1EC(v26, 1, v27, v30, v28);
}

uint64_t sub_100D70E58()
{
  v1 = *(*v0 + 120);
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 80);
  v4 = *(*v0 + 72);
  v5 = *(*v0 + 40);
  v6 = *(*v0 + 32);
  v8 = *v0;

  sub_10000B3A8(v5, &qword_101699E50, &qword_1013D97C0);
  (*(v3 + 8))(v2, v4);

  return _swift_task_switch(sub_100DDDDAC, v6, 0);
}

uint64_t sub_100D70FF8(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = *(*(sub_1000BC4D4(&qword_101699E50, &qword_1013D97C0) - 8) + 64) + 15;
  v3[5] = swift_task_alloc();
  v5 = type metadata accessor for Date();
  v3[6] = v5;
  v6 = *(v5 - 8);
  v3[7] = v6;
  v7 = *(v6 + 64) + 15;
  v3[8] = swift_task_alloc();
  v8 = type metadata accessor for UUID();
  v3[9] = v8;
  v9 = *(v8 - 8);
  v3[10] = v9;
  v10 = *(v9 + 64) + 15;
  v3[11] = swift_task_alloc();
  v11 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
  v3[12] = v11;
  v12 = *(v11 - 8);
  v3[13] = v12;
  v13 = *(v12 + 64) + 15;
  v3[14] = swift_task_alloc();

  return _swift_task_switch(sub_100D711B8, v2, 0);
}

uint64_t sub_100D711B8()
{
  v35 = v0;
  if (qword_101694EA0 != -1)
  {
    swift_once();
  }

  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];
  v4 = v0[2];
  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_1016BB490);
  (*(v2 + 16))(v1, v4, v3);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[13];
  v9 = v0[14];
  v11 = v0[12];
  if (v8)
  {
    v12 = v0[10];
    v13 = v0[11];
    log = v6;
    v14 = v0[9];
    v15 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *v15 = 136446466;
    *(v15 + 4) = sub_1000136BC(0xD000000000000026, 0x8000000101370F90, &v34);
    *(v15 + 12) = 2082;
    v32 = v7;
    Identifier.id.getter();
    sub_100D97688(&qword_101696930, &type metadata accessor for UUID);
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    v18 = v17;
    (*(v12 + 8))(v13, v14);
    (*(v10 + 8))(v9, v11);
    v19 = sub_1000136BC(v16, v18, &v34);

    *(v15 + 14) = v19;
    _os_log_impl(&_mh_execute_header, log, v32, "%{public}s for %{public}s", v15, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v20 = v0[11];
  v21 = v0[12];
  v22 = v0[5];
  v23 = v0[2];
  static Date.trustedNow.getter(v0[8]);
  Identifier.id.getter();
  v24 = type metadata accessor for DeviceEvent.Location(0);
  (*(*(v24 - 8) + 56))(v22, 1, 1, v24);
  v25 = swift_task_alloc();
  v0[15] = v25;
  *v25 = v0;
  v25[1] = sub_100D70E58;
  v26 = v0[11];
  v27 = v0[8];
  v29 = v0[4];
  v28 = v0[5];
  v30 = v0[3];

  return sub_100DAB1EC(v26, 2, v27, v30, v28);
}

uint64_t sub_100D71518(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = *(*(sub_1000BC4D4(&qword_101699E50, &qword_1013D97C0) - 8) + 64) + 15;
  v3[5] = swift_task_alloc();
  v5 = type metadata accessor for Date();
  v3[6] = v5;
  v6 = *(v5 - 8);
  v3[7] = v6;
  v7 = *(v6 + 64) + 15;
  v3[8] = swift_task_alloc();
  v8 = type metadata accessor for UUID();
  v3[9] = v8;
  v9 = *(v8 - 8);
  v3[10] = v9;
  v10 = *(v9 + 64) + 15;
  v3[11] = swift_task_alloc();
  v11 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
  v3[12] = v11;
  v12 = *(v11 - 8);
  v3[13] = v12;
  v13 = *(v12 + 64) + 15;
  v3[14] = swift_task_alloc();

  return _swift_task_switch(sub_100D716D8, v2, 0);
}

uint64_t sub_100D716D8()
{
  v35 = v0;
  if (qword_101694EA0 != -1)
  {
    swift_once();
  }

  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];
  v4 = v0[2];
  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_1016BB490);
  (*(v2 + 16))(v1, v4, v3);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[13];
  v9 = v0[14];
  v11 = v0[12];
  if (v8)
  {
    v12 = v0[10];
    v13 = v0[11];
    log = v6;
    v14 = v0[9];
    v15 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *v15 = 136446466;
    *(v15 + 4) = sub_1000136BC(0xD000000000000022, 0x8000000101370FC0, &v34);
    *(v15 + 12) = 2082;
    v32 = v7;
    Identifier.id.getter();
    sub_100D97688(&qword_101696930, &type metadata accessor for UUID);
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    v18 = v17;
    (*(v12 + 8))(v13, v14);
    (*(v10 + 8))(v9, v11);
    v19 = sub_1000136BC(v16, v18, &v34);

    *(v15 + 14) = v19;
    _os_log_impl(&_mh_execute_header, log, v32, "%{public}s for %{public}s", v15, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v20 = v0[11];
  v21 = v0[12];
  v22 = v0[5];
  v23 = v0[2];
  static Date.trustedNow.getter(v0[8]);
  Identifier.id.getter();
  v24 = type metadata accessor for DeviceEvent.Location(0);
  (*(*(v24 - 8) + 56))(v22, 1, 1, v24);
  v25 = swift_task_alloc();
  v0[15] = v25;
  *v25 = v0;
  v25[1] = sub_100D71A38;
  v26 = v0[11];
  v27 = v0[8];
  v29 = v0[4];
  v28 = v0[5];
  v30 = v0[3];

  return sub_100DAB1EC(v26, 3, v27, v30, v28);
}

uint64_t sub_100D71A38()
{
  v1 = *(*v0 + 120);
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 80);
  v4 = *(*v0 + 72);
  v5 = *(*v0 + 40);
  v6 = *(*v0 + 32);
  v8 = *v0;

  sub_10000B3A8(v5, &qword_101699E50, &qword_1013D97C0);
  (*(v3 + 8))(v2, v4);

  return _swift_task_switch(sub_100D71BD8, v6, 0);
}

uint64_t sub_100D71BD8()
{
  v1 = v0[14];
  v2 = v0[11];
  v3 = v0[5];
  (*(v0[7] + 8))(v0[8], v0[6]);

  v4 = v0[1];

  return v4();
}

uint64_t sub_100D71C7C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = *(*(sub_1000BC4D4(&qword_101699E50, &qword_1013D97C0) - 8) + 64) + 15;
  v3[5] = swift_task_alloc();
  v5 = type metadata accessor for Date();
  v3[6] = v5;
  v6 = *(v5 - 8);
  v3[7] = v6;
  v7 = *(v6 + 64) + 15;
  v3[8] = swift_task_alloc();
  v8 = type metadata accessor for UUID();
  v3[9] = v8;
  v9 = *(v8 - 8);
  v3[10] = v9;
  v10 = *(v9 + 64) + 15;
  v3[11] = swift_task_alloc();
  v11 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
  v3[12] = v11;
  v12 = *(v11 - 8);
  v3[13] = v12;
  v13 = *(v12 + 64) + 15;
  v3[14] = swift_task_alloc();

  return _swift_task_switch(sub_100D71E3C, v2, 0);
}

uint64_t sub_100D71E3C()
{
  v35 = v0;
  if (qword_101694EA0 != -1)
  {
    swift_once();
  }

  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];
  v4 = v0[2];
  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_1016BB490);
  (*(v2 + 16))(v1, v4, v3);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[13];
  v9 = v0[14];
  v11 = v0[12];
  if (v8)
  {
    v12 = v0[10];
    v13 = v0[11];
    log = v6;
    v14 = v0[9];
    v15 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *v15 = 136446466;
    *(v15 + 4) = sub_1000136BC(0xD000000000000022, 0x8000000101370FF0, &v34);
    *(v15 + 12) = 2082;
    v32 = v7;
    Identifier.id.getter();
    sub_100D97688(&qword_101696930, &type metadata accessor for UUID);
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    v18 = v17;
    (*(v12 + 8))(v13, v14);
    (*(v10 + 8))(v9, v11);
    v19 = sub_1000136BC(v16, v18, &v34);

    *(v15 + 14) = v19;
    _os_log_impl(&_mh_execute_header, log, v32, "%{public}s for %{public}s", v15, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v20 = v0[11];
  v21 = v0[12];
  v22 = v0[5];
  v23 = v0[2];
  static Date.trustedNow.getter(v0[8]);
  Identifier.id.getter();
  v24 = type metadata accessor for DeviceEvent.Location(0);
  (*(*(v24 - 8) + 56))(v22, 1, 1, v24);
  v25 = swift_task_alloc();
  v0[15] = v25;
  *v25 = v0;
  v25[1] = sub_100D70E58;
  v26 = v0[11];
  v27 = v0[8];
  v29 = v0[4];
  v28 = v0[5];
  v30 = v0[3];

  return sub_100DAB1EC(v26, 4, v27, v30, v28);
}

uint64_t sub_100D7219C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = *(*(sub_1000BC4D4(&qword_101699E50, &qword_1013D97C0) - 8) + 64) + 15;
  v3[5] = swift_task_alloc();
  v5 = *(*(sub_1000BC4D4(&qword_1016A9A30, &unk_1013BD120) - 8) + 64) + 15;
  v3[6] = swift_task_alloc();
  v6 = type metadata accessor for Date();
  v3[7] = v6;
  v7 = *(v6 - 8);
  v3[8] = v7;
  v8 = *(v7 + 64) + 15;
  v3[9] = swift_task_alloc();
  v9 = type metadata accessor for UUID();
  v3[10] = v9;
  v10 = *(v9 - 8);
  v3[11] = v10;
  v11 = *(v10 + 64) + 15;
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v12 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
  v3[14] = v12;
  v13 = *(v12 - 8);
  v3[15] = v13;
  v14 = *(v13 + 64) + 15;
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();

  return _swift_task_switch(sub_100D723AC, v2, 0);
}

uint64_t sub_100D723AC()
{
  v28 = v0;
  if (qword_101694EA0 != -1)
  {
    swift_once();
  }

  v1 = v0[17];
  v2 = v0[14];
  v3 = v0[15];
  v4 = v0[2];
  v5 = type metadata accessor for Logger();
  v0[18] = sub_1000076D4(v5, qword_1016BB490);
  v6 = *(v3 + 16);
  v0[19] = v6;
  v0[20] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[17];
  v11 = v0[14];
  v12 = v0[15];
  if (v9)
  {
    v13 = v0[13];
    log = v7;
    v14 = v0[10];
    v15 = v0[11];
    v16 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v16 = 136446466;
    *(v16 + 4) = sub_1000136BC(0xD000000000000022, 0x8000000101370F30, &v27);
    *(v16 + 12) = 2082;
    v25 = v8;
    Identifier.id.getter();
    sub_100D97688(&qword_101696930, &type metadata accessor for UUID);
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = v18;
    (*(v15 + 8))(v13, v14);
    v20 = *(v12 + 8);
    v20(v10, v11);
    v21 = sub_1000136BC(v17, v19, &v27);

    *(v16 + 14) = v21;
    _os_log_impl(&_mh_execute_header, log, v25, "%{public}s for %{public}s", v16, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v20 = *(v12 + 8);
    v20(v10, v11);
  }

  v0[21] = v20;
  static Date.trustedNow.getter(v0[9]);
  v22 = async function pointer to daemon.getter[1];
  v23 = swift_task_alloc();
  v0[22] = v23;
  *v23 = v0;
  v23[1] = sub_100D726B4;

  return daemon.getter();
}

uint64_t sub_100D726B4(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 176);
  v12 = *v1;
  *(v3 + 184) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 192) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for CloudStorageService();
  v9 = sub_100D97688(&qword_1016AA400, &type metadata accessor for Daemon);
  v10 = sub_100D97688(&unk_1016AA520, type metadata accessor for CloudStorageService);
  *v6 = v12;
  v6[1] = sub_100D72890;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100D72890(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 192);
  v6 = *v2;
  *(v4 + 200) = a1;
  *(v4 + 208) = v1;

  v7 = *(v3 + 184);
  v8 = *(v3 + 32);

  if (v1)
  {
    v9 = sub_100D736E4;
  }

  else
  {
    v9 = sub_100D729E0;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_100D729E0()
{
  v1 = v0[25];
  v2 = v0[14];
  v3 = v0[12];
  v4 = v0[2];
  Identifier.id.getter();

  return _swift_task_switch(sub_100D72A54, v1, 0);
}

uint64_t sub_100D72A54()
{
  v1 = *(v0[25] + 128);
  v2 = swift_task_alloc();
  v0[27] = v2;
  *v2 = v0;
  v2[1] = sub_100D72AF4;
  v3 = v0[12];
  v4 = v0[6];

  return sub_100C57B00(v4, v3);
}

uint64_t sub_100D72AF4()
{
  v2 = *v1;
  v3 = *(*v1 + 216);
  v12 = *v1;
  *(*v1 + 224) = v0;

  if (v0)
  {
    v4 = v2[25];
    v5 = sub_100D730CC;
  }

  else
  {
    v7 = v2[11];
    v6 = v2[12];
    v8 = v2[10];
    v9 = v2[4];
    v10 = *(v7 + 8);
    v2[29] = v10;
    v2[30] = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v10(v6, v8);
    v5 = sub_100D72C38;
    v4 = v9;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100D72C38()
{
  v54 = v0;
  v1 = v0[6];
  v2 = type metadata accessor for LocalFindableAccessoryRecord();
  v3 = (*(*(v2 - 8) + 48))(v1, 1, v2);
  sub_10000B3A8(v1, &qword_1016A9A30, &unk_1013BD120);
  if (v3 == 1)
  {
    v4 = v0[25];
    sub_100500BC4();
    swift_allocError();
    *v5 = xmmword_10139D940;
    *(v5 + 16) = 3;
    swift_willThrow();

    v7 = v0[19];
    v6 = v0[20];
    v8 = v0[18];
    v9 = v0[16];
    v10 = v0[14];
    v11 = v0[2];
    (*(v0[8] + 8))(v0[9], v0[7]);
    v7(v9, v11, v10);
    swift_errorRetain();
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();

    v14 = os_log_type_enabled(v12, v13);
    v15 = v0[21];
    v16 = v0[15];
    v17 = v0[16];
    v18 = v0[14];
    if (v14)
    {
      v19 = v0[13];
      v20 = v0[10];
      v48 = v0[11];
      v51 = v13;
      v21 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v53 = v52;
      *v21 = 136446466;
      v49 = v12;
      Identifier.id.getter();
      sub_100D97688(&qword_101696930, &type metadata accessor for UUID);
      v47 = dispatch thunk of CustomStringConvertible.description.getter();
      v22 = v15;
      v24 = v23;
      (*(v48 + 8))(v19, v20);
      v22(v17, v18);
      v25 = sub_1000136BC(v47, v24, &v53);

      *(v21 + 4) = v25;
      *(v21 + 12) = 2114;
      swift_errorRetain();
      v26 = _swift_stdlib_bridgeErrorToNSError();
      *(v21 + 14) = v26;
      *v50 = v26;
      _os_log_impl(&_mh_execute_header, v49, v51, "Failed to store detected device event for %{public}s,\nerror: %{public}@.", v21, 0x16u);
      sub_10000B3A8(v50, &qword_10169BB30, &unk_10138B3C0);

      sub_100007BAC(v52);
    }

    else
    {

      v15(v17, v18);
    }

    v40 = v0[16];
    v39 = v0[17];
    v42 = v0[12];
    v41 = v0[13];
    v43 = v0[9];
    v45 = v0[5];
    v44 = v0[6];

    v46 = v0[1];

    return v46();
  }

  else
  {
    v28 = v0[13];
    v27 = v0[14];
    v29 = v0[5];
    v30 = v0[2];
    Identifier.id.getter();
    v31 = type metadata accessor for DeviceEvent.Location(0);
    (*(*(v31 - 8) + 56))(v29, 1, 1, v31);
    v32 = swift_task_alloc();
    v0[31] = v32;
    *v32 = v0;
    v32[1] = sub_100D73468;
    v33 = v0[13];
    v34 = v0[9];
    v36 = v0[4];
    v35 = v0[5];
    v37 = v0[3];

    return sub_100DAB1EC(v33, 5, v34, v37, v35);
  }
}

uint64_t sub_100D730CC()
{
  v1 = v0[4];
  (*(v0[11] + 8))(v0[12], v0[10]);

  return _swift_task_switch(sub_100D73148, v1, 0);
}

uint64_t sub_100D73148()
{
  v40 = v0;
  v1 = v0[25];

  v2 = v0[28];
  v4 = v0[19];
  v3 = v0[20];
  v5 = v0[18];
  v6 = v0[16];
  v7 = v0[14];
  v8 = v0[2];
  (*(v0[8] + 8))(v0[9], v0[7]);
  v4(v6, v8, v7);
  swift_errorRetain();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();

  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[21];
  v13 = v0[15];
  v14 = v0[16];
  v15 = v0[14];
  if (v11)
  {
    v16 = v0[13];
    v17 = v0[10];
    v34 = v0[11];
    v37 = v10;
    v18 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v39 = v38;
    *v18 = 136446466;
    v35 = v9;
    Identifier.id.getter();
    sub_100D97688(&qword_101696930, &type metadata accessor for UUID);
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    v20 = v12;
    v22 = v21;
    (*(v34 + 8))(v16, v17);
    v20(v14, v15);
    v23 = sub_1000136BC(v19, v22, &v39);

    *(v18 + 4) = v23;
    *(v18 + 12) = 2114;
    swift_errorRetain();
    v24 = _swift_stdlib_bridgeErrorToNSError();
    *(v18 + 14) = v24;
    *v36 = v24;
    _os_log_impl(&_mh_execute_header, v35, v37, "Failed to store detected device event for %{public}s,\nerror: %{public}@.", v18, 0x16u);
    sub_10000B3A8(v36, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v38);
  }

  else
  {

    v12(v14, v15);
  }

  v26 = v0[16];
  v25 = v0[17];
  v28 = v0[12];
  v27 = v0[13];
  v29 = v0[9];
  v31 = v0[5];
  v30 = v0[6];

  v32 = v0[1];

  return v32();
}

uint64_t sub_100D73468()
{
  v1 = *(*v0 + 248);
  v2 = *(*v0 + 240);
  v3 = *(*v0 + 232);
  v4 = *(*v0 + 104);
  v5 = *(*v0 + 80);
  v6 = *(*v0 + 40);
  v7 = *(*v0 + 32);
  v9 = *v0;

  sub_10000B3A8(v6, &qword_101699E50, &qword_1013D97C0);
  v3(v4, v5);

  return _swift_task_switch(sub_100D73610, v7, 0);
}

uint64_t sub_100D73610()
{
  v1 = v0[25];
  v3 = v0[8];
  v2 = v0[9];
  v4 = v0[7];

  (*(v3 + 8))(v2, v4);
  v6 = v0[16];
  v5 = v0[17];
  v8 = v0[12];
  v7 = v0[13];
  v9 = v0[9];
  v11 = v0[5];
  v10 = v0[6];

  v12 = v0[1];

  return v12();
}

uint64_t sub_100D736E4()
{
  v39 = v0;
  v1 = v0[26];
  v3 = v0[19];
  v2 = v0[20];
  v4 = v0[18];
  v5 = v0[16];
  v6 = v0[14];
  v7 = v0[2];
  (*(v0[8] + 8))(v0[9], v0[7]);
  v3(v5, v7, v6);
  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[21];
  v12 = v0[15];
  v13 = v0[16];
  v14 = v0[14];
  if (v10)
  {
    v15 = v0[13];
    v16 = v0[10];
    v33 = v0[11];
    v36 = v9;
    v17 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v38 = v37;
    *v17 = 136446466;
    v34 = v8;
    Identifier.id.getter();
    sub_100D97688(&qword_101696930, &type metadata accessor for UUID);
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = v11;
    v21 = v20;
    (*(v33 + 8))(v15, v16);
    v19(v13, v14);
    v22 = sub_1000136BC(v18, v21, &v38);

    *(v17 + 4) = v22;
    *(v17 + 12) = 2114;
    swift_errorRetain();
    v23 = _swift_stdlib_bridgeErrorToNSError();
    *(v17 + 14) = v23;
    *v35 = v23;
    _os_log_impl(&_mh_execute_header, v34, v36, "Failed to store detected device event for %{public}s,\nerror: %{public}@.", v17, 0x16u);
    sub_10000B3A8(v35, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v37);
  }

  else
  {

    v11(v13, v14);
  }

  v25 = v0[16];
  v24 = v0[17];
  v27 = v0[12];
  v26 = v0[13];
  v28 = v0[9];
  v30 = v0[5];
  v29 = v0[6];

  v31 = v0[1];

  return v31();
}

uint64_t sub_100D739FC(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = *(*(sub_1000BC4D4(&qword_101699E50, &qword_1013D97C0) - 8) + 64) + 15;
  v3[5] = swift_task_alloc();
  v5 = *(*(sub_1000BC4D4(&qword_1016A9A30, &unk_1013BD120) - 8) + 64) + 15;
  v3[6] = swift_task_alloc();
  v6 = type metadata accessor for Date();
  v3[7] = v6;
  v7 = *(v6 - 8);
  v3[8] = v7;
  v8 = *(v7 + 64) + 15;
  v3[9] = swift_task_alloc();
  v9 = type metadata accessor for UUID();
  v3[10] = v9;
  v10 = *(v9 - 8);
  v3[11] = v10;
  v11 = *(v10 + 64) + 15;
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v12 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
  v3[14] = v12;
  v13 = *(v12 - 8);
  v3[15] = v13;
  v14 = *(v13 + 64) + 15;
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();

  return _swift_task_switch(sub_100D73C0C, v2, 0);
}

uint64_t sub_100D73C0C()
{
  v28 = v0;
  if (qword_101694EA0 != -1)
  {
    swift_once();
  }

  v1 = v0[17];
  v2 = v0[14];
  v3 = v0[15];
  v4 = v0[2];
  v5 = type metadata accessor for Logger();
  v0[18] = sub_1000076D4(v5, qword_1016BB490);
  v6 = *(v3 + 16);
  v0[19] = v6;
  v0[20] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[17];
  v11 = v0[14];
  v12 = v0[15];
  if (v9)
  {
    v13 = v0[13];
    log = v7;
    v14 = v0[10];
    v15 = v0[11];
    v16 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v16 = 136446466;
    *(v16 + 4) = sub_1000136BC(0xD000000000000025, 0x8000000101370F60, &v27);
    *(v16 + 12) = 2082;
    v25 = v8;
    Identifier.id.getter();
    sub_100D97688(&qword_101696930, &type metadata accessor for UUID);
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = v18;
    (*(v15 + 8))(v13, v14);
    v20 = *(v12 + 8);
    v20(v10, v11);
    v21 = sub_1000136BC(v17, v19, &v27);

    *(v16 + 14) = v21;
    _os_log_impl(&_mh_execute_header, log, v25, "%{public}s for %{public}s", v16, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v20 = *(v12 + 8);
    v20(v10, v11);
  }

  v0[21] = v20;
  static Date.trustedNow.getter(v0[9]);
  v22 = async function pointer to daemon.getter[1];
  v23 = swift_task_alloc();
  v0[22] = v23;
  *v23 = v0;
  v23[1] = sub_100D73F14;

  return daemon.getter();
}

uint64_t sub_100D73F14(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 176);
  v12 = *v1;
  *(v3 + 184) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 192) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for CloudStorageService();
  v9 = sub_100D97688(&qword_1016AA400, &type metadata accessor for Daemon);
  v10 = sub_100D97688(&unk_1016AA520, type metadata accessor for CloudStorageService);
  *v6 = v12;
  v6[1] = sub_100D740F0;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100D740F0(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 192);
  v6 = *v2;
  *(v4 + 200) = a1;
  *(v4 + 208) = v1;

  v7 = *(v3 + 184);
  v8 = *(v3 + 32);

  if (v1)
  {
    v9 = sub_100D74E70;
  }

  else
  {
    v9 = sub_100D74240;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_100D74240()
{
  v1 = v0[25];
  v2 = v0[14];
  v3 = v0[12];
  v4 = v0[2];
  Identifier.id.getter();

  return _swift_task_switch(sub_100D742B4, v1, 0);
}

uint64_t sub_100D742B4()
{
  v1 = *(v0[25] + 128);
  v2 = swift_task_alloc();
  v0[27] = v2;
  *v2 = v0;
  v2[1] = sub_100D74354;
  v3 = v0[12];
  v4 = v0[6];

  return sub_100C57B00(v4, v3);
}

uint64_t sub_100D74354()
{
  v2 = *v1;
  v3 = *(*v1 + 216);
  v12 = *v1;
  *(*v1 + 224) = v0;

  if (v0)
  {
    v4 = v2[25];
    v5 = sub_100D7492C;
  }

  else
  {
    v7 = v2[11];
    v6 = v2[12];
    v8 = v2[10];
    v9 = v2[4];
    v10 = *(v7 + 8);
    v2[29] = v10;
    v2[30] = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v10(v6, v8);
    v5 = sub_100D74498;
    v4 = v9;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100D74498()
{
  v54 = v0;
  v1 = v0[6];
  v2 = type metadata accessor for LocalFindableAccessoryRecord();
  v3 = (*(*(v2 - 8) + 48))(v1, 1, v2);
  sub_10000B3A8(v1, &qword_1016A9A30, &unk_1013BD120);
  if (v3 == 1)
  {
    v4 = v0[25];
    sub_100500BC4();
    swift_allocError();
    *v5 = xmmword_10139D940;
    *(v5 + 16) = 3;
    swift_willThrow();

    v7 = v0[19];
    v6 = v0[20];
    v8 = v0[18];
    v9 = v0[16];
    v10 = v0[14];
    v11 = v0[2];
    (*(v0[8] + 8))(v0[9], v0[7]);
    v7(v9, v11, v10);
    swift_errorRetain();
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();

    v14 = os_log_type_enabled(v12, v13);
    v15 = v0[21];
    v16 = v0[15];
    v17 = v0[16];
    v18 = v0[14];
    if (v14)
    {
      v19 = v0[13];
      v20 = v0[10];
      v48 = v0[11];
      v51 = v13;
      v21 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v53 = v52;
      *v21 = 136446466;
      v49 = v12;
      Identifier.id.getter();
      sub_100D97688(&qword_101696930, &type metadata accessor for UUID);
      v47 = dispatch thunk of CustomStringConvertible.description.getter();
      v22 = v15;
      v24 = v23;
      (*(v48 + 8))(v19, v20);
      v22(v17, v18);
      v25 = sub_1000136BC(v47, v24, &v53);

      *(v21 + 4) = v25;
      *(v21 + 12) = 2114;
      swift_errorRetain();
      v26 = _swift_stdlib_bridgeErrorToNSError();
      *(v21 + 14) = v26;
      *v50 = v26;
      _os_log_impl(&_mh_execute_header, v49, v51, "Failed to store disappeared device event for %{public}s,\nerror: %{public}@.", v21, 0x16u);
      sub_10000B3A8(v50, &qword_10169BB30, &unk_10138B3C0);

      sub_100007BAC(v52);
    }

    else
    {

      v15(v17, v18);
    }

    v40 = v0[16];
    v39 = v0[17];
    v42 = v0[12];
    v41 = v0[13];
    v43 = v0[9];
    v45 = v0[5];
    v44 = v0[6];

    v46 = v0[1];

    return v46();
  }

  else
  {
    v28 = v0[13];
    v27 = v0[14];
    v29 = v0[5];
    v30 = v0[2];
    Identifier.id.getter();
    v31 = type metadata accessor for DeviceEvent.Location(0);
    (*(*(v31 - 8) + 56))(v29, 1, 1, v31);
    v32 = swift_task_alloc();
    v0[31] = v32;
    *v32 = v0;
    v32[1] = sub_100D74CC8;
    v33 = v0[13];
    v34 = v0[9];
    v36 = v0[4];
    v35 = v0[5];
    v37 = v0[3];

    return sub_100DAB1EC(v33, 6, v34, v37, v35);
  }
}

uint64_t sub_100D7492C()
{
  v1 = v0[4];
  (*(v0[11] + 8))(v0[12], v0[10]);

  return _swift_task_switch(sub_100D749A8, v1, 0);
}

uint64_t sub_100D749A8()
{
  v40 = v0;
  v1 = v0[25];

  v2 = v0[28];
  v4 = v0[19];
  v3 = v0[20];
  v5 = v0[18];
  v6 = v0[16];
  v7 = v0[14];
  v8 = v0[2];
  (*(v0[8] + 8))(v0[9], v0[7]);
  v4(v6, v8, v7);
  swift_errorRetain();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();

  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[21];
  v13 = v0[15];
  v14 = v0[16];
  v15 = v0[14];
  if (v11)
  {
    v16 = v0[13];
    v17 = v0[10];
    v34 = v0[11];
    v37 = v10;
    v18 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v39 = v38;
    *v18 = 136446466;
    v35 = v9;
    Identifier.id.getter();
    sub_100D97688(&qword_101696930, &type metadata accessor for UUID);
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    v20 = v12;
    v22 = v21;
    (*(v34 + 8))(v16, v17);
    v20(v14, v15);
    v23 = sub_1000136BC(v19, v22, &v39);

    *(v18 + 4) = v23;
    *(v18 + 12) = 2114;
    swift_errorRetain();
    v24 = _swift_stdlib_bridgeErrorToNSError();
    *(v18 + 14) = v24;
    *v36 = v24;
    _os_log_impl(&_mh_execute_header, v35, v37, "Failed to store disappeared device event for %{public}s,\nerror: %{public}@.", v18, 0x16u);
    sub_10000B3A8(v36, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v38);
  }

  else
  {

    v12(v14, v15);
  }

  v26 = v0[16];
  v25 = v0[17];
  v28 = v0[12];
  v27 = v0[13];
  v29 = v0[9];
  v31 = v0[5];
  v30 = v0[6];

  v32 = v0[1];

  return v32();
}

uint64_t sub_100D74CC8()
{
  v1 = *(*v0 + 248);
  v2 = *(*v0 + 240);
  v3 = *(*v0 + 232);
  v4 = *(*v0 + 104);
  v5 = *(*v0 + 80);
  v6 = *(*v0 + 40);
  v7 = *(*v0 + 32);
  v9 = *v0;

  sub_10000B3A8(v6, &qword_101699E50, &qword_1013D97C0);
  v3(v4, v5);

  return _swift_task_switch(sub_100DDDDE0, v7, 0);
}

uint64_t sub_100D74E70()
{
  v39 = v0;
  v1 = v0[26];
  v3 = v0[19];
  v2 = v0[20];
  v4 = v0[18];
  v5 = v0[16];
  v6 = v0[14];
  v7 = v0[2];
  (*(v0[8] + 8))(v0[9], v0[7]);
  v3(v5, v7, v6);
  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[21];
  v12 = v0[15];
  v13 = v0[16];
  v14 = v0[14];
  if (v10)
  {
    v15 = v0[13];
    v16 = v0[10];
    v33 = v0[11];
    v36 = v9;
    v17 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v38 = v37;
    *v17 = 136446466;
    v34 = v8;
    Identifier.id.getter();
    sub_100D97688(&qword_101696930, &type metadata accessor for UUID);
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = v11;
    v21 = v20;
    (*(v33 + 8))(v15, v16);
    v19(v13, v14);
    v22 = sub_1000136BC(v18, v21, &v38);

    *(v17 + 4) = v22;
    *(v17 + 12) = 2114;
    swift_errorRetain();
    v23 = _swift_stdlib_bridgeErrorToNSError();
    *(v17 + 14) = v23;
    *v35 = v23;
    _os_log_impl(&_mh_execute_header, v34, v36, "Failed to store disappeared device event for %{public}s,\nerror: %{public}@.", v17, 0x16u);
    sub_10000B3A8(v35, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v37);
  }

  else
  {

    v11(v13, v14);
  }

  v25 = v0[16];
  v24 = v0[17];
  v27 = v0[12];
  v26 = v0[13];
  v28 = v0[9];
  v30 = v0[5];
  v29 = v0[6];

  v31 = v0[1];

  return v31();
}

uint64_t sub_100D75188(uint64_t a1, char a2)
{
  *(v3 + 184) = a2;
  *(v3 + 40) = a1;
  *(v3 + 48) = v2;
  *(v3 + 56) = *v2;
  v4 = type metadata accessor for PencilPairingService.AttachedLocalFindableAccessory(0);
  *(v3 + 64) = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  *(v3 + 72) = swift_task_alloc();
  v6 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
  *(v3 + 80) = v6;
  v7 = *(v6 - 8);
  *(v3 + 88) = v7;
  *(v3 + 96) = *(v7 + 64);
  *(v3 + 104) = swift_task_alloc();
  *(v3 + 112) = swift_task_alloc();
  *(v3 + 120) = swift_task_alloc();

  return _swift_task_switch(sub_100D752D0, v2, 0);
}

uint64_t sub_100D752D0()
{
  v41 = v0;
  if (qword_101694EA0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 120);
  v2 = *(v0 + 80);
  v3 = *(v0 + 88);
  v4 = *(v0 + 40);
  v5 = type metadata accessor for Logger();
  *(v0 + 128) = sub_1000076D4(v5, qword_1016BB490);
  v6 = *(v3 + 16);
  *(v0 + 136) = v6;
  *(v0 + 144) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 120);
  v12 = *(v0 + 80);
  v11 = *(v0 + 88);
  if (v9)
  {
    v36 = v8;
    v13 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    *v13 = 136315394;
    *(v13 + 4) = sub_1000136BC(0xD000000000000039, 0x8000000101370BB0, &v40);
    *(v13 + 12) = 2082;
    sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00);
    log = v7;
    v14 = v6;
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v16;
    v18 = *(v11 + 8);
    v18(v10, v12);
    v19 = v15;
    v6 = v14;
    v20 = sub_1000136BC(v19, v17, &v40);

    *(v13 + 14) = v20;
    _os_log_impl(&_mh_execute_header, log, v36, "%s for %{public}s", v13, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v18 = *(v11 + 8);
    v18(v10, v12);
  }

  *(v0 + 152) = v18;
  v21 = *(v0 + 112);
  v23 = *(v0 + 88);
  v22 = *(v0 + 96);
  v24 = *(v0 + 80);
  v26 = *(v0 + 48);
  v25 = *(v0 + 56);
  v27 = *(v0 + 184);
  v37 = v25;
  v39 = *(v26 + OBJC_IVAR____TtC12searchpartyd20PencilPairingService_queue);
  v6(v21, *(v0 + 40), v24);
  v28 = (*(v23 + 80) + 24) & ~*(v23 + 80);
  v29 = v28 + v22;
  v30 = (v28 + v22) & 0xFFFFFFFFFFFFFFF8;
  v31 = swift_allocObject();
  *(v0 + 160) = v31;
  *(v31 + 16) = v26;
  (*(v23 + 32))(v31 + v28, v21, v24);
  *(v31 + v29) = v27;
  *(v31 + v30 + 8) = v37;
  v32 = *(&async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult(_:) + 1);
  v38 = (&async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult(_:) + async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult(_:));

  v33 = swift_task_alloc();
  *(v0 + 168) = v33;
  *v33 = v0;
  v33[1] = sub_100D75670;

  return v38(&unk_1013E87A0, v31);
}

uint64_t sub_100D75670()
{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v4 = *(*v1 + 160);
  v5 = *v1;
  *(*v1 + 176) = v0;

  v6 = *(v2 + 48);
  if (v0)
  {
    v7 = sub_100D75A3C;
  }

  else
  {
    v7 = sub_100D757B8;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_100D757B8()
{
  v25 = v0;
  v1 = *(v0 + 144);
  v2 = *(v0 + 128);
  (*(v0 + 136))(*(v0 + 104), *(v0 + 40), *(v0 + 80));
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 152);
  v7 = *(v0 + 104);
  v9 = *(v0 + 80);
  v8 = *(v0 + 88);
  if (v5)
  {
    v10 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v10 = 136315394;
    *(v10 + 4) = sub_1000136BC(0xD000000000000039, 0x8000000101370BB0, &v24);
    *(v10 + 12) = 2082;
    sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00);
    v11 = dispatch thunk of CustomStringConvertible.description.getter();
    v13 = v12;
    v6(v7, v9);
    v14 = sub_1000136BC(v11, v13, &v24);

    *(v10 + 14) = v14;
    _os_log_impl(&_mh_execute_header, v3, v4, "%s Unpaired %{public}s. Reset attachedLocalFindableAccessory to .none", v10, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v6(v7, v9);
  }

  v15 = *(v0 + 112);
  v16 = *(v0 + 120);
  v17 = *(v0 + 104);
  v18 = *(v0 + 64);
  v19 = *(v0 + 72);
  v20 = *(v0 + 48);
  swift_storeEnumTagMultiPayload();
  v21 = OBJC_IVAR____TtC12searchpartyd20PencilPairingService_attachedLocalFindableAccessory;
  swift_beginAccess();
  sub_100DD6A88(v19, v20 + v21);
  swift_endAccess();

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_100D75A3C()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[13];
  v4 = v0[9];

  v5 = v0[1];
  v6 = v0[22];

  return v5();
}

uint64_t sub_100D75AC8(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  v3 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();

  return _swift_task_switch(sub_100D75BBC, v1, 0);
}

uint64_t sub_100D75BBC()
{
  v27 = v0;
  if (qword_101694EA0 != -1)
  {
    swift_once();
  }

  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  v4 = v0[2];
  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_1016BB490);
  (*(v2 + 16))(v1, v4, v3);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[6];
  v10 = v0[7];
  v11 = v0[5];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 136446466;
    v26 = v13;
    *(v12 + 4) = sub_1000136BC(0xD000000000000029, 0x8000000101370C70, &v26);
    *(v12 + 12) = 2082;
    sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    (*(v9 + 8))(v10, v11);
    v17 = sub_1000136BC(v14, v16, &v26);

    *(v12 + 14) = v17;
    _os_log_impl(&_mh_execute_header, v6, v7, "%{public}s for identifier %{public}s", v12, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v9 + 8))(v10, v11);
  }

  v19 = v0[3];
  v18 = v0[4];
  v20 = v0[2];
  v21 = sub_100D97688(&qword_1016BB850, type metadata accessor for PencilPairingService);
  v22 = swift_task_alloc();
  v0[8] = v22;
  v22[2] = v19;
  v22[3] = v20;
  v22[4] = v18;
  v23 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v24 = swift_task_alloc();
  v0[9] = v24;
  *v24 = v0;
  v24[1] = sub_100D75F04;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v24, v19, v21, 0xD000000000000029, 0x8000000101370C70, sub_100DD8D6C, v22, &type metadata for () + 8);
}

uint64_t sub_100D75F04()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v9 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v4 = *(v2 + 24);
    v5 = sub_100193354;
  }

  else
  {
    v6 = *(v2 + 64);
    v7 = *(v2 + 24);

    v5 = sub_100D7602C;
    v4 = v7;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100D7602C()
{
  v1 = *(v0 + 56);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100D76090(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v25[0] = a2;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v28 = *(v7 - 8);
  v8 = *(v28 + 64);
  __chkstk_darwin(v7);
  v10 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v26 = *(v11 - 8);
  v27 = v11;
  v12 = *(v26 + 64);
  __chkstk_darwin(v11);
  v14 = v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for BeaconProductInfoRecord();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15 - 8);
  v18 = v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25[1] = *(v4 + 72);
  sub_100DD9284(a1, v18, type metadata accessor for BeaconProductInfoRecord);
  v19 = (*(v16 + 80) + 16) & ~*(v16 + 80);
  v20 = (v17 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  sub_100DD921C(v18, v21 + v19, type metadata accessor for BeaconProductInfoRecord);
  *(v21 + v20) = v4;
  v22 = (v21 + ((v20 + 15) & 0xFFFFFFFFFFFFFFF8));
  *v22 = v25[0];
  v22[1] = a3;
  aBlock[4] = sub_100DD9DC4;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_101650DA0;
  v23 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v29 = _swiftEmptyArrayStorage;
  sub_100D97688(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v23);
  (*(v28 + 8))(v10, v7);
  (*(v26 + 8))(v14, v27);
}

uint64_t sub_100D76454(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v25[0] = a2;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v28 = *(v7 - 8);
  v8 = *(v28 + 64);
  __chkstk_darwin(v7);
  v10 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v26 = *(v11 - 8);
  v27 = v11;
  v12 = *(v26 + 64);
  __chkstk_darwin(v11);
  v14 = v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for PairingErrorRecord(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15 - 8);
  v18 = v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25[1] = *(v4 + 72);
  sub_100DD9284(a1, v18, type metadata accessor for PairingErrorRecord);
  v19 = (*(v16 + 80) + 16) & ~*(v16 + 80);
  v20 = (v17 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  sub_100DD921C(v18, v21 + v19, type metadata accessor for PairingErrorRecord);
  *(v21 + v20) = v4;
  v22 = (v21 + ((v20 + 15) & 0xFFFFFFFFFFFFFFF8));
  *v22 = v25[0];
  v22[1] = a3;
  aBlock[4] = sub_100DDDCA8;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_1016511D8;
  v23 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v29 = _swiftEmptyArrayStorage;
  sub_100D97688(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v23);
  (*(v28 + 8))(v10, v7);
  (*(v26 + 8))(v14, v27);
}

uint64_t sub_100D76818(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v25[0] = a2;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v28 = *(v7 - 8);
  v8 = *(v28 + 64);
  __chkstk_darwin(v7);
  v10 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v26 = *(v11 - 8);
  v27 = v11;
  v12 = *(v26 + 64);
  __chkstk_darwin(v11);
  v14 = v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for WildModeAssociationRecord(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15 - 8);
  v18 = v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25[1] = *(v4 + 72);
  sub_100DD9284(a1, v18, type metadata accessor for WildModeAssociationRecord);
  v19 = (*(v16 + 80) + 16) & ~*(v16 + 80);
  v20 = (v17 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  sub_100DD921C(v18, v21 + v19, type metadata accessor for WildModeAssociationRecord);
  *(v21 + v20) = v4;
  v22 = (v21 + ((v20 + 15) & 0xFFFFFFFFFFFFFFF8));
  *v22 = v25[0];
  v22[1] = a3;
  aBlock[4] = sub_100DDA354;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_101650E40;
  v23 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v29 = _swiftEmptyArrayStorage;
  sub_100D97688(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v23);
  (*(v28 + 8))(v10, v7);
  (*(v26 + 8))(v14, v27);
}

uint64_t sub_100D76BDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v25[0] = a2;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v28 = *(v7 - 8);
  v8 = *(v28 + 64);
  __chkstk_darwin(v7);
  v10 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v26 = *(v11 - 8);
  v27 = v11;
  v12 = *(v26 + 64);
  __chkstk_darwin(v11);
  v14 = v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for AccessoryMetadataRecord();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15 - 8);
  v18 = v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25[1] = *(v4 + 72);
  sub_100DD9284(a1, v18, type metadata accessor for AccessoryMetadataRecord);
  v19 = (*(v16 + 80) + 16) & ~*(v16 + 80);
  v20 = (v17 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  sub_100DD921C(v18, v21 + v19, type metadata accessor for AccessoryMetadataRecord);
  *(v21 + v20) = v4;
  v22 = (v21 + ((v20 + 15) & 0xFFFFFFFFFFFFFFF8));
  *v22 = v25[0];
  v22[1] = a3;
  aBlock[4] = sub_100DDC85C;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_101650FD0;
  v23 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v29 = _swiftEmptyArrayStorage;
  sub_100D97688(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v23);
  (*(v28 + 8))(v10, v7);
  (*(v26 + 8))(v14, v27);
}

uint64_t sub_100D76FDC(uint64_t a1, uint64_t a2, void (*a3)(char *), uint64_t a4, uint64_t *a5, uint64_t *a6, void (*a7)(uint64_t), uint64_t (*a8)(void))
{
  v21[1] = a4;
  v15 = sub_1000BC4D4(a5, a6);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15);
  v18 = v21 - v17;
  v19 = *(a2 + 168);
  a7(a1);
  static os_log_type_t.default.getter();
  if (qword_101695038 != -1)
  {
    swift_once();
  }

  os_log(_:dso:log:_:_:)();
  sub_100DD9284(a1, v18, a8);
  swift_storeEnumTagMultiPayload();
  a3(v18);
  return sub_10000B3A8(v18, a5, a6);
}

uint64_t sub_100D77278()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177C0A8);
  sub_1000076D4(v0, qword_10177C0A8);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100D772FC()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_1016BB490);
  v1 = sub_1000076D4(v0, qword_1016BB490);
  if (qword_101694E98 != -1)
  {
    swift_once();
  }

  v2 = sub_1000076D4(v0, qword_10177C0A8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100D773C4()
{
  v0 = sub_101129930(&off_10160D0F8);
  result = sub_1002FFC04(&unk_10160D118);
  off_1016BB4A8 = v0;
  return result;
}

uint64_t sub_100D778CC(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v3 = *(*(sub_1000BC4D4(&unk_1016C1200, &qword_1013B6240) - 8) + 64) + 15;
  v2[10] = swift_task_alloc();
  v4 = *(*(type metadata accessor for UUID() - 8) + 64) + 15;
  v2[11] = swift_task_alloc();
  v5 = *(*(sub_1000BC4D4(&qword_101698E38, &unk_101395BA0) - 8) + 64) + 15;
  v2[12] = swift_task_alloc();

  return _swift_task_switch(sub_100D779CC, 0, 0);
}

uint64_t sub_100D779CC()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[9];
  swift_defaultActor_initialize();
  *(v3 + 112) = 0xD000000000000014;
  *(v3 + 120) = 0x80000001013E8550;
  *(v3 + 152) = 0;
  *(v3 + 168) = 0;
  *(v3 + 176) = 0;
  *(v3 + 184) = 0;
  v4 = OBJC_IVAR____TtC12searchpartyd20PencilPairingService_attachedLocalFindableAccessory;
  type metadata accessor for PencilPairingService.AttachedLocalFindableAccessory(0);
  swift_storeEnumTagMultiPayload();
  v5 = OBJC_IVAR____TtC12searchpartyd20PencilPairingService_peripheralStreamProvider;
  v6 = sub_1000BC4D4(&unk_1016BB930, &qword_1013E8CD0);
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  *(v3 + v5) = AsyncStreamProvider.init()();
  v9 = OBJC_IVAR____TtC12searchpartyd20PencilPairingService_queue;
  type metadata accessor for WorkItemQueue();
  v10 = type metadata accessor for WorkItemQueue.WarningOptions();
  (*(*(v10 - 8) + 56))(v1, 1, 1, v10);
  UUID.init()();
  *(v3 + v9) = WorkItemQueue.__allocating_init(name:identifier:warningOptions:)();
  v11 = static Data.random(bytes:)();
  v13 = v12;
  v0[13] = v11;
  v0[14] = v12;
  v14 = type metadata accessor for AccessoryPairingInfo(0);
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  sub_100017D5C(v11, v13);
  v17 = sub_10024C9E8(v11, v13);
  v0[15] = v17;
  if (v17)
  {
    v18 = v0[10];
    type metadata accessor for CentralManager();
    sub_1000BC4D4(&unk_1016C2250, &unk_1013F6360);
    v19 = type metadata accessor for CentralManager.Options();
    v20 = *(v19 - 8);
    v21 = *(v20 + 72);
    v22 = (*(v20 + 80) + 32) & ~*(v20 + 80);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_101385D80;
    static CentralManager.Options.needsRestrictedStateOperation.getter();
    v0[7] = v23;
    sub_100D97688(&unk_1016C1210, &type metadata accessor for CentralManager.Options);
    sub_1000BC4D4(&unk_1016C2260, &unk_101395BB0);
    sub_1000041A4(&qword_1016C1220, &unk_1016C2260, &unk_101395BB0);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    (*(v20 + 56))(v18, 0, 1, v19);
    v24 = async function pointer to CentralManager.__allocating_init(options:)[1];
    v25 = swift_task_alloc();
    v0[16] = v25;
    *v25 = v0;
    v25[1] = sub_100D77F04;
    v26 = v0[10];

    return CentralManager.__allocating_init(options:)(v26);
  }

  else
  {
    if (qword_101694EA0 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    sub_1000076D4(v27, qword_1016BB490);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v28, v29, "Missing critical information to init pairing ", v30, 2u);
    }

    v32 = v0[8];
    v31 = v0[9];
    sub_100016590(v11, v13);

    v33 = *(v3 + 120);

    v34 = *(v3 + 168);

    v35 = *(v3 + 176);

    sub_100DD92EC(v3 + v4, type metadata accessor for PencilPairingService.AttachedLocalFindableAccessory);
    v36 = *(v3 + v5);

    v37 = *(v3 + v9);

    type metadata accessor for PencilPairingService(0);
    swift_defaultActor_destroy();

    v38 = *(*v31 + 48);
    v39 = *(*v31 + 52);
    swift_deallocPartialClassInstance();
    v41 = v0[11];
    v40 = v0[12];
    v42 = v0[10];

    v43 = v0[1];

    return v43(0);
  }
}

uint64_t sub_100D77F04(uint64_t a1)
{
  v2 = *(*v1 + 128);
  v4 = *v1;
  *(*v1 + 136) = a1;

  return _swift_task_switch(sub_100D78004, 0, 0);
}

uint64_t sub_100D78004()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 72);
  v2[18] = *(v0 + 136);
  v2[20] = v1;
  type metadata accessor for AccessoryPairingValidator();
  v3 = swift_allocObject();
  v4 = type metadata accessor for DeviceIdentityUtility();
  *(v0 + 144) = v4;
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  v7 = swift_allocObject();

  swift_defaultActor_initialize();
  v8 = OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_certExpiryDate;
  v9 = type metadata accessor for Date();
  *(v0 + 152) = v9;
  v10 = *(v9 - 8);
  v11 = *(v10 + 56);
  *(v0 + 160) = v11;
  *(v0 + 168) = (v10 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v11(v7 + v8, 1, 1, v9);
  *(v7 + OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_refKey) = 0;
  *(v7 + OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_certs) = _swiftEmptyArrayStorage;
  *(v7 + OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_signingType) = 9;
  *(v3 + 16) = v7;
  *(v3 + 24) = 0;
  v2[17] = v3;
  *(v0 + 48) = 0;
  *(v0 + 32) = 0u;
  *(v0 + 16) = 0u;
  v12 = swift_task_alloc();
  *(v0 + 176) = v12;
  *v12 = v0;
  v12[1] = sub_100D781B0;

  return (sub_1011E6C88)(v0 + 16);
}

uint64_t sub_100D781B0(uint64_t a1)
{
  v2 = *(*v1 + 176);
  v4 = *v1;
  *(*v1 + 184) = a1;

  return _swift_task_switch(sub_100D782B0, 0, 0);
}

uint64_t sub_100D782B0()
{
  v2 = v0[20];
  v1 = v0[21];
  v4 = v0[18];
  v3 = v0[19];
  v5 = v0[8];
  v6 = v0[9];
  *(v6 + OBJC_IVAR____TtC12searchpartyd20PencilPairingService_locationPublisher) = v0[23];
  type metadata accessor for PencilLocationsFetcher();
  v7 = swift_allocObject();
  swift_defaultActor_initialize();
  v8 = *(v4 + 48);
  v9 = *(v4 + 52);
  v10 = swift_allocObject();
  swift_defaultActor_initialize();
  v2(v10 + OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_certExpiryDate, 1, 1, v3);
  *(v10 + OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_refKey) = 0;
  *(v10 + OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_certs) = _swiftEmptyArrayStorage;
  *(v10 + OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_signingType) = 2;
  *(v7 + 112) = v10;
  *(v6 + OBJC_IVAR____TtC12searchpartyd20PencilPairingService_locationsFetcher) = v7;
  *(v6 + 128) = v5;

  return _swift_task_switch(sub_100D783E4, v6, 0);
}

uint64_t sub_100D783E4()
{
  v1 = v0[15];
  v2 = v0[8];
  sub_100016590(v0[13], v0[14]);

  v4 = v0[11];
  v3 = v0[12];
  v5 = v0[9];
  v6 = v0[10];

  v7 = v0[1];

  return v7(v5);
}

uint64_t sub_100D78484()
{
  *(v1 + 3256) = v0;
  v2 = async function pointer to daemon.getter[1];
  v3 = swift_task_alloc();
  *(v1 + 3304) = v3;
  *v3 = v1;
  v3[1] = sub_100D78518;

  return daemon.getter();
}

uint64_t sub_100D78518(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 3304);
  v12 = *v1;
  *(v3 + 3352) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 3400) = v6;
  v7 = type metadata accessor for Daemon();
  UnlockService = type metadata accessor for FirstUnlockService();
  v9 = sub_100D97688(&qword_1016AA400, &type metadata accessor for Daemon);
  v10 = sub_100D97688(&qword_10169BD10, &type metadata accessor for FirstUnlockService);
  *v6 = v12;
  v6[1] = sub_100D786F4;

  return ActorServiceDaemon.getService<A>()(v7, UnlockService, v9, v10);
}

uint64_t sub_100D786F4(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 3400);
  v5 = *v2;
  *(*v2 + 3448) = a1;

  v6 = *(v3 + 3352);
  v7 = *(v3 + 3256);
  if (v1)
  {

    v8 = sub_100D78E64;
  }

  else
  {

    v8 = sub_100D78858;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_100D78858()
{
  if (qword_101694EA0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[437] = sub_1000076D4(v1, qword_1016BB490);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Waiting for first unlock", v4, 2u);
  }

  v5 = *(&async function pointer to dispatch thunk of FirstUnlockService.waitForFirstUnlock() + 1);
  v9 = (&async function pointer to dispatch thunk of FirstUnlockService.waitForFirstUnlock() + async function pointer to dispatch thunk of FirstUnlockService.waitForFirstUnlock());
  v6 = swift_task_alloc();
  v0[443] = v6;
  *v6 = v0;
  v6[1] = sub_100D789BC;
  v7 = v0[431];

  return v9();
}

uint64_t sub_100D789BC()
{
  v1 = *(*v0 + 3544);
  v2 = *(*v0 + 3256);
  v4 = *v0;

  return _swift_task_switch(sub_100D78ACC, v2, 0);
}

uint64_t sub_100D78ACC()
{
  v1 = *(v0 + 3496);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Device is now unlocked", v4, 2u);
  }

  v5 = *(v0 + 3256);

  swift_asyncLet_begin();
  swift_asyncLet_begin();
  swift_asyncLet_begin();
  swift_asyncLet_begin();
  swift_asyncLet_begin();

  return _swift_asyncLet_get(v0 + 16);
}

uint64_t sub_100D78E00()
{
  v1 = *(v0 + 3448);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100D78E64()
{
  if (qword_101694EA0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_1016BB490);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "First unlock service is not available. Bailing", v4, 2u);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_100D78F7C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100036434;

  return sub_100D83CEC();
}

uint64_t sub_100D7900C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10003633C;

  return sub_100D864F4();
}

uint64_t sub_100D7909C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100036434;

  return sub_100D7912C();
}

uint64_t sub_100D7912C()
{
  v1[3] = v0;
  v1[4] = *v0;
  v2 = *(*(sub_1000BC4D4(&qword_10169A068, &qword_1013933F0) - 8) + 64) + 15;
  v1[5] = swift_task_alloc();
  v3 = *(*(sub_1000BC4D4(&qword_10169A070, &qword_1013933F8) - 8) + 64) + 15;
  v1[6] = swift_task_alloc();
  v4 = sub_1000BC4D4(&unk_10169A080, &qword_1013E8BC0);
  v1[7] = v4;
  v5 = *(v4 - 8);
  v1[8] = v5;
  v6 = *(v5 + 64) + 15;
  v1[9] = swift_task_alloc();
  v7 = sub_1000BC4D4(&qword_10169A078, &unk_101393400);
  v1[10] = v7;
  v8 = *(v7 - 8);
  v1[11] = v8;
  v9 = *(v8 + 64) + 15;
  v1[12] = swift_task_alloc();

  return _swift_task_switch(sub_100D792F8, v0, 0);
}

uint64_t sub_100D792F8()
{
  v20 = v0;
  if (qword_101694EA0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 104) = sub_1000076D4(v1, qword_1016BB490);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v19 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_1000136BC(0xD000000000000027, 0x8000000101371190, &v19);
    _os_log_impl(&_mh_execute_header, v2, v3, "%s", v4, 0xCu);
    sub_100007BAC(v5);
  }

  v6 = *(v0 + 96);
  v8 = *(v0 + 64);
  v7 = *(v0 + 72);
  v9 = *(v0 + 56);
  *(v0 + 112) = *(*(v0 + 24) + 144);
  sub_100D7BE70();
  AsyncStream.makeAsyncIterator()();
  (*(v8 + 8))(v7, v9);
  v10 = sub_100D97688(&qword_1016BB850, type metadata accessor for PencilPairingService);
  v11 = enum case for CentralManager.State.restricted(_:);
  *(v0 + 208) = enum case for CentralManager.State.poweredOn(_:);
  *(v0 + 212) = v11;
  *(v0 + 120) = v10;
  *(v0 + 128) = 0;
  v12 = *(v0 + 24);
  v13 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v14 = swift_task_alloc();
  *(v0 + 136) = v14;
  *v14 = v0;
  v14[1] = sub_100D79564;
  v15 = *(v0 + 96);
  v16 = *(v0 + 80);
  v17 = *(v0 + 48);

  return AsyncStream.Iterator.next(isolation:)(v17, v12, v10, v16);
}

uint64_t sub_100D79564()
{
  v1 = *(*v0 + 136);
  v2 = *(*v0 + 24);
  v4 = *v0;

  return _swift_task_switch(sub_100D79674, v2, 0);
}

uint64_t sub_100D79674()
{
  v1 = *(v0 + 48);
  v2 = sub_1000BC4D4(&qword_10169A098, &unk_101393410);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    (*(*(v0 + 88) + 8))(*(v0 + 96), *(v0 + 80));
    goto LABEL_10;
  }

  v3 = *(v0 + 128);
  v4 = *(v0 + 40);
  *(v0 + 144) = *v1;
  sub_1000D2AD8(v1 + *(v2 + 48), v4, &qword_10169A068, &qword_1013933F0);
  static Task<>.checkCancellation()();
  if (v3)
  {
    (*(*(v0 + 88) + 8))(*(v0 + 96), *(v0 + 80));

    v5 = *(v0 + 104);
    sub_10000B3A8(*(v0 + 40), &qword_10169A068, &qword_1013933F0);
    swift_errorRetain();
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      swift_errorRetain();
      v10 = _swift_stdlib_bridgeErrorToNSError();
      *(v8 + 4) = v10;
      *v9 = v10;
      _os_log_impl(&_mh_execute_header, v6, v7, "Error from subscribeToAccessoryConnectionChanges: %@", v8, 0xCu);
      sub_10000B3A8(v9, &qword_10169BB30, &unk_10138B3C0);
    }

    else
    {
    }

LABEL_10:
    v25 = *(v0 + 96);
    v26 = *(v0 + 72);
    v28 = *(v0 + 40);
    v27 = *(v0 + 48);

    v29 = *(v0 + 8);

    return v29();
  }

  v12 = *(v0 + 208);
  v11 = *(v0 + 212);
  sub_1000BC4D4(&qword_10169BCF0, &unk_1013E2690);
  v13 = type metadata accessor for CentralManager.State();
  v14 = *(v13 - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  *(v0 + 152) = v17;
  *(v17 + 16) = xmmword_10138BBE0;
  v18 = v17 + v16;
  v19 = *(v14 + 104);
  v19(v18, v12, v13);
  v19(v18 + v15, v11, v13);
  v20 = async function pointer to CentralManagerProtocol.await(states:)[1];
  v21 = swift_task_alloc();
  *(v0 + 160) = v21;
  v22 = type metadata accessor for CentralManager();
  v23 = sub_100D97688(&unk_1016C1160, &type metadata accessor for CentralManager);
  *v21 = v0;
  v21[1] = sub_100D79A84;
  v24 = *(v0 + 112);

  return CentralManagerProtocol.await(states:)(v17, v22, v23);
}

uint64_t sub_100D79A84()
{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v4 = *v1;
  *(*v1 + 168) = v0;

  v5 = *(v2 + 152);
  v6 = *(v2 + 24);

  if (v0)
  {
    v7 = sub_100D79F64;
  }

  else
  {
    v7 = sub_100D79BCC;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_100D79BCC()
{
  v1 = v0[18];
  v3 = v0[14];
  v2 = v0[15];
  v5 = v0[4];
  v4 = v0[5];
  v6 = v0[3];
  type metadata accessor for Transaction();
  v0[22] = static Transaction.$current.getter();
  v0[2] = v1;
  v7 = swift_task_alloc();
  v0[23] = v7;
  v7[2] = v4;
  v7[3] = v3;
  v7[4] = v6;
  v7[5] = v5;
  v8 = async function pointer to TaskLocal.withValue<A>(_:operation:isolation:file:line:)[1];

  v9 = swift_task_alloc();
  v0[24] = v9;
  *v9 = v0;
  v9[1] = sub_100D79D24;

  return TaskLocal.withValue<A>(_:operation:isolation:file:line:)();
}

uint64_t sub_100D79D24()
{
  v2 = *v1;
  v3 = *(*v1 + 192);
  v13 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    v5 = v2[22];
    v4 = v2[23];
    v6 = v2[18];
    v7 = v2[3];

    v8 = sub_100D7A128;
  }

  else
  {
    v10 = v2[22];
    v9 = v2[23];
    v11 = v2[18];
    v7 = v2[3];

    v8 = sub_100D79E80;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_100D79E80()
{
  v1 = v0[18];
  v2 = v0[5];

  sub_10000B3A8(v2, &qword_10169A068, &qword_1013933F0);
  v0[16] = v0[25];
  v3 = v0[15];
  v4 = v0[3];
  v5 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v6 = swift_task_alloc();
  v0[17] = v6;
  *v6 = v0;
  v6[1] = sub_100D79564;
  v7 = v0[12];
  v8 = v0[10];
  v9 = v0[6];

  return AsyncStream.Iterator.next(isolation:)(v9, v4, v3, v8);
}

uint64_t sub_100D79F64()
{
  v1 = v0[18];
  v3 = v0[11];
  v2 = v0[12];
  v4 = v0[10];

  (*(v3 + 8))(v2, v4);
  v5 = v0[21];
  v6 = v0[13];
  sub_10000B3A8(v0[5], &qword_10169A068, &qword_1013933F0);
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v11;
    *v10 = v11;
    _os_log_impl(&_mh_execute_header, v7, v8, "Error from subscribeToAccessoryConnectionChanges: %@", v9, 0xCu);
    sub_10000B3A8(v10, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  v12 = v0[12];
  v13 = v0[9];
  v15 = v0[5];
  v14 = v0[6];

  v16 = v0[1];

  return v16();
}

uint64_t sub_100D7A128()
{
  v1 = v0[18];
  v3 = v0[11];
  v2 = v0[12];
  v4 = v0[10];

  (*(v3 + 8))(v2, v4);
  v5 = v0[25];
  v6 = v0[13];
  sub_10000B3A8(v0[5], &qword_10169A068, &qword_1013933F0);
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v11;
    *v10 = v11;
    _os_log_impl(&_mh_execute_header, v7, v8, "Error from subscribeToAccessoryConnectionChanges: %@", v9, 0xCu);
    sub_10000B3A8(v10, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  v12 = v0[12];
  v13 = v0[9];
  v15 = v0[5];
  v14 = v0[6];

  v16 = v0[1];

  return v16();
}

uint64_t sub_100D7A2EC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100036434;

  return sub_100D7A37C();
}

uint64_t sub_100D7A37C()
{
  v1[26] = v0;
  v2 = type metadata accessor for UUID();
  v1[27] = v2;
  v3 = *(v2 - 8);
  v1[28] = v3;
  v1[29] = *(v3 + 64);
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();
  v4 = type metadata accessor for CloudStorageStore.State(0);
  v1[32] = v4;
  v5 = *(v4 - 8);
  v1[33] = v5;
  v6 = *(v5 + 64) + 15;
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();
  v1[38] = swift_task_alloc();
  v1[39] = swift_task_alloc();
  v7 = *(*(sub_1000BC4D4(&qword_1016AA530, &unk_1013CAF90) - 8) + 64) + 15;
  v1[40] = swift_task_alloc();
  v8 = sub_1000BC4D4(&qword_1016B2F50, &unk_1013BD140);
  v1[41] = v8;
  v9 = *(v8 - 8);
  v1[42] = v9;
  v10 = *(v9 + 64) + 15;
  v1[43] = swift_task_alloc();
  v11 = sub_1000BC4D4(&qword_1016AA538, &unk_1013BD130);
  v1[44] = v11;
  v12 = *(v11 - 8);
  v1[45] = v12;
  v13 = *(v12 + 64) + 15;
  v1[46] = swift_task_alloc();
  v14 = sub_1000BC4D4(&unk_1016AA540, &unk_1013CAFA0);
  v1[47] = v14;
  v15 = *(v14 - 8);
  v1[48] = v15;
  v16 = *(v15 + 64) + 15;
  v1[49] = swift_task_alloc();

  return _swift_task_switch(sub_100D7A658, v0, 0);
}

uint64_t sub_100D7A658()
{
  if (qword_101694EA0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 400) = sub_1000076D4(v1, qword_1016BB490);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Monitoring CloudKit state stream", v4, 2u);
  }

  v5 = async function pointer to daemon.getter[1];
  v6 = swift_task_alloc();
  *(v0 + 408) = v6;
  *v6 = v0;
  v6[1] = sub_100D7A7A8;

  return daemon.getter();
}

uint64_t sub_100D7A7A8(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 408);
  v12 = *v1;
  *(v3 + 416) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 424) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for CloudStorageService();
  v9 = sub_100D97688(&qword_1016AA400, &type metadata accessor for Daemon);
  v10 = sub_100D97688(&unk_1016AA520, type metadata accessor for CloudStorageService);
  *v6 = v12;
  v6[1] = sub_100D7A984;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100D7A984(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 424);
  v6 = *v2;
  v4[54] = a1;
  v4[55] = v1;

  if (v1)
  {
    v7 = v4[26];
    v8 = sub_100D7B994;
  }

  else
  {
    v9 = v4[52];

    v8 = sub_100D7AABC;
    v7 = a1;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_100D7AABC()
{
  v1 = *(*(v0 + 432) + 128);
  *(v0 + 448) = v1;
  return _swift_task_switch(sub_100D7AAE0, v1, 0);
}

uint64_t sub_100D7AAE0()
{
  v1 = v0[56];
  v2 = v0[49];
  v4 = v0[45];
  v3 = v0[46];
  v5 = v0[44];
  v6 = v0[32];
  v7 = v0[26];
  swift_allocObject();
  swift_weakInit();
  (*(v4 + 104))(v3, enum case for AsyncStream.Continuation.BufferingPolicy.unbounded<A>(_:), v5);
  AsyncStream.init(_:bufferingPolicy:_:)();

  return _swift_task_switch(sub_100D7ABEC, v7, 0);
}

uint64_t sub_100D7ABEC()
{
  v1 = v0[49];
  v2 = v0[47];
  v3 = v0[43];
  AsyncStream.makeAsyncIterator()();
  v4 = sub_100D97688(&qword_1016BB850, type metadata accessor for PencilPairingService);
  v0[57] = v4;
  v5 = v0[26];
  v6 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v7 = swift_task_alloc();
  v0[58] = v7;
  *v7 = v0;
  v7[1] = sub_100D7ACE8;
  v8 = v0[43];
  v9 = v0[40];
  v10 = v0[41];

  return AsyncStream.Iterator.next(isolation:)(v9, v5, v4, v10);
}

uint64_t sub_100D7ACE8()
{
  v1 = *(*v0 + 464);
  v2 = *(*v0 + 208);
  v4 = *v0;

  return _swift_task_switch(sub_100D7ADF8, v2, 0);
}

uint64_t sub_100D7ADF8()
{
  v1 = *(v0 + 320);
  if ((*(*(v0 + 264) + 48))(v1, 1, *(v0 + 256)) == 1)
  {
    v2 = *(v0 + 432);
    v4 = *(v0 + 384);
    v3 = *(v0 + 392);
    v5 = *(v0 + 376);
    v7 = *(v0 + 336);
    v6 = *(v0 + 344);
    v8 = *(v0 + 328);

    (*(v7 + 8))(v6, v8);
    (*(v4 + 8))(v3, v5);
    v9 = *(v0 + 392);
    v10 = *(v0 + 368);
    v11 = *(v0 + 344);
    v13 = *(v0 + 312);
    v12 = *(v0 + 320);
    v15 = *(v0 + 296);
    v14 = *(v0 + 304);
    v17 = *(v0 + 280);
    v16 = *(v0 + 288);
    v18 = *(v0 + 272);
    v85 = *(v0 + 248);
    v86 = *(v0 + 240);

    v19 = *(v0 + 8);

    return v19();
  }

  v21 = *(v0 + 400);
  v23 = *(v0 + 304);
  v22 = *(v0 + 312);
  sub_100DD921C(v1, v22, type metadata accessor for CloudStorageStore.State);
  sub_100DD9284(v22, v23, type metadata accessor for CloudStorageStore.State);
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();
  v26 = os_log_type_enabled(v24, v25);
  v27 = *(v0 + 304);
  if (v26)
  {
    v28 = *(v0 + 296);
    v29 = *(v0 + 256);
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    *(v0 + 200) = v31;
    *v30 = 136446210;
    sub_100DD9284(v27, v28, type metadata accessor for CloudStorageStore.State);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v33 = *(v0 + 248);
        v34 = *(v0 + 216);
        v35 = *(v0 + 224);
        (*(v35 + 32))(v33, *(v0 + 296), v34);
        *(v0 + 160) = 0;
        *(v0 + 168) = 0xE000000000000000;
        _StringGuts.grow(_:)(25);
        v36 = *(v0 + 168);

        *(v0 + 144) = 0xD00000000000002ELL;
        *(v0 + 152) = 0x800000010136FDD0;
        sub_100D97688(&qword_101696930, &type metadata accessor for UUID);
        v37._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v37);

        v38 = *(v0 + 144);
        v39 = *(v0 + 152);
        (*(v35 + 8))(v33, v34);
      }

      else
      {
        v38 = 0x6E776F6E6B6E752ELL;
        v39 = 0xE800000000000000;
      }
    }

    else
    {
      sub_100031694(*(v0 + 296), v0 + 56);
      *(v0 + 176) = 0;
      *(v0 + 184) = 0xE000000000000000;
      v40._countAndFlagsBits = 0x65696669646F6D2ELL;
      v40._object = 0xEA00000000002864;
      String.append(_:)(v40);
      sub_1000BC4D4(&unk_1016AA550, &qword_1013CAFC0);
      _print_unlocked<A, B>(_:_:)();
      v41._countAndFlagsBits = 41;
      v41._object = 0xE100000000000000;
      String.append(_:)(v41);
      v38 = *(v0 + 176);
      v39 = *(v0 + 184);
      sub_100007BAC((v0 + 56));
    }

    sub_100DD92EC(*(v0 + 304), type metadata accessor for CloudStorageStore.State);
    v42 = sub_1000136BC(v38, v39, (v0 + 200));

    *(v30 + 4) = v42;
    _os_log_impl(&_mh_execute_header, v24, v25, "cloudKitAccountStateStream event: %{public}s", v30, 0xCu);
    sub_100007BAC(v31);
  }

  else
  {

    sub_100DD92EC(v27, type metadata accessor for CloudStorageStore.State);
  }

  v43 = *(v0 + 256);
  sub_100DD9284(*(v0 + 312), *(v0 + 288), type metadata accessor for CloudStorageStore.State);
  v44 = swift_getEnumCaseMultiPayload();
  if (v44)
  {
    if (v44 == 1)
    {
      v45 = *(v0 + 240);
      v46 = *(v0 + 248);
      v47 = *(v0 + 224);
      v49 = *(v0 + 208);
      v48 = *(v0 + 216);
      v50 = *(v47 + 32);
      v50(v45, *(v0 + 288), v48);
      (*(v47 + 16))(v46, v45, v48);
      v51 = (*(v47 + 80) + 24) & ~*(v47 + 80);
      v52 = swift_allocObject();
      *(v0 + 472) = v52;
      *(v52 + 16) = v49;
      v50(v52 + v51, v46, v48);
      v53 = async function pointer to withTimeout<A>(_:block:)[1];

      v54 = swift_task_alloc();
      *(v0 + 480) = v54;
      *v54 = v0;
      v54[1] = sub_100D7B780;

      return withTimeout<A>(_:block:)(v54, 0x40AAD21B3B700000, 3, &unk_1013E8BA8, v52, &type metadata for () + 8);
    }
  }

  else
  {
    sub_100007BAC(*(v0 + 288));
  }

  v55 = *(v0 + 400);
  sub_100DD9284(*(v0 + 312), *(v0 + 280), type metadata accessor for CloudStorageStore.State);
  v56 = Logger.logObject.getter();
  v57 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v56, v57))
  {
    v59 = *(v0 + 272);
    v58 = *(v0 + 280);
    v60 = *(v0 + 256);
    v61 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    *(v0 + 192) = v62;
    *v61 = 136315138;
    sub_100DD9284(v58, v59, type metadata accessor for CloudStorageStore.State);
    v63 = swift_getEnumCaseMultiPayload();
    if (v63)
    {
      if (v63 == 1)
      {
        v64 = *(v0 + 248);
        v65 = *(v0 + 216);
        v66 = *(v0 + 224);
        (*(v66 + 32))(v64, *(v0 + 272), v65);
        *(v0 + 112) = 0;
        *(v0 + 120) = 0xE000000000000000;
        _StringGuts.grow(_:)(25);
        v67 = *(v0 + 120);

        *(v0 + 96) = 0xD00000000000002ELL;
        *(v0 + 104) = 0x800000010136FDD0;
        sub_100D97688(&qword_101696930, &type metadata accessor for UUID);
        v68._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v68);

        v69 = *(v0 + 96);
        v70 = *(v0 + 104);
        (*(v66 + 8))(v64, v65);
      }

      else
      {
        v69 = 0x6E776F6E6B6E752ELL;
        v70 = 0xE800000000000000;
      }
    }

    else
    {
      sub_100031694(*(v0 + 272), v0 + 16);
      *(v0 + 128) = 0;
      *(v0 + 136) = 0xE000000000000000;
      v74._countAndFlagsBits = 0x65696669646F6D2ELL;
      v74._object = 0xEA00000000002864;
      String.append(_:)(v74);
      sub_1000BC4D4(&unk_1016AA550, &qword_1013CAFC0);
      _print_unlocked<A, B>(_:_:)();
      v75._countAndFlagsBits = 41;
      v75._object = 0xE100000000000000;
      String.append(_:)(v75);
      v69 = *(v0 + 128);
      v70 = *(v0 + 136);
      sub_100007BAC((v0 + 16));
    }

    v76 = *(v0 + 312);
    sub_100DD92EC(*(v0 + 280), type metadata accessor for CloudStorageStore.State);
    v77 = sub_1000136BC(v69, v70, (v0 + 192));

    *(v61 + 4) = v77;
    _os_log_impl(&_mh_execute_header, v56, v57, "Ignoring %s", v61, 0xCu);
    sub_100007BAC(v62);

    v73 = v76;
  }

  else
  {
    v71 = *(v0 + 312);
    v72 = *(v0 + 280);

    sub_100DD92EC(v72, type metadata accessor for CloudStorageStore.State);
    v73 = v71;
  }

  sub_100DD92EC(v73, type metadata accessor for CloudStorageStore.State);
  v78 = *(v0 + 456);
  v79 = *(v0 + 208);
  v80 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v81 = swift_task_alloc();
  *(v0 + 464) = v81;
  *v81 = v0;
  v81[1] = sub_100D7ACE8;
  v82 = *(v0 + 344);
  v83 = *(v0 + 320);
  v84 = *(v0 + 328);

  return AsyncStream.Iterator.next(isolation:)(v83, v79, v78, v84);
}

uint64_t sub_100D7B780()
{
  v2 = *v1;
  v3 = *(*v1 + 480);
  v9 = *v1;
  *(*v1 + 488) = v0;

  if (v0)
  {
    v4 = *(v2 + 208);
    v5 = sub_100D7BBE4;
  }

  else
  {
    v6 = *(v2 + 472);
    v7 = *(v2 + 208);

    v5 = sub_100D7B8A8;
    v4 = v7;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100D7B8A8()
{
  v1 = v0[39];
  (*(v0[28] + 8))(v0[30], v0[27]);
  sub_100DD92EC(v1, type metadata accessor for CloudStorageStore.State);
  v2 = v0[57];
  v3 = v0[26];
  v4 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v5 = swift_task_alloc();
  v0[58] = v5;
  *v5 = v0;
  v5[1] = sub_100D7ACE8;
  v6 = v0[43];
  v7 = v0[40];
  v8 = v0[41];

  return AsyncStream.Iterator.next(isolation:)(v7, v3, v2, v8);
}

uint64_t sub_100D7B994()
{
  v27 = v0;
  v1 = v0[55];
  v2 = v0[52];
  v3 = v0[50];

  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[55];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v26 = v10;
    *v8 = 136446466;
    *(v8 + 4) = sub_1000136BC(0xD000000000000016, 0x8000000101371170, &v26);
    *(v8 + 12) = 2114;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v11;
    *v9 = v11;
    _os_log_impl(&_mh_execute_header, v4, v5, "%{public}s error %{public}@", v8, 0x16u);
    sub_10000B3A8(v9, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v10);
  }

  else
  {
  }

  v12 = v0[49];
  v13 = v0[46];
  v14 = v0[43];
  v16 = v0[39];
  v15 = v0[40];
  v18 = v0[37];
  v17 = v0[38];
  v20 = v0[35];
  v19 = v0[36];
  v21 = v0[34];
  v24 = v0[31];
  v25 = v0[30];

  v22 = v0[1];

  return v22();
}

uint64_t sub_100D7BBE4()
{
  v1 = v0[61];
  v2 = v0[59];
  v3 = v0[50];

  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[61];
  v8 = v0[39];
  v9 = v0[30];
  v10 = v0[27];
  v11 = v0[28];
  if (v6)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138543362;
    swift_errorRetain();
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 4) = v14;
    *v13 = v14;
    _os_log_impl(&_mh_execute_header, v4, v5, "bluetoothUnpair failed: %{public}@", v12, 0xCu);
    sub_10000B3A8(v13, &qword_10169BB30, &unk_10138B3C0);
  }

  (*(v11 + 8))(v9, v10);
  sub_100DD92EC(v8, type metadata accessor for CloudStorageStore.State);
  v15 = v0[57];
  v16 = v0[26];
  v17 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v18 = swift_task_alloc();
  v0[58] = v18;
  *v18 = v0;
  v18[1] = sub_100D7ACE8;
  v19 = v0[43];
  v20 = v0[40];
  v21 = v0[41];

  return AsyncStream.Iterator.next(isolation:)(v20, v16, v15, v21);
}

uint64_t sub_100D7BDE0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100036434;

  return sub_100D7C2F0();
}

uint64_t sub_100D7BE70()
{
  v1 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v24 - v4;
  v6 = type metadata accessor for PencilPairingService.AttachedLocalFindableAccessory(0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC12searchpartyd20PencilPairingService_attachedLocalFindableAccessory;
  swift_beginAccess();
  sub_100DD9284(v0 + v10, v9, type metadata accessor for PencilPairingService.AttachedLocalFindableAccessory);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_1000BC4D4(&qword_1016BB918, &qword_1013E8B38);
      v12 = *(sub_1000BC4D4(&qword_10169A068, &qword_1013933F0) - 8);
      v13 = *(v12 + 72);
      v14 = (*(v12 + 80) + 32) & ~*(v12 + 80);
      v15 = swift_allocObject();
      *(v15 + 16) = xmmword_101385D80;
      type metadata accessor for SPPairingSessionError(0);
      v24[1] = 16;
      sub_100032898(_swiftEmptyArrayStorage);
      sub_100D97688(&unk_1016B2710, type metadata accessor for SPPairingSessionError);
      _BridgedStoredNSError.init(_:userInfo:)();
      *(v15 + v14) = v24[2];
      swift_storeEnumTagMultiPayload();
      sub_100DD92EC(v9, type metadata accessor for PencilPairingService.AttachedLocalFindableAccessory);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    v16 = sub_1000BC4D4(&qword_1016BB8E0, &qword_1013E8A60);
    (*(v2 + 32))(v5, &v9[*(v16 + 48)], v1);
    sub_1000BC4D4(&qword_1016BB918, &qword_1013E8B38);
    v17 = *(sub_1000BC4D4(&qword_10169A068, &qword_1013933F0) - 8);
    v18 = *(v17 + 72);
    v19 = (*(v17 + 80) + 32) & ~*(v17 + 80);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_101385D80;
    (*(v2 + 16))(v20 + v19, v5, v1);
    type metadata accessor for PencilPairingService.PeripheralDiscovery(0);
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    (*(v2 + 8))(v5, v1);
    v21 = type metadata accessor for UUID();
    (*(*(v21 - 8) + 8))(v9, v21);
  }

  else
  {
    sub_100DD92EC(v9, type metadata accessor for PencilPairingService.AttachedLocalFindableAccessory);
  }

  v22 = *(v0 + OBJC_IVAR____TtC12searchpartyd20PencilPairingService_peripheralStreamProvider);
  AsyncStreamProvider.stream(initialEvents:)();
}

uint64_t sub_100D7C2F0()
{
  v1[5] = v0;
  v2 = *(*(sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0) - 8) + 64) + 15;
  v1[6] = swift_task_alloc();
  v3 = *(*(sub_1000BC4D4(&qword_1016AA4E0, &unk_1013BD0E0) - 8) + 64) + 15;
  v1[7] = swift_task_alloc();
  v4 = sub_1000BC4D4(&qword_1016998D0, &unk_1013931A0);
  v1[8] = v4;
  v5 = *(v4 - 8);
  v1[9] = v5;
  v1[10] = *(v5 + 64);
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v6 = type metadata accessor for BeaconIdentifier();
  v1[13] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v1[14] = swift_task_alloc();
  v8 = *(*(sub_1000BC4D4(&unk_1016AA510, &unk_101393150) - 8) + 64) + 15;
  v1[15] = swift_task_alloc();
  v9 = type metadata accessor for DeviceEvent.AttachmentInfo(0);
  v1[16] = v9;
  v10 = *(v9 - 8);
  v1[17] = v10;
  v11 = *(v10 + 64) + 15;
  v1[18] = swift_task_alloc();
  v12 = type metadata accessor for OwnedBeaconRecord();
  v1[19] = v12;
  v13 = *(v12 - 8);
  v1[20] = v13;
  v14 = *(v13 + 64) + 15;
  v1[21] = swift_task_alloc();
  v15 = type metadata accessor for UUID();
  v1[22] = v15;
  v16 = *(v15 - 8);
  v1[23] = v16;
  v1[24] = *(v16 + 64);
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v17 = type metadata accessor for DeviceEvent(0);
  v1[28] = v17;
  v18 = *(v17 - 8);
  v1[29] = v18;
  v1[30] = *(v18 + 64);
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();
  v19 = *(*(sub_1000BC4D4(&unk_1016AA500, &unk_1013B3600) - 8) + 64) + 15;
  v1[38] = swift_task_alloc();
  v20 = sub_1000BC4D4(&qword_1016AA580, &qword_1013BD1A0);
  v1[39] = v20;
  v21 = *(v20 - 8);
  v1[40] = v21;
  v22 = *(v21 + 64) + 15;
  v1[41] = swift_task_alloc();
  v23 = sub_1000BC4D4(&qword_1016AA588, &qword_1013BD1A8);
  v1[42] = v23;
  v24 = *(v23 - 8);
  v1[43] = v24;
  v25 = *(v24 + 64) + 15;
  v1[44] = swift_task_alloc();
  v26 = sub_1000BC4D4(&qword_1016AA590, &qword_1013BD1B0);
  v1[45] = v26;
  v27 = *(v26 - 8);
  v1[46] = v27;
  v28 = *(v27 + 64) + 15;
  v1[47] = swift_task_alloc();

  return _swift_task_switch(sub_100D7C7F8, v0, 0);
}

uint64_t sub_100D7C7F8()
{
  v10 = v0;
  if (qword_101694EA0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 384) = sub_1000076D4(v1, qword_1016BB490);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v9 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_1000136BC(0xD000000000000015, 0x8000000101371150, &v9);
    _os_log_impl(&_mh_execute_header, v2, v3, "%s", v4, 0xCu);
    sub_100007BAC(v5);
  }

  v6 = async function pointer to daemon.getter[1];
  v7 = swift_task_alloc();
  *(v0 + 392) = v7;
  *v7 = v0;
  v7[1] = sub_100D7C9A8;

  return daemon.getter();
}

uint64_t sub_100D7C9A8(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 392);
  v12 = *v1;
  v3[50] = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  v3[51] = v6;
  v7 = type metadata accessor for Daemon();
  v3[52] = v7;
  v8 = type metadata accessor for ObservationStoreService();
  v3[53] = v8;
  v9 = sub_100D97688(&qword_1016AA400, &type metadata accessor for Daemon);
  v3[54] = v9;
  v10 = sub_100D97688(&qword_1016AA450, type metadata accessor for ObservationStoreService);
  v3[55] = v10;
  *v6 = v12;
  v6[1] = sub_100D7CB9C;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100D7CB9C(uint64_t a1)
{
  v5 = *v2;
  v4 = *v2;
  v6 = *(*v2 + 408);
  v7 = *v2;

  v8 = *(v4 + 400);
  if (v1)
  {
    v9 = *(v5 + 40);

    v10 = sub_100D7CEF8;
    v11 = v9;
  }

  else
  {

    *(v5 + 448) = a1;
    v10 = sub_100D7CD00;
    v11 = 0;
  }

  return _swift_task_switch(v10, v11, 0);
}

uint64_t sub_100D7CD00()
{
  v1 = v0[56];
  v2 = v0[44];
  v3 = v0[28];
  v4 = v0[5];
  (*(v0[40] + 104))(v0[41], enum case for AsyncStream.Continuation.BufferingPolicy.unbounded<A>(_:), v0[39]);
  AsyncStream.init(_:bufferingPolicy:_:)();

  return _swift_task_switch(sub_100D7CDDC, v4, 0);
}

uint64_t sub_100D7CDDC()
{
  v1 = v0[47];
  v3 = v0[43];
  v2 = v0[44];
  v4 = v0[42];
  AsyncStream.makeAsyncIterator()();
  (*(v3 + 8))(v2, v4);
  v5 = sub_100D97688(&qword_1016BB850, type metadata accessor for PencilPairingService);
  v0[57] = v5;
  v6 = v0[5];
  v7 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v8 = swift_task_alloc();
  v0[58] = v8;
  *v8 = v0;
  v8[1] = sub_100D7D198;
  v9 = v0[47];
  v10 = v0[45];
  v11 = v0[38];

  return AsyncStream.Iterator.next(isolation:)(v11, v6, v5, v10);
}

uint64_t sub_100D7CEF8()
{
  sub_100500BC4();
  swift_allocError();
  *v1 = xmmword_1013E84A0;
  *(v1 + 16) = 3;
  swift_willThrow();
  v2 = v0[48];
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
    _os_log_impl(&_mh_execute_header, v3, v4, "Failed to register for device events: %{public}@.", v5, 0xCu);
    sub_10000B3A8(v6, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  v8 = v0[47];
  v9 = v0[44];
  v10 = v0[41];
  v12 = v0[37];
  v11 = v0[38];
  v14 = v0[35];
  v13 = v0[36];
  v16 = v0[33];
  v15 = v0[34];
  v17 = v0[32];
  v20 = v0[31];
  v21 = v0[27];
  v22 = v0[26];
  v23 = v0[25];
  v24 = v0[21];
  v25 = v0[18];
  v26 = v0[15];
  v27 = v0[14];
  v28 = v0[12];
  v29 = v0[11];
  v30 = v0[7];
  v31 = v0[6];

  v18 = v0[1];

  return v18();
}

uint64_t sub_100D7D198()
{
  v1 = *(*v0 + 464);
  v2 = *(*v0 + 40);
  v4 = *v0;

  return _swift_task_switch(sub_100D7D2A8, v2, 0);
}

uint64_t sub_100D7D2A8()
{
  v50 = v0;
  v1 = v0[38];
  v2 = (*(v0[29] + 48))(v1, 1, v0[28]);
  v3 = v0[48];
  if (v2 == 1)
  {
    (*(v0[46] + 8))(v0[47], v0[45]);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Device event: observationService.stream() terminated.", v6, 2u);
    }

    v7 = v0[47];
    v8 = v0[44];
    v9 = v0[41];
    v11 = v0[37];
    v10 = v0[38];
    v13 = v0[35];
    v12 = v0[36];
    v15 = v0[33];
    v14 = v0[34];
    v16 = v0[32];
    v37 = v0[31];
    v38 = v0[27];
    v39 = v0[26];
    v40 = v0[25];
    v41 = v0[21];
    v42 = v0[18];
    v43 = v0[15];
    v44 = v0[14];
    v45 = v0[12];
    v46 = v0[11];
    v47 = v0[7];
    v48 = v0[6];

    v17 = v0[1];

    return v17();
  }

  else
  {
    v20 = v0[36];
    v19 = v0[37];
    sub_100DD921C(v1, v19, type metadata accessor for DeviceEvent);
    sub_100DD9284(v19, v20, type metadata accessor for DeviceEvent);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();
    v23 = os_log_type_enabled(v21, v22);
    v24 = v0[36];
    if (v23)
    {
      v25 = v0[28];
      v26 = v0[22];
      v27 = v0[13];
      v28 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      *v28 = 136446723;
      *(v28 + 4) = sub_1000136BC(0xD000000000000015, 0x8000000101371150, &v49);
      *(v28 + 12) = 2160;
      *(v28 + 14) = 1752392040;
      *(v28 + 22) = 2081;
      v29 = v24 + *(v25 + 36);
      v30 = *(v27 + 20);
      sub_100D97688(&qword_101696930, &type metadata accessor for UUID);
      v31 = dispatch thunk of CustomStringConvertible.description.getter();
      v33 = v32;
      sub_100DD92EC(v24, type metadata accessor for DeviceEvent);
      v34 = sub_1000136BC(v31, v33, &v49);

      *(v28 + 24) = v34;
      _os_log_impl(&_mh_execute_header, v21, v22, "%{public}s for %{private,mask.hash}s", v28, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      sub_100DD92EC(v24, type metadata accessor for DeviceEvent);
    }

    v35 = async function pointer to daemon.getter[1];
    v36 = swift_task_alloc();
    v0[59] = v36;
    *v36 = v0;
    v36[1] = sub_100D7D740;

    return daemon.getter();
  }
}

uint64_t sub_100D7D740(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 472);
  v5 = *v1;
  v3[60] = a1;

  v6 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v7 = swift_task_alloc();
  v3[61] = v7;
  v8 = type metadata accessor for BeaconStoreActor();
  v3[62] = v8;
  v9 = sub_100D97688(&qword_101698D20, type metadata accessor for BeaconStoreActor);
  v3[63] = v9;
  *v7 = v5;
  v7[1] = sub_100D7D8FC;
  v10 = v3[54];
  v11 = v3[52];

  return ActorServiceDaemon.getService<A>()(v11, v8, v10, v9);
}

uint64_t sub_100D7D8FC(uint64_t a1)
{
  v5 = *v2;
  v4 = *v2;
  v6 = *(*v2 + 488);
  v7 = *v2;

  v8 = *(v4 + 480);
  if (v1)
  {
    a1 = *(v5 + 40);

    v9 = sub_100D7E190;
  }

  else
  {

    *(v5 + 512) = a1;
    v9 = sub_100D7DA54;
  }

  return _swift_task_switch(v9, a1, 0);
}

uint64_t sub_100D7DA54()
{
  v1 = *(v0 + 512);
  v2 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v3 = swift_task_alloc();
  *(v0 + 520) = v3;
  v4 = sub_1000BC4D4(&qword_101698C80, &unk_1013A23F0);
  *v3 = v0;
  v3[1] = sub_100D7DB40;
  v5 = *(v0 + 512);

  return unsafeBlocking<A>(context:_:)(v0 + 32, 0xD000000000000010, 0x800000010134A8C0, sub_100DDDDE8, v5, v4);
}

uint64_t sub_100D7DB40()
{
  v1 = *(*v0 + 520);
  v2 = *(*v0 + 512);
  v4 = *v0;

  return _swift_task_switch(sub_100D7DC58, v2, 0);
}

uint64_t sub_100D7DC58()
{
  v1 = v0[64];
  v2 = v0[5];

  v0[66] = v0[4];

  return _swift_task_switch(sub_100D7DCCC, v2, 0);
}

uint64_t sub_100D7DCCC()
{
  v51 = v0;
  v1 = *(v0 + 528);
  if (!*(v1 + 16))
  {
    v15 = *(v0 + 528);

    goto LABEL_5;
  }

  v2 = *(v0 + 216);
  v47 = *(v0 + 224);
  v48 = *(v0 + 296);
  v3 = *(v0 + 208);
  v4 = *(v0 + 176);
  v5 = *(v0 + 184);
  v6 = *(v0 + 168);
  v7 = *(v0 + 152);
  v8 = *(v0 + 136);
  v49 = *(v0 + 128);
  v9 = *(v0 + 120);
  v10 = *(*(v0 + 160) + 80);
  sub_100DD9284(v1 + ((v10 + 32) & ~v10), v6, type metadata accessor for OwnedBeaconRecord);

  v11 = *(v7 + 20);
  v12 = *(v5 + 16);
  *(v0 + 536) = v12;
  *(v0 + 544) = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v12(v3, v6 + v11, v4);
  sub_100DD92EC(v6, type metadata accessor for OwnedBeaconRecord);
  v13 = *(v5 + 32);
  *(v0 + 552) = v13;
  *(v0 + 560) = (v5 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v13(v2, v3, v4);
  sub_1000D2A70(v48 + *(v47 + 32), v9, &unk_1016AA510, &unk_101393150);
  if ((*(v8 + 48))(v9, 1, v49) == 1)
  {
    v14 = *(v0 + 120);
    (*(*(v0 + 184) + 8))(*(v0 + 216), *(v0 + 176));
    sub_10000B3A8(v14, &unk_1016AA510, &unk_101393150);
LABEL_5:
    v16 = *(v0 + 384);
    sub_100DD9284(*(v0 + 296), *(v0 + 264), type metadata accessor for DeviceEvent);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    v19 = os_log_type_enabled(v17, v18);
    v20 = *(v0 + 296);
    v21 = *(v0 + 264);
    if (v19)
    {
      v22 = *(v0 + 224);
      v23 = *(v0 + 176);
      v24 = *(v0 + 104);
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v50 = v26;
      *v25 = 141558275;
      *(v25 + 4) = 1752392040;
      *(v25 + 12) = 2081;
      v27 = v21 + *(v22 + 36);
      v28 = *(v24 + 20);
      sub_100D97688(&qword_101696930, &type metadata accessor for UUID);
      v29 = dispatch thunk of CustomStringConvertible.description.getter();
      v31 = v30;
      sub_100DD92EC(v21, type metadata accessor for DeviceEvent);
      v32 = sub_1000136BC(v29, v31, &v50);

      *(v25 + 14) = v32;
      _os_log_impl(&_mh_execute_header, v17, v18, "Could not determine self-beacon UUID to publish the device event,for beacon: %{private,mask.hash}s", v25, 0x16u);
      sub_100007BAC(v26);
    }

    else
    {

      sub_100DD92EC(v21, type metadata accessor for DeviceEvent);
    }

    sub_100DD92EC(v20, type metadata accessor for DeviceEvent);
    v33 = *(v0 + 456);
    v34 = *(v0 + 40);
    v35 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
    v36 = swift_task_alloc();
    *(v0 + 464) = v36;
    *v36 = v0;
    v36[1] = sub_100D7D198;
    v37 = *(v0 + 376);
    v38 = *(v0 + 360);
    v39 = *(v0 + 304);

    return AsyncStream.Iterator.next(isolation:)(v39, v34, v33, v38);
  }

  v40 = *(v0 + 296);
  v41 = *(v0 + 224);
  v42 = *(v0 + 112);
  sub_100DD921C(*(v0 + 120), *(v0 + 144), type metadata accessor for DeviceEvent.AttachmentInfo);
  v43 = *(v41 + 36);
  *(v0 + 680) = v43;
  sub_100DD9284(v40 + v43, v42, type metadata accessor for BeaconIdentifier);
  v44 = async function pointer to daemon.getter[1];
  v45 = swift_task_alloc();
  *(v0 + 568) = v45;
  *v45 = v0;
  v45[1] = sub_100D7E470;

  return daemon.getter();
}

uint64_t sub_100D7E190()
{
  v2 = v0[46];
  v1 = v0[47];
  v3 = v0[45];
  v4 = v0[37];
  sub_100500BC4();
  swift_allocError();
  *v5 = xmmword_1013E84B0;
  *(v5 + 16) = 3;
  swift_willThrow();
  sub_100DD92EC(v4, type metadata accessor for DeviceEvent);
  (*(v2 + 8))(v1, v3);
  v6 = v0[48];
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
    _os_log_impl(&_mh_execute_header, v7, v8, "Failed to register for device events: %{public}@.", v9, 0xCu);
    sub_10000B3A8(v10, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  v12 = v0[47];
  v13 = v0[44];
  v14 = v0[41];
  v16 = v0[37];
  v15 = v0[38];
  v18 = v0[35];
  v17 = v0[36];
  v20 = v0[33];
  v19 = v0[34];
  v21 = v0[32];
  v24 = v0[31];
  v25 = v0[27];
  v26 = v0[26];
  v27 = v0[25];
  v28 = v0[21];
  v29 = v0[18];
  v30 = v0[15];
  v31 = v0[14];
  v32 = v0[12];
  v33 = v0[11];
  v34 = v0[7];
  v35 = v0[6];

  v22 = v0[1];

  return v22();
}

uint64_t sub_100D7E470(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 568);
  v5 = *v1;
  v3[72] = a1;

  v6 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v7 = swift_task_alloc();
  v3[73] = v7;
  *v7 = v5;
  v7[1] = sub_100D7E5FC;
  v8 = v3[55];
  v9 = v3[54];
  v10 = v3[53];
  v11 = v3[52];

  return ActorServiceDaemon.getService<A>()(v11, v10, v9, v8);
}

uint64_t sub_100D7E5FC(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 584);
  v5 = *v2;
  *(*v2 + 592) = a1;

  v6 = *(v3 + 576);
  v7 = *(v3 + 40);
  if (v1)
  {

    v8 = sub_100D7E9B8;
  }

  else
  {

    v8 = sub_100D7E760;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_100D7E760()
{
  v1 = *(v0 + 544);
  v2 = *(v0 + 176);
  v3 = *(v0 + 184);
  v4 = *(v0 + 48);
  (*(v0 + 536))(v4, *(v0 + 216), v2);
  (*(v3 + 56))(v4, 0, 1, v2);
  v5 = swift_task_alloc();
  *(v0 + 600) = v5;
  *v5 = v0;
  v5[1] = sub_100D7E844;
  v6 = *(v0 + 592);
  v7 = *(v0 + 112);
  v9 = *(v0 + 48);
  v8 = *(v0 + 56);

  return sub_1010CEAB4(v8, v7, v9);
}

uint64_t sub_100D7E844()
{
  v2 = *v1;
  v3 = *(*v1 + 600);
  v4 = *v1;
  *(*v1 + 608) = v0;

  v5 = v2[74];
  v6 = v2[6];
  v7 = v2[5];
  sub_10000B3A8(v6, &qword_1016980D0, &unk_10138F3B0);

  if (v0)
  {
    v8 = sub_100D809A0;
  }

  else
  {
    v8 = sub_100D7F190;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_100D7E9B8()
{
  v77 = v0;
  v1 = v0;
  sub_100500BC4();
  swift_allocError();
  *v2 = xmmword_1013E84A0;
  *(v2 + 16) = 3;
  swift_willThrow();
  v3 = v0[48];
  sub_100DD9284(v0[37], v0[32], type metadata accessor for DeviceEvent);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[32];
    v7 = v0[28];
    v8 = v0[22];
    v70 = v0[13];
    v9 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    v74 = swift_slowAlloc();
    v76[0] = v74;
    *v9 = 138543875;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v10;
    *v72 = v10;
    *(v9 + 12) = 2160;
    *(v9 + 14) = 1752392040;
    *(v9 + 22) = 2081;
    v11 = v6 + *(v7 + 36);
    sub_100D97688(&qword_101696930, &type metadata accessor for UUID);
    v0[2] = dispatch thunk of CustomStringConvertible.description.getter();
    v0[3] = v12;
    v13._countAndFlagsBits = 47;
    v13._object = 0xE100000000000000;
    String.append(_:)(v13);
    v14 = v11 + *(v70 + 20);
    v15._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v15);

    v16 = v0[2];
    v17 = v0[3];
    sub_100DD92EC(v6, type metadata accessor for DeviceEvent);
    v18 = sub_1000136BC(v16, v17, v76);

    *(v9 + 24) = v18;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed to update the device event: %{public}@for beacon: %{private,mask.hash}s", v9, 0x20u);
    sub_10000B3A8(v72, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v74);
  }

  else
  {
    v19 = v0[32];

    sub_100DD92EC(v19, type metadata accessor for DeviceEvent);
  }

  v20 = v1[27];
  v21 = v1[18];
  if (static UUID.== infix(_:_:)())
  {
    v22 = v1[37];
    v23 = v1[35];
    v25 = v1[29];
    v24 = v1[30];
    v26 = v1[5];
    type metadata accessor for Transaction();
    sub_100DD9284(v22, v23, type metadata accessor for DeviceEvent);
    v27 = (*(v25 + 80) + 24) & ~*(v25 + 80);
    v28 = swift_allocObject();
    *(v28 + 16) = v26;
    sub_100DD921C(v23, v28 + v27, type metadata accessor for DeviceEvent);

    static Transaction.asyncTask(name:block:)();

    if (sub_10062CFC0(*(v22 + 9), &off_10160D128))
    {
      v29 = swift_task_alloc();
      v1[83] = v29;
      *v29 = v1;
      v29[1] = sub_100D80738;
      v30 = v1[5];

      return sub_100D815B0();
    }

    v51 = v1[37];
    v52 = v1[27];
    v53 = v1[22];
    v54 = v1[23];
    v55 = v1[18];
    sub_100DD92EC(v1[14], type metadata accessor for BeaconIdentifier);
    sub_100DD92EC(v55, type metadata accessor for DeviceEvent.AttachmentInfo);
    (*(v54 + 8))(v52, v53);
    v50 = v51;
  }

  else
  {
    v32 = v1[48];
    sub_100DD9284(v1[37], v1[34], type metadata accessor for DeviceEvent);
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.info.getter();
    v35 = os_log_type_enabled(v33, v34);
    v36 = v1[37];
    v37 = v1[34];
    if (v35)
    {
      v38 = v1[28];
      v75 = v1[27];
      v39 = v1[22];
      v40 = v1[23];
      v71 = v1[18];
      v41 = v1[13];
      v68 = v39;
      v69 = v1[14];
      v73 = v1[37];
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v76[0] = v43;
      *v42 = 141558275;
      *(v42 + 4) = 1752392040;
      *(v42 + 12) = 2081;
      v44 = v37 + *(v38 + 36);
      v45 = *(v41 + 20);
      sub_100D97688(&qword_101696930, &type metadata accessor for UUID);
      v46 = dispatch thunk of CustomStringConvertible.description.getter();
      v48 = v47;
      sub_100DD92EC(v37, type metadata accessor for DeviceEvent);
      v49 = sub_1000136BC(v46, v48, v76);

      *(v42 + 14) = v49;
      _os_log_impl(&_mh_execute_header, v33, v34, "Not publishing event from another device for beacon: %{private,mask.hash}s", v42, 0x16u);
      sub_100007BAC(v43);

      sub_100DD92EC(v69, type metadata accessor for BeaconIdentifier);
      sub_100DD92EC(v71, type metadata accessor for DeviceEvent.AttachmentInfo);
      (*(v40 + 8))(v75, v68);
      v50 = v73;
    }

    else
    {
      v56 = v1[27];
      v57 = v1[22];
      v58 = v1[23];
      v59 = v1[18];
      v60 = v1[14];

      sub_100DD92EC(v37, type metadata accessor for DeviceEvent);
      sub_100DD92EC(v60, type metadata accessor for BeaconIdentifier);
      sub_100DD92EC(v59, type metadata accessor for DeviceEvent.AttachmentInfo);
      (*(v58 + 8))(v56, v57);
      v50 = v36;
    }
  }

  sub_100DD92EC(v50, type metadata accessor for DeviceEvent);
  v61 = v1[57];
  v62 = v1[5];
  v63 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v64 = swift_task_alloc();
  v1[58] = v64;
  *v64 = v1;
  v64[1] = sub_100D7D198;
  v65 = v1[47];
  v66 = v1[45];
  v67 = v1[38];

  return AsyncStream.Iterator.next(isolation:)(v67, v62, v61, v66);
}

uint64_t sub_100D7F190()
{
  v1 = v0[7];
  if ((*(v0[9] + 48))(v1, 1, v0[8]) == 1)
  {
    v2 = v0[37];
    v3 = v0[27];
    v4 = v0[22];
    v5 = v0[23];
    v6 = v0[18];
    sub_100DD92EC(v0[14], type metadata accessor for BeaconIdentifier);
    sub_100DD92EC(v6, type metadata accessor for DeviceEvent.AttachmentInfo);
    (*(v5 + 8))(v3, v4);
    sub_100DD92EC(v2, type metadata accessor for DeviceEvent);
    sub_10000B3A8(v1, &qword_1016AA4E0, &unk_1013BD0E0);
    v7 = v0[57];
    v8 = v0[5];
    v9 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
    v10 = swift_task_alloc();
    v0[58] = v10;
    *v10 = v0;
    v10[1] = sub_100D7D198;
    v11 = v0[47];
    v12 = v0[45];
    v13 = v0[38];

    return AsyncStream.Iterator.next(isolation:)(v13, v8, v7, v12);
  }

  else
  {
    sub_1000D2AD8(v1, v0[12], &qword_1016998D0, &unk_1013931A0);
    v14 = async function pointer to daemon.getter[1];
    v15 = swift_task_alloc();
    v0[77] = v15;
    *v15 = v0;
    v15[1] = sub_100D7F398;

    return daemon.getter();
  }
}

uint64_t sub_100D7F398(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 616);
  v5 = *v1;
  v3[78] = a1;

  v6 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v7 = swift_task_alloc();
  v3[79] = v7;
  *v7 = v5;
  v7[1] = sub_100D7F524;
  v8 = v3[63];
  v9 = v3[62];
  v10 = v3[54];
  v11 = v3[52];

  return ActorServiceDaemon.getService<A>()(v11, v9, v10, v8);
}

uint64_t sub_100D7F524(uint64_t a1)
{
  v5 = *v2;
  v4 = *v2;
  v6 = *(*v2 + 632);
  v7 = *v2;

  v8 = *(v4 + 624);
  if (v1)
  {
    a1 = *(v5 + 40);

    v9 = sub_100D7FF44;
  }

  else
  {
    v10 = *(v5 + 104);

    *(v5 + 640) = a1;
    *(v5 + 684) = *(v10 + 20);
    v9 = sub_100D7F688;
  }

  return _swift_task_switch(v9, a1, 0);
}

uint64_t sub_100D7F688()
{
  v20 = *(v0 + 560);
  v18 = *(v0 + 640);
  v19 = *(v0 + 552);
  v1 = *(v0 + 544);
  v2 = *(v0 + 536);
  v3 = *(v0 + 200);
  v16 = *(v0 + 684);
  v17 = *(v0 + 192);
  v4 = *(v0 + 176);
  v5 = *(v0 + 184);
  v6 = *(v0 + 88);
  v7 = *(v0 + 296) + *(v0 + 680);
  v8 = *(v0 + 72);
  v9 = *(v0 + 80);
  sub_1000D2A70(*(v0 + 96), v6, &qword_1016998D0, &unk_1013931A0);
  v2(v3, v7 + v16, v4);
  v10 = (*(v8 + 80) + 24) & ~*(v8 + 80);
  v11 = (v9 + *(v5 + 80) + v10) & ~*(v5 + 80);
  v12 = swift_allocObject();
  *(v0 + 648) = v12;
  *(v12 + 16) = v18;
  sub_1000D2AD8(v6, v12 + v10, &qword_1016998D0, &unk_1013931A0);
  v19(v12 + v11, v3, v4);
  v13 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v14 = swift_task_alloc();
  *(v0 + 656) = v14;
  *v14 = v0;
  v14[1] = sub_100D7F864;

  return unsafeBlocking<A>(context:_:)(v14, 0xD000000000000010, 0x800000010134A8C0, sub_100DDC2C8, v12, &type metadata for () + 8);
}

uint64_t sub_100D7F864()
{
  v1 = *(*v0 + 656);
  v2 = *(*v0 + 648);
  v3 = *(*v0 + 640);
  v5 = *v0;

  return _swift_task_switch(sub_100D7F990, v3, 0);
}

uint64_t sub_100D7F990()
{
  v1 = *(v0 + 640);
  v2 = *(v0 + 40);

  return _swift_task_switch(sub_100D7F9FC, v2, 0);
}

uint64_t sub_100D7F9FC()
{
  v55 = v0;
  sub_10000B3A8(v0[12], &qword_1016998D0, &unk_1013931A0);
  v1 = v0[27];
  v2 = v0[18];
  if (static UUID.== infix(_:_:)())
  {
    v3 = v0[37];
    v4 = v0[35];
    v6 = v0[29];
    v5 = v0[30];
    v7 = v0[5];
    type metadata accessor for Transaction();
    sub_100DD9284(v3, v4, type metadata accessor for DeviceEvent);
    v8 = (*(v6 + 80) + 24) & ~*(v6 + 80);
    v9 = swift_allocObject();
    *(v9 + 16) = v7;
    sub_100DD921C(v4, v9 + v8, type metadata accessor for DeviceEvent);

    static Transaction.asyncTask(name:block:)();

    if (sub_10062CFC0(*(v3 + 9), &off_10160D128))
    {
      v10 = swift_task_alloc();
      v0[83] = v10;
      *v10 = v0;
      v10[1] = sub_100D80738;
      v11 = v0[5];

      return sub_100D815B0();
    }

    v32 = v0[37];
    v33 = v0[27];
    v34 = v0[22];
    v35 = v0[23];
    v36 = v0[18];
    sub_100DD92EC(v0[14], type metadata accessor for BeaconIdentifier);
    sub_100DD92EC(v36, type metadata accessor for DeviceEvent.AttachmentInfo);
    (*(v35 + 8))(v33, v34);
    v31 = v32;
  }

  else
  {
    v13 = v0[48];
    sub_100DD9284(v0[37], v0[34], type metadata accessor for DeviceEvent);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.info.getter();
    v16 = os_log_type_enabled(v14, v15);
    v17 = v0[37];
    v18 = v0[34];
    if (v16)
    {
      v19 = v0[28];
      v53 = v0[27];
      v21 = v0[22];
      v20 = v0[23];
      v51 = v0[18];
      v22 = v0[13];
      v49 = v21;
      v50 = v0[14];
      v52 = v0[37];
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v54 = v24;
      *v23 = 141558275;
      *(v23 + 4) = 1752392040;
      *(v23 + 12) = 2081;
      v25 = v18 + *(v19 + 36);
      v26 = *(v22 + 20);
      sub_100D97688(&qword_101696930, &type metadata accessor for UUID);
      v27 = dispatch thunk of CustomStringConvertible.description.getter();
      v29 = v28;
      sub_100DD92EC(v18, type metadata accessor for DeviceEvent);
      v30 = sub_1000136BC(v27, v29, &v54);

      *(v23 + 14) = v30;
      _os_log_impl(&_mh_execute_header, v14, v15, "Not publishing event from another device for beacon: %{private,mask.hash}s", v23, 0x16u);
      sub_100007BAC(v24);

      sub_100DD92EC(v50, type metadata accessor for BeaconIdentifier);
      sub_100DD92EC(v51, type metadata accessor for DeviceEvent.AttachmentInfo);
      (*(v20 + 8))(v53, v49);
      v31 = v52;
    }

    else
    {
      v37 = v0[27];
      v38 = v0[22];
      v39 = v0[23];
      v40 = v0[18];
      v41 = v0[14];

      sub_100DD92EC(v18, type metadata accessor for DeviceEvent);
      sub_100DD92EC(v41, type metadata accessor for BeaconIdentifier);
      sub_100DD92EC(v40, type metadata accessor for DeviceEvent.AttachmentInfo);
      (*(v39 + 8))(v37, v38);
      v31 = v17;
    }
  }

  sub_100DD92EC(v31, type metadata accessor for DeviceEvent);
  v42 = v0[57];
  v43 = v0[5];
  v44 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v45 = swift_task_alloc();
  v0[58] = v45;
  *v45 = v0;
  v45[1] = sub_100D7D198;
  v46 = v0[47];
  v47 = v0[45];
  v48 = v0[38];

  return AsyncStream.Iterator.next(isolation:)(v48, v43, v42, v47);
}

uint64_t sub_100D7FF44()
{
  v78 = v0;
  v1 = v0;
  v2 = v0[12];
  sub_100500BC4();
  swift_allocError();
  *v3 = xmmword_1013E84B0;
  *(v3 + 16) = 3;
  swift_willThrow();
  sub_10000B3A8(v2, &qword_1016998D0, &unk_1013931A0);
  v4 = v0[48];
  sub_100DD9284(v0[37], v0[32], type metadata accessor for DeviceEvent);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[32];
    v8 = v0[28];
    v9 = v0[22];
    v71 = v0[13];
    v10 = swift_slowAlloc();
    v73 = swift_slowAlloc();
    v75 = swift_slowAlloc();
    v77[0] = v75;
    *v10 = 138543875;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v11;
    *v73 = v11;
    *(v10 + 12) = 2160;
    *(v10 + 14) = 1752392040;
    *(v10 + 22) = 2081;
    v12 = v7 + *(v8 + 36);
    sub_100D97688(&qword_101696930, &type metadata accessor for UUID);
    v0[2] = dispatch thunk of CustomStringConvertible.description.getter();
    v0[3] = v13;
    v14._countAndFlagsBits = 47;
    v14._object = 0xE100000000000000;
    String.append(_:)(v14);
    v15 = v12 + *(v71 + 20);
    v16._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v16);

    v17 = v0[2];
    v18 = v0[3];
    sub_100DD92EC(v7, type metadata accessor for DeviceEvent);
    v19 = sub_1000136BC(v17, v18, v77);

    *(v10 + 24) = v19;
    _os_log_impl(&_mh_execute_header, v5, v6, "Failed to update the device event: %{public}@for beacon: %{private,mask.hash}s", v10, 0x20u);
    sub_10000B3A8(v73, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v75);
  }

  else
  {
    v20 = v0[32];

    sub_100DD92EC(v20, type metadata accessor for DeviceEvent);
  }

  v21 = v1[27];
  v22 = v1[18];
  if (static UUID.== infix(_:_:)())
  {
    v23 = v1[37];
    v24 = v1[35];
    v26 = v1[29];
    v25 = v1[30];
    v27 = v1[5];
    type metadata accessor for Transaction();
    sub_100DD9284(v23, v24, type metadata accessor for DeviceEvent);
    v28 = (*(v26 + 80) + 24) & ~*(v26 + 80);
    v29 = swift_allocObject();
    *(v29 + 16) = v27;
    sub_100DD921C(v24, v29 + v28, type metadata accessor for DeviceEvent);

    static Transaction.asyncTask(name:block:)();

    if (sub_10062CFC0(*(v23 + 9), &off_10160D128))
    {
      v30 = swift_task_alloc();
      v1[83] = v30;
      *v30 = v1;
      v30[1] = sub_100D80738;
      v31 = v1[5];

      return sub_100D815B0();
    }

    v52 = v1[37];
    v53 = v1[27];
    v54 = v1[22];
    v55 = v1[23];
    v56 = v1[18];
    sub_100DD92EC(v1[14], type metadata accessor for BeaconIdentifier);
    sub_100DD92EC(v56, type metadata accessor for DeviceEvent.AttachmentInfo);
    (*(v55 + 8))(v53, v54);
    v51 = v52;
  }

  else
  {
    v33 = v1[48];
    sub_100DD9284(v1[37], v1[34], type metadata accessor for DeviceEvent);
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.info.getter();
    v36 = os_log_type_enabled(v34, v35);
    v37 = v1[37];
    v38 = v1[34];
    if (v36)
    {
      v39 = v1[28];
      v76 = v1[27];
      v40 = v1[22];
      v41 = v1[23];
      v72 = v1[18];
      v42 = v1[13];
      v69 = v40;
      v70 = v1[14];
      v74 = v1[37];
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v77[0] = v44;
      *v43 = 141558275;
      *(v43 + 4) = 1752392040;
      *(v43 + 12) = 2081;
      v45 = v38 + *(v39 + 36);
      v46 = *(v42 + 20);
      sub_100D97688(&qword_101696930, &type metadata accessor for UUID);
      v47 = dispatch thunk of CustomStringConvertible.description.getter();
      v49 = v48;
      sub_100DD92EC(v38, type metadata accessor for DeviceEvent);
      v50 = sub_1000136BC(v47, v49, v77);

      *(v43 + 14) = v50;
      _os_log_impl(&_mh_execute_header, v34, v35, "Not publishing event from another device for beacon: %{private,mask.hash}s", v43, 0x16u);
      sub_100007BAC(v44);

      sub_100DD92EC(v70, type metadata accessor for BeaconIdentifier);
      sub_100DD92EC(v72, type metadata accessor for DeviceEvent.AttachmentInfo);
      (*(v41 + 8))(v76, v69);
      v51 = v74;
    }

    else
    {
      v57 = v1[27];
      v58 = v1[22];
      v59 = v1[23];
      v60 = v1[18];
      v61 = v1[14];

      sub_100DD92EC(v38, type metadata accessor for DeviceEvent);
      sub_100DD92EC(v61, type metadata accessor for BeaconIdentifier);
      sub_100DD92EC(v60, type metadata accessor for DeviceEvent.AttachmentInfo);
      (*(v59 + 8))(v57, v58);
      v51 = v37;
    }
  }

  sub_100DD92EC(v51, type metadata accessor for DeviceEvent);
  v62 = v1[57];
  v63 = v1[5];
  v64 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v65 = swift_task_alloc();
  v1[58] = v65;
  *v65 = v1;
  v65[1] = sub_100D7D198;
  v66 = v1[47];
  v67 = v1[45];
  v68 = v1[38];

  return AsyncStream.Iterator.next(isolation:)(v68, v63, v62, v67);
}

uint64_t sub_100D80738()
{
  v2 = *v1;
  v3 = *(*v1 + 664);
  v4 = *v1;
  *(*v1 + 672) = v0;

  v5 = *(v2 + 40);
  if (v0)
  {
    v6 = sub_100D81140;
  }

  else
  {
    v6 = sub_100D80864;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100D80864()
{
  v1 = v0[37];
  v2 = v0[27];
  v3 = v0[22];
  v4 = v0[23];
  v5 = v0[18];
  sub_100DD92EC(v0[14], type metadata accessor for BeaconIdentifier);
  sub_100DD92EC(v5, type metadata accessor for DeviceEvent.AttachmentInfo);
  (*(v4 + 8))(v2, v3);
  sub_100DD92EC(v1, type metadata accessor for DeviceEvent);
  v6 = v0[57];
  v7 = v0[5];
  v8 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v9 = swift_task_alloc();
  v0[58] = v9;
  *v9 = v0;
  v9[1] = sub_100D7D198;
  v10 = v0[47];
  v11 = v0[45];
  v12 = v0[38];

  return AsyncStream.Iterator.next(isolation:)(v12, v7, v6, v11);
}

uint64_t sub_100D809A0()
{
  v77 = v0;
  v1 = v0;
  v2 = v0[76];
  v3 = v0[48];
  sub_100DD9284(v0[37], v0[32], type metadata accessor for DeviceEvent);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[32];
    v7 = v0[28];
    v8 = v0[22];
    v70 = v0[13];
    v9 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    v74 = swift_slowAlloc();
    v76 = v74;
    *v9 = 138543875;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v10;
    *v72 = v10;
    *(v9 + 12) = 2160;
    *(v9 + 14) = 1752392040;
    *(v9 + 22) = 2081;
    v11 = v6 + *(v7 + 36);
    sub_100D97688(&qword_101696930, &type metadata accessor for UUID);
    v0[2] = dispatch thunk of CustomStringConvertible.description.getter();
    v0[3] = v12;
    v13._countAndFlagsBits = 47;
    v13._object = 0xE100000000000000;
    String.append(_:)(v13);
    v14 = v11 + *(v70 + 20);
    v15._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v15);

    v16 = v0[2];
    v17 = v0[3];
    sub_100DD92EC(v6, type metadata accessor for DeviceEvent);
    v18 = sub_1000136BC(v16, v17, &v76);

    *(v9 + 24) = v18;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed to update the device event: %{public}@for beacon: %{private,mask.hash}s", v9, 0x20u);
    sub_10000B3A8(v72, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v74);
  }

  else
  {
    v19 = v0[32];

    sub_100DD92EC(v19, type metadata accessor for DeviceEvent);
  }

  v20 = v1[27];
  v21 = v1[18];
  if (static UUID.== infix(_:_:)())
  {
    v22 = v1[37];
    v23 = v1[35];
    v25 = v1[29];
    v24 = v1[30];
    v26 = v1[5];
    type metadata accessor for Transaction();
    sub_100DD9284(v22, v23, type metadata accessor for DeviceEvent);
    v27 = (*(v25 + 80) + 24) & ~*(v25 + 80);
    v28 = swift_allocObject();
    *(v28 + 16) = v26;
    sub_100DD921C(v23, v28 + v27, type metadata accessor for DeviceEvent);

    static Transaction.asyncTask(name:block:)();

    if (sub_10062CFC0(*(v22 + 9), &off_10160D128))
    {
      v29 = swift_task_alloc();
      v1[83] = v29;
      *v29 = v1;
      v29[1] = sub_100D80738;
      v30 = v1[5];

      return sub_100D815B0();
    }

    v51 = v1[37];
    v52 = v1[27];
    v53 = v1[22];
    v54 = v1[23];
    v55 = v1[18];
    sub_100DD92EC(v1[14], type metadata accessor for BeaconIdentifier);
    sub_100DD92EC(v55, type metadata accessor for DeviceEvent.AttachmentInfo);
    (*(v54 + 8))(v52, v53);
    v50 = v51;
  }

  else
  {
    v32 = v1[48];
    sub_100DD9284(v1[37], v1[34], type metadata accessor for DeviceEvent);
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.info.getter();
    v35 = os_log_type_enabled(v33, v34);
    v36 = v1[37];
    v37 = v1[34];
    if (v35)
    {
      v38 = v1[28];
      v75 = v1[27];
      v39 = v1[22];
      v40 = v1[23];
      v71 = v1[18];
      v41 = v1[13];
      v68 = v39;
      v69 = v1[14];
      v73 = v1[37];
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v76 = v43;
      *v42 = 141558275;
      *(v42 + 4) = 1752392040;
      *(v42 + 12) = 2081;
      v44 = v37 + *(v38 + 36);
      v45 = *(v41 + 20);
      sub_100D97688(&qword_101696930, &type metadata accessor for UUID);
      v46 = dispatch thunk of CustomStringConvertible.description.getter();
      v48 = v47;
      sub_100DD92EC(v37, type metadata accessor for DeviceEvent);
      v49 = sub_1000136BC(v46, v48, &v76);

      *(v42 + 14) = v49;
      _os_log_impl(&_mh_execute_header, v33, v34, "Not publishing event from another device for beacon: %{private,mask.hash}s", v42, 0x16u);
      sub_100007BAC(v43);

      sub_100DD92EC(v69, type metadata accessor for BeaconIdentifier);
      sub_100DD92EC(v71, type metadata accessor for DeviceEvent.AttachmentInfo);
      (*(v40 + 8))(v75, v68);
      v50 = v73;
    }

    else
    {
      v56 = v1[27];
      v57 = v1[22];
      v58 = v1[23];
      v59 = v1[18];
      v60 = v1[14];

      sub_100DD92EC(v37, type metadata accessor for DeviceEvent);
      sub_100DD92EC(v60, type metadata accessor for BeaconIdentifier);
      sub_100DD92EC(v59, type metadata accessor for DeviceEvent.AttachmentInfo);
      (*(v58 + 8))(v56, v57);
      v50 = v36;
    }
  }

  sub_100DD92EC(v50, type metadata accessor for DeviceEvent);
  v61 = v1[57];
  v62 = v1[5];
  v63 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v64 = swift_task_alloc();
  v1[58] = v64;
  *v64 = v1;
  v64[1] = sub_100D7D198;
  v65 = v1[47];
  v66 = v1[45];
  v67 = v1[38];

  return AsyncStream.Iterator.next(isolation:)(v67, v62, v61, v66);
}

uint64_t sub_100D81140()
{
  v40 = v0;
  v1 = v0[84];
  v2 = v0[48];
  sub_100DD9284(v0[37], v0[31], type metadata accessor for DeviceEvent);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[84];
  v38 = v0[37];
  v7 = v0[31];
  if (v5)
  {
    v8 = v0[28];
    v35 = v0[23];
    v36 = v0[27];
    v37 = v0[22];
    v9 = v0[13];
    v33 = v0[14];
    v34 = v0[18];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v39 = v12;
    *v10 = 138543875;
    swift_errorRetain();
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *v11 = v13;
    *(v10 + 12) = 2160;
    *(v10 + 14) = 1752392040;
    *(v10 + 22) = 2081;
    v14 = v7 + *(v8 + 36);
    v15 = *(v9 + 20);
    sub_100D97688(&qword_101696930, &type metadata accessor for UUID);
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    v18 = v17;
    sub_100DD92EC(v7, type metadata accessor for DeviceEvent);
    v19 = sub_1000136BC(v16, v18, &v39);

    *(v10 + 24) = v19;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failed to publish the device event: %{public}@for beacon: %{private,mask.hash}s", v10, 0x20u);
    sub_10000B3A8(v11, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v12);

    sub_100DD92EC(v33, type metadata accessor for BeaconIdentifier);
    sub_100DD92EC(v34, type metadata accessor for DeviceEvent.AttachmentInfo);
    (*(v35 + 8))(v36, v37);
  }

  else
  {
    v20 = v0[27];
    v21 = v0[22];
    v22 = v0[23];
    v23 = v0[18];
    v24 = v0[14];

    sub_100DD92EC(v7, type metadata accessor for DeviceEvent);
    sub_100DD92EC(v24, type metadata accessor for BeaconIdentifier);
    sub_100DD92EC(v23, type metadata accessor for DeviceEvent.AttachmentInfo);
    (*(v22 + 8))(v20, v21);
  }

  sub_100DD92EC(v38, type metadata accessor for DeviceEvent);
  v25 = v0[57];
  v26 = v0[5];
  v27 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v28 = swift_task_alloc();
  v0[58] = v28;
  *v28 = v0;
  v28[1] = sub_100D7D198;
  v29 = v0[47];
  v30 = v0[45];
  v31 = v0[38];

  return AsyncStream.Iterator.next(isolation:)(v31, v26, v25, v30);
}

uint64_t sub_100D81514(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100014744;

  return sub_100D81BC0(a2);
}

uint64_t sub_100D815B0()
{
  *(v1 + 32) = v0;
  v2 = async function pointer to daemon.getter[1];
  v3 = swift_task_alloc();
  *(v1 + 40) = v3;
  *v3 = v1;
  v3[1] = sub_100D81644;

  return daemon.getter();
}

uint64_t sub_100D81644(uint64_t a1)
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
  v9 = sub_100D97688(&qword_1016AA400, &type metadata accessor for Daemon);
  v10 = sub_100D97688(&qword_101698D50, type metadata accessor for DeviceBeaconPayloadPublisher);
  *v6 = v12;
  v6[1] = sub_100D81820;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100D81820(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 56);
  v6 = *v2;
  v4[8] = a1;
  v4[9] = v1;

  if (v1)
  {
    v7 = v4[4];
    v8 = sub_1008F4BFC;
  }

  else
  {
    v9 = v4[6];

    v8 = sub_100D81958;
    v7 = a1;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_100D81958()
{
  v1 = *(v0[8] + 136);
  v0[2] = 0xD000000000000013;
  v0[3] = 0x800000010134CBD0;
  v2 = *(&async function pointer to dispatch thunk of AsyncKeyedThrottle.throttle(key:block:skipBlock:) + 1);
  v6 = &async function pointer to dispatch thunk of AsyncKeyedThrottle.throttle(key:block:skipBlock:) + async function pointer to dispatch thunk of AsyncKeyedThrottle.throttle(key:block:skipBlock:);

  v3 = swift_task_alloc();
  v0[10] = v3;
  *v3 = v0;
  v3[1] = sub_100D81A68;
  v4 = v0[8];

  return (v6)(v0 + 2, &unk_10139D750, v4, sub_100853598, 0);
}

uint64_t sub_100D81A68()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 64);
  v8 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v5 = *(v2 + 64);
    v6 = sub_100D81BA4;
  }

  else
  {
    v5 = *(v2 + 32);
    v6 = sub_1003A24D8;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100D81BC0(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for Date();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = type metadata accessor for DeviceEvent(0);
  v2[7] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v8 = type metadata accessor for DeviceEvent.Location(0);
  v2[14] = v8;
  v9 = *(v8 - 8);
  v2[15] = v9;
  v10 = *(v9 + 64) + 15;
  v2[16] = swift_task_alloc();
  v11 = *(*(sub_1000BC4D4(&qword_101699E50, &qword_1013D97C0) - 8) + 64) + 15;
  v2[17] = swift_task_alloc();

  return _swift_task_switch(sub_100D81D80, v1, 0);
}

uint64_t sub_100D81D80()
{
  v39 = v0;
  v1 = *(v0 + 16);
  v2 = *(v1 + 9);
  *(v0 + 220) = v2;
  if (v2 == 6)
  {
    if (qword_101694EA0 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_1000076D4(v3, qword_1016BB490);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Not updating existing location for the disappeared device event.", v6, 2u);
    }

LABEL_7:
    v8 = *(v0 + 128);
    v7 = *(v0 + 136);
    v10 = *(v0 + 96);
    v9 = *(v0 + 104);
    v12 = *(v0 + 80);
    v11 = *(v0 + 88);
    v14 = *(v0 + 64);
    v13 = *(v0 + 72);
    v15 = *(v0 + 48);

    v16 = *(v0 + 8);

    return v16();
  }

  v18 = *(v0 + 136);
  v19 = *(v0 + 112);
  v20 = *(v0 + 120);
  sub_1000D2A70(v1 + *(*(v0 + 56) + 28), v18, &qword_101699E50, &qword_1013D97C0);
  LODWORD(v19) = (*(v20 + 48))(v18, 1, v19);
  sub_10000B3A8(v18, &qword_101699E50, &qword_1013D97C0);
  if (v19 != 1)
  {
    if (qword_101694EA0 != -1)
    {
      swift_once();
    }

    v22 = *(v0 + 72);
    v23 = *(v0 + 16);
    v24 = type metadata accessor for Logger();
    sub_1000076D4(v24, qword_1016BB490);
    sub_100DD9284(v23, v22, type metadata accessor for DeviceEvent);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.info.getter();
    v27 = os_log_type_enabled(v25, v26);
    v28 = *(v0 + 72);
    if (v27)
    {
      v29 = *(v0 + 56);
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v38 = v31;
      *v30 = 141558275;
      *(v30 + 4) = 1752392040;
      *(v30 + 12) = 2081;
      v32 = *(v29 + 36);
      v33 = v28 + *(type metadata accessor for BeaconIdentifier() + 20);
      type metadata accessor for UUID();
      sub_100D97688(&qword_101696930, &type metadata accessor for UUID);
      v34 = dispatch thunk of CustomStringConvertible.description.getter();
      v36 = v35;
      sub_100DD92EC(v28, type metadata accessor for DeviceEvent);
      v37 = sub_1000136BC(v34, v36, &v38);

      *(v30 + 14) = v37;
      _os_log_impl(&_mh_execute_header, v25, v26, "Not updating existing location for the device event for beacon: %{private,mask.hash}s", v30, 0x16u);
      sub_100007BAC(v31);
    }

    else
    {

      sub_100DD92EC(v28, type metadata accessor for DeviceEvent);
    }

    goto LABEL_7;
  }

  v21 = *(*(v0 + 24) + OBJC_IVAR____TtC12searchpartyd20PencilPairingService_locationPublisher);
  *(v0 + 144) = v21;

  return _swift_task_switch(sub_100D821DC, v21, 0);
}

uint64_t sub_100D821DC()
{
  v1 = *sub_1000035D0((*(v0 + 144) + 112), *(*(v0 + 144) + 136));
  v2 = swift_task_alloc();
  *(v0 + 152) = v2;
  *v2 = v0;
  v2[1] = sub_100D8227C;

  return sub_100F87B58();
}

uint64_t sub_100D8227C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 152);
  v5 = *v2;
  *(*v2 + 160) = a1;

  v6 = *(v3 + 24);
  if (v1)
  {

    v7 = sub_100D82C00;
  }

  else
  {
    v7 = sub_100D823BC;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_100D823BC()
{
  v50 = v0;
  v1 = *(v0 + 160);
  if (v1)
  {
    v48 = *(v0 + 220);
    v3 = *(v0 + 120);
    v2 = *(v0 + 128);
    v5 = *(v0 + 104);
    v4 = *(v0 + 112);
    v6 = *(v0 + 56);
    v7 = *(v0 + 40);
    v47 = *(v0 + 32);
    v8 = *(v0 + 16);
    v9 = v1;
    [v9 coordinate];
    *v2 = v10;
    [v9 coordinate];
    v2[1] = v11;
    [v9 horizontalAccuracy];
    v2[2] = v12;
    v13 = [v9 timestamp];
    v14 = v2 + *(v4 + 28);
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v15 = *v8;
    LOBYTE(v13) = *(v8 + 8);
    v16 = v6[6];
    *(v0 + 216) = v16;
    (*(v7 + 16))(v5 + v16, v8 + v16, v47);
    v17 = v6[7];
    sub_100DD9284(v2, v5 + v17, type metadata accessor for DeviceEvent.Location);
    (*(v3 + 56))(v5 + v17, 0, 1, v4);
    sub_1000D2A70(v8 + v6[8], v5 + v6[8], &unk_1016AA510, &unk_101393150);
    sub_100DD9284(v8 + v6[9], v5 + v6[9], type metadata accessor for BeaconIdentifier);
    static Date.trustedNow.getter(v5 + v6[10]);
    *v5 = v15;
    *(v5 + 8) = v13;
    *(v5 + 9) = v48;
    v18 = async function pointer to daemon.getter[1];
    v19 = swift_task_alloc();
    *(v0 + 168) = v19;
    *v19 = v0;
    v19[1] = sub_100D82864;

    return daemon.getter();
  }

  else
  {
    if (qword_101694EA0 != -1)
    {
      swift_once();
    }

    v20 = *(v0 + 80);
    v21 = *(v0 + 16);
    v22 = type metadata accessor for Logger();
    sub_1000076D4(v22, qword_1016BB490);
    sub_100DD9284(v21, v20, type metadata accessor for DeviceEvent);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    v25 = os_log_type_enabled(v23, v24);
    v26 = *(v0 + 80);
    if (v25)
    {
      v27 = *(v0 + 56);
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v49 = v29;
      *v28 = 141558275;
      *(v28 + 4) = 1752392040;
      *(v28 + 12) = 2081;
      v30 = *(v27 + 36);
      v31 = v26 + *(type metadata accessor for BeaconIdentifier() + 20);
      type metadata accessor for UUID();
      sub_100D97688(&qword_101696930, &type metadata accessor for UUID);
      v32 = dispatch thunk of CustomStringConvertible.description.getter();
      v34 = v33;
      sub_100DD92EC(v26, type metadata accessor for DeviceEvent);
      v35 = sub_1000136BC(v32, v34, &v49);

      *(v28 + 14) = v35;
      _os_log_impl(&_mh_execute_header, v23, v24, "Failed to update location for the device eventfor beacon: %{private,mask.hash}s", v28, 0x16u);
      sub_100007BAC(v29);
    }

    else
    {

      sub_100DD92EC(v26, type metadata accessor for DeviceEvent);
    }

    v37 = *(v0 + 128);
    v36 = *(v0 + 136);
    v39 = *(v0 + 96);
    v38 = *(v0 + 104);
    v41 = *(v0 + 80);
    v40 = *(v0 + 88);
    v43 = *(v0 + 64);
    v42 = *(v0 + 72);
    v44 = *(v0 + 48);

    v45 = *(v0 + 8);

    return v45();
  }
}

uint64_t sub_100D82864(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 168);
  v12 = *v1;
  *(v3 + 176) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 184) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for ObservationStoreService();
  v9 = sub_100D97688(&qword_1016AA400, &type metadata accessor for Daemon);
  v10 = sub_100D97688(&qword_1016AA450, type metadata accessor for ObservationStoreService);
  *v6 = v12;
  v6[1] = sub_100D82A40;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100D82A40(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 184);
  v6 = *v2;
  v4[24] = a1;

  v7 = v4[22];
  if (v1)
  {
    v8 = v4[3];

    return _swift_task_switch(sub_100D82FF4, v8, 0);
  }

  else
  {

    v9 = swift_task_alloc();
    v4[25] = v9;
    *v9 = v6;
    v9[1] = sub_100D82ECC;
    v10 = v4[13];

    return sub_1010D02E4(v10);
  }
}

uint64_t sub_100D82C00()
{
  v29 = v0;
  if (qword_101694EA0 != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v2 = v0[2];
  v3 = type metadata accessor for Logger();
  sub_1000076D4(v3, qword_1016BB490);
  sub_100DD9284(v2, v1, type metadata accessor for DeviceEvent);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[10];
  if (v6)
  {
    v8 = v0[7];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v28 = v10;
    *v9 = 141558275;
    *(v9 + 4) = 1752392040;
    *(v9 + 12) = 2081;
    v11 = *(v8 + 36);
    v12 = v7 + *(type metadata accessor for BeaconIdentifier() + 20);
    type metadata accessor for UUID();
    sub_100D97688(&qword_101696930, &type metadata accessor for UUID);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;
    sub_100DD92EC(v7, type metadata accessor for DeviceEvent);
    v16 = sub_1000136BC(v13, v15, &v28);

    *(v9 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed to update location for the device eventfor beacon: %{private,mask.hash}s", v9, 0x16u);
    sub_100007BAC(v10);
  }

  else
  {

    sub_100DD92EC(v7, type metadata accessor for DeviceEvent);
  }

  v18 = v0[16];
  v17 = v0[17];
  v20 = v0[12];
  v19 = v0[13];
  v22 = v0[10];
  v21 = v0[11];
  v24 = v0[8];
  v23 = v0[9];
  v25 = v0[6];

  v26 = v0[1];

  return v26();
}

uint64_t sub_100D82ECC()
{
  v2 = *v1;
  v3 = *(*v1 + 200);
  v9 = *v1;
  *(*v1 + 208) = v0;

  if (v0)
  {
    v4 = *(v2 + 24);
    v5 = sub_100D83920;
  }

  else
  {
    v6 = *(v2 + 192);
    v7 = *(v2 + 24);

    v5 = sub_100D833F0;
    v4 = v7;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100D82FF4()
{
  v39 = v0;
  sub_100500BC4();
  swift_allocError();
  *v1 = xmmword_1013E84A0;
  *(v1 + 16) = 3;
  swift_willThrow();
  if (qword_101694EA0 != -1)
  {
    swift_once();
  }

  v2 = v0[8];
  v3 = v0[2];
  v4 = type metadata accessor for Logger();
  sub_1000076D4(v4, qword_1016BB490);
  sub_100DD9284(v3, v2, type metadata accessor for DeviceEvent);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[20];
  v9 = v0[16];
  v10 = v0[13];
  v11 = v0[8];
  if (v7)
  {
    v37 = v0[20];
    v12 = v0[7];
    v36 = v0[13];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v38 = v34;
    *v13 = 138543875;
    swift_errorRetain();
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 4) = v15;
    *v14 = v15;
    *(v13 + 12) = 2160;
    *(v13 + 14) = 1752392040;
    *(v13 + 22) = 2081;
    v16 = *(v12 + 36);
    v17 = v11 + *(type metadata accessor for BeaconIdentifier() + 20);
    type metadata accessor for UUID();
    v35 = v9;
    sub_100D97688(&qword_101696930, &type metadata accessor for UUID);
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    v20 = v19;
    sub_100DD92EC(v11, type metadata accessor for DeviceEvent);
    v21 = sub_1000136BC(v18, v20, &v38);

    *(v13 + 24) = v21;
    _os_log_impl(&_mh_execute_header, v5, v6, "Failed to update location for the device event, error: %{public}@ for beacon: %{private,mask.hash}s", v13, 0x20u);
    sub_10000B3A8(v14, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v34);

    sub_100DD92EC(v36, type metadata accessor for DeviceEvent);
    v22 = v35;
  }

  else
  {

    sub_100DD92EC(v11, type metadata accessor for DeviceEvent);
    sub_100DD92EC(v10, type metadata accessor for DeviceEvent);
    v22 = v9;
  }

  sub_100DD92EC(v22, type metadata accessor for DeviceEvent.Location);
  v24 = v0[16];
  v23 = v0[17];
  v26 = v0[12];
  v25 = v0[13];
  v28 = v0[10];
  v27 = v0[11];
  v30 = v0[8];
  v29 = v0[9];
  v31 = v0[6];

  v32 = v0[1];

  return v32();
}

uint64_t sub_100D833F0()
{
  v64 = v0;
  v1 = *(v0 + 216);
  v3 = *(v0 + 40);
  v2 = *(v0 + 48);
  v4 = *(v0 + 32);
  v5 = *(v0 + 16);
  v6 = [*(v0 + 160) timestamp];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  Date.timeIntervalSince(_:)();
  v8 = v7;
  v9 = *(v3 + 8);
  v9(v2, v4);
  if (qword_101694EA0 != -1)
  {
    swift_once();
  }

  v10 = *(v0 + 160);
  v11 = *(v0 + 88);
  v12 = *(v0 + 96);
  v13 = *(v0 + 16);
  v14 = type metadata accessor for Logger();
  sub_1000076D4(v14, qword_1016BB490);
  sub_100DD9284(v13, v12, type metadata accessor for DeviceEvent);
  sub_100DD9284(v13, v11, type metadata accessor for DeviceEvent);
  v15 = v10;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.info.getter();

  v18 = os_log_type_enabled(v16, v17);
  v19 = *(v0 + 160);
  v20 = *(v0 + 128);
  v22 = *(v0 + 96);
  v21 = *(v0 + 104);
  v23 = *(v0 + 88);
  if (v18)
  {
    log = v16;
    v24 = *(v0 + 56);
    v61 = v17;
    v25 = *(v0 + 48);
    v62 = *(v0 + 104);
    v56 = v24;
    v57 = *(v0 + 32);
    v59 = v9;
    v26 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    *v26 = 141559043;
    *(v26 + 4) = 1752392040;
    *(v26 + 12) = 2081;
    v27 = v19;
    v58 = v19;
    v28 = *(v24 + 36);
    v29 = v23;
    v30 = v22 + *(type metadata accessor for BeaconIdentifier() + 20);
    type metadata accessor for UUID();
    sub_100D97688(&qword_101696930, &type metadata accessor for UUID);
    v31 = dispatch thunk of CustomStringConvertible.description.getter();
    v33 = v32;
    sub_100DD92EC(v22, type metadata accessor for DeviceEvent);
    v34 = sub_1000136BC(v31, v33, &v63);

    *(v26 + 14) = v34;
    *(v26 + 22) = 2082;
    v35 = [v27 timestamp];
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    sub_100D97688(&qword_1016969A0, &type metadata accessor for Date);
    v36 = dispatch thunk of CustomStringConvertible.description.getter();
    v38 = v37;
    v59(v25, v57);
    v39 = sub_1000136BC(v36, v38, &v63);

    *(v26 + 24) = v39;
    *(v26 + 32) = 2082;
    v40 = v29 + *(v56 + 24);
    v41 = dispatch thunk of CustomStringConvertible.description.getter();
    v43 = v42;
    sub_100DD92EC(v29, type metadata accessor for DeviceEvent);
    v44 = sub_1000136BC(v41, v43, &v63);

    *(v26 + 34) = v44;
    *(v26 + 42) = 2048;
    *(v26 + 44) = v8;
    _os_log_impl(&_mh_execute_header, log, v61, "Updated existing device event location for beacon: %{private,mask.hash}s. Location timestamp: %{public}s, eventTimestamp: %{public}s, delta: %f.", v26, 0x34u);
    swift_arrayDestroy();

    sub_100DD92EC(v62, type metadata accessor for DeviceEvent);
  }

  else
  {

    sub_100DD92EC(v23, type metadata accessor for DeviceEvent);
    sub_100DD92EC(v22, type metadata accessor for DeviceEvent);
    sub_100DD92EC(v21, type metadata accessor for DeviceEvent);
  }

  sub_100DD92EC(v20, type metadata accessor for DeviceEvent.Location);
  v46 = *(v0 + 128);
  v45 = *(v0 + 136);
  v48 = *(v0 + 96);
  v47 = *(v0 + 104);
  v50 = *(v0 + 80);
  v49 = *(v0 + 88);
  v52 = *(v0 + 64);
  v51 = *(v0 + 72);
  v53 = *(v0 + 48);

  v54 = *(v0 + 8);

  return v54();
}

uint64_t sub_100D83920()
{
  v40 = v0;
  v1 = v0[24];

  v2 = v0[26];
  if (qword_101694EA0 != -1)
  {
    swift_once();
  }

  v3 = v0[8];
  v4 = v0[2];
  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_1016BB490);
  sub_100DD9284(v4, v3, type metadata accessor for DeviceEvent);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[20];
  v10 = v0[16];
  v11 = v0[13];
  v12 = v0[8];
  if (v8)
  {
    v38 = v0[20];
    v13 = v0[7];
    v37 = v0[13];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v39 = v35;
    *v14 = 138543875;
    swift_errorRetain();
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 4) = v16;
    *v15 = v16;
    *(v14 + 12) = 2160;
    *(v14 + 14) = 1752392040;
    *(v14 + 22) = 2081;
    v17 = *(v13 + 36);
    v18 = v12 + *(type metadata accessor for BeaconIdentifier() + 20);
    type metadata accessor for UUID();
    v36 = v10;
    sub_100D97688(&qword_101696930, &type metadata accessor for UUID);
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    v21 = v20;
    sub_100DD92EC(v12, type metadata accessor for DeviceEvent);
    v22 = sub_1000136BC(v19, v21, &v39);

    *(v14 + 24) = v22;
    _os_log_impl(&_mh_execute_header, v6, v7, "Failed to update location for the device event, error: %{public}@ for beacon: %{private,mask.hash}s", v14, 0x20u);
    sub_10000B3A8(v15, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v35);

    sub_100DD92EC(v37, type metadata accessor for DeviceEvent);
    v23 = v36;
  }

  else
  {

    sub_100DD92EC(v12, type metadata accessor for DeviceEvent);
    sub_100DD92EC(v11, type metadata accessor for DeviceEvent);
    v23 = v10;
  }

  sub_100DD92EC(v23, type metadata accessor for DeviceEvent.Location);
  v25 = v0[16];
  v24 = v0[17];
  v27 = v0[12];
  v26 = v0[13];
  v29 = v0[10];
  v28 = v0[11];
  v31 = v0[8];
  v30 = v0[9];
  v32 = v0[6];

  v33 = v0[1];

  return v33();
}

uint64_t sub_100D83CEC()
{
  v1[14] = v0;
  v2 = sub_1000BC4D4(&qword_10169A068, &qword_1013933F0);
  v1[15] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[16] = swift_task_alloc();
  v4 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
  v1[17] = v4;
  v5 = *(v4 - 8);
  v1[18] = v5;
  v6 = *(v5 + 64) + 15;
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v7 = type metadata accessor for PencilPairingService.AttachedLocalFindableAccessory(0);
  v1[21] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v9 = *(*(sub_1000BC4D4(&qword_1016A40D0, &unk_10138BE70) - 8) + 64) + 15;
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v10 = type metadata accessor for UUID();
  v1[27] = v10;
  v11 = *(v10 - 8);
  v1[28] = v11;
  v12 = *(v11 + 64) + 15;
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();
  v1[38] = swift_task_alloc();
  v1[39] = swift_task_alloc();
  v1[40] = swift_task_alloc();
  v1[41] = swift_task_alloc();
  v13 = type metadata accessor for AccessoryConnectionService.Event();
  v1[42] = v13;
  v14 = *(*(v13 - 8) + 64) + 15;
  v1[43] = swift_task_alloc();
  v1[44] = swift_task_alloc();
  v1[45] = swift_task_alloc();
  v1[46] = swift_task_alloc();
  v15 = *(*(sub_1000BC4D4(&qword_1016BB8F8, &qword_1013E8AF8) - 8) + 64) + 15;
  v1[47] = swift_task_alloc();
  v16 = sub_1000BC4D4(&qword_1016BB900, &qword_1013E8B00);
  v1[48] = v16;
  v17 = *(v16 - 8);
  v1[49] = v17;
  v18 = *(v17 + 64) + 15;
  v1[50] = swift_task_alloc();
  v19 = sub_1000BC4D4(&qword_1016BB908, &qword_1013E8B08);
  v1[51] = v19;
  v20 = *(v19 - 8);
  v1[52] = v20;
  v21 = *(v20 + 64) + 15;
  v1[53] = swift_task_alloc();
  v22 = async function pointer to daemon.getter[1];
  v23 = swift_task_alloc();
  v1[54] = v23;
  *v23 = v1;
  v23[1] = sub_100D84104;

  return daemon.getter();
}