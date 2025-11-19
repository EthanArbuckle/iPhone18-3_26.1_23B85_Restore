uint64_t sub_10104AB98(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_39;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v17 = *v6 < *v4;
      if (*v6 == *v4)
      {
        v17 = *(v6 + 1) < *(v4 + 1);
      }

      if (v17)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_26:
    v18 = v6 - 16;
    v5 -= 16;
    v19 = v14;
    do
    {
      v20 = *(v19 - 16);
      v19 -= 16;
      v21 = v5 + 16;
      v22 = *(v6 - 4);
      v23 = v20 < v22;
      if (v20 == v22)
      {
        v23 = *(v19 + 8) < *(v6 - 1);
      }

      if (v23)
      {
        if (v21 != v6)
        {
          *v5 = *v18;
        }

        if (v14 <= v4 || (v6 -= 16, v18 <= v7))
        {
          v6 = v18;
          goto LABEL_39;
        }

        goto LABEL_26;
      }

      if (v21 != v14)
      {
        *v5 = *v19;
      }

      v5 -= 16;
      v14 = v19;
    }

    while (v19 > v4);
    v14 = v19;
  }

LABEL_39:
  v24 = v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0);
  if (v6 != v4 || v6 >= &v4[v24 & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * (v24 >> 4));
  }

  return 1;
}

unint64_t sub_10104ADD4()
{
  result = qword_1016B2A58;
  if (!qword_1016B2A58)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1016B2A58);
  }

  return result;
}

void sub_10104AE20(void *a1, unsigned int a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  v7 = v6;
  v14 = *v7;
  v74 = type metadata accessor for BeaconSharingSessionContext();
  v15 = *(*(v74 - 8) + 64);
  __chkstk_darwin(v74);
  v17 = &v66 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  dispatch_assert_queue_V2(*(v7 + 48));
  v18 = *(v7 + 240);
  if (v18)
  {
    v77 = a5;
    v69 = a2;
    v72 = a3;
    v19 = qword_101695190;
    v75 = *(v7 + 248);

    if (v19 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    v21 = sub_1000076D4(v20, qword_10177C4F0);
    v22 = a1;

    v23 = v77;
    sub_100017D5C(v77, a6);
    v76 = v21;
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.debug.getter();

    sub_100016590(v23, a6);
    LODWORD(v71) = v25;
    v26 = os_log_type_enabled(v24, v25);
    v70 = v17;
    v73 = a6;
    if (v26)
    {
      v27 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v78[0] = v67;
      *v27 = 136315906;
      *&v79 = v14;
      swift_getMetatypeMetadata();
      v28 = String.init<A>(describing:)();
      v30 = sub_1000136BC(v28, v29, v78);

      *(v27 + 4) = v30;
      *(v27 + 12) = 2080;
      v31 = v22;
      v32 = [v31 description];
      v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v66 = v22;
      v34 = a4;
      v35 = v18;
      v36 = v33;
      v68 = v14;
      v38 = v37;

      v39 = v36;
      v18 = v35;
      a4 = v34;
      v40 = sub_1000136BC(v39, v38, v78);

      *(v27 + 14) = v40;
      *(v27 + 22) = 2080;
      *(v27 + 24) = sub_1000136BC(v72, v34, v78);
      *(v27 + 32) = 2080;
      v41 = Data.hexString.getter();
      v43 = sub_1000136BC(v41, v42, v78);
      v14 = v68;

      *(v27 + 34) = v43;
      _os_log_impl(&_mh_execute_header, v24, v71, "%s: inviteReceivedFor %s fromId: %s withContext: %s", v27, 0x2Au);
      swift_arrayDestroy();
      v44 = v66;
    }

    else
    {

      v44 = v22;
    }

    v45 = *(v14 + 96);
    v79 = *(v14 + 80);
    v80 = v45;
    type metadata accessor for MessagingSession();
    v46 = *(v7 + 96);
    v47 = *(v7 + 104);
    v48 = *(v7 + 112);
    v49 = v44;

    v50 = sub_10048F754(v49, v7, v48, v46, v47);
    swift_retain_n();
    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v71 = a4;
      v54 = v53;
      v78[0] = swift_slowAlloc();
      *v54 = 136315394;
      *&v79 = v14;
      swift_getMetatypeMetadata();
      v55 = String.init<A>(describing:)();
      v57 = sub_1000136BC(v55, v56, v78);

      *(v54 + 4) = v57;
      *(v54 + 12) = 2080;
      v58 = sub_10048F5C4();
      v60 = v59;

      v61 = sub_1000136BC(v58, v60, v78);

      *(v54 + 14) = v61;
      _os_log_impl(&_mh_execute_header, v51, v52, "%s: session: %s", v54, 0x16u);
      swift_arrayDestroy();

      a4 = v71;
    }

    else
    {
    }

    v62 = v70;
    v63 = type metadata accessor for PropertyListDecoder();
    v64 = *(v63 + 48);
    v65 = *(v63 + 52);
    swift_allocObject();
    PropertyListDecoder.init()();
    sub_10104B624(&qword_1016A2A78, type metadata accessor for BeaconSharingSessionContext);
    dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();

    v18(v62, v69, v72, a4, v50);
    sub_1000BB27C(v18);

    sub_1004F20F0(v62);
  }
}

uint64_t sub_10104B624(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10104B68C()
{
  result = qword_1016C4228[0];
  if (!qword_1016C4228[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1016C4228);
  }

  return result;
}

uint64_t sub_10104B6E4(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 24);
  type metadata accessor for FailableRecordSequence();
  result = type metadata accessor for Optional();
  if (v4 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10104B7A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v3 = *(a1 + 16);
  v4 = type metadata accessor for FailableRecord();
  v5 = type metadata accessor for Optional();
  v45 = *(v5 - 8);
  v46 = v5;
  v6 = *(v45 + 64);
  v7 = __chkstk_darwin(v5);
  v9 = &v42 - v8;
  v10 = *(v4 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v7);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v42 - v15;
  v17 = *(a1 + 24);
  v49 = v3;
  v18 = type metadata accessor for FailableRecordSequence();
  v19 = type metadata accessor for Optional();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = __chkstk_darwin(v19);
  v24 = &v42 - v23;
  v25 = *(v18 - 8);
  v26 = *(v25 + 64);
  __chkstk_darwin(v22);
  v28 = &v42 - v27;
  v29 = *(v20 + 16);
  v47 = v30;
  v29(v24, v50);
  if ((*(v25 + 48))(v24, 1, v18) == 1)
  {
    (*(v20 + 8))(v24, v47);
    v31 = *(v49 - 8);
    v32 = 1;
LABEL_8:
    v39 = v48;
    return (*(v31 + 56))(v39, v32, 1);
  }

  v43 = v20;
  v44 = v25;
  (*(v25 + 32))(v28, v24, v18);
  v51 = v18;
  sub_100B7A2D0(v18, v9);
  v33 = *(v10 + 48);
  if (v33(v9, 1, v4) == 1)
  {
LABEL_7:
    v35 = v44;
    v36 = v28;
    v37 = v51;
    (*(v44 + 8))(v36, v51);
    (*(v45 + 8))(v9, v46);
    v38 = v50;
    (*(v43 + 8))(v50, v47);
    (*(v35 + 56))(v38, 1, 1, v37);
    v32 = 1;
    v31 = *(v49 - 8);
    goto LABEL_8;
  }

  v34 = *(v10 + 32);
  while (1)
  {
    v34(v16, v9, v4);
    v34(v14, v16, v4);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      break;
    }

    (*(v10 + 8))(v14, v4);
    sub_100B7A2D0(v51, v9);
    if (v33(v9, 1, v4) == 1)
    {
      goto LABEL_7;
    }
  }

  (*(v44 + 8))(v28, v51);
  v41 = v48;
  v31 = *(v49 - 8);
  (*(v31 + 32))(v48, v14, v49);
  v39 = v41;
  v32 = 0;
  return (*(v31 + 56))(v39, v32, 1);
}

uint64_t sub_10104BCCC(uint64_t a1, uint64_t a2)
{
  v4 = j___ss30_copySequenceToContiguousArrayys0dE0Vy7ElementQzGxSTRzlF(v2, a1, a2);
  (*(*(a1 - 8) + 8))(v2, a1);
  return v4;
}

unint64_t sub_10104BD74()
{
  result = qword_1016C42B0;
  if (!qword_1016C42B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C42B0);
  }

  return result;
}

__n128 sub_10104BDC8@<Q0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, unint64_t a11, uint64_t a12, unint64_t a13)
{
  sub_10104C8B4(a1, a2, a3, a4, a5, a6, a7, a8, v20, a10, a11, a12, a13);
  v14 = v20[11];
  *(a9 + 160) = v20[10];
  *(a9 + 176) = v14;
  *(a9 + 192) = v21;
  v15 = v20[7];
  *(a9 + 96) = v20[6];
  *(a9 + 112) = v15;
  v16 = v20[9];
  *(a9 + 128) = v20[8];
  *(a9 + 144) = v16;
  v17 = v20[3];
  *(a9 + 32) = v20[2];
  *(a9 + 48) = v17;
  v18 = v20[5];
  *(a9 + 64) = v20[4];
  *(a9 + 80) = v18;
  result = v20[1];
  *a9 = v20[0];
  *(a9 + 16) = result;
  return result;
}

__n128 sub_10104BE58@<Q0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v13 = a1;
  sub_100101824();
  FixedWidthInteger.data.getter();
  sub_1003CD9CC();
  BinaryDecodable.init(data:)();
  if (!v2)
  {
    v10[0] = v12;
    sub_100A2272C(v10);
    v5 = v10[11];
    *(a2 + 160) = v10[10];
    *(a2 + 176) = v5;
    *(a2 + 192) = v11;
    v6 = v10[7];
    *(a2 + 96) = v10[6];
    *(a2 + 112) = v6;
    v7 = v10[9];
    *(a2 + 128) = v10[8];
    *(a2 + 144) = v7;
    v8 = v10[3];
    *(a2 + 32) = v10[2];
    *(a2 + 48) = v8;
    v9 = v10[5];
    *(a2 + 64) = v10[4];
    *(a2 + 80) = v9;
    result = v10[1];
    *a2 = v10[0];
    *(a2 + 16) = result;
  }

  return result;
}

uint64_t sub_10104BF58()
{
  v1 = *(v0 + 176);
  v9[10] = *(v0 + 160);
  v9[11] = v1;
  v10 = *(v0 + 192);
  v2 = *(v0 + 112);
  v9[6] = *(v0 + 96);
  v9[7] = v2;
  v3 = *(v0 + 144);
  v9[8] = *(v0 + 128);
  v9[9] = v3;
  v4 = *(v0 + 48);
  v9[2] = *(v0 + 32);
  v9[3] = v4;
  v5 = *(v0 + 80);
  v9[4] = *(v0 + 64);
  v9[5] = v5;
  v6 = *(v0 + 16);
  v9[0] = *v0;
  v9[1] = v6;
  v7 = sub_10104C888(v9);
  if (v7 > 5)
  {
    if (v7 > 8)
    {
      if (v7 == 9)
      {
        sub_1000140D8(v9);
        return 10;
      }

      else if (v7 == 10)
      {
        return 0;
      }

      else
      {
        return 11;
      }
    }

    else if (v7 == 6)
    {
      sub_1000140D8(v9);
      return 7;
    }

    else if (v7 == 7)
    {
      sub_1000140D8(v9);
      return 8;
    }

    else
    {
      sub_1000140D8(v9);
      return 9;
    }
  }

  else if (v7 > 2)
  {
    if (v7 == 3)
    {
      sub_1000140D8(v9);
      return 4;
    }

    else if (v7 == 4)
    {
      sub_1000140D8(v9);
      return 5;
    }

    else
    {
      sub_1000140D8(v9);
      return 6;
    }
  }

  else if (v7)
  {
    if (v7 == 1)
    {
      sub_1000140D8(v9);
      return 2;
    }

    else
    {
      sub_1000140D8(v9);
      return 3;
    }
  }

  else
  {
    sub_1000140D8(v9);
    return 1;
  }
}

unint64_t sub_10104C0B4@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1[11];
  v111[10] = v1[10];
  v111[11] = v3;
  v112 = *(v1 + 24);
  v4 = v1[7];
  v111[6] = v1[6];
  v111[7] = v4;
  v5 = v1[9];
  v111[8] = v1[8];
  v111[9] = v5;
  v6 = v1[3];
  v111[2] = v1[2];
  v111[3] = v6;
  v7 = v1[5];
  v111[4] = v1[4];
  v111[5] = v7;
  v8 = v1[1];
  v111[0] = *v1;
  v111[1] = v8;
  v9 = sub_10104C888(v111);
  if (v9 <= 5)
  {
    if (v9 > 2)
    {
      if (v9 == 3)
      {
        v57 = sub_1000140D8(v111);
        a1[3] = &type metadata for AirPodsSendPairingDataCommandPayloadv2;
        a1[4] = sub_100A1DAB0();
        v58 = swift_allocObject();
        *a1 = v58;
        memmove((v58 + 16), v57, 0xB8uLL);
        v59 = v1[11];
        v108 = v1[10];
        v109 = v59;
        v110 = *(v1 + 24);
        v60 = v1[7];
        v104 = v1[6];
        v105 = v60;
        v61 = v1[9];
        v106 = v1[8];
        v107 = v61;
        v62 = v1[3];
        v100 = v1[2];
        v101 = v62;
        v63 = v1[5];
        v102 = v1[4];
        v103 = v63;
        v64 = v1[1];
        v98 = *v1;
        v99 = v64;
        v18 = sub_1000140D8(&v98);
        v19 = &unk_1016B1BA0;
        v20 = &unk_1013F9C10;
      }

      else if (v9 == 4)
      {
        v25 = sub_1000140D8(v111);
        a1[3] = &type metadata for AirPodsSendPairingDataCommandPayloadv3;
        a1[4] = sub_100A1DB08();
        v26 = swift_allocObject();
        *a1 = v26;
        memmove((v26 + 16), v25, 0xC8uLL);
        v27 = v1[11];
        v108 = v1[10];
        v109 = v27;
        v110 = *(v1 + 24);
        v28 = v1[7];
        v104 = v1[6];
        v105 = v28;
        v29 = v1[9];
        v106 = v1[8];
        v107 = v29;
        v30 = v1[3];
        v100 = v1[2];
        v101 = v30;
        v31 = v1[5];
        v102 = v1[4];
        v103 = v31;
        v32 = v1[1];
        v98 = *v1;
        v99 = v32;
        v18 = sub_1000140D8(&v98);
        v19 = &unk_1016B1B98;
        v20 = &unk_1013D1350;
      }

      else
      {
        v89 = sub_1000140D8(v111);
        a1[3] = &type metadata for AirPodsSWFinalizePairingCommandPayload;
        a1[4] = sub_100391AEC();
        v90 = swift_allocObject();
        *a1 = v90;
        memmove((v90 + 16), v89, 0x70uLL);
        v91 = v1[11];
        v108 = v1[10];
        v109 = v91;
        v110 = *(v1 + 24);
        v92 = v1[7];
        v104 = v1[6];
        v105 = v92;
        v93 = v1[9];
        v106 = v1[8];
        v107 = v93;
        v94 = v1[3];
        v100 = v1[2];
        v101 = v94;
        v95 = v1[5];
        v102 = v1[4];
        v103 = v95;
        v96 = v1[1];
        v98 = *v1;
        v99 = v96;
        v18 = sub_1000140D8(&v98);
        v19 = &unk_10169EAB0;
        v20 = &unk_1013F9C00;
      }
    }

    else
    {
      if (!v9)
      {
        v34 = sub_1000140D8(v111);
        a1[3] = &type metadata for AirPodsSendBeaconGroupDataCommandPayload;
        a1[4] = sub_100391B94();
        v35 = swift_allocObject();
        *a1 = v35;
        v36 = v34[1];
        *(v35 + 16) = *v34;
        *(v35 + 32) = v36;
        v37 = v1[3];
        v100 = v1[2];
        v101 = v37;
        v38 = v1[1];
        v98 = *v1;
        v99 = v38;
        v39 = v1[7];
        v104 = v1[6];
        v105 = v39;
        v40 = v1[5];
        v102 = v1[4];
        v103 = v40;
        v110 = *(v1 + 24);
        v41 = v1[11];
        v108 = v1[10];
        v109 = v41;
        v42 = v1[9];
        v106 = v1[8];
        v107 = v42;
        v43 = sub_1000140D8(&v98);
        v44 = v43[2];
        v45 = v43[3];
        sub_100017D5C(*v43, v43[1]);
        return sub_100017D5C(v44, v45);
      }

      if (v9 == 1)
      {
        v10 = sub_1000140D8(v111);
        a1[3] = &type metadata for AirPodsInitiatePairingCommandPayload;
        a1[4] = sub_100A1D950();
        v11 = swift_allocObject();
        *a1 = v11;
        memmove((v11 + 16), v10, 0x50uLL);
        v12 = v1[11];
        v108 = v1[10];
        v109 = v12;
        v110 = *(v1 + 24);
        v13 = v1[7];
        v104 = v1[6];
        v105 = v13;
        v14 = v1[9];
        v106 = v1[8];
        v107 = v14;
        v15 = v1[3];
        v100 = v1[2];
        v101 = v15;
        v16 = v1[5];
        v102 = v1[4];
        v103 = v16;
        v17 = v1[1];
        v98 = *v1;
        v99 = v17;
        v18 = sub_1000140D8(&v98);
        v19 = &unk_1016B1BB0;
        v20 = &unk_1013F9C20;
      }

      else
      {
        v73 = sub_1000140D8(v111);
        a1[3] = &type metadata for AirPodsSendPairingDataCommandPayloadv1;
        a1[4] = sub_100A1DA58();
        v74 = swift_allocObject();
        *a1 = v74;
        memmove((v74 + 16), v73, 0xB8uLL);
        v75 = v1[11];
        v108 = v1[10];
        v109 = v75;
        v110 = *(v1 + 24);
        v76 = v1[7];
        v104 = v1[6];
        v105 = v76;
        v77 = v1[9];
        v106 = v1[8];
        v107 = v77;
        v78 = v1[3];
        v100 = v1[2];
        v101 = v78;
        v79 = v1[5];
        v102 = v1[4];
        v103 = v79;
        v80 = v1[1];
        v98 = *v1;
        v99 = v80;
        v18 = sub_1000140D8(&v98);
        v19 = &unk_1016B1BA8;
        v20 = &unk_1013D1360;
      }
    }

    return sub_1000D2A70(v18, v97, v19, v20);
  }

  if (v9 <= 8)
  {
    if (v9 != 6)
    {
      if (v9 == 7)
      {
        v21 = sub_1000140D8(v111);
        v22 = *v21;
        v23 = v21[1];
        a1[3] = &type metadata for AirPodsSWPairingCompleteCommandPayload;
        v24 = sub_100391A98();
      }

      else
      {
        v81 = sub_1000140D8(v111);
        v22 = *v81;
        v23 = v81[1];
        a1[3] = &type metadata for AirPodsPairingEligibilityDataCommandPayload;
        v24 = sub_100A1D9A8();
      }

      a1[4] = v24;
      *a1 = v22;
      a1[1] = v23;
      v82 = v1[11];
      v108 = v1[10];
      v109 = v82;
      v110 = *(v1 + 24);
      v83 = v1[7];
      v104 = v1[6];
      v105 = v83;
      v84 = v1[9];
      v106 = v1[8];
      v107 = v84;
      v85 = v1[3];
      v100 = v1[2];
      v101 = v85;
      v86 = v1[5];
      v102 = v1[4];
      v103 = v86;
      v87 = v1[1];
      v98 = *v1;
      v99 = v87;
      v88 = sub_1000140D8(&v98);
      return sub_100017D5C(*v88, *(v88 + 8));
    }

    v46 = sub_1000140D8(v111);
    a1[3] = &type metadata for AirPodsSWSendPairingStatusCommandPayload;
    a1[4] = sub_100101224();
    v47 = swift_allocObject();
    *a1 = v47;
    v48 = v46[3];
    v50 = *v46;
    v49 = v46[1];
    v47[3] = v46[2];
    v47[4] = v48;
    v47[1] = v50;
    v47[2] = v49;
    v51 = v1[11];
    v108 = v1[10];
    v109 = v51;
    v110 = *(v1 + 24);
    v52 = v1[7];
    v104 = v1[6];
    v105 = v52;
    v53 = v1[9];
    v106 = v1[8];
    v107 = v53;
    v54 = v1[3];
    v100 = v1[2];
    v101 = v54;
    v55 = v1[5];
    v102 = v1[4];
    v103 = v55;
    v56 = v1[1];
    v98 = *v1;
    v99 = v56;
    v18 = sub_1000140D8(&v98);
    v19 = &qword_101697310;
    v20 = &qword_10139E330;
    return sub_1000D2A70(v18, v97, v19, v20);
  }

  if (v9 == 9)
  {
    v65 = sub_1000140D8(v111);
    a1[3] = &type metadata for AirPodsPairingEligibilityDataResponseCommandPayload;
    a1[4] = sub_100A1DA00();
    v66 = swift_allocObject();
    *a1 = v66;
    memmove((v66 + 16), v65, 0x58uLL);
    v67 = v1[11];
    v108 = v1[10];
    v109 = v67;
    v110 = *(v1 + 24);
    v68 = v1[7];
    v104 = v1[6];
    v105 = v68;
    v69 = v1[9];
    v106 = v1[8];
    v107 = v69;
    v70 = v1[3];
    v100 = v1[2];
    v101 = v70;
    v71 = v1[5];
    v102 = v1[4];
    v103 = v71;
    v72 = v1[1];
    v98 = *v1;
    v99 = v72;
    v18 = sub_1000140D8(&v98);
    v19 = &unk_1016B1B88;
    v20 = &unk_1013D1340;
    return sub_1000D2A70(v18, v97, v19, v20);
  }

  if (v9 == 10)
  {
    a1[3] = &type metadata for AccessoryGenericPayload;
    result = sub_10030FF74();
  }

  else
  {
    a1[3] = &type metadata for UnpairCommandPayload;
    result = sub_10027EE90();
  }

  a1[4] = result;
  return result;
}

unint64_t sub_10104C734(uint64_t a1)
{
  *(a1 + 8) = sub_10104C764();
  result = sub_10104C7B8();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_10104C764()
{
  result = qword_1016C4450;
  if (!qword_1016C4450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C4450);
  }

  return result;
}

unint64_t sub_10104C7B8()
{
  result = qword_1016C4458;
  if (!qword_1016C4458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C4458);
  }

  return result;
}

uint64_t sub_10104C824(void *a1)
{
  v13 = v1[10];
  v14 = v1[11];
  v15 = *(v1 + 24);
  v9 = v1[6];
  v10 = v1[7];
  v11 = v1[8];
  v12 = v1[9];
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1[5];
  v3 = *v1;
  v4 = v1[1];
  return sub_100A1F734(a1);
}

uint64_t sub_10104C888(uint64_t a1)
{
  v1 = (*(a1 + 192) >> 58) & 0xC | (*(a1 + 176) >> 60) & 3;
  if (v1 <= 9)
  {
    return v1;
  }

  else
  {
    return (*a1 + 10);
  }
}

