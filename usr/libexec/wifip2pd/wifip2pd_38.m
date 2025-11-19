void sub_1002EEF78(uint64_t a1, void *a2)
{
  v2 = a2;
  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = 0xD00000000000001FLL;
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v5 = 136315138;
    v7 = &v2[qword_10059B890];
    swift_beginAccess();
    v8 = type metadata accessor for NANPublish.Configuration();
    if (v7[*(v8 + 84) + 24])
    {
      if (v7[*(v8 + 84) + 24] == 1)
      {
        v9 = "Allow connection to all devices";
        v4 = 0xD000000000000032;
LABEL_11:
        v11 = sub_100002320(v4, v9 | 0x8000000000000000, &v13);

        *(v5 + 4) = v11;
        _os_log_impl(&_mh_execute_header, oslog, v3, "Update callback configuration for: %s", v5, 0xCu);
        sub_100002A00(v6);

        return;
      }

      v10 = "Allow connection to all devices";
    }

    else
    {
      v4 = 0xD000000000000027;
      v10 = "Allow connection to paired devices only";
    }

    v9 = v10 - 32;
    goto LABEL_11;
  }
}

uint64_t sub_1002EF130(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  ObjectType = swift_getObjectType();
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin();
  v10 = (&v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = OS_dispatch_queue.nan.unsafeMutableAddressor();
  v12 = *v11;
  *v10 = *v11;
  (*(v7 + 104))(v10, enum case for DispatchPredicate.onQueue(_:), v6);
  v13 = v12;
  LOBYTE(v12) = _dispatchPreconditionTest(_:)();
  result = (*(v7 + 8))(v10, v6);
  if (v12)
  {
    if (*(v2 + qword_10059B898) == 1)
    {
      __chkstk_darwin();
      *(&v17 - 2) = v2;
      *(&v17 - 1) = a1;
      WitnessTable = swift_getWitnessTable();
      sub_10036E438(sub_100300264, &v17 - 32, ObjectType, WitnessTable);
      v16 = 0;
    }

    else
    {
      v16 = 3;
    }

    return a2(v16);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1002EF33C()
{
  v1 = v0;
  v2 = v0 + qword_10059B890;
  swift_beginAccess();
  v4 = *(v2 + 8);
  v3 = *(v2 + 16);

  v5 = NANServiceName.description.getter(v4, v3);
  v7 = v6;

  v8 = v1 + qword_10059B8D0;
  swift_beginAccess();
  v9 = *(v8 + 24);
  *(v8 + 16) = v5;
  *(v8 + 24) = v7;
  *(v8 + 64) = 1;

  v10 = *(v1 + qword_100595970);
  swift_unownedRetainStrong();
  v11 = *(v10 + *(*v10 + 800));
  swift_unownedRetainStrong();

  v12 = sub_1003F06BC();

  *(v1 + qword_1005959D8) = v12;
  swift_unownedRetainStrong();
  v13 = *(v10 + *(*v10 + 800));
  swift_unownedRetainStrong();

  v14 = sub_1003F06D8();

  *(v1 + qword_1005959E0) = v14;
  swift_unownedRetainStrong();
  v15 = *(v10 + *(*v10 + 800));
  swift_unownedRetainStrong();

  (*(*v15 + 200))(v16);

  v23 = *WiFiDriverCapabilities.supportsSimultaneousDualBand.unsafeMutableAddressor();
  sub_1000C2A14();

  LOBYTE(v15) = dispatch thunk of SetAlgebra.isSuperset(of:)();

  *(v8 + 105) = v15 & 1;
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

  *(v8 + 100) = v21;
  return result;
}

uint64_t sub_1002EF5A4(char *a1, int a2)
{
  v3 = v2;
  v73 = a2;
  v75 = a1;
  v4 = swift_isaMask & *v2;
  v5 = *(*(v4 + 0x58) + 8);
  v6 = *(v4 + 80);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v81 = *(AssociatedTypeWitness - 8);
  v82 = AssociatedTypeWitness;
  v8 = *(v81 + 64);
  __chkstk_darwin();
  v80 = &v71 - v9;
  v10 = swift_checkMetadataState();
  v77 = *(v10 - 8);
  v78 = v10;
  v11 = *(v77 + 64);
  __chkstk_darwin();
  v76 = &v71 - v12;
  v74 = type metadata accessor for DispatchTime();
  v13 = *(v74 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin();
  v16 = &v71 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v18 = &v71 - v17;
  v19 = *(v3 + qword_10059B8C8 + 8);
  v72 = (v3 + qword_10059B8C8);
  if (v19)
  {
    v20 = *(v3 + qword_10059B8C8);
    v21 = v19;
  }

  else
  {
    v20 = 0;
    v21 = 0xE000000000000000;
  }

  v22 = v3 + qword_10059B8D0;
  swift_beginAccess();
  v23 = *(v22 + 1);
  *v22 = v20;
  *(v22 + 1) = v21;

  v22[68] = *(v3 + qword_1005959D0);
  swift_endAccess();
  v24 = *(v3 + qword_100595970);
  swift_unownedRetainStrong();
  sub_10040CAE8();

  v25 = sub_100337438();

  *(v22 + 6) = v25;
  swift_unownedRetainStrong();
  sub_10040CAE8();

  v26 = sub_10033746C();

  *(v22 + 5) = v26;
  swift_unownedRetainStrong();
  sub_10040CAE8();

  v27 = sub_100337590();

  *(v22 + 7) = v27;
  if ((v75 + 1) >= 6)
  {
    v28 = 5;
  }

  else
  {
    v28 = 0x50403020501uLL >> (8 * (v75 + 1));
  }

  v22[33] = v28;
  v22[34] = v73;
  type metadata accessor for P2PTimer();
  variable initialization expression of AWDLPeer.lastUpdated();
  v29 = DispatchTime.uptimeNanoseconds.getter();
  v30 = v13;
  v31 = *(v13 + 8);
  v32 = v18;
  v33 = v74;
  v31(v32, v74);
  (*(v30 + 16))(v16, v3 + qword_1005959E8, v33);
  v34 = DispatchTime.uptimeNanoseconds.getter();
  result = (v31)(v16, v33);
  if (v29 < v34)
  {
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  *(v22 + 11) = (v29 - v34) / 0xF4240;
  swift_unownedRetainStrong();
  v36 = *(v24 + *(*v24 + 800));
  swift_unownedRetainStrong();

  v37 = sub_1003F06BC();

  v38 = *(v3 + qword_1005959D8);
  v39 = v37 >= v38;
  v40 = v37 - v38;
  if (!v39)
  {
    goto LABEL_33;
  }

  *(v22 + 33) = v40;
  swift_unownedRetainStrong();
  v41 = *(v24 + *(*v24 + 800));
  swift_unownedRetainStrong();

  v42 = sub_1003F06D8();

  v43 = *(v3 + qword_1005959E0);
  v39 = v42 >= v43;
  v44 = v42 - v43;
  if (!v39)
  {
    goto LABEL_34;
  }

  *(v22 + 34) = v44;
  v45 = v3 + qword_10059B890;
  swift_beginAccess();
  v46 = type metadata accessor for NANPublish.Configuration();
  if (v45[*(v46 + 84) + 2])
  {
    v47 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  else
  {
    v47 = 1;
  }

  v22[65] = v47 & 1;
  if (v45[*(v46 + 84) + 2] && v45[*(v46 + 84) + 2] == 1)
  {
    v48 = 1;
  }

  else
  {
    v48 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v22[66] = v48 & 1;
  if (v45[*(v46 + 84) + 2] && v45[*(v46 + 84) + 2] != 1)
  {
    v49 = 1;
  }

  else
  {
    v49 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v22[67] = v49 & 1;
  v50 = v72[1];
  if (!v50)
  {
LABEL_31:
    swift_unownedRetainStrong();
    v64 = v76;
    v65 = v77;
    v66 = v78;
    (*(v77 + 16))(v76, v24 + *(*v24 + 112), v78);

    v67 = v80;
    (*(AssociatedConformanceWitness + 152))(v66, AssociatedConformanceWitness);
    (*(v65 + 8))(v64, v66);
    memcpy(v84, v22, sizeof(v84));
    v68 = v82;
    v69 = swift_getAssociatedConformanceWitness();
    v70 = *(v69 + 32);
    sub_1002CB02C(v84, &v83);
    v70(v84, v68, v69);
    sub_1002CB088(v84);
    return (*(v81 + 8))(v67, v68);
  }

  v51 = *v72;
  swift_unownedRetainStrong();

  sub_10040CAE8();

  v52 = sub_100337438();

  if ((v52 & 0x8000000000000000) != 0)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (v52 >> 16)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  swift_unownedRetainStrong();
  sub_10040CAE8();

  v53 = sub_10033746C();

  if ((v53 & 0x8000000000000000) != 0)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (v53 >> 16)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  swift_unownedRetainStrong();
  sub_10040CAE8();

  v54 = sub_100337594();

  if ((v54 & 0x8000000000000000) != 0)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if (!(v54 >> 16))
  {
    v74 = *(v22 + 11);
    v73 = v22[64];
    swift_unownedRetainStrong();
    v55 = *(*v24 + 112);
    v72 = v50;
    v56 = v76;
    v57 = v77;
    v58 = v78;
    (*(v77 + 16))(v76, v24 + v55, v78);

    v71 = v52;
    v59 = *(AssociatedConformanceWitness + 152);
    v75 = v22;
    v60 = v53;
    v61 = v80;
    v59(v58, AssociatedConformanceWitness);
    (*(v57 + 8))(v56, v58);
    v85[0] = v51;
    v85[1] = v72;
    v86 = v71;
    v87 = v60;
    v88 = v54;
    v89 = 0u;
    memset(v90, 0, 26);
    v90[26] = v73;
    *v91 = v84[0];
    *&v91[3] = *(v84 + 3);
    v22 = v75;
    v92 = v74;
    v62 = v82;
    v63 = swift_getAssociatedConformanceWitness();
    (*(v63 + 40))(v85, v62, v63);
    sub_1002CB0DC(v85);
    (*(v81 + 8))(v61, v62);
    goto LABEL_31;
  }

LABEL_40:
  __break(1u);
  return result;
}

void sub_1002EFFB0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (*(Strong + qword_10059B898) == 1)
    {
      sub_1002F0018();
    }
  }
}

uint64_t sub_1002F0018()
{
  v46 = type metadata accessor for NANPeer.Service.AuthenticationStatus.State(0);
  v2 = *(*(v46 - 8) + 64);
  __chkstk_darwin();
  v4 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_10005DC58(&unk_100595C80, &qword_1004AFD40);
  v5 = *(*(v47 - 8) + 64);
  __chkstk_darwin();
  v43 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v44 = &v41 - v7;
  __chkstk_darwin();
  v9 = &v41 - v8;
  v10 = qword_10059B8A8;
  swift_beginAccess();
  v11 = *(v0 + v10);

  LOBYTE(v13) = 0;
  v14 = sub_1002FF908(v12);
  v48 = 0;

  v15 = *(v0 + v10);
  v49 = v0;
  *(v0 + v10) = v14;

  v16 = v14 + 64;
  v17 = 1 << *(v14 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & *(v14 + 64);
  v20 = (v17 + 63) >> 6;
  v51 = v14;

  v21 = 0;
  v50 = _swiftEmptyArrayStorage;
  v45 = v4;
  while (1)
  {
    v22 = v21;
    if (!v19)
    {
      break;
    }

LABEL_8:
    v23 = __clz(__rbit64(v19));
    v19 &= v19 - 1;
    v24 = v23 | (v21 << 6);
    v25 = *(v51 + 56);
    v26 = *(v51 + 48) - v24 + 8 * v24;
    v27 = *(v26 + 4);
    v28 = *(v26 + 6);
    v29 = v25 + *(*(type metadata accessor for NANPeer.Service.AuthenticationStatus(0) - 8) + 72) * v24;
    v15 = v47;
    LODWORD(v24) = *v26;
    sub_1003013DC(v29, &v9[*(v47 + 48)], type metadata accessor for NANPeer.Service.AuthenticationStatus);
    *v9 = v24;
    *(v9 + 2) = v27;
    v9[6] = v28;
    v14 = v44;
    v13 = &qword_1004AFD40;
    sub_100012400(v9, v44, &unk_100595C80, &qword_1004AFD40);
    v30 = *(v15 + 48);
    v4 = v45;
    sub_1003013DC(v14 + v30, v45, type metadata accessor for NANPeer.Service.AuthenticationStatus.State);
    sub_100301450(v14 + v30, type metadata accessor for NANPeer.Service.AuthenticationStatus);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v15 = *v4;
      v31 = v43;
      sub_10001CEA8(v9, v43, &unk_100595C80, &qword_1004AFD40);
      v1.i32[0] = *v31;
      LOBYTE(v14) = *(v31 + 4);
      v32 = *(v31 + 5);
      v41 = *(v31 + 6);
      v42 = v32;
      sub_100301450(v31 + *(v47 + 48), type metadata accessor for NANPeer.Service.AuthenticationStatus);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v50 = sub_1003A7694(0, v50[2] + 1, 1, v50);
      }

      v13 = v50[2];
      v33 = v50[3];
      if (v13 >= v33 >> 1)
      {
        v50 = sub_1003A7694((v33 > 1), v13 + 1, 1, v50);
      }

      v34 = vmovl_u8(v1).u64[0];
      v35 = v50;
      v50[2] = v13 + 1;
      v36 = &v35[2 * v13];
      *(v36 + 8) = vuzp1_s8(v34, v34).u32[0];
      *(v36 + 36) = v14;
      v37 = v41;
      *(v36 + 37) = v42;
      *(v36 + 38) = v37;
      v36[5] = v15;
    }

    else
    {
      sub_100016290(v9, &unk_100595C80, &qword_1004AFD40);
      sub_100301450(v4, type metadata accessor for NANPeer.Service.AuthenticationStatus.State);
    }
  }

  while (1)
  {
    v21 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      __break(1u);
      goto LABEL_22;
    }

    if (v21 >= v20)
    {
      break;
    }

    v19 = *(v16 + 8 * v21);
    ++v22;
    if (v19)
    {
      goto LABEL_8;
    }
  }

  v47 = v50[2];
  if (!v47)
  {
  }

  v38 = 0;
  v39 = (v50 + 4);
  while (v38 < v50[2])
  {
    v58 = *v39;
    v14 = v58;
    v15 = BYTE1(v58);
    v13 = BYTE2(v58);
    v4 = *(&v58 + 3);
    LODWORD(v51) = BYTE7(v58);
    v9 = *(&v58 + 1);
    sub_100012400(&v58, &v52, &unk_1005987C0, &unk_1004AFD48);
    sub_1002FDCA0(v9, v14 | (v15 << 8) | (v13 << 16) | (v4 << 24));
    if (v48)
    {
      goto LABEL_23;
    }

    ++v38;
    v52 = v14;
    v53 = v15;
    v54 = v13;
    v55 = v4;
    v56 = v51;
    v57 = v9;
    sub_100016290(&v52, &unk_1005987C0, &unk_1004AFD48);
    ++v39;
    if (v47 == v38)
    {
    }
  }

LABEL_22:
  __break(1u);
LABEL_23:

  v52 = v14;
  v53 = v15;
  v54 = v13;
  v55 = v4;
  v56 = v51;
  v57 = v9;
  result = sub_100016290(&v52, &unk_1005987C0, &unk_1004AFD48);
  __break(1u);
  return result;
}

id sub_1002F0570()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v2 = *v0;
  v3 = swift_isaMask;
  v4 = *(*(sub_10005DC58(&qword_10058C8D8, &qword_100482300) - 8) + 64);
  __chkstk_darwin();
  v55 = &v51[-v5];
  v6 = *((v3 & v2) + 0x58);
  v7 = *(v6 + 8);
  v8 = *((v3 & v2) + 0x50);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin();
  v13 = &v51[-v12];
  v14 = type metadata accessor for Logger();
  v59 = *(v14 - 8);
  v15 = *(v59 + 64);
  __chkstk_darwin();
  v56 = &v51[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v18 = &v51[-v17];
  v19 = qword_1005959A8;
  swift_beginAccess();
  is_valid_token = notify_is_valid_token(*&v1[v19]);
  v58 = v14;
  if (is_valid_token)
  {
    v21 = notify_cancel(*&v1[v19]);
    *&v1[v19] = -1;
    if (v21)
    {
      v22 = v21;
      v54 = v10;
      v23 = v59;
      (*(v59 + 16))(v18, &v1[qword_10059B8A0], v14);
      v24 = Logger.logObject.getter();
      v52 = static os_log_type_t.error.getter();
      v53 = v24;
      if (os_log_type_enabled(v24, v52))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v63 = v26;
        *v25 = 136315138;
        v27 = static WiFiError.notifyErrorMessage(from:)(v22);
        v29 = sub_100002320(v27, v28, &v63);

        *(v25 + 4) = v29;
        v30 = v53;
        _os_log_impl(&_mh_execute_header, v53, v52, "Failed to cancel monitoring statistic reset events with error: %s", v25, 0xCu);
        sub_100002A00(v26);

        (*(v59 + 8))(v18, v58);
      }

      else
      {

        (*(v23 + 8))(v18, v14);
      }

      v10 = v54;
    }
  }

  if (v1[qword_10059B898] == 1)
  {
    v31 = *&v1[qword_100595970];
    swift_unownedRetainStrong();
    v32 = *(*v31 + 96);
    swift_beginAccess();
    (*(v10 + 16))(v13, v31 + v32, AssociatedTypeWitness);

    v33 = qword_10059B890;
    swift_beginAccess();
    v34 = v1[v33];
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    (*(AssociatedConformanceWitness + 256))(v34, AssociatedTypeWitness, AssociatedConformanceWitness);
    (*(v10 + 8))(v13, AssociatedTypeWitness);
  }

  v36 = qword_10059B8C0;
  swift_beginAccess();
  v37 = *&v1[v36];
  _s17ResponderInstanceCMa();
  sub_10020CB70();
  v62 = NANBitmap.Channel.operatingClass.getter(v37);
  __chkstk_darwin();
  *&v51[-16] = v1;
  type metadata accessor for Dictionary.Keys();

  swift_getWitnessTable();
  Sequence.forEach(_:)();

  v38 = qword_100595988;
  swift_beginAccess();
  v61 = *&v1[v38];
  __chkstk_darwin();
  *&v51[-16] = v8;
  *&v51[-8] = v6;
  _s8InstanceC21NANPublishClientProxyVMa();
  type metadata accessor for Array();

  swift_getWitnessTable();
  Sequence.forEach(_:)();

  swift_beginAccess();
  Array.removeAll(keepingCapacity:)(0);
  swift_endAccess();
  v39 = v55;
  sub_100012400(&v1[qword_1005959A0], v55, &qword_10058C8D8, &qword_100482300);
  v40 = type metadata accessor for LongTermPairingKeys(0);
  if ((*(*(v40 - 8) + 48))(v39, 1, v40) == 1)
  {
    sub_100016290(v39, &qword_10058C8D8, &qword_100482300);
  }

  else
  {
    LongTermPairingKeys.updatedPairedDevicesHandler.setter(0, 0);
    sub_100301450(v39, type metadata accessor for LongTermPairingKeys);
  }

  v41 = v58;
  v42 = v59;
  v43 = v56;
  (*(v59 + 16))(v56, &v1[qword_10059B8A0], v58);
  v44 = v1;
  v45 = Logger.logObject.getter();
  v46 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    *v47 = 138412290;
    *(v47 + 4) = v44;
    *v48 = v1;
    v49 = v44;
    _os_log_impl(&_mh_execute_header, v45, v46, "Destroyed %@", v47, 0xCu);
    sub_100016290(v48, &qword_10058B780, &qword_100480AC0);
  }

  (*(v42 + 8))(v43, v41);
  v60.receiver = v44;
  v60.super_class = ObjectType;
  return objc_msgSendSuper2(&v60, "dealloc");
}

uint64_t sub_1002F0E18(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  v4 = *(a1 + 3);
  result = sub_1002EBB84();
  if (result)
  {
    v6 = result;
    sub_1002CAF78();
    v7 = WiFiAwarePublisherDataSessionHandle.init(_:)(v1 | (v2 << 8) | (v3 << 16) | (v4 << 24));
    [v6 publishDataTerminatedForHandle:v7 reason:-1];

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1002F0EE0(uint64_t a1)
{
  v2 = *(a1 + qword_100595970);
  swift_unownedRelease();
  sub_100301450(a1 + qword_10059B890, type metadata accessor for NANPublish.Configuration);
  v3 = qword_100595978;
  v4 = type metadata accessor for DispatchTime();
  v5 = *(*(v4 - 8) + 8);
  v5(a1 + v3, v4);
  v6 = *(a1 + qword_100595980);

  v7 = *(a1 + qword_100595988);

  v8 = qword_10059B8A0;
  v9 = type metadata accessor for Logger();
  (*(*(v9 - 8) + 8))(a1 + v8, v9);
  v10 = *(a1 + qword_100595998);

  sub_100016290(a1 + qword_1005959A0, &qword_10058C8D8, &qword_100482300);
  v11 = *(a1 + qword_10059B8A8);

  v12 = *(a1 + qword_10059B8B0);

  v13 = *(a1 + qword_1005959B0);

  v14 = *(a1 + qword_10059B8B8 + 16);
  v15 = *(a1 + qword_10059B8B8 + 24);
  v16 = *(a1 + qword_10059B8B8 + 32);
  v17 = *(a1 + qword_10059B8B8 + 40);
  v18 = *(a1 + qword_10059B8B8 + 48);
  sub_100083690(*(a1 + qword_10059B8B8), *(a1 + qword_10059B8B8 + 8));
  v19 = *(a1 + qword_10059B8C0);

  v20 = *(a1 + qword_10059B8C8 + 8);

  memcpy(v22, (a1 + qword_10059B8D0), sizeof(v22));
  sub_1002CB088(v22);
  return (v5)(a1 + qword_1005959E8, v4);
}

void sub_1002F10E0()
{
  v1 = v0;
  v2 = swift_isaMask & *v0;
  v124 = *(v2 + 0x58);
  v3 = *(v124 + 8);
  v4 = *(v2 + 80);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v5 = type metadata accessor for Preferences();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin();
  v9 = &v114 - v8;
  v10 = type metadata accessor for NANPublish.Configuration();
  v11 = *(*(v10 - 1) + 64);
  __chkstk_darwin();
  v13 = &v114 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = v4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = *(AssociatedTypeWitness - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin();
  v18 = &v114 - v17;
  v19 = *(*(type metadata accessor for OWEKeys() - 8) + 64);
  __chkstk_darwin();
  v125 = &v114 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(*(sub_10005DC58(&qword_10058C8D8, &qword_100482300) - 8) + 64);
  __chkstk_darwin();
  if (*(v1 + qword_10059B898))
  {
    return;
  }

  v122 = &v114 - v22;
  v118 = v18;
  v119 = v15;
  v120 = v13;
  v121 = AssociatedTypeWitness;
  v116 = v9;
  v114 = v6;
  v115 = v5;
  v117 = qword_10059B898;
  v23 = *(v1 + qword_100595970);
  swift_unownedRetainStrong();
  v24 = WiFiInterface.macAddress.getter();
  v129 = v23;

  v25 = v1 + qword_10059B890;
  swift_beginAccess();
  *(v25 + 78) = v24;
  *(v25 + 80) = BYTE2(v24);
  v26 = v25;
  *(v25 + 81) = BYTE3(v24);
  *(v25 + 82) = BYTE4(v24);
  *(v25 + 83) = BYTE5(v24);
  v126 = v1;
  v27 = *sub_1002EEA34();
  v28 = (*(v27 + 256))();

  *(v25 + 84) = v28;
  *(v25 + 86) = BYTE2(v28);
  *(v25 + 87) = BYTE3(v28);
  *(v25 + 88) = BYTE4(v28);
  *(v25 + 89) = BYTE5(v28);
  v29 = *(v25 + v10[21] + 16);
  v30 = *(v29 + 2);
  v132 = v25;
  v130 = v30;
  if (!v30)
  {
LABEL_15:
    v54 = v122;
    sub_100012400(&v126[qword_1005959A0], v122, &qword_10058C8D8, &qword_100482300);
    v55 = type metadata accessor for LongTermPairingKeys(0);
    if ((*(*(v55 - 8) + 48))(v54, 1, v55) == 1)
    {
      sub_100016290(v54, &qword_10058C8D8, &qword_100482300);
      v56 = 0;
      v57 = 0xF000000000000000;
      v58 = v129;
    }

    else
    {
      v59 = v125;
      sub_1003013DC(v26 + v10[23], v125, type metadata accessor for OWEKeys);
      v58 = v129;
      swift_unownedRetainStrong();
      v60 = WiFiInterface.macAddress.getter();

      v56 = LongTermPairingKeys.authenticationToken(using:on:)(v59, v60 & 0xFFFFFFFFFFFFLL);
      v57 = v61;
      sub_100301450(v59, type metadata accessor for OWEKeys);
      sub_100301450(v54, type metadata accessor for LongTermPairingKeys);
    }

    swift_beginAccess();
    v134 = *(v26 + 24);

    NANGenericServiceProtocol.publisherAuthenticationToken.setter(v56, v57);
    *(v26 + 24) = v134;
    ++*(v26 + 32);
    swift_endAccess();

    v62 = v126;
    *(v26 + 77) = sub_1002F2178();
    sub_1002F22E8();
    swift_unownedRetainStrong();
    v63 = v127;
    sub_10040CBA8();
    if (!v63)
    {

      swift_unownedRetainStrong();
      v64 = *(*v58 + 96);
      swift_beginAccess();
      v65 = v119;
      v66 = v58 + v64;
      v67 = v118;
      v68 = v121;
      (*(v119 + 16))(v118, v66, v121);

      v69 = v120;
      sub_1003013DC(v26, v120, type metadata accessor for NANPublish.Configuration);
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      (*(AssociatedConformanceWitness + 208))(v69, v68, AssociatedConformanceWitness);
      sub_100301450(v69, type metadata accessor for NANPublish.Configuration);
      (*(v65 + 8))(v67, v68);
      goto LABEL_32;
    }

    v134 = v63;
    swift_errorRetain();
    sub_10005DC58(&qword_10058C830, &qword_1004821F0);
    if (swift_dynamicCast())
    {
      if (v136 == 1)
      {
        if (v135 == 7)
        {

          swift_unownedRetainStrong();
          v71 = sub_100019F94();

          if (v71)
          {

LABEL_29:
            v73 = v62;
            v74 = Logger.logObject.getter();
            v75 = static os_log_type_t.error.getter();

            if (os_log_type_enabled(v74, v75))
            {
              v76 = swift_slowAlloc();
              v77 = swift_slowAlloc();
              *v76 = 138412290;
              *(v76 + 4) = v73;
              *v77 = v62;
              v78 = v73;
              _os_log_impl(&_mh_execute_header, v74, v75, "%@ faking start until NAN becomes available", v76, 0xCu);
              sub_100016290(v77, &qword_10058B780, &qword_100480AC0);
            }

LABEL_32:
            v79 = v132;
            v80 = &v132[v10[27]];
            if (v80[6] & 1) != 0 || (v132[v10[29]])
            {
              v81 = v117;
LABEL_35:
              v62[v81] = 1;
              v82 = v62;
              v83 = Logger.logObject.getter();
              v84 = static os_log_type_t.default.getter();

              if (os_log_type_enabled(v83, v84))
              {
                v85 = swift_slowAlloc();
                v86 = swift_slowAlloc();
                *v85 = 138412290;
                *(v85 + 4) = v82;
                *v86 = v62;
                v87 = v82;
                _os_log_impl(&_mh_execute_header, v83, v84, "%@ was started", v85, 0xCu);
                sub_100016290(v86, &qword_10058B780, &qword_100480AC0);
              }

              v88 = v132;
              v89 = v132[v10[27] + 6];
              v90 = sub_1002EBB84();
              if (v90)
              {
                if (v89)
                {
                  v91 = 0;
                }

                else
                {
                  v91 = 8;
                }

                [v90 publishStartedWithInstanceID:*v88 maximumNANDataPath:v91];
                swift_unknownObjectRelease();
              }

              sub_1002EF33C();
              sub_1002EEB78(*&v88[v10[30]]);
              return;
            }

            v128 = v10;
            v92 = *(v80 + 2);
            v93 = *v80;
            v94 = type metadata accessor for MulticastSenderManager();
            v95 = swift_unownedRetainStrong();
            v96 = *v79;
            v133 = v94;
            v97 = sub_10031CE9C(v95, v96);

            v98 = qword_10059B8B0;
            v99 = *&v62[qword_10059B8B0];
            *&v62[qword_10059B8B0] = v97;

            if (*&v62[v98])
            {
              v100 = *&v62[v98];

              v101 = sub_1002EEA34();
              v102 = (*(*v101 + 256))(v101);

              sub_1003182E8((v93 | (v92 << 32)) & 0xFFFFFFFFFFFFLL, v102 & 0xFFFFFFFFFFFFLL, *&v79[v128[32]] | (*&v79[v128[32] + 4] << 32), *&v79[v128[33]] | (v79[v128[33] + 2] << 16));

              v105 = v116;
              v106 = *&v62[v98];
              v104 = v128;
              v79 = v132;
              if (v106)
              {
                *(v106 + qword_10059B998) = v132[v128[29]];
              }
            }

            else
            {
              v104 = v128;
              v105 = v116;
            }

            if (v79[v104[35] + 7])
            {
              v107 = *&v62[v98];
              v81 = v117;
              if (v107)
              {
                v10 = v128;
                goto LABEL_55;
              }
            }

            else
            {
              swift_unownedRetainStrong();
              WiFiInterface.preferences.getter();

              v108 = v115;
              v109 = Preferences.disableMulticastRateAdapter.getter(v115);
              (*(v114 + 8))(v105, v108);
              v107 = *&v62[v98];
              v81 = v117;
              if (v107)
              {
                v10 = v128;
                if (v109)
                {
                  v137 = 0;
                  v135 = 0u;
                  v136 = 0u;

LABEL_56:
                  v113 = qword_10059B9A0;
                  swift_beginAccess();
                  sub_10030136C(&v135, v107 + v113);
                  swift_endAccess();

                  goto LABEL_35;
                }

LABEL_55:
                swift_getWitnessTable();
                v110 = type metadata accessor for MulticastRateAdapter();
                v111 = *(v107 + qword_10059B9A8);
                swift_retain_n();

                v112 = sub_10040A2E4(v107, v111);
                *(&v136 + 1) = v110;
                v137 = &off_10057A6A0;
                *&v135 = v112;
                goto LABEL_56;
              }
            }

            v10 = v128;
            goto LABEL_35;
          }

          v72 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v72)
          {
            goto LABEL_29;
          }

          sub_10000B02C();
          swift_allocError();
          *v103 = xmmword_10047CE50;
          *(v103 + 16) = 1;
          swift_willThrow();
        }
      }

      else
      {
        sub_1000B2594(v135, *(&v135 + 1), v136);
      }
    }

    return;
  }

  v31 = 0;
  v32 = 0;
  v133 = v26 + 16;
  v128 = v10;
  while (v32 < *(v29 + 2))
  {
    v35 = &v29[v31];
    v36 = *&v29[v31 + 80];
    if (v36)
    {
      v131 = *(v35 + 9);
      v38 = *(v26 + 8);
      v37 = *(v26 + 16);
      v39 = v10;
      v40 = v35[32];
      swift_unownedRetainStrong();

      v41 = WiFiInterface.macAddress.getter();

      v42 = NANPassphrase.pmk(for:serviceName:publisherAddress:)(v40, v38, v37, v41 & 0xFFFFFFFFFFFFLL, v131, v36);
      v44 = v43;

      swift_beginAccess();
      v45 = v39[21];
      v46 = v133;
      v29 = *(v133 + v45);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v46 + v45) = v29;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v29 = sub_10046EC20(v29);
        *(v133 + v45) = v29;
      }

      v26 = v132;
      if (v32 >= *(v29 + 2))
      {
        goto LABEL_59;
      }

      v48 = &v29[v31];
      v49 = *&v29[v31 + 40];
      v50 = *&v29[v31 + 48];
      *(v48 + 5) = v42;
      *(v48 + 6) = v44;
      v51 = v133;
      *(v133 + v45) = v29;
      swift_endAccess();
      sub_1000124C8(v49, v50);
      swift_beginAccess();
      v10 = v128;
      v52 = v128[21];
      v53 = swift_isUniquelyReferenced_nonNull_native();
      *(v51 + v52) = v29;
      if ((v53 & 1) == 0)
      {
        v29 = sub_10046EC20(v29);
        *(v133 + v52) = v29;
      }

      if (v32 >= *(v29 + 2))
      {
        goto LABEL_60;
      }

      v33 = &v29[v31];
      v34 = *&v29[v31 + 80];
      *(v33 + 9) = 0;
      *(v33 + 10) = 0;
      *(v133 + v52) = v29;
      swift_endAccess();
    }

    ++v32;
    v31 += 56;
    if (v130 == v32)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
}

uint64_t sub_1002F2178()
{
  v1 = v0 + qword_10059B890;
  swift_beginAccess();
  if (*(v1 + *(type metadata accessor for NANPublish.Configuration() + 96)) != 1)
  {
    return 2;
  }

  v2 = *(v1 + 24);

  v3 = NANGenericServiceProtocol.AttributeFilter.all.unsafeMutableAddressor();
  v4 = NANGenericServiceProtocol.packetData(for:)(*v3, v2);
  v6 = v5;

  if (v6 >> 60 == 15)
  {
    return 2;
  }

  v8 = v6 >> 62;
  if ((v6 >> 62) <= 1)
  {
    if (!v8)
    {
      if (BYTE6(v6) > 0x63uLL)
      {
        goto LABEL_14;
      }

LABEL_11:
      sub_100017554(v4, v6);
      return 2;
    }

    if (!__OFSUB__(HIDWORD(v4), v4))
    {
      if (HIDWORD(v4) - v4 <= 99)
      {
        goto LABEL_11;
      }

      goto LABEL_14;
    }

LABEL_17:
    __break(1u);
    return result;
  }

  if (v8 != 2)
  {
    goto LABEL_11;
  }

  v10 = *(v4 + 16);
  v9 = *(v4 + 24);
  v11 = __OFSUB__(v9, v10);
  v12 = v9 - v10;
  if (v11)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (v12 <= 99)
  {
    goto LABEL_11;
  }

LABEL_14:
  v13 = *(v1 + 24);

  v14 = NANGenericServiceProtocol.AttributeFilter.standardizedAttributes.unsafeMutableAddressor();
  v15 = NANGenericServiceProtocol.packetData(for:)(*v14, v13);
  v17 = v16;
  sub_100017554(v4, v6);

  if (v17 >> 60 == 15)
  {
    return 2;
  }

  sub_100017554(v15, v17);
  return 0;
}

uint64_t sub_1002F22E8()
{
  v1 = v0;
  v2 = *v0;
  v3 = swift_isaMask;
  v4 = type metadata accessor for DispatchTimeInterval();
  v39 = *(v4 - 8);
  v40 = v4;
  v5 = *(v39 + 64);
  __chkstk_darwin();
  v42 = (&v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v41 = &v38 - v7;
  __chkstk_darwin();
  v9 = &v38 - v8;
  v38 = *((v3 & v2) + 0x58);
  v10 = *(v38 + 8);
  v11 = *((v3 & v2) + 0x50);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v12 = type metadata accessor for Preferences();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin();
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v18 = &v38 - v17;
  v19 = *(v1 + qword_100595970);
  swift_unownedRetainStrong();
  WiFiInterface.preferences.getter();

  LOBYTE(v10) = Preferences.unsolicitedPublishOnUpdate.getter(v12);
  v20 = *(v13 + 8);
  result = v20(v18, v12);
  if (v10)
  {
    v22 = v1 + qword_10059B890;
    swift_beginAccess();
    result = type metadata accessor for NANPublish.Configuration();
    if (v22[*(result + 116)] == 1)
    {
      v22[72] = 0;
      v23 = *(v1 + qword_100595998);
      *(v1 + qword_100595998) = 0;

      swift_unownedRetainStrong();
      WiFiInterface.preferences.getter();

      v24 = Preferences.unsolicitedPublishSeconds.getter(v12);
      v20(v16, v12);
      *v9 = v24;
      v25 = v40;
      v26 = *(v39 + 104);
      v26(v9, enum case for DispatchTimeInterval.seconds(_:), v40);
      v27 = *OS_dispatch_queue.nan.unsafeMutableAddressor();
      v28 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v29 = swift_allocObject();
      v30 = v38;
      v29[2] = v11;
      v29[3] = v30;
      v29[4] = v28;
      v31 = v41;
      v26(v41, enum case for DispatchTimeInterval.never(_:), v25);
      v32 = v42;
      *v42 = 100;
      v26(v32, enum case for DispatchTimeInterval.milliseconds(_:), v25);
      v33 = type metadata accessor for P2PTimer();
      v34 = *(v33 + 48);
      v35 = *(v33 + 52);
      swift_allocObject();
      v36 = P2PTimer.init(deadlineAfter:on:repeating:leeway:_:)(v9, v27, v31, v32, sub_100300280, v29);
      v37 = *(v1 + qword_100595998);
      *(v1 + qword_100595998) = v36;
    }
  }

  return result;
}

void sub_1002F276C()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin();
  v4 = &v15[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    (*(v1 + 16))(v4, Strong + qword_10059B8A0, v0);

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138412290;
      swift_beginAccess();
      v11 = swift_unknownObjectWeakLoadStrong();
      *(v9 + 4) = v11;
      *v10 = v11;
      _os_log_impl(&_mh_execute_header, v7, v8, "%@ timed out. Stopping.", v9, 0xCu);
      sub_100016290(v10, &qword_10058B780, &qword_100480AC0);
    }

    (*(v1 + 8))(v4, v0);
  }

  swift_beginAccess();
  v12 = swift_unknownObjectWeakLoadStrong();
  if (v12)
  {
    v12[qword_1005959B8] = 1;
  }

  swift_beginAccess();
  v13 = swift_unknownObjectWeakLoadStrong();
  if (v13)
  {
    v14 = v13;
    sub_1002F29CC();
  }
}

uint64_t sub_1002F29CC()
{
  v1 = v0;
  v2 = swift_isaMask & *v0;
  v56 = *(v2 + 0x58);
  v3 = *(v56 + 8);
  v55 = *(v2 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v7 = &v49 - v6;
  v8 = type metadata accessor for DispatchTimeInterval();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin();
  v12 = (&v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  result = __chkstk_darwin();
  v16 = qword_10059B898;
  if (*(v1 + qword_10059B898) == 1)
  {
    v50 = &v49 - v14;
    v51 = v15;
    v52 = v7;
    v53 = v4;
    v17 = qword_10059B8A0;
    v18 = v1;
    v49 = v17;
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = v18;
      v23 = swift_slowAlloc();
      *v21 = 138412290;
      *(v21 + 4) = v22;
      *v23 = v1;
      v24 = v22;
      _os_log_impl(&_mh_execute_header, v19, v20, "%@ will attempt to stop", v21, 0xCu);
      sub_100016290(v23, &qword_10058B780, &qword_100480AC0);
      v18 = v22;
    }

    *(v1 + v16) = 0;
    v25 = NANConstants.serviceTerminateEventTimeout.unsafeMutableAddressor();
    v26 = v50;
    (*(v9 + 16))(v50, v25, v8);
    v27 = *OS_dispatch_queue.nan.unsafeMutableAddressor();
    v28 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v29 = swift_allocObject();
    v30 = v56;
    v29[2] = v55;
    v29[3] = v30;
    v29[4] = v28;
    v31 = *(v9 + 104);
    v32 = v51;
    v31(v51, enum case for DispatchTimeInterval.never(_:), v8);
    *v12 = 100;
    v31(v12, enum case for DispatchTimeInterval.milliseconds(_:), v8);
    v33 = type metadata accessor for P2PTimer();
    v34 = *(v33 + 48);
    v35 = *(v33 + 52);
    swift_allocObject();
    v36 = P2PTimer.init(deadlineAfter:on:repeating:leeway:_:)(v26, v27, v32, v12, sub_100300180, v29);
    v37 = *&v18[qword_100595980];
    *&v18[qword_100595980] = v36;

    v38 = qword_10059B8B0;
    if (*&v18[qword_10059B8B0])
    {
      v39 = *&v18[qword_10059B8B0];

      sub_10031A4D0();

      v40 = *&v18[v38];
    }

    v42 = v52;
    v41 = v53;
    *&v18[v38] = 0;

    v43 = *&v18[qword_100595970];
    swift_unownedRetainStrong();
    sub_10040CBA8();

    swift_unownedRetainStrong();
    v44 = *(*v43 + 96);
    swift_beginAccess();
    v45 = AssociatedTypeWitness;
    (*(v41 + 16))(v42, v43 + v44, AssociatedTypeWitness);

    v46 = qword_10059B890;
    swift_beginAccess();
    v47 = v18[v46];
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    (*(AssociatedConformanceWitness + 256))(v47, v45, AssociatedConformanceWitness);
    return (*(v41 + 8))(v42, AssociatedTypeWitness);
  }

  return result;
}

uint64_t sub_1002F30F0(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v3 = *v1;
  v4 = swift_isaMask;
  v499 = type metadata accessor for NANPublish.Configuration();
  v5 = *(*(v499 - 1) + 64);
  __chkstk_darwin();
  v481 = &v447 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v473 = &v447 - v7;
  v501 = *((v4 & v3) + 0x58);
  v502 = v1;
  v8 = *(v501 + 8);
  v9 = *((v4 & v3) + 0x50);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v494 = *(AssociatedTypeWitness - 8);
  v10 = *(v494 + 64);
  __chkstk_darwin();
  v487 = &v447 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v483 = &v447 - v12;
  v13 = type metadata accessor for DispatchTime();
  v497 = *(v13 - 8);
  v498 = v13;
  v14 = *(v497 + 64);
  __chkstk_darwin();
  v490 = &v447 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v496 = &v447 - v16;
  v17 = type metadata accessor for DispatchTimeInterval();
  v491 = *(v17 - 8);
  v492 = v17;
  v18 = *(v491 + 64);
  __chkstk_darwin();
  v489 = &v447 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v488 = &v447 - v20;
  v21 = *(*(type metadata accessor for NANDriverCapabilities() - 8) + 64);
  __chkstk_darwin();
  v463 = &v447 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness();
  v500 = v9;
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v482 = type metadata accessor for Preferences();
  v485 = *(v482 - 8);
  v23 = *(v485 + 64);
  __chkstk_darwin();
  v467 = &v447 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v464 = &v447 - v25;
  __chkstk_darwin();
  v480 = &v447 - v26;
  v27 = *(*(sub_10005DC58(&qword_10058F4D0, &qword_100491AB0) - 8) + 64);
  __chkstk_darwin();
  v475 = &v447 - v28;
  v29 = type metadata accessor for UUID();
  v30 = *(v29 - 8);
  v477 = v29;
  v478 = v30;
  v31 = *(v30 + 64);
  __chkstk_darwin();
  v466 = &v447 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v468 = &v447 - v33;
  __chkstk_darwin();
  v472 = &v447 - v34;
  v479 = type metadata accessor for NANPeer(0);
  v35 = *(*(v479 - 8) + 64);
  __chkstk_darwin();
  v474 = &v447 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v471 = &v447 - v37;
  __chkstk_darwin();
  v470 = (&v447 - v38);
  __chkstk_darwin();
  v465 = &v447 - v39;
  __chkstk_darwin();
  v469 = &v447 - v40;
  __chkstk_darwin();
  v495 = &v447 - v41;
  v42 = *(*(sub_10005DC58(&unk_100595C00, &qword_10048F790) - 8) + 64);
  __chkstk_darwin();
  v476 = (&v447 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v486 = (&v447 - v44);
  __chkstk_darwin();
  v46 = (&v447 - v45);
  v47 = *(*(type metadata accessor for DriverEvent(0) - 8) + 64);
  __chkstk_darwin();
  __chkstk_darwin();
  v49 = &v447 - v48;
  __chkstk_darwin();
  v51 = &v447 - v50;
  __chkstk_darwin();
  v53 = &v447 - v52;
  __chkstk_darwin();
  v55 = &v447 - v54;
  v56 = a1;
  sub_1003013DC(a1, &v447 - v54, type metadata accessor for DriverEvent);
  v503 = v55;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 6:
      goto LABEL_13;
    case 4:
      sub_1003013DC(v503, v51, type metadata accessor for DriverEvent);
      v77 = *v51;
      if (v77 != 2)
      {
        if (v77 == 1)
        {
          v79 = qword_10059B898;
          v80 = v502;
          if (v502[qword_10059B898] != 1)
          {
            return sub_100301450(v503, type metadata accessor for DriverEvent);
          }

          v81 = *&v502[qword_100595970];
          swift_unownedRetainStrong();
          sub_10040CBA8();
          v499 = v79;

          swift_unownedRetainStrong();
          v159 = *(*v81 + 96);
          swift_beginAccess();
          v160 = v81 + v159;
          v161 = AssociatedTypeWitness;
          (*(v494 + 16))(v487, v160, AssociatedTypeWitness);

          v162 = qword_10059B890;
          swift_beginAccess();
          v163 = v481;
          sub_1003013DC(&v80[v162], v481, type metadata accessor for NANPublish.Configuration);
          AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
          (*(AssociatedConformanceWitness + 208))(v163, v161, AssociatedConformanceWitness);
          sub_100301450(v163, type metadata accessor for NANPublish.Configuration);
          (*(v494 + 8))(v487, v161);
          if (!*&v80[qword_10059B8B0])
          {
            return sub_100301450(v503, type metadata accessor for DriverEvent);
          }

LABEL_14:

          sub_10031A918(v56);
LABEL_99:

          return sub_100301450(v503, type metadata accessor for DriverEvent);
        }

        if (*v51)
        {
          break;
        }
      }

LABEL_13:
      if (!*&v502[qword_10059B8B0])
      {
        return sub_100301450(v503, type metadata accessor for DriverEvent);
      }

      goto LABEL_14;
    case 0:
      sub_1003013DC(v503, v53, type metadata accessor for DriverEvent);
      memcpy(v516, v53, 0x16AuLL);
      memcpy(v517, v53, 0x16AuLL);
      v58 = sub_100185198(v517);
      if (v58 <= 11)
      {
        if (v58 == 3)
        {
          NANBitmap.Channel.operatingClass.getter(v517);
          goto LABEL_35;
        }

        if (v58 == 5)
        {
          v59 = NANBitmap.Channel.operatingClass.getter(v517);
          v60 = *v59;
          v61 = v59[2];
          v62 = v59[3];
          v63 = v59[4];
          v64 = v59[5];
          v65 = v59[6];
          v66 = v59[7];
          v67 = v502;
          v68 = v502[qword_10059B898];
          v69 = *(v59 + 2) | (v59[12] << 32) | (v59[13] << 40);
          v497 = v63;
          v498 = v64;
          if (v68 == 1)
          {
            v490 = v59[1];
            ObjectType = *(v59 + 2);
            AssociatedTypeWitness = v62;
            v70 = (v63 << 16) | (v62 << 8) | (v64 << 24) | (v65 << 32) | (v66 << 40);
            v71 = WiFiAddress.description.getter(v70 | v61);
            v73 = v72;
            v496 = v70;
            v74 = static NANClusterChangeEvent.__derived_struct_equals(_:_:)(v70 | v61, v69);
            v491 = v60;
            v494 = v69;
            v487 = v65;
            v488 = v66;
            if (v74)
            {
              v75 = 0;
              v76 = 0xE000000000000000;
            }

            else
            {
              v515[0] = 0x203A49444E5BLL;
              v515[1] = 0xE600000000000000;
              v131._countAndFlagsBits = WiFiAddress.description.getter(v69);
              String.append(_:)(v131);

              v132._countAndFlagsBits = 93;
              v132._object = 0xE100000000000000;
              String.append(_:)(v132);
              v75 = v515[0];
              v76 = v515[1];
            }

            v515[0] = v71;
            v515[1] = v73;

            v133._countAndFlagsBits = v75;
            v133._object = v76;
            String.append(_:)(v133);

            v134 = v515[0];
            v135 = v515[1];
            v136 = qword_10059B8A0;

            v137 = v502;
            v138 = Logger.logObject.getter();
            v139 = static os_log_type_t.default.getter();

            v140 = os_log_type_enabled(v138, v139);
            v492 = v135;
            if (v140)
            {
              v141 = swift_slowAlloc();
              v142 = swift_slowAlloc();
              v515[0] = v142;
              *v141 = 136315138;
              *(v141 + 4) = sub_100002320(v134, v135, v515);
              _os_log_impl(&_mh_execute_header, v138, v139, "Received a new datapath request from peer: %s", v141, 0xCu);
              sub_100002A00(v142);

              v137 = v502;
            }

            memcpy(v515, v516, 0x16AuLL);
            v143 = *(NANBitmap.Channel.operatingClass.getter(v515) + 16);

            v144 = ObjectType;
            Array<A>.retrieve(attribute:)(41, ObjectType, v46);
            sub_1001854F8(v516);
            v145 = type metadata accessor for NANAttribute(0);
            v146 = *(v145 - 8);
            v147 = *(v146 + 48);
            v148 = v146 + 48;
            if (v147(v46, 1, v145) == 1)
            {
              sub_100016290(v46, &unk_100595C00, &qword_10048F790);
            }

            else
            {
              if (swift_getEnumCaseMultiPayload() == 36)
              {
                v473 = v148;
                v458 = v147;
                v459 = v145;
                v449 = v134;
                v489 = v136;
                v149 = *(v46 + 1);
                v514[0] = *v46;
                v150 = *(v46 + 3);
                v514[2] = *(v46 + 2);
                v514[3] = v150;
                v514[1] = v149;
                v457 = LOBYTE(v514[0]);
                v151 = BYTE3(v514[0]);
                v152 = BYTE4(v514[0]);
                v153 = BYTE5(v514[0]);
                v154 = BYTE6(v514[0]);
                v155 = BYTE7(v514[0]);
                v156 = BYTE8(v514[0]);
                v157 = BYTE10(v514[0]);
                v486 = *(&v514[2] + 1);
                v481 = *(&v150 + 1);
                v483 = v150;
                sub_100184290(*(&v514[2] + 1), v150, *(&v150 + 1));
                v158 = *NANAttribute.DatapathExtension.Control.security.unsafeMutableAddressor();
                sub_10027A06C(v514);
                goto LABEL_50;
              }

              sub_100301450(v46, type metadata accessor for NANAttribute);
            }

            memcpy(v514, v516, 0x16AuLL);
            v165 = *(NANBitmap.Channel.operatingClass.getter(v514) + 16);

            v166 = v486;
            Array<A>.retrieve(attribute:)(16, v144, v486);
            sub_1001854F8(v516);
            if (v147(v166, 1, v145) == 1)
            {

              sub_100016290(v166, &unk_100595C00, &qword_10048F790);
LABEL_63:
              v213 = *&v137[qword_100595970];
              swift_unownedRetainStrong();
              sub_10040CAE8();

              sub_10033975C(v491, v494, v496 | v61, 0xD00000000000002FLL, 0x80000001004BEF00);
              sub_1001854F8(v516);
              goto LABEL_99;
            }

            if (swift_getEnumCaseMultiPayload() != 16)
            {

              sub_100301450(v166, type metadata accessor for NANAttribute);
              goto LABEL_63;
            }

            v473 = v148;
            v458 = v147;
            v459 = v145;
            v449 = v134;
            v489 = v136;
            v167 = v166[1];
            v519 = *v166;
            v520 = v167;
            v521 = v166[2];
            v457 = v519;
            v486 = *(&v167 + 1);
            v481 = *(&v521 + 1);
            v483 = v521;
            v151 = BYTE3(v519);
            v152 = BYTE4(v519);
            v153 = BYTE5(v519);
            v154 = BYTE6(v519);
            v155 = BYTE7(v519);
            v156 = BYTE8(v519);
            v157 = BYTE10(v519);
            sub_1002862DC(&v519, v518);
            v158 = *NANAttribute.Datapath.Control.security.unsafeMutableAddressor();
            sub_10027A15C(&v519);
LABEL_50:
            v448 = (v158 & ~v157) == 0;
            v455 = v152;
            v452 = v155;
            v453 = v154;
            v460 = v151;
            v461 = (v155 << 32) | (v156 << 40) | (v154 << 24) | (v153 << 16) | (v152 << 8);
            v168 = static WiFiAddress.!= infix(_:_:)(v461 | v151, v494);
            v169 = v495;
            v170 = v156;
            v171 = v61;
            v456 = v151;
            v454 = v153;
            if (v168)
            {
              sub_100185558(v516, v514);
              v172 = v502;
              v173 = v502;
              v174 = Logger.logObject.getter();
              v175 = static os_log_type_t.error.getter();

              sub_1001854F8(v516);
              if (os_log_type_enabled(v174, v175))
              {
                v176 = swift_slowAlloc();
                v177 = swift_slowAlloc();
                *&v514[0] = swift_slowAlloc();
                *v176 = 138412802;
                *(v176 + 4) = v173;
                *v177 = v172;
                *(v176 + 12) = 2080;
                v178 = v173;
                v179 = WiFiAddress.description.getter(v494);
                v181 = v61;
                v182 = v170;
                v183 = sub_100002320(v179, v180, v514);

                *(v176 + 14) = v183;
                *(v176 + 22) = 2080;
                v184 = WiFiAddress.description.getter(v461 | v460);
                v186 = sub_100002320(v184, v185, v514);

                *(v176 + 24) = v186;
                v170 = v182;
                _os_log_impl(&_mh_execute_header, v174, v175, "%@ bad initiator data address in the event %s compared to attributes %s", v176, 0x20u);
                sub_100016290(v177, &qword_10058B780, &qword_100480AC0);
                v171 = v181;

                swift_arrayDestroy();

                v169 = v495;
              }
            }

            v451 = v170;
            v187 = v502;
            v188 = *&v502[qword_100595970];
            swift_unownedRetainStrong();
            sub_10040CD68(v496 | v171, v169);

            v189 = &v187[qword_10059B890];
            swift_beginAccess();
            v190 = v189[v499[21] + 24];
            if (v190 > 1)
            {
              LODWORD(v478) = 0;
              v475 = 0;
              v211 = 0xE000000000000000;
              v212 = v485;
              goto LABEL_121;
            }

            v450 = v189;
            v191 = v171;
            v192 = v475;
            sub_100012400(v169 + *(v479 + 88), v475, &qword_10058F4D0, &qword_100491AB0);
            v193 = v477;
            v194 = v478;
            if ((*(v478 + 48))(v192, 1, v477) == 1)
            {
              sub_100016290(v192, &qword_10058F4D0, &qword_100491AB0);
              v195 = v470;
              sub_1003013DC(v169, v470, type metadata accessor for NANPeer);
              v196 = v502;
              v197 = Logger.logObject.getter();
              v198 = static os_log_type_t.error.getter();
              if (os_log_type_enabled(v197, v198))
              {
                v469 = v188;
                v199 = v450;
                v462 = v191;
                v200 = swift_slowAlloc();
                *&v514[0] = swift_slowAlloc();
                *v200 = 136315394;
                v201 = WiFiAddress.description.getter(*(&v195->isa + *(v479 + 20)) | (*(&v195->isa + *(v479 + 20) + 2) << 16));
                v202 = v195;
                v203 = v201;
                v205 = v204;
                sub_100301450(v202, type metadata accessor for NANPeer);
                v206 = sub_100002320(v203, v205, v514);

                *(v200 + 4) = v206;
                *(v200 + 12) = 2080;
                v207 = v199;
                v208 = v199[v499[21] + 24];

                if (v208)
                {
                  if (v208 == 1)
                  {
                    v209 = "Allow connection to all devices";
                    v210 = 0xD000000000000032;
                  }

                  else
                  {
                    v209 = "OWE Key Generation";
                    v210 = 0xD00000000000001FLL;
                  }
                }

                else
                {
                  v210 = 0xD000000000000027;
                  v209 = "rable devices only";
                }

                v475 = 0x746F6E2072656550;
                v286 = sub_100002320(v210, v209 | 0x8000000000000000, v514);

                *(v200 + 14) = v286;
                _os_log_impl(&_mh_execute_header, v197, v198, "NAN-DP: Peer %s not paired, in '%s' mode", v200, 0x16u);
                swift_arrayDestroy();

                LODWORD(v478) = 1;
                v211 = 0xEF64657269617020;
                v171 = v462;
                v212 = v485;
                v189 = v207;
                v188 = v469;
                goto LABEL_121;
              }

              v475 = 0x746F6E2072656550;

              sub_100301450(v195, type metadata accessor for NANPeer);
              LODWORD(v478) = 1;
              v211 = 0xEF64657269617020;
              v212 = v485;
              v171 = v191;
LABEL_73:
              v189 = v450;
              goto LABEL_121;
            }

            v214 = v472;
            (*(v194 + 32))(v472, v192, v193);
            v212 = v485;
            if (v190)
            {
              v215 = _stringCompareWithSmolCheck(_:_:expecting:)();

              v171 = v191;
              if ((v215 & 1) == 0)
              {
                (*(v478 + 8))(v214, v193);
                LODWORD(v478) = 0;
                v475 = 0;
                v211 = 0xE000000000000000;
                goto LABEL_73;
              }
            }

            else
            {

              v171 = v191;
            }

            v245 = v499[28];
            v189 = v450;
            v246 = *&v450[v245];
            if (v246)
            {
              v247 = *&v450[v245];

              v248 = sub_10030BDDC(v214, v246);

              v249 = (v478 + 16);
              if (!v248)
              {
                v469 = v188;
                v475 = 0xD000000000000018;
                v266 = v465;
                sub_1003013DC(v495, v465, type metadata accessor for NANPeer);
                v267 = v466;
                (*v249)(v466, v214, v193);
                v268 = v502;
                v269 = Logger.logObject.getter();
                v270 = static os_log_type_t.error.getter();
                if (os_log_type_enabled(v269, v270))
                {
                  LODWORD(v468) = v270;
                  v470 = v269;
                  v462 = v171;
                  v271 = v193;
                  v272 = swift_slowAlloc();
                  v447 = swift_slowAlloc();
                  *&v514[0] = v447;
                  *v272 = 136315650;
                  v273 = WiFiAddress.description.getter(*(v266 + *(v479 + 20)) | (*(v266 + *(v479 + 20) + 2) << 16));
                  v275 = v274;
                  sub_100301450(v266, type metadata accessor for NANPeer);
                  v276 = sub_100002320(v273, v275, v514);

                  *(v272 + 4) = v276;
                  *(v272 + 12) = 2080;
                  sub_10030115C(&qword_100597520, &type metadata accessor for UUID);
                  v277 = dispatch thunk of CustomStringConvertible.description.getter();
                  v279 = v278;
                  v280 = v267;
                  v281 = *(v478 + 8);
                  v281(v280, v271);
                  v282 = sub_100002320(v277, v279, v514);

                  *(v272 + 14) = v282;
                  *(v272 + 22) = 2080;
                  v283 = v189[v499[21] + 24];

                  if (v283)
                  {
                    v188 = v469;
                    if (v283 == 1)
                    {
                      v284 = "Allow connection to all devices";
                      v285 = 0xD000000000000032;
                    }

                    else
                    {
                      v284 = "OWE Key Generation";
                      v285 = 0xD00000000000001FLL;
                    }
                  }

                  else
                  {
                    v285 = 0xD000000000000027;
                    v284 = "rable devices only";
                    v188 = v469;
                  }

                  v289 = sub_100002320(v285, v284 | 0x8000000000000000, v514);

                  *(v272 + 24) = v289;
                  v290 = v470;
                  _os_log_impl(&_mh_execute_header, v470, v468, "NAN-DP: Peer %s UUID: %s not allowed, in '%s' mode", v272, 0x20u);
                  swift_arrayDestroy();

                  v171 = v462;
                  v212 = v485;
                  v193 = v477;
                }

                else
                {

                  v288 = v267;
                  v281 = *(v478 + 8);
                  v281(v288, v193);
                  sub_100301450(v266, type metadata accessor for NANPeer);
                  v188 = v469;
                }

                v211 = 0x80000001004BEF30;
                v281(v472, v193);
                LODWORD(v478) = 1;
LABEL_121:
                swift_unownedRetainStrong();
                v291 = v480;
                WiFiInterface.preferences.getter();

                v292 = v482;
                v293 = Preferences.enableMulticastKeys.getter(v482);
                v295 = *(v212 + 8);
                v294 = v212 + 8;
                v477 = v295;
                v295(v291, v292);
                v296 = v502;
                if ((v293 & 1) == 0)
                {
                  goto LABEL_143;
                }

                LODWORD(v480) = v189[v499[34]];
                v297 = ObjectType;

                v298 = v476;
                Array<A>.retrieve(attribute:)(41, v297, v476);
                sub_1001854F8(v516);
                if (v458(v298, 1, v459) == 1)
                {
                  sub_100016290(v298, &unk_100595C00, &qword_10048F790);
                }

                else
                {
                  if (swift_getEnumCaseMultiPayload() == 36)
                  {
                    v299 = *(v298 + 1);
                    v514[0] = *v298;
                    v300 = *(v298 + 2);
                    v301 = *(v298 + 3);
                    v514[1] = v299;
                    v514[2] = v300;
                    v514[3] = v301;
                    sub_10027A06C(v514);
                    if ((BYTE10(v514[0]) & 0x20) != 0)
                    {
                      if ((v480 & 1) == 0)
                      {
                        sub_1001854F8(v516);

                        v304 = 1;
                        goto LABEL_131;
                      }

                      v485 = v294;
                      v462 = v171;
                      v302 = 1;
                    }

                    else
                    {
                      if (v480)
                      {
LABEL_130:
                        sub_1001854F8(v516);

                        v304 = 0;
LABEL_131:
                        v305 = v495;
                        v306 = v471;
                        sub_1003013DC(v495, v471, type metadata accessor for NANPeer);
                        v307 = v502;
                        v308 = v502;
                        v309 = Logger.logObject.getter();
                        v310 = static os_log_type_t.error.getter();

                        if (os_log_type_enabled(v309, v310))
                        {
                          v311 = swift_slowAlloc();
                          v312 = swift_slowAlloc();
                          v313 = swift_slowAlloc();
                          *&v514[0] = v313;
                          *v311 = 138413058;
                          *(v311 + 4) = v308;
                          *v312 = v307;
                          *(v311 + 12) = 2080;
                          v314 = *(v306 + *(v479 + 20)) | (*(v306 + *(v479 + 20) + 2) << 16);
                          v315 = v308;
                          v316 = WiFiAddress.description.getter(v314);
                          v317 = v306;
                          v319 = v318;
                          sub_100301450(v317, type metadata accessor for NANPeer);
                          v320 = sub_100002320(v316, v319, v514);

                          *(v311 + 14) = v320;
                          *(v311 + 22) = 1024;
                          *(v311 + 24) = v480 & 1;
                          *(v311 + 28) = 1024;
                          *(v311 + 30) = v304;
                          _os_log_impl(&_mh_execute_header, v309, v310, "%@ NAN-DPReq: Peer %s, Self gtk_required: %{BOOL}d, Peer gtk_required: %{BOOL}d mismatch, terminating data path", v311, 0x22u);
                          sub_100016290(v312, &qword_10058B780, &qword_100480AC0);

                          sub_100002A00(v313);

                          sub_1001842D0(v486, v483, v481);
                          v95 = v495;
                        }

                        else
                        {

                          sub_1001842D0(v486, v483, v481);
                          sub_100301450(v306, type metadata accessor for NANPeer);
                          v95 = v305;
                        }

                        v94 = type metadata accessor for NANPeer;
                        goto LABEL_24;
                      }

                      v485 = v294;
                      v462 = v171;
                      v302 = 0;
                    }

                    v303 = v474;
                    goto LABEL_139;
                  }

                  sub_100301450(v298, type metadata accessor for NANAttribute);
                }

                v303 = v474;
                if (v480)
                {
                  goto LABEL_130;
                }

                v485 = v294;
                v462 = v171;
                v302 = 0;
LABEL_139:
                sub_1003013DC(v495, v303, type metadata accessor for NANPeer);
                v321 = v296;
                v322 = Logger.logObject.getter();
                v323 = static os_log_type_t.info.getter();

                if (os_log_type_enabled(v322, v323))
                {
                  v324 = swift_slowAlloc();
                  LODWORD(v474) = v302;
                  v325 = v324;
                  v326 = swift_slowAlloc();
                  v469 = v188;
                  v327 = v326;
                  v476 = swift_slowAlloc();
                  *&v514[0] = v476;
                  *v325 = 138413058;
                  *(v325 + 4) = v321;
                  *v327 = v296;
                  *(v325 + 12) = 2080;
                  v328 = v189;
                  v329 = *(v303 + *(v479 + 20)) | (*(v303 + *(v479 + 20) + 2) << 16);
                  v330 = v321;
                  v331 = WiFiAddress.description.getter(v329);
                  v333 = v332;
                  sub_100301450(v303, type metadata accessor for NANPeer);
                  v334 = sub_100002320(v331, v333, v514);
                  v189 = v328;

                  *(v325 + 14) = v334;
                  *(v325 + 22) = 1024;
                  *(v325 + 24) = v480 & 1;
                  *(v325 + 28) = 1024;
                  *(v325 + 30) = v474;
                  _os_log_impl(&_mh_execute_header, v322, v323, "%@ NAN-DPReq: Peer %s, Self gtk_required: %{BOOL}d, Peer gtk_required: %{BOOL}d", v325, 0x22u);
                  sub_100016290(v327, &qword_10058B780, &qword_100480AC0);
                  v188 = v469;

                  sub_100002A00(v476);
                }

                else
                {

                  sub_100301450(v303, type metadata accessor for NANPeer);
                }

                v171 = v462;
LABEL_143:
                if (v478)
                {

                  swift_unownedRetainStrong();
                  sub_10040CAE8();

                  sub_10033975C(v491, v494, v496 | v171, v475, v211);

                  sub_1001854F8(v516);
                  sub_1001842D0(v486, v483, v481);
LABEL_211:
                  v94 = type metadata accessor for NANPeer;
                  v95 = v495;
                  goto LABEL_24;
                }

                sub_100012400(&v189[v499[22]], v514, &unk_1005974B0, &qword_1004AFCF0);
                v335 = BYTE8(v514[2]);
                v462 = v171;
                if (BYTE8(v514[2]) == 255)
                {
                  v355 = &unk_1005974B0;
                  v356 = &qword_1004AFCF0;
                  v357 = v514;
                }

                else
                {
                  sub_10020C758(v514);
                  if (v335)
                  {
                    goto LABEL_159;
                  }

                  v336 = sub_1002EBB84();
                  if (v336 && (v518[0] = v336, sub_10005DC58(&unk_100595B60, qword_1004AFC70), sub_10005DC58(&unk_100595C20, &qword_1004AFD10), (swift_dynamicCast() & 1) != 0))
                  {
                    if (*(&v520 + 1))
                    {
                      sub_100029954(&v519, v514);
                      v337 = *(&v514[1] + 1);
                      v338 = *&v514[2];
                      sub_100029B34(v514, *(&v514[1] + 1));
                      v339 = (*(v338 + 24))(v496 | v171, v337, v338);
                      if (v340 >> 60 != 15)
                      {
                        v341 = v339;
                        v498 = v340;
                        swift_unownedRetainStrong();
                        v342 = *(*v188 + 736);
                        swift_beginAccess();
                        v343 = v188 + v342;
                        v344 = v463;
                        sub_1003013DC(v343, v463, type metadata accessor for NANDriverCapabilities);

                        v345 = *(v344 + 8);

                        sub_100301450(v344, type metadata accessor for NANDriverCapabilities);
                        *&v519 = v345;
                        v346 = sub_10005DC58(&unk_100597490, &qword_1004B17B0);
                        v347 = sub_100168950();
                        v348 = Collection<>.strongestSupportedSharedKeySuite.getter(v346, v347);
                        if (v348 != 8)
                        {
                          v398 = v348;

                          v497 = 0xF000000000000000;
                          sub_100017554(0, 0xF000000000000000);
                          v399 = v498;
                          sub_10000AB0C(v341, v498);
                          sub_10005D67C(0, 0xF000000000000000);
                          ObjectType = v341;
                          sub_1000124C8(v341, v399);
                          sub_100017554(0, 0xF000000000000000);

                          v352 = 0;
                          v353 = v398;
                          v354 = 1;
LABEL_189:
                          LODWORD(v487) = v354;
                          v362 = v492;
                          sub_100002A00(v514);
                          v494 = 0;
LABEL_190:

                          v400 = Logger.logObject.getter();
                          v401 = v362;
                          v402 = static os_log_type_t.default.getter();

                          if (os_log_type_enabled(v400, v402))
                          {
                            v403 = v352;
                            v404 = v353;
                            v405 = swift_slowAlloc();
                            *&v514[0] = swift_slowAlloc();
                            *v405 = 136315394;
                            v406 = sub_100002320(v449, v401, v514);
                            v407 = v189;
                            v408 = v406;

                            *(v405 + 4) = v408;
                            *(v405 + 12) = 2080;
                            if (v487 == 2)
                            {
                              v409 = 0x64657463656A6572;
                            }

                            else
                            {
                              v409 = 0x6465747065636361;
                            }

                            v410 = sub_100002320(v409, 0xE800000000000000, v514);

                            *(v405 + 14) = v410;
                            v189 = v407;
                            _os_log_impl(&_mh_execute_header, v400, v402, "Configuring datapath responder for peer: %s, with status: %s", v405, 0x16u);
                            swift_arrayDestroy();

                            v353 = v404;
                            v352 = v403;
                          }

                          else
                          {
                          }

                          swift_unownedRetainStrong();
                          v411 = sub_10040CAE8();

                          swift_unownedRetainStrong();
                          v492 = WiFiInterface.macAddress.getter();

                          v412 = v189[84];
                          v413 = v189[85];
                          v477 = *(v189 + 86) << 16;
                          v415 = *(v189 + 1);
                          v414 = *(v189 + 2);
                          v416 = v189[v499[21] + 2];

                          v488 = v352;
                          v489 = v411;
                          AssociatedTypeWitness = v415;
                          v485 = v353;
                          v482 = v417;
                          LODWORD(v480) = v416;
                          v478 = v413;
                          v479 = v412;
                          if (v352)
                          {
                            if (v448)
                            {
                              v418 = static NANPMK.zero.getter();
                              v420 = v419;
                              v421 = 0xF000000000000000;
                              sub_100017554(0, 0xF000000000000000);
                              sub_10000AB0C(v418, v420);
                              sub_10005D67C(0, 0xF000000000000000);
                              sub_1000124C8(v418, v420);
                              sub_100017554(0, 0xF000000000000000);

                              v422 = 0;
                              v423 = 0;
                              v424 = 0;
                            }

                            else
                            {
                              v422 = 0;
                              v418 = 0;
                              v420 = 0;
                              v423 = 0;
                              v421 = 0;
                              v424 = 1;
                            }
                          }

                          else
                          {
                            v424 = 0;
                            v422 = v353;
                            v418 = ObjectType;
                            v423 = v494;
                            v421 = v497;
                            v420 = v498;
                          }

                          v518[0] = v422;
                          v518[1] = v418;
                          v518[2] = v420;
                          v518[3] = v423;
                          v518[4] = v421;
                          v518[5] = 0;
                          v518[6] = v424;
                          v425 = v499;
                          sub_100012400(&v189[v499[22]], v512, &unk_1005974B0, &qword_1004AFCF0);
                          v426 = v502;
                          v427 = *&v502[qword_10059B8B8 + 16];
                          v519 = *&v502[qword_10059B8B8];
                          v521 = *&v502[qword_10059B8B8 + 32];
                          v428 = &v189[v425[27]];
                          v429 = *v428 | (*(v428 + 2) << 32);
                          v430 = *(v428 + 6);
                          LODWORD(v476) = v189[v425[29]];
                          v431 = v425[33];
                          v432 = *&v189[v425[32]] | (*&v189[v425[32] + 4] << 32);
                          LODWORD(v425) = *&v189[v431];
                          v433 = v189[v431 + 2];
                          v522 = *&v502[qword_10059B8B8 + 48];
                          v520 = v427;
                          sub_100012400(&v519, v514, &qword_100595C10, &unk_100499060);
                          v434 = v486;
                          v435 = v483;
                          v436 = v481;
                          sub_100184290(v486, v483, v481);
                          sub_10011A208(v485, ObjectType, v498, v494, v497, 0, v488);
                          LOBYTE(v514[0]) = v430;
                          v446 = v432;
                          BYTE2(v444) = v487;
                          BYTE1(v444) = v457;
                          LOBYTE(v444) = v480;
                          v437 = v491;
                          NANDatapath.ResponseConfiguration.init(instanceID:publishID:initiatorManagementAddress:initiatorDataAddress:initiatorServiceInfo:responderManagementAddress:responderDataAddress:serviceName:serviceType:dialogToken:status:securityConfiguration:internetSharingConfiguration:multicastAddress:multicastServiceType:channelInfo:countryCode:pairingMetadata:)(v491, v490, v496 | v462, v461 | v460, v434, v435, v436, v492 & 0xFFFFFFFFFFFFLL, v514, v479 | (v478 << 8) | v477, AssociatedTypeWitness, v482, v444, v518, v512, v429, (v429 | (v430 << 48)) >> 32, (v429 | (v430 << 48)) >> 48, (v429 | (v430 << 48)) >> 56, v476, v445, v446, SWORD2(v446), SHIWORD(v446), v425, (v425 | (v433 << 16)) >> 16, &v519);
                          sub_1001854F8(v516);
                          v438 = *&v426[qword_10059B8C8 + 8];
                          if (v438)
                          {
                            v439 = *&v426[qword_10059B8C8];
                          }

                          else
                          {
                            v439 = 0;
                          }

                          if (v438)
                          {
                            v440 = *&v426[qword_10059B8C8 + 8];
                          }

                          else
                          {
                            v440 = 0xE000000000000000;
                          }

                          if (v426[qword_1005959C8 + 4])
                          {
                            v441 = 0;
                          }

                          else
                          {
                            v441 = *&v426[qword_1005959C8];
                          }

                          v442 = sub_100339C20(v514, v439, v440, v441);

                          sub_1002CB18C(v514);
                          v512[0] = v442;
                          v505 = v437;
                          v506 = v456;
                          v507 = v455;
                          v508 = v454;
                          v509 = v453;
                          v510 = v452;
                          v511 = v451;
                          v443 = qword_10059B8C0;
                          swift_beginAccess();
                          v504 = *&v426[v443];
                          _s17ResponderInstanceCMa();
                          sub_10020CB70();
                          type metadata accessor for Dictionary();

                          Dictionary.subscript.setter();
                          sub_1002EE678(v504);
                          sub_1001842D0(v434, v435, v436);
                          sub_10011A270(v485, ObjectType, v498, v494, v497, 0, v488);
                          goto LABEL_211;
                        }

                        sub_100017554(v341, v498);
                      }

                      swift_unownedRetainStrong();
                      v349 = v464;
                      WiFiInterface.preferences.getter();

                      v350 = v482;
                      v351 = Preferences.automaticallyUseEncryption.getter(v482);
                      (v477)(v349, v350);
                      v352 = 1;
                      v353 = 0;
                      if (v351)
                      {
                        ObjectType = 0;
                        v497 = 0;
                        v498 = 0;
                        v354 = 2;
                      }

                      else
                      {
                        ObjectType = 0;
                        v497 = 0;
                        v498 = 0;
                        if (v189[v499[24]])
                        {
                          v354 = 1;
                        }

                        else
                        {
                          v354 = 2;
                        }
                      }

                      goto LABEL_189;
                    }
                  }

                  else
                  {
                    *&v521 = 0;
                    v520 = 0u;
                    v519 = 0u;
                  }

                  v355 = &unk_100595C18;
                  v356 = &unk_1004AFD08;
                  v357 = &v519;
                }

                sub_100016290(v357, v355, v356);
LABEL_159:
                v358 = *&v189[v499[21] + 16];
                v359 = *(v358 + 16);
                v360 = (v358 + 32);
                v361 = v359 + 1;
                v362 = v492;
                while (--v361)
                {
                  v363 = *v360;
                  v360 += 56;
                  if (v363 >= 6)
                  {
                    swift_unownedRetainStrong();
                    v364 = sub_10040CAE8();

                    v365 = qword_10059B9C8;
                    swift_beginAccess();
                    v366 = *(v364 + v365);

                    LOBYTE(v519) = v171;
                    BYTE1(v519) = AssociatedTypeWitness;
                    BYTE2(v519) = v497;
                    BYTE3(v519) = v498;
                    BYTE4(v519) = v487;
                    BYTE5(v519) = v488;
                    _s17InitiatorInstanceCMa_0();
                    _s17ResponderInstanceCMa_0();
                    type metadata accessor for Either();
                    sub_1002CAFC4();
                    Dictionary.subscript.getter();

                    v367 = BYTE8(v514[0]);
                    if (BYTE8(v514[0]) == 255)
                    {
                      v353 = 0;
                      ObjectType = 0;
                      v494 = 0;
                      v497 = 0;
                      v498 = 0;
                      LODWORD(v487) = 2;
                      v352 = 1;
                      v362 = v492;
                    }

                    else
                    {
                      v368 = *&v514[0];
                      v369 = sub_100428AB0(*&v514[0], BYTE8(v514[0]) & 1);
                      if (v370 >> 60 == 15)
                      {
                        sub_1002CB018(v368, v367);
                        v353 = 0;
                        ObjectType = 0;
                        v494 = 0;
                        v497 = 0;
                        v498 = 0;
                        LODWORD(v487) = 2;
                        v352 = 1;
                      }

                      else
                      {
                        v395 = v370;
                        v396 = v369;
                        v397 = sub_100428AE0(v368);
                        sub_1002CB018(v368, v367);
                        v497 = 0xF000000000000000;
                        sub_100017554(0, 0xF000000000000000);
                        sub_10000AB0C(v396, v395);
                        sub_10005D67C(0, 0xF000000000000000);
                        ObjectType = v396;
                        v498 = v395;
                        sub_1000124C8(v396, v395);
                        sub_100017554(0, 0xF000000000000000);

                        v494 = 0;
                        v352 = 0;
                        v353 = v397;
                        LODWORD(v487) = 1;
                      }

                      v362 = v492;
                    }

                    goto LABEL_190;
                  }
                }

                if (v359)
                {
                  v469 = v188;
                  v371 = v491;
                  v485 = *(v358 + 32);
                  v372 = v189;
                  v374 = *(v358 + 40);
                  v373 = *(v358 + 48);
                  v376 = *(v358 + 56);
                  v375 = *(v358 + 64);
                  v377 = *(v358 + 80);
                  v378 = v499[24];
                  v450 = v372;
                  v379 = v372[v378];
                  sub_10000AB0C(v374, v373);
                  sub_10005D67C(v376, v375);

                  if (v379 == 1 && (v380 = static NANPMK.zero.getter(), v382 = v381, v383 = _s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(v374, v373, v380, v381), sub_1000124C8(v380, v382), (v383 & 1) == 0))
                  {
                    if (v375 >> 60 != 15)
                    {
                      sub_10005D67C(v376, v375);
                    }

                    sub_10000AB0C(v374, v373);
                    LODWORD(v487) = 1;
                    v389 = v376;
                    v390 = v375;
                    v386 = v374;
                    v388 = v373;
                  }

                  else
                  {
                    v384 = sub_1002F7170(v371 | (v490 << 8) | (v462 << 16) | (AssociatedTypeWitness << 24) | (v497 << 32) | (v498 << 40) | (v487 << 48) | (v488 << 56), v494, ObjectType, v486, v483, v481);
                    if (v385 >> 60 == 15)
                    {
                      v386 = static NANPMK.zero.getter();
                      v388 = v387;
                      v389 = 0;
                      v390 = 0xF000000000000000;
                      LODWORD(v487) = 2;
                    }

                    else
                    {
                      v386 = v384;
                      v388 = v385;
                      v389 = 0;
                      v390 = 0xF000000000000000;
                      LODWORD(v487) = 1;
                    }
                  }

                  sub_1000124C8(v374, v373);
                  sub_100017554(v376, v375);

                  sub_100017554(0, 0xF000000000000000);
                  sub_10000AB0C(v386, v388);
                  sub_10005D67C(v389, v390);
                  ObjectType = v386;
                  v498 = v388;
                  sub_1000124C8(v386, v388);
                  v494 = v389;
                  v497 = v390;
                  sub_100017554(v389, v390);

                  v352 = 0;
                  v362 = v492;
                  v189 = v450;
                  v353 = v485;
                }

                else
                {
                  swift_unownedRetainStrong();
                  v391 = v467;
                  WiFiInterface.preferences.getter();

                  v392 = v482;
                  v393 = Preferences.automaticallyUseEncryption.getter(v482);
                  (v477)(v391, v392);
                  v352 = 1;
                  v353 = 0;
                  if (v393)
                  {
                    ObjectType = 0;
                    v494 = 0;
                    v497 = 0;
                    v498 = 0;
                    v394 = 2;
                  }

                  else
                  {
                    ObjectType = 0;
                    v494 = 0;
                    v497 = 0;
                    v498 = 0;
                    if (v189[v499[24]])
                    {
                      v394 = 1;
                    }

                    else
                    {
                      v394 = 2;
                    }
                  }

                  LODWORD(v487) = v394;
                }

                goto LABEL_190;
              }

              sub_1003013DC(v495, v469, type metadata accessor for NANPeer);
              v250 = v468;
              (*v249)(v468, v214, v193);
              v251 = Logger.logObject.getter();
              v252 = v193;
              v253 = static os_log_type_t.info.getter();
              if (os_log_type_enabled(v251, v253))
              {
                v254 = swift_slowAlloc();
                v475 = swift_slowAlloc();
                *&v514[0] = v475;
                *v254 = 136315394;
                v255 = v469;
                v256 = WiFiAddress.description.getter(*(v469 + *(v479 + 20)) | (*(v469 + *(v479 + 20) + 2) << 16));
                v258 = v257;
                sub_100301450(v255, type metadata accessor for NANPeer);
                v259 = sub_100002320(v256, v258, v514);

                *(v254 + 4) = v259;
                *(v254 + 12) = 2080;
                sub_10030115C(&qword_100597520, &type metadata accessor for UUID);
                v260 = v468;
                v261 = dispatch thunk of CustomStringConvertible.description.getter();
                v263 = v262;
                v462 = v171;
                v469 = v188;
                v264 = *(v478 + 8);
                v264(v260, v252);
                v265 = sub_100002320(v261, v263, v514);
                v212 = v485;

                *(v254 + 14) = v265;
                _os_log_impl(&_mh_execute_header, v251, v253, "NAN-DP: Peer: %s UUID: %s found in allowedPairedDevicesUUIDs", v254, 0x16u);
                swift_arrayDestroy();

                v264(v472, v252);
                v188 = v469;
                v171 = v462;
                v189 = v450;
              }

              else
              {

                v287 = *(v478 + 8);
                v287(v250, v252);
                sub_100301450(v469, type metadata accessor for NANPeer);
                v287(v472, v252);
              }
            }

            else
            {
              (*(v478 + 8))(v214, v193);
            }

            LODWORD(v478) = 0;
            v475 = 0;
            v211 = 0xE000000000000000;
            goto LABEL_121;
          }

          v126 = *&v502[qword_100595970];
          v127 = v62;
          swift_unownedRetainStrong();
          sub_10040CAE8();

          v515[0] = 0;
          v515[1] = 0xE000000000000000;
          *&v514[0] = v67;
          swift_getWitnessTable();
          DefaultStringInterpolation.appendInterpolation<A>(_:)();
          v128._countAndFlagsBits = 0x63616E6920736920;
          v128._object = 0xEC00000065766974;
          String.append(_:)(v128);
          sub_10033975C(v60, v69, v61 | (v127 << 8) | (v497 << 16) | (v498 << 24) | (v65 << 32) | (v66 << 40), v515[0], v515[1]);

LABEL_35:
          sub_1001854F8(v516);
          return sub_100301450(v503, type metadata accessor for DriverEvent);
        }

LABEL_20:
        sub_1001854F8(v516);
        break;
      }

      if (v58 != 12)
      {
        if (v58 == 13)
        {
          v78 = NANBitmap.Channel.operatingClass.getter(v517);
          sub_1002F8094(*v78, *(v78 + 8), *(v78 + 16));
          sub_1001854F8(v516);
          return sub_100301450(v503, type metadata accessor for DriverEvent);
        }

        goto LABEL_20;
      }

      v96 = NANBitmap.Channel.operatingClass.getter(v517);
      v499 = *(v96 + 8);
      v97 = *(v96 + 16);
      v98 = qword_10059B898;
      v99 = v502;
      v100 = v502[qword_10059B898];
      p_inst_props = (&OBJC_PROTOCOL___AWDLServiceDiscoveryManagerXPC + 56);
      v495 = qword_10059B898;
      if (v100 == 1)
      {
        v102 = type metadata accessor for P2PTimer();
        v103 = v496;
        v487 = v102;
        variable initialization expression of AWDLPeer.lastUpdated();
        v104 = qword_100595978;
        swift_beginAccess();
        v106 = v497;
        v105 = v498;
        v107 = *(v497 + 16);
        ObjectType = v104;
        v108 = v490;
        v107(v490, &v99[v104], v498);
        v109 = v488;
        DispatchTime.distance(to:)();
        v110 = *(v106 + 8);
        v110(v108, v105);
        v110(v103, v105);
        v111 = NANConstants.maximumServiceRetryRate.unsafeMutableAddressor();
        v113 = v491;
        v112 = v492;
        v114 = v489;
        (*(v491 + 16))(v489, v111, v492);
        LOBYTE(v104) = static DispatchTimeInterval.< infix(_:_:)();
        v115 = *(v113 + 8);
        v115(v114, v112);
        v115(v109, v112);
        if (v104)
        {
          v116 = qword_10059B8A0;
          v117 = v99;
          v118 = Logger.logObject.getter();
          v119 = static os_log_type_t.error.getter();

          v120 = os_log_type_enabled(v118, v119);
          LODWORD(v486) = v97;
          if (!v120)
          {

LABEL_79:
            v218 = v483;
            v219 = v496;
            variable initialization expression of AWDLPeer.lastUpdated();
            v220 = v502;
            v221 = ObjectType;
            swift_beginAccess();
            (*(v497 + 40))(&v220[v221], v219, v498);
            swift_endAccess();
            v222 = *(p_inst_props[302] + v117);
            swift_unownedRetainStrong();
            sub_10040CBA8();
            v497 = v116;

            swift_unownedRetainStrong();
            v223 = *(*v222 + 96);
            swift_beginAccess();
            v224 = v494;
            v225 = AssociatedTypeWitness;
            (*(v494 + 16))(v218, v222 + v223, AssociatedTypeWitness);

            v226 = qword_10059B890;
            swift_beginAccess();
            v227 = v473;
            sub_1003013DC(&v117[v226], v473, type metadata accessor for NANPublish.Configuration);
            v228 = swift_getAssociatedConformanceWitness();
            (*(v228 + 208))(v227, v225, v228);
            sub_100301450(v227, type metadata accessor for NANPublish.Configuration);
            (*(v224 + 8))(v218, v225);
            return sub_100301450(v503, type metadata accessor for DriverEvent);
          }

          v121 = swift_slowAlloc();
          v122 = swift_slowAlloc();
          v123 = swift_slowAlloc();
          v515[0] = v123;
          *v121 = 138412546;
          *(v121 + 4) = v117;
          *v122 = v99;
          *(v121 + 12) = 2080;
          v492 = v122;
          if (v499 <= 1)
          {
            if (v499 == -1)
            {
              v125 = 0x80000001004BA5E0;
              v124 = 0xD000000000000011;
              goto LABEL_78;
            }

            if (v499 == 1)
            {
              v124 = 0x754F2064656D6954;
              v125 = 0xE900000000000074;
              goto LABEL_78;
            }
          }

          else
          {
            if (v499 == 2)
            {
              v124 = 0x7165522072657355;
              v125 = 0xEE00646574736575;
              goto LABEL_78;
            }

            if (v499 == 3)
            {
              v124 = 0x6961462070696843;
              v125 = 0xEC0000006572756CLL;
              goto LABEL_78;
            }

            if (v499 == 4)
            {
              v124 = 0xD000000000000018;
              v125 = 0x80000001004BA540;
LABEL_78:
              v216 = v117;
              v217 = sub_100002320(v124, v125, v515);

              *(v121 + 14) = v217;
              _os_log_impl(&_mh_execute_header, v118, v119, "%@ got an early termination with reason: %s. Retrying", v121, 0x16u);
              sub_100016290(v492, &qword_10058B780, &qword_100480AC0);

              sub_100002A00(v123);

              p_inst_props = &OBJC_PROTOCOL___AWDLServiceDiscoveryManagerXPC.inst_props;
              goto LABEL_79;
            }
          }

          v125 = 0xE700000000000000;
          v124 = 0x6E776F6E6B6E55;
          goto LABEL_78;
        }

        v498 = 0;
        v129 = v99;
        v130 = v499;
        v98 = v495;
      }

      else
      {
        v498 = 0;
        v129 = v502;
        v130 = v499;
      }

      v499 = qword_1005959B0;
      if (*&v129[qword_1005959B0] && (v129[qword_1005959B8] & 1) != 0)
      {
        v130 = 1;
      }

      sub_1002EF5A4(v130, v97);
      v229 = v129;
      v230 = Logger.logObject.getter();
      v231 = static os_log_type_t.default.getter();

      if (!os_log_type_enabled(v230, v231))
      {

LABEL_98:
        v129[v98] = 0;
        v239 = *&v229[qword_100595980];
        *&v229[qword_100595980] = 0;

        v240 = qword_100595988;
        swift_beginAccess();
        *&v514[0] = *&v229[v240];
        __chkstk_darwin();
        _s8InstanceC21NANPublishClientProxyVMa();
        type metadata accessor for Array();

        swift_getWitnessTable();
        Sequence.forEach(_:)();

        *&v514[0] = *&v229[v240];
        __chkstk_darwin();

        Sequence.forEach(_:)();

        v241 = *(v499 + v502);
        *(v499 + v502) = 0;

        v229[qword_1005959B8] = 0;
        v242 = qword_10059B8C0;
        swift_beginAccess();
        v513 = *&v229[v242];
        _s17ResponderInstanceCMa();
        sub_10020CB70();
        type metadata accessor for Dictionary();

        Dictionary.removeAll(keepingCapacity:)(0);
        sub_1002EE678(v513);
        v243 = *&v229[qword_100595970];
        swift_unownedRetainStrong();
        sub_10040CAE8();

        sub_100339E14(v229);
        goto LABEL_99;
      }

      v232 = swift_slowAlloc();
      v233 = swift_slowAlloc();
      v234 = swift_slowAlloc();
      v515[0] = v234;
      *v232 = 138412546;
      *(v232 + 4) = v229;
      *v233 = v129;
      *(v232 + 12) = 2080;
      if (v130 <= 1)
      {
        if (v130 == -1)
        {
          v236 = 0x80000001004BA5E0;
          v235 = 0xD000000000000011;
          goto LABEL_97;
        }

        if (v130 == 1)
        {
          v235 = 0x754F2064656D6954;
          v236 = 0xE900000000000074;
          goto LABEL_97;
        }
      }

      else
      {
        switch(v130)
        {
          case 2:
            v235 = 0x7165522072657355;
            v236 = 0xEE00646574736575;
            goto LABEL_97;
          case 3:
            v235 = 0x6961462070696843;
            v236 = 0xEC0000006572756CLL;
            goto LABEL_97;
          case 4:
            v235 = 0xD000000000000018;
            v236 = 0x80000001004BA540;
LABEL_97:
            v237 = v229;
            v238 = sub_100002320(v235, v236, v515);

            *(v232 + 14) = v238;
            _os_log_impl(&_mh_execute_header, v230, v231, "%@ was terminated with reason %s", v232, 0x16u);
            sub_100016290(v233, &qword_10058B780, &qword_100480AC0);

            sub_100002A00(v234);

            v129 = v502;
            v98 = v495;
            goto LABEL_98;
        }
      }

      v236 = 0xE700000000000000;
      v235 = 0x6E776F6E6B6E55;
      goto LABEL_97;
  }

  sub_1003013DC(a1, v49, type metadata accessor for DriverEvent);
  v82 = v502;
  v83 = v502;
  v84 = Logger.logObject.getter();
  v85 = static os_log_type_t.error.getter();

  if (!os_log_type_enabled(v84, v85))
  {

    v94 = type metadata accessor for DriverEvent;
    v95 = v49;
LABEL_24:
    sub_100301450(v95, v94);
    return sub_100301450(v503, type metadata accessor for DriverEvent);
  }

  v86 = swift_slowAlloc();
  v87 = swift_slowAlloc();
  v88 = swift_slowAlloc();
  v517[0] = v88;
  *v86 = 138412546;
  *(v86 + 4) = v83;
  *v87 = v82;
  *(v86 + 12) = 2080;
  v89 = v83;
  v90 = DriverEvent.description.getter();
  v92 = v91;
  sub_100301450(v49, type metadata accessor for DriverEvent);
  v93 = sub_100002320(v90, v92, v517);

  *(v86 + 14) = v93;
  _os_log_impl(&_mh_execute_header, v84, v85, "%@ received an unexpected %s", v86, 0x16u);
  sub_100016290(v87, &qword_10058B780, &qword_100480AC0);

  sub_100002A00(v88);

  return sub_100301450(v503, type metadata accessor for DriverEvent);
}

uint64_t sub_1002F7170(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  v89[0] = a1;
  v89[1] = a2;
  v89[2] = a3;
  v10 = *(*(type metadata accessor for OWEKeys() - 8) + 64);
  __chkstk_darwin();
  v12 = &v80 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(*(sub_10005DC58(&unk_100595C40, &qword_100499070) - 8) + 64);
  __chkstk_darwin();
  v15 = &v80 - v14;
  v16 = type metadata accessor for P256.KeyAgreement.PublicKey();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin();
  v20 = &v80 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(*(sub_10005DC58(&unk_100597460, &qword_1004AFD18) - 8) + 64);
  __chkstk_darwin();
  v23 = &v80 - v22;
  v85 = type metadata accessor for NANPeer.Service.AuthenticationStatus.State(0);
  v24 = *(*(v85 - 8) + 64);
  __chkstk_darwin();
  v86 = (&v80 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a4 == 4 || (v26 = NANServiceInfo.genericServiceProtocol.getter(a4, a5, a6)) == 0)
  {
LABEL_9:
    sub_100185314(v89, v88);
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();
    sub_1003011A4(v89);
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v88[0] = v37;
      *v36 = 136315138;
      v42 = WiFiAddress.description.getter(WORD1(v89[0]) | (HIDWORD(v89[0]) << 16));
      v44 = sub_100002320(v42, v43, v88);

      *(v36 + 4) = v44;
      v41 = "Rejecting datapath request from %s because invalid service specific info was provided in the datapath request";
      goto LABEL_11;
    }

LABEL_12:

    return 0;
  }

  v27 = v26;
  v28 = NANGenericServiceProtocol.datapathSubscribeID.getter(v26);
  if ((v28 & 0x100) != 0)
  {

    goto LABEL_9;
  }

  v29 = v28;
  v30 = v6 + qword_10059B890;
  swift_beginAccess();
  v31 = type metadata accessor for NANPublish.Configuration();
  if ((*(v30 + *(v31 + 96)) & 1) == 0)
  {

    v84 = BYTE2(v89[0]);
    v46 = BYTE3(v89[0]);
    v47 = BYTE4(v89[0]);
    v48 = BYTE5(v89[0]);
    v49 = BYTE6(v89[0]);
    v50 = HIBYTE(v89[0]);
    v51 = qword_10059B8A8;
    swift_beginAccess();
    v52 = *(v6 + v51);
    if (*(v52 + 16) && (v83 = v6, v53 = sub_10007CD94(v29 | (v84 << 8) | (v46 << 16) | (v47 << 24) | (v48 << 32) | (v49 << 40) | (v50 << 48)), (v54 & 1) != 0))
    {
      v55 = v53;
      v81 = v48;
      v82 = v49;
      v56 = v47;
      v57 = *(v52 + 56);
      v58 = type metadata accessor for NANPeer.Service.AuthenticationStatus(0);
      v59 = v46;
      v60 = *(v58 - 8);
      v61 = v57 + *(v60 + 72) * v55;
      v47 = v56;
      v48 = v81;
      v49 = v82;
      sub_1003013DC(v61, v23, type metadata accessor for NANPeer.Service.AuthenticationStatus);
      (*(v60 + 56))(v23, 0, 1, v58);
      v46 = v59;
    }

    else
    {
      v58 = type metadata accessor for NANPeer.Service.AuthenticationStatus(0);
      (*(*(v58 - 8) + 56))(v23, 1, 1, v58);
    }

    type metadata accessor for NANPeer.Service.AuthenticationStatus(0);
    if ((*(*(v58 - 8) + 48))(v23, 1, v58))
    {
      sub_100016290(v23, &unk_100597460, &qword_1004AFD18);
      swift_endAccess();
    }

    else
    {
      v75 = v86;
      sub_1003013DC(v23, v86, type metadata accessor for NANPeer.Service.AuthenticationStatus.State);
      sub_100016290(v23, &unk_100597460, &qword_1004AFD18);
      swift_endAccess();
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        result = *v75;
        v76 = v75[1];
        return result;
      }

      sub_100301450(v75, type metadata accessor for NANPeer.Service.AuthenticationStatus.State);
    }

    sub_100185314(v89, v87);
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();
    sub_1003011A4(v89);
    if (!os_log_type_enabled(v34, v35))
    {
      goto LABEL_12;
    }

    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v87[0] = v37;
    *v36 = 136315138;
    v77 = WiFiAddress.description.getter(v84 | (v46 << 8) | (v47 << 16) | (v48 << 24) | (v49 << 32) | (v50 << 40));
    v79 = sub_100002320(v77, v78, v87);

    *(v36 + 4) = v79;
    v41 = "Rejecting datapath request from %s because no authenticated PMK was found for the subscribe but authentication is required";
    goto LABEL_11;
  }

  v32 = v31;
  NANGenericServiceProtocol.publicKey.getter(v27, v15);

  v33 = v16;
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_100016290(v15, &unk_100595C40, &qword_100499070);
    sub_100185314(v89, v87);
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();
    sub_1003011A4(v89);
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v87[0] = v37;
      *v36 = 136315138;
      v38 = WiFiAddress.description.getter(WORD1(v89[0]) | (HIDWORD(v89[0]) << 16));
      v40 = sub_100002320(v38, v39, v87);

      *(v36 + 4) = v40;
      v41 = "Rejecting datapath request from %s because no OWE public key was found in the service specific info";
LABEL_11:
      _os_log_impl(&_mh_execute_header, v34, v35, v41, v36, 0xCu);
      sub_100002A00(v37);

      goto LABEL_12;
    }

    goto LABEL_12;
  }

  v62 = v20;
  (*(v17 + 32))(v20, v15, v33);
  sub_1003013DC(v30 + *(v32 + 92), v12, type metadata accessor for OWEKeys);
  v63 = OWEKeys.generatePMK(for:asClient:)(v20, 0);
  v65 = v64;
  sub_100301450(v12, type metadata accessor for OWEKeys);
  if (v65 >> 60 == 15)
  {
    sub_100185314(v89, v87);
    v66 = Logger.logObject.getter();
    v67 = static os_log_type_t.error.getter();
    sub_1003011A4(v89);
    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      v69 = v62;
      v70 = v17;
      v71 = swift_slowAlloc();
      v87[0] = v71;
      *v68 = 136315138;
      v72 = WiFiAddress.description.getter(WORD1(v89[0]) | (HIDWORD(v89[0]) << 16));
      v74 = sub_100002320(v72, v73, v87);

      *(v68 + 4) = v74;
      _os_log_impl(&_mh_execute_header, v66, v67, "Rejecting datapath request from %s because of a failure to generate the PMK using the OWE keys", v68, 0xCu);
      sub_100002A00(v71);

      (*(v70 + 8))(v69, v33);
    }

    else
    {

      (*(v17 + 8))(v20, v33);
    }

    return 0;
  }

  (*(v17 + 8))(v20, v33);
  return v63;
}

