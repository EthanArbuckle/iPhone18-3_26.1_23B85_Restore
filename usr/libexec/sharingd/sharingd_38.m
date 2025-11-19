id sub_100547738(uint64_t (*a1)(void), Class *a2)
{
  v4 = *(a1(0) + 28);
  v5 = *(v2 + v4);
  if (v5)
  {
    v6 = *(v2 + v4);
LABEL_5:
    v8 = v5;
    return v6;
  }

  result = [objc_allocWithZone(*a2) init];
  if (result)
  {
    *(v2 + v4) = result;
    v6 = result;
    v5 = 0;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t sub_1005477B8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_10028088C(&qword_100975660, &qword_1007FA820);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1007F8A70;
  if (qword_1009739F0 != -1)
  {
    swift_once();
  }

  *(v6 + 56) = &type metadata for SDAuthentication.Operation.StepRegistrationCreateSecret;
  *(v6 + 64) = &off_10097C048;
  *(v6 + 96) = &type metadata for SDAuthentication.Operation.BuildMessageHeader;
  *(v6 + 104) = &off_10097BE18;
  *a3 = v6;
  SecretContextVMa = _s12RegistrationV32HandlePairingCreateSecretContextVMa(0);
  *(a3 + *(SecretContextVMa + 28)) = 0;
  v35 = SecretContextVMa;
  *(a3 + *(SecretContextVMa + 32)) = 5;
  if (qword_1009739E8 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_10000C4AC(v8, qword_100982C50);
  v9 = a1;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v33 = a3;
    v34 = a2;
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v36 = v32;
    *v12 = 138412546;
    *(v12 + 4) = v9;
    *v13 = v9;
    *(v12 + 12) = 2080;
    v14 = [v9 sessionID];
    if (v14)
    {
      v15 = v14;
      v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v18 = v17;
    }

    else
    {
      v18 = 0x8000000100789F30;
      v16 = 0xD000000000000015;
    }

    v19 = sub_10000C4E4(v16, v18, &v36);

    *(v12 + 14) = v19;
    _os_log_impl(&_mh_execute_header, v10, v11, "Received authentication registration create secret: %@ for sessionID %s", v12, 0x16u);
    sub_100005508(v13, &qword_100975400, &qword_1007F65D0);

    sub_10000C60C(v32);

    a2 = v34;
    a3 = v33;
  }

  else
  {
  }

  v20 = [v9 token];
  if (v20)
  {
    v21 = v20;
    v22 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;

    v25 = (a3 + *(v35 + 24));
    *v25 = v22;
    v25[1] = v24;
    v26 = _s12RegistrationV17InitialKeyContextVMa(0);
    sub_100549380(a2 + *(v26 + 20), a3 + *(v35 + 20), type metadata accessor for SDAuthenticationSessionMetrics);
    return sub_1005493E8(a2, _s12RegistrationV17InitialKeyContextVMa);
  }

  else
  {
    v28 = sub_100010F88(10, 0x20676E697373694DLL, 0xED00006E656B6F74);
    v30 = v29;
    sub_1000115C8();
    swift_allocError();
    *v31 = v28;
    *(v31 + 8) = v30;
    swift_willThrow();

    sub_1005493E8(a2, _s12RegistrationV17InitialKeyContextVMa);
  }
}

uint64_t sub_100547BE4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_10028088C(&qword_100975660, &qword_1007FA820);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1007FA7E0;
  if (qword_1009739F0 != -1)
  {
    swift_once();
  }

  *(v6 + 56) = &type metadata for SDAuthentication.Operation.FinalizeRegistration;
  *(v6 + 64) = &off_10097C030;
  *(v6 + 96) = &type metadata for SDAuthentication.Operation.SendConfirmation;
  *(v6 + 104) = &off_10097C270;
  *(v6 + 136) = &type metadata for SDAuthentication.Operation.NotifyRegistrationSucceeded;
  *(v6 + 144) = &off_10097C018;
  *(v6 + 176) = &type metadata for SDAuthentication.Operation.RecordLastRegistration;
  *(v6 + 184) = &off_10097C000;
  *a3 = v6;
  RecordContextVMa = _s12RegistrationV32HandlePairingCreateRecordContextVMa(0);
  *(a3 + *(RecordContextVMa + 28)) = 0;
  v35 = RecordContextVMa;
  *(a3 + *(RecordContextVMa + 32)) = 2;
  if (qword_1009739E8 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_10000C4AC(v8, qword_100982C50);
  v9 = a1;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v33 = a3;
    v34 = a2;
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v36 = v32;
    *v12 = 138412546;
    *(v12 + 4) = v9;
    *v13 = v9;
    *(v12 + 12) = 2080;
    v14 = [v9 sessionID];
    if (v14)
    {
      v15 = v14;
      v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v18 = v17;
    }

    else
    {
      v16 = 0xD000000000000015;
      v18 = 0x8000000100789F30;
    }

    v19 = sub_10000C4E4(v16, v18, &v36);

    *(v12 + 14) = v19;
    _os_log_impl(&_mh_execute_header, v10, v11, "Received authentication registration create record: %@ for sessionID %s", v12, 0x16u);
    sub_100005508(v13, &qword_100975400, &qword_1007F65D0);

    sub_10000C60C(v32);

    a2 = v34;
    a3 = v33;
  }

  else
  {
  }

  v20 = [v9 token];
  if (v20)
  {
    v21 = v20;
    v22 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;

    v25 = (a3 + *(v35 + 24));
    *v25 = v22;
    v25[1] = v24;
    v26 = _s12RegistrationV28HandlePairingResponseContextVMa(0);
    sub_100549380(a2 + *(v26 + 20), a3 + *(v35 + 20), type metadata accessor for SDAuthenticationSessionMetrics);
    return sub_1005493E8(a2, _s12RegistrationV28HandlePairingResponseContextVMa);
  }

  else
  {
    v28 = sub_100010F88(10, 0xD000000000000058, 0x8000000100794F50);
    v30 = v29;
    sub_1000115C8();
    swift_allocError();
    *v31 = v28;
    *(v31 + 8) = v30;
    swift_willThrow();

    sub_1005493E8(a2, _s12RegistrationV28HandlePairingResponseContextVMa);
  }
}

uint64_t sub_100548068(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v5 = a5(a3, a4);
  v6 = [v5 data];

  if (v6)
  {
    v7 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

    return v7;
  }

  else
  {
    v9 = sub_100010F88(10, 0xD00000000000001ALL, 0x8000000100789BF0);
    v11 = v10;
    sub_1000115C8();
    swift_allocError();
    *v12 = v9;
    *(v12 + 8) = v11;
    return swift_willThrow();
  }
}

uint64_t sub_100548144@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_10028088C(&qword_100975660, &qword_1007FA820);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1007F8830;
  if (qword_1009739F0 != -1)
  {
    swift_once();
  }

  *(v6 + 56) = &type metadata for SDAuthentication.Operation.HandleSucceededResult;
  *(v6 + 64) = &off_10097C258;
  *(v6 + 96) = &type metadata for SDAuthentication.Operation.NotifyRegistrationSucceeded;
  *(v6 + 104) = &off_10097C018;
  *(v6 + 136) = &type metadata for SDAuthentication.Operation.RecordLastRegistration;
  *(v6 + 144) = &off_10097C000;
  *a3 = v6;
  if ([a1 hasSuccess])
  {
    v7 = *(_s12RegistrationV32HandlePairingCreateSecretContextVMa(0) + 20);
    v8 = _s12RegistrationV25HandleConfirmationContextVMa(0);
    sub_100549380(a2 + v7, a3 + *(v8 + 20), type metadata accessor for SDAuthenticationSessionMetrics);
    LOBYTE(v7) = [a1 success];

    result = sub_1005493E8(a2, _s12RegistrationV32HandlePairingCreateSecretContextVMa);
    *(a3 + *(v8 + 24)) = v7;
  }

  else
  {
    v10 = sub_100010F88(1, 0xD000000000000016, 0x8000000100789BD0);
    v12 = v11;
    sub_1000115C8();
    swift_allocError();
    *v13 = v10;
    *(v13 + 8) = v12;
    swift_willThrow();

    sub_1005493E8(a2, _s12RegistrationV32HandlePairingCreateSecretContextVMa);
  }

  return result;
}

void sub_100548334(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v126 = a2;
  v121 = a3;
  v105 = _s12RegistrationV25HandleConfirmationContextVMa(0);
  v4 = *(*(v105 - 8) + 64);
  __chkstk_darwin(v105);
  v109 = (&v105 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_10028088C(&qword_100982E80, &qword_1008097B0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v114 = &v105 - v8;
  RecordContextVMa = _s12RegistrationV32HandlePairingCreateRecordContextVMa(0);
  v9 = *(*(RecordContextVMa - 8) + 64);
  __chkstk_darwin(RecordContextVMa);
  v113 = (&v105 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_10028088C(&qword_100982E88, &qword_1008097B8);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v120 = &v105 - v13;
  SecretContextVMa = _s12RegistrationV32HandlePairingCreateSecretContextVMa(0);
  v112 = *(SecretContextVMa - 8);
  v14 = *(v112 + 64);
  v15 = __chkstk_darwin(SecretContextVMa);
  v107 = &v105 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v108 = &v105 - v18;
  __chkstk_darwin(v17);
  v119 = (&v105 - v19);
  v20 = sub_10028088C(&qword_100982E90, &qword_1008097C0);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v23 = &v105 - v22;
  v24 = _s12RegistrationV17InitialKeyContextVMa(0);
  v123 = *(v24 - 8);
  v124 = v24;
  v25 = *(v123 + 64);
  v26 = __chkstk_darwin(v24);
  v117 = &v105 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v118 = &v105 - v28;
  v122 = _s12RegistrationV28HandlePairingResponseContextVMa(0);
  v116 = *(v122 - 8);
  v29 = *(v116 + 64);
  v30 = __chkstk_darwin(v122);
  v110 = &v105 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __chkstk_darwin(v30);
  v111 = &v105 - v33;
  __chkstk_darwin(v32);
  v35 = (&v105 - v34);
  v36 = sub_10028088C(&qword_100982E98, &qword_1008097C8);
  v37 = *(*(v36 - 8) + 64);
  __chkstk_darwin(v36 - 8);
  v39 = &v105 - v38;
  v40 = _s12RegistrationV18InitialLockContextVMa(0);
  v41 = *(v40 - 8);
  v42 = *(v41 + 64);
  v43 = __chkstk_darwin(v40);
  v45 = &v105 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v43);
  v47 = &v105 - v46;
  sub_1002A9938(a1, v127);
  sub_10028088C(&qword_1009819F0, &unk_1007FAAA0);
  sub_1000276B4(0, &qword_100979D78, off_1008C8D30);
  if (swift_dynamicCast())
  {
    v48 = v128;
    sub_1002A9938(v126, v127);
    sub_10028088C(&qword_1009758D8, &unk_1007F8C30);
    v49 = swift_dynamicCast();
    v50 = *(v41 + 56);
    if (v49)
    {
      v50(v39, 0, 1, v40);
      sub_100549318(v39, v47, _s12RegistrationV18InitialLockContextVMa);
      sub_100549380(v47, v45, _s12RegistrationV18InitialLockContextVMa);
      v51 = v48;
      v52 = v125;
      sub_1005473BC(v51, v45, v35);
      if (v52)
      {
        v53 = _s12RegistrationV18InitialLockContextVMa;
        v54 = v47;
LABEL_21:
        sub_1005493E8(v54, v53);

        return;
      }

      v90 = v121;
      v121[3] = v122;
      v90[4] = &off_1008E6A08;
      v91 = sub_10002F604(v90);
      sub_100549318(v35, v91, _s12RegistrationV28HandlePairingResponseContextVMa);

      v92 = _s12RegistrationV18InitialLockContextVMa;
      v93 = v47;
      goto LABEL_30;
    }

    v50(v39, 1, 1, v40);
    sub_100005508(v39, &qword_100982E98, &qword_1008097C8);
    v64 = "sult, message may be replayed";
    v65 = 0xD000000000000047;
LABEL_10:
    v66 = sub_100010F88(10, v65, v64 | 0x8000000000000000);
    v68 = v67;
    sub_1000115C8();
    swift_allocError();
    *v69 = v66;
    *(v69 + 8) = v68;
    swift_willThrow();

    return;
  }

  v55 = v126;
  sub_1002A9938(a1, v127);
  sub_1000276B4(0, &qword_100979D80, off_1008C8D18);
  if (swift_dynamicCast())
  {
    v56 = v128;
    sub_1002A9938(v55, v127);
    sub_10028088C(&qword_1009758D8, &unk_1007F8C30);
    v57 = v124;
    v58 = swift_dynamicCast();
    v59 = *(v123 + 56);
    if (!v58)
    {
      v59(v23, 1, 1, v57);
      sub_100005508(v23, &qword_100982E90, &qword_1008097C0);
      v79 = sub_100010F88(10, 0xD000000000000050, 0x800000010078CD30);
      v81 = v80;
      sub_1000115C8();
      swift_allocError();
      *v82 = v79;
      *(v82 + 8) = v81;
      swift_willThrow();

      return;
    }

    v59(v23, 0, 1, v57);
    v60 = v118;
    sub_100549318(v23, v118, _s12RegistrationV17InitialKeyContextVMa);
    v61 = v117;
    sub_100549380(v60, v117, _s12RegistrationV17InitialKeyContextVMa);
    v51 = v56;
    v62 = v119;
    v63 = v125;
    sub_1005477B8(v51, v61, v119);
    if (v63)
    {
      v53 = _s12RegistrationV17InitialKeyContextVMa;
      v54 = v60;
      goto LABEL_21;
    }

    v98 = v121;
    v121[3] = SecretContextVMa;
    v98[4] = &off_1008E6A20;
    v99 = sub_10002F604(v98);
    sub_100549318(v62, v99, _s12RegistrationV32HandlePairingCreateSecretContextVMa);

    v92 = _s12RegistrationV17InitialKeyContextVMa;
    v93 = v60;
    goto LABEL_30;
  }

  sub_1002A9938(a1, v127);
  sub_1000276B4(0, &qword_100979D88, off_1008C8D10);
  if (swift_dynamicCast())
  {
    v48 = v128;
    sub_1002A9938(v55, v127);
    sub_10028088C(&qword_1009758D8, &unk_1007F8C30);
    v70 = v120;
    v71 = v122;
    v72 = swift_dynamicCast();
    v73 = *(v116 + 56);
    if (!v72)
    {
      v73(v70, 1, 1, v71);
      sub_100005508(v70, &qword_100982E88, &qword_1008097B8);
      v64 = "ssage may be replayed";
      v65 = 0xD000000000000051;
      goto LABEL_10;
    }

    v73(v70, 0, 1, v71);
    v74 = v111;
    sub_100549318(v70, v111, _s12RegistrationV28HandlePairingResponseContextVMa);
    v75 = v110;
    sub_100549380(v74, v110, _s12RegistrationV28HandlePairingResponseContextVMa);
    v51 = v48;
    v76 = v113;
    v77 = v125;
    sub_100547BE4(v51, v75, v113);
    if (v77)
    {
      v78 = _s12RegistrationV28HandlePairingResponseContextVMa;
LABEL_20:
      v53 = v78;
      v54 = v74;
      goto LABEL_21;
    }

    v100 = v121;
    v121[3] = RecordContextVMa;
    v100[4] = &off_1008E6A38;
    v101 = sub_10002F604(v100);
    sub_100549318(v76, v101, _s12RegistrationV32HandlePairingCreateRecordContextVMa);

    v102 = _s12RegistrationV28HandlePairingResponseContextVMa;
  }

  else
  {
    sub_1002A9938(a1, v127);
    sub_1000276B4(0, &qword_1009758D0, off_1008C8D08);
    if (!swift_dynamicCast())
    {
      v94 = sub_100010F88(10, 0xD000000000000030, 0x8000000100794F10);
      v96 = v95;
      sub_1000115C8();
      swift_allocError();
      *v97 = v94;
      *(v97 + 8) = v96;
      swift_willThrow();
      return;
    }

    v48 = v128;
    sub_1002A9938(v55, v127);
    sub_10028088C(&qword_1009758D8, &unk_1007F8C30);
    v84 = v114;
    v83 = SecretContextVMa;
    v85 = swift_dynamicCast();
    v86 = *(v112 + 56);
    if (!v85)
    {
      v86(v84, 1, 1, v83);
      sub_100005508(v84, &qword_100982E80, &qword_1008097B0);
      v64 = "for VisionUnlockiOSPairing";
      v65 = 0xD000000000000055;
      goto LABEL_10;
    }

    v86(v84, 0, 1, v83);
    v74 = v108;
    sub_100549318(v84, v108, _s12RegistrationV32HandlePairingCreateSecretContextVMa);
    v87 = v107;
    sub_100549380(v74, v107, _s12RegistrationV32HandlePairingCreateSecretContextVMa);
    v51 = v48;
    v88 = v109;
    v89 = v125;
    sub_100548144(v51, v87, v109);
    if (v89)
    {
      v78 = _s12RegistrationV32HandlePairingCreateSecretContextVMa;
      goto LABEL_20;
    }

    v103 = v121;
    v121[3] = v105;
    v103[4] = &off_1008E6A50;
    v104 = sub_10002F604(v103);
    sub_100549318(v88, v104, _s12RegistrationV25HandleConfirmationContextVMa);

    v102 = _s12RegistrationV32HandlePairingCreateSecretContextVMa;
  }

  v92 = v102;
  v93 = v74;
LABEL_30:
  sub_1005493E8(v93, v92);
}

void sub_1005491D4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, uint64_t *a6)
{
  sub_1002A6B2C();
  if (v9 <= 0x3F)
  {
    type metadata accessor for SDAuthenticationSessionMetrics();
    if (v10 <= 0x3F)
    {
      sub_1002A6C94(319, a4, a5, a6);
      if (v11 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_100549318(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100549380(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1005493E8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100549548()
{
  [v0 airdropHash1];
  sub_100549D50();
  v1 = FixedWidthInteger.bigEndianBytes.getter();
  [v0 airdropHash2];
  v2 = FixedWidthInteger.bigEndianBytes.getter();
  sub_10040367C(v2);
  [v0 airdropHash3];
  v3 = FixedWidthInteger.bigEndianBytes.getter();
  sub_10040367C(v3);
  [v0 airdropHash4];
  v4 = FixedWidthInteger.bigEndianBytes.getter();
  sub_10040367C(v4);
  v5 = sub_10057EA7C(v1);

  return v5;
}

uint64_t sub_100549664(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_100549548();
  v8 = v7;
  isa = Data._bridgeToObjectiveC()().super.isa;
  LODWORD(a1) = [a1 contactsContainsShortHashes:isa];

  if (a1)
  {
    if (qword_1009739F8 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_10000C4AC(v10, qword_100983168);
    sub_100294008(v6, v8);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    sub_100026AC0(v6, v8);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v58 = v14;
      *v13 = 136380675;
      sub_100467BE4(v6, v8);
      sub_10028088C(&unk_100976C20, &unk_1007F9D80);
      sub_1003117AC();
      v15 = BidirectionalCollection<>.joined(separator:)();
      v17 = v16;

      v18 = sub_10000C4E4(v15, v17, &v58);

      *(v13 + 4) = v18;
      _os_log_impl(&_mh_execute_header, v11, v12, "Device hashes %{private}s recognized", v13, 0xCu);
      sub_10000C60C(v14);

      sub_100026AC0(v6, v8);

      return 1;
    }

    v49 = v6;
    v50 = v8;
LABEL_16:
    sub_100026AC0(v49, v50);
    return 1;
  }

  if (qword_1009739F8 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  sub_10000C4AC(v20, qword_100983168);
  sub_100294008(v6, v8);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();
  sub_100026AC0(v6, v8);
  v57 = v8;
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v58 = v24;
    *v23 = 136380675;
    sub_100467BE4(v6, v8);
    sub_10028088C(&unk_100976C20, &unk_1007F9D80);
    sub_1003117AC();
    v25 = BidirectionalCollection<>.joined(separator:)();
    v27 = v26;

    v28 = sub_10000C4E4(v25, v27, &v58);

    *(v23 + 4) = v28;
    _os_log_impl(&_mh_execute_header, v21, v22, "Device hashes %{private}s unrecognized", v23, 0xCu);
    sub_10000C60C(v24);
  }

  v29 = [v3 airdropTempAuthTagData];
  if (v29)
  {
    v30 = v29;
    v31 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v33 = v32;

    v34 = [v3 btAddressData];
    if (v34)
    {
      v35 = v34;
      v36 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v38 = v37;

      v39 = Data._bridgeToObjectiveC()().super.isa;
      v40 = Data._bridgeToObjectiveC()().super.isa;
      v41 = [a2 isTempAuthTagKnown:v39 bluetoothAddressData:v40];

      if (v41)
      {
        sub_100294008(v31, v33);
        v42 = Logger.logObject.getter();
        v43 = static os_log_type_t.default.getter();
        sub_100026AC0(v31, v33);
        if (os_log_type_enabled(v42, v43))
        {
          v44 = swift_slowAlloc();
          v56 = swift_slowAlloc();
          v58 = v56;
          *v44 = 136315138;
          log = v42;
          sub_100467BE4(v31, v33);
          sub_10028088C(&unk_100976C20, &unk_1007F9D80);
          sub_1003117AC();
          v45 = BidirectionalCollection<>.joined(separator:)();
          v47 = v46;

          v48 = sub_10000C4E4(v45, v47, &v58);

          *(v44 + 4) = v48;
          _os_log_impl(&_mh_execute_header, log, v43, "Device temp auth tag %s recognized", v44, 0xCu);
          sub_10000C60C(v56);

          sub_100026AC0(v6, v57);
          sub_100026AC0(v31, v33);
          sub_100026AC0(v36, v38);

          return 1;
        }

        sub_100026AC0(v6, v57);
        sub_100026AC0(v36, v38);

        v49 = v31;
        v50 = v33;
        goto LABEL_16;
      }

      sub_100026AC0(v6, v57);
      v53 = v36;
      v54 = v38;
    }

    else
    {
      v53 = v6;
      v54 = v57;
    }

    sub_100026AC0(v53, v54);
    v51 = v31;
    v52 = v33;
  }

  else
  {
    v51 = v6;
    v52 = v57;
  }

  sub_100026AC0(v51, v52);
  return 0;
}

uint64_t sub_100549C88()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_100983168);
  v1 = sub_10000C4AC(v0, qword_100983168);
  if (qword_1009736D0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A08B8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

unint64_t sub_100549D50()
{
  result = qword_100983180;
  if (!qword_100983180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100983180);
  }

  return result;
}

void *sub_100549DA4(uint64_t a1, unint64_t a2)
{
  v3 = a2 >> 62;
  v25 = HIDWORD(a1);
  if ((a2 >> 62) <= 1)
  {
    if (!v3)
    {
      v4 = BYTE6(a2);
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (v3 != 2)
  {
    return _swiftEmptyArrayStorage;
  }

  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  v4 = v5 - v6;
  if (__OFSUB__(v5, v6))
  {
    __break(1u);
LABEL_8:
    if (__OFSUB__(HIDWORD(a1), a1))
    {
      goto LABEL_62;
    }

    v4 = HIDWORD(a1) - a1;
  }

LABEL_10:
  v7 = _swiftEmptyArrayStorage;
  if (v4)
  {
    v40 = _swiftEmptyArrayStorage;
    v26 = a2 >> 62;
    sub_10028FEB0(0, v4 & ~(v4 >> 63), 0);
    v9 = v26;
    v8 = a1;
    if (v26)
    {
      if (v26 == 2)
      {
        v10 = *(a1 + 16);
      }

      else
      {
        v10 = a1;
      }
    }

    else
    {
      v10 = 0;
    }

    if (v4 < 0)
    {
      goto LABEL_61;
    }

    v11 = 0;
    v7 = v40;
    while (1)
    {
      if (v9 == 2)
      {
        if (v10 < *(v8 + 16))
        {
          goto LABEL_53;
        }

        v12 = *(v8 + 24);
      }

      else if (v9 == 1)
      {
        v12 = a1 >> 32;
        if (v10 < a1)
        {
          goto LABEL_52;
        }
      }

      else
      {
        v12 = BYTE6(a2);
        if (v10 < 0)
        {
          goto LABEL_54;
        }
      }

      if (v10 >= v12)
      {
        __break(1u);
LABEL_51:
        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
LABEL_62:
        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
      }

      if (v9 == 2)
      {
        break;
      }

      if (v9 == 1)
      {
        if (v10 < a1 || v10 >= a1 >> 32)
        {
          goto LABEL_57;
        }

        v13 = __DataStorage._bytes.getter();
        if (!v13)
        {
          goto LABEL_63;
        }

        v14 = v13;
        v15 = __DataStorage._offset.getter();
        v16 = v10 - v15;
        if (__OFSUB__(v10, v15))
        {
          goto LABEL_59;
        }

LABEL_39:
        v19 = *(v14 + v16);
        v9 = v26;
        v8 = a1;
        if (v11 == 0x10000)
        {
          goto LABEL_51;
        }

        goto LABEL_43;
      }

      if (v10 >= BYTE6(a2))
      {
        goto LABEL_56;
      }

      v28 = v8;
      v29 = BYTE2(v8);
      v30 = BYTE3(v8);
      v31 = v25;
      v32 = BYTE5(v8);
      v33 = BYTE6(v8);
      v34 = HIBYTE(v8);
      v35 = a2;
      v36 = BYTE2(a2);
      v37 = BYTE3(a2);
      v38 = BYTE4(a2);
      v39 = BYTE5(a2);
      v19 = *(&v28 + v10);
      if (v11 == 0x10000)
      {
        goto LABEL_51;
      }

LABEL_43:
      v20 = v19 << (v11 & 8);
      if (v11 <= 0xF)
      {
        v21 = v20;
      }

      else
      {
        v21 = 0;
      }

      v40 = v7;
      v23 = v7[2];
      v22 = v7[3];
      if (v23 >= v22 >> 1)
      {
        sub_10028FEB0((v22 > 1), v23 + 1, 1);
        v9 = v26;
        v8 = a1;
        v7 = v40;
      }

      v7[2] = v23 + 1;
      *(v7 + v23 + 16) = v21;
      ++v10;
      v11 += 8;
      if (!--v4)
      {
        return v7;
      }
    }

    if (v10 < *(v8 + 16))
    {
      goto LABEL_55;
    }

    if (v10 >= *(v8 + 24))
    {
      goto LABEL_58;
    }

    v17 = __DataStorage._bytes.getter();
    if (!v17)
    {
      goto LABEL_64;
    }

    v14 = v17;
    v18 = __DataStorage._offset.getter();
    v16 = v10 - v18;
    if (__OFSUB__(v10, v18))
    {
      goto LABEL_60;
    }

    goto LABEL_39;
  }

  return v7;
}

void *sub_10054A0F8(int64_t *a1)
{
  v2 = 0;
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = *a1;
  while (1)
  {
    v7 = v4 >= v6;
    if (v5 > 0)
    {
      v7 = v6 >= v4;
    }

    if (v7)
    {
      break;
    }

    v8 = __OFADD__(v6, v5);
    v6 += v5;
    if (v8)
    {
      v6 = (v6 >> 63) ^ 0x8000000000000000;
    }

    v8 = __OFADD__(v2++, 1);
    if (v8)
    {
      __break(1u);
      break;
    }
  }

  v79 = _swiftEmptyArrayStorage;
  sub_10028FFB4(0, v2, 0);
  v74 = a1[4];
  v75 = a1[3];
  result = _swiftEmptyArrayStorage;
  if (!v2)
  {
    v13 = v3;
LABEL_58:
    v42 = v4 >= v13;
    if (v5 > 0)
    {
      v42 = v13 >= v4;
    }

    if (v42)
    {
      return result;
    }

    while (1)
    {
      v43 = result;
      if (__OFADD__(v13, v5))
      {
        v44 = ((v13 + v5) >> 63) ^ 0x8000000000000000;
      }

      else
      {
        v44 = v13 + v5;
      }

      v78 = v13;
      result = v75(&v76, &v78);
      v45 = v76;
      v46 = v77;
      v47 = v77 >> 62;
      if ((v77 >> 62) > 1)
      {
        if (v47 != 2)
        {
          goto LABEL_119;
        }

        v50 = *(v76 + 16);
        v49 = *(v76 + 24);
        v8 = __OFSUB__(v49, v50);
        v48 = v49 - v50;
        if (v8)
        {
          goto LABEL_114;
        }
      }

      else if (v47)
      {
        LODWORD(v48) = HIDWORD(v76) - v76;
        if (__OFSUB__(HIDWORD(v76), v76))
        {
          goto LABEL_115;
        }

        v48 = v48;
      }

      else
      {
        v48 = BYTE6(v77);
      }

      if (v48 != 2)
      {
        goto LABEL_119;
      }

      if (v47 == 2)
      {
        v53 = *(v76 + 16);
        v52 = *(v76 + 24);
        v8 = __OFSUB__(v52, v53);
        v51 = v52 - v53;
        if (v8)
        {
          goto LABEL_116;
        }
      }

      else if (v47 == 1)
      {
        LODWORD(v51) = HIDWORD(v76) - v76;
        if (__OFSUB__(HIDWORD(v76), v76))
        {
          goto LABEL_117;
        }

        v51 = v51;
      }

      else
      {
        v51 = BYTE6(v77);
      }

      if ((v51 - 0x1000000000000000) >> 61 != 7)
      {
        goto LABEL_109;
      }

      if ((v51 & 0x1FFFFFFFFFFFFFFFLL) != 2)
      {
        sub_10028088C(&unk_1009832C0, &unk_1007FA1B0);
        sub_100011630(&unk_100977330, &unk_1009832C0, &unk_1007FA1B0);
        swift_allocError();
        swift_willThrow();
        sub_100026AC0(v45, v46);
      }

      v54 = sub_100549DA4(v76, v77);
      v55 = v54[1].u64[0];
      if (v55)
      {
        break;
      }

      v57 = 0;
LABEL_99:

      sub_100026AC0(v45, v46);
      result = v43;
      v79 = v43;
      v71 = v43[2];
      v72 = result[3];
      if (v71 >= v72 >> 1)
      {
        sub_10028FFB4((v72 > 1), v71 + 1, 1);
        result = v79;
      }

      result[2] = v71 + 1;
      *(result + v71 + 16) = v57;
      v73 = v4 >= v44;
      if (v5 > 0)
      {
        v73 = v44 >= v4;
      }

      v13 = v44;
      if (v73)
      {
        return result;
      }
    }

    if (v55 < 4)
    {
      v56 = 0;
      v57 = 0;
LABEL_97:
      v68 = v55 - v56;
      v69 = &v54[2].i16[v56];
      do
      {
        v70 = *v69++;
        v57 |= v70;
        --v68;
      }

      while (v68);
      goto LABEL_99;
    }

    if (v55 >= 0x10)
    {
      v56 = v55 & 0x7FFFFFFFFFFFFFF0;
      v58 = v54 + 3;
      v59 = 0uLL;
      v60 = v55 & 0x7FFFFFFFFFFFFFF0;
      v61 = 0uLL;
      do
      {
        v59 = vorrq_s8(v58[-1], v59);
        v61 = vorrq_s8(*v58, v61);
        v58 += 2;
        v60 -= 16;
      }

      while (v60);
      v62 = vorrq_s8(v61, v59);
      *v62.i8 = vorr_s8(*v62.i8, *&vextq_s8(v62, v62, 8uLL));
      v57 = v62.i16[0] | v62.i16[2] | ((v62.i32[0] | v62.i32[1]) >> 16);
      if (v55 == v56)
      {
        goto LABEL_99;
      }

      if ((v55 & 0xC) == 0)
      {
        goto LABEL_97;
      }
    }

    else
    {
      v57 = 0;
      v56 = 0;
    }

    v63 = v56;
    v56 = v55 & 0x7FFFFFFFFFFFFFFCLL;
    v64 = v57;
    v65 = (&v54[2] + 2 * v63);
    v66 = v63 - (v55 & 0x7FFFFFFFFFFFFFFCLL);
    do
    {
      v67 = *v65++;
      v64 = vorr_s8(v67, v64);
      v66 += 4;
    }

    while (v66);
    v57 = v64.i16[0] | v64.i16[2] | ((v64.i32[0] | v64.i32[1]) >> 16);
    if (v55 == v56)
    {
      goto LABEL_99;
    }

    goto LABEL_97;
  }

  v10 = 0;
  while (1)
  {
    v11 = v4 >= v3;
    if (v5 > 0)
    {
      v11 = v3 >= v4;
    }

    if (v11)
    {
      break;
    }

    v12 = result;
    if (__OFADD__(v3, v5))
    {
      v13 = ((v3 + v5) >> 63) ^ 0x8000000000000000;
    }

    else
    {
      v13 = v3 + v5;
    }

    v78 = v3;
    result = v75(&v76, &v78);
    v14 = v76;
    v15 = v77;
    v16 = v77 >> 62;
    if ((v77 >> 62) > 1)
    {
      if (v16 != 2)
      {
        goto LABEL_118;
      }

      v19 = *(v76 + 16);
      v18 = *(v76 + 24);
      v8 = __OFSUB__(v18, v19);
      v17 = v18 - v19;
      if (v8)
      {
        goto LABEL_110;
      }
    }

    else if (v16)
    {
      LODWORD(v17) = HIDWORD(v76) - v76;
      if (__OFSUB__(HIDWORD(v76), v76))
      {
        goto LABEL_111;
      }

      v17 = v17;
    }

    else
    {
      v17 = BYTE6(v77);
    }

    if (v17 != 2)
    {
      goto LABEL_118;
    }

    if (v16 == 2)
    {
      v22 = *(v76 + 16);
      v21 = *(v76 + 24);
      v8 = __OFSUB__(v21, v22);
      v20 = v21 - v22;
      if (v8)
      {
        goto LABEL_113;
      }
    }

    else if (v16 == 1)
    {
      LODWORD(v20) = HIDWORD(v76) - v76;
      if (__OFSUB__(HIDWORD(v76), v76))
      {
        goto LABEL_112;
      }

      v20 = v20;
    }

    else
    {
      v20 = BYTE6(v77);
    }

    if ((v20 - 0x1000000000000000) >> 61 != 7)
    {
      __break(1u);
      break;
    }

    if ((v20 & 0x1FFFFFFFFFFFFFFFLL) != 2)
    {
      sub_10028088C(&unk_1009832C0, &unk_1007FA1B0);
      sub_100011630(&unk_100977330, &unk_1009832C0, &unk_1007FA1B0);
      swift_allocError();
      swift_willThrow();

      return sub_100026AC0(v14, v15);
    }

    v23 = sub_100549DA4(v76, v77);
    v24 = v23[1].u64[0];
    if (v24)
    {
      if (v24 < 4)
      {
        v25 = 0;
        v26 = 0;
LABEL_51:
        v37 = v24 - v25;
        v38 = &v23[2].i16[v25];
        do
        {
          v39 = *v38++;
          v26 |= v39;
          --v37;
        }

        while (v37);
        goto LABEL_53;
      }

      if (v24 >= 0x10)
      {
        v25 = v24 & 0x7FFFFFFFFFFFFFF0;
        v27 = v23 + 3;
        v28 = 0uLL;
        v29 = v24 & 0x7FFFFFFFFFFFFFF0;
        v30 = 0uLL;
        do
        {
          v28 = vorrq_s8(v27[-1], v28);
          v30 = vorrq_s8(*v27, v30);
          v27 += 2;
          v29 -= 16;
        }

        while (v29);
        v31 = vorrq_s8(v30, v28);
        *v31.i8 = vorr_s8(*v31.i8, *&vextq_s8(v31, v31, 8uLL));
        v26 = v31.i16[0] | v31.i16[2] | ((v31.i32[0] | v31.i32[1]) >> 16);
        if (v24 == v25)
        {
          goto LABEL_53;
        }

        if ((v24 & 0xC) == 0)
        {
          goto LABEL_51;
        }
      }

      else
      {
        v26 = 0;
        v25 = 0;
      }

      v32 = v25;
      v25 = v24 & 0x7FFFFFFFFFFFFFFCLL;
      v33 = v26;
      v34 = (&v23[2] + 2 * v32);
      v35 = v32 - (v24 & 0x7FFFFFFFFFFFFFFCLL);
      do
      {
        v36 = *v34++;
        v33 = vorr_s8(v36, v33);
        v35 += 4;
      }

      while (v35);
      v26 = v33.i16[0] | v33.i16[2] | ((v33.i32[0] | v33.i32[1]) >> 16);
      if (v24 == v25)
      {
        goto LABEL_53;
      }

      goto LABEL_51;
    }

    v26 = 0;
LABEL_53:

    sub_100026AC0(v14, v15);
    result = v12;
    v79 = v12;
    v40 = v12[2];
    v41 = result[3];
    if (v40 >= v41 >> 1)
    {
      sub_10028FFB4((v41 > 1), v40 + 1, 1);
      result = v79;
    }

    ++v10;
    result[2] = v40 + 1;
    *(result + v40 + 16) = v26;
    v3 = v13;
    if (v2 == v10)
    {
      goto LABEL_58;
    }
  }

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
LABEL_119:
  __break(1u);
  return result;
}

void *sub_10054A7D0(uint64_t a1, unint64_t a2)
{
  v4 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 >> 62)
  {
LABEL_35:
    v5 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v5 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v5)
  {
    v7 = _swiftEmptyArrayStorage;
    goto LABEL_26;
  }

  v6 = 0;
  v7 = _swiftEmptyArrayStorage;
  do
  {
    v8 = v6;
    while (1)
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        v6 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          goto LABEL_33;
        }
      }

      else
      {
        if (v8 >= *(v4 + 16))
        {
          goto LABEL_34;
        }

        v9 = *(a2 + 8 * v8 + 32);

        v6 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
          goto LABEL_35;
        }
      }

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v15 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      if (_swiftEmptyArrayStorage >> 62)
      {
        break;
      }

      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
      {
        goto LABEL_19;
      }

LABEL_13:
      ++v8;
      if (v6 == v5)
      {
        goto LABEL_26;
      }
    }

    if (_CocoaArrayWrapper.endIndex.getter() <= a1)
    {
      goto LABEL_13;
    }

LABEL_19:

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_10028EBE8(0, v7[2] + 1, 1, v7);
    }

    v11 = v7[2];
    v10 = v7[3];
    if (v11 >= v10 >> 1)
    {
      v7 = sub_10028EBE8((v10 > 1), v11 + 1, 1, v7);
    }

    v7[2] = v11 + 1;
    v7[v11 + 4] = _swiftEmptyArrayStorage;
  }

  while (v6 != v5);
LABEL_26:
  if (_swiftEmptyArrayStorage >> 62)
  {
    if (!_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_37;
    }

LABEL_28:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_10028EBE8(0, v7[2] + 1, 1, v7);
    }

    v13 = v7[2];
    v12 = v7[3];
    if (v13 >= v12 >> 1)
    {
      v7 = sub_10028EBE8((v12 > 1), v13 + 1, 1, v7);
    }

    v7[2] = v13 + 1;
    v7[v13 + 4] = _swiftEmptyArrayStorage;
  }

  else
  {
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_28;
    }

LABEL_37:
  }

  return v7;
}