uint64_t sub_10104C8B4@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, unint64_t a11, uint64_t a12, unint64_t a13)
{
  v14 = a8 >> 62;
  v81 = result;
  if ((a8 >> 62) > 1)
  {
    if (v14 == 2)
    {
      v19 = *(a7 + 16);
      v18 = *(a7 + 24);
      v20 = __OFSUB__(v18, v19);
      v17 = v18 - v19;
      if (v20)
      {
LABEL_101:
        __break(1u);
        goto LABEL_102;
      }

      v16 = a8;
      v15 = a2;
    }

    else
    {
      v16 = a8;
      v15 = a2;
      v17 = 0;
    }
  }

  else if (v14)
  {
    LODWORD(v17) = HIDWORD(a7) - a7;
    if (__OFSUB__(HIDWORD(a7), a7))
    {
LABEL_102:
      __break(1u);
      goto LABEL_103;
    }

    v16 = a8;
    v15 = a2;
    v17 = v17;
  }

  else
  {
    v15 = a2;
    v16 = a8;
    v17 = BYTE6(a8);
  }

  v95 = v17;
  sub_1000C3258();
  v21 = FixedWidthInteger.data.getter();
  v23 = v22;
  v24 = Data.trimmed.getter();
  v74 = v25;
  v75 = v24;
  result = sub_100016590(v21, v23);
  if (a11 >> 60 == 15)
  {
    v26 = 0;
  }

  else
  {
    v26 = a10;
  }

  v27 = 0xC000000000000000;
  if (a11 >> 60 == 15)
  {
    v28 = 0xC000000000000000;
  }

  else
  {
    v28 = a11;
  }

  if (a13 >> 60 == 15)
  {
    v29 = 0;
  }

  else
  {
    v29 = a12;
  }

  if (a13 >> 60 != 15)
  {
    v27 = a13;
  }

  v30 = v15;
  v31 = v15 >> 62;
  if ((v15 >> 62) <= 1)
  {
    v32 = v16;
    if (!v31)
    {
      v33 = BYTE6(v30);
      v34 = a4;
      v35 = a3;
      v36 = v81;
LABEL_30:
      v37 = a7;
      goto LABEL_31;
    }

LABEL_28:
    v36 = v81;
    LODWORD(v33) = HIDWORD(v81) - v81;
    if (__OFSUB__(HIDWORD(v81), v81))
    {
      __break(1u);
      goto LABEL_95;
    }

    v33 = v33;
    v34 = a4;
    v35 = a3;
    goto LABEL_30;
  }

  v34 = a4;
  v35 = a3;
  v32 = v16;
  v37 = a7;
  v36 = v81;
  if (v31 != 2)
  {
LABEL_103:
    __break(1u);
    goto LABEL_104;
  }

  v39 = *(v81 + 16);
  v38 = *(v81 + 24);
  v20 = __OFSUB__(v38, v39);
  v33 = v38 - v39;
  if (v20)
  {
    __break(1u);
    goto LABEL_28;
  }

LABEL_31:
  if (v33 != 114)
  {
    goto LABEL_103;
  }

  v40 = v34 >> 62;
  if ((v34 >> 62) <= 1)
  {
    if (!v40)
    {
      v41 = BYTE6(v34);
      goto LABEL_41;
    }

LABEL_39:
    LODWORD(v41) = HIDWORD(v35) - v35;
    if (!__OFSUB__(HIDWORD(v35), v35))
    {
      v41 = v41;
      goto LABEL_41;
    }

LABEL_95:
    __break(1u);
    goto LABEL_96;
  }

  if (v40 != 2)
  {
LABEL_104:
    __break(1u);
    goto LABEL_105;
  }

  v43 = *(v35 + 16);
  v42 = *(v35 + 24);
  v20 = __OFSUB__(v42, v43);
  v41 = v42 - v43;
  if (v20)
  {
    __break(1u);
    goto LABEL_39;
  }

LABEL_41:
  if (v41 != 32)
  {
    goto LABEL_104;
  }

  if (v14 <= 1)
  {
    if (!v14)
    {
      v44 = BYTE6(v32);
LABEL_51:
      v46 = a5;
      v45 = a6;
      v48 = v74;
      v47 = v75;
      goto LABEL_52;
    }

    goto LABEL_49;
  }

  v46 = a5;
  v45 = a6;
  v48 = v74;
  v47 = v75;
  if (v14 != 2)
  {
LABEL_105:
    __break(1u);
    goto LABEL_106;
  }

  v50 = *(v37 + 16);
  v49 = *(v37 + 24);
  v20 = __OFSUB__(v49, v50);
  v44 = v49 - v50;
  if (v20)
  {
    __break(1u);
LABEL_49:
    LODWORD(v44) = HIDWORD(v37) - v37;
    if (!__OFSUB__(HIDWORD(v37), v37))
    {
      v44 = v44;
      goto LABEL_51;
    }

LABEL_96:
    __break(1u);
    goto LABEL_97;
  }

LABEL_52:
  if (v44 != 100)
  {
    goto LABEL_105;
  }

  v51 = v48 >> 62;
  if ((v48 >> 62) <= 1)
  {
    if (!v51)
    {
      v52 = BYTE6(v48);
      goto LABEL_62;
    }

LABEL_60:
    LODWORD(v52) = HIDWORD(v47) - v47;
    if (!__OFSUB__(HIDWORD(v47), v47))
    {
      v52 = v52;
      goto LABEL_62;
    }

LABEL_97:
    __break(1u);
    goto LABEL_98;
  }

  if (v51 != 2)
  {
LABEL_106:
    __break(1u);
    goto LABEL_107;
  }

  v54 = *(v47 + 16);
  v53 = *(v47 + 24);
  v20 = __OFSUB__(v53, v54);
  v52 = v53 - v54;
  if (v20)
  {
    __break(1u);
    goto LABEL_60;
  }

LABEL_62:
  if (v52 != 1)
  {
    goto LABEL_106;
  }

  v55 = v45 >> 62;
  if ((v45 >> 62) <= 1)
  {
    if (!v55)
    {
      v56 = BYTE6(v45);
      goto LABEL_72;
    }

LABEL_70:
    LODWORD(v56) = HIDWORD(v46) - v46;
    if (!__OFSUB__(HIDWORD(v46), v46))
    {
      v56 = v56;
      goto LABEL_72;
    }

LABEL_98:
    __break(1u);
    goto LABEL_99;
  }

  if (v55 != 2)
  {
LABEL_107:
    __break(1u);
    goto LABEL_108;
  }

  v58 = *(v46 + 16);
  v57 = *(v46 + 24);
  v20 = __OFSUB__(v57, v58);
  v56 = v57 - v58;
  if (v20)
  {
    __break(1u);
    goto LABEL_70;
  }

LABEL_72:
  if (v56 != 60)
  {
    goto LABEL_107;
  }

  v59 = v28 >> 62;
  if ((v28 >> 62) <= 1)
  {
    if (!v59)
    {
      v60 = BYTE6(v28);
      goto LABEL_82;
    }

LABEL_80:
    LODWORD(v60) = HIDWORD(v26) - v26;
    if (!__OFSUB__(HIDWORD(v26), v26))
    {
      v60 = v60;
      goto LABEL_82;
    }

LABEL_99:
    __break(1u);
LABEL_100:
    __break(1u);
    goto LABEL_101;
  }

  if (v59 != 2)
  {
LABEL_108:
    __break(1u);
    goto LABEL_109;
  }

  v62 = *(v26 + 16);
  v61 = *(v26 + 24);
  v20 = __OFSUB__(v61, v62);
  v60 = v61 - v62;
  if (v20)
  {
    __break(1u);
    goto LABEL_80;
  }

LABEL_82:
  if (v60 != 8)
  {
    goto LABEL_108;
  }

  v63 = v27 >> 62;
  if ((v27 >> 62) <= 1)
  {
    if (!v63)
    {
      v64 = BYTE6(v27);
      goto LABEL_92;
    }

LABEL_90:
    LODWORD(v64) = HIDWORD(v29) - v29;
    if (!__OFSUB__(HIDWORD(v29), v29))
    {
      v64 = v64;
      goto LABEL_92;
    }

    goto LABEL_100;
  }

  if (v63 != 2)
  {
    goto LABEL_109;
  }

  v66 = *(v29 + 16);
  v65 = *(v29 + 24);
  v20 = __OFSUB__(v65, v66);
  v64 = v65 - v66;
  if (v20)
  {
    __break(1u);
    goto LABEL_90;
  }

LABEL_92:
  if (v64 == 24)
  {
    *&v82 = v36;
    *(&v82 + 1) = v30;
    *&v83 = v35;
    *(&v83 + 1) = v34;
    *&v84 = v46;
    *(&v84 + 1) = v45;
    *&v85 = v37;
    *(&v85 + 1) = v32;
    *&v86 = v47;
    *(&v86 + 1) = v48;
    *&v87 = v26;
    *(&v87 + 1) = v28;
    *&v88 = v29;
    *(&v88 + 1) = v27;
    v67 = v34;
    sub_100A22818(&v82);
    sub_10002E98C(a10, a11);
    sub_10002E98C(a12, a13);
    sub_100017D5C(v36, v30);
    sub_100017D5C(v35, v67);
    sub_100017D5C(v46, v45);
    result = sub_100017D5C(v37, v32);
    v68 = v93;
    *(a9 + 160) = v92;
    *(a9 + 176) = v68;
    *(a9 + 192) = v94;
    v69 = v89;
    *(a9 + 96) = v88;
    *(a9 + 112) = v69;
    v70 = v91;
    *(a9 + 128) = v90;
    *(a9 + 144) = v70;
    v71 = v85;
    *(a9 + 32) = v84;
    *(a9 + 48) = v71;
    v72 = v87;
    *(a9 + 64) = v86;
    *(a9 + 80) = v72;
    v73 = v83;
    *a9 = v82;
    *(a9 + 16) = v73;
    return result;
  }

LABEL_109:
  __break(1u);
  return result;
}

uint64_t sub_10104CD0C(uint64_t a1)
{
  v1 = (*(a1 + 192) >> 58) & 0xC | (*(a1 + 176) >> 60) & 3;
  if (v1 <= 9)
  {
    return v1;
  }

  else
  {
    return (*a1 + 10);
  }
}

uint64_t sub_10104CD38(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x3FFF5 && *(a1 + 200))
  {
    return (*a1 + 262134);
  }

  if ((((((*(a1 + 192) >> 44) & 0x30000 | (*(a1 + 176) >> 46) & 0xC000) >> 14) & 0xFFFC000F | (16 * ((*(a1 + 24) >> 58) & 0xC | (*(a1 + 8) >> 60) & 3 | *(a1 + 95) & 0x30 | (*(a1 + 104) >> 54) & 0xC0 | (*(a1 + 120) >> 52) & 0x300 | (*(a1 + 136) >> 50) & 0xC00 | *(a1 + 158) & 0x3000))) ^ 0x3FFFF) >= 0x3FFF5)
  {
    v3 = -1;
  }

  else
  {
    v3 = ((((*(a1 + 192) >> 44) & 0x30000 | (*(a1 + 176) >> 46) & 0xC000) >> 14) & 0xFFFC000F | (16 * ((*(a1 + 24) >> 58) & 0xC | (*(a1 + 8) >> 60) & 3 | *(a1 + 95) & 0x30 | (*(a1 + 104) >> 54) & 0xC0 | (*(a1 + 120) >> 52) & 0x300 | (*(a1 + 136) >> 50) & 0xC00 | *(a1 + 158) & 0x3000))) ^ 0x3FFFF;
  }

  return (v3 + 1);
}

uint64_t sub_10104CE08(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x3FFF6)
  {
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 184) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 262134;
    if (a3 > 0x3FFF5)
    {
      *(result + 200) = 1;
    }
  }

  else
  {
    if (a3 > 0x3FFF5)
    {
      *(result + 200) = 0;
    }

    if (a2)
    {
      v3 = ((-a2 >> 4) & 0x3FFF) - (a2 << 14);
      *result = 0;
      *(result + 8) = ((-a2 >> 4) & 3) << 60;
      *(result + 16) = 0;
      *(result + 24) = (v3 << 58) & 0x3000000000000000;
      *(result + 32) = 0u;
      *(result + 48) = 0u;
      *(result + 64) = 0u;
      *(result + 80) = 0;
      *(result + 88) = (v3 << 56) & 0x3000000000000000;
      *(result + 96) = 0;
      *(result + 104) = (v3 << 54) & 0x3000000000000000;
      *(result + 112) = 0;
      *(result + 120) = (v3 << 52) & 0x3000000000000000;
      *(result + 128) = 0;
      *(result + 136) = (v3 << 50) & 0x3000000000000000;
      *(result + 144) = 0;
      *(result + 152) = (v3 << 48) & 0x3000000000000000;
      *(result + 160) = 0;
      *(result + 168) = 0;
      *(result + 176) = (v3 << 46) & 0x3000000000000000;
      *(result + 184) = 0;
      *(result + 192) = (v3 << 44) & 0x3000000000000000;
    }
  }

  return result;
}

uint64_t sub_10104CF08(uint64_t result, unsigned int a2)
{
  if (a2 < 0xA)
  {
    v2 = *(result + 24) & 0xCFFFFFFFFFFFFFFFLL;
    v3 = *(result + 88) & 0xCFFFFFFFFFFFFFFFLL;
    v4 = *(result + 104) & 0xCFFFFFFFFFFFFFFFLL;
    v5 = *(result + 120) & 0xCFFFFFFFFFFFFFFFLL;
    v6 = *(result + 136) & 0xCFFFFFFFFFFFFFFFLL;
    v7 = *(result + 152) & 0xCFFFFFFFFFFFFFFFLL;
    v8 = *(result + 176) & 0xCFFFFFFFFFFFFFFFLL | ((a2 & 3) << 60);
    v9 = *(result + 192) & 0xCFFFFFFFFFFFFFFFLL | (((a2 >> 2) & 3) << 60);
    *(result + 8) &= 0xCFFFFFFFFFFFFFFFLL;
    *(result + 24) = v2;
    *(result + 88) = v3;
    *(result + 104) = v4;
    *(result + 120) = v5;
    *(result + 136) = v6;
    *(result + 152) = v7;
    *(result + 176) = v8;
    *(result + 192) = v9;
  }

  else
  {
    *result = a2 - 10;
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
    *(result + 168) = 0;
    *(result + 176) = xmmword_10139BF70;
    *(result + 192) = 0x2000000000000000;
  }

  return result;
}

id sub_10104CFE4(void *a1, char a2)
{
  v5 = OBJC_IVAR____TtC12searchpartyd18SharedPairingAgent_lock;
  sub_1000BC4D4(&qword_1016A6010, &qword_101391C30);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *&v2[v5] = v6;
  *&v2[OBJC_IVAR____TtC12searchpartyd18SharedPairingAgent_pairingSubjects] = _swiftEmptyDictionarySingleton;
  *&v2[OBJC_IVAR____TtC12searchpartyd18SharedPairingAgent_underlyingObject] = a1;
  v18.receiver = v2;
  v18.super_class = type metadata accessor for SharedPairingAgent();
  v7 = a1;
  v8 = objc_msgSendSuper2(&v18, "init");
  v9 = qword_101695518;
  v10 = v8;
  if (v9 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_1000076D4(v11, qword_10177CEA8);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 138543618;
    *(v14 + 4) = v10;
    *v15 = v10;
    *(v14 + 12) = 1024;
    *(v14 + 14) = a2 & 1;
    v16 = v10;
    _os_log_impl(&_mh_execute_header, v12, v13, "PairingAgent init %{public}@ acceptPeripheralEvents %{BOOL}d", v14, 0x12u);
    sub_10000B3A8(v15, &qword_10169BB30, &unk_10138B3C0);
  }

  return v10;
}

id sub_10104D1C8()
{
  if (qword_101695518 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177CEA8);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138543362;
    *(v5 + 4) = v2;
    *v6 = v2;
    v7 = v2;
    _os_log_impl(&_mh_execute_header, v3, v4, "PairingAgent deinit %{public}@", v5, 0xCu);
    sub_10000B3A8(v6, &qword_10169BB30, &unk_10138B3C0);
  }

  v9.receiver = v2;
  v9.super_class = type metadata accessor for SharedPairingAgent();
  return objc_msgSendSuper2(&v9, "dealloc");
}

uint64_t *sub_10104D3A8(int a1, void *a2)
{
  LODWORD(v4) = a1;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_101695518 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_1000076D4(v10, qword_10177CEA8);
  v11 = a2;
  v12 = v2;
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v28 = v4;
    v4 = v15;
    v16 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v29 = v27;
    *v4 = 136446466;
    v17 = [*&v11[OBJC_IVAR____TtC12searchpartyd10Peripheral_underlyingObject] identifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    sub_10105032C(&qword_101696930, &type metadata accessor for UUID);
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = v6;
    v21 = v20;
    (*(v19 + 8))(v9, v5);
    v22 = sub_1000136BC(v18, v21, &v29);

    *(v4 + 4) = v22;
    *(v4 + 12) = 2114;
    *(v4 + 14) = v12;
    *v16 = v12;
    v23 = v12;
    _os_log_impl(&_mh_execute_header, v13, v14, "PairingAgent: startPairing %{public}s. %{public}@.", v4, 0x16u);
    sub_10000B3A8(v16, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v27);

    LOBYTE(v4) = v28;
  }

  v24 = *&v12[OBJC_IVAR____TtC12searchpartyd18SharedPairingAgent_lock];
  __chkstk_darwin(v25);
  *(&v27 - 32) = v4 & 1;
  *(&v27 - 3) = v12;
  *(&v27 - 2) = v11;
  sub_1000BC4D4(&qword_1016C4520, &unk_1013B6090);
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  return v29;
}

