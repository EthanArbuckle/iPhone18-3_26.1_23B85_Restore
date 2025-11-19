uint64_t sub_1004663C8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v30 = type metadata accessor for MessagingCapability();
  v27 = *(v30 - 8);
  v4 = *(v27 + 64);
  __chkstk_darwin(v30);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10004B564(&qword_1005B4B58, &qword_1004D9EA8);
  v8 = *(v7 - 8);
  v28 = v7;
  v29 = v8;
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v24 - v10;
  HasCapability = type metadata accessor for SecureLocationsRelayAction.HasCapability(0);
  v13 = *(*(HasCapability - 8) + 64);
  __chkstk_darwin(HasCapability);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[4];
  sub_100011AEC(a1, a1[3]);
  sub_10046E030();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100004984(a1);
  }

  v25 = HasCapability;
  v17 = v15;
  v18 = v27;
  v33 = 0;
  sub_10045E3E4(&qword_1005B4B68, 255, &type metadata accessor for MessagingCapability);
  v19 = v30;
  v20 = v28;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v21 = *(v18 + 32);
  v24 = v17;
  v21(v17, v6, v19);
  sub_10004B564(&qword_1005A9288, &qword_1004D9EB0);
  v32 = 1;
  sub_10046E084();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v29 + 8))(v11, v20);
  v22 = v24;
  *(v24 + *(v25 + 20)) = v31;
  sub_10046B228(v22, v26, type metadata accessor for SecureLocationsRelayAction.HasCapability);
  sub_100004984(a1);
  return sub_10046AFA0(v22, type metadata accessor for SecureLocationsRelayAction.HasCapability);
}

uint64_t sub_100466768@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v33 = type metadata accessor for MessagingOptions();
  v29 = *(v33 - 8);
  v4 = *(v29 + 64);
  __chkstk_darwin(v33);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10004B564(&qword_1005AB918, &unk_1004C5800);
  v32 = *(v7 - 8);
  v8 = *(v32 + 64);
  __chkstk_darwin(v7);
  v34 = &v27 - v9;
  v35 = sub_10004B564(&qword_1005B4B78, &qword_1004D9EB8);
  v31 = *(v35 - 8);
  v10 = *(v31 + 64);
  __chkstk_darwin(v35);
  v12 = &v27 - v11;
  v13 = type metadata accessor for SecureLocationsRelayAction.SendMessage(0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1[3];
  v17 = a1[4];
  v36 = a1;
  sub_100011AEC(a1, v18);
  sub_10046E13C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100004984(v36);
  }

  v27 = v6;
  v28 = v13;
  v19 = v16;
  v21 = v31;
  v20 = v32;
  v22 = v33;
  LOBYTE(v37) = 0;
  sub_10001DF0C(&qword_1005AB928, &qword_1005AB918, &unk_1004C5800);
  v23 = v34;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v24 = *(v20 + 32);
  v34 = v7;
  v24(v19, v23, v7);
  v38 = 1;
  sub_10046E190();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v25 = v28;
  *(v19 + *(v28 + 20)) = v37;
  LOBYTE(v37) = 2;
  sub_10045E3E4(&qword_1005B4B90, 255, &type metadata accessor for MessagingOptions);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v21 + 8))(v12, v35);
  (*(v29 + 32))(v19 + *(v25 + 24), v27, v22);
  sub_10046B228(v19, v30, type metadata accessor for SecureLocationsRelayAction.SendMessage);
  sub_100004984(v36);
  return sub_10046AFA0(v19, type metadata accessor for SecureLocationsRelayAction.SendMessage);
}

uint64_t sub_100466C30@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v131 = a2;
  v3 = sub_10004B564(&qword_1005B48C8, &qword_1004D9D78);
  v114 = *(v3 - 8);
  v115 = v3;
  v4 = *(v114 + 64);
  __chkstk_darwin(v3);
  v121 = &v97 - v5;
  v6 = sub_10004B564(&qword_1005B48D0, &qword_1004D9D80);
  v7 = *(v6 - 8);
  v118 = v6;
  v119 = v7;
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v123 = &v97 - v9;
  v10 = sub_10004B564(&qword_1005B48D8, &qword_1004D9D88);
  v116 = *(v10 - 8);
  v117 = v10;
  v11 = *(v116 + 64);
  __chkstk_darwin(v10);
  v129 = &v97 - v12;
  v113 = sub_10004B564(&qword_1005B48E0, &qword_1004D9D90);
  v112 = *(v113 - 8);
  v13 = *(v112 + 64);
  __chkstk_darwin(v113);
  v122 = &v97 - v14;
  v110 = sub_10004B564(&qword_1005B48E8, &qword_1004D9D98);
  v111 = *(v110 - 8);
  v15 = *(v111 + 64);
  __chkstk_darwin(v110);
  v128 = &v97 - v16;
  v108 = sub_10004B564(&qword_1005B48F0, &qword_1004D9DA0);
  v109 = *(v108 - 8);
  v17 = *(v109 + 64);
  __chkstk_darwin(v108);
  v127 = &v97 - v18;
  v106 = sub_10004B564(&qword_1005B48F8, &qword_1004D9DA8);
  v107 = *(v106 - 8);
  v19 = *(v107 + 64);
  __chkstk_darwin(v106);
  v126 = &v97 - v20;
  v104 = sub_10004B564(&qword_1005B4900, &qword_1004D9DB0);
  v103 = *(v104 - 8);
  v21 = *(v103 + 64);
  __chkstk_darwin(v104);
  v120 = &v97 - v22;
  v125 = sub_10004B564(&qword_1005B4908, &unk_1004D9DB8);
  v130 = *(v125 - 8);
  v23 = *(v130 + 64);
  __chkstk_darwin(v125);
  v25 = &v97 - v24;
  v124 = type metadata accessor for SecureLocationsRelayAction(0);
  v26 = *(*(v124 - 8) + 64);
  v27 = __chkstk_darwin(v124);
  v105 = &v97 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __chkstk_darwin(v27);
  v31 = &v97 - v30;
  v32 = __chkstk_darwin(v29);
  v34 = &v97 - v33;
  v35 = __chkstk_darwin(v32);
  v37 = &v97 - v36;
  v38 = __chkstk_darwin(v35);
  v40 = &v97 - v39;
  __chkstk_darwin(v38);
  v42 = &v97 - v41;
  v44 = a1[3];
  v43 = a1[4];
  v132 = a1;
  sub_100011AEC(a1, v44);
  sub_10046CC70();
  v45 = v133;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  v133 = v45;
  if (!v45)
  {
    v97 = v40;
    v98 = v37;
    v99 = v34;
    v100 = v31;
    v47 = v126;
    v46 = v127;
    v48 = v128;
    v49 = v129;
    v101 = v42;
    v50 = v131;
    v51 = v125;
    v102 = v25;
    v52 = KeyedDecodingContainer.allKeys.getter();
    if (*(v52 + 16) != 1 || (v53 = *(v52 + 32), v53 == 8))
    {
      v59 = type metadata accessor for DecodingError();
      v60 = swift_allocError();
      v62 = v61;
      v63 = *(sub_10004B564(&qword_1005B3E68, &qword_1004D8F80) + 48);
      *v62 = v124;
      v64 = v102;
      KeyedDecodingContainer.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v59 - 8) + 104))(v62, enum case for DecodingError.typeMismatch(_:), v59);
      v133 = v60;
      swift_willThrow();
      (*(v130 + 8))(v64, v51);
      goto LABEL_10;
    }

    if (*(v52 + 32) <= 3u)
    {
      v54 = v102;
      if (*(v52 + 32) <= 1u)
      {
        if (*(v52 + 32))
        {
          v135 = 1;
          sub_10046CEBC();
          v85 = v133;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          v57 = v130;
          v133 = v85;
          if (!v85)
          {
            (*(v107 + 8))(v47, v106);
            (*(v57 + 8))(v54, v51);
            swift_unknownObjectRelease();
            v58 = v101;
            goto LABEL_39;
          }
        }

        else
        {
          v134 = 0;
          sub_10046CF10();
          v55 = v120;
          v56 = v133;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          v57 = v130;
          v133 = v56;
          if (!v56)
          {
            (*(v103 + 8))(v55, v104);
            (*(v57 + 8))(v54, v51);
            swift_unknownObjectRelease();
            v58 = v101;
LABEL_39:
            swift_storeEnumTagMultiPayload();
LABEL_47:
            sub_10046B040(v58, v50, type metadata accessor for SecureLocationsRelayAction);
            return sub_100004984(v132);
          }
        }

        (*(v57 + 8))(v54, v51);
        goto LABEL_10;
      }

      if (v53 == 2)
      {
        v136 = 2;
        sub_10046CE68();
        v73 = v46;
        v74 = v133;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v133 = v74;
        if (!v74)
        {
          type metadata accessor for SecureLocationsRelayAction.HasCapability(0);
          sub_10045E3E4(&qword_1005B4950, 255, type metadata accessor for SecureLocationsRelayAction.HasCapability);
          v75 = v97;
          v76 = v108;
          v77 = v133;
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          v78 = v130;
          v133 = v77;
          if (v77)
          {
            (*(v109 + 8))(v73, v76);
            (*(v78 + 8))(v54, v51);
            goto LABEL_10;
          }

          (*(v109 + 8))(v73, v76);
          (*(v78 + 8))(v54, v51);
          swift_unknownObjectRelease();
          swift_storeEnumTagMultiPayload();
          v96 = v75;
LABEL_46:
          v58 = v101;
          sub_10046B040(v96, v101, type metadata accessor for SecureLocationsRelayAction);
          goto LABEL_47;
        }

LABEL_34:
        (*(v130 + 8))(v54, v51);
        goto LABEL_10;
      }

      v137 = 3;
      sub_10046CE14();
      v89 = v48;
      v90 = v133;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v133 = v90;
      if (v90)
      {
        goto LABEL_34;
      }

      type metadata accessor for Destination();
      sub_10045E3E4(&qword_1005AAB48, 255, &type metadata accessor for Destination);
      v91 = v98;
      v92 = v110;
      v93 = v133;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v133 = v93;
      if (v93)
      {
        (*(v111 + 8))(v89, v92);
        goto LABEL_34;
      }

      (*(v111 + 8))(v89, v92);
      (*(v130 + 8))(v54, v51);
      swift_unknownObjectRelease();
LABEL_45:
      swift_storeEnumTagMultiPayload();
      v96 = v91;
      goto LABEL_46;
    }

    v66 = v130;
    if (*(v52 + 32) > 5u)
    {
      if (v53 != 6)
      {
        v141 = 7;
        sub_10046CCC4();
        v94 = v121;
        v68 = v102;
        v95 = v133;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v133 = v95;
        if (!v95)
        {
          (*(v114 + 8))(v94, v115);
          (*(v66 + 8))(v68, v51);
          swift_unknownObjectRelease();
          v58 = v101;
          goto LABEL_39;
        }

        goto LABEL_36;
      }

      v140 = 6;
      sub_10046CD18();
      v79 = v102;
      v80 = v133;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v133 = v80;
      if (!v80)
      {
        type metadata accessor for Destination();
        sub_10045E3E4(&qword_1005AAB48, 255, &type metadata accessor for Destination);
        v81 = v105;
        v82 = v118;
        v83 = v123;
        v84 = v133;
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        v133 = v84;
        if (!v84)
        {
          (*(v119 + 8))(v83, v82);
          (*(v66 + 8))(v79, v51);
          swift_unknownObjectRelease();
          swift_storeEnumTagMultiPayload();
          v58 = v101;
          sub_10046B040(v81, v101, type metadata accessor for SecureLocationsRelayAction);
          v50 = v131;
          goto LABEL_47;
        }

        (*(v119 + 8))(v83, v82);
      }
    }

    else
    {
      if (v53 == 4)
      {
        v138 = 4;
        sub_10046CDC0();
        v67 = v122;
        v68 = v102;
        v69 = v133;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v133 = v69;
        if (!v69)
        {
          type metadata accessor for SecureLocationsRelayAction.SendMessage(0);
          sub_10045E3E4(&qword_1005B4938, 255, type metadata accessor for SecureLocationsRelayAction.SendMessage);
          v70 = v99;
          v71 = v113;
          v72 = v133;
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          v133 = v72;
          if (!v72)
          {
            (*(v112 + 8))(v67, v71);
            (*(v66 + 8))(v102, v51);
            swift_unknownObjectRelease();
            swift_storeEnumTagMultiPayload();
            v96 = v70;
            goto LABEL_46;
          }

          (*(v112 + 8))(v67, v71);
          (*(v66 + 8))(v102, v51);
LABEL_10:
          swift_unknownObjectRelease();
          return sub_100004984(v132);
        }

LABEL_36:
        (*(v66 + 8))(v68, v51);
        goto LABEL_10;
      }

      v139 = 5;
      sub_10046CD6C();
      v79 = v102;
      v86 = v133;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v133 = v86;
      if (!v86)
      {
        type metadata accessor for Destination();
        sub_10045E3E4(&qword_1005AAB48, 255, &type metadata accessor for Destination);
        v87 = v117;
        v88 = v133;
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        v133 = v88;
        if (!v88)
        {
          (*(v116 + 8))(v49, v87);
          (*(v66 + 8))(v79, v51);
          swift_unknownObjectRelease();
          v91 = v100;
          goto LABEL_45;
        }

        (*(v116 + 8))(v49, v87);
      }
    }

    (*(v66 + 8))(v79, v51);
    goto LABEL_10;
  }

  return sub_100004984(v132);
}

uint64_t sub_100467CDC(void *a1)
{
  v2 = sub_10004B564(&qword_1005B4968, &qword_1004D9DC8);
  v68 = *(v2 - 8);
  v69 = v2;
  v3 = *(v68 + 64);
  __chkstk_darwin(v2);
  v65 = &v52 - v4;
  v5 = type metadata accessor for UUID();
  v66 = *(v5 - 8);
  v67 = v5;
  v6 = *(v66 + 64);
  __chkstk_darwin(v5);
  v64 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10004B564(&qword_1005B4970, &qword_1004D9DD0);
  v62 = *(v8 - 8);
  v63 = v8;
  v9 = *(v62 + 64);
  __chkstk_darwin(v8);
  v61 = &v52 - v10;
  v11 = sub_10004B564(&qword_1005B4978, &qword_1004D9DD8);
  v59 = *(v11 - 8);
  v60 = v11;
  v12 = *(v59 + 64);
  __chkstk_darwin(v11);
  v58 = &v52 - v13;
  v14 = sub_10004B564(&qword_1005B4980, &qword_1004D9DE0);
  v56 = *(v14 - 8);
  v57 = v14;
  v15 = *(v56 + 64);
  __chkstk_darwin(v14);
  v55 = &v52 - v16;
  v54 = sub_10004B564(&qword_1005B4988, &qword_1004D9DE8);
  v53 = *(v54 - 8);
  v17 = *(v53 + 64);
  __chkstk_darwin(v54);
  v19 = &v52 - v18;
  v20 = sub_10004B564(&qword_1005B4990, &qword_1004D9DF0);
  v52 = *(v20 - 8);
  v21 = *(v52 + 64);
  __chkstk_darwin(v20);
  v23 = &v52 - v22;
  v24 = type metadata accessor for SecureLocationsRelayActionResponse(0);
  v25 = *(*(v24 - 8) + 64);
  __chkstk_darwin(v24);
  v27 = &v52 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_10004B564(&qword_1005B4998, &qword_1004D9DF8);
  v70 = *(v72 - 8);
  v28 = *(v70 + 64);
  __chkstk_darwin(v72);
  v30 = &v52 - v29;
  v31 = a1[4];
  sub_100011AEC(a1, a1[3]);
  sub_10046CF64();
  v71 = v30;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_10046B228(v73, v27, type metadata accessor for SecureLocationsRelayActionResponse);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (!EnumCaseMultiPayload)
    {
      v47 = *v27;
      LOBYTE(v74) = 1;
      sub_10046D3C4();
      v49 = v71;
      v48 = v72;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v50 = v54;
      KeyedEncodingContainer.encode(_:forKey:)();
      (*(v53 + 8))(v19, v50);
      return (*(v70 + 8))(v49, v48);
    }

    v33 = *v27;
    if (EnumCaseMultiPayload == 1)
    {
      LOBYTE(v74) = 2;
      sub_10046D2B0();
      v34 = v55;
      v36 = v71;
      v35 = v72;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v74 = v33;
      sub_10004B564(&qword_1005B4A00, &qword_1004D9E10);
      sub_10046D304();
      v37 = v57;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v38 = v56;
    }

    else
    {
      LOBYTE(v74) = 3;
      sub_10046D118();
      v34 = v58;
      v36 = v71;
      v35 = v72;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v74 = v33;
      sub_10004B564(&qword_1005B49D8, &qword_1004D9E08);
      sub_10046D16C();
      v37 = v60;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v38 = v59;
    }

    goto LABEL_12;
  }

  if (EnumCaseMultiPayload == 3)
  {
    v51 = *v27;
    LOBYTE(v74) = 4;
    sub_10046D00C();
    v34 = v61;
    v36 = v71;
    v35 = v72;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v74 = v51;
    sub_10004B564(&qword_1005B49B8, &qword_1004D9E00);
    sub_10046D060();
    v37 = v63;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v38 = v62;
LABEL_12:
    (*(v38 + 8))(v34, v37);
    (*(v70 + 8))(v36, v35);
  }

  v40 = v71;
  v39 = v72;
  if (EnumCaseMultiPayload == 4)
  {
    v42 = v66;
    v41 = v67;
    v43 = v64;
    (*(v66 + 32))(v64, v27, v67);
    LOBYTE(v74) = 5;
    sub_10046CFB8();
    v44 = v65;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    sub_10045E3E4(&qword_1005AAB60, 255, &type metadata accessor for UUID);
    v45 = v69;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v68 + 8))(v44, v45);
    (*(v42 + 8))(v43, v41);
  }

  else
  {
    LOBYTE(v74) = 0;
    sub_10046D418();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v52 + 8))(v23, v20);
  }

  return (*(v70 + 8))(v40, v39);
}

uint64_t sub_1004685E4(void *a1)
{
  v3 = v1;
  v5 = sub_10004B564(&qword_1005B4AD0, &qword_1004D9E68);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v18[-v8];
  v10 = a1[4];
  sub_100011AEC(a1, a1[3]);
  sub_10046D760();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v21 = 0;
  type metadata accessor for UUID();
  sub_10045E3E4(&qword_1005AAB60, 255, &type metadata accessor for UUID);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    updated = type metadata accessor for SecureLocationsKeyUpdateEnvelope(0);
    v12 = (v3 + updated[5]);
    v13 = *v12;
    v14 = v12[1];
    v20 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v19 = *(v3 + updated[6]);
    v18[15] = 2;
    sub_1000F1294();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v15 = updated[7];
    v18[14] = 3;
    type metadata accessor for PrivateKey();
    sub_10045E3E4(&qword_1005AAB68, 255, &type metadata accessor for PrivateKey);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v16 = updated[8];
    v18[13] = 4;
    type metadata accessor for HashedAdvertisement();
    sub_10045E3E4(&qword_1005AAB70, 255, &type metadata accessor for HashedAdvertisement);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1004688DC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v39 = type metadata accessor for HashedAdvertisement();
  v36 = *(v39 - 8);
  v3 = *(v36 + 64);
  __chkstk_darwin(v39);
  v38 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = type metadata accessor for PrivateKey();
  v40 = *(v42 - 8);
  v5 = *(v40 + 64);
  __chkstk_darwin(v42);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for UUID();
  v41 = *(v8 - 8);
  v9 = *(v41 + 64);
  __chkstk_darwin(v8);
  v44 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_10004B564(&qword_1005B4AC0, &qword_1004D9E60);
  v43 = *(v46 - 8);
  v11 = *(v43 + 64);
  __chkstk_darwin(v46);
  v13 = &v33 - v12;
  updated = type metadata accessor for SecureLocationsKeyUpdateEnvelope(0);
  v15 = *(*(updated - 8) + 64);
  __chkstk_darwin(updated);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1[4];
  sub_100011AEC(a1, a1[3]);
  sub_10046D760();
  v45 = v13;
  v19 = v47;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v19)
  {
    return sub_100004984(a1);
  }

  v20 = v7;
  v35 = updated;
  v22 = v41;
  v21 = v42;
  v53 = 0;
  sub_10045E3E4(&qword_1005AAB30, 255, &type metadata accessor for UUID);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v23 = v8;
  v24 = v17;
  (*(v22 + 32))(v17, v44, v23);
  v52 = 1;
  v25 = KeyedDecodingContainer.decode(_:forKey:)();
  v26 = v35;
  v27 = &v24[*(v35 + 20)];
  *v27 = v25;
  v27[1] = v28;
  v51 = 2;
  sub_1000F1240();
  v44 = 0;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v47 = a1;
  *&v24[*(v26 + 24)] = v48;
  v50 = 3;
  sub_10045E3E4(&qword_1005AAB38, 255, &type metadata accessor for PrivateKey);
  v34 = v20;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v29 = v24;
  (*(v40 + 32))(&v24[*(v26 + 28)], v34, v21);
  v49 = 4;
  sub_10045E3E4(&qword_1005AAB40, 255, &type metadata accessor for HashedAdvertisement);
  v31 = v38;
  v30 = v39;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v43 + 8))(v45, v46);
  (*(v36 + 32))(v29 + *(v35 + 32), v31, v30);
  sub_10046B228(v29, v37, type metadata accessor for SecureLocationsKeyUpdateEnvelope);
  sub_100004984(v47);
  return sub_10046AFA0(v29, type metadata accessor for SecureLocationsKeyUpdateEnvelope);
}

uint64_t sub_100468F78(void *a1)
{
  v3 = v1;
  v5 = sub_10004B564(&qword_1005B4AB8, &qword_1004D9E58);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v12[-v8];
  v10 = a1[4];
  sub_100011AEC(a1, a1[3]);
  sub_10046D70C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = 0;
  type metadata accessor for UUID();
  sub_10045E3E4(&qword_1005AAB60, 255, &type metadata accessor for UUID);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v13 = *(v3 + *(type metadata accessor for SecureLocationsKeyUpdateAckEnvelope(0) + 20));
    v12[15] = 1;
    sub_1000F1294();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_10046914C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v30 = type metadata accessor for UUID();
  v27 = *(v30 - 8);
  v4 = *(v27 + 64);
  __chkstk_darwin(v30);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10004B564(&qword_1005B4AA8, &qword_1004D9E50);
  v8 = *(v7 - 8);
  v28 = v7;
  v29 = v8;
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v24 - v10;
  updated = type metadata accessor for SecureLocationsKeyUpdateAckEnvelope(0);
  v13 = *(*(updated - 8) + 64);
  __chkstk_darwin(updated);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[4];
  sub_100011AEC(a1, a1[3]);
  sub_10046D70C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100004984(a1);
  }

  v25 = updated;
  v17 = v15;
  v18 = v27;
  v33 = 0;
  sub_10045E3E4(&qword_1005AAB30, 255, &type metadata accessor for UUID);
  v19 = v30;
  v20 = v28;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v21 = *(v18 + 32);
  v24 = v17;
  v21(v17, v6, v19);
  v32 = 1;
  sub_1000F1240();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v29 + 8))(v11, v20);
  v22 = v24;
  *(v24 + *(v25 + 20)) = v31;
  sub_10046B228(v22, v26, type metadata accessor for SecureLocationsKeyUpdateAckEnvelope);
  sub_100004984(a1);
  return sub_10046AFA0(v22, type metadata accessor for SecureLocationsKeyUpdateAckEnvelope);
}

