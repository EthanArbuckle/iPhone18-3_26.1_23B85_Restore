id sub_1001607FC()
{
  v1 = (swift_isaMask & *v0);
  v2 = *(v0 + v1[14]);
  if (v2)
  {
    v3 = (v0 + *((swift_isaMask & *v0) + 0x68));
    v4 = *v3;
    v5 = v3[1];
    v6 = v2;

    v7 = String._bridgeToObjectiveC()();

    [v6 removeObserver:v0 forKeyPath:v7 context:0];
  }

  v8 = v1[10];
  v9 = v1[11];
  v11.receiver = v0;
  v11.super_class = type metadata accessor for UserDefault();
  return objc_msgSendSuper2(&v11, "dealloc");
}

uint64_t sub_100160924(char *a1)
{
  (*(*(*((swift_isaMask & *a1) + 0x50) - 8) + 8))(&a1[*((swift_isaMask & *a1) + 0x60)]);
  v2 = *&a1[*((swift_isaMask & *a1) + 0x68) + 8];

  v3 = *((swift_isaMask & *a1) + 0x80);
  v4 = type metadata accessor for Logger();
  (*(*(v4 - 8) + 8))(&a1[v3], v4);
  v5 = *&a1[*((swift_isaMask & *a1) + 0x88)];
}

uint64_t sub_100160A80(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_6:
    memset(v13, 0, sizeof(v13));
    v10 = a5;
    v11 = a1;
    if (!a5)
    {
      goto LABEL_7;
    }

    goto LABEL_4;
  }

  if (!a4)
  {
    goto LABEL_6;
  }

LABEL_3:
  swift_unknownObjectRetain();
  v8 = a5;
  v9 = a1;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  if (a5)
  {
LABEL_4:
    type metadata accessor for NSKeyValueChangeKey(0);
    sub_100165F94(&qword_100339C10, type metadata accessor for NSKeyValueChangeKey);
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

LABEL_7:
  sub_100165888(v13);

  return sub_1000097E8(v13, &unk_100339680, &qword_100278390);
}

void sub_100160BB0(void *a1)
{
  v1 = *((swift_isaMask & *a1) + 0x50);
  v2 = *((swift_isaMask & *a1) + 0x58);
  sub_10016599C();
}

uint64_t sub_100160BF0(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 7107189;
    v6 = 1684632949;
    if (a1 != 8)
    {
      v6 = 1701736302;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x676E69727473;
    if (a1 != 5)
    {
      v7 = 0x3233746E6975;
    }

    if (a1 <= 6u)
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
    v1 = 1819242338;
    v2 = 1702125924;
    v3 = 0x656C62756F64;
    if (a1 != 3)
    {
      v3 = 7630441;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 1635017060;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_100160CE8(void *a1)
{
  v2 = sub_100035D04(&qword_1003484E0, &qword_100281000);
  v110 = *(v2 - 8);
  v111 = v2;
  v3 = *(v110 + 64);
  __chkstk_darwin(v2);
  v108 = &v81 - v4;
  v5 = sub_100035D04(&qword_1003484E8, &qword_100281008);
  v115 = *(v5 - 8);
  v116 = v5;
  v6 = *(v115 + 64);
  __chkstk_darwin(v5);
  v112 = &v81 - v7;
  v8 = type metadata accessor for UUID();
  v113 = *(v8 - 8);
  v114 = v8;
  v9 = *(v113 + 64);
  __chkstk_darwin(v8);
  v109 = &v81 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100035D04(&qword_1003484F0, &qword_100281010);
  v106 = *(v11 - 8);
  v107 = v11;
  v12 = *(v106 + 64);
  __chkstk_darwin(v11);
  v103 = &v81 - v13;
  v14 = type metadata accessor for URL();
  v104 = *(v14 - 8);
  v105 = v14;
  v15 = *(v104 + 64);
  __chkstk_darwin(v14);
  v102 = &v81 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_100035D04(&qword_1003484F8, &qword_100281018);
  v100 = *(v101 - 8);
  v17 = *(v100 + 64);
  __chkstk_darwin(v101);
  v98 = &v81 - v18;
  v99 = sub_100035D04(&qword_100348500, &qword_100281020);
  v97 = *(v99 - 8);
  v19 = *(v97 + 64);
  __chkstk_darwin(v99);
  v96 = &v81 - v20;
  v95 = sub_100035D04(&qword_100348508, &qword_100281028);
  v94 = *(v95 - 8);
  v21 = *(v94 + 64);
  __chkstk_darwin(v95);
  v93 = &v81 - v22;
  v90 = sub_100035D04(&qword_100348510, &qword_100281030);
  v88 = *(v90 - 8);
  v23 = *(v88 + 64);
  __chkstk_darwin(v90);
  v85 = &v81 - v24;
  v92 = sub_100035D04(&qword_100348518, &qword_100281038);
  v91 = *(v92 - 8);
  v25 = *(v91 + 64);
  __chkstk_darwin(v92);
  v86 = &v81 - v26;
  v89 = type metadata accessor for Date();
  v87 = *(v89 - 8);
  v27 = *(v87 + 64);
  __chkstk_darwin(v89);
  v84 = &v81 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_100035D04(&qword_100348520, &qword_100281040);
  v82 = *(v83 - 8);
  v29 = *(v82 + 64);
  __chkstk_darwin(v83);
  v31 = &v81 - v30;
  v32 = sub_100035D04(&qword_100348528, &qword_100281048);
  v81 = *(v32 - 8);
  v33 = *(v81 + 64);
  __chkstk_darwin(v32);
  v35 = &v81 - v34;
  v36 = type metadata accessor for UserDefaultsRepresentation();
  v37 = *(*(v36 - 8) + 64);
  __chkstk_darwin(v36);
  v39 = (&v81 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0));
  v40 = sub_100035D04(&qword_100348530, &qword_100281050);
  v41 = *(v40 - 8);
  v119 = v40;
  v120 = v41;
  v42 = *(v41 + 64);
  __chkstk_darwin(v40);
  v44 = &v81 - v43;
  v45 = a1[4];
  sub_10000EBC0(a1, a1[3]);
  sub_100165ADC();
  v118 = v44;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_100165F30(v117, v39);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload <= 6)
    {
      if (EnumCaseMultiPayload != 5)
      {
        v80 = *v39;
        LOBYTE(v121) = 6;
        sub_100165C90();
        v69 = v98;
        v58 = v118;
        v57 = v119;
        KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v70 = v101;
        KeyedEncodingContainer.encode(_:forKey:)();
        v71 = &v124;
LABEL_21:
        (*(*(v71 - 32) + 8))(v69, v70);
        return (*(v120 + 8))(v58, v57);
      }

      v65 = *v39;
      v64 = v39[1];
      LOBYTE(v121) = 5;
      sub_100165CE4();
      v66 = v96;
      v58 = v118;
      v57 = v119;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v67 = v99;
      KeyedEncodingContainer.encode(_:forKey:)();

      (*(v97 + 8))(v66, v67);
      return (*(v120 + 8))(v58, v57);
    }

    if (EnumCaseMultiPayload == 7)
    {
      v54 = v104;
      v53 = v105;
      v55 = v102;
      (*(v104 + 32))(v102, v39, v105);
      LOBYTE(v121) = 7;
      sub_100165C3C();
      v56 = v103;
      v58 = v118;
      v57 = v119;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      sub_100165F94(&qword_100348538, &type metadata accessor for URL);
      v59 = v107;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v60 = v106;
    }

    else
    {
      if (EnumCaseMultiPayload != 8)
      {
        LOBYTE(v121) = 9;
        sub_100165B30();
        v72 = v108;
        v74 = v118;
        v73 = v119;
        KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        (*(v110 + 8))(v72, v111);
        return (*(v120 + 8))(v74, v73);
      }

      v54 = v113;
      v53 = v114;
      v55 = v109;
      (*(v113 + 32))(v109, v39, v114);
      LOBYTE(v121) = 8;
      sub_100165BE8();
      v56 = v112;
      v58 = v118;
      v57 = v119;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      sub_100165F94(&qword_1003437D8, &type metadata accessor for UUID);
      v59 = v116;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v60 = v115;
    }

LABEL_16:
    (*(v60 + 8))(v56, v59);
    (*(v54 + 8))(v55, v53);
    return (*(v120 + 8))(v58, v57);
  }

  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      if (EnumCaseMultiPayload == 3)
      {
        v47 = *v39;
        LOBYTE(v121) = 3;
        sub_100165D8C();
        v48 = v85;
        v50 = v118;
        v49 = v119;
        KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v51 = v90;
        KeyedEncodingContainer.encode(_:forKey:)();
        (*(v88 + 8))(v48, v51);
        return (*(v120 + 8))(v50, v49);
      }

      v68 = *v39;
      LOBYTE(v121) = 4;
      sub_100165D38();
      v69 = v93;
      v58 = v118;
      v57 = v119;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v70 = v95;
      KeyedEncodingContainer.encode(_:forKey:)();
      v71 = &v123;
      goto LABEL_21;
    }

    v54 = v87;
    v55 = v84;
    v53 = v89;
    (*(v87 + 32))(v84, v39, v89);
    LOBYTE(v121) = 2;
    sub_100165DE0();
    v56 = v86;
    v58 = v118;
    v57 = v119;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    sub_100165F94(&qword_100346608, &type metadata accessor for Date);
    v59 = v92;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v60 = v91;
    goto LABEL_16;
  }

  if (EnumCaseMultiPayload)
  {
    v75 = *v39;
    v76 = v39[1];
    LOBYTE(v121) = 1;
    sub_100165E34();
    v77 = v118;
    v78 = v119;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v121 = v75;
    v122 = v76;
    sub_100165FDC();
    v79 = v83;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v82 + 8))(v31, v79);
    (*(v120 + 8))(v77, v78);
    return sub_100010708(v75, v76);
  }

  else
  {
    v61 = *v39;
    LOBYTE(v121) = 0;
    sub_100165EDC();
    v63 = v118;
    v62 = v119;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    KeyedEncodingContainer.encode(_:forKey:)();
    (*(v81 + 8))(v35, v32);
    return (*(v120 + 8))(v63, v62);
  }
}

uint64_t sub_100161BD0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v149 = a2;
  v132 = sub_100035D04(&qword_100348420, &qword_100280FA0);
  v129 = *(v132 - 8);
  v3 = *(v129 + 64);
  __chkstk_darwin(v132);
  v139 = &v106 - v4;
  v133 = sub_100035D04(&qword_100348428, &qword_100280FA8);
  v134 = *(v133 - 8);
  v5 = *(v134 + 64);
  __chkstk_darwin(v133);
  v141 = &v106 - v6;
  v131 = sub_100035D04(&qword_100348430, &qword_100280FB0);
  v130 = *(v131 - 8);
  v7 = *(v130 + 64);
  __chkstk_darwin(v131);
  v140 = &v106 - v8;
  v128 = sub_100035D04(&qword_100348438, &qword_100280FB8);
  v127 = *(v128 - 8);
  v9 = *(v127 + 64);
  __chkstk_darwin(v128);
  v148 = &v106 - v10;
  v126 = sub_100035D04(&qword_100348440, &qword_100280FC0);
  v125 = *(v126 - 8);
  v11 = *(v125 + 64);
  __chkstk_darwin(v126);
  v138 = &v106 - v12;
  v124 = sub_100035D04(&qword_100348448, &qword_100280FC8);
  v123 = *(v124 - 8);
  v13 = *(v123 + 64);
  __chkstk_darwin(v124);
  v137 = &v106 - v14;
  v122 = sub_100035D04(&qword_100348450, &qword_100280FD0);
  v121 = *(v122 - 8);
  v15 = *(v121 + 64);
  __chkstk_darwin(v122);
  v136 = &v106 - v16;
  v119 = sub_100035D04(&qword_100348458, &qword_100280FD8);
  v120 = *(v119 - 8);
  v17 = *(v120 + 64);
  __chkstk_darwin(v119);
  v147 = &v106 - v18;
  v117 = sub_100035D04(&qword_100348460, &qword_100280FE0);
  v118 = *(v117 - 8);
  v19 = *(v118 + 64);
  __chkstk_darwin(v117);
  v146 = &v106 - v20;
  v116 = sub_100035D04(&qword_100348468, &qword_100280FE8);
  v115 = *(v116 - 8);
  v21 = *(v115 + 64);
  __chkstk_darwin(v116);
  v135 = &v106 - v22;
  v145 = sub_100035D04(&qword_100348470, &unk_100280FF0);
  v143 = *(v145 - 8);
  v23 = *(v143 + 64);
  __chkstk_darwin(v145);
  v25 = &v106 - v24;
  v142 = type metadata accessor for UserDefaultsRepresentation();
  v26 = *(*(v142 - 8) + 64);
  v27 = __chkstk_darwin(v142);
  v114 = &v106 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __chkstk_darwin(v27);
  v113 = &v106 - v30;
  v31 = __chkstk_darwin(v29);
  v112 = (&v106 - v32);
  v33 = __chkstk_darwin(v31);
  v111 = (&v106 - v34);
  v35 = __chkstk_darwin(v33);
  v110 = (&v106 - v36);
  v37 = __chkstk_darwin(v35);
  v39 = &v106 - v38;
  v40 = __chkstk_darwin(v37);
  v42 = &v106 - v41;
  v43 = __chkstk_darwin(v40);
  v45 = &v106 - v44;
  v46 = __chkstk_darwin(v43);
  v48 = &v106 - v47;
  __chkstk_darwin(v46);
  v50 = &v106 - v49;
  v51 = a1[3];
  v52 = a1[4];
  v150 = a1;
  sub_10000EBC0(a1, v51);
  sub_100165ADC();
  v144 = v25;
  v53 = v151;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v53)
  {
    v106 = v48;
    v107 = v45;
    v108 = v39;
    v109 = v42;
    v54 = v146;
    v55 = v147;
    v151 = v50;
    v57 = v148;
    v56 = v149;
    v58 = v145;
    v59 = v144;
    v60 = KeyedDecodingContainer.allKeys.getter();
    v61 = (2 * *(v60 + 16)) | 1;
    v153 = v60;
    v154 = v60 + 32;
    v155 = 0;
    v156 = v61;
    v62 = sub_100217224();
    if (v62 != 10 && v155 == v156 >> 1)
    {
      if (v62 <= 4u)
      {
        if (v62 <= 1u)
        {
          if (v62)
          {
            LOBYTE(v152) = 1;
            sub_100165E34();
            KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
            sub_100165E88();
            v91 = v117;
            KeyedDecodingContainer.decode<A>(_:forKey:)();
            (*(v118 + 8))(v54, v91);
            (*(v143 + 8))(v59, v58);
            swift_unknownObjectRelease();
            v96 = v107;
            *v107 = v152;
          }

          else
          {
            LOBYTE(v152) = 0;
            sub_100165EDC();
            v75 = v135;
            KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
            v76 = v116;
            v77 = KeyedDecodingContainer.decode(_:forKey:)();
            (*(v115 + 8))(v75, v76);
            (*(v143 + 8))(v59, v58);
            swift_unknownObjectRelease();
            v78 = v77 & 1;
            v96 = v106;
            *v106 = v78;
          }

          goto LABEL_27;
        }

        if (v62 == 2)
        {
          LOBYTE(v152) = 2;
          sub_100165DE0();
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          type metadata accessor for Date();
          sub_100165F94(&qword_1003465F8, &type metadata accessor for Date);
          v96 = v109;
          v81 = v119;
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          (*(v120 + 8))(v55, v81);
          (*(v143 + 8))(v59, v58);
          swift_unknownObjectRelease();
          goto LABEL_27;
        }

        if (v62 == 3)
        {
          LOBYTE(v152) = 3;
          sub_100165D8C();
          v63 = v136;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          v64 = v143;
          v65 = v122;
          KeyedDecodingContainer.decode(_:forKey:)();
          v95 = v94;
          (*(v121 + 8))(v63, v65);
          (*(v64 + 8))(v59, v58);
          swift_unknownObjectRelease();
          v96 = v108;
          *v108 = v95;
LABEL_27:
          swift_storeEnumTagMultiPayload();
          v103 = v96;
          goto LABEL_29;
        }

        LOBYTE(v152) = 4;
        sub_100165D38();
        v84 = v137;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v85 = v143;
        v86 = v124;
        v87 = KeyedDecodingContainer.decode(_:forKey:)();
        v88 = v84;
        v97 = v87;
        (*(v123 + 8))(v88, v86);
        (*(v85 + 8))(v59, v58);
        swift_unknownObjectRelease();
        v98 = v110;
        *v110 = v97;
LABEL_28:
        swift_storeEnumTagMultiPayload();
        v103 = v98;
        goto LABEL_29;
      }

      if (v62 <= 6u)
      {
        if (v62 != 5)
        {
          LOBYTE(v152) = 6;
          sub_100165C90();
          v92 = v57;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          v93 = v128;
          v104 = KeyedDecodingContainer.decode(_:forKey:)();
          (*(v127 + 8))(v92, v93);
          (*(v143 + 8))(v59, v58);
          swift_unknownObjectRelease();
          v98 = v112;
          *v112 = v104;
          goto LABEL_28;
        }

        LOBYTE(v152) = 5;
        sub_100165CE4();
        v79 = v138;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v80 = v126;
        v99 = KeyedDecodingContainer.decode(_:forKey:)();
        v101 = v100;
        (*(v125 + 8))(v79, v80);
        (*(v143 + 8))(v59, v58);
        swift_unknownObjectRelease();
        v102 = v111;
        *v111 = v99;
        v102[1] = v101;
        swift_storeEnumTagMultiPayload();
        v103 = v102;
      }

      else
      {
        if (v62 == 7)
        {
          LOBYTE(v152) = 7;
          sub_100165C3C();
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          type metadata accessor for URL();
          sub_100165F94(&qword_100348498, &type metadata accessor for URL);
          v72 = v113;
          v82 = v131;
          v83 = v140;
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          (*(v130 + 8))(v83, v82);
          (*(v143 + 8))(v59, v58);
          swift_unknownObjectRelease();
        }

        else
        {
          if (v62 != 8)
          {
            LOBYTE(v152) = 9;
            sub_100165B30();
            v89 = v139;
            KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
            (*(v129 + 8))(v89, v132);
            (*(v143 + 8))(v59, v58);
            swift_unknownObjectRelease();
            v90 = v151;
            swift_storeEnumTagMultiPayload();
LABEL_30:
            v105 = v150;
            sub_100165B84(v90, v56);
            v70 = v105;
            return sub_10000903C(v70);
          }

          LOBYTE(v152) = 8;
          sub_100165BE8();
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          type metadata accessor for UUID();
          sub_100165F94(&qword_1003437F0, &type metadata accessor for UUID);
          v72 = v114;
          v73 = v133;
          v74 = v141;
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          (*(v134 + 8))(v74, v73);
          (*(v143 + 8))(v59, v58);
          swift_unknownObjectRelease();
        }

        swift_storeEnumTagMultiPayload();
        v103 = v72;
      }

LABEL_29:
      v90 = v151;
      sub_100165B84(v103, v151);
      goto LABEL_30;
    }

    v66 = type metadata accessor for DecodingError();
    swift_allocError();
    v68 = v67;
    v69 = *(sub_100035D04(&qword_10033EA78, &qword_100275A60) + 48);
    *v68 = v142;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v66 - 8) + 104))(v68, enum case for DecodingError.typeMismatch(_:), v66);
    swift_willThrow();
    (*(v143 + 8))(v59, v58);
    swift_unknownObjectRelease();
  }

  v70 = v150;
  return sub_10000903C(v70);
}