uint64_t sub_10104D714@<X0>(char a1@<W0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t *a4@<X8>)
{
  v80 = a4;
  v78 = a3;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v76 = *(v6 - 8);
  v77 = v6;
  v7 = *(v76 + 64);
  __chkstk_darwin(v6);
  v74 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = type metadata accessor for DispatchQoS();
  v73 = *(v75 - 8);
  v9 = *(v73 + 64);
  __chkstk_darwin(v75);
  v72 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = type metadata accessor for DispatchTime();
  v71 = *(v79 - 1);
  v11 = *(v71 + 64);
  v12 = __chkstk_darwin(v79);
  v14 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v70 = &v64 - v15;
  v69 = type metadata accessor for DispatchQoS.QoSClass();
  v16 = *(v69 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v69);
  v19 = &v64 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for UUID();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = __chkstk_darwin(v20);
  v25 = &v64 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v27 = &v64 - v26;
  if ((a1 & 1) == 0)
  {
    v45 = *(a2 + OBJC_IVAR____TtC12searchpartyd18SharedPairingAgent_underlyingObject);
    [v45 setDelegate:a2];
    v46 = *&v78[OBJC_IVAR____TtC12searchpartyd10Peripheral_underlyingObject];
    v47 = [v46 identifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v48 = OBJC_IVAR____TtC12searchpartyd18SharedPairingAgent_pairingSubjects;
    swift_beginAccess();
    v49 = *(a2 + v48);
    if (*(v49 + 16))
    {
      v50 = *(a2 + v48);

      v51 = sub_1000210EC(v27);
      if (v52)
      {
        v53 = *(*(v49 + 56) + 8 * v51);
        v54 = *(v21 + 8);

        v54(v27, v20);

        v82 = v53;
        sub_1000BC4D4(&unk_1016C4508, &qword_1013FB748);
        sub_1000041A4(&qword_1016C4528, &unk_1016C4508, &qword_1013FB748);
        v44 = Publisher.eraseToAnyPublisher()();
        goto LABEL_8;
      }
    }

    v79 = v45;
    v78 = *(v21 + 8);
    (v78)(v27, v20);
    v55 = sub_1000BC4D4(&unk_1016C4508, &qword_1013FB748);
    v56 = *(v55 + 48);
    v57 = *(v55 + 52);
    swift_allocObject();
    v58 = v46;
    v59 = PassthroughSubject.init()();
    v60 = [v58 identifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    swift_beginAccess();

    v61 = *(a2 + v48);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v83 = *(a2 + v48);
    *(a2 + v48) = 0x8000000000000000;
    sub_101002590(v59, v25, isUniquelyReferenced_nonNull_native);
    (v78)(v25, v20);
    *(a2 + v48) = v83;
    swift_endAccess();
    [v79 pairPeer:v58];
    v82 = v59;
    sub_1000041A4(&qword_1016C4528, &unk_1016C4508, &qword_1013FB748);
    v44 = Publisher.eraseToAnyPublisher()();
    goto LABEL_8;
  }

  v68 = sub_1000BC4D4(&unk_1016C4508, &qword_1013FB748);
  v28 = *(v68 + 48);
  v29 = *(v68 + 52);
  swift_allocObject();
  v30 = PassthroughSubject.init()();
  v66 = v14;
  v31 = v30;
  v32 = [*&v78[OBJC_IVAR____TtC12searchpartyd10Peripheral_underlyingObject] identifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v33 = OBJC_IVAR____TtC12searchpartyd18SharedPairingAgent_pairingSubjects;
  swift_beginAccess();

  v34 = *(a2 + v33);
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v82 = *(a2 + v33);
  *(a2 + v33) = 0x8000000000000000;
  sub_101002590(v31, v25, v35);
  (*(v21 + 8))(v25, v20);
  *(a2 + v33) = v82;
  swift_endAccess();
  sub_1000BC488();
  v36 = v69;
  (*(v16 + 104))(v19, enum case for DispatchQoS.QoSClass.default(_:), v69);
  v67 = static OS_dispatch_queue.global(qos:)();
  (*(v16 + 8))(v19, v36);
  v37 = v66;
  static DispatchTime.now()();
  v38 = v70;
  + infix(_:_:)();
  v78 = *(v71 + 8);
  (v78)(v37, v79);
  aBlock[4] = j___s7Combine18PassthroughSubjectC4sendyyxF;
  aBlock[5] = v31;
  v65 = v31;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_101661868;
  v39 = _Block_copy(aBlock);

  v40 = v72;
  static DispatchQoS.unspecified.getter();
  v82 = _swiftEmptyArrayStorage;
  sub_10105032C(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  v41 = v74;
  v42 = v77;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v43 = v67;
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v39);

  (*(v76 + 8))(v41, v42);
  (*(v73 + 8))(v40, v75);
  (v78)(v38, v79);

  aBlock[0] = v65;
  sub_1000041A4(&qword_1016C4528, &unk_1016C4508, &qword_1013FB748);
  v44 = Publisher.eraseToAnyPublisher()();
LABEL_8:

  *v80 = v44;
  return result;
}

uint64_t sub_10104E044(void *a1)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_101695518 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_1000076D4(v8, qword_10177CEA8);
  v9 = a1;
  v10 = v1;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v26 = v25;
    *v13 = 136315394;
    v14 = [*&v9[OBJC_IVAR____TtC12searchpartyd10Peripheral_underlyingObject] identifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    sub_10105032C(&qword_101696930, &type metadata accessor for UUID);
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v16;
    (*(v4 + 8))(v7, v3);
    v18 = sub_1000136BC(v15, v17, &v26);

    *(v13 + 4) = v18;
    *(v13 + 12) = 2114;
    *(v13 + 14) = v10;
    v19 = v24;
    *v24 = v10;
    v20 = v10;
    _os_log_impl(&_mh_execute_header, v11, v12, "PairingAgent: unpair %s. %{public}@", v13, 0x16u);
    sub_10000B3A8(v19, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v25);
  }

  v21 = [*&v10[OBJC_IVAR____TtC12searchpartyd18SharedPairingAgent_underlyingObject] unpairPeer:*&v9[OBJC_IVAR____TtC12searchpartyd10Peripheral_underlyingObject]];
  v22 = *&v10[OBJC_IVAR____TtC12searchpartyd18SharedPairingAgent_lock];
  __chkstk_darwin(v21);
  *(&v24 - 2) = v10;
  *(&v24 - 1) = v9;
  sub_1000BC4D4(&qword_1016C4518, &qword_1013FB758);
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
}

uint64_t sub_10104E3C8@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [*(a1 + OBJC_IVAR____TtC12searchpartyd10Peripheral_underlyingObject) identifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  swift_beginAccess();
  v10 = sub_1007AA1D4(v8);
  (*(v5 + 8))(v8, v4);
  *a2 = v10;
  return swift_endAccess();
}

void sub_10104E568(char *a1, void *a2, void (*a3)(_BYTE *, uint64_t))
{
  v62 = a3;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = &v55[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v12 = &v55[-v11];
  v13 = OBJC_IVAR____TtC12searchpartyd18SharedPairingAgent_pairingSubjects;
  swift_beginAccess();
  v14 = *&a1[v13];

  v15 = [a2 identifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v16 = *&a1[v13];
  if (*(v16 + 16))
  {
    v17 = *&a1[v13];

    v18 = sub_1000210EC(v12);
    if (v19)
    {
      v61 = v14;
      v20 = *(*(v16 + 56) + 8 * v18);
      v21 = *(v6 + 8);

      v60 = v5;
      v21(v12, v5);

      if (qword_101695518 != -1)
      {
        swift_once();
      }

      v22 = type metadata accessor for Logger();
      sub_1000076D4(v22, qword_10177CEA8);
      v23 = a2;
      v24 = a1;
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v58 = v25;
        v28 = v27;
        v57 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        v63[0] = v59;
        *v28 = 136315650;
        *(v28 + 4) = sub_1000136BC(0xD000000000000023, 0x8000000101378CB0, v63);
        *(v28 + 12) = 2082;
        v29 = [v23 identifier];
        v56 = v26;
        v30 = v29;
        v31 = v10;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        sub_10105032C(&qword_101696930, &type metadata accessor for UUID);
        v32 = v60;
        v33 = dispatch thunk of CustomStringConvertible.description.getter();
        v35 = v34;
        v21(v31, v32);
        v36 = sub_1000136BC(v33, v35, v63);

        *(v28 + 14) = v36;
        *(v28 + 22) = 2114;
        *(v28 + 24) = v24;
        v37 = v57;
        *v57 = v24;
        v38 = v24;
        v39 = v58;
        _os_log_impl(&_mh_execute_header, v58, v56, "%s: %{public}s. Disabling pairing agent %{public}@", v28, 0x20u);
        sub_10000B3A8(v37, &qword_10169BB30, &unk_10138B3C0);

        swift_arrayDestroy();
      }

      else
      {
      }

      [*&v24[OBJC_IVAR____TtC12searchpartyd18SharedPairingAgent_underlyingObject] setDelegate:0];
      if (v62)
      {
        v63[0] = v62;
        v64 = 7;
        swift_errorRetain();
        PassthroughSubject.send(completion:)();

        sub_10000B3A8(v63, &unk_1016B1CB0, &qword_1013FB750);
      }

      else
      {
        PassthroughSubject.send(_:)();
      }

      return;
    }
  }

  v40 = v5;
  v62 = *(v6 + 8);
  v62(v12, v5);
  if (qword_101695518 != -1)
  {
    swift_once();
  }

  v41 = type metadata accessor for Logger();
  sub_1000076D4(v41, qword_10177CEA8);

  v42 = a2;
  v43 = Logger.logObject.getter();
  v44 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    v63[0] = v61;
    *v45 = 136315650;
    *(v45 + 4) = sub_1000136BC(0xD000000000000023, 0x8000000101378CB0, v63);
    *(v45 + 12) = 2080;
    v46 = [v42 identifier];
    LODWORD(v60) = v44;
    v47 = v10;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    sub_10105032C(&qword_101696930, &type metadata accessor for UUID);
    v48 = dispatch thunk of CustomStringConvertible.description.getter();
    v50 = v49;
    v62(v47, v40);
    v51 = sub_1000136BC(v48, v50, v63);

    *(v45 + 14) = v51;
    *(v45 + 22) = 2082;
    sub_1000BC4D4(&unk_1016C4508, &qword_1013FB748);
    sub_10105032C(&qword_1016967B0, &type metadata accessor for UUID);
    v52 = Dictionary.Keys.description.getter();
    v54 = sub_1000136BC(v52, v53, v63);

    *(v45 + 24) = v54;
    _os_log_impl(&_mh_execute_header, v43, v60, "%s: No pairing subject for %s. Peers %{public}s.", v45, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
  }
}

void sub_10104EDAC(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC12searchpartyd18SharedPairingAgent_pairingSubjects;
  swift_beginAccess();
  v12 = *(a1 + v11);

  v13 = [a2 identifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v14 = *(a1 + v11);
  if (*(v14 + 16))
  {
    v15 = *(a1 + v11);

    v16 = sub_1000210EC(v10);
    if (v17)
    {
      v18 = *(*(v14 + 56) + 8 * v16);
      v19 = *(v7 + 8);

      v19(v10, v6);

      v20 = *(a1 + OBJC_IVAR____TtC12searchpartyd18SharedPairingAgent_underlyingObject);
      sub_10090B2F0(_swiftEmptyArrayStorage);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      [v20 respondToPairingRequest:a2 type:a3 accept:1 data:isa];

      return;
    }
  }

  (*(v7 + 8))(v10, v6);
  if (qword_101695518 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  sub_1000076D4(v22, qword_10177CEA8);

  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v31 = v26;
    *v25 = 136446210;
    sub_1000BC4D4(&unk_1016C4508, &qword_1013FB748);
    sub_10105032C(&qword_1016967B0, &type metadata accessor for UUID);
    v27 = Dictionary.Keys.description.getter();
    v29 = sub_1000136BC(v27, v28, &v31);

    *(v25 + 4) = v29;
    _os_log_impl(&_mh_execute_header, v23, v24, "peerDidRequestPairing: Identifier mismatch. Skip pairing request. Peers %{public}s.", v25, 0xCu);
    sub_100007BAC(v26);
  }

  else
  {
  }
}

void sub_10104F1E0(void *a1, uint64_t a2)
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v54[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a1)
  {
    if (a2)
    {
      v10 = a1;
      swift_errorRetain();
      if (qword_101695518 != -1)
      {
        swift_once();
      }

      v11 = type metadata accessor for Logger();
      sub_1000076D4(v11, qword_10177CEA8);
      v12 = v10;
      swift_errorRetain();
      v13 = v2;
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        v57 = v56;
        *v16 = 136315906;
        *(v16 + 4) = sub_1000136BC(0xD000000000000033, 0x8000000101378CE0, &v57);
        *(v16 + 12) = 2082;
        v18 = [v12 identifier];
        v55 = v15;
        v19 = v18;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        sub_10105032C(&qword_101696930, &type metadata accessor for UUID);
        v20 = dispatch thunk of CustomStringConvertible.description.getter();
        v21 = v6;
        v23 = v22;
        (*(v21 + 8))(v9, v5);
        v24 = sub_1000136BC(v20, v23, &v57);

        *(v16 + 14) = v24;
        *(v16 + 22) = 2114;
        *(v16 + 24) = v13;
        *v17 = v13;
        *(v16 + 32) = 2114;
        swift_errorRetain();
        v25 = v13;
        v26 = _swift_stdlib_bridgeErrorToNSError();
        *(v16 + 34) = v26;
        v17[1] = v26;
        _os_log_impl(&_mh_execute_header, v14, v55, "%s %{public}s. %{public}@. Error: %{public}@", v16, 0x2Au);
        sub_1000BC4D4(&qword_10169BB30, &unk_10138B3C0);
        swift_arrayDestroy();

        swift_arrayDestroy();
      }

      v27 = *&v13[OBJC_IVAR____TtC12searchpartyd18SharedPairingAgent_lock];
      __chkstk_darwin(v28);
      *&v54[-32] = v13;
      *&v54[-24] = v12;
      *&v54[-16] = a2;
      swift_errorRetain();
      OSAllocatedUnfairLock.callAsFunction<A>(_:)();
    }

    else
    {
      v33 = qword_101695518;
      v34 = a1;
      if (v33 != -1)
      {
        swift_once();
      }

      v35 = type metadata accessor for Logger();
      sub_1000076D4(v35, qword_10177CEA8);
      v36 = v34;
      v37 = v2;
      v38 = Logger.logObject.getter();
      v39 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        v57 = v56;
        *v40 = 136315650;
        *(v40 + 4) = sub_1000136BC(0xD000000000000033, 0x8000000101378CE0, &v57);
        *(v40 + 12) = 2082;
        v42 = [v36 identifier];
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        sub_10105032C(&qword_101696930, &type metadata accessor for UUID);
        v43 = dispatch thunk of CustomStringConvertible.description.getter();
        v44 = v6;
        v46 = v45;
        (*(v44 + 8))(v9, v5);
        v47 = sub_1000136BC(v43, v46, &v57);

        *(v40 + 14) = v47;
        *(v40 + 22) = 2114;
        *(v40 + 24) = v37;
        *v41 = v37;
        v48 = v37;
        _os_log_impl(&_mh_execute_header, v38, v39, "%s error is expected from BT callback but it is nil! %{public}s. %{public}@.", v40, 0x20u);
        sub_10000B3A8(v41, &qword_10169BB30, &unk_10138B3C0);

        swift_arrayDestroy();
      }

      sub_100101B58();
      v49 = swift_allocError();
      *v50 = 8;
      *(v50 + 8) = 0u;
      *(v50 + 24) = 0u;
      *(v50 + 40) = 11;
      v51 = *&v37[OBJC_IVAR____TtC12searchpartyd18SharedPairingAgent_lock];
      v52 = __chkstk_darwin(v49);
      *&v54[-32] = v37;
      *&v54[-24] = v36;
      *&v54[-16] = v52;
      OSAllocatedUnfairLock.callAsFunction<A>(_:)();
    }
  }

  else
  {
    if (qword_101695518 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    sub_1000076D4(v29, qword_10177CEA8);
    v56 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v56, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v57 = v32;
      *v31 = 136315138;
      *(v31 + 4) = sub_1000136BC(0xD000000000000033, 0x8000000101378CE0, &v57);
      _os_log_impl(&_mh_execute_header, v56, v30, "%s peer cannot be nil!", v31, 0xCu);
      sub_100007BAC(v32);
    }

    else
    {
      v53 = v56;
    }
  }
}

void sub_10104FA0C(void *a1)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  isa = v4[8].isa;
  __chkstk_darwin(v3);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_101695518 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_1000076D4(v8, qword_10177CEA8);
  v9 = a1;
  v10 = v1;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v29 = v4;
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v30 = v28;
    *v13 = 136315650;
    *(v13 + 4) = sub_1000136BC(0xD000000000000027, 0x8000000101378C80, &v30);
    *(v13 + 12) = 2082;
    if (a1)
    {

      v15 = [v9 identifier];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      sub_10105032C(&qword_101696930, &type metadata accessor for UUID);
      v16 = dispatch thunk of CustomStringConvertible.description.getter();
      v18 = v17;
      (v29[1].isa)(v7, v3);
      v19 = sub_1000136BC(v16, v18, &v30);

      *(v13 + 14) = v19;
      *(v13 + 22) = 2114;
      *(v13 + 24) = v10;
      *v14 = v10;
      v20 = v10;
      _os_log_impl(&_mh_execute_header, v11, v12, "%s %{public}s. %{public}@", v13, 0x20u);
      sub_10000B3A8(v14, &qword_10169BB30, &unk_10138B3C0);

      swift_arrayDestroy();

LABEL_7:
      v22 = *&v10[OBJC_IVAR____TtC12searchpartyd18SharedPairingAgent_lock];
      __chkstk_darwin(v21);
      *(&v28 - 4) = v10;
      *(&v28 - 3) = v9;
      *(&v28 - 2) = 0;
      v23 = v9;
      OSAllocatedUnfairLock.callAsFunction<A>(_:)();

      return;
    }

    __break(1u);
  }

  else
  {

    if (a1)
    {
      goto LABEL_7;
    }

    v29 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v29, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v30 = v26;
      *v25 = 136315138;
      *(v25 + 4) = sub_1000136BC(0xD000000000000027, 0x8000000101378C80, &v30);
      _os_log_impl(&_mh_execute_header, v29, v24, "%s peer cannot be nil!", v25, 0xCu);
      sub_100007BAC(v26);
    }

    else
    {
      v27 = v29;
    }
  }
}

void sub_10104FEA8(void *a1, uint64_t a2)
{
  v5 = type metadata accessor for UUID();
  v31 = *(v5 - 8);
  isa = v31[8].isa;
  __chkstk_darwin(v5);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_101695518 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_1000076D4(v9, qword_10177CEA8);
  v10 = a1;
  v11 = v2;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v30 = a2;
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v32 = v29;
    *v14 = 136446466;
    if (a1)
    {

      v16 = [v10 identifier];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      sub_10105032C(&qword_101696930, &type metadata accessor for UUID);
      v17 = dispatch thunk of CustomStringConvertible.description.getter();
      v19 = v18;
      (v31[1].isa)(v8, v5);
      v20 = sub_1000136BC(v17, v19, &v32);

      *(v14 + 4) = v20;
      *(v14 + 12) = 2114;
      *(v14 + 14) = v11;
      *v15 = v11;
      v21 = v11;
      _os_log_impl(&_mh_execute_header, v12, v13, "peerDidRequestPairing: %{public}s. %{public}@", v14, 0x16u);
      sub_10000B3A8(v15, &qword_10169BB30, &unk_10138B3C0);

      sub_100007BAC(v29);

      a2 = v30;
LABEL_7:
      v23 = *&v11[OBJC_IVAR____TtC12searchpartyd18SharedPairingAgent_lock];
      __chkstk_darwin(v22);
      *(&v28 - 4) = v11;
      *(&v28 - 3) = v10;
      *(&v28 - 2) = a2;
      v24 = v10;
      OSAllocatedUnfairLock.callAsFunction<A>(_:)();

      return;
    }

    __break(1u);
  }

  else
  {

    if (a1)
    {
      goto LABEL_7;
    }

    v31 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v31, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v31, v25, "peerDidRequestPairing: peer cannot be nil!", v26, 2u);
    }

    v27 = v31;
  }
}

uint64_t sub_10105032C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10105039C(uint64_t a1)
{
  *(a1 + 8) = sub_1010503CC();
  result = sub_10030FC2C();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1010503CC()
{
  result = qword_1016C4530;
  if (!qword_1016C4530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C4530);
  }

  return result;
}

uint64_t sub_101050420(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1000BC4D4(&qword_1016C4560, &qword_1013FB980);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v14 - v10;
  v12 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_1010513F0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v16 = a2;
  v15 = 0;
  sub_101051498();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v3)
  {
    v16 = a3;
    v15 = 1;
    type metadata accessor for SPSimpleBeaconProperty(0);
    sub_1010514EC(&qword_1016C4570, type metadata accessor for SPSimpleBeaconProperty);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_1010505F0()
{
  if (*v0)
  {
    result = 0x6F72506863746566;
  }

  else
  {
    result = 0x6542656C706D6973;
  }

  *v0;
  return result;
}

uint64_t sub_101050640@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6542656C706D6973 && a2 == 0xEC0000006E6F6361;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6F72506863746566 && a2 == 0xEF73656974726570)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_101050728(uint64_t a1)
{
  v2 = sub_1010513F0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_101050764(uint64_t a1)
{
  v2 = sub_1010513F0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1010507A0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1010511D4(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

Swift::Int sub_1010507E8()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  Hasher.init(_seed:)();
  v7 = [v6 identifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  sub_1010514EC(&qword_1016967B0, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  (*(v2 + 8))(v5, v1);
  return Hasher._finalize()();
}

uint64_t sub_10105092C()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [*v0 identifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  sub_1010514EC(&qword_1016967B0, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  return (*(v2 + 8))(v5, v1);
}

Swift::Int sub_101050A60()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  Hasher.init(_seed:)();
  v7 = [v6 identifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  sub_1010514EC(&qword_1016967B0, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  (*(v2 + 8))(v5, v1);
  return Hasher._finalize()();
}

uint64_t sub_101050BB0(id *a1, void **a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v17 - v10;
  v12 = *a2;
  v13 = [*a1 identifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v14 = [v12 identifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  LOBYTE(v14) = static UUID.== infix(_:_:)();
  v15 = *(v5 + 8);
  v15(v9, v4);
  v15(v11, v4);
  return v14 & 1;
}

unint64_t sub_101050E3C()
{
  result = qword_1016C4538;
  if (!qword_1016C4538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C4538);
  }

  return result;
}

void *sub_101050E90(uint64_t a1)
{
  v5 = 0;
  v1 = [objc_opt_self() archivedDataWithRootObject:a1 requiringSecureCoding:1 error:&v5];
  v2 = v5;
  if (v1)
  {
    v3 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v3 = v2;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v3;
}

uint64_t sub_101050F6C(void *a1, void **a2, void *a3)
{
  v6 = a1[4];
  sub_1000035D0(a1, a1[3]);
  result = dispatch thunk of Decoder.singleValueContainer()();
  if (v3)
  {
    *a3 = v3;
  }

  else
  {
    sub_1000035D0(v12, v12[3]);
    sub_1000E307C();
    dispatch thunk of SingleValueDecodingContainer.decode<A>(_:)();
    sub_100008BB8(0, &qword_1016AC5D8, NSKeyedUnarchiver_ptr);
    sub_100008BB8(0, &qword_1016AF988, SPInternalSimpleBeacon_ptr);
    v8 = static NSKeyedUnarchiver.unarchivedObject<A>(ofClass:from:)();
    v9 = *a2;
    *a2 = v8;

    sub_100016590(v10, v11);
    return sub_100007BAC(v12);
  }

  return result;
}

uint64_t sub_1010510C8(void *a1, uint64_t a2)
{
  v4 = a1[4];
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  v5 = sub_101050E90(a2);
  if (!v2)
  {
    v8 = v5;
    v9 = v6;
    sub_10015049C(v10, v10[3]);
    sub_1000E3190();
    dispatch thunk of SingleValueEncodingContainer.encode<A>(_:)();
    sub_100016590(v8, v9);
  }

  return sub_100007BAC(v10);
}

void *sub_10105118C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_10105165C(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1010511D4(uint64_t *a1)
{
  v2 = sub_1000BC4D4(&qword_1016C4540, &qword_1013FB978);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v10 - v5;
  v7 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_1010513F0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  HIBYTE(v10) = 0;
  sub_101051444();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v9 = v11;
  type metadata accessor for SPSimpleBeaconProperty(0);
  HIBYTE(v10) = 1;
  sub_1010514EC(&qword_1016C4558, type metadata accessor for SPSimpleBeaconProperty);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v3 + 8))(v6, v2);
  sub_100007BAC(a1);
  return v9;
}

unint64_t sub_1010513F0()
{
  result = qword_1016C4548;
  if (!qword_1016C4548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C4548);
  }

  return result;
}

unint64_t sub_101051444()
{
  result = qword_1016C4550;
  if (!qword_1016C4550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C4550);
  }

  return result;
}

unint64_t sub_101051498()
{
  result = qword_1016C4568;
  if (!qword_1016C4568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C4568);
  }

  return result;
}

uint64_t sub_1010514EC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_101051558()
{
  result = qword_1016C4578;
  if (!qword_1016C4578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C4578);
  }

  return result;
}

unint64_t sub_1010515B0()
{
  result = qword_1016C4580;
  if (!qword_1016C4580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C4580);
  }

  return result;
}

unint64_t sub_101051608()
{
  result = qword_1016C4588;
  if (!qword_1016C4588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C4588);
  }

  return result;
}

void *sub_10105165C(uint64_t *a1)
{
  v3 = objc_autoreleasePoolPush();
  sub_101050F6C(a1, &v10, &v9);
  if (v1)
  {
    objc_autoreleasePoolPop(v3);
  }

  else
  {
    objc_autoreleasePoolPop(v3);
    v3 = v10;
    if (v10)
    {
      sub_100007BAC(a1);
      return v3;
    }

    v5 = type metadata accessor for DecodingError();
    swift_allocError();
    v7 = v6;
    v8 = a1[4];
    v3 = sub_1000035D0(a1, a1[3]);
    dispatch thunk of Decoder.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v5 - 8) + 104))(v7, enum case for DecodingError.dataCorrupted(_:), v5);
    swift_willThrow();
  }

  sub_100007BAC(a1);
  return v3;
}