uint64_t sub_1004694D8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v4 = type metadata accessor for UUID();
  v20 = *(v4 - 8);
  v5 = *(v20 + 64);
  __chkstk_darwin(v4);
  v23 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10004B564(&qword_1005B4A90, &qword_1004D9E40);
  v22 = *(v7 - 8);
  v8 = *(v22 + 64);
  __chkstk_darwin(v7);
  v10 = &v19 - v9;
  v11 = type metadata accessor for RemoveSecureLocationsKeyEnvelope(0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  sub_100011AEC(a1, a1[3]);
  sub_10046D6B8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v17 = v20;
    v16 = v21;
    sub_10045E3E4(&qword_1005AAB30, 255, &type metadata accessor for UUID);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v22 + 8))(v10, v7);
    (*(v17 + 32))(v14, v23, v4);
    sub_10046B040(v14, v16, type metadata accessor for RemoveSecureLocationsKeyEnvelope);
  }

  return sub_100004984(a1);
}

uint64_t sub_100469784@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1635017060 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_10046980C(uint64_t a1)
{
  v2 = sub_10046DE28();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100469848(uint64_t a1)
{
  v2 = sub_10046DE28();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_100469884@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_10046DCB4(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_1004698CC()
{
  if (*v0)
  {
    result = 0x74616E6974736564;
  }

  else
  {
    result = 0x696C696261706163;
  }

  *v0;
  return result;
}

uint64_t sub_100469914@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x696C696261706163 && a2 == 0xEA00000000007974;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x74616E6974736564 && a2 == 0xEC000000736E6F69)
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

uint64_t sub_1004699FC(uint64_t a1)
{
  v2 = sub_10046E030();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100469A38(uint64_t a1)
{
  v2 = sub_10046E030();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100469A8C()
{
  v1 = 0x617461646174656DLL;
  if (*v0 != 1)
  {
    v1 = 0x736E6F6974706FLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6567617373656DLL;
  }
}

uint64_t sub_100469AE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10047026C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100469B10(uint64_t a1)
{
  v2 = sub_10046E13C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100469B4C(uint64_t a1)
{
  v2 = sub_10046E13C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100469BA0(uint64_t a1)
{
  v2 = sub_10046CCC4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100469BDC(uint64_t a1)
{
  v2 = sub_10046CCC4();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_100469C18()
{
  v1 = *v0;
  v2 = 0x7472617473;
  v3 = 0x63697665446C6C61;
  if (v1 == 6)
  {
    v3 = 0xD000000000000015;
  }

  v4 = 0xD00000000000001CLL;
  if (v1 == 4)
  {
    v4 = 0x7373654D646E6573;
  }

  if (*v0 > 5u)
  {
    v4 = v3;
  }

  v5 = 0x6261706143736168;
  if (v1 != 2)
  {
    v5 = 0x7473696765527369;
  }

  if (*v0)
  {
    v2 = 1886352499;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_100469D2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100470384(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100469D54(uint64_t a1)
{
  v2 = sub_10046CC70();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100469D90(uint64_t a1)
{
  v2 = sub_10046CC70();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100469DCC(uint64_t a1)
{
  v2 = sub_10046CE68();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100469E08(uint64_t a1)
{
  v2 = sub_10046CE68();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100469E44(uint64_t a1)
{
  v2 = sub_10046CD6C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100469E80(uint64_t a1)
{
  v2 = sub_10046CD6C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100469EBC(uint64_t a1)
{
  v2 = sub_10046CE14();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100469EF8(uint64_t a1)
{
  v2 = sub_10046CE14();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100469F34(uint64_t a1)
{
  v2 = sub_10046CD18();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100469F70(uint64_t a1)
{
  v2 = sub_10046CD18();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100469FAC(uint64_t a1)
{
  v2 = sub_10046CDC0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100469FE8(uint64_t a1)
{
  v2 = sub_10046CDC0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10046A024(uint64_t a1)
{
  v2 = sub_10046CF10();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10046A060(uint64_t a1)
{
  v2 = sub_10046CF10();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10046A09C(uint64_t a1)
{
  v2 = sub_10046CEBC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10046A0D8(uint64_t a1)
{
  v2 = sub_10046CEBC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10046A12C(uint64_t a1)
{
  v2 = sub_10046D2B0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10046A168(uint64_t a1)
{
  v2 = sub_10046D2B0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10046A1A4(uint64_t a1)
{
  v2 = sub_10046D3C4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10046A1E0(uint64_t a1)
{
  v2 = sub_10046D3C4();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_10046A21C()
{
  v1 = 1684631414;
  v2 = *v0;
  v3 = 0xD000000000000013;
  v4 = 0x73656369766564;
  if (v2 != 4)
  {
    v4 = 1684632949;
  }

  if (v2 != 3)
  {
    v3 = v4;
  }

  v5 = 1819242338;
  if (v2 != 1)
  {
    v5 = 0xD000000000000012;
  }

  if (*v0)
  {
    v1 = v5;
  }

  if (*v0 <= 2u)
  {
    return v1;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10046A2C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100470638(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10046A2F0(uint64_t a1)
{
  v2 = sub_10046CF64();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10046A32C(uint64_t a1)
{
  v2 = sub_10046CF64();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10046A368(uint64_t a1)
{
  v2 = sub_10046D118();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10046A3A4(uint64_t a1)
{
  v2 = sub_10046D118();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10046A3E0(uint64_t a1)
{
  v2 = sub_10046D00C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10046A41C(uint64_t a1)
{
  v2 = sub_10046D00C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10046A458@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_10046A4D8(uint64_t a1)
{
  v2 = sub_10046CFB8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10046A514(uint64_t a1)
{
  v2 = sub_10046CFB8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10046A550(uint64_t a1)
{
  v2 = sub_10046D418();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10046A58C(uint64_t a1)
{
  v2 = sub_10046D418();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_10046A5E0()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1 + 10);
  return Hasher._finalize()();
}

Swift::Int sub_10046A658()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1 + 10);
  return Hasher._finalize()();
}

_DWORD *sub_10046A69C@<X0>(_DWORD *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result - 10;
  if (v2 >= 3)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

unint64_t sub_10046A788()
{
  v1 = *v0;
  v2 = 0x696669746E656469;
  v3 = 0x7865646E69;
  v4 = 0x4B65746176697270;
  if (v1 != 3)
  {
    v4 = 0xD000000000000013;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
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

uint64_t sub_10046A830@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100470834(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10046A858(uint64_t a1)
{
  v2 = sub_10046D760();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10046A894(uint64_t a1)
{
  v2 = sub_10046D760();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10046A900()
{
  if (*v0)
  {
    result = 0x7865646E69;
  }

  else
  {
    result = 0x696669746E656469;
  }

  *v0;
  return result;
}

uint64_t sub_10046A93C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7865646E69 && a2 == 0xE500000000000000)
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

uint64_t sub_10046AA1C(uint64_t a1)
{
  v2 = sub_10046D70C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10046AA58(uint64_t a1)
{
  v2 = sub_10046D70C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10046AADC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x65756C6156776172 && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_10046AB64(uint64_t a1)
{
  v2 = sub_10046D6B8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10046ABA0(uint64_t a1)
{
  v2 = sub_10046D6B8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10046ABDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  v7 = *(*(a2 - 8) + 56);

  return v7(a3, 0, 1, a2);
}

uint64_t sub_10046ACA4(void *a1)
{
  v2 = sub_10004B564(&qword_1005B4AA0, &qword_1004D9E48);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  sub_100011AEC(a1, a1[3]);
  sub_10046D6B8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  type metadata accessor for UUID();
  sub_10045E3E4(&qword_1005AAB60, 255, &type metadata accessor for UUID);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_10046AE20()
{
  v0 = type metadata accessor for Logger();
  sub_10004F154(v0, qword_1005E0CE8);
  sub_10000A6F0(v0, qword_1005E0CE8);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10046AEA4()
{
  v0 = type metadata accessor for Logger();
  sub_10004F154(v0, qword_1005B4088);
  v1 = sub_10000A6F0(v0, qword_1005B4088);
  if (qword_1005A85A0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000A6F0(v0, qword_1005E0CE8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10046AF6C()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 4;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10046AFA0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10046B040(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10046B0A8(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_100003690;

  return sub_100458E30(a1, a2, v2);
}

uint64_t sub_10046B154(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000368C;

  return sub_100458FE4(a1, v4, v5, v6);
}

uint64_t sub_10046B228(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10046B2D0(uint64_t a1)
{
  v4 = *(type metadata accessor for SecureLocationsRelayedMessage(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000368C;

  return sub_10045F548(a1, v6, v7, v1 + v5);
}

uint64_t sub_10046B3C0()
{
  v1 = *(type metadata accessor for SecureLocationsRelayedMessage(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = (v0 + v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2 || EnumCaseMultiPayload == 3)
    {
      v16 = *v6;
    }
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_10;
      }

      v8 = type metadata accessor for Account();
      (*(*(v8 - 8) + 8))(v0 + v3, v8);
      v9 = type metadata accessor for SecureLocationsRelayedMessage.MessageReceived(0);
      v10 = v9[5];
      v11 = type metadata accessor for Destination();
      (*(*(v11 - 8) + 8))(&v6[v10], v11);
      v12 = v9[6];
      v13 = sub_10004B564(&qword_1005AB918, &unk_1004C5800);
      (*(*(v13 - 8) + 8))(&v6[v12], v13);
      sub_1000049D0(*&v6[v9[7]], *&v6[v9[7] + 8]);
      v14 = v9[8];
      v15 = type metadata accessor for MessageContext();
    }

    else
    {
      v17 = type metadata accessor for Account();
      (*(*(v17 - 8) + 8))(v0 + v3, v17);
      v18 = type metadata accessor for SecureLocationsRelayedMessage.MessageDelivered(0);
      v19 = *(v18 + 20);
      v20 = type metadata accessor for UUID();
      (*(*(v20 - 8) + 8))(&v6[v19], v20);
      v14 = *(v18 + 24);
      v15 = type metadata accessor for Destination();
    }

    (*(*(v15 - 8) + 8))(&v6[v14], v15);
  }

LABEL_10:

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10046B658(uint64_t a1)
{
  v4 = *(type metadata accessor for SecureLocationsRelayedMessage(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100003690;

  return sub_10045F548(a1, v6, v7, v1 + v5);
}

void sub_10046B7A8(uint64_t a1)
{
  v2 = sub_10004B564(&qword_1005AB918, &unk_1004C5800);
  v3 = *(v2 - 8);
  v4 = v3[8];
  v5 = __chkstk_darwin(v2);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v22 - v8;
  if (qword_1005A85A0 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_10000A6F0(v10, qword_1005E0CE8);
  v11 = v3[2];
  v11(v9, a1, v2);
  v11(v7, a1, v2);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v24 = v23;
    *v14 = 136446466;
    Message.type.getter();
    v15 = String.init<A>(describing:)();
    v17 = v16;
    v18 = v3[1];
    v18(v9, v2);
    v19 = sub_10000D01C(v15, v17, &v24);

    *(v14 + 4) = v19;
    *(v14 + 12) = 2048;
    v20 = Message.version.getter();
    v18(v7, v2);
    *(v14 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v12, v13, "Unsupported version of %{public}s: %ld", v14, 0x16u);
    sub_100004984(v23);
  }

  else
  {
    v21 = v3[1];
    v21(v7, v2);

    v21(v9, v2);
  }
}

uint64_t sub_10046BA80()
{
  v0 = objc_opt_self();
  sub_10004B564(&qword_1005A9268, &unk_1004D38E0);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v18 = 0;
  v2 = [v0 dataWithJSONObject:isa options:0 error:&v18];

  v3 = v18;
  if (v2)
  {

    v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v5 = v3;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_1005A85A8 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_10000A6F0(v6, qword_1005B4088);

    swift_errorRetain();
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v18 = v11;
      *v9 = 136315394;
      v12 = Dictionary.description.getter();
      v14 = v13;

      v15 = sub_10000D01C(v12, v14, &v18);

      *(v9 + 4) = v15;
      *(v9 + 12) = 2112;
      swift_errorRetain();
      v16 = _swift_stdlib_bridgeErrorToNSError();
      *(v9 + 14) = v16;
      *v10 = v16;
      _os_log_impl(&_mh_execute_header, v7, v8, "Failed to convert %s to JSON: %@", v9, 0x16u);
      sub_100002CE0(v10, &qword_1005A9670, &unk_1004C2480);

      sub_100004984(v11);
    }

    else
    {
    }

    return 0;
  }

  return v4;
}

uint64_t sub_10046BD8C()
{
  v1 = *(type metadata accessor for MessageContext() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (v2 + v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(type metadata accessor for PrivateKey() - 8);
  v9 = (v7 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(type metadata accessor for HashedAdvertisement() - 8);
  v12 = *(v0 + 16);
  v13 = *(v0 + v6);
  v14 = *(v0 + v6 + 8);
  v15 = *(v0 + v7);
  v16 = v0 + ((v9 + v10 + *(v11 + 80)) & ~*(v11 + 80));

  return sub_100475834(v12, v0 + v2, v0 + v5, v13, v14, v15, v0 + v9, v16);
}

uint64_t sub_10046BF7C()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for PrivateKey();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for HashedAdvertisement();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_10046C058()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10046C0E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_10046C160(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_10046C1D0()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_10046C264()
{
  type metadata accessor for Account();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Destination();
    if (v1 <= 0x3F)
    {
      sub_10046C320();
      if (v2 <= 0x3F)
      {
        type metadata accessor for MessageContext();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_10046C320()
{
  if (!qword_1005B4468)
  {
    sub_100459B20();
    v0 = type metadata accessor for Message();
    if (!v1)
    {
      atomic_store(v0, &qword_1005B4468);
    }
  }
}

uint64_t sub_10046C37C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 16))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_10046C3D0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t sub_10046C494()
{
  result = type metadata accessor for SecureLocationsRelayedMessage.MessageDelivered(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for SecureLocationsRelayedMessage.MessageReceived(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_10046C564()
{
  type metadata accessor for MessagingCapability();
  if (v0 <= 0x3F)
  {
    sub_10046C5E8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10046C5E8()
{
  if (!qword_1005B4650)
  {
    type metadata accessor for Destination();
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &qword_1005B4650);
    }
  }
}

uint64_t sub_10046C6A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t), uint64_t (*a6)(uint64_t))
{
  result = a4(319);
  if (v9 <= 0x3F)
  {
    result = a5(319);
    if (v10 <= 0x3F)
    {
      result = a6(319);
      if (v11 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

void sub_10046C760()
{
  if (!qword_1005B46E8)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1005B46E8);
    }
  }
}

uint64_t sub_10046C7B0()
{
  result = type metadata accessor for SecureLocationsRelayAction.HasCapability(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Destination();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for SecureLocationsRelayAction.SendMessage(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

void sub_10046C840()
{
  sub_10046C8E8();
  if (v0 <= 0x3F)
  {
    sub_10046C988();
    if (v1 <= 0x3F)
    {
      sub_10046CA34();
      if (v2 <= 0x3F)
      {
        type metadata accessor for UUID();
        if (v3 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

void sub_10046C8E8()
{
  if (!qword_1005B4848)
  {
    type metadata accessor for Destination();
    sub_10045E3E4(&qword_1005AADF8, 255, &type metadata accessor for Destination);
    v0 = type metadata accessor for Dictionary();
    if (!v1)
    {
      atomic_store(v0, &qword_1005B4848);
    }
  }
}

void sub_10046C988()
{
  if (!qword_1005B4850)
  {
    sub_10004B610(&qword_1005B4858, &qword_1004D9928);
    sub_10001DF0C(&qword_1005B4860, &qword_1005B4858, &qword_1004D9928);
    v0 = type metadata accessor for Dictionary();
    if (!v1)
    {
      atomic_store(v0, &qword_1005B4850);
    }
  }
}

void sub_10046CA34()
{
  if (!qword_1005B4868)
  {
    type metadata accessor for Device();
    sub_10045E3E4(&qword_1005A9250, 255, &type metadata accessor for Device);
    v0 = type metadata accessor for Set();
    if (!v1)
    {
      atomic_store(v0, &qword_1005B4868);
    }
  }
}

unint64_t sub_10046CB14()
{
  result = qword_1005B48A8;
  if (!qword_1005B48A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B48A8);
  }

  return result;
}

unint64_t sub_10046CB6C()
{
  result = qword_1005B48B0;
  if (!qword_1005B48B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B48B0);
  }

  return result;
}

unint64_t sub_10046CBC4()
{
  result = qword_1005B48B8;
  if (!qword_1005B48B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B48B8);
  }

  return result;
}

unint64_t sub_10046CC1C()
{
  result = qword_1005B48C0;
  if (!qword_1005B48C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B48C0);
  }

  return result;
}

unint64_t sub_10046CC70()
{
  result = qword_1005B4910;
  if (!qword_1005B4910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B4910);
  }

  return result;
}

unint64_t sub_10046CCC4()
{
  result = qword_1005B4918;
  if (!qword_1005B4918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B4918);
  }

  return result;
}

unint64_t sub_10046CD18()
{
  result = qword_1005B4920;
  if (!qword_1005B4920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B4920);
  }

  return result;
}

unint64_t sub_10046CD6C()
{
  result = qword_1005B4928;
  if (!qword_1005B4928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B4928);
  }

  return result;
}

unint64_t sub_10046CDC0()
{
  result = qword_1005B4930;
  if (!qword_1005B4930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B4930);
  }

  return result;
}

unint64_t sub_10046CE14()
{
  result = qword_1005B4940;
  if (!qword_1005B4940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B4940);
  }

  return result;
}

unint64_t sub_10046CE68()
{
  result = qword_1005B4948;
  if (!qword_1005B4948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B4948);
  }

  return result;
}

unint64_t sub_10046CEBC()
{
  result = qword_1005B4958;
  if (!qword_1005B4958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B4958);
  }

  return result;
}

unint64_t sub_10046CF10()
{
  result = qword_1005B4960;
  if (!qword_1005B4960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B4960);
  }

  return result;
}

unint64_t sub_10046CF64()
{
  result = qword_1005B49A0;
  if (!qword_1005B49A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B49A0);
  }

  return result;
}

unint64_t sub_10046CFB8()
{
  result = qword_1005B49A8;
  if (!qword_1005B49A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B49A8);
  }

  return result;
}

unint64_t sub_10046D00C()
{
  result = qword_1005B49B0;
  if (!qword_1005B49B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B49B0);
  }

  return result;
}

unint64_t sub_10046D060()
{
  result = qword_1005B49C0;
  if (!qword_1005B49C0)
  {
    sub_10004B610(&qword_1005B49B8, &qword_1004D9E00);
    sub_10045E3E4(&qword_1005B49C8, 255, &type metadata accessor for Device);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B49C0);
  }

  return result;
}

unint64_t sub_10046D118()
{
  result = qword_1005B49D0;
  if (!qword_1005B49D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B49D0);
  }

  return result;
}

unint64_t sub_10046D16C()
{
  result = qword_1005B49E0;
  if (!qword_1005B49E0)
  {
    sub_10004B610(&qword_1005B49D8, &qword_1004D9E08);
    sub_10046D1F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B49E0);
  }

  return result;
}

unint64_t sub_10046D1F8()
{
  result = qword_1005B49E8;
  if (!qword_1005B49E8)
  {
    sub_10004B610(&qword_1005B4858, &qword_1004D9928);
    sub_10045E3E4(&qword_1005B49F0, 255, &type metadata accessor for MessagingCapability);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B49E8);
  }

  return result;
}

unint64_t sub_10046D2B0()
{
  result = qword_1005B49F8;
  if (!qword_1005B49F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B49F8);
  }

  return result;
}

unint64_t sub_10046D304()
{
  result = qword_1005B4A08;
  if (!qword_1005B4A08)
  {
    sub_10004B610(&qword_1005B4A00, &qword_1004D9E10);
    sub_10045E3E4(&qword_1005AAB78, 255, &type metadata accessor for Destination);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B4A08);
  }

  return result;
}

unint64_t sub_10046D3C4()
{
  result = qword_1005B4A10;
  if (!qword_1005B4A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B4A10);
  }

  return result;
}

unint64_t sub_10046D418()
{
  result = qword_1005B4A18;
  if (!qword_1005B4A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B4A18);
  }

  return result;
}

unint64_t sub_10046D46C()
{
  result = qword_1005B4A48;
  if (!qword_1005B4A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B4A48);
  }

  return result;
}

unint64_t sub_10046D4C0()
{
  result = qword_1005B4A50;
  if (!qword_1005B4A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B4A50);
  }

  return result;
}

unint64_t sub_10046D514()
{
  result = qword_1005B4A58;
  if (!qword_1005B4A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B4A58);
  }

  return result;
}

unint64_t sub_10046D568()
{
  result = qword_1005B4A60;
  if (!qword_1005B4A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B4A60);
  }

  return result;
}

unint64_t sub_10046D5BC()
{
  result = qword_1005B4A68;
  if (!qword_1005B4A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B4A68);
  }

  return result;
}

unint64_t sub_10046D610()
{
  result = qword_1005B4A70;
  if (!qword_1005B4A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B4A70);
  }

  return result;
}

unint64_t sub_10046D664()
{
  result = qword_1005B4A80;
  if (!qword_1005B4A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B4A80);
  }

  return result;
}

unint64_t sub_10046D6B8()
{
  result = qword_1005B4A98;
  if (!qword_1005B4A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B4A98);
  }

  return result;
}

unint64_t sub_10046D70C()
{
  result = qword_1005B4AB0;
  if (!qword_1005B4AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B4AB0);
  }

  return result;
}

unint64_t sub_10046D760()
{
  result = qword_1005B4AC8;
  if (!qword_1005B4AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B4AC8);
  }

  return result;
}

unint64_t sub_10046D7B4()
{
  result = qword_1005B4AE0;
  if (!qword_1005B4AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B4AE0);
  }

  return result;
}

unint64_t sub_10046D808()
{
  result = qword_1005B4AF0;
  if (!qword_1005B4AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B4AF0);
  }

  return result;
}

uint64_t sub_10046D85C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E756F636361 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x44496D6F7266 && a2 == 0xE600000000000000)
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

uint64_t sub_10046D978(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E756F636361 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74616E6974736564 && a2 == 0xEB000000006E6F69 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6567617373656DLL && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x617461646174656DLL && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x747865746E6F63 && a2 == 0xE700000000000000)
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

uint64_t sub_10046DB2C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x80000001004EAA30 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x526567617373656DLL && a2 == 0xEF64657669656365 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x73746E756F636361 && a2 == 0xEF6465676E616843 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x4373656369766564 && a2 == 0xEE006465676E6168)
  {

    return 3;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

void *sub_10046DCB4(uint64_t *a1)
{
  v3 = sub_10004B564(&qword_1005B4B00, &qword_1004D9E78);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v11 - v6;
  v8 = a1[4];
  v9 = sub_100011AEC(a1, a1[3]);
  sub_10046DE28();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_100004984(a1);
  }

  else
  {
    sub_1000F4D64();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v7, v3);
    v9 = v11;
    sub_100004984(a1);
  }

  return v9;
}

unint64_t sub_10046DE28()
{
  result = qword_1005B4B08;
  if (!qword_1005B4B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B4B08);
  }

  return result;
}

unint64_t sub_10046DE7C()
{
  result = qword_1005B4B20;
  if (!qword_1005B4B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B4B20);
  }

  return result;
}

unint64_t sub_10046DED0()
{
  result = qword_1005B4B30;
  if (!qword_1005B4B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B4B30);
  }

  return result;
}

unint64_t sub_10046DF24()
{
  result = qword_1005B4B40;
  if (!qword_1005B4B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B4B40);
  }

  return result;
}

unint64_t sub_10046DF78()
{
  result = qword_1005B4B50;
  if (!qword_1005B4B50)
  {
    sub_10004B610(&qword_1005B4B48, &qword_1004D9EA0);
    sub_10045E3E4(&qword_1005B4AE8, 255, &type metadata accessor for Account);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B4B50);
  }

  return result;
}

unint64_t sub_10046E030()
{
  result = qword_1005B4B60;
  if (!qword_1005B4B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B4B60);
  }

  return result;
}

unint64_t sub_10046E084()
{
  result = qword_1005B4B70;
  if (!qword_1005B4B70)
  {
    sub_10004B610(&qword_1005A9288, &qword_1004D9EB0);
    sub_10045E3E4(&qword_1005AAB48, 255, &type metadata accessor for Destination);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B4B70);
  }

  return result;
}

unint64_t sub_10046E13C()
{
  result = qword_1005B4B80;
  if (!qword_1005B4B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B4B80);
  }

  return result;
}

unint64_t sub_10046E190()
{
  result = qword_1005B4B88;
  if (!qword_1005B4B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B4B88);
  }

  return result;
}

unint64_t sub_10046E3D8()
{
  result = qword_1005B4B98;
  if (!qword_1005B4B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B4B98);
  }

  return result;
}

unint64_t sub_10046E430()
{
  result = qword_1005B4BA0;
  if (!qword_1005B4BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B4BA0);
  }

  return result;
}

unint64_t sub_10046E488()
{
  result = qword_1005B4BA8;
  if (!qword_1005B4BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B4BA8);
  }

  return result;
}

unint64_t sub_10046E4E0()
{
  result = qword_1005B4BB0;
  if (!qword_1005B4BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B4BB0);
  }

  return result;
}

unint64_t sub_10046E538()
{
  result = qword_1005B4BB8;
  if (!qword_1005B4BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B4BB8);
  }

  return result;
}

unint64_t sub_10046E590()
{
  result = qword_1005B4BC0;
  if (!qword_1005B4BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B4BC0);
  }

  return result;
}

unint64_t sub_10046E5E8()
{
  result = qword_1005B4BC8;
  if (!qword_1005B4BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B4BC8);
  }

  return result;
}

unint64_t sub_10046E640()
{
  result = qword_1005B4BD0;
  if (!qword_1005B4BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B4BD0);
  }

  return result;
}

unint64_t sub_10046E698()
{
  result = qword_1005B4BD8;
  if (!qword_1005B4BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B4BD8);
  }

  return result;
}

unint64_t sub_10046E6F0()
{
  result = qword_1005B4BE0;
  if (!qword_1005B4BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B4BE0);
  }

  return result;
}

unint64_t sub_10046E748()
{
  result = qword_1005B4BE8;
  if (!qword_1005B4BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B4BE8);
  }

  return result;
}

unint64_t sub_10046E7A0()
{
  result = qword_1005B4BF0;
  if (!qword_1005B4BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B4BF0);
  }

  return result;
}

unint64_t sub_10046E7F8()
{
  result = qword_1005B4BF8;
  if (!qword_1005B4BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B4BF8);
  }

  return result;
}

unint64_t sub_10046E850()
{
  result = qword_1005B4C00;
  if (!qword_1005B4C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B4C00);
  }

  return result;
}

unint64_t sub_10046E8A8()
{
  result = qword_1005B4C08;
  if (!qword_1005B4C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B4C08);
  }

  return result;
}

unint64_t sub_10046E900()
{
  result = qword_1005B4C10;
  if (!qword_1005B4C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B4C10);
  }

  return result;
}

unint64_t sub_10046E958()
{
  result = qword_1005B4C18;
  if (!qword_1005B4C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B4C18);
  }

  return result;
}

unint64_t sub_10046E9B0()
{
  result = qword_1005B4C20;
  if (!qword_1005B4C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B4C20);
  }

  return result;
}

unint64_t sub_10046EA08()
{
  result = qword_1005B4C28;
  if (!qword_1005B4C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B4C28);
  }

  return result;
}

unint64_t sub_10046EA60()
{
  result = qword_1005B4C30;
  if (!qword_1005B4C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B4C30);
  }

  return result;
}

unint64_t sub_10046EAB8()
{
  result = qword_1005B4C38;
  if (!qword_1005B4C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B4C38);
  }

  return result;
}

unint64_t sub_10046EB10()
{
  result = qword_1005B4C40;
  if (!qword_1005B4C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B4C40);
  }

  return result;
}

unint64_t sub_10046EB68()
{
  result = qword_1005B4C48;
  if (!qword_1005B4C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B4C48);
  }

  return result;
}

unint64_t sub_10046EBC0()
{
  result = qword_1005B4C50;
  if (!qword_1005B4C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B4C50);
  }

  return result;
}

unint64_t sub_10046EC18()
{
  result = qword_1005B4C58;
  if (!qword_1005B4C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B4C58);
  }

  return result;
}