uint64_t sub_1002F7B18(uint64_t result)
{
  v1 = *(result + 8);
  if (v1)
  {
    v2 = *(result + 8);
    v3[3] = swift_getObjectType();
    v3[0] = v1;
    swift_unknownObjectRetain_n();
    sub_1002F7B8C(v3);
    swift_unknownObjectRelease();
    return sub_100002A00(v3);
  }

  return result;
}

uint64_t sub_1002F7B8C(uint64_t a1)
{
  v3 = *((swift_isaMask & *v1) + 0x50);
  v4 = *((swift_isaMask & *v1) + 0x58);
  v5 = _s8InstanceC21NANPublishClientProxyVMa();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin();
  v42 = &v38 - v8;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v10 = type metadata accessor for Optional();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin();
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v16 = (&v38 - v15);
  sub_100002B30(a1, v51);
  sub_10005DC58(&unk_100595B60, qword_1004AFC70);
  result = swift_dynamicCast();
  if (result)
  {
    v44 = v50;
    v18 = qword_100595988;
    swift_beginAccess();
    v43 = v1;
    v41 = v18;
    v51[0] = *(v1 + v18);
    v47 = v5;
    v19 = type metadata accessor for Array();
    swift_getWitnessTable();
    Sequence.enumerated()();
    v49 = v48;
    type metadata accessor for EnumeratedSequence();
    EnumeratedSequence.makeIterator()();
    v40 = v19;
    v20 = type metadata accessor for EnumeratedSequence.Iterator();
    v21 = (v11 + 32);
    v45 = TupleTypeMetadata2 - 8;
    v46 = v20;
    v22 = (v6 + 8);
    v39 = TupleTypeMetadata2;
    while (1)
    {
      EnumeratedSequence.Iterator.next()();
      (*v21)(v16, v14, v10);
      if ((*(*(TupleTypeMetadata2 - 8) + 48))(v16, 1, TupleTypeMetadata2) == 1)
      {
        break;
      }

      v23 = *v16;
      v24 = v16 + *(TupleTypeMetadata2 + 48);
      v25 = *(v24 + 1);
      v26 = *v22;
      swift_unknownObjectRetain();
      v26(v24, v47);
      if (v25)
      {
        swift_unknownObjectRelease();
        if (v44 == v25)
        {
          swift_beginAccess();
          v27 = v14;
          v28 = v10;
          v29 = v42;
          Array.remove(at:)();
          v30 = v29;
          v10 = v28;
          v14 = v27;
          TupleTypeMetadata2 = v39;
          v26(v30, v47);
          swift_endAccess();
          sub_1002EC180();
        }
      }
    }

    v31 = v43;
    v51[0] = *(v43 + v41);
    swift_getWitnessTable();
    if (Collection.isEmpty.getter())
    {
      v32 = v31;
      v33 = Logger.logObject.getter();
      v34 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        *v35 = 138412290;
        *(v35 + 4) = v32;
        *v36 = v31;
        v37 = v32;
        _os_log_impl(&_mh_execute_header, v33, v34, "Terminating %@ because it's client was invalidated", v35, 0xCu);
        sub_100016290(v36, &qword_10058B780, &qword_100480AC0);
      }

      sub_1002F29CC();
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1002F8094(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v196 = a1;
  v197 = a2;
  v198 = a3;
  v174 = swift_isaMask & *v3;
  v5 = *(*(sub_10005DC58(&unk_100595C50, &unk_1004AFD20) - 8) + 64);
  __chkstk_darwin();
  v172 = &v164 - v6;
  v7 = *(*(sub_10005DC58(&unk_100595C00, &qword_10048F790) - 8) + 64);
  __chkstk_darwin();
  v176 = &v164 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = (&v164 - v9);
  v173 = a1 >> 8;
  v177 = a1 >> 24;
  v178 = HIDWORD(a1);
  v179 = a1 >> 40;
  v180 = HIWORD(a1);
  v181 = HIBYTE(a1);
  v182 = a1;
  v183 = v3;
  v11 = &v3[qword_10059B890];
  swift_beginAccess();
  v12 = *(v11 + 1);
  v13 = *(v11 + 2);
  v175 = v11;

  v14 = NANConstants.csaMatterServiceName.unsafeMutableAddressor();
  v15 = *v14;
  v16 = v14[1];
  v17 = String.lowercased()();

  v18 = String.lowercased()();

  if (v17._countAndFlagsBits == v18._countAndFlagsBits && v17._object == v18._object)
  {
  }

  else
  {
    v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v19 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  v20 = NANFollowUpReceivedEvent.serviceInfo.getter(v196, v197, v198);
  if (v20 != 4)
  {
    v23 = v20;
    v24 = v21;
    v25 = v22;
    v26 = NANServiceInfo.csaMatterPayload.getter(v20, v21, v22);
    v28 = v27;
    sub_1001842D0(v23, v24, v25);
    if (v28 >> 60 != 15)
    {
      v65 = sub_1002EBB84();
      if (v65)
      {
        v66 = v65;
        isa = Data._bridgeToObjectiveC()().super.isa;
        v68 = WiFiAddress.apiAddress.getter(BYTE2(v182) | (v177 << 8) | (v178 << 16) & 0xFFFFFF0000FFFFFFLL | (v179 << 24) | (v180 << 32) | (v181 << 40));
        [v66 publishReceivedMessage:isa fromSubscriberID:v173 subscriberAddress:v68];
        sub_100017554(v26, v28);

        swift_unknownObjectRelease();
      }

      else
      {
        sub_100017554(v26, v28);
      }

      return;
    }
  }

LABEL_7:
  v29 = v182;
  v30 = (v182 >> 16);
  v31 = v198;
  Array<A>.retrieve(attribute:)(44, v198, v10);
  v32 = type metadata accessor for NANAttribute(0);
  v33 = *(v32 - 8);
  v34 = *(v33 + 48);
  v35 = v33 + 48;
  if (v34(v10, 1, v32) == 1)
  {
    sub_100016290(v10, &unk_100595C00, &qword_10048F790);
LABEL_13:
    v37 = v176;
    goto LABEL_14;
  }

  if (swift_getEnumCaseMultiPayload() != 39)
  {
    sub_100301450(v10, type metadata accessor for NANAttribute);
    goto LABEL_13;
  }

  v171 = v35;
  v36 = v10[1];
  v194 = *v10;
  *v195 = v36;
  *&v195[10] = *(v10 + 26);
  if (NANAttribute.PairingBootstrapping.type.getter() != 1)
  {
    v37 = v176;
    sub_1001440B0(&v194);
    goto LABEL_14;
  }

  v166 = v34;
  v167 = v31;
  v168 = v32;
  v170 = v29 >> 16;
  v69 = type metadata accessor for NANPublish.Configuration();
  v70 = v69;
  v71 = *&v175[*(v69 + 84) + 16];
  v72 = *(v71 + 16);
  v73 = _swiftEmptyArrayStorage;
  if (v72)
  {
    v169 = v69;
    *&v184[0] = _swiftEmptyArrayStorage;

    sub_1003678A8(0, v72, 0);
    v73 = *&v184[0];
    v74 = *(*&v184[0] + 16);
    v75 = 32;
    do
    {
      v76 = *(v71 + v75);
      *&v184[0] = v73;
      v77 = v73[3];
      if (v74 >= v77 >> 1)
      {
        sub_1003678A8((v77 > 1), v74 + 1, 1);
        v73 = *&v184[0];
      }

      v73[2] = v74 + 1;
      *(v73 + v74 + 32) = v76;
      v75 += 56;
      ++v74;
      --v72;
    }

    while (v72);

    v70 = v169;
  }

  *&v184[0] = v73;
  v79 = sub_10005DC58(&unk_100597490, &qword_1004B17B0);
  v80 = sub_100168950();
  v81 = Collection<>.strongestSupportedPairingKeySuite.getter(v79, v80);
  LOBYTE(v30) = v170;
  if (v81 == 8)
  {
    sub_1001440B0(&v194);

    LODWORD(v29) = v182;
    v37 = v176;
    v31 = v167;
    v32 = v168;
    v34 = v166;
    goto LABEL_14;
  }

  v165 = v81;

  v82 = v175;
  *&v83 = NANAttribute.PairingBootstrapping.Method.validAdvertisedMethod(from:)(*&v175[*(v70 + 100)]);
  if ((v83 & 0x10000) == 0)
  {
    v84 = v82[*(v70 + 84) + 24];
    v164 = v83;
    v169 = v70;
    if (v84)
    {
      v85 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v85 & 1) == 0)
      {
        LODWORD(v176) = 1;
        goto LABEL_63;
      }
    }

    else
    {
    }

    v99 = v183;
    v100 = Logger.logObject.getter();
    v101 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v100, v101))
    {
      v102 = swift_slowAlloc();
      *&v184[0] = swift_slowAlloc();
      *v102 = 136315394;
      v103 = v175[v169[21] + 24];

      if (v103)
      {
        if (v103 == 1)
        {
          v104 = 0xD000000000000032;
        }

        else
        {
          v104 = 0xD00000000000001FLL;
        }

        if (v103 == 1)
        {
          v105 = "Allow connection to all devices";
        }

        else
        {
          v105 = "OWE Key Generation";
        }
      }

      else
      {
        v104 = 0xD000000000000027;
        v105 = "rable devices only";
      }

      v106 = sub_100002320(v104, v105 | 0x8000000000000000, v184);

      *(v102 + 4) = v106;
      *(v102 + 12) = 2080;
      v107 = v170;
      v108 = NANPeerServiceIdentifier.description.getter(BYTE1(v182) | (v170 << 8) | (v177 << 16) & 0xFFFF000000FFFFFFLL | (v178 << 24) | (v179 << 32) & 0xFFFF00FFFFFFFFFFLL | (v180 << 40) | (v181 << 48));
      v110 = sub_100002320(v108, v109, v184);

      *(v102 + 14) = v110;
      _os_log_impl(&_mh_execute_header, v100, v101, "NAN-Pairing: In '%s' mode, rejecting Bootstrap Request from %s", v102, 0x16u);
      swift_arrayDestroy();
      LOBYTE(v30) = v107;
    }

    else
    {
    }

    LODWORD(v176) = 0;
LABEL_63:
    sub_1001852A4(&v196, v184);
    sub_1001852A4(&v196, v184);
    v111 = Logger.logObject.getter();
    v112 = static os_log_type_t.info.getter();
    if (!os_log_type_enabled(v111, v112))
    {
      sub_1003011F8(&v196);
      sub_1003011F8(&v196);

      LODWORD(v117) = v182;
      goto LABEL_71;
    }

    v113 = swift_slowAlloc();
    v114 = swift_slowAlloc();
    v115 = v30;
    v116 = v114;
    *&v184[0] = v114;
    *v113 = 136315394;
    LODWORD(v117) = v182;
    v118 = NANPeerServiceIdentifier.description.getter(BYTE1(v182) | (v115 << 8) | (v177 << 16) & 0xFFFF000000FFFFFFLL | (v178 << 24) | (v179 << 32) & 0xFFFF00FFFFFFFFFFLL | (v180 << 40) | (v181 << 48));
    v120 = sub_100002320(v118, v119, v184);

    *(v113 + 4) = v120;
    *(v113 + 12) = 2048;
    v121 = NANFollowUpReceivedEvent.followUpMessage.getter(v196, v197, v198);
    if (!v121)
    {
      sub_1003011F8(&v196);
      v125 = 0;
      goto LABEL_70;
    }

    v122 = NANGenericServiceProtocol.textInfo.getter(v121);
    v124 = v123;

    if (v124 >> 60 == 15)
    {
      goto LABEL_66;
    }

    v162 = v124 >> 62;
    if ((v124 >> 62) > 1)
    {
      if (v162 != 2)
      {
        sub_100017554(v122, v124);
LABEL_66:
        sub_1003011F8(&v196);
        v125 = 0;
LABEL_67:
        LODWORD(v117) = v182;
LABEL_70:
        *(v113 + 14) = v125;
        sub_1003011F8(&v196);
        _os_log_impl(&_mh_execute_header, v111, v112, "NAN-Pairing: Received Bootstrap Request from %s, TXT Record size: %ld bytes", v113, 0x16u);
        sub_100002A00(v116);

LABEL_71:
        sub_1001852A4(&v196, v184);
        v126 = Logger.logObject.getter();
        v127 = static os_log_type_t.debug.getter();
        sub_1003011F8(&v196);
        if (os_log_type_enabled(v126, v127))
        {
          v128 = swift_slowAlloc();
          v129 = swift_slowAlloc();
          *&v184[0] = v129;
          *v128 = 136315138;
          v130 = NANFollowUpReceivedEvent.followUpMessage.getter(v196, v197, v198);
          if (v130 && (v131 = NANGenericServiceProtocol.apiPublishServiceSpecificInfo.getter(v130), , v131))
          {
            v132 = WiFiAwarePublishServiceSpecificInfo.pairingSSI.getter();
          }

          else
          {
            v132 = 0;
          }

          v189 = v132;
          sub_10005DC58(&unk_100595C60, &unk_1004AFD30);
          v133 = String.init<A>(describing:)();
          v135 = sub_100002320(v133, v134, v184);

          *(v128 + 4) = v135;
          _os_log_impl(&_mh_execute_header, v126, v127, "Received Pairing SSI: %s", v128, 0xCu);
          sub_100002A00(v129);

          LODWORD(v117) = v182;
        }

        else
        {
        }

        v136 = NANFollowUpReceivedEvent.followUpMessage.getter(v196, v197, v198);
        v137 = v169;
        if (v136 && (v138 = NANGenericServiceProtocol.apiPublishServiceSpecificInfo.getter(v136), , v138))
        {
          WiFiAwarePublishServiceSpecificInfo.pairingMetadata.getter(v191);
          v139 = v191[1];
          v173 = v191[2];
          v174 = v191[0];
          v171 = v191[4];
          v172 = v191[3];
          v168 = v191[5];
        }

        else
        {
          v173 = 0;
          v174 = 0;
          v139 = 0;
          v171 = 0;
          v172 = 0;
          v168 = 0;
        }

        if (v175[v137[21] + 24] && v175[v137[21] + 24] == 1)
        {
        }

        else
        {
          v140 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v140 & 1) == 0)
          {
            goto LABEL_91;
          }
        }

        if (!v139 || !*&v183[qword_10059B8B8 + 8])
        {
          v141 = Logger.logObject.getter();
          v142 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v141, v142))
          {
            v143 = swift_slowAlloc();
            v144 = swift_slowAlloc();
            *&v184[0] = v144;
            *v143 = 136315138;
            v145 = NANPeerServiceIdentifier.description.getter(BYTE1(v117) | (v170 << 8) | (v177 << 16) & 0xFFFF000000FFFFFFLL | (v178 << 24) | (v179 << 32) & 0xFFFF00FFFFFFFFFFLL | (v180 << 40) | (v181 << 48));
            v117 = sub_100002320(v145, v146, v184);

            *(v143 + 4) = v117;
            BYTE2(v117) = BYTE2(v182);
            _os_log_impl(&_mh_execute_header, v141, v142, "NAN-Pairing: Missing required pairing metadata in Bootstrap Request from %s. TXT Record: ", v143, 0xCu);
            sub_100002A00(v144);
            v137 = v169;
          }

          LODWORD(v176) = 0;
        }