uint64_t sub_100162F8C(uint64_t a1)
{
  v2 = sub_100165EDC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100162FC8(uint64_t a1)
{
  v2 = sub_100165EDC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10016300C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100166BE0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100163040(uint64_t a1)
{
  v2 = sub_100165ADC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10016307C(uint64_t a1)
{
  v2 = sub_100165ADC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001630B8(uint64_t a1)
{
  v2 = sub_100165E34();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001630F4(uint64_t a1)
{
  v2 = sub_100165E34();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100163130(uint64_t a1)
{
  v2 = sub_100165DE0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10016316C(uint64_t a1)
{
  v2 = sub_100165DE0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001631A8(uint64_t a1)
{
  v2 = sub_100165D8C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001631E4(uint64_t a1)
{
  v2 = sub_100165D8C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100163220(uint64_t a1)
{
  v2 = sub_100165D38();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10016325C(uint64_t a1)
{
  v2 = sub_100165D38();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100163298(uint64_t a1)
{
  v2 = sub_100165B30();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001632D4(uint64_t a1)
{
  v2 = sub_100165B30();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100163310(uint64_t a1)
{
  v2 = sub_100165CE4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10016334C(uint64_t a1)
{
  v2 = sub_100165CE4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100163388(uint64_t a1)
{
  v2 = sub_100165C90();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001633C4(uint64_t a1)
{
  v2 = sub_100165C90();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100163400(uint64_t a1)
{
  v2 = sub_100165C3C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10016343C(uint64_t a1)
{
  v2 = sub_100165C3C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100163478(uint64_t a1)
{
  v2 = sub_100165BE8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001634B4(uint64_t a1)
{
  v2 = sub_100165BE8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100163520@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1001650E4();
  *a1 = result;
  return result;
}

double sub_100163548@<D0>(_OWORD *a1@<X8>)
{

  result = 0.0;
  *a1 = xmmword_100272810;
  return result;
}

double sub_10016357C@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  sub_100010708(a1, a2);
  result = 0.0;
  *a3 = xmmword_100272810;
  return result;
}

uint64_t sub_1001635AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for Date.ISO8601FormatStyle();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14[2] = a1;
  v14[3] = a2;
  static ParseStrategy<>.iso8601.getter();
  sub_100165F94(&qword_10033C288, &type metadata accessor for Date.ISO8601FormatStyle);
  Date.init<A>(_:strategy:)();
  (*(v9 + 32))(a3, v12, v8);
  return (*(v9 + 56))(a3, 0, 1, v8);
}

uint64_t sub_10016376C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = 0;
  v4 = sub_10006B2FC(a1, a2, &v7);

  v6 = v7;
  if (!v4)
  {
    v6 = 0;
  }

  *a3 = v6;
  *(a3 + 8) = !v4;
  return result;
}

uint64_t sub_1001637D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = 0;
  v4 = sub_10006B340(a1, a2, &v7);

  v6 = v7;
  if (!v4)
  {
    v6 = 0;
  }

  *a3 = v6;
  *(a3 + 4) = !v4;
  return result;
}

uint64_t sub_100163844@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_100165238(a1, a2);
  *a3 = result;
  *(a3 + 8) = v5 & 1;
  return result;
}

uint64_t sub_100163874@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t sub_10016387C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  result = sub_100010708(a1, a2);
  *a3 = 0;
  a3[1] = 0;
  return result;
}

uint64_t sub_1001638A4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_1001655AC(a1, a2);
  *a3 = result;
  *(a3 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_100163924@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X4>, uint64_t *a5@<X5>, void (*a6)(uint64_t, uint64_t)@<X6>, uint64_t a7@<X8>)
{
  v14 = sub_100035D04(a4, a5);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v21 - v16;
  a6(a1, a2);

  v18 = *(a3 - 8);
  if ((*(v18 + 48))(v17, 1, a3) == 1)
  {
    sub_1000097E8(v17, a4, a5);
    v19 = 1;
  }

  else
  {
    (*(v18 + 32))(a7, v17, a3);
    v19 = 0;
  }

  return (*(v18 + 56))(a7, v19, 1, a3);
}

uint64_t sub_100163A80@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_100010708(a1, a2);
  v6 = *(*(a3 - 8) + 56);

  return v6(a4, 1, 1, a3);
}

uint64_t sub_100163AEC(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for JSONDecoder();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  JSONDecoder.init()();
  type metadata accessor for Dictionary();
  swift_getWitnessTable();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  sub_100010708(a1, a2);

  return v8;
}

uint64_t sub_100163C00@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t *a3@<X8>)
{
  v5 = *(a2 - 16);
  v4 = *(a2 - 8);
  v7 = *(a2 - 32);
  v6 = *(a2 - 24);
  v8 = a1[2];
  v9 = a1[3];
  v10 = a1[4];
  v11 = variable initialization expression of StateMachine2.$__lazy_storage_$_edgeDictionary();

  *a3 = v11;
  return result;
}

uint64_t sub_100163C58@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v6 = *(a4 - 8);
  v7 = *(a4 - 24);
  v9 = a3[2];
  v8 = a3[3];
  v10 = a3[4];
  result = sub_100163AEC(a1, a2);
  *a5 = result;
  return result;
}

uint64_t sub_100163C9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v26 = a5;
  v9 = *(a3 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(a1);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Optional();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13);
  v18 = &v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v25 - v19;
  (*(a4 + 16))(a1, a2, a3, a4);
  if ((*(v9 + 48))(v18, 1, a3) == 1)
  {
    (*(v14 + 8))(v18, v13);
    v21 = 1;
  }

  else
  {
    v22 = *(v9 + 32);
    v22(v12, v18, a3);
    v22(v20, v12, a3);
    v21 = 0;
  }

  (*(v9 + 56))(v20, v21, 1, a3);
  v23 = v26;
  (*(v14 + 32))(v26, v20, v13);
  return (*(v14 + 56))(v23, 0, 1, v13);
}

uint64_t sub_100163F0C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_100010708(a1, a2);
  v4 = type metadata accessor for Optional();
  v5 = *(*(v4 - 8) + 56);

  return v5(a3, 1, 1, v4);
}

uint64_t sub_100163F98(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v5 = *(result - 8) + 64;
    result = type metadata accessor for Logger();
    if (v4 <= 0x3F)
    {
      v6 = *(result - 8) + 64;
      return swift_initClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_1001640B0@<X0>(Swift::String string@<0:X0, 8:X1>, Swift::OpaquePointer cases@<0:X4>, char *a3@<X8>)
{
  object = string._object;
  v4._countAndFlagsBits = string._countAndFlagsBits;
  v4._object = object;
  v6 = _findStringSwitchCase(cases:string:)(cases, v4);

  if (v6 == 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = 2;
  }

  if (!v6)
  {
    v8 = 0;
  }

  *a3 = v8;
  return result;
}

uint64_t sub_100164110()
{
  v0 = String.subscript.getter();
  v4 = sub_100164190(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_100164190(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return static String._uncheckedFromUTF8(_:)();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = Substring.UTF8View.distance(from:to:)();
  if (!v9)
  {
    v11 = _swiftEmptyArrayStorage;
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_10001B694(v9, 0);
  v12 = sub_1001642E8(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = static String._uncheckedFromUTF8(_:)();

    return v14;
  }

  __break(1u);
LABEL_11:
  _StringObject.sharedUTF8.getter();
LABEL_4:

  return static String._uncheckedFromUTF8(_:)();
}

unint64_t sub_1001642E8(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_100164508(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = String.UTF8View._foreignSubscript(position:)();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = _StringObject.sharedUTF8.getter();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_100164508(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = String.UTF8View._foreignIndex(after:)();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_100164508(unsigned __int16 a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = String.UTF16View.index(_:offsetBy:)();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = String.UTF8View._foreignIndex(_:offsetBy:)();
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

unsigned __int8 *sub_100164584(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = String.init<A>(_:)();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_100164110();
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

unsigned __int8 *sub_100164B10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v70 = a1;
  v71 = a2;

  result = String.init<A>(_:)();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_100164110();
    v40 = v39;

    v5 = v40;
    if ((v40 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
      v7 = v69;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v22 = v7 - 1;
        if (v22)
        {
          v23 = a3 + 48;
          v24 = a3 + 55;
          v25 = a3 + 87;
          if (a3 > 10)
          {
            v23 = 58;
          }

          else
          {
            v25 = 97;
            v24 = 65;
          }

          if (result)
          {
            v13 = 0;
            v26 = result + 1;
            v15 = 1;
            do
            {
              v27 = *v26;
              if (v27 < 0x30 || v27 >= v23)
              {
                if (v27 < 0x41 || v27 >= v24)
                {
                  v18 = 0;
                  if (v27 < 0x61 || v27 >= v25)
                  {
                    goto LABEL_129;
                  }

                  v28 = -87;
                }

                else
                {
                  v28 = -55;
                }
              }

              else
              {
                v28 = -48;
              }

              v29 = v13 * a3;
              if ((v29 & 0xFFFFFFFF00000000) != 0)
              {
                goto LABEL_128;
              }

              v30 = v27 + v28;
              v21 = __CFADD__(v29, v30);
              v13 = v29 + v30;
              if (v21)
              {
                goto LABEL_128;
              }

              ++v26;
              --v22;
            }

            while (v22);
LABEL_47:
            v15 = 0;
            v18 = v13;
            goto LABEL_129;
          }

          goto LABEL_67;
        }

LABEL_128:
        v18 = 0;
        v15 = 1;
        goto LABEL_129;
      }

      goto LABEL_133;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v31 = a3 + 48;
        v32 = a3 + 55;
        v33 = a3 + 87;
        if (a3 > 10)
        {
          v31 = 58;
        }

        else
        {
          v33 = 97;
          v32 = 65;
        }

        if (result)
        {
          v34 = 0;
          v15 = 1;
          do
          {
            v35 = *result;
            if (v35 < 0x30 || v35 >= v31)
            {
              if (v35 < 0x41 || v35 >= v32)
              {
                v18 = 0;
                if (v35 < 0x61 || v35 >= v33)
                {
                  goto LABEL_129;
                }

                v36 = -87;
              }

              else
              {
                v36 = -55;
              }
            }

            else
            {
              v36 = -48;
            }

            v37 = v34 * a3;
            if ((v37 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_128;
            }

            v38 = v35 + v36;
            v21 = __CFADD__(v37, v38);
            v34 = v37 + v38;
            if (v21)
            {
              goto LABEL_128;
            }

            ++result;
            --v7;
          }

          while (v7);
          v15 = 0;
          v18 = v34;
          goto LABEL_129;
        }

        goto LABEL_67;
      }

      goto LABEL_128;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          v15 = 1;
          while (1)
          {
            v16 = *v14;
            if (v16 < 0x30 || v16 >= v10)
            {
              if (v16 < 0x41 || v16 >= v11)
              {
                v18 = 0;
                if (v16 < 0x61 || v16 >= v12)
                {
                  goto LABEL_129;
                }

                v17 = -87;
              }

              else
              {
                v17 = -55;
              }
            }

            else
            {
              v17 = -48;
            }

            v19 = v13 * a3;
            if ((v19 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_128;
            }

            v20 = v16 + v17;
            v21 = v19 >= v20;
            v13 = v19 - v20;
            if (!v21)
            {
              goto LABEL_128;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_47;
            }
          }
        }

LABEL_67:
        v18 = 0;
        v15 = 0;
LABEL_129:

        LOBYTE(v70) = v15;
        return (v18 | (v15 << 32));
      }

      goto LABEL_128;
    }

    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v41 = HIBYTE(v5) & 0xF;
  v70 = v6;
  v71 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v41)
      {
        v43 = 0;
        v61 = a3 + 48;
        v62 = a3 + 55;
        v63 = a3 + 87;
        if (a3 > 10)
        {
          v61 = 58;
        }

        else
        {
          v63 = 97;
          v62 = 65;
        }

        v64 = &v70;
        v15 = 1;
        while (1)
        {
          v65 = *v64;
          if (v65 < 0x30 || v65 >= v61)
          {
            if (v65 < 0x41 || v65 >= v62)
            {
              v18 = 0;
              if (v65 < 0x61 || v65 >= v63)
              {
                goto LABEL_129;
              }

              v66 = -87;
            }

            else
            {
              v66 = -55;
            }
          }

          else
          {
            v66 = -48;
          }

          v67 = v43 * a3;
          if ((v67 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_128;
          }

          v68 = v65 + v66;
          v21 = __CFADD__(v67, v68);
          v43 = v67 + v68;
          if (v21)
          {
            goto LABEL_128;
          }

          v64 = (v64 + 1);
          if (!--v41)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    if (v41)
    {
      v42 = v41 - 1;
      if (v42)
      {
        v43 = 0;
        v44 = a3 + 48;
        v45 = a3 + 55;
        v46 = a3 + 87;
        if (a3 > 10)
        {
          v44 = 58;
        }

        else
        {
          v46 = 97;
          v45 = 65;
        }

        v47 = &v70 + 1;
        v15 = 1;
        while (1)
        {
          v48 = *v47;
          if (v48 < 0x30 || v48 >= v44)
          {
            if (v48 < 0x41 || v48 >= v45)
            {
              v18 = 0;
              if (v48 < 0x61 || v48 >= v46)
              {
                goto LABEL_129;
              }

              v49 = -87;
            }

            else
            {
              v49 = -55;
            }
          }

          else
          {
            v49 = -48;
          }

          v50 = v43 * a3;
          if ((v50 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_128;
          }

          v51 = v48 + v49;
          v21 = v50 >= v51;
          v43 = v50 - v51;
          if (!v21)
          {
            goto LABEL_128;
          }

          ++v47;
          if (!--v42)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    goto LABEL_132;
  }

  if (v41)
  {
    v52 = v41 - 1;
    if (v52)
    {
      v43 = 0;
      v53 = a3 + 48;
      v54 = a3 + 55;
      v55 = a3 + 87;
      if (a3 > 10)
      {
        v53 = 58;
      }

      else
      {
        v55 = 97;
        v54 = 65;
      }

      v56 = &v70 + 1;
      v15 = 1;
      do
      {
        v57 = *v56;
        if (v57 < 0x30 || v57 >= v53)
        {
          if (v57 < 0x41 || v57 >= v54)
          {
            v18 = 0;
            if (v57 < 0x61 || v57 >= v55)
            {
              goto LABEL_129;
            }

            v58 = -87;
          }

          else
          {
            v58 = -55;
          }
        }

        else
        {
          v58 = -48;
        }

        v59 = v43 * a3;
        if ((v59 & 0xFFFFFFFF00000000) != 0)
        {
          goto LABEL_128;
        }

        v60 = v57 + v58;
        v21 = __CFADD__(v59, v60);
        v43 = v59 + v60;
        if (v21)
        {
          goto LABEL_128;
        }

        ++v56;
        --v52;
      }

      while (v52);
LABEL_127:
      v15 = 0;
      v18 = v43;
      goto LABEL_129;
    }

    goto LABEL_128;
  }

LABEL_134:
  __break(1u);
  return result;
}

uint64_t sub_10016508C(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

uint64_t sub_1001650E4()
{
  v8 = String.lowercased()();
  v7 = &v8;
  v0 = sub_10015FB80(sub_100165538, v6, &off_100300070);

  if (v0)
  {

    swift_arrayDestroy();
    return v0 & 1;
  }

  v1 = String.lowercased()();

  v8 = v1;
  __chkstk_darwin(v2);
  v5[2] = &v8;
  v3 = sub_10015FB80(sub_100166F10, v5, &off_1003000E0);
  swift_arrayDestroy();

  if (v3)
  {
    return v0 & 1;
  }

  return 2;
}

uint64_t sub_100165238(uint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v27[0] = result;
      v27[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v2)
        {
          v3 = v2 - 1;
          if (v2 != 1)
          {
            v6 = 0;
            v16 = v27 + 1;
            while (1)
            {
              v17 = *v16 - 48;
              if (v17 > 9)
              {
                break;
              }

              v18 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                break;
              }

              v6 = v18 + v17;
              if (__OFADD__(v18, v17))
              {
                break;
              }

              ++v16;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_61;
        }

LABEL_72:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v2)
        {
          v6 = 0;
          v21 = v27;
          while (1)
          {
            v22 = *v21 - 48;
            if (v22 > 9)
            {
              break;
            }

            v23 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v23 + v22;
            if (__OFADD__(v23, v22))
            {
              break;
            }

            ++v21;
            if (!--v2)
            {
              goto LABEL_60;
            }
          }
        }

        goto LABEL_61;
      }

      if (v2)
      {
        v3 = v2 - 1;
        if (v2 != 1)
        {
          v6 = 0;
          v10 = v27 + 1;
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              break;
            }

            v12 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v12 - v11;
            if (__OFSUB__(v12, v11))
            {
              break;
            }

            ++v10;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = _StringObject.sharedUTF8.getter();
        v3 = v26;
      }

      v5 = *result;
      if (v5 == 43)
      {
        if (v3 >= 1)
        {
          if (--v3)
          {
            v6 = 0;
            if (result)
            {
              v13 = (result + 1);
              while (1)
              {
                v14 = *v13 - 48;
                if (v14 > 9)
                {
                  goto LABEL_61;
                }

                v15 = 10 * v6;
                if ((v6 * 10) >> 64 != (10 * v6) >> 63)
                {
                  goto LABEL_61;
                }

                v6 = v15 + v14;
                if (__OFADD__(v15, v14))
                {
                  goto LABEL_61;
                }

                ++v13;
                if (!--v3)
                {
                  goto LABEL_62;
                }
              }
            }

            goto LABEL_60;
          }

          goto LABEL_61;
        }

        goto LABEL_71;
      }

      if (v5 != 45)
      {
        if (v3)
        {
          v6 = 0;
          if (result)
          {
            while (1)
            {
              v19 = *result - 48;
              if (v19 > 9)
              {
                goto LABEL_61;
              }

              v20 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v20 + v19;
              if (__OFADD__(v20, v19))
              {
                goto LABEL_61;
              }

              ++result;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

LABEL_61:
        v6 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_62;
      }

      if (v3 >= 1)
      {
        if (--v3)
        {
          v6 = 0;
          if (result)
          {
            v7 = (result + 1);
            while (1)
            {
              v8 = *v7 - 48;
              if (v8 > 9)
              {
                goto LABEL_61;
              }

              v9 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v9 - v8;
              if (__OFSUB__(v9, v8))
              {
                goto LABEL_61;
              }

              ++v7;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

LABEL_60:
          LOBYTE(v3) = 0;
LABEL_62:
          v28 = v3;
          v24 = v3;
          goto LABEL_63;
        }

        goto LABEL_61;
      }

      __break(1u);
    }

    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v6 = sub_100164584(result, a2, 10);
  v24 = v25;
LABEL_63:

  if (v24)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

uint64_t sub_100165554(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

uint64_t sub_1001655AC(uint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    v25 = 0;
    LOBYTE(v24) = 1;
LABEL_65:
    LOBYTE(v27[0]) = v24;
    return v25 | ((v24 & 1) << 32);
  }

  if ((a2 & 0x1000000000000000) != 0)
  {
    v6 = sub_100164B10(result, a2, 10);

    v24 = (v6 >> 32) & 1;
LABEL_63:
    v25 = v6;
    if (v24)
    {
      v25 = 0;
    }

    goto LABEL_65;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) != 0)
    {
      result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
      v3 = v26;
    }

    v5 = *result;
    if (v5 == 43)
    {
      if (v3 >= 1)
      {
        if (--v3)
        {
          LODWORD(v6) = 0;
          if (result)
          {
            v13 = (result + 1);
            while (1)
            {
              v14 = *v13 - 48;
              if (v14 > 9)
              {
                goto LABEL_61;
              }

              v15 = 10 * v6;
              if ((v15 & 0xFFFFFFFF00000000) != 0)
              {
                goto LABEL_61;
              }

              LODWORD(v6) = v15 + v14;
              if (__CFADD__(v15, v14))
              {
                goto LABEL_61;
              }

              ++v13;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

        goto LABEL_61;
      }

      goto LABEL_71;
    }

    if (v5 != 45)
    {
      if (v3)
      {
        LODWORD(v6) = 0;
        if (result)
        {
          while (1)
          {
            v19 = *result - 48;
            if (v19 > 9)
            {
              goto LABEL_61;
            }

            v20 = 10 * v6;
            if ((v20 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_61;
            }

            LODWORD(v6) = v20 + v19;
            if (__CFADD__(v20, v19))
            {
              goto LABEL_61;
            }

            ++result;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_60;
      }

LABEL_61:
      LODWORD(v6) = 0;
      LOBYTE(v3) = 1;
      goto LABEL_62;
    }

    if (v3 >= 1)
    {
      if (--v3)
      {
        LODWORD(v6) = 0;
        if (result)
        {
          v7 = (result + 1);
          while (1)
          {
            v8 = *v7 - 48;
            if (v8 > 9)
            {
              goto LABEL_61;
            }

            v9 = 10 * v6;
            if ((v9 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_61;
            }

            LODWORD(v6) = v9 - v8;
            if (v9 < v8)
            {
              goto LABEL_61;
            }

            ++v7;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

LABEL_60:
        LOBYTE(v3) = 0;
LABEL_62:
        v28 = v3;
        LOBYTE(v24) = v3;

        goto LABEL_63;
      }

      goto LABEL_61;
    }

    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v27[0] = result;
  v27[1] = a2 & 0xFFFFFFFFFFFFFFLL;
  if (result != 43)
  {
    if (result != 45)
    {
      if (v2)
      {
        LODWORD(v6) = 0;
        v21 = v27;
        while (1)
        {
          v22 = *v21 - 48;
          if (v22 > 9)
          {
            break;
          }

          v23 = 10 * v6;
          if ((v23 & 0xFFFFFFFF00000000) != 0)
          {
            break;
          }

          LODWORD(v6) = v23 + v22;
          if (__CFADD__(v23, v22))
          {
            break;
          }

          ++v21;
          if (!--v2)
          {
            goto LABEL_60;
          }
        }
      }

      goto LABEL_61;
    }

    if (v2)
    {
      v3 = v2 - 1;
      if (v2 != 1)
      {
        LODWORD(v6) = 0;
        v10 = v27 + 1;
        while (1)
        {
          v11 = *v10 - 48;
          if (v11 > 9)
          {
            break;
          }

          v12 = 10 * v6;
          if ((v12 & 0xFFFFFFFF00000000) != 0)
          {
            break;
          }

          LODWORD(v6) = v12 - v11;
          if (v12 < v11)
          {
            break;
          }

          ++v10;
          if (!--v3)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    goto LABEL_70;
  }

  if (v2)
  {
    v3 = v2 - 1;
    if (v2 != 1)
    {
      LODWORD(v6) = 0;
      v16 = v27 + 1;
      while (1)
      {
        v17 = *v16 - 48;
        if (v17 > 9)
        {
          break;
        }

        v18 = 10 * v6;
        if ((v18 & 0xFFFFFFFF00000000) != 0)
        {
          break;
        }

        LODWORD(v6) = v18 + v17;
        if (__CFADD__(v18, v17))
        {
          break;
        }

        ++v16;
        if (!--v3)
        {
          goto LABEL_62;
        }
      }
    }

    goto LABEL_61;
  }

LABEL_72:
  __break(1u);
  return result;
}

uint64_t sub_100165888(uint64_t a1)
{
  v2 = *((swift_isaMask & *v1) + 0x50);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  result = __chkstk_darwin(a1);
  v7 = &v12 - v6;
  v10 = *((v9 & v8) + 0x88);
  if (*(v1 + v10))
  {
    v11 = *(v1 + v10);

    sub_10015FE78(v7);
    CurrentValueSubject.send(_:)();

    return (*(v3 + 8))(v7, v2);
  }

  return result;
}

uint64_t type metadata accessor for UserDefaultsRepresentation()
{
  result = qword_1003483E8;
  if (!qword_1003483E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100165A18()
{
  result = type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for URL();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for UUID();
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_100165ADC()
{
  result = qword_100348478;
  if (!qword_100348478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100348478);
  }

  return result;
}

unint64_t sub_100165B30()
{
  result = qword_100348480;
  if (!qword_100348480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100348480);
  }

  return result;
}

uint64_t sub_100165B84(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UserDefaultsRepresentation();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_100165BE8()
{
  result = qword_100348488;
  if (!qword_100348488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100348488);
  }

  return result;
}

unint64_t sub_100165C3C()
{
  result = qword_100348490;
  if (!qword_100348490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100348490);
  }

  return result;
}

unint64_t sub_100165C90()
{
  result = qword_1003484A0;
  if (!qword_1003484A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003484A0);
  }

  return result;
}

unint64_t sub_100165CE4()
{
  result = qword_1003484A8;
  if (!qword_1003484A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003484A8);
  }

  return result;
}

unint64_t sub_100165D38()
{
  result = qword_1003484B0;
  if (!qword_1003484B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003484B0);
  }

  return result;
}

unint64_t sub_100165D8C()
{
  result = qword_1003484B8;
  if (!qword_1003484B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003484B8);
  }

  return result;
}

unint64_t sub_100165DE0()
{
  result = qword_1003484C0;
  if (!qword_1003484C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003484C0);
  }

  return result;
}

unint64_t sub_100165E34()
{
  result = qword_1003484C8;
  if (!qword_1003484C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003484C8);
  }

  return result;
}

unint64_t sub_100165E88()
{
  result = qword_1003484D0;
  if (!qword_1003484D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003484D0);
  }

  return result;
}

unint64_t sub_100165EDC()
{
  result = qword_1003484D8;
  if (!qword_1003484D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003484D8);
  }

  return result;
}

uint64_t sub_100165F30(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UserDefaultsRepresentation();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100165F94(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100165FDC()
{
  result = qword_100348540;
  if (!qword_100348540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100348540);
  }

  return result;
}

unint64_t sub_1001660E4()
{
  result = qword_100348548;
  if (!qword_100348548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100348548);
  }

  return result;
}

unint64_t sub_10016613C()
{
  result = qword_100348550;
  if (!qword_100348550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100348550);
  }

  return result;
}

unint64_t sub_100166194()
{
  result = qword_100348558;
  if (!qword_100348558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100348558);
  }

  return result;
}

unint64_t sub_1001661EC()
{
  result = qword_100348560;
  if (!qword_100348560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100348560);
  }

  return result;
}

unint64_t sub_100166244()
{
  result = qword_100348568;
  if (!qword_100348568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100348568);
  }

  return result;
}

unint64_t sub_10016629C()
{
  result = qword_100348570;
  if (!qword_100348570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100348570);
  }

  return result;
}

unint64_t sub_1001662F4()
{
  result = qword_100348578;
  if (!qword_100348578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100348578);
  }

  return result;
}

unint64_t sub_10016634C()
{
  result = qword_100348580;
  if (!qword_100348580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100348580);
  }

  return result;
}

unint64_t sub_1001663A4()
{
  result = qword_100348588;
  if (!qword_100348588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100348588);
  }

  return result;
}

unint64_t sub_1001663FC()
{
  result = qword_100348590;
  if (!qword_100348590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100348590);
  }

  return result;
}

unint64_t sub_100166454()
{
  result = qword_100348598;
  if (!qword_100348598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100348598);
  }

  return result;
}

unint64_t sub_1001664AC()
{
  result = qword_1003485A0;
  if (!qword_1003485A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003485A0);
  }

  return result;
}

unint64_t sub_100166504()
{
  result = qword_1003485A8;
  if (!qword_1003485A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003485A8);
  }

  return result;
}

unint64_t sub_10016655C()
{
  result = qword_1003485B0;
  if (!qword_1003485B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003485B0);
  }

  return result;
}

unint64_t sub_1001665B4()
{
  result = qword_1003485B8;
  if (!qword_1003485B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003485B8);
  }

  return result;
}

unint64_t sub_10016660C()
{
  result = qword_1003485C0;
  if (!qword_1003485C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003485C0);
  }

  return result;
}

unint64_t sub_100166664()
{
  result = qword_1003485C8;
  if (!qword_1003485C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003485C8);
  }

  return result;
}

unint64_t sub_1001666BC()
{
  result = qword_1003485D0;
  if (!qword_1003485D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003485D0);
  }

  return result;
}

unint64_t sub_100166714()
{
  result = qword_1003485D8;
  if (!qword_1003485D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003485D8);
  }

  return result;
}

unint64_t sub_10016676C()
{
  result = qword_1003485E0;
  if (!qword_1003485E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003485E0);
  }

  return result;
}

unint64_t sub_1001667C4()
{
  result = qword_1003485E8;
  if (!qword_1003485E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003485E8);
  }

  return result;
}

unint64_t sub_10016681C()
{
  result = qword_1003485F0;
  if (!qword_1003485F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003485F0);
  }

  return result;
}

unint64_t sub_100166874()
{
  result = qword_1003485F8;
  if (!qword_1003485F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003485F8);
  }

  return result;
}

unint64_t sub_1001668CC()
{
  result = qword_100348600;
  if (!qword_100348600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100348600);
  }

  return result;
}

unint64_t sub_100166924()
{
  result = qword_100348608;
  if (!qword_100348608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100348608);
  }

  return result;
}

unint64_t sub_10016697C()
{
  result = qword_100348610;
  if (!qword_100348610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100348610);
  }

  return result;
}

unint64_t sub_1001669D4()
{
  result = qword_100348618;
  if (!qword_100348618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100348618);
  }

  return result;
}

unint64_t sub_100166A2C()
{
  result = qword_100348620;
  if (!qword_100348620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100348620);
  }

  return result;
}

unint64_t sub_100166A84()
{
  result = qword_100348628;
  if (!qword_100348628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100348628);
  }

  return result;
}

unint64_t sub_100166ADC()
{
  result = qword_100348630;
  if (!qword_100348630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100348630);
  }

  return result;
}

unint64_t sub_100166B34()
{
  result = qword_100348638;
  if (!qword_100348638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100348638);
  }

  return result;
}

unint64_t sub_100166B8C()
{
  result = qword_100348640;
  if (!qword_100348640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100348640);
  }

  return result;
}