uint64_t sub_10054AA7C(uint64_t result, uint64_t a2)
{
  v2 = 0;
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 64);
  while (v5)
  {
    v6 = v2;
LABEL_10:
    v7 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    if (*(*(a2 + 56) + (v7 | (v6 << 6))) == (result & 1))
    {
      return 1;
    }
  }

  while (1)
  {
    v6 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      break;
    }

    if (v6 >= ((v3 + 63) >> 6))
    {
      return 0;
    }

    v5 = *(a2 + 64 + 8 * v6);
    ++v2;
    if (v5)
    {
      v2 = v6;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

BOOL sub_10054AB18(Swift::UInt64 a1, Swift::UInt64 a2, Swift::UInt64 a3, Swift::UInt64 a4, uint64_t a5)
{
  v8 = (a5 + 56);
  v9 = *(a5 + 16) + 1;
  do
  {
    if (!--v9)
    {
      break;
    }

    v10 = v8 + 4;
    v12 = *(v8 - 1);
    v11 = *v8;
    v14 = *(v8 - 3);
    v13 = *(v8 - 2);
    Hasher.init(_seed:)();
    Hasher._combine(_:)(v14);
    Hasher._combine(_:)(v13);
    Hasher._combine(_:)(v12);
    Hasher._combine(_:)(v11);
    v15 = Hasher._finalize()();
    Hasher.init(_seed:)();
    Hasher._combine(_:)(a1);
    Hasher._combine(_:)(a2);
    Hasher._combine(_:)(a3);
    Hasher._combine(_:)(a4);
    v16 = Hasher._finalize()();
    v8 = v10;
  }

  while (v15 != v16);
  return v9 != 0;
}

uint64_t sub_10054AC2C()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_100983190);
  v1 = sub_10000C4AC(v0, qword_100983190);
  if (qword_100973728 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A09C0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_10054ACF4()
{
  v0 = [objc_allocWithZone(type metadata accessor for SDAirDropContactHashManager()) init];
  sub_10054AD34();
  qword_1009831A8 = v0;
}

void sub_10054AD34()
{
  v1 = v0;
  v2 = type metadata accessor for SFPlatform();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100973A00 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_10000C4AC(v7, qword_100983190);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "HashManager: activate called", v10, 2u);
  }

  static SFPlatform.watchOS.getter();
  v11 = static SFPlatform.isPlatform(_:)();
  (*(v3 + 8))(v6, v2);
  if (v11)
  {
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "AirDrop hashes not needed for watchOS", v14, 2u);
    }
  }

  else
  {
    v15 = *&v0[OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_systemMonitor];
    v16 = swift_allocObject();
    *(v16 + 16) = v0;
    v30 = sub_10055A0AC;
    v31 = v16;
    aBlock = _NSConcreteStackBlock;
    v27 = 1107296256;
    v28 = sub_100011678;
    v29 = &unk_1008E6B08;
    v17 = _Block_copy(&aBlock);
    v18 = v1;

    [v15 setFirstUnlockHandler:v17];
    _Block_release(v17);
    v19 = swift_allocObject();
    *(v19 + 16) = v18;
    v30 = sub_10055A0D0;
    v31 = v19;
    aBlock = _NSConcreteStackBlock;
    v27 = 1107296256;
    v28 = sub_100011678;
    v29 = &unk_1008E6B58;
    v20 = _Block_copy(&aBlock);
    v21 = v18;

    [v15 setPowerUnlimitedChangedHandler:v20];
    _Block_release(v20);
    v30 = sub_10054C1C0;
    v31 = 0;
    aBlock = _NSConcreteStackBlock;
    v27 = 1107296256;
    v28 = sub_100011678;
    v29 = &unk_1008E6B80;
    v22 = _Block_copy(&aBlock);
    [v15 setMeDeviceChangedHandler:v22];
    _Block_release(v22);
    v23 = swift_allocObject();
    *(v23 + 16) = v21;
    v30 = sub_10055A0D8;
    v31 = v23;
    aBlock = _NSConcreteStackBlock;
    v27 = 1107296256;
    v28 = sub_100011678;
    v29 = &unk_1008E6BD0;
    v24 = _Block_copy(&aBlock);
    v25 = v21;

    [v15 activateWithCompletion:v24];
    _Block_release(v24);
    sub_100558E88();
    sub_100559198();
  }
}

char *sub_10054B1AC(uint64_t a1)
{
  v2 = v1;
  v34 = a1;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v32 = *(v3 - 8);
  *&v33 = v3;
  v4 = *(v32 + 64);
  __chkstk_darwin(v3);
  v6 = v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for OS_dispatch_queue.Attributes();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v9 = type metadata accessor for DispatchQoS();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v11 = OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_contactUpdateCoalescer;
  *&v1[v11] = [objc_allocWithZone(CUCoalescer) init];
  v12 = OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_meCardUpdateCoalescer;
  *&v1[v12] = [objc_allocWithZone(CUCoalescer) init];
  v31 = OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_hashManagerQ;
  v30[1] = sub_1000276B4(0, &qword_10097A620, OS_dispatch_queue_ptr);
  static DispatchQoS.utility.getter();
  v37 = _swiftEmptyArrayStorage;
  sub_100558BE8(&qword_100973C60, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_10028088C(&unk_10097A630, &unk_1007F5680);
  sub_100011630(&qword_100973C70, &unk_10097A630, &unk_1007F5680);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v32 + 104))(v6, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v33);
  v13 = v34;
  *&v1[v31] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v14 = OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_bucket;
  v15 = [objc_allocWithZone(SFTokenBucket) initWithBucketSize:100 tokenDurationSec:1.0];
  v16 = [objc_allocWithZone(SFTokenBucketWithDups) initWithBucket:v15 dupHistoryLength:100];

  *&v2[v14] = v16;
  v2[OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_activated] = 0;
  v17 = &v2[OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_meCardInfo];
  *v17 = 0;
  v17[1] = 0;
  v2[OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_hashesUpdatedSuccessfully] = 1;
  *&v2[OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_contactChangeBatchSize] = 1000;
  *&v2[OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_osTransaction] = 0;
  v18 = &v2[OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_osStateHandler];
  *v18 = 0;
  v18[8] = 1;
  sub_1002A9938(v13 + 8, &v2[OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_contactStore]);
  v33 = *(v13 + 48);
  *&v2[OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_hashDB] = v33;
  *&v2[OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_systemMonitor] = *v13;
  v19 = *(v13 + 64);
  v20 = *(v13 + 72);
  *&v2[OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_notificationCenter] = v19;
  *&v2[OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_distributedNotificationCenter] = v20;
  sub_10055A4EC(v13, &v2[OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_context]);
  v21 = qword_100973A00;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v22 = v19;
  v23 = v20;
  if (v21 != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  sub_10000C4AC(v24, qword_100983190);
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&_mh_execute_header, v25, v26, "HashManager: init.", v27, 2u);
  }

  v36.receiver = v2;
  v36.super_class = ObjectType;
  v28 = objc_msgSendSuper2(&v36, "init");
  [*&v28[OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_systemMonitor] setDispatchQueue:*&v28[OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_hashManagerQ]];
  sub_10055A548(v13);
  return v28;
}

void sub_10054B738()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v4 = v3[8];
  __chkstk_darwin(v2);
  v6 = (&v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_hashManagerQ);
  *v6 = v7;
  v8 = enum case for DispatchPredicate.onQueue(_:);
  v9 = v3[13];
  v9(v6, enum case for DispatchPredicate.onQueue(_:), v2);
  v10 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  v11 = v3[1];
  v11(v6, v2);
  if (v7)
  {
    v27 = v10;
    v28 = v11;
    if (qword_100973A00 == -1)
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
  v12 = type metadata accessor for Logger();
  sub_10000C4AC(v12, qword_100983190);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v26 = v2;
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "HashManager: internal activate called", v15, 2u);
    v2 = v26;
  }

  if ([*(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_systemMonitor) firstUnlocked])
  {
    v16 = OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_activated;
    if ((*(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_activated) & 1) == 0)
    {
      sub_10054D0D8();
      v17 = v27;
      *v6 = v27;
      v9(v6, v8, v2);
      v18 = v17;
      LOBYTE(v17) = _dispatchPreconditionTest(_:)();
      v28(v6, v2);
      if (v17)
      {
        if ((*(v1 + v16) & 1) == 0)
        {
          sub_10054D3E8(&OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_contactUpdateCoalescer, &unk_1008E6CA8, sub_10055A120, &unk_1008E6CC0);
          sub_10054D3E8(&OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_meCardUpdateCoalescer, &unk_1008E6C58, sub_10055A0FC, &unk_1008E6C70);
        }

        sub_10054BC44(0);
        sub_10054D60C();
        v19 = Logger.logObject.getter();
        v20 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v19, v20))
        {
          v21 = swift_slowAlloc();
          *v21 = 0;
          _os_log_impl(&_mh_execute_header, v19, v20, "HashManager: activated", v21, 2u);
        }

        *(v1 + v16) = 1;
        sub_10054CA3C();
      }

      else
      {
        __break(1u);
      }
    }
  }

  else
  {
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "Device has not been unlocked. Don't activate hash manager.", v24, 2u);
    }
  }
}

id sub_10054BB40(uint64_t a1)
{
  result = [*(a1 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_systemMonitor) powerUnlimited];
  if (result)
  {
    if (qword_100973A00 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_10000C4AC(v2, qword_100983190);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Power handler called", v5, 2u);
    }

    return sub_10054BC44(0);
  }

  return result;
}

BOOL sub_10054BC44(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = (&v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *&v2[OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_hashManagerQ];
  *v8 = v9;
  (*(v5 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v4);
  v10 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v8, v4);
  if (v9)
  {
    if (qword_100973A00 == -1)
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
  v11 = type metadata accessor for Logger();
  sub_10000C4AC(v11, qword_100983190);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "Hash update requested.", v14, 2u);
  }

  if (a1)
  {
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "Force rebuild requested", v17, 2u);
    }
  }

  v18 = *&v2[OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_meCardInfo];
  if (v18)
  {
    v19 = [v18 identifier];
    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v21;
  }

  else
  {
    v20 = 0;
    v22 = 0;
  }

  v27 = 0;
  v28 = 0;
  v26 = 0;
  sub_10055208C();
  v23 = sub_10055079C(v2, a1 & 1, &v26, &v28, &v27, v20, v22);

  v2[OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_hashesUpdatedSuccessfully] = 1;
  sub_100552198();
  return v23;
}

void sub_10054C1E0(uint64_t a1, const char *a2)
{
  if (qword_100973A00 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000C4AC(v3, qword_100983190);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, a2, v6, 2u);
  }

  sub_10054B738();
}

void sub_10054C2CC()
{
  v0 = [objc_opt_self() defaultManager];
  URL._bridgeToObjectiveC()(v1);
  v3 = v2;
  v14 = 0;
  v4 = [v0 removeItemAtURL:v2 error:&v14];

  v5 = v14;
  if (v4)
  {

    v6 = v5;
  }

  else
  {
    v7 = v14;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_100973A00 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_10000C4AC(v8, qword_100983190);
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
      _os_log_impl(&_mh_execute_header, v9, v10, "Failed to delete url %@", v11, 0xCu);
      sub_100005508(v12, &qword_100975400, &qword_1007F65D0);
    }

    else
    {
    }
  }
}

void sub_10054C524(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = (v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_hashManagerQ);
  *v8 = v9;
  (*(v5 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v4);
  v10 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v8, v4);
  if (v9)
  {
    if (qword_100973A00 == -1)
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
  v11 = type metadata accessor for Logger();
  sub_10000C4AC(v11, qword_100983190);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 67109120;
    *(v14 + 4) = a1 & 1;
    _os_log_impl(&_mh_execute_header, v12, v13, "Posting contacts hashes changed notification - updates occurred %{BOOL}d", v14, 8u);
  }

  v15 = *(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_notificationCenter);
  v16 = String._bridgeToObjectiveC()();
  sub_10028088C(&qword_100985A60, &unk_100808040);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007F5670;
  v19[1] = 0xD000000000000037;
  v19[2] = 0x800000010078D8C0;
  AnyHashable.init<A>(_:)();
  *(inited + 96) = &type metadata for Bool;
  *(inited + 72) = a1 & 1;
  sub_10027FD18(inited);
  swift_setDeallocating();
  sub_100005508(inited + 32, &qword_1009832B0, &unk_1007F64D0);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v15 postNotificationName:v16 object:0 userInfo:isa];
}

void sub_10054C82C()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = (&v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_hashManagerQ);
  *v6 = v7;
  (*(v3 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v2);
  v8 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v6, v2);
  if (v7)
  {
    if (qword_100973A00 == -1)
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
  v9 = type metadata accessor for Logger();
  sub_10000C4AC(v9, qword_100983190);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "Posting meCard changed notification", v12, 2u);
  }

  v13 = *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_notificationCenter);
  v14 = String._bridgeToObjectiveC()();
  [v13 postNotificationName:v14 object:0];
}

void sub_10054CA3C()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = (aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *&v0[OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_hashManagerQ];
  *v5 = v6;
  (*(v2 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v1);
  v7 = v6;
  v8 = _dispatchPreconditionTest(_:)();
  (*(v2 + 8))(v5, v1);
  if (v8)
  {
    sub_10054C524(1);
    sub_10054C82C();
    v9 = &v0[OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_osStateHandler];
    if (v0[OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_osStateHandler + 8] == 1)
    {
      v10 = swift_allocObject();
      *(v10 + 16) = v0;
      aBlock[4] = sub_100025EDC;
      aBlock[5] = v10;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100025E8C;
      aBlock[3] = &unk_1008E6C20;
      v11 = _Block_copy(aBlock);
      v12 = v0;

      v13 = os_state_add_handler();
      _Block_release(v11);
      *v9 = v13;
      v9[8] = 0;
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_10054CC24()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = (&v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_hashManagerQ);
  *v6 = v7;
  (*(v3 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v2);
  v8 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v6, v2);
  if (v7)
  {
    if (qword_100973A00 == -1)
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
  v9 = type metadata accessor for Logger();
  sub_10000C4AC(v9, qword_100983190);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "Contact update coalescer fired", v12, 2u);
  }

  if (*(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_activated) == 1)
  {
    v13 = sub_10054BC44(0);
    sub_10054C524(v13);
  }

  else
  {
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "HashManager: not activated yet.", v16, 2u);
    }
  }
}