LABEL_91:
        v147 = v183;
        v148 = *&v183[qword_100595970];
        swift_unownedRetainStrong();
        sub_10040CAE8();

        v149 = *v175;
        v150 = &v147[qword_10059B8B8];
        v151 = *&v147[qword_10059B8B8 + 8];
        if (v151)
        {
          if (v139)
          {
            v152 = *v150;
            v153 = *(v150 + 2);
            v154 = *(v150 + 6);
            v155 = *(v150 + 5);
            *(&v184[1] + 8) = *(v150 + 24);
            *&v184[0] = v152;
            *(&v184[0] + 1) = v151;
            *&v184[1] = v153;
            *(&v184[2] + 1) = v155;
            *&v185 = v154;
            *(&v185 + 1) = v174;
            *&v186 = v139;
            *(&v186 + 1) = v173;
            *&v187 = v172;
            *(&v187 + 1) = v171;
            v188 = v168;

            goto LABEL_96;
          }
        }

        else
        {
          sub_10030124C(v174, v139);
        }

        v188 = 0;
        v186 = 0u;
        v187 = 0u;
        v185 = 0u;
        memset(v184, 0, sizeof(v184));
LABEL_96:
        v192[4] = v186;
        v192[5] = v187;
        v193 = v188;
        v192[0] = v184[0];
        v192[1] = v184[1];
        v192[2] = v184[2];
        v192[3] = v185;
        v156 = sub_10033A38C(BYTE2(v117) | (v177 << 8) | (v178 << 16) & 0xFFFFFF0000FFFFFFLL | (v179 << 24) | (v180 << 32) | (v181 << 40), v149, v165, v192);
        v158 = v157;
        sub_100016290(v184, &qword_1005968A0, &unk_100499050);

        if (v158)
        {
          v159 = qword_10059BC80;
          v160 = *&v156[qword_10059BC80];
          if (!v160)
          {
            v160 = sub_1002EB358();
            v161 = *&v156[v159];
          }

          *&v156[v159] = v160;
          swift_unknownObjectRetain();
          swift_unknownObjectRelease();
          sub_1004356C8(v196, v197, v198, v164, v175[v137[26]], v176, v175[v137[31]] & 1);
          sub_1001440B0(&v194);
        }

        else
        {

          sub_1001440B0(&v194);
        }

        return;
      }

      v163 = *(v122 + 16);
      v174 = *(v122 + 24);
      sub_100017554(v122, v124);
      sub_1003011F8(&v196);
      v125 = v174 - v163;
      if (!__OFSUB__(v174, v163))
      {
        goto LABEL_67;
      }

      __break(1u);
    }

    else if (!v162)
    {
      sub_100017554(v122, v124);
      sub_1003011F8(&v196);
      v125 = BYTE6(v124);
      goto LABEL_67;
    }

    sub_100017554(v122, v124);
    sub_1003011F8(&v196);
    LODWORD(v125) = HIDWORD(v122) - v122;
    if (__OFSUB__(HIDWORD(v122), v122))
    {
      __break(1u);
      return;
    }

    v125 = v125;
    goto LABEL_67;
  }

  sub_1001440B0(&v194);
  LODWORD(v29) = v182;
  v37 = v176;
  v31 = v167;
  v32 = v168;
  v34 = v166;