void *sub_1010517B8(uint64_t a1)
{
  v14 = a1;
  v2 = type metadata accessor for OS_dispatch_queue.Attributes();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v4 = type metadata accessor for DispatchQoS();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v6 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1[2] = 0;
  v13[1] = sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
  (*(v7 + 104))(v10, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v6);
  static DispatchQoS.unspecified.getter();
  v15 = _swiftEmptyArrayStorage;
  sub_100003D24(&qword_10169BB60, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_1000BC4D4(&unk_101695580, &qword_101385D90);
  sub_100014084(&qword_10169BB70, &unk_101695580, &qword_101385D90);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v1[3] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v1[4] = _swiftEmptyDictionarySingleton;
  v11 = v14;
  v1[5] = _swiftEmptyDictionarySingleton;
  v1[6] = v11;
  return v1;
}

uint64_t sub_101051A34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v43 = a4;
  v34 = a2;
  v35 = a3;
  v40 = type metadata accessor for DispatchWorkItemFlags();
  v42 = *(v40 - 8);
  v9 = *(v42 + 64);
  __chkstk_darwin(v40);
  v38 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for DispatchQoS();
  v39 = *(v41 - 8);
  v11 = *(v39 + 64);
  __chkstk_darwin(v41);
  v36 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for UUID();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13);
  v17 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = &v33 - v18;
  v37 = *(a2 + 24);
  v20 = *(v14 + 16);
  v20(&v33 - v18, a5, v13);
  v20(v17, a6, v13);
  v21 = *(v14 + 80);
  v22 = (v21 + 32) & ~v21;
  v23 = (v15 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = (v21 + v23 + 8) & ~v21;
  v25 = swift_allocObject();
  v26 = v43;
  *(v25 + 16) = v35;
  *(v25 + 24) = v26;
  v27 = *(v14 + 32);
  v27(v25 + v22, v19, v13);
  *(v25 + v23) = v34;
  v27(v25 + v24, v17, v13);
  aBlock[4] = sub_101057A14;
  aBlock[5] = v25;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_101661CB0;
  v28 = _Block_copy(aBlock);

  v29 = v36;
  static DispatchQoS.unspecified.getter();
  aBlock[7] = _swiftEmptyArrayStorage;
  sub_100003D24(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_100014084(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  v30 = v38;
  v31 = v40;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v28);
  (*(v42 + 8))(v30, v31);
  (*(v39 + 8))(v29, v41);
}

uint64_t sub_101051E64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v86 = a1;
  v87 = a4;
  v85 = a3;
  v7 = sub_1000BC4D4(&qword_101699878, &qword_101392008);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v77 = v70 - v9;
  v10 = type metadata accessor for Date();
  v74 = *(v10 - 8);
  v75 = v10;
  v11 = *(v74 + 64);
  __chkstk_darwin(v10);
  v73 = v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  updated = type metadata accessor for AccessoryFirmwareUpdateStateInfo();
  v76 = *(updated - 8);
  v13 = *(v76 + 64);
  v14 = __chkstk_darwin(updated);
  v79 = v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v78 = v70 - v16;
  v17 = type metadata accessor for DispatchPredicate();
  v82 = *(v17 - 8);
  v83 = v17;
  v18 = *(v82 + 64);
  __chkstk_darwin(v17);
  v81 = (v70 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  v21 = *(*(v20 - 8) + 64);
  v22 = __chkstk_darwin(v20 - 8);
  v84 = v70 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v88 = v70 - v24;
  v25 = sub_1000BC4D4(&qword_1016998E8, &qword_101392038);
  v26 = *(*(v25 - 8) + 64);
  __chkstk_darwin(v25 - 8);
  v28 = v70 - v27;
  v29 = type metadata accessor for UUID();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  __chkstk_darwin(v29);
  v33 = v70 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for AccessoryFirmwareUpdateCommandInfo();
  v35 = *(v34 - 8);
  v36 = *(v35 + 64);
  v37 = __chkstk_darwin(v34);
  v39 = v70 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = *(v30 + 16);
  v40(&v39[*(v37 + 20)], v85, v29);
  *v39 = v86;
  *(v39 + 1) = a2;
  v72 = v29;
  v70[1] = v30 + 16;
  v40(v33, a5, v29);
  v85 = v39;
  sub_10105772C(v39, v28, type metadata accessor for AccessoryFirmwareUpdateCommandInfo);
  (*(v35 + 56))(v28, 0, 1, v34);
  v41 = v87;
  swift_beginAccess();
  v42 = v84;

  v71 = v33;
  sub_1001E20F8(v28, v33);
  swift_endAccess();
  v43 = v88;
  URL.init(string:)();
  v44 = sub_101053FD4();
  v86 = a5;
  v45.super.isa = UUID._bridgeToObjectiveC()().super.isa;
  sub_1000D2A70(v43, v42, &unk_101696AC0, &qword_101390A60);
  v46 = type metadata accessor for URL();
  v47 = *(v46 - 8);
  result = (*(v47 + 48))(v42, 1, v46);
  if (result != 1)
  {
    URL._bridgeToObjectiveC()(v49);
    v51 = v50;
    (*(v47 + 8))(v42, v46);
    [v44 updateFirmwareForDevice:v45.super.isa withAssetURL:v51];

    v52 = v41;
    v53 = *(v41 + 24);
    v54 = v81;
    v55 = v82;
    *v81 = v53;
    v56 = v83;
    (*(v55 + 104))(v54, enum case for DispatchPredicate.onQueue(_:), v83);
    v57 = v53;
    LOBYTE(v53) = _dispatchPreconditionTest(_:)();
    (*(v55 + 8))(v54, v56);
    if (v53)
    {
      v56 = v78;
      v58 = v86;
      sub_101053BF8(v86, v78);
      v59 = v73;
      static Date.trustedNow.getter(v73);
      v60 = updated;
      (*(v74 + 40))(v56 + *(updated + 24), v59, v75);
      *(v56 + *(v60 + 20)) = 2;
      v61 = (v56 + *(v60 + 32));
      v62 = v61[1];

      *v61 = 0;
      v61[1] = 0;
      v61[2] = 0;
      v63 = v71;
      v40(v71, v58, v72);
      v64 = v77;
      sub_10105772C(v56, v77, type metadata accessor for AccessoryFirmwareUpdateStateInfo);
      (*(v76 + 56))(v64, 0, 1, v60);
      swift_beginAccess();
      sub_1001E1E88(v64, v63);
      swift_endAccess();
      v65 = *(v52 + 48);

      sub_100A8306C(16);

      static os_log_type_t.default.getter();
      if (qword_1016950B8 == -1)
      {
LABEL_4:
        sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
        v66 = swift_allocObject();
        *(v66 + 16) = xmmword_101385D80;
        swift_beginAccess();
        sub_10105772C(v56, v79, type metadata accessor for AccessoryFirmwareUpdateStateInfo);
        v67 = String.init<A>(describing:)();
        v69 = v68;
        *(v66 + 56) = &type metadata for String;
        *(v66 + 64) = sub_100008C00();
        *(v66 + 32) = v67;
        *(v66 + 40) = v69;
        os_log(_:dso:log:_:_:)();

        sub_10000B3A8(v88, &unk_101696AC0, &qword_101390A60);
        sub_1010578B4(v85, type metadata accessor for AccessoryFirmwareUpdateCommandInfo);
        return sub_1010578B4(v56, type metadata accessor for AccessoryFirmwareUpdateStateInfo);
      }
    }

    else
    {
      __break(1u);
    }

    swift_once();
    goto LABEL_4;
  }

  __break(1u);
  return result;
}

uint64_t sub_1010526F0(uint64_t a1, int a2, uint64_t a3, unint64_t a4, uint64_t (*a5)())
{
  v136 = a5;
  v131 = a4;
  v135 = a3;
  LODWORD(v134) = a2;
  v139 = a1;
  updated = type metadata accessor for AccessoryFirmwareUpdateStateInfo();
  v137 = *(updated - 1);
  v7 = *(v137 + 8);
  __chkstk_darwin(updated);
  v138 = v121 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = type metadata accessor for DispatchTime();
  v125 = *(v126 - 8);
  v9 = *(v125 + 64);
  v10 = __chkstk_darwin(v126);
  v123 = v121 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v124 = v121 - v12;
  v13 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = v121 - v15;
  *&v130 = type metadata accessor for OwnedBeaconRecord();
  v132 = *(v130 - 8);
  v17 = *(v132 + 8);
  v18 = __chkstk_darwin(v130);
  v122 = v121 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = v19;
  __chkstk_darwin(v18);
  v128 = (v121 - v20);
  v21 = sub_1000BC4D4(&qword_101699878, &qword_101392008);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v133 = v121 - v23;
  v24 = type metadata accessor for UUID();
  v141 = *(v24 - 8);
  v142 = v24;
  v25 = *(v141 + 64);
  __chkstk_darwin(v24);
  v121[1] = v26;
  v140 = v121 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for Date();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  __chkstk_darwin(v27);
  v31 = v121 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for DispatchPredicate();
  v33 = *(v32 - 1);
  v34 = *(v33 + 64);
  __chkstk_darwin(v32);
  v36 = v121 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = *(v5 + 24);
  *v36 = v37;
  (*(v33 + 104))(v36, enum case for DispatchPredicate.onQueue(_:), v32);
  v38 = v37;
  v39 = _dispatchPreconditionTest(_:)();
  (*(v33 + 8))(v36, v32);
  if ((v39 & 1) == 0)
  {
    __break(1u);
    goto LABEL_23;
  }

  v129 = v16;
  v143 = swift_allocBox();
  v36 = v40;
  v41 = v139;
  v42 = v5;
  sub_101053BF8(v139, v40);
  static Date.trustedNow.getter(v31);
  (*(v28 + 40))(&v36[updated[6]], v31, v27);
  v43 = v134;
  v36[updated[5]] = v134;
  if (v135)
  {
    swift_getErrorValue();
    swift_errorRetain();
    v44 = Error.domain.getter();
    v46 = v45;
    swift_getErrorValue();
    v47 = Error.code.getter();

    v48 = &v36[updated[8]];
    v49 = v48[1];
    *v48 = v44;
    v48[1] = v46;
    v48[2] = v47;
  }

  else
  {
    v50 = &v36[updated[8]];
    v51 = *(v50 + 1);
    *(v50 + 1) = 0;
    *(v50 + 2) = 0;
    *v50 = 0;
  }

  v52 = v136;
  if (v136)
  {
    v53 = &v36[updated[7]];
    v54 = v53[1];
    *v53 = v131;
    v53[1] = v52;
  }

  v55 = v140;
  v136 = *(v141 + 16);
  (v136)(v140, v41, v142);
  v56 = v133;
  sub_10105772C(v36, v133, type metadata accessor for AccessoryFirmwareUpdateStateInfo);
  (*(v137 + 7))(v56, 0, 1, updated);
  swift_beginAccess();
  sub_1001E1E88(v56, v55);
  swift_endAccess();
  v57 = v43;
  v32 = &type metadata for String;
  v58 = v42;
  v16 = "v32@0:8@NISession16q24" + 15;
  v59 = &qword_101695000;
  v39 = 0x10177C000;
  v137 = updated;
  if (v57 != 3)
  {
    v114 = *(v58 + 48);

    sub_100A8306C(16);

    goto LABEL_19;
  }

  static os_log_type_t.default.getter();
  v135 = sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v60 = swift_allocObject();
  *(v60 + 16) = xmmword_10138BBE0;
  v61 = &v36[updated[7]];
  v62 = *(v61 + 1);
  v144[0] = *v61;
  v144[1] = v62;

  sub_1000BC4D4(&qword_1016A0AC0, &unk_1013926A0);
  v63 = String.init<A>(describing:)();
  v65 = v64;
  *(v60 + 56) = &type metadata for String;
  v66 = sub_100008C00();
  *(v60 + 64) = v66;
  *(v60 + 32) = v63;
  *(v60 + 40) = v65;
  v67 = UUID.uuidString.getter();
  *(v60 + 96) = &type metadata for String;
  *(v60 + 104) = v66;
  *(v60 + 72) = v67;
  *(v60 + 80) = v68;
  sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
  v69 = static OS_os_log.default.getter();
  os_log(_:dso:log:_:_:)();

  v70 = *(v58 + 48);

  sub_100025020(v41, v144);

  v71 = v132;
  v72 = v132 + 56;
  if (!v144[3])
  {
    sub_10000B3A8(v144, &qword_101696920, &unk_10138B200);
    v73 = v129;
    (*v72)(v129, 1, 1, v130);
    v59 = &qword_101695000;
    goto LABEL_18;
  }

  sub_1000BC4D4(&unk_1016AA470, &qword_10139FD30);
  v73 = v129;
  v74 = v130;
  v75 = swift_dynamicCast();
  (*(v71 + 7))(v73, v75 ^ 1u, 1, v74);
  v76 = (*(v71 + 6))(v73, 1, v74);
  v59 = &qword_101695000;
  if (v76 == 1)
  {
LABEL_18:
    sub_10000B3A8(v73, &unk_1016A9A20, &qword_10138B280);
    v16 = "ion16q24";
    v39 = &qword_10177BFF8[1];
    goto LABEL_19;
  }

  v131 = v66;
  sub_1010575DC(v73, v128, type metadata accessor for OwnedBeaconRecord);
  *&v130 = dispatch_group_create();
  dispatch_group_enter(v130);
  v133 = *(v58 + 48);
  v77 = v140;
  v78 = v142;
  (v136)(v140, v41, v142);
  v79 = v141;
  v80 = v41;
  v81 = (*(v141 + 80) + 24) & ~*(v141 + 80);
  v82 = swift_allocObject();
  *(v82 + 16) = v143;
  v83 = *(v79 + 32);
  v134 = v82;
  v83(v82 + v81, v77, v78);
  (v136)(v77, v80, v78);
  v84 = swift_allocObject();
  v85 = v130;
  *(v84 + 16) = v130;
  v141 = v84;
  v83(v84 + v81, v77, v78);
  v86 = v133;

  v142 = v85;
  static os_log_type_t.default.getter();
  if (qword_101695038 != -1)
  {
    swift_once();
  }

  v87 = swift_allocObject();
  v130 = xmmword_101385D80;
  *(v87 + 16) = xmmword_101385D80;
  v88 = v131;
  *(v87 + 56) = &type metadata for String;
  *(v87 + 64) = v88;
  *(v87 + 32) = 0x65736C6166;
  *(v87 + 40) = 0xE500000000000000;
  os_log(_:dso:log:_:_:)();

  v89 = objc_autoreleasePoolPush();
  v90 = v128;
  sub_101121B40(v128);
  v92 = v91;
  v140 = v91;
  objc_autoreleasePoolPop(v89);
  v93 = *(v86 + 184);
  sub_1000BC4D4(&unk_1016B14B0, &qword_1013A08F0);
  type metadata accessor for CloudKitCoordinator();
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  v136 = type metadata accessor for OwnedBeaconRecord;
  v94 = v122;
  sub_10105772C(v90, v122, type metadata accessor for OwnedBeaconRecord);
  v95 = *(v132 + 80);
  v96 = swift_allocObject();
  v97 = v134;
  *(v96 + 16) = sub_101057644;
  *(v96 + 24) = v97;
  v98 = v90;
  v132 = type metadata accessor for OwnedBeaconRecord;
  sub_1010575DC(v94, v96 + ((v95 + 32) & ~v95), type metadata accessor for OwnedBeaconRecord);

  sub_100FDCA40(v92, sub_101057794, v96);

  v99 = swift_allocObject();
  v100 = v141;
  *(v99 + 16) = sub_1010576B8;
  *(v99 + 24) = v100;

  Future.addFailure(block:)();

  sub_10105772C(v98, v94, v136);
  v101 = (v95 + 16) & ~v95;
  v102 = (v127 + v101 + 7) & 0xFFFFFFFFFFFFFFF8;
  v103 = swift_allocObject();
  sub_1010575DC(v94, v103 + v101, v132);
  *(v103 + v102) = v133;
  v104 = (v103 + ((v102 + 15) & 0xFFFFFFFFFFFFFFF8));
  *v104 = sub_1010576B8;
  v104[1] = v100;

  Future.addSuccess(block:)();

  v105 = v123;
  static DispatchTime.now()();
  v106 = v124;
  + infix(_:_:)();
  v107 = *(v125 + 8);
  v108 = v126;
  v107(v105, v126);
  v109 = v142;
  OS_dispatch_group.wait(timeout:)();
  v107(v106, v108);
  if (static DispatchTimeoutResult.== infix(_:_:)())
  {
    static os_log_type_t.error.getter();
    v59 = &qword_101695000;
    if (qword_1016950B8 != -1)
    {
      swift_once();
    }

    v110 = swift_allocObject();
    *(v110 + 16) = v130;
    v111 = UUID.uuidString.getter();
    v32 = &type metadata for String;
    v112 = v131;
    *(v110 + 56) = &type metadata for String;
    *(v110 + 64) = v112;
    *(v110 + 32) = v111;
    *(v110 + 40) = v113;
    v39 = 0x10177C000;
    os_log(_:dso:log:_:_:)();

    sub_1010578B4(v128, type metadata accessor for OwnedBeaconRecord);
    v16 = "v32@0:8@NISession16q24" + 15;
  }

  else
  {
    sub_1010578B4(v128, type metadata accessor for OwnedBeaconRecord);

    v32 = &type metadata for String;
    v16 = "v32@0:8@NISession16q24" + 15;
    v39 = 0x10177C000;
    v59 = &qword_101695000;
  }

LABEL_19:
  static os_log_type_t.default.getter();
  if (v59[23] != -1)
  {
LABEL_23:
    swift_once();
  }

  v115 = *(v39 + 1024);
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v116 = swift_allocObject();
  *(v116 + 16) = *(v16 + 216);
  swift_beginAccess();
  sub_10105772C(v36, v138, type metadata accessor for AccessoryFirmwareUpdateStateInfo);
  v117 = String.init<A>(describing:)();
  v119 = v118;
  *(v116 + 56) = v32;
  *(v116 + 64) = sub_100008C00();
  *(v116 + 32) = v117;
  *(v116 + 40) = v119;
  os_log(_:dso:log:_:_:)();
}

uint64_t sub_101053740@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v54 = a3;
  updated = type metadata accessor for AccessoryFirmwareUpdateCommandInfo();
  v47 = *(updated - 8);
  v5 = *(v47 + 64);
  v6 = __chkstk_darwin(updated);
  v48 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v49 = &v47 - v8;
  v9 = type metadata accessor for AccessoryFirmwareUpdateStateInfo();
  v10 = *(*(v9 - 1) + 64);
  __chkstk_darwin(v9);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = type metadata accessor for Date();
  v13 = *(v55 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v55);
  v16 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Date.trustedNow.getter(v16);
  v51 = a2;
  v52 = SPBeaconTaskNameAccessoryFirmwareUpdate;
  v53 = a1;
  sub_101053BF8(a2, v12);
  v17 = v12[v9[5]];
  switch(v17)
  {
    case 1:
      v25 = &v12[v9[8]];
      if (*(v25 + 1))
      {
        v26 = *(v25 + 2);
        v27 = *v25;
        v28 = objc_allocWithZone(NSError);
        v29 = String._bridgeToObjectiveC()();
        v23 = [v28 initWithDomain:v29 code:v26 userInfo:{0, v47}];
      }

      else
      {
        v23 = 0;
      }

      v24 = 3;
      break;
    case 2:
      v24 = 0;
      v23 = 0;
      break;
    case 4:
      v18 = &v12[v9[8]];
      if (*(v18 + 1))
      {
        v19 = *(v18 + 2);
        v20 = *v18;
        v21 = objc_allocWithZone(NSError);
        v22 = String._bridgeToObjectiveC()();
        v23 = [v21 initWithDomain:v22 code:v19 userInfo:{0, v47}];
      }

      else
      {
        v23 = 0;
      }

      v24 = 1;
      break;
    default:
      v23 = 0;
      v24 = 2;
      break;
  }

  v30 = *(v13 + 8);
  v31 = v55;
  v30(v16, v55);
  (*(v13 + 16))(v16, &v12[v9[6]], v31);
  swift_errorRetain();
  v32.super.isa = Date._bridgeToObjectiveC()().super.isa;
  if (v23)
  {
    v33 = _convertErrorToNSError(_:)();
  }

  else
  {
    v33 = 0;
  }

  v34 = objc_allocWithZone(SPBeaconTaskInformation);
  v35 = [v34 initWithName:v52 lastUpdated:v32.super.isa error:v33 state:v24];

  v36 = v53;
  swift_beginAccess();
  v37 = *(v36 + 32);
  v38 = *(v37 + 16);

  if (v38 && (v39 = sub_1000210EC(v51), (v40 & 1) != 0))
  {
    v41 = v48;
    sub_10105772C(*(v37 + 56) + *(v47 + 72) * v39, v48, type metadata accessor for AccessoryFirmwareUpdateCommandInfo);

    v42 = v41;
    v43 = v49;
    sub_1010575DC(v42, v49, type metadata accessor for AccessoryFirmwareUpdateCommandInfo);
    v44 = v43 + *(updated + 20);
    isa = UUID._bridgeToObjectiveC()().super.isa;
    [v35 setCommandIdentifier:isa];

    sub_1010578B4(v43, type metadata accessor for AccessoryFirmwareUpdateCommandInfo);
  }

  else
  {
  }

  v30(v16, v55);
  result = sub_1010578B4(v12, type metadata accessor for AccessoryFirmwareUpdateStateInfo);
  *v54 = v35;
  return result;
}