void sub_10054CE84()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = (&v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_hashManagerQ);
  *v6 = v7;
  (*(v3 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v2);
  v8 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v6, v2);
  if (v7)
  {
    if (qword_100973A00 == -1)
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
  v9 = type metadata accessor for Logger();
  sub_10000C4AC(v9, qword_100983190);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "MeCard update coalescer fired", v12, 2u);
  }

  if (*(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_activated) == 1)
  {
    sub_10054C82C();
  }

  else
  {
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "HashManager: not activated yet.", v15, 2u);
    }
  }
}

void sub_10054D0D8()
{
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 1);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = (&v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_hashManagerQ);
  *v6 = v7;
  (*(v3 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v2);
  v8 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v6, v2);
  if ((v7 & 1) == 0)
  {
    __break(1u);
LABEL_10:
    swift_once();
    goto LABEL_5;
  }

  if (*(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_activated))
  {
    return;
  }

  v2 = objc_opt_self();
  v1 = &selRef_shareUserDefaultsActivity;
  v9 = [v2 standardUserDefaults];
  v10 = String._bridgeToObjectiveC()();
  v6 = [v9 integerForKey:v10];

  if (v6 == 3)
  {
    return;
  }

  if (qword_100973A00 != -1)
  {
    goto LABEL_10;
  }

LABEL_5:
  v11 = type metadata accessor for Logger();
  sub_10000C4AC(v11, qword_100983190);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 134218240;
    *(v14 + 4) = v6;
    *(v14 + 12) = 2048;
    *(v14 + 14) = 3;
    _os_log_impl(&_mh_execute_header, v12, v13, "Database version mismatch: %ld!=%ld. Clearing history token to rebuild database", v14, 0x16u);
  }

  v15 = [v2 v1[146]];
  v16 = String._bridgeToObjectiveC()();
  [v15 setObject:0 forKey:v16];

  v17 = [v2 v1[146]];
  v18 = String._bridgeToObjectiveC()();
  [v17 setInteger:3 forKey:v18];
}

void sub_10054D3E8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = (aBlock - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *&v4[OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_hashManagerQ];
  *v12 = v13;
  (*(v9 + 104))(v12, enum case for DispatchPredicate.onQueue(_:), v8);
  v14 = v13;
  v15 = _dispatchPreconditionTest(_:)();
  (*(v9 + 8))(v12, v8);
  if (v15)
  {
    if ((v4[OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_activated] & 1) == 0)
    {
      v16 = *&v4[*a1];
      [v16 setDispatchQueue:v14];
      v17 = &v4[OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_context];
      [v16 setMinDelay:*&v4[OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_context + 80]];
      [v16 setMaxDelay:v17[11]];
      v18 = swift_allocObject();
      *(v18 + 16) = v4;
      aBlock[4] = a3;
      aBlock[5] = v18;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100011678;
      aBlock[3] = a4;
      v19 = _Block_copy(aBlock);
      v20 = v4;

      [v16 setActionHandler:v19];
      _Block_release(v19);
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_10054D60C()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = (&v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_hashManagerQ);
  *v5 = v6;
  (*(v2 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v1);
  v7 = v6;
  LOBYTE(v6) = _dispatchPreconditionTest(_:)();
  (*(v2 + 8))(v5, v1);
  if (v6)
  {
    if ((*(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_activated) & 1) == 0)
    {
      v8 = *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_notificationCenter);
      v9 = (v0 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_contactStore);
      [v8 addObserver:v0 selector:"contactStoreDidChange" name:*(*sub_10002CDC0((v0 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_contactStore) object:{*(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_contactStore + 24)) + 16), 0}];
      [v8 addObserver:v0 selector:"meCardDidChange" name:*(*sub_10002CDC0(v9 object:{v9[3]) + 24), 0}];
      v10 = *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_distributedNotificationCenter);
      v11 = String._bridgeToObjectiveC()();
      [v10 addObserver:v0 selector:"cmfSyncAgentBlockListDidChange" name:v11 object:0];
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10054D8F4(const char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = a1;
  v7 = v4;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v29 = *(v8 - 8);
  v9 = *(v29 + 64);
  __chkstk_darwin(v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for DispatchQoS();
  v12 = *(v28 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v28);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100973A00 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_10000C4AC(v16, qword_100983190);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v26 = v15;
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v17, v18, v27, v19, 2u);
    v15 = v26;
  }

  v20 = *&v7[OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_hashManagerQ];
  v21 = swift_allocObject();
  *(v21 + 16) = v7;
  aBlock[4] = a3;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100011678;
  aBlock[3] = a4;
  v22 = _Block_copy(aBlock);
  v23 = v7;
  static DispatchQoS.unspecified.getter();
  v30 = _swiftEmptyArrayStorage;
  sub_100558BE8(&qword_100976140, &type metadata accessor for DispatchWorkItemFlags);
  sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
  sub_100011630(&qword_100976150, &unk_1009765A0, &qword_1007F97B0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v22);
  (*(v29 + 8))(v11, v8);
  (*(v12 + 8))(v15, v28);
}

uint64_t sub_10054DD24(int a1)
{
  v2 = v1;
  v4 = sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v48[-v6];
  v8 = type metadata accessor for Date();
  v50 = *(v8 - 8);
  v9 = *(v50 + 64);
  __chkstk_darwin(v8);
  v51 = &v48[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for DispatchPredicate();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v48[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = *(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_hashManagerQ);
  *v15 = v16;
  (*(v12 + 104))(v15, enum case for DispatchPredicate.onQueue(_:), v11);
  v17 = v16;
  v18 = _dispatchPreconditionTest(_:)();
  (*(v12 + 8))(v15, v11);
  if (v18)
  {
    v49 = a1;
    if (qword_100973A00 == -1)
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
  v19 = v8;
  v20 = type metadata accessor for Logger();
  sub_10000C4AC(v20, qword_100983190);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&_mh_execute_header, v21, v22, "Persist requested.", v23, 2u);
  }

  v24 = *(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_hashDB);
  v25 = *(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_hashDB + 8);
  ObjectType = swift_getObjectType();
  v27 = *(v25 + 56);
  swift_unknownObjectRetain();
  v28 = v54;
  v27(ObjectType, v25);
  result = swift_unknownObjectRelease();
  if (!v28)
  {
    v30 = v51;
    Date.init()();
    v31 = v50;
    v32 = *(v50 + 16);
    v32(v7, v30, v19);
    v33 = *(v31 + 56);
    v33(v7, 0, 1, v19);
    sub_100559C28(v7);
    if (v49)
    {
      v32(v7, v51, v19);
      v33(v7, 0, 1, v19);
      sub_100559DC8(v7);
    }

    v34 = [*(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_systemMonitor) meDeviceIDSDeviceID];
    if (v34)
    {
      v35 = v34;
      v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v38 = v37;

      v52 = v36;
      v53 = v38;
      sub_10001229C();
      v39 = StringProtocol.hash.getter();

      v40 = Logger.logObject.getter();
      v41 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        *v42 = 134217984;
        *(v42 + 4) = v39;
        _os_log_impl(&_mh_execute_header, v40, v41, "Persist completed for deviceID hash %ld", v42, 0xCu);
      }

      v43 = [objc_opt_self() standardUserDefaults];
      isa = Int._bridgeToObjectiveC()().super.super.isa;
      v45 = String._bridgeToObjectiveC()();
      [v43 setObject:isa forKey:v45];
    }

    else
    {
      v45 = Logger.logObject.getter();
      v46 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        *v47 = 0;
        _os_log_impl(&_mh_execute_header, v45, v46, "Missing deviceID hash", v47, 2u);
      }
    }

    return (*(v50 + 8))(v51, v19);
  }

  return result;
}

void sub_10054E2A8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = type metadata accessor for DispatchPredicate();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = (&v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *(a2 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_hashManagerQ);
  *v13 = v14;
  (*(v10 + 104))(v13, enum case for DispatchPredicate.onQueue(_:), v9);
  v15 = v14;
  LOBYTE(v14) = _dispatchPreconditionTest(_:)();
  (*(v10 + 8))(v13, v9);
  if ((v14 & 1) == 0)
  {
    __break(1u);
    goto LABEL_19;
  }

  v16 = [a1 identifier];
  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;

  if (a4)
  {
    if (v17 == a3 && v19 == a4)
    {

      goto LABEL_13;
    }

    v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v21)
    {
LABEL_13:
      if (qword_100973A00 == -1)
      {
LABEL_14:
        v26 = type metadata accessor for Logger();
        sub_10000C4AC(v26, qword_100983190);
        v27 = Logger.logObject.getter();
        v28 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v27, v28))
        {
          v29 = swift_slowAlloc();
          *v29 = 0;
          _os_log_impl(&_mh_execute_header, v27, v28, "Skip meCard change", v29, 2u);
        }

        return;
      }

LABEL_19:
      swift_once();
      goto LABEL_14;
    }
  }

  else
  {
  }

  v22 = [a1 identifier];
  v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v25 = v24;

  sub_10054E864(v23, v25, a2, a3, a4);

  if (!v4)
  {
    sub_10054E588(a1, a2, a3, a4);
  }
}

void sub_10054E588(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = type metadata accessor for DispatchPredicate();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = (&v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *(a2 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_hashManagerQ);
  *v13 = v14;
  (*(v10 + 104))(v13, enum case for DispatchPredicate.onQueue(_:), v9);
  v15 = v14;
  LOBYTE(v14) = _dispatchPreconditionTest(_:)();
  (*(v10 + 8))(v13, v9);
  if ((v14 & 1) == 0)
  {
    __break(1u);
    goto LABEL_19;
  }

  v16 = [a1 identifier];
  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;

  if (a4)
  {
    if (v17 == a3 && v19 == a4)
    {

      goto LABEL_13;
    }

    v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v21)
    {
LABEL_13:
      if (qword_100973A00 == -1)
      {
LABEL_14:
        v29 = type metadata accessor for Logger();
        sub_10000C4AC(v29, qword_100983190);
        v30 = Logger.logObject.getter();
        v31 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v30, v31))
        {
          v32 = swift_slowAlloc();
          *v32 = 0;
          _os_log_impl(&_mh_execute_header, v30, v31, "Skip meCard change", v32, 2u);
        }

        return;
      }

LABEL_19:
      swift_once();
      goto LABEL_14;
    }
  }

  else
  {
  }

  sub_10054EAF4(a1);
  if (!v4)
  {
    v23 = a2 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_hashDB;
    v24 = *(a2 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_hashDB);
    v25 = *(v23 + 8);
    v26 = v22;
    ObjectType = swift_getObjectType();
    v28 = *(v25 + 24);
    swift_unknownObjectRetain();
    v28(v26, ObjectType, v25);

    swift_unknownObjectRelease();
  }
}

void sub_10054E864(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = (&v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *(a3 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_hashManagerQ);
  *v14 = v15;
  (*(v11 + 104))(v14, enum case for DispatchPredicate.onQueue(_:), v10);
  v16 = v15;
  LOBYTE(v15) = _dispatchPreconditionTest(_:)();
  (*(v11 + 8))(v14, v10);
  if ((v15 & 1) == 0)
  {
    __break(1u);
LABEL_12:
    swift_once();
    goto LABEL_7;
  }

  _s16DaemoniOSLibrary21SDXPCHelperImageCacheC5evict17contactIdentifierySS_tFZ_0(a1, a2);
  if (!a5 || (a1 != a4 || a2 != a5) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    v21 = a3 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_hashDB;
    v22 = *(a3 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_hashDB);
    v23 = *(v21 + 8);
    ObjectType = swift_getObjectType();
    v25 = *(v23 + 32);
    swift_unknownObjectRetain();
    v25(a1, a2, ObjectType, v23);
    swift_unknownObjectRelease();
    return;
  }

  if (qword_100973A00 != -1)
  {
    goto LABEL_12;
  }

LABEL_7:
  v17 = type metadata accessor for Logger();
  sub_10000C4AC(v17, qword_100983190);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&_mh_execute_header, v18, v19, "Skip meCard change", v20, 2u);
  }
}

void sub_10054EAF4(void *a1)
{
  v2 = [a1 identifier];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  *&v190 = v3;
  *(&v190 + 1) = v5;
  v188 = 44;
  v189 = 0xE100000000000000;
  v186 = sub_10001229C();
  LOBYTE(v2) = StringProtocol.contains<A>(_:)();

  if (v2)
  {
    __break(1u);
  }

  else
  {
    v178 = a1;
    v7 = [a1 emailAddresses];
    sub_10028088C(&qword_10097A210, &qword_1007FDB90);
    v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v6 = v8;
    if (!(v8 >> 62))
    {
      v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_4;
    }
  }

  v38 = v6;
  v9 = _CocoaArrayWrapper.endIndex.getter();
  v6 = v38;
LABEL_4:
  v10 = _swiftEmptyArrayStorage;
  if (v9)
  {
    v11 = v6;
    *&v190 = _swiftEmptyArrayStorage;
    sub_10028FBDC(0, v9 & ~(v9 >> 63), 0);
    if (v9 < 0)
    {
LABEL_114:
      __break(1u);
LABEL_115:
      __break(1u);
LABEL_116:
      __break(1u);
      goto LABEL_117;
    }

    v12 = 0;
    v13 = v190;
    v14 = v11;
    do
    {
      if ((v11 & 0xC000000000000001) != 0)
      {
        v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v15 = *(v14 + 8 * v12 + 32);
      }

      v16 = v15;
      v17 = String.init(_:)([v15 value]);

      *&v190 = v13;
      v19 = v13[2];
      v18 = v13[3];
      if (v19 >= v18 >> 1)
      {
        sub_10028FBDC((v18 > 1), v19 + 1, 1);
        v13 = v190;
      }

      ++v12;
      v13[2] = v19 + 1;
      *&v13[2 * v19 + 4] = v17;
      v14 = v11;
    }

    while (v9 != v12);

    v10 = _swiftEmptyArrayStorage;
  }

  else
  {

    v13 = _swiftEmptyArrayStorage;
  }

  v20 = [v178 instantMessageAddresses];
  v21 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v21 >> 62))
  {
    v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v22)
    {
      goto LABEL_17;
    }

LABEL_29:

    v24 = _swiftEmptyArrayStorage;
    goto LABEL_30;
  }

  v22 = _CocoaArrayWrapper.endIndex.getter();
  if (!v22)
  {
    goto LABEL_29;
  }

LABEL_17:
  v188 = _swiftEmptyArrayStorage;
  sub_10028FBDC(0, v22 & ~(v22 >> 63), 0);
  if (v22 < 0)
  {
    goto LABEL_115;
  }

  v23 = 0;
  v24 = v188;
  v25 = v21;
  v172 = v21 & 0xC000000000000001;
  v179 = v21;
  do
  {
    if (v172)
    {
      v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v26 = *(v25 + 8 * v23 + 32);
    }

    v10 = v26;
    v27 = [v26 value];
    v28 = [v27 username];

    v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v31 = v30;

    *&v190 = v29;
    *(&v190 + 1) = v31;
    v32 = String.init<A>(_:)();
    v34 = v33;

    v188 = v24;
    v36 = v24[2];
    v35 = v24[3];
    if (v36 >= v35 >> 1)
    {
      v10 = &v188;
      sub_10028FBDC((v35 > 1), v36 + 1, 1);
      v24 = v188;
    }

    ++v23;
    v24[2] = v36 + 1;
    v37 = &v24[2 * v36];
    v37[4] = v32;
    v37[5] = v34;
    v25 = v179;
  }

  while (v22 != v23);

LABEL_30:
  v39 = v24[2];
  if (!v39)
  {
    v173 = _swiftEmptyArrayStorage;
    goto LABEL_44;
  }

  v40 = 0;
  v41 = v24 + 5;
  v180 = v24[2];
  v163 = v39 - 1;
  v173 = _swiftEmptyArrayStorage;
  while (2)
  {
    v42 = &v41[2 * v40];
    v43 = v40;
    while (1)
    {
      if (v43 >= v24[2])
      {
        __break(1u);
        goto LABEL_84;
      }

      v45 = *(v42 - 1);
      v44 = *v42;
      v40 = v43 + 1;
      *&v190 = v45;
      *(&v190 + 1) = v44;
      v188 = 64;
      v189 = 0xE100000000000000;

      v10 = &v190;
      if (StringProtocol.contains<A>(_:)())
      {
        break;
      }

      v42 += 2;
      ++v43;
      if (v180 == v40)
      {
        goto LABEL_44;
      }
    }

    v10 = v173;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v194 = v173;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_10028FBDC(0, v173[2] + 1, 1);
      v10 = v194;
    }

    v48 = *(v10 + 16);
    v47 = *(v10 + 24);
    v49 = v48 + 1;
    if (v48 >= v47 >> 1)
    {
      sub_10028FBDC((v47 > 1), v48 + 1, 1);
      v49 = v48 + 1;
      v10 = v194;
    }

    *(v10 + 16) = v49;
    v173 = v10;
    v50 = v10 + 16 * v48;
    *(v50 + 32) = v45;
    *(v50 + 40) = v44;
    v41 = v24 + 5;
    if (v163 != v43)
    {
      continue;
    }

    break;
  }

LABEL_44:

  *&v190 = v13;
  sub_100403A1C(v173);
  v51 = v190;
  v52 = *(v190 + 16);
  if (!v52)
  {

    v71 = _swiftEmptyArrayStorage;
LABEL_62:
    v80 = v71[2];
    v81 = v178;
    if (v80)
    {
      v175 = v80 - 1;
      v186 = _swiftEmptyArrayStorage;
      v82 = 4;
      for (i = v71; ; v71 = i)
      {
        v83 = *&v71[v82];
        v84 = *&v71[v82 + 2];
        v85 = *&v71[v82 + 4];
        v193 = v71[v82 + 6];
        v191 = v84;
        v192 = v85;
        v190 = v83;
        sub_10000FF90(&v190, &v188, &qword_100975050, &qword_1007F83F0);
        v86 = [v81 identifier];
        v87 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v89 = v88;

        v90 = v190;
        v165 = v192;
        v169 = v191;
        v91 = BYTE2(v193);
        v92 = v193;
        LOBYTE(v194) = HIBYTE(v193);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v186 = sub_10028EFE0(0, *(v186 + 2) + 1, 1, v186);
        }

        v94 = *(v186 + 2);
        v93 = *(v186 + 3);
        if (v94 >= v93 >> 1)
        {
          v186 = sub_10028EFE0((v93 > 1), v94 + 1, 1, v186);
        }

        *(v186 + 2) = v94 + 1;
        v95 = &v186[72 * v94];
        *(v95 + 4) = v87;
        *(v95 + 5) = v89;
        *(v95 + 3) = v90;
        *(v95 + 4) = v169;
        *(v95 + 5) = v165;
        v95[98] = (v92 | (v91 << 16)) >> 16;
        *(v95 + 48) = v92;
        v95[99] = v194;
        if (!v175)
        {
          break;
        }

        --v175;
        v82 += 7;
        v81 = v178;
      }

      v81 = v178;
    }

    else
    {

      v186 = _swiftEmptyArrayStorage;
    }

    v96 = [v81 phoneNumbers];
    v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (!(v10 >> 62))
    {
      v97 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v97)
      {
LABEL_74:
        v188 = _swiftEmptyArrayStorage;
        sub_10028FBDC(0, v97 & ~(v97 >> 63), 0);
        if (v97 < 0)
        {
          goto LABEL_116;
        }

        v98 = 0;
        v99 = v188;
        v100 = v10;
        v183 = v10 & 0xC000000000000001;
        v101 = v10;
        do
        {
          if (v183)
          {
            v102 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v102 = *(v100 + 8 * v98 + 32);
          }

          v103 = v102;
          v104 = [v102 value];
          v105 = [v104 stringValue];

          v106 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v108 = v107;

          *&v190 = v106;
          *(&v190 + 1) = v108;
          v109 = String.init<A>(_:)();
          v111 = v110;

          v188 = v99;
          v113 = v99[2];
          v112 = v99[3];
          if (v113 >= v112 >> 1)
          {
            sub_10028FBDC((v112 > 1), v113 + 1, 1);
            v99 = v188;
          }

          ++v98;
          v99[2] = v113 + 1;
          v114 = &v99[2 * v113];
          v114[4] = v109;
          v114[5] = v111;
          v100 = v101;
        }

        while (v97 != v98);

        goto LABEL_86;
      }

LABEL_85:

      v99 = _swiftEmptyArrayStorage;
LABEL_86:
      sub_1002A9938(v161 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_contactStore, &v190);
      sub_10002CDC0(&v190, *(&v191 + 1));
      DynamicType = swift_getDynamicType();
      v116 = v192;
      sub_10000C60C(&v190);
      v117 = 0;
      v118 = v99[2];
      v119 = v99 + 5;
      v166 = _swiftEmptyArrayStorage;
LABEL_87:
      v120 = &v119[2 * v117];
      while (v118 != v117)
      {
        if (v117 >= v99[2])
        {
          __break(1u);
          goto LABEL_114;
        }

        ++v117;
        v121 = v120 + 2;
        v122 = *(v120 - 1);
        v123 = *v120;
        v124 = *(v116 + 40);

        v125 = v124(v122, v123, DynamicType, v116);
        v127 = v126;

        v120 = v121;
        if (v127)
        {
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v128 = v166;
          }

          else
          {
            v128 = sub_10028E1C8(0, *(v166 + 2) + 1, 1, v166);
          }

          v130 = *(v128 + 2);
          v129 = *(v128 + 3);
          if (v130 >= v129 >> 1)
          {
            v128 = sub_10028E1C8((v129 > 1), v130 + 1, 1, v128);
          }

          *(v128 + 2) = v130 + 1;
          v166 = v128;
          v131 = &v128[16 * v130];
          *(v131 + 4) = v125;
          *(v131 + 5) = v127;
          v119 = v99 + 5;
          goto LABEL_87;
        }
      }

      v132 = *(v166 + 2);
      if (v132)
      {
        v188 = _swiftEmptyArrayStorage;
        sub_10028FF14(0, v132, 0);
        v133 = v188;
        v134 = (v166 + 40);
        do
        {
          v135 = *(v134 - 1);
          v136 = *v134;

          sub_100465D18(v135, v136, &v190);
          v137 = *(&v190 + 1);
          v170 = v190;
          v176 = v192;
          v184 = v191;
          v138 = BYTE2(v193);
          v139 = v193;
          v140 = HIBYTE(v193);

          LOBYTE(v190) = v140;
          v188 = v133;
          v142 = v133[2];
          v141 = v133[3];
          if (v142 >= v141 >> 1)
          {
            sub_10028FF14((v141 > 1), v142 + 1, 1);
            v133 = v188;
          }

          v133[2] = v142 + 1;
          v143 = &v133[7 * v142];
          v143[4] = v170;
          v143[5] = v137;
          *(v143 + 3) = v184;
          *(v143 + 4) = v176;
          *(v143 + 82) = (v139 | (v138 << 16)) >> 16;
          *(v143 + 40) = v139;
          *(v143 + 83) = v140;
          v134 += 2;
          --v132;
        }

        while (v132);
      }

      else
      {

        v133 = _swiftEmptyArrayStorage;
      }

      v144 = v133[2];
      v145 = v178;
      if (v144)
      {
        v185 = v144 - 1;
        v146 = 32;
        while (1)
        {
          v147 = *(v133 + v146);
          v148 = *(v133 + v146 + 16);
          v149 = *(v133 + v146 + 32);
          v193 = *(v133 + v146 + 48);
          v191 = v148;
          v192 = v149;
          v190 = v147;
          sub_10000FF90(&v190, &v188, &qword_100975050, &qword_1007F83F0);
          v150 = [v145 identifier];
          v177 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v152 = v151;

          v153 = v190;
          v167 = v192;
          v171 = v191;
          v154 = BYTE2(v193);
          v155 = v193;
          LOBYTE(v194) = HIBYTE(v193);
          v156 = v146;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v186 = sub_10028EFE0(0, *(v186 + 2) + 1, 1, v186);
          }

          v158 = *(v186 + 2);
          v157 = *(v186 + 3);
          if (v158 >= v157 >> 1)
          {
            v186 = sub_10028EFE0((v157 > 1), v158 + 1, 1, v186);
          }

          *(v186 + 2) = v158 + 1;
          v159 = &v186[72 * v158];
          *(v159 + 4) = v177;
          *(v159 + 5) = v152;
          *(v159 + 3) = v153;
          *(v159 + 4) = v171;
          *(v159 + 5) = v167;
          v159[98] = (v155 | (v154 << 16)) >> 16;
          *(v159 + 48) = v155;
          v159[99] = v194;
          if (!v185)
          {
            break;
          }

          --v185;
          v146 = v156 + 56;
          v145 = v178;
        }
      }

      return;
    }