uint64_t sub_100166BE0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1819242338 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1635017060 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1702125924 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656C62756F64 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 7630441 && a2 == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x676E69727473 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x3233746E6975 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 7107189 && a2 == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 1684632949 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 1701736302 && a2 == 0xE400000000000000)
  {

    return 9;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 9;
    }

    else
    {
      return 10;
    }
  }
}

uint64_t sub_100166F34@<X0>(unsigned __int8 a1@<W0>, _OWORD *a2@<X8>)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  result = sub_10016729C(a1, &v49);
  if (!v3)
  {
    v40 = 0;
    v41 = a2;
    v13 = v49;
    if (v49)
    {
      v48 = v11;
      v45 = v50;
      v46 = v6;
      LOBYTE(v52) = BYTE8(v49);
      v14 = sub_100013158(&qword_100348678, type metadata accessor for ContextDeliveryModeStateMachine);
      v15 = *(v14 + 88);
      v16 = type metadata accessor for ContextDeliveryModeStateMachine();
      result = v15(&v52, v16, v14);
      v18 = *(v13 + 16);
      if (v18)
      {
        v19 = 0;
        v20 = (v13 + 40);
        while (v19 < *(v13 + 16))
        {
          ++v19;
          v22 = *(v20 - 1);
          v21 = *v20;
          LOBYTE(v52) = a1;

          v22(&v52);

          v20 += 2;
          if (v18 == v19)
          {
            goto LABEL_7;
          }
        }

        __break(1u);
        goto LABEL_16;
      }

LABEL_7:
      v24 = v45;
      v23 = v46;
      v25 = *(v45 + 16);
      v26 = v48;
      if (v25)
      {
        v27 = 0;
        v28 = OBJC_IVAR____TtC17proximitycontrold31ContextDeliveryModeStateMachine_log;
        v47 = (v7 + 16);
        v29 = (v7 + 8);
        *&v17 = 136315138;
        v42 = v17;
        v43 = v29;
        v44 = v10;
        while (v27 < *(v24 + 16))
        {
          (*v47)(v10, v26 + v28, v23);
          v31 = Logger.logObject.getter();
          v32 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v31, v32))
          {
            v33 = swift_slowAlloc();
            v34 = swift_slowAlloc();
            v52 = v34;
            *v33 = v42;
            v35 = String.init<A>(describing:)();
            v37 = sub_100017494(v35, v36, &v52);
            v10 = v44;

            *(v33 + 4) = v37;
            v23 = v46;
            _os_log_impl(&_mh_execute_header, v31, v32, "Output: %s", v33, 0xCu);
            sub_10000903C(v34);
            v24 = v45;

            v29 = v43;
          }

          (*v29)(v10, v23);
          ++v27;
          v26 = v48;
          v30 = *(v48 + 24);

          PassthroughSubject.send(_:)();

          if (v25 == v27)
          {
            goto LABEL_13;
          }
        }

LABEL_16:
        __break(1u);
        return result;
      }
    }

LABEL_13:
    v38 = v50;
    v39 = v41;
    *v41 = v49;
    v39[1] = v38;
    v39[2] = v51;
  }

  return result;
}

uint64_t sub_10016729C@<X0>(unsigned __int8 a1@<W0>, void *a2@<X8>)
{
  v3 = a1;
  v4 = *(v2 + 16);
  v67 = &v70;

  result = sub_1000816EC(sub_10016B5D4, v66, v4);
  v6 = result;
  v7 = 0;
  v9 = result + 16;
  v8 = *(result + 16);
  v10 = _swiftEmptyArrayStorage;
LABEL_2:
  v11 = v9 + 48 * v7;
  while (v8 != v7)
  {
    if (v7 >= *(v6 + 16))
    {
      __break(1u);
LABEL_36:
      __break(1u);
      return result;
    }

    ++v7;
    v12 = (v11 + 48);
    v13 = *(v11 + 25);
    v14 = v13 == 5 || v13 == v3;
    v11 += 48;
    if (v14)
    {
      v55 = *(v12 - 24);
      v15 = *(v12 - 2);
      v61 = *(v12 - 8);
      v16 = v12[1];
      v57 = *(v12 - 4);
      v59 = *v12;

      result = swift_isUniquelyReferenced_nonNull_native();
      v69 = v10;
      if ((result & 1) == 0)
      {
        result = sub_1000CE040(0, v10[2] + 1, 1);
        v10 = v69;
      }

      v17 = v10;
      v18 = v10[2];
      v19 = v17[3];
      if (v18 >= v19 >> 1)
      {
        result = sub_1000CE040((v19 > 1), v18 + 1, 1);
        v17 = v69;
      }

      v17[2] = v18 + 1;
      v20 = &v17[6 * v18];
      v20[4] = v57;
      *(v20 + 40) = v55;
      *(v20 + 41) = v13;
      v20[6] = v15;
      *(v20 + 56) = v61;
      v20[8] = v59;
      v20[9] = v16;
      v10 = v17;
      goto LABEL_2;
    }
  }

  v21 = v10[2];
  if (v21)
  {
    v22 = 0;
    v23 = v10 + 5;
    v62 = v10[2];
    v56 = v21 - 1;
    v58 = v10 + 5;
    v60 = _swiftEmptyArrayStorage;
    v65 = v3;
    v64 = v10;
LABEL_17:
    v24 = &v23[6 * v22];
    v25 = v22;
    while (v25 < v10[2])
    {
      v26 = *(v24 - 1);
      v63 = *v24;
      v27 = *(v24 + 1);
      v28 = v24[1];
      v29 = *(v24 + 16);
      v31 = v24[3];
      v30 = v24[4];
      v22 = v25 + 1;
      v68 = v3;
      v32 = v25;

      if (v31(&v68))
      {
        v52 = v30;
        v53 = v32;
        v33 = v60;
        result = swift_isUniquelyReferenced_nonNull_native();
        v69 = v60;
        if ((result & 1) == 0)
        {
          result = sub_1000CE040(0, v60[2] + 1, 1);
          v33 = v69;
        }

        LOBYTE(v3) = v65;
        v34 = v63;
        v35 = v31;
        v37 = v33[2];
        v36 = v33[3];
        v38 = v37 + 1;
        if (v37 >= v36 >> 1)
        {
          result = sub_1000CE040((v36 > 1), v37 + 1, 1);
          v38 = v37 + 1;
          v35 = v31;
          v34 = v63;
          LOBYTE(v3) = v65;
          v33 = v69;
        }

        v33[2] = v38;
        v60 = v33;
        v39 = &v33[6 * v37];
        v39[4] = v26;
        *(v39 + 40) = v34;
        *(v39 + 41) = v27;
        v39[6] = v28;
        *(v39 + 56) = v29;
        v39[8] = v35;
        v39[9] = v52;
        v10 = v64;
        v23 = v58;
        if (v56 != v53)
        {
          goto LABEL_17;
        }

        goto LABEL_29;
      }

      v24 += 6;
      v25 = v22;
      LOBYTE(v3) = v65;
      v10 = v64;
      if (v62 == v22)
      {
        goto LABEL_29;
      }
    }

    goto LABEL_36;
  }

  v60 = _swiftEmptyArrayStorage;
LABEL_29:

  v40 = v60[2];
  if (v40 <= 1)
  {
    if (v40)
    {
      v46 = v60[4];
      v47 = v60[6];
      v48 = *(v60 + 56);
      v49 = v60[8];
      v50 = v60[9];
      v51 = *(v60 + 20);
    }

    else
    {
      v46 = 0;
      v51 = 0;
      v47 = 0;
      v48 = 0;
      v49 = 0;
      v50 = 0;
    }

    *a2 = v46;
    a2[1] = v51;
    a2[2] = v47;
    a2[3] = v48;
    a2[4] = v49;
    a2[5] = v50;
  }

  else
  {
    sub_100035D04(&qword_100348680, &qword_100281CC0);
    sub_10000E244(&qword_100348688, &qword_100348680, &qword_100281CC0);
    swift_allocError();
    v42 = v41;
    v43 = sub_100013158(&qword_100348678, type metadata accessor for ContextDeliveryModeStateMachine);
    v44 = *(v43 + 80);
    v45 = type metadata accessor for ContextDeliveryModeStateMachine();
    v44(v45, v43);
    *(v42 + 1) = v3;
    *(v42 + 8) = v60;
    *(v42 + 16) = 0;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1001677A8(uint64_t a1)
{
  v3 = sub_100035D04(&qword_10033AAF8, &qword_100271808);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v111 = &v94 - v5;
  v6 = sub_100035D04(&qword_10033AAD0, &qword_100271708);
  v100 = *(v6 - 8);
  v101 = v6;
  v7 = *(v100 + 64);
  v8 = __chkstk_darwin(v6);
  v97 = &v94 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v94 - v10;
  v12 = type metadata accessor for DiscoveryTokenStateMachine.Input(0);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12);
  v95 = &v94 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v94 = &v94 - v17;
  v18 = __chkstk_darwin(v16);
  v104 = &v94 - v19;
  v20 = __chkstk_darwin(v18);
  v22 = &v94 - v21;
  __chkstk_darwin(v20);
  v24 = &v94 - v23;
  v25 = type metadata accessor for Logger();
  v26 = *(v25 - 8);
  v27 = v26[8];
  v28 = __chkstk_darwin(v25);
  v99 = &v94 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __chkstk_darwin(v28);
  v96 = &v94 - v31;
  v32 = __chkstk_darwin(v30);
  v106 = &v94 - v33;
  __chkstk_darwin(v32);
  v35 = &v94 - v34;
  v112 = v1;
  v36 = *v1;
  v37 = v26[2];
  v107 = OBJC_IVAR____TtC17proximitycontrold26DiscoveryTokenStateMachine_log;
  v108 = v36;
  v109 = v37;
  v110 = v26 + 2;
  v37(&v94 - v34, v36 + OBJC_IVAR____TtC17proximitycontrold26DiscoveryTokenStateMachine_log, v25);
  v113 = a1;
  sub_1000120BC(a1, v24);
  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.default.getter();
  v40 = os_log_type_enabled(v38, v39);
  v102 = v22;
  v103 = v12;
  if (v40)
  {
    v41 = swift_slowAlloc();
    v105 = v26;
    v42 = v41;
    v43 = swift_slowAlloc();
    v98 = v11;
    v44 = v43;
    v116[0] = v43;
    *v42 = 136315138;
    sub_1000120BC(v24, v22);
    v45 = v25;
    v46 = String.init<A>(describing:)();
    v48 = v47;
    sub_100010B48(v24);
    v49 = v46;
    v25 = v45;
    v50 = sub_100017494(v49, v48, v116);

    *(v42 + 4) = v50;
    _os_log_impl(&_mh_execute_header, v38, v39, "Sending state input %s", v42, 0xCu);
    sub_10000903C(v44);
    v11 = v98;

    v51 = v105;

    v52 = v51[1];
    v52(v35, v45);
  }

  else
  {

    sub_100010B48(v24);
    v52 = v26[1];
    v52(v35, v25);
  }

  v53 = v111;
  v54 = v113;
  sub_1000114E0(v113, v111);
  if ((*(v100 + 48))(v53, 1, v101) == 1)
  {
    sub_1000097E8(v53, &qword_10033AAF8, &qword_100271808);
    v55 = sub_100013158(&qword_10033AA98, type metadata accessor for DiscoveryTokenStateMachine);
    v56 = *(v55 + 80);
    v57 = type metadata accessor for DiscoveryTokenStateMachine(0);
    v56(&v115, v57, v55);
    v58 = v99;
    v109(v99, v108 + v107, v25);
    v59 = v95;
    sub_1000120BC(v54, v95);
    v60 = v115;
    v61 = Logger.logObject.getter();
    v62 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      LODWORD(v113) = v60;
      v116[0] = v64;
      *v63 = 136315394;
      sub_1000120BC(v59, v102);
      v65 = String.init<A>(describing:)();
      v67 = v66;
      sub_100010B48(v59);
      v68 = sub_100017494(v65, v67, v116);

      *(v63 + 4) = v68;
      *(v63 + 12) = 2080;
      v114 = v113;
      v69 = String.init<A>(describing:)();
      v71 = sub_100017494(v69, v70, v116);

      *(v63 + 14) = v71;
      _os_log_impl(&_mh_execute_header, v61, v62, "No edge for state input: %s, state=%s", v63, 0x16u);
      swift_arrayDestroy();

      v72 = v99;
    }

    else
    {

      sub_100010B48(v59);
      v72 = v58;
    }

    return (v52)(v72, v25);
  }

  else
  {
    sub_10016B564(v53, v11);
    v73 = v96;
    v109(v96, v108 + v107, v25);
    v74 = v54;
    v75 = v94;
    sub_1000120BC(v74, v94);
    v76 = v97;
    sub_100009848(v11, v97, &qword_10033AAD0, &qword_100271708);
    v77 = Logger.logObject.getter();
    v78 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v77, v78))
    {
      v79 = v76;
      v80 = swift_slowAlloc();
      v113 = swift_slowAlloc();
      v116[0] = v113;
      *v80 = 136315394;
      v98 = v11;
      sub_1000120BC(v75, v102);
      v81 = String.init<A>(describing:)();
      v82 = v75;
      v84 = v83;
      sub_100010B48(v82);
      v85 = sub_100017494(v81, v84, v116);

      *(v80 + 4) = v85;
      *(v80 + 12) = 2080;
      v86 = v79;
      v115 = *(v79 + 8);
      v87 = String.init<A>(describing:)();
      v88 = v52;
      v90 = v89;
      sub_1000097E8(v86, &qword_10033AAD0, &qword_100271708);
      v91 = sub_100017494(v87, v90, v116);

      *(v80 + 14) = v91;
      _os_log_impl(&_mh_execute_header, v77, v78, "State after receiving %s: %s", v80, 0x16u);
      swift_arrayDestroy();

      v88(v73, v25);
      v92 = v98;
    }

    else
    {

      sub_1000097E8(v76, &qword_10033AAD0, &qword_100271708);
      sub_100010B48(v75);
      v52(v73, v25);
      v92 = v11;
    }

    return sub_1000097E8(v92, &qword_10033AAD0, &qword_100271708);
  }
}

uint64_t sub_1001682D4(int a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v64 = v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v11 = v62 - v10;
  v12 = __chkstk_darwin(v9);
  v14 = v62 - v13;
  __chkstk_darwin(v12);
  v16 = v62 - v15;
  v17 = *v2;
  v18 = *(v5 + 16);
  v66 = OBJC_IVAR____TtC17proximitycontrold31ContextDeliveryModeStateMachine_log;
  v67 = v17;
  v68 = v18;
  v69 = (v5 + 16);
  v18(v62 - v15, v17 + OBJC_IVAR____TtC17proximitycontrold31ContextDeliveryModeStateMachine_log, v4);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();
  v21 = os_log_type_enabled(v19, v20);
  v65 = v4;
  if (v21)
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v62[1] = v2;
    v24 = v23;
    *&v73 = v23;
    *v22 = 136315138;
    LOBYTE(v72[0]) = a1;
    v25 = String.init<A>(describing:)();
    v63 = v14;
    v27 = v5;
    v28 = sub_100017494(v25, v26, &v73);

    *(v22 + 4) = v28;
    _os_log_impl(&_mh_execute_header, v19, v20, "Sending state input %s", v22, 0xCu);
    sub_10000903C(v24);

    v4 = v65;

    v29 = v27;
  }

  else
  {

    v29 = v5;
  }

  v30 = *(v29 + 8);
  v30(v16, v4);
  sub_100166F34(a1, &v73);
  LODWORD(v63) = a1;
  if (v73)
  {
    v31 = BYTE8(v73);
    v68(v11, v67 + v66, v4);

    v32 = Logger.logObject.getter();
    v33 = v4;
    v34 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v32, v34))
    {
      v35 = swift_slowAlloc();
      v69 = v30;
      v36 = v35;
      v67 = swift_slowAlloc();
      v72[0] = v67;
      *v36 = 136315394;
      v71 = v63;
      v37 = String.init<A>(describing:)();
      v39 = sub_100017494(v37, v38, v72);
      v68 = v11;
      v40 = v39;

      *(v36 + 4) = v40;
      *(v36 + 12) = 2080;
      v71 = v31;
      v41 = String.init<A>(describing:)();
      v43 = v42;

      v44 = sub_100017494(v41, v43, v72);

      *(v36 + 14) = v44;
      _os_log_impl(&_mh_execute_header, v32, v34, "State after receiving %s: %s", v36, 0x16u);
      swift_arrayDestroy();

      return (v69)(v68, v65);
    }

    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    v61 = v11;
    v46 = v33;
  }

  else
  {
    v47 = sub_100013158(&qword_100348678, type metadata accessor for ContextDeliveryModeStateMachine);
    v48 = *(v47 + 80);
    v49 = type metadata accessor for ContextDeliveryModeStateMachine();
    v48(&v71, v49, v47);
    v50 = v64;
    v68(v64, v67 + v66, v4);
    v51 = v71;
    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v72[0] = swift_slowAlloc();
      *v54 = 136315394;
      v70 = v63;
      v55 = String.init<A>(describing:)();
      v57 = sub_100017494(v55, v56, v72);

      *(v54 + 4) = v57;
      *(v54 + 12) = 2080;
      v70 = v51;
      v58 = String.init<A>(describing:)();
      v60 = sub_100017494(v58, v59, v72);

      *(v54 + 14) = v60;
      _os_log_impl(&_mh_execute_header, v52, v53, "No edge for state input: %s, state=%s", v54, 0x16u);
      swift_arrayDestroy();

      v61 = v64;
    }

    else
    {

      v61 = v50;
    }

    v46 = v4;
  }

  return (v30)(v61, v46);
}