uint64_t sub_101053BF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v39 = a1;
  v5 = sub_1000BC4D4(&qword_101699878, &qword_101392008);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v38 = &v36 - v7;
  v36 = type metadata accessor for UUID();
  v8 = *(v36 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v36);
  v37 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  updated = type metadata accessor for AccessoryFirmwareUpdateStateInfo();
  v12 = *(updated - 1);
  v13 = *(v12 + 64);
  __chkstk_darwin(updated);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchPredicate();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = (&v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = *(v3 + 24);
  *v20 = v21;
  (*(v17 + 104))(v20, enum case for DispatchPredicate.onQueue(_:), v16);
  v22 = v21;
  LOBYTE(v21) = _dispatchPreconditionTest(_:)();
  result = (*(v17 + 8))(v20, v16);
  if (v21)
  {
    swift_beginAccess();
    v24 = *(v3 + 40);
    v25 = v39;
    if (*(v24 + 16))
    {
      v26 = *(v3 + 40);

      v27 = sub_1000210EC(v25);
      if (v28)
      {
        sub_10105772C(*(v24 + 56) + *(v12 + 72) * v27, v15, type metadata accessor for AccessoryFirmwareUpdateStateInfo);

        return sub_1010575DC(v15, a2, type metadata accessor for AccessoryFirmwareUpdateStateInfo);
      }
    }

    v29 = *(v8 + 16);
    v30 = v36;
    v29(a2, v25, v36);
    static Date.trustedNow.getter(a2 + updated[6]);
    *(a2 + updated[5]) = 0;
    v31 = (a2 + updated[7]);
    *v31 = 0;
    v31[1] = 0;
    v32 = (a2 + updated[8]);
    *v32 = 0;
    v32[1] = 0;
    v32[2] = 0;
    v33 = v37;
    v29(v37, v25, v30);
    v34 = a2;
    v35 = v38;
    sub_10105772C(v34, v38, type metadata accessor for AccessoryFirmwareUpdateStateInfo);
    (*(v12 + 56))(v35, 0, 1, updated);
    swift_beginAccess();
    sub_1001E1E88(v35, v33);
    return swift_endAccess();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_101053FD4()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = (&v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + 24);
  *v5 = v6;
  (*(v2 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v1);
  v7 = v6;
  LOBYTE(v6) = _dispatchPreconditionTest(_:)();
  result = (*(v2 + 8))(v5, v1);
  if (v6)
  {
    v9 = *(v0 + 16);
    if (v9)
    {
      v10 = *(v0 + 16);
    }

    else
    {
      v11 = [objc_allocWithZone(CLFindMyAccessoryFirmwareUpdateManager) initWithDelegate:v0 delegateQueue:0];
      v12 = *(v0 + 16);
      *(v0 + 16) = v11;
      v10 = v11;

      v9 = 0;
    }

    v13 = v9;
    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10105412C()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = (&v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = v0[3];
  *v5 = v6;
  (*(v2 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v1);
  v7 = v6;
  LOBYTE(v6) = _dispatchPreconditionTest(_:)();
  (*(v2 + 8))(v5, v1);
  if (v6)
  {
    swift_beginAccess();
    if (!*(v0[4] + 16))
    {
      v8 = v0[2];
      v0[2] = 0;
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_101054264()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  v3 = *(v0 + 48);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AccessoryFirmwareUpdateCommandInfo()
{
  result = qword_1016C4790;
  if (!qword_1016C4790)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1010545CC()
{
  sub_101054650();
  if (v0 <= 0x3F)
  {
    type metadata accessor for UUID();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_101054650()
{
  if (!qword_1016C47A0)
  {
    sub_1000BC580(&qword_10169F020, &qword_10139FE08);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1016C47A0);
    }
  }
}

uint64_t sub_1010546B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v26 = a4;
  v27 = a5;
  v25 = a1;
  v31 = type metadata accessor for DispatchWorkItemFlags();
  v33 = *(v31 - 8);
  v7 = *(v33 + 64);
  __chkstk_darwin(v31);
  v29 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for DispatchQoS();
  v30 = *(v32 - 8);
  v9 = *(v30 + 64);
  __chkstk_darwin(v32);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = *(a2 + 24);
  (*(v13 + 16))(v15, a3, v12);
  v16 = (*(v13 + 80) + 24) & ~*(v13 + 80);
  v17 = (v14 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  *(v18 + 16) = a2;
  (*(v13 + 32))(v18 + v16, v15, v12);
  v19 = (v18 + v17);
  v20 = v27;
  *v19 = v26;
  v19[1] = v20;
  *(v18 + ((v17 + 23) & 0xFFFFFFFFFFFFFFF8)) = v25;
  aBlock[4] = sub_101057AB4;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_101661D00;
  v21 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[7] = _swiftEmptyArrayStorage;
  sub_100003D24(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_100014084(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  v22 = v29;
  v23 = v31;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v21);
  (*(v33 + 8))(v22, v23);
  (*(v30 + 8))(v11, v32);
}

void sub_101054A94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v53 = a5;
  v50 = a4;
  v44 = a3;
  v48 = a2;
  v6 = sub_1000BC4D4(&qword_101699878, &qword_101392008);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v51 = &v43 - v8;
  v9 = type metadata accessor for UUID();
  v46 = *(v9 - 8);
  v47 = v9;
  v10 = *(v46 + 64);
  __chkstk_darwin(v9);
  v49 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for Date();
  v12 = *(v45 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v45);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  updated = type metadata accessor for AccessoryFirmwareUpdateStateInfo();
  v17 = *(updated - 1);
  v18 = *(v17 + 64);
  v19 = __chkstk_darwin(updated);
  v52 = &v43 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v22 = &v43 - v21;
  v23 = type metadata accessor for DispatchPredicate();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  __chkstk_darwin(v23);
  v27 = (&v43 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = *(a1 + 24);
  *v27 = v28;
  (*(v24 + 104))(v27, enum case for DispatchPredicate.onQueue(_:), v23);
  v29 = v28;
  LOBYTE(v28) = _dispatchPreconditionTest(_:)();
  (*(v24 + 8))(v27, v23);
  if ((v28 & 1) == 0)
  {
    __break(1u);
LABEL_7:
    swift_once();
    goto LABEL_5;
  }

  v30 = v48;
  sub_101053BF8(v48, v22);
  static Date.trustedNow.getter(v15);
  (*(v12 + 40))(&v22[updated[6]], v15, v45);
  v22[updated[5]] = 4;
  v31 = &v22[updated[8]];
  v32 = *(v31 + 1);

  *v31 = 0;
  *(v31 + 1) = 0;
  *(v31 + 2) = 0;
  v33 = v50;
  if (v50)
  {
    v34 = &v22[updated[7]];
    v35 = *(v34 + 1);

    *v34 = v44;
    *(v34 + 1) = v33;
  }

  v36 = v49;
  (*(v46 + 16))(v49, v30, v47);
  v37 = v51;
  sub_10105772C(v22, v51, type metadata accessor for AccessoryFirmwareUpdateStateInfo);
  (*(v17 + 56))(v37, 0, 1, updated);
  swift_beginAccess();
  sub_1001E1E88(v37, v36);
  swift_endAccess();
  v38 = *(a1 + 48);

  sub_100A8306C(16);

  static os_log_type_t.default.getter();
  if (qword_1016950B8 != -1)
  {
    goto LABEL_7;
  }

LABEL_5:
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_101385D80;
  swift_beginAccess();
  sub_10105772C(v22, v52, type metadata accessor for AccessoryFirmwareUpdateStateInfo);
  v40 = String.init<A>(describing:)();
  v42 = v41;
  *(v39 + 56) = &type metadata for String;
  *(v39 + 64) = sub_100008C00();
  *(v39 + 32) = v40;
  *(v39 + 40) = v42;
  os_log(_:dso:log:_:_:)();

  sub_1010578B4(v22, type metadata accessor for AccessoryFirmwareUpdateStateInfo);
  Transaction.capture()();
}

uint64_t sub_101054FF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a1;
  v25 = type metadata accessor for DispatchWorkItemFlags();
  v27 = *(v25 - 8);
  v5 = *(v27 + 64);
  __chkstk_darwin(v25);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for DispatchQoS();
  v24 = *(v26 - 8);
  v8 = *(v24 + 64);
  __chkstk_darwin(v26);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(a2 + 24);
  (*(v12 + 16))(v14, a3, v11);
  v15 = (*(v12 + 80) + 24) & ~*(v12 + 80);
  v16 = (v13 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  (*(v12 + 32))(v17 + v15, v14, v11);
  *(v17 + v16) = v22;
  aBlock[4] = sub_101057914;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_101661C10;
  v18 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[7] = _swiftEmptyArrayStorage;
  sub_100003D24(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_100014084(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  v19 = v25;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);
  (*(v27 + 8))(v7, v19);
  (*(v24 + 8))(v10, v26);
}

void sub_1010553AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v55 = a3;
  v5 = sub_1000BC4D4(&qword_1016998E8, &qword_101392038);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v53 = &v43 - v7;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v51 = *(v8 - 8);
  v52 = v8;
  v9 = *(v51 + 64);
  __chkstk_darwin(v8);
  v49 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for DispatchQoS();
  v48 = *(v50 - 8);
  v11 = *(v48 + 64);
  __chkstk_darwin(v50);
  v47 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS.QoSClass();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  updated = type metadata accessor for AccessoryFirmwareUpdateCommandInfo();
  v19 = *(updated - 8);
  v20 = *(v19 + 64);
  v21 = __chkstk_darwin(updated - 8);
  v22 = &v43 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v25 = &v43 - v24;
  __chkstk_darwin(v23);
  v27 = &v43 - v26;
  v54 = a2;
  sub_1010526F0(a2, 3, 0, 0, 0);
  swift_beginAccess();
  v28 = *(a1 + 32);
  if (*(v28 + 16))
  {
    v29 = *(a1 + 32);

    v30 = sub_1000210EC(v54);
    if (v31)
    {
      v32 = *(v28 + 56);
      v44 = v19;
      v33 = v32 + *(v19 + 72) * v30;
      v43 = type metadata accessor for AccessoryFirmwareUpdateCommandInfo;
      sub_10105772C(v33, v25, type metadata accessor for AccessoryFirmwareUpdateCommandInfo);

      v46 = v27;
      sub_1010575DC(v25, v27, type metadata accessor for AccessoryFirmwareUpdateCommandInfo);
      sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
      (*(v14 + 104))(v17, enum case for DispatchQoS.QoSClass.default(_:), v13);
      v45 = static OS_dispatch_queue.global(qos:)();
      (*(v14 + 8))(v17, v13);
      v34 = v43;
      sub_10105772C(v27, v22, v43);
      v35 = (*(v44 + 80) + 16) & ~*(v44 + 80);
      v36 = swift_allocObject();
      sub_1010575DC(v22, v36 + v35, type metadata accessor for AccessoryFirmwareUpdateCommandInfo);
      aBlock[4] = sub_1010579A4;
      aBlock[5] = v36;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100006684;
      aBlock[3] = &unk_101661C60;
      v37 = _Block_copy(aBlock);
      v38 = v47;
      static DispatchQoS.unspecified.getter();
      v56 = _swiftEmptyArrayStorage;
      sub_100003D24(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
      sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
      sub_100014084(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
      v39 = v49;
      v40 = v52;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v41 = v45;
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v37);

      (*(v51 + 8))(v39, v40);
      (*(v48 + 8))(v38, v50);

      swift_beginAccess();
      v42 = v53;
      sub_1007AA200(v54, v53);
      sub_10000B3A8(v42, &qword_1016998E8, &qword_101392038);
      swift_endAccess();
      sub_10105412C();
      sub_1010578B4(v46, v34);
    }

    else
    {
    }
  }

  Transaction.capture()();
}

uint64_t sub_1010559C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = a1;
  v25 = a4;
  v29 = type metadata accessor for DispatchWorkItemFlags();
  v31 = *(v29 - 8);
  v6 = *(v31 + 64);
  __chkstk_darwin(v29);
  v27 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for DispatchQoS();
  v28 = *(v30 - 8);
  v8 = *(v28 + 64);
  __chkstk_darwin(v30);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *(a2 + 24);
  (*(v12 + 16))(v14, a3, v11);
  v15 = (*(v12 + 80) + 24) & ~*(v12 + 80);
  v16 = (v13 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  (*(v12 + 32))(v17 + v15, v14, v11);
  v18 = v24;
  *(v17 + v16) = v25;
  *(v17 + ((v16 + 15) & 0xFFFFFFFFFFFFFFF8)) = v18;
  aBlock[4] = sub_1010574B4;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_101661AA8;
  v19 = _Block_copy(aBlock);

  swift_errorRetain();

  static DispatchQoS.unspecified.getter();
  aBlock[7] = _swiftEmptyArrayStorage;
  sub_100003D24(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_100014084(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  v20 = v27;
  v21 = v29;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v19);
  (*(v31 + 8))(v20, v21);
  (*(v28 + 8))(v10, v30);
}

void sub_101055D98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v102 = a4;
  v103 = a3;
  v104 = a2;
  v95 = type metadata accessor for DispatchWorkItemFlags();
  v94 = *(v95 - 8);
  v5 = *(v94 + 64);
  __chkstk_darwin(v95);
  v92 = &v81 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = type metadata accessor for DispatchQoS();
  v91 = *(v93 - 8);
  v7 = *(v91 + 64);
  __chkstk_darwin(v93);
  v90 = &v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = type metadata accessor for DispatchQoS.QoSClass();
  v87 = *(v88 - 8);
  v9 = *(v87 + 64);
  __chkstk_darwin(v88);
  v85 = &v81 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  updated = type metadata accessor for AccessoryFirmwareUpdateCommandInfo();
  v83 = *(updated - 8);
  v12 = *(v83 + 64);
  v13 = __chkstk_darwin(updated - 8);
  v86 = &v81 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v82 = &v81 - v16;
  v84 = v17;
  __chkstk_darwin(v15);
  v89 = &v81 - v18;
  v19 = sub_1000BC4D4(&qword_101699878, &qword_101392008);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v100 = &v81 - v21;
  v98 = type metadata accessor for UUID();
  v97 = *(v98 - 8);
  v22 = *(v97 + 64);
  __chkstk_darwin(v98);
  v99 = &v81 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for Date();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  __chkstk_darwin(v24);
  v28 = &v81 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for AccessoryFirmwareUpdateStateInfo();
  v96 = *(v29 - 1);
  v30 = *(v96 + 64);
  v31 = __chkstk_darwin(v29);
  v101 = &v81 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v34 = &v81 - v33;
  v35 = type metadata accessor for DispatchPredicate();
  v36 = *(v35 - 8);
  v37 = *(v36 + 64);
  __chkstk_darwin(v35);
  v39 = (&v81 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0));
  v40 = a1;
  v41 = *(a1 + 24);
  *v39 = v41;
  (*(v36 + 104))(v39, enum case for DispatchPredicate.onQueue(_:), v35);
  v42 = v41;
  v43 = _dispatchPreconditionTest(_:)();
  (*(v36 + 8))(v39, v35);
  if (v43)
  {
    v44 = v104;
    v43 = v40;
    sub_101053BF8(v104, v34);
    static Date.trustedNow.getter(v28);
    (*(v25 + 40))(&v34[v29[6]], v28, v24);
    v34[v29[5]] = 4;
    if (v103)
    {
      swift_getErrorValue();
      v45 = v44;
      swift_errorRetain();
      v46 = Error.domain.getter();
      v48 = v47;
      swift_getErrorValue();
      v49 = Error.code.getter();

      v50 = &v34[v29[8]];
      v51 = v50[1];

      *v50 = v46;
      v50[1] = v48;
      v44 = v45;
      v50[2] = v49;
    }

    else
    {
      v52 = &v34[v29[8]];
      v53 = *(v52 + 1);

      *v52 = 0;
      *(v52 + 1) = 0;
      *(v52 + 2) = 0;
    }

    v54 = v99;
    (*(v97 + 16))(v99, v44, v98);
    v55 = v100;
    sub_10105772C(v34, v100, type metadata accessor for AccessoryFirmwareUpdateStateInfo);
    (*(v96 + 56))(v55, 0, 1, v29);
    swift_beginAccess();
    sub_1001E1E88(v55, v54);
    swift_endAccess();
    v56 = *(v40 + 48);

    sub_100A8306C(16);

    static os_log_type_t.default.getter();
    if (qword_1016950B8 == -1)
    {
      goto LABEL_6;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_6:
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v57 = swift_allocObject();
  *(v57 + 16) = xmmword_101385D80;
  swift_beginAccess();
  sub_10105772C(v34, v101, type metadata accessor for AccessoryFirmwareUpdateStateInfo);
  v58 = String.init<A>(describing:)();
  v60 = v59;
  *(v57 + 56) = &type metadata for String;
  *(v57 + 64) = sub_100008C00();
  *(v57 + 32) = v58;
  *(v57 + 40) = v60;
  os_log(_:dso:log:_:_:)();

  sub_1010578B4(v34, type metadata accessor for AccessoryFirmwareUpdateStateInfo);
  swift_beginAccess();
  v61 = *(v43 + 32);
  if (*(v61 + 16))
  {
    v62 = *(v43 + 32);

    v63 = sub_1000210EC(v104);
    if (v64)
    {
      v65 = v83;
      v66 = v82;
      sub_10105772C(*(v61 + 56) + *(v83 + 72) * v63, v82, type metadata accessor for AccessoryFirmwareUpdateCommandInfo);

      v67 = v66;
      v68 = v89;
      sub_1010575DC(v67, v89, type metadata accessor for AccessoryFirmwareUpdateCommandInfo);
      sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
      v69 = v87;
      v70 = v85;
      v71 = v88;
      (*(v87 + 104))(v85, enum case for DispatchQoS.QoSClass.default(_:), v88);
      v72 = static OS_dispatch_queue.global(qos:)();
      (*(v69 + 8))(v70, v71);
      v73 = v86;
      sub_10105772C(v68, v86, type metadata accessor for AccessoryFirmwareUpdateCommandInfo);
      v74 = (*(v65 + 80) + 16) & ~*(v65 + 80);
      v75 = (v84 + v74 + 7) & 0xFFFFFFFFFFFFFFF8;
      v76 = swift_allocObject();
      sub_1010575DC(v73, v76 + v74, type metadata accessor for AccessoryFirmwareUpdateCommandInfo);
      *(v76 + v75) = v103;
      aBlock[4] = sub_101057550;
      aBlock[5] = v76;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100006684;
      aBlock[3] = &unk_101661AF8;
      v77 = _Block_copy(aBlock);
      swift_errorRetain();
      v78 = v90;
      static DispatchQoS.unspecified.getter();
      v105 = _swiftEmptyArrayStorage;
      sub_100003D24(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
      sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
      sub_100014084(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
      v79 = v92;
      v80 = v95;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v77);

      (*(v94 + 8))(v79, v80);
      (*(v91 + 8))(v78, v93);
      sub_1010578B4(v68, type metadata accessor for AccessoryFirmwareUpdateCommandInfo);
    }

    else
    {
    }
  }

  Transaction.capture()();
}

uint64_t sub_101056958(uint64_t a1, uint64_t a2)
{
  if (*a1)
  {
    v2 = *(a1 + 8);
    (*a1)(a2);
  }

  static os_log_type_t.default.getter();
  if (qword_1016950B8 != -1)
  {
    swift_once();
  }

  return os_log(_:dso:log:_:_:)();
}

uint64_t sub_101056A04(uint64_t a1)
{
  updated = type metadata accessor for AccessoryFirmwareUpdateStateInfo();
  v3 = swift_projectBox();
  swift_beginAccess();
  v4 = (v3 + *(updated + 28));
  v5 = v4[1];
  if (v5)
  {
    v6 = *v4;
    v7 = (a1 + *(type metadata accessor for OwnedBeaconRecord() + 60));
    v8 = v7[1];

    *v7 = v6;
    v7[1] = v5;
  }

  else
  {
    static os_log_type_t.error.getter();
    if (qword_1016950B8 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_101385D80;
    v11 = UUID.uuidString.getter();
    v13 = v12;
    *(v10 + 56) = &type metadata for String;
    *(v10 + 64) = sub_100008C00();
    *(v10 + 32) = v11;
    *(v10 + 40) = v13;
    os_log(_:dso:log:_:_:)();
  }

  return result;
}

void sub_101056B70(uint64_t a1, NSObject *a2)
{
  v4 = sub_1000BC4D4(&unk_1016B15A0, &qword_1013A0900);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = (v20 - v6);
  sub_1000D2A70(a1, v20 - v6, &unk_1016B15A0, &qword_1013A0900);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = *v7;
    static os_log_type_t.error.getter();
    if (qword_1016950B8 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_10138BBE0;
    v10 = UUID.uuidString.getter();
    v12 = v11;
    *(v9 + 56) = &type metadata for String;
    v13 = sub_100008C00();
    *(v9 + 64) = v13;
    *(v9 + 32) = v10;
    *(v9 + 40) = v12;
    v20[1] = v8;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v14 = String.init<A>(describing:)();
    *(v9 + 96) = &type metadata for String;
    *(v9 + 104) = v13;
    *(v9 + 72) = v14;
    *(v9 + 80) = v15;
    os_log(_:dso:log:_:_:)();
  }

  else
  {
    static os_log_type_t.default.getter();
    if (qword_1016950B8 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_101385D80;
    v17 = UUID.uuidString.getter();
    v19 = v18;
    *(v16 + 56) = &type metadata for String;
    *(v16 + 64) = sub_100008C00();
    *(v16 + 32) = v17;
    *(v16 + 40) = v19;
    os_log(_:dso:log:_:_:)();

    sub_10000B3A8(v7, &unk_1016B15A0, &qword_1013A0900);
  }

  dispatch_group_leave(a2);
}

uint64_t sub_101056E3C(uint64_t a1, uint64_t a2)
{
  v34 = a1;
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v30 = v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v29 - v12;
  v32 = static os_log_type_t.default.getter();
  if (qword_1016950B8 != -1)
  {
    swift_once();
  }

  v31 = qword_10177C400;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_10138BBE0;
  v33 = a2;
  sub_1000D2A70(a2, v13, &qword_1016980D0, &unk_10138F3B0);
  v15 = *(v4 + 48);
  if (v15(v13, 1, v3) == 1)
  {
    sub_10000B3A8(v13, &qword_1016980D0, &unk_10138F3B0);
    v16 = 0;
    v17 = 0;
  }

  else
  {
    v16 = UUID.uuidString.getter();
    v17 = v18;
    (*(v4 + 8))(v13, v3);
  }

  v35 = v16;
  v36 = v17;
  sub_1000BC4D4(&qword_1016A0AC0, &unk_1013926A0);
  v19 = String.init<A>(describing:)();
  v21 = v20;
  *(v14 + 56) = &type metadata for String;
  v22 = sub_100008C00();
  *(v14 + 64) = v22;
  *(v14 + 32) = v19;
  *(v14 + 40) = v21;
  v35 = v34;
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  v23 = String.init<A>(describing:)();
  *(v14 + 96) = &type metadata for String;
  *(v14 + 104) = v22;
  *(v14 + 72) = v23;
  *(v14 + 80) = v24;
  os_log(_:dso:log:_:_:)();

  sub_1000D2A70(v33, v11, &qword_1016980D0, &unk_10138F3B0);
  if (v15(v11, 1, v3) == 1)
  {
    return sub_10000B3A8(v11, &qword_1016980D0, &unk_10138F3B0);
  }

  v26 = v30;
  (*(v4 + 32))(v30, v11, v3);
  v27 = type metadata accessor for Transaction();
  __chkstk_darwin(v27);
  v29[-4] = v29[1];
  v29[-3] = v26;
  v29[-2] = v28;
  static Transaction.named<A>(_:with:)();
  return (*(v4 + 8))(v26, v3);
}

uint64_t sub_101057240(uint64_t a1, uint64_t a2)
{
  static os_log_type_t.default.getter();
  if (qword_1016950B8 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_10138BBE0;
  v4 = UUID.uuidString.getter();
  v6 = v5;
  *(v3 + 56) = &type metadata for String;
  v7 = sub_100008C00();
  *(v3 + 64) = v7;
  *(v3 + 32) = v4;
  *(v3 + 40) = v6;
  swift_errorRetain();
  sub_1000BC4D4(&unk_101696AD0, &qword_10139A2E0);
  v8 = String.init<A>(describing:)();
  *(v3 + 96) = &type metadata for String;
  *(v3 + 104) = v7;
  *(v3 + 72) = v8;
  *(v3 + 80) = v9;
  os_log(_:dso:log:_:_:)();

  v10 = type metadata accessor for Transaction();
  __chkstk_darwin(v10);
  if (!a2)
  {
    return static Transaction.named<A>(_:with:)();
  }

  swift_errorRetain();
  static Transaction.named<A>(_:with:)();
}

void sub_1010574B4()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + 16);
  v5 = *(v0 + v3);
  v6 = *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_101055D98(v4, v0 + v2, v5, v6);
}

uint64_t sub_101057550()
{
  v1 = *(type metadata accessor for AccessoryFirmwareUpdateCommandInfo() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_101056958(v0 + v2, v3);
}

uint64_t sub_1010575DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_101057644(uint64_t a1)
{
  v3 = *(*(type metadata accessor for UUID() - 8) + 80);
  v4 = *(v1 + 16);

  return sub_101056A04(a1);
}

void sub_1010576B8(uint64_t a1)
{
  v3 = *(*(type metadata accessor for UUID() - 8) + 80);
  v4 = *(v1 + 16);

  sub_101056B70(a1, v4);
}

uint64_t sub_10105772C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_101057794(id *a1)
{
  v3 = *(type metadata accessor for OwnedBeaconRecord() - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_1009ED108(a1, v4, v5, v6);
}

uint64_t sub_101057808(void **a1)
{
  v3 = *(type metadata accessor for OwnedBeaconRecord() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + v5);
  v7 = v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8);
  v8 = *v7;
  v9 = *(v7 + 8);
  v10 = *a1;

  return sub_1009EDC88(v10, v1 + v4, v6, v8);
}

uint64_t sub_1010578B4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_101057914()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_1010553AC(v3, v0 + v2, v4);
}

uint64_t sub_1010579A4()
{
  updated = type metadata accessor for AccessoryFirmwareUpdateCommandInfo();
  v3 = *(updated - 8);
  result = updated - 8;
  v4 = v0 + ((*(v3 + 80) + 16) & ~*(v3 + 80));
  if (*v4)
  {
    v5 = *(v4 + 8);
    return (*v4)(0);
  }

  return result;
}

uint64_t sub_101057A14()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + v4);
  v6 = *(v0 + 16);
  v7 = *(v0 + 24);

  return sub_101051E64(v6, v7, v0 + v3, v5, v0 + ((v2 + v4 + 8) & ~v2));
}

void sub_101057AB4()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);
  v6 = (v0 + v3);
  v7 = *(v0 + v4);
  v8 = *v6;
  v9 = v6[1];

  sub_101054A94(v5, v0 + v2, v8, v9, v7);
}

uint64_t sub_101057B94(uint64_t a1)
{
  v2 = sub_10046C80C();

  return RequestContentRepresentable.description.getter(a1, v2);
}

uint64_t sub_101057BD0(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_1016C48B8, &qword_1013FC2E8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v16[-v8];
  v10 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_10105AA18();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v17 = *v3;
  v16[7] = 0;
  sub_1000BC4D4(&qword_101698DD8, &qword_1013C44B0);
  sub_10091C270();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v11 = v3[1];
  v12 = v3[2];
  v16[6] = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  v14 = v3[3];
  v15 = v3[4];
  v16[5] = 2;
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_101057D9C(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000BC4D4(&qword_1016C4838, &unk_1013FBED0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v13 - v9;
  v11 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_10105A530();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v3)
  {
    v13[1] = a3;
    v14 = 1;
    sub_1000BC4D4(&qword_101699EB8, &qword_101398AA0);
    sub_1002DE008();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_101057F34()
{
  v1 = 0x6449746E65696C63;
  if (*v0 != 1)
  {
    v1 = 0x41747865746E6F63;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x53776F6C6C616873;
  }
}

uint64_t sub_101057F9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_101059DAC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_101057FC4(uint64_t a1)
{
  v2 = sub_10105AA18();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_101058000(uint64_t a1)
{
  v2 = sub_10105AA18();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_101058054()
{
  if (*v0)
  {
    result = 0x76654464656E776FLL;
  }

  else
  {
    result = 0x6570795479656BLL;
  }

  *v0;
  return result;
}

uint64_t sub_10105809C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6570795479656BLL && a2 == 0xE700000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x76654464656E776FLL && a2 == 0xEE00736449656369)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_101058180(uint64_t a1)
{
  v2 = sub_10105A530();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1010581BC(uint64_t a1)
{
  v2 = sub_10105A530();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_101058214(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_1016C4810, &qword_1013FBEC8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v13 - v8;
  v10 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_10105A3B0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = v3[1];
  v15 = *v3;
  v16 = v11;
  v17 = *(v3 + 4);
  v14 = 0;
  sub_10105A404();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    *&v15 = *(v3 + 5);
    v14 = 1;
    sub_1000BC4D4(&qword_1016C47D8, &unk_1013FBBE0);
    sub_10105A458();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1010583C4(void *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v16 = a4;
  v8 = sub_1000BC4D4(&qword_1016C4908, &qword_1013FC618);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v15 - v11;
  v13 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_10105AF10();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v17 = a2;
  v18 = a3;
  v19 = 0;
  sub_100017D5C(a2, a3);
  sub_1000E3190();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  sub_100016590(v17, v18);
  if (!v4)
  {
    v17 = v16;
    v19 = 1;
    sub_1000BC4D4(&qword_1016A3E18, &qword_1013AF270);
    sub_10105AF64(&qword_1016A3E40, &qword_1016A3CB8);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_1010585C4()
{
  if (*v0)
  {
    result = 0x6863746566;
  }

  else
  {
    result = 0x6F43746E65696C63;
  }

  *v0;
  return result;
}

uint64_t sub_101058608@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6F43746E65696C63 && a2 == 0xED0000747865746ELL;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6863746566 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1010586E8(uint64_t a1)
{
  v2 = sub_10105A3B0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_101058724(uint64_t a1)
{
  v2 = sub_10105A3B0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_101058778(uint64_t a1)
{
  v2 = sub_10105A8EC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1010587B4(uint64_t a1)
{
  v2 = sub_10105A8EC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1010587F0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_101059ED0(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6 & 1;
    *(a2 + 17) = HIBYTE(v6) & 1;
  }

  return result;
}

unint64_t sub_10105882C()
{
  if (*v0)
  {
    result = 0xD000000000000014;
  }

  else
  {
    result = 0x65566769666E6F63;
  }

  *v0;
  return result;
}

uint64_t sub_101058878@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x65566769666E6F63 && a2 == 0xED00006E6F697372;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000101349FC0 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_101058964(uint64_t a1)
{
  v2 = sub_10105A308();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1010589A0(uint64_t a1)
{
  v2 = sub_10105A308();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1010589DC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_10105A12C(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
    *(a2 + 24) = v7 & 1;
    *(a2 + 25) = HIBYTE(v7) & 1;
  }

  return result;
}

uint64_t sub_101058A1C()
{
  if (*v0)
  {
    result = 0x6E6F697461636F6CLL;
  }

  else
  {
    result = 25705;
  }

  *v0;
  return result;
}

uint64_t sub_101058A54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E6F697461636F6CLL && a2 == 0xEC0000006F666E49)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_101058B2C(uint64_t a1)
{
  v2 = sub_10105AF10();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_101058B68(uint64_t a1)
{
  v2 = sub_10105AF10();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_101058BA4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_10105ACAC(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

uint64_t sub_101058BF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v54 = type metadata accessor for HashAlgorithm();
  v8 = *(v54 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v54);
  v53 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for UUID();
  v11 = *(v52 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v52);
  v51 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100907E70(_swiftEmptyArrayStorage);
  sub_1000BC4D4(&qword_1016C47E0, &qword_1013FBBF0);
  v15 = swift_allocObject();
  v16 = v15;
  *(v15 + 16) = xmmword_101385D80;
  v17 = *(a3 + 16);
  if (v17)
  {
    v38 = v15;
    v39 = v14;
    v41 = a1;
    v42 = a2;
    v43 = a4;
    v56 = _swiftEmptyArrayStorage;
    sub_1011244D8(0, v17, 0);
    v19 = *(v11 + 16);
    v18 = v11 + 16;
    v20 = v8;
    v21 = v56;
    v22 = (*(v18 + 64) + 32) & ~*(v18 + 64);
    v40 = a3;
    v23 = a3 + v22;
    v48 = *(v18 + 56);
    v49 = v19;
    v47 = enum case for HashAlgorithm.sha256(_:);
    v45 = (v20 + 8);
    v46 = (v20 + 104);
    v44 = (v18 - 8);
    v50 = v18;
    do
    {
      v24 = v51;
      v25 = v52;
      v49(v51, v23, v52);
      v26 = UUID.data.getter();
      v28 = v27;
      v29 = v53;
      v30 = v54;
      (*v46)(v53, v47, v54);
      v31 = Data.hash(algorithm:)();
      v55 = v32;
      sub_100016590(v26, v28);
      (*v45)(v29, v30);
      (*v44)(v24, v25);
      v56 = v21;
      v34 = v21[2];
      v33 = v21[3];
      if (v34 >= v33 >> 1)
      {
        sub_1011244D8((v33 > 1), v34 + 1, 1);
        v21 = v56;
      }

      v21[2] = v34 + 1;
      v35 = &v21[2 * v34];
      v36 = v55;
      v35[4] = v31;
      v35[5] = v36;
      v23 += v48;
      --v17;
    }

    while (v17);

    a2 = v42;
    a4 = v43;
    a1 = v41;
    v16 = v38;
    v14 = v39;
  }

  else
  {

    v21 = _swiftEmptyArrayStorage;
  }

  *(v16 + 32) = 1;
  *(v16 + 40) = v21;
  *a4 = v14;
  *(a4 + 8) = a1;
  *(a4 + 16) = a2;
  strcpy((a4 + 24), "searchpartyd");
  *(a4 + 37) = 0;
  *(a4 + 38) = -5120;
  *(a4 + 40) = v16;
  return result;
}

uint64_t sub_101058F64(uint64_t a1, uint64_t a2)
{
  v2[48] = a1;
  v2[49] = a2;
  v3 = type metadata accessor for HashAlgorithm();
  v2[50] = v3;
  v4 = *(v3 - 8);
  v2[51] = v4;
  v5 = *(v4 + 64) + 15;
  v2[52] = swift_task_alloc();

  return _swift_task_switch(sub_101059024, 0, 0);
}

void sub_101059024()
{
  v1 = *(v0 + 384);
  v2 = type metadata accessor for JSONEncoder();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  JSONEncoder.init()();
  v6 = v1[1];
  v5 = v1[2];
  *(v0 + 176) = *v1;
  *(v0 + 192) = v6;
  *(v0 + 208) = v5;
  sub_101059B34();
  v7 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  *(v0 + 424) = 0;
  *(v0 + 432) = v7;
  *(v0 + 440) = v8;
  v9 = v8;
  v10 = v7;

  sub_1000BC4D4(&unk_1016B2700, &unk_1013AB050);
  inited = swift_initStackObject();
  *(inited + 32) = 0xD000000000000011;
  *(inited + 16) = xmmword_101391790;
  *(inited + 40) = 0x800000010134EA40;
  v12 = [objc_opt_self() currentDevice];
  if (!v12)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v13 = v12;
  v14 = [v12 serverFriendlyDescription];

  if (!v14)
  {
LABEL_17:
    __break(1u);
    return;
  }

  v15 = *(v0 + 384);
  *(v0 + 360) = *v15;
  sub_10000B3A8(v0 + 360, &qword_101698DD8, &qword_1013C44B0);
  *(v0 + 296) = *(v15 + 8);
  sub_1002FFC04(v0 + 296);
  *(v0 + 312) = *(v15 + 24);
  sub_1002FFC04(v0 + 312);
  *(v0 + 368) = *(v15 + 40);
  sub_10000B3A8(v0 + 368, &qword_1016C47D8, &unk_1013FBBE0);
  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;

  *(inited + 48) = v16;
  *(inited + 56) = v18;
  strcpy((inited + 64), "Accept-Version");
  *(inited + 79) = -18;
  *(inited + 80) = 49;
  *(inited + 88) = 0xE100000000000000;
  strcpy((inited + 96), "Content-Type");
  *(inited + 109) = 0;
  *(inited + 110) = -5120;
  *(inited + 112) = 0xD000000000000010;
  *(inited + 120) = 0x800000010134F5C0;
  strcpy((inited + 128), "Content-Length");
  *(inited + 143) = -18;
  v19 = v9 >> 62;
  if ((v9 >> 62) <= 1)
  {
    if (!v19)
    {
      v20 = BYTE6(v9);
      goto LABEL_12;
    }

    goto LABEL_10;
  }

  v20 = 0;
  if (v19 == 2)
  {
    v22 = *(v10 + 16);
    v21 = *(v10 + 24);
    v23 = __OFSUB__(v21, v22);
    v20 = v21 - v22;
    if (v23)
    {
      __break(1u);
LABEL_10:
      LODWORD(v20) = HIDWORD(v10) - v10;
      if (!__OFSUB__(HIDWORD(v10), v10))
      {
        v20 = v20;
        goto LABEL_12;
      }

      __break(1u);
      goto LABEL_16;
    }
  }

LABEL_12:
  *(v0 + 376) = v20;
  v24._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v24);

  *(inited + 144) = 0;
  *(inited + 152) = 0xE000000000000000;
  *(v0 + 448) = sub_100907E70(inited);
  swift_setDeallocating();
  sub_1000BC4D4(&qword_101696D88, &unk_10138B760);
  swift_arrayDestroy();
  v25 = swift_task_alloc();
  *(v0 + 456) = v25;
  *v25 = v0;
  v25[1] = sub_10105947C;

  sub_100EA476C();
}

uint64_t sub_10105947C(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 456);
  v6 = *v2;
  *(v3 + 464) = a1;
  *(v3 + 472) = a2;

  return _swift_task_switch(sub_10105957C, 0, 0);
}

uint64_t sub_10105957C()
{
  v2 = v0[58];
  v1 = v0[59];
  v3 = v0[54];
  v4 = v0[55];
  v5 = v0[53];
  v6 = v0[51];
  v17 = v0[50];
  v18 = v0[52];
  v0[41] = v2;
  v0[42] = v1;
  v0[31] = &type metadata for Data;
  v0[32] = &protocol witness table for Data;
  v0[28] = v3;
  v0[29] = v4;
  v7 = sub_1000035D0(v0 + 28, &type metadata for Data);
  v9 = *v7;
  v8 = v7[1];
  sub_100017D5C(v2, v1);
  sub_100017D5C(v3, v4);
  sub_100017DB0(v9, v8);
  sub_100016590(v2, v1);
  sub_100007BAC(v0 + 28);
  v10 = v0[42];
  v0[60] = v0[41];
  v0[61] = v10;
  (*(v6 + 104))(v18, enum case for HashAlgorithm.sha256(_:), v17);
  v11 = Data.hash(algorithm:)();
  v13 = v12;
  v0[62] = v11;
  v0[63] = v12;
  (*(v6 + 8))(v18, v17);
  v14 = swift_task_alloc();
  v0[64] = v14;
  *v14 = v0;
  v14[1] = sub_101059730;
  v15 = v0[49];

  return sub_100EA87F4(v11, v13, v15);
}

uint64_t sub_101059730(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 512);
  v6 = *v2;
  *(*v2 + 520) = v1;

  if (v1)
  {
    v7 = sub_10105994C;
  }

  else
  {
    v8 = v4[62];
    v9 = v4[63];
    v4[66] = a1;
    sub_100016590(v8, v9);
    v7 = sub_101059860;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_101059860()
{
  v15 = v0;
  v1 = v0[66];
  v2 = v0[65];
  v4 = v0[60];
  v3 = v0[61];
  v5 = v0[56];
  v6 = v0[49];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = v5;
  sub_10028709C(v1, sub_100EB00A4, 0, isUniquelyReferenced_nonNull_native, &v14);

  sub_100016590(v4, v3);

  v8 = v14;
  v9 = v0[52];

  v10 = v0[1];
  v11 = v0[54];
  v12 = v0[55];

  return v10(v11, v12, v8);
}

uint64_t sub_10105994C()
{
  v1 = v0[60];
  v2 = v0[61];
  sub_100016590(v0[62], v0[63]);
  sub_100016590(v1, v2);
  if (qword_101694CE0 != -1)
  {
    swift_once();
  }

  v3 = v0[65];
  v4 = type metadata accessor for Logger();
  sub_1000076D4(v4, qword_10177BC50);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[65];
  v9 = v0[49];
  if (v7)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138543362;
    swift_errorRetain();
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v12;
    *v11 = v12;
    _os_log_impl(&_mh_execute_header, v5, v6, "Failed to generate fetch request attestation header: %{public}@.", v10, 0xCu);
    sub_10000B3A8(v11, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
    v13 = v0[49];
  }

  v14 = v0[56];
  v15 = v0[52];

  v16 = v0[1];
  v17 = v0[54];
  v18 = v0[55];

  return v16(v17, v18, v14);
}

unint64_t sub_101059B34()
{
  result = qword_1016C47D0;
  if (!qword_1016C47D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C47D0);
  }

  return result;
}

uint64_t sub_101059BA8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_101059BF0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_101059C4C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 10) = *(a2 + 10);
  *a1 = result;
  return result;
}

uint64_t sub_101059C60(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 26))
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

uint64_t sub_101059CA8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 26) = 1;
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

    *(result + 26) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_101059D00()
{
  result = qword_1016C47E8;
  if (!qword_1016C47E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C47E8);
  }

  return result;
}

unint64_t sub_101059D58()
{
  result = qword_1016C47F0;
  if (!qword_1016C47F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C47F0);
  }

  return result;
}

uint64_t sub_101059DAC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x53776F6C6C616873 && a2 == 0xEC00000073746174;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6449746E65696C63 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x41747865746E6F63 && a2 == 0xEA00000000007070)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_101059ED0(uint64_t *a1)
{
  v3 = sub_1000BC4D4(&qword_1016C4890, &qword_1013FC2D8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v10[-v6];
  v8 = a1[3];
  sub_1000035D0(a1, v8);
  sub_10105A8EC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    sub_1000BC4D4(&qword_1016C48A0, &qword_1013FC2E0);
    v10[15] = 0;
    sub_10105A940();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v8 = v11;
    v10[14] = 1;
    KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v10[12] = 2;
    sub_100B770A8();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v7, v3);
  }

  sub_100007BAC(a1);
  return v8;
}

uint64_t sub_10105A12C(uint64_t *a1)
{
  v3 = sub_1000BC4D4(&qword_1016C47F8, &qword_1013FBEC0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v10[-v6];
  v8 = a1[3];
  sub_1000035D0(a1, v8);
  sub_10105A308();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v10[8] = 0;
    v8 = KeyedDecodingContainer.decode(_:forKey:)();
    v10[7] = 1;
    sub_10105A35C();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v7, v3);
  }

  sub_100007BAC(a1);
  return v8;
}

unint64_t sub_10105A308()
{
  result = qword_1016C4800;
  if (!qword_1016C4800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C4800);
  }

  return result;
}

unint64_t sub_10105A35C()
{
  result = qword_1016C4808;
  if (!qword_1016C4808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C4808);
  }

  return result;
}

unint64_t sub_10105A3B0()
{
  result = qword_1016C4818;
  if (!qword_1016C4818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C4818);
  }

  return result;
}

unint64_t sub_10105A404()
{
  result = qword_1016C4820;
  if (!qword_1016C4820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C4820);
  }

  return result;
}

unint64_t sub_10105A458()
{
  result = qword_1016C4828;
  if (!qword_1016C4828)
  {
    sub_1000BC580(&qword_1016C47D8, &unk_1013FBBE0);
    sub_10105A4DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C4828);
  }

  return result;
}

unint64_t sub_10105A4DC()
{
  result = qword_1016C4830;
  if (!qword_1016C4830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C4830);
  }

  return result;
}

unint64_t sub_10105A530()
{
  result = qword_1016C4840;
  if (!qword_1016C4840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C4840);
  }

  return result;
}

unint64_t sub_10105A5D8()
{
  result = qword_1016C4848;
  if (!qword_1016C4848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C4848);
  }

  return result;
}

unint64_t sub_10105A630()
{
  result = qword_1016C4850;
  if (!qword_1016C4850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C4850);
  }

  return result;
}

unint64_t sub_10105A688()
{
  result = qword_1016C4858;
  if (!qword_1016C4858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C4858);
  }

  return result;
}

unint64_t sub_10105A6E0()
{
  result = qword_1016C4860;
  if (!qword_1016C4860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C4860);
  }

  return result;
}

unint64_t sub_10105A738()
{
  result = qword_1016C4868;
  if (!qword_1016C4868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C4868);
  }

  return result;
}

unint64_t sub_10105A790()
{
  result = qword_1016C4870;
  if (!qword_1016C4870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C4870);
  }

  return result;
}