LABEL_84:
    v97 = _CocoaArrayWrapper.endIndex.getter();
    if (v97)
    {
      goto LABEL_74;
    }

    goto LABEL_85;
  }

  v188 = _swiftEmptyArrayStorage;
  sub_10028FF14(0, v52, 0);
  v181 = v188;
  v53 = *(v51 + 32);
  v54 = *(v51 + 40);
  v160 = v51;

  v55 = String._bridgeToObjectiveC()();
  v56 = sub_1001F25F8(v55, 0);

  if (v56)
  {
    v57 = (v160 + 56);
    do
    {
      v187 = v52;
      v58 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v60 = v59;

      v61 = String._bridgeToObjectiveC()();
      v62 = sub_1001F25F8(v61, 1);

      if (!v62)
      {
        goto LABEL_118;
      }

      v63 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v65 = v64;

      sub_100465D18(v58, v60, &v190);
      v67 = *(&v190 + 1);
      v66 = v190;
      v168 = v192;
      v174 = v191;
      v164 = v193 | (BYTE2(v193) << 16);
      v68 = HIBYTE(v193);
      if (v58 == v63 && v60 == v65)
      {
        v162 = v57;
        v69 = *(&v190 + 1);
        v70 = v190;
        v71 = v181;
        v72 = v193 | (BYTE2(v193) << 16);
      }

      else
      {
        v73 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v73)
        {
          v71 = v181;
          v72 = v164;
          goto LABEL_55;
        }

        v162 = v57;
        v69 = v67;
        v70 = v66;
        sub_100465D18(v63, v65, &v190);
        v72 = v193 | (BYTE2(v193) << 16);
        v68 = HIBYTE(v193);
        v71 = v181;
      }

      v66 = v70;
      v67 = v69;
      v57 = v162;
LABEL_55:

      LOBYTE(v194) = v68;
      v188 = v71;
      v75 = v71[2];
      v74 = v71[3];
      if (v75 >= v74 >> 1)
      {
        sub_10028FF14((v74 > 1), v75 + 1, 1);
        v71 = v188;
      }

      v71[2] = v75 + 1;
      v76 = &v71[7 * v75];
      v76[4] = v66;
      v76[5] = v67;
      *(v76 + 3) = v174;
      *(v76 + 4) = v168;
      *(v76 + 82) = BYTE2(v72);
      *(v76 + 40) = v72;
      *(v76 + 83) = v68;
      v52 = v187 - 1;
      if (v187 == 1)
      {

        goto LABEL_62;
      }

      v181 = v71;
      v77 = *(v57 - 1);
      v78 = *v57;

      v79 = String._bridgeToObjectiveC()();
      v56 = sub_1001F25F8(v79, 0);

      v57 += 2;
    }

    while (v56);
  }

LABEL_117:
  __break(1u);
LABEL_118:
  __break(1u);
}

uint64_t sub_10054F9C0(uint64_t a1)
{
  v78 = type metadata accessor for Calendar.Component();
  v4 = *(v78 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v78);
  v74 = &v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = type metadata accessor for Calendar();
  v75 = *(v77 - 8);
  v7 = *(v75 + 64);
  __chkstk_darwin(v77);
  v9 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v76 = &v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v67 - v14;
  v16 = type metadata accessor for Date();
  v17 = *(v16 - 8);
  v18 = v17[8];
  v19 = __chkstk_darwin(v16);
  v71 = &v67 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v70 = &v67 - v22;
  v23 = __chkstk_darwin(v21);
  v73 = &v67 - v24;
  v25 = __chkstk_darwin(v23);
  v72 = &v67 - v26;
  __chkstk_darwin(v25);
  v79 = &v67 - v27;
  v28 = type metadata accessor for DispatchPredicate();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  __chkstk_darwin(v28);
  v32 = (&v67 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  v33 = *(a1 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_hashManagerQ);
  *v32 = v33;
  (*(v29 + 104))(v32, enum case for DispatchPredicate.onQueue(_:), v28);
  v34 = v33;
  LOBYTE(v33) = _dispatchPreconditionTest(_:)();
  v36 = *(v29 + 8);
  v35 = (v29 + 8);
  v36(v32, v28);
  if ((v33 & 1) == 0)
  {
    __break(1u);
LABEL_16:
    swift_once();
    goto LABEL_7;
  }

  sub_10002693C(v15);
  v37 = v17[6];
  if (v37(v15, 1, v16) == 1)
  {
LABEL_5:
    sub_100005508(v15, &qword_10097A7F0, &unk_1007FB600);
    v43 = 0;
    return v43 & 1;
  }

  v69 = v17;
  v68 = v17[4];
  v68(v79, v15, v16);
  v38 = v9;
  static Calendar.current.getter();
  v39 = v74;
  v40 = v78;
  (*(v4 + 104))(v74, enum case for Calendar.Component.day(_:), v78);
  v41 = v76;
  Calendar.date(byAdding:value:to:wrappingComponents:)();
  v42 = v40;
  v15 = v41;
  (*(v4 + 8))(v39, v42);
  (*(v75 + 8))(v38, v77);
  if (v37(v41, 1, v16) == 1)
  {
    (v69[1])(v79, v16);
    goto LABEL_5;
  }

  v17 = v69;
  v35 = v72;
  v68(v72, v15, v16);
  Date.init()();
  sub_100558BE8(&qword_10097E910, &type metadata accessor for Date);
  LODWORD(v78) = dispatch thunk of static Comparable.< infix(_:_:)();
  Date.timeIntervalSinceReferenceDate.getter();
  v1 = v44;
  Date.timeIntervalSinceReferenceDate.getter();
  v2 = v45;
  if (qword_100973A00 != -1)
  {
    goto LABEL_16;
  }

LABEL_7:
  v46 = type metadata accessor for Logger();
  sub_10000C4AC(v46, qword_100983190);
  v47 = v17[2];
  v48 = v70;
  v47(v70, v35, v16);
  v49 = v71;
  v50 = v79;
  v47(v71, v79, v16);
  v51 = Logger.logObject.getter();
  v52 = static os_log_type_t.default.getter();
  if (!os_log_type_enabled(v51, v52))
  {

    v66 = v17[1];
    v66(v49, v16);
    v66(v48, v16);
    v66(v73, v16);
    v66(v35, v16);
    v66(v50, v16);
    goto LABEL_13;
  }

  LODWORD(v76) = v52;
  v53 = v1 - v2;
  v54 = swift_slowAlloc();
  v75 = swift_slowAlloc();
  v80 = v75;
  *v54 = 136315650;
  sub_100558BE8(&qword_100983290, &type metadata accessor for Date);
  v55 = dispatch thunk of CustomStringConvertible.description.getter();
  v57 = v56;
  v58 = v17[1];
  v58(v48, v16);
  v59 = sub_10000C4E4(v55, v57, &v80);

  *(v54 + 4) = v59;
  *(v54 + 12) = 2080;
  v60 = dispatch thunk of CustomStringConvertible.description.getter();
  v62 = v61;
  v77 = v16;
  v58(v49, v16);
  v63 = sub_10000C4E4(v60, v62, &v80);

  *(v54 + 14) = v63;
  *(v54 + 22) = 2048;
  if ((*&v53 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_18;
  }

  if (v53 <= -9.22337204e18)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v53 < 9.22337204e18)
  {
    *(v54 + 24) = v53;
    _os_log_impl(&_mh_execute_header, v51, v76, "Next hash store rebuild: %s, last: %s, secs to next rebuild: %ld", v54, 0x20u);
    swift_arrayDestroy();

    v65 = v77;
    v58(v73, v77);
    v58(v72, v65);
    v58(v79, v65);
LABEL_13:
    v43 = v78 ^ 1;
    return v43 & 1;
  }

LABEL_19:
  __break(1u);
  return result;
}

BOOL sub_10055028C(uint64_t a1)
{
  v2 = sub_100559F68();
  if ((v3 & 1) != 0 || (v4 = v2, (v5 = [*(a1 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_context) meDeviceIDSDeviceID]) == 0))
  {
    if (qword_100973A00 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_10000C4AC(v13, qword_100983190);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "Last deviceID hash not populated", v16, 2u);
    }

    return 0;
  }

  else
  {
    v6 = v5;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    sub_10001229C();
    v7 = StringProtocol.hash.getter();

    if (qword_100973A00 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_10000C4AC(v8, qword_100983190);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 134218240;
      *(v11 + 4) = v4;
      *(v11 + 12) = 2048;
      *(v11 + 14) = v7;
      _os_log_impl(&_mh_execute_header, v9, v10, "Comparing deviceID hashes %ld - %ld", v11, 0x16u);
    }

    return v4 == v7;
  }
}

uint64_t sub_1005504C0(int a1, _BYTE *a2)
{
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = (&v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *&a2[OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_hashManagerQ];
  *v10 = v11;
  (*(v7 + 104))(v10, enum case for DispatchPredicate.onQueue(_:), v6);
  v12 = v11;
  LOBYTE(v11) = _dispatchPreconditionTest(_:)();
  (*(v7 + 8))(v10, v6);
  if ((v11 & 1) == 0)
  {
    __break(1u);
LABEL_13:
    swift_once();
    goto LABEL_8;
  }

  LODWORD(v10) = sub_10054F9C0(a2);
  v13 = *&a2[OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_hashDB];
  v14 = *&a2[OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_hashDB + 8];
  ObjectType = swift_getObjectType();
  v16 = *(v14 + 16);
  swift_unknownObjectRetain();
  LOBYTE(v14) = v16(ObjectType, v14);
  swift_unknownObjectRelease();
  if (v14)
  {
    v2 = 1;
    v3 = 1;
  }

  else
  {
    v3 = !sub_10055028C(a2);
    v2 = 1;
    if (((a1 | v10) & 1) == 0 && !v3)
    {
      v3 = 0;
      v2 = a2[OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_hashesUpdatedSuccessfully] ^ 1;
    }
  }

  if (qword_100973A00 != -1)
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = type metadata accessor for Logger();
  sub_10000C4AC(v17, qword_100983190);
  v18 = a2;
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 67110144;
    *(v21 + 4) = v2 & 1;
    *(v21 + 8) = 1024;
    *(v21 + 10) = a1 & 1;
    *(v21 + 14) = 1024;
    *(v21 + 16) = v10 & 1;
    *(v21 + 20) = 1024;
    *(v21 + 22) = v3;
    *(v21 + 26) = 1024;
    *(v21 + 28) = (*(&v18->isa + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_hashesUpdatedSuccessfully) & 1) == 0;

    _os_log_impl(&_mh_execute_header, v19, v20, "Should regenerate database: %{BOOL}d (forceRebuild: %{BOOL}d rebuild due: %{BOOL}d storeRebuildRequired: %{BOOL}d hashesFailedToUpdate: %{BOOL}d", v21, 0x20u);
  }

  else
  {

    v19 = v18;
  }

  return v2 & 1;
}

BOOL sub_10055079C(char *a1, char a2, void *a3, uint64_t *a4, uint64_t *a5, uint64_t a6, uint64_t a7)
{
  v160 = a7;
  v159 = a6;
  v158 = a3;
  v12 = type metadata accessor for DispatchPredicate();
  v13 = *(v12 - 8);
  v14 = v13[8];
  __chkstk_darwin(v12);
  v16 = (&v134 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = *&a1[OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_hashManagerQ];
  v16->isa = v17;
  v18 = v13[13];
  v165 = enum case for DispatchPredicate.onQueue(_:);
  v164 = v13 + 13;
  v163 = v18;
  v18(v16);
  v162 = v17;
  v19 = _dispatchPreconditionTest(_:)();
  v20 = v13[1];
  v166 = v16;
  v168 = v12;
  v167 = v13 + 1;
  v161 = v20;
  v20(v16, v12);
  if (v19)
  {
    v155 = a5;
    v19 = swift_allocObject();
    *(v19 + 16) = a1;
    v21 = qword_100973A00;
    v172 = a1;
    if (v21 == -1)
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
  v22 = type metadata accessor for Logger();
  v23 = sub_10000C4AC(v22, qword_100983190);
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&_mh_execute_header, v24, v25, "Start updating hashes.", v26, 2u);
  }

  v27 = v172;
  v170 = sub_1005504C0(a2 & 1, v172);
  if (v170)
  {
    v28 = 0;
    v29 = 0xF000000000000000;
LABEL_8:
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&_mh_execute_header, v31, v32, "History token is nil. Will regenerate hash database", v33, 2u);
      v27 = v172;
    }

    goto LABEL_11;
  }

  v28 = sub_100559B00();
  v29 = v30;
  if (v30 >> 60 == 15)
  {
    goto LABEL_8;
  }

LABEL_11:
  v156 = a4;
  v169 = v23;
  v34 = *sub_10002CDC0(&v27[OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_contactStore], *&v27[OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_contactStore + 24]);
  v35 = sub_1005A0840(v28, v29);
  if (v7)
  {

    sub_10028BCC0(v28, v29);

    return v38;
  }

  v40 = v35;
  v41 = v37;
  v154 = v36;
  v42 = sub_10054A7D0(1000, v35);
  v43 = v42[2];
  v44 = v43 != 0;
  if (!v43)
  {

    sub_100551E0C(v27);
    v144 = v44;

    v51 = objc_opt_self();
    v52 = v154;
    sub_100294008(v154, v41);
    v53 = [v51 standardUserDefaults];
    sub_100294008(v52, v41);
    isa = Data._bridgeToObjectiveC()().super.isa;
    sub_100026AC0(v52, v41);
    v55 = String._bridgeToObjectiveC()();
    [v53 setObject:isa forKey:v55];

    sub_100026AC0(v52, v41);
    v56 = Logger.logObject.getter();
    v57 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      *v58 = 0;
      _os_log_impl(&_mh_execute_header, v56, v57, "No hash updates needed.", v58, 2u);
    }

    goto LABEL_22;
  }

  v141 = v42[2];
  if (v170)
  {
    v148 = v42;
    v145 = v40;
    v153 = v41;
    v144 = v43 != 0;
    v143 = v28;
    v45 = &v27[OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_hashDB];
    v47 = *&v27[OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_hashDB];
    v46 = *&v27[OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_hashDB + 8];
    v48 = v27;
    ObjectType = swift_getObjectType();
    v50 = *(v46 + 64);
    swift_unknownObjectRetain();
    v50(ObjectType, v46);
    swift_unknownObjectRelease();
    type metadata accessor for SDAirDropHashStoreCDB();
    v59 = swift_allocObject();
    sub_1000276B4(0, &qword_100973C78, NSData_ptr);
    v60 = objc_allocWithZone(CUKeyValueStoreReader);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    *(v59 + 16) = [v60 initWithKeyType:ObjCClassFromMetadata valueType:ObjCClassFromMetadata];
    *(v59 + 24) = 0;
    *(v59 + 32) = _swiftEmptyArrayStorage;
    *(v59 + 40) = &_swiftEmptySetSingleton;
    *(v59 + 48) = 0;
    v62 = *v45;
    *v45 = v59;
    v45[1] = &protocol witness table for SDAirDropHashStoreCDB;
    swift_unknownObjectRelease();
    sub_100559A08(&static os_log_type_t.debug.getter, "HashManager: database set.");

    v147 = 0;
    v19 = 0;
    v28 = v143;
    v44 = v144;
    v27 = v48;
    v41 = v153;
    v40 = v145;
    v63 = v148;
  }

  else
  {
    v147 = sub_100558E6C;
    v63 = v42;
  }

  sub_100551E0C(v27);
  v148 = v63;
  v145 = v40;
  v153 = v41;
  v144 = v44;

  v64 = &v27[OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_hashDB];
  v66 = *&v27[OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_hashDB];
  v65 = *&v27[OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_hashDB + 8];
  v67 = swift_getObjectType();
  v68 = *(v65 + 40);
  swift_unknownObjectRetain();
  v68(v67, v65);
  v69 = 0;
  v135 = v64;
  swift_unknownObjectRelease();
  v70 = 0;
  v71 = v148;
  v137 = v148 + 4;
  *&v72 = 136315138;
  v146 = v72;
  v73 = v158;
  v74 = v172;
  v136 = v29;
  v143 = v28;
  do
  {
    if (v70 >= v71[2])
    {
LABEL_94:
      __break(1u);
LABEL_95:
      __break(1u);
      goto LABEL_96;
    }

    v138 = v70;
    v75 = v137[v70];

    v76 = objc_autoreleasePoolPush();
    v77 = v75;
    v140 = v76;
    if (v75 >> 62)
    {
      v78 = _CocoaArrayWrapper.endIndex.getter();
      v77 = v75;
      if (!v78)
      {
        goto LABEL_71;
      }
    }

    else
    {
      v78 = *((v75 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v78)
      {
        goto LABEL_71;
      }
    }

    v151 = v77 & 0xC000000000000001;
    v149 = v78;
    v65 = v77;
    swift_beginAccess();
    swift_beginAccess();
    swift_beginAccess();
    v79 = v65;
    v80 = 0;
    v142 = v65 & 0xFFFFFFFFFFFFFF8;
    v139 = v147;
    v81 = v19;
    v150 = v65;
    do
    {
      v152 = v81;
LABEL_29:
      v28 = v80;
      while (1)
      {
        if (v151)
        {
          v82 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v65 = v28 + 1;
          if (__OFADD__(v28, 1))
          {
            goto LABEL_89;
          }
        }

        else
        {
          if (v28 >= *(v142 + 16))
          {
            goto LABEL_92;
          }

          v82 = *(v79 + 8 * v28 + 32);

          v65 = v28 + 1;
          if (__OFADD__(v28, 1))
          {
LABEL_89:
            __break(1u);
LABEL_90:
            __break(1u);
LABEL_91:
            __break(1u);
LABEL_92:
            __break(1u);
LABEL_93:
            __break(1u);
            goto LABEL_94;
          }
        }

        type metadata accessor for SDContactChangeHistoryDropEverythingEvent();
        v83 = swift_dynamicCastClass();
        v157 = v65;
        if (v83)
        {
          break;
        }

        v84 = Logger.logObject.getter();
        v85 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v84, v85))
        {
          v86 = swift_slowAlloc();
          v87 = v69;
          v88 = swift_slowAlloc();
          v171[0] = v88;
          *v86 = v146;
          v89 = *v82;
          v90 = _typeName(_:qualified:)();
          v29 = sub_10000C4E4(v90, v91, v171);
          v73 = v158;

          *(v86 + 4) = v29;
          _os_log_impl(&_mh_execute_header, v84, v85, "Processing event: %s", v86, 0xCu);
          sub_10000C60C(v88);
          v69 = v87;
        }

        v74 = v172;
        if (v170)
        {
          type metadata accessor for SDContactChangeHistoryAddEvent();
          if (!swift_dynamicCastClass())
          {

            v65 = Logger.logObject.getter();
            LOBYTE(v66) = static os_log_type_t.fault.getter();

            if (os_log_type_enabled(v65, v66))
            {
              v106 = swift_slowAlloc();
              v107 = swift_slowAlloc();
              v171[0] = v107;
              *v106 = v146;
              v108 = *v82;
              v109 = _typeName(_:qualified:)();
              v111 = sub_10000C4E4(v109, v110, v171);

              *(v106 + 4) = v111;
              _os_log_impl(&_mh_execute_header, v65, v66, "Unexpected change event %s when regenerating database", v106, 0xCu);
              sub_10000C60C(v107);
              v73 = v158;

              v74 = v172;
            }

            else
            {
            }

            v170 = 1;
            v80 = v157;
            v79 = v150;
            v19 = v152;
            if (v157 == v149)
            {
LABEL_70:
              v147 = v139;
              v29 = v136;
              v28 = v143;
              goto LABEL_71;
            }

            goto LABEL_29;
          }
        }

        v29 = v166;
        v92 = v162;
        v166->isa = v162;
        v66 = v168;
        v163(v29, v165, v168);
        v93 = v92;
        v65 = _dispatchPreconditionTest(_:)();
        v161(v29, v66);
        if ((v65 & 1) == 0)
        {
          goto LABEL_90;
        }

        type metadata accessor for SDContactChangeHistoryUpdateEvent();
        v94 = swift_dynamicCastClass();
        if (v94)
        {
          v65 = *(v94 + 16);
          sub_10054E2A8(v65, v74, v159, v160);

          if (__OFADD__(*v73, 1))
          {
            goto LABEL_91;
          }

          ++*v73;
        }

        else
        {
          type metadata accessor for SDContactChangeHistoryAddEvent();
          v95 = swift_dynamicCastClass();
          if (v95)
          {
            v65 = *(v95 + 16);
            sub_10054E588(v65, v74, v159, v160);

            v96 = v156;
            v97 = *v156 + 1;
            if (__OFADD__(*v156, 1))
            {
              goto LABEL_93;
            }
          }

          else
          {
            type metadata accessor for SDContactChangeHistoryDeleteEvent();
            v98 = swift_dynamicCastClass();
            if (!v98)
            {

              v29 = Logger.logObject.getter();
              LOBYTE(v66) = static os_log_type_t.fault.getter();

              if (os_log_type_enabled(v29, v66))
              {
                v100 = swift_slowAlloc();
                v65 = swift_slowAlloc();
                v171[0] = v65;
                *v100 = v146;
                v101 = *v82;
                v102 = _typeName(_:qualified:)();
                v104 = v69;
                v105 = sub_10000C4E4(v102, v103, v171);
                v73 = v158;

                *(v100 + 4) = v105;
                v69 = v104;
                _os_log_impl(&_mh_execute_header, v29, v66, "Unexpected event: %s", v100, 0xCu);
                sub_10000C60C(v65);

                v74 = v172;
              }

              else
              {
              }

              goto LABEL_31;
            }

            v99 = *(v98 + 16);
            v65 = *(v98 + 24);

            sub_10054E864(v99, v65, v74, v159, v160);

            v96 = v155;
            v97 = *v155 + 1;
            if (__OFADD__(*v155, 1))
            {
              goto LABEL_95;
            }
          }

          *v96 = v97;
        }

LABEL_31:
        v79 = v150;
        v19 = v152;
        ++v28;
        if (v157 == v149)
        {
          goto LABEL_70;
        }
      }

      v65 = Logger.logObject.getter();
      LOBYTE(v66) = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v65, v66))
      {
        v112 = swift_slowAlloc();
        *v112 = 0;
        _os_log_impl(&_mh_execute_header, v65, v66, "Change event is DropEverything. Request regenerate entire db.", v112, 2u);
        v74 = v172;
      }

      v29 = v136;
      v28 = v143;
      v113 = v139;
      if (v139)
      {
        LOBYTE(v66) = v152;
        v139();
        v65 = v150;

        sub_100015D04(v113);
        v79 = v65;
      }

      else
      {

        v79 = v150;
      }

      v139 = 0;
      v81 = 0;
      v147 = 0;
      v19 = 0;
      v170 = 1;
      v80 = v157;
    }

    while (v157 != v149);
LABEL_71:

    v114 = Logger.logObject.getter();
    v115 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v114, v115))
    {
      v116 = swift_slowAlloc();
      *v116 = 0;
      _os_log_impl(&_mh_execute_header, v114, v115, "Persisting change event batch", v116, 2u);
      v74 = v172;
    }

    LOBYTE(v66) = v74;
    sub_10054DD24(v170 & 1);
    v65 = v138 + 1;
    objc_autoreleasePoolPop(v140);
    v70 = v65;
    v71 = v148;
  }

  while (v65 != v141);
  v74 = 0;

  v117 = v145;

  v65 = Logger.logObject.getter();
  LOBYTE(v66) = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v65, v66))
  {
    v69 = swift_slowAlloc();
    *v69 = 134218752;
    if (!(v117 >> 62))
    {
      v119 = *((v117 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_80;
    }

LABEL_96:
    v119 = _CocoaArrayWrapper.endIndex.getter();
LABEL_80:

    *(v69 + 4) = v119;

    *(v69 + 12) = 2048;
    v120 = v156;
    swift_beginAccess();
    *(v69 + 14) = *v120;
    *(v69 + 22) = 2048;
    v121 = v155;
    swift_beginAccess();
    *(v69 + 24) = *v121;
    *(v69 + 32) = 2048;
    v122 = v158;
    swift_beginAccess();
    *(v69 + 34) = *v122;
    _os_log_impl(&_mh_execute_header, v65, v66, "Processed %ld contact change events (add=%ld,delete=%ld,update=%ld)", v69, 0x2Au);
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }

  v124 = *v135;
  v123 = v135[1];
  v125 = swift_getObjectType();
  v126 = *(v123 + 48);
  swift_unknownObjectRetain();
  v126(v125, v123);
  if (v74)
  {
    sub_100015D04(v147);
    swift_unknownObjectRelease();
    sub_100026AC0(v154, v153);
    sub_10028BCC0(v28, v29);
    return v38;
  }

  swift_unknownObjectRelease();
  v127 = objc_opt_self();
  v128 = v154;
  v41 = v153;
  sub_100294008(v154, v153);
  v129 = [v127 standardUserDefaults];
  sub_100294008(v128, v41);
  v130 = Data._bridgeToObjectiveC()().super.isa;
  sub_100026AC0(v128, v41);
  v131 = String._bridgeToObjectiveC()();
  [v129 setObject:v130 forKey:v131];

  sub_100026AC0(v128, v41);
  v56 = Logger.logObject.getter();
  v132 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v56, v132))
  {
    v133 = swift_slowAlloc();
    *v133 = 0;
    _os_log_impl(&_mh_execute_header, v56, v132, "Updating hashes completed.", v133, 2u);
  }

  sub_100015D04(v147);
LABEL_22:
  sub_100026AC0(v154, v41);
  sub_10028BCC0(v28, v29);

  return v144;
}

uint64_t sub_100551E0C(uint64_t a1)
{
  if (qword_100973A00 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000C4AC(v2, qword_100983190);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Load hash db from disk", v5, 2u);
  }

  v6 = *(a1 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_hashDB);
  v7 = *(a1 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_hashDB + 8);
  ObjectType = swift_getObjectType();
  v9 = *(v7 + 8);
  swift_unknownObjectRetain();
  v9(ObjectType, v7);
  return swift_unknownObjectRelease();
}

void sub_100551F48(uint64_t a1)
{
  v2 = (a1 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_hashDB);
  v3 = *(a1 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_hashDB);
  v4 = *(a1 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_hashDB + 8);
  ObjectType = swift_getObjectType();
  v6 = *(v4 + 64);
  swift_unknownObjectRetain();
  v6(ObjectType, v4);
  swift_unknownObjectRelease();
  if (!v1)
  {
    type metadata accessor for SDAirDropHashStoreCDB();
    v7 = swift_allocObject();
    sub_1000276B4(0, &qword_100973C78, NSData_ptr);
    v8 = objc_allocWithZone(CUKeyValueStoreReader);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    *(v7 + 16) = [v8 initWithKeyType:ObjCClassFromMetadata valueType:ObjCClassFromMetadata];
    *(v7 + 24) = 0;
    *(v7 + 32) = _swiftEmptyArrayStorage;
    *(v7 + 40) = &_swiftEmptySetSingleton;
    *(v7 + 48) = 0;
    v10 = *v2;
    *v2 = v7;
    v2[1] = &protocol witness table for SDAirDropHashStoreCDB;
    swift_unknownObjectRelease();
    sub_100559A08(&static os_log_type_t.debug.getter, "HashManager: database set.");
  }
}

uint64_t sub_10055208C()
{
  v1 = v0;
  if (qword_100973A00 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000C4AC(v2, qword_100983190);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Begin AirDropContactHashManager OSTransaction", v5, 2u);
  }

  v6 = os_transaction_create();
  v7 = *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_osTransaction);
  *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_osTransaction) = v6;

  return swift_unknownObjectRelease();
}