uint64_t sub_100168AF4(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for DiscoveryTokenStateMachine.Input(0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = (&v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_1003390E0 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_100003078(v10, qword_100348648);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v34 = v13;
    v36 = swift_slowAlloc();
    v37[0] = v36;
    *v13 = 136315138;
    v35 = v12;
    UUID.uuidString.getter();
    sub_10000B584(8);
    v33 = v11;

    v14 = static String._fromSubstring(_:)();
    v16 = v15;

    v17 = sub_100017494(v14, v16, v37);

    v19 = v33;
    v18 = v34;
    *(v34 + 1) = v17;
    _os_log_impl(&_mh_execute_header, v19, v35, "Received peer token from %s", v18, 0xCu);
    sub_10000903C(v36);
  }

  else
  {
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v20 = *(v37[0] + OBJC_IVAR____TtC17proximitycontrold8Identity_nearbyID);
  *(v37[0] + OBJC_IVAR____TtC17proximitycontrold8Identity_nearbyID) = a1;
  v21 = a1;

  *v9 = v21;
  swift_storeEnumTagMultiPayload();
  swift_beginAccess();
  v22 = v21;
  sub_1001677A8(v9);
  sub_100010B48(v9);
  swift_endAccess();
  v23 = OBJC_IVAR____TtC17proximitycontrold11NearbyAgent__rangingProxy;
  v24 = *(*(v3 + OBJC_IVAR____TtC17proximitycontrold11NearbyAgent__rangingProxy) + 24);
  if (v24)
  {
    v25 = v24;
    sub_1001A5D30(v22, a2);

    v26 = *(*(v3 + v23) + 24);
    if (v26)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      v27 = v26;
      static Published.subscript.getter();

      v28 = v37[0];
      if (v37[0])
      {
        v29 = [v37[0] discoveryToken];

        if (v29)
        {
          sub_100003118(0, &qword_100347E38, NSKeyedArchiver_ptr);
          v30 = sub_100168F0C(v29);

          return v30;
        }
      }
    }
  }

  return 0;
}

uint64_t sub_100168F0C(uint64_t a1)
{
  v6 = 0;
  v1 = [swift_getObjCClassFromMetadata() archivedDataWithRootObject:a1 requiringSecureCoding:1 error:&v6];
  v2 = v6;
  if (v1)
  {
    v3 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v4 = v2;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    return 0;
  }

  return v3;
}

uint64_t sub_100168FEC()
{
  v0 = type metadata accessor for Logger();
  sub_100036838(v0, qword_100348648);
  v1 = sub_100003078(v0, qword_100348648);
  if (qword_100339070 != -1)
  {
    swift_once();
  }

  v2 = sub_100003078(v0, qword_10038B220);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_1001690B4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v58 = type metadata accessor for DiscoveryTokenStateMachine.Input(0);
  v6 = *(*(v58 - 8) + 64);
  __chkstk_darwin(v58);
  v8 = v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_100035D04(&qword_10033AAA0, &qword_1002716E0);
  v9 = *(*(v55 - 8) + 64);
  v10 = __chkstk_darwin(v55);
  v57 = v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v54 = (v52 - v13);
  v14 = __chkstk_darwin(v12);
  v59 = (v52 - v15);
  __chkstk_darwin(v14);
  v60 = v52 - v16;
  if (qword_1003390E0 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  v18 = sub_100003078(v17, qword_100348648);

  swift_errorRetain();
  v56 = v18;
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v19, v20))
  {
    v53 = v8;
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v61[0] = v23;
    *v21 = 136315394;
    v52[1] = v3;
    if (a2)
    {
      v24 = sub_1000092A0();
      v26 = v25;
    }

    else
    {
      v26 = 0xE500000000000000;
      v24 = 0x296C696E28;
    }

    v27 = sub_100017494(v24, v26, v61);

    *(v21 + 4) = v27;
    *(v21 + 12) = 2112;
    swift_errorRetain();
    v28 = _swift_stdlib_bridgeErrorToNSError();
    *(v21 + 14) = v28;
    *v22 = v28;
    _os_log_impl(&_mh_execute_header, v19, v20, "### Failed to exchange tokens with %s: %@", v21, 0x16u);
    sub_1000097E8(v22, &qword_100339940, &unk_100272C50);

    sub_10000903C(v23);

    v8 = v53;
    if (!a2)
    {
      return;
    }
  }

  else
  {

    if (!a2)
    {
      return;
    }
  }

  v29 = _convertErrorToNSError(_:)();
  v30 = v59;
  sub_100169834(a2, v29, v59);

  v31 = type metadata accessor for DispatchTimeInterval();
  v32 = *(v31 - 8);
  v33 = *(v32 + 48);
  if (v33(v30, 1, v31) == 1)
  {
    v61[0] = a1;
    swift_errorRetain();
    sub_100035D04(&unk_100346020, &qword_100271A00);
    if (swift_dynamicCast())
    {
      v34 = v62;
    }

    else
    {
      v34 = 11;
    }

    v35 = v54;
    sub_100169DC4(v34, v54);
    if (v33(v35, 1, v31) == 1)
    {
      v61[0] = a1;
      swift_errorRetain();
      if (swift_dynamicCast())
      {
        v36 = v62;
      }

      else
      {
        v36 = 4;
      }

      sub_100169F18(v36, v60);
      if (v33(v35, 1, v31) != 1)
      {
        sub_1000097E8(v35, &qword_10033AAA0, &qword_1002716E0);
      }
    }

    else
    {
      v38 = v60;
      (*(v32 + 32))(v60, v35, v31);
      (*(v32 + 56))(v38, 0, 1, v31);
    }

    v39 = v59;
    if (v33(v59, 1, v31) != 1)
    {
      sub_1000097E8(v39, &qword_10033AAA0, &qword_1002716E0);
    }
  }

  else
  {
    v37 = v60;
    (*(v32 + 32))(v60, v30, v31);
    (*(v32 + 56))(v37, 0, 1, v31);
  }

  v40 = v57;
  sub_100009848(v60, v57, &qword_10033AAA0, &qword_1002716E0);

  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v61[0] = swift_slowAlloc();
    *v43 = 136315394;
    v44 = sub_1000092A0();
    v46 = sub_100017494(v44, v45, v61);

    *(v43 + 4) = v46;
    *(v43 + 12) = 2080;
    v47 = Optional.debugDescription.getter();
    v49 = v48;
    sub_1000097E8(v40, &qword_10033AAA0, &qword_1002716E0);
    v50 = sub_100017494(v47, v49, v61);

    *(v43 + 14) = v50;
    _os_log_impl(&_mh_execute_header, v41, v42, "Retry interval for %s: %s", v43, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_1000097E8(v40, &qword_10033AAA0, &qword_1002716E0);
  }

  v51 = v60;
  sub_100009848(v60, v8, &qword_10033AAA0, &qword_1002716E0);
  swift_storeEnumTagMultiPayload();
  swift_beginAccess();
  sub_1001677A8(v8);
  sub_100010B48(v8);
  swift_endAccess();

  sub_1000097E8(v51, &qword_10033AAA0, &qword_1002716E0);
}

uint64_t sub_100169834@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v6 = sub_100035D04(&qword_10033C280, &qword_100272A80);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v40 - v8;
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [a2 domain];
  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;

  if (v16 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v18 == v19)
  {
  }

  else
  {
    v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v21 & 1) == 0)
    {
LABEL_17:
      v28 = type metadata accessor for DispatchTimeInterval();
      v29 = *(*(v28 - 8) + 56);

      return v29(a3, 1, 1, v28);
    }
  }

  v22 = [a2 code];
  if (v22 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_29;
  }

  if (v22 > 0x7FFFFFFF)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (v22 != -6714)
  {
    LODWORD(a1) = v22;
    if (qword_1003390E0 == -1)
    {
LABEL_14:
      v24 = type metadata accessor for Logger();
      sub_100003078(v24, qword_100348648);
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 67109120;
        *(v27 + 4) = a1;
        _os_log_impl(&_mh_execute_header, v25, v26, "Unsupported rapport error code %d", v27, 8u);
      }

      goto LABEL_17;
    }

LABEL_30:
    swift_once();
    goto LABEL_14;
  }

  v23 = OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_lastTokenSyncAttempt;
  swift_beginAccess();
  sub_100009848(a1 + v23, v9, &qword_10033C280, &qword_100272A80);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1000097E8(v9, &qword_10033C280, &qword_100272A80);
LABEL_22:
    *a3 = 5;
    v32 = enum case for DispatchTimeInterval.seconds(_:);
    v33 = type metadata accessor for DispatchTimeInterval();
    v34 = *(v33 - 8);
    (*(v34 + 104))(a3, v32, v33);
    return (*(v34 + 56))(a3, 0, 1, v33);
  }

  (*(v11 + 32))(v14, v9, v10);
  Date.timeIntervalSinceNow.getter();
  if (fabs(v31) > 10.0)
  {
    (*(v11 + 8))(v14, v10);
    goto LABEL_22;
  }

  if (qword_1003390E0 != -1)
  {
    swift_once();
  }

  v35 = type metadata accessor for Logger();
  sub_100003078(v35, qword_100348648);
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    *v38 = 0;
    _os_log_impl(&_mh_execute_header, v36, v37, "'NotHandledErr': Attempted a token sync in past 10s, not trying again", v38, 2u);
  }

  (*(v11 + 8))(v14, v10);
  v39 = type metadata accessor for DispatchTimeInterval();
  return (*(*(v39 - 8) + 56))(a3, 1, 1, v39);
}

uint64_t sub_100169DC4@<X0>(unsigned __int8 a1@<W1>, uint64_t *a2@<X8>)
{
  if (a1 > 5u)
  {
    if (a1 == 6)
    {
      v3 = 5;
      goto LABEL_8;
    }

LABEL_6:
    v4 = type metadata accessor for DispatchTimeInterval();
    v5 = *(*(v4 - 8) + 56);
    v6 = v4;
    v7 = a2;
    v8 = 1;
    goto LABEL_9;
  }

  if (a1 && a1 != 3)
  {
    goto LABEL_6;
  }

  v3 = 1;
LABEL_8:
  *a2 = v3;
  v9 = enum case for DispatchTimeInterval.seconds(_:);
  v10 = type metadata accessor for DispatchTimeInterval();
  v12 = *(v10 - 8);
  (*(v12 + 104))(a2, v9, v10);
  v5 = *(v12 + 56);
  v7 = a2;
  v8 = 0;
  v6 = v10;
LABEL_9:

  return v5(v7, v8, 1, v6);
}

uint64_t sub_100169F18@<X0>(char a1@<W1>, uint64_t a2@<X8>)
{
  if (a1 == 3)
  {
    if (qword_1003390E0 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_100003078(v3, qword_100348648);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "### Invalid peer, not scheduling retry", v6, 2u);
    }
  }

  v7 = type metadata accessor for DispatchTimeInterval();
  v8 = *(*(v7 - 8) + 56);

  return v8(a2, 1, 1, v7);
}

uint64_t sub_10016A04C(uint64_t a1, uint64_t a2, uint64_t a3)
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
  if (qword_1003391E8 != -1)
  {
    swift_once();
  }

  v18 = qword_10038B5B8;
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v15 = swift_allocObject();
  v15[2] = a1;
  v15[3] = v14;
  v15[4] = a2;
  v15[5] = a3;
  aBlock[4] = sub_10016B5F4;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100018AB8;
  aBlock[3] = &unk_10030C598;
  v16 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v21 = _swiftEmptyArrayStorage;
  sub_100013158(&qword_10033D8C0, &type metadata accessor for DispatchWorkItemFlags);
  sub_100035D04(&unk_100343710, &qword_100271800);
  sub_10000E244(&qword_10033D8D0, &unk_100343710, &qword_100271800);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);
  (*(v20 + 8))(v9, v6);
  (*(v10 + 8))(v13, v19);
}

void sub_10016A3A4(uint64_t a1, uint64_t a2, void (*a3)(void, void))
{
  v5 = sub_100035D04(&qword_10034C680, &qword_100270390);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v98 = v79 - v7;
  v8 = type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
  v91 = *(v8 - 8);
  v92 = v8;
  v9 = *(v91 + 64);
  __chkstk_darwin(v8);
  v90 = v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = sub_100035D04(&qword_100348690, &qword_100281CC8);
  v93 = *(v95 - 8);
  v11 = *(v93 + 64);
  __chkstk_darwin(v95);
  v102 = v79 - v12;
  v13 = sub_100035D04(&qword_100348698, &qword_100281CD0);
  v96 = *(v13 - 8);
  v97 = v13;
  v14 = *(v96 + 64);
  __chkstk_darwin(v13);
  v94 = v79 - v15;
  v16 = sub_100035D04(&qword_1003486A0, qword_100281CD8);
  v100 = *(v16 - 8);
  v101 = v16;
  v17 = *(v100 + 64);
  __chkstk_darwin(v16);
  v99 = v79 - v18;
  v103 = sub_1000092A0();
  v20 = v19;
  if (qword_1003390E0 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  sub_100003078(v21, qword_100348648);

  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = a3;
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v106 = v26;
    *v25 = 136315138;
    *(v25 + 4) = sub_100017494(v103, v20, &v106);
    _os_log_impl(&_mh_execute_header, v22, v23, "START exchanging ranging tokens with %s", v25, 0xCu);
    sub_10000903C(v26);

    a3 = v24;
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {

    sub_10001618C();
    v36 = swift_allocError();
    *v37 = 0x666C6573206C696ELL;
    *(v37 + 8) = 0xE800000000000000;
    *(v37 + 16) = 9;
    a3(v36, 1);
    goto LABEL_12;
  }

  v28 = Strong;
  v29 = *(*(Strong + OBJC_IVAR____TtC17proximitycontrold11NearbyAgent__rangingProxy) + 24);
  if (v29)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v30 = v29;
    static Published.subscript.getter();

    v31 = v105;
    if (v105)
    {
      v89 = a3;
      v32 = [v105 discoveryToken];

      if (!v32)
      {

        goto LABEL_16;
      }

      sub_100003118(0, &qword_100347E38, NSKeyedArchiver_ptr);
      v33 = sub_100168F0C(v32);
      v35 = v34;

      if (v35 >> 60 == 15)
      {

LABEL_16:
        a3 = v89;
        goto LABEL_17;
      }

      v88 = OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_discoveryTokenSyncTask;
      if (*(a1 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_discoveryTokenSyncTask))
      {

        v39 = Logger.logObject.getter();
        v40 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v39, v40))
        {
          v41 = swift_slowAlloc();
          v87 = swift_slowAlloc();
          v105 = v87;
          *v41 = 136315138;
          v86 = v39;
          v42 = sub_1000092A0();
          v44 = sub_100017494(v42, v43, &v105);
          LODWORD(v85) = v40;
          v45 = v33;
          v46 = v35;
          v47 = v44;

          *(v41 + 4) = v47;
          v35 = v46;
          v33 = v45;
          v39 = v86;
          _os_log_impl(&_mh_execute_header, v86, v85, "### %s already initiated token sync?", v41, 0xCu);
          sub_10000903C(v87);
        }
      }

      v48 = *(*&v28[OBJC_IVAR____TtC17proximitycontrold11NearbyAgent_state] + 32);
      if (v48)
      {
        v49 = v48;
        v58 = sub_100123194(v33, v35, a1);
        v86 = v58;

        v105 = v58;
        v59 = v90;
        static OS_dispatch_queue.SchedulerTimeType.Stride.seconds(_:)();
        v85 = OBJC_IVAR____TtC17proximitycontrold11NearbyAgent_dispatchQueue;
        v104 = *&v28[OBJC_IVAR____TtC17proximitycontrold11NearbyAgent_dispatchQueue];
        v60 = v104;
        v82 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
        v61 = *(v82 - 8);
        v83 = *(v61 + 56);
        v84 = v61 + 56;
        v62 = v98;
        v83(v98, 1, 1, v82);
        v80 = v60;
        v87 = v35;
        v79[1] = sub_100035D04(&qword_10033EF90, &qword_1002755D0);
        v79[2] = sub_100003118(0, &qword_100339320, OS_dispatch_queue_ptr);
        sub_10000E244(&qword_10033EF98, &qword_10033EF90, &qword_1002755D0);
        v81 = sub_1000513CC();
        Publisher.timeout<A>(_:scheduler:options:customError:)();
        sub_1000097E8(v62, &qword_10034C680, &qword_100270390);

        (*(v91 + 8))(v59, v92);

        v105 = *&v28[v85];
        v63 = v105;
        v83(v62, 1, 1, v82);
        sub_10000E244(&qword_1003486A8, &qword_100348690, &qword_100281CC8);
        v92 = v33;
        v64 = v63;
        v66 = v94;
        v65 = v95;
        v67 = v102;
        Publisher.receive<A>(on:options:)();
        sub_1000097E8(v62, &qword_10034C680, &qword_100270390);

        (*(v93 + 8))(v67, v65);
        sub_100003118(0, &qword_10034A350, NIDiscoveryToken_ptr);
        sub_10000E244(&qword_1003486B0, &qword_100348698, &qword_100281CD0);
        v68 = v99;
        v69 = v97;
        Publisher.tryMap<A>(_:)();
        (*(v96 + 8))(v66, v69);
        v70 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v71 = swift_allocObject();
        swift_weakInit();
        v72 = swift_allocObject();
        v72[2] = v70;
        v72[3] = v71;
        v72[4] = v103;
        v72[5] = v20;
        v73 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v74 = swift_allocObject();
        swift_weakInit();
        v75 = swift_allocObject();
        *(v75 + 16) = v73;
        *(v75 + 24) = v74;
        sub_10000E244(&qword_1003486B8, &qword_1003486A0, qword_100281CD8);
        v76 = v101;
        v77 = Publisher.sink(receiveCompletion:receiveValue:)();

        (*(v100 + 8))(v68, v76);
        v78 = *(a1 + v88);
        *(a1 + v88) = v77;

        v89(1, 0);
        sub_10006DB04(v92, v87);
        goto LABEL_18;
      }

      v50 = v33;

      sub_100123630();
      v51 = swift_allocError();
      *v52 = 6;
      swift_willThrow();
      swift_errorRetain();
      v53 = Logger.logObject.getter();
      v54 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        *v55 = 138412290;
        swift_errorRetain();
        v57 = _swift_stdlib_bridgeErrorToNSError();
        *(v55 + 4) = v57;
        *v56 = v57;
        _os_log_impl(&_mh_execute_header, v53, v54, "### Error sharing token %@", v55, 0xCu);
        sub_1000097E8(v56, &qword_100339940, &unk_100272C50);
      }

      swift_errorRetain();
      v89(v51, 1);
      sub_10006DB04(v50, v35);

LABEL_12:

      return;
    }
  }

  else
  {
  }

LABEL_17:
  sub_100123630();
  swift_allocError();
  *v38 = 1;
  (a3)();

LABEL_18:
}

uint64_t sub_10016B120@<X0>(uint64_t *a1@<X8>)
{
  sub_100123630();
  result = swift_allocError();
  *a1 = result;
  *v3 = 10;
  return result;
}

uint64_t sub_10016B168@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  sub_100003118(0, &qword_10034A350, NIDiscoveryToken_ptr);
  result = sub_10017B1C8();
  if (result)
  {
    *a2 = result;
  }

  else
  {
    sub_100123630();
    swift_allocError();
    *v6 = 0;
    return swift_willThrow();
  }

  return result;
}

void sub_10016B200(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v7 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    if (v7)
    {
      swift_beginAccess();
      v10 = swift_weakLoadStrong();
      sub_1001690B4(v7, v10);
    }

    else
    {
      if (qword_1003390E0 != -1)
      {
        swift_once();
      }

      v11 = type metadata accessor for Logger();
      sub_100003078(v11, qword_100348648);

      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v19 = v15;
        *v14 = 136315138;
        *(v14 + 4) = sub_100017494(a4, a5, &v19);
        _os_log_impl(&_mh_execute_header, v12, v13, "DONE exchanging tokens with %s", v14, 0xCu);
        sub_10000903C(v15);
      }
    }

    swift_beginAccess();
    v16 = swift_weakLoadStrong();

    if (v16)
    {
      v17 = v16;
      v18 = *(v16 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_discoveryTokenSyncTask);
      *(v17 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_discoveryTokenSyncTask) = 0;
    }
  }
}

void sub_10016B40C(void **a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    swift_beginAccess();
    v4 = swift_weakLoadStrong();
    if (v4)
    {
      v5 = sub_100168AF4(v1, v4);
      sub_10006DB04(v5, v6);
    }

    else
    {
    }
  }
}

BOOL sub_10016B4B0(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 24);
  v8 = *a2;
  v3 = sub_100013158(&qword_100348678, type metadata accessor for ContextDeliveryModeStateMachine);
  v4 = *(v3 + 80);
  v5 = type metadata accessor for ContextDeliveryModeStateMachine();
  v4(&v7, v5, v3);
  return v2 == v7;
}

uint64_t sub_10016B564(uint64_t a1, uint64_t a2)
{
  v4 = sub_100035D04(&qword_10033AAD0, &qword_100271708);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10016B600(void (*a1)(void))
{
  v3 = v1[2];

  v4 = v1[3];

  a1(v1[5]);

  return _swift_deallocObject(v1, 48, 7);
}

void sub_10016B664(void **a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_10016B40C(a1);
}

uint64_t sub_10016B67C(uint64_t a1)
{
  if ((*(a1 + 56) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 56) & 3;
  }
}

uint64_t sub_10016B698(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 57))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 56);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_10016B6E0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 56) = -a2;
    }
  }

  return result;
}

uint64_t sub_10016B734(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    LOBYTE(a2) = 2;
  }

  *(result + 56) = a2;
  return result;
}

uint64_t sub_10016B76C(void *a1, int a2)
{
  v22 = a2;
  v3 = sub_100035D04(&qword_1003486F8, &qword_100281F78);
  v20 = *(v3 - 8);
  v21 = v3;
  v4 = *(v20 + 64);
  __chkstk_darwin(v3);
  v6 = &v19 - v5;
  v19 = sub_100035D04(&qword_100348700, &qword_100281F80);
  v7 = *(v19 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v19);
  v10 = &v19 - v9;
  v11 = sub_100035D04(&qword_100348708, &qword_100281F88);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v19 - v14;
  v16 = a1[4];
  sub_10000EBC0(a1, a1[3]);
  sub_10016CF8C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v17 = (v12 + 8);
  if (v22)
  {
    v24 = 1;
    sub_10016CFE0();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v20 + 8))(v6, v21);
  }

  else
  {
    v23 = 0;
    sub_10016D034();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v7 + 8))(v10, v19);
  }

  return (*v17)(v15, v11);
}