unint64_t sub_10105A7E8()
{
  result = qword_1016C4878;
  if (!qword_1016C4878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C4878);
  }

  return result;
}

unint64_t sub_10105A840()
{
  result = qword_1016C4880;
  if (!qword_1016C4880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C4880);
  }

  return result;
}

unint64_t sub_10105A898()
{
  result = qword_1016C4888;
  if (!qword_1016C4888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C4888);
  }

  return result;
}

unint64_t sub_10105A8EC()
{
  result = qword_1016C4898;
  if (!qword_1016C4898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C4898);
  }

  return result;
}

unint64_t sub_10105A940()
{
  result = qword_1016C48A8;
  if (!qword_1016C48A8)
  {
    sub_1000BC580(&qword_1016C48A0, &qword_1013FC2E0);
    sub_10105A9C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C48A8);
  }

  return result;
}

unint64_t sub_10105A9C4()
{
  result = qword_1016C48B0;
  if (!qword_1016C48B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C48B0);
  }

  return result;
}

unint64_t sub_10105AA18()
{
  result = qword_1016C48C0;
  if (!qword_1016C48C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C48C0);
  }

  return result;
}

unint64_t sub_10105AAA0()
{
  result = qword_1016C48C8;
  if (!qword_1016C48C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C48C8);
  }

  return result;
}

unint64_t sub_10105AAF8()
{
  result = qword_1016C48D0;
  if (!qword_1016C48D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C48D0);
  }

  return result;
}

unint64_t sub_10105AB50()
{
  result = qword_1016C48D8;
  if (!qword_1016C48D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C48D8);
  }

  return result;
}

unint64_t sub_10105ABA8()
{
  result = qword_1016C48E0;
  if (!qword_1016C48E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C48E0);
  }

  return result;
}

unint64_t sub_10105AC00()
{
  result = qword_1016C48E8;
  if (!qword_1016C48E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C48E8);
  }

  return result;
}

unint64_t sub_10105AC58()
{
  result = qword_1016C48F0;
  if (!qword_1016C48F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C48F0);
  }

  return result;
}

uint64_t sub_10105ACAC(uint64_t *a1)
{
  v3 = sub_1000BC4D4(&qword_1016C48F8, &unk_1013FC608);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v11 - v6;
  v8 = a1[3];
  sub_1000035D0(a1, v8);
  sub_10105AF10();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_100007BAC(a1);
  }

  else
  {
    v12 = 0;
    sub_1000E307C();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v8 = v13;
    v10 = v14;
    sub_1000BC4D4(&qword_1016A3E18, &qword_1013AF270);
    v12 = 1;
    sub_10105AF64(&qword_1016A3E20, &qword_1016A3CB0);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v7, v3);
    sub_100017D5C(v8, v10);

    sub_100007BAC(a1);
    sub_100016590(v8, v10);
  }

  return v8;
}

unint64_t sub_10105AF10()
{
  result = qword_1016C4900;
  if (!qword_1016C4900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C4900);
  }

  return result;
}

uint64_t sub_10105AF64(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1000BC580(&qword_1016A3E18, &qword_1013AF270);
    sub_10105AFEC(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10105AFEC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for DeviceEventEncodedInfo(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10105B044()
{
  result = qword_1016C4910;
  if (!qword_1016C4910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C4910);
  }

  return result;
}

unint64_t sub_10105B09C()
{
  result = qword_1016C4918;
  if (!qword_1016C4918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C4918);
  }

  return result;
}

unint64_t sub_10105B0F4()
{
  result = qword_1016C4920;
  if (!qword_1016C4920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C4920);
  }

  return result;
}

uint64_t sub_10105B150(uint64_t a1, char a2, uint64_t a3)
{
  *(v4 + 88) = a3;
  *(v4 + 96) = v3;
  *(v4 + 216) = a2;
  *(v4 + 80) = a1;
  v5 = type metadata accessor for UUID();
  *(v4 + 104) = v5;
  v6 = *(v5 - 8);
  *(v4 + 112) = v6;
  v7 = *(v6 + 64) + 15;
  *(v4 + 120) = swift_task_alloc();
  *(v4 + 128) = swift_task_alloc();

  return _swift_task_switch(sub_10105B224, v3, 0);
}

uint64_t sub_10105B224()
{
  v32 = v0;
  if (qword_1016954C0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 128);
  v2 = *(v0 + 104);
  v3 = *(v0 + 112);
  v5 = *(v0 + 80);
  v4 = *(v0 + 88);
  v6 = type metadata accessor for Logger();
  *(v0 + 136) = sub_1000076D4(v6, qword_10177CDD0);
  v7 = *(v3 + 16);
  v7(v1, v5, v2);
  swift_bridgeObjectRetain_n();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 128);
  v13 = *(v0 + 104);
  v12 = *(v0 + 112);
  v14 = *(v0 + 88);
  if (v10)
  {
    v15 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v31 = v30;
    *v15 = 141558531;
    *(v15 + 4) = 1752392040;
    *(v15 + 12) = 2081;
    sub_10105F5BC(&qword_101696930, &type metadata accessor for UUID);
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    log = v8;
    v17 = v7;
    v19 = v18;
    (*(v12 + 8))(v11, v13);
    v20 = sub_1000136BC(v16, v19, &v31);
    v7 = v17;

    *(v15 + 14) = v20;
    *(v15 + 22) = 2048;
    v21 = *(v14 + 16);

    *(v15 + 24) = v21;

    _os_log_impl(&_mh_execute_header, log, v9, "Updating keys for share id: %{private,mask.hash}s, keyPackages count: %ld.", v15, 0x20u);
    sub_100007BAC(v30);
  }

  else
  {
    v22 = *(v0 + 88);
    swift_bridgeObjectRelease_n();

    (*(v12 + 8))(v11, v13);
  }

  v23 = *(v0 + 88);
  v7(*(v0 + 120), *(v0 + 80), *(v0 + 104));

  v24 = swift_task_alloc();
  *(v0 + 144) = v24;
  *v24 = v0;
  v24[1] = sub_10105B548;
  v25 = *(v0 + 120);
  v26 = *(v0 + 88);
  v27 = *(v0 + 216);

  return sub_10105ED60(v25, v27, v26);
}

uint64_t sub_10105B548(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v4;
  v8 = *(*v4 + 144);
  v9 = *v4;
  v7[19] = a1;
  v7[20] = a2;
  v7[21] = a3;
  v7[22] = v3;

  if (v3)
  {
    v10 = v7[12];

    return _swift_task_switch(sub_10105BA10, v10, 0);
  }

  else
  {
    v11 = swift_task_alloc();
    v7[23] = v11;
    *v11 = v9;
    v11[1] = sub_10105B6E0;

    return sub_101036954(a2, a3);
  }
}

uint64_t sub_10105B6E0(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  v4[7] = v2;
  v4[8] = a1;
  v4[9] = a2;
  v5 = v3[23];
  v6 = v3[12];
  v8 = *v2;
  v4[24] = a2;

  return _swift_task_switch(sub_10105B7FC, v6, 0);
}

uint64_t sub_10105B7FC()
{
  v19 = v0;
  v1 = v0[17];
  if (v0[24])
  {
    v2 = v0[24];
  }

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[24];
  if (v5)
  {
    v7 = v0[8];
    if (v6)
    {
      v8 = v0[8];
    }

    else
    {
      v6 = 0xE300000000000000;
      v8 = 7104878;
    }

    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v18 = v10;
    *v9 = 136315138;
    v11 = sub_1000136BC(v8, v6, &v18);

    *(v9 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v3, v4, "KeyDropUpdateRequest: %s", v9, 0xCu);
    sub_100007BAC(v10);
  }

  else
  {
  }

  v12 = v0[20];
  v13 = v0[21];
  v14 = v0[19];
  v0[5] = &type metadata for KeyDropUpdateRequest;
  v0[6] = sub_10105F568();
  v0[2] = v14;
  v0[3] = v12;
  v0[4] = v13;

  sub_100017D5C(v12, v13);
  v15 = swift_task_alloc();
  v0[25] = v15;
  *v15 = v0;
  v15[1] = sub_10105BA7C;
  v16 = v0[12];

  return sub_10103AEA4((v0 + 2), 2);
}

uint64_t sub_10105BA10()
{
  v1 = v0[22];
  v3 = v0[15];
  v2 = v0[16];

  v4 = v0[1];

  return v4();
}

uint64_t sub_10105BA7C(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 200);
  v6 = *v2;
  *(*v2 + 208) = v1;

  if (v1)
  {
    v7 = *(v4 + 96);
    v8 = sub_10105BC50;
  }

  else
  {
    v9 = *(v4 + 96);
    *(v4 + 217) = a1;
    sub_100007BAC((v4 + 16));
    v8 = sub_10105BBBC;
    v7 = v9;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_10105BBBC()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 168);
  v3 = *(v0 + 152);
  v5 = *(v0 + 120);
  v4 = *(v0 + 128);

  sub_100016590(v1, v2);

  v6 = *(v0 + 8);
  v7 = *(v0 + 217);

  return v6(v7);
}

uint64_t sub_10105BC50()
{
  v1 = v0[20];
  v2 = v0[21];
  v3 = v0[19];

  sub_100016590(v1, v2);
  sub_100007BAC(v0 + 2);
  v4 = v0[26];
  v6 = v0[15];
  v5 = v0[16];

  v7 = v0[1];

  return v7();
}