unint64_t sub_10046EC70()
{
  result = qword_1005B4C60;
  if (!qword_1005B4C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B4C60);
  }

  return result;
}

unint64_t sub_10046ECC8()
{
  result = qword_1005B4C68;
  if (!qword_1005B4C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B4C68);
  }

  return result;
}

unint64_t sub_10046ED20()
{
  result = qword_1005B4C70;
  if (!qword_1005B4C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B4C70);
  }

  return result;
}

unint64_t sub_10046ED78()
{
  result = qword_1005B4C78;
  if (!qword_1005B4C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B4C78);
  }

  return result;
}

unint64_t sub_10046EDD0()
{
  result = qword_1005B4C80;
  if (!qword_1005B4C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B4C80);
  }

  return result;
}

unint64_t sub_10046EE28()
{
  result = qword_1005B4C88;
  if (!qword_1005B4C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B4C88);
  }

  return result;
}

unint64_t sub_10046EE80()
{
  result = qword_1005B4C90;
  if (!qword_1005B4C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B4C90);
  }

  return result;
}

unint64_t sub_10046EED8()
{
  result = qword_1005B4C98;
  if (!qword_1005B4C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B4C98);
  }

  return result;
}

unint64_t sub_10046EF30()
{
  result = qword_1005B4CA0;
  if (!qword_1005B4CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B4CA0);
  }

  return result;
}

unint64_t sub_10046EF88()
{
  result = qword_1005B4CA8;
  if (!qword_1005B4CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B4CA8);
  }

  return result;
}

unint64_t sub_10046EFE0()
{
  result = qword_1005B4CB0;
  if (!qword_1005B4CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B4CB0);
  }

  return result;
}

unint64_t sub_10046F038()
{
  result = qword_1005B4CB8;
  if (!qword_1005B4CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B4CB8);
  }

  return result;
}

unint64_t sub_10046F090()
{
  result = qword_1005B4CC0;
  if (!qword_1005B4CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B4CC0);
  }

  return result;
}

unint64_t sub_10046F0E8()
{
  result = qword_1005B4CC8;
  if (!qword_1005B4CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B4CC8);
  }

  return result;
}

unint64_t sub_10046F140()
{
  result = qword_1005B4CD0;
  if (!qword_1005B4CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B4CD0);
  }

  return result;
}

unint64_t sub_10046F198()
{
  result = qword_1005B4CD8;
  if (!qword_1005B4CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B4CD8);
  }

  return result;
}

unint64_t sub_10046F1F0()
{
  result = qword_1005B4CE0;
  if (!qword_1005B4CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B4CE0);
  }

  return result;
}

unint64_t sub_10046F248()
{
  result = qword_1005B4CE8;
  if (!qword_1005B4CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B4CE8);
  }

  return result;
}

unint64_t sub_10046F2A0()
{
  result = qword_1005B4CF0;
  if (!qword_1005B4CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B4CF0);
  }

  return result;
}

unint64_t sub_10046F2F8()
{
  result = qword_1005B4CF8;
  if (!qword_1005B4CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B4CF8);
  }

  return result;
}

unint64_t sub_10046F350()
{
  result = qword_1005B4D00;
  if (!qword_1005B4D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B4D00);
  }

  return result;
}

unint64_t sub_10046F3A8()
{
  result = qword_1005B4D08;
  if (!qword_1005B4D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B4D08);
  }

  return result;
}

unint64_t sub_10046F400()
{
  result = qword_1005B4D10;
  if (!qword_1005B4D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B4D10);
  }

  return result;
}

unint64_t sub_10046F458()
{
  result = qword_1005B4D18;
  if (!qword_1005B4D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B4D18);
  }

  return result;
}

unint64_t sub_10046F4B0()
{
  result = qword_1005B4D20;
  if (!qword_1005B4D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B4D20);
  }

  return result;
}

unint64_t sub_10046F508()
{
  result = qword_1005B4D28;
  if (!qword_1005B4D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B4D28);
  }

  return result;
}

unint64_t sub_10046F560()
{
  result = qword_1005B4D30;
  if (!qword_1005B4D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B4D30);
  }

  return result;
}

unint64_t sub_10046F5B8()
{
  result = qword_1005B4D38;
  if (!qword_1005B4D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B4D38);
  }

  return result;
}

unint64_t sub_10046F610()
{
  result = qword_1005B4D40;
  if (!qword_1005B4D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B4D40);
  }

  return result;
}

unint64_t sub_10046F668()
{
  result = qword_1005B4D48;
  if (!qword_1005B4D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B4D48);
  }

  return result;
}

unint64_t sub_10046F6C0()
{
  result = qword_1005B4D50;
  if (!qword_1005B4D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B4D50);
  }

  return result;
}

unint64_t sub_10046F718()
{
  result = qword_1005B4D58;
  if (!qword_1005B4D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B4D58);
  }

  return result;
}

unint64_t sub_10046F770()
{
  result = qword_1005B4D60;
  if (!qword_1005B4D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B4D60);
  }

  return result;
}

unint64_t sub_10046F7C8()
{
  result = qword_1005B4D68;
  if (!qword_1005B4D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B4D68);
  }

  return result;
}

unint64_t sub_10046F820()
{
  result = qword_1005B4D70;
  if (!qword_1005B4D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B4D70);
  }

  return result;
}

unint64_t sub_10046F878()
{
  result = qword_1005B4D78;
  if (!qword_1005B4D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B4D78);
  }

  return result;
}

unint64_t sub_10046F8D0()
{
  result = qword_1005B4D80;
  if (!qword_1005B4D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B4D80);
  }

  return result;
}

unint64_t sub_10046F928()
{
  result = qword_1005B4D88;
  if (!qword_1005B4D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B4D88);
  }

  return result;
}

unint64_t sub_10046F980()
{
  result = qword_1005B4D90;
  if (!qword_1005B4D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B4D90);
  }

  return result;
}

unint64_t sub_10046F9D8()
{
  result = qword_1005B4D98;
  if (!qword_1005B4D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B4D98);
  }

  return result;
}

unint64_t sub_10046FA30()
{
  result = qword_1005B4DA0;
  if (!qword_1005B4DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B4DA0);
  }

  return result;
}

unint64_t sub_10046FA88()
{
  result = qword_1005B4DA8;
  if (!qword_1005B4DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B4DA8);
  }

  return result;
}

unint64_t sub_10046FAE0()
{
  result = qword_1005B4DB0;
  if (!qword_1005B4DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B4DB0);
  }

  return result;
}

unint64_t sub_10046FB38()
{
  result = qword_1005B4DB8;
  if (!qword_1005B4DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B4DB8);
  }

  return result;
}

unint64_t sub_10046FB90()
{
  result = qword_1005B4DC0;
  if (!qword_1005B4DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B4DC0);
  }

  return result;
}

unint64_t sub_10046FBE8()
{
  result = qword_1005B4DC8;
  if (!qword_1005B4DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B4DC8);
  }

  return result;
}

unint64_t sub_10046FC40()
{
  result = qword_1005B4DD0;
  if (!qword_1005B4DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B4DD0);
  }

  return result;
}

unint64_t sub_10046FC98()
{
  result = qword_1005B4DD8;
  if (!qword_1005B4DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B4DD8);
  }

  return result;
}

unint64_t sub_10046FCF0()
{
  result = qword_1005B4DE0;
  if (!qword_1005B4DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B4DE0);
  }

  return result;
}

unint64_t sub_10046FD48()
{
  result = qword_1005B4DE8;
  if (!qword_1005B4DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B4DE8);
  }

  return result;
}

unint64_t sub_10046FDA0()
{
  result = qword_1005B4DF0;
  if (!qword_1005B4DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B4DF0);
  }

  return result;
}

unint64_t sub_10046FDF8()
{
  result = qword_1005B4DF8;
  if (!qword_1005B4DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B4DF8);
  }

  return result;
}

unint64_t sub_10046FE50()
{
  result = qword_1005B4E00;
  if (!qword_1005B4E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B4E00);
  }

  return result;
}

unint64_t sub_10046FEA8()
{
  result = qword_1005B4E08;
  if (!qword_1005B4E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B4E08);
  }

  return result;
}

unint64_t sub_10046FF00()
{
  result = qword_1005B4E10;
  if (!qword_1005B4E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B4E10);
  }

  return result;
}

unint64_t sub_10046FF58()
{
  result = qword_1005B4E18;
  if (!qword_1005B4E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B4E18);
  }

  return result;
}

unint64_t sub_10046FFB0()
{
  result = qword_1005B4E20;
  if (!qword_1005B4E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B4E20);
  }

  return result;
}

unint64_t sub_100470008()
{
  result = qword_1005B4E28;
  if (!qword_1005B4E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B4E28);
  }

  return result;
}

unint64_t sub_100470060()
{
  result = qword_1005B4E30;
  if (!qword_1005B4E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B4E30);
  }

  return result;
}

unint64_t sub_1004700B8()
{
  result = qword_1005B4E38;
  if (!qword_1005B4E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B4E38);
  }

  return result;
}

unint64_t sub_100470110()
{
  result = qword_1005B4E40;
  if (!qword_1005B4E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B4E40);
  }

  return result;
}

unint64_t sub_100470168()
{
  result = qword_1005B4E48;
  if (!qword_1005B4E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B4E48);
  }

  return result;
}

unint64_t sub_1004701C0()
{
  result = qword_1005B4E50;
  if (!qword_1005B4E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B4E50);
  }

  return result;
}

unint64_t sub_100470218()
{
  result = qword_1005B4E58;
  if (!qword_1005B4E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B4E58);
  }

  return result;
}

uint64_t sub_10047026C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6567617373656DLL && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x617461646174656DLL && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x736E6F6974706FLL && a2 == 0xE700000000000000)
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

uint64_t sub_100470384(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7472617473 && a2 == 0xE500000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1886352499 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6261706143736168 && a2 == 0xED00007974696C69 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7473696765527369 && a2 == 0xEC00000064657265 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7373654D646E6573 && a2 == 0xEB00000000656761 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD00000000000001CLL && 0x80000001004EA9B0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001004EA9D0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x63697665446C6C61 && a2 == 0xEA00000000007365)
  {

    return 7;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t sub_100470638(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1684631414 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1819242338 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001004EA9F0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001004EAA10 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x73656369766564 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 1684632949 && a2 == 0xE400000000000000)
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

uint64_t sub_100470834(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001004EAA50 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7865646E69 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x4B65746176697270 && a2 == 0xEA00000000007965 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001004EAA70 == a2)
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

uint64_t sub_100470A18(uint64_t a1)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = v1;
  return _swift_task_switch(sub_100470A38, 0, 0);
}

uint64_t sub_100470A38()
{
  v1 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v2 = swift_task_alloc();
  *(v0 + 72) = v2;
  *v2 = v0;
  v2[1] = sub_100470B10;
  v3 = *(v0 + 64);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 40, 0, 0, 0xD000000000000013, 0x80000001004E8810, sub_100479D64, v3, &type metadata for Data);
}

uint64_t sub_100470B10()
{
  v2 = *(*v1 + 72);
  v5 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = sub_100470DA4;
  }

  else
  {
    v3 = sub_100470C24;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100470C24()
{
  v1 = v0[10];
  v3 = v0[5];
  v2 = v0[6];
  v4 = type metadata accessor for PropertyListDecoder();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  PropertyListDecoder.init()();
  sub_100479DAC();
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  if (v1)
  {

    sub_1000049D0(v3, v2);
    v11 = v0[1];

    return v11();
  }

  else
  {
    v7 = v0[7];
    v8 = v0[2];
    v9 = v0[3];
    v10 = v0[4];
    sub_100005F6C(v9, v10);
    PrivateKey.init(data:)();

    sub_1000049D0(v3, v2);
    sub_1000049D0(v9, v10);
    v13 = v0[1];

    return v13(v8);
  }
}

uint64_t sub_100470DDC()
{
  v1 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *v2 = v0;
  v2[1] = sub_100470EB4;
  v3 = *(v0 + 40);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 16, 0, 0, 0xD000000000000016, 0x80000001004EAB70, sub_100478C80, v3, &type metadata for Data);
}

uint64_t sub_100470EB4()
{
  v2 = *(*v1 + 48);
  v5 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v3 = sub_1004710EC;
  }

  else
  {
    v3 = sub_100470FC8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100470FC8()
{
  v1 = v0[7];
  v2 = v0[2];
  v3 = v0[3];
  v4 = type metadata accessor for PropertyListDecoder();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  PropertyListDecoder.init()();
  sub_10004B564(&qword_1005B24F0, &qword_1004DBFF0);
  sub_100478CC8();
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();

  sub_1000049D0(v2, v3);
  if (v1)
  {
    v7 = v0[1];

    return v7();
  }

  else
  {
    v9 = v0[4];
    v10 = v0[1];

    return v10(v9);
  }
}

uint64_t sub_100471104(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  return _swift_task_switch(sub_100471128, 0, 0);
}

uint64_t sub_100471128()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = PrivateKey.data.getter();
  v5 = v4;
  v0[8] = v3;
  v0[9] = v4;
  v6 = type metadata accessor for PropertyListEncoder();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  v9 = PropertyListEncoder.init()();
  v0[2] = v2;
  v0[10] = v9;
  v0[3] = v3;
  v0[4] = v5;
  sub_100479D10();
  v10 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v0[11] = v10;
  v0[12] = v11;
  v12 = v10;
  v13 = v11;
  v14 = v0[7];
  v15 = swift_task_alloc();
  v0[13] = v15;
  v15[2] = v14;
  v15[3] = v12;
  v15[4] = v13;
  v16 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v17 = swift_task_alloc();
  v0[14] = v17;
  *v17 = v0;
  v17[1] = sub_1004712F4;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v17, 0, 0, 0xD000000000000015, 0x80000001004E87F0, sub_100395E9C, v15, &type metadata for () + 8);
}

uint64_t sub_1004712F4()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v7 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v4 = sub_100471498;
  }

  else
  {
    v5 = *(v2 + 104);

    v4 = sub_100471410;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100471410()
{
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[8];
  sub_1000049D0(v0[11], v0[12]);

  sub_1000049D0(v3, v1);
  v4 = v0[1];

  return v4();
}

uint64_t sub_100471498()
{
  v2 = v0[12];
  v1 = v0[13];
  v4 = v0[10];
  v3 = v0[11];
  v6 = v0[8];
  v5 = v0[9];

  sub_1000049D0(v3, v2);

  sub_1000049D0(v6, v5);
  v7 = v0[15];
  v8 = v0[1];

  return v8();
}

uint64_t sub_100471534(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  v4 = type metadata accessor for ContinuousClock.Instant();
  v3[7] = v4;
  v5 = *(v4 - 8);
  v3[8] = v5;
  v6 = *(v5 + 64) + 15;
  v3[9] = swift_task_alloc();

  return _swift_task_switch(sub_1004715F8, 0, 0);
}

uint64_t sub_1004715F8()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 48);
  v7 = *(v0 + 32);
  static ContinuousClock.now.getter();
  v3 = swift_task_alloc();
  *(v0 + 80) = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v7;
  *(v3 + 40) = v1;
  v4 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v5 = swift_task_alloc();
  *(v0 + 88) = v5;
  *v5 = v0;
  v5[1] = sub_100471718;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 16, 0, 0, 0xD00000000000002ALL, 0x80000001004EABD0, sub_1004793EC, v3, &type metadata for SecureLocationsSubscriptionResult);
}

uint64_t sub_100471718()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v7 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v4 = sub_1004718CC;
  }

  else
  {
    v5 = *(v2 + 80);

    v4 = sub_100471834;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100471834()
{
  v1 = v0[2];
  v2 = v0[3];
  (*(v0[8] + 8))(v0[9], v0[7]);

  v3 = v0[1];
  v4.n128_u64[0] = v1;

  return v3(v2, v4);
}

uint64_t sub_1004718CC()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[7];
  v4 = v0[8];

  (*(v4 + 8))(v2, v3);

  v5 = v0[1];
  v6 = v0[12];

  return v5();
}

uint64_t sub_10047195C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v31 = a3;
  v28 = a2;
  v34 = type metadata accessor for DispatchWorkItemFlags();
  v36 = *(v34 - 8);
  v5 = *(v36 + 64);
  __chkstk_darwin(v34);
  v32 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for DispatchQoS();
  v33 = *(v35 - 8);
  v7 = *(v33 + 64);
  __chkstk_darwin(v35);
  v29 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for UUID();
  v27 = v9;
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for MessageContext();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = *(v3 + 88);
  (*(v14 + 16))(v16, a1, v13);
  (*(v10 + 16))(v12, v28, v9);
  v17 = (*(v14 + 80) + 24) & ~*(v14 + 80);
  v18 = (v15 + *(v10 + 80) + v17) & ~*(v10 + 80);
  v19 = (v11 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  *(v20 + 16) = v3;
  (*(v14 + 32))(v20 + v17, v16, v13);
  (*(v10 + 32))(v20 + v18, v12, v27);
  *(v20 + v19) = v31;
  aBlock[4] = sub_100479108;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100020828;
  aBlock[3] = &unk_10059DFA8;
  v21 = _Block_copy(aBlock);

  v22 = v29;
  static DispatchQoS.unspecified.getter();
  v37 = _swiftEmptyArrayStorage;
  sub_10001E080(&unk_1005ABAC0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10004B564(&unk_1005A9700, &qword_1004C3820);
  sub_10001DF54(&qword_1005ABAD0, &unk_1005A9700, &qword_1004C3820);
  v23 = v32;
  v24 = v34;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v21);
  (*(v36 + 8))(v23, v24);
  (*(v33 + 8))(v22, v35);
}

uint64_t sub_100471DE0(uint64_t a1, uint64_t a2)
{
  v25 = a1;
  v30 = type metadata accessor for DispatchWorkItemFlags();
  v32 = *(v30 - 8);
  v4 = *(v32 + 64);
  __chkstk_darwin(v30);
  v28 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for DispatchQoS();
  v29 = *(v31 - 8);
  v6 = *(v29 + 64);
  __chkstk_darwin(v31);
  v26 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for MessageContext();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *(v2 + 88);
  (*(v13 + 16))(v15, v25, v12);
  (*(v9 + 16))(v11, a2, v8);
  v16 = (*(v13 + 80) + 24) & ~*(v13 + 80);
  v17 = (v14 + *(v9 + 80) + v16) & ~*(v9 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = v2;
  (*(v13 + 32))(v18 + v16, v15, v12);
  (*(v9 + 32))(v18 + v17, v11, v8);
  aBlock[4] = sub_1004791D4;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100020828;
  aBlock[3] = &unk_10059DFF8;
  v19 = _Block_copy(aBlock);

  v20 = v26;
  static DispatchQoS.unspecified.getter();
  v33 = _swiftEmptyArrayStorage;
  sub_10001E080(&unk_1005ABAC0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10004B564(&unk_1005A9700, &qword_1004C3820);
  sub_10001DF54(&qword_1005ABAD0, &unk_1005A9700, &qword_1004C3820);
  v21 = v28;
  v22 = v30;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v19);
  (*(v32 + 8))(v21, v22);
  (*(v29 + 8))(v20, v31);
}

id sub_100472248()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = *(v0 + 16);
  }

  else
  {
    v3 = [objc_allocWithZone(SPSecureLocationsManager) init];
    v4 = *(v0 + 16);
    *(v0 + 16) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

id sub_1004722B4@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for BeaconStore();
  v2 = swift_allocObject();
  strcpy((v2 + 16), "findmylocate");
  *(v2 + 29) = 0;
  *(v2 + 30) = -5120;
  *(v2 + 32) = 0xD000000000000019;
  *(v2 + 40) = 0x80000001004EAD20;
  *(v2 + 48) = 0xD000000000000020;
  *(v2 + 56) = 0x80000001004EAD40;
  result = kSecAttrViewHintFindMy;
  if (kSecAttrViewHintFindMy)
  {
    *(v2 + 64) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v2 + 72) = v4;
    v5 = type metadata accessor for BeaconSharingManager();
    v6 = *(v5 + 48);
    v7 = *(v5 + 52);
    swift_allocObject();

    v9 = sub_100124110(v8);
    type metadata accessor for SecureLocationsClientSessionPool();
    v10 = swift_allocObject();
    type metadata accessor for SecureLocationsSubscriptionManager();
    swift_allocObject();
    v11 = sub_100122DEC();
    v12 = type metadata accessor for SecureLocationsKeyManager(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    swift_allocObject();

    v15 = sub_1000F6404(v2, v9);

    type metadata accessor for SecureLocationsPayloadManager();
    swift_allocObject();

    v16 = sub_1000FA0C0(v2, v15);
    v17 = type metadata accessor for SecureLocationsCoordinator();
    v18 = *(v17 + 48);
    v19 = *(v17 + 52);
    swift_allocObject();

    v20 = sub_10008E7D0(v16, v15, v9, v10, v11);
    result = [objc_allocWithZone(NSCountedSet) init];
    *a1 = v2;
    a1[1] = v9;
    a1[2] = v15;
    a1[3] = v16;
    a1[4] = v20;
    a1[5] = v10;
    a1[6] = result;
    a1[7] = v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1004724D8()
{
  v1 = type metadata accessor for OS_dispatch_queue.Attributes();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1);
  v3 = type metadata accessor for DispatchQoS();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v16 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v5 = *(v16 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v16);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v0 + 16) = 0;
  sub_1004722B4(v19);
  v9 = v19[1];
  *(v0 + 24) = v19[0];
  *(v0 + 40) = v9;
  v10 = v19[3];
  *(v0 + 56) = v19[2];
  *(v0 + 72) = v10;
  sub_10004B518();
  v13[2] = "cationReliability";
  v14 = enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:);
  v11 = *(v5 + 104);
  v15 = v5 + 104;
  v17 = v11;
  v11(v8);
  static DispatchQoS.unspecified.getter();
  v18 = _swiftEmptyArrayStorage;
  v13[1] = sub_10001E080(&qword_1005A8670, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_10004B564(&unk_1005AB400, &unk_1004C0BF0);
  sub_10001DF54(&qword_1005A8680, &unk_1005AB400, &unk_1004C0BF0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  *(v0 + 88) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v17(v8, v14, v16);
  static DispatchQoS.unspecified.getter();
  v18 = _swiftEmptyArrayStorage;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  *(v0 + 96) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v0 + 104) = 0u;
  *(v0 + 120) = 0u;
  return v0;
}