uint64_t sub_10016BA28(uint64_t a1)
{
  v2 = sub_10016CF8C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10016BA64(uint64_t a1)
{
  v2 = sub_10016CF8C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10016BAA0(uint64_t a1)
{
  v2 = sub_10016CFE0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10016BADC(uint64_t a1)
{
  v2 = sub_10016CFE0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10016BB18(uint64_t a1)
{
  v2 = sub_10016D034();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10016BB54(uint64_t a1)
{
  v2 = sub_10016D034();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10016BB90@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10016CAD0(a1);
  if (!v2)
  {
    *a2 = result & 1;
  }

  return result;
}

uint64_t sub_10016BBDC()
{
  v1 = *v0;
  v2 = v0[1];
  if (*(v0 + 56))
  {
    v4 = v0[2];
    v3 = v0[3];
    if (*(v0 + 56) == 1)
    {
      v5._countAndFlagsBits = 0x202864656C696166;
      v5._object = 0xE800000000000000;
      String.append(_:)(v5);
      _print_unlocked<A, B>(_:_:)();
      v6._countAndFlagsBits = 10528;
      v6._object = 0xE200000000000000;
      String.append(_:)(v6);
      return 0;
    }

    else
    {
      v9 = v0[4] | v0[5] | v0[6];
      if (v4 | v2 | v1 | v3 | v9)
      {
        v10 = v4 | v2 | v3 | v9;
        if (v1 != 1 || v10)
        {
          if (v10)
          {
            v11 = 0x61546C65636E6163;
          }

          else
          {
            v11 = 0xD000000000000010;
          }

          if (v1 == 2)
          {
            return v11;
          }

          else
          {
            return 0x61546C65636E6163;
          }
        }

        else
        {
          return 0x65746E6573657270;
        }
      }

      else
      {
        return 0x69746E6573657270;
      }
    }
  }

  else
  {
    String.append(_:)(*v0);
    v8._countAndFlagsBits = 10528;
    v8._object = 0xE200000000000000;
    String.append(_:)(v8);
    return 0x657373696D736964;
  }
}

uint64_t sub_10016BDA4(void *a1)
{
  v2 = v1;
  v4 = sub_100035D04(&qword_100348780, &qword_100281FC8);
  v56 = *(v4 - 8);
  v57 = v4;
  v5 = *(v56 + 64);
  __chkstk_darwin(v4);
  v55 = &v51 - v6;
  v54 = sub_100035D04(&qword_100348788, &qword_100281FD0);
  v53 = *(v54 - 8);
  v7 = *(v53 + 64);
  __chkstk_darwin(v54);
  v52 = &v51 - v8;
  v9 = sub_100035D04(&qword_100348790, &qword_100281FD8);
  v65 = *(v9 - 8);
  v66 = v9;
  v10 = *(v65 + 64);
  __chkstk_darwin(v9);
  v64 = &v51 - v11;
  v12 = sub_100035D04(&qword_100348798, &qword_100281FE0);
  v63 = *(v12 - 8);
  v13 = *(v63 + 64);
  __chkstk_darwin(v12);
  v15 = &v51 - v14;
  v16 = sub_100035D04(&qword_1003487A0, &qword_100281FE8);
  v59 = *(v16 - 8);
  v60 = v16;
  v17 = *(v59 + 64);
  __chkstk_darwin(v16);
  v58 = &v51 - v18;
  v19 = sub_100035D04(&qword_1003487A8, &qword_100281FF0);
  v61 = *(v19 - 8);
  v62 = v19;
  v20 = *(v61 + 64);
  __chkstk_darwin(v19);
  v22 = &v51 - v21;
  v23 = sub_100035D04(&qword_1003487B0, &qword_100281FF8);
  v68 = *(v23 - 8);
  v24 = *(v68 + 64);
  __chkstk_darwin(v23);
  v26 = &v51 - v25;
  v27 = a1[4];
  sub_10000EBC0(a1, a1[3]);
  sub_10016DD14();
  v67 = v26;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v29 = *v2;
  v28 = v2[1];
  if (!*(v2 + 56))
  {
    LOBYTE(v69) = 2;
    sub_10016DE64();
    v40 = v67;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    KeyedEncodingContainer.encode(_:forKey:)();
    (*(v63 + 8))(v15, v12);
    return (*(v68 + 8))(v40, v23);
  }

  v30 = v23;
  v31 = v2[2];
  v32 = v2[3];
  v34 = v2[4];
  v33 = v2[5];
  v35 = v2[6];
  if (*(v2 + 56) == 1)
  {
    LOBYTE(v69) = 3;
    v63 = v35;
    sub_10016DE10();
    v36 = v64;
    v51 = v30;
    v37 = v67;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v69 = v29;
    v70 = v28;
    v71 = v31;
    v72 = v32;
    v73 = v34;
    v74 = v33;
    v75 = v63;
    sub_10010B950();
    v38 = v66;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v65 + 8))(v36, v38);
    return (*(v68 + 8))(v37, v51);
  }

  v41 = v34 | v33 | v35;
  if (!(v31 | v28 | v29 | v32 | v41))
  {
    LOBYTE(v69) = 0;
    sub_10016DF0C();
    v48 = v30;
    v49 = v67;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v61 + 8))(v22, v62);
    return (*(v68 + 8))(v49, v48);
  }

  v42 = v31 | v28 | v32 | v41;
  v43 = v30;
  if (v29 == 1 && !v42)
  {
    LOBYTE(v69) = 1;
    sub_10016DEB8();
    v44 = v58;
    v45 = v67;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v47 = v59;
    v46 = v60;
LABEL_14:
    (*(v47 + 8))(v44, v46);
    return (*(v68 + 8))(v45, v43);
  }

  if (v29 != 2 || v42)
  {
    LOBYTE(v69) = 5;
    sub_10016DD68();
    v44 = v55;
    v45 = v67;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v47 = v56;
    v46 = v57;
    goto LABEL_14;
  }

  LOBYTE(v69) = 4;
  sub_10016DDBC();
  v50 = v52;
  v45 = v67;
  KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  (*(v53 + 8))(v50, v54);
  return (*(v68 + 8))(v45, v43);
}

uint64_t sub_10016C4C4(uint64_t a1)
{
  v2 = sub_10016DD68();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10016C500(uint64_t a1)
{
  v2 = sub_10016DD68();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10016C53C()
{
  v1 = *v0;
  v2 = 0x69746E6573657270;
  v3 = 0x64656C696166;
  v4 = 0xD000000000000010;
  if (v1 != 4)
  {
    v4 = 0x61546C65636E6163;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x65746E6573657270;
  if (v1 != 1)
  {
    v5 = 0x657373696D736964;
  }

  if (*v0)
  {
    v2 = v5;
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

uint64_t sub_10016C60C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10016D088(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10016C634(uint64_t a1)
{
  v2 = sub_10016DD14();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10016C670(uint64_t a1)
{
  v2 = sub_10016DD14();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10016C6AC(uint64_t a1)
{
  v2 = sub_10016DE64();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10016C6E8(uint64_t a1)
{
  v2 = sub_10016DE64();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10016C724(uint64_t a1)
{
  v2 = sub_10016DE10();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10016C760(uint64_t a1)
{
  v2 = sub_10016DE10();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10016C79C(uint64_t a1)
{
  v2 = sub_10016DEB8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10016C7D8(uint64_t a1)
{
  v2 = sub_10016DEB8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10016C814(uint64_t a1)
{
  v2 = sub_10016DF0C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10016C850(uint64_t a1)
{
  v2 = sub_10016DF0C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10016C88C(uint64_t a1)
{
  v2 = sub_10016DDBC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10016C8C8(uint64_t a1)
{
  v2 = sub_10016DDBC();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_10016C904@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_10016D2A4(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    a2[2] = v7[0];
    result = *(v7 + 9);
    *(a2 + 41) = *(v7 + 9);
  }

  return result;
}

BOOL sub_10016C96C(uint64_t *a1, uint64_t *a2)
{
  v2 = *(a2 + 56);
  if (*(a1 + 56))
  {
    if (*(a1 + 56) == 1)
    {
      return v2 == 1;
    }

    v4 = *a1;
    v3 = a1[1];
    v6 = *a2;
    v5 = a2[1];
    v8 = a2[2];
    v7 = a2[3];
    v10 = a2[4];
    v9 = a2[5];
    v11 = a2[6];
    v12 = a1[3];
    v13 = a1[4];
    v14 = a1[2];
    v15 = a1[5] | a1[6];
    v16 = v12 | v14 | v3;
    if (!(v15 | v4 | v13 | v16))
    {
      return v2 == 2 && !(v8 | v5 | v6 | v7 | v10 | v9 | v11);
    }

    v17 = v15 | v13 | v16;
    if (v4 != 1 || v17)
    {
      if (v4 != 2 || v17)
      {
        if (v2 != 2 || v6 != 3)
        {
          return 0;
        }
      }

      else if (v2 != 2 || v6 != 2)
      {
        return 0;
      }
    }

    else if (v2 != 2 || v6 != 1)
    {
      return 0;
    }

    if (!(v8 | v5 | v7 | v10 | v9 | v11))
    {
      return 1;
    }
  }

  else if (!*(a2 + 56))
  {
    return 1;
  }

  return 0;
}

unint64_t sub_10016CA7C()
{
  result = qword_1003486C0;
  if (!qword_1003486C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003486C0);
  }

  return result;
}

uint64_t sub_10016CAD0(uint64_t *a1)
{
  v2 = sub_100035D04(&qword_1003486C8, &qword_100281F58);
  v29 = *(v2 - 8);
  v30 = v2;
  v3 = *(v29 + 64);
  __chkstk_darwin(v2);
  v5 = &v27 - v4;
  v6 = sub_100035D04(&qword_1003486D0, &qword_100281F60);
  v28 = *(v6 - 8);
  v7 = *(v28 + 64);
  __chkstk_darwin(v6);
  v9 = &v27 - v8;
  v10 = sub_100035D04(&qword_1003486D8, &unk_100281F68);
  v31 = *(v10 - 8);
  v11 = *(v31 + 64);
  __chkstk_darwin(v10);
  v13 = &v27 - v12;
  v14 = a1[4];
  sub_10000EBC0(a1, a1[3]);
  sub_10016CF8C();
  v15 = v32;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v15)
  {
    return sub_10000903C(a1);
  }

  v32 = a1;
  v16 = v30;
  v17 = KeyedDecodingContainer.allKeys.getter();
  v18 = (2 * *(v17 + 16)) | 1;
  v33 = v17;
  v34 = v17 + 32;
  v35 = 0;
  v36 = v18;
  v19 = sub_10021800C();
  if (v19 == 2 || v35 != v36 >> 1)
  {
    v21 = v10;
    v22 = type metadata accessor for DecodingError();
    swift_allocError();
    v24 = v23;
    v25 = *(sub_100035D04(&qword_10033EA78, &qword_100275A60) + 48);
    *v24 = &type metadata for NearbySharingInteractionViewEffect;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v22 - 8) + 104))(v24, enum case for DecodingError.typeMismatch(_:), v22);
    swift_willThrow();
    (*(v31 + 8))(v13, v21);
    swift_unknownObjectRelease();
    a1 = v32;
    return sub_10000903C(a1);
  }

  v37 = v19;
  if (v19)
  {
    v38 = 1;
    sub_10016CFE0();
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v20 = v31;
    (*(v29 + 8))(v5, v16);
  }

  else
  {
    v38 = 0;
    sub_10016D034();
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v20 = v31;
    (*(v28 + 8))(v9, v6);
  }

  (*(v20 + 8))(v13, v10);
  swift_unknownObjectRelease();
  sub_10000903C(v32);
  return v37 & 1;
}

unint64_t sub_10016CF8C()
{
  result = qword_1003486E0;
  if (!qword_1003486E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003486E0);
  }

  return result;
}

unint64_t sub_10016CFE0()
{
  result = qword_1003486E8;
  if (!qword_1003486E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003486E8);
  }

  return result;
}

unint64_t sub_10016D034()
{
  result = qword_1003486F0;
  if (!qword_1003486F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003486F0);
  }

  return result;
}

uint64_t sub_10016D088(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x69746E6573657270 && a2 == 0xEA0000000000676ELL;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65746E6573657270 && a2 == 0xE900000000000064 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x657373696D736964 && a2 == 0xE900000000000064 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x64656C696166 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001002A29A0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x61546C65636E6163 && a2 == 0xEC00000064657070)
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

uint64_t sub_10016D2A4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v73 = a2;
  v3 = sub_100035D04(&qword_100348710, &qword_100281F90);
  v70 = *(v3 - 8);
  v71 = v3;
  v4 = *(v70 + 64);
  __chkstk_darwin(v3);
  v76 = &v58 - v5;
  v6 = sub_100035D04(&qword_100348718, &qword_100281F98);
  v68 = *(v6 - 8);
  v69 = v6;
  v7 = *(v68 + 64);
  __chkstk_darwin(v6);
  v72 = &v58 - v8;
  v64 = sub_100035D04(&qword_100348720, &qword_100281FA0);
  v67 = *(v64 - 8);
  v9 = *(v67 + 64);
  __chkstk_darwin(v64);
  v75 = &v58 - v10;
  v66 = sub_100035D04(&qword_100348728, &qword_100281FA8);
  v65 = *(v66 - 8);
  v11 = *(v65 + 64);
  __chkstk_darwin(v66);
  v74 = &v58 - v12;
  v63 = sub_100035D04(&qword_100348730, &qword_100281FB0);
  v62 = *(v63 - 8);
  v13 = *(v62 + 64);
  __chkstk_darwin(v63);
  v15 = &v58 - v14;
  v16 = sub_100035D04(&qword_100348738, &qword_100281FB8);
  v61 = *(v16 - 8);
  v17 = *(v61 + 64);
  __chkstk_darwin(v16);
  v19 = &v58 - v18;
  v20 = sub_100035D04(&qword_100348740, &qword_100281FC0);
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20);
  v24 = &v58 - v23;
  v25 = a1[3];
  v26 = a1[4];
  v89 = a1;
  sub_10000EBC0(a1, v25);
  sub_10016DD14();
  v27 = v77;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  v28 = v27;
  if (v27)
  {
    return sub_10000903C(v89);
  }

  v29 = v19;
  v59 = v16;
  v60 = v15;
  v30 = v74;
  v31 = v75;
  v32 = v76;
  v77 = v21;
  v33 = v24;
  v34 = KeyedDecodingContainer.allKeys.getter();
  v35 = (2 * *(v34 + 16)) | 1;
  v85 = v34;
  v86 = v34 + 32;
  v87 = 0;
  v88 = v35;
  v36 = sub_100218010();
  if (v36 == 6 || v87 != v88 >> 1)
  {
    v46 = type metadata accessor for DecodingError();
    swift_allocError();
    v48 = v47;
    v49 = *(sub_100035D04(&qword_10033EA78, &qword_100275A60) + 48);
    *v48 = &type metadata for NearbySharingInteractionViewEvent;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v46 - 8) + 104))(v48, enum case for DecodingError.typeMismatch(_:), v46);
    swift_willThrow();
    (*(v77 + 8))(v24, v20);
    swift_unknownObjectRelease();
    return sub_10000903C(v89);
  }

  if (v36 > 2u)
  {
    if (v36 == 3)
    {
      LOBYTE(v78) = 3;
      sub_10016DE10();
      v53 = v24;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v45 = v73;
      v54 = v77;
      sub_10010B758();
      v55 = v64;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v58 = 0;
      (*(v67 + 8))(v31, v55);
      (*(v54 + 8))(v53, v20);
      swift_unknownObjectRelease();
      v44 = v78;
      v39 = v79;
      v40 = v80;
      v41 = v81;
      v42 = v82;
      v28 = v83;
      v43 = 1;
      v20 = v84;
    }

    else
    {
      v45 = v73;
      v51 = v77;
      if (v36 == 4)
      {
        LOBYTE(v78) = 4;
        sub_10016DDBC();
        v52 = v72;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v58 = 0;
        (*(v68 + 8))(v52, v69);
        (*(v51 + 8))(v33, v20);
        swift_unknownObjectRelease();
        v39 = 0;
        v40 = 0;
        v41 = 0;
        v42 = 0;
        v20 = 0;
        v44 = 2;
        v43 = 2;
      }

      else
      {
        LOBYTE(v78) = 5;
        sub_10016DD68();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v58 = 0;
        (*(v70 + 8))(v32, v71);
        (*(v51 + 8))(v33, v20);
        swift_unknownObjectRelease();
        v39 = 0;
        v40 = 0;
        v41 = 0;
        v42 = 0;
        v20 = 0;
        v43 = 2;
        v44 = 3;
      }
    }
  }

  else if (v36)
  {
    if (v36 == 1)
    {
      LOBYTE(v78) = 1;
      sub_10016DEB8();
      v37 = v60;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v38 = v77;
      v58 = 0;
      (*(v62 + 8))(v37, v63);
      (*(v38 + 8))(v24, v20);
      swift_unknownObjectRelease();
      v39 = 0;
      v40 = 0;
      v41 = 0;
      v42 = 0;
      v20 = 0;
      v43 = 2;
      v44 = 1;
      v45 = v73;
    }

    else
    {
      LOBYTE(v78) = 2;
      sub_10016DE64();
      v41 = v30;
      v42 = v24;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v45 = v73;
      v56 = v77;
      v40 = v66;
      v28 = 0;
      v44 = KeyedDecodingContainer.decode(_:forKey:)();
      v39 = v57;
      v58 = 0;
      (*(v65 + 8))(v41, v40);
      (*(v56 + 8))(v42, v20);
      swift_unknownObjectRelease();
      v43 = 0;
    }
  }

  else
  {
    LOBYTE(v78) = 0;
    sub_10016DF0C();
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v58 = 0;
    (*(v61 + 8))(v29, v59);
    (*(v77 + 8))(v24, v20);
    swift_unknownObjectRelease();
    v44 = 0;
    v39 = 0;
    v40 = 0;
    v41 = 0;
    v42 = 0;
    v20 = 0;
    v43 = 2;
    v45 = v73;
  }

  result = sub_10000903C(v89);
  *v45 = v44;
  *(v45 + 8) = v39;
  *(v45 + 16) = v40;
  *(v45 + 24) = v41;
  *(v45 + 32) = v42;
  *(v45 + 40) = v28;
  *(v45 + 48) = v20;
  *(v45 + 56) = v43;
  return result;
}

unint64_t sub_10016DD14()
{
  result = qword_100348748;
  if (!qword_100348748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100348748);
  }

  return result;
}

unint64_t sub_10016DD68()
{
  result = qword_100348750;
  if (!qword_100348750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100348750);
  }

  return result;
}

unint64_t sub_10016DDBC()
{
  result = qword_100348758;
  if (!qword_100348758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100348758);
  }

  return result;
}

unint64_t sub_10016DE10()
{
  result = qword_100348760;
  if (!qword_100348760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100348760);
  }

  return result;
}

unint64_t sub_10016DE64()
{
  result = qword_100348768;
  if (!qword_100348768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100348768);
  }

  return result;
}

unint64_t sub_10016DEB8()
{
  result = qword_100348770;
  if (!qword_100348770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100348770);
  }

  return result;
}

unint64_t sub_10016DF0C()
{
  result = qword_100348778;
  if (!qword_100348778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100348778);
  }

  return result;
}

unint64_t sub_10016E004()
{
  result = qword_1003487B8;
  if (!qword_1003487B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003487B8);
  }

  return result;
}

unint64_t sub_10016E05C()
{
  result = qword_1003487C0;
  if (!qword_1003487C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003487C0);
  }

  return result;
}

unint64_t sub_10016E0B4()
{
  result = qword_1003487C8;
  if (!qword_1003487C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003487C8);
  }

  return result;
}

unint64_t sub_10016E10C()
{
  result = qword_1003487D0;
  if (!qword_1003487D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003487D0);
  }

  return result;
}

unint64_t sub_10016E164()
{
  result = qword_1003487D8;
  if (!qword_1003487D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003487D8);
  }

  return result;
}

unint64_t sub_10016E1BC()
{
  result = qword_1003487E0;
  if (!qword_1003487E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003487E0);
  }

  return result;
}

unint64_t sub_10016E214()
{
  result = qword_1003487E8;
  if (!qword_1003487E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003487E8);
  }

  return result;
}

unint64_t sub_10016E26C()
{
  result = qword_1003487F0;
  if (!qword_1003487F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003487F0);
  }

  return result;
}

unint64_t sub_10016E2C4()
{
  result = qword_1003487F8;
  if (!qword_1003487F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003487F8);
  }

  return result;
}

unint64_t sub_10016E31C()
{
  result = qword_100348800;
  if (!qword_100348800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100348800);
  }

  return result;
}

unint64_t sub_10016E374()
{
  result = qword_100348808;
  if (!qword_100348808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100348808);
  }

  return result;
}

unint64_t sub_10016E3CC()
{
  result = qword_100348810;
  if (!qword_100348810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100348810);
  }

  return result;
}

unint64_t sub_10016E424()
{
  result = qword_100348818;
  if (!qword_100348818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100348818);
  }

  return result;
}

unint64_t sub_10016E47C()
{
  result = qword_100348820;
  if (!qword_100348820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100348820);
  }

  return result;
}

unint64_t sub_10016E4D4()
{
  result = qword_100348828;
  if (!qword_100348828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100348828);
  }

  return result;
}

unint64_t sub_10016E52C()
{
  result = qword_100348830;
  if (!qword_100348830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100348830);
  }

  return result;
}

unint64_t sub_10016E584()
{
  result = qword_100348838;
  if (!qword_100348838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100348838);
  }

  return result;
}

unint64_t sub_10016E5DC()
{
  result = qword_100348840;
  if (!qword_100348840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100348840);
  }

  return result;
}

unint64_t sub_10016E634()
{
  result = qword_100348848;
  if (!qword_100348848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100348848);
  }

  return result;
}

unint64_t sub_10016E68C()
{
  result = qword_100348850;
  if (!qword_100348850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100348850);
  }

  return result;
}

unint64_t sub_10016E6E4()
{
  result = qword_100348858;
  if (!qword_100348858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100348858);
  }

  return result;
}

unint64_t sub_10016E73C()
{
  result = qword_100348860;
  if (!qword_100348860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100348860);
  }

  return result;
}

unint64_t sub_10016E794()
{
  result = qword_100348868;
  if (!qword_100348868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100348868);
  }

  return result;
}

unint64_t sub_10016E7EC()
{
  result = qword_100348870;
  if (!qword_100348870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100348870);
  }

  return result;
}

uint64_t sub_10016E844(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 0x746867696CLL;
    }

    else
    {
      v4 = 1952870259;
    }

    if (v2)
    {
      v3 = 0xE500000000000000;
    }

    else
    {
      v3 = 0xE400000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0xE600000000000000;
    v4 = 0x6D756964656DLL;
  }

  else
  {
    v3 = 0xE500000000000000;
    if (a1 == 3)
    {
      v4 = 0x7976616568;
    }

    else
    {
      v4 = 0x6469676972;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v8 = 0x746867696CLL;
    }

    else
    {
      v8 = 1952870259;
    }

    if (a2)
    {
      v7 = 0xE500000000000000;
    }

    else
    {
      v7 = 0xE400000000000000;
    }

    if (v4 != v8)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0x7976616568;
    if (a2 != 3)
    {
      v5 = 0x6469676972;
    }

    if (a2 == 2)
    {
      v6 = 0x6D756964656DLL;
    }

    else
    {
      v6 = v5;
    }

    if (a2 == 2)
    {
      v7 = 0xE600000000000000;
    }

    else
    {
      v7 = 0xE500000000000000;
    }

    if (v4 != v6)
    {
      goto LABEL_33;
    }
  }

  if (v3 != v7)
  {
LABEL_33:
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_34;
  }

  v9 = 1;