void sub_100552198()
{
  v1 = OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_osTransaction;
  if (*(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_osTransaction))
  {
    v2 = v0;
    if (qword_100973A00 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_10000C4AC(v3, qword_100983190);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Clearing AirDropContactHashManager OSTransaction", v6, 2u);
    }

    v7 = *(v2 + v1);
    *(v2 + v1) = 0;

    swift_unknownObjectRelease();
  }
}

uint64_t sub_1005522B8(char *a1, uint64_t a2)
{
  v114 = a2;
  v112 = a1;
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  v5 = v4[8];
  __chkstk_darwin(v3);
  v7 = (&v108 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v110 = v2;
  v8 = *(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_hashManagerQ);
  *v7 = v8;
  v9 = enum case for DispatchPredicate.onQueue(_:);
  v10 = v4[13];
  (v10)(v7, enum case for DispatchPredicate.onQueue(_:), v3);
  v11 = v8;
  v12 = _dispatchPreconditionTest(_:)();
  v13 = v4[1];
  v13(v7, v3);
  if ((v12 & 1) == 0)
  {
    goto LABEL_100;
  }

  *v7 = v11;
  (v10)(v7, v9, v3);
  v14 = _dispatchPreconditionTest(_:)();
  v13(v7, v3);
  if ((v14 & 1) == 0)
  {
    goto LABEL_101;
  }

  if (*(v110 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_hashesUpdatedSuccessfully) == 1)
  {
    *&v116 = v112;
    *(&v116 + 1) = v114;
    v115[0] = 44;
    v115[1] = 0xE100000000000000;
    sub_10001229C();
    v15 = StringProtocol.components<A>(separatedBy:)();
    v16 = 0;
    v17 = *(v15 + 16);
    v12 = v15 + 40;
    v11 = _swiftEmptyArrayStorage;
    v112 = _swiftEmptyArrayStorage;
    while (1)
    {
      v18 = (v12 + 16 * v16);
      do
      {
        if (v17 == v16)
        {
          v3 = *(v112 + 2);
          v28 = *(v15 + 16);

          v12 = v113;
          if (v3 != v28)
          {
            if (qword_100973A00 == -1)
            {
              goto LABEL_17;
            }

            goto LABEL_102;
          }

          goto LABEL_20;
        }

        if (v16 >= *(v15 + 16))
        {
          __break(1u);
          while (2)
          {
            __break(1u);
LABEL_92:
            __break(1u);
LABEL_93:
            __break(1u);
LABEL_94:
            __break(1u);
LABEL_95:
            __break(1u);
            while (1)
            {
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
              swift_once();
LABEL_17:
              v29 = type metadata accessor for Logger();
              sub_10000C4AC(v29, qword_100983190);
              v30 = Logger.logObject.getter();
              v31 = static os_log_type_t.fault.getter();
              if (os_log_type_enabled(v30, v31))
              {
                v32 = swift_slowAlloc();
                *v32 = 0;
                _os_log_impl(&_mh_execute_header, v30, v31, "Decoded base64 count test failed", v32, 2u);
              }

LABEL_20:
              if (v3)
              {
                break;
              }

              v34 = _swiftEmptyArrayStorage;
LABEL_45:
              v50 = *(v110 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_meCardInfo);
              v114 = v34;
              if (!v50)
              {
                goto LABEL_64;
              }

              v113 = v12;
              v3 = *(v110 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_meCardInfo + 8);

              v51 = *(v3 + 16);
              if (!v51)
              {
                v53 = _swiftEmptyArrayStorage;
LABEL_60:

                if (v53[2])
                {

                  if (v53[2])
                  {
                    v66 = *(v53 + 3);
                    v67 = *(v53 + 5);
                    v118 = *(v53 + 4);
                    v119 = v67;
                    v120 = *(v53 + 24);
                    v116 = *(v53 + 2);
                    v117 = v66;
                    sub_10055A394(&v116, v115);

                    return v116;
                  }

                  __break(1u);
LABEL_104:
                  swift_once();
LABEL_82:
                  v101 = type metadata accessor for Logger();
                  sub_10000C4AC(v101, qword_100983190);
                  v102 = Logger.logObject.getter();
                  v103 = static os_log_type_t.default.getter();
                  if (os_log_type_enabled(v102, v103))
                  {
                    v104 = swift_slowAlloc();
                    *v104 = 134217984;
                    *(v104 + 4) = v51;
                    _os_log_impl(&_mh_execute_header, v102, v103, "%ld contacts match this set of hashes", v104, 0xCu);
                  }

                  v100 = v109;
                }

                else
                {

                  v12 = v113;
                  v34 = v114;
LABEL_64:
                  v68 = 0;
                  v111 = v34[2];
                  v110 = (v110 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_hashDB);
                  v69 = v34 + 7;
                  v109 = _swiftEmptyArrayStorage;
                  v108 = v34 + 7;
LABEL_65:
                  v70 = &v69[4 * v68];
                  while (v111 != v68)
                  {
                    if (v68 >= v114[2])
                    {
                      goto LABEL_97;
                    }

                    v71 = *v70;
                    v112 = *(v70 - 1);
                    v113 = v71;
                    v73 = *(v70 - 3);
                    v72 = *(v70 - 2);
                    v11 = *v110;
                    v74 = v110[1];
                    ObjectType = swift_getObjectType();
                    v76 = *(v74 + 80);
                    swift_unknownObjectRetain();
                    v77 = v72;
                    v10 = v11;
                    v78 = v76(v73, v77, v112, v113, ObjectType, v74);
                    if (v12)
                    {

                      swift_unknownObjectRelease();
                      return v10;
                    }

                    v3 = v78;
                    v82 = v79;
                    v83 = v80;
                    v84 = v81;
                    ++v68;
                    v70 += 4;
                    swift_unknownObjectRelease();
                    if (v82)
                    {
                      v85 = v68;
                      v86 = v109;
                      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                      {
                        v86 = sub_10028F104(0, *(v86 + 2) + 1, 1, v86);
                      }

                      v88 = *(v86 + 2);
                      v87 = *(v86 + 3);
                      v11 = v88 + 1;
                      if (v88 >= v87 >> 1)
                      {
                        v86 = sub_10028F104((v87 > 1), v88 + 1, 1, v86);
                      }

                      *(v86 + 2) = v11;
                      v109 = v86;
                      v89 = &v86[32 * v88];
                      *(v89 + 4) = v3;
                      *(v89 + 5) = v82;
                      *(v89 + 6) = v83;
                      *(v89 + 7) = v84;
                      v68 = v85;
                      v69 = v108;
                      goto LABEL_65;
                    }
                  }

                  v90 = v109;
                  v91 = *(v109 + 2);
                  v92 = _swiftEmptyArrayStorage;
                  if (v91)
                  {
                    *&v116 = _swiftEmptyArrayStorage;
                    sub_10028FBDC(0, v91, 0);
                    v92 = v116;
                    v93 = (v90 + 40);
                    do
                    {
                      v94 = *(v93 - 1);
                      v95 = *v93;
                      *&v116 = v92;
                      v97 = v92[2];
                      v96 = v92[3];

                      if (v97 >= v96 >> 1)
                      {
                        sub_10028FBDC((v96 > 1), v97 + 1, 1);
                        v92 = v116;
                      }

                      v92[2] = v97 + 1;
                      v98 = &v92[2 * v97];
                      v98[4] = v94;
                      v98[5] = v95;
                      v93 += 4;
                      --v91;
                    }

                    while (v91);
                  }

                  v99 = sub_100292D28(v92);

                  v51 = *(v99 + 16);

                  v100 = v109;
                  if (v51 > 1)
                  {
                    if (qword_100973A00 != -1)
                    {
                      goto LABEL_104;
                    }

                    goto LABEL_82;
                  }
                }

                if (*(v100 + 2))
                {
                  v10 = *(v100 + 4);
                  v105 = *(v100 + 5);
                  v106 = *(v100 + 6);
                  v107 = *(v100 + 7);
                }

                else
                {

                  return 0;
                }

                return v10;
              }

              v52 = 0;
              v11 = v51 - 1;
              v53 = _swiftEmptyArrayStorage;
LABEL_48:
              v54 = v3 + 32 + 72 * v52;
              v12 = v52;
              while (v12 < *(v3 + 16))
              {
                v55 = *(v54 + 64);
                v56 = *(v54 + 48);
                v57 = *(v54 + 16);
                v118 = *(v54 + 32);
                v119 = v56;
                v58 = *v54;
                v120 = v55;
                v116 = v58;
                v117 = v57;
                v52 = v12 + 1;
                if (sub_10054AB18(v118, *(&v118 + 1), v119, *(&v119 + 1), v114))
                {
                  sub_10055A394(&v116, v115);
                  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                  v121 = v53;
                  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                  {
                    sub_10028FF34(0, v53[2] + 1, 1);
                    v53 = v121;
                  }

                  v61 = v53[2];
                  v60 = v53[3];
                  if (v61 >= v60 >> 1)
                  {
                    sub_10028FF34((v60 > 1), v61 + 1, 1);
                    v53 = v121;
                  }

                  v53[2] = v61 + 1;
                  v62 = &v53[9 * v61];
                  *(v62 + 2) = v116;
                  v63 = v117;
                  v64 = v118;
                  v65 = v119;
                  *(v62 + 24) = v120;
                  *(v62 + 4) = v64;
                  *(v62 + 5) = v65;
                  *(v62 + 3) = v63;
                  if (v11 != v12)
                  {
                    goto LABEL_48;
                  }

                  goto LABEL_60;
                }

                v54 += 72;
                ++v12;
                if (v51 == v52)
                {
                  goto LABEL_60;
                }
              }
            }

            *&v116 = v11;
            result = sub_10028FF54(0, v3, 0);
            v12 = 0;
            v34 = v116;
            v35 = (v112 + 40);
            v111 = v3;
LABEL_22:
            if (v12 >= *(v112 + 2))
            {
              continue;
            }

            break;
          }

          v114 = v34;
          v10 = *(v35 - 1);
          v36 = *v35;
          v37 = *v35 >> 62;
          if (v37 > 1)
          {
            if (v37 != 2)
            {
              goto LABEL_105;
            }

            v40 = *(v10 + 16);
            v39 = *(v10 + 24);
            v38 = v39 - v40;
            if (__OFSUB__(v39, v40))
            {
              goto LABEL_98;
            }
          }

          else
          {
            if (!v37)
            {
              v38 = BYTE6(v36);
LABEL_33:
              if (v38 != 32)
              {
LABEL_105:
                __break(1u);
                return result;
              }

              v41 = v113;
              v42 = sub_1004657B8(v10, v36, 8);
              v113 = v41;
              if (v41)
              {
                sub_100026AC0(v10, v36);

                sub_100026AC0(v10, v36);

                return v10;
              }

              v11 = v42;
              sub_100026AC0(v10, v36);
              v43 = *(v11 + 16);
              if (!v43)
              {
                goto LABEL_92;
              }

              if (v43 == 1)
              {
                goto LABEL_93;
              }

              if (v43 < 3)
              {
                goto LABEL_94;
              }

              if (v43 == 3)
              {
                goto LABEL_95;
              }

              v44 = *(v11 + 32);
              v45 = *(v11 + 40);
              v47 = *(v11 + 48);
              v46 = *(v11 + 56);
              sub_100026AC0(v10, v36);

              v34 = v114;
              *&v116 = v114;
              v11 = v114[2];
              v48 = v114[3];
              if (v11 >= v48 >> 1)
              {
                result = sub_10028FF54((v48 > 1), v11 + 1, 1);
                v34 = v116;
              }

              ++v12;
              v34[2] = v11 + 1;
              v49 = &v34[4 * v11];
              v49[4] = v44;
              v49[5] = v45;
              v49[6] = v47;
              v49[7] = v46;
              v35 += 2;
              v3 = v111;
              if (v111 == v12)
              {

                v12 = v113;
                goto LABEL_45;
              }

              goto LABEL_22;
            }

            if (__OFSUB__(HIDWORD(v10), v10))
            {
              goto LABEL_99;
            }

            v38 = HIDWORD(v10) - v10;
          }

          sub_100294008(*(v35 - 1), *v35);
          result = sub_100294008(v10, v36);
          goto LABEL_33;
        }

        ++v16;
        v3 = (v18 + 2);
        v19 = *(v18 - 1);
        v20 = *v18;

        v21 = Data.init(base64Encoded:options:)();
        v23 = v22;

        v18 = v3;
      }

      while (v23 >> 60 == 15);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v112 = sub_10028EEAC(0, *(v112 + 2) + 1, 1, v112);
      }

      v3 = *(v112 + 2);
      v24 = *(v112 + 3);
      if (v3 >= v24 >> 1)
      {
        v112 = sub_10028EEAC((v24 > 1), v3 + 1, 1, v112);
      }

      v25 = v112;
      *(v112 + 2) = v3 + 1;
      v26 = &v25[16 * v3];
      *(v26 + 4) = v21;
      *(v26 + 5) = v23;
    }
  }

  sub_10055A164();
  swift_allocError();
  *v27 = 0;
  swift_willThrow();
  return v10;
}

uint64_t sub_100552DC8(uint64_t a1, uint64_t a2)
{
  *(&v105 + 1) = a2;
  *&v105 = a1;
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 1);
  v5 = v4[8];
  __chkstk_darwin(v3);
  v7 = (&v101 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v103 = v2;
  v8 = *(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_hashManagerQ);
  *v7 = v8;
  v9 = enum case for DispatchPredicate.onQueue(_:);
  v10 = v4[13];
  v10(v7, enum case for DispatchPredicate.onQueue(_:), v3);
  v11 = v8;
  v12 = _dispatchPreconditionTest(_:)();
  v15 = v4[1];
  v13 = (v4 + 1);
  v14 = v15;
  v15(v7, v3);
  if ((v12 & 1) == 0)
  {
    goto LABEL_95;
  }

  *v7 = v11;
  v10(v7, v9, v3);
  v16 = _dispatchPreconditionTest(_:)();
  v14(v7, v3);
  if ((v16 & 1) == 0)
  {
    goto LABEL_96;
  }

  if (*(v103 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_hashesUpdatedSuccessfully) != 1)
  {
    sub_10055A164();
    swift_allocError();
    *v29 = 0;
    return swift_willThrow();
  }

  v114 = _swiftEmptySetSingleton;
  v108 = v105;
  v107[0] = 44;
  v107[1] = 0xE100000000000000;
  sub_10001229C();
  v17 = StringProtocol.components<A>(separatedBy:)();
  v18 = 0;
  v19 = *(v17 + 16);
  v3 = _swiftEmptyArrayStorage;
  *&v105 = _swiftEmptyArrayStorage;
LABEL_5:
  v20 = (v17 + 40 + 16 * v18);
  while (1)
  {
    if (v19 == v18)
    {
      v13 = _swiftEmptyArrayStorage;
      v3 = *(v105 + 16);
      v31 = *(v17 + 16);

      if (v3 != v31)
      {
        if (qword_100973A00 == -1)
        {
          goto LABEL_17;
        }

        goto LABEL_97;
      }

      goto LABEL_20;
    }

    if (v18 >= *(v17 + 16))
    {
      break;
    }

    ++v18;
    v13 = (v20 + 2);
    v21 = *(v20 - 1);
    v22 = *v20;

    v23 = Data.init(base64Encoded:options:)();
    v25 = v24;

    v20 = v13;
    if (v25 >> 60 != 15)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        *&v105 = sub_10028EEAC(0, *(v105 + 16) + 1, 1, v105);
      }

      v13 = *(v105 + 16);
      v26 = *(v105 + 24);
      if (v13 >= v26 >> 1)
      {
        *&v105 = sub_10028EEAC((v26 > 1), v13 + 1, 1, v105);
      }

      v27 = v105;
      *(v105 + 16) = v13 + 1;
      v28 = v27 + 16 * v13;
      *(v28 + 32) = v23;
      *(v28 + 40) = v25;
      goto LABEL_5;
    }
  }

  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  __break(1u);
LABEL_88:
  __break(1u);
LABEL_89:
  __break(1u);
LABEL_90:
  __break(1u);
LABEL_91:
  __break(1u);
  while (1)
  {
    __break(1u);
LABEL_93:
    __break(1u);
LABEL_94:
    __break(1u);
LABEL_95:
    __break(1u);
LABEL_96:
    __break(1u);
LABEL_97:
    swift_once();
LABEL_17:
    v32 = type metadata accessor for Logger();
    sub_10000C4AC(v32, qword_100983190);
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&_mh_execute_header, v33, v34, "Decoded base64 count test failed", v35, 2u);
    }

LABEL_20:
    if (v3)
    {
      *&v108 = v13;
      result = sub_10028FF54(0, v3, 0);
      v36 = 0;
      v37 = v108;
      v38 = (v105 + 40);
      v104 = v3;
      while (1)
      {
        if (v36 >= *(v105 + 16))
        {
          goto LABEL_86;
        }

        *(&v105 + 1) = v37;
        v39 = *(v38 - 1);
        v40 = *v38;
        v41 = *v38 >> 62;
        if (v41 > 1)
        {
          if (v41 != 2)
          {
            goto LABEL_98;
          }

          v43 = *(v39 + 16);
          v42 = *(v39 + 24);
          v13 = v42 - v43;
          if (__OFSUB__(v42, v43))
          {
            goto LABEL_93;
          }
        }

        else
        {
          if (!v41)
          {
            v13 = BYTE6(v40);
            goto LABEL_33;
          }

          if (__OFSUB__(HIDWORD(v39), v39))
          {
            goto LABEL_94;
          }

          v13 = HIDWORD(v39) - v39;
        }

        sub_100294008(*(v38 - 1), *v38);
        result = sub_100294008(v39, v40);
LABEL_33:
        if (v13 != 32)
        {
LABEL_98:
          __break(1u);
          return result;
        }

        v44 = v106;
        v45 = sub_1004657B8(v39, v40, 8);
        v13 = v44;
        if (v44)
        {
          sub_100026AC0(v39, v40);

          sub_100026AC0(v39, v40);
        }

        v46 = v45;
        sub_100026AC0(v39, v40);
        v47 = v46[2];
        if (!v47)
        {
          goto LABEL_87;
        }

        if (v47 == 1)
        {
          goto LABEL_88;
        }

        if (v47 < 3)
        {
          goto LABEL_89;
        }

        if (v47 == 3)
        {
          goto LABEL_90;
        }

        v106 = 0;
        v13 = v46[4];
        v48 = v46[5];
        v50 = v46[6];
        v49 = v46[7];
        sub_100026AC0(v39, v40);

        v37 = *(&v105 + 1);
        *&v108 = *(&v105 + 1);
        v52 = *(*(&v105 + 1) + 16);
        v51 = *(*(&v105 + 1) + 24);
        if (v52 >= v51 >> 1)
        {
          result = sub_10028FF54((v51 > 1), v52 + 1, 1);
          v37 = v108;
        }

        v36 = (v36 + 1);
        v37[2] = v52 + 1;
        v53 = &v37[4 * v52];
        v53[4] = v13;
        v53[5] = v48;
        v53[6] = v50;
        v53[7] = v49;
        v38 += 2;
        v3 = v104;
        if (v104 == v36)
        {

          goto LABEL_45;
        }
      }
    }

    v37 = _swiftEmptyArrayStorage;
LABEL_45:
    if (*(v103 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_meCardInfo))
    {
      v54 = v37;
      v55 = *(v103 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_meCardInfo + 8);

      v56 = *(v55 + 16);
      v13 = _swiftEmptyArrayStorage;
      if (v56)
      {
        v57 = 0;
        v58 = (v55 + 32);
        *&v105 = v56 - 1;
        v3 = _swiftEmptyArrayStorage;
LABEL_48:
        v59 = &v58[9 * v57];
        v60 = v57;
        while (v60 < *(v55 + 16))
        {
          v61 = *(v59 + 16);
          v62 = v59[3];
          v63 = v59[1];
          v110 = v59[2];
          v111 = v62;
          v64 = *v59;
          v112 = v61;
          v108 = v64;
          v109 = v63;
          v57 = v60 + 1;
          if (sub_10054AB18(v110, *(&v110 + 1), v111, *(&v111 + 1), v54))
          {
            sub_10055A394(&v108, v107);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v113 = v3;
            v104 = v58;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_10028FF34(0, v3[2] + 1, 1);
              v3 = v113;
            }

            v67 = v3[2];
            v66 = v3[3];
            if (v67 >= v66 >> 1)
            {
              sub_10028FF34((v66 > 1), v67 + 1, 1);
              v3 = v113;
            }

            v3[2] = v67 + 1;
            v68 = &v3[9 * v67];
            *(v68 + 2) = v108;
            v69 = v109;
            v70 = v110;
            v71 = v111;
            *(v68 + 24) = v112;
            *(v68 + 4) = v70;
            *(v68 + 5) = v71;
            *(v68 + 3) = v69;
            v13 = _swiftEmptyArrayStorage;
            v58 = v104;
            if (v105 != v60)
            {
              goto LABEL_48;
            }

            goto LABEL_60;
          }

          v59 = (v59 + 72);
          ++v60;
          if (v56 == v57)
          {
            goto LABEL_60;
          }
        }

        goto LABEL_91;
      }

      v3 = _swiftEmptyArrayStorage;
LABEL_60:

      v72 = v3[2];
      if (v72)
      {
        v113 = _swiftEmptyArrayStorage;
        sub_10028FF74(0, v72, 0);
        v73 = v113;
        v74 = v72 - 1;
        for (i = 4; ; i += 9)
        {
          v108 = *&v3[i];
          v76 = *&v3[i + 2];
          v77 = *&v3[i + 4];
          v78 = *&v3[i + 6];
          v112 = v3[i + 8];
          v110 = v77;
          v111 = v78;
          v109 = v76;
          sub_10055A394(&v108, v107);
          v113 = v73;
          v80 = v73[2];
          v79 = v73[3];
          if (v80 >= v79 >> 1)
          {
            sub_10028FF74((v79 > 1), v80 + 1, 1);
            v73 = v113;
          }

          v81 = v108;
          v82 = v109;
          v73[2] = v80 + 1;
          v83 = &v73[4 * v80];
          *(v83 + 2) = v81;
          *(v83 + 3) = v82;
          if (!v74)
          {
            break;
          }

          --v74;
        }
      }

      else
      {

        v73 = _swiftEmptyArrayStorage;
      }

      sub_10057ECC4(v73);

      v37 = v54;
    }

    v102 = v37[2];
    if (!v102)
    {
      break;
    }

    v84 = 0;
    v101 = (v103 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_hashDB);
    v13 = (v37 + 7);
    v85 = _swiftEmptyArrayStorage;
    *(&v105 + 1) = v37;
    while (v84 < v37[2])
    {
      v86 = *(v13 - 8);
      *&v105 = *v13;
      v104 = v86;
      v87 = *(v13 - 24);
      v103 = *(v13 - 16);
      v88 = *v101;
      v89 = v101[1];
      ObjectType = swift_getObjectType();
      v91 = *(v89 + 88);
      swift_unknownObjectRetain();
      v92 = v106;
      v93 = v91(v87, v103, v104, v105, ObjectType, v89);
      v106 = v92;
      if (v92)
      {

        swift_unknownObjectRelease();
      }

      v94 = v93;
      swift_unknownObjectRelease();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v85 = sub_10028F210(0, v85[2] + 1, 1, v85);
      }

      v96 = v85[2];
      v95 = v85[3];
      v3 = (v96 + 1);
      if (v96 >= v95 >> 1)
      {
        v85 = sub_10028F210((v95 > 1), v96 + 1, 1, v85);
      }

      ++v84;
      v85[2] = v3;
      v85[v96 + 4] = v94;
      v13 += 32;
      v37 = *(&v105 + 1);
      if (v102 == v84)
      {
        goto LABEL_80;
      }
    }
  }

  v85 = _swiftEmptyArrayStorage;
LABEL_80:

  v97 = v85[2];
  if (v97)
  {
    v98 = v85 + 4;
    do
    {
      v99 = *v98++;

      sub_1005696B4(v100);
      --v97;
    }

    while (v97);
  }

  return v114;
}