LABEL_14:
  Array<A>.retrieve(attribute:)(36, v31, v37);
  if (v34(v37, 1, v32) == 1)
  {
    sub_100016290(v37, &unk_100595C00, &qword_10048F790);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    sub_100301450(v37, type metadata accessor for NANAttribute);
    if (EnumCaseMultiPayload == 32)
    {
      v39 = *&v183[qword_100595970];
      swift_unownedRetainStrong();
      v40 = sub_10040CAE8();

      v41 = qword_10059B9C8;
      swift_beginAccess();
      v42 = *(v40 + v41);

      v199 = v30;
      v200 = v177;
      v201 = v178;
      v202 = v179;
      v203 = v180;
      v204 = v181;
      v43 = *(v174 + 80);
      v44 = *(v174 + 88);
      _s17InitiatorInstanceCMa_0();
      _s17ResponderInstanceCMa_0();
      type metadata accessor for Either();
      sub_1002CAFC4();
      Dictionary.subscript.getter();

      v45 = v190;
      if (v190 != 255)
      {
        v46 = v189;
        sub_100428AE8(v196, v197, v198, v189, v190 & 1);
        sub_1002CB018(v46, v45);
        return;
      }
    }
  }

  v47 = NANFollowUpReceivedEvent.followUpMessage.getter(v196, v197, v198);
  if (v47)
  {
    v48 = v47;
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = v30;
      v30 = swift_slowAlloc();
      v189 = v30;
      *v51 = 136315138;
      v53 = NANPeerServiceIdentifier.description.getter(BYTE1(v29) | (v52 << 8) | (v177 << 16) & 0xFFFF000000FFFFFFLL | (v178 << 24) | (v179 << 32) & 0xFFFF00FFFFFFFFFFLL | (v180 << 40) | (v181 << 48));
      v29 = sub_100002320(v53, v54, &v189);

      *(v51 + 4) = v29;
      LODWORD(v29) = v182;
      _os_log_impl(&_mh_execute_header, v49, v50, "Received a follow up message from %s", v51, 0xCu);
      sub_100002A00(v30);
      LOBYTE(v30) = v52;
    }

    if ((NANGenericServiceProtocol.furtherServiceDiscoveryFollowUp.getter(v48) & 1) == 0)
    {
      goto LABEL_25;
    }

    if (v175[*(type metadata accessor for NANPublish.Configuration() + 96)] != 1)
    {
      goto LABEL_25;
    }

    v55 = v175[77];
    if (v55 == 2)
    {
      goto LABEL_25;
    }

    if (v55)
    {
      v78 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v78 & 1) == 0)
      {
LABEL_25:
        v56 = BYTE1(v29) | (v30 << 8) | (v177 << 16) & 0xFFFF000000FFFFFFLL | (v178 << 24) | (v179 << 32) & 0xFFFF00FFFFFFFFFFLL | (v180 << 40) | (v181 << 48);
        v57 = v183;
        sub_1002FDCA0(v48, v56);
        sub_1002FEE4C(v48, v57, v56);

        return;
      }
    }

    else
    {
    }

    v86 = *&v183[qword_100595970];
    swift_unownedRetainStrong();
    v87 = sub_10040CAE8();

    v88 = *(v87 + *(*v87 + 296));

    v89 = v175;
    v90 = *(v175 + 3);

    v91 = NANGenericServiceProtocol.AttributeFilter.standardizedAttributes.unsafeMutableAddressor();
    LODWORD(v90) = NANServiceInfo.init(information:filter:)(v90, *v91);
    v93 = v92;
    v95 = v94;
    v96 = *v89;
    v97 = type metadata accessor for NANIdentityKey(0);
    v98 = v172;
    (*(*(v97 - 8) + 56))(v172, 1, 1, v97);
    sub_10036DE50(v90, v93, v95, _swiftEmptyArrayStorage, BYTE2(v29) | (v177 << 8) | (v178 << 16) & 0xFFFFFF0000FFFFFFLL | (v179 << 24) | (v180 << 32) | (v181 << 40), v173, v96, v98);
    sub_1000124C8(v93, v95);

    sub_100016290(v98, &unk_100595C50, &unk_1004AFD20);
  }

  else
  {
    v58 = Logger.logObject.getter();
    v59 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v189 = v61;
      *v60 = 136315138;
      v62 = NANPeerServiceIdentifier.description.getter(BYTE1(v29) | (v30 << 8) | (v177 << 16) & 0xFFFF000000FFFFFFLL | (v178 << 24) | (v179 << 32) & 0xFFFF00FFFFFFFFFFLL | (v180 << 40) | (v181 << 48));
      v64 = sub_100002320(v62, v63, &v189);

      *(v60 + 4) = v64;
      _os_log_impl(&_mh_execute_header, v58, v59, "Failed to parse the follow up received from %s", v60, 0xCu);
      sub_100002A00(v61);
    }
  }
}

uint64_t sub_1002F95BC(uint64_t a1)
{
  v3 = qword_10059B890;
  swift_beginAccess();
  sub_100301304(a1, v1 + v3, type metadata accessor for NANPublish.Configuration);
  return swift_endAccess();
}

uint64_t sub_1002F9630(uint64_t a1, unint64_t a2, int a3)
{
  v7 = v3;

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v18 = v12;
    *v10 = 138412802;
    *(v10 + 4) = v7;
    *v11 = v7;
    *(v10 + 12) = 2080;
    v13 = v7;
    *(v10 + 14) = sub_100002320(a1, a2, &v18);
    *(v10 + 22) = 1024;
    *(v10 + 24) = a3;
    _os_log_impl(&_mh_execute_header, v8, v9, "%@ updated bundleID to: %s and pid to %d", v10, 0x1Cu);
    sub_100016290(v11, &qword_10058B780, &qword_100480AC0);

    sub_100002A00(v12);
  }

  v14 = &v7[qword_10059B8C8];
  v15 = *&v7[qword_10059B8C8 + 8];
  *v14 = a1;
  v14[1] = a2;

  v16 = &v7[qword_1005959C8];
  *v16 = a3;
  v16[4] = 0;

  result = static LaunchServiceRecord.isExternalApi(for:)(a1, a2);
  v7[qword_1005959D0] = result & 1;
  return result;
}

uint64_t sub_1002F9804(uint64_t a1, uint64_t a2)
{
  result = sub_1002EBB84();
  if (result)
  {
    v5 = result;
    v6 = WiFiAddress.apiAddress.getter(a2 & 0xFFFFFFFFFFFFLL);
    [v5 publishDetectedMulticastError:a1 fromMulticastReceiver:v6];

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1002F9888(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1002EBB84();
  if (result)
  {
    v5 = result;
    isa = Data._bridgeToObjectiveC()().super.isa;
    v7 = WiFiAddress.apiAddress.getter(a3 & 0xFFFFFFFFFFFFLL);
    [v5 publishReceivedDataBlobForMulticastSession:isa fromPeer:v7];

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1002F9930()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = Strong;
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      *v5 = 138412290;
      *(v5 + 4) = v2;
      *v6 = v1;
      v7 = v2;
      _os_log_impl(&_mh_execute_header, v3, v4, "%@ timed out while waiting for terminate event", v5, 0xCu);
      sub_100016290(v6, &qword_10058B780, &qword_100480AC0);
    }

    v8 = sub_1002EBB84();
    if (v8)
    {
      [v8 publishTerminatedWithReason:2];
      swift_unknownObjectRelease();
    }

    v9 = sub_1002EBB84();
    if (v9)
    {
      v10 = v9;
      v12[3] = swift_getObjectType();
      v12[0] = v10;
      swift_unknownObjectRetain();
      sub_1002F7B8C(v12);
      swift_unknownObjectRelease();
      sub_100002A00(v12);
    }

    v11 = *&v2[qword_100595970];
    swift_unownedRetainStrong();
    sub_10040CAE8();

    sub_100339E14(v2);

    sub_1002EF5A4(1, 12);
  }
}

void sub_1002F9B10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(v3 + qword_10059B898) == 1)
  {
    v4 = swift_isaMask & *v3;
    WiFiAwarePublisherDataSessionHandle.peerServiceIdentifier.getter();
    v5 = qword_10059B8C0;
    swift_beginAccess();
    v6 = *(v3 + v5);
    v7 = *(v4 + 80);
    v8 = *(v4 + 88);
    _s17ResponderInstanceCMa();
    sub_10020CB70();
    Dictionary.subscript.getter();
    v9 = v20;
    if (v20)
    {
      swift_endAccess();
      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        *v12 = 0;
        _os_log_impl(&_mh_execute_header, v10, v11, "registerdatapathResponderTerminateCallback ", v12, 2u);
      }

      v13 = (&v20->isa + qword_10059B828);
      v14 = *(&v20->isa + qword_10059B828);
      v15 = *(&v20[1].isa + qword_10059B828);
      *v13 = a2;
      v13[1] = a3;
      sub_100010520(v14);

      goto LABEL_9;
    }

    swift_endAccess();
  }

  v9 = Logger.logObject.getter();
  v16 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v9, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v9, v16, "registerdatapathResponderTerminateCallback failed", v17, 2u);
  }

LABEL_9:
}

uint64_t sub_1002F9D70(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v4;
  v9 = swift_isaMask;
  v10 = *(*(type metadata accessor for NANPublish.Configuration() - 8) + 64);
  __chkstk_darwin();
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *((v9 & v8) + 0x50);
  v14 = *((v9 & v8) + 0x58);
  v15 = _s8InstanceC21NANPublishClientProxyVMa();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin();
  v19 = &v23 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v21 = &v23 - v20;
  sub_1003013DC(a2, v12, type metadata accessor for NANPublish.Configuration);
  *v21 = a3;
  *(v21 + 1) = a1;
  sub_10030129C(v12, &v21[*(v15 + 40)], type metadata accessor for NANPublish.Configuration);
  (*(v16 + 16))(v19, v21, v15);
  swift_beginAccess();
  type metadata accessor for Array();
  swift_unknownObjectRetain();
  Array.append(_:)();
  swift_endAccess();
  sub_1002EC180();
  return (*(v16 + 8))(v21, v15);
}