LABEL_34:

  return v9 & 1;
}

uint64_t sub_10016E9A4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x656369766564;
    }

    else
    {
      v3 = 0x7974697669746361;
    }

    if (v2)
    {
      v4 = 0xE600000000000000;
    }

    else
    {
      v4 = 0xE800000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0xD000000000000012;
    v4 = 0x8000000100297200;
  }

  else
  {
    if (a1 == 3)
    {
      v3 = 0x7974706D65;
    }

    else
    {
      v3 = 0xD000000000000012;
    }

    if (v2 == 3)
    {
      v4 = 0xE500000000000000;
    }

    else
    {
      v4 = 0x8000000100297220;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x656369766564;
    }

    else
    {
      v9 = 0x7974697669746361;
    }

    if (a2)
    {
      v8 = 0xE600000000000000;
    }

    else
    {
      v8 = 0xE800000000000000;
    }

    if (v3 != v9)
    {
      goto LABEL_37;
    }
  }

  else
  {
    v5 = 0x7974706D65;
    v6 = 0x8000000100297220;
    if (a2 == 3)
    {
      v6 = 0xE500000000000000;
    }

    else
    {
      v5 = 0xD000000000000012;
    }

    if (a2 == 2)
    {
      v7 = 0xD000000000000012;
    }

    else
    {
      v7 = v5;
    }

    if (a2 == 2)
    {
      v8 = 0x8000000100297200;
    }

    else
    {
      v8 = v6;
    }

    if (v3 != v7)
    {
      goto LABEL_37;
    }
  }

  if (v4 != v8)
  {
LABEL_37:
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_38;
  }

  v10 = 1;
LABEL_38:

  return v10 & 1;
}

uint64_t sub_10016EB28(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 3u)
  {
    v11 = 0xE800000000000000;
    v12 = 0xE500000000000000;
    v13 = 0x656E6F6850;
    if (a1 != 2)
    {
      v13 = 0x74736163646F50;
      v12 = 0xE700000000000000;
    }

    v14 = 0x636973754DLL;
    if (a1)
    {
      v11 = 0xE500000000000000;
    }

    else
    {
      v14 = 0x656D695465636146;
    }

    if (a1 <= 1u)
    {
      v9 = v14;
    }

    else
    {
      v9 = v13;
    }

    if (v2 <= 1)
    {
      v10 = v11;
    }

    else
    {
      v10 = v12;
    }
  }

  else
  {
    v3 = 0x436E776F6E6B6E55;
    v4 = 0xEB000000006C6C61;
    v5 = 0x4D6E776F6E6B6E55;
    v6 = 0xEC00000061696465;
    if (a1 != 7)
    {
      v5 = 0x6E776F6E6B6E55;
      v6 = 0xE700000000000000;
    }

    if (a1 != 6)
    {
      v3 = v5;
      v4 = v6;
    }

    v7 = 0xD000000000000019;
    v8 = 0x8000000100297150;
    if (a1 != 4)
    {
      v7 = 0xD00000000000001ALL;
      v8 = 0x8000000100297170;
    }

    if (a1 <= 5u)
    {
      v9 = v7;
    }

    else
    {
      v9 = v3;
    }

    if (v2 <= 5)
    {
      v10 = v8;
    }

    else
    {
      v10 = v4;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v15 = 0xE500000000000000;
        if (v9 != 0x656E6F6850)
        {
          goto LABEL_52;
        }
      }

      else
      {
        v15 = 0xE700000000000000;
        if (v9 != 0x74736163646F50)
        {
          goto LABEL_52;
        }
      }
    }

    else if (a2)
    {
      v15 = 0xE500000000000000;
      if (v9 != 0x636973754DLL)
      {
        goto LABEL_52;
      }
    }

    else
    {
      v15 = 0xE800000000000000;
      if (v9 != 0x656D695465636146)
      {
        goto LABEL_52;
      }
    }
  }

  else if (a2 <= 5u)
  {
    if (a2 == 4)
    {
      v15 = 0x8000000100297150;
      if (v9 != 0xD000000000000019)
      {
        goto LABEL_52;
      }
    }

    else
    {
      v15 = 0x8000000100297170;
      if (v9 != 0xD00000000000001ALL)
      {
LABEL_52:
        v16 = _stringCompareWithSmolCheck(_:_:expecting:)();
        goto LABEL_53;
      }
    }
  }

  else if (a2 == 6)
  {
    v15 = 0xEB000000006C6C61;
    if (v9 != 0x436E776F6E6B6E55)
    {
      goto LABEL_52;
    }
  }

  else if (a2 == 7)
  {
    v15 = 0xEC00000061696465;
    if (v9 != 0x4D6E776F6E6B6E55)
    {
      goto LABEL_52;
    }
  }

  else
  {
    v15 = 0xE700000000000000;
    if (v9 != 0x6E776F6E6B6E55)
    {
      goto LABEL_52;
    }
  }

  if (v10 != v15)
  {
    goto LABEL_52;
  }

  v16 = 1;
LABEL_53:

  return v16 & 1;
}

uint64_t sub_10016EE04(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0xD000000000000013;
    }

    else
    {
      v5 = 0xD000000000000015;
    }

    if (v2)
    {
      v6 = 0x8000000100297530;
    }

    else
    {
      v6 = 0x8000000100297510;
    }
  }

  else
  {
    v3 = 0xE800000000000000;
    v4 = 0xD000000000000011;
    if (a1 == 3)
    {
      v3 = 0x8000000100297570;
    }

    else
    {
      v4 = 0x2E2E2E726568744FLL;
    }

    if (a1 == 2)
    {
      v5 = 0xD000000000000013;
    }

    else
    {
      v5 = v4;
    }

    if (v2 == 2)
    {
      v6 = 0x8000000100297550;
    }

    else
    {
      v6 = v3;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v8 = 0xD000000000000013;
    }

    else
    {
      v8 = 0xD000000000000015;
    }

    if (a2)
    {
      v7 = 0x8000000100297530;
    }

    else
    {
      v7 = 0x8000000100297510;
    }

    if (v5 != v8)
    {
      goto LABEL_35;
    }
  }

  else if (a2 == 2)
  {
    v7 = 0x8000000100297550;
    if (v5 != 0xD000000000000013)
    {
      goto LABEL_35;
    }
  }

  else if (a2 == 3)
  {
    v7 = 0x8000000100297570;
    if (v5 != 0xD000000000000011)
    {
      goto LABEL_35;
    }
  }

  else
  {
    v7 = 0xE800000000000000;
    if (v5 != 0x2E2E2E726568744FLL)
    {
LABEL_35:
      v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
      goto LABEL_36;
    }
  }

  if (v6 != v7)
  {
    goto LABEL_35;
  }

  v9 = 1;
LABEL_36:

  return v9 & 1;
}

uint64_t sub_10016EFA0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0xD000000000000014;
    }

    else
    {
      v5 = 0xD000000000000012;
    }

    if (v2)
    {
      v6 = 0x80000001002975B0;
    }

    else
    {
      v6 = 0x8000000100297590;
    }
  }

  else
  {
    v3 = 0xE800000000000000;
    v4 = 0xD00000000000001CLL;
    if (a1 == 3)
    {
      v3 = 0x80000001002975F0;
    }

    else
    {
      v4 = 0x2E2E2E726568744FLL;
    }

    if (a1 == 2)
    {
      v5 = 0xD00000000000001ALL;
    }

    else
    {
      v5 = v4;
    }

    if (v2 == 2)
    {
      v6 = 0x80000001002975D0;
    }

    else
    {
      v6 = v3;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v8 = 0xD000000000000014;
    }

    else
    {
      v8 = 0xD000000000000012;
    }

    if (a2)
    {
      v7 = 0x80000001002975B0;
    }

    else
    {
      v7 = 0x8000000100297590;
    }

    if (v5 != v8)
    {
      goto LABEL_35;
    }
  }

  else if (a2 == 2)
  {
    v7 = 0x80000001002975D0;
    if (v5 != 0xD00000000000001ALL)
    {
      goto LABEL_35;
    }
  }

  else if (a2 == 3)
  {
    v7 = 0x80000001002975F0;
    if (v5 != 0xD00000000000001CLL)
    {
      goto LABEL_35;
    }
  }

  else
  {
    v7 = 0xE800000000000000;
    if (v5 != 0x2E2E2E726568744FLL)
    {
LABEL_35:
      v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
      goto LABEL_36;
    }
  }

  if (v6 != v7)
  {
    goto LABEL_35;
  }

  v9 = 1;
LABEL_36:

  return v9 & 1;
}

uint64_t sub_10016F13C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE600000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x796C65726152;
  v6 = 0x656D6974656D6F53;
  v7 = 0xE900000000000073;
  if (a1 != 4)
  {
    v6 = 0x656C62616E55;
    v7 = 0xE600000000000000;
  }

  if (a1 != 3)
  {
    v5 = v6;
    v4 = v7;
  }

  v8 = 0x74276E6469442049;
  v9 = 0xEC00000079725420;
  if (a1 != 1)
  {
    v8 = 0x6C70704120746F4ELL;
    v9 = 0xEE00656C62616369;
  }

  if (a1)
  {
    v3 = v9;
  }

  else
  {
    v8 = 0x737961776C41;
  }

  if (a1 <= 2u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v5;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v4;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v12 = 0xE600000000000000;
      if (v10 != 0x796C65726152)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      v12 = 0xE900000000000073;
      if (v10 != 0x656D6974656D6F53)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE600000000000000;
      if (v10 != 0x656C62616E55)
      {
LABEL_34:
        v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v12 = 0xEC00000079725420;
      if (v10 != 0x74276E6469442049)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xEE00656C62616369;
      if (v10 != 0x6C70704120746F4ELL)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v12 = 0xE600000000000000;
    if (v10 != 0x737961776C41)
    {
      goto LABEL_34;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_34;
  }

  v13 = 1;
LABEL_35:

  return v13 & 1;
}

uint64_t sub_10016F340(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD00000000000001ALL;
  v3 = "soft";
  v4 = a1;
  v5 = 0xD000000000000030;
  if (a1 == 4)
  {
    v6 = "itycontrol.lockscreenControls";
  }

  else
  {
    v5 = 0xD000000000000029;
    v6 = "TransferObserver";
  }

  if (a1 == 3)
  {
    v7 = 0xD00000000000002DLL;
  }

  else
  {
    v7 = v5;
  }

  if (a1 == 3)
  {
    v6 = "ityControlUI.HandoffUI";
  }

  v8 = 0xD000000000000026;
  if (v4 == 1)
  {
    v8 = 0xD00000000000001ALL;
    v9 = "itycontrol.cliClient";
  }

  else
  {
    v9 = "com.apple.proximitycontrol";
  }

  if (!v4)
  {
    v8 = 0xD000000000000024;
    v9 = "soft";
  }

  if (v4 <= 2)
  {
    v10 = v9;
  }

  else
  {
    v8 = v7;
    v10 = v6;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v2 = 0xD00000000000002DLL;
      v3 = "ityControlUI.HandoffUI";
    }

    else if (a2 == 4)
    {
      v2 = 0xD000000000000030;
      v3 = "itycontrol.lockscreenControls";
    }

    else
    {
      v2 = 0xD000000000000029;
      v3 = "TransferObserver";
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v3 = "itycontrol.cliClient";
    }

    else
    {
      v2 = 0xD000000000000026;
      v3 = "com.apple.proximitycontrol";
    }
  }

  else
  {
    v2 = 0xD000000000000024;
  }

  if (v8 == v2 && (v10 | 0x8000000000000000) == (v3 | 0x8000000000000000))
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

uint64_t sub_10016F4B4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE700000000000000;
  v4 = 0xE200000000000000;
  v5 = 30324;
  if (a1 != 5)
  {
    v5 = 0x6863746177;
    v4 = 0xE500000000000000;
  }

  v6 = 1685016681;
  v7 = 0xE400000000000000;
  if (a1 != 3)
  {
    v6 = 6513005;
    v7 = 0xE300000000000000;
  }

  if (a1 <= 4u)
  {
    v5 = v6;
    v4 = v7;
  }

  v8 = 0xE400000000000000;
  v9 = 1684099177;
  if (a1 != 1)
  {
    v9 = 0x656E6F685069;
    v8 = 0xE600000000000000;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v9 = 0x646F50656D6F48;
  }

  if (a1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v5;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v4;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v12 = 0xE400000000000000;
        if (v10 != 1684099177)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v12 = 0xE600000000000000;
        if (v10 != 0x656E6F685069)
        {
          goto LABEL_39;
        }
      }
    }

    else
    {
      v12 = 0xE700000000000000;
      if (v10 != 0x646F50656D6F48)
      {
        goto LABEL_39;
      }
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v12 = 0xE200000000000000;
      if (v10 != 30324)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = 0xE500000000000000;
      if (v10 != 0x6863746177)
      {
LABEL_39:
        v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
        goto LABEL_40;
      }
    }
  }

  else if (a2 == 3)
  {
    v12 = 0xE400000000000000;
    if (v10 != 1685016681)
    {
      goto LABEL_39;
    }
  }

  else
  {
    v12 = 0xE300000000000000;
    if (v10 != 6513005)
    {
      goto LABEL_39;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_39;
  }

  v13 = 1;
LABEL_40:

  return v13 & 1;
}

uint64_t sub_10016F694(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return v1;
}

uint64_t sub_10016F6C4()
{
  v0 = type metadata accessor for Logger();
  sub_100036838(v0, qword_100348878);
  sub_100003078(v0, qword_100348878);
  return Logger.init(subsystem:category:)();
}

char *sub_10016F748()
{
  v0 = type metadata accessor for HandoffFeedbackManager(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_10016F978();
  qword_10038B2F0 = result;
  return result;
}

void sub_10016F788()
{
  v1 = v0;
  if (qword_1003390E8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_100348878);

  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v4 = 136315394;
    *(v4 + 4) = sub_100017494(0x74726F706572, 0xE600000000000000, &v10);
    *(v4 + 12) = 2080;
    if (*(v1 + 112))
    {
      type metadata accessor for HandoffFeedback.Report(0);

      v5 = String.init<A>(describing:)();
      v7 = v6;
    }

    else
    {
      v7 = 0xE300000000000000;
      v5 = 7104878;
    }

    v8 = sub_100017494(v5, v7, &v10);

    *(v4 + 14) = v8;
    _os_log_impl(&_mh_execute_header, oslog, v3, "%s: %s", v4, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }
}

char *sub_10016F978()
{
  v1 = sub_100035D04(&qword_10033E800, &qword_100278E80);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v24 = &v23 - v3;
  v4 = sub_100035D04(&qword_100348C70, &qword_1002830E0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v23 - v7;
  v26 = sub_100035D04(&qword_100348BE0, &unk_100283010);
  v9 = *(v26 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v26);
  v12 = &v23 - v11;
  v13 = sub_100035D04(&qword_100348C68, &qword_1002830D8);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v23 - v16;
  swift_defaultActor_initialize();
  *(v0 + 14) = 0;
  *(v0 + 15) = 0;
  *(v0 + 16) = 0;
  v18 = OBJC_IVAR____TtC17proximitycontrold22HandoffFeedbackManager_actionStream;
  v25 = OBJC_IVAR____TtC17proximitycontrold22HandoffFeedbackManager_actionContinuation;
  (*(v5 + 104))(v8, enum case for AsyncStream.Continuation.BufferingPolicy.unbounded<A>(_:), v4);
  static AsyncStream.makeStream(of:bufferingPolicy:)();
  (*(v5 + 8))(v8, v4);
  (*(v14 + 32))(&v0[v18], v17, v13);
  (*(v9 + 32))(&v0[v25], v12, v26);
  *&v0[OBJC_IVAR____TtC17proximitycontrold22HandoffFeedbackManager_actionStreamTask] = 0;
  if (IsAppleInternalBuild())
  {
    v19 = type metadata accessor for TaskPriority();
    v20 = v24;
    (*(*(v19 - 8) + 56))(v24, 1, 1, v19);
    v21 = swift_allocObject();
    v21[2] = 0;
    v21[3] = 0;
    v21[4] = v0;

    sub_100240220(0, 0, v20, &unk_1002830F0, v21);
  }

  else
  {

    return 0;
  }

  return v0;
}

uint64_t sub_10016FD04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  v6 = *(*(sub_100035D04(&qword_10033E800, &qword_100278E80) - 8) + 64) + 15;
  *(v4 + 24) = swift_task_alloc();

  return (_swift_task_switch)(sub_10016FDA4, a4, 0);
}

uint64_t sub_10016FDA4()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = type metadata accessor for TaskPriority();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = sub_1001782A0();
  v5 = swift_allocObject();
  v5[2] = v1;
  v5[3] = v4;
  v5[4] = v1;
  swift_retain_n();
  v6 = sub_100240220(0, 0, v2, &unk_100283100, v5);
  v7 = *(v1 + OBJC_IVAR____TtC17proximitycontrold22HandoffFeedbackManager_actionStreamTask);
  *(v1 + OBJC_IVAR____TtC17proximitycontrold22HandoffFeedbackManager_actionStreamTask) = v6;

  v8 = v0[1];

  return v8();
}