uint64_t sub_10055383C(void *a1)
{
  v27 = a1;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v4 = v3[8];
  __chkstk_darwin(v2);
  v6 = (&v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = v1;
  v7 = *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_hashManagerQ);
  *v6 = v7;
  v8 = enum case for DispatchPredicate.onQueue(_:);
  v9 = v3[13];
  v9(v6, enum case for DispatchPredicate.onQueue(_:), v2);
  v10 = v7;
  v11 = _dispatchPreconditionTest(_:)();
  v12 = v3[1];
  result = v12(v6, v2);
  if (v11)
  {
    *v6 = v10;
    v9(v6, v8, v2);
    v14 = _dispatchPreconditionTest(_:)();
    result = v12(v6, v2);
    if (v14)
    {
      v15 = v28;
      if (*(v28 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_hashesUpdatedSuccessfully) == 1)
      {
        v10 = v27;
        if ([*(v28 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_bucket) acquireTokenForIdentifier:v27])
        {
          if (*(v15 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_meCardInfo))
          {
            v16 = *(*(v15 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_meCardInfo + 8) + 16);
            v17 =  + 99;
            v18 = v16 + 1;
            while (--v18)
            {
              v19 = v17;
              v17 += 72;
              if ((*v19 & 1) == 0 && *(v19 - 3) == v10)
              {

                LOBYTE(v10) = 1;
                return v10 & 1;
              }
            }
          }

          v22 = *(v15 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_hashDB);
          v23 = *(v15 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_hashDB + 8);
          ObjectType = swift_getObjectType();
          v25 = *(v23 + 120);
          swift_unknownObjectRetain();
          LOBYTE(v10) = v25(v10, ObjectType, v23);
          swift_unknownObjectRelease();
          return v10 & 1;
        }

        v20 = 5;
      }

      else
      {
        v20 = 0;
      }

      sub_10055A164();
      swift_allocError();
      *v21 = v20;
      swift_willThrow();
      return v10 & 1;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100553B04(char *a1, uint64_t a2)
{
  v25 = a2;
  v24 = a1;
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  v5 = v4[8];
  __chkstk_darwin(v3);
  v7 = (&v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = v2;
  v8 = *(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_hashManagerQ);
  *v7 = v8;
  v9 = enum case for DispatchPredicate.onQueue(_:);
  v10 = v4[13];
  v10(v7, enum case for DispatchPredicate.onQueue(_:), v3);
  v11 = v8;
  v12 = _dispatchPreconditionTest(_:)();
  v13 = v4[1];
  result = v13(v7, v3);
  if ((v12 & 1) == 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  *v7 = v11;
  v10(v7, v9, v3);
  v15 = _dispatchPreconditionTest(_:)();
  result = v13(v7, v3);
  if ((v15 & 1) == 0)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v16 = v27;
  if (*(v27 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_hashesUpdatedSuccessfully) == 1)
  {
    v17 = v26;
    v18 = sub_1005522B8(v24, v25);
    if (!v17)
    {
      if (v19)
      {
        v20 = v18;
        v21 = v19;

        v16 = sub_100553D34(v20, v21);
        swift_bridgeObjectRelease_n();
      }

      else
      {
        return 0;
      }
    }
  }

  else
  {
    sub_10055A164();
    swift_allocError();
    *v22 = 0;
    swift_willThrow();
  }

  return v16;
}

uint64_t sub_100553D34(uint64_t a1, unint64_t a2)
{
  v33 = a1;
  v34 = a2;
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  v5 = v4[8];
  __chkstk_darwin(v3);
  v7 = (&v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v35 = v2;
  v8 = *(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_hashManagerQ);
  *v7 = v8;
  v9 = enum case for DispatchPredicate.onQueue(_:);
  v10 = v4[13];
  v10(v7, enum case for DispatchPredicate.onQueue(_:), v3);
  v11 = v8;
  v12 = _dispatchPreconditionTest(_:)();
  v13 = v4[1];
  result = v13(v7, v3);
  if ((v12 & 1) == 0)
  {
    __break(1u);
    goto LABEL_17;
  }

  *v7 = v11;
  v10(v7, v9, v3);
  v15 = _dispatchPreconditionTest(_:)();
  result = v13(v7, v3);
  if ((v15 & 1) == 0)
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v16 = v35;
  if (*(v35 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_hashesUpdatedSuccessfully) == 1)
  {
    v17 = OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_meCardInfo;
    v18 = *(v35 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_meCardInfo);
    v20 = v33;
    v19 = v34;
    if (!v18)
    {
LABEL_10:
      v27 = *sub_10002CDC0((v16 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_contactStore), *(v16 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_contactStore + 24));
      return sub_1005A09A0(v20, v19);
    }

    v21 = [v18 identifier];
    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;

    if (v22 == v20 && v24 == v19)
    {
    }

    else
    {
      v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v26 & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    v29 = *(v16 + v17);
    if (v29)
    {
      v30 = *(v16 + v17);
      v31 = v29;
      return v30;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_10055A164();
    swift_allocError();
    *v28 = 0;
    return swift_willThrow();
  }
}

uint64_t sub_100553FC0(void *a1, uint64_t a2)
{
  v43 = a2;
  v42 = a1;
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  v5 = v4[8];
  __chkstk_darwin(v3);
  v7 = (&v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v45 = v2;
  v8 = *(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_hashManagerQ);
  *v7 = v8;
  v9 = enum case for DispatchPredicate.onQueue(_:);
  v10 = (v4 + 13);
  v11 = v4[13];
  v11(v7, enum case for DispatchPredicate.onQueue(_:), v3);
  v12 = v8;
  v13 = _dispatchPreconditionTest(_:)();
  v14 = v4[1];
  result = v14(v7, v3);
  if ((v13 & 1) == 0)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  *v7 = v12;
  v11(v7, v9, v3);
  v16 = _dispatchPreconditionTest(_:)();
  result = v14(v7, v3);
  if ((v16 & 1) == 0)
  {
LABEL_32:
    __break(1u);
    return result;
  }

  if (*(v45 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_hashesUpdatedSuccessfully) == 1)
  {
    v17 = v44;
    v18 = sub_100552DC8(v42, v43);
    if (!v17)
    {
      v19 = v18;
      v20 = v18 + 56;
      v21 = 1 << *(v18 + 32);
      v22 = -1;
      if (v21 < 64)
      {
        v22 = ~(-1 << v21);
      }

      v23 = v22 & *(v18 + 56);
      v24 = (v21 + 63) >> 6;

      v25 = 0;
      v26 = _swiftEmptyArrayStorage;
      v42 = _swiftEmptyArrayStorage;
      v43 = result;
      if (v23)
      {
        goto LABEL_12;
      }

      while (1)
      {
        v27 = v25 + 1;
        if (__OFADD__(v25, 1))
        {
          __break(1u);
LABEL_30:
          __break(1u);
          goto LABEL_31;
        }

        if (v27 >= v24)
        {
          break;
        }

        v23 = *(v20 + 8 * v27);
        ++v25;
        if (v23)
        {
          v25 = v27;
          do
          {
LABEL_12:
            v28 = (*(v19 + 48) + ((v25 << 11) | (32 * __clz(__rbit64(v23)))));
            v29 = *v28;
            v30 = v28[1];

            result = swift_isUniquelyReferenced_nonNull_native();
            v44 = v29;
            if ((result & 1) == 0)
            {
              result = sub_10028E1C8(0, *(v26 + 2) + 1, 1, v26);
              v26 = result;
            }

            v32 = *(v26 + 2);
            v31 = *(v26 + 3);
            if (v32 >= v31 >> 1)
            {
              result = sub_10028E1C8((v31 > 1), v32 + 1, 1, v26);
              v26 = result;
            }

            v23 &= v23 - 1;
            *(v26 + 2) = v32 + 1;
            v33 = &v26[16 * v32];
            v19 = v43;
            *(v33 + 4) = v44;
            *(v33 + 5) = v30;
          }

          while (v23);
        }
      }

      v35 = 0;
      v46 = _swiftEmptyArrayStorage;
      v36 = *(v26 + 2);
LABEL_21:
      v37 = &v26[16 * v35 + 40];
      while (v36 != v35)
      {
        if (v35 >= *(v26 + 2))
        {
          goto LABEL_30;
        }

        v38 = *(v37 - 1);
        v39 = *v37;

        v40 = sub_100553D34(v38, v39);
        ++v35;
        v37 += 2;

        if (v40)
        {
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v41 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          result = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v42 = v46;
          goto LABEL_21;
        }
      }

      v10 = sub_1002931DC(v42);
    }
  }

  else
  {
    sub_10055A164();
    swift_allocError();
    *v34 = 0;
    swift_willThrow();
  }

  return v10;
}

uint64_t sub_1005543CC(char *a1, uint64_t a2)
{
  v23 = a2;
  v22 = a1;
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  v5 = v4[8];
  __chkstk_darwin(v3);
  v7 = (&v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = v2;
  v8 = *(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_hashManagerQ);
  *v7 = v8;
  v9 = enum case for DispatchPredicate.onQueue(_:);
  v10 = v4[13];
  v10(v7, enum case for DispatchPredicate.onQueue(_:), v3);
  v11 = v8;
  v12 = _dispatchPreconditionTest(_:)();
  v13 = v4[1];
  result = v13(v7, v3);
  if ((v12 & 1) == 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  *v7 = v11;
  v10(v7, v9, v3);
  v15 = _dispatchPreconditionTest(_:)();
  result = v13(v7, v3);
  if ((v15 & 1) == 0)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v16 = v25;
  if (*(v25 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_hashesUpdatedSuccessfully) == 1)
  {
    v17 = v24;
    sub_1005522B8(v22, v23);
    if (!v17)
    {
      if (v18)
      {
        v16 = v19;
      }

      else
      {
        return 0;
      }
    }
  }

  else
  {
    sub_10055A164();
    swift_allocError();
    *v20 = 0;
    swift_willThrow();
  }

  return v16;
}

uint64_t sub_1005545D4(void *a1, unint64_t a2)
{
  v72 = a2;
  v73 = a1;
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  v5 = v4[8];
  __chkstk_darwin(v3);
  v7 = (&v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v74 = v2;
  v8 = *(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_hashManagerQ);
  *v7 = v8;
  v9 = enum case for DispatchPredicate.onQueue(_:);
  v10 = v4[13];
  v10(v7, enum case for DispatchPredicate.onQueue(_:), v3);
  v11 = v8;
  v12 = _dispatchPreconditionTest(_:)();
  v13 = v4[1];
  result = v13(v7, v3);
  if ((v12 & 1) == 0)
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  *v7 = v11;
  v10(v7, v9, v3);
  v15 = _dispatchPreconditionTest(_:)();
  result = v13(v7, v3);
  if ((v15 & 1) == 0)
  {
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  if (*(v74 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_hashesUpdatedSuccessfully) != 1)
  {
    sub_10055A164();
    swift_allocError();
    *v20 = 0;
    return swift_willThrow();
  }

  v16 = v72;
  v17 = v72 >> 62;
  if ((v72 >> 62) > 1)
  {
    v18 = v71;
    v19 = v73;
    if (v17 == 2)
    {
      v22 = v73[2];
      v21 = v73[3];
      v23 = __OFSUB__(v21, v22);
      v24 = v21 - v22;
      if (v23)
      {
LABEL_65:
        __break(1u);
        goto LABEL_66;
      }

      if (v24 >= 9)
      {
        goto LABEL_16;
      }
    }

    return 0;
  }

  v18 = v71;
  v19 = v73;
  if (!v17)
  {
    if (BYTE6(v72) < 9uLL)
    {
      return 0;
    }

    goto LABEL_16;
  }

  if (!__OFSUB__(HIDWORD(v73), v73))
  {
    if (HIDWORD(v73) - v73 >= 9)
    {
LABEL_16:
      result = sub_100635ED0(0, 9, 3);
      v25 = result;
      v26 = *(result + 16);
      v27 = _swiftEmptyArrayStorage;
      if (!v26)
      {
LABEL_31:
        if (*(v74 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_meCardInfo))
        {
          v38 = *(v74 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_meCardInfo + 8);
          v39 = *(v38 + 16);

          if (v39)
          {
            for (i = 0; i != v39; ++i)
            {
              v41 = v38 + 32 + 72 * i;
              if (*(v41 + 67) != 1)
              {
                v42 = v27[2] + 1;
                v43 = v27 + 34;
                while (--v42)
                {
                  v44 = v43;
                  v43 += 4;
                  if (*(v44 - 1) == *(v41 + 64) && *v44 == *(v41 + 66))
                  {
                    v45 = *v41;
                    v46 = *(v41 + 8);

LABEL_56:

                    return v45;
                  }
                }
              }
            }
          }

          v69 = v25;
        }

        else
        {
          v69 = v25;
        }

        v47 = 0;
        v48 = v27[2];
        v71 = (v74 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_hashDB);
        v72 = v48;
        v73 = v27;
        v49 = v27 + 34;
        v70 = _swiftEmptyArrayStorage;
        v68 = v27 + 34;
LABEL_44:
        v50 = &v49[4 * v47];
        while (v72 != v47)
        {
          if (v47 >= v73[2])
          {
            goto LABEL_62;
          }

          v51 = v47;
          LODWORD(v74) = *v50;
          v52 = *(v50 - 1);
          v54 = *v71;
          v53 = v71[1];
          ObjectType = swift_getObjectType();
          v56 = *(v53 + 96);
          v57 = v52 | (v74 << 16);
          swift_unknownObjectRetain();
          v58 = v56(v57, ObjectType, v53);
          if (v18)
          {

            return swift_unknownObjectRelease();
          }

          v60 = v58;
          v61 = v59;
          v50 += 4;
          v47 = v51 + 1;
          result = swift_unknownObjectRelease();
          if (v61)
          {

            v62 = v70;
            result = swift_isUniquelyReferenced_nonNull_native();
            if ((result & 1) == 0)
            {
              result = sub_10028E1C8(0, *(v62 + 2) + 1, 1, v62);
              v62 = result;
            }

            v64 = *(v62 + 2);
            v63 = *(v62 + 3);
            if (v64 >= v63 >> 1)
            {
              result = sub_10028E1C8((v63 > 1), v64 + 1, 1, v62);
              v62 = result;
            }

            *(v62 + 2) = v64 + 1;
            v70 = v62;
            v65 = &v62[16 * v64];
            *(v65 + 4) = v60;
            *(v65 + 5) = v61;
            v49 = v68;
            goto LABEL_44;
          }
        }

        if (*(v70 + 2))
        {
          v45 = *(v70 + 4);
          v66 = *(v70 + 5);

          goto LABEL_56;
        }

        return 0;
      }

      sub_100294008(v19, v16);
      v75 = _swiftEmptyArrayStorage;
      result = sub_10028FF94(0, v26, 0);
      v28 = v73;
      v29 = 0;
      v27 = v75;
      while (v29 < *(v25 + 16))
      {
        v30 = *(v25 + 8 * v29 + 32);
        result = NSNotFound.getter();
        if (__OFADD__(v30, 3))
        {
          goto LABEL_60;
        }

        if (v30 == result || __OFSUB__(v30, v30 + 3))
        {
          goto LABEL_61;
        }

        v32 = Data.subdata(in:)();
        result = sub_100466258(v32, v33);
        if (v18)
        {
          sub_100026AC0(v28, v16);
        }

        v75 = v27;
        v35 = v27[2];
        v34 = v27[3];
        if (v35 >= v34 >> 1)
        {
          v37 = result;
          sub_10028FF94((v34 > 1), v35 + 1, 1);
          v28 = v73;
          result = v37;
          v27 = v75;
        }

        ++v29;
        v27[2] = v35 + 1;
        v36 = v27 + 4 * v35;
        *(v36 + 16) = result;
        v36[34] = BYTE2(result);
        if (v26 == v29)
        {
          result = sub_100026AC0(v28, v16);
          goto LABEL_31;
        }
      }

      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
      goto LABEL_63;
    }

    return 0;
  }

LABEL_66:
  __break(1u);
  return result;
}

uint64_t sub_100554BFC(uint64_t *a1, unint64_t a2)
{
  v67 = a2;
  v66 = a1;
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  v5 = v4[8];
  __chkstk_darwin(v3);
  v7 = (v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  i = v2;
  v8 = *(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_hashManagerQ);
  *v7 = v8;
  v9 = enum case for DispatchPredicate.onQueue(_:);
  v10 = v4[13];
  v10(v7, enum case for DispatchPredicate.onQueue(_:), v3);
  v11 = v8;
  v12 = _dispatchPreconditionTest(_:)();
  v13 = v4[1];
  v13(v7, v3);
  if ((v12 & 1) == 0)
  {
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  *v7 = v11;
  v10(v7, v9, v3);
  v14 = _dispatchPreconditionTest(_:)();
  v13(v7, v3);
  if ((v14 & 1) == 0)
  {
    goto LABEL_43;
  }

  v15 = i;
  if (*(i + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_hashesUpdatedSuccessfully) != 1)
  {
    sub_10055A164();
    swift_allocError();
    *v19 = 0;
    return swift_willThrow();
  }

  v16 = v67;
  v17 = v67 >> 62;
  if ((v67 >> 62) > 1)
  {
    v18 = v68;
    if (v17 != 2)
    {
      return sub_100292D28(_swiftEmptyArrayStorage);
    }

    v22 = v66[2];
    v21 = v66[3];
    v23 = __OFSUB__(v21, v22);
    v24 = v21 - v22;
    if (!v23)
    {
      if (v24 >= 8)
      {
        goto LABEL_15;
      }

      return sub_100292D28(_swiftEmptyArrayStorage);
    }

    goto LABEL_45;
  }

  v18 = v68;
  if (v17)
  {
    if (!__OFSUB__(HIDWORD(v66), v66))
    {
      if (HIDWORD(v66) - v66 >= 8)
      {
        goto LABEL_15;
      }

      return sub_100292D28(_swiftEmptyArrayStorage);
    }

LABEL_46:
    __break(1u);
LABEL_47:
    swift_once();
    goto LABEL_37;
  }

  if (BYTE6(v67) < 8uLL)
  {
    return sub_100292D28(_swiftEmptyArrayStorage);
  }

LABEL_15:
  v25 = swift_allocObject();
  *(v25 + 16) = 2;
  v26 = swift_allocObject();
  v27 = v66;
  *(v26 + 16) = v66;
  *(v26 + 24) = v16;
  v28 = swift_allocObject();
  *(v28 + 16) = sub_10055A5FC;
  *(v28 + 24) = v26;
  *(v28 + 32) = xmmword_1008099E0;
  *(v28 + 48) = 2;
  *(v28 + 56) = sub_10055A5C8;
  *(v28 + 64) = v25;
  v71 = xmmword_1008099E0;
  v72 = 2;
  v73 = sub_10055A600;
  v74 = v28;
  sub_100294008(v27, v16);

  v29 = sub_10054A0F8(&v71);

  if (v18)
  {
  }

  v75 = _swiftEmptySetSingleton;
  v64 = v29[2];
  if (v64)
  {
    v30 = 0;
    v66 = (v15 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_hashDB);
    v65 = v29 + 4;
    v63[0] = v29;
    v63[1] = v25;
    do
    {
      if (v30 >= v29[2])
      {
        goto LABEL_44;
      }

      v32 = *v66;
      v33 = v66[1];
      v34 = *(v65 + v30);
      v35 = v30;
      ObjectType = swift_getObjectType();
      v37 = *(v33 + 112);
      swift_unknownObjectRetain();
      v38 = v37(v34, ObjectType, v33);
      if (v18)
      {

        swift_unknownObjectRelease();
      }

      v39 = v38;
      v67 = v35 + 1;
      v68 = 0;
      swift_unknownObjectRelease();
      v40 = v39 + 56;
      v41 = 1 << *(v39 + 32);
      if (v41 < 64)
      {
        v42 = ~(-1 << v41);
      }

      else
      {
        v42 = -1;
      }

      v43 = v42 & *(v39 + 56);
      v44 = (v41 + 63) >> 6;

      v45 = 0;
      v46 = _swiftEmptyArrayStorage;
      for (i = v39; v43; v39 = i)
      {
LABEL_30:
        v48 = *(v39 + 48) + ((v45 << 11) | (32 * __clz(__rbit64(v43))));
        v50 = *(v48 + 16);
        v49 = *(v48 + 24);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v46 = sub_10028E1C8(0, *(v46 + 2) + 1, 1, v46);
        }

        v52 = *(v46 + 2);
        v51 = *(v46 + 3);
        if (v52 >= v51 >> 1)
        {
          v46 = sub_10028E1C8((v51 > 1), v52 + 1, 1, v46);
        }

        v43 &= v43 - 1;
        *(v46 + 2) = v52 + 1;
        v53 = &v46[16 * v52];
        *(v53 + 4) = v50;
        *(v53 + 5) = v49;
      }

      while (1)
      {
        v47 = v45 + 1;
        if (__OFADD__(v45, 1))
        {
          __break(1u);
          goto LABEL_42;
        }

        if (v47 >= v44)
        {
          break;
        }

        v43 = *(v40 + 8 * v47);
        ++v45;
        if (v43)
        {
          v45 = v47;
          goto LABEL_30;
        }
      }

      v31 = sub_100292D28(v46);

      sub_1005697DC(v31);
      v30 = v67;
      v18 = v68;
      v29 = v63[0];
    }

    while (v67 != v64);
  }

  if (qword_100973A00 != -1)
  {
    goto LABEL_47;
  }

LABEL_37:
  v54 = type metadata accessor for Logger();
  sub_10000C4AC(v54, qword_100983190);
  v55 = Logger.logObject.getter();
  v56 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    v70 = v58;
    *v57 = 136315138;
    swift_beginAccess();

    v59 = Set.description.getter();
    v61 = v60;

    v62 = sub_10000C4E4(v59, v61, &v70);

    *(v57 + 4) = v62;
    _os_log_impl(&_mh_execute_header, v55, v56, "Found matching handles for short hashes query - %s", v57, 0xCu);
    sub_10000C60C(v58);
  }

  swift_beginAccess();
  return v75;
}

uint64_t sub_1005552DC(uint64_t a1, unint64_t a2)
{
  v34 = a2;
  v32 = a1;
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  v5 = v4[8];
  __chkstk_darwin(v3);
  v7 = (&v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v39 = v2;
  v8 = *(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_hashManagerQ);
  *v7 = v8;
  v9 = enum case for DispatchPredicate.onQueue(_:);
  LOBYTE(v11) = v4 + 104;
  v10 = v4[13];
  v10(v7, enum case for DispatchPredicate.onQueue(_:), v3);
  v12 = v8;
  v13 = _dispatchPreconditionTest(_:)();
  v14 = v4[1];
  result = v14(v7, v3);
  if ((v13 & 1) == 0)
  {
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  *v7 = v12;
  v10(v7, v9, v3);
  v16 = _dispatchPreconditionTest(_:)();
  result = v14(v7, v3);
  if ((v16 & 1) == 0)
  {
    goto LABEL_24;
  }

  if (*(v39 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_hashesUpdatedSuccessfully) != 1)
  {
    sub_10055A164();
    swift_allocError();
    *v19 = 0;
    swift_willThrow();
    return v11 & 1;
  }

  v11 = v34;
  v17 = v34 >> 62;
  if ((v34 >> 62) > 1)
  {
    v18 = v33;
    if (v17 != 2)
    {
LABEL_12:
      LOBYTE(v11) = 0;
      return v11 & 1;
    }

    v21 = *(v32 + 16);
    v20 = *(v32 + 24);
    v22 = __OFSUB__(v20, v21);
    v23 = v20 - v21;
    if (!v22)
    {
      if (v23 >= 8)
      {
        goto LABEL_15;
      }

      goto LABEL_12;
    }

LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v18 = v33;
  if (!v17)
  {
    if (BYTE6(v34) >= 8uLL)
    {
LABEL_15:
      v24 = swift_allocObject();
      *(v24 + 16) = 2;
      v25 = swift_allocObject();
      v26 = v32;
      *(v25 + 16) = v32;
      *(v25 + 24) = v11;
      v27 = swift_allocObject();
      *(v27 + 16) = sub_10055A1D4;
      *(v27 + 24) = v25;
      *(v27 + 32) = xmmword_1008099E0;
      *(v27 + 48) = 2;
      *(v27 + 56) = sub_10055A1B8;
      *(v27 + 64) = v24;
      v35 = xmmword_1008099E0;
      v36 = 2;
      v37 = sub_10055A1D8;
      v38 = v27;
      sub_100294008(v26, v11);

      v28 = sub_10054A0F8(&v35);
      v29 = v18;

      if (v18)
      {
      }

      else
      {
        v30 = v28[2];
        do
        {
          LOBYTE(v11) = v30 != v29;
          if (v30 == v29)
          {
            break;
          }

          if (v29 >= v28[2])
          {
            goto LABEL_25;
          }

          result = sub_10055383C(*(v28 + v29++ + 16));
        }

        while ((result & 1) == 0);
      }

      return v11 & 1;
    }

    goto LABEL_12;
  }

  if (!__OFSUB__(HIDWORD(v32), v32))
  {
    if (HIDWORD(v32) - v32 >= 8)
    {
      goto LABEL_15;
    }

    goto LABEL_12;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_100555680@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *a1;
  result = NSNotFound.getter();
  v7 = v5 + a2;
  if (__OFADD__(v5, a2))
  {
    __break(1u);
  }

  else if (v5 != result && v5 < v7)
  {
    *a3 = v5;
    a3[1] = v7;
    return result;
  }

  __break(1u);
  return result;
}

NSString *sub_1005556D4()
{
  sub_10028088C(&qword_100974F70, &unk_100804260);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1007FDA40;
  *(v0 + 32) = CNContactPhoneNumbersKey;
  *(v0 + 40) = CNContactEmailAddressesKey;
  *(v0 + 48) = CNContactInstantMessageAddressesKey;
  qword_1009831B0 = v0;
  v1 = CNContactPhoneNumbersKey;
  v2 = CNContactEmailAddressesKey;

  return CNContactInstantMessageAddressesKey;
}

uint64_t sub_100555778()
{
  sub_10028088C(&qword_100974EA0, &qword_1007FBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1008018C0;
  v1 = [objc_opt_self() descriptorForRequiredKeysForStyle:0];
  *(inited + 56) = swift_getObjectType();
  *(inited + 32) = v1;
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 88) = &type metadata for String;
  *(inited + 64) = v2;
  *(inited + 72) = v3;
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 120) = &type metadata for String;
  *(inited + 96) = v4;
  *(inited + 104) = v5;
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 152) = &type metadata for String;
  *(inited + 128) = v6;
  *(inited + 136) = v7;
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 184) = &type metadata for String;
  *(inited + 160) = v8;
  *(inited + 168) = v9;
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 216) = &type metadata for String;
  *(inited + 192) = v10;
  *(inited + 200) = v11;
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 248) = &type metadata for String;
  *(inited + 224) = v12;
  *(inited + 232) = v13;
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 280) = &type metadata for String;
  *(inited + 256) = v14;
  *(inited + 264) = v15;
  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 312) = &type metadata for String;
  *(inited + 288) = v16;
  *(inited + 296) = v17;
  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 344) = &type metadata for String;
  *(inited + 320) = v18;
  *(inited + 328) = v19;
  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 376) = &type metadata for String;
  *(inited + 352) = v20;
  *(inited + 360) = v21;
  v22 = sub_100468428(inited);
  swift_setDeallocating();
  result = swift_arrayDestroy();
  qword_1009831B8 = v22;
  return result;
}

uint64_t sub_100555C2C(void *a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchQoS();
  v8 = *(v18 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v18);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17[1] = *&v1[OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_hashManagerQ];
  v12 = swift_allocObject();
  *(v12 + 16) = v1;
  *(v12 + 24) = a1;
  aBlock[4] = sub_10055A430;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100011678;
  aBlock[3] = &unk_1008E6E00;
  v13 = _Block_copy(aBlock);
  v14 = v1;
  v15 = a1;
  static DispatchQoS.unspecified.getter();
  v19 = _swiftEmptyArrayStorage;
  sub_100558BE8(&qword_100976140, &type metadata accessor for DispatchWorkItemFlags);
  sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
  sub_100011630(&qword_100976150, &unk_1009765A0, &qword_1007F97B0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v13);
  (*(v4 + 8))(v7, v3);
  (*(v8 + 8))(v11, v18);
}

void sub_100555F04(uint64_t a1, void *a2)
{
  if (*(a1 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_activated) == 1)
  {
    if (qword_100973A00 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_10000C4AC(v4, qword_100983190);
    v5 = a2;
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v33[0] = swift_slowAlloc();
      *v8 = 136315650;
      v9 = [v5 givenName];
      v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = v11;

      v13 = sub_10000C4E4(v10, v12, v33);

      *(v8 + 4) = v13;
      *(v8 + 12) = 2080;
      v14 = [v5 familyName];
      v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v17 = v16;

      v18 = sub_10000C4E4(v15, v17, v33);

      *(v8 + 14) = v18;
      *(v8 + 22) = 2080;
      v19 = [v5 identifier];
      v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v22 = v21;

      v23 = sub_10000C4E4(v20, v22, v33);

      *(v8 + 24) = v23;
      _os_log_impl(&_mh_execute_header, v6, v7, "Setting meCard (fn=%s,ln=%s,cid=%s)", v8, 0x20u);
      swift_arrayDestroy();
    }

    sub_10054EAF4(v5);
    v27 = (a1 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_meCardInfo);
    v28 = *(a1 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_meCardInfo);
    v29 = v27[1];
    *v27 = v5;
    v27[1] = v30;
    v31 = v5;

    sub_10055A438(v28);
  }

  else
  {
    if (qword_100973A00 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_10000C4AC(v24, qword_100983190);
    oslog = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v25, "Not activated in setMeCard. Bailing.", v26, 2u);
    }
  }
}

uint64_t sub_100556424@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (*(a1 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_activated) == 1)
  {
    result = sub_100553B04(a2, a3);
    if (v4)
    {
      if (qword_100973A00 != -1)
      {
        swift_once();
      }

      v7 = type metadata accessor for Logger();
      sub_10000C4AC(v7, qword_100983190);
      swift_errorRetain();
      v8 = Logger.logObject.getter();
      v9 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        v19 = v11;
        *v10 = 136315138;
        swift_getErrorValue();
        v12 = Error.localizedDescription.getter();
        v14 = sub_10000C4E4(v12, v13, &v19);

        *(v10 + 4) = v14;
        _os_log_impl(&_mh_execute_header, v8, v9, "Error: failed to get contactForCombinedHash because (%s)", v10, 0xCu);
        sub_10000C60C(v11);
      }

      else
      {
      }

      result = 0;
    }
  }

  else
  {
    if (qword_100973A00 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_10000C4AC(v15, qword_100983190);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "Not activated in contactForCombinedHash. Bailing.", v18, 2u);
    }

    result = 0;
  }

  *a4 = result;
  return result;
}

void *sub_100556760@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  if (*(a1 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_activated) != 1)
  {
    if (qword_100973A00 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_10000C4AC(v15, qword_100983190);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "Not activated in contactsForCombinedHash. Bailing.", v18, 2u);
    }

    goto LABEL_13;
  }

  result = sub_100553FC0(a2, a3);
  if (v4)
  {
    if (qword_100973A00 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_10000C4AC(v7, qword_100983190);
    swift_errorRetain();
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v19 = v11;
      *v10 = 136315138;
      swift_getErrorValue();
      v12 = Error.localizedDescription.getter();
      v14 = sub_10000C4E4(v12, v13, &v19);

      *(v10 + 4) = v14;
      _os_log_impl(&_mh_execute_header, v8, v9, "Error: failed to get contactsForCombinedHash because (%s)", v10, 0xCu);
      sub_10000C60C(v11);
    }

    else
    {
    }

LABEL_13:
    result = _swiftEmptySetSingleton;
  }

  *a4 = result;
  return result;
}

void sub_100556BB8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(uint64_t, uint64_t)@<X3>, const char *a5@<X4>, const char *a6@<X5>, uint64_t *a7@<X8>)
{
  if (*(a1 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_activated) == 1)
  {
    v10 = a4(a2, a3);
    if (!v7)
    {
      *a7 = v10;
      a7[1] = v11;
      return;
    }

    if (qword_100973A00 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_10000C4AC(v12, qword_100983190);
    swift_errorRetain();
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v25 = v16;
      *v15 = 136315138;
      swift_getErrorValue();
      v17 = Error.localizedDescription.getter();
      v19 = sub_10000C4E4(v17, v18, &v25);

      *(v15 + 4) = v19;
      _os_log_impl(&_mh_execute_header, v13, v14, a6, v15, 0xCu);
      sub_10000C60C(v16);
    }

    else
    {
    }
  }

  else
  {
    if (qword_100973A00 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_10000C4AC(v21, qword_100983190);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, a5, v24, 2u);
    }
  }

  *a7 = 0;
  a7[1] = 0;
}