uint64_t sub_1002F9FB0()
{
  v0 = type metadata accessor for DispatchPredicate();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin();
  v4 = (&v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = OS_dispatch_queue.nan.unsafeMutableAddressor();
  v6 = *v5;
  *v4 = *v5;
  (*(v1 + 104))(v4, enum case for DispatchPredicate.onQueue(_:), v0);
  v7 = v6;
  LOBYTE(v6) = _dispatchPreconditionTest(_:)();
  result = (*(v1 + 8))(v4, v0);
  if (v6)
  {
    return sub_1002F29CC();
  }

  __break(1u);
  return result;
}

void sub_1002FA0C0(void *a1)
{
  v1 = a1;
  sub_1002F9FB0();
}

void sub_1002FA108(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v4 = v3;
  v7 = swift_isaMask & *v3;
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin();
  v12 = (&v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = OS_dispatch_queue.nan.unsafeMutableAddressor();
  v14 = *v13;
  *v12 = *v13;
  (*(v9 + 104))(v12, enum case for DispatchPredicate.onQueue(_:), v8);
  v15 = v14;
  LOBYTE(v14) = _dispatchPreconditionTest(_:)();
  (*(v9 + 8))(v12, v8);
  if (v14)
  {
    if (*(v3 + qword_10059B898) == 1)
    {
      v34 = a2;
      v35 = a3;
      v16 = WiFiAwarePublisherDataSessionHandle.peerServiceIdentifier.getter();
      v17 = v16;
      v18 = v16 >> 8;
      v19 = v16 >> 16;
      v20 = v16 >> 24;
      v21 = HIDWORD(v16);
      v22 = v16 >> 40;
      v23 = qword_10059B8C0;
      v24 = HIWORD(v16);
      swift_beginAccess();
      v25 = *(v4 + v23);
      v36 = v17;
      v37 = v18;
      v38 = v19;
      v39 = v20;
      v40 = v21;
      v41 = v22;
      v42 = v24;
      v26 = *(v7 + 80);
      v27 = *(v7 + 88);
      _s17ResponderInstanceCMa();
      sub_10020CB70();
      Dictionary.subscript.getter();
      v28 = v43;
      if (v43)
      {
        swift_endAccess();
        v29 = &v28[qword_10059B820];
        v30 = *&v28[qword_10059B820];
        v31 = *&v28[qword_10059B820 + 8];
        v32 = v35;
        *v29 = v34;
        *(v29 + 1) = v32;
        sub_100010520(v30);

        sub_1002C1BE0();

        return;
      }

      swift_endAccess();
      a2 = v34;
    }

    a2(3);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1002FA3AC(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v8 = (&v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = OS_dispatch_queue.nan.unsafeMutableAddressor();
  v10 = *v9;
  *v8 = *v9;
  (*(v5 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v4);
  v11 = v10;
  LOBYTE(v10) = _dispatchPreconditionTest(_:)();
  result = (*(v5 + 8))(v8, v4);
  if (v10)
  {
    if (*(v2 + qword_10059B8B0))
    {
      v13 = *(v2 + qword_10059B8B0);

      v14 = WiFiMACAddress.wifiAddress.getter();
      sub_100318F44(v14 & 0xFFFFFFFFFFFFLL);
    }

    return a2(0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1002FA544(uint64_t a1, unint64_t a2, void *a3, unsigned int a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v69 = a4;
  v68 = a3;
  v11 = *(*(sub_10005DC58(&unk_100595C50, &unk_1004AFD20) - 8) + 64);
  __chkstk_darwin();
  v13 = &v62 - v12;
  v14 = type metadata accessor for DispatchPredicate();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin();
  v18 = (&v62 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = OS_dispatch_queue.nan.unsafeMutableAddressor();
  v20 = *v19;
  *v18 = *v19;
  (*(v15 + 104))(v18, enum case for DispatchPredicate.onQueue(_:), v14);
  v21 = v20;
  LOBYTE(v20) = _dispatchPreconditionTest(_:)();
  result = (*(v15 + 8))(v18, v14);
  if ((v20 & 1) == 0)
  {
    __break(1u);
    return result;
  }

  if (v6[qword_10059B898] != 1)
  {
    return a5(3);
  }

  v66 = a6;
  v67 = a5;
  v23 = &v6[qword_10059B890];
  swift_beginAccess();
  v65 = v23;
  v24 = *(v23 + 1);
  v25 = *(v23 + 2);

  v26 = NANConstants.csaMatterServiceName.unsafeMutableAddressor();
  v27 = *v26;
  v28 = v26[1];
  v29 = String.lowercased()();

  v30 = String.lowercased()();

  if (v29._countAndFlagsBits == v30._countAndFlagsBits && v29._object == v30._object)
  {
  }

  else
  {
    v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v31 & 1) == 0)
    {
      rawValue = NANGenericServiceProtocol.init()().attributes._rawValue;
      sub_10000AB0C(a1, a2);
      NANGenericServiceProtocol.blob.setter(a1, a2);
      v36 = rawValue;
      v37 = NANGenericServiceProtocol.AttributeFilter.all.unsafeMutableAddressor();
      v64 = NANServiceInfo.init(information:filter:)(v36, *v37);
      v33 = v38;
      v35 = v39;
      goto LABEL_10;
    }
  }

  v64 = NANServiceInfo.init(csaMatterPayload:)();
  v33 = v32;
  v35 = v34;
  sub_10000AB0C(a1, a2);
LABEL_10:
  v40 = v68;
  v41 = v6;
  v42 = v40;
  v43 = Logger.logObject.getter();
  v44 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v63 = v35;
    v47 = v46;
    v48 = swift_slowAlloc();
    v68 = v33;
    v49 = v48;
    rawValue = v48;
    *v45 = 138412546;
    *(v45 + 4) = v41;
    *v47 = v41;
    *(v45 + 12) = 2080;
    v50 = v41;
    v51 = WiFiMACAddress.wifiAddress.getter();
    v52 = WiFiAddress.description.getter(v51 & 0xFFFFFFFFFFFFLL);
    v54 = sub_100002320(v52, v53, &rawValue);

    *(v45 + 14) = v54;
    _os_log_impl(&_mh_execute_header, v43, v44, "%@ publisher sending follow-up to %s", v45, 0x16u);
    sub_100016290(v47, &qword_10058B780, &qword_100480AC0);
    v35 = v63;

    sub_100002A00(v49);
    v33 = v68;
  }

  v55 = v67;
  v56 = *&v41[qword_100595970];
  swift_unownedRetainStrong();
  v57 = sub_10040CAE8();

  v58 = *(v57 + *(*v57 + 296));

  v59 = WiFiMACAddress.wifiAddress.getter();
  v60 = *v65;
  v61 = type metadata accessor for NANIdentityKey(0);
  (*(*(v61 - 8) + 56))(v13, 1, 1, v61);
  sub_10036DE50(v64, v33, v35, _swiftEmptyArrayStorage, v59 & 0xFFFFFFFFFFFFLL, v69, v60, v13);

  sub_100016290(v13, &unk_100595C50, &unk_1004AFD20);
  v55(0);
  return sub_1000124C8(v33, v35);
}

void sub_1002FAA90(void *a1, int a2, void *a3, void *a4, unsigned int a5, void *aBlock)
{
  v10 = _Block_copy(aBlock);
  v11 = a3;
  v12 = a4;
  v17 = a1;
  v13 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  v16 = swift_allocObject();
  *(v16 + 16) = v10;
  sub_1002FA544(v13, v15, v12, a5, sub_1000114BC, v16);

  sub_1000124C8(v13, v15);
}

uint64_t sub_1002FAB84(uint64_t a1, unint64_t a2, uint64_t a3, char a4, uint64_t (*a5)(uint64_t))
{
  v22 = a2;
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin();
  v14 = (&v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = OS_dispatch_queue.nan.unsafeMutableAddressor();
  v16 = *v15;
  *v14 = *v15;
  (*(v11 + 104))(v14, enum case for DispatchPredicate.onQueue(_:), v10);
  v17 = v16;
  LOBYTE(v16) = _dispatchPreconditionTest(_:)();
  result = (*(v11 + 8))(v14, v10);
  if (v16)
  {
    if (*(v5 + qword_10059B898) == 1)
    {
      if (*(v5 + qword_10059B8B0))
      {
        v19 = *(v5 + qword_10059B8B0);

        if (a3)
        {
          v20 = WiFiMACAddress.wifiAddress.getter() & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          v20 = 0;
        }

        v23 = a3 == 0;
        sub_10031BEB8(a1, v22, v20 | ((a3 == 0) << 48), a4 & 1);
      }

      v21 = 0;
    }

    else
    {
      v21 = 3;
    }

    return a5(v21);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1002FAD4C(void *a1, int a2, void *a3, void *a4, char a5, void *aBlock)
{
  v10 = _Block_copy(aBlock);
  v11 = a3;
  v12 = a4;
  v16 = a1;
  v13 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  *(swift_allocObject() + 16) = v10;
  sub_1002FAB84(v13, v15, a4, a5, sub_1000114BC);

  sub_1000124C8(v13, v15);
}

uint64_t sub_1002FAE48(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    rawValue = WiFiAwarePublishDatapathServiceSpecificInfo.genericServiceProtocol.getter();
  }

  else
  {
    rawValue = NANGenericServiceProtocol.init()().attributes._rawValue;
  }

  v4 = rawValue;
  v5 = a1 + qword_10059B890;
  swift_beginAccess();
  v6 = v5 + *(type metadata accessor for NANPublish.Configuration() + 84);
  v7 = *(v6 + 8);
  *(v6 + 8) = v4;

  return sub_1002F22E8();
}

uint64_t sub_1002FAF28(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3, void (*a4)(uint64_t))
{
  ObjectType = swift_getObjectType();
  v9 = type metadata accessor for DispatchPredicate();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin();
  v13 = (&v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = OS_dispatch_queue.nan.unsafeMutableAddressor();
  v15 = *v14;
  *v13 = *v14;
  (*(v10 + 104))(v13, enum case for DispatchPredicate.onQueue(_:), v9);
  v16 = v15;
  LOBYTE(v15) = _dispatchPreconditionTest(_:)();
  result = (*(v10 + 8))(v13, v9);
  if (v15)
  {
    if (*(v4 + qword_10059B898) == 1)
    {
      __chkstk_darwin();
      *(&v20 - 2) = v4;
      *(&v20 - 1) = a1;
      WitnessTable = swift_getWitnessTable();
      sub_10036E438(a4, &v20 - 32, ObjectType, WitnessTable);
      v19 = 0;
    }

    else
    {
      v19 = 3;
    }

    return a2(v19);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1002FB128(uint64_t a1, void *a2)
{
  v3 = a1 + qword_10059B890;
  swift_beginAccess();
  v22 = *(v3 + 24);
  if (!a2)
  {

    NANGenericServiceProtocol.blob.setter(0, 0xF000000000000000);
    NANGenericServiceProtocol.textInfo.setter(0, 0xF000000000000000);
    v9 = 0;
LABEL_11:
    v19 = 0;
    goto LABEL_12;
  }

  v4 = [a2 blob];
  if (v4)
  {
    v5 = v4;
    v6 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0xF000000000000000;
  }

  NANGenericServiceProtocol.blob.setter(v6, v8);
  v10 = [a2 txtRecordData];
  if (v10)
  {
    v11 = v10;
    v12 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;
  }

  else
  {
    v12 = 0;
    v14 = 0xF000000000000000;
  }

  NANGenericServiceProtocol.textInfo.setter(v12, v14);
  v9 = [a2 instanceName];
  if (!v9)
  {
    goto LABEL_11;
  }

  v15 = v9;
  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;

  v19 = v18;
  v9 = v16;
LABEL_12:
  NANGenericServiceProtocol.instanceName.setter(v9, v19);
  v20 = *(v3 + 24);
  *(v3 + 24) = v22;
  ++*(v3 + 32);

  *(v3 + 77) = sub_1002F2178();
  return sub_1002F22E8();
}

uint64_t sub_1002FB310(void *a1, int a2, void *a3, void *aBlock, uint64_t a5, uint64_t (*a6)(uint64_t), void (*a7)(uint64_t))
{
  v11 = _Block_copy(aBlock);
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  v13 = a3;
  v14 = a1;
  sub_1002FAF28(a3, a6, v12, a7);
}

uint64_t sub_1002FB3B8(uint64_t a1, uint64_t a2)
{
  v4 = *(*(sub_10005DC58(&unk_100595BF0, &unk_1004AFCF8) - 8) + 64);
  __chkstk_darwin();
  v6 = &v16[-v5];
  v7 = type metadata accessor for NANPublish.Configuration();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin();
  v11 = &v16[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_100012400(a2, v6, &unk_100595BF0, &unk_1004AFCF8);
  v12 = *(v8 + 48);
  if (v12(v6, 1, v7) == 1)
  {
    v13 = qword_10059B890;
    swift_beginAccess();
    sub_1003013DC(a1 + v13, v11, type metadata accessor for NANPublish.Configuration);
    if (v12(v6, 1, v7) != 1)
    {
      sub_100016290(v6, &unk_100595BF0, &unk_1004AFCF8);
    }
  }

  else
  {
    sub_10030129C(v6, v11, type metadata accessor for NANPublish.Configuration);
  }

  v14 = a1 + qword_10059B890;
  swift_beginAccess();
  sub_10030018C(v11, v14);
  swift_endAccess();
  *(v14 + 77) = sub_1002F2178();
  return sub_1002F22E8();
}

uint64_t sub_1002FB5E4(void *a1, uint64_t (*a2)(uint64_t, uint64_t, unint64_t))
{
  v3 = *v2;
  v4 = swift_isaMask;
  WiFiAwarePublisherDataSessionHandle.peerServiceIdentifier.getter();
  v5 = *(v2 + qword_100595970);
  swift_unownedRetainStrong();
  v6 = sub_10040CAE8();

  v7 = qword_10059B9C8;
  swift_beginAccess();
  v8 = *(v6 + v7);

  v9 = *((v4 & v3) + 0x50);
  v10 = *((v4 & v3) + 0x58);
  _s17InitiatorInstanceCMa_0();
  _s17ResponderInstanceCMa_0();
  type metadata accessor for Either();
  sub_1002CAFC4();
  Dictionary.subscript.getter();

  if (v27 == 255)
  {
    v15 = a1;
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v26 = v19;
      *v18 = 136315138;
      v20 = WiFiAwarePublisherDataSessionHandle.peerServiceIdentifier.getter();
      v21 = NANPeerServiceIdentifier.description.getter(v20 & 0xFFFFFFFFFFFFFFLL);
      v23 = sub_100002320(v21, v22, &v26);

      *(v18 + 4) = v23;
      _os_log_impl(&_mh_execute_header, v16, v17, "Unable to get diversified pin for %s because there is no active pairing session", v18, 0xCu);
      sub_100002A00(v19);
    }

    return a2(3, 0x303030303030, 0xE600000000000000);
  }

  else
  {
    v11 = sub_100440B3C(v26);
    v13 = v12;

    a2(0, v11, v13);

    return sub_1002CB018(v26, v27);
  }
}

uint64_t sub_1002FB908(unint64_t a1, uint64_t (*a2)(uint64_t))
{
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin();
  v9 = (&v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = OS_dispatch_queue.nan.unsafeMutableAddressor();
  v11 = *v10;
  *v9 = *v10;
  (*(v6 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v5);
  v12 = v11;
  LOBYTE(v11) = _dispatchPreconditionTest(_:)();
  result = (*(v6 + 8))(v9, v5);
  if (v11)
  {
    if (v2[qword_10059B898] == 1 && (v14 = qword_1005959B0, *&v2[qword_1005959B0]) && (v2[qword_1005959B8] & 1) == 0)
    {
      if (a1 && (v16 = &v2[qword_1005959C0], swift_beginAccess(), v17 = *v16, v18 = *(v16 + 1), static Duration.+ infix(_:_:)(), (static Duration.< infix(_:_:)() & 1) == 0))
      {
        v19 = &v2[qword_10059B890];
        swift_beginAccess();
        *&v19[*(type metadata accessor for NANPublish.Configuration() + 120)] = a1;
        v20 = v2;
        v34 = v2;
        v21 = Logger.logObject.getter();
        v22 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v21, v22))
        {
          v23 = swift_slowAlloc();
          v24 = swift_slowAlloc();
          *v23 = 138412290;
          *(v23 + 4) = v20;
          *v24 = v20;
          v25 = v20;
          _os_log_impl(&_mh_execute_header, v21, v22, "%@ cancelling current expiry timer", v23, 0xCu);
          sub_100016290(v24, &qword_10058B780, &qword_100480AC0);
        }

        v26 = *&v34[v14];
        *&v34[v14] = 0;

        v27 = v20;
        v28 = Logger.logObject.getter();
        v29 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v28, v29))
        {
          v30 = swift_slowAlloc();
          v31 = swift_slowAlloc();
          *v30 = 138412546;
          *(v30 + 4) = v27;
          *v31 = v27;
          *(v30 + 12) = 2048;
          *(v30 + 14) = a1;
          v32 = v27;
          _os_log_impl(&_mh_execute_header, v28, v29, "%@ setting new timeout to %lu seconds", v30, 0x16u);
          sub_100016290(v31, &qword_10058B780, &qword_100480AC0);
        }

        sub_1002EEB78(a1);
        v15 = 0;
      }

      else
      {
        v15 = 2;
      }
    }

    else
    {
      v15 = 3;
    }

    return a2(v15);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1002FBCDC(void *a1, int a2, unint64_t a3, void *aBlock)
{
  v6 = _Block_copy(aBlock);
  *(swift_allocObject() + 16) = v6;
  v7 = a1;
  sub_1002FB908(a3, sub_1000104E4);
}

void sub_1002FBD70(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v43 = a1;
  v5 = *(*((swift_isaMask & *v2) + 0x58) + 8);
  v44 = *((swift_isaMask & *v2) + 0x50);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin();
  v10 = &v39 - v9;
  v11 = type metadata accessor for DispatchPredicate();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin();
  v15 = (&v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = OS_dispatch_queue.nan.unsafeMutableAddressor();
  v17 = *v16;
  *v15 = *v16;
  (*(v12 + 104))(v15, enum case for DispatchPredicate.onQueue(_:), v11);
  v18 = v17;
  LOBYTE(v17) = _dispatchPreconditionTest(_:)();
  (*(v12 + 8))(v15, v11);
  if (v17)
  {
    v39 = AssociatedTypeWitness;
    v40 = v10;
    v41 = v7;
    v42 = a2;
    v19 = WiFiAwarePublisherDataSessionHandle.peerServiceIdentifier.getter();
    v20 = v19;
    v21 = v19 >> 8;
    v22 = v19 >> 16;
    v23 = v19 >> 24;
    v24 = HIDWORD(v19);
    v25 = v19 >> 40;
    v26 = qword_10059B8C0;
    v27 = HIWORD(v19);
    swift_beginAccess();
    v28 = *(v3 + v26);
    v45 = v20;
    v46 = v21;
    v47 = v22;
    v48 = v23;
    v49 = v24;
    v50 = v25;
    v51 = v27;
    _s17ResponderInstanceCMa();
    sub_10020CB70();
    Dictionary.subscript.getter();
    v29 = v52;
    if (v52)
    {
      swift_endAccess();
      v30 = v43;
      sub_1002BE864(v43);
      v31 = *(v3 + qword_100595970);
      swift_unownedRetainStrong();
      sub_10040CAE8();

      sub_100339E28();

      swift_unownedRetainStrong();
      sub_10040CAE8();

      sub_100339E54();

      swift_unownedRetainStrong();
      v32 = *(*v31 + 96);
      swift_beginAccess();
      v33 = v41;
      v34 = v31 + v32;
      v36 = v39;
      v35 = v40;
      (*(v41 + 16))(v40, v34, v39);

      v37 = WiFiAwarePublisherDataSessionHandle.peerServiceIdentifier.getter();
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      (*(AssociatedConformanceWitness + 400))(v30, v37 & 0xFFFFFFFFFFFFFFLL, v36, AssociatedConformanceWitness);
      (*(v33 + 8))(v35, v36);
    }

    else
    {
      swift_endAccess();
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1002FC304(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v7 = a1;
  sub_1002FBD70(a3, v6);
}

void sub_1002FC374(void *a1, void (*a2)(uint64_t, id), uint64_t a3)
{
  v4 = v3;
  v84 = a3;
  v85 = a1;
  v6 = *((swift_isaMask & *v3) + 0x58);
  v7 = *(v6 + 8);
  v8 = *((swift_isaMask & *v3) + 0x50);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v79 = *(AssociatedTypeWitness - 8);
  v9 = *(v79 + 64);
  __chkstk_darwin();
  v11 = &v77 - v10;
  v12 = type metadata accessor for DispatchPredicate();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin();
  v16 = (&v77 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = OS_dispatch_queue.nan.unsafeMutableAddressor();
  v18 = *v17;
  *v16 = *v17;
  (*(v13 + 104))(v16, enum case for DispatchPredicate.onQueue(_:), v12);
  v19 = v18;
  LOBYTE(v18) = _dispatchPreconditionTest(_:)();
  (*(v13 + 8))(v16, v12);
  if ((v18 & 1) == 0)
  {
    __break(1u);
    return;
  }

  v78 = v11;
  v77 = v17;
  v83 = a2;
  v20 = WiFiAwarePublisherDataSessionHandle.peerServiceIdentifier.getter();
  v21 = v20;
  v22 = v20 >> 8;
  v23 = v20 >> 16;
  v24 = v8;
  v25 = v6;
  v26 = v20 >> 24;
  v27 = HIDWORD(v20);
  v81 = (v20 >> 40);
  v28 = qword_10059B8C0;
  v29 = HIWORD(v20);
  swift_beginAccess();
  v82 = v4;
  v30 = *(v4 + v28);
  v94 = v21;
  v95 = v22;
  v96 = v23;
  v97 = v26;
  v31 = v25;
  v32 = v24;
  v98 = v27;
  v99 = v81;
  v100 = v29;
  _s17ResponderInstanceCMa();
  sub_10020CB70();
  Dictionary.subscript.getter();
  v33 = v91[0];
  if (v91[0])
  {
    swift_endAccess();
    v34 = WiFiAwarePublisherDataSessionHandle.peerServiceIdentifier.getter();
    v35 = v82;
    v36 = *(v82 + qword_100595970);
    swift_unownedRetainStrong();
    v37 = *(*v36 + 96);
    swift_beginAccess();
    v38 = v79;
    v39 = v36 + v37;
    v40 = v78;
    v41 = AssociatedTypeWitness;
    (*(v79 + 16))(v78, v39, AssociatedTypeWitness);

    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v85 = (*(AssociatedConformanceWitness + 480))((v34 >> 8) & 0xFFFFFFFFFFFFLL, v41, AssociatedConformanceWitness);
    (*(v38 + 8))(v40, v41);
    v52 = v35 + qword_10059B890;
    swift_beginAccess();
    v53 = type metadata accessor for NANPublish.Configuration();
    sub_100012400(v52 + *(v53 + 88), &aBlock, &unk_1005974B0, &qword_1004AFCF0);
    if (v90 == 255)
    {
      sub_100016290(&aBlock, &unk_1005974B0, &qword_1004AFCF0);
      v54 = v33;
    }

    else
    {
      v54 = v33;
      if (v90)
      {
        sub_100029954(&aBlock, v91);
        v55 = v92;
        v56 = v93;
        sub_100029B34(v91, v92);
        v57 = (*(v56 + 24))(v55, v56);
        [v85 setInfraRelayOperationStatus:v57 & 1];
        sub_100002A00(v91);
      }

      else
      {
        sub_10020C758(&aBlock);
      }
    }

    v58 = *(v35 + qword_100595990);
    if (v58)
    {
      v59 = v58;
      WiFiAwareDataSessionStatisticsReport.difference(from:)(v59);
    }

    else
    {
      v60 = v85;
      *(v35 + qword_100595990) = v85;
      v61 = qword_1005959A8;
      swift_beginAccess();
      v62 = *(v35 + v61);
      v63 = v60;
      if (notify_is_valid_token(v62))
      {
        goto LABEL_19;
      }

      AssociatedTypeWitness = HIWORD(v34);
      v79 = v34 >> 40;
      v81 = *v77;
      v64 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v65 = swift_allocObject();
      *(v65 + 16) = v32;
      *(v65 + 24) = v31;
      *(v65 + 32) = v64;
      *(v65 + 40) = BYTE1(v34);
      *(v65 + 41) = BYTE2(v34);
      *(v65 + 42) = BYTE3(v34);
      *(v65 + 43) = BYTE4(v34);
      *(v65 + 44) = v79;
      *(v65 + 45) = AssociatedTypeWitness;
      v89 = sub_1003014D4;
      v90 = v65;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      v87 = sub_1001C5BEC;
      v88 = &unk_100575258;
      v66 = _Block_copy(&aBlock);
      v67 = v81;

      swift_beginAccess();
      v68 = notify_register_dispatch("com.apple.airplay.isPlayingAmbientAudioChanged", (v35 + v61), v67, v66);
      swift_endAccess();
      _Block_release(v66);

      if (!v68)
      {
        goto LABEL_19;
      }

      v59 = Logger.logObject.getter();
      v69 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v59, v69))
      {
        v70 = swift_slowAlloc();
        v71 = swift_slowAlloc();
        *&aBlock = v71;
        *v70 = 136315138;
        v72 = static WiFiError.notifyErrorMessage(from:)(v68);
        v74 = sub_100002320(v72, v73, &aBlock);

        *(v70 + 4) = v74;
        _os_log_impl(&_mh_execute_header, v59, v69, "Failed to start monitoring statistic reset events with error: %s", v70, 0xCu);
        sub_100002A00(v71);
      }
    }

LABEL_19:
    v75 = v85;
    v76 = v85;
    v83(0, v75);

    return;
  }

  swift_endAccess();
  v43 = v85;
  v44 = Logger.logObject.getter();
  v45 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    *&aBlock = v47;
    *v46 = 136315138;
    v48 = WiFiAwarePublisherDataSessionHandle.peerServiceIdentifier.getter();
    v49 = NANPeerServiceIdentifier.description.getter(v48 & 0xFFFFFFFFFFFFFFLL);
    v51 = sub_100002320(v49, v50, &aBlock);

    *(v46 + 4) = v51;
    _os_log_impl(&_mh_execute_header, v44, v45, "Unable to generate data session statistics for %s because the publish or datapath responder referenced doesn't exist", v46, 0xCu);
    sub_100002A00(v47);
  }

  v83(3, 0);
}

void sub_1002FCDC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a5 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin();
  v11 = &v19 - v10;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    v14 = *(Strong + qword_100595970);
    swift_unownedRetainStrong();
    v15 = *(*v14 + 96);
    swift_beginAccess();
    (*(v8 + 16))(v11, v14 + v15, AssociatedTypeWitness);

    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v17 = (*(AssociatedConformanceWitness + 480))(a3 & 0xFFFFFFFFFFFFLL, AssociatedTypeWitness, AssociatedConformanceWitness);
    (*(v8 + 8))(v11, AssociatedTypeWitness);
    v18 = *&v13[qword_100595990];
    *&v13[qword_100595990] = v17;
  }
}

uint64_t sub_1002FD12C(void *a1, int a2, void *a3, void *aBlock, uint64_t a5, uint64_t a6, void (*a7)(id, uint64_t, uint64_t))
{
  v11 = _Block_copy(aBlock);
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  v13 = a3;
  v14 = a1;
  a7(v13, a6, v12);
}

uint64_t sub_1002FD1D4(void *a1)
{
  v2 = v1;
  v4 = swift_isaMask & *v1;
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin();
  v9 = (&v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = OS_dispatch_queue.nan.unsafeMutableAddressor();
  v11 = *v10;
  *v9 = *v10;
  (*(v6 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v5);
  v12 = v11;
  LOBYTE(v11) = _dispatchPreconditionTest(_:)();
  result = (*(v6 + 8))(v9, v5);
  if (v11)
  {
    if (*(v1 + qword_10059B898) == 1)
    {
      v47 = a1;
      v14 = WiFiAwarePublisherDataSessionHandle.peerServiceIdentifier.getter();
      v15 = v14;
      v16 = v14 >> 8;
      v17 = v14 >> 16;
      v18 = v14 >> 24;
      v19 = HIDWORD(v14);
      v20 = v14 >> 40;
      v21 = qword_10059B8C0;
      v22 = HIWORD(v14);
      swift_beginAccess();
      v23 = *(v2 + v21);
      v50 = v15;
      v51 = v16;
      v52 = v17;
      v53 = v18;
      v54 = v19;
      v55 = v20;
      v56 = v22;
      v24 = *(v4 + 80);
      v25 = *(v4 + 88);
      _s17ResponderInstanceCMa();
      sub_10020CB70();
      Dictionary.subscript.getter();
      v26 = v48;
      if (v48)
      {
        swift_endAccess();
        v27 = v26;
        v28 = v47;
        v29 = Logger.logObject.getter();
        v30 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v29, v30))
        {
          v31 = swift_slowAlloc();
          v32 = swift_slowAlloc();
          *v31 = 138412546;
          *(v31 + 4) = v27;
          *(v31 + 12) = 2112;
          *(v31 + 14) = v28;
          *v32 = v26;
          v32[1] = v28;
          v33 = v27;
          v34 = v28;
          _os_log_impl(&_mh_execute_header, v29, v30, "%@ got an issue report %@", v31, 0x16u);
          sub_10005DC58(&qword_10058B780, &qword_100480AC0);
          swift_arrayDestroy();
        }

        v35 = *(v2 + qword_100595970);
        swift_unownedRetainStrong();
        v36 = &v27[qword_100594B08];
        swift_beginAccess();
        v48 = NANPeerServiceIdentifier.description.getter(*v36 | (v36[8] << 8) | (v36[9] << 16) | (*(v36 + 10) << 24));
        v49 = v37;
        v38._countAndFlagsBits = 0x686374696C47203ALL;
        v38._object = 0xE900000000000020;
        String.append(_:)(v38);
        v39 = [v28 rtpSequenceNumber];
        if (v39)
        {
          v40 = v39;
          v41 = [v39 description];

          v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v44 = v43;
        }

        else
        {
          v42 = 0;
          v44 = 0xE000000000000000;
        }

        v45._countAndFlagsBits = v42;
        v45._object = v44;
        String.append(_:)(v45);

        sub_10040D52C(v48, v49);
      }

      else
      {
        return swift_endAccess();
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1002FD60C(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = a1;
  sub_1002FD1D4(v6);
}

id sub_1002FD688(void *a1)
{
  v1 = a1;
  sub_1002FD6F0();

  v2 = String._bridgeToObjectiveC()();

  return v2;
}

uint64_t sub_1002FD6F0()
{
  strcpy(v12, "NANPublish [");
  BYTE5(v12[1]) = 0;
  HIWORD(v12[1]) = -5120;
  v1 = (v0 + qword_10059B890);
  swift_beginAccess();
  v11 = *v1;
  v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v2);

  v3._countAndFlagsBits = 8285;
  v3._object = 0xE200000000000000;
  String.append(_:)(v3);
  v5 = *(v1 + 1);
  v4 = *(v1 + 2);

  v6 = NANServiceName.description.getter(v5, v4);
  v8 = v7;

  v9._countAndFlagsBits = v6;
  v9._object = v8;
  String.append(_:)(v9);

  return v12[0];
}

void sub_1002FD7E4(void *a1)
{
  v1 = *((swift_isaMask & *a1) + 0x50);
  v2 = *((swift_isaMask & *a1) + 0x58);
  sub_10030112C();
}

void sub_1002FD83C()
{
  if (!qword_100595AD0[0])
  {
    type metadata accessor for LongTermPairingKeys(255);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, qword_100595AD0);
    }
  }
}

void sub_1002FD894()
{
  sub_1002FD968();
  if (v0 <= 0x3F)
  {
    type metadata accessor for NANPublish.Configuration();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1002FD968()
{
  if (!qword_100595B58)
  {
    sub_10005DD04(&unk_100595B60, qword_1004AFC70);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100595B58);
    }
  }
}

uint64_t sub_1002FDA88(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1002FDB0C(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

void sub_1002FDB68()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (Strong[qword_10059B898] == 1)
    {
      v2 = *&Strong[qword_100595998];
      *&v1[qword_100595998] = 0;

      __chkstk_darwin();
      v6 = v1;
      v3 = _s8InstanceCMa_0();
      WitnessTable = swift_getWitnessTable();
      sub_10036E438(sub_10030028C, &v5, v3, WitnessTable);
    }

    else
    {
    }
  }
}

uint64_t sub_1002FDCA0(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v151 = a2;
  v154 = a1;
  v4 = *(*(sub_10005DC58(&unk_100597460, &qword_1004AFD18) - 8) + 64);
  __chkstk_darwin();
  v139 = &v125[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v146 = &v125[-v6];
  v7 = *(*(sub_10005DC58(&unk_100595C50, &unk_1004AFD20) - 8) + 64);
  __chkstk_darwin();
  v143 = &v125[-v8];
  v9 = type metadata accessor for DispatchTime();
  v141 = *(v9 - 8);
  v142 = v9;
  v10 = *(v141 + 64);
  __chkstk_darwin();
  v140 = &v125[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = type metadata accessor for NANPeer.Service.AuthenticationStatus(0);
  v148 = *(v12 - 8);
  v149 = v12;
  v13 = *(v148 + 64);
  __chkstk_darwin();
  v138 = &v125[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v147 = type metadata accessor for NANPeer.Service.AuthenticationStatus.State(0);
  v15 = *(*(v147 - 8) + 64);
  __chkstk_darwin();
  v145 = &v125[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v144 = &v125[-v17];
  v18 = *(*(type metadata accessor for OWEKeys() - 8) + 64);
  __chkstk_darwin();
  v150 = &v125[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = *(*(sub_10005DC58(&unk_100595C40, &qword_100499070) - 8) + 64);
  __chkstk_darwin();
  v22 = &v125[-v21];
  v23 = type metadata accessor for P256.KeyAgreement.PublicKey();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  __chkstk_darwin();
  v152 = &v125[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v27 = *(*(sub_10005DC58(&qword_10058C8D8, &qword_100482300) - 8) + 64);
  __chkstk_darwin();
  v29 = &v125[-v28];
  v30 = type metadata accessor for LongTermPairingKeys(0);
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  __chkstk_darwin();
  v34 = &v125[-((v33 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v153 = v3;
  sub_100012400(v3 + qword_1005959A0, v29, &qword_10058C8D8, &qword_100482300);
  if ((*(v31 + 48))(v29, 1, v30) == 1)
  {
    v35 = &qword_10058C8D8;
    v36 = &qword_100482300;
    v37 = v29;
    return sub_100016290(v37, v35, v36);
  }

  sub_10030129C(v29, v34, type metadata accessor for LongTermPairingKeys);
  NANGenericServiceProtocol.publicKey.getter(v154, v22);
  if ((*(v24 + 48))(v22, 1, v23) != 1)
  {
    v47 = v23;
    v48 = v151;
    v137 = v34;
    v49 = HIWORD(v151);
    v50 = HIDWORD(v151);
    v133 = v151 >> 24;
    v132 = v151 >> 16;
    v129 = v24;
    v51 = *(v24 + 32);
    v130 = v47;
    v51(v152, v22);
    v52 = v153;
    v53 = (v153 + qword_10059B890);
    swift_beginAccess();
    v54 = type metadata accessor for NANPublish.Configuration();
    v55 = v150;
    sub_1003013DC(&v53[*(v54 + 92)], v150, type metadata accessor for OWEKeys);
    v56 = *(v52 + qword_100595970);
    swift_unownedRetainStrong();
    v57 = WiFiInterface.macAddress.getter();
    v128 = v56;

    v58 = *(v53 + 3);
    v136 = BYTE6(v48);
    v131 = BYTE5(v48);
    v59 = (BYTE5(v48) << 32) & 0xFFFF00FFFFFFFFFFLL | (v49 << 40);
    v34 = v137;
    v135 = BYTE4(v48);
    v134 = BYTE3(v48);
    v60 = v59 & 0xFFFFFFFF0000FFFFLL | (v50 << 24) | (v133 << 16);
    v133 = BYTE2(v48);
    v61 = v60 & 0xFFFFFFFFFFFF00FFLL | (v132 << 8);
    v132 = BYTE1(v48);
    v62 = v61 & 0xFFFFFFFFFFFFFF00 | BYTE1(v48);

    v63 = LongTermPairingKeys.authenticationResponse(forPeer:with:using:on:myServiceSpecificInfo:)(v62, v154, v55, v57 & 0xFFFFFFFFFFFFLL, v58);

    sub_100301450(v55, type metadata accessor for OWEKeys);
    if (!v63)
    {
      v75 = Logger.logObject.getter();
      v76 = static os_log_type_t.error.getter();
      v77 = v52;
      if (os_log_type_enabled(v75, v76))
      {
        v78 = swift_slowAlloc();
        v79 = swift_slowAlloc();
        v156[0] = v79;
        *v78 = 136315138;
        v80 = NANPeerServiceIdentifier.description.getter((v131 << 40) | (v136 << 48) | (v135 << 32) | (v134 << 24) | (v133 << 16) | (v132 << 8) | v48);
        v82 = sub_100002320(v80, v81, v156);

        *(v78 + 4) = v82;
        _os_log_impl(&_mh_execute_header, v75, v76, "Failed to authenticate %s because authentication response generation failed", v78, 0xCu);
        sub_100002A00(v79);
      }

      v83 = v148;
      v84 = v149;
      v85 = qword_10059B8A8;
      swift_beginAccess();
      v86 = *(v85 + v77);
      if (*(v86 + 16) && (v87 = sub_10007CD94((v131 << 40) | (v136 << 48) | (v135 << 32) | (v134 << 24) | (v133 << 16) | (v132 << 8) | v48), (v88 & 1) != 0))
      {
        v89 = *(v86 + 56) + *(v83 + 72) * v87;
        v90 = v146;
        sub_1003013DC(v89, v146, type metadata accessor for NANPeer.Service.AuthenticationStatus);
        v91 = 0;
      }

      else
      {
        v91 = 1;
        v90 = v146;
      }

      v105 = *(v83 + 56);
      v105(v90, v91, 1, v84);
      swift_endAccess();
      if ((*(v83 + 48))(v90, 1, v84) != 1)
      {
        (*(v129 + 8))(v152, v130);
        sub_100301450(v34, type metadata accessor for LongTermPairingKeys);
        v35 = &unk_100597460;
        v36 = &qword_1004AFD18;
        v37 = v90;
        return sub_100016290(v37, v35, v36);
      }

      sub_100016290(v90, &unk_100597460, &qword_1004AFD18);
      v106 = v145;
      v150 = v85;
      *v145 = v154;
      swift_storeEnumTagMultiPayload();
      v107 = v139;
      sub_1003013DC(v106, v139, type metadata accessor for NANPeer.Service.AuthenticationStatus.State);
      type metadata accessor for P2PTimer();
      v108 = *(v84 + 20);

      variable initialization expression of AWDLPeer.lastUpdated();
      sub_100301450(v106, type metadata accessor for NANPeer.Service.AuthenticationStatus.State);
      v105(v107, 0, 1, v84);
      swift_beginAccess();
      sub_100338448(v107, (v131 << 40) | (v136 << 48) | (v135 << 32) | (v134 << 24) | (v133 << 16) | (v132 << 8) | v48);
      swift_endAccess();
      goto LABEL_33;
    }

    sub_1003013DC(&v53[*(v54 + 92)], v55, type metadata accessor for OWEKeys);
    v64 = OWEKeys.generatePMK(for:asClient:)(v152, 0);
    v66 = v65;
    sub_100301450(v55, type metadata accessor for OWEKeys);
    if (v66 >> 60 == 15)
    {

      v67 = Logger.logObject.getter();
      v68 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v67, v68))
      {
        v69 = swift_slowAlloc();
        v70 = swift_slowAlloc();
        v156[0] = v70;
        *v69 = 136315138;
        v71 = NANPeerServiceIdentifier.description.getter((v131 << 40) | (v136 << 48) | (v135 << 32) | (v134 << 24) | (v133 << 16) | (v132 << 8) | v48);
        v45 = v34;
        v73 = sub_100002320(v71, v72, v156);

        *(v69 + 4) = v73;
        _os_log_impl(&_mh_execute_header, v67, v68, "Failed to authenticate %s because PMK generation failed", v69, 0xCu);
        sub_100002A00(v70);

        (*(v129 + 8))(v152, v130);
        goto LABEL_11;
      }

      (*(v129 + 8))(v152, v130);
LABEL_28:
      v74 = v34;
      return sub_100301450(v74, type metadata accessor for LongTermPairingKeys);
    }

    v139 = v63;
    v154 = v54;
    v127 = v53;
    v92 = v144;
    *v144 = v64;
    *(v92 + 8) = v66;
    swift_storeEnumTagMultiPayload();
    v93 = qword_10059B8A8;
    v94 = v153;
    swift_beginAccess();
    v150 = v64;
    v146 = v66;
    sub_10000AB0C(v64, v66);
    v95 = *(v94 + v93);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v155 = *(v94 + v93);
    v96 = v155;
    *(v94 + v93) = 0x8000000000000000;
    v97 = (v131 << 40) | (v136 << 48) | (v135 << 32) | (v134 << 24) | (v133 << 16) | (v132 << 8) | v48;
    v99 = sub_10007CD94(v97);
    v100 = v96[2];
    v101 = (v98 & 1) == 0;
    v102 = v100 + v101;
    if (__OFADD__(v100, v101))
    {
      __break(1u);
    }

    else
    {
      LOBYTE(v66) = v98;
      if (v96[3] < v102)
      {
        sub_1003122C8(v102, isUniquelyReferenced_nonNull_native);
        v96 = v155;
        v103 = sub_10007CD94(v97);
        if ((v66 & 1) != (v104 & 1))
        {
          result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          return result;
        }

        v99 = v103;
        *(v94 + v93) = v96;
        if (v66)
        {
          goto LABEL_32;
        }

        goto LABEL_31;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        *(v94 + v93) = v96;
        if (v98)
        {
LABEL_32:
          v112 = v96[7] + *(v148 + 72) * v99;
          sub_100301304(v92, v112, type metadata accessor for NANPeer.Service.AuthenticationStatus.State);
          type metadata accessor for P2PTimer();
          v113 = v140;
          variable initialization expression of AWDLPeer.lastUpdated();
          sub_100301450(v92, type metadata accessor for NANPeer.Service.AuthenticationStatus.State);
          (*(v141 + 40))(v112 + *(v149 + 20), v113, v142);
          swift_endAccess();
          swift_unownedRetainStrong();
          v114 = sub_10040CAE8();

          v115 = *(v114 + *(*v114 + 296));

          v116 = v127;
          v117 = Optional<A>.attributeFilter.getter(v127[*(v154 + 96)]);
          LODWORD(v114) = NANServiceInfo.init(information:filter:)(v139, v117);
          v119 = v118;
          v121 = v120;
          v122 = *v116;
          v123 = type metadata accessor for NANIdentityKey(0);
          v124 = v143;
          (*(*(v123 - 8) + 56))(v143, 1, 1, v123);
          sub_10036DE50(v114, v119, v121, _swiftEmptyArrayStorage, v62, v48, v122, v124);
          sub_1000124C8(v119, v121);

          sub_100017554(v150, v146);
          sub_100016290(v124, &unk_100595C50, &unk_1004AFD20);
LABEL_33:
          (*(v129 + 8))(v152, v130);
          v74 = v137;
          return sub_100301450(v74, type metadata accessor for LongTermPairingKeys);
        }

LABEL_31:
        v109 = v145;
        swift_storeEnumTagMultiPayload();
        v110 = v138;
        sub_1003013DC(v109, v138, type metadata accessor for NANPeer.Service.AuthenticationStatus.State);
        type metadata accessor for P2PTimer();
        v111 = &v110[*(v149 + 20)];
        variable initialization expression of AWDLPeer.lastUpdated();
        sub_100301450(v109, type metadata accessor for NANPeer.Service.AuthenticationStatus.State);
        sub_1002DD754(v99, v97, v110, v96);
        goto LABEL_32;
      }
    }

    sub_10046C560();
    v96 = v155;
    *(v94 + v93) = v155;
    if (v66)
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

  sub_100016290(v22, &unk_100595C40, &qword_100499070);
  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.error.getter();
  if (!os_log_type_enabled(v39, v40))
  {

    goto LABEL_28;
  }

  v41 = swift_slowAlloc();
  v42 = swift_slowAlloc();
  v157 = v42;
  *v41 = 136315138;
  v43 = NANPeerServiceIdentifier.description.getter(v151 & 0xFFFFFFFFFFFFFFLL);
  v45 = v34;
  v46 = sub_100002320(v43, v44, &v157);

  *(v41 + 4) = v46;
  _os_log_impl(&_mh_execute_header, v39, v40, "Failed to authenticate %s because missing public key in the authentication request", v41, 0xCu);
  sub_100002A00(v42);

LABEL_11:
  v74 = v45;
  return sub_100301450(v74, type metadata accessor for LongTermPairingKeys);
}

uint64_t sub_1002FEE4C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = *(*(type metadata accessor for NANPeer.Service.AuthenticationStatus.State(0) - 8) + 64);
  __chkstk_darwin();
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for NANPeer.Service.AuthenticationStatus(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin();
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(*(sub_10005DC58(&unk_100597460, &qword_1004AFD18) - 8) + 64);
  __chkstk_darwin();
  v16 = &v33 - v15;
  result = NANGenericServiceProtocol.blob.getter(a1);
  if (v18 >> 60 == 15)
  {
    return result;
  }

  v19 = v18 >> 62;
  if ((v18 >> 62) > 1)
  {
    if (v19 == 2 && *(result + 16) != *(result + 24))
    {
      goto LABEL_8;
    }
  }

  else
  {
    if (!v19)
    {
      if ((v18 & 0xFF000000000000) == 0)
      {
        goto LABEL_12;
      }

LABEL_8:
      v20 = result;
      v34 = v18;
      v21 = a2 + qword_10059B890;
      swift_beginAccess();
      if (*(v21 + *(type metadata accessor for NANPublish.Configuration() + 96)))
      {
        goto LABEL_9;
      }

      v27 = qword_10059B8A8;
      swift_beginAccess();
      v28 = *(a2 + v27);
      if (*(v28 + 16) && (v29 = sub_10007CD94(a3 & 0xFFFFFFFFFFFFFFLL), (v30 & 1) != 0))
      {
        sub_1003013DC(*(v28 + 56) + *(v10 + 72) * v29, v16, type metadata accessor for NANPeer.Service.AuthenticationStatus);
        v31 = 0;
      }

      else
      {
        v31 = 1;
      }

      (*(v10 + 56))(v16, v31, 1, v9);
      if ((*(v10 + 48))(v16, 1, v9))
      {
        sub_100016290(v16, &unk_100597460, &qword_1004AFD18);
        swift_endAccess();
      }

      else
      {
        sub_1003013DC(v16, v13, type metadata accessor for NANPeer.Service.AuthenticationStatus);
        sub_100016290(v16, &unk_100597460, &qword_1004AFD18);
        swift_endAccess();
        sub_1003013DC(v13, v8, type metadata accessor for NANPeer.Service.AuthenticationStatus.State);
        sub_100301450(v13, type metadata accessor for NANPeer.Service.AuthenticationStatus);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        sub_100301450(v8, type metadata accessor for NANPeer.Service.AuthenticationStatus.State);
        if (EnumCaseMultiPayload == 2)
        {
LABEL_9:
          v22 = sub_1002EBB84();
          if (v22)
          {
            v23 = v22;
            v24 = v34;
            isa = Data._bridgeToObjectiveC()().super.isa;
            v26 = WiFiAddress.apiAddress.getter((a3 >> 8) & 0xFFFFFFFFFFFFLL);
            [v23 publishReceivedMessage:isa fromSubscriberID:a3 subscriberAddress:v26];
            sub_100017554(v20, v24);

            return swift_unknownObjectRelease();
          }
        }
      }

      return sub_100017554(v20, v34);
    }

    if (result != result >> 32)
    {
      goto LABEL_8;
    }
  }

LABEL_12:

  return sub_100017554(result, v18);
}

void sub_1002FF260(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v22 = a3;
    v12 = Strong;

    swift_errorRetain();
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v21 = a5;
      v16 = swift_slowAlloc();
      v26[0] = swift_slowAlloc();
      *v15 = 138413058;
      *(v15 + 4) = v12;
      *v16 = v11;
      *(v15 + 12) = 2080;
      v17 = v12;
      *(v15 + 14) = sub_100002320(v22, a4, v26);
      *(v15 + 22) = 2080;
      *(v15 + 24) = sub_100002320(v21, a6, v26);
      *(v15 + 32) = 2112;
      swift_errorRetain();
      v18 = _swift_stdlib_bridgeErrorToNSError();
      *(v15 + 34) = v18;
      v16[1] = v18;
      _os_log_impl(&_mh_execute_header, v13, v14, "%@ internet sharing from %s to %s failed because %@", v15, 0x2Au);
      sub_10005DC58(&qword_10058B780, &qword_100480AC0);
      swift_arrayDestroy();

      swift_arrayDestroy();
    }

    v19 = qword_10059B8C0;
    swift_beginAccess();
    v20 = *&v12[v19];
    _s17ResponderInstanceCMa();
    sub_10020CB70();
    v23 = NANBitmap.Channel.operatingClass.getter(v20);
    __chkstk_darwin();
    type metadata accessor for Dictionary.Values();

    swift_getWitnessTable();
    Sequence.forEach(_:)();

    swift_errorRetain();
    sub_10005DC58(&qword_10058C830, &qword_1004821F0);
    if (swift_dynamicCast())
    {
      if (v25 == 1)
      {
        if (v23 == 7)
        {
          sub_1002F29CC();
        }
      }

      else
      {
        sub_1000B2594(v23, v24, v25);
      }
    }
  }
}

void sub_1002FF618(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  sub_1002FF260(a1, v1[4], v1[5], v1[6], v1[7], v1[8]);
}

uint64_t sub_1002FF62C(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin();
  v10 = &v30 - v9;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v12 = result;
    v31 = a1;
    v13 = qword_100595970;
    v14 = *(result + qword_100595970);
    swift_unownedRetainStrong();
    v15 = *(*v14 + 96);
    swift_beginAccess();
    (*(v7 + 16))(v10, v14 + v15, AssociatedTypeWitness);

    v16 = qword_10059B8C0;
    swift_beginAccess();
    v17 = *&v12[v16];
    _s17ResponderInstanceCMa();
    sub_10020CB70();

    v18 = Dictionary.count.getter();

    if ((v18 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v18 <= 0xFF)
    {
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      (*(AssociatedConformanceWitness + 416))(v18 | 0x10000, AssociatedTypeWitness, AssociatedConformanceWitness);
      (*(v7 + 8))(v10, AssociatedTypeWitness);
      v20 = *&v12[v13];
      swift_unownedRetainStrong();
      v21 = NANInternetSharingStatistics.init(provider:)(v31 & 0x101);
      v23 = v22;
      v25 = v24;

      v26 = v21 & 0x101FF;
      v27 = v25 & 1;
      v28 = v20 + *(*v20 + 760);
      swift_beginAccess();
      v29 = *(v28 + 8);
      *v28 = v26;
      *(v28 + 8) = v23;
      *(v28 + 16) = v27;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1002FF908(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    __chkstk_darwin();
    v6 = &v10 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v6, v5);
    result = sub_1002FFA68(v6, v4, a1);
    if (v1)
    {
      return swift_willThrow();
    }

    return result;
  }

  v8 = swift_slowAlloc();
  v9 = sub_1003000DC(v8, v4, a1);

  if (!v1)
  {
    return v9;
  }

  return result;
}

uint64_t sub_1002FFA68(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v54 = a2;
  v55 = a1;
  v68 = type metadata accessor for DispatchTime();
  v4 = *(v68 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v67 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = type metadata accessor for DispatchTimeInterval();
  v7 = *(v66 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin();
  v65 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v64 = &v53 - v10;
  v72 = type metadata accessor for NANPeer.Service.AuthenticationStatus.State(0);
  v11 = *(*(v72 - 8) + 64);
  __chkstk_darwin();
  v74 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = &qword_1004AFD40;
  v71 = sub_10005DC58(&unk_100595C80, &qword_1004AFD40);
  v14 = *(*(v71 - 8) + 64);
  __chkstk_darwin();
  v70 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v17 = &v53 - v16;
  v63 = type metadata accessor for NANPeer.Service.AuthenticationStatus(0);
  v69 = *(v63 - 8);
  v18 = *(v69 + 64);
  result = __chkstk_darwin();
  v77 = &v53 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = 0;
  v73 = a3;
  v22 = *(a3 + 64);
  v58 = a3 + 64;
  v23 = 1 << *(a3 + 32);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & v22;
  v56 = 0;
  v57 = (v23 + 63) >> 6;
  v61 = (v7 + 16);
  v62 = (v4 + 8);
  v60 = (v7 + 8);
  while (v25)
  {
    v36 = __clz(__rbit64(v25));
    v76 = (v25 - 1) & v25;
LABEL_13:
    v39 = v36 | (v21 << 6);
    v40 = v73[7];
    v41 = v73[6] - v39 + 8 * v39;
    v42 = *(v41 + 4);
    v43 = *(v41 + 6);
    v44 = *(v69 + 72);
    v59 = v39;
    v45 = *v41;
    v46 = v77;
    sub_1003013DC(v40 + v44 * v39, v77, type metadata accessor for NANPeer.Service.AuthenticationStatus);
    *v17 = v45;
    *(v17 + 2) = v42;
    v17[6] = v43;
    v47 = v71;
    sub_1003013DC(v46, &v17[*(v71 + 48)], type metadata accessor for NANPeer.Service.AuthenticationStatus);
    v48 = v70;
    sub_100012400(v17, v70, &unk_100595C80, v13);
    v49 = v48 + *(v47 + 48);
    sub_1003013DC(v49, v74, type metadata accessor for NANPeer.Service.AuthenticationStatus.State);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v51 = type metadata accessor for LongTermPairingKeys.AuthenticationKeys;
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload != 4)
      {
        if (EnumCaseMultiPayload == 2)
        {
          sub_100016290(v17, &unk_100595C80, v13);
          sub_100301450(v74, type metadata accessor for NANPeer.Service.AuthenticationStatus.State);
        }

        else
        {
          sub_100016290(v17, &unk_100595C80, v13);
        }

        sub_100301450(v49, type metadata accessor for NANPeer.Service.AuthenticationStatus);
        result = sub_100301450(v77, type metadata accessor for NANPeer.Service.AuthenticationStatus);
        v25 = v76;
        goto LABEL_21;
      }
    }

    else
    {
      if (EnumCaseMultiPayload)
      {
        v51 = type metadata accessor for NANPeer.Service.AuthenticationStatus.State;
      }

      sub_100301450(v74, v51);
    }

    type metadata accessor for P2PTimer();
    v26 = v67;
    variable initialization expression of AWDLPeer.lastUpdated();
    v27 = v64;
    v28 = v49 + *(v63 + 20);
    DispatchTime.distance(to:)();
    (*v62)(v26, v68);
    v29 = NANConstants.authenticationRequestTimeout.unsafeMutableAddressor();
    v30 = v17;
    v31 = v13;
    v32 = v65;
    v33 = v66;
    (*v61)(v65, v29, v66);
    v75 = static DispatchTimeInterval.< infix(_:_:)();
    v34 = *v60;
    v35 = v32;
    v13 = v31;
    v17 = v30;
    (*v60)(v35, v33);
    v34(v27, v33);
    sub_100016290(v30, &unk_100595C80, v13);
    sub_100301450(v49, type metadata accessor for NANPeer.Service.AuthenticationStatus);
    result = sub_100301450(v77, type metadata accessor for NANPeer.Service.AuthenticationStatus);
    v25 = v76;
    if (!v75)
    {
LABEL_21:
      *(v55 + ((v59 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v59;
      if (__OFADD__(v56++, 1))
      {
        __break(1u);
        return sub_1003686EC(v55, v54, v56, v73);
      }
    }
  }

  v37 = v21;
  while (1)
  {
    v21 = v37 + 1;
    if (__OFADD__(v37, 1))
    {
      break;
    }

    if (v21 >= v57)
    {
      return sub_1003686EC(v55, v54, v56, v73);
    }

    v38 = *(v58 + 8 * v21);
    ++v37;
    if (v38)
    {
      v36 = __clz(__rbit64(v38));
      v76 = (v38 - 1) & v38;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

void *sub_1003000DC(void *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    v6 = sub_1002FFA68(result, a2, a3);

    return v6;
  }

  return result;
}

void sub_100300180()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  sub_1002F9930();
}

uint64_t sub_10030018C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NANPublish.Configuration();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_100300280()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  sub_1002FDB68();
}

uint64_t sub_10030028C()
{
  v1 = *(v0 + 16) + qword_10059B890;
  result = swift_beginAccess();
  *(v1 + 72) = 1;
  return result;
}

void sub_1003002EC()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  sub_1002F276C();
}

id sub_1003002F8(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    return [result publishTerminatedWithReason:*(v1 + 32)];
  }

  return result;
}

_BYTE *sub_100300354(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = v5;
  v123 = a5;
  v128 = a4;
  v122 = a3;
  v125 = a2;
  v139 = a1;
  ObjectType = swift_getObjectType();
  v7 = *v5;
  v8 = swift_isaMask;
  v9 = type metadata accessor for Logger();
  v130 = *(v9 - 8);
  v131 = v9;
  v10 = *(v130 + 64);
  __chkstk_darwin();
  v132 = &v98 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for LongTermPairingKeys(0);
  v126 = *(v12 - 8);
  v127 = v12;
  v13 = *(v126 + 64);
  __chkstk_darwin();
  v98 = &v98 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = *((v8 & v7) + 0x58);
  v15 = *(v134 + 8);
  v133 = *((v8 & v7) + 0x50);
  v118 = v15;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v119 = *(AssociatedTypeWitness - 8);
  v120 = AssociatedTypeWitness;
  v17 = *(v119 + 64);
  __chkstk_darwin();
  v117 = &v98 - v18;
  v19 = *(*(sub_10005DC58(&qword_10058C8D8, &qword_100482300) - 8) + 64);
  __chkstk_darwin();
  v121 = &v98 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v116 = &v98 - v21;
  v22 = type metadata accessor for DispatchTimeInterval();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  __chkstk_darwin();
  v26 = &v98 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = type metadata accessor for DispatchTime();
  v27 = *(v135 - 8);
  v28 = *(v27 + 64);
  __chkstk_darwin();
  v30 = &v98 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v6 + qword_10059B898) = 0;
  v31 = qword_100595978;
  type metadata accessor for P2PTimer();
  variable initialization expression of AWDLPeer.lastUpdated();
  v32 = NANConstants.maximumServiceRetryRate.unsafeMutableAddressor();
  (*(v23 + 16))(v26, v32, v22);
  v113 = v31;
  - infix(_:_:)();
  (*(v23 + 8))(v26, v22);
  v114 = *(v27 + 8);
  v115 = (v27 + 8);
  v114(v30, v135);
  v33 = v125;
  v111 = qword_100595980;
  *(v6 + qword_100595980) = 0;
  v34 = qword_100595988;
  _s8InstanceC21NANPublishClientProxyVMa();
  v35 = static Array._allocateUninitialized(_:)();
  v112 = v34;
  *(v6 + v34) = v35;
  v105 = qword_100595990;
  *(v6 + qword_100595990) = 0;
  v110 = qword_10059B8A0;
  Logger.init(subsystem:category:)();
  v104 = qword_100595998;
  *(v6 + qword_100595998) = 0;
  v109 = qword_10059B8A8;
  *(v6 + qword_10059B8A8) = &_swiftEmptyDictionarySingleton;
  *(v6 + qword_1005959A8) = -1;
  v107 = qword_10059B8B0;
  *(v6 + qword_10059B8B0) = 0;
  v108 = qword_1005959B0;
  *(v6 + qword_1005959B0) = 0;
  *(v6 + qword_1005959B8) = 0;
  v36 = (v6 + qword_1005959C0);
  *v36 = static Duration.zero.getter();
  v36[1] = v37;
  v38 = v6 + qword_10059B8B8;
  *(v38 + 6) = 0;
  *(v38 + 1) = 0u;
  *(v38 + 2) = 0u;
  *v38 = 0u;
  v39 = qword_10059B8C0;
  _s17ResponderInstanceCMa();
  sub_10020CB70();
  v40 = Dictionary.init()();
  v106 = v39;
  *(v6 + v39) = v40;
  v41 = (v6 + qword_10059B8C8);
  *v41 = 0;
  v41[1] = 0;
  v103 = v41;
  v42 = v6 + qword_1005959C8;
  *v42 = 0;
  v42[4] = 1;
  *(v6 + qword_1005959D0) = 0;
  v43 = qword_10059B8D0;
  NANWiFiAwareStatistics.init()(&v138);
  v102 = v43;
  memcpy(v6 + v43, &v138, 0x120uLL);
  *(v6 + qword_1005959D8) = 0;
  *(v6 + qword_1005959E0) = 0;
  v101 = qword_1005959E8;
  variable initialization expression of AWDLPeer.lastUpdated();
  v44 = v139;
  v99 = qword_100595970;
  *(v6 + qword_100595970) = v139;
  v100 = qword_10059B890;
  sub_1003013DC(v33, v6 + qword_10059B890, type metadata accessor for NANPublish.Configuration);
  v124 = type metadata accessor for NANPublish.Configuration();
  if (*(v33 + *(v124 + 96)))
  {
    v45 = v33;
    v46 = v127;
    v47 = v126;
    (*(v126 + 56))(v6 + qword_1005959A0, 1, 1, v127);
    swift_unownedRetain();
  }

  else
  {
    swift_unownedRetainStrong();
    v49 = v119;
    v48 = v120;
    v50 = v117;
    (*(v119 + 16))(v117, v44 + *(*v44 + 112), v120);
    swift_unownedRetain();

    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    (*(AssociatedConformanceWitness + 128))(v48, AssociatedConformanceWitness);
    (*(v49 + 8))(v50, v48);
    v45 = v33;
    v52 = v116;
    LongTermPairingKeyStore.keys(for:installingNewKeysIfNecessary:)(*(v33 + 8), *(v33 + 16), 1, v116);

    v53 = qword_1005959A0;
    sub_10001CEA8(v52, v6 + qword_1005959A0, &qword_10058C8D8, &qword_100482300);
    v54 = v6 + v53;
    v55 = v121;
    sub_100012400(v54, v121, &qword_10058C8D8, &qword_100482300);
    v47 = v126;
    v46 = v127;
    if ((*(v126 + 48))(v55, 1, v127) == 1)
    {

      sub_100016290(v55, &qword_10058C8D8, &qword_100482300);
      v56 = 6;
      v57 = v45;
LABEL_9:
      sub_10000B02C();
      swift_allocError();
      *v58 = v56;
      *(v58 + 8) = 0;
      *(v58 + 16) = 1;
      swift_willThrow();
      sub_100301450(v57, type metadata accessor for NANPublish.Configuration);

      v59 = *(v6 + v99);
      swift_unownedRelease();
      sub_100301450(v6 + v100, type metadata accessor for NANPublish.Configuration);
      v60 = v114;
      v61 = v135;
      v62 = v115;
      v114(v6 + v113, v135);
      v63 = *(v6 + v111);

      v64 = *(v6 + v112);

      (*(v130 + 8))(v6 + v110, v131);
      v65 = *(v6 + v104);

      sub_100016290(v6 + qword_1005959A0, &qword_10058C8D8, &qword_100482300);
      v66 = *(v6 + v109);

      v67 = *(v6 + v107);

      v68 = *(v6 + v108);

      v69 = *(v38 + 2);
      v70 = *(v38 + 3);
      v71 = *(v38 + 4);
      v72 = *(v38 + 5);
      v73 = *(v38 + 6);
      sub_100083690(*v38, *(v38 + 1));
      v74 = *(v6 + v106);

      v75 = v103[1];

      memcpy(v136, v6 + v102, sizeof(v136));
      sub_1002CB088(v136);
      v60(v6 + v101, v61);
      v76 = *((swift_isaMask & *v6) + 0x30);
      v77 = *((swift_isaMask & *v6) + 0x34);
      swift_deallocPartialClassInstance();
      return v62;
    }

    sub_100016290(v55, &qword_10058C8D8, &qword_100482300);
  }

  v57 = v45;
  if (*(v45 + *(v124 + 120)) && (static Duration.< infix(_:_:)() & 1) != 0)
  {

    v56 = 2;
    goto LABEL_9;
  }

  v137.receiver = v6;
  v137.super_class = ObjectType;
  v78 = v46;
  v79 = objc_msgSendSuper2(&v137, "init");
  v80 = &v79[qword_10059B8C8];
  v81 = *&v79[qword_10059B8C8 + 8];
  v82 = v128;
  *v80 = v122;
  v80[1] = v82;

  v79[qword_1005959D0] = v123 & 1;
  v83 = qword_1005959A0;
  if (!(*(v47 + 48))(&v79[qword_1005959A0], 1, v78))
  {
    v84 = &v79[v83];
    v85 = v98;
    sub_1003013DC(v84, v98, type metadata accessor for LongTermPairingKeys);
    v86 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v87 = swift_allocObject();
    v88 = v134;
    v87[2] = v133;
    v87[3] = v88;
    v87[4] = v86;

    LongTermPairingKeys.updatedPairedDevicesHandler.setter(sub_100301444, v87);
    sub_100301450(v85, type metadata accessor for LongTermPairingKeys);
  }

  v90 = v130;
  v89 = v131;
  (*(v130 + 16))(v132, &v79[qword_10059B8A0], v131);
  v62 = v79;
  v91 = Logger.logObject.getter();
  v92 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v91, v92))
  {
    v93 = swift_slowAlloc();
    v94 = v57;
    v95 = swift_slowAlloc();
    *v93 = 138412290;
    *(v93 + 4) = v62;
    *v95 = v62;
    v96 = v62;
    _os_log_impl(&_mh_execute_header, v91, v92, "Created %@", v93, 0xCu);
    sub_100016290(v95, &qword_10058B780, &qword_100480AC0);
    v57 = v94;
  }

  (*(v90 + 8))(v132, v89);
  sub_100301450(v57, type metadata accessor for NANPublish.Configuration);

  return v62;
}

_BYTE *sub_100301020(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v10 = *(*a1 + 432);
  v11 = *(*a1 + 440);
  v12 = objc_allocWithZone(_s8InstanceCMa_0());
  return sub_100300354(a1, a2, a3, a4, a5);
}

uint64_t sub_1003010C0(uint64_t a1, uint64_t a2)
{
  v7 = a2;
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = (a1 + 32);
    do
    {
      v4 = *v3++;
      sub_100159C80(&v6, v4);

      --v2;
    }

    while (v2);
    return v7;
  }

  return a2;
}

uint64_t sub_10030115C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10030124C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_10030129C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100301304(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 24))(a2, a1, v5);
  return a2;
}

uint64_t sub_10030136C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10005DC58(&unk_100595C70, &qword_1004B0C00);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003013DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_100301444()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  sub_1002EFFB0();
}

uint64_t sub_100301450(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_10030152C(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    return [result publishTerminatedWithReason:-1];
  }

  return result;
}

NSObject *sub_100301588(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v37 = a4;
  v38 = a5;
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin();
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v16 = &v36 - v15;
  v17 = &v6[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_requestHandler];
  *v17 = NANBitmap.Channel.operatingClass.getter;
  *(v17 + 1) = 0;
  v18 = &v6[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_invalidationHandler];
  *v18 = 0;
  *(v18 + 1) = 0;
  *&v6[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_voucher] = 0;
  *&v6[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_wifiAwareEntitlementsManager] = 0;
  UUID.init()();
  v19 = [objc_allocWithZone(NSXPCConnection) init];
  *&v6[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_connection] = v19;
  *&v6[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_queue] = a3;
  v39 = a3;
  Logger.init(subsystem:category:)();
  (*(v11 + 32))(&v6[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_logger], v16, v10);
  v41 = 0x6470327069666977;
  v42 = 0xE90000000000002ELL;
  v20._countAndFlagsBits = a1;
  v20._object = a2;
  String.append(_:)(v20);

  v21 = v42;
  v22 = &v6[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_processName];
  *v22 = v41;
  v22[1] = v21;
  v23 = &v6[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_clientBundleID];
  v24 = v38;
  *v23 = v37;
  *(v23 + 1) = v24;
  v25 = &v6[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_clientPID];
  *v25 = 0;
  v25[4] = 1;
  v26 = type metadata accessor for XPCSession(0);
  v40.receiver = v6;
  v40.super_class = v26;
  v27 = objc_msgSendSuper2(&v40, "init");
  (*(v11 + 16))(v14, v27 + OBJC_IVAR____TtC12wifip2pdCore10XPCSession_logger, v10);
  v28 = v27;
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    *v31 = 138412290;
    *(v31 + 4) = v28;
    *v32 = v28;
    v33 = v28;
    _os_log_impl(&_mh_execute_header, v29, v30, "%@ was created", v31, 0xCu);
    sub_100016290(v32, &qword_10058B780, &qword_100480AC0);

    v34 = v39;
  }

  else
  {
    v34 = v28;
    v33 = v29;
    v29 = v39;
  }

  (*(v11 + 8))(v14, v10);
  return v28;
}

uint64_t sub_100301920(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC12wifip2pdCore10XPCSession_connection);
  sub_1001B3C5C(a1, v11);
  v4 = v12;
  if (v12)
  {
    sub_100029B34(v11, v12);
    v5 = *(v4 - 8);
    v6 = *(v5 + 64);
    __chkstk_darwin();
    v8 = v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v5 + 16))(v8);
    v9 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v5 + 8))(v8, v4);
    sub_100002A00(v11);
  }

  else
  {
    v9 = 0;
  }

  [v3 setExportedObject:v9];
  swift_unknownObjectRelease();
  return sub_100016290(a1, &qword_10058BA80, &qword_1004818C0);
}

uint64_t sub_100301ABC()
{
  result = type metadata accessor for Logger();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = type metadata accessor for UUID();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_100301BC4()
{
  v1 = type metadata accessor for Mirror.AncestorRepresentation();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin();
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(*(sub_10005DC58(&unk_10058FC10, &qword_100484170) - 8) + 64);
  __chkstk_darwin();
  v8 = &v13 - v7;
  v14 = *v0;
  v9 = v14;
  v13 = _swiftEmptyArrayStorage;
  v10 = type metadata accessor for Mirror.DisplayStyle();
  (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  (*(v2 + 104))(v5, enum case for Mirror.AncestorRepresentation.generated(_:), v1);
  type metadata accessor for XPCSession(0);
  v11 = v9;
  sub_10005DC58(&qword_10058C7A0, &qword_100481FD0);
  sub_1000B9D64();
  return Mirror.init<A, B>(_:children:displayStyle:ancestorRepresentation:)();
}

id sub_100301D90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(*(type metadata accessor for DispatchWorkItemFlags() - 8) + 64);
  __chkstk_darwin();
  if (sub_10001991C(&off_100572F30))
  {
    v23[0] = a1;
    v23[1] = a2;
    v23[3] = 0;
    v23[4] = 0;
    v23[2] = a3;
    v24 = 0;
    static DispatchWorkItemFlags.assignCurrentContext.getter();
    aBlock[4] = NANBitmap.Channel.operatingClass.getter;
    aBlock[5] = 0;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10000C8B8;
    aBlock[3] = &unk_1005759C8;
    _Block_copy(aBlock);
    v9 = type metadata accessor for DispatchWorkItem();
    v10 = *(v9 + 48);
    v11 = *(v9 + 52);
    swift_allocObject();
    v12 = DispatchWorkItem.init(flags:block:)();
    v13 = *&v3[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_voucher];
    *&v3[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_voucher] = v12;

    v15 = *&v3[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_requestHandler];
    v14 = *&v3[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_requestHandler + 8];

    v15(v23, v4);
  }

  else
  {
    v17 = v3;
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 67109120;
      *(v20 + 4) = [*(&v17->isa + OBJC_IVAR____TtC12wifip2pdCore10XPCSession_connection) processIdentifier];

      _os_log_impl(&_mh_execute_header, v18, v19, "Invalidating XPC connection to process with PID %d", v20, 8u);
    }

    else
    {

      v18 = v17;
    }

    v21 = *(&v17->isa + OBJC_IVAR____TtC12wifip2pdCore10XPCSession_connection);

    return [v21 invalidate];
  }
}

id sub_100302034(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(*(type metadata accessor for DispatchWorkItemFlags() - 8) + 64);
  __chkstk_darwin();
  if (sub_10001991C(&off_100572F58))
  {
    v23[0] = a1;
    v23[1] = a2;
    v23[3] = 0;
    v23[4] = 0;
    v23[2] = a3;
    v24 = 1;
    static DispatchWorkItemFlags.assignCurrentContext.getter();
    aBlock[4] = NANBitmap.Channel.operatingClass.getter;
    aBlock[5] = 0;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10000C8B8;
    aBlock[3] = &unk_100575978;
    _Block_copy(aBlock);
    v9 = type metadata accessor for DispatchWorkItem();
    v10 = *(v9 + 48);
    v11 = *(v9 + 52);
    swift_allocObject();
    v12 = DispatchWorkItem.init(flags:block:)();
    v13 = *&v3[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_voucher];
    *&v3[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_voucher] = v12;

    v15 = *&v3[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_requestHandler];
    v14 = *&v3[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_requestHandler + 8];

    v15(v23, v4);
  }

  else
  {
    v17 = v3;
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 67109120;
      *(v20 + 4) = [*(&v17->isa + OBJC_IVAR____TtC12wifip2pdCore10XPCSession_connection) processIdentifier];

      _os_log_impl(&_mh_execute_header, v18, v19, "Invalidating XPC connection to process with PID %d", v20, 8u);
    }

    else
    {

      v18 = v17;
    }

    v21 = *(&v17->isa + OBJC_IVAR____TtC12wifip2pdCore10XPCSession_connection);

    return [v21 invalidate];
  }
}

id sub_1003022DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(*(type metadata accessor for DispatchWorkItemFlags() - 8) + 64);
  __chkstk_darwin();
  if (sub_10001991C(&off_100572F80) & 1) != 0 || (sub_10001991C(&off_100572FA8))
  {
    v23[0] = a1;
    v23[1] = a2;
    v23[3] = 0;
    v23[4] = 0;
    v23[2] = a3;
    v24 = 2;
    static DispatchWorkItemFlags.assignCurrentContext.getter();
    aBlock[4] = NANBitmap.Channel.operatingClass.getter;
    aBlock[5] = 0;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10000C8B8;
    aBlock[3] = &unk_100575928;
    _Block_copy(aBlock);
    v9 = type metadata accessor for DispatchWorkItem();
    v10 = *(v9 + 48);
    v11 = *(v9 + 52);
    swift_allocObject();
    v12 = DispatchWorkItem.init(flags:block:)();
    v13 = *&v3[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_voucher];
    *&v3[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_voucher] = v12;

    v15 = *&v3[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_requestHandler];
    v14 = *&v3[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_requestHandler + 8];

    v15(v23, v4);
  }

  else
  {
    v17 = v3;
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 67109120;
      *(v20 + 4) = [*(&v17->isa + OBJC_IVAR____TtC12wifip2pdCore10XPCSession_connection) processIdentifier];

      _os_log_impl(&_mh_execute_header, v18, v19, "Invalidating XPC connection to process with PID %d", v20, 8u);
    }

    else
    {

      v18 = v17;
    }

    v21 = *(&v17->isa + OBJC_IVAR____TtC12wifip2pdCore10XPCSession_connection);

    return [v21 invalidate];
  }
}

uint64_t sub_100302598(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(*(type metadata accessor for DispatchWorkItemFlags() - 8) + 64);
  __chkstk_darwin();
  v18[0] = a1;
  v18[1] = a2;
  v18[3] = 0;
  v18[4] = 0;
  v18[2] = a3;
  v19 = 6;
  if ((a1 | 4) != 4)
  {
    static DispatchWorkItemFlags.assignCurrentContext.getter();
    aBlock[4] = NANBitmap.Channel.operatingClass.getter;
    aBlock[5] = 0;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10000C8B8;
    aBlock[3] = &unk_100575888;
    _Block_copy(aBlock);
    v9 = type metadata accessor for DispatchWorkItem();
    v10 = *(v9 + 48);
    v11 = *(v9 + 52);
    swift_allocObject();
    v12 = DispatchWorkItem.init(flags:block:)();
    v13 = *(v3 + OBJC_IVAR____TtC12wifip2pdCore10XPCSession_voucher);
    *(v3 + OBJC_IVAR____TtC12wifip2pdCore10XPCSession_voucher) = v12;
  }

  v15 = *(v3 + OBJC_IVAR____TtC12wifip2pdCore10XPCSession_requestHandler);
  v14 = *(v3 + OBJC_IVAR____TtC12wifip2pdCore10XPCSession_requestHandler + 8);

  v15(v18, v4);
}

id sub_100302858(unsigned __int8 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v11 = *(*(type metadata accessor for DispatchWorkItemFlags() - 8) + 64);
  __chkstk_darwin();
  if (sub_10001991C(&off_100573070) & 1) != 0 || (sub_10001991C(&off_100573098))
  {
    v26[0] = a1;
    v26[1] = a2;
    v26[2] = WiFiMACAddress.wifiAddress.getter() & 0xFFFFFFFFFFFFLL;
    v26[3] = a4;
    v26[4] = a5;
    v27 = 5;
    static DispatchWorkItemFlags.assignCurrentContext.getter();
    aBlock[4] = NANBitmap.Channel.operatingClass.getter;
    aBlock[5] = 0;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10000C8B8;
    aBlock[3] = &unk_1005757E8;
    _Block_copy(aBlock);
    v12 = type metadata accessor for DispatchWorkItem();
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    swift_allocObject();
    v15 = DispatchWorkItem.init(flags:block:)();
    v16 = *&v5[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_voucher];
    *&v5[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_voucher] = v15;

    v18 = *&v5[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_requestHandler];
    v17 = *&v5[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_requestHandler + 8];

    v18(v26, v6);
  }

  else
  {
    v20 = v5;
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 67109120;
      *(v23 + 4) = [*(&v20->isa + OBJC_IVAR____TtC12wifip2pdCore10XPCSession_connection) processIdentifier];

      _os_log_impl(&_mh_execute_header, v21, v22, "Invalidating XPC connection to process with PID %d", v23, 8u);
    }

    else
    {

      v21 = v20;
    }

    v24 = *(&v20->isa + OBJC_IVAR____TtC12wifip2pdCore10XPCSession_connection);

    return [v24 invalidate];
  }
}

uint64_t sub_100302CD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = *(*(type metadata accessor for DispatchWorkItemFlags() - 8) + 64);
  __chkstk_darwin();
  v17[0] = WiFiMACAddress.wifiAddress.getter() & 0xFFFFFFFFFFFFLL;
  v17[1] = a2;
  v17[2] = a3;
  v18 = 9;
  static DispatchWorkItemFlags.assignCurrentContext.getter();
  aBlock[4] = NANBitmap.Channel.operatingClass.getter;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000C8B8;
  aBlock[3] = &unk_100575720;
  _Block_copy(aBlock);
  v8 = type metadata accessor for DispatchWorkItem();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  v11 = DispatchWorkItem.init(flags:block:)();
  v12 = *(v3 + OBJC_IVAR____TtC12wifip2pdCore10XPCSession_voucher);
  *(v3 + OBJC_IVAR____TtC12wifip2pdCore10XPCSession_voucher) = v11;

  v14 = *(v3 + OBJC_IVAR____TtC12wifip2pdCore10XPCSession_requestHandler);
  v13 = *(v3 + OBJC_IVAR____TtC12wifip2pdCore10XPCSession_requestHandler + 8);

  v14(v17, v4);
}

void sub_100302EB4(uint64_t a1, uint64_t a2)
{
  sub_10005DC58(&unk_10059B2B0, &qword_100482FC0);
  isa = Array._bridgeToObjectiveC()().super.isa;
  (*(a2 + 16))(a2, isa);
}

uint64_t sub_100302F84(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v30 = a2;
  v5 = *(*(type metadata accessor for DispatchWorkItemFlags() - 8) + 64);
  __chkstk_darwin();
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
LABEL_20:
    v8 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = 0;
  v10 = _swiftEmptyArrayStorage;
  while (v8 != v9)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v12 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_18;
      }
    }

    else
    {
      if (v9 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_19;
      }

      v11 = *(a1 + 8 * v9 + 32);
      v12 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
LABEL_18:
        __break(1u);
LABEL_19:
        __break(1u);
        goto LABEL_20;
      }
    }

    v13 = Channel.init(apiChannel:)(v11);
    ++v9;
    if ((v13 & 0xFF00000000) != 0x300000000)
    {
      v28 = v7;
      v14 = v13;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v29 = a3;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v10 = sub_100011C2C(0, *(v10 + 2) + 1, 1, v10);
      }

      v17 = *(v10 + 2);
      v16 = *(v10 + 3);
      if (v17 >= v16 >> 1)
      {
        v10 = sub_100011C2C((v16 > 1), v17 + 1, 1, v10);
      }

      *(v10 + 2) = v17 + 1;
      v18 = &v10[8 * v17];
      *(v18 + 8) = v14;
      v18[36] = BYTE4(v14);
      v18[37] = BYTE5(v14);
      v9 = v12;
      v7 = v28;
      a3 = v29;
    }
  }

  v33[0] = v10;
  v33[1] = v30;
  v33[3] = 0;
  v33[4] = 0;
  v33[2] = a3;
  v34 = 16;

  static DispatchWorkItemFlags.assignCurrentContext.getter();
  aBlock[4] = NANBitmap.Channel.operatingClass.getter;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000C8B8;
  aBlock[3] = &unk_1005755E0;
  _Block_copy(aBlock);
  v19 = type metadata accessor for DispatchWorkItem();
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  v22 = DispatchWorkItem.init(flags:block:)();
  v23 = v31;
  v24 = *(v31 + OBJC_IVAR____TtC12wifip2pdCore10XPCSession_voucher);
  *(v31 + OBJC_IVAR____TtC12wifip2pdCore10XPCSession_voucher) = v22;

  v25 = *(v23 + OBJC_IVAR____TtC12wifip2pdCore10XPCSession_requestHandler);
  v26 = *(v23 + OBJC_IVAR____TtC12wifip2pdCore10XPCSession_requestHandler + 8);

  v25(v33, v23);
}