uint64_t sub_10047280C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v27 = a5;
  v29 = type metadata accessor for DispatchWorkItemFlags();
  v32 = *(v29 - 8);
  v9 = *(v32 + 64);
  __chkstk_darwin(v29);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v30 = *(v12 - 8);
  v31 = v12;
  v13 = *(v30 + 64);
  __chkstk_darwin(v12);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10004B564(&qword_1005B1C20, &qword_1004D5AF0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v26 - v19;
  v28 = *(a2 + 88);
  (*(v17 + 16))(&v26 - v19, a1, v16);
  v21 = (*(v17 + 80) + 48) & ~*(v17 + 80);
  v22 = swift_allocObject();
  *(v22 + 2) = a2;
  *(v22 + 3) = a3;
  *(v22 + 4) = a4;
  *(v22 + 5) = v27;
  (*(v17 + 32))(&v22[v21], v20, v16);
  aBlock[4] = sub_100479C9C;
  aBlock[5] = v22;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100020828;
  aBlock[3] = &unk_10059E340;
  v23 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v33 = _swiftEmptyArrayStorage;
  sub_10001E080(&unk_1005ABAC0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10004B564(&unk_1005A9700, &qword_1004C3820);
  sub_10001DF54(&qword_1005ABAD0, &unk_1005A9700, &qword_1004C3820);
  v24 = v29;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v23);
  (*(v32 + 8))(v11, v24);
  (*(v30 + 8))(v15, v31);
}

uint64_t sub_100472BCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v23 = a5;
  v22 = sub_10004B564(&qword_1005B1C20, &qword_1004D5AF0);
  v9 = *(v22 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v22);
  v12 = &v21 - v11;
  v13 = *(a1 + 40);
  sub_10004B564(&qword_1005AFA60, &unk_1004CE390);
  v14 = swift_allocObject();
  v21 = xmmword_1004C1900;
  *(v14 + 16) = xmmword_1004C1900;
  *(v14 + 32) = a2;
  *(v14 + 40) = a3;
  sub_10004B564(&qword_1005B4F60, &qword_1004DC020);
  inited = swift_initStackObject();
  *(inited + 16) = v21;
  *(inited + 32) = a2;
  *(inited + 40) = a3;
  *(inited + 48) = a4;
  swift_bridgeObjectRetain_n();

  v16 = sub_10020A174(inited);
  swift_setDeallocating();
  sub_100002CE0(inited + 32, &qword_1005B4F68, &qword_1004DC028);
  v17 = v22;
  (*(v9 + 16))(v12, v23, v22);
  v18 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v19 = swift_allocObject();
  (*(v9 + 32))(v19 + v18, v12, v17);
  sub_1000EB6B4(v14, v16, 1, sub_10047A29C, v19);
}

uint64_t sub_100472DF8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = sub_10004B564(&qword_1005B1C20, &qword_1004D5AF0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v15 - v10;
  (*(v8 + 16))(&v15 - v10, a1, v7);
  v12 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v13 = swift_allocObject();
  (*(v8 + 32))(v13 + v12, v11, v7);
  sub_100472F58(a3, a4, sub_100479B84, v13);
}

void sub_100472F58(uint64_t a1, void *a2, void (*a3)(void), uint64_t a4)
{
  v5 = v4;
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS();
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15);
  if (*(a1 + 16))
  {
    v46 = a2;
    v47 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
    v48 = v18;
    v49 = v14;
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_10000A6F0(v19, qword_1005DFB98);

    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v45 = a4;
      v43 = v23;
      aBlock[0] = v23;
      *v22 = 141558275;
      *(v22 + 4) = 1752392040;
      *(v22 + 12) = 2081;
      v24 = Array.description.getter();
      v44 = v5;
      v26 = v15;
      v27 = v11;
      v28 = v10;
      v29 = a3;
      v30 = sub_10000D01C(v24, v25, aBlock);
      v5 = v44;

      *(v22 + 14) = v30;
      a3 = v29;
      v10 = v28;
      v11 = v27;
      v15 = v26;
      _os_log_impl(&_mh_execute_header, v20, v21, "unsubscribe in daemon for %{private,mask.hash}s", v22, 0x16u);
      sub_100004984(v43);
      a4 = v45;
    }

    v31 = *(v5 + 88);
    v32 = swift_allocObject();
    v33 = v46;
    v32[2] = v46;
    v32[3] = a1;
    v32[4] = a3;
    v32[5] = a4;
    v32[6] = v5;
    aBlock[4] = sub_100479BD8;
    aBlock[5] = v32;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100020828;
    aBlock[3] = &unk_10059E200;
    v34 = _Block_copy(aBlock);

    v35 = v33;

    v36 = v47;
    static DispatchQoS.unspecified.getter();
    v50 = _swiftEmptyArrayStorage;
    sub_10001E080(&unk_1005ABAC0, &type metadata accessor for DispatchWorkItemFlags);
    sub_10004B564(&unk_1005A9700, &qword_1004C3820);
    sub_10001DF54(&qword_1005ABAD0, &unk_1005A9700, &qword_1004C3820);
    v37 = v49;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v34);
    (*(v11 + 8))(v37, v10);
    (*(v48 + 8))(v36, v15);
  }

  else
  {
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v38 = type metadata accessor for Logger();
    sub_10000A6F0(v38, qword_1005DFB98);
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&_mh_execute_header, v39, v40, "unsubscribe called with zero ids", v41, 2u);
    }

    type metadata accessor for SecureLocationsError(0);
    v50 = 4;
    sub_1000BC07C(_swiftEmptyArrayStorage);
    sub_10001E080(&qword_1005A88C0, type metadata accessor for SecureLocationsError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v42 = aBlock[0];
    a3(aBlock[0]);
  }
}

void sub_100473500(void *a1, void *a2, void (*a3)(), uint64_t a4, uint64_t a5)
{
  if ([a1 subscriptionMode] == 2)
  {
    v10 = a2[2];
    if (v10 == 1)
    {
      v11 = *(a5 + 56);
      v13 = a2[4];
      v12 = a2[5];

      sub_1000A67B4(v13, v12, a1, a3, a4);
    }

    else
    {
      if (qword_1005A7EE8 != -1)
      {
        swift_once();
      }

      v16 = type metadata accessor for Logger();
      sub_10000A6F0(v16, qword_1005DFB98);

      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 134217984;
        *(v19 + 4) = v10;

        _os_log_impl(&_mh_execute_header, v17, v18, "unsubscribe for live can be called with only 1 id. Id count %ld", v19, 0xCu);
      }

      else
      {
      }

      type metadata accessor for SecureLocationsError(0);
      sub_1000BC07C(_swiftEmptyArrayStorage);
      sub_10001E080(&qword_1005A88C0, type metadata accessor for SecureLocationsError);
      _BridgedStoredNSError.init(_:userInfo:)();
      a3();
    }
  }

  else
  {
    v14 = *(a5 + 56);

    v15 = a1;

    sub_1000C2120(a2, v15, v14, a5, v15, a3, a4);
  }
}

uint64_t sub_1004737A8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for DispatchQoS();
  v15 = *(v24 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v24);
  v18 = v23 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23[1] = *(a2 + 88);
  v19 = swift_allocObject();
  v19[2] = a2;
  v19[3] = a3;
  v19[4] = a4;
  v19[5] = a5;
  v19[6] = a1;
  aBlock[4] = sub_100479BF0;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100020828;
  aBlock[3] = &unk_10059E250;
  v20 = _Block_copy(aBlock);

  v21 = a3;

  swift_errorRetain();
  static DispatchQoS.unspecified.getter();
  v25 = _swiftEmptyArrayStorage;
  sub_10001E080(&unk_1005ABAC0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10004B564(&unk_1005A9700, &qword_1004C3820);
  sub_10001DF54(&qword_1005ABAD0, &unk_1005A9700, &qword_1004C3820);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v20);
  (*(v11 + 8))(v14, v10);
  (*(v15 + 8))(v18, v24);
}

uint64_t sub_100473A90(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v42 = *(v10 - 8);
  v11 = *(v42 + 64);
  __chkstk_darwin(v10);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchQoS();
  v40 = *(v14 - 8);
  v41 = v14;
  v15 = *(v40 + 64);
  __chkstk_darwin(v14);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(*(a1 + 80) + 16);
  OS_dispatch_queue.sync<A>(execute:)();
  v19 = aBlock;
  if ([a2 subscriptionMode] != 1 || (v19 & 1) != 0)
  {
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    sub_10000A6F0(v31, qword_1005DFB98);
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&_mh_execute_header, v32, v33, "unsubscribe shallow not removing client connection", v34, 2u);
    }

    v35 = *(a1 + 96);
    v36 = swift_allocObject();
    v36[2] = a3;
    v36[3] = a4;
    v36[4] = a5;
    v48 = sub_100479C3C;
    v49 = v36;
    aBlock = _NSConcreteStackBlock;
    v45 = 1107296256;
    v30 = &unk_10059E2A0;
  }

  else
  {
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_10000A6F0(v20, qword_1005DFB98);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v39 = a4;
      v25 = a5;
      v26 = a3;
      v27 = v24;
      aBlock = v24;
      *v23 = 136315138;
      *(v23 + 4) = sub_10000D01C(0xD000000000000027, 0x80000001004EAD70, &aBlock);
      _os_log_impl(&_mh_execute_header, v21, v22, "%s unsubscribe shallow removing client connection", v23, 0xCu);
      sub_100004984(v27);
      a3 = v26;
      a5 = v25;
      a4 = v39;
    }

    v28 = *(a1 + 96);
    v29 = swift_allocObject();
    v29[2] = a3;
    v29[3] = a4;
    v29[4] = a5;
    v48 = sub_10047A2A0;
    v49 = v29;
    aBlock = _NSConcreteStackBlock;
    v45 = 1107296256;
    v30 = &unk_10059E2F0;
  }

  v46 = sub_100020828;
  v47 = v30;
  v37 = _Block_copy(&aBlock);

  swift_errorRetain();
  static DispatchQoS.unspecified.getter();
  v43 = _swiftEmptyArrayStorage;
  sub_10001E080(&unk_1005ABAC0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10004B564(&unk_1005A9700, &qword_1004C3820);
  sub_10001DF54(&qword_1005ABAD0, &unk_1005A9700, &qword_1004C3820);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v37);
  (*(v42 + 8))(v13, v10);
  (*(v40 + 8))(v17, v41);
}

uint64_t sub_100473FFC(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_10000A6F0(v5, qword_1005DFB98);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v11 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_10000D01C(0xD000000000000027, 0x80000001004EAD70, &v11);
    _os_log_impl(&_mh_execute_header, v6, v7, "%s - Will call completion on completionQueue", v8, 0xCu);
    sub_100004984(v9);
  }

  return a1(a3);
}

uint64_t sub_100474160(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v25 = a4;
  v26 = a3;
  v24 = a2;
  v7 = sub_10004B564(&qword_1005B4F58, &qword_1004DC018);
  v23 = v7;
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v23 - v10;
  v12 = type metadata accessor for ContinuousClock.Instant();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v15, a5, v12);
  (*(v8 + 16))(v11, a1, v7);
  v16 = (*(v13 + 80) + 24) & ~*(v13 + 80);
  v17 = (v14 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = (*(v8 + 80) + v17 + 8) & ~*(v8 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = v24;
  (*(v13 + 32))(v19 + v16, v15, v12);
  v20 = v25;
  *(v19 + v17) = v25;
  (*(v8 + 32))(v19 + v18, v11, v23);

  v21 = v20;
  sub_100474488(v26, v21, sub_1004793F8, v19);
}

uint64_t sub_1004743B8(uint64_t a1, uint64_t a2, int a3, uint64_t a4, id a5)
{
  sub_100479548(a4, [a5 subscriptionMode], a1, a2);
  if (a2)
  {
    swift_errorRetain();
    sub_10004B564(&qword_1005B4F58, &qword_1004DC018);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {

    sub_10004B564(&qword_1005B4F58, &qword_1004DC018);
    return CheckedContinuation.resume(returning:)();
  }
}

void sub_100474488(uint64_t a1, void *a2, void (*a3)(void *, void, double), uint64_t a4)
{
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchQoS();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v14);
  v19 = &v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 16))
  {
    v31 = v17;
    v20 = [objc_opt_self() currentConnection];
    v29 = *(v4 + 88);
    v30 = v20;
    v21 = swift_allocObject();
    v21[2] = a2;
    v21[3] = a1;
    v21[4] = a3;
    v21[5] = a4;
    v21[6] = v4;
    aBlock[4] = sub_10047950C;
    aBlock[5] = v21;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100020828;
    aBlock[3] = &unk_10059E0E8;
    v22 = _Block_copy(aBlock);
    v23 = a2;

    static DispatchQoS.unspecified.getter();
    v32 = _swiftEmptyArrayStorage;
    sub_10001E080(&unk_1005ABAC0, &type metadata accessor for DispatchWorkItemFlags);
    sub_10004B564(&unk_1005A9700, &qword_1004C3820);
    sub_10001DF54(&qword_1005ABAD0, &unk_1005A9700, &qword_1004C3820);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v22);

    (*(v10 + 8))(v13, v9);
    (*(v15 + 8))(v19, v31);
  }

  else
  {
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_10000A6F0(v24, qword_1005DFB98);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, v25, v26, "subscribeAndFetch called with empty array of IDs", v27, 2u);
    }

    [a2 subscriptionMode];
    type metadata accessor for SecureLocationsError(0);
    v32 = 0;
    sub_1000BC07C(_swiftEmptyArrayStorage);
    sub_10001E080(&qword_1005A88C0, type metadata accessor for SecureLocationsError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v28 = aBlock[0];
    a3(_swiftEmptyArrayStorage, aBlock[0], 15.0);
  }
}

void sub_1004748F4(void *a1, void *a2, void (*a3)(void *, uint64_t, double), uint64_t a4, uint64_t a5)
{
  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_10000A6F0(v10, qword_1005DFB98);
  v11 = a1;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v37 = a4;
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v38 = v15;
    *v14 = 136446210;
    [v11 subscriptionMode];
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    v18 = sub_10000D01C(v16, v17, &v38);

    *(v14 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v12, v13, "subscribeAndFetch called with mode %{public}s", v14, 0xCu);
    sub_100004984(v15);

    a4 = v37;
  }

  if ([v11 subscriptionMode] != 2)
  {
    v32 = *(a5 + 56);
    sub_100094AC4(a2, v11, 0, a3, a4);
    return;
  }

  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v38 = v22;
    *v21 = 136315138;
    if (!a2[2])
    {
      __break(1u);
      return;
    }

    v23 = v22;
    v24 = a2[4];
    v25 = a2[5];

    v26 = sub_10000D01C(v24, v25, &v38);

    *(v21 + 4) = v26;
    _os_log_impl(&_mh_execute_header, v19, v20, "subscribeAndFetch called with live mode %s, ", v21, 0xCu);
    sub_100004984(v23);
  }

  v27 = a2[2];
  if (v27 == 1)
  {
    v28 = *(a5 + 56);
    v30 = a2[4];
    v29 = a2[5];
    v31 = type metadata accessor for Transaction();
    __chkstk_darwin(v31);

    static Transaction.named<A>(_:with:)();

    sub_1000942D4(a2, v11, 0, v28);
  }

  else
  {

    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 134217984;
      *(v35 + 4) = v27;

      _os_log_impl(&_mh_execute_header, v33, v34, "subscribeAndFetch called with live mode and %ld ids. Only 1 id is supported", v35, 0xCu);
    }

    else
    {
    }

    [v11 subscriptionMode];
    type metadata accessor for SecureLocationsError(0);
    sub_1000BC07C(_swiftEmptyArrayStorage);
    sub_10001E080(&qword_1005A88C0, type metadata accessor for SecureLocationsError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v36 = v38;
    a3(_swiftEmptyArrayStorage, v38, 15.0);
  }
}

uint64_t sub_100474E3C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v33 = a7;
  v30 = a4;
  v31 = a6;
  v34 = type metadata accessor for DispatchWorkItemFlags();
  v37 = *(v34 - 8);
  v10 = *(v37 + 64);
  __chkstk_darwin(v34);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS();
  v35 = *(v13 - 8);
  v36 = v13;
  v14 = *(v35 + 64);
  __chkstk_darwin(v13);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10004B564(&qword_1005B1C20, &qword_1004D5AF0);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = &v29 - v20;
  v32 = *(a2 + 88);
  (*(v18 + 16))(&v29 - v20, a1, v17);
  v22 = (*(v18 + 80) + 40) & ~*(v18 + 80);
  v23 = swift_allocObject();
  *(v23 + 2) = a2;
  *(v23 + 3) = a3;
  v24 = a3;
  v25 = v30;
  *(v23 + 4) = v30;
  (*(v18 + 32))(&v23[v22], v21, v17);
  aBlock[4] = v31;
  aBlock[5] = v23;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100020828;
  aBlock[3] = v33;
  v26 = _Block_copy(aBlock);

  sub_100005F6C(v24, v25);
  static DispatchQoS.unspecified.getter();
  v38 = _swiftEmptyArrayStorage;
  sub_10001E080(&unk_1005ABAC0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10004B564(&unk_1005A9700, &qword_1004C3820);
  sub_10001DF54(&qword_1005ABAD0, &unk_1005A9700, &qword_1004C3820);
  v27 = v34;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v26);
  (*(v37 + 8))(v12, v27);
  (*(v35 + 8))(v16, v36);
}

uint64_t sub_1004751E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v20 = a6;
  v21 = a7;
  v11 = sub_10004B564(&qword_1005B1C20, &qword_1004D5AF0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v20 - v14;
  v16 = *(a1 + 56);
  (*(v12 + 16))(&v20 - v14, a4, v11);
  v17 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v18 = swift_allocObject();
  (*(v12 + 32))(v18 + v17, v15, v11);
  v21(a2, a3, v20, v18);
}

uint64_t sub_100475344(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24[0] = a3;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v27 = *(v5 - 8);
  v6 = *(v27 + 64);
  __chkstk_darwin(v5);
  v8 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v25 = *(v9 - 8);
  v26 = v9;
  v10 = *(v25 + 64);
  __chkstk_darwin(v9);
  v12 = v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10004B564(&qword_1005B1C20, &qword_1004D5AF0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = v24 - v16;
  v24[1] = *(a2 + 88);
  (*(v14 + 16))(v24 - v16, a1, v13);
  v18 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v19 = swift_allocObject();
  v20 = v24[0];
  *(v19 + 16) = a2;
  *(v19 + 24) = v20;
  (*(v14 + 32))(v19 + v18, v17, v13);
  aBlock[4] = sub_100478EA0;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100020828;
  aBlock[3] = &unk_10059DE40;
  v21 = _Block_copy(aBlock);

  v22 = v20;
  static DispatchQoS.unspecified.getter();
  v28 = _swiftEmptyArrayStorage;
  sub_10001E080(&unk_1005ABAC0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10004B564(&unk_1005A9700, &qword_1004C3820);
  sub_10001DF54(&qword_1005ABAD0, &unk_1005A9700, &qword_1004C3820);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v21);
  (*(v27 + 8))(v8, v5);
  (*(v25 + 8))(v12, v26);
}

uint64_t sub_1004756E0(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = sub_10004B564(&qword_1005B1C20, &qword_1004D5AF0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v15 - v9;
  v11 = *(a1 + 56);
  (*(v7 + 16))(&v15 - v9, a3, v6);
  v12 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v13 = swift_allocObject();
  (*(v7 + 32))(v13 + v12, v10, v6);
  sub_10009F120(a2, sub_10047A29C, v13);
}

uint64_t sub_100475834(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v36 = a4;
  v37 = a5;
  v38 = a2;
  v13 = type metadata accessor for UUID();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = *(a1 + 32);
  if (qword_1005A7F10 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  sub_10000A6F0(v18, qword_1005DFBD0);
  (*(v14 + 16))(v17, a3, v13);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v34 = a8;
    v23 = v22;
    v39 = v22;
    *v21 = 136315138;
    v24 = UUID.uuidString.getter();
    v33 = a6;
    v25 = a7;
    v27 = v26;
    (*(v14 + 8))(v17, v13);
    v28 = sub_10000D01C(v24, v27, &v39);
    a7 = v25;
    a6 = v33;

    *(v21 + 4) = v28;
    _os_log_impl(&_mh_execute_header, v19, v20, "handleSecureLocationsKeyUpdate() for %s", v21, 0xCu);
    sub_100004984(v23);
    a8 = v34;
  }

  else
  {

    (*(v14 + 8))(v17, v13);
  }

  v29 = type metadata accessor for Transaction();
  __chkstk_darwin(v29);
  v30 = v36;
  *(&v33 - 8) = v35;
  *(&v33 - 7) = v30;
  v31 = v38;
  *(&v33 - 6) = v37;
  *(&v33 - 5) = a6;
  *(&v33 - 4) = a7;
  *(&v33 - 3) = a8;
  *(&v33 - 2) = v31;
  return static Transaction.named<A>(_:with:)();
}

uint64_t sub_100475B20(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 16);
  type metadata accessor for Transaction();
  return static Transaction.named<A>(_:with:)();
}

uint64_t sub_100475BA8()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);
  v6 = *(v0 + 64);
  v8 = *(v0 + 72);
  v7 = *(v0 + 80);

  v9 = *(v0 + 112);
  sub_100037FC8(*(v0 + 104));
  v10 = *(v0 + 128);
  sub_100037FC8(*(v0 + 120));

  return swift_deallocClassInstance();
}