uint64_t sub_100556F44@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (*(a1 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_activated) == 1)
  {
    result = sub_100554BFC(a2, a3);
    if (v4)
    {
      if (qword_100973A00 != -1)
      {
        swift_once();
      }

      v7 = type metadata accessor for Logger();
      sub_10000C4AC(v7, qword_100983190);
      swift_errorRetain();
      v8 = Logger.logObject.getter();
      v9 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        v20 = v11;
        *v10 = 136315138;
        swift_getErrorValue();
        v12 = Error.localizedDescription.getter();
        v14 = sub_10000C4E4(v12, v13, &v20);

        *(v10 + 4) = v14;
        _os_log_impl(&_mh_execute_header, v8, v9, "Hash manager: failed to query handles for short hashes with error (%s)", v10, 0xCu);
        sub_10000C60C(v11);
      }

      v15 = sub_100292D28(_swiftEmptyArrayStorage);

      result = v15;
    }
  }

  else
  {
    if (qword_100973A00 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_10000C4AC(v16, qword_100983190);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "Not activated in contactHandlesForShortHashes. Bailing.", v19, 2u);
    }

    result = sub_100292D28(_swiftEmptyArrayStorage);
  }

  *a4 = result;
  return result;
}

void sub_1005572D0(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  if (*(a1 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_activated) == 1)
  {
    v6 = sub_1005552DC(a2, a3);
    if (v4)
    {
      if (qword_100973A00 != -1)
      {
        swift_once();
      }

      v7 = type metadata accessor for Logger();
      sub_10000C4AC(v7, qword_100983190);
      swift_errorRetain();
      v8 = Logger.logObject.getter();
      v9 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        v20 = v11;
        *v10 = 136315138;
        swift_getErrorValue();
        v12 = Error.localizedDescription.getter();
        v14 = sub_10000C4E4(v12, v13, &v20);

        *(v10 + 4) = v14;
        _os_log_impl(&_mh_execute_header, v8, v9, "Hash manager: failed to determine if contacts contain short hashes with error (%s)", v10, 0xCu);
        sub_10000C60C(v11);
      }

      else
      {
      }

      v19 = 0;
    }

    else
    {
      v19 = v6 & 1;
    }
  }

  else
  {
    if (qword_100973A00 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_10000C4AC(v15, qword_100983190);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "Not activated in contactsContainsShortHashes. Bailing.", v18, 2u);
    }

    v19 = 0;
  }

  *a4 = v19;
}

uint64_t sub_100557614()
{
  if (qword_100973A10 != -1)
  {
    swift_once();
  }

  qword_1009A0C60 = qword_1009831B0;
}

uint64_t sub_10055769C()
{
  if (qword_100973A10 != -1)
  {
    swift_once();
  }

  v0 = qword_1009831B0;
  v1 = qword_100973A18;

  if (v1 != -1)
  {
    swift_once();
  }

  sub_10040356C(v2);
  if (qword_100973A20 != -1)
  {
    swift_once();
  }

  sub_10040356C(v3);
  if (qword_100973A28 != -1)
  {
    swift_once();
  }

  result = sub_10040356C(v4);
  qword_1009A0C68 = v0;
  return result;
}

Class sub_100557810(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  if (*a3 != -1)
  {
    v7 = a4;
    swift_once();
    a4 = v7;
  }

  v4 = *a4;
  sub_10028088C(&unk_10097A940, &unk_100807F40);
  v5.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v5.super.isa;
}

void sub_100557884(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (*(a1 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_activated) == 1)
  {
    if (qword_100973A00 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_10000C4AC(v6, qword_100983190);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "Database dump requested", v9, 2u);
    }

    v10 = *(a1 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_hashDB);
    v11 = *(a1 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_hashDB + 8);
    ObjectType = swift_getObjectType();
    v13 = *(v11 + 72);
    swift_unknownObjectRetain();
    v14 = v13(a2, ObjectType, v11);
    swift_unknownObjectRelease();
    v15 = v14 & 1;
  }

  else
  {
    if (qword_100973A00 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_10000C4AC(v16, qword_100983190);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "Not activated in dumpDB. Bailing.", v19, 2u);
    }

    v15 = 0;
  }

  *a3 = v15;
}

uint64_t sub_100557BC8()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS();
  v6 = *(v15 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v15);
  v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14[1] = *&v0[OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_hashManagerQ];
  v10 = swift_allocObject();
  *(v10 + 16) = v0;
  aBlock[4] = sub_100558E64;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100011678;
  aBlock[3] = &unk_1008E6A90;
  v11 = _Block_copy(aBlock);
  v12 = v0;
  static DispatchQoS.unspecified.getter();
  v16 = _swiftEmptyArrayStorage;
  sub_100558BE8(&qword_100976140, &type metadata accessor for DispatchWorkItemFlags);
  sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
  sub_100011630(&qword_100976150, &unk_1009765A0, &qword_1007F97B0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v11);
  (*(v2 + 8))(v5, v1);
  (*(v6 + 8))(v9, v15);
}

void sub_100557E98(uint64_t a1)
{
  if (*(a1 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_activated) == 1)
  {
    if (qword_100973A00 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_10000C4AC(v1, qword_100983190);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "Requesting hash database rebuild", v4, 2u);
    }

    sub_10054BC44(1);
  }

  else
  {
    if (qword_100973A00 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_10000C4AC(v5, qword_100983190);
    oslog = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v6, "Not activated in rebuildDB. Bailing.", v7, 2u);
    }
  }
}

uint64_t sub_1005581A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v55 = a2;
  v54 = type metadata accessor for SHA256();
  v5 = *(v54 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v54);
  v53 = v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for SHA256Digest();
  v8 = *(v52 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v52);
  v51 = v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for String.Encoding();
  v11 = *(v50 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v50);
  v49 = v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1005587E4(a3);
  *&v59 = a1;

  sub_100403A1C(v14);
  result = sub_10053AF80(a3, v59);
  v19 = v18 >> 1;
  v20 = (v18 >> 1) - v17;
  if (__OFSUB__(v18 >> 1, v17))
  {
    goto LABEL_16;
  }

  if (v20)
  {
    v21 = v16;
    v22 = v17;
    v44[1] = result;
    v64 = _swiftEmptyArrayStorage;
    result = sub_10028FFD4(0, v20 & ~(v20 >> 63), 0);
    if (v20 < 0)
    {
LABEL_17:
      __break(1u);
      return result;
    }

    v48 = (v11 + 8);
    v23 = v64;
    v47 = (v5 + 8);
    v46 = (v8 + 16);
    v45 = (v8 + 8);
    if (v22 <= v19)
    {
      v24 = v19;
    }

    else
    {
      v24 = v22;
    }

    v25 = v24 - v22;
    v26 = (v21 + 16 * v22 + 8);
    v27 = v53;
    v28 = v51;
    while (v25)
    {
      v58 = v20;
      v29 = *(v26 - 1);
      v56 = *v26;

      v30 = v49;
      static String.Encoding.utf8.getter();
      v31 = String.data(using:allowLossyConversion:)();
      *&v57 = v23;
      v33 = v32;
      (*v48)(v30, v50);
      v62 = v31;
      v63 = v33;
      sub_10028088C(&qword_100974E10, &qword_1007FC4C0);
      Optional.unwrap(_:file:line:)();
      sub_10028BCC0(v62, v63);
      v34 = v59;
      sub_100558BE8(&unk_100983280, &type metadata accessor for SHA256);
      v35 = v54;
      dispatch thunk of HashFunction.init()();
      sub_100294008(v34, *(&v34 + 1));
      sub_100635718(v34, *(&v34 + 1));
      sub_100026AC0(v34, *(&v34 + 1));
      dispatch thunk of HashFunction.finalize()();
      (*v47)(v27, v35);
      v36 = v52;
      v60 = v52;
      v61 = sub_100558BE8(&unk_10097F060, &type metadata accessor for SHA256Digest);
      v37 = sub_10002F604(&v59);
      (*v46)(v37, v28, v36);
      sub_10002CDC0(&v59, v60);
      dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
      v38 = v62;
      v39 = v63;
      sub_10000C60C(&v59);
      v40 = v38;
      v23 = v57;
      sub_10053AFB8(v55, v40, v39, &v59);

      sub_100026AC0(v34, *(&v34 + 1));
      result = (*v45)(v28, v36);
      v41 = v59;
      v64 = v23;
      v43 = v23[2];
      v42 = v23[3];
      if (v43 >= v42 >> 1)
      {
        v57 = v59;
        result = sub_10028FFD4((v42 > 1), v43 + 1, 1);
        v41 = v57;
        v23 = v64;
      }

      v23[2] = v43 + 1;
      *&v23[2 * v43 + 4] = v41;
      --v25;
      v26 += 2;
      v20 = v58 - 1;
      if (v58 == 1)
      {
        swift_unknownObjectRelease();
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  swift_unknownObjectRelease();
  v23 = _swiftEmptyArrayStorage;
LABEL_14:
  *&v59 = v23;
  sub_100558C30();
  return sub_10056999C(v59);
}

Class sub_100558758(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = sub_1005581A0(v7, a4, a5);
  v10 = v9;

  v11.super.isa = Data._bridgeToObjectiveC()().super.isa;
  sub_100026AC0(v8, v10);

  return v11.super.isa;
}

uint64_t sub_1005587E4(uint64_t a1)
{
  v42 = type metadata accessor for UUID();
  v2 = *(v42 - 8);
  v3 = *(v2 + 8);
  result = __chkstk_darwin(v42);
  v41 = v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 < 1)
  {
    __break(1u);
    goto LABEL_24;
  }

  v6 = sub_10028F93C(a1, 0);
  result = sub_100558DC0(&v46, (v6 + 4), a1, 1, a1);
  if (result != a1)
  {
LABEL_24:
    __break(1u);
    return result;
  }

  v7 = v6[2];
  if (v7)
  {
    v43 = v2;
    v45 = _swiftEmptyArrayStorage;
    sub_10028FBDC(0, v7, 0);
    v8 = 4;
    v9 = v45;
    do
    {
      v10 = v6[v8];
      v46 = 0xD000000000000018;
      v47 = 0x8000000100795260;
      v44 = v10;
      v11._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v11);

      v12 = v46;
      v13 = v47;
      v45 = v9;
      v15 = v9[2];
      v14 = v9[3];
      if (v15 >= v14 >> 1)
      {
        sub_10028FBDC((v14 > 1), v15 + 1, 1);
        v9 = v45;
      }

      v9[2] = v15 + 1;
      v16 = &v9[2 * v15];
      v16[4] = v12;
      v16[5] = v13;
      ++v8;
      --v7;
    }

    while (v7);

    v2 = v43;
  }

  else
  {

    v9 = _swiftEmptyArrayStorage;
  }

  v17 = v9[2];
  v39[1] = v9;
  if (v17)
  {
    v18 = objc_opt_self();
    v40 = (v2 + 8);
    v19 = v9 + 5;
    v20 = _swiftEmptyArrayStorage;
    v21 = &selRef_shareUserDefaultsActivity;
    v43 = v18;
    do
    {
      v23 = *(v19 - 1);
      v22 = *v19;

      v24 = [v18 v21[146]];
      v25 = String._bridgeToObjectiveC()();
      v26 = [v24 stringForKey:v25];

      if (v26)
      {

        v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v29 = v28;
      }

      else
      {
        v30 = v18;
        v31 = v41;
        UUID.init()();
        v27 = UUID.uuidString.getter();
        v29 = v32;
        (*v40)(v31, v42);
        v33 = [v30 v21[146]];
        v34 = String._bridgeToObjectiveC()();
        v35 = String._bridgeToObjectiveC()();

        [v33 setObject:v34 forKey:v35];
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = sub_10028E1C8(0, *(v20 + 2) + 1, 1, v20);
      }

      v37 = *(v20 + 2);
      v36 = *(v20 + 3);
      if (v37 >= v36 >> 1)
      {
        v20 = sub_10028E1C8((v36 > 1), v37 + 1, 1, v20);
      }

      *(v20 + 2) = v37 + 1;
      v38 = &v20[16 * v37];
      *(v38 + 4) = v27;
      *(v38 + 5) = v29;
      v19 += 2;
      --v17;
      v18 = v43;
      v21 = &selRef_shareUserDefaultsActivity;
    }

    while (v17);
  }

  else
  {
    v20 = _swiftEmptyArrayStorage;
  }

  return v20;
}

uint64_t sub_100558BE8(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_100558C30()
{
  v1 = *v0;
  v2 = *(*v0 + 2);
  v3 = v2 - 2;
  if (v2 >= 2)
  {
    v4 = 0;
    while (1)
    {
      swift_stdlib_random();
      v6 = (0 * v2) >> 64;
      if (v2)
      {
        if (-v2 % v2)
        {
          while (1)
          {
            swift_stdlib_random();
          }
        }
      }

      v8 = v4 + v6;
      if (__OFADD__(v4, v6))
      {
        break;
      }

      if (v4 != v8)
      {
        v9 = *(v1 + 2);
        if (v4 >= v9)
        {
          goto LABEL_18;
        }

        if (v8 >= v9)
        {
          goto LABEL_19;
        }

        v10 = &v1[16 * v8 + 32];
        v11 = *v10;
        v12 = v10[1];
        v19 = *&v1[16 * v4 + 32];
        sub_100294008(*&v1[16 * v4 + 32], *&v1[16 * v4 + 40]);
        sub_100294008(v11, v12);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v1 = sub_100497908(v1);
        }

        if (v4 >= *(v1 + 2))
        {
          goto LABEL_20;
        }

        v13 = &v1[16 * v4 + 32];
        v14 = *v13;
        v15 = v13[1];
        *v13 = v11;
        v13[1] = v12;
        sub_100026AC0(v14, v15);
        if (v8 >= *(v1 + 2))
        {
          goto LABEL_21;
        }

        v16 = &v1[16 * v8 + 32];
        v17 = *v16;
        v18 = v16[1];
        *v16 = v19;
        sub_100026AC0(v17, v18);
        *v0 = v1;
      }

      --v2;
      if (v4++ == v3)
      {
        return;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
  }
}

uint64_t sub_100558DC0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
LABEL_13:
    v6 = 0;
    a3 = 0;
    goto LABEL_15;
  }

  if (!a3)
  {
    v6 = 0;
LABEL_15:
    v7 = a4;
LABEL_18:
    *result = a4;
    *(result + 8) = a5;
    *(result + 16) = v7;
    *(result + 24) = v6;
    return a3;
  }

  if (a3 < 0)
  {
    goto LABEL_20;
  }

  v5 = 0;
  v6 = 0;
  v7 = a4;
  while (1)
  {
    if (v6)
    {
      v6 = 1;
      a3 = v5;
      goto LABEL_18;
    }

    v6 = v7 == a5;
    if (v7 == a5)
    {
      v8 = 0;
      goto LABEL_9;
    }

    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

LABEL_9:
    *(a2 + 8 * v5) = v7;
    if (a3 - 1 == v5)
    {
      v7 = v8;
      goto LABEL_18;
    }

    ++v5;
    v7 = v8;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

void sub_100558E88()
{
  v0 = objc_opt_self();
  v1 = 0;
  v2 = 0;
LABEL_2:
  v20 = v1;
  v3 = 4;
  if (v2 > 4)
  {
    v3 = v2;
  }

  v4 = -v3;
  v5 = &off_1008D7A88 + 2 * v2++;
  v6 = (v5 + 5);
  do
  {
    if (v4 + v2 == 1)
    {
      __break(1u);
      goto LABEL_18;
    }

    v8 = *(v6 - 1);
    v7 = *v6;

    v9 = [v0 standardUserDefaults];
    v10 = String._bridgeToObjectiveC()();
    v11 = [v9 valueForKey:v10];

    if (v11)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      sub_100005508(v21, &unk_1009746F0, &qword_1007F90B0);
      v12 = [v0 standardUserDefaults];
      v13 = String._bridgeToObjectiveC()();

      [v12 removeObjectForKey:v13];

      v1 = 1;
      if (v2 != 4)
      {
        goto LABEL_2;
      }

      swift_arrayDestroy();
      goto LABEL_12;
    }

    memset(v21, 0, sizeof(v21));
    sub_100005508(v21, &unk_1009746F0, &qword_1007F90B0);
    ++v2;
    v6 += 2;
  }

  while (v2 != 5);
  swift_arrayDestroy();
  if ((v20 & 1) == 0)
  {
    return;
  }

LABEL_12:
  if (qword_100973A00 == -1)
  {
    goto LABEL_13;
  }

LABEL_18:
  swift_once();
LABEL_13:
  v14 = type metadata accessor for Logger();
  sub_10000C4AC(v14, qword_100983190);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "Found some deprecated state, resetting history token", v17, 2u);
  }

  v18 = [v0 standardUserDefaults];
  v19 = String._bridgeToObjectiveC()();
  [v18 setObject:0 forKey:v19];
}

id sub_100559198()
{
  v0 = sub_10028088C(&unk_1009832A0, &qword_100809A40);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v65 = &v60 - v2;
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v66 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v10 = &v60 - v9;
  __chkstk_darwin(v8);
  v12 = &v60 - v11;
  v13 = sub_10028088C(&qword_100978958, &qword_1007FBB38);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13);
  v64 = &v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v60 - v17;
  result = sub_1001F149C();
  if (result)
  {
    v20 = result;
    v63 = *(v13 + 48);
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    URL.init(fileURLWithPath:)();

    URL.appendingPathComponent(_:)();
    v21 = v13;
    v23 = v4 + 8;
    v22 = *(v4 + 8);
    v22(v12, v3);
    URL.appendingPathComponent(_:)();
    URL.appendingPathExtension(_:)();
    v62 = v10;
    v22(v10, v3);
    v24 = v64;
    sub_10000FF90(v18, v64, &qword_100978958, &qword_1007FBB38);
    v63 = v21;
    v25 = *(v21 + 48);
    v26 = v66;
    (*(v4 + 32))(v66, v24, v3);
    v27 = v22;
    v22((v24 + v25), v3);
    v28 = [objc_opt_self() defaultManager];
    URL.relativePath.getter();
    v29 = String._bridgeToObjectiveC()();

    v30 = [v28 enumeratorAtPath:v29];

    if (v30)
    {
      v61 = v18;
      v31 = v64;
      sub_10000FF90(v18, v64, &qword_100978958, &qword_1007FBB38);
      v32 = *(v63 + 48);
      v33 = URL.lastPathComponent.getter();
      v35 = v34;
      v27(v31 + v32, v3);
      v63 = v23;
      v64 = v3;
      v36 = v27(v31, v3);
      v36.n128_u64[0] = 136315138;
      v60 = v36;
      v37 = v27;
      p_attr = &stru_10094FFF8.attr;
      while (1)
      {
        if ([v30 p_attr[347]])
        {
          _bridgeAnyObjectToAny(_:)();
          swift_unknownObjectRelease();
        }

        else
        {
          v69 = 0u;
          v70 = 0u;
        }

        v71[0] = v69;
        v71[1] = v70;
        if (!*(&v70 + 1))
        {

          v37(v66, v64);
          sub_100005508(v61, &qword_100978958, &qword_1007FBB38);
          v57 = &unk_1009746F0;
          v58 = &qword_1007F90B0;
          v59 = v71;
          return sub_100005508(v59, v57, v58);
        }

        if ((swift_dynamicCast() & 1) == 0)
        {
          break;
        }

        v40 = v67;
        v39 = v68;
        if (v67 == v33 && v68 == v35 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
        }

        else
        {
          v41 = v37;
          *&v71[0] = v40;
          *(&v71[0] + 1) = v39;
          *&v69 = v33;
          *(&v69 + 1) = v35;
          v42 = type metadata accessor for Locale();
          v43 = v65;
          (*(*(v42 - 8) + 56))(v65, 1, 1, v42);
          sub_10001229C();
          StringProtocol.range<A>(of:options:range:locale:)();
          v45 = v44;
          sub_100005508(v43, &unk_1009832A0, &qword_100809A40);
          if (v45)
          {

            v37 = v41;
          }

          else
          {
            if (qword_100973A00 != -1)
            {
              swift_once();
            }

            v46 = type metadata accessor for Logger();
            sub_10000C4AC(v46, qword_100983190);

            v47 = Logger.logObject.getter();
            v48 = static os_log_type_t.default.getter();

            if (os_log_type_enabled(v47, v48))
            {
              v49 = swift_slowAlloc();
              v50 = v41;
              v51 = swift_slowAlloc();
              *&v71[0] = v51;
              *v49 = v60.n128_u32[0];
              *(v49 + 4) = sub_10000C4E4(v40, v39, v71);
              _os_log_impl(&_mh_execute_header, v47, v48, "Removing failed db state %s", v49, 0xCu);
              sub_10000C60C(v51);
              v37 = v50;
              v52 = v62;
            }

            else
            {

              v37 = v41;
              v52 = v62;
            }

            URL.appendingPathComponent(_:)();

            sub_10054C2CC();
            v37(v52, v64);
            p_attr = (&stru_10094FFF8 + 8);
          }
        }
      }

      v37(v66, v64);
      v57 = &qword_100978958;
      v58 = &qword_1007FBB38;
      v59 = v61;
    }

    else
    {
      if (qword_100973A00 != -1)
      {
        swift_once();
      }

      v53 = type metadata accessor for Logger();
      sub_10000C4AC(v53, qword_100983190);
      v54 = Logger.logObject.getter();
      v55 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v54, v55))
      {
        v56 = swift_slowAlloc();
        *v56 = 0;
        _os_log_impl(&_mh_execute_header, v54, v55, "Failed to create enumerator for AirDropHashDB directory", v56, 2u);
      }

      v22(v26, v3);
      v57 = &qword_100978958;
      v58 = &qword_1007FBB38;
      v59 = v18;
    }

    return sub_100005508(v59, v57, v58);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100559A08(uint64_t (*a1)(void), const char *a2)
{
  if (qword_100973A00 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000C4AC(v4, qword_100983190);
  oslog = Logger.logObject.getter();
  v5 = a1();
  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v5, a2, v6, 2u);
  }
}

uint64_t sub_100559B00()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 objectForKey:v1];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    if (swift_dynamicCast())
    {
      return v4;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_100005508(v7, &unk_1009746F0, &qword_1007F90B0);
    return 0;
  }
}

uint64_t sub_100559C28(uint64_t a1)
{
  v2 = sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v12 - v4;
  v6 = [objc_opt_self() standardUserDefaults];
  sub_10000FF90(a1, v5, &qword_10097A7F0, &unk_1007FB600);
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  isa = 0;
  if ((*(v8 + 48))(v5, 1, v7) != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v8 + 8))(v5, v7);
  }

  v10 = String._bridgeToObjectiveC()();
  [v6 setObject:isa forKey:v10];

  swift_unknownObjectRelease();
  return sub_100005508(a1, &qword_10097A7F0, &unk_1007FB600);
}