uint64_t sub_100303318(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(*(type metadata accessor for DispatchWorkItemFlags() - 8) + 64);
  __chkstk_darwin();
  v18[0] = a1;
  v18[1] = a2;
  v18[3] = 0;
  v18[4] = 0;
  v18[2] = a3;
  v19 = 13;
  static DispatchWorkItemFlags.assignCurrentContext.getter();
  aBlock[4] = NANBitmap.Channel.operatingClass.getter;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000C8B8;
  aBlock[3] = &unk_100575590;
  _Block_copy(aBlock);
  v9 = type metadata accessor for DispatchWorkItem();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  v12 = DispatchWorkItem.init(flags:block:)();
  v13 = *(v4 + OBJC_IVAR____TtC12wifip2pdCore10XPCSession_voucher);
  *(v4 + OBJC_IVAR____TtC12wifip2pdCore10XPCSession_voucher) = v12;

  v15 = *(v4 + OBJC_IVAR____TtC12wifip2pdCore10XPCSession_requestHandler);
  v14 = *(v4 + OBJC_IVAR____TtC12wifip2pdCore10XPCSession_requestHandler + 8);

  v15(v18, v4);
}

uint64_t sub_1003034C4(void *a1, int a2, void *a3, void *aBlock, uint64_t a5, uint64_t a6, void (*a7)(id, uint64_t, uint64_t))
{
  v11 = _Block_copy(aBlock);
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  v13 = a3;
  v14 = a1;
  a7(v13, a6, v12);
}