__n128 sub_100475C68(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_100475C7C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_100475CC4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100475D24(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v15 = a4;
  v7 = sub_10004B564(&qword_1005B4F80, &qword_1004DC140);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v14 - v10;
  v12 = a1[4];
  sub_100011AEC(a1, a1[3]);
  sub_100479EB4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v16) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v4)
  {
    v16 = a3;
    v17 = v15;
    v18 = 1;
    sub_100005F6C(a3, v15);
    sub_10010670C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_1000049D0(v16, v17);
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_100475EC0()
{
  if (*v0)
  {
    result = 0x4B65746176697270;
  }

  else
  {
    result = 0x7865646E69;
  }

  *v0;
  return result;
}

uint64_t sub_100475EFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7865646E69 && a2 == 0xE500000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x4B65746176697270 && a2 == 0xEA00000000007965)
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

uint64_t sub_100475FDC(uint64_t a1)
{
  v2 = sub_100479EB4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100476018(uint64_t a1)
{
  v2 = sub_100479EB4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100476054@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100479F08(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

uint64_t sub_1004760A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v24 = *(v4 - 8);
  v5 = *(v24 + 64);
  __chkstk_darwin(v4);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v22 = *(v8 - 8);
  v23 = v8;
  v9 = *(v22 + 64);
  __chkstk_darwin(v8);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10004B564(&qword_1005B4F50, &qword_1004DC008);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = v21 - v15;
  v21[1] = *(a2 + 88);
  (*(v13 + 16))(v21 - v15, a1, v12);
  v17 = (*(v13 + 80) + 24) & ~*(v13 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = a2;
  (*(v13 + 32))(v18 + v17, v16, v12);
  aBlock[4] = sub_1004792C4;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100020828;
  aBlock[3] = &unk_10059E048;
  v19 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v25 = _swiftEmptyArrayStorage;
  sub_10001E080(&unk_1005ABAC0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10004B564(&unk_1005A9700, &qword_1004C3820);
  sub_10001DF54(&qword_1005ABAD0, &unk_1005A9700, &qword_1004C3820);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v19);
  (*(v24 + 8))(v7, v4);
  (*(v22 + 8))(v11, v23);
}

uint64_t sub_100476434(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004B564(&qword_1005B4F50, &qword_1004DC008);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v13 - v7;
  v9 = *(a1 + 40);
  (*(v5 + 16))(&v13 - v7, a2, v4);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  (*(v5 + 32))(v11 + v10, v8, v4);
  sub_1000E69C8();
}

uint64_t sub_100476580(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004B564(&qword_1005AABB0, &unk_1004C45F0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = v17 - v6;
  v8 = sub_10004B564(&qword_1005B0608, &qword_1004D1F38);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v17 - v10;
  if (a2)
  {
    v17[1] = a2;
    swift_errorRetain();
    sub_10004B564(&qword_1005B4F50, &qword_1004DC008);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    sub_100005F04(a1, v7, &qword_1005AABB0, &unk_1004C45F0);
    v13 = type metadata accessor for DiversifiedRootKeys();
    v14 = *(v13 - 8);
    if ((*(v14 + 48))(v7, 1, v13) == 1)
    {
      sub_100002CE0(v7, &qword_1005AABB0, &unk_1004C45F0);
      v15 = 1;
    }

    else
    {
      DiversifiedRootKeys.publicKey.getter();
      (*(v14 + 8))(v7, v13);
      v15 = 0;
    }

    v16 = type metadata accessor for PublicKey();
    (*(*(v16 - 8) + 56))(v11, v15, 1, v16);
    sub_10004B564(&qword_1005B4F50, &qword_1004DC008);
    return CheckedContinuation.resume(returning:)();
  }
}

void sub_1004767E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, SEL *a6)
{
  v10 = sub_10004B564(&qword_1005B4F48, &unk_1004DBFF8);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = aBlock - v13;
  v15 = sub_100472248();
  (*(v11 + 16))(v14, a1, v10);
  v16 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v17 = swift_allocObject();
  (*(v11 + 32))(v17 + v16, v14, v10);
  aBlock[4] = a4;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10001A6E8;
  aBlock[3] = a5;
  v18 = _Block_copy(aBlock);

  [v15 *a6];
  _Block_release(v18);
}

uint64_t sub_100476994(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (a2 >> 60 == 15)
  {
    if (!a3)
    {
      sub_1000F7A28();
      swift_allocError();
      *v4 = 13;
    }

    swift_errorRetain();
    sub_10004B564(&qword_1005B4F48, &unk_1004DBFF8);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    sub_100005F6C(a1, a2);
    sub_10004B564(&qword_1005B4F48, &unk_1004DBFF8);
    return CheckedContinuation.resume(returning:)();
  }
}

void sub_100476A58(uint64_t a1)
{
  v2 = sub_10004B564(&qword_1005B1C20, &qword_1004D5AF0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = aBlock - v5;
  v7 = sub_100472248();
  isa = Data._bridgeToObjectiveC()().super.isa;
  (*(v3 + 16))(v6, a1, v2);
  v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v10 = swift_allocObject();
  (*(v3 + 32))(v10 + v9, v6, v2);
  aBlock[4] = sub_10047A29C;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000A8DE8;
  aBlock[3] = &unk_10059DDA0;
  v11 = _Block_copy(aBlock);

  [v7 setSharingKey:isa completion:v11];
  _Block_release(v11);
}

uint64_t sub_100476C3C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v24 = *(v4 - 8);
  v5 = *(v24 + 64);
  __chkstk_darwin(v4);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v22 = *(v8 - 8);
  v23 = v8;
  v9 = *(v22 + 64);
  __chkstk_darwin(v8);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10004B564(&qword_1005B1C20, &qword_1004D5AF0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = v21 - v15;
  v21[1] = *(a2 + 88);
  (*(v13 + 16))(v21 - v15, a1, v12);
  v17 = (*(v13 + 80) + 24) & ~*(v13 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = a2;
  (*(v13 + 32))(v18 + v17, v16, v12);
  aBlock[4] = sub_100478D7C;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100020828;
  aBlock[3] = &unk_10059DD28;
  v19 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v25 = _swiftEmptyArrayStorage;
  sub_10001E080(&unk_1005ABAC0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10004B564(&unk_1005A9700, &qword_1004C3820);
  sub_10001DF54(&qword_1005ABAD0, &unk_1005A9700, &qword_1004C3820);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v19);
  (*(v24 + 8))(v7, v4);
  (*(v22 + 8))(v11, v23);
}

uint64_t sub_100476FCC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004B564(&qword_1005B1C20, &qword_1004D5AF0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v13[-v7];
  v9 = *(a1 + 40);
  (*(v5 + 16))(&v13[-v7], a2, v4);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  (*(v5 + 32))(v11 + v10, v8, v4);
  type metadata accessor for Transaction();
  v14 = v9;
  v15 = sub_10047A29C;
  v16 = v11;
  static Transaction.named<A>(_:with:)();
}

uint64_t sub_100477160(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v24 = *(v4 - 8);
  v5 = *(v24 + 64);
  __chkstk_darwin(v4);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v22 = *(v8 - 8);
  v23 = v8;
  v9 = *(v22 + 64);
  __chkstk_darwin(v8);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10004B564(&qword_1005B4F38, &qword_1004DBFE0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = v21 - v15;
  v21[1] = *(a2 + 88);
  (*(v13 + 16))(v21 - v15, a1, v12);
  v17 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v18 = swift_allocObject();
  (*(v13 + 32))(v18 + v17, v16, v12);
  *(v18 + ((v14 + v17 + 7) & 0xFFFFFFFFFFFFFFF8)) = a2;
  aBlock[4] = sub_100478BBC;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100020828;
  aBlock[3] = &unk_10059DC88;
  v19 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v25 = _swiftEmptyArrayStorage;
  sub_10001E080(&unk_1005ABAC0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10004B564(&unk_1005A9700, &qword_1004C3820);
  sub_10001DF54(&qword_1005ABAD0, &unk_1005A9700, &qword_1004C3820);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v19);
  (*(v24 + 8))(v7, v4);
  (*(v22 + 8))(v11, v23);
}

uint64_t sub_1004774FC()
{
  if (!*(sub_1004B7328() + 16) && (sub_1000F4A14() & 1) != 0)
  {

    sub_1004B7328();
  }

  sub_10004B564(&qword_1005B4F38, &qword_1004DBFE0);
  return CheckedContinuation.resume(returning:)();
}

uint64_t sub_100477574(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v24 = *(v4 - 8);
  v5 = *(v24 + 64);
  __chkstk_darwin(v4);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v22 = *(v8 - 8);
  v23 = v8;
  v9 = *(v22 + 64);
  __chkstk_darwin(v8);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10004B564(&qword_1005B4F30, &qword_1004DBFD8);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = v21 - v15;
  v21[1] = *(a2 + 88);
  (*(v13 + 16))(v21 - v15, a1, v12);
  v17 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v18 = swift_allocObject();
  (*(v13 + 32))(v18 + v17, v16, v12);
  *(v18 + ((v14 + v17 + 7) & 0xFFFFFFFFFFFFFFF8)) = a2;
  aBlock[4] = sub_100478AFC;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100020828;
  aBlock[3] = &unk_10059DC38;
  v19 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v25 = _swiftEmptyArrayStorage;
  sub_10001E080(&unk_1005ABAC0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10004B564(&unk_1005A9700, &qword_1004C3820);
  sub_10001DF54(&qword_1005ABAD0, &unk_1005A9700, &qword_1004C3820);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v19);
  (*(v24 + 8))(v7, v4);
  (*(v22 + 8))(v11, v23);
}

uint64_t sub_100477910()
{
  sub_100105768();
  sub_10004B564(&qword_1005B4F30, &qword_1004DBFD8);
  return CheckedContinuation.resume(returning:)();
}

uint64_t sub_100477960(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v24 = *(v4 - 8);
  v5 = *(v24 + 64);
  __chkstk_darwin(v4);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v22 = *(v8 - 8);
  v23 = v8;
  v9 = *(v22 + 64);
  __chkstk_darwin(v8);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10004B564(&qword_1005B4F28, &unk_1004DBFC8);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = v21 - v15;
  v21[1] = *(a2 + 88);
  (*(v13 + 16))(v21 - v15, a1, v12);
  v17 = (*(v13 + 80) + 24) & ~*(v13 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = a2;
  (*(v13 + 32))(v18 + v17, v16, v12);
  aBlock[4] = sub_1004789A0;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100020828;
  aBlock[3] = &unk_10059DB70;
  v19 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v25 = _swiftEmptyArrayStorage;
  sub_10001E080(&unk_1005ABAC0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10004B564(&unk_1005A9700, &qword_1004C3820);
  sub_10001DF54(&qword_1005ABAD0, &unk_1005A9700, &qword_1004C3820);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v19);
  (*(v24 + 8))(v7, v4);
  (*(v22 + 8))(v11, v23);
}

uint64_t sub_100477CF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004B564(&qword_1005B4F28, &unk_1004DBFC8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v14 - v7;
  v9 = *(a1 + 56);
  (*(v5 + 16))(&v14 - v7, a2, v4);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = (v6 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = swift_allocObject();
  (*(v5 + 32))(v12 + v10, v8, v4);
  *(v12 + v11) = a1;

  sub_10009123C(sub_1004789C8, v12);
}

uint64_t sub_100477E54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v30 = *(v11 - 8);
  v31 = v11;
  v12 = *(v30 + 64);
  __chkstk_darwin(v11);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10004B564(&qword_1005B4F28, &unk_1004DBFC8);
  v16 = a1;
  v17 = *(v15 - 8);
  v18 = *(v17 + 64);
  v19 = __chkstk_darwin(v16);
  v21 = &v27 - v20;
  if (v19)
  {
    aBlock[0] = v19;
    swift_errorRetain();
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    v29 = *(a3 + 88);
    (*(v17 + 16))(v21, a2, v15);
    v23 = *(v17 + 80);
    v28 = v7;
    v24 = (v23 + 16) & ~v23;
    v25 = swift_allocObject();
    (*(v17 + 32))(v25 + v24, v21, v15);
    *(v25 + ((v18 + v24 + 7) & 0xFFFFFFFFFFFFFFF8)) = a3;
    aBlock[4] = sub_100478A70;
    aBlock[5] = v25;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100020828;
    aBlock[3] = &unk_10059DBE8;
    v26 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    v32 = _swiftEmptyArrayStorage;
    sub_10001E080(&unk_1005ABAC0, &type metadata accessor for DispatchWorkItemFlags);
    sub_10004B564(&unk_1005A9700, &qword_1004C3820);
    sub_10001DF54(&qword_1005ABAD0, &unk_1005A9700, &qword_1004C3820);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v26);
    (*(v28 + 8))(v10, v6);
    (*(v30 + 8))(v14, v31);
  }
}

uint64_t sub_10047821C(uint64_t a1, uint64_t a2)
{
  v3 = sub_10004B564(&qword_1005A9DC0, &unk_1004C3290);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v23 - v8;
  v10 = type metadata accessor for SecureLocationsConfig();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(*(a2 + 48) + 24);
  if (qword_1005A7F98 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for UUID();
  sub_10000A6F0(v16, qword_1005DFC58);
  sub_1004AFCB8();
  sub_100005F04(v9, v7, &qword_1005A9DC0, &unk_1004C3290);
  if ((*(v11 + 48))(v7, 1, v10) == 1)
  {
    sub_100002CE0(v7, &qword_1005A9DC0, &unk_1004C3290);
    if (qword_1005A7FA0 != -1)
    {
      swift_once();
    }

    v17 = qword_1005DFC70;
    v18 = qword_1005A7FA8;

    if (v18 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for URL();
    v20 = sub_10000A6F0(v19, qword_1005DFC78);
    (*(*(v19 - 8) + 16))(&v14[*(v10 + 76)], v20, v19);
    if (qword_1005A7FB0 != -1)
    {
      swift_once();
    }

    v21 = qword_1005DFC90;

    sub_100002CE0(v9, &qword_1005A9DC0, &unk_1004C3290);
    *v14 = 0;
    v14[8] = 1;
    *(v14 + 1) = xmmword_1004C2E50;
    *(v14 + 4) = 5;
    *(v14 + 40) = xmmword_1004C2E60;
    v14[56] = 0;
    *(v14 + 8) = v17;
    *(v14 + 9) = 0x405E000000000000;
    v14[80] = 1;
    *(v14 + 11) = 0x409C200000000000;
    *(v14 + 12) = 5;
    *(v14 + 104) = xmmword_1004C2E70;
    *&v14[*(v10 + 80)] = v21;
  }

  else
  {
    sub_100002CE0(v9, &qword_1005A9DC0, &unk_1004C3290);
    sub_100478A98(v7, v14);
  }

  sub_10004B564(&qword_1005B4F28, &unk_1004DBFC8);
  return CheckedContinuation.resume(returning:)();
}

uint64_t sub_1004785A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v24 = *(v4 - 8);
  v5 = *(v24 + 64);
  __chkstk_darwin(v4);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v22 = *(v8 - 8);
  v23 = v8;
  v9 = *(v22 + 64);
  __chkstk_darwin(v8);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10004B564(&qword_1005AFA48, &unk_1004D1178);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = v21 - v15;
  v21[1] = *(a2 + 88);
  (*(v13 + 16))(v21 - v15, a1, v12);
  v17 = (*(v13 + 80) + 24) & ~*(v13 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = a2;
  (*(v13 + 32))(v18 + v17, v16, v12);
  aBlock[4] = sub_100478978;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100020828;
  aBlock[3] = &unk_10059DB20;
  v19 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v25 = _swiftEmptyArrayStorage;
  sub_10001E080(&unk_1005ABAC0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10004B564(&unk_1005A9700, &qword_1004C3820);
  sub_10001DF54(&qword_1005ABAD0, &unk_1005A9700, &qword_1004C3820);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v19);
  (*(v24 + 8))(v7, v4);
  (*(v22 + 8))(v11, v23);
}

uint64_t sub_100478930(uint64_t a1)
{
  v1 = *(a1 + 56);
  sub_1000B7F50();
  sub_10004B564(&qword_1005AFA48, &unk_1004D1178);
  return CheckedContinuation.resume(returning:)();
}

uint64_t sub_1004789C8(uint64_t a1)
{
  v3 = *(sub_10004B564(&qword_1005B4F28, &unk_1004DBFC8) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_100477E54(a1, v1 + v4, v5);
}

uint64_t sub_100478A98(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SecureLocationsConfig();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100478B24(uint64_t *a1, uint64_t *a2)
{
  v3 = sub_10004B564(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = (*(v4 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v4 + 8))(v2 + v6, v3);
  v8 = *(v2 + v7);

  return _swift_deallocObject(v2, v7 + 8, v5 | 7);
}

uint64_t sub_100478BE4(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(unint64_t, uint64_t))
{
  v4 = *(sub_10004B564(a1, a2) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = *(v3 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a3(v3 + v5, v6);
}

unint64_t sub_100478CC8()
{
  result = qword_1005B4F40;
  if (!qword_1005B4F40)
  {
    sub_10004B610(&qword_1005B24F0, &qword_1004DBFF0);
    sub_10001E080(&qword_1005B1C68, type metadata accessor for SecureLocationsCachedSharedKey);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B4F40);
  }

  return result;
}

uint64_t sub_100478EA0()
{
  v1 = *(sub_10004B564(&qword_1005B1C20, &qword_1004D5AF0) - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));

  return sub_1004756E0(v2, v3, v4);
}

uint64_t sub_100478F44()
{
  v1 = sub_10004B564(&qword_1005B1C20, &qword_1004D5AF0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 2);

  sub_1000049D0(*(v0 + 3), *(v0 + 4));
  (*(v2 + 8))(&v0[v4], v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

void sub_100479108()
{
  v1 = *(type metadata accessor for MessageContext() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  sub_10012FF4C(v0 + v2, v5);
}

uint64_t sub_1004791D4()
{
  v1 = *(type metadata accessor for MessageContext() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = *(v0 + 16);
  v6 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_100475B20(v5);
}

uint64_t sub_1004792EC(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v4 = *(sub_10004B564(a1, a2) - 8);
  v5 = *(v3 + 16);
  v6 = v3 + ((*(v4 + 80) + 24) & ~*(v4 + 80));

  return a3(v5, v6);
}

uint64_t sub_100479360(uint64_t a1, uint64_t a2)
{
  v4 = *(*(sub_10004B564(&qword_1005B4F50, &qword_1004DC008) - 8) + 80);

  return sub_100476580(a1, a2);
}

uint64_t sub_1004793F8(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for ContinuousClock.Instant() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(sub_10004B564(&qword_1005B4F58, &qword_1004DC018) - 8);
  v9 = *(v2 + 16);
  v10 = *(v2 + v7);
  v11 = v2 + ((v7 + *(v8 + 80) + 8) & ~*(v8 + 80));

  return sub_1004743B8(a1, a2, v9, v2 + v6, v10);
}

void sub_100479548(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a2;
  v6 = type metadata accessor for SecureLocation();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = (&v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for ContinuousClock.Instant();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  static ContinuousClock.Instant.now.getter();
  ContinuousClock.Instant.duration(to:)();
  (*(v12 + 8))(v15, v11);
  v16 = Duration.nanoseconds.getter() / 1000000000.0;
  if (!a4)
  {
    v18 = *(a3 + 16);
    if (!v18)
    {
      return;
    }

    v19 = a3 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v20 = *(v6 + 60);
    v35 = "artLiveLocations";
    v21 = *(v6 + 52);
    v22 = *(v7 + 72);
    while (1)
    {
      sub_10008D1C0(v19, v10);
      if (qword_1005A7EE0 != -1)
      {
        swift_once();
      }

      v23 = *(v10 + v20);
      Date.timeIntervalSinceNow.getter();
      v25 = v24;
      v26 = v10[5];
      if (v26 <= 5.0)
      {
        v28 = 5;
        if ((static SystemInfo.underTest.getter() & 1) == 0)
        {
          goto LABEL_41;
        }
      }

      else if (v26 <= 25.0)
      {
        v28 = 25;
        if ((static SystemInfo.underTest.getter() & 1) == 0)
        {
          goto LABEL_41;
        }
      }

      else if (v26 <= 50.0)
      {
        v28 = 50;
        if ((static SystemInfo.underTest.getter() & 1) == 0)
        {
          goto LABEL_41;
        }
      }

      else if (v26 <= 75.0)
      {
        v28 = 75;
        if ((static SystemInfo.underTest.getter() & 1) == 0)
        {
          goto LABEL_41;
        }
      }

      else if (v26 <= 100.0)
      {
        v28 = 100;
        if ((static SystemInfo.underTest.getter() & 1) == 0)
        {
          goto LABEL_41;
        }
      }

      else
      {
        if (v26 > 150.0)
        {
          v27 = 1600;
          if (v26 <= 1500.0)
          {
            v27 = 1500;
          }

          if (v26 <= 900.0)
          {
            v27 = 900;
          }

          if (v26 <= 600.0)
          {
            v27 = 600;
          }

          if (v26 <= 300.0)
          {
            v27 = 300;
          }

          if (v26 > 200.0)
          {
            v28 = v27;
          }

          else
          {
            v28 = 200;
          }

          if (static SystemInfo.underTest.getter())
          {
            goto LABEL_8;
          }

LABEL_41:
          v29 = String._bridgeToObjectiveC()();
          v30 = swift_allocObject();
          *(v30 + 16) = v36;
          *(v30 + 24) = v16;
          *(v30 + 32) = v23;
          *(v30 + 40) = 0;
          *(v30 + 48) = -v25;
          *(v30 + 56) = 0;
          *(v30 + 64) = 0;
          *(v30 + 72) = 1;
          *(v30 + 80) = v28;
          *(v30 + 88) = 0;
          *(v30 + 96) = 0;
          v41 = sub_100479B2C;
          v42 = v30;
          aBlock = _NSConcreteStackBlock;
          v38 = 1107296256;
          v39 = sub_1000119E4;
          v40 = &unk_10059E138;
          v31 = _Block_copy(&aBlock);

          AnalyticsSendEventLazy();
          _Block_release(v31);

          goto LABEL_8;
        }

        v28 = 150;
        if ((static SystemInfo.underTest.getter() & 1) == 0)
        {
          goto LABEL_41;
        }
      }

LABEL_8:
      sub_1000563DC(v10);
      v19 += v22;
      if (!--v18)
      {
        return;
      }
    }
  }

  swift_errorRetain();
  if (qword_1005A7EE0 != -1)
  {
    swift_once();
  }

  v17 = *(a3 + 16);
  swift_errorRetain();
  if (static SystemInfo.underTest.getter())
  {
  }

  else
  {
    v32 = String._bridgeToObjectiveC()();
    v33 = swift_allocObject();
    *(v33 + 16) = v36;
    *(v33 + 24) = v16;
    *(v33 + 32) = 0;
    *(v33 + 40) = 1;
    *(v33 + 48) = 0;
    *(v33 + 56) = 1;
    *(v33 + 64) = v17;
    *(v33 + 72) = 0;
    *(v33 + 80) = 0;
    *(v33 + 88) = 1;
    *(v33 + 96) = a4;
    v41 = sub_10047A240;
    v42 = v33;
    aBlock = _NSConcreteStackBlock;
    v38 = 1107296256;
    v39 = sub_1000119E4;
    v40 = &unk_10059E188;
    v34 = _Block_copy(&aBlock);
    swift_errorRetain();

    AnalyticsSendEventLazy();

    _Block_release(v34);
  }
}

uint64_t sub_100479B88()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 48);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100479C5C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100479C9C()
{
  v1 = *(sub_10004B564(&qword_1005B1C20, &qword_1004D5AF0) - 8);
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0 + ((*(v1 + 80) + 48) & ~*(v1 + 80));

  return sub_100472BCC(v2, v3, v4, v5, v6);
}

unint64_t sub_100479D10()
{
  result = qword_1005B4F70;
  if (!qword_1005B4F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B4F70);
  }

  return result;
}

unint64_t sub_100479DAC()
{
  result = qword_1005B4F78;
  if (!qword_1005B4F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B4F78);
  }

  return result;
}

uint64_t sub_100479E00(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 24))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 16) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 16) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_100479E54(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = 0;
      *(result + 16) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

unint64_t sub_100479EB4()
{
  result = qword_1005B4F88;
  if (!qword_1005B4F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B4F88);
  }

  return result;
}

uint64_t sub_100479F08(uint64_t *a1)
{
  v3 = sub_10004B564(&qword_1005B4F90, &qword_1004DC148);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v10[-v6];
  v8 = a1[3];
  sub_100011AEC(a1, v8);
  sub_100479EB4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v10[16] = 0;
    v8 = KeyedDecodingContainer.decode(_:forKey:)();
    v10[15] = 1;
    sub_1000F4D64();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v7, v3);
  }

  sub_100004984(a1);
  return v8;
}

unint64_t sub_10047A0E0()
{
  result = qword_1005B4F98;
  if (!qword_1005B4F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B4F98);
  }

  return result;
}

unint64_t sub_10047A138()
{
  result = qword_1005B4FA0;
  if (!qword_1005B4FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B4FA0);
  }

  return result;
}

unint64_t sub_10047A190()
{
  result = qword_1005B4FA8;
  if (!qword_1005B4FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B4FA8);
  }

  return result;
}

uint64_t SecureLocationsStewie.PublishResult.init(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10004B564(&unk_1005AE5B0, &qword_1004C32F0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v17 - v6;
  if (a1)
  {
    v8 = a1;
    v9 = [v8 lastPublished];
    if (v9)
    {
      v10 = v9;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v11 = type metadata accessor for Date();
      (*(*(v11 - 8) + 56))(v7, 0, 1, v11);
    }

    else
    {
      v15 = type metadata accessor for Date();
      (*(*(v15 - 8) + 56))(v7, 1, 1, v15);
    }

    [v8 nextAllowedPublish];
    SecureLocationsStewie.PublishResult.init(lastPublished:nextAllowedPublish:)();

    v16 = type metadata accessor for SecureLocationsStewie.PublishResult();
    return (*(*(v16 - 8) + 56))(a2, 0, 1, v16);
  }

  else
  {
    v12 = type metadata accessor for SecureLocationsStewie.PublishResult();
    v13 = *(*(v12 - 8) + 56);

    return v13(a2, 1, 1, v12);
  }
}

uint64_t SecureLocationsStewie.ServiceState.init(_:)@<X0>(unint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for SecureLocationsStewie.ServiceState();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a2 & 1) != 0 || a1 > 9)
  {
    v14 = *(v8 + 56);

    return v14(a3, 1, 1, v6);
  }

  else
  {
    v11 = **(&off_10059E4A0 + a1);
    v12 = *(v8 + 104);
    v16 = v8;
    v12(v10, v11, v6);
    (*(v16 + 32))(a3, v10, v6);
    return (*(v16 + 56))(a3, 0, 1, v6);
  }
}

unint64_t sub_10047A618()
{
  result = qword_1005B4FB0;
  if (!qword_1005B4FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B4FB0);
  }

  return result;
}

uint64_t sub_10047A66C()
{
  v0 = type metadata accessor for Logger();
  sub_10004F154(v0, qword_1005E0D00);
  sub_10000A6F0(v0, qword_1005E0D00);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10047A714(uint64_t a1)
{
  *(v1 + 16) = a1;
  type metadata accessor for SettingsServiceClient();
  *(v1 + 24) = swift_allocObject();

  return _swift_task_switch(sub_1000033F8, 0, 0);
}

Swift::Int sub_10047A78C()
{
  v2 = *v0;
  Hasher.init(_seed:)();
  type metadata accessor for SettingsServiceClient();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10047A7E8()
{
  v1 = *v0;
  type metadata accessor for SettingsServiceClient();
  sub_100483A20(&qword_1005B5228, v2, type metadata accessor for SettingsServiceClient);
  return XPCAcceptedClient.hash(into:)();
}

Swift::Int sub_10047A860()
{
  v2 = *v0;
  Hasher.init(_seed:)();
  type metadata accessor for SettingsServiceClient();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10047A8B8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = type metadata accessor for SettingsServiceClient();
  v6 = sub_100483A20(&qword_1005B5228, v5, type metadata accessor for SettingsServiceClient);

  return static XPCAcceptedClient.== infix(_:_:)(v2, v3, v4, v6);
}

uint64_t sub_10047A940(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PreferenceStreamChange();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v9 = sub_10004B564(&qword_1005A9690, &qword_1004C2A00);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v17 - v11;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  (*(v7 + 16))(&v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v6);
  v14 = (*(v7 + 80) + 48) & ~*(v7 + 80);
  v15 = swift_allocObject();
  *(v15 + 2) = 0;
  *(v15 + 3) = 0;
  *(v15 + 4) = a2;
  *(v15 + 5) = a1;
  (*(v7 + 32))(&v15[v14], &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);

  sub_1001D7F30(0, 0, v12, &unk_1004DC618, v15);
}

uint64_t sub_10047AB34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[3] = a4;
  v7 = type metadata accessor for PreferenceStreamChange();
  v6[6] = v7;
  v8 = *(v7 - 8);
  v6[7] = v8;
  v6[8] = *(v8 + 64);
  v6[9] = swift_task_alloc();

  return _swift_task_switch(sub_10047AC00, 0, 0);
}

uint64_t sub_10047AC00()
{
  v1 = v0[9];
  v2 = v0[6];
  v3 = v0[7];
  v4 = v0[4];
  v5 = v0[3];
  (*(v3 + 16))(v1, v0[5], v2);
  v6 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v7 = swift_allocObject();
  v0[10] = v7;
  *(v7 + 16) = v5;
  *(v7 + 24) = v4;
  (*(v3 + 32))(v7 + v6, v1, v2);
  v8 = async function pointer to withTimeout<A>(_:block:)[1];

  v9 = swift_task_alloc();
  v0[11] = v9;
  *v9 = v0;
  v9[1] = sub_10047AD64;

  return withTimeout<A>(_:block:)(v9, 0x8AC7230489E80000, 0, &unk_1004DC628, v7, &type metadata for () + 8);
}

uint64_t sub_10047AD64()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v7 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v4 = sub_10047AE80;
  }

  else
  {
    v5 = *(v2 + 80);

    v4 = sub_100341AD8;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10047AE80()
{
  v18 = v0;
  v1 = v0[12];
  v2 = v0[10];
  v3 = v0[4];

  v0[2] = v1;
  OnceCheckedContinuation.resume(throwing:)();
  if (qword_1005A85B0 != -1)
  {
    swift_once();
  }

  v4 = v0[12];
  v5 = type metadata accessor for Logger();
  sub_10000A6F0(v5, qword_1005E0D00);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[12];
  if (v8)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v17 = v12;
    *v10 = 136446466;
    *(v10 + 4) = sub_10000D01C(0xD000000000000016, 0x80000001004EAE20, &v17);
    *(v10 + 12) = 2114;
    v13 = _convertErrorToNSError(_:)();
    *(v10 + 14) = v13;
    *v11 = v13;
    _os_log_impl(&_mh_execute_header, v6, v7, "Uncaught error in %{public}s: %{public}@", v10, 0x16u);
    sub_100002CE0(v11, &qword_1005A9670, &unk_1004C2480);

    sub_100004984(v12);
  }

  else
  {
  }

  v14 = v0[9];

  v15 = v0[1];

  return v15();
}

uint64_t sub_10047B0A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a3;
  v4[11] = a4;
  v4[9] = a2;
  return _swift_task_switch(sub_10047B0C4, 0, 0);
}

uint64_t sub_10047B0C4()
{
  v1 = v0[10];
  v2 = *(v0[9] + 112);
  v3 = *(&async function pointer to dispatch thunk of FM.XPCSession.proxy(errorHandler:) + 1);
  v7 = &async function pointer to dispatch thunk of FM.XPCSession.proxy(errorHandler:) + async function pointer to dispatch thunk of FM.XPCSession.proxy(errorHandler:);

  v4 = swift_task_alloc();
  v0[12] = v4;
  *v4 = v0;
  v4[1] = sub_10047B198;
  v5 = v0[10];

  return (v7)(v0 + 8, sub_100483D24, v5);
}

uint64_t sub_10047B198()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v7 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v4 = sub_1002BD000;
  }

  else
  {
    v5 = *(v2 + 80);

    v4 = sub_10047B2B4;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10047B2B4()
{
  v1 = v0[13];
  v2 = v0[11];
  v3 = v0[8];
  v4 = type metadata accessor for PropertyListEncoder();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  PropertyListEncoder.init()();
  type metadata accessor for PreferenceStreamChange();
  sub_100483A20(&qword_1005B5230, 255, &type metadata accessor for PreferenceStreamChange);
  v7 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  if (v1)
  {
  }

  else
  {
    v10 = v0[10];
    v11 = v7;
    v12 = v8;

    isa = Data._bridgeToObjectiveC()().super.isa;
    v0[6] = sub_1002BCFF4;
    v0[7] = v10;
    v0[2] = _NSConcreteStackBlock;
    v0[3] = 1107296256;
    v0[4] = sub_1000A8DE8;
    v0[5] = &unk_10059E5C0;
    v14 = _Block_copy(v0 + 2);
    v15 = v0[7];

    [v3 preferencesUpdatedWithChange:isa completion:v14];
    _Block_release(v14);

    sub_1000049D0(v11, v12);
  }

  swift_unknownObjectRelease();
  v9 = v0[1];

  return v9();
}

uint64_t sub_10047B4A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10004B564(&qword_1005AA718, &qword_1004C4370);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6 - 8);
  v10 = &v19 - v9;
  v11 = sub_10004B564(&qword_1005A9690, &qword_1004C2A00);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v19 - v13;
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  sub_100005F04(a3, v10, &qword_1005AA718, &qword_1004C4370);
  v16 = (*(v7 + 80) + 48) & ~*(v7 + 80);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = a2;
  v17[5] = a1;
  sub_100192DA0(v10, v17 + v16);

  sub_1001D7F30(0, 0, v14, &unk_1004DC638, v17);
}