uint64_t sub_10105BCDC(void *a1, char a2)
{
  v5 = sub_1000BC4D4(&qword_1016C4CF8, &qword_1013FCC20);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v12[-v8];
  v10 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_10106024C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v12[15] = a2;
  v12[14] = 0;
  sub_1010602A0();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v12[13] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_10105BE74(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_1016C4CA8, &qword_1013FCBF0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v14 - v8;
  v10 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_101060078();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v20 = 0;
  type metadata accessor for UUID();
  sub_10105F5BC(&qword_101698330, &type metadata accessor for UUID);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v11 = type metadata accessor for KeyDropShareMetaDataRequest.KeyDropMetaDataContent(0);
    v19 = *(v3 + v11[5]);
    v18 = 1;
    sub_1001E8200();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v14[0] = v11[6];
    v17 = 2;
    type metadata accessor for Date();
    sub_10105F5BC(&unk_101697F60, &type metadata accessor for Date);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v12 = v11[7];
    v16 = 3;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v14[1] = *(v3 + v11[8]);
    v15 = 4;
    sub_1000BC4D4(&qword_1016C4CB8, &qword_1013FCBF8);
    sub_1010600CC();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_10105C15C()
{
  if (*v0)
  {
    result = 0x617461646174656DLL;
  }

  else
  {
    result = 1701869940;
  }

  *v0;
  return result;
}

uint64_t sub_10105C190@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x617461646174656DLL && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_10105C26C(uint64_t a1)
{
  v2 = sub_10106024C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10105C2A8(uint64_t a1)
{
  v2 = sub_10106024C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10105C314()
{
  v1 = *v0;
  v2 = 0x64496572616873;
  v3 = 0x6D617473656D6974;
  v4 = 0x64497265626D656DLL;
  if (v1 != 3)
  {
    v4 = 0x736567616B636170;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 1701869940;
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

uint64_t sub_10105C3AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_101060DB4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10105C3D4(uint64_t a1)
{
  v2 = sub_101060078();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10105C410(uint64_t a1)
{
  v2 = sub_101060078();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10105C464(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_1016C4CE0, &unk_1013FCC08);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v13[-v8];
  v10 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_1010601F8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v17 = 0;
  type metadata accessor for UUID();
  sub_10105F5BC(&qword_101698330, &type metadata accessor for UUID);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    updated = type metadata accessor for KeyDropUpdateRequest.UpdateRequestContent(0);
    v16 = *(v3 + *(updated + 20));
    v15 = 1;
    sub_1001E8200();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v14 = *(v3 + *(updated + 24));
    v13[15] = 2;
    sub_1000BC4D4(&qword_10169CDB0, &qword_10139A080);
    sub_1002E9F80();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_10105C690()
{
  v1 = 1701869940;
  if (*v0 != 1)
  {
    v1 = 0x616B63615079656BLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x64496572616873;
  }
}

uint64_t sub_10105C6EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_101060F6C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10105C714(uint64_t a1)
{
  v2 = sub_1010601F8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10105C750(uint64_t a1)
{
  v2 = sub_1010601F8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10105C7A4(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_1016C4D58, &qword_1013FCC38);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v18[-v8];
  v10 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_101060444();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v18[15] = *v3;
  v18[14] = 0;
  sub_1010602A0();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v11 = type metadata accessor for KeyDropShareMetaDataResponse.ShareMetaData(0);
    v12 = v11[5];
    v18[13] = 1;
    type metadata accessor for KeyDropInterface.KeyAlignment(0);
    sub_10105F5BC(&qword_1016C4D60, type metadata accessor for KeyDropInterface.KeyAlignment);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v13 = &v3[v11[6]];
    v14 = *v13;
    v15 = v13[8];
    v18[12] = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v16 = *&v3[v11[7]];
    v18[11] = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_10105C9D8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v4 = type metadata accessor for KeyDropInterface.KeyAlignment(0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000BC4D4(&qword_1016C4D38, &qword_1013FCC30);
  v30 = *(v8 - 8);
  v31 = v8;
  v9 = *(v30 + 64);
  __chkstk_darwin(v8);
  v11 = &v27 - v10;
  v12 = type metadata accessor for KeyDropShareMetaDataResponse.ShareMetaData(0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[3];
  v16 = a1[4];
  v32 = a1;
  sub_1000035D0(a1, v17);
  sub_101060444();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100007BAC(v32);
  }

  v28 = v12;
  v18 = v15;
  v19 = v30;
  v36 = 0;
  sub_101060498();
  v20 = v31;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *v18 = v37;
  v35 = 1;
  sub_10105F5BC(&qword_1016C4D50, type metadata accessor for KeyDropInterface.KeyAlignment);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v21 = v28;
  sub_1010604EC(v7, &v18[*(v28 + 20)]);
  v34 = 2;
  v22 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v23 = &v18[*(v21 + 24)];
  *v23 = v22;
  v23[8] = v24 & 1;
  v33 = 3;
  v26 = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v19 + 8))(v11, v20);
  *&v18[*(v21 + 28)] = v26;
  sub_101060550(v18, v29, type metadata accessor for KeyDropShareMetaDataResponse.ShareMetaData);
  sub_100007BAC(v32);
  return sub_10105ED00(v18, type metadata accessor for KeyDropShareMetaDataResponse.ShareMetaData);
}

uint64_t sub_10105CD7C(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_1016C4D78, &qword_1013FCC48);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v16[-v8];
  v10 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_1010605B8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v17) = 0;
  type metadata accessor for UUID();
  sub_10105F5BC(&qword_101698330, &type metadata accessor for UUID);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v11 = type metadata accessor for KeyDropShareMetaDataResponse.Member(0);
    v12 = *(v3 + *(v11 + 20));
    LOBYTE(v17) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v13 = (v3 + *(v11 + 24));
    v14 = v13[1];
    v17 = *v13;
    v18 = v14;
    v16[15] = 2;
    sub_10002E98C(v17, v14);
    sub_1000E3190();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_100006654(v17, v18);
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_10105CF8C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v4 = type metadata accessor for UUID();
  v22 = *(v4 - 8);
  v5 = *(v22 + 64);
  __chkstk_darwin(v4);
  v25 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000BC4D4(&qword_1016C4D68, &qword_1013FCC40);
  v23 = *(v7 - 8);
  v24 = v7;
  v8 = *(v23 + 64);
  __chkstk_darwin(v7);
  v10 = &v20 - v9;
  v11 = type metadata accessor for KeyDropShareMetaDataResponse.Member(0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_1010605B8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100007BAC(a1);
  }

  v16 = v14;
  v17 = v22;
  LOBYTE(v26) = 0;
  sub_10105F5BC(&qword_101698300, &type metadata accessor for UUID);
  v18 = v24;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v17 + 32))(v16, v25, v4);
  LOBYTE(v26) = 1;
  *(v16 + *(v11 + 20)) = KeyedDecodingContainer.decode(_:forKey:)() & 1;
  v27 = 2;
  sub_1000E307C();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v23 + 8))(v10, v18);
  *(v16 + *(v11 + 24)) = v26;
  sub_101060550(v16, v21, type metadata accessor for KeyDropShareMetaDataResponse.Member);
  sub_100007BAC(a1);
  return sub_10105ED00(v16, type metadata accessor for KeyDropShareMetaDataResponse.Member);
}

uint64_t sub_10105D338(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_1016C4D10, &qword_1013FCC28);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v14 - v8;
  v10 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_10105FF70();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v15) = 0;
  type metadata accessor for UUID();
  sub_10105F5BC(&qword_101698330, &type metadata accessor for UUID);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v11 = type metadata accessor for KeyDropShareMetaDataResponse(0);
    v12 = v11[5];
    LOBYTE(v15) = 1;
    type metadata accessor for Date();
    sub_10105F5BC(&unk_101697F60, &type metadata accessor for Date);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v15 = *(v3 + v11[6]);
    HIBYTE(v14) = 2;
    sub_1000BC4D4(&qword_1016C4C78, &qword_1013FCBE0);
    sub_1010602F4(&qword_1016C4D18, &qword_1016C4D20);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v15 = *(v3 + v11[7]);
    HIBYTE(v14) = 3;
    sub_1000BC4D4(&qword_1016C4C90, &qword_1013FCBE8);
    sub_101060390();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_10105D624@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v3 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v24 - v5;
  v7 = type metadata accessor for UUID();
  v26 = *(v7 - 8);
  v8 = *(v26 + 64);
  __chkstk_darwin(v7);
  v27 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_1000BC4D4(&qword_1016C4C68, &qword_1013FCBD8);
  v25 = *(v29 - 8);
  v10 = *(v25 + 64);
  __chkstk_darwin(v29);
  v12 = &v24 - v11;
  v13 = type metadata accessor for KeyDropShareMetaDataResponse(0);
  v14 = *(*(v13 - 1) + 64);
  __chkstk_darwin(v13);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_10105FF70();
  v28 = v12;
  v18 = v30;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v18)
  {
    return sub_100007BAC(a1);
  }

  v19 = v16;
  v21 = v25;
  v20 = v26;
  LOBYTE(v32) = 0;
  sub_10105F5BC(&qword_101698300, &type metadata accessor for UUID);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v22 = *(v20 + 32);
  v30 = v7;
  v22(v19, v27, v7);
  type metadata accessor for Date();
  LOBYTE(v32) = 1;
  sub_10105F5BC(&qword_101697F40, &type metadata accessor for Date);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  sub_1001578A0(v6, v19 + v13[5]);
  sub_1000BC4D4(&qword_1016C4C78, &qword_1013FCBE0);
  v31 = 2;
  sub_1010602F4(&qword_1016C4C80, &qword_1016C4C88);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *(v19 + v13[6]) = v32;
  sub_1000BC4D4(&qword_1016C4C90, &qword_1013FCBE8);
  v31 = 3;
  sub_10105FFC4();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v21 + 8))(v28, v29);
  *(v19 + v13[7]) = v32;
  sub_101060550(v19, v24, type metadata accessor for KeyDropShareMetaDataResponse);
  sub_100007BAC(a1);
  return sub_10105ED00(v19, type metadata accessor for KeyDropShareMetaDataResponse);
}