uint64_t sub_100303668(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = *(*(type metadata accessor for DispatchWorkItemFlags() - 8) + 64);
  __chkstk_darwin();
  v22[0] = a1;
  v22[1] = a2;
  v22[2] = a3;
  v22[3] = a4;
  v22[4] = a5;
  v23 = 18;
  static DispatchWorkItemFlags.assignCurrentContext.getter();
  aBlock[4] = NANBitmap.Channel.operatingClass.getter;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000C8B8;
  aBlock[3] = &unk_100575478;
  _Block_copy(aBlock);
  v13 = type metadata accessor for DispatchWorkItem();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  v16 = DispatchWorkItem.init(flags:block:)();
  v17 = *(v6 + OBJC_IVAR____TtC12wifip2pdCore10XPCSession_voucher);
  *(v6 + OBJC_IVAR____TtC12wifip2pdCore10XPCSession_voucher) = v16;

  v19 = *(v6 + OBJC_IVAR____TtC12wifip2pdCore10XPCSession_requestHandler);
  v18 = *(v6 + OBJC_IVAR____TtC12wifip2pdCore10XPCSession_requestHandler + 8);

  v19(v22, v6);
}

uint64_t sub_1003038C4(uint64_t a1)
{
  v1 = (*(a1 + OBJC_IVAR____TtC12wifip2pdCore12XPCResponder_session) + OBJC_IVAR____TtC12wifip2pdCore10XPCSession_invalidationHandler);
  v2 = *v1;
  v3 = v1[1];
  *v1 = 0;
  v1[1] = 0;
  sub_100010520(v2);
  memset(v5, 0, sizeof(v5));
  return sub_100301920(v5);
}

id sub_10030394C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for XPCResponder(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100303A28()
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

uint64_t sub_100303AD0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xEE && *(a1 + 41))
  {
    return (*a1 + 238);
  }

  v3 = *(a1 + 40);
  if (v3 <= 0x12)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_100303B18(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xED)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 238;
    if (a3 >= 0xEE)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xEE)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_100303B80@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC12wifip2pdCore12XPCResponder_logger;
  v5 = type metadata accessor for Logger();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

void sub_100303BFC()
{
  v1 = *(v0 + 16);
  isa = Array._bridgeToObjectiveC()().super.isa;
  (*(v1 + 16))(v1, isa);
}

void sub_100303C60()
{
  v1 = *(v0 + 16);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  (*(v1 + 16))(v1, isa);
}

char *sub_100303CDC(void *a1, uint64_t a2, uint64_t a3)
{
  *&v3[OBJC_IVAR____TtC12wifip2pdCore12XPCResponder_session] = a1;
  v7 = OBJC_IVAR____TtC12wifip2pdCore12XPCResponder_logger;
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  (*(v9 + 16))(&v3[v7], a2, v8);
  v10 = type metadata accessor for XPCResponder(0);
  v30.receiver = v3;
  v30.super_class = v10;
  v11 = a1;
  v12 = objc_msgSendSuper2(&v30, "init");
  v13 = OBJC_IVAR____TtC12wifip2pdCore12XPCResponder_session;
  v14 = *&v12[OBJC_IVAR____TtC12wifip2pdCore12XPCResponder_session];
  v15 = objc_opt_self();
  v16 = v12;
  v17 = v14;
  v18 = [v15 interfaceWithProtocol:a3];
  [*&v17[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_connection] setExportedInterface:v18];

  v19 = *&v12[v13];
  v20 = swift_allocObject();
  *(v20 + 16) = v16;
  v21 = &v19[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_invalidationHandler];
  v22 = *&v19[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_invalidationHandler];
  v23 = *&v19[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_invalidationHandler + 8];
  *v21 = sub_100303ED0;
  v21[1] = v20;
  v24 = v16;
  v25 = v19;
  sub_100010520(v22);

  v26 = *&v12[v13];
  v29[3] = v10;
  v29[0] = v24;
  v27 = v26;
  sub_100301920(v29);

  (*(v9 + 8))(a2, v8);
  return v24;
}

uint64_t sub_100304014(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x1000000000000000) == 0 && ((a2 & 0x2000000000000000) != 0 || (a1 & 0x1000000000000000) != 0))
  {
    return os_transaction_create();
  }

  sub_10005DC58(&unk_10059B080, &unk_1004B01D0);
  result = _StringGuts._slowWithCString<A>(_:)();
  if (!v2)
  {
    return v4;
  }

  return result;
}

uint64_t sub_1003040CC()
{
  swift_weakDestroy();
  v1 = *(v0 + qword_10059B920);
  swift_unknownObjectRelease();
  v2 = *(v0 + qword_10059B928);
  v3 = *(v0 + qword_10059B928 + 8);
  v5 = *(v0 + qword_10059B928 + 16);
  v4 = *(v0 + qword_10059B928 + 24);

  v6 = *(v0 + qword_100595DB0);

  return swift_unknownObjectRelease();
}