uint64_t sub_10016FEC4()
{
  v1 = OBJC_IVAR____TtC17proximitycontrold22HandoffFeedbackManager_actionStreamTask;
  if (*(v0 + OBJC_IVAR____TtC17proximitycontrold22HandoffFeedbackManager_actionStreamTask))
  {
    v2 = *(v0 + OBJC_IVAR____TtC17proximitycontrold22HandoffFeedbackManager_actionStreamTask);

    Task.cancel()();
  }

  v3 = *(v0 + 112);

  v4 = OBJC_IVAR____TtC17proximitycontrold22HandoffFeedbackManager_actionStream;
  v5 = sub_100035D04(&qword_100348C68, &qword_1002830D8);
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = OBJC_IVAR____TtC17proximitycontrold22HandoffFeedbackManager_actionContinuation;
  v7 = sub_100035D04(&qword_100348BE0, &unk_100283010);
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  v8 = *(v0 + v1);

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

void sub_10017001C()
{
  sub_100174558(319, &qword_1003488E0, &type metadata accessor for AsyncStream);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_100174558(319, &unk_1003488E8, &type metadata accessor for AsyncStream.Continuation);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_100170140(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[14] = a4;
  v6 = sub_100035D04(qword_100348C78, &qword_100283108);
  v4[15] = v6;
  v7 = *(v6 - 8);
  v4[16] = v7;
  v8 = *(v7 + 64) + 15;
  v4[17] = swift_task_alloc();

  return (_swift_task_switch)(sub_100170210, a4, 0);
}

uint64_t sub_100170210()
{
  v1 = v0[17];
  v2 = v0[14];
  sub_100035D04(&qword_100348C68, &qword_1002830D8);
  AsyncStream.makeAsyncIterator()();
  v3 = sub_1001782A0();
  v0[18] = v3;
  v4 = v0[14];
  v5 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v6 = swift_task_alloc();
  v0[19] = v6;
  *v6 = v0;
  v6[1] = sub_100170300;
  v7 = v0[17];
  v8 = v0[15];

  return AsyncStream.Iterator.next(isolation:)(v0 + 2, v4, v3, v8);
}

uint64_t sub_100170300()
{
  v1 = *(*v0 + 152);
  v2 = *(*v0 + 112);
  v4 = *v0;

  return (_swift_task_switch)(sub_100170410, v2, 0);
}

uint64_t sub_100170410()
{
  if (*(v0 + 56) == 255)
  {
    (*(*(v0 + 128) + 8))(*(v0 + 136), *(v0 + 120));

    v5 = *(v0 + 8);

    return v5();
  }

  else
  {
    v1 = *(v0 + 32);
    *(v0 + 64) = *(v0 + 16);
    *(v0 + 80) = v1;
    *(v0 + 89) = *(v0 + 41);
    v2 = swift_task_alloc();
    *(v0 + 160) = v2;
    *v2 = v0;
    v2[1] = sub_100170518;
    v3 = *(v0 + 112);

    return sub_100170FB0(v0 + 64);
  }
}

uint64_t sub_100170518()
{
  v1 = *(*v0 + 160);
  v2 = *(*v0 + 112);
  v4 = *v0;

  return (_swift_task_switch)(sub_100170628, v2, 0);
}

uint64_t sub_100170628()
{
  sub_100045F80((v0 + 8));
  v1 = v0[18];
  v2 = v0[14];
  v3 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v4 = swift_task_alloc();
  v0[19] = v4;
  *v4 = v0;
  v4[1] = sub_100170300;
  v5 = v0[17];
  v6 = v0[15];

  return AsyncStream.Iterator.next(isolation:)(v0 + 2, v2, v1, v6);
}

uint64_t sub_1001706E8(uint64_t a1)
{
  v2 = sub_100035D04(&qword_100348BB8, &qword_100282FF8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v23 - v5;
  if (qword_1003390E8 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_100003078(v7, qword_100348878);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v26 = v10;
    v27 = swift_slowAlloc();
    v28 = v27;
    *v10 = 136315138;
    v29 = 60;
    *&v30 = 0xE100000000000000;
    v25 = v9;
    UUID.uuidString.getter();
    sub_10000B584(8);
    v24 = v8;

    v11 = static String._fromSubstring(_:)();
    v13 = v12;

    v14._countAndFlagsBits = v11;
    v14._object = v13;
    String.append(_:)(v14);

    v15._countAndFlagsBits = 32;
    v15._object = 0xE100000000000000;
    String.append(_:)(v15);
    v16 = *(a1 + 24);
    v17._countAndFlagsBits = sub_1000092A0();
    String.append(_:)(v17);

    v18._countAndFlagsBits = 62;
    v18._object = 0xE100000000000000;
    String.append(_:)(v18);
    v19 = sub_100017494(v29, v30, &v28);

    v20 = v26;
    *(v26 + 1) = v19;
    v21 = v24;
    _os_log_impl(&_mh_execute_header, v24, v25, "Session started: %s", v20, 0xCu);
    sub_10000903C(v27);
  }

  else
  {
  }

  v29 = 5;
  v30 = 0u;
  v31 = 0u;
  v32 = 3;
  sub_100035D04(&qword_100348BE0, &unk_100283010);
  AsyncStream.Continuation.yield(_:)();
  return (*(v3 + 8))(v6, v2);
}

void sub_100170A30(uint64_t a1)
{
  v2 = sub_100035D04(&qword_100348BB8, &qword_100282FF8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v24 - v5;
  if (qword_1003390E8 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_100003078(v7, qword_100348878);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v27 = v10;
    v28 = swift_slowAlloc();
    v29 = v28;
    *v10 = 136315138;
    v30 = 60;
    v31 = 0xE100000000000000;
    v26 = v9;
    UUID.uuidString.getter();
    sub_10000B584(8);
    v25 = v8;

    v11 = static String._fromSubstring(_:)();
    v13 = v12;

    v14._countAndFlagsBits = v11;
    v14._object = v13;
    String.append(_:)(v14);

    v15._countAndFlagsBits = 32;
    v15._object = 0xE100000000000000;
    String.append(_:)(v15);
    v16 = *(a1 + 24);
    v17._countAndFlagsBits = sub_1000092A0();
    String.append(_:)(v17);

    v18._countAndFlagsBits = 62;
    v18._object = 0xE100000000000000;
    String.append(_:)(v18);
    v19 = sub_100017494(v30, v31, &v29);

    v20 = v27;
    *(v27 + 1) = v19;
    v21 = v25;
    _os_log_impl(&_mh_execute_header, v25, v26, "Session finished: %s", v20, 0xCu);
    sub_10000903C(v28);
  }

  else
  {
  }

  if (qword_100338F18 != -1)
  {
    swift_once();
  }

  v22 = *(qword_10038B0B8 + 248);
  v23 = sub_1000031CC();

  if ((v23 & 1) != 0 && ((*(a1 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession_didDwell) & 1) != 0 || *(a1 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession_didExpand) == 1))
  {
    v30 = a1;
    v32 = 0;

    sub_100035D04(&qword_100348BE0, &unk_100283010);
    AsyncStream.Continuation.yield(_:)();
    (*(v3 + 8))(v6, v2);
  }
}

uint64_t sub_100170DEC()
{
  v0 = sub_100035D04(&qword_100348BB8, &qword_100282FF8);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v10 - v3;
  if (qword_1003390E8 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100003078(v5, qword_100348878);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Presenting...", v8, 2u);
  }

  v10 = 0;
  v11 = 0;
  sub_100035D04(&qword_100348BE0, &unk_100283010);
  AsyncStream.Continuation.yield(_:)();
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_100170FB0(uint64_t a1)
{
  *(v2 + 344) = a1;
  *(v2 + 352) = v1;
  return (_swift_task_switch)(sub_100170FD0, v1, 0);
}

uint64_t sub_100170FD0()
{
  v51 = v0;
  if (qword_1003390E8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 344);
  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_100348878);
  sub_1001781EC(v1, v0 + 16);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v50 = v6;
    *v5 = 136315138;
    sub_1001781EC(v0 + 16, v0 + 256);
    v7 = String.init<A>(describing:)();
    v9 = v8;
    sub_100045F80(v0 + 16);
    v10 = sub_100017494(v7, v9, &v50);

    *(v5 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "Action: %s", v5, 0xCu);
    sub_10000903C(v6);
  }

  else
  {

    sub_100045F80(v0 + 16);
  }

  sub_1001781EC(*(v0 + 344), v0 + 64);
  v11 = *(v0 + 64);
  *(v0 + 360) = v11;
  if (*(v0 + 104) <= 1u)
  {
    if (*(v0 + 104))
    {
      sub_10000E754((v0 + 64), v0 + 304);
      v25 = *(v0 + 328);
      v24 = *(v0 + 336);
      v26 = sub_10000EBC0((v0 + 304), v25);
      v27 = swift_task_alloc();
      *(v0 + 408) = v27;
      *v27 = v0;
      v27[1] = sub_100171D44;
      v28 = *(v0 + 352);

      return sub_1001737F8(v26, v25, v24);
    }

    else
    {
      v12 = *(v0 + 352);
      v13 = type metadata accessor for HandoffFeedback.Report(0);
      v14 = *(v13 + 48);
      v15 = *(v13 + 52);
      v16 = swift_allocObject();

      sub_100176A48(v17);
      v18 = *(v12 + 112);
      *(v12 + 112) = v16;

      sub_10016F788();

      v19 = swift_task_alloc();
      *(v0 + 368) = v19;
      *v19 = v0;
      v19[1] = sub_100171768;
      v20 = *(v0 + 352);

      return sub_100172424();
    }
  }

  v22 = *(v0 + 72);
  if (*(v0 + 104) == 2)
  {
    if (*(v0 + 80))
    {
      sub_1000D6794(v11, v22, *(v0 + 80));
LABEL_14:
      v23 = *(v0 + 8);

      return v23();
    }

    v37 = *(v0 + 352);
    sub_1000D6794(v11, v22, 0);
    v38 = *(v37 + 112);
    *(v37 + 112) = 0;

    sub_10016F788();
    v39 = swift_task_alloc();
    *(v0 + 416) = v39;
    *v39 = v0;
    v40 = sub_100171EB4;
    goto LABEL_26;
  }

  v30 = *(v0 + 88);
  v29 = *(v0 + 96);
  v31 = *(v0 + 80);
  if (!(v22 | v11 | v29 | v30 | v31))
  {
    v39 = swift_task_alloc();
    *(v0 + 376) = v39;
    *v39 = v0;
    v40 = sub_1001718D8;
LABEL_26:
    v39[1] = v40;
    v41 = *(v0 + 352);

    return sub_1001733BC();
  }

  v32 = v29 | v22 | v30 | v31;
  if (v11 != 1 || v32)
  {
    if (v11 != 2 || v32)
    {
      if (v11 != 3 || v32)
      {
        if (v11 == 4 && !v32)
        {
          v47 = *(v0 + 352);
          sub_1001741D8();
          goto LABEL_14;
        }

        if (v11 != 5 || v32)
        {
          goto LABEL_14;
        }

        v48 = *(v0 + 352);
        v49 = *(v48 + 112);
        *(v48 + 112) = 0;

        sub_10016F788();
        v39 = swift_task_alloc();
        *(v0 + 424) = v39;
        *v39 = v0;
        v40 = sub_100171FC4;
        goto LABEL_26;
      }

      v44 = *(*(v0 + 352) + 112);
      if (v44)
      {
        *(v44 + OBJC_IVAR____TtCO17proximitycontrold15HandoffFeedback6Report_sentiment) = 0;
      }

      *(v0 + 136) = sub_100035D04(&qword_100348C08, &qword_100283050);
      *(v0 + 144) = sub_10000E244(&qword_100348C10, &qword_100348C08, &qword_100283050);
      v45 = swift_allocObject();
      *(v0 + 112) = v45;
      v34 = v0 + 112;
      sub_100172318(v45 + 16);
      *(v0 + 152) = 1;
      v35 = swift_task_alloc();
      *(v0 + 400) = v35;
      *v35 = v0;
      v36 = sub_100171C18;
    }

    else
    {
      v42 = *(*(v0 + 352) + 112);
      if (v42)
      {
        *(v42 + OBJC_IVAR____TtCO17proximitycontrold15HandoffFeedback6Report_sentiment) = 1;
      }

      *(v0 + 184) = sub_100035D04(&qword_100348BD0, &qword_100283008);
      *(v0 + 192) = sub_10000E244(&qword_100348BD8, &qword_100348BD0, &qword_100283008);
      v43 = swift_allocObject();
      *(v0 + 160) = v43;
      v34 = v0 + 160;
      sub_1001721F4(v43 + 16);
      *(v0 + 200) = 1;
      v35 = swift_task_alloc();
      *(v0 + 392) = v35;
      *v35 = v0;
      v36 = sub_100171B00;
    }
  }

  else
  {
    *(v0 + 232) = sub_100035D04(&qword_100348C18, &qword_100283058);
    *(v0 + 240) = sub_10000E244(&qword_100348C20, &qword_100348C18, &qword_100283058);
    v33 = swift_allocObject();
    *(v0 + 208) = v33;
    v34 = v0 + 208;
    sub_1001720D4(v33 + 16);
    *(v0 + 248) = 1;
    v35 = swift_task_alloc();
    *(v0 + 384) = v35;
    *v35 = v0;
    v36 = sub_1001719E8;
  }

  v35[1] = v36;
  v46 = *(v0 + 352);

  return sub_100170FB0(v34);
}

uint64_t sub_100171768()
{
  v1 = *(*v0 + 368);
  v2 = *(*v0 + 352);
  v4 = *v0;

  return (_swift_task_switch)(sub_100171878, v2, 0);
}

uint64_t sub_100171878()
{
  v1 = *(v0 + 360);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1001718D8()
{
  v1 = *(*v0 + 376);
  v2 = *(*v0 + 352);
  v4 = *v0;

  return (_swift_task_switch)(sub_100178788, v2, 0);
}

uint64_t sub_1001719E8()
{
  v1 = *v0;
  v2 = *(*v0 + 384);
  v3 = *(*v0 + 352);
  v5 = *v0;

  sub_100045F80(v1 + 208);

  return (_swift_task_switch)(sub_100178788, v3, 0);
}

uint64_t sub_100171B00()
{
  v1 = *v0;
  v2 = *(*v0 + 392);
  v3 = *(*v0 + 352);
  v5 = *v0;

  sub_100045F80(v1 + 160);

  return (_swift_task_switch)(sub_100178788, v3, 0);
}

uint64_t sub_100171C18()
{
  v1 = *v0;
  v2 = *(*v0 + 400);
  v3 = *(*v0 + 352);
  v5 = *v0;

  sub_100045F80(v1 + 112);

  return (_swift_task_switch)(sub_100171D30, v3, 0);
}

uint64_t sub_100171D44()
{
  v1 = *(*v0 + 408);
  v2 = *(*v0 + 352);
  v4 = *v0;

  return (_swift_task_switch)(sub_100171E54, v2, 0);
}

uint64_t sub_100171E54()
{
  sub_10000903C((v0 + 304));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100171EB4()
{
  v1 = *(*v0 + 416);
  v2 = *(*v0 + 352);
  v4 = *v0;

  return (_swift_task_switch)(sub_100178788, v2, 0);
}

uint64_t sub_100171FC4()
{
  v1 = *(*v0 + 424);
  v2 = *(*v0 + 352);
  v4 = *v0;

  return (_swift_task_switch)(sub_100178788, v2, 0);
}

double sub_1001720D4@<D0>(uint64_t a1@<X8>)
{
  v6[88] = 1;
  *&v7 = 0xD000000000000010;
  *(&v7 + 1) = 0x80000001002984F0;
  *&v8 = 0xD000000000000017;
  *(&v8 + 1) = 0x80000001002A2C30;
  *&v10 = 0;
  v9 = 0uLL;
  WORD4(v10) = 257;
  *&v11 = &off_1003017C8;
  *(&v11 + 1) = sub_100177F68;
  v12 = 0;
  v13[0] = 0xD000000000000010;
  v13[1] = 0x80000001002984F0;
  v13[2] = 0xD000000000000017;
  v13[3] = 0x80000001002A2C30;
  memset(&v13[4], 0, 24);
  v14 = 257;
  v15 = &off_1003017C8;
  v16 = sub_100177F68;
  v17 = 0;
  sub_100009848(&v7, v6, &qword_100348C28, &qword_1002830A8);
  sub_1000097E8(v13, &qword_100348C28, &qword_1002830A8);
  v2 = v10;
  *(a1 + 32) = v9;
  *(a1 + 48) = v2;
  *(a1 + 64) = v11;
  v3 = v12;
  result = *&v7;
  v5 = v8;
  *a1 = v7;
  *(a1 + 16) = v5;
  *(a1 + 80) = v3;
  *(a1 + 88) = sub_1001754F0;
  *(a1 + 96) = 0;
  return result;
}

double sub_1001721F4@<D0>(uint64_t a1@<X8>)
{
  v6[88] = 1;
  *&v7 = 0xD000000000000012;
  *(&v7 + 1) = 0x80000001002A2E70;
  *&v8 = 0xD000000000000012;
  *(&v8 + 1) = 0x80000001002A2E90;
  v9 = xmmword_100278910;
  *&v10 = 0;
  WORD4(v10) = 257;
  *&v11 = &off_1003017F0;
  *(&v11 + 1) = sub_10016F694;
  v12 = 0;
  v13[0] = 0xD000000000000012;
  v13[1] = 0x80000001002A2E70;
  v13[2] = 0xD000000000000012;
  v13[3] = 0x80000001002A2E90;
  v14 = xmmword_100278910;
  v15 = 0;
  v16 = 257;
  v17 = &off_1003017F0;
  v18 = sub_10016F694;
  v19 = 0;
  sub_100009848(&v7, v6, &qword_100348BF8, &unk_100283030);
  sub_1000097E8(v13, &qword_100348BF8, &unk_100283030);
  v2 = v10;
  *(a1 + 32) = v9;
  *(a1 + 48) = v2;
  *(a1 + 64) = v11;
  v3 = v12;
  result = *&v7;
  v5 = v8;
  *a1 = v7;
  *(a1 + 16) = v5;
  *(a1 + 80) = v3;
  *(a1 + 88) = sub_100178784;
  *(a1 + 96) = 0;
  return result;
}

double sub_100172318@<D0>(uint64_t a1@<X8>)
{
  v6[88] = 1;
  *&v7 = 0xD000000000000010;
  *(&v7 + 1) = 0x80000001002A2EB0;
  v8 = 0u;
  v9 = 0u;
  *&v10 = 0;
  WORD4(v10) = 257;
  *&v11 = &off_100301820;
  *(&v11 + 1) = sub_100177FB4;
  v12 = 0;
  v13[0] = 0xD000000000000010;
  v13[1] = 0x80000001002A2EB0;
  v14 = 0u;
  v15 = 0u;
  v16 = 0;
  v17 = 257;
  v18 = &off_100301820;
  v19 = sub_100177FB4;
  v20 = 0;
  sub_100009848(&v7, v6, &qword_100348C30, &qword_1002830B0);
  sub_1000097E8(v13, &qword_100348C30, &qword_1002830B0);
  v2 = v10;
  *(a1 + 32) = v9;
  *(a1 + 48) = v2;
  *(a1 + 64) = v11;
  v3 = v12;
  result = *&v7;
  v5 = v8;
  *a1 = v7;
  *(a1 + 16) = v5;
  *(a1 + 80) = v3;
  *(a1 + 88) = sub_1001758EC;
  *(a1 + 96) = 0;
  return result;
}

uint64_t sub_100172424()
{
  v1[3] = v0;
  v2 = *(*(sub_100035D04(&qword_10033E800, &qword_100278E80) - 8) + 64) + 15;
  v1[4] = swift_task_alloc();
  v3 = sub_100035D04(&qword_100348BE0, &unk_100283010);
  v1[5] = v3;
  v4 = *(v3 - 8);
  v1[6] = v4;
  v1[7] = *(v4 + 64);
  v1[8] = swift_task_alloc();
  v5 = swift_task_alloc();
  v1[9] = v5;
  *v5 = v1;
  v5[1] = sub_10017255C;

  return sub_1001733BC();
}

uint64_t sub_10017255C()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 24);
  v4 = *v0;

  return (_swift_task_switch)(sub_10017266C, v2, 0);
}

uint64_t sub_10017266C()
{
  if (qword_1003390E8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[10] = sub_100003078(v1, qword_100348878);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Presenting banner...", v4, 2u);
  }

  v5 = v0[3];

  v9 = *(v5 + 128);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    v13 = v0[7];
    v12 = v0[8];
    v14 = v0[5];
    v15 = v0[6];
    v16 = v0[3];
    *(v5 + 128) = v11;
    v0[2] = v11;
    v0[11] = dispatch thunk of CustomStringConvertible.description.getter();
    v0[12] = v17;
    (*(v15 + 16))(v12, v16 + OBJC_IVAR____TtC17proximitycontrold22HandoffFeedbackManager_actionContinuation, v14);
    v18 = (*(v15 + 80) + 16) & ~*(v15 + 80);
    v19 = swift_allocObject();
    v0[13] = v19;
    (*(v15 + 32))(v19 + v18, v12, v14);
    v0[14] = type metadata accessor for MainActor();
    v0[15] = static MainActor.shared.getter();
    v20 = dispatch thunk of Actor.unownedExecutor.getter();
    v22 = v21;
    v6 = sub_100172880;
    v7 = v20;
    v8 = v22;
  }

  return (_swift_task_switch)(v6, v7, v8);
}

uint64_t sub_100172880()
{
  v1 = v0[15];
  v2 = v0[12];
  v3 = v0[13];
  v4 = v0[11];
  v5 = v0[3];

  v6 = objc_allocWithZone(type metadata accessor for HandoffFeedbackBannerPresenter());
  sub_100044714(v4, v2, sub_100178224, v3);
  v0[16] = v7;

  return (_swift_task_switch)(sub_100172938, v5, 0);
}

uint64_t sub_100172938()
{
  v1 = *(v0 + 112);
  *(v0 + 136) = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return (_swift_task_switch)(sub_1001729C4, v3, v2);
}

uint64_t sub_1001729C4()
{
  v2 = v0[16];
  v1 = v0[17];

  sub_100044E70();
  v0[18] = 0;
  v3 = v0[3];

  return (_swift_task_switch)(sub_100172A54, v3, 0);
}

uint64_t sub_100172A54()
{
  v1 = v0[16];
  v3 = v0[3];
  v2 = v0[4];
  v4 = *(v3 + 120);
  *(v3 + 120) = v1;
  v5 = v1;

  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v2, 1, 1, v6);
  v7 = *(v3 + 128);
  v8 = sub_1001782A0();
  v9 = swift_allocObject();
  v9[2] = v3;
  v9[3] = v8;
  v9[4] = v7;
  v9[5] = v3;
  v9[6] = v5;
  swift_retain_n();
  v10 = v5;
  sub_1000DBA98(0, 0, v2, &unk_100283048, v9);

  v11 = v0[8];
  v12 = v0[4];

  v13 = v0[1];

  return v13();
}

uint64_t sub_100172BA0()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 80);

  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 144);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "### Failed to present banner: %@", v7, 0xCu);
    sub_1000097E8(v8, &qword_100339940, &unk_100272C50);
  }

  else
  {
  }

  v10 = *(v0 + 64);
  v11 = *(v0 + 32);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_100172D1C(uint64_t a1)
{
  v2 = sub_100035D04(&qword_100348BB8, &qword_100282FF8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v8[-v5];
  sub_1001781EC(a1, v8);
  sub_100035D04(&qword_100348BE0, &unk_100283010);
  AsyncStream.Continuation.yield(_:)();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_100172E20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v8 = type metadata accessor for ContinuousClock();
  v6[5] = v8;
  v9 = *(v8 - 8);
  v6[6] = v9;
  v10 = *(v9 + 64) + 15;
  v6[7] = swift_task_alloc();

  return (_swift_task_switch)(sub_100172EE8, a5, 0);
}

uint64_t sub_100172EE8()
{
  if (qword_100338F18 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 56);
  v2 = *(qword_10038B0B8 + 240);
  sub_10005F4E4();

  v3 = static Duration.seconds(_:)();
  v5 = v4;
  static Clock<>.continuous.getter();
  v6 = swift_task_alloc();
  *(v0 + 64) = v6;
  *v6 = v0;
  v6[1] = sub_100173018;
  v7 = *(v0 + 56);

  return (sub_1001FD6AC)(v3, v5, 0, 0, 1);
}

uint64_t sub_100173018()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 56);
  v5 = *(*v1 + 48);
  v6 = *(*v1 + 40);
  v7 = *v1;
  *(*v1 + 72) = v0;

  (*(v5 + 8))(v4, v6);
  v8 = *(v2 + 24);
  if (v0)
  {
    v9 = sub_1001732D0;
  }

  else
  {
    v9 = sub_1001731A0;
  }

  return (_swift_task_switch)(v9, v8, 0);
}

uint64_t sub_1001731A0()
{
  v1 = v0[3];
  if (*(v1 + 128) != v0[2])
  {
    goto LABEL_7;
  }

  v2 = *(v1 + 120);
  if (!v2 || (v3 = v0[4], type metadata accessor for HandoffFeedbackBannerPresenter(), v4 = v3, v5 = v2, v6 = static NSObject.== infix(_:_:)(), v4, v5, (v6 & 1) == 0))
  {
LABEL_7:
    v9 = v0[7];

    v10 = v0[1];

    __asm { BRAA            X1, X16 }
  }

  type metadata accessor for MainActor();
  v0[10] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return (_swift_task_switch)(sub_100173334, v8, v7);
}

uint64_t sub_1001732D0()
{
  v1 = v0[9];
  v2 = v0[7];

  v3 = v0[1];

  return v3();
}

uint64_t sub_100173334()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[4];

  sub_100045048();
  v4 = v0[7];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1001733DC()
{
  v1 = *(v0[2] + 120);
  v0[3] = v1;
  if (!v1)
  {
    v10 = v0[1];

    __asm { BRAA            X1, X16 }
  }

  v2 = qword_1003390E8;
  v3 = v1;
  if (v2 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  v0[4] = sub_100003078(v4, qword_100348878);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Dismissing banner...", v7, 2u);
  }

  type metadata accessor for MainActor();
  v0[5] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();

  return (_swift_task_switch)(sub_100173578, v9, v8);
}

uint64_t sub_100173578()
{
  v1 = v0[5];
  v2 = v0[3];

  sub_100045048();
  v0[6] = 0;
  v3 = v0[2];

  return (_swift_task_switch)(sub_10017360C, v3, 0);
}

uint64_t sub_10017360C()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 120);
  *(v1 + 120) = 0;

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10017367C()
{
  v1 = v0[6];
  v2 = v0[4];
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[6];
  v7 = v0[3];
  if (v5)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "### Failed to dismiss banner: %@", v8, 0xCu);
    sub_1000097E8(v9, &qword_100339940, &unk_100272C50);
  }

  else
  {
  }

  v11 = v0[2];
  v12 = *(v11 + 120);
  *(v11 + 120) = 0;

  v13 = v0[1];

  return v13();
}

uint64_t sub_1001737F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[27] = a3;
  v4[28] = v3;
  v4[25] = a1;
  v4[26] = a2;
  v5 = sub_100035D04(&qword_100348BB8, &qword_100282FF8);
  v4[29] = v5;
  v6 = *(v5 - 8);
  v4[30] = v6;
  v7 = *(v6 + 64) + 15;
  v4[31] = swift_task_alloc();
  v4[32] = swift_getAssociatedTypeWitness();
  v8 = type metadata accessor for PCUserAlertResult();
  v4[33] = v8;
  v9 = *(v8 - 8);
  v4[34] = v9;
  v10 = *(v9 + 64) + 15;
  v4[35] = swift_task_alloc();
  v11 = swift_task_alloc();
  v4[36] = v11;
  *v11 = v4;
  v11[1] = sub_100173988;

  return sub_1001733BC();
}