uint64_t sub_10047B688(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[3] = a4;
  v7 = *(sub_10004B564(&qword_1005AA718, &qword_1004C4370) - 8);
  v6[6] = v7;
  v6[7] = *(v7 + 64);
  v6[8] = swift_task_alloc();

  return _swift_task_switch(sub_10047B75C, 0, 0);
}

uint64_t sub_10047B75C()
{
  v1 = v0[8];
  v2 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  sub_100005F04(v0[5], v1, &qword_1005AA718, &qword_1004C4370);
  v5 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v6 = swift_allocObject();
  v0[9] = v6;
  *(v6 + 16) = v4;
  *(v6 + 24) = v3;
  sub_100192DA0(v1, v6 + v5);
  v7 = async function pointer to withTimeout<A>(_:block:)[1];

  v8 = swift_task_alloc();
  v0[10] = v8;
  *v8 = v0;
  v8[1] = sub_10047B8A0;

  return withTimeout<A>(_:block:)(v8, 0x8AC7230489E80000, 0, &unk_1004DC648, v6, &type metadata for () + 8);
}

uint64_t sub_10047B8A0()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v7 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v4 = sub_10047BA1C;
  }

  else
  {
    v5 = *(v2 + 72);

    v4 = sub_10047B9BC;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10047B9BC()
{
  v1 = *(v0 + 64);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10047BA1C()
{
  v18 = v0;
  v1 = v0[11];
  v2 = v0[9];
  v3 = v0[4];

  v0[2] = v1;
  OnceCheckedContinuation.resume(throwing:)();
  if (qword_1005A85B0 != -1)
  {
    swift_once();
  }

  v4 = v0[11];
  v5 = type metadata accessor for Logger();
  sub_10000A6F0(v5, qword_1005E0D00);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[11];
  if (v8)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v17 = v12;
    *v10 = 136446466;
    *(v10 + 4) = sub_10000D01C(0xD00000000000001ALL, 0x80000001004EAE40, &v17);
    *(v10 + 12) = 2114;
    v13 = _convertErrorToNSError(_:)();
    *(v10 + 14) = v13;
    *v11 = v13;
    _os_log_impl(&_mh_execute_header, v6, v7, "Uncaught error in %{public}s: %{public}@", v10, 0x16u);
    sub_100002CE0(v11, &qword_1005A9670, &unk_1004C2480);

    sub_100004984(v12);
  }

  else
  {
  }

  v14 = v0[8];

  v15 = v0[1];

  return v15();
}

uint64_t sub_10047BC3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a3;
  v4[11] = a4;
  v4[9] = a2;
  return _swift_task_switch(sub_10047BC60, 0, 0);
}

uint64_t sub_10047BC60()
{
  v1 = v0[10];
  v2 = *(v0[9] + 112);
  v3 = *(&async function pointer to dispatch thunk of FM.XPCSession.proxy(errorHandler:) + 1);
  v7 = &async function pointer to dispatch thunk of FM.XPCSession.proxy(errorHandler:) + async function pointer to dispatch thunk of FM.XPCSession.proxy(errorHandler:);

  v4 = swift_task_alloc();
  v0[12] = v4;
  *v4 = v0;
  v4[1] = sub_10047BD34;
  v5 = v0[10];

  return (v7)(v0 + 8, sub_100482DC0, v5);
}

uint64_t sub_10047BD34()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v7 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v4 = sub_1002ABF04;
  }

  else
  {
    v5 = *(v2 + 80);

    v4 = sub_10047BE50;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10047BE50()
{
  v1 = v0[13];
  v2 = v0[11];
  v3 = v0[8];
  v4 = type metadata accessor for PropertyListEncoder();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  PropertyListEncoder.init()();
  sub_10004B564(&qword_1005AA718, &qword_1004C4370);
  sub_100482DDC();
  v7 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  if (v1)
  {
  }

  else
  {
    v10 = v0[10];
    v11 = v7;
    v12 = v8;

    isa = Data._bridgeToObjectiveC()().super.isa;
    v0[6] = sub_1002BB8C0;
    v0[7] = v10;
    v0[2] = _NSConcreteStackBlock;
    v0[3] = 1107296256;
    v0[4] = sub_1000A8DE8;
    v0[5] = &unk_10059E638;
    v14 = _Block_copy(v0 + 2);
    v15 = v0[7];

    [v3 meDeviceUpdatedWithMeDevice:isa completion:v14];
    _Block_release(v14);

    sub_1000049D0(v11, v12);
  }

  swift_unknownObjectRelease();
  v9 = v0[1];

  return v9();
}

uint64_t sub_10047C018()
{
  if (qword_1005A85B0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000A6F0(v0, qword_1005E0D00);
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138543362;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "SettingsServiceClient proxy error: %{public}@", v3, 0xCu);
    sub_100002CE0(v4, &qword_1005A9670, &unk_1004C2480);
  }

  return OnceCheckedContinuation.resume(throwing:)();
}

uint64_t sub_10047C180(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_10047C1A0, v1, 0);
}

uint64_t sub_10047C1A0()
{
  v1 = swift_task_alloc();
  v0[2].i64[0] = v1;
  v1[1] = vextq_s8(v0[1], v0[1], 8uLL);
  v2 = async function pointer to withOnceCheckedThrowingContinuation<A>(function:_:)[1];
  v3 = swift_task_alloc();
  v0[2].i64[1] = v3;
  *v3 = v0;
  v3[1] = sub_10047C288;

  return withOnceCheckedThrowingContinuation<A>(function:_:)(v3, 0xD00000000000001ALL, 0x80000001004EAE40, sub_100482BAC, v1, &type metadata for () + 8);
}

uint64_t sub_10047C288()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v9 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v4 = *(v2 + 24);
    v5 = sub_1000889D0;
  }

  else
  {
    v7 = *(v2 + 24);
    v6 = *(v2 + 32);

    v5 = sub_10004B074;
    v4 = v7;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_10047C3AC(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_10047C3CC, v1, 0);
}

uint64_t sub_10047C3CC()
{
  v1 = swift_task_alloc();
  v0[2].i64[0] = v1;
  v1[1] = vextq_s8(v0[1], v0[1], 8uLL);
  v2 = async function pointer to withOnceCheckedThrowingContinuation<A>(function:_:)[1];
  v3 = swift_task_alloc();
  v0[2].i64[1] = v3;
  *v3 = v0;
  v3[1] = sub_1002AD560;

  return withOnceCheckedThrowingContinuation<A>(function:_:)(v3, 0xD000000000000016, 0x80000001004EAE20, sub_1004829B0, v1, &type metadata for () + 8);
}

uint64_t sub_10047C4B4()
{
  v0 = type metadata accessor for Logger();
  sub_10004F154(v0, qword_1005E0D18);
  v1 = sub_10000A6F0(v0, qword_1005E0D18);
  if (qword_1005A85B0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000A6F0(v0, qword_1005E0D00);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10047C57C(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v5 = 0xD000000000000012;
    v6 = 0xD00000000000001ELL;
    if (a1 != 10)
    {
      v6 = 0x64616552746F6E2ELL;
    }

    if (a1 != 9)
    {
      v5 = v6;
    }

    v7 = 0xD000000000000012;
    v8 = 0xD000000000000016;
    if (a1 != 7)
    {
      v8 = 0xD000000000000010;
    }

    if (a1 != 6)
    {
      v7 = v8;
    }

    if (a1 <= 8u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x6E776F6E6B6E752ELL;
    v2 = 0xD000000000000016;
    if (a1 == 4)
    {
      v2 = 0xD000000000000013;
    }

    if (a1 == 3)
    {
      v2 = 0xD000000000000013;
    }

    v3 = 0x74756F656D69742ELL;
    if (a1 != 1)
    {
      v3 = 0x6F707075736E752ELL;
    }

    if (a1)
    {
      v1 = v3;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_10047C710(uint64_t a1, uint64_t a2)
{
  v4 = sub_100483CC4();
  v5 = sub_10004E724();

  return Error<>._code.getter(a1, a2, v4, v5);
}

uint64_t sub_10047C770()
{
  v1[2] = v0;
  v2 = *(*(type metadata accessor for UUID() - 8) + 64) + 15;
  v1[3] = swift_task_alloc();
  v3 = *(*(sub_10004B564(&qword_1005B0370, &unk_1004D2410) - 8) + 64) + 15;
  v1[4] = swift_task_alloc();

  return _swift_task_switch(sub_10047C838, 0, 0);
}

uint64_t sub_10047C838()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  swift_defaultActor_initialize();
  *(v3 + 112) = 0x73676E6974746553;
  *(v3 + 120) = 0xEF65636976726553;
  v4 = OBJC_IVAR____TtC13findmylocated15SettingsService_serviceDescription;
  v5 = type metadata accessor for XPCServiceDescription();
  (*(*(v5 - 8) + 56))(v3 + v4, 1, 1, v5);
  *(v3 + OBJC_IVAR____TtC13findmylocated15SettingsService_trampoline) = 0;
  v6 = OBJC_IVAR____TtC13findmylocated15SettingsService_connectionPool;
  sub_10004B564(&qword_1005B5248, &qword_1004DC698);
  *(v3 + v6) = XPCClientConnectionPool.__allocating_init()();
  v7 = OBJC_IVAR____TtC13findmylocated15SettingsService_preferencesUpdateQueue;
  type metadata accessor for WorkItemQueue();
  v8 = type metadata accessor for WorkItemQueue.WarningOptions();
  (*(*(v8 - 8) + 56))(v1, 1, 1, v8);
  UUID.init()();
  *(v3 + v7) = WorkItemQueue.__allocating_init(name:identifier:warningOptions:)();
  v9 = OBJC_IVAR____TtC13findmylocated15SettingsService_dataManagerStateStream;
  v10 = sub_10004B564(&qword_1005AA710, &qword_1004D2BA0);
  (*(*(v10 - 8) + 56))(v3 + v9, 1, 1, v10);
  type metadata accessor for XPCSessionManager();
  v11 = async function pointer to XPCSessionManager.__allocating_init(name:)[1];
  v12 = swift_task_alloc();
  v0[5] = v12;
  *v12 = v0;
  v12[1] = sub_10047CA7C;

  return XPCSessionManager.__allocating_init(name:)(0x73676E6974746553, 0xEF65636976726553);
}

uint64_t sub_10047CA7C(uint64_t a1)
{
  v2 = *(*v1 + 40);
  v4 = *v1;
  *(*v1 + 48) = a1;

  return _swift_task_switch(sub_10047CB7C, 0, 0);
}

uint64_t sub_10047CB7C()
{
  v2 = v0[3];
  v1 = v0[4];
  *(v0[2] + OBJC_IVAR____TtC13findmylocated15SettingsService_xpcSessionManager) = v0[6];

  v3 = v0[1];
  v4 = v0[2];

  return v3(v4);
}

uint64_t sub_10047CBFC()
{
  v1[12] = v0;
  v2 = *(*(sub_10004B564(&qword_1005B09F8, &qword_1004D23A8) - 8) + 64) + 15;
  v1[13] = swift_task_alloc();
  v3 = type metadata accessor for MachServiceName();
  v1[14] = v3;
  v4 = *(v3 - 8);
  v1[15] = v4;
  v5 = *(v4 + 64) + 15;
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();

  return _swift_task_switch(sub_10047CD00, v0, 0);
}

uint64_t sub_10047CD00()
{
  if (qword_1005A85B8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000A6F0(v1, qword_1005E0D18);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "SettingsService: startup", v4, 2u);
  }

  v5 = *(v0 + 136);
  v6 = *(v0 + 120);
  v27 = *(v0 + 128);
  v28 = *(v0 + 112);
  v8 = *(v0 + 96);
  v7 = *(v0 + 104);

  MachServiceName.init(_:)();
  v9 = objc_opt_self();
  v10 = [v9 interfaceWithProtocol:&OBJC_PROTOCOL____TtP12FindMyLocate18SettingsXPCService_];
  *(v0 + 144) = v10;
  v11 = sub_10004B564(&qword_1005B5270, &qword_1004DC6F0);
  v12 = swift_allocObject();
  swift_defaultActor_initialize();
  swift_weakInit();
  swift_weakAssign();
  *(v0 + 80) = v12;
  *(v0 + 88) = v11;
  v13 = objc_msgSendSuper2((v0 + 80), "init");
  *(v0 + 152) = v13;
  v14 = [v9 interfaceWithProtocol:&OBJC_PROTOCOL____TtP12FindMyLocate24SettingsServiceClientXPC_];
  *(v0 + 160) = v14;
  (*(v6 + 16))(v27, v5, v28);
  v15 = type metadata accessor for ServiceEntitlements();
  *(v0 + 40) = v15;
  *(v0 + 48) = sub_100483A20(&qword_1005B0A00, 255, &type metadata accessor for ServiceEntitlements);
  v16 = sub_10000331C((v0 + 16));
  (*(*(v15 - 8) + 104))(v16, enum case for ServiceEntitlements.settingService(_:), v15);
  swift_allocObject();
  swift_weakInit();
  v17 = v13;
  v18 = v10;
  v19 = v14;
  XPCServiceDescription.init(name:exportedObject:exportedInterface:remoteObjectInterface:options:requiredEntitlement:shouldAccept:)();
  v20 = type metadata accessor for XPCServiceDescription();
  (*(*(v20 - 8) + 56))(v7, 0, 1, v20);
  v21 = OBJC_IVAR____TtC13findmylocated15SettingsService_serviceDescription;
  swift_beginAccess();
  sub_100022364(v7, v8 + v21, &qword_1005B09F8, &qword_1004D23A8);
  swift_endAccess();
  v22 = *(v8 + OBJC_IVAR____TtC13findmylocated15SettingsService_trampoline);
  *(v8 + OBJC_IVAR____TtC13findmylocated15SettingsService_trampoline) = v17;
  v23 = v17;

  *(v0 + 168) = *(v8 + OBJC_IVAR____TtC13findmylocated15SettingsService_connectionPool);
  sub_10004B564(&qword_1005B5248, &qword_1004DC698);
  sub_10001DF0C(&qword_1005B5250, &qword_1005B5248, &qword_1004DC698);
  v25 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10047D144, v25, v24);
}

uint64_t sub_10047D144()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 96);
  dispatch thunk of XPCClientConnectionPool.setRemoveHandler(_:)();

  return _swift_task_switch(sub_10047D1C8, v2, 0);
}