id sub_10030415C()
{
  ObjectType = swift_getObjectType();
  swift_getWitnessTable();
  BonjourOffload.stopAllServices()();
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_1003041F0(uint64_t a1)
{
  swift_weakDestroy();
  v2 = *(a1 + qword_10059B920);
  swift_unknownObjectRelease();
  v3 = *(a1 + qword_10059B928);
  v4 = *(a1 + qword_10059B928 + 8);
  v6 = *(a1 + qword_10059B928 + 16);
  v5 = *(a1 + qword_10059B928 + 24);

  v7 = *(a1 + qword_100595DB0);

  return swift_unknownObjectRelease();
}

uint64_t sub_1003042F0(void *a1, uint64_t (*a2)(void), uint64_t a3, void (*a4)(uint64_t *, uint64_t, uint64_t), void (*a5)(uint64_t *, uint64_t, uint64_t), void (*a6)(uint64_t *, uint64_t, uint64_t))
{
  v25 = a4;
  v26 = a5;
  ObjectType = swift_getObjectType();
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin();
  v14 = (&v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = OS_dispatch_queue.nan.unsafeMutableAddressor();
  v16 = *v15;
  *v14 = *v15;
  (*(v11 + 104))(v14, enum case for DispatchPredicate.onQueue(_:), v10);
  v17 = v16;
  LOBYTE(v16) = _dispatchPreconditionTest(_:)();
  result = (*(v11 + 8))(v14, v10);
  if (v16)
  {
    WitnessTable = swift_getWitnessTable();
    BonjourOffload.record(from:)(a1, &v27);
    if (v28)
    {
      sub_100179C1C(&v27, v29);
      v20 = [a1 serviceValue];
      if (v20)
      {
        v21 = v20;
        v22 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v24 = v23;

        sub_1000124C8(v22, v24);
        if ([a1 isResolve])
        {
          v25(v29, ObjectType, WitnessTable);
        }

        else
        {
          v26(v29, ObjectType, WitnessTable);
        }
      }

      else
      {
        a6(v29, ObjectType, WitnessTable);
      }

      sub_100002A00(v29);
    }

    else
    {
      sub_100016290(&v27, &qword_100595FC0, &qword_1004B01B0);
    }

    return a2(0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10030459C(void *a1, int a2, void *a3, void *aBlock, uint64_t (*a5)(void), void (*a6)(uint64_t *, uint64_t, uint64_t), void (*a7)(uint64_t *, uint64_t, uint64_t), void (*a8)(uint64_t *, uint64_t, uint64_t))
{
  v14 = _Block_copy(aBlock);
  v17[2] = v14;
  v15 = a3;
  v16 = a1;
  sub_1003042F0(v15, a5, v17, a6, a7, a8);
  _Block_release(v14);
}

uint64_t sub_100304658()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_100304708()
{
  sub_1003076F4();

  return swift_unknownObjectRetain();
}

uint64_t (*sub_100304770(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_100303FB4();
  return sub_100307954;
}

uint64_t sub_1003047E0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1003049D4(&qword_10059B918, sub_10040CAE8);
  *a1 = result;
  return result;
}

unint64_t sub_100304824()
{
  swift_getObjectType();

  return BonjourOffload.peersToInvalidate()();
}

uint64_t sub_100304860(void *a1)
{
  v2 = (v1 + *a1);
  swift_beginAccess();
  v3 = *v2;
  v4 = v2[1];
  v6 = v2[2];
  v5 = v2[3];

  return v3;
}

uint64_t sub_1003048E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = (v5 + *a5);
  swift_beginAccess();
  v11 = *v10;
  v12 = v10[1];
  v14 = v10[2];
  v13 = v10[3];
  *v10 = a1;
  v10[1] = a2;
  v10[2] = a3;
  v10[3] = a4;
}

uint64_t sub_1003049D4(uint64_t *a1, uint64_t (*a2)(void))
{
  v3 = *a1;
  if (!swift_weakLoadStrong())
  {
    return 0;
  }

  v4 = a2();

  return v4;
}

uint64_t sub_100304A28(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v8 = &v39[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AWDLPeer(0);
  v10 = (a1 + *(v9 + 20));
  v11 = *v10;
  v12 = v10[1];
  v13 = *(v10 + 2) << 16;
  v14 = a1 + *(v9 + 52);
  if (*(v14 + 16))
  {
    v15 = *(v14 + 8);
    v16 = *(v14 + 16);
  }

  else
  {
    UUID.init()();
    v15 = UUID.uuidString.getter();
    v16 = v17;
    (*(v5 + 8))(v8, v4);
  }

  v18 = WiFiAddress.ipv6LinkLocalAddress.getter(v11 | (v12 << 8) | v13);
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v40 = &type metadata for DNSRecords.AAAA;
  v41 = &protocol witness table for DNSRecords.AAAA;
  v25 = swift_allocObject();
  v39[0] = v25;
  *(v25 + 16) = 27;
  *(v25 + 24) = v15;
  *(v25 + 32) = v16;
  *(v25 + 40) = 1;
  *(v25 + 48) = v18;
  *(v25 + 56) = v20;
  *(v25 + 64) = v22;
  *(v25 + 72) = v24;
  if (a2)
  {
    sub_100029B34(v39, &type metadata for DNSRecords.AAAA);
    v26 = sub_100172208();
    v28 = v27;
    v29.super.isa = Data._bridgeToObjectiveC()().super.isa;
    sub_1000124C8(v26, v28);
    v30 = v40;
    v31 = v41;
    sub_100029B34(v39, v40);
    v32 = (v31[2])(v30, v31);
    if (v33 >> 60 == 15)
    {
      isa = 0;
    }

    else
    {
      v35 = v32;
      v36 = v33;
      isa = Data._bridgeToObjectiveC()().super.isa;
      sub_100017554(v35, v36);
    }

    [a2 handleEventType:3 keyData:v29.super.isa valueData:isa];
  }

  return sub_100002A00(v39);
}

uint64_t sub_100304CA4()
{
  swift_weakDestroy();
  v1 = *(v0 + qword_10059B938);
  swift_unknownObjectRelease();
  v2 = *(v0 + qword_10059B940);
  v3 = *(v0 + qword_10059B940 + 8);
  v5 = *(v0 + qword_10059B940 + 16);
  v4 = *(v0 + qword_10059B940 + 24);

  v6 = qword_10059B948;
  v7 = type metadata accessor for UUID();
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  v8 = *(v0 + qword_100595E38);

  return swift_unknownObjectRelease();
}

id sub_100304D74()
{
  ObjectType = swift_getObjectType();
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (swift_weakLoadStrong())
  {
    (*(v3 + 16))(v6, v0 + qword_10059B948, v2);
    sub_10044C0F4(v6);

    (*(v3 + 8))(v6, v2);
  }

  swift_getWitnessTable();
  BonjourOffload.stopAllServices()();
  v8.receiver = v0;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, "dealloc");
}

uint64_t sub_100304F00(uint64_t a1)
{
  swift_weakDestroy();
  v2 = *(a1 + qword_10059B938);
  swift_unknownObjectRelease();
  v3 = *(a1 + qword_10059B940);
  v4 = *(a1 + qword_10059B940 + 8);
  v6 = *(a1 + qword_10059B940 + 16);
  v5 = *(a1 + qword_10059B940 + 24);

  v7 = qword_10059B948;
  v8 = type metadata accessor for UUID();
  (*(*(v8 - 8) + 8))(a1 + v7, v8);
  v9 = *(a1 + qword_100595E38);

  return swift_unknownObjectRelease();
}

id sub_100304FEC(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = String._bridgeToObjectiveC()();

  return v5;
}

uint64_t sub_10030505C()
{
  swift_getObjectType();

  return _typeName(_:qualified:)();
}

uint64_t sub_10030508C(void *a1, uint64_t (*a2)(void), uint64_t a3)
{
  v4 = v3;
  v155 = a3;
  ObjectType = swift_getObjectType();
  v8 = swift_isaMask & *v3;
  v9 = *(*(sub_10005DC58(&qword_100595FC8, &unk_1004B01B8) - 8) + 64);
  __chkstk_darwin();
  v149 = v139 - v10;
  v152 = sub_10005DC58(&unk_100595FA0, &unk_1004B0190);
  v148 = *(v152 - 8);
  v11 = *(v148 + 64);
  __chkstk_darwin();
  v147 = v139 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v145 = v139 - v13;
  __chkstk_darwin();
  v151 = v139 - v14;
  __chkstk_darwin();
  v153 = v139 - v15;
  __chkstk_darwin();
  v17 = v139 - v16;
  __chkstk_darwin();
  v146 = v139 - v18;
  v19 = type metadata accessor for DispatchPredicate();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin();
  v23 = (v139 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = OS_dispatch_queue.awdl.unsafeMutableAddressor();
  v25 = *v24;
  *v23 = *v24;
  (*(v20 + 104))(v23, enum case for DispatchPredicate.onQueue(_:), v19);
  v26 = v25;
  LOBYTE(v25) = _dispatchPreconditionTest(_:)();
  result = (*(v20 + 8))(v23, v19);
  if ((v25 & 1) == 0)
  {
    __break(1u);
LABEL_58:
    __break(1u);
    return result;
  }

  v150 = v17;
  v28 = v8;
  WitnessTable = swift_getWitnessTable();
  BonjourOffload.record(from:)(a1, &v163);
  if (!v165)
  {
    sub_100016290(&v163, &qword_100595FC0, &qword_1004B01B0);
    return a2(0);
  }

  v154 = a2;
  sub_100179C1C(&v163, v160);
  v30 = v161;
  v31 = v162;
  sub_100029B34(v160, v161);
  v32 = (*(v31 + 40))(v30, v31);
  if (v33)
  {
    v35 = v32;
    v36 = v33;
    v37 = v34;
    v38 = *DNSRecords.Identifier.deniedList.unsafeMutableAddressor();

    v39 = sub_100447CAC(v35, v36, v37 & 0xFF01, v38);

    if (v39)
    {

      v40 = Logger.logObject.getter();
      v41 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        *&v163 = v43;
        *v42 = 136315138;
        v44 = DNSRecords.Identifier.description.getter(v35, v36, v37 & 0xFFFFFF01);
        v46 = v45;

        v47 = sub_100002320(v44, v46, &v163);

        *(v42 + 4) = v47;
        _os_log_impl(&_mh_execute_header, v40, v41, "Denied service: %s, not starting discovery over AWDL", v42, 0xCu);
        sub_100002A00(v43);
      }

      else
      {
      }

      a2 = v154;
      goto LABEL_20;
    }
  }

  v48 = [a1 serviceValue];
  if (v48)
  {
    v49 = v48;
    v50 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v52 = v51;

    sub_1000124C8(v50, v52);
    v53 = [a1 isResolve];
    a2 = v154;
    if (v53)
    {
      BonjourOffload.startResolving(record:)(v160, ObjectType, WitnessTable);
    }

    else
    {
      BonjourOffload.startAdvertising(record:)(v160, ObjectType, WitnessTable);
    }

    goto LABEL_20;
  }

  BonjourOffload.startBrowsing(record:)(v160, ObjectType, WitnessTable);
  sub_10002B154(v160, &v163);
  sub_10005DC58(&unk_100595FD0, &qword_100486B50);
  v54 = swift_dynamicCast();
  a2 = v154;
  if ((v54 & 1) == 0)
  {
    goto LABEL_20;
  }

  v55 = v158;
  if (v156 != 27)
  {
    goto LABEL_16;
  }

  v56 = v157;
  v57 = v159;
  v58 = sub_1003049D4(&qword_10059B930, sub_10004D020);
  v143 = v56;
  v140 = v57;
  if (v58)
  {
    v59 = qword_10059BA40;
    v60 = v58;
    swift_beginAccess();
    v61 = *(v60 + v59);

    *&v163 = v61;
    __chkstk_darwin();
    v62 = *(v28 + 112);
    v139[-6] = *(v28 + 104);
    v139[-5] = v62;
    LOBYTE(v139[-4]) = 27;
    v139[-3] = v56;
    v139[-2] = v55;
    LOBYTE(v139[-1]) = v57;
    type metadata accessor for AWDLDiscoveryEngine.DatapathInitiator();
    sub_10002B68C();
    type metadata accessor for Dictionary();
    swift_getWitnessTable();
    LOBYTE(v60) = Sequence.contains(where:)();

    if (v60)
    {
LABEL_16:

      goto LABEL_20;
    }
  }

  Strong = swift_weakLoadStrong();
  if (!Strong)
  {

    v95 = v149;
    (*(v148 + 56))(v149, 1, 1, v152);
LABEL_44:
    sub_100016290(v95, &qword_100595FC8, &unk_1004B01B8);
    goto LABEL_20;
  }

  v139[1] = 0;
  v141 = v55;
  v64 = *(*Strong + 448);
  v65 = Strong;
  swift_beginAccess();
  v66 = *(v65 + v64);

  v67 = v66 + 64;
  v68 = 1 << *(v66 + 32);
  v69 = -1;
  if (v68 < 64)
  {
    v69 = ~(-1 << v68);
  }

  v70 = v69 & *(v66 + 64);
  v71 = (v68 + 63) >> 6;
  v144 = v66;

  v72 = 0;
  v73 = &unk_100595FA0;
  for (i = v66 + 64; ; v67 = i)
  {
    if (!v70)
    {
      while (1)
      {
        v75 = v72 + 1;
        if (__OFADD__(v72, 1))
        {
          goto LABEL_58;
        }

        if (v75 >= v71)
        {

          v93 = v148;
          v94 = *(v148 + 56);
          v95 = v149;
          v96 = v149;
          v97 = 1;
          goto LABEL_41;
        }

        v70 = *(v67 + 8 * v75);
        ++v72;
        if (v70)
        {
          v74 = v73;
          v72 = v75;
          goto LABEL_33;
        }
      }
    }

    v74 = v73;
LABEL_33:
    v76 = __clz(__rbit64(v70)) | (v72 << 6);
    v77 = *(v144 + 56);
    v78 = *(v144 + 48) + 6 * v76;
    v79 = *(v78 + 4);
    v80 = (type metadata accessor for AWDLPeer(0) - 8);
    v81 = v77 + *(*v80 + 72) * v76;
    v82 = v152;
    LODWORD(v76) = *v78;
    v83 = v150;
    sub_100307704(v81, &v150[*(v152 + 48)]);
    *v83 = v76;
    *(v83 + 4) = v79;
    v84 = v153;
    sub_100307838(v83, v153);
    v85 = v84;
    v86 = v151;
    v73 = v74;
    sub_100012400(v85, v151, v74, &unk_1004B0190);
    v87 = v86 + *(v82 + 48);
    v88 = v87 + v80[15];
    v90 = *(v88 + 8);
    v89 = *(v88 + 16);

    sub_1003077CC(v87);
    a2 = v154;
    if (!v89)
    {
      goto LABEL_26;
    }

    if (v90 == v143 && v89 == v141)
    {
      break;
    }

    v92 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v92)
    {

      goto LABEL_56;
    }

LABEL_26:
    v70 &= v70 - 1;
    result = sub_100016290(v153, v74, &unk_1004B0190);
  }

LABEL_56:
  v95 = v149;
  sub_100307838(v153, v149);
  v93 = v148;
  v94 = *(v148 + 56);
  v96 = v95;
  v97 = 0;
LABEL_41:
  v98 = v152;
  v94(v96, v97, 1, v152);
  v99 = v146;
  v100 = v147;
  v101 = v145;

  if ((*(v93 + 48))(v95, 1, v98) == 1)
  {

    goto LABEL_44;
  }

  sub_100307838(v95, v99);
  sub_100012400(v99, v101, &unk_100595FA0, &unk_1004B0190);
  v102 = v141;

  v103 = Logger.logObject.getter();
  v104 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v103, v104))
  {
    v105 = swift_slowAlloc();
    LODWORD(v151) = v104;
    v106 = v105;
    v153 = swift_slowAlloc();
    *&v163 = v153;
    *v106 = 136315394;
    sub_100012400(v101, v100, &unk_100595FA0, &unk_1004B0190);
    v107 = *(v98 + 48);
    v108 = WiFiAddress.ipv6LinkLocalAddress.getter(*v100 | (*(v100 + 1) << 16));
    v110 = v109;
    v112 = v111;
    v114 = v113;
    sub_1003077CC(&v147[v107]);
    v115 = v112;
    a2 = v154;
    v116 = IPv6Address.description.getter(v108, v110, v115, v114);
    v118 = v117;

    sub_100016290(v101, &unk_100595FA0, &unk_1004B0190);
    v119 = v116;
    v100 = v147;
    v99 = v146;
    v120 = sub_100002320(v119, v118, &v163);

    *(v106 + 4) = v120;
    *(v106 + 12) = 2080;

    v121 = v143;
    v122 = sub_100002320(v143, v102, &v163);

    *(v106 + 14) = v122;
    v98 = v152;
    _os_log_impl(&_mh_execute_header, v103, v151, "Recovered by providing ad-hoc AAAA record to %s for %s", v106, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_100016290(v101, &unk_100595FA0, &unk_1004B0190);
    v121 = v143;
  }

  v123 = v140;
  sub_100012400(v99, v100, &unk_100595FA0, &unk_1004B0190);
  v124 = *(v98 + 48);
  v125 = WiFiAddress.ipv6LinkLocalAddress.getter(*v100 | (*(v100 + 1) << 16));
  LOBYTE(v163) = 27;
  *(&v163 + 1) = v121;
  v164 = v102;
  LOBYTE(v165) = v123;
  v166 = v125;
  v167 = v126;
  v168 = v127;
  v169 = v128;
  sub_1003077CC(v100 + v124);
  v129 = *(v4 + qword_10059B938);
  if (v129)
  {
    v130 = *(v4 + qword_10059B938);
    swift_unknownObjectRetain();
    v131 = DNSRecords.AAAA.keyData.getter();
    v133 = v132;
    v134.super.isa = Data._bridgeToObjectiveC()().super.isa;
    sub_1000124C8(v131, v133);
    v135 = DNSRecords.AAAA.valueData.getter();
    v137 = v136;
    sub_1003078A8(&v163);
    if (v137 >> 60 == 15)
    {
      isa = 0;
    }

    else
    {
      isa = Data._bridgeToObjectiveC()().super.isa;
      sub_100017554(v135, v137);
    }

    [v129 handleEventType:0 keyData:v134.super.isa valueData:isa];
    swift_unknownObjectRelease();
  }

  else
  {
    sub_1003078A8(&v163);
  }

  sub_100016290(v99, &unk_100595FA0, &unk_1004B0190);
LABEL_20:
  sub_100002A00(v160);
  return a2(0);
}

uint64_t sub_100305F24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 40) + qword_10059BA68;
  swift_beginAccess();
  v7 = (v6 + *(type metadata accessor for DNSRecords.SRV() + 24));
  if (*v7 == a3 && v7[1] == a4)
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

uint64_t sub_100305FF0(void *a1, uint64_t (*a2)(void))
{
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin();
  v9 = (&v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = OS_dispatch_queue.awdl.unsafeMutableAddressor();
  v11 = *v10;
  *v9 = *v10;
  (*(v6 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v5);
  v12 = v11;
  LOBYTE(v11) = _dispatchPreconditionTest(_:)();
  result = (*(v6 + 8))(v9, v5);
  if (v11)
  {
    WitnessTable = swift_getWitnessTable();
    BonjourOffload.record(from:)(a1, &v29);
    if (v30)
    {
      sub_100179C1C(&v29, v31);
      v15 = v32;
      v16 = v33;
      sub_100029B34(v31, v32);
      v17 = (*(v16 + 40))(v15, v16);
      if (!v18)
      {
        goto LABEL_5;
      }

      v20 = v17;
      v21 = v18;
      v22 = v19;
      v23 = *DNSRecords.Identifier.deniedList.unsafeMutableAddressor();

      LOBYTE(v20) = sub_100447CAC(v20, v21, v22 & 0xFF01, v23);

      if ((v20 & 1) == 0)
      {
LABEL_5:
        v24 = [a1 serviceValue];
        if (v24)
        {
          v25 = v24;
          v26 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v28 = v27;

          sub_1000124C8(v26, v28);
          if ([a1 isResolve])
          {
            BonjourOffload.stopResolving(record:)(v31, ObjectType, WitnessTable);
          }

          else
          {
            BonjourOffload.stopAdvertising(record:)(v31, ObjectType, WitnessTable);
          }
        }

        else
        {
          BonjourOffload.stopBrowsing(record:)(v31, ObjectType, WitnessTable);
        }
      }

      sub_100002A00(v31);
    }

    else
    {
      sub_100016290(&v29, &qword_100595FC0, &qword_1004B01B0);
    }

    return a2(0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1003062E8(void *a1, int a2, void *a3, void *aBlock, uint64_t a5, void (*a6)(id, uint64_t, void *))
{
  v10 = _Block_copy(aBlock);
  v13[2] = v10;
  v11 = a3;
  v12 = a1;
  a6(v11, a5, v13);
  _Block_release(v10);
}

uint64_t sub_10030638C()
{
  v59 = type metadata accessor for UUID();
  v1 = *(v59 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin();
  v58 = &v56 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_10005DC58(&unk_100595FA0, &unk_1004B0190);
  v4 = *(*(v72 - 8) + 64);
  __chkstk_darwin();
  v65 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v71 = &v56 - v6;
  __chkstk_darwin();
  v70 = (&v56 - v7);
  __chkstk_darwin();
  v64 = &v56 - v8;
  Strong = swift_weakLoadStrong();
  v10 = _swiftEmptyArrayStorage;
  if (!Strong)
  {
LABEL_25:
    if (v10[2])
    {
      sub_10005DC58(&unk_10059B110, &qword_100480EA0);
      v53 = static _DictionaryStorage.allocate(capacity:)();
    }

    else
    {
      v53 = &_swiftEmptyDictionarySingleton;
    }

    v73 = v53;

    sub_100306C0C(v54, 1, &v73);

    return v73;
  }

  v11 = *(*Strong + 448);
  v12 = Strong;
  swift_beginAccess();
  v13 = *(v12 + v11);

  v14 = *(v13 + 16);
  if (!v14)
  {
LABEL_24:

    goto LABEL_25;
  }

  v73 = _swiftEmptyArrayStorage;
  sub_100367948(0, v14, 0);
  v10 = v73;
  v15 = v13 + 64;
  v16 = -1 << *(v13 + 32);
  v17 = _HashTable.startBucket.getter();
  v18 = 0;
  v19 = *(v13 + 36);
  v57 = (v1 + 8);
  v56 = v13 + 72;
  v62 = v13 + 64;
  v63 = v13;
  v60 = v14;
  v61 = v19;
  while ((v17 & 0x8000000000000000) == 0 && v17 < 1 << *(v13 + 32))
  {
    v22 = v17 >> 6;
    if ((*(v15 + 8 * (v17 >> 6)) & (1 << v17)) == 0)
    {
      goto LABEL_30;
    }

    if (v19 != *(v13 + 36))
    {
      goto LABEL_31;
    }

    v66 = v18;
    v69 = v10;
    v23 = v72;
    v24 = *(v72 + 48);
    v25 = *(v13 + 56);
    v26 = *(v13 + 48) + 6 * v17;
    v27 = *(v26 + 4);
    v28 = (type metadata accessor for AWDLPeer(0) - 8);
    v29 = v25 + *(*v28 + 72) * v17;
    LODWORD(v25) = *v26;
    v30 = v64;
    sub_100307704(v29, &v64[v24]);
    v31 = v70;
    *v70 = v25;
    *(v31 + 2) = v27;
    sub_100307768(&v30[v24], v31 + *(v23 + 48));
    v32 = v71;
    sub_100012400(v31, v71, &unk_100595FA0, &unk_1004B0190);
    v0.i32[0] = *v32;
    v33 = *(v32 + 4);
    v67 = *(v32 + 5);
    v34 = v65;
    sub_100012400(v31, v65, &unk_100595FA0, &unk_1004B0190);
    v35 = v34 + *(v23 + 48);
    v36 = v35 + v28[15];
    v38 = *(v36 + 8);
    v37 = *(v36 + 16);

    sub_1003077CC(v35);
    v68 = v33;
    if (!v37)
    {
      v39 = v58;
      UUID.init()();
      v38 = UUID.uuidString.getter();
      v37 = v40;
      (*v57)(v39, v59);
    }

    v10 = v69;
    sub_100016290(v70, &unk_100595FA0, &unk_1004B0190);
    sub_1003077CC(v71 + *(v72 + 48));
    v73 = v10;
    v42 = v10[2];
    v41 = v10[3];
    v13 = v63;
    if (v42 >= v41 >> 1)
    {
      sub_100367948((v41 > 1), v42 + 1, 1);
      v10 = v73;
    }

    v43 = vmovl_u8(v0).u64[0];
    v10[2] = v42 + 1;
    v44 = &v10[3 * v42];
    *(v44 + 8) = vuzp1_s8(v43, v43).u32[0];
    v45 = v67;
    *(v44 + 36) = v68;
    *(v44 + 37) = v45;
    v44[5] = v38;
    v44[6] = v37;
    v20 = 1 << *(v13 + 32);
    if (v17 >= v20)
    {
      goto LABEL_32;
    }

    v15 = v62;
    v46 = *(v62 + 8 * v22);
    if ((v46 & (1 << v17)) == 0)
    {
      goto LABEL_33;
    }

    LODWORD(v19) = v61;
    if (v61 != *(v13 + 36))
    {
      goto LABEL_34;
    }

    v47 = v46 & (-2 << (v17 & 0x3F));
    if (v47)
    {
      v20 = __clz(__rbit64(v47)) | v17 & 0x7FFFFFFFFFFFFFC0;
      v21 = v66;
    }

    else
    {
      v48 = v22 << 6;
      v49 = v22 + 1;
      v50 = (v56 + 8 * v22);
      while (v49 < (v20 + 63) >> 6)
      {
        v52 = *v50++;
        v51 = v52;
        v48 += 64;
        ++v49;
        if (v52)
        {
          sub_10002BEB8(v17, v61, 0);
          v20 = __clz(__rbit64(v51)) + v48;
          goto LABEL_23;
        }
      }

      sub_10002BEB8(v17, v61, 0);
LABEL_23:
      v21 = v66;
    }

    v18 = v21 + 1;
    v17 = v20;
    if (v18 == v60)
    {
      goto LABEL_24;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_10030694C()
{
  sub_100307828();

  return swift_unknownObjectRetain();
}

uint64_t (*sub_1003069B4(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_100304974();
  return sub_100306A24;
}

void sub_100306A28(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t sub_100306A70@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1003049D4(&qword_10059B930, sub_10004D020);
  *a1 = result;
  return result;
}

void sub_100306AB8(int a1, int a2, int a3, void *aBlock)
{
  v4 = _Block_copy(aBlock);
  v4[2](v4, 0);

  _Block_release(v4);
}

id sub_100306B14()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for EmptyBonjourOffload()
{
  result = qword_100595EF0;
  if (!qword_100595EF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100306C0C(uint64_t a1, char a2, void *a3)
{
  v3 = a1;
  v31 = *(a1 + 16);
  if (!v31)
  {
  }

  v5 = 0;
  v6 = 32;
  while (1)
  {
    if (v5 >= *(v3 + 16))
    {
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      goto LABEL_23;
    }

    v36 = *(v3 + v6);
    v37 = *(v3 + v6 + 16);
    v7 = v37;
    v9 = *(&v36 + 1);
    v8 = v36;
    sub_100012400(&v36, v35, &unk_100595FB0, &unk_1004B01A0);
    if (!v7)
    {
    }

    v32 = v5;
    v33 = v7;
    v38 = v8;
    v39 = BYTE2(v8);
    v40 = BYTE3(v8);
    v41 = BYTE4(v8);
    v42 = BYTE5(v8);
    v10 = *a3;
    v11 = sub_100041DE8(v8 & 0xFFFFFFFFFFFFLL);
    v13 = v10[2];
    v14 = (v12 & 1) == 0;
    v15 = __OFADD__(v13, v14);
    v16 = v13 + v14;
    if (v15)
    {
      goto LABEL_20;
    }

    v17 = v12;
    if (v10[3] >= v16)
    {
      break;
    }

    sub_1003126B0(v16, a2 & 1);
    v18 = *a3;
    v11 = sub_100041DE8(v8 & 0xFFFFFFFFFFFFLL);
    if ((v17 & 1) != (v19 & 1))
    {
      goto LABEL_22;
    }

LABEL_10:
    if (v17)
    {
      goto LABEL_15;
    }

LABEL_11:
    v20 = *a3;
    *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
    v21 = v20[6] + 6 * v11;
    *v21 = v8;
    *(v21 + 2) = BYTE2(v8);
    *(v21 + 3) = BYTE3(v8);
    *(v21 + 4) = BYTE4(v8);
    *(v21 + 5) = BYTE5(v8);
    v22 = (v20[7] + 16 * v11);
    *v22 = v9;
    v22[1] = v33;
    v23 = v20[2];
    v15 = __OFADD__(v23, 1);
    v24 = v23 + 1;
    if (v15)
    {
      goto LABEL_21;
    }

    ++v5;
    v20[2] = v24;
    v6 += 24;
    a2 = 1;
    v3 = a1;
    if (v31 == v32 + 1)
    {
    }
  }

  if (a2)
  {
    goto LABEL_10;
  }

  v29 = v11;
  sub_10046C7CC();
  v11 = v29;
  if ((v17 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_15:
  v25 = swift_allocError();
  swift_willThrow();
  v35[0] = v25;
  swift_errorRetain();
  sub_10005DC58(&qword_10058C830, &qword_1004821F0);
  if ((swift_dynamicCast() & 1) == 0)
  {
  }

LABEL_23:
  *&v36 = 0;
  *(&v36 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(30);
  v27._object = 0x80000001004BD5D0;
  v27._countAndFlagsBits = 0xD00000000000001BLL;
  String.append(_:)(v27);
  _print_unlocked<A, B>(_:_:)();
  v28._countAndFlagsBits = 39;
  v28._object = 0xE100000000000000;
  String.append(_:)(v28);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

char *sub_100306F50(uint64_t a1, char *a2)
{
  v4 = *(*(type metadata accessor for Logger() - 8) + 64);
  __chkstk_darwin();
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_weakInit();
  v7 = qword_10059B920;
  *(v2 + qword_10059B920) = 0;
  v8 = (v2 + qword_10059B928);
  *v8 = OffloadedServices.init()();
  v8[1] = v9;
  v8[2] = v10;
  v8[3] = v11;
  v12 = qword_100595DB0;
  *(v2 + v12) = sub_100304014(0xD00000000000001ELL, 0x80000001004BF1F0);
  swift_weakAssign();
  v13 = [objc_opt_self() interfaceWithProtocol:&OBJC_PROTOCOL___WiFiP2PDNSServiceDiscoveryXPCDelegate];
  v14 = *&a2[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_connection];
  [v14 setRemoteObjectInterface:v13];

  v15 = [v14 remoteObjectProxy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_10005DC58(&unk_100595FE0, &qword_1004B01C8);
  v16 = swift_dynamicCast();
  v17 = v22;
  if (!v16)
  {
    v17 = 0;
  }

  v18 = *(v2 + v7);
  *(v2 + v7) = v17;
  swift_unknownObjectRelease();
  Logger.init(subsystem:category:)();
  v19 = &OBJC_PROTOCOL___WiFiP2PDNSServiceDiscoveryXPC;
  v20 = sub_100303CDC(a2, v6, v19);

  return v20;
}

char *sub_1003071E4(char *a1)
{
  v3 = *(*(type metadata accessor for Logger() - 8) + 64);
  __chkstk_darwin();
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC12wifip2pdCore19EmptyBonjourOffload_transaction;
  *(v1 + v6) = sub_100304014(0xD00000000000001ALL, 0x80000001004BF230);
  v7 = [objc_opt_self() interfaceWithProtocol:&OBJC_PROTOCOL___WiFiP2PDNSServiceDiscoveryXPCDelegate];
  [*&a1[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_connection] setRemoteObjectInterface:v7];

  Logger.init(subsystem:category:)();
  v8 = &OBJC_PROTOCOL___WiFiP2PDNSServiceDiscoveryXPC;
  v9 = sub_100303CDC(a1, v5, v8);

  return v9;
}

char *sub_100307354(uint64_t a1, char *a2)
{
  v4 = *(*(type metadata accessor for Logger() - 8) + 64);
  __chkstk_darwin();
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for UUID();
  v7 = *(v27 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin();
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_weakInit();
  v11 = qword_10059B938;
  *(v2 + qword_10059B938) = 0;
  v12 = (v2 + qword_10059B940);
  *v12 = OffloadedServices.init()();
  v12[1] = v13;
  v12[2] = v14;
  v12[3] = v15;
  v16 = qword_100595E38;
  *(v2 + v16) = sub_100304014(0xD00000000000001FLL, 0x80000001004BF210);
  swift_weakAssign();
  v17 = [objc_opt_self() interfaceWithProtocol:&OBJC_PROTOCOL___WiFiP2PDNSServiceDiscoveryXPCDelegate];
  v18 = *&a2[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_connection];
  [v18 setRemoteObjectInterface:v17];

  v19 = [v18 remoteObjectProxy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_10005DC58(&unk_100595FE0, &qword_1004B01C8);
  if (swift_dynamicCast())
  {
    v20 = v28;
  }

  else
  {
    v20 = 0;
  }

  v21 = *(v2 + v11);
  *(v2 + v11) = v20;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v22 = swift_allocObject();
  *(v22 + 16) = v20;
  swift_unknownObjectRetain();
  sub_10044C010(sub_100307928, v22, v10);
  swift_unknownObjectRelease();

  (*(v7 + 32))(v2 + qword_10059B948, v10, v27);
  Logger.init(subsystem:category:)();
  v23 = &OBJC_PROTOCOL___WiFiP2PDNSServiceDiscoveryXPC;
  v24 = sub_100303CDC(a2, v6, v23);

  return v24;
}

uint64_t sub_100307704(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AWDLPeer(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100307768(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AWDLPeer(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003077CC(uint64_t a1)
{
  v2 = type metadata accessor for AWDLPeer(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100307838(uint64_t a1, uint64_t a2)
{
  v4 = sub_10005DC58(&unk_100595FA0, &unk_1004B0190);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003078FC(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 56);
  return sub_100305F24(a1, *(v1 + 32), *(v1 + 40), *(v1 + 48)) & 1;
}

uint64_t sub_1003079BC()
{
  v0 = type metadata accessor for Logger();
  sub_100068888(v0, qword_10059B950);
  sub_100037644(v0, qword_10059B950);
  return Logger.init(subsystem:category:)();
}

id sub_100307A98(uint64_t a1, uint64_t a2, unint64_t a3, void *a4)
{
  v9 = *v4;
  v10 = swift_isaMask;
  swift_defaultActor_initialize();
  swift_unknownObjectWeakInit();
  v4[14] = a1;
  v4[15] = a2;
  v4[16] = a3;
  swift_unknownObjectWeakAssign();
  v11 = *((v10 & v9) + 0x50);
  v12 = *((v10 & v9) + 0x58);
  v26.receiver = v4;
  v26.super_class = type metadata accessor for WiFiAwarePairingStoreInstance();

  v13 = objc_msgSendSuper2(&v26, "init");
  v14 = qword_1005943E0;
  v15 = v13;
  if (v14 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_100037644(v16, qword_10059B950);

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v25 = v21;
    *v19 = 138412546;
    *(v19 + 4) = v15;
    *v20 = v15;
    *(v19 + 12) = 2080;
    v24 = v15;
    v22 = sub_100002320(a2, a3, &v25);

    *(v19 + 14) = v22;
    _os_log_impl(&_mh_execute_header, v17, v18, "WiFiAwarePairingStoreInstance[%@]: %s initialized", v19, 0x16u);
    sub_100016290(v20, &qword_10058B780, &qword_100480AC0);

    sub_100002A00(v21);
  }

  else
  {
  }

  return v15;
}

uint64_t sub_100307D4C()
{
  v1 = v0[2];
  v2 = v1[14];
  v0[3] = v2;
  v0[4] = v1[15];
  v0[5] = v1[16];
  v3 = *v2;
  v0[6] = *(*v2 + 408);
  v0[7] = (v3 + 408) & 0xFFFFFFFFFFFFLL | 0xEB81000000000000;

  return _swift_task_switch(sub_100307E18, v2, 0);
}

uint64_t sub_100307E18()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 24);
  v3 = (*(v0 + 48))(*(v0 + 32), *(v0 + 40), 1);
  *(v0 + 64) = 0;
  v4 = *(v0 + 40);
  v5 = *(v0 + 24);
  v6 = v3;

  v7 = *(v0 + 8);

  return v7(v6);
}

uint64_t sub_100307EF8()
{
  v1 = v0[5];
  v2 = v0[3];

  v3 = v0[1];
  v4 = v0[8];

  return v3();
}

uint64_t sub_100307F68(uint64_t a1, uint64_t a2, const void *a3)
{
  v5 = *(*(sub_10005DC58(&qword_1005985E0, &unk_1004B0F80) - 8) + 64);
  __chkstk_darwin();
  v7 = &v14 - v6;
  v8 = _Block_copy(a3);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = a1;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_1004B03E0;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1004B03E8;
  v12[5] = v11;

  sub_10030AFC8(0, 0, v7, &unk_1004B03F0, v12);
}

uint64_t sub_1003080E0(const void *a1, uint64_t a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);

  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_100308188;

  return sub_100307D2C();
}

uint64_t sub_100308188()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 32);
  v5 = *(*v1 + 16);
  v6 = *v1;

  if (v2)
  {
    v7 = _convertErrorToNSError(_:)();

    v8 = v7;
    v9 = 0;
  }

  else
  {
    sub_1001AB6A8();
    isa = Array._bridgeToObjectiveC()().super.isa;

    v9 = isa;
    v8 = 0;
    v7 = isa;
  }

  v11 = *(v3 + 24);
  (v11)[2](v11, v9, v8);

  _Block_release(v11);
  v12 = *(v6 + 8);

  return v12();
}

uint64_t sub_100308318(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  *(v7 + 56) = a5;
  *(v7 + 64) = v6;
  *(v7 + 48) = a6;
  *(v7 + 32) = a3;
  *(v7 + 40) = a4;
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  return _swift_task_switch(sub_100308344, v6, 0);
}

uint64_t sub_100308344()
{
  v1 = v0[8];
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[9] = Strong;
  if (Strong)
  {
    v3 = Strong;
    v4._object = 0x80000001004B4EC0;
    v4._countAndFlagsBits = 0xD000000000000012;
    if (NSXPCConnection.has(entitlement:)(v4))
    {
      v5 = *(v0[8] + 112);
      v0[10] = v5;
      v6 = *v5 + 448;
      v0[11] = *v6;
      v0[12] = v6 & 0xFFFFFFFFFFFFLL | 0x7122000000000000;

      return _swift_task_switch(sub_10030846C, v5, 0);
    }
  }

  v7 = v0[8];
  v8 = swift_unknownObjectWeakLoadStrong();
  sub_10030AA68(v8);

  v9 = v0[1];

  return v9(0);
}

uint64_t sub_10030846C()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 80);
  *(v0 + 104) = (*(v0 + 88))(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 56), *(v0 + 48));
  *(v0 + 112) = 0;
  v3 = *(v0 + 80);
  v4 = *(v0 + 64);

  return _swift_task_switch(sub_100308520, v4, 0);
}

uint64_t sub_100308520()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_100308588()
{
  v2 = v0[9];
  v1 = v0[10];

  v3 = v0[1];
  v4 = v0[14];

  return v3();
}

uint64_t sub_1003085F0(uint64_t a1, double a2, uint64_t a3, void *a4, void *a5, uint64_t a6, uint64_t a7, const void *a8)
{
  v15 = *(*(sub_10005DC58(&qword_1005985E0, &unk_1004B0F80) - 8) + 64);
  __chkstk_darwin();
  v17 = &v26 - v16;
  v18 = _Block_copy(a8);
  v19 = swift_allocObject();
  *(v19 + 16) = a4;
  *(v19 + 24) = a5;
  *(v19 + 32) = a6;
  *(v19 + 40) = a2;
  *(v19 + 48) = a7;
  *(v19 + 56) = v18;
  *(v19 + 64) = a1;
  v20 = type metadata accessor for TaskPriority();
  (*(*(v20 - 8) + 56))(v17, 1, 1, v20);
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = &unk_1004B03C0;
  v21[5] = v19;
  v22 = swift_allocObject();
  v22[2] = 0;
  v22[3] = 0;
  v22[4] = &unk_1004B03C8;
  v22[5] = v21;
  v23 = a4;
  v24 = a5;

  sub_10030AFC8(0, 0, v17, &unk_1004B03D0, v22);
}

uint64_t sub_1003087AC(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, const void *a6, uint64_t a7)
{
  v7[2] = a7;
  v12 = type metadata accessor for UUID();
  v7[3] = v12;
  v13 = *(v12 - 8);
  v7[4] = v13;
  v14 = *(v13 + 64) + 15;
  v15 = swift_task_alloc();
  v7[5] = v15;
  v7[6] = _Block_copy(a6);
  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;
  v7[7] = v17;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v19 = swift_task_alloc();
  v7[8] = v19;
  *v19 = v7;
  v19[1] = sub_100308920;

  return sub_100308318(v16, v18, v15, a4, a5, a1);
}

uint64_t sub_100308920(uint64_t a1)
{
  v3 = v1;
  v6 = *v2;
  v5 = *v2;
  v7 = *(*v2 + 64);
  v8 = *v2;

  v9 = v5[7];
  v10 = v5[6];
  v11 = v5[2];
  (*(v5[4] + 8))(v5[5], v5[3]);

  if (v3)
  {
    v12 = _convertErrorToNSError(_:)();

    (*(v10 + 16))(v10, 0, v12);
  }

  else
  {
    (*(v10 + 16))(v10, a1, 0);
  }

  v14 = v6 + 5;
  v13 = v6[5];
  _Block_release(v14[1]);

  v15 = *(v8 + 8);

  return v15();
}

uint64_t sub_100308B2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return _swift_task_switch(sub_100308B50, v3, 0);
}

uint64_t sub_100308B50()
{
  v1 = v0[5];
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[6] = Strong;
  if (Strong)
  {
    v3 = Strong;
    v4._object = 0x80000001004B4EC0;
    v4._countAndFlagsBits = 0xD000000000000012;
    if (NSXPCConnection.has(entitlement:)(v4))
    {
      v5 = *(v0[5] + 112);
      v0[7] = v5;
      v6 = *v5 + 456;
      v0[8] = *v6;
      v0[9] = v6 & 0xFFFFFFFFFFFFLL | 0x58ED000000000000;

      return _swift_task_switch(sub_100308C74, v5, 0);
    }
  }

  v7 = v0[5];
  v8 = swift_unknownObjectWeakLoadStrong();
  sub_10030AA68(v8);

  v9 = v0[1];

  return v9();
}