uint64_t sub_10105DB70()
{
  v1 = 1701869940;
  v2 = 0x61745365676E6172;
  if (*v0 != 2)
  {
    v2 = 0x646E4565676E6172;
  }

  if (*v0)
  {
    v1 = 0x6E656D6E67696C61;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_10105DBEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_101061088(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10105DC14(uint64_t a1)
{
  v2 = sub_101060444();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10105DC50(uint64_t a1)
{
  v2 = sub_101060444();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10105DCC0()
{
  v1 = 0x72656E776FLL;
  if (*v0 != 1)
  {
    v1 = 0x6574707972636E65;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x64497265626D656DLL;
  }
}

uint64_t sub_10105DD24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1010611FC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10105DD4C(uint64_t a1)
{
  v2 = sub_1010605B8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10105DD88(uint64_t a1)
{
  v2 = sub_1010605B8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10105DDF8()
{
  v1 = 0x64496572616873;
  v2 = 0x616B63615079656BLL;
  if (*v0 != 2)
  {
    v2 = 0x737265626D656DLL;
  }

  if (*v0)
  {
    v1 = 0x6974617269707865;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_10105DE80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_101061318(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10105DEA8(uint64_t a1)
{
  v2 = sub_10105FF70();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10105DEE4(uint64_t a1)
{
  v2 = sub_10105FF70();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10105DF50(uint64_t a1)
{
  v2 = sub_1010601A4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10105DF8C(uint64_t a1)
{
  v2 = sub_1010601A4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10105DFC8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = sub_1000BC4D4(&qword_1016C4CD0, &qword_1013FCC00);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v13 - v8;
  v10 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_1010601A4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100007BAC(a1);
  }

  v11 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  (*(v6 + 8))(v9, v5);
  result = sub_100007BAC(a1);
  *a2 = v11;
  return result;
}

uint64_t sub_10105E128(void *a1)
{
  v3 = sub_1000BC4D4(&qword_1016C4CF0, &qword_1013FCC18);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v11 - v6;
  v8 = a1[4];
  v9 = *v1;
  sub_1000035D0(a1, a1[3]);
  sub_1010601A4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  return (*(v4 + 8))(v7, v3);
}

BOOL sub_10105E260(char *a1, char *a2)
{
  v4 = *a2;
  v5 = sub_10125403C(*a1);
  v7 = v6;
  if (v5 == sub_10125403C(v4) && v7 == v8)
  {
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v10 & 1) == 0)
    {
      return 0;
    }
  }

  v11 = type metadata accessor for KeyDropShareMetaDataResponse.ShareMetaData(0);
  v12 = v11[5];
  v13 = &a1[v12];
  v14 = &a2[v12];
  if ((static Date.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v15 = type metadata accessor for KeyDropInterface.KeyAlignment(0);
  if (*&v13[*(v15 + 20)] != *&v14[*(v15 + 20)])
  {
    return 0;
  }

  v16 = *(v15 + 24);
  if ((static Date.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v17 = v11[6];
  v18 = &a1[v17];
  v19 = a1[v17 + 8];
  v20 = &a2[v17];
  v21 = a2[v17 + 8];
  if (v19)
  {
    if (!v21)
    {
      return 0;
    }
  }

  else
  {
    if (*v18 != *v20)
    {
      LOBYTE(v21) = 1;
    }

    if (v21)
    {
      return 0;
    }
  }

  return *&a1[v11[7]] == *&a2[v11[7]];
}

BOOL sub_10105E3A8(uint64_t a1, uint64_t a2)
{
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for KeyDropShareMetaDataResponse.Member(0);
  if (*(a1 + *(v4 + 20)) != *(a2 + *(v4 + 20)))
  {
    return 0;
  }

  v5 = *(v4 + 24);
  v7 = *(a1 + v5);
  v6 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v10 = *v8;
  v9 = v8[1];
  if (v6 >> 60 == 15)
  {
    if (v9 >> 60 == 15)
    {
      sub_10002E98C(v7, v6);
      sub_10002E98C(v10, v9);
      sub_100006654(v7, v6);
      return 1;
    }

    goto LABEL_7;
  }

  if (v9 >> 60 == 15)
  {
LABEL_7:
    sub_10002E98C(v7, v6);
    sub_10002E98C(v10, v9);
    sub_100006654(v7, v6);
    sub_100006654(v10, v9);
    return 0;
  }

  sub_10002E98C(v7, v6);
  sub_10002E98C(v10, v9);
  v12 = _s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(v7, v6, v10, v9);
  sub_100006654(v10, v9);
  sub_100006654(v7, v6);
  return (v12 & 1) != 0;
}

void *sub_10105E4EC(void *a1, void *a2, int a3, uint64_t a4, uint64_t a5)
{
  v71 = a5;
  LODWORD(object) = a3;
  v8 = type metadata accessor for P256.Signing.PrivateKey();
  v62 = *(v8 - 8);
  v63 = v8;
  v9 = *(v62 + 64);
  __chkstk_darwin(v8);
  v68 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for P256.Signing.ECDSASignature();
  v60 = *(v11 - 8);
  v61 = v11;
  v12 = *(v60 + 64);
  __chkstk_darwin(v11);
  v64 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for KeyDropShareMetaDataRequest.KeyDropMetaDataContent(0);
  v15 = *(*(v14 - 1) + 64);
  __chkstk_darwin(v14);
  v17 = &v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for JSONEncoder.DateEncodingStrategy();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v22 = (&v60 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = type metadata accessor for JSONEncoder();
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  swift_allocObject();
  v26 = JSONEncoder.init()();
  *v22 = sub_100281AE0;
  v22[1] = 0;
  (*(v19 + 104))(v22, enum case for JSONEncoder.DateEncodingStrategy.custom(_:), v18);
  v74 = v26;
  dispatch thunk of JSONEncoder.dateEncodingStrategy.setter();
  v27 = *(a4 + 16);
  if (v27)
  {
    v66 = v17;
    v67 = a2;
    v65 = a1;
    v72 = _swiftEmptyArrayStorage;
    sub_1011244B8(0, v27, 0);
    v28 = v72;
    v29 = v72[2];
    v30 = 2 * v29;
    v31 = 32;
    do
    {
      v32 = *(a4 + v31);
      v72 = v28;
      v33 = v28[3];
      v34 = v29 + 1;
      if (v29 >= v33 >> 1)
      {
        sub_1011244B8((v33 > 1), v29 + 1, 1);
        v28 = v72;
      }

      v28[2] = v34;
      v35 = v28 + v30;
      v35[32] = v32;
      v35[33] = 1;
      v30 += 2;
      ++v31;
      v29 = v34;
      --v27;
    }

    while (v27);

    a1 = v65;
    v17 = v66;
    a2 = v67;
  }

  else
  {

    v28 = _swiftEmptyArrayStorage;
  }

  v36 = type metadata accessor for UUID();
  v37 = *(v36 - 8);
  v38 = *(v37 + 16);
  v38(v17, a1, v36);
  static Date.trustedNow.getter(&v17[v14[6]]);
  v38(&v17[v14[7]], a2, v36);
  v17[v14[5]] = object;
  *&v17[v14[8]] = v28;
  sub_10105F5BC(&qword_1016C4928, type metadata accessor for KeyDropShareMetaDataRequest.KeyDropMetaDataContent);
  v39 = v70;
  v40 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  if (v39)
  {

    sub_10105ED00(v71, type metadata accessor for KeyDropJoinToken);
    v46 = *(v37 + 8);
    v46(a2, v36);
    v46(a1, v36);
    sub_10105ED00(v17, type metadata accessor for KeyDropShareMetaDataRequest.KeyDropMetaDataContent);
  }

  else
  {
    v42 = v41;
    v70 = v40;
    v43 = v71 + *(type metadata accessor for KeyDropJoinToken(0) + 20);
    v44 = *(v43 + 8);
    v72 = *v43;
    v73 = v44;
    sub_100017D5C(v72, v44);
    v45 = v68;
    P256.Signing.PrivateKey.init<A>(rawRepresentation:)();
    v72 = v70;
    v73 = v42;
    sub_1000E0A3C();
    P256.Signing.PrivateKey.signature<A>(for:)();
    v66 = v17;
    v67 = a2;
    v48 = (*(v62 + 8))(v45, v63);
    a2 = sub_100646BE0(v48);
    if (qword_101694F58 != -1)
    {
      swift_once();
    }

    object = qword_10177C218;
    v49 = [objc_opt_self() sharedInstance];
    v50 = [v49 isInternalBuild];

    if (v50 && (v51 = String._bridgeToObjectiveC()(), v52 = [object BOOLForKey:v51], v51, (v52 & 1) != 0))
    {

      v53 = v64;
    }

    else
    {
      v65 = a1;
      v68 = "DisableShareAuthorization";
      v53 = v64;
      v54 = P256.Signing.ECDSASignature.derRepresentation.getter();
      v56 = v55;
      v57 = Data.base64EncodedString(options:)(0);
      object = v57._object;
      sub_100016590(v54, v56);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v72 = a2;
      a1 = v65;
      sub_100FFACA0(v57._countAndFlagsBits, object, 0xD000000000000012, v68 | 0x8000000000000000, isUniquelyReferenced_nonNull_native);

      a2 = v72;
    }

    sub_10105ED00(v71, type metadata accessor for KeyDropJoinToken);
    v59 = *(v37 + 8);
    v59(v67, v36);
    v59(a1, v36);
    (*(v60 + 8))(v53, v61);
    sub_10105ED00(v66, type metadata accessor for KeyDropShareMetaDataRequest.KeyDropMetaDataContent);
  }

  return a2;
}

uint64_t sub_10105ED00(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10105ED60(uint64_t a1, char a2, uint64_t a3)
{
  *(v3 + 160) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = a3;
  updated = type metadata accessor for KeyDropUpdateRequest.UpdateRequestContent(0);
  *(v3 + 32) = updated;
  v5 = *(*(updated - 8) + 64) + 15;
  *(v3 + 40) = swift_task_alloc();
  v6 = type metadata accessor for JSONEncoder.DateEncodingStrategy();
  *(v3 + 48) = v6;
  v7 = *(v6 - 8);
  *(v3 + 56) = v7;
  v8 = *(v7 + 64) + 15;
  *(v3 + 64) = swift_task_alloc();
  v9 = swift_task_alloc();
  *(v3 + 72) = v9;
  *v9 = v3;
  v9[1] = sub_10105EE94;

  return sub_1010351F0();
}

uint64_t sub_10105EE94(uint64_t a1)
{
  v2 = *(*v1 + 72);
  v4 = *v1;
  *(*v1 + 80) = a1;

  return _swift_task_switch(sub_10105EF94, 0, 0);
}

uint64_t sub_10105EF94()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v6 = *(v0 + 24);
  v5 = *(v0 + 32);
  v7 = *(v0 + 160);
  v8 = *(v0 + 16);
  v9 = type metadata accessor for JSONEncoder();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  *(v0 + 88) = JSONEncoder.init()();
  *v1 = sub_100281AE0;
  v1[1] = 0;
  (*(v2 + 104))(v1, enum case for JSONEncoder.DateEncodingStrategy.custom(_:), v4);
  dispatch thunk of JSONEncoder.dateEncodingStrategy.setter();
  v12 = type metadata accessor for UUID();
  *(v0 + 96) = v12;
  v13 = *(v12 - 8);
  *(v0 + 104) = v13;
  (*(v13 + 16))(v3, v8, v12);
  *(v3 + *(v5 + 20)) = v7;
  *(v3 + *(v5 + 24)) = v6;
  sub_10105F5BC(&qword_1016C4938, type metadata accessor for KeyDropUpdateRequest.UpdateRequestContent);
  v14 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  *(v0 + 112) = v14;
  *(v0 + 120) = v15;
  v16 = v14;
  v17 = v15;
  v18 = swift_task_alloc();
  *(v0 + 128) = v18;
  *v18 = v0;
  v18[1] = sub_10105F23C;

  return sub_1010358B4(v16, v17);
}

uint64_t sub_10105F23C(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 128);
  v8 = *v3;
  *(*v3 + 136) = v2;

  if (v2)
  {
    v9 = sub_10105F488;
  }

  else
  {
    *(v6 + 144) = a2;
    *(v6 + 152) = a1;
    v9 = sub_10105F370;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_10105F370()
{
  v1 = v0[18];
  v2 = v0[19];
  v3 = v0[12];
  v4 = v0[13];
  v6 = v0[10];
  v5 = v0[11];
  v7 = v0[8];
  v8 = v0[5];
  v9 = v0[2];
  sub_100016590(v0[14], v0[15]);

  (*(v4 + 8))(v9, v3);
  sub_10105ED00(v8, type metadata accessor for KeyDropUpdateRequest.UpdateRequestContent);

  sub_100017D5C(v2, v1);

  sub_100016590(v2, v1);

  v10 = v0[1];
  v12 = v0[18];
  v11 = v0[19];
  v13 = v0[10];

  return v10(v13, v11, v12);
}

uint64_t sub_10105F488()
{
  sub_100016590(v0[14], v0[15]);
  v1 = v0[17];
  v2 = v0[12];
  v3 = v0[13];
  v5 = v0[10];
  v4 = v0[11];
  v6 = v0[8];
  v7 = v0[5];
  v8 = v0[2];

  (*(v3 + 8))(v8, v2);
  sub_10105ED00(v7, type metadata accessor for KeyDropUpdateRequest.UpdateRequestContent);

  v9 = v0[1];

  return v9();
}

unint64_t sub_10105F568()
{
  result = qword_1016C4930;
  if (!qword_1016C4930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C4930);
  }

  return result;
}

uint64_t sub_10105F5BC(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_10105F64C()
{
  type metadata accessor for UUID();
  if (v0 <= 0x3F)
  {
    sub_10105FBC8(319, &unk_1016C3C40, type metadata accessor for KeyDropInterface.KeyPackage, &type metadata accessor for Array);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t getEnumTagSinglePayload for KeyDropUpdateResponse(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  if (v6 >= 2)
  {
    v7 = ((v6 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v7 = -2;
  }

  if (v7 < 0)
  {
    v7 = -1;
  }

  return (v7 + 1);
}

uint64_t getEnumTagSinglePayload for KeyDropShareMetaDataRequest.MetaDataPackageRequest(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

LABEL_17:
  v6 = *(a1 + 1);
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for KeyDropShareMetaDataRequest.MetaDataPackageRequest(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 2) = v5;
      }

      else
      {
        *(result + 2) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 2) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 2) = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *(result + 1) = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_10105F960()
{
  type metadata accessor for UUID();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Date();
    if (v1 <= 0x3F)
    {
      sub_10105FE28(319, &unk_1016C4A40, &type metadata for KeyDropShareMetaDataRequest.MetaDataPackageRequest, &type metadata accessor for Array);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10105FA84()
{
  type metadata accessor for UUID();
  if (v0 <= 0x3F)
  {
    sub_10105FBC8(319, &qword_1016BA040, &type metadata accessor for Date, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_10105FBC8(319, &qword_1016C4AE8, type metadata accessor for KeyDropShareMetaDataResponse.ShareMetaData, &type metadata accessor for Array);
      if (v2 <= 0x3F)
      {
        sub_10105FBC8(319, &unk_1016C4AF0, type metadata accessor for KeyDropShareMetaDataResponse.Member, &type metadata accessor for Array);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_10105FBC8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_10105FC94()
{
  type metadata accessor for KeyDropInterface.KeyAlignment(319);
  if (v0 <= 0x3F)
  {
    sub_10105FE28(319, &qword_10169C540, &type metadata for Int64, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10105FD78()
{
  type metadata accessor for UUID();
  if (v0 <= 0x3F)
  {
    sub_10105FE28(319, &qword_10169A330, &type metadata for Data, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10105FE28(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_10105FE78(uint64_t a1)
{
  result = sub_10105FEA0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10105FEA0()
{
  result = qword_1016C4C58;
  if (!qword_1016C4C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C4C58);
  }

  return result;
}

unint64_t sub_10105FEF4(uint64_t a1)
{
  result = sub_10105FF1C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10105FF1C()
{
  result = qword_1016C4C60;
  if (!qword_1016C4C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C4C60);
  }

  return result;
}

unint64_t sub_10105FF70()
{
  result = qword_1016C4C70;
  if (!qword_1016C4C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C4C70);
  }

  return result;
}

unint64_t sub_10105FFC4()
{
  result = qword_1016C4C98;
  if (!qword_1016C4C98)
  {
    sub_1000BC580(&qword_1016C4C90, &qword_1013FCBE8);
    sub_10105F5BC(&qword_1016C4CA0, type metadata accessor for KeyDropShareMetaDataResponse.Member);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C4C98);
  }

  return result;
}

unint64_t sub_101060078()
{
  result = qword_1016C4CB0;
  if (!qword_1016C4CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C4CB0);
  }

  return result;
}

unint64_t sub_1010600CC()
{
  result = qword_1016C4CC0;
  if (!qword_1016C4CC0)
  {
    sub_1000BC580(&qword_1016C4CB8, &qword_1013FCBF8);
    sub_101060150();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C4CC0);
  }

  return result;
}

unint64_t sub_101060150()
{
  result = qword_1016C4CC8;
  if (!qword_1016C4CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C4CC8);
  }

  return result;
}

unint64_t sub_1010601A4()
{
  result = qword_1016C4CD8;
  if (!qword_1016C4CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C4CD8);
  }

  return result;
}

unint64_t sub_1010601F8()
{
  result = qword_1016C4CE8;
  if (!qword_1016C4CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C4CE8);
  }

  return result;
}

unint64_t sub_10106024C()
{
  result = qword_1016C4D00;
  if (!qword_1016C4D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C4D00);
  }

  return result;
}

unint64_t sub_1010602A0()
{
  result = qword_1016C4D08;
  if (!qword_1016C4D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C4D08);
  }

  return result;
}

uint64_t sub_1010602F4(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1000BC580(&qword_1016C4C78, &qword_1013FCBE0);
    sub_10105F5BC(a2, type metadata accessor for KeyDropShareMetaDataResponse.ShareMetaData);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_101060390()
{
  result = qword_1016C4D28;
  if (!qword_1016C4D28)
  {
    sub_1000BC580(&qword_1016C4C90, &qword_1013FCBE8);
    sub_10105F5BC(&qword_1016C4D30, type metadata accessor for KeyDropShareMetaDataResponse.Member);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C4D28);
  }

  return result;
}

unint64_t sub_101060444()
{
  result = qword_1016C4D40;
  if (!qword_1016C4D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C4D40);
  }

  return result;
}

unint64_t sub_101060498()
{
  result = qword_1016C4D48;
  if (!qword_1016C4D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C4D48);
  }

  return result;
}

uint64_t sub_1010604EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for KeyDropInterface.KeyAlignment(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_101060550(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1010605B8()
{
  result = qword_1016C4D70;
  if (!qword_1016C4D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C4D70);
  }

  return result;
}

unint64_t sub_101060680()
{
  result = qword_1016C4D80;
  if (!qword_1016C4D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C4D80);
  }

  return result;
}

unint64_t sub_1010606D8()
{
  result = qword_1016C4D88;
  if (!qword_1016C4D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C4D88);
  }

  return result;
}

unint64_t sub_101060730()
{
  result = qword_1016C4D90;
  if (!qword_1016C4D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C4D90);
  }

  return result;
}

unint64_t sub_101060788()
{
  result = qword_1016C4D98;
  if (!qword_1016C4D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C4D98);
  }

  return result;
}

unint64_t sub_1010607E0()
{
  result = qword_1016C4DA0;
  if (!qword_1016C4DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C4DA0);
  }

  return result;
}

unint64_t sub_101060838()
{
  result = qword_1016C4DA8;
  if (!qword_1016C4DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C4DA8);
  }

  return result;
}

unint64_t sub_101060890()
{
  result = qword_1016C4DB0;
  if (!qword_1016C4DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C4DB0);
  }

  return result;
}

unint64_t sub_1010608E8()
{
  result = qword_1016C4DB8;
  if (!qword_1016C4DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C4DB8);
  }

  return result;
}

unint64_t sub_101060940()
{
  result = qword_1016C4DC0;
  if (!qword_1016C4DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C4DC0);
  }

  return result;
}

unint64_t sub_101060998()
{
  result = qword_1016C4DC8;
  if (!qword_1016C4DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C4DC8);
  }

  return result;
}

unint64_t sub_1010609F0()
{
  result = qword_1016C4DD0;
  if (!qword_1016C4DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C4DD0);
  }

  return result;
}

unint64_t sub_101060A48()
{
  result = qword_1016C4DD8;
  if (!qword_1016C4DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C4DD8);
  }

  return result;
}

unint64_t sub_101060AA0()
{
  result = qword_1016C4DE0;
  if (!qword_1016C4DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C4DE0);
  }

  return result;
}

unint64_t sub_101060AF8()
{
  result = qword_1016C4DE8;
  if (!qword_1016C4DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C4DE8);
  }

  return result;
}

unint64_t sub_101060B50()
{
  result = qword_1016C4DF0;
  if (!qword_1016C4DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C4DF0);
  }

  return result;
}

unint64_t sub_101060BA8()
{
  result = qword_1016C4DF8;
  if (!qword_1016C4DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C4DF8);
  }

  return result;
}

unint64_t sub_101060C00()
{
  result = qword_1016C4E00;
  if (!qword_1016C4E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C4E00);
  }

  return result;
}

unint64_t sub_101060C58()
{
  result = qword_1016C4E08;
  if (!qword_1016C4E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C4E08);
  }

  return result;
}

unint64_t sub_101060CB0()
{
  result = qword_1016C4E10;
  if (!qword_1016C4E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C4E10);
  }

  return result;
}

unint64_t sub_101060D08()
{
  result = qword_1016C4E18;
  if (!qword_1016C4E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C4E18);
  }

  return result;
}

unint64_t sub_101060D60()
{
  result = qword_1016C4E20;
  if (!qword_1016C4E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C4E20);
  }

  return result;
}

uint64_t sub_101060DB4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64496572616873 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x64497265626D656DLL && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x736567616B636170 && a2 == 0xE800000000000000)
  {

    return 4;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_101060F6C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64496572616873 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x616B63615079656BLL && a2 == 0xEB00000000736567)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_101061088(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E656D6E67696C61 && a2 == 0xE900000000000074 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x61745365676E6172 && a2 == 0xEA00000000007472 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x646E4565676E6172 && a2 == 0xE800000000000000)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1010611FC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64497265626D656DLL && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x72656E776FLL && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6574707972636E65 && a2 == 0xEE00646C65694664)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_101061318(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64496572616873 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6974617269707865 && a2 == 0xEA00000000006E6FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x616B63615079656BLL && a2 == 0xEB00000000736567 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x737265626D656DLL && a2 == 0xE700000000000000)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t type metadata accessor for SubmitPayloadFieldLengthV2()
{
  result = qword_1016C4E80;
  if (!qword_1016C4E80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1010614FC()
{
  result = type metadata accessor for Bit();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_101061588(void *a1)
{
  v2 = a1[4];
  sub_1000035D0(a1, a1[3]);
  result = dispatch thunk of BinaryEncoding.container()();
  if (((*v1 - 1) & 0xFFFF0000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (((*(v1 + 1) - 1) & 0xFFFF0000) != 0)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (((v1[4] - 1) & 0xFFFFFF00) != 0)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v17 = *v1 - 1;
  sub_1002053B0();
  result = FixedWidthInteger.bits()();
  if (*(result + 16) < 0xDuLL)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    __break(1u);
    goto LABEL_15;
  }

  v4 = result;
  v5 = type metadata accessor for Bit();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  result = FixedWidthInteger.bits()();
  if (*(result + 16) < 0xAuLL)
  {
    goto LABEL_13;
  }

  v8 = result;
  v9 = (v7 + 32) & ~v7;
  sub_1000198E8();
  v10 = FixedWidthInteger.bits()();
  sub_1000BC4D4(&qword_10169F070, &unk_1013D4CE0);
  v11 = *(v6 + 72);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_101385D80;
  v13 = type metadata accessor for SubmitPayloadFieldLengthV2();
  (*(v6 + 16))(v12 + v9, &v1[*(v13 + 28)], v5);

  sub_101062A04(v14, v8 + v9, 0, 0x15uLL);

  v15 = *(v10 + 16);
  if (!__OFADD__(v15, 13))
  {
    v18[6] = sub_100A5E6F8(0, (v15 + 13) & ~((v15 + 13) >> 63), 0, _swiftEmptyArrayStorage);
    v16 = swift_unknownObjectRetain();
    sub_10039A94C(v16, v4 + v9, 0, 0x1BuLL);
    sub_10039AF70(v10);
    swift_unknownObjectRelease();
    sub_10039AF70(v12);
    sub_100101824();
    FixedWidthInteger.init(bits:)();
    sub_10015049C(v18, v18[3]);
    dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();

    return sub_100007BAC(v18);
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1010618B0(uint64_t result)
{
  v2 = result;
  v3 = v1[3];
  v4 = v3 >> 1;
  if ((v3 & 1) == 0)
  {
    goto LABEL_10;
  }

  v5 = *v1;
  result = swift_isUniquelyReferenced_nonNull();
  *v1 = v5;
  if ((result & 1) == 0)
  {
    goto LABEL_10;
  }

  v6 = v1[2];
  v7 = v4 - v6;
  if (__OFSUB__(v4, v6))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v8 = v1[1];
  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain();
  v9 = swift_dynamicCastClass();
  if (!v9)
  {
    swift_unknownObjectRelease();
    v9 = _swiftEmptyArrayStorage;
  }

  v10 = *(type metadata accessor for Bit() - 8);
  v11 = v9[2];
  if ((v8 + *(v10 + 72) * v6 + *(v10 + 72) * v7) != (v9 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v11))
  {

    goto LABEL_9;
  }

  v12 = v9[3];

  v13 = (v12 >> 1) - v11;
  v14 = __OFADD__(v7, v13);
  v7 += v13;
  if (!v14)
  {
LABEL_9:
    if (v7 >= v2)
    {
LABEL_17:
      *v1 = v5;
      return result;
    }

LABEL_10:
    v15 = v1[2];
    if (__OFSUB__(v4, v15))
    {
      __break(1u);
    }

    else
    {
      result = sub_1003A8968(v4 - v15, v2);
      if (v4 >= v15)
      {
        v5 = result;
        v16 = v1[1];
        v17 = *(type metadata accessor for Bit() - 8);
        v18 = v5 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
        v19 = *(v17 + 72);
        result = swift_arrayInitWithCopy();
        if (!__OFSUB__(0, v15))
        {
          v20 = *(v5 + 16);
          v14 = __OFADD__(v15, v20);
          v21 = v15 + v20;
          if (!v14)
          {
            if (v21 >= v15)
            {
              if ((v21 & 0x8000000000000000) == 0)
              {
                v22 = (2 * v21) | 1;
                v23 = *v1;
                result = swift_unknownObjectRelease();
                v1[1] = v18 + v19 * -v15;
                v1[2] = v15;
                v1[3] = v22;
                goto LABEL_17;
              }

              goto LABEL_23;
            }

LABEL_22:
            __break(1u);
LABEL_23:
            __break(1u);
            goto LABEL_24;
          }

LABEL_21:
          __break(1u);
          goto LABEL_22;
        }

LABEL_20:
        __break(1u);
        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_20;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_101061AEC(uint64_t result, uint64_t a2, uint64_t a3, void (*a4)(unint64_t, uint64_t))
{
  v5 = v4;
  v6 = v4[2];
  v7 = v4[3] >> 1;
  v8 = v7 - v6;
  if (__OFSUB__(v7, v6))
  {
    __break(1u);
    goto LABEL_46;
  }

  v10 = *result;
  v11 = *(*result + 16);
  v12 = __OFSUB__(v11, a2);
  v13 = v11 - a2;
  if (v12)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v15 = v13 - a3;
  if (__OFSUB__(v13, a3))
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v16 = v8 - a2;
  if (__OFSUB__(v8, a2))
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v12 = __OFSUB__(v16, v15);
  v17 = v16 - v15;
  if (v12)
  {
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v43 = v15;
  v45 = v17;
  v47 = type metadata accessor for Bit();
  v19 = (*(*(v47 - 8) + 80) + 32) & ~*(*(v47 - 8) + 80);
  v20 = *(*(v47 - 8) + 72);
  v48 = v10 + v19;
  v21 = v10 + v19 + v20 * a2;
  v46 = a3;
  v44 = v21 + v20 * a3;
  result = sub_101062160(v8);
  if (result)
  {
    if (!v20)
    {
LABEL_54:
      __break(1u);
      goto LABEL_55;
    }

    v22 = result;
    v41 = v10;
    v42 = a4;
    v23 = v5[2];
    v24 = v5[1] + v23 * v20;
    result += v19;
    if (v24 - result == 0x8000000000000000 && v20 == -1)
    {
      goto LABEL_61;
    }

    v26 = v24 + v20 * a2;
    v40 = result;
    swift_arrayDestroy();
    if (v48 < v24 || v48 >= v26)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v48 != v24)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    swift_arrayDestroy();
    v42(v21, v46);
    v34 = v26 + v20 * v45;
    if (v44 < v34 || v44 >= v34 + v20 * v43)
    {
      swift_arrayInitWithTakeFrontToBack();
      v36 = v40;
    }

    else
    {
      v36 = v40;
      if (v44 != v34)
      {
        swift_arrayInitWithTakeBackToFront();
      }
    }

    result = v24 + v20 * v8;
    v31 = v48;
    if (v36 + *(v22 + 16) * v20 - result == 0x8000000000000000 && v20 == -1)
    {
      goto LABEL_62;
    }

    swift_arrayDestroy();
    *(v22 + 16) = 0;

    v10 = v41;
  }

  else
  {
    v28 = a4;
    v23 = v5[2];
    v29 = v23 + a2;
    if (__OFADD__(v23, a2))
    {
LABEL_55:
      __break(1u);
      goto LABEL_56;
    }

    if (v29 < v23)
    {
LABEL_56:
      __break(1u);
      goto LABEL_57;
    }

    if (__OFSUB__(v29, v23))
    {
LABEL_57:
      __break(1u);
      goto LABEL_58;
    }

    v30 = v5[1];
    v31 = v10 + v19;
    swift_arrayInitWithCopy();
    result = v28(v48 + a2 * v20, v46);
    v32 = v29 + v45;
    if (__OFADD__(v29, v45))
    {
LABEL_58:
      __break(1u);
      goto LABEL_59;
    }

    v33 = v5[3] >> 1;
    if (v33 < v32)
    {
LABEL_59:
      __break(1u);
      goto LABEL_60;
    }

    if (__OFSUB__(v33, v32))
    {
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
      return result;
    }

    swift_arrayInitWithCopy();
  }

  v37 = *v5;
  result = swift_unknownObjectRelease();
  if (__OFSUB__(0, v23))
  {
    goto LABEL_50;
  }

  v38 = *(v10 + 16);
  v12 = __OFADD__(v23, v38);
  v39 = v23 + v38;
  if (v12)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  if (v39 < v23)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  if (v39 < 0)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  *v5 = v10;
  v5[1] = v31 + -v23 * v20;
  v5[2] = v23;
  v5[3] = (2 * v39) | 1;
}

void *sub_101061E58(void *result)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v3 >> 1;
  v5 = __OFSUB__(v3 >> 1, v2);
  v6 = (v3 >> 1) - v2;
  if (v5)
  {
    __break(1u);
    goto LABEL_12;
  }

  v7 = result - v6;
  if (__OFSUB__(result, v6))
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (!v7)
  {
    return result;
  }

  v8 = *v1;
  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain();
  result = swift_dynamicCastClass();
  if (!result)
  {
    swift_unknownObjectRelease();
    result = _swiftEmptyArrayStorage;
  }

  v9 = result[2];
  v5 = __OFADD__(v9, v7);
  v10 = &v7[v9];
  if (v5)
  {
    goto LABEL_13;
  }

  result[2] = v10;

  v11 = &v7[v4];
  if (__OFADD__(v4, v7))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if ((v11 & 0x8000000000000000) != 0)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  v1[3] = v3 & 1 | (2 * v11);
  return result;
}

void *sub_101061F10(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v7 = (a6 >> 1) - a5;
  if (__OFSUB__(a6 >> 1, a5))
  {
    __break(1u);
LABEL_30:
    if (v7 >= v6)
    {
      goto LABEL_23;
    }

    goto LABEL_19;
  }

  v6 = a2;
  if ((a6 & 1) == 0)
  {
    goto LABEL_30;
  }

  v28 = result;
  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain();
  v10 = swift_dynamicCastClass();
  if (!v10)
  {
    swift_unknownObjectRelease();
    v10 = _swiftEmptyArrayStorage;
  }

  v11 = *(type metadata accessor for Bit() - 8);
  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = v10[2];
  v14 = *(v11 + 72);
  v15 = (a4 + v14 * a5 + v14 * v7);
  if (v15 == (v10 + v12 + v14 * v13))
  {
    v17 = v10[3];

    v18 = (v17 >> 1) - v13;
    v16 = v7 + v18;
    if (__OFADD__(v7, v18))
    {
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }
  }

  else
  {

    v16 = v7;
  }

  swift_unknownObjectRetain();
  v19 = swift_dynamicCastClass();
  if (v16 >= v6)
  {
    if (!v19)
    {
      swift_unknownObjectRelease();
      v19 = _swiftEmptyArrayStorage;
    }

    v21 = v19[2];
    if (v15 == (v19 + v12 + v14 * v21))
    {
      v25 = v19[3];

      v26 = (v25 >> 1) - v21;
      v24 = __OFADD__(v7, v26);
      v7 += v26;
      if (v24)
      {
LABEL_35:
        __break(1u);
        return result;
      }
    }

    else
    {
    }

    result = v28;
    goto LABEL_23;
  }

  if (!v19)
  {
    swift_unknownObjectRelease();
    v19 = _swiftEmptyArrayStorage;
  }

  v20 = v19[2];
  if (v15 == (v19 + v12 + v14 * v20))
  {
    v22 = v19[3];

    v23 = (v22 >> 1) - v20;
    v24 = __OFADD__(v7, v23);
    v7 += v23;
    if (v24)
    {
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }
  }

  else
  {
  }

  result = v28;
LABEL_19:
  if (v7 + 0x4000000000000000 < 0)
  {
    __break(1u);
    goto LABEL_33;
  }

  v7 *= 2;
LABEL_23:
  if (v7 <= v6)
  {
    v27 = v6;
  }

  else
  {
    v27 = v7;
  }

  return sub_1003A8968(result, v27);
}

uint64_t sub_101062160(uint64_t a1)
{
  v4 = *v2;
  if (!swift_isUniquelyReferenced_nonNull())
  {
    return 0;
  }

  v7 = v2[2];
  v6 = v2[3];
  v8 = (v6 >> 1) - v7;
  if (__OFSUB__(v6 >> 1, v7))
  {
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v9 = *v2;
  v10 = v2[1];
  if ((v6 & 1) == 0)
  {
    goto LABEL_8;
  }

  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain();
  v11 = swift_dynamicCastClass();
  if (!v11)
  {
    swift_unknownObjectRelease();
    v11 = _swiftEmptyArrayStorage;
  }

  v12 = *(type metadata accessor for Bit() - 8);
  v13 = v11[2];
  if ((v10 + *(v12 + 72) * v7 + *(v12 + 72) * v8) != (v11 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v13))
  {

LABEL_8:
    v14 = v8;
    goto LABEL_10;
  }

  v15 = v11[3];

  v17 = (v15 >> 1) - v13;
  v18 = __OFADD__(v8, v17);
  v14 = v8 + v17;
  if (v18)
  {
    __break(1u);
LABEL_25:
    __break(1u);
    return result;
  }

LABEL_10:
  if (v14 < a1)
  {
    return 0;
  }

  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain();
  v19 = swift_dynamicCastClass();
  if (!v19)
  {
    swift_unknownObjectRelease();
    v19 = _swiftEmptyArrayStorage;
  }

  v1 = v19;
  v6 = *(type metadata accessor for Bit() - 8);
  v20 = *(v6 + 72);
  if (!v20)
  {
    goto LABEL_21;
  }

  result = v1;
  v21 = v10 + v20 * v7 - (v1 + ((*(v6 + 80) + 32) & ~*(v6 + 80)));
  if (v20 == -1 && v21 == 0x8000000000000000)
  {
    goto LABEL_25;
  }

  v22 = v21 / v20;
  v18 = __OFADD__(v8, v22);
  v6 = v8 + v22;
  if (v18)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v5 = v1[2];
  if (v6 < v5)
  {
LABEL_23:
    sub_100A1A12C(v6, v5, 0);
    return v1;
  }

  return result;
}

void *sub_10106239C(void *a1)
{
  v3 = type metadata accessor for Bit();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000BC4D4(&qword_10169F068, &unk_1013A00E0);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v12 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v53 = &v50 - v14;
  result = __chkstk_darwin(v13);
  v17 = &v50 - v16;
  v19 = v1[2];
  v18 = v1[3];
  v20 = (v18 >> 1) - v19;
  if (__OFSUB__(v18 >> 1, v19))
  {
    goto LABEL_52;
  }

  v66 = v7;
  v21 = a1[1];
  v22 = a1[2];
  v61 = v22;
  v62 = v21;
  v23 = a1[4];
  v65 = a1[3] >> 1;
  v59 = v18;
  if (v23 == v65)
  {
    v64 = *(v4 + 56);
    v64(&v50 - v16, 1, 1, v3);
    v24 = v53;
  }

  else
  {
    v24 = v53;
    if (v23 < v22 || v23 >= v65)
    {
      goto LABEL_53;
    }

    (*(v4 + 16))(&v50 - v16, v62 + *(v4 + 72) * v23++, v3);
    v64 = *(v4 + 56);
    v64(v17, 0, 1, v3);
  }

  sub_101062D20(v17, v24);
  v52 = v4;
  v70 = *(v4 + 48);
  v71 = v4 + 48;
  if (v70(v24, 1, v3) == 1)
  {
LABEL_8:
    sub_101062D90(v17);
    return sub_101062D90(v24);
  }

  v25 = v23;
  v67 = (v52 + 32);
  v60 = (v52 + 16);
  v63 = v52 + 56;
  v50 = (v52 + 8);
  v51 = v1;
  v69 = v3;
  while (1)
  {
    result = sub_101062D90(v24);
    if (__OFADD__(v20, 1))
    {
      goto LABEL_45;
    }

    v57 = v25;
    v72 = sub_101061F10(v20, v20 + 1, *v1, v1[1], v19, v59);
    v26 = sub_101062144();
    sub_101061AEC(&v72, v20, 0, v26);

    v28 = v1[2];
    v27 = v1[3];
    v29 = (v27 >> 1) - v28;
    if (__OFSUB__(v27 >> 1, v28))
    {
      break;
    }

    v30 = *v1;
    v31 = v1[1];
    v58 = (v27 >> 1) - v28;
    v59 = v27;
    v54 = v27 >> 1;
    v55 = v30;
    if ((v27 & 1) == 0)
    {
      v34 = *(v52 + 72);
      v35 = v34 * v28;
      goto LABEL_18;
    }

    type metadata accessor for __ContiguousArrayStorageBase();
    swift_unknownObjectRetain();
    v32 = swift_dynamicCastClass();
    if (!v32)
    {
      swift_unknownObjectRelease();
      v32 = _swiftEmptyArrayStorage;
    }

    v33 = v32[2];
    v34 = *(v52 + 72);
    v35 = v34 * v28;
    if ((v31 + v34 * v28 + v34 * v29) != (v32 + ((*(v52 + 80) + 32) & ~*(v52 + 80)) + v34 * v33))
    {

LABEL_18:
      v36 = v29;
      goto LABEL_20;
    }

    v37 = v32[3];

    v38 = (v37 >> 1) - v33;
    v36 = v58 + v38;
    if (__OFADD__(v58, v38))
    {
      goto LABEL_51;
    }

LABEL_20:
    v56 = v28;
    sub_101062D20(v17, v12);
    if (v70(v12, 1, v3) != 1)
    {
      v39 = *v67;
      if (v36 <= v20)
      {
        v40 = v20;
      }

      else
      {
        v40 = v36;
      }

      v68 = v40;
      v41 = v31 + v35 + v34 * v20;
      v25 = v57;
      while (1)
      {
        v43 = v25;
        v44 = v66;
        v39(v66, v12, v3);
        if (v68 == v20)
        {
          result = (*v50)(v44, v3);
          v20 = v68;
          v25 = v43;
          goto LABEL_35;
        }

        sub_101062D90(v17);
        result = (v39)(v41, v44, v3);
        if (v43 == v65)
        {
          v42 = 1;
          v25 = v65;
          v3 = v69;
        }

        else
        {
          if (v43 < v61 || v43 >= v65)
          {
            __break(1u);
LABEL_45:
            __break(1u);
            goto LABEL_46;
          }

          v3 = v69;
          (*v60)(v17, v62 + v43 * v34, v69);
          v42 = 0;
          v25 = v43 + 1;
        }

        v64(v17, v42, 1, v3);
        sub_101062D20(v17, v12);
        v41 += v34;
        ++v20;
        if (v70(v12, 1, v3) == 1)
        {
          goto LABEL_22;
        }
      }
    }

    v25 = v57;
LABEL_22:
    result = sub_101062D90(v12);
LABEL_35:
    v45 = v20 - v58;
    v1 = v51;
    v19 = v56;
    if (__OFSUB__(v20, v58))
    {
      goto LABEL_47;
    }

    v3 = v69;
    if (v45)
    {
      type metadata accessor for __ContiguousArrayStorageBase();
      swift_unknownObjectRetain();
      result = swift_dynamicCastClass();
      if (!result)
      {
        swift_unknownObjectRelease();
        result = _swiftEmptyArrayStorage;
      }

      v46 = result[2];
      v47 = __OFADD__(v46, v45);
      v48 = v46 + v45;
      if (v47)
      {
        goto LABEL_48;
      }

      result[2] = v48;

      v49 = v54 + v45;
      if (__OFADD__(v54, v45))
      {
        goto LABEL_49;
      }

      if ((v49 & 0x8000000000000000) != 0)
      {
        goto LABEL_50;
      }

      v59 = v59 & 1 | (2 * v49);
      v1[3] = v59;
    }

    v24 = v53;
    sub_101062D20(v17, v53);
    if (v70(v24, 1, v3) == 1)
    {
      goto LABEL_8;
    }
  }

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
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
  return result;
}