uint64_t sub_10047D1C8()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 136);
  v3 = *(v0 + 144);
  v5 = *(v0 + 120);
  v4 = *(v0 + 128);
  v7 = *(v0 + 104);
  v6 = *(v0 + 112);

  (*(v5 + 8))(v2, v6);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_10047D288(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  v3 = *(*(sub_10004B564(&qword_1005A9690, &qword_1004C2A00) - 8) + 64) + 15;
  v2[7] = swift_task_alloc();

  return _swift_task_switch(sub_10047D324, 0, 0);
}

uint64_t sub_10047D324()
{
  v1 = v0[6];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = v0[7];
    v5 = v0[5];
    v6 = type metadata accessor for TaskPriority();
    (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
    v7 = swift_allocObject();
    v7[2] = 0;
    v7[3] = 0;
    v7[4] = v3;
    v7[5] = v5;
    v8 = v5;
    sub_1001D7F30(0, 0, v4, &unk_1004DC718, v7);
  }

  v9 = v0[7];

  v10 = v0[1];

  return v10(1);
}

uint64_t sub_10047D450()
{
  v1[103] = v0;
  v2 = sub_10004B564(&qword_1005AA708, &unk_1004C4360);
  v1[104] = v2;
  v3 = *(v2 - 8);
  v1[105] = v3;
  v4 = *(v3 + 64) + 15;
  v1[106] = swift_task_alloc();
  v5 = *(*(sub_10004B564(&qword_1005B0F00, &qword_1004D2F00) - 8) + 64) + 15;
  v1[107] = swift_task_alloc();
  v6 = *(*(sub_10004B564(&qword_1005B09F8, &qword_1004D23A8) - 8) + 64) + 15;
  v1[108] = swift_task_alloc();

  return _swift_task_switch(sub_10047D58C, v0, 0);
}

uint64_t sub_10047D58C()
{
  v1 = v0[108];
  v2 = v0[103];
  v0[109] = *(v2 + OBJC_IVAR____TtC13findmylocated15SettingsService_xpcSessionManager);
  v3 = OBJC_IVAR____TtC13findmylocated15SettingsService_serviceDescription;
  swift_beginAccess();
  sub_100005F04(v2 + v3, v1, &qword_1005B09F8, &qword_1004D23A8);
  v4 = type metadata accessor for XPCServiceDescription();
  v0[110] = v4;
  v5 = *(v4 - 8);
  v0[111] = v5;
  v6 = (*(v5 + 48))(v1, 1, v4);
  if (v6 == 1)
  {
    __break(1u);
  }

  else
  {
    type metadata accessor for XPCSessionManager();
    sub_100483A20(&qword_1005B0A08, 255, &type metadata accessor for XPCSessionManager);
    v9 = dispatch thunk of Actor.unownedExecutor.getter();
    v11 = v10;
    v6 = sub_10047D6FC;
    v7 = v9;
    v8 = v11;
  }

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_10047D6FC()
{
  v1 = v0[109];
  v2 = v0[108];
  dispatch thunk of XPCSessionManager.register(service:)();
  v0[112] = 0;
  (*(v0[111] + 8))(v0[108], v0[110]);
  v3 = async function pointer to daemon.getter[1];
  v4 = swift_task_alloc();
  v0[113] = v4;
  *v4 = v0;
  v4[1] = sub_10047D804;

  return daemon.getter();
}

uint64_t sub_10047D804(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 904);
  v12 = *v1;
  *(v3 + 912) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 920) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for DataManager(0);
  v9 = sub_100483A20(&unk_1005AFA50, 255, &type metadata accessor for Daemon);
  v10 = sub_100483A20(&qword_1005A90D0, 255, type metadata accessor for DataManager);
  *v6 = v12;
  v6[1] = sub_10047D9E8;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_10047D9E8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 920);
  v6 = *v2;
  v4[116] = a1;
  v4[117] = v1;

  if (v1)
  {
    v7 = v4[103];
    v8 = sub_10047DF08;
  }

  else
  {
    v9 = v4[114];

    v8 = sub_10047DB24;
    v7 = a1;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_10047DB24()
{
  v1 = v0[116];
  v2 = v0[107];
  v3 = v0[106];
  v4 = v0[105];
  v5 = v0[104];
  v6 = v0[103];
  swift_allocObject();
  swift_weakInit();
  type metadata accessor for DataManager.State(0);
  (*(v4 + 104))(v3, enum case for AsyncStream.Continuation.BufferingPolicy.unbounded<A>(_:), v5);
  AsyncStream.init(_:bufferingPolicy:_:)();

  return _swift_task_switch(sub_10047DC3C, v6, 0);
}

uint64_t sub_10047DC3C()
{
  v1 = *(v0 + 856);
  v2 = *(v0 + 824);
  v3 = sub_10004B564(&qword_1005AA710, &qword_1004D2BA0);
  (*(*(v3 - 8) + 56))(v1, 0, 1, v3);
  v4 = OBJC_IVAR____TtC13findmylocated15SettingsService_dataManagerStateStream;
  swift_beginAccess();
  sub_100022364(v1, v2 + v4, &qword_1005B0F00, &qword_1004D2F00);
  swift_endAccess();

  swift_asyncLet_begin();

  return _swift_asyncLet_get_throwing(v0 + 16);
}

uint64_t sub_10047DD70(uint64_t a1, uint64_t a2)
{
  *(v3 + 944) = v2;
  if (v2)
  {
    v4 = sub_10047DF94;
    v5 = v3 + 16;
    v6 = v3 + 720;
  }

  else
  {
    v4 = sub_10047DDB0;
    v5 = v3 + 16;
    v6 = v3 + 784;
  }

  return _swift_asyncLet_finish(v5, a2, v4, v6);
}

uint64_t sub_10047DDCC()
{
  v1 = v0[116];
  v2 = v0[108];
  v3 = v0[107];
  v4 = v0[106];
  v5 = v0[103];

  v6 = v0[1];

  return v6();
}

uint64_t sub_10047DE68()
{
  (*(v0[111] + 8))(v0[108], v0[110]);
  v1 = v0[112];
  v2 = v0[108];
  v3 = v0[107];
  v4 = v0[106];

  v5 = v0[1];

  return v5();
}

uint64_t sub_10047DF08()
{
  v1 = v0[114];

  v2 = v0[117];
  v3 = v0[108];
  v4 = v0[107];
  v5 = v0[106];

  v6 = v0[1];

  return v6();
}

uint64_t sub_10047DFB0()
{
  v1 = v0[116];
  v2 = v0[103];

  v3 = v0[118];
  v4 = v0[108];
  v5 = v0[107];
  v6 = v0[106];

  v7 = v0[1];

  return v7();
}

uint64_t sub_10047E048()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000368C;

  return sub_10047E840();
}

uint64_t sub_10047E0D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_10000368C;

  return sub_10047E174(a5);
}

uint64_t sub_10047E174(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for ServiceEntitlements();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return _swift_task_switch(sub_10047E234, v1, 0);
}

uint64_t sub_10047E234()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(v0 + 32);
  v4 = *(v0 + 16);
  (*(v2 + 104))(v1, enum case for ServiceEntitlements.settingService(_:), v3);
  sub_100483A20(&qword_1005B0A00, 255, &type metadata accessor for ServiceEntitlements);
  LOBYTE(v4) = NSXPCConnection.hasEntitlement<A>(_:)();
  (*(v2 + 8))(v1, v3);
  if (v4)
  {
    v5 = *(*(v0 + 24) + OBJC_IVAR____TtC13findmylocated15SettingsService_connectionPool);
    v6 = *(&async function pointer to dispatch thunk of XPCClientConnectionPool.add(connection:) + 1);
    v19 = (&async function pointer to dispatch thunk of XPCClientConnectionPool.add(connection:) + async function pointer to dispatch thunk of XPCClientConnectionPool.add(connection:));
    v7 = swift_task_alloc();
    *(v0 + 56) = v7;
    *v7 = v0;
    v7[1] = sub_10047E544;
    v8 = *(v0 + 16);

    return v19(v8);
  }

  else
  {
    [*(v0 + 16) invalidate];
    sub_1000284BC();
    swift_allocError();
    *v10 = 4;
    swift_willThrow();
    if (qword_1005A85B8 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_10000A6F0(v11, qword_1005E0D18);
    swift_errorRetain();
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 138543362;
      v16 = _convertErrorToNSError(_:)();
      *(v14 + 4) = v16;
      *v15 = v16;
      _os_log_impl(&_mh_execute_header, v12, v13, "Error adding connection: %{public}@", v14, 0xCu);
      sub_100002CE0(v15, &qword_1005A9670, &unk_1004C2480);
    }

    else
    {
    }

    v17 = *(v0 + 48);

    v18 = *(v0 + 8);

    return v18();
  }
}

uint64_t sub_10047E544()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v4 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v5 = *(v2 + 24);

    return _swift_task_switch(sub_10047E6A0, v5, 0);
  }

  else
  {

    v6 = *(v2 + 48);

    v7 = *(v4 + 8);

    return v7();
  }
}

uint64_t sub_10047E6A0()
{
  v1 = v0[8];
  if (qword_1005A85B8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A6F0(v2, qword_1005E0D18);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138543362;
    v7 = _convertErrorToNSError(_:)();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&_mh_execute_header, v3, v4, "Error adding connection: %{public}@", v5, 0xCu);
    sub_100002CE0(v6, &qword_1005A9670, &unk_1004C2480);
  }

  else
  {
  }

  v8 = v0[6];

  v9 = v0[1];

  return v9();
}

uint64_t sub_10047E840()
{
  v1[5] = v0;
  v1[6] = *v0;
  v2 = *(*(sub_10004B564(&qword_1005AA718, &qword_1004C4370) - 8) + 64) + 15;
  v1[7] = swift_task_alloc();
  v3 = *(*(type metadata accessor for UUID() - 8) + 64) + 15;
  v1[8] = swift_task_alloc();
  v4 = type metadata accessor for PreferenceStreamChange();
  v1[9] = v4;
  v5 = *(v4 - 8);
  v1[10] = v5;
  v1[11] = *(v5 + 64);
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v6 = type metadata accessor for DataManager.State(0);
  v1[14] = v6;
  v7 = *(v6 - 8);
  v1[15] = v7;
  v8 = *(v7 + 64) + 15;
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v9 = *(*(sub_10004B564(&qword_1005AA6F8, &unk_1004C4350) - 8) + 64) + 15;
  v1[20] = swift_task_alloc();
  v10 = sub_10004B564(&qword_1005AA700, &unk_1004D2F70);
  v1[21] = v10;
  v11 = *(v10 - 8);
  v1[22] = v11;
  v12 = *(v11 + 64) + 15;
  v1[23] = swift_task_alloc();
  v13 = *(*(sub_10004B564(&qword_1005B0F00, &qword_1004D2F00) - 8) + 64) + 15;
  v1[24] = swift_task_alloc();
  v14 = sub_10004B564(&qword_1005AA710, &qword_1004D2BA0);
  v1[25] = v14;
  v15 = *(v14 - 8);
  v1[26] = v15;
  v16 = *(v15 + 64) + 15;
  v1[27] = swift_task_alloc();

  return _swift_task_switch(sub_10047EB60, v0, 0);
}

uint64_t sub_10047EB60()
{
  if (static SystemInfo.underTest.getter())
  {
    v1 = *(v0 + 216);
    v2 = *(v0 + 184);
    v3 = *(v0 + 192);
    v5 = *(v0 + 152);
    v4 = *(v0 + 160);
    v7 = *(v0 + 136);
    v6 = *(v0 + 144);
    v8 = *(v0 + 128);
    v10 = *(v0 + 96);
    v9 = *(v0 + 104);
    v46 = *(v0 + 64);
    v48 = *(v0 + 56);

    v11 = *(v0 + 8);
LABEL_11:

    return v11();
  }

  if (qword_1005A85B8 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  *(v0 + 224) = sub_10000A6F0(v12, qword_1005E0D18);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "Monitoring DataManager stream", v15, 2u);
  }

  v16 = *(v0 + 200);
  v17 = *(v0 + 208);
  v18 = *(v0 + 192);
  v19 = *(v0 + 40);

  v20 = OBJC_IVAR____TtC13findmylocated15SettingsService_dataManagerStateStream;
  swift_beginAccess();
  sub_100005F04(v19 + v20, v18, &qword_1005B0F00, &qword_1004D2F00);
  if ((*(v17 + 48))(v18, 1, v16) == 1)
  {
    sub_100002CE0(*(v0 + 192), &qword_1005B0F00, &qword_1004D2F00);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "dataManagerStateStream should be available by now!", v23, 2u);
    }

    sub_10006D30C();
    swift_allocError();
    *v24 = 10;
    swift_willThrow();
    v25 = *(v0 + 216);
    v27 = *(v0 + 184);
    v26 = *(v0 + 192);
    v29 = *(v0 + 152);
    v28 = *(v0 + 160);
    v31 = *(v0 + 136);
    v30 = *(v0 + 144);
    v32 = *(v0 + 128);
    v33 = *(v0 + 96);
    v34 = *(v0 + 104);
    v45 = *(v0 + 64);
    v47 = *(v0 + 56);

    v11 = *(v0 + 8);
    goto LABEL_11;
  }

  v36 = *(v0 + 184);
  (*(*(v0 + 208) + 32))(*(v0 + 216), *(v0 + 192), *(v0 + 200));
  AsyncStream.makeAsyncIterator()();
  v37 = sub_100483A20(&qword_1005B5210, 255, type metadata accessor for SettingsService);
  v38 = OBJC_IVAR____TtC13findmylocated15SettingsService_preferencesUpdateQueue;
  *(v0 + 232) = v37;
  *(v0 + 240) = v38;
  *(v0 + 264) = enum case for PreferenceStreamChange.initialized(_:);
  *(v0 + 268) = enum case for PreferenceStreamChange.friendRequests(_:);
  *(v0 + 272) = enum case for PreferenceStreamChange.myLocation(_:);
  *(v0 + 276) = enum case for PreferenceStreamChange.meDevice(_:);
  *(v0 + 248) = 0;
  v39 = *(v0 + 40);
  v40 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v41 = swift_task_alloc();
  *(v0 + 256) = v41;
  *v41 = v0;
  v41[1] = sub_10047F00C;
  v42 = *(v0 + 184);
  v43 = *(v0 + 160);
  v44 = *(v0 + 168);

  return AsyncStream.Iterator.next(isolation:)(v43, v39, v37, v44);
}

uint64_t sub_10047F00C()
{
  v1 = *(*v0 + 256);
  v2 = *(*v0 + 40);
  v4 = *v0;

  return _swift_task_switch(sub_10047F11C, v2, 0);
}

uint64_t sub_10047F11C()
{
  v123 = v0;
  v1 = *(v0 + 160);
  if ((*(*(v0 + 120) + 48))(v1, 1, *(v0 + 112)) == 1)
  {
    v3 = *(v0 + 208);
    v2 = *(v0 + 216);
    v4 = *(v0 + 200);
    (*(*(v0 + 176) + 8))(*(v0 + 184), *(v0 + 168));
    (*(v3 + 8))(v2, v4);
    v5 = *(v0 + 216);
    v6 = *(v0 + 184);
    v7 = *(v0 + 192);
    v9 = *(v0 + 152);
    v8 = *(v0 + 160);
    v11 = *(v0 + 136);
    v10 = *(v0 + 144);
    v12 = *(v0 + 128);
    v14 = *(v0 + 96);
    v13 = *(v0 + 104);
    v113 = *(v0 + 64);
    v119 = *(v0 + 56);

    v15 = *(v0 + 8);
LABEL_5:

    return v15();
  }

  v16 = *(v0 + 248);
  sub_1002BCB4C(v1, *(v0 + 152));
  static Task<>.checkCancellation()();
  if (v16)
  {
    v18 = *(v0 + 208);
    v17 = *(v0 + 216);
    v19 = *(v0 + 200);
    v21 = *(v0 + 176);
    v20 = *(v0 + 184);
    v22 = *(v0 + 168);
    sub_100243528(*(v0 + 152));
    (*(v21 + 8))(v20, v22);
    (*(v18 + 8))(v17, v19);
    v23 = *(v0 + 216);
    v24 = *(v0 + 184);
    v25 = *(v0 + 192);
    v27 = *(v0 + 152);
    v26 = *(v0 + 160);
    v29 = *(v0 + 136);
    v28 = *(v0 + 144);
    v30 = *(v0 + 128);
    v31 = *(v0 + 104);
    v111 = *(v0 + 96);
    v114 = *(v0 + 64);
    v120 = *(v0 + 56);

    v15 = *(v0 + 8);
    goto LABEL_5;
  }

  v33 = *(v0 + 224);
  sub_1002434C4(*(v0 + 152), *(v0 + 144));
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.default.getter();
  v36 = os_log_type_enabled(v34, v35);
  v37 = *(v0 + 144);
  if (v36)
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v122[0] = v39;
    *v38 = 136315138;
    v40 = sub_1001DA250(v39);
    v42 = v41;
    sub_100243528(v37);
    v43 = sub_10000D01C(v40, v42, v122);

    *(v38 + 4) = v43;
    _os_log_impl(&_mh_execute_header, v34, v35, "dataManagerStateStream event: %s", v38, 0xCu);
    sub_100004984(v39);
  }

  else
  {

    sub_100243528(v37);
  }

  v44 = *(v0 + 112);
  sub_1002434C4(*(v0 + 152), *(v0 + 136));
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload != 6)
      {
        goto LABEL_21;
      }

      v71 = *(v0 + 240);
      v121 = *(v0 + 152);
      v72 = *(v0 + 96);
      v50 = *(v0 + 104);
      v52 = *(v0 + 80);
      v73 = *(v0 + 88);
      v55 = *(v0 + 72);
      v74 = *(v0 + 40);
      v109 = *(v0 + 48);
      (*(v52 + 104))(v50, *(v0 + 264), v55);
      v117 = *(v74 + v71);
      type metadata accessor for WorkItemQueue.WorkItem();
      (*(v52 + 16))(v72, v50, v55);
      v75 = (*(v52 + 80) + 24) & ~*(v52 + 80);
      v76 = (v73 + v75 + 7) & 0xFFFFFFFFFFFFFFF8;
      v77 = swift_allocObject();
      *(v77 + 16) = v74;
      (*(v52 + 32))(v77 + v75, v72, v55);
      *(v77 + v76) = v109;

      UUID.init()();
    }

    else
    {
      if (EnumCaseMultiPayload != 4)
      {
        goto LABEL_21;
      }

      v48 = *(v0 + 268);
      v49 = *(v0 + 240);
      v121 = *(v0 + 152);
      v51 = *(v0 + 96);
      v50 = *(v0 + 104);
      v52 = *(v0 + 80);
      v53 = *(v0 + 88);
      v54 = *(v0 + 64);
      v55 = *(v0 + 72);
      v56 = *(v0 + 40);
      v107 = *(v0 + 48);
      *v50 = **(v0 + 136);
      (*(v52 + 104))(v50, v48, v55);
      v115 = *(v56 + v49);
      type metadata accessor for WorkItemQueue.WorkItem();
      (*(v52 + 16))(v51, v50, v55);
      v57 = (*(v52 + 80) + 24) & ~*(v52 + 80);
      v58 = (v53 + v57 + 7) & 0xFFFFFFFFFFFFFFF8;
      v59 = swift_allocObject();
      *(v59 + 16) = v56;
      (*(v52 + 32))(v59 + v57, v51, v55);
      *(v59 + v58) = v107;

      UUID.init()();
    }

    goto LABEL_26;
  }

  if ((EnumCaseMultiPayload - 1) < 2)
  {
    v46 = *(v0 + 136);
    v47 = type metadata accessor for Friend();
    (*(*(v47 - 8) + 8))(v46, v47);
LABEL_21:
    v78 = *(v0 + 224);
    sub_1002434C4(*(v0 + 152), *(v0 + 128));
    v79 = Logger.logObject.getter();
    v80 = static os_log_type_t.info.getter();
    v81 = os_log_type_enabled(v79, v80);
    v82 = *(v0 + 152);
    v83 = *(v0 + 128);
    if (v81)
    {
      v84 = swift_slowAlloc();
      v85 = swift_slowAlloc();
      v122[0] = v85;
      *v84 = 136315138;
      v86 = sub_1001DA250(v85);
      v88 = v87;
      sub_100243528(v83);
      v89 = sub_10000D01C(v86, v88, v122);

      *(v84 + 4) = v89;
      _os_log_impl(&_mh_execute_header, v79, v80, "Ignoring %s", v84, 0xCu);
      sub_100004984(v85);
    }

    else
    {

      sub_100243528(v83);
    }

    v90 = v82;
    goto LABEL_28;
  }

  if (EnumCaseMultiPayload)
  {
    v91 = *(v0 + 272);
    v92 = *(v0 + 240);
    v121 = *(v0 + 152);
    v93 = *(v0 + 96);
    v50 = *(v0 + 104);
    v52 = *(v0 + 80);
    v94 = *(v0 + 88);
    v95 = *(v0 + 64);
    v55 = *(v0 + 72);
    v96 = *(v0 + 40);
    v110 = *(v0 + 48);
    *v50 = **(v0 + 136);
    (*(v52 + 104))(v50, v91, v55);
    v118 = *(v96 + v92);
    type metadata accessor for WorkItemQueue.WorkItem();
    (*(v52 + 16))(v93, v50, v55);
    v97 = (*(v52 + 80) + 24) & ~*(v52 + 80);
    v98 = (v94 + v97 + 7) & 0xFFFFFFFFFFFFFFF8;
    v99 = swift_allocObject();
    *(v99 + 16) = v96;
    (*(v52 + 32))(v99 + v97, v93, v55);
    *(v99 + v98) = v110;

    UUID.init()();
LABEL_26:
    WorkItemQueue.WorkItem.__allocating_init(identifier:block:completion:)();
    dispatch thunk of WorkItemQueue.enqueue(_:)();

    (*(v52 + 8))(v50, v55);
    goto LABEL_27;
  }

  v60 = *(v0 + 276);
  v61 = *(v0 + 240);
  v63 = *(v0 + 96);
  v62 = *(v0 + 104);
  v65 = *(v0 + 80);
  v64 = *(v0 + 88);
  v66 = *(v0 + 72);
  v116 = *(v0 + 64);
  v121 = *(v0 + 152);
  v67 = *(v0 + 56);
  v108 = *(v0 + 48);
  v68 = *(v0 + 40);
  sub_100192DA0(*(v0 + 136), v67);
  sub_100005F04(v67, v62, &qword_1005AA718, &qword_1004C4370);
  (*(v65 + 104))(v62, v60, v66);
  v112 = *(v68 + v61);
  type metadata accessor for WorkItemQueue.WorkItem();
  (*(v65 + 16))(v63, v62, v66);
  v69 = (*(v65 + 80) + 24) & ~*(v65 + 80);
  v70 = swift_allocObject();
  *(v70 + 16) = v68;
  (*(v65 + 32))(v70 + v69, v63, v66);
  *(v70 + ((v64 + v69 + 7) & 0xFFFFFFFFFFFFFFF8)) = v108;

  UUID.init()();
  WorkItemQueue.WorkItem.__allocating_init(identifier:block:completion:)();
  dispatch thunk of WorkItemQueue.enqueue(_:)();

  (*(v65 + 8))(v62, v66);
  sub_100002CE0(v67, &qword_1005AA718, &qword_1004C4370);
LABEL_27:
  v90 = v121;
LABEL_28:
  sub_100243528(v90);
  *(v0 + 248) = 0;
  v100 = *(v0 + 232);
  v101 = *(v0 + 40);
  v102 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v103 = swift_task_alloc();
  *(v0 + 256) = v103;
  *v103 = v0;
  v103[1] = sub_10047F00C;
  v104 = *(v0 + 184);
  v105 = *(v0 + 160);
  v106 = *(v0 + 168);

  return AsyncStream.Iterator.next(isolation:)(v105, v101, v100, v106);
}