uint64_t sub_100173988()
{
  v1 = *(*v0 + 288);
  v2 = *(*v0 + 224);
  v4 = *v0;

  return (_swift_task_switch)(sub_100173A98, v2, 0);
}

uint64_t sub_100173A98()
{
  v1 = v0[32];
  v3 = v0[26];
  v2 = v0[27];
  v4 = v0[25];
  type metadata accessor for PCUserAlert();
  (*(v2 + 16))(v3, v2);
  v0[37] = PCUserAlert.__allocating_init(definition:)((v0 + 2));
  v5 = swift_task_alloc();
  v0[38] = v5;
  *v5 = v0;
  v5[1] = sub_100173B84;
  v6 = v0[35];

  return PCUserAlert.run()(v6);
}

uint64_t sub_100173B84()
{
  v2 = *v1;
  v3 = *(*v1 + 304);
  v4 = *v1;
  *(*v1 + 312) = v0;

  v5 = *(v2 + 224);
  if (v0)
  {
    v6 = sub_10017401C;
  }

  else
  {
    v6 = sub_100173CB0;
  }

  return (_swift_task_switch)(v6, v5, 0);
}

uint64_t sub_100173CB0()
{
  v1 = *(v0[28] + 112);
  if (v1)
  {
    v2 = v0[35];
    v27 = v0[34];
    v28 = v0[33];
    v3 = v0[30];
    v24 = v0[31];
    v25 = v0[37];
    v26 = v0[29];
    v5 = v0[26];
    v4 = v0[27];
    v6 = v0[25];
    v7 = *(v4 + 24);

    v8 = v7(v5, v4);
    v8(v1, v2);

    sub_1001781EC((v0 + 13), (v0 + 19));
    sub_100035D04(&qword_100348BE0, &unk_100283010);
    AsyncStream.Continuation.yield(_:)();

    (*(v3 + 8))(v24, v26);
    sub_100045F80((v0 + 13));
    (*(v27 + 8))(v2, v28);
  }

  else
  {
    v9 = v0[37];
    v11 = v0[34];
    v10 = v0[35];
    v12 = v0[33];
    sub_100035D04(&qword_100348BC0, &qword_100283000);
    sub_10000E244(&qword_100348BC8, &qword_100348BC0, &qword_100283000);
    swift_allocError();
    *v13 = xmmword_1002828F0;
    swift_willThrow();

    (*(v11 + 8))(v10, v12);
    if (qword_1003390E8 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_100003078(v14, qword_100348878);
    swift_errorRetain();
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138412290;
      swift_errorRetain();
      v19 = _swift_stdlib_bridgeErrorToNSError();
      *(v17 + 4) = v19;
      *v18 = v19;
      _os_log_impl(&_mh_execute_header, v15, v16, "### Alert failed: %@", v17, 0xCu);
      sub_1000097E8(v18, &qword_100339940, &unk_100272C50);
    }

    else
    {
    }
  }

  v20 = v0[35];
  v21 = v0[31];

  v22 = v0[1];

  return v22();
}

uint64_t sub_10017401C()
{
  v1 = v0[37];

  v2 = v0[39];
  if (qword_1003390E8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100003078(v3, qword_100348878);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v4, v5, "### Alert failed: %@", v6, 0xCu);
    sub_1000097E8(v7, &qword_100339940, &unk_100272C50);
  }

  else
  {
  }

  v9 = v0[35];
  v10 = v0[31];

  v11 = v0[1];

  return v11();
}

uint64_t sub_1001741D8()
{
  v1 = sub_100035D04(&qword_100348BB8, &qword_100282FF8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v15 - v4;
  if (*(v0 + 112))
  {
    v6 = *(v0 + 112);

    sub_1001745AC(v20);
    sub_1000E8064(0, 0);
    sub_1000E8EF8(v20);
  }

  else
  {
    sub_100035D04(&qword_100348BC0, &qword_100283000);
    sub_10000E244(&qword_100348BC8, &qword_100348BC0, &qword_100283000);
    swift_allocError();
    *v7 = xmmword_1002828F0;
    swift_willThrow();
    if (qword_1003390E8 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_100003078(v8, qword_100348878);
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
      _os_log_impl(&_mh_execute_header, v9, v10, "### Failed to file radar: %@", v11, 0xCu);
      sub_1000097E8(v12, &qword_100339940, &unk_100272C50);
    }

    v17 = sub_100035D04(&qword_100348BD0, &qword_100283008);
    v18 = sub_10000E244(&qword_100348BD8, &qword_100348BD0, &qword_100283008);
    v16 = swift_allocObject();
    sub_1001753DC(v16 + 16);
    v19 = 1;
    sub_100035D04(&qword_100348BE0, &unk_100283010);
    AsyncStream.Continuation.yield(_:)();

    return (*(v2 + 8))(v5, v1);
  }
}

void sub_100174558(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, ValueMetadata *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for HandoffFeedback.Action);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

double sub_1001745AC@<D0>(uint64_t *a1@<X8>)
{
  v123 = a1;
  v126 = type metadata accessor for UUID();
  v3 = *(v126 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v126);
  v118 = v114 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100035D04(&unk_100348F30, &unk_100272540);
  v120 = *(v6 - 8);
  v7 = *(v120 + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v122 = v114 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v121 = v114 - v10;
  v11 = v173;
  v174 = 0xD000000000000010;
  v175 = 0x80000001002984F0;
  if (*(v1 + OBJC_IVAR____TtCO17proximitycontrold15HandoffFeedback6Report_sentiment) <= 1u)
  {
    if (*(v1 + OBJC_IVAR____TtCO17proximitycontrold15HandoffFeedback6Report_sentiment))
    {
      v12 = xmmword_100282920;
    }

    else
    {
      v12 = xmmword_100282900;
    }

    goto LABEL_7;
  }

  if (*(v1 + OBJC_IVAR____TtCO17proximitycontrold15HandoffFeedback6Report_sentiment) == 2)
  {
    v12 = xmmword_100282910;
LABEL_7:
    v176 = v12;
    goto LABEL_9;
  }

  v176 = 0uLL;
LABEL_9:
  v13 = 0x2E2E2E726568744FLL;
  v119 = OBJC_IVAR____TtCO17proximitycontrold15HandoffFeedback6Report_problem;
  v14 = *(v1 + OBJC_IVAR____TtCO17proximitycontrold15HandoffFeedback6Report_problem);
  if (v14 <= 2)
  {
    if (*(v1 + OBJC_IVAR____TtCO17proximitycontrold15HandoffFeedback6Report_problem))
    {
      if (v14 == 1)
      {
        v15 = "Handoff didn't work";
      }

      else
      {
        v15 = "Unexpected behavior";
      }

      v16 = (v15 - 32) | 0x8000000000000000;
      v13 = 0xD000000000000013;
    }

    else
    {
      v16 = 0x8000000100297510;
      v13 = 0xD000000000000015;
    }

    goto LABEL_20;
  }

  if (v14 == 3)
  {
    v16 = 0x8000000100297570;
    v13 = 0xD000000000000011;
    goto LABEL_20;
  }

  if (v14 == 4)
  {
    v16 = 0xE800000000000000;
LABEL_20:
    v177 = v13;
    v178 = v16;
    goto LABEL_21;
  }

  v177 = 0;
  v178 = 0;
LABEL_21:
  v124 = OBJC_IVAR____TtCO17proximitycontrold15HandoffFeedback6Report_proximity;
  v125 = v3;
  v17 = *(v1 + OBJC_IVAR____TtCO17proximitycontrold15HandoffFeedback6Report_proximity);
  v127 = v1;
  if (v17 > 1)
  {
    if (v17 != 2)
    {
      v179 = 0uLL;
      goto LABEL_29;
    }

    v18 = xmmword_100282940;
  }

  else if (v17)
  {
    v18 = xmmword_100282950;
  }

  else
  {
    v18 = xmmword_100282930;
  }

  v179 = v18;
LABEL_29:
  v19 = 0;
  LODWORD(v20) = 4;
  v21 = v173;
  v22 = _swiftEmptyArrayStorage;
LABEL_30:
  if (v19 <= 4)
  {
    v23 = 4;
  }

  else
  {
    v23 = v19;
  }

  v24 = v23 + 1;
  v25 = 16 * v19 + 40;
  while (v19 != 4)
  {
    if (v24 == ++v19)
    {
      __break(1u);
LABEL_135:
      __break(1u);
LABEL_136:
      v11 = sub_1000B0230(0, *(v11 + 2) + 1, 1, v11);
      goto LABEL_117;
    }

    v26 = v25 + 16;
    v1 = *&v173[v25];
    v25 += 16;
    if (v1)
    {
      v2 = *(v171 + v26);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v22 = sub_100009088(0, *(v22 + 2) + 1, 1, v22);
      }

      v28 = *(v22 + 2);
      v27 = *(v22 + 3);
      v29 = v22;
      if (v28 >= v27 >> 1)
      {
        v29 = sub_100009088((v27 > 1), v28 + 1, 1, v22);
      }

      *(v29 + 2) = v28 + 1;
      v22 = v29;
      v30 = &v29[16 * v28];
      *(v30 + 4) = v2;
      *(v30 + 5) = v1;
      goto LABEL_30;
    }
  }

  sub_100035D04(&qword_10033A238, &qword_10027D3E0);
  swift_arrayDestroy();
  v31 = *(v22 + 2);
  if (v31)
  {
    v172 = _swiftEmptyArrayStorage;
    sub_1000CDF40(0, v31, 0);
    v32 = v172;
    v117 = v22;
    v33 = (v22 + 40);
    do
    {
      v34 = *(v33 - 1);
      v35 = *v33;
      v128 = 91;
      v129 = 0xE100000000000000;

      v36._countAndFlagsBits = v34;
      v36._object = v35;
      String.append(_:)(v36);
      v37._countAndFlagsBits = 93;
      v37._object = 0xE100000000000000;
      String.append(_:)(v37);

      v39 = v128;
      v38 = v129;
      v172 = v32;
      v41 = v32[2];
      v40 = v32[3];
      if (v41 >= v40 >> 1)
      {
        sub_1000CDF40((v40 > 1), v41 + 1, 1);
        v32 = v172;
      }

      v32[2] = v41 + 1;
      v42 = &v32[2 * v41];
      v42[4] = v39;
      v42[5] = v38;
      v33 += 2;
      --v31;
    }

    while (v31);
  }

  else
  {

    v32 = _swiftEmptyArrayStorage;
  }

  v128 = v32;
  v43 = sub_100035D04(&qword_1003397D0, &qword_1002729A0);
  v114[1] = sub_10000E244(&qword_10033D8A0, &qword_1003397D0, &qword_1002729A0);
  v44 = BidirectionalCollection<>.joined(separator:)();
  v46 = v45;

  v128 = v44;
  v129 = v46;

  v47._countAndFlagsBits = 32;
  v47._object = 0xE100000000000000;
  String.append(_:)(v47);

  v48 = v128;
  v49 = v129;
  v50 = v127;
  v19 = v127 + OBJC_IVAR____TtCO17proximitycontrold15HandoffFeedback6Report_problemExplanation;
  v51 = *(v127 + OBJC_IVAR____TtCO17proximitycontrold15HandoffFeedback6Report_problemExplanation + 8);
  v2 = 0xD000000000000011;
  v115 = v43;
  if (v51)
  {
    v52 = *v19;
    v53 = v51;
  }

  else
  {
    v54 = (v127 + OBJC_IVAR____TtCO17proximitycontrold15HandoffFeedback6Report_comments);
    v55 = *(v127 + OBJC_IVAR____TtCO17proximitycontrold15HandoffFeedback6Report_comments + 8);
    if (v55)
    {
      v52 = *v54;
    }

    else
    {
      v52 = 0;
    }

    if (v55)
    {
      v53 = v54[1];
    }

    else
    {
      v53 = 0xE000000000000000;
    }
  }

  v128 = v48;
  v129 = v49;

  v56._countAndFlagsBits = v52;
  v56._object = v53;
  String.append(_:)(v56);

  v116 = v129;
  v117 = v128;
  v131 = 0x6154207370657453;
  v132 = 0xEB000000006E656BLL;
  v57 = 0xE000000000000000;
  if (!*(v50 + OBJC_IVAR____TtCO17proximitycontrold15HandoffFeedback6Report_includeDetailsTemplate))
  {
    v57 = 0;
  }

  v133 = 0;
  v134 = v57;
  v135 = 0xD000000000000011;
  v136 = 0x80000001002A2B50;
  v137 = 0;
  v138 = v57;
  v139 = 0x42206C6175746341;
  v140 = 0xEF726F6976616865;
  v141 = 0;
  v142 = v57;
  v143 = 0x6D617473656D6954;
  v144 = 0xE900000000000070;
  v58 = [objc_allocWithZone(NSDateFormatter) init];
  v59 = String._bridgeToObjectiveC()();
  [v58 setDateFormat:v59];

  isa = Date._bridgeToObjectiveC()().super.isa;
  v61 = [v58 stringFromDate:isa];

  v62 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v64 = v63;

  v145 = v62;
  v146 = v64;
  strcpy(v147, "Device Model");
  HIBYTE(v147[6]) = 0;
  v147[7] = -5120;
  v114[0] = OBJC_IVAR____TtCO17proximitycontrold15HandoffFeedback6Report_appleDevice;
  v65 = *(v50 + OBJC_IVAR____TtCO17proximitycontrold15HandoffFeedback6Report_appleDevice);
  if (v65 > 3)
  {
    v66 = 0x2E2E2E726568744FLL;
    if (*(v50 + OBJC_IVAR____TtCO17proximitycontrold15HandoffFeedback6Report_appleDevice) > 5u)
    {
      if (v65 == 6)
      {
        v69 = 0xEA0000000000332CLL;
        v68 = 0x3531656E6F685069;
      }

      else
      {
        v69 = 0xE100000000000000;
        v68 = 63;
      }
    }

    else if (v65 == 4)
    {
      v68 = 0x3231656E6F685069;
      v69 = 0xEA0000000000352CLL;
    }

    else
    {
      v68 = 0x3531656E6F685069;
      v69 = 0xEA0000000000322CLL;
    }
  }

  else
  {
    v66 = 0x2E2E2E726568744FLL;
    if (*(v50 + OBJC_IVAR____TtCO17proximitycontrold15HandoffFeedback6Report_appleDevice) <= 1u)
    {
      if (*(v50 + OBJC_IVAR____TtCO17proximitycontrold15HandoffFeedback6Report_appleDevice))
      {
        v67 = "AudioAccessory5,1";
      }

      else
      {
        v67 = "AudioAccessory1,1";
      }

      goto LABEL_73;
    }

    if (v65 == 2)
    {
      v67 = "AudioAccessory6,1";
LABEL_73:
      v69 = (v67 - 32) | 0x8000000000000000;
      v68 = 0xD000000000000011;
      goto LABEL_77;
    }

    v69 = 0xEA0000000000332CLL;
    v68 = 0x3231656E6F685069;
  }

LABEL_77:
  v148 = v68;
  v149 = v69;
  v150 = 0x746E65746E49;
  v151 = 0xE600000000000000;
  v70 = *(v50 + OBJC_IVAR____TtCO17proximitycontrold15HandoffFeedback6Report_intent);
  if (v70 > 2)
  {
    if (v70 == 3)
    {
      v71 = 0x80000001002975F0;
      v66 = 0xD00000000000001CLL;
    }

    else
    {
      if (v70 != 4)
      {
        v152 = 0;
        v153 = 0;
        goto LABEL_88;
      }

      v71 = 0xE800000000000000;
    }
  }

  else if (*(v50 + OBJC_IVAR____TtCO17proximitycontrold15HandoffFeedback6Report_intent))
  {
    if (v70 == 1)
    {
      v71 = 0x80000001002975B0;
      v66 = 0xD000000000000014;
    }

    else
    {
      v71 = 0x80000001002975D0;
      v66 = 0xD00000000000001ALL;
    }
  }

  else
  {
    v71 = 0x8000000100297590;
    v66 = 0xD000000000000012;
  }

  v152 = v66;
  v153 = v71;
LABEL_88:
  v154 = 0x74696D69786F7250;
  v155 = 0xE900000000000079;
  v72 = *(v50 + v124);
  if (v72 == 3)
  {
    v73 = 0;
    v74 = 0;
  }

  else
  {
    v73 = sub_100176DA4(v72);
  }

  v20 = v130;
  v156 = v73;
  v157 = v74;
  v158 = 0x7470697263736544;
  v159 = 0xEB000000006E6F69;
  v75 = *(v19 + 8);
  v160 = *v19;
  v161 = v75;
  v162 = 0x73746E656D6D6F43;
  v163 = 0xE800000000000000;
  v1 = *(v50 + OBJC_IVAR____TtCO17proximitycontrold15HandoffFeedback6Report_comments + 8);
  v164 = *(v50 + OBJC_IVAR____TtCO17proximitycontrold15HandoffFeedback6Report_comments);
  v165 = v1;
  strcpy(v166, "Session Report");
  v166[15] = -18;
  v76 = *(v50 + OBJC_IVAR____TtCO17proximitycontrold15HandoffFeedback6Report_sessionReport + 8);
  v167 = *(v50 + OBJC_IVAR____TtCO17proximitycontrold15HandoffFeedback6Report_sessionReport);
  v168 = v76;
  v169 = 0xD000000000000019;
  v170 = 0x80000001002A2B90;
  v77 = *(v50 + OBJC_IVAR____TtCO17proximitycontrold15HandoffFeedback6Report_photoExpected);
  v78 = 20302;
  if (v77)
  {
    v78 = 5457241;
  }

  v79 = 0xE200000000000000;
  if (v77)
  {
    v79 = 0xE300000000000000;
  }

  v80 = v77 == 2;
  if (v77 == 2)
  {
    v81 = 0;
  }

  else
  {
    v81 = v78;
  }

  if (v80)
  {
    v82 = 0;
  }

  else
  {
    v82 = v79;
  }

  v171[0] = v81;
  v171[1] = v82;

  v83 = 0;
  v11 = _swiftEmptyArrayStorage;
  v21 = 11;
LABEL_102:
  if (v83 <= 0xB)
  {
    v84 = 11;
  }

  else
  {
    v84 = v83;
  }

  v85 = v84 + 1;
  v86 = &v130[2 * v83];
  while (v83 != 11)
  {
    if (v85 == ++v83)
    {
      goto LABEL_135;
    }

    v87 = (v86 + 2);
    v88 = *(v86 + 7);
    v86 += 2;
    if (v88)
    {
      v89 = v87[1];
      v90 = v87[2];
      v128 = *v87;
      v129 = v89;
      swift_bridgeObjectRetain_n();

      v91._countAndFlagsBits = 538970682;
      v91._object = 0xE400000000000000;
      String.append(_:)(v91);
      v92._countAndFlagsBits = v90;
      v92._object = v88;
      String.append(_:)(v92);

      v93 = v128;
      v2 = v129;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_100009088(0, *(v11 + 2) + 1, 1, v11);
      }

      v19 = *(v11 + 2);
      v94 = *(v11 + 3);
      v1 = v19 + 1;
      v20 = v130;
      if (v19 >= v94 >> 1)
      {
        v11 = sub_100009088((v94 > 1), v19 + 1, 1, v11);
      }

      *(v11 + 2) = v1;
      v95 = &v11[16 * v19];
      *(v95 + 4) = v93;
      *(v95 + 5) = v2;
      goto LABEL_102;
    }
  }

  sub_100035D04(&qword_100348BE8, &qword_100283020);
  swift_arrayDestroy();
  v128 = v11;
  v124 = BidirectionalCollection<>.joined(separator:)();
  v115 = v96;

  v97 = v127;
  LODWORD(v20) = *(v127 + v119);
  LODWORD(v1) = *(v127 + v114[0]);
  sub_100035D04(&qword_100348BF0, &qword_100283028);
  v98 = *(v120 + 72);
  v19 = (*(v120 + 80) + 32) & ~*(v120 + 80);
  v21 = swift_allocObject();
  v99 = OBJC_IVAR____TtCO17proximitycontrold15HandoffFeedback6Report_deviceID;
  swift_beginAccess();
  sub_100009848(v97 + v99, v21 + v19, &unk_100348F30, &unk_100272540);
  v100 = v121;
  sub_100009848(v21 + v19, v121, &unk_100348F30, &unk_100272540);
  v101 = v122;
  sub_100008FCC(v100, v122);
  v102 = v125;
  v103 = v126;
  if ((*(v125 + 48))(v101, 1, v126) == 1)
  {
    sub_1000097E8(v101, &unk_100348F30, &unk_100272540);
    v11 = _swiftEmptyArrayStorage;
    goto LABEL_120;
  }

  v2 = *(v102 + 32);
  v2(v118, v101, v103);
  v11 = _swiftEmptyArrayStorage;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_136;
  }

LABEL_117:
  v105 = *(v11 + 2);
  v104 = *(v11 + 3);
  if (v105 >= v104 >> 1)
  {
    v11 = sub_1000B0230(v104 > 1, v105 + 1, 1, v11);
  }

  *(v11 + 2) = v105 + 1;
  v2(&v11[((*(v125 + 80) + 32) & ~*(v125 + 80)) + *(v125 + 72) * v105], v118, v126);
LABEL_120:
  if ((v1 - 3) >= 5)
  {
    v106 = &off_100301848;
  }

  else
  {
    v106 = &off_100301870;
  }

  if (v20)
  {
    v107 = 5;
  }

  else
  {
    v107 = 9;
  }

  if (v20 == 5)
  {
    v108 = 8;
  }

  else
  {
    v108 = v107;
  }

  if (v20 == 5)
  {
    v109 = 2;
  }

  else
  {
    v109 = 4;
  }

  swift_setDeallocating();
  sub_1000097E8(v21 + v19, &unk_100348F30, &unk_100272540);
  swift_deallocClassInstance();
  v110 = v123;
  v111 = v115;
  *v123 = v124;
  v110[1] = v111;
  *(v110 + 16) = v108;
  *(v110 + 3) = xmmword_100282960;
  v110[5] = 0xD000000000000011;
  v110[6] = 0x80000001002A2BB0;
  *&result = 7105601;
  *(v110 + 7) = xmmword_100282970;
  v110[9] = v106;
  v110[10] = v11;
  *(v110 + 88) = v109;
  v113 = v116;
  v110[12] = v117;
  v110[13] = v113;
  return result;
}