uint64_t sub_100559DC8(uint64_t a1)
{
  v2 = sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v12 - v4;
  v6 = [objc_opt_self() standardUserDefaults];
  sub_10000FF90(a1, v5, &qword_10097A7F0, &unk_1007FB600);
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  isa = 0;
  if ((*(v8 + 48))(v5, 1, v7) != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v8 + 8))(v5, v7);
  }

  v10 = String._bridgeToObjectiveC()();
  [v6 setObject:isa forKey:v10];

  swift_unknownObjectRelease();
  return sub_100005508(a1, &qword_10097A7F0, &unk_1007FB600);
}

uint64_t sub_100559F68()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 objectForKey:v1];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    if (swift_dynamicCast())
    {
      return v4;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_100005508(v7, &unk_1009746F0, &qword_1007F90B0);
    return 0;
  }
}

unint64_t sub_10055A164()
{
  result = qword_1009832B8;
  if (!qword_1009832B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009832B8);
  }

  return result;
}

uint64_t sub_10055A1FC()
{
  sub_100026AC0(*(v0 + 16), *(v0 + 24));

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_10055A234@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  v7 = *a1;
  v6 = a1[1];
  result = Data.subdata(in:)();
  *a2 = result;
  a2[1] = v9;
  return result;
}

uint64_t sub_10055A268()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 64);

  return _swift_deallocObject(v0, 72);
}

uint64_t sub_10055A2A8(uint64_t *a1)
{
  v3 = v1[2];
  v2 = v1[3];
  v4 = v1[7];
  v5 = v1[8];
  v8 = *a1;
  v4(v7, &v8);
  return v3(v7);
}

void *sub_10055A438(void *result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10055A478@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  result = sub_100026178();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_10055A604()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_1009832F0);
  v1 = sub_10000C4AC(v0, qword_1009832F0);
  if (qword_1009736F8 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A0930);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10055A6CC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for NWEndpoint();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = (&v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_10028088C(&unk_100976120, &qword_1007F9260);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v32 - v13;
  v15 = type metadata accessor for UUID();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v3 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDAirDropDiscoveredClassroom_allEndpoints) = _swiftEmptySetSingleton;
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  (*(v16 + 56))(v14, 1, 1, v15);

  sub_10062E9D8(v14, a1, a2, v19);
  v20 = v14;
  v21 = v15;
  sub_100005508(v20, &unk_100976120, &qword_1007F9260);
  (*(v16 + 16))(v3 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDAirDropDiscoveredClassroom_connectableUUID, v19, v15);
  *v10 = nw_endpoint_create_application_service();
  (*(v7 + 104))(v10, enum case for NWEndpoint.opaque(_:), v6);
  (*(v7 + 32))(v3 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDAirDropDiscoveredClassroom_displayEndpoint, v10, v6);
  v22 = (v3 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDAirDropDiscoveredClassroom_classroomID);
  *v22 = a1;
  v22[1] = a2;
  if (qword_100973A40 != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  sub_10000C4AC(v23, qword_1009832F0);

  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v32 = v27;
    *v26 = 136315138;
    v28 = *(v3 + 16);
    v29 = *(v3 + 24);

    v30 = sub_10000C4E4(v28, v29, &v32);

    *(v26 + 4) = v30;
    _os_log_impl(&_mh_execute_header, v24, v25, "Creating Classroom %s", v26, 0xCu);
    sub_10000C60C(v27);
  }

  (*(v16 + 8))(v19, v21);
  return v3;
}

id sub_10055AAD0(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for SFAirDrop.DeviceRelationship();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SFAirDrop.TXTRecord();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = NWEndpoint.nw.getter();
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  v23 = v9;
  result = [a1 displayName];
  if (!result)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v15 = result;
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  String.utf8CString.getter();

  nw_endpoint_set_device_name();

  (*(v5 + 104))(v8, enum case for SFAirDrop.DeviceRelationship.classroom(_:), v4);
  SFAirDrop.TXTRecord.init(deviceRelationship:)();
  SFAirDrop.TXTRecord.addToEndpoint(_:)();
  if (qword_100973A40 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_10000C4AC(v16, qword_1009832F0);

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();

  v19 = os_log_type_enabled(v17, v18);
  v20 = v23;
  if (v19)
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v24 = v22;
    *v21 = 136315138;
    *(v21 + 4) = sub_10000C4E4(*(v2 + 16), *(v2 + 24), &v24);
    _os_log_impl(&_mh_execute_header, v17, v18, "DiscoveredClassroom Updated %s", v21, 0xCu);
    sub_10000C60C(v22);
  }

  swift_unknownObjectRelease();
  return (*(v10 + 8))(v13, v20);
}

uint64_t sub_10055ADF4()
{
  v1 = *(v0 + 3);

  v2 = OBJC_IVAR____TtC16DaemoniOSLibrary28SDAirDropDiscoveredClassroom_connectableUUID;
  v3 = type metadata accessor for UUID();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);
  v4 = OBJC_IVAR____TtC16DaemoniOSLibrary28SDAirDropDiscoveredClassroom_displayEndpoint;
  v5 = type metadata accessor for NWEndpoint();
  (*(*(v5 - 8) + 8))(&v0[v4], v5);
  v6 = *&v0[OBJC_IVAR____TtC16DaemoniOSLibrary28SDAirDropDiscoveredClassroom_classroomID + 8];

  v7 = *&v0[OBJC_IVAR____TtC16DaemoniOSLibrary28SDAirDropDiscoveredClassroom_allEndpoints];

  v8 = *(*v0 + 48);
  v9 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SDAirDropDiscoveredClassroom()
{
  result = qword_100983338;
  if (!qword_100983338)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10055AF50()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = type metadata accessor for NWEndpoint();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_10055B0AC(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = type metadata accessor for SDAirDropDiscoveredEndpoint(0);
  v2[7] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v5 = static AirDropActor.shared;

  return _swift_task_switch(sub_10055B190, v5, 0);
}

id sub_10055B190()
{
  v1 = v0[7];
  sub_1002940CC(v0[5], v0[10]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v3 = v0[10];
  if (EnumCaseMultiPayload == 3)
  {
    v4 = *v3;
    result = [*v3 identifier];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v6 = result;
    v7 = v0[6];
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    if (*(v7 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDAirDropDiscoveredClassroom_classroomID) == v8 && *(v7 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDAirDropDiscoveredClassroom_classroomID + 8) == v10)
    {
    }

    else
    {
      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v12 & 1) == 0)
      {
        if (qword_100973A40 != -1)
        {
          swift_once();
        }

        v13 = type metadata accessor for Logger();
        sub_10000C4AC(v13, qword_1009832F0);
        v14 = Logger.logObject.getter();
        v15 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v14, v15))
        {
          v16 = swift_slowAlloc();
          *v16 = 0;
          _os_log_impl(&_mh_execute_header, v14, v15, "ClassroomID Mis-Match", v16, 2u);
        }

        goto LABEL_16;
      }
    }

    v18 = v0[8];
    v17 = v0[9];
    v19 = v0[6];
    sub_1002940CC(v0[5], v18);
    swift_beginAccess();
    sub_10046DE64(v17, v18);
    swift_endAccess();
    sub_100294130(v17);
    sub_10055AAD0(v4);
  }

  else
  {
    sub_100294130(v3);
  }

LABEL_16:
  v21 = v0[9];
  v20 = v0[10];
  v22 = v0[8];

  v23 = v0[1];

  return v23();
}

uint64_t sub_10055B3E4(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = *(*(sub_10028088C(&qword_1009763E0, &qword_1007F95D0) - 8) + 64) + 15;
  v2[7] = swift_task_alloc();
  v4 = type metadata accessor for SDAirDropDiscoveredEndpoint(0);
  v2[8] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v2[9] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v6 = static AirDropActor.shared;

  return _swift_task_switch(sub_10055B4E8, v6, 0);
}

uint64_t sub_10055B4E8()
{
  v1 = v0[8];
  sub_1002940CC(v0[5], v0[9]);
  if (swift_getEnumCaseMultiPayload() == 3)
  {
    v3 = v0[6];
    v2 = v0[7];
    v4 = v0[5];
    v5 = *v0[9];
    swift_beginAccess();
    sub_10036E788(v4, v2);
    swift_endAccess();
    sub_100005508(v2, &qword_1009763E0, &qword_1007F95D0);
    sub_10055AAD0(v5);
  }

  else
  {
    sub_100294130(v0[9]);
  }

  v6 = v0[9];
  v7 = v0[7];

  v8 = v0[1];

  return v8();
}

uint64_t sub_10055B620()
{
  *(v1 + 40) = v0;
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v2 = static AirDropActor.shared;

  return _swift_task_switch(sub_10055B6BC, v2, 0);
}

uint64_t sub_10055B6BC()
{
  v1 = **(v0 + 40);
  v2 = OBJC_IVAR____TtC16DaemoniOSLibrary28SDAirDropDiscoveredClassroom_allEndpoints;
  swift_beginAccess();
  v3 = *(v1 + v2);
  v6 = *(v0 + 8);

  return v6(v4);
}

uint64_t sub_10055B750(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100005C04;

  return sub_10055B0AC(a1);
}

uint64_t sub_10055B7E8(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100005C00;

  return sub_10055B3E4(a1);
}

unint64_t sub_10055B880(uint64_t a1)
{
  result = sub_10055B8A8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10055B8A8()
{
  result = qword_1009833E0;
  if (!qword_1009833E0)
  {
    type metadata accessor for SDAirDropDiscoveredClassroom();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009833E0);
  }

  return result;
}

void sub_10055B900(uint64_t a1)
{
  v215 = type metadata accessor for SFAirDropSend.Failure();
  v214 = *(v215 - 8);
  v4 = *(v214 + 64);
  __chkstk_darwin(v215);
  v213 = &v183 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v211 = type metadata accessor for SFAirDropSend.Transfer.State();
  v210 = *(v211 - 8);
  v6 = *(v210 + 64);
  __chkstk_darwin(v211);
  v216 = &v183 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v217 = type metadata accessor for SDAirDropLegacySessionLogger.Transfer(0);
  v224 = *(v217 - 8);
  v8 = v224[8];
  v9 = __chkstk_darwin(v217);
  v190 = &v183 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v194 = &v183 - v12;
  v13 = __chkstk_darwin(v11);
  v192 = &v183 - v14;
  v15 = __chkstk_darwin(v13);
  v193 = &v183 - v16;
  __chkstk_darwin(v15);
  v198 = &v183 - v17;
  v197 = type metadata accessor for SFNWInterfaceType();
  v196 = *(v197 - 8);
  v18 = *(v196 + 64);
  __chkstk_darwin(v197);
  v195 = &v183 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v203 = type metadata accessor for UUID();
  v202 = *(v203 - 8);
  v20 = *(v202 + 64);
  __chkstk_darwin(v203);
  v201 = &v183 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_10028088C(&qword_1009762A8, &qword_1007F9418);
  v23 = *(*(v22 - 8) + 64);
  v24 = __chkstk_darwin(v22 - 8);
  v207 = &v183 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v206 = (&v183 - v26);
  v225 = type metadata accessor for SFAirDrop.TransferIdentifier();
  v227 = *(v225 - 8);
  v27 = *(v227 + 64);
  v28 = __chkstk_darwin(v225);
  v204 = &v183 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __chkstk_darwin(v28);
  v205 = &v183 - v31;
  v32 = __chkstk_darwin(v30);
  v209 = &v183 - v33;
  __chkstk_darwin(v32);
  v35 = &v183 - v34;
  v36 = sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
  v37 = *(*(v36 - 8) + 64);
  v38 = __chkstk_darwin(v36 - 8);
  v189 = &v183 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __chkstk_darwin(v38);
  v191 = &v183 - v41;
  v42 = __chkstk_darwin(v40);
  v218 = (&v183 - v43);
  __chkstk_darwin(v42);
  v45 = &v183 - v44;
  v46 = type metadata accessor for SFAirDrop.NetworkMetrics();
  v47 = *(v46 - 1);
  v48 = *(v47 + 64);
  v49 = __chkstk_darwin(v46);
  v212 = &v183 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = __chkstk_darwin(v49);
  v199 = &v183 - v52;
  __chkstk_darwin(v51);
  v54 = &v183 - v53;
  v55 = type metadata accessor for Date();
  v56 = *(v55 - 8);
  v57 = v56[8];
  v58 = __chkstk_darwin(v55);
  v208 = &v183 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v58);
  v61 = &v183 - v60;
  v62 = a1;
  SFAirDropSend.Transfer.networkMetrics.getter();
  SFAirDrop.NetworkMetrics.uploadStart.getter();
  v63 = *(v47 + 8);
  v222 = (v47 + 8);
  v223 = v46;
  v221 = v63;
  v63(v54, v46);
  v219 = v56[6];
  v220 = v56 + 6;
  if (v219(v45, 1, v55) == 1)
  {
    sub_100005508(v45, &qword_10097A7F0, &unk_1007FB600);
    v64 = v225;
    v65 = v226;
    v66 = v216;
    v67 = v56;
    v69 = v217;
    v68 = v218;
    v70 = a1;
  }

  else
  {
    v71 = v217;
    v200 = v56;
    v72 = v56[4];
    v73 = v61;
    v187 = v55;
    v72(v61, v45, v55);
    SFAirDropSend.Transfer.id.getter();
    v74 = v226;
    swift_beginAccess();
    v75 = *(v74 + 40);
    v76 = *(v75 + 16);
    v68 = v218;
    v188 = v62;
    if (v76)
    {
      v77 = sub_100570848(v35);
      v78 = v206;
      if (v79)
      {
        sub_10056056C(*(v75 + 56) + v224[9] * v77, v206);
        v80 = 0;
      }

      else
      {
        v80 = 1;
      }

      v81 = v73;
    }

    else
    {
      v80 = 1;
      v81 = v61;
      v78 = v206;
    }

    v82 = v224;
    v83 = v224[7];
    v69 = v71;
    (v83)(v78, v80, 1, v71);
    swift_endAccess();
    v84 = *(v227 + 8);
    v85 = v35;
    v64 = v225;
    v84(v85, v225);
    LODWORD(v82) = (v82[6])(v78, 1, v71);
    sub_100005508(v78, &qword_1009762A8, &qword_1007F9418);
    if (v82 == 1)
    {
      v186 = @"Send";
      v185 = @"Start";
      v86 = v209;
      v184 = v81;
      v87 = v188;
      SFAirDropSend.Transfer.id.getter();
      v206 = v83;
      v88 = v201;
      SFAirDrop.TransferIdentifier.id.getter();
      v84(v86, v64);
      isa = UUID._bridgeToObjectiveC()().super.isa;
      (*(v202 + 8))(v88, v203);
      v90 = v196;
      v91 = v195;
      v92 = v197;
      (*(v196 + 104))(v195, enum case for SFNWInterfaceType.awdl(_:), v197);
      SFNWInterfaceType.description.getter();
      (*(v90 + 8))(v91, v92);
      v93 = String._bridgeToObjectiveC()();

      sub_100086E1C(v186, v185, isa, v93, 0.0);

      v70 = v87;
      v67 = v200;
      v94 = v198;
      v95 = v184;
      v55 = v187;
      (v200[2])(v198, v184, v187);
      (v67[7])(v94 + v71[7], 1, 1, v55);
      v96 = v71[5];
      *(v94 + v71[6]) = 0;
      v97 = v199;
      SFAirDropSend.Transfer.networkMetrics.getter();
      v98 = SFAirDrop.NetworkMetrics.uploadTotalBytes.getter();
      v221(v97, v223);
      *(v94 + v96) = v98;
      v66 = v209;
      SFAirDropSend.Transfer.id.getter();
      v99 = v207;
      sub_10056056C(v94, v207);
      (v206)(v99, 0, 1, v69);
      v65 = v226;
      swift_beginAccess();
      sub_1002B0EB8(v99, v66);
      swift_endAccess();
      sub_100560634(v94);
      (v67[1])(v95, v55);
      v100 = *(v65 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDAirDropLegacySessionLogger_transfersInitiated);
      v101 = __OFADD__(v100, 1);
      v102 = v100 + 1;
      if (v101)
      {
        __break(1u);
LABEL_52:
        swift_once();
        goto LABEL_19;
      }

      *(v65 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDAirDropLegacySessionLogger_transfersInitiated) = v102;
      v66 = v216;
      v64 = v225;
      v68 = v218;
    }

    else
    {
      v67 = v200;
      v55 = v187;
      (v200[1])(v81, v187);
      v66 = v216;
      v65 = v226;
      v70 = v188;
    }
  }

  v103 = v212;
  SFAirDropSend.Transfer.networkMetrics.getter();
  SFAirDrop.NetworkMetrics.uploadFinish.getter();
  v221(v103, v223);
  if (v219(v68, 1, v55) == 1)
  {
    sub_100005508(v68, &qword_10097A7F0, &unk_1007FB600);
    goto LABEL_33;
  }

  v104 = v208;
  (v67[4])(v208, v68, v55);
  v105 = v205;
  SFAirDropSend.Transfer.id.getter();
  swift_beginAccess();
  v106 = *(v65 + 40);
  if (!*(v106 + 16) || (v107 = sub_100570848(v105), (v108 & 1) == 0))
  {
    swift_endAccess();
    (*(v227 + 8))(v105, v64);
    (v67[1])(v104, v55);
    goto LABEL_33;
  }

  v200 = v67;
  v109 = *(v106 + 56) + v224[9] * v107;
  v110 = v105;
  v111 = v192;
  sub_10056056C(v109, v192);
  v112 = v193;
  sub_1005605D0(v111, v193);
  swift_endAccess();
  v113 = (v227 + 8);
  v218 = *(v227 + 8);
  v218(v110, v64);
  v114 = v69[7];
  v115 = v191;
  sub_1002E4E88(v112 + v114, v191);
  if (v219(v115, 1, v55) != 1)
  {
    (v200[1])(v208, v55);
    sub_100005508(v115, &qword_10097A7F0, &unk_1007FB600);
    v127 = v112;
LABEL_32:
    sub_100560634(v127);
    v64 = v225;
LABEL_33:
    v141 = v211;
    SFAirDropSend.Transfer.state.getter();
    v142 = v210;
    v143 = (*(v210 + 88))(v66, v141);
    if (v143 == enum case for SFAirDropSend.Transfer.State.transferFailed(_:))
    {
      (*(v142 + 96))(v66, v141);
      v144 = sub_10028088C(&unk_100986210, &unk_1008042C0);
      (*(v214 + 32))(v213, v66 + *(v144 + 48), v215);
      v145 = v204;
      SFAirDropSend.Transfer.id.getter();
      swift_beginAccess();
      v146 = *(v65 + 40);
      if (*(v146 + 16) && (v147 = sub_100570848(v145), (v148 & 1) != 0))
      {
        v149 = *(v146 + 56) + v224[9] * v147;
        v150 = v145;
        v151 = v190;
        sub_10056056C(v149, v190);
        v152 = v151;
        v153 = v194;
        sub_1005605D0(v152, v194);
        swift_endAccess();
        v154 = *(v227 + 8);
        v227 += 8;
        v154(v150, v64);
        v155 = v189;
        sub_1002E4E88(v153 + v69[7], v189);
        if (v219(v155, 1, v55) == 1)
        {
          sub_100005508(v155, &qword_10097A7F0, &unk_1007FB600);
          sub_100560690(&qword_1009755A0, &type metadata accessor for SFAirDropSend.Failure);
          v156 = v215;
          swift_allocError();
          (*(v214 + 16))(v157, v213, v156);
          v158 = _convertErrorToNSError(_:)();

          v159 = [v158 domain];
          if (!v159)
          {
            static String._unconditionallyBridgeFromObjectiveC(_:)();
            v159 = String._bridgeToObjectiveC()();
          }

          v160 = CFErrorCreate(kCFAllocatorDefault, v159, [v158 code], 0);

          SFAirDropSend.Transfer.bundleIdentifier.getter();
          v188 = v70;
          v222 = v154;
          v223 = v158;
          if (v161)
          {
            v162._countAndFlagsBits = 0x6C7070612E6D6F63;
            v162._object = 0xEA00000000002E65;
            if (String.hasPrefix(_:)(v162))
            {
              v163 = v160;
              v164 = v69;
LABEL_50:
              v169 = String._bridgeToObjectiveC()();

              v170 = String._bridgeToObjectiveC()();
              v171 = v194;
              v172 = *(v194 + v164[5]);
              v173 = [*(v65 + 16) discoverableLevel];
              sub_10055FE14();
              v175 = v174;
              v176 = v172;
              sub_10027FD18(_swiftEmptyArrayStorage);
              v177 = Dictionary._bridgeToObjectiveC()().super.isa;

              sub_1000860D4(v169, v170, 1, v163, v173, v175 & 1, v177, v176);

              v178 = v209;
              SFAirDropSend.Transfer.id.getter();
              v179 = v201;
              SFAirDrop.TransferIdentifier.id.getter();
              v222(v178, v225);
              v180 = UUID._bridgeToObjectiveC()().super.isa;
              (*(v202 + 8))(v179, v203);
              sub_100086E1C(@"Send", @"Failed", v180, 0, v176);

              SFAirDropSend.Transfer.id.getter();
              v181 = v207;
              (v224[7])(v207, 1, 1, v164);
              swift_beginAccess();
              sub_1002B0EB8(v181, v178);
              swift_endAccess();

              sub_100560634(v171);
              (*(v214 + 8))(v213, v215);
              v182 = type metadata accessor for SFAirDropSend.Transfer.Metrics();
              (*(*(v182 - 8) + 8))(v216, v182);
              return;
            }
          }

          v163 = v160;
          v164 = v69;

          goto LABEL_50;
        }

        sub_100560634(v153);
        (*(v214 + 8))(v213, v215);
        sub_100005508(v155, &qword_10097A7F0, &unk_1007FB600);
      }

      else
      {
        swift_endAccess();
        (*(v227 + 8))(v145, v64);
        (*(v214 + 8))(v213, v215);
      }
    }

    else
    {
      if (v143 != enum case for SFAirDropSend.Transfer.State.completedSuccessfully(_:))
      {
        (*(v142 + 8))(v66, v141);
        return;
      }

      (*(v142 + 96))(v66, v141);
      v165 = *(v66 + *(sub_10028088C(&qword_10097E9D0, &unk_1007FC200) + 48) + 8);

      v166 = v209;
      SFAirDropSend.Transfer.id.getter();
      v167 = v207;
      (v224[7])(v207, 1, 1, v69);
      swift_beginAccess();
      sub_1002B0EB8(v167, v166);
      swift_endAccess();
    }

    v168 = type metadata accessor for SFAirDropSend.Transfer.Metrics();
    (*(*(v168 - 8) + 8))(v66, v168);
    return;
  }

  v212 = v113;
  sub_100005508(v115, &qword_10097A7F0, &unk_1007FB600);
  sub_100005508(v112 + v114, &qword_10097A7F0, &unk_1007FB600);
  v116 = v200;
  (v200[2])(v112 + v114, v208, v55);
  (v116[7])(v112 + v114, 0, 1, v55);
  v117 = v199;
  SFAirDropSend.Transfer.networkMetrics.getter();
  v94 = SFAirDrop.NetworkMetrics.uploadURLCount.getter();
  v221(v117, v223);
  *(v112 + v69[6]) = v94;
  Date.timeIntervalSince(_:)();
  v2 = v118;
  v1 = *(v112 + v69[5]);
  if (qword_100973A48 != -1)
  {
    goto LABEL_52;
  }

LABEL_19:
  v119 = type metadata accessor for Logger();
  sub_10000C4AC(v119, qword_1009833E8);
  v120 = Logger.logObject.getter();
  v121 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v120, v121))
  {
    v122 = swift_slowAlloc();
    *v122 = 134218496;
    *(v122 + 4) = v2;
    *(v122 + 12) = 2048;
    *(v122 + 14) = v1;
    *(v122 + 22) = 2048;
    *(v122 + 24) = v1 / v2;
    _os_log_impl(&_mh_execute_header, v120, v121, "AirDrop send performance - duration %f - totalBytes %f - bytesPerSecond %f", v122, 0x20u);
  }

  SFAirDropSend.Transfer.bundleIdentifier.getter();
  v187 = v55;
  if (v123)
  {
    v124._countAndFlagsBits = 0x6C7070612E6D6F63;
    v124._object = 0xEA00000000002E65;
    if (String.hasPrefix(_:)(v124))
    {
      v125 = v70;
      v126 = v66;
      goto LABEL_28;
    }
  }

  v125 = v70;
  v126 = v66;

LABEL_28:
  v128 = String._bridgeToObjectiveC()();

  v129 = String._bridgeToObjectiveC()();
  v130 = [*(v65 + 16) discoverableLevel];
  sub_10055FE14();
  v132 = v131;
  sub_10027FD18(_swiftEmptyArrayStorage);
  v133 = Dictionary._bridgeToObjectiveC()().super.isa;

  sub_100085D2C(v128, v129, 1, v130, v132 & 1, v133, v1 / v2, v1);

  if (v94 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_54;
  }

  if (v94 > 0x7FFFFFFF)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v66 = v126;
  v70 = v125;
  sub_10008644C(1, v94);
  v134 = v209;
  SFAirDropSend.Transfer.id.getter();
  v135 = v201;
  SFAirDrop.TransferIdentifier.id.getter();
  v218(v134, v225);
  v136 = UUID._bridgeToObjectiveC()().super.isa;
  (*(v202 + 8))(v135, v203);
  sub_100086E1C(@"Send", @"Stop", v136, 0, v1);

  SFAirDropSend.Transfer.id.getter();
  v137 = v193;
  swift_beginAccess();
  v138 = v207;
  sub_10056056C(v137, v207);
  v69 = v217;
  (v224[7])(v138, 0, 1, v217);
  v65 = v226;
  swift_beginAccess();
  sub_1002B0EB8(v138, v134);
  swift_endAccess();
  v55 = v187;
  (v200[1])(v208, v187);
  v139 = *(v65 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDAirDropLegacySessionLogger_transfersCompleted);
  v101 = __OFADD__(v139, 1);
  v140 = v139 + 1;
  if (!v101)
  {
    *(v65 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDAirDropLegacySessionLogger_transfersCompleted) = v140;
    v127 = v137;
    goto LABEL_32;
  }

LABEL_55:
  __break(1u);
}