uint64_t sub_10047FB6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = type metadata accessor for PreferenceStreamChange();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v3[7] = *(v5 + 64);
  v3[8] = swift_task_alloc();

  return _swift_task_switch(sub_10047FC38, 0, 0);
}

uint64_t sub_10047FC38()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[4];
  v6 = v0[2];
  (*(v4 + 16))(v1, v0[3], v3);
  v7 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v8 = (v2 + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = swift_allocObject();
  v0[9] = v9;
  *(v9 + 16) = v6;
  (*(v4 + 32))(v9 + v7, v1, v3);
  *(v9 + v8) = v5;
  v10 = async function pointer to withTimeout<A>(_:block:)[1];

  v11 = swift_task_alloc();
  v0[10] = v11;
  *v11 = v0;
  v11[1] = sub_1001EDCA8;

  return withTimeout<A>(_:block:)(v11, 0x40AAD21B3B700000, 3, &unk_1004DC690, v9, &type metadata for () + 8);
}

uint64_t sub_10047FDA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[3] = a2;
  v5 = type metadata accessor for PreferenceStreamChange();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();

  return _swift_task_switch(sub_10047FE68, 0, 0);
}

uint64_t sub_10047FE68()
{
  *(v0 + 72) = *(*(v0 + 24) + OBJC_IVAR____TtC13findmylocated15SettingsService_connectionPool);
  sub_10004B564(&qword_1005B5248, &qword_1004DC698);
  sub_10001DF0C(&qword_1005B5250, &qword_1005B5248, &qword_1004DC698);
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10047FF40, v2, v1);
}

uint64_t sub_10047FF40()
{
  v1 = v0[9];
  v2 = dispatch thunk of XPCClientConnectionPool.sessions.getter();
  v0[10] = v2;
  v0[2] = v2;
  v3 = async function pointer to Sequence.asyncMap<A>(_:)[1];
  v4 = swift_task_alloc();
  v0[11] = v4;
  v5 = sub_10004B564(&qword_1005B5258, &qword_1004DC6A8);
  v6 = type metadata accessor for UUID();
  v0[12] = v6;
  v7 = sub_10001DF0C(&qword_1005B5260, &qword_1005B5258, &qword_1004DC6A8);
  *v4 = v0;
  v4[1] = sub_100480074;

  return Sequence.asyncMap<A>(_:)(&unk_1004DC6A0, 0, v5, v6, v7);
}

uint64_t sub_100480074(uint64_t a1)
{
  v3 = *(*v2 + 88);
  v5 = *v2;
  *(*v2 + 104) = a1;

  if (v1)
  {
  }

  else
  {

    return _swift_task_switch(sub_10048019C, 0, 0);
  }
}

uint64_t sub_10048019C()
{
  if (qword_1005A85B8 != -1)
  {
    swift_once();
  }

  v1 = v0[13];
  v2 = v0[10];
  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[6];
  v6 = v0[4];
  v7 = type metadata accessor for Logger();
  sub_10000A6F0(v7, qword_1005E0D18);
  (*(v4 + 16))(v3, v6, v5);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = v0[10];
    v11 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    *v11 = 134218755;
    if ((v10 & 0xC000000000000001) != 0)
    {
      v12 = __CocoaSet.count.getter();
      v13 = v0[10];
    }

    else
    {
      v12 = *(v0[10] + 16);
    }

    v20 = v0[12];
    v19 = v0[13];
    v22 = v0[7];
    v21 = v0[8];
    v23 = v0[6];
    *(v11 + 4) = v12;

    *(v11 + 12) = 2082;
    v24 = Array.description.getter();
    v26 = v25;

    v27 = sub_10000D01C(v24, v26, &v39);

    *(v11 + 14) = v27;
    *(v11 + 22) = 2160;
    *(v11 + 24) = 1752392040;
    *(v11 + 32) = 2081;
    sub_100483A20(&qword_1005B5268, 255, &type metadata accessor for PreferenceStreamChange);
    v28 = dispatch thunk of CustomStringConvertible.description.getter();
    v30 = v29;
    (*(v22 + 8))(v21, v23);
    v31 = sub_10000D01C(v28, v30, &v39);

    *(v11 + 34) = v31;
    _os_log_impl(&_mh_execute_header, v8, v9, "SettingsService: send meDevice Update to all clients:\nclients[%ld]: %{public}s\nupdates:%{private,mask.hash}s", v11, 0x2Au);
    swift_arrayDestroy();
  }

  else
  {
    v14 = v0[13];
    v15 = v0[10];
    v17 = v0[7];
    v16 = v0[8];
    v18 = v0[6];

    (*(v17 + 8))(v16, v18);
  }

  v32 = v0[10];
  v33 = swift_task_alloc();
  v0[14] = v33;
  v34 = *(v0 + 2);
  *(v33 + 16) = v32;
  *(v33 + 24) = v34;
  v35 = async function pointer to withThrowingTaskGroup<A, B>(of:returning:isolation:body:)[1];
  v36 = swift_task_alloc();
  v0[15] = v36;
  *v36 = v0;
  v36[1] = sub_100480554;

  return withThrowingTaskGroup<A, B>(of:returning:isolation:body:)();
}

uint64_t sub_100480554()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v4 = *v1;

  if (v0)
  {
  }

  else
  {
    v6 = *(v2 + 112);
    v7 = *(v2 + 80);

    return _swift_task_switch(sub_100483D1C, 0, 0);
  }
}

uint64_t sub_10048069C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[18] = a4;
  v5[19] = a5;
  v5[16] = a2;
  v5[17] = a3;
  v6 = type metadata accessor for PreferenceStreamChange();
  v5[20] = v6;
  v7 = *(v6 - 8);
  v5[21] = v7;
  v5[22] = *(v7 + 64);
  v5[23] = swift_task_alloc();
  v8 = *(*(sub_10004B564(&qword_1005A9690, &qword_1004C2A00) - 8) + 64) + 15;
  v5[24] = swift_task_alloc();
  v5[25] = swift_task_alloc();

  return _swift_task_switch(sub_1004807AC, 0, 0);
}

uint64_t sub_1004807AC()
{
  v1 = v0[17];
  if ((v1 & 0xC000000000000001) != 0)
  {
    if (v1 < 0)
    {
      v2 = v0[17];
    }

    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for SettingsServiceClient();
    sub_100483A20(&qword_1005B5220, v3, type metadata accessor for SettingsServiceClient);
    result = Set.Iterator.init(_cocoa:)();
    v1 = v0[2];
    v5 = v0[3];
    v6 = v0[4];
    v7 = v0[5];
    v8 = v0[6];
  }

  else
  {
    v9 = -1 << *(v1 + 32);
    v5 = v1 + 56;
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

    v8 = v11 & *(v1 + 56);
    v12 = v0[17];

    v7 = 0;
  }

  v42 = v0 + 7;
  v13 = (v6 + 64) >> 6;
  v45 = v0[22] + 7;
  v46 = v0[21];
  v47 = v5;
  v44 = v0;
  v48 = v1;
  v43 = v13;
  while (v1 < 0)
  {
    v21 = __CocoaSet.Iterator.next()();
    if (!v21 || (v0[15] = v21, type metadata accessor for SettingsServiceClient(), swift_dynamicCast(), v20 = v0[14], v18 = v7, v19 = v8, !v20))
    {
LABEL_29:
      v39 = v0[24];
      v38 = v0[25];
      v40 = v0[23];
      sub_10000E3F8();

      v41 = v0[1];

      return v41();
    }

LABEL_21:
    v52 = v19;
    v22 = v0[25];
    v49 = v22;
    v51 = v0[24];
    v23 = v0[23];
    v24 = v0[20];
    v50 = v0[19];
    v25 = v0[18];
    v26 = type metadata accessor for TaskPriority();
    v27 = *(v26 - 8);
    (*(v27 + 56))(v22, 1, 1, v26);
    (*(v46 + 16))(v23, v25, v24);
    v28 = (*(v46 + 80) + 40) & ~*(v46 + 80);
    v29 = swift_allocObject();
    v29[2] = 0;
    v30 = v29 + 2;
    v29[3] = 0;
    v29[4] = v20;
    (*(v46 + 32))(v29 + v28, v23, v24);
    *(v29 + ((v45 + v28) & 0xFFFFFFFFFFFFFFF8)) = v50;
    sub_100005F04(v49, v51, &qword_1005A9690, &qword_1004C2A00);
    LODWORD(v23) = (*(v27 + 48))(v51, 1, v26);

    v31 = v44[24];
    if (v23 == 1)
    {
      sub_100002CE0(v44[24], &qword_1005A9690, &qword_1004C2A00);
    }

    else
    {
      TaskPriority.rawValue.getter();
      (*(v27 + 8))(v31, v26);
    }

    v0 = v44;
    if (*v30)
    {
      v32 = v29[3];
      v33 = *v30;
      swift_getObjectType();
      swift_unknownObjectRetain();
      v34 = dispatch thunk of Actor.unownedExecutor.getter();
      v36 = v35;
      swift_unknownObjectRelease();
    }

    else
    {
      v34 = 0;
      v36 = 0;
    }

    v37 = *v44[16];

    if (v36 | v34)
    {
      v14 = v42;
      *v42 = 0;
      v42[1] = 0;
      v44[9] = v34;
      v44[10] = v36;
    }

    else
    {
      v14 = 0;
    }

    v13 = v43;
    v15 = v44[25];
    v44[11] = 1;
    v44[12] = v14;
    v44[13] = v37;
    swift_task_create();

    result = sub_100002CE0(v15, &qword_1005A9690, &qword_1004C2A00);
    v7 = v18;
    v8 = v52;
    v5 = v47;
    v1 = v48;
  }

  v16 = v7;
  v17 = v8;
  v18 = v7;
  if (v8)
  {
LABEL_17:
    v19 = (v17 - 1) & v17;
    v20 = *(*(v1 + 48) + ((v18 << 9) | (8 * __clz(__rbit64(v17)))));

    if (!v20)
    {
      goto LABEL_29;
    }

    goto LABEL_21;
  }

  while (1)
  {
    v18 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v18 >= v13)
    {
      goto LABEL_29;
    }

    v17 = *(v5 + 8 * v18);
    ++v16;
    if (v17)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100480CA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = type metadata accessor for PreferenceStreamChange();
  v6[5] = v7;
  v8 = *(v7 - 8);
  v6[6] = v8;
  v6[7] = *(v8 + 64);
  v6[8] = swift_task_alloc();
  v9 = type metadata accessor for UUID();
  v6[9] = v9;
  v10 = *(v9 - 8);
  v6[10] = v10;
  v6[11] = *(v10 + 64);
  v6[12] = swift_task_alloc();
  v6[13] = swift_task_alloc();
  v6[14] = swift_task_alloc();

  return _swift_task_switch(sub_100480DF0, 0, 0);
}

uint64_t sub_100480DF0()
{
  static Task<>.checkCancellation()();
  v1 = *(v0[2] + 112);
  v2 = *(&async function pointer to dispatch thunk of FM.XPCSession.underlyingConnectionIdentity.getter + 1);
  v6 = (&async function pointer to dispatch thunk of FM.XPCSession.underlyingConnectionIdentity.getter + async function pointer to dispatch thunk of FM.XPCSession.underlyingConnectionIdentity.getter);
  v3 = swift_task_alloc();
  v0[15] = v3;
  *v3 = v0;
  v3[1] = sub_100480F20;
  v4 = v0[14];

  return v6(v4);
}

uint64_t sub_100480F20()
{
  v1 = *(*v0 + 120);
  v3 = *v0;

  return _swift_task_switch(sub_10048101C, 0, 0);
}

uint64_t sub_10048101C()
{
  v2 = v0[13];
  v1 = v0[14];
  v4 = v0[10];
  v3 = v0[11];
  v5 = v0[8];
  v6 = v0[9];
  v8 = v0[6];
  v7 = v0[7];
  v9 = v0[5];
  v19 = v9;
  v20 = v5;
  v10 = v0[3];
  v21 = v0[2];
  v22 = v0[4];
  v11 = *(v4 + 16);
  v0[16] = v11;
  v0[17] = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v11(v2, v1, v6);
  (*(v8 + 16))(v5, v10, v9);
  v12 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v13 = (v3 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = (*(v8 + 80) + v13 + 8) & ~*(v8 + 80);
  v15 = swift_allocObject();
  v0[18] = v15;
  (*(v4 + 32))(v15 + v12, v2, v6);
  *(v15 + v13) = v21;
  (*(v8 + 32))(v15 + v14, v20, v19);
  *(v15 + ((v7 + v14 + 7) & 0xFFFFFFFFFFFFFFF8)) = v22;
  v16 = async function pointer to withTimeout<A>(_:block:)[1];

  v17 = swift_task_alloc();
  v0[19] = v17;
  *v17 = v0;
  v17[1] = sub_10048120C;

  return withTimeout<A>(_:block:)(v17, 0x8AC7230489E80000, 0, &unk_1004DC6D8, v15, &type metadata for () + 8);
}

uint64_t sub_10048120C()
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v7 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v4 = sub_1004813CC;
  }

  else
  {
    v5 = *(v2 + 144);

    v4 = sub_100481328;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100481328()
{
  (*(v0[10] + 8))(v0[14], v0[9]);
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];
  v4 = v0[8];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1004813CC()
{
  v35 = v0;
  v1 = v0[18];

  if (qword_1005A85B8 != -1)
  {
    swift_once();
  }

  v2 = v0[20];
  v4 = v0[16];
  v3 = v0[17];
  v5 = v0[14];
  v6 = v0[12];
  v7 = v0[9];
  v8 = type metadata accessor for Logger();
  sub_10000A6F0(v8, qword_1005E0D18);
  v4(v6, v5, v7);
  swift_errorRetain();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();

  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[20];
  v13 = v0[14];
  v14 = v0[12];
  v15 = v0[9];
  v16 = v0[10];
  if (v11)
  {
    v33 = v0[14];
    v17 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v34 = v32;
    *v17 = 136446466;
    sub_100483A20(&qword_1005A92C0, 255, &type metadata accessor for UUID);
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    v20 = v19;
    v21 = *(v16 + 8);
    v21(v14, v15);
    v22 = sub_10000D01C(v18, v20, &v34);

    *(v17 + 4) = v22;
    *(v17 + 12) = 2114;
    swift_errorRetain();
    v23 = _swift_stdlib_bridgeErrorToNSError();
    *(v17 + 14) = v23;
    *v31 = v23;
    _os_log_impl(&_mh_execute_header, v9, v10, "Error from client %{public}s error: %{public}@", v17, 0x16u);
    sub_100002CE0(v31, &qword_1005A9670, &unk_1004C2480);

    sub_100004984(v32);

    v21(v33, v15);
  }

  else
  {

    v24 = *(v16 + 8);
    v24(v14, v15);
    v24(v13, v15);
  }

  v26 = v0[13];
  v25 = v0[14];
  v27 = v0[12];
  v28 = v0[8];

  v29 = v0[1];

  return v29();
}

uint64_t sub_1004816F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a2;
  v5 = type metadata accessor for UUID();
  v4[5] = v5;
  v6 = *(v5 - 8);
  v4[6] = v6;
  v7 = *(v6 + 64) + 15;
  v4[7] = swift_task_alloc();
  v4[8] = swift_task_alloc();

  return _swift_task_switch(sub_1004817C0, 0, 0);
}

uint64_t sub_1004817C0()
{
  v23 = v0;
  if (qword_1005A85B8 != -1)
  {
    swift_once();
  }

  v1 = v0[8];
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[2];
  v5 = type metadata accessor for Logger();
  v0[9] = sub_10000A6F0(v5, qword_1005E0D18);
  v6 = *(v3 + 16);
  v0[10] = v6;
  v0[11] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[8];
  v11 = v0[5];
  v12 = v0[6];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v22 = v21;
    *v13 = 136446210;
    sub_100483A20(&qword_1005A92C0, 255, &type metadata accessor for UUID);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    v17 = *(v12 + 8);
    v17(v10, v11);
    v18 = sub_10000D01C(v14, v16, &v22);

    *(v13 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v7, v8, "Sending preferences update to client %{public}s", v13, 0xCu);
    sub_100004984(v21);
  }

  else
  {

    v17 = *(v12 + 8);
    v17(v10, v11);
  }

  v0[12] = v17;
  v19 = v0[3];

  return _swift_task_switch(sub_100481A14, v19, 0);
}

uint64_t sub_100481A14()
{
  v1 = swift_task_alloc();
  *(v0 + 104) = v1;
  *(v1 + 16) = *(v0 + 24);
  v2 = async function pointer to withOnceCheckedThrowingContinuation<A>(function:_:)[1];
  v3 = swift_task_alloc();
  *(v0 + 112) = v3;
  *v3 = v0;
  v3[1] = sub_100481AF8;

  return withOnceCheckedThrowingContinuation<A>(function:_:)(v3, 0xD000000000000016, 0x80000001004EAE20, sub_100483D28, v1, &type metadata for () + 8);
}

uint64_t sub_100481AF8()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v9 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v4 = *(v2 + 24);
    v5 = sub_1002B7418;
  }

  else
  {
    v6 = *(v2 + 104);
    v7 = *(v2 + 24);

    v5 = sub_100481C20;
    v4 = v7;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100481C3C()
{
  v22 = v0;
  v1 = *(v0 + 88);
  v2 = *(v0 + 72);
  (*(v0 + 80))(*(v0 + 56), *(v0 + 16), *(v0 + 40));
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 96);
  v8 = *(v0 + 48);
  v7 = *(v0 + 56);
  v9 = *(v0 + 40);
  if (v5)
  {
    v20 = *(v0 + 96);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v21 = v11;
    *v10 = 136446210;
    sub_100483A20(&qword_1005A92C0, 255, &type metadata accessor for UUID);
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    v14 = v13;
    v20(v7, v9);
    v15 = sub_10000D01C(v12, v14, &v21);

    *(v10 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v3, v4, "Successfully sent preferences update to client %{public}s", v10, 0xCu);
    sub_100004984(v11);
  }

  else
  {

    v6(v7, v9);
  }

  v17 = *(v0 + 56);
  v16 = *(v0 + 64);

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_100481E54()
{
  if (qword_1005A85B8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000A6F0(v1, qword_1005E0D18);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "STUB: initialLaunchProcessing", v4, 2u);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_100481F68(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  v4 = type metadata accessor for SystemVersionNumber();
  v3[4] = v4;
  v5 = *(v4 - 8);
  v3[5] = v5;
  v6 = *(v5 + 64) + 15;
  v3[6] = swift_task_alloc();
  v3[7] = swift_task_alloc();

  return _swift_task_switch(sub_100482034, v2, 0);
}

uint64_t sub_100482034()
{
  v33 = v0;
  if (qword_1005A85B8 != -1)
  {
    swift_once();
  }

  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[4];
  v4 = v0[5];
  v6 = v0[2];
  v5 = v0[3];
  v7 = type metadata accessor for Logger();
  sub_10000A6F0(v7, qword_1005E0D18);
  v8 = *(v4 + 16);
  v8(v2, v6, v3);
  v8(v1, v5, v3);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();
  v11 = os_log_type_enabled(v9, v10);
  v13 = v0[6];
  v12 = v0[7];
  v15 = v0[4];
  v14 = v0[5];
  if (v11)
  {
    v31 = v10;
    v16 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    *v16 = 136315394;
    sub_100483A20(&qword_1005B02E0, 255, &type metadata accessor for SystemVersionNumber);
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = v18;
    v20 = *(v14 + 8);
    v20(v12, v15);
    v21 = sub_10000D01C(v17, v19, &v32);

    *(v16 + 4) = v21;
    *(v16 + 12) = 2080;
    v22 = dispatch thunk of CustomStringConvertible.description.getter();
    v24 = v23;
    v20(v13, v15);
    v25 = sub_10000D01C(v22, v24, &v32);

    *(v16 + 14) = v25;
    _os_log_impl(&_mh_execute_header, v9, v31, "STUB: migrate from %s to %s", v16, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v26 = *(v14 + 8);
    v26(v13, v15);
    v26(v12, v15);
  }

  v28 = v0[6];
  v27 = v0[7];

  v29 = v0[1];

  return v29();
}

uint64_t sub_100482320()
{
  v1 = *(v0 + 120);

  sub_100002CE0(v0 + OBJC_IVAR____TtC13findmylocated15SettingsService_serviceDescription, &qword_1005B09F8, &qword_1004D23A8);
  v2 = *(v0 + OBJC_IVAR____TtC13findmylocated15SettingsService_trampoline);

  v3 = *(v0 + OBJC_IVAR____TtC13findmylocated15SettingsService_connectionPool);

  v4 = *(v0 + OBJC_IVAR____TtC13findmylocated15SettingsService_preferencesUpdateQueue);

  v5 = *(v0 + OBJC_IVAR____TtC13findmylocated15SettingsService_xpcSessionManager);

  sub_100002CE0(v0 + OBJC_IVAR____TtC13findmylocated15SettingsService_dataManagerStateStream, &qword_1005B0F00, &qword_1004D2F00);
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t type metadata accessor for SettingsService()
{
  result = qword_1005B50C0;
  if (!qword_1005B50C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10048242C()
{
  sub_10024D88C();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_1002B76C8();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_100482524()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000368C;

  return sub_100481E38();
}

uint64_t sub_1004825B0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000368C;

  return sub_100481F68(a1, a2);
}

uint64_t sub_100482654(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to ActorServiceProtocol.firstLaunchSinceReboot()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = type metadata accessor for SettingsService();
  *v5 = v2;
  v5[1] = sub_100003690;

  return ActorServiceProtocol.firstLaunchSinceReboot()(v6, a2);
}

uint64_t sub_100482700()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000368C;

  return sub_10047CBFC();
}

uint64_t sub_10048278C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100003690;

  return sub_10047D450();
}

uint64_t sub_100482818()
{
  v1 = *v0;
  type metadata accessor for SettingsService();
  sub_100483A20(&qword_1005AA6E8, 255, type metadata accessor for SettingsService);
  return ActorServiceProtocol.description.getter();
}

uint64_t sub_1004829B8(uint64_t a1)
{
  v4 = *(type metadata accessor for PreferenceStreamChange() - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10000368C;

  return sub_10047AB34(a1, v6, v7, v8, v9, v1 + v5);
}

uint64_t sub_100482ABC(uint64_t a1)
{
  v4 = *(type metadata accessor for PreferenceStreamChange() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000368C;

  return sub_10047B0A0(a1, v6, v7, v1 + v5);
}

uint64_t sub_100482BB4(uint64_t a1)
{
  v4 = *(sub_10004B564(&qword_1005AA718, &qword_1004C4370) - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10000368C;

  return sub_10047B688(a1, v6, v7, v8, v9, v1 + v5);
}

uint64_t sub_100482CC4(uint64_t a1)
{
  v4 = *(sub_10004B564(&qword_1005AA718, &qword_1004C4370) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000368C;

  return sub_10047BC3C(a1, v6, v7, v1 + v5);
}

unint64_t sub_100482DDC()
{
  result = qword_1005B5238;
  if (!qword_1005B5238)
  {
    sub_10004B610(&qword_1005AA718, &qword_1004C4370);
    sub_100483A20(&qword_1005B5240, 255, &type metadata accessor for Device);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B5238);
  }

  return result;
}

uint64_t sub_100482E94()
{
  v2 = *(type metadata accessor for PreferenceStreamChange() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_10000368C;

  return sub_10047FB6C(v4, v0 + v3, v5);
}

uint64_t sub_100482FBC()
{
  v14 = v0;
  if (qword_1005A85B8 != -1)
  {
    swift_once();
  }

  v1 = v0[3];
  v2 = type metadata accessor for Logger();
  sub_10000A6F0(v2, qword_1005E0D18);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[3];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136315138;
    v0[2] = v5;
    type metadata accessor for SettingsServiceClient();

    v8 = String.init<A>(describing:)();
    v10 = sub_10000D01C(v8, v9, &v13);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "Settings Service: removed connection: %s", v6, 0xCu);
    sub_100004984(v7);
  }

  v11 = v0[1];

  return v